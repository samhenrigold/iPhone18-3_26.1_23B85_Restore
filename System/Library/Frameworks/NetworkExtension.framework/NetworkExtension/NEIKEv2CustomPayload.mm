@interface NEIKEv2CustomPayload
- (BOOL)generatePayloadData;
- (BOOL)hasRequiredFields;
- (BOOL)parsePayloadData:(id)data;
- (id)descriptionWithIndent:(int)indent options:(unint64_t)options;
- (unint64_t)type;
@end

@implementation NEIKEv2CustomPayload

- (BOOL)parsePayloadData:(id)data
{
  v5 = [data copy];
  if (self)
  {
    objc_setProperty_atomic(self, v4, v5, 40);
  }

  return [(NEIKEv2CustomPayload *)self hasRequiredFields];
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
    if ([(NEIKEv2CustomPayload *)self hasRequiredFields])
    {
      Property = objc_getProperty(self, v4, 40, 1);
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
      _os_log_error_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_ERROR, "Custom payload missing required fields", v11, 2u);
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
    if (self->_customType)
    {
      LOBYTE(self) = objc_getProperty(self, a2, 40, 1) != 0;
    }

    else
    {
      LOBYTE(self) = 0;
    }
  }

  return self;
}

- (id)descriptionWithIndent:(int)indent options:(unint64_t)options
{
  v5 = *&indent;
  v7 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:0];
  typeDescription = [(NEIKEv2CustomPayload *)self typeDescription];
  [v7 appendPrettyObject:typeDescription withName:@"Payload Type" andIndent:v5 options:options];

  if (self)
  {
    [v7 appendPrettyInt:self->_customType withName:@"Custom Type" andIndent:v5 options:options];
    Property = objc_getProperty(self, v9, 40, 1);
  }

  else
  {
    [v7 appendPrettyInt:0 withName:@"Custom Type" andIndent:v5 options:options];
    Property = 0;
  }

  [v7 appendPrettyObject:Property withName:@"Custom Data" andIndent:v5 options:options];

  return v7;
}

- (unint64_t)type
{
  if (self)
  {
    return *(self + 32);
  }

  return self;
}

@end