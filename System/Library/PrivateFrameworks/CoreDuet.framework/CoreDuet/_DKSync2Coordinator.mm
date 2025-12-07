@interface _DKSync2Coordinator
+ (BOOL)isOnPower;
+ (NSObject)_syncTypeFromActivity:(uint64_t)activity;
+ (id)keyValueStoreForDomain:(uint64_t)domain;
+ (id)storage;
+ (id)streamNamesToTombstone;
+ (uint64_t)canPerformSyncOperationWithClass:(void *)class syncType:(void *)type history:(void *)history transport:(void *)transport peer:(void *)peer policy:;
+ (uint64_t)shouldDeferSyncOperationWithClass:(void *)class syncType:(void *)type transport:(void *)transport peer:(void *)peer policy:;
+ (void)_updateEventStatsWithSyncElapsedTimeStartDate:(void *)date endDate:;
+ (void)_updateEventStatsWithSyncType:(uint64_t)type;
- (BOOL)isSingleDevice;
- (_BYTE)_unregisterDatabaseObservers;
- (_DKSync2Coordinator)initWithContext:(id)context;
- (_DKSync2Coordinator)initWithStorage:(id)storage;
- (_DKSyncType)syncType;
- (double)_intervalForJobGivenIsSingleDevice:(id *)device;
- (id)_executionCriteriaWithInterval:(uint64_t)interval;
- (id)_updatedExecutionCriteriaFromType:(uint64_t)type;
- (id)createBusyTransactionWithName:(uint64_t)name;
- (id)deletedEventIDsSinceDate:(id)date streamNames:(id)names limit:(unint64_t)limit endDate:(id *)endDate error:(id *)error;
- (id)removeBusyTransaction:(id *)result;
- (id)sortedEventsFromSyncWindows:(id)windows streamNames:(id)names compatibility:(id)compatibility limit:(unint64_t)limit fetchOrder:(int64_t)order error:(id *)error;
- (id)sortedEventsFromSyncWindows:(id)windows streamNames:(id)names limit:(unint64_t)limit fetchOrder:(int64_t)order error:(id *)error;
- (void)__finishSyncWithTransaction:(void *)transaction startDate:(void *)date completion:;
- (void)__performSyncWithCompletion:(id *)completion;
- (void)_checkInTriggeredSyncActivity:(void *)activity isStartup:;
- (void)_cloudIsAvailableToggle;
- (void)_cloudIsUnavailableToggle;
- (void)_cloudSyncAvailabilityDidChange:(id)change;
- (void)_createPushConnection;
- (void)_databaseDidDeleteFromStreamNameCounts:(id)counts;
- (void)_deleteForeignSiriEvents;
- (void)_deleteNextBatchOfOurSiriEventsFromCloudWithStartDate:(uint64_t)date;
- (void)_deleteSiriCloudEvents;
- (void)_deleteSiriEventsIfSiriCloudSyncHasBeenDisabled;
- (void)_finishActivityWithError:(uint64_t)error;
- (void)_noTransportIsAvailableToggle;
- (void)_performEnableAndStart;
- (void)_performInitialSync;
- (void)_performPeriodicJob;
- (void)_performSyncTogglesChangedActions;
- (void)_performSyncWithForceSync:(void *)sync completion:;
- (void)_performSyncWithSyncType:(void *)type completion:;
- (void)_possiblyPerformInitialSync;
- (void)_rapportIsAvailableToggle;
- (void)_rapportIsUnavailableToggle;
- (void)_registerCloudDeviceCountChangedObserver;
- (void)_registerCloudSyncAvailablityObserver;
- (void)_registerDatabaseObservers;
- (void)_registerPeriodicJob;
- (void)_registerPeriodicJobWithInterval:(uint64_t)interval;
- (void)_registerRapportAvailablityObserver;
- (void)_registerRapportLaunchOnDemandHandler;
- (void)_registerSiriSyncEnabledObserver;
- (void)_registerSyncPolicyChangedObserver;
- (void)_registerTriggeredSyncActivityWithIsStartup:(_BYTE *)startup;
- (void)_reregisterPeriodicJob;
- (void)_runTriggeredSyncActivity:(void *)activity;
- (void)_someTransportIsAvailableToggle;
- (void)_syncDisabledToggle;
- (void)_syncEnabledToggle;
- (void)_syncPolicyDidChange:(id)change;
- (void)_synchronizeWithUrgency:(void *)urgency client:(void *)client completion:;
- (void)_unregisterCloudDeviceCountChangedObserver;
- (void)_unregisterCloudSyncAvailablityObserver;
- (void)_unregisterPeriodicJob;
- (void)_unregisterRapportAvailablityObserver;
- (void)_unregisterSiriSyncEnabledObserver;
- (void)_unregisterTriggeredSyncActivity;
- (void)_updateTriggeredSyncActivity;
- (void)configureTracker;
- (void)connection:(id)connection didReceiveIncomingMessage:(id)message;
- (void)connection:(id)connection didReceivePublicToken:(id)token;
- (void)dealloc;
- (void)deleteRemoteStateWithReply:(id)reply;
- (void)fetchSourceDeviceIDFromPeer:(uint64_t)peer;
- (void)handleDataProtectionChangeFor:(int)for willBeAvailable:;
- (void)handleFetchedSourceDeviceID:(void *)d version:(void *)version fromPeer:(void *)peer error:;
- (void)handleStatusChangeForPeer:(id)peer previousTransports:(int64_t)transports;
- (void)knowledgeStorage:(id)storage didDeleteEventsWithStreamNameCounts:(id)counts;
- (void)possiblyUpdateIsBusyProperty;
- (void)setupStorage;
- (void)start;
- (void)syncWithReply:(id)reply;
- (void)synchronizeWithUrgency:(unint64_t)urgency client:(id)client reply:(id)reply;
@end

@implementation _DKSync2Coordinator

- (_DKSync2Coordinator)initWithStorage:(id)storage
{
  v4 = MEMORY[0x1E696AEC0];
  storageCopy = storage;
  storage = [storageCopy storage];
  directory = [storage directory];
  v8 = [v4 stringWithFormat:@"com.apple.coreduet.sync.context:%@", directory];

  storage2 = [storageCopy storage];
  databaseName = [storage2 databaseName];
  v11 = [v8 stringByAppendingPathComponent:databaseName];

  v12 = [[_DKSyncContext alloc] initWithName:v11];
  [(_DKSyncContext *)v12 setStorage:storageCopy];

  v13 = [(_DKSync2Coordinator *)self initWithContext:v12];
  return v13;
}

- (_DKSync2Coordinator)initWithContext:(id)context
{
  contextCopy = context;
  v68.receiver = self;
  v68.super_class = _DKSync2Coordinator;
  v5 = [(_DKSyncContextObject *)&v68 initWithContext:contextCopy];
  if (v5)
  {
    v6 = objc_opt_new();
    busyTransactions = v5->_busyTransactions;
    v5->_busyTransactions = v6;

    storage = [contextCopy storage];
    storage = v5->_storage;
    v5->_storage = storage;

    objc_storeStrong(&_DKSyncKnowledgeStorage, v5->_storage);
    v10 = v5->_storage;
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = [(_DKKnowledgeStorage *)v10 keyValueStoreForDomain:v12];
    keyValueStore = v5->_keyValueStore;
    v5->_keyValueStore = v13;

    v15 = [[_DKThrottledActivity alloc] initWithStore:v5->_keyValueStore namespace:@"_DKSync2Coordinator"];
    activityThrottler = v5->_activityThrottler;
    v5->_activityThrottler = v15;

    v17 = objc_opt_new();
    insertedSyncedEvents = v5->_insertedSyncedEvents;
    v5->_insertedSyncedEvents = v17;

    v19 = objc_opt_new();
    deletedSyncedEvents = v5->_deletedSyncedEvents;
    v5->_deletedSyncedEvents = v19;

    v21 = objc_opt_new();
    activatedPeers = v5->_activatedPeers;
    v5->_activatedPeers = v21;

    v23 = objc_opt_new();
    streamNamesObservedForAdditions = v5->_streamNamesObservedForAdditions;
    v5->_streamNamesObservedForAdditions = v23;

    v25 = objc_opt_new();
    streamNamesObservedForDeletions = v5->_streamNamesObservedForDeletions;
    v5->_streamNamesObservedForDeletions = v25;

    v27 = [(_DKSync2Coordinator *)v5 policyForSyncTransportType:1];
    if (([v27 syncDisabled] & 1) == 0)
    {
      v28 = v5->_streamNamesObservedForAdditions;
      streamNamesWithAdditionsTriggeringSync = [v27 streamNamesWithAdditionsTriggeringSync];
      [(NSMutableSet *)v28 addObjectsFromArray:streamNamesWithAdditionsTriggeringSync];

      v30 = v5->_streamNamesObservedForDeletions;
      streamNamesWithDeletionsTriggeringSync = [v27 streamNamesWithDeletionsTriggeringSync];
      [(NSMutableSet *)v30 addObjectsFromArray:streamNamesWithDeletionsTriggeringSync];
    }

    v32 = [(_DKSync2Coordinator *)v5 policyForSyncTransportType:4];
    if (([v32 syncDisabled] & 1) == 0)
    {
      v33 = v5->_streamNamesObservedForAdditions;
      streamNamesWithAdditionsTriggeringSync2 = [v32 streamNamesWithAdditionsTriggeringSync];
      [(NSMutableSet *)v33 addObjectsFromArray:streamNamesWithAdditionsTriggeringSync2];

      v35 = v5->_streamNamesObservedForDeletions;
      streamNamesWithDeletionsTriggeringSync2 = [v32 streamNamesWithDeletionsTriggeringSync];
      [(NSMutableSet *)v35 addObjectsFromArray:streamNamesWithDeletionsTriggeringSync2];
    }

    v60 = v27;
    v37 = [(_DKSync2Coordinator *)v5 policyForSyncTransportType:8];
    if (([v37 syncDisabled] & 1) == 0)
    {
      v38 = v5->_streamNamesObservedForAdditions;
      streamNamesWithAdditionsTriggeringSync3 = [v37 streamNamesWithAdditionsTriggeringSync];
      [(NSMutableSet *)v38 addObjectsFromArray:streamNamesWithAdditionsTriggeringSync3];

      v40 = v5->_streamNamesObservedForDeletions;
      streamNamesWithDeletionsTriggeringSync3 = [v37 streamNamesWithDeletionsTriggeringSync];
      [(NSMutableSet *)v40 addObjectsFromArray:streamNamesWithDeletionsTriggeringSync3];
    }

    v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SyncCoordinatorTriggeredSyncDelay"];
    triggeredSyncDelayActivityName = v5->_triggeredSyncDelayActivityName;
    v5->_triggeredSyncDelayActivityName = v42;

    v44 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SyncCoordinatorSync"];
    syncActivityName = v5->_syncActivityName;
    v5->_syncActivityName = v44;

    v46 = [_DKSyncToggle toggleWithObject:v5 name:@"sync enabled" enableSelector:sel__syncEnabledToggle disableSelector:sel__syncDisabledToggle];
    syncEnabledToggler = v5->_syncEnabledToggler;
    v5->_syncEnabledToggler = v46;

    v48 = [_DKSyncToggle toggleWithObject:v5 name:@"some transport is available" enableSelector:sel__someTransportIsAvailableToggle disableSelector:sel__noTransportIsAvailableToggle];
    someTransportIsAvailableToggler = v5->_someTransportIsAvailableToggler;
    v5->_someTransportIsAvailableToggler = v48;

    v50 = [_DKSyncToggle toggleWithObject:v5 name:@"Cloud is available" enableSelector:sel__cloudIsAvailableToggle disableSelector:sel__cloudIsUnavailableToggle];
    cloudIsAvailableToggler = v5->_cloudIsAvailableToggler;
    v5->_cloudIsAvailableToggler = v50;

    v52 = [_DKSyncToggle toggleWithObject:v5 name:@"Rapport is available" enableSelector:sel__rapportIsAvailableToggle disableSelector:sel__rapportIsUnavailableToggle];
    rapportIsAvailableToggler = v5->_rapportIsAvailableToggler;
    v5->_rapportIsAvailableToggler = v52;

    v54 = objc_alloc_init(_DKDataProtectionStateMonitor);
    dataProtectionMonitor = v5->_dataProtectionMonitor;
    v5->_dataProtectionMonitor = v54;

    objc_initWeak(&location, v5);
    v65[0] = MEMORY[0x1E69E9820];
    v65[1] = 3221225472;
    v65[2] = __39___DKSync2Coordinator_initWithContext___block_invoke;
    v65[3] = &unk_1E73673F0;
    objc_copyWeak(&v66, &location);
    [(_DKDataProtectionStateMonitor *)v5->_dataProtectionMonitor setChangeHandler:v65];
    v56 = +[_DKSyncUrgencyTracker sharedInstance];
    v57 = +[_CDObservationCenter sharedInstance];
    v58 = +[_DKSyncSerializer underlyingQueue];
    v63[0] = MEMORY[0x1E69E9820];
    v63[1] = 3221225472;
    v63[2] = __39___DKSync2Coordinator_initWithContext___block_invoke_2;
    v63[3] = &unk_1E7367418;
    objc_copyWeak(&v64, &location);
    [v57 addObserver:v5 name:@"_DKSyncUrgencyDidChangeNotification" sender:v56 queue:v58 usingBlock:v63];

    v61[0] = MEMORY[0x1E69E9820];
    v61[1] = 3221225472;
    v61[2] = __39___DKSync2Coordinator_initWithContext___block_invoke_3;
    v61[3] = &unk_1E7367440;
    v62 = v5;
    [_DKSyncSerializer performAsyncBlock:v61];

    objc_destroyWeak(&v64);
    objc_destroyWeak(&v66);
    objc_destroyWeak(&location);
  }

  return v5;
}

- (void)dealloc
{
  if (self->_observerToken)
  {
    v3 = +[_DKSyncPeerStatusTracker sharedInstance];
    [v3 removeStatusChangeObserver:self->_observerToken];
  }

  v4.receiver = self;
  v4.super_class = _DKSync2Coordinator;
  [(_DKSync2Coordinator *)&v4 dealloc];
}

+ (id)storage
{
  objc_opt_self();
  v1 = _DKSyncKnowledgeStorage;

  return v1;
}

+ (id)keyValueStoreForDomain:(uint64_t)domain
{
  v2 = a2;
  objc_opt_self();
  v3 = [_DKSyncKnowledgeStorage keyValueStoreForDomain:v2];

  return v3;
}

- (void)_syncEnabledToggle
{
  v3 = +[_DKSyncSerializer underlyingQueue];
  dispatch_assert_queue_V2(v3);

  [(_DKSync2Coordinator *)self _registerSyncPolicyChangedObserver];
  [(_DKSync2Coordinator *)self _registerRapportAvailablityObserver];
  [(_DKSync2Coordinator *)self _registerCloudSyncAvailablityObserver];
  [(_DKSync2Coordinator *)self _registerSiriSyncEnabledObserver];
  [(_DKSync2Coordinator *)self _registerRapportLaunchOnDemandHandler];
  [(_DKSync2Coordinator *)self _performEnableAndStart];

  [(_DKSync2Coordinator *)self _deleteSiriEventsIfSiriCloudSyncHasBeenDisabled];
}

- (void)_syncDisabledToggle
{
  v3 = +[_DKSyncSerializer underlyingQueue];
  dispatch_assert_queue_V2(v3);

  [(_DKSync2Coordinator *)self _unregisterRapportAvailablityObserver];
  [(_DKSync2Coordinator *)self _unregisterCloudSyncAvailablityObserver];

  [(_DKSync2Coordinator *)self _unregisterSiriSyncEnabledObserver];
}

- (void)_someTransportIsAvailableToggle
{
  v3 = +[_DKSyncSerializer underlyingQueue];
  dispatch_assert_queue_V2(v3);

  [(_DKSync2Coordinator *)self _registerPeriodicJob];
  [(_DKSync2Coordinator *)self _registerDatabaseObservers];

  [(_DKSync2Coordinator *)self _registerTriggeredSyncActivityWithIsStartup:?];
}

- (void)_registerTriggeredSyncActivityWithIsStartup:(_BYTE *)startup
{
  v13 = *MEMORY[0x1E69E9840];
  if (startup)
  {
    v4 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v4);

    if ((startup[184] & 1) == 0)
    {
      v5 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = [objc_opt_class() description];
        *buf = 138543362;
        v12 = v6;
        _os_log_impl(&dword_191750000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Registering triggered sync activity", buf, 0xCu);
      }

      startup[184] = 1;
      objc_initWeak(buf, startup);
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __67___DKSync2Coordinator__registerTriggeredSyncActivityWithIsStartup___block_invoke;
      v8[3] = &unk_1E73676E8;
      objc_copyWeak(&v9, buf);
      v7 = *MEMORY[0x1E69E9C50];
      v10 = a2;
      xpc_activity_register("com.apple.coreduet.sync.triggered", v7, v8);
      objc_destroyWeak(&v9);
      objc_destroyWeak(buf);
    }
  }
}

- (void)_noTransportIsAvailableToggle
{
  v3 = +[_DKSyncSerializer underlyingQueue];
  dispatch_assert_queue_V2(v3);

  [(_DKSync2Coordinator *)self _unregisterPeriodicJob];

  [(_DKSync2Coordinator *)self _unregisterDatabaseObservers];
}

- (void)_possiblyPerformInitialSync
{
  v9 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v2 = [self[27] dateForKey:@"InitialSyncWithCloudDate"];
    if (!v2)
    {
      v3 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v4 = [objc_opt_class() description];
        *buf = 138543362;
        v8 = v4;
        _os_log_impl(&dword_191750000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: Scheduling initial sync", buf, 0xCu);
      }

      objc_initWeak(buf, self);
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __50___DKSync2Coordinator__possiblyPerformInitialSync__block_invoke;
      v5[3] = &unk_1E73675D0;
      objc_copyWeak(&v6, buf);
      v5[4] = self;
      [_DKSyncSerializer performAfter:v5 block:60.0];
      objc_destroyWeak(&v6);
      objc_destroyWeak(buf);
    }
  }
}

- (void)configureTracker
{
  if (self)
  {
    v2 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v2);

    objc_initWeak(&location, self);
    v3 = +[_DKSyncPeerStatusTracker sharedInstance];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __39___DKSync2Coordinator_configureTracker__block_invoke;
    v6[3] = &unk_1E7367468;
    objc_copyWeak(&v7, &location);
    v4 = [v3 addStatusChangeObserverWithBlock:v6];
    v5 = self[3];
    self[3] = v4;

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

- (void)setupStorage
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = +[_DKSyncSerializer underlyingQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [[_DKSyncLocalKnowledgeStorage alloc] initWithKnowledgeStorage:?];
  localStorage = self->_localStorage;
  self->_localStorage = v4;

  v6 = [(_DKSync2Coordinator *)self policyForSyncTransportType:1];
  if ([v6 syncDisabled])
  {
  }

  else
  {
    v7 = +[_DKSync2Policy rapportSyncDisabled];

    if (!v7)
    {
      v10 = +[_DKSyncRapportKnowledgeStorage sharedInstance];
      transportRapport = self->_transportRapport;
      self->_transportRapport = v10;

      [(_DKSyncRemoteKnowledgeStorage *)self->_transportRapport setFetchDelegate:self];
      goto LABEL_8;
    }
  }

  v8 = +[_CDLogging syncChannel];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [objc_opt_class() description];
    *v26 = 138543362;
    *&v26[4] = v9;
    _os_log_impl(&dword_191750000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: Rapport transport disabled by policy", v26, 0xCu);
  }

LABEL_8:
  v12 = [(_DKSync2Coordinator *)self policyForSyncTransportType:4];
  if ([v12 syncDisabled])
  {

LABEL_11:
    v14 = +[_CDLogging syncChannel];
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
LABEL_14:

      goto LABEL_15;
    }

    v15 = [objc_opt_class() description];
    *v26 = 138543362;
    *&v26[4] = v15;
    v16 = "%{public}@: Cloud(Down) transport disabled by policy";
LABEL_13:
    _os_log_impl(&dword_191750000, v14, OS_LOG_TYPE_DEFAULT, v16, v26, 0xCu);

    goto LABEL_14;
  }

  v13 = +[_DKSync2Policy cloudSyncDisabled];

  if (v13)
  {
    goto LABEL_11;
  }

  if (!+[_DKCloudUtilities isCloudKitEnabled])
  {
    v14 = +[_CDLogging syncChannel];
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v15 = [objc_opt_class() description];
    *v26 = 138543362;
    *&v26[4] = v15;
    v16 = "%{public}@: Cloud(Down) transport is not enabled";
    goto LABEL_13;
  }

  v22 = +[_DKSyncDownCloudKitKnowledgeStorage sharedInstance];
  transportCloudDown = self->_transportCloudDown;
  self->_transportCloudDown = v22;

  [(_DKSyncRemoteKnowledgeStorage *)self->_transportCloudDown setFetchDelegate:self];
LABEL_15:
  v17 = [(_DKSync2Coordinator *)self policyForSyncTransportType:8, *v26, *&v26[8]];
  if ([v17 syncDisabled])
  {

    goto LABEL_18;
  }

  v18 = +[_DKSync2Policy cloudSyncDisabled];

  if (v18)
  {
LABEL_18:
    v19 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [objc_opt_class() description];
      *v26 = 138543362;
      *&v26[4] = v20;
      v21 = "%{public}@: Cloud(Up) transport disabled by policy";
LABEL_20:
      _os_log_impl(&dword_191750000, v19, OS_LOG_TYPE_DEFAULT, v21, v26, 0xCu);

      goto LABEL_21;
    }

    goto LABEL_21;
  }

  if (+[_DKCloudUtilities isCloudKitEnabled])
  {
    v24 = +[_DKSyncUpCloudKitKnowledgeStorage sharedInstance];
    transportCloudUp = self->_transportCloudUp;
    self->_transportCloudUp = v24;

    [(_DKSyncRemoteKnowledgeStorage *)self->_transportCloudUp setFetchDelegate:self];
    return;
  }

  v19 = +[_CDLogging syncChannel];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = [objc_opt_class() description];
    *v26 = 138543362;
    *&v26[4] = v20;
    v21 = "%{public}@: Cloud(Up) transport is not enabled";
    goto LABEL_20;
  }

LABEL_21:
}

- (void)start
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = +[_DKSyncSerializer underlyingQueue];
  dispatch_assert_queue_V2(v3);

  if (self->_transportRapport)
  {
    v4 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [objc_opt_class() description];
      v10 = 138543362;
      v11 = v5;
      _os_log_impl(&dword_191750000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Will start transport Rapport", &v10, 0xCu);
    }
  }

  if (self->_transportCloudDown)
  {
    v6 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [objc_opt_class() description];
      v10 = 138543362;
      v11 = v7;
      _os_log_impl(&dword_191750000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: Will start transport Cloud(Down)", &v10, 0xCu);
    }
  }

  if (self->_transportCloudUp)
  {
    v8 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [objc_opt_class() description];
      v10 = 138543362;
      v11 = v9;
      _os_log_impl(&dword_191750000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: Will start transport Cloud(Up)", &v10, 0xCu);
    }
  }

  [(_DKSyncRemoteKnowledgeStorage *)self->_transportRapport start];
  [(_DKSyncRemoteKnowledgeStorage *)self->_transportCloudDown start];
  [(_DKSyncRemoteKnowledgeStorage *)self->_transportCloudUp start];
}

+ (uint64_t)shouldDeferSyncOperationWithClass:(void *)class syncType:(void *)type transport:(void *)transport peer:(void *)peer policy:
{
  v53 = *MEMORY[0x1E69E9840];
  classCopy = class;
  typeCopy = type;
  transportCopy = transport;
  peerCopy = peer;
  v14 = objc_opt_self();
  if (shouldDeferSyncOperationWithClass_syncType_transport_peer_policy__shouldDeferCounterInitialized != -1)
  {
    +[_DKSync2Coordinator shouldDeferSyncOperationWithClass:syncType:transport:peer:policy:];
  }

  v15 = +[_DKSyncSerializer underlyingQueue];
  dispatch_assert_queue_V2(v15);

  if (![peerCopy canDeferSyncOperationWithSyncType:classCopy])
  {
    goto LABEL_19;
  }

  xpcActivity = [(_DKSyncType *)classCopy xpcActivity];
  v17 = xpcActivity;
  if (!xpcActivity || !xpc_activity_should_defer(xpcActivity))
  {

LABEL_19:
    v28 = 0;
    v29 = @"no";
    goto LABEL_20;
  }

  if (!xpc_activity_set_state(v17, 3))
  {
    v18 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [_DKSync2Coordinator shouldDeferSyncOperationWithClass:v14 syncType:v18 transport:? peer:? policy:?];
    }

    xpc_activity_set_state(v17, 5);
  }

  v19 = +[_CDLogging syncChannel];
  v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
  if (transportCopy)
  {
    if (v20)
    {
      v38 = [objc_opt_class() description];
      transportType = [typeCopy transportType];
      v22 = "down from";
      if (transportType == 8)
      {
        v22 = "up to";
      }

      v36 = v22;
      v23 = [transportCopy me];
      v24 = &stru_1F05B9908;
      v25 = @"pseudo ";
      if (!v23)
      {
        v25 = &stru_1F05B9908;
      }

      v35 = v25;
      identifier = [transportCopy identifier];
      model = [transportCopy model];
      if (model)
      {
        v27 = MEMORY[0x1E696AEC0];
        model2 = [transportCopy model];
        v24 = [v27 stringWithFormat:@" (%@)", model2];
      }

      name = [typeCopy name];
      *buf = 138544898;
      v40 = v38;
      v41 = 2112;
      v42 = a2;
      v43 = 2082;
      v44 = v36;
      v45 = 2114;
      v46 = v35;
      v47 = 2114;
      v48 = identifier;
      v49 = 2114;
      v50 = v24;
      v51 = 2114;
      v52 = name;
      _os_log_impl(&dword_191750000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@: (%@) Skipping sync %{public}s %{public}@peer %{public}@%{public}@ on transport %{public}@ operation because activity should be deferred", buf, 0x48u);

      if (model)
      {
      }
    }
  }

  else if (v20)
  {
    v31 = [objc_opt_class() description];
    name2 = [peerCopy name];
    *buf = 138543874;
    v40 = v31;
    v41 = 2112;
    v42 = a2;
    v43 = 2114;
    v44 = name2;
    _os_log_impl(&dword_191750000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@: (%@) Skipping %{public}@ sync operation because activity should be deferred", buf, 0x20u);
  }

  v29 = @"yes";
  v28 = 1;
LABEL_20:
  [(_DKEventTypeStatsCounter *)shouldDeferSyncOperationWithClass_syncType_transport_peer_policy__shouldDeferCounter incrementCountByNumber:v29 typeValue:?];

  return v28;
}

+ (uint64_t)canPerformSyncOperationWithClass:(void *)class syncType:(void *)type history:(void *)history transport:(void *)transport peer:(void *)peer policy:
{
  v84 = *MEMORY[0x1E69E9840];
  classCopy = class;
  typeCopy = type;
  historyCopy = history;
  transportCopy = transport;
  peerCopy = peer;
  v17 = objc_opt_self();
  v18 = +[_DKSyncSerializer underlyingQueue];
  dispatch_assert_queue_V2(v18);

  if ([historyCopy isAvailable])
  {
    v19 = +[_DKSyncPeerStatusTracker sharedInstance];
    transportType = [historyCopy transportType];
    v21 = [v19 activeTransportsForPeer:transportCopy];
    v68 = a2;
    if (!transportCopy || (v21 & transportType) != 0)
    {
      if (typeCopy)
      {
        lastSyncDate = [typeCopy lastSyncDate];
        v37 = [peerCopy canPerformSyncOperationWithSyncType:classCopy lastSyncDate:lastSyncDate lastDaySyncCount:objc_msgSend(typeCopy isCharging:{"lastDaySyncCount"), +[_DKSync2Coordinator isOnPower](v17)}];
        if ((v37 & 1) == 0)
        {
          v38 = +[_CDLogging syncChannel];
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            v56 = v38;
            logb = v19;
            v64 = typeCopy;
            v67 = classCopy;
            v54 = [objc_opt_class() description];
            if ([historyCopy transportType] == 8)
            {
              v39 = "up to";
            }

            else
            {
              v39 = "down from";
            }

            v40 = &stru_1F05B9908;
            if ([transportCopy me])
            {
              v41 = @"pseudo ";
            }

            else
            {
              v41 = &stru_1F05B9908;
            }

            identifier = [transportCopy identifier];
            model = [transportCopy model];
            v58 = peerCopy;
            if (model)
            {
              v44 = MEMORY[0x1E696AEC0];
              model2 = [transportCopy model];
              v40 = [v44 stringWithFormat:@" (%@)", model2];
            }

            name = [historyCopy name];
            *buf = 138544898;
            v71 = v54;
            v72 = 2112;
            v73 = v68;
            v74 = 2082;
            v75 = v39;
            v76 = 2114;
            v77 = v41;
            v78 = 2114;
            v79 = identifier;
            v80 = 2114;
            v81 = v40;
            v82 = 2114;
            v83 = name;
            _os_log_impl(&dword_191750000, v56, OS_LOG_TYPE_DEFAULT, "%{public}@: (%@) Skipping sync %{public}s %{public}@peer %{public}@%{public}@ on transport %{public}@ because of policy", buf, 0x48u);

            if (model)
            {
            }

            typeCopy = v64;
            classCopy = v67;
            peerCopy = v58;
            v19 = logb;
            v38 = v56;
          }
        }

        goto LABEL_47;
      }

      lastSyncDate = +[_CDLogging syncChannel];
      if (os_log_type_enabled(lastSyncDate, OS_LOG_TYPE_ERROR))
      {
        log = v19;
        v62 = 0;
        v65 = classCopy;
        v55 = [objc_opt_class() description];
        if ([historyCopy transportType] == 8)
        {
          v49 = "up to";
        }

        else
        {
          v49 = "down from";
        }

        v24 = &stru_1F05B9908;
        if ([transportCopy me])
        {
          v50 = @"pseudo ";
        }

        else
        {
          v50 = &stru_1F05B9908;
        }

        identifier2 = [transportCopy identifier];
        model3 = [transportCopy model];
        v28 = peerCopy;
        if (model3)
        {
          v51 = MEMORY[0x1E696AEC0];
          model4 = [transportCopy model];
          v24 = [v51 stringWithFormat:@" (%@)", model4];
        }

        name2 = [historyCopy name];
        *buf = 138544898;
        v71 = v55;
        v72 = 2112;
        v73 = v68;
        v74 = 2082;
        v75 = v49;
        v76 = 2114;
        v77 = v50;
        v78 = 2114;
        v79 = identifier2;
        v80 = 2114;
        v81 = v24;
        v82 = 2114;
        v83 = name2;
        _os_log_error_impl(&dword_191750000, lastSyncDate, OS_LOG_TYPE_ERROR, "%{public}@: (%@) Skipping sync %{public}s %{public}@peer %{public}@%{public}@ on transport %{public}@ because history is unavailable", buf, 0x48u);
        goto LABEL_40;
      }
    }

    else
    {
      lastSyncDate = +[_CDLogging syncChannel];
      if (os_log_type_enabled(lastSyncDate, OS_LOG_TYPE_DEFAULT))
      {
        log = v19;
        v62 = typeCopy;
        v65 = classCopy;
        v55 = [objc_opt_class() description];
        if ([historyCopy transportType] == 8)
        {
          v23 = "up to";
        }

        else
        {
          v23 = "down from";
        }

        v24 = &stru_1F05B9908;
        if ([transportCopy me])
        {
          v25 = @"pseudo ";
        }

        else
        {
          v25 = &stru_1F05B9908;
        }

        identifier2 = [transportCopy identifier];
        model3 = [transportCopy model];
        v28 = peerCopy;
        if (model3)
        {
          v29 = MEMORY[0x1E696AEC0];
          model4 = [transportCopy model];
          v24 = [v29 stringWithFormat:@" (%@)", model4];
        }

        name2 = [historyCopy name];
        *buf = 138544898;
        v71 = v55;
        v72 = 2112;
        v73 = v68;
        v74 = 2082;
        v75 = v23;
        v76 = 2114;
        v77 = v25;
        v78 = 2114;
        v79 = identifier2;
        v80 = 2114;
        v81 = v24;
        v82 = 2114;
        v83 = name2;
        _os_log_impl(&dword_191750000, lastSyncDate, OS_LOG_TYPE_DEFAULT, "%{public}@: (%@) Skipping sync %{public}s %{public}@peer %{public}@%{public}@ on transport %{public}@ because not currently active on transport", buf, 0x48u);
LABEL_40:

        if (model3)
        {
        }

        v37 = 0;
        typeCopy = v62;
        classCopy = v65;
        peerCopy = v28;
        v19 = log;
        goto LABEL_47;
      }
    }

    v37 = 0;
LABEL_47:

    goto LABEL_48;
  }

  v19 = +[_CDLogging syncChannel];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v69 = a2;
    v57 = peerCopy;
    loga = v19;
    v63 = typeCopy;
    v30 = [objc_opt_class() description];
    if ([historyCopy transportType] == 8)
    {
      v31 = "up to";
    }

    else
    {
      v31 = "down from";
    }

    peerCopy = &stru_1F05B9908;
    if ([transportCopy me])
    {
      v33 = @"pseudo ";
    }

    else
    {
      v33 = &stru_1F05B9908;
    }

    identifier3 = [transportCopy identifier];
    model5 = [transportCopy model];
    v66 = classCopy;
    if (model5)
    {
      v36 = MEMORY[0x1E696AEC0];
      peerCopy = [transportCopy model];
      peerCopy = [v36 stringWithFormat:@" (%@)", peerCopy];
    }

    name3 = [historyCopy name];
    *buf = 138544898;
    v71 = v30;
    v72 = 2112;
    v73 = v69;
    v74 = 2082;
    v75 = v31;
    v76 = 2114;
    v77 = v33;
    v78 = 2114;
    v79 = identifier3;
    v80 = 2114;
    v81 = peerCopy;
    v82 = 2114;
    v83 = name3;
    v19 = loga;
    _os_log_impl(&dword_191750000, loga, OS_LOG_TYPE_DEFAULT, "%{public}@: (%@) Skipping sync %{public}s %{public}@peer %{public}@%{public}@ on transport %{public}@ because transport is not available", buf, 0x48u);

    if (model5)
    {
    }

    v37 = 0;
    typeCopy = v63;
    classCopy = v66;
    peerCopy = v57;
  }

  else
  {
    v37 = 0;
  }

LABEL_48:

  return v37;
}

+ (BOOL)isOnPower
{
  v15 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  IOPSGetPercentRemaining();
  v1 = IOPSCopyPowerSourcesInfo();
  v2 = IOPSGetProvidingPowerSourceType(v1);
  v3 = CFStringCompare(v2, @"AC Power", 1uLL);
  if (v1)
  {
    CFRelease(v1);
  }

  v4 = +[_CDLogging syncChannel];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v6 = [objc_opt_class() description];
    *buf = 138544130;
    v8 = v6;
    v9 = 1024;
    v10 = 0;
    v11 = 1024;
    v12 = v3 == kCFCompareEqualTo;
    v13 = 1024;
    v14 = v12;
    _os_log_debug_impl(&dword_191750000, v4, OS_LOG_TYPE_DEBUG, "%{public}@: Checking AC power found isCharging = %{BOOL}d and isOnAC = %{BOOL}d so isOnPower = %{BOOL}d", buf, 0x1Eu);
  }

  return v3 == kCFCompareEqualTo;
}

- (void)handleStatusChangeForPeer:(id)peer previousTransports:(int64_t)transports
{
  peerCopy = peer;
  v6 = +[_DKSyncSerializer underlyingQueue];
  dispatch_assert_queue_V2(v6);

  v7 = +[_DKSyncPeerStatusTracker sharedInstance];
  v8 = [v7 activeTransportsForPeer:peerCopy];

  if (v8 == transports)
  {
    if (transports)
    {
      goto LABEL_7;
    }
  }

  else if (transports && v8 || ([(_DKSync2Coordinator *)self _reregisterPeriodicJob], transports))
  {
LABEL_7:
    if ((v8 & ~transports) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (!v8)
  {
    goto LABEL_7;
  }

LABEL_8:
  sourceDeviceID = [peerCopy sourceDeviceID];

  if (!sourceDeviceID)
  {
    [(_DKSync2Coordinator *)self fetchSourceDeviceIDFromPeer:peerCopy];
  }

LABEL_10:
}

- (void)syncWithReply:(id)reply
{
  v12 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  if ([(_DKDataProtectionStateMonitor *)self->_dataProtectionMonitor isDataAvailableFor:*MEMORY[0x1E696A388]])
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __37___DKSync2Coordinator_syncWithReply___block_invoke;
    v8[3] = &unk_1E73674E0;
    v8[4] = self;
    v9 = replyCopy;
    [_DKSyncSerializer performSyncBlock:v8];
  }

  else
  {
    v5 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [objc_opt_class() description];
      *buf = 138543362;
      v11 = v6;
      _os_log_impl(&dword_191750000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Not syncing because storage is not yet available", buf, 0xCu);
    }

    if (replyCopy)
    {
      v7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.coreduet.knowledge" code:6 userInfo:0];
      (*(replyCopy + 2))(replyCopy, 0, v7);
    }
  }
}

- (void)synchronizeWithUrgency:(unint64_t)urgency client:(id)client reply:(id)reply
{
  v19 = *MEMORY[0x1E69E9840];
  clientCopy = client;
  replyCopy = reply;
  if ([(_DKDataProtectionStateMonitor *)self->_dataProtectionMonitor isDataAvailableFor:*MEMORY[0x1E696A388]])
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __59___DKSync2Coordinator_synchronizeWithUrgency_client_reply___block_invoke;
    v13[3] = &unk_1E7367530;
    v13[4] = self;
    urgencyCopy = urgency;
    v14 = clientCopy;
    v15 = replyCopy;
    [_DKSyncSerializer performSyncBlock:v13];
  }

  else
  {
    v10 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [objc_opt_class() description];
      *buf = 138543362;
      v18 = v11;
      _os_log_impl(&dword_191750000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: Not urgently syncing because storage is not yet available", buf, 0xCu);
    }

    if (replyCopy)
    {
      v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.coreduet.knowledge" code:6 userInfo:0];
      (*(replyCopy + 2))(replyCopy, 0, v12);
    }
  }
}

- (void)deleteRemoteStateWithReply:(id)reply
{
  v10 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  if (![(_DKDataProtectionStateMonitor *)self->_dataProtectionMonitor isDataAvailableFor:*MEMORY[0x1E696A388]])
  {
    v5 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [objc_opt_class() description];
      v8 = 138543362;
      v9 = v6;
      _os_log_impl(&dword_191750000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Not deleting remote state because storage is not yet available", &v8, 0xCu);
    }

    if (replyCopy)
    {
      v7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.coreduet.knowledge" code:6 userInfo:0];
      replyCopy[2](replyCopy, 0, v7);
    }
  }
}

- (void)_performSyncWithSyncType:(void *)type completion:
{
  v61 = *MEMORY[0x1E69E9840];
  v6 = a2;
  typeCopy = type;
  if (self)
  {
    v8 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v8);

    v9 = self[12];
    if (!v9)
    {
      v35 = [[_DKSync2State alloc] initWithType:v6 completion:typeCopy];
      v36 = self[12];
      self[12] = v35;

      v10 = self[12];
      goto LABEL_45;
    }

    v10 = v9;
    forceSync = [(_DKSyncType *)v6 forceSync];
    if (forceSync)
    {
      v3 = objc_getProperty(v10, v11, 16, 1);
      if (([(_DKSyncType *)v3 forceSync]& 1) == 0)
      {

        goto LABEL_17;
      }

      if (([(_DKSyncType *)v6 isPeriodicSync]& 1) == 0)
      {

        goto LABEL_11;
      }
    }

    else if (([(_DKSyncType *)v6 isPeriodicSync]& 1) == 0)
    {
      goto LABEL_11;
    }

    Property = objc_getProperty(v10, v13, 16, 1);
    isPeriodicSync = [(_DKSyncType *)Property isPeriodicSync];
    if (forceSync)
    {
    }

    if (isPeriodicSync)
    {
LABEL_11:
      if (v10[1])
      {
        v16 = objc_getProperty(v10, v13, 16, 1);
        if ([(_DKSyncType *)v16 isTriggeredSync])
        {
          v18 = objc_getProperty(v10, v17, 16, 1);
          xpcActivity = [(_DKSyncType *)v18 xpcActivity];
          if (xpcActivity)
          {
          }

          else
          {
            xpcActivity2 = [(_DKSyncType *)v6 xpcActivity];

            if (!xpcActivity2)
            {
              v38 = +[_CDLogging syncChannel];
              if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
              {
                v39 = [objc_opt_class() description];
                *buf = 138543362;
                v60 = v39;
                _os_log_impl(&dword_191750000, v38, OS_LOG_TYPE_DEFAULT, "%{public}@: Triggered sync pending and received another triggered sync", buf, 0xCu);
              }
            }
          }

          [(_DKSyncType *)v10[2] mergeType:v6];
          v41 = objc_getProperty(v10, v40, 16, 1);
          xpcActivity3 = [(_DKSyncType *)v41 xpcActivity];

          v29 = xpcActivity3 != 0;
        }

        else
        {
          v29 = 0;
        }

        v43 = +[_CDLogging syncChannel];
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          v44 = [objc_opt_class() description];
          *buf = 138543362;
          v60 = v44;
          _os_log_impl(&dword_191750000, v43, OS_LOG_TYPE_DEFAULT, "%{public}@: Sync pending, queueing completion block", buf, 0xCu);
        }

        [(_DKSync2State *)v10 addCompletionBlock:typeCopy];
        if (v29)
        {
          goto LABEL_45;
        }
      }

      else
      {
        [(_DKSync2Coordinator *)v10 _performSyncWithSyncType:typeCopy completion:self];
      }

      goto LABEL_62;
    }

LABEL_17:
    if (v10[1])
    {
      forceSync2 = [(_DKSyncType *)v6 forceSync];
      v22 = +[_CDLogging syncChannel];
      v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
      if (forceSync2)
      {
        if (v23)
        {
          v24 = [objc_opt_class() description];
          *buf = 138543362;
          v60 = v24;
          _os_log_impl(&dword_191750000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@: Sync pending, upgrading to forced sync", buf, 0xCu);
        }
      }

      else if (v23)
      {
        v30 = [objc_opt_class() description];
        *buf = 138543362;
        v60 = v30;
        _os_log_impl(&dword_191750000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@: Sync pending, upgrading to periodic sync", buf, 0xCu);
      }

      [(_DKSync2State *)v10 addCompletionBlock:typeCopy];
      [(_DKSyncType *)v10[2] mergeType:v6];
      *(v10 + 8) = 0;
      [(_DKSync2Coordinator *)self _unregisterTriggeredSyncActivity];
LABEL_45:
      objc_initWeak(buf, self);
      v56[0] = MEMORY[0x1E69E9820];
      v56[1] = 3221225472;
      v56[2] = __59___DKSync2Coordinator__performSyncWithSyncType_completion___block_invoke;
      v56[3] = &unk_1E7367558;
      v56[4] = self;
      v10 = v10;
      v57 = v10;
      objc_copyWeak(&v58, buf);
      v46 = MEMORY[0x193B00C50](v56);
      if (v10)
      {
        v47 = objc_getProperty(v10, v45, 16, 1);
      }

      else
      {
        v47 = 0;
      }

      v48 = v47;
      if (([(_DKSyncType *)v48 isTriggeredSync]& 1) != 0)
      {
        if (v10)
        {
          v50 = objc_getProperty(v10, v49, 16, 1);
        }

        else
        {
          v50 = 0;
        }

        v51 = v50;
        xpcActivity4 = [(_DKSyncType *)v51 xpcActivity];
        v53 = xpcActivity4 == 0;

        if (v53)
        {
          if (v10)
          {
            *(v10 + 8) = 1;
          }

          [(_DKSync2Coordinator *)self _registerTriggeredSyncActivityWithIsStartup:?];
LABEL_58:

          objc_destroyWeak(&v58);
          objc_destroyWeak(buf);
LABEL_66:

          goto LABEL_67;
        }
      }

      else
      {
      }

      if (v10)
      {
        *(v10 + 8) = 0;
      }

      [(_DKSync2Coordinator *)self __performSyncWithCompletion:v46];
      goto LABEL_58;
    }

    if (objc_getProperty(v10, v13, 24, 1))
    {
      v25 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = [objc_opt_class() description];
        *buf = 138543362;
        v60 = v26;
        _os_log_impl(&dword_191750000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@: Currently syncing, will leave current sync type unchanged", buf, 0xCu);
      }

      if ([(_DKSyncType *)v6 isPeriodicSync])
      {
        v27 = +[_CDLogging syncChannel];
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v28 = [objc_opt_class() description];
          *buf = 138543362;
          v60 = v28;
          _os_log_impl(&dword_191750000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@: Requested sync is a periodic sync. Marking period job as complete while current sync continues.", buf, 0xCu);
        }
      }

      else
      {
        [(_DKSync2State *)v10 addCompletionBlock:typeCopy];
      }
    }

    else
    {
      forceSync3 = [(_DKSyncType *)v6 forceSync];
      v32 = +[_CDLogging syncChannel];
      v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
      if (forceSync3)
      {
        if (v33)
        {
          v34 = [objc_opt_class() description];
          *buf = 138543362;
          v60 = v34;
          _os_log_impl(&dword_191750000, v32, OS_LOG_TYPE_DEFAULT, "%{public}@: Sync not yet started, upgrading to forced sync", buf, 0xCu);
        }
      }

      else if (v33)
      {
        v54 = [objc_opt_class() description];
        *buf = 138543362;
        v60 = v54;
        _os_log_impl(&dword_191750000, v32, OS_LOG_TYPE_DEFAULT, "%{public}@: Sync not yet started, upgrading to periodic sync", buf, 0xCu);
      }

      [(_DKSync2State *)v10 addCompletionBlock:typeCopy];
      [(_DKSyncType *)v10[2] mergeType:v6];
    }

LABEL_62:
    v55 = objc_getProperty(v10, v20, 16, 1);
    if ([(_DKSyncType *)v55 isTriggeredSync])
    {
      [(_DKSync2Coordinator *)self _updateTriggeredSyncActivity];
    }

    else if ([(_DKSyncType *)v6 isPeriodicSync])
    {
      (*(typeCopy + 2))(typeCopy, 0);
    }

    goto LABEL_66;
  }

LABEL_67:
}

- (void)__performSyncWithCompletion:(id *)completion
{
  v88 = *MEMORY[0x1E69E9840];
  v65 = a2;
  val = completion;
  if (completion)
  {
    v3 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v3);

    if ([val[8] isDataAvailableFor:*MEMORY[0x1E696A388]])
    {
      date = [MEMORY[0x1E695DF00] date];
      v4 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = [objc_opt_class() description];
        deviceUUID = [val deviceUUID];
        uUIDString = [deviceUUID UUIDString];
        *buf = 138543618;
        *&buf[4] = v5;
        v86 = 2114;
        v87 = uUIDString;
        _os_log_impl(&dword_191750000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Starting sync on %{public}@", buf, 0x16u);
      }

      v63 = [(_DKSync2Coordinator *)val createBusyTransactionWithName:?];
      Property = val[12];
      if (Property)
      {
        Property = objc_getProperty(Property, v8, 16, 1);
      }

      v67 = Property;
      [_DKSync2Coordinator _updateEventStatsWithSyncType:v67];
      v10 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [objc_opt_class() description];
        *buf = 138543618;
        *&buf[4] = v11;
        v86 = 2114;
        v87 = v67;
        _os_log_impl(&dword_191750000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: Sync type: %{public}@", buf, 0x16u);
      }

      v12 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [objc_opt_class() description];
        v14 = +[_DKSyncedFeatures sharedInstance];
        *buf = 138543618;
        *&buf[4] = v13;
        v86 = 2114;
        v87 = v14;
        _os_log_impl(&dword_191750000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: Sync features: %{public}@", buf, 0x16u);
      }

      v15 = val;
      v16 = val[30];
      if (v16)
      {
        isAvailable = [v16 isAvailable];
        v15 = val;
      }

      else
      {
        isAvailable = 0;
      }

      v19 = v15[29];
      if (v19)
      {
        isAvailable2 = [v19 isAvailable];
        v15 = val;
      }

      else
      {
        isAvailable2 = 0;
      }

      v21 = v15[31];
      if (v21)
      {
        isAvailable3 = [v21 isAvailable];
      }

      else
      {
        isAvailable3 = 0;
      }

      if (([(_DKSyncType *)v67 forceSync]& 1) == 0)
      {
        if ([(_DKSyncType *)v67 isTriggeredSync])
        {
          if (![val[5] count])
          {
            [val[6] count];
          }

          v23 = [val policyForSyncTransportType:8];
          v24 = [val[27] numberForKey:@"DeletedSyncedEventCount"];
          v25 = v24;
          if (v24)
          {
            unsignedIntegerValue = [v24 unsignedIntegerValue];
          }

          else
          {
            unsignedIntegerValue = 0;
          }

          v29 = unsignedIntegerValue >= [v23 numChangesTriggeringSync];

          v27 = v29 & isAvailable;
          v28 = isAvailable3;
        }

        else
        {
          v27 = 0;
          v28 = 0;
        }

        isPeriodicSync = [(_DKSyncType *)v67 isPeriodicSync];
        if (isPeriodicSync)
        {
          v31 = isAvailable;
        }

        else
        {
          v31 = v27;
        }

        isInitialSync = [(_DKSyncType *)v67 isInitialSync];
        if ((([(_DKSyncType *)v67 didActivatePeer]| isInitialSync) | isPeriodicSync))
        {
          v33 = isAvailable3;
        }

        else
        {
          v33 = v28;
        }

        didReceivePush = [(_DKSyncType *)v67 didReceivePush];
        if (![val[7] count])
        {
          isAvailable2 &= didReceivePush | isInitialSync | isPeriodicSync;
          isAvailable3 = v33;
        }

        if ((*(val + 201) & 1) != 0 || ((isAvailable ^ 1) & 1) != 0 || ![(_DKSyncType *)v67 isPeriodicSync])
        {
          LOBYTE(isAvailable) = v31;
        }

        else
        {
          LOBYTE(isAvailable) = [(_DKSyncType *)v67 isSingleDevice]^ 1 | v31;
        }
      }

      v68 = objc_opt_new();
      v83[0] = MEMORY[0x1E69E9820];
      v83[1] = 3221225472;
      v83[2] = __51___DKSync2Coordinator___performSyncWithCompletion___block_invoke;
      v83[3] = &unk_1E7367440;
      v83[4] = val;
      newValue = [_DKSyncBlockCompositeOperation blockCompositeOperationWithBlock:v83];
      if (isAvailable3)
      {
        v35 = [val policyForSyncTransportType:1];
        v36 = [[_DKPerformSyncDownOperation alloc] initWithParent:val[28] localStorage:val[31] transport:0 peers:v35 policy:v67 type:?];
        if ([v68 count])
        {
          lastObject = [v68 lastObject];
          [v36 addDependency:lastObject];
        }

        [v68 addObject:v36];
      }

      if (isAvailable2)
      {
        v38 = [val policyForSyncTransportType:4];
        v39 = [[_DKPerformSyncDownOperation alloc] initWithParent:val[28] localStorage:val[29] transport:0 peers:v38 policy:v67 type:?];
        if ([v68 count])
        {
          lastObject2 = [v68 lastObject];
          [v39 addDependency:lastObject2];
        }

        [v68 addObject:v39];
      }

      if (isAvailable)
      {
        v41 = +[_DKSyncPeerStatusTracker sharedInstance];
        pseudoPeerForSyncTransportCloudUp = [v41 pseudoPeerForSyncTransportCloudUp];

        v43 = [val policyForSyncTransportType:8];
        v44 = [[_DKPerformSyncDownPeerDeletionsOperation alloc] initWithParent:val[28] localStorage:val[30] transport:pseudoPeerForSyncTransportCloudUp peer:v43 policy:v67 type:?];
        if ([v68 count])
        {
          lastObject3 = [v68 lastObject];
          [v44 addDependency:lastObject3];
        }

        [v68 addObject:v44];
        v46 = [[_DKPerformSyncUpHistoryOperation alloc] initWithParent:val[28] localStorage:val[30] transport:pseudoPeerForSyncTransportCloudUp peer:v43 policy:v67 type:?];
        if ([v68 count])
        {
          lastObject4 = [v68 lastObject];
          [v46 addDependency:lastObject4];
        }

        [v68 addObject:v46];
        objc_initWeak(buf, val);
        objc_initWeak(&location, v46);
        v79[0] = MEMORY[0x1E69E9820];
        v79[1] = 3221225472;
        v79[2] = __51___DKSync2Coordinator___performSyncWithCompletion___block_invoke_643;
        v79[3] = &unk_1E7367580;
        objc_copyWeak(&v80, &location);
        objc_copyWeak(&v81, buf);
        v48 = [_DKSyncBlockOperation blockOperationWithBlock:v79];
        [v48 addDependency:v46];
        [v68 addObject:v48];

        objc_destroyWeak(&v81);
        objc_destroyWeak(&v80);
        objc_destroyWeak(&location);
        objc_destroyWeak(buf);
      }

      if ([v68 count])
      {
        [(_DKSync2Coordinator *)val __performSyncWithCompletion:?];
        objc_initWeak(&location, val);
        v74[0] = MEMORY[0x1E69E9820];
        v74[1] = 3221225472;
        v74[2] = __51___DKSync2Coordinator___performSyncWithCompletion___block_invoke_2;
        v74[3] = &unk_1E73675A8;
        objc_copyWeak(&v78, &location);
        v75 = v63;
        v76 = date;
        v77 = v65;
        v62 = [_DKSyncBlockOperation blockOperationWithBlock:v74];
        [v62 addDependency:newValue];
        [v68 addObject:v62];
        [v68 insertObject:newValue atIndex:0];
        v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v71 = 0u;
        v49 = v68;
        v50 = [v49 countByEnumeratingWithState:&v70 objects:v84 count:16];
        if (v50)
        {
          v51 = *v71;
          do
          {
            for (i = 0; i != v50; ++i)
            {
              if (*v71 != v51)
              {
                objc_enumerationMutation(v49);
              }

              v53 = *(*(&v70 + 1) + 8 * i);
              v54 = +[_CDLogging syncChannel];
              if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
              {
                v55 = [objc_opt_class() description];
                v56 = [v53 debugDescription];
                *buf = 138543618;
                *&buf[4] = v55;
                v86 = 2114;
                v87 = v56;
                _os_log_impl(&dword_191750000, v54, OS_LOG_TYPE_DEFAULT, "%{public}@: Queuing operation %{public}@", buf, 0x16u);
              }
            }

            v50 = [v49 countByEnumeratingWithState:&v70 objects:v84 count:16];
          }

          while (v50);
        }

        [_DKSyncSerializer addOperations:v49 waitUntilFinished:0];
        v57 = +[_CDLogging syncChannel];
        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
        {
          v58 = [objc_opt_class() description];
          [(_DKSync2Coordinator *)v58 __performSyncWithCompletion:buf, v57];
        }

        objc_destroyWeak(&v78);
        objc_destroyWeak(&location);
      }

      else
      {
        v59 = +[_CDLogging syncChannel];
        if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
        {
          v60 = [objc_opt_class() description];
          *buf = 138543362;
          *&buf[4] = v60;
          _os_log_impl(&dword_191750000, v59, OS_LOG_TYPE_DEFAULT, "%{public}@: No sync operations to queue", buf, 0xCu);
        }

        [newValue cancel];
        [(_DKSync2Coordinator *)val __finishSyncWithTransaction:v63 startDate:date completion:v65];
      }

      v61 = +[_DKSyncUrgencyTracker sharedInstance];
      [(_DKSyncUrgencyTracker *)v61 ageUrgencies];

      v18 = date;
      goto LABEL_75;
    }

    if (([(_DKSync2Coordinator *)v65 __performSyncWithCompletion:buf]& 1) != 0)
    {
      v18 = *buf;
LABEL_75:
    }
  }
}

+ (void)_updateEventStatsWithSyncType:(uint64_t)type
{
  v2 = a2;
  objc_opt_self();
  if (_updateEventStatsWithSyncType__isSingleDeviceSyncCounterInitialized != -1)
  {
    +[_DKSync2Coordinator _updateEventStatsWithSyncType:];
  }

  v3 = _updateEventStatsWithSyncType__isSingleDeviceSyncCounter;
  isSingleDevice = [(_DKSyncType *)v2 isSingleDevice];

  if (isSingleDevice)
  {
    v5 = @"true";
  }

  else
  {
    v5 = @"false";
  }

  [(_DKEventTypeStatsCounter *)v3 incrementCountByNumber:v5 typeValue:?];
}

+ (void)_updateEventStatsWithSyncElapsedTimeStartDate:(void *)date endDate:
{
  dateCopy = date;
  v5 = a2;
  objc_opt_self();
  if (_updateEventStatsWithSyncElapsedTimeStartDate_endDate__syncElapsedTimeCounterInitialized != -1)
  {
    +[_DKSync2Coordinator _updateEventStatsWithSyncElapsedTimeStartDate:endDate:];
  }

  [(_DKEventStatsTimerCounter *)_updateEventStatsWithSyncElapsedTimeStartDate_endDate__syncElapsedTimeCounter addTimingWithStartDate:v5 endDate:dateCopy];
}

- (id)_executionCriteriaWithInterval:(uint64_t)interval
{
  keys[6] = *MEMORY[0x1E69E9840];
  if (interval)
  {
    v2 = *MEMORY[0x1E69E9D88];
    keys[0] = *MEMORY[0x1E69E9CB0];
    keys[1] = v2;
    v3 = *MEMORY[0x1E69E9D58];
    keys[2] = *MEMORY[0x1E69E9D68];
    keys[3] = v3;
    v4 = *MEMORY[0x1E69E9DA8];
    keys[4] = *MEMORY[0x1E69E9DB8];
    keys[5] = v4;
    values[0] = xpc_int64_create(a2);
    values[1] = xpc_BOOL_create(1);
    values[2] = xpc_string_create(*MEMORY[0x1E69E9D70]);
    values[3] = xpc_BOOL_create(1);
    values[4] = xpc_BOOL_create(1);
    values[5] = xpc_BOOL_create(1);
    v5 = xpc_dictionary_create(keys, values, 6uLL);
    v6 = +[_DKSyncUrgencyTracker sharedInstance];
    if ([(_DKEventData *)v6 version]<= 6)
    {
      xpc_dictionary_set_BOOL(v5, *MEMORY[0x1E69E9DC0], 1);
    }

    for (i = 5; i != -1; --i)
    {
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_registerPeriodicJobWithInterval:(uint64_t)interval
{
  v20 = *MEMORY[0x1E69E9840];
  if (interval)
  {
    v4 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v4);

    v5 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [objc_opt_class() description];
      v7 = [MEMORY[0x1E696AD98] numberWithDouble:a2];
      *buf = 138543618;
      v17 = v6;
      v18 = 2112;
      v19 = v7;
      _os_log_impl(&dword_191750000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Scheduling periodic sync job with interval %@", buf, 0x16u);
    }

    objc_initWeak(buf, interval);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __56___DKSync2Coordinator__registerPeriodicJobWithInterval___block_invoke;
    v14[3] = &unk_1E7367220;
    objc_copyWeak(&v15, buf);
    v8 = MEMORY[0x193B00C50](v14);
    v9 = +[_DKSyncSerializer underlyingQueue];
    v10 = [_CDPeriodicSchedulerJob jobWithInterval:@"com.apple.knowledgestore.sync" schedulerJobName:v9 queue:1 asynchronousHandler:v8 handler:a2];
    v11 = *(interval + 176);
    *(interval + 176) = v10;

    v12 = [(_DKSync2Coordinator *)interval _executionCriteriaWithInterval:a2];
    [*(interval + 176) setExecutionCriteria:v12];
    v13 = +[_CDPeriodicScheduler sharedInstance];
    [v13 registerJob:*(interval + 176)];

    *(interval + 104) = a2;
    objc_destroyWeak(&v15);
    objc_destroyWeak(buf);
  }
}

- (void)_cloudSyncAvailabilityDidChange:(id)change
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __55___DKSync2Coordinator__cloudSyncAvailabilityDidChange___block_invoke;
  v3[3] = &unk_1E7367440;
  v3[4] = self;
  [_DKSyncSerializer performAsyncBlock:v3];
}

- (void)_syncPolicyDidChange:(id)change
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __44___DKSync2Coordinator__syncPolicyDidChange___block_invoke;
  v3[3] = &unk_1E7367440;
  v3[4] = self;
  [_DKSyncSerializer performAsyncBlock:v3];
}

+ (id)streamNamesToTombstone
{
  v2 = objc_opt_new();
  v3 = [_DKSync2Policy policyForSyncTransportType:1];
  v4 = [v3 streamNamesToSyncWithDisabledFeatures:0];
  [v2 addObjectsFromArray:v4];

  v5 = [_DKSync2Policy policyForSyncTransportType:4];
  v6 = [v5 streamNamesToSyncWithDisabledFeatures:0];
  [v2 addObjectsFromArray:v6];

  v7 = [_DKSync2Policy policyForSyncTransportType:8];
  v8 = [v7 streamNamesToSyncWithDisabledFeatures:0];
  [v2 addObjectsFromArray:v8];

  return v2;
}

+ (NSObject)_syncTypeFromActivity:(uint64_t)activity
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = objc_opt_self();
  v4 = xpc_activity_copy_criteria(v2);

  if (v4 && MEMORY[0x193B01300](v4) == MEMORY[0x1E69E9E80])
  {
    v6 = xpc_dictionary_get_value(v4, "_DKSyncType");
    v7 = v6;
    if (v6 && MEMORY[0x193B01300](v6) == MEMORY[0x1E69E9E70])
    {
      v9 = MEMORY[0x1E695DEF0];
      bytes_ptr = xpc_data_get_bytes_ptr(v7);
      v8 = [v9 dataWithBytes:bytes_ptr length:xpc_data_get_length(v7)];
      if ([v8 length])
      {
        v17 = 0;
        v11 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v8 error:&v17];
        v12 = v17;
        v13 = +[_CDLogging syncChannel];
        v14 = v13;
        if (v12)
        {
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            +[_DKSync2Coordinator _syncTypeFromActivity:];
          }

          v5 = 0;
        }

        else
        {
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            v15 = [objc_opt_class() description];
            *buf = 138543618;
            v19 = v15;
            v20 = 2112;
            v21 = v11;
            _os_log_impl(&dword_191750000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: Deserialized sync type from xpc activity: %@", buf, 0x16u);
          }

          v5 = v11;
        }
      }

      else
      {
        v11 = +[_CDLogging syncChannel];
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          [(_DKSync2Coordinator *)v3 _syncTypeFromActivity:v11];
        }

        v5 = 0;
      }
    }

    else
    {
      v8 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [(_DKSync2Coordinator *)v3 _syncTypeFromActivity:v8];
      }

      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_updatedExecutionCriteriaFromType:(uint64_t)type
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  v5 = 0;
  if (type && v3)
  {
    v6 = *(type + 192);
    if (v6)
    {
      v7 = [_DKSync2Coordinator _syncTypeFromActivity:v6];
      if ([(_DKSyncType *)v4 isEqualToSyncType:v7])
      {
        v8 = +[_CDLogging syncChannel];
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = [objc_opt_class() description];
          *buf = 138543362;
          *&buf[4] = v9;
          _os_log_impl(&dword_191750000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: Triggered sync type already matches the one in xpc activity", buf, 0xCu);
        }

        v5 = 0;
        goto LABEL_28;
      }

      v11 = xpc_activity_copy_criteria(*(type + 192));
      v12 = v11;
      if (v11 && MEMORY[0x193B01300](v11) == MEMORY[0x1E69E9E80])
      {
        int64 = xpc_dictionary_get_int64(v12, *MEMORY[0x1E69E9C68]);
        v14 = +[_CDLogging syncChannel];
        v10 = int64 / 2;
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = [objc_opt_class() description];
          *buf = 138543618;
          *&buf[4] = v15;
          *&buf[12] = 2048;
          *&buf[14] = v10;
          _os_log_impl(&dword_191750000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: Pushing out triggered sync's delay by %lld seconds", buf, 0x16u);
        }
      }

      else
      {
        v10 = 10;
      }
    }

    else
    {
      v10 = 10;
    }

    v22 = 0;
    v8 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v4 requiringSecureCoding:1 error:&v22];
    v7 = v22;
    if (v7)
    {
      v16 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [(_DKSync2Coordinator *)type _updatedExecutionCriteriaFromType:v7];
      }
    }

    else
    {
      v17 = v8;
      v16 = xpc_data_create([v8 bytes], [v8 length]);
      if (v16)
      {
        v18 = *MEMORY[0x1E69E9C98];
        *buf = *MEMORY[0x1E69E9C68];
        *&buf[8] = v18;
        *&buf[16] = *MEMORY[0x1E69E9D68];
        v25 = "_DKSyncType";
        values[0] = xpc_int64_create(v10);
        values[1] = xpc_int64_create(v10);
        values[2] = xpc_string_create(*MEMORY[0x1E69E9D78]);
        v16 = v16;
        values[3] = v16;
        v5 = xpc_dictionary_create(buf, values, 4uLL);
        for (i = 3; i != -1; --i)
        {
        }

        goto LABEL_27;
      }

      v20 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [(_DKSync2Coordinator *)type _updatedExecutionCriteriaFromType:v20];
      }
    }

    v5 = 0;
LABEL_27:

LABEL_28:
  }

  return v5;
}

- (void)_runTriggeredSyncActivity:(void *)activity
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (activity)
  {
    v4 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v4);

    v5 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [objc_opt_class() description];
      *buf = 138543362;
      v11 = v6;
      _os_log_impl(&dword_191750000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Running triggered sync activity", buf, 0xCu);
    }

    v7 = [_DKSync2Coordinator _syncTypeFromActivity:v3];
    [(_DKSyncType *)v7 setXpcActivity:v3];
    objc_initWeak(buf, activity);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __49___DKSync2Coordinator__runTriggeredSyncActivity___block_invoke;
    v8[3] = &unk_1E7367698;
    objc_copyWeak(&v9, buf);
    v8[4] = activity;
    [(_DKSync2Coordinator *)activity _performSyncWithSyncType:v7 completion:v8];
    objc_destroyWeak(&v9);
    objc_destroyWeak(buf);
  }
}

- (void)connection:(id)connection didReceivePublicToken:(id)token
{
  v11 = *MEMORY[0x1E69E9840];
  tokenCopy = token;
  v5 = +[_CDLogging syncChannel];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [objc_opt_class() description];
    v7 = 138543618;
    v8 = v6;
    v9 = 2112;
    v10 = tokenCopy;
    _os_log_impl(&dword_191750000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Did receive public token: %@", &v7, 0x16u);
  }
}

- (void)_databaseDidDeleteFromStreamNameCounts:(id)counts
{
  v38 = *MEMORY[0x1E69E9840];
  countsCopy = counts;
  v5 = [(_DKKeyValueStore *)self->_keyValueStore numberForKey:@"DeletedSyncedEventCount"];
  v6 = v5;
  if (v5)
  {
    unsignedIntegerValue = [v5 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v8 = self->_streamNamesObservedForDeletions;
  v9 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v27 objects:v37 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v28;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v28 != v11)
        {
          objc_enumerationMutation(v8);
        }

        unsignedIntegerValue += [countsCopy countForObject:*(*(&v27 + 1) + 8 * i)];
      }

      v10 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v27 objects:v37 count:16];
    }

    while (v10);
  }

  if (unsignedIntegerValue)
  {
    keyValueStore = self->_keyValueStore;
    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:unsignedIntegerValue];
    [(_DKKeyValueStore *)keyValueStore setNumber:v18 forKey:@"DeletedSyncedEventCount"];

    LODWORD(v18) = [(_DKSync2Coordinator *)self isSingleDevice];
    v13 = +[_CDLogging syncChannel];
    v19 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    if (v18)
    {
      if (!v19)
      {
        goto LABEL_15;
      }

      v14 = [objc_opt_class() description];
      v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:unsignedIntegerValue];
      *buf = 138543618;
      v32 = v14;
      v33 = 2112;
      v34 = v15;
      _os_log_impl(&dword_191750000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: Deletion of %@ events is not triggering sync attempt because isSingleDevice=YES", buf, 0x16u);
      goto LABEL_14;
    }

    if (v19)
    {
      v20 = [objc_opt_class() description];
      v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(countsCopy, "count")}];
      v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:unsignedIntegerValue];
      *buf = 138543874;
      v32 = v20;
      v33 = 2112;
      v34 = v21;
      v35 = 2112;
      v36 = v22;
      _os_log_impl(&dword_191750000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: Delete from %@ event streams is triggering sync attempt due to event count of %@", buf, 0x20u);
    }

    v23 = [_DKSyncType alloc];
    isSingleDevice = [(_DKSync2Coordinator *)self isSingleDevice];
    v13 = [(_DKSyncType *)v23 initWithIsSingleDevice:isSingleDevice];
    [(_DKSyncType *)v13 setIsTriggeredSync:?];
    [(_DKSyncType *)v13 setDidDeleteSyncedEvents:?];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __108___DKSync2Coordinator__DKKnowledgeStorageEventNotificationDelegate___databaseDidDeleteFromStreamNameCounts___block_invoke;
    v25[3] = &unk_1E7367670;
    v25[4] = self;
    v26 = countsCopy;
    [(_DKSync2Coordinator *)&self->super.super.isa _performSyncWithSyncType:v13 completion:v25];
  }

  else
  {
    v13 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [objc_opt_class() description];
      v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(countsCopy, "count")}];
      v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:0];
      *buf = 138543874;
      v32 = v14;
      v33 = 2112;
      v34 = v15;
      v35 = 2112;
      v36 = v16;
      _os_log_impl(&dword_191750000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: Delete from %@ event streams is not triggering sync attemt due to event count of %@", buf, 0x20u);

LABEL_14:
    }
  }

LABEL_15:
}

- (void)knowledgeStorage:(id)storage didDeleteEventsWithStreamNameCounts:(id)counts
{
  countsCopy = counts;
  v6 = +[_CDLogging syncChannel];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [_DKSync2Coordinator(_DKKnowledgeStorageEventNotificationDelegate) knowledgeStorage:didDeleteEventsWithStreamNameCounts:];
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __122___DKSync2Coordinator__DKKnowledgeStorageEventNotificationDelegate__knowledgeStorage_didDeleteEventsWithStreamNameCounts___block_invoke;
  v8[3] = &unk_1E7367710;
  v8[4] = self;
  v9 = countsCopy;
  v7 = countsCopy;
  [_DKSyncSerializer performAsyncBlock:v8];
}

- (id)sortedEventsFromSyncWindows:(id)windows streamNames:(id)names limit:(unint64_t)limit fetchOrder:(int64_t)order error:(id *)error
{
  namesCopy = names;
  windowsCopy = windows;
  v14 = +[_DKCompatibility currentCompatibility];
  v15 = [(_DKSync2Coordinator *)self sortedEventsFromSyncWindows:windowsCopy streamNames:namesCopy compatibility:v14 limit:limit fetchOrder:order error:error];

  return v15;
}

- (id)sortedEventsFromSyncWindows:(id)windows streamNames:(id)names compatibility:(id)compatibility limit:(unint64_t)limit fetchOrder:(int64_t)order error:(id *)error
{
  compatibilityCopy = compatibility;
  namesCopy = names;
  windowsCopy = windows;
  v17 = +[_DKSyncSerializer underlyingQueue];
  dispatch_assert_queue_V2(v17);

  v18 = [(_DKSyncLocalKnowledgeStorage *)self->_localStorage sortedEventsFromSyncWindows:windowsCopy streamNames:namesCopy compatibility:compatibilityCopy limit:limit fetchOrder:order error:error];

  return v18;
}

- (id)deletedEventIDsSinceDate:(id)date streamNames:(id)names limit:(unint64_t)limit endDate:(id *)endDate error:(id *)error
{
  v49 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  namesCopy = names;
  v14 = +[_DKSyncSerializer underlyingQueue];
  dispatch_assert_queue_V2(v14);

  v15 = [(_DKSyncLocalKnowledgeStorage *)self->_localStorage tombstonesSinceDate:dateCopy streamNames:namesCopy limit:limit endDate:endDate error:error];
  if ([v15 count])
  {
    v36 = namesCopy;
    v37 = dateCopy;
    v38 = objc_opt_new();
    v16 = +[_DKSystemEventStreams appWebUsageStream];
    name = [v16 name];

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v35 = v15;
    obj = v15;
    v18 = [obj countByEnumeratingWithState:&v40 objects:v48 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v41;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v41 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v40 + 1) + 8 * i);
          metadata = [v22 metadata];
          v24 = +[_DKTombstoneMetadataKey eventSourceDeviceID];
          v25 = [metadata objectForKeyedSubscript:v24];

          if (!v25 || ([v22 metadata], v26 = objc_claimAutoreleasedReturnValue(), +[_DKTombstoneMetadataKey eventStreamName](_DKTombstoneMetadataKey, "eventStreamName"), v27 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v26, "objectForKeyedSubscript:", v27), v28 = objc_claimAutoreleasedReturnValue(), v27, v26, LODWORD(v26) = objc_msgSend(v28, "isEqualToString:", name), v28, v26))
          {
            stringValue = [v22 stringValue];
            if (stringValue)
            {
              v30 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:stringValue];
              if (v30)
              {
                [v38 addObject:v30];
              }

              else
              {
                v32 = +[_CDLogging syncChannel];
                if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
                {
                  v33 = [objc_opt_class() description];
                  *buf = 138543618;
                  v45 = v33;
                  v46 = 2112;
                  v47 = stringValue;
                  _os_log_error_impl(&dword_191750000, v32, OS_LOG_TYPE_ERROR, "%{public}@: Skipping tombstone due to malformed tombstone uuid: %@", buf, 0x16u);
                }
              }
            }

            else
            {
              v30 = +[_CDLogging syncChannel];
              if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
              {
                v31 = [objc_opt_class() description];
                *buf = 138543618;
                v45 = v31;
                v46 = 2112;
                v47 = v22;
                _os_log_error_impl(&dword_191750000, v30, OS_LOG_TYPE_ERROR, "%{public}@: Skipping tombstone due to missing tombstone uuid: %@", buf, 0x16u);
              }
            }
          }
        }

        v19 = [obj countByEnumeratingWithState:&v40 objects:v48 count:16];
      }

      while (v19);
    }

    namesCopy = v36;
    dateCopy = v37;
    v15 = v35;
  }

  else
  {
    v38 = 0;
  }

  return v38;
}

- (void)handleDataProtectionChangeFor:(int)for willBeAvailable:
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = v5;
  if (self && [v5 isEqualToString:*MEMORY[0x1E696A388]])
  {
    v7 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [objc_opt_class() description];
      OUTLINED_FUNCTION_26();
      v17 = 2112;
      if (for)
      {
        v9 = v10;
      }

      v18 = v6;
      v19 = 2112;
      v20 = v9;
      _os_log_impl(&dword_191750000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Data protection availability changed for %@ to %@", buf, 0x20u);
    }

    if (for)
    {
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_14();
      v13 = __69___DKSync2Coordinator_handleDataProtectionChangeFor_willBeAvailable___block_invoke;
      v14 = &unk_1E7367440;
      selfCopy = self;
      [v11 performAsyncBlock:v12];
    }
  }
}

- (void)_reregisterPeriodicJob
{
  if (self)
  {
    if (*(self + 104) == 0.0)
    {

      [(_DKSync2Coordinator *)self _registerPeriodicJob];
    }

    else
    {
      isSingleDevice = [(_DKSync2Coordinator *)self isSingleDevice];
      v3 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        v4 = [objc_opt_class() description];
        OUTLINED_FUNCTION_1();
        OUTLINED_FUNCTION_31(&dword_191750000, v5, v6, "%{public}@: Checking whether periodic job should be re-scheduled with isSingleDevice=%{BOOL}d", v7, v8, v9, v10);
      }

      v11 = [(_DKSync2Coordinator *)self _intervalForJobGivenIsSingleDevice:isSingleDevice];
      if (v11 <= 0.0)
      {
        v23 = +[_CDLogging syncChannel];
        if (OUTLINED_FUNCTION_19_1(v23))
        {
          v24 = [objc_opt_class() description];
          OUTLINED_FUNCTION_1();
          OUTLINED_FUNCTION_4_2();
          _os_log_impl(v25, v26, v27, v28, v29, 0xCu);
        }

        [(_DKSync2Coordinator *)self _unregisterPeriodicJob];
      }

      else
      {
        v12 = v11;
        v13 = *(self + 104);
        v14 = +[_CDLogging syncChannel];
        v15 = v14;
        if (v13 == v12)
        {
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            v30 = [objc_opt_class() description];
            v31 = [MEMORY[0x1E696AD98] numberWithDouble:v12];
            OUTLINED_FUNCTION_5_0();
            OUTLINED_FUNCTION_11_1();
            OUTLINED_FUNCTION_33(v32, v33, v34, v35, v36);
          }
        }

        else
        {
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v16 = [objc_opt_class() description];
            v17 = [MEMORY[0x1E696AD98] numberWithDouble:v12];
            OUTLINED_FUNCTION_5_0();
            OUTLINED_FUNCTION_4_2();
            _os_log_impl(v18, v19, v20, v21, v22, 0x16u);
          }

          v15 = [(_DKSync2Coordinator *)self _executionCriteriaWithInterval:v12];
          [*(self + 176) setExecutionCriteria:v15];
          *(self + 104) = v12;
        }
      }
    }
  }
}

- (void)_performSyncTogglesChangedActions
{
  v37 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return;
  }

  v2 = +[_DKSyncSerializer underlyingQueue];
  dispatch_assert_queue_V2(v2);

  v3 = +[_CDLogging syncChannel];
  if (OUTLINED_FUNCTION_19_1(v3))
  {
    v4 = [objc_opt_class() description];
    *buf = 138543362;
    v29 = v4;
    OUTLINED_FUNCTION_10_1(&dword_191750000, v5, v6, "%{public}@: Performing sync toggles change actions", buf);
  }

  v7 = +[_CDLogging syncChannel];
  if (OUTLINED_FUNCTION_19_1(v7))
  {
    v8 = [objc_opt_class() description];
    if ([(_DKSyncToggle *)*(self + 144) isEnabled])
    {
      v9 = @"on";
    }

    else
    {
      v9 = @"off";
    }

    [(_DKSyncToggle *)*(self + 152) isEnabled];
    [(_DKSyncToggle *)*(self + 168) isEnabled];
    [(_DKSyncToggle *)*(self + 160) isEnabled];
    *buf = 138544386;
    v29 = v8;
    v30 = 2114;
    v31 = v9;
    OUTLINED_FUNCTION_22();
    v32 = v10;
    _os_log_impl(&dword_191750000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@: Current sync toggles settings: sync=%{public}@, anyTransport=%{public}@, rapport=%{public}@, cloud=%{public}@", buf, 0x34u);
  }

  v11 = [self policyForSyncTransportType:1];
  v12 = [self policyForSyncTransportType:4];
  v13 = [self policyForSyncTransportType:8];
  v14 = [*(self + 64) isDataAvailableFor:*MEMORY[0x1E696A388]];
  v27 = v13;
  if ([v11 syncDisabled] && objc_msgSend(v12, "syncDisabled"))
  {
    syncDisabled = [v13 syncDisabled];
  }

  else
  {
    syncDisabled = 0;
  }

  v16 = v14 ^ 1;
  [(_DKSyncToggle *)*(self + 144) setEnabled:?];
  if ([*(self + 248) isAvailable] & 1) != 0 || (objc_msgSend(*(self + 232), "isAvailable"))
  {
    if ((v14 ^ 1 | syncDisabled))
    {
LABEL_16:
      v17 = 0;
      goto LABEL_19;
    }
  }

  else if (v16 & 1 | (([*(self + 240) isAvailable] & 1) == 0) | syncDisabled & 1)
  {
    goto LABEL_16;
  }

  v17 = 1;
LABEL_19:
  [(_DKSyncToggle *)*(self + 152) setEnabled:v17];
  -[_DKSyncToggle setEnabled:](*(self + 168), ~(v16 | ~[*(self + 248) isAvailable] | syncDisabled));
  if (([*(self + 232) isAvailable] & 1) == 0)
  {
    if (!(v16 & 1 | (([*(self + 240) isAvailable] & 1) == 0) | syncDisabled & 1))
    {
      goto LABEL_21;
    }

LABEL_23:
    v18 = 0;
    goto LABEL_24;
  }

  if ((v14 ^ 1 | syncDisabled))
  {
    goto LABEL_23;
  }

LABEL_21:
  v18 = 1;
LABEL_24:
  [(_DKSyncToggle *)*(self + 160) setEnabled:v18];
  v19 = +[_CDLogging syncChannel];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = [objc_opt_class() description];
    v21 = @"unavailable";
    if (v14)
    {
      v21 = @"available";
    }

    v26 = v21;
    [(_DKSyncToggle *)*(self + 144) isEnabled];
    if ([(_DKSyncToggle *)*(self + 152) isEnabled])
    {
      v22 = @"available";
    }

    else
    {
      v22 = @"unavailable";
    }

    if ([(_DKSyncToggle *)*(self + 168) isEnabled])
    {
      v23 = @"available";
    }

    else
    {
      v23 = @"unavailable";
    }

    [(_DKSyncToggle *)*(self + 160) isEnabled];
    *buf = 138544898;
    v29 = v20;
    v30 = 2114;
    v31 = v26;
    OUTLINED_FUNCTION_22();
    v32 = v22;
    v33 = v24;
    v34 = v23;
    v35 = v24;
    v36 = v25;
    _os_log_impl(&dword_191750000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@: Performed sync toggles change actions: storage=%{public}@, policy=%{public}@, sync=%{public}@, anyTransport=%{public}@, rapport=%{public}@, cloud=%{public}@", buf, 0x48u);
  }
}

- (void)_registerSyncPolicyChangedObserver
{
  if (self)
  {
    OUTLINED_FUNCTION_28();
    if ((v3 & 1) == 0)
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter addObserver:v1 selector:sel__syncPolicyDidChange_ name:@"_DKSync2PolicyDidChangeNotification" object:0];
      OUTLINED_FUNCTION_17_0(*(v2 + 24));
    }
  }
}

- (void)_registerRapportAvailablityObserver
{
  if (self)
  {
    v2 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v2);

    if ((*(self + 115) & 1) == 0)
    {
      v3 = +[_CDObservationCenter sharedInstance];
      v4 = +[_DKSyncSerializer underlyingQueue];
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_20_0(v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, __58___DKSync2Coordinator__registerRapportAvailablityObserver__block_invoke, &unk_1E7367620, v16);

      OUTLINED_FUNCTION_17_0(115);
    }
  }
}

- (void)_registerCloudSyncAvailablityObserver
{
  if (self)
  {
    v2 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v2);

    if ((*(self + 114) & 1) == 0)
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter addObserver:self selector:sel__cloudSyncAvailabilityDidChange_ name:@"_DKCloudSyncAvailablityChangedNotification" object:0];
      v4 = +[_CDObservationCenter sharedInstance];
      v5 = +[_DKSyncSerializer underlyingQueue];
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_14();
      v7 = __60___DKSync2Coordinator__registerCloudSyncAvailablityObserver__block_invoke;
      v8 = &unk_1E7367620;
      selfCopy = self;
      [v4 addObserver:self name:@"_DKCloudTransportAvailablityChangedNotification" sender:0 queue:v5 usingBlock:v6];

      OUTLINED_FUNCTION_17_0(114);
    }
  }
}

- (void)_registerSiriSyncEnabledObserver
{
  if (self)
  {
    v2 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v2);

    if ((self[116] & 1) == 0)
    {
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      v4 = getkAFCloudStorageDeletedByUserDarwinNotification();
      CFNotificationCenterAddObserver(DarwinNotifyCenter, self, _siriSyncEnabledDidChangeCallback, v4, 0, 0);
      CFNotificationCenterGetDarwinNotifyCenter();
      getkAFCloudSyncPreferenceDidChangeDarwinNotification();
      v5 = OUTLINED_FUNCTION_27();
      CFNotificationCenterAddObserver(v5, v6, _siriSyncEnabledDidChangeCallback, v7, 0, 0);
      OUTLINED_FUNCTION_17_0(116);
    }
  }
}

- (void)_registerRapportLaunchOnDemandHandler
{
  v9 = *MEMORY[0x1E69E9840];
  if (self)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v8 = "com.apple.rapport.matching";
      _os_log_debug_impl(&dword_191750000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Registering xpc_set_event_stream_handler(%s", buf, 0xCu);
    }

    v2 = +[_DKSyncSerializer underlyingQueue];
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_14();
    v4 = __60___DKSync2Coordinator__registerRapportLaunchOnDemandHandler__block_invoke;
    v5 = &unk_1E7367648;
    selfCopy = self;
    xpc_set_event_stream_handler("com.apple.rapport.matching", v2, handler);
  }
}

- (void)_performEnableAndStart
{
  if (self)
  {
    v2 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v2);

    if ((*(self + 73) & 1) == 0)
    {
      if ([*(self + 64) isDataAvailableFor:*MEMORY[0x1E696A388]])
      {
        OUTLINED_FUNCTION_0_1();
        OUTLINED_FUNCTION_14();
        v5 = __45___DKSync2Coordinator__performEnableAndStart__block_invoke;
        v6 = &unk_1E7367440;
        selfCopy = self;
        [v3 performAsyncBlock:v4];
        OUTLINED_FUNCTION_17_0(73);
      }
    }
  }
}

- (void)_deleteSiriEventsIfSiriCloudSyncHasBeenDisabled
{
  if (!self)
  {
    return;
  }

  v8 = [*(self + 216) objectForKey:@"_DKSiriCloudSyncEnabled"];
  sharedPreferences = [getAFPreferencesClass() sharedPreferences];
  cloudSyncEnabled = [sharedPreferences cloudSyncEnabled];

  if (!v8)
  {
    v4 = 0;
    if (!cloudSyncEnabled)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v4 = [v8 BOOLValue] & (cloudSyncEnabled ^ 1);
  if (cloudSyncEnabled)
  {
LABEL_4:
    [*(self + 216) setObject:MEMORY[0x1E695E110] forKey:@"NeedsSiriCloudDelete"];
  }

LABEL_5:
  v5 = *(self + 216);
  v6 = [MEMORY[0x1E696AD98] numberWithBool:cloudSyncEnabled];
  [v5 setObject:v6 forKey:@"_DKSiriCloudSyncEnabled"];

  if (v4)
  {
    [(_DKSync2Coordinator *)self _deleteForeignSiriEvents];
    [(_DKSync2Coordinator *)self _deleteSiriCloudEvents];
  }

  else
  {
    v7 = [*(self + 216) objectForKey:@"NeedsSiriCloudDelete"];
    if ([v7 BOOLValue])
    {
      [(_DKSync2Coordinator *)self _deleteSiriCloudEvents];
    }
  }
}

- (void)_unregisterRapportAvailablityObserver
{
  if (self)
  {
    v2 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v2);

    if (*(self + 115) == 1)
    {
      v3 = +[_CDObservationCenter sharedInstance];
      [v3 removeObserver:self name:@"_DKRapportTransportAvailablityChangedNotification"];
      *(self + 115) = 0;
    }
  }
}

- (void)_unregisterCloudSyncAvailablityObserver
{
  if (self && *(self + 114) == 1)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self name:@"_DKCloudSyncAvailablityChangedNotification" object:0];
    v2 = +[_CDObservationCenter sharedInstance];
    [v2 removeObserver:self name:@"_DKCloudTransportAvailablityChangedNotification"];
    *(self + 114) = 0;
  }
}

- (void)_unregisterSiriSyncEnabledObserver
{
  if (self)
  {
    if (*(self + 116) == 1)
    {
      CFNotificationCenterGetDarwinNotifyCenter();
      getkAFCloudStorageDeletedByUserDarwinNotification();
      v2 = OUTLINED_FUNCTION_27();
      CFNotificationCenterRemoveObserver(v2, v3, v4, 0);
      CFNotificationCenterGetDarwinNotifyCenter();
      getkAFCloudSyncPreferenceDidChangeDarwinNotification();
      v5 = OUTLINED_FUNCTION_27();
      CFNotificationCenterRemoveObserver(v5, v6, v7, 0);
      *(self + 116) = 0;
    }
  }
}

- (void)_registerPeriodicJob
{
  if (self)
  {
    v2 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v2);

    if (*(self + 104) == 0.0)
    {
      isSingleDevice = [(_DKSync2Coordinator *)self isSingleDevice];
      v4 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        v5 = [objc_opt_class() description];
        OUTLINED_FUNCTION_1();
        OUTLINED_FUNCTION_31(&dword_191750000, v6, v7, "%{public}@: Checking whether periodic job should be scheduled with isSingleDevice=%{BOOL}d", v8, v9, v10, v11);
      }

      v12 = [(_DKSync2Coordinator *)self _intervalForJobGivenIsSingleDevice:isSingleDevice];
      if (v12 <= 0.0)
      {
        v13 = +[_CDLogging syncChannel];
        if (OUTLINED_FUNCTION_19_1(v13))
        {
          v14 = [objc_opt_class() description];
          OUTLINED_FUNCTION_1();
          OUTLINED_FUNCTION_4_2();
          _os_log_impl(v15, v16, v17, v18, v19, 0xCu);
        }
      }

      else
      {
        [(_DKSync2Coordinator *)self _registerPeriodicJobWithInterval:v12];
      }
    }
  }
}

- (void)_registerDatabaseObservers
{
  if (self)
  {
    v2 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v2);

    if ((*(self + 112) & 1) == 0)
    {
      v3 = +[_CDLogging syncChannel];
      if (OUTLINED_FUNCTION_19_1(v3))
      {
        v4 = [objc_opt_class() description];
        OUTLINED_FUNCTION_1();
        OUTLINED_FUNCTION_4_2();
        _os_log_impl(v5, v6, v7, v8, v9, 0xCu);
      }

      [OUTLINED_FUNCTION_29() addKnowledgeStorageEventNotificationDelegate:self];
      [OUTLINED_FUNCTION_29() incrementInsertsAndDeletesObserverCount];
      OUTLINED_FUNCTION_17_0(112);
    }
  }
}

- (void)_unregisterPeriodicJob
{
  if (self)
  {
    v2 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v2);

    if (*(self + 104) > 0.0)
    {
      v3 = +[_CDLogging syncChannel];
      if (OUTLINED_FUNCTION_19_1(v3))
      {
        v4 = [objc_opt_class() description];
        OUTLINED_FUNCTION_1();
        OUTLINED_FUNCTION_4_2();
        _os_log_impl(v5, v6, v7, v8, v9, 0xCu);
      }

      v10 = +[_CDPeriodicScheduler sharedInstance];
      [v10 unregisterJob:@"com.apple.knowledgestore.sync"];

      *(self + 104) = 0;
      v11 = *(self + 176);
      *(self + 176) = 0;
    }
  }
}

- (_BYTE)_unregisterDatabaseObservers
{
  if (result)
  {
    v2 = result;
    if (result[112] == 1)
    {
      v3 = +[_CDLogging syncChannel];
      if (OUTLINED_FUNCTION_19_1(v3))
      {
        v4 = [objc_opt_class() description];
        OUTLINED_FUNCTION_1();
        OUTLINED_FUNCTION_4_2();
        _os_log_impl(v5, v6, v7, v8, v9, 0xCu);
      }

      [OUTLINED_FUNCTION_29() removeKnowledgeStorageEventNotificationDelegate:v2];
      result = [OUTLINED_FUNCTION_29() decrementInsertsAndDeletesObserverCount];
      v2[112] = 0;
    }
  }

  return result;
}

- (void)_cloudIsAvailableToggle
{
  v3 = +[_DKSyncSerializer underlyingQueue];
  dispatch_assert_queue_V2(v3);

  [_DKSync2Policy setOkToDownloadPolicyUpdates:1];
  [(_DKSync2Coordinator *)self _createPushConnection];
  [(_DKSync2Coordinator *)self _reregisterPeriodicJob];
  [(_DKSync2Coordinator *)self _registerCloudDeviceCountChangedObserver];
  [(_DKSync2Coordinator *)self _deleteSiriEventsIfSiriCloudSyncHasBeenDisabled];

  [(_DKSync2Coordinator *)&self->super.super.isa _possiblyPerformInitialSync];
}

- (void)_createPushConnection
{
  v24 = *MEMORY[0x1E69E9840];
  if (self && !*(self + 120))
  {
    v2 = [_CDEntitlementsUtilities entitlementValueForKey:@"aps-environment"];
    v3 = v2;
    v4 = @"production";
    if (v2)
    {
      v4 = v2;
    }

    v5 = v4;

    v6 = [_CDEntitlementsUtilities entitlementValueForKey:@"aps-connection-initiate"];
    if (!v6)
    {
      v7 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v13 = [objc_opt_class() description];
        OUTLINED_FUNCTION_1();
        _os_log_error_impl(&dword_191750000, v7, OS_LOG_TYPE_ERROR, "%{public}@: Missing required entitlements, cannot enable push", &v22, 0xCu);
      }

      goto LABEL_13;
    }

    v7 = objc_alloc(MEMORY[0x1E698CF30]);
    v8 = +[_DKSyncSerializer underlyingQueue];
    v9 = [v7 initWithEnvironmentName:v5 namedDelegatePort:@"com.apple.coreduet.knowledge.sync.push" queue:v8];
    v10 = *(self + 120);
    *(self + 120) = v9;

    v11 = *(self + 120);
    if (v11)
    {
      [v11 setEnabledTopics:0 ignoredTopics:0 opportunisticTopics:&unk_1F05EF1D0];
      [*(self + 120) setDelegate:self];
      v12 = +[_CDLogging syncChannel];
      if (OUTLINED_FUNCTION_23(v12))
      {
        goto LABEL_12;
      }
    }

    else
    {
      v14 = +[_CDLogging syncChannel];
      if (OUTLINED_FUNCTION_23(v14))
      {
LABEL_12:
        v15 = [objc_opt_class() description];
        v16 = _CDPrettyPrintCollection(&unk_1F05EF1D0, 0, 0, 0);
        v22 = 138543618;
        v23 = v15;
        OUTLINED_FUNCTION_5_0();
        OUTLINED_FUNCTION_12_0();
        _os_log_impl(v17, v18, v19, v20, v21, 0x16u);
      }
    }

LABEL_13:
  }
}

- (void)_registerCloudDeviceCountChangedObserver
{
  if (self)
  {
    v2 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v2);

    if ((*(self + 113) & 1) == 0)
    {
      v3 = +[_CDObservationCenter sharedInstance];
      v4 = +[_DKSyncSerializer underlyingQueue];
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_20_0(v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, __63___DKSync2Coordinator__registerCloudDeviceCountChangedObserver__block_invoke, &unk_1E7367620, v16);

      OUTLINED_FUNCTION_17_0(113);
    }
  }
}

- (void)_cloudIsUnavailableToggle
{
  v3 = +[_DKSyncSerializer underlyingQueue];
  dispatch_assert_queue_V2(v3);

  if (self)
  {
    connection = self->_connection;
    if (connection)
    {
      self->_connection = 0;
    }
  }

  [(_DKSync2Coordinator *)self _reregisterPeriodicJob];

  [(_DKSync2Coordinator *)self _unregisterCloudDeviceCountChangedObserver];
}

- (void)_unregisterCloudDeviceCountChangedObserver
{
  if (self)
  {
    v2 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v2);

    if (*(self + 113) == 1)
    {
      v3 = +[_CDObservationCenter sharedInstance];
      [v3 removeObserver:self name:@"_DKCloudDeviceCountChangedNotification"];
      *(self + 113) = 0;
    }
  }
}

- (void)_rapportIsAvailableToggle
{
  v3 = +[_DKSyncSerializer underlyingQueue];
  dispatch_assert_queue_V2(v3);

  [(_DKSync2Coordinator *)self _reregisterPeriodicJob];
}

- (void)_rapportIsUnavailableToggle
{
  v3 = +[_DKSyncSerializer underlyingQueue];
  dispatch_assert_queue_V2(v3);

  [(_DKSync2Coordinator *)self _reregisterPeriodicJob];
}

- (void)fetchSourceDeviceIDFromPeer:(uint64_t)peer
{
  v3 = a2;
  if (peer)
  {
    v4 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v4);

    v5 = [(_DKSync2Coordinator *)peer createBusyTransactionWithName:?];
    v6 = *(peer + 248);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_14();
    v9 = __51___DKSync2Coordinator_fetchSourceDeviceIDFromPeer___block_invoke;
    v10 = &unk_1E7367490;
    peerCopy = peer;
    v12 = v3;
    v13 = v5;
    v7 = v5;
    [v6 fetchSourceDeviceIDFromPeer:v12 highPriority:1 completion:v8];
  }
}

- (void)possiblyUpdateIsBusyProperty
{
  if (self)
  {
    v2 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v2);

    v3 = *(self + 200);
    v4 = [*(self + 32) count];
    if (v3 == 1)
    {
      if (!v4)
      {
        v5 = +[_CDLogging syncChannel];
        if (OUTLINED_FUNCTION_19_1(v5))
        {
          v6 = [objc_opt_class() description];
          OUTLINED_FUNCTION_1();
          OUTLINED_FUNCTION_4_2();
          _os_log_impl(v7, v8, v9, v10, v11, 0xCu);
        }

        *(self + 200) = 0;
        defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
        [defaultCenter postNotificationName:@"_DKSync2CoordinatorDidIdleNotification" object:self];

        defaultCenter2 = [MEMORY[0x1E696ABB0] defaultCenter];
        [defaultCenter2 postNotificationName:@"_DKSync2CoordinatorDidIdleNotification" object:0 userInfo:0 deliverImmediately:0];
      }
    }

    else if (v4)
    {
      v14 = +[_CDLogging syncChannel];
      if (OUTLINED_FUNCTION_19_1(v14))
      {
        v15 = [objc_opt_class() description];
        OUTLINED_FUNCTION_1();
        OUTLINED_FUNCTION_4_2();
        _os_log_impl(v16, v17, v18, v19, v20, 0xCu);
      }

      OUTLINED_FUNCTION_17_0(200);
    }
  }
}

- (id)createBusyTransactionWithName:(uint64_t)name
{
  if (name)
  {
    v3 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v3);

    v4 = os_transaction_create();
    [*(name + 32) addObject:v4];
    [(_DKSync2Coordinator *)name possiblyUpdateIsBusyProperty];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)handleFetchedSourceDeviceID:(void *)d version:(void *)version fromPeer:(void *)peer error:
{
  v51 = *MEMORY[0x1E69E9840];
  v9 = a2;
  dCopy = d;
  versionCopy = version;
  peerCopy = peer;
  if (self)
  {
    v13 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v13);

    if (peerCopy)
    {
      uUIDString2 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(uUIDString2, OS_LOG_TYPE_ERROR))
      {
        v36 = [objc_opt_class() description];
        v15 = &stru_1F05B9908;
        [versionCopy me];
        identifier = [versionCopy identifier];
        model = [versionCopy model];
        if (model)
        {
          v30 = MEMORY[0x1E696AEC0];
          model2 = [versionCopy model];
          v15 = [v30 stringWithFormat:@" (%@)", model2];
        }

        domain = [peerCopy domain];
        [peerCopy code];
        OUTLINED_FUNCTION_15_2();
        v46 = domain;
        v47 = 2048;
        v48 = v32;
        v49 = 2112;
        v50 = peerCopy;
        _os_log_error_impl(&dword_191750000, uUIDString2, OS_LOG_TYPE_ERROR, "%{public}@: Failed while requesting source device id from %{public}@peer %{public}@%{public}@: %{public}@:%lld (%@)", buf, 0x48u);

        if (model)
        {
        }
      }

      goto LABEL_21;
    }

    v18 = +[_CDLogging syncChannel];
    uUIDString2 = v18;
    if (v9)
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v37 = [objc_opt_class() description];
        v19 = &stru_1F05B9908;
        [versionCopy me];
        identifier2 = [versionCopy identifier];
        model3 = [versionCopy model];
        if (model3)
        {
          v22 = MEMORY[0x1E696AEC0];
          model2 = [versionCopy model];
          v19 = [v22 stringWithFormat:@" (%@)", model2];
        }

        uUIDString = [v9 UUIDString];
        OUTLINED_FUNCTION_15_2();
        v46 = v29;
        _os_log_impl(&dword_191750000, uUIDString2, OS_LOG_TYPE_DEFAULT, "%{public}@: Received source device id %{public}@ from %{public}@peer %{public}@%{public}@", buf, 0x34u);

        if (model3)
        {
        }
      }

      uUIDString2 = [v9 UUIDString];
      v23 = +[_DKSyncPeerStatusTracker sharedInstance];
      [v23 setSourceDeviceID:uUIDString2 version:dCopy peer:versionCopy];
    }

    else
    {
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
LABEL_21:

        goto LABEL_22;
      }

      v23 = [objc_opt_class() description];
      v24 = &stru_1F05B9908;
      if ([versionCopy me])
      {
        v25 = @"pseudo ";
      }

      else
      {
        v25 = &stru_1F05B9908;
      }

      identifier3 = [versionCopy identifier];
      model4 = [versionCopy model];
      if (model4)
      {
        v33 = MEMORY[0x1E696AEC0];
        model5 = [versionCopy model];
        v24 = [v33 stringWithFormat:@" (%@)", model5];
      }

      *buf = 138544130;
      v39 = v23;
      v40 = 2114;
      v41 = v25;
      v42 = 2114;
      v43 = identifier3;
      v44 = 2114;
      v45 = v24;
      _os_log_error_impl(&dword_191750000, uUIDString2, OS_LOG_TYPE_ERROR, "%{public}@: Missing source device id requested from %{public}@peer %{public}@%{public}@", buf, 0x2Au);
      if (model4)
      {
      }
    }

    goto LABEL_21;
  }

LABEL_22:
}

- (id)removeBusyTransaction:(id *)result
{
  if (result)
  {
    v3 = result;
    v4 = a2;
    underlyingQueue = [OUTLINED_FUNCTION_16_0() underlyingQueue];
    dispatch_assert_queue_V2(underlyingQueue);

    [v3[4] removeObject:v2];
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_14();
    v8 = __45___DKSync2Coordinator_removeBusyTransaction___block_invoke;
    v9 = &unk_1E7367440;
    v10 = v3;
    return [v6 performAfter:v7 block:0.0001];
  }

  return result;
}

- (void)_performSyncWithForceSync:(void *)sync completion:
{
  if (self)
  {
    v3 = a2;
    syncCopy = sync;
    v6 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v6);

    v7 = [_DKSyncType alloc];
    isSingleDevice = [(_DKSync2Coordinator *)self isSingleDevice];
    v9 = [(_DKSyncType *)v7 initWithIsSingleDevice:isSingleDevice];
    [(_DKSyncType *)v9 setForceSync:v3];
    [(_DKSync2Coordinator *)self _performSyncWithSyncType:v9 completion:syncCopy];
  }
}

- (void)_synchronizeWithUrgency:(void *)urgency client:(void *)client completion:
{
  v27 = *MEMORY[0x1E69E9840];
  urgencyCopy = urgency;
  clientCopy = client;
  if (self)
  {
    v9 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v9);

    v10 = +[_DKSyncUrgencyTracker sharedInstance];
    v11 = [_DKSyncType alloc];
    isSingleDevice = [(_DKSync2Coordinator *)self isSingleDevice];
    v13 = [(_DKSyncType *)v11 initWithIsSingleDevice:isSingleDevice];
    [(_DKSyncType *)v13 setForceSync:?];
    if ([self[31] isAvailable])
    {
      transportType = [self[31] transportType];
    }

    else
    {
      transportType = 0;
    }

    if ([self[29] isAvailable])
    {
      transportType2 = [self[29] transportType];
    }

    else
    {
      transportType2 = 0;
    }

    v16 = transportType2 | transportType;
    if ([self[30] isAvailable])
    {
      transportType3 = [self[30] transportType];
    }

    else
    {
      transportType3 = 0;
    }

    v18 = [_DKSync2Policy disabledFeaturesForSyncType:v13 transports:v16 | transportType3];
    if ([urgencyCopy isEqualToString:@"UsageTracking"] && objc_msgSend(v18, "containsObject:", @"DigitalHealth"))
    {
      v19 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [objc_opt_class() description];
        OUTLINED_FUNCTION_26();
        v25 = 2114;
        v26 = @"DigitalHealth";
        _os_log_impl(&dword_191750000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@: Skipping urgent sync, %{public}@ feature is disabled", buf, 0x16u);
      }
    }

    else
    {
      [(_DKSyncUrgencyTracker *)v10 updateUrgency:a2 forClient:urgencyCopy];
      if (a2 >= 7)
      {
        version = [(_DKEventData *)v10 version];
        [(_DKSyncType *)v13 setUrgency:version];
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = __65___DKSync2Coordinator__synchronizeWithUrgency_client_completion___block_invoke;
        v22[3] = &unk_1E73674B8;
        v22[4] = self;
        v23 = clientCopy;
        [(_DKSync2Coordinator *)self _performSyncWithSyncType:v13 completion:v22];

LABEL_20:
        goto LABEL_21;
      }
    }

    if (clientCopy)
    {
      (*(clientCopy + 2))(clientCopy, 0);
    }

    goto LABEL_20;
  }

LABEL_21:
}

- (BOOL)isSingleDevice
{
  if (!self)
  {
    return 0;
  }

  v1 = +[_DKSyncPeerStatusTracker sharedInstance];
  v2 = [v1 foreignPeersCount] == 0;

  return v2;
}

- (void)_unregisterTriggeredSyncActivity
{
  if (self)
  {
    v2 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v2);

    if (*(self + 184) == 1)
    {
      xpc_activity_unregister("com.apple.coreduet.sync.triggered");
      *(self + 184) = 0;
      v3 = *(self + 192);
      *(self + 192) = 0;
    }
  }
}

- (void)_updateTriggeredSyncActivity
{
  if (self)
  {
    v3 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v3);

    if (*(self + 192))
    {
      v3 = 0x1EADB9000;
      Property = *(self + 96);
      if (Property)
      {
        Property = objc_getProperty(Property, v4, 16, 1);
      }

      if (([(_DKSyncType *)Property isTriggeredSync]& 1) != 0)
      {
        v7 = *(self + 96);
        if (v7)
        {
          v8 = objc_getProperty(v7, v6, 16, 1);
        }

        else
        {
          v8 = 0;
        }

        v3 = [(_DKSync2Coordinator *)self _updatedExecutionCriteriaFromType:v8];
        if (v3)
        {
          v9 = +[_CDLogging syncChannel];
          if (OUTLINED_FUNCTION_23(v9))
          {
            v10 = [objc_opt_class() description];
            OUTLINED_FUNCTION_1();
            OUTLINED_FUNCTION_12_0();
            _os_log_impl(v11, v12, v13, v14, v15, 0xCu);
          }

          xpc_activity_set_criteria(*(self + 192), v3);
        }

        goto LABEL_16;
      }

      v17 = +[_CDLogging syncChannel];
      if (OUTLINED_FUNCTION_19_1(v17))
      {
        goto LABEL_15;
      }
    }

    else
    {
      v16 = +[_CDLogging syncChannel];
      if (OUTLINED_FUNCTION_19_1(v16))
      {
LABEL_15:
        v18 = [objc_opt_class() description];
        OUTLINED_FUNCTION_1();
        OUTLINED_FUNCTION_4_2();
        _os_log_impl(v19, v20, v21, v22, v23, 0xCu);
      }
    }

LABEL_16:
  }
}

- (void)__finishSyncWithTransaction:(void *)transaction startDate:(void *)date completion:
{
  v7 = a2;
  dateCopy = date;
  if (self)
  {
    transactionCopy = transaction;
    v10 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v10);

    Property = *(self + 96);
    if (Property)
    {
      Property = objc_getProperty(Property, v11, 24, 1);
    }

    errors = [Property errors];
    v15 = *(self + 96);
    if (v15)
    {
      objc_setProperty_atomic(v15, v13, 0, 24);
    }

    if (dateCopy)
    {
      firstObject = [errors firstObject];
      dateCopy[2](dateCopy, firstObject);
    }

    [(_DKSync2Coordinator *)self removeBusyTransaction:v7];
    v17 = +[_DKSyncPeerStatusTracker sharedInstance];
    [v17 debugLogPeers];

    date = [MEMORY[0x1E695DF00] date];
    [_DKSync2Coordinator _updateEventStatsWithSyncElapsedTimeStartDate:transactionCopy endDate:date];

    v19 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [objc_opt_class() description];
      OUTLINED_FUNCTION_1();
      OUTLINED_FUNCTION_30_0(&dword_191750000, v21, v22, "%{public}@: Done syncing", v23, v24, v25, v26);
    }
  }
}

- (void)_performInitialSync
{
  v23 = *MEMORY[0x1E69E9840];
  if (self && [*(self + 232) isAvailable])
  {
    v3 = +[_CDLogging syncChannel];
    if (OUTLINED_FUNCTION_19_1(v3))
    {
      v4 = [objc_opt_class() description];
      OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_10_1(&dword_191750000, v5, v6, "%{public}@: Running scheduled initial sync", v22);
    }

    v7 = [_DKSyncType alloc];
    isSingleDevice = [(_DKSync2Coordinator *)self isSingleDevice];
    v9 = [(_DKSyncType *)v7 initWithIsSingleDevice:isSingleDevice];
    [(_DKSyncType *)v9 setIsInitialSync:?];
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_32_0(v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, __42___DKSync2Coordinator__performInitialSync__block_invoke, &unk_1E73675F8, v21);
  }
}

- (void)_finishActivityWithError:(uint64_t)error
{
  v44 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (error)
  {
    activity = [*(error + 176) activity];
    if (!activity)
    {
      v9 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        v11 = [objc_opt_class() description];
        OUTLINED_FUNCTION_1();
        _os_log_fault_impl(&dword_191750000, v9, OS_LOG_TYPE_FAULT, "%{public}@: Missing periodic job activity", &v38, 0xCu);
      }

      goto LABEL_18;
    }

    if (v4 && [_DKCKError isShouldDeferError:v4])
    {
      state = xpc_activity_get_state(activity);
      if (state != 3 && state != 5)
      {
        v27 = +[_CDLogging syncChannel];
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          [objc_opt_class() description];
          objc_claimAutoreleasedReturnValue();
          jobName = [OUTLINED_FUNCTION_13_1() jobName];
          domain = [v4 domain];
          [v4 code];
          OUTLINED_FUNCTION_6_3();
          v40 = jobName;
          v41 = 2114;
          v42 = domain;
          OUTLINED_FUNCTION_25();
          v43 = v4;
          OUTLINED_FUNCTION_21_0();
          _os_log_impl(v31, v32, v33, v34, v35, 0x34u);
        }

        if (!xpc_activity_set_state(activity, 3))
        {
          v36 = +[_CDLogging syncChannel];
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            [objc_opt_class() description];
            objc_claimAutoreleasedReturnValue();
            jobName2 = [OUTLINED_FUNCTION_13_1() jobName];
            v38 = 138543618;
            v39 = v2;
            OUTLINED_FUNCTION_5_0();
            _os_log_error_impl(&dword_191750000, v36, OS_LOG_TYPE_ERROR, "%{public}@: Failed to defer activity %@", &v38, 0x16u);
          }

          xpc_activity_set_state(activity, 5);
        }
      }
    }

    v8 = xpc_activity_get_state(activity);
    v9 = +[_CDLogging syncChannel];
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (v8 == 5)
    {
      if (v10)
      {
LABEL_17:
        [objc_opt_class() description];
        objc_claimAutoreleasedReturnValue();
        jobName3 = [OUTLINED_FUNCTION_13_1() jobName];
        v38 = 138543618;
        v39 = v2;
        OUTLINED_FUNCTION_5_0();
        OUTLINED_FUNCTION_21_0();
        _os_log_impl(v13, v14, v15, v16, v17, 0x16u);
      }
    }

    else
    {
      if (v8 != 3)
      {
        if (v10)
        {
          [objc_opt_class() description];
          objc_claimAutoreleasedReturnValue();
          jobName4 = [OUTLINED_FUNCTION_13_1() jobName];
          v19 = [MEMORY[0x1E696AD98] numberWithLong:v8];
          OUTLINED_FUNCTION_6_3();
          v40 = jobName4;
          v41 = v20;
          v42 = v21;
          OUTLINED_FUNCTION_21_0();
          _os_log_impl(v22, v23, v24, v25, v26, 0x20u);
        }

        xpc_activity_set_state(activity, 5);
        goto LABEL_22;
      }

      if (v10)
      {
        goto LABEL_17;
      }
    }

LABEL_18:

LABEL_22:
  }
}

- (void)_performPeriodicJob
{
  v26 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v4 = +[_CDLogging syncChannel];
    if (OUTLINED_FUNCTION_19_1(v4))
    {
      v2 = [objc_opt_class() description];
      OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_10_1(&dword_191750000, v5, v6, "%{public}@: Running periodic sync job", v25);
    }

    v7 = [_DKSyncType alloc];
    isSingleDevice = [(_DKSync2Coordinator *)self isSingleDevice];
    v9 = [(_DKSyncType *)v7 initWithIsSingleDevice:isSingleDevice];
    [(_DKSyncType *)v9 setIsPeriodicSync:?];
    [*(self + 176) activity];
    objc_claimAutoreleasedReturnValue();
    v10 = OUTLINED_FUNCTION_16_0();
    [(_DKSyncType *)v10 setXpcActivity:v2];

    [(_DKSyncType *)v9 setPeriodicSyncInterval:?];
    v11 = +[_DKSyncUrgencyTracker sharedInstance];
    version = [(_DKEventData *)v11 version];
    [(_DKSyncType *)v9 setUrgency:version];

    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_32_0(v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, __42___DKSync2Coordinator__performPeriodicJob__block_invoke, &unk_1E73675F8, v24);
  }
}

- (double)_intervalForJobGivenIsSingleDevice:(id *)device
{
  if (!device)
  {
    return 0.0;
  }

  v4 = [_DKSync2Policy policyForSyncTransportType:1];
  v5 = [_DKSync2Policy policyForSyncTransportType:4];
  v6 = [_DKSync2Policy policyForSyncTransportType:8];
  v7 = +[_DKSyncUrgencyTracker sharedInstance];
  version = [(_DKEventData *)v7 version];
  v9 = -1.0;
  v10 = -1.0;
  if ([device[31] isAvailable])
  {
    [v4 hoursBetweenSyncsWhenIsSingleDevice:a2 urgency:version];
    v10 = v11;
  }

  if ([device[29] isAvailable])
  {
    [v5 hoursBetweenSyncsWhenIsSingleDevice:a2 urgency:version];
    v9 = v12;
  }

  isAvailable = [device[30] isAvailable];
  v14 = -1.0;
  if (isAvailable)
  {
    [v6 hoursBetweenSyncsWhenIsSingleDevice:a2 urgency:{version, -1.0}];
  }

  if (v10 >= 1.79769313e308 || v10 <= 0.0)
  {
    v16 = 1.79769313e308;
  }

  else
  {
    v16 = v10;
  }

  if (v9 < v16 && v9 > 0.0)
  {
    v16 = v9;
  }

  if (v14 >= v16 || v14 <= 0.0)
  {
    v14 = v16;
  }

  if (v14 >= 1.79769313e308)
  {
    v19 = 0.0;
  }

  else
  {
    v19 = v14 * 60.0 * 60.0;
  }

  return v19;
}

- (void)_deleteForeignSiriEvents
{
  v37[2] = *MEMORY[0x1E69E9840];
  if (self)
  {
    v2 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = [objc_opt_class() description];
      OUTLINED_FUNCTION_1();
      OUTLINED_FUNCTION_11_1();
      _os_log_impl(v4, v5, OS_LOG_TYPE_INFO, v6, v7, 0xCu);
    }

    v8 = +[_CDPortraitStreams entityStream];
    name = [v8 name];
    v37[0] = name;
    v10 = +[_CDPortraitStreams topicStream];
    name2 = [v10 name];
    v37[1] = name2;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:2];

    v13 = [_DKQuery predicateForEventsWithStreamNames:v12];
    v14 = MEMORY[0x1E695DFD8];
    deviceUUID = [*(self + 208) deviceUUID];
    v36 = deviceUUID;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v36 count:1];
    v17 = [v14 setWithArray:v16];
    v18 = [_DKQuery predicateForEventsWithSourceDeviceIDs:v17];

    v19 = +[_DKQuery predicateForEventsWithNullSourceDeviceID];
    v20 = MEMORY[0x1E696AB28];
    v35[0] = v18;
    v35[1] = v19;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:2];
    v22 = [v20 orPredicateWithSubpredicates:v21];

    v23 = [MEMORY[0x1E696AB28] notPredicateWithSubpredicate:v22];
    v24 = MEMORY[0x1E696AB28];
    v34[0] = v13;
    v34[1] = v23;
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:2];
    v26 = [v24 andPredicateWithSubpredicates:v25];

    v27 = [*(self + 208) deleteEventsMatchingPredicate:v26 limit:0];
    v28 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      v29 = [objc_opt_class() description];
      v30 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v27];
      v32 = 138543618;
      v33 = v29;
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_33(&dword_191750000, v28, v31, "%{public}@: Deleted %@ foreign Siri events", &v32);
    }
  }
}

- (void)_deleteSiriCloudEvents
{
  if (self)
  {
    [*(self + 216) setObject:MEMORY[0x1E695E118] forKey:@"NeedsSiriCloudDelete"];
    if ([*(self + 240) isAvailable])
    {
      distantPast = [MEMORY[0x1E695DF00] distantPast];
      [(_DKSync2Coordinator *)self _deleteNextBatchOfOurSiriEventsFromCloudWithStartDate:distantPast];
    }
  }
}

- (void)_deleteNextBatchOfOurSiriEventsFromCloudWithStartDate:(uint64_t)date
{
  v56[2] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (date)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = +[_CDPortraitStreams entityStream];
    name = [v5 name];
    v56[0] = name;
    v7 = +[_CDPortraitStreams topicStream];
    name2 = [v7 name];
    v56[1] = name2;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:2];

    distantFuture = [MEMORY[0x1E695DF00] distantFuture];
    v11 = [_DKSyncWindow syncWindowWithStartDate:v3 endDate:distantFuture];
    v55 = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v55 count:1];

    v13 = *(date + 224);
    v45 = 0;
    v14 = [v13 sortedEventsFromSyncWindows:v12 streamNames:v9 limit:1000 fetchOrder:1 error:&v45];
    v15 = v45;
    if (v15)
    {
      v16 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v28 = [objc_opt_class() description];
        domain = [v15 domain];
        code = [v15 code];
        *buf = 138544130;
        v47 = v28;
        v48 = 2114;
        v49 = domain;
        v50 = 2048;
        v51 = code;
        v52 = 2112;
        v53 = v15;
        _os_log_error_impl(&dword_191750000, v16, OS_LOG_TYPE_ERROR, "%{public}@: Failed while deleting foreign Siri events: %{public}@:%lld (%@)", buf, 0x2Au);
      }
    }

    else if ([v14 count])
    {
      v35 = v9;
      v36 = v4;
      v37 = v3;
      deviceUUID = [*(date + 208) deviceUUID];
      uUIDString = [deviceUUID UUIDString];

      v19 = objc_opt_new();
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v34 = v14;
      v20 = v14;
      v21 = [v20 countByEnumeratingWithState:&v41 objects:v54 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v42;
        do
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v42 != v23)
            {
              objc_enumerationMutation(v20);
            }

            uUID = [*(*(&v41 + 1) + 8 * i) UUID];
            [(_DKSyncDeletedEventIDs *)v19 addDeletedEventID:uUID forSourceDeviceID:uUIDString];
          }

          v22 = [v20 countByEnumeratingWithState:&v41 objects:v54 count:16];
        }

        while (v22);
      }

      v26 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        v31 = [objc_opt_class() description];
        v32 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:-[_DKSyncDeletedEventIDs count](v19)];
        *buf = 138543618;
        v47 = v31;
        v48 = 2112;
        v49 = v32;
        OUTLINED_FUNCTION_33(&dword_191750000, v26, v33, "%{public}@: Deleting %@ Siri events", buf);
      }

      v27 = *(date + 240);
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __77___DKSync2Coordinator__deleteNextBatchOfOurSiriEventsFromCloudWithStartDate___block_invoke;
      v38[3] = &unk_1E7367670;
      v39 = v20;
      dateCopy = date;
      [v27 updateStorageWithAddedEvents:0 deletedEventIDs:v19 highPriority:1 completion:v38];

      v4 = v36;
      v3 = v37;
      v14 = v34;
      v9 = v35;
    }

    else
    {
      [*(date + 216) setObject:MEMORY[0x1E695E110] forKey:@"NeedsSiriCloudDelete"];
    }

    objc_autoreleasePoolPop(v4);
  }
}

- (void)_checkInTriggeredSyncActivity:(void *)activity isStartup:
{
  v6 = a2;
  if (self)
  {
    v7 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v7);

    v8 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [objc_opt_class() description];
      OUTLINED_FUNCTION_1();
      OUTLINED_FUNCTION_30_0(&dword_191750000, v10, v11, "%{public}@: Checking in for triggered sync activity", v12, v13, v14, v15);
    }

    objc_storeStrong((self + 192), a2);
    v16 = [_DKSync2Coordinator _syncTypeFromActivity:v6];
    if (v16)
    {
      v17 = +[_CDLogging syncChannel];
      if (OUTLINED_FUNCTION_23(v17))
      {
        v18 = [objc_opt_class() description];
        OUTLINED_FUNCTION_1();
        OUTLINED_FUNCTION_12_0();
        _os_log_impl(v19, v20, v21, v22, v23, 0xCu);
      }
    }

    else if (activity)
    {
      [(_DKSync2Coordinator *)self _unregisterTriggeredSyncActivity];
    }

    else
    {
      [(_DKSync2Coordinator *)self _updateTriggeredSyncActivity];
    }
  }
}

- (void)connection:(id)connection didReceiveIncomingMessage:(id)message
{
  v22 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v7 = +[_CDLogging syncChannel];
  if (OUTLINED_FUNCTION_23(v7))
  {
    v8 = [objc_opt_class() description];
    topic = [messageCopy topic];
    *buf = 138543618;
    v19 = v8;
    v20 = 2112;
    v21 = topic;
    _os_log_impl(&dword_191750000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Did receive message for topic: %@", buf, 0x16u);
  }

  v10 = [_DKSyncType alloc];
  v11 = OUTLINED_FUNCTION_16_0();
  isSingleDevice = [(_DKSync2Coordinator *)v11 isSingleDevice];
  v13 = [(_DKSyncType *)v4 initWithIsSingleDevice:isSingleDevice];
  [(_DKSyncType *)v13 setIsTriggeredSync:?];
  [(_DKSyncType *)v13 setDidReceivePush:?];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_14();
  v15 = __83___DKSync2Coordinator_APSConnectionDelegate__connection_didReceiveIncomingMessage___block_invoke;
  v16 = &unk_1E73675F8;
  selfCopy = self;
  [(_DKSync2Coordinator *)&self->super.super.isa _performSyncWithSyncType:v13 completion:v14];
}

- (_DKSyncType)syncType
{
  v3 = +[_DKSyncSerializer underlyingQueue];
  dispatch_assert_queue_V2(v3);

  syncState = self->_syncState;
  if (syncState)
  {
    syncState = objc_getProperty(syncState, v4, 16, 1);
  }

  return syncState;
}

+ (void)shouldDeferSyncOperationWithClass:(uint64_t)a1 syncType:(uint64_t)a2 transport:peer:policy:.cold.2(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_class() description];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

- (void)_performSyncWithSyncType:(uint64_t)a3 completion:.cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = +[_CDLogging syncChannel];
  if (OUTLINED_FUNCTION_23(v4))
  {
    v5 = [objc_opt_class() description];
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_12_0();
    _os_log_impl(v6, v7, v8, v9, v10, 0xCu);
  }

  v11 = OUTLINED_FUNCTION_27();
  [(_DKSync2State *)v11 addCompletionBlock:v12];
}

- (void)__performSyncWithCompletion:(uint64_t)a1 .cold.1(uint64_t a1, char *newValue)
{
  v2 = *(a1 + 96);
  if (v2)
  {
    objc_setProperty_atomic(v2, newValue, newValue, 24);
  }
}

- (uint64_t)__performSyncWithCompletion:(uint64_t *)a3 .cold.2(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = +[_CDLogging syncChannel];
  if (OUTLINED_FUNCTION_23(v6))
  {
    v7 = [objc_opt_class() description];
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_12_0();
    _os_log_impl(v8, v9, v10, v11, v12, 0xCu);
  }

  if (!a1)
  {
    return 0;
  }

  *a3 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.coreduet.knowledge" code:6 userInfo:0];
  (*(a1 + 16))(a1);
  return 1;
}

- (void)__performSyncWithCompletion:(os_log_t)log .cold.3(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_impl(&dword_191750000, log, OS_LOG_TYPE_DEFAULT, "%{public}@: Done queuing sync operations", buf, 0xCu);
}

+ (void)_syncTypeFromActivity:.cold.1()
{
  OUTLINED_FUNCTION_16();
  [objc_opt_class() description];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_16_0() domain];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x2Au);
}

+ (void)_syncTypeFromActivity:(uint64_t)a1 .cold.2(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_class() description];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

+ (void)_syncTypeFromActivity:(uint64_t)a1 .cold.3(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_class() description];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

- (void)_updatedExecutionCriteriaFromType:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  v3 = [objc_opt_class() description];
  v9 = [a2 domain];
  [a2 code];
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x2Au);
}

- (void)_updatedExecutionCriteriaFromType:(uint64_t)a1 .cold.2(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_class() description];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

@end