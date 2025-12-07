@interface HMDCameraSnapshotRemoteStreamSender
+ (id)logCategory;
- (HMDCameraSnapshotRemoteStreamSender)initWithSessionID:(id)d workQueue:(id)queue device:(id)device accessory:(id)accessory delegate:(id)delegate uniqueIdentifier:(id)identifier snapshotRequestHandler:(id)handler;
- (HMDCameraSnapshotRemoteStreamSenderDelegate)delegate;
- (id)logIdentifier;
- (void)_callDidCompleteSendImageDelegate:(id)delegate;
- (void)_callDidStartCaptureImageDelegate;
- (void)dealloc;
- (void)getSnapshot:(unint64_t)snapshot;
- (void)sendSnapshotAtPath:(id)path;
- (void)snapshotLocal:(id)local didSaveSnapshotFile:(id)file error:(id)error sessionID:(id)d;
- (void)snapshotTransferComplete;
- (void)streamInitiator:(id)initiator didFailToSendFileWithError:(id)error;
@end

@implementation HMDCameraSnapshotRemoteStreamSender

- (HMDCameraSnapshotRemoteStreamSenderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)streamInitiator:(id)initiator didFailToSendFileWithError:(id)error
{
  errorCopy = error;
  workQueue = [(HMDCameraSnapshotSender *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  [(HMDCameraSnapshotSender *)self _sendImageSendFailure:errorCopy];
  [(HMDCameraSnapshotRemoteStreamSender *)self _callDidCompleteSendImageDelegate:errorCopy];
}

- (void)snapshotLocal:(id)local didSaveSnapshotFile:(id)file error:(id)error sessionID:(id)d
{
  v26 = *MEMORY[0x277D85DE8];
  localCopy = local;
  fileCopy = file;
  errorCopy = error;
  dCopy = d;
  workQueue = [(HMDCameraSnapshotSender *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v15 = objc_autoreleasePoolPush();
  selfCopy = self;
  v17 = HMFGetOSLogHandle();
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_INFO);
  if (errorCopy)
  {
    if (v18)
    {
      v19 = HMFGetLogIdentifier();
      v22 = 138543618;
      v23 = v19;
      v24 = 2112;
      v25 = errorCopy;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Snapshot local capture has ended in %@", &v22, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    [(HMDCameraSnapshotSender *)selfCopy _sendImageSendFailure:errorCopy];
    [(HMDCameraSnapshotRemoteStreamSender *)selfCopy _callDidCompleteSendImageDelegate:errorCopy];
  }

  else
  {
    if (v18)
    {
      v20 = HMFGetLogIdentifier();
      v22 = 138543618;
      v23 = v20;
      v24 = 2112;
      v25 = fileCopy;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Scheduling the transfer of file %@ through IDS", &v22, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    streamInitiator = [(HMDCameraSnapshotRemoteStreamSender *)selfCopy streamInitiator];
    [streamInitiator sendFile:fileCopy];
  }
}

- (void)_callDidCompleteSendImageDelegate:(id)delegate
{
  v17 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  workQueue = [(HMDCameraSnapshotSender *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v13 = 138543618;
    v14 = v9;
    v15 = 2112;
    v16 = delegateCopy;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Calling delegate that transfer of image has completed with error %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  delegate = [(HMDCameraSnapshotRemoteStreamSender *)selfCopy delegate];
  if (objc_opt_respondsToSelector())
  {
    snapshotLocal = [(HMDCameraSnapshotRemoteStreamSender *)selfCopy snapshotLocal];
    sessionID = [snapshotLocal sessionID];
    [delegate snapshotStreamSender:selfCopy didCompleteSendImage:delegateCopy sessionID:sessionID];
  }
}

- (void)_callDidStartCaptureImageDelegate
{
  v13 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDCameraSnapshotSender *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v7;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Calling delegate that capture of image has started", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  delegate = [(HMDCameraSnapshotRemoteStreamSender *)selfCopy delegate];
  if (objc_opt_respondsToSelector())
  {
    snapshotLocal = [(HMDCameraSnapshotRemoteStreamSender *)selfCopy snapshotLocal];
    sessionID = [snapshotLocal sessionID];
    [delegate snapshotStreamSender:selfCopy didStartImageCaptureForSessionID:sessionID];
  }
}

- (void)snapshotTransferComplete
{
  v10 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDCameraSnapshotSender *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v7;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Snapshot transfer to remote receiver is complete", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  [(HMDCameraSnapshotRemoteStreamSender *)selfCopy _callDidCompleteSendImageDelegate:0];
}

- (void)sendSnapshotAtPath:(id)path
{
  v15 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  workQueue = [(HMDCameraSnapshotSender *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v11 = 138543618;
    v12 = v9;
    v13 = 2112;
    v14 = pathCopy;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Sending the snapshot %@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  streamInitiator = [(HMDCameraSnapshotRemoteStreamSender *)selfCopy streamInitiator];
  [streamInitiator sendFile:pathCopy];
}

- (void)getSnapshot:(unint64_t)snapshot
{
  v13 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDCameraSnapshotSender *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v9;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Getting the snapshot from local snapshot handler", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  snapshotLocal = [(HMDCameraSnapshotRemoteStreamSender *)selfCopy snapshotLocal];
  [snapshotLocal getSnapshot:snapshot];

  [(HMDCameraSnapshotRemoteStreamSender *)selfCopy _callDidStartCaptureImageDelegate];
}

- (id)logIdentifier
{
  sessionID = [(HMDCameraSnapshotSender *)self sessionID];
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
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Resetting HMDCameraSnapshotRemoteStreamSender", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7.receiver = selfCopy;
  v7.super_class = HMDCameraSnapshotRemoteStreamSender;
  [(HMDCameraSnapshotRemoteStreamSender *)&v7 dealloc];
}

- (HMDCameraSnapshotRemoteStreamSender)initWithSessionID:(id)d workQueue:(id)queue device:(id)device accessory:(id)accessory delegate:(id)delegate uniqueIdentifier:(id)identifier snapshotRequestHandler:(id)handler
{
  dCopy = d;
  queueCopy = queue;
  accessoryCopy = accessory;
  delegateCopy = delegate;
  handlerCopy = handler;
  identifierCopy = identifier;
  deviceCopy = device;
  localHandles = [deviceCopy localHandles];
  firstObject = [localHandles firstObject];
  destination = [firstObject destination];

  v24 = delegateCopy;
  v25 = accessoryCopy;

  v33.receiver = self;
  v33.super_class = HMDCameraSnapshotRemoteStreamSender;
  v26 = [(HMDCameraSnapshotSender *)&v33 initWithSessionID:dCopy workQueue:queueCopy device:deviceCopy accessory:accessoryCopy uniqueIdentifier:identifierCopy];

  if (v26)
  {
    objc_storeWeak(&v26->_delegate, v24);
    v27 = [[HMDCameraSnapshotLocal alloc] initWithSessionID:dCopy workQueue:queueCopy accessory:v25 delegate:v26 snapshotRequestHandler:handlerCopy];
    snapshotLocal = v26->_snapshotLocal;
    v26->_snapshotLocal = v27;

    v29 = [[HMDCameraSnapshotIDSStreamInitiator alloc] initWithSessionID:dCopy workQueue:queueCopy destinationID:destination delegate:v26];
    streamInitiator = v26->_streamInitiator;
    v26->_streamInitiator = v29;
  }

  return v26;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t1_11397 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t1_11397, &__block_literal_global_11398);
  }

  v3 = logCategory__hmf_once_v2_11399;

  return v3;
}

uint64_t __50__HMDCameraSnapshotRemoteStreamSender_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v2_11399;
  logCategory__hmf_once_v2_11399 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end