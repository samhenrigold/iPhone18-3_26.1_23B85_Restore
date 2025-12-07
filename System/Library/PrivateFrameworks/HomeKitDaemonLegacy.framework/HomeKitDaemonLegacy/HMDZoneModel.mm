@interface HMDZoneModel
+ (id)properties;
- (id)dependentUUIDs;
@end

@implementation HMDZoneModel

- (id)dependentUUIDs
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB58];
  roomUUIDs = [(HMDZoneModel *)self roomUUIDs];
  v5 = [v3 setWithCapacity:{objc_msgSend(roomUUIDs, "count") + 1}];

  parentUUID = [(HMDBackingStoreModelObject *)self parentUUID];

  if (parentUUID)
  {
    parentUUID2 = [(HMDBackingStoreModelObject *)self parentUUID];
    [v5 addObject:parentUUID2];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  roomUUIDs2 = [(HMDZoneModel *)self roomUUIDs];
  v9 = [roomUUIDs2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(roomUUIDs2);
        }

        v13 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:*(*(&v15 + 1) + 8 * i)];
        [v5 addObject:v13];
      }

      v10 = [roomUUIDs2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  return v5;
}

+ (id)properties
{
  if (properties_onceToken_69284 != -1)
  {
    dispatch_once(&properties_onceToken_69284, &__block_literal_global_69285);
  }

  v3 = properties__properties_69286;

  return v3;
}

void __26__HMDZoneModel_properties__block_invoke()
{
  v5[2] = *MEMORY[0x277D85DE8];
  v4[0] = @"name";
  v0 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v4[1] = @"roomUUIDs";
  v5[0] = v0;
  v1 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v5[1] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:2];
  v3 = properties__properties_69286;
  properties__properties_69286 = v2;
}

@end