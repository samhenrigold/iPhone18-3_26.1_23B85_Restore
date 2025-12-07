@interface NEIKEv2ASN1DNIdentifier
- (NEIKEv2ASN1DNIdentifier)initWithData:(id)data;
@end

@implementation NEIKEv2ASN1DNIdentifier

- (NEIKEv2ASN1DNIdentifier)initWithData:(id)data
{
  selfCopy = self;
  v9 = *MEMORY[0x1E69E9840];
  if (data)
  {
    selfCopy = [(NEIKEv2Identifier *)self initWithIdentifierData:data];
    v4 = selfCopy;
  }

  else
  {
    v6 = ne_log_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      v7 = 136315138;
      v8 = "[NEIKEv2ASN1DNIdentifier initWithData:]";
      _os_log_fault_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_FAULT, "%s called with null data", &v7, 0xCu);
    }

    v4 = 0;
  }

  return v4;
}

@end