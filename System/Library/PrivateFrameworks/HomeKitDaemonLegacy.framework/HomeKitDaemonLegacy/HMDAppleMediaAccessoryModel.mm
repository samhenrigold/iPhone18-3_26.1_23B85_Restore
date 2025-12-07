@interface HMDAppleMediaAccessoryModel
+ (id)appleMediaAccessoryModelWithChangeType:(unint64_t)type uuid:(id)uuid parentUUID:(id)d;
+ (id)homePodAccessoryModelWithChangeType:(unint64_t)type uuid:(id)uuid parentUUID:(id)d;
+ (id)properties;
- (id)_initWithObjectChangeType:(unint64_t)type uuid:(id)uuid parentUUID:(id)d;
@end

@implementation HMDAppleMediaAccessoryModel

- (id)_initWithObjectChangeType:(unint64_t)type uuid:(id)uuid parentUUID:(id)d
{
  v6.receiver = self;
  v6.super_class = HMDAppleMediaAccessoryModel;
  return [(HMDBackingStoreModelObject *)&v6 initWithObjectChangeType:type uuid:uuid parentUUID:d];
}

+ (id)properties
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__HMDAppleMediaAccessoryModel_properties__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (properties_onceToken_93997 != -1)
  {
    dispatch_once(&properties_onceToken_93997, block);
  }

  v2 = properties__properties_93998;

  return v2;
}

void __41__HMDAppleMediaAccessoryModel_properties__block_invoke(uint64_t a1)
{
  v65[1] = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277CBEB38];
  v41.receiver = *(a1 + 32);
  v41.super_class = &OBJC_METACLASS___HMDAppleMediaAccessoryModel;
  v2 = objc_msgSendSuper2(&v41, sel_properties);
  v3 = [v1 dictionaryWithDictionary:v2];
  v4 = properties__properties_93998;
  properties__properties_93998 = v3;

  v5 = properties__properties_93998;
  v64 = @"deviceUUID";
  v6 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v65[0] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v65 forKeys:&v64 count:1];
  [v5 addEntriesFromDictionary:v7];

  v8 = properties__properties_93998;
  v62 = @"device";
  v9 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v63 = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
  [v8 addEntriesFromDictionary:v10];

  v11 = properties__properties_93998;
  v60 = @"pairingIdentity";
  v12 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v61 = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
  [v11 addEntriesFromDictionary:v13];

  v14 = properties__properties_93998;
  v58 = @"loggedInAccount";
  v15 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v59 = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
  [v14 addEntriesFromDictionary:v16];

  v17 = properties__properties_93998;
  v56 = @"softwareVersion";
  v18 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v57 = v18;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
  [v17 addEntriesFromDictionary:v19];

  v20 = properties__properties_93998;
  v54 = @"wifiNetworkInfo";
  v21 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v55 = v21;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
  [v20 addEntriesFromDictionary:v22];

  v23 = properties__properties_93998;
  v52 = @"appleMediaAccessoryChangeTag";
  v24 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v53 = v24;
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
  [v23 addEntriesFromDictionary:v25];

  v26 = properties__properties_93998;
  v50 = @"supportedStereoPairVersions";
  v27 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v51 = v27;
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
  [v26 addEntriesFromDictionary:v28];

  v29 = properties__properties_93998;
  v48 = @"preferredMediaUserUUID";
  v30 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v49 = v30;
  v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
  [v29 addEntriesFromDictionary:v31];

  v32 = properties__properties_93998;
  v46 = @"preferredUserSelectionType";
  v33 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v47 = v33;
  v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
  [v32 addEntriesFromDictionary:v34];

  v35 = properties__properties_93998;
  v44 = @"productColor";
  v36 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v45 = v36;
  v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
  [v35 addEntriesFromDictionary:v37];

  v38 = properties__properties_93998;
  v42 = @"idsIdentifier";
  v39 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v43 = v39;
  v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
  [v38 addEntriesFromDictionary:v40];
}

+ (id)homePodAccessoryModelWithChangeType:(unint64_t)type uuid:(id)uuid parentUUID:(id)d
{
  dCopy = d;
  uuidCopy = uuid;
  v9 = [objc_alloc(objc_opt_class()) _initWithObjectChangeType:type uuid:uuidCopy parentUUID:dCopy];

  return v9;
}

+ (id)appleMediaAccessoryModelWithChangeType:(unint64_t)type uuid:(id)uuid parentUUID:(id)d
{
  dCopy = d;
  uuidCopy = uuid;
  v9 = [objc_alloc(objc_opt_class()) _initWithObjectChangeType:type uuid:uuidCopy parentUUID:dCopy];

  return v9;
}

@end