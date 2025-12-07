@interface CCSetConfiguration
+ (id)setConfigurationForItemType:(unsigned __int16)type;
+ (id)syncableSetConfigurations;
- (CCSetConfiguration)initWithSetIdentifier:(id)identifier setUUID:(id)d resourceDomain:(unint64_t)domain configuredDescriptors:(id)descriptors syncPolicy:(id)policy;
- (unsigned)itemType;
@end

@implementation CCSetConfiguration

- (CCSetConfiguration)initWithSetIdentifier:(id)identifier setUUID:(id)d resourceDomain:(unint64_t)domain configuredDescriptors:(id)descriptors syncPolicy:(id)policy
{
  identifierCopy = identifier;
  dCopy = d;
  descriptorsCopy = descriptors;
  policyCopy = policy;
  v20.receiver = self;
  v20.super_class = CCSetConfiguration;
  v17 = [(CCSetConfiguration *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_setIdentifier, identifier);
    objc_storeStrong(&v18->_setUUID, d);
    v18->_resourceDomain = domain;
    objc_storeStrong(&v18->_configuredDescriptors, descriptors);
    objc_storeStrong(&v18->_syncPolicy, policy);
  }

  return v18;
}

- (unsigned)itemType
{
  selfCopy = self;
  v3 = CCTypeIdentifierRegistryBridge(self);
  LOWORD(selfCopy) = [v3 itemTypeForSetIdentifier:selfCopy->_setIdentifier];

  return selfCopy;
}

+ (id)syncableSetConfigurations
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = +[CCSetConfigurationRegistry allSetConfigurations];
  v3 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        syncPolicy = [v9 syncPolicy];
        if (syncPolicy)
        {
          v11 = syncPolicy;
          syncPolicy2 = [v9 syncPolicy];
          platformPolicies = [syncPolicy2 platformPolicies];

          if (platformPolicies)
          {
            [v3 addObject:v9];
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  return v3;
}

+ (id)setConfigurationForItemType:(unsigned __int16)type
{
  if (CCTypeIdentifierUnknown == type)
  {
    v3 = 0;
LABEL_4:
    v6 = [CCSetConfigurationRegistry configurationForSetIdentifier:v3];

    goto LABEL_5;
  }

  typeCopy = type;
  v5 = CCTypeIdentifierRegistryBridge(self);
  v3 = [v5 setIdentifierForItemType:typeCopy];

  if (v3)
  {
    goto LABEL_4;
  }

  v6 = 0;
LABEL_5:

  return v6;
}

@end