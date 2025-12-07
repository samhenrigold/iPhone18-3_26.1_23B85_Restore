@interface HMDRemoteDeviceReachabilityChangeLogEvent
- (HMDRemoteDeviceReachabilityChangeLogEvent)initWithReason:(unint64_t)reason reachable:(BOOL)reachable targetSupportsIDSPresence:(BOOL)presence;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDRemoteDeviceReachabilityChangeLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v11[3] = *MEMORY[0x277D85DE8];
  v10[0] = @"reachable";
  v3 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDRemoteDeviceReachabilityChangeLogEvent reachable](self, "reachable")}];
  v11[0] = v3;
  v10[1] = @"reason";
  reason = [(HMDRemoteDeviceReachabilityChangeLogEvent *)self reason];
  if (reason > 6)
  {
    v5 = @"unknown";
  }

  else
  {
    v5 = off_278677A70[reason];
  }

  v6 = v5;
  v11[1] = v6;
  v10[2] = @"targetSupportsIDSPresence";
  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDRemoteDeviceReachabilityChangeLogEvent targetSupportsIDSPresence](self, "targetSupportsIDSPresence")}];
  v11[2] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:3];

  return v8;
}

- (HMDRemoteDeviceReachabilityChangeLogEvent)initWithReason:(unint64_t)reason reachable:(BOOL)reachable targetSupportsIDSPresence:(BOOL)presence
{
  v9.receiver = self;
  v9.super_class = HMDRemoteDeviceReachabilityChangeLogEvent;
  result = [(HMMLogEvent *)&v9 init];
  if (result)
  {
    result->_reason = reason;
    result->_reachable = reachable;
    result->_targetSupportsIDSPresence = presence;
  }

  return result;
}

@end