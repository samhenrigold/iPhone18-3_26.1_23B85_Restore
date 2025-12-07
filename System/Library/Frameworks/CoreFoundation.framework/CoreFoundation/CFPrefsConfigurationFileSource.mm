@interface CFPrefsConfigurationFileSource
- (CFPrefsConfigurationFileSource)initWithConfigurationPropertyList:(__CFDictionary *)list containingPreferences:(id)preferences;
@end

@implementation CFPrefsConfigurationFileSource

- (CFPrefsConfigurationFileSource)initWithConfigurationPropertyList:(__CFDictionary *)list containingPreferences:(id)preferences
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = CFPrefsConfigurationFileSource;
  v5 = [(CFPrefsSource *)&v7 initWithContainingPreferences:preferences];
  if (v5)
  {
    CFDictionaryApplyFunction(list, mergeFunc, v5);
  }

  return v5;
}

@end