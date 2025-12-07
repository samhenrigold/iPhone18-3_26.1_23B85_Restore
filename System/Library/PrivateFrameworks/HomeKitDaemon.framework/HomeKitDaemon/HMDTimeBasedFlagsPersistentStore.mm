@interface HMDTimeBasedFlagsPersistentStore
- (HMDPersistentStore)persistentStore;
- (HMDTimeBasedFlagsPersistentStore)initWithPersistentStore:(id)store;
- (id)unarchive;
- (id)unarchiveLegacyEventFlags;
- (void)archiveDictionary:(id)dictionary;
@end

@implementation HMDTimeBasedFlagsPersistentStore

- (HMDPersistentStore)persistentStore
{
  WeakRetained = objc_loadWeakRetained(&self->_persistentStore);

  return WeakRetained;
}

- (id)unarchiveLegacyEventFlags
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = eventFlagsDataStorePath;
  persistentStore = [(HMDTimeBasedFlagsPersistentStore *)self persistentStore];
  v5 = MEMORY[0x277CBEB98];
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:&v10 count:3];
  v7 = [v5 setWithArray:{v6, v10, v11}];
  v8 = [persistentStore unarchiveDictionaryWithPath:v3 allowedClasses:v7 forKey:@"HMDEventFlagsDataStoreKey"];

  return v8;
}

- (id)unarchive
{
  v21[3] = *MEMORY[0x277D85DE8];
  v3 = eventFlagsDataStorePath;
  v4 = +[HMDTimeBasedFlagsManager allowedSpecifierClasses];
  v21[0] = objc_opt_class();
  v21[1] = objc_opt_class();
  v21[2] = objc_opt_class();
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:3];
  v6 = [v4 setByAddingObjectsFromArray:v5];

  persistentStore = [(HMDTimeBasedFlagsPersistentStore *)self persistentStore];
  v8 = [persistentStore unarchiveDictionaryWithPath:v3 allowedClasses:v6 forKey:@"HMDTimeBasedFlagsDataStore"];

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  v12 = v11;
  if (v8)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v13 = HMFGetLogIdentifier();
      v17 = 138543618;
      v18 = v13;
      v19 = 2112;
      v20 = v8;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_DEBUG, "%{public}@Unarchived flags store: %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    v14 = [v8 objectForKeyedSubscript:@"HMDTimeBasedFlagsArchivedFlagsKey"];
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v15 = HMFGetLogIdentifier();
      v17 = 138543362;
      v18 = v15;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@No time-based flag archive found", &v17, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    v14 = 0;
  }

  return v14;
}

- (void)archiveDictionary:(id)dictionary
{
  v4 = MEMORY[0x277CBEB38];
  dictionaryCopy = dictionary;
  dictionary = [v4 dictionary];
  v6 = objc_msgSend_copy(dictionaryCopy);

  [dictionary setObject:v6 forKeyedSubscript:@"HMDTimeBasedFlagsArchivedFlagsKey"];
  v7 = eventFlagsDataStorePath;
  persistentStore = [(HMDTimeBasedFlagsPersistentStore *)self persistentStore];
  v9 = [persistentStore archiveDictionary:dictionary withPath:v7 forKey:@"HMDTimeBasedFlagsDataStore"];
}

- (HMDTimeBasedFlagsPersistentStore)initWithPersistentStore:(id)store
{
  storeCopy = store;
  v8.receiver = self;
  v8.super_class = HMDTimeBasedFlagsPersistentStore;
  v5 = [(HMDTimeBasedFlagsPersistentStore *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_persistentStore, storeCopy);
  }

  return v6;
}

@end