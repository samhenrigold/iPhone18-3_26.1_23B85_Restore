@interface IMCloudKitEventNotificationManagerRuntimeTest
- (id)createSyncStatisticsForMockSyncState:(id)state;
- (void)sendSyncStateChangedEvent;
- (void)setUp;
- (void)startTest;
- (void)tearDown;
- (void)updateMockSyncState;
@end

@implementation IMCloudKitEventNotificationManagerRuntimeTest

- (void)setUp
{
  v7.receiver = self;
  v7.super_class = IMCloudKitEventNotificationManagerRuntimeTest;
  [(IMRuntimeTest *)&v7 setUp];
  [(IMCloudKitEventNotificationManagerRuntimeTest *)self setDefaultTestDuration:1.0];
  v3 = +[IMCloudKitHooks singletonOverride];
  [(IMCloudKitEventNotificationManagerRuntimeTest *)self setCloudKitHooks:v3];

  v4 = +[IMCloudKitEventNotificationManager sharedInstance];
  [v4 addEventHandler:self];

  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [(IMRuntimeTest *)self testLog:@"Setting up test: %@", v6];
}

- (void)tearDown
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  [(IMRuntimeTest *)self testLog:@"Tearing down test: %@", v4];

  v5 = +[IMCloudKitEventNotificationManager sharedInstance];
  [v5 removeEventHandler:self];

  cloudKitHooks = [(IMCloudKitEventNotificationManagerRuntimeTest *)self cloudKitHooks];
  v7 = objc_alloc_init(IMCloudKitMockSyncState);
  [cloudKitHooks setTestState:v7];

  [(IMCloudKitEventNotificationManagerRuntimeTest *)self setCloudKitHooks:0];
  v8.receiver = self;
  v8.super_class = IMCloudKitEventNotificationManagerRuntimeTest;
  [(IMRuntimeTest *)&v8 tearDown];
}

- (id)createSyncStatisticsForMockSyncState:(id)state
{
  stateCopy = state;
  [stateCopy IMCloudKitSyncControllerSyncState];
  [stateCopy IMCloudKitSyncControllerSyncRecordType];

  return MEMORY[0x1EEE66B58](IMCloudKitSyncStatistics, sel__createSyncStatisticsDictionaryForSyncControllerSyncState_syncType_count_max_unresolved_);
}

- (void)updateMockSyncState
{
  cloudKitHooks = [(IMCloudKitEventNotificationManagerRuntimeTest *)self cloudKitHooks];
  testState = [cloudKitHooks testState];

  [testState setIMCloudKitSyncDate:0];
  [testState setIMCloudKitIsSyncing:1];
  [testState setIMCloudKitSyncControllerSyncType:2];
  [testState setIMCloudKitIsEligibleForTruthZone:1];
  [testState setIMCloudKitSyncingEnabled:1];
  [testState setIMCloudKitSyncControllerSyncRecordType:1];
  [(IMCloudKitEventNotificationManagerRuntimeTest *)self willUpdateSyncState:testState];
  v4 = [(IMCloudKitEventNotificationManagerRuntimeTest *)self createSyncStatisticsForMockSyncState:testState];
  [(IMCloudKitEventNotificationManagerRuntimeTest *)self willSendSyncState:testState withSyncStatistics:v4];
  cloudKitHooks2 = [(IMCloudKitEventNotificationManagerRuntimeTest *)self cloudKitHooks];
  [cloudKitHooks2 setSyncStats:v4];

  v6 = +[IMCloudKitHooks sharedInstance];
  syncStateDictionary = [v6 syncStateDictionary];
  [(IMRuntimeTest *)self testLog:@"Updated mock sync state to: %@, with sync stats: %@", syncStateDictionary, v4];

  cloudKitHooks3 = [(IMCloudKitEventNotificationManagerRuntimeTest *)self cloudKitHooks];
  [cloudKitHooks3 sendSyncChangedEvent];
}

- (void)sendSyncStateChangedEvent
{
  [(IMCloudKitEventNotificationManagerRuntimeTest *)self updateMockSyncState];
  v3 = +[IMCloudKitHooks sharedInstance];
  syncStateDictionary = [v3 syncStateDictionary];
  [(IMRuntimeTest *)self testLog:@"Sending fake syncState dictionary: %@", syncStateDictionary];

  cloudKitHooks = [(IMCloudKitEventNotificationManagerRuntimeTest *)self cloudKitHooks];
  [cloudKitHooks sendSyncChangedEvent];
}

- (void)startTest
{
  [(IMCloudKitEventNotificationManagerRuntimeTest *)self defaultTestDuration];
  [(IMRuntimeTest *)self testLog:@"Running test for %f seconds", v3];
  [(IMCloudKitEventNotificationManagerRuntimeTest *)self updateMockSyncState];
  [(IMCloudKitEventNotificationManagerRuntimeTest *)self defaultTestDuration];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1A8397118;
  v4[3] = &unk_1E780FCB0;
  v4[4] = self;
  [(IMRuntimeTest *)self dispatchAfter:v4 block:?];
}

@end