@interface HMDMediaDestinationControllerDailySetDestinationEvent
- (HMDMediaDestinationControllerDailySetDestinationEvent)initWithExistingDestinationType:(id)type;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDMediaDestinationControllerDailySetDestinationEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"existingMediaDestinationType";
  existingDestinationType = [(HMDMediaDestinationControllerDailySetDestinationEvent *)self existingDestinationType];
  v6[0] = existingDestinationType;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

- (HMDMediaDestinationControllerDailySetDestinationEvent)initWithExistingDestinationType:(id)type
{
  typeCopy = type;
  v9.receiver = self;
  v9.super_class = HMDMediaDestinationControllerDailySetDestinationEvent;
  v6 = [(HMMLogEvent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_existingDestinationType, type);
  }

  return v7;
}

@end