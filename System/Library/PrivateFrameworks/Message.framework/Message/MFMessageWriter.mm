@interface MFMessageWriter
- (MFMessageWriter)initWithCompositionSpecification:(id)specification;
- (id)_mimePartWithType:(id)type subtype:(id)subtype bodyData:(id)data partMap:(__CFDictionary *)map subparts:(id)subparts;
- (id)_newDataForMimePart:(id)part withPartData:(id)data andHeaders:(id)headers;
- (id)createMessageWithHTMLStringAndMIMECharset:(id)charset plainTextAlternative:(id)alternative otherHtmlStringsAndAttachments:(id)attachments headers:(id)headers;
- (id)createMessageWithPlainTextDocumentsAndAttachments:(id)attachments headers:(id)headers;
- (id)createMessageWithString:(id)string headers:(id)headers;
- (id)delegate;
- (void)appendDataForMimePart:(id)part toData:(id)data withPartData:(id)partData;
- (void)setAllowsBinaryMimeParts:(BOOL)parts;
- (void)setAllowsQuotedPrintable:(BOOL)printable;
- (void)setDelegate:(id)delegate;
- (void)setMessageClassToInstantiate:(Class)instantiate;
- (void)setWriteSizeDispositionParameter:(BOOL)parameter;
@end

@implementation MFMessageWriter

void ___ef_log_MFMessageWriter_block_invoke()
{
  v0 = os_log_create("com.apple.email", "MFMessageWriter");
  v1 = _ef_log_MFMessageWriter_log;
  _ef_log_MFMessageWriter_log = v0;
}

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

- (void)appendDataForMimePart:(id)part toData:(id)data withPartData:(id)partData
{
  key = part;
  dataCopy = data;
  partDataCopy = partData;
  type = [key type];
  v11 = [@"multipart" isEqualToString:type];

  v12 = objc_alloc_init(MEMORY[0x1E69AD698]);
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
  Mutable = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x1E695E9E8]);
  v9 = _createPartAndDataForString(self, stringCopy, 0, @"plain", Mutable);
  v10 = _createOutgoingMessageFromTopLevelMimePart(self, v9, headersCopy, Mutable);

  CFRelease(Mutable);
  return v10;
}

- (id)createMessageWithPlainTextDocumentsAndAttachments:(id)attachments headers:(id)headers
{
  v34 = *MEMORY[0x1E69E9840];
  attachmentsCopy = attachments;
  headersCopy = headers;
  v24 = attachmentsCopy;
  cf = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x1E695E9E8]);
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
        v8 = objc_alloc_init(MEMORY[0x1E69AD720]);
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

- (id)createMessageWithHTMLStringAndMIMECharset:(id)charset plainTextAlternative:(id)alternative otherHtmlStringsAndAttachments:(id)attachments headers:(id)headers
{
  v84 = *MEMORY[0x1E69E9840];
  charsetCopy = charset;
  alternativeCopy = alternative;
  v11 = charsetCopy;
  v67 = alternativeCopy;
  attachmentsCopy = attachments;
  headersCopy = headers;
  v69 = charsetCopy;
  Mutable = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x1E695E9E8]);
  if (v11)
  {
    string = [v11 string];
    charset = [v11 charset];
    v15 = _createPartAndDataForString(self, string, charset, @"html", Mutable);
  }

  else
  {
    v15 = 0;
  }

  v68 = [attachmentsCopy count];
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  obj = attachmentsCopy;
  v16 = [obj countByEnumeratingWithState:&v73 objects:v83 count:16];
  cf = Mutable;
  v64 = v16 != 0;
  if (v16)
  {
    v17 = 0;
    v18 = 0;
    v19 = *v74;
LABEL_6:
    v20 = 0;
    while (1)
    {
      if (*v74 != v19)
      {
        objc_enumerationMutation(obj);
      }

      if (v17)
      {
        goto LABEL_58;
      }

      v21 = *(*(&v73 + 1) + 8 * v20);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v22 = v21;
        string2 = [v22 string];
        charset2 = [v22 charset];
        v25 = _createPartAndDataForString(self, string2, charset2, @"html", cf);
      }

      else
      {
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if (isKindOfClass)
        {
          v27 = _ef_log_MFMessageWriter(isKindOfClass);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
            callStackReturnAddresses = [MEMORY[0x1E696AF00] callStackReturnAddresses];
            *buf = 138412802;
            v78 = v21;
            v79 = 2112;
            v80 = callStackSymbols;
            v81 = 2112;
            v82 = callStackReturnAddresses;
            _os_log_impl(&dword_1B0389000, v27, OS_LOG_TYPE_DEFAULT, "*** BAD!!! Used old attachments for %@\n\n%@\n\n%@", buf, 0x20u);
          }

LABEL_15:

          v17 = 0;
          goto LABEL_39;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v30 = v21;
          if (v69)
          {
            v31 = v15 == 0;
          }

          else
          {
            v31 = 1;
          }

          v32 = !v31;
          if (v18)
          {
            v33 = 1;
          }

          else
          {
            v33 = v32;
          }

          v34 = _createPartForMFAttachment(self, v30, v33, cf);
        }

        else
        {
          objc_opt_class();
          v35 = objc_opt_isKindOfClass();
          if ((v35 & 1) == 0)
          {
            v27 = _ef_log_MFMessageWriter(v35);
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              v38 = objc_opt_class();
              *buf = 138412546;
              v78 = v38;
              v79 = 2048;
              v80 = v21;
              v39 = v38;
              _os_log_impl(&dword_1B0389000, v27, OS_LOG_TYPE_DEFAULT, "*** Unexpected object <%@:%p>", buf, 0x16u);
            }

            goto LABEL_15;
          }

          v34 = _createPartForFileWrapper(self, v21, cf);
        }

        v25 = v34;
      }

      if (v25)
      {
        v17 = 0;
      }

      else
      {
        v17 = v21 != 0;
      }

      if (v25)
      {
        if (v15)
        {
          if (v69)
          {
            if (!v18)
            {
              v36 = objc_alloc_init(MEMORY[0x1E69AD720]);
              [v36 setType:@"multipart"];
              [v36 setSubtype:@"related"];
              v18 = v36;
              [v36 addSubpart:v15];
            }

            [v18 addSubpart:v25];
          }

          else
          {
            [v15 addSubpart:v25];
          }
        }

        else if (v68 < 2)
        {
          v25 = v25;
          v15 = v25;
        }

        else
        {
          v37 = objc_alloc_init(MEMORY[0x1E69AD720]);
          [v37 setType:@"multipart"];
          [v37 setSubtype:@"mixed"];
          v15 = v37;
          [v37 addSubpart:v25];
        }

        goto LABEL_40;
      }

LABEL_39:
      v25 = 0;
LABEL_40:

      if (v16 == ++v20)
      {
        v40 = [obj countByEnumeratingWithState:&v73 objects:v83 count:16];
        v16 = v40;
        if (v40)
        {
          goto LABEL_6;
        }

        v41 = v18 == 0;
        if (v18)
        {
          v42 = v18;
        }

        else
        {
          v42 = v15;
        }

        if (v18 != 0 && !v17)
        {
          firstChildPart = [v18 firstChildPart];
          v44 = firstChildPart;
          if (firstChildPart)
          {
            v45 = MEMORY[0x1E696AEC0];
            type = [firstChildPart type];
            subtype = [v44 subtype];
            v48 = [v45 stringWithFormat:@"%@/%@", type, subtype];
            [v18 setBodyParameter:v48 forKey:@"type"];
          }

          v41 = 0;
          v17 = 0;
          v42 = v18;
        }

        goto LABEL_62;
      }
    }
  }

  v18 = 0;
LABEL_58:

  v41 = v18 == 0;
  if (v18)
  {
    v42 = v18;
  }

  else
  {
    v42 = v15;
  }

  v17 = v64;
LABEL_62:
  v49 = v42;
  if (v67)
  {
    v50 = _createPlainTextPart(self, v67, cf);
    v51 = v50;
    if (v50 != 0 && !v17)
    {
      if (v49)
      {
        v52 = objc_alloc_init(MEMORY[0x1E69AD720]);
        [v52 setType:@"multipart"];
        [v52 setSubtype:@"alternative"];
        [v52 addSubpart:v51];
        [v52 addSubpart:v49];

        v49 = v52;
      }

      else
      {
        v49 = v50;
        v51 = v49;
      }
    }
  }

  else
  {
    v51 = 0;
  }

  if (v49 == 0 || v17)
  {
    v53 = 0;
    goto LABEL_82;
  }

  if (!v41)
  {
    goto LABEL_81;
  }

  v54 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v54 addObject:v49];
  while ([v54 count])
  {
    lastObject = [v54 lastObject];
    [v54 removeLastObject];
    type2 = [lastObject type];
    v57 = [type2 isEqualToString:@"multipart"];

    if (v57)
    {
      subparts = [lastObject subparts];
      [v54 addObjectsFromArray:subparts];

      goto LABEL_79;
    }

    disposition = [lastObject disposition];
    if ([disposition isEqualToString:@"attachment"])
    {
    }

    else
    {
      disposition2 = [lastObject disposition];
      v61 = [disposition2 isEqualToString:@"inline"];

      if (!v61)
      {
        goto LABEL_79;
      }
    }

    [lastObject setContentID:0];
LABEL_79:
  }

LABEL_81:
  v53 = _createOutgoingMessageFromTopLevelMimePart(self, v49, headersCopy, cf);
LABEL_82:
  if (cf)
  {
    CFRelease(cf);
  }

  v62 = v53;

  return v62;
}

- (id)_mimePartWithType:(id)type subtype:(id)subtype bodyData:(id)data partMap:(__CFDictionary *)map subparts:(id)subparts
{
  typeCopy = type;
  subtypeCopy = subtype;
  dataCopy = data;
  subpartsCopy = subparts;
  v15 = objc_opt_new();
  [v15 setType:typeCopy];
  [v15 setSubtype:subtypeCopy];
  [v15 setSubparts:subpartsCopy];
  if (dataCopy)
  {
    CFDictionarySetValue(map, v15, dataCopy);
  }

  return v15;
}

- (id)_newDataForMimePart:(id)part withPartData:(id)data andHeaders:(id)headers
{
  partCopy = part;
  dataCopy = data;
  headersCopy = headers;
  v11 = _makeOutgoingMessageBody(self);
  message = [v11 message];
  v13 = +[MFActivityMonitor currentMonitor];
  if (!headersCopy)
  {
    headersCopy = objc_opt_new();
  }

  [message setMutableHeaders:headersCopy];
  if (_makeMimeHeadersConsistent(self, partCopy, dataCopy) && ([v13 shouldCancel] & 1) == 0)
  {
    appendHeadersToMessageHeaders(self, partCopy, headersCopy);
    _appendPartDataToConsumer(self, partCopy, v11, dataCopy, 0);
    [v11 done];
    messageData = [message messageData];
  }

  else
  {
    messageData = 0;
  }

  [message setMessageBody:0];

  return messageData;
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  objc_storeWeak(&self->_delegate, 0);
  objc_storeWeak(&self->_delegate, obj);
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

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setMessageClassToInstantiate:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = _ef_log_MFMessageWriter(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 138412290;
    v4 = a1;
    _os_log_impl(&dword_1B0389000, v2, OS_LOG_TYPE_DEFAULT, "#Warning Must be called with a subclass of MFOutgoingMessage.  You provided %@", &v3, 0xCu);
  }

  __assert_rtn("[MFMessageWriter setMessageClassToInstantiate:]", "MessageWriter.m", 1454, "0");
}

@end