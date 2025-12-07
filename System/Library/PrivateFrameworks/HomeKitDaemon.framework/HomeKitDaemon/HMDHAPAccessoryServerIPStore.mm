@interface HMDHAPAccessoryServerIPStore
+ (id)logCategory;
- (BOOL)writeDictionary:(id)dictionary error:(id *)error;
- (HMDHAPAccessoryServerIPStore)initWithPath:(id)path andFilename:(id)filename;
- (id)dictionaryFromStoreWithError:(id *)error;
@end

@implementation HMDHAPAccessoryServerIPStore

- (HMDHAPAccessoryServerIPStore)initWithPath:(id)path andFilename:(id)filename
{
  pathCopy = path;
  filenameCopy = filename;
  if (!pathCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v8 = filenameCopy;
  if (!filenameCopy)
  {
LABEL_7:
    v15 = _HMFPreconditionFailure();
    return [(HMDHAPAccessoryServerIPStore *)v15 writeDictionary:v16 error:v17, v18];
  }

  v19.receiver = self;
  v19.super_class = HMDHAPAccessoryServerIPStore;
  v9 = [(HMDHAPAccessoryServerIPStore *)&v19 init];
  if (v9)
  {
    v10 = [MEMORY[0x277CBEBC0] fileURLWithPath:pathCopy isDirectory:1];
    v11 = [v10 URLByAppendingPathComponent:v8];
    v12 = [v11 URLByAppendingPathExtension:@"plist"];
    url = v9->_url;
    v9->_url = v12;
  }

  return v9;
}

- (BOOL)writeDictionary:(id)dictionary error:(id *)error
{
  v31 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __54__HMDHAPAccessoryServerIPStore_writeDictionary_error___block_invoke;
  v23[3] = &unk_278678AF8;
  v8 = dictionary;
  v24 = v8;
  [dictionaryCopy enumerateKeysAndObjectsUsingBlock:v23];
  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v13 = [dictionaryCopy count];
    v14 = [v8 count];
    *buf = 138543874;
    v26 = v12;
    v27 = 2048;
    v28 = v13;
    v29 = 2048;
    v30 = v14;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Saving %lu entries to storage %lu", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  v15 = [MEMORY[0x277CCAC58] dataWithPropertyList:v8 format:200 options:0 error:error];
  if (v15)
  {
    v16 = [(HMDHAPAccessoryServerIPStore *)selfCopy url];
    v17 = [v15 writeToURL:v16 options:0 error:error];
  }

  else
  {
    if ([dictionaryCopy count])
    {
      v18 = objc_autoreleasePoolPush();
      v19 = selfCopy;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = HMFGetLogIdentifier();
        *buf = 138543618;
        v26 = v21;
        v27 = 2112;
        v28 = dictionaryCopy;
        _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@Error serializing data: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v18);
    }

    v17 = 0;
  }

  return v17;
}

void __54__HMDHAPAccessoryServerIPStore_writeDictionary_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 dictionaryRepresentation];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
}

- (id)dictionaryFromStoreWithError:(id *)error
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CBEAC0];
  v6 = [(HMDHAPAccessoryServerIPStore *)self url];
  v7 = [v5 dictionaryWithContentsOfURL:v6 error:error];

  if (v7)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v19 = MEMORY[0x277D85DD0];
    v20 = 3221225472;
    v21 = __61__HMDHAPAccessoryServerIPStore_dictionaryFromStoreWithError___block_invoke;
    v22 = &unk_278689488;
    selfCopy = self;
    v9 = dictionary;
    v24 = v9;
    [v7 enumerateKeysAndObjectsUsingBlock:&v19];
    v10 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v14 = [v9 count];
      v15 = [v7 count];
      *buf = 138543874;
      v26 = v13;
      v27 = 2048;
      v28 = v14;
      v29 = 2048;
      v30 = v15;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Extracted %lu entries from storage containing %lu", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
    v16 = v24;
    v17 = v9;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

void __61__HMDHAPAccessoryServerIPStore_dictionaryFromStoreWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [objc_alloc(MEMORY[0x277CFEA48]) initFromDictionary:v6];
  if (v7)
  {
    [*(a1 + 40) setObject:v7 forKeyedSubscript:v5];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = 138543874;
      v13 = v11;
      v14 = 2112;
      v15 = v5;
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@error creating cache data for device %@ from dictionary %@", &v12, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
  }
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t14_118370 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t14_118370, &__block_literal_global_128_118371);
  }

  v3 = logCategory__hmf_once_v15_118372;

  return v3;
}

void __43__HMDHAPAccessoryServerIPStore_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v15_118372;
  logCategory__hmf_once_v15_118372 = v0;
}

@end