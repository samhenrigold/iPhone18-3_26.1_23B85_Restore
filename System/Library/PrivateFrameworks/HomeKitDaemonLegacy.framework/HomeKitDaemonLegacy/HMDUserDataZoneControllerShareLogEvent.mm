@interface HMDUserDataZoneControllerShareLogEvent
- (HMDUserDataZoneControllerShareLogEvent)initWithResult:(unint64_t)result didAccept:(BOOL)accept;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDUserDataZoneControllerShareLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"result";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDUserDataZoneControllerShareLogEvent result](self, "result")}];
  v7[1] = @"didAccept";
  v8[0] = v3;
  v4 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDUserDataZoneControllerShareLogEvent didAccept](self, "didAccept")}];
  v8[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

- (HMDUserDataZoneControllerShareLogEvent)initWithResult:(unint64_t)result didAccept:(BOOL)accept
{
  v7.receiver = self;
  v7.super_class = HMDUserDataZoneControllerShareLogEvent;
  result = [(HMMLogEvent *)&v7 init];
  if (result)
  {
    result->_result = result;
    result->_didAccept = accept;
  }

  return result;
}

@end