@interface WFUserEvent
+ (id)eventWithType:(int64_t)type;
+ (id)eventWithType:(int64_t)type state:(BOOL)state;
+ (id)eventWithType:(int64_t)type stateEnum:(unsigned int)enum;
- (WFUserEvent)initWithType:(int64_t)type state:(BOOL)state stateEnum:(unsigned int)enum;
- (id)_eventTypeStringForType:(int64_t)type;
@end

@implementation WFUserEvent

+ (id)eventWithType:(int64_t)type
{
  v3 = [[WFUserEvent alloc] initWithType:type state:0 stateEnum:0];

  return v3;
}

+ (id)eventWithType:(int64_t)type state:(BOOL)state
{
  v4 = [[WFUserEvent alloc] initWithType:type state:state stateEnum:0];

  return v4;
}

+ (id)eventWithType:(int64_t)type stateEnum:(unsigned int)enum
{
  v4 = [[WFUserEvent alloc] initWithType:type state:0 stateEnum:*&enum];

  return v4;
}

- (id)_eventTypeStringForType:(int64_t)type
{
  if (type > 0xE)
  {
    return @"unknown";
  }

  else
  {
    return off_279EBE590[type];
  }
}

- (WFUserEvent)initWithType:(int64_t)type state:(BOOL)state stateEnum:(unsigned int)enum
{
  stateCopy = state;
  v20[3] = *MEMORY[0x277D85DE8];
  v18.receiver = self;
  v18.super_class = WFUserEvent;
  v8 = [(WFUserEvent *)&v18 init];
  if (v8)
  {
    v9 = @"false";
    if (stateCopy)
    {
      v9 = @"true";
    }

    v10 = v9;
    v11 = v10;
    if (type == 2)
    {

      if (enum > 2)
      {
        v11 = @"unknown";
      }

      else
      {
        v11 = off_279EBE578[enum];
      }
    }

    v19[0] = @"type";
    v12 = [(WFUserEvent *)v8 _eventTypeStringForType:type];
    v20[0] = v12;
    v20[1] = v11;
    v19[1] = @"value";
    v19[2] = @"process";
    v13 = +[WFMetricsManager sharedManager];
    processName = [v13 processName];
    v20[2] = processName;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:3];
    eventDictionary = v8->_eventDictionary;
    v8->_eventDictionary = v15;
  }

  return v8;
}

@end