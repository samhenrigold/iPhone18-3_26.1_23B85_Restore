@interface NEIKEv2KeyIDIdentifier
- (NEIKEv2KeyIDIdentifier)initWithKeyID:(id)d;
- (NEIKEv2KeyIDIdentifier)initWithKeyIDString:(id)string;
@end

@implementation NEIKEv2KeyIDIdentifier

- (NEIKEv2KeyIDIdentifier)initWithKeyIDString:(id)string
{
  v4 = [string dataUsingEncoding:4];
  v5 = [(NEIKEv2KeyIDIdentifier *)self initWithKeyID:v4];

  return v5;
}

- (NEIKEv2KeyIDIdentifier)initWithKeyID:(id)d
{
  selfCopy = self;
  v9 = *MEMORY[0x1E69E9840];
  if (d)
  {
    selfCopy = [(NEIKEv2Identifier *)self initWithIdentifierData:d];
    v4 = selfCopy;
  }

  else
  {
    v6 = ne_log_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      v7 = 136315138;
      v8 = "[NEIKEv2KeyIDIdentifier initWithKeyID:]";
      _os_log_fault_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_FAULT, "%s called with null keyID", &v7, 0xCu);
    }

    v4 = 0;
  }

  return v4;
}

@end