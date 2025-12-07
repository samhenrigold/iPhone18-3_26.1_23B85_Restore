@interface HMDMatterV2KeyCountLogEvent
+ (id)logCategory;
- (HMDMatterV2KeyCountLogEvent)initWithConfigurationDataSource:(id)source;
- (HMDMatterV2KeyCountLogEvent)initWithDictionary:(id)dictionary;
- (HMDMatterV2KeyCountLogEvent)initWithHomeUUID:(id)d numV2Keys:(unint64_t)keys;
- (NSDictionary)coreAnalyticsEventDictionary;
- (id)serializedMetrics;
@end

@implementation HMDMatterV2KeyCountLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"numV2Keys";
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDMatterV2KeyCountLogEvent numV2Keys](self, "numV2Keys")}];
  v6[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

- (id)serializedMetrics
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"homeUUID";
  homeUUIDString = [(HMMHomeLogEvent *)self homeUUIDString];
  v7[1] = @"numV2Keys";
  v8[0] = homeUUIDString;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDMatterV2KeyCountLogEvent numV2Keys](self, "numV2Keys")}];
  v8[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

- (HMDMatterV2KeyCountLogEvent)initWithDictionary:(id)dictionary
{
  v18 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"homeUUID"];
  v6 = [dictionaryCopy objectForKeyedSubscript:@"numV2Keys"];
  v7 = v6;
  if (v5 && v6)
  {
    selfCopy = -[HMDMatterV2KeyCountLogEvent initWithHomeUUID:numV2Keys:](self, "initWithHomeUUID:numV2Keys:", v5, [v6 unsignedIntValue]);
    v9 = selfCopy;
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v14 = 138543618;
      v15 = v12;
      v16 = 2112;
      v17 = dictionaryCopy;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Could not init HMDMatterV2KeyCountLogEvent with dictionary %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v9 = 0;
  }

  return v9;
}

- (HMDMatterV2KeyCountLogEvent)initWithHomeUUID:(id)d numV2Keys:(unint64_t)keys
{
  v6.receiver = self;
  v6.super_class = HMDMatterV2KeyCountLogEvent;
  result = [(HMMHomeLogEvent *)&v6 initWithHomeUUID:d];
  if (result)
  {
    result->_numV2Keys = keys;
  }

  return result;
}

- (HMDMatterV2KeyCountLogEvent)initWithConfigurationDataSource:(id)source
{
  sourceCopy = source;
  uuid = [sourceCopy uuid];
  numMatterV2Keys = [sourceCopy numMatterV2Keys];

  v7 = [(HMDMatterV2KeyCountLogEvent *)self initWithHomeUUID:uuid numV2Keys:numMatterV2Keys];
  return v7;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t8_175579 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t8_175579, &__block_literal_global_43_175580);
  }

  v3 = logCategory__hmf_once_v9_175581;

  return v3;
}

uint64_t __42__HMDMatterV2KeyCountLogEvent_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v9_175581;
  logCategory__hmf_once_v9_175581 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end