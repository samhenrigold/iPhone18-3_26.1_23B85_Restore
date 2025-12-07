@interface HMDUserSettingsBackingStoreController
+ (id)logCategory;
- (BOOL)manager:(id)manager shouldShareWithUser:(id)user;
- (HMDAssistantAccessControlModelUpdateReceiver)assistantAccessControlModelUpdateReceiver;
- (HMDMediaContentProfileAccessControlModelUpdateReceiver)mediaContentProfileAccessControlModelUpdateReceiver;
- (HMDSettingTransactionReceiverProtocol)transactionReceiver;
- (HMDSharedUserDataModelUpdateReceiver)sharedUserDataModelUpdateReceiver;
- (HMDUserListeningHistoryUpdateControlModelUpdateReceiver)userListeningHistoryUpdateControlModelUpdateReceiver;
- (HMDUserSettingsBackingStoreController)initWithDelegate:(id)delegate queue:(id)queue zoneName:(id)name database:(id)database shareMessenger:(id)messenger;
- (HMDUserSettingsBackingStoreControllerDelegate)delegate;
- (HMDUserSupportsAutomaticHH2MigrationModelUpdateReceiver)userSupportsAutomaticHH2MigrationModelUpdateReceiver;
- (id)_registrationWithParent:(void *)parent subjectDeviceIdentifier:;
- (id)_uuidForActivitySubject:(void *)subject observer:;
- (id)loadAssistantAccessControlModelWithModelID:(id)d error:(id *)error;
- (id)loadMediaContentAccessControlModelWithModelID:(id)d error:(id *)error;
- (id)loadPrivateUserDataModelWithError:(id *)error;
- (id)loadSharedUserDataModelWithError:(id *)error;
- (id)loadUserListeningHistoryUpdateControlModelWithModelID:(id)d error:(id *)error;
- (id)loadUserSettings;
- (id)loadUserSupportsAutomaticHH2MigrationModelWithModelID:(id)d error:(id *)error;
- (id)queryPushTokensForDevicesObservingSubjectDevice:(id)device subActivity:(id)activity;
- (id)settingTransactionWithName:(id)name;
- (void)_didFetchZonesWithResult:(id)result isOwnedZone:(BOOL)zone error:(id)error;
- (void)_invalidate;
- (void)_localZone:(id)zone updatedModel:(id)model previousModel:(id)previousModel options:(id)options;
- (void)_sendShareInvitation:(id)invitation toUser:(id)user device:(id)device;
- (void)_startWithOwnedZone;
- (void)_startWithSharedZone;
- (void)_updateLogEventRunState:(int64_t)state;
- (void)_updateRunState:(int64_t)state;
- (void)clearParticipants;
- (void)database:(id)database didCreateZoneWithName:(id)name isPrivate:(BOOL)private;
- (void)database:(id)database didRemoveZoneWithName:(id)name isPrivate:(BOOL)private;
- (void)deregisterObserverDeviceIdentifier:(id)identifier;
- (void)deregisterObserverDeviceIdentifier:(id)identifier observerPushToken:(id)token subActivity:(id)activity subjectDeviceIdentifier:(id)deviceIdentifier;
- (void)destroyZone;
- (void)localZone:(id)zone didProcessModelCreation:(id)creation;
- (void)localZone:(id)zone didProcessModelDeletion:(id)deletion;
- (void)localZone:(id)zone didProcessModelUpdate:(id)update;
- (void)manager:(id)manager didRequestSendForInvitation:(id)invitation toDevice:(id)device;
- (void)manager:(id)manager didRequestSendForInvitation:(id)invitation toUser:(id)user;
- (void)messenger:(id)messenger didReceiveInvitationData:(id)data completion:(id)completion;
- (void)messenger:(id)messenger didReceiveInvitationRequestFromUser:(id)user device:(id)device;
- (void)registerForAssistantAccessControlModelUpdates:(id)updates modelID:(id)d;
- (void)registerForMediaContentAccessControlModelUpdates:(id)updates modelID:(id)d;
- (void)registerForSettingsTransactions:(id)transactions;
- (void)registerForSharedUserDataModelUpdates:(id)updates modelID:(id)d;
- (void)registerForUserListeningHistoryUpdateControlModelUpdates:(id)updates modelID:(id)d;
- (void)registerForUserSupportsAutomaticHH2MigrationModelUpdates:(id)updates modelID:(id)d;
- (void)registerObserverDeviceIdentifier:(id)identifier observerPushToken:(id)token subActivity:(id)activity subjectDeviceIdentifier:(id)deviceIdentifier;
- (void)runTransaction:(id)transaction waitForCloudPush:(BOOL)push completion:(id)completion;
- (void)start;
- (void)updateObserverDeviceIdentifier:(id)identifier observerPushToken:(id)token;
- (void)updateParticipants;
@end

@implementation HMDUserSettingsBackingStoreController

- (HMDSharedUserDataModelUpdateReceiver)sharedUserDataModelUpdateReceiver
{
  WeakRetained = objc_loadWeakRetained(&self->_sharedUserDataModelUpdateReceiver);

  return WeakRetained;
}

- (HMDUserSupportsAutomaticHH2MigrationModelUpdateReceiver)userSupportsAutomaticHH2MigrationModelUpdateReceiver
{
  WeakRetained = objc_loadWeakRetained(&self->_userSupportsAutomaticHH2MigrationModelUpdateReceiver);

  return WeakRetained;
}

- (HMDUserListeningHistoryUpdateControlModelUpdateReceiver)userListeningHistoryUpdateControlModelUpdateReceiver
{
  WeakRetained = objc_loadWeakRetained(&self->_userListeningHistoryUpdateControlModelUpdateReceiver);

  return WeakRetained;
}

- (HMDMediaContentProfileAccessControlModelUpdateReceiver)mediaContentProfileAccessControlModelUpdateReceiver
{
  WeakRetained = objc_loadWeakRetained(&self->_mediaContentProfileAccessControlModelUpdateReceiver);

  return WeakRetained;
}

- (HMDAssistantAccessControlModelUpdateReceiver)assistantAccessControlModelUpdateReceiver
{
  WeakRetained = objc_loadWeakRetained(&self->_assistantAccessControlModelUpdateReceiver);

  return WeakRetained;
}

- (HMDSettingTransactionReceiverProtocol)transactionReceiver
{
  WeakRetained = objc_loadWeakRetained(&self->_transactionReceiver);

  return WeakRetained;
}

- (HMDUserSettingsBackingStoreControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)database:(id)database didRemoveZoneWithName:(id)name isPrivate:(BOOL)private
{
  privateCopy = private;
  nameCopy = name;
  zoneName = [(HMDUserSettingsBackingStoreController *)self zoneName];
  v8 = [nameCopy isEqualToString:?];

  if (v8)
  {
    delegate = [(HMDUserSettingsBackingStoreController *)self delegate];
    isCurrentUser = [delegate isCurrentUser];

    if (isCurrentUser == privateCopy)
    {
      workQueue = [(HMDUserSettingsBackingStoreController *)self workQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __82__HMDUserSettingsBackingStoreController_database_didRemoveZoneWithName_isPrivate___block_invoke;
      block[3] = &unk_279735D00;
      block[4] = self;
      dispatch_async(workQueue, block);
    }
  }

  else
  {
  }
}

void __82__HMDUserSettingsBackingStoreController_database_didRemoveZoneWithName_isPrivate___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Zone was removed by the database", &v7, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  [*(a1 + 32) _invalidate];
  v6 = [*(a1 + 32) delegate];
  [v6 didStopBackingStoreController:*(a1 + 32)];
}

- (void)database:(id)database didCreateZoneWithName:(id)name isPrivate:(BOOL)private
{
  privateCopy = private;
  nameCopy = name;
  zoneName = [(HMDUserSettingsBackingStoreController *)self zoneName];
  v8 = [nameCopy isEqualToString:?];

  if (v8)
  {
    delegate = [(HMDUserSettingsBackingStoreController *)self delegate];
    isCurrentUser = [delegate isCurrentUser];

    if (isCurrentUser == privateCopy)
    {
      workQueue = [(HMDUserSettingsBackingStoreController *)self workQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __82__HMDUserSettingsBackingStoreController_database_didCreateZoneWithName_isPrivate___block_invoke;
      block[3] = &unk_279735D00;
      block[4] = self;
      dispatch_async(workQueue, block);
    }
  }

  else
  {
  }
}

uint64_t __82__HMDUserSettingsBackingStoreController_database_didCreateZoneWithName_isPrivate___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Handling zone creation by starting", &v7, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  return [*(a1 + 32) start];
}

- (void)runTransaction:(id)transaction waitForCloudPush:(BOOL)push completion:(id)completion
{
  pushCopy = push;
  v59 = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  completionCopy = completion;
  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v13 = HMDUserSettingsBackingStoreControllerRunStateAsString([(HMDUserSettingsBackingStoreController *)selfCopy runState]);
    *buf = 138543874;
    v54 = v12;
    v55 = 2112;
    v56 = transactionCopy;
    v57 = 2112;
    v58 = v13;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Running transaction %@, runState: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  localZone = [(HMDUserSettingsBackingStoreController *)selfCopy localZone];
  if (localZone)
  {
    v15 = transactionCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;

    v18 = MEMORY[0x277D17108];
    transactionLabel = [v17 transactionLabel];
    v20 = [v18 optionsWithLabel:transactionLabel];

    if (([v17 initialCreation] & 1) != 0 || pushCopy)
    {
      [v20 setShouldRollBackIfMirrorOutputFails:1];
    }

    updateModels = [v17 updateModels];
    if ([updateModels count])
    {
    }

    else
    {
      removeUUIDs = [v17 removeUUIDs];
      v34 = [removeUUIDs count];

      if (!v34)
      {
        v43 = objc_autoreleasePoolPush();
        v44 = selfCopy;
        v45 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
        {
          v46 = HMFGetLogIdentifier();
          *buf = 138543618;
          v54 = v46;
          v55 = 2112;
          v56 = v15;
          _os_log_impl(&dword_2531F8000, v45, OS_LOG_TYPE_INFO, "%{public}@Skipping Empty transaction: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v43);
        v32 = completionCopy;
        (*(completionCopy + 2))(completionCopy, 0);
        goto LABEL_19;
      }
    }

    updateModels2 = [v17 updateModels];
    removeUUIDs2 = [v17 removeUUIDs];
    v37 = [localZone addModels:updateModels2 andRemoveModelIDs:removeUUIDs2 options:v20];

    v38 = MEMORY[0x277D2C938];
    workQueue = [(HMDUserSettingsBackingStoreController *)selfCopy workQueue];
    v40 = [v38 schedulerWithDispatchQueue:workQueue];
    v41 = [v37 reschedule:v40];
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __84__HMDUserSettingsBackingStoreController_runTransaction_waitForCloudPush_completion___block_invoke;
    v49[3] = &unk_2797232B8;
    v49[4] = selfCopy;
    v50 = v15;
    v52 = pushCopy;
    v32 = completionCopy;
    v51 = completionCopy;
    v42 = [v41 addCompletionBlock:v49];

LABEL_19:
    transactionCopy = v47;
    goto LABEL_20;
  }

  v22 = objc_autoreleasePoolPush();
  v23 = selfCopy;
  v24 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
  {
    v25 = HMFGetLogIdentifier();
    *buf = 138543362;
    v54 = v25;
    _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: Failed to run transaction due to nil localZone", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v22);
  v26 = [[HMDAssertionLogEvent alloc] initWithReason:@"Failed to run transaction due to nil localZone"];
  v27 = +[HMDMetricsManager sharedLogEventSubmitter];
  [v27 submitLogEvent:v26];

  v28 = objc_autoreleasePoolPush();
  v29 = v23;
  v30 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    v31 = HMFGetLogIdentifier();
    *buf = 138543618;
    v54 = v31;
    v55 = 2112;
    v56 = transactionCopy;
    _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_ERROR, "%{public}@Failed to run transaction: %@ due to nil localZone", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v28);
  v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
  v32 = completionCopy;
  (*(completionCopy + 2))(completionCopy, v17);
LABEL_20:
}

void __84__HMDUserSettingsBackingStoreController_runTransaction_waitForCloudPush_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v39 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = *(a1 + 40);
    v12 = HMFBooleanToString();
    *buf = 138544130;
    v32 = v10;
    v33 = 2112;
    v34 = v11;
    v35 = 2112;
    v36 = v6;
    v37 = 2112;
    v38 = v12;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Finished running transaction: %@, Error: %@, waitForCloudPush: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v7);
  if (v6 || (*(a1 + 56) & 1) == 0)
  {
    (*(*(a1 + 48) + 16))();
  }

  else if (v5 && ([v5 mirrorOutputResult], v13 = objc_claimAutoreleasedReturnValue(), v13, v13))
  {
    v14 = [v5 mirrorOutputResult];
    v15 = MEMORY[0x277D2C938];
    v16 = [*(a1 + 32) workQueue];
    v17 = [v15 schedulerWithDispatchQueue:v16];
    v18 = [v14 reschedule:v17];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __84__HMDUserSettingsBackingStoreController_runTransaction_waitForCloudPush_completion___block_invoke_140;
    v27[3] = &unk_279723290;
    v19 = *(a1 + 40);
    v27[4] = *(a1 + 32);
    v28 = v19;
    v29 = v5;
    v30 = *(a1 + 48);
    v20 = [v18 addCompletionBlock:v27];
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
      v32 = v24;
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_ERROR, "%{public}@No processing result to wait for.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v21);
    v25 = *(a1 + 48);
    v26 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    (*(v25 + 16))(v25, v26);
  }
}

void __84__HMDUserSettingsBackingStoreController_runTransaction_waitForCloudPush_completion___block_invoke_140(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = *(a1 + 40);
    v12 = *(a1 + 48);
    v13 = 138544130;
    v14 = v10;
    v15 = 2112;
    v16 = v11;
    v17 = 2112;
    v18 = v12;
    v19 = 2112;
    v20 = v6;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Finished running mirror protocol for transaction: %@, inResult: %@, inError: %@", &v13, 0x2Au);
  }

  objc_autoreleasePoolPop(v7);
  (*(*(a1 + 56) + 16))();
}

- (id)settingTransactionWithName:(id)name
{
  nameCopy = name;
  v4 = [[HMDSettingTransaction alloc] initWithTransactionLabel:nameCopy];

  return v4;
}

- (void)registerForSettingsTransactions:(id)transactions
{
  v13 = *MEMORY[0x277D85DE8];
  transactionsCopy = transactions;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = 138543618;
    v10 = v8;
    v11 = 2112;
    v12 = transactionsCopy;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Registering transaction receiver %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  [(HMDUserSettingsBackingStoreController *)selfCopy setTransactionReceiver:transactionsCopy];
}

- (void)_localZone:(id)zone updatedModel:(id)model previousModel:(id)previousModel options:(id)options
{
  v82 = *MEMORY[0x277D85DE8];
  zoneCopy = zone;
  modelCopy = model;
  previousModelCopy = previousModel;
  optionsCopy = options;
  workQueue = [(HMDUserSettingsBackingStoreController *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v15 = objc_autoreleasePoolPush();
  selfCopy = self;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = HMFGetLogIdentifier();
    *buf = 138543618;
    v79 = v18;
    v80 = 2112;
    v81 = modelCopy;
    _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Received transaction update for model %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v15);
  transactionReceiver = [(HMDUserSettingsBackingStoreController *)selfCopy transactionReceiver];
  v20 = modelCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  v22 = v21;

  if (!v22)
  {
    v23 = v20;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }

    v25 = v24;

    if (v25)
    {
      [transactionReceiver transactionSettingModelUpdated:v23 previousModel:previousModelCopy];
LABEL_58:

      goto LABEL_59;
    }

    v26 = v23;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = v26;
    }

    else
    {
      v27 = 0;
    }

    v28 = v27;

    if (v28)
    {
      [transactionReceiver transactionSettingConstraintModelUpdated:v26 previousModel:previousModelCopy];
      v25 = 0;
LABEL_57:

      goto LABEL_58;
    }

    v77 = zoneCopy;
    hmbModelID = [v26 hmbModelID];
    assistantAccessControlModelID = [(HMDUserSettingsBackingStoreController *)selfCopy assistantAccessControlModelID];
    v31 = [hmbModelID isEqual:assistantAccessControlModelID];

    if (v31)
    {
      assistantAccessControlModelUpdateReceiver = [(HMDUserSettingsBackingStoreController *)selfCopy assistantAccessControlModelUpdateReceiver];
      [assistantAccessControlModelUpdateReceiver assistantAccessControlModelUpdated:v26 previousModel:previousModelCopy];
LABEL_22:

      zoneCopy = v77;
      v25 = 0;
      v28 = 0;
      goto LABEL_57;
    }

    hmbModelID2 = [v26 hmbModelID];
    mediaContentProfileAccessControlModelID = [(HMDUserSettingsBackingStoreController *)selfCopy mediaContentProfileAccessControlModelID];
    v35 = [hmbModelID2 isEqual:mediaContentProfileAccessControlModelID];

    if (v35)
    {
      assistantAccessControlModelUpdateReceiver = [(HMDUserSettingsBackingStoreController *)selfCopy mediaContentProfileAccessControlModelUpdateReceiver];
      [assistantAccessControlModelUpdateReceiver mediaContentProfileAccessControlModelUpdated:v26 previousModel:previousModelCopy];
      goto LABEL_22;
    }

    hmbModelID3 = [v26 hmbModelID];
    sharedUserDataModelUpdateModelID = [(HMDUserSettingsBackingStoreController *)selfCopy sharedUserDataModelUpdateModelID];
    v38 = [hmbModelID3 isEqual:sharedUserDataModelUpdateModelID];

    if (v38)
    {
      sharedUserDataModelUpdateReceiver = [(HMDUserSettingsBackingStoreController *)selfCopy sharedUserDataModelUpdateReceiver];
      [sharedUserDataModelUpdateReceiver sharedUserDataModelUpdated:v26 previousModel:previousModelCopy];
    }

    v40 = v26;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v41 = v40;
    }

    else
    {
      v41 = 0;
    }

    v42 = v41;

    v76 = v42;
    hmbModelID4 = [v42 hmbModelID];
    userListeningHistoryUpdateModelID = [(HMDUserSettingsBackingStoreController *)selfCopy userListeningHistoryUpdateModelID];
    v45 = [hmbModelID4 isEqual:userListeningHistoryUpdateModelID];

    if (v45)
    {
      userListeningHistoryUpdateControlModelUpdateReceiver = [(HMDUserSettingsBackingStoreController *)selfCopy userListeningHistoryUpdateControlModelUpdateReceiver];
      v47 = v76;
      [userListeningHistoryUpdateControlModelUpdateReceiver userListeningHistoryUpdateControlModelUpdated:v76 previousModel:previousModelCopy];
      zoneCopy = v77;
      v25 = 0;
      v28 = 0;
LABEL_56:

      goto LABEL_57;
    }

    v48 = v40;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v49 = v48;
    }

    else
    {
      v49 = 0;
    }

    v50 = v49;

    v75 = v50;
    hmbModelID5 = [v50 hmbModelID];
    userSupportsAutomaticHH2MigrationModelID = [(HMDUserSettingsBackingStoreController *)selfCopy userSupportsAutomaticHH2MigrationModelID];
    v53 = [hmbModelID5 isEqual:userSupportsAutomaticHH2MigrationModelID];

    if (v53)
    {
      userSupportsAutomaticHH2MigrationModelUpdateReceiver = [(HMDUserSettingsBackingStoreController *)selfCopy userSupportsAutomaticHH2MigrationModelUpdateReceiver];
      userListeningHistoryUpdateControlModelUpdateReceiver = v75;
      [userSupportsAutomaticHH2MigrationModelUpdateReceiver userSupportsAutomaticHH2MigrationModelUpdated:v75 previousModel:previousModelCopy];
      v55 = userSupportsAutomaticHH2MigrationModelUpdateReceiver;
      zoneCopy = v77;
      v25 = 0;
      v47 = v76;
      v28 = 0;
LABEL_55:

      goto LABEL_56;
    }

    v56 = v48;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v57 = v56;
    }

    else
    {
      v57 = 0;
    }

    v58 = v57;

    if (v58)
    {
      v59 = previousModelCopy;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v60 = v59;
      }

      else
      {
        v60 = 0;
      }

      v61 = v60;

      v62 = [v58 hmbIsDifferentFromModel:v61 differingFields:0];
      v55 = v58;
      v28 = 0;
      if (!v62)
      {
        zoneCopy = v77;
        v25 = 0;
        userListeningHistoryUpdateControlModelUpdateReceiver = v75;
        v47 = v76;
        goto LABEL_55;
      }

      v63 = v55;
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      v74 = v63;
      [defaultCenter postNotificationName:@"HMDUserDidUpdateIDSActivityRegistration" object:v63];
    }

    else
    {
      v74 = 0;
      v65 = v56;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v66 = v65;
      }

      else
      {
        v66 = 0;
      }

      defaultCenter = v66;

      v28 = 0;
      if (!defaultCenter)
      {
        v73 = v65;
        v68 = objc_autoreleasePoolPush();
        v69 = selfCopy;
        v70 = HMFGetOSLogHandle();
        v25 = 0;
        if (os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
        {
          HMFGetLogIdentifier();
          v71 = v72 = v68;
          *buf = 138543618;
          v79 = v71;
          v80 = 2112;
          v81 = v73;
          _os_log_impl(&dword_2531F8000, v70, OS_LOG_TYPE_INFO, "%{public}@No handler for model %@", buf, 0x16u);

          v68 = v72;
        }

        objc_autoreleasePoolPop(v68);
        defaultCenter = 0;
        zoneCopy = v77;
        goto LABEL_54;
      }

      delegate = [(HMDUserSettingsBackingStoreController *)selfCopy delegate];
      [delegate backingStoreController:selfCopy didUpdatePhotosPersonManagerSettingsModel:defaultCenter previousPhotosPersonManagerSettingsModel:previousModelCopy];
    }

    zoneCopy = v77;
    v25 = 0;
LABEL_54:
    v47 = v76;

    v55 = v74;
    userListeningHistoryUpdateControlModelUpdateReceiver = v75;
    goto LABEL_55;
  }

  [transactionReceiver transactionSettingGroupModelUpdated:v20 previousModel:previousModelCopy];
LABEL_59:
}

- (void)localZone:(id)zone didProcessModelUpdate:(id)update
{
  zoneCopy = zone;
  updateCopy = update;
  workQueue = [(HMDUserSettingsBackingStoreController *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__HMDUserSettingsBackingStoreController_localZone_didProcessModelUpdate___block_invoke;
  block[3] = &unk_279734960;
  block[4] = self;
  v12 = zoneCopy;
  v13 = updateCopy;
  v9 = updateCopy;
  v10 = zoneCopy;
  dispatch_async(workQueue, block);
}

void __73__HMDUserSettingsBackingStoreController_localZone_didProcessModelUpdate___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6 = [*(a1 + 48) model];
  v4 = [*(a1 + 48) previousModel];
  v5 = [*(a1 + 48) options];
  [v2 _localZone:v3 updatedModel:v6 previousModel:v4 options:v5];
}

- (void)localZone:(id)zone didProcessModelDeletion:(id)deletion
{
  v17 = *MEMORY[0x277D85DE8];
  zoneCopy = zone;
  deletionCopy = deletion;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    model = [deletionCopy model];
    v13 = 138543618;
    v14 = v11;
    v15 = 2112;
    v16 = model;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Notified of unhandled model deletion: %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
}

- (void)localZone:(id)zone didProcessModelCreation:(id)creation
{
  zoneCopy = zone;
  creationCopy = creation;
  workQueue = [(HMDUserSettingsBackingStoreController *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__HMDUserSettingsBackingStoreController_localZone_didProcessModelCreation___block_invoke;
  block[3] = &unk_279734960;
  block[4] = self;
  v12 = zoneCopy;
  v13 = creationCopy;
  v9 = creationCopy;
  v10 = zoneCopy;
  dispatch_async(workQueue, block);
}

void __75__HMDUserSettingsBackingStoreController_localZone_didProcessModelCreation___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = [*(a1 + 48) model];
  v4 = [*(a1 + 48) options];
  [v2 _localZone:v3 updatedModel:v5 previousModel:0 options:v4];
}

- (void)messenger:(id)messenger didReceiveInvitationRequestFromUser:(id)user device:(id)device
{
  v25 = *MEMORY[0x277D85DE8];
  messengerCopy = messenger;
  userCopy = user;
  deviceCopy = device;
  workQueue = [(HMDUserSettingsBackingStoreController *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v12 = objc_autoreleasePoolPush();
  selfCopy = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    shortDescription = [userCopy shortDescription];
    shortDescription2 = [deviceCopy shortDescription];
    v19 = 138543874;
    v20 = v15;
    v21 = 2112;
    v22 = shortDescription;
    v23 = 2112;
    v24 = shortDescription2;
    _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Received invitation request from user %@ and device %@", &v19, 0x20u);
  }

  objc_autoreleasePoolPop(v12);
  participantsManager = [(HMDUserSettingsBackingStoreController *)selfCopy participantsManager];
  [participantsManager inviteUser:userCopy usingDevice:deviceCopy];
}

- (void)messenger:(id)messenger didReceiveInvitationData:(id)data completion:(id)completion
{
  v40 = *MEMORY[0x277D85DE8];
  messengerCopy = messenger;
  dataCopy = data;
  completionCopy = completion;
  workQueue = [(HMDUserSettingsBackingStoreController *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v12 = objc_autoreleasePoolPush();
  selfCopy = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    *buf = 138543362;
    v35 = v15;
    _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Received invitation to share user settings", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v12);
  v16 = MEMORY[0x277CCAAC8];
  v17 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  v33 = 0;
  v18 = [v16 _strictlyUnarchivedObjectOfClasses:v17 fromData:dataCopy error:&v33];
  v19 = v33;

  if (v18)
  {
    database = [(HMDUserSettingsBackingStoreController *)selfCopy database];
    v21 = [database acceptInvitation:v18];

    v22 = MEMORY[0x277D2C938];
    workQueue2 = [(HMDUserSettingsBackingStoreController *)selfCopy workQueue];
    v24 = [v22 schedulerWithDispatchQueue:workQueue2];
    v25 = [v21 reschedule:v24];

    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __87__HMDUserSettingsBackingStoreController_messenger_didReceiveInvitationData_completion___block_invoke;
    v31[3] = &unk_279723268;
    v31[4] = selfCopy;
    v32 = completionCopy;
    v26 = [v25 addCompletionBlock:v31];
  }

  else
  {
    v27 = objc_autoreleasePoolPush();
    v28 = selfCopy;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      *buf = 138543874;
      v35 = v30;
      v36 = 2112;
      v37 = dataCopy;
      v38 = 2112;
      v39 = v19;
      _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive share invitation from invitation data: %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v27);
    (*(completionCopy + 2))(completionCopy, 0, v19);
  }
}

void __87__HMDUserSettingsBackingStoreController_messenger_didReceiveInvitationData_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = 138543618;
      v12 = v10;
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Successfully accepted invitation and created shared zone with ID %@", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    [*(a1 + 32) start];
  }

  (*(*(a1 + 40) + 16))();
}

- (void)manager:(id)manager didRequestSendForInvitation:(id)invitation toDevice:(id)device
{
  deviceCopy = device;
  invitationCopy = invitation;
  workQueue = [(HMDUserSettingsBackingStoreController *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  [(HMDUserSettingsBackingStoreController *)self _sendShareInvitation:invitationCopy toUser:0 device:deviceCopy];
}

- (void)manager:(id)manager didRequestSendForInvitation:(id)invitation toUser:(id)user
{
  userCopy = user;
  invitationCopy = invitation;
  workQueue = [(HMDUserSettingsBackingStoreController *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  [(HMDUserSettingsBackingStoreController *)self _sendShareInvitation:invitationCopy toUser:userCopy device:0];
}

- (BOOL)manager:(id)manager shouldShareWithUser:(id)user
{
  userCopy = user;
  workQueue = [(HMDUserSettingsBackingStoreController *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  LOBYTE(workQueue) = [userCopy isOwner];
  return workQueue;
}

- (void)_sendShareInvitation:(id)invitation toUser:(id)user device:(id)device
{
  v43 = *MEMORY[0x277D85DE8];
  invitationCopy = invitation;
  userCopy = user;
  deviceCopy = device;
  workQueue = [(HMDUserSettingsBackingStoreController *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v36 = 0;
  v12 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:invitationCopy requiringSecureCoding:1 error:&v36];
  v13 = v36;
  if (v12)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __76__HMDUserSettingsBackingStoreController__sendShareInvitation_toUser_device___block_invoke;
    aBlock[3] = &unk_279732800;
    aBlock[4] = self;
    v14 = _Block_copy(aBlock);
    if (!(userCopy | deviceCopy))
    {
      _HMFPreconditionFailure();
    }

    v15 = v14;
    if (userCopy)
    {
      v16 = objc_autoreleasePoolPush();
      selfCopy = self;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v19 = v33 = v13;
        shortDescription = [userCopy shortDescription];
        *buf = 138543618;
        v38 = v19;
        v39 = 2112;
        v40 = shortDescription;
        _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Sending share invitation for user settings to user: %@", buf, 0x16u);

        v13 = v33;
      }

      objc_autoreleasePoolPop(v16);
      shareMessenger = [(HMDUserSettingsBackingStoreController *)selfCopy shareMessenger];
      v22 = +[HMDHomeKitVersion version6];
      v23 = [MEMORY[0x277CBEB98] set];
      [shareMessenger sendShareInvitationData:v12 toUser:userCopy minimumHomeKitVersion:v22 requiredSupportedFeatures:v23 completion:v15];
    }

    else
    {
      if (!deviceCopy)
      {
LABEL_15:

        goto LABEL_16;
      }

      v28 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        v31 = HMFGetLogIdentifier();
        [deviceCopy shortDescription];
        v32 = v34 = v13;
        *buf = 138543618;
        v38 = v31;
        v39 = 2112;
        v40 = v32;
        _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_INFO, "%{public}@Sending share invitation for user settings to device: %@", buf, 0x16u);

        v13 = v34;
      }

      objc_autoreleasePoolPop(v28);
      shareMessenger = [(HMDUserSettingsBackingStoreController *)selfCopy2 shareMessenger];
      [shareMessenger sendShareInvitationData:v12 toDevice:deviceCopy completion:v15];
    }

    goto LABEL_15;
  }

  v24 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v26 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    v27 = HMFGetLogIdentifier();
    *buf = 138543874;
    v38 = v27;
    v39 = 2112;
    v40 = invitationCopy;
    v41 = 2112;
    v42 = v13;
    _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_ERROR, "%{public}@Failed to serialize invitation %@: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v24);
LABEL_16:
}

void __76__HMDUserSettingsBackingStoreController__sendShareInvitation_toUser_device___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = *(a1 + 32);
  v8 = HMFGetOSLogHandle();
  v9 = v8;
  if (a2)
  {
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      goto LABEL_7;
    }

    v10 = HMFGetLogIdentifier();
    v18 = 138543362;
    v19 = v10;
    v11 = "%{public}@User settings zone sharing invitation was successfully accepted";
    v12 = v9;
    v13 = OS_LOG_TYPE_INFO;
    v14 = 12;
  }

  else
  {
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v10 = HMFGetLogIdentifier();
    v18 = 138543618;
    v19 = v10;
    v20 = 2112;
    v21 = v5;
    v11 = "%{public}@User settings zone sharing invitation was not accepted: %@";
    v12 = v9;
    v13 = OS_LOG_TYPE_ERROR;
    v14 = 22;
  }

  _os_log_impl(&dword_2531F8000, v12, v13, v11, &v18, v14);

LABEL_7:
  objc_autoreleasePoolPop(v6);
  if (v5)
  {
    v15 = 2;
  }

  else
  {
    v15 = 1;
  }

  v16 = [[HMDUserDataZoneControllerShareLogEvent alloc] initWithResult:v15 didAccept:a2];
  v17 = [*(a1 + 32) logEventSubmitter];
  [v17 submitLogEvent:v16];
}

- (void)_updateLogEventRunState:(int64_t)state
{
  v17 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDUserSettingsBackingStoreController *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if ([(HMDUserSettingsBackingStoreController *)self logEventRunState]!= state)
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      if (state >= 6)
      {
        v11 = MEMORY[0x277CCACA8];
        v12 = [MEMORY[0x277CCABB0] numberWithInteger:state];
        v10 = [v11 stringWithFormat:@"Unknown state %@", v12];
      }

      else
      {
        v10 = off_2797232F0[state];
      }

      *buf = 138543618;
      v14 = v9;
      v15 = 2112;
      v16 = v10;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Updating metric run state to %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    [(HMDUserSettingsBackingStoreController *)selfCopy setLogEventRunState:state];
  }
}

- (void)_updateRunState:(int64_t)state
{
  v15 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDUserSettingsBackingStoreController *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if ([(HMDUserSettingsBackingStoreController *)self runState]!= state)
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v10 = HMDUserSettingsBackingStoreControllerRunStateAsString(state);
      v11 = 138543618;
      v12 = v9;
      v13 = 2112;
      v14 = v10;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Updating run state to %@", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    [(HMDUserSettingsBackingStoreController *)selfCopy setRunState:state];
  }
}

- (id)loadUserSettings
{
  workQueue = [(HMDUserSettingsBackingStoreController *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  localZone = [(HMDUserSettingsBackingStoreController *)self localZone];
  delegate = [(HMDUserSettingsBackingStoreController *)self delegate];
  userUUID = [delegate userUUID];
  v20 = 0;
  v8 = [localZone fetchModelsWithParentModelID:userUUID error:&v20];
  v9 = v20;
  allObjects = [v8 allObjects];
  v11 = [allObjects mutableCopy];

  [v4 addObjectsFromArray:v11];
  if ([v11 count])
  {
    do
    {
      firstObject = [v11 firstObject];
      [v11 hmf_removeFirstObject];
      localZone2 = [(HMDUserSettingsBackingStoreController *)self localZone];
      hmbModelID = [firstObject hmbModelID];
      v19 = v9;
      v15 = [localZone2 fetchModelsWithParentModelID:hmbModelID error:&v19];
      v16 = v19;

      allObjects2 = [v15 allObjects];

      [v4 addObjectsFromArray:allObjects2];
      [v11 addObjectsFromArray:allObjects2];

      v9 = v16;
    }

    while ([v11 count]);
  }

  else
  {
    v16 = v9;
  }

  return v4;
}

- (void)_didFetchZonesWithResult:(id)result isOwnedZone:(BOOL)zone error:(id)error
{
  v92 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  errorCopy = error;
  workQueue = [(HMDUserSettingsBackingStoreController *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (resultCopy)
  {
    zoneCopy = zone;
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      localZone = [resultCopy localZone];
      *buf = 138543618;
      v87 = v14;
      v88 = 2112;
      v89 = localZone;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Did fetch zones with local zone %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    delegate = [(HMDUserSettingsBackingStoreController *)selfCopy delegate];
    localZone2 = [resultCopy localZone];
    [(HMDUserSettingsBackingStoreController *)selfCopy setLocalZone:localZone2];

    localZone3 = [(HMDUserSettingsBackingStoreController *)selfCopy localZone];
    [localZone3 addObserverForAllModels:selfCopy];

    localZone4 = [(HMDUserSettingsBackingStoreController *)selfCopy localZone];
    [localZone4 startUp];

    [delegate didStartLocalZoneForBackingStoreController:selfCopy];
    if (selfCopy)
    {
      v74 = delegate;
      v75 = errorCopy;
      v76 = resultCopy;
      localZone5 = [(HMDUserSettingsBackingStoreController *)selfCopy localZone];
      v21 = [localZone5 fetchModelsOfType:objc_opt_class() error:0];

      v22 = [MEMORY[0x277CBEB58] set];
      v82 = 0u;
      v83 = 0u;
      v84 = 0u;
      v85 = 0u;
      v23 = v21;
      v24 = [v23 countByEnumeratingWithState:&v82 objects:buf count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v83;
        do
        {
          for (i = 0; i != v25; ++i)
          {
            if (*v83 != v26)
            {
              objc_enumerationMutation(v23);
            }

            v28 = *(*(&v82 + 1) + 8 * i);
            subjectDeviceIdentifier = [v28 subjectDeviceIdentifier];
            hmbParentModelID = [v28 hmbParentModelID];
            v31 = [(HMDUserSettingsBackingStoreController *)selfCopy _uuidForActivitySubject:subjectDeviceIdentifier observer:hmbParentModelID];

            hmbModelID = [v28 hmbModelID];
            LOBYTE(subjectDeviceIdentifier) = [hmbModelID isEqual:v31];

            if ((subjectDeviceIdentifier & 1) == 0)
            {
              hmbModelID2 = [v28 hmbModelID];
              [v22 addObject:hmbModelID2];
            }
          }

          v25 = [v23 countByEnumeratingWithState:&v82 objects:buf count:16];
        }

        while (v25);
      }

      if ([v22 count])
      {
        localZone6 = [(HMDUserSettingsBackingStoreController *)selfCopy localZone];
        v35 = [MEMORY[0x277D17108] optionsWithLabel:@"Removing non-derived HMDIDSActivityRegistrationModels"];
        v36 = [localZone6 removeModelIDs:v22 options:v35];
      }

      errorCopy = v75;
      resultCopy = v76;
      delegate = v74;
    }

    cloudZone = [resultCopy cloudZone];
    [(HMDUserSettingsBackingStoreController *)selfCopy setCloudZone:cloudZone];

    if ([delegate isCurrentUser] && (objc_msgSend(delegate, "isRunningOnHomeOwnersDevice") & 1) == 0)
    {
      v38 = objc_autoreleasePoolPush();
      v39 = selfCopy;
      v40 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        v41 = HMFGetLogIdentifier();
        *buf = 138543362;
        v87 = v41;
        _os_log_impl(&dword_2531F8000, v40, OS_LOG_TYPE_INFO, "%{public}@Starting participant manager to share with owner", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v38);
      cloudZone2 = [resultCopy cloudZone];
      v43 = [delegate backingStoreController:v39 createParticipantManagerForCloudZone:cloudZone2];
      [(HMDUserSettingsBackingStoreController *)v39 setParticipantsManager:v43];

      participantsManager = [(HMDUserSettingsBackingStoreController *)v39 participantsManager];
      [participantsManager setDataSource:v39];

      participantsManager2 = [(HMDUserSettingsBackingStoreController *)v39 participantsManager];
      [participantsManager2 setDelegate:v39];

      participantsManager3 = [(HMDUserSettingsBackingStoreController *)v39 participantsManager];
      [participantsManager3 configure];

      participantsManager4 = [(HMDUserSettingsBackingStoreController *)v39 participantsManager];
      [participantsManager4 updateShareParticipants];
    }

    v48 = selfCopy->_logger;
    v49 = v48;
    startupSignPost = selfCopy->_startupSignPost;
    if (startupSignPost - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v48))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_2531F8000, v49, OS_SIGNPOST_EVENT, startupSignPost, "UserZone.Startup", "Fetched Zones", buf, 2u);
    }

    cloudZone3 = [(HMDUserSettingsBackingStoreController *)selfCopy cloudZone];
    startUp = [cloudZone3 startUp];
    v53 = MEMORY[0x277D2C938];
    workQueue2 = [(HMDUserSettingsBackingStoreController *)selfCopy workQueue];
    v55 = [v53 schedulerWithDispatchQueue:workQueue2];
    v56 = [startUp reschedule:v55];
    v81[0] = MEMORY[0x277D85DD0];
    v81[1] = 3221225472;
    v81[2] = __84__HMDUserSettingsBackingStoreController__didFetchZonesWithResult_isOwnedZone_error___block_invoke;
    v81[3] = &unk_2797359D8;
    v81[4] = selfCopy;
    v57 = [v56 addFailureBlock:v81];

    cloudZone4 = [(HMDUserSettingsBackingStoreController *)selfCopy cloudZone];
    startUp2 = [cloudZone4 startUp];
    v60 = MEMORY[0x277D2C938];
    workQueue3 = [(HMDUserSettingsBackingStoreController *)selfCopy workQueue];
    v62 = [v60 schedulerWithDispatchQueue:workQueue3];
    v63 = [startUp2 reschedule:v62];
    v78[0] = MEMORY[0x277D85DD0];
    v78[1] = 3221225472;
    v78[2] = __84__HMDUserSettingsBackingStoreController__didFetchZonesWithResult_isOwnedZone_error___block_invoke_114;
    v78[3] = &unk_27972CF98;
    v80 = zoneCopy;
    v78[4] = selfCopy;
    v79 = delegate;
    v64 = delegate;
    v65 = [v63 addSuccessBlock:v78];
  }

  else
  {
    v66 = self->_logger;
    v67 = v66;
    v68 = self->_startupSignPost;
    if (v68 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v66))
    {
      *buf = 138412290;
      v87 = errorCopy;
      _os_signpost_emit_with_name_impl(&dword_2531F8000, v67, OS_SIGNPOST_INTERVAL_END, v68, "UserZone.Startup", "Error=%{signpost.description:attribute}@ ", buf, 0xCu);
    }

    v69 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v71 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
    {
      v72 = HMFGetLogIdentifier();
      zoneName = [(HMDUserSettingsBackingStoreController *)selfCopy2 zoneName];
      *buf = 138543874;
      v87 = v72;
      v88 = 2112;
      v89 = zoneName;
      v90 = 2112;
      v91 = errorCopy;
      _os_log_impl(&dword_2531F8000, v71, OS_LOG_TYPE_ERROR, "%{public}@Failed to open zones for user settings with zone ID %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v69);
    [(HMDUserSettingsBackingStoreController *)selfCopy2 _updateRunState:0];
    [(HMDUserSettingsBackingStoreController *)selfCopy2 _updateLogEventRunState:3];
  }
}

void __84__HMDUserSettingsBackingStoreController__didFetchZonesWithResult_isOwnedZone_error___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v11 = 138543618;
    v12 = v7;
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Zone failed to startup: %@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = *(*(a1 + 32) + 8);
  v9 = v8;
  v10 = *(*(a1 + 32) + 16);
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    v11 = 138412290;
    v12 = v3;
    _os_signpost_emit_with_name_impl(&dword_2531F8000, v9, OS_SIGNPOST_INTERVAL_END, v10, "UserZone.Startup", "Error=%{signpost.description:attribute}@ ", &v11, 0xCu);
  }

  [*(a1 + 32) _updateRunState:0];
  [*(a1 + 32) _updateLogEventRunState:3];
}

void __84__HMDUserSettingsBackingStoreController__didFetchZonesWithResult_isOwnedZone_error___block_invoke_114(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v13 = 138543362;
    v14 = v7;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Started user data zone.", &v13, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  v8 = *(*(a1 + 32) + 8);
  v9 = v8;
  v10 = *(*(a1 + 32) + 16);
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    LOWORD(v13) = 0;
    _os_signpost_emit_with_name_impl(&dword_2531F8000, v9, OS_SIGNPOST_INTERVAL_END, v10, "UserZone.Startup", "", &v13, 2u);
  }

  if (*(a1 + 48) == 1)
  {
    v11 = [*(a1 + 32) cloudZone];
    v12 = [v11 registerSubscriptionForExternalRecordType:0];
  }

  [*(a1 + 32) _updateRunState:2];
  [*(a1 + 32) _updateLogEventRunState:2];
  [*(a1 + 40) didStartBackingStoreController:*(a1 + 32)];
}

- (id)_uuidForActivitySubject:(void *)subject observer:
{
  if (self)
  {
    v4 = MEMORY[0x277CCAD78];
    v5 = a2;
    data = [subject data];
    v7 = [v4 hm_deriveUUIDFromBaseUUID:v5 identifierSalt:data];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_startWithSharedZone
{
  v33 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDUserSettingsBackingStoreController *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  database = [(HMDUserSettingsBackingStoreController *)self database];
  v5 = [database registerSharedSubscriptionForExternalRecordType:0];

  database2 = [(HMDUserSettingsBackingStoreController *)self database];
  zoneName = [(HMDUserSettingsBackingStoreController *)self zoneName];
  v8 = [database2 existingSharedZoneIDWithName:zoneName];

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);
  if (v8)
  {
    if (v12)
    {
      v13 = HMFGetLogIdentifier();
      zoneName2 = [(HMDUserSettingsBackingStoreController *)selfCopy zoneName];
      *buf = 138543874;
      v28 = v13;
      v29 = 2112;
      v30 = v8;
      v31 = 2112;
      v32 = zoneName2;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Got zoneID %@ for user settings zone %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    database3 = [(HMDUserSettingsBackingStoreController *)selfCopy database];
    v16 = objc_alloc_init(MEMORY[0x277D17068]);
    v26 = 0;
    v17 = [database3 sharedZonesWithID:v8 configuration:v16 delegate:0 error:&v26];
    shareMessenger = v26;

    [(HMDUserSettingsBackingStoreController *)selfCopy _didFetchZonesWithResult:v17 isOwnedZone:0 error:shareMessenger];
  }

  else
  {
    if (v12)
    {
      v19 = HMFGetLogIdentifier();
      zoneName3 = [(HMDUserSettingsBackingStoreController *)selfCopy zoneName];
      *buf = 138543618;
      v28 = v19;
      v29 = 2112;
      v30 = zoneName3;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@No shared zone exists for user settings with zone name %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    [(HMDUserSettingsBackingStoreController *)selfCopy _updateRunState:0];
    [(HMDUserSettingsBackingStoreController *)selfCopy _updateLogEventRunState:5];
    delegate = [(HMDUserSettingsBackingStoreController *)selfCopy delegate];
    v17 = [delegate ownerForUserSettingsBackingStoreController:selfCopy];

    v22 = objc_autoreleasePoolPush();
    v23 = selfCopy;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543618;
      v28 = v25;
      v29 = 2112;
      v30 = v17;
      _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_INFO, "%{public}@Requesting user settings share from user: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
    shareMessenger = [(HMDUserSettingsBackingStoreController *)v23 shareMessenger];
    [shareMessenger requestShareInvitationDataFromUser:v17];
  }
}

- (void)_startWithOwnedZone
{
  workQueue = [(HMDUserSettingsBackingStoreController *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = objc_alloc_init(MEMORY[0x277D170E8]);
  [v4 setShouldRebuildOnManateeKeyLoss:1];
  database = [(HMDUserSettingsBackingStoreController *)self database];
  zoneName = [(HMDUserSettingsBackingStoreController *)self zoneName];
  v9 = 0;
  v7 = [database privateZonesWithName:zoneName configuration:v4 delegate:0 error:&v9];
  v8 = v9;

  [(HMDUserSettingsBackingStoreController *)self _didFetchZonesWithResult:v7 isOwnedZone:1 error:v8];
}

- (void)updateParticipants
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Updating participants", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  participantsManager = [(HMDUserSettingsBackingStoreController *)selfCopy participantsManager];
  [participantsManager updateShareParticipants];
}

- (void)clearParticipants
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Clearing participants", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  participantsManager = [(HMDUserSettingsBackingStoreController *)selfCopy participantsManager];
  [participantsManager clearParticipants];
}

- (id)queryPushTokensForDevicesObservingSubjectDevice:(id)device subActivity:(id)activity
{
  v30[1] = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  activityCopy = activity;
  v29 = @"subjectDeviceIdentifier";
  v30[0] = deviceCopy;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:1];
  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    *buf = 138543618;
    v26 = v12;
    v27 = 2112;
    v28 = deviceCopy;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Querying all models observing %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  localZone = [(HMDUserSettingsBackingStoreController *)selfCopy localZone];
  v14 = +[HMDIDSActivityRegistrationModel registeredDevicesQuery];
  v15 = [localZone queryModelsUsingQuery:v14 arguments:v8];

  array = [MEMORY[0x277CBEB18] array];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __101__HMDUserSettingsBackingStoreController_queryPushTokensForDevicesObservingSubjectDevice_subActivity___block_invoke;
  v21[3] = &unk_279723240;
  v22 = activityCopy;
  v23 = selfCopy;
  v24 = array;
  v17 = array;
  v18 = activityCopy;
  [v15 enumerateObjectsUsingBlock:v21];
  v19 = objc_msgSend_copy(v17);

  return v19;
}

void __101__HMDUserSettingsBackingStoreController_queryPushTokensForDevicesObservingSubjectDevice_subActivity___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 subActivities];
  v5 = [v4 containsObject:*(a1 + 32)];

  if (v5)
  {
    v6 = [*(a1 + 40) localZone];
    v7 = [v3 hmbParentModelID];
    v18 = 0;
    v8 = [v6 fetchModelWithModelID:v7 ofType:objc_opt_class() error:&v18];
    v9 = v18;

    v10 = [v8 pushToken];

    if (v10)
    {
      v11 = *(a1 + 48);
      v12 = [v8 pushToken];
      [v11 addObject:v12];
    }

    else
    {
      v13 = objc_autoreleasePoolPush();
      v14 = *(a1 + 40);
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = HMFGetLogIdentifier();
        v17 = @"No parent observer model found";
        *buf = 138543874;
        v20 = v16;
        if (v9)
        {
          v17 = v9;
        }

        v21 = 2112;
        v22 = v3;
        v23 = 2112;
        v24 = v17;
        _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@Unable to locate push token for registration %@: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v13);
    }
  }
}

- (void)deregisterObserverDeviceIdentifier:(id)identifier
{
  v21 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v18 = v8;
    v19 = 2112;
    v20 = identifierCopy;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Removing IDS Activity Observer: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  localZone = [(HMDUserSettingsBackingStoreController *)selfCopy localZone];
  v10 = [MEMORY[0x277CBEB98] setWithObject:identifierCopy];
  v11 = [MEMORY[0x277D17108] optionsWithLabel:@"Removing IDS Activity Observer"];
  v12 = [localZone removeModelIDs:v10 options:v11];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __76__HMDUserSettingsBackingStoreController_deregisterObserverDeviceIdentifier___block_invoke;
  v15[3] = &unk_2797358C8;
  v15[4] = selfCopy;
  v16 = identifierCopy;
  v13 = identifierCopy;
  v14 = [v12 addFailureBlock:v15];
}

void __76__HMDUserSettingsBackingStoreController_deregisterObserverDeviceIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
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
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to remove IDS Activity observer %@: %@", &v9, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
}

- (void)deregisterObserverDeviceIdentifier:(id)identifier observerPushToken:(id)token subActivity:(id)activity subjectDeviceIdentifier:(id)deviceIdentifier
{
  v61 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  tokenCopy = token;
  activityCopy = activity;
  deviceIdentifierCopy = deviceIdentifier;
  localZone = [(HMDUserSettingsBackingStoreController *)self localZone];
  v15 = [localZone fetchModelWithModelID:identifierCopy ofType:objc_opt_class() error:0];

  if (v15)
  {
    v16 = [(HMDUserSettingsBackingStoreController *)self _registrationWithParent:identifierCopy subjectDeviceIdentifier:deviceIdentifierCopy];
    if (v16)
    {
      v17 = [MEMORY[0x277CBEB58] set];
      subActivities = [v16 subActivities];
      v19 = [subActivities containsObject:activityCopy];

      v51 = deviceIdentifierCopy;
      v52 = tokenCopy;
      if (v19)
      {
        v20 = MEMORY[0x277CBEB18];
        subActivities2 = [v16 subActivities];
        v22 = [v20 arrayWithArray:subActivities2];

        [v22 removeObject:activityCopy];
        v23 = objc_msgSend_copy(v22);
        [v16 setSubActivities:v23];

        context = objc_autoreleasePoolPush();
        selfCopy = self;
        v25 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          HMFGetLogIdentifier();
          v27 = v26 = v17;
          *buf = 138543874;
          v56 = v27;
          v57 = 2112;
          v58 = activityCopy;
          v59 = 2112;
          v60 = v22;
          _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_INFO, "%{public}@Removed subActivity %@ from existing list %@", buf, 0x20u);

          v17 = v26;
        }

        objc_autoreleasePoolPop(context);
        [v17 addObject:v16];

        tokenCopy = v52;
      }

      [v15 pushToken];
      v29 = v28 = v17;
      v30 = [tokenCopy isEqualToData:v29];

      v31 = v28;
      if ((v30 & 1) == 0)
      {
        [v15 setPushToken:tokenCopy];
        [v28 addObject:v15];
      }

      if ([v28 count])
      {
        v32 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v34 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          v35 = HMFGetLogIdentifier();
          *buf = 138543874;
          v56 = v35;
          v57 = 2112;
          v58 = activityCopy;
          v59 = 2112;
          v60 = identifierCopy;
          _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_DEFAULT, "%{public}@Removing subActivity %@ from IDS Activity Registration for: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v32);
        localZone2 = [(HMDUserSettingsBackingStoreController *)selfCopy2 localZone];
        v37 = [MEMORY[0x277CBEB98] setWithObjects:{v15, v16, 0}];
        v38 = [MEMORY[0x277D17108] optionsWithLabel:@"Updating IDS Activity Registration"];
        v39 = [localZone2 addModels:v37 options:v38];
        v53[0] = MEMORY[0x277D85DD0];
        v53[1] = 3221225472;
        v53[2] = __130__HMDUserSettingsBackingStoreController_deregisterObserverDeviceIdentifier_observerPushToken_subActivity_subjectDeviceIdentifier___block_invoke;
        v53[3] = &unk_2797358C8;
        v53[4] = selfCopy2;
        v54 = identifierCopy;
        v40 = [v39 addFailureBlock:v53];

        tokenCopy = v52;
        v31 = v28;
      }

      deviceIdentifierCopy = v51;
    }

    else
    {
      v45 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v47 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v49 = v48 = tokenCopy;
        *buf = 138543618;
        v56 = v49;
        v57 = 2112;
        v58 = identifierCopy;
        _os_log_impl(&dword_2531F8000, v47, OS_LOG_TYPE_INFO, "%{public}@Unable to deregister, no IDS Activty Registration model found for %@", buf, 0x16u);

        tokenCopy = v48;
      }

      objc_autoreleasePoolPop(v45);
    }
  }

  else
  {
    v41 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v43 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
    {
      v44 = HMFGetLogIdentifier();
      *buf = 138543618;
      v56 = v44;
      v57 = 2112;
      v58 = identifierCopy;
      _os_log_impl(&dword_2531F8000, v43, OS_LOG_TYPE_INFO, "%{public}@Unable to deregister, no IDS Activty Observer model found for %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v41);
  }
}

- (id)_registrationWithParent:(void *)parent subjectDeviceIdentifier:
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  parentCopy = parent;
  if (self)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    localZone = [self localZone];
    v8 = [localZone fetchModelsWithParentModelID:v5 error:0];

    v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = *v17;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v16 + 1) + 8 * i);
          subjectDeviceIdentifier = [v12 subjectDeviceIdentifier];
          v14 = [subjectDeviceIdentifier isEqual:parentCopy];

          if (v14)
          {
            v9 = v12;
            goto LABEL_12;
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __130__HMDUserSettingsBackingStoreController_deregisterObserverDeviceIdentifier_observerPushToken_subActivity_subjectDeviceIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
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
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to update IDS Activity registration for %@: %@", &v9, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
}

- (void)updateObserverDeviceIdentifier:(id)identifier observerPushToken:(id)token
{
  v32 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  tokenCopy = token;
  localZone = [(HMDUserSettingsBackingStoreController *)self localZone];
  v9 = [localZone fetchModelWithModelID:identifierCopy ofType:objc_opt_class() error:0];

  if (!v9)
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v29 = v15;
      v30 = 2112;
      v31 = identifierCopy;
      v16 = "%{public}@Unable to update observer pushToken, no IDS Activty Observer model found for %@";
      goto LABEL_7;
    }

LABEL_8:

    objc_autoreleasePoolPop(v12);
    goto LABEL_12;
  }

  pushToken = [v9 pushToken];
  v11 = [tokenCopy isEqualToData:pushToken];

  if (v11)
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v29 = v15;
      v30 = 2112;
      v31 = identifierCopy;
      v16 = "%{public}@Push token already up to date for %@";
LABEL_7:
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, v16, buf, 0x16u);

      goto LABEL_8;
    }

    goto LABEL_8;
  }

  [v9 setPushToken:tokenCopy];
  v17 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = HMFGetLogIdentifier();
    *buf = 138543618;
    v29 = v20;
    v30 = 2112;
    v31 = identifierCopy;
    _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@Updating IDS Activity observer pushToken: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v17);
  localZone2 = [(HMDUserSettingsBackingStoreController *)selfCopy3 localZone];
  v22 = [MEMORY[0x277CBEB98] setWithObject:v9];
  v23 = [MEMORY[0x277D17108] optionsWithLabel:@"Reregistering IDS Activity Observer"];
  v24 = [localZone2 addModels:v22 options:v23];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __90__HMDUserSettingsBackingStoreController_updateObserverDeviceIdentifier_observerPushToken___block_invoke;
  v26[3] = &unk_2797358C8;
  v26[4] = selfCopy3;
  v27 = identifierCopy;
  v25 = [v24 addFailureBlock:v26];

LABEL_12:
}

void __90__HMDUserSettingsBackingStoreController_updateObserverDeviceIdentifier_observerPushToken___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
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
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to update IDS Activity for observer %@: %@", &v9, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
}

- (void)registerObserverDeviceIdentifier:(id)identifier observerPushToken:(id)token subActivity:(id)activity subjectDeviceIdentifier:(id)deviceIdentifier
{
  v64[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  tokenCopy = token;
  activityCopy = activity;
  deviceIdentifierCopy = deviceIdentifier;
  v14 = [MEMORY[0x277CBEB58] set];
  localZone = [(HMDUserSettingsBackingStoreController *)self localZone];
  v16 = [localZone fetchModelWithModelID:identifierCopy ofType:objc_opt_class() error:0];

  v55 = activityCopy;
  if (!v16)
  {
    v31 = objc_autoreleasePoolPush();
    selfCopy = self;
    v33 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      v34 = HMFGetLogIdentifier();
      *buf = 138543618;
      v59 = v34;
      v60 = 2112;
      v61 = identifierCopy;
      _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_INFO, "%{public}@No IDS Activity observer found for %@, creating", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v31);
    v16 = [[HMDIDSActivityObserverModel alloc] initWithModelID:identifierCopy];
    [v14 addObject:v16];
    goto LABEL_13;
  }

  v17 = [(HMDUserSettingsBackingStoreController *)self _registrationWithParent:identifierCopy subjectDeviceIdentifier:deviceIdentifierCopy];
  if (!v17)
  {
LABEL_13:
    v54 = tokenCopy;
    v35 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v37 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      v38 = HMFGetLogIdentifier();
      *buf = 138543618;
      v59 = v38;
      v60 = 2112;
      v61 = deviceIdentifierCopy;
      _os_log_impl(&dword_2531F8000, v37, OS_LOG_TYPE_INFO, "%{public}@No IDS Activity registration found for %@, creating", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v35);
    v26 = [(HMDUserSettingsBackingStoreController *)selfCopy2 _uuidForActivitySubject:deviceIdentifierCopy observer:identifierCopy];
    v39 = [HMDIDSActivityRegistrationModel alloc];
    hmbModelID = [(HMBModel *)v16 hmbModelID];
    v18 = [(HMBModel *)v39 initWithModelID:v26 parentModelID:hmbModelID];

    [(HMDIDSActivityRegistrationModel *)v18 setSubjectDeviceIdentifier:deviceIdentifierCopy];
    v64[0] = v55;
    v41 = [MEMORY[0x277CBEA60] arrayWithObjects:v64 count:1];
    [(HMDIDSActivityRegistrationModel *)v18 setSubActivities:v41];

    goto LABEL_16;
  }

  v18 = v17;
  subActivities = [(HMDIDSActivityRegistrationModel *)v17 subActivities];
  v20 = activityCopy;
  v21 = [subActivities containsObject:activityCopy];

  if (v21)
  {
    goto LABEL_17;
  }

  v54 = tokenCopy;
  v22 = MEMORY[0x277CBEB18];
  subActivities2 = [(HMDIDSActivityRegistrationModel *)v18 subActivities];
  v24 = subActivities2;
  if (subActivities2)
  {
    v25 = subActivities2;
  }

  else
  {
    v25 = MEMORY[0x277CBEBF8];
  }

  v26 = [v22 arrayWithArray:v25];

  [v26 addObject:v20];
  v27 = objc_msgSend_copy(v26);
  [(HMDIDSActivityRegistrationModel *)v18 setSubActivities:v27];

  v28 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v30 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
  {
    v53 = HMFGetLogIdentifier();
    *buf = 138543874;
    v59 = v53;
    v60 = 2112;
    v61 = v55;
    v62 = 2112;
    v63 = v26;
    _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_INFO, "%{public}@Added subActivity %@ to existing list %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v28);
LABEL_16:
  [v14 addObject:v18];

  tokenCopy = v54;
LABEL_17:
  pushToken = [(HMDIDSActivityObserverModel *)v16 pushToken];
  v43 = [tokenCopy isEqualToData:pushToken];

  v44 = v55;
  if ((v43 & 1) == 0)
  {
    [(HMDIDSActivityObserverModel *)v16 setPushToken:tokenCopy];
    [v14 addObject:v16];
  }

  if ([v14 count])
  {
    v45 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v47 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      v48 = HMFGetLogIdentifier();
      *buf = 138543618;
      v59 = v48;
      v60 = 2112;
      v61 = v14;
      _os_log_impl(&dword_2531F8000, v47, OS_LOG_TYPE_DEFAULT, "%{public}@Updating IDS Activity Registration info: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v45);
    localZone2 = [(HMDUserSettingsBackingStoreController *)selfCopy4 localZone];
    v50 = [MEMORY[0x277D17108] optionsWithLabel:@"Updating IDS Activity Registration"];
    v51 = [localZone2 addModels:v14 options:v50];
    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = __128__HMDUserSettingsBackingStoreController_registerObserverDeviceIdentifier_observerPushToken_subActivity_subjectDeviceIdentifier___block_invoke;
    v56[3] = &unk_2797358C8;
    v56[4] = selfCopy4;
    v57 = identifierCopy;
    v52 = [v51 addFailureBlock:v56];

    v44 = v55;
  }
}

void __128__HMDUserSettingsBackingStoreController_registerObserverDeviceIdentifier_observerPushToken_subActivity_subjectDeviceIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
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
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to update IDS Activity registration for observer %@: %@", &v9, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
}

- (void)destroyZone
{
  v16 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDUserSettingsBackingStoreController *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = HMFGetLogIdentifier();
    v14 = 138543362;
    v15 = v7;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Destroying zone", &v14, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  delegate = [(HMDUserSettingsBackingStoreController *)selfCopy delegate];
  isCurrentUser = [delegate isCurrentUser];

  database = [(HMDUserSettingsBackingStoreController *)selfCopy database];
  zoneName = [(HMDUserSettingsBackingStoreController *)selfCopy zoneName];
  if (isCurrentUser)
  {
    v12 = [database removePrivateZonesWithName:zoneName];
  }

  else
  {
    v13 = [database removeSharedZonesWithName:zoneName];
  }

  [(HMDUserSettingsBackingStoreController *)selfCopy _invalidate];
}

- (void)_invalidate
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Invalidating user zone", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  workQueue = [(HMDUserSettingsBackingStoreController *)selfCopy workQueue];
  dispatch_assert_queue_V2(workQueue);

  [(HMDUserSettingsBackingStoreController *)selfCopy setLocalZone:0];
  [(HMDUserSettingsBackingStoreController *)selfCopy setCloudZone:0];
  [(HMDUserSettingsBackingStoreController *)selfCopy _updateRunState:0];
  [(HMDUserSettingsBackingStoreController *)selfCopy _updateLogEventRunState:4];
}

- (void)registerForSharedUserDataModelUpdates:(id)updates modelID:(id)d
{
  dCopy = d;
  [(HMDUserSettingsBackingStoreController *)self setSharedUserDataModelUpdateReceiver:updates];
  [(HMDUserSettingsBackingStoreController *)self setSharedUserDataModelUpdateModelID:dCopy];
}

- (void)registerForUserSupportsAutomaticHH2MigrationModelUpdates:(id)updates modelID:(id)d
{
  dCopy = d;
  updatesCopy = updates;
  workQueue = [(HMDUserSettingsBackingStoreController *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  [(HMDUserSettingsBackingStoreController *)self setUserSupportsAutomaticHH2MigrationModelUpdateReceiver:updatesCopy];
  [(HMDUserSettingsBackingStoreController *)self setUserSupportsAutomaticHH2MigrationModelID:dCopy];
}

- (id)loadUserSupportsAutomaticHH2MigrationModelWithModelID:(id)d error:(id *)error
{
  dCopy = d;
  workQueue = [(HMDUserSettingsBackingStoreController *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  localZone = [(HMDUserSettingsBackingStoreController *)self localZone];
  v9 = [localZone fetchModelWithModelID:dCopy error:error];

  return v9;
}

- (void)registerForUserListeningHistoryUpdateControlModelUpdates:(id)updates modelID:(id)d
{
  dCopy = d;
  updatesCopy = updates;
  workQueue = [(HMDUserSettingsBackingStoreController *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  [(HMDUserSettingsBackingStoreController *)self setUserListeningHistoryUpdateControlModelUpdateReceiver:updatesCopy];
  [(HMDUserSettingsBackingStoreController *)self setUserListeningHistoryUpdateModelID:dCopy];
}

- (id)loadUserListeningHistoryUpdateControlModelWithModelID:(id)d error:(id *)error
{
  dCopy = d;
  workQueue = [(HMDUserSettingsBackingStoreController *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  localZone = [(HMDUserSettingsBackingStoreController *)self localZone];
  v9 = [localZone fetchModelWithModelID:dCopy error:error];

  return v9;
}

- (void)registerForMediaContentAccessControlModelUpdates:(id)updates modelID:(id)d
{
  dCopy = d;
  updatesCopy = updates;
  workQueue = [(HMDUserSettingsBackingStoreController *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  [(HMDUserSettingsBackingStoreController *)self setMediaContentProfileAccessControlModelUpdateReceiver:updatesCopy];
  [(HMDUserSettingsBackingStoreController *)self setMediaContentProfileAccessControlModelID:dCopy];
}

- (id)loadMediaContentAccessControlModelWithModelID:(id)d error:(id *)error
{
  dCopy = d;
  workQueue = [(HMDUserSettingsBackingStoreController *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  localZone = [(HMDUserSettingsBackingStoreController *)self localZone];
  v9 = [localZone fetchModelWithModelID:dCopy error:error];

  return v9;
}

- (void)registerForAssistantAccessControlModelUpdates:(id)updates modelID:(id)d
{
  dCopy = d;
  updatesCopy = updates;
  workQueue = [(HMDUserSettingsBackingStoreController *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  [(HMDUserSettingsBackingStoreController *)self setAssistantAccessControlModelUpdateReceiver:updatesCopy];
  [(HMDUserSettingsBackingStoreController *)self setAssistantAccessControlModelID:dCopy];
}

- (id)loadAssistantAccessControlModelWithModelID:(id)d error:(id *)error
{
  v22 = *MEMORY[0x277D85DE8];
  dCopy = d;
  workQueue = [(HMDUserSettingsBackingStoreController *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  localZone = [(HMDUserSettingsBackingStoreController *)self localZone];
  v9 = [localZone fetchModelWithModelID:dCopy error:error];

  v10 = v9;
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

  if (v10 && !v12)
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      v18 = 138543618;
      v19 = v16;
      v20 = 2112;
      v21 = v10;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@Obtained model of unexpected type %@", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
  }

  return v12;
}

- (id)loadSharedUserDataModelWithError:(id *)error
{
  localZone = [(HMDUserSettingsBackingStoreController *)self localZone];
  delegate = [(HMDUserSettingsBackingStoreController *)self delegate];
  userUUID = [delegate userUUID];
  v8 = [localZone fetchModelWithModelID:userUUID error:error];

  return v8;
}

- (id)loadPrivateUserDataModelWithError:(id *)error
{
  localZone = [(HMDUserSettingsBackingStoreController *)self localZone];
  delegate = [(HMDUserSettingsBackingStoreController *)self delegate];
  userUUID = [delegate userUUID];
  v8 = [localZone fetchModelWithModelID:userUUID error:error];

  return v8;
}

- (void)start
{
  v30 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDUserSettingsBackingStoreController *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if ([(HMDUserSettingsBackingStoreController *)self runState])
  {
    v4 = objc_autoreleasePoolPush();
    selfCopy = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v8 = HMDUserSettingsBackingStoreControllerRunStateAsString([(HMDUserSettingsBackingStoreController *)selfCopy runState]);
      v26 = 138543618;
      v27 = v7;
      v28 = 2112;
      v29 = v8;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Already in run state %@", &v26, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }

  else
  {
    delegate = [(HMDUserSettingsBackingStoreController *)self delegate];
    if ([delegate isCurrentUser])
    {
      v10 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = HMFGetLogIdentifier();
        userUUID = [delegate userUUID];
        v26 = 138543618;
        v27 = v13;
        v28 = 2112;
        v29 = userUUID;
        _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Starting backing store controller to fetch owned zone for user %@", &v26, 0x16u);
      }

      objc_autoreleasePoolPop(v10);
      [(HMDUserSettingsBackingStoreController *)selfCopy2 _updateRunState:1];
      [(HMDUserSettingsBackingStoreController *)selfCopy2 _updateLogEventRunState:1];
      logger = selfCopy2->_logger;
      if (os_signpost_enabled(logger))
      {
        v16 = logger;
        userUUID2 = [delegate userUUID];
        v26 = 138412546;
        v27 = @"Owned";
        v28 = 2112;
        v29 = userUUID2;
        _os_signpost_emit_with_name_impl(&dword_2531F8000, v16, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "UserZone.Startup", "Type=%{signpost.description:attribute}@ User=%{signpost.description:attribute}@ ", &v26, 0x16u);
      }

      selfCopy2->_startupSignPost = 0xEEEEB0B5B2B2EEEELL;
      [(HMDUserSettingsBackingStoreController *)selfCopy2 _startWithOwnedZone];
    }

    else if (([delegate isCurrentUser] & 1) == 0 && objc_msgSend(delegate, "isRunningOnHomeOwnersDevice"))
    {
      v18 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = HMFGetLogIdentifier();
        userUUID3 = [delegate userUUID];
        v26 = 138543618;
        v27 = v21;
        v28 = 2112;
        v29 = userUUID3;
        _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_INFO, "%{public}@Starting backing store controller to fetch shared zone for user %@", &v26, 0x16u);
      }

      objc_autoreleasePoolPop(v18);
      [(HMDUserSettingsBackingStoreController *)selfCopy3 _updateRunState:1];
      [(HMDUserSettingsBackingStoreController *)selfCopy3 _updateLogEventRunState:1];
      v23 = selfCopy3->_logger;
      if (os_signpost_enabled(v23))
      {
        v24 = v23;
        userUUID4 = [delegate userUUID];
        v26 = 138412546;
        v27 = @"Shared";
        v28 = 2112;
        v29 = userUUID4;
        _os_signpost_emit_with_name_impl(&dword_2531F8000, v24, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "UserZone.Startup", "Type=%{signpost.description:attribute}@ User=%{signpost.description:attribute}@ ", &v26, 0x16u);
      }

      selfCopy3->_startupSignPost = 0xEEEEB0B5B2B2EEEELL;
      [(HMDUserSettingsBackingStoreController *)selfCopy3 _startWithSharedZone];
    }
  }
}

- (HMDUserSettingsBackingStoreController)initWithDelegate:(id)delegate queue:(id)queue zoneName:(id)name database:(id)database shareMessenger:(id)messenger
{
  delegateCopy = delegate;
  queueCopy = queue;
  nameCopy = name;
  databaseCopy = database;
  messengerCopy = messenger;
  v23.receiver = self;
  v23.super_class = HMDUserSettingsBackingStoreController;
  v17 = [(HMDUserSettingsBackingStoreController *)&v23 init];
  if (v17)
  {
    v18 = HMFGetOSLogHandle();
    logger = v17->_logger;
    v17->_logger = v18;

    v17->_startupSignPost = 0;
    objc_storeWeak(&v17->_delegate, delegateCopy);
    objc_storeStrong(&v17->_workQueue, queue);
    v20 = +[HMDMetricsManager sharedLogEventSubmitter];
    logEventSubmitter = v17->_logEventSubmitter;
    v17->_logEventSubmitter = v20;

    objc_storeStrong(&v17->_zoneName, name);
    objc_storeStrong(&v17->_database, database);
    objc_storeStrong(&v17->_shareMessenger, messenger);
    [(HMDCloudShareMessenger *)v17->_shareMessenger setDelegate:v17];
    [(HMDCloudShareMessenger *)v17->_shareMessenger configure];
    v17->_runState = 0;
    v17->_logEventRunState = 0;
    [databaseCopy addDelegate:v17];
  }

  return v17;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t82 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t82, &__block_literal_global_14079);
  }

  v3 = logCategory__hmf_once_v83;

  return v3;
}

uint64_t __52__HMDUserSettingsBackingStoreController_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v83;
  logCategory__hmf_once_v83 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end