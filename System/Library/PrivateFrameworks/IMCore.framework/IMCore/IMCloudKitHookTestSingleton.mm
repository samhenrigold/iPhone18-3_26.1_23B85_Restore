@interface IMCloudKitHookTestSingleton
+ (id)logHandle;
- (BOOL)isStartingSync;
- (IMCloudKitHookTestSingleton)init;
- (id)logHandle;
- (void)fetchSyncStateStatistics;
- (void)sendSyncChangedEvent;
- (void)setControllerSyncState:(unint64_t)state;
- (void)setControllerSyncType:(int64_t)type;
- (void)setEligibleForTruthZone:(BOOL)zone;
- (void)setEnabled:(BOOL)enabled;
- (void)setIMCloudKitSyncErrors:(id)errors;
- (void)setIsInExitState:(BOOL)state;
- (void)setLastSyncDate:(id)date;
- (void)setSyncing:(BOOL)syncing;
- (void)setTestState:(id)state;
@end

@implementation IMCloudKitHookTestSingleton

- (IMCloudKitHookTestSingleton)init
{
  v10.receiver = self;
  v10.super_class = IMCloudKitHookTestSingleton;
  v2 = [(IMCloudKitHookTestSingleton *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF20]);
    v4 = objc_alloc_init(MEMORY[0x1E695DF20]);
    v5 = [IMCloudKitSyncStatistics _createSyncStatisticsDictionary:0 messageSyncCount:0 messageUnresolvedCount:0 chatCount:0 chatSyncCount:0 chatUnresolvedCount:0 attachmentCount:0 attachmentSyncCount:0 attachmentUnresolvedCount:0 serverRecordCounts:v3 syncStoreCounts:v4];
    syncStats = v2->_syncStats;
    v2->_syncStats = v5;

    v7 = objc_alloc_init(IMCloudKitMockSyncState);
    testState = v2->_testState;
    v2->_testState = v7;

    [(IMCloudKitMockSyncState *)v2->_testState setIMCloudKitSyncingEnabled:1];
    [(IMCloudKitMockSyncState *)v2->_testState setIMCloudKitIsEligibleForTruthZone:1];
  }

  return v2;
}

+ (id)logHandle
{
  if (qword_1ED767780 != -1)
  {
    sub_1A84E2584();
  }

  v3 = qword_1ED767768;

  return v3;
}

- (id)logHandle
{
  v2 = objc_opt_class();

  return [v2 logHandle];
}

- (void)setTestState:(id)state
{
  objc_storeStrong(&self->_testState, state);

  [(IMCloudKitHookTestSingleton *)self sendSyncChangedEvent];
}

- (void)fetchSyncStateStatistics
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A8395378;
  block[3] = &unk_1E780FCB0;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)sendSyncChangedEvent
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = +[IMCloudKitHooks sharedInstance];
  syncStateDictionary = [v3 syncStateDictionary];

  logHandle = [(IMCloudKitHookTestSingleton *)self logHandle];
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = syncStateDictionary;
    _os_log_impl(&dword_1A823F000, logHandle, OS_LOG_TYPE_INFO, "Sending fake state: %@ from IMCloudKitHooksTestSingleton", &v7, 0xCu);
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"com.apple.IMCore.IMCloudKitHooks.ValuesChanged" object:0 userInfo:syncStateDictionary];
}

- (void)setEnabled:(BOOL)enabled
{
  [(IMCloudKitMockSyncState *)self->_testState setIMCloudKitSyncingEnabled:?];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A83955AC;
  block[3] = &unk_1E7813DC0;
  enabledCopy = enabled;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  [(IMCloudKitHookTestSingleton *)self sendSyncChangedEvent];
}

- (void)setEligibleForTruthZone:(BOOL)zone
{
  [(IMCloudKitMockSyncState *)self->_testState setIMCloudKitIsEligibleForTruthZone:zone];

  [(IMCloudKitHookTestSingleton *)self sendSyncChangedEvent];
}

- (void)setSyncing:(BOOL)syncing
{
  [(IMCloudKitMockSyncState *)self->_testState setIMCloudKitIsSyncing:syncing];

  [(IMCloudKitHookTestSingleton *)self sendSyncChangedEvent];
}

- (BOOL)isStartingSync
{
  if ([(IMCloudKitMockSyncState *)self->_testState IMCloudKitStartingInitialSync])
  {
    return 1;
  }

  testState = self->_testState;

  return [(IMCloudKitMockSyncState *)testState IMCloudKitStartingPeriodicSync];
}

- (void)setLastSyncDate:(id)date
{
  [(IMCloudKitMockSyncState *)self->_testState setIMCloudKitSyncDate:date];

  [(IMCloudKitHookTestSingleton *)self sendSyncChangedEvent];
}

- (void)setIsInExitState:(BOOL)state
{
  [(IMCloudKitMockSyncState *)self->_testState setIMCloudKitIsInExitState:state];

  [(IMCloudKitHookTestSingleton *)self sendSyncChangedEvent];
}

- (void)setControllerSyncState:(unint64_t)state
{
  [(IMCloudKitMockSyncState *)self->_testState setIMCloudKitSyncControllerSyncState:?];

  MEMORY[0x1EEE66B58](self, sel_setSyncing_);
}

- (void)setControllerSyncType:(int64_t)type
{
  [(IMCloudKitMockSyncState *)self->_testState setIMCloudKitSyncControllerSyncType:type];

  [(IMCloudKitHookTestSingleton *)self sendSyncChangedEvent];
}

- (void)setIMCloudKitSyncErrors:(id)errors
{
  [(IMCloudKitMockSyncState *)self->_testState setIMCloudKitSyncErrors:errors];

  [(IMCloudKitHookTestSingleton *)self sendSyncChangedEvent];
}

@end