@interface NEIKEv2EncryptedPayload
- (BOOL)hasRequiredFields;
- (BOOL)parsePayloadData:(id)data;
- (id)descriptionWithIndent:(int)indent options:(unint64_t)options;
@end

@implementation NEIKEv2EncryptedPayload

- (BOOL)parsePayloadData:(id)data
{
  if (self)
  {
    objc_setProperty_atomic(self, a2, data, 40);
  }

  return [(NEIKEv2EncryptedPayload *)self hasRequiredFields];
}

- (BOOL)hasRequiredFields
{
  if (self)
  {
    self = objc_getProperty(self, a2, 40, 1);
  }

  return self != 0;
}

- (id)descriptionWithIndent:(int)indent options:(unint64_t)options
{
  v5 = *&indent;
  v7 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:0];
  typeDescription = [(NEIKEv2EncryptedPayload *)self typeDescription];
  [v7 appendPrettyObject:typeDescription withName:@"Payload Type" andIndent:v5 options:options];

  return v7;
}

@end