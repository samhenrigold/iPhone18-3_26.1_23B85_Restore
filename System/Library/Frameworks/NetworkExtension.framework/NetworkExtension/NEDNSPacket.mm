@interface NEDNSPacket
+ (id)createDataWithQuery:(id)query;
- (NSString)responseCodeString;
- (id)createResponse;
- (id)initFromData:(id)data;
@end

@implementation NEDNSPacket

- (id)createResponse
{
  v70 = *MEMORY[0x1E69E9840];
  if (self->_messageType == 1)
  {
    v3 = self->_data;
    goto LABEL_55;
  }

  v44 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  selfCopy = self;
  v4 = self->_queries;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v50 objects:v62 count:16];
  if (!v5)
  {
    goto LABEL_43;
  }

  v6 = v5;
  v7 = *v51;
  v45 = v4;
  do
  {
    v8 = 0;
    do
    {
      if (*v51 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v50 + 1) + 8 * v8);
      answerData = [v9 answerData];

      if (answerData)
      {
        if (v9)
        {
          v11 = *(v9 + 40);
          if (!v11 || [v11 length] >= 0x10000)
          {
            v12 = ne_log_obj();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
            {
              v13 = *(v9 + 16);
              v14 = [*(v9 + 40) length];
              *buf = 138412546;
              v65 = v13;
              v66 = 2048;
              v67 = v14;
              v15 = v12;
              v16 = "Failed to create an answer for %@, invalid answer data length (%lu)";
              v17 = 22;
              goto LABEL_33;
            }

            goto LABEL_34;
          }

          v18 = *(v9 + 24);
          v19 = v18 == 28 || v18 == 1;
          if (v19 && *(v9 + 32) == 1)
          {
            v20 = objc_alloc_init(MEMORY[0x1E695DF88]);
            v21 = [*(v9 + 16) componentsSeparatedByString:@"."];
            v57 = 0u;
            v58 = 0u;
            v59 = 0u;
            v60 = 0u;
            v22 = v21;
            v23 = [v22 countByEnumeratingWithState:&v57 objects:v63 count:16];
            if (v23)
            {
              v24 = v23;
              v25 = *v58;
              while (2)
              {
                for (i = 0; i != v24; ++i)
                {
                  if (*v58 != v25)
                  {
                    objc_enumerationMutation(v22);
                  }

                  v27 = *(*(&v57 + 1) + 8 * i);
                  if ([v27 length] > 0x3F)
                  {

                    v29 = 0;
                    goto LABEL_40;
                  }

                  buf[0] = [v27 length];
                  [v20 appendBytes:buf length:1];
                  if (buf[0])
                  {
                    uTF8String = [v27 UTF8String];
                    [v20 appendBytes:uTF8String length:strlen(uTF8String)];
                  }
                }

                v24 = [v22 countByEnumeratingWithState:&v57 objects:v63 count:16];
                if (v24)
                {
                  continue;
                }

                break;
              }
            }

            v56 = bswap32(*(v9 + 24)) >> 16;
            [v20 appendBytes:&v56 length:2];
            v55 = bswap32(*(v9 + 32)) >> 16;
            [v20 appendBytes:&v55 length:2];
            *buf = bswap32(*(v9 + 8));
            [v20 appendBytes:buf length:4];
            v54 = bswap32([*(v9 + 40) length]) >> 16;
            [v20 appendBytes:&v54 length:2];
            [v20 appendData:*(v9 + 40)];
            v29 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithData:v20];
LABEL_40:

            v4 = v45;
            if (v29)
            {
              [v44 addObject:v29];
            }

            goto LABEL_36;
          }

          v12 = ne_log_obj();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            v30 = *(v9 + 16);
            v31 = *(v9 + 24);
            v32 = *(v9 + 32);
            *buf = 138412802;
            v65 = v30;
            v66 = 2048;
            v67 = v31;
            v68 = 2048;
            v69 = v32;
            v15 = v12;
            v16 = "Failed to create an answer for %@, unsupported record type (%ld) and/or record class (%ld)";
            v17 = 32;
LABEL_33:
            _os_log_error_impl(&dword_1BA83C000, v15, OS_LOG_TYPE_ERROR, v16, buf, v17);
          }

LABEL_34:
        }

        v29 = 0;
LABEL_36:
      }

      ++v8;
    }

    while (v8 != v6);
    v33 = [(NSArray *)v4 countByEnumeratingWithState:&v50 objects:v62 count:16];
    v6 = v33;
  }

  while (v33);
LABEL_43:

  v34 = [objc_alloc(MEMORY[0x1E695DF88]) initWithBytes:-[NSData bytes](selfCopy->_data length:{"bytes"), 6}];
  selfCopy->_flags = selfCopy->_flags & 0x7BF0 | 0x8400;
  v35 = [v44 count];
  flags = selfCopy->_flags;
  if (!v35)
  {
    flags |= 3u;
    selfCopy->_flags = flags;
  }

  LOWORD(v57) = __rev16(flags);
  [v34 replaceBytesInRange:2 withBytes:2 length:{&v57, 2}];
  *buf = bswap32([v44 count]) >> 16;
  [v34 appendBytes:buf length:2];
  v63[0] = 0;
  [v34 appendBytes:v63 length:4];
  if (selfCopy->_endOfQueriesOffset >= 0xD)
  {
    [v34 appendBytes:-[NSData bytes](selfCopy->_data length:{"bytes") + 12, selfCopy->_endOfQueriesOffset - 12}];
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v37 = v44;
  v38 = [v37 countByEnumeratingWithState:&v46 objects:v61 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v47;
    do
    {
      for (j = 0; j != v39; ++j)
      {
        if (*v47 != v40)
        {
          objc_enumerationMutation(v37);
        }

        [v34 appendData:*(*(&v46 + 1) + 8 * j)];
      }

      v39 = [v37 countByEnumeratingWithState:&v46 objects:v61 count:16];
    }

    while (v39);
  }

  v3 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithData:v34];
LABEL_55:

  return v3;
}

- (NSString)responseCodeString
{
  responseCode = [(NEDNSPacket *)self responseCode];
  if (responseCode > 6)
  {
    return @"unknown";
  }

  else
  {
    return &off_1E7F073C8[responseCode]->isa;
  }
}

- (id)initFromData:(id)data
{
  v67 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v64 = 1;
  v63.receiver = self;
  v63.super_class = NEDNSPacket;
  v6 = [(NEDNSPacket *)&v63 init];
  if (!v6)
  {
    v19 = 0;
    v29 = 0;
    v33 = 0;
    v37 = 0;
    v38 = 0;
    v64 = 0;
    goto LABEL_51;
  }

  v7 = objc_alloc_init(MEMORY[0x1E695DF00]);
  timestamp = v6->_timestamp;
  v6->_timestamp = v7;

  objc_storeStrong(&v6->_data, data);
  v9 = [[NEByteParser alloc] initWithData:dataCopy];
  v6->_identifier = [(NEByteParser *)v9 parse16Bits:?];
  if ((v64 & 1) == 0)
  {
    v39 = ne_log_obj();
    if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_46;
    }

    *buf = 0;
    v40 = "Failed to parse DNS packet identifier";
LABEL_45:
    _os_log_error_impl(&dword_1BA83C000, v39, OS_LOG_TYPE_ERROR, v40, buf, 2u);
    goto LABEL_46;
  }

  v10 = [(NEByteParser *)v9 parse16Bits:?];
  v6->_flags = v10;
  if ((v64 & 1) == 0)
  {
    v39 = ne_log_obj();
    if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_46;
    }

    *buf = 0;
    v40 = "Failed to parse DNS packet flags";
    goto LABEL_45;
  }

  v6->_messageType = v10 >> 15;
  v6->_opCode = (v10 >> 11) & 0xF;
  v6->_isAuthoritativeAnswer = (v10 & 0x400) != 0;
  v6->_isTruncated = (v10 & 0x200) != 0;
  v6->_isRecursionDesired = BYTE1(v10) & 1;
  v6->_isRecursionAvailable = (v10 & 0x80) != 0;
  v6->_responseCode = v10 & 0xF;
  v11 = [(NEByteParser *)v9 parse16Bits:?];
  if ((v64 & 1) == 0)
  {
    v39 = ne_log_obj();
    if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_46;
    }

    *buf = 0;
    v40 = "Failed to parse DNS packet query count";
    goto LABEL_45;
  }

  v12 = v11;
  v13 = [(NEByteParser *)v9 parse16Bits:?];
  if ((v64 & 1) == 0)
  {
    v39 = ne_log_obj();
    if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_46;
    }

    *buf = 0;
    v40 = "Failed to parse DNS packet answer count";
    goto LABEL_45;
  }

  v14 = v13;
  v15 = [(NEByteParser *)v9 parse16Bits:?];
  if ((v64 & 1) == 0)
  {
    v39 = ne_log_obj();
    if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_46;
    }

    *buf = 0;
    v40 = "Failed to parse DNS packet authority count";
    goto LABEL_45;
  }

  v16 = v15;
  v17 = [(NEByteParser *)v9 parse16Bits:?];
  if (v64 != 1)
  {
    v39 = ne_log_obj();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v40 = "Failed to parse DNS packet additional record count";
      goto LABEL_45;
    }

LABEL_46:

    v19 = 0;
    goto LABEL_47;
  }

  v61 = v17;
  v62 = v16;
  v19 = 0;
  if (v12)
  {
    v20 = 0;
    v60 = v12;
    while (1)
    {
      parseDomainName = [(NEByteParser *)v9 parseDomainName];
      if (!parseDomainName)
      {
        v43 = ne_log_obj();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          v66 = v20;
          _os_log_error_impl(&dword_1BA83C000, v43, OS_LOG_TYPE_ERROR, "Failed to parse DNS packet query %u name", buf, 8u);
        }

        v22 = 0;
        goto LABEL_73;
      }

      v22 = parseDomainName;
      v23 = [(NEByteParser *)v9 parse16Bits:?];
      if ((v64 & 1) == 0)
      {
        break;
      }

      v24 = v23;
      v25 = [(NEByteParser *)v9 parse16Bits:?];
      if ((v64 & 1) == 0)
      {
        v44 = ne_log_obj();
        if (!os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_69;
        }

        *buf = 67109120;
        v66 = v20;
        v45 = "Failed to parse DNS packet query %u class";
        goto LABEL_85;
      }

      v26 = [[NEDNSQuery alloc] initWithName:v22 recordType:v24 recordClass:v25];
      if (!v26)
      {
        v49 = ne_log_obj();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          v66 = v20;
          _os_log_error_impl(&dword_1BA83C000, v49, OS_LOG_TYPE_ERROR, "Failed to allocate a query object for query %u", buf, 8u);
        }

LABEL_73:
        v64 = 0;
LABEL_74:

LABEL_47:
        v29 = 0;
LABEL_48:
        v33 = 0;
LABEL_49:
        v37 = 0;
        goto LABEL_50;
      }

      v27 = v26;
      if (!v19)
      {
        v19 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v60];
      }

      [v19 addObject:{v27, v60}];

      if (++v20 >= v12)
      {
        goto LABEL_17;
      }
    }

    v44 = ne_log_obj();
    if (!os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
LABEL_69:

      goto LABEL_74;
    }

    *buf = 67109120;
    v66 = v20;
    v45 = "Failed to parse DNS packet query %u type";
LABEL_85:
    _os_log_error_impl(&dword_1BA83C000, v44, OS_LOG_TYPE_ERROR, v45, buf, 8u);
    goto LABEL_69;
  }

LABEL_17:
  if (v9)
  {
    v28 = v9[1];
  }

  else
  {
    v28 = 0;
  }

  v6->_endOfQueriesOffset = v28;
  v29 = 0;
  if (v14)
  {
    v30 = 0;
    while (1)
    {
      v31 = [[NEDNSResourceRecord alloc] initFromByteParser:v9];
      if (!v31)
      {
        break;
      }

      v32 = v31;
      if (!v29)
      {
        v29 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v14];
      }

      [v29 addObject:v32];

      if (++v30 >= v14)
      {
        goto LABEL_25;
      }
    }

    v42 = ne_log_obj();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v66 = v30;
      _os_log_error_impl(&dword_1BA83C000, v42, OS_LOG_TYPE_ERROR, "Failed to parse answer %u", buf, 8u);
    }

    v64 = 0;
    goto LABEL_48;
  }

LABEL_25:
  if (v62)
  {
    v33 = 0;
    v34 = 0;
    while (1)
    {
      v35 = [[NEDNSResourceRecord alloc] initFromByteParser:v9];
      if (!v35)
      {
        break;
      }

      v36 = v35;
      if (!v33)
      {
        v33 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v62];
      }

      [v33 addObject:v36];

      if (++v34 >= v62)
      {
        goto LABEL_61;
      }
    }

    v50 = ne_log_obj();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v66 = v34;
      _os_log_error_impl(&dword_1BA83C000, v50, OS_LOG_TYPE_ERROR, "Failed to parse authority %u", buf, 8u);
    }

    v64 = 0;
    goto LABEL_49;
  }

  v33 = 0;
LABEL_61:
  if (v61)
  {
    v37 = 0;
    v46 = 0;
    while (1)
    {
      v47 = [[NEDNSResourceRecord alloc] initFromByteParser:v9];
      if (!v47)
      {
        break;
      }

      v48 = v47;
      if (!v37)
      {
        v37 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v61];
      }

      [v37 addObject:v48];

      if (++v46 >= v61)
      {
        goto LABEL_79;
      }
    }

    v59 = ne_log_obj();
    if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v66 = v46;
      _os_log_error_impl(&dword_1BA83C000, v59, OS_LOG_TYPE_ERROR, "Failed to parse additional record %u", buf, 8u);
    }

    v64 = 0;
    goto LABEL_50;
  }

  v37 = 0;
LABEL_79:
  v51 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v19];
  queries = v6->_queries;
  v6->_queries = v51;

  v53 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v29];
  answers = v6->_answers;
  v6->_answers = v53;

  v55 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v33];
  authorities = v6->_authorities;
  v6->_authorities = v55;

  v57 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v37];
  additionalRecords = v6->_additionalRecords;
  v6->_additionalRecords = v57;

  if (v64)
  {
    v38 = v6;
  }

  else
  {
LABEL_50:
    v38 = 0;
  }

LABEL_51:

  return v38;
}

+ (id)createDataWithQuery:(id)query
{
  v29 = *MEMORY[0x1E69E9840];
  queryCopy = query;
  v4 = objc_alloc_init(MEMORY[0x1E695DF88]);
  v27 = 2560;
  [v4 appendBytes:&v27 length:2];
  v26 = 1;
  [v4 appendBytes:&v26 length:2];
  v25 = 256;
  [v4 appendBytes:&v25 length:2];
  v24 = 0;
  [v4 appendBytes:&v24 length:2];
  v23 = 0;
  [v4 appendBytes:&v23 length:2];
  v22 = 0;
  [v4 appendBytes:&v22 length:2];
  name = [queryCopy name];
  v6 = [name componentsSeparatedByString:@"."];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        if ([v12 length] > 0x3F)
        {

          v14 = 0;
          goto LABEL_13;
        }

        LOBYTE(v17) = [v12 length];
        [v4 appendBytes:&v17 length:1];
        if (v17)
        {
          uTF8String = [v12 UTF8String];
          [v4 appendBytes:uTF8String length:strlen(uTF8String)];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v28 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v17 = bswap32([queryCopy recordType]) >> 16;
  [v4 appendBytes:&v17 length:2];
  v16 = bswap32([queryCopy recordClass]) >> 16;
  [v4 appendBytes:&v16 length:2];
  v14 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithData:v4];
LABEL_13:

  return v14;
}

@end