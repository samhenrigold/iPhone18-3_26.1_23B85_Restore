@interface HMDMatterCommandActionModel
+ (id)properties;
- (id)cd_generateValueForModelObjectFromManagedObject:(id)object modelObjectField:(id)field modelFieldInfo:(id)info;
- (id)cd_generateValueForProperty:(id)property managedObjectField:(id)field context:(id)context;
- (id)decodeSerializedMatterCommands:(id)commands home:(id)home;
- (id)dependentUUIDs;
- (void)loadModelWithActionInformation:(id)information;
@end

@implementation HMDMatterCommandActionModel

- (id)dependentUUIDs
{
  v12.receiver = self;
  v12.super_class = HMDMatterCommandActionModel;
  dependentUUIDs = [(HMDBackingStoreModelObject *)&v12 dependentUUIDs];
  v4 = [dependentUUIDs mutableCopy];

  parentUUID = [(HMDBackingStoreModelObject *)self parentUUID];

  if (parentUUID)
  {
    parentUUID2 = [(HMDBackingStoreModelObject *)self parentUUID];
    [v4 addObject:parentUUID2];
  }

  matterPathUUIDs = [(HMDMatterCommandActionModel *)self matterPathUUIDs];

  if (matterPathUUIDs)
  {
    matterPathUUIDs2 = [(HMDMatterCommandActionModel *)self matterPathUUIDs];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __45__HMDMatterCommandActionModel_dependentUUIDs__block_invoke;
    v10[3] = &unk_278685550;
    v11 = v4;
    [matterPathUUIDs2 hmf_enumerateWithAutoreleasePoolUsingBlock:v10];
  }

  return v4;
}

- (id)decodeSerializedMatterCommands:(id)commands home:(id)home
{
  v38 = *MEMORY[0x277D85DE8];
  commandsCopy = commands;
  homeCopy = home;
  array = [MEMORY[0x277CBEB18] array];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = commandsCopy;
  v8 = [obj countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v30;
    selfCopy = self;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v30 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v29 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = v12;
        }

        else
        {
          v13 = 0;
        }

        v14 = v13;

        if (v14)
        {
          v15 = [[HMDMatterCommand alloc] initWithDictionary:v14 home:homeCopy];
          if (v15)
          {
            [array addObject:v15];
          }

          else
          {
            v20 = objc_autoreleasePoolPush();
            selfCopy2 = self;
            v22 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              v23 = HMFGetLogIdentifier();
              *buf = 138543618;
              v34 = v23;
              v35 = 2112;
              v36 = v14;
              _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Invalid serialized command %@", buf, 0x16u);

              self = selfCopy;
            }

            objc_autoreleasePoolPop(v20);
          }
        }

        else
        {
          v16 = objc_autoreleasePoolPush();
          selfCopy3 = self;
          v18 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            v19 = HMFGetLogIdentifier();
            *buf = 138543618;
            v34 = v19;
            v35 = 2112;
            v36 = v12;
            _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Invalid command dictionary %@", buf, 0x16u);

            self = selfCopy;
          }

          objc_autoreleasePoolPop(v16);
        }
      }

      v9 = [obj countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v9);
  }

  v24 = objc_msgSend_copy(array);

  return v24;
}

- (void)loadModelWithActionInformation:(id)information
{
  v3.receiver = self;
  v3.super_class = HMDMatterCommandActionModel;
  [(HMDActionModel *)&v3 loadModelWithActionInformation:information];
}

+ (id)properties
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__HMDMatterCommandActionModel_properties__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (properties_onceToken_123727 != -1)
  {
    dispatch_once(&properties_onceToken_123727, block);
  }

  v2 = properties__properties_123728;

  return v2;
}

void __41__HMDMatterCommandActionModel_properties__block_invoke(uint64_t a1)
{
  v11[3] = *MEMORY[0x277D85DE8];
  v9.receiver = *(a1 + 32);
  v9.super_class = &OBJC_METACLASS___HMDMatterCommandActionModel;
  v1 = objc_msgSendSuper2(&v9, sel_properties);
  v2 = [v1 mutableCopy];
  v3 = properties__properties_123728;
  properties__properties_123728 = v2;

  v4 = properties__properties_123728;
  v10[0] = @"matterPathUUIDs";
  v5 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v11[0] = v5;
  v10[1] = @"commands";
  v6 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v11[1] = v6;
  v10[2] = @"enforceExecutionOrder";
  v7 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v11[2] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:3];
  [v4 addEntriesFromDictionary:v8];
}

- (id)cd_generateValueForProperty:(id)property managedObjectField:(id)field context:(id)context
{
  v33 = *MEMORY[0x277D85DE8];
  propertyCopy = property;
  fieldCopy = field;
  contextCopy = context;
  if ([fieldCopy isEqualToString:@"matterPaths_"])
  {
    matterPathUUIDs = [(HMDMatterCommandActionModel *)self matterPathUUIDs];

    if (matterPathUUIDs)
    {
      v25 = 0;
      v26 = &v25;
      v27 = 0x3032000000;
      v28 = __Block_byref_object_copy__245221;
      v29 = __Block_byref_object_dispose__245222;
      v12 = MEMORY[0x277CBEB58];
      matterPathUUIDs2 = [(HMDMatterCommandActionModel *)self matterPathUUIDs];
      v30 = [v12 setWithCapacity:{objc_msgSend(matterPathUUIDs2, "count")}];

      matterPathUUIDs3 = [(HMDMatterCommandActionModel *)self matterPathUUIDs];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __96__HMDMatterCommandActionModel_CoreData__cd_generateValueForProperty_managedObjectField_context___block_invoke;
      v24[3] = &unk_278684590;
      v24[4] = self;
      v24[5] = &v25;
      [matterPathUUIDs3 hmf_enumerateWithAutoreleasePoolUsingBlock:v24];

      v15 = [v26[5] count];
      matterPathUUIDs4 = [(HMDMatterCommandActionModel *)self matterPathUUIDs];
      LOBYTE(v15) = v15 == [matterPathUUIDs4 count];

      if (v15)
      {
        v17 = objc_msgSend_copy(v26[5]);
      }

      else
      {
        v18 = objc_autoreleasePoolPush();
        selfCopy = self;
        v20 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v21 = HMFGetLogIdentifier();
          *buf = 138543362;
          v32 = v21;
          _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@Unable to find all mkfMatterPaths", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v18);
        v17 = 0;
      }

      _Block_object_dispose(&v25, 8);
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v23.receiver = self;
    v23.super_class = HMDMatterCommandActionModel;
    v17 = [(HMDBackingStoreModelObject *)&v23 cd_generateValueForProperty:propertyCopy managedObjectField:fieldCopy context:contextCopy];
  }

  return v17;
}

void __96__HMDMatterCommandActionModel_CoreData__cd_generateValueForProperty_managedObjectField_context___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v17 = 0;
  v7 = [HMDBackingStore cdlsFetchManagedObjectWithUUID:v6 ofManagedObjectType:objc_opt_class() error:&v17];
  v8 = v17;
  v9 = v7;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  if (v11)
  {
    [*(*(*(a1 + 40) + 8) + 40) addObject:v11];
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = *(a1 + 32);
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v16 = [*(a1 + 32) matterPathUUIDs];
      *buf = 138543874;
      v19 = v15;
      v20 = 2112;
      v21 = v16;
      v22 = 2112;
      v23 = v8;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Unable to find mkfMatterPath with UUID %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v12);
    *a4 = 1;
  }
}

- (id)cd_generateValueForModelObjectFromManagedObject:(id)object modelObjectField:(id)field modelFieldInfo:(id)info
{
  objectCopy = object;
  fieldCopy = field;
  infoCopy = info;
  if ([fieldCopy isEqualToString:@"matterPathUUIDs"])
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__245221;
    v22 = __Block_byref_object_dispose__245222;
    v11 = MEMORY[0x277CBEB18];
    matterPaths = [objectCopy matterPaths];
    v23 = [v11 arrayWithCapacity:{objc_msgSend(matterPaths, "count")}];

    matterPaths2 = [objectCopy matterPaths];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __121__HMDMatterCommandActionModel_CoreData__cd_generateValueForModelObjectFromManagedObject_modelObjectField_modelFieldInfo___block_invoke;
    v17[3] = &unk_278684568;
    v17[4] = &v18;
    [matterPaths2 hmf_enumerateWithAutoreleasePoolUsingBlock:v17];

    v14 = objc_msgSend_copy(v19[5]);
    _Block_object_dispose(&v18, 8);
  }

  else
  {
    v16.receiver = self;
    v16.super_class = HMDMatterCommandActionModel;
    v14 = [(HMDBackingStoreModelObject *)&v16 cd_generateValueForModelObjectFromManagedObject:objectCopy modelObjectField:fieldCopy modelFieldInfo:infoCopy];
  }

  return v14;
}

void __121__HMDMatterCommandActionModel_CoreData__cd_generateValueForModelObjectFromManagedObject_modelObjectField_modelFieldInfo___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v4 = [a2 modelID];
  v3 = [v4 UUIDString];
  [v2 addObject:v3];
}

@end