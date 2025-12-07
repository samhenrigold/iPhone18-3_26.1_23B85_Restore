@interface HMDPrimaryResidentDiscoveryLogEvent
- (HMDPrimaryResidentDiscoveryLogEvent)initWithHomeUUID:(id)d;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDPrimaryResidentDiscoveryLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v14[9] = *MEMORY[0x277D85DE8];
  v14[0] = &unk_283E74D20;
  v13[0] = @"primaryResidentDiscoveryCount";
  v13[1] = @"residentChannelActiveCount";
  if ([(HMDPrimaryResidentDiscoveryLogEvent *)self residentChannelActive])
  {
    v3 = &unk_283E74D20;
  }

  else
  {
    v3 = &unk_283E74D38;
  }

  v14[1] = v3;
  v13[2] = @"residentChannelActiveBool";
  v4 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDPrimaryResidentDiscoveryLogEvent residentChannelActive](self, "residentChannelActive")}];
  v14[2] = v4;
  v13[3] = @"residentChannelActiveNoPrimaryResolvedCount";
  if ([(HMDPrimaryResidentDiscoveryLogEvent *)self residentChannelActiveNoPrimaryResolved])
  {
    v5 = &unk_283E74D20;
  }

  else
  {
    v5 = &unk_283E74D38;
  }

  v14[3] = v5;
  v13[4] = @"residentChannelActiveNoPrimaryResolvedBool";
  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDPrimaryResidentDiscoveryLogEvent residentChannelActiveNoPrimaryResolved](self, "residentChannelActiveNoPrimaryResolved")}];
  v14[4] = v6;
  v13[5] = @"accountMessageCount";
  if ([(HMDPrimaryResidentDiscoveryLogEvent *)self accountMessageSent])
  {
    v7 = &unk_283E74D20;
  }

  else
  {
    v7 = &unk_283E74D38;
  }

  v14[5] = v7;
  v13[6] = @"accountMessageBool";
  v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDPrimaryResidentDiscoveryLogEvent accountMessageSent](self, "accountMessageSent")}];
  v14[6] = v8;
  v13[7] = @"accountMessageNoPrimaryResolvedCount";
  if ([(HMDPrimaryResidentDiscoveryLogEvent *)self accountMessageNoPrimaryResolved])
  {
    v9 = &unk_283E74D20;
  }

  else
  {
    v9 = &unk_283E74D38;
  }

  v14[7] = v9;
  v13[8] = @"accountMessageNoPrimaryResolvedBool";
  v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDPrimaryResidentDiscoveryLogEvent accountMessageNoPrimaryResolved](self, "accountMessageNoPrimaryResolved")}];
  v14[8] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:9];

  return v11;
}

- (HMDPrimaryResidentDiscoveryLogEvent)initWithHomeUUID:(id)d
{
  v8.receiver = self;
  v8.super_class = HMDPrimaryResidentDiscoveryLogEvent;
  v3 = [(HMMHomeLogEvent *)&v8 initWithHomeUUID:d];
  v4 = v3;
  if (v3)
  {
    v3->_residentChannelActive = 0;
    v3->_residentChannelActiveNoPrimaryResolved = 0;
    residentChannelActiveResolvePrimaryError = v3->_residentChannelActiveResolvePrimaryError;
    v3->_residentChannelActiveResolvePrimaryError = 0;

    v4->_accountMessageSent = 0;
    v4->_accountMessageNoPrimaryResolved = 0;
    accountMessageError = v4->_accountMessageError;
    v4->_accountMessageError = 0;
  }

  return v4;
}

@end