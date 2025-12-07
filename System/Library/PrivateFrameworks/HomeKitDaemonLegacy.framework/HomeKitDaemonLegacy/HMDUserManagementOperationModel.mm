@interface HMDUserManagementOperationModel
+ (id)properties;
- (id)dependentUUIDs;
@end

@implementation HMDUserManagementOperationModel

- (id)dependentUUIDs
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] setWithCapacity:2];
  parentUUID = [(HMDBackingStoreModelObject *)self parentUUID];

  if (parentUUID)
  {
    parentUUID2 = [(HMDBackingStoreModelObject *)self parentUUID];
    [v3 addObject:parentUUID2];
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  dependencies = [(HMDUserManagementOperationModel *)self dependencies];
  v7 = [dependencies countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(dependencies);
        }

        v11 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:*(*(&v13 + 1) + 8 * i)];
        [v3 addObject:v11];
      }

      v8 = [dependencies countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v3;
}

+ (id)properties
{
  if (properties_onceToken_112378 != -1)
  {
    dispatch_once(&properties_onceToken_112378, &__block_literal_global_112379);
  }

  v3 = properties__properties_112380;

  return v3;
}

void __45__HMDUserManagementOperationModel_properties__block_invoke()
{
  v9[6] = *MEMORY[0x277D85DE8];
  v8[0] = @"operationType";
  v0 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v9[0] = v0;
  v8[1] = @"userPairingIdentity";
  v1 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v9[1] = v1;
  v8[2] = @"ownerPairingIdentity";
  v2 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v9[2] = v2;
  v8[3] = @"accessoryPairingIdentity";
  v3 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v9[3] = v3;
  v8[4] = @"expirationDate";
  v4 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v9[4] = v4;
  v8[5] = @"dependencies";
  v5 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v9[5] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:6];
  v7 = properties__properties_112380;
  properties__properties_112380 = v6;
}

@end