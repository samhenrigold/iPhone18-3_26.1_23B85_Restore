@interface HMDCameraAnalysisStatePublisher
+ (id)logCategory;
- (HMDCameraAnalysisStatePublisher)initWithHome:(id)home;
- (HMDCameraAnalysisStatePublisher)initWithHomeMessagingContext:(id)context analysisStateManager:(id)manager workQueue:(id)queue cameraAnalysisStatePublisherDebounceTimer:(id)timer;
- (HMDHomeResidentMessagingContext)messagingContext;
- (NSUUID)messageTargetUUID;
- (void)_handleRemoteAnalysisStateUpdate:(id)update;
- (void)_processStateUpdate:(id)update;
- (void)_publishAnalysisStateUpdate;
- (void)configureWithHome:(id)home;
- (void)stateManager:(id)manager didReceiveLocalUpdate:(id)update;
- (void)timerDidFire:(id)fire;
@end

@implementation HMDCameraAnalysisStatePublisher

- (HMDHomeResidentMessagingContext)messagingContext
{
  WeakRetained = objc_loadWeakRetained(&self->_messagingContext);

  return WeakRetained;
}

- (void)timerDidFire:(id)fire
{
  fireCopy = fire;
  workQueue = [(HMDCameraAnalysisStatePublisher *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  cameraAnalysisStatePublisherDebounceTimer = [(HMDCameraAnalysisStatePublisher *)self cameraAnalysisStatePublisherDebounceTimer];

  if (cameraAnalysisStatePublisherDebounceTimer == fireCopy)
  {

    [(HMDCameraAnalysisStatePublisher *)self _publishAnalysisStateUpdate];
  }
}

- (NSUUID)messageTargetUUID
{
  messagingContext = [(HMDCameraAnalysisStatePublisher *)self messagingContext];
  messageTargetUUID = [messagingContext messageTargetUUID];

  return messageTargetUUID;
}

- (void)stateManager:(id)manager didReceiveLocalUpdate:(id)update
{
  v20 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  updateCopy = update;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v17 = v11;
    v18 = 2112;
    v19 = updateCopy;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Received local analysis state update: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  workQueue = [(HMDCameraAnalysisStatePublisher *)selfCopy workQueue];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __70__HMDCameraAnalysisStatePublisher_stateManager_didReceiveLocalUpdate___block_invoke;
  v14[3] = &unk_2797359B0;
  v14[4] = selfCopy;
  v15 = updateCopy;
  v13 = updateCopy;
  dispatch_async(workQueue, v14);
}

- (void)_handleRemoteAnalysisStateUpdate:(id)update
{
  v21[1] = *MEMORY[0x277D85DE8];
  updateCopy = update;
  workQueue = [(HMDCameraAnalysisStatePublisher *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  messagePayload = [updateCopy messagePayload];
  v21[0] = objc_opt_class();
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
  v8 = [messagePayload hmf_unarchivedObjectForKey:@"HMDCameraAnalysisStatePublisherStateUpdateMessageKey" ofClasses:v7];

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  v12 = v11;
  if (v8)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v17 = 138543618;
      v18 = v13;
      v19 = 2112;
      v20 = v8;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Handling remote state update: %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    analysisStateManager = [(HMDCameraAnalysisStatePublisher *)selfCopy analysisStateManager];
    [analysisStateManager handleRemoteStateUpdate:v8];
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      identifier = [updateCopy identifier];
      v17 = 138543618;
      v18 = v15;
      v19 = 2112;
      v20 = identifier;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@Received nil analysis state update from message with identifier: %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
  }
}

- (void)_publishAnalysisStateUpdate
{
  v30 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDCameraAnalysisStatePublisher *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  stateUpdate = [(HMDCameraAnalysisStatePublisher *)self stateUpdate];
  if (stateUpdate)
  {
    [(HMDCameraAnalysisStatePublisher *)self setStateUpdate:0];
    v21 = 0;
    v5 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:stateUpdate requiringSecureCoding:1 error:&v21];
    v6 = v21;
    if (v5)
    {
      v22 = @"HMDCameraAnalysisStatePublisherStateUpdateMessageKey";
      v23 = v5;
      v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
      messagingContext = [(HMDCameraAnalysisStatePublisher *)self messagingContext];
      enabledResidents = [messagingContext enabledResidents];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __62__HMDCameraAnalysisStatePublisher__publishAnalysisStateUpdate__block_invoke;
      v19[3] = &unk_279724940;
      v19[4] = self;
      v20 = v7;
      v10 = v7;
      [enabledResidents na_each:v19];
    }

    else
    {
      v15 = objc_autoreleasePoolPush();
      selfCopy = self;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = HMFGetLogIdentifier();
        *buf = 138543874;
        v25 = v18;
        v26 = 2112;
        v27 = stateUpdate;
        v28 = 2112;
        v29 = v6;
        _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@Failed to serialize %@: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v15);
    }
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543362;
      v25 = v14;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Invoking _publishAnalysisStateUpdate with nil stateUpdate!", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
  }
}

void __62__HMDCameraAnalysisStatePublisher__publishAnalysisStateUpdate__block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 device];
  if (([v4 isCurrentDevice] & 1) == 0)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 32);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v9 = [v4 identifier];
      v17 = 138543618;
      v18 = v8;
      v19 = 2112;
      v20 = v9;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Sending state update to %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v10 = [HMDRemoteDeviceMessageDestination alloc];
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
    v12 = [WeakRetained messageTargetUUID];
    v13 = [(HMDRemoteDeviceMessageDestination *)v10 initWithTarget:v12 device:v4];

    v14 = [[HMDRemoteMessage alloc] initWithName:@"HMDCameraAnalysisStatePublisherStateUpdateMessage" destination:v13 payload:*(a1 + 40) type:3 timeout:1 secure:20.0];
    v15 = [*(a1 + 32) messagingContext];
    v16 = [v15 msgDispatcher];
    [v16 sendMessage:v14];
  }
}

- (void)_processStateUpdate:(id)update
{
  updateCopy = update;
  workQueue = [(HMDCameraAnalysisStatePublisher *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  stateUpdate = [(HMDCameraAnalysisStatePublisher *)self stateUpdate];

  if (stateUpdate)
  {
    stateUpdate2 = [(HMDCameraAnalysisStatePublisher *)self stateUpdate];
    v7 = [stateUpdate2 stateUpdateByMergingStateUpdate:updateCopy];
    [(HMDCameraAnalysisStatePublisher *)self setStateUpdate:v7];
  }

  else
  {
    [(HMDCameraAnalysisStatePublisher *)self setStateUpdate:updateCopy];
  }

  cameraAnalysisStatePublisherDebounceTimer = [(HMDCameraAnalysisStatePublisher *)self cameraAnalysisStatePublisherDebounceTimer];
  isRunning = [cameraAnalysisStatePublisherDebounceTimer isRunning];

  if ((isRunning & 1) == 0)
  {
    cameraAnalysisStatePublisherDebounceTimer2 = [(HMDCameraAnalysisStatePublisher *)self cameraAnalysisStatePublisherDebounceTimer];
    [cameraAnalysisStatePublisherDebounceTimer2 resume];
  }
}

- (void)configureWithHome:(id)home
{
  v14[2] = *MEMORY[0x277D85DE8];
  homeCopy = home;
  analysisStateManager = [(HMDCameraAnalysisStatePublisher *)self analysisStateManager];
  [analysisStateManager setDelegate:self];

  v6 = +[(HMDRemoteMessagePolicy *)HMDMutableRemoteMessagePolicy];
  [v6 setRoles:{objc_msgSend(v6, "roles") | 4}];
  v7 = [HMDUserMessagePolicy userMessagePolicyWithHome:homeCopy userPrivilege:3 remoteAccessRequired:0];

  messagingContext = [(HMDCameraAnalysisStatePublisher *)self messagingContext];
  msgDispatcher = [messagingContext msgDispatcher];
  v14[0] = v6;
  v14[1] = v7;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
  [msgDispatcher registerForMessage:@"HMDCameraAnalysisStatePublisherStateUpdateMessage" receiver:self policies:v10 selector:sel__handleRemoteAnalysisStateUpdate_];

  cameraAnalysisStatePublisherDebounceTimer = [(HMDCameraAnalysisStatePublisher *)self cameraAnalysisStatePublisherDebounceTimer];
  [cameraAnalysisStatePublisherDebounceTimer setDelegate:self];

  workQueue = [(HMDCameraAnalysisStatePublisher *)self workQueue];
  cameraAnalysisStatePublisherDebounceTimer2 = [(HMDCameraAnalysisStatePublisher *)self cameraAnalysisStatePublisherDebounceTimer];
  [cameraAnalysisStatePublisherDebounceTimer2 setDelegateQueue:workQueue];
}

- (HMDCameraAnalysisStatePublisher)initWithHomeMessagingContext:(id)context analysisStateManager:(id)manager workQueue:(id)queue cameraAnalysisStatePublisherDebounceTimer:(id)timer
{
  contextCopy = context;
  managerCopy = manager;
  queueCopy = queue;
  timerCopy = timer;
  v17.receiver = self;
  v17.super_class = HMDCameraAnalysisStatePublisher;
  v14 = [(HMDCameraAnalysisStatePublisher *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_messagingContext, contextCopy);
    objc_storeStrong(&v15->_analysisStateManager, manager);
    objc_storeStrong(&v15->_cameraAnalysisStatePublisherDebounceTimer, timer);
    objc_storeStrong(&v15->_workQueue, queue);
  }

  return v15;
}

- (HMDCameraAnalysisStatePublisher)initWithHome:(id)home
{
  v4 = MEMORY[0x277D14D58];
  homeCopy = home;
  v6 = [v4 alloc];
  uuid = [homeCopy uuid];
  v8 = [v6 initWithHomeUUID:uuid];

  v9 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:8 options:16.0];
  workQueue = [homeCopy workQueue];
  v11 = [(HMDCameraAnalysisStatePublisher *)self initWithHomeMessagingContext:homeCopy analysisStateManager:v8 workQueue:workQueue cameraAnalysisStatePublisherDebounceTimer:v9];

  return v11;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t6_32203 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t6_32203, &__block_literal_global_32204);
  }

  v3 = logCategory__hmf_once_v7_32205;

  return v3;
}

uint64_t __46__HMDCameraAnalysisStatePublisher_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v7_32205;
  logCategory__hmf_once_v7_32205 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end