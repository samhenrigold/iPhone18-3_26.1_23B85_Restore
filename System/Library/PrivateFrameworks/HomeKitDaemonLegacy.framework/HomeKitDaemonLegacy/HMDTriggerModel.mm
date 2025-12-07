@interface HMDTriggerModel
+ (id)properties;
- (id)createPayload;
- (id)dependentUUIDs;
@end

@implementation HMDTriggerModel

- (id)dependentUUIDs
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB58];
  currentActionSets = [(HMDTriggerModel *)self currentActionSets];
  v5 = [v3 setWithCapacity:{objc_msgSend(currentActionSets, "count") + 1}];

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
  currentActionSets2 = [(HMDTriggerModel *)self currentActionSets];
  v9 = [currentActionSets2 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(currentActionSets2);
        }

        v13 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:*(*(&v15 + 1) + 8 * i)];
        [v5 addObject:v13];
      }

      v10 = [currentActionSets2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  return v5;
}

- (id)createPayload
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  uuid = [(HMDBackingStoreModelObject *)self uuid];
  uUIDString = [uuid UUIDString];
  [dictionary setObject:uUIDString forKeyedSubscript:*MEMORY[0x277CD2768]];

  name = [(HMDTriggerModel *)self name];
  [dictionary setObject:name forKeyedSubscript:*MEMORY[0x277CD2758]];

  configuredName = [(HMDTriggerModel *)self configuredName];
  [dictionary setObject:configuredName forKeyedSubscript:*MEMORY[0x277CD1250]];

  active = [(HMDTriggerModel *)self active];
  [dictionary setObject:active forKeyedSubscript:*MEMORY[0x277CD2730]];

  autoDelete = [(HMDTriggerModel *)self autoDelete];
  [dictionary setObject:autoDelete forKeyedSubscript:*MEMORY[0x277CD1260]];

  currentActionSets = [(HMDTriggerModel *)self currentActionSets];
  [dictionary setObject:currentActionSets forKeyedSubscript:*MEMORY[0x277CD2728]];

  v11 = objc_msgSend_copy(dictionary);

  return v11;
}

+ (id)properties
{
  if (properties_onceToken_551 != -1)
  {
    dispatch_once(&properties_onceToken_551, &__block_literal_global_379);
  }

  v3 = properties__properties_552;

  return v3;
}

void __29__HMDTriggerModel_properties__block_invoke()
{
  v11[8] = *MEMORY[0x277D85DE8];
  v10[0] = @"name";
  v0 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v11[0] = v0;
  v10[1] = @"configuredName";
  v1 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v11[1] = v1;
  v10[2] = @"currentActionSets";
  v2 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v11[2] = v2;
  v10[3] = @"active";
  v3 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v11[3] = v3;
  v10[4] = @"mostRecentFireDate";
  v4 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v11[4] = v4;
  v10[5] = @"owner";
  v5 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v11[5] = v5;
  v10[6] = @"owningDevice";
  v6 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v11[6] = v6;
  v10[7] = @"autoDelete";
  v7 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v11[7] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:8];
  v9 = properties__properties_552;
  properties__properties_552 = v8;
}

@end