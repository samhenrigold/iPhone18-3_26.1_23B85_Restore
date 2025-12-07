@interface HMDUserCloudShareParticipantAdoptionDailyEvent
- (HMDUserCloudShareParticipantAdoptionDailyEvent)initWithConfigureState:(int64_t)state hasOwnerCloudShareID:(BOOL)d;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDUserCloudShareParticipantAdoptionDailyEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"configureState";
  configureState = [(HMDUserCloudShareParticipantAdoptionDailyEvent *)self configureState];
  v7[1] = @"hasOwnerCloudShareID";
  v8[0] = configureState;
  hasOwnerCloudShareID = [(HMDUserCloudShareParticipantAdoptionDailyEvent *)self hasOwnerCloudShareID];
  v8[1] = hasOwnerCloudShareID;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

- (HMDUserCloudShareParticipantAdoptionDailyEvent)initWithConfigureState:(int64_t)state hasOwnerCloudShareID:(BOOL)d
{
  dCopy = d;
  v12.receiver = self;
  v12.super_class = HMDUserCloudShareParticipantAdoptionDailyEvent;
  v6 = [(HMMLogEvent *)&v12 init];
  if (v6)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithInteger:state];
    configureState = v6->_configureState;
    v6->_configureState = v7;

    v9 = [MEMORY[0x277CCABB0] numberWithBool:dCopy];
    hasOwnerCloudShareID = v6->_hasOwnerCloudShareID;
    v6->_hasOwnerCloudShareID = v9;
  }

  return v6;
}

@end