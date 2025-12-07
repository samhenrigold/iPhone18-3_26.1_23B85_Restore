@interface HMDStateSyncManager
+ (id)logCategory;
- (HMDHome)home;
- (HMDResidentDeviceManagerContext)residentDeviceManagerContext;
- (HMDResidentStatusChannel)residentStatusChannel;
- (HMDStateSyncManager)initWithHome:(id)home queue:(id)queue isResidentCapable:(BOOL)capable dispatcher:(id)dispatcher notificationCenter:(id)center residentDeviceManagerContext:(id)context timerProvider:(id)provider;
- (HMDStateSyncManager)initWithHome:(id)home queue:(id)queue residentDeviceManagerContext:(id)context;
- (NSUUID)messageTargetUUID;
- (id)_createBackoffTimer;
- (id)logIdentifier;
- (void)_configureWithResidentStatusChannel:(id)channel;
- (void)_handleResidentStatusChannelReadyNotification:(id)notification;
- (void)_handleStateSyncFetchMessage:(id)message;
- (void)_handleStateSyncPublishMessage:(id)message;
- (void)_handleStateSyncResponse:(id)response domain:(id)domain;
- (void)_performSyncForDomains:(id)domains;
- (void)_publishToAllUsersWithState:(id)state domain:(id)domain completion:(id)completion;
- (void)_publishToResidentsWithState:(id)state domain:(id)domain completion:(id)completion;
- (void)_removeDomainFromFetchRetryDomains:(id)domains;
- (void)_startRetryTimerForDomains:(id)domains;
- (void)_stopPublishingToAllUsersForDomain:(id)domain completion:(id)completion;
- (void)_stopPublishingToResidentsForDomain:(id)domain completion:(id)completion;
- (void)addDelegate:(id)delegate;
- (void)channel:(id)channel didObserveNewDomainDataDevices:(id)devices removedDomainDataDevices:(id)dataDevices updatedDomainDataDevices:(id)domainDataDevices;
- (void)configure;
- (void)configureDomain:(id)domain scope:(int64_t)scope syncOptions:(int64_t)options completion:(id)completion;
- (void)publishChangeToken:(id)token domain:(id)domain completion:(id)completion;
- (void)publishState:(id)state domain:(id)domain completion:(id)completion;
- (void)registerObserver:(id)observer domain:(id)domain;
- (void)removeDelegate:(id)delegate;
- (void)stopPublishingForDomain:(id)domain completion:(id)completion;
- (void)timerDidFire:(id)fire;
- (void)unregisterObserverForDomain:(id)domain;
@end

@implementation HMDStateSyncManager

- (HMDResidentDeviceManagerContext)residentDeviceManagerContext
{
  WeakRetained = objc_loadWeakRetained(&self->_residentDeviceManagerContext);

  return WeakRetained;
}

- (HMDResidentStatusChannel)residentStatusChannel
{
  WeakRetained = objc_loadWeakRetained(&self->_residentStatusChannel);

  return WeakRetained;
}

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (id)_createBackoffTimer
{
  dispatch_assert_queue_V2(self->_queue);
  timerProvider = [(HMDStateSyncManager *)self timerProvider];
  v4 = [timerProvider backoffTimerWithMinimumTimeInterval:4 maximumTimeInterval:0 exponentialFactor:30.0 options:3600.0];

  [v4 setDelegate:self];
  [v4 setDelegateQueue:self->_queue];

  return v4;
}

- (void)_startRetryTimerForDomains:(id)domains
{
  queue = self->_queue;
  domainsCopy = domains;
  dispatch_assert_queue_V2(queue);
  fetchRetryTimer = [(HMDStateSyncManager *)self fetchRetryTimer];

  if (!fetchRetryTimer)
  {
    _createBackoffTimer = [(HMDStateSyncManager *)self _createBackoffTimer];
    [(HMDStateSyncManager *)self setFetchRetryTimer:_createBackoffTimer];
  }

  fetchRetryDomains = [(HMDStateSyncManager *)self fetchRetryDomains];
  [fetchRetryDomains unionSet:domainsCopy];

  fetchRetryTimer2 = [(HMDStateSyncManager *)self fetchRetryTimer];
  [fetchRetryTimer2 resume];
}

- (void)_removeDomainFromFetchRetryDomains:(id)domains
{
  v20 = *MEMORY[0x277D85DE8];
  domainsCopy = domains;
  dispatch_assert_queue_V2(self->_queue);
  fetchRetryDomains = [(HMDStateSyncManager *)self fetchRetryDomains];
  v6 = [fetchRetryDomains containsObject:domainsCopy];

  if (v6)
  {
    fetchRetryDomains2 = [(HMDStateSyncManager *)self fetchRetryDomains];
    [fetchRetryDomains2 removeObject:domainsCopy];

    fetchRetryDomains3 = [(HMDStateSyncManager *)self fetchRetryDomains];
    v9 = [fetchRetryDomains3 count];

    if (!v9)
    {
      v10 = objc_autoreleasePoolPush();
      selfCopy = self;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = HMFGetLogIdentifier();
        fetchRetryTimer = [(HMDStateSyncManager *)selfCopy fetchRetryTimer];
        v16 = 138543618;
        v17 = v13;
        v18 = 2112;
        v19 = fetchRetryTimer;
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@Canceling fetchRetryTimer: %@ because no domains to retry", &v16, 0x16u);
      }

      objc_autoreleasePoolPop(v10);
      fetchRetryTimer2 = [(HMDStateSyncManager *)selfCopy fetchRetryTimer];
      [fetchRetryTimer2 cancel];

      [(HMDStateSyncManager *)selfCopy setFetchRetryTimer:0];
    }
  }
}

- (void)_stopPublishingToAllUsersForDomain:(id)domain completion:(id)completion
{
  domainCopy = domain;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_queue);
  lastPublishedChangeTokenByDomain = [(HMDStateSyncManager *)self lastPublishedChangeTokenByDomain];
  [lastPublishedChangeTokenByDomain setObject:0 forKeyedSubscript:domainCopy];

  lastPublishedStateByDomain = [(HMDStateSyncManager *)self lastPublishedStateByDomain];
  [lastPublishedStateByDomain setObject:0 forKeyedSubscript:domainCopy];

  residentStatusChannel = [(HMDStateSyncManager *)self residentStatusChannel];
  lastPublishedChangeTokenByDomain2 = [(HMDStateSyncManager *)self lastPublishedChangeTokenByDomain];
  v12 = objc_msgSend_copy(lastPublishedChangeTokenByDomain2);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __69__HMDStateSyncManager__stopPublishingToAllUsersForDomain_completion___block_invoke;
  v15[3] = &unk_278689358;
  v15[4] = self;
  v16 = domainCopy;
  v17 = completionCopy;
  v13 = completionCopy;
  v14 = domainCopy;
  [residentStatusChannel publishDomain:1 data:v12 completion:v15];
}

void __69__HMDStateSyncManager__stopPublishingToAllUsersForDomain_completion___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v8 = *(a1 + 40);
      v9 = 138543874;
      v10 = v7;
      v11 = 2112;
      v12 = v8;
      v13 = 2112;
      v14 = v3;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Stopping publishing for domain: %@ failed with error: %@", &v9, 0x20u);
    }

    objc_autoreleasePoolPop(v4);
  }

  (*(*(a1 + 48) + 16))();
}

- (void)_stopPublishingToResidentsForDomain:(id)domain completion:(id)completion
{
  queue = self->_queue;
  completionCopy = completion;
  dispatch_assert_queue_V2(queue);
  completionCopy[2](completionCopy, 0);
}

- (void)_publishToAllUsersWithState:(id)state domain:(id)domain completion:(id)completion
{
  v34 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  domainCopy = domain;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_queue);
  lastPublishedStateByDomain = [(HMDStateSyncManager *)self lastPublishedStateByDomain];
  [lastPublishedStateByDomain setObject:stateCopy forKeyedSubscript:domainCopy];

  v12 = [(HMDStateSyncManager *)self _changeTokenForState:stateCopy];
  v13 = objc_autoreleasePoolPush();
  selfCopy = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = HMFGetLogIdentifier();
    *buf = 138543874;
    v29 = v16;
    v30 = 2112;
    v31 = v12;
    v32 = 2112;
    v33 = domainCopy;
    _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@Publishing changeToken: %@ for domain: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v13);
  lastPublishedChangeTokenByDomain = [(HMDStateSyncManager *)selfCopy lastPublishedChangeTokenByDomain];
  [lastPublishedChangeTokenByDomain setObject:v12 forKeyedSubscript:domainCopy];

  residentStatusChannel = [(HMDStateSyncManager *)selfCopy residentStatusChannel];
  lastPublishedChangeTokenByDomain2 = [(HMDStateSyncManager *)selfCopy lastPublishedChangeTokenByDomain];
  v20 = objc_msgSend_copy(lastPublishedChangeTokenByDomain2);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __69__HMDStateSyncManager__publishToAllUsersWithState_domain_completion___block_invoke;
  v24[3] = &unk_27868A528;
  v24[4] = selfCopy;
  v25 = v12;
  v26 = domainCopy;
  v27 = completionCopy;
  v21 = completionCopy;
  v22 = domainCopy;
  v23 = v12;
  [residentStatusChannel publishDomain:1 data:v20 completion:v24];
}

void __69__HMDStateSyncManager__publishToAllUsersWithState_domain_completion___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v8 = *(a1 + 40);
      v9 = *(a1 + 48);
      v10 = 138544130;
      v11 = v7;
      v12 = 2112;
      v13 = v8;
      v14 = 2112;
      v15 = v9;
      v16 = 2112;
      v17 = v3;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Publishing changeToken: %@ for domain: %@ failed with error: %@", &v10, 0x2Au);
    }

    objc_autoreleasePoolPop(v4);
  }

  (*(*(a1 + 56) + 16))();
}

- (void)_publishToResidentsWithState:(id)state domain:(id)domain completion:(id)completion
{
  v35 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  domainCopy = domain;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_queue);
  home = [(HMDStateSyncManager *)self home];
  destinationForEnabledResidents = [home destinationForEnabledResidents];
  if (destinationForEnabledResidents)
  {
    lastPublishedStateByDomain = [(HMDStateSyncManager *)self lastPublishedStateByDomain];
    [lastPublishedStateByDomain setObject:stateCopy forKeyedSubscript:domainCopy];

    array = [MEMORY[0x277CBEB18] array];
    v29[0] = @"domain";
    v29[1] = @"data";
    v30[0] = domainCopy;
    v30[1] = stateCopy;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:2];
    [array addObject:v15];

    v27[0] = @"dataByDomains";
    v16 = objc_msgSend_copy(array);
    v28[0] = v16;
    v28[1] = domainCopy;
    v27[1] = @"domain";
    v27[2] = @"data";
    v28[2] = stateCopy;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:3];

    v18 = [[HMDRemoteMessage alloc] initWithName:@"HMDStateSyncPublishMessage" qualityOfService:9 destination:destinationForEnabledResidents payload:v17 type:3 timeout:1 secure:300.0 restriction:8];
    dispatcher = self->_dispatcher;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __70__HMDStateSyncManager__publishToResidentsWithState_domain_completion___block_invoke;
    v24[3] = &unk_278689358;
    v24[4] = self;
    v25 = domainCopy;
    v26 = completionCopy;
    [(HMFMessageDispatcher *)dispatcher sendMessage:v18 completionHandler:v24];
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    selfCopy = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543618;
      v32 = v23;
      v33 = 2112;
      v34 = domainCopy;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Unable to publish state to residents for domain: %@, no residents to publish to", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    array = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
    (*(completionCopy + 2))(completionCopy, array);
  }
}

void __70__HMDStateSyncManager__publishToResidentsWithState_domain_completion___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v8 = *(a1 + 40);
      v10 = 138543874;
      v11 = v7;
      v12 = 2112;
      v13 = v8;
      v14 = 2112;
      v15 = v3;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to publish state to residents for domain: %@ error: %@", &v10, 0x20u);
    }

    objc_autoreleasePoolPop(v4);
    v9 = *(*(a1 + 48) + 16);
  }

  else
  {
    v9 = *(*(a1 + 48) + 16);
  }

  v9();
}

- (void)_handleStateSyncResponse:(id)response domain:(id)domain
{
  v25 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  domainCopy = domain;
  dispatch_assert_queue_V2(self->_queue);
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = HMFGetLogIdentifier();
    shortDescription = [responseCopy shortDescription];
    v19 = 138543874;
    v20 = v11;
    v21 = 2112;
    v22 = shortDescription;
    v23 = 2112;
    v24 = domainCopy;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Handling state sync response: %@ for domain: %@", &v19, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  stateSyncObserversByDomain = [(HMDStateSyncManager *)selfCopy stateSyncObserversByDomain];
  v14 = [stateSyncObserversByDomain objectForKey:domainCopy];

  if (v14)
  {
    [v14 stateSyncManager:selfCopy didObserveUpdatedState:responseCopy domain:domainCopy];
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = selfCopy;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      v19 = 138543618;
      v20 = v18;
      v21 = 2112;
      v22 = domainCopy;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@No observer registered for domain: %@", &v19, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
  }
}

- (void)_performSyncForDomains:(id)domains
{
  v49 = *MEMORY[0x277D85DE8];
  domainsCopy = domains;
  dispatch_assert_queue_V2(self->_queue);
  if (domainsCopy && [domainsCopy count])
  {
    home = [(HMDStateSyncManager *)self home];
    primaryResident = [home primaryResident];

    if ([primaryResident isCurrentDevice])
    {
      v7 = objc_autoreleasePoolPush();
      selfCopy = self;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = HMFGetLogIdentifier();
        *buf = 138543618;
        v44 = v10;
        v45 = 2112;
        v46 = domainsCopy;
        _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Not performing sync for domains: %@ since we are the primary", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v7);
    }

    else
    {
      device = [primaryResident device];
      if (device)
      {
        v16 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v18 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = HMFGetLogIdentifier();
          shortDescription = [device shortDescription];
          *buf = 138543874;
          v44 = v19;
          v45 = 2112;
          v46 = domainsCopy;
          v47 = 2112;
          v48 = shortDescription;
          _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@Performing sync for domains: %@ with %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v16);
        v21 = [HMDRemoteDeviceMessageDestination alloc];
        messageTargetUUID = [(HMDStateSyncManager *)selfCopy2 messageTargetUUID];
        device2 = [primaryResident device];
        v24 = [(HMDRemoteDeviceMessageDestination *)v21 initWithTarget:messageTargetUUID device:device2];

        v41 = @"domains";
        allObjects = [domainsCopy allObjects];
        v42 = allObjects;
        v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v42 forKeys:&v41 count:1];

        v27 = [[HMDRemoteMessage alloc] initWithName:@"HMDStateSyncFetchMessage" destination:v24 payload:v26 type:0 timeout:1 secure:60.0];
        v35 = MEMORY[0x277D85DD0];
        v36 = 3221225472;
        v37 = __46__HMDStateSyncManager__performSyncForDomains___block_invoke;
        v38 = &unk_278688370;
        v39 = selfCopy2;
        v40 = domainsCopy;
        [(HMDRemoteMessage *)v27 setResponseHandler:&v35];
        [(HMFMessageDispatcher *)selfCopy2->_dispatcher sendMessage:v27, v35, v36, v37, v38, v39];
      }

      else
      {
        [(HMDStateSyncManager *)self _startRetryTimerForDomains:domainsCopy];
        v28 = objc_autoreleasePoolPush();
        selfCopy3 = self;
        v30 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          v31 = HMFGetLogIdentifier();
          fetchRetryTimer = [(HMDStateSyncManager *)selfCopy3 fetchRetryTimer];
          fireDate = [fetchRetryTimer fireDate];
          [fireDate timeIntervalSinceNow];
          *buf = 138543874;
          v44 = v31;
          v45 = 2112;
          v46 = domainsCopy;
          v47 = 2048;
          v48 = v34;
          _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_ERROR, "%{public}@Unable to perform sync for domains: %@ as the primary resident for the home has no device. Will retry in %f seconds.", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v28);
      }
    }
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543362;
      v44 = v14;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Unable to perform sync, no domain(s) specified", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
  }
}

void __46__HMDStateSyncManager__performSyncForDomains___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(v8 + 8);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __46__HMDStateSyncManager__performSyncForDomains___block_invoke_2;
  v12[3] = &unk_2786891E0;
  v13 = v5;
  v14 = v8;
  v15 = v7;
  v16 = v6;
  v10 = v6;
  v11 = v5;
  dispatch_async(v9, v12);
}

void __46__HMDStateSyncManager__performSyncForDomains___block_invoke_2(uint64_t a1)
{
  v1 = a1;
  v46 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    [*(a1 + 40) _startRetryTimerForDomains:*(a1 + 48)];
    v2 = objc_autoreleasePoolPush();
    v3 = v1;
    v4 = *(v1 + 40);
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = HMFGetLogIdentifier();
      v7 = *(v1 + 48);
      v8 = [*(v1 + 40) fetchRetryTimer];
      v9 = [v8 fireDate];
      [v9 timeIntervalSinceNow];
      v10 = *(v3 + 32);
      *buf = 138544130;
      v39 = v6;
      v40 = 2112;
      v41 = v7;
      v42 = 2048;
      v43 = v11;
      v44 = 2112;
      v45 = v10;
      _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_ERROR, "%{public}@Failed to perform sync for domains: %@. Will retry in %f seconds. Error: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v2);
  }

  else
  {
    [*(a1 + 56) hmf_arrayForKey:@"dataByDomains"];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    obj = v36 = 0u;
    v12 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v12)
    {
      v14 = v12;
      v32 = *v34;
      v15 = @"domain";
      *&v13 = 138543618;
      v28 = v13;
      v29 = v1;
      do
      {
        v16 = 0;
        v30 = v14;
        do
        {
          if (*v34 != v32)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v33 + 1) + 8 * v16);
          v18 = [v17 hmf_stringForKey:{v15, v28}];
          v19 = [v17 hmf_dataForKey:@"data"];
          v20 = v19;
          if (v18)
          {
            v21 = v19 == 0;
          }

          else
          {
            v21 = 1;
          }

          if (v21)
          {
            v22 = v15;
            v23 = objc_autoreleasePoolPush();
            v24 = v1;
            v25 = *(v1 + 40);
            v26 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              v27 = HMFGetLogIdentifier();
              *buf = v28;
              v39 = v27;
              v40 = 2112;
              v41 = v17;
              _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@Missing domain or data from response: %@, skipping", buf, 0x16u);

              v24 = v29;
            }

            objc_autoreleasePoolPop(v23);
            v15 = v22;
            v1 = v24;
            v14 = v30;
          }

          else
          {
            [*(v1 + 40) _removeDomainFromFetchRetryDomains:v18];
            [*(v1 + 40) _handleStateSyncResponse:v20 domain:v18];
          }

          ++v16;
        }

        while (v14 != v16);
        v14 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v14);
    }
  }
}

- (void)_configureWithResidentStatusChannel:(id)channel
{
  v33 = *MEMORY[0x277D85DE8];
  channelCopy = channel;
  dispatch_assert_queue_V2(self->_queue);
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v30 = v8;
    v31 = 2112;
    v32 = channelCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Configuring with ResidentStatusChannel: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  objc_storeWeak(&selfCopy->_residentStatusChannel, channelCopy);
  residentStatusChannel = [(HMDStateSyncManager *)selfCopy residentStatusChannel];
  [residentStatusChannel addObserver:selfCopy];

  home = [(HMDStateSyncManager *)selfCopy home];
  v11 = [HMDUserMessagePolicy userMessagePolicyWithHome:home userPrivilege:0 remoteAccessRequired:0];
  v12 = +[HMDRemoteMessagePolicy defaultSecurePolicy];
  dispatcher = selfCopy->_dispatcher;
  v28[0] = v11;
  v28[1] = v12;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:2];
  [(HMFMessageDispatcher *)dispatcher registerForMessage:@"HMDStateSyncFetchMessage" receiver:selfCopy policies:v14 selector:sel__handleStateSyncFetchMessage_];

  if ([(HMDStateSyncManager *)selfCopy isResidentCapable])
  {
    v15 = selfCopy->_dispatcher;
    v27[0] = v11;
    v27[1] = v12;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
    [(HMFMessageDispatcher *)v15 registerForMessage:@"HMDStateSyncPublishMessage" receiver:selfCopy policies:v16 selector:sel__handleStateSyncPublishMessage_];
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  stateSyncDelegates = [(HMDStateSyncManager *)selfCopy stateSyncDelegates];
  v18 = [stateSyncDelegates countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v23;
    do
    {
      v21 = 0;
      do
      {
        if (*v23 != v20)
        {
          objc_enumerationMutation(stateSyncDelegates);
        }

        [*(*(&v22 + 1) + 8 * v21++) didConfigure:selfCopy];
      }

      while (v19 != v21);
      v19 = [stateSyncDelegates countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v19);
  }
}

- (void)timerDidFire:(id)fire
{
  v15 = *MEMORY[0x277D85DE8];
  fireCopy = fire;
  dispatch_assert_queue_V2(self->_queue);
  fetchRetryTimer = [(HMDStateSyncManager *)self fetchRetryTimer];

  if (fetchRetryTimer == fireCopy)
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v9;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Fetch retry timer fired", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    fetchRetryTimer2 = [(HMDStateSyncManager *)selfCopy fetchRetryTimer];
    [fetchRetryTimer2 suspend];

    fetchRetryDomains = [(HMDStateSyncManager *)selfCopy fetchRetryDomains];
    v12 = objc_msgSend_copy(fetchRetryDomains);
    [(HMDStateSyncManager *)selfCopy _performSyncForDomains:v12];
  }
}

- (void)_handleResidentStatusChannelReadyNotification:(id)notification
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__HMDStateSyncManager__handleResidentStatusChannelReadyNotification___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(queue, block);
}

void __69__HMDStateSyncManager__handleResidentStatusChannelReadyNotification___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) residentDeviceManagerContext];
  v3 = [v2 residentStatusChannel];

  [*(a1 + 32) _configureWithResidentStatusChannel:v3];
}

- (void)_handleStateSyncPublishMessage:(id)message
{
  v60[1] = *MEMORY[0x277D85DE8];
  messageCopy = message;
  selfCopy = self;
  dispatch_assert_queue_V2(self->_queue);
  messagePayload = [messageCopy messagePayload];
  v6 = [messagePayload hmf_arrayForKey:@"dataByDomains"];

  if (v6)
  {
    goto LABEL_2;
  }

  messagePayload2 = [messageCopy messagePayload];
  v30 = [messagePayload2 hmf_stringForKey:@"domain"];

  if (v30)
  {
    messagePayload3 = [messageCopy messagePayload];
    v32 = [messagePayload3 hmf_dataForKey:@"data"];

    if (v32)
    {
      v58[0] = @"domain";
      v58[1] = @"data";
      v59[0] = v30;
      v59[1] = v32;
      v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v59 forKeys:v58 count:2];
      v60[0] = v33;
      v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:1];

LABEL_2:
      v44 = messageCopy;
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      obj = v6;
      v7 = [obj countByEnumeratingWithState:&v47 objects:v57 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v48;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v48 != v9)
            {
              objc_enumerationMutation(obj);
            }

            v11 = *(*(&v47 + 1) + 8 * i);
            v12 = [v11 hmf_stringForKey:@"domain"];
            v13 = [v11 hmf_dataForKey:@"data"];
            v14 = objc_autoreleasePoolPush();
            v15 = selfCopy;
            v16 = HMFGetOSLogHandle();
            v17 = v16;
            if (v12)
            {
              v18 = v13 == 0;
            }

            else
            {
              v18 = 1;
            }

            if (v18)
            {
              if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
              {
                v19 = HMFGetLogIdentifier();
                *buf = 138543618;
                v52 = v19;
                v53 = 2112;
                v54 = v11;
                _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Missing domain or data from publish: %@, skipping", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v14);
            }

            else
            {
              if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
              {
                v21 = HMFGetLogIdentifier();
                shortDescription = [v13 shortDescription];
                *buf = 138543874;
                v52 = v21;
                v53 = 2112;
                v54 = shortDescription;
                v55 = 2112;
                v56 = v12;
                _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@Handling state sync publish: %@ for domain: %@", buf, 0x20u);
              }

              objc_autoreleasePoolPop(v14);
              [(HMDStateSyncManager *)v15 _removeDomainFromFetchRetryDomains:v12];
              stateSyncObserversByDomain = [(HMDStateSyncManager *)v15 stateSyncObserversByDomain];
              v24 = [stateSyncObserversByDomain objectForKey:v12];

              if (v24)
              {
                [v24 stateSyncManager:v15 didObserveUpdatedState:v13 domain:v12];
              }

              else
              {
                v25 = objc_autoreleasePoolPush();
                v26 = v15;
                v27 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
                {
                  v28 = HMFGetLogIdentifier();
                  *buf = 138543618;
                  v52 = v28;
                  v53 = 2112;
                  v54 = v12;
                  _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_ERROR, "%{public}@No observer registered for domain: %@", buf, 0x16u);
                }

                objc_autoreleasePoolPop(v25);
              }
            }
          }

          v8 = [obj countByEnumeratingWithState:&v47 objects:v57 count:16];
        }

        while (v8);
      }

      messageCopy = v44;
      goto LABEL_26;
    }

    v39 = objc_autoreleasePoolPush();
    v40 = selfCopy;
    v41 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      v42 = HMFGetLogIdentifier();
      shortDescription2 = [messageCopy shortDescription];
      *buf = 138543618;
      v52 = v42;
      v53 = 2112;
      v54 = shortDescription2;
      _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_ERROR, "%{public}@Ignoring state sync publish message %@: missing data", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v39);
  }

  else
  {
    v34 = objc_autoreleasePoolPush();
    v35 = selfCopy;
    v36 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v37 = HMFGetLogIdentifier();
      shortDescription3 = [messageCopy shortDescription];
      *buf = 138543618;
      v52 = v37;
      v53 = 2112;
      v54 = shortDescription3;
      _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_ERROR, "%{public}@Ignoring state sync publish message %@: missing domain", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v34);
  }

LABEL_26:
}

- (void)_handleStateSyncFetchMessage:(id)message
{
  v55 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  dispatch_assert_queue_V2(self->_queue);
  messagePayload = [messageCopy messagePayload];
  v6 = [messagePayload hmf_arrayForKey:@"domains"];

  if (v6)
  {
    v37 = messageCopy;
    remoteSourceDevice = [messageCopy remoteSourceDevice];
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = HMFGetLogIdentifier();
      shortDescription = [remoteSourceDevice shortDescription];
      *buf = 138543874;
      v50 = v11;
      v51 = 2112;
      v52 = v6;
      v53 = 2112;
      v54 = shortDescription;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Handling fetch request for domains: %@ from device: %@", buf, 0x20u);
    }

    v35 = remoteSourceDevice;

    objc_autoreleasePoolPop(v8);
    array = [MEMORY[0x277CBEB18] array];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v36 = v6;
    obj = v6;
    v13 = [obj countByEnumeratingWithState:&v40 objects:v48 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v41;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v41 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v40 + 1) + 8 * i);
          lastPublishedStateByDomain = [(HMDStateSyncManager *)selfCopy lastPublishedStateByDomain];
          v19 = [lastPublishedStateByDomain objectForKeyedSubscript:v17];

          if (v19)
          {
            v46[0] = @"domain";
            v46[1] = @"data";
            v47[0] = v17;
            v47[1] = v19;
            v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:v46 count:2];
            [array addObject:v20];
          }

          else
          {
            v21 = v15;
            v22 = objc_autoreleasePoolPush();
            v23 = selfCopy;
            v24 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              HMFGetLogIdentifier();
              v26 = v25 = selfCopy;
              *buf = 138543618;
              v50 = v26;
              v51 = 2112;
              v52 = v17;
              _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@No cached state for domain: %@, skipping", buf, 0x16u);

              selfCopy = v25;
            }

            objc_autoreleasePoolPop(v22);
            v15 = v21;
          }
        }

        v14 = [obj countByEnumeratingWithState:&v40 objects:v48 count:16];
      }

      while (v14);
    }

    v44 = @"dataByDomains";
    v27 = objc_msgSend_copy(array);
    v45 = v27;
    v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
    messageCopy = v37;
    [v37 respondWithPayload:v28];

    v29 = v35;
    v6 = v36;
  }

  else
  {
    v30 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v32 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = HMFGetLogIdentifier();
      shortDescription2 = [messageCopy shortDescription];
      *buf = 138543618;
      v50 = v33;
      v51 = 2112;
      v52 = shortDescription2;
      _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_ERROR, "%{public}@Rejecting state sync fetch request %@: missing domains", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v30);
    v29 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    [messageCopy respondWithError:v29];
  }
}

- (id)logIdentifier
{
  home = [(HMDStateSyncManager *)self home];
  uuid = [home uuid];
  uUIDString = [uuid UUIDString];

  return uUIDString;
}

- (NSUUID)messageTargetUUID
{
  home = [(HMDStateSyncManager *)self home];
  uuid = [home uuid];

  return uuid;
}

- (void)channel:(id)channel didObserveNewDomainDataDevices:(id)devices removedDomainDataDevices:(id)dataDevices updatedDomainDataDevices:(id)domainDataDevices
{
  channelCopy = channel;
  devicesCopy = devices;
  dataDevicesCopy = dataDevices;
  domainDataDevicesCopy = domainDataDevices;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __112__HMDStateSyncManager_channel_didObserveNewDomainDataDevices_removedDomainDataDevices_updatedDomainDataDevices___block_invoke;
  block[3] = &unk_278689550;
  block[4] = self;
  v20 = devicesCopy;
  v21 = dataDevicesCopy;
  v22 = domainDataDevicesCopy;
  v23 = channelCopy;
  v15 = channelCopy;
  v16 = domainDataDevicesCopy;
  v17 = dataDevicesCopy;
  v18 = devicesCopy;
  dispatch_async(queue, block);
}

void __112__HMDStateSyncManager_channel_didObserveNewDomainDataDevices_removedDomainDataDevices_updatedDomainDataDevices___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    *buf = 138544130;
    v26 = v5;
    v27 = 2112;
    v28 = v6;
    v29 = 2112;
    v30 = v7;
    v31 = 2112;
    v32 = v8;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Status channel observed devices added %@ \nlost %@ \nupdated %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v2);
  v9 = [*(a1 + 64) dataForDomain:1];
  v10 = [v9 allObjects];
  v11 = [v10 sortedArrayUsingComparator:&__block_literal_global_162359];

  v12 = [v11 lastObject];
  v13 = v12;
  if (v12)
  {
    v14 = [v12 dataByDomain];
    v15 = [v14 hmf_dictionaryForKey:@"ss"];

    v16 = [MEMORY[0x277CBEB58] set];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __112__HMDStateSyncManager_channel_didObserveNewDomainDataDevices_removedDomainDataDevices_updatedDomainDataDevices___block_invoke_52;
    v23[3] = &unk_27867C228;
    v23[4] = *(a1 + 32);
    v24 = v16;
    v17 = v16;
    [v15 enumerateKeysAndObjectsUsingBlock:v23];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __112__HMDStateSyncManager_channel_didObserveNewDomainDataDevices_removedDomainDataDevices_updatedDomainDataDevices___block_invoke_54;
    v22[3] = &unk_278683BA0;
    v22[4] = *(a1 + 32);
    [v17 hmf_enumerateWithAutoreleasePoolUsingBlock:v22];
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v19 = *(a1 + 32);
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543362;
      v26 = v21;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@No State Sync Status present on channel", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v18);
  }
}

void __112__HMDStateSyncManager_channel_didObserveNewDomainDataDevices_removedDomainDataDevices_updatedDomainDataDevices___block_invoke_52(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) lastSeenChangeTokensByDomain];
  v8 = [v7 objectForKeyedSubscript:v5];

  v9 = [v6 isEqualToData:v8];
  v10 = objc_autoreleasePoolPush();
  v11 = *(a1 + 32);
  v12 = HMFGetOSLogHandle();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v13)
    {
      v14 = HMFGetLogIdentifier();
      v17 = 138543618;
      v18 = v14;
      v19 = 2112;
      v20 = v5;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@Token for domain: %@ has not changed", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
  }

  else
  {
    if (v13)
    {
      v15 = HMFGetLogIdentifier();
      v17 = 138544130;
      v18 = v15;
      v19 = 2112;
      v20 = v5;
      v21 = 2112;
      v22 = v8;
      v23 = 2112;
      v24 = v6;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@Updating token for domain: %@ from %@ to %@", &v17, 0x2Au);
    }

    objc_autoreleasePoolPop(v10);
    [*(a1 + 40) addObject:v5];
    v16 = [*(a1 + 32) lastSeenChangeTokensByDomain];
    [v16 setObject:v6 forKeyedSubscript:v5];
  }
}

void __112__HMDStateSyncManager_channel_didObserveNewDomainDataDevices_removedDomainDataDevices_updatedDomainDataDevices___block_invoke_54(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [*(a1 + 32) stateSyncObserversByDomain];
  v4 = [v3 objectForKey:v11];

  if (v4)
  {
    v5 = [*(a1 + 32) syncOptionsByDomain];
    v6 = [v5 objectForKeyedSubscript:v11];
    v7 = [v6 unsignedIntegerValue];

    v8 = *(a1 + 32);
    if (v7)
    {
      v9 = [MEMORY[0x277CBEB98] setWithObject:v11];
      [v8 _performSyncForDomains:v9];
    }

    else
    {
      v10 = [*(a1 + 32) lastSeenChangeTokensByDomain];
      v9 = [v10 objectForKeyedSubscript:v11];

      [v4 stateSyncManager:*(a1 + 32) didObserveUpdatedChangeToken:v9 domain:v11];
    }
  }
}

uint64_t __112__HMDStateSyncManager_channel_didObserveNewDomainDataDevices_removedDomainDataDevices_updatedDomainDataDevices___block_invoke_50(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 assertionTime];
  v6 = [v4 assertionTime];

  v7 = [v5 compare:v6];
  return v7;
}

- (void)removeDelegate:(id)delegate
{
  delegateCopy = delegate;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__HMDStateSyncManager_removeDelegate___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = delegateCopy;
  v6 = delegateCopy;
  dispatch_async(queue, v7);
}

void __38__HMDStateSyncManager_removeDelegate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) stateSyncDelegates];
  [v2 removeObject:*(a1 + 40)];
}

- (void)addDelegate:(id)delegate
{
  delegateCopy = delegate;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35__HMDStateSyncManager_addDelegate___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = delegateCopy;
  v6 = delegateCopy;
  dispatch_async(queue, v7);
}

void __35__HMDStateSyncManager_addDelegate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) stateSyncDelegates];
  [v2 addObject:*(a1 + 40)];
}

- (void)unregisterObserverForDomain:(id)domain
{
  domainCopy = domain;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__HMDStateSyncManager_unregisterObserverForDomain___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = domainCopy;
  v6 = domainCopy;
  dispatch_async(queue, v7);
}

uint64_t __51__HMDStateSyncManager_unregisterObserverForDomain___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v9 = 138543618;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Unregistering observer for domain: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = [*(a1 + 32) stateSyncObserversByDomain];
  [v7 removeObjectForKey:*(a1 + 40)];

  return [*(a1 + 32) _removeDomainFromFetchRetryDomains:*(a1 + 40)];
}

- (void)registerObserver:(id)observer domain:(id)domain
{
  observerCopy = observer;
  domainCopy = domain;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__HMDStateSyncManager_registerObserver_domain___block_invoke;
  block[3] = &unk_27868A010;
  block[4] = self;
  v12 = observerCopy;
  v13 = domainCopy;
  v9 = domainCopy;
  v10 = observerCopy;
  dispatch_async(queue, block);
}

void __47__HMDStateSyncManager_registerObserver_domain___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v19 = 138543874;
    v20 = v5;
    v21 = 2112;
    v22 = v6;
    v23 = 2112;
    v24 = v7;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Registering observer: %@ for domain: %@", &v19, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  v8 = [*(a1 + 32) stateSyncObserversByDomain];
  [v8 setObject:*(a1 + 40) forKey:*(a1 + 48)];

  v9 = [*(a1 + 32) scopeByDomain];
  v10 = [v9 objectForKeyedSubscript:*(a1 + 48)];
  v11 = [v10 isEqual:&unk_283E73700];

  if (v11)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = *(a1 + 32);
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = HMFGetLogIdentifier();
      v16 = *(a1 + 48);
      v19 = 138543618;
      v20 = v15;
      v21 = 2112;
      v22 = v16;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@Performing sync for domain: %@ because observer was added", &v19, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    v17 = *(a1 + 32);
    v18 = [MEMORY[0x277CBEB98] setWithObject:*(a1 + 48)];
    [v17 _performSyncForDomains:v18];
  }
}

- (void)stopPublishingForDomain:(id)domain completion:(id)completion
{
  domainCopy = domain;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__HMDStateSyncManager_stopPublishingForDomain_completion___block_invoke;
  block[3] = &unk_278689F98;
  block[4] = self;
  v12 = domainCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = domainCopy;
  dispatch_async(queue, block);
}

void __58__HMDStateSyncManager_stopPublishingForDomain_completion___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v17 = 138543618;
    v18 = v5;
    v19 = 2112;
    v20 = v6;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Stopping publishing for domain: %@", &v17, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = [*(a1 + 32) scopeByDomain];
  v8 = [v7 objectForKeyedSubscript:*(a1 + 40)];

  if (v8)
  {
    v9 = [v8 integerValue];
    if (v9 == 1)
    {
      [*(a1 + 32) _stopPublishingToAllUsersForDomain:*(a1 + 40) completion:*(a1 + 48)];
    }

    else if (!v9)
    {
      [*(a1 + 32) _stopPublishingToResidentsForDomain:*(a1 + 40) completion:*(a1 + 48)];
    }
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 32);
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v14 = *(a1 + 40);
      v17 = 138543618;
      v18 = v13;
      v19 = 2112;
      v20 = v14;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Unable to stop publishing for domain: %@, not configured", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v15 = *(a1 + 48);
    v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:21];
    (*(v15 + 16))(v15, v16);
  }
}

- (void)publishState:(id)state domain:(id)domain completion:(id)completion
{
  stateCopy = state;
  domainCopy = domain;
  completionCopy = completion;
  queue = self->_queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __54__HMDStateSyncManager_publishState_domain_completion___block_invoke;
  v15[3] = &unk_278689AB8;
  v15[4] = self;
  v16 = stateCopy;
  v17 = domainCopy;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = domainCopy;
  v14 = stateCopy;
  dispatch_async(queue, v15);
}

void __54__HMDStateSyncManager_publishState_domain_completion___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 40) shortDescription];
    v7 = *(a1 + 48);
    v25 = 138543874;
    v26 = v5;
    v27 = 2112;
    v28 = v6;
    v29 = 2112;
    v30 = v7;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Publishing state: %@ for domain: %@", &v25, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  v8 = [*(a1 + 32) home];
  v9 = [v8 isCurrentDeviceAvailableResident];

  if (v9)
  {
    v10 = [*(a1 + 32) scopeByDomain];
    v11 = [v10 objectForKeyedSubscript:*(a1 + 48)];

    if (v11)
    {
      v12 = [v11 integerValue];
      if (v12 == 1)
      {
        [*(a1 + 32) _publishToAllUsersWithState:*(a1 + 40) domain:*(a1 + 48) completion:*(a1 + 56)];
      }

      else if (!v12)
      {
        [*(a1 + 32) _publishToResidentsWithState:*(a1 + 40) domain:*(a1 + 48) completion:*(a1 + 56)];
      }
    }

    else
    {
      v18 = objc_autoreleasePoolPush();
      v19 = *(a1 + 32);
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = HMFGetLogIdentifier();
        v22 = *(a1 + 48);
        v25 = 138543618;
        v26 = v21;
        v27 = 2112;
        v28 = v22;
        _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@Unable to publish state for domain: %@, not configured", &v25, 0x16u);
      }

      objc_autoreleasePoolPop(v18);
      v23 = *(a1 + 56);
      v24 = [MEMORY[0x277CCA9B8] hmErrorWithCode:21];
      (*(v23 + 16))(v23, v24);

      v11 = 0;
    }
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = *(a1 + 32);
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      v25 = 138543362;
      v26 = v16;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Attempting to publish on a device that is not a resident in the home", &v25, 0xCu);
    }

    objc_autoreleasePoolPop(v13);
    v17 = *(a1 + 56);
    v11 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    (*(v17 + 16))(v17, v11);
  }
}

- (void)publishChangeToken:(id)token domain:(id)domain completion:(id)completion
{
  tokenCopy = token;
  domainCopy = domain;
  completionCopy = completion;
  queue = self->_queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __60__HMDStateSyncManager_publishChangeToken_domain_completion___block_invoke;
  v15[3] = &unk_278689AB8;
  v15[4] = self;
  v16 = tokenCopy;
  v17 = domainCopy;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = domainCopy;
  v14 = tokenCopy;
  dispatch_async(queue, v15);
}

void __60__HMDStateSyncManager_publishChangeToken_domain_completion___block_invoke(uint64_t a1)
{
  v43 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    *buf = 138543874;
    v38 = v5;
    v39 = 2112;
    v40 = v6;
    v41 = 2112;
    v42 = v7;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Publishing changeToken: %@ for domain: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  v8 = [*(a1 + 32) home];
  v9 = [v8 isCurrentDeviceAvailableResident];

  if (v9)
  {
    v10 = [*(a1 + 32) scopeByDomain];
    v11 = [v10 objectForKeyedSubscript:*(a1 + 48)];

    if (v11)
    {
      v12 = *(a1 + 40);
      v13 = [*(a1 + 32) lastPublishedChangeTokenByDomain];
      [v13 setObject:v12 forKeyedSubscript:*(a1 + 48)];

      v14 = [*(a1 + 32) residentStatusChannel];
      v15 = [*(a1 + 32) lastPublishedChangeTokenByDomain];
      v16 = objc_msgSend_copy(v15);
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __60__HMDStateSyncManager_publishChangeToken_domain_completion___block_invoke_46;
      v34[3] = &unk_27868A528;
      v33 = *(a1 + 32);
      v17 = *(&v33 + 1);
      v18 = *(a1 + 48);
      v19 = *(a1 + 56);
      *&v20 = v18;
      *(&v20 + 1) = v19;
      v35 = v33;
      v36 = v20;
      [v14 publishDomain:1 data:v16 completion:v34];
    }

    else
    {
      v26 = objc_autoreleasePoolPush();
      v27 = *(a1 + 32);
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = HMFGetLogIdentifier();
        v30 = *(a1 + 48);
        *buf = 138543618;
        v38 = v29;
        v39 = 2112;
        v40 = v30;
        _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_ERROR, "%{public}@Unable to publish change token for domain: %@, not configured", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v26);
      v31 = *(a1 + 56);
      v32 = [MEMORY[0x277CCA9B8] hmErrorWithCode:21];
      (*(v31 + 16))(v31, v32);

      v11 = 0;
    }
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    v22 = *(a1 + 32);
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543362;
      v38 = v24;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Attempting to publish on a device that is not a resident in the home", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v21);
    v25 = *(a1 + 56);
    v11 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    (*(v25 + 16))(v25, v11);
  }
}

void __60__HMDStateSyncManager_publishChangeToken_domain_completion___block_invoke_46(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v8 = *(a1 + 40);
      v9 = *(a1 + 48);
      v10 = 138544130;
      v11 = v7;
      v12 = 2112;
      v13 = v8;
      v14 = 2112;
      v15 = v9;
      v16 = 2112;
      v17 = v3;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Publishing changeToken: %@ for domain: %@ failed with error: %@", &v10, 0x2Au);
    }

    objc_autoreleasePoolPop(v4);
  }

  (*(*(a1 + 56) + 16))();
}

- (void)configureDomain:(id)domain scope:(int64_t)scope syncOptions:(int64_t)options completion:(id)completion
{
  domainCopy = domain;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__HMDStateSyncManager_configureDomain_scope_syncOptions_completion___block_invoke;
  block[3] = &unk_27867C1E0;
  block[4] = self;
  v16 = domainCopy;
  scopeCopy = scope;
  optionsCopy = options;
  v17 = completionCopy;
  v13 = completionCopy;
  v14 = domainCopy;
  dispatch_async(queue, block);
}

void __68__HMDStateSyncManager_configureDomain_scope_syncOptions_completion___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v7 = *(a1 + 56);
    if (v7 == 1)
    {
      v8 = @"All Users";
    }

    else if (v7)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown domain scope: %lu", *(a1 + 56)];
    }

    else
    {
      v8 = @"Resident Only";
    }

    v9 = *(a1 + 64);
    if (v9 == 1)
    {
      v10 = @"Full State";
    }

    else if (v9)
    {
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown options: %lu", *(a1 + 64)];
    }

    else
    {
      v10 = @"Token Only";
    }

    *buf = 138544130;
    v22 = v5;
    v23 = 2112;
    v24 = v6;
    v25 = 2112;
    v26 = v8;
    v27 = 2112;
    v28 = v10;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Configuring domain: %@ with scope: %@ syncOptions: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v2);
  if (*(a1 + 56) || *(a1 + 64))
  {
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:?];
    v12 = [*(a1 + 32) scopeByDomain];
    [v12 setObject:v11 forKeyedSubscript:*(a1 + 40)];

    v13 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 64)];
    v14 = [*(a1 + 32) syncOptionsByDomain];
    [v14 setObject:v13 forKeyedSubscript:*(a1 + 40)];

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = *(a1 + 32);
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543362;
      v22 = v18;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Unsupported configuration", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
    v19 = *(a1 + 48);
    v20 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    (*(v19 + 16))(v19, v20);
  }
}

- (void)configure
{
  notificationCenter = [(HMDStateSyncManager *)self notificationCenter];
  [notificationCenter addObserver:self selector:sel__handleResidentStatusChannelReadyNotification_ name:@"HMDResidentStatusChannelReadyNotification" object:0];
}

- (HMDStateSyncManager)initWithHome:(id)home queue:(id)queue isResidentCapable:(BOOL)capable dispatcher:(id)dispatcher notificationCenter:(id)center residentDeviceManagerContext:(id)context timerProvider:(id)provider
{
  homeCopy = home;
  queueCopy = queue;
  dispatcherCopy = dispatcher;
  centerCopy = center;
  contextCopy = context;
  providerCopy = provider;
  v40.receiver = self;
  v40.super_class = HMDStateSyncManager;
  v19 = [(HMDStateSyncManager *)&v40 init];
  v20 = v19;
  if (v19)
  {
    objc_storeWeak(&v19->_home, homeCopy);
    objc_storeStrong(&v20->_queue, queue);
    v20->_isResidentCapable = capable;
    objc_storeStrong(&v20->_dispatcher, dispatcher);
    objc_storeStrong(&v20->_notificationCenter, center);
    objc_storeWeak(&v20->_residentDeviceManagerContext, contextCopy);
    objc_storeStrong(&v20->_timerProvider, provider);
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    stateSyncDelegates = v20->_stateSyncDelegates;
    v20->_stateSyncDelegates = weakObjectsHashTable;

    strongToWeakObjectsMapTable = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
    stateSyncObserversByDomain = v20->_stateSyncObserversByDomain;
    v20->_stateSyncObserversByDomain = strongToWeakObjectsMapTable;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    scopeByDomain = v20->_scopeByDomain;
    v20->_scopeByDomain = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    syncOptionsByDomain = v20->_syncOptionsByDomain;
    v20->_syncOptionsByDomain = dictionary2;

    dictionary3 = [MEMORY[0x277CBEB38] dictionary];
    lastPublishedStateByDomain = v20->_lastPublishedStateByDomain;
    v20->_lastPublishedStateByDomain = dictionary3;

    dictionary4 = [MEMORY[0x277CBEB38] dictionary];
    lastPublishedChangeTokenByDomain = v20->_lastPublishedChangeTokenByDomain;
    v20->_lastPublishedChangeTokenByDomain = dictionary4;

    dictionary5 = [MEMORY[0x277CBEB38] dictionary];
    lastSeenChangeTokensByDomain = v20->_lastSeenChangeTokensByDomain;
    v20->_lastSeenChangeTokensByDomain = dictionary5;

    v35 = [MEMORY[0x277CBEB58] set];
    fetchRetryDomains = v20->_fetchRetryDomains;
    v20->_fetchRetryDomains = v35;
  }

  return v20;
}

- (HMDStateSyncManager)initWithHome:(id)home queue:(id)queue residentDeviceManagerContext:(id)context
{
  contextCopy = context;
  queueCopy = queue;
  homeCopy = home;
  v11 = +[HMDDeviceCapabilities deviceCapabilities];
  isResidentCapable = [v11 isResidentCapable];
  msgDispatcher = [homeCopy msgDispatcher];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v15 = objc_opt_new();
  v16 = [(HMDStateSyncManager *)self initWithHome:homeCopy queue:queueCopy isResidentCapable:isResidentCapable dispatcher:msgDispatcher notificationCenter:defaultCenter residentDeviceManagerContext:contextCopy timerProvider:v15];

  return v16;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t18_162419 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t18_162419, &__block_literal_global_57_162420);
  }

  v3 = logCategory__hmf_once_v19_162421;

  return v3;
}

void __34__HMDStateSyncManager_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v19_162421;
  logCategory__hmf_once_v19_162421 = v0;
}

@end