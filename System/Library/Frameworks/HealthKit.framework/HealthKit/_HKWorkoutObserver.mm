@interface _HKWorkoutObserver
- (NSString)description;
- (_HKWorkoutObserver)initWithHealthStore:(id)store reportInactiveSessions:(BOOL)sessions;
- (_HKWorkoutObserverDelegate)delegate;
- (id)exportedInterface;
- (id)remoteInterface;
- (void)_lock_startTaskServerIfNeeded;
- (void)_startTaskServerIfNeeded;
- (void)clientRemote_didUpdateWorkoutSnapshot:(id)snapshot;
- (void)connectionInterrupted;
- (void)currentWorkoutSnapshotWithCompletion:(id)completion;
- (void)dealloc;
- (void)setDelegate:(id)delegate;
- (void)waitForAutomaticWorkoutRecoveryWithCompletion:(id)completion;
@end

@implementation _HKWorkoutObserver

- (_HKWorkoutObserver)initWithHealthStore:(id)store reportInactiveSessions:(BOOL)sessions
{
  sessionsCopy = sessions;
  location[3] = *MEMORY[0x1E69E9840];
  storeCopy = store;
  v25.receiver = self;
  v25.super_class = _HKWorkoutObserver;
  v8 = [(_HKWorkoutObserver *)&v25 init];
  v10 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_healthStore, store);
    v11 = objc_alloc_init(MEMORY[0x1E696AD10]);
    lock = v10->_lock;
    v10->_lock = v11;

    uUID = [MEMORY[0x1E696AFB0] UUID];
    identifier = v10->_identifier;
    v10->_identifier = uUID;

    v10->_reportInactiveSessions = sessionsCopy;
    v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
    pendingHandlers = v10->_pendingHandlers;
    v10->_pendingHandlers = v15;

    v17 = [[HKTaskServerProxyProvider alloc] initWithHealthStore:v10->_healthStore taskIdentifier:@"_HKWorkoutObserverServerIdentifier" exportedObject:v10 taskUUID:v10->_identifier];
    proxyProvider = v10->_proxyProvider;
    v10->_proxyProvider = v17;

    v19 = objc_alloc_init(_HKWorkoutObserverConfiguration);
    configuration = v10->_configuration;
    v10->_configuration = v19;

    [(_HKWorkoutObserverConfiguration *)v10->_configuration setReportInactiveSessions:sessionsCopy];
    [(HKTaskServerProxyProvider *)v10->_proxyProvider setTaskConfiguration:v10->_configuration];
    objc_initWeak(location, v10);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __65___HKWorkoutObserver_initWithHealthStore_reportInactiveSessions___block_invoke;
    v23[3] = &unk_1E7378500;
    objc_copyWeak(&v24, location);
    [(HKProxyProvider *)v10->_proxyProvider setAutomaticProxyReconnectionHandler:v23];
    [(_HKWorkoutObserver *)v10 _startTaskServerIfNeeded];
    objc_destroyWeak(&v24);
    objc_destroyWeak(location);
  }

  _HKInitializeLogging(v8, v9);
  v21 = HKLogWorkouts;
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(location[0]) = 138543362;
    *(location + 4) = v10;
    _os_log_impl(&dword_19197B000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@: Workout Observer created", location, 0xCu);
  }

  return v10;
}

- (void)dealloc
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = notify_cancel(self->_notifyToken);
  _HKInitializeLogging(v3, v4);
  v5 = HKLogWorkouts;
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_19197B000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Workout Observer dealloc", buf, 0xCu);
  }

  v6.receiver = self;
  v6.super_class = _HKWorkoutObserver;
  [(_HKWorkoutObserver *)&v6 dealloc];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  hk_shortRepresentation = [(NSUUID *)self->_identifier hk_shortRepresentation];
  v7 = [v3 stringWithFormat:@"%@_%@", v5, hk_shortRepresentation];

  return v7;
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  lock = self->_lock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __34___HKWorkoutObserver_setDelegate___block_invoke;
  v7[3] = &unk_1E7378400;
  v7[4] = self;
  v8 = delegateCopy;
  v6 = delegateCopy;
  [(NSLock *)lock hk_withLock:v7];
}

- (_HKWorkoutObserverDelegate)delegate
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__2;
  v10 = __Block_byref_object_dispose__2;
  v11 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __30___HKWorkoutObserver_delegate__block_invoke;
  v5[3] = &unk_1E7378528;
  v5[4] = self;
  v5[5] = &v6;
  [(NSLock *)lock hk_withLock:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)currentWorkoutSnapshotWithCompletion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __59___HKWorkoutObserver_currentWorkoutSnapshotWithCompletion___block_invoke;
  aBlock[3] = &unk_1E7378550;
  aBlock[4] = self;
  v11 = completionCopy;
  v5 = _Block_copy(aBlock);
  lock = self->_lock;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __59___HKWorkoutObserver_currentWorkoutSnapshotWithCompletion___block_invoke_3;
  v8[3] = &unk_1E73765F0;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  [(NSLock *)lock hk_withLock:v8];
}

- (void)waitForAutomaticWorkoutRecoveryWithCompletion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __68___HKWorkoutObserver_waitForAutomaticWorkoutRecoveryWithCompletion___block_invoke;
  aBlock[3] = &unk_1E73765F0;
  aBlock[4] = self;
  v13 = completionCopy;
  v5 = _Block_copy(aBlock);
  proxyProvider = self->_proxyProvider;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __68___HKWorkoutObserver_waitForAutomaticWorkoutRecoveryWithCompletion___block_invoke_3;
  v10[3] = &unk_1E7378578;
  v11 = v5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __68___HKWorkoutObserver_waitForAutomaticWorkoutRecoveryWithCompletion___block_invoke_4;
  v8[3] = &unk_1E7376820;
  v8[4] = self;
  v9 = v11;
  v7 = v11;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v10 errorHandler:v8];
}

- (id)exportedInterface
{
  v2 = objc_opt_class();

  return [v2 clientInterface];
}

- (id)remoteInterface
{
  v2 = objc_opt_class();

  return [v2 serverInterface];
}

- (void)connectionInterrupted
{
  lock = self->_lock;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __43___HKWorkoutObserver_connectionInterrupted__block_invoke;
  v3[3] = &unk_1E7376780;
  v3[4] = self;
  [(NSLock *)lock hk_withLock:v3];
}

- (void)clientRemote_didUpdateWorkoutSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3032000000;
  v19[3] = __Block_byref_object_copy__2;
  v19[4] = __Block_byref_object_dispose__2;
  v20 = 0;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x3032000000;
  v17[3] = __Block_byref_object_copy__2;
  v17[4] = __Block_byref_object_dispose__2;
  v18 = 0;
  lock = self->_lock;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __60___HKWorkoutObserver_clientRemote_didUpdateWorkoutSnapshot___block_invoke;
  v13[3] = &unk_1E73785A0;
  v13[4] = self;
  v6 = snapshotCopy;
  v14 = v6;
  v15 = v17;
  v16 = v19;
  [(NSLock *)lock hk_withLock:v13];
  clientQueue = [(HKHealthStore *)self->_healthStore clientQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60___HKWorkoutObserver_clientRemote_didUpdateWorkoutSnapshot___block_invoke_2;
  block[3] = &unk_1E73785C8;
  v10 = v6;
  v11 = v17;
  v12 = v19;
  v8 = v6;
  dispatch_async(clientQueue, block);

  _Block_object_dispose(v17, 8);
  _Block_object_dispose(v19, 8);
}

- (void)_startTaskServerIfNeeded
{
  lock = self->_lock;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __46___HKWorkoutObserver__startTaskServerIfNeeded__block_invoke;
  v3[3] = &unk_1E7376780;
  v3[4] = self;
  [(NSLock *)lock hk_withLock:v3];
}

- (void)_lock_startTaskServerIfNeeded
{
  self->_receivedInitialSnapshot = 0;
  latestSnapshot = self->_latestSnapshot;
  self->_latestSnapshot = 0;

  v4 = [(NSUUID *)self->_identifier copy];
  proxyProvider = self->_proxyProvider;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51___HKWorkoutObserver__lock_startTaskServerIfNeeded__block_invoke_2;
  v7[3] = &unk_1E7376898;
  v8 = v4;
  v6 = v4;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:&__block_literal_global_5 errorHandler:v7];
}

@end