@interface HMFNetMonitor
+ (id)logCategory;
- (BOOL)isReachable;
- (HMFNetMonitor)initWithNetAddress:(id)address;
- (HMFNetMonitor)initWithNetService:(id)service;
- (HMFNetMonitorDelegate)delegate;
- (void)setReachable:(BOOL)reachable;
@end

@implementation HMFNetMonitor

- (HMFNetMonitor)initWithNetAddress:(id)address
{
  addressCopy = address;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v6 = [[__HMFNetAddressMonitor alloc] initWithNetAddress:addressCopy];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = HMFNetMonitor;
    v6 = [(HMFNetMonitor *)&v9 init];
    self = &v6->super;
  }

  p_super = &v6->super;

  return p_super;
}

- (HMFNetMonitor)initWithNetService:(id)service
{
  serviceCopy = service;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v6 = [[__HMFNetServiceMonitor alloc] initWithNetService:serviceCopy];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = HMFNetMonitor;
    v6 = [(HMFNetMonitor *)&v9 init];
    self = &v6->super;
  }

  p_super = &v6->super;

  return p_super;
}

- (BOOL)isReachable
{
  os_unfair_lock_lock_with_options();
  reachable = self->_reachable;
  os_unfair_lock_unlock(&self->_lock);
  return reachable;
}

- (void)setReachable:(BOOL)reachable
{
  reachableCopy = reachable;
  v26 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock_with_options();
  if (self->_reachable == reachableCopy)
  {

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    self->_reachable = reachableCopy;
    os_unfair_lock_unlock(&self->_lock);
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle(selfCopy, v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier(selfCopy);
      v10 = HMFBooleanToString(reachableCopy);
      v22 = 138543618;
      v23 = v9;
      v24 = 2112;
      v25 = v10;
      _os_log_impl(&dword_22ADEC000, v8, OS_LOG_TYPE_INFO, "%{public}@Reachability changed to: %@", &v22, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    delegate = [(HMFNetMonitor *)selfCopy delegate];
    if (reachableCopy)
    {
      if (objc_opt_respondsToSelector())
      {
        v12 = objc_autoreleasePoolPush();
        v13 = selfCopy;
        v15 = HMFGetOSLogHandle(v13, v14);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v16 = HMFGetLogIdentifier(v13);
          v22 = 138543362;
          v23 = v16;
          _os_log_impl(&dword_22ADEC000, v15, OS_LOG_TYPE_INFO, "%{public}@Notifying delegate address is reachable", &v22, 0xCu);
        }

        objc_autoreleasePoolPop(v12);
        [delegate networkMonitorIsReachable:v13];
      }
    }

    else if (objc_opt_respondsToSelector())
    {
      v17 = objc_autoreleasePoolPush();
      v18 = selfCopy;
      v20 = HMFGetOSLogHandle(v18, v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = HMFGetLogIdentifier(v18);
        v22 = 138543362;
        v23 = v21;
        _os_log_impl(&dword_22ADEC000, v20, OS_LOG_TYPE_INFO, "%{public}@Notifying delegate address is unreachable", &v22, 0xCu);
      }

      objc_autoreleasePoolPop(v17);
      [delegate networkMonitorIsUnreachable:v18];
    }
  }
}

+ (id)logCategory
{
  if (_MergedGlobals_3 != -1)
  {
    dispatch_once(&_MergedGlobals_3, &__block_literal_global_6);
  }

  v3 = qword_280AFC2B0;

  return v3;
}

uint64_t __28__HMFNetMonitor_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle(@"Networking.Monitor", @"com.apple.HMFoundation");
  v1 = qword_280AFC2B0;
  qword_280AFC2B0 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (HMFNetMonitorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end