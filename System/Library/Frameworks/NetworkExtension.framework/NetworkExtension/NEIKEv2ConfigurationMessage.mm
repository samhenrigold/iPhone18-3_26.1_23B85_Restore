@interface NEIKEv2ConfigurationMessage
- (NEIKEv2ConfigurationMessage)initWithWithAttributes:(id)attributes;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionWithIndent:(int)indent options:(unint64_t)options;
@end

@implementation NEIKEv2ConfigurationMessage

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = v4;
  if (self)
  {
    configurationType = self->_configurationType;
    if (!v4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  configurationType = 0;
  if (v4)
  {
LABEL_3:
    *(v4 + 8) = configurationType;
  }

LABEL_4:
  v8 = objc_alloc(MEMORY[0x1E695DEC8]);
  if (self)
  {
    Property = objc_getProperty(self, v7, 16, 1);
  }

  else
  {
    Property = 0;
  }

  v11 = [v8 initWithArray:Property copyItems:1];
  if (v5)
  {
    objc_setProperty_atomic(v5, v10, v11, 16);
  }

  return v5;
}

- (id)descriptionWithIndent:(int)indent options:(unint64_t)options
{
  v5 = *&indent;
  v7 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:0];
  v8 = v7;
  if (self)
  {
    v9 = self->_configurationType - 1;
    if (v9 < 4)
    {
      configurationType = off_1E7F08088[v9];
      [v7 appendPrettyObject:configurationType withName:@"Type" andIndent:v5 options:options];
LABEL_6:
      Property = objc_getProperty(self, v11, 16, 1);
      goto LABEL_7;
    }

    v12 = objc_alloc(MEMORY[0x1E696AEC0]);
    configurationType = self->_configurationType;
  }

  else
  {
    v12 = objc_alloc(MEMORY[0x1E696AEC0]);
    configurationType = 0;
  }

  configurationType = [v12 initWithFormat:@"%u", configurationType];
  [v8 appendPrettyObject:configurationType withName:@"Type" andIndent:v5 options:options];
  if (self)
  {
    goto LABEL_6;
  }

  Property = 0;
LABEL_7:
  [v8 appendPrettyObject:Property withName:@"Attributes" andIndent:v5 options:options];

  return v8;
}

- (NEIKEv2ConfigurationMessage)initWithWithAttributes:(id)attributes
{
  attributesCopy = attributes;
  v12.receiver = self;
  v12.super_class = NEIKEv2ConfigurationMessage;
  v5 = [(NEIKEv2ConfigurationMessage *)&v12 init];
  v7 = v5;
  if (v5)
  {
    objc_setProperty_atomic(v5, v6, attributesCopy, 16);
    v8 = v7;
  }

  else
  {
    v10 = ne_log_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      *v11 = 0;
      _os_log_fault_impl(&dword_1BA83C000, v10, OS_LOG_TYPE_FAULT, "[super init] failed", v11, 2u);
    }
  }

  return v7;
}

@end