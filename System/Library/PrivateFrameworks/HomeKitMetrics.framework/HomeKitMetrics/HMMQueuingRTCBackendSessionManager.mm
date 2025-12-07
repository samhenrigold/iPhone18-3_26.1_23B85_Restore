@interface HMMQueuingRTCBackendSessionManager
+ (id)logCategory;
+ (id)sharedSessionManager;
- (BOOL)_isTimeValid;
- (HMMQueuingRTCBackendSessionManager)initWithRTCFactory:(id)factory timeSourceBlock:(id)block;
- (id)logBackendSessionWithServiceName:(id)name sessionUUID:(id)d isRealtime:(BOOL)realtime;
- (void)addBarrierBlock:(id)block;
- (void)checkForStaleSessions;
- (void)sendMetaEventWithName:(id)name forServiceName:(id)serviceName;
- (void)submitMessages:(id)messages serviceName:(id)name sessionUUID:(id)d isRealtime:(BOOL)realtime;
@end

@implementation HMMQueuingRTCBackendSessionManager

- (void)addBarrierBlock:(id)block
{
  blockCopy = block;
  queue = [(HMMQueuingRTCBackendSessionManager *)self queue];
  [queue addBarrierBlock:blockCopy];
}

- (void)checkForStaleSessions
{
  v28 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock_with_options();
  v3 = (*(self->_timeSourceBlock + 2))();
  if (v3 >= self->_nextStaleCheckTime)
  {
    v4 = objc_autoreleasePoolPush();
    selfCopy = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      *buf = 138543362;
      v25 = v7;
      _os_log_impl(&dword_22B074000, v6, OS_LOG_TYPE_INFO, "%{public}@Checking for stale backend sessions", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    v8 = 0;
    *&v9 = 138543618;
    v21 = v9;
    while (v8 < [(NSPointerArray *)selfCopy->_activeSessions count])
    {
      v10 = [(NSPointerArray *)selfCopy->_activeSessions pointerAtIndex:v8];
      v11 = v10;
      if (v10 && ([v10 lastEventTime], v3 - v12 > 3600.0))
      {
        v13 = objc_autoreleasePoolPush();
        v14 = selfCopy;
        v15 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = HMFGetLogIdentifier();
          serviceName = [v11 serviceName];
          *buf = v21;
          v25 = v16;
          v26 = 2112;
          v27 = serviceName;
          _os_log_impl(&dword_22B074000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@Found stale session for service %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v13);
        v22[0] = @"HMFSessionIdentifier";
        sessionUUID = [v11 sessionUUID];
        v23[0] = sessionUUID;
        v23[1] = @"HMFLogging.StaleSession";
        v22[1] = @"HMFEventName";
        v22[2] = @"HMFTimestamp";
        v19 = [MEMORY[0x277CCABB0] numberWithDouble:v3];
        v23[2] = v19;
        v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:3];
        [v11 sendMessage:v20];

        [v11 close];
        [(NSPointerArray *)selfCopy->_activeSessions removePointerAtIndex:v8];
      }

      else
      {
        ++v8;
      }
    }

    self->_nextStaleCheckTime = v3 + 3600.0;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)submitMessages:(id)messages serviceName:(id)name sessionUUID:(id)d isRealtime:(BOOL)realtime
{
  realtimeCopy = realtime;
  v28 = *MEMORY[0x277D85DE8];
  messagesCopy = messages;
  nameCopy = name;
  dCopy = d;
  v13 = objc_autoreleasePoolPush();
  selfCopy = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v16 = HMFGetLogIdentifier();
    *buf = 138543874;
    v23 = v16;
    v24 = 2112;
    v25 = dCopy;
    v26 = 2048;
    v27 = [messagesCopy count];
    _os_log_impl(&dword_22B074000, v15, OS_LOG_TYPE_DEBUG, "%{public}@[%@] Queuing session containing %lu messages for submission", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v13);
  queue = [(HMMQueuingRTCBackendSessionManager *)selfCopy queue];
  v18 = [HMMQueuingRTCBackendOperation alloc];
  rtcFactory = [(HMMQueuingRTCBackendSessionManager *)selfCopy rtcFactory];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __88__HMMQueuingRTCBackendSessionManager_submitMessages_serviceName_sessionUUID_isRealtime___block_invoke;
  v21[3] = &unk_2786F8F68;
  v21[4] = selfCopy;
  v20 = [(HMMQueuingRTCBackendOperation *)v18 initWithMessages:messagesCopy serviceName:nameCopy sessionUUID:dCopy isRealtime:realtimeCopy rtcFactory:rtcFactory staleSessionBlock:v21];
  [queue addOperation:v20];
}

- (void)sendMetaEventWithName:(id)name forServiceName:(id)serviceName
{
  v16[1] = *MEMORY[0x277D85DE8];
  v15[0] = name;
  v6 = MEMORY[0x277CCABB0];
  serviceNameCopy = serviceName;
  nameCopy = name;
  v9 = [(HMMQueuingRTCBackendSessionManager *)self timeSourceBlock:@"HMFMetaEventName"];
  v9[2]();
  v10 = [v6 numberWithDouble:?];
  v14[2] = @"HMFCorrespondingServiceName";
  v15[1] = v10;
  v15[2] = serviceNameCopy;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];
  v16[0] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  uUID = [MEMORY[0x277CCAD78] UUID];

  [(HMMQueuingRTCBackendSessionManager *)self submitMessages:v12 serviceName:@"HMFMeta" sessionUUID:uUID isRealtime:0];
}

- (id)logBackendSessionWithServiceName:(id)name sessionUUID:(id)d isRealtime:(BOOL)realtime
{
  realtimeCopy = realtime;
  v23 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  dCopy = d;
  os_unfair_lock_lock_with_options();
  if (![(HMMQueuingRTCBackendSessionManager *)self _isTimeValid])
  {
    v10 = 0;
    goto LABEL_5;
  }

  [(NSPointerArray *)self->_activeSessions addPointer:0];
  [(NSPointerArray *)self->_activeSessions compact];
  if ([(NSPointerArray *)self->_activeSessions count]<= 0x3E7)
  {
    v10 = [[HMMQueuingRTCBackendSession alloc] initWithServiceName:nameCopy sessionUUID:dCopy isRealtime:realtimeCopy submitter:self timeSourceBlock:self->_timeSourceBlock];
    [(NSPointerArray *)self->_activeSessions hmf_addObject:v10];
LABEL_5:
    os_unfair_lock_unlock(&self->_lock);
    goto LABEL_9;
  }

  os_unfair_lock_unlock(&self->_lock);
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = HMFGetLogIdentifier();
    v15 = [(NSPointerArray *)self->_activeSessions count];
    v17 = 138543874;
    v18 = v14;
    v19 = 2048;
    v20 = v15;
    v21 = 2112;
    v22 = nameCopy;
    _os_log_impl(&dword_22B074000, v13, OS_LOG_TYPE_ERROR, "%{public}@%lu sessions already queued; creating a nil session for service %@", &v17, 0x20u);
  }

  objc_autoreleasePoolPop(v11);
  [(HMMQueuingRTCBackendSessionManager *)selfCopy sendMetaEventWithName:@"ExceededSessionMax" forServiceName:nameCopy];
  v10 = 0;
LABEL_9:

  return v10;
}

- (BOOL)_isTimeValid
{
  os_unfair_lock_assert_owner(&self->_lock);
  if (self->__isTimeValid)
  {
    return 1;
  }

  if (_isTimeValid_onceToken != -1)
  {
    dispatch_once(&_isTimeValid_onceToken, &__block_literal_global_115);
  }

  result = (*(self->_timeSourceBlock + 2))() >= *&_isTimeValid_minAllowedTime;
  self->__isTimeValid = result;
  return result;
}

void __50__HMMQueuingRTCBackendSessionManager__isTimeValid__block_invoke()
{
  v5 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  [v5 setDay:1];
  [v5 setMonth:1];
  [v5 setYear:2022];
  v0 = objc_alloc(MEMORY[0x277CBEA80]);
  v1 = [v0 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
  v2 = [MEMORY[0x277CBEBB0] timeZoneForSecondsFromGMT:0];
  [v1 setTimeZone:v2];

  v3 = [v1 dateFromComponents:v5];
  [v3 timeIntervalSince1970];
  _isTimeValid_minAllowedTime = v4;
}

- (HMMQueuingRTCBackendSessionManager)initWithRTCFactory:(id)factory timeSourceBlock:(id)block
{
  factoryCopy = factory;
  blockCopy = block;
  v18.receiver = self;
  v18.super_class = HMMQueuingRTCBackendSessionManager;
  v9 = [(HMMQueuingRTCBackendSessionManager *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_rtcFactory, factory);
    v11 = _Block_copy(blockCopy);
    timeSourceBlock = v10->_timeSourceBlock;
    v10->_timeSourceBlock = v11;

    v13 = objc_alloc_init(MEMORY[0x277CCABD8]);
    queue = v10->_queue;
    v10->_queue = v13;

    [(NSOperationQueue *)v10->_queue setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)v10->_queue setQualityOfService:9];
    weakObjectsPointerArray = [MEMORY[0x277CCAC18] weakObjectsPointerArray];
    activeSessions = v10->_activeSessions;
    v10->_activeSessions = weakObjectsPointerArray;

    v10->_nextStaleCheckTime = blockCopy[2](blockCopy) + 1800.0;
  }

  return v10;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t19 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t19, &__block_literal_global_129);
  }

  v3 = logCategory__hmf_once_v20;

  return v3;
}

uint64_t __49__HMMQueuingRTCBackendSessionManager_logCategory__block_invoke()
{
  logCategory__hmf_once_v20 = HMFCreateOSLogHandle();

  return MEMORY[0x2821F96F8]();
}

+ (id)sharedSessionManager
{
  if (sharedSessionManager__hmf_once_t11 != -1)
  {
    dispatch_once(&sharedSessionManager__hmf_once_t11, &__block_literal_global_107);
  }

  v3 = sharedSessionManager__hmf_once_v12;

  return v3;
}

void __58__HMMQueuingRTCBackendSessionManager_sharedSessionManager__block_invoke()
{
  v0 = [HMMQueuingRTCBackendSessionManager alloc];
  v3 = objc_alloc_init(HMMRTCReportingFactory);
  v1 = [(HMMQueuingRTCBackendSessionManager *)v0 initWithRTCFactory:v3 timeSourceBlock:&__block_literal_global_112];
  v2 = sharedSessionManager__hmf_once_v12;
  sharedSessionManager__hmf_once_v12 = v1;
}

double __58__HMMQueuingRTCBackendSessionManager_sharedSessionManager__block_invoke_2()
{
  v0 = [MEMORY[0x277CBEAA8] date];
  [v0 timeIntervalSince1970];
  v2 = v1;

  return v2;
}

@end