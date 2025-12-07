@interface HDAlarmEvent(Medications)
- (id)scheduleItemIdentifier;
- (uint64_t)isCriticalNotificationEvent;
- (uint64_t)isFollowUpNotificationEvent;
- (void)isCriticalNotificationEvent;
- (void)isFollowUpNotificationEvent;
- (void)scheduleItemIdentifier;
@end

@implementation HDAlarmEvent(Medications)

- (uint64_t)isFollowUpNotificationEvent
{
  eventIdentifier = [self eventIdentifier];
  v4 = [eventIdentifier componentsSeparatedByString:{@", "}];
  v5 = [v4 count];

  if (v5 != 3)
  {
    [(HDAlarmEvent(Medications) *)self isFollowUpNotificationEvent];
  }

  eventIdentifier2 = [self eventIdentifier];
  v7 = BoolValueFromIdentifierForKey(eventIdentifier2, @"isFollowUp");

  return v7;
}

- (uint64_t)isCriticalNotificationEvent
{
  eventIdentifier = [self eventIdentifier];
  v4 = [eventIdentifier componentsSeparatedByString:{@", "}];
  v5 = [v4 count];

  if (v5 != 3)
  {
    [(HDAlarmEvent(Medications) *)self isCriticalNotificationEvent];
  }

  eventIdentifier2 = [self eventIdentifier];
  v7 = BoolValueFromIdentifierForKey(eventIdentifier2, @"isCritical");

  return v7;
}

- (id)scheduleItemIdentifier
{
  eventIdentifier = [self eventIdentifier];
  eventIdentifier2 = [self eventIdentifier];
  if ([eventIdentifier2 containsString:{@", "}])
  {
  }

  else
  {
    eventIdentifier3 = [self eventIdentifier];
    [eventIdentifier3 doubleValue];
    v7 = v6;

    if (v7 > 0.0)
    {
      lastObject = eventIdentifier;
      goto LABEL_8;
    }
  }

  eventIdentifier4 = [self eventIdentifier];
  v10 = [eventIdentifier4 componentsSeparatedByString:{@", "}];
  v11 = [v10 count];

  if (v11 != 3)
  {
    [(HDAlarmEvent(Medications) *)self scheduleItemIdentifier];
  }

  v12 = [eventIdentifier componentsSeparatedByString:{@", "}];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __KeyValuePairFromIdentifierForKey_block_invoke;
  v16[3] = &unk_2796CE388;
  v17 = @"scheduleItemId";
  v13 = [v12 hk_firstObjectPassingTest:v16];

  v14 = [v13 componentsSeparatedByString:@":"];
  lastObject = [v14 lastObject];

LABEL_8:

  return lastObject;
}

- (void)isFollowUpNotificationEvent
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  eventIdentifier = [self eventIdentifier];
  [OUTLINED_FUNCTION_0_6(eventIdentifier v3];
}

- (void)isCriticalNotificationEvent
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  eventIdentifier = [self eventIdentifier];
  [OUTLINED_FUNCTION_0_6(eventIdentifier v3];
}

- (void)scheduleItemIdentifier
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  eventIdentifier = [self eventIdentifier];
  [OUTLINED_FUNCTION_0_6(eventIdentifier v3];
}

@end