@interface HMDWatchSystemState
+ (id)sharedState;
- (BOOL)isCompanionReachable;
- (HMDWatchSystemState)init;
- (NSHashTable)watchSystemStateDelegates;
- (void)_callDidUpdateReachabilityChangeForCompanion:(BOOL)companion forDelegate:(id)delegate;
- (void)registerDelegate:(id)delegate;
- (void)setCompanionReachable:(BOOL)reachable;
@end

@implementation HMDWatchSystemState

- (void)_callDidUpdateReachabilityChangeForCompanion:(BOOL)companion forDelegate:(id)delegate
{
  companionCopy = companion;
  delegateCopy = delegate;
  if ([delegateCopy conformsToProtocol:&unk_2867138E0] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [delegateCopy didUpdateReachabilityChangeForCompanion:companionCopy];
  }
}

- (void)registerDelegate:(id)delegate
{
  delegateCopy = delegate;
  os_unfair_lock_lock_with_options();
  [(NSHashTable *)self->_watchSystemStateDelegates addObject:delegateCopy];
  os_unfair_lock_unlock(&self->_lock);
}

- (NSHashTable)watchSystemStateDelegates
{
  os_unfair_lock_lock_with_options();
  v3 = objc_msgSend_copy(self->_watchSystemStateDelegates);
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setCompanionReachable:(BOOL)reachable
{
  reachableCopy = reachable;
  v26 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock_with_options();
  if (self->_companionReachable == reachableCopy)
  {

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v8 = HMFBooleanToString();
      v9 = HMFBooleanToString();
      *buf = 138543874;
      v21 = v7;
      v22 = 2112;
      v23 = v8;
      v24 = 2112;
      v25 = v9;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@[HMDWatchState] companion reachability is changing from %@ to %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v5);
    v10 = +[HMDWatchConnectivityLogEventManager sharedInstance];
    if (reachableCopy)
    {
      [v10 incrementWatchAddedNotificationCount];
    }

    else
    {
      [v10 incrementWatchRemovedNotificationCount];
    }

    self->_companionReachable = reachableCopy;
    os_unfair_lock_unlock(&self->_lock);
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v11 = self->_watchSystemStateDelegates;
    v12 = [(NSHashTable *)v11 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v12)
    {
      v13 = *v16;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v16 != v13)
          {
            objc_enumerationMutation(v11);
          }

          [(HMDWatchSystemState *)self _callDidUpdateReachabilityChangeForCompanion:reachableCopy forDelegate:*(*(&v15 + 1) + 8 * i), v15];
        }

        v12 = [(NSHashTable *)v11 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v12);
    }
  }
}

- (BOOL)isCompanionReachable
{
  os_unfair_lock_lock_with_options();
  companionReachable = self->_companionReachable;
  os_unfair_lock_unlock(&self->_lock);
  return companionReachable;
}

- (HMDWatchSystemState)init
{
  v7.receiver = self;
  v7.super_class = HMDWatchSystemState;
  v2 = [(HMDWatchSystemState *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_companionReachable = 0;
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    watchSystemStateDelegates = v3->_watchSystemStateDelegates;
    v3->_watchSystemStateDelegates = weakObjectsHashTable;
  }

  return v3;
}

+ (id)sharedState
{
  if (isWatch())
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __34__HMDWatchSystemState_sharedState__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = self;
    if (sharedState_onceToken != -1)
    {
      dispatch_once(&sharedState_onceToken, block);
    }

    v3 = sharedState_shared;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t __34__HMDWatchSystemState_sharedState__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedState_shared;
  sharedState_shared = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end