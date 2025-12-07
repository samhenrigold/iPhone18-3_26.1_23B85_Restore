@interface HMDMediaDestinationControllerReceivedUpdateDestinationRequestMessageLogEvent
- (HMDMediaDestinationControllerReceivedUpdateDestinationRequestMessageLogEvent)initWithExistingDestinationType:(id)type destinationType:(id)destinationType isTriggeredOnControllerDevice:(id)device userPrivilege:(id)privilege;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDMediaDestinationControllerReceivedUpdateDestinationRequestMessageLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v10[4] = *MEMORY[0x277D85DE8];
  v9[0] = @"existingMediaDestinationType";
  existingDestinationType = [(HMDMediaDestinationControllerDestinationLogEvent *)self existingDestinationType];
  v10[0] = existingDestinationType;
  v9[1] = @"mediaDestinationType";
  destinationType = [(HMDMediaDestinationControllerDestinationLogEvent *)self destinationType];
  v10[1] = destinationType;
  v9[2] = @"isTriggeredOnControllerDevice";
  isTriggeredOnControllerDevice = [(HMDMediaDestinationControllerLogEvent *)self isTriggeredOnControllerDevice];
  v10[2] = isTriggeredOnControllerDevice;
  v9[3] = @"userPrivilege";
  userPrivilege = [(HMDMediaDestinationControllerLogEvent *)self userPrivilege];
  v10[3] = userPrivilege;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:4];

  return v7;
}

- (HMDMediaDestinationControllerReceivedUpdateDestinationRequestMessageLogEvent)initWithExistingDestinationType:(id)type destinationType:(id)destinationType isTriggeredOnControllerDevice:(id)device userPrivilege:(id)privilege
{
  v7.receiver = self;
  v7.super_class = HMDMediaDestinationControllerReceivedUpdateDestinationRequestMessageLogEvent;
  return [(HMDMediaDestinationControllerDestinationLogEvent *)&v7 initWithExistingDestinationType:type destinationType:destinationType isTriggeredOnControllerDevice:device userPrivilege:privilege];
}

@end