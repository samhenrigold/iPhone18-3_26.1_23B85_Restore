@interface MTSKeychainStore
+ (id)logCategory;
- (BOOL)removeAllDataWithError:(id *)error;
- (BOOL)removeDataForKey:(id)key error:(id *)error;
- (BOOL)setData:(id)data forKey:(id)key error:(id *)error;
- (MTSKeychainStore)initWithScope:(id)scope;
- (MTSKeychainStore)initWithScope:(id)scope dataSource:(id)source;
- (NSDictionary)allDataByKey;
- (id)attributeDictionaryForAddingData:(id)data forKey:(id)key;
- (id)attributeDictionaryForUpdatingData:(id)data;
- (id)dataForKey:(id)key;
- (id)queryDictionaryForKey:(id)key isExpectingReturnData:(BOOL)data;
@end

@implementation MTSKeychainStore

- (id)attributeDictionaryForUpdatingData:(id)data
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = *MEMORY[0x277CDC5E8];
  v8[0] = data;
  v3 = MEMORY[0x277CBEAC0];
  dataCopy = data;
  v5 = [v3 dictionaryWithObjects:v8 forKeys:&v7 count:1];

  return v5;
}

- (id)attributeDictionaryForAddingData:(id)data forKey:(id)key
{
  v17[8] = *MEMORY[0x277D85DE8];
  v6 = *MEMORY[0x277CDC238];
  v7 = *MEMORY[0x277CDBEC8];
  v16[0] = *MEMORY[0x277CDC228];
  v16[1] = v7;
  v17[0] = v6;
  v17[1] = @"com.apple.matter.support";
  v16[2] = *MEMORY[0x277CDC120];
  keyCopy = key;
  dataCopy = data;
  scope = [(MTSKeychainStore *)self scope];
  v11 = *MEMORY[0x277CDC140];
  v17[2] = scope;
  v17[3] = MEMORY[0x277CBEC38];
  v12 = *MEMORY[0x277CDBED8];
  v16[3] = v11;
  v16[4] = v12;
  v17[4] = *MEMORY[0x277CDBEE0];
  v17[5] = MEMORY[0x277CBEC38];
  v13 = *MEMORY[0x277CDBF20];
  v16[5] = *MEMORY[0x277CDBFC0];
  v16[6] = v13;
  v16[7] = *MEMORY[0x277CDC5E8];
  v17[6] = keyCopy;
  v17[7] = dataCopy;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:8];

  return v14;
}

- (id)queryDictionaryForKey:(id)key isExpectingReturnData:(BOOL)data
{
  dataCopy = data;
  v6 = MEMORY[0x277CBEB38];
  keyCopy = key;
  dictionary = [v6 dictionary];
  [dictionary setObject:*MEMORY[0x277CDC238] forKeyedSubscript:*MEMORY[0x277CDC228]];
  [dictionary setObject:@"com.apple.matter.support" forKeyedSubscript:*MEMORY[0x277CDBEC8]];
  scope = [(MTSKeychainStore *)self scope];
  [dictionary setObject:scope forKeyedSubscript:*MEMORY[0x277CDC120]];

  [dictionary setObject:*MEMORY[0x277CDC148] forKeyedSubscript:*MEMORY[0x277CDC140]];
  [dictionary setObject:keyCopy forKeyedSubscript:*MEMORY[0x277CDBF20]];

  if (dataCopy)
  {
    v10 = MEMORY[0x277CBEC38];
    [dictionary setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277CDC558]];
    [dictionary setObject:v10 forKeyedSubscript:*MEMORY[0x277CDC550]];
    v11 = MEMORY[0x277CDC438];
    if (!keyCopy)
    {
      v11 = MEMORY[0x277CDC430];
    }

    [dictionary setObject:*v11 forKeyedSubscript:*MEMORY[0x277CDC428]];
  }

  v12 = [dictionary copy];

  return v12;
}

- (BOOL)removeAllDataWithError:(id *)error
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v26 = v8;
    _os_log_impl(&dword_239824000, v7, OS_LOG_TYPE_INFO, "%{public}@Removing all data", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(MTSKeychainStore *)selfCopy queryDictionaryForKey:0 isExpectingReturnData:0];
  v10 = objc_autoreleasePoolPush();
  v11 = selfCopy;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v13 = HMFGetLogIdentifier();
    *buf = 138543618;
    v26 = v13;
    v27 = 2112;
    v28 = v9;
    _os_log_impl(&dword_239824000, v12, OS_LOG_TYPE_DEBUG, "%{public}@Removing all keychain items matching query: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v10);
  dataSource = [(MTSKeychainStore *)v11 dataSource];
  v24 = 0;
  v15 = [dataSource removeItemsMatchingQuery:v9 error:&v24];
  v16 = v24;

  if ((v15 & 1) != 0 || [v16 code] == -25300)
  {
    v17 = 1;
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    v20 = v11;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543874;
      v26 = v22;
      v27 = 2112;
      v28 = v9;
      v29 = 2112;
      v30 = v16;
      _os_log_impl(&dword_239824000, v21, OS_LOG_TYPE_ERROR, "%{public}@Failed to remove all keychain items %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v19);
    if (error)
    {
      v23 = v16;
      v17 = 0;
      *error = v16;
    }

    else
    {
      v17 = 0;
    }
  }

  return v17;
}

- (BOOL)removeDataForKey:(id)key error:(id *)error
{
  v33 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    *buf = 138543618;
    v28 = v10;
    v29 = 2112;
    v30 = keyCopy;
    _os_log_impl(&dword_239824000, v9, OS_LOG_TYPE_INFO, "%{public}@Removing data for key: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  v11 = [(MTSKeychainStore *)selfCopy queryDictionaryForKey:keyCopy isExpectingReturnData:0];
  v12 = objc_autoreleasePoolPush();
  v13 = selfCopy;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v15 = HMFGetLogIdentifier();
    *buf = 138543618;
    v28 = v15;
    v29 = 2112;
    v30 = v11;
    _os_log_impl(&dword_239824000, v14, OS_LOG_TYPE_DEBUG, "%{public}@Removing keychain item matching query: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v12);
  dataSource = [(MTSKeychainStore *)v13 dataSource];
  v26 = 0;
  v17 = [dataSource removeItemsMatchingQuery:v11 error:&v26];
  v18 = v26;

  if ((v17 & 1) != 0 || [v18 code] == -25300)
  {
    v19 = 1;
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    v22 = v13;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543874;
      v28 = v24;
      v29 = 2112;
      v30 = v11;
      v31 = 2112;
      v32 = v18;
      _os_log_impl(&dword_239824000, v23, OS_LOG_TYPE_ERROR, "%{public}@Failed to remove keychain item with query %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v21);
    if (error)
    {
      v25 = v18;
      v19 = 0;
      *error = v18;
    }

    else
    {
      v19 = 0;
    }
  }

  return v19;
}

- (BOOL)setData:(id)data forKey:(id)key error:(id *)error
{
  v50 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  keyCopy = key;
  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    *buf = 138543618;
    v43 = v13;
    v44 = 2112;
    v45 = keyCopy;
    _os_log_impl(&dword_239824000, v12, OS_LOG_TYPE_INFO, "%{public}@Setting data for key: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v10);
  v14 = [(MTSKeychainStore *)selfCopy attributeDictionaryForAddingData:dataCopy forKey:keyCopy];
  v15 = objc_autoreleasePoolPush();
  v16 = selfCopy;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v18 = HMFGetLogIdentifier();
    *buf = 138543618;
    v43 = v18;
    v44 = 2112;
    v45 = v14;
    _os_log_impl(&dword_239824000, v17, OS_LOG_TYPE_DEBUG, "%{public}@Adding keychain item with attributes: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v15);
  dataSource = [(MTSKeychainStore *)v16 dataSource];
  v41 = 0;
  v20 = [dataSource addItemWithAttributes:v14 error:&v41];
  v21 = v41;

  if (v20)
  {
    v22 = 1;
LABEL_20:
    v24 = v14;
    goto LABEL_21;
  }

  if ([v21 code] != -25299)
  {
    v28 = objc_autoreleasePoolPush();
    v29 = v16;
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = HMFGetLogIdentifier();
      *buf = 138543874;
      v43 = v31;
      v44 = 2112;
      v45 = v14;
      v46 = 2112;
      v47 = v21;
      _os_log_impl(&dword_239824000, v30, OS_LOG_TYPE_ERROR, "%{public}@Failed to add keychain item with attributes %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v28);
    if (error)
    {
      v32 = v21;
      v22 = 0;
      *error = v21;
    }

    else
    {
      v22 = 0;
    }

    goto LABEL_20;
  }

  v23 = [(MTSKeychainStore *)v16 queryDictionaryForKey:keyCopy isExpectingReturnData:0];
  v24 = [(MTSKeychainStore *)v16 attributeDictionaryForUpdatingData:dataCopy];

  dataSource2 = [(MTSKeychainStore *)v16 dataSource];
  v40 = 0;
  v26 = [dataSource2 updateItemMatchingQuery:v23 withAttributes:v24 error:&v40];
  v27 = v40;

  if (v26)
  {

    v22 = 1;
  }

  else
  {
    v33 = objc_autoreleasePoolPush();
    v34 = v16;
    v35 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v36 = v39 = v33;
      *buf = 138544130;
      v43 = v36;
      v44 = 2112;
      v45 = v23;
      v46 = 2112;
      v47 = v24;
      v48 = 2112;
      v49 = v27;
      _os_log_impl(&dword_239824000, v35, OS_LOG_TYPE_ERROR, "%{public}@Failed to update keychain item with query %@ and attributes %@: %@", buf, 0x2Au);

      v33 = v39;
    }

    objc_autoreleasePoolPop(v33);
    if (error)
    {
      v37 = v27;
      *error = v27;
    }

    v22 = 0;
  }

LABEL_21:

  return v22;
}

- (NSDictionary)allDataByKey
{
  v48 = *MEMORY[0x277D85DE8];
  v3 = [(MTSKeychainStore *)self queryDictionaryForKey:0 isExpectingReturnData:1];
  dataSource = [(MTSKeychainStore *)self dataSource];
  v40 = 0;
  v5 = [dataSource resultMatchingQuery:v3 error:&v40];
  v6 = v40;

  if (v5)
  {
    v7 = v5;
    objc_opt_class();
    v8 = objc_opt_isKindOfClass() & 1;
    if (v8)
    {
      v9 = v7;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    if (v8)
    {
      v34 = v6;
      v35 = v3;
      v11 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v7, "count")}];
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v12 = [v7 countByEnumeratingWithState:&v36 objects:v41 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v37;
        v15 = *MEMORY[0x277CDBF20];
        v16 = *MEMORY[0x277CDC5E8];
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v37 != v14)
            {
              objc_enumerationMutation(v10);
            }

            v18 = *(*(&v36 + 1) + 8 * i);
            v19 = [v18 objectForKeyedSubscript:v15];
            v20 = [v18 objectForKeyedSubscript:v16];
            [v11 setObject:v20 forKeyedSubscript:v19];
          }

          v13 = [v10 countByEnumeratingWithState:&v36 objects:v41 count:16];
        }

        while (v13);
      }

      v21 = [v11 copy];
      v6 = v34;
      v3 = v35;
    }

    else
    {
      v26 = objc_autoreleasePoolPush();
      selfCopy = self;
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v30 = v29 = v6;
        v31 = objc_opt_class();
        *buf = 138543874;
        v43 = v30;
        v44 = 2112;
        v45 = v31;
        v46 = 2112;
        v47 = v7;
        v32 = v31;
        _os_log_impl(&dword_239824000, v28, OS_LOG_TYPE_ERROR, "%{public}@Keychain item query result was of unexpected class %@: %@", buf, 0x20u);

        v6 = v29;
      }

      objc_autoreleasePoolPop(v26);
      v21 = MEMORY[0x277CBEC10];
    }
  }

  else
  {
    if ([v6 code] != -25300)
    {
      v22 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = HMFGetLogIdentifier();
        *buf = 138543618;
        v43 = v25;
        v44 = 2112;
        v45 = v6;
        _os_log_impl(&dword_239824000, v24, OS_LOG_TYPE_ERROR, "%{public}@Failed to query all keychain items: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v22);
    }

    v21 = MEMORY[0x277CBEC10];
  }

  return v21;
}

- (id)dataForKey:(id)key
{
  v34 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v5 = [(MTSKeychainStore *)self queryDictionaryForKey:keyCopy isExpectingReturnData:1];
  dataSource = [(MTSKeychainStore *)self dataSource];
  v25 = 0;
  v7 = [dataSource resultMatchingQuery:v5 error:&v25];
  v8 = v25;

  if (v7)
  {
    v9 = v7;
    objc_opt_class();
    v10 = objc_opt_isKindOfClass() & 1;
    if (v10)
    {
      v11 = v9;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    if (v10)
    {
      v13 = [v9 objectForKeyedSubscript:*MEMORY[0x277CDC5E8]];
    }

    else
    {
      v18 = objc_autoreleasePoolPush();
      selfCopy = self;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = HMFGetLogIdentifier();
        v22 = objc_opt_class();
        *buf = 138544130;
        v27 = v21;
        v28 = 2112;
        v29 = keyCopy;
        v30 = 2112;
        v31 = v22;
        v32 = 2112;
        v33 = v9;
        v23 = v22;
        _os_log_impl(&dword_239824000, v20, OS_LOG_TYPE_ERROR, "%{public}@Keychain item query result for key %@ was of unexpected class %@: %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v18);
      v13 = 0;
    }
  }

  else
  {
    if ([v8 code] != -25300)
    {
      v14 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = HMFGetLogIdentifier();
        *buf = 138543874;
        v27 = v17;
        v28 = 2112;
        v29 = keyCopy;
        v30 = 2112;
        v31 = v8;
        _os_log_impl(&dword_239824000, v16, OS_LOG_TYPE_ERROR, "%{public}@Failed to query keychain item for key %@: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v14);
    }

    v13 = 0;
  }

  return v13;
}

- (MTSKeychainStore)initWithScope:(id)scope dataSource:(id)source
{
  scopeCopy = scope;
  sourceCopy = source;
  if (!scopeCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v8 = sourceCopy;
  if (!sourceCopy)
  {
LABEL_7:
    v13 = _HMFPreconditionFailure();
    return [(MTSKeychainStore *)v13 initWithScope:v14, v15];
  }

  v16.receiver = self;
  v16.super_class = MTSKeychainStore;
  v9 = [(MTSKeychainStore *)&v16 init];
  if (v9)
  {
    v10 = [scopeCopy copy];
    scope = v9->_scope;
    v9->_scope = v10;

    objc_storeStrong(&v9->_dataSource, source);
  }

  return v9;
}

- (MTSKeychainStore)initWithScope:(id)scope
{
  scopeCopy = scope;
  if (scopeCopy)
  {
    v5 = scopeCopy;
    v6 = objc_alloc_init(MTSKeychainStoreDataSource);
    v7 = [(MTSKeychainStore *)self initWithScope:v5 dataSource:v6];

    return v7;
  }

  else
  {
    v9 = _HMFPreconditionFailure();
    return +[(MTSKeychainStore *)v9];
  }
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t20 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t20, &__block_literal_global);
  }

  v3 = logCategory__hmf_once_v21;

  return v3;
}

uint64_t __31__MTSKeychainStore_logCategory__block_invoke()
{
  logCategory__hmf_once_v21 = HMFCreateOSLogHandle();

  return MEMORY[0x2821F96F8]();
}

@end