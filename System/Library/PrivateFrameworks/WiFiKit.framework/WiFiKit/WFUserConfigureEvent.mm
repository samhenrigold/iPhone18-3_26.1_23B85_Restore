@interface WFUserConfigureEvent
+ (id)configureEventWithType:(int64_t)type new:(int64_t)new old:(int64_t)old;
- (WFUserConfigureEvent)initWithType:(int64_t)type new:(int64_t)new old:(int64_t)old;
- (id)_configureValueStringForType:(int64_t)type;
- (id)_eventTypeStringForType:(int64_t)type;
@end

@implementation WFUserConfigureEvent

+ (id)configureEventWithType:(int64_t)type new:(int64_t)new old:(int64_t)old
{
  v5 = [[WFUserConfigureEvent alloc] initWithType:type new:new old:old];

  return v5;
}

- (id)_configureValueStringForType:(int64_t)type
{
  if (type > 0xA)
  {
    return @"unknown";
  }

  else
  {
    return off_279EBCCE0[type];
  }
}

- (id)_eventTypeStringForType:(int64_t)type
{
  if (type > 3)
  {
    return @"unknown";
  }

  else
  {
    return off_279EBCD38[type];
  }
}

- (WFUserConfigureEvent)initWithType:(int64_t)type new:(int64_t)new old:(int64_t)old
{
  v18[3] = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = WFUserConfigureEvent;
  v8 = [(WFUserConfigureEvent *)&v16 init];
  v9 = v8;
  if (v8)
  {
    v17[0] = @"type";
    v10 = [(WFUserConfigureEvent *)v8 _eventTypeStringForType:type];
    v18[0] = v10;
    v17[1] = @"value";
    v11 = [(WFUserConfigureEvent *)v9 _configureValueStringForType:new];
    v18[1] = v11;
    v17[2] = @"previousValue";
    v12 = [(WFUserConfigureEvent *)v9 _configureValueStringForType:old];
    v18[2] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:3];
    eventDictionary = v9->_eventDictionary;
    v9->_eventDictionary = v13;
  }

  return v9;
}

@end