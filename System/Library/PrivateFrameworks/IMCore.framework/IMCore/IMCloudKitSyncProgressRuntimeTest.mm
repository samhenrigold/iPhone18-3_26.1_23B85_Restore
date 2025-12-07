@interface IMCloudKitSyncProgressRuntimeTest
- (id)createSyncStatisticsForMockSyncState:(id)state;
- (void)cloudKitEventNotificationManager:(id)manager syncProgressDidUpdate:(id)update;
- (void)setUp;
- (void)startTest;
@end

@implementation IMCloudKitSyncProgressRuntimeTest

- (void)cloudKitEventNotificationManager:(id)manager syncProgressDidUpdate:(id)update
{
  [(IMRuntimeTest *)self testLog:@"Test got syncState progress: %@", update];
  [(IMCloudKitSyncProgressRuntimeTest *)self progressRescheduleDelay];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1A8316274;
  v5[3] = &unk_1E780FCB0;
  v5[4] = self;
  [(IMRuntimeTest *)self dispatchAfter:v5 block:?];
}

- (void)startTest
{
  [(IMRuntimeTest *)self testLog:@"Starting test"];

  MEMORY[0x1EEE66B58](self, sel_sendSyncStateChangedEvent);
}

- (id)createSyncStatisticsForMockSyncState:(id)state
{
  stateCopy = state;
  [stateCopy IMCloudKitSyncControllerSyncState];
  [stateCopy IMCloudKitSyncControllerSyncRecordType];

  [(IMCloudKitSyncProgressRuntimeTest *)self progressCount];
  [(IMCloudKitSyncProgressRuntimeTest *)self maxProgressCount];

  return MEMORY[0x1EEE66B58](IMCloudKitSyncStatistics, sel__createSyncStatisticsDictionaryForSyncControllerSyncState_syncType_count_max_unresolved_);
}

- (void)setUp
{
  v3.receiver = self;
  v3.super_class = IMCloudKitSyncProgressRuntimeTest;
  [(IMCloudKitEventNotificationManagerRuntimeTest *)&v3 setUp];
  [(IMCloudKitSyncProgressRuntimeTest *)self setProgressRescheduleDelay:3.0];
}

@end