@interface HMDOutgoingHomeInvitationModel
+ (id)properties;
- (id)dependentUUIDs;
@end

@implementation HMDOutgoingHomeInvitationModel

- (id)dependentUUIDs
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] setWithCapacity:2];
  parentUUID = [(HMDBackingStoreModelObject *)self parentUUID];

  if (parentUUID)
  {
    parentUUID2 = [(HMDBackingStoreModelObject *)self parentUUID];
    [v3 addObject:parentUUID2];
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = [(HMDOutgoingHomeInvitationModel *)self operations];
  v6 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v28;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v27 + 1) + 8 * i);
        v11 = [v10 objectForKey:@"HM.user"];

        if (v11)
        {
          v12 = [v10 objectForKeyedSubscript:@"HM.user"];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          v14 = [v10 objectForKeyedSubscript:@"HM.user"];
          if ((isKindOfClass & 1) == 0)
          {
            objc_opt_class();
            v15 = objc_opt_isKindOfClass();

            if ((v15 & 1) == 0)
            {
              goto LABEL_14;
            }

            v16 = objc_alloc(MEMORY[0x277CCAD78]);
            v17 = [v10 objectForKeyedSubscript:@"HM.user"];
            v14 = [v16 initWithUUIDString:v17];
          }

          if (v14)
          {
            [v3 addObject:v14];
          }
        }

LABEL_14:
        v18 = [v10 objectForKey:@"accessory"];

        if (!v18)
        {
          continue;
        }

        v19 = [v10 objectForKeyedSubscript:@"accessory"];
        objc_opt_class();
        v20 = objc_opt_isKindOfClass();

        v21 = [v10 objectForKeyedSubscript:@"accessory"];
        if ((v20 & 1) == 0)
        {
          objc_opt_class();
          v22 = objc_opt_isKindOfClass();

          if ((v22 & 1) == 0)
          {
            continue;
          }

          v23 = objc_alloc(MEMORY[0x277CCAD78]);
          v24 = [v10 objectForKeyedSubscript:@"accessory"];
          v21 = [v23 initWithUUIDString:v24];
        }

        if (v21)
        {
          [v3 addObject:v21];
        }
      }

      v7 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v7);
  }

  return v3;
}

+ (id)properties
{
  if (properties_onceToken_8657 != -1)
  {
    dispatch_once(&properties_onceToken_8657, &__block_literal_global_8658);
  }

  v3 = properties__properties_8659;

  return v3;
}

void __44__HMDOutgoingHomeInvitationModel_properties__block_invoke()
{
  v11[8] = *MEMORY[0x277D85DE8];
  v10[0] = @"user";
  v0 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v11[0] = v0;
  v10[1] = @"invitationState";
  v1 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v11[1] = v1;
  v10[2] = @"expiryDate";
  v2 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v11[2] = v2;
  v10[3] = @"messageIdentifier";
  v3 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v11[3] = v3;
  v10[4] = @"responseReceived";
  v4 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v11[4] = v4;
  v10[5] = @"inviteeDestinationAddress";
  v5 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class() logging:0];
  v11[5] = v5;
  v10[6] = @"operations";
  v6 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v11[6] = v6;
  v10[7] = @"operationIdentifiers";
  v7 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v11[7] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:8];
  v9 = properties__properties_8659;
  properties__properties_8659 = v8;
}

@end