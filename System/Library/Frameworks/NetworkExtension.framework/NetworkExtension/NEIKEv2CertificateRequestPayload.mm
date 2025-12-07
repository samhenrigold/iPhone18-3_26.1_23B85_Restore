@interface NEIKEv2CertificateRequestPayload
- (BOOL)generatePayloadData;
- (BOOL)hasRequiredFields;
- (BOOL)parsePayloadData:(id)data;
- (id)descriptionWithIndent:(int)indent options:(unint64_t)options;
@end

@implementation NEIKEv2CertificateRequestPayload

- (BOOL)parsePayloadData:(id)data
{
  v12 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  if ([dataCopy length])
  {
    LOBYTE(v10) = 0;
    [dataCopy getBytes:&v10 length:1];
    if (self)
    {
      self->_encoding = v10;
    }

    v6 = [dataCopy subdataWithRange:{1, objc_msgSend(dataCopy, "length") - 1}];
    if (self)
    {
      objc_setProperty_atomic(self, v5, v6, 40);
    }

    hasRequiredFields = [(NEIKEv2CertificateRequestPayload *)self hasRequiredFields];
  }

  else
  {
    v9 = ne_log_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315138;
      v11 = "[NEIKEv2CertificateRequestPayload parsePayloadData:]";
      _os_log_error_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_ERROR, "BACKTRACE %s called with null (payloadData.length >= sizeof(ikev2_payload_certreq_hdr_t))", &v10, 0xCu);
    }

    hasRequiredFields = 0;
  }

  return hasRequiredFields;
}

- (BOOL)generatePayloadData
{
  v13[1] = *MEMORY[0x1E69E9840];
  if (self)
  {
    if (self->super._payloadDataVector)
    {
      return 1;
    }

    if ([(NEIKEv2CertificateRequestPayload *)self hasRequiredFields])
    {
      v12[0] = self->_encoding;
      v4 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v12 length:1];
      objc_storeStrong(&self->super._payloadSubHeader, v4);

      Property = objc_getProperty(self, v5, 40, 1);
LABEL_6:
      v13[0] = Property;
      v7 = MEMORY[0x1E695DEC8];
      v8 = Property;
      v3 = 1;
      v9 = [v7 arrayWithObjects:v13 count:{1, *v12}];

      [(NEIKEv2KeyExchangeHandler *)self setSharedSecret:v9];
      return v3;
    }
  }

  else if ([0 hasRequiredFields])
  {
    v12[0] = 0;

    Property = 0;
    goto LABEL_6;
  }

  v10 = ne_log_obj();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *v12 = 0;
    _os_log_error_impl(&dword_1BA83C000, v10, OS_LOG_TYPE_ERROR, "Certificate Request payload missing required fields", v12, 2u);
  }

  return 0;
}

- (BOOL)hasRequiredFields
{
  selfCopy = self;
  if (self)
  {
    v3 = objc_getProperty(self, a2, 40, 1);
    if (v3)
    {
      LOBYTE(selfCopy) = selfCopy->_encoding != 0;
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
  typeDescription = [(NEIKEv2CertificateRequestPayload *)self typeDescription];
  [v7 appendPrettyObject:typeDescription withName:@"Payload Type" andIndent:v5 options:options];

  if (self)
  {
    [v7 appendPrettyObject:objc_getProperty(self withName:v9 andIndent:40 options:{1), @"Certificate Data", v5, options}];
    encoding = self->_encoding;
  }

  else
  {
    [v7 appendPrettyObject:0 withName:@"Certificate Data" andIndent:v5 options:options];
    encoding = 0;
  }

  [v7 appendPrettyInt:encoding withName:@"Encoding" andIndent:v5 options:options];

  return v7;
}

@end