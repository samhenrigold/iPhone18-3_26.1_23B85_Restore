@interface HMBCloudZoneStateModel
+ (id)hmbProperties;
- (HMBCloudZone)cloudZone;
- (HMBCloudZoneStateModel)initWithModelID:(id)d parentModelID:(id)iD;
- (NSSet)subscriptions;
- (void)setSubscriptions:(id)subscriptions;
@end

@implementation HMBCloudZoneStateModel

+ (id)hmbProperties
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__HMBCloudZoneStateModel_hmbProperties__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (hmbProperties_onceToken != -1)
  {
    dispatch_once(&hmbProperties_onceToken, block);
  }

  v2 = hmbProperties__properties;

  return v2;
}

void __39__HMBCloudZoneStateModel_hmbProperties__block_invoke(uint64_t a1)
{
  v13[5] = *MEMORY[0x277D85DE8];
  v11.receiver = *(a1 + 32);
  v11.super_class = &OBJC_METACLASS___HMBCloudZoneStateModel;
  v1 = objc_msgSendSuper2(&v11, sel_hmbProperties);
  v2 = [v1 mutableCopy];
  v3 = hmbProperties__properties;
  hmbProperties__properties = v2;

  v4 = hmbProperties__properties;
  v12[0] = @"zoneID";
  v5 = [HMBModelField fieldWithClass:objc_opt_class()];
  v13[0] = v5;
  v12[1] = @"needsZoneCreation";
  v6 = [HMBModelField fieldWithClass:objc_opt_class()];
  v13[1] = v6;
  v12[2] = @"needsZoneDeletion";
  v7 = [HMBModelField fieldWithClass:objc_opt_class()];
  v13[2] = v7;
  v12[3] = @"subscriptionsData";
  v8 = [HMBModelField fieldWithClass:objc_opt_class()];
  v13[3] = v8;
  v12[4] = @"rebuilderStatus";
  v9 = [HMBModelField fieldWithClass:objc_opt_class()];
  v13[4] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:5];
  [v4 addEntriesFromDictionary:v10];
}

- (HMBCloudZone)cloudZone
{
  WeakRetained = objc_loadWeakRetained(&self->_cloudZone);

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
    [(HMBCloudZoneStateModel *)self setSubscriptionsData:v5];
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
  subscriptionsData = [(HMBCloudZoneStateModel *)self subscriptionsData];
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

- (HMBCloudZoneStateModel)initWithModelID:(id)d parentModelID:(id)iD
{
  v9.receiver = self;
  v9.super_class = HMBCloudZoneStateModel;
  v4 = [(HMBModel *)&v9 initWithModelID:d parentModelID:iD];
  v5 = v4;
  if (v4)
  {
    v6 = MEMORY[0x277CBEC28];
    [(HMBCloudZoneStateModel *)v4 setNeedsZoneCreation:MEMORY[0x277CBEC28]];
    [(HMBCloudZoneStateModel *)v5 setNeedsZoneDeletion:v6];
    v7 = [MEMORY[0x277CBEB98] set];
    [(HMBCloudZoneStateModel *)v5 setSubscriptions:v7];
  }

  return v5;
}

@end