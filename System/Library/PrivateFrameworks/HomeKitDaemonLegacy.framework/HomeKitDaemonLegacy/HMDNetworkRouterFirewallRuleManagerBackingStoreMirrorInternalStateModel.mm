@interface HMDNetworkRouterFirewallRuleManagerBackingStoreMirrorInternalStateModel
+ (NSUUID)modelID;
+ (NSUUID)parentModelID;
+ (id)hmbProperties;
+ (id)logCategory;
- (HMDNetworkRouterFirewallRuleManagerBackingStoreMirrorInternalStateModel)init;
- (NSSet)lastSynchronizedRecordIDs;
- (void)setLastSynchronizedRecordIDs:(id)ds;
@end

@implementation HMDNetworkRouterFirewallRuleManagerBackingStoreMirrorInternalStateModel

+ (id)hmbProperties
{
  if (hmbProperties_onceToken_164588 != -1)
  {
    dispatch_once(&hmbProperties_onceToken_164588, &__block_literal_global_10_164589);
  }

  v3 = hmbProperties_properties_164590;

  return v3;
}

void __88__HMDNetworkRouterFirewallRuleManagerBackingStoreMirrorInternalStateModel_hmbProperties__block_invoke()
{
  v4[1] = *MEMORY[0x277D85DE8];
  v3 = @"archivedLastSynchronizedRecordIDs";
  v0 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v4[0] = v0;
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:&v3 count:1];
  v2 = hmbProperties_properties_164590;
  hmbProperties_properties_164590 = v1;
}

+ (NSUUID)parentModelID
{
  if (parentModelID_onceToken != -1)
  {
    dispatch_once(&parentModelID_onceToken, &__block_literal_global_5_164598);
  }

  v3 = parentModelID_parentModelID;

  return v3;
}

uint64_t __88__HMDNetworkRouterFirewallRuleManagerBackingStoreMirrorInternalStateModel_parentModelID__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"e04f2c76-f905-4dd1-81b1-0336eb0cc6db"];
  v1 = parentModelID_parentModelID;
  parentModelID_parentModelID = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (NSUUID)modelID
{
  if (modelID_onceToken != -1)
  {
    dispatch_once(&modelID_onceToken, &__block_literal_global_2_164604);
  }

  v3 = modelID_modelID;

  return v3;
}

uint64_t __82__HMDNetworkRouterFirewallRuleManagerBackingStoreMirrorInternalStateModel_modelID__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"b16edda7-1296-4be2-b225-bb7beb536415"];
  v1 = modelID_modelID;
  modelID_modelID = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_164609 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_164609, &__block_literal_global_164610);
  }

  v3 = logCategory__hmf_once_v1_164611;

  return v3;
}

uint64_t __86__HMDNetworkRouterFirewallRuleManagerBackingStoreMirrorInternalStateModel_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v1_164611;
  logCategory__hmf_once_v1_164611 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (void)setLastSynchronizedRecordIDs:(id)ds
{
  v19 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  if (![dsCopy count])
  {
    [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirrorInternalStateModel *)self setArchivedLastSynchronizedRecordIDs:0];
    goto LABEL_5;
  }

  v12 = 0;
  v5 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:dsCopy requiringSecureCoding:1 error:&v12];
  lastSynchronizedRecordIDs = v12;
  if (v5)
  {
    [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirrorInternalStateModel *)self setArchivedLastSynchronizedRecordIDs:v5];

LABEL_5:
    v7 = dsCopy;
    lastSynchronizedRecordIDs = self->_lastSynchronizedRecordIDs;
    self->_lastSynchronizedRecordIDs = v7;
    goto LABEL_9;
  }

  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543874;
    v14 = v11;
    v15 = 2112;
    v16 = dsCopy;
    v17 = 2112;
    v18 = lastSynchronizedRecordIDs;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to archive %@: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
LABEL_9:
}

- (NSSet)lastSynchronizedRecordIDs
{
  v32[2] = *MEMORY[0x277D85DE8];
  lastSynchronizedRecordIDs = self->_lastSynchronizedRecordIDs;
  if (lastSynchronizedRecordIDs)
  {
    goto LABEL_17;
  }

  archivedLastSynchronizedRecordIDs = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirrorInternalStateModel *)self archivedLastSynchronizedRecordIDs];

  if (archivedLastSynchronizedRecordIDs)
  {
    v5 = MEMORY[0x277CBEB98];
    v32[0] = objc_opt_class();
    v32[1] = objc_opt_class();
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:2];
    v7 = [v5 setWithArray:v6];

    v8 = MEMORY[0x277CCAAC8];
    archivedLastSynchronizedRecordIDs2 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirrorInternalStateModel *)self archivedLastSynchronizedRecordIDs];
    v25 = 0;
    v10 = [v8 unarchivedObjectOfClasses:v7 fromData:archivedLastSynchronizedRecordIDs2 error:&v25];
    v11 = v25;

    if (v10)
    {
      v12 = v10;
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

      v15 = self->_lastSynchronizedRecordIDs;
      self->_lastSynchronizedRecordIDs = v14;

      if (self->_lastSynchronizedRecordIDs)
      {
        goto LABEL_14;
      }

      v16 = objc_autoreleasePoolPush();
      selfCopy = self;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        *buf = 138543618;
        v27 = v19;
        v28 = 2112;
        v29 = v12;
        _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@Unarchived an object of an unexpected type: %@", buf, 0x16u);
LABEL_12:
      }
    }

    else
    {
      v16 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        archivedLastSynchronizedRecordIDs3 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirrorInternalStateModel *)selfCopy2 archivedLastSynchronizedRecordIDs];
        *buf = 138543874;
        v27 = v19;
        v28 = 2112;
        v29 = archivedLastSynchronizedRecordIDs3;
        v30 = 2112;
        v31 = v11;
        _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive %@: %@", buf, 0x20u);

        goto LABEL_12;
      }
    }

    objc_autoreleasePoolPop(v16);
LABEL_14:
  }

  lastSynchronizedRecordIDs = self->_lastSynchronizedRecordIDs;
  if (!lastSynchronizedRecordIDs)
  {
    v22 = [MEMORY[0x277CBEB98] set];
    v23 = self->_lastSynchronizedRecordIDs;
    self->_lastSynchronizedRecordIDs = v22;

    lastSynchronizedRecordIDs = self->_lastSynchronizedRecordIDs;
  }

LABEL_17:

  return lastSynchronizedRecordIDs;
}

- (HMDNetworkRouterFirewallRuleManagerBackingStoreMirrorInternalStateModel)init
{
  modelID = [objc_opt_class() modelID];
  parentModelID = [objc_opt_class() parentModelID];
  v5 = [(HMBModel *)self initWithModelID:modelID parentModelID:parentModelID];

  return v5;
}

@end