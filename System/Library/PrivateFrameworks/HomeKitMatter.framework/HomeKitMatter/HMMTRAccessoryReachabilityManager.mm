@interface HMMTRAccessoryReachabilityManager
+ (id)logCategory;
- (HMMTRAccessoryReachabilityManager)initWithServer:(id)server timeout:(int64_t)timeout queue:(id)queue;
- (HMMTRAccessoryServer)server;
- (void)reachabilityUpdate;
- (void)start;
- (void)stop;
- (void)timerDidFire:(id)fire;
@end

@implementation HMMTRAccessoryReachabilityManager

- (HMMTRAccessoryServer)server
{
  WeakRetained = objc_loadWeakRetained(&self->_server);

  return WeakRetained;
}

- (void)timerDidFire:(id)fire
{
  v18 = *MEMORY[0x277D85DE8];
  fireCopy = fire;
  if ([(HMMTRAccessoryReachabilityManager *)self reachable])
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      server = [(HMMTRAccessoryReachabilityManager *)selfCopy server];
      [fireCopy timeInterval];
      v12 = 138543874;
      v13 = v8;
      v14 = 2112;
      v15 = server;
      v16 = 2048;
      v17 = v10;
      _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Accessory Server: %@ did not report in over %.2f seconds, marking unreachable", &v12, 0x20u);
    }

    objc_autoreleasePoolPop(v5);
    [(HMMTRAccessoryReachabilityManager *)selfCopy setReachable:0];
    server2 = [(HMMTRAccessoryReachabilityManager *)selfCopy server];
    [server2 didUpdateReachability:{-[HMMTRAccessoryReachabilityManager reachable](selfCopy, "reachable")}];
  }
}

- (void)reachabilityUpdate
{
  v14 = *MEMORY[0x277D85DE8];
  if (![(HMMTRAccessoryReachabilityManager *)self reachable])
  {
    [(HMMTRAccessoryReachabilityManager *)self setReachable:1];
    server = [(HMMTRAccessoryReachabilityManager *)self server];
    [server didUpdateReachability:{-[HMMTRAccessoryReachabilityManager reachable](self, "reachable")}];

    v4 = objc_autoreleasePoolPush();
    selfCopy = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      server2 = [(HMMTRAccessoryReachabilityManager *)selfCopy server];
      v10 = 138543618;
      v11 = v7;
      v12 = 2112;
      v13 = server2;
      _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_INFO, "%{public}@Accessory Server: %@ became reachable again", &v10, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }

  reachabilityTimer = [(HMMTRAccessoryReachabilityManager *)self reachabilityTimer];
  [reachabilityTimer resume];
}

- (void)stop
{
  v13 = *MEMORY[0x277D85DE8];
  reachabilityTimer = [(HMMTRAccessoryReachabilityManager *)self reachabilityTimer];
  [reachabilityTimer suspend];

  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    server = [(HMMTRAccessoryReachabilityManager *)selfCopy server];
    v9 = 138543618;
    v10 = v7;
    v11 = 2112;
    v12 = server;
    _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_INFO, "%{public}@Accessory Server: %@ stopped updating reachability", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
}

- (void)start
{
  reachabilityTimer = [(HMMTRAccessoryReachabilityManager *)self reachabilityTimer];
  [reachabilityTimer resume];
}

- (HMMTRAccessoryReachabilityManager)initWithServer:(id)server timeout:(int64_t)timeout queue:(id)queue
{
  serverCopy = server;
  queueCopy = queue;
  v15.receiver = self;
  v15.super_class = HMMTRAccessoryReachabilityManager;
  v10 = [(HMMTRAccessoryReachabilityManager *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_server, serverCopy);
    v11->_reachable = 0;
    v12 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:8 options:timeout];
    reachabilityTimer = v11->_reachabilityTimer;
    v11->_reachabilityTimer = v12;

    [(HMFTimer *)v11->_reachabilityTimer setDelegateQueue:queueCopy];
    [(HMFTimer *)v11->_reachabilityTimer setDelegate:v11];
  }

  return v11;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t3 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t3, &__block_literal_global_960);
  }

  v3 = logCategory__hmf_once_v4;

  return v3;
}

uint64_t __48__HMMTRAccessoryReachabilityManager_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v4;
  logCategory__hmf_once_v4 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end