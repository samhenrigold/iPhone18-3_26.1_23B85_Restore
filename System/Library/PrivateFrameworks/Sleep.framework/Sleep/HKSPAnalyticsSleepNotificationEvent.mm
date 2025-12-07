@interface HKSPAnalyticsSleepNotificationEvent
- (HKSPAnalyticsSleepNotificationEvent)initWithType:(unint64_t)type action:(unint64_t)action;
- (NSString)description;
@end

@implementation HKSPAnalyticsSleepNotificationEvent

- (HKSPAnalyticsSleepNotificationEvent)initWithType:(unint64_t)type action:(unint64_t)action
{
  v18[2] = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = HKSPAnalyticsSleepNotificationEvent;
  v6 = [(HKSPAnalyticsSleepNotificationEvent *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_eventName, @"com.apple.SleepHealth.SleepNotificationEvent");
    v8 = @"FocusIntroduction";
    if (!type)
    {
      v8 = @"BedtimeReminder";
    }

    v17[0] = @"notificationType";
    v17[1] = @"notificationAction";
    v18[0] = v8;
    if (action - 1 > 3)
    {
      v9 = @"Fired";
    }

    else
    {
      v9 = off_279C76528[action - 1];
    }

    v18[1] = v9;
    v10 = MEMORY[0x277CBEAC0];
    v11 = v8;
    v12 = [v10 dictionaryWithObjects:v18 forKeys:v17 count:2];
    eventPayload = v7->_eventPayload;
    v7->_eventPayload = v12;

    v14 = v7;
  }

  return v7;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"[%@.%p] event=%@, payload=%@", v5, self, self->_eventName, self->_eventPayload];

  return v6;
}

@end