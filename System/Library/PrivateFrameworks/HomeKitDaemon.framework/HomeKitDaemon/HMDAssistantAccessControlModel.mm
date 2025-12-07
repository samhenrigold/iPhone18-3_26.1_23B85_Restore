@interface HMDAssistantAccessControlModel
+ (id)properties;
- (id)dependentUUIDs;
@end

@implementation HMDAssistantAccessControlModel

- (id)dependentUUIDs
{
  v30 = *MEMORY[0x277D85DE8];
  v27.receiver = self;
  v27.super_class = HMDAssistantAccessControlModel;
  dependentUUIDs = [(HMDBackingStoreModelObject *)&v27 dependentUUIDs];
  v4 = [dependentUUIDs mutableCopy];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  accessoryModelIDs = [(HMDAssistantAccessControlModel *)self accessoryModelIDs];
  v6 = [accessoryModelIDs countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(accessoryModelIDs);
        }

        v10 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:*(*(&v23 + 1) + 8 * i)];
        if (v10)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [accessoryModelIDs countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v7);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  siriEndpointAccessoryModelUUIDs = [(HMDAssistantAccessControlModel *)self siriEndpointAccessoryModelUUIDs];
  v12 = [siriEndpointAccessoryModelUUIDs countByEnumeratingWithState:&v19 objects:v28 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(siriEndpointAccessoryModelUUIDs);
        }

        v16 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:*(*(&v19 + 1) + 8 * j)];
        if (v16)
        {
          [v4 addObject:v16];
        }
      }

      v13 = [siriEndpointAccessoryModelUUIDs countByEnumeratingWithState:&v19 objects:v28 count:16];
    }

    while (v13);
  }

  v17 = objc_msgSend_copy(v4);

  return v17;
}

+ (id)properties
{
  if (properties_onceToken_262077 != -1)
  {
    dispatch_once(&properties_onceToken_262077, &__block_literal_global_236);
  }

  v3 = properties__properties_262078;

  return v3;
}

void __44__HMDAssistantAccessControlModel_properties__block_invoke()
{
  v9[6] = *MEMORY[0x277D85DE8];
  v8[0] = @"enabled";
  v0 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v9[0] = v0;
  v8[1] = @"options";
  v1 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v9[1] = v1;
  v8[2] = @"activityNotificationsEnabledForPersonalRequests";
  v2 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v9[2] = v2;
  v8[3] = @"accessoryModelIDs";
  v3 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v9[3] = v3;
  v8[4] = @"siriEndpointAccessoryModelUUIDs";
  v4 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v9[4] = v4;
  v8[5] = @"changeTag";
  v5 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v9[5] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:6];
  v7 = properties__properties_262078;
  properties__properties_262078 = v6;
}

@end