@interface HMDPairedSync
- (HMDPairedSync)initWithDelegate:(id)delegate queue:(id)queue;
- (HMDPairedSyncDelegate)delegate;
- (id)restrictionAsString:(unint64_t)string;
- (void)_callStartSync;
- (void)needToSync;
- (void)syncComplete;
- (void)syncCoordinator:(id)coordinator beginSyncSession:(id)session;
- (void)syncCoordinator:(id)coordinator didInvalidateSyncSession:(id)session;
- (void)syncCoordinatorDidChangeSyncRestriction:(id)restriction;
- (void)syncPartiallyComplete;
@end

@implementation HMDPairedSync

- (HMDPairedSyncDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)syncCoordinatorDidChangeSyncRestriction:(id)restriction
{
  v13 = *MEMORY[0x277D85DE8];
  restrictionCopy = restriction;
  v5 = objc_autoreleasePoolPush();
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = -[HMDPairedSync restrictionAsString:](self, "restrictionAsString:", [restrictionCopy syncRestriction]);
    v9 = 138543618;
    v10 = v7;
    v11 = 2112;
    v12 = v8;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Sync restriction is changing to %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  if (![restrictionCopy syncRestriction])
  {
    [(HMDPairedSync *)self _callStartSync];
  }
}

- (void)syncCoordinator:(id)coordinator didInvalidateSyncSession:(id)session
{
  v12 = *MEMORY[0x277D85DE8];
  coordinatorCopy = coordinator;
  sessionCopy = session;
  v7 = objc_autoreleasePoolPush();
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v9;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Received delegate call syncCoordinator:didInvalidateSyncSession", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v7);
}

- (void)syncCoordinator:(id)coordinator beginSyncSession:(id)session
{
  v13 = *MEMORY[0x277D85DE8];
  coordinatorCopy = coordinator;
  sessionCopy = session;
  v8 = objc_autoreleasePoolPush();
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v10;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Received an update to being-sync-session to watch", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v8);
  [(HMDPairedSync *)self _callStartSync];
}

- (void)syncPartiallyComplete
{
  workQueue = [(HMDPairedSync *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__HMDPairedSync_syncPartiallyComplete__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __38__HMDPairedSync_syncPartiallyComplete__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) currentOperationCount])
  {
    [*(a1 + 32) setCurrentOperationCount:{objc_msgSend(*(a1 + 32), "currentOperationCount") - 1}];
  }

  v2 = objc_autoreleasePoolPush();
  v3 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = HMFGetLogIdentifier();
    v5 = [*(a1 + 32) currentOperationCount];
    v6 = 138543618;
    v7 = v4;
    v8 = 2048;
    v9 = v5;
    _os_log_impl(&dword_2531F8000, v3, OS_LOG_TYPE_INFO, "%{public}@Partially complete, Current operation count is %tu", &v6, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
}

- (void)syncComplete
{
  workQueue = [(HMDPairedSync *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__HMDPairedSync_syncComplete__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __29__HMDPairedSync_syncComplete__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) currentOperationCount])
  {
    [*(a1 + 32) setCurrentOperationCount:{objc_msgSend(*(a1 + 32), "currentOperationCount") - 1}];
  }

  else
  {
    v2 = objc_autoreleasePoolPush();
    v3 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v4;
      _os_log_impl(&dword_2531F8000, v3, OS_LOG_TYPE_ERROR, "%{public}@Current operation count is already 0, cannot decrement further", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v2);
  }

  v5 = objc_autoreleasePoolPush();
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [*(a1 + 32) currentOperationCount];
    v14 = 138543618;
    v15 = v7;
    v16 = 2048;
    v17 = v8;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Current operation count is %tu", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  if (![*(a1 + 32) currentOperationCount])
  {
    v9 = objc_autoreleasePoolPush();
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v11;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Informing sync coordinator that sync is complete", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    v12 = [*(a1 + 32) coordinator];
    v13 = [v12 activeSyncSession];
    [v13 syncDidComplete];
  }
}

- (void)_callStartSync
{
  v9 = *MEMORY[0x277D85DE8];
  delegate = [(HMDPairedSync *)self delegate];
  if (delegate)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = HMFGetLogIdentifier();
      v7 = 138543362;
      v8 = v6;
      _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Calling the clients to start the sync", &v7, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    if (objc_opt_respondsToSelector())
    {
      [delegate pairedSyncDidStart:self];
    }
  }
}

- (void)needToSync
{
  workQueue = [(HMDPairedSync *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __27__HMDPairedSync_needToSync__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __27__HMDPairedSync_needToSync__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setCurrentOperationCount:{objc_msgSend(*(a1 + 32), "currentOperationCount") + 1}];
  v2 = [*(a1 + 32) coordinator];
  v3 = [v2 syncRestriction];

  v4 = objc_autoreleasePoolPush();
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = [*(a1 + 32) restrictionAsString:v3];
    v8 = [*(a1 + 32) currentOperationCount];
    v12 = 138543874;
    v13 = v6;
    v14 = 2114;
    v15 = v7;
    v16 = 2050;
    v17 = v8;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Current sync restriction state: %{public}@, operation count: %{public}tu", &v12, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  if (v3)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v11;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Need to wait for the begin sync to happen for HomeKit.", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
  }

  else
  {
    [*(a1 + 32) _callStartSync];
  }
}

- (id)restrictionAsString:(unint64_t)string
{
  if (string)
  {
    if (string == 1)
    {
      string = @"PSYSyncRestrictionLimitPush";
    }

    else
    {
      string = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown restriction state: %tu", string];
    }
  }

  else
  {
    string = @"PSYSyncRestrictionNone";
  }

  return string;
}

- (HMDPairedSync)initWithDelegate:(id)delegate queue:(id)queue
{
  delegateCopy = delegate;
  v16.receiver = self;
  v16.super_class = HMDPairedSync;
  v6 = [(HMDPairedSync *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeWeak(&v6->_delegate, delegateCopy);
    v8 = HMDispatchQueueNameString();
    uTF8String = [v8 UTF8String];
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create(uTF8String, v10);
    workQueue = v7->_workQueue;
    v7->_workQueue = v11;

    v7->_currentOperationCount = 0;
    v13 = [MEMORY[0x277D37C40] syncCoordinatorWithServiceName:@"com.apple.pairedsync.homekit"];
    coordinator = v7->_coordinator;
    v7->_coordinator = v13;

    [(PSYSyncCoordinator *)v7->_coordinator setDelegate:v7 queue:v7->_workQueue];
  }

  return v7;
}

@end