@interface HMDAppleMediaAccessorySleepWakeStateController
- (HMDAppleMediaAccessorySleepWakeStateController)initWithAccessoryUUID:(id)d dataSource:(id)source;
- (NSUUID)messageTargetUUID;
- (OS_dispatch_queue)messageReceiveQueue;
- (id)dataSource;
- (void)_handleFetchSleepWakeStateMessage:(id)message;
- (void)configureWithHome:(id)home messageDispatcher:(id)dispatcher workQueue:(id)queue;
- (void)fetchSleepWakeStateWithCompletion:(id)completion;
@end

@implementation HMDAppleMediaAccessorySleepWakeStateController

- (OS_dispatch_queue)messageReceiveQueue
{
  if (self)
  {
    self = objc_getProperty(self, a2, 24, 1);
    v2 = vars8;
  }

  return self;
}

- (NSUUID)messageTargetUUID
{
  if (self)
  {
    self = objc_getProperty(self, a2, 32, 1);
    v2 = vars8;
  }

  return self;
}

- (void)_handleFetchSleepWakeStateMessage:(id)message
{
  v24 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  dataSource = [(HMDAppleMediaAccessorySleepWakeStateController *)&self->super.super.isa dataSource];
  v6 = [dataSource deviceForAppleMediaAccessorySleepWakeStateController:self];
  if ([v6 isCurrentDevice])
  {
    v7 = [dataSource currentDeviceProductInfoForAppleMediaAccessorySleepWakeStateController:self];
    productClass = [v7 productClass];
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
    if (productClass == 4)
    {
      if (v12)
      {
        v13 = HMFGetLogIdentifier();
        *buf = 138543362;
        v23 = v13;
        v14 = "%{public}@Unsupported attempt to fetch sleep wake state on a non TVOS device";
LABEL_12:
        _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, v14, buf, 0xCu);
      }
    }

    else if (v12)
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543362;
      v23 = v13;
      v14 = "%{public}@Unsupported attempt to fetch sleep wake state on a non ATV device";
      goto LABEL_12;
    }

    objc_autoreleasePoolPop(v9);
    v19 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    [messageCopy respondWithError:v19];

    goto LABEL_14;
  }

  if (([messageCopy isRemote] & 1) != 0 || objc_msgSend(messageCopy, "isSecureRemote"))
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543362;
      v23 = v18;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@Cannot relay remote fetch sleep wake message twice", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
    v7 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    [messageCopy respondWithError:v7];
  }

  else
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __84__HMDAppleMediaAccessorySleepWakeStateController__handleFetchSleepWakeStateMessage___block_invoke;
    v20[3] = &unk_279734E28;
    v21 = messageCopy;
    [(HMDAppleMediaAccessorySleepWakeStateController *)self fetchSleepWakeStateWithCompletion:v20];
    v7 = v21;
  }

LABEL_14:
}

- (id)dataSource
{
  if (WeakRetained)
  {
    WeakRetained = objc_loadWeakRetained(WeakRetained + 6);
    v1 = vars8;
  }

  return WeakRetained;
}

void __84__HMDAppleMediaAccessorySleepWakeStateController__handleFetchSleepWakeStateMessage___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  if (a3)
  {
    v4 = *(a1 + 32);

    [v4 respondWithError:?];
  }

  else
  {
    v7 = *MEMORY[0x277CCFD48];
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
    v8[0] = v5;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    [v3 respondWithPayload:v6];
  }
}

- (void)fetchSleepWakeStateWithCompletion:(id)completion
{
  v38 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  dataSource = [(HMDAppleMediaAccessorySleepWakeStateController *)&self->super.super.isa dataSource];
  v6 = [dataSource deviceForAppleMediaAccessorySleepWakeStateController:self];

  if (v6)
  {
    os_unfair_lock_lock_with_options();
    v7 = self->_fetchSleepWakeFuture;
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      *&buf[4] = v11;
      *&buf[12] = 2112;
      *&buf[14] = v7;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Fetching sleep wake state with current fetch future: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v12 = &unk_253D4B000;
    if (v7)
    {
      os_unfair_lock_unlock(&self->_lock);
    }

    else
    {
      v7 = objc_alloc_init(MEMORY[0x277D2C900]);
      objc_storeStrong(&self->_fetchSleepWakeFuture, v7);
      os_unfair_lock_unlock(&self->_lock);
      v17 = v6;
      v18 = [HMDRemoteDeviceMessageDestination alloc];
      messageTargetUUID = [(HMDAppleMediaAccessorySleepWakeStateController *)selfCopy messageTargetUUID];
      v20 = [(HMDRemoteDeviceMessageDestination *)v18 initWithTarget:messageTargetUUID device:v17];

      v21 = [MEMORY[0x277D0F848] messageWithName:*MEMORY[0x277CCFD50] destination:v20 payload:0];
      [v21 setSecureRemote:1];
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __80__HMDAppleMediaAccessorySleepWakeStateController__sendSleepWakeMessageToDevice___block_invoke;
      v36 = &unk_279734E00;
      v37 = selfCopy;
      [v21 setResponseHandler:buf];
      isCurrentDevice = [v17 isCurrentDevice];

      if (isCurrentDevice)
      {
        [(HMDAppleMediaAccessorySleepWakeStateController *)selfCopy _handleFetchSleepWakeStateMessage:v21];
      }

      else
      {
        [objc_getProperty(selfCopy v23];
      }

      v12 = &unk_253D4B000;
    }

    v30 = MEMORY[0x277D85DD0];
    v31 = v12[103];
    v24 = v31;
    v32 = __84__HMDAppleMediaAccessorySleepWakeStateController_fetchSleepWakeStateWithCompletion___block_invoke;
    v33 = &unk_279734DD8;
    v25 = completionCopy;
    v34 = v25;
    v26 = [(NAFuture *)v7 addSuccessBlock:&v30];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = v24;
    v28[2] = __84__HMDAppleMediaAccessorySleepWakeStateController_fetchSleepWakeStateWithCompletion___block_invoke_2;
    v28[3] = &unk_279735558;
    v29 = v25;
    v27 = [(NAFuture *)v7 addFailureBlock:v28];
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543362;
      *&buf[4] = v16;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@Unable to get current device from AppleMediaAccessorySleepWakeStateControllerDataSource", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v13);
    v7 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    (*(completionCopy + 2))(completionCopy, 0, v7);
  }
}

uint64_t __84__HMDAppleMediaAccessorySleepWakeStateController_fetchSleepWakeStateWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_self();
  if ([v3 unsignedIntValue] != 2)
  {
    [v3 unsignedIntValue];
  }

  v4 = *(*(a1 + 32) + 16);

  return v4();
}

void __80__HMDAppleMediaAccessorySleepWakeStateController__sendSleepWakeMessageToDevice___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  os_unfair_lock_lock_with_options();
  v8 = *(*(a1 + 32) + 16);
  v9 = *(a1 + 32);
  v10 = *(v9 + 16);
  *(v9 + 16) = 0;

  os_unfair_lock_unlock(v7 + 2);
  if (v5)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = *(a1 + 32);
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v21 = 138543618;
      v22 = v14;
      v23 = 2112;
      v24 = v5;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Fetching sleep wake state failed with error: %@", &v21, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    [v8 finishWithError:v5];
  }

  else
  {
    v15 = [v6 hmf_numberForKey:*MEMORY[0x277CCFD48]];
    if (v15)
    {
      [v8 finishWithResult:v15];
    }

    else
    {
      v16 = objc_autoreleasePoolPush();
      v17 = *(a1 + 32);
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        v21 = 138543618;
        v22 = v19;
        v23 = 2112;
        v24 = 0;
        _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@Fetching sleep wake state failed, missing sleep wake state key: %@", &v21, 0x16u);
      }

      objc_autoreleasePoolPop(v16);
      v20 = [MEMORY[0x277CCA9B8] hmErrorWithCode:43];
      [v8 finishWithError:v20];
    }
  }
}

- (void)configureWithHome:(id)home messageDispatcher:(id)dispatcher workQueue:(id)queue
{
  v21[2] = *MEMORY[0x277D85DE8];
  homeCopy = home;
  if (self)
  {
    dispatcherCopy = dispatcher;
    objc_setProperty_atomic(self, v9, queue, 24);
    objc_setProperty_atomic(self, v10, dispatcherCopy, 40);

    v11 = homeCopy;
    v12 = [HMDXPCMessagePolicy policyWithEntitlements:5];
    v21[0] = v12;
    v13 = [HMDUserMessagePolicy userMessagePolicyWithHome:v11 userPrivilege:0 remoteAccessRequired:1];

    v21[1] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];

    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    v16 = [WeakRetained currentDeviceProductInfoForAppleMediaAccessorySleepWakeStateController:self];

    if ([v16 productClass] == 4)
    {
      v18 = +[HMDRemoteMessagePolicy defaultSecurePolicy];
      v19 = [v14 arrayByAddingObject:v18];

      v14 = v19;
    }

    [objc_getProperty(self v17];
  }
}

- (HMDAppleMediaAccessorySleepWakeStateController)initWithAccessoryUUID:(id)d dataSource:(id)source
{
  dCopy = d;
  sourceCopy = source;
  v13.receiver = self;
  v13.super_class = HMDAppleMediaAccessorySleepWakeStateController;
  v8 = [(HMDAppleMediaAccessorySleepWakeStateController *)&v13 init];
  v9 = v8;
  if (v8)
  {
    v8->_lock._os_unfair_lock_opaque = 0;
    v10 = objc_msgSend_copy(dCopy);
    accessoryUUID = v9->_accessoryUUID;
    v9->_accessoryUUID = v10;

    objc_storeWeak(&v9->_dataSource, sourceCopy);
  }

  return v9;
}

@end