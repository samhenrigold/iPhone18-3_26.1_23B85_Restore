@interface HMMTROTAApplyUpdateTimer
+ (id)logCategory;
- (HMMTRAccessoryServer)server;
- (HMMTROTAApplyUpdateTimer)initWithServer:(id)server otaProvider:(id)provider newVersion:(id)version delay:(id)delay queue:(id)queue;
- (HMMTROTAProviderDelegate)otaProvider;
- (id)logIdentifier;
- (void)start;
- (void)stop;
- (void)timerDidFire:(id)fire;
@end

@implementation HMMTROTAApplyUpdateTimer

- (HMMTRAccessoryServer)server
{
  WeakRetained = objc_loadWeakRetained(&self->_server);

  return WeakRetained;
}

- (HMMTROTAProviderDelegate)otaProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_otaProvider);

  return WeakRetained;
}

- (id)logIdentifier
{
  v3 = MEMORY[0x277CCACA8];
  WeakRetained = objc_loadWeakRetained(&self->_server);
  nodeID = [WeakRetained nodeID];
  v6 = objc_loadWeakRetained(&self->_server);
  fabricID = [v6 fabricID];
  v8 = [v3 stringWithFormat:@"%@/%@", nodeID, fabricID];

  return v8;
}

- (void)timerDidFire:(id)fire
{
  v16 = *MEMORY[0x277D85DE8];
  fireCopy = fire;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    server = [(HMMTROTAApplyUpdateTimer *)selfCopy server];
    *buf = 138543618;
    v13 = v8;
    v14 = 2112;
    v15 = server;
    _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@OTA apply timed out for accessory server [%@]", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  WeakRetained = objc_loadWeakRetained(&selfCopy->_server);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __41__HMMTROTAApplyUpdateTimer_timerDidFire___block_invoke;
  v11[3] = &unk_2786F0A58;
  v11[4] = selfCopy;
  [WeakRetained fetchSoftwareVersion:1 completionHandler:v11];
}

void __41__HMMTROTAApplyUpdateTimer_timerDidFire___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
LABEL_5:

      objc_autoreleasePoolPop(v7);
      v14 = 0;
      goto LABEL_6;
    }

    v10 = HMFGetLogIdentifier();
    *v37 = 138543618;
    *&v37[4] = v10;
    *&v37[12] = 2112;
    *&v37[14] = v6;
    v11 = "%{public}@Failed to retrieve software version number: %@";
    v12 = v9;
    v13 = 22;
LABEL_4:
    _os_log_impl(&dword_22AEAE000, v12, OS_LOG_TYPE_ERROR, v11, v37, v13);

    goto LABEL_5;
  }

  if (!v5)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_5;
    }

    v10 = HMFGetLogIdentifier();
    *v37 = 138543362;
    *&v37[4] = v10;
    v11 = "%{public}@Failed to retrieve software version number, got nil object";
    v12 = v9;
    v13 = 12;
    goto LABEL_4;
  }

  v14 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v32 = v14;
  }

  else
  {
    v32 = 0;
  }

  v33 = v32;

  if (!v33)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v36 = HMFGetLogIdentifier();
      *v37 = 138543618;
      *&v37[4] = v36;
      *&v37[12] = 2112;
      *&v37[14] = v14;
      _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to retrieve software version number, unexpected object: %@", v37, 0x16u);
    }

    goto LABEL_5;
  }

  v34 = [*(a1 + 32) expectedVersion];
  v35 = [v34 isEqualToNumber:v14];

  if (v35)
  {
    v23 = [*(a1 + 32) otaProvider];
    v24 = [*(a1 + 32) server];
    v25 = &unk_283EE8FD0;
    goto LABEL_10;
  }

LABEL_6:
  [*(a1 + 32) setRetryCount:{objc_msgSend(*(a1 + 32), "retryCount", *v37, *&v37[8]) + 1}];
  v15 = objc_autoreleasePoolPush();
  v16 = *(a1 + 32);
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v18 = HMFGetLogIdentifier();
    v19 = [*(a1 + 32) expectedVersion];
    v20 = [*(a1 + 32) retryCount];
    *v37 = 138544130;
    *&v37[4] = v18;
    *&v37[12] = 2112;
    *&v37[14] = v19;
    *&v37[22] = 2112;
    v38 = v14;
    v39 = 2048;
    v40 = v20;
    _os_log_impl(&dword_22AEAE000, v17, OS_LOG_TYPE_ERROR, "%{public}@Expected Version %@, accessory reported %@ [Attempt %ld].", v37, 0x2Au);
  }

  objc_autoreleasePoolPop(v15);
  v21 = [*(a1 + 32) retryCount];
  v22 = *(a1 + 32);
  if (v21 >= 7)
  {
    v23 = [v22 otaProvider];
    v24 = [*(a1 + 32) server];
    v25 = &unk_283EE8FE8;
LABEL_10:
    [v23 applyUpdateTimerExpiredForAccessoryServer:v24 softwareVersion:v14 didTimeout:v25];

    goto LABEL_14;
  }

  if ([v22 retryCount] == 1)
  {
    v26 = [*(a1 + 32) updateTimer];
    v27 = [v26 delegateQueue];

    v28 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:0 options:300.0];
    [*(a1 + 32) setUpdateTimer:v28];

    v29 = [*(a1 + 32) updateTimer];
    [v29 setDelegateQueue:v27];

    v30 = *(a1 + 32);
    v31 = [v30 updateTimer];
    [v31 setDelegate:v30];
  }

  [*(a1 + 32) start];
LABEL_14:
}

- (void)stop
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    server = [(HMMTROTAApplyUpdateTimer *)selfCopy server];
    v9 = 138543618;
    v10 = v6;
    v11 = 2112;
    v12 = server;
    _os_log_impl(&dword_22AEAE000, v5, OS_LOG_TYPE_INFO, "%{public}@Stop OTA apply timeout for accessory server [%@]", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  updateTimer = [(HMMTROTAApplyUpdateTimer *)selfCopy updateTimer];
  [updateTimer suspend];
}

- (void)start
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    server = [(HMMTROTAApplyUpdateTimer *)selfCopy server];
    v9 = 138543618;
    v10 = v6;
    v11 = 2112;
    v12 = server;
    _os_log_impl(&dword_22AEAE000, v5, OS_LOG_TYPE_INFO, "%{public}@Starting OTA apply timeout for accessory server [%@]", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  updateTimer = [(HMMTROTAApplyUpdateTimer *)selfCopy updateTimer];
  [updateTimer resume];
}

- (HMMTROTAApplyUpdateTimer)initWithServer:(id)server otaProvider:(id)provider newVersion:(id)version delay:(id)delay queue:(id)queue
{
  serverCopy = server;
  providerCopy = provider;
  versionCopy = version;
  delayCopy = delay;
  queueCopy = queue;
  v22.receiver = self;
  v22.super_class = HMMTROTAApplyUpdateTimer;
  v17 = [(HMMTROTAApplyUpdateTimer *)&v22 init];
  v18 = v17;
  if (v17)
  {
    objc_storeWeak(&v17->_server, serverCopy);
    objc_storeStrong(&v18->_expectedVersion, version);
    v18->_retryCount = 0;
    objc_storeWeak(&v18->_otaProvider, providerCopy);
    v19 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:0 options:{(objc_msgSend(delayCopy, "integerValue") + 300)}];
    updateTimer = v18->_updateTimer;
    v18->_updateTimer = v19;

    [(HMFTimer *)v18->_updateTimer setDelegateQueue:queueCopy];
    [(HMFTimer *)v18->_updateTimer setDelegate:v18];
  }

  return v18;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t8_11468 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t8_11468, &__block_literal_global_11469);
  }

  v3 = logCategory__hmf_once_v9_11470;

  return v3;
}

uint64_t __39__HMMTROTAApplyUpdateTimer_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v9_11470;
  logCategory__hmf_once_v9_11470 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end