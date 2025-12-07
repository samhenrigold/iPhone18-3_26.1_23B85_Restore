@interface HMDAccessoryPairingLogEventStateManager
+ (HMDAccessoryPairingLogEventStateManager)sharedManager;
+ (id)logCategory;
- (BOOL)isConfigured;
- (HMDAccessoryPairingEvent)pairingEvent;
- (HMDAccessoryPairingLogEventStateManager)initWithNotificationCenter:(id)center;
- (double)getTimeDurationForLongestProgressStateForAccessory:(id)accessory;
- (double)getTimeDurationForProgressStateForIdentifier:(id)identifier state:(id)state;
- (id)getLastProgressStateForAccessory:(id)accessory;
- (id)getLongestProgressStateForAccessory:(id)accessory;
- (unint64_t)retryCountForIdentifier:(id)identifier;
- (void)_handleMatterAccessoryUpdatePairingMetricNotification:(id)notification pairingEvent:(id)event logEventSubmitter:(id)submitter;
- (void)_handlePairingStateProgressNotification:(id)notification;
- (void)_updateStateOnPairingProgress:(int64_t)progress;
- (void)clearPairingProgressStateTrackerForIdentifier:(id)identifier;
- (void)clearRetryCountMap;
- (void)configureWithPairingEvent:(id)event workQueue:(id)queue logEventSubmitter:(id)submitter;
- (void)fillUnknownErrorIfMissingErrorForPairingEvent:(id)event;
- (void)handleMatterAccessoryUpdatePairingMetricNotification:(id)notification;
- (void)incrementRetryCount:(id)count;
- (void)resetStatesForNewAddOperation;
- (void)startProgressStateTrackerWithDate:(id)date identifier:(id)identifier;
- (void)updateLastPairingProgressStateEventForIdentifier:(id)identifier withDate:(id)date;
- (void)updatePairingProgressState:(id)state;
- (void)updateStatesOnResult:(BOOL)result;
@end

@implementation HMDAccessoryPairingLogEventStateManager

- (HMDAccessoryPairingEvent)pairingEvent
{
  WeakRetained = objc_loadWeakRetained(&self->_pairingEvent);

  return WeakRetained;
}

- (void)resetStatesForNewAddOperation
{
  [(HMDAccessoryPairingLogEventStateManager *)self setPairingUIState:0];
  lastPairingEndTime = [(HMDAccessoryPairingLogEventStateManager *)self lastPairingEndTime];
  [lastPairingEndTime timeIntervalSinceNow];
  v5 = fabs(v4);

  if (v5 > 300.0)
  {

    [(HMDAccessoryPairingLogEventStateManager *)self setPreviousRecoveryType:0];
  }
}

- (double)getTimeDurationForProgressStateForIdentifier:(id)identifier state:(id)state
{
  identifierCopy = identifier;
  stateCopy = state;
  os_unfair_lock_lock_with_options();
  v8 = 0.0;
  if (stateCopy)
  {
    pairingProgressStateTracker = [(HMDAccessoryPairingLogEventStateManager *)self pairingProgressStateTracker];
    v10 = [pairingProgressStateTracker objectForKey:identifierCopy];

    if (v10)
    {
      progressStateMap = [v10 progressStateMap];
      v12 = [progressStateMap objectForKey:stateCopy];
      [v12 doubleValue];
      v8 = v13 * 1000.0;
    }
  }

  os_unfair_lock_unlock(&self->_accessoryPairingProgressStateTrackerLock);

  return v8;
}

- (double)getTimeDurationForLongestProgressStateForAccessory:(id)accessory
{
  accessoryCopy = accessory;
  os_unfair_lock_lock_with_options();
  pairingProgressStateTracker = [(HMDAccessoryPairingLogEventStateManager *)self pairingProgressStateTracker];
  v6 = [pairingProgressStateTracker objectForKey:accessoryCopy];

  if (v6)
  {
    [v6 getTimeDurationForLongestProgressState];
    v8 = v7;
  }

  else
  {
    v8 = 0.0;
  }

  os_unfair_lock_unlock(&self->_accessoryPairingProgressStateTrackerLock);
  return v8;
}

- (id)getLastProgressStateForAccessory:(id)accessory
{
  v20 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  os_unfair_lock_lock_with_options();
  pairingProgressStateTracker = [(HMDAccessoryPairingLogEventStateManager *)self pairingProgressStateTracker];
  v6 = [pairingProgressStateTracker objectForKey:accessoryCopy];

  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      progressStateMap = [v6 progressStateMap];
      v14 = 138543874;
      v15 = v10;
      v16 = 2114;
      v17 = accessoryCopy;
      v18 = 2114;
      v19 = progressStateMap;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Final pairing progress state map before metric submission for identifier %{public}@ - %{public}@", &v14, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    lastProgressState = [v6 lastProgressState];
  }

  else
  {
    lastProgressState = 0;
  }

  os_unfair_lock_unlock(&self->_accessoryPairingProgressStateTrackerLock);

  return lastProgressState;
}

- (id)getLongestProgressStateForAccessory:(id)accessory
{
  accessoryCopy = accessory;
  os_unfair_lock_lock_with_options();
  pairingProgressStateTracker = [(HMDAccessoryPairingLogEventStateManager *)self pairingProgressStateTracker];
  v6 = [pairingProgressStateTracker objectForKey:accessoryCopy];

  if (v6)
  {
    longestProgressState = [v6 longestProgressState];
  }

  else
  {
    longestProgressState = 0;
  }

  os_unfair_lock_unlock(&self->_accessoryPairingProgressStateTrackerLock);

  return longestProgressState;
}

- (void)clearPairingProgressStateTrackerForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock_with_options();
  pairingProgressStateTracker = [(HMDAccessoryPairingLogEventStateManager *)self pairingProgressStateTracker];
  v5 = [pairingProgressStateTracker objectForKey:identifierCopy];

  if (v5)
  {
    pairingProgressStateTracker2 = [(HMDAccessoryPairingLogEventStateManager *)self pairingProgressStateTracker];
    [pairingProgressStateTracker2 removeObjectForKey:identifierCopy];
  }

  os_unfair_lock_unlock(&self->_accessoryPairingProgressStateTrackerLock);
}

- (void)updateLastPairingProgressStateEventForIdentifier:(id)identifier withDate:(id)date
{
  identifierCopy = identifier;
  dateCopy = date;
  os_unfair_lock_lock_with_options();
  pairingProgressStateTracker = [(HMDAccessoryPairingLogEventStateManager *)self pairingProgressStateTracker];
  v8 = [pairingProgressStateTracker objectForKey:identifierCopy];

  [v8 updateWithProgressState:0 date:dateCopy];
  os_unfair_lock_unlock(&self->_accessoryPairingProgressStateTrackerLock);
}

- (void)_updateStateOnPairingProgress:(int64_t)progress
{
  v21 = *MEMORY[0x277D85DE8];
  if (progress > 47)
  {
    switch(progress)
    {
      case '0':
        v4 = 2;
        break;
      case '1':
        v4 = 3;
        break;
      case '2':
        v4 = 4;
        break;
      default:
        goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (progress == 2)
  {
    v5 = 1;
LABEL_13:
    [(HMDAccessoryPairingLogEventStateManager *)self setPairingUIState:v5];
    goto LABEL_16;
  }

  if (progress == 3)
  {
    v5 = 2;
    goto LABEL_13;
  }

  if (progress != 47)
  {
    goto LABEL_16;
  }

  v4 = 1;
LABEL_15:
  [(HMDAccessoryPairingLogEventStateManager *)self setRecoveryType:v4];
LABEL_16:
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    pairingUIState = [(HMDAccessoryPairingLogEventStateManager *)selfCopy pairingUIState];
    recoveryType = [(HMDAccessoryPairingLogEventStateManager *)selfCopy recoveryType];
    v12 = HMSetupAccessoryProgressAsString();
    v13 = 138544130;
    v14 = v9;
    v15 = 2048;
    v16 = pairingUIState;
    v17 = 2048;
    v18 = recoveryType;
    v19 = 2112;
    v20 = v12;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Updated Pairing UI state: %lu, recoveryType: %lu on progress: %@", &v13, 0x2Au);
  }

  objc_autoreleasePoolPop(v6);
}

- (void)updatePairingProgressState:(id)state
{
  v20 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  os_unfair_lock_lock_with_options();
  v5 = [stateCopy objectForKey:@"HMDAccessoryProgressStateNotificationKey"];
  v6 = [stateCopy objectForKey:@"HMDAccessoryProgressStateTimeNotificationKey"];
  v7 = [stateCopy objectForKey:@"HMDAccessoryProgressStateforAccessoryKey"];
  v8 = [stateCopy hmf_numberForKey:@"HMDSetupAccessoryProgressStateKey"];
  integerValue = [v8 integerValue];

  [(HMDAccessoryPairingLogEventStateManager *)self _updateStateOnPairingProgress:integerValue];
  pairingProgressStateTracker = [(HMDAccessoryPairingLogEventStateManager *)self pairingProgressStateTracker];
  v11 = [pairingProgressStateTracker objectForKey:v7];

  if (v11)
  {
    [v11 updateWithProgressState:v5 date:v6];
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v16 = 138543618;
      v17 = v15;
      v18 = 2112;
      v19 = v7;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Attempting to update an uninitialized progress state map for %@", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
  }

  os_unfair_lock_unlock(&self->_accessoryPairingProgressStateTrackerLock);
}

- (void)startProgressStateTrackerWithDate:(id)date identifier:(id)identifier
{
  dateCopy = date;
  identifierCopy = identifier;
  os_unfair_lock_lock_with_options();
  pairingProgressStateTracker = [(HMDAccessoryPairingLogEventStateManager *)self pairingProgressStateTracker];
  [pairingProgressStateTracker removeObjectForKey:identifierCopy];

  pairingProgressStateTracker2 = [(HMDAccessoryPairingLogEventStateManager *)self pairingProgressStateTracker];
  v9 = [[HMDAccessoryPairingProgressStateMap alloc] initWithDate:dateCopy];
  [pairingProgressStateTracker2 setObject:v9 forKey:identifierCopy];

  os_unfair_lock_unlock(&self->_accessoryPairingProgressStateTrackerLock);
}

- (void)_handlePairingStateProgressNotification:(id)notification
{
  v15 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    name = [notificationCopy name];
    v11 = 138543618;
    v12 = v8;
    v13 = 2112;
    v14 = name;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Received accessory pairing progress notification %@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  userInfo = [notificationCopy userInfo];
  [(HMDAccessoryPairingLogEventStateManager *)selfCopy updatePairingProgressState:userInfo];
}

- (void)incrementRetryCount:(id)count
{
  v17 = *MEMORY[0x277D85DE8];
  countCopy = count;
  os_unfair_lock_lock_with_options();
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v13 = 138543618;
    v14 = v8;
    v15 = 2112;
    v16 = countCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Incrementing retry count for identifier %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  retryCountMap = [(HMDAccessoryPairingLogEventStateManager *)selfCopy retryCountMap];
  v10 = [retryCountMap objectForKeyedSubscript:countCopy];

  if (v10)
  {
    retryCountMap3 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v10, "intValue") + 1}];
    retryCountMap2 = [(HMDAccessoryPairingLogEventStateManager *)selfCopy retryCountMap];
    [retryCountMap2 setObject:retryCountMap3 forKeyedSubscript:countCopy];
  }

  else
  {
    retryCountMap3 = [(HMDAccessoryPairingLogEventStateManager *)selfCopy retryCountMap];
    [retryCountMap3 setObject:&unk_283E72AB8 forKeyedSubscript:countCopy];
  }

  os_unfair_lock_unlock(&self->_accessoryPairingRetryMapLock);
}

- (void)updateStatesOnResult:(BOOL)result
{
  resultCopy = result;
  v15 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock_with_options();
  if (resultCopy)
  {
    recoveryType = 0;
  }

  else
  {
    if (![(HMDAccessoryPairingLogEventStateManager *)self recoveryType])
    {
      goto LABEL_6;
    }

    recoveryType = [(HMDAccessoryPairingLogEventStateManager *)self recoveryType];
  }

  [(HMDAccessoryPairingLogEventStateManager *)self setPreviousRecoveryType:recoveryType];
LABEL_6:
  [(HMDAccessoryPairingLogEventStateManager *)self setRecoveryType:0];
  date = [MEMORY[0x277CBEAA8] date];
  [(HMDAccessoryPairingLogEventStateManager *)self setLastPairingEndTime:date];

  os_unfair_lock_unlock(&self->_accessoryPairingRetryMapLock);
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = 138543618;
    v12 = v10;
    v13 = 2048;
    previousRecoveryType = [(HMDAccessoryPairingLogEventStateManager *)selfCopy previousRecoveryType];
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Updated previous recoveryType to: %lu", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
}

- (void)clearRetryCountMap
{
  os_unfair_lock_lock_with_options();
  retryCountMap = [(HMDAccessoryPairingLogEventStateManager *)self retryCountMap];
  [retryCountMap removeAllObjects];

  os_unfair_lock_unlock(&self->_accessoryPairingRetryMapLock);
}

- (unint64_t)retryCountForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock_with_options();
  retryCountMap = [(HMDAccessoryPairingLogEventStateManager *)self retryCountMap];
  v6 = [retryCountMap objectForKeyedSubscript:identifierCopy];
  unsignedIntegerValue = [v6 unsignedIntegerValue];

  os_unfair_lock_unlock(&self->_accessoryPairingRetryMapLock);
  return unsignedIntegerValue;
}

- (void)fillUnknownErrorIfMissingErrorForPairingEvent:(id)event
{
  v14 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  matterAccessoryPairingStep = [eventCopy matterAccessoryPairingStep];
  error = [eventCopy error];

  if (matterAccessoryPairingStep != 27 && !error)
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v10;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Filling unknown error before submission because pairing event is missing error", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    v11 = [MEMORY[0x277CCA9B8] hmdErrorWithCode:1];
    [eventCopy setError:v11];

    [eventCopy setMatterAccessorySourceErrorDomain:@"HMDErrorDomain"];
  }
}

- (void)_handleMatterAccessoryUpdatePairingMetricNotification:(id)notification pairingEvent:(id)event logEventSubmitter:(id)submitter
{
  v158 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  eventCopy = event;
  submitterCopy = submitter;
  os_unfair_lock_lock_with_options();
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    name = [notificationCopy name];
    *buf = 138543618;
    v149 = v14;
    v150 = 2112;
    v151 = name;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Handling %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  if (!eventCopy)
  {
    v16 = objc_autoreleasePoolPush();
    v20 = selfCopy;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543362;
      v149 = v21;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Not updating pairing metric because pairing event is nil", buf, 0xCu);
    }

    goto LABEL_15;
  }

  if (([eventCopy isMatterAccessory] & 1) == 0)
  {
    v16 = objc_autoreleasePoolPush();
    v22 = selfCopy;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543362;
      v149 = v23;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Not updating pairing metric because pairing event is not for matter accessory", buf, 0xCu);
    }

    goto LABEL_15;
  }

  if (([eventCopy isAddOperation] & 1) == 0)
  {
    v16 = objc_autoreleasePoolPush();
    v24 = selfCopy;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543362;
      v149 = v25;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Not updating pairing metric because pairing event is not add operation", buf, 0xCu);
    }

    goto LABEL_15;
  }

  if ([eventCopy isSubmitted])
  {
    v16 = objc_autoreleasePoolPush();
    v17 = selfCopy;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543362;
      v149 = v19;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Not updating pairing metric because pairing event is already submitted", buf, 0xCu);
    }

LABEL_15:

    objc_autoreleasePoolPop(v16);
    goto LABEL_16;
  }

  if ([eventCopy isSubmitting])
  {
    v16 = objc_autoreleasePoolPush();
    v26 = selfCopy;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543362;
      v149 = v27;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Not updating pairing metric because pairing event is already being submitted", buf, 0xCu);
    }

    goto LABEL_15;
  }

  error = [eventCopy error];

  matterAccessoryPairingStep = [eventCopy matterAccessoryPairingStep];
  if (error || matterAccessoryPairingStep == 27)
  {
    context = objc_autoreleasePoolPush();
    v30 = selfCopy;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = HMFGetLogIdentifier();
      v33 = HMDMatterAccessoryPairingStepAsString([eventCopy matterAccessoryPairingStep]);
      error2 = [eventCopy error];
      *buf = 138543874;
      v149 = v32;
      v150 = 2112;
      v151 = v33;
      v152 = 2112;
      v153 = error2;
      _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_ERROR, "%{public}@Received update to pairing event when metric is completed already %@ %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(context);
  }

  userInfo = [notificationCopy userInfo];
  v137 = [userInfo objectForKeyedSubscript:@"HMDMatterAccessoryPairingMTRMetricsKey"];

  if (v137)
  {
    v36 = objc_autoreleasePoolPush();
    v37 = selfCopy;
    v38 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
      v39 = HMFGetLogIdentifier();
      mtrMetrics = [eventCopy mtrMetrics];
      *buf = 138543874;
      v149 = v39;
      v150 = 2048;
      v151 = mtrMetrics;
      v152 = 2048;
      v153 = v137;
      _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_INFO, "%{public}@Updating mtr metrics %p -> %p", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v36);
    [eventCopy setMtrMetrics:v137];
  }

  userInfo2 = [notificationCopy userInfo];
  v147 = 0;
  v138 = [userInfo2 hmf_integerForKey:@"HMDMatterAccessoryPairingStepKey" error:&v147];
  v130 = v147;

  userInfo3 = [notificationCopy userInfo];
  v146 = 0;
  v125 = [userInfo3 hmf_BOOLForKey:@"HMDMatterAccessoryPairingAccessoryDiscoveredKey" error:&v146];
  v129 = v146;

  userInfo4 = [notificationCopy userInfo];
  v136 = [userInfo4 hmf_numberForKey:@"HMDMatterAccessoryMatterVendorIDKey"];

  userInfo5 = [notificationCopy userInfo];
  v135 = [userInfo5 hmf_numberForKey:@"HMDMatterAccessoryMatterProductIDKey"];

  userInfo6 = [notificationCopy userInfo];
  v134 = [userInfo6 hmf_numberForKey:@"HMDMatterAccessoryMatterDeviceTypeKey"];

  userInfo7 = [notificationCopy userInfo];
  v133 = [userInfo7 hmf_numberForKey:@"HMDMatterAccessoryThreadCapabilitiesKey"];

  userInfo8 = [notificationCopy userInfo];
  v132 = [userInfo8 hmf_numberForKey:@"HMDMatterAccessoryIsWEDAccessoryKey"];

  userInfo9 = [notificationCopy userInfo];
  contexta = [userInfo9 hmf_numberForKey:@"HMDAccessoryPairingSupportedLinkLayerTypesKey"];

  userInfo10 = [notificationCopy userInfo];
  v131 = [userInfo10 hmf_numberForKey:@"HMDMatterAccessoryUnauthenticatedPromptStartStopKey"];

  if (!v130)
  {
    v122 = objc_autoreleasePoolPush();
    v50 = selfCopy;
    v51 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
    {
      v52 = HMFGetLogIdentifier();
      v53 = HMDMatterAccessoryPairingStepAsString([eventCopy matterAccessoryPairingStep]);
      v54 = HMDMatterAccessoryPairingStepAsString(v138);
      *buf = 138543874;
      v149 = v52;
      v150 = 2112;
      v151 = v53;
      v152 = 2112;
      v153 = v54;
      _os_log_impl(&dword_229538000, v51, OS_LOG_TYPE_INFO, "%{public}@Updating step %@ -> %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v122);
    [eventCopy setMatterAccessoryPairingStep:v138];
  }

  if (!v129)
  {
    v139 = objc_autoreleasePoolPush();
    v55 = selfCopy;
    v56 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
    {
      v57 = HMFGetLogIdentifier();
      [eventCopy matterAccessoryDiscovered];
      v58 = HMFBooleanToString();
      v59 = HMFBooleanToString();
      *buf = 138543874;
      v149 = v57;
      v150 = 2112;
      v151 = v58;
      v152 = 2112;
      v153 = v59;
      _os_log_impl(&dword_229538000, v56, OS_LOG_TYPE_INFO, "%{public}@Updating matter accessory discovered %@ -> %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v139);
    [eventCopy setMatterAccessoryDiscovered:v125];
  }

  if (v136)
  {
    v60 = objc_autoreleasePoolPush();
    v61 = selfCopy;
    v62 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
    {
      v63 = HMFGetLogIdentifier();
      matterVendorID = [eventCopy matterVendorID];
      *buf = 138543874;
      v149 = v63;
      v150 = 2112;
      v151 = matterVendorID;
      v152 = 2112;
      v153 = v136;
      _os_log_impl(&dword_229538000, v62, OS_LOG_TYPE_INFO, "%{public}@Updating Matter vendorID %@ -> %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v60);
    [eventCopy setMatterVendorID:v136];
  }

  if (v135)
  {
    v65 = objc_autoreleasePoolPush();
    v66 = selfCopy;
    v67 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
    {
      v68 = HMFGetLogIdentifier();
      matterProductID = [eventCopy matterProductID];
      *buf = 138543874;
      v149 = v68;
      v150 = 2112;
      v151 = matterProductID;
      v152 = 2112;
      v153 = v135;
      _os_log_impl(&dword_229538000, v67, OS_LOG_TYPE_INFO, "%{public}@Updating Matter productID %@ -> %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v65);
    [eventCopy setMatterProductID:v135];
  }

  if (v134)
  {
    v70 = objc_autoreleasePoolPush();
    v71 = selfCopy;
    v72 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
    {
      v73 = HMFGetLogIdentifier();
      matterDeviceType = [eventCopy matterDeviceType];
      *buf = 138543874;
      v149 = v73;
      v150 = 2112;
      v151 = matterDeviceType;
      v152 = 2112;
      v153 = v134;
      _os_log_impl(&dword_229538000, v72, OS_LOG_TYPE_INFO, "%{public}@Updating Matter device type %@ -> %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v70);
    [eventCopy setMatterDeviceType:v134];
  }

  if (contexta)
  {
    unsignedIntegerValue = [contexta unsignedIntegerValue];
    v140 = objc_autoreleasePoolPush();
    v76 = selfCopy;
    v77 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v77, OS_LOG_TYPE_INFO))
    {
      v78 = HMFGetLogIdentifier();
      supportedLinkLayerTypes = [eventCopy supportedLinkLayerTypes];
      *buf = 138543874;
      v149 = v78;
      v150 = 2112;
      v151 = supportedLinkLayerTypes;
      v152 = 2112;
      v153 = contexta;
      _os_log_impl(&dword_229538000, v77, OS_LOG_TYPE_INFO, "%{public}@Updating supported link layer types %@ -> %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v140);
    v126 = objc_autoreleasePoolPush();
    v80 = v76;
    HMFGetOSLogHandle();
    v81 = v141 = (unsignedIntegerValue & 0x12);
    if (os_log_type_enabled(v81, OS_LOG_TYPE_INFO))
    {
      v82 = HMFGetLogIdentifier();
      [eventCopy isThreadAccessory];
      v83 = HMFBooleanToString();
      v84 = HMFBooleanToString();
      *buf = 138543874;
      v149 = v82;
      v150 = 2112;
      v151 = v83;
      v152 = 2112;
      v153 = v84;
      _os_log_impl(&dword_229538000, v81, OS_LOG_TYPE_INFO, "%{public}@Updating isThreadAccessory %@ -> %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v126);
    [eventCopy setSupportedLinkLayerTypes:contexta];
    [eventCopy setThreadAccessory:v141 == 16];
  }

  if (v133)
  {
    v85 = objc_autoreleasePoolPush();
    v86 = selfCopy;
    v87 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v87, OS_LOG_TYPE_INFO))
    {
      v88 = HMFGetLogIdentifier();
      matterThreadCapabilities = [eventCopy matterThreadCapabilities];
      *buf = 138543874;
      v149 = v88;
      v150 = 2112;
      v151 = matterThreadCapabilities;
      v152 = 2112;
      v153 = v133;
      _os_log_impl(&dword_229538000, v87, OS_LOG_TYPE_INFO, "%{public}@Updating Matter Thread capabilities %@ -> %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v85);
    [eventCopy setMatterThreadCapabilities:v133];
  }

  if (v132)
  {
    v142 = objc_autoreleasePoolPush();
    v90 = selfCopy;
    v91 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v91, OS_LOG_TYPE_INFO))
    {
      v127 = HMFGetLogIdentifier();
      wedAccessory = [eventCopy wedAccessory];
      [eventCopy wedAccessory];
      if (wedAccessory)
        v123 = {;
        [v123 BOOLValue];
        v93 = HMFBooleanToString();
      }

      else
        v93 = {;
        v123 = v93;
      }

      [v132 BOOLValue];
      v94 = HMFBooleanToString();
      *buf = 138543874;
      v149 = v127;
      v150 = 2112;
      v151 = v93;
      v152 = 2112;
      v153 = v94;
      _os_log_impl(&dword_229538000, v91, OS_LOG_TYPE_INFO, "%{public}@Updating isWEDAccessory %@ -> %@", buf, 0x20u);
      if (wedAccessory)
      {
      }
    }

    objc_autoreleasePoolPop(v142);
    [eventCopy setWedAccessory:v132];
  }

  if (v131)
  {
    v95 = [v131 isEqualToNumber:MEMORY[0x277CBEC38]];
    v96 = objc_autoreleasePoolPush();
    v97 = selfCopy;
    if (v95)
    {
      v98 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v98, OS_LOG_TYPE_INFO))
      {
        v99 = HMFGetLogIdentifier();
        *buf = 138543362;
        v149 = v99;
        _os_log_impl(&dword_229538000, v98, OS_LOG_TYPE_INFO, "%{public}@Updating unauthenticated Matter accessory prompt start time", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v96);
      [eventCopy handleUnauthenticatedMatterAccessoryPromptStart];
    }

    else
    {
      v100 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v100, OS_LOG_TYPE_INFO))
      {
        v101 = HMFGetLogIdentifier();
        *buf = 138543362;
        v149 = v101;
        _os_log_impl(&dword_229538000, v100, OS_LOG_TYPE_INFO, "%{public}@Updating unauthenticated Matter accessory prompt duration", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v96);
      [eventCopy handleUnauthenticatedMatterAccessoryPromptEnd];
    }
  }

  userInfo11 = [notificationCopy userInfo];
  v143 = [userInfo11 hmf_errorForKey:@"HMDMatterAccessoryPairingFailureErrorKey"];

  if (v143)
  {
    userInfo12 = [notificationCopy userInfo];
    v128 = [userInfo12 hmf_stringForKey:@"HMDMatterAccessoryPairingSourceErrorDomain"];

    if (!v128)
    {
      v104 = objc_autoreleasePoolPush();
      v105 = selfCopy;
      v106 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
      {
        v107 = HMFGetLogIdentifier();
        *buf = 138543362;
        v149 = v107;
        _os_log_impl(&dword_229538000, v106, OS_LOG_TYPE_ERROR, "%{public}@Received pairing error without source error domain", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v104);
    }

    v108 = MEMORY[0x277CCA9B8];
    domain = [v143 domain];
    v124 = [v108 errorWithDomain:domain code:objc_msgSend(v143 userInfo:{"code"), 0}];

    v121 = objc_autoreleasePoolPush();
    v110 = selfCopy;
    v111 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v111, OS_LOG_TYPE_INFO))
    {
      v112 = HMFGetLogIdentifier();
      error3 = [eventCopy error];
      matterAccessorySourceErrorDomain = [eventCopy matterAccessorySourceErrorDomain];
      *buf = 138544386;
      v149 = v112;
      v150 = 2112;
      v151 = error3;
      v152 = 2112;
      v153 = v124;
      v154 = 2112;
      v155 = matterAccessorySourceErrorDomain;
      v156 = 2112;
      v157 = v128;
      _os_log_impl(&dword_229538000, v111, OS_LOG_TYPE_INFO, "%{public}@Updating error %@ -> %@, sourceErrorDomain %@ -> %@", buf, 0x34u);
    }

    objc_autoreleasePoolPop(v121);
    [eventCopy setError:v124];
    [eventCopy setMatterAccessorySourceErrorDomain:v128];
  }

  userInfo13 = [notificationCopy userInfo];
  v116 = [userInfo13 hmf_BOOLForKey:@"HMDMatterAccessoryPairingSubmitKey"];

  if (v116)
  {
    [(HMDAccessoryPairingLogEventStateManager *)selfCopy fillUnknownErrorIfMissingErrorForPairingEvent:eventCopy];
    v117 = objc_autoreleasePoolPush();
    v118 = selfCopy;
    v119 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v119, OS_LOG_TYPE_INFO))
    {
      v120 = HMFGetLogIdentifier();
      *buf = 138543618;
      v149 = v120;
      v150 = 2112;
      v151 = eventCopy;
      _os_log_impl(&dword_229538000, v119, OS_LOG_TYPE_INFO, "%{public}@Submitting Event %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v117);
    [eventCopy setSubmitting:1];
    [submitterCopy submitLogEvent:eventCopy];
  }

LABEL_16:
  os_unfair_lock_unlock(&self->_matterAccessoryPairingMetricLock);
}

- (void)handleMatterAccessoryUpdatePairingMetricNotification:(id)notification
{
  v30 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  isConfigured = [(HMDAccessoryPairingLogEventStateManager *)self isConfigured];
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  v9 = v8;
  if (isConfigured)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      name = [notificationCopy name];
      pairingEvent = [(HMDAccessoryPairingLogEventStateManager *)selfCopy pairingEvent];
      *buf = 138543874;
      v25 = v10;
      v26 = 2112;
      v27 = name;
      v28 = 2112;
      v29 = pairingEvent;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Handling %@ %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v6);
    pairingEvent2 = [(HMDAccessoryPairingLogEventStateManager *)selfCopy pairingEvent];
    logEventSubmitter = [(HMDAccessoryPairingLogEventStateManager *)selfCopy logEventSubmitter];
    workQueue = [(HMDAccessoryPairingLogEventStateManager *)selfCopy workQueue];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __96__HMDAccessoryPairingLogEventStateManager_handleMatterAccessoryUpdatePairingMetricNotification___block_invoke;
    v20[3] = &unk_2786891E0;
    v20[4] = selfCopy;
    v21 = notificationCopy;
    v22 = pairingEvent2;
    v23 = logEventSubmitter;
    v16 = logEventSubmitter;
    v17 = pairingEvent2;
    dispatch_async(workQueue, v20);
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      name2 = [notificationCopy name];
      *buf = 138543618;
      v25 = v18;
      v26 = 2112;
      v27 = name2;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Not handling %@ logEventStateManager is not configured", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
  }
}

- (BOOL)isConfigured
{
  pairingEvent = [(HMDAccessoryPairingLogEventStateManager *)self pairingEvent];
  if (pairingEvent)
  {
    workQueue = [(HMDAccessoryPairingLogEventStateManager *)self workQueue];
    if (workQueue)
    {
      logEventSubmitter = [(HMDAccessoryPairingLogEventStateManager *)self logEventSubmitter];
      v6 = logEventSubmitter != 0;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)configureWithPairingEvent:(id)event workQueue:(id)queue logEventSubmitter:(id)submitter
{
  v27 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  queueCopy = queue;
  submitterCopy = submitter;
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    workQueue = [(HMDAccessoryPairingLogEventStateManager *)selfCopy workQueue];
    logEventSubmitter = [(HMDAccessoryPairingLogEventStateManager *)selfCopy logEventSubmitter];
    v17 = 138544386;
    v18 = v14;
    v19 = 2112;
    v20 = queueCopy;
    v21 = 2112;
    v22 = submitterCopy;
    v23 = 2112;
    v24 = workQueue;
    v25 = 2112;
    v26 = logEventSubmitter;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Configuring with workQueue %@ logEventSubmitter %@, from workQueue %@ logEventSubmitter %@", &v17, 0x34u);
  }

  objc_autoreleasePoolPop(v11);
  [(HMDAccessoryPairingLogEventStateManager *)selfCopy setPairingEvent:eventCopy];
  [(HMDAccessoryPairingLogEventStateManager *)selfCopy setWorkQueue:queueCopy];
  [(HMDAccessoryPairingLogEventStateManager *)selfCopy setLogEventSubmitter:submitterCopy];
}

- (HMDAccessoryPairingLogEventStateManager)initWithNotificationCenter:(id)center
{
  centerCopy = center;
  v14.receiver = self;
  v14.super_class = HMDAccessoryPairingLogEventStateManager;
  v6 = [(HMDAccessoryPairingLogEventStateManager *)&v14 init];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    retryCountMap = v6->_retryCountMap;
    v6->_retryCountMap = v7;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    pairingProgressStateTracker = v6->_pairingProgressStateTracker;
    v6->_pairingProgressStateTracker = dictionary;

    v6->_pairingUIState = 0;
    v6->_recoveryType = 0;
    v6->_previousRecoveryType = 0;
    distantPast = [MEMORY[0x277CBEAA8] distantPast];
    lastPairingEndTime = v6->_lastPairingEndTime;
    v6->_lastPairingEndTime = distantPast;

    objc_storeStrong(&v6->_notificationCenter, center);
    [(NSNotificationCenter *)v6->_notificationCenter addObserver:v6 selector:sel_handleMatterAccessoryUpdatePairingMetricNotification_ name:@"HMDMatterAccessoryUpdatePairingMetricNotification" object:0];
    [(NSNotificationCenter *)v6->_notificationCenter addObserver:v6 selector:sel__handlePairingStateProgressNotification_ name:@"HMDAccessoryProgressStateUpdateNotification" object:0];
  }

  return v6;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t58_111832 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t58_111832, &__block_literal_global_111833);
  }

  v3 = logCategory__hmf_once_v59_111834;

  return v3;
}

void __54__HMDAccessoryPairingLogEventStateManager_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v59_111834;
  logCategory__hmf_once_v59_111834 = v0;
}

+ (HMDAccessoryPairingLogEventStateManager)sharedManager
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__HMDAccessoryPairingLogEventStateManager_sharedManager__block_invoke;
  block[3] = &unk_27868A728;
  v9 = defaultCenter;
  v3 = sharedManager__hmf_once_t11;
  v4 = defaultCenter;
  if (v3 != -1)
  {
    dispatch_once(&sharedManager__hmf_once_t11, block);
  }

  v5 = sharedManager__hmf_once_v12;
  v6 = sharedManager__hmf_once_v12;

  return v5;
}

void __56__HMDAccessoryPairingLogEventStateManager_sharedManager__block_invoke(uint64_t a1)
{
  v1 = [[HMDAccessoryPairingLogEventStateManager alloc] initWithNotificationCenter:*(a1 + 32)];
  v2 = sharedManager__hmf_once_v12;
  sharedManager__hmf_once_v12 = v1;
}

@end