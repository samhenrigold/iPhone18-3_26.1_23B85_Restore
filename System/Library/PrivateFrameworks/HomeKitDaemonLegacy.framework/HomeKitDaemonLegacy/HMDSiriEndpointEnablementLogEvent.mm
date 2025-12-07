@interface HMDSiriEndpointEnablementLogEvent
+ (id)logCategory;
- (HMDSiriEndpointEnablementLogEvent)initWithConfigurationDataSource:(id)source;
- (HMDSiriEndpointEnablementLogEvent)initWithDictionary:(id)dictionary;
- (HMDSiriEndpointEnablementLogEvent)initWithHomeUUID:(id)d numCapableSiriEndpoints:(unint64_t)endpoints numEnabledSiriEndpoints:(unint64_t)siriEndpoints;
- (NSDictionary)coreAnalyticsEventDictionary;
- (id)serializedMetric;
@end

@implementation HMDSiriEndpointEnablementLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"numCapableSiriEndpointAccessories";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDSiriEndpointEnablementLogEvent numCapableSiriEndpointAccessories](self, "numCapableSiriEndpointAccessories")}];
  v7[1] = @"numEnabledSiriEndpointAccessories";
  v8[0] = v3;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDSiriEndpointEnablementLogEvent numEnabledSiriEndpointAccessories](self, "numEnabledSiriEndpointAccessories")}];
  v8[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

- (id)serializedMetric
{
  v9[3] = *MEMORY[0x277D85DE8];
  v8[0] = @"homeUUID";
  homeUUIDString = [(HMMHomeLogEvent *)self homeUUIDString];
  v9[0] = homeUUIDString;
  v8[1] = @"numCapableEndpoints";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDSiriEndpointEnablementLogEvent numCapableSiriEndpointAccessories](self, "numCapableSiriEndpointAccessories")}];
  v9[1] = v4;
  v8[2] = @"numEnabledEndpoints";
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDSiriEndpointEnablementLogEvent numEnabledSiriEndpointAccessories](self, "numEnabledSiriEndpointAccessories")}];
  v9[2] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:3];

  return v6;
}

- (HMDSiriEndpointEnablementLogEvent)initWithDictionary:(id)dictionary
{
  v19 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"homeUUID"];
  v6 = [dictionaryCopy objectForKeyedSubscript:@"numCapableEndpoints"];
  v7 = [dictionaryCopy objectForKeyedSubscript:@"numEnabledEndpoints"];
  v8 = v7;
  if (v5 && v6 && v7)
  {
    selfCopy = -[HMDSiriEndpointEnablementLogEvent initWithHomeUUID:numCapableSiriEndpoints:numEnabledSiriEndpoints:](self, "initWithHomeUUID:numCapableSiriEndpoints:numEnabledSiriEndpoints:", v5, [v6 unsignedIntValue], objc_msgSend(v7, "unsignedIntValue"));
    v10 = selfCopy;
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v15 = 138543618;
      v16 = v13;
      v17 = 2112;
      v18 = dictionaryCopy;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@Could not init HMDSiriEndpointEnablementLogEvent with dictionary %@", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v10 = 0;
  }

  return v10;
}

- (HMDSiriEndpointEnablementLogEvent)initWithHomeUUID:(id)d numCapableSiriEndpoints:(unint64_t)endpoints numEnabledSiriEndpoints:(unint64_t)siriEndpoints
{
  v8.receiver = self;
  v8.super_class = HMDSiriEndpointEnablementLogEvent;
  result = [(HMMHomeLogEvent *)&v8 initWithHomeUUID:d];
  if (result)
  {
    result->_numCapableSiriEndpointAccessories = endpoints;
    result->_numEnabledSiriEndpointAccessories = siriEndpoints;
  }

  return result;
}

- (HMDSiriEndpointEnablementLogEvent)initWithConfigurationDataSource:(id)source
{
  v28 = *MEMORY[0x277D85DE8];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  sourceCopy = source;
  accessories = [sourceCopy accessories];
  v4 = [accessories countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v4)
  {
    v5 = v4;
    v22 = 0;
    v6 = 0;
    v7 = *v24;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(accessories);
        }

        v9 = *(*(&v23 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = v9;
        }

        else
        {
          v10 = 0;
        }

        v11 = v10;

        if (v11)
        {
          hostAccessory = [v11 hostAccessory];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if ((isKindOfClass & 1) == 0 || !hostAccessory)
          {
            hasSiriEndpointService = [v11 hasSiriEndpointService];
            siriEndpointProfile = [v11 siriEndpointProfile];
            v16 = siriEndpointProfile;
            if (siriEndpointProfile && ([siriEndpointProfile siriTouchToUse] == 1 || objc_msgSend(v16, "siriListening") == 1))
            {
              ++v22;
            }

            v6 += hasSiriEndpointService;
          }
        }
      }

      v5 = [accessories countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v5);
  }

  else
  {
    v22 = 0;
    v6 = 0;
  }

  uuid = [sourceCopy uuid];
  v18 = [(HMDSiriEndpointEnablementLogEvent *)self initWithHomeUUID:uuid numCapableSiriEndpoints:v6 numEnabledSiriEndpoints:v22];

  return v18;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t11_195512 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t11_195512, &__block_literal_global_54_195513);
  }

  v3 = logCategory__hmf_once_v12_195514;

  return v3;
}

uint64_t __48__HMDSiriEndpointEnablementLogEvent_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v12_195514;
  logCategory__hmf_once_v12_195514 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end