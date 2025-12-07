@interface HMDIDSActivityMonitorHomeManagerDataSource
+ (id)logCategory;
- (HMDIDSActivityMonitorBroadcasterPushTokenDataSourceDelegate)delegate;
- (HMDIDSActivityMonitorHomeManagerDataSource)initWithHomeManager:(id)manager appleAccountManager:(id)accountManager;
- (dispatch_queue_t)pushTokens;
- (void)_handleCurrentDeviceOrAccountUpdated:(id)updated;
- (void)_handleDeviceAdded:(id)added;
- (void)_handleDeviceRemoved:(id)removed;
- (void)_handleHomeAdded:(id)added;
- (void)_startUpdateTask;
- (void)_updatePushTokens:(void *)tokens completionHandler:;
- (void)_updateWithCompletionHandler:(uint64_t)handler;
- (void)pushTokensForDevicesObservingSubjectDevice:(id)device subActivity:(id)activity queue:(id)queue completionHandler:(id)handler;
- (void)start;
- (void)startWithNotificationCenter:(id)center;
@end

@implementation HMDIDSActivityMonitorHomeManagerDataSource

- (HMDIDSActivityMonitorBroadcasterPushTokenDataSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

- (void)_handleHomeAdded:(id)added
{
  v11 = *MEMORY[0x277D85DE8];
  addedCopy = added;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Home added, updating", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  if (selfCopy)
  {
    [(HMDIDSActivityMonitorHomeManagerDataSource *)selfCopy _updateWithCompletionHandler:?];
  }
}

- (void)_updateWithCompletionHandler:(uint64_t)handler
{
  v3 = a2;
  v4 = *(handler + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __75__HMDIDSActivityMonitorHomeManagerDataSource__updateWithCompletionHandler___block_invoke;
  v6[3] = &unk_27868A7A0;
  v6[4] = handler;
  v5 = v3;
  v7 = v5;
  dispatch_async(v4, v6);
}

void __75__HMDIDSActivityMonitorHomeManagerDataSource__updateWithCompletionHandler___block_invoke(uint64_t a1)
{
  v47 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v1)
  {
    dispatch_assert_queue_V2(*(v1 + 40));
    v3 = [*(v1 + 32) device];
    if (v3)
    {
      v4 = [MEMORY[0x277CBEB58] set];
      v5 = [v1 homeManager];
      v6 = [v5 homes];
      *&v42 = MEMORY[0x277D85DD0];
      *(&v42 + 1) = 3221225472;
      v43 = __82__HMDIDSActivityMonitorHomeManagerDataSource__updateOnQueueWithCompletionHandler___block_invoke;
      v44 = &unk_27867BF88;
      v45 = v3;
      v7 = v4;
      v46 = v7;
      [v6 hmf_enumerateWithAutoreleasePoolUsingBlock:&v42];

      if ([v7 count])
      {
        objc_initWeak(&location, v1);
        *&aBlock = MEMORY[0x277D85DD0];
        *(&aBlock + 1) = 3221225472;
        v38 = __82__HMDIDSActivityMonitorHomeManagerDataSource__updateOnQueueWithCompletionHandler___block_invoke_29;
        v39 = &unk_27867ABE0;
        objc_copyWeak(&v41, &location);
        v30 = v2;
        v40 = v30;
        v31 = _Block_copy(&aBlock);
        v8 = [v7 allObjects];
        v9 = objc_autoreleasePoolPush();
        v10 = v1;
        v11 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = HMFGetLogIdentifier();
          *buf = 138543618;
          v34 = v12;
          v35 = 2112;
          v36 = v8;
          _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Querying endpoints for these destinations: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v9);
        v13 = [MEMORY[0x277D18728] sharedInstance];
        v14 = +[HMDIDSServiceManager sharedIDSServiceName];
        v15 = [MEMORY[0x277D189C8] refreshIDInfo];
        v16 = *(v1 + 40);
        v17 = [v13 idInfoForDestinations:v8 service:v14 infoTypes:1 options:v15 listenerID:@"com.apple.homed.idsActivityMonitor" queue:v16 completionBlock:v31];

        if ((v17 & 1) == 0)
        {
          v18 = objc_autoreleasePoolPush();
          v19 = v10;
          v20 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            v21 = HMFGetLogIdentifier();
            *buf = 138543618;
            v34 = v21;
            v35 = 2112;
            v36 = v8;
            _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@Failed to query somehow: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v18);
          [(HMDIDSActivityMonitorHomeManagerDataSource *)v19 _updatePushTokens:v30 completionHandler:?];
        }

        objc_destroyWeak(&v41);
        objc_destroyWeak(&location);
      }

      else
      {
        v26 = objc_autoreleasePoolPush();
        v27 = v1;
        v28 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          v29 = HMFGetLogIdentifier();
          LODWORD(aBlock) = 138543362;
          *(&aBlock + 4) = v29;
          _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_ERROR, "%{public}@Couldn't find any user destinations associated with the current device", &aBlock, 0xCu);
        }

        objc_autoreleasePoolPop(v26);
        [(HMDIDSActivityMonitorHomeManagerDataSource *)v27 _updatePushTokens:v2 completionHandler:?];
      }
    }

    else
    {
      v22 = objc_autoreleasePoolPush();
      v23 = v1;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = HMFGetLogIdentifier();
        LODWORD(v42) = 138543362;
        *(&v42 + 4) = v25;
        _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@Unable to fetch tokens, currentDevice unavailable", &v42, 0xCu);
      }

      objc_autoreleasePoolPop(v22);
      [(HMDIDSActivityMonitorHomeManagerDataSource *)v23 _updatePushTokens:v2 completionHandler:?];
    }
  }
}

- (void)_updatePushTokens:(void *)tokens completionHandler:
{
  v5 = a2;
  tokensCopy = tokens;
  if (self)
  {
    dispatch_assert_queue_V2(*(self + 40));
    if (!v5)
    {
      v5 = [MEMORY[0x277CBEB98] set];
    }

    v7 = v5;
    pushTokens = [(HMDIDSActivityMonitorHomeManagerDataSource *)self pushTokens];
    v9 = [pushTokens isEqual:v7];

    v5 = v7;
    dispatch_assert_queue_V2(*(self + 40));
    objc_storeStrong((self + 16), v7);

    if ((v9 & 1) == 0)
    {
      if (tokensCopy)
      {
        v10 = 9;
      }

      else
      {
        v10 = 17;
      }

      v11 = dispatch_get_global_queue(v10, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __82__HMDIDSActivityMonitorHomeManagerDataSource__updatePushTokens_completionHandler___block_invoke;
      block[3] = &unk_27868A728;
      block[4] = self;
      dispatch_async(v11, block);
    }

    if (tokensCopy)
    {
      tokensCopy[2](tokensCopy, 1);
    }
  }
}

void __82__HMDIDSActivityMonitorHomeManagerDataSource__updateOnQueueWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 residentEnabledDevices];
  v5 = [v4 containsObject:*(a1 + 32)];

  if (v5)
  {
    v6 = [v3 users];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __82__HMDIDSActivityMonitorHomeManagerDataSource__updateOnQueueWithCompletionHandler___block_invoke_2;
    v7[3] = &unk_27867ABB8;
    v8 = *(a1 + 40);
    [v6 hmf_enumerateWithAutoreleasePoolUsingBlock:v7];
  }
}

void __82__HMDIDSActivityMonitorHomeManagerDataSource__updateOnQueueWithCompletionHandler___block_invoke_29(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = WeakRetained[5];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __82__HMDIDSActivityMonitorHomeManagerDataSource__updateOnQueueWithCompletionHandler___block_invoke_30;
    v15[3] = &unk_278689AB8;
    v15[4] = WeakRetained;
    v16 = v5;
    v17 = v6;
    v18 = *(a1 + 32);
    dispatch_async(v9, v15);
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = objc_opt_class();
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543362;
      v20 = v13;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@HMDIDSActivityMonitorHomeManagerDataSource died before IDS returned results", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    v14 = *(a1 + 32);
    if (v14)
    {
      (*(v14 + 16))(v14, 1);
    }
  }
}

void __82__HMDIDSActivityMonitorHomeManagerDataSource__updateOnQueueWithCompletionHandler___block_invoke_30(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a1 + 40);
  v5 = v2;
  v6 = v3;
  if (v1)
  {
    dispatch_assert_queue_V2(v1[5]);
    if (v4)
    {
      v7 = [MEMORY[0x277CBEB58] set];
      *v14 = MEMORY[0x277D85DD0];
      *&v14[8] = 3221225472;
      *&v14[16] = __93__HMDIDSActivityMonitorHomeManagerDataSource__handleIDSQueryResults_error_completionHandler___block_invoke;
      v15 = &unk_27867AC30;
      v16 = v1;
      v17 = v7;
      v8 = v7;
      [v4 enumerateKeysAndObjectsUsingBlock:v14];
      v9 = objc_msgSend_copy(v8, *v14, *&v14[8], *&v14[16], v15, v16);
      [(HMDIDSActivityMonitorHomeManagerDataSource *)v1 _updatePushTokens:v9 completionHandler:v6];
    }

    else
    {
      v10 = objc_autoreleasePoolPush();
      v11 = v1;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = HMFGetLogIdentifier();
        *v14 = 138543618;
        *&v14[4] = v13;
        *&v14[12] = 2112;
        *&v14[14] = v5;
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch IDS info: %@", v14, 0x16u);
      }

      objc_autoreleasePoolPop(v10);
      [(HMDIDSActivityMonitorHomeManagerDataSource *)v11 _updatePushTokens:v6 completionHandler:?];
    }
  }
}

void __93__HMDIDSActivityMonitorHomeManagerDataSource__handleIDSQueryResults_error_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = HMFGetLogIdentifier();
    v11 = [v6 endpoints];
    *buf = 138543874;
    v16 = v10;
    v17 = 2112;
    v18 = v5;
    v19 = 2112;
    v20 = v11;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEBUG, "%{public}@IDS destination '%@' has endpoints: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  v12 = [v6 endpoints];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __93__HMDIDSActivityMonitorHomeManagerDataSource__handleIDSQueryResults_error_completionHandler___block_invoke_35;
  v13[3] = &unk_27867AC08;
  v14 = *(a1 + 40);
  [v12 hmf_enumerateWithAutoreleasePoolUsingBlock:v13];
}

void __93__HMDIDSActivityMonitorHomeManagerDataSource__handleIDSQueryResults_error_completionHandler___block_invoke_35(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 pushToken];
  [v2 addObject:v3];
}

void __82__HMDIDSActivityMonitorHomeManagerDataSource__updateOnQueueWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 accountHandle];
  v5 = [v3 URI];

  v4 = v5;
  if (v5)
  {
    [*(a1 + 32) addObject:v5];
    v4 = v5;
  }
}

- (dispatch_queue_t)pushTokens
{
  if (self)
  {
    selfCopy = self;
    dispatch_assert_queue_V2(self[5]);
    self = selfCopy[2];
    v1 = vars8;
  }

  return self;
}

void __82__HMDIDSActivityMonitorHomeManagerDataSource__updatePushTokens_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 dataSourceDidUpdate:*(a1 + 32)];
}

- (void)_handleCurrentDeviceOrAccountUpdated:(id)updated
{
  v11 = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Current device or account updated, updating", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  if (selfCopy)
  {
    [(HMDIDSActivityMonitorHomeManagerDataSource *)selfCopy _updateWithCompletionHandler:?];
  }
}

- (void)_handleDeviceRemoved:(id)removed
{
  v21 = *MEMORY[0x277D85DE8];
  removedCopy = removed;
  if (self)
  {
    appleAccountManager = self->_appleAccountManager;
  }

  else
  {
    appleAccountManager = 0;
  }

  account = [(HMDAppleAccountManager *)appleAccountManager account];
  object = [removedCopy object];
  v8 = [account isEqual:object];

  if (v8)
  {
    userInfo = [removedCopy userInfo];
    v10 = [userInfo objectForKeyedSubscript:@"HMDDeviceNotificationKey"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v17 = 138543618;
      v18 = v16;
      v19 = 2112;
      v20 = v12;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Device removed from account, updating: %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    if (self)
    {
      [(HMDIDSActivityMonitorHomeManagerDataSource *)selfCopy _updateWithCompletionHandler:?];
    }
  }
}

- (void)_handleDeviceAdded:(id)added
{
  v21 = *MEMORY[0x277D85DE8];
  addedCopy = added;
  if (self)
  {
    appleAccountManager = self->_appleAccountManager;
  }

  else
  {
    appleAccountManager = 0;
  }

  account = [(HMDAppleAccountManager *)appleAccountManager account];
  object = [addedCopy object];
  v8 = [account isEqual:object];

  if (v8)
  {
    userInfo = [addedCopy userInfo];
    v10 = [userInfo objectForKeyedSubscript:@"HMDDeviceNotificationKey"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v17 = 138543618;
      v18 = v16;
      v19 = 2112;
      v20 = v12;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Device added or updated on account, updating: %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    if (self)
    {
      [(HMDIDSActivityMonitorHomeManagerDataSource *)selfCopy _updateWithCompletionHandler:?];
    }
  }
}

- (void)pushTokensForDevicesObservingSubjectDevice:(id)device subActivity:(id)activity queue:(id)queue completionHandler:(id)handler
{
  queueCopy = queue;
  handlerCopy = handler;
  if (self)
  {
    workQueue = self->_workQueue;
  }

  else
  {
    workQueue = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __125__HMDIDSActivityMonitorHomeManagerDataSource_pushTokensForDevicesObservingSubjectDevice_subActivity_queue_completionHandler___block_invoke;
  block[3] = &unk_278689F98;
  block[4] = self;
  v14 = queueCopy;
  v15 = handlerCopy;
  v11 = handlerCopy;
  v12 = queueCopy;
  dispatch_async(workQueue, block);
}

void __125__HMDIDSActivityMonitorHomeManagerDataSource_pushTokensForDevicesObservingSubjectDevice_subActivity_queue_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [(HMDIDSActivityMonitorHomeManagerDataSource *)*(a1 + 32) pushTokens];
  v3 = [v2 allObjects];
  v4 = [v3 mutableCopy];

  v5 = *(a1 + 32);
  if (v5)
  {
    v5 = v5[4];
  }

  v6 = v5;
  v7 = [v6 device];
  v8 = [v7 pushToken];
  [v4 removeObject:v8];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __125__HMDIDSActivityMonitorHomeManagerDataSource_pushTokensForDevicesObservingSubjectDevice_subActivity_queue_completionHandler___block_invoke_2;
  v12[3] = &unk_27868A7A0;
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v13 = v4;
  v14 = v10;
  v11 = v4;
  dispatch_async(v9, v12);
}

void __125__HMDIDSActivityMonitorHomeManagerDataSource_pushTokensForDevicesObservingSubjectDevice_subActivity_queue_completionHandler___block_invoke_2(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 40);
  v4 = objc_msgSend_copy(*(a1 + 32), a2);
  (*(v3 + 16))(v3, v4);
}

- (void)startWithNotificationCenter:(id)center
{
  v19 = *MEMORY[0x277D85DE8];
  centerCopy = center;
  homeManager = [(HMDIDSActivityMonitorHomeManagerDataSource *)self homeManager];
  capabilitiesController = [homeManager capabilitiesController];
  currentResidentCapabilities = [capabilitiesController currentResidentCapabilities];
  isResidentCapable = [currentResidentCapabilities isResidentCapable];

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);
  if (isResidentCapable)
  {
    if (v12)
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543362;
      v18 = v13;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Starting", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    [centerCopy addObserver:selfCopy selector:sel__handleDeviceAdded_ name:@"HMDAccountAddedDeviceNotification" object:0];
    [centerCopy addObserver:selfCopy selector:sel__handleDeviceRemoved_ name:@"HMDAccountRemovedDeviceNotification" object:0];
    if (selfCopy)
    {
      [centerCopy addObserver:selfCopy selector:sel__handleCurrentDeviceOrAccountUpdated_ name:@"HMDAppleAccountManagerDeviceUpdatedNotification" object:selfCopy->_appleAccountManager];
      [centerCopy addObserver:selfCopy selector:sel__handleCurrentDeviceOrAccountUpdated_ name:@"HMDAppleAccountManagerAccountUpdatedNotification" object:selfCopy->_appleAccountManager];
      [centerCopy addObserver:selfCopy selector:sel__handleHomeAdded_ name:@"HMDHomeAddedNotification" object:0];
      [(HMDIDSActivityMonitorHomeManagerDataSource *)&selfCopy->super.isa _startUpdateTask];
      [(HMDIDSActivityMonitorHomeManagerDataSource *)selfCopy _updateWithCompletionHandler:?];
    }

    else
    {
      [centerCopy addObserver:0 selector:sel__handleCurrentDeviceOrAccountUpdated_ name:@"HMDAppleAccountManagerDeviceUpdatedNotification" object:0];
      [centerCopy addObserver:0 selector:sel__handleCurrentDeviceOrAccountUpdated_ name:@"HMDAppleAccountManagerAccountUpdatedNotification" object:0];
      [centerCopy addObserver:0 selector:sel__handleHomeAdded_ name:@"HMDHomeAddedNotification" object:0];
    }
  }

  else
  {
    if (v12)
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543362;
      v18 = v14;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Not starting on this non-resident-capable device", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    if (selfCopy)
    {
      workQueue = selfCopy->_workQueue;
    }

    else
    {
      workQueue = 0;
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __74__HMDIDSActivityMonitorHomeManagerDataSource_startWithNotificationCenter___block_invoke;
    block[3] = &unk_27868A728;
    block[4] = selfCopy;
    dispatch_async(workQueue, block);
  }
}

- (void)_startUpdateTask
{
  if (self)
  {
    objc_opt_class();
    v2 = objc_opt_self();
    location[0] = MEMORY[0x277D85DD0];
    location[1] = 3221225472;
    location[2] = __64__HMDIDSActivityMonitorHomeManagerDataSource_updateTaskInterval__block_invoke;
    location[3] = &__block_descriptor_40_e5_v8__0l;
    location[4] = v2;
    if (updateTaskInterval_token != -1)
    {
      dispatch_once(&updateTaskInterval_token, location);
    }

    v3 = *&updateTaskInterval_updateTaskInterval;
    v4 = [objc_alloc(MEMORY[0x277CCA8B8]) initWithIdentifier:@"com.apple.homed.idsActivityMonitor.update"];
    [v4 setRepeats:1];
    [v4 setInterval:v3];
    [v4 setTolerance:v3 * 0.25];
    objc_storeStrong(self + 6, v4);
    objc_initWeak(location, v4);
    objc_initWeak(&from, self);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __62__HMDIDSActivityMonitorHomeManagerDataSource__startUpdateTask__block_invoke;
    v5[3] = &unk_27867AB90;
    objc_copyWeak(&v6, &from);
    objc_copyWeak(&v7, location);
    [v4 scheduleWithBlock:v5];
    objc_destroyWeak(&v7);
    objc_destroyWeak(&v6);
    objc_destroyWeak(&from);
    objc_destroyWeak(location);
  }
}

void __62__HMDIDSActivityMonitorHomeManagerDataSource__startUpdateTask__block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained((a1 + 40));
    v6 = [v5 shouldDefer];
    v7 = objc_autoreleasePoolPush();
    v8 = WeakRetained;
    v9 = HMFGetOSLogHandle();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
    if (v6)
    {
      if (v10)
      {
        v11 = HMFGetLogIdentifier();
        v17 = 138543362;
        v18 = v11;
        _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Deferring background update", &v17, 0xCu);
      }

      objc_autoreleasePoolPop(v7);
      v3[2](v3, 2);
    }

    else
    {
      if (v10)
      {
        v16 = HMFGetLogIdentifier();
        v17 = 138543362;
        v18 = v16;
        _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Performing background update", &v17, 0xCu);
      }

      objc_autoreleasePoolPop(v7);
      [(HMDIDSActivityMonitorHomeManagerDataSource *)v8 _updateWithCompletionHandler:v3];
    }
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = objc_opt_class();
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v17 = 138543362;
      v18 = v15;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@HMDIDSActivityMonitorHomeManagerDataSource died before scheduled activity could run", &v17, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
    v3[2](v3, 1);
  }
}

void __64__HMDIDSActivityMonitorHomeManagerDataSource_updateTaskInterval__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D0F8D0] sharedPreferences];
  v3 = [v2 preferenceForKey:@"idsActivityMonitorUpdateInterval"];
  v4 = [v3 numberValue];

  if (v4)
  {
    [v4 doubleValue];
    v6 = *&v5;
    if (v5 > 2.22044605e-16)
    {
      v7 = objc_autoreleasePoolPush();
      v8 = *(a1 + 32);
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = HMFGetLogIdentifier();
        v11 = 138543618;
        v12 = v10;
        v13 = 2048;
        v14 = v6;
        _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Overriding default update interval: %f", &v11, 0x16u);
      }

      objc_autoreleasePoolPop(v7);
      updateTaskInterval_updateTaskInterval = v6;
    }
  }
}

- (void)start
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [(HMDIDSActivityMonitorHomeManagerDataSource *)self startWithNotificationCenter:defaultCenter];
}

- (HMDIDSActivityMonitorHomeManagerDataSource)initWithHomeManager:(id)manager appleAccountManager:(id)accountManager
{
  managerCopy = manager;
  accountManagerCopy = accountManager;
  if (managerCopy)
  {
    v9 = accountManagerCopy;
    v17.receiver = self;
    v17.super_class = HMDIDSActivityMonitorHomeManagerDataSource;
    v10 = [(HMDIDSActivityMonitorHomeManagerDataSource *)&v17 init];
    v11 = v10;
    if (v10)
    {
      objc_storeStrong(&v10->_homeManager, manager);
      objc_storeStrong(&v11->_appleAccountManager, accountManager);
      workQueue = [managerCopy workQueue];
      workQueue = v11->_workQueue;
      v11->_workQueue = workQueue;
    }

    return v11;
  }

  else
  {
    v15 = _HMFPreconditionFailure();
    return +[(HMDIDSActivityMonitorHomeManagerDataSource *)v15];
  }
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t19_140632 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t19_140632, &__block_literal_global_140633);
  }

  v3 = logCategory__hmf_once_v20_140634;

  return v3;
}

void __57__HMDIDSActivityMonitorHomeManagerDataSource_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v20_140634;
  logCategory__hmf_once_v20_140634 = v0;
}

@end