@interface HMBCloudDatabaseStateModel
+ (id)hmbProperties;
- (CKDatabase)database;
- (HMBCloudDatabaseStateModel)initWithModelID:(id)d parentModelID:(id)iD;
- (NSSet)subscriptions;
- (void)setSubscriptions:(id)subscriptions;
@end

@implementation HMBCloudDatabaseStateModel

+ (id)hmbProperties
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__HMBCloudDatabaseStateModel_hmbProperties__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (hmbProperties_onceToken_7882 != -1)
  {
    dispatch_once(&hmbProperties_onceToken_7882, block);
  }

  v2 = hmbProperties__properties_7883;

  return v2;
}

void __43__HMBCloudDatabaseStateModel_hmbProperties__block_invoke(uint64_t a1)
{
  v11[3] = *MEMORY[0x277D85DE8];
  v9.receiver = *(a1 + 32);
  v9.super_class = &OBJC_METACLASS___HMBCloudDatabaseStateModel;
  v1 = objc_msgSendSuper2(&v9, sel_hmbProperties);
  v2 = [v1 mutableCopy];
  v3 = hmbProperties__properties_7883;
  hmbProperties__properties_7883 = v2;

  v4 = hmbProperties__properties_7883;
  v10[0] = @"cloudID";
  v5 = [HMBModelField fieldWithClass:objc_opt_class()];
  v11[0] = v5;
  v10[1] = @"lastAdministrativeFetch";
  v6 = [HMBModelField fieldWithClass:objc_opt_class()];
  v11[1] = v6;
  v10[2] = @"subscriptionsData";
  v7 = [HMBModelField fieldWithClass:objc_opt_class()];
  v11[2] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:3];
  [v4 addEntriesFromDictionary:v8];
}

- (CKDatabase)database
{
  WeakRetained = objc_loadWeakRetained(&self->_database);

  return WeakRetained;
}

- (void)setSubscriptions:(id)subscriptions
{
  v19 = *MEMORY[0x277D85DE8];
  subscriptionsCopy = subscriptions;
  v12 = 0;
  v5 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:subscriptionsCopy requiringSecureCoding:1 error:&v12];
  v6 = v12;
  if (v5)
  {
    [(HMBCloudDatabaseStateModel *)self setSubscriptionsData:v5];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      hmbDescription = [subscriptionsCopy hmbDescription];
      *buf = 138543874;
      v14 = v10;
      v15 = 2112;
      v16 = hmbDescription;
      v17 = 2112;
      v18 = v6;
      _os_log_impl(&dword_22AD27000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to encode subscriptions %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
  }
}

- (NSSet)subscriptions
{
  v24[2] = *MEMORY[0x277D85DE8];
  subscriptionsData = [(HMBCloudDatabaseStateModel *)self subscriptionsData];
  if (subscriptionsData)
  {
    v4 = MEMORY[0x277CCAAC8];
    v5 = MEMORY[0x277CBEB98];
    v24[0] = objc_opt_class();
    v24[1] = objc_opt_class();
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
    v7 = [v5 setWithArray:v6];
    v17 = 0;
    v8 = [v4 unarchivedObjectOfClasses:v7 fromData:subscriptionsData error:&v17];
    v9 = v17;

    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v12 = objc_autoreleasePoolPush();
      selfCopy = self;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = HMFGetLogIdentifier();
        *buf = 138543874;
        v19 = v15;
        v20 = 2112;
        v21 = subscriptionsData;
        v22 = 2112;
        v23 = v9;
        _os_log_impl(&dword_22AD27000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode subscriptions data %@: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v12);
      v10 = [MEMORY[0x277CBEB98] set];
    }

    v11 = v10;
  }

  else
  {
    v11 = [MEMORY[0x277CBEB98] set];
  }

  return v11;
}

- (HMBCloudDatabaseStateModel)initWithModelID:(id)d parentModelID:(id)iD
{
  v8.receiver = self;
  v8.super_class = HMBCloudDatabaseStateModel;
  v4 = [(HMBModel *)&v8 initWithModelID:d parentModelID:iD];
  if (v4)
  {
    distantPast = [MEMORY[0x277CBEAA8] distantPast];
    [(HMBCloudDatabaseStateModel *)v4 setLastAdministrativeFetch:distantPast];

    v6 = [MEMORY[0x277CBEB98] set];
    [(HMBCloudDatabaseStateModel *)v4 setSubscriptions:v6];
  }

  return v4;
}

@end