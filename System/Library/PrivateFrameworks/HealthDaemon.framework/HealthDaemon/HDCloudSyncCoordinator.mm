@interface HDCloudSyncCoordinator
- (BOOL)canPerformCloudSyncWithError:(id *)error;
- (BOOL)markAllClientSyncRequestsAsInProgress:(id *)progress;
- (BOOL)scheduleSyncForAllProfilesViaGatedBackgroundTask:(BOOL)task context:(id)context reason:(id)reason error:(id *)error;
- (HDCloudSyncCoordinator)initWithDaemon:(id)daemon;
- (HDDaemon)daemon;
- (double)nextCloudKitOperationDelay;
- (id)_mergeCloudSyncJournalsForProfile:(id)profile taskTree:(id)tree;
- (id)_mergeCloudSyncJournalsWithTaskTree:(id)tree;
- (id)_primaryProfile;
- (id)_queue_syncProfilesWithIdentifiers:(void *)identifiers context:(void *)context completion:;
- (id)addCloudSyncProgressCompletion:(id)completion;
- (id)diagnosticDescription;
- (id)fetchCloudDescriptionWithContext:(id)context updateCacheAndPrepareForSync:(BOOL)sync completion:(id)completion;
- (id)mergeCloudSyncJournalsAndNotifyObservers:(id)observers syncRequestCompleted:(id)completed success:(BOOL)success error:(id)error;
- (id)mergeCloudSyncJournalsWithCompletion:(id)completion;
- (id)progressOfActiveSyncTask;
- (id)resetAllProfilesWithContext:(id)context completion:(id)completion;
- (id)stateSyncDomainForSubscriptionIdentifier;
- (id)stateSyncEntityClasses;
- (id)syncAllProfilesWithContext:(id)context completion:(id)completion;
- (int64_t)compareTask:(id)task withTask:(id)withTask queue:(id)queue;
- (uint64_t)_setupSyncRequestWithContext:(void *)context reason:(void *)reason error:;
- (void)_setupCloudSyncSupportIfRequired;
- (void)_syncAllProfilesViaGatedBackgroundTask:(void *)task completion:;
- (void)_syncAllProfilesViaGatedBackgroundTaskWithCompletion:(uint64_t)completion;
- (void)addObserver:(id)observer;
- (void)clearClientSyncRequestsQueue;
- (void)cloudSyncSupportStatusDidChange;
- (void)daemonReady:(id)ready;
- (void)databaseJournalMergeDidCompleteForProfile:(id)profile type:(int64_t)type;
- (void)dealloc;
- (void)delayNextCloudKitOperation:(double)operation;
- (void)invalidate;
- (void)notifyObservers:(id)observers syncRequestCompleted:(id)completed success:(BOOL)success error:(id)error;
- (void)notifyObservers:(id)observers syncRequestStarted:(id)started withProgress:(id)progress;
- (void)prepareAllProfilesForPeriodicSyncAndRestore;
- (void)profileDidBecomeReady:(id)ready;
- (void)scheduleSharedSummaryPushWithMaximumDelay:(double)delay;
- (void)syncAllProfilesViaGatedBackgroundTask:(BOOL)task context:(id)context reason:(id)reason completion:(id)completion;
- (void)unitTest_performClientGatedSyncActivity:(id)activity;
- (void)unitTest_setStateSyncEntityClasses:(id)classes;
@end

@implementation HDCloudSyncCoordinator

- (HDCloudSyncCoordinator)initWithDaemon:(id)daemon
{
  daemonCopy = daemon;
  v34.receiver = self;
  v34.super_class = HDCloudSyncCoordinator;
  v5 = [(HDCloudSyncCoordinator *)&v34 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_daemon, daemonCopy);
    v6->_lock._os_unfair_lock_opaque = 0;
    v7 = HKCreateSerialUtilityDispatchQueue();
    queue = v6->_queue;
    v6->_queue = v7;

    v9 = objc_alloc_init(HDCloudSyncManagerTaskQueue);
    syncTaskQueue = v6->_syncTaskQueue;
    v6->_syncTaskQueue = v9;

    [(HDCloudSyncManagerTaskQueue *)v6->_syncTaskQueue setDelegate:v6];
    v11 = [HDCloudSyncPeriodicActivityScheduler alloc];
    daemon = [(HDCloudSyncCoordinator *)v6 daemon];
    behavior = [daemon behavior];
    v14 = [(HDCloudSyncPeriodicActivityScheduler *)v11 initWithCoordinator:v6 behavior:behavior];
    periodicActivityScheduler = v6->_periodicActivityScheduler;
    v6->_periodicActivityScheduler = v14;

    v16 = [HDCloudSyncAccountProvider alloc];
    daemon2 = [(HDCloudSyncCoordinator *)v6 daemon];
    behavior2 = [daemon2 behavior];
    v19 = [(HDCloudSyncAccountProvider *)v16 initWithCoordinator:v6 behavior:behavior2];
    accountProvider = v6->_accountProvider;
    v6->_accountProvider = v19;

    v21 = [HDCloudSyncStatusProvider alloc];
    daemon3 = [(HDCloudSyncCoordinator *)v6 daemon];
    behavior3 = [daemon3 behavior];
    v24 = [(HDCloudSyncStatusProvider *)v21 initWithCoordinator:v6 behavior:behavior3];
    syncStatusProvider = v6->_syncStatusProvider;
    v6->_syncStatusProvider = v24;

    v26 = [HDCloudSyncSubscriptionNotificationHandler alloc];
    daemon4 = [(HDCloudSyncCoordinator *)v6 daemon];
    behavior4 = [daemon4 behavior];
    v29 = [(HDCloudSyncSubscriptionNotificationHandler *)v26 initWithCoordinator:v6 behavior:behavior4];
    subscriptionNotificationHandler = v6->_subscriptionNotificationHandler;
    v6->_subscriptionNotificationHandler = v29;

    mEMORY[0x277D10AF8] = [MEMORY[0x277D10AF8] sharedDiagnosticManager];
    [mEMORY[0x277D10AF8] addObject:v6];

    WeakRetained = objc_loadWeakRetained(&v6->_daemon);
    [WeakRetained registerDaemonReadyObserver:v6 queue:v6->_queue];
  }

  return v6;
}

- (void)daemonReady:(id)ready
{
  dispatch_assert_queue_V2(self->_queue);
  WeakRetained = objc_loadWeakRetained(&self->_daemon);
  primaryProfile = [WeakRetained primaryProfile];
  database = [primaryProfile database];
  [database addDatabaseJournalMergeObserver:self journalType:2 queue:self->_queue];

  v8 = objc_loadWeakRetained(&self->_daemon);
  primaryProfile2 = [v8 primaryProfile];
  [primaryProfile2 registerProfileReadyObserver:self queue:self->_queue];
}

- (void)profileDidBecomeReady:(id)ready
{
  readyCopy = ready;
  dispatch_assert_queue_V2(self->_queue);
  [(HDCloudSyncCoordinator *)self _setupCloudSyncSupportIfRequired];
  v4 = objc_alloc(MEMORY[0x277CCD738]);
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = MEMORY[0x277CCC328];
  v8 = [v4 initWithName:v6 loggingCategory:*MEMORY[0x277CCC328]];
  observers = self->_observers;
  self->_observers = v8;

  v10 = [objc_alloc(MEMORY[0x277CF07C8]) initWithIdentifier:@"com.apple.healthd.sync.client.request"];
  [v10 setRequiresProtectionClass:4];
  [v10 setRequiresNetworkConnectivity:1];
  [v10 setRequiresBuddyComplete:1];
  [v10 setPriority:2];
  [HDCloudSyncPeriodicActivityScheduler setupTaskGroupForRequest:v10];
  _HKInitializeLogging();
  objc_initWeak(&location, self);
  v11 = objc_alloc(MEMORY[0x277D10B08]);
  v12 = *v7;
  WeakRetained = objc_loadWeakRetained(&self->_daemon);
  systemScheduler = [WeakRetained systemScheduler];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __48__HDCloudSyncCoordinator_profileDidBecomeReady___block_invoke;
  v28[3] = &unk_2786194C8;
  objc_copyWeak(&v29, &location);
  v15 = [v11 initWithDefaultRequest:v10 loggingCategory:v12 scheduler:systemScheduler handler:v28];
  clientGatedSyncBackgroundTask = self->_clientGatedSyncBackgroundTask;
  self->_clientGatedSyncBackgroundTask = v15;

  v17 = [objc_alloc(MEMORY[0x277D10AD0]) initWithAvailableQuota:3 maximumQuota:3 refillInterval:1800.0 minimumInterval:60.0 lastTrigger:0.0];
  [(HDOneShotBackgroundTask *)self->_clientGatedSyncBackgroundTask setQuota:v17];

  v18 = [objc_alloc(MEMORY[0x277CF07C8]) initWithIdentifier:@"com.apple.healthd.sync.cloud.summary.push"];
  [v18 setRequiresProtectionClass:1];
  [v18 setRequiresNetworkConnectivity:1];
  [v18 setPriority:2];
  [HDCloudSyncPeriodicActivityScheduler setupTaskGroupForRequest:v18];
  v19 = objc_alloc(MEMORY[0x277D10B08]);
  v20 = *MEMORY[0x277CCC328];
  v21 = objc_loadWeakRetained(&self->_daemon);
  systemScheduler2 = [v21 systemScheduler];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __48__HDCloudSyncCoordinator_profileDidBecomeReady___block_invoke_2;
  v26[3] = &unk_2786194C8;
  objc_copyWeak(&v27, &location);
  v23 = [v19 initWithDefaultRequest:v18 loggingCategory:v20 scheduler:systemScheduler2 handler:v26];
  sharedSummaryPushBackgroundTask = self->_sharedSummaryPushBackgroundTask;
  self->_sharedSummaryPushBackgroundTask = v23;

  [(HDOneShotBackgroundTask *)self->_sharedSummaryPushBackgroundTask setRescheduleWhileRunning:1];
  objc_destroyWeak(&v27);

  objc_destroyWeak(&v29);
  objc_destroyWeak(&location);
}

- (void)_setupCloudSyncSupportIfRequired
{
  v14 = *MEMORY[0x277D85DE8];
  if (self)
  {
    WeakRetained = objc_loadWeakRetained((self + 168));
    behavior = [WeakRetained behavior];
    supportsCloudSync = [behavior supportsCloudSync];

    _HKInitializeLogging();
    v5 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_INFO))
    {
      v6 = v5;
      v7 = NSStringFromSelector(sel__setupCloudSyncSupportIfRequired);
      v8 = v7;
      v9 = @"NO";
      *v11 = 138543874;
      *&v11[4] = self;
      *&v11[12] = 2114;
      if (supportsCloudSync)
      {
        v9 = @"YES";
      }

      *&v11[14] = v7;
      *&v11[22] = 2114;
      v12 = v9;
      _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_INFO, "%{public}@ %{public}@ : %{public}@", v11, 0x20u);
    }

    os_unfair_lock_lock((self + 8));
    if (*(self + 15) == 1 && *(self + 14) == supportsCloudSync)
    {
      os_unfair_lock_unlock((self + 8));
    }

    else
    {
      *(self + 15) = 1;
      *(self + 14) = supportsCloudSync;
      os_unfair_lock_unlock((self + 8));
      if (supportsCloudSync)
      {
        v10 = *(self + 128);
        *v11 = MEMORY[0x277D85DD0];
        *&v11[8] = 3221225472;
        *&v11[16] = __49__HDCloudSyncCoordinator__enableCloudSyncSupport__block_invoke;
        v12 = &unk_278613968;
        selfCopy = self;
        dispatch_async(v10, v11);
      }

      else
      {
        [*(self + 152) disablePeriodicActivities];
      }
    }
  }
}

void __48__HDCloudSyncCoordinator_profileDidBecomeReady___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(HDCloudSyncCoordinator *)WeakRetained _syncAllProfilesViaGatedBackgroundTaskWithCompletion:v4];
}

- (void)_syncAllProfilesViaGatedBackgroundTaskWithCompletion:(uint64_t)completion
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (completion)
  {
    v30 = 0;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v33 = __Block_byref_object_copy__41;
    v34 = __Block_byref_object_dispose__41;
    v35 = 0;
    WeakRetained = objc_loadWeakRetained((completion + 168));
    primaryProfile = [WeakRetained primaryProfile];
    database = [primaryProfile database];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __78__HDCloudSyncCoordinator__computeCoalescedSyncContext_coalescedRequest_error___block_invoke;
    v31[3] = &unk_278618610;
    v31[4] = buf;
    v7 = [(HDHealthEntity *)HDCachedSyncRequestEntity performWriteTransactionWithHealthDatabase:database error:&v30 block:v31];

    if (v7)
    {
      v8 = [HDCloudSyncContext alloc];
      v9 = [(HDCloudSyncContext *)v8 initForPurpose:0 options:HDOptionsForRequest(*(*&buf[8] + 40)) reason:1 backgroundTask:*(completion + 80)];
      [v9 setSyncRequest:*(*&buf[8] + 40)];
      v10 = v9;
      v11 = *(*&buf[8] + 40);
      v12 = v11;
    }

    else
    {
      v9 = 0;
      v11 = 0;
    }

    _Block_object_dispose(buf, 8);

    v13 = v9;
    v14 = v11;
    v15 = v30;
    v16 = v15;
    if (v7)
    {
      v17 = [MEMORY[0x277CCAC48] discreteProgressWithTotalUnitCount:2];
      v22 = MEMORY[0x277D85DD0];
      v23 = 3221225472;
      v24 = __79__HDCloudSyncCoordinator__syncAllProfilesViaGatedBackgroundTaskWithCompletion___block_invoke;
      v25 = &unk_278619590;
      completionCopy = completion;
      v18 = v14;
      v27 = v18;
      v28 = v17;
      v29 = v3;
      v19 = v17;
      v20 = [completion syncAllProfilesWithContext:v13 completion:&v22];
      [v19 addChild:v20 withPendingUnitCount:{1, v22, v23, v24, v25, completionCopy}];
      [completion notifyObservers:*(completion + 88) syncRequestStarted:v18 withProgress:v19];
    }

    else
    {
      if (v15)
      {
        _HKInitializeLogging();
        v21 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          *&buf[4] = completion;
          *&buf[12] = 2112;
          *&buf[14] = v16;
          _os_log_impl(&dword_228986000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@: Error fetching computing coalesced sync context %@", buf, 0x16u);
        }
      }

      (*(v3 + 2))(v3, 0, 0);
    }
  }
}

void __48__HDCloudSyncCoordinator_profileDidBecomeReady___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = v4;
  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained(WeakRetained + 21);
    v7 = [v6 behavior];
    v8 = [v7 supportsSharedSummarySync];

    if (v8)
    {
      v9 = objc_loadWeakRetained(WeakRetained + 21);
      v10 = [v9 profileManager];
      v11 = [v10 allProfileIdentifiers];
      v12 = [v11 hk_firstObjectPassingTest:&__block_literal_global_487];

      if (v12)
      {
        v13 = objc_loadWeakRetained(WeakRetained + 21);
        v14 = [v13 profileManager];
        v15 = [v14 profileForIdentifier:v12];

        v16 = [v15 cloudSyncManager];
        v17 = [v16 sharedSummaryManager];
        *&buf = MEMORY[0x277D85DD0];
        *(&buf + 1) = 3221225472;
        v22 = __61__HDCloudSyncCoordinator__pushSharedSummariesWithCompletion___block_invoke_2;
        v23 = &unk_2786130D8;
        v24 = v5;
        v18 = [v17 push:&buf];
      }

      else
      {
        v15 = [MEMORY[0x277CCA9B8] hk_error:100 description:@"Unable to push shared summaries. Primary profile not found."];
        (*(v5 + 2))(v5, 1, v15);
      }
    }

    else
    {
      _HKInitializeLogging();
      v19 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138543362;
        *(&buf + 4) = WeakRetained;
        _os_log_impl(&dword_228986000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@: Device ineligible for pushing shared summaries", &buf, 0xCu);
      }

      (*(v5 + 2))(v5, 0, 0);
    }
  }
}

- (void)cloudSyncSupportStatusDidChange
{
  WeakRetained = objc_loadWeakRetained(&self->_daemon);
  behavior = [WeakRetained behavior];
  [behavior resetSupportsCloudSync];

  [(HDCloudSyncCoordinator *)self _setupCloudSyncSupportIfRequired];
}

- (void)dealloc
{
  [(HDCloudSyncCoordinator *)self invalidate];
  observers = self->_observers;
  self->_observers = 0;

  v4.receiver = self;
  v4.super_class = HDCloudSyncCoordinator;
  [(HDCloudSyncCoordinator *)&v4 dealloc];
}

- (void)invalidate
{
  [(HKObserverSet *)self->_observers unregisterAllObservers];
  WeakRetained = objc_loadWeakRetained(&self->_daemon);
  primaryProfile = [WeakRetained primaryProfile];
  database = [primaryProfile database];
  [database removeDatabaseJournalMergeObserver:self journalType:2];

  mEMORY[0x277D10AF8] = [MEMORY[0x277D10AF8] sharedDiagnosticManager];
  [mEMORY[0x277D10AF8] removeObject:self];
}

- (double)nextCloudKitOperationDelay
{
  Current = CFAbsoluteTimeGetCurrent();
  os_unfair_lock_lock(&self->_lock);
  v4 = fmax(self->_lock_nextAvailableOperationStartTime - Current, 0.0);
  os_unfair_lock_unlock(&self->_lock);
  return v4;
}

- (void)delayNextCloudKitOperation:(double)operation
{
  v19 = *MEMORY[0x277D85DE8];
  Current = CFAbsoluteTimeGetCurrent();
  lock_nextAvailableOperationStartTime = Current + operation;
  os_unfair_lock_lock(&self->_lock);
  if (Current + operation < self->_lock_nextAvailableOperationStartTime)
  {
    lock_nextAvailableOperationStartTime = self->_lock_nextAvailableOperationStartTime;
  }

  self->_lock_nextAvailableOperationStartTime = lock_nextAvailableOperationStartTime;
  os_unfair_lock_unlock(&self->_lock);
  _HKInitializeLogging();
  v7 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v8 = MEMORY[0x277CBEAA8];
    v9 = v7;
    v10 = [[v8 alloc] initWithTimeIntervalSinceReferenceDate:lock_nextAvailableOperationStartTime];
    v11 = 138544130;
    selfCopy = self;
    v13 = 2048;
    operationCopy = operation;
    v15 = 2048;
    v16 = lock_nextAvailableOperationStartTime - Current;
    v17 = 2114;
    v18 = v10;
    _os_log_impl(&dword_228986000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: CloudKit operation delay of %0.2lfs requested; next available operation start is in %0.2lfs at %{public}@", &v11, 0x2Au);
  }
}

- (BOOL)scheduleSyncForAllProfilesViaGatedBackgroundTask:(BOOL)task context:(id)context reason:(id)reason error:(id *)error
{
  taskCopy = task;
  v15 = 0;
  v9 = [(HDCloudSyncCoordinator *)&self->super.isa _setupSyncRequestWithContext:context reason:reason error:&v15];
  v10 = v15;
  v11 = v10;
  if (v9)
  {
    [(HDCloudSyncCoordinator *)self _syncAllProfilesViaGatedBackgroundTask:taskCopy completion:&__block_literal_global_46];
  }

  else
  {
    v12 = v10;
    if (v12)
    {
      if (error)
      {
        v13 = v12;
        *error = v12;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  return v9;
}

- (uint64_t)_setupSyncRequestWithContext:(void *)context reason:(void *)reason error:
{
  v54 = *MEMORY[0x277D85DE8];
  v7 = a2;
  contextCopy = context;
  if (!self)
  {
    v35 = 0;
    goto LABEL_37;
  }

  v9 = v7;
  if ([v9 reason] == 1)
  {
    platformConfiguration = [self[19] platformConfiguration];
    isConfiguredForLiteSync = [platformConfiguration isConfiguredForLiteSync];

    if ((isConfiguredForLiteSync & 1) == 0)
    {
      _HKInitializeLogging();
      v24 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        v43 = v24;
        [v9 reason];
        v44 = HKCloudSyncReasonToString();
        *buf = 138543618;
        selfCopy4 = self;
        v50 = 2114;
        v51 = v44;
        _os_log_error_impl(&dword_228986000, v43, OS_LOG_TYPE_ERROR, "%{public}@: Incoming sync request with reason: %{public}@ is disabled because no iPad is present in context", buf, 0x16u);
      }

      v22 = MEMORY[0x277CCA9B8];
      v23 = @"Sync requests disabled because no iPad is present in context";
      goto LABEL_13;
    }
  }

  WeakRetained = objc_loadWeakRetained(self + 21);
  behavior = [WeakRetained behavior];
  supportsBackgroundSyncRequests = [behavior supportsBackgroundSyncRequests];

  if ((supportsBackgroundSyncRequests & 1) == 0)
  {
    _HKInitializeLogging();
    v19 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      v20 = v19;
      [v9 reason];
      v21 = HKCloudSyncReasonToString();
      *buf = 138543618;
      selfCopy4 = self;
      v50 = 2114;
      v51 = v21;
      _os_log_impl(&dword_228986000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@: Incoming sync request with reason: %{public}@. Sync requests disabled by behavior", buf, 0x16u);
    }

    v22 = MEMORY[0x277CCA9B8];
    v23 = @"Sync requests disabled by behavior";
LABEL_13:
    v25 = [v22 hk_error:111 description:v23];
    v17 = v25;
    if (v25)
    {
      v26 = v25;
    }

    goto LABEL_16;
  }

  v47 = 0;
  v15 = [self canPerformCloudSyncWithError:&v47];
  v16 = v47;
  if (v15)
  {
    v17 = 0;
    v18 = 1;
    goto LABEL_18;
  }

  _HKInitializeLogging();
  v39 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    selfCopy4 = self;
    v50 = 2114;
    v51 = v9;
    v52 = 2114;
    v53 = v16;
    _os_log_impl(&dword_228986000, v39, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ \n Sync requested on client gated activity, but is not permitted. %{public}@", buf, 0x20u);
  }

  v40 = v16;
  v17 = v40;
  if (v40)
  {
    v41 = v40;
    v16 = v17;
    goto LABEL_17;
  }

LABEL_16:
  v16 = 0;
LABEL_17:

  v18 = 0;
LABEL_18:

  v27 = v17;
  v28 = v27;
  if ((v18 & 1) == 0)
  {
    v34 = v27;
    if (v34)
    {
      if (reason)
      {
        v36 = v34;
        *reason = v34;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    goto LABEL_35;
  }

  reasonCopy = reason;
  syncRequest = [v9 syncRequest];
  date = [MEMORY[0x277CBEAA8] date];
  v31 = objc_loadWeakRetained(self + 21);
  primaryProfile = [v31 primaryProfile];
  v46 = v28;
  v33 = [HDCachedSyncRequestEntity insertSyncRequest:syncRequest reason:contextCopy date:date profile:primaryProfile error:&v46];
  v34 = v46;

  if (!v33)
  {
    _HKInitializeLogging();
    v37 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      selfCopy4 = self;
      v50 = 2114;
      v51 = v34;
      _os_log_error_impl(&dword_228986000, v37, OS_LOG_TYPE_ERROR, "%{public}@: Error persisting sync request %{public}@", buf, 0x16u);
    }

    v34 = v34;
    if (v34)
    {
      if (reasonCopy)
      {
        v38 = v34;
        *reasonCopy = v34;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

LABEL_35:

    v35 = 0;
    goto LABEL_36;
  }

  v35 = 1;
LABEL_36:

LABEL_37:
  return v35;
}

- (void)_syncAllProfilesViaGatedBackgroundTask:(void *)task completion:
{
  taskCopy = task;
  v6 = taskCopy;
  if (self)
  {
    v7 = *(self + 80);
    if (a2)
    {
      v16 = 0;
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __76__HDCloudSyncCoordinator__syncAllProfilesViaGatedBackgroundTask_completion___block_invoke;
      v14[3] = &unk_278614250;
      v8 = &v15;
      v15 = taskCopy;
      v9 = &v16;
      [v7 submitRequestWithMaximumDelay:&v16 error:v14 completion:1800.0];
    }

    else
    {
      v13 = 0;
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __76__HDCloudSyncCoordinator__syncAllProfilesViaGatedBackgroundTask_completion___block_invoke_2;
      v11[3] = &unk_278614250;
      v8 = &v12;
      v12 = taskCopy;
      v9 = &v13;
      [v7 runImmediatelyAndReturnError:&v13 completion:v11];
    }

    v10 = *v9;

    if (v10)
    {
      (v6)[2](v6, 0, v10);
    }
  }
}

- (void)syncAllProfilesViaGatedBackgroundTask:(BOOL)task context:(id)context reason:(id)reason completion:(id)completion
{
  taskCopy = task;
  v12 = 0;
  completionCopy = completion;
  LOBYTE(context) = [(HDCloudSyncCoordinator *)&self->super.isa _setupSyncRequestWithContext:context reason:reason error:&v12];
  v11 = v12;
  if (context)
  {
    [(HDCloudSyncCoordinator *)self _syncAllProfilesViaGatedBackgroundTask:taskCopy completion:completionCopy];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0, v11);
  }
}

- (id)syncAllProfilesWithContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__41;
  v21 = __Block_byref_object_dispose__41;
  v22 = 0;
  queue = self->_queue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __64__HDCloudSyncCoordinator_syncAllProfilesWithContext_completion___block_invoke;
  v13[3] = &unk_2786194F0;
  v13[4] = self;
  v14 = contextCopy;
  v15 = completionCopy;
  v16 = &v17;
  v9 = completionCopy;
  v10 = contextCopy;
  dispatch_sync(queue, v13);
  v11 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v11;
}

void __64__HDCloudSyncCoordinator_syncAllProfilesWithContext_completion___block_invoke(uint64_t a1)
{
  v62[2] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = *(a1 + 40);
  v5 = v3;
  if (v2)
  {
    [*(v2 + 160) checkLastSyncDate];
    v52 = 0;
    v6 = [v2 canPerformCloudSyncWithError:&v52];
    v7 = v52;
    v8 = v7;
    if (v6)
    {
      v45 = v7;
      dispatch_assert_queue_V2(*(v2 + 128));
      v9 = [(HDCloudSyncCoordinator *)v2 _primaryProfile];
      v10 = HDCloudSyncRestorePhaseSyncCompleteStartDate(v9);
      v11 = [*(v2 + 160) lastSuccessfulPullDate];
      v12 = v11 | v10;

      if (!v12)
      {
        v13 = [MEMORY[0x277CBEAA8] now];
        HDSetCloudSyncRestorePhaseSyncCompleteStartDate(v13, v9);
      }

      v14 = kHDEventNameCloudSync;
      v61[0] = @"reason";
      v15 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v4, "reason")}];
      v61[1] = @"options";
      v62[0] = v15;
      v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "options")}];
      v62[1] = v16;
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v62 forKeys:v61 count:2];
      HDPowerLog(v14, v17, 1);

      v18 = MEMORY[0x277CCACA8];
      v19 = [MEMORY[0x277CBEAA8] date];
      v20 = HKDiagnosticStringFromDate();
      v21 = [v18 stringWithFormat:@"%@, date=%@", v4, v20];
      v22 = *(v2 + 48);
      *(v2 + 48) = v21;

      _HKInitializeLogging();
      v23 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
      {
        v24 = *(v2 + 48);
        *buf = 138543618;
        *&buf[4] = v2;
        *&buf[12] = 2114;
        *&buf[14] = v24;
        _os_log_impl(&dword_228986000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@: start syncAllProfiles: %{public}@", buf, 0x16u);
      }

      v25 = _HKLogPersistedSignposts();
      v26 = _HKLogSignpostIDGenerate();

      _HKInitializeLogging();
      v27 = _HKLogPersistedSignposts();
      v28 = os_signpost_enabled(v27);

      if (v28)
      {
        v29 = _HKLogPersistedSignposts();
        v30 = v29;
        if (v26 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v29))
        {
          *buf = 138543362;
          *&buf[4] = v4;
          _os_signpost_emit_with_name_impl(&dword_228986000, v30, OS_SIGNPOST_INTERVAL_BEGIN, v26, "cloud-sync", " enableTelemetry=YES %{public}@", buf, 0xCu);
        }
      }

      v31 = [(HKDaemonTransaction *)HDDaemonTransaction transactionWithOwner:v2 activityName:@"Sync"];
      v33 = (v2 + 32);
      v32 = *(v2 + 32);
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __71__HDCloudSyncCoordinator__queue_syncAllProfilesWithContext_completion___block_invoke;
      v54 = &unk_278619518;
      v55 = v2;
      v60 = v32 == 0;
      v47 = v4;
      v34 = v4;
      v56 = v34;
      v59 = v26;
      v35 = v31;
      v57 = v35;
      v46 = v5;
      v58 = v5;
      v36 = _Block_copy(buf);
      WeakRetained = objc_loadWeakRetained((v2 + 168));
      v38 = [WeakRetained profileManager];
      v39 = [v38 allProfileIdentifiers];

      v48[0] = MEMORY[0x277D85DD0];
      v48[1] = 3221225472;
      v48[2] = __71__HDCloudSyncCoordinator__queue_syncAllProfilesWithContext_completion___block_invoke_378;
      v48[3] = &unk_278619540;
      v40 = v36;
      v51 = v40;
      v48[4] = v2;
      v41 = v39;
      v49 = v41;
      v50 = v34;
      v2 = [(HDCloudSyncCoordinator *)v2 _queue_syncProfilesWithIdentifiers:v41 context:v50 completion:v48];
      if (!v32)
      {
        objc_storeStrong(v33, v2);
      }

      v5 = v46;
      v4 = v47;
      v8 = v45;
    }

    else
    {
      _HKInitializeLogging();
      v42 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        *&buf[4] = v2;
        *&buf[12] = 2114;
        *&buf[14] = v8;
        _os_log_impl(&dword_228986000, v42, OS_LOG_TYPE_DEFAULT, "%{public}@: Cloud Sync triggered, but is not permitted. %{public}@", buf, 0x16u);
      }

      (*(v5 + 2))(v5, 0, v8);
      v2 = [MEMORY[0x277CCAC48] hk_finishedDiscreteProgressWithTotalUnitCount:1];
    }
  }

  v43 = *(*(a1 + 56) + 8);
  v44 = *(v43 + 40);
  *(v43 + 40) = v2;
}

void __71__HDCloudSyncCoordinator__queue_syncAllProfilesWithContext_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(v7 + 128);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__HDCloudSyncCoordinator__queue_syncAllProfilesWithContext_completion___block_invoke_2;
  block[3] = &unk_278614228;
  v16 = *(a1 + 72);
  block[4] = v7;
  v17 = a2;
  v11 = v6;
  v12 = v5;
  v15 = *(a1 + 64);
  v13 = *(a1 + 48);
  v14 = *(a1 + 56);
  v9 = v5;
  dispatch_async(v8, block);
}

void __71__HDCloudSyncCoordinator__queue_syncAllProfilesWithContext_completion___block_invoke_2(uint64_t a1)
{
  v46 = *MEMORY[0x277D85DE8];
  if (*(a1 + 80) == 1)
  {
    v2 = *(a1 + 32);
    v3 = *(v2 + 32);
    *(v2 + 32) = 0;

    v4 = *(*(a1 + 32) + 40);
    v5 = *(a1 + 32);
    v6 = *(v5 + 40);
    *(v5 + 40) = 0;
  }

  else
  {
    v4 = 0;
  }

  v7 = MEMORY[0x277CCACA8];
  v8 = *(a1 + 40);
  v9 = [MEMORY[0x277CBEAA8] date];
  v10 = HKDiagnosticStringFromDate();
  v11 = v10;
  v12 = @"NO";
  if (*(a1 + 81))
  {
    v12 = @"YES";
  }

  v13 = [v7 stringWithFormat:@"%@, date=%@, success=%@, error=%@", v8, v10, v12, *(a1 + 48)];
  v14 = *(a1 + 32);
  v15 = *(v14 + 56);
  *(v14 + 56) = v13;

  _HKInitializeLogging();
  v16 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v17 = *(a1 + 32);
    v18 = *(v17 + 56);
    *buf = 138543618;
    v43 = v17;
    v44 = 2114;
    v45 = v18;
    _os_log_impl(&dword_228986000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@: finish syncAllProfiles: %{public}@", buf, 0x16u);
  }

  v19 = kHDEventNameCloudSync;
  v40[0] = @"reason";
  v20 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 40), "reason")}];
  v41[0] = v20;
  v40[1] = @"options";
  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 40), "options")}];
  v41[1] = v21;
  v40[2] = @"result";
  v22 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 81)];
  v41[2] = v22;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:3];
  HDPowerLog(v19, v23, 3);

  _HKInitializeLogging();
  v24 = _HKLogPersistedSignposts();
  LODWORD(v19) = os_signpost_enabled(v24);

  if (v19)
  {
    v25 = _HKLogPersistedSignposts();
    v26 = v25;
    v27 = *(a1 + 72);
    if (v27 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
    {
      v28 = *(a1 + 40);
      v29 = *(a1 + 81);
      *buf = 138543618;
      v43 = v28;
      v44 = 1024;
      LODWORD(v45) = v29;
      _os_signpost_emit_with_name_impl(&dword_228986000, v26, OS_SIGNPOST_INTERVAL_END, v27, "cloud-sync", " enableTelemetry=YES %{public}@, success=%{BOOL}d", buf, 0x12u);
    }
  }

  [*(a1 + 56) invalidate];
  [*(*(a1 + 32) + 152) updatePeriodicActivitiesWithSyncSuccess:*(a1 + 81)];
  (*(*(a1 + 64) + 16))();
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v30 = v4;
  v31 = [v30 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v36;
    do
    {
      v34 = 0;
      do
      {
        if (*v36 != v33)
        {
          objc_enumerationMutation(v30);
        }

        (*(*(*(&v35 + 1) + 8 * v34++) + 16))();
      }

      while (v32 != v34);
      v32 = [v30 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v32);
  }
}

void __71__HDCloudSyncCoordinator__queue_syncAllProfilesWithContext_completion___block_invoke_378(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 168));
    v7 = [WeakRetained profileManager];
    v8 = [v7 allProfileIdentifiers];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __71__HDCloudSyncCoordinator__queue_syncAllProfilesWithContext_completion___block_invoke_2_379;
    v16[3] = &unk_278615BC8;
    v17 = *(a1 + 40);
    v9 = [v8 hk_filter:v16];

    if ([v9 count])
    {
      v10 = *(a1 + 32);
      v11 = *(v10 + 128);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __71__HDCloudSyncCoordinator__queue_syncAllProfilesWithContext_completion___block_invoke_3;
      block[3] = &unk_278613680;
      block[4] = v10;
      v13 = v9;
      v14 = *(a1 + 48);
      v15 = *(a1 + 56);
      dispatch_async(v11, block);
    }

    else
    {
      (*(*(a1 + 56) + 16))();
    }
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

- (id)_queue_syncProfilesWithIdentifiers:(void *)identifiers context:(void *)context completion:
{
  v47 = *MEMORY[0x277D85DE8];
  v7 = a2;
  identifiersCopy = identifiers;
  contextCopy = context;
  if (self)
  {
    dispatch_assert_queue_V2(*(self + 128));
    if ([v7 count])
    {
      v9 = objc_alloc_init(MEMORY[0x277D10BB0]);
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __80__HDCloudSyncCoordinator__queue_syncProfilesWithIdentifiers_context_completion___block_invoke;
      v40[3] = &unk_278619568;
      v40[4] = self;
      v24 = contextCopy;
      v41 = contextCopy;
      [v9 setDidFinish:v40];
      _HKInitializeLogging();
      v10 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v44 = v7;
        v45 = 2114;
        v46 = identifiersCopy;
        _os_log_impl(&dword_228986000, v10, OS_LOG_TYPE_DEFAULT, "Scheduling cloud sync for profiles %{public}@: %{public}@", buf, 0x16u);
      }

      v29 = [MEMORY[0x277CCAC48] discreteProgressWithTotalUnitCount:{objc_msgSend(v7, "count")}];
      [v9 beginTask];
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v25 = v7;
      obj = v7;
      v31 = [obj countByEnumeratingWithState:&v36 objects:v42 count:16];
      if (v31)
      {
        v28 = *v37;
        selfCopy = self;
        do
        {
          for (i = 0; i != v31; ++i)
          {
            if (*v37 != v28)
            {
              objc_enumerationMutation(obj);
            }

            v12 = *(*(&v36 + 1) + 8 * i);
            [v9 beginTask];
            v32[0] = MEMORY[0x277D85DD0];
            v32[1] = 3221225472;
            v33 = __80__HDCloudSyncCoordinator__queue_syncProfilesWithIdentifiers_context_completion___block_invoke_383;
            v34 = &unk_2786130B0;
            v35 = v9;
            v13 = v12;
            v14 = identifiersCopy;
            v15 = v32;
            if (!v13)
            {
              currentHandler = [MEMORY[0x277CCA890] currentHandler];
              [currentHandler handleFailureInMethod:sel__syncProfile_context_completion_ object:selfCopy file:@"HDCloudSyncCoordinator.m" lineNumber:465 description:{@"Invalid parameter not satisfying: %@", @"profileIdentifier != nil"}];

              self = selfCopy;
            }

            WeakRetained = objc_loadWeakRetained((self + 168));
            profileManager = [WeakRetained profileManager];
            v18 = [profileManager profileForIdentifier:v13];

            if (v18 && ([self shouldSyncProfile:v18] & 1) != 0)
            {
              cloudSyncManager = [v18 cloudSyncManager];
              v20 = cloudSyncManager;
              if (cloudSyncManager)
              {
                [cloudSyncManager syncWithContext:v14 completion:v15];
              }

              else
              {
                (v33)(v15, 1, 0);
                [MEMORY[0x277CCAC48] hk_finishedDiscreteProgressWithTotalUnitCount:1];
              }
              v21 = ;

              self = selfCopy;
            }

            else
            {
              (v33)(v15, 1, 0);
              v21 = [MEMORY[0x277CCAC48] hk_finishedDiscreteProgressWithTotalUnitCount:1];
            }

            [v29 addChild:v21 withPendingUnitCount:1];
          }

          v31 = [obj countByEnumeratingWithState:&v36 objects:v42 count:16];
        }

        while (v31);
      }

      [v9 finishTask];
      contextCopy = v24;
      v7 = v25;
    }

    else
    {
      (*(contextCopy + 2))(contextCopy, 1, 0);
      v29 = [MEMORY[0x277CCAC48] hk_finishedDiscreteProgressWithTotalUnitCount:1];
    }
  }

  else
  {
    v29 = 0;
  }

  return v29;
}

void __80__HDCloudSyncCoordinator__queue_syncProfilesWithIdentifiers_context_completion___block_invoke(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v6 = a4;
  v7 = *(*(a1 + 32) + 160);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __80__HDCloudSyncCoordinator__queue_syncProfilesWithIdentifiers_context_completion___block_invoke_2;
  v10[3] = &unk_278616460;
  v13 = a3;
  v8 = *(a1 + 40);
  v11 = v6;
  v12 = v8;
  v9 = v6;
  [v7 updateCachedLastSyncDatesWithCompletion:v10];
}

void __80__HDCloudSyncCoordinator__queue_syncProfilesWithIdentifiers_context_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (*(a1 + 48) == 1)
  {
    v2 = *(v1 + 16);
    v3 = *(a1 + 40);

    v2(v3, 1, 0);
  }

  else
  {
    v4 = [*(a1 + 32) firstObject];
    (*(v1 + 16))(v1, 0, v4);
  }
}

uint64_t __80__HDCloudSyncCoordinator__queue_syncProfilesWithIdentifiers_context_completion___block_invoke_383(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    return [v2 finishTask];
  }

  else
  {
    return [v2 failTaskWithError:?];
  }
}

BOOL __78__HDCloudSyncCoordinator__computeCoalescedSyncContext_coalescedRequest_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(*(a1 + 32) + 8);
  obj = *(v6 + 40);
  v7 = [HDCachedSyncRequestEntity fetchCoalescedSyncRequest:&obj transaction:v5 error:a3];
  objc_storeStrong((v6 + 40), obj);
  v8 = v7 && [HDCachedSyncRequestEntity markPendingRequestsAsInProgress:v5 error:a3];

  return v8;
}

void __79__HDCloudSyncCoordinator__syncAllProfilesViaGatedBackgroundTaskWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = v5[11];
  v8 = a3;
  v9 = [v5 mergeCloudSyncJournalsAndNotifyObservers:v7 syncRequestCompleted:v6 success:a2 error:v8];
  [*(a1 + 48) addChild:v9 withPendingUnitCount:1];
  [*(a1 + 32) clearClientSyncRequestsQueue];
  (*(*(a1 + 56) + 16))();
}

- (void)clearClientSyncRequestsQueue
{
  v15 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_daemon);
  primaryProfile = [WeakRetained primaryProfile];
  v10 = 0;
  v5 = [HDCachedSyncRequestEntity clearInProgressSyncRequests:primaryProfile error:&v10];
  v6 = v10;

  v7 = MEMORY[0x277CCC328];
  if (!v5)
  {
    _HKInitializeLogging();
    v8 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      selfCopy2 = self;
      v13 = 2112;
      v14 = v6;
      _os_log_error_impl(&dword_228986000, v8, OS_LOG_TYPE_ERROR, "%{public}@: Error clearing all in progress sync requests %@", buf, 0x16u);
    }
  }

  _HKInitializeLogging();
  v9 = *v7;
  if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy2 = self;
    _os_log_impl(&dword_228986000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: Clearing client sync request queue", buf, 0xCu);
  }
}

- (BOOL)markAllClientSyncRequestsAsInProgress:(id *)progress
{
  WeakRetained = objc_loadWeakRetained(&self->_daemon);
  primaryProfile = [WeakRetained primaryProfile];
  database = [primaryProfile database];
  LOBYTE(progress) = [(HDHealthEntity *)HDCachedSyncRequestEntity performWriteTransactionWithHealthDatabase:database error:progress block:&__block_literal_global_400];

  return progress;
}

- (void)prepareAllProfilesForPeriodicSyncAndRestore
{
  v16 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_daemon);
  profileManager = [WeakRetained profileManager];

  allProfileIdentifiers = [profileManager allProfileIdentifiers];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [allProfileIdentifiers countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(allProfileIdentifiers);
        }

        v9 = [profileManager profileForIdentifier:*(*(&v11 + 1) + 8 * v8)];
        cloudSyncManager = [v9 cloudSyncManager];
        [cloudSyncManager prepareForPeriodicSync];

        ++v8;
      }

      while (v6 != v8);
      v6 = [allProfileIdentifiers countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (id)resetAllProfilesWithContext:(id)context completion:(id)completion
{
  v48 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  completionCopy = completion;
  v7 = objc_alloc_init(MEMORY[0x277D10BB0]);
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __65__HDCloudSyncCoordinator_resetAllProfilesWithContext_completion___block_invoke;
  v41[3] = &unk_2786152A8;
  v27 = completionCopy;
  v42 = v27;
  [v7 setDidFinish:v41];
  _HKInitializeLogging();
  v8 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v46 = 2114;
    v47 = contextCopy;
    _os_log_impl(&dword_228986000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: Beginning cloud reset for all profiles: %{public}@", buf, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_daemon);
  profileManager = [WeakRetained profileManager];

  v26 = profileManager;
  allProfileIdentifiers = [profileManager allProfileIdentifiers];
  [v7 beginTask];
  v30 = [MEMORY[0x277CCAC48] discreteProgressWithTotalUnitCount:{objc_msgSend(allProfileIdentifiers, "count")}];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = allProfileIdentifiers;
  v32 = [obj countByEnumeratingWithState:&v37 objects:v43 count:16];
  if (v32)
  {
    v29 = *v38;
    do
    {
      v12 = 0;
      do
      {
        if (*v38 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v37 + 1) + 8 * v12);
        [v7 beginTask];
        v33[0] = MEMORY[0x277D85DD0];
        v33[1] = 3221225472;
        v34 = __65__HDCloudSyncCoordinator_resetAllProfilesWithContext_completion___block_invoke_401;
        v35 = &unk_2786130B0;
        v36 = v7;
        v14 = v13;
        v15 = contextCopy;
        v16 = v33;
        if (self)
        {
          if (!v14)
          {
            currentHandler = [MEMORY[0x277CCA890] currentHandler];
            [currentHandler handleFailureInMethod:sel__resetProfile_context_completion_ object:self file:@"HDCloudSyncCoordinator.m" lineNumber:639 description:{@"Invalid parameter not satisfying: %@", @"profileIdentifier != nil"}];
          }

          v17 = objc_loadWeakRetained(&self->_daemon);
          profileManager2 = [v17 profileManager];
          v19 = [profileManager2 profileForIdentifier:v14];

          if (v19 && [(HDCloudSyncCoordinator *)self shouldSyncProfile:v19])
          {
            cloudSyncManager = [v19 cloudSyncManager];
            v21 = cloudSyncManager;
            if (cloudSyncManager)
            {
              [cloudSyncManager resetWithContext:v15 completion:v16];
            }

            else
            {
              (v34)(v16, 1, 0);
              [MEMORY[0x277CCAC48] hk_finishedDiscreteProgressWithTotalUnitCount:1];
            }
            v22 = ;
          }

          else
          {
            (v34)(v16, 1, 0);
            v22 = [MEMORY[0x277CCAC48] hk_finishedDiscreteProgressWithTotalUnitCount:1];
          }
        }

        else
        {
          v22 = 0;
        }

        [v30 addChild:v22 withPendingUnitCount:1];
        ++v12;
      }

      while (v32 != v12);
      v24 = [obj countByEnumeratingWithState:&v37 objects:v43 count:16];
      v32 = v24;
    }

    while (v24);
  }

  [v7 finishTask];

  return v30;
}

void __65__HDCloudSyncCoordinator_resetAllProfilesWithContext_completion___block_invoke(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v4 = *(a1 + 32);
  if (a3)
  {
    v5 = *(v4 + 16);
    v6 = *(a1 + 32);

    v5(v6, 1, 0);
  }

  else
  {
    v7 = [a4 firstObject];
    (*(v4 + 16))(v4, 0, v7);
  }
}

uint64_t __65__HDCloudSyncCoordinator_resetAllProfilesWithContext_completion___block_invoke_401(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    return [v2 finishTask];
  }

  else
  {
    return [v2 failTaskWithError:?];
  }
}

- (id)fetchCloudDescriptionWithContext:(id)context updateCacheAndPrepareForSync:(BOOL)sync completion:(id)completion
{
  syncCopy = sync;
  v59 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  completionCopy = completion;
  _HKInitializeLogging();
  v7 = MEMORY[0x277CCC328];
  v8 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *&buf[4] = contextCopy;
    _os_log_impl(&dword_228986000, v8, OS_LOG_TYPE_DEFAULT, "Scheduling fetch of cloud description for all profiles with context %{public}@", buf, 0xCu);
  }

  v52[0] = 0;
  v52[1] = v52;
  v52[2] = 0x2810000000;
  v52[3] = &unk_22929BC4D;
  v53 = 0;
  _HKInitializeLogging();
  v9 = *v7;
  if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    *&buf[4] = self;
    *&buf[12] = 2114;
    *&buf[14] = contextCopy;
    _os_log_impl(&dword_228986000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: Beginning fetch of cloud description for all profiles with context %{public}@", buf, 0x16u);
  }

  getPersistedAccountInfo = [(HDCloudSyncAccountProvider *)self->_accountProvider getPersistedAccountInfo];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v56 = __Block_byref_object_copy__41;
  v57 = __Block_byref_object_dispose__41;
  v58 = objc_alloc_init(HDCloudSyncPipelineStageDescription);
  v11 = objc_alloc_init(MEMORY[0x277D10BB0]);
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __99__HDCloudSyncCoordinator_fetchCloudDescriptionWithContext_updateCacheAndPrepareForSync_completion___block_invoke;
  v47[3] = &unk_2786195B8;
  v50 = v52;
  v51 = buf;
  v29 = getPersistedAccountInfo;
  v48 = v29;
  v28 = completionCopy;
  v49 = v28;
  [v11 setDidFinish:v47];
  WeakRetained = objc_loadWeakRetained(&self->_daemon);
  profileManager = [WeakRetained profileManager];

  allProfileIdentifiers = [profileManager allProfileIdentifiers];
  v34 = [MEMORY[0x277CCAC48] discreteProgressWithTotalUnitCount:{objc_msgSend(allProfileIdentifiers, "count")}];
  [v11 beginTask];
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = allProfileIdentifiers;
  v14 = [obj countByEnumeratingWithState:&v43 objects:v54 count:16];
  if (v14)
  {
    v33 = *v44;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v44 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v43 + 1) + 8 * i);
        [v11 beginTask];
        v37[0] = MEMORY[0x277D85DD0];
        v37[1] = 3221225472;
        v38 = __99__HDCloudSyncCoordinator_fetchCloudDescriptionWithContext_updateCacheAndPrepareForSync_completion___block_invoke_2;
        v39 = &unk_2786195E0;
        v40 = v11;
        v41 = v52;
        v42 = buf;
        v17 = v16;
        v18 = contextCopy;
        v19 = v37;
        if (!v17)
        {
          currentHandler = [MEMORY[0x277CCA890] currentHandler];
          [currentHandler handleFailureInMethod:sel__fetchDescriptionForProfile_context_updateCacheAndPrepareForSync_completion_ object:self file:@"HDCloudSyncCoordinator.m" lineNumber:737 description:{@"Invalid parameter not satisfying: %@", @"profileIdentifier != nil"}];
        }

        v20 = objc_loadWeakRetained(&self->_daemon);
        profileManager2 = [v20 profileManager];
        v22 = [profileManager2 profileForIdentifier:v17];

        if (v22 && [(HDCloudSyncCoordinator *)self shouldSyncProfile:v22])
        {
          cloudSyncManager = [v22 cloudSyncManager];
          v24 = cloudSyncManager;
          if (cloudSyncManager)
          {
            [cloudSyncManager fetchDescriptionWithContext:v18 updateCacheAndPrepareForSync:syncCopy completion:v19];
          }

          else
          {
            v38(v19, 0, 0);
            [MEMORY[0x277CCAC48] hk_finishedDiscreteProgressWithTotalUnitCount:1];
          }
          v25 = ;
        }

        else
        {
          v38(v19, 0, 0);
          v25 = [MEMORY[0x277CCAC48] hk_finishedDiscreteProgressWithTotalUnitCount:1];
        }

        [v34 addChild:v25 withPendingUnitCount:1];
      }

      v14 = [obj countByEnumeratingWithState:&v43 objects:v54 count:16];
    }

    while (v14);
  }

  [v11 finishTask];
  _Block_object_dispose(buf, 8);

  _Block_object_dispose(v52, 8);

  return v34;
}

void __99__HDCloudSyncCoordinator_fetchCloudDescriptionWithContext_updateCacheAndPrepareForSync_completion___block_invoke(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v17 = a4;
  os_unfair_lock_lock((*(*(a1 + 48) + 8) + 32));
  v6 = *(*(*(a1 + 56) + 8) + 40);
  [*(a1 + 32) accountPartition];
  v7 = CKStringFromPartition();
  v8 = [*(a1 + 32) hasValidCredentials];
  [*(a1 + 32) accountStatus];
  v9 = CKStringFromAccountStatus();
  [*(a1 + 32) deviceToDeviceEncryptionAvailability];
  v10 = CKStringFromDeviceToDeviceEncryptionStatus();
  v11 = [v6 setAccountInfoPartition:v7 hasValidCredentials:v8 accountStatus:v9 encryptionStatus:v10];

  v12 = objc_alloc_init(HDCloudSyncPipelineStageDescription);
  v13 = *(*(a1 + 56) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;

  os_unfair_lock_unlock((*(*(a1 + 48) + 8) + 32));
  v15 = *(a1 + 40);
  if (a3)
  {
    (*(v15 + 16))(v15, v11, 0);
  }

  else
  {
    v16 = [v17 firstObject];
    (*(v15 + 16))(v15, v11, v16);
  }
}

void __99__HDCloudSyncCoordinator_fetchCloudDescriptionWithContext_updateCacheAndPrepareForSync_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  if (v5)
  {
    [*(a1 + 32) failTaskWithError:v5];
  }

  else
  {
    if (v12)
    {
      os_unfair_lock_lock((*(*(a1 + 40) + 8) + 32));
      v6 = *(*(a1 + 48) + 8);
      v7 = *(v6 + 40);
      if (v7)
      {
        v8 = [v7 mergeWithDescription:v12];
        v9 = *(*(a1 + 48) + 8);
        v10 = *(v9 + 40);
        *(v9 + 40) = v8;
      }

      else
      {
        v11 = v12;
        v10 = *(v6 + 40);
        *(v6 + 40) = v11;
      }

      os_unfair_lock_unlock((*(*(a1 + 40) + 8) + 32));
    }

    [*(a1 + 32) finishTask];
  }
}

- (id)progressOfActiveSyncTask
{
  activeTask = [(HDCloudSyncManagerTaskQueue *)self->_syncTaskQueue activeTask];
  progress = [activeTask progress];

  return progress;
}

- (id)addCloudSyncProgressCompletion:(id)completion
{
  completionCopy = completion;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__41;
  v26 = __Block_byref_object_dispose__41;
  v27 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  queue = self->_queue;
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __57__HDCloudSyncCoordinator_addCloudSyncProgressCompletion___block_invoke;
  v13 = &unk_278619608;
  selfCopy = self;
  v16 = &v22;
  v6 = completionCopy;
  v15 = v6;
  v17 = &v18;
  dispatch_sync(queue, &v10);
  if ((v19[3] & 1) == 0)
  {
    v7 = [MEMORY[0x277CCA9B8] hk_error:726 description:{@"No sync in progress.", v10, v11, v12, v13, selfCopy}];
    (*(v6 + 2))(v6, 0, v7);
  }

  v8 = v23[5];

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);

  return v8;
}

void __57__HDCloudSyncCoordinator_addCloudSyncProgressCompletion___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 32);
  if (v1)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), v1);
    v3 = *(*(a1 + 32) + 40);
    if (!v3)
    {
      v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v5 = *(a1 + 32);
      v6 = *(v5 + 40);
      *(v5 + 40) = v4;

      v3 = *(*(a1 + 32) + 40);
    }

    v7 = objc_msgSend_copy(*(a1 + 40));
    v8 = _Block_copy(v7);
    [v3 addObject:v8];

    *(*(*(a1 + 56) + 8) + 24) = 1;
  }
}

- (BOOL)canPerformCloudSyncWithError:(id *)error
{
  v17 = *MEMORY[0x277D85DE8];
  [(HDCloudSyncCoordinator *)self _setupCloudSyncSupportIfRequired];
  WeakRetained = objc_loadWeakRetained(&self->_daemon);
  behavior = [WeakRetained behavior];
  supportsCloudSync = [behavior supportsCloudSync];

  if ((supportsCloudSync & 1) == 0)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:error code:111 format:@"Cloud sync not supported on this device."];
    LOBYTE(error) = 0;
    return error;
  }

  os_unfair_lock_lock(&self->_lock);
  v8 = [(HDCloudSyncAccountProvider *)self->_accountProvider computeCanPerformCloudSyncForPrimaryAccount:error];
  LODWORD(error) = v8;
  if (self->_lock_cloudSyncEnabled == v8)
  {
    lock_hasComputedCloudSyncEnabled = self->_lock_hasComputedCloudSyncEnabled;
    self->_lock_hasComputedCloudSyncEnabled = 1;
    os_unfair_lock_unlock(&self->_lock);
    if (lock_hasComputedCloudSyncEnabled)
    {
      return error;
    }
  }

  else
  {
    self->_lock_cloudSyncEnabled = v8;
    self->_lock_hasComputedCloudSyncEnabled = 1;
    os_unfair_lock_unlock(&self->_lock);
  }

  _HKInitializeLogging();
  v10 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v11 = "disabled";
    if (error)
    {
      v11 = "ENABLED";
    }

    v13 = 138543618;
    selfCopy = self;
    v15 = 2080;
    v16 = v11;
    _os_log_impl(&dword_228986000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: Cloud sync %s", &v13, 0x16u);
  }

  [(HDCloudSyncPeriodicActivityScheduler *)self->_periodicActivityScheduler updatePeriodicActivityCriteria];
  return error;
}

- (id)stateSyncEntityClasses
{
  v27 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  lock_stateSyncEntityClasses = self->_lock_stateSyncEntityClasses;
  if (!lock_stateSyncEntityClasses)
  {
    os_unfair_lock_assert_owner(&self->_lock);
    lock_stateSyncEntityClasses = self->_lock_stateSyncEntityClasses;
    if (!lock_stateSyncEntityClasses)
    {
      v4 = HDBuiltinStateSyncEntities();
      v5 = [v4 mutableCopy];

      WeakRetained = objc_loadWeakRetained(&self->_daemon);
      pluginManager = [WeakRetained pluginManager];
      v8 = [pluginManager pluginsConformingToProtocol:&unk_283D711A8];
      allValues = [v8 allValues];

      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v10 = allValues;
      v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v23;
        do
        {
          v14 = 0;
          do
          {
            if (*v23 != v13)
            {
              objc_enumerationMutation(v10);
            }

            stateSyncEntityClasses = [*(*(&v22 + 1) + 8 * v14) stateSyncEntityClasses];
            [v5 addObjectsFromArray:stateSyncEntityClasses];

            ++v14;
          }

          while (v12 != v14);
          v12 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
        }

        while (v12);
      }

      v16 = objc_msgSend_copy(v5);
      v17 = self->_lock_stateSyncEntityClasses;
      self->_lock_stateSyncEntityClasses = v16;

      lock_stateSyncEntityClasses = self->_lock_stateSyncEntityClasses;
    }
  }

  v18 = lock_stateSyncEntityClasses;
  os_unfair_lock_unlock(&self->_lock);
  if (v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = MEMORY[0x277CBEBF8];
  }

  v20 = v19;

  return v19;
}

- (id)stateSyncDomainForSubscriptionIdentifier
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = HDCloudSyncMedicationsStateChangedSubscriptionIdentifier;
  v5[0] = @"CloudSyncStateEntityDomainMedications";
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

- (int64_t)compareTask:(id)task withTask:(id)withTask queue:(id)queue
{
  taskCopy = task;
  withTaskCopy = withTask;
  priority = [taskCopy priority];
  if (priority <= [withTaskCopy priority])
  {
    priority2 = [taskCopy priority];
    v9 = priority2 < [withTaskCopy priority];
  }

  else
  {
    v9 = -1;
  }

  return v9;
}

- (id)_primaryProfile
{
  WeakRetained = objc_loadWeakRetained((self + 120));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    primaryProfile = WeakRetained;
  }

  else
  {
    v5 = objc_loadWeakRetained((self + 168));
    primaryProfile = [v5 primaryProfile];
  }

  return primaryProfile;
}

- (void)scheduleSharedSummaryPushWithMaximumDelay:(double)delay
{
  v12 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v10 = 2048;
    delayCopy = delay;
    _os_log_impl(&dword_228986000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Scheduling shared summaries push with delay %lf.", buf, 0x16u);
  }

  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68__HDCloudSyncCoordinator_scheduleSharedSummaryPushWithMaximumDelay___block_invoke;
  v7[3] = &unk_2786138F8;
  v7[4] = self;
  *&v7[5] = delay;
  dispatch_sync(queue, v7);
}

void __68__HDCloudSyncCoordinator_scheduleSharedSummaryPushWithMaximumDelay___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 96);
  v3 = *(a1 + 40);
  v7 = 0;
  [v2 submitRequestWithMaximumDelay:&v7 error:&__block_literal_global_479 completion:v3];
  v4 = v7;
  if (v4)
  {
    _HKInitializeLogging();
    v5 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      *buf = 138543618;
      v9 = v6;
      v10 = 2114;
      v11 = v4;
      _os_log_error_impl(&dword_228986000, v5, OS_LOG_TYPE_ERROR, "%{public}@: Failed to schedule shared summary push due to error: %{public}@.", buf, 0x16u);
    }
  }
}

- (void)databaseJournalMergeDidCompleteForProfile:(id)profile type:(int64_t)type
{
  profileType = [profile profileType];
  if (self && profileType == 1)
  {
    dispatch_assert_queue_V2(self->_queue);
    _primaryProfile = [(HDCloudSyncCoordinator *)self _primaryProfile];
    v6 = HDCloudSyncRestorePhaseSyncCompleteEndDate(_primaryProfile);
    v7 = HDCloudSyncRestorePhaseMergeCompleteEndDate(_primaryProfile);
    if (!v7 && v6)
    {
      v7 = [MEMORY[0x277CBEAA8] now];
      v8 = HDCloudSyncRestorePhaseSyncCompleteStartDate(_primaryProfile);
      [v7 timeIntervalSinceDate:v8];
      v10 = v9;
      daemon = [_primaryProfile daemon];
      analyticsSubmissionCoordinator = [daemon analyticsSubmissionCoordinator];
      [analyticsSubmissionCoordinator cloudSync_reportRestoreForProfile:_primaryProfile startDate:v8 endDate:v7 duration:1 finishedJournalMerge:v10];

      HDSetCloudSyncRestorPhaseMergeCompleteEndDate(v7, _primaryProfile);
    }

    if (v7)
    {
      database = [_primaryProfile database];
      [database removeDatabaseJournalMergeObserver:self journalType:2];
    }
  }
}

- (void)addObserver:(id)observer
{
  observers = self->_observers;
  observerCopy = observer;
  queue = [(HDCloudSyncCoordinator *)self queue];
  [(HKObserverSet *)observers registerObserver:observerCopy queue:queue];
}

- (void)notifyObservers:(id)observers syncRequestStarted:(id)started withProgress:(id)progress
{
  startedCopy = started;
  progressCopy = progress;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __74__HDCloudSyncCoordinator_notifyObservers_syncRequestStarted_withProgress___block_invoke;
  v12[3] = &unk_278619670;
  v12[4] = self;
  v13 = startedCopy;
  v14 = progressCopy;
  v10 = progressCopy;
  v11 = startedCopy;
  [observers notifyObservers:v12];
}

void __74__HDCloudSyncCoordinator_notifyObservers_syncRequestStarted_withProgress___block_invoke(void *a1, void *a2)
{
  v6 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = a1[4];
    v4 = a1[5];
    v5 = [MEMORY[0x277CCAC48] hd_progressMirroringProgress:a1[6]];
    [v6 cloudSyncCoordinator:v3 syncStartedForRequest:v4 progress:v5];
  }
}

- (void)notifyObservers:(id)observers syncRequestCompleted:(id)completed success:(BOOL)success error:(id)error
{
  completedCopy = completed;
  errorCopy = error;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __77__HDCloudSyncCoordinator_notifyObservers_syncRequestCompleted_success_error___block_invoke;
  v14[3] = &unk_278619698;
  v14[4] = self;
  v15 = completedCopy;
  successCopy = success;
  v16 = errorCopy;
  v12 = errorCopy;
  v13 = completedCopy;
  [observers notifyObservers:v14];
}

void __77__HDCloudSyncCoordinator_notifyObservers_syncRequestCompleted_success_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 cloudSyncCoordinator:*(a1 + 32) syncRequestDidCompleteForRequest:*(a1 + 40) success:*(a1 + 56) error:*(a1 + 48)];
  }
}

- (void)unitTest_performClientGatedSyncActivity:(id)activity
{
  activityCopy = activity;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __66__HDCloudSyncCoordinator_unitTest_performClientGatedSyncActivity___block_invoke;
  v6[3] = &unk_278614250;
  v7 = activityCopy;
  v5 = activityCopy;
  [(HDCloudSyncCoordinator *)self _syncAllProfilesViaGatedBackgroundTaskWithCompletion:v6];
}

- (void)unitTest_setStateSyncEntityClasses:(id)classes
{
  classesCopy = classes;
  os_unfair_lock_lock(&self->_lock);
  v5 = objc_msgSend_copy(classesCopy);

  lock_stateSyncEntityClasses = self->_lock_stateSyncEntityClasses;
  self->_lock_stateSyncEntityClasses = v5;

  os_unfair_lock_unlock(&self->_lock);
}

- (id)diagnosticDescription
{
  v3 = MEMORY[0x277CCAB68];
  v9 = 0;
  v4 = [(HDCloudSyncCoordinator *)self canPerformCloudSyncWithError:&v9];
  v5 = v9;
  v6 = @"NO";
  if (v4)
  {
    v6 = @"YES";
  }

  v7 = [v3 stringWithFormat:@"\nCloudSync Enabled: %@ \nStarted: %@\nEnded: %@\n", v6, self->_latestSyncStartLog, self->_latestSyncEndLog];

  return v7;
}

- (HDDaemon)daemon
{
  WeakRetained = objc_loadWeakRetained(&self->_daemon);

  return WeakRetained;
}

- (id)mergeCloudSyncJournalsAndNotifyObservers:(id)observers syncRequestCompleted:(id)completed success:(BOOL)success error:(id)error
{
  successCopy = success;
  observersCopy = observers;
  completedCopy = completed;
  errorCopy = error;
  v13 = [MEMORY[0x277CCAC48] discreteProgressWithTotalUnitCount:1];
  if ([observersCopy count])
  {
    if (successCopy)
    {
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __125__HDCloudSyncCoordinator_CloudSyncJournalMerge__mergeCloudSyncJournalsAndNotifyObservers_syncRequestCompleted_success_error___block_invoke;
      v16[3] = &unk_278613630;
      v16[4] = self;
      v17 = observersCopy;
      v18 = completedCopy;
      v14 = [(HDCloudSyncCoordinator *)self mergeCloudSyncJournalsWithCompletion:v16];
      [v13 addChild:v14 withPendingUnitCount:1];
    }

    else
    {
      [v13 setCompletedUnitCount:1];
      [(HDCloudSyncCoordinator *)self notifyObservers:observersCopy syncRequestCompleted:completedCopy success:0 error:errorCopy];
    }
  }

  else
  {
    [v13 setCompletedUnitCount:1];
  }

  return v13;
}

- (id)mergeCloudSyncJournalsWithCompletion:(id)completion
{
  v15 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_228986000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Cloud Sync journal merge attempt starting.", buf, 0xCu);
  }

  v6 = objc_alloc(MEMORY[0x277D10AC8]);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __86__HDCloudSyncCoordinator_CloudSyncJournalMerge__mergeCloudSyncJournalsWithCompletion___block_invoke;
  v11[3] = &unk_27861A120;
  v12 = completionCopy;
  v7 = completionCopy;
  v8 = [v6 initWithDescription:@"Merge pending cloud sync journals" completion:v11];
  v9 = [(HDCloudSyncCoordinator *)self _mergeCloudSyncJournalsWithTaskTree:v8];
  [v8 begin];

  return v9;
}

- (id)_mergeCloudSyncJournalsWithTaskTree:(id)tree
{
  v21 = *MEMORY[0x277D85DE8];
  treeCopy = tree;
  daemon = [(HDCloudSyncCoordinator *)self daemon];
  profileManager = [daemon profileManager];
  allProfileIdentifiers = [profileManager allProfileIdentifiers];

  v8 = [MEMORY[0x277CCAC48] discreteProgressWithTotalUnitCount:{objc_msgSend(allProfileIdentifiers, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = allProfileIdentifiers;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [(HDCloudSyncCoordinator *)self _mergeCloudSyncJournalsForProfile:*(*(&v16 + 1) + 8 * i) taskTree:treeCopy, v16];
        [v8 addChild:v14 withPendingUnitCount:1];
      }

      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  return v8;
}

- (id)_mergeCloudSyncJournalsForProfile:(id)profile taskTree:(id)tree
{
  profileCopy = profile;
  v7 = MEMORY[0x277CCAC48];
  treeCopy = tree;
  v9 = [v7 discreteProgressWithTotalUnitCount:1];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __92__HDCloudSyncCoordinator_CloudSyncJournalMerge___mergeCloudSyncJournalsForProfile_taskTree___block_invoke;
  v15[3] = &unk_27861A170;
  v15[4] = self;
  v16 = profileCopy;
  v10 = v9;
  v17 = v10;
  v11 = profileCopy;
  [treeCopy addTask:v15];

  v12 = v17;
  v13 = v10;

  return v10;
}

void __92__HDCloudSyncCoordinator_CloudSyncJournalMerge___mergeCloudSyncJournalsForProfile_taskTree___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) daemon];
  v8 = [v7 profileManager];
  v9 = [v8 profileForIdentifier:*(a1 + 40)];

  if (v9)
  {
    _HKInitializeLogging();
    v10 = MEMORY[0x277CCC328];
    v11 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      *buf = 138543618;
      *&buf[4] = v12;
      *&buf[12] = 2114;
      *&buf[14] = v9;
      _os_log_impl(&dword_228986000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: Merging cloud sync journal for profile %{public}@", buf, 0x16u);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v32 = 0;
    v13 = [v9 database];
    v24 = 0;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __92__HDCloudSyncCoordinator_CloudSyncJournalMerge___mergeCloudSyncJournalsForProfile_taskTree___block_invoke_301;
    v21[3] = &unk_27861A148;
    v14 = v9;
    v22 = v14;
    v23 = buf;
    v15 = [v13 performWithJournalType:2 error:&v24 block:v21];
    v16 = v24;

    [*(a1 + 48) setCompletedUnitCount:1];
    if (v15)
    {
      v17 = 0;
      v18 = 0;
    }

    else
    {
      _HKInitializeLogging();
      v19 = *v10;
      if (os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
      {
        v20 = *(a1 + 32);
        *v25 = 138543874;
        v26 = v20;
        v27 = 2114;
        v28 = v14;
        v29 = 2114;
        v30 = v16;
        _os_log_error_impl(&dword_228986000, v19, OS_LOG_TYPE_ERROR, "%{public}@: Failed to merge cloud sync journals for profile %{public}@: %{public}@", v25, 0x20u);
      }

      v17 = 1;
      v18 = v16;
    }

    (v6)[2](v6, v17, v18);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    [*(a1 + 48) setCompletedUnitCount:1];
    v6[2](v6, 0, 0);
  }
}

BOOL __92__HDCloudSyncCoordinator_CloudSyncJournalMerge___mergeCloudSyncJournalsForProfile_taskTree___block_invoke_301(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) database];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __92__HDCloudSyncCoordinator_CloudSyncJournalMerge___mergeCloudSyncJournalsForProfile_taskTree___block_invoke_2;
  v7[3] = &unk_278618610;
  v7[4] = *(a1 + 40);
  v5 = [(HDHealthEntity *)HDDataEntity performReadTransactionWithHealthDatabase:v4 error:a2 block:v7];

  return v5;
}

@end