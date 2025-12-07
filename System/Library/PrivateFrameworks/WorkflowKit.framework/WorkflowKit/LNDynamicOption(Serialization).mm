@interface LNDynamicOption(Serialization)
+ (id)objectWithWFSerializedRepresentation:()Serialization;
- (id)wfSerializedRepresentation;
- (uint64_t)containsSensitiveContent;
- (void)setContainsSensitiveContent:()Serialization;
@end

@implementation LNDynamicOption(Serialization)

- (id)wfSerializedRepresentation
{
  v16 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v3 = MEMORY[0x1E696ACC8];
  value = [self value];
  v11 = 0;
  v5 = [v3 archivedDataWithRootObject:value requiringSecureCoding:1 error:&v11];
  v6 = v11;

  if (v6)
  {
    v7 = getWFAppIntentsLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      v13 = "[LNDynamicOption(Serialization) wfSerializedRepresentation]";
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_FAULT, "%s Could not archive LNValue into data: %@", buf, 0x16u);
    }

    v8 = 0;
  }

  else
  {
    [dictionary setObject:v5 forKey:@"WFLinkDynamicOptionValue"];
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(self, "indentationLevel")}];
    [dictionary setObject:v9 forKey:@"WFLinkDynamicOptionIndentationLevel"];

    v8 = dictionary;
  }

  return v8;
}

- (uint64_t)containsSensitiveContent
{
  v1 = objc_getAssociatedObject(self, LNDynamicOptionSensitiveContentKey);
  if (v1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v2 = v1;
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  bOOLValue = [v3 BOOLValue];
  return bOOLValue;
}

- (void)setContainsSensitiveContent:()Serialization
{
  v2 = LNDynamicOptionSensitiveContentKey;
  v3 = [MEMORY[0x1E696AD98] numberWithBool:?];
  objc_setAssociatedObject(self, v2, v3, 1);
}

+ (id)objectWithWFSerializedRepresentation:()Serialization
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 objectForKey:@"WFLinkDynamicOptionValue"];
  v13 = 0;
  v6 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v5 error:&v13];
  v7 = v13;
  if (v7)
  {
    v8 = getWFAppIntentsLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      v15 = "+[LNDynamicOption(Serialization) objectWithWFSerializedRepresentation:]";
      v16 = 2112;
      v17 = v7;
      _os_log_impl(&dword_1CA256000, v8, OS_LOG_TYPE_FAULT, "%s Failed to decode LNValue from data: %@", buf, 0x16u);
    }

    v9 = 0;
  }

  else
  {
    v10 = [v4 objectForKey:@"WFLinkDynamicOptionIndentationLevel"];
    unsignedIntegerValue = [v10 unsignedIntegerValue];

    v9 = [[self alloc] initWithValue:v6 indentationLevel:unsignedIntegerValue];
  }

  return v9;
}

@end