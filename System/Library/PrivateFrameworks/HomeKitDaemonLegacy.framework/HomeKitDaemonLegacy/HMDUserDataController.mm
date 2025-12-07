@interface HMDUserDataController
+ (id)logCategory;
- (BOOL)_userListeningHistoryValueFromModels:(id)models;
- (BOOL)hasUserSeenRMVNewLanguageNotification;
- (BOOL)isRecognizeMyVoiceEnabled;
- (HMBModel)assistantAccessControlModelToReset;
- (HMDUserDataController)initWithDelegate:(id)delegate dataSource:(id)source queue:(id)queue userID:(id)d homeID:(id)iD sharedSettingsController:(id)controller privateSettingsController:(id)settingsController isCurrentUser:(BOOL)self0;
- (HMDUserDataController)initWithDelegate:(id)delegate dataSource:(id)source queue:(id)queue userID:(id)d homeID:(id)iD sharedSettingsController:(id)controller privateSettingsController:(id)settingsController timerCreator:(id)self0 isCurrentUser:(BOOL)self1;
- (HMDUserDataControllerDataSource)dataSource;
- (HMDUserDataControllerDelegate)delegate;
- (NSArray)assistantAccessControlAccessoriesToEncode;
- (NSArray)mediaContentProfileAccessControlAccessoriesToEncode;
- (NSArray)userListeningHistoryUpdateControlModelAccessoriesToEncode;
- (NSDictionary)privateSettingValuesByKeyPath;
- (NSDictionary)sharedSettingValuesByKeyPath;
- (id)_keyPathToModelFromKeyPath:(id)path models:(id)models;
- (id)_migrateUserListeningHistoryUpdateControlWithUserCurrentDataModel:(id)model transaction:(id)transaction settingModels:(id)models;
- (id)logIdentifier;
- (id)updateListeningHistoryModelToReset;
- (int64_t)sharedUserSettingsLogEventBackingStoreControllerRunState;
- (unint64_t)state;
- (void)_invalidatePrivateZoneFirstLoadTimer;
- (void)_invalidateSharedZoneFirstLoadTimer;
- (void)_migrateUserSupportsAutomaticHH2MigrationUserCurrentDataModel:(id)model transaction:(id)transaction;
- (void)_startPrivateZoneFirstLoadTimer;
- (void)_startSharedZoneFirstLoadTimer;
- (void)_startupPrivateZone;
- (void)_startupSharedZone;
- (void)assistantAccessControlModelRemoved:(id)removed;
- (void)assistantAccessControlModelUpdated:(id)updated previousModel:(id)model;
- (void)configure;
- (void)enableUserListeningHistoryForAccessory:(id)accessory;
- (void)encodeWithCoder:(id)coder;
- (void)eventDidInitializePrivateZone;
- (void)eventDidInitializeSharedZone;
- (void)handleAssistantAccessControlAccessoryUUIDsUpdated:(id)updated requireAuthenticationForSecureRequests:(BOOL)requests activityNotificationsEnabledForPersonalRequests:(BOOL)personalRequests completion:(id)completion;
- (void)handleMediaContentProfileAccessControlUpdatedAccessoryUUIDs:(id)ds completion:(id)completion;
- (void)handleRemovedAccessory:(id)accessory;
- (void)handleStartForZoneController:(id)controller;
- (void)handleUserListeningHistoryUpdateControlUpdatedAccessoryUUIDs:(id)ds completion:(id)completion;
- (void)initializePrivateZoneController:(id)controller userDataModel:(id)model;
- (void)initializeSharedZoneController:(id)controller userDataModel:(id)model;
- (void)mediaContentProfileAccessControlModelRemoved:(id)removed;
- (void)mediaContentProfileAccessControlModelUpdated:(id)updated previousModel:(id)model;
- (void)performFirstRunOperationsOnPrivateZoneController:(id)controller;
- (void)performFirstRunOperationsOnSharedZoneController:(id)controller;
- (void)setHasUserSeenRMVNewLanguageNotification:(BOOL)notification;
- (void)setState:(unint64_t)state;
- (void)sharedUserDataModelUpdated:(id)updated previousModel:(id)model;
- (void)timerDidFire:(id)fire;
- (void)updateSupportsHH2MigrationByOwnerManual:(BOOL)manual supportsHH2MigrationByOwnerAuto:(BOOL)auto completion:(id)completion;
- (void)userListeningHistoryUpdateControlModelRemoved:(id)removed;
- (void)userListeningHistoryUpdateControlModelUpdated:(id)updated previousModel:(id)model;
- (void)userSupportsAutomaticHH2MigrationModelRemoved:(id)removed;
- (void)userSupportsAutomaticHH2MigrationModelUpdated:(id)updated previousModel:(id)model;
@end

@implementation HMDUserDataController

- (HMDUserDataControllerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (HMDUserDataControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)logIdentifier
{
  userUUID = [(HMDUserDataController *)self userUUID];
  uUIDString = [userUUID UUIDString];

  return uUIDString;
}

- (void)timerDidFire:(id)fire
{
  fireCopy = fire;
  clientQueue = [(HMDUserDataController *)self clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__HMDUserDataController_timerDidFire___block_invoke;
  v7[3] = &unk_2797359B0;
  v8 = fireCopy;
  selfCopy = self;
  v6 = fireCopy;
  dispatch_async(clientQueue, v7);
}

void __38__HMDUserDataController_timerDidFire___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) sharedZoneFirstLoadTimer];
  LODWORD(v2) = [v2 isEqual:v3];

  if (v2)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 40);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v18 = 138543362;
      v19 = v7;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Attempting to recreate data in shared user data zone", &v18, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 40) _startupSharedZone];
  }

  else
  {
    v8 = *(a1 + 32);
    v9 = [*(a1 + 40) privateZoneFirstLoadTimer];
    v10 = [v8 isEqual:v9];

    v11 = objc_autoreleasePoolPush();
    v12 = *(a1 + 40);
    v13 = HMFGetOSLogHandle();
    v14 = v13;
    if (v10)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v15 = HMFGetLogIdentifier();
        v18 = 138543362;
        v19 = v15;
        _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Attempting to recreate data in private user data zone", &v18, 0xCu);
      }

      objc_autoreleasePoolPop(v11);
      [*(a1 + 40) _startupPrivateZone];
    }

    else
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v16 = HMFGetLogIdentifier();
        v17 = *(a1 + 32);
        v18 = 138543618;
        v19 = v16;
        v20 = 2112;
        v21 = v17;
        _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@Unexpected timer fired %@", &v18, 0x16u);
      }

      objc_autoreleasePoolPop(v11);
    }
  }
}

- (void)userSupportsAutomaticHH2MigrationModelRemoved:(id)removed
{
  v12 = *MEMORY[0x277D85DE8];
  removedCopy = removed;
  clientQueue = [(HMDUserDataController *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v9;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@User supports automatic HH2 migration was removed", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  [(HMDUserDataController *)selfCopy setSupportsHH2MigrationByOwnerManual:0];
}

- (void)userSupportsAutomaticHH2MigrationModelUpdated:(id)updated previousModel:(id)model
{
  v28 = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  modelCopy = model;
  clientQueue = [(HMDUserDataController *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  delegate = [(HMDUserDataController *)self delegate];
  supportsAutomaticHH2Migration = [updatedCopy supportsAutomaticHH2Migration];
  bOOLValue = [supportsAutomaticHH2Migration BOOLValue];

  if (bOOLValue != [(HMDUserDataController *)self supportsHH2MigrationByOwnerManual])
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v16 = HMFBooleanToString();
      v24 = 138543618;
      v25 = v15;
      v26 = 2114;
      v27 = v16;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Updating user supports automatic HH2 migration by owner manual to %{public}@", &v24, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    [(HMDUserDataController *)selfCopy setSupportsHH2MigrationByOwnerManual:bOOLValue];
    [delegate userDataControllerDidUpdateSupportsAutomaticHH2Migration:selfCopy];
  }

  supportsHH2MigrationByOwnerAuto = [updatedCopy supportsHH2MigrationByOwnerAuto];
  bOOLValue2 = [supportsHH2MigrationByOwnerAuto BOOLValue];

  if (bOOLValue2 != [(HMDUserDataController *)self supportsHH2MigrationByOwnerAuto])
  {
    v19 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      v23 = HMFBooleanToString();
      v24 = 138543618;
      v25 = v22;
      v26 = 2114;
      v27 = v23;
      _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_INFO, "%{public}@Updating user supports automatic HH2 migration by owner auto to %{public}@", &v24, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
    [(HMDUserDataController *)selfCopy2 setSupportsHH2MigrationByOwnerAuto:bOOLValue2];
    [delegate userDataControllerDidUpdateSupportsAutomaticHH2Migration:selfCopy2];
  }
}

- (void)userListeningHistoryUpdateControlModelRemoved:(id)removed
{
  v13 = *MEMORY[0x277D85DE8];
  removedCopy = removed;
  clientQueue = [(HMDUserDataController *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v9;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@user update listening history access control was removed", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [MEMORY[0x277CBEB58] set];
  [(HMDUserDataController *)selfCopy setUserListeningHistoryUpdateControlModelAccessories:v10];
}

- (void)userListeningHistoryUpdateControlModelUpdated:(id)updated previousModel:(id)model
{
  v23 = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  modelCopy = model;
  clientQueue = [(HMDUserDataController *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  accessories = [updatedCopy accessories];
  if (accessories)
  {
    [updatedCopy accessories];
  }

  else
  {
    [MEMORY[0x277CBEA60] array];
  }
  v10 = ;

  v11 = [MEMORY[0x277CBEB58] setWithArray:v10];
  userListeningHistoryUpdateControlModelAccessories = [(HMDUserDataController *)self userListeningHistoryUpdateControlModelAccessories];
  v13 = [userListeningHistoryUpdateControlModelAccessories isEqualToSet:v11];

  if ((v13 & 1) == 0)
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      v19 = 138543618;
      v20 = v17;
      v21 = 2112;
      v22 = v11;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@Updating listening history update accessories to %@", &v19, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    [(HMDUserDataController *)selfCopy setUserListeningHistoryUpdateControlModelAccessories:v11];
    delegate = [(HMDUserDataController *)selfCopy delegate];
    [delegate userDataControllerDidUpdateUserListeningHistoryUpdateControl:selfCopy];
  }
}

- (void)mediaContentProfileAccessControlModelRemoved:(id)removed
{
  v13 = *MEMORY[0x277D85DE8];
  removedCopy = removed;
  clientQueue = [(HMDUserDataController *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v9;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Media content profile access control was removed", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [MEMORY[0x277CBEB58] set];
  [(HMDUserDataController *)selfCopy setMediaContentProfileAccessControlAccessories:v10];
}

- (void)mediaContentProfileAccessControlModelUpdated:(id)updated previousModel:(id)model
{
  v23 = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  modelCopy = model;
  clientQueue = [(HMDUserDataController *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  v9 = MEMORY[0x277CBEB58];
  accessories = [updatedCopy accessories];
  v11 = [v9 setWithArray:accessories];

  mediaContentProfileAccessControlAccessories = [(HMDUserDataController *)self mediaContentProfileAccessControlAccessories];
  v13 = [mediaContentProfileAccessControlAccessories isEqualToSet:v11];

  if ((v13 & 1) == 0)
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      v19 = 138543618;
      v20 = v17;
      v21 = 2112;
      v22 = v11;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@Updating media content profile access control to %@", &v19, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    [(HMDUserDataController *)selfCopy setMediaContentProfileAccessControlAccessories:v11];
    delegate = [(HMDUserDataController *)selfCopy delegate];
    [delegate userDataControllerDidUpdateMediaContentProfile:selfCopy];
  }
}

- (int64_t)sharedUserSettingsLogEventBackingStoreControllerRunState
{
  delegate = [(HMDUserDataController *)self delegate];
  v4 = [delegate sharedZoneControllerForUserDataController:self];
  logEventRunState = [v4 logEventRunState];

  return logEventRunState;
}

- (void)setHasUserSeenRMVNewLanguageNotification:(BOOL)notification
{
  notificationCopy = notification;
  v22 = *MEMORY[0x277D85DE8];
  privateSettingsController = [(HMDUserDataController *)self privateSettingsController];
  v6 = privateSettingsController;
  if (privateSettingsController)
  {
    v7 = [privateSettingsController settingForKeyPath:@"root.home.hasUserSeenRMVNewLanguageNotification"];
    if (v7)
    {
      v8 = objc_alloc(MEMORY[0x277CD1DD0]);
      v9 = [MEMORY[0x277CCABB0] numberWithBool:notificationCopy];
      v10 = [v8 initNumberSettingWithValue:v9];

      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __66__HMDUserDataController_setHasUserSeenRMVNewLanguageNotification___block_invoke;
      v19[3] = &unk_2797359D8;
      v19[4] = self;
      [v6 updateWithValue:v10 onSetting:v7 completion:v19];
    }

    else
    {
      v15 = objc_autoreleasePoolPush();
      selfCopy = self;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = HMFGetLogIdentifier();
        *buf = 138543362;
        v21 = v18;
        _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@Failed to setHasUserSeenRMVNewLanguageNotification because the setting is nil", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v15);
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
      *buf = 138543362;
      v21 = v14;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to setHasUserSeenRMVNewLanguageNotification because privateSettingsController is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
  }
}

void __66__HMDUserDataController_setHasUserSeenRMVNewLanguageNotification___block_invoke(uint64_t a1, void *a2)
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
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Updated hasUserSeenRMVNewLanguageNotification value with error: %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
}

- (BOOL)hasUserSeenRMVNewLanguageNotification
{
  v20 = *MEMORY[0x277D85DE8];
  privateSettingsController = [(HMDUserDataController *)self privateSettingsController];
  v4 = privateSettingsController;
  if (privateSettingsController)
  {
    v5 = [privateSettingsController settingForKeyPath:@"root.home.hasUserSeenRMVNewLanguageNotification"];
    v6 = v5;
    if (v5)
    {
      value = [v5 value];
      bOOLValue = [value BOOLValue];
    }

    else
    {
      v13 = objc_autoreleasePoolPush();
      selfCopy = self;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = HMFGetLogIdentifier();
        v18 = 138543362;
        v19 = v16;
        _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch hasUserSeenRMVNewLanguageNotification because the setting is nil", &v18, 0xCu);
      }

      objc_autoreleasePoolPop(v13);
      bOOLValue = 1;
    }
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v18 = 138543362;
      v19 = v12;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch hasUserSeenRMVNewLanguageNotification because privateSettingsController is nil", &v18, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (BOOL)isRecognizeMyVoiceEnabled
{
  v20 = *MEMORY[0x277D85DE8];
  sharedSettingsController = [(HMDUserDataController *)self sharedSettingsController];
  v4 = sharedSettingsController;
  if (sharedSettingsController)
  {
    v5 = [sharedSettingsController settingForKeyPath:@"root.siri.identifyVoice"];
    v6 = v5;
    if (v5)
    {
      value = [v5 value];
      bOOLValue = [value BOOLValue];
    }

    else
    {
      v13 = objc_autoreleasePoolPush();
      selfCopy = self;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = HMFGetLogIdentifier();
        v18 = 138543362;
        v19 = v16;
        _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch isRecognizeMyVoiceEnabled because the setting is nil", &v18, 0xCu);
      }

      objc_autoreleasePoolPop(v13);
      bOOLValue = 0;
    }
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v18 = 138543362;
      v19 = v12;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch isRecognizeMyVoiceEnabled because privateSettingsController is nil", &v18, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (NSDictionary)privateSettingValuesByKeyPath
{
  privateSettingsController = [(HMDUserDataController *)self privateSettingsController];

  if (privateSettingsController)
  {
    privateSettingsController2 = [(HMDUserDataController *)self privateSettingsController];
    v5 = [privateSettingsController2 settingValuesByKeyPathWithPrefix:@"private"];
  }

  else
  {
    v5 = MEMORY[0x277CBEC10];
  }

  return v5;
}

- (NSDictionary)sharedSettingValuesByKeyPath
{
  sharedSettingsController = [(HMDUserDataController *)self sharedSettingsController];

  if (sharedSettingsController)
  {
    sharedSettingsController2 = [(HMDUserDataController *)self sharedSettingsController];
    v5 = [sharedSettingsController2 settingValuesByKeyPathWithPrefix:@"shared"];
  }

  else
  {
    v5 = MEMORY[0x277CBEC10];
  }

  return v5;
}

- (void)assistantAccessControlModelRemoved:(id)removed
{
  v12 = *MEMORY[0x277D85DE8];
  removedCopy = removed;
  clientQueue = [(HMDUserDataController *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v9;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Assistant access control was removed", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
}

- (void)assistantAccessControlModelUpdated:(id)updated previousModel:(id)model
{
  v34 = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  modelCopy = model;
  clientQueue = [(HMDUserDataController *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  if ([updatedCopy hmbPropertyWasSet:@"activityNotificationsEnabledForPersonalRequests"])
  {
    activityNotificationsEnabledForPersonalRequests = [updatedCopy activityNotificationsEnabledForPersonalRequests];
    bOOLValue = [activityNotificationsEnabledForPersonalRequests BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  requiresAuthenticationForSecureRequests = [updatedCopy requiresAuthenticationForSecureRequests];
  bOOLValue2 = [requiresAuthenticationForSecureRequests BOOLValue];

  v13 = [MEMORY[0x277CBEB58] set];
  accessoryUUIDs = [updatedCopy accessoryUUIDs];
  [v13 na_safeAddObjectsFromArray:accessoryUUIDs];

  siriEndpointAccessoryUUIDs = [updatedCopy siriEndpointAccessoryUUIDs];
  [v13 na_safeAddObjectsFromArray:siriEndpointAccessoryUUIDs];

  assistantAccessControlAccessoryUUIDs = [(HMDUserDataController *)self assistantAccessControlAccessoryUUIDs];
  if (![assistantAccessControlAccessoryUUIDs isEqualToSet:v13] || bOOLValue != -[HMDUserDataController assistantAccessControlActivityNotificationsEnabledForPersonalRequests](self, "assistantAccessControlActivityNotificationsEnabledForPersonalRequests"))
  {

LABEL_7:
    v17 = objc_autoreleasePoolPush();
    selfCopy = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      requiresAuthenticationForSecureRequests2 = [updatedCopy requiresAuthenticationForSecureRequests];
      v28 = 138543874;
      v29 = v20;
      v30 = 2112;
      v31 = requiresAuthenticationForSecureRequests2;
      v32 = 2112;
      v33 = v13;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@Updating assistant access control on zone update to require auth: %@, accessories:%@", &v28, 0x20u);
    }

    objc_autoreleasePoolPop(v17);
    [(HMDUserDataController *)selfCopy setAssistantAccessControlAccessoryUUIDs:v13];
    [(HMDUserDataController *)selfCopy setAssistantAccessControlRequiresAuthenticationForSecureRequests:bOOLValue2];
    [(HMDUserDataController *)selfCopy setAssistantAccessControlActivityNotificationsEnabledForPersonalRequests:bOOLValue];
    delegate = [(HMDUserDataController *)selfCopy delegate];
    [delegate userDataControllerDidUpdateAssistantAccessControl:selfCopy];

    goto LABEL_10;
  }

  assistantAccessControlRequiresAuthenticationForSecureRequests = [(HMDUserDataController *)self assistantAccessControlRequiresAuthenticationForSecureRequests];

  if (bOOLValue2 != assistantAccessControlRequiresAuthenticationForSecureRequests)
  {
    goto LABEL_7;
  }

  v24 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v26 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    v27 = HMFGetLogIdentifier();
    v28 = 138543618;
    v29 = v27;
    v30 = 2112;
    v31 = updatedCopy;
    _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_INFO, "%{public}@Model in zone update has no changes %@", &v28, 0x16u);
  }

  objc_autoreleasePoolPop(v24);
LABEL_10:
}

- (void)sharedUserDataModelUpdated:(id)updated previousModel:(id)model
{
  v82 = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  modelCopy = model;
  clientQueue = [(HMDUserDataController *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  userListeningHistoryUpdateControlModelUUID = [(HMDUserDataController *)self userListeningHistoryUpdateControlModelUUID];
  userListeningHistoryUpdateControlModelUUID2 = [updatedCopy userListeningHistoryUpdateControlModelUUID];
  v11 = [userListeningHistoryUpdateControlModelUUID isEqual:userListeningHistoryUpdateControlModelUUID2];

  if (v11)
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543362;
      v77 = v15;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@User Shared model changed, but no diff in ULH uuid", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
  }

  else
  {
    v72 = modelCopy;
    delegate = [(HMDUserDataController *)self delegate];
    v16 = [delegate sharedZoneControllerForUserDataController:self];
    v17 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      userListeningHistoryUpdateControlModelUUID3 = [(HMDUserDataController *)selfCopy2 userListeningHistoryUpdateControlModelUUID];
      userListeningHistoryUpdateControlModelUUID4 = [updatedCopy userListeningHistoryUpdateControlModelUUID];
      *buf = 138543874;
      v77 = v20;
      v78 = 2112;
      v79 = userListeningHistoryUpdateControlModelUUID3;
      v80 = 2112;
      v81 = userListeningHistoryUpdateControlModelUUID4;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@Registering and Loading user listening history update since the UUID flipped from =%@, to =%@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v17);
    userListeningHistoryUpdateControlModelUUID5 = [updatedCopy userListeningHistoryUpdateControlModelUUID];
    [(HMDUserDataController *)selfCopy2 setUserListeningHistoryUpdateControlModelUUID:userListeningHistoryUpdateControlModelUUID5];

    userListeningHistoryUpdateControlModelUUID6 = [(HMDUserDataController *)selfCopy2 userListeningHistoryUpdateControlModelUUID];
    v75 = 0;
    v25 = [v16 loadUserListeningHistoryUpdateControlModelWithModelID:userListeningHistoryUpdateControlModelUUID6 error:&v75];
    v26 = v75;

    userListeningHistoryUpdateControlModelUUID7 = [(HMDUserDataController *)selfCopy2 userListeningHistoryUpdateControlModelUUID];
    [v16 registerForUserListeningHistoryUpdateControlModelUpdates:selfCopy2 modelID:userListeningHistoryUpdateControlModelUUID7];

    v28 = objc_autoreleasePoolPush();
    v29 = selfCopy2;
    v30 = HMFGetOSLogHandle();
    v31 = v30;
    if (v25)
    {
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        v32 = HMFGetLogIdentifier();
        accessories = [v25 accessories];
        *buf = 138543618;
        v77 = v32;
        v78 = 2112;
        v79 = accessories;
        _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_INFO, "%{public}@Loaded user listening history update accessories %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v28);
      v34 = MEMORY[0x277CBEB58];
      accessories2 = [v25 accessories];
      v36 = [v34 setWithArray:accessories2];
      [(HMDUserDataController *)v29 setUserListeningHistoryUpdateControlModelAccessories:v36];

      v37 = delegate;
      [delegate userDataControllerDidUpdateUserListeningHistoryUpdateControl:v29];
    }

    else
    {
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v38 = HMFGetLogIdentifier();
        *buf = 138543618;
        v77 = v38;
        v78 = 2112;
        v79 = v26;
        _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_ERROR, "%{public}@Unable to load update listening history accessories %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v28);
      v37 = delegate;
    }

    modelCopy = v72;
  }

  supportsAutomaticHH2MigrationModelUUID = [(HMDUserDataController *)self supportsAutomaticHH2MigrationModelUUID];
  supportsAutomaticHH2MigrationModelUUID2 = [updatedCopy supportsAutomaticHH2MigrationModelUUID];
  v41 = [supportsAutomaticHH2MigrationModelUUID isEqual:supportsAutomaticHH2MigrationModelUUID2];

  if (v41)
  {
    v42 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v44 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
    {
      v45 = HMFGetLogIdentifier();
      *buf = 138543362;
      v77 = v45;
      _os_log_impl(&dword_2531F8000, v44, OS_LOG_TYPE_INFO, "%{public}@User Shared model changed, but no diff in USAHH2M uuid", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v42);
  }

  else
  {
    delegate2 = [(HMDUserDataController *)self delegate];
    v47 = [delegate2 sharedZoneControllerForUserDataController:self];
    v48 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v50 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
    {
      v51 = HMFGetLogIdentifier();
      supportsAutomaticHH2MigrationModelUUID3 = [(HMDUserDataController *)selfCopy4 supportsAutomaticHH2MigrationModelUUID];
      supportsAutomaticHH2MigrationModelUUID4 = [updatedCopy supportsAutomaticHH2MigrationModelUUID];
      *buf = 138543874;
      v77 = v51;
      v78 = 2112;
      v79 = supportsAutomaticHH2MigrationModelUUID3;
      v80 = 2112;
      v81 = supportsAutomaticHH2MigrationModelUUID4;
      _os_log_impl(&dword_2531F8000, v50, OS_LOG_TYPE_INFO, "%{public}@Registering and Loading user support automatic HH2 migration UUID flipped from =%@, to =%@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v48);
    supportsAutomaticHH2MigrationModelUUID5 = [updatedCopy supportsAutomaticHH2MigrationModelUUID];
    [(HMDUserDataController *)selfCopy4 setSupportsAutomaticHH2MigrationModelUUID:supportsAutomaticHH2MigrationModelUUID5];

    supportsAutomaticHH2MigrationModelUUID6 = [(HMDUserDataController *)selfCopy4 supportsAutomaticHH2MigrationModelUUID];
    v74 = 0;
    v56 = [v47 loadUserSupportsAutomaticHH2MigrationModelWithModelID:supportsAutomaticHH2MigrationModelUUID6 error:&v74];
    v57 = v74;

    supportsAutomaticHH2MigrationModelUUID7 = [(HMDUserDataController *)selfCopy4 supportsAutomaticHH2MigrationModelUUID];
    [v47 registerForUserSupportsAutomaticHH2MigrationModelUpdates:selfCopy4 modelID:supportsAutomaticHH2MigrationModelUUID7];

    if (v56)
    {
      supportsAutomaticHH2Migration = [v56 supportsAutomaticHH2Migration];
      -[HMDUserDataController setSupportsHH2MigrationByOwnerManual:](selfCopy4, "setSupportsHH2MigrationByOwnerManual:", [supportsAutomaticHH2Migration BOOLValue]);

      supportsHH2MigrationByOwnerAuto = [v56 supportsHH2MigrationByOwnerAuto];
      -[HMDUserDataController setSupportsHH2MigrationByOwnerAuto:](selfCopy4, "setSupportsHH2MigrationByOwnerAuto:", [supportsHH2MigrationByOwnerAuto BOOLValue]);

      v61 = objc_autoreleasePoolPush();
      v62 = selfCopy4;
      v63 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v64 = v73 = modelCopy;
        [(HMDUserDataController *)v62 supportsHH2MigrationByOwnerManual];
        HMFBooleanToString();
        v71 = v57;
        v66 = v65 = delegate2;
        [(HMDUserDataController *)v62 supportsHH2MigrationByOwnerAuto];
        v67 = HMFBooleanToString();
        *buf = 138543874;
        v77 = v64;
        v78 = 2114;
        v79 = v66;
        v80 = 2114;
        v81 = v67;
        _os_log_impl(&dword_2531F8000, v63, OS_LOG_TYPE_INFO, "%{public}@Loaded user supports automatic HH2 migration model by owner manual = %{public}@, by owner auto = %{public}@", buf, 0x20u);

        delegate2 = v65;
        v57 = v71;

        modelCopy = v73;
      }
    }

    else
    {
      v61 = objc_autoreleasePoolPush();
      v68 = selfCopy4;
      v63 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
      {
        v69 = HMFGetLogIdentifier();
        *buf = 138543618;
        v77 = v69;
        v78 = 2112;
        v79 = v57;
        _os_log_impl(&dword_2531F8000, v63, OS_LOG_TYPE_ERROR, "%{public}@Unable to load user supports automatic HH2 migration model %@", buf, 0x16u);
      }
    }

    objc_autoreleasePoolPop(v61);
  }
}

- (id)updateListeningHistoryModelToReset
{
  userListeningHistoryUpdateControlModelUUID = [(HMDUserDataController *)self userListeningHistoryUpdateControlModelUUID];

  if (userListeningHistoryUpdateControlModelUUID)
  {
    v4 = [HMDUserListeningHistoryUpdateControlModel alloc];
    userListeningHistoryUpdateControlModelUUID2 = [(HMDUserDataController *)self userListeningHistoryUpdateControlModelUUID];
    userUUID = [(HMDUserDataController *)self userUUID];
    v7 = [(HMBModel *)v4 initWithModelID:userListeningHistoryUpdateControlModelUUID2 parentModelID:userUUID];

    [(HMDUserListeningHistoryUpdateControlModel *)v7 setAccessories:MEMORY[0x277CBEBF8]];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (HMBModel)assistantAccessControlModelToReset
{
  assistantAccessControlModelUUID = [(HMDUserDataController *)self assistantAccessControlModelUUID];

  if (assistantAccessControlModelUUID)
  {
    v4 = [HMDAssistantAccessControlModelV2 alloc];
    assistantAccessControlModelUUID2 = [(HMDUserDataController *)self assistantAccessControlModelUUID];
    userUUID = [(HMDUserDataController *)self userUUID];
    v7 = [(HMBModel *)v4 initWithModelID:assistantAccessControlModelUUID2 parentModelID:userUUID];

    v8 = MEMORY[0x277CBEBF8];
    [(HMDAssistantAccessControlModelV2 *)v7 setAccessoryUUIDs:MEMORY[0x277CBEBF8]];
    [(HMDAssistantAccessControlModelV2 *)v7 setSiriEndpointAccessoryUUIDs:v8];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)handleRemovedAccessory:(id)accessory
{
  accessoryCopy = accessory;
  clientQueue = [(HMDUserDataController *)self clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__HMDUserDataController_handleRemovedAccessory___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = accessoryCopy;
  v6 = accessoryCopy;
  dispatch_async(clientQueue, v7);
}

void __48__HMDUserDataController_handleRemovedAccessory___block_invoke(uint64_t a1)
{
  v79 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) delegate];
  v3 = [*(a1 + 32) assistantAccessControlAccessoryUUIDs];
  v4 = [v3 containsObject:*(a1 + 40)];

  v5 = &unk_281523000;
  if (v4)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 32);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v10 = *(a1 + 40);
      *buf = 138543618;
      v76 = v9;
      v77 = 2112;
      v78 = v10;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Found removed accessory %@ in assistant access control list removing.", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    v11 = [HMDAssistantAccessControlModelV2 alloc];
    v12 = [*(a1 + 32) assistantAccessControlModelUUID];
    v13 = [*(a1 + 32) userUUID];
    v14 = [(HMBModel *)v11 initWithModelID:v12 parentModelID:v13];

    v15 = [*(a1 + 32) assistantAccessControlAccessoryUUIDs];
    v16 = MEMORY[0x277CBEB98];
    v74 = *(a1 + 40);
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v74 count:1];
    v18 = [v16 setWithArray:v17];
    v19 = [v15 na_setByRemovingObjectsFromSet:v18];
    v20 = [v19 allObjects];

    v73[0] = MEMORY[0x277D85DD0];
    v73[1] = 3221225472;
    v73[2] = __48__HMDUserDataController_handleRemovedAccessory___block_invoke_171;
    v73[3] = &unk_2797358A0;
    v73[4] = *(a1 + 32);
    v21 = [v20 na_filter:v73];
    [(HMDAssistantAccessControlModelV2 *)v14 setAccessoryUUIDs:v21];

    v70[0] = MEMORY[0x277D85DD0];
    v70[1] = 3221225472;
    v70[2] = __48__HMDUserDataController_handleRemovedAccessory___block_invoke_2;
    v70[3] = &unk_27972E788;
    v22 = v2;
    v23 = *(a1 + 32);
    v71 = v22;
    v72 = v23;
    v24 = [v20 na_filter:v70];
    [(HMDAssistantAccessControlModelV2 *)v14 setSiriEndpointAccessoryUUIDs:v24];

    v25 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 32), "assistantAccessControlRequiresAuthenticationForSecureRequests")}];
    [(HMDAssistantAccessControlModelV2 *)v14 setRequiresAuthenticationForSecureRequests:v25];

    v26 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 32), "assistantAccessControlActivityNotificationsEnabledForPersonalRequests")}];
    [(HMDAssistantAccessControlModelV2 *)v14 setActivityNotificationsEnabledForPersonalRequests:v26];

    v27 = [v22 sharedZoneControllerForUserDataController:*(a1 + 32)];
    v5 = &unk_281523000;
    v28 = [[HMDSettingTransaction alloc] initWithTransactionLabel:@"Remove accessory from user assistant access control"];
    [(HMDSettingTransaction *)v28 addModelToBeUpdated:v14];
    v68[0] = MEMORY[0x277D85DD0];
    v68[1] = 3221225472;
    v68[2] = __48__HMDUserDataController_handleRemovedAccessory___block_invoke_3;
    v68[3] = &unk_2797358C8;
    v29 = *(a1 + 40);
    v68[4] = *(a1 + 32);
    v69 = v29;
    [v27 runTransaction:v28 waitForCloudPush:0 completion:v68];
  }

  v30 = [*(a1 + 32) mediaContentProfileAccessControlAccessories];
  v31 = [v30 containsObject:*(a1 + 40)];

  if (v31)
  {
    v32 = objc_autoreleasePoolPush();
    v33 = *(a1 + 32);
    v34 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      v35 = HMFGetLogIdentifier();
      v36 = *(a1 + 40);
      *buf = 138543618;
      v76 = v35;
      v77 = 2112;
      v78 = v36;
      _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_INFO, "%{public}@Found removed accessory %@ in media content profile list removing.", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v32);
    v37 = [HMDMediaContentProfileAccessControlModel alloc];
    v38 = [*(a1 + 32) mediaContentProfileAccessControlModelUUID];
    v39 = [*(a1 + 32) userUUID];
    v40 = [(HMBModel *)v37 initWithModelID:v38 parentModelID:v39];

    v41 = [*(a1 + 32) mediaContentProfileAccessControlAccessories];
    v42 = [v41 mutableCopy];

    [v42 removeObject:*(a1 + 40)];
    v43 = [v42 allObjects];
    [(HMDMediaContentProfileAccessControlModel *)v40 setAccessories:v43];

    v44 = [v2 sharedZoneControllerForUserDataController:*(a1 + 32)];
    v45 = [objc_alloc((v5 + 2824)) initWithTransactionLabel:@"Remove accessory from media content profile access control"];
    [v45 addModelToBeUpdated:v40];
    v66[0] = MEMORY[0x277D85DD0];
    v66[1] = 3221225472;
    v66[2] = __48__HMDUserDataController_handleRemovedAccessory___block_invoke_178;
    v66[3] = &unk_2797358C8;
    v46 = *(a1 + 40);
    v66[4] = *(a1 + 32);
    v67 = v46;
    [v44 runTransaction:v45 waitForCloudPush:0 completion:v66];
  }

  v47 = [*(a1 + 32) userListeningHistoryUpdateControlModelAccessories];
  v48 = [v47 containsObject:*(a1 + 40)];

  if (v48)
  {
    v49 = objc_autoreleasePoolPush();
    v50 = *(a1 + 32);
    v51 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
    {
      v52 = HMFGetLogIdentifier();
      v53 = *(a1 + 40);
      *buf = 138543618;
      v76 = v52;
      v77 = 2112;
      v78 = v53;
      _os_log_impl(&dword_2531F8000, v51, OS_LOG_TYPE_INFO, "%{public}@Found removed accessory %@ in update listening history list removing.", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v49);
    v54 = [HMDUserListeningHistoryUpdateControlModel alloc];
    v55 = [*(a1 + 32) userListeningHistoryUpdateControlModelUUID];
    v56 = [*(a1 + 32) userUUID];
    v57 = [(HMBModel *)v54 initWithModelID:v55 parentModelID:v56];

    v58 = [*(a1 + 32) userListeningHistoryUpdateControlModelAccessories];
    v59 = [v58 mutableCopy];

    [v59 removeObject:*(a1 + 40)];
    v60 = [v59 allObjects];
    [(HMDUserListeningHistoryUpdateControlModel *)v57 setAccessories:v60];

    v61 = [v2 sharedZoneControllerForUserDataController:*(a1 + 32)];
    v62 = [objc_alloc((v5 + 2824)) initWithTransactionLabel:@"Remove accessory from update listening history control"];
    [v62 addModelToBeUpdated:v57];
    v64[0] = MEMORY[0x277D85DD0];
    v64[1] = 3221225472;
    v64[2] = __48__HMDUserDataController_handleRemovedAccessory___block_invoke_182;
    v64[3] = &unk_2797358C8;
    v63 = *(a1 + 40);
    v64[4] = *(a1 + 32);
    v65 = v63;
    [v61 runTransaction:v62 waitForCloudPush:0 completion:v64];
  }
}

uint64_t __48__HMDUserDataController_handleRemovedAccessory___block_invoke_171(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 delegate];
  v6 = [v5 userDataController:*(a1 + 32) isAppleMediaAccessory:v4];

  return v6;
}

void __48__HMDUserDataController_handleRemovedAccessory___block_invoke_3(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = HMFGetLogIdentifier();
    v8 = *(a1 + 40);
    v9 = 138543618;
    v10 = v7;
    v11 = 2112;
    v12 = v8;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Removed accessory %@ from assistant access control list on accessory removal.", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
}

void __48__HMDUserDataController_handleRemovedAccessory___block_invoke_178(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = HMFGetLogIdentifier();
    v8 = *(a1 + 40);
    v9 = 138543618;
    v10 = v7;
    v11 = 2112;
    v12 = v8;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Removed accessory %@ from media content profile access control list on accessory removal.", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
}

void __48__HMDUserDataController_handleRemovedAccessory___block_invoke_182(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = HMFGetLogIdentifier();
    v8 = *(a1 + 40);
    v9 = 138543618;
    v10 = v7;
    v11 = 2112;
    v12 = v8;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Removed accessory %@ from ULH list on accessory removal.", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
}

- (void)updateSupportsHH2MigrationByOwnerManual:(BOOL)manual supportsHH2MigrationByOwnerAuto:(BOOL)auto completion:(id)completion
{
  autoCopy = auto;
  manualCopy = manual;
  v49 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  if ([(HMDUserDataController *)self isInitialized])
  {
    delegate = [(HMDUserDataController *)self delegate];
    v10 = [HMDUserSupportsAutomaticHH2MigrationModel alloc];
    supportsAutomaticHH2MigrationModelUUID = [(HMDUserDataController *)self supportsAutomaticHH2MigrationModelUUID];
    userUUID = [(HMDUserDataController *)self userUUID];
    v13 = [(HMBModel *)v10 initWithModelID:supportsAutomaticHH2MigrationModelUUID parentModelID:userUUID];

    v14 = [(HMDUserDataController *)self supportsHH2MigrationByOwnerManual]^ manualCopy;
    if (v14)
    {
      v15 = [MEMORY[0x277CCABB0] numberWithBool:manualCopy];
      [(HMDUserSupportsAutomaticHH2MigrationModel *)v13 setSupportsAutomaticHH2Migration:v15];
    }

    else
    {
      v20 = objc_autoreleasePoolPush();
      selfCopy = self;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v23 = v41 = v13;
        HMFBooleanToString();
        v24 = v39 = v20;
        *buf = 138543618;
        v44 = v23;
        v45 = 2112;
        v46 = v24;
        _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@Supports automatic HH2 migration by owner manual is already set to %@", buf, 0x16u);

        v20 = v39;
        v13 = v41;
      }

      objc_autoreleasePoolPop(v20);
    }

    if ([(HMDUserDataController *)self supportsHH2MigrationByOwnerAuto]== autoCopy)
    {
      v26 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v29 = v40 = v26;
        HMFBooleanToString();
        v30 = v42 = v13;
        *buf = 138543618;
        v44 = v29;
        v45 = 2112;
        v46 = v30;
        _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_INFO, "%{public}@Supports automatic HH2 migration by owner auto is already set to %@", buf, 0x16u);

        v13 = v42;
        v26 = v40;
      }

      objc_autoreleasePoolPop(v26);
      if (!v14)
      {
        completionCopy[2](completionCopy, 0);
LABEL_19:

        goto LABEL_20;
      }
    }

    else
    {
      v25 = [MEMORY[0x277CCABB0] numberWithBool:autoCopy];
      [(HMDUserSupportsAutomaticHH2MigrationModel *)v13 setSupportsHH2MigrationByOwnerAuto:v25];
    }

    v31 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v33 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      v34 = HMFGetLogIdentifier();
      v35 = HMFBooleanToString();
      v36 = HMFBooleanToString();
      *buf = 138543874;
      v44 = v34;
      v45 = 2112;
      v46 = v35;
      v47 = 2112;
      v48 = v36;
      _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_INFO, "%{public}@Running transaction to update user supports HH2 migration status by owner manual to %@, by owner auto to %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v31);
    v37 = [delegate sharedZoneControllerForUserDataController:selfCopy3];
    v38 = [[HMDSettingTransaction alloc] initWithTransactionLabel:@"Update user supports automatic HH2 migration"];
    [(HMDSettingTransaction *)v38 addModelToBeUpdated:v13];
    [v37 runTransaction:v38 waitForCloudPush:0 completion:completionCopy];

    goto LABEL_19;
  }

  v16 = objc_autoreleasePoolPush();
  selfCopy4 = self;
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v19 = HMFGetLogIdentifier();
    *buf = 138543362;
    v44 = v19;
    _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@Not initialized yet", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v16);
  delegate = [MEMORY[0x277CCA9B8] hmErrorWithCode:2 description:@"Not ready" reason:@"Initialization is not complete" suggestion:0];
  (completionCopy)[2](completionCopy, delegate);
LABEL_20:
}

- (void)enableUserListeningHistoryForAccessory:(id)accessory
{
  v19 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  userListeningHistoryUpdateControlModelAccessories = [(HMDUserDataController *)self userListeningHistoryUpdateControlModelAccessories];
  if ([userListeningHistoryUpdateControlModelAccessories containsObject:accessoryCopy])
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543618;
      v16 = v9;
      v17 = 2112;
      v18 = accessoryCopy;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@ULH for accessory %@ is already enabled", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
  }

  else
  {
    [userListeningHistoryUpdateControlModelAccessories addObject:accessoryCopy];
    v10 = MEMORY[0x277CBEA60];
    allObjects = [userListeningHistoryUpdateControlModelAccessories allObjects];
    v12 = [v10 arrayWithObjects:{allObjects, 0}];

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __64__HMDUserDataController_enableUserListeningHistoryForAccessory___block_invoke;
    v13[3] = &unk_2797358C8;
    v13[4] = self;
    v14 = accessoryCopy;
    [(HMDUserDataController *)self handleUserListeningHistoryUpdateControlUpdatedAccessoryUUIDs:v12 completion:v13];
  }
}

void __64__HMDUserDataController_enableUserListeningHistoryForAccessory___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v8 = *(a1 + 40);
      v9 = 138543874;
      v10 = v7;
      v11 = 2112;
      v12 = v8;
      v13 = 2112;
      v14 = v3;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Enabling ULH for accessory %@ failed with %@", &v9, 0x20u);
    }

    objc_autoreleasePoolPop(v4);
  }
}

- (void)handleUserListeningHistoryUpdateControlUpdatedAccessoryUUIDs:(id)ds completion:(id)completion
{
  v51 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  completionCopy = completion;
  clientQueue = [(HMDUserDataController *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  if ([(HMDUserDataController *)self isInitialized])
  {
    userListeningHistoryUpdateControlModelAccessories = [(HMDUserDataController *)self userListeningHistoryUpdateControlModelAccessories];
    v10 = [MEMORY[0x277CBEB98] setWithArray:dsCopy];
    v11 = [v10 na_setByRemovingObjectsFromSet:userListeningHistoryUpdateControlModelAccessories];

    delegate = [(HMDUserDataController *)self delegate];
    v41 = dsCopy;
    v13 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(dsCopy, "count")}];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v14 = v11;
    v15 = [(HMDUserListeningHistoryUpdateControlModel *)v14 countByEnumeratingWithState:&v42 objects:v50 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v43;
      while (2)
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v43 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v42 + 1) + 8 * i);
          if (([delegate userDataController:self isAccessoryUserListeningHistoryUpdateCapable:v19] & 1) == 0)
          {
            v36 = objc_autoreleasePoolPush();
            selfCopy = self;
            v38 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
            {
              v39 = HMFGetLogIdentifier();
              *buf = 138543618;
              v47 = v39;
              v48 = 2112;
              v49 = v19;
              _os_log_impl(&dword_2531F8000, v38, OS_LOG_TYPE_INFO, "%{public}@Unable to validate accessory %@, skipping", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v36);
            v40 = MEMORY[0x277CCA9B8];
            v30 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2027];
            v31 = [v40 hmErrorWithCode:2 description:@"Could not validate accessory" reason:@"Need all accessories to be valid" suggestion:0 underlyingError:v30];
            completionCopy[2](completionCopy, v31);
            v28 = v14;
            goto LABEL_19;
          }
        }

        v16 = [(HMDUserListeningHistoryUpdateControlModel *)v14 countByEnumeratingWithState:&v42 objects:v50 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }
    }

    v20 = [MEMORY[0x277CBEB58] setWithArray:v41];

    v21 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543618;
      v47 = v24;
      v48 = 2112;
      v49 = v20;
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_INFO, "%{public}@Running transaction to update user listening history update control to %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    v25 = [HMDUserListeningHistoryUpdateControlModel alloc];
    userListeningHistoryUpdateControlModelUUID = [(HMDUserDataController *)selfCopy2 userListeningHistoryUpdateControlModelUUID];
    userUUID = [(HMDUserDataController *)selfCopy2 userUUID];
    v28 = [(HMBModel *)v25 initWithModelID:userListeningHistoryUpdateControlModelUUID parentModelID:userUUID];

    allObjects = [v20 allObjects];
    [(HMDUserListeningHistoryUpdateControlModel *)v28 setAccessories:allObjects];

    v30 = [delegate sharedZoneControllerForUserDataController:selfCopy2];
    v31 = [[HMDSettingTransaction alloc] initWithTransactionLabel:@"Update user listening history update control"];
    [(HMDSettingTransaction *)v31 addModelToBeUpdated:v28];
    [v30 runTransaction:v31 waitForCloudPush:0 completion:completionCopy];
    v13 = v20;
LABEL_19:

    dsCopy = v41;
  }

  else
  {
    v32 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v34 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = HMFGetLogIdentifier();
      *buf = 138543362;
      v47 = v35;
      _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_ERROR, "%{public}@Not initialized yet", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v32);
    userListeningHistoryUpdateControlModelAccessories = [MEMORY[0x277CCA9B8] hmErrorWithCode:2 description:@"Not ready" reason:@"Initialization is not complete" suggestion:0];
    completionCopy[2](completionCopy, userListeningHistoryUpdateControlModelAccessories);
  }
}

- (void)handleMediaContentProfileAccessControlUpdatedAccessoryUUIDs:(id)ds completion:(id)completion
{
  v45 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  completionCopy = completion;
  clientQueue = [(HMDUserDataController *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  if ([(HMDUserDataController *)self isInitialized])
  {
    delegate = [(HMDUserDataController *)self delegate];
    v10 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(dsCopy, "count")}];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v11 = dsCopy;
    v12 = [(HMDMediaContentProfileAccessControlModel *)v11 countByEnumeratingWithState:&v36 objects:v44 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v37;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v37 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v36 + 1) + 8 * i);
          if (![(HMDSettingTransaction *)delegate userDataController:self isMediaContentProfileCapableAccessoryID:v16, v36])
          {
            v31 = objc_autoreleasePoolPush();
            selfCopy = self;
            v33 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
            {
              v34 = HMFGetLogIdentifier();
              *buf = 138543618;
              v41 = v34;
              v42 = 2112;
              v43 = v16;
              _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_INFO, "%{public}@Unable to validate accessory %@, skipping", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v31);
            v35 = MEMORY[0x277CCA9B8];
            v25 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2026];
            v26 = [v35 hmErrorWithCode:2 description:@"Could not validate accessory" reason:@"Need all accessories to be valid" suggestion:0 underlyingError:v25];
            completionCopy[2](completionCopy, v26);
            goto LABEL_19;
          }

          [v10 addObject:v16];
        }

        v13 = [(HMDMediaContentProfileAccessControlModel *)v11 countByEnumeratingWithState:&v36 objects:v44 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    v17 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543618;
      v41 = v20;
      v42 = 2112;
      v43 = v10;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@Running transaction to update media content profile access control to %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    v21 = [HMDMediaContentProfileAccessControlModel alloc];
    mediaContentProfileAccessControlModelUUID = [(HMDUserDataController *)selfCopy2 mediaContentProfileAccessControlModelUUID];
    userUUID = [(HMDUserDataController *)selfCopy2 userUUID];
    v11 = [(HMBModel *)v21 initWithModelID:mediaContentProfileAccessControlModelUUID parentModelID:userUUID];

    allObjects = [v10 allObjects];
    [(HMDMediaContentProfileAccessControlModel *)v11 setAccessories:allObjects];

    v25 = [(HMDSettingTransaction *)delegate sharedZoneControllerForUserDataController:selfCopy2];
    v26 = [[HMDSettingTransaction alloc] initWithTransactionLabel:@"Update media content profile access control"];
    [(HMDSettingTransaction *)v26 addModelToBeUpdated:v11];
    [v25 runTransaction:v26 waitForCloudPush:0 completion:completionCopy];
LABEL_19:
  }

  else
  {
    v27 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      *buf = 138543362;
      v41 = v30;
      _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_ERROR, "%{public}@Not initialized yet", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v27);
    delegate = [MEMORY[0x277CCA9B8] hmErrorWithCode:2 description:@"Not ready" reason:@"Initialization is not complete" suggestion:0];
    completionCopy[2](completionCopy, delegate);
  }
}

- (void)handleAssistantAccessControlAccessoryUUIDsUpdated:(id)updated requireAuthenticationForSecureRequests:(BOOL)requests activityNotificationsEnabledForPersonalRequests:(BOOL)personalRequests completion:(id)completion
{
  personalRequestsCopy = personalRequests;
  requestsCopy = requests;
  v78 = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  completionCopy = completion;
  clientQueue = [(HMDUserDataController *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  if ([(HMDUserDataController *)self isInitialized])
  {
    v58 = requestsCopy;
    v59 = personalRequestsCopy;
    assistantAccessControlAccessoryUUIDs = [(HMDUserDataController *)self assistantAccessControlAccessoryUUIDs];
    v60 = updatedCopy;
    v14 = [MEMORY[0x277CBEB98] setWithArray:updatedCopy];
    v15 = [v14 na_setByRemovingObjectsFromSet:assistantAccessControlAccessoryUUIDs];

    delegate = [(HMDUserDataController *)self delegate];
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v17 = v15;
    v18 = [v17 countByEnumeratingWithState:&v67 objects:v77 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v68;
      while (2)
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v68 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v67 + 1) + 8 * i);
          if (([delegate userDataController:self isPersonalRequestCapableAccessoryID:v22] & 1) == 0)
          {
            v46 = objc_autoreleasePoolPush();
            selfCopy = self;
            v48 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
            {
              v49 = HMFGetLogIdentifier();
              *buf = 138543618;
              v72 = v49;
              v73 = 2112;
              v74 = v22;
              _os_log_impl(&dword_2531F8000, v48, OS_LOG_TYPE_INFO, "%{public}@Unable to validate accessory %@, skipping", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v46);
            v50 = MEMORY[0x277CCA9B8];
            v51 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2025];
            v52 = [v50 hmErrorWithCode:2 description:@"Could not validate accessory" reason:@"Need all newly added accessories to be valid" suggestion:0 underlyingError:v51];
            completionCopy[2](completionCopy, v52);

            updatedCopy = v60;
            goto LABEL_22;
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v67 objects:v77 count:16];
        if (v19)
        {
          continue;
        }

        break;
      }
    }

    assistantAccessControlAccessoryUUIDs2 = [(HMDUserDataController *)self assistantAccessControlAccessoryUUIDs];
    updatedCopy = v60;
    v24 = [MEMORY[0x277CBEB98] setWithArray:v60];
    if ([assistantAccessControlAccessoryUUIDs2 isEqualToSet:v24] && -[HMDUserDataController assistantAccessControlActivityNotificationsEnabledForPersonalRequests](self, "assistantAccessControlActivityNotificationsEnabledForPersonalRequests") == v59)
    {
      assistantAccessControlRequiresAuthenticationForSecureRequests = [(HMDUserDataController *)self assistantAccessControlRequiresAuthenticationForSecureRequests];

      if (assistantAccessControlRequiresAuthenticationForSecureRequests == v58)
      {
        v54 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v56 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
        {
          v57 = HMFGetLogIdentifier();
          *buf = 138543362;
          v72 = v57;
          _os_log_impl(&dword_2531F8000, v56, OS_LOG_TYPE_INFO, "%{public}@Nothing to modify.", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v54);
        completionCopy[2](completionCopy, 0);
        goto LABEL_22;
      }
    }

    else
    {
    }

    v25 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = HMFGetLogIdentifier();
      v29 = [MEMORY[0x277CCABB0] numberWithBool:v59];
      *buf = 138543874;
      v72 = v28;
      v73 = 2112;
      v74 = v60;
      v75 = 2112;
      v76 = v29;
      _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@Updating user assistant access control accessories: %@, activity notifications enabled for personal requests: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v25);
    v30 = [HMDAssistantAccessControlModelV2 alloc];
    assistantAccessControlModelUUID = [(HMDUserDataController *)selfCopy3 assistantAccessControlModelUUID];
    userUUID = [(HMDUserDataController *)selfCopy3 userUUID];
    v33 = [(HMBModel *)v30 initWithModelID:assistantAccessControlModelUUID parentModelID:userUUID];

    v64[0] = MEMORY[0x277D85DD0];
    v64[1] = 3221225472;
    v64[2] = __173__HMDUserDataController_handleAssistantAccessControlAccessoryUUIDsUpdated_requireAuthenticationForSecureRequests_activityNotificationsEnabledForPersonalRequests_completion___block_invoke;
    v64[3] = &unk_27972E788;
    v34 = delegate;
    v65 = v34;
    v66 = selfCopy3;
    v35 = [v60 na_filter:v64];
    [(HMDAssistantAccessControlModelV2 *)v33 setAccessoryUUIDs:v35];

    v61[0] = MEMORY[0x277D85DD0];
    v61[1] = 3221225472;
    v61[2] = __173__HMDUserDataController_handleAssistantAccessControlAccessoryUUIDsUpdated_requireAuthenticationForSecureRequests_activityNotificationsEnabledForPersonalRequests_completion___block_invoke_2;
    v61[3] = &unk_27972E788;
    updatedCopy = v60;
    v36 = v34;
    v62 = v36;
    v63 = selfCopy3;
    v37 = [v60 na_filter:v61];
    [(HMDAssistantAccessControlModelV2 *)v33 setSiriEndpointAccessoryUUIDs:v37];

    v38 = [MEMORY[0x277CCABB0] numberWithBool:v59];
    [(HMDAssistantAccessControlModelV2 *)v33 setActivityNotificationsEnabledForPersonalRequests:v38];

    v39 = [MEMORY[0x277CCABB0] numberWithBool:v58];
    [(HMDAssistantAccessControlModelV2 *)v33 setRequiresAuthenticationForSecureRequests:v39];

    v40 = [v36 sharedZoneControllerForUserDataController:selfCopy3];
    v41 = [[HMDSettingTransaction alloc] initWithTransactionLabel:@"Update user assistant access control"];
    [(HMDSettingTransaction *)v41 addModelToBeUpdated:v33];
    [v40 runTransaction:v41 waitForCloudPush:0 completion:completionCopy];

LABEL_22:
    goto LABEL_23;
  }

  v42 = objc_autoreleasePoolPush();
  selfCopy4 = self;
  v44 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
  {
    v45 = HMFGetLogIdentifier();
    *buf = 138543362;
    v72 = v45;
    _os_log_impl(&dword_2531F8000, v44, OS_LOG_TYPE_ERROR, "%{public}@Not initialized yet", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v42);
  assistantAccessControlAccessoryUUIDs = [MEMORY[0x277CCA9B8] hmErrorWithCode:2 description:@"Not ready" reason:@"Initialization is not complete" suggestion:0];
  completionCopy[2](completionCopy, assistantAccessControlAccessoryUUIDs);
LABEL_23:
}

- (void)handleStartForZoneController:(id)controller
{
  controllerCopy = controller;
  clientQueue = [(HMDUserDataController *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  delegate = [(HMDUserDataController *)self delegate];
  if (controllerCopy)
  {
    v6 = [delegate sharedZoneControllerForUserDataController:self];

    if (v6 == controllerCopy)
    {
      [(HMDUserDataController *)self _startupSharedZone];
    }

    else
    {
      v7 = [delegate privateZoneControllerForUserDataController:self];

      if (v7 == controllerCopy)
      {
        [(HMDUserDataController *)self _startupPrivateZone];
      }
    }
  }
}

- (void)_startupPrivateZone
{
  v30 = *MEMORY[0x277D85DE8];
  delegate = [(HMDUserDataController *)self delegate];
  v4 = [delegate privateZoneControllerForUserDataController:self];

  v25 = 0;
  v5 = [v4 loadPrivateUserDataModelWithError:&v25];
  v6 = v25;
  if (v5)
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543362;
      v27 = v10;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Loaded user data model from local zone.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    loadUserSettings = [v4 loadUserSettings];
    privateSettingsController = [(HMDUserDataController *)selfCopy privateSettingsController];
    [privateSettingsController loadWithModels:loadUserSettings];

    v13 = [[HMDSettingTransaction alloc] initWithTransactionLabel:@"Private user setting model migration"];
    privateSettingsController2 = [(HMDUserDataController *)selfCopy privateSettingsController];
    v24 = v6;
    v15 = [privateSettingsController2 migrateSettingsTransactionWithTransaction:v13 error:&v24];
    v16 = v24;

    if (v16)
    {
      v17 = objc_autoreleasePoolPush();
      v18 = selfCopy;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        *buf = 138543618;
        v27 = v20;
        v28 = 2112;
        v29 = v16;
        _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@Error migrating user data models in private zone %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v17);
      [(HMDUserDataController *)v18 _startPrivateZoneFirstLoadTimer];
    }

    else
    {
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __44__HMDUserDataController__startupPrivateZone__block_invoke;
      v21[3] = &unk_279734D88;
      v21[4] = selfCopy;
      v22 = v4;
      v23 = v5;
      [v22 runTransaction:v13 waitForCloudPush:1 completion:v21];
    }
  }

  else
  {
    [(HMDUserDataController *)self performFirstRunOperationsOnPrivateZoneController:v4];
    v16 = v6;
  }
}

void __44__HMDUserDataController__startupPrivateZone__block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
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
      v10 = 138543618;
      v11 = v8;
      v12 = 2112;
      v13 = v3;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_ERROR, "%{public}@Error migrating user data models in private zone %@", &v10, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 32) _startPrivateZoneFirstLoadTimer];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v10 = 138543362;
      v11 = v9;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Successfully migrated models for private zone.", &v10, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 32) initializePrivateZoneController:*(a1 + 40) userDataModel:*(a1 + 48)];
    [*(a1 + 32) _invalidatePrivateZoneFirstLoadTimer];
  }
}

- (void)_startupSharedZone
{
  v35 = *MEMORY[0x277D85DE8];
  delegate = [(HMDUserDataController *)self delegate];
  v4 = [delegate sharedZoneControllerForUserDataController:self];

  v30 = 0;
  v5 = [v4 loadSharedUserDataModelWithError:&v30];
  v6 = v30;
  if (v5)
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543362;
      v32 = v10;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Loaded user data model from local zone.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    loadUserSettings = [v4 loadUserSettings];
    if ([(HMDUserDataController *)selfCopy isCurrentUser])
    {
      sharedSettingsController = [(HMDUserDataController *)selfCopy sharedSettingsController];
      [sharedSettingsController loadWithModels:loadUserSettings];

      v13 = [[HMDSettingTransaction alloc] initWithTransactionLabel:@"Migration"];
      sharedSettingsController2 = [(HMDUserDataController *)selfCopy sharedSettingsController];
      v29 = v6;
      v15 = [sharedSettingsController2 migrateSettingsTransactionWithTransaction:v13 error:&v29];
      v16 = v29;

      v17 = [(HMDUserDataController *)selfCopy _migrateUserListeningHistoryUpdateControlWithUserCurrentDataModel:v5 transaction:v13 settingModels:loadUserSettings];
      [(HMDUserDataController *)selfCopy _migrateUserSupportsAutomaticHH2MigrationUserCurrentDataModel:v5 transaction:v13];
      if (v16)
      {
        v18 = objc_autoreleasePoolPush();
        v19 = selfCopy;
        v20 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v21 = HMFGetLogIdentifier();
          *buf = 138543618;
          v32 = v21;
          v33 = 2112;
          v34 = v16;
          _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_ERROR, "%{public}@Error migrating user data models in shared zone %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v18);
        [(HMDUserDataController *)v19 _startSharedZoneFirstLoadTimer];
      }

      else
      {
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __43__HMDUserDataController__startupSharedZone__block_invoke;
        v26[3] = &unk_279734D88;
        v26[4] = selfCopy;
        v27 = 0;
        v28 = v4;
        [v28 runTransaction:v13 waitForCloudPush:1 completion:v26];
      }

      v6 = v16;
    }

    else
    {
      v22 = objc_autoreleasePoolPush();
      v23 = selfCopy;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = HMFGetLogIdentifier();
        *buf = 138543362;
        v32 = v25;
        _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_INFO, "%{public}@We are not current user, no migration should happen on a non-current user zone", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v22);
      [(HMDUserDataController *)v23 initializeSharedZoneController:v4 userDataModel:v5];
      [(HMDUserDataController *)v23 _invalidateSharedZoneFirstLoadTimer];
    }
  }

  else
  {
    [(HMDUserDataController *)self performFirstRunOperationsOnSharedZoneController:v4];
  }
}

void __43__HMDUserDataController__startupSharedZone__block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
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
      v12 = 138543618;
      v13 = v8;
      v14 = 2112;
      v15 = v9;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_ERROR, "%{public}@Error migrating user data models in shared zone %@", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 32) _startSharedZoneFirstLoadTimer];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v10;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Successfully migrated models for shared zone.", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    v11 = [*(a1 + 48) loadSharedUserDataModelWithError:0];
    [*(a1 + 32) initializeSharedZoneController:*(a1 + 48) userDataModel:v11];
    [*(a1 + 32) _invalidateSharedZoneFirstLoadTimer];
  }
}

- (void)_invalidatePrivateZoneFirstLoadTimer
{
  privateZoneFirstLoadTimer = [(HMDUserDataController *)self privateZoneFirstLoadTimer];
  [privateZoneFirstLoadTimer cancel];

  [(HMDUserDataController *)self setPrivateZoneFirstLoadTimer:0];
}

- (void)_startPrivateZoneFirstLoadTimer
{
  v18 = *MEMORY[0x277D85DE8];
  clientQueue = [(HMDUserDataController *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  privateZoneFirstLoadTimer = [(HMDUserDataController *)self privateZoneFirstLoadTimer];

  if (!privateZoneFirstLoadTimer)
  {
    timerCreator = [(HMDUserDataController *)self timerCreator];
    createExponentialBackoffTimerForZoneFetch = [timerCreator createExponentialBackoffTimerForZoneFetch];
    [(HMDUserDataController *)self setPrivateZoneFirstLoadTimer:createExponentialBackoffTimerForZoneFetch];

    privateZoneFirstLoadTimer2 = [(HMDUserDataController *)self privateZoneFirstLoadTimer];
    [privateZoneFirstLoadTimer2 setDelegate:self];

    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      privateZoneFirstLoadTimer3 = [(HMDUserDataController *)selfCopy privateZoneFirstLoadTimer];
      v14 = 138543618;
      v15 = v11;
      v16 = 2112;
      v17 = privateZoneFirstLoadTimer3;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Starting timer to perform first run operations on shared zone. %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    privateZoneFirstLoadTimer4 = [(HMDUserDataController *)selfCopy privateZoneFirstLoadTimer];
    [privateZoneFirstLoadTimer4 resume];
  }
}

- (void)performFirstRunOperationsOnPrivateZoneController:(id)controller
{
  v40 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  clientQueue = [(HMDUserDataController *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543362;
    v39 = v9;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Creating user data model for private user zone", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  v10 = objc_autoreleasePoolPush();
  v11 = selfCopy;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    *buf = 138543362;
    v39 = v13;
    _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Configuring and making private settings", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v10);
  privateSettingsController = [(HMDUserDataController *)v11 privateSettingsController];
  modelsToMakeSettings = [privateSettingsController modelsToMakeSettings];

  v16 = [HMDPrivateUserDataModel alloc];
  userUUID = [(HMDUserDataController *)v11 userUUID];
  homeUUID = [(HMDUserDataController *)v11 homeUUID];
  v19 = [(HMBModel *)v16 initWithModelID:userUUID parentModelID:homeUUID];

  userUUID2 = [(HMDUserDataController *)v11 userUUID];
  v21 = __rootSettingUUIDInSettingModels(modelsToMakeSettings, userUUID2);
  [(HMDPrivateUserDataModel *)v19 setSettingsRootUUID:v21];

  v22 = [[HMDSettingTransaction alloc] initForInitialCreationWithTransactionLabel:@"Creating Private User Data"];
  [v22 addModelToBeUpdated:v19];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v23 = modelsToMakeSettings;
  v24 = [v23 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v34;
    do
    {
      v27 = 0;
      do
      {
        if (*v34 != v26)
        {
          objc_enumerationMutation(v23);
        }

        [v22 addModelToBeUpdated:*(*(&v33 + 1) + 8 * v27++)];
      }

      while (v25 != v27);
      v25 = [v23 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v25);
  }

  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __74__HMDUserDataController_performFirstRunOperationsOnPrivateZoneController___block_invoke;
  v30[3] = &unk_279734D88;
  v30[4] = v11;
  v31 = controllerCopy;
  v32 = v19;
  v28 = v19;
  v29 = controllerCopy;
  [v29 runTransaction:v22 waitForCloudPush:1 completion:v30];
}

void __74__HMDUserDataController_performFirstRunOperationsOnPrivateZoneController___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
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
      v10 = 138543618;
      v11 = v8;
      v12 = 2112;
      v13 = v3;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_ERROR, "%{public}@Error creating user data models in private zone %@", &v10, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 32) _startPrivateZoneFirstLoadTimer];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v10 = 138543362;
      v11 = v9;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Successfully created and pushed models for private zone.", &v10, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 32) initializePrivateZoneController:*(a1 + 40) userDataModel:*(a1 + 48)];
    [*(a1 + 32) _invalidatePrivateZoneFirstLoadTimer];
  }
}

- (void)_invalidateSharedZoneFirstLoadTimer
{
  sharedZoneFirstLoadTimer = [(HMDUserDataController *)self sharedZoneFirstLoadTimer];
  [sharedZoneFirstLoadTimer cancel];

  [(HMDUserDataController *)self setSharedZoneFirstLoadTimer:0];
}

- (void)_startSharedZoneFirstLoadTimer
{
  v18 = *MEMORY[0x277D85DE8];
  clientQueue = [(HMDUserDataController *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  sharedZoneFirstLoadTimer = [(HMDUserDataController *)self sharedZoneFirstLoadTimer];

  if (!sharedZoneFirstLoadTimer)
  {
    timerCreator = [(HMDUserDataController *)self timerCreator];
    createExponentialBackoffTimerForZoneFetch = [timerCreator createExponentialBackoffTimerForZoneFetch];
    [(HMDUserDataController *)self setSharedZoneFirstLoadTimer:createExponentialBackoffTimerForZoneFetch];

    sharedZoneFirstLoadTimer2 = [(HMDUserDataController *)self sharedZoneFirstLoadTimer];
    [sharedZoneFirstLoadTimer2 setDelegate:self];

    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      sharedZoneFirstLoadTimer3 = [(HMDUserDataController *)selfCopy sharedZoneFirstLoadTimer];
      v14 = 138543618;
      v15 = v11;
      v16 = 2112;
      v17 = sharedZoneFirstLoadTimer3;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Starting timer to perform first run operations on shared zone. %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    sharedZoneFirstLoadTimer4 = [(HMDUserDataController *)selfCopy sharedZoneFirstLoadTimer];
    [sharedZoneFirstLoadTimer4 resume];
  }
}

- (void)performFirstRunOperationsOnSharedZoneController:(id)controller
{
  v68 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  clientQueue = [(HMDUserDataController *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v67 = v8;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Creating user data model for shared user zone", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [[HMDSettingTransaction alloc] initForInitialCreationWithTransactionLabel:@"Creating Shared User Data"];
  v10 = [HMDAssistantAccessControlModelV2 alloc];
  uUID = [MEMORY[0x277CCAD78] UUID];
  userUUID = [(HMDUserDataController *)selfCopy userUUID];
  v13 = [(HMBModel *)v10 initWithModelID:uUID parentModelID:userUUID];

  v14 = MEMORY[0x277CBEBF8];
  [(HMDAssistantAccessControlModelV2 *)v13 setAccessoryUUIDs:MEMORY[0x277CBEBF8]];
  [(HMDAssistantAccessControlModelV2 *)v13 setSiriEndpointAccessoryUUIDs:v14];
  v15 = [HMDMediaContentProfileAccessControlModel alloc];
  uUID2 = [MEMORY[0x277CCAD78] UUID];
  userUUID2 = [(HMDUserDataController *)selfCopy userUUID];
  v18 = [(HMBModel *)v15 initWithModelID:uUID2 parentModelID:userUUID2];

  [(HMDMediaContentProfileAccessControlModel *)v18 setAccessories:v14];
  v19 = [HMDUserSupportsAutomaticHH2MigrationModel alloc];
  uUID3 = [MEMORY[0x277CCAD78] UUID];
  userUUID3 = [(HMDUserDataController *)selfCopy userUUID];
  v22 = [(HMBModel *)v19 initWithModelID:uUID3 parentModelID:userUUID3];

  v23 = MEMORY[0x277CBEC28];
  [(HMDUserSupportsAutomaticHH2MigrationModel *)v22 setSupportsAutomaticHH2Migration:MEMORY[0x277CBEC28]];
  [(HMDUserSupportsAutomaticHH2MigrationModel *)v22 setSupportsHH2MigrationByOwnerAuto:v23];
  v24 = objc_autoreleasePoolPush();
  v25 = selfCopy;
  v26 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    v27 = HMFGetLogIdentifier();
    *buf = 138543362;
    v67 = v27;
    _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_INFO, "%{public}@Configuring and making shared settings", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v24);
  sharedSettingsController = [(HMDUserDataController *)v25 sharedSettingsController];
  modelsToMakeSettings = [sharedSettingsController modelsToMakeSettings];

  v30 = [HMDSharedUserDataModel alloc];
  userUUID4 = [(HMDUserDataController *)v25 userUUID];
  homeUUID = [(HMDUserDataController *)v25 homeUUID];
  v33 = [(HMBModel *)v30 initWithModelID:userUUID4 parentModelID:homeUUID];

  hmbModelID = [(HMBModel *)v13 hmbModelID];
  [(HMDSharedUserDataModel *)v33 setAssistantAccessControlModelUUID:hmbModelID];

  hmbModelID2 = [(HMBModel *)v18 hmbModelID];
  [(HMDSharedUserDataModel *)v33 setMediaContentProfileAccessControlModelUUID:hmbModelID2];

  hmbModelID3 = [(HMBModel *)v22 hmbModelID];
  [(HMDSharedUserDataModel *)v33 setSupportsAutomaticHH2MigrationModelUUID:hmbModelID3];

  userUUID5 = [(HMDUserDataController *)v25 userUUID];
  v38 = __rootSettingUUIDInSettingModels(modelsToMakeSettings, userUUID5);
  [(HMDSharedUserDataModel *)v33 setSettingsRootUUID:v38];

  [v9 addModelToBeUpdated:v33];
  v55 = v13;
  [v9 addModelToBeUpdated:v13];
  v54 = v18;
  [v9 addModelToBeUpdated:v18];
  v39 = [HMDUserListeningHistoryUpdateControlModel alloc];
  uUID4 = [MEMORY[0x277CCAD78] UUID];
  userUUID6 = [(HMDUserDataController *)v25 userUUID];
  v42 = [(HMBModel *)v39 initWithModelID:uUID4 parentModelID:userUUID6];

  dataSource = [(HMDUserDataController *)v25 dataSource];
  allAccessoryUUID = [dataSource allAccessoryUUID];
  v64[0] = MEMORY[0x277D85DD0];
  v64[1] = 3221225472;
  v64[2] = __73__HMDUserDataController_performFirstRunOperationsOnSharedZoneController___block_invoke;
  v64[3] = &unk_2797358A0;
  v64[4] = v25;
  v45 = [allAccessoryUUID na_filter:v64];

  [(HMDUserListeningHistoryUpdateControlModel *)v42 setAccessories:v45];
  hmbModelID4 = [(HMBModel *)v42 hmbModelID];
  [(HMDSharedUserDataModel *)v33 setUserListeningHistoryUpdateControlModelUUID:hmbModelID4];

  [v9 addModelToBeUpdated:v42];
  [v9 addModelToBeUpdated:v22];
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v47 = modelsToMakeSettings;
  v48 = [v47 countByEnumeratingWithState:&v60 objects:v65 count:16];
  if (v48)
  {
    v49 = v48;
    v50 = *v61;
    do
    {
      v51 = 0;
      do
      {
        if (*v61 != v50)
        {
          objc_enumerationMutation(v47);
        }

        [v9 addModelToBeUpdated:*(*(&v60 + 1) + 8 * v51++)];
      }

      while (v49 != v51);
      v49 = [v47 countByEnumeratingWithState:&v60 objects:v65 count:16];
    }

    while (v49);
  }

  v57[0] = MEMORY[0x277D85DD0];
  v57[1] = 3221225472;
  v57[2] = __73__HMDUserDataController_performFirstRunOperationsOnSharedZoneController___block_invoke_2;
  v57[3] = &unk_279734D88;
  v57[4] = v25;
  v58 = controllerCopy;
  v59 = v33;
  v52 = v33;
  v53 = controllerCopy;
  [v53 runTransaction:v9 waitForCloudPush:1 completion:v57];
}

uint64_t __73__HMDUserDataController_performFirstRunOperationsOnSharedZoneController___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 delegate];
  v6 = [v5 userDataController:*(a1 + 32) isAccessoryUserListeningHistoryUpdateCapable:v4];

  return v6;
}

void __73__HMDUserDataController_performFirstRunOperationsOnSharedZoneController___block_invoke_2(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
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
      v10 = 138543618;
      v11 = v8;
      v12 = 2112;
      v13 = v3;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_ERROR, "%{public}@Error creating user data models in shared zone %@", &v10, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 32) _startSharedZoneFirstLoadTimer];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v10 = 138543362;
      v11 = v9;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Successfully created and pushed models for shared zone.", &v10, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 32) initializeSharedZoneController:*(a1 + 40) userDataModel:*(a1 + 48)];
    [*(a1 + 32) _invalidateSharedZoneFirstLoadTimer];
  }
}

- (void)initializePrivateZoneController:(id)controller userDataModel:(id)model
{
  modelCopy = model;
  controllerCopy = controller;
  clientQueue = [(HMDUserDataController *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  settingsRootUUID = [modelCopy settingsRootUUID];

  [(HMDUserDataController *)self setPrivateSettingsRootUUID:settingsRootUUID];
  loadUserSettings = [controllerCopy loadUserSettings];

  privateSettingsController = [(HMDUserDataController *)self privateSettingsController];
  [privateSettingsController loadWithModels:loadUserSettings];

  privateSettingsController2 = [(HMDUserDataController *)self privateSettingsController];
  [privateSettingsController2 configure];

  [(HMDUserDataController *)self eventDidInitializePrivateZone];
}

- (void)_migrateUserSupportsAutomaticHH2MigrationUserCurrentDataModel:(id)model transaction:(id)transaction
{
  v25 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  transactionCopy = transaction;
  supportsAutomaticHH2MigrationModelUUID = [modelCopy supportsAutomaticHH2MigrationModelUUID];

  if (supportsAutomaticHH2MigrationModelUUID)
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v23 = 138543362;
      v24 = v12;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@current data model has UUID, not migrating user supports automatic HH2 migration", &v23, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
  }

  else
  {
    v13 = [HMDUserSupportsAutomaticHH2MigrationModel alloc];
    uUID = [MEMORY[0x277CCAD78] UUID];
    userUUID = [(HMDUserDataController *)self userUUID];
    v16 = [(HMBModel *)v13 initWithModelID:uUID parentModelID:userUUID];

    v17 = [HMDSharedUserDataModel alloc];
    userUUID2 = [(HMDUserDataController *)self userUUID];
    homeUUID = [(HMDUserDataController *)self homeUUID];
    v20 = [(HMBModel *)v17 initWithModelID:userUUID2 parentModelID:homeUUID];

    hmbModelID = [(HMBModel *)v16 hmbModelID];
    [(HMDSharedUserDataModel *)v20 setSupportsAutomaticHH2MigrationModelUUID:hmbModelID];

    v22 = MEMORY[0x277CBEC28];
    [(HMDUserSupportsAutomaticHH2MigrationModel *)v16 setSupportsAutomaticHH2Migration:MEMORY[0x277CBEC28]];
    [(HMDUserSupportsAutomaticHH2MigrationModel *)v16 setSupportsHH2MigrationByOwnerAuto:v22];
    [transactionCopy addModel:v16];
    [transactionCopy addModel:v20];
  }
}

- (id)_keyPathToModelFromKeyPath:(id)path models:(id)models
{
  v5 = MEMORY[0x277CBEB38];
  modelsCopy = models;
  pathCopy = path;
  dictionary = [v5 dictionary];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __59__HMDUserDataController__keyPathToModelFromKeyPath_models___block_invoke;
  v21[3] = &unk_27972E738;
  v9 = dictionary;
  v22 = v9;
  [modelsCopy na_each:v21];

  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __59__HMDUserDataController__keyPathToModelFromKeyPath_models___block_invoke_2;
  v18[3] = &unk_27972E760;
  v19 = v9;
  v20 = dictionary2;
  v11 = dictionary2;
  v12 = v9;
  [v12 na_each:v18];
  v13 = [pathCopy stringByAppendingString:@"."];

  v14 = [v11 objectForKeyedSubscript:v13];
  if ([v14 conformsToProtocol:&unk_28668A8B0])
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  return v15;
}

void __59__HMDUserDataController__keyPathToModelFromKeyPath_models___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 hmbModelID];
  [v2 setObject:v3 forKeyedSubscript:v4];
}

void __59__HMDUserDataController__keyPathToModelFromKeyPath_models___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [MEMORY[0x277CCAB68] string];
  v6 = v4;
  v19 = v6;
  if (v6)
  {
    v7 = v6;
    do
    {
      v8 = [v7 hmbModelID];
      if (!v8 || (v9 = v8, v10 = *(a1 + 32), [v7 hmbModelID], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "objectForKeyedSubscript:", v11), v12 = objc_claimAutoreleasedReturnValue(), v12, v11, v9, !v12))
      {
        v15 = v5;
        if (v5)
        {
          goto LABEL_7;
        }

        goto LABEL_9;
      }

      v13 = MEMORY[0x277CCAB68];
      v14 = [v7 nameForKeyPath];
      v15 = [v13 stringWithFormat:@"%@.%@", v14, v5];

      v16 = *(a1 + 32);
      v17 = [v7 hmbParentModelID];
      v18 = [v16 objectForKeyedSubscript:v17];

      v7 = v18;
      v5 = v15;
    }

    while (v18);
    if (v15)
    {
LABEL_7:
      [*(a1 + 40) setObject:v19 forKeyedSubscript:v15];
      v5 = v15;
      goto LABEL_11;
    }

LABEL_9:
    v5 = 0;
  }

  else
  {
    v7 = 0;
  }

LABEL_11:
}

- (BOOL)_userListeningHistoryValueFromModels:(id)models
{
  v19 = *MEMORY[0x277D85DE8];
  modelsCopy = models;
  v5 = [(HMDUserDataController *)self _keyPathToModelFromKeyPath:@"root.music.playbackInfluencesForYou" models:modelsCopy];
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  v9 = v8;
  if (v5)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v15 = 138543618;
      v16 = v10;
      v17 = 2112;
      v18 = v5;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@setting model =%@", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    numberValue = [v5 numberValue];
    bOOLValue = [numberValue BOOLValue];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v13;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@no setting model for ULH", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (id)_migrateUserListeningHistoryUpdateControlWithUserCurrentDataModel:(id)model transaction:(id)transaction settingModels:(id)models
{
  v46 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  transactionCopy = transaction;
  modelsCopy = models;
  userListeningHistoryUpdateControlModelUUID = [modelCopy userListeningHistoryUpdateControlModelUUID];

  if (userListeningHistoryUpdateControlModelUUID)
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543362;
      v43 = v15;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@current data model has UUID, not migrating ULH", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
  }

  else
  {
    v16 = [HMDUserListeningHistoryUpdateControlModel alloc];
    uUID = [MEMORY[0x277CCAD78] UUID];
    userUUID = [(HMDUserDataController *)self userUUID];
    v19 = [(HMBModel *)v16 initWithModelID:uUID parentModelID:userUUID];

    v20 = [HMDSharedUserDataModel alloc];
    userUUID2 = [(HMDUserDataController *)self userUUID];
    homeUUID = [(HMDUserDataController *)self homeUUID];
    v23 = [(HMBModel *)v20 initWithModelID:userUUID2 parentModelID:homeUUID];

    v24 = [modelsCopy na_map:&__block_literal_global_143604];
    v25 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v28 = HMFGetLogIdentifier();
      *buf = 138543618;
      v43 = v28;
      v44 = 2112;
      v45 = v24;
      _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_INFO, "%{public}@Filtered Setting MOdels: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v25);
    v29 = [(HMDUserDataController *)selfCopy2 _userListeningHistoryValueFromModels:v24];
    v30 = objc_autoreleasePoolPush();
    v31 = selfCopy2;
    v32 = HMFGetOSLogHandle();
    v33 = os_log_type_enabled(v32, OS_LOG_TYPE_INFO);
    if (v29)
    {
      if (v33)
      {
        v34 = HMFGetLogIdentifier();
        *buf = 138543362;
        v43 = v34;
        _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_INFO, "%{public}@ULH was true for the user, migrating accessories", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v30);
      dataSource = [(HMDUserDataController *)v31 dataSource];
      allAccessoryUUID = [dataSource allAccessoryUUID];
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __117__HMDUserDataController__migrateUserListeningHistoryUpdateControlWithUserCurrentDataModel_transaction_settingModels___block_invoke_70;
      v41[3] = &unk_2797358A0;
      v41[4] = v31;
      v37 = [allAccessoryUUID na_filter:v41];

      [(HMDUserListeningHistoryUpdateControlModel *)v19 setAccessories:v37];
    }

    else
    {
      if (v33)
      {
        v38 = HMFGetLogIdentifier();
        *buf = 138543362;
        v43 = v38;
        _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_INFO, "%{public}@ULH was False for the user, NOT migrating accessories", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v30);
      [(HMDUserListeningHistoryUpdateControlModel *)v19 setAccessories:MEMORY[0x277CBEBF8]];
    }

    hmbModelID = [(HMBModel *)v19 hmbModelID];
    [(HMDSharedUserDataModel *)v23 setUserListeningHistoryUpdateControlModelUUID:hmbModelID];

    [transactionCopy addModel:v19];
    [transactionCopy addModel:v23];
  }

  return transactionCopy;
}

uint64_t __117__HMDUserDataController__migrateUserListeningHistoryUpdateControlWithUserCurrentDataModel_transaction_settingModels___block_invoke_70(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 delegate];
  v6 = [v5 userDataController:*(a1 + 32) isAccessoryUserListeningHistoryUpdateCapable:v4];

  return v6;
}

void *__117__HMDUserDataController__migrateUserListeningHistoryUpdateControlWithUserCurrentDataModel_transaction_settingModels___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 conformsToProtocol:&unk_286642168])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (void)initializeSharedZoneController:(id)controller userDataModel:(id)model
{
  v114 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  modelCopy = model;
  clientQueue = [(HMDUserDataController *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  assistantAccessControlModelUUID = [modelCopy assistantAccessControlModelUUID];
  [(HMDUserDataController *)self setAssistantAccessControlModelUUID:assistantAccessControlModelUUID];

  mediaContentProfileAccessControlModelUUID = [modelCopy mediaContentProfileAccessControlModelUUID];
  [(HMDUserDataController *)self setMediaContentProfileAccessControlModelUUID:mediaContentProfileAccessControlModelUUID];

  userUUID = [(HMDUserDataController *)self userUUID];
  [controllerCopy registerForSharedUserDataModelUpdates:self modelID:userUUID];

  userListeningHistoryUpdateControlModelUUID = [modelCopy userListeningHistoryUpdateControlModelUUID];
  [(HMDUserDataController *)self setUserListeningHistoryUpdateControlModelUUID:userListeningHistoryUpdateControlModelUUID];

  supportsAutomaticHH2MigrationModelUUID = [modelCopy supportsAutomaticHH2MigrationModelUUID];
  [(HMDUserDataController *)self setSupportsAutomaticHH2MigrationModelUUID:supportsAutomaticHH2MigrationModelUUID];

  settingsRootUUID = [modelCopy settingsRootUUID];
  [(HMDUserDataController *)self setSharedSettingsRootUUID:settingsRootUUID];

  assistantAccessControlModelUUID2 = [(HMDUserDataController *)self assistantAccessControlModelUUID];
  [controllerCopy registerForAssistantAccessControlModelUpdates:self modelID:assistantAccessControlModelUUID2];

  mediaContentProfileAccessControlModelUUID2 = [(HMDUserDataController *)self mediaContentProfileAccessControlModelUUID];
  [controllerCopy registerForMediaContentAccessControlModelUpdates:self modelID:mediaContentProfileAccessControlModelUUID2];

  userListeningHistoryUpdateControlModelUUID2 = [(HMDUserDataController *)self userListeningHistoryUpdateControlModelUUID];
  [controllerCopy registerForUserListeningHistoryUpdateControlModelUpdates:self modelID:userListeningHistoryUpdateControlModelUUID2];

  supportsAutomaticHH2MigrationModelUUID2 = [(HMDUserDataController *)self supportsAutomaticHH2MigrationModelUUID];
  [controllerCopy registerForUserSupportsAutomaticHH2MigrationModelUpdates:self modelID:supportsAutomaticHH2MigrationModelUUID2];

  v19 = objc_autoreleasePoolPush();
  selfCopy = self;
  v21 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = HMFGetLogIdentifier();
    assistantAccessControlModelUUID3 = [(HMDUserDataController *)selfCopy assistantAccessControlModelUUID];
    *buf = 138543618;
    v107 = v22;
    v108 = 2112;
    v109 = assistantAccessControlModelUUID3;
    _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_INFO, "%{public}@Loading assistant access control model %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v19);
  assistantAccessControlModelUUID4 = [(HMDUserDataController *)selfCopy assistantAccessControlModelUUID];
  v105 = 0;
  v25 = [controllerCopy loadAssistantAccessControlModelWithModelID:assistantAccessControlModelUUID4 error:&v105];
  v26 = v105;

  v27 = objc_autoreleasePoolPush();
  v28 = selfCopy;
  v29 = HMFGetOSLogHandle();
  v30 = v29;
  v31 = 0x277CBE000;
  if (v25)
  {
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      v32 = HMFGetLogIdentifier();
      requiresAuthenticationForSecureRequests = [v25 requiresAuthenticationForSecureRequests];
      [v25 activityNotificationsEnabledForPersonalRequests];
      v101 = controllerCopy;
      v34 = v26;
      v36 = v35 = modelCopy;
      accessoryUUIDs = [v25 accessoryUUIDs];
      *buf = 138544130;
      v107 = v32;
      v108 = 2112;
      v109 = requiresAuthenticationForSecureRequests;
      v110 = 2112;
      v111 = v36;
      v112 = 2112;
      v113 = accessoryUUIDs;
      _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_INFO, "%{public}@Loaded assistant access control requires auth: %@, activity notifications enabled for personal requests: %@, accessories: %@", buf, 0x2Au);

      modelCopy = v35;
      v26 = v34;
      controllerCopy = v101;

      v31 = 0x277CBE000uLL;
    }

    objc_autoreleasePoolPop(v27);
    v38 = [*(v31 + 2904) set];
    accessoryUUIDs2 = [v25 accessoryUUIDs];
    [v38 na_safeAddObjectsFromArray:accessoryUUIDs2];

    siriEndpointAccessoryUUIDs = [v25 siriEndpointAccessoryUUIDs];
    [v38 na_safeAddObjectsFromArray:siriEndpointAccessoryUUIDs];

    [(HMDUserDataController *)v28 setAssistantAccessControlAccessoryUUIDs:v38];
    requiresAuthenticationForSecureRequests2 = [v25 requiresAuthenticationForSecureRequests];
    -[HMDUserDataController setAssistantAccessControlRequiresAuthenticationForSecureRequests:](v28, "setAssistantAccessControlRequiresAuthenticationForSecureRequests:", [requiresAuthenticationForSecureRequests2 BOOLValue]);

    if ([v25 hmbPropertyWasSet:@"activityNotificationsEnabledForPersonalRequests"])
    {
      activityNotificationsEnabledForPersonalRequests = [v25 activityNotificationsEnabledForPersonalRequests];
      -[HMDUserDataController setAssistantAccessControlActivityNotificationsEnabledForPersonalRequests:](v28, "setAssistantAccessControlActivityNotificationsEnabledForPersonalRequests:", [activityNotificationsEnabledForPersonalRequests BOOLValue]);
    }

    else
    {
      [(HMDUserDataController *)v28 setAssistantAccessControlActivityNotificationsEnabledForPersonalRequests:1];
    }
  }

  else
  {
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v43 = HMFGetLogIdentifier();
      *buf = 138543618;
      v107 = v43;
      v108 = 2112;
      v109 = v26;
      _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_ERROR, "%{public}@Unable to load assistant access control %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v27);
  }

  v44 = objc_autoreleasePoolPush();
  v45 = v28;
  v46 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
  {
    v47 = HMFGetLogIdentifier();
    mediaContentProfileAccessControlModelUUID3 = [(HMDUserDataController *)v45 mediaContentProfileAccessControlModelUUID];
    *buf = 138543618;
    v107 = v47;
    v108 = 2112;
    v109 = mediaContentProfileAccessControlModelUUID3;
    _os_log_impl(&dword_2531F8000, v46, OS_LOG_TYPE_INFO, "%{public}@Loading media content profile access control model %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v44);
  mediaContentProfileAccessControlModelUUID4 = [(HMDUserDataController *)v45 mediaContentProfileAccessControlModelUUID];
  v104 = 0;
  v50 = [controllerCopy loadMediaContentAccessControlModelWithModelID:mediaContentProfileAccessControlModelUUID4 error:&v104];
  v51 = v104;

  v52 = objc_autoreleasePoolPush();
  v53 = v45;
  v54 = HMFGetOSLogHandle();
  v55 = v54;
  if (v50)
  {
    if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
    {
      v56 = HMFGetLogIdentifier();
      accessories = [v50 accessories];
      *buf = 138543618;
      v107 = v56;
      v108 = 2112;
      v109 = accessories;
      _os_log_impl(&dword_2531F8000, v55, OS_LOG_TYPE_INFO, "%{public}@Loaded media content profile access control accessories %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v52);
    v58 = *(v31 + 2904);
    accessories2 = [v50 accessories];
    v60 = [v58 setWithArray:accessories2];
    [(HMDUserDataController *)v53 setMediaContentProfileAccessControlAccessories:v60];
  }

  else
  {
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      v61 = HMFGetLogIdentifier();
      *buf = 138543618;
      v107 = v61;
      v108 = 2112;
      v109 = v51;
      _os_log_impl(&dword_2531F8000, v55, OS_LOG_TYPE_ERROR, "%{public}@Unable to load media content profile accessories %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v52);
  }

  v62 = objc_autoreleasePoolPush();
  v63 = v53;
  v64 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
  {
    v65 = HMFGetLogIdentifier();
    userListeningHistoryUpdateControlModelUUID3 = [(HMDUserDataController *)v63 userListeningHistoryUpdateControlModelUUID];
    *buf = 138543618;
    v107 = v65;
    v108 = 2112;
    v109 = userListeningHistoryUpdateControlModelUUID3;
    _os_log_impl(&dword_2531F8000, v64, OS_LOG_TYPE_INFO, "%{public}@Loading user listening history update model %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v62);
  userListeningHistoryUpdateControlModelUUID4 = [(HMDUserDataController *)v63 userListeningHistoryUpdateControlModelUUID];
  v103 = 0;
  v68 = [controllerCopy loadUserListeningHistoryUpdateControlModelWithModelID:userListeningHistoryUpdateControlModelUUID4 error:&v103];
  v69 = v103;

  v70 = objc_autoreleasePoolPush();
  v71 = v63;
  v72 = HMFGetOSLogHandle();
  v73 = v72;
  if (v68)
  {
    if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
    {
      v74 = HMFGetLogIdentifier();
      accessories3 = [v68 accessories];
      *buf = 138543618;
      v107 = v74;
      v108 = 2112;
      v109 = accessories3;
      _os_log_impl(&dword_2531F8000, v73, OS_LOG_TYPE_INFO, "%{public}@Loaded user listening history update accessories %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v70);
    v76 = *(v31 + 2904);
    accessories4 = [v68 accessories];
    v78 = [v76 setWithArray:accessories4];
    [(HMDUserDataController *)v71 setUserListeningHistoryUpdateControlModelAccessories:v78];
  }

  else
  {
    if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
    {
      v79 = HMFGetLogIdentifier();
      *buf = 138543618;
      v107 = v79;
      v108 = 2112;
      v109 = v69;
      _os_log_impl(&dword_2531F8000, v73, OS_LOG_TYPE_ERROR, "%{public}@Unable to load update listening history accessories %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v70);
  }

  v80 = objc_autoreleasePoolPush();
  v81 = v71;
  v82 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v82, OS_LOG_TYPE_INFO))
  {
    v83 = HMFGetLogIdentifier();
    supportsAutomaticHH2MigrationModelUUID3 = [(HMDUserDataController *)v81 supportsAutomaticHH2MigrationModelUUID];
    *buf = 138543618;
    v107 = v83;
    v108 = 2112;
    v109 = supportsAutomaticHH2MigrationModelUUID3;
    _os_log_impl(&dword_2531F8000, v82, OS_LOG_TYPE_INFO, "%{public}@Loading user supports automatic HH2 migration model %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v80);
  supportsAutomaticHH2MigrationModelUUID4 = [(HMDUserDataController *)v81 supportsAutomaticHH2MigrationModelUUID];
  v102 = 0;
  v86 = [controllerCopy loadUserSupportsAutomaticHH2MigrationModelWithModelID:supportsAutomaticHH2MigrationModelUUID4 error:&v102];
  v87 = v102;

  if (v86)
  {
    supportsAutomaticHH2Migration = [v86 supportsAutomaticHH2Migration];
    -[HMDUserDataController setSupportsHH2MigrationByOwnerManual:](v81, "setSupportsHH2MigrationByOwnerManual:", [supportsAutomaticHH2Migration BOOLValue]);

    supportsHH2MigrationByOwnerAuto = [v86 supportsHH2MigrationByOwnerAuto];
    -[HMDUserDataController setSupportsHH2MigrationByOwnerAuto:](v81, "setSupportsHH2MigrationByOwnerAuto:", [supportsHH2MigrationByOwnerAuto BOOLValue]);

    v90 = objc_autoreleasePoolPush();
    v91 = v81;
    v92 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v92, OS_LOG_TYPE_INFO))
    {
      v93 = HMFGetLogIdentifier();
      [(HMDUserDataController *)v91 supportsHH2MigrationByOwnerManual];
      v94 = HMFBooleanToString();
      [(HMDUserDataController *)v91 supportsHH2MigrationByOwnerAuto];
      v95 = HMFBooleanToString();
      *buf = 138543874;
      v107 = v93;
      v108 = 2114;
      v109 = v94;
      v110 = 2114;
      v111 = v95;
      _os_log_impl(&dword_2531F8000, v92, OS_LOG_TYPE_INFO, "%{public}@Loaded user supports automatic HH2 migration model by owner manual = %{public}@, by owner auto = %{public}@", buf, 0x20u);
    }
  }

  else
  {
    v90 = objc_autoreleasePoolPush();
    v96 = v81;
    v92 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
    {
      v97 = HMFGetLogIdentifier();
      *buf = 138543618;
      v107 = v97;
      v108 = 2112;
      v109 = v87;
      _os_log_impl(&dword_2531F8000, v92, OS_LOG_TYPE_ERROR, "%{public}@Unable to load user supports automatic HH2 migration model %@", buf, 0x16u);
    }
  }

  objc_autoreleasePoolPop(v90);
  loadUserSettings = [controllerCopy loadUserSettings];
  sharedSettingsController = [(HMDUserDataController *)v81 sharedSettingsController];
  [sharedSettingsController loadWithModels:loadUserSettings];

  sharedSettingsController2 = [(HMDUserDataController *)v81 sharedSettingsController];
  [sharedSettingsController2 configure];

  [(HMDUserDataController *)v81 eventDidInitializeSharedZone];
}

- (void)eventDidInitializeSharedZone
{
  v24 = *MEMORY[0x277D85DE8];
  clientQueue = [(HMDUserDataController *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  self->_isModifyingState = 1;
  state = [(HMDUserDataController *)self state];
  if (state > 1)
  {
    if (state != 2)
    {
      if (state != 3)
      {
        goto LABEL_17;
      }

      goto LABEL_7;
    }

    v16 = objc_autoreleasePoolPush();
    selfCopy = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      v20 = 138543362;
      v21 = v19;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Moving to initialized on initializing shared zone", &v20, 0xCu);
    }

    objc_autoreleasePoolPop(v16);
    v14 = selfCopy;
    v15 = 1;
LABEL_16:
    [(HMDUserDataController *)v14 setState:v15];
    goto LABEL_17;
  }

  if (!state)
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v20 = 138543362;
      v21 = v13;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Moving to pending private on initializing shared zone", &v20, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    v14 = selfCopy2;
    v15 = 3;
    goto LABEL_16;
  }

  if (state != 1)
  {
    goto LABEL_17;
  }

LABEL_7:
  v5 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDUserDataController state](selfCopy3, "state")}];
    v20 = 138543618;
    v21 = v8;
    v22 = 2112;
    v23 = v9;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_ERROR, "%{public}@Unexpected from state on init shared zone event %@", &v20, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
LABEL_17:
  self->_isModifyingState = 0;
}

- (void)eventDidInitializePrivateZone
{
  v24 = *MEMORY[0x277D85DE8];
  clientQueue = [(HMDUserDataController *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  self->_isModifyingState = 1;
  state = [(HMDUserDataController *)self state];
  if (state - 1 < 2)
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDUserDataController state](selfCopy, "state")}];
      v20 = 138543618;
      v21 = v14;
      v22 = 2112;
      v23 = v15;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Unexpected from state on init private zone event %@", &v20, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
  }

  else
  {
    if (state == 3)
    {
      v16 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = HMFGetLogIdentifier();
        v20 = 138543362;
        v21 = v19;
        _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Moving to initialized on initializing private zone", &v20, 0xCu);
      }

      objc_autoreleasePoolPop(v16);
      v9 = selfCopy2;
      v10 = 1;
      goto LABEL_13;
    }

    if (!state)
    {
      v5 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v7 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = HMFGetLogIdentifier();
        v20 = 138543362;
        v21 = v8;
        _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Moving to pending shared on initializing private zone", &v20, 0xCu);
      }

      objc_autoreleasePoolPop(v5);
      v9 = selfCopy3;
      v10 = 2;
LABEL_13:
      [(HMDUserDataController *)v9 setState:v10];
    }
  }

  self->_isModifyingState = 0;
}

- (void)setState:(unint64_t)state
{
  v19 = *MEMORY[0x277D85DE8];
  clientQueue = [(HMDUserDataController *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  os_unfair_lock_lock_with_options();
  if (self->_state == state)
  {

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v10 = HMDUserDataControllerStateAsString(self->_state);
      v11 = HMDUserDataControllerStateAsString(state);
      v13 = 138543874;
      v14 = v9;
      v15 = 2112;
      v16 = v10;
      v17 = 2112;
      v18 = v11;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Moving state from %@ to %@", &v13, 0x20u);
    }

    objc_autoreleasePoolPop(v6);
    self->_state = state;
    os_unfair_lock_unlock(&self->_lock);
    if (state == 1)
    {
      notificationCenter = [(HMDUserDataController *)selfCopy notificationCenter];
      [notificationCenter postNotificationName:@"HMDUserDataControllerInitializedNotificationKey" object:selfCopy];
    }
  }
}

- (unint64_t)state
{
  os_unfair_lock_lock_with_options();
  state = self->_state;
  os_unfair_lock_unlock(&self->_lock);
  return state;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if ([(HMDUserDataController *)self isInitialized])
  {
    sharedSettingsController = [(HMDUserDataController *)self sharedSettingsController];
    [sharedSettingsController encodeWithCoder:coderCopy];

    privateSettingsController = [(HMDUserDataController *)self privateSettingsController];
    [privateSettingsController encodeWithCoder:coderCopy];

    [coderCopy encodeBool:self->_state == 1 forKey:*MEMORY[0x277CD0FA0]];
  }
}

- (NSArray)userListeningHistoryUpdateControlModelAccessoriesToEncode
{
  userListeningHistoryUpdateControlModelAccessories = [(HMDUserDataController *)self userListeningHistoryUpdateControlModelAccessories];
  allObjects = [userListeningHistoryUpdateControlModelAccessories allObjects];
  v4 = objc_msgSend_copy(allObjects);

  return v4;
}

- (NSArray)mediaContentProfileAccessControlAccessoriesToEncode
{
  mediaContentProfileAccessControlAccessories = [(HMDUserDataController *)self mediaContentProfileAccessControlAccessories];
  allObjects = [mediaContentProfileAccessControlAccessories allObjects];
  v4 = objc_msgSend_copy(allObjects);

  return v4;
}

- (NSArray)assistantAccessControlAccessoriesToEncode
{
  if ([(HMDUserDataController *)self isInitialized])
  {
    assistantAccessControlAccessoryUUIDs = [(HMDUserDataController *)self assistantAccessControlAccessoryUUIDs];
    allObjects = [assistantAccessControlAccessoryUUIDs allObjects];
    v5 = objc_msgSend_copy(allObjects);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)configure
{
  clientQueue = [(HMDUserDataController *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__HMDUserDataController_configure__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(clientQueue, block);
}

void __34__HMDUserDataController_configure__block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  v2 = [v4 sharedZoneControllerForUserDataController:*(a1 + 32)];
  [v2 start];

  v3 = [v4 privateZoneControllerForUserDataController:*(a1 + 32)];
  [v3 start];
}

- (HMDUserDataController)initWithDelegate:(id)delegate dataSource:(id)source queue:(id)queue userID:(id)d homeID:(id)iD sharedSettingsController:(id)controller privateSettingsController:(id)settingsController isCurrentUser:(BOOL)self0
{
  settingsControllerCopy = settingsController;
  controllerCopy = controller;
  iDCopy = iD;
  dCopy = d;
  queueCopy = queue;
  sourceCopy = source;
  delegateCopy = delegate;
  v24 = objc_opt_new();
  LOBYTE(v27) = user;
  v25 = [(HMDUserDataController *)self initWithDelegate:delegateCopy dataSource:sourceCopy queue:queueCopy userID:dCopy homeID:iDCopy sharedSettingsController:controllerCopy privateSettingsController:settingsControllerCopy timerCreator:v24 isCurrentUser:v27];

  return v25;
}

- (HMDUserDataController)initWithDelegate:(id)delegate dataSource:(id)source queue:(id)queue userID:(id)d homeID:(id)iD sharedSettingsController:(id)controller privateSettingsController:(id)settingsController timerCreator:(id)self0 isCurrentUser:(BOOL)self1
{
  obj = delegate;
  sourceCopy = source;
  queueCopy = queue;
  dCopy = d;
  iDCopy = iD;
  controllerCopy = controller;
  settingsControllerCopy = settingsController;
  creatorCopy = creator;
  v34.receiver = self;
  v34.super_class = HMDUserDataController;
  v20 = [(HMDUserDataController *)&v34 init];
  v21 = v20;
  if (v20)
  {
    v20->_state = 2 * (settingsControllerCopy == 0);
    v20->_isModifyingState = 0;
    objc_storeStrong(&v20->_clientQueue, queue);
    objc_storeWeak(&v21->_delegate, obj);
    objc_storeStrong(&v21->_timerCreator, creator);
    v22 = [MEMORY[0x277CBEB58] set];
    assistantAccessControlAccessoryUUIDs = v21->_assistantAccessControlAccessoryUUIDs;
    v21->_assistantAccessControlAccessoryUUIDs = v22;

    *&v21->_assistantAccessControlRequiresAuthenticationForSecureRequests = 256;
    v24 = [MEMORY[0x277CBEB58] set];
    mediaContentProfileAccessControlAccessories = v21->_mediaContentProfileAccessControlAccessories;
    v21->_mediaContentProfileAccessControlAccessories = v24;

    objc_storeStrong(&v21->_userUUID, d);
    objc_storeStrong(&v21->_homeUUID, iD);
    objc_storeStrong(&v21->_sharedSettingsController, controller);
    objc_storeStrong(&v21->_privateSettingsController, settingsController);
    objc_storeWeak(&v21->_dataSource, sourceCopy);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    notificationCenter = v21->_notificationCenter;
    v21->_notificationCenter = defaultCenter;

    v21->_isCurrentUser = user;
  }

  return v21;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t99_143651 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t99_143651, &__block_literal_global_197_143652);
  }

  v3 = logCategory__hmf_once_v100_143653;

  return v3;
}

uint64_t __36__HMDUserDataController_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v100_143653;
  logCategory__hmf_once_v100_143653 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end