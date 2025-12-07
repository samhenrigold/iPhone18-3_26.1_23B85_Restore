@interface HMMTRAttributeTimer
+ (id)logCategory;
- (HMMTRAccessoryServer)server;
- (HMMTRAttributeTimer)initWithServer:(id)server report:(id)report timeout:(double)timeout queue:(id)queue server:(id)a7;
- (void)start;
- (void)stop;
- (void)timerDidFire:(id)fire;
- (void)updateReport:(id)report;
@end

@implementation HMMTRAttributeTimer

- (HMMTRAccessoryServer)server
{
  WeakRetained = objc_loadWeakRetained(&self->_server);

  return WeakRetained;
}

- (void)timerDidFire:(id)fire
{
  v18 = *MEMORY[0x277D85DE8];
  fireCopy = fire;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    path = selfCopy->_path;
    report = selfCopy->_report;
    v12 = 138543874;
    v13 = v8;
    v14 = 2112;
    v15 = path;
    v16 = 2112;
    v17 = report;
    _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Attribute timer triggered for path %@ with report %@", &v12, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  server = [(HMMTRAttributeTimer *)selfCopy server];
  [server processAttributeReport:selfCopy->_report];
}

- (void)stop
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = HMFGetLogIdentifier();
    path = selfCopy->_path;
    v9 = 138543618;
    v10 = v6;
    v11 = 2112;
    v12 = path;
    _os_log_impl(&dword_22AEAE000, v5, OS_LOG_TYPE_DEBUG, "%{public}@Stopping attribute timer for path %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  attributeTimer = [(HMMTRAttributeTimer *)selfCopy attributeTimer];
  [attributeTimer suspend];
}

- (void)start
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = HMFGetLogIdentifier();
    [(HMFTimer *)selfCopy->_attributeTimer timeInterval];
    path = selfCopy->_path;
    v10 = 138543874;
    v11 = v6;
    v12 = 2048;
    v13 = v8;
    v14 = 2112;
    v15 = path;
    _os_log_impl(&dword_22AEAE000, v5, OS_LOG_TYPE_DEBUG, "%{public}@Starting attribute timer with delay of %f for path %@", &v10, 0x20u);
  }

  objc_autoreleasePoolPop(v3);
  attributeTimer = [(HMMTRAttributeTimer *)selfCopy attributeTimer];
  [attributeTimer resume];
}

- (void)updateReport:(id)report
{
  v19 = *MEMORY[0x277D85DE8];
  reportCopy = report;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    path = selfCopy->_path;
    v13 = 138543874;
    v14 = v8;
    v15 = 2112;
    v16 = path;
    v17 = 2112;
    v18 = reportCopy;
    _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Update report for path %@ with report %@ and reset timer", &v13, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  v10 = [reportCopy mutableCopy];
  report = selfCopy->_report;
  selfCopy->_report = v10;

  attributeTimer = [(HMMTRAttributeTimer *)selfCopy attributeTimer];
  [attributeTimer resume];
}

- (HMMTRAttributeTimer)initWithServer:(id)server report:(id)report timeout:(double)timeout queue:(id)queue server:(id)a7
{
  serverCopy = server;
  reportCopy = report;
  queueCopy = queue;
  v16 = a7;
  v24.receiver = self;
  v24.super_class = HMMTRAttributeTimer;
  v17 = [(HMMTRAttributeTimer *)&v24 init];
  v18 = v17;
  if (v17)
  {
    objc_storeWeak(&v17->_server, v16);
    objc_storeStrong(&v18->_path, server);
    v19 = [reportCopy mutableCopy];
    report = v18->_report;
    v18->_report = v19;

    v21 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:2 options:timeout];
    attributeTimer = v18->_attributeTimer;
    v18->_attributeTimer = v21;

    [(HMFTimer *)v18->_attributeTimer setDelegateQueue:queueCopy];
    [(HMFTimer *)v18->_attributeTimer setDelegate:v18];
  }

  return v18;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t4_3696 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t4_3696, &__block_literal_global_3697);
  }

  v3 = logCategory__hmf_once_v5_3698;

  return v3;
}

uint64_t __34__HMMTRAttributeTimer_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v5_3698;
  logCategory__hmf_once_v5_3698 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end