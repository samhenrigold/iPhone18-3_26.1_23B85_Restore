@interface HMDBulletinBoardNotification
+ (BOOL)supportsBulletinNotificationGroup:(id)group;
+ (id)logCategory;
- (BOOL)isEnabled;
- (HMDBulletinBoardNotification)init;
- (HMDBulletinBoardNotification)initWithCoder:(id)coder;
- (HMDBulletinBoardNotification)initWithService:(id)service;
- (HMDBulletinBoardNotification)initWithService:(id)service enabled:(BOOL)enabled condition:(id)condition;
- (HMDBulletinBoardNotificationServiceGroup)notificationServiceGroup;
- (HMDHome)home;
- (HMDService)service;
- (NSUUID)messageTargetUUID;
- (id)attributeDescriptions;
- (id)dumpStateWithPrivacyLevel:(unint64_t)level;
- (id)logIdentifier;
- (void)_handleBulletinBoardNotificationCommitRequest:(id)request;
- (void)_updateAccessoryBulletinNotificationManagerWithEnabled:(BOOL)enabled condition:(id)condition completion:(id)completion;
- (void)_updateLocalSettingsWithEnabled:(BOOL)enabled condition:(id)condition forMessage:(id)message;
- (void)configureBulletinNotification;
- (void)configureWithWorkQueue:(id)queue messageDispatcher:(id)dispatcher;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)registerNotificationHandlers;
- (void)setEnabled:(BOOL)enabled;
- (void)setNotificationServiceGroup:(id)group;
- (void)updateRegistrations;
@end

@implementation HMDBulletinBoardNotification

- (HMDService)service
{
  WeakRetained = objc_loadWeakRetained(&self->_service);

  return WeakRetained;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  service = [(HMDBulletinBoardNotification *)self service];
  [coderCopy encodeConditionalObject:service forKey:*MEMORY[0x277CD2580]];

  if ([coderCopy hmd_isForLocalStore])
  {
    notificationServiceGroup = [(HMDBulletinBoardNotification *)self notificationServiceGroup];
    [coderCopy encodeObject:notificationServiceGroup forKey:@"HM.BulletinBoardNotificationServiceGroup"];
  }

  isEnabled = [(HMDBulletinBoardNotification *)self isEnabled];
  [coderCopy encodeBool:isEnabled forKey:*MEMORY[0x277CD20E0]];
  condition = [(HMDBulletinBoardNotification *)self condition];
  [coderCopy encodeObject:condition forKey:*MEMORY[0x277CD20D8]];
}

- (HMDBulletinBoardNotification)initWithCoder:(id)coder
{
  v21[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [(HMDBulletinBoardNotification *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CD2580]];
    objc_storeWeak(&v5->_service, v6);
    type = [v6 type];
    v8 = [HMDBulletinBoardNotification supportsBulletinNotificationGroup:type];

    if (v8)
    {
      v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.BulletinBoardNotificationServiceGroup"];
      notificationServiceGroup = v5->_notificationServiceGroup;
      v5->_notificationServiceGroup = v9;
    }

    v11 = *MEMORY[0x277CD20E0];
    if ([coderCopy containsValueForKey:*MEMORY[0x277CD20E0]])
    {
      v5->_enabled = [coderCopy decodeBoolForKey:v11];
    }

    else
    {
      type2 = [v6 type];
      v13 = [HMDBulletinBoard isBulletinSupportedForNonSecureCharacteristicType:0 serviceType:type2];

      if (v13)
      {
        type3 = [v6 type];
        v5->_enabled = [HMDBulletinBoard isCriticalNonSecureServiceType:type3];
      }
    }

    v15 = MEMORY[0x277CBEB98];
    v21[0] = objc_opt_class();
    v21[1] = objc_opt_class();
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
    v17 = [v15 setWithArray:v16];
    v18 = [coderCopy decodeObjectOfClasses:v17 forKey:*MEMORY[0x277CD20D8]];
    condition = v5->_condition;
    v5->_condition = v18;
  }

  return v5;
}

- (id)attributeDescriptions
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDBulletinBoardNotification isEnabled](self, "isEnabled")}];
  v5 = [v3 initWithName:@"Enabled" value:v4];
  v12[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  condition = [(HMDBulletinBoardNotification *)self condition];
  predicateFormat = [condition predicateFormat];
  v9 = [v6 initWithName:@"Condition" value:predicateFormat];
  v12[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];

  return v10;
}

- (NSUUID)messageTargetUUID
{
  v16[2] = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock_with_options();
  messageTargetUUID = self->_messageTargetUUID;
  if (!messageTargetUUID)
  {
    WeakRetained = objc_loadWeakRetained(&self->_service);
    v5 = MEMORY[0x277CCACA8];
    instanceID = [WeakRetained instanceID];
    v7 = [v5 stringWithFormat:@"%@", instanceID];
    v16[0] = v7;
    v16[1] = @"HM.BulletinBoardNotification";
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];

    v9 = MEMORY[0x277CCAD78];
    accessory = [WeakRetained accessory];
    uuid = [accessory uuid];
    v12 = [v9 hm_deriveUUIDFromBaseUUID:uuid identifierSalt:0 withSalts:v8];
    v13 = self->_messageTargetUUID;
    self->_messageTargetUUID = v12;

    messageTargetUUID = self->_messageTargetUUID;
  }

  v14 = messageTargetUUID;
  os_unfair_lock_unlock(&self->_lock);

  return v14;
}

- (id)logIdentifier
{
  service = [(HMDBulletinBoardNotification *)self service];
  v3 = MEMORY[0x277CCACA8];
  name = [service name];
  uuid = [service uuid];
  v6 = [v3 stringWithFormat:@"%@/%@", name, uuid];

  return v6;
}

- (void)_updateAccessoryBulletinNotificationManagerWithEnabled:(BOOL)enabled condition:(id)condition completion:(id)completion
{
  enabledCopy = enabled;
  v69 = *MEMORY[0x277D85DE8];
  conditionCopy = condition;
  completionCopy = completion;
  home = [(HMDBulletinBoardNotification *)self home];
  accessoryBulletinNotificationManager = [home accessoryBulletinNotificationManager];

  if (accessoryBulletinNotificationManager)
  {
    v40 = accessoryBulletinNotificationManager;
    v41 = completionCopy;
    v42 = conditionCopy;
    service = [(HMDBulletinBoardNotification *)self service];
    v11 = [HMDBulletinBoard bulletinSupportedCharacteristicsForService:?];
    v44 = [MEMORY[0x277CBEB58] set];
    v43 = [MEMORY[0x277CBEB58] set];
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    obj = v11;
    v12 = [obj countByEnumeratingWithState:&v60 objects:v68 count:16];
    selfCopy = self;
    if (v12)
    {
      v14 = v12;
      v15 = *v61;
      v49 = *MEMORY[0x277CFE840];
      v45 = *MEMORY[0x277CFE8D8];
      selfCopy2 = self;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v61 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v60 + 1) + 8 * i);
          service2 = [v17 service];
          notificationServiceGroup = [(HMDBulletinBoardNotification *)selfCopy notificationServiceGroup];
          cameraProfileUUIDs = [notificationServiceGroup cameraProfileUUIDs];
          if (![cameraProfileUUIDs count])
          {

LABEL_15:
            if (enabledCopy)
            {
              v28 = v43;
            }

            else
            {
              v28 = v44;
            }

            [v28 addObject:v17];
            goto LABEL_19;
          }

          type = [service2 type];
          if ([type isEqualToString:v49])
          {
          }

          else
          {
            type2 = [service2 type];
            v23 = [type2 isEqualToString:v45];

            selfCopy = selfCopy2;
            if (!v23)
            {
              goto LABEL_15;
            }
          }

          v24 = objc_autoreleasePoolPush();
          v25 = selfCopy;
          v26 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
          {
            v27 = HMFGetLogIdentifier();
            *buf = 138543618;
            v65 = v27;
            v66 = 2112;
            v67 = v17;
            _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_INFO, "%{public}@Skipping characteristic: %@ because the accessory has associated camera profile", buf, 0x16u);

            selfCopy = selfCopy2;
          }

          objc_autoreleasePoolPop(v24);
LABEL_19:
        }

        v14 = [obj countByEnumeratingWithState:&v60 objects:v68 count:16];
      }

      while (v14);
    }

    accessoryBulletinNotificationManager = v40;
    conditionCopy = v42;
    v29 = [v40 conditionsFromPredicate:v42];
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __108__HMDBulletinBoardNotification__updateAccessoryBulletinNotificationManagerWithEnabled_condition_completion___block_invoke;
    aBlock[3] = &unk_278685E70;
    v59 = enabledCopy;
    aBlock[4] = selfCopy;
    v54 = v42;
    completionCopy = v41;
    v30 = v41;
    v58 = v30;
    v31 = v40;
    v55 = v31;
    v32 = service;
    v56 = v32;
    v33 = v29;
    v57 = v33;
    v34 = _Block_copy(aBlock);
    if ([v43 count] || objc_msgSend(v44, "count"))
    {
      v50[0] = MEMORY[0x277D85DD0];
      v50[1] = 3221225472;
      v50[2] = __108__HMDBulletinBoardNotification__updateAccessoryBulletinNotificationManagerWithEnabled_condition_completion___block_invoke_2;
      v50[3] = &unk_278687AE8;
      v51 = v30;
      v52 = v34;
      [v31 updateRegistrationsWithEnabledCharacteristics:v43 disabledCharacteristics:v44 conditions:v33 completion:v50];
    }

    else
    {
      v34[2](v34);
    }
  }

  else
  {
    v35 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v37 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v38 = HMFGetLogIdentifier();
      *buf = 138543362;
      v65 = v38;
      _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_ERROR, "%{public}@Accessory Bulletin Notification Manager is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v35);
    v32 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    (*(completionCopy + 2))(completionCopy, v32);
  }
}

uint64_t __108__HMDBulletinBoardNotification__updateAccessoryBulletinNotificationManagerWithEnabled_condition_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2 == [*(a1 + 32) isEnabled] && (v3 = *(a1 + 40), objc_msgSend(*(a1 + 32), "condition"), v4 = objc_claimAutoreleasedReturnValue(), v4, v3 == v4))
  {
    v11 = *(*(a1 + 72) + 16);

    return v11();
  }

  else
  {
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    if (*(a1 + 80) == 1)
    {
      v7 = *(a1 + 64);
      v8 = *(a1 + 72);

      return [v5 enableBulletinForService:v6 conditions:v7 completion:v8];
    }

    else
    {
      v10 = *(a1 + 72);

      return [v5 disableBulletinForService:v6 completion:v10];
    }
  }
}

uint64_t __108__HMDBulletinBoardNotification__updateAccessoryBulletinNotificationManagerWithEnabled_condition_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*(a1 + 32) + 16))();
  }

  else
  {
    return (*(*(a1 + 40) + 16))();
  }
}

- (void)updateRegistrations
{
  isEnabled = [(HMDBulletinBoardNotification *)self isEnabled];
  condition = [(HMDBulletinBoardNotification *)self condition];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __51__HMDBulletinBoardNotification_updateRegistrations__block_invoke;
  v5[3] = &unk_27868A250;
  v5[4] = self;
  [(HMDBulletinBoardNotification *)self _updateAccessoryBulletinNotificationManagerWithEnabled:isEnabled condition:condition completion:v5];
}

void __51__HMDBulletinBoardNotification_updateRegistrations__block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = 138543618;
    v9 = v7;
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Updating bulletin notification manager from updateRegistrations finished with error: %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
}

- (id)dumpStateWithPrivacyLevel:(unint64_t)level
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v6 = MEMORY[0x277CCACA8];
  messageTargetUUID = [(HMDBulletinBoardNotification *)self messageTargetUUID];
  uUIDString = [messageTargetUUID UUIDString];
  [(HMDBulletinBoardNotification *)self isEnabled];
  v9 = HMFBooleanToString();
  v10 = [v6 stringWithFormat:@"uuid: %@, enabled: %@", uUIDString, v9];
  [dictionary setObject:v10 forKeyedSubscript:*MEMORY[0x277D0F170]];

  notificationServiceGroup = [(HMDBulletinBoardNotification *)self notificationServiceGroup];
  v12 = [notificationServiceGroup dumpStateWithPrivacyLevel:level];
  [dictionary setObject:v12 forKeyedSubscript:*MEMORY[0x277D0F070]];

  return dictionary;
}

- (void)_updateLocalSettingsWithEnabled:(BOOL)enabled condition:(id)condition forMessage:(id)message
{
  enabledCopy = enabled;
  v25[2] = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v24[0] = *MEMORY[0x277CD20E0];
  v9 = MEMORY[0x277CCABB0];
  conditionCopy = condition;
  v11 = [v9 numberWithBool:enabledCopy];
  v25[0] = v11;
  v24[1] = *MEMORY[0x277CD20D8];
  v12 = encodeRootObject();

  v25[1] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];

  v14 = objc_alloc(MEMORY[0x277D0F820]);
  messageTargetUUID = [(HMDBulletinBoardNotification *)self messageTargetUUID];
  v16 = [v14 initWithTarget:messageTargetUUID];

  v17 = [objc_alloc(MEMORY[0x277D0F818]) initWithName:@"kBulletinBoardNotificationUpdateNotificationKey" destination:v16 payload:v13];
  v18 = [v17 mutableCopy];
  identifier = [messageCopy identifier];
  [v18 setIdentifier:identifier];

  msgDispatcher = [(HMDBulletinBoardNotification *)self msgDispatcher];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __85__HMDBulletinBoardNotification__updateLocalSettingsWithEnabled_condition_forMessage___block_invoke;
  v22[3] = &unk_27868A250;
  v23 = messageCopy;
  v21 = messageCopy;
  [msgDispatcher sendMessage:v18 completionHandler:v22];
}

- (void)_handleBulletinBoardNotificationCommitRequest:(id)request
{
  v47 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  home = [(HMDBulletinBoardNotification *)self home];

  if (home)
  {
    home2 = [(HMDBulletinBoardNotification *)self home];
    bulletinNotificationsSupported = [home2 bulletinNotificationsSupported];

    if ((bulletinNotificationsSupported & 1) == 0)
    {
      v27 = objc_autoreleasePoolPush();
      selfCopy = self;
      v29 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = HMFGetLogIdentifier();
        *buf = 138543362;
        v42 = v30;
        _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_ERROR, "%{public}@Bulletin board notification cannot be modified when bulletin notifications are not supported.", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v27);
      v9 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
      [requestCopy respondWithError:v9];
      goto LABEL_22;
    }

    v8 = [requestCopy BOOLForKey:*MEMORY[0x277CD20E0]];
    v9 = [requestCopy predicateForKey:*MEMORY[0x277CD20D8]];
    v10 = v8 ^ [(HMDBulletinBoardNotification *)self isEnabled];
    if (v10 == 1)
    {
      v11 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v14 = v36 = v11;
        [(HMDBulletinBoardNotification *)selfCopy2 isEnabled];
        v15 = HMFBooleanToString();
        v16 = HMFBooleanToString();
        *buf = 138543874;
        v42 = v14;
        v43 = 2112;
        v44 = v15;
        v45 = 2112;
        v46 = v16;
        _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Updating bulletin board notification enabled from %@ to %@", buf, 0x20u);

        v11 = v36;
      }

      objc_autoreleasePoolPop(v11);
    }

    condition = [(HMDBulletinBoardNotification *)self condition];
    v18 = HMFEqualObjects();

    if (v18)
    {
      if ((v10 & 1) == 0)
      {
        v19 = objc_autoreleasePoolPush();
        selfCopy3 = self;
        v21 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          v22 = HMFGetLogIdentifier();
          *buf = 138543362;
          v42 = v22;
          _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Updating local bulletin board notification settings with existing values", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v19);
        [(HMDBulletinBoardNotification *)selfCopy3 _updateLocalSettingsWithEnabled:v8 condition:v9 forMessage:requestCopy];
        goto LABEL_22;
      }
    }

    else
    {
      v31 = objc_autoreleasePoolPush();
      selfCopy4 = self;
      v33 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        v34 = HMFGetLogIdentifier();
        condition2 = [(HMDBulletinBoardNotification *)selfCopy4 condition];
        *buf = 138543874;
        v42 = v34;
        v43 = 2112;
        v44 = condition2;
        v45 = 2112;
        v46 = v9;
        _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_INFO, "%{public}@Updating bulletin board notification condition from %@ to %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v31);
    }

    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __78__HMDBulletinBoardNotification__handleBulletinBoardNotificationCommitRequest___block_invoke;
    v37[3] = &unk_278684F70;
    v37[4] = self;
    v38 = requestCopy;
    v40 = v8;
    v39 = v9;
    [(HMDBulletinBoardNotification *)self _updateAccessoryBulletinNotificationManagerWithEnabled:v8 condition:v39 completion:v37];

LABEL_22:
    goto LABEL_23;
  }

  v23 = objc_autoreleasePoolPush();
  selfCopy5 = self;
  v25 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    v26 = HMFGetLogIdentifier();
    *buf = 138543362;
    v42 = v26;
    _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_ERROR, "%{public}@Ignoring message to disconnected object", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v23);
LABEL_23:
}

void __78__HMDBulletinBoardNotification__handleBulletinBoardNotificationCommitRequest___block_invoke(uint64_t a1, void *a2)
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
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@Error updating bulletin notification manager for message %@ : %@", &v15, 0x20u);
    }

    objc_autoreleasePoolPop(v4);
    v10 = *(a1 + 40);
    v11 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    [v10 respondWithError:v11];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = *(a1 + 40);
      v15 = 138543618;
      v16 = v12;
      v17 = 2112;
      v18 = v13;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Updated bulletin notification manager for message %@", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 32) setEnabled:*(a1 + 56)];
    [*(a1 + 32) setCondition:*(a1 + 48)];
    v14 = [MEMORY[0x277CCAB98] defaultCenter];
    [v14 postNotificationName:@"HMDBulletinBoardNotificationDidUpdateNotification" object:*(a1 + 32) userInfo:0];

    [*(a1 + 32) _updateLocalSettingsWithEnabled:*(a1 + 56) condition:*(a1 + 48) forMessage:*(a1 + 40)];
  }
}

- (void)configureBulletinNotification
{
  notificationServiceGroup = [(HMDBulletinBoardNotification *)self notificationServiceGroup];
  [notificationServiceGroup configureBulletinNotification];
}

- (HMDHome)home
{
  service = [(HMDBulletinBoardNotification *)self service];
  accessory = [service accessory];
  home = [accessory home];

  return home;
}

- (void)setNotificationServiceGroup:(id)group
{
  groupCopy = group;
  os_unfair_lock_lock_with_options();
  notificationServiceGroup = self->_notificationServiceGroup;
  self->_notificationServiceGroup = groupCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (HMDBulletinBoardNotificationServiceGroup)notificationServiceGroup
{
  os_unfair_lock_lock_with_options();
  v3 = self->_notificationServiceGroup;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setEnabled:(BOOL)enabled
{
  os_unfair_lock_lock_with_options();
  self->_enabled = enabled;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isEnabled
{
  os_unfair_lock_lock_with_options();
  enabled = self->_enabled;
  os_unfair_lock_unlock(&self->_lock);
  return enabled;
}

- (void)registerNotificationHandlers
{
  v7[1] = *MEMORY[0x277D85DE8];
  msgDispatcher = [(HMDBulletinBoardNotification *)self msgDispatcher];
  v4 = *MEMORY[0x277CD20D0];
  v5 = [HMDXPCMessagePolicy policyWithEntitlements:5];
  v7[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  [msgDispatcher registerForMessage:v4 receiver:self policies:v6 selector:sel__handleBulletinBoardNotificationCommitRequest_];
}

- (void)configureWithWorkQueue:(id)queue messageDispatcher:(id)dispatcher
{
  queueCopy = queue;
  dispatcherCopy = dispatcher;
  if (queueCopy)
  {
    v8 = dispatcherCopy;
    if (dispatcherCopy)
    {
      [(HMDBulletinBoardNotification *)self setWorkQueue:queueCopy];
      [(HMDBulletinBoardNotification *)self setMsgDispatcher:v8];
      notificationServiceGroup = [(HMDBulletinBoardNotification *)self notificationServiceGroup];
      [notificationServiceGroup configureWithWorkQueue:queueCopy];

      [(HMDBulletinBoardNotification *)self registerNotificationHandlers];
      isEnabled = [(HMDBulletinBoardNotification *)self isEnabled];
      condition = [(HMDBulletinBoardNotification *)self condition];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __73__HMDBulletinBoardNotification_configureWithWorkQueue_messageDispatcher___block_invoke;
      v14[3] = &unk_27868A250;
      v14[4] = self;
      [(HMDBulletinBoardNotification *)self _updateAccessoryBulletinNotificationManagerWithEnabled:isEnabled condition:condition completion:v14];

      return;
    }
  }

  else
  {
    _HMFPreconditionFailure();
  }

  v12 = _HMFPreconditionFailure();
  __73__HMDBulletinBoardNotification_configureWithWorkQueue_messageDispatcher___block_invoke(v12, v13);
}

void __73__HMDBulletinBoardNotification_configureWithWorkQueue_messageDispatcher___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = 138543618;
    v9 = v7;
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Updating bulletin notification manager during configure finished with error: %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
}

- (void)dealloc
{
  msgDispatcher = [(HMDBulletinBoardNotification *)self msgDispatcher];
  [msgDispatcher deregisterReceiver:self];

  v4.receiver = self;
  v4.super_class = HMDBulletinBoardNotification;
  [(HMDBulletinBoardNotification *)&v4 dealloc];
}

- (HMDBulletinBoardNotification)initWithService:(id)service enabled:(BOOL)enabled condition:(id)condition
{
  serviceCopy = service;
  conditionCopy = condition;
  v13.receiver = self;
  v13.super_class = HMDBulletinBoardNotification;
  v10 = [(HMDBulletinBoardNotification *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_enabled = enabled;
    objc_storeStrong(&v10->_condition, condition);
    objc_storeWeak(&v11->_service, serviceCopy);
  }

  return v11;
}

- (HMDBulletinBoardNotification)initWithService:(id)service
{
  serviceCopy = service;
  v5 = [(HMDBulletinBoardNotification *)self init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_service, serviceCopy);
    type = [serviceCopy type];
    v8 = [HMDBulletinBoardNotification supportsBulletinNotificationGroup:type];

    if (v8)
    {
      v9 = [[HMDBulletinBoardNotificationServiceGroup alloc] initWithBulletinBoardNotification:v6];
      notificationServiceGroup = v6->_notificationServiceGroup;
      v6->_notificationServiceGroup = v9;
    }

    type2 = [serviceCopy type];
    if ([HMDBulletinBoard isBulletinSupportedForNonSecureCharacteristicType:0 serviceType:type2])
    {
      type3 = [serviceCopy type];
      v13 = [HMDBulletinBoard isCriticalNonSecureServiceType:type3];

      if (!v13)
      {
        v6->_enabled = 0;
      }
    }

    else
    {
    }
  }

  return v6;
}

- (HMDBulletinBoardNotification)init
{
  v3.receiver = self;
  v3.super_class = HMDBulletinBoardNotification;
  result = [(HMDBulletinBoardNotification *)&v3 init];
  if (result)
  {
    result->_enabled = 1;
  }

  return result;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t15 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t15, &__block_literal_global_34685);
  }

  v3 = logCategory__hmf_once_v16;

  return v3;
}

void __43__HMDBulletinBoardNotification_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v16;
  logCategory__hmf_once_v16 = v0;
}

+ (BOOL)supportsBulletinNotificationGroup:(id)group
{
  v8[2] = *MEMORY[0x277D85DE8];
  groupCopy = group;
  if (+[HMDDeviceCapabilities supportsBulletinBoard])
  {
    v4 = *MEMORY[0x277CFE8D8];
    v8[0] = *MEMORY[0x277CFE840];
    v8[1] = v4;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];
    v6 = [v5 containsObject:groupCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end