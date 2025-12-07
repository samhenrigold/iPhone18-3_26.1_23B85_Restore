@interface MSAnalytics
+ (void)sendConfigEvent:(id)event;
+ (void)sendPlayIntent:(BOOL)intent;
+ (void)sendPrimaryUserUpdatedOn:(id)on;
+ (void)sendRemovalEvent:(id)event;
+ (void)sendServiceEvent:(id)event;
+ (void)sendServiceRequestLapseEvent:(id)event;
+ (void)sendSetupEvent:(id)event;
+ (void)sendUserRegisteredNumberOfServices:(int)services;
@end

@implementation MSAnalytics

+ (void)sendSetupEvent:(id)event
{
  eventCopy = event;
  eventName = [eventCopy eventName];
  v6 = eventCopy;
  v5 = eventCopy;
  AnalyticsSendEventLazy();
}

+ (void)sendServiceEvent:(id)event
{
  v17[2] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  if ([eventCopy eventType] == 2)
  {
    v16[0] = @"duration";
    v4 = MEMORY[0x277CCABB0];
    stopwatch = [eventCopy stopwatch];
    uUIDString = [v4 numberWithUnsignedLongLong:{objc_msgSend(stopwatch, "elapsedTimeMS")}];
    v17[0] = uUIDString;
    v16[1] = @"didSucceed";
    stopwatch2 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(eventCopy, "didSucceed")}];
    v17[1] = stopwatch2;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
  }

  else
  {
    v14[0] = @"service";
    stopwatch = [eventCopy serviceID];
    uUIDString = [stopwatch UUIDString];
    v15[0] = uUIDString;
    v14[1] = @"duration";
    v9 = MEMORY[0x277CCABB0];
    stopwatch2 = [eventCopy stopwatch];
    v10 = [v9 numberWithUnsignedLongLong:{objc_msgSend(stopwatch2, "elapsedTimeMS")}];
    v15[1] = v10;
    v14[2] = @"didSucceed";
    v11 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(eventCopy, "didSucceed")}];
    v15[2] = v11;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];
  }

  eventName = [eventCopy eventName];

  v13 = v8;
  AnalyticsSendEventLazy();
}

+ (void)sendServiceRequestLapseEvent:(id)event
{
  v14[3] = *MEMORY[0x277D85DE8];
  v13[0] = @"service";
  eventCopy = event;
  serviceID = [eventCopy serviceID];
  v14[0] = serviceID;
  v13[1] = @"durationBetweenRequestAndRecordCreation";
  v5 = MEMORY[0x277CCABB0];
  [eventCopy durationBetweenRequestAndRecordCreation];
  v6 = [v5 numberWithDouble:?];
  v14[1] = v6;
  v13[2] = @"durationBetweenRequestAndReadyToUse";
  v7 = MEMORY[0x277CCABB0];
  [eventCopy durationBetweenRequestAndReadyToUse];
  v9 = v8;

  v10 = [v7 numberWithDouble:v9];
  v14[2] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:3];

  v12 = v11;
  AnalyticsSendEventLazy();
}

+ (void)sendRemovalEvent:(id)event
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"service";
  serviceId = [event serviceId];
  v7[0] = serviceId;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v5 = v4;
  AnalyticsSendEventLazy();
}

+ (void)sendConfigEvent:(id)event
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"service";
  serviceId = [event serviceId];
  v7[0] = serviceId;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v5 = v4;
  AnalyticsSendEventLazy();
}

+ (void)sendUserRegisteredNumberOfServices:(int)services
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"numServices";
  v3 = [MEMORY[0x277CCABB0] numberWithInt:*&services];
  v7[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v5 = v4;
  AnalyticsSendEventLazy();
}

+ (void)sendPlayIntent:(BOOL)intent
{
  intentCopy = intent;
  v16[2] = *MEMORY[0x277D85DE8];
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults doubleForKey:@"cloudMediaServicesPlayBackIntentDate"];
  v6 = v5;

  v7 = [MEMORY[0x277CBEAA8] now];
  [v7 timeIntervalSince1970];
  v9 = v8;

  if (v6 == 0.0)
  {
    v10 = v9;
  }

  else
  {
    v10 = v6;
  }

  v15[0] = @"secondsSinceLastPlayIntent";
  v11 = [MEMORY[0x277CCABB0] numberWithDouble:v9 - v10];
  v15[1] = @"isFromEndpoint";
  v16[0] = v11;
  v12 = [MEMORY[0x277CCABB0] numberWithBool:intentCopy];
  v16[1] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];

  AnalyticsSendEvent();
  standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults2 setDouble:@"cloudMediaServicesPlayBackIntentDate" forKey:v9];
}

+ (void)sendPrimaryUserUpdatedOn:(id)on
{
  v12[3] = *MEMORY[0x277D85DE8];
  v11[0] = @"automatic";
  v3 = MEMORY[0x277CCABB0];
  onCopy = on;
  v5 = [v3 numberWithBool:{objc_msgSend(onCopy, "isAutomatic")}];
  v12[0] = v5;
  v11[1] = @"isOwner";
  v6 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(onCopy, "changedToHomeOwner")}];
  v12[1] = v6;
  v11[2] = @"otherAccount";
  v7 = MEMORY[0x277CCABB0];
  changedToUserNotInHome = [onCopy changedToUserNotInHome];

  v9 = [v7 numberWithBool:changedToUserNotInHome];
  v12[2] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:3];

  AnalyticsSendEvent();
}

@end