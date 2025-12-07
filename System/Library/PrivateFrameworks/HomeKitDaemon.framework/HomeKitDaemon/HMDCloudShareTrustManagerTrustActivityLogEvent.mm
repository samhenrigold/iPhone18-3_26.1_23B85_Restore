@interface HMDCloudShareTrustManagerTrustActivityLogEvent
- (HMDCloudShareTrustManagerTrustActivityLogEvent)initWithTrustActivityType:(int64_t)type privilege:(unint64_t)privilege isPrimaryResident:(BOOL)resident;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDCloudShareTrustManagerTrustActivityLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v9[3] = *MEMORY[0x277D85DE8];
  v8[0] = @"trustActivityType";
  trustActivityType = [(HMDCloudShareTrustManagerTrustActivityLogEvent *)self trustActivityType];
  v9[0] = trustActivityType;
  v8[1] = @"userPrivilege";
  privilege = [(HMDCloudShareTrustManagerTrustActivityLogEvent *)self privilege];
  v9[1] = privilege;
  v8[2] = @"isPrimaryResident";
  isPrimaryResident = [(HMDCloudShareTrustManagerTrustActivityLogEvent *)self isPrimaryResident];
  v9[2] = isPrimaryResident;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:3];

  return v6;
}

- (HMDCloudShareTrustManagerTrustActivityLogEvent)initWithTrustActivityType:(int64_t)type privilege:(unint64_t)privilege isPrimaryResident:(BOOL)resident
{
  residentCopy = resident;
  v16.receiver = self;
  v16.super_class = HMDCloudShareTrustManagerTrustActivityLogEvent;
  v8 = [(HMMLogEvent *)&v16 init];
  if (v8)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:type];
    trustActivityType = v8->_trustActivityType;
    v8->_trustActivityType = v9;

    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:privilege];
    privilege = v8->_privilege;
    v8->_privilege = v11;

    v13 = [MEMORY[0x277CCABB0] numberWithBool:residentCopy];
    isPrimaryResident = v8->_isPrimaryResident;
    v8->_isPrimaryResident = v13;
  }

  return v8;
}

@end