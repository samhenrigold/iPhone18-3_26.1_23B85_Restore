@interface NFCNDEFMessage
+ (BOOL)_validateRecords:(id)records fromOriginal:(id)original;
+ (NFCNDEFMessage)ndefMessageWithData:(NSData *)data;
+ (id)_getPayloadsFromNDEFRecords:(id)records;
- (NFCNDEFMessage)initWithCoder:(id)coder;
- (NFCNDEFMessage)initWithEmptyNdefMessage;
- (NFCNDEFMessage)initWithNDEFRecords:(NSArray *)records;
- (NFCNDEFMessage)initWithNFNdefMessage:(id)message;
- (NSUInteger)length;
- (id)_getURLsFromNDEFMessage:(id)message;
- (id)_initWithRecords:(id)records;
- (id)asData;
@end

@implementation NFCNDEFMessage

- (NFCNDEFMessage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = NFCNDEFMessage;
  v5 = [(NFCNDEFMessage *)&v9 init];
  if (v5)
  {
    v6 = [MEMORY[0x277D82B58] coder:coderCopy decodeArrayOfClass:objc_opt_class() forKey:@"records"];
    records = v5->_records;
    v5->_records = v6;
  }

  return v5;
}

- (NFCNDEFMessage)initWithNDEFRecords:(NSArray *)records
{
  v49 = *MEMORY[0x277D85DE8];
  v5 = records;
  if (![(NSArray *)v5 count])
  {
    initWithEmptyNdefMessage = [(NFCNDEFMessage *)self initWithEmptyNdefMessage];
LABEL_23:
    self = initWithEmptyNdefMessage;
    selfCopy = self;
    goto LABEL_24;
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v6 = v5;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v36 objects:v48 count:16];
  if (!v7)
  {

LABEL_22:
    initWithEmptyNdefMessage = [(NFCNDEFMessage *)self _initWithRecords:v6];
    goto LABEL_23;
  }

  v8 = v7;
  v33 = a2;
  selfCopy2 = self;
  v35 = v5;
  v9 = 0;
  v10 = *v37;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v37 != v10)
      {
        objc_enumerationMutation(v6);
      }

      v12 = *(*(&v36 + 1) + 8 * i);
      type = [v12 type];
      v14 = [type length];
      identifier = [v12 identifier];
      v16 = [identifier length];
      payload = [v12 payload];
      v9 += v14 + v16 + [payload length];
    }

    v8 = [(NSArray *)v6 countByEnumeratingWithState:&v36 objects:v48 count:16];
  }

  while (v8);

  self = selfCopy2;
  v5 = v35;
  if (v9 <= 0x20000)
  {
    goto LABEL_22;
  }

  Logger = NFLogGetLogger();
  if (Logger)
  {
    v19 = Logger;
    Class = object_getClass(selfCopy2);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(selfCopy2);
    Name = sel_getName(v33);
    v23 = 45;
    if (isMetaClass)
    {
      v23 = 43;
    }

    v19(3, "%c[%{public}s %{public}s]:%i Total size of all NDEF records exceeds the size limit", v23, ClassName, Name, 62);
  }

  v24 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    v25 = object_getClass(selfCopy2);
    if (class_isMetaClass(v25))
    {
      v26 = 43;
    }

    else
    {
      v26 = 45;
    }

    v27 = object_getClassName(selfCopy2);
    v28 = sel_getName(v33);
    *buf = 67109890;
    v41 = v26;
    v42 = 2082;
    v43 = v27;
    v44 = 2082;
    v45 = v28;
    v46 = 1024;
    v47 = 62;
    _os_log_impl(&dword_23728C000, v24, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Total size of all NDEF records exceeds the size limit", buf, 0x22u);
  }

  selfCopy = 0;
LABEL_24:

  return selfCopy;
}

- (id)_initWithRecords:(id)records
{
  recordsCopy = records;
  v9.receiver = self;
  v9.super_class = NFCNDEFMessage;
  v5 = [(NFCNDEFMessage *)&v9 init];
  if (v5)
  {
    v6 = [recordsCopy copy];
    records = v5->_records;
    v5->_records = v6;
  }

  return v5;
}

- (NFCNDEFMessage)initWithNFNdefMessage:(id)message
{
  v27 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v21 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v18 = messageCopy;
  obj = [messageCopy records];
  v4 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v23;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v22 + 1) + 8 * i);
        v9 = [NFCNDEFPayload alloc];
        typeNameFormat = [v8 typeNameFormat];
        type = [v8 type];
        identifier = [v8 identifier];
        payload = [v8 payload];
        v14 = [(NFCNDEFPayload *)v9 initWithFormatType:typeNameFormat type:type identifier:identifier payload:payload chunkSize:0];

        if (v14)
        {
          [v21 addObject:v14];
        }
      }

      v5 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v5);
  }

  if ([v21 count])
  {
    selfCopy = [(NFCNDEFMessage *)self _initWithRecords:v21];
    v16 = selfCopy;
  }

  else
  {
    v16 = 0;
    selfCopy = self;
  }

  return v16;
}

- (NFCNDEFMessage)initWithEmptyNdefMessage
{
  v3 = [NFCNDEFPayload alloc];
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v7 = [(NFCNDEFPayload *)v3 initWithFormatType:0 type:v4 identifier:v5 payload:v6 chunkSize:0];

  v8 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{v7, 0}];
  v9 = [(NFCNDEFMessage *)self initWithNDEFRecords:v8];

  return v9;
}

+ (NFCNDEFMessage)ndefMessageWithData:(NSData *)data
{
  v5 = MEMORY[0x277D82B68];
  v6 = data;
  v7 = data;
  v8 = [v5 recordsFromBytes:-[NSData bytes](v7 length:{"bytes"), -[NSData length](v7, "length")}];
  LOBYTE(v5) = [self _validateRecords:v8 fromOriginal:v7];

  if (v5)
  {
    v9 = [self _getPayloadsFromNDEFRecords:v8];
    v10 = [NFCNDEFMessage alloc];
  }

  else
  {
    v11 = [NFCNDEFMessage alloc];
    v9 = objc_opt_new();
    v10 = v11;
  }

  v12 = [(NFCNDEFMessage *)v10 initWithNDEFRecords:v9];

  return v12;
}

- (id)asData
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277D82B60]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = self->_records;
  v4 = [(NSArray *)obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v20;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v19 + 1) + 8 * i);
        v18 = 0;
        v9 = MEMORY[0x277D82B68];
        typeNameFormat = [v8 typeNameFormat];
        type = [v8 type];
        identifier = [v8 identifier];
        payload = [v8 payload];
        v14 = [v9 recordsWithTNF:typeNameFormat type:type identifier:identifier payload:payload chunkSize:objc_msgSend(v8 outError:{"chunkSize"), &v18}];

        if (v18)
        {

          asData = 0;
          goto LABEL_11;
        }

        [v3 addRecordArray:v14];
      }

      v5 = [(NSArray *)obj countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  asData = [v3 asData];
LABEL_11:

  return asData;
}

- (NSUInteger)length
{
  asData = [(NFCNDEFMessage *)self asData];
  v3 = [asData length];

  return v3;
}

+ (BOOL)_validateRecords:(id)records fromOriginal:(id)original
{
  v40 = *MEMORY[0x277D85DE8];
  recordsCopy = records;
  originalCopy = original;
  v7 = [originalCopy length];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = recordsCopy;
  v32 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v32)
  {
    v8 = 0;
    v33 = v7 - 2;
    v34 = *v36;
    v30 = originalCopy;
    v31 = v7 - 1;
    v28 = v7 - 4;
    while (2)
    {
      for (i = 0; i != v32; ++i)
      {
        if (*v36 != v34)
        {
          objc_enumerationMutation(obj);
        }

        if (v33 < v8)
        {
          goto LABEL_28;
        }

        v10 = *(*(&v35 + 1) + 8 * i);
        v11 = [originalCopy subdataWithRange:{v8, 2}];
        bytes = [v11 bytes];
        v13 = *bytes;
        v14 = bytes[1];
        v15 = v8 + 2;
        if ((*bytes & 0x10) != 0)
        {
          if (v31 < v15)
          {
LABEL_23:
            v16 = v11;
LABEL_27:

LABEL_28:
            v26 = 0;
            goto LABEL_29;
          }

          v16 = [originalCopy subdataWithRange:?];

          v17 = *[v16 bytes];
          v18 = 3;
        }

        else
        {
          if (v28 < v15)
          {
            goto LABEL_23;
          }

          v16 = [originalCopy subdataWithRange:?];

          v17 = bswap32(*[v16 bytes]);
          v18 = 6;
        }

        v19 = v18 + v8;
        if ((v13 & 8) != 0)
        {
          if (v31 < v19)
          {
            goto LABEL_27;
          }

          v21 = [originalCopy subdataWithRange:{v19, 1}];

          v20 = *[v21 bytes];
          ++v19;
          v16 = v21;
        }

        else
        {
          v20 = 0;
        }

        type = [v10 type];
        if ([type length] != v14)
        {
          goto LABEL_25;
        }

        payload = [v10 payload];
        if ([payload length] != v17)
        {

LABEL_25:
LABEL_26:
          originalCopy = v30;
          goto LABEL_27;
        }

        identifier = [v10 identifier];
        v25 = [identifier length];

        if (v25 != v20)
        {
          goto LABEL_26;
        }

        v8 = v17 + v14 + v20 + v19;

        originalCopy = v30;
      }

      v26 = 1;
      v32 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
      if (v32)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v26 = 1;
  }

LABEL_29:

  return v26;
}

+ (id)_getPayloadsFromNDEFRecords:(id)records
{
  v47 = *MEMORY[0x277D85DE8];
  recordsCopy = records;
  v37 = objc_opt_new();
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = recordsCopy;
  v40 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
  v4 = 0;
  if (!v40)
  {
    v7 = 0;
    v8 = 0;
    goto LABEL_36;
  }

  v36 = 0;
  LOBYTE(v5) = 0;
  messageEnd = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v39 = *v43;
  do
  {
    v10 = 0;
    do
    {
      if (*v43 != v39)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v42 + 1) + 8 * v10);
      if (v5)
      {
        LODWORD(v5) = 1;
        if (messageEnd)
        {
          goto LABEL_8;
        }
      }

      else
      {
        LODWORD(v5) = [*(*(&v42 + 1) + 8 * v10) messageBegin];
        if (messageEnd)
        {
LABEL_8:
          messageEnd = 1;
          goto LABEL_11;
        }
      }

      messageEnd = [v11 messageEnd];
LABEL_11:
      chunked = [v11 chunked];
      if (chunked)
      {
        v41 = v5;
        v5 = v7;
        typeNameFormat = [v11 typeNameFormat];
        v14 = typeNameFormat;
        if (v9)
        {
          if (typeNameFormat != 6)
          {
            goto LABEL_21;
          }

          identifier = [v11 identifier];
          if ([identifier length])
          {
            goto LABEL_20;
          }

          type = [v11 type];
          v17 = [type length];

          if (v17)
          {
            goto LABEL_21;
          }

          payload = [v11 payload];
          v7 = v5;
          [(NFCNDEFPayload *)v5 appendData:payload];
        }

        else
        {
          type2 = [v11 type];

          identifier2 = [v11 identifier];

          v21 = objc_alloc(MEMORY[0x277CBEB28]);
          payload = [v11 payload];
          v22 = [v21 initWithData:payload];

          v4 = type2;
          v36 = v14;
          v23 = v22;
          v8 = identifier2;
          v7 = v23;
        }
      }

      else
      {
        if ((v9 & 1) == 0)
        {

          v24 = [NFCNDEFPayload alloc];
          typeNameFormat2 = [v11 typeNameFormat];
          type3 = [v11 type];
          identifier3 = [v11 identifier];
          payload2 = [v11 payload];
          payload = [(NFCNDEFPayload *)v24 initWithFormatType:typeNameFormat2 type:type3 identifier:identifier3 payload:payload2 chunkSize:0];

          [v37 addObject:payload];
          v4 = 0;
          v7 = 0;
          v8 = 0;
          goto LABEL_25;
        }

        v41 = v5;
        v5 = v7;
        if ([v11 typeNameFormat] != 6)
        {
          goto LABEL_21;
        }

        identifier = [v11 identifier];
        if ([identifier length])
        {
LABEL_20:

LABEL_21:
          v4 = 0;
          v7 = 0;
          v8 = 0;
          v9 = 0;
          LOBYTE(v5) = v41;
          goto LABEL_27;
        }

        type4 = [v11 type];
        v30 = [type4 length];

        if (v30)
        {
          goto LABEL_21;
        }

        payload3 = [v11 payload];
        [(NFCNDEFPayload *)v5 appendData:payload3];

        if ([(NFCNDEFPayload *)v5 length])
        {
          v32 = [[NFCNDEFPayload alloc] initWithFormatType:v36 type:v4 identifier:v8 payload:v5 chunkSize:0];
          [v37 addObject:v32];
        }

        v4 = 0;
        v8 = 0;
        payload = v5;
        v7 = 0;
      }

      LODWORD(v5) = v41;
LABEL_25:

      v9 = chunked;
      if (v5 && (messageEnd & 1) != 0)
      {
        goto LABEL_36;
      }

LABEL_27:
      ++v10;
    }

    while (v40 != v10);
    v33 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
    v40 = v33;
  }

  while (v33);
LABEL_36:

  v34 = v37;
  return v37;
}

- (id)_getURLsFromNDEFMessage:(id)message
{
  v17 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v4 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  records = [messageCopy records];
  v6 = [records countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(records);
        }

        wellKnownTypeURIPayload = [*(*(&v12 + 1) + 8 * i) wellKnownTypeURIPayload];
        if (wellKnownTypeURIPayload)
        {
          [v4 addObject:wellKnownTypeURIPayload];
        }
      }

      v7 = [records countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

@end