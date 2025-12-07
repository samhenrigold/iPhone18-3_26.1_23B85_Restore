@interface HMDUnexpectedNotificationLogEvent
- (HMDUnexpectedNotificationLogEvent)initWithCount:(int64_t)count;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDUnexpectedNotificationLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"numUnexpectedNotificationCount";
  v2 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDUnexpectedNotificationLogEvent count](self, "count")}];
  v6[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

- (HMDUnexpectedNotificationLogEvent)initWithCount:(int64_t)count
{
  v5.receiver = self;
  v5.super_class = HMDUnexpectedNotificationLogEvent;
  result = [(HMMLogEvent *)&v5 init];
  if (result)
  {
    result->_count = count;
  }

  return result;
}

@end