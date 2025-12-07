@interface HMDActionSetModel
+ (id)cd_getMKFActionSetFromActionSet:(id)set;
+ (id)cd_getMKFActionSetFromActionSetUUID:(id)d;
+ (id)properties;
@end

@implementation HMDActionSetModel

+ (id)properties
{
  if (properties_onceToken_31278 != -1)
  {
    dispatch_once(&properties_onceToken_31278, &__block_literal_global_480);
  }

  v3 = properties__properties_31279;

  return v3;
}

void __31__HMDActionSetModel_properties__block_invoke()
{
  v6[3] = *MEMORY[0x277D85DE8];
  v5[0] = @"name";
  v0 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v6[0] = v0;
  v5[1] = @"type";
  v1 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v6[1] = v1;
  v5[2] = @"lastExecutionDate";
  v2 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v6[2] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:3];
  v4 = properties__properties_31279;
  properties__properties_31279 = v3;
}

+ (id)cd_getMKFActionSetFromActionSet:(id)set
{
  v23 = *MEMORY[0x277D85DE8];
  setCopy = set;
  if (!setCopy)
  {
    _HMFPreconditionFailure();
  }

  v5 = setCopy;
  v16 = 0;
  v6 = [HMDBackingStore cdlsFetchManagedObjectWithUUID:setCopy ofManagedObjectType:objc_opt_class() error:&v16];
  v7 = v16;
  v8 = v7;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    v14 = v6;
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543874;
      v18 = v13;
      v19 = 2112;
      v20 = v5;
      v21 = 2112;
      v22 = v8;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Unable to find MKFActionSet for actionSet UUID %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
    v14 = 0;
  }

  return v14;
}

+ (id)cd_getMKFActionSetFromActionSetUUID:(id)d
{
  dCopy = d;
  v4 = objc_opt_class();
  v5 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:dCopy];

  v6 = [v4 cd_getMKFActionSetFromActionSet:v5];

  return v6;
}

@end