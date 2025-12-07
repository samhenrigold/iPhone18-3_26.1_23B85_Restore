@interface HMDResidentStatusChannelManager
+ (id)logCategory;
- (BOOL)_residentStatusChannelNeededForBundleIdentifier:(id)identifier applicationState:(unint64_t)state;
- (BOOL)_shouldAllowChannelManagement;
- (BOOL)_shouldChannelBeRunning;
- (HMDIDSServerBag)idsServerBag;
- (HMDResidentStatusChannelManager)initWithResidentStatusChannel:(id)channel notificationCenter:(id)center queue:(id)queue timerProvider:(id)provider idsServerBag:(id)bag processMonitor:(id)monitor;
- (HMDResidentStatusChannelManager)initWithResidentStatusChannel:(id)channel queue:(id)queue idsServerBag:(id)bag;
- (NSMutableSet)clientIdentifiers;
- (id)logIdentifier;
- (void)_configureWithExistingProcesses:(id)processes;
- (void)_evaluateChannelConnectionStateWithCurrentClientIdentifierCount:(unint64_t)count previousClientIdentifierCount:(unint64_t)identifierCount;
- (void)_handleForegroundStateChangedForBundleIdentifier:(id)identifier applicationState:(unint64_t)state;
- (void)_startUnsubscribeFromChannelDebounceTimer;
- (void)_stopUnsubscribeFromChannelDebounceTimer;
- (void)addClientWithIdentifier:(id)identifier;
- (void)configure;
- (void)handleProcessAdded:(id)added;
- (void)handleProcessInfoStateChanged:(id)changed;
- (void)handleProcessRemoved:(id)removed;
- (void)removeClientWithIdentifier:(id)identifier;
- (void)timerDidFire:(id)fire;
@end

@implementation HMDResidentStatusChannelManager

- (HMDIDSServerBag)idsServerBag
{
  WeakRetained = objc_loadWeakRetained(&self->_idsServerBag);

  return WeakRetained;
}

- (id)logIdentifier
{
  residentStatusChannel = [(HMDResidentStatusChannelManager *)self residentStatusChannel];
  home = [residentStatusChannel home];
  uuid = [home uuid];
  uUIDString = [uuid UUIDString];

  return uUIDString;
}

- (void)timerDidFire:(id)fire
{
  fireCopy = fire;
  queue = [(HMDResidentStatusChannelManager *)self queue];
  dispatch_assert_queue_V2(queue);

  unsubscribeFromChannelDebounceTimer = [(HMDResidentStatusChannelManager *)self unsubscribeFromChannelDebounceTimer];

  if (unsubscribeFromChannelDebounceTimer == fireCopy)
  {
    [(HMDResidentStatusChannelManager *)self _stopUnsubscribeFromChannelDebounceTimer];
    if (![(HMDResidentStatusChannelManager *)self _shouldChannelBeRunning])
    {
      residentStatusChannel = [(HMDResidentStatusChannelManager *)self residentStatusChannel];
      [residentStatusChannel stop];
    }
  }
}

- (BOOL)_shouldAllowChannelManagement
{
  v19 = *MEMORY[0x277D85DE8];
  residentStatusChannel = [(HMDResidentStatusChannelManager *)self residentStatusChannel];
  home = [residentStatusChannel home];

  currentUser = [home currentUser];
  v6 = currentUser;
  if (currentUser)
  {
    if ([currentUser isRestrictedGuest])
    {
      v7 = objc_autoreleasePoolPush();
      selfCopy = self;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = HMFGetLogIdentifier();
        shortDescription = [v6 shortDescription];
        v15 = 138543618;
        v16 = v10;
        v17 = 2112;
        v18 = shortDescription;
        _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Not allowing channel management on Restricted Guest: %@", &v15, 0x16u);

LABEL_9:
        goto LABEL_10;
      }

      goto LABEL_10;
    }
  }

  else if (([home isOwnerUser] & 1) == 0)
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v10;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Not allowing channel management, current user unknown", &v15, 0xCu);
      goto LABEL_9;
    }

LABEL_10:

    objc_autoreleasePoolPop(v7);
    v12 = 0;
    goto LABEL_11;
  }

  v12 = 1;
LABEL_11:

  return v12;
}

- (void)_stopUnsubscribeFromChannelDebounceTimer
{
  v11 = *MEMORY[0x277D85DE8];
  unsubscribeFromChannelDebounceTimer = [(HMDResidentStatusChannelManager *)self unsubscribeFromChannelDebounceTimer];

  if (unsubscribeFromChannelDebounceTimer)
  {
    v4 = objc_autoreleasePoolPush();
    selfCopy = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v9 = 138543362;
      v10 = v7;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Stopping unsubscribe from channel debounce timer", &v9, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    unsubscribeFromChannelDebounceTimer2 = [(HMDResidentStatusChannelManager *)selfCopy unsubscribeFromChannelDebounceTimer];
    [unsubscribeFromChannelDebounceTimer2 cancel];

    [(HMDResidentStatusChannelManager *)selfCopy setUnsubscribeFromChannelDebounceTimer:0];
  }
}

- (void)_startUnsubscribeFromChannelDebounceTimer
{
  v22 = *MEMORY[0x277D85DE8];
  unsubscribeFromChannelDebounceTimer = [(HMDResidentStatusChannelManager *)self unsubscribeFromChannelDebounceTimer];

  if (!unsubscribeFromChannelDebounceTimer)
  {
    idsServerBag = [(HMDResidentStatusChannelManager *)self idsServerBag];
    statusKitUnsubscribeFromChannelDebounceTimeSec = [idsServerBag statusKitUnsubscribeFromChannelDebounceTimeSec];

    if (statusKitUnsubscribeFromChannelDebounceTimeSec)
    {
      [statusKitUnsubscribeFromChannelDebounceTimeSec doubleValue];
      v7 = v6;
    }

    else
    {
      v7 = 300.0;
    }

    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v18 = 138543618;
      v19 = v11;
      v20 = 2048;
      v21 = v7;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Starting unsubscribe from channel debounce timer with time set to %f", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    timerProvider = [(HMDResidentStatusChannelManager *)selfCopy timerProvider];
    v13 = [timerProvider timerWithTimeInterval:0 options:v7];
    [(HMDResidentStatusChannelManager *)selfCopy setUnsubscribeFromChannelDebounceTimer:v13];

    unsubscribeFromChannelDebounceTimer2 = [(HMDResidentStatusChannelManager *)selfCopy unsubscribeFromChannelDebounceTimer];
    [unsubscribeFromChannelDebounceTimer2 setDelegate:selfCopy];

    queue = selfCopy->_queue;
    unsubscribeFromChannelDebounceTimer3 = [(HMDResidentStatusChannelManager *)selfCopy unsubscribeFromChannelDebounceTimer];
    [unsubscribeFromChannelDebounceTimer3 setDelegateQueue:queue];

    unsubscribeFromChannelDebounceTimer4 = [(HMDResidentStatusChannelManager *)selfCopy unsubscribeFromChannelDebounceTimer];
    [unsubscribeFromChannelDebounceTimer4 resume];
  }
}

- (BOOL)_shouldChannelBeRunning
{
  v19 = *MEMORY[0x277D85DE8];
  queue = [(HMDResidentStatusChannelManager *)self queue];
  dispatch_assert_queue_V2(queue);

  clientIdentifiers = [(HMDResidentStatusChannelManager *)self clientIdentifiers];
  v5 = [clientIdentifiers count];

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = HMFGetLogIdentifier();
    v10 = HMFBooleanToString();
    clientIdentifiers2 = [(HMDResidentStatusChannelManager *)selfCopy clientIdentifiers];
    v13 = 138543874;
    v14 = v9;
    v15 = 2112;
    v16 = v10;
    v17 = 2112;
    v18 = clientIdentifiers2;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Evaluated shouldChannelBeRunning: %@ (clientIdentifiers: %@)", &v13, 0x20u);
  }

  objc_autoreleasePoolPop(v6);
  return v5 != 0;
}

- (void)_evaluateChannelConnectionStateWithCurrentClientIdentifierCount:(unint64_t)count previousClientIdentifierCount:(unint64_t)identifierCount
{
  v22 = *MEMORY[0x277D85DE8];
  queue = [(HMDResidentStatusChannelManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = HMFGetLogIdentifier();
    clientIdentifiers = [(HMDResidentStatusChannelManager *)selfCopy clientIdentifiers];
    v14 = 138544130;
    v15 = v11;
    v16 = 2048;
    countCopy = count;
    v18 = 2048;
    identifierCountCopy = identifierCount;
    v20 = 2112;
    v21 = clientIdentifiers;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Evaluating channel connection state (currentCount: %lu previousCount: %lu, clientIdentifiers: %@)", &v14, 0x2Au);
  }

  objc_autoreleasePoolPop(v8);
  if ((count == 0) != (identifierCount == 0))
  {
    if ([(HMDResidentStatusChannelManager *)selfCopy _shouldChannelBeRunning])
    {
      [(HMDResidentStatusChannelManager *)selfCopy _stopUnsubscribeFromChannelDebounceTimer];
      residentStatusChannel = [(HMDResidentStatusChannelManager *)selfCopy residentStatusChannel];
      [residentStatusChannel start];
    }

    else
    {
      [(HMDResidentStatusChannelManager *)selfCopy _startUnsubscribeFromChannelDebounceTimer];
    }
  }
}

- (BOOL)_residentStatusChannelNeededForBundleIdentifier:(id)identifier applicationState:(unint64_t)state
{
  v14[3] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if ((state | 2) == 2)
  {
    v6 = *MEMORY[0x277CCFE40];
    v14[0] = *MEMORY[0x277CCFD80];
    v14[1] = v6;
    v14[2] = *MEMORY[0x277CD09C8];
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:3];
    if (isInternalBuild())
    {
      v8 = *MEMORY[0x277CD0040];
      v13[0] = *MEMORY[0x277CD0038];
      v13[1] = v8;
      v13[2] = *MEMORY[0x277CD06C8];
      v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:3];
      v10 = [v7 arrayByAddingObjectsFromArray:v9];

      v7 = v10;
    }

    v11 = [v7 containsObject:identifierCopy];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)_handleForegroundStateChangedForBundleIdentifier:(id)identifier applicationState:(unint64_t)state
{
  v19 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if ([(HMDResidentStatusChannelManager *)self _residentStatusChannelNeededForBundleIdentifier:identifierCopy applicationState:state])
  {
    [(HMDResidentStatusChannelManager *)self addClientWithIdentifier:identifierCopy];
  }

  else
  {
    clientIdentifiers = [(HMDResidentStatusChannelManager *)self clientIdentifiers];
    v8 = [clientIdentifiers containsObject:identifierCopy];

    if (v8)
    {
      [(HMDResidentStatusChannelManager *)self removeClientWithIdentifier:identifierCopy];
    }

    else
    {
      v9 = objc_autoreleasePoolPush();
      selfCopy = self;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v12 = HMFGetLogIdentifier();
        v13 = 138543874;
        v14 = v12;
        v15 = 2160;
        v16 = 1752392040;
        v17 = 2112;
        v18 = identifierCopy;
        _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_DEBUG, "%{public}@No changes to resident status channel clients for '%{mask.hash}@'", &v13, 0x20u);
      }

      objc_autoreleasePoolPop(v9);
    }
  }
}

- (void)_configureWithExistingProcesses:(id)processes
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __67__HMDResidentStatusChannelManager__configureWithExistingProcesses___block_invoke;
  v3[3] = &unk_27867E450;
  v3[4] = self;
  [processes na_each:v3];
}

void __67__HMDResidentStatusChannelManager__configureWithExistingProcesses___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 bundleIdentifier];
  if ([v4 length])
  {
    v5 = [v3 shouldMonitor];
    v6 = *(a1 + 32);
    if (v5)
    {
      v7 = [v3 state];
      v8 = v6;
      v9 = v4;
    }

    else
    {
      v8 = *(a1 + 32);
      v9 = v4;
      v7 = 0;
    }

    [v8 _handleForegroundStateChangedForBundleIdentifier:v9 applicationState:v7];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 32);
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v14 = 138543618;
      v15 = v13;
      v16 = 2112;
      v17 = v3;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Missing process info application bundle identifier: %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
  }
}

- (NSMutableSet)clientIdentifiers
{
  queue = [(HMDResidentStatusChannelManager *)self queue];
  dispatch_assert_queue_V2(queue);

  clientIdentifiers = self->_clientIdentifiers;

  return clientIdentifiers;
}

- (void)handleProcessRemoved:(id)removed
{
  removedCopy = removed;
  queue = [(HMDResidentStatusChannelManager *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__HMDResidentStatusChannelManager_handleProcessRemoved___block_invoke;
  v7[3] = &unk_27868A750;
  v8 = removedCopy;
  selfCopy = self;
  v6 = removedCopy;
  dispatch_async(queue, v7);
}

void __56__HMDResidentStatusChannelManager_handleProcessRemoved___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:@"processInfo"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    v6 = [v5 bundleIdentifier];
    if ([v6 length])
    {
      if (([v5 shouldMonitor] & 1) == 0)
      {
        v7 = objc_autoreleasePoolPush();
        v8 = *(a1 + 40);
        v9 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          v10 = HMFGetLogIdentifier();
          v21 = 138543618;
          v22 = v10;
          v23 = 2112;
          v24 = v5;
          _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEBUG, "%{public}@Handling process info removed notification: %@", &v21, 0x16u);
        }

        objc_autoreleasePoolPop(v7);
        [*(a1 + 40) _handleForegroundStateChangedForBundleIdentifier:v6 applicationState:1];
      }
    }

    else
    {
      v16 = objc_autoreleasePoolPush();
      v17 = *(a1 + 40);
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        v20 = *(a1 + 32);
        v21 = 138543618;
        v22 = v19;
        v23 = 2112;
        v24 = v20;
        _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Missing process info application bundle identifier: %@", &v21, 0x16u);
      }

      objc_autoreleasePoolPop(v16);
    }
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = *(a1 + 40);
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v15 = *(a1 + 32);
      v21 = 138543618;
      v22 = v14;
      v23 = 2112;
      v24 = v15;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Bad process removed notification object: %@", &v21, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
  }
}

- (void)handleProcessAdded:(id)added
{
  addedCopy = added;
  queue = [(HMDResidentStatusChannelManager *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__HMDResidentStatusChannelManager_handleProcessAdded___block_invoke;
  v7[3] = &unk_27868A750;
  v8 = addedCopy;
  selfCopy = self;
  v6 = addedCopy;
  dispatch_async(queue, v7);
}

void __54__HMDResidentStatusChannelManager_handleProcessAdded___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:@"processInfo"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    v6 = [v5 bundleIdentifier];
    if ([v6 length])
    {
      if (([v5 shouldMonitor] & 1) == 0)
      {
        v7 = objc_autoreleasePoolPush();
        v8 = *(a1 + 40);
        v9 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          v10 = HMFGetLogIdentifier();
          v21 = 138543618;
          v22 = v10;
          v23 = 2112;
          v24 = v5;
          _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEBUG, "%{public}@Handling process info added notification: %@", &v21, 0x16u);
        }

        objc_autoreleasePoolPop(v7);
        [*(a1 + 40) _handleForegroundStateChangedForBundleIdentifier:v6 applicationState:0];
      }
    }

    else
    {
      v16 = objc_autoreleasePoolPush();
      v17 = *(a1 + 40);
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        v20 = *(a1 + 32);
        v21 = 138543618;
        v22 = v19;
        v23 = 2112;
        v24 = v20;
        _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Missing process info application bundle identifier: %@", &v21, 0x16u);
      }

      objc_autoreleasePoolPop(v16);
    }
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = *(a1 + 40);
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v15 = *(a1 + 32);
      v21 = 138543618;
      v22 = v14;
      v23 = 2112;
      v24 = v15;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Bad process added notification object: %@", &v21, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
  }
}

- (void)handleProcessInfoStateChanged:(id)changed
{
  v29 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  userInfo = [changedCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:@"processInfo"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    bundleIdentifier = [v8 bundleIdentifier];
    if (bundleIdentifier)
    {
      queue = [(HMDResidentStatusChannelManager *)self queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __65__HMDResidentStatusChannelManager_handleProcessInfoStateChanged___block_invoke;
      block[3] = &unk_27868A010;
      block[4] = self;
      v21 = v8;
      v22 = bundleIdentifier;
      dispatch_async(queue, block);
    }

    else
    {
      v16 = objc_autoreleasePoolPush();
      selfCopy = self;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        *buf = 138543618;
        v24 = v19;
        v25 = 2112;
        v26 = changedCopy;
        _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Missing process info application bundle identifier: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v16);
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
      userInfo2 = [changedCopy userInfo];
      *buf = 138543874;
      v24 = v14;
      v25 = 2112;
      v26 = changedCopy;
      v27 = 2112;
      v28 = userInfo2;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Could not find process info in notification user info for %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
  }
}

uint64_t __65__HMDResidentStatusChannelManager_handleProcessInfoStateChanged___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v8 = 138543618;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_DEBUG, "%{public}@Handling state changed notification for process info: %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  return [*(a1 + 32) _handleForegroundStateChangedForBundleIdentifier:*(a1 + 48) applicationState:{objc_msgSend(*(a1 + 40), "state")}];
}

- (void)removeClientWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  queue = [(HMDResidentStatusChannelManager *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__HMDResidentStatusChannelManager_removeClientWithIdentifier___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = identifierCopy;
  v6 = identifierCopy;
  dispatch_async(queue, v7);
}

void *__62__HMDResidentStatusChannelManager_removeClientWithIdentifier___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  result = [*(a1 + 32) _shouldAllowChannelManagement];
  if (result)
  {
    v3 = [*(a1 + 32) clientIdentifiers];
    v4 = [v3 count];

    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 32);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v9 = *(a1 + 40);
      v13 = 138543618;
      v14 = v8;
      v15 = 2112;
      v16 = v9;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Removing client with identifier: %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v10 = [*(a1 + 32) clientIdentifiers];
    [v10 removeObject:*(a1 + 40)];

    v11 = [*(a1 + 32) clientIdentifiers];
    v12 = [v11 count];

    return [*(a1 + 32) _evaluateChannelConnectionStateWithCurrentClientIdentifierCount:v12 previousClientIdentifierCount:v4];
  }

  return result;
}

- (void)addClientWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  queue = [(HMDResidentStatusChannelManager *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__HMDResidentStatusChannelManager_addClientWithIdentifier___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = identifierCopy;
  v6 = identifierCopy;
  dispatch_async(queue, v7);
}

void *__59__HMDResidentStatusChannelManager_addClientWithIdentifier___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  result = [*(a1 + 32) _shouldAllowChannelManagement];
  if (result)
  {
    v3 = [*(a1 + 32) clientIdentifiers];
    v4 = [v3 count];

    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 32);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v9 = *(a1 + 40);
      v13 = 138543618;
      v14 = v8;
      v15 = 2112;
      v16 = v9;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Adding client with identifier: %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v10 = [*(a1 + 32) clientIdentifiers];
    [v10 addObject:*(a1 + 40)];

    v11 = [*(a1 + 32) clientIdentifiers];
    v12 = [v11 count];

    return [*(a1 + 32) _evaluateChannelConnectionStateWithCurrentClientIdentifierCount:v12 previousClientIdentifierCount:v4];
  }

  return result;
}

- (void)configure
{
  notificationCenter = [(HMDResidentStatusChannelManager *)self notificationCenter];
  [notificationCenter addObserver:self selector:sel_handleProcessInfoStateChanged_ name:HMDProcessMonitorProcessStateDidChangeNotification object:0];

  if (isInternalBuild())
  {
    notificationCenter2 = [(HMDResidentStatusChannelManager *)self notificationCenter];
    [notificationCenter2 addObserver:self selector:sel_handleProcessAdded_ name:@"HMDProcessMonitorProcessAddedNotification" object:0];

    notificationCenter3 = [(HMDResidentStatusChannelManager *)self notificationCenter];
    [notificationCenter3 addObserver:self selector:sel_handleProcessRemoved_ name:@"HMDProcessMonitorProcessRemovedNotification" object:0];
  }

  processMonitor = [(HMDResidentStatusChannelManager *)self processMonitor];
  processes = [processMonitor processes];

  [(HMDResidentStatusChannelManager *)self _configureWithExistingProcesses:processes];
  logAndPostNotification(@"HMDResidentStatusChannelReadyNotification", self, 0);
}

- (HMDResidentStatusChannelManager)initWithResidentStatusChannel:(id)channel queue:(id)queue idsServerBag:(id)bag
{
  v8 = MEMORY[0x277CCAB98];
  bagCopy = bag;
  queueCopy = queue;
  channelCopy = channel;
  defaultCenter = [v8 defaultCenter];
  v13 = objc_opt_new();
  v14 = +[HMDXPCMessageTransport defaultTransport];
  processMonitor = [v14 processMonitor];
  v16 = [(HMDResidentStatusChannelManager *)self initWithResidentStatusChannel:channelCopy notificationCenter:defaultCenter queue:queueCopy timerProvider:v13 idsServerBag:bagCopy processMonitor:processMonitor];

  return v16;
}

- (HMDResidentStatusChannelManager)initWithResidentStatusChannel:(id)channel notificationCenter:(id)center queue:(id)queue timerProvider:(id)provider idsServerBag:(id)bag processMonitor:(id)monitor
{
  channelCopy = channel;
  centerCopy = center;
  queueCopy = queue;
  providerCopy = provider;
  bagCopy = bag;
  monitorCopy = monitor;
  v26.receiver = self;
  v26.super_class = HMDResidentStatusChannelManager;
  v19 = [(HMDResidentStatusChannelManager *)&v26 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_residentStatusChannel, channel);
    objc_storeStrong(&v20->_notificationCenter, center);
    objc_storeStrong(&v20->_queue, queue);
    objc_storeStrong(&v20->_timerProvider, provider);
    v21 = [MEMORY[0x277CBEB58] set];
    clientIdentifiers = v20->_clientIdentifiers;
    v20->_clientIdentifiers = v21;

    objc_storeWeak(&v20->_idsServerBag, bagCopy);
    objc_storeStrong(&v20->_processMonitor, monitor);
  }

  return v20;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t22_191909 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t22_191909, &__block_literal_global_191910);
  }

  v3 = logCategory__hmf_once_v23_191911;

  return v3;
}

void __46__HMDResidentStatusChannelManager_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v23_191911;
  logCategory__hmf_once_v23_191911 = v0;
}

@end