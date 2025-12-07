@interface NEIKEv2FQDNIdentifier
- (NEIKEv2FQDNIdentifier)initWithFQDN:(id)n;
@end

@implementation NEIKEv2FQDNIdentifier

- (NEIKEv2FQDNIdentifier)initWithFQDN:(id)n
{
  v10 = *MEMORY[0x1E69E9840];
  if (n)
  {
    v4 = [n dataUsingEncoding:4];
    self = [(NEIKEv2Identifier *)self initWithIdentifierData:v4];

    selfCopy = self;
  }

  else
  {
    v7 = ne_log_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      v8 = 136315138;
      v9 = "[NEIKEv2FQDNIdentifier initWithFQDN:]";
      _os_log_fault_impl(&dword_1BA83C000, v7, OS_LOG_TYPE_FAULT, "%s called with null fqdn", &v8, 0xCu);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

@end