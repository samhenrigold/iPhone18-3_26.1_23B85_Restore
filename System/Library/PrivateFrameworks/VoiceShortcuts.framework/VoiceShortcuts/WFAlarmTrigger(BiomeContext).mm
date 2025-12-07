@interface WFAlarmTrigger(BiomeContext)
- (id)publisherWithScheduler:()BiomeContext;
- (uint64_t)alarmEventForCurrentAlarmState;
- (void)shouldFireInResponseToEvent:()BiomeContext triggerIdentifier:completion:;
@end

@implementation WFAlarmTrigger(BiomeContext)

- (uint64_t)alarmEventForCurrentAlarmState
{
  alarmState = [self alarmState];
  if (alarmState == 1)
  {
    v2 = 3;
  }

  else
  {
    v2 = 1;
  }

  if (alarmState == 2)
  {
    return 2;
  }

  else
  {
    return v2;
  }
}

- (void)shouldFireInResponseToEvent:()BiomeContext triggerIdentifier:completion:
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = a5;
  v8 = a3;
  v9 = getWFTriggersLogObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 136315138;
    v24 = "[WFAlarmTrigger(BiomeContext) shouldFireInResponseToEvent:triggerIdentifier:completion:]";
    _os_log_impl(&dword_23103C000, v9, OS_LOG_TYPE_DEFAULT, "%s Recieved alarm event", &v23, 0xCu);
  }

  eventBody = [v8 eventBody];

  if (eventBody && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v11 = getWFTriggersLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 136315394;
      v24 = "[WFAlarmTrigger(BiomeContext) shouldFireInResponseToEvent:triggerIdentifier:completion:]";
      v25 = 2112;
      v26 = eventBody;
      _os_log_impl(&dword_23103C000, v11, OS_LOG_TYPE_DEFAULT, "%s Received alarm event %@ for trigger", &v23, 0x16u);
    }

    alarmType = [self alarmType];
    switch(alarmType)
    {
      case 2:
        if ([eventBody isSleepAlarm])
        {
          eventType = [eventBody eventType];
          v21 = eventType == [self alarmEventForCurrentAlarmState];
        }

        else
        {
          v21 = 0;
        }

        v7[2](v7, v21);
        break;
      case 1:
        v14 = objc_alloc(MEMORY[0x277CCAD78]);
        alarmID = [eventBody alarmID];
        v16 = [v14 initWithUUIDString:alarmID];

        if (v16)
        {
          alarmIDs = [self alarmIDs];
          if ([alarmIDs containsObject:v16])
          {
            eventType2 = [eventBody eventType];
            v19 = eventType2 == [self alarmEventForCurrentAlarmState];
          }

          else
          {
            v19 = 0;
          }

          v7[2](v7, v19);
        }

        else
        {
          v22 = getWFTriggersLogObject();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            v23 = 136315138;
            v24 = "[WFAlarmTrigger(BiomeContext) shouldFireInResponseToEvent:triggerIdentifier:completion:]";
            _os_log_impl(&dword_23103C000, v22, OS_LOG_TYPE_ERROR, "%s Alarm event alarmID string was not valid UUID", &v23, 0xCu);
          }

          v7[2](v7, 0);
        }

        break;
      case 0:
        v7[2](v7, [eventBody eventType] == objc_msgSend(self, "alarmEventForCurrentAlarmState"));
        break;
    }
  }

  else
  {

    v13 = getWFTriggersLogObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 136315138;
      v24 = "[WFAlarmTrigger(BiomeContext) shouldFireInResponseToEvent:triggerIdentifier:completion:]";
      _os_log_impl(&dword_23103C000, v13, OS_LOG_TYPE_DEFAULT, "%s No Alarm event received for trigger; not firing.", &v23, 0xCu);
    }

    v7[2](v7, 0);
    eventBody = 0;
  }
}

- (id)publisherWithScheduler:()BiomeContext
{
  v3 = a3;
  v4 = BiomeLibrary();
  clock = [v4 Clock];
  alarm = [clock Alarm];

  v7 = [alarm DSLPublisherWithUseCase:@"Automation.Trigger"];
  v8 = [v7 subscribeOn:v3];

  return v8;
}

@end