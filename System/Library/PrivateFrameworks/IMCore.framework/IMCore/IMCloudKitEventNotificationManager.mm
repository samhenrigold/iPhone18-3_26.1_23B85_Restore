@interface IMCloudKitEventNotificationManager
+ (id)logHandle;
+ (id)sharedInstance;
- (BOOL)_hasProgressEventListeners;
- (BOOL)accountHasiMessageEnabled;
- (BOOL)didPromptForCloudKitSync;
- (IMCloudKitEventHandlerAccountInfoProvider)accountInfoProvider;
- (IMCloudKitEventNotificationManager)init;
- (IMCloudKitSyncState)syncState;
- (NSTimer)fetchStatsTimer;
- (id)logHandle;
- (id)syncStateWithDictionary:(id)dictionary;
- (void)_cancelStatsFetchingTimer;
- (void)_fetchSyncStateStatistics:(id)statistics;
- (void)_rescheduleFetchSyncProgress;
- (void)_sendHiddenProgressToEventListeners;
- (void)_sendProgressToEventListeners:(id)listeners;
- (void)_sendProgressToEventListenersDeferred;
- (void)_sendSyncStateChangedEventToEventListeners:(id)listeners;
- (void)_sendSyncStatisticsToEventHandlers:(id)handlers error:(id)error;
- (void)_syncStateDidChange:(id)change;
- (void)_timerExpiredForSyncStatsFetching:(id)fetching;
- (void)_updateProgressWithState:(id)state;
- (void)disableAllSyncEnabledCloudKitDevices;
- (void)fetchRampStateWithCompletion:(id)completion;
- (void)fetchSyncDebuggingInfo:(id)info;
- (void)fetchSyncState;
- (void)fetchSyncStateAfterClearingErrors;
- (void)fetchSyncStateAfterClearingErrorsWithRepairSuccess:(BOOL)success completion:(id)completion;
- (void)fetchSyncStateAfterFetchingAccountStatus;
- (void)fetchSyncStateStatistics;
- (void)fetchSyncStateStatisticsWithCompletion:(id)completion;
- (void)fetchSyncStateWithCompletion:(id)completion;
- (void)performAdditionalStorageRequiredCheck;
- (void)setCloudKitSyncEnabled:(BOOL)enabled;
- (void)setCloudKitSyncEnabled:(BOOL)enabled withCompletion:(id)completion;
- (void)setDidPromptForCloudKitSync:(BOOL)sync;
- (void)startInitialSync;
- (void)startPeriodicSync;
- (void)startUserInitiatedSync;
@end

@implementation IMCloudKitEventNotificationManager

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A8257A60;
  block[3] = &unk_1E78102B8;
  block[4] = self;
  if (qword_1ED767730 != -1)
  {
    dispatch_once(&qword_1ED767730, block);
  }

  v2 = qword_1EB2E9FC0;

  return v2;
}

- (IMCloudKitEventNotificationManager)init
{
  v10.receiver = self;
  v10.super_class = IMCloudKitEventNotificationManager;
  v2 = [(IMCloudKitEventNotificationManager *)&v10 init];
  v3 = v2;
  if (v2)
  {
    v2->_progressPollingInterval = 30.0;
    v4 = objc_alloc_init(MEMORY[0x1E69A8360]);
    eventHandlers = v3->_eventHandlers;
    v3->_eventHandlers = v4;

    v6 = objc_alloc_init(MEMORY[0x1E69A8068]);
    notificationManager = v3->_notificationManager;
    v3->_notificationManager = v6;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel__syncStateDidChange_ name:@"com.apple.IMCore.IMCloudKitHooks.ValuesChanged" object:0];
  }

  return v3;
}

- (void)fetchSyncState
{
  cloudKitHooks = [(IMCloudKitEventNotificationManager *)self cloudKitHooks];
  [cloudKitHooks broadcastCloudKitState];
}

- (BOOL)accountHasiMessageEnabled
{
  accountInfoProvider = [(IMCloudKitEventNotificationManager *)self accountInfoProvider];

  if (!accountInfoProvider)
  {
    return 1;
  }

  accountInfoProvider2 = [(IMCloudKitEventNotificationManager *)self accountInfoProvider];
  v5 = [accountInfoProvider2 cloudKitEventNotificationManagerAccountHasiMessageEnabled:self];

  return v5;
}

- (IMCloudKitEventHandlerAccountInfoProvider)accountInfoProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_accountInfoProvider);

  return WeakRetained;
}

- (id)logHandle
{
  v2 = objc_opt_class();

  return [v2 logHandle];
}

+ (id)logHandle
{
  if (qword_1ED767778 != -1)
  {
    sub_1A825E148();
  }

  v3 = qword_1ED767760;

  return v3;
}

- (NSTimer)fetchStatsTimer
{
  WeakRetained = objc_loadWeakRetained(&self->_fetchStatsTimer);

  return WeakRetained;
}

- (BOOL)_hasProgressEventListeners
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1A82A6D1C;
  v4[3] = &unk_1E7810BB0;
  v4[4] = &v5;
  [(IMCloudKitEventNotificationManager *)self visitEventHandlers:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (IMCloudKitSyncState)syncState
{
  previousState = [(IMCloudKitEventNotificationManager *)self previousState];
  if (!previousState)
  {
    v4 = [IMCloudKitSyncState alloc];
    accountHasiMessageEnabled = [(IMCloudKitEventNotificationManager *)self accountHasiMessageEnabled];
    cloudKitHooks = [(IMCloudKitEventNotificationManager *)self cloudKitHooks];
    syncStateDictionary = [cloudKitHooks syncStateDictionary];
    previousState = [(IMCloudKitSyncState *)v4 initWithAccountEnabled:accountHasiMessageEnabled stateDictionary:syncStateDictionary];
  }

  return previousState;
}

- (id)syncStateWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [[IMCloudKitSyncState alloc] initWithAccountEnabled:[(IMCloudKitEventNotificationManager *)self accountHasiMessageEnabled] stateDictionary:dictionaryCopy];

  return v5;
}

- (void)_sendSyncStateChangedEventToEventListeners:(id)listeners
{
  listenersCopy = listeners;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1A82A4CC4;
  v6[3] = &unk_1E78109C8;
  v6[4] = self;
  v7 = listenersCopy;
  v5 = listenersCopy;
  [(IMCloudKitEventNotificationManager *)self visitEventHandlers:v6];
}

- (void)_syncStateDidChange:(id)change
{
  v9 = *MEMORY[0x1E69E9840];
  userInfo = [change userInfo];
  v5 = [(IMCloudKitEventNotificationManager *)self syncStateWithDictionary:userInfo];

  [(IMCloudKitEventNotificationManager *)self setPreviousState:v5];
  logHandle = [(IMCloudKitEventNotificationManager *)self logHandle];
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_1A823F000, logHandle, OS_LOG_TYPE_INFO, "received new sync state: %@", &v7, 0xCu);
  }

  [(IMCloudKitEventNotificationManager *)self _sendSyncStateChangedEventToEventListeners:v5];
  [(IMCloudKitEventNotificationManager *)self _updateProgressWithState:v5];
}

- (void)fetchSyncStateAfterFetchingAccountStatus
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "Requesting to broadcast CloudKit syncState after fetching account status", v5, 2u);
    }
  }

  cloudKitHooks = [(IMCloudKitEventNotificationManager *)self cloudKitHooks];
  [cloudKitHooks broadcastCloudKitStateAfterFetchingAccountStatus];
}

- (void)fetchSyncStateWithCompletion:(id)completion
{
  completionCopy = completion;
  notificationManager = [(IMCloudKitEventNotificationManager *)self notificationManager];
  v6 = [notificationManager createEventListenerForNotificationName:@"com.apple.IMCore.IMCloudKitHooks.ValuesChanged" object:0];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1A82A4FF4;
  v8[3] = &unk_1E7810A10;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  [v6 startListeningForEventTarget:self sendStartingEvent:&unk_1F1B6DF60 completion:v8];
}

- (void)fetchRampStateWithCompletion:(id)completion
{
  completionCopy = completion;
  notificationManager = [(IMCloudKitEventNotificationManager *)self notificationManager];
  v6 = [notificationManager createEventListenerForNotificationName:@"IMCloudKitFetchedRampStateNotification" object:0];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1A82A5228;
  v8[3] = &unk_1E7810A38;
  v9 = completionCopy;
  v7 = completionCopy;
  [v6 startListeningForEventTarget:self sendStartingEvent:&unk_1F1B6DF80 completion:v8];
}

- (void)fetchSyncStateAfterClearingErrors
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isMessagesIniCloudVersion2 = [mEMORY[0x1E69A8070] isMessagesIniCloudVersion2];

  if ((isMessagesIniCloudVersion2 & 1) == 0)
  {
    cloudKitHooks = [(IMCloudKitEventNotificationManager *)self cloudKitHooks];
    [cloudKitHooks broadcastCloudKitStateAfterClearingErrors];
  }
}

- (void)fetchSyncStateAfterClearingErrorsWithRepairSuccess:(BOOL)success completion:(id)completion
{
  completionCopy = completion;
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isMessagesIniCloudVersion2 = [mEMORY[0x1E69A8070] isMessagesIniCloudVersion2];

  if ((isMessagesIniCloudVersion2 & 1) == 0)
  {
    notificationManager = [(IMCloudKitEventNotificationManager *)self notificationManager];
    v10 = [notificationManager createEventListenerForNotificationName:@"com.apple.IMCore.IMCloudKitHooks.ValuesChanged" object:0];

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_1A82A5528;
    v11[3] = &unk_1E7810A60;
    v11[4] = self;
    v12 = completionCopy;
    successCopy = success;
    [v10 startListeningForEventTarget:self sendStartingEvent:&unk_1F1B6DFA0 completion:v11];
  }
}

- (void)setCloudKitSyncEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v13 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = @"NO";
      if (enabledCopy)
      {
        v6 = @"YES";
      }

      *buf = 138412290;
      v12 = v6;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "set messages in cloud enabled: %@", buf, 0xCu);
    }
  }

  notificationManager = [(IMCloudKitEventNotificationManager *)self notificationManager];
  v8 = [notificationManager createEventListenerForNotificationName:@"com.apple.IMCore.IMCloudKitHooks.SetEnabledReturned" object:0];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1A82A5998;
  v9[3] = &unk_1E7810AC8;
  v10 = enabledCopy;
  [v8 startListeningForEventTarget:self sendStartingEvent:v9 completion:&unk_1F1B6DFC0];
}

- (void)setCloudKitSyncEnabled:(BOOL)enabled withCompletion:(id)completion
{
  enabledCopy = enabled;
  v17 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  logHandle = [(IMCloudKitEventNotificationManager *)self logHandle];
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v16 = enabledCopy;
    _os_log_impl(&dword_1A823F000, logHandle, OS_LOG_TYPE_INFO, "set messages in cloud enabled: %{BOOL}d", buf, 8u);
  }

  notificationManager = [(IMCloudKitEventNotificationManager *)self notificationManager];
  v9 = [notificationManager createEventListenerForNotificationName:@"com.apple.IMCore.IMCloudKitHooks.SetEnabledReturned" object:0];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1A82A5B94;
  v13[3] = &unk_1E7810AC8;
  v14 = enabledCopy;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1A82A5BE8;
  v11[3] = &unk_1E7810A38;
  v12 = completionCopy;
  v10 = completionCopy;
  [v9 startListeningForEventTarget:self sendStartingEvent:v13 completion:v11];
}

- (void)startPeriodicSync
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "beginning periodic sync", v5, 2u);
    }
  }

  cloudKitHooks = [(IMCloudKitEventNotificationManager *)self cloudKitHooks];
  [cloudKitHooks initiatePeriodicSync];
}

- (void)startUserInitiatedSync
{
  cloudKitHooks = [(IMCloudKitEventNotificationManager *)self cloudKitHooks];
  [cloudKitHooks startUserInitiatedSync];
}

- (void)startInitialSync
{
  logHandle = [(IMCloudKitEventNotificationManager *)self logHandle];
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_1A823F000, logHandle, OS_LOG_TYPE_INFO, "beginning initial sync", v5, 2u);
  }

  cloudKitHooks = [(IMCloudKitEventNotificationManager *)self cloudKitHooks];
  [cloudKitHooks initiateSync:@"initial" forceRunNow:1 reply:&unk_1F1B6DFE0];
}

- (BOOL)didPromptForCloudKitSync
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults objectForKey:@"HasPromptedForMessagesInCloud"];

  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (void)setDidPromptForCloudKitSync:(BOOL)sync
{
  syncCopy = sync;
  v9 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = @"NO";
      if (syncCopy)
      {
        v5 = @"YES";
      }

      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_INFO, "set did prompt for cloud kit sync to %@", &v7, 0xCu);
    }
  }

  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults setBool:syncCopy forKey:@"HasPromptedForMessagesInCloud"];
}

- (void)disableAllSyncEnabledCloudKitDevices
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "attempting to disable all icloud devices", v6, 2u);
    }
  }

  notificationManager = [(IMCloudKitEventNotificationManager *)self notificationManager];
  v5 = [notificationManager createEventListenerForNotificationName:@"com.apple.IMCore.IMCloudKitHooks.tryToDisableAllDevicesReturned" object:0];

  [v5 startListeningForEventTarget:self sendStartingEvent:&unk_1F1B6E020 completion:&unk_1F1B6E000];
}

- (void)performAdditionalStorageRequiredCheck
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "Check if additional storage is required", v6, 2u);
    }
  }

  notificationManager = [(IMCloudKitEventNotificationManager *)self notificationManager];
  v5 = [notificationManager createEventListenerForNotificationName:@"com.apple.IMCore.IMCloudKitHooks.AdditionalStorageCheckReturned" object:0];

  [v5 startListeningForEventTarget:self sendStartingEvent:&unk_1F1B6E060 completion:&unk_1F1B6E040];
}

- (void)_fetchSyncStateStatistics:(id)statistics
{
  statisticsCopy = statistics;
  logHandle = [(IMCloudKitEventNotificationManager *)self logHandle];
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
  {
    sub_1A84DF518(logHandle);
  }

  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = sub_1A82A6800;
  v13 = &unk_1E7810A10;
  selfCopy = self;
  v15 = statisticsCopy;
  v6 = statisticsCopy;
  v7 = _Block_copy(&v10);
  v8 = [(IMCloudKitEventNotificationManager *)self notificationManager:v10];
  v9 = [v8 createEventListenerForNotificationName:@"IMCloudKitFetchedSyncStatsNotification" object:0];

  [v9 startListeningForEventTarget:self sendStartingEvent:&unk_1F1B6E080 completion:v7];
}

- (void)_sendSyncStatisticsToEventHandlers:(id)handlers error:(id)error
{
  handlersCopy = handlers;
  errorCopy = error;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1A82A6A5C;
  v10[3] = &unk_1E7810B38;
  v10[4] = self;
  v11 = handlersCopy;
  v12 = errorCopy;
  v8 = errorCopy;
  v9 = handlersCopy;
  [(IMCloudKitEventNotificationManager *)self visitEventHandlers:v10];
}

- (void)fetchSyncStateStatistics
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_1A82A6B2C;
  v2[3] = &unk_1E7810B60;
  v2[4] = self;
  [(IMCloudKitEventNotificationManager *)self _fetchSyncStateStatistics:v2];
}

- (void)fetchSyncStateStatisticsWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1A82A6BD0;
  v6[3] = &unk_1E7810B88;
  v6[4] = self;
  v7 = completionCopy;
  v5 = completionCopy;
  [(IMCloudKitEventNotificationManager *)self _fetchSyncStateStatistics:v6];
}

- (void)_cancelStatsFetchingTimer
{
  fetchStatsTimer = [(IMCloudKitEventNotificationManager *)self fetchStatsTimer];
  if (fetchStatsTimer)
  {
    v4 = fetchStatsTimer;
    [fetchStatsTimer invalidate];
    [(IMCloudKitEventNotificationManager *)self setFetchStatsTimer:0];
    fetchStatsTimer = v4;
  }
}

- (void)_timerExpiredForSyncStatsFetching:(id)fetching
{
  logHandle = [(IMCloudKitEventNotificationManager *)self logHandle];
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_1A823F000, logHandle, OS_LOG_TYPE_INFO, "Rescheduled sync progress: firing", v5, 2u);
  }

  [(IMCloudKitEventNotificationManager *)self fetchSyncState];
  [(IMCloudKitEventNotificationManager *)self setFetchStatsTimer:0];
}

- (void)_rescheduleFetchSyncProgress
{
  v11 = *MEMORY[0x1E69E9840];
  fetchStatsTimer = [(IMCloudKitEventNotificationManager *)self fetchStatsTimer];

  if (fetchStatsTimer)
  {
    logHandle = [(IMCloudKitEventNotificationManager *)self logHandle];
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_INFO))
    {
      [(IMCloudKitEventNotificationManager *)self progressPollingInterval];
      v9 = 134217984;
      v10 = v5;
      _os_log_impl(&dword_1A823F000, logHandle, OS_LOG_TYPE_INFO, "Rescheduled sync progress pending (interval %f secs)", &v9, 0xCu);
    }
  }

  else
  {
    [(IMCloudKitEventNotificationManager *)self _cancelStatsFetchingTimer];
    logHandle2 = [(IMCloudKitEventNotificationManager *)self logHandle];
    if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_INFO))
    {
      [(IMCloudKitEventNotificationManager *)self progressPollingInterval];
      v9 = 134217984;
      v10 = v7;
      _os_log_impl(&dword_1A823F000, logHandle2, OS_LOG_TYPE_INFO, "Rescheduled sync progress for %f seconds in the future", &v9, 0xCu);
    }

    v8 = MEMORY[0x1E695DFF0];
    [(IMCloudKitEventNotificationManager *)self progressPollingInterval];
    logHandle = [v8 scheduledTimerWithTimeInterval:self target:sel__timerExpiredForSyncStatsFetching_ selector:0 userInfo:0 repeats:?];
    [(IMCloudKitEventNotificationManager *)self setFetchStatsTimer:logHandle];
  }
}

- (void)_sendProgressToEventListenersDeferred
{
  v10 = *MEMORY[0x1E69E9840];
  progressToSend = [(IMCloudKitEventNotificationManager *)self progressToSend];
  [(IMCloudKitEventNotificationManager *)self setProgressToSend:0];
  logHandle = [(IMCloudKitEventNotificationManager *)self logHandle];
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v9 = progressToSend;
    _os_log_impl(&dword_1A823F000, logHandle, OS_LOG_TYPE_INFO, "Sending progress to event handlers: %@", buf, 0xCu);
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1A82A700C;
  v6[3] = &unk_1E78109C8;
  v6[4] = self;
  v7 = progressToSend;
  v5 = progressToSend;
  [(IMCloudKitEventNotificationManager *)self visitEventHandlers:v6];
}

- (void)_sendProgressToEventListeners:(id)listeners
{
  listenersCopy = listeners;
  [(IMCloudKitEventNotificationManager *)self setProgressToSend:listenersCopy];
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isMessagesIniCloudVersion2 = [mEMORY[0x1E69A8070] isMessagesIniCloudVersion2];

  if (isMessagesIniCloudVersion2)
  {
    [(IMCloudKitEventNotificationManager *)self _sendProgressToEventListenersDeferred];
  }

  else
  {
    [(IMCloudKitEventNotificationManager *)self progressBroadcastDelay];
    v8 = v7;
    [listenersCopy broadcastDeferralOverride];
    if (v8 <= v9)
    {
      [listenersCopy broadcastDeferralOverride];
    }

    else
    {
      [(IMCloudKitEventNotificationManager *)self progressBroadcastDelay];
    }

    v11 = v10;
    logHandle = [(IMCloudKitEventNotificationManager *)self logHandle];
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
    {
      sub_1A84DF6D0(logHandle, v11);
    }

    [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__sendProgressToEventListenersDeferred object:0];
    [(IMCloudKitEventNotificationManager *)self performSelector:sel__sendProgressToEventListenersDeferred withObject:0 afterDelay:v11];
  }
}

- (void)_sendHiddenProgressToEventListeners
{
  v3 = [[IMCloudKitSyncProgress alloc] initWithType:2 syncState:0 syncStatistics:0];
  [(IMCloudKitEventNotificationManager *)self _sendProgressToEventListeners:v3];
}

- (void)_updateProgressWithState:(id)state
{
  stateCopy = state;
  fetchStatsTimer = [(IMCloudKitEventNotificationManager *)self fetchStatsTimer];

  if (fetchStatsTimer)
  {
    logHandle = [(IMCloudKitEventNotificationManager *)self logHandle];
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&dword_1A823F000, logHandle, OS_LOG_TYPE_INFO, "Rescheduled sync progress: cancelled", v9, 2u);
    }

    [(IMCloudKitEventNotificationManager *)self _cancelStatsFetchingTimer];
  }

  if ([(IMCloudKitEventNotificationManager *)self _hasProgressEventListeners])
  {
    logHandle2 = [(IMCloudKitEventNotificationManager *)self logHandle];
    if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_DEBUG))
    {
      sub_1A84DF74C(logHandle2);
    }

    v8 = [stateCopy createSyncProgressWithSyncStatistics:0];
    [(IMCloudKitEventNotificationManager *)self _sendProgressToEventListeners:v8];
  }
}

- (void)fetchSyncDebuggingInfo:(id)info
{
  infoCopy = info;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Fetching sync state debugging info…", buf, 2u);
    }
  }

  notificationManager = [(IMCloudKitEventNotificationManager *)self notificationManager];
  v7 = [notificationManager createEventListenerForNotificationName:@"IMCloudKitFetchedSyncDebuggingInfoNotification" object:0];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1A82A76E0;
  v9[3] = &unk_1E7810C00;
  v10 = infoCopy;
  v8 = infoCopy;
  [v7 startListeningForEventTarget:self sendStartingEvent:v9 completion:&unk_1F1B6E0A0];
}

@end