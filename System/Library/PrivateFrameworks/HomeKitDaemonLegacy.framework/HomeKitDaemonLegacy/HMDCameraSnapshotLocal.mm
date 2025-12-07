@interface HMDCameraSnapshotLocal
+ (id)logCategory;
- (HMDAccessory)accessory;
- (HMDCameraSnapshotLocal)initWithSessionID:(id)d workQueue:(id)queue accessory:(id)accessory delegate:(id)delegate snapshotRequestHandler:(id)handler;
- (HMDCameraSnapshotLocalDelegate)delegate;
- (id)logIdentifier;
- (void)_getSnapshot:(unint64_t)snapshot;
- (void)_handleSnapshotFile:(id)file error:(id)error;
- (void)dealloc;
- (void)getSnapshot:(unint64_t)snapshot;
@end

@implementation HMDCameraSnapshotLocal

- (HMDCameraSnapshotLocalDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (HMDAccessory)accessory
{
  WeakRetained = objc_loadWeakRetained(&self->_accessory);

  return WeakRetained;
}

- (void)_handleSnapshotFile:(id)file error:(id)error
{
  v21 = *MEMORY[0x277D85DE8];
  fileCopy = file;
  errorCopy = error;
  workQueue = [(HMDCameraSnapshotLocal *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v15 = 138543874;
    v16 = v12;
    v17 = 2112;
    v18 = fileCopy;
    v19 = 2112;
    v20 = errorCopy;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Calling delegate that image %@ has been saved with error %@", &v15, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  delegate = [(HMDCameraSnapshotLocal *)selfCopy delegate];
  if (objc_opt_respondsToSelector())
  {
    sessionID = [(HMDCameraSnapshotLocal *)selfCopy sessionID];
    [delegate snapshotLocal:selfCopy didSaveSnapshotFile:fileCopy error:errorCopy sessionID:sessionID];
  }
}

- (void)_getSnapshot:(unint64_t)snapshot
{
  workQueue = [(HMDCameraSnapshotLocal *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  snapshotRequestHandler = [(HMDCameraSnapshotLocal *)self snapshotRequestHandler];
  sessionID = [(HMDCameraSnapshotLocal *)self sessionID];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __39__HMDCameraSnapshotLocal__getSnapshot___block_invoke;
  v8[3] = &unk_279723A50;
  v8[4] = self;
  [snapshotRequestHandler requestSnapshot:sessionID streamingTierType:snapshot completionHandler:v8];
}

- (void)getSnapshot:(unint64_t)snapshot
{
  workQueue = [(HMDCameraSnapshotLocal *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  [(HMDCameraSnapshotLocal *)self _getSnapshot:snapshot];
}

- (id)logIdentifier
{
  sessionID = [(HMDCameraSnapshotLocal *)self sessionID];
  v3 = [sessionID description];

  return v3;
}

- (void)dealloc
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v9 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Deallocating HMDCameraSnapshotLocal", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7.receiver = selfCopy;
  v7.super_class = HMDCameraSnapshotLocal;
  [(HMDCameraSnapshotLocal *)&v7 dealloc];
}

- (HMDCameraSnapshotLocal)initWithSessionID:(id)d workQueue:(id)queue accessory:(id)accessory delegate:(id)delegate snapshotRequestHandler:(id)handler
{
  dCopy = d;
  queueCopy = queue;
  accessoryCopy = accessory;
  delegateCopy = delegate;
  handlerCopy = handler;
  v21.receiver = self;
  v21.super_class = HMDCameraSnapshotLocal;
  v18 = [(HMDCameraSnapshotLocal *)&v21 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_sessionID, d);
    objc_storeWeak(&v19->_accessory, accessoryCopy);
    objc_storeStrong(&v19->_workQueue, queue);
    objc_storeWeak(&v19->_delegate, delegateCopy);
    objc_storeStrong(&v19->_snapshotRequestHandler, handler);
  }

  return v19;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t1_19771 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t1_19771, &__block_literal_global_19772);
  }

  v3 = logCategory__hmf_once_v2_19773;

  return v3;
}

uint64_t __37__HMDCameraSnapshotLocal_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v2_19773;
  logCategory__hmf_once_v2_19773 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end