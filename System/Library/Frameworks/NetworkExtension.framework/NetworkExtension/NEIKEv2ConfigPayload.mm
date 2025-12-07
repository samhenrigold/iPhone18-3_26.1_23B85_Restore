@interface NEIKEv2ConfigPayload
- (BOOL)generatePayloadData;
- (BOOL)hasRequiredFields;
- (BOOL)parsePayloadData:(id)data;
- (NEIKEv2IPv4SubnetAttribute)createConfigAttributeFromData:(void *)data attributeName:(uint64_t)name attributeType:(uint64_t)type customType:;
- (id)descriptionWithIndent:(int)indent options:(unint64_t)options;
@end

@implementation NEIKEv2ConfigPayload

- (BOOL)parsePayloadData:(id)data
{
  v39 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  if ([dataCopy length] <= 3)
  {
    v30 = ne_log_obj();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *v36 = "[NEIKEv2ConfigPayload parsePayloadData:]";
      _os_log_error_impl(&dword_1BA83C000, v30, OS_LOG_TYPE_ERROR, "BACKTRACE %s called with null (payloadData.length >= sizeof(ikev2_payload_config_hdr_t))", buf, 0xCu);
    }

    hasRequiredFields = 0;
  }

  else
  {
    v34 = 0;
    [dataCopy getBytes:&v34 length:4];
    v5 = objc_alloc_init(NEIKEv2ConfigurationMessage);
    v7 = v5;
    if (self)
    {
      objc_setProperty_atomic(self, v6, v5, 32);

      v8 = v34;
      Property = objc_getProperty(self, v9, 32, 1);
      if (Property)
      {
        Property[1] = v8;
      }

      v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v13 = objc_getProperty(self, v12, 32, 1);
      if (v13)
      {
        objc_setProperty_atomic(v13, v14, v11, 16);
      }
    }

    else
    {

      v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    bytes = [dataCopy bytes];
    v33 = dataCopy;
    v16 = [dataCopy length];
    v18 = v16 - 4;
    if ((v16 - 4) < 4)
    {
      v25 = v16 - 4;
LABEL_17:
      if (v25)
      {
        v31 = ne_log_obj();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          *v36 = v25;
          _os_log_error_impl(&dword_1BA83C000, v31, OS_LOG_TYPE_ERROR, "Ignoring %u remaining bytes in configuration payload", buf, 8u);
        }
      }

      hasRequiredFields = [(NEIKEv2ConfigPayload *)self hasRequiredFields];
    }

    else
    {
      v19 = (bytes + 4);
      *&v17 = 134218240;
      v32 = v17;
      while (1)
      {
        v20 = bswap32(*v19) >> 16;
        v21 = bswap32(v19[1]) >> 16;
        v22 = v21 + 4;
        v23 = ne_log_obj();
        v24 = v23;
        v25 = v18 - (v21 + 4);
        if (v18 < v21 + 4)
        {
          break;
        }

        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          *buf = v32;
          *v36 = v20;
          *&v36[8] = 1024;
          *&v36[10] = v21;
          _os_log_debug_impl(&dword_1BA83C000, v24, OS_LOG_TYPE_DEBUG, "Parsing configuration attribute of type %zu length %u", buf, 0x12u);
        }

        v26 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:v19 + 2 length:v21 freeWhenDone:0];
        v27 = [(NEIKEv2ConfigPayload *)self createConfigAttributeFromData:v26 attributeName:0 attributeType:v20 customType:0];
        if (v27)
        {
          [v11 addObject:v27];
        }

        v19 = (v19 + v22);

        v18 -= v22;
        if (v25 <= 3)
        {
          goto LABEL_17;
        }
      }

      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109632;
        *v36 = v18;
        *&v36[4] = 2048;
        *&v36[6] = v20;
        v37 = 1024;
        v38 = v21;
        _os_log_error_impl(&dword_1BA83C000, v24, OS_LOG_TYPE_ERROR, "Not enough bytes remaining (%u) to process configuration attribute of type %zu length %u", buf, 0x18u);
      }

      hasRequiredFields = 0;
    }

    dataCopy = v33;
  }

  return hasRequiredFields;
}

- (NEIKEv2IPv4SubnetAttribute)createConfigAttributeFromData:(void *)data attributeName:(uint64_t)name attributeType:(uint64_t)type customType:
{
  v30 = *MEMORY[0x1E69E9840];
  v9 = a2;
  dataCopy = data;
  if (!self)
  {
LABEL_46:
    v17 = 0;
    goto LABEL_68;
  }

  v11 = [v9 length];
  v12 = v11;
  if (name > 12)
  {
    if (name > 20)
    {
      if ((name - 25958) < 2 || name == 21)
      {
LABEL_30:
        v28 = 0uLL;
        v29 = 0;
        *buf = 7708;
        if (v11 == 16)
        {
          [v9 getBytes:&v28 + 4 length:16];
        }

        v13 = [MEMORY[0x1E6977E08] endpointWithAddress:buf];
        v15 = 0;
        if (name < 22 || name == 25958 || name == 25959)
        {
          v15 = objc_opt_class();
        }

        v22 = [v15 alloc];
        if (type)
        {
          v23 = [v22 initCustomWithAttributeType:type attributeName:dataCopy addressValue:v13];
        }

        else
        {
          v23 = [v22 initWithAddress:v13];
        }

        goto LABEL_67;
      }

      if (name == 25)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (name <= 14)
      {
        if (name == 13)
        {
          DWORD2(v28) = 0;
          *&v28 = 0;
          v26 = 0;
          *buf = 528;
          if (v11 == 8)
          {
            [v9 getBytes:&v28 length:4];
            [v9 getBytes:&v26 range:{4, 4}];
          }

          v18 = [NEIKEv2IPv4SubnetAttribute alloc];
          v19 = [MEMORY[0x1E6977E08] endpointWithAddress:buf];
          if (type)
          {
            v20 = [(NEIKEv2SubnetAttribute *)v18 initCustomWithAttributeType:type attributeName:dataCopy addressValue:v19 ipv4SubnetMask:v26];
          }

          else
          {
            v20 = [(NEIKEv2SubnetAttribute *)v18 initWithAddress:v19 ipv4SubnetMask:v26];
          }

          goto LABEL_58;
        }

        goto LABEL_18;
      }

      if (name == 15)
      {
LABEL_40:
        v28 = 0uLL;
        v29 = 0;
        *buf = 7708;
        LOBYTE(v26) = 0;
        if (v11 == 16)
        {
          [v9 getBytes:&v28 + 4 length:16];
        }

        else if (v11 == 17)
        {
          [v9 getBytes:&v28 + 4 length:16];
          [v9 getBytes:&v26 range:{16, 1}];
        }

        v13 = [MEMORY[0x1E6977E08] endpointWithAddress:buf];
        v24 = objc_alloc(objc_opt_class());
        if (type)
        {
          v23 = [v24 initCustomWithAttributeType:type attributeName:dataCopy addressValue:v13 prefix:v26];
        }

        else
        {
          v23 = [v24 initWithAddress:v13 prefix:v26];
        }

        goto LABEL_67;
      }

      if (name == 20)
      {
        goto LABEL_21;
      }
    }

LABEL_43:
    v16 = ne_log_obj();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 67109376;
      LODWORD(v28) = name;
      WORD2(v28) = 1024;
      *(&v28 + 6) = v12;
      _os_log_impl(&dword_1BA83C000, v16, OS_LOG_TYPE_INFO, "Received unknown attribute of type %u length %u", buf, 0xEu);
    }

    goto LABEL_46;
  }

  if (name <= 6)
  {
    if ((name - 1) >= 3 && name != 6)
    {
      goto LABEL_43;
    }

LABEL_21:
    DWORD2(v28) = 0;
    *&v28 = 0;
    *buf = 528;
    if (v11 == 4)
    {
      [v9 getBytes:&v28 length:4];
    }

    v14 = 0;
    if (name <= 2)
    {
      if (name != 1 && name != 2)
      {
        goto LABEL_55;
      }
    }

    else if (name != 3 && name != 6 && name != 20)
    {
      goto LABEL_55;
    }

    v14 = objc_opt_class();
LABEL_55:
    v21 = [v14 alloc];
    v19 = [MEMORY[0x1E6977E08] endpointWithAddress:buf];
    if (type)
    {
      v20 = [v21 initCustomWithAttributeType:type attributeName:dataCopy addressValue:v19];
    }

    else
    {
      v20 = [v21 initWithAddress:v19];
    }

LABEL_58:
    v17 = v20;

    goto LABEL_68;
  }

  if (name > 9)
  {
    if (name != 10 && name != 12)
    {
      goto LABEL_43;
    }

    goto LABEL_30;
  }

  if (name != 7)
  {
    if (name != 8)
    {
      goto LABEL_43;
    }

    goto LABEL_40;
  }

LABEL_18:
  v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v9 encoding:4];
  v23 = [objc_alloc(objc_opt_class()) initWithStringValue:v13];
LABEL_67:
  v17 = v23;

LABEL_68:

  return v17;
}

- (BOOL)generatePayloadData
{
  v54 = *MEMORY[0x1E69E9840];
  if (!self || !self->super._payloadDataVector)
  {
    hasRequiredFields = [(NEIKEv2ConfigPayload *)self hasRequiredFields];
    if (hasRequiredFields)
    {
      v5 = objc_alloc(MEMORY[0x1E695DF70]);
      if (self)
      {
        Property = objc_getProperty(self, v4, 32, 1);
        if (Property)
        {
          Property = objc_getProperty(Property, v7, 16, 1);
        }
      }

      else
      {
        Property = 0;
      }

      v8 = Property;
      v9 = [v5 initWithCapacity:{objc_msgSend(v8, "count")}];

      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      if (self)
      {
        v11 = objc_getProperty(self, v10, 32, 1);
        if (v11)
        {
          v11 = objc_getProperty(v11, v12, 16, 1);
        }
      }

      else
      {
        v11 = 0;
      }

      v13 = v11;
      v14 = [v13 countByEnumeratingWithState:&v47 objects:v51 count:16];
      if (v14)
      {
        v16 = v14;
        v17 = 0;
        v18 = *v48;
        *&v15 = 138412290;
        v45 = v15;
        for (i = *v48; ; i = *v48)
        {
          if (i != v18)
          {
            objc_enumerationMutation(v13);
          }

          v20 = *(*(&v47 + 1) + 8 * v17);
          if (![(NEIKEv2ConfigPayload *)v20 attributeType])
          {
            v23 = ne_log_obj();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
            {
              *buf = v45;
              selfCopy3 = v20;
              _os_log_fault_impl(&dword_1BA83C000, v23, OS_LOG_TYPE_FAULT, "AttributeType 0 invalid in %@", buf, 0xCu);
            }

            goto LABEL_27;
          }

          if ([(NEIKEv2ConfigPayload *)v20 valueType]== 5)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              break;
            }
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            address = [(NEIKEv2ConfigPayload *)v20 address];

            if (!address)
            {
              goto LABEL_34;
            }

            address2 = [(NEIKEv2ConfigPayload *)v20 address];
            v28Address = [address2 address];

            if ([(NEIKEv2ConfigPayload *)v20 valueType]== 1 && *(v28Address + 1) == 2)
            {
              *buf = 0;
              *buf = bswap32([(NEIKEv2ConfigPayload *)v20 attributeType]) >> 16;
              *&buf[2] = 1024;
              v30 = [objc_alloc(MEMORY[0x1E695DF88]) initWithCapacity:8];
              [v30 appendBytes:buf length:4];
              v31 = (v28Address + 4);
              goto LABEL_33;
            }

            if ([(NEIKEv2ConfigPayload *)v20 valueType]== 2 && *(v28Address + 1) == 30)
            {
              *buf = 0;
              *buf = bswap32([(NEIKEv2ConfigPayload *)v20 attributeType]) >> 16;
              *&buf[2] = 4096;
              v30 = [objc_alloc(MEMORY[0x1E695DF88]) initWithCapacity:20];
              [v30 appendBytes:buf length:4];
              v31 = (v28Address + 8);
              v35 = v30;
              v36 = 16;
              goto LABEL_41;
            }
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_43;
            }

            address3 = [(NEIKEv2ConfigPayload *)v20 address];

            if (!address3)
            {
              goto LABEL_34;
            }

            address4 = [(NEIKEv2ConfigPayload *)v20 address];
            v33Address = [address4 address];

            if ([(NEIKEv2ConfigPayload *)v20 valueType]== 3 && *(v33Address + 1) == 2)
            {
              *buf = 0;
              *buf = [(NEIKEv2ConfigPayload *)v20 ipv4SubnetMask];
              v46 = 0;
              LOWORD(v46) = bswap32([(NEIKEv2ConfigPayload *)v20 attributeType]) >> 16;
              HIWORD(v46) = 2048;
              v30 = [objc_alloc(MEMORY[0x1E695DF88]) initWithCapacity:12];
              [v30 appendBytes:&v46 length:4];
              [v30 appendBytes:v33Address + 4 length:4];
              v31 = buf;
LABEL_33:
              v35 = v30;
              v36 = 4;
LABEL_41:
              [v35 appendBytes:v31 length:v36];
LABEL_42:
              [v9 addObject:v30];

              goto LABEL_43;
            }

            if ([(NEIKEv2ConfigPayload *)v20 valueType]== 4 && *(v33Address + 1) == 30)
            {
              LOBYTE(v46) = [(NEIKEv2ConfigPayload *)v20 prefix];
              *buf = 0;
              *buf = bswap32([(NEIKEv2ConfigPayload *)v20 attributeType]) >> 16;
              *&buf[2] = 4352;
              v30 = [objc_alloc(MEMORY[0x1E695DF88]) initWithCapacity:21];
              [v30 appendBytes:buf length:4];
              [v30 appendBytes:v33Address + 8 length:16];
              v31 = &v46;
              v35 = v30;
              v36 = 1;
              goto LABEL_41;
            }
          }

LABEL_43:
          if (++v17 >= v16)
          {
            v37 = [v13 countByEnumeratingWithState:&v47 objects:v51 count:16];
            if (!v37)
            {
              goto LABEL_49;
            }

            v16 = v37;
            v17 = 0;
          }
        }

        stringValue = [(NEIKEv2ConfigPayload *)v20 stringValue];

        if (stringValue)
        {
          stringValue2 = [(NEIKEv2ConfigPayload *)v20 stringValue];
          v23 = [stringValue2 dataUsingEncoding:4];

          *buf = 0;
          attributeType = [(NEIKEv2ConfigPayload *)v20 attributeType];
          v25 = [v23 length];
          *buf = bswap32(attributeType) >> 16;
          *&buf[2] = bswap32(v25) >> 16;
          v26 = [objc_alloc(MEMORY[0x1E695DF88]) initWithCapacity:v25 + 4];
          [v26 appendBytes:buf length:4];
          [v26 appendData:v23];
          [v9 addObject:v26];

LABEL_27:
          goto LABEL_43;
        }

LABEL_34:
        *buf = 0;
        *buf = bswap32([(NEIKEv2ConfigPayload *)v20 attributeType]) >> 16;
        *&buf[2] = 0;
        v30 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:buf length:4];
        goto LABEL_42;
      }

LABEL_49:

      *buf = 0;
      if (self)
      {
        v39 = objc_getProperty(self, v38, 32, 1);
        if (v39)
        {
          v40 = v39[1];
        }

        else
        {
          LOBYTE(v40) = 0;
        }
      }

      else
      {
        LOBYTE(v40) = 0;
      }

      buf[0] = v40;
      v41 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:buf length:4];
      [(NEIKEv2Payload *)self setPayloadSubHeader:v41];

      if ([v9 count])
      {
        selfCopy2 = self;
        v43 = v9;
      }

      else
      {
        v43 = MEMORY[0x1E695E0F0];
        selfCopy2 = self;
      }

      [(NEIKEv2KeyExchangeHandler *)selfCopy2 setSharedSecret:v43];
    }

    else
    {
      v9 = ne_log_obj();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        selfCopy3 = self;
        _os_log_fault_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_FAULT, "Configuration payload missing required fields %@", buf, 0xCu);
      }
    }

    return hasRequiredFields;
  }

  return 1;
}

- (BOOL)hasRequiredFields
{
  if (self)
  {
    self = objc_getProperty(self, a2, 32, 1);
    if (self)
    {
      LOBYTE(self) = *&self->super._isInbound != 0;
    }
  }

  return self;
}

- (id)descriptionWithIndent:(int)indent options:(unint64_t)options
{
  v5 = *&indent;
  v7 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:0];
  typeDescription = [(NEIKEv2ConfigPayload *)self typeDescription];
  [v7 appendPrettyObject:typeDescription withName:@"Payload Type" andIndent:v5 options:options];

  if (self)
  {
    Property = objc_getProperty(self, v9, 32, 1);
  }

  else
  {
    Property = 0;
  }

  [v7 appendPrettyObject:Property withName:@"Configuration" andIndent:v5 options:options];

  return v7;
}

@end