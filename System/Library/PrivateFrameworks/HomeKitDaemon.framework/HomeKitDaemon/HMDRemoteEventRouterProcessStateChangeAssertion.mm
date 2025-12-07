@interface HMDRemoteEventRouterProcessStateChangeAssertion
+ (id)logCategory;
- (HMDRemoteEventRouterProcessStateChangeAssertion)initWithQueue:(id)queue timerProvider:(id)provider applicationsAndIntervals:(id)intervals dataSource:(id)source;
- (HMDRemoteEventRouterProcessStateChangeAssertionDataSource)dataSource;
- (HMETimerProvider)timerProvider;
- (id)_enableBackgroundTimerWithBundleIdentifier:(id)identifier;
- (void)_backgroundTimerDidExpire:(id)expire;
- (void)_removeBackgroundTimer:(id)timer;
- (void)handleProcessWithBundleIdentifier:(id)identifier updatedIsActive:(BOOL)active;
@end

@implementation HMDRemoteEventRouterProcessStateChangeAssertion

+ (id)logCategory
{
  if (logCategory__hmf_once_t10_210222 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t10_210222, &__block_literal_global_210223);
  }

  v3 = logCategory__hmf_once_v11_210224;

  return v3;
}

- (HMDRemoteEventRouterProcessStateChangeAssertionDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (HMETimerProvider)timerProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_timerProvider);

  return WeakRetained;
}

- (void)_backgroundTimerDidExpire:(id)expire
{
  v37 = *MEMORY[0x277D85DE8];
  expireCopy = expire;
  queue = [(HMDRemoteEventRouterProcessStateChangeAssertion *)self queue];
  dispatch_assert_queue_V2(queue);

  backgroundProcesses = [(HMDRemoteEventRouterProcessStateChangeAssertion *)self backgroundProcesses];
  v7 = [backgroundProcesses objectForKeyedSubscript:expireCopy];

  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v31 = 138543874;
    v32 = v11;
    v33 = 2112;
    v34 = expireCopy;
    v35 = 2112;
    v36 = v7;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@bundleIdentifier: %@ backgroundTimer: %@ expired.", &v31, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  if (v7)
  {
    [(HMDRemoteEventRouterProcessStateChangeAssertion *)selfCopy _removeBackgroundTimer:v7];
    backgroundProcesses2 = [(HMDRemoteEventRouterProcessStateChangeAssertion *)selfCopy backgroundProcesses];
    [backgroundProcesses2 removeObjectForKey:expireCopy];
  }

  v13 = objc_autoreleasePoolPush();
  v14 = selfCopy;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    foregroundProcesses = [(HMDRemoteEventRouterProcessStateChangeAssertion *)v14 foregroundProcesses];
    backgroundProcesses3 = [(HMDRemoteEventRouterProcessStateChangeAssertion *)v14 backgroundProcesses];
    v31 = 138543874;
    v32 = v16;
    v33 = 2112;
    v34 = foregroundProcesses;
    v35 = 2112;
    v36 = backgroundProcesses3;
    _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@foregroundProcesses %@, backgroundProcesses %@", &v31, 0x20u);
  }

  objc_autoreleasePoolPop(v13);
  foregroundProcesses2 = [(HMDRemoteEventRouterProcessStateChangeAssertion *)v14 foregroundProcesses];
  if ([foregroundProcesses2 hmf_isEmpty])
  {
    backgroundProcesses4 = [(HMDRemoteEventRouterProcessStateChangeAssertion *)v14 backgroundProcesses];
    v21 = [backgroundProcesses4 count] != 0;
  }

  else
  {
    v21 = 1;
  }

  v22 = objc_autoreleasePoolPush();
  v23 = v14;
  v24 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    v25 = HMFGetLogIdentifier();
    eventRouterActiveAssertion = [(HMDRemoteEventRouterProcessStateChangeAssertion *)v23 eventRouterActiveAssertion];
    v27 = HMFBooleanToString();
    v28 = HMFBooleanToString();
    v31 = 138543874;
    v32 = v25;
    v33 = 2112;
    v34 = v27;
    v35 = 2112;
    v36 = v28;
    _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_INFO, "%{public}@self.isProcessForeground %@, isProcessForeground %@", &v31, 0x20u);
  }

  objc_autoreleasePoolPop(v22);
  if (!v21)
  {
    eventRouterActiveAssertion2 = [(HMDRemoteEventRouterProcessStateChangeAssertion *)v23 eventRouterActiveAssertion];

    if (eventRouterActiveAssertion2)
    {
      eventRouterActiveAssertion3 = [(HMDRemoteEventRouterProcessStateChangeAssertion *)v23 eventRouterActiveAssertion];
      [eventRouterActiveAssertion3 cancel];

      [(HMDRemoteEventRouterProcessStateChangeAssertion *)v23 setEventRouterActiveAssertion:0];
    }
  }
}

- (void)_removeBackgroundTimer:(id)timer
{
  v14 = *MEMORY[0x277D85DE8];
  timerCopy = timer;
  queue = [(HMDRemoteEventRouterProcessStateChangeAssertion *)self queue];
  dispatch_assert_queue_V2(queue);

  if (timerCopy)
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v10 = 138543618;
      v11 = v9;
      v12 = 2112;
      v13 = timerCopy;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Remove backgroundTimer: %@", &v10, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    [timerCopy suspend];
  }
}

- (id)_enableBackgroundTimerWithBundleIdentifier:(id)identifier
{
  v32 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  queue = [(HMDRemoteEventRouterProcessStateChangeAssertion *)self queue];
  dispatch_assert_queue_V2(queue);

  applicationsAndIntervals = [(HMDRemoteEventRouterProcessStateChangeAssertion *)self applicationsAndIntervals];
  v7 = [applicationsAndIntervals objectForKeyedSubscript:identifierCopy];
  [v7 doubleValue];
  v9 = v8;

  timerProvider = [(HMDRemoteEventRouterProcessStateChangeAssertion *)self timerProvider];
  queue2 = [(HMDRemoteEventRouterProcessStateChangeAssertion *)self queue];
  v20 = MEMORY[0x277D85DD0];
  v21 = 3221225472;
  v22 = __94__HMDRemoteEventRouterProcessStateChangeAssertion__enableBackgroundTimerWithBundleIdentifier___block_invoke;
  v23 = &unk_27868A750;
  selfCopy = self;
  v12 = identifierCopy;
  v25 = v12;
  v13 = [timerProvider timerWithQueue:queue2 interval:&v20 timerFireHandler:v9];

  v14 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    v18 = [MEMORY[0x277CCABB0] numberWithDouble:{v9, v20, v21, v22, v23, selfCopy}];
    *buf = 138543874;
    v27 = v17;
    v28 = 2112;
    v29 = v13;
    v30 = 2112;
    v31 = v18;
    _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Starting backgroundTimer: %@ interval: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v14);
  [v13 resume];

  return v13;
}

- (void)handleProcessWithBundleIdentifier:(id)identifier updatedIsActive:(BOOL)active
{
  activeCopy = active;
  v23 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  applicationsAndIntervals = [(HMDRemoteEventRouterProcessStateChangeAssertion *)self applicationsAndIntervals];
  v8 = [applicationsAndIntervals objectForKey:identifierCopy];

  if (v8)
  {
    queue = [(HMDRemoteEventRouterProcessStateChangeAssertion *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __101__HMDRemoteEventRouterProcessStateChangeAssertion_handleProcessWithBundleIdentifier_updatedIsActive___block_invoke;
    block[3] = &unk_278688BD0;
    block[4] = self;
    v15 = identifierCopy;
    v16 = activeCopy;
    dispatch_async(queue, block);
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543874;
      v18 = v13;
      v19 = 2112;
      v20 = identifierCopy;
      v21 = 1024;
      v22 = activeCopy;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_DEBUG, "%{public}@Ignoring foreground state change for application %@ with isActive: %{BOOL}d", buf, 0x1Cu);
    }

    objc_autoreleasePoolPop(v10);
  }
}

void __101__HMDRemoteEventRouterProcessStateChangeAssertion_handleProcessWithBundleIdentifier_updatedIsActive___block_invoke(uint64_t a1)
{
  v42 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v36 = 138543874;
    v37 = v5;
    v38 = 2112;
    v39 = v6;
    v40 = 1024;
    LODWORD(v41) = v7;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Application %@ isActive state changed to %{BOOL}d", &v36, 0x1Cu);
  }

  objc_autoreleasePoolPop(v2);
  v8 = *(a1 + 48);
  v9 = [*(a1 + 32) foregroundProcesses];
  v10 = v9;
  v11 = *(a1 + 40);
  if (v8 == 1)
  {
    [v9 addObject:v11];

    v12 = [*(a1 + 32) backgroundProcesses];
    v13 = [v12 objectForKeyedSubscript:*(a1 + 40)];

    if (v13)
    {
      [*(a1 + 32) _removeBackgroundTimer:v13];
      v14 = [*(a1 + 32) backgroundProcesses];
      [v14 removeObjectForKey:*(a1 + 40)];
    }

    v15 = objc_autoreleasePoolPush();
    v16 = *(a1 + 32);
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      v19 = [*(a1 + 32) eventRouterActiveAssertion];
      v20 = HMFBooleanToString();
      v36 = 138543618;
      v37 = v18;
      v38 = 2112;
      v39 = v20;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@self.isProcessForeground %@, isProcessForeground YES", &v36, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    v21 = [*(a1 + 32) eventRouterActiveAssertion];

    if (!v21)
    {
      v22 = [*(a1 + 32) dataSource];
      v23 = [v22 createEventRouterAssertion];
      [*(a1 + 32) setEventRouterActiveAssertion:v23];

LABEL_13:
    }
  }

  else
  {
    [v9 removeObject:v11];

    v24 = [*(a1 + 32) backgroundProcesses];
    v13 = [v24 objectForKeyedSubscript:*(a1 + 40)];

    if (v13)
    {
      goto LABEL_14;
    }

    v25 = [*(a1 + 32) _enableBackgroundTimerWithBundleIdentifier:*(a1 + 40)];
    if (v25)
    {
      v13 = v25;
      v22 = [*(a1 + 32) backgroundProcesses];
      [v22 setObject:v13 forKey:*(a1 + 40)];
      goto LABEL_13;
    }

    v32 = objc_autoreleasePoolPush();
    v33 = *(a1 + 32);
    v34 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = HMFGetLogIdentifier();
      v36 = 138543362;
      v37 = v35;
      _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_ERROR, "%{public}@Failed to enable background timer.", &v36, 0xCu);
    }

    objc_autoreleasePoolPop(v32);
    v13 = 0;
  }

LABEL_14:

  v26 = objc_autoreleasePoolPush();
  v27 = *(a1 + 32);
  v28 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
  {
    v29 = HMFGetLogIdentifier();
    v30 = [*(a1 + 32) foregroundProcesses];
    v31 = [*(a1 + 32) backgroundProcesses];
    v36 = 138543874;
    v37 = v29;
    v38 = 2112;
    v39 = v30;
    v40 = 2112;
    v41 = v31;
    _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_INFO, "%{public}@foregroundProcesses %@, backgroundProcesses %@", &v36, 0x20u);
  }

  objc_autoreleasePoolPop(v26);
}

- (HMDRemoteEventRouterProcessStateChangeAssertion)initWithQueue:(id)queue timerProvider:(id)provider applicationsAndIntervals:(id)intervals dataSource:(id)source
{
  queueCopy = queue;
  providerCopy = provider;
  intervalsCopy = intervals;
  sourceCopy = source;
  v23.receiver = self;
  v23.super_class = HMDRemoteEventRouterProcessStateChangeAssertion;
  v15 = [(HMDRemoteEventRouterProcessStateChangeAssertion *)&v23 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_queue, queue);
    objc_storeWeak(&v16->_timerProvider, providerCopy);
    objc_storeStrong(&v16->_applicationsAndIntervals, intervals);
    objc_storeWeak(&v16->_dataSource, sourceCopy);
    eventRouterActiveAssertion = v16->_eventRouterActiveAssertion;
    v16->_eventRouterActiveAssertion = 0;

    v18 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(intervalsCopy, "count")}];
    foregroundProcesses = v16->_foregroundProcesses;
    v16->_foregroundProcesses = v18;

    v20 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(intervalsCopy, "count")}];
    backgroundProcesses = v16->_backgroundProcesses;
    v16->_backgroundProcesses = v20;
  }

  return v16;
}

void __62__HMDRemoteEventRouterProcessStateChangeAssertion_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v11_210224;
  logCategory__hmf_once_v11_210224 = v0;
}

@end