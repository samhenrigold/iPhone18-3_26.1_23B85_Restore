@interface HDMirroredWorkoutSessionServer
- (BOOL)_queue_clientApplicationCanStartWorkoutSessionWithError:(id *)error;
- (BOOL)beginNewActivityWithConfiguration:(id)configuration date:(id)date metadata:(id)metadata error:(id *)error;
- (BOOL)endCurrentActivityOnDate:(id)date error:(id *)error;
- (BOOL)setTargetState:(int64_t)state date:(id)date error:(id *)error;
- (HDMirroredWorkoutSessionServer)initWithProfile:(id)profile configuration:(id)configuration sessionUUID:(id)d globalState:(id)state clientBundleIdentifier:(id)identifier;
- (void)_didInvalidateLiveActivityBackgroundAssertion:(id)assertion error:(id)error;
- (void)_didUpdateLiveActivity:(id)activity;
- (void)_enqueueClientUpdate:(id)update launchClient:(BOOL)client waitForClientSetup:(BOOL)setup;
- (void)_executeClientDataUpdate:(id)update completion:(id)completion;
- (void)_executeClientUpdate:(id)update;
- (void)_flushPendingClientUpdates;
- (void)_flushPendingData;
- (void)_flushPendingDataRequests;
- (void)_launchClientInTheBackgroundAndTakeBackgroundAssertionIfNeeded:(BOOL)needed;
- (void)_liveActivityBackgroundAssertionDidTimeout;
- (void)_schedulePeriodicRuntime;
- (void)_setLiveActivityBackgroundAssertionTimeout;
- (void)_setupLiveActivityObserver;
- (void)_setupProcessStateManagerObserver;
- (void)_takeBackgroundRunningAssertionIfNeeded;
- (void)_takeLiveActivityBackgroundAssertion;
- (void)backlight:(id)backlight didCompleteUpdateToState:(int64_t)state forEvent:(id)event;
- (void)dealloc;
- (void)didDisconnectFromRemoteWithError:(id)error;
- (void)didReceiveDataFromRemoteWorkoutSession:(id)session completion:(id)completion;
- (void)processDidEnterBackground:(id)background;
- (void)processDidEnterForeground:(id)foreground;
- (void)receivedBackgroundRuntimeRequestWithCompletion:(id)completion;
- (void)runSetupPostClientMirroringStartHandler;
- (void)setTaskServer:(id)server;
- (void)syncCurrentActivity:(id)activity completion:(id)completion;
- (void)syncSessionEvent:(int64_t)event date:(id)date;
- (void)syncTransitionToState:(int64_t)state date:(id)date completion:(id)completion;
- (void)syncWorkoutEvents:(id)events completion:(id)completion;
@end

@implementation HDMirroredWorkoutSessionServer

- (HDMirroredWorkoutSessionServer)initWithProfile:(id)profile configuration:(id)configuration sessionUUID:(id)d globalState:(id)state clientBundleIdentifier:(id)identifier
{
  stateCopy = state;
  identifierCopy = identifier;
  v31.receiver = self;
  v31.super_class = HDMirroredWorkoutSessionServer;
  v14 = [(HDWorkoutSessionServer *)&v31 initWithProfile:profile configuration:configuration sessionUUID:d];
  v15 = v14;
  if (v14)
  {
    v14->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v14->super._clientProcessBundleIdentifier, identifier);
    v15->super._isMirroring = 1;
    v15->_sessionState = [stateCopy sessionState];
    if ([stateCopy hasStartDate])
    {
      [stateCopy startDate];
      startDate = HDDecodeDateForValue();
      objc_storeStrong(&v15->super._startDate, startDate);
    }

    else
    {
      startDate = v15->super._startDate;
      v15->super._startDate = 0;
    }

    if ([stateCopy hasEndDate])
    {
      [stateCopy endDate];
      stopDate = HDDecodeDateForValue();
      objc_storeStrong(&v15->super._stopDate, stopDate);
    }

    else
    {
      stopDate = v15->super._stopDate;
      v15->super._stopDate = 0;
    }

    v18 = MEMORY[0x277CCDBF0];
    currentActivity = [stateCopy currentActivity];
    v20 = [v18 createWithCodable:currentActivity];
    currentActivity = v15->super._currentActivity;
    v15->super._currentActivity = v20;

    v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
    pendingClientUpdates = v15->_pendingClientUpdates;
    v15->_pendingClientUpdates = v22;

    v24 = objc_alloc_init(MEMORY[0x277CBEB18]);
    pendingData = v15->_pendingData;
    v15->_pendingData = v24;

    [(HDMirroredWorkoutSessionServer *)v15 _setupLiveActivityObserver];
    [(HDMirroredWorkoutSessionServer *)v15 _takeLiveActivityBackgroundAssertion];
    mEMORY[0x277CF0880] = [MEMORY[0x277CF0880] sharedBacklight];
    [mEMORY[0x277CF0880] addObserver:v15];

    mEMORY[0x277CF0880]2 = [MEMORY[0x277CF0880] sharedBacklight];
    v15->_isBacklightOn = [mEMORY[0x277CF0880]2 backlightState] != 0;

    v15->_isBackgroundAssertionFeatureEnabled = _os_feature_enabled_impl();
    if ([(HDMirroredWorkoutSessionServer *)v15 isFirstPartyClient])
    {
      v15->_isBackgroundAssertionFeatureEnabled = 0;
      v28 = HKObjectForNanoPreferencesUserDefaultsKey();
      v29 = v28;
      if (v28 && [v28 integerValue])
      {
        v15->_isBackgroundAssertionFeatureEnabled = 1;
      }
    }

    [(HDMirroredWorkoutSessionServer *)v15 _launchClientInTheBackgroundAndTakeBackgroundAssertionIfNeeded:0];
    [(HDMirroredWorkoutSessionServer *)v15 _setupProcessStateManagerObserver];
  }

  return v15;
}

- (void)dealloc
{
  v16 = *MEMORY[0x277D85DE8];
  [(BSInvalidatable *)self->_liveActivitySubscription invalidate];
  liveActivitySubscription = self->_liveActivitySubscription;
  self->_liveActivitySubscription = 0;

  if (self->_liveActivityAssertion)
  {
    _HKInitializeLogging();
    v4 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_228986000, v4, OS_LOG_TYPE_DEFAULT, "[mirroring] %{public}@: Will invalidate Live Activity background assertion after server dealloc.", buf, 0xCu);
    }

    [(SNAAssertion *)self->_liveActivityAssertion invalidate];
    liveActivityAssertion = self->_liveActivityAssertion;
    self->_liveActivityAssertion = 0;
  }

  [(HDAssertion *)self->_backgroundRunningAssertion invalidate];
  backgroundRunningAssertion = self->_backgroundRunningAssertion;
  self->_backgroundRunningAssertion = 0;

  WeakRetained = objc_loadWeakRetained(&self->super._profile);
  daemon = [WeakRetained daemon];
  processStateManager = [daemon processStateManager];
  [processStateManager unregisterObserver:self forBundleIdentifier:self->super._clientProcessBundleIdentifier];

  mEMORY[0x277CF0880] = [MEMORY[0x277CF0880] sharedBacklight];
  [mEMORY[0x277CF0880] removeObserver:self];

  os_unfair_lock_lock(&self->_lock);
  periodicRuntimeSource = self->_periodicRuntimeSource;
  if (periodicRuntimeSource)
  {
    dispatch_source_cancel(periodicRuntimeSource);
    v12 = self->_periodicRuntimeSource;
    self->_periodicRuntimeSource = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  v13.receiver = self;
  v13.super_class = HDMirroredWorkoutSessionServer;
  [(HDWorkoutSessionServer *)&v13 dealloc];
}

- (void)_setupProcessStateManagerObserver
{
  WeakRetained = objc_loadWeakRetained(&self->super._profile);
  daemon = [WeakRetained daemon];
  processStateManager = [daemon processStateManager];
  [processStateManager registerObserver:self forBundleIdentifier:self->super._clientProcessBundleIdentifier];
}

- (void)_executeClientDataUpdate:(id)update completion:(id)completion
{
  v16 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  completionCopy = completion;
  if ([updateCopy count])
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __70__HDMirroredWorkoutSessionServer__executeClientDataUpdate_completion___block_invoke;
    v12[3] = &unk_278616CC8;
    v12[4] = self;
    v13 = completionCopy;
    v11.receiver = self;
    v11.super_class = HDMirroredWorkoutSessionServer;
    [(HDWorkoutSessionServer *)&v11 didReceiveDataFromRemoteWorkoutSession:updateCopy completion:v12];
    v8 = v13;
  }

  else
  {
    _HKInitializeLogging();
    v9 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_228986000, v9, OS_LOG_TYPE_INFO, "[mirroring] %{public}@: No pending data to deliver", buf, 0xCu);
    }

    unitTest_didExecuteClientDataUpdateHandler = [(HDMirroredWorkoutSessionServer *)self unitTest_didExecuteClientDataUpdateHandler];
    v8 = unitTest_didExecuteClientDataUpdateHandler;
    if (unitTest_didExecuteClientDataUpdateHandler)
    {
      (*(unitTest_didExecuteClientDataUpdateHandler + 16))(unitTest_didExecuteClientDataUpdateHandler);
    }

    (*(completionCopy + 2))(completionCopy, 1, 0);
  }
}

void __70__HDMirroredWorkoutSessionServer__executeClientDataUpdate_completion___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = [*(a1 + 32) unitTest_didExecuteClientDataUpdateHandler];
  if (v2)
  {
    v3 = v2;
    v2[2]();
    v2 = v3;
  }
}

- (void)didDisconnectFromRemoteWithError:(id)error
{
  errorCopy = error;
  queue = self->super._queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__HDMirroredWorkoutSessionServer_didDisconnectFromRemoteWithError___block_invoke;
  v7[3] = &unk_278613920;
  v7[4] = self;
  v8 = errorCopy;
  v6 = errorCopy;
  dispatch_async(queue, v7);
}

void __67__HDMirroredWorkoutSessionServer_didDisconnectFromRemoteWithError___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  *(*(a1 + 32) + 64) = 0;
  _HKInitializeLogging();
  v2 = MEMORY[0x277CCC330];
  v3 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    *buf = 138543362;
    v15 = v4;
    _os_log_impl(&dword_228986000, v3, OS_LOG_TYPE_DEFAULT, "[mirroring] %{public}@: Did disconnect from remote. Tearing down and notifying client", buf, 0xCu);
  }

  os_unfair_lock_lock((*(a1 + 32) + 320));
  v5 = *(a1 + 32);
  v6 = *(v5 + 416);
  *(v5 + 417) = 1;
  os_unfair_lock_unlock((*(a1 + 32) + 320));
  if (v6)
  {
    [*(a1 + 32) _launchClientInTheBackgroundAndTakeBackgroundAssertionIfNeeded:*(*(a1 + 32) + 336)];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __67__HDMirroredWorkoutSessionServer_didDisconnectFromRemoteWithError___block_invoke_323;
    v12[3] = &unk_278620E20;
    v7 = *(a1 + 32);
    v13 = *(a1 + 40);
    [v7 _enqueueClientUpdate:v12 launchClient:0 waitForClientSetup:1];
    WeakRetained = v13;
  }

  else
  {
    _HKInitializeLogging();
    v9 = *v2;
    if (os_log_type_enabled(*v2, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 32);
      *buf = 138543362;
      v15 = v11;
      _os_log_error_impl(&dword_228986000, v9, OS_LOG_TYPE_ERROR, "[mirroring] %{public}@: Disconnecting before mirroring start handler called. Flushing all client and pending data updates", buf, 0xCu);
    }

    [*(a1 + 32) _flushPendingClientUpdates];
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
    v10 = [WeakRetained workoutManager];
    [v10 tearDownMirroredWorkoutSession:*(a1 + 32)];
  }
}

void __67__HDMirroredWorkoutSessionServer_didDisconnectFromRemoteWithError___block_invoke_323(uint64_t a1, void *a2)
{
  v3 = a2[4];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__HDMirroredWorkoutSessionServer_didDisconnectFromRemoteWithError___block_invoke_2;
  v7[3] = &unk_278620F08;
  v8 = *(a1 + 32);
  v4 = a2;
  [v3 sendToDestinationProcessors:v7];
  WeakRetained = objc_loadWeakRetained(v4 + 1);
  v6 = [WeakRetained workoutManager];
  [v6 tearDownMirroredWorkoutSession:v4];
}

- (void)syncTransitionToState:(int64_t)state date:(id)date completion:(id)completion
{
  dateCopy = date;
  queue = self->super._queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__HDMirroredWorkoutSessionServer_syncTransitionToState_date_completion___block_invoke;
  block[3] = &unk_278614E78;
  v13 = dateCopy;
  stateCopy = state;
  block[4] = self;
  v10 = dateCopy;
  completionCopy = completion;
  dispatch_async(queue, block);
  completionCopy[2](completionCopy, 1, 0);
}

void __72__HDMirroredWorkoutSessionServer_syncTransitionToState_date_completion___block_invoke(void *a1)
{
  v28 = *MEMORY[0x277D85DE8];
  *(a1[4] + 328) = a1[6];
  v2 = HKWorkoutSessionStateFromServerState();
  v3 = HKWorkoutSessionStateFromServerState();
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC330];
  v5 = os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT);
  if (v2 == v3)
  {
    if (v5)
    {
      v6 = a1[4];
      v7 = v4;
      v8 = _HKWorkoutSessionServerStateToString();
      v9 = _HKWorkoutSessionServerStateToString();
      *buf = 138543874;
      v23 = v6;
      v24 = 2112;
      v25 = v8;
      v26 = 2112;
      v27 = v9;
      _os_log_impl(&dword_228986000, v7, OS_LOG_TYPE_DEFAULT, "[mirroring] %{public}@: Synced state: %@ is equivalent to current state: %@, not notifying the client", buf, 0x20u);
    }
  }

  else
  {
    if (v5)
    {
      v10 = v4;
      v11 = objc_opt_class();
      v12 = v11;
      v13 = _HKWorkoutSessionServerStateToString();
      *buf = 138543618;
      v23 = v11;
      v24 = 2112;
      v25 = v13;
      _os_log_impl(&dword_228986000, v10, OS_LOG_TYPE_DEFAULT, "[mirroring] %{public}@: Notifying client of synced transition to new state: %@", buf, 0x16u);
    }

    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __72__HDMirroredWorkoutSessionServer_syncTransitionToState_date_completion___block_invoke_327;
    v18[3] = &unk_278620E48;
    v15 = a1[4];
    v14 = a1[5];
    v21 = a1[6];
    v16 = v14;
    v17 = a1[4];
    v19 = v16;
    v20 = v17;
    [v15 _enqueueClientUpdate:v18 launchClient:1 waitForClientSetup:1];
  }
}

void __72__HDMirroredWorkoutSessionServer_syncTransitionToState_date_completion___block_invoke_327(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v4 = MEMORY[0x277D85DD0];
  v5 = 3221225472;
  v6 = __72__HDMirroredWorkoutSessionServer_syncTransitionToState_date_completion___block_invoke_2;
  v7 = &unk_278620F30;
  v9 = *(a1 + 48);
  v8 = *(a1 + 32);
  [v3 sendToDestinationProcessors:&v4];
  [*(a1 + 40) _flushPendingData];
}

void __72__HDMirroredWorkoutSessionServer_syncTransitionToState_date_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 didSyncTransitionToNewState:HKWorkoutSessionStateFromServerState() date:*(a1 + 32)];
}

- (void)syncSessionEvent:(int64_t)event date:(id)date
{
  dateCopy = date;
  queue = self->super._queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__HDMirroredWorkoutSessionServer_syncSessionEvent_date___block_invoke;
  block[3] = &unk_278614E78;
  v10 = dateCopy;
  eventCopy = event;
  block[4] = self;
  v8 = dateCopy;
  dispatch_async(queue, block);
}

void *__56__HDMirroredWorkoutSessionServer_syncSessionEvent_date___block_invoke(void *result)
{
  v3 = result[4];
  if (*(v3 + 64) == 1)
  {
    v7[5] = v1;
    v7[6] = v2;
    v4 = *(v3 + 72);
    v6 = result[5];
    v5 = result[6];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __56__HDMirroredWorkoutSessionServer_syncSessionEvent_date___block_invoke_2;
    v7[3] = &unk_2786130B0;
    v7[4] = v3;
    return [v4 sendStateEvent:v5 date:v6 completion:v7];
  }

  return result;
}

void __56__HDMirroredWorkoutSessionServer_syncSessionEvent_date___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = 138543618;
      v9 = v7;
      v10 = 2114;
      v11 = v5;
      _os_log_error_impl(&dword_228986000, v6, OS_LOG_TYPE_ERROR, "[mirroring] %{public}@: Failed to send state event to remote device: %{public}@", &v8, 0x16u);
    }
  }
}

- (void)syncCurrentActivity:(id)activity completion:(id)completion
{
  activityCopy = activity;
  queue = self->super._queue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __65__HDMirroredWorkoutSessionServer_syncCurrentActivity_completion___block_invoke;
  v10[3] = &unk_278613920;
  v11 = activityCopy;
  selfCopy = self;
  v8 = activityCopy;
  completionCopy = completion;
  dispatch_async(queue, v10);
  completionCopy[2](completionCopy, 1, 0);
}

void __65__HDMirroredWorkoutSessionServer_syncCurrentActivity_completion___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [v2 endDate];

    v4 = *(a1 + 32);
    if (!v3)
    {
      objc_storeStrong((*(a1 + 40) + 56), v4);
      _HKInitializeLogging();
      v5 = *MEMORY[0x277CCC330];
      if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
      {
        v6 = v5;
        v7 = objc_opt_class();
        v8 = *(a1 + 32);
        *buf = 138543618;
        v30 = v7;
        v31 = 2114;
        v32 = v8;
        v9 = v7;
        _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_DEFAULT, "[mirroring] %{public}@: Remote session beginning new activity: %{public}@", buf, 0x16u);
      }

      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __65__HDMirroredWorkoutSessionServer_syncCurrentActivity_completion___block_invoke_328;
      v27[3] = &unk_278620E70;
      v10 = v28;
      v11 = *(a1 + 40);
      v12 = *(a1 + 32);
      v13 = *(a1 + 40);
      v28[0] = v12;
      v28[1] = v13;
      [v11 _enqueueClientUpdate:v27 launchClient:1 waitForClientSetup:1];
      goto LABEL_11;
    }
  }

  else
  {
    v4 = 0;
  }

  v14 = [v4 endDate];

  if (!v14)
  {
    return;
  }

  _HKInitializeLogging();
  v15 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
  {
    v16 = v15;
    v17 = objc_opt_class();
    v18 = *(*(a1 + 40) + 56);
    *buf = 138543618;
    v30 = v17;
    v31 = 2114;
    v32 = v18;
    v19 = v17;
    _os_log_impl(&dword_228986000, v16, OS_LOG_TYPE_DEFAULT, "[mirroring] %{public}@: Remote session ending current activity: %{public}@", buf, 0x16u);
  }

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __65__HDMirroredWorkoutSessionServer_syncCurrentActivity_completion___block_invoke_329;
  v25[3] = &unk_278620E70;
  v10 = v26;
  v20 = *(a1 + 40);
  v21 = *(a1 + 32);
  v22 = *(a1 + 40);
  v26[0] = v21;
  v26[1] = v22;
  [v20 _enqueueClientUpdate:v25 launchClient:1 waitForClientSetup:1];
  v23 = *(a1 + 40);
  v24 = *(v23 + 56);
  *(v23 + 56) = 0;

LABEL_11:
}

void __65__HDMirroredWorkoutSessionServer_syncCurrentActivity_completion___block_invoke_328(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __65__HDMirroredWorkoutSessionServer_syncCurrentActivity_completion___block_invoke_2;
  v6[3] = &unk_278613880;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = v4;
  v8 = v5;
  [v3 sendToDestinationProcessors:v6];
}

void __65__HDMirroredWorkoutSessionServer_syncCurrentActivity_completion___block_invoke_329(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __65__HDMirroredWorkoutSessionServer_syncCurrentActivity_completion___block_invoke_2_330;
  v6[3] = &unk_278613880;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = v4;
  v8 = v5;
  [v3 sendToDestinationProcessors:v6];
}

- (void)syncWorkoutEvents:(id)events completion:(id)completion
{
  eventsCopy = events;
  queue = self->super._queue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __63__HDMirroredWorkoutSessionServer_syncWorkoutEvents_completion___block_invoke;
  v10[3] = &unk_278613920;
  v11 = eventsCopy;
  selfCopy = self;
  v8 = eventsCopy;
  completionCopy = completion;
  dispatch_async(queue, v10);
  completionCopy[2](completionCopy, 1, 0);
}

void __63__HDMirroredWorkoutSessionServer_syncWorkoutEvents_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) hk_map:&__block_literal_global_102];
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __63__HDMirroredWorkoutSessionServer_syncWorkoutEvents_completion___block_invoke_3;
  v5[3] = &unk_278620E20;
  v6 = v2;
  v4 = v2;
  [v3 _enqueueClientUpdate:v5 launchClient:1 waitForClientSetup:1];
}

id __63__HDMirroredWorkoutSessionServer_syncWorkoutEvents_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCDE58];
  v3 = a2;
  v4 = [v2 internalEventTypeWithPublicEvent:v3];
  v5 = objc_alloc(MEMORY[0x277CCDE58]);
  v6 = [v3 sessionUUID];
  v7 = [v3 dateInterval];
  v8 = [v3 metadata];

  v9 = [v5 initWithEventType:v4 sessionId:v6 dateInterval:v7 metadata:v8];

  return v9;
}

void __63__HDMirroredWorkoutSessionServer_syncWorkoutEvents_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3[4];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __63__HDMirroredWorkoutSessionServer_syncWorkoutEvents_completion___block_invoke_4;
  v6[3] = &unk_278613880;
  v7 = *(a1 + 32);
  v8 = v3;
  v5 = v3;
  [v4 sendToDestinationProcessors:v6];
}

- (void)receivedBackgroundRuntimeRequestWithCompletion:(id)completion
{
  hasActiveLiveActivity = self->_hasActiveLiveActivity;
  completionCopy = completion;
  [(HDMirroredWorkoutSessionServer *)self _launchClientInTheBackgroundAndTakeBackgroundAssertionIfNeeded:hasActiveLiveActivity];
  completionCopy[2](completionCopy, 1, 0);
}

- (void)didReceiveDataFromRemoteWorkoutSession:(id)session completion:(id)completion
{
  sessionCopy = session;
  completionCopy = completion;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __84__HDMirroredWorkoutSessionServer_didReceiveDataFromRemoteWorkoutSession_completion___block_invoke;
  v11[3] = &unk_278620EB8;
  v11[4] = self;
  v12 = sessionCopy;
  v13 = completionCopy;
  v8 = self->_isBackgroundAssertionFeatureEnabled && self->_isBacklightOn;
  v9 = completionCopy;
  v10 = sessionCopy;
  [(HDMirroredWorkoutSessionServer *)self _enqueueClientUpdate:v11 launchClient:v8 waitForClientSetup:1];
  [(HDMirroredWorkoutSessionServer *)self _schedulePeriodicRuntime];
}

void __84__HDMirroredWorkoutSessionServer_didReceiveDataFromRemoteWorkoutSession_completion___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v3 = [WeakRetained daemon];
  v4 = [v3 processStateManager];

  LOBYTE(v3) = [v4 isApplicationStateForegroundForBundleIdentifier:*(*(a1 + 32) + 24)];
  v5 = [v4 isApplicationStateBackgroundRunningForBundleIdentifier:*(*(a1 + 32) + 24)];
  os_unfair_lock_lock((*(a1 + 32) + 320));
  v6 = *(a1 + 32);
  if ((v3 & 1) != 0 || v5)
  {
    v13 = v6[51];
    v14 = [[HDMirroredWorkoutPendingData alloc] initWithData:*(a1 + 40) completion:*(a1 + 48)];
    [v13 addObject:v14];

    os_unfair_lock_unlock((*(a1 + 32) + 320));
    [*(a1 + 32) _flushPendingData];
  }

  else
  {
    if ([v6 isFirstPartyClient])
    {
      _HKInitializeLogging();
      v7 = *MEMORY[0x277CCC330];
      if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 32);
        v16 = 138543362;
        v17 = v8;
        _os_log_impl(&dword_228986000, v7, OS_LOG_TYPE_DEFAULT, "[mirroring] %{public}@: Adding data to pending.", &v16, 0xCu);
      }

      v9 = *(*(a1 + 32) + 408);
      v10 = [HDMirroredWorkoutPendingData alloc];
      v11 = *(a1 + 40);
      v12 = *(a1 + 48);
    }

    else
    {
      v9 = *(*(a1 + 32) + 408);
      v10 = [HDMirroredWorkoutPendingData alloc];
      v11 = *(a1 + 40);
      v12 = 0;
    }

    v15 = [(HDMirroredWorkoutPendingData *)v10 initWithData:v11 completion:v12];
    [v9 addObject:v15];

    os_unfair_lock_unlock((*(a1 + 32) + 320));
    if (([*(a1 + 32) isFirstPartyClient] & 1) == 0)
    {
      (*(*(a1 + 48) + 16))();
    }
  }
}

- (void)_executeClientUpdate:(id)update
{
  updateCopy = update;
  v5 = objc_initWeak(&location, self);
  updateCopy[2](updateCopy, self);

  objc_destroyWeak(&location);
}

- (void)_enqueueClientUpdate:(id)update launchClient:(BOOL)client waitForClientSetup:(BOOL)setup
{
  setupCopy = setup;
  clientCopy = client;
  *&v28[5] = *MEMORY[0x277D85DE8];
  updateCopy = update;
  _HKInitializeLogging();
  v9 = MEMORY[0x277CCC330];
  v10 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
  {
    v25 = 138543874;
    selfCopy4 = self;
    v27 = 1024;
    *v28 = clientCopy;
    v28[2] = 1024;
    *&v28[3] = setupCopy;
    _os_log_impl(&dword_228986000, v10, OS_LOG_TYPE_DEFAULT, "[mirroring] %{public}@: enqueue client update. launchClient: %d, waitForClientSetup: %d", &v25, 0x18u);
  }

  if (self->_hasActiveLiveActivity && clientCopy)
  {
    [(HDMirroredWorkoutSessionServer *)self _launchClientInTheBackgroundAndTakeBackgroundAssertionIfNeeded:1];
  }

  if ([(HDWorkoutSessionServer *)self clientDidSetupSession]|| setupCopy)
  {
    os_unfair_lock_lock(&self->_lock);
    pendingClientUpdates = self->_pendingClientUpdates;
    v14 = _Block_copy(updateCopy);
    [(NSMutableArray *)pendingClientUpdates addObject:v14];

    lock_postMirroringClientStartHandlerCalled = self->_lock_postMirroringClientStartHandlerCalled;
    os_unfair_lock_unlock(&self->_lock);
    _HKInitializeLogging();
    v16 = *v9;
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
    {
      v17 = self->_pendingClientUpdates;
      v18 = v16;
      v19 = [(NSMutableArray *)v17 count];
      v25 = 138543618;
      selfCopy4 = self;
      v27 = 2048;
      *v28 = v19;
      _os_log_impl(&dword_228986000, v18, OS_LOG_TYPE_DEFAULT, "[mirroring] %{public}@: %ld current pending client updates", &v25, 0x16u);
    }

    taskServer = [(HDWorkoutSessionServer *)self taskServer];

    if (taskServer && lock_postMirroringClientStartHandlerCalled)
    {
      [(HDMirroredWorkoutSessionServer *)self _flushPendingClientUpdates];
    }

    else
    {
      _HKInitializeLogging();
      v21 = *v9;
      if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
      {
        v22 = self->_pendingClientUpdates;
        v23 = v21;
        v24 = [(NSMutableArray *)v22 count];
        v25 = 138543618;
        selfCopy4 = self;
        v27 = 2048;
        *v28 = v24;
        _os_log_impl(&dword_228986000, v23, OS_LOG_TYPE_DEFAULT, "[mirroring] %{public}@: Mirroring session not configured, not executing %ld client updates", &v25, 0x16u);
      }
    }
  }

  else
  {
    _HKInitializeLogging();
    v12 = *v9;
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
    {
      v25 = 138543362;
      selfCopy4 = self;
      _os_log_impl(&dword_228986000, v12, OS_LOG_TYPE_DEFAULT, "[mirroring] %{public}@: Not waiting for client setup, execute update immediately", &v25, 0xCu);
    }

    [(HDMirroredWorkoutSessionServer *)self _executeClientUpdate:updateCopy];
  }
}

- (void)_flushPendingClientUpdates
{
  v25 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  _HKInitializeLogging();
  v3 = MEMORY[0x277CCC330];
  v4 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
  {
    pendingClientUpdates = self->_pendingClientUpdates;
    v6 = v4;
    *buf = 138543618;
    selfCopy2 = self;
    v23 = 2048;
    v24 = [(NSMutableArray *)pendingClientUpdates count];
    _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_DEFAULT, "[mirroring] %{public}@: Attempting to execute %lu enqueued updated", buf, 0x16u);
  }

  v7 = objc_msgSend_copy(self->_pendingClientUpdates);
  [(NSMutableArray *)self->_pendingClientUpdates removeAllObjects];
  os_unfair_lock_unlock(&self->_lock);
  if ([v7 count])
  {
    _HKInitializeLogging();
    v8 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      v10 = [v7 count];
      *buf = 138543618;
      selfCopy2 = self;
      v23 = 2048;
      v24 = v10;
      _os_log_impl(&dword_228986000, v9, OS_LOG_TYPE_DEFAULT, "[mirroring] %{public}@: Executing %lu pending updates", buf, 0x16u);
    }

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v11 = v7;
    v12 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v17;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v17 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [(HDMirroredWorkoutSessionServer *)self _executeClientUpdate:*(*(&v16 + 1) + 8 * i), v16];
        }

        v13 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v13);
    }
  }
}

- (void)_schedulePeriodicRuntime
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_periodicRuntimeSource)
  {

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v3 = dispatch_get_global_queue(0, 0);
    v4 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v3);
    periodicRuntimeSource = self->_periodicRuntimeSource;
    self->_periodicRuntimeSource = v4;

    v6 = self->_periodicRuntimeSource;
    v7 = dispatch_time(0, 300000000000);
    dispatch_source_set_timer(v6, v7, 0xFFFFFFFFFFFFFFFFLL, 0);
    objc_initWeak(&location, self);
    v8 = self->_periodicRuntimeSource;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __58__HDMirroredWorkoutSessionServer__schedulePeriodicRuntime__block_invoke;
    v9[3] = &unk_278616F38;
    objc_copyWeak(&v10, &location);
    dispatch_source_set_event_handler(v8, v9);
    dispatch_resume(self->_periodicRuntimeSource);
    os_unfair_lock_unlock(&self->_lock);
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

void __58__HDMirroredWorkoutSessionServer__schedulePeriodicRuntime__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _flushPendingDataRequests];
}

- (void)_flushPendingDataRequests
{
  os_unfair_lock_lock(&self->_lock);
  periodicRuntimeSource = self->_periodicRuntimeSource;
  self->_periodicRuntimeSource = 0;

  os_unfair_lock_unlock(&self->_lock);
  hasActiveLiveActivity = self->_hasActiveLiveActivity;

  [(HDMirroredWorkoutSessionServer *)self _launchClientInTheBackgroundAndTakeBackgroundAssertionIfNeeded:hasActiveLiveActivity];
}

- (void)_flushPendingData
{
  v29 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  v3 = objc_msgSend_copy(self->_pendingData);
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        data = [*(*(&v18 + 1) + 8 * i) data];
        [v4 addObjectsFromArray:data];
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v28 count:16];
    }

    while (v7);
  }

  [(NSMutableArray *)self->_pendingData removeAllObjects];
  os_unfair_lock_unlock(&self->_lock);
  _HKInitializeLogging();
  v11 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
  {
    v13 = v11;
    v14 = [v5 count];
    clientProcessBundleIdentifier = self->super._clientProcessBundleIdentifier;
    *buf = 138543874;
    selfCopy = self;
    v24 = 2048;
    v25 = v14;
    v26 = 2114;
    v27 = clientProcessBundleIdentifier;
    _os_log_error_impl(&dword_228986000, v13, OS_LOG_TYPE_ERROR, "[mirroring] %{public}@: Flushing %ld pending data to client: %{public}@.", buf, 0x20u);
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __51__HDMirroredWorkoutSessionServer__flushPendingData__block_invoke;
  v16[3] = &unk_278616020;
  v16[4] = self;
  v17 = v5;
  v12 = v5;
  [(HDMirroredWorkoutSessionServer *)self _executeClientDataUpdate:v4 completion:v16];
}

void __51__HDMirroredWorkoutSessionServer__flushPendingData__block_invoke(uint64_t a1, int a2, void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __51__HDMirroredWorkoutSessionServer__flushPendingData__block_invoke_2;
  v21 = &unk_278613920;
  v6 = *(a1 + 40);
  v22 = *(a1 + 32);
  v23 = v6;
  v7 = _Block_copy(&v18);
  if (!a2)
  {
    _HKInitializeLogging();
    v8 = MEMORY[0x277CCC330];
    v9 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      v16 = *(a1 + 32);
      v17 = *(v16 + 24);
      *buf = 138543874;
      v25 = v16;
      v26 = 2114;
      v27 = v17;
      v28 = 2114;
      v29 = v5;
      _os_log_error_impl(&dword_228986000, v9, OS_LOG_TYPE_ERROR, "[mirroring] %{public}@: Failed to send pending data to client: %{public}@ with error %{public}@", buf, 0x20u);
    }

    os_unfair_lock_lock((*(a1 + 32) + 320));
    v10 = *(a1 + 32);
    if (*(v10 + 417) == 1)
    {
      v11 = *(v10 + 416);
      os_unfair_lock_unlock((v10 + 320));
      if ((v11 & 1) == 0)
      {
        _HKInitializeLogging();
        v12 = *v8;
        if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
        {
          v13 = *(a1 + 32);
          v14 = *(v13 + 24);
          *buf = 138543618;
          v25 = v13;
          v26 = 2114;
          v27 = v14;
          _os_log_error_impl(&dword_228986000, v12, OS_LOG_TYPE_ERROR, "[mirroring] %{public}@: Force Flushing of failed pending data updates during teardown for client %{public}@", buf, 0x16u);
        }

        goto LABEL_2;
      }
    }

    else
    {
      os_unfair_lock_unlock((v10 + 320));
    }

    v15 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{0, objc_msgSend(*(a1 + 40), "count", v18, v19, v20, v21, v22)}];
    os_unfair_lock_lock((*(a1 + 32) + 320));
    [*(*(a1 + 32) + 408) insertObjects:*(a1 + 40) atIndexes:v15];
    os_unfair_lock_unlock((*(a1 + 32) + 320));

    goto LABEL_11;
  }

LABEL_2:
  v7[2](v7);
LABEL_11:
}

void __51__HDMirroredWorkoutSessionServer__flushPendingData__block_invoke_2(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
  {
    v12 = *(a1 + 32);
    v11 = *(a1 + 40);
    v13 = v2;
    v14 = [v11 count];
    v15 = *(*(a1 + 32) + 24);
    *buf = 138543874;
    v22 = v12;
    v23 = 2048;
    v24 = v14;
    v25 = 2114;
    v26 = v15;
    _os_log_error_impl(&dword_228986000, v13, OS_LOG_TYPE_ERROR, "[mirroring] %{public}@: Completing %ld data updates from client: %{public}@", buf, 0x20u);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = *(a1 + 40);
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        v9 = [v8 completion];

        if (v9)
        {
          v10 = [v8 completion];
          v10[2](v10, 1, 0);
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }
}

- (void)setTaskServer:(id)server
{
  v11 = *MEMORY[0x277D85DE8];
  serverCopy = server;
  v6.receiver = self;
  v6.super_class = HDMirroredWorkoutSessionServer;
  [(HDWorkoutSessionServer *)&v6 setTaskServer:serverCopy];
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v9 = 2114;
    v10 = serverCopy;
    _os_log_impl(&dword_228986000, v5, OS_LOG_TYPE_DEFAULT, "[mirroring] %{public}@: Task server configured: %{public}@", buf, 0x16u);
  }
}

- (BOOL)_queue_clientApplicationCanStartWorkoutSessionWithError:(id *)error
{
  v8 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_228986000, v4, OS_LOG_TYPE_DEFAULT, "[mirroring] %{public}@: Mirrored workout sessions always allowed to start", &v6, 0xCu);
  }

  return 1;
}

- (void)runSetupPostClientMirroringStartHandler
{
  v9 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v3 = MEMORY[0x277CCC330];
  v4 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    selfCopy2 = self;
    _os_log_impl(&dword_228986000, v4, OS_LOG_TYPE_DEFAULT, "[mirroring] %{public}@: Running runSetupPostClientMirroringStartHandler", &v7, 0xCu);
  }

  taskServer = [(HDWorkoutSessionServer *)self taskServer];

  if (taskServer)
  {
    [(HDMirroredWorkoutSessionServer *)self _flushPendingClientUpdates];
    _HKInitializeLogging();
    v6 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138543362;
      selfCopy2 = self;
      _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_DEFAULT, "[mirroring] %{public}@: Flush pending data if any", &v7, 0xCu);
    }

    [(HDMirroredWorkoutSessionServer *)self _flushPendingData];
  }

  os_unfair_lock_lock(&self->_lock);
  self->_lock_postMirroringClientStartHandlerCalled = 1;
  os_unfair_lock_unlock(&self->_lock);
}

- (void)processDidEnterBackground:(id)background
{
  v10 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_INFO))
  {
    clientProcessBundleIdentifier = self->super._clientProcessBundleIdentifier;
    v6 = 138543618;
    selfCopy = self;
    v8 = 2114;
    v9 = clientProcessBundleIdentifier;
    _os_log_impl(&dword_228986000, v4, OS_LOG_TYPE_INFO, "[mirroring] %{public}@: Send pending data to background client: %{public}@", &v6, 0x16u);
  }

  [(HDMirroredWorkoutSessionServer *)self _flushPendingData];
}

- (void)processDidEnterForeground:(id)foreground
{
  v10 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_INFO))
  {
    clientProcessBundleIdentifier = self->super._clientProcessBundleIdentifier;
    v6 = 138543618;
    selfCopy = self;
    v8 = 2114;
    v9 = clientProcessBundleIdentifier;
    _os_log_impl(&dword_228986000, v4, OS_LOG_TYPE_INFO, "[mirroring] %{public}@: Send pending data to foreground client: %{public}@", &v6, 0x16u);
  }

  [(HDMirroredWorkoutSessionServer *)self _flushPendingData];
}

- (BOOL)setTargetState:(int64_t)state date:(id)date error:(id *)error
{
  dateCopy = date;
  queue = self->super._queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__HDMirroredWorkoutSessionServer_setTargetState_date_error___block_invoke;
  block[3] = &unk_278614E78;
  v12 = dateCopy;
  stateCopy = state;
  block[4] = self;
  v9 = dateCopy;
  dispatch_async(queue, block);

  return 1;
}

void __60__HDMirroredWorkoutSessionServer_setTargetState_date_error___block_invoke(void *a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = HKWorkoutSessionServerStateFromSessionState();
  v3 = *(a1[4] + 328);
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC330];
  v5 = os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT);
  if (v2 == v3)
  {
    if (v5)
    {
      v6 = a1[4];
      v7 = v4;
      v8 = _HKWorkoutSessionServerStateToString();
      v9 = _HKWorkoutSessionServerStateToString();
      *buf = 138543874;
      v16 = v6;
      v17 = 2114;
      v18 = v8;
      v19 = 2114;
      v20 = v9;
      _os_log_impl(&dword_228986000, v7, OS_LOG_TYPE_DEFAULT, "[mirroring] %{public}@: Target state: %{public}@ is same as current state: %{public}@", buf, 0x20u);
    }
  }

  else
  {
    if (v5)
    {
      v10 = a1[4];
      *buf = 138543362;
      v16 = v10;
      _os_log_impl(&dword_228986000, v4, OS_LOG_TYPE_DEFAULT, "[mirroring] %{public}@: Sending mirrored session state update", buf, 0xCu);
    }

    v12 = a1[4];
    v11 = a1[5];
    v13 = *(v12 + 72);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __60__HDMirroredWorkoutSessionServer_setTargetState_date_error___block_invoke_337;
    v14[3] = &unk_2786130B0;
    v14[4] = v12;
    [v13 sendStateUpdate:v2 date:v11 completion:v14];
  }
}

void __60__HDMirroredWorkoutSessionServer_setTargetState_date_error___block_invoke_337(uint64_t a1, char a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = 138543618;
      v9 = v7;
      v10 = 2114;
      v11 = v5;
      _os_log_error_impl(&dword_228986000, v6, OS_LOG_TYPE_ERROR, "[mirroring] %{public}@: Failed to send session updates to remote device: %{public}@", &v8, 0x16u);
    }
  }
}

- (BOOL)beginNewActivityWithConfiguration:(id)configuration date:(id)date metadata:(id)metadata error:(id *)error
{
  configurationCopy = configuration;
  dateCopy = date;
  metadataCopy = metadata;
  v12 = [objc_alloc(MEMORY[0x277CCDBF0]) initWithWorkoutConfiguration:configurationCopy startDate:dateCopy endDate:0 metadata:metadataCopy];
  syncController = self->super._syncController;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __88__HDMirroredWorkoutSessionServer_beginNewActivityWithConfiguration_date_metadata_error___block_invoke;
  v15[3] = &unk_2786130B0;
  v15[4] = self;
  [(HDWorkoutSessionRapportSyncController *)syncController sendCurrentActivityUpdate:v12 completion:v15];

  return 1;
}

void __88__HDMirroredWorkoutSessionServer_beginNewActivityWithConfiguration_date_metadata_error___block_invoke(uint64_t a1, char a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = 138543618;
      v9 = v7;
      v10 = 2114;
      v11 = v5;
      _os_log_error_impl(&dword_228986000, v6, OS_LOG_TYPE_ERROR, "[mirroring] %{public}@: Failed to send new activity request to remote device: %{public}@", &v8, 0x16u);
    }
  }
}

- (BOOL)endCurrentActivityOnDate:(id)date error:(id *)error
{
  dateCopy = date;
  queue = self->super._queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __65__HDMirroredWorkoutSessionServer_endCurrentActivityOnDate_error___block_invoke;
  v9[3] = &unk_278613920;
  v9[4] = self;
  v10 = dateCopy;
  v7 = dateCopy;
  dispatch_async(queue, v9);

  return 1;
}

void __65__HDMirroredWorkoutSessionServer_endCurrentActivityOnDate_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 56);
  [v3 _setEndDate:v2];
  v4 = *(a1 + 32);
  v5 = *(v4 + 72);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __65__HDMirroredWorkoutSessionServer_endCurrentActivityOnDate_error___block_invoke_2;
  v6[3] = &unk_2786130B0;
  v6[4] = v4;
  [v5 sendCurrentActivityUpdate:v3 completion:v6];
}

void __65__HDMirroredWorkoutSessionServer_endCurrentActivityOnDate_error___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = 138543618;
      v9 = v7;
      v10 = 2114;
      v11 = v5;
      _os_log_error_impl(&dword_228986000, v6, OS_LOG_TYPE_ERROR, "[mirroring] %{public}@: Failed to send end current activity request to remote device: %{public}@", &v8, 0x16u);
    }
  }
}

- (void)_setupLiveActivityObserver
{
  v3 = objc_alloc_init(MEMORY[0x277CB98A0]);
  liveActivityCenter = self->_liveActivityCenter;
  self->_liveActivityCenter = v3;

  objc_initWeak(&location, self);
  v5 = self->_liveActivityCenter;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __60__HDMirroredWorkoutSessionServer__setupLiveActivityObserver__block_invoke;
  v8[3] = &unk_278620D80;
  objc_copyWeak(&v9, &location);
  v6 = [(ACActivityCenter *)v5 observeContentUpdatesWithHandler:v8];
  liveActivitySubscription = self->_liveActivitySubscription;
  self->_liveActivitySubscription = v6;

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __60__HDMirroredWorkoutSessionServer__setupLiveActivityObserver__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _didUpdateLiveActivity:v3];
}

- (void)_didUpdateLiveActivity:(id)activity
{
  v27 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  descriptor = [activityCopy descriptor];
  platterTargetBundleIdentifier = [descriptor platterTargetBundleIdentifier];

  _HKInitializeLogging();
  v7 = MEMORY[0x277CCC330];
  v8 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [activityCopy identifier];
    state = [activityCopy state];
    v11 = state;
    if (state >= 5)
    {
      _HKInitializeLogging();
      v13 = *v7;
      if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
      {
        v16 = MEMORY[0x277CCABB0];
        v17 = v13;
        v18 = [v16 numberWithInteger:v11];
        v19 = 138412290;
        selfCopy = v18;
        _os_log_error_impl(&dword_228986000, v17, OS_LOG_TYPE_ERROR, "[mirroring]: Encountered unknown ACActivityState: %@", &v19, 0xCu);
      }

      v12 = @"<unknown>";
    }

    else
    {
      v12 = off_278620F50[state];
    }

    v19 = 138544130;
    selfCopy = self;
    v21 = 2114;
    v22 = identifier;
    v23 = 2114;
    v24 = v12;
    v25 = 2114;
    v26 = platterTargetBundleIdentifier;
    _os_log_impl(&dword_228986000, v8, OS_LOG_TYPE_DEFAULT, "[mirroring] %{public}@: Received Live Activity update %{public}@, state: %{public}@, bundle identifier: %{public}@", &v19, 0x2Au);
  }

  if ([platterTargetBundleIdentifier isEqualToString:self->super._clientProcessBundleIdentifier])
  {
    self->_hasActiveLiveActivity = [activityCopy state] == 0;
    _HKInitializeLogging();
    v14 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
    {
      if (self->_hasActiveLiveActivity)
      {
        v15 = @"YES";
      }

      else
      {
        v15 = @"NO";
      }

      v19 = 138543362;
      selfCopy = v15;
      _os_log_impl(&dword_228986000, v14, OS_LOG_TYPE_DEFAULT, "[mirroring] Did update Live Activity State. Active: %{public}@", &v19, 0xCu);
    }
  }
}

- (void)_takeLiveActivityBackgroundAssertion
{
  v3 = [objc_alloc(MEMORY[0x277D4D500]) initWithBundleIdentifier:self->super._clientProcessBundleIdentifier];
  objc_initWeak(&location, self);
  v4 = objc_alloc(MEMORY[0x277D4D4F8]);
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __70__HDMirroredWorkoutSessionServer__takeLiveActivityBackgroundAssertion__block_invoke;
  v10 = &unk_278620EE0;
  objc_copyWeak(&v11, &location);
  v5 = [v4 initWithExplanation:@"Apple Watch workout mirrored to companion iPhone" target:v3 invalidationHandler:&v7];
  liveActivityAssertion = self->_liveActivityAssertion;
  self->_liveActivityAssertion = v5;

  [(HDMirroredWorkoutSessionServer *)self _setLiveActivityBackgroundAssertionTimeout:v7];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __70__HDMirroredWorkoutSessionServer__takeLiveActivityBackgroundAssertion__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _didInvalidateLiveActivityBackgroundAssertion:v6 error:v5];
}

- (void)_didInvalidateLiveActivityBackgroundAssertion:(id)assertion error:(id)error
{
  v18 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v7 = MEMORY[0x277CCACA8];
  assertionCopy = assertion;
  hd_description = [assertionCopy hd_description];
  v10 = [v7 stringWithFormat:@"[mirroring] %@: Invalidated Live Activity assertion %@.", self, hd_description];

  invalidationReason = [assertionCopy invalidationReason];
  _HKInitializeLogging();
  v12 = *MEMORY[0x277CCC330];
  v13 = *MEMORY[0x277CCC330];
  if (invalidationReason == 3)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v15 = v10;
      _os_log_impl(&dword_228986000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    v15 = v10;
    v16 = 2114;
    v17 = errorCopy;
    _os_log_error_impl(&dword_228986000, v12, OS_LOG_TYPE_ERROR, "%{public}@ with error: %{public}@.", buf, 0x16u);
  }
}

- (void)_setLiveActivityBackgroundAssertionTimeout
{
  v3 = dispatch_get_global_queue(21, 0);
  v4 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v3);
  liveActivityAssertionTimeoutSource = self->_liveActivityAssertionTimeoutSource;
  self->_liveActivityAssertionTimeoutSource = v4;

  v6 = self->_liveActivityAssertionTimeoutSource;
  v7 = dispatch_time(0, 30000000000);
  dispatch_source_set_timer(v6, v7, 0xFFFFFFFFFFFFFFFFLL, 0);
  objc_initWeak(&location, self);
  v8 = self->_liveActivityAssertionTimeoutSource;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __76__HDMirroredWorkoutSessionServer__setLiveActivityBackgroundAssertionTimeout__block_invoke;
  v9[3] = &unk_278616F38;
  objc_copyWeak(&v10, &location);
  dispatch_source_set_event_handler(v8, v9);
  dispatch_resume(self->_liveActivityAssertionTimeoutSource);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __76__HDMirroredWorkoutSessionServer__setLiveActivityBackgroundAssertionTimeout__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _liveActivityBackgroundAssertionDidTimeout];
}

- (void)_liveActivityBackgroundAssertionDidTimeout
{
  v7 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v3 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_228986000, v3, OS_LOG_TYPE_DEFAULT, "[mirroring] %{public}@: Will invalidate Live Activity background assertion after timeout.", &v5, 0xCu);
  }

  [(SNAAssertion *)self->_liveActivityAssertion invalidate];
  liveActivityAssertion = self->_liveActivityAssertion;
  self->_liveActivityAssertion = 0;
}

- (void)_takeBackgroundRunningAssertionIfNeeded
{
  v15 = *MEMORY[0x277D85DE8];
  if ([(HDAssertion *)self->_backgroundRunningAssertion state]!= 2)
  {
    mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
    if (([mEMORY[0x277CCDD30] isAppleWatch] & 1) != 0 || !self->_isBackgroundAssertionFeatureEnabled)
    {
    }

    else
    {
      isBacklightOn = self->_isBacklightOn;

      if (isBacklightOn)
      {
        client = [(HDWorkoutSessionServer *)self client];
        process = [client process];

        if (process)
        {
          WeakRetained = objc_loadWeakRetained(&self->super._profile);
          workoutManager = [WeakRetained workoutManager];
          v8 = [workoutManager takeRBSAssertionWithOwnerIdentifier:self->super._clientProcessBundleIdentifier assertionIdentifier:@"WorkoutSessionUpdate" pid:objc_msgSend(process explanation:{"processIdentifier"), @"Running mirrored workout session on iOS"}];
          backgroundRunningAssertion = self->_backgroundRunningAssertion;
          self->_backgroundRunningAssertion = v8;
        }

        else
        {
          _HKInitializeLogging();
          v10 = *MEMORY[0x277CCC330];
          if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
          {
            clientProcessBundleIdentifier = self->super._clientProcessBundleIdentifier;
            *buf = 138412290;
            v14 = clientProcessBundleIdentifier;
            _os_log_error_impl(&dword_228986000, v10, OS_LOG_TYPE_ERROR, "Background assertion not taken for client. No process found for identifier %@", buf, 0xCu);
          }
        }
      }
    }
  }
}

- (void)backlight:(id)backlight didCompleteUpdateToState:(int64_t)state forEvent:(id)event
{
  if (state)
  {
    self->_isBacklightOn = 1;
    [(HDMirroredWorkoutSessionServer *)self _takeBackgroundRunningAssertionIfNeeded:backlight];

    [(HDMirroredWorkoutSessionServer *)self _flushPendingData];
  }

  else
  {
    self->_isBacklightOn = 0;
    backgroundRunningAssertion = self->_backgroundRunningAssertion;

    [(HDAssertion *)backgroundRunningAssertion invalidate];
  }
}

- (void)_launchClientInTheBackgroundAndTakeBackgroundAssertionIfNeeded:(BOOL)needed
{
  if (needed && self->_isBackgroundAssertionFeatureEnabled && self->_isBacklightOn)
  {
    WeakRetained = objc_loadWeakRetained(&self->super._profile);
    daemon = [WeakRetained daemon];
    processStateManager = [daemon processStateManager];
    v7 = [processStateManager processIdentifierForApplicationIdentifier:self->super._clientProcessBundleIdentifier];

    if (v7 == -1)
    {
      [(HDAssertion *)self->_backgroundRunningAssertion invalidate];
      v8 = objc_loadWeakRetained(&self->super._profile);
      workoutManager = [v8 workoutManager];
      mirroringManager = [workoutManager mirroringManager];
      [mirroringManager launchClientWithBundleIdentifier:self->super._clientProcessBundleIdentifier];
    }

    [(HDMirroredWorkoutSessionServer *)self _takeBackgroundRunningAssertionIfNeeded];
  }

  else
  {
    v13 = objc_loadWeakRetained(&self->super._profile);
    workoutManager2 = [v13 workoutManager];
    mirroringManager2 = [workoutManager2 mirroringManager];
    [mirroringManager2 launchClientWithBundleIdentifier:self->super._clientProcessBundleIdentifier];
  }
}

@end