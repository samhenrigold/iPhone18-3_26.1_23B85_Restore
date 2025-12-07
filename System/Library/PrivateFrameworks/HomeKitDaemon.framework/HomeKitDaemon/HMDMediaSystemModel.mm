@interface HMDMediaSystemModel
+ (id)properties;
+ (id)schemaHashRoot;
- (id)dependentUUIDs;
@end

@implementation HMDMediaSystemModel

- (id)dependentUUIDs
{
  v34 = *MEMORY[0x277D85DE8];
  [MEMORY[0x277CBEB58] set];
  v24 = v23 = self;
  parentUUID = [(HMDBackingStoreModelObject *)self parentUUID];

  if (parentUUID)
  {
    parentUUID2 = [(HMDBackingStoreModelObject *)self parentUUID];
    [v24 addObject:parentUUID2];
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  mediaSystemComponents = [(HMDMediaSystemModel *)self mediaSystemComponents];
  v6 = [mediaSystemComponents countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v26;
    v10 = *MEMORY[0x277CCF0B0];
    *&v7 = 138543618;
    v21 = v7;
    v22 = *v26;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(mediaSystemComponents);
        }

        v12 = *(*(&v25 + 1) + 8 * i);
        v13 = [v12 hmf_UUIDForKey:{v10, v21}];
        if (v13)
        {
          [v24 addObject:v13];
        }

        else
        {
          v14 = v10;
          v15 = objc_autoreleasePoolPush();
          v16 = v23;
          v17 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            HMFGetLogIdentifier();
            v19 = v18 = mediaSystemComponents;
            *buf = v21;
            v30 = v19;
            v31 = 2112;
            v32 = v12;
            _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Accessory UUID is nil for media component: %@", buf, 0x16u);

            mediaSystemComponents = v18;
            v9 = v22;
          }

          objc_autoreleasePoolPop(v15);
          v10 = v14;
        }
      }

      v8 = [mediaSystemComponents countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v8);
  }

  return v24;
}

+ (id)properties
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__HMDMediaSystemModel_properties__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (properties_onceToken_147271 != -1)
  {
    dispatch_once(&properties_onceToken_147271, block);
  }

  v2 = properties__properties_147272;

  return v2;
}

void __33__HMDMediaSystemModel_properties__block_invoke(uint64_t a1)
{
  v12[3] = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277CBEB38];
  v10.receiver = *(a1 + 32);
  v10.super_class = &OBJC_METACLASS___HMDMediaSystemModel;
  v2 = objc_msgSendSuper2(&v10, sel_properties);
  v3 = [v1 dictionaryWithDictionary:v2];
  v4 = properties__properties_147272;
  properties__properties_147272 = v3;

  v5 = properties__properties_147272;
  v11[0] = @"name";
  v6 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v12[0] = v6;
  v11[1] = @"configuredName";
  v7 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v12[1] = v7;
  v11[2] = @"mediaSystemComponents";
  v8 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v12[2] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:3];
  [v5 addEntriesFromDictionary:v9];
}

+ (id)schemaHashRoot
{
  v2 = objc_msgSend_copy(@"12903D5D-7E96-48C1-AD0D-BC4431A81FD1", a2);

  return v2;
}

@end