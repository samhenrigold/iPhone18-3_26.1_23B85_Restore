@interface HMDProcessMemoryPressureNotificationLogEvent
- (HMDProcessMemoryPressureNotificationLogEvent)initWithProcessMemoryEvent:(int64_t)event dataSyncState:(unint64_t)state;
- (NSDictionary)coreAnalyticsEventDictionary;
- (id)processMemoryStateString;
@end

@implementation HMDProcessMemoryPressureNotificationLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"processMemoryState";
  processMemoryStateString = [(HMDProcessMemoryPressureNotificationLogEvent *)self processMemoryStateString];
  v7[1] = @"dataSyncState";
  v8[0] = processMemoryStateString;
  [(HMDProcessMemoryPressureNotificationLogEvent *)self dataSyncState];
  v4 = HMHomeManagerDataSyncStateToString();
  v8[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

- (id)processMemoryStateString
{
  processMemoryEvent = [(HMDProcessMemoryPressureNotificationLogEvent *)self processMemoryEvent];
  v3 = @"HMFProcessMemoryStateUnknown";
  if (processMemoryEvent == 5)
  {
    v3 = @"HMFProcessMemoryStateCritical";
  }

  if (processMemoryEvent == 4)
  {
    return @"HMFProcessMemoryStateWarning";
  }

  else
  {
    return v3;
  }
}

- (HMDProcessMemoryPressureNotificationLogEvent)initWithProcessMemoryEvent:(int64_t)event dataSyncState:(unint64_t)state
{
  v7.receiver = self;
  v7.super_class = HMDProcessMemoryPressureNotificationLogEvent;
  result = [(HMMLogEvent *)&v7 init];
  if (result)
  {
    result->_processMemoryEvent = event;
    result->_dataSyncState = state;
  }

  return result;
}

@end