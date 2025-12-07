@interface HMDAppleMediaAccessoryModel
+ (id)properties;
- (id)cd_generateValueForModelObjectFromManagedObject:(id)object modelObjectField:(id)field modelFieldInfo:(id)info;
@end

@implementation HMDAppleMediaAccessoryModel

- (id)cd_generateValueForModelObjectFromManagedObject:(id)object modelObjectField:(id)field modelFieldInfo:(id)info
{
  objectCopy = object;
  fieldCopy = field;
  infoCopy = info;
  if ([fieldCopy isEqual:@"deviceUUID"])
  {
    device = [objectCopy device];
    identifier = [device identifier];
    uUIDString = [identifier UUIDString];
    v12Identifier = uUIDString;
    v15 = *MEMORY[0x277CBEEE8];
    if (uUIDString)
    {
      v15 = uUIDString;
    }

    v16 = v15;
    goto LABEL_8;
  }

  if ([fieldCopy isEqual:@"device"])
  {
    device2 = [objectCopy device];
    identifier2 = [device2 identifier];

    if (identifier2)
    {
      device = +[HMDAccountRegistry sharedRegistry];
      identifier = [objectCopy device];
      v12Identifier = [identifier identifier];
      v16 = [device deviceForIdentifier:v12Identifier];
LABEL_8:
      idsIdentifier = v16;

LABEL_9:
      goto LABEL_10;
    }
  }

  else
  {
    if (![fieldCopy isEqual:@"deviceAddress"])
    {
      v23.receiver = self;
      v23.super_class = HMDAppleMediaAccessoryModel;
      idsIdentifier = [(HMDAccessoryTransaction *)&v23 cd_generateValueForModelObjectFromManagedObject:objectCopy modelObjectField:fieldCopy modelFieldInfo:infoCopy];
      goto LABEL_10;
    }

    idsIdentifier = [objectCopy idsIdentifier];
    if (!idsIdentifier)
    {
      goto LABEL_10;
    }

    idsDestination = [objectCopy idsDestination];

    if (idsDestination)
    {
      v22 = [HMDDeviceAddress alloc];
      device = [objectCopy idsIdentifier];
      identifier = [objectCopy idsDestination];
      idsIdentifier = [(HMDDeviceAddress *)v22 initWithIDSIdentifier:device idsDestination:identifier];
      goto LABEL_9;
    }
  }

  idsIdentifier = 0;
LABEL_10:

  return idsIdentifier;
}

+ (id)properties
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__HMDAppleMediaAccessoryModel_properties__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (properties_onceToken_142258 != -1)
  {
    dispatch_once(&properties_onceToken_142258, block);
  }

  v2 = properties__properties_142259;

  return v2;
}

void __41__HMDAppleMediaAccessoryModel_properties__block_invoke(uint64_t a1)
{
  v85[1] = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277CBEB38];
  v53.receiver = *(a1 + 32);
  v53.super_class = &OBJC_METACLASS___HMDAppleMediaAccessoryModel;
  v2 = objc_msgSendSuper2(&v53, sel_properties);
  v3 = [v1 dictionaryWithDictionary:v2];
  v4 = properties__properties_142259;
  properties__properties_142259 = v3;

  v5 = properties__properties_142259;
  v84 = @"deviceUUID";
  v6 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v85[0] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v85 forKeys:&v84 count:1];
  [v5 addEntriesFromDictionary:v7];

  v8 = properties__properties_142259;
  v82 = @"device";
  v9 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v83 = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v83 forKeys:&v82 count:1];
  [v8 addEntriesFromDictionary:v10];

  v11 = properties__properties_142259;
  v80 = @"pairingIdentity";
  v12 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v81 = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v81 forKeys:&v80 count:1];
  [v11 addEntriesFromDictionary:v13];

  v14 = properties__properties_142259;
  v78 = @"loggedInAccount";
  v15 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v79 = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v79 forKeys:&v78 count:1];
  [v14 addEntriesFromDictionary:v16];

  v17 = properties__properties_142259;
  v76 = @"softwareVersion";
  v18 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v77 = v18;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v77 forKeys:&v76 count:1];
  [v17 addEntriesFromDictionary:v19];

  v20 = properties__properties_142259;
  v74 = @"variant";
  v21 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v75 = v21;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v75 forKeys:&v74 count:1];
  [v20 addEntriesFromDictionary:v22];

  v23 = properties__properties_142259;
  v72 = @"accessoryCapabilities";
  v24 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v73 = v24;
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v73 forKeys:&v72 count:1];
  [v23 addEntriesFromDictionary:v25];

  v26 = properties__properties_142259;
  v70 = @"deviceAddress";
  v27 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v71 = v27;
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v71 forKeys:&v70 count:1];
  [v26 addEntriesFromDictionary:v28];

  v29 = properties__properties_142259;
  v68 = @"deviceIRKData";
  v30 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v69 = v30;
  v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v69 forKeys:&v68 count:1];
  [v29 addEntriesFromDictionary:v31];

  v32 = properties__properties_142259;
  v66 = @"wifiNetworkInfo";
  v33 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v67 = v33;
  v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v67 forKeys:&v66 count:1];
  [v32 addEntriesFromDictionary:v34];

  v35 = properties__properties_142259;
  v64 = @"appleMediaAccessoryChangeTag";
  v36 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v65 = v36;
  v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v65 forKeys:&v64 count:1];
  [v35 addEntriesFromDictionary:v37];

  v38 = properties__properties_142259;
  v62 = @"supportedStereoPairVersions";
  v39 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v63 = v39;
  v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
  [v38 addEntriesFromDictionary:v40];

  v41 = properties__properties_142259;
  v60 = @"preferredMediaUserUUID";
  v42 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v61 = v42;
  v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
  [v41 addEntriesFromDictionary:v43];

  v44 = properties__properties_142259;
  v58 = @"preferredUserSelectionType";
  v45 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v59 = v45;
  v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
  [v44 addEntriesFromDictionary:v46];

  v47 = properties__properties_142259;
  v56 = @"productColor";
  v48 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v57 = v48;
  v49 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
  [v47 addEntriesFromDictionary:v49];

  v50 = properties__properties_142259;
  v54 = @"idsIdentifier";
  v51 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v55 = v51;
  v52 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
  [v50 addEntriesFromDictionary:v52];
}

@end