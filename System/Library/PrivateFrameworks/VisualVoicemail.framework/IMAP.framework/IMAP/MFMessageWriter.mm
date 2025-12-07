@interface MFMessageWriter
- (MFMessageWriter)initWithCompositionSpecification:(id)specification;
- (id)createMessageWithHtmlString:(id)string attachments:(id)attachments headers:(id)headers;
- (id)createMessageWithHtmlString:(id)string plainTextAlternative:(id)alternative otherHtmlStringsAndAttachments:(id)attachments charsets:(id)charsets headers:(id)headers;
- (id)createMessageWithPlainTextDocumentsAndAttachments:(id)attachments headers:(id)headers;
- (id)createMessageWithString:(id)string headers:(id)headers;
- (void)appendDataForMimePart:(id)part toData:(id)data withPartData:(id)partData;
- (void)dealloc;
- (void)setAllowsBinaryMimeParts:(BOOL)parts;
- (void)setAllowsQuotedPrintable:(BOOL)printable;
- (void)setMessageClassToInstantiate:(Class)instantiate;
- (void)setWriteSizeDispositionParameter:(BOOL)parameter;
@end

@implementation MFMessageWriter

- (MFMessageWriter)initWithCompositionSpecification:(id)specification
{
  specificationCopy = specification;
  v10.receiver = self;
  v10.super_class = MFMessageWriter;
  v5 = [(MFMessageWriter *)&v10 init];
  v6 = v5;
  if (v5)
  {
    [(MFMessageWriter *)v5 setAllowsQuotedPrintable:1];
    v6->_messageClassToInstantiate = objc_opt_class();
    v7 = [specificationCopy copy];
    compositionSpecification = v6->_compositionSpecification;
    v6->_compositionSpecification = v7;
  }

  return v6;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MFMessageWriter;
  [(MFMessageWriter *)&v2 dealloc];
}

- (void)appendDataForMimePart:(id)part toData:(id)data withPartData:(id)partData
{
  key = part;
  dataCopy = data;
  partDataCopy = partData;
  type = [key type];
  v11 = [@"multipart" isEqualToString:type];

  v12 = objc_alloc_init(MEMORY[0x277D24EE8]);
  if ((v11 & 1) != 0 || CFDictionaryGetValue(partDataCopy, key) || ([key range], !v14))
  {
    _appendPartDataToConsumer(self, key, v12, partDataCopy, 1);
  }

  else
  {
    [dataCopy setLength:{objc_msgSend(dataCopy, "length") - 1}];
    _appendPartHeadersToConsumer(self, key, partDataCopy, v12);
  }

  [v12 done];
  data = [v12 data];
  [dataCopy appendData:data];
}

- (id)createMessageWithString:(id)string headers:(id)headers
{
  stringCopy = string;
  headersCopy = headers;
  Mutable = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x277CBF150]);
  v9 = _createPartAndDataForString(self, stringCopy, 0, @"plain", Mutable);
  v10 = _createOutgoingMessageFromTopLevelMimePart(self, v9, headersCopy, Mutable);

  CFRelease(Mutable);
  return v10;
}

- (id)createMessageWithPlainTextDocumentsAndAttachments:(id)attachments headers:(id)headers
{
  v34 = *MEMORY[0x277D85DE8];
  attachmentsCopy = attachments;
  headersCopy = headers;
  cf = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x277CBF150]);
  v24 = attachmentsCopy;
  v26 = [attachmentsCopy count];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = attachmentsCopy;
  v7 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (!v7)
  {

    v8 = 0;
    goto LABEL_31;
  }

  v8 = 0;
  v9 = *v30;
  do
  {
    v10 = 0;
    v11 = v8;
    do
    {
      if (*v30 != v9)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v29 + 1) + 8 * v10);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = _createPlainTextPart(self, v12, cf);
LABEL_8:
        v14 = v13;
        goto LABEL_18;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_21;
        }

        v13 = _createPartForMFAttachment(self, v12, 0, cf);
        goto LABEL_8;
      }

      selfCopy = self;
      v16 = v12;
      if ([v16 isPlaceholder] && (objc_msgSend(v16, "mimePart"), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "fileWrapperForcingDownload:", 1), v18 = objc_claimAutoreleasedReturnValue(), v17, objc_msgSend(v16, "fileWrapperForcingDownload:", 0), v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "contentID"), v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "setContentID:", v20), v20, v19, v18) || (objc_msgSend(v16, "fileWrapperForcingDownload:", 1), (v18 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v14 = _createPartForFileWrapper(selfCopy, v18, cf);
      }

      else
      {
        v14 = 0;
      }

LABEL_18:
      if (!v14)
      {
LABEL_21:

        v14 = 0;
        v8 = 0;
        goto LABEL_22;
      }

      if (v11)
      {
        [v11 addSubpart:v14];
        v8 = v11;
      }

      else if (v26 < 2)
      {
        v14 = v14;
        v8 = v14;
      }

      else
      {
        v8 = objc_alloc_init(MEMORY[0x277D24F68]);
        [v8 setType:@"multipart"];
        [v8 setSubtype:@"mixed"];
        [v8 addSubpart:v14];
      }

LABEL_22:

      ++v10;
      v11 = v8;
    }

    while (v7 != v10);
    v21 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    v7 = v21;
  }

  while (v21);

  if (!v8)
  {
LABEL_31:
    v22 = 0;
    goto LABEL_32;
  }

  v22 = _createOutgoingMessageFromTopLevelMimePart(self, v8, headersCopy, cf);
LABEL_32:
  CFRelease(cf);

  return v22;
}

- (id)createMessageWithHtmlString:(id)string plainTextAlternative:(id)alternative otherHtmlStringsAndAttachments:(id)attachments charsets:(id)charsets headers:(id)headers
{
  v92 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  alternativeCopy = alternative;
  attachmentsCopy = attachments;
  charsetsCopy = charsets;
  headersCopy = headers;
  cf = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x277CBF150]);
  v75 = stringCopy;
  if (stringCopy)
  {
    v15 = charsetsCopy;
    if ([charsetsCopy count])
    {
      v16 = [charsetsCopy objectAtIndex:0];
    }

    else
    {
      v16 = 0;
    }

    null = [MEMORY[0x277CBEB68] null];

    if (v16 == null)
    {

      v16 = 0;
    }

    v17 = _createPartAndDataForString(self, v75, v16, @"html", cf);
  }

  else
  {
    v17 = 0;
    v15 = charsetsCopy;
  }

  v74 = [attachmentsCopy count];
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v19 = attachmentsCopy;
  v20 = [v19 countByEnumeratingWithState:&v81 objects:v91 count:16];
  obj = v19;
  v78 = v15;
  if (!v20)
  {

    v23 = 0;
    v76 = 0;
    v46 = 1;
    goto LABEL_73;
  }

  v21 = v20;
  v72 = alternativeCopy;
  v22 = 0;
  v23 = 0;
  v76 = 0;
  v24 = *v82;
  while (2)
  {
    v25 = 0;
    do
    {
      if (*v82 != v24)
      {
        objc_enumerationMutation(obj);
      }

      if (v23)
      {

        v46 = v76 == 0;
        v23 = 1;
        v47 = v76;
        alternativeCopy = v72;
        if (v76)
        {
          goto LABEL_74;
        }

        goto LABEL_73;
      }

      v26 = *(*(&v81 + 1) + 8 * v25);
      ++v22;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v27 = v26;
        if (v22 >= [v15 count])
        {
          v28 = 0;
        }

        else
        {
          v28 = [v15 objectAtIndex:v22];
        }

        null2 = [MEMORY[0x277CBEB68] null];

        if (v28 == null2)
        {

          v28 = 0;
        }

        v34 = _createPartAndDataForString(self, v27, v28, @"html", cf);
        v30 = v34;
        if (v27)
        {
          v35 = v34 == 0;
        }

        else
        {
          v35 = 0;
        }

        v23 = v35;

        v15 = v78;
        if (!v30)
        {
          goto LABEL_63;
        }

        goto LABEL_31;
      }

      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        v30 = vm_imap_log(isKindOfClass);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
          callStackReturnAddresses = [MEMORY[0x277CCACC8] callStackReturnAddresses];
          *buf = 138412802;
          v86 = v26;
          v87 = 2112;
          v88 = callStackSymbols;
          v89 = 2112;
          v90 = callStackReturnAddresses;
          _os_log_impl(&dword_2720B1000, v30, OS_LOG_TYPE_DEFAULT, "*** BAD!!! Used old attachments for %@\n\n%@\n\n%@", buf, 0x20u);

LABEL_60:
          v15 = v78;
          goto LABEL_61;
        }

        goto LABEL_61;
      }

      objc_opt_class();
      v38 = objc_opt_isKindOfClass();
      if ((v38 & 1) == 0)
      {
        v30 = vm_imap_log(v38);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          v44 = objc_opt_class();
          *buf = 138412546;
          v86 = v44;
          v87 = 2048;
          v88 = v26;
          callStackSymbols = v44;
          _os_log_impl(&dword_2720B1000, v30, OS_LOG_TYPE_DEFAULT, "*** Unexpected object <%@:%p>", buf, 0x16u);
          goto LABEL_60;
        }

LABEL_61:
        v23 = 0;
        goto LABEL_62;
      }

      if (v75)
      {
        v39 = v17 == 0;
      }

      else
      {
        v39 = 1;
      }

      v40 = !v39;
      if (v76)
      {
        v41 = 1;
      }

      else
      {
        v41 = v40;
      }

      v42 = _createPartForMFAttachment(self, v26, v41, cf);
      v30 = v42;
      if (v26)
      {
        v43 = v42 == 0;
      }

      else
      {
        v43 = 0;
      }

      v23 = v43;
      if (!v42)
      {
        goto LABEL_63;
      }

LABEL_31:
      if (v17)
      {
        if (v75)
        {
          v36 = v76;
          if (!v76)
          {
            v37 = objc_alloc_init(MEMORY[0x277D24F68]);
            [v37 setType:@"multipart"];
            [v37 setSubtype:@"related"];
            [v37 addSubpart:v17];
            v36 = v37;
          }

          v76 = v36;
          goto LABEL_57;
        }

LABEL_56:
        v36 = v17;
LABEL_57:
        [v36 addSubpart:v30];
LABEL_62:

        goto LABEL_63;
      }

      if (v74 >= 2)
      {
        v17 = objc_alloc_init(MEMORY[0x277D24F68]);
        [v17 setType:@"multipart"];
        [v17 setSubtype:@"mixed"];
        goto LABEL_56;
      }

      v17 = v30;
LABEL_63:
      ++v25;
    }

    while (v21 != v25);
    v45 = [obj countByEnumeratingWithState:&v81 objects:v91 count:16];
    v21 = v45;
    if (v45)
    {
      continue;
    }

    break;
  }

  v46 = v76 == 0;
  if (!(v46 | v23 & 1))
  {
    firstChildPart = [v76 firstChildPart];
    v67 = firstChildPart;
    alternativeCopy = v72;
    if (firstChildPart)
    {
      v68 = MEMORY[0x277CCACA8];
      type = [firstChildPart type];
      subtype = [v67 subtype];
      v71 = [v68 stringWithFormat:@"%@/%@", type, subtype];
      [v76 setBodyParameter:v71 forKey:@"type"];

      v15 = v78;
    }

    v23 = 0;
    v46 = 0;
    v47 = v76;
    goto LABEL_74;
  }

  v47 = v76;
  alternativeCopy = v72;
  if (v76)
  {
    goto LABEL_74;
  }

LABEL_73:
  v47 = v17;
LABEL_74:
  v48 = v47;
  if (alternativeCopy)
  {
    v49 = _createPlainTextPart(self, alternativeCopy, cf);
    v50 = v49;
    if (!((v49 == 0) | v23 & 1))
    {
      if (v48)
      {
        v51 = objc_alloc_init(MEMORY[0x277D24F68]);
        [v51 setType:@"multipart"];
        [v51 setSubtype:@"alternative"];
        [v51 addSubpart:v50];
        [v51 addSubpart:v48];

        v48 = v51;
      }

      else
      {
        v50 = v49;
        v48 = v50;
      }
    }
  }

  else
  {
    v50 = 0;
  }

  if (!((v48 == 0) | v23 & 1))
  {
    if (v46)
    {
      v55 = v50;
      v56 = objc_alloc_init(MEMORY[0x277CBEB18]);
      [v56 addObject:v48];
      while ([v56 count])
      {
        lastObject = [v56 lastObject];
        [v56 removeLastObject];
        type2 = [lastObject type];
        v59 = [type2 isEqualToString:@"multipart"];

        if (v59)
        {
          subparts = [lastObject subparts];
          [v56 addObjectsFromArray:subparts];
        }

        else
        {
          disposition = [lastObject disposition];
          if ([disposition isEqualToString:@"attachment"])
          {

LABEL_90:
            [lastObject setContentID:0];
            goto LABEL_91;
          }

          disposition2 = [lastObject disposition];
          v63 = [disposition2 isEqualToString:@"inline"];

          if (v63)
          {
            goto LABEL_90;
          }
        }

LABEL_91:
      }

      v15 = v78;
      v50 = v55;
    }

    v54 = cf;
    v53 = headersCopy;
    v52 = _createOutgoingMessageFromTopLevelMimePart(self, v48, headersCopy, cf);
    if (cf)
    {
      goto LABEL_94;
    }

    goto LABEL_95;
  }

  v52 = 0;
  v53 = headersCopy;
  v54 = cf;
  if (!cf)
  {
    goto LABEL_95;
  }

LABEL_94:
  CFRelease(v54);
LABEL_95:
  v64 = v52;

  return v64;
}

- (id)createMessageWithHtmlString:(id)string attachments:(id)attachments headers:(id)headers
{
  v27 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  attachmentsCopy = attachments;
  headersCopy = headers;
  v20 = stringCopy;
  Mutable = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x277CBF150]);
  v11 = _createPartAndDataForString(self, stringCopy, 0, @"html", Mutable);
  if ([attachmentsCopy count])
  {
    v12 = [objc_allocWithZone(MEMORY[0x277D24F68]) init];
    [v12 setType:@"multipart"];
    [v12 setSubtype:@"mixed"];
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v13 = attachmentsCopy;
    v14 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v14)
    {
      v15 = *v23;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v23 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v17 = _createPartForFileWrapper(self, *(*(&v22 + 1) + 8 * i), Mutable);
          if (v17)
          {
            [v12 addSubpart:v17];
          }
        }

        v14 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v14);
    }

    [v12 addSubpart:v11];
    if (v12)
    {
LABEL_12:
      v18 = _createOutgoingMessageFromTopLevelMimePart(self, v12, headersCopy, Mutable);
      if (!Mutable)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }
  }

  else
  {
    v12 = v11;
    if (v12)
    {
      goto LABEL_12;
    }
  }

  v18 = 0;
  if (Mutable)
  {
LABEL_16:
    CFRelease(Mutable);
  }

LABEL_17:

  return v18;
}

- (void)setAllowsBinaryMimeParts:(BOOL)parts
{
  if (parts)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(self + 16) = *(self + 16) & 0xFD | v3;
}

- (void)setAllowsQuotedPrintable:(BOOL)printable
{
  if (printable)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(self + 16) = *(self + 16) & 0xF7 | v3;
}

- (void)setWriteSizeDispositionParameter:(BOOL)parameter
{
  if (parameter)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(self + 16) = *(self + 16) & 0xFB | v3;
}

- (void)setMessageClassToInstantiate:(Class)instantiate
{
  if (self->_messageClassToInstantiate != instantiate)
  {
    if (![(objc_class *)instantiate isSubclassOfClass:objc_opt_class()])
    {
      [MFMessageWriter setMessageClassToInstantiate:instantiate];
    }

    self->_messageClassToInstantiate = instantiate;
  }
}

- (void)setMessageClassToInstantiate:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = vm_imap_log(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 138412290;
    v4 = a1;
    _os_log_impl(&dword_2720B1000, v2, OS_LOG_TYPE_DEFAULT, "Must be called with a subclass of MFOutgoingMessage.  You provided %@", &v3, 0xCu);
  }

  __assert_rtn("[MFMessageWriter setMessageClassToInstantiate:]", "MessageWriter.m", 1434, "0");
}

@end