@interface NEIKEv2ConfigurationAttribute
- (NSString)attributeName;
- (id)descriptionWithIndent:(int)indent options:(unint64_t)options;
- (id)initEmptyRequest;
@end

@implementation NEIKEv2ConfigurationAttribute

- (id)descriptionWithIndent:(int)indent options:(unint64_t)options
{
  v5 = *&indent;
  v7 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:0];
  attributeName = [(NEIKEv2ConfigurationAttribute *)self attributeName];
  [v7 appendPrettyObject:attributeName withName:@"Name" andIndent:v5 options:options];

  String = NEIKEv2AttributeTypeCreateString([(NEIKEv2ConfigurationAttribute *)self attributeType]);
  [v7 appendPrettyObject:String withName:@"Type" andIndent:v5 options:options];

  typeDescription = [(NEIKEv2ConfigurationAttribute *)self typeDescription];
  [v7 appendPrettyObject:typeDescription withName:@"Payload Type" andIndent:v5 options:options];

  return v7;
}

- (NSString)attributeName
{
  if (self)
  {
    self = objc_getProperty(self, a2, 8, 1);
    v2 = vars8;
  }

  return self;
}

- (id)initEmptyRequest
{
  v8.receiver = self;
  v8.super_class = NEIKEv2ConfigurationAttribute;
  v2 = [(NEIKEv2ConfigurationAttribute *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v6 = ne_log_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      *v7 = 0;
      _os_log_fault_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_FAULT, "[super init] failed", v7, 2u);
    }
  }

  return v3;
}

@end