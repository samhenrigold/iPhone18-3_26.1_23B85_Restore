@interface HMDMediaGroupsAggregatorBackupSender
+ (id)logCategory;
- (HMDMediaGroupsAggregateBackupMessageTimerProvider)backupTimerProvider;
- (HMDMediaGroupsAggregatorBackupSender)initWithIdentifier:(id)identifier backupTimerProvider:(id)provider;
- (HMDMediaGroupsAggregatorBackupSenderDataSource)dataSource;
- (id)backupGroupsForParticipantAccessoryUUID:(id)d;
- (id)backupTimerForParticipantAccessoryUUID:(id)d;
- (id)logIdentifier;
- (id)mediaGroupsAggregateBackupMessageTimerWithParticipantAccessoryUUID:(id)d;
- (id)receiverForParticipantAccessoryUUID:(id)d;
- (id)routerParticipantAccessoryUUID:(id)d;
- (void)_sendBackupToFirstPartyParticipantAccessoryUUID:(id)d backupGroups:(id)groups;
- (void)_sendBackupToParticipantAccessoryUUID:(id)d;
- (void)clearCachedData;
- (void)clearCachedDataForParticipantAccessoryUUID:(id)d;
- (void)createNewBackupTimerForParticipantAccessoryUUID:(id)d;
- (void)didFireTimerForMediaGroupsAggregateBackupMessageTimer:(id)timer;
- (void)locallyRouteGroupsBackupDataMessage:(id)message toParticipantAccessoryUUID:(id)d;
- (void)markAttemptForParticipantAccessoryUUID:(id)d withMessageIdentifier:(id)identifier;
- (void)removeBackupTimerWithParticipantAccessoryUUID:(id)d;
- (void)routeBackedUpGroupsMessage:(id)message toParticipantAccessoryUUID:(id)d;
- (void)sendBackupToParticipantAccessoryUUID:(id)d;
- (void)setBackUpTimer:(id)timer;
- (void)startBackupTimerWithParticipantAccessoryUUID:(id)d dueToFailedMessageIdentifier:(id)identifier;
@end

@implementation HMDMediaGroupsAggregatorBackupSender

- (HMDMediaGroupsAggregateBackupMessageTimerProvider)backupTimerProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_backupTimerProvider);

  return WeakRetained;
}

- (HMDMediaGroupsAggregatorBackupSenderDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (id)logIdentifier
{
  identifier = [(HMDMediaGroupsAggregatorBackupSender *)self identifier];
  uUIDString = [identifier UUIDString];

  return uUIDString;
}

- (id)mediaGroupsAggregateBackupMessageTimerWithParticipantAccessoryUUID:(id)d
{
  dCopy = d;
  v4 = [[HMDMediaGroupsAggregateBackupMessageTimer alloc] initWithParticipantAccessoryUUID:dCopy];

  return v4;
}

- (void)didFireTimerForMediaGroupsAggregateBackupMessageTimer:(id)timer
{
  v17 = *MEMORY[0x277D85DE8];
  timerCopy = timer;
  participantAccessoryUUID = [timerCopy participantAccessoryUUID];
  v6 = [(HMDMediaGroupsAggregatorBackupSender *)self backupTimerForParticipantAccessoryUUID:participantAccessoryUUID];

  if (v6 && v6 == timerCopy)
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      participantAccessoryUUID2 = [timerCopy participantAccessoryUUID];
      v13 = 138543618;
      v14 = v10;
      v15 = 2112;
      v16 = participantAccessoryUUID2;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Backup timer fired for participant accessory uuid: %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    participantAccessoryUUID3 = [timerCopy participantAccessoryUUID];
    [(HMDMediaGroupsAggregatorBackupSender *)selfCopy _sendBackupToParticipantAccessoryUUID:participantAccessoryUUID3];
  }
}

- (void)markAttemptForParticipantAccessoryUUID:(id)d withMessageIdentifier:(id)identifier
{
  v18 = *MEMORY[0x277D85DE8];
  dCopy = d;
  identifierCopy = identifier;
  v8 = [(HMDMediaGroupsAggregatorBackupSender *)self backupTimerForParticipantAccessoryUUID:dCopy];
  v9 = v8;
  if (v8)
  {
    [v8 markAttemptWithMessageIdentifier:identifierCopy];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v14 = 138543618;
      v15 = v13;
      v16 = 2112;
      v17 = dCopy;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to mark backup timer attempt due to no timer for accessory UUID: %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
  }
}

- (void)startBackupTimerWithParticipantAccessoryUUID:(id)d dueToFailedMessageIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v8 = [(HMDMediaGroupsAggregatorBackupSender *)self backupTimerForParticipantAccessoryUUID:d];
  currentMessageIdentifier = [v8 currentMessageIdentifier];
  LODWORD(self) = [currentMessageIdentifier hmf_isEqualToUUID:identifierCopy];

  if (self)
  {
    [v8 startRetryTimer];
  }
}

- (void)removeBackupTimerWithParticipantAccessoryUUID:(id)d
{
  dCopy = d;
  os_unfair_lock_lock_with_options();
  [(NSMutableDictionary *)self->_backupTimers removeObjectForKey:dCopy];
  os_unfair_lock_unlock(&self->_lock);
}

- (id)backupTimerForParticipantAccessoryUUID:(id)d
{
  dCopy = d;
  os_unfair_lock_lock_with_options();
  v5 = [(NSMutableDictionary *)self->_backupTimers objectForKey:dCopy];
  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (void)setBackUpTimer:(id)timer
{
  timerCopy = timer;
  os_unfair_lock_lock_with_options();
  backupTimers = self->_backupTimers;
  participantAccessoryUUID = [timerCopy participantAccessoryUUID];
  [(NSMutableDictionary *)backupTimers setObject:timerCopy forKey:participantAccessoryUUID];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)createNewBackupTimerForParticipantAccessoryUUID:(id)d
{
  v14 = *MEMORY[0x277D85DE8];
  dCopy = d;
  backupTimerProvider = [(HMDMediaGroupsAggregatorBackupSender *)self backupTimerProvider];
  v6 = backupTimerProvider;
  if (backupTimerProvider)
  {
    v7 = [backupTimerProvider mediaGroupsAggregateBackupMessageTimerWithParticipantAccessoryUUID:dCopy];
    [v7 setDelegate:self];
    [(HMDMediaGroupsAggregatorBackupSender *)self setBackUpTimer:v7];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v11;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to create new backup timer due to no provider", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
  }
}

- (id)receiverForParticipantAccessoryUUID:(id)d
{
  v17 = *MEMORY[0x277D85DE8];
  dCopy = d;
  dataSource = [(HMDMediaGroupsAggregatorBackupSender *)self dataSource];
  v6 = dataSource;
  if (dataSource)
  {
    v7 = [dataSource receiverForParticipantAccessoryUUID:dCopy mediaGroupsAggregatorBackupSender:self];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v13 = 138543618;
      v14 = v11;
      v15 = 2112;
      v16 = dCopy;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to get receiver for participant accessory uuid: %@ due to no data source", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v7 = 0;
  }

  return v7;
}

- (id)routerParticipantAccessoryUUID:(id)d
{
  v17 = *MEMORY[0x277D85DE8];
  dCopy = d;
  dataSource = [(HMDMediaGroupsAggregatorBackupSender *)self dataSource];
  v6 = dataSource;
  if (dataSource)
  {
    v7 = [dataSource routerForParticipantAccessoryUUID:dCopy mediaGroupsAggregatorBackupSender:self];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v13 = 138543618;
      v14 = v11;
      v15 = 2112;
      v16 = dCopy;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to get router for participant accessory uuid: %@ due to no data source", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v7 = 0;
  }

  return v7;
}

- (id)backupGroupsForParticipantAccessoryUUID:(id)d
{
  v17 = *MEMORY[0x277D85DE8];
  dCopy = d;
  dataSource = [(HMDMediaGroupsAggregatorBackupSender *)self dataSource];
  v6 = dataSource;
  if (dataSource)
  {
    v7 = [dataSource backupGroupsForParticipantAccessoryUUID:dCopy mediaGroupsAggregatorBackupSender:self];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v13 = 138543618;
      v14 = v11;
      v15 = 2112;
      v16 = dCopy;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to get backup groups for participant accessory uuid: %@ due to no data source", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v7 = 0;
  }

  return v7;
}

- (void)locallyRouteGroupsBackupDataMessage:(id)message toParticipantAccessoryUUID:(id)d
{
  v19 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  dCopy = d;
  v8 = [(HMDMediaGroupsAggregatorBackupSender *)self receiverForParticipantAccessoryUUID:dCopy];
  v9 = v8;
  if (v8)
  {
    [v8 handleGroupsBackupDataMessage:messageCopy];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v15 = 138543618;
      v16 = v13;
      v17 = 2112;
      v18 = messageCopy;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to locally route due to no receiver for groups backup data message: %@", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v14 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:4];
    [messageCopy respondWithError:v14];
  }
}

- (void)routeBackedUpGroupsMessage:(id)message toParticipantAccessoryUUID:(id)d
{
  v28 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  dCopy = d;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    name = [messageCopy name];
    identifier = [messageCopy identifier];
    *buf = 138543874;
    v23 = v11;
    v24 = 2112;
    v25 = name;
    v26 = 2112;
    v27 = identifier;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Routing message: %@(%@)", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v14 = [(HMDMediaGroupsAggregatorBackupSender *)selfCopy routerParticipantAccessoryUUID:dCopy];
  if (v14)
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __94__HMDMediaGroupsAggregatorBackupSender_routeBackedUpGroupsMessage_toParticipantAccessoryUUID___block_invoke;
    v20[3] = &unk_2786858B0;
    v20[4] = selfCopy;
    v21 = dCopy;
    [v14 routeMessage:messageCopy localHandler:v20];
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = selfCopy;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543618;
      v23 = v18;
      v24 = 2112;
      v25 = dCopy;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Failed to route backup group data due to no router found for participant accessory UUID: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    v19 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:4];
    [messageCopy respondWithError:v19];
  }
}

- (void)clearCachedDataForParticipantAccessoryUUID:(id)d
{
  dCopy = d;
  os_unfair_lock_lock_with_options();
  [(NSMutableDictionary *)self->_backupTimers removeObjectForKey:dCopy];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)clearCachedData
{
  os_unfair_lock_lock_with_options();
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  backupTimers = self->_backupTimers;
  self->_backupTimers = dictionary;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_sendBackupToFirstPartyParticipantAccessoryUUID:(id)d backupGroups:(id)groups
{
  v28[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  groupsCopy = groups;
  v27 = @"HMDMediaGroupsBackupDataKey";
  v28[0] = groupsCopy;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:&v27 count:1];
  v9 = objc_alloc(MEMORY[0x277D0F820]);
  identifier = [(HMDMediaGroupsAggregatorBackupSender *)self identifier];
  v11 = [v9 initWithTarget:identifier];

  v12 = [objc_alloc(MEMORY[0x277D0F848]) initWithName:@"HMDMediaGroupsBackupDataMessage" destination:v11 payload:v8];
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__17315;
  v25 = __Block_byref_object_dispose__17316;
  identifier2 = [v12 identifier];
  [(HMDMediaGroupsAggregatorBackupSender *)self markAttemptForParticipantAccessoryUUID:dCopy withMessageIdentifier:v22[5]];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __101__HMDMediaGroupsAggregatorBackupSender__sendBackupToFirstPartyParticipantAccessoryUUID_backupGroups___block_invoke;
  v17 = &unk_278670C30;
  selfCopy = self;
  v13 = dCopy;
  v19 = v13;
  v20 = &v21;
  [v12 setResponseHandler:&v14];
  [(HMDMediaGroupsAggregatorBackupSender *)self routeBackedUpGroupsMessage:v12 toParticipantAccessoryUUID:v13, v14, v15, v16, v17, selfCopy];

  _Block_object_dispose(&v21, 8);
}

void __101__HMDMediaGroupsAggregatorBackupSender__sendBackupToFirstPartyParticipantAccessoryUUID_backupGroups___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v11 = 138543618;
      v12 = v10;
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Groups backup data message responded with error: %@", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    [*(a1 + 32) startBackupTimerWithParticipantAccessoryUUID:*(a1 + 40) dueToFailedMessageIdentifier:*(*(*(a1 + 48) + 8) + 40)];
  }

  else
  {
    [*(a1 + 32) removeBackupTimerWithParticipantAccessoryUUID:*(a1 + 40)];
  }
}

- (void)_sendBackupToParticipantAccessoryUUID:(id)d
{
  v18 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v14 = 138543618;
    v15 = v8;
    v16 = 2112;
    v17 = dCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Sending backup group data message to participant accessory uuid: %@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMDMediaGroupsAggregatorBackupSender *)selfCopy backupGroupsForParticipantAccessoryUUID:dCopy];
  if (v9)
  {
    [(HMDMediaGroupsAggregatorBackupSender *)selfCopy _sendBackupToFirstPartyParticipantAccessoryUUID:dCopy backupGroups:v9];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = selfCopy;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v14 = 138543618;
      v15 = v13;
      v16 = 2112;
      v17 = dCopy;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to get backup groups to send for participant accessory uuid: %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    [(HMDMediaGroupsAggregatorBackupSender *)v11 removeBackupTimerWithParticipantAccessoryUUID:dCopy];
  }
}

- (void)sendBackupToParticipantAccessoryUUID:(id)d
{
  dCopy = d;
  [(HMDMediaGroupsAggregatorBackupSender *)self createNewBackupTimerForParticipantAccessoryUUID:dCopy];
  [(HMDMediaGroupsAggregatorBackupSender *)self _sendBackupToParticipantAccessoryUUID:dCopy];
}

- (HMDMediaGroupsAggregatorBackupSender)initWithIdentifier:(id)identifier backupTimerProvider:(id)provider
{
  identifierCopy = identifier;
  providerCopy = provider;
  if (!identifierCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v9 = providerCopy;
  if (!providerCopy)
  {
LABEL_7:
    v15 = _HMFPreconditionFailure();
    return [(HMDMediaGroupsAggregatorBackupSender *)v15 initWithIdentifier:v16, v17];
  }

  v18.receiver = self;
  v18.super_class = HMDMediaGroupsAggregatorBackupSender;
  v10 = [(HMDMediaGroupsAggregatorBackupSender *)&v18 init];
  v11 = v10;
  if (v10)
  {
    v10->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v10->_identifier, identifier);
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    backupTimers = v11->_backupTimers;
    v11->_backupTimers = dictionary;

    objc_storeWeak(&v11->_backupTimerProvider, v9);
  }

  return v11;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t17_17333 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t17_17333, &__block_literal_global_17334);
  }

  v3 = logCategory__hmf_once_v18_17335;

  return v3;
}

void __51__HMDMediaGroupsAggregatorBackupSender_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v18_17335;
  logCategory__hmf_once_v18_17335 = v0;
}

@end