@interface HMDSyncOperationManager
+ (id)logCategory;
- (BOOL)addCloudPostFetchOperationIfNonePresent:(id)present;
- (BOOL)addCloudQueryDatabaseOperationIfNonePresent:(id)present;
- (BOOL)addCloudZoneFetchOperation:(id)operation delay:(double)delay;
- (BOOL)addCloudZonePushOperation:(id)operation delay:(double)delay;
- (BOOL)dropCloudPostFetchOperationsIfPresent;
- (BOOL)popCloudZoneFetchOperationAndMoveQueueToEnd:(id *)end;
- (HMDSyncOperationManager)initWithClientQueue:(id)queue dataSource:(id)source timerFactory:(id)factory;
- (HMDSyncOperationManagerDataSource)dataSource;
- (HMDSyncOperationQueue)cloudFetchOperations;
- (HMDSyncOperationQueue)cloudPushOperations;
- (NSArray)cloudCancelPauseOperations;
- (NSArray)cloudPostFetchOperations;
- (NSArray)cloudQueryDatabaseOperations;
- (NSArray)cloudVerifyAccountOperations;
- (NSArray)cloudZonePushOperationQueues;
- (NSString)description;
- (id)_dequeueNextOperation;
- (id)cloudZoneFetchOperations;
- (id)dumpState;
- (id)popCloudCancelPauseOperation;
- (id)popCloudPostFetchOperation;
- (id)popCloudQueryDatabaseOperation;
- (id)popCloudVerifyAccountOperation;
- (id)popCloudZonePushOperationAndMoveQueueToEnd;
- (void)_dropWithoutAlreadyScheduledOperation:(id)operation;
- (void)_handleCancelledOperations:(id)operations;
- (void)_handleNextOperation;
- (void)_reportPossibleSyncLoop;
- (void)addCloudCancelPauseOperation:(id)operation;
- (void)addCloudVerifyAccountOperation:(id)operation;
- (void)addOperation:(id)operation withDelay:(double)delay;
- (void)addOperationRespectingOptions:(id)options withDelay:(double)delay;
- (void)cancelOperations;
- (void)kick;
- (void)pause;
- (void)pauseAndWaitForCurrentOperationCompletion:(id)completion;
- (void)pauseCloudPush;
- (void)removeCloudZoneFetchOperationQueue:(id)queue;
- (void)removeCloudZonePushOperationQueue:(id)queue;
- (void)resetCloudPushTimer:(id)timer;
- (void)resume;
- (void)resumeCloudPush;
- (void)timerDidFire:(id)fire;
@end

@implementation HMDSyncOperationManager

- (HMDSyncOperationManagerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (void)timerDidFire:(id)fire
{
  fireCopy = fire;
  workQueue = [(HMDSyncOperationManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__HMDSyncOperationManager_timerDidFire___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = fireCopy;
  v6 = fireCopy;
  dispatch_async(workQueue, v7);
}

void __40__HMDSyncOperationManager_timerDidFire___block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) cloudFetchOperations];
  v3 = [v2 processFiredTimer:*(a1 + 40)];

  v4 = *(a1 + 32);
  if (v3)
  {
LABEL_4:

    [v4 _handleNextOperation];
    return;
  }

  v5 = [v4 cloudPushOperations];
  v6 = [v5 processFiredTimer:*(a1 + 40)];

  if (v6)
  {
    v4 = *(a1 + 32);
    goto LABEL_4;
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v7 = [*(a1 + 32) cloudZoneFetchOperations];
  v8 = objc_msgSend_copy(v7);

  v9 = [v8 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v33;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v33 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v32 + 1) + 8 * i);
        v14 = *(a1 + 40);
        v15 = [v13 backoffTimer];
        v16 = v15;
        if (v14 == v15)
        {
          v17 = [v13 countTotal];

          if (!v17)
          {
            [v13 processFiredTimer:*(a1 + 40)];
            [*(a1 + 32) removeCloudZoneFetchOperationQueue:v13];
            goto LABEL_33;
          }
        }

        else
        {
        }

        if ([v13 processFiredTimer:*(a1 + 40)])
        {
LABEL_30:
          [*(a1 + 32) _handleNextOperation];
          goto LABEL_33;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v32 objects:v37 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v18 = [*(a1 + 32) cloudZonePushOperationQueues];
  v8 = objc_msgSend_copy(v18);

  v19 = [v8 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v29;
    while (2)
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v29 != v21)
        {
          objc_enumerationMutation(v8);
        }

        v23 = *(*(&v28 + 1) + 8 * j);
        v24 = *(a1 + 40);
        v25 = [v23 backoffTimer];
        v26 = v25;
        if (v24 == v25)
        {
          v27 = [v23 countTotal];

          if (!v27)
          {
            [v23 processFiredTimer:*(a1 + 40)];
            [*(a1 + 32) removeCloudZonePushOperationQueue:v23];
            goto LABEL_33;
          }
        }

        else
        {
        }

        if ([v23 processFiredTimer:*(a1 + 40)])
        {
          goto LABEL_30;
        }
      }

      v20 = [v8 countByEnumeratingWithState:&v28 objects:v36 count:16];
      if (v20)
      {
        continue;
      }

      break;
    }
  }

LABEL_33:
}

- (void)resetCloudPushTimer:(id)timer
{
  timerCopy = timer;
  workQueue = [(HMDSyncOperationManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__HMDSyncOperationManager_resetCloudPushTimer___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = timerCopy;
  v6 = timerCopy;
  dispatch_async(workQueue, v7);
}

void __47__HMDSyncOperationManager_resetCloudPushTimer___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    *buf = 138543362;
    v21 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Resetting cloud upload timer", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = [*(a1 + 32) cloudPushOperations];
  [v6 resetBackoffTimer];

  if (*(a1 + 40))
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = [*(a1 + 32) cloudZonePushOperationQueues];
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          v13 = *(a1 + 40);
          v14 = [v12 name];
          LODWORD(v13) = [v13 isEqualToString:v14];

          if (v13)
          {
            [v12 resetBackoffTimer];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }
  }
}

- (void)resumeCloudPush
{
  workQueue = [(HMDSyncOperationManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__HMDSyncOperationManager_resumeCloudPush__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __42__HMDSyncOperationManager_resumeCloudPush__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) pauseCloudPushLevel] >= 1)
  {
    [*(a1 + 32) setPauseCloudPushLevel:{objc_msgSend(*(a1 + 32), "pauseCloudPushLevel") - 1}];
  }

  v2 = [*(a1 + 32) pauseCloudPushLevel];
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  v5 = HMFGetOSLogHandle();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (v2 < 1)
  {
    if (v6)
    {
      v9 = HMFGetLogIdentifier();
      v10 = 138543362;
      v11 = v9;
      _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Resuming cloud push queue", &v10, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    [*(a1 + 32) _handleNextOperation];
  }

  else
  {
    if (v6)
    {
      v7 = HMFGetLogIdentifier();
      v8 = [*(a1 + 32) pauseCloudPushLevel];
      v10 = 138543618;
      v11 = v7;
      v12 = 2048;
      v13 = v8;
      _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Cloud push queue is still paused because push level is %tu", &v10, 0x16u);
    }

    objc_autoreleasePoolPop(v3);
  }
}

- (void)pauseCloudPush
{
  workQueue = [(HMDSyncOperationManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__HMDSyncOperationManager_pauseCloudPush__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __41__HMDSyncOperationManager_pauseCloudPush__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setPauseCloudPushLevel:{objc_msgSend(*(a1 + 32), "pauseCloudPushLevel") + 1}];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 32) pauseCloudPushLevel];
    v7 = 138543618;
    v8 = v5;
    v9 = 2048;
    v10 = v6;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Pausing cloud push queue, level is %tu", &v7, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
}

- (void)kick
{
  workQueue = [(HMDSyncOperationManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__HMDSyncOperationManager_kick__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)resume
{
  workQueue = [(HMDSyncOperationManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__HMDSyncOperationManager_resume__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(workQueue, block);
}

uint64_t __33__HMDSyncOperationManager_resume__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setPauseQueue:0];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Resuming sync manager queue", &v7, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  return [*(a1 + 32) _handleNextOperation];
}

- (void)pause
{
  workQueue = [(HMDSyncOperationManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__HMDSyncOperationManager_pause__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __32__HMDSyncOperationManager_pause__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setPauseQueue:1];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = 138543362;
    v7 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Pausing sync manager queue", &v6, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
}

- (void)_handleCancelledOperations:(id)operations
{
  operationsCopy = operations;
  workQueue = [(HMDSyncOperationManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__HMDSyncOperationManager__handleCancelledOperations___block_invoke;
  v7[3] = &unk_27868A750;
  v8 = operationsCopy;
  selfCopy = self;
  v6 = operationsCopy;
  dispatch_async(workQueue, v7);
}

void __54__HMDSyncOperationManager__handleCancelledOperations___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v15;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v15 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v14 + 1) + 8 * i);
        v7 = objc_autoreleasePoolPush();
        v8 = *(a1 + 40);
        v9 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v10 = HMFGetLogIdentifier();
          *buf = 138543618;
          v19 = v10;
          v20 = 2114;
          v21 = v6;
          _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Cancelling sync operation %{public}@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v7);
        v11 = [*(a1 + 40) clientQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __54__HMDSyncOperationManager__handleCancelledOperations___block_invoke_177;
        block[3] = &unk_27868A750;
        block[4] = *(a1 + 40);
        block[5] = v6;
        dispatch_async(v11, block);
      }

      v3 = [obj countByEnumeratingWithState:&v14 objects:v22 count:16];
    }

    while (v3);
  }
}

void __54__HMDSyncOperationManager__handleCancelledOperations___block_invoke_177(uint64_t a1)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __54__HMDSyncOperationManager__handleCancelledOperations___block_invoke_2;
  v5[3] = &unk_27868A1D8;
  v6 = *(a1 + 32);
  v2 = _Block_copy(v5);
  v3 = [*(a1 + 40) operationBlock];
  v4 = [*(a1 + 40) options];
  (v3)[2](v3, v2, v4, 1);
}

void __54__HMDSyncOperationManager__handleCancelledOperations___block_invoke_2(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [*(a1 + 40) identifier];
    *buf = 138543618;
    v20 = v7;
    v21 = 2114;
    v22 = v8;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Sync operation %{public}@ cancelled", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v9 = [*(a1 + 40) operationCompletions];
  v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v9);
        }

        (*(*(*(&v14 + 1) + 8 * v13++) + 16))();
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }

  [*(a1 + 40) removeAllOperationCompletions];
}

- (void)_handleNextOperation
{
  v33 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDSyncOperationManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  _dequeueNextOperation = [(HMDSyncOperationManager *)self _dequeueNextOperation];
  if (_dequeueNextOperation)
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543618;
      v30 = v8;
      v31 = 2114;
      v32 = _dequeueNextOperation;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Starting sync operation %{public}@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    logger = selfCopy->_logger;
    if (os_signpost_enabled(logger))
    {
      v10 = logger;
      zoneName = [_dequeueNextOperation zoneName];
      identifier = [_dequeueNextOperation identifier];
      *buf = 138412546;
      v30 = zoneName;
      v31 = 2112;
      v32 = identifier;
      _os_signpost_emit_with_name_impl(&dword_229538000, v10, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SyncOperation", "zone=%{signpost.description:attribute}@ identifier=%{signpost.description:attribute}@ ", buf, 0x16u);
    }

    [(HMDSyncOperationManager *)selfCopy setCurrentOperation:_dequeueNextOperation];
    v13 = dispatch_group_create();
    dispatch_group_enter(v13);
    clientQueue = [(HMDSyncOperationManager *)selfCopy clientQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__HMDSyncOperationManager__handleNextOperation__block_invoke;
    block[3] = &unk_27868A750;
    v15 = v13;
    v27 = v15;
    v16 = _dequeueNextOperation;
    v28 = v16;
    dispatch_async(clientQueue, block);

    v17 = objc_autoreleasePoolPush();
    v18 = selfCopy;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = HMFGetLogIdentifier();
      identifier2 = [v16 identifier];
      *buf = 138543618;
      v30 = v20;
      v31 = 2114;
      v32 = identifier2;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@Waiting for sync operation %{public}@ to complete", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    workQueue2 = [(HMDSyncOperationManager *)v18 workQueue];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __47__HMDSyncOperationManager__handleNextOperation__block_invoke_176;
    v23[3] = &unk_278685DF8;
    v23[4] = v18;
    v24 = v16;
    v25 = 0xEEEEB0B5B2B2EEEELL;
    dispatch_group_notify(v15, workQueue2, v23);
  }
}

void __47__HMDSyncOperationManager__handleNextOperation__block_invoke(uint64_t a1)
{
  v5 = MEMORY[0x277D85DD0];
  v6 = 3221225472;
  v7 = __47__HMDSyncOperationManager__handleNextOperation__block_invoke_2;
  v8 = &unk_27868A1D8;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v2 = _Block_copy(&v5);
  v3 = [*(a1 + 40) operationBlock];
  v4 = [*(a1 + 40) options];
  (v3)[2](v3, v2, v4, 0);
}

uint64_t __47__HMDSyncOperationManager__handleNextOperation__block_invoke_176(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 40) identifier];
    v11 = 138543618;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Sync operation %@ completed", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = *(*(a1 + 32) + 80);
  v8 = v7;
  v9 = *(a1 + 48);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    LOWORD(v11) = 0;
    _os_signpost_emit_with_name_impl(&dword_229538000, v8, OS_SIGNPOST_INTERVAL_END, v9, "SyncOperation", "", &v11, 2u);
  }

  [*(a1 + 32) setCurrentOperation:0];
  return [*(a1 + 32) _handleNextOperation];
}

void __47__HMDSyncOperationManager__handleNextOperation__block_invoke_2(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  dispatch_group_leave(*(a1 + 32));
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = [*(a1 + 40) operationCompletions];
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

        (*(*(*(&v9 + 1) + 8 * v8++) + 16))();
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }

  [*(a1 + 40) removeAllOperationCompletions];
}

- (id)_dequeueNextOperation
{
  v44 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDSyncOperationManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  currentOperation = [(HMDSyncOperationManager *)self currentOperation];

  if (!currentOperation)
  {
    dataSource = [(HMDSyncOperationManager *)self dataSource];
    isCloudAccountActive = [dataSource isCloudAccountActive];
    zoneFetchFailed = [dataSource zoneFetchFailed];
    legacyZoneHasRecordsAvailable = [dataSource legacyZoneHasRecordsAvailable];
    if ([(HMDSyncOperationManager *)self pauseQueue])
    {
      v15 = objc_autoreleasePoolPush();
      selfCopy = self;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = HMFGetLogIdentifier();
        *buf = 138543362;
        v41 = v18;
        _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Cannot dequeue operation because sync manager queue is paused", buf, 0xCu);
      }

      nextOperation = 0;
LABEL_14:

      objc_autoreleasePoolPop(v15);
      goto LABEL_15;
    }

    popCloudCancelPauseOperation = [(HMDSyncOperationManager *)self popCloudCancelPauseOperation];
    if (popCloudCancelPauseOperation)
    {
      goto LABEL_11;
    }

    popCloudCancelPauseOperation = [(HMDSyncOperationManager *)self popCloudQueryDatabaseOperation];
    if (popCloudCancelPauseOperation)
    {
      goto LABEL_11;
    }

    if (![dataSource isNetworkConnectionAvailable])
    {
      goto LABEL_34;
    }

    popCloudCancelPauseOperation = [(HMDSyncOperationManager *)self popCloudVerifyAccountOperation];
    if (!popCloudCancelPauseOperation)
    {
      cloudFetchOperations = [(HMDSyncOperationManager *)self cloudFetchOperations];
      countTotal = [cloudFetchOperations countTotal];

      if (countTotal)
      {
        cloudFetchOperations2 = [(HMDSyncOperationManager *)self cloudFetchOperations];
        v26 = [cloudFetchOperations2 count];

        if (v26)
        {
          cloudFetchOperations3 = [(HMDSyncOperationManager *)self cloudFetchOperations];
LABEL_23:
          v28 = cloudFetchOperations3;
          nextOperation = [cloudFetchOperations3 nextOperation];

          goto LABEL_12;
        }

        goto LABEL_34;
      }

      if (!isCloudAccountActive)
      {
        v31 = objc_autoreleasePoolPush();
        selfCopy3 = self;
        v33 = HMFGetOSLogHandle();
        if (!os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
        {
LABEL_33:

          objc_autoreleasePoolPop(v31);
          goto LABEL_34;
        }

        v34 = HMFGetLogIdentifier();
        *buf = 138543362;
        v41 = v34;
        v35 = "%{public}@Cannot dequeue as no active account";
LABEL_32:
        _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_DEBUG, v35, buf, 0xCu);

        goto LABEL_33;
      }

      if (!legacyZoneHasRecordsAvailable)
      {
        if (zoneFetchFailed)
        {
          goto LABEL_34;
        }

        goto LABEL_36;
      }

      v39 = 0;
      v29 = [(HMDSyncOperationManager *)self popCloudZoneFetchOperationAndMoveQueueToEnd:&v39];
      v30 = v39;
      nextOperation = v30;
      if (v29)
      {
        if (v30)
        {
          goto LABEL_12;
        }

        v31 = objc_autoreleasePoolPush();
        selfCopy3 = self;
        v33 = HMFGetOSLogHandle();
        if (!os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_33;
        }

        v34 = HMFGetLogIdentifier();
        *buf = 138543362;
        v41 = v34;
        v35 = "%{public}@Waiting for delayed fetches to finish.";
        goto LABEL_32;
      }

      popCloudPostFetchOperation = [(HMDSyncOperationManager *)self popCloudPostFetchOperation];

      if (popCloudPostFetchOperation)
      {
        nextOperation = popCloudPostFetchOperation;
LABEL_12:
        v15 = objc_autoreleasePoolPush();
        selfCopy4 = self;
        v17 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v21 = HMFGetLogIdentifier();
          *buf = 138543618;
          v41 = v21;
          v42 = 2114;
          v43 = nextOperation;
          _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Dequeued operation to process %{public}@", buf, 0x16u);
        }

        goto LABEL_14;
      }

      if ([(HMDSyncOperationManager *)self pauseCloudPushLevel]> 0 || ([(HMDSyncOperationManager *)self popCloudZonePushOperationAndMoveQueueToEnd], (popCloudCancelPauseOperation = objc_claimAutoreleasedReturnValue()) == 0))
      {
        cloudPushOperations = [(HMDSyncOperationManager *)self cloudPushOperations];
        if (![cloudPushOperations count])
        {

          goto LABEL_34;
        }

        v38 = [(HMDSyncOperationManager *)self pauseCloudPushLevel]> 0;

        if ((v38 | zoneFetchFailed))
        {
LABEL_34:
          nextOperation = 0;
          goto LABEL_12;
        }

LABEL_36:
        cloudFetchOperations3 = [(HMDSyncOperationManager *)self cloudPushOperations];
        goto LABEL_23;
      }
    }

LABEL_11:
    nextOperation = popCloudCancelPauseOperation;
    goto LABEL_12;
  }

  v5 = objc_autoreleasePoolPush();
  selfCopy5 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    currentOperation2 = [(HMDSyncOperationManager *)selfCopy5 currentOperation];
    *buf = 138543618;
    v41 = v8;
    v42 = 2112;
    v43 = currentOperation2;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Already executing operation %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  nextOperation = 0;
LABEL_15:

  return nextOperation;
}

- (void)cancelOperations
{
  workQueue = [(HMDSyncOperationManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__HMDSyncOperationManager_cancelOperations__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __43__HMDSyncOperationManager_cancelOperations__block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    *buf = 138543362;
    v36 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Cancelling all unprocessed sync operation", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = [MEMORY[0x277CBEB18] array];
  v7 = *(a1 + 32);
  os_unfair_lock_lock_with_options();
  [v6 addObjectsFromArray:*(*(a1 + 32) + 16)];
  [*(*(a1 + 32) + 16) removeAllObjects];
  v8 = [*(*(a1 + 32) + 104) operationsToCancel];
  [v6 addObjectsFromArray:v8];

  v9 = [*(*(a1 + 32) + 96) operationsToCancel];
  [v6 addObjectsFromArray:v9];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v10 = *(*(a1 + 32) + 24);
  v11 = [v10 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v11)
  {
    v12 = *v30;
    do
    {
      v13 = 0;
      do
      {
        if (*v30 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = [*(*(&v29 + 1) + 8 * v13) operationsToCancel];
        [v6 addObjectsFromArray:v14];

        ++v13;
      }

      while (v11 != v13);
      v11 = [v10 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v11);
  }

  [*(*(a1 + 32) + 24) removeAllObjects];
  [*(*(a1 + 32) + 64) removeAllObjects];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v15 = *(*(a1 + 32) + 32);
  v16 = [v15 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v16)
  {
    v17 = *v26;
    do
    {
      v18 = 0;
      do
      {
        if (*v26 != v17)
        {
          objc_enumerationMutation(v15);
        }

        v19 = [*(*(&v25 + 1) + 8 * v18) operationsToCancel];
        [v6 addObjectsFromArray:v19];

        ++v18;
      }

      while (v16 != v18);
      v16 = [v15 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v16);
  }

  [*(*(a1 + 32) + 32) removeAllObjects];
  [*(*(a1 + 32) + 72) removeAllObjects];
  [v6 addObjectsFromArray:*(*(a1 + 32) + 56)];
  [*(*(a1 + 32) + 56) removeAllObjects];
  os_unfair_lock_unlock(v7 + 2);
  v20 = [*(a1 + 32) cloudPushDelayTimer];
  [v20 cancel];

  [*(a1 + 32) setCloudPushDelayTimer:0];
  v21 = objc_autoreleasePoolPush();
  v22 = *(a1 + 32);
  v23 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    v24 = HMFGetLogIdentifier();
    *buf = 138543362;
    v36 = v24;
    _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_INFO, "%{public}@Cancelling all sync operations, resuming cloud push queue", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v21);
  [*(a1 + 32) setPauseCloudPushLevel:0];
  [*(a1 + 32) _handleCancelledOperations:v6];
}

- (void)pauseAndWaitForCurrentOperationCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __69__HMDSyncOperationManager_pauseAndWaitForCurrentOperationCompletion___block_invoke;
  aBlock[3] = &unk_27867B308;
  objc_copyWeak(&v10, &location);
  v5 = completionCopy;
  v9 = v5;
  v6 = _Block_copy(aBlock);
  v7 = [HMDSyncOperation cancelOperationWithBlock:v6];
  [(HMDSyncOperationManager *)self addOperation:v7];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __69__HMDSyncOperationManager_pauseAndWaitForCurrentOperationCompletion___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained pause];
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))();
  }

  if (v6)
  {
    v6[2](v6, 0);
  }
}

- (void)addOperationRespectingOptions:(id)options withDelay:(double)delay
{
  optionsCopy = options;
  if (optionsCopy)
  {
    workQueue = [(HMDSyncOperationManager *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __67__HMDSyncOperationManager_addOperationRespectingOptions_withDelay___block_invoke;
    block[3] = &unk_278685DF8;
    block[4] = self;
    v9 = optionsCopy;
    delayCopy = delay;
    dispatch_async(workQueue, block);
  }
}

uint64_t __67__HMDSyncOperationManager_addOperationRespectingOptions_withDelay___block_invoke(uint64_t a1)
{
  v142 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    *buf = 138543618;
    v139 = v5;
    v140 = 2112;
    v141 = v6;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_DEBUG, "%{public}@Will attempt to add operation %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  if ([*(a1 + 40) operationType] == 1 || objc_msgSend(*(a1 + 40), "operationType") == 2)
  {
    v7 = [*(a1 + 32) cloudPushOperations];
    v8 = [v7 backoffTimer];

    if (v8)
    {
      v9 = objc_autoreleasePoolPush();
      v10 = *(a1 + 32);
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = HMFGetLogIdentifier();
        v13 = MEMORY[0x277CCABB0];
        v14 = [*(a1 + 32) cloudPushOperations];
        v15 = [v14 backoffTimer];
        [v15 timeInterval];
        v16 = [v13 numberWithDouble:?];
        *buf = 138543618;
        v139 = v12;
        v140 = 2114;
        v141 = v16;
        _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Current push delay is: %{public}@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v9);
    }

    v17 = [*(a1 + 32) cloudPushOperations];
    v18 = [v17 isInMaximumTimeInterval];

    if (v18)
    {
      v19 = objc_autoreleasePoolPush();
      v20 = *(a1 + 32);
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = HMFGetLogIdentifier();
        *buf = 138543362;
        v139 = v22;
        _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@Scheduling legacy push at maximum time interval, maybe in a sync loop", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v19);
      [*(a1 + 32) _reportPossibleSyncLoop];
    }

    v23 = [*(a1 + 32) dataSource];
    v24 = [v23 legacyZoneHasRecordsAvailable];

    if (!v24)
    {
      v38 = objc_autoreleasePoolPush();
      v39 = *(a1 + 32);
      v40 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        v41 = HMFGetLogIdentifier();
        v42 = *(a1 + 40);
        *buf = 138543618;
        v139 = v41;
        v140 = 2114;
        v141 = v42;
        _os_log_impl(&dword_229538000, v40, OS_LOG_TYPE_INFO, "%{public}@Staging cloud push operation %{public}@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v38);
      v26 = [*(a1 + 32) cloudPushOperations];
      [v26 stageOperation:*(a1 + 40)];
      goto LABEL_37;
    }

    v134 = 0u;
    v135 = 0u;
    v132 = 0u;
    v133 = 0u;
    v25 = [*(a1 + 32) cloudPushOperations];
    v26 = [v25 allOperations];

    v27 = [v26 countByEnumeratingWithState:&v132 objects:v137 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v133;
LABEL_16:
      v30 = 0;
      while (1)
      {
        if (*v133 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = *(*(&v132 + 1) + 8 * v30);
        if ([v31 operationType] == 2)
        {
          break;
        }

        if (v28 == ++v30)
        {
          v28 = [v26 countByEnumeratingWithState:&v132 objects:v137 count:16];
          if (v28)
          {
            goto LABEL_16;
          }

          goto LABEL_22;
        }
      }

      v48 = objc_autoreleasePoolPush();
      v49 = *(a1 + 32);
      v50 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
      {
        goto LABEL_36;
      }

      v51 = HMFGetLogIdentifier();
      *buf = 138543362;
      v139 = v51;
      v52 = "%{public}@Unprocessed cloud force push operation in queue, dropping new push operation";
      v53 = v50;
      v54 = 12;
      goto LABEL_35;
    }

LABEL_22:

    v32 = objc_autoreleasePoolPush();
    v33 = *(a1 + 32);
    v34 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      v35 = HMFGetLogIdentifier();
      v36 = *(a1 + 40);
      *buf = 138543618;
      v139 = v35;
      v140 = 2114;
      v141 = v36;
      _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_INFO, "%{public}@Adding cloud push operation %{public}@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v32);
    v37 = [*(a1 + 32) cloudPushOperations];
LABEL_25:
    v26 = v37;
    [v37 addOperation:*(a1 + 40) withDelay:*(a1 + 48)];
    goto LABEL_37;
  }

  if ([*(a1 + 40) operationType] == 3)
  {
    v43 = objc_autoreleasePoolPush();
    v44 = *(a1 + 32);
    v45 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
    {
      v46 = HMFGetLogIdentifier();
      v47 = *(a1 + 40);
      *buf = 138543618;
      v139 = v46;
      v140 = 2114;
      v141 = v47;
      _os_log_impl(&dword_229538000, v45, OS_LOG_TYPE_INFO, "%{public}@Adding cloud verify account operation %{public}@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v43);
    [*(a1 + 32) addCloudVerifyAccountOperation:*(a1 + 40)];
    return [*(a1 + 32) _handleNextOperation];
  }

  if ([*(a1 + 40) operationType] != 4)
  {
    v75 = [*(a1 + 40) operationType];
    v76 = *(a1 + 40);
    if (v75 == 5)
    {
      v26 = [v76 zoneName];
      v77 = objc_autoreleasePoolPush();
      v78 = *(a1 + 32);
      v79 = HMFGetOSLogHandle();
      v80 = v79;
      if (v26)
      {
        if (os_log_type_enabled(v79, OS_LOG_TYPE_INFO))
        {
          v81 = HMFGetLogIdentifier();
          v82 = *(a1 + 40);
          *buf = 138543618;
          v139 = v81;
          v140 = 2114;
          v141 = v82;
          _os_log_impl(&dword_229538000, v80, OS_LOG_TYPE_INFO, "%{public}@Adding cloud zone push operation %{public}@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v77);
        if ([*(a1 + 32) addCloudZonePushOperation:*(a1 + 40) delay:*(a1 + 48)])
        {
          v83 = objc_autoreleasePoolPush();
          v84 = *(a1 + 32);
          v85 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
          {
            v86 = HMFGetLogIdentifier();
            v87 = [*(a1 + 40) zoneName];
            *buf = 138543618;
            v139 = v86;
            v140 = 2114;
            v141 = v87;
            _os_log_impl(&dword_229538000, v85, OS_LOG_TYPE_ERROR, "%{public}@Scheduling zone %{public}@ push at maximum time interval, maybe in a sync loop", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v83);
          [*(a1 + 32) _reportPossibleSyncLoop];
        }

        goto LABEL_37;
      }

      if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
      {
        v99 = HMFGetLogIdentifier();
        v100 = *(a1 + 40);
        *buf = 138543618;
        v139 = v99;
        v140 = 2114;
        v141 = v100;
        v101 = "%{public}@Cannot add operation to zone push without a zoneName %{public}@";
LABEL_90:
        _os_log_impl(&dword_229538000, v80, OS_LOG_TYPE_ERROR, v101, buf, 0x16u);

        goto LABEL_91;
      }

      goto LABEL_91;
    }

    v89 = [v76 operationType];
    v90 = *(a1 + 40);
    if (v89 == 6)
    {
      v26 = [v90 zoneName];
      v77 = objc_autoreleasePoolPush();
      v78 = *(a1 + 32);
      v91 = HMFGetOSLogHandle();
      v80 = v91;
      if (v26)
      {
        if (os_log_type_enabled(v91, OS_LOG_TYPE_INFO))
        {
          v92 = HMFGetLogIdentifier();
          v93 = *(a1 + 40);
          *buf = 138543618;
          v139 = v92;
          v140 = 2114;
          v141 = v93;
          _os_log_impl(&dword_229538000, v80, OS_LOG_TYPE_INFO, "%{public}@Adding cloud zone fetch operation %{public}@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v77);
        [*(a1 + 32) addCloudZoneFetchOperation:*(a1 + 40) delay:*(a1 + 48)];
        goto LABEL_37;
      }

      if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
      {
        v99 = HMFGetLogIdentifier();
        v117 = *(a1 + 40);
        *buf = 138543618;
        v139 = v99;
        v140 = 2114;
        v141 = v117;
        v101 = "%{public}@Cannot add operation to zone fetch without a zoneName %{public}@";
        goto LABEL_90;
      }

LABEL_91:

      objc_autoreleasePoolPop(v77);
      [*(a1 + 32) _dropWithoutAlreadyScheduledOperation:*(a1 + 40)];
      goto LABEL_37;
    }

    if ([v90 operationType] == 7)
    {
      v94 = objc_autoreleasePoolPush();
      v95 = *(a1 + 32);
      v96 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v96, OS_LOG_TYPE_INFO))
      {
        v97 = HMFGetLogIdentifier();
        v98 = *(a1 + 40);
        *buf = 138543618;
        v139 = v97;
        v140 = 2112;
        v141 = v98;
        _os_log_impl(&dword_229538000, v96, OS_LOG_TYPE_INFO, "%{public}@Adding cloud cancel pause operation %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v94);
      [*(a1 + 32) addCloudCancelPauseOperation:*(a1 + 40)];
      return [*(a1 + 32) _handleNextOperation];
    }

    if ([*(a1 + 40) operationType] == 8)
    {
      v102 = objc_autoreleasePoolPush();
      v103 = *(a1 + 32);
      v104 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v104, OS_LOG_TYPE_INFO))
      {
        v105 = HMFGetLogIdentifier();
        v106 = *(a1 + 40);
        *buf = 138543618;
        v139 = v105;
        v140 = 2114;
        v141 = v106;
        _os_log_impl(&dword_229538000, v104, OS_LOG_TYPE_INFO, "%{public}@Adding cloud query database operation %{public}@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v102);
      if (([*(a1 + 32) addCloudQueryDatabaseOperationIfNonePresent:*(a1 + 40)] & 1) == 0)
      {
        v107 = objc_autoreleasePoolPush();
        v108 = *(a1 + 32);
        v109 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v109, OS_LOG_TYPE_INFO))
        {
          v110 = HMFGetLogIdentifier();
          v111 = *(a1 + 40);
          *buf = 138543618;
          v139 = v110;
          v140 = 2114;
          v141 = v111;
          _os_log_impl(&dword_229538000, v109, OS_LOG_TYPE_INFO, "%{public}@Already have a query operation scheduled, dropping operation %{public}@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v107);
        [*(a1 + 32) _dropWithoutAlreadyScheduledOperation:*(a1 + 40)];
      }

      if (![*(a1 + 32) dropCloudPostFetchOperationsIfPresent])
      {
        return [*(a1 + 32) _handleNextOperation];
      }

      v112 = objc_autoreleasePoolPush();
      v113 = *(a1 + 32);
      v114 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v114, OS_LOG_TYPE_INFO))
      {
        v115 = HMFGetLogIdentifier();
        v116 = [*(a1 + 32) cloudPostFetchOperations];
        *buf = 138543618;
        v139 = v115;
        v140 = 2114;
        v141 = v116;
        _os_log_impl(&dword_229538000, v114, OS_LOG_TYPE_INFO, "%{public}@Dropping post fetch because new query was added: %{public}@", buf, 0x16u);

LABEL_101:
      }
    }

    else
    {
      v118 = [*(a1 + 40) operationType];
      v112 = objc_autoreleasePoolPush();
      v113 = *(a1 + 32);
      v119 = HMFGetOSLogHandle();
      v114 = v119;
      if (v118 == 9)
      {
        if (os_log_type_enabled(v119, OS_LOG_TYPE_INFO))
        {
          v120 = HMFGetLogIdentifier();
          v121 = *(a1 + 40);
          *buf = 138543618;
          v139 = v120;
          v140 = 2114;
          v141 = v121;
          _os_log_impl(&dword_229538000, v114, OS_LOG_TYPE_INFO, "%{public}@Adding cloud post fetch operation %{public}@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v112);
        if (([*(a1 + 32) addCloudPostFetchOperationIfNonePresent:*(a1 + 40)] & 1) == 0)
        {
          v122 = objc_autoreleasePoolPush();
          v123 = *(a1 + 32);
          v124 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v124, OS_LOG_TYPE_INFO))
          {
            v125 = HMFGetLogIdentifier();
            v126 = *(a1 + 40);
            *buf = 138543618;
            v139 = v125;
            v140 = 2114;
            v141 = v126;
            _os_log_impl(&dword_229538000, v124, OS_LOG_TYPE_INFO, "%{public}@Already have a post fetch operation scheduled, dropping operation %{public}@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v122);
          [*(a1 + 32) _dropWithoutAlreadyScheduledOperation:*(a1 + 40)];
        }

        return [*(a1 + 32) _handleNextOperation];
      }

      if (os_log_type_enabled(v119, OS_LOG_TYPE_ERROR))
      {
        v115 = HMFGetLogIdentifier();
        v127 = *(a1 + 40);
        *buf = 138543618;
        v139 = v115;
        v140 = 2114;
        v141 = v127;
        _os_log_impl(&dword_229538000, v114, OS_LOG_TYPE_ERROR, "%{public}@Unknown sync operation type, dropping %{public}@", buf, 0x16u);
        goto LABEL_101;
      }
    }

    objc_autoreleasePoolPop(v112);
    return [*(a1 + 32) _handleNextOperation];
  }

  v130 = 0u;
  v131 = 0u;
  v128 = 0u;
  v129 = 0u;
  v57 = [*(a1 + 32) cloudFetchOperations];
  v26 = [v57 allOperations];

  v58 = [v26 countByEnumeratingWithState:&v128 objects:v136 count:16];
  if (!v58)
  {
LABEL_54:

    v70 = objc_autoreleasePoolPush();
    v71 = *(a1 + 32);
    v72 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
    {
      v73 = HMFGetLogIdentifier();
      v74 = *(a1 + 40);
      *buf = 138543618;
      v139 = v73;
      v140 = 2114;
      v141 = v74;
      _os_log_impl(&dword_229538000, v72, OS_LOG_TYPE_INFO, "%{public}@Adding cloud fetch operation %{public}@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v70);
    v37 = [*(a1 + 32) cloudFetchOperations];
    goto LABEL_25;
  }

  v59 = v58;
  v60 = *v129;
LABEL_42:
  v61 = 0;
  while (1)
  {
    if (*v129 != v60)
    {
      objc_enumerationMutation(v26);
    }

    v31 = *(*(&v128 + 1) + 8 * v61);
    v62 = [*(a1 + 40) options];
    if (([v62 isCloudConflict] & 1) == 0)
    {
      break;
    }

    v63 = [v31 options];
    v64 = [v63 isCloudConflict];

    if (v64)
    {
      goto LABEL_49;
    }

    v65 = [*(a1 + 32) cloudFetchOperations];
    [v65 dropOperation:v31];

    v66 = *(a1 + 40);
    v67 = [v31 operationCompletions];
    [v66 updateOperationCompletionsWithArray:v67];
LABEL_50:

LABEL_52:
    if (v59 == ++v61)
    {
      v59 = [v26 countByEnumeratingWithState:&v128 objects:v136 count:16];
      if (v59)
      {
        goto LABEL_42;
      }

      goto LABEL_54;
    }
  }

LABEL_49:
  v67 = [*(a1 + 40) options];
  if ([v67 isCloudConflict])
  {
    goto LABEL_50;
  }

  v68 = [v31 options];
  v69 = [v68 isCloudConflict];

  if (!v69)
  {
    goto LABEL_52;
  }

  v48 = objc_autoreleasePoolPush();
  v49 = *(a1 + 32);
  v50 = HMFGetOSLogHandle();
  if (!os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
  {
    goto LABEL_36;
  }

  v51 = HMFGetLogIdentifier();
  v88 = *(a1 + 40);
  *buf = 138543618;
  v139 = v51;
  v140 = 2114;
  v141 = v88;
  v52 = "%{public}@Already have a legacy conflict fetch scheduled, dropping non-conflict fetch operation %{public}@";
  v53 = v50;
  v54 = 22;
LABEL_35:
  _os_log_impl(&dword_229538000, v53, OS_LOG_TYPE_INFO, v52, buf, v54);

LABEL_36:
  objc_autoreleasePoolPop(v48);
  v55 = [*(a1 + 40) operationCompletions];
  [v31 updateOperationCompletionsWithArray:v55];

LABEL_37:
  return [*(a1 + 32) _handleNextOperation];
}

- (void)_dropWithoutAlreadyScheduledOperation:(id)operation
{
  v15 = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  v4 = [MEMORY[0x277CCA9B8] hmErrorWithCode:23 description:@"Operation was dropped before it could run" reason:@"HMDSyncOperationManager dropped the operation" suggestion:0];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  operationCompletions = [operationCopy operationCompletions];
  v6 = [operationCompletions countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(operationCompletions);
        }

        (*(*(*(&v10 + 1) + 8 * v9++) + 16))();
      }

      while (v7 != v9);
      v7 = [operationCompletions countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)addOperation:(id)operation withDelay:(double)delay
{
  v18 = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  if (delay > 0.0)
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      identifier = [operationCopy identifier];
      uUIDString = [identifier UUIDString];
      v14 = 138543618;
      v15 = v10;
      v16 = 2112;
      v17 = uUIDString;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Adding operation delay, respect this delay: %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    options = [operationCopy options];
    [options setDelayRespected:1];
  }

  [(HMDSyncOperationManager *)self addOperationRespectingOptions:operationCopy withDelay:delay];
}

- (void)_reportPossibleSyncLoop
{
  v13 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDSyncOperationManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = +[HMDMetricsManager sharedLogEventSubmitter];
  v5 = +[HMDUploadMaximumDelayLogEvent uploadMaximumDelay];
  [v4 submitLogEvent:v5];

  if (isInternalBuild() && ![(HMDSyncOperationManager *)self wasSyncLoopDialogDisplayed])
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v9;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Presenting dialog about possible sync loop", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    [(HMDSyncOperationManager *)selfCopy setSyncLoopDialogDisplayed:1];
    v10 = +[HMDTTRManager sharedManager];
    [v10 requestRadarWithDisplayReason:@"maximum push delay was reached" radarTitle:@"HomeKit maximum push delay reached"];
  }
}

- (id)dumpState
{
  v67 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  os_unfair_lock_lock_with_options();
  v4 = [(HMDSyncOperationQueue *)self->_cloudPushOperations description];
  [array addObject:v4];

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v5 = self->_cloudVerifyAccountOperations;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v57 objects:v66 count:16];
  if (v6)
  {
    v7 = *v58;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v58 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = [*(*(&v57 + 1) + 8 * i) description];
        [array addObject:v9];
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v57 objects:v66 count:16];
    }

    while (v6);
  }

  v10 = [(HMDSyncOperationQueue *)self->_cloudFetchOperations description];
  [array addObject:v10];

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v11 = self->_cloudZonePushOperationQueues;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v53 objects:v65 count:16];
  if (v12)
  {
    v13 = *v54;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v54 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = [*(*(&v53 + 1) + 8 * j) description];
        [array addObject:v15];
      }

      v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v53 objects:v65 count:16];
    }

    while (v12);
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v16 = self->_cloudZoneFetchOperationQueues;
  v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v49 objects:v64 count:16];
  if (v17)
  {
    v18 = *v50;
    do
    {
      for (k = 0; k != v17; ++k)
      {
        if (*v50 != v18)
        {
          objc_enumerationMutation(v16);
        }

        v20 = [*(*(&v49 + 1) + 8 * k) description];
        [array addObject:v20];
      }

      v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v49 objects:v64 count:16];
    }

    while (v17);
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v21 = self->_cloudCancelPauseOperations;
  v22 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v45 objects:v63 count:16];
  if (v22)
  {
    v23 = *v46;
    do
    {
      for (m = 0; m != v22; ++m)
      {
        if (*v46 != v23)
        {
          objc_enumerationMutation(v21);
        }

        v25 = [*(*(&v45 + 1) + 8 * m) description];
        [array addObject:v25];
      }

      v22 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v45 objects:v63 count:16];
    }

    while (v22);
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v26 = self->_cloudQueryDatabaseOperations;
  v27 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v41 objects:v62 count:16];
  if (v27)
  {
    v28 = *v42;
    do
    {
      for (n = 0; n != v27; ++n)
      {
        if (*v42 != v28)
        {
          objc_enumerationMutation(v26);
        }

        v30 = [*(*(&v41 + 1) + 8 * n) description];
        [array addObject:v30];
      }

      v27 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v41 objects:v62 count:16];
    }

    while (v27);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v31 = self->_cloudPostFetchOperations;
  v32 = [(NSMutableArray *)v31 countByEnumeratingWithState:&v37 objects:v61 count:16];
  if (v32)
  {
    v33 = *v38;
    do
    {
      for (ii = 0; ii != v32; ++ii)
      {
        if (*v38 != v33)
        {
          objc_enumerationMutation(v31);
        }

        v35 = [*(*(&v37 + 1) + 8 * ii) description];
        [array addObject:v35];
      }

      v32 = [(NSMutableArray *)v31 countByEnumeratingWithState:&v37 objects:v61 count:16];
    }

    while (v32);
  }

  os_unfair_lock_unlock(&self->_lock);

  return array;
}

- (NSString)description
{
  os_unfair_lock_lock_with_options();
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"<%@, Push Operations = %@, Verify Account Operations = %@, Fetch Operations = %@, Zone Push = %@, Zone Fetch = %@, Cancel = %@, Query = %@>, Post Fetch = %@", objc_opt_class(), self->_cloudPushOperations, self->_cloudVerifyAccountOperations, self->_cloudFetchOperations, self->_cloudZonePushOperationQueues, self->_cloudZoneFetchOperationQueues, self->_cloudCancelPauseOperations, self->_cloudQueryDatabaseOperations, self->_cloudPostFetchOperations];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)popCloudPostFetchOperation
{
  os_unfair_lock_lock_with_options();
  if ([(NSMutableArray *)self->_cloudPostFetchOperations count])
  {
    v3 = [(NSMutableArray *)self->_cloudPostFetchOperations objectAtIndex:0];
    [(NSMutableArray *)self->_cloudPostFetchOperations removeObjectAtIndex:0];
  }

  else
  {
    v3 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (BOOL)dropCloudPostFetchOperationsIfPresent
{
  v15 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock_with_options();
  v3 = [(NSMutableArray *)self->_cloudPostFetchOperations count];
  if (v3)
  {
    v4 = objc_msgSend_copy(self->_cloudPostFetchOperations);
    [(NSMutableArray *)self->_cloudPostFetchOperations removeAllObjects];
  }

  else
  {
    v4 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v5);
        }

        [(HMDSyncOperationManager *)self _dropWithoutAlreadyScheduledOperation:*(*(&v10 + 1) + 8 * i), v10];
      }

      v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v3 != 0;
}

- (BOOL)addCloudPostFetchOperationIfNonePresent:(id)present
{
  presentCopy = present;
  os_unfair_lock_lock_with_options();
  v5 = [(NSMutableArray *)self->_cloudPostFetchOperations count];
  if (!v5)
  {
    [(NSMutableArray *)self->_cloudPostFetchOperations addObject:presentCopy];
  }

  os_unfair_lock_unlock(&self->_lock);

  return v5 == 0;
}

- (id)popCloudQueryDatabaseOperation
{
  os_unfair_lock_lock_with_options();
  if ([(NSMutableArray *)self->_cloudQueryDatabaseOperations count])
  {
    v3 = [(NSMutableArray *)self->_cloudQueryDatabaseOperations objectAtIndex:0];
    [(NSMutableArray *)self->_cloudQueryDatabaseOperations removeObjectAtIndex:0];
  }

  else
  {
    v3 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (BOOL)addCloudQueryDatabaseOperationIfNonePresent:(id)present
{
  presentCopy = present;
  os_unfair_lock_lock_with_options();
  v5 = [(NSMutableArray *)self->_cloudQueryDatabaseOperations count];
  if (!v5)
  {
    [(NSMutableArray *)self->_cloudQueryDatabaseOperations addObject:presentCopy];
  }

  os_unfair_lock_unlock(&self->_lock);

  return v5 == 0;
}

- (id)popCloudCancelPauseOperation
{
  os_unfair_lock_lock_with_options();
  if ([(NSMutableArray *)self->_cloudCancelPauseOperations count])
  {
    v3 = [(NSMutableArray *)self->_cloudCancelPauseOperations objectAtIndex:0];
    [(NSMutableArray *)self->_cloudCancelPauseOperations removeObjectAtIndex:0];
  }

  else
  {
    v3 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)addCloudCancelPauseOperation:(id)operation
{
  operationCopy = operation;
  os_unfair_lock_lock_with_options();
  [(NSMutableArray *)self->_cloudCancelPauseOperations addObject:operationCopy];
  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)popCloudZoneFetchOperationAndMoveQueueToEnd:(id *)end
{
  v21 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock_with_options();
  v5 = objc_msgSend_copy(self->_cloudZoneFetchOperationQueues);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v5;
  v7 = 0;
  v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = *v17;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [v11 countTotal] != 0;
        nextOperation = [v11 nextOperation];
        v7 |= v12;
        *end = nextOperation;
        if (nextOperation)
        {
          [(NSMutableArray *)self->_cloudZoneFetchOperationQueues removeObject:v11];
          if ([v11 countTotal] < 1)
          {
            name = [v11 name];
            [(NSMutableDictionary *)self->_cloudZoneFetchOperationQueuesMap setObject:0 forKeyedSubscript:name];
          }

          else
          {
            [(NSMutableArray *)self->_cloudZoneFetchOperationQueues addObject:v11];
          }

          goto LABEL_13;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  os_unfair_lock_unlock(&self->_lock);
  return v7 & 1;
}

- (void)removeCloudZoneFetchOperationQueue:(id)queue
{
  queueCopy = queue;
  os_unfair_lock_lock_with_options();
  [(NSMutableArray *)self->_cloudZoneFetchOperationQueues removeObject:queueCopy];
  cloudZoneFetchOperationQueuesMap = self->_cloudZoneFetchOperationQueuesMap;
  name = [queueCopy name];
  [(NSMutableDictionary *)cloudZoneFetchOperationQueuesMap setObject:0 forKeyedSubscript:name];

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)addCloudZoneFetchOperation:(id)operation delay:(double)delay
{
  operationCopy = operation;
  zoneName = [operationCopy zoneName];
  os_unfair_lock_lock_with_options();
  v8 = [(NSMutableDictionary *)self->_cloudZoneFetchOperationQueuesMap objectForKeyedSubscript:zoneName];
  if (!v8)
  {
    v8 = [[HMDSyncOperationQueue alloc] initName:zoneName syncManager:self initialDelay:0 initialBackoff:0.0 hasBackoff:0.0];
    [(NSMutableArray *)self->_cloudZoneFetchOperationQueues addObject:v8];
    [(NSMutableDictionary *)self->_cloudZoneFetchOperationQueuesMap setObject:v8 forKeyedSubscript:zoneName];
  }

  [v8 addOperation:operationCopy withDelay:delay];
  os_unfair_lock_unlock(&self->_lock);

  return 0;
}

- (id)popCloudZonePushOperationAndMoveQueueToEnd
{
  v18 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock_with_options();
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = objc_msgSend_copy(self->_cloudZonePushOperationQueues, 0);
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = *v14;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        nextOperation = [v7 nextOperation];
        if (nextOperation)
        {
          [(NSMutableArray *)self->_cloudZonePushOperationQueues removeObject:v7];
          if ([v7 countTotal] <= 0 && (objc_msgSend(v7, "backoffTimer"), v9 = objc_claimAutoreleasedReturnValue(), v10 = v9 == 0, v9, v10))
          {
            name = [v7 name];
            [(NSMutableDictionary *)self->_cloudZonePushOperationQueuesMap setObject:0 forKeyedSubscript:name];
          }

          else
          {
            [(NSMutableArray *)self->_cloudZonePushOperationQueues addObject:v7];
          }

          goto LABEL_13;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  nextOperation = 0;
LABEL_13:

  os_unfair_lock_unlock(&self->_lock);

  return nextOperation;
}

- (void)removeCloudZonePushOperationQueue:(id)queue
{
  queueCopy = queue;
  os_unfair_lock_lock_with_options();
  [(NSMutableArray *)self->_cloudZonePushOperationQueues removeObject:queueCopy];
  cloudZonePushOperationQueuesMap = self->_cloudZonePushOperationQueuesMap;
  name = [queueCopy name];
  [(NSMutableDictionary *)cloudZonePushOperationQueuesMap setObject:0 forKeyedSubscript:name];

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)addCloudZonePushOperation:(id)operation delay:(double)delay
{
  operationCopy = operation;
  zoneName = [operationCopy zoneName];
  os_unfair_lock_lock_with_options();
  v8 = [(NSMutableDictionary *)self->_cloudZonePushOperationQueuesMap objectForKeyedSubscript:zoneName];
  if (v8)
  {
    isInMaximumTimeInterval = 0;
  }

  else
  {
    v10 = [HMDSyncOperationQueue alloc];
    v8 = [(HMDSyncOperationQueue *)v10 initName:zoneName syncManager:self initialDelay:1 initialBackoff:cloudZoneUploadTimerInitialInterval hasBackoff:cloudZoneUploadTimerInterval];
    [(NSMutableArray *)self->_cloudZonePushOperationQueues addObject:v8];
    [(NSMutableDictionary *)self->_cloudZonePushOperationQueuesMap setObject:v8 forKeyedSubscript:zoneName];
    isInMaximumTimeInterval = [v8 isInMaximumTimeInterval];
  }

  [v8 addOperation:operationCopy withDelay:delay];
  os_unfair_lock_unlock(&self->_lock);

  return isInMaximumTimeInterval;
}

- (id)popCloudVerifyAccountOperation
{
  os_unfair_lock_lock_with_options();
  if ([(NSMutableArray *)self->_cloudVerifyAccountOperations count])
  {
    v3 = [(NSMutableArray *)self->_cloudVerifyAccountOperations objectAtIndex:0];
    [(NSMutableArray *)self->_cloudVerifyAccountOperations removeObjectAtIndex:0];
  }

  else
  {
    v3 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)addCloudVerifyAccountOperation:(id)operation
{
  operationCopy = operation;
  os_unfair_lock_lock_with_options();
  [(NSMutableArray *)self->_cloudVerifyAccountOperations addObject:operationCopy];
  os_unfair_lock_unlock(&self->_lock);
}

- (NSArray)cloudPostFetchOperations
{
  os_unfair_lock_lock_with_options();
  v3 = objc_msgSend_copy(self->_cloudPostFetchOperations);
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSArray)cloudQueryDatabaseOperations
{
  os_unfair_lock_lock_with_options();
  v3 = objc_msgSend_copy(self->_cloudQueryDatabaseOperations);
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSArray)cloudCancelPauseOperations
{
  os_unfair_lock_lock_with_options();
  v3 = objc_msgSend_copy(self->_cloudCancelPauseOperations);
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)cloudZoneFetchOperations
{
  os_unfair_lock_lock_with_options();
  v3 = objc_msgSend_copy(self->_cloudZoneFetchOperationQueues);
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSArray)cloudZonePushOperationQueues
{
  os_unfair_lock_lock_with_options();
  v3 = objc_msgSend_copy(self->_cloudZonePushOperationQueues);
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (HMDSyncOperationQueue)cloudFetchOperations
{
  os_unfair_lock_lock_with_options();
  v3 = self->_cloudFetchOperations;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSArray)cloudVerifyAccountOperations
{
  os_unfair_lock_lock_with_options();
  v3 = objc_msgSend_copy(self->_cloudVerifyAccountOperations);
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (HMDSyncOperationQueue)cloudPushOperations
{
  os_unfair_lock_lock_with_options();
  v3 = self->_cloudPushOperations;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (HMDSyncOperationManager)initWithClientQueue:(id)queue dataSource:(id)source timerFactory:(id)factory
{
  queueCopy = queue;
  sourceCopy = source;
  factoryCopy = factory;
  v45.receiver = self;
  v45.super_class = HMDSyncOperationManager;
  v11 = [(HMDSyncOperationManager *)&v45 init];
  if (v11)
  {
    v12 = HMFGetOSLogHandle();
    logger = v11->_logger;
    v11->_logger = v12;

    v14 = HMDispatchQueueNameString();
    uTF8String = [v14 UTF8String];
    v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v17 = dispatch_queue_create(uTF8String, v16);
    workQueue = v11->_workQueue;
    v11->_workQueue = v17;

    v19 = queueCopy;
    if (!queueCopy)
    {
      v14 = HMDispatchQueueNameString();
      uTF8String2 = [v14 UTF8String];
      uTF8String = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v19 = dispatch_queue_create(uTF8String2, uTF8String);
    }

    objc_storeStrong(&v11->_clientQueue, v19);
    if (!queueCopy)
    {
    }

    objc_storeWeak(&v11->_dataSource, sourceCopy);
    v11->_lock._os_unfair_lock_opaque = 0;
    v21 = _Block_copy(factoryCopy);
    timerFactory = v11->_timerFactory;
    v11->_timerFactory = v21;

    v23 = [HMDSyncOperationQueue alloc];
    v24 = [(HMDSyncOperationQueue *)v23 initName:@"LegacyPush" syncManager:v11 initialDelay:1 initialBackoff:cloudUploadTimerInterval hasBackoff:cloudUploadTimerInterval];
    cloudPushOperations = v11->_cloudPushOperations;
    v11->_cloudPushOperations = v24;

    v11->_pauseCloudPushLevel = 0;
    array = [MEMORY[0x277CBEB18] array];
    cloudVerifyAccountOperations = v11->_cloudVerifyAccountOperations;
    v11->_cloudVerifyAccountOperations = array;

    v28 = [[HMDSyncOperationQueue alloc] initName:@"LegacyFetch" syncManager:v11 initialDelay:0 initialBackoff:0.0 hasBackoff:0.0];
    cloudFetchOperations = v11->_cloudFetchOperations;
    v11->_cloudFetchOperations = v28;

    array2 = [MEMORY[0x277CBEB18] array];
    cloudZonePushOperationQueues = v11->_cloudZonePushOperationQueues;
    v11->_cloudZonePushOperationQueues = array2;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    cloudZonePushOperationQueuesMap = v11->_cloudZonePushOperationQueuesMap;
    v11->_cloudZonePushOperationQueuesMap = dictionary;

    array3 = [MEMORY[0x277CBEB18] array];
    cloudZoneFetchOperationQueues = v11->_cloudZoneFetchOperationQueues;
    v11->_cloudZoneFetchOperationQueues = array3;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    cloudZoneFetchOperationQueuesMap = v11->_cloudZoneFetchOperationQueuesMap;
    v11->_cloudZoneFetchOperationQueuesMap = dictionary2;

    array4 = [MEMORY[0x277CBEB18] array];
    cloudCancelPauseOperations = v11->_cloudCancelPauseOperations;
    v11->_cloudCancelPauseOperations = array4;

    array5 = [MEMORY[0x277CBEB18] array];
    cloudQueryDatabaseOperations = v11->_cloudQueryDatabaseOperations;
    v11->_cloudQueryDatabaseOperations = array5;

    array6 = [MEMORY[0x277CBEB18] array];
    cloudPostFetchOperations = v11->_cloudPostFetchOperations;
    v11->_cloudPostFetchOperations = array6;

    v11->_syncLoopDialogDisplayed = 0;
  }

  return v11;
}

id __58__HMDSyncOperationManager_initWithClientQueue_dataSource___block_invoke(double a1)
{
  v1 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:1 options:a1];

  return v1;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t53_146116 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t53_146116, &__block_literal_global_149_146117);
  }

  v3 = logCategory__hmf_once_v54_146118;

  return v3;
}

void __38__HMDSyncOperationManager_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v54_146118;
  logCategory__hmf_once_v54_146118 = v0;
}

@end