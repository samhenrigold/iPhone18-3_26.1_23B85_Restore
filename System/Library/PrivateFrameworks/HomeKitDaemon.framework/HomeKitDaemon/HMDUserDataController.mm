@interface HMDUserDataController
+ (id)logCategory;
- (HMBModel)assistantAccessControlModelToReset;
- (HMDUserDataController)initWithDelegate:(id)delegate dataSource:(id)source queue:(id)queue userID:(id)d homeID:(id)iD sharedSettingsController:(id)controller privateSettingsController:(id)settingsController isCurrentUser:(BOOL)self0;
- (HMDUserDataController)initWithDelegate:(id)delegate dataSource:(id)source queue:(id)queue userID:(id)d homeID:(id)iD sharedSettingsController:(id)controller privateSettingsController:(id)settingsController timerCreator:(id)self0 isCurrentUser:(BOOL)self1;
- (HMDUserDataControllerDataSource)dataSource;
- (HMDUserDataControllerDelegate)delegate;
- (NSArray)assistantAccessControlAccessoriesToEncode;
- (NSArray)mediaContentProfileAccessControlAccessoriesToEncode;
- (NSArray)userListeningHistoryUpdateControlModelAccessoriesToEncode;
- (id)logIdentifier;
- (id)updateListeningHistoryModelToReset;
- (int64_t)sharedUserSettingsLogEventBackingStoreControllerRunState;
- (unint64_t)state;
- (void)_invalidatePrivateZoneFirstLoadTimer;
- (void)_invalidateSharedZoneFirstLoadTimer;
- (void)_startPrivateZoneFirstLoadTimer;
- (void)_startSharedZoneFirstLoadTimer;
- (void)assistantAccessControlModelRemoved:(id)removed;
- (void)assistantAccessControlModelUpdated:(id)updated previousModel:(id)model;
- (void)configure;
- (void)enableUserListeningHistoryForAccessory:(id)accessory;
- (void)eventDidInitializePrivateZone;
- (void)eventDidInitializeSharedZone;
- (void)handleAssistantAccessControlAccessoryUUIDsUpdated:(id)updated requireAuthenticationForSecureRequests:(BOOL)requests activityNotificationsEnabledForPersonalRequests:(BOOL)personalRequests completion:(id)completion;
- (void)handleMediaContentProfileAccessControlUpdatedAccessoryUUIDs:(id)ds completion:(id)completion;
- (void)handleStartForZoneController:(id)controller;
- (void)handleUserListeningHistoryUpdateControlUpdatedAccessoryUUIDs:(id)ds completion:(id)completion;
- (void)initializePrivateZoneController:(id)controller userDataModel:(id)model;
- (void)initializeSharedZoneController:(id)controller userDataModel:(id)model;
- (void)mediaContentProfileAccessControlModelRemoved:(id)removed;
- (void)mediaContentProfileAccessControlModelUpdated:(id)updated previousModel:(id)model;
- (void)performFirstRunOperationsOnPrivateZoneController:(id)controller;
- (void)performFirstRunOperationsOnSharedZoneController:(id)controller;
- (void)setState:(unint64_t)state;
- (void)sharedUserDataModelUpdated:(id)updated previousModel:(id)model;
- (void)timerDidFire:(id)fire;
- (void)userListeningHistoryUpdateControlModelRemoved:(id)removed;
- (void)userListeningHistoryUpdateControlModelUpdated:(id)updated previousModel:(id)model;
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
  v7[3] = &unk_27868A750;
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
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Attempting to recreate data in shared user data zone", &v18, 0xCu);
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
        _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Attempting to recreate data in private user data zone", &v18, 0xCu);
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
        _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Unexpected timer fired %@", &v18, 0x16u);
      }

      objc_autoreleasePoolPop(v11);
    }
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
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@user update listening history access control was removed", &v11, 0xCu);
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
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Updating listening history update accessories to %@", &v19, 0x16u);
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
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Media content profile access control was removed", &v11, 0xCu);
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
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Updating media content profile access control to %@", &v19, 0x16u);
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
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Assistant access control was removed", &v10, 0xCu);
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
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Updating assistant access control on zone update to require auth: %@, accessories:%@", &v28, 0x20u);
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
    _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_INFO, "%{public}@Model in zone update has no changes %@", &v28, 0x16u);
  }

  objc_autoreleasePoolPop(v24);
LABEL_10:
}

- (void)sharedUserDataModelUpdated:(id)updated previousModel:(id)model
{
  v50 = *MEMORY[0x277D85DE8];
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
      v45 = v15;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@User Shared model changed, but no diff in ULH uuid", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
  }

  else
  {
    delegate = [(HMDUserDataController *)self delegate];
    v17 = [delegate sharedZoneControllerForUserDataController:self];
    v18 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      userListeningHistoryUpdateControlModelUUID3 = [(HMDUserDataController *)selfCopy2 userListeningHistoryUpdateControlModelUUID];
      [updatedCopy userListeningHistoryUpdateControlModelUUID];
      v24 = v23 = modelCopy;
      *buf = 138543874;
      v45 = v21;
      v46 = 2112;
      v47 = userListeningHistoryUpdateControlModelUUID3;
      v48 = 2112;
      v49 = v24;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@Registering and Loading user listening history update since the UUID flipped from =%@, to =%@", buf, 0x20u);

      modelCopy = v23;
    }

    objc_autoreleasePoolPop(v18);
    userListeningHistoryUpdateControlModelUUID4 = [updatedCopy userListeningHistoryUpdateControlModelUUID];
    [(HMDUserDataController *)selfCopy2 setUserListeningHistoryUpdateControlModelUUID:userListeningHistoryUpdateControlModelUUID4];

    userListeningHistoryUpdateControlModelUUID5 = [(HMDUserDataController *)selfCopy2 userListeningHistoryUpdateControlModelUUID];
    v43 = 0;
    v27 = [v17 loadUserListeningHistoryUpdateControlModelWithModelID:userListeningHistoryUpdateControlModelUUID5 error:&v43];
    v28 = v43;

    userListeningHistoryUpdateControlModelUUID6 = [(HMDUserDataController *)selfCopy2 userListeningHistoryUpdateControlModelUUID];
    [v17 registerForUserListeningHistoryUpdateControlModelUpdates:selfCopy2 modelID:userListeningHistoryUpdateControlModelUUID6];

    v30 = objc_autoreleasePoolPush();
    v31 = selfCopy2;
    v32 = HMFGetOSLogHandle();
    v33 = v32;
    if (v27)
    {
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v42 = delegate;
        v34 = v28;
        v36 = v35 = modelCopy;
        accessories = [v27 accessories];
        *buf = 138543618;
        v45 = v36;
        v46 = 2112;
        v47 = accessories;
        _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_INFO, "%{public}@Loaded user listening history update accessories %@", buf, 0x16u);

        modelCopy = v35;
        v28 = v34;
        delegate = v42;
      }

      objc_autoreleasePoolPop(v30);
      v38 = MEMORY[0x277CBEB58];
      accessories2 = [v27 accessories];
      v40 = [v38 setWithArray:accessories2];
      [(HMDUserDataController *)v31 setUserListeningHistoryUpdateControlModelAccessories:v40];

      [delegate userDataControllerDidUpdateUserListeningHistoryUpdateControl:v31];
    }

    else
    {
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v41 = HMFGetLogIdentifier();
        *buf = 138543618;
        v45 = v41;
        v46 = 2112;
        v47 = v28;
        _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_ERROR, "%{public}@Unable to load update listening history accessories %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v30);
    }
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
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@ULH for accessory %@ is already enabled", buf, 0x16u);
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
    v13[3] = &unk_27868A1D8;
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
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Enabling ULH for accessory %@ failed with %@", &v9, 0x20u);
    }

    objc_autoreleasePoolPop(v4);
  }
}

- (void)handleUserListeningHistoryUpdateControlUpdatedAccessoryUUIDs:(id)ds completion:(id)completion
{
  v4 = _Block_copy(completion);
  if (v4)
  {
    v6 = v4;
    v5 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    v6[2](v6, v5);

    v4 = v6;
  }
}

- (void)handleMediaContentProfileAccessControlUpdatedAccessoryUUIDs:(id)ds completion:(id)completion
{
  v4 = _Block_copy(completion);
  if (v4)
  {
    v6 = v4;
    v5 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    v6[2](v6, v5);

    v4 = v6;
  }
}

- (void)handleAssistantAccessControlAccessoryUUIDsUpdated:(id)updated requireAuthenticationForSecureRequests:(BOOL)requests activityNotificationsEnabledForPersonalRequests:(BOOL)personalRequests completion:(id)completion
{
  v6 = _Block_copy(completion);
  if (v6)
  {
    v8 = v6;
    v7 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    v8[2](v8, v7);

    v6 = v8;
  }
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
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Starting timer to perform first run operations on shared zone. %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    privateZoneFirstLoadTimer4 = [(HMDUserDataController *)selfCopy privateZoneFirstLoadTimer];
    [privateZoneFirstLoadTimer4 resume];
  }
}

- (void)performFirstRunOperationsOnPrivateZoneController:(id)controller
{
  v12 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
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
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@HMDUserDataController: Code disabled as we are running in HH2", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
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
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Starting timer to perform first run operations on shared zone. %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    sharedZoneFirstLoadTimer4 = [(HMDUserDataController *)selfCopy sharedZoneFirstLoadTimer];
    [sharedZoneFirstLoadTimer4 resume];
  }
}

- (void)performFirstRunOperationsOnSharedZoneController:(id)controller
{
  v11 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@In HH2: Not running performFirstRunOperationsOnSharedZoneController", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
}

- (void)initializePrivateZoneController:(id)controller userDataModel:(id)model
{
  modelCopy = model;
  clientQueue = [(HMDUserDataController *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  settingsRootUUID = [modelCopy settingsRootUUID];

  [(HMDUserDataController *)self setPrivateSettingsRootUUID:settingsRootUUID];
}

- (void)initializeSharedZoneController:(id)controller userDataModel:(id)model
{
  v90 = *MEMORY[0x277D85DE8];
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

  settingsRootUUID = [modelCopy settingsRootUUID];
  [(HMDUserDataController *)self setSharedSettingsRootUUID:settingsRootUUID];

  assistantAccessControlModelUUID2 = [(HMDUserDataController *)self assistantAccessControlModelUUID];
  [controllerCopy registerForAssistantAccessControlModelUpdates:self modelID:assistantAccessControlModelUUID2];

  mediaContentProfileAccessControlModelUUID2 = [(HMDUserDataController *)self mediaContentProfileAccessControlModelUUID];
  [controllerCopy registerForMediaContentAccessControlModelUpdates:self modelID:mediaContentProfileAccessControlModelUUID2];

  userListeningHistoryUpdateControlModelUUID2 = [(HMDUserDataController *)self userListeningHistoryUpdateControlModelUUID];
  [controllerCopy registerForUserListeningHistoryUpdateControlModelUpdates:self modelID:userListeningHistoryUpdateControlModelUUID2];

  v17 = objc_autoreleasePoolPush();
  selfCopy = self;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = HMFGetLogIdentifier();
    assistantAccessControlModelUUID3 = [(HMDUserDataController *)selfCopy assistantAccessControlModelUUID];
    *buf = 138543618;
    v83 = v20;
    v84 = 2112;
    v85 = assistantAccessControlModelUUID3;
    _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Loading assistant access control model %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v17);
  assistantAccessControlModelUUID4 = [(HMDUserDataController *)selfCopy assistantAccessControlModelUUID];
  v81 = 0;
  v23 = [controllerCopy loadAssistantAccessControlModelWithModelID:assistantAccessControlModelUUID4 error:&v81];
  v24 = v81;

  v25 = objc_autoreleasePoolPush();
  v26 = selfCopy;
  v27 = HMFGetOSLogHandle();
  v28 = v27;
  v29 = 0x277CBE000;
  if (v23)
  {
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v30 = HMFGetLogIdentifier();
      [v23 requiresAuthenticationForSecureRequests];
      v78 = controllerCopy;
      v31 = v24;
      v33 = v32 = modelCopy;
      activityNotificationsEnabledForPersonalRequests = [v23 activityNotificationsEnabledForPersonalRequests];
      accessoryUUIDs = [v23 accessoryUUIDs];
      *buf = 138544130;
      v83 = v30;
      v84 = 2112;
      v85 = v33;
      v86 = 2112;
      v87 = activityNotificationsEnabledForPersonalRequests;
      v88 = 2112;
      v89 = accessoryUUIDs;
      _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_INFO, "%{public}@Loaded assistant access control requires auth: %@, activity notifications enabled for personal requests: %@, accessories: %@", buf, 0x2Au);

      v29 = 0x277CBE000uLL;
      modelCopy = v32;
      v24 = v31;
      controllerCopy = v78;
    }

    objc_autoreleasePoolPop(v25);
    v36 = [*(v29 + 2904) set];
    accessoryUUIDs2 = [v23 accessoryUUIDs];
    [v36 na_safeAddObjectsFromArray:accessoryUUIDs2];

    siriEndpointAccessoryUUIDs = [v23 siriEndpointAccessoryUUIDs];
    [v36 na_safeAddObjectsFromArray:siriEndpointAccessoryUUIDs];

    [(HMDUserDataController *)v26 setAssistantAccessControlAccessoryUUIDs:v36];
    requiresAuthenticationForSecureRequests = [v23 requiresAuthenticationForSecureRequests];
    -[HMDUserDataController setAssistantAccessControlRequiresAuthenticationForSecureRequests:](v26, "setAssistantAccessControlRequiresAuthenticationForSecureRequests:", [requiresAuthenticationForSecureRequests BOOLValue]);

    if ([v23 hmbPropertyWasSet:@"activityNotificationsEnabledForPersonalRequests"])
    {
      activityNotificationsEnabledForPersonalRequests2 = [v23 activityNotificationsEnabledForPersonalRequests];
      -[HMDUserDataController setAssistantAccessControlActivityNotificationsEnabledForPersonalRequests:](v26, "setAssistantAccessControlActivityNotificationsEnabledForPersonalRequests:", [activityNotificationsEnabledForPersonalRequests2 BOOLValue]);
    }

    else
    {
      [(HMDUserDataController *)v26 setAssistantAccessControlActivityNotificationsEnabledForPersonalRequests:1];
    }
  }

  else
  {
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v41 = HMFGetLogIdentifier();
      *buf = 138543618;
      v83 = v41;
      v84 = 2112;
      v85 = v24;
      _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_ERROR, "%{public}@Unable to load assistant access control %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v25);
  }

  v42 = objc_autoreleasePoolPush();
  v43 = v26;
  v44 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
  {
    v45 = HMFGetLogIdentifier();
    mediaContentProfileAccessControlModelUUID3 = [(HMDUserDataController *)v43 mediaContentProfileAccessControlModelUUID];
    *buf = 138543618;
    v83 = v45;
    v84 = 2112;
    v85 = mediaContentProfileAccessControlModelUUID3;
    _os_log_impl(&dword_229538000, v44, OS_LOG_TYPE_INFO, "%{public}@Loading media content profile access control model %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v42);
  mediaContentProfileAccessControlModelUUID4 = [(HMDUserDataController *)v43 mediaContentProfileAccessControlModelUUID];
  v80 = 0;
  v48 = [controllerCopy loadMediaContentAccessControlModelWithModelID:mediaContentProfileAccessControlModelUUID4 error:&v80];
  v49 = v80;

  v50 = objc_autoreleasePoolPush();
  v51 = v43;
  v52 = HMFGetOSLogHandle();
  v53 = v52;
  if (v48)
  {
    if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
    {
      v54 = HMFGetLogIdentifier();
      accessories = [v48 accessories];
      *buf = 138543618;
      v83 = v54;
      v84 = 2112;
      v85 = accessories;
      _os_log_impl(&dword_229538000, v53, OS_LOG_TYPE_INFO, "%{public}@Loaded media content profile access control accessories %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v50);
    v56 = *(v29 + 2904);
    accessories2 = [v48 accessories];
    v58 = [v56 setWithArray:accessories2];
    [(HMDUserDataController *)v51 setMediaContentProfileAccessControlAccessories:v58];
  }

  else
  {
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      v59 = HMFGetLogIdentifier();
      *buf = 138543618;
      v83 = v59;
      v84 = 2112;
      v85 = v49;
      _os_log_impl(&dword_229538000, v53, OS_LOG_TYPE_ERROR, "%{public}@Unable to load media content profile accessories %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v50);
  }

  v60 = objc_autoreleasePoolPush();
  v61 = v51;
  v62 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
  {
    v63 = HMFGetLogIdentifier();
    userListeningHistoryUpdateControlModelUUID3 = [(HMDUserDataController *)v61 userListeningHistoryUpdateControlModelUUID];
    *buf = 138543618;
    v83 = v63;
    v84 = 2112;
    v85 = userListeningHistoryUpdateControlModelUUID3;
    _os_log_impl(&dword_229538000, v62, OS_LOG_TYPE_INFO, "%{public}@Loading user listening history update model %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v60);
  userListeningHistoryUpdateControlModelUUID4 = [(HMDUserDataController *)v61 userListeningHistoryUpdateControlModelUUID];
  v79 = 0;
  v66 = [controllerCopy loadUserListeningHistoryUpdateControlModelWithModelID:userListeningHistoryUpdateControlModelUUID4 error:&v79];
  v67 = v79;

  v68 = objc_autoreleasePoolPush();
  v69 = v61;
  v70 = HMFGetOSLogHandle();
  v71 = v70;
  if (v66)
  {
    if (os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
    {
      v72 = HMFGetLogIdentifier();
      accessories3 = [v66 accessories];
      *buf = 138543618;
      v83 = v72;
      v84 = 2112;
      v85 = accessories3;
      _os_log_impl(&dword_229538000, v71, OS_LOG_TYPE_INFO, "%{public}@Loaded user listening history update accessories %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v68);
    v74 = *(v29 + 2904);
    accessories4 = [v66 accessories];
    v76 = [v74 setWithArray:accessories4];
    [(HMDUserDataController *)v69 setUserListeningHistoryUpdateControlModelAccessories:v76];
  }

  else
  {
    if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
    {
      v77 = HMFGetLogIdentifier();
      *buf = 138543618;
      v83 = v77;
      v84 = 2112;
      v85 = v67;
      _os_log_impl(&dword_229538000, v71, OS_LOG_TYPE_ERROR, "%{public}@Unable to load update listening history accessories %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v68);
  }
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
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Moving to initialized on initializing shared zone", &v20, 0xCu);
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
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Moving to pending private on initializing shared zone", &v20, 0xCu);
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
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@Unexpected from state on init shared zone event %@", &v20, 0x16u);
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
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Unexpected from state on init private zone event %@", &v20, 0x16u);
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
        _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Moving to initialized on initializing private zone", &v20, 0xCu);
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
        _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Moving to pending shared on initializing private zone", &v20, 0xCu);
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
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Moving state from %@ to %@", &v13, 0x20u);
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
  block[3] = &unk_27868A728;
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
  delegateCopy = delegate;
  sourceCopy = source;
  queueCopy = queue;
  dCopy = d;
  iDCopy = iD;
  settingsControllerCopy = settingsController;
  creatorCopy = creator;
  v32.receiver = self;
  v32.super_class = HMDUserDataController;
  v21 = [(HMDUserDataController *)&v32 init];
  v22 = v21;
  if (v21)
  {
    v21->_state = 2 * (settingsControllerCopy == 0);
    v21->_isModifyingState = 0;
    objc_storeStrong(&v21->_clientQueue, queue);
    objc_storeWeak(&v22->_delegate, delegateCopy);
    objc_storeStrong(&v22->_timerCreator, creator);
    v23 = [MEMORY[0x277CBEB58] set];
    assistantAccessControlAccessoryUUIDs = v22->_assistantAccessControlAccessoryUUIDs;
    v22->_assistantAccessControlAccessoryUUIDs = v23;

    *&v22->_assistantAccessControlRequiresAuthenticationForSecureRequests = 256;
    v25 = [MEMORY[0x277CBEB58] set];
    mediaContentProfileAccessControlAccessories = v22->_mediaContentProfileAccessControlAccessories;
    v22->_mediaContentProfileAccessControlAccessories = v25;

    objc_storeStrong(&v22->_userUUID, d);
    objc_storeStrong(&v22->_homeUUID, iD);
    objc_storeWeak(&v22->_dataSource, sourceCopy);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    notificationCenter = v22->_notificationCenter;
    v22->_notificationCenter = defaultCenter;

    v22->_isCurrentUser = user;
  }

  return v22;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t41 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t41, &__block_literal_global_214514);
  }

  v3 = logCategory__hmf_once_v42;

  return v3;
}

void __36__HMDUserDataController_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v42;
  logCategory__hmf_once_v42 = v0;
}

@end