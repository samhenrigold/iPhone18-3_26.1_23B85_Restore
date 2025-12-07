@interface HMDMediaGroupsUnconfiguredParticipantOnboardingManager
+ (id)logCategory;
- (HMDMediaGroupsUnconfiguredParticipantOnboardingManager)initWithIdentifier:(id)identifier;
- (HMDMediaGroupsUnconfiguredParticipantOnboardingManagerDataSource)dataSource;
- (id)dequeuedAssociatedGroupIdentifierForParticipantAccessoryUUID:(id)d;
- (id)logIdentifier;
- (id)mediaDestinationManagerWithParticipantAccessoryUUID:(id)d;
- (id)queuedParticipantAccessoryUUIDs;
- (void)attemptOnboardingForParticipantAccessoryUUID:(id)d;
- (void)dequeueAvailableOnboadedParticipants;
- (void)queueOnboardingParticipantWithAccessoryUUID:(id)d withAssociatedGroupIdentifier:(id)identifier;
- (void)setQueuedAssociatedGroupIdentifier:(id)identifier forParticipantAccessoryUUID:(id)d;
@end

@implementation HMDMediaGroupsUnconfiguredParticipantOnboardingManager

- (HMDMediaGroupsUnconfiguredParticipantOnboardingManagerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (id)logIdentifier
{
  identifier = [(HMDMediaGroupsUnconfiguredParticipantOnboardingManager *)self identifier];
  uUIDString = [identifier UUIDString];

  return uUIDString;
}

- (id)mediaDestinationManagerWithParticipantAccessoryUUID:(id)d
{
  v17 = *MEMORY[0x277D85DE8];
  dCopy = d;
  dataSource = [(HMDMediaGroupsUnconfiguredParticipantOnboardingManager *)self dataSource];
  v6 = dataSource;
  if (dataSource)
  {
    v7 = [dataSource mediaDestinationManagerWithParticipantAccessoryUUID:dCopy forMediaGroupsUnconfiguredParticipantOnboardingManager:self];
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
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to get media destination manager with participant accessory uuid: %@ due to no data source", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v7 = 0;
  }

  return v7;
}

- (id)dequeuedAssociatedGroupIdentifierForParticipantAccessoryUUID:(id)d
{
  dCopy = d;
  os_unfair_lock_lock_with_options();
  v5 = [(NSMutableDictionary *)self->_queuedAssociatedGroupIdentifiers objectForKey:dCopy];
  if (v5)
  {
    [(NSMutableDictionary *)self->_queuedAssociatedGroupIdentifiers removeObjectForKey:dCopy];
  }

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (id)queuedParticipantAccessoryUUIDs
{
  os_unfair_lock_lock_with_options();
  allKeys = [(NSMutableDictionary *)self->_queuedAssociatedGroupIdentifiers allKeys];
  os_unfair_lock_unlock(&self->_lock);

  return allKeys;
}

- (void)setQueuedAssociatedGroupIdentifier:(id)identifier forParticipantAccessoryUUID:(id)d
{
  identifierCopy = identifier;
  dCopy = d;
  os_unfair_lock_lock_with_options();
  [(NSMutableDictionary *)self->_queuedAssociatedGroupIdentifiers setObject:identifierCopy forKey:dCopy];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)attemptOnboardingForParticipantAccessoryUUID:(id)d
{
  v22 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = [(HMDMediaGroupsUnconfiguredParticipantOnboardingManager *)self mediaDestinationManagerWithParticipantAccessoryUUID:dCopy];
  if (v5)
  {
    v6 = [(HMDMediaGroupsUnconfiguredParticipantOnboardingManager *)self dequeuedAssociatedGroupIdentifierForParticipantAccessoryUUID:dCopy];
    if (v6)
    {
      v7 = objc_autoreleasePoolPush();
      selfCopy = self;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = HMFGetLogIdentifier();
        identifier = [v5 identifier];
        *buf = 138544130;
        v15 = v10;
        v16 = 2112;
        v17 = v6;
        v18 = 2112;
        v19 = dCopy;
        v20 = 2112;
        v21 = identifier;
        _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Sending request to update audio group identifier: %@ for participant accessory identifier: %@ destination: %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v7);
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __103__HMDMediaGroupsUnconfiguredParticipantOnboardingManager_attemptOnboardingForParticipantAccessoryUUID___block_invoke;
      v12[3] = &unk_27868A1D8;
      v12[4] = selfCopy;
      v13 = dCopy;
      [v5 requestToUpdateAudioGroupIdentifier:v6 completion:v12];
    }
  }
}

void __103__HMDMediaGroupsUnconfiguredParticipantOnboardingManager_attemptOnboardingForParticipantAccessoryUUID___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v9 = *(a1 + 40);
      v15 = 138543874;
      v16 = v8;
      v17 = 2112;
      v18 = v9;
      v19 = 2112;
      v20 = v3;
      v10 = "%{public}@Completed send request to update audio group identifier for participant accessory identifier: %@ with error: %@";
      v11 = v7;
      v12 = OS_LOG_TYPE_ERROR;
      v13 = 32;
LABEL_6:
      _os_log_impl(&dword_229538000, v11, v12, v10, &v15, v13);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v14 = *(a1 + 40);
    v15 = 138543618;
    v16 = v8;
    v17 = 2112;
    v18 = v14;
    v10 = "%{public}@Completed send request to update audio group identifier for participant accessory identifier: %@";
    v11 = v7;
    v12 = OS_LOG_TYPE_INFO;
    v13 = 22;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v4);
}

- (void)dequeueAvailableOnboadedParticipants
{
  v13 = *MEMORY[0x277D85DE8];
  queuedParticipantAccessoryUUIDs = [(HMDMediaGroupsUnconfiguredParticipantOnboardingManager *)self queuedParticipantAccessoryUUIDs];
  if ([queuedParticipantAccessoryUUIDs count])
  {
    v4 = objc_autoreleasePoolPush();
    selfCopy = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      *buf = 138543618;
      v10 = v7;
      v11 = 2112;
      v12 = queuedParticipantAccessoryUUIDs;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Attempting onboarding for participant accessory uuids: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __94__HMDMediaGroupsUnconfiguredParticipantOnboardingManager_dequeueAvailableOnboadedParticipants__block_invoke;
    v8[3] = &unk_278682498;
    v8[4] = selfCopy;
    [queuedParticipantAccessoryUUIDs na_each:v8];
  }
}

- (void)queueOnboardingParticipantWithAccessoryUUID:(id)d withAssociatedGroupIdentifier:(id)identifier
{
  v18 = *MEMORY[0x277D85DE8];
  dCopy = d;
  identifierCopy = identifier;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = 138543874;
    v13 = v11;
    v14 = 2112;
    v15 = dCopy;
    v16 = 2112;
    v17 = identifierCopy;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Queueing onboarding for participant accessory uuid: %@ associated group identifier: %@", &v12, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  [(HMDMediaGroupsUnconfiguredParticipantOnboardingManager *)selfCopy setQueuedAssociatedGroupIdentifier:identifierCopy forParticipantAccessoryUUID:dCopy];
  [(HMDMediaGroupsUnconfiguredParticipantOnboardingManager *)selfCopy dequeueAvailableOnboadedParticipants];
}

- (HMDMediaGroupsUnconfiguredParticipantOnboardingManager)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v6 = identifierCopy;
    v14.receiver = self;
    v14.super_class = HMDMediaGroupsUnconfiguredParticipantOnboardingManager;
    v7 = [(HMDMediaGroupsUnconfiguredParticipantOnboardingManager *)&v14 init];
    v8 = v7;
    if (v7)
    {
      v7->_lock._os_unfair_lock_opaque = 0;
      objc_storeStrong(&v7->_identifier, identifier);
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      queuedAssociatedGroupIdentifiers = v8->_queuedAssociatedGroupIdentifiers;
      v8->_queuedAssociatedGroupIdentifiers = dictionary;
    }

    return v8;
  }

  else
  {
    v12 = _HMFPreconditionFailure();
    return +[(HMDMediaGroupsUnconfiguredParticipantOnboardingManager *)v12];
  }
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t9_229561 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t9_229561, &__block_literal_global_229562);
  }

  v3 = logCategory__hmf_once_v10_229563;

  return v3;
}

void __69__HMDMediaGroupsUnconfiguredParticipantOnboardingManager_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v10_229563;
  logCategory__hmf_once_v10_229563 = v0;
}

@end