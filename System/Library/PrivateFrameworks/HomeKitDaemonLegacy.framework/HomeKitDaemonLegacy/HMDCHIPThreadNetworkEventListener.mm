@interface HMDCHIPThreadNetworkEventListener
+ (id)logCategory;
- (HMDCHIPThreadNetworkEventListener)initWithThreadResidentCommissioner:(id)commissioner;
- (HMDCHIPThreadNetworkEventListenerDelegate)eventListenerDelegate;
- (void)dealloc;
- (void)stopListeningForEvents;
- (void)threadBTCallStateChange:(id)change;
- (void)threadNetworkStateChange:(id)change;
@end

@implementation HMDCHIPThreadNetworkEventListener

- (HMDCHIPThreadNetworkEventListenerDelegate)eventListenerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_eventListenerDelegate);

  return WeakRetained;
}

- (void)threadBTCallStateChange:(id)change
{
  v16 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  callState = [changeCopy callState];
  if (!callState)
  {
LABEL_7:
    v6 = 0;
    goto LABEL_8;
  }

  if (callState != 1)
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v12 = 138543618;
      v13 = v10;
      v14 = 2112;
      v15 = changeCopy;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@Unexpected event %@", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    goto LABEL_7;
  }

  v6 = 1;
LABEL_8:
  eventListenerDelegate = [(HMDCHIPThreadNetworkEventListener *)self eventListenerDelegate];
  if (eventListenerDelegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [eventListenerDelegate handleThreadBTCallStateChange:v6];
  }
}

- (void)threadNetworkStateChange:(id)change
{
  v28 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138544130;
    v21 = v8;
    v22 = 2112;
    v23 = changeCopy;
    v24 = 2048;
    eventType = [changeCopy eventType];
    v26 = 2048;
    eventValue = [changeCopy eventValue];
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@threadNetworkStateChange - received event %@, type %ld, value %ld", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v5);
  eventListenerDelegate = [(HMDCHIPThreadNetworkEventListener *)selfCopy eventListenerDelegate];
  eventType2 = [changeCopy eventType];
  if (eventType2 == 1)
  {
    -[HMDCHIPThreadNetworkEventListener setThreadNetworkNodeType:](selfCopy, "setThreadNetworkNodeType:", [changeCopy eventValue]);
  }

  else if (eventType2)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = selfCopy;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v21 = v14;
      v22 = 2112;
      v23 = changeCopy;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Unexpected event %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
  }

  else
  {
    -[HMDCHIPThreadNetworkEventListener setThreadNetworkConnectionState:](selfCopy, "setThreadNetworkConnectionState:", [changeCopy eventValue]);
  }

  if (![(HMDCHIPThreadNetworkEventListener *)selfCopy pendingRadioStateChangeNotification])
  {
    [(HMDCHIPThreadNetworkEventListener *)selfCopy setPendingRadioStateChangeNotification:1];
    objc_initWeak(buf, selfCopy);
    v15 = dispatch_time(0, 50000000);
    v16 = dispatch_get_global_queue(21, 0);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __62__HMDCHIPThreadNetworkEventListener_threadNetworkStateChange___block_invoke;
    v17[3] = &unk_279732E78;
    objc_copyWeak(&v19, buf);
    v18 = eventListenerDelegate;
    dispatch_after(v15, v16, v17);

    objc_destroyWeak(&v19);
    objc_destroyWeak(buf);
  }
}

void __62__HMDCHIPThreadNetworkEventListener_threadNetworkStateChange___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setPendingRadioStateChangeNotification:0];
  if (*(a1 + 32) && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [*(a1 + 32) handleNetworkStateChange];
  }
}

- (void)stopListeningForEvents
{
  v10 = *MEMORY[0x277D85DE8];
  threadResidentCommissioner = [(HMDCHIPThreadNetworkEventListener *)self threadResidentCommissioner];
  [threadResidentCommissioner unregisterForThreadNetworkEvents:self];

  [(HMDCHIPThreadNetworkEventListener *)self setThreadResidentCommissioner:0];
  [(HMDCHIPThreadNetworkEventListener *)self setThreadNetworkConnectionState:1];
  [(HMDCHIPThreadNetworkEventListener *)self setThreadNetworkNodeType:0];
  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v7;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@stopped listening for events", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
}

- (void)dealloc
{
  threadResidentCommissioner = self->_threadResidentCommissioner;
  if (threadResidentCommissioner)
  {
    [(HMDThreadResidentCommissioner *)threadResidentCommissioner unregisterForThreadNetworkEvents:self];
  }

  v4.receiver = self;
  v4.super_class = HMDCHIPThreadNetworkEventListener;
  [(HMDCHIPThreadNetworkEventListener *)&v4 dealloc];
}

- (HMDCHIPThreadNetworkEventListener)initWithThreadResidentCommissioner:(id)commissioner
{
  v16 = *MEMORY[0x277D85DE8];
  commissionerCopy = commissioner;
  v13.receiver = self;
  v13.super_class = HMDCHIPThreadNetworkEventListener;
  v6 = [(HMDCHIPThreadNetworkEventListener *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_threadResidentCommissioner, commissioner);
    [(HMDThreadResidentCommissioner *)v7->_threadResidentCommissioner registerForThreadNetworkEvents:v7];
    v8 = objc_autoreleasePoolPush();
    v9 = v7;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      v15 = v11;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@started listening for events", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
  }

  return v7;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t5_46420 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t5_46420, &__block_literal_global_46421);
  }

  v3 = logCategory__hmf_once_v6_46422;

  return v3;
}

uint64_t __48__HMDCHIPThreadNetworkEventListener_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v6_46422;
  logCategory__hmf_once_v6_46422 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end