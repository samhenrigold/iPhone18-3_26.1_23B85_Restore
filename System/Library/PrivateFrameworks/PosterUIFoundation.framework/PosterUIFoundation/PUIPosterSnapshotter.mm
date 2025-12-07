@interface PUIPosterSnapshotter
+ (id)completionQueue;
- (BOOL)_assertionLock_mainQueue_updateAssertionsForExtension;
- (PUIPosterSnapshotter)initWithExtensionInstance:(id)instance;
- (PUIPosterSnapshotterDelegate)delegate;
- (id)extensionInfoString;
- (id)logIdentifier;
- (void)_assertionLock_invalidateSessionAssertions;
- (void)_assertionLock_mainQueue_updateAssertionsForExtension;
- (void)_lock_retryStartupLater;
- (void)_mainQueue_executeNextSnapshotIfPossible;
- (void)_mainQueue_extensionProcessDidInterrupt;
- (void)_mainQueue_lock_startExtension;
- (void)_teardownAllSnapshots;
- (void)dealloc;
- (void)enqueueSnapshotRequest:(id)request destinationProvider:(id)provider completion:(id)completion;
- (void)extensionInstanceDidInvalidate:(id)invalidate;
- (void)extensionInstanceProcessDidInterrupt:(id)interrupt;
- (void)fireSceneDeactivationErrorForTesting:(id)testing;
- (void)installRequestAsActive:(id)active completion:(id)completion;
- (void)invalidate;
- (void)sceneSnapshotterDidFinish:(id)finish result:(id)result error:(id)error;
- (void)sceneSnapshotterDidInvalidateScene:(id)scene didWaitForSceneInvalidation:(BOOL)invalidation forRequest:(id)request;
@end

@implementation PUIPosterSnapshotter

+ (id)completionQueue
{
  if (completionQueue_onceToken != -1)
  {
    +[PUIPosterSnapshotter completionQueue];
  }

  v3 = completionQueue_completionQueue;

  return v3;
}

void __39__PUIPosterSnapshotter_completionQueue__block_invoke()
{
  v0 = [MEMORY[0x1E698E698] serial];
  v4 = [v0 serviceClass:33 relativePriority:10];

  v1 = [v4 attributes];
  v2 = BSDispatchQueueCreateWithAttributes();
  v3 = completionQueue_completionQueue;
  completionQueue_completionQueue = v2;
}

- (void)dealloc
{
  [(PUIPosterSnapshotter *)self _teardownAllSnapshots];
  [(PFPosterExtensionInstance *)self->_extensionInstance removeInstanceObserver:self];
  [(PUIPosterSnapshotter *)self _assertionLock_invalidateSessionAssertions];
  v3.receiver = self;
  v3.super_class = PUIPosterSnapshotter;
  [(PUIPosterSnapshotter *)&v3 dealloc];
}

- (PUIPosterSnapshotter)initWithExtensionInstance:(id)instance
{
  instanceCopy = instance;
  if (!instanceCopy)
  {
    [PUIPosterSnapshotter initWithExtensionInstance:a2];
  }

  v7 = instanceCopy;
  v14.receiver = self;
  v14.super_class = PUIPosterSnapshotter;
  v8 = [(PUIPosterSnapshotter *)&v14 init];
  if (v8)
  {
    v9 = objc_opt_new();
    lock_enqueuedSnapshots = v8->_lock_enqueuedSnapshots;
    v8->_lock_enqueuedSnapshots = v9;

    v11 = objc_opt_new();
    invalidationSignal = v8->_invalidationSignal;
    v8->_invalidationSignal = v11;

    v8->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v8->_extensionInstance, instance);
    [v7 addInstanceObserver:v8];
  }

  return v8;
}

- (id)extensionInfoString
{
  extension = [(PFPosterExtensionInstance *)self->_extensionInstance extension];
  v4 = MEMORY[0x1E696AEC0];
  localizedName = [extension localizedName];
  instanceIdentifier = [(PFPosterExtensionInstance *)self->_extensionInstance instanceIdentifier];
  v7 = [v4 stringWithFormat:@"%@ id: %@", localizedName, instanceIdentifier];

  return v7;
}

- (id)logIdentifier
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  extensionInfoString = [(PUIPosterSnapshotter *)self extensionInfoString];
  [v3 appendString:extensionInfoString withName:@"extension"];

  build = [v3 build];

  return build;
}

- (void)enqueueSnapshotRequest:(id)request destinationProvider:(id)provider completion:(id)completion
{
  v43[2] = *MEMORY[0x1E69E9840];
  requestCopy = request;
  providerCopy = provider;
  completionCopy = completion;
  v11 = completionCopy;
  if (requestCopy)
  {
    v12 = [[_PUIPosterEnqueuedSnapshot alloc] initWithRequest:requestCopy destinationProvider:providerCopy completion:completionCopy];
    if ([(BSAtomicSignal *)self->_invalidationSignal hasBeenSignalled])
    {
      if (v11)
      {
        completionQueue = [objc_opt_class() completionQueue];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __78__PUIPosterSnapshotter_enqueueSnapshotRequest_destinationProvider_completion___block_invoke;
        block[3] = &unk_1E7854B48;
        v32 = v11;
        dispatch_async(completionQueue, block);
      }
    }

    else
    {
      os_unfair_lock_lock(&self->_lock);
      v16 = PUILogSnapshotter(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        logIdentifier = [(_PUIPosterEnqueuedSnapshot *)v12 logIdentifier];
        *buf = 138543618;
        selfCopy = self;
        v35 = 2114;
        v36 = logIdentifier;
        _os_log_impl(&dword_1A8C85000, v16, OS_LOG_TYPE_DEFAULT, "(%{public}@) adding snapshot to queue: %{public}@", buf, 0x16u);
      }

      [(NSMutableArray *)self->_lock_enqueuedSnapshots addObject:v12];
      lock_enqueuedSnapshots = self->_lock_enqueuedSnapshots;
      v19 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"priority" ascending:0];
      v43[0] = v19;
      v20 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"date" ascending:0];
      v43[1] = v20;
      v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:2];
      [(NSMutableArray *)lock_enqueuedSnapshots sortUsingDescriptors:v21];

      if (self->_lock_state)
      {
        v23 = PUILogSnapshotter(v22);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          logIdentifier2 = [(PUIPosterSnapshotter *)self logIdentifier];
          logIdentifier3 = [(_PUIPosterEnqueuedSnapshot *)v12 logIdentifier];
          v24 = self->_lock_state - 1;
          if (v24 > 3)
          {
            v25 = @"Idle";
          }

          else
          {
            v25 = off_1E7854C08[v24];
          }

          v28 = v25;
          v26 = [(NSMutableArray *)self->_lock_enqueuedSnapshots count];
          logIdentifier4 = [(PUIPosterSceneSnapshotter *)self->_lock_sceneSnapshotter logIdentifier];
          *buf = 138544386;
          selfCopy = logIdentifier2;
          v35 = 2114;
          v36 = logIdentifier3;
          v37 = 2114;
          v38 = v28;
          v39 = 2050;
          v40 = v26;
          v41 = 2114;
          v42 = logIdentifier4;
          _os_log_impl(&dword_1A8C85000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@: (%{public}@) Snapshot enqueued and waiting (state: %{public}@, queue length %{public}lu, current snapshot: %{public}@)", buf, 0x34u);
        }

        os_unfair_lock_unlock(&self->_lock);
      }

      else
      {
        self->_lock_state = 1;
        os_unfair_lock_unlock(&self->_lock);
        BSDispatchMain();
      }
    }

    goto LABEL_17;
  }

  if (completionCopy)
  {
    v12 = PFFunctionNameForAddress();
    v14 = PFGeneralErrorFromObjectWithLocalizedFailureReason();
    (v11)[2](v11, 0, v14);

LABEL_17:
  }
}

void __78__PUIPosterSnapshotter_enqueueSnapshotRequest_destinationProvider_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] pui_errorWithCode:5];
  (*(v1 + 16))(v1, 0, v2);
}

- (void)_mainQueue_executeNextSnapshotIfPossible
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *self - 1;
  if (v2 > 3)
  {
    v3 = @"Idle";
  }

  else
  {
    v3 = off_1E7854C08[v2];
  }

  v4 = 136315394;
  v5 = "[PUIPosterSnapshotter _mainQueue_executeNextSnapshotIfPossible]";
  v6 = 2114;
  v7 = v3;
  _os_log_error_impl(&dword_1A8C85000, a2, OS_LOG_TYPE_ERROR, "Snapshotter state error: shouldn't call %s in %{public}@ state", &v4, 0x16u);
}

- (void)_lock_retryStartupLater
{
  if (!self->_lock_waitingForRetry)
  {
    self->_lock_waitingForRetry = 1;
    objc_initWeak(&location, self);
    v2 = dispatch_time(0, 2000000000);
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __47__PUIPosterSnapshotter__lock_retryStartupLater__block_invoke;
    v3[3] = &unk_1E7854B70;
    objc_copyWeak(&v4, &location);
    dispatch_after(v2, MEMORY[0x1E69E96A0], v3);
    objc_destroyWeak(&v4);
    objc_destroyWeak(&location);
  }
}

void __47__PUIPosterSnapshotter__lock_retryStartupLater__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    os_unfair_lock_lock(WeakRetained + 8);
    LOBYTE(v2[16]._os_unfair_lock_opaque) = 0;
    os_unfair_lock_unlock(v2 + 8);
    [(os_unfair_lock_s *)v2 _mainQueue_executeNextSnapshotIfPossible];
    WeakRetained = v2;
  }
}

- (void)_teardownAllSnapshots
{
  v37 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  logIdentifier = [(PUIPosterSnapshotter *)self logIdentifier];
  v4 = PUILogSnapshotter(logIdentifier);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(NSMutableArray *)self->_lock_enqueuedSnapshots count];
    *buf = 138543618;
    v34 = logIdentifier;
    v35 = 2048;
    v36 = v5;
    _os_log_impl(&dword_1A8C85000, v4, OS_LOG_TYPE_DEFAULT, "(%{public}@) Tearing down %lu enqueued snapshots", buf, 0x16u);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v6 = self->_lock_enqueuedSnapshots;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v29;
    do
    {
      v10 = 0;
      do
      {
        if (*v29 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v28 + 1) + 8 * v10);
        completionQueue = [objc_opt_class() completionQueue];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __45__PUIPosterSnapshotter__teardownAllSnapshots__block_invoke;
        block[3] = &unk_1E78548A0;
        v26 = logIdentifier;
        v27 = v11;
        dispatch_async(completionQueue, block);

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v8);
  }

  removeAllObjects = [(NSMutableArray *)self->_lock_enqueuedSnapshots removeAllObjects];
  if (self->_lock_sceneSnapshotter)
  {
    v14 = PUILogSnapshotter(removeAllObjects);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v34 = logIdentifier;
      _os_log_impl(&dword_1A8C85000, v14, OS_LOG_TYPE_DEFAULT, "(%{public}@) Tearing down active scene snapshotter", buf, 0xCu);
    }

    [(PUIPosterSceneSnapshotter *)self->_lock_sceneSnapshotter setDelegate:0];
    snapshotInfo = [(PUIPosterSceneSnapshotter *)self->_lock_sceneSnapshotter snapshotInfo];
    completionQueue2 = [objc_opt_class() completionQueue];
    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = __45__PUIPosterSnapshotter__teardownAllSnapshots__block_invoke_39;
    v22 = &unk_1E78548A0;
    v23 = logIdentifier;
    v24 = snapshotInfo;
    v17 = snapshotInfo;
    dispatch_async(completionQueue2, &v19);

    [(PUIPosterSceneSnapshotter *)self->_lock_sceneSnapshotter invalidate:v19];
    lock_sceneSnapshotter = self->_lock_sceneSnapshotter;
    self->_lock_sceneSnapshotter = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
}

void __45__PUIPosterSnapshotter__teardownAllSnapshots__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = PUILogSnapshotter(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) logIdentifier];
    v7 = 138543618;
    v8 = v3;
    v9 = 2114;
    v10 = v4;
    _os_log_impl(&dword_1A8C85000, v2, OS_LOG_TYPE_DEFAULT, "(%{public}@) Invalidated on queue: %{public}@", &v7, 0x16u);
  }

  v5 = [*(a1 + 40) completion];
  if (v5)
  {
    v6 = [MEMORY[0x1E696ABC0] pui_errorWithCode:5];
    (v5)[2](v5, 0, v6);
  }

  [*(a1 + 40) invalidate];
}

void __45__PUIPosterSnapshotter__teardownAllSnapshots__block_invoke_39(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = PUILogSnapshotter(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) logIdentifier];
    v7 = 138543618;
    v8 = v3;
    v9 = 2114;
    v10 = v4;
    _os_log_impl(&dword_1A8C85000, v2, OS_LOG_TYPE_DEFAULT, "(%{public}@) Invalidated active scene snapshotter for: %{public}@", &v7, 0x16u);
  }

  v5 = [*(a1 + 40) completion];
  if (v5)
  {
    v6 = [MEMORY[0x1E696ABC0] pui_errorWithCode:5];
    (v5)[2](v5, 0, v6);
  }

  [*(a1 + 40) invalidate];
}

- (void)sceneSnapshotterDidFinish:(id)finish result:(id)result error:(id)error
{
  v27 = *MEMORY[0x1E69E9840];
  finishCopy = finish;
  resultCopy = result;
  errorCopy = error;
  BSDispatchQueueAssertMain();
  os_unfair_lock_lock(&self->_lock);
  snapshotInfo = [(PUIPosterSceneSnapshotter *)finishCopy snapshotInfo];
  v12 = snapshotInfo;
  if (resultCopy || (snapshotInfo = -[BSAtomicSignal hasBeenSignalled](self->_invalidationSignal, "hasBeenSignalled"), (snapshotInfo & 1) != 0) || (snapshotInfo = [v12 retryCount]) == 0)
  {
    v15 = PUILogSnapshotter(snapshotInfo);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      logIdentifier = [v12 logIdentifier];
      *buf = 138543618;
      selfCopy2 = self;
      v25 = 2114;
      v26 = logIdentifier;
      _os_log_impl(&dword_1A8C85000, v15, OS_LOG_TYPE_DEFAULT, "(%{public}@) scene snapshotter finished for: %{public}@", buf, 0x16u);
    }

    completion = [v12 completion];
    if (completion)
    {
      completionQueue = [objc_opt_class() completionQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __63__PUIPosterSnapshotter_sceneSnapshotterDidFinish_result_error___block_invoke;
      block[3] = &unk_1E7854720;
      v22 = completion;
      v20 = resultCopy;
      v21 = errorCopy;
      dispatch_async(completionQueue, block);
    }
  }

  else
  {
    v13 = PUILogSnapshotter(snapshotInfo);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      logIdentifier2 = [v12 logIdentifier];
      *buf = 138543618;
      selfCopy2 = self;
      v25 = 2114;
      v26 = logIdentifier2;
      _os_log_impl(&dword_1A8C85000, v13, OS_LOG_TYPE_DEFAULT, "(%{public}@) Retrying scene snapshotter for: %{public}@", buf, 0x16u);
    }

    [v12 setRetryCount:{objc_msgSend(v12, "retryCount") - 1}];
    [(NSMutableArray *)self->_lock_enqueuedSnapshots insertObject:v12 atIndex:0];
  }

  if (self->_lock_sceneSnapshotter == finishCopy)
  {
    self->_lock_state = 3;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)sceneSnapshotterDidInvalidateScene:(id)scene didWaitForSceneInvalidation:(BOOL)invalidation forRequest:(id)request
{
  v21 = *MEMORY[0x1E69E9840];
  sceneCopy = scene;
  requestCopy = request;
  os_unfair_lock_lock(&self->_lock);
  [(PUIPosterSceneSnapshotter *)sceneCopy setDelegate:0];
  completionQueue = [objc_opt_class() completionQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __98__PUIPosterSnapshotter_sceneSnapshotterDidInvalidateScene_didWaitForSceneInvalidation_forRequest___block_invoke;
  block[3] = &unk_1E7854B98;
  block[4] = self;
  invalidationCopy = invalidation;
  v11 = requestCopy;
  v17 = v11;
  dispatch_async(completionQueue, block);

  if (self->_lock_sceneSnapshotter == sceneCopy)
  {
    v13 = PUILogSnapshotter(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_1A8C85000, v13, OS_LOG_TYPE_DEFAULT, "(%{public}@) next in line!", buf, 0xCu);
    }

    lock_sceneSnapshotter = self->_lock_sceneSnapshotter;
    self->_lock_sceneSnapshotter = 0;

    self->_lock_state = 4;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __98__PUIPosterSnapshotter_sceneSnapshotterDidInvalidateScene_didWaitForSceneInvalidation_forRequest___block_invoke_40;
    v15[3] = &unk_1E7854320;
    v15[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], v15);
  }

  [(PUIPosterSceneSnapshotter *)sceneCopy invalidate];
  os_unfair_lock_unlock(&self->_lock);
}

void __98__PUIPosterSnapshotter_sceneSnapshotterDidInvalidateScene_didWaitForSceneInvalidation_forRequest___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 96));
  [WeakRetained snapshotterDidInvalidateScene:*(a1 + 32) didWaitForSceneInvalidation:*(a1 + 48) forRequest:*(a1 + 40)];
}

- (void)_mainQueue_lock_startExtension
{
  if (!self->_lock_waitingForStartExtension)
  {
    self->_lock_waitingForStartExtension = 1;
    lock_mainQueue_process = self->_lock_mainQueue_process;
    self->_lock_mainQueue_process = 0;

    mEMORY[0x1E69C51F0] = [MEMORY[0x1E69C51F0] sharedWorkloop];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __54__PUIPosterSnapshotter__mainQueue_lock_startExtension__block_invoke;
    block[3] = &unk_1E7854320;
    block[4] = self;
    dispatch_async(mEMORY[0x1E69C51F0], block);
  }
}

uint64_t __54__PUIPosterSnapshotter__mainQueue_lock_startExtension__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = PUILogSnapshotter(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138543362;
    v9 = v3;
    _os_log_impl(&dword_1A8C85000, v2, OS_LOG_TYPE_DEFAULT, "(%{public}@) Booting extension (if necessary)", buf, 0xCu);
  }

  v4 = *(a1 + 32);
  v5 = *(v4 + 88);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__PUIPosterSnapshotter__mainQueue_lock_startExtension__block_invoke_42;
  v7[3] = &unk_1E7854BE8;
  v7[4] = v4;
  return [v5 bootupExtensionInstance:v7];
}

void __54__PUIPosterSnapshotter__mainQueue_lock_startExtension__block_invoke_42(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = PUILogSnapshotter(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    *buf = 138543362;
    v15 = v8;
    _os_log_impl(&dword_1A8C85000, v7, OS_LOG_TYPE_DEFAULT, "(%{public}@) Booted extension", buf, 0xCu);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__PUIPosterSnapshotter__mainQueue_lock_startExtension__block_invoke_43;
  block[3] = &unk_1E7854BC0;
  block[4] = *(a1 + 32);
  v12 = v5;
  v13 = v6;
  v9 = v6;
  v10 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __54__PUIPosterSnapshotter__mainQueue_lock_startExtension__block_invoke_43(id *a1)
{
  v2 = (a1 + 4);
  if (([*(a1[4] + 9) hasBeenSignalled] & 1) == 0)
  {
    os_unfair_lock_lock(a1[4] + 8);
    *(a1[4] + 65) = 0;
    v3 = a1[5];
    if (v3)
    {
      v4 = [v3 isValid];
      if ((v4 & 1) == 0)
      {
        v5 = PUILogSnapshotter(v4);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          __54__PUIPosterSnapshotter__mainQueue_lock_startExtension__block_invoke_43_cold_1(v2, v5, v6, v7, v8, v9, v10, v11);
        }
      }

      objc_storeStrong(a1[4] + 6, a1[5]);
      os_unfair_lock_unlock(a1[4] + 8);
      [a1[4] _mainQueue_executeNextSnapshotIfPossible];
    }

    else
    {
      v12 = PUILogSnapshotter(0);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        __54__PUIPosterSnapshotter__mainQueue_lock_startExtension__block_invoke_43_cold_2();
      }

      v13 = [a1[6] domain];
      if ([v13 isEqualToString:*MEMORY[0x1E69C5228]])
      {
        v14 = [a1[6] code];

        if (v14 == 2)
        {
          os_unfair_lock_unlock(*v2 + 8);
          [(os_unfair_lock_s *)*v2 invalidate];
          return;
        }
      }

      else
      {
      }

      [(os_unfair_lock_s *)*v2 _lock_retryStartupLater];
      os_unfair_lock_unlock(*v2 + 8);
    }
  }
}

- (void)extensionInstanceProcessDidInterrupt:(id)interrupt
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __61__PUIPosterSnapshotter_extensionInstanceProcessDidInterrupt___block_invoke;
  v3[3] = &unk_1E7854B70;
  objc_copyWeak(&v4, &location);
  dispatch_async(MEMORY[0x1E69E96A0], v3);
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __61__PUIPosterSnapshotter_extensionInstanceProcessDidInterrupt___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _mainQueue_extensionProcessDidInterrupt];
}

- (void)_mainQueue_extensionProcessDidInterrupt
{
  v13 = *MEMORY[0x1E69E9840];
  logIdentifier = [self logIdentifier];
  v6 = logIdentifier;
  v7 = *a2 - 1;
  if (v7 > 3)
  {
    v8 = @"Idle";
  }

  else
  {
    v8 = off_1E7854C08[v7];
  }

  v9 = 138543618;
  v10 = logIdentifier;
  v11 = 2114;
  v12 = v8;
  _os_log_error_impl(&dword_1A8C85000, a3, OS_LOG_TYPE_ERROR, "(%{public}@) Extension process interrupted in state: %{public}@", &v9, 0x16u);
}

- (void)extensionInstanceDidInvalidate:(id)invalidate
{
  v12 = *MEMORY[0x1E69E9840];
  invalidateCopy = invalidate;
  v5 = PUILogSnapshotter(invalidateCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v10 = 2114;
    v11 = invalidateCopy;
    _os_log_impl(&dword_1A8C85000, v5, OS_LOG_TYPE_DEFAULT, "(%{public}@) PFPosterExtensionInstance did invalidate: %{public}@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__PUIPosterSnapshotter_extensionInstanceDidInvalidate___block_invoke;
  block[3] = &unk_1E7854B70;
  objc_copyWeak(&v7, buf);
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v7);
  objc_destroyWeak(buf);
}

void __55__PUIPosterSnapshotter_extensionInstanceDidInvalidate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained invalidate];
}

- (BOOL)_assertionLock_mainQueue_updateAssertionsForExtension
{
  v42 = *MEMORY[0x1E69E9840];
  if (([(BSAtomicSignal *)self->_invalidationSignal hasBeenSignalled]& 1) == 0)
  {
    v4 = self->_lock_mainQueue_process;
    v5 = MEMORY[0x1E69C7640];
    hostConfiguration = [(PFPosterExtensionInstance *)self->_extensionInstance hostConfiguration];
    rbsProcessIdentity = [hostConfiguration rbsProcessIdentity];
    v8 = [v5 targetWithProcessIdentity:rbsProcessIdentity];

    v9 = MEMORY[0x1E698E620];
    if (v4)
    {
      objc_msgSend_auditToken(v4);
    }

    else
    {
      *buf = 0u;
      v41 = 0u;
    }

    v10 = [v9 tokenFromAuditToken:buf];
    extension = [(PFPosterExtensionInstance *)self->_extensionInstance extension];
    posterExtensionBundleIdentifier = [extension posterExtensionBundleIdentifier];

    logIdentifier = [(PUIPosterSnapshotter *)self logIdentifier];
    v14 = logIdentifier;
    if (!v8)
    {
      v18 = PUILogSnapshotter(logIdentifier);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [(PUIPosterSnapshotter *)v14 _assertionLock_mainQueue_updateAssertionsForExtension:v18];
      }

      goto LABEL_27;
    }

    if (!-[RBSAssertion isValid](self->_assertionLock_memoryAssertion, "isValid") || (-[RBSAssertion target](self->_assertionLock_memoryAssertion, "target"), v15 = objc_claimAutoreleasedReturnValue(), v16 = [v15 isEqual:v8], v15, (v16 & 1) == 0))
    {
      [(RBSAssertion *)self->_assertionLock_memoryAssertion invalidate];
      assertionLock_memoryAssertion = self->_assertionLock_memoryAssertion;
      self->_assertionLock_memoryAssertion = 0;

      v18 = [MEMORY[0x1E69C7548] pf_posterUpdateRuntimeAssertionForTarget:v8 explanation:v14];
      v39 = 0;
      v19 = [v18 acquireWithError:&v39];
      v20 = v39;
      v21 = PUILogSnapshotter(v20);
      v22 = v21;
      if ((v19 & 1) == 0)
      {
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          [PUIPosterSnapshotter _assertionLock_mainQueue_updateAssertionsForExtension];
        }

LABEL_26:

LABEL_27:
        v3 = 0;
LABEL_28:

        goto LABEL_29;
      }

      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        *&buf[4] = v14;
        _os_log_impl(&dword_1A8C85000, v22, OS_LOG_TYPE_DEFAULT, "(%{public}@) Snapshot acquired memory assertion", buf, 0xCu);
      }

      v23 = self->_assertionLock_memoryAssertion;
      self->_assertionLock_memoryAssertion = v18;
      v24 = v18;
    }

    if ([(RBSAssertion *)self->_assertionLock_runtimeAssertion isValid])
    {
      target = [(RBSAssertion *)self->_assertionLock_runtimeAssertion target];
      v26 = [target isEqual:v8];

      if (v26)
      {
        v3 = 1;
LABEL_29:

        return v3;
      }
    }

    [(RBSAssertion *)self->_assertionLock_runtimeAssertion invalidate];
    assertionLock_runtimeAssertion = self->_assertionLock_runtimeAssertion;
    self->_assertionLock_runtimeAssertion = 0;

    v18 = [MEMORY[0x1E69C7548] pui_posterRuntimeAssertionForTarget:v8 explanation:v14 sceneType:@"PosterKit.rendering" auditToken:v10 posterProviderBundleIdentifier:posterExtensionBundleIdentifier];
    v38 = 0;
    v34 = [v18 acquireWithError:&v38];
    v20 = v38;
    v35 = PUILogSnapshotter(v20);
    v22 = v35;
    if (v34)
    {
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        *&buf[4] = v14;
        _os_log_impl(&dword_1A8C85000, v22, OS_LOG_TYPE_DEFAULT, "(%{public}@) Snapshot acquired runtime assertion", buf, 0xCu);
      }

      v36 = self->_assertionLock_runtimeAssertion;
      self->_assertionLock_runtimeAssertion = v18;
      v18 = v18;

      v3 = 1;
      goto LABEL_28;
    }

    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      [PUIPosterSnapshotter _assertionLock_mainQueue_updateAssertionsForExtension];
    }

    goto LABEL_26;
  }

  return 0;
}

- (void)_assertionLock_invalidateSessionAssertions
{
  [(RBSAssertion *)self->_assertionLock_memoryAssertion invalidate];
  assertionLock_memoryAssertion = self->_assertionLock_memoryAssertion;
  self->_assertionLock_memoryAssertion = 0;

  [(RBSAssertion *)self->_assertionLock_runtimeAssertion invalidate];
  assertionLock_runtimeAssertion = self->_assertionLock_runtimeAssertion;
  self->_assertionLock_runtimeAssertion = 0;
}

- (void)invalidate
{
  v8 = *MEMORY[0x1E69E9840];
  signal = [(BSAtomicSignal *)self->_invalidationSignal signal];
  if (signal)
  {
    v4 = PUILogSnapshotter(signal);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_1A8C85000, v4, OS_LOG_TYPE_DEFAULT, "PUIPosterSnapshotter invalidate: %{public}@", &v6, 0xCu);
    }

    [(PUIPosterSnapshotter *)self _teardownAllSnapshots];
    [(PFPosterExtensionInstance *)self->_extensionInstance removeInstanceObserver:self];
    extensionInstance = self->_extensionInstance;
    self->_extensionInstance = 0;

    os_unfair_lock_lock(&self->_assertionLock);
    [(PUIPosterSnapshotter *)self _assertionLock_invalidateSessionAssertions];
    os_unfair_lock_unlock(&self->_assertionLock);
  }
}

- (void)installRequestAsActive:(id)active completion:(id)completion
{
  activeCopy = active;
  completionCopy = completion;
  if ((MEMORY[0x1AC5764B0]("[PUIPosterSnapshotter installRequestAsActive:completion:]") & 1) == 0)
  {
    [PUIPosterSnapshotter installRequestAsActive:a2 completion:?];
  }

  if (!activeCopy)
  {
    [PUIPosterSnapshotter installRequestAsActive:a2 completion:?];
  }

  if (!completionCopy)
  {
    [PUIPosterSnapshotter installRequestAsActive:a2 completion:?];
  }

  if (!self->_extensionInstance)
  {
    [PUIPosterSnapshotter installRequestAsActive:a2 completion:?];
  }

  if (self->_lock_sceneSnapshotter)
  {
    [PUIPosterSnapshotter installRequestAsActive:a2 completion:?];
  }

  BSDispatchQueueAssertMain();
  v8 = [[_PUIPosterEnqueuedSnapshot alloc] initWithRequest:activeCopy destinationProvider:0 completion:completionCopy];
  [(_PUIPosterEnqueuedSnapshot *)v8 setRetryCount:0];
  v9 = [[PUIPosterSceneSnapshotter alloc] initWithExtensionInstance:self->_extensionInstance snapshotInfo:v8];
  [(PUIPosterSceneSnapshotter *)v9 setDelegate:self];
  os_unfair_lock_lock(&self->_lock);
  lock_sceneSnapshotter = self->_lock_sceneSnapshotter;
  self->_lock_sceneSnapshotter = v9;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)fireSceneDeactivationErrorForTesting:(id)testing
{
  testingCopy = testing;
  if ((MEMORY[0x1AC5764B0]("[PUIPosterSnapshotter fireSceneDeactivationErrorForTesting:]") & 1) == 0)
  {
    [PUIPosterSnapshotter fireSceneDeactivationErrorForTesting:a2];
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__PUIPosterSnapshotter_fireSceneDeactivationErrorForTesting___block_invoke;
  v7[3] = &unk_1E78548A0;
  v7[4] = self;
  v8 = testingCopy;
  v6 = testingCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

void __61__PUIPosterSnapshotter_fireSceneDeactivationErrorForTesting___block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 32));
  [*(*(a1 + 32) + 40) fireSceneDeactivationErrorForTesting:*(a1 + 40)];
  v2 = (*(a1 + 32) + 32);

  os_unfair_lock_unlock(v2);
}

- (PUIPosterSnapshotterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithExtensionInstance:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"extensionInstance"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1A8C85000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void __54__PUIPosterSnapshotter__mainQueue_lock_startExtension__block_invoke_43_cold_1(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138543362;
  *(&v8 + 4) = *a1;
  OUTLINED_FUNCTION_5(&dword_1A8C85000, a2, a3, "(%{public}@) Booted extension process is invalid but there was no error!", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)_assertionLock_mainQueue_updateAssertionsForExtension
{
  LODWORD(v8) = 138543362;
  *(&v8 + 4) = self;
  OUTLINED_FUNCTION_5(&dword_1A8C85000, a2, a3, "(%{public}@) Snapshotter has no target", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)installRequestAsActive:(char *)a1 completion:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_BSIsInternalInstall(__PRETTY_FUNCTION__)"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1A8C85000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)installRequestAsActive:(char *)a1 completion:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"self->_lock_sceneSnapshotter == nil"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1A8C85000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)installRequestAsActive:(char *)a1 completion:.cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_extensionInstance"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1A8C85000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)installRequestAsActive:(char *)a1 completion:.cold.4(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"completion"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1A8C85000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)installRequestAsActive:(char *)a1 completion:.cold.5(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"request"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1A8C85000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)fireSceneDeactivationErrorForTesting:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_BSIsInternalInstall(__PRETTY_FUNCTION__)"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1A8C85000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end