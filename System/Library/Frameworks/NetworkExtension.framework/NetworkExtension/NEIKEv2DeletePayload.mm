@interface NEIKEv2DeletePayload
- (BOOL)generatePayloadData;
- (BOOL)hasRequiredFields;
- (BOOL)parsePayloadData:(id)data;
- (id)descriptionWithIndent:(int)indent options:(unint64_t)options;
@end

@implementation NEIKEv2DeletePayload

- (BOOL)parsePayloadData:(id)data
{
  v35 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  if ([dataCopy length] <= 3)
  {
    v23 = ne_log_obj();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *&buf[4] = "[NEIKEv2DeletePayload parsePayloadData:]";
      v24 = "BACKTRACE %s called with null (payloadData.length >= sizeof(ikev2_payload_delete_hdr_t))";
      v25 = v23;
      v26 = 12;
LABEL_26:
      _os_log_error_impl(&dword_1BA83C000, v25, OS_LOG_TYPE_ERROR, v24, buf, v26);
      goto LABEL_27;
    }

    goto LABEL_27;
  }

  v31 = 0;
  [dataCopy getBytes:&v31 length:4];
  if (self)
  {
    v5 = v31;
    self->_protocol = v31;
    if (v5 == 240)
    {
      if (BYTE1(v31) == 8)
      {
        v14 = HIWORD(v31);
        v15 = __rev16(HIWORD(v31));
        v16 = [dataCopy length] - 4;
        if (v16 != 8 * v15)
        {
          v27 = ne_log_obj();
          v30 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
          if (v16 < 8 * v15)
          {
            if (!v30)
            {
LABEL_34:

              goto LABEL_28;
            }

            *buf = 67109632;
            *&buf[4] = v15;
            *&buf[8] = 1024;
            *&buf[10] = v16;
            v33 = 1024;
            v34 = 8 * v15;
            v29 = "DELETE TLS SPI data length too short for %u SPIs (%u < %u)";
LABEL_42:
            _os_log_error_impl(&dword_1BA83C000, v27, OS_LOG_TYPE_ERROR, v29, buf, 0x14u);
            goto LABEL_34;
          }

          if (v30)
          {
            *buf = 67109632;
            *&buf[4] = v15;
            *&buf[8] = 1024;
            *&buf[10] = v16;
            v33 = 1024;
            v34 = 8 * v15;
            _os_log_error_impl(&dword_1BA83C000, v27, OS_LOG_TYPE_ERROR, "DELETE TLS SPI data length too long for %u SPIs (%u > %u), ignoring extra bytes", buf, 0x14u);
          }
        }

        v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v15];
        objc_setProperty_atomic(self, v17, v9, 40);
        if (v14)
        {
          v18 = 4;
          do
          {
            *buf = 0;
            [dataCopy getBytes:buf range:{v18, 8}];
            v19 = [NEIKEv2TLSSPI alloc];
            v20 = [(NEIKEv2TLSSPI *)v19 initWithValue:*buf];
            [v9 addObject:v20];

            v18 += 8;
            --v15;
          }

          while (v15);
        }

        goto LABEL_16;
      }

      v23 = ne_log_obj();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109376;
        *&buf[4] = BYTE1(v31);
        *&buf[8] = 1024;
        *&buf[10] = 8;
        v24 = "Invalid DELETE TLS SPI length %u != %u";
        goto LABEL_25;
      }

LABEL_27:

LABEL_28:
      hasRequiredFields = 0;
      goto LABEL_18;
    }

    if (v5 == 3)
    {
      if (BYTE1(v31) == 4)
      {
        v6 = HIWORD(v31);
        v7 = __rev16(HIWORD(v31));
        v8 = [dataCopy length] - 4;
        if (v8 == 4 * v7)
        {
LABEL_7:
          v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v7];
          objc_setProperty_atomic(self, v10, v9, 40);
          if (v6)
          {
            v11 = 4;
            do
            {
              *buf = 0;
              [dataCopy getBytes:buf range:{v11, 4}];
              v12 = [NEIKEv2ESPSPI alloc];
              v13 = [(NEIKEv2ESPSPI *)v12 initWithValue:*buf];
              [v9 addObject:v13];

              v11 += 4;
              --v7;
            }

            while (v7);
          }

LABEL_16:

          goto LABEL_17;
        }

        v27 = ne_log_obj();
        v28 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
        if (v8 >= 4 * v7)
        {
          if (v28)
          {
            *buf = 67109632;
            *&buf[4] = v7;
            *&buf[8] = 1024;
            *&buf[10] = v8;
            v33 = 1024;
            v34 = 4 * v7;
            _os_log_error_impl(&dword_1BA83C000, v27, OS_LOG_TYPE_ERROR, "DELETE ESP SPI data length too long for %u SPIs, ignoring extra bytes (%u > %u)", buf, 0x14u);
          }

          goto LABEL_7;
        }

        if (!v28)
        {
          goto LABEL_34;
        }

        *buf = 67109632;
        *&buf[4] = v7;
        *&buf[8] = 1024;
        *&buf[10] = v8;
        v33 = 1024;
        v34 = 4 * v7;
        v29 = "DELETE ESP SPI data length too short for %u SPIs (%u < %u)";
        goto LABEL_42;
      }

      v23 = ne_log_obj();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109376;
        *&buf[4] = BYTE1(v31);
        *&buf[8] = 1024;
        *&buf[10] = 4;
        v24 = "Invalid DELETE ESP SPI length %u != %u";
LABEL_25:
        v25 = v23;
        v26 = 14;
        goto LABEL_26;
      }

      goto LABEL_27;
    }
  }

LABEL_17:
  hasRequiredFields = [(NEIKEv2DeletePayload *)self hasRequiredFields];
LABEL_18:

  return hasRequiredFields;
}

- (BOOL)generatePayloadData
{
  v47[1] = *MEMORY[0x1E69E9840];
  if (self)
  {
    p_payloadDataVector = &self->super._payloadDataVector;
    if (self->super._payloadDataVector)
    {
      return 1;
    }

    if ([(NEIKEv2DeletePayload *)self hasRequiredFields])
    {
      v40 = 0;
      protocol = self->_protocol;
      v40 = protocol;
      switch(protocol)
      {
        case 0xF0uLL:
          BYTE1(v40) = 8;
          HIWORD(v40) = bswap32([objc_getProperty(self v5]) >> 16;
          v7 = [objc_alloc(MEMORY[0x1E695DF88]) initWithCapacity:{(8 * objc_msgSend(objc_getProperty(self, v20, 40, 1), "count")) | 4}];
          [v7 appendBytes:&v40 length:4];
          v34 = 0u;
          v35 = 0u;
          v32 = 0u;
          v33 = 0u;
          v12 = objc_getProperty(self, v21, 40, 1);
          v22 = [v12 countByEnumeratingWithState:&v32 objects:v44 count:16];
          if (!v22)
          {
LABEL_26:

            v43 = v7;
            v8 = MEMORY[0x1E695DEC8];
            v9 = &v43;
            goto LABEL_27;
          }

          v23 = v22;
          v24 = *v33;
LABEL_20:
          v25 = 0;
          while (1)
          {
            if (*v33 != v24)
            {
              objc_enumerationMutation(v12);
            }

            v26 = *(*(&v32 + 1) + 8 * v25);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              break;
            }

            copySPIData = [v26 copySPIData];
            [v7 appendData:copySPIData];

            if (v23 == ++v25)
            {
              v23 = [v12 countByEnumeratingWithState:&v32 objects:v44 count:16];
              if (v23)
              {
                goto LABEL_20;
              }

              goto LABEL_26;
            }
          }

          break;
        case 3uLL:
          BYTE1(v40) = 4;
          HIWORD(v40) = bswap32([objc_getProperty(self v5]) >> 16;
          v7 = [objc_alloc(MEMORY[0x1E695DF88]) initWithCapacity:{4 * objc_msgSend(objc_getProperty(self, v10, 40, 1), "count") + 4}];
          [v7 appendBytes:&v40 length:4];
          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          v12 = objc_getProperty(self, v11, 40, 1);
          v13 = [v12 countByEnumeratingWithState:&v36 objects:v46 count:16];
          if (!v13)
          {
LABEL_17:

            v45 = v7;
            v4 = 1;
            v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v45 count:1];
            objc_storeStrong(p_payloadDataVector, v19);

LABEL_33:
            return v4;
          }

          v14 = v13;
          v15 = *v37;
LABEL_11:
          v16 = 0;
          while (1)
          {
            if (*v37 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v36 + 1) + 8 * v16);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              break;
            }

            copySPIData2 = [v17 copySPIData];
            [v7 appendData:copySPIData2];

            if (v14 == ++v16)
            {
              v14 = [v12 countByEnumeratingWithState:&v36 objects:v46 count:16];
              if (v14)
              {
                goto LABEL_11;
              }

              goto LABEL_17;
            }
          }

          break;
        case 1uLL:
          BYTE1(v40) = 0;
          HIWORD(v40) = 0;
          v7 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:&v40 length:4];
          v47[0] = v7;
          v8 = MEMORY[0x1E695DEC8];
          v9 = v47;
LABEL_27:
          v28 = [v8 arrayWithObjects:v9 count:{1, v32}];
          objc_storeStrong(p_payloadDataVector, v28);

          v4 = 1;
          goto LABEL_33;
        default:
          goto LABEL_31;
      }

LABEL_32:
      v4 = 0;
      goto LABEL_33;
    }
  }

  else if ([0 hasRequiredFields])
  {
    v40 = 0;
LABEL_31:
    v7 = ne_log_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      if (self)
      {
        v31 = self->_protocol;
      }

      else
      {
        LODWORD(v31) = 0;
      }

      *buf = 67109120;
      v42 = v31;
      _os_log_error_impl(&dword_1BA83C000, v7, OS_LOG_TYPE_ERROR, "Unsupported DELETE protocol type %u", buf, 8u);
    }

    goto LABEL_32;
  }

  v29 = ne_log_obj();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1BA83C000, v29, OS_LOG_TYPE_ERROR, "Delete payload missing required fields", buf, 2u);
  }

  return 0;
}

- (BOOL)hasRequiredFields
{
  if (self)
  {
    LOBYTE(self) = self->_protocol != 0;
  }

  return self;
}

- (id)descriptionWithIndent:(int)indent options:(unint64_t)options
{
  v5 = *&indent;
  v7 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:0];
  typeDescription = [(NEIKEv2DeletePayload *)self typeDescription];
  [v7 appendPrettyObject:typeDescription withName:@"Payload Type" andIndent:v5 options:options];

  if (self)
  {
    v9 = NEIKEv2ProtocolIDCreateString(self->_protocol);
    [v7 appendPrettyObject:v9 withName:@"Protocol" andIndent:v5 options:options];

    Property = objc_getProperty(self, v10, 40, 1);
  }

  else
  {
    [v7 appendPrettyObject:@"Invalid" withName:@"Protocol" andIndent:v5 options:options];

    Property = 0;
  }

  [v7 appendPrettyObject:Property withName:@"SPIs" andIndent:v5 options:options];

  return v7;
}

@end