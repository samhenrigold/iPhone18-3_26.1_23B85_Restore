@interface HMDCameraRemoteStreamTracker
+ (HMDCameraRemoteStreamTracker)sharedTracker;
+ (id)logCategory;
- (BOOL)startTrackingStreamSession:(id)session;
- (HMDCameraRemoteStreamTracker)init;
- (void)stopTrackingStreamWithSessionID:(id)d;
@end

@implementation HMDCameraRemoteStreamTracker

- (void)stopTrackingStreamWithSessionID:(id)d
{
  dCopy = d;
  workQueue = [(HMDCameraRemoteStreamTracker *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__HMDCameraRemoteStreamTracker_stopTrackingStreamWithSessionID___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = dCopy;
  v6 = dCopy;
  dispatch_async(workQueue, v7);
}

void __64__HMDCameraRemoteStreamTracker_stopTrackingStreamWithSessionID___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) currentStreamIdentifiers];
  v3 = [v2 containsObject:*(a1 + 40)];

  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v3)
  {
    if (v7)
    {
      v8 = HMFGetLogIdentifier();
      v9 = *(a1 + 40);
      v13 = 138543618;
      v14 = v8;
      v15 = 2112;
      v16 = v9;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@No longer tracking stream with session ID: %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    v10 = [*(a1 + 32) currentStreamIdentifiers];
    [v10 removeObject:*(a1 + 40)];
  }

  else
  {
    if (v7)
    {
      v11 = HMFGetLogIdentifier();
      v12 = *(a1 + 40);
      v13 = 138543618;
      v14 = v11;
      v15 = 2112;
      v16 = v12;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Cannot find stream to stop tracking: %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }
}

- (BOOL)startTrackingStreamSession:(id)session
{
  sessionCopy = session;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  workQueue = [(HMDCameraRemoteStreamTracker *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__HMDCameraRemoteStreamTracker_startTrackingStreamSession___block_invoke;
  block[3] = &unk_27868A4D8;
  block[4] = self;
  v9 = sessionCopy;
  v10 = &v11;
  v6 = sessionCopy;
  dispatch_sync(workQueue, block);

  LOBYTE(sessionCopy) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return sessionCopy;
}

void __59__HMDCameraRemoteStreamTracker_startTrackingStreamSession___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) currentStreamIdentifiers];
  v3 = [v2 count];
  v4 = maximumSimultaneousRemoteStreams;

  if (v3 >= v4)
  {
    v17 = objc_autoreleasePoolPush();
    v18 = *(a1 + 32);
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      v21 = *(a1 + 40);
      v22 = [*(a1 + 32) currentStreamIdentifiers];
      v23 = 138543874;
      v24 = v20;
      v25 = 2112;
      v26 = v21;
      v27 = 2112;
      v28 = v22;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Cannot start tracking stream session: %@. Already tracking maximum number of stream sessions: %@", &v23, 0x20u);
    }

    objc_autoreleasePoolPop(v17);
  }

  else
  {
    v5 = [_HMDCameraRemoteStreamTrackerAssertion alloc];
    v6 = *(a1 + 32);
    v7 = [*(a1 + 40) sessionID];
    v8 = [(_HMDCameraRemoteStreamTrackerAssertion *)v5 initWithStreamTracker:v6 streamIdentifier:v7];

    v9 = [*(a1 + 32) currentStreamIdentifiers];
    v10 = [*(a1 + 40) sessionID];
    [v9 addObject:v10];

    objc_setAssociatedObject(*(a1 + 40), "HMD.StreamTrackerAssertion", v8, 1);
    v11 = objc_autoreleasePoolPush();
    v12 = *(a1 + 32);
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v15 = *(a1 + 40);
      v16 = [*(a1 + 32) currentStreamIdentifiers];
      v23 = 138543874;
      v24 = v14;
      v25 = 2112;
      v26 = v15;
      v27 = 2048;
      v28 = [v16 count];
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Started tracking stream session: %@. Total count is now %lu", &v23, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

- (HMDCameraRemoteStreamTracker)init
{
  v11.receiver = self;
  v11.super_class = HMDCameraRemoteStreamTracker;
  v2 = [(HMDCameraRemoteStreamTracker *)&v11 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB58] set];
    currentStreamIdentifiers = v2->_currentStreamIdentifiers;
    v2->_currentStreamIdentifiers = v3;

    v5 = HMDispatchQueueNameString();
    uTF8String = [v5 UTF8String];
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create(uTF8String, v7);
    workQueue = v2->_workQueue;
    v2->_workQueue = v8;
  }

  return v2;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t4_154429 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t4_154429, &__block_literal_global_5_154430);
  }

  v3 = logCategory__hmf_once_v5_154431;

  return v3;
}

void __43__HMDCameraRemoteStreamTracker_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v5_154431;
  logCategory__hmf_once_v5_154431 = v0;
}

+ (HMDCameraRemoteStreamTracker)sharedTracker
{
  if (sharedTracker_onceToken_154436 != -1)
  {
    dispatch_once(&sharedTracker_onceToken_154436, &__block_literal_global_154437);
  }

  v3 = streamTracker;

  return v3;
}

void __45__HMDCameraRemoteStreamTracker_sharedTracker__block_invoke()
{
  v0 = objc_alloc_init(HMDCameraRemoteStreamTracker);
  v1 = streamTracker;
  streamTracker = v0;
}

@end