@interface NEIKEv2VendorIDPayload
- (BOOL)generatePayloadData;
- (BOOL)hasRequiredFields;
- (BOOL)parsePayloadData:(id)data;
- (id)descriptionWithIndent:(int)indent options:(unint64_t)options;
@end

@implementation NEIKEv2VendorIDPayload

- (BOOL)parsePayloadData:(id)data
{
  v5 = [data copy];
  if (self)
  {
    objc_setProperty_atomic(self, v4, v5, 32);
  }

  return [(NEIKEv2VendorIDPayload *)self hasRequiredFields];
}

- (BOOL)generatePayloadData
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (!self)
  {
    hasRequiredFields = [0 hasRequiredFields];
    Property = 0;
    if (hasRequiredFields)
    {
      goto LABEL_6;
    }

    goto LABEL_8;
  }

  if (!self->super._payloadDataVector)
  {
    if ([(NEIKEv2VendorIDPayload *)self hasRequiredFields])
    {
      Property = objc_getProperty(self, v4, 32, 1);
LABEL_6:
      v12[0] = Property;
      v6 = MEMORY[0x1E695DEC8];
      v7 = Property;
      v3 = 1;
      v8 = [v6 arrayWithObjects:v12 count:1];

      [(NEIKEv2KeyExchangeHandler *)self setSharedSecret:v8];
LABEL_11:

      return v3;
    }

LABEL_8:
    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_error_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_ERROR, "Vendor ID payload missing required fields", v11, 2u);
    }

    v3 = 0;
    goto LABEL_11;
  }

  return 1;
}

- (BOOL)hasRequiredFields
{
  if (self)
  {
    self = objc_getProperty(self, a2, 32, 1);
  }

  return self != 0;
}

- (id)descriptionWithIndent:(int)indent options:(unint64_t)options
{
  v5 = *&indent;
  v7 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:0];
  typeDescription = [(NEIKEv2VendorIDPayload *)self typeDescription];
  [v7 appendPrettyObject:typeDescription withName:@"Payload Type" andIndent:v5 options:options];

  if (self)
  {
    Property = objc_getProperty(self, v9, 32, 1);
  }

  else
  {
    Property = 0;
  }

  [v7 appendPrettyObject:Property withName:@"Vendor Data" andIndent:v5 options:options];

  return v7;
}

@end