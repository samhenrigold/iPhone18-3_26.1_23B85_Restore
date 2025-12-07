@interface NEIKEv2KeyExchangePayload
- (BOOL)generatePayloadData;
- (BOOL)hasRequiredFields;
- (BOOL)parsePayloadData:(id)data;
- (id)descriptionWithIndent:(int)indent options:(unint64_t)options;
@end

@implementation NEIKEv2KeyExchangePayload

- (BOOL)parsePayloadData:(id)data
{
  v15 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  if ([dataCopy length] <= 3)
  {
    v12 = ne_log_obj();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = 136315138;
      v14 = "[NEIKEv2KeyExchangePayload parsePayloadData:]";
      _os_log_error_impl(&dword_1BA83C000, v12, OS_LOG_TYPE_ERROR, "BACKTRACE %s called with null (payloadData.length >= sizeof(ikev2_payload_ke_hdr_t))", &v13, 0xCu);
    }

    hasRequiredFields = 0;
  }

  else
  {
    v13 = 0;
    [dataCopy getBytes:&v13 length:4];
    v5 = [NEIKEv2KEMProtocol alloc];
    v7 = [(NEIKEv2KEMProtocol *)v5 initWithMethod:bswap32(v13) >> 16];
    if (self)
    {
      objc_setProperty_atomic(self, v6, v7, 32);
    }

    v9 = [dataCopy subdataWithRange:{4, objc_msgSend(dataCopy, "length") - 4}];
    if (self)
    {
      objc_setProperty_atomic(self, v8, v9, 40);
    }

    hasRequiredFields = [(NEIKEv2KeyExchangePayload *)self hasRequiredFields];
  }

  return hasRequiredFields;
}

- (BOOL)generatePayloadData
{
  v14[1] = *MEMORY[0x1E69E9840];
  if (self)
  {
    if (self->super._payloadDataVector)
    {
      return 1;
    }

    if ([(NEIKEv2KeyExchangePayload *)self hasRequiredFields])
    {
      *v13 = 0;
      *v13 = bswap32([objc_getProperty(self v4]) >> 16;
      v5 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v13 length:4];
      objc_storeStrong(&self->super._payloadSubHeader, v5);

      Property = objc_getProperty(self, v6, 40, 1);
LABEL_6:
      v14[0] = Property;
      v8 = MEMORY[0x1E695DEC8];
      v9 = Property;
      v3 = 1;
      v10 = [v8 arrayWithObjects:v14 count:{1, *v13}];

      [(NEIKEv2KeyExchangeHandler *)self setSharedSecret:v10];
      return v3;
    }
  }

  else if ([0 hasRequiredFields])
  {
    *v13 = 0;
    *v13 = bswap32([0 method]) >> 16;

    Property = 0;
    goto LABEL_6;
  }

  v11 = ne_log_obj();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *v13 = 0;
    _os_log_error_impl(&dword_1BA83C000, v11, OS_LOG_TYPE_ERROR, "KE payload missing required fields", v13, 2u);
  }

  return 0;
}

- (BOOL)hasRequiredFields
{
  selfCopy = self;
  if (self)
  {
    v3 = objc_getProperty(self, a2, 32, 1);
    if (v3)
    {
      v5 = v3;
      LOBYTE(selfCopy) = objc_getProperty(selfCopy, v4, 40, 1) != 0;
    }

    else
    {
      LOBYTE(selfCopy) = 0;
    }
  }

  return selfCopy;
}

- (id)descriptionWithIndent:(int)indent options:(unint64_t)options
{
  v5 = *&indent;
  v7 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:0];
  typeDescription = [(NEIKEv2KeyExchangePayload *)self typeDescription];
  [v7 appendPrettyObject:typeDescription withName:@"Payload Type" andIndent:v5 options:options];

  if (self)
  {
    [v7 appendPrettyObject:objc_getProperty(self withName:v9 andIndent:32 options:{1), @"Method", v5, options}];
    Property = objc_getProperty(self, v10, 40, 1);
  }

  else
  {
    [v7 appendPrettyObject:0 withName:@"Method" andIndent:v5 options:options];
    Property = 0;
  }

  [v7 appendPrettyObject:Property withName:@"Data" andIndent:v5 options:options];

  return v7;
}

@end