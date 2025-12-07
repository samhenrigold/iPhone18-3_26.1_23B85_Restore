@interface AMSMetricsEvent(IMAdditions)
- (void)im_addPropertiesWithDictionary:()IMAdditions;
- (void)im_setProperty:()IMAdditions forBodyKey:;
@end

@implementation AMSMetricsEvent(IMAdditions)

- (void)im_addPropertiesWithDictionary:()IMAdditions
{
  im_jsonSerializableValue = [a3 im_jsonSerializableValue];
  [self addPropertiesWithDictionary:im_jsonSerializableValue];
}

- (void)im_setProperty:()IMAdditions forBodyKey:
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 conformsToProtocol:&unk_1F54E01E8];
  if (!v6 || v8)
  {
    im_jsonSerializableValue = [v6 im_jsonSerializableValue];
  }

  else
  {
    im_jsonSerializableValue = v6;
    v10 = _IMStoreLogCategoryDefault();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412546;
      v12 = im_jsonSerializableValue;
      v13 = 2112;
      v14 = v7;
      _os_log_impl(&dword_1D8CEC000, v10, OS_LOG_TYPE_ERROR, "The property %@ for key %@ isn't JSON serializable", &v11, 0x16u);
    }
  }

  [self setProperty:im_jsonSerializableValue forBodyKey:v7];
}

@end