@interface HMDUserAccessorySettingsDataController
- (BOOL)assistantAccessControlActivityNotificationsEnabledForPersonalRequests;
- (HMDUserAccessorySettingsDataController)initWithUserModelID:(id)d managedObjectContext:(id)context;
- (NSArray)assistantAccessControlAccessoriesToEncode;
- (NSArray)mediaContentProfileAccessControlAccessoriesToEncode;
- (NSArray)userListeningHistoryUpdateControlModelAccessoriesToEncode;
- (id)_updatedAccessorySetFromAccessoryUUIDs:(id)ds currentAccessories:(id)accessories error:(id *)error;
- (void)enableUserListeningHistoryForAccessory:(id)accessory;
- (void)handleAssistantAccessControlAccessoryUUIDsUpdated:(id)updated activityNotificationsEnabledForPersonalRequests:(BOOL)requests completion:(id)completion;
- (void)handleMediaContentProfileAccessControlUpdatedAccessoryUUIDs:(id)ds completion:(id)completion;
- (void)handleUserListeningHistoryUpdateControlUpdatedAccessoryUUIDs:(id)ds completion:(id)completion;
@end

@implementation HMDUserAccessorySettingsDataController

- (id)_updatedAccessorySetFromAccessoryUUIDs:(id)ds currentAccessories:(id)accessories error:(id *)error
{
  v53 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  accessoriesCopy = accessories;
  v9 = [accessoriesCopy na_map:&__block_literal_global_15_132246];
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __106__HMDUserAccessorySettingsDataController__updatedAccessorySetFromAccessoryUUIDs_currentAccessories_error___block_invoke_2;
  v44[3] = &unk_27868A1B0;
  v34 = v9;
  v45 = v34;
  v10 = [dsCopy na_filter:v44];
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __106__HMDUserAccessorySettingsDataController__updatedAccessorySetFromAccessoryUUIDs_currentAccessories_error___block_invoke_3;
  v42[3] = &unk_27867A048;
  v33 = dsCopy;
  v43 = v33;
  v11 = [accessoriesCopy na_filter:v42];
  v12 = [v11 mutableCopy];

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v13 = v10;
  v14 = [v13 countByEnumeratingWithState:&v38 objects:v52 count:16];
  if (v14)
  {
    v15 = v14;
    errorCopy = error;
    v16 = 0;
    v17 = *v39;
    obj = v13;
    while (2)
    {
      v18 = 0;
      v19 = v16;
      do
      {
        if (*v39 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v38 + 1) + 8 * v18);
        managedObjectContext = [(HMCContext *)self->_context managedObjectContext];
        v37 = v19;
        v22 = [(_MKFModel *)_MKFAccessory modelWithModelID:v20 context:managedObjectContext error:&v37];
        v16 = v37;

        if (!v22)
        {
          if (!v16)
          {
            v23 = MEMORY[0x277CCA9B8];
            v24 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2020];
            v16 = [v23 hmErrorWithCode:2 description:0 reason:0 suggestion:0 underlyingError:v24];
          }

          v25 = objc_autoreleasePoolPush();
          selfCopy = self;
          v27 = HMFGetOSLogHandle();
          v13 = obj;
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            v28 = HMFGetLogIdentifier();
            *buf = 138543874;
            v47 = v28;
            v48 = 2112;
            v49 = v20;
            v50 = 2112;
            v51 = v16;
            _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_ERROR, "%{public}@Fetching accessory with modelID %@ failed with %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v25);
          if (errorCopy)
          {
            v29 = v16;
            *errorCopy = v16;
          }

          v30 = 0;
          goto LABEL_19;
        }

        [v12 addObject:v22];

        ++v18;
        v19 = v16;
      }

      while (v15 != v18);
      v13 = obj;
      v15 = [obj countByEnumeratingWithState:&v38 objects:v52 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v16 = 0;
  }

  v30 = objc_msgSend_copy(v12);
LABEL_19:

  return v30;
}

uint64_t __106__HMDUserAccessorySettingsDataController__updatedAccessorySetFromAccessoryUUIDs_currentAccessories_error___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 modelID];
  v4 = [v2 containsObject:v3];

  return v4;
}

- (void)enableUserListeningHistoryForAccessory:(id)accessory
{
  accessoryCopy = accessory;
  v5 = self->_userModelID;
  managedObjectContext = [(HMCContext *)self->_context managedObjectContext];
  context = self->_context;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __81__HMDUserAccessorySettingsDataController_enableUserListeningHistoryForAccessory___block_invoke;
  v11[3] = &unk_2786891E0;
  v12 = v5;
  v13 = managedObjectContext;
  selfCopy = self;
  v15 = accessoryCopy;
  v8 = accessoryCopy;
  v9 = managedObjectContext;
  v10 = v5;
  [(HMCContext *)context performBlock:v11];
}

void __81__HMDUserAccessorySettingsDataController_enableUserListeningHistoryForAccessory___block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v30 = 0;
  v4 = [(_MKFModel *)_MKFUser modelWithModelID:v2 context:v3 error:&v30];
  v5 = v30;
  if (v4)
  {
    v6 = MEMORY[0x277CBEB58];
    v7 = [v4 accessoriesWithListeningHistoryEnabled];
    if (v7)
    {
      v8 = [v6 setWithSet:v7];
    }

    else
    {
      v14 = [MEMORY[0x277CBEB98] set];
      v8 = [v6 setWithSet:v14];
    }

    v15 = *(a1 + 56);
    v16 = *(a1 + 40);
    v29 = v5;
    v17 = [(_MKFModel *)_MKFAccessory modelWithModelID:v15 context:v16 error:&v29];
    v18 = v29;

    if ([v8 containsObject:v17])
    {
      v19 = objc_autoreleasePoolPush();
      v20 = *(a1 + 48);
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = HMFGetLogIdentifier();
        v23 = *(a1 + 56);
        *buf = 138543618;
        v32 = v22;
        v33 = 2112;
        v34 = v23;
        _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Accessory %@ ULH is already enabled", buf, 0x16u);
      }
    }

    else
    {
      [v8 addObject:v17];
      v24 = objc_msgSend_copy(v8);
      [v4 setAccessoriesWithListeningHistoryEnabled_:v24];

      v25 = *(*(a1 + 48) + 16);
      v28 = v18;
      [v25 save:&v28];
      v26 = v28;

      if (!v26)
      {
        v18 = 0;
        goto LABEL_16;
      }

      v19 = objc_autoreleasePoolPush();
      v20 = *(a1 + 48);
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v27 = HMFGetLogIdentifier();
        *buf = 138543618;
        v32 = v27;
        v33 = 2112;
        v34 = v26;
        _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@Saving user listening history access control failed with %@", buf, 0x16u);
      }

      v18 = v26;
    }

    objc_autoreleasePoolPop(v19);
LABEL_16:

    v5 = v18;
    goto LABEL_17;
  }

  v9 = objc_autoreleasePoolPush();
  v10 = *(a1 + 48);
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = HMFGetLogIdentifier();
    v13 = *(a1 + 32);
    *buf = 138543874;
    v32 = v12;
    v33 = 2112;
    v34 = v13;
    v35 = 2112;
    v36 = v5;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Fetching userModelID %@ failed with %@ when enabling ULH", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
LABEL_17:
}

- (void)handleUserListeningHistoryUpdateControlUpdatedAccessoryUUIDs:(id)ds completion:(id)completion
{
  dsCopy = ds;
  completionCopy = completion;
  v8 = self->_userModelID;
  managedObjectContext = [(HMCContext *)self->_context managedObjectContext];
  context = self->_context;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __114__HMDUserAccessorySettingsDataController_handleUserListeningHistoryUpdateControlUpdatedAccessoryUUIDs_completion___block_invoke;
  v15[3] = &unk_278688978;
  v16 = v8;
  v17 = managedObjectContext;
  v19 = dsCopy;
  v20 = completionCopy;
  selfCopy = self;
  v11 = dsCopy;
  v12 = completionCopy;
  v13 = managedObjectContext;
  v14 = v8;
  [(HMCContext *)context performBlock:v15];
}

void __114__HMDUserAccessorySettingsDataController_handleUserListeningHistoryUpdateControlUpdatedAccessoryUUIDs_completion___block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v31 = 0;
  v4 = [(_MKFModel *)_MKFUser modelWithModelID:v2 context:v3 error:&v31];
  v5 = v31;
  if (v4)
  {
    v6 = [v4 accessoriesWithListeningHistoryEnabled];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = [MEMORY[0x277CBEB98] set];
    }

    v15 = v8;

    v16 = *(a1 + 48);
    v17 = *(a1 + 56);
    v30 = v5;
    v18 = [v16 _updatedAccessorySetFromAccessoryUUIDs:v17 currentAccessories:v15 error:&v30];
    v19 = v30;

    if (v18)
    {
      v20 = objc_msgSend_copy(v18);
      [v4 setAccessoriesWithListeningHistoryEnabled_:v20];

      v21 = *(*(a1 + 48) + 16);
      v29 = v19;
      [v21 save:&v29];
      v22 = v29;

      if (v22)
      {
        v23 = objc_autoreleasePoolPush();
        v24 = *(a1 + 48);
        v25 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v26 = HMFGetLogIdentifier();
          *buf = 138543618;
          v33 = v26;
          v34 = 2112;
          v35 = v22;
          _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_ERROR, "%{public}@Saving user listening history access control failed with %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v23);
        v19 = HMDSanitizeCoreDataError(v22);
      }

      else
      {
        v19 = 0;
      }
    }

    v27 = _Block_copy(*(a1 + 64));
    v28 = v27;
    if (v27)
    {
      (*(v27 + 2))(v27, v19);
    }

    v5 = v19;
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 48);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v13 = *(a1 + 32);
      *buf = 138543874;
      v33 = v12;
      v34 = 2112;
      v35 = v13;
      v36 = 2112;
      v37 = v5;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Fetching userModelID %@ failed with %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    v14 = _Block_copy(*(a1 + 64));
    v15 = v14;
    if (v14)
    {
      (*(v14 + 2))(v14, v5);
    }
  }
}

- (void)handleMediaContentProfileAccessControlUpdatedAccessoryUUIDs:(id)ds completion:(id)completion
{
  dsCopy = ds;
  completionCopy = completion;
  v8 = self->_userModelID;
  managedObjectContext = [(HMCContext *)self->_context managedObjectContext];
  context = self->_context;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __113__HMDUserAccessorySettingsDataController_handleMediaContentProfileAccessControlUpdatedAccessoryUUIDs_completion___block_invoke;
  v15[3] = &unk_278688978;
  v16 = v8;
  v17 = managedObjectContext;
  v19 = dsCopy;
  v20 = completionCopy;
  selfCopy = self;
  v11 = dsCopy;
  v12 = completionCopy;
  v13 = managedObjectContext;
  v14 = v8;
  [(HMCContext *)context performBlock:v15];
}

void __113__HMDUserAccessorySettingsDataController_handleMediaContentProfileAccessControlUpdatedAccessoryUUIDs_completion___block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v31 = 0;
  v4 = [(_MKFModel *)_MKFUser modelWithModelID:v2 context:v3 error:&v31];
  v5 = v31;
  if (v4)
  {
    v6 = [v4 accessoriesWithMediaContentProfileEnabled];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = [MEMORY[0x277CBEB98] set];
    }

    v15 = v8;

    v16 = *(a1 + 48);
    v17 = *(a1 + 56);
    v30 = v5;
    v18 = [v16 _updatedAccessorySetFromAccessoryUUIDs:v17 currentAccessories:v15 error:&v30];
    v19 = v30;

    if (v18)
    {
      v20 = objc_msgSend_copy(v18);
      [v4 setAccessoriesWithMediaContentProfileEnabled_:v20];

      v21 = *(*(a1 + 48) + 16);
      v29 = v19;
      [v21 save:&v29];
      v22 = v29;

      if (v22)
      {
        v23 = objc_autoreleasePoolPush();
        v24 = *(a1 + 48);
        v25 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v26 = HMFGetLogIdentifier();
          *buf = 138543618;
          v33 = v26;
          v34 = 2112;
          v35 = v22;
          _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_ERROR, "%{public}@Saving updated media content profile access control failed with %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v23);
        v19 = HMDSanitizeCoreDataError(v22);
      }

      else
      {
        v19 = 0;
      }
    }

    v27 = _Block_copy(*(a1 + 64));
    v28 = v27;
    if (v27)
    {
      (*(v27 + 2))(v27, v19);
    }

    v5 = v19;
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 48);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v13 = *(a1 + 32);
      *buf = 138543874;
      v33 = v12;
      v34 = 2112;
      v35 = v13;
      v36 = 2112;
      v37 = v5;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Fetching userModelID %@ failed with %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    v14 = _Block_copy(*(a1 + 64));
    v15 = v14;
    if (v14)
    {
      (*(v14 + 2))(v14, v5);
    }
  }
}

- (void)handleAssistantAccessControlAccessoryUUIDsUpdated:(id)updated activityNotificationsEnabledForPersonalRequests:(BOOL)requests completion:(id)completion
{
  updatedCopy = updated;
  completionCopy = completion;
  v10 = self->_userModelID;
  managedObjectContext = [(HMCContext *)self->_context managedObjectContext];
  context = self->_context;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __151__HMDUserAccessorySettingsDataController_handleAssistantAccessControlAccessoryUUIDsUpdated_activityNotificationsEnabledForPersonalRequests_completion___block_invoke;
  v17[3] = &unk_27867A020;
  v18 = v10;
  v19 = managedObjectContext;
  v21 = updatedCopy;
  v22 = completionCopy;
  requestsCopy = requests;
  selfCopy = self;
  v13 = updatedCopy;
  v14 = completionCopy;
  v15 = managedObjectContext;
  v16 = v10;
  [(HMCContext *)context performBlock:v17];
}

void __151__HMDUserAccessorySettingsDataController_handleAssistantAccessControlAccessoryUUIDsUpdated_activityNotificationsEnabledForPersonalRequests_completion___block_invoke(uint64_t a1)
{
  v39 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v32 = 0;
  v4 = [(_MKFModel *)_MKFUser modelWithModelID:v2 context:v3 error:&v32];
  v5 = v32;
  if (v4)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 72)];
    [v4 setActivityNotificationsEnabledForPersonalRequests:v6];

    v7 = [v4 accessoriesWithPersonalRequestsEnabled];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = [MEMORY[0x277CBEB98] set];
    }

    v16 = v9;

    v17 = *(a1 + 48);
    v18 = *(a1 + 56);
    v31 = v5;
    v19 = [v17 _updatedAccessorySetFromAccessoryUUIDs:v18 currentAccessories:v16 error:&v31];
    v20 = v31;

    if (v19)
    {
      v21 = objc_msgSend_copy(v19);
      [v4 setAccessoriesWithPersonalRequestsEnabled_:v21];

      v22 = *(*(a1 + 48) + 16);
      v30 = v20;
      [v22 save:&v30];
      v23 = v30;

      if (v23)
      {
        v24 = objc_autoreleasePoolPush();
        v25 = *(a1 + 48);
        v26 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v27 = HMFGetLogIdentifier();
          *buf = 138543618;
          v34 = v27;
          v35 = 2112;
          v36 = v23;
          _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@Saving personal requests access control failed with %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v24);
        v20 = HMDSanitizeCoreDataError(v23);
      }

      else
      {
        v20 = 0;
      }
    }

    v28 = _Block_copy(*(a1 + 64));
    v29 = v28;
    if (v28)
    {
      (*(v28 + 2))(v28, v20);
    }

    v5 = v20;
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 48);
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v14 = *(a1 + 32);
      *buf = 138543874;
      v34 = v13;
      v35 = 2112;
      v36 = v14;
      v37 = 2112;
      v38 = v5;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Fetching userModelID %@ failed with %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
    v15 = _Block_copy(*(a1 + 64));
    v16 = v15;
    if (v15)
    {
      (*(v15 + 2))(v15, v5);
    }
  }
}

- (NSArray)userListeningHistoryUpdateControlModelAccessoriesToEncode
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__132266;
  v24 = __Block_byref_object_dispose__132267;
  v25 = 0;
  v3 = self->_userModelID;
  managedObjectContext = [(HMCContext *)self->_context managedObjectContext];
  context = self->_context;
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __99__HMDUserAccessorySettingsDataController_userListeningHistoryUpdateControlModelAccessoriesToEncode__block_invoke;
  v15 = &unk_278689D20;
  v6 = v3;
  v16 = v6;
  v7 = managedObjectContext;
  v17 = v7;
  selfCopy = self;
  v19 = &v20;
  [(HMCContext *)context unsafeSynchronousBlock:&v12];
  v8 = v21[5];
  if (v8)
  {
    array = v8;
  }

  else
  {
    array = [MEMORY[0x277CBEA60] array];
  }

  v10 = array;

  _Block_object_dispose(&v20, 8);

  return v10;
}

void __99__HMDUserAccessorySettingsDataController_userListeningHistoryUpdateControlModelAccessoriesToEncode__block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v16 = 0;
  v4 = [(_MKFModel *)_MKFUser modelWithModelID:v2 context:v3 error:&v16];
  v5 = v16;
  if (v4)
  {
    v6 = [v4 accessoriesWithListeningHistoryEnabled];
    v7 = [v6 na_map:&__block_literal_global_9_132270];
    v8 = [v7 allObjects];
    v9 = *(*(a1 + 56) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = *(a1 + 48);
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v15 = *(a1 + 32);
      *buf = 138543874;
      v18 = v14;
      v19 = 2112;
      v20 = v15;
      v21 = 2112;
      v22 = v5;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Fetching userModelID %@ failed with %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
  }
}

- (NSArray)mediaContentProfileAccessControlAccessoriesToEncode
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__132266;
  v24 = __Block_byref_object_dispose__132267;
  v25 = 0;
  v3 = self->_userModelID;
  managedObjectContext = [(HMCContext *)self->_context managedObjectContext];
  context = self->_context;
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __93__HMDUserAccessorySettingsDataController_mediaContentProfileAccessControlAccessoriesToEncode__block_invoke;
  v15 = &unk_278689D20;
  v6 = v3;
  v16 = v6;
  v7 = managedObjectContext;
  v17 = v7;
  selfCopy = self;
  v19 = &v20;
  [(HMCContext *)context unsafeSynchronousBlock:&v12];
  v8 = v21[5];
  if (v8)
  {
    array = v8;
  }

  else
  {
    array = [MEMORY[0x277CBEA60] array];
  }

  v10 = array;

  _Block_object_dispose(&v20, 8);

  return v10;
}

void __93__HMDUserAccessorySettingsDataController_mediaContentProfileAccessControlAccessoriesToEncode__block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v16 = 0;
  v4 = [(_MKFModel *)_MKFUser modelWithModelID:v2 context:v3 error:&v16];
  v5 = v16;
  if (v4)
  {
    v6 = [v4 accessoriesWithMediaContentProfileEnabled];
    v7 = [v6 na_map:&__block_literal_global_6_132273];
    v8 = [v7 allObjects];
    v9 = *(*(a1 + 56) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = *(a1 + 48);
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v15 = *(a1 + 32);
      *buf = 138543874;
      v18 = v14;
      v19 = 2112;
      v20 = v15;
      v21 = 2112;
      v22 = v5;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Fetching userModelID %@ failed with %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
  }
}

- (NSArray)assistantAccessControlAccessoriesToEncode
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__132266;
  v24 = __Block_byref_object_dispose__132267;
  v25 = 0;
  v3 = self->_userModelID;
  managedObjectContext = [(HMCContext *)self->_context managedObjectContext];
  context = self->_context;
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __83__HMDUserAccessorySettingsDataController_assistantAccessControlAccessoriesToEncode__block_invoke;
  v15 = &unk_278689D20;
  v6 = v3;
  v16 = v6;
  v7 = managedObjectContext;
  v17 = v7;
  selfCopy = self;
  v19 = &v20;
  [(HMCContext *)context unsafeSynchronousBlock:&v12];
  v8 = v21[5];
  if (v8)
  {
    array = v8;
  }

  else
  {
    array = [MEMORY[0x277CBEA60] array];
  }

  v10 = array;

  _Block_object_dispose(&v20, 8);

  return v10;
}

void __83__HMDUserAccessorySettingsDataController_assistantAccessControlAccessoriesToEncode__block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v16 = 0;
  v4 = [(_MKFModel *)_MKFUser modelWithModelID:v2 context:v3 error:&v16];
  v5 = v16;
  if (v4)
  {
    v6 = [v4 accessoriesWithPersonalRequestsEnabled];
    v7 = [v6 na_map:&__block_literal_global_132276];
    v8 = [v7 allObjects];
    v9 = *(*(a1 + 56) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = *(a1 + 48);
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v15 = *(a1 + 32);
      *buf = 138543874;
      v18 = v14;
      v19 = 2112;
      v20 = v15;
      v21 = 2112;
      v22 = v5;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Fetching userModelID %@ failed with %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
  }
}

- (BOOL)assistantAccessControlActivityNotificationsEnabledForPersonalRequests
{
  selfCopy = self;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v3 = self->_userModelID;
  managedObjectContext = [(HMCContext *)selfCopy->_context managedObjectContext];
  context = selfCopy->_context;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __111__HMDUserAccessorySettingsDataController_assistantAccessControlActivityNotificationsEnabledForPersonalRequests__block_invoke;
  v9[3] = &unk_278689D20;
  v6 = v3;
  v10 = v6;
  v7 = managedObjectContext;
  v11 = v7;
  v12 = selfCopy;
  v13 = &v14;
  [(HMCContext *)context unsafeSynchronousBlock:v9];
  LOBYTE(selfCopy) = *(v15 + 24);

  _Block_object_dispose(&v14, 8);
  return selfCopy;
}

void __111__HMDUserAccessorySettingsDataController_assistantAccessControlActivityNotificationsEnabledForPersonalRequests__block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v12 = 0;
  v4 = [(_MKFModel *)_MKFUser modelWithModelID:v2 context:v3 error:&v12];
  v5 = v12;
  if (v4)
  {
    v6 = [v4 activityNotificationsEnabledForPersonalRequests];
    *(*(*(a1 + 56) + 8) + 24) = [v6 BOOLValue];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 48);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v11 = *(a1 + 32);
      *buf = 138543874;
      v14 = v10;
      v15 = 2112;
      v16 = v11;
      v17 = 2112;
      v18 = v5;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Fetching userModelID %@ failed with %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
  }
}

- (HMDUserAccessorySettingsDataController)initWithUserModelID:(id)d managedObjectContext:(id)context
{
  dCopy = d;
  contextCopy = context;
  v12.receiver = self;
  v12.super_class = HMDUserAccessorySettingsDataController;
  v9 = [(HMDUserAccessorySettingsDataController *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_userModelID, d);
    objc_storeStrong(&v10->_context, context);
  }

  return v10;
}

@end