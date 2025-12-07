@interface HMDResidentStatusChannel
+ (id)logCategory;
- (BOOL)shouldAllowDomainPublishRequest;
- (HMDHome)home;
- (HMDResidentStatus)currentPrimaryResident;
- (HMDResidentStatusChannel)initWithHome:(id)home queue:(id)queue;
- (HMDResidentStatusChannel)initWithHome:(id)home queue:(id)queue notificationCenter:(id)center timerProvider:(id)provider channelProvider:(id)channelProvider logEventSubmitter:(id)submitter featuresDataSource:(id)source;
- (HMDResidentStatusChannelManager)manager;
- (NSSet)domainDataStatuses;
- (NSSet)presentResidentStatuses;
- (id)_startTimerWithDuration:(double)duration;
- (id)dataForDomain:(unint64_t)domain;
- (id)domainDataPairsPayload;
- (id)dumpStateWithPrivacyLevel:(unint64_t)level;
- (id)logIdentifier;
- (id)payloadWithStatus:(id)status;
- (void)_handleHomeUserAddedNotification:(id)notification;
- (void)_handleHomeUserRemovedNotification:(id)notification;
- (void)_handlePrimaryResidentUpdateNotification:(id)notification;
- (void)_inviteSharedUsers;
- (void)_publishResidentStatus:(id)status reason:(int64_t)reason;
- (void)_startDebounceTimer;
- (void)_stopDebounceTimer;
- (void)_stopPublishingAsResident;
- (void)addObserver:(id)observer;
- (void)channel:(id)channel didObserveConnectionChange:(BOOL)change;
- (void)channel:(id)channel didObserveRecordUpdate:(id)update;
- (void)domainPublishRateLimitingTimerFired;
- (void)publishDomain:(unint64_t)domain data:(id)data completion:(id)completion;
- (void)publishResidentStatus:(id)status reason:(int64_t)reason;
- (void)removeObserver:(id)observer;
- (void)start;
- (void)stop;
- (void)stopPublishingAsResident;
- (void)stopPublishingDomain:(unint64_t)domain;
- (void)timerDidFire:(id)fire;
@end

@implementation HMDResidentStatusChannel

- (HMDResidentStatusChannelManager)manager
{
  WeakRetained = objc_loadWeakRetained(&self->_manager);

  return WeakRetained;
}

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (id)logIdentifier
{
  home = [(HMDResidentStatusChannel *)self home];
  uuid = [home uuid];
  uUIDString = [uuid UUIDString];

  return uUIDString;
}

- (void)_inviteSharedUsers
{
  v18 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  home = [(HMDResidentStatusChannel *)self home];
  if ([home isOwnerUser] && objc_msgSend(home, "isCurrentDevicePrimaryResident") && -[HMDResidentStatusChannel receivedInitialChannelState](self, "receivedInitialChannelState"))
  {
    v4 = [home usersIncludingPendingUsers:1];
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543618;
      v15 = v8;
      v16 = 2112;
      v17 = v4;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Setting invited users to: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    objc_initWeak(buf, selfCopy);
    channel = [(HMDResidentStatusChannel *)selfCopy channel];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __46__HMDResidentStatusChannel__inviteSharedUsers__block_invoke;
    v11[3] = &unk_278687540;
    objc_copyWeak(&v13, buf);
    v10 = v4;
    v12 = v10;
    [channel setInvitedUsers:v10 withCompletion:v11];

    objc_destroyWeak(&v13);
    objc_destroyWeak(buf);
  }
}

void __46__HMDResidentStatusChannel__inviteSharedUsers__block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = objc_autoreleasePoolPush();
  v6 = WeakRetained;
  v7 = HMFGetOSLogHandle();
  v8 = v7;
  if (v3)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v10 = *(a1 + 32);
      v14 = 138543618;
      v15 = v9;
      v16 = 2112;
      v17 = v10;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to set users %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v11 = [v6 _startTimerWithDuration:3600.0];
    [v6 setInviteRetryTimer:v11];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v12 = HMFGetLogIdentifier();
      v13 = *(a1 + 32);
      v14 = 138543618;
      v15 = v12;
      v16 = 2112;
      v17 = v13;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_DEBUG, "%{public}@Successfully set invited users %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
  }
}

- (id)_startTimerWithDuration:(double)duration
{
  timerProvider = [(HMDResidentStatusChannel *)self timerProvider];
  v6 = [timerProvider timerWithTimeInterval:0 options:duration];

  [v6 setDelegate:self];
  [v6 setDelegateQueue:self->_queue];
  [v6 resume];

  return v6;
}

- (void)_stopDebounceTimer
{
  debounceTimer = [(HMDResidentStatusChannel *)self debounceTimer];
  [debounceTimer cancel];

  [(HMDResidentStatusChannel *)self setDebounceTimer:0];
}

- (void)_startDebounceTimer
{
  debounceTimer = [(HMDResidentStatusChannel *)self debounceTimer];

  if (!debounceTimer)
  {
    v4 = [(HMDResidentStatusChannel *)self _startTimerWithDuration:120.0];
    [(HMDResidentStatusChannel *)self setDebounceTimer:v4];
  }
}

- (void)timerDidFire:(id)fire
{
  v18 = *MEMORY[0x277D85DE8];
  fireCopy = fire;
  dispatch_assert_queue_V2(self->_queue);
  debounceTimer = [(HMDResidentStatusChannel *)self debounceTimer];

  if (debounceTimer == fireCopy)
  {
    [(HMDResidentStatusChannel *)self _stopDebounceTimer];
    channel = [(HMDResidentStatusChannel *)self channel];
    isConnected = [channel isConnected];

    if ((isConnected & 1) == 0)
    {
      v10 = objc_autoreleasePoolPush();
      selfCopy = self;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = HMFGetLogIdentifier();
        v16 = 138543362;
        v17 = v13;
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Status Channel still disconnected after debounce timer fired, resetting records", &v16, 0xCu);
      }

      objc_autoreleasePoolPop(v10);
      [(HMDResidentStatusChannel *)selfCopy setConnected:0];
      channel2 = [(HMDResidentStatusChannel *)selfCopy channel];
      v15 = [MEMORY[0x277CBEB98] set];
      [(HMDResidentStatusChannel *)selfCopy channel:channel2 didObserveRecordUpdate:v15];
    }
  }

  else
  {
    inviteRetryTimer = [(HMDResidentStatusChannel *)self inviteRetryTimer];

    if (inviteRetryTimer == fireCopy)
    {
      [(HMDResidentStatusChannel *)self setInviteRetryTimer:0];
      [(HMDResidentStatusChannel *)self _inviteSharedUsers];
    }

    else
    {
      domainPublishRateLimitingTimer = [(HMDResidentStatusChannel *)self domainPublishRateLimitingTimer];

      if (domainPublishRateLimitingTimer == fireCopy)
      {
        [(HMDResidentStatusChannel *)self domainPublishRateLimitingTimerFired];
      }
    }
  }
}

- (void)channel:(id)channel didObserveConnectionChange:(BOOL)change
{
  changeCopy = change;
  v15 = *MEMORY[0x277D85DE8];
  channelCopy = channel;
  dispatch_assert_queue_V2(self->_queue);
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
  if (changeCopy)
  {
    if (v10)
    {
      v11 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v11;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Status Channel gained connectivity, stopping debounce timer", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    [(HMDResidentStatusChannel *)selfCopy _stopDebounceTimer];
  }

  else
  {
    if (v10)
    {
      v12 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v12;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Status Channel lost connectivity, starting debounce timer", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    [(HMDResidentStatusChannel *)selfCopy _startDebounceTimer];
  }
}

- (void)channel:(id)channel didObserveRecordUpdate:(id)update
{
  v144 = *MEMORY[0x277D85DE8];
  channelCopy = channel;
  updateCopy = update;
  dispatch_assert_queue_V2(self->_queue);
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = HMFGetLogIdentifier();
    *buf = 138543618;
    v136 = v10;
    v137 = 2048;
    v138 = [updateCopy count];
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Status channel updated records (%lu)", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  v11 = objc_autoreleasePoolPush();
  v12 = selfCopy;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543618;
    v136 = v14;
    v137 = 2112;
    v138 = updateCopy;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_DEBUG, "%{public}@Status channel updated records: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  v125 = [MEMORY[0x277CBEB58] set];
  v119 = [MEMORY[0x277CBEB58] set];
  residentStatusMap = [(HMDResidentStatusChannel *)v12 residentStatusMap];
  allValues = [residentStatusMap allValues];
  v124 = [allValues mutableCopy];

  obj = [MEMORY[0x277CBEB38] dictionary];
  v118 = [MEMORY[0x277CBEB58] set];
  v115 = [MEMORY[0x277CBEB58] set];
  v117 = [MEMORY[0x277CBEB58] set];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v130 = 0u;
  v131 = 0u;
  v132 = 0u;
  v133 = 0u;
  v17 = updateCopy;
  v112 = v17;
  v122 = [v17 countByEnumeratingWithState:&v130 objects:v143 count:16];
  if (!v122)
  {

    goto LABEL_48;
  }

  v116 = 0;
  v120 = *v131;
  do
  {
    for (i = 0; i != v122; ++i)
    {
      if (*v131 != v120)
      {
        objc_enumerationMutation(v17);
      }

      v19 = *(*(&v130 + 1) + 8 * i);
      v20 = [[HMDResidentStatus alloc] initWithChannelRecord:v19];
      v21 = v20;
      if (v20)
      {
        if ([(HMDResidentStatus *)v20 isPrimary])
        {
          if (!v116)
          {
            v42 = MEMORY[0x277CBEB98];
            home = [(HMDResidentStatusChannel *)v12 home];
            enabledResidents = [home enabledResidents];
            v45 = [v42 setWithArray:enabledResidents];
            v46 = [(HMDResidentStatus *)v21 matchingDeviceFromResidentDevices:v45];

            v47 = objc_autoreleasePoolPush();
            v48 = v12;
            v49 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
            {
              v50 = HMFGetLogIdentifier();
              shortDescription = [v46 shortDescription];
              *buf = 138543618;
              v136 = v50;
              v137 = 2112;
              v138 = shortDescription;
              _os_log_impl(&dword_229538000, v49, OS_LOG_TYPE_INFO, "%{public}@Found primary resident %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v47);
            v116 = v21;

            v17 = v112;
            goto LABEL_31;
          }

          assertionTime = [(HMDResidentStatus *)v21 assertionTime];
          if (assertionTime && (v23 = assertionTime, [(HMDResidentStatus *)v116 assertionTime], v24 = objc_claimAutoreleasedReturnValue(), v24, v23, v24))
          {
            assertionTime2 = [(HMDResidentStatus *)v21 assertionTime];
            assertionTime3 = [(HMDResidentStatus *)v116 assertionTime];
            v27 = [assertionTime2 compare:assertionTime3];

            v28 = objc_autoreleasePoolPush();
            v29 = v12;
            v30 = HMFGetOSLogHandle();
            v31 = os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);
            if (v27 == 1)
            {
              if (v31)
              {
                v32 = HMFGetLogIdentifier();
                *buf = 138543618;
                v136 = v32;
                v137 = 2112;
                v138 = v21;
                _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_ERROR, "%{public}@Found additional primary resident %@, using as primary because assertion time is newer", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v28);
              v33 = v21;

              v116 = v33;
              goto LABEL_31;
            }

            if (v31)
            {
              v38 = HMFGetLogIdentifier();
              *buf = 138543618;
              v136 = v38;
              v137 = 2112;
              v138 = v21;
              v39 = v30;
              v40 = "%{public}@Found additional primary resident %@, ignoring because assertion time is older";
              v41 = 22;
LABEL_29:
              _os_log_impl(&dword_229538000, v39, OS_LOG_TYPE_ERROR, v40, buf, v41);
            }
          }

          else
          {
            v28 = objc_autoreleasePoolPush();
            v29 = v12;
            v30 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              v38 = HMFGetLogIdentifier();
              *buf = 138543874;
              v136 = v38;
              v137 = 2112;
              v138 = v21;
              v139 = 2112;
              v140 = v116;
              v39 = v30;
              v40 = "%{public}@Unexpected nil assertion time, ignoring, %@, %@";
              v41 = 32;
              goto LABEL_29;
            }
          }

          objc_autoreleasePoolPop(v28);
        }

LABEL_31:
        residentStatusMap2 = [(HMDResidentStatusChannel *)v12 residentStatusMap];
        idsIdentifier = [(HMDResidentStatus *)v21 idsIdentifier];
        v54 = [residentStatusMap2 objectForKeyedSubscript:idsIdentifier];

        v55 = v125;
        if (!v54 || (v56 = [(HMDResidentStatus *)v21 hasChangedFrom:v54], v55 = v119, v56))
        {
          [v55 addObject:v21];
        }

        [v124 removeObject:v21];
        idsIdentifier2 = [(HMDResidentStatus *)v21 idsIdentifier];
        [obj setObject:v21 forKeyedSubscript:idsIdentifier2];

        currentPrimaryResident = [[HMDResidentStatusDomainData alloc] initWithChannelRecord:v19];
        if (currentPrimaryResident)
        {
          domainDataStatusMap = [(HMDResidentStatusChannel *)v12 domainDataStatusMap];
          idsIdentifier3 = [(HMDResidentStatus *)v21 idsIdentifier];
          v60 = [domainDataStatusMap objectForKeyedSubscript:idsIdentifier3];

          v61 = v118;
          if (!v60 || (v62 = [(HMDResidentStatusDomainData *)currentPrimaryResident hasChangedFrom:v60], v61 = v115, v62))
          {
            [v61 addObject:currentPrimaryResident];
          }

          [v117 removeObject:currentPrimaryResident];
          idsIdentifier4 = [(HMDResidentStatus *)v21 idsIdentifier];
          [dictionary setObject:currentPrimaryResident forKeyedSubscript:idsIdentifier4];
        }

        else
        {
          v64 = objc_autoreleasePoolPush();
          v65 = v12;
          v66 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
          {
            v67 = HMFGetLogIdentifier();
            *buf = 138543618;
            v136 = v67;
            v137 = 2112;
            v138 = v19;
            _os_log_impl(&dword_229538000, v66, OS_LOG_TYPE_ERROR, "%{public}@Failed to create state domain data from record %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v64);
          v17 = v112;
        }

        goto LABEL_43;
      }

      currentPrimaryResident = objc_autoreleasePoolPush();
      v35 = v12;
      v36 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        v37 = HMFGetLogIdentifier();
        *buf = 138543618;
        v136 = v37;
        v137 = 2112;
        v138 = v19;
        _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_ERROR, "%{public}@Failed to create status from record %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(currentPrimaryResident);
LABEL_43:
    }

    v122 = [v17 countByEnumeratingWithState:&v130 objects:v143 count:16];
  }

  while (v122);

  if (v116)
  {
    v68 = 1;
    goto LABEL_49;
  }

LABEL_48:
  currentPrimaryResident = [(HMDResidentStatusChannel *)v12 currentPrimaryResident];
  v68 = 0;
  v116 = 0;
  v69 = 0;
  v70 = 0;
  if (currentPrimaryResident)
  {
LABEL_49:
    currentPrimaryResident2 = [(HMDResidentStatusChannel *)v12 currentPrimaryResident];
    v70 = [(HMDResidentStatus *)v116 isEqual:currentPrimaryResident2]^ 1;

    if (v68)
    {
      v72 = 1;
      goto LABEL_53;
    }

    v69 = currentPrimaryResident;
  }

  v72 = 0;
LABEL_53:
  v73 = objc_autoreleasePoolPush();
  v74 = v12;
  v75 = HMFGetOSLogHandle();
  v123 = v74;
  if (os_log_type_enabled(v75, OS_LOG_TYPE_INFO))
  {
    v76 = HMFGetLogIdentifier();
    currentPrimaryResident3 = [(HMDResidentStatusChannel *)v74 currentPrimaryResident];
    v78 = currentPrimaryResident3;
    v79 = @"NO";
    *buf = 138544130;
    v136 = v76;
    if (v70)
    {
      v79 = @"YES";
    }

    v137 = 2112;
    v138 = v116;
    v139 = 2112;
    v140 = currentPrimaryResident3;
    v141 = 2112;
    v142 = v79;
    _os_log_impl(&dword_229538000, v75, OS_LOG_TYPE_INFO, "%{public}@Found primary resident = %@, current primary resident %@, will notify %@", buf, 0x2Au);

    v74 = v123;
  }

  objc_autoreleasePoolPop(v73);
  os_unfair_lock_lock_with_options();
  objc_storeStrong(&v74->_residentStatusMap, obj);
  objc_storeStrong(&v74->_currentPrimaryResident, v116);
  objc_storeStrong(&v74->_domainDataStatusMap, dictionary);
  os_unfair_lock_unlock(&v74->_lock);
  channel = [(HMDResidentStatusChannel *)v74 channel];
  if ([channel isConnected])
  {
    isConnected = [(HMDResidentStatusChannel *)v74 isConnected];

    if (!isConnected)
    {
      [(HMDResidentStatusChannel *)v74 setConnected:1];
      [(HMDResidentStatusChannel *)v74 _stopDebounceTimer];
      channel = [(HMDResidentStatusChannel *)v74 home];
      if ([channel isCurrentDeviceAvailableResident])
      {
        homeManager = [channel homeManager];
        currentAccessorySetupMetricDispatcher = [homeManager currentAccessorySetupMetricDispatcher];

        [currentAccessorySetupMetricDispatcher markPrimaryResidentSelectionConnectedToStatusKitFutureResolved];
      }

      goto LABEL_61;
    }
  }

  else
  {
LABEL_61:
  }

  home2 = [(HMDResidentStatusChannel *)v74 home];
  if (![(HMDResidentStatusChannel *)v74 receivedInitialChannelState])
  {
    v85 = objc_autoreleasePoolPush();
    v86 = v74;
    v87 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
    {
      v88 = HMFGetLogIdentifier();
      *buf = 138543362;
      v136 = v88;
      _os_log_impl(&dword_229538000, v87, OS_LOG_TYPE_DEFAULT, "%{public}@Received initial channel state", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v85);
    [(HMDResidentStatusChannel *)v86 setReceivedInitialChannelState:1];
    initialConnectedToStatusKitPromise = [(HMDResidentStatusChannel *)v86 initialConnectedToStatusKitPromise];
    [initialConnectedToStatusKitPromise fulfillWithNoValue];

    [(HMDResidentStatusChannel *)v86 _inviteSharedUsers];
  }

  v90 = [HMDResidentStatusChannelObserveLogEvent alloc];
  v111 = home2;
  uuid = [home2 uuid];
  v92 = [v124 count] != 0;
  v93 = [v125 count] != 0;
  v94 = [v119 count] != 0;
  LOBYTE(v108) = [v17 count] != 0;
  v95 = v92;
  v96 = v123;
  v97 = [(HMDResidentStatusChannelObserveLogEvent *)v90 initWithHomeUUID:uuid didLoseStatuses:v95 didAddStatuses:v93 didUpdateStatuses:v94 didFindPrimary:v72 didPrimaryChange:v70 isStatusesEmpty:v108];

  logEventSubmitter = [(HMDResidentStatusChannel *)v123 logEventSubmitter];
  v109 = v97;
  [logEventSubmitter submitLogEvent:v97];

  v128 = 0u;
  v129 = 0u;
  v126 = 0u;
  v127 = 0u;
  observers = [(HMDResidentStatusChannel *)v123 observers];
  v99 = [observers countByEnumeratingWithState:&v126 objects:v134 count:16];
  if (v99)
  {
    v100 = v99;
    v101 = *v127;
    do
    {
      for (j = 0; j != v100; ++j)
      {
        if (*v127 != v101)
        {
          objc_enumerationMutation(observers);
        }

        v103 = *(*(&v126 + 1) + 8 * j);
        if (objc_opt_respondsToSelector())
        {
          v104 = objc_msgSend_copy(v125);
          v105 = objc_msgSend_copy(v124);
          v106 = v70;
          v107 = objc_msgSend_copy(v119);
          [v103 channel:v123 didObserveDevicesAdded:v104 lost:v105 updated:v107];

          v70 = v106;
          v96 = v123;
        }

        if (v70 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          [v103 channel:v96 didObservePrimaryResidentChange:v96->_currentPrimaryResident];
        }

        if (objc_opt_respondsToSelector())
        {
          [v103 channel:v96 didObserveNewDomainDataDevices:v118 removedDomainDataDevices:v117 updatedDomainDataDevices:v115];
        }
      }

      v100 = [observers countByEnumeratingWithState:&v126 objects:v134 count:16];
    }

    while (v100);
  }
}

- (void)_handlePrimaryResidentUpdateNotification:(id)notification
{
  notificationCopy = notification;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __69__HMDResidentStatusChannel__handlePrimaryResidentUpdateNotification___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(queue, v7);
}

uint64_t __69__HMDResidentStatusChannel__handlePrimaryResidentUpdateNotification___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v8 = 138543618;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Handling primary resident update notification: %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  return [*(a1 + 32) _inviteSharedUsers];
}

- (void)_handleHomeUserRemovedNotification:(id)notification
{
  notificationCopy = notification;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__HMDResidentStatusChannel__handleHomeUserRemovedNotification___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(queue, v7);
}

uint64_t __63__HMDResidentStatusChannel__handleHomeUserRemovedNotification___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v8 = 138543618;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Handling home user removed notification: %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  return [*(a1 + 32) _inviteSharedUsers];
}

- (void)_handleHomeUserAddedNotification:(id)notification
{
  notificationCopy = notification;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__HMDResidentStatusChannel__handleHomeUserAddedNotification___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(queue, v7);
}

uint64_t __61__HMDResidentStatusChannel__handleHomeUserAddedNotification___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v8 = 138543618;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Handling home user added notification: %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  return [*(a1 + 32) _inviteSharedUsers];
}

- (void)domainPublishRateLimitingTimerFired
{
  v11 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Rate limiting in Status channel for domain data has ended.", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  if ([(HMDResidentStatusChannel *)selfCopy domainDataCached])
  {
    localResidentStatus = [(HMDResidentStatusChannel *)selfCopy localResidentStatus];
    [(HMDResidentStatusChannel *)selfCopy _publishResidentStatus:localResidentStatus reason:7];
  }

  [(HMDResidentStatusChannel *)selfCopy setDomainPublishCount:0];
  domainPublishRateLimitingTimer = [(HMDResidentStatusChannel *)selfCopy domainPublishRateLimitingTimer];
  [domainPublishRateLimitingTimer cancel];

  [(HMDResidentStatusChannel *)selfCopy setDomainPublishRateLimitingTimer:0];
}

- (BOOL)shouldAllowDomainPublishRequest
{
  v19 = *MEMORY[0x277D85DE8];
  domainPublishRateLimitingTimer = [(HMDResidentStatusChannel *)self domainPublishRateLimitingTimer];
  isRunning = [domainPublishRateLimitingTimer isRunning];

  if (isRunning)
  {
    [(HMDResidentStatusChannel *)self setDomainPublishCount:[(HMDResidentStatusChannel *)self domainPublishCount]+ 1];
    if ([(HMDResidentStatusChannel *)self domainPublishCount]>= 0xB)
    {
      [(HMDResidentStatusChannel *)self setDomainPublishAllowed:0];
      v5 = objc_autoreleasePoolPush();
      selfCopy = self;
      v7 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = HMFGetLogIdentifier();
        v15 = 138543618;
        v16 = v8;
        v17 = 2048;
        domainPublishCount = [(HMDResidentStatusChannel *)selfCopy domainPublishCount];
        _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Domain data publishes got rate limited. Number of publishes: %lu", &v15, 0x16u);
      }

      objc_autoreleasePoolPop(v5);
    }
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v12;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@First publish in the current window for StatusKit rate limiting check.", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    [(HMDResidentStatusChannel *)selfCopy2 setDomainPublishCount:1];
    v13 = [(HMDResidentStatusChannel *)selfCopy2 _startTimerWithDuration:3600.0];
    [(HMDResidentStatusChannel *)selfCopy2 setDomainPublishRateLimitingTimer:v13];

    [(HMDResidentStatusChannel *)selfCopy2 setDomainPublishAllowed:1];
  }

  return [(HMDResidentStatusChannel *)self domainPublishAllowed];
}

- (id)dumpStateWithPrivacyLevel:(unint64_t)level
{
  v3 = MEMORY[0x277CBEB38];
  v4 = [(HMDSDumpState *)self->_channel dumpStateWithPrivacyLevel:level];
  v5 = [v3 dictionaryWithDictionary:v4];

  v6 = objc_msgSend_copy(v5);

  return v6;
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__HMDResidentStatusChannel_removeObserver___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_async(queue, v7);
}

void __43__HMDResidentStatusChannel_removeObserver___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  [v2 removeObject:*(a1 + 40)];
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__HMDResidentStatusChannel_addObserver___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_async(queue, v7);
}

void __40__HMDResidentStatusChannel_addObserver___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  [v2 addObject:*(a1 + 40)];
}

- (HMDResidentStatus)currentPrimaryResident
{
  os_unfair_lock_lock_with_options();
  v3 = self->_currentPrimaryResident;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSSet)domainDataStatuses
{
  os_unfair_lock_lock_with_options();
  v3 = objc_alloc(MEMORY[0x277CBEB98]);
  domainDataStatusMap = [(HMDResidentStatusChannel *)self domainDataStatusMap];
  allValues = [domainDataStatusMap allValues];
  v6 = [v3 initWithArray:allValues];

  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

- (NSSet)presentResidentStatuses
{
  os_unfair_lock_lock_with_options();
  v3 = objc_alloc(MEMORY[0x277CBEB98]);
  residentStatusMap = [(HMDResidentStatusChannel *)self residentStatusMap];
  allValues = [residentStatusMap allValues];
  v6 = [v3 initWithArray:allValues];

  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

- (void)_stopPublishingAsResident
{
  v13 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v12 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Stopping publishing as resident", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  localResidentStatus = selfCopy->_localResidentStatus;
  selfCopy->_localResidentStatus = 0;

  objc_initWeak(buf, selfCopy);
  channel = selfCopy->_channel;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __53__HMDResidentStatusChannel__stopPublishingAsResident__block_invoke;
  v9[3] = &unk_278688A18;
  objc_copyWeak(&v10, buf);
  [(HMDSDumpState *)channel stopPublishingWithCompletion:v9];
  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
}

void __53__HMDResidentStatusChannel__stopPublishingAsResident__block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (v3)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = WeakRetained;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v9 = 138543618;
      v10 = v8;
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@Failed to stopPublishing StatusChannel: %@", &v9, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
  }
}

- (void)stopPublishingAsResident
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__HMDResidentStatusChannel_stopPublishingAsResident__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)stopPublishingDomain:(unint64_t)domain
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __49__HMDResidentStatusChannel_stopPublishingDomain___block_invoke;
  v4[3] = &unk_27868A0D0;
  v4[4] = self;
  v4[5] = domain;
  dispatch_async(queue, v4);
}

void __49__HMDResidentStatusChannel_stopPublishingDomain___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = StringForResidentStatusChannelDomain(*(a1 + 40));
  v3 = [*(a1 + 32) domainDataPairs];
  [v3 removeObjectForKey:v2];

  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v10 = 138543618;
    v11 = v7;
    v12 = 2112;
    v13 = v2;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Stopping publishing for domain %@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = *(a1 + 32);
  v9 = [v8 localResidentStatus];
  [v8 _publishResidentStatus:v9 reason:6];
}

- (id)dataForDomain:(unint64_t)domain
{
  v5 = [MEMORY[0x277CBEB58] set];
  v6 = StringForResidentStatusChannelDomain(domain);
  domainDataStatuses = [(HMDResidentStatusChannel *)self domainDataStatuses];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __42__HMDResidentStatusChannel_dataForDomain___block_invoke;
  v15 = &unk_278678178;
  v16 = v6;
  v17 = v5;
  v8 = v5;
  v9 = v6;
  [domainDataStatuses hmf_enumerateWithAutoreleasePoolUsingBlock:&v12];

  v10 = objc_msgSend_copy(v8, v12, v13, v14, v15);

  return v10;
}

void __42__HMDResidentStatusChannel_dataForDomain___block_invoke(uint64_t a1, void *a2)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 dataByDomain];
  v5 = [v4 objectForKey:*(a1 + 32)];

  if (v5)
  {
    v6 = [v3 dataByDomain];
    v7 = [v6 valueForKey:*(a1 + 32)];

    v14 = *(a1 + 32);
    v15[0] = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    v9 = [HMDResidentStatusDomainData alloc];
    v10 = [v3 idsIdentifier];
    v11 = [v3 idsDestination];
    v12 = [v3 assertionTime];
    v13 = [(HMDResidentStatusDomainData *)v9 initWithIDSIdentifier:v10 idsDestination:v11 assertionTime:v12 dataByDomain:v8];

    [*(a1 + 40) addObject:v13];
  }
}

- (id)domainDataPairsPayload
{
  v24 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  domainDataPairs = [(HMDResidentStatusChannel *)self domainDataPairs];
  v4 = [domainDataPairs count];

  if (v4)
  {
    v15 = 0;
    domainDataPairs2 = [(HMDResidentStatusChannel *)self domainDataPairs];
    v6 = MEMORY[0x22AAD2E60](domainDataPairs2, 8, &v15);

    if (v6)
    {
      v16 = @"ddp";
      v17 = v6;
      dictionary = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    }

    else
    {
      v9 = objc_autoreleasePoolPush();
      selfCopy = self;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = HMFGetLogIdentifier();
        domainDataPairs3 = [(HMDResidentStatusChannel *)selfCopy domainDataPairs];
        *buf = 138543874;
        v19 = v12;
        v20 = 2112;
        v21 = domainDataPairs3;
        v22 = 2048;
        v23 = v15;
        _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Encoding failed for domain data pairs: %@ with error(status %ld)", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v9);
      dictionary = [MEMORY[0x277CBEAC0] dictionary];
    }

    dictionary2 = dictionary;
  }

  else
  {
    dictionary2 = [MEMORY[0x277CBEAC0] dictionary];
  }

  return dictionary2;
}

- (void)publishDomain:(unint64_t)domain data:(id)data completion:(id)completion
{
  dataCopy = data;
  completionCopy = completion;
  queue = self->_queue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __58__HMDResidentStatusChannel_publishDomain_data_completion___block_invoke;
  v13[3] = &unk_278688B30;
  v15 = completionCopy;
  domainCopy = domain;
  v13[4] = self;
  v14 = dataCopy;
  v11 = dataCopy;
  v12 = completionCopy;
  dispatch_async(queue, v13);
}

void __58__HMDResidentStatusChannel_publishDomain_data_completion___block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = StringForResidentStatusChannelDomain(*(a1 + 56));
  v3 = [*(a1 + 32) home];
  v4 = [v3 isCurrentDeviceAvailableResident];

  if (v4)
  {
    v5 = [*(a1 + 32) domainDataPairs];
    [v5 setValue:*(a1 + 40) forKey:v2];

    v6 = [*(a1 + 32) localResidentStatus];

    if (v6)
    {
      v7 = [*(a1 + 32) shouldAllowDomainPublishRequest];
      v8 = objc_autoreleasePoolPush();
      v9 = *(a1 + 32);
      v10 = HMFGetOSLogHandle();
      v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
      if (v7)
      {
        if (v11)
        {
          v12 = HMFGetLogIdentifier();
          v13 = [*(a1 + 32) domainPublishCount];
          v28 = 138543874;
          v29 = v12;
          v30 = 2112;
          v31 = v2;
          v32 = 2048;
          v33 = v13;
          _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Publishing data for domain: %@. Publish count: %lu.", &v28, 0x20u);
        }

        objc_autoreleasePoolPop(v8);
        v14 = *(a1 + 32);
        v15 = [v14 localResidentStatus];
        [v14 _publishResidentStatus:v15 reason:6];
      }

      else
      {
        if (v11)
        {
          v26 = HMFGetLogIdentifier();
          v27 = [*(a1 + 32) domainPublishCount];
          v28 = 138543874;
          v29 = v26;
          v30 = 2112;
          v31 = v2;
          v32 = 2048;
          v33 = v27;
          _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Caching data for domain: %@ to publish later since we are rate limited. Publish count: %lu.", &v28, 0x20u);
        }

        objc_autoreleasePoolPop(v8);
        [*(a1 + 32) setDomainDataCached:1];
      }
    }

    else
    {
      v22 = objc_autoreleasePoolPush();
      v23 = *(a1 + 32);
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = HMFGetLogIdentifier();
        v28 = 138543618;
        v29 = v25;
        v30 = 2112;
        v31 = v2;
        _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@Caching data for domain: %@ to publish later.", &v28, 0x16u);
      }

      objc_autoreleasePoolPop(v22);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = *(a1 + 32);
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      v28 = 138543618;
      v29 = v19;
      v30 = 2112;
      v31 = v2;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Rejecting publish request for domain: %@ since this device is not a resident.", &v28, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    v20 = *(a1 + 48);
    v21 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    (*(v20 + 16))(v20, v21);
  }
}

- (id)payloadWithStatus:(id)status
{
  queue = self->_queue;
  statusCopy = status;
  dispatch_assert_queue_V2(queue);
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  channelRecordPayload = [statusCopy channelRecordPayload];

  if ([channelRecordPayload count])
  {
    [dictionary addEntriesFromDictionary:channelRecordPayload];
  }

  domainDataPairsPayload = [(HMDResidentStatusChannel *)self domainDataPairsPayload];
  if ([domainDataPairsPayload count])
  {
    [dictionary addEntriesFromDictionary:domainDataPairsPayload];
  }

  v9 = objc_msgSend_copy(dictionary);

  return v9;
}

- (void)_publishResidentStatus:(id)status reason:(int64_t)reason
{
  v27 = *MEMORY[0x277D85DE8];
  statusCopy = status;
  dispatch_assert_queue_V2(self->_queue);
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    if (reason >= 9)
    {
      reason = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown reason: %lu", reason];
    }

    else
    {
      reason = off_278678198[reason];
    }

    *buf = 138543874;
    v22 = v10;
    v23 = 2112;
    v24 = statusCopy;
    v25 = 2112;
    v26 = reason;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Publishing resident status: %@ with reason: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  if (selfCopy->_channel)
  {
    v12 = [(HMDResidentStatusChannel *)selfCopy _shouldDebounce:reason];
    v13 = [(HMDResidentStatusChannel *)selfCopy payloadWithStatus:statusCopy];
    objc_initWeak(buf, selfCopy);
    channel = selfCopy->_channel;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __58__HMDResidentStatusChannel__publishResidentStatus_reason___block_invoke;
    v19[3] = &unk_278678150;
    objc_copyWeak(v20, buf);
    v20[1] = reason;
    [(HMDSDumpState *)channel publishRecordWithPayload:v13 shouldDebounce:v12 withCompletion:v19];
    objc_destroyWeak(v20);
    objc_destroyWeak(buf);
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = selfCopy;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543362;
      v22 = v18;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Attempt to publish status before channel is started", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
  }
}

void __58__HMDResidentStatusChannel__publishResidentStatus_reason___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (v3)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = v5;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v15 = 138543618;
      v16 = v9;
      v17 = 2112;
      v18 = v3;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to stop StatusChannel: %@", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
  }

  else
  {
    [WeakRetained setDomainDataCached:0];
    v10 = [HMDResidentStatusChannelPublishLogEvent alloc];
    v11 = [v5 home];
    v12 = [v11 uuid];
    v13 = [(HMDResidentStatusChannelPublishLogEvent *)v10 initWithHomeUUID:v12 publishReason:*(a1 + 40)];

    v14 = [v5 logEventSubmitter];
    [v14 submitLogEvent:v13];
  }
}

- (void)publishResidentStatus:(id)status reason:(int64_t)reason
{
  statusCopy = status;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__HMDResidentStatusChannel_publishResidentStatus_reason___block_invoke;
  block[3] = &unk_278685DF8;
  block[4] = self;
  v10 = statusCopy;
  reasonCopy = reason;
  v8 = statusCopy;
  dispatch_async(queue, block);
}

uint64_t __57__HMDResidentStatusChannel_publishResidentStatus_reason___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 144), *(a1 + 40));
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);

  return [v2 _publishResidentStatus:v3 reason:v4];
}

- (void)stop
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__HMDResidentStatusChannel_stop__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(queue, block);
}

void __32__HMDResidentStatusChannel_stop__block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) started];
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  v5 = HMFGetOSLogHandle();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (v2)
  {
    if (v6)
    {
      v7 = HMFGetLogIdentifier();
      *buf = 138543362;
      v24 = v7;
      _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Stopping ResidentStatusChannel", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    *(*(a1 + 32) + 35) = 0;
    *(*(a1 + 32) + 32) = 0;
    v8 = *(a1 + 32);
    os_unfair_lock_lock_with_options();
    v9 = [MEMORY[0x277CBEB38] dictionary];
    v10 = *(a1 + 32);
    v11 = *(v10 + 72);
    *(v10 + 72) = v9;

    v12 = *(*(a1 + 32) + 24);
    *(*(a1 + 32) + 24) = 0;

    os_unfair_lock_unlock(v8 + 4);
    v13 = [*(a1 + 32) home];
    if ([v13 isOwnerUser])
    {
      v14 = [*(a1 + 32) notificationCenter];
      [v14 removeObserver:*(a1 + 32) name:@"HMDHomeUserAddedNotification" object:v13];

      v15 = [*(a1 + 32) notificationCenter];
      [v15 removeObserver:*(a1 + 32) name:@"HMDHomeUserRemovedNotification" object:v13];

      v16 = [*(a1 + 32) notificationCenter];
      v17 = *(a1 + 32);
      v18 = [v13 residentDeviceManager];
      [v16 removeObserver:v17 name:@"HMDResidentDeviceManagerUpdatePrimaryResidentNotification" object:v18];
    }

    objc_initWeak(buf, *(a1 + 32));
    v19 = [*(a1 + 32) channel];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __32__HMDResidentStatusChannel_stop__block_invoke_225;
    v21[3] = &unk_278688A18;
    objc_copyWeak(&v22, buf);
    [v19 stopWithCompletion:v21];

    objc_destroyWeak(&v22);
    objc_destroyWeak(buf);
  }

  else
  {
    if (v6)
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543362;
      v24 = v20;
      _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@ResidentStatusChannel already stopped", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
  }
}

void __32__HMDResidentStatusChannel_stop__block_invoke_225(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (v3)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = WeakRetained;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v9 = 138543618;
      v10 = v8;
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@Failed to stop StatusChannel: %@", &v9, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
  }
}

- (void)start
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__HMDResidentStatusChannel_start__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(queue, block);
}

void __33__HMDResidentStatusChannel_start__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) started];
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  v5 = HMFGetOSLogHandle();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (v2)
  {
    if (v6)
    {
      v7 = HMFGetLogIdentifier();
      *buf = 138543362;
      v15 = v7;
      _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@ResidentStatusChannel already started", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
  }

  else
  {
    if (v6)
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543362;
      v15 = v8;
      _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Starting ResidentStatusChannel", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    v10 = *(a1 + 32);
    v9 = (a1 + 32);
    *(v10 + 35) = 1;
    *(*v9 + 32) = 0;
    objc_initWeak(buf, *v9);
    v11 = [*v9 channel];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __33__HMDResidentStatusChannel_start__block_invoke_217;
    v12[3] = &unk_278688A18;
    objc_copyWeak(&v13, buf);
    [v11 startWithCompletion:v12];

    objc_destroyWeak(&v13);
    objc_destroyWeak(buf);
  }
}

void __33__HMDResidentStatusChannel_start__block_invoke_217(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (v3)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = v5;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v15 = 138543618;
      v16 = v9;
      v17 = 2112;
      v18 = v3;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to start StatusChannel: %@", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
  }

  else
  {
    v10 = [WeakRetained home];
    if ([v10 isOwnerUser])
    {
      v11 = [v5 notificationCenter];
      [v11 addObserver:v5 selector:sel__handleHomeUserAddedNotification_ name:@"HMDHomeUserAddedNotification" object:v10];

      v12 = [v5 notificationCenter];
      [v12 addObserver:v5 selector:sel__handleHomeUserRemovedNotification_ name:@"HMDHomeUserRemovedNotification" object:v10];

      v13 = [v5 notificationCenter];
      v14 = [v10 residentDeviceManager];
      [v13 addObserver:v5 selector:sel__handlePrimaryResidentUpdateNotification_ name:@"HMDResidentDeviceManagerUpdatePrimaryResidentNotification" object:v14];
    }
  }
}

- (HMDResidentStatusChannel)initWithHome:(id)home queue:(id)queue
{
  v6 = MEMORY[0x277CCAB98];
  queueCopy = queue;
  homeCopy = home;
  defaultCenter = [v6 defaultCenter];
  v10 = objc_opt_new();
  v11 = objc_opt_new();
  v12 = +[HMDMetricsManager sharedLogEventSubmitter];
  v13 = +[HMDFeaturesDataSource defaultDataSource];
  v14 = [(HMDResidentStatusChannel *)self initWithHome:homeCopy queue:queueCopy notificationCenter:defaultCenter timerProvider:v10 channelProvider:v11 logEventSubmitter:v12 featuresDataSource:v13];

  return v14;
}

- (HMDResidentStatusChannel)initWithHome:(id)home queue:(id)queue notificationCenter:(id)center timerProvider:(id)provider channelProvider:(id)channelProvider logEventSubmitter:(id)submitter featuresDataSource:(id)source
{
  homeCopy = home;
  queueCopy = queue;
  centerCopy = center;
  providerCopy = provider;
  channelProviderCopy = channelProvider;
  submitterCopy = submitter;
  sourceCopy = source;
  v45.receiver = self;
  v45.super_class = HMDResidentStatusChannel;
  v19 = [(HMDResidentStatusChannel *)&v45 init];
  v20 = v19;
  if (v19)
  {
    objc_storeWeak(&v19->_home, homeCopy);
    objc_storeStrong(&v20->_queue, queue);
    v20->_lock._os_unfair_lock_opaque = 0;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    residentStatusMap = v20->_residentStatusMap;
    v20->_residentStatusMap = dictionary;

    objc_storeStrong(&v20->_notificationCenter, center);
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v20->_observers;
    v20->_observers = weakObjectsHashTable;

    objc_storeStrong(&v20->_timerProvider, provider);
    objc_storeStrong(&v20->_logEventSubmitter, submitter);
    objc_storeStrong(&v20->_featuresDataSource, source);
    uuid = [homeCopy uuid];
    uUIDString = [uuid UUIDString];
    v27 = [channelProviderCopy createStatusChannelWithPrefix:@"HomeKitResidentStatus" identifier:uUIDString queue:v20->_queue];
    channel = v20->_channel;
    v20->_channel = v27;

    objc_initWeak(&location, v20);
    v29 = v20->_channel;
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __133__HMDResidentStatusChannel_initWithHome_queue_notificationCenter_timerProvider_channelProvider_logEventSubmitter_featuresDataSource___block_invoke;
    v42[3] = &unk_278688A18;
    objc_copyWeak(&v43, &location);
    [(HMDSDumpState *)v29 addDelegate:v20 withCompletion:v42];
    v20->_started = 0;
    obj = 0;
    v30 = [MEMORY[0x277D0F7C0] futureWithPromise:&obj];
    initialConnectedToStatusKitFuture = v20->_initialConnectedToStatusKitFuture;
    v20->_initialConnectedToStatusKitFuture = v30;

    objc_storeStrong(&v20->_initialConnectedToStatusKitPromise, obj);
    v20->_receivedInitialChannelState = 0;
    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    domainDataPairs = v20->_domainDataPairs;
    v20->_domainDataPairs = dictionary2;

    localResidentStatus = v20->_localResidentStatus;
    v20->_localResidentStatus = 0;

    dictionary3 = [MEMORY[0x277CBEB38] dictionary];
    domainDataStatusMap = v20->_domainDataStatusMap;
    v20->_domainDataStatusMap = dictionary3;

    objc_destroyWeak(&v43);
    objc_destroyWeak(&location);
  }

  return v20;
}

void __133__HMDResidentStatusChannel_initWithHome_queue_notificationCenter_timerProvider_channelProvider_logEventSubmitter_featuresDataSource___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v5 = objc_autoreleasePoolPush();
    v6 = WeakRetained;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v9 = 138543618;
      v10 = v8;
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@Failed to add StatusChannel delegate: %@", &v9, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
  }
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t50_107551 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t50_107551, &__block_literal_global_244);
  }

  v3 = logCategory__hmf_once_v51_107552;

  return v3;
}

void __39__HMDResidentStatusChannel_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v51_107552;
  logCategory__hmf_once_v51_107552 = v0;
}

@end