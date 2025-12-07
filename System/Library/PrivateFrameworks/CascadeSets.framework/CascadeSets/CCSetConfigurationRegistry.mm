@interface CCSetConfigurationRegistry
+ (id)allSetConfigurations;
+ (id)configurationForSetIdentifier:(id)identifier;
@end

@implementation CCSetConfigurationRegistry

+ (id)configurationForSetIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = CCSetLibraryConfigurationRegistryBridge(identifierCopy);
  v5 = [v4 configurationForSetIdentifier:identifierCopy];

  return v5;
}

+ (id)allSetConfigurations
{
  v2 = CCSetLibraryConfigurationRegistryBridge(self);
  allSetConfigurations = [v2 allSetConfigurations];

  return allSetConfigurations;
}

@end