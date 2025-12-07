@interface HMDUnifiedLanguageValueListSettingDataProvider
+ (id)logCategory;
+ (id)unifyLanguageValues:(id)values withValues:(id)withValues;
- (HMDUnifiedLanguageValueListSettingDataProviderDataSource)dataSource;
- (id)dataSourceDataProviders;
- (id)languageValueList;
@end

@implementation HMDUnifiedLanguageValueListSettingDataProvider

- (HMDUnifiedLanguageValueListSettingDataProviderDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (id)languageValueList
{
  v16 = *MEMORY[0x277D85DE8];
  dataSourceDataProviders = [(HMDUnifiedLanguageValueListSettingDataProvider *)self dataSourceDataProviders];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [dataSourceDataProviders countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    v6 = MEMORY[0x277CBEBF8];
    do
    {
      v7 = 0;
      v8 = v6;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(dataSourceDataProviders);
        }

        languageValueList = [*(*(&v11 + 1) + 8 * v7) languageValueList];
        v6 = [HMDUnifiedLanguageValueListSettingDataProvider unifyLanguageValues:v8 withValues:languageValueList];

        ++v7;
        v8 = v6;
      }

      while (v4 != v7);
      v4 = [dataSourceDataProviders countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  else
  {
    v6 = MEMORY[0x277CBEBF8];
  }

  return v6;
}

- (id)dataSourceDataProviders
{
  v13 = *MEMORY[0x277D85DE8];
  dataSource = [(HMDUnifiedLanguageValueListSettingDataProvider *)self dataSource];
  v4 = dataSource;
  if (dataSource)
  {
    v5 = [dataSource dataProvidersForUnifiedLanguageValueListSettingDataProvider:self];
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v9;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to get host accessories due to no data source", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v5 = MEMORY[0x277CBEBF8];
  }

  return v5;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t1_55852 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t1_55852, &__block_literal_global_55853);
  }

  v3 = logCategory__hmf_once_v2_55854;

  return v3;
}

void __61__HMDUnifiedLanguageValueListSettingDataProvider_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v2_55854;
  logCategory__hmf_once_v2_55854 = v0;
}

+ (id)unifyLanguageValues:(id)values withValues:(id)withValues
{
  v5 = MEMORY[0x277CBEB98];
  withValuesCopy = withValues;
  v7 = [v5 setWithArray:values];
  v8 = [v7 setByAddingObjectsFromArray:withValuesCopy];

  allObjects = [v8 allObjects];

  return allObjects;
}

@end