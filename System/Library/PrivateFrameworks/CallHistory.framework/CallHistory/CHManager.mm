@interface CHManager
+ (id)limitingCallKindsForCallType:(unsigned int)type;
+ (unsigned)CHCallStatusForCallWithDuration:(double)duration isOriginated:(BOOL)originated isAnswered:(BOOL)answered;
- (BOOL)canLoadOlderRecentCalls;
- (BOOL)showsFaceTimeAudioCalls;
- (BOOL)showsFaceTimeVideoCalls;
- (BOOL)showsTelephonyCalls;
- (CHManager)init;
- (CHManager)initWithContactStore:(id)store featureFlags:(id)flags protectedAppProvider:(id)provider queue:(id)queue;
- (CHManager)initWithFetchingLimitsDictionary:(id)dictionary andCoalescingStrategy:(id)strategy andPostFetchingPredicate:(id)predicate withQueue:(id)queue;
- (CHManager)initWithQueue:(id)queue;
- (NSArray)limitingCallKinds;
- (NSArray)recentCalls;
- (NSArray)uncoalescedRecentCallsSync;
- (NSDate)limitingEndDate;
- (NSDate)limitingStartDate;
- (NSPredicate)postFetchingPredicate;
- (NSSet)allowedProtectedAppBundleIDs;
- (NSString)coalescingStrategy;
- (SyncManagerProtocol)syncManager;
- (double)callTimersGetIncoming;
- (double)callTimersGetLifetime;
- (double)callTimersGetOutgoing;
- (id)_coalescingHashForGroupCall:(id)call usingContactsIfPresent:(id)present;
- (id)_contactIdentifiersByHandleForCalls:(id)calls;
- (id)applyPredicate:(id)predicate toCalls:(id)calls;
- (id)callIdentifiersWithPredicate:(id)predicate limit:(unint64_t)limit offset:(unint64_t)offset batchSize:(unint64_t)size;
- (id)callsWithLimits:(id)limits limit:(unint64_t)limit offset:(unint64_t)offset batchSize:(unint64_t)size;
- (id)callsWithPredicate:(id)predicate limit:(unint64_t)limit offset:(unint64_t)offset batchSize:(unint64_t)size;
- (id)coalescedCallsWithCalls:(id)calls usingStrategy:(id)strategy;
- (id)coalescedCallsWithPredicate:(id)predicate limit:(unint64_t)limit offset:(unint64_t)offset batchSize:(unint64_t)size;
- (id)fetchRecentCallsSyncWithCoalescing:(BOOL)coalescing;
- (id)getLimitsDictionary;
- (id)getLimitsDictionaryForPrivateHeader;
- (id)latestCallMatchingNormalizedRemoteParticipantHandleValues:(id)values;
- (id)latestRecentCallMatchingPredicate:(id)predicate;
- (id)loadOlderRecentCallsSyncWithCoalescing:(BOOL)coalescing;
- (id)loadOlderRecentCallsWithPredicate:(id)predicate;
- (id)protectedBundleIDsExcludingCurrentProcess;
- (id)recentCallsWithPredicate:(id)predicate;
- (id)unCoalesceCall:(id)call;
- (int64_t)callHistoryDBFetchLimit;
- (int64_t)deleteCallsWithPredicate:(id)predicate;
- (int64_t)setRead:(BOOL)read forCallsWithPredicate:(id)predicate;
- (unint64_t)callCountWithPredicate:(id)predicate;
- (unint64_t)coalescedCallCountWithPredicate:(id)predicate;
- (unint64_t)countCallsWithPredicate:(id)predicate;
- (unint64_t)countCallsWithPredicateSync:(id)sync;
- (unint64_t)databaseSizeInBytes;
- (unint64_t)estimateDatabaseSizeInBytes;
- (unsigned)limitingCallTypes;
- (void)addArrayToCallHistory:(id)history;
- (void)addArrayToCallHistory:(id)history withCompletion:(id)completion;
- (void)addMultipleCallsToCallHistory:(id)history;
- (void)addMultipleCallsToCallHistoryWithTransactions:(id)transactions;
- (void)addToCallHistory:(id)history;
- (void)callTimersReset;
- (void)clearDatabase;
- (void)currentLocaleChanged:(id)changed;
- (void)dealloc;
- (void)deleteAllCalls;
- (void)deleteAllCallsSync;
- (void)deleteCall:(id)call;
- (void)deleteCallAtIndex:(unint64_t)index;
- (void)deleteCalls:(id)calls withCompletion:(id)completion;
- (void)deleteCallsWithPredicate:(id)predicate completion:(id)completion;
- (void)deleteTheseCalls:(id)calls;
- (void)deleteTheseCallsSync:(id)sync;
- (void)handleCallHistoryContactStoreChangedInternalNotification:(id)notification;
- (void)handleCallHistoryDatabaseChangedInternalNotification:(id)notification;
- (void)markAllCallsAsReadWithPredicate:(id)predicate;
- (void)protectedAppsChanged;
- (void)registerForNotifications;
- (void)resetCalls;
- (void)setAllowedProtectedAppBundleIDs:(id)ds;
- (void)setCoalescingStrategy:(id)strategy;
- (void)setDefaultInitValues;
- (void)setInitialLimitingCallKinds:(id)kinds;
- (void)setLimitingCallKinds:(id)kinds;
- (void)setLimitingCallKindsSync:(id)sync;
- (void)setLimitingCallTypes:(unsigned int)types;
- (void)setLimitingCallTypesSync:(unsigned int)sync;
- (void)setLimitingEndDate:(id)date;
- (void)setLimitingStartDate:(id)date;
- (void)setOutgoingLocalParticipantUUID:(id)d forRecentCallsMatchingPredicate:(id)predicate;
- (void)setPostFetchingPredicate:(id)predicate;
- (void)setPreFetchingPredicate:(id)predicate;
- (void)setRead:(BOOL)read forCallsWithPredicate:(id)predicate completion:(id)completion;
- (void)setShowsFaceTimeAudioCalls:(BOOL)calls;
- (void)setShowsFaceTimeVideoCalls:(BOOL)calls;
- (void)setShowsProtectedApps:(BOOL)apps;
- (void)setShowsTelephonyCalls:(BOOL)calls;
- (void)updateAutoAnsweredReasonFor:(id)for with:(int64_t)with;
- (void)updateBytesOfDataUsedFor:(id)for with:(id)with;
- (void)updateEmergencyMediaItemFor:(id)for with:(id)with;
- (void)updateMessageStatusFor:(id)for with:(id)with;
- (void)updateReminderUUID:(id)d forRecentCall:(id)call;
@end

@implementation CHManager

- (CHManager)init
{
  v3 = objc_alloc_init(MEMORY[0x1E695CE18]);
  v4 = [(CHManager *)self initWithContactStore:v3];

  return v4;
}

- (void)setDefaultInitValues
{
  [(CHManager *)self setLimitingCallTypesSync:0xFFFFFFFFLL];
  self->_showsFaceTimeVideoCalls = 1;
  self->_showsFaceTimeAudioCalls = 1;
  self->_showsTelephonyCalls = 1;
  self->_generateSyncTransactions = 1;
  self->_numberOfUnseenMissedCalls = 0;
  self->_cacheIsDirty = 1;
  self->_reCoalesce = 1;
  uncoalescedUnFilteredRecentCalls = self->_uncoalescedUnFilteredRecentCalls;
  self->_uncoalescedUnFilteredRecentCalls = 0;

  self->_finishedLoadingAllCalls = 0;
  [(CHManager *)self registerForNotifications];

  maybeLogVersionInfo();
}

- (void)registerForNotifications
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel_handleCallHistoryContactStoreChangedInternalNotification_ name:@"kCallHistoryContactStoreChangedInternalNotification" object:0];
  [defaultCenter addObserver:self selector:sel_handleCallHistoryDatabaseChangedInternalNotification_ name:@"kCallHistoryDatabaseChangedInternalNotification" object:0];
  [defaultCenter addObserver:self selector:sel_currentLocaleChanged_ name:*MEMORY[0x1E695D8F0] object:0];
}

id __24__CHManager_recentCalls__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) logHandle];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v9 = 138543362;
    v10 = v3;
    _os_log_impl(&dword_1C3E90000, v2, OS_LOG_TYPE_DEFAULT, "==> %{public}@", &v9, 0xCu);
  }

  v4 = [*(a1 + 32) fetchRecentCallsSyncWithCoalescing:1];
  v5 = [*(a1 + 32) logHandle];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(*(a1 + 40));
    v7 = [v4 count];
    v9 = 138543618;
    v10 = v6;
    v11 = 2048;
    v12 = v7;
    _os_log_impl(&dword_1C3E90000, v5, OS_LOG_TYPE_DEFAULT, "<== %{public}@ => %lu calls", &v9, 0x16u);
  }

  return v4;
}

- (NSArray)recentCalls
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __24__CHManager_recentCalls__block_invoke;
  v4[3] = &unk_1E81DC320;
  v4[4] = self;
  v4[5] = a2;
  v2 = [(CHSynchronizedLoggable *)self executeSyncWithResult:v4];

  return v2;
}

- (id)protectedBundleIDsExcludingCurrentProcess
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DFD8] set];
  featureFlags = [(CHManager *)self featureFlags];
  if ([featureFlags protectedAppsEnabled])
  {
    showsProtectedApps = [(CHManager *)self showsProtectedApps];

    if (!showsProtectedApps)
    {
      protectedAppProvider = [(CHManager *)self protectedAppProvider];
      protectedApplicationBundleIDs = [protectedAppProvider protectedApplicationBundleIDs];

      logHandle = [(CHSynchronizedLoggable *)self logHandle];
      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138543362;
        v14 = protectedApplicationBundleIDs;
        _os_log_impl(&dword_1C3E90000, logHandle, OS_LOG_TYPE_DEFAULT, "Fetched %{public}@ protected apps to exclude from call history fetches", &v13, 0xCu);
      }

      goto LABEL_15;
    }
  }

  else
  {
  }

  logHandle = [(CHSynchronizedLoggable *)self logHandle];
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
  {
    featureFlags2 = [(CHManager *)self featureFlags];
    if ([featureFlags2 protectedAppsEnabled])
    {
      v10 = @"YES";
    }

    else
    {
      v10 = @"NO";
    }

    if ([(CHManager *)self showsProtectedApps])
    {
      v11 = @"YES";
    }

    else
    {
      v11 = @"NO";
    }

    v13 = 138543618;
    v14 = v10;
    v15 = 2114;
    v16 = v11;
    _os_log_impl(&dword_1C3E90000, logHandle, OS_LOG_TYPE_DEFAULT, "Protected apps feature flag is off %{public}@ or we allow showing protectedApps %{public}@", &v13, 0x16u);
  }

  protectedApplicationBundleIDs = v3;
LABEL_15:

  return protectedApplicationBundleIDs;
}

- (SyncManagerProtocol)syncManager
{
  syncManager = self->_syncManager;
  if (!syncManager)
  {
    v4 = objc_alloc_init(SyncManager);
    v5 = self->_syncManager;
    self->_syncManager = v4;

    syncManager = self->_syncManager;
  }

  return syncManager;
}

- (id)getLimitsDictionary
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = v3;
  limitingCallKinds = self->_limitingCallKinds;
  if (limitingCallKinds)
  {
    [v3 setObject:limitingCallKinds forKeyedSubscript:@"kCHLimitCallKindsKey"];
  }

  else
  {
    v6 = [CHManager limitingCallKindsForCallType:self->_limitingCallTypes];
    [v4 setObject:v6 forKeyedSubscript:@"kCHLimitCallKindsKey"];
  }

  limitingStartDate = self->_limitingStartDate;
  if (limitingStartDate)
  {
    [v4 setObject:limitingStartDate forKeyedSubscript:@"kCHLimitStartDateKey"];
  }

  limitingEndDate = self->_limitingEndDate;
  if (limitingEndDate)
  {
    [v4 setObject:limitingEndDate forKeyedSubscript:@"kCHLimitEndDateKey"];
  }

  featureFlags = [(CHManager *)self featureFlags];
  protectedAppsEnabled = [featureFlags protectedAppsEnabled];

  if (protectedAppsEnabled)
  {
    protectedBundleIDsExcludingCurrentProcess = [(CHManager *)self protectedBundleIDsExcludingCurrentProcess];
    [v4 setObject:protectedBundleIDsExcludingCurrentProcess forKeyedSubscript:@"kCHLimitProtectedBundleIDsKey"];
  }

  return v4;
}

- (int64_t)callHistoryDBFetchLimit
{
  featureFlags = [(CHManager *)self featureFlags];
  increaseCallHistoryEnabled = [featureFlags increaseCallHistoryEnabled];

  if (!increaseCallHistoryEnabled)
  {
    return 200;
  }

  featureFlags2 = [(CHManager *)self featureFlags];
  keepCallsEnabled = [featureFlags2 keepCallsEnabled];
  v7 = &kCallHistoryNoFetchLimit;
  if (!keepCallsEnabled)
  {
    v7 = &kCallHistoryIncreasedFetchLimit;
  }

  v8 = *v7;

  return v8;
}

- (id)getLimitsDictionaryForPrivateHeader
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  featureFlags = [(CHManager *)self featureFlags];
  protectedAppsEnabled = [featureFlags protectedAppsEnabled];

  if (protectedAppsEnabled)
  {
    protectedBundleIDsExcludingCurrentProcess = [(CHManager *)self protectedBundleIDsExcludingCurrentProcess];
    [v3 setObject:protectedBundleIDsExcludingCurrentProcess forKeyedSubscript:@"kCHLimitProtectedBundleIDsKey"];
  }

  v7 = [v3 copy];

  return v7;
}

- (BOOL)canLoadOlderRecentCalls
{
  featureFlags = [(CHManager *)self featureFlags];
  if ([featureFlags increaseCallHistoryEnabled])
  {
    if ([(CHManager *)self finishedLoadingAllCalls])
    {
      cacheIsDirty = [(CHManager *)self cacheIsDirty];
    }

    else
    {
      cacheIsDirty = 1;
    }
  }

  else
  {
    cacheIsDirty = 0;
  }

  return cacheIsDirty;
}

- (void)resetCalls
{
  [(CHManager *)self setCacheIsDirty:1];
  [(CHManager *)self setFinishedLoadingAllCalls:0];
  [(CHManager *)self setReCoalesce:1];
  if (self->_recentCalls)
  {
    v3 = [(CHManager *)self fetchRecentCallsSyncWithCoalescing:1];
  }
}

- (CHManager)initWithQueue:(id)queue
{
  v4 = MEMORY[0x1E695CE18];
  queueCopy = queue;
  v6 = objc_alloc_init(v4);
  v7 = [(CHManager *)self initWithContactStore:v6 featureFlags:0 protectedAppProvider:0 queue:queueCopy];

  return v7;
}

- (CHManager)initWithContactStore:(id)store featureFlags:(id)flags protectedAppProvider:(id)provider queue:(id)queue
{
  storeCopy = store;
  flagsCopy = flags;
  providerCopy = provider;
  v21.receiver = self;
  v21.super_class = CHManager;
  v12 = [(CHSynchronizedLoggable *)&v21 initWithName:"CHManager"];
  v13 = v12;
  if (v12)
  {
    logHandle = [(CHSynchronizedLoggable *)v12 logHandle];
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 0;
      _os_log_impl(&dword_1C3E90000, logHandle, OS_LOG_TYPE_DEFAULT, "Creating CHManager with default values!", v20, 2u);
    }

    [(CHManager *)v13 setDefaultInitValues];
    v15 = [[CHPhoneBookIOSManager alloc] initWithContactStore:storeCopy];
    phoneBookManager = v13->_phoneBookManager;
    v13->_phoneBookManager = v15;

    v17 = flagsCopy;
    if (!flagsCopy)
    {
      v17 = objc_alloc_init(CHFeatureFlags);
    }

    objc_storeStrong(&v13->_featureFlags, v17);
    if (!flagsCopy)
    {
    }

    v18 = providerCopy;
    if (!providerCopy)
    {
      v18 = objc_alloc_init(CHProtectedAppProvider);
    }

    objc_storeStrong(&v13->_protectedAppProvider, v18);
    if (!providerCopy)
    {
    }

    [(CHProtectedAppProvider *)v13->_protectedAppProvider setDelegate:v13];
  }

  return v13;
}

- (CHManager)initWithFetchingLimitsDictionary:(id)dictionary andCoalescingStrategy:(id)strategy andPostFetchingPredicate:(id)predicate withQueue:(id)queue
{
  dictionaryCopy = dictionary;
  strategyCopy = strategy;
  predicateCopy = predicate;
  v13 = [(CHManager *)self initWithQueue:queue];
  v14 = v13;
  if (v13)
  {
    logHandle = [(CHSynchronizedLoggable *)v13 logHandle];
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&dword_1C3E90000, logHandle, OS_LOG_TYPE_DEFAULT, "Creating CHManager with user values!", v17, 2u);
    }

    [(CHManager *)v14 setInitialLimitingCallKinds:dictionaryCopy];
    objc_storeStrong(&v14->_coalescingStrategy, strategy);
    objc_storeStrong(&v14->_postFetchingPredicate, predicate);
  }

  return v14;
}

- (void)setInitialLimitingCallKinds:(id)kinds
{
  kindsCopy = kinds;
  if (kindsCopy)
  {
    v27 = kindsCopy;
    v5 = [kindsCopy objectForKeyedSubscript:@"kCHLimitCallKindsKey"];

    if (v5)
    {
      v6 = [v27 objectForKeyedSubscript:@"kCHLimitCallKindsKey"];
      [(CHManager *)self setLimitingCallKindsSync:v6];
    }

    else
    {
      v7 = [v27 objectForKeyedSubscript:@"kCHLimitCallTypeKey"];
      if (v7)
      {
        v8 = [v27 objectForKeyedSubscript:@"kCHLimitCallTypeKey"];
        v9 = v8;
      }

      else
      {
        v9 = -1;
      }

      v10 = [v27 objectForKeyedSubscript:@"kCHLimitStartDateKey"];
      if (v10)
      {
        v11 = [v27 objectForKeyedSubscript:@"kCHLimitStartDateKey"];
      }

      else
      {
        v11 = 0;
      }

      objc_storeStrong(&self->_limitingStartDate, v11);
      if (v10)
      {
      }

      v12 = [v27 objectForKeyedSubscript:@"kCHLimitEndDateKey"];
      if (v12)
      {
        v13 = [v27 objectForKeyedSubscript:@"kCHLimitEndDateKey"];
      }

      else
      {
        v13 = 0;
      }

      objc_storeStrong(&self->_limitingEndDate, v13);
      if (v12)
      {
      }

      v14 = [v27 objectForKeyedSubscript:@"kShowsFaceTimeVideoCallsKey"];
      if (v14)
      {
        v15 = [v27 objectForKeyedSubscript:@"kShowsFaceTimeVideoCallsKey"];
        p_showsFaceTimeVideoCalls = &self->_showsFaceTimeVideoCalls;
        self->_showsFaceTimeVideoCalls = [v15 BOOLValue];
      }

      else
      {
        p_showsFaceTimeVideoCalls = &self->_showsFaceTimeVideoCalls;
        self->_showsFaceTimeVideoCalls = 1;
      }

      v17 = [v27 objectForKeyedSubscript:@"kShowsFaceTimeAudioCallsKey"];
      if (v17)
      {
        v18 = [v27 objectForKeyedSubscript:@"kShowsFaceTimeAudioCallsKey"];
        p_showsFaceTimeAudioCalls = &self->_showsFaceTimeAudioCalls;
        self->_showsFaceTimeAudioCalls = [v18 BOOLValue];
      }

      else
      {
        p_showsFaceTimeAudioCalls = &self->_showsFaceTimeAudioCalls;
        self->_showsFaceTimeAudioCalls = 1;
      }

      v20 = [v27 objectForKeyedSubscript:@"kShowsTelephonyCallsKey"];
      if (v20)
      {
        v21 = [v27 objectForKeyedSubscript:@"kShowsTelephonyCallsKey"];
        p_showsTelephonyCalls = &self->_showsTelephonyCalls;
        self->_showsTelephonyCalls = [v21 BOOLValue];
      }

      else
      {
        p_showsTelephonyCalls = &self->_showsTelephonyCalls;
        self->_showsTelephonyCalls = 1;
      }

      if (*p_showsFaceTimeVideoCalls)
      {
        v23 = 0;
      }

      else
      {
        v23 = 8;
      }

      v24 = ~v23;
      if (*p_showsFaceTimeAudioCalls)
      {
        v25 = 0;
      }

      else
      {
        v25 = 16;
      }

      if (*p_showsTelephonyCalls)
      {
        v26 = 0;
      }

      else
      {
        v26 = 7;
      }

      [(CHManager *)self setLimitingCallTypesSync:(v24 ^ v25 ^ v26) & v9];
    }

    kindsCopy = v27;
  }
}

- (void)dealloc
{
  logHandle = [(CHSynchronizedLoggable *)self logHandle];
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C3E90000, logHandle, OS_LOG_TYPE_DEFAULT, "CHManager is getting destroyed...", buf, 2u);
  }

  v4.receiver = self;
  v4.super_class = CHManager;
  [(CHManager *)&v4 dealloc];
}

- (void)handleCallHistoryContactStoreChangedInternalNotification:(id)notification
{
  notificationCopy = notification;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __70__CHManager_handleCallHistoryContactStoreChangedInternalNotification___block_invoke;
  v6[3] = &unk_1E81DBE38;
  v6[4] = self;
  v7 = notificationCopy;
  v5 = notificationCopy;
  [(CHSynchronizedLoggable *)self execute:v6];
}

void __70__CHManager_handleCallHistoryContactStoreChangedInternalNotification___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) logHandle];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1C3E90000, v2, OS_LOG_TYPE_DEFAULT, "--- Contact Store changed! Invalidating call's AB info.", v6, 2u);
  }

  [*(a1 + 32) setCacheIsDirty:1];
  [*(a1 + 32) setFinishedLoadingAllCalls:0];
  [*(a1 + 32) setReCoalesce:1];
  v3 = *(a1 + 32);
  if (v3[12])
  {
    v4 = [v3 fetchRecentCallsSyncWithCoalescing:1];
  }

  v5 = [*(a1 + 40) userInfo];
  notifyClientsOfEvent(@"kCallHistoryDatabaseChangedNotification", v5);
}

- (void)setPreFetchingPredicate:(id)predicate
{
  predicateCopy = predicate;
  if (self->_preFetchingPredicate != predicateCopy)
  {
    v7 = predicateCopy;
    objc_storeStrong(&self->_preFetchingPredicate, predicate);
    uncoalescedUnFilteredRecentCalls = self->_uncoalescedUnFilteredRecentCalls;
    self->_uncoalescedUnFilteredRecentCalls = 0;

    [(CHManager *)self resetCalls];
    predicateCopy = v7;
  }
}

- (void)handleCallHistoryDatabaseChangedInternalNotification:(id)notification
{
  notificationCopy = notification;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __66__CHManager_handleCallHistoryDatabaseChangedInternalNotification___block_invoke;
  v6[3] = &unk_1E81DBE38;
  v7 = notificationCopy;
  selfCopy = self;
  v5 = notificationCopy;
  [(CHSynchronizedLoggable *)self execute:v6];
}

void __66__CHManager_handleCallHistoryDatabaseChangedInternalNotification___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) userInfo];
  v3 = [*(a1 + 40) logHandle];
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v8 = 138543362;
      v9 = v2;
      v5 = "--- Got Database changed notification: %{public}@. Make cache dirty and send client DB Changed Notification";
      v6 = v3;
      v7 = 12;
LABEL_6:
      _os_log_impl(&dword_1C3E90000, v6, OS_LOG_TYPE_DEFAULT, v5, &v8, v7);
    }
  }

  else if (v4)
  {
    LOWORD(v8) = 0;
    v5 = "--- Got Database changed notification due to an external change! Make cache dirty and send client DB Changed Notification";
    v6 = v3;
    v7 = 2;
    goto LABEL_6;
  }

  [*(a1 + 40) resetCalls];
}

- (void)currentLocaleChanged:(id)changed
{
  changedCopy = changed;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __34__CHManager_currentLocaleChanged___block_invoke;
  v6[3] = &unk_1E81DBE38;
  v6[4] = self;
  v7 = changedCopy;
  v5 = changedCopy;
  [(CHSynchronizedLoggable *)self execute:v6];
}

void __34__CHManager_currentLocaleChanged___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) logHandle];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    *buf = 138543362;
    v15 = v3;
    _os_log_impl(&dword_1C3E90000, v2, OS_LOG_TYPE_DEFAULT, "--- Received current locale changed notification: %{public}@. Invalidating all calls' caller ID formatted values.", buf, 0xCu);
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = *(*(a1 + 32) + 96);
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8++) setCallerIdFormatted:{0, v9}];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (id)coalescedCallsWithCalls:(id)calls usingStrategy:(id)strategy
{
  v80 = *MEMORY[0x1E69E9840];
  callsCopy = calls;
  strategyCopy = strategy;
  if (![callsCopy count])
  {
    goto LABEL_68;
  }

  selfCopy = self;
  if ([strategyCopy isEqualToString:@"kCHCoalescingStrategyRecents"])
  {
    logHandle = [(CHSynchronizedLoggable *)self logHandle];
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C3E90000, logHandle, OS_LOG_TYPE_DEFAULT, "Coalescing with kCHCoalescingStrategyRecents", buf, 2u);
    }

    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v10 = callsCopy;
    v11 = [v10 countByEnumeratingWithState:&v71 objects:v79 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = 0;
      v14 = *v72;
      do
      {
        v15 = 0;
        v16 = v13;
        do
        {
          if (*v72 != v14)
          {
            objc_enumerationMutation(v10);
          }

          v17 = *(*(&v71 + 1) + 8 * v15);
          if (v16)
          {
            v18 = [v16 coalescedCallWithCall:*(*(&v71 + 1) + 8 * v15) usingStrategy:strategyCopy];
          }

          else
          {
            v18 = v17;
          }

          v19 = v18;
          v20 = v18;
          if (!v18)
          {
            [v9 addObject:v16];
            v20 = v17;
          }

          v13 = v20;

          ++v15;
          v16 = v13;
        }

        while (v12 != v15);
        v12 = [v10 countByEnumeratingWithState:&v71 objects:v79 count:16];
      }

      while (v12);

      self = selfCopy;
      if (!v13)
      {
        goto LABEL_66;
      }

      [v9 addObject:v13];
    }

    else
    {
      v13 = v10;
    }

LABEL_66:
    v52 = [v9 copy];

    goto LABEL_69;
  }

  if (([strategyCopy isEqualToString:@"kCHCoalescingStrategyCollapseIfEqual"] & 1) != 0 || (objc_msgSend(strategyCopy, "isEqualToString:", @"kCHCoalescingStrategyFaceTimeRecents") & 1) != 0 || objc_msgSend(strategyCopy, "isEqualToString:", @"kCHCoalescingStrategyCollapseIfEqualContacts"))
  {
    logHandle2 = [(CHSynchronizedLoggable *)self logHandle];
    if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v78[0] = strategyCopy;
      _os_log_impl(&dword_1C3E90000, logHandle2, OS_LOG_TYPE_DEFAULT, "Coalescing with %@", buf, 0xCu);
    }

    v59 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    v22 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v60 = strategyCopy;
    v55 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if ([strategyCopy isEqualToString:@"kCHCoalescingStrategyCollapseIfEqualContacts"])
    {
      v58 = [(CHManager *)self _contactIdentifiersByHandleForCalls:callsCopy];
    }

    else
    {
      v58 = 0;
    }

    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v56 = callsCopy;
    obj = callsCopy;
    v23 = [obj countByEnumeratingWithState:&v67 objects:v76 count:16];
    v24 = v58;
    if (v23)
    {
      v25 = v23;
      selfCopy2 = self;
      v27 = *v68;
      do
      {
        v28 = 0;
        v61 = v25;
        do
        {
          if (*v68 != v27)
          {
            objc_enumerationMutation(obj);
          }

          v29 = *(*(&v67 + 1) + 8 * v28);
          remoteParticipantHandles = [v29 remoteParticipantHandles];
          if ([remoteParticipantHandles count] == 1)
          {
            v31 = v22;
            v32 = v27;
            anyObject = [remoteParticipantHandles anyObject];
            v34 = [v24 objectForKeyedSubscript:anyObject];

            if (v34)
            {
              value = v34;
            }

            else
            {
              anyObject2 = [remoteParticipantHandles anyObject];
              normalizedValue = [anyObject2 normalizedValue];
              v38 = normalizedValue;
              if (normalizedValue)
              {
                value = normalizedValue;
              }

              else
              {
                anyObject3 = [remoteParticipantHandles anyObject];
                value = [anyObject3 value];

                selfCopy2 = selfCopy;
              }

              v24 = v58;
            }

            v27 = v32;
            v22 = v31;
            v25 = v61;
          }

          else
          {
            if (v24)
            {
              [(CHManager *)selfCopy2 _coalescingHashForGroupCall:v29 usingContactsIfPresent:v24];
            }

            else
            {
              [v29 notificationThreadIdentifier];
            }
            value = ;
          }

          if (![value length])
          {
            uniqueId = [v29 uniqueId];

            value = uniqueId;
          }

          if ([value length])
          {
            v41 = [v22 objectForKeyedSubscript:value];
            if (v41)
            {
              v42 = v41;
              v43 = [v41 coalescedCallWithCall:v29 usingStrategy:v60];

              if (v43)
              {
                [v22 setObject:v43 forKeyedSubscript:value];
              }
            }

            else
            {
              [v22 setObject:v29 forKeyedSubscript:value];
              [v59 addObject:value];
            }
          }

          else
          {
            logHandle3 = [(CHSynchronizedLoggable *)selfCopy2 logHandle];
            if (os_log_type_enabled(logHandle3, OS_LOG_TYPE_ERROR))
            {
              [(CHManager *)buf coalescedCallsWithCalls:v29 usingStrategy:v78, logHandle3];
            }
          }

          ++v28;
        }

        while (v25 != v28);
        v25 = [obj countByEnumeratingWithState:&v67 objects:v76 count:16];
      }

      while (v25);
    }

    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v45 = v59;
    v46 = [v45 countByEnumeratingWithState:&v63 objects:v75 count:16];
    v47 = v55;
    callsCopy = v56;
    strategyCopy = v60;
    if (v46)
    {
      v48 = v46;
      v49 = *v64;
      do
      {
        for (i = 0; i != v48; ++i)
        {
          if (*v64 != v49)
          {
            objc_enumerationMutation(v45);
          }

          v51 = [v22 objectForKeyedSubscript:{*(*(&v63 + 1) + 8 * i), v55}];
          [v47 addObject:v51];
        }

        v48 = [v45 countByEnumeratingWithState:&v63 objects:v75 count:16];
      }

      while (v48);
    }

    v52 = [v47 copy];
    self = selfCopy;
    goto LABEL_69;
  }

  if (strategyCopy)
  {
LABEL_68:
    v52 = 0;
    goto LABEL_69;
  }

  logHandle4 = [(CHSynchronizedLoggable *)self logHandle];
  if (os_log_type_enabled(logHandle4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v78[0] = 0;
    _os_log_impl(&dword_1C3E90000, logHandle4, OS_LOG_TYPE_DEFAULT, "Returning calls with no coalescing since none or invalid (%{public}@) strategy was provided", buf, 0xCu);
  }

  v52 = callsCopy;
LABEL_69:
  [(CHManager *)self setReCoalesce:0, v55];

  return v52;
}

- (id)_coalescingHashForGroupCall:(id)call usingContactsIfPresent:(id)present
{
  v23 = *MEMORY[0x1E69E9840];
  presentCopy = present;
  remoteParticipantHandles = [call remoteParticipantHandles];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = [remoteParticipantHandles countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(remoteParticipantHandles);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = [presentCopy objectForKeyedSubscript:v12];
        v14 = v13;
        if (!v13)
        {
          v13 = v12;
        }

        v9 ^= [v13 hash];
      }

      v8 = [remoteParticipantHandles countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v9];
  stringValue = [v15 stringValue];

  return stringValue;
}

- (id)_contactIdentifiersByHandleForCalls:(id)calls
{
  v46 = *MEMORY[0x1E69E9840];
  callsCopy = calls;
  v4 = +[CHSharedAddressBook get];
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = callsCopy;
  v30 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v30)
  {
    v29 = *v41;
    do
    {
      v6 = 0;
      do
      {
        if (*v41 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v31 = v6;
        v7 = *(*(&v40 + 1) + 8 * v6);
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v35 = v7;
        validRemoteParticipantHandles = [v7 validRemoteParticipantHandles];
        v9 = [validRemoteParticipantHandles countByEnumeratingWithState:&v36 objects:v44 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v37;
          v33 = *v37;
          v34 = validRemoteParticipantHandles;
          do
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v37 != v11)
              {
                objc_enumerationMutation(validRemoteParticipantHandles);
              }

              v13 = *(*(&v36 + 1) + 8 * i);
              v14 = [v5 objectForKeyedSubscript:v13];

              if (!v14)
              {
                value = [v13 value];
                v16 = [v4 fetchAddressBookInfoFromCacheForKey:value];

                v17 = [v16 valueForKey:@"kCHABCacheCNContactIdKey"];
                if (v17)
                {
                  [v5 setObject:v17 forKeyedSubscript:v13];
                }

                else
                {
                  phoneBookManager = self->_phoneBookManager;
                  [v13 value];
                  v19 = v5;
                  v21 = v20 = v4;
                  isoCountryCode = [v35 isoCountryCode];
                  v23 = -[CHPhoneBookIOSManager getRecordId:countryCode:isEmail:](phoneBookManager, "getRecordId:countryCode:isEmail:", v21, isoCountryCode, [v13 type] == 3);

                  v4 = v20;
                  v5 = v19;
                  value2 = [v13 value];
                  [v4 insertAddressBookInfoIntoCache:v23 forKey:value2];

                  v25 = [v23 valueForKey:@"kCHABCacheCNContactIdKey"];
                  [v19 setObject:v25 forKeyedSubscript:v13];

                  validRemoteParticipantHandles = v34;
                  v11 = v33;
                }
              }
            }

            v10 = [validRemoteParticipantHandles countByEnumeratingWithState:&v36 objects:v44 count:16];
          }

          while (v10);
        }

        v6 = v31 + 1;
      }

      while (v31 + 1 != v30);
      v30 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
    }

    while (v30);
  }

  v26 = [v5 copy];

  return v26;
}

- (id)loadOlderRecentCallsWithPredicate:(id)predicate
{
  predicateCopy = predicate;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __47__CHManager_loadOlderRecentCallsWithPredicate___block_invoke;
  v9[3] = &unk_1E81DC348;
  v10 = predicateCopy;
  v11 = a2;
  v9[4] = self;
  v6 = predicateCopy;
  v7 = [(CHSynchronizedLoggable *)self executeSyncWithResult:v9];

  return v7;
}

id __47__CHManager_loadOlderRecentCallsWithPredicate___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) setShouldLoadOlderCalls:1];
  v2 = [*(a1 + 32) logHandle];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    v10 = 138543362;
    v11 = v3;
    _os_log_impl(&dword_1C3E90000, v2, OS_LOG_TYPE_DEFAULT, "==> %{public}@", &v10, 0xCu);
  }

  v4 = [*(a1 + 32) loadOlderRecentCallsSyncWithCoalescing:1];
  v5 = [*(a1 + 32) applyPredicate:*(a1 + 40) toCalls:v4];
  v6 = [*(a1 + 32) logHandle];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(*(a1 + 48));
    v8 = [v4 count];
    v10 = 138543618;
    v11 = v7;
    v12 = 2048;
    v13 = v8;
    _os_log_impl(&dword_1C3E90000, v6, OS_LOG_TYPE_DEFAULT, "<== %{public}@ => %lu calls", &v10, 0x16u);
  }

  return v5;
}

- (NSArray)uncoalescedRecentCallsSync
{
  v3 = [(CHManager *)self fetchRecentCallsSyncWithCoalescing:0];
  uncoalescedRecentCalls = self->_uncoalescedRecentCalls;

  return uncoalescedRecentCalls;
}

- (id)unCoalesceCall:(id)call
{
  callCopy = call;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  numberOfOccurrences = [callCopy numberOfOccurrences];
  callOccurrences = [callCopy callOccurrences];
  if (numberOfOccurrences)
  {
    v7 = 0;
    v23 = @"kCHCallOccurrenceTTYTypeKey";
    do
    {
      v8 = [callOccurrences objectAtIndexedSubscript:{v7, v23}];
      v9 = [callCopy copy];
      [v8 objectForKeyedSubscript:@"kCHCallOccurrenceUniqueIdKey"];
      v10 = v4;
      v12 = v11 = callCopy;
      [v9 setUniqueId:v12];

      v13 = [v8 objectForKeyedSubscript:@"kCHCallOccurrenceCallTypeKey"];
      [v9 setCallType:{objc_msgSend(v13, "unsignedIntegerValue")}];

      v14 = [v8 objectForKeyedSubscript:@"kCHCallOccurrenceCallStatusKey"];
      [v9 setCallStatus:{objc_msgSend(v14, "unsignedIntegerValue")}];

      v15 = [v8 objectForKeyedSubscript:@"kCHCallOccurrenceDurationKey"];
      [v15 doubleValue];
      [v9 setDuration:?];

      v16 = [v8 objectForKeyedSubscript:@"kCHCallOccurrenceDateKey"];
      [v9 setDate:v16];

      v17 = [v8 objectForKeyedSubscript:@"kCHCallOccurrenceDataUsageKey"];
      [v9 setBytesOfDataUsed:v17];

      v18 = [v8 objectForKeyedSubscript:@"kCHCallOccurrenceMediaTypeKey"];
      [v9 setMediaType:{objc_msgSend(v18, "unsignedIntegerValue")}];

      v19 = [v8 objectForKeyedSubscript:v23];
      [v9 setTtyType:{objc_msgSend(v19, "unsignedIntegerValue")}];

      v20 = [v8 objectForKeyedSubscript:@"kCHCallOccurrenceServiceProviderKey"];
      [v9 setServiceProvider:v20];

      v21 = [v8 objectForKeyedSubscript:@"kCHCallOccurrenceReminderUUIDKey"];
      [v9 setReminderUUID:v21];

      callCopy = v11;
      v4 = v10;
      [v9 setCallOccurrences:0];
      [v9 setMultiCall:0];
      [v10 setObject:v9 atIndexedSubscript:v7];

      ++v7;
    }

    while (numberOfOccurrences != v7);
  }

  return v4;
}

- (id)applyPredicate:(id)predicate toCalls:(id)calls
{
  v20[1] = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  callsCopy = calls;
  if (predicateCopy)
  {
    v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if ([callsCopy count])
    {
      v8 = 0;
      do
      {
        v9 = [callsCopy objectAtIndexedSubscript:v8];
        if ([v9 multiCall])
        {
          v10 = [(CHManager *)self unCoalesceCall:v9];
          v11 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"date" ascending:0];
          v12 = [v10 filteredArrayUsingPredicate:predicateCopy];
          v20[0] = v11;
          v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
          v14 = [v12 sortedArrayUsingDescriptors:v13];

          v15 = [(CHManager *)self coalescedCallsWithCalls:v14 usingStrategy:self->_coalescingStrategy];
          [v18 addObjectsFromArray:v15];
        }

        else if ([predicateCopy evaluateWithObject:v9])
        {
          [v18 addObject:v9];
        }

        ++v8;
      }

      while (v8 < [callsCopy count]);
    }
  }

  else
  {
    logHandle = [(CHSynchronizedLoggable *)self logHandle];
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C3E90000, logHandle, OS_LOG_TYPE_DEFAULT, "No predicate to apply, return all calls", buf, 2u);
    }

    v18 = callsCopy;
  }

  return v18;
}

- (id)recentCallsWithPredicate:(id)predicate
{
  predicateCopy = predicate;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __38__CHManager_recentCallsWithPredicate___block_invoke;
  v9[3] = &unk_1E81DC348;
  v10 = predicateCopy;
  v11 = a2;
  v9[4] = self;
  v6 = predicateCopy;
  v7 = [(CHSynchronizedLoggable *)self executeSyncWithResult:v9];

  return v7;
}

id __38__CHManager_recentCallsWithPredicate___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) logHandle];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = NSStringFromSelector(*(a1 + 48));
    v5 = *(a1 + 40);
    v15 = 138543618;
    v16 = v4;
    v17 = 2112;
    v18 = v5;
    _os_log_impl(&dword_1C3E90000, v3, OS_LOG_TYPE_DEFAULT, "==> %{public}@(%@)", &v15, 0x16u);
  }

  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = [v6 fetchRecentCallsSyncWithCoalescing:1];
  v9 = [v6 applyPredicate:v7 toCalls:v8];

  v10 = [*(a1 + 32) logHandle];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = NSStringFromSelector(*(a1 + 48));
    v12 = *(a1 + 40);
    v13 = [v9 count];
    v15 = 138543874;
    v16 = v11;
    v17 = 2112;
    v18 = v12;
    v19 = 2048;
    v20 = v13;
    _os_log_impl(&dword_1C3E90000, v10, OS_LOG_TYPE_DEFAULT, "<== %{public}@(%@) => %lu calls", &v15, 0x20u);
  }

  objc_autoreleasePoolPop(v2);

  return v9;
}

- (id)fetchRecentCallsSyncWithCoalescing:(BOOL)coalescing
{
  coalescingCopy = coalescing;
  v70 = *MEMORY[0x1E69E9840];
  v6 = objc_autoreleasePoolPush();
  if (!self->_recentCalls || [(CHManager *)self cacheIsDirty])
  {
    logHandle = [(CHSynchronizedLoggable *)self logHandle];
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      if (coalescingCopy)
      {
        v8 = @"Yes";
      }

      else
      {
        v8 = @"No";
      }

      v9 = [CHRecentCall callTypeAsString:self->_limitingCallTypes];
      *buf = 138543618;
      v67 = v8;
      v68 = 2114;
      v69 = v9;
      _os_log_impl(&dword_1C3E90000, logHandle, OS_LOG_TYPE_DEFAULT, "Fetching from DB and updating cache. And coalescing: %{public}@, With callType limit: %{public}@", buf, 0x16u);
    }

    getLimitsDictionary = [(CHManager *)self getLimitsDictionary];
    featureFlags = [(CHManager *)self featureFlags];
    increaseCallHistoryEnabled = [featureFlags increaseCallHistoryEnabled];

    if (increaseCallHistoryEnabled)
    {
      uncoalescedUnFilteredRecentCalls = self->_uncoalescedUnFilteredRecentCalls;
      if (uncoalescedUnFilteredRecentCalls)
      {
        v14 = [(NSArray *)uncoalescedUnFilteredRecentCalls count];
        if (v14 <= 0x64)
        {
          v15 = 100;
        }

        else
        {
          v15 = v14;
        }
      }

      else
      {
        v15 = 100;
      }

      v26 = [(CHManager *)self callsWithLimits:getLimitsDictionary limit:v15 offset:0 batchSize:0];
      recentCalls = self->_recentCalls;
      self->_recentCalls = v26;
    }

    else
    {
      recentCalls = [(CHManager *)self syncManager];
      v17 = [recentCalls fetchObjectsWithLimits:getLimitsDictionary];
      v18 = self->_recentCalls;
      self->_recentCalls = v17;
    }

    logHandle2 = [(CHSynchronizedLoggable *)self logHandle];
    if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_DEFAULT))
    {
      v28 = [(NSArray *)self->_recentCalls count];
      *buf = 134217984;
      v67 = v28;
      _os_log_impl(&dword_1C3E90000, logHandle2, OS_LOG_TYPE_DEFAULT, "SyncManager returned %lu calls", buf, 0xCu);
    }

    v29 = self->_recentCalls;
    if (!v29)
    {
      goto LABEL_44;
    }

    v60 = v6;
    v30 = [(NSArray *)v29 copy];
    uncoalescedRecentCalls = self->_uncoalescedRecentCalls;
    self->_uncoalescedRecentCalls = v30;

    v32 = [(CHManager *)self applyPredicate:self->_postFetchingPredicate toCalls:self->_uncoalescedRecentCalls];
    v33 = self->_uncoalescedRecentCalls;
    self->_uncoalescedRecentCalls = v32;

    v34 = [(NSArray *)self->_recentCalls copy];
    [(CHManager *)self setUncoalescedUnFilteredRecentCalls:v34];

    featureFlags2 = [(CHManager *)self featureFlags];
    v36 = a2;
    if ([featureFlags2 increaseCallHistoryEnabled])
    {
      uncoalescedUnFilteredRecentCalls = [(CHManager *)self uncoalescedUnFilteredRecentCalls];
      v38 = [uncoalescedUnFilteredRecentCalls count];
      callHistoryDBFetchLimit = [(CHManager *)self callHistoryDBFetchLimit];

      if (v38 >= callHistoryDBFetchLimit)
      {
        [(CHManager *)self setFinishedLoadingAllCalls:1];
      }

      if (coalescingCopy)
      {
        goto LABEL_30;
      }
    }

    else
    {

      if (coalescingCopy)
      {
LABEL_30:
        v40 = [(CHManager *)self coalescedCallsWithCalls:self->_recentCalls usingStrategy:self->_coalescingStrategy];
        v41 = self->_recentCalls;
        self->_recentCalls = v40;

        logHandle3 = [(CHSynchronizedLoggable *)self logHandle];
        if (os_log_type_enabled(logHandle3, OS_LOG_TYPE_DEFAULT))
        {
          v43 = [(NSArray *)self->_recentCalls count];
          *buf = 134217984;
          v67 = v43;
          _os_log_impl(&dword_1C3E90000, logHandle3, OS_LOG_TYPE_DEFAULT, "After coalescing we have %lu calls", buf, 0xCu);
        }

        v44 = [(CHManager *)self applyPredicate:self->_postFetchingPredicate toCalls:self->_recentCalls];
        p_super = &self->_recentCalls->super;
        self->_recentCalls = v44;
LABEL_36:

        v63 = 0u;
        v64 = 0u;
        v61 = 0u;
        v62 = 0u;
        v46 = self->_recentCalls;
        v47 = [(NSArray *)v46 countByEnumeratingWithState:&v61 objects:v65 count:16];
        if (v47)
        {
          v48 = v47;
          v49 = *v62;
          do
          {
            for (i = 0; i != v48; ++i)
            {
              if (*v62 != v49)
              {
                objc_enumerationMutation(v46);
              }

              v51 = *(*(&v61 + 1) + 8 * i);
              phoneBookManager = [(CHManager *)self phoneBookManager];
              [v51 setPhoneBookManager:phoneBookManager];
            }

            v48 = [(NSArray *)v46 countByEnumeratingWithState:&v61 objects:v65 count:16];
          }

          while (v48);
        }

        a2 = v36;
        v6 = v60;
LABEL_44:
        featureFlags3 = [(CHManager *)self featureFlags];
        if ([featureFlags3 increaseCallHistoryEnabled])
        {
          v54 = [(NSArray *)self->_recentCalls count];

          if (!v54)
          {
            [(CHManager *)self setFinishedLoadingAllCalls:1];
          }
        }

        else
        {
        }

        [(CHManager *)self setCacheIsDirty:0];
LABEL_49:

        goto LABEL_50;
      }
    }

    p_super = [(CHSynchronizedLoggable *)self logHandle];
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C3E90000, p_super, OS_LOG_TYPE_DEFAULT, "User fetching without coalescing!", buf, 2u);
    }

    goto LABEL_36;
  }

  if (coalescingCopy && [(CHManager *)self reCoalesce])
  {
    logHandle4 = [(CHSynchronizedLoggable *)self logHandle];
    if (os_log_type_enabled(logHandle4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C3E90000, logHandle4, OS_LOG_TYPE_DEFAULT, "No fetching required. Recoalscing & applying global filter", buf, 2u);
    }

    uncoalescedUnFilteredRecentCalls2 = [(CHManager *)self uncoalescedUnFilteredRecentCalls];
    getLimitsDictionary = [uncoalescedUnFilteredRecentCalls2 copy];

    v21 = [(CHManager *)self coalescedCallsWithCalls:getLimitsDictionary usingStrategy:self->_coalescingStrategy];
    v22 = self->_recentCalls;
    self->_recentCalls = v21;

    logHandle5 = [(CHSynchronizedLoggable *)self logHandle];
    if (os_log_type_enabled(logHandle5, OS_LOG_TYPE_DEBUG))
    {
      [(CHManager *)&self->_recentCalls fetchRecentCallsSyncWithCoalescing:logHandle5];
    }

    v24 = [(CHManager *)self applyPredicate:self->_postFetchingPredicate toCalls:self->_recentCalls];
    v25 = self->_recentCalls;
    self->_recentCalls = v24;

    goto LABEL_49;
  }

LABEL_50:
  logHandle6 = [(CHSynchronizedLoggable *)self logHandle];
  if (os_log_type_enabled(logHandle6, OS_LOG_TYPE_DEFAULT))
  {
    v56 = NSStringFromSelector(a2);
    v57 = [(NSArray *)self->_recentCalls count];
    *buf = 138543618;
    v67 = v56;
    v68 = 2048;
    v69 = v57;
    _os_log_impl(&dword_1C3E90000, logHandle6, OS_LOG_TYPE_DEFAULT, "<== %{public}@ returns %lu calls", buf, 0x16u);
  }

  v58 = self->_recentCalls;
  objc_autoreleasePoolPop(v6);

  return v58;
}

- (unint64_t)countCallsWithPredicateSync:(id)sync
{
  v24 = *MEMORY[0x1E69E9840];
  syncCopy = sync;
  logHandle = [(CHSynchronizedLoggable *)self logHandle];
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    predicateFormat = [syncCopy predicateFormat];
    v18 = 138543618;
    v19 = v7;
    v20 = 2112;
    v21 = predicateFormat;
    _os_log_impl(&dword_1C3E90000, logHandle, OS_LOG_TYPE_DEFAULT, "==> %{public}@(%@)", &v18, 0x16u);
  }

  if (syncCopy)
  {
    uncoalescedRecentCallsSync = [(CHManager *)self uncoalescedRecentCallsSync];
    v10 = [uncoalescedRecentCallsSync filteredArrayUsingPredicate:syncCopy];
  }

  else
  {
    v10 = [(CHManager *)self fetchRecentCallsSyncWithCoalescing:1];
  }

  v11 = [v10 count];
  logHandle2 = [(CHSynchronizedLoggable *)self logHandle];
  if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_DEFAULT))
  {
    predicateFormat2 = [syncCopy predicateFormat];
    v18 = 138412546;
    v19 = predicateFormat2;
    v20 = 2048;
    v21 = v11;
    _os_log_impl(&dword_1C3E90000, logHandle2, OS_LOG_TYPE_DEFAULT, "User requested to count calls with predicate, %@. Returning %lu.", &v18, 0x16u);
  }

  logHandle3 = [(CHSynchronizedLoggable *)self logHandle];
  if (os_log_type_enabled(logHandle3, OS_LOG_TYPE_DEFAULT))
  {
    v15 = NSStringFromSelector(a2);
    predicateFormat3 = [syncCopy predicateFormat];
    v18 = 138543874;
    v19 = v15;
    v20 = 2112;
    v21 = predicateFormat3;
    v22 = 2048;
    v23 = v11;
    _os_log_impl(&dword_1C3E90000, logHandle3, OS_LOG_TYPE_DEFAULT, "<== %{public}@(%@) %lu calls", &v18, 0x20u);
  }

  return v11;
}

- (id)loadOlderRecentCallsSyncWithCoalescing:(BOOL)coalescing
{
  coalescingCopy = coalescing;
  v60 = *MEMORY[0x1E69E9840];
  v6 = objc_autoreleasePoolPush();
  if (![(CHManager *)self shouldLoadOlderCalls])
  {
LABEL_42:
    logHandle = [(CHSynchronizedLoggable *)self logHandle];
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      v45 = NSStringFromSelector(a2);
      v46 = [(NSArray *)self->_recentCalls count];
      *buf = 138543618;
      v57 = v45;
      v58 = 2048;
      v59 = v46;
      _os_log_impl(&dword_1C3E90000, logHandle, OS_LOG_TYPE_DEFAULT, "<== %{public}@ returns %lu calls", buf, 0x16u);
    }

    p_recentCalls = &self->_recentCalls;
    goto LABEL_45;
  }

  p_recentCalls = &self->_recentCalls;
  if (!self->_recentCalls || [(CHManager *)self cacheIsDirty])
  {
    v8 = [(CHManager *)self fetchRecentCallsSyncWithCoalescing:coalescingCopy];
  }

  if ([(NSArray *)*p_recentCalls count])
  {
    logHandle2 = [(CHSynchronizedLoggable *)self logHandle];
    if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_DEFAULT))
    {
      if (coalescingCopy)
      {
        v10 = @"Yes";
      }

      else
      {
        v10 = @"No";
      }

      v11 = [CHRecentCall callTypeAsString:self->_limitingCallTypes];
      *buf = 138543618;
      v57 = v10;
      v58 = 2114;
      v59 = v11;
      _os_log_impl(&dword_1C3E90000, logHandle2, OS_LOG_TYPE_DEFAULT, "loadOlderRecentCallsSyncWithCoalescing: Fetching from DB and updating cache. And coalescing: %{public}@, With callType limit: %{public}@", buf, 0x16u);
    }

    getLimitsDictionary = [(CHManager *)self getLimitsDictionary];
    v13 = [(CHManager *)self callsWithLimits:getLimitsDictionary limit:100 offset:[(NSArray *)self->_uncoalescedUnFilteredRecentCalls count] batchSize:0];
    logHandle3 = [(CHSynchronizedLoggable *)self logHandle];
    if (os_log_type_enabled(logHandle3, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v13 count];
      *buf = 134217984;
      v57 = v15;
      _os_log_impl(&dword_1C3E90000, logHandle3, OS_LOG_TYPE_DEFAULT, "SyncManager returned %lu calls", buf, 0xCu);
    }

    if ([v13 count])
    {
      uncoalescedRecentCalls = self->_uncoalescedRecentCalls;
      v49 = getLimitsDictionary;
      if (uncoalescedRecentCalls)
      {
        v17 = [(NSArray *)uncoalescedRecentCalls arrayByAddingObjectsFromArray:v13];
      }

      else
      {
        v17 = [v13 copy];
      }

      v18 = self->_uncoalescedRecentCalls;
      self->_uncoalescedRecentCalls = v17;

      v19 = [(CHManager *)self applyPredicate:self->_postFetchingPredicate toCalls:self->_uncoalescedRecentCalls];
      v20 = self->_uncoalescedRecentCalls;
      self->_uncoalescedRecentCalls = v19;

      uncoalescedUnFilteredRecentCalls = self->_uncoalescedUnFilteredRecentCalls;
      if (uncoalescedUnFilteredRecentCalls)
      {
        v22 = [(NSArray *)uncoalescedUnFilteredRecentCalls arrayByAddingObjectsFromArray:v13];
      }

      else
      {
        v22 = [v13 copy];
      }

      v23 = v22;
      [(CHManager *)self setUncoalescedUnFilteredRecentCalls:v22];

      uncoalescedUnFilteredRecentCalls = [(CHManager *)self uncoalescedUnFilteredRecentCalls];
      v25 = [uncoalescedUnFilteredRecentCalls count];
      callHistoryDBFetchLimit = [(CHManager *)self callHistoryDBFetchLimit];

      if (v25 >= callHistoryDBFetchLimit)
      {
        [(CHManager *)self setFinishedLoadingAllCalls:1];
      }

      if (coalescingCopy)
      {
        lastObject = [(NSArray *)*p_recentCalls lastObject];
        if (lastObject)
        {
          lastObject2 = [(NSArray *)*p_recentCalls lastObject];
          v55 = lastObject2;
          v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v55 count:1];
        }

        else
        {
          v29 = MEMORY[0x1E695E0F0];
        }

        v31 = [v29 arrayByAddingObjectsFromArray:v13];

        logHandle4 = [(CHManager *)self coalescedCallsWithCalls:v31 usingStrategy:self->_coalescingStrategy];

        v32 = [(NSArray *)*p_recentCalls subarrayWithRange:0, [(NSArray *)*p_recentCalls count]- 1];
        if ([v32 count])
        {
          v33 = [v32 arrayByAddingObjectsFromArray:logHandle4];
        }

        else
        {
          v33 = logHandle4;
        }

        v34 = *p_recentCalls;
        *p_recentCalls = v33;

        v35 = [(CHManager *)self applyPredicate:self->_postFetchingPredicate toCalls:*p_recentCalls];
        v36 = *p_recentCalls;
        *p_recentCalls = v35;
      }

      else
      {
        logHandle4 = [(CHSynchronizedLoggable *)self logHandle];
        if (os_log_type_enabled(logHandle4, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1C3E90000, logHandle4, OS_LOG_TYPE_DEFAULT, "User fetching without coalescing!", buf, 2u);
        }
      }

      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v37 = *p_recentCalls;
      v38 = [(NSArray *)v37 countByEnumeratingWithState:&v50 objects:v54 count:16];
      if (v38)
      {
        v39 = v38;
        v40 = *v51;
        do
        {
          for (i = 0; i != v39; ++i)
          {
            if (*v51 != v40)
            {
              objc_enumerationMutation(v37);
            }

            v42 = *(*(&v50 + 1) + 8 * i);
            phoneBookManager = [(CHManager *)self phoneBookManager];
            [v42 setPhoneBookManager:phoneBookManager];
          }

          v39 = [(NSArray *)v37 countByEnumeratingWithState:&v50 objects:v54 count:16];
        }

        while (v39);
      }

      getLimitsDictionary = v49;
    }

    else
    {
      [(CHManager *)self setFinishedLoadingAllCalls:1];
    }

    [(CHManager *)self setCacheIsDirty:0];
    [(CHManager *)self setShouldLoadOlderCalls:0];

    goto LABEL_42;
  }

LABEL_45:
  v47 = *p_recentCalls;
  objc_autoreleasePoolPop(v6);

  return v47;
}

- (unint64_t)countCallsWithPredicate:(id)predicate
{
  predicateCopy = predicate;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __37__CHManager_countCallsWithPredicate___block_invoke;
  v8[3] = &unk_1E81DC2D0;
  v10 = &v11;
  v8[4] = self;
  v5 = predicateCopy;
  v9 = v5;
  [(CHSynchronizedLoggable *)self executeSync:v8];
  v6 = v12[3];

  _Block_object_dispose(&v11, 8);
  return v6;
}

void *__37__CHManager_countCallsWithPredicate___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) countCallsWithPredicateSync:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (unint64_t)databaseSizeInBytes
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __32__CHManager_databaseSizeInBytes__block_invoke;
  v4[3] = &unk_1E81DC370;
  v4[4] = self;
  v4[5] = &v5;
  [(CHSynchronizedLoggable *)self executeSync:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __32__CHManager_databaseSizeInBytes__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v11 = 0;
  v3 = [CallDBManager getDBLocationIsSandboxed:1 isTemporary:0 error:&v11];
  if (v11)
  {
    v4 = [*(a1 + 32) logHandle];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __32__CHManager_databaseSizeInBytes__block_invoke_cold_1(&v11, v4);
    }
  }

  v5 = [v3 path];
  v10 = 0;
  v6 = [v2 attributesOfItemAtPath:v5 error:&v10];
  v7 = v10;

  if (v7)
  {
    v8 = [*(a1 + 32) logHandle];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __32__CHManager_databaseSizeInBytes__block_invoke_cold_2();
    }

    v9 = [*(a1 + 32) estimateDatabaseSizeInBytes];
  }

  else
  {
    v9 = [v6 fileSize];
  }

  *(*(*(a1 + 40) + 8) + 24) = v9;
}

- (unint64_t)estimateDatabaseSizeInBytes
{
  v9[2] = *MEMORY[0x1E69E9840];
  v9[0] = @"com.apple.Telephony";
  v9[1] = @"com.apple.FaceTime";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  v4 = [CHRecentCall predicateForCallsWithAnyServiceProviders:v3];

  v5 = [(CHManager *)self countCallsWithPredicate:v4];
  v6 = objc_opt_class();
  InstanceSize = class_getInstanceSize(v6);

  return InstanceSize * v5;
}

- (void)addToCallHistory:(id)history
{
  historyCopy = history;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __30__CHManager_addToCallHistory___block_invoke;
  v7[3] = &unk_1E81DC398;
  v8 = historyCopy;
  v9 = a2;
  v7[4] = self;
  v6 = historyCopy;
  [(CHSynchronizedLoggable *)self execute:v7];
}

void __30__CHManager_addToCallHistory___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) logHandle];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    v4 = *(a1 + 40);
    v6 = 138543618;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_1C3E90000, v2, OS_LOG_TYPE_DEFAULT, "==> %{public}@(%@)", &v6, 0x16u);
  }

  v5 = [*(a1 + 32) syncManager];
  [v5 insert:*(a1 + 40) withTransaction:{objc_msgSend(*(a1 + 32), "generateSyncTransactions")}];
}

- (void)addArrayToCallHistory:(id)history
{
  historyCopy = history;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __35__CHManager_addArrayToCallHistory___block_invoke;
  v7[3] = &unk_1E81DC398;
  v8 = historyCopy;
  v9 = a2;
  v7[4] = self;
  v6 = historyCopy;
  [(CHSynchronizedLoggable *)self execute:v7];
}

void __35__CHManager_addArrayToCallHistory___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) logHandle];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    v4 = *(a1 + 40);
    v10 = 138543618;
    v11 = v3;
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&dword_1C3E90000, v2, OS_LOG_TYPE_DEFAULT, "==> %{public}@(%@)", &v10, 0x16u);
  }

  v5 = [*(a1 + 32) generateSyncTransactions];
  v6 = *(a1 + 32);
  if (v5)
  {
    v7 = [v6 syncManager];
    [v7 insertRecords:*(a1 + 40)];
  }

  else
  {
    v8 = [v6 logHandle];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 40);
      v10 = 138412290;
      v11 = v9;
      _os_log_impl(&dword_1C3E90000, v8, OS_LOG_TYPE_DEFAULT, "User requested to insert new calls without sync transactions: \n %@", &v10, 0xCu);
    }

    v7 = [*(a1 + 32) syncManager];
    [v7 insertRecordsWithoutTransactions:*(a1 + 40)];
  }
}

- (void)addArrayToCallHistory:(id)history withCompletion:(id)completion
{
  historyCopy = history;
  completionCopy = completion;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __50__CHManager_addArrayToCallHistory_withCompletion___block_invoke;
  v11[3] = &unk_1E81DC3C0;
  v11[4] = self;
  v12 = historyCopy;
  v13 = completionCopy;
  v14 = a2;
  v9 = completionCopy;
  v10 = historyCopy;
  [(CHSynchronizedLoggable *)self execute:v11];
}

uint64_t __50__CHManager_addArrayToCallHistory_withCompletion___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) logHandle];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 56));
    v4 = *(a1 + 40);
    v11 = 138543618;
    v12 = v3;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_1C3E90000, v2, OS_LOG_TYPE_DEFAULT, "==> %{public}@(%@)", &v11, 0x16u);
  }

  v5 = [*(a1 + 32) generateSyncTransactions];
  v6 = *(a1 + 32);
  if (v5)
  {
    v7 = [v6 syncManager];
    [v7 insertRecords:*(a1 + 40)];
  }

  else
  {
    v8 = [v6 logHandle];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 40);
      v11 = 138412290;
      v12 = v9;
      _os_log_impl(&dword_1C3E90000, v8, OS_LOG_TYPE_DEFAULT, "User requested to insert new calls without sync transactions: \n %@", &v11, 0xCu);
    }

    v7 = [*(a1 + 32) syncManager];
    [v7 insertRecordsWithoutTransactions:*(a1 + 40)];
  }

  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)setOutgoingLocalParticipantUUID:(id)d forRecentCallsMatchingPredicate:(id)predicate
{
  dCopy = d;
  predicateCopy = predicate;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __77__CHManager_setOutgoingLocalParticipantUUID_forRecentCallsMatchingPredicate___block_invoke;
  v10[3] = &unk_1E81DC2A8;
  v10[4] = self;
  v11 = dCopy;
  v12 = predicateCopy;
  v8 = predicateCopy;
  v9 = dCopy;
  [(CHSynchronizedLoggable *)self execute:v10];
}

void __77__CHManager_setOutgoingLocalParticipantUUID_forRecentCallsMatchingPredicate___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) logHandle];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    *buf = 138543618;
    v28 = v3;
    v29 = 2112;
    v30 = v4;
    _os_log_impl(&dword_1C3E90000, v2, OS_LOG_TYPE_DEFAULT, "Updating outgoing local participant UUID to %{public}@ for recent calls matching predicate %@.", buf, 0x16u);
  }

  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = [*(a1 + 32) uncoalescedRecentCallsSync];
  v7 = [v6 filteredArrayUsingPredicate:*(a1 + 48)];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        v14 = [v13 uniqueId];
        v15 = [v14 length];

        if (v15)
        {
          v16 = *(a1 + 40);
          v24 = kCallUpdatePropertyOutgoingLocalParticipantUUID;
          v25 = v16;
          v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
          v18 = [v13 uniqueId];
          [v5 setObject:v17 forKeyedSubscript:v18];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v10);
  }

  if ([v5 count])
  {
    v19 = [*(a1 + 32) syncManager];
    [v19 updateObjects:v5];
  }
}

- (void)markAllCallsAsReadWithPredicate:(id)predicate
{
  predicateCopy = predicate;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__CHManager_markAllCallsAsReadWithPredicate___block_invoke;
  v7[3] = &unk_1E81DC398;
  v8 = predicateCopy;
  v9 = a2;
  v7[4] = self;
  v6 = predicateCopy;
  [(CHSynchronizedLoggable *)self execute:v7];
}

void __45__CHManager_markAllCallsAsReadWithPredicate___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) logHandle];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    v4 = *(a1 + 40);
    v19 = 138543618;
    v20 = v3;
    v21 = 2112;
    v22 = v4;
    _os_log_impl(&dword_1C3E90000, v2, OS_LOG_TYPE_DEFAULT, "==> %{public}@(%@)", &v19, 0x16u);
  }

  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = [MEMORY[0x1E696AD98] numberWithBool:1];
  [v5 setObject:v6 forKeyedSubscript:kCallUpdatePropertyRead];

  v7 = *(a1 + 40);
  v8 = [*(a1 + 32) logHandle];
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v9)
    {
      v10 = *(a1 + 40);
      v19 = 138412290;
      v20 = v10;
      _os_log_impl(&dword_1C3E90000, v8, OS_LOG_TYPE_DEFAULT, "User requested to mark some calls with this predicate, %@, as read", &v19, 0xCu);
    }

    v11 = [*(a1 + 32) uncoalescedRecentCallsSync];
    v12 = [v11 filteredArrayUsingPredicate:*(a1 + 40)];

    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
    if ([v12 count])
    {
      v14 = 0;
      do
      {
        v15 = [v12 objectAtIndexedSubscript:v14];
        v16 = [v15 uniqueId];

        if (v16)
        {
          v17 = [v15 uniqueId];
          [v13 setObject:v5 forKey:v17];
        }

        ++v14;
      }

      while (v14 < [v12 count]);
    }

    v18 = [*(a1 + 32) syncManager];
    [v18 updateObjects:v13];
  }

  else
  {
    if (v9)
    {
      LOWORD(v19) = 0;
      _os_log_impl(&dword_1C3E90000, v8, OS_LOG_TYPE_DEFAULT, "User requested to mark ALL calls as read", &v19, 2u);
    }

    v12 = [*(a1 + 32) syncManager];
    [v12 updateAllObjects:v5];
  }
}

- (void)updateBytesOfDataUsedFor:(id)for with:(id)with
{
  forCopy = for;
  withCopy = with;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __43__CHManager_updateBytesOfDataUsedFor_with___block_invoke;
  v11[3] = &unk_1E81DC3E8;
  v11[4] = self;
  v12 = forCopy;
  v13 = withCopy;
  v14 = a2;
  v9 = withCopy;
  v10 = forCopy;
  [(CHSynchronizedLoggable *)self execute:v11];
}

void __43__CHManager_updateBytesOfDataUsedFor_with___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) logHandle];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 56));
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v9 = 138543874;
    v10 = v3;
    v11 = 2114;
    v12 = v4;
    v13 = 2114;
    v14 = v5;
    _os_log_impl(&dword_1C3E90000, v2, OS_LOG_TYPE_DEFAULT, "==> %{public}@(%{public}@, %{public}@)", &v9, 0x20u);
  }

  if (*(a1 + 40) && *(a1 + 48))
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v6 setObject:*(a1 + 48) forKeyedSubscript:kCallUpdatePropertyBytesUsed];
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v7 setObject:v6 forKey:*(a1 + 40)];
    v8 = [*(a1 + 32) syncManager];
    [v8 updateObjects:v7];
  }

  else
  {
    v6 = [*(a1 + 32) logHandle];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __43__CHManager_updateBytesOfDataUsedFor_with___block_invoke_cold_1();
    }
  }
}

- (void)updateMessageStatusFor:(id)for with:(id)with
{
  forCopy = for;
  withCopy = with;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __41__CHManager_updateMessageStatusFor_with___block_invoke;
  v11[3] = &unk_1E81DC3E8;
  v11[4] = self;
  v12 = forCopy;
  v13 = withCopy;
  v14 = a2;
  v9 = withCopy;
  v10 = forCopy;
  [(CHSynchronizedLoggable *)self execute:v11];
}

void __41__CHManager_updateMessageStatusFor_with___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) logHandle];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 56));
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v9 = 138543874;
    v10 = v3;
    v11 = 2114;
    v12 = v4;
    v13 = 2114;
    v14 = v5;
    _os_log_impl(&dword_1C3E90000, v2, OS_LOG_TYPE_DEFAULT, "==> %{public}@(%{public}@, hasMessage=%{public}@)", &v9, 0x20u);
  }

  if (*(a1 + 40))
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v6 setObject:*(a1 + 48) forKeyedSubscript:kCallUpdatePropertyHasMessage];
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v7 setObject:v6 forKey:*(a1 + 40)];
    v8 = [*(a1 + 32) syncManager];
    [v8 updateObjects:v7];
  }

  else
  {
    v6 = [*(a1 + 32) logHandle];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __41__CHManager_updateMessageStatusFor_with___block_invoke_cold_1();
    }
  }
}

- (void)updateAutoAnsweredReasonFor:(id)for with:(int64_t)with
{
  forCopy = for;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __46__CHManager_updateAutoAnsweredReasonFor_with___block_invoke;
  v9[3] = &unk_1E81DC410;
  v9[4] = self;
  v10 = forCopy;
  v11 = a2;
  withCopy = with;
  v8 = forCopy;
  [(CHSynchronizedLoggable *)self execute:v9];
}

void __46__CHManager_updateAutoAnsweredReasonFor_with___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) logHandle];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    v4 = *(a1 + 40);
    v5 = *(a1 + 56);
    v13 = 138543874;
    v14 = v3;
    v15 = 2114;
    v16 = v4;
    v17 = 2048;
    v18 = v5;
    _os_log_impl(&dword_1C3E90000, v2, OS_LOG_TYPE_DEFAULT, "==> %{public}@(%{public}@, autoAnsweredReason=%ld)", &v13, 0x20u);
  }

  if (*(a1 + 40))
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 56)];
    v8 = [*(a1 + 32) logHandle];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = NSStringFromSelector(*(a1 + 48));
      v10 = *(a1 + 40);
      v13 = 138543874;
      v14 = v9;
      v15 = 2114;
      v16 = v10;
      v17 = 2114;
      v18 = v7;
      _os_log_impl(&dword_1C3E90000, v8, OS_LOG_TYPE_DEFAULT, "==> %{public}@(%{public}@, autoAnsweredReason=%{public}@)", &v13, 0x20u);
    }

    [v6 setObject:v7 forKeyedSubscript:kCallUpdatePropertyAutoAnsweredReason];
    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v11 setObject:v6 forKey:*(a1 + 40)];
    v12 = [*(a1 + 32) syncManager];
    [v12 updateObjects:v11];
  }

  else
  {
    v6 = [*(a1 + 32) logHandle];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __41__CHManager_updateMessageStatusFor_with___block_invoke_cold_1();
    }
  }
}

- (void)updateEmergencyMediaItemFor:(id)for with:(id)with
{
  forCopy = for;
  withCopy = with;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __46__CHManager_updateEmergencyMediaItemFor_with___block_invoke;
  v11[3] = &unk_1E81DC3E8;
  v11[4] = self;
  v12 = forCopy;
  v13 = withCopy;
  v14 = a2;
  v9 = withCopy;
  v10 = forCopy;
  [(CHSynchronizedLoggable *)self execute:v11];
}

void __46__CHManager_updateEmergencyMediaItemFor_with___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) logHandle];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 56));
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v10 = 138543874;
    v11 = v3;
    v12 = 2114;
    v13 = v4;
    v14 = 2114;
    v15 = v5;
    _os_log_impl(&dword_1C3E90000, v2, OS_LOG_TYPE_DEFAULT, "==> %{public}@(%{public}@, mediaItem=%{public}@)", &v10, 0x20u);
  }

  if (*(a1 + 40))
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v7 = [*(a1 + 48) getDictionary];
    [v6 setObject:v7 forKeyedSubscript:kCallUpdatePropertyEmergencyMediaItem];

    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v8 setObject:v6 forKey:*(a1 + 40)];
    v9 = [*(a1 + 32) syncManager];
    [v9 updateObjects:v8];
  }

  else
  {
    v6 = [*(a1 + 32) logHandle];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __41__CHManager_updateMessageStatusFor_with___block_invoke_cold_1();
    }
  }
}

- (void)updateReminderUUID:(id)d forRecentCall:(id)call
{
  dCopy = d;
  callCopy = call;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __46__CHManager_updateReminderUUID_forRecentCall___block_invoke;
  v10[3] = &unk_1E81DC2A8;
  v10[4] = self;
  v11 = dCopy;
  v12 = callCopy;
  v8 = callCopy;
  v9 = dCopy;
  [(CHSynchronizedLoggable *)self execute:v10];
}

void __46__CHManager_updateReminderUUID_forRecentCall___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) logHandle];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    *buf = 138543618;
    v30 = v3;
    v31 = 2112;
    v32 = v4;
    _os_log_impl(&dword_1C3E90000, v2, OS_LOG_TYPE_DEFAULT, "Updating reminder UUID to %{public}@ for recentCall %@.", buf, 0x16u);
  }

  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = *(a1 + 40);
  if (v6)
  {
    v24 = kCallUpdatePropertyReminderUUID;
    v25 = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v8 = [*(a1 + 48) uniqueId];
    [v5 setObject:v7 forKeyedSubscript:v8];
  }

  else
  {
    v7 = [*(a1 + 32) unCoalesceCall:*(a1 + 48)];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v9 = [v7 countByEnumeratingWithState:&v20 objects:v28 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v21;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v20 + 1) + 8 * i);
          v14 = [v13 uniqueId];
          v15 = [v14 length];

          if (v15)
          {
            v26 = kCallUpdatePropertyReminderUUID;
            v16 = [MEMORY[0x1E695DFB0] null];
            v27 = v16;
            v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
            v18 = [v13 uniqueId];
            [v5 setObject:v17 forKeyedSubscript:v18];
          }
        }

        v10 = [v7 countByEnumeratingWithState:&v20 objects:v28 count:16];
      }

      while (v10);
    }
  }

  if ([v5 count])
  {
    v19 = [*(a1 + 32) syncManager];
    [v19 updateObjects:v5];
  }
}

- (void)deleteTheseCallsSync:(id)sync
{
  v26 = *MEMORY[0x1E69E9840];
  syncCopy = sync;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([syncCopy count])
  {
    v6 = 0;
    while (1)
    {
      v7 = [syncCopy objectAtIndexedSubscript:v6];
      if ([v7 multiCall])
      {
        break;
      }

      uniqueId = [v7 uniqueId];

      if (uniqueId)
      {
        uniqueId2 = [v7 uniqueId];
        [v5 addObject:uniqueId2];
LABEL_12:
      }

      if (++v6 >= [syncCopy count])
      {
        goto LABEL_14;
      }
    }

    uniqueId2 = [v7 callOccurrences];
    if ([uniqueId2 count])
    {
      v9 = 0;
      do
      {
        v10 = [uniqueId2 objectAtIndexedSubscript:v9];
        v11 = [v10 objectForKeyedSubscript:@"kCHCallOccurrenceUniqueIdKey"];
        if (v11)
        {
          [v5 addObject:v11];
        }

        ++v9;
      }

      while (v9 < [uniqueId2 count]);
    }

    goto LABEL_12;
  }

LABEL_14:
  v13 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v14 = [v5 count];
  if (v14)
  {
    v15 = 0;
    v16 = v14 - 1;
    while (1)
    {
      v17 = [v5 objectAtIndexedSubscript:v15];
      [v13 appendString:v17];

      if (v16 == v15)
      {
        break;
      }

      [v13 appendString:{@", "}];
      ++v15;
    }
  }

  logHandle = [(CHSynchronizedLoggable *)self logHandle];
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
  {
    v19 = NSStringFromSelector(a2);
    *buf = 138543618;
    v23 = v19;
    v24 = 2114;
    v25 = v13;
    _os_log_impl(&dword_1C3E90000, logHandle, OS_LOG_TYPE_DEFAULT, "=> %{public}@(%{public}@)", buf, 0x16u);
  }

  syncManager = [(CHManager *)self syncManager];
  [syncManager deleteObjectsWithUniqueIds:v5 withTransaction:1];

  [(CHManager *)self setCacheIsDirty:1];
  [(CHManager *)self setFinishedLoadingAllCalls:0];
}

- (void)deleteTheseCalls:(id)calls
{
  callsCopy = calls;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __30__CHManager_deleteTheseCalls___block_invoke;
  v7[3] = &unk_1E81DC398;
  v8 = callsCopy;
  v9 = a2;
  v7[4] = self;
  v6 = callsCopy;
  [(CHSynchronizedLoggable *)self execute:v7];
}

uint64_t __30__CHManager_deleteTheseCalls___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) logHandle];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_1C3E90000, v2, OS_LOG_TYPE_DEFAULT, "=> %{public}@", &v5, 0xCu);
  }

  return [*(a1 + 32) deleteTheseCallsSync:*(a1 + 40)];
}

- (void)deleteCall:(id)call
{
  callCopy = call;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __24__CHManager_deleteCall___block_invoke;
  v6[3] = &unk_1E81DBE38;
  v6[4] = self;
  v7 = callCopy;
  v5 = callCopy;
  [(CHSynchronizedLoggable *)self execute:v6];
}

void __24__CHManager_deleteCall___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) logHandle];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 40) uniqueId];
    *buf = 138543362;
    v9 = v3;
    _os_log_impl(&dword_1C3E90000, v2, OS_LOG_TYPE_DEFAULT, "=> deleteCall:%{public}@", buf, 0xCu);
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(a1 + 32);
    v7 = v4;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v7 count:1];
    [v5 deleteTheseCallsSync:v6];
  }
}

- (void)deleteCalls:(id)calls withCompletion:(id)completion
{
  callsCopy = calls;
  completionCopy = completion;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __40__CHManager_deleteCalls_withCompletion___block_invoke;
  v11[3] = &unk_1E81DC3C0;
  v11[4] = self;
  v12 = callsCopy;
  v13 = completionCopy;
  v14 = a2;
  v9 = completionCopy;
  v10 = callsCopy;
  [(CHSynchronizedLoggable *)self execute:v11];
}

uint64_t __40__CHManager_deleteCalls_withCompletion___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) logHandle];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 56));
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_1C3E90000, v2, OS_LOG_TYPE_DEFAULT, "=> %{public}@", &v5, 0xCu);
  }

  [*(a1 + 32) deleteTheseCallsSync:*(a1 + 40)];
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)deleteCallAtIndex:(unint64_t)index
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __31__CHManager_deleteCallAtIndex___block_invoke;
  v3[3] = &unk_1E81DC438;
  v3[4] = self;
  v3[5] = a2;
  v3[6] = index;
  [(CHSynchronizedLoggable *)self execute:v3];
}

void __31__CHManager_deleteCallAtIndex___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) logHandle];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v4 = *(a1 + 48);
    v8 = 138543618;
    v9 = v3;
    v10 = 2048;
    v11 = v4;
    _os_log_impl(&dword_1C3E90000, v2, OS_LOG_TYPE_DEFAULT, "==> %{public}@: User requested to delete call at index, %lu", &v8, 0x16u);
  }

  v5 = [*(a1 + 32) fetchRecentCallsSyncWithCoalescing:1];
  v6 = [v5 count];
  if (v6 && *(a1 + 48) < v6)
  {
    v7 = [v5 objectAtIndex:?];
    [*(a1 + 32) deleteCall:v7];
  }
}

- (void)deleteAllCallsSync
{
  v10 = *MEMORY[0x1E69E9840];
  logHandle = [(CHSynchronizedLoggable *)self logHandle];
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(a2);
    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&dword_1C3E90000, logHandle, OS_LOG_TYPE_DEFAULT, "==> %{public}@: User requested to delete ALL calls (with the global limits of course)", &v8, 0xCu);
  }

  syncManager = [(CHManager *)self syncManager];
  getLimitsDictionary = [(CHManager *)self getLimitsDictionary];
  [syncManager deleteObjectsWithLimits:getLimitsDictionary];

  [(CHManager *)self setCacheIsDirty:1];
  [(CHManager *)self setFinishedLoadingAllCalls:0];
}

- (void)deleteAllCalls
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __27__CHManager_deleteAllCalls__block_invoke;
  v2[3] = &unk_1E81DBF38;
  v2[4] = self;
  [(CHSynchronizedLoggable *)self execute:v2];
}

- (void)clearDatabase
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __26__CHManager_clearDatabase__block_invoke;
  v2[3] = &unk_1E81DBF38;
  v2[4] = self;
  [(CHSynchronizedLoggable *)self execute:v2];
}

void __26__CHManager_clearDatabase__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) syncManager];
  [v1 deleteAllObjects];
}

- (void)setLimitingCallKindsSync:(id)sync
{
  v9 = *MEMORY[0x1E69E9840];
  syncCopy = sync;
  logHandle = [(CHSynchronizedLoggable *)self logHandle];
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = syncCopy;
    _os_log_impl(&dword_1C3E90000, logHandle, OS_LOG_TYPE_DEFAULT, "Setting limiting call kinds: %{public}@", &v7, 0xCu);
  }

  limitingCallKinds = self->_limitingCallKinds;
  self->_limitingCallKinds = syncCopy;

  [(CHManager *)self setCacheIsDirty:1];
  [(CHManager *)self setFinishedLoadingAllCalls:0];
}

- (void)setLimitingCallKinds:(id)kinds
{
  kindsCopy = kinds;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __34__CHManager_setLimitingCallKinds___block_invoke;
  v6[3] = &unk_1E81DBE38;
  v6[4] = self;
  v7 = kindsCopy;
  v5 = kindsCopy;
  [(CHSynchronizedLoggable *)self execute:v6];
}

- (void)setLimitingCallTypesSync:(unsigned int)sync
{
  v3 = *&sync;
  v12 = *MEMORY[0x1E69E9840];
  logHandle = [(CHSynchronizedLoggable *)self logHandle];
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [CHRecentCall callTypeAsString:v3];
    v8 = 138543618;
    v9 = v6;
    v10 = 1024;
    v11 = v3;
    _os_log_impl(&dword_1C3E90000, logHandle, OS_LOG_TYPE_DEFAULT, "Setting limiting call type to %{public}@ (0x%x). Cache is drity.", &v8, 0x12u);
  }

  self->_limitingCallTypes = v3;
  [(CHManager *)self setCacheIsDirty:1];
  [(CHManager *)self setFinishedLoadingAllCalls:0];
  v7 = [CHManager limitingCallKindsForCallType:self->_limitingCallTypes];
  [(CHManager *)self setLimitingCallKindsSync:v7];
}

- (void)setLimitingCallTypes:(unsigned int)types
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __34__CHManager_setLimitingCallTypes___block_invoke;
  v3[3] = &unk_1E81DC460;
  v3[4] = self;
  v3[5] = a2;
  typesCopy = types;
  [(CHSynchronizedLoggable *)self execute:v3];
}

uint64_t __34__CHManager_setLimitingCallTypes___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) logHandle];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v4 = [CHRecentCall callTypeAsString:*(a1 + 48)];
    v5 = *(a1 + 48);
    v7 = 138543874;
    v8 = v3;
    v9 = 2114;
    v10 = v4;
    v11 = 1024;
    v12 = v5;
    _os_log_impl(&dword_1C3E90000, v2, OS_LOG_TYPE_DEFAULT, "==> %{public}@:%{public}@(0x%x)", &v7, 0x1Cu);
  }

  return [*(a1 + 32) setLimitingCallTypesSync:*(a1 + 48)];
}

- (void)setPostFetchingPredicate:(id)predicate
{
  predicateCopy = predicate;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __38__CHManager_setPostFetchingPredicate___block_invoke;
  v7[3] = &unk_1E81DC398;
  v8 = predicateCopy;
  v9 = a2;
  v7[4] = self;
  v6 = predicateCopy;
  [(CHSynchronizedLoggable *)self execute:v7];
}

uint64_t __38__CHManager_setPostFetchingPredicate___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) logHandle];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    v4 = *(a1 + 40);
    v6 = 138543618;
    v7 = v3;
    v8 = 2114;
    v9 = v4;
    _os_log_impl(&dword_1C3E90000, v2, OS_LOG_TYPE_DEFAULT, "==> %{public}@:%{public}@", &v6, 0x16u);
  }

  objc_storeStrong((*(a1 + 32) + 80), *(a1 + 40));
  return [*(a1 + 32) setReCoalesce:1];
}

- (void)setLimitingStartDate:(id)date
{
  dateCopy = date;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __34__CHManager_setLimitingStartDate___block_invoke;
  v7[3] = &unk_1E81DC398;
  v8 = dateCopy;
  v9 = a2;
  v7[4] = self;
  v6 = dateCopy;
  [(CHSynchronizedLoggable *)self execute:v7];
}

uint64_t __34__CHManager_setLimitingStartDate___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) logHandle];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    v4 = *(a1 + 40);
    v6 = 138543618;
    v7 = v3;
    v8 = 2114;
    v9 = v4;
    _os_log_impl(&dword_1C3E90000, v2, OS_LOG_TYPE_DEFAULT, "==> %{public}@:%{public}@", &v6, 0x16u);
  }

  objc_storeStrong((*(a1 + 32) + 48), *(a1 + 40));
  [*(a1 + 32) setCacheIsDirty:1];
  return [*(a1 + 32) setFinishedLoadingAllCalls:0];
}

- (void)setLimitingEndDate:(id)date
{
  dateCopy = date;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __32__CHManager_setLimitingEndDate___block_invoke;
  v7[3] = &unk_1E81DC398;
  v8 = dateCopy;
  v9 = a2;
  v7[4] = self;
  v6 = dateCopy;
  [(CHSynchronizedLoggable *)self execute:v7];
}

uint64_t __32__CHManager_setLimitingEndDate___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) logHandle];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    v4 = *(a1 + 40);
    v6 = 138543618;
    v7 = v3;
    v8 = 2114;
    v9 = v4;
    _os_log_impl(&dword_1C3E90000, v2, OS_LOG_TYPE_DEFAULT, "==> %{public}@:%{public}@", &v6, 0x16u);
  }

  objc_storeStrong((*(a1 + 32) + 56), *(a1 + 40));
  [*(a1 + 32) setCacheIsDirty:1];
  return [*(a1 + 32) setFinishedLoadingAllCalls:0];
}

- (void)setCoalescingStrategy:(id)strategy
{
  strategyCopy = strategy;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __35__CHManager_setCoalescingStrategy___block_invoke;
  v7[3] = &unk_1E81DC398;
  v8 = strategyCopy;
  v9 = a2;
  v7[4] = self;
  v6 = strategyCopy;
  [(CHSynchronizedLoggable *)self execute:v7];
}

void *__35__CHManager_setCoalescingStrategy___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) logHandle];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    v4 = *(a1 + 40);
    v6 = 138543618;
    v7 = v3;
    v8 = 2114;
    v9 = v4;
    _os_log_impl(&dword_1C3E90000, v2, OS_LOG_TYPE_DEFAULT, "==> %{public}@:%{public}@", &v6, 0x16u);
  }

  result = [*(*(a1 + 32) + 88) isEqualToString:*(a1 + 40)];
  if ((result & 1) == 0)
  {
    objc_storeStrong((*(a1 + 32) + 88), *(a1 + 40));
    return [*(a1 + 32) setReCoalesce:1];
  }

  return result;
}

- (void)setShowsFaceTimeVideoCalls:(BOOL)calls
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __40__CHManager_setShowsFaceTimeVideoCalls___block_invoke;
  v3[3] = &unk_1E81DC488;
  v3[4] = self;
  v3[5] = a2;
  callsCopy = calls;
  [(CHSynchronizedLoggable *)self execute:v3];
}

uint64_t __40__CHManager_setShowsFaceTimeVideoCalls___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) logHandle];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v4 = *(a1 + 48);
    *v18 = 138543618;
    *&v18[4] = v3;
    *&v18[12] = 1024;
    *&v18[14] = v4;
    _os_log_impl(&dword_1C3E90000, v2, OS_LOG_TYPE_DEFAULT, "==> %{public}@: User setting showsFaceTimeVideoCalls to %d", v18, 0x12u);
  }

  v5 = *(a1 + 48);
  *(*(a1 + 32) + 25) = v5;
  v6 = [*(a1 + 32) logHandle];
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5 == 1)
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    v8 = *(*(a1 + 32) + 36);
    v9 = [CHRecentCall callTypeAsString:v8];
    v10 = *(*(a1 + 32) + 36) | 8;
    *v18 = 67109890;
    *&v18[4] = v8;
    *&v18[8] = 2114;
    *&v18[10] = v9;
    *&v18[18] = 1024;
    *&v18[20] = 8;
    LOWORD(v19) = 1024;
    *(&v19 + 2) = v10;
    v11 = "Old limitingCallType: 0x%x (%{public}@). OR Mask: 0x%x. New limitingCallType: 0x%x.";
  }

  else
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    v12 = *(*(a1 + 32) + 36);
    v9 = [CHRecentCall callTypeAsString:v12];
    v13 = *(*(a1 + 32) + 36) & 0xFFFFFFF7;
    *v18 = 67109890;
    *&v18[4] = v12;
    *&v18[8] = 2112;
    *&v18[10] = v9;
    *&v18[18] = 1024;
    *&v18[20] = -9;
    LOWORD(v19) = 1024;
    *(&v19 + 2) = v13;
    v11 = "Old limitingCallType: 0x%x (%@). AND Mask: 0x%x. New limitingCallType: 0x%x.";
  }

  _os_log_impl(&dword_1C3E90000, v6, OS_LOG_TYPE_DEFAULT, v11, v18, 0x1Eu);

LABEL_9:
  v14 = *(a1 + 32);
  v15 = v14[9];
  if (*(a1 + 48) == 1)
  {
    v16 = v15 | 8u;
  }

  else
  {
    v16 = v15 & 0xFFFFFFF7;
  }

  return [v14 setLimitingCallTypesSync:{v16, *v18, *&v18[8], v19}];
}

- (void)setShowsFaceTimeAudioCalls:(BOOL)calls
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __40__CHManager_setShowsFaceTimeAudioCalls___block_invoke;
  v3[3] = &unk_1E81DC488;
  v3[4] = self;
  v3[5] = a2;
  callsCopy = calls;
  [(CHSynchronizedLoggable *)self execute:v3];
}

uint64_t __40__CHManager_setShowsFaceTimeAudioCalls___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) logHandle];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v4 = *(a1 + 48);
    *v15 = 138543618;
    *&v15[4] = v3;
    *&v15[12] = 1024;
    *&v15[14] = v4;
    _os_log_impl(&dword_1C3E90000, v2, OS_LOG_TYPE_DEFAULT, "==> %{public}@: User setting showsFaceTimeAudioCalls to %d", v15, 0x12u);
  }

  v5 = *(a1 + 48);
  *(*(a1 + 32) + 26) = v5;
  v6 = [*(a1 + 32) logHandle];
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5 == 1)
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    v8 = *(*(a1 + 32) + 36);
    *v15 = 67109632;
    *&v15[4] = v8;
    *&v15[8] = 1024;
    *&v15[10] = 16;
    *&v15[14] = 1024;
    *&v15[16] = v8 | 0x10;
    v9 = "Old limitingCallType: 0x%x. OR Mask: 0x%x. New limitingCallType: 0x%x.";
  }

  else
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    v10 = *(*(a1 + 32) + 36);
    *v15 = 67109632;
    *&v15[4] = v10;
    *&v15[8] = 1024;
    *&v15[10] = -17;
    *&v15[14] = 1024;
    *&v15[16] = v10 & 0xFFFFFFEF;
    v9 = "Old limitingCallType: 0x%x. AND Mask: 0x%x. New limitingCallType: 0x%x.";
  }

  _os_log_impl(&dword_1C3E90000, v6, OS_LOG_TYPE_DEFAULT, v9, v15, 0x14u);
LABEL_9:

  v11 = *(a1 + 32);
  v12 = v11[9];
  if (*(a1 + 48) == 1)
  {
    v13 = v12 | 0x10u;
  }

  else
  {
    v13 = v12 & 0xFFFFFFEF;
  }

  return [v11 setLimitingCallTypesSync:{v13, *v15, *&v15[8]}];
}

- (void)setShowsProtectedApps:(BOOL)apps
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __35__CHManager_setShowsProtectedApps___block_invoke;
  v3[3] = &unk_1E81DC488;
  v3[4] = self;
  v3[5] = a2;
  appsCopy = apps;
  [(CHSynchronizedLoggable *)self execute:v3];
}

uint64_t __35__CHManager_setShowsProtectedApps___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) logHandle];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v4 = *(a1 + 48);
    v6 = 138543618;
    v7 = v3;
    v8 = 1024;
    v9 = v4;
    _os_log_impl(&dword_1C3E90000, v2, OS_LOG_TYPE_DEFAULT, "==> %{public}@: User setting showsProtectedAppsTo to %d", &v6, 0x12u);
  }

  *(*(a1 + 32) + 27) = *(a1 + 48);
  return [*(a1 + 32) resetCalls];
}

- (NSSet)allowedProtectedAppBundleIDs
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __41__CHManager_allowedProtectedAppBundleIDs__block_invoke;
  v4[3] = &unk_1E81DC4B0;
  v4[4] = self;
  v2 = [(CHSynchronizedLoggable *)self executeSyncWithResult:v4];

  return v2;
}

- (void)setAllowedProtectedAppBundleIDs:(id)ds
{
  dsCopy = ds;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__CHManager_setAllowedProtectedAppBundleIDs___block_invoke;
  v7[3] = &unk_1E81DC398;
  v8 = dsCopy;
  v9 = a2;
  v7[4] = self;
  v6 = dsCopy;
  [(CHSynchronizedLoggable *)self execute:v7];
}

uint64_t __45__CHManager_setAllowedProtectedAppBundleIDs___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) logHandle];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    v4 = *(a1 + 40);
    v6 = 138543618;
    v7 = v3;
    v8 = 2114;
    v9 = v4;
    _os_log_impl(&dword_1C3E90000, v2, OS_LOG_TYPE_DEFAULT, "==> %{public}@: User setting allowedProtectedAppBundleIDs to %{public}@", &v6, 0x16u);
  }

  [*(*(a1 + 32) + 72) setAllowedProtectedAppBundleIDs:*(a1 + 40)];
  return [*(a1 + 32) resetCalls];
}

- (BOOL)showsTelephonyCalls
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __32__CHManager_showsTelephonyCalls__block_invoke;
  v3[3] = &unk_1E81DC4D8;
  v3[4] = self;
  return [(CHSynchronizedLoggable *)self executeSyncWithBOOL:v3];
}

- (BOOL)showsFaceTimeVideoCalls
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __36__CHManager_showsFaceTimeVideoCalls__block_invoke;
  v3[3] = &unk_1E81DC4D8;
  v3[4] = self;
  return [(CHSynchronizedLoggable *)self executeSyncWithBOOL:v3];
}

- (BOOL)showsFaceTimeAudioCalls
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __36__CHManager_showsFaceTimeAudioCalls__block_invoke;
  v3[3] = &unk_1E81DC4D8;
  v3[4] = self;
  return [(CHSynchronizedLoggable *)self executeSyncWithBOOL:v3];
}

- (unsigned)limitingCallTypes
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0x80000000;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __30__CHManager_limitingCallTypes__block_invoke;
  v4[3] = &unk_1E81DC2F8;
  v4[4] = self;
  v4[5] = &v5;
  [(CHSynchronizedLoggable *)self executeSync:v4];
  v2 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (NSDate)limitingStartDate
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __30__CHManager_limitingStartDate__block_invoke;
  v4[3] = &unk_1E81DC500;
  v4[4] = self;
  v2 = [(CHSynchronizedLoggable *)self executeSyncWithResult:v4];

  return v2;
}

- (NSDate)limitingEndDate
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __28__CHManager_limitingEndDate__block_invoke;
  v4[3] = &unk_1E81DC500;
  v4[4] = self;
  v2 = [(CHSynchronizedLoggable *)self executeSyncWithResult:v4];

  return v2;
}

- (NSArray)limitingCallKinds
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __30__CHManager_limitingCallKinds__block_invoke;
  v4[3] = &unk_1E81DC528;
  v4[4] = self;
  v2 = [(CHSynchronizedLoggable *)self executeSyncWithResult:v4];

  return v2;
}

- (NSPredicate)postFetchingPredicate
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __34__CHManager_postFetchingPredicate__block_invoke;
  v4[3] = &unk_1E81DC550;
  v4[4] = self;
  v2 = [(CHSynchronizedLoggable *)self executeSyncWithResult:v4];

  return v2;
}

- (NSString)coalescingStrategy
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __31__CHManager_coalescingStrategy__block_invoke;
  v4[3] = &unk_1E81DC578;
  v4[4] = self;
  v2 = [(CHSynchronizedLoggable *)self executeSyncWithResult:v4];

  return v2;
}

- (void)setShowsTelephonyCalls:(BOOL)calls
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __36__CHManager_setShowsTelephonyCalls___block_invoke;
  v3[3] = &unk_1E81DC488;
  v3[4] = self;
  v3[5] = a2;
  callsCopy = calls;
  [(CHSynchronizedLoggable *)self execute:v3];
}

uint64_t __36__CHManager_setShowsTelephonyCalls___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) logHandle];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v4 = *(a1 + 48);
    *v15 = 138543618;
    *&v15[4] = v3;
    *&v15[12] = 1024;
    *&v15[14] = v4;
    _os_log_impl(&dword_1C3E90000, v2, OS_LOG_TYPE_DEFAULT, "==> %{public}@: User setting showsTelephonyCalls to %d", v15, 0x12u);
  }

  v5 = *(a1 + 48);
  *(*(a1 + 32) + 24) = v5;
  v6 = [*(a1 + 32) logHandle];
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5 == 1)
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    v8 = *(*(a1 + 32) + 36);
    *v15 = 67109632;
    *&v15[4] = v8;
    *&v15[8] = 1024;
    *&v15[10] = 7;
    *&v15[14] = 1024;
    *&v15[16] = v8 | 7;
    v9 = "Old limitingCallType: 0x%x. OR Mask: 0x%x. New limitingCallType: 0x%x.";
  }

  else
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    v10 = *(*(a1 + 32) + 36);
    *v15 = 67109632;
    *&v15[4] = v10;
    *&v15[8] = 1024;
    *&v15[10] = -8;
    *&v15[14] = 1024;
    *&v15[16] = v10 & 0xFFFFFFF8;
    v9 = "Old limitingCallType: 0x%x. AND Mask: 0x%x. New limitingCallType: 0x%x.";
  }

  _os_log_impl(&dword_1C3E90000, v6, OS_LOG_TYPE_DEFAULT, v9, v15, 0x14u);
LABEL_9:

  v11 = *(a1 + 32);
  v12 = v11[9];
  if (*(a1 + 48) == 1)
  {
    v13 = v12 | 7u;
  }

  else
  {
    v13 = v12 & 0xFFFFFFF8;
  }

  return [v11 setLimitingCallTypesSync:{v13, *v15, *&v15[8]}];
}

- (double)callTimersGetIncoming
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __34__CHManager_callTimersGetIncoming__block_invoke;
  v4[3] = &unk_1E81DC5A0;
  v4[4] = self;
  v4[5] = &v5;
  v4[6] = a2;
  [(CHSynchronizedLoggable *)self executeSync:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __34__CHManager_callTimersGetIncoming__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) syncManager];
  [v2 timerIncoming];
  *(*(*(a1 + 40) + 8) + 24) = v3;

  v4 = [*(a1 + 32) logHandle];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 48));
    v6 = *(*(*(a1 + 40) + 8) + 24);
    v7 = 138543618;
    v8 = v5;
    v9 = 2048;
    v10 = v6;
    _os_log_impl(&dword_1C3E90000, v4, OS_LOG_TYPE_DEFAULT, "==> %{public}@ => %f seconds", &v7, 0x16u);
  }
}

- (double)callTimersGetOutgoing
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __34__CHManager_callTimersGetOutgoing__block_invoke;
  v4[3] = &unk_1E81DC5A0;
  v4[4] = self;
  v4[5] = &v5;
  v4[6] = a2;
  [(CHSynchronizedLoggable *)self executeSync:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __34__CHManager_callTimersGetOutgoing__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) syncManager];
  [v2 timerOutgoing];
  *(*(*(a1 + 40) + 8) + 24) = v3;

  v4 = [*(a1 + 32) logHandle];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 48));
    v6 = *(*(*(a1 + 40) + 8) + 24);
    v7 = 138543618;
    v8 = v5;
    v9 = 2048;
    v10 = v6;
    _os_log_impl(&dword_1C3E90000, v4, OS_LOG_TYPE_DEFAULT, "==> %{public}@ => %f seconds", &v7, 0x16u);
  }
}

- (double)callTimersGetLifetime
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __34__CHManager_callTimersGetLifetime__block_invoke;
  v4[3] = &unk_1E81DC5A0;
  v4[4] = self;
  v4[5] = &v5;
  v4[6] = a2;
  [(CHSynchronizedLoggable *)self executeSync:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __34__CHManager_callTimersGetLifetime__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) syncManager];
  [v2 timerLifetime];
  *(*(*(a1 + 40) + 8) + 24) = v3;

  v4 = [*(a1 + 32) logHandle];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 48));
    v6 = *(*(*(a1 + 40) + 8) + 24);
    v7 = 138543618;
    v8 = v5;
    v9 = 2048;
    v10 = v6;
    _os_log_impl(&dword_1C3E90000, v4, OS_LOG_TYPE_DEFAULT, "==> %{public}@ => %f seconds", &v7, 0x16u);
  }
}

- (void)callTimersReset
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __28__CHManager_callTimersReset__block_invoke;
  v2[3] = &unk_1E81DC5C8;
  v2[4] = self;
  v2[5] = a2;
  [(CHSynchronizedLoggable *)self execute:v2];
}

void __28__CHManager_callTimersReset__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) logHandle];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_1C3E90000, v2, OS_LOG_TYPE_DEFAULT, "==> %{public}@: User requested to reset call timers", &v5, 0xCu);
  }

  v4 = [*(a1 + 32) syncManager];
  [v4 resetTimers];
}

+ (id)limitingCallKindsForCallType:(unsigned int)type
{
  v14[2] = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (type != -1)
  {
    if (type)
    {
      v13[0] = @"kCHServiceProviderKey";
      v13[1] = @"kCHMediaTypeKey";
      v14[0] = @"com.apple.Telephony";
      v14[1] = &unk_1F43A2D10;
      v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
      [v4 addObject:v5];
    }

    if ((type & 0x10) != 0)
    {
      v11[0] = @"kCHServiceProviderKey";
      v11[1] = @"kCHMediaTypeKey";
      v12[0] = @"com.apple.FaceTime";
      v12[1] = &unk_1F43A2D10;
      v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
      [v4 addObject:v6];
    }

    if ((type & 8) != 0)
    {
      v9[0] = @"kCHServiceProviderKey";
      v9[1] = @"kCHMediaTypeKey";
      v10[0] = @"com.apple.FaceTime";
      v10[1] = &unk_1F43A2D28;
      v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
      [v4 addObject:v7];
    }
  }

  return v4;
}

+ (unsigned)CHCallStatusForCallWithDuration:(double)duration isOriginated:(BOOL)originated isAnswered:(BOOL)answered
{
  v5 = &kCHCallStatusConnectedIncoming;
  v6 = &kCHCallStatusMissed;
  if (answered)
  {
    v6 = &kCHCallStatusAnsweredElsewhere;
  }

  if (duration > 0.0)
  {
    v7 = &kCHCallStatusConnectedOutgoing;
  }

  else
  {
    v5 = v6;
    v7 = &kCHCallStatusCancelled;
  }

  if (originated)
  {
    v5 = v7;
  }

  return *v5;
}

- (void)addMultipleCallsToCallHistoryWithTransactions:(id)transactions
{
  transactionsCopy = transactions;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59__CHManager_addMultipleCallsToCallHistoryWithTransactions___block_invoke;
  v6[3] = &unk_1E81DBE38;
  v6[4] = self;
  v7 = transactionsCopy;
  v5 = transactionsCopy;
  [(CHSynchronizedLoggable *)self execute:v6];
}

void __59__CHManager_addMultipleCallsToCallHistoryWithTransactions___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) syncManager];
  [v2 insertRecords:*(a1 + 40)];
}

- (void)addMultipleCallsToCallHistory:(id)history
{
  historyCopy = history;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__CHManager_addMultipleCallsToCallHistory___block_invoke;
  v6[3] = &unk_1E81DBE38;
  v6[4] = self;
  v7 = historyCopy;
  v5 = historyCopy;
  [(CHSynchronizedLoggable *)self execute:v6];
}

void __43__CHManager_addMultipleCallsToCallHistory___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) syncManager];
  [v2 insertRecordsWithoutTransactions:*(a1 + 40)];
}

- (int64_t)setRead:(BOOL)read forCallsWithPredicate:(id)predicate
{
  predicateCopy = predicate;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __43__CHManager_setRead_forCallsWithPredicate___block_invoke;
  v10[3] = &unk_1E81DC5F0;
  v10[4] = self;
  v7 = predicateCopy;
  v11 = v7;
  v12 = &v14;
  readCopy = read;
  [(CHSynchronizedLoggable *)self executeSync:v10];
  v8 = v15[3];

  _Block_object_dispose(&v14, 8);
  return v8;
}

void __43__CHManager_setRead_forCallsWithPredicate___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) logHandle];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    *buf = 138412290;
    v13 = v3;
    _os_log_impl(&dword_1C3E90000, v2, OS_LOG_TYPE_DEFAULT, "Updating read status for calls matching predicate %@", buf, 0xCu);
  }

  v4 = [*(a1 + 32) syncManager];
  v5 = *(a1 + 56);
  v6 = *(a1 + 40);
  v11 = 0;
  v7 = [v4 setRead:v5 forCallsWithPredicate:v6 error:&v11];
  v8 = v11;
  *(*(*(a1 + 48) + 8) + 24) = v7;

  if (*(*(*(a1 + 48) + 8) + 24) == 0x7FFFFFFFFFFFFFFFLL && v8 != 0)
  {
    v10 = [*(a1 + 32) logHandle];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __43__CHManager_setRead_forCallsWithPredicate___block_invoke_cold_1();
    }
  }
}

- (void)setRead:(BOOL)read forCallsWithPredicate:(id)predicate completion:(id)completion
{
  predicateCopy = predicate;
  completionCopy = completion;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __54__CHManager_setRead_forCallsWithPredicate_completion___block_invoke;
  v12[3] = &unk_1E81DC618;
  v12[4] = self;
  v13 = predicateCopy;
  readCopy = read;
  v14 = completionCopy;
  v10 = completionCopy;
  v11 = predicateCopy;
  [(CHSynchronizedLoggable *)self execute:v12];
}

void __54__CHManager_setRead_forCallsWithPredicate_completion___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) logHandle];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    *buf = 138412290;
    v14 = v3;
    _os_log_impl(&dword_1C3E90000, v2, OS_LOG_TYPE_DEFAULT, "Updating read status for calls matching predicate %@", buf, 0xCu);
  }

  v4 = [*(a1 + 32) syncManager];
  v5 = *(a1 + 56);
  v6 = *(a1 + 40);
  v12 = 0;
  v7 = [v4 setRead:v5 forCallsWithPredicate:v6 error:&v12];
  v8 = v12;

  if (v7 == 0x7FFFFFFFFFFFFFFFLL && v8 != 0)
  {
    v10 = [*(a1 + 32) logHandle];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __43__CHManager_setRead_forCallsWithPredicate___block_invoke_cold_1();
    }
  }

  v11 = *(a1 + 48);
  if (v11)
  {
    (*(v11 + 16))(v11, v7);
  }
}

- (int64_t)deleteCallsWithPredicate:(id)predicate
{
  predicateCopy = predicate;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __38__CHManager_deleteCallsWithPredicate___block_invoke;
  v8[3] = &unk_1E81DC640;
  v8[4] = self;
  v5 = predicateCopy;
  v9 = v5;
  v10 = &v11;
  [(CHSynchronizedLoggable *)self executeSync:v8];
  v6 = v12[3];

  _Block_object_dispose(&v11, 8);
  return v6;
}

void __38__CHManager_deleteCallsWithPredicate___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) logHandle];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    *buf = 138412290;
    v12 = v3;
    _os_log_impl(&dword_1C3E90000, v2, OS_LOG_TYPE_DEFAULT, "Deleting calls matching predicate %@", buf, 0xCu);
  }

  v4 = [*(a1 + 32) syncManager];
  v5 = *(a1 + 40);
  v10 = 0;
  v6 = [v4 deleteCallsWithPredicate:v5 error:&v10];
  v7 = v10;
  *(*(*(a1 + 48) + 8) + 24) = v6;

  if (*(*(*(a1 + 48) + 8) + 24) == 0x7FFFFFFFFFFFFFFFLL && v7 != 0)
  {
    v9 = [*(a1 + 32) logHandle];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __38__CHManager_deleteCallsWithPredicate___block_invoke_cold_1();
    }
  }
}

- (void)deleteCallsWithPredicate:(id)predicate completion:(id)completion
{
  predicateCopy = predicate;
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __49__CHManager_deleteCallsWithPredicate_completion___block_invoke;
  v10[3] = &unk_1E81DC668;
  v10[4] = self;
  v11 = predicateCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = predicateCopy;
  [(CHSynchronizedLoggable *)self execute:v10];
}

void __49__CHManager_deleteCallsWithPredicate_completion___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) logHandle];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    *buf = 138412290;
    v13 = v3;
    _os_log_impl(&dword_1C3E90000, v2, OS_LOG_TYPE_DEFAULT, "Deleting calls matching predicate %@", buf, 0xCu);
  }

  v4 = [*(a1 + 32) syncManager];
  v5 = *(a1 + 40);
  v11 = 0;
  v6 = [v4 deleteCallsWithPredicate:v5 error:&v11];
  v7 = v11;

  if (v6 == 0x7FFFFFFFFFFFFFFFLL && v7 != 0)
  {
    v9 = [*(a1 + 32) logHandle];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __38__CHManager_deleteCallsWithPredicate___block_invoke_cold_1();
    }
  }

  v10 = *(a1 + 48);
  if (v10)
  {
    (*(v10 + 16))(v10, v6);
  }
}

- (unint64_t)callCountWithPredicate:(id)predicate
{
  v29[1] = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v5 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"date" ascending:0];
  v29[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __36__CHManager_callCountWithPredicate___block_invoke;
  v16 = &unk_1E81DC690;
  selfCopy = self;
  v7 = predicateCopy;
  v18 = v7;
  v20 = &v21;
  v8 = v6;
  v19 = v8;
  [(CHSynchronizedLoggable *)self executeSync:&v13];
  v9 = [(CHSynchronizedLoggable *)self logHandle:v13];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v22[3];
    *buf = 134218242;
    v26 = v10;
    v27 = 2112;
    v28 = v7;
    _os_log_impl(&dword_1C3E90000, v9, OS_LOG_TYPE_DEFAULT, "Got %lu calls matching predicate %@", buf, 0x16u);
  }

  v11 = v22[3];
  _Block_object_dispose(&v21, 8);

  return v11;
}

void __36__CHManager_callCountWithPredicate___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) logHandle];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1C3E90000, v2, OS_LOG_TYPE_DEFAULT, "Retrieving count of calls matching predicate %@", &v6, 0xCu);
  }

  v4 = [*(a1 + 32) getLimitsDictionaryForPrivateHeader];
  v5 = [*(a1 + 32) syncManager];
  *(*(*(a1 + 56) + 8) + 24) = [v5 fetchCallCountWithPredicate:*(a1 + 40) sortDescriptors:*(a1 + 48) limitsDictionary:v4];
}

- (id)callsWithLimits:(id)limits limit:(unint64_t)limit offset:(unint64_t)offset batchSize:(unint64_t)size
{
  v28[1] = *MEMORY[0x1E69E9840];
  limitsCopy = limits;
  v11 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"date" ascending:0];
  v28[0] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
  syncManager = [(CHManager *)self syncManager];
  v14 = [syncManager fetchCallsWithPredicate:self->_preFetchingPredicate sortDescriptors:v12 limitsDictionary:limitsCopy limit:limit offset:offset batchSize:size];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v15 = v14;
  v16 = [v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v24;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v24 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v23 + 1) + 8 * i);
        phoneBookManager = [(CHManager *)self phoneBookManager];
        [v20 setPhoneBookManager:phoneBookManager];
      }

      v17 = [v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v17);
  }

  return v15;
}

- (id)callsWithPredicate:(id)predicate limit:(unint64_t)limit offset:(unint64_t)offset batchSize:(unint64_t)size
{
  v30[1] = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__2;
  v28 = __Block_byref_object_dispose__2;
  v29 = 0;
  v11 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"date" ascending:0];
  v30[0] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __55__CHManager_callsWithPredicate_limit_offset_batchSize___block_invoke;
  v17[3] = &unk_1E81DC6B8;
  v17[4] = self;
  v13 = predicateCopy;
  v18 = v13;
  v20 = &v24;
  v14 = v12;
  v19 = v14;
  limitCopy = limit;
  offsetCopy = offset;
  sizeCopy = size;
  [(CHSynchronizedLoggable *)self executeSync:v17];
  v15 = v25[5];

  _Block_object_dispose(&v24, 8);

  return v15;
}

void __55__CHManager_callsWithPredicate_limit_offset_batchSize___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) logHandle];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    *buf = 138412290;
    v22 = v3;
    _os_log_impl(&dword_1C3E90000, v2, OS_LOG_TYPE_DEFAULT, "Retrieving calls matching predicate %@", buf, 0xCu);
  }

  v4 = [*(a1 + 32) getLimitsDictionaryForPrivateHeader];
  v5 = [*(a1 + 32) syncManager];
  v6 = [v5 fetchCallsWithPredicate:*(a1 + 40) sortDescriptors:*(a1 + 48) limitsDictionary:v4 limit:*(a1 + 64) offset:*(a1 + 72) batchSize:*(a1 + 80)];
  v7 = *(*(a1 + 56) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = *(*(*(a1 + 56) + 8) + 40);
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      v13 = 0;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v16 + 1) + 8 * v13);
        v15 = [*(a1 + 32) phoneBookManager];
        [v14 setPhoneBookManager:v15];

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }
}

- (id)callIdentifiersWithPredicate:(id)predicate limit:(unint64_t)limit offset:(unint64_t)offset batchSize:(unint64_t)size
{
  v30[1] = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__2;
  v28 = __Block_byref_object_dispose__2;
  v29 = 0;
  v11 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"date" ascending:0];
  v30[0] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __65__CHManager_callIdentifiersWithPredicate_limit_offset_batchSize___block_invoke;
  v17[3] = &unk_1E81DC6B8;
  v17[4] = self;
  v13 = predicateCopy;
  v18 = v13;
  v20 = &v24;
  v14 = v12;
  v19 = v14;
  limitCopy = limit;
  offsetCopy = offset;
  sizeCopy = size;
  [(CHSynchronizedLoggable *)self executeSync:v17];
  v15 = v25[5];

  _Block_object_dispose(&v24, 8);

  return v15;
}

void __65__CHManager_callIdentifiersWithPredicate_limit_offset_batchSize___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) logHandle];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v9 = 138412290;
    v10 = v3;
    _os_log_impl(&dword_1C3E90000, v2, OS_LOG_TYPE_DEFAULT, "Retrieving identifiers for calls matching predicate %@", &v9, 0xCu);
  }

  v4 = [*(a1 + 32) getLimitsDictionaryForPrivateHeader];
  v5 = [*(a1 + 32) syncManager];
  v6 = [v5 fetchCallIdentifiersWithPredicate:*(a1 + 40) sortDescriptors:*(a1 + 48) limitsDictionary:v4 limit:*(a1 + 64) offset:*(a1 + 72) batchSize:*(a1 + 80)];
  v7 = *(*(a1 + 56) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

- (unint64_t)coalescedCallCountWithPredicate:(id)predicate
{
  v19[1] = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v5 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"date" ascending:0];
  v19[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __45__CHManager_coalescedCallCountWithPredicate___block_invoke;
  v11[3] = &unk_1E81DC690;
  v11[4] = self;
  v7 = predicateCopy;
  v12 = v7;
  v14 = &v15;
  v8 = v6;
  v13 = v8;
  [(CHSynchronizedLoggable *)self executeSync:v11];
  v9 = v16[3];

  _Block_object_dispose(&v15, 8);
  return v9;
}

void __45__CHManager_coalescedCallCountWithPredicate___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) logHandle];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1C3E90000, v2, OS_LOG_TYPE_DEFAULT, "Retrieving count of coalesced calls matching predicate %@", &v6, 0xCu);
  }

  v4 = [*(a1 + 32) getLimitsDictionaryForPrivateHeader];
  v5 = [*(a1 + 32) syncManager];
  *(*(*(a1 + 56) + 8) + 24) = [v5 fetchCoalescedCallCountWithPredicate:*(a1 + 40) sortDescriptors:*(a1 + 48) limitsDictionary:v4];
}

- (id)coalescedCallsWithPredicate:(id)predicate limit:(unint64_t)limit offset:(unint64_t)offset batchSize:(unint64_t)size
{
  v30[1] = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__2;
  v28 = __Block_byref_object_dispose__2;
  v29 = 0;
  v11 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"date" ascending:0];
  v30[0] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __64__CHManager_coalescedCallsWithPredicate_limit_offset_batchSize___block_invoke;
  v17[3] = &unk_1E81DC6B8;
  v17[4] = self;
  v13 = predicateCopy;
  v18 = v13;
  v20 = &v24;
  v14 = v12;
  v19 = v14;
  limitCopy = limit;
  offsetCopy = offset;
  sizeCopy = size;
  [(CHSynchronizedLoggable *)self executeSync:v17];
  v15 = v25[5];

  _Block_object_dispose(&v24, 8);

  return v15;
}

void __64__CHManager_coalescedCallsWithPredicate_limit_offset_batchSize___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) logHandle];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    *buf = 138412290;
    v22 = v3;
    _os_log_impl(&dword_1C3E90000, v2, OS_LOG_TYPE_DEFAULT, "Retrieving coalesced calls matching predicate %@", buf, 0xCu);
  }

  v4 = [*(a1 + 32) getLimitsDictionaryForPrivateHeader];
  v5 = [*(a1 + 32) syncManager];
  v6 = [v5 fetchCoalescedCallsWithPredicate:*(a1 + 40) sortDescriptors:*(a1 + 48) limitsDictionary:v4 limit:*(a1 + 64) offset:*(a1 + 72) batchSize:*(a1 + 80)];
  v7 = *(*(a1 + 56) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = *(*(*(a1 + 56) + 8) + 40);
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      v13 = 0;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v16 + 1) + 8 * v13);
        v15 = [*(a1 + 32) phoneBookManager];
        [v14 setPhoneBookManager:v15];

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }
}

- (id)latestRecentCallMatchingPredicate:(id)predicate
{
  v3 = [(CHManager *)self callsWithPredicate:predicate limit:1 offset:0 batchSize:1];
  firstObject = [v3 firstObject];

  return firstObject;
}

- (id)latestCallMatchingNormalizedRemoteParticipantHandleValues:(id)values
{
  v11[2] = *MEMORY[0x1E69E9840];
  values = [MEMORY[0x1E696AE18] predicateWithFormat:@"ANY remoteParticipantHandles.normalizedValue IN %@", values];
  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(service_provider = %@) OR (service_provider = %@)", @"com.apple.FaceTime", @"com.apple.Telephony"];
  v6 = MEMORY[0x1E696AB28];
  v11[0] = v5;
  v11[1] = values;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
  v8 = [v6 andPredicateWithSubpredicates:v7];

  v9 = [(CHManager *)self latestRecentCallMatchingPredicate:v8];

  return v9;
}

- (void)protectedAppsChanged
{
  logHandle = [(CHSynchronizedLoggable *)self logHandle];
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1C3E90000, logHandle, OS_LOG_TYPE_DEFAULT, "CHManager reset calls because protected apps changed", v4, 2u);
  }

  [(CHManager *)self resetCalls];
  notifyClientsOfEvent(@"kCallHistoryDatabaseChangedNotification", 0);
}

- (void)coalescedCallsWithCalls:(void *)a3 usingStrategy:(NSObject *)a4 .cold.1(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 uniqueId];
  *a1 = 138543362;
  *a3 = v7;
  _os_log_error_impl(&dword_1C3E90000, a4, OS_LOG_TYPE_ERROR, "Coalescing hash not found for call with uniqueID %{public}@", a1, 0xCu);
}

- (void)fetchRecentCallsSyncWithCoalescing:(id *)a1 .cold.1(id *a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  [*a1 count];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_1C3E90000, a2, OS_LOG_TYPE_DEBUG, "After coalescing we have %lu calls", v3, 0xCu);
}

void __32__CHManager_databaseSizeInBytes__block_invoke_cold_1(unsigned __int8 *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = getDBLErrorCodeAsString(*a1);
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_1C3E90000, a2, OS_LOG_TYPE_ERROR, "Could not get database size; operation failed with error %{public}@.", v4, 0xCu);
}

void __32__CHManager_databaseSizeInBytes__block_invoke_cold_2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __43__CHManager_updateBytesOfDataUsedFor_with___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __41__CHManager_updateMessageStatusFor_with___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __43__CHManager_setRead_forCallsWithPredicate___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __38__CHManager_deleteCallsWithPredicate___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end