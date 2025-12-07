@interface HMDTimeBasedFlagsManager
+ (NSSet)allowedSpecifierClasses;
- (HMDTimeBasedFlagsManager)initWithDateProvider:(id)provider;
- (HMDTimeBasedFlagsManager)initWithStorage:(id)storage dateProvider:(id)provider;
- (id)_fetchAllFlags;
- (id)flagForName:(id)name homeUUID:(id)d periodicity:(int64_t)periodicity;
- (id)flagForName:(id)name periodicity:(int64_t)periodicity;
- (id)flagForSpecifier:(id)specifier periodicity:(int64_t)periodicity;
- (id)newFlagForPeriodicity:(int64_t)periodicity;
- (id)unarchiveFlags;
- (id)unarchiveLegacyFlags;
- (void)_save;
- (void)forceSave;
@end

@implementation HMDTimeBasedFlagsManager

- (id)unarchiveLegacyFlags
{
  v50 = *MEMORY[0x277D85DE8];
  flagsStorage = [(HMDTimeBasedFlagsManager *)self flagsStorage];
  unarchiveLegacyEventFlags = [flagsStorage unarchiveLegacyEventFlags];

  if (unarchiveLegacyEventFlags)
  {
    v5 = [unarchiveLegacyEventFlags objectForKeyedSubscript:@"HMDEventFlagsArchivedEventFlagsKey"];
    v6 = [unarchiveLegacyEventFlags objectForKeyedSubscript:@"HMDEventFlagsArchivedEventFlagsSaveTimeKey"];
    v7 = v6;
    if (v5 && v6)
    {
      v32 = unarchiveLegacyEventFlags;
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      obj = [v5 allKeys];
      v35 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
      if (v35)
      {
        v34 = *v43;
        do
        {
          v8 = 0;
          do
          {
            if (*v43 != v34)
            {
              objc_enumerationMutation(obj);
            }

            v36 = v8;
            v9 = *(*(&v42 + 1) + 8 * v8);
            v38 = 0u;
            v39 = 0u;
            v40 = 0u;
            v41 = 0u;
            v10 = [v5 objectForKeyedSubscript:v9];
            allKeys = [v10 allKeys];

            v12 = [allKeys countByEnumeratingWithState:&v38 objects:v46 count:16];
            if (v12)
            {
              v13 = v12;
              v14 = *v39;
              do
              {
                for (i = 0; i != v13; ++i)
                {
                  if (*v39 != v14)
                  {
                    objc_enumerationMutation(allKeys);
                  }

                  v16 = *(*(&v38 + 1) + 8 * i);
                  v17 = [v5 objectForKeyedSubscript:v9];
                  v18 = [v17 objectForKeyedSubscript:v16];

                  v19 = [HMDTimeBasedFlagDaily convertLegacyFlagBits:v18 lastSaveTIme:v7];
                  if (v19)
                  {
                    v20 = [HMDTimeBasedFlagNameSpecifier specifierWithFlagName:v16];
                    [dictionary setObject:v19 forKey:v20];
                  }
                }

                v13 = [allKeys countByEnumeratingWithState:&v38 objects:v46 count:16];
              }

              while (v13);
            }

            v8 = v36 + 1;
          }

          while (v36 + 1 != v35);
          v35 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
        }

        while (v35);
      }

      if ([dictionary count])
      {
        v21 = dictionary;
      }

      else
      {
        v21 = 0;
      }

      v22 = v21;

      unarchiveLegacyEventFlags = v32;
    }

    else
    {
      v27 = objc_autoreleasePoolPush();
      selfCopy = self;
      v29 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = HMFGetLogIdentifier();
        *buf = 138543362;
        v49 = v30;
        _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_ERROR, "%{public}@Legacy flags missing data", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v27);
      v22 = 0;
    }
  }

  else
  {
    v23 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier();
      *buf = 138543362;
      v49 = v26;
      _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_ERROR, "%{public}@No legacy event flags found", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v23);
    v22 = 0;
  }

  return v22;
}

- (id)unarchiveFlags
{
  v22 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  flagsStorage = [(HMDTimeBasedFlagsManager *)self flagsStorage];
  unarchive = [flagsStorage unarchive];

  if (unarchive)
  {
    goto LABEL_6;
  }

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543362;
    v19 = v9;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Loading legacy flags", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  unarchiveLegacyFlags = [(HMDTimeBasedFlagsManager *)selfCopy unarchiveLegacyFlags];
  if (unarchiveLegacyFlags)
  {
    unarchive = unarchiveLegacyFlags;
LABEL_6:
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __42__HMDTimeBasedFlagsManager_unarchiveFlags__block_invoke;
    v16[3] = &unk_27866F6C8;
    v16[4] = self;
    v17 = dictionary;
    [unarchive enumerateKeysAndObjectsUsingBlock:v16];
  }

  v11 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543618;
    v19 = v14;
    v20 = 2112;
    v21 = dictionary;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_DEBUG, "%{public}@Final restored flags: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v11);

  return dictionary;
}

void __42__HMDTimeBasedFlagsManager_unarchiveFlags__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"periodicity"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    if ([v8 integerValue] == 1)
    {
      v9 = [HMDTimeBasedFlagDaily alloc];
      v10 = *(a1 + 32);
      v11 = [v10 dateProvider];
      v12 = [(HMDTimeBasedFlagDaily *)v9 initWithSerializedFlag:v5 context:v10 dateProvider:v11];
    }

    else
    {
      v12 = 0;
    }

    [*(a1 + 40) setObject:v12 forKeyedSubscript:v13];
  }
}

- (void)_save
{
  os_unfair_lock_assert_owner(&self->_lock);
  _fetchAllFlags = [(HMDTimeBasedFlagsManager *)self _fetchAllFlags];
  workQueue = [(HMDTimeBasedFlagsManager *)self workQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __33__HMDTimeBasedFlagsManager__save__block_invoke;
  v6[3] = &unk_27868A750;
  v6[4] = self;
  v7 = _fetchAllFlags;
  v5 = _fetchAllFlags;
  dispatch_async(workQueue, v6);
}

void __33__HMDTimeBasedFlagsManager__save__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) flagsStorage];
  [v2 archiveDictionary:*(a1 + 40)];
}

- (id)_fetchAllFlags
{
  os_unfair_lock_assert_owner(&self->_lock);
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  flags = self->_flags;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __42__HMDTimeBasedFlagsManager__fetchAllFlags__block_invoke;
  v8[3] = &unk_27866F6A0;
  v9 = dictionary;
  v5 = dictionary;
  [(NSMutableDictionary *)flags enumerateKeysAndObjectsUsingBlock:v8];
  v6 = objc_msgSend_copy(v5);

  return v6;
}

void __42__HMDTimeBasedFlagsManager__fetchAllFlags__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = [a3 serializeToDictionary];
  if (v5)
  {
    [*(a1 + 32) setObject:v5 forKeyedSubscript:v6];
  }
}

- (void)forceSave
{
  os_unfair_lock_lock_with_options();
  [(HMDTimeBasedFlagsManager *)self _save];

  os_unfair_lock_unlock(&self->_lock);
}

- (id)newFlagForPeriodicity:(int64_t)periodicity
{
  if (periodicity != 1)
  {
    return 0;
  }

  v4 = [HMDTimeBasedFlagDaily alloc];
  dateProvider = [(HMDTimeBasedFlagsManager *)self dateProvider];
  v6 = [(HMDTimeBasedFlagDaily *)v4 initWithContext:self dateProvider:dateProvider];

  return v6;
}

- (id)flagForSpecifier:(id)specifier periodicity:(int64_t)periodicity
{
  specifierCopy = specifier;
  os_unfair_lock_lock_with_options();
  flags = [(HMDTimeBasedFlagsManager *)self flags];
  v8 = [flags objectForKeyedSubscript:specifierCopy];

  if (!v8)
  {
    v9 = +[HMDTimeBasedFlagsManager allowedSpecifierClasses];
    v10 = [v9 containsObject:objc_opt_class()];

    if ((v10 & 1) == 0)
    {
      v13 = MEMORY[0x277CBEAD8];
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Specifier's class must be registered in the allowedSpecifierClasses in HMDTimeBasedFlagsManager: %@", objc_opt_class()];
      v15 = [v13 exceptionWithName:*MEMORY[0x277CBE660] reason:v14 userInfo:0];
      v16 = v15;

      objc_exception_throw(v15);
    }

    v8 = [(HMDTimeBasedFlagsManager *)self newFlagForPeriodicity:periodicity];
    flags2 = [(HMDTimeBasedFlagsManager *)self flags];
    [flags2 setObject:v8 forKeyedSubscript:specifierCopy];
  }

  os_unfair_lock_unlock(&self->_lock);

  return v8;
}

- (id)flagForName:(id)name homeUUID:(id)d periodicity:(int64_t)periodicity
{
  v7 = [HMDTimeBasedFlagNameAndHomeSpecifier specifierWithFlagName:name homeUUID:d];
  v8 = [(HMDTimeBasedFlagsManager *)self flagForSpecifier:v7 periodicity:periodicity];

  return v8;
}

- (id)flagForName:(id)name periodicity:(int64_t)periodicity
{
  v6 = [HMDTimeBasedFlagNameSpecifier specifierWithFlagName:name];
  v7 = [(HMDTimeBasedFlagsManager *)self flagForSpecifier:v6 periodicity:periodicity];

  return v7;
}

- (HMDTimeBasedFlagsManager)initWithStorage:(id)storage dateProvider:(id)provider
{
  storageCopy = storage;
  providerCopy = provider;
  v20.receiver = self;
  v20.super_class = HMDTimeBasedFlagsManager;
  v9 = [(HMDTimeBasedFlagsManager *)&v20 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_flagsStorage, storage);
    objc_storeStrong(&v10->_dateProvider, provider);
    v11 = HMDispatchQueueNameString();
    uTF8String = [v11 UTF8String];
    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_attr_make_with_qos_class(v13, QOS_CLASS_BACKGROUND, 0);
    v15 = dispatch_queue_create(uTF8String, v14);
    workQueue = v10->_workQueue;
    v10->_workQueue = v15;

    unarchiveFlags = [(HMDTimeBasedFlagsManager *)v10 unarchiveFlags];
    flags = v10->_flags;
    v10->_flags = unarchiveFlags;
  }

  return v10;
}

- (HMDTimeBasedFlagsManager)initWithDateProvider:(id)provider
{
  providerCopy = provider;
  v5 = objc_alloc_init(HMDPersistentStore);
  v6 = [[HMDTimeBasedFlagsPersistentStore alloc] initWithPersistentStore:v5];
  v7 = [(HMDTimeBasedFlagsManager *)self initWithStorage:v6 dateProvider:providerCopy];

  if (v7)
  {
    objc_storeStrong(&v7->_persistentStore, v5);
  }

  return v7;
}

+ (NSSet)allowedSpecifierClasses
{
  if (allowedSpecifierClasses__hmf_once_t4 != -1)
  {
    dispatch_once(&allowedSpecifierClasses__hmf_once_t4, &__block_literal_global_13745);
  }

  v3 = allowedSpecifierClasses__hmf_once_v5;

  return v3;
}

void __51__HMDTimeBasedFlagsManager_allowedSpecifierClasses__block_invoke()
{
  v4[2] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:2];
  v2 = [v0 setWithArray:v1];
  v3 = allowedSpecifierClasses__hmf_once_v5;
  allowedSpecifierClasses__hmf_once_v5 = v2;
}

@end