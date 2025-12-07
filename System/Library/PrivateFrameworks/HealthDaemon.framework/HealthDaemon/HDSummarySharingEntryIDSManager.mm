@interface HDSummarySharingEntryIDSManager
- (HDSummarySharingEntryIDSManager)initWithProfile:(id)profile;
- (NSObject)_queue_updateEntryWithInvitationUUID:(uint64_t)d newStatus:(void *)status dateAccepted:(void *)accepted ownerParticipant:(uint64_t)participant error:;
- (id)_deleteProfile:(uint64_t)profile errorOut:;
- (id)_finishHandlerForOperation:(void *)operation completion:;
- (id)_profileForEntry:(uint64_t)entry errorOut:;
- (uint64_t)_queue_insertOrReplaceCodableEntry:(uint64_t)entry ignoreIfExists:(uint64_t)exists shouldResolveCNContact:(uint64_t)contact error:;
- (void)_attemptBestEffortCloudSynchronization;
- (void)acceptInvitationWithUUID:(id)d completion:(id)completion;
- (void)beginObservingReachabilityStatusForIdentifiers:(id)identifiers isInitialQuery:(BOOL)query;
- (void)declineInvitationWithUUID:(id)d completion:(id)completion;
- (void)invitationManager:(id)manager didAcceptInvitation:(id)invitation;
- (void)invitationManager:(id)manager didDeclineInvitation:(id)invitation;
- (void)invitationManager:(id)manager didReceiveInvitation:(id)invitation;
- (void)invitationManager:(id)manager didRescindInvitation:(id)invitation;
- (void)inviteSharingDataWithIdentifier:(id)identifier firstName:(id)name lastName:(id)lastName sharingAuthorizations:(id)authorizations userWheelchairMode:(int64_t)mode completion:(id)completion;
- (void)leaveInvitationWithUUID:(id)d completion:(id)completion;
- (void)profileDidBecomeReady:(id)ready;
- (void)removeObserver:(id)observer;
- (void)revokeInvitationWithUUID:(id)d completion:(id)completion;
@end

@implementation HDSummarySharingEntryIDSManager

- (HDSummarySharingEntryIDSManager)initWithProfile:(id)profile
{
  profileCopy = profile;
  v18.receiver = self;
  v18.super_class = HDSummarySharingEntryIDSManager;
  v5 = [(HDSummarySharingEntryIDSManager *)&v18 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, profileCopy);
    v7 = HKCreateSerialDispatchQueue();
    queue = v6->_queue;
    v6->_queue = v7;

    [profileCopy registerProfileReadyObserver:v6 queue:v6->_queue];
    v9 = objc_alloc_init(MEMORY[0x277CCABD8]);
    operationQueue = v6->_operationQueue;
    v6->_operationQueue = v9;

    [(NSOperationQueue *)v6->_operationQueue setMaxConcurrentOperationCount:1];
    v11 = objc_alloc(MEMORY[0x277CCD738]);
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = HKLogSharing();
    v15 = [v11 initWithName:v13 loggingCategory:v14];
    observers = v6->_observers;
    v6->_observers = v15;
  }

  return v6;
}

- (void)profileDidBecomeReady:(id)ready
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  database = [WeakRetained database];
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__HDSummarySharingEntryIDSManager_profileDidBecomeReady___block_invoke;
  v7[3] = &unk_278613968;
  v7[4] = self;
  [database performWhenDataProtectedByFirstUnlockIsAvailableOnQueue:queue block:v7];
}

void __57__HDSummarySharingEntryIDSManager_profileDidBecomeReady___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    dispatch_assert_queue_V2(*(v1 + 16));
    if (!*(v1 + 48))
    {
      v2 = [[HDIDSInvitationManager alloc] initWithServiceIdentifier:@"com.apple.private.alloy.health.sync.sharingsetup" messageClass:objc_opt_class() schema:@"1"];
      v3 = *(v1 + 48);
      *(v1 + 48) = v2;

      v4 = *(v1 + 48);

      [v4 setDelegate:v1];
    }
  }
}

- (void)removeObserver:(id)observer
{
  [(HKObserverSet *)self->_observers unregisterObserver:observer];
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__HDSummarySharingEntryIDSManager_removeObserver___block_invoke;
  block[3] = &unk_278613968;
  block[4] = self;
  dispatch_sync(queue, block);
}

void *__50__HDSummarySharingEntryIDSManager_removeObserver___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 56) count];
  if (!result)
  {
    v3 = *(*(a1 + 32) + 40);

    return [v3 cancel];
  }

  return result;
}

- (void)beginObservingReachabilityStatusForIdentifiers:(id)identifiers isInitialQuery:(BOOL)query
{
  identifiersCopy = identifiers;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __97__HDSummarySharingEntryIDSManager_beginObservingReachabilityStatusForIdentifiers_isInitialQuery___block_invoke;
  block[3] = &unk_27861F830;
  v10 = identifiersCopy;
  selfCopy = self;
  queryCopy = query;
  v8 = identifiersCopy;
  dispatch_sync(queue, block);
}

void __97__HDSummarySharingEntryIDSManager_beginObservingReachabilityStatusForIdentifiers_isInitialQuery___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) hk_map:&__block_literal_global_87];
  if ([*(*(a1 + 40) + 32) operationCount] && *(a1 + 48) != 1)
  {
    _HKInitializeLogging();
    v12 = HKLogSharing();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 40);
      v14 = [*(a1 + 32) count];
      *buf = 138543618;
      v22 = v13;
      v23 = 2048;
      v24 = v14;
      _os_log_impl(&dword_228986000, v12, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Updating reachability operation for %ld identifiers.", buf, 0x16u);
    }

    [*(*(a1 + 40) + 40) updateDestinations:v2];
  }

  else
  {
    [*(*(a1 + 40) + 32) cancelAllOperations];
    objc_initWeak(&location, *(a1 + 40));
    v3 = [HDIDSReachabilityOperation alloc];
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __97__HDSummarySharingEntryIDSManager_beginObservingReachabilityStatusForIdentifiers_isInitialQuery___block_invoke_3;
    v18 = &unk_27861F808;
    objc_copyWeak(&v19, &location);
    v4 = [(HDIDSReachabilityOperation *)v3 initWithIdentifers:v2 serviceIdentifier:@"com.apple.private.alloy.health.sync.sharingsetup" updateHandler:&v15];
    v5 = *(a1 + 40);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    v7 = objc_alloc(MEMORY[0x277D186D8]);
    v8 = [v7 initWithService:@"com.apple.private.alloy.health.sync.sharingsetup" delegate:*(*(a1 + 40) + 40) queue:{*(*(a1 + 40) + 16), v15, v16, v17, v18}];
    [*(*(a1 + 40) + 40) setQueryController:v8];
    _HKInitializeLogging();
    v9 = HKLogSharing();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 40);
      v11 = [*(a1 + 32) count];
      *buf = 138543618;
      v22 = v10;
      v23 = 2048;
      v24 = v11;
      _os_log_impl(&dword_228986000, v9, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Enqueing reachability operation for %ld identifiers.", buf, 0x16u);
    }

    [*(*(a1 + 40) + 32) addOperation:*(*(a1 + 40) + 40)];
    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }
}

id __97__HDSummarySharingEntryIDSManager_beginObservingReachabilityStatusForIdentifiers_isInitialQuery___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 _appearsToBeEmail])
  {
    v3 = _IDSCopyIDForEmailAddress();
  }

  else if ([v2 _appearsToBePhoneNumber])
  {
    v3 = IDSCopyIDForPhoneNumber();
  }

  else
  {
    v3 = v2;
  }

  v4 = v3;

  return v4;
}

void __97__HDSummarySharingEntryIDSManager_beginObservingReachabilityStatusForIdentifiers_isInitialQuery___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = v6;
  v8 = v5;
  if (WeakRetained)
  {
    v9 = WeakRetained[7];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __80__HDSummarySharingEntryIDSManager__notifyObserversWithReachabilityStatus_error___block_invoke;
    v11[3] = &unk_27861F858;
    v11[4] = WeakRetained;
    v12 = v7;
    v13 = v8;
    [v9 notifyObservers:v11];
  }
}

- (void)inviteSharingDataWithIdentifier:(id)identifier firstName:(id)name lastName:(id)lastName sharingAuthorizations:(id)authorizations userWheelchairMode:(int64_t)mode completion:(id)completion
{
  v40 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  nameCopy = name;
  lastNameCopy = lastName;
  authorizationsCopy = authorizations;
  v19 = [(HDSummarySharingEntryIDSManager *)self _finishHandlerForOperation:completion completion:?];
  _HKInitializeLogging();
  v20 = HKLogSharing();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543619;
    selfCopy = self;
    v38 = 2113;
    v39 = identifierCopy;
    _os_log_impl(&dword_228986000, v20, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Inviting to share data with contact identifier %{private}@", buf, 0x16u);
  }

  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_profile);
  }

  else
  {
    WeakRetained = 0;
  }

  cloudSyncManager = [WeakRetained cloudSyncManager];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __138__HDSummarySharingEntryIDSManager_inviteSharingDataWithIdentifier_firstName_lastName_sharingAuthorizations_userWheelchairMode_completion___block_invoke;
  v28[3] = &unk_27861F8D0;
  v28[4] = self;
  v29 = identifierCopy;
  v30 = nameCopy;
  v31 = lastNameCopy;
  v32 = authorizationsCopy;
  v33 = v19;
  v34 = a2;
  modeCopy = mode;
  v23 = authorizationsCopy;
  v24 = lastNameCopy;
  v25 = nameCopy;
  v26 = identifierCopy;
  v27 = v19;
  [cloudSyncManager fetchCloudKitAccountInfoWithCompletion:v28];
}

- (id)_finishHandlerForOperation:(void *)operation completion:
{
  v5 = a2;
  operationCopy = operation;
  if (self)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __73__HDSummarySharingEntryIDSManager__finishHandlerForOperation_completion___block_invoke;
    aBlock[3] = &unk_278613150;
    aBlock[4] = self;
    v9 = v5;
    v10 = operationCopy;
    self = _Block_copy(aBlock);
  }

  return self;
}

void __138__HDSummarySharingEntryIDSManager_inviteSharingDataWithIdentifier_firstName_lastName_sharingAuthorizations_userWheelchairMode_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v96 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v5 emailAddress];

  if (v7)
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = v9;
    if (v8)
    {
      if ([v9 _appearsToBeEmail])
      {
        v11 = _IDSCopyIDForEmailAddress();
        goto LABEL_13;
      }

      if ([v10 _appearsToBePhoneNumber])
      {
        v11 = _IDSCopyIDForPhoneNumberWithOptions();
LABEL_13:
        v15 = v11;

        if (v15)
        {
          v68 = v6;
          v16 = objc_alloc(MEMORY[0x277CBEB18]);
          v69 = v5;
          v17 = [v5 emailAddress];
          v18 = [v16 initWithObjects:{v17, 0}];

          v72 = *(a1 + 32);
          v67 = v15;
          if (!v72)
          {
            goto LABEL_52;
          }

          v19 = objc_alloc(MEMORY[0x277CC37B0]);
          v20 = [v19 initWithQueue:MEMORY[0x277D85CD0]];
          v86 = 0;
          v21 = [v20 getSubscriptionInfoWithError:&v86];
          v22 = v86;
          if (v22)
          {
            v23 = v22;
            _HKInitializeLogging();
            log = HKLogSharing();
            if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543618;
              v93 = v72;
              v94 = 2114;
              v95 = v23;
              _os_log_error_impl(&dword_228986000, log, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@: Failed to get CTXPCServiceSubscriptionInfo with error, %{public}@", buf, 0x16u);
            }

            v24 = 0;
          }

          else
          {
            v66 = v18;
            v27 = [v21 subscriptionsInUse];

            if (v27)
            {
              v65 = a1;
              log = objc_alloc_init(MEMORY[0x277CBEB18]);
              v82 = 0u;
              v83 = 0u;
              v84 = 0u;
              v85 = 0u;
              v64 = v21;
              v28 = [v21 subscriptionsInUse];
              v29 = [v28 countByEnumeratingWithState:&v82 objects:v88 count:16];
              if (v29)
              {
                v30 = v29;
                v23 = 0;
                v31 = *v83;
                v32 = log;
                do
                {
                  for (i = 0; i != v30; ++i)
                  {
                    if (*v83 != v31)
                    {
                      objc_enumerationMutation(v28);
                    }

                    v34 = *(*(&v82 + 1) + 8 * i);
                    if ([v34 isSimDataOnly])
                    {
                      _HKInitializeLogging();
                      v35 = HKLogSharing();
                      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 138543362;
                        v93 = v72;
                        _os_log_impl(&dword_228986000, v35, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Sim is data only. Skipping...", buf, 0xCu);
                      }
                    }

                    else
                    {
                      v81 = v23;
                      v35 = [v20 getPhoneNumber:v34 error:&v81];
                      v36 = v81;

                      _HKInitializeLogging();
                      if (v36)
                      {
                        v37 = HKLogSharing();
                        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 138543618;
                          v93 = v72;
                          v94 = 2114;
                          v95 = v36;
                          _os_log_error_impl(&dword_228986000, v37, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@: Failed to get sim Phone Number with error, %{public}@", buf, 0x16u);
                        }
                      }

                      else
                      {
                        v38 = *MEMORY[0x277CCC328];
                        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
                        {
                          v39 = v38;
                          v40 = [v35 number];
                          *buf = 138477827;
                          v93 = v40;
                          _os_log_impl(&dword_228986000, v39, OS_LOG_TYPE_DEFAULT, "Found sim phone number %{private}@", buf, 0xCu);

                          v32 = log;
                        }

                        v37 = [v35 number];
                        [v32 addObject:v37];
                      }

                      v23 = v36;
                    }
                  }

                  v30 = [v28 countByEnumeratingWithState:&v82 objects:v88 count:16];
                }

                while (v30);
              }

              else
              {
                v23 = 0;
                v32 = log;
              }

              v24 = [v32 count]? objc_msgSend_copy(v32) : 0;
              a1 = v65;
              v18 = v66;
              v21 = v64;
            }

            else
            {
              _HKInitializeLogging();
              log = HKLogSharing();
              if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543362;
                v93 = v72;
                _os_log_error_impl(&dword_228986000, log, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@: CTXPCServiceSubscriptionContext returned nil when fetching sim phone number.", buf, 0xCu);
              }

              v23 = 0;
              v24 = 0;
            }
          }

          if (v24)
          {
            v73 = v24;
            [v18 addObjectsFromArray:v24];
          }

          else
          {
LABEL_52:
            v73 = 0;
          }

          v41 = [HDCodableSummarySharingEntry alloc];
          v42 = [MEMORY[0x277CCAD78] UUID];
          v87 = *(a1 + 40);
          v43 = v87;
          v44 = [MEMORY[0x277CBEA60] arrayWithObjects:&v87 count:1];
          v45 = *(a1 + 48);
          v71 = *(a1 + 56);
          v46 = *(a1 + 88);
          v47 = a1;
          v48 = [MEMORY[0x277CBEAA8] date];
          v49 = [MEMORY[0x277CBEAA8] date];
          v50 = [(HDCodableSummarySharingEntry *)v41 initWithUUID:v42 invitationUUID:0 cloudKitIdentifier:0 primaryContactIdentifier:v43 allContactIdentifiers:v44 firstName:v45 lastName:v71 sharingAuthorizations:v46 userWheelchairMode:0 type:0 direction:0 status:0 notificationStatus:v48 dateModified:v49 dateInvited:0 dateAccepted:0 setupMetadata:0 ownerParticipant:?];

          v51 = *(v47 + 32);
          v52 = *(v47 + 64);
          v74[0] = MEMORY[0x277D85DD0];
          v74[1] = 3221225472;
          v74[2] = __138__HDSummarySharingEntryIDSManager_inviteSharingDataWithIdentifier_firstName_lastName_sharingAuthorizations_userWheelchairMode_completion___block_invoke_342;
          v74[3] = &unk_27861F8A8;
          v74[4] = v51;
          v75 = *(v47 + 40);
          v76 = v50;
          v80 = *(v47 + 72);
          v77 = v69;
          v78 = v18;
          v13 = v67;
          v79 = v13;
          v53 = v18;
          v54 = v50;
          v55 = v52;
          v56 = v74;
          if (v51)
          {
            WeakRetained = objc_loadWeakRetained((v51 + 8));
            v58 = [WeakRetained cloudSyncManager];
            v59 = [v58 sharedSummaryManager];
            *v88 = MEMORY[0x277D85DD0];
            *&v88[8] = 3221225472;
            *&v88[16] = __137__HDSummarySharingEntryIDSManager__setupSharingWithOutgoingCodableSummarySharingEntry_sharingAuthorizations_localAccountInfo_completion___block_invoke;
            v89 = &unk_27861FA88;
            v91 = v56;
            v90 = v54;
            v60 = [v59 setupSharingWithOutgoingSummarySharingEntry:v90 sharingAuthorizations:v55 completion:v88];
          }

          v5 = v69;
          v6 = v68;
          v25 = v73;
LABEL_56:

          goto LABEL_57;
        }

LABEL_20:
        v25 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:*(a1 + 80) format:@"Unable to create email address or phone number from identifier"];
        _HKInitializeLogging();
        v26 = HKLogSharing();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v62 = *(a1 + 32);
          v63 = *(a1 + 40);
          *v88 = 138543875;
          *&v88[4] = v62;
          *&v88[12] = 2114;
          *&v88[14] = v25;
          *&v88[22] = 2113;
          v89 = v63;
          _os_log_error_impl(&dword_228986000, v26, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@: Error %{public}@ creating destination from identifier %{private}@", v88, 0x20u);
        }

        (*(*(a1 + 72) + 16))();
        v13 = 0;
        goto LABEL_56;
      }
    }

    goto LABEL_20;
  }

  _HKInitializeLogging();
  v12 = HKLogSharing();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v61 = *(a1 + 32);
    *v88 = 138543618;
    *&v88[4] = v61;
    *&v88[12] = 2114;
    *&v88[14] = v6;
    _os_log_error_impl(&dword_228986000, v12, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@: Error fetching cloudkit email address %{public}@", v88, 0x16u);
  }

  v13 = [v6 hd_cloudKitErrorRequiringUserAction];
  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = v6;
  }

  (*(*(a1 + 72) + 16))(*(a1 + 72), 0, v14);
LABEL_57:
}

void __138__HDSummarySharingEntryIDSManager_inviteSharingDataWithIdentifier_firstName_lastName_sharingAuthorizations_userWheelchairMode_completion___block_invoke_342(uint64_t a1, void *a2, void *a3, void *a4)
{
  v42 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v7)
  {
    v10 = objc_msgSend_copy(v7);
    v11 = [*(a1 + 56) emailAddress];
    [v10 setPrimaryContactIdentifier:v11];

    [v10 setAllContactIdentifiers:*(a1 + 64)];
    [v10 setFirstName:0];
    [v10 setLastName:0];
    _HKInitializeLogging();
    v12 = HKLogSharing();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 32);
      v14 = *(a1 + 40);
      *buf = 138543619;
      v37 = v13;
      v38 = 2113;
      v39 = v14;
      _os_log_impl(&dword_228986000, v12, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Sending sharing invitation to identifier %{private}@", buf, 0x16u);
    }

    v15 = [*(a1 + 32) invitationManager];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __138__HDSummarySharingEntryIDSManager_inviteSharingDataWithIdentifier_firstName_lastName_sharingAuthorizations_userWheelchairMode_completion___block_invoke_344;
    v26[3] = &unk_27861F880;
    v16 = *(a1 + 32);
    v27 = v10;
    v28 = v16;
    v17 = *(a1 + 72);
    v32 = *(a1 + 80);
    v29 = v7;
    v30 = v8;
    v31 = *(a1 + 40);
    v18 = v10;
    [v15 sendInvitationToIdentifier:v17 expirationDate:0 codableObject:v18 serverAcknowledgedBlock:v26];

    v19 = v27;
  }

  else
  {
    _HKInitializeLogging();
    v20 = HKLogSharing();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v24 = *(a1 + 32);
      v25 = *(a1 + 40);
      *buf = 138543875;
      v37 = v24;
      v38 = 2114;
      v39 = v9;
      v40 = 2113;
      v41 = v25;
      _os_log_error_impl(&dword_228986000, v20, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@: Error %{public}@ received nil pairing info for identifier %{private}@", buf, 0x20u);
    }

    v18 = [v9 hd_cloudKitErrorRequiringUserAction];
    [*(a1 + 48) setStatus:4];
    v21 = *(a1 + 32);
    v22 = *(v21 + 16);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __138__HDSummarySharingEntryIDSManager_inviteSharingDataWithIdentifier_firstName_lastName_sharingAuthorizations_userWheelchairMode_completion___block_invoke_343;
    block[3] = &unk_278613830;
    block[4] = v21;
    v34 = *(a1 + 48);
    v35 = *(a1 + 40);
    dispatch_sync(v22, block);
    if (v18)
    {
      v23 = v18;
    }

    else
    {
      v23 = v9;
    }

    (*(*(a1 + 80) + 16))(*(a1 + 80), 0, v23);

    v19 = v34;
  }
}

void __138__HDSummarySharingEntryIDSManager_inviteSharingDataWithIdentifier_firstName_lastName_sharingAuthorizations_userWheelchairMode_completion___block_invoke_343(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v13 = 0;
  v4 = [(HDSummarySharingEntryIDSManager *)v2 _queue_insertOrReplaceCodableEntry:v3 ignoreIfExists:0 shouldResolveCNContact:0 error:&v13];
  v5 = v13;
  if ((v4 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v10 = a1 + 40;
      v8 = *(a1 + 40);
      v9 = *(v10 + 8);
      v11 = v6;
      v12 = [v8 uuid];
      *buf = 138544131;
      v15 = v7;
      v16 = 2113;
      v17 = v9;
      v18 = 2114;
      v19 = v12;
      v20 = 2114;
      v21 = v5;
      _os_log_error_impl(&dword_228986000, v11, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@: Error inserting revoked invitation with contact identifier %{private}@ and UUID %{public}@. %{public}@", buf, 0x2Au);
    }
  }
}

- (uint64_t)_queue_insertOrReplaceCodableEntry:(uint64_t)entry ignoreIfExists:(uint64_t)exists shouldResolveCNContact:(uint64_t)contact error:
{
  v16[1] = *MEMORY[0x277D85DE8];
  if (!self)
  {
    return 0;
  }

  v9 = *(self + 16);
  v10 = a2;
  dispatch_assert_queue_V2(v9);
  WeakRetained = objc_loadWeakRetained((self + 8));
  sharingEntryManager = [WeakRetained sharingEntryManager];
  v16[0] = v10;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];

  v14 = [sharingEntryManager insertOrReplaceCodableEntries:v13 ignoreIfExists:entry shouldResolveCNContact:exists syncProvenance:0 error:contact];
  return v14;
}

void __138__HDSummarySharingEntryIDSManager_inviteSharingDataWithIdentifier_firstName_lastName_sharingAuthorizations_userWheelchairMode_completion___block_invoke_344(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = *(*(a1 + 40) + 16);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __138__HDSummarySharingEntryIDSManager_inviteSharingDataWithIdentifier_firstName_lastName_sharingAuthorizations_userWheelchairMode_completion___block_invoke_3;
    block[3] = &unk_27861F920;
    v21 = *(a1 + 48);
    v22 = v5;
    v9 = *(a1 + 56);
    v10 = *(a1 + 40);
    v23 = v9;
    v24 = v10;
    v25 = *(a1 + 64);
    v26 = *(a1 + 32);
    v27 = *(a1 + 72);
    dispatch_sync(v8, block);

    v11 = v21;
  }

  else
  {
    v12 = v6;
    [*(a1 + 32) setStatus:4];
    v13 = *(a1 + 40);
    if (v13)
    {
      WeakRetained = objc_loadWeakRetained((v13 + 8));
    }

    else
    {
      WeakRetained = 0;
    }

    v15 = [WeakRetained cloudSyncManager];
    v16 = [v15 sharedSummaryManager];
    v17 = *(a1 + 32);
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __138__HDSummarySharingEntryIDSManager_inviteSharingDataWithIdentifier_firstName_lastName_sharingAuthorizations_userWheelchairMode_completion___block_invoke_2;
    v28[3] = &unk_278616CC8;
    v18 = *(a1 + 72);
    v29 = v12;
    v30 = v18;
    v11 = v12;
    v19 = [v16 revokeParticipantWithOutgoingSummarySharingEntry:v17 completion:v28];
  }
}

void __138__HDSummarySharingEntryIDSManager_inviteSharingDataWithIdentifier_firstName_lastName_sharingAuthorizations_userWheelchairMode_completion___block_invoke_3(uint64_t a1)
{
  v34[3] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 40) uniqueID];
  v3 = [v2 UUIDString];
  [*(a1 + 32) setInvitationUUID:v3];

  [*(a1 + 32) setCloudKitIdentifier:*(a1 + 48)];
  v4 = *(a1 + 56);
  v5 = *(a1 + 32);
  v31 = 0;
  LOBYTE(v3) = [(HDSummarySharingEntryIDSManager *)v4 _queue_insertOrReplaceCodableEntry:v5 ignoreIfExists:0 shouldResolveCNContact:1 error:&v31];
  v6 = v31;
  if (v3)
  {
    v7 = *(a1 + 56);
    if (v7 && !_HDIsUnitTesting)
    {
      WeakRetained = objc_loadWeakRetained((v7 + 8));
      v9 = [WeakRetained cloudSyncManager];
      v10 = [v9 sharedSummaryManager];
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __56__HDSummarySharingEntryIDSManager__attemptPushSummaries__block_invoke;
      v33 = &unk_2786130B0;
      v34[0] = v7;
      v11 = [v10 push:buf];
    }

    (*(*(a1 + 80) + 16))();
  }

  else
  {
    _HKInitializeLogging();
    v12 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
    {
      v21 = *(a1 + 56);
      v22 = *(a1 + 64);
      v23 = *(a1 + 40);
      v24 = v12;
      v25 = [v23 uniqueID];
      *buf = 138544131;
      *&buf[4] = v21;
      *&buf[12] = 2113;
      *&buf[14] = v22;
      *&buf[22] = 2114;
      v33 = v25;
      LOWORD(v34[0]) = 2114;
      *(v34 + 2) = v6;
      _os_log_error_impl(&dword_228986000, v24, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@: Error inserting invitation with contact identifier %{private}@ and UUID %{public}@. %{public}@", buf, 0x2Au);
    }

    v13 = [*(a1 + 56) invitationManager];
    v14 = [*(a1 + 40) uniqueID];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __138__HDSummarySharingEntryIDSManager_inviteSharingDataWithIdentifier_firstName_lastName_sharingAuthorizations_userWheelchairMode_completion___block_invoke_346;
    v29[3] = &unk_278616020;
    v29[4] = *(a1 + 56);
    v30 = *(a1 + 40);
    [v13 rescindInvitationWithUUID:v14 serverAcknowledgedBlock:v29];

    [*(a1 + 72) setStatus:4];
    v15 = *(a1 + 56);
    if (v15)
    {
      v16 = objc_loadWeakRetained((v15 + 8));
    }

    else
    {
      v16 = 0;
    }

    v17 = [v16 cloudSyncManager];
    v18 = [v17 sharedSummaryManager];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __138__HDSummarySharingEntryIDSManager_inviteSharingDataWithIdentifier_firstName_lastName_sharingAuthorizations_userWheelchairMode_completion___block_invoke_347;
    v26[3] = &unk_278616CC8;
    v19 = *(a1 + 72);
    v28 = *(a1 + 80);
    v27 = v6;
    v20 = [v18 revokeParticipantWithOutgoingSummarySharingEntry:v19 completion:v26];
  }
}

void __138__HDSummarySharingEntryIDSManager_inviteSharingDataWithIdentifier_firstName_lastName_sharingAuthorizations_userWheelchairMode_completion___block_invoke_346(uint64_t a1, char a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v7 = *(a1 + 40);
      v9 = v6;
      v10 = [v7 uniqueID];
      v11 = 138543874;
      v12 = v8;
      v13 = 2114;
      v14 = v10;
      v15 = 2114;
      v16 = v5;
      _os_log_error_impl(&dword_228986000, v9, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@: Error attempting to rescinding invitation with UUID %{public}@. %{public}@", &v11, 0x20u);
    }
  }
}

- (void)acceptInvitationWithUUID:(id)d completion:(id)completion
{
  v60 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v7 = [(HDSummarySharingEntryIDSManager *)self _finishHandlerForOperation:completion completion:?];
  _HKInitializeLogging();
  v8 = HKLogSharing();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    uUIDString = [dCopy UUIDString];
    *buf = 138543618;
    selfCopy7 = self;
    v54 = 2114;
    v55 = uUIDString;
    _os_log_impl(&dword_228986000, v8, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Accepting invitation with UUID %{public}@", buf, 0x16u);
  }

  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_profile);
  }

  else
  {
    WeakRetained = 0;
  }

  sharingEntryManager = [WeakRetained sharingEntryManager];
  v51 = 0;
  v12 = [sharingEntryManager codableEntryWithUUID:dCopy errorOut:&v51];
  v13 = v51;

  if (v12)
  {
    if ([v12 status])
    {
      v14 = [MEMORY[0x277CCA9B8] hk_error:1600 description:@"We found an entry in the database but it has the wrong status."];
      _HKInitializeLogging();
      v15 = HKLogSharing();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [v12 status];
        v34 = HKStringForSharingStatus();
        primaryContactIdentifier = [v12 primaryContactIdentifier];
        uuid = [v12 uuid];
        *buf = 138544131;
        selfCopy7 = self;
        v54 = 2114;
        v55 = v34;
        v56 = 2113;
        v57 = primaryContactIdentifier;
        v58 = 2114;
        v59 = uuid;
        _os_log_error_impl(&dword_228986000, v15, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@: Error incorrect status %{public}@ for entry with identifier %{private}@ and UUID %{public}@", buf, 0x2Au);
      }

      _HKInitializeLogging();
      v16 = HKLogSharing();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        sharingEntry = [v12 sharingEntry];
        *buf = 138543619;
        selfCopy7 = self;
        v54 = 2113;
        v55 = sharingEntry;
        _os_log_impl(&dword_228986000, v16, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Found entry: %{private}@", buf, 0x16u);
      }

      (v7)[2](v7, 0, v14);
    }

    else
    {
      sharingSetupMetadata = [v12 sharingSetupMetadata];
      v50 = v13;
      v20 = [HDCloudSyncShareSetupMetadata cloudSyncShareSetupMetadataWithCodableSharingSetupMetadata:sharingSetupMetadata error:&v50];
      v21 = v50;

      if (v20)
      {
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 3221225472;
        aBlock[2] = __71__HDSummarySharingEntryIDSManager_acceptInvitationWithUUID_completion___block_invoke;
        aBlock[3] = &unk_27861F8F8;
        aBlock[4] = self;
        v22 = v12;
        v48 = v22;
        v23 = v7;
        v49 = v23;
        v39 = _Block_copy(aBlock);
        shareURLs = [v20 shareURLs];
        v25 = [shareURLs count];

        if (v25)
        {
          v46 = v21;
          v26 = [(HDSummarySharingEntryIDSManager *)self _profileForEntry:v22 errorOut:&v46];
          v27 = v46;

          if (v26)
          {
            cloudSyncManager = [v26 cloudSyncManager];
            v40[0] = MEMORY[0x277D85DD0];
            v40[1] = 3221225472;
            v40[2] = __71__HDSummarySharingEntryIDSManager_acceptInvitationWithUUID_completion___block_invoke_362;
            v40[3] = &unk_27861F998;
            v40[4] = self;
            v29 = v26;
            v41 = v29;
            v30 = v39;
            v44 = v39;
            v42 = v20;
            v45 = v23;
            v43 = v22;
            [cloudSyncManager acceptShare:v42 completion:v40];

            v21 = v27;
          }

          else
          {
            _HKInitializeLogging();
            v33 = HKLogSharing();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543618;
              selfCopy7 = self;
              v54 = 2114;
              v55 = v27;
              _os_log_error_impl(&dword_228986000, v33, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@: Unable to create profile. %{public}@", buf, 0x16u);
            }

            (*(v23 + 2))(v23, 0, v27);
            v29 = 0;
            v21 = v27;
            v30 = v39;
          }
        }

        else
        {
          _HKInitializeLogging();
          v32 = HKLogSharing();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            uUIDString2 = [dCopy UUIDString];
            *buf = 138543618;
            selfCopy7 = self;
            v54 = 2114;
            v55 = uUIDString2;
            _os_log_error_impl(&dword_228986000, v32, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@: No share URLs found on invitation with UUID %{public}@", buf, 0x16u);
          }

          v29 = [MEMORY[0x277CCA9B8] hk_error:710 description:@"Share setup metadata does not contain any share URLs"];
          v30 = v39;
          (*(v39 + 2))(v39, v29);
        }
      }

      else
      {
        _HKInitializeLogging();
        v31 = HKLogSharing();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          sharingSetupMetadata2 = [v12 sharingSetupMetadata];
          *buf = 138543875;
          selfCopy7 = self;
          v54 = 2113;
          v55 = sharingSetupMetadata2;
          v56 = 2114;
          v57 = v21;
          _os_log_error_impl(&dword_228986000, v31, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@: Failed to decode codable sharing setup metadata %{private}@: %{public}@", buf, 0x20u);
        }

        (v7)[2](v7, 0, v21);
      }

      v13 = v21;
    }
  }

  else
  {
    _HKInitializeLogging();
    v18 = HKLogSharing();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      selfCopy7 = self;
      v54 = 2114;
      v55 = v13;
      _os_log_error_impl(&dword_228986000, v18, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@: Codable entry not found. %{public}@", buf, 0x16u);
    }

    (v7)[2](v7, 0, v13);
  }
}

void __71__HDSummarySharingEntryIDSManager_acceptInvitationWithUUID_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 16);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __71__HDSummarySharingEntryIDSManager_acceptInvitationWithUUID_completion___block_invoke_2;
  v8[3] = &unk_278613680;
  v9 = v3;
  v10 = v5;
  v11 = v4;
  v12 = *(a1 + 48);
  v7 = v3;
  dispatch_sync(v6, v8);
}

void __71__HDSummarySharingEntryIDSManager_acceptInvitationWithUUID_completion___block_invoke_2(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) hk_isHealthKitErrorWithCode:710])
  {
    v2 = *(a1 + 40);
    v3 = objc_alloc(MEMORY[0x277CCAD78]);
    v4 = [*(a1 + 48) invitationUUID];
    v5 = [v3 initWithUUIDString:v4];
    v19 = 0;
    if (v2)
    {
      v6 = [(HDSummarySharingEntryIDSManager *)v2 _queue_updateEntryWithInvitationUUID:v5 newStatus:2 dateAccepted:0 ownerParticipant:0 error:&v19];
      v7 = v19;
    }

    else
    {
      v7 = 0;
      v6 = 0;
    }

    v8 = v7;

    if (v6)
    {
      v9 = *(a1 + 56);
      v10 = [MEMORY[0x277CCA9B8] hk_error:707 format:@"The share participant was not found. Invitation has been declined"];
      (*(v9 + 16))(v9, 0, v10);
    }

    else
    {
      _HKInitializeLogging();
      v12 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
      {
        v14 = *(a1 + 40);
        v13 = *(a1 + 48);
        v15 = v12;
        v16 = [v13 primaryContactIdentifier];
        v17 = [*(a1 + 48) uuid];
        v18 = *(a1 + 32);
        *buf = 138544131;
        v21 = v14;
        v22 = 2113;
        v23 = v16;
        v24 = 2114;
        v25 = v17;
        v26 = 2114;
        v27 = v18;
        _os_log_error_impl(&dword_228986000, v15, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@: Error updating declined invitation with identifier %{private}@ and UUID %{public}@. %{public}@", buf, 0x2Au);
      }

      (*(*(a1 + 56) + 16))();
    }
  }

  else
  {
    v11 = *(*(a1 + 56) + 16);

    v11();
  }
}

- (id)_profileForEntry:(uint64_t)entry errorOut:
{
  v5 = a2;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained((self + 8));
    daemon = [WeakRetained daemon];
    profileManager = [daemon profileManager];

    v9 = objc_alloc(MEMORY[0x277CCAD78]);
    uuid = [v5 uuid];
    v11 = [v9 initWithUUIDString:uuid];

    v12 = [profileManager profileIdentifierForUUID:v11];
    if (v12)
    {
      v13 = v12;
      v14 = [profileManager profileForIdentifier:v12];
    }

    else
    {
      v13 = [MEMORY[0x277CCD7C8] _profileWithUUID:v11 type:2];
      firstName = [v5 firstName];
      lastName = [v5 lastName];
      v17 = lastName;
      if (!firstName)
      {
        if (lastName)
        {
          firstName = &stru_283BF39C8;
        }

        else
        {
          firstName = [v5 primaryContactIdentifier];
        }
      }

      v14 = [profileManager createProfileForIdentifier:v13 firstName:firstName lastName:v17 error:entry];
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

void __71__HDSummarySharingEntryIDSManager_acceptInvitationWithUUID_completion___block_invoke_362(uint64_t a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [*(a1 + 40) cloudSyncManager];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __71__HDSummarySharingEntryIDSManager_acceptInvitationWithUUID_completion___block_invoke_363;
    v23[3] = &unk_27861F970;
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v23[4] = *(a1 + 32);
    v24 = v8;
    v27 = *(a1 + 72);
    v25 = *(a1 + 56);
    v26 = v5;
    [v7 configureForShareSetupMetadata:v9 acceptedShares:v26 completion:v23];
  }

  else
  {
    _HKInitializeLogging();
    v10 = HKLogSharing();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v18 = *(a1 + 32);
      *buf = 138543618;
      v30 = v18;
      v31 = 2114;
      v32 = v6;
      _os_log_error_impl(&dword_228986000, v10, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@: Accepted CKShares are nil. %{public}@", buf, 0x16u);
    }

    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v28 = 0;
    v13 = [(HDSummarySharingEntryIDSManager *)v11 _deleteProfile:v12 errorOut:&v28];
    v14 = v28;
    if ((v13 & 1) == 0)
    {
      _HKInitializeLogging();
      v15 = HKLogSharing();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v19 = *(a1 + 32);
        v20 = [*(a1 + 40) profileIdentifier];
        v21 = [v20 identifier];
        v22 = [v21 UUIDString];
        *buf = 138543874;
        v30 = v19;
        v31 = 2114;
        v32 = v22;
        v33 = 2114;
        v34 = v14;
        _os_log_error_impl(&dword_228986000, v15, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@: Failed to delete shared profile with identifier %{public}@. %{public}@", buf, 0x20u);
      }
    }

    v16 = [v6 hd_cloudKitErrorRequiringUserAction];
    if (v16)
    {
      v17 = v16;
    }

    else
    {
      v17 = v6;
    }

    (*(*(a1 + 64) + 16))(*(a1 + 64), v17);
  }
}

- (id)_deleteProfile:(uint64_t)profile errorOut:
{
  if (result)
  {
    v4 = result;
    v5 = a2;
    WeakRetained = objc_loadWeakRetained(v4 + 1);
    daemon = [WeakRetained daemon];
    profileManager = [daemon profileManager];
    profileIdentifier = [v5 profileIdentifier];

    v10 = [profileManager deleteProfile:profileIdentifier error:profile];
    return v10;
  }

  return result;
}

void __71__HDSummarySharingEntryIDSManager_acceptInvitationWithUUID_completion___block_invoke_363(id *a1, char a2, void *a3)
{
  v43 = *MEMORY[0x277D85DE8];
  v5 = a3;
  _HKInitializeLogging();
  v6 = HKLogSharing();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = a1[4];
      v9 = [a1[6] primaryContactIdentifier];
      v10 = [a1[6] uuid];
      *buf = 138543875;
      v38 = v8;
      v39 = 2113;
      v40 = v9;
      v41 = 2114;
      v42 = v10;
      _os_log_impl(&dword_228986000, v7, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Sending accepted sharing invitation to identifier %{private}@ and UUID %{public}@", buf, 0x20u);
    }

    v11 = objc_alloc(MEMORY[0x277CCAD78]);
    v12 = [a1[6] invitationUUID];
    v13 = [v11 initWithUUIDString:v12];

    v14 = [MEMORY[0x277CBEAA8] date];
    [v14 timeIntervalSinceReferenceDate];
    [a1[6] setDateAccepted:?];
    v15 = [a1[4] invitationManager];
    v16 = a1[6];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __71__HDSummarySharingEntryIDSManager_acceptInvitationWithUUID_completion___block_invoke_364;
    v29[3] = &unk_27861F948;
    v29[4] = a1[4];
    v30 = v16;
    v31 = v13;
    v32 = v14;
    v33 = a1[7];
    v35 = a1[8];
    v34 = a1[5];
    v17 = v14;
    v18 = v13;
    [v15 acceptInvitationWithUUID:v18 codableObject:v30 serverAcknowledgedBlock:v29];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v24 = a1[4];
      *buf = 138543618;
      v38 = v24;
      v39 = 2114;
      v40 = v5;
      _os_log_error_impl(&dword_228986000, v7, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@: Failed to configure share setup metadata. %{public}@", buf, 0x16u);
    }

    v19 = a1[4];
    v20 = a1[5];
    v36 = 0;
    v21 = [(HDSummarySharingEntryIDSManager *)v19 _deleteProfile:v20 errorOut:&v36];
    v18 = v36;
    if ((v21 & 1) == 0)
    {
      _HKInitializeLogging();
      v22 = HKLogSharing();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v25 = a1[4];
        v26 = [a1[5] profileIdentifier];
        v27 = [v26 identifier];
        v28 = [v27 UUIDString];
        *buf = 138543874;
        v38 = v25;
        v39 = 2114;
        v40 = v28;
        v41 = 2114;
        v42 = v18;
        _os_log_error_impl(&dword_228986000, v22, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@: Failed to delete shared profile with identifier %{public}@. %{public}@", buf, 0x20u);
      }
    }

    v17 = [v5 hd_cloudKitErrorRequiringUserAction];
    if (v17)
    {
      v23 = v17;
    }

    else
    {
      v23 = v5;
    }

    (*(a1[8] + 2))(a1[8], 0, v23);
  }
}

void __71__HDSummarySharingEntryIDSManager_acceptInvitationWithUUID_completion___block_invoke_364(uint64_t a1, char a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      v9 = *(a1 + 40);
      v11 = v6;
      v12 = [v9 primaryContactIdentifier];
      v13 = *(a1 + 48);
      *buf = 138544131;
      v22 = v10;
      v23 = 2113;
      v24 = v12;
      v25 = 2114;
      v26 = v13;
      v27 = 2114;
      v28 = v5;
      _os_log_error_impl(&dword_228986000, v11, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@: Error accepting invitation with identifier %{private}@ and UUID %{public}@. %{public}@", buf, 0x2Au);
    }
  }

  v7 = *(a1 + 32);
  v8 = *(v7 + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__HDSummarySharingEntryIDSManager_acceptInvitationWithUUID_completion___block_invoke_365;
  block[3] = &unk_27861F920;
  block[4] = v7;
  v15 = *(a1 + 48);
  v16 = *(a1 + 56);
  v17 = *(a1 + 64);
  v18 = *(a1 + 40);
  v20 = *(a1 + 80);
  v19 = *(a1 + 72);
  dispatch_sync(v8, block);
}

void __71__HDSummarySharingEntryIDSManager_acceptInvitationWithUUID_completion___block_invoke_365(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = [*(a1 + 56) firstObject];
  v6 = [v5 owner];
  v21 = 0;
  LOBYTE(v3) = [(HDSummarySharingEntryIDSManager *)v2 _queue_updateEntryWithInvitationUUID:v3 newStatus:1 dateAccepted:v4 ownerParticipant:v6 error:&v21];
  v7 = v21;

  if (v3)
  {
    v8 = [*(a1 + 72) cloudSyncManager];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __71__HDSummarySharingEntryIDSManager_acceptInvitationWithUUID_completion___block_invoke_366;
    v20[3] = &unk_2786130B0;
    v20[4] = *(a1 + 32);
    [v8 subscribeToDataAvailableNotificationsWithCompletion:v20];

    v9 = [*(a1 + 72) cloudSyncManager];
    v10 = [v9 sharedSummaryManager];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __71__HDSummarySharingEntryIDSManager_acceptInvitationWithUUID_completion___block_invoke_367;
    v19[3] = &unk_2786130B0;
    v19[4] = *(a1 + 32);
    v11 = [v10 pull:v19];

    [(HDSummarySharingEntryIDSManager *)*(a1 + 32) _attemptBestEffortCloudSynchronization];
    v12 = *(*(a1 + 80) + 16);
  }

  else
  {
    _HKInitializeLogging();
    v13 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
    {
      v14 = *(a1 + 32);
      v15 = *(a1 + 64);
      v16 = v13;
      v17 = [v15 primaryContactIdentifier];
      v18 = [*(a1 + 64) uuid];
      *buf = 138544131;
      v23 = v14;
      v24 = 2113;
      v25 = v17;
      v26 = 2114;
      v27 = v18;
      v28 = 2114;
      v29 = v7;
      _os_log_error_impl(&dword_228986000, v16, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@: Error updating accepted invitation with identifier %{private}@ and UUID %{public}@. %{public}@", buf, 0x2Au);
    }

    v12 = *(*(a1 + 80) + 16);
  }

  v12();
}

- (NSObject)_queue_updateEntryWithInvitationUUID:(uint64_t)d newStatus:(void *)status dateAccepted:(void *)accepted ownerParticipant:(uint64_t)participant error:
{
  if (result)
  {
    v10 = result;
    v11 = result[2];
    acceptedCopy = accepted;
    statusCopy = status;
    v14 = a2;
    dispatch_assert_queue_V2(v11);
    WeakRetained = objc_loadWeakRetained(v10 + 1);
    sharingEntryManager = [WeakRetained sharingEntryManager];
    v17 = [sharingEntryManager updateEntryWithInvitationUUID:v14 newStatus:d dateAccepted:statusCopy ownerParticipant:acceptedCopy error:participant];

    return v17;
  }

  return result;
}

void __71__HDSummarySharingEntryIDSManager_acceptInvitationWithUUID_completion___block_invoke_366(uint64_t a1, char a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = HKLogSharing();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = 138543618;
      v9 = v7;
      v10 = 2114;
      v11 = v5;
      _os_log_error_impl(&dword_228986000, v6, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@: Failed to subscribe to data available after accepting share. %{public}@", &v8, 0x16u);
    }
  }
}

void __71__HDSummarySharingEntryIDSManager_acceptInvitationWithUUID_completion___block_invoke_367(uint64_t a1, char a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = HKLogSharing();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = 138543618;
      v9 = v7;
      v10 = 2114;
      v11 = v5;
      _os_log_error_impl(&dword_228986000, v6, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@: Failed to pull summaries after accepting share. %{public}@", &v8, 0x16u);
    }
  }
}

- (void)_attemptBestEffortCloudSynchronization
{
  if (self)
  {
    if (!_HDIsUnitTesting)
    {
      WeakRetained = objc_loadWeakRetained((self + 8));
      cloudSyncManager = [WeakRetained cloudSyncManager];
      sharedSummaryManager = [cloudSyncManager sharedSummaryManager];
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __73__HDSummarySharingEntryIDSManager__attemptBestEffortCloudSynchronization__block_invoke;
      v6[3] = &unk_2786130B0;
      v6[4] = self;
      v5 = [sharedSummaryManager synchronizeWithCompletion:v6];
    }
  }
}

- (void)declineInvitationWithUUID:(id)d completion:(id)completion
{
  v40 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v7 = [(HDSummarySharingEntryIDSManager *)self _finishHandlerForOperation:completion completion:?];
  _HKInitializeLogging();
  v8 = HKLogSharing();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    uUIDString = [dCopy UUIDString];
    *buf = 138543618;
    selfCopy4 = self;
    v34 = 2114;
    v35 = uUIDString;
    _os_log_impl(&dword_228986000, v8, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Declining invitation with UUID %{public}@", buf, 0x16u);
  }

  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_profile);
  }

  else
  {
    WeakRetained = 0;
  }

  sharingEntryManager = [WeakRetained sharingEntryManager];
  v31 = 0;
  v12 = [sharingEntryManager codableEntryWithUUID:dCopy errorOut:&v31];
  v13 = v31;

  if (v12)
  {
    if ([v12 status])
    {
      v14 = [MEMORY[0x277CCA9B8] hk_error:1600 description:@"We found an entry in the database but it has the wrong status."];
      _HKInitializeLogging();
      v15 = HKLogSharing();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [v12 status];
        v24 = HKStringForSharingStatus();
        primaryContactIdentifier = [v12 primaryContactIdentifier];
        uuid = [v12 uuid];
        *buf = 138544131;
        selfCopy4 = self;
        v34 = 2114;
        v35 = v24;
        v36 = 2113;
        v37 = primaryContactIdentifier;
        v38 = 2114;
        v39 = uuid;
        _os_log_error_impl(&dword_228986000, v15, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@: Error incorrect status %{public}@ for entry with identifier %{private}@ and UUID %{public}@", buf, 0x2Au);
      }

      _HKInitializeLogging();
      v16 = HKLogSharing();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        sharingEntry = [v12 sharingEntry];
        *buf = 138543619;
        selfCopy4 = self;
        v34 = 2113;
        v35 = sharingEntry;
        _os_log_impl(&dword_228986000, v16, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Found entry: %{private}@", buf, 0x16u);
      }

      (v7)[2](v7, 0, v14);
    }

    else
    {
      v19 = objc_alloc(MEMORY[0x277CCAD78]);
      invitationUUID = [v12 invitationUUID];
      v21 = [v19 initWithUUIDString:invitationUUID];

      invitationManager = [(HDSummarySharingEntryIDSManager *)self invitationManager];
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __72__HDSummarySharingEntryIDSManager_declineInvitationWithUUID_completion___block_invoke;
      v27[3] = &unk_278619540;
      v30 = v7;
      v27[4] = self;
      v28 = v21;
      v29 = v12;
      v23 = v21;
      [invitationManager declineInvitationWithUUID:v23 serverAcknowledgedBlock:v27];
    }
  }

  else
  {
    _HKInitializeLogging();
    v18 = HKLogSharing();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      selfCopy4 = self;
      v34 = 2114;
      v35 = v13;
      _os_log_error_impl(&dword_228986000, v18, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@: Codable entry not found. %{public}@", buf, 0x16u);
    }

    (v7)[2](v7, 0, v13);
  }
}

void __72__HDSummarySharingEntryIDSManager_declineInvitationWithUUID_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2 & 1) != 0 || [v5 code] == 3 || (objc_msgSend(v6, "hk_isHealthKitErrorWithCode:", 118))
  {
    v8 = *(a1 + 32);
    v7 = *(a1 + 40);
    v9 = *(v8 + 16);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __72__HDSummarySharingEntryIDSManager_declineInvitationWithUUID_completion___block_invoke_2;
    block[3] = &unk_27861F9C0;
    block[4] = v8;
    v11 = v7;
    v12 = *(a1 + 48);
    v13 = v6;
    v14 = *(a1 + 56);
    dispatch_sync(v9, block);
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

void __72__HDSummarySharingEntryIDSManager_declineInvitationWithUUID_completion___block_invoke_2(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v14 = 0;
  if (v2)
  {
    v4 = [(HDSummarySharingEntryIDSManager *)v2 _queue_updateEntryWithInvitationUUID:v3 newStatus:2 dateAccepted:0 ownerParticipant:0 error:&v14];
    v5 = v14;
    if (v4)
    {
      [(HDSummarySharingEntryIDSManager *)*(a1 + 32) _attemptBestEffortCloudSynchronization];
      v6 = *(*(a1 + 64) + 16);
      goto LABEL_8;
    }
  }

  else
  {
    v5 = 0;
  }

  _HKInitializeLogging();
  v7 = *MEMORY[0x277CCC2A0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 48);
    v10 = v7;
    v11 = [v9 primaryContactIdentifier];
    v12 = [*(a1 + 48) uuid];
    v13 = *(a1 + 56);
    *buf = 138544131;
    v16 = v8;
    v17 = 2113;
    v18 = v11;
    v19 = 2114;
    v20 = v12;
    v21 = 2114;
    v22 = v13;
    _os_log_error_impl(&dword_228986000, v10, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@: Error updating declined invitation with identifier %{private}@ and UUID %{public}@. %{public}@", buf, 0x2Au);
  }

  v6 = *(*(a1 + 64) + 16);
LABEL_8:
  v6();
}

- (void)revokeInvitationWithUUID:(id)d completion:(id)completion
{
  v62 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v7 = [(HDSummarySharingEntryIDSManager *)self _finishHandlerForOperation:completion completion:?];
  _HKInitializeLogging();
  v8 = HKLogSharing();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    uUIDString = [dCopy UUIDString];
    *buf = 138543618;
    selfCopy4 = self;
    v56 = 2114;
    v57 = uUIDString;
    _os_log_impl(&dword_228986000, v8, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Revoking invitation with UUID %{public}@", buf, 0x16u);
  }

  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_profile);
  }

  else
  {
    WeakRetained = 0;
  }

  sharingEntryManager = [WeakRetained sharingEntryManager];
  v53 = 0;
  v12 = [sharingEntryManager codableEntryWithUUID:dCopy errorOut:&v53];
  v13 = v53;

  if (v12)
  {
    if ([v12 status] == 1 || !objc_msgSend(v12, "status"))
    {
      v19 = objc_alloc(MEMORY[0x277CCAD78]);
      invitationUUID = [v12 invitationUUID];
      v21 = [v19 initWithUUIDString:invitationUUID];

      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __71__HDSummarySharingEntryIDSManager_revokeInvitationWithUUID_completion___block_invoke;
      aBlock[3] = &unk_27861FA10;
      aBlock[4] = self;
      v40 = dCopy;
      v48 = dCopy;
      v22 = v21;
      v49 = v22;
      v23 = v12;
      v50 = v23;
      v38 = v13;
      v51 = v13;
      v39 = v7;
      v24 = v7;
      v52 = v24;
      v25 = _Block_copy(aBlock);
      v26 = objc_msgSend_copy(v23);
      if ([v23 status] == 1)
      {
        v27 = 4;
      }

      else
      {
        v27 = 3;
      }

      [v26 setStatus:v27];
      if (self)
      {
        v28 = objc_loadWeakRetained(&self->_profile);
      }

      else
      {
        v28 = 0;
      }

      cloudSyncManager = [v28 cloudSyncManager];
      sharedSummaryManager = [cloudSyncManager sharedSummaryManager];
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = __71__HDSummarySharingEntryIDSManager_revokeInvitationWithUUID_completion___block_invoke_370;
      v42[3] = &unk_27861FA60;
      v42[4] = self;
      v43 = v23;
      v44 = v22;
      v45 = v24;
      v46 = v25;
      v31 = v25;
      v32 = v22;
      v33 = [sharedSummaryManager revokeParticipantWithOutgoingSummarySharingEntry:v26 completion:v42];

      v7 = v39;
      dCopy = v40;
      v13 = v38;
    }

    else
    {
      v14 = v13;
      v15 = [MEMORY[0x277CCA9B8] hk_error:1600 description:@"We found an entry in the database but it has the wrong status."];
      _HKInitializeLogging();
      v16 = HKLogSharing();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [v12 status];
        v41 = HKStringForSharingStatus();
        primaryContactIdentifier = [v12 primaryContactIdentifier];
        uuid = [v12 uuid];
        *buf = 138544131;
        selfCopy4 = self;
        v56 = 2114;
        v57 = v41;
        v58 = 2113;
        v59 = primaryContactIdentifier;
        v60 = 2114;
        v61 = uuid;
        v37 = uuid;
        _os_log_error_impl(&dword_228986000, v16, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@: Error incorrect status %{public}@ for entry with identifier %{private}@ and UUID %{public}@", buf, 0x2Au);
      }

      _HKInitializeLogging();
      v17 = HKLogSharing();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        sharingEntry = [v12 sharingEntry];
        *buf = 138543619;
        selfCopy4 = self;
        v56 = 2113;
        v57 = sharingEntry;
        _os_log_impl(&dword_228986000, v17, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Found entry: %{private}@", buf, 0x16u);
      }

      (v7)[2](v7, 0, v15);
      v13 = v14;
    }
  }

  else
  {
    _HKInitializeLogging();
    v34 = HKLogSharing();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      selfCopy4 = self;
      v56 = 2114;
      v57 = v13;
      _os_log_error_impl(&dword_228986000, v34, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@: Codable entry not found. %{public}@", buf, 0x16u);
    }

    (v7)[2](v7, 0, v13);
  }
}

void __71__HDSummarySharingEntryIDSManager_revokeInvitationWithUUID_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  v9 = *(a1 + 32);
  v4 = *(v9 + 16);
  block[2] = __71__HDSummarySharingEntryIDSManager_revokeInvitationWithUUID_completion___block_invoke_2;
  block[3] = &unk_27861F9E8;
  v5 = *(&v9 + 1);
  v15 = a2;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  v11 = v9;
  v12 = v8;
  v13 = *(a1 + 64);
  v14 = *(a1 + 72);
  dispatch_sync(v4, block);
}

void __71__HDSummarySharingEntryIDSManager_revokeInvitationWithUUID_completion___block_invoke_2(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = HKLogSharing();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) UUIDString];
    v5 = HKStringForSharingStatus();
    *buf = 138543874;
    v21 = v3;
    v22 = 2114;
    v23 = v4;
    v24 = 2114;
    v25 = v5;
    _os_log_impl(&dword_228986000, v2, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Updating invitation with UUID %{public}@ to %{public}@.", buf, 0x20u);
  }

  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v8 = *(a1 + 80);
  v19 = 0;
  if (v6)
  {
    v9 = [(HDSummarySharingEntryIDSManager *)v6 _queue_updateEntryWithInvitationUUID:v7 newStatus:v8 dateAccepted:0 ownerParticipant:0 error:&v19];
    v10 = v19;
    if (v9)
    {
      [(HDSummarySharingEntryIDSManager *)*(a1 + 32) _attemptBestEffortCloudSynchronization];
      v11 = *(*(a1 + 72) + 16);
      goto LABEL_10;
    }
  }

  else
  {
    v10 = 0;
  }

  _HKInitializeLogging();
  v12 = *MEMORY[0x277CCC2A0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
  {
    v13 = *(a1 + 32);
    v14 = v12;
    v15 = HKStringForSharingStatus();
    v16 = [*(a1 + 56) primaryContactIdentifier];
    v17 = [*(a1 + 56) uuid];
    v18 = *(a1 + 64);
    *buf = 138544387;
    v21 = v13;
    v22 = 2114;
    v23 = v15;
    v24 = 2113;
    v25 = v16;
    v26 = 2114;
    v27 = v17;
    v28 = 2114;
    v29 = v18;
    _os_log_error_impl(&dword_228986000, v14, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@: Error updating %{public}@ invitation with identifier %{private}@ and UUID %{public}@. %{public}@", buf, 0x34u);
  }

  v11 = *(*(a1 + 72) + 16);
LABEL_10:
  v11();
}

void __71__HDSummarySharingEntryIDSManager_revokeInvitationWithUUID_completion___block_invoke_370(uint64_t a1, char a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    v6 = [*(a1 + 32) invitationManager];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __71__HDSummarySharingEntryIDSManager_revokeInvitationWithUUID_completion___block_invoke_371;
    v13[3] = &unk_27861FA38;
    v7 = *(a1 + 48);
    v15 = *(a1 + 56);
    v14 = *(a1 + 40);
    v16 = *(a1 + 64);
    [v6 rescindInvitationWithUUID:v7 serverAcknowledgedBlock:v13];

    v8 = v15;
  }

  else
  {
    _HKInitializeLogging();
    v9 = HKLogSharing();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 32);
      v12 = [*(a1 + 40) primaryContactIdentifier];
      *buf = 138543875;
      v18 = v11;
      v19 = 2113;
      v20 = v5;
      v21 = 2114;
      v22 = v12;
      _os_log_error_impl(&dword_228986000, v9, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@: Error removing participant with identifier %{private}@: %{public}@", buf, 0x20u);
    }

    v8 = [v5 hd_cloudKitErrorRequiringUserAction];
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    (*(*(a1 + 56) + 16))(*(a1 + 56), 0, v10);
  }
}

void __71__HDSummarySharingEntryIDSManager_revokeInvitationWithUUID_completion___block_invoke_371(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v8 = v5;
  if (a2 & 1) != 0 || [v5 code] == 3 || (v7 = objc_msgSend(v8, "hk_isHealthKitErrorWithCode:", 118), v6 = v8, (v7))
  {
    [*(a1 + 32) status];
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (void)leaveInvitationWithUUID:(id)d completion:(id)completion
{
  v41 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v7 = [(HDSummarySharingEntryIDSManager *)self _finishHandlerForOperation:completion completion:?];
  _HKInitializeLogging();
  v8 = HKLogSharing();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    uUIDString = [dCopy UUIDString];
    *buf = 138543618;
    selfCopy5 = self;
    v35 = 2114;
    v36 = uUIDString;
    _os_log_impl(&dword_228986000, v8, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Leaving invitation with UUID %{public}@", buf, 0x16u);
  }

  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_profile);
  }

  else
  {
    WeakRetained = 0;
  }

  sharingEntryManager = [WeakRetained sharingEntryManager];
  v32 = 0;
  v12 = [sharingEntryManager codableEntryWithUUID:dCopy errorOut:&v32];
  v13 = v32;

  if (v12)
  {
    if ([v12 status] == 1)
    {
      v31 = v13;
      v14 = [(HDSummarySharingEntryIDSManager *)self _profileForEntry:v12 errorOut:&v31];
      v15 = v31;

      if (v14)
      {
        cloudSyncManager = [v14 cloudSyncManager];
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __70__HDSummarySharingEntryIDSManager_leaveInvitationWithUUID_completion___block_invoke;
        v27[3] = &unk_278613100;
        v27[4] = self;
        v28 = v12;
        v30 = v7;
        v29 = v14;
        v17 = [cloudSyncManager leaveSharesWithCompletion:v27];
      }

      else
      {
        _HKInitializeLogging();
        v23 = HKLogSharing();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          selfCopy5 = self;
          v35 = 2114;
          v36 = v15;
          _os_log_error_impl(&dword_228986000, v23, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@: Unable to create profile. %{public}@", buf, 0x16u);
        }

        (v7)[2](v7, 0, v15);
      }

      v13 = v15;
    }

    else
    {
      v19 = [MEMORY[0x277CCA9B8] hk_error:1600 description:@"We found an entry in the database but it has the wrong status."];
      _HKInitializeLogging();
      v20 = HKLogSharing();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [v12 status];
        v24 = HKStringForSharingStatus();
        primaryContactIdentifier = [v12 primaryContactIdentifier];
        uuid = [v12 uuid];
        *buf = 138544131;
        selfCopy5 = self;
        v35 = 2114;
        v36 = v24;
        v37 = 2113;
        v38 = primaryContactIdentifier;
        v39 = 2114;
        v40 = uuid;
        _os_log_error_impl(&dword_228986000, v20, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@: Error incorrect status %{public}@ for entry with identifier %{private}@ and UUID %{public}@", buf, 0x2Au);
      }

      _HKInitializeLogging();
      v21 = HKLogSharing();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        sharingEntry = [v12 sharingEntry];
        *buf = 138543619;
        selfCopy5 = self;
        v35 = 2113;
        v36 = sharingEntry;
        _os_log_impl(&dword_228986000, v21, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Found entry: %{private}@", buf, 0x16u);
      }

      (v7)[2](v7, 0, v19);
    }
  }

  else
  {
    _HKInitializeLogging();
    v18 = HKLogSharing();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      selfCopy5 = self;
      v35 = 2114;
      v36 = v13;
      _os_log_error_impl(&dword_228986000, v18, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@: Codable entry not found. %{public}@", buf, 0x16u);
    }

    (v7)[2](v7, 0, v13);
  }
}

void __70__HDSummarySharingEntryIDSManager_leaveInvitationWithUUID_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    v15 = *(a1 + 32);
    v6 = *(v15 + 16);
    block[2] = __70__HDSummarySharingEntryIDSManager_leaveInvitationWithUUID_completion___block_invoke_372;
    block[3] = &unk_278617468;
    v7 = *(&v15 + 1);
    v8 = *(a1 + 56);
    *&v9 = *(a1 + 48);
    *(&v9 + 1) = v8;
    v17 = v15;
    v18 = v9;
    dispatch_sync(v6, block);
  }

  else
  {
    _HKInitializeLogging();
    v10 = HKLogSharing();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 32);
      v14 = [*(a1 + 40) primaryContactIdentifier];
      *buf = 138543875;
      v20 = v13;
      v21 = 2114;
      v22 = v5;
      v23 = 2113;
      v24 = v14;
      _os_log_error_impl(&dword_228986000, v10, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@: Error %{public}@ unable to leave sharing with identifier %{private}@", buf, 0x20u);
    }

    v11 = [v5 hd_cloudKitErrorRequiringUserAction];
    if (v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = v5;
    }

    (*(*(a1 + 56) + 16))(*(a1 + 56), 0, v12);
  }
}

void __70__HDSummarySharingEntryIDSManager_leaveInvitationWithUUID_completion___block_invoke_372(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = objc_alloc(MEMORY[0x277CCAD78]);
  v4 = [*(a1 + 40) invitationUUID];
  v5 = [v3 initWithUUIDString:v4];
  v25 = 0;
  if (v2)
  {
    v6 = [(HDSummarySharingEntryIDSManager *)v2 _queue_updateEntryWithInvitationUUID:v5 newStatus:2 dateAccepted:0 ownerParticipant:0 error:&v25];
    v7 = v25;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v8 = v7;

  if (v6)
  {
    v9 = *(a1 + 32);
    v10 = *(a1 + 48);
    v24 = 0;
    v11 = [(HDSummarySharingEntryIDSManager *)v9 _deleteProfile:v10 errorOut:&v24];
    v12 = v24;
    if ((v11 & 1) == 0)
    {
      _HKInitializeLogging();
      v13 = HKLogSharing();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v20 = *(a1 + 32);
        v21 = [*(a1 + 48) profileIdentifier];
        v22 = [v21 identifier];
        v23 = [v22 UUIDString];
        *buf = 138543874;
        v27 = v20;
        v28 = 2114;
        v29 = v23;
        v30 = 2114;
        v31 = v12;
        _os_log_error_impl(&dword_228986000, v13, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@: Failed to delete shared profile with identifier %{public}@. %{public}@", buf, 0x20u);
      }
    }

    [(HDSummarySharingEntryIDSManager *)*(a1 + 32) _attemptBestEffortCloudSynchronization];
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    _HKInitializeLogging();
    v14 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
    {
      v16 = *(a1 + 32);
      v15 = *(a1 + 40);
      v17 = v14;
      v18 = [v15 primaryContactIdentifier];
      v19 = [*(a1 + 40) uuid];
      *buf = 138544131;
      v27 = v16;
      v28 = 2113;
      v29 = v18;
      v30 = 2114;
      v31 = v19;
      v32 = 2114;
      v33 = v8;
      _os_log_error_impl(&dword_228986000, v17, OS_LOG_TYPE_ERROR, "%{public}@: Error updating entry with identifier %{private}@ and UUID %{public}@. %{public}@", buf, 0x2Au);
    }

    (*(*(a1 + 56) + 16))();
  }
}

void __137__HDSummarySharingEntryIDSManager__setupSharingWithOutgoingCodableSummarySharingEntry_sharingAuthorizations_localAccountInfo_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if (a2)
  {
    v11 = 0;
    v9 = [a2 codableSharingSetupMetadataWithError:&v11];
    v10 = v11;
    if (v9)
    {
      [*(a1 + 32) setSharingSetupMetadata:v9];
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void __73__HDSummarySharingEntryIDSManager__attemptBestEffortCloudSynchronization__block_invoke(uint64_t a1, char a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = 138543618;
      v9 = v7;
      v10 = 2114;
      v11 = v5;
      _os_log_error_impl(&dword_228986000, v6, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@: Failed to synchronize with error %{public}@", &v8, 0x16u);
    }
  }
}

void __56__HDSummarySharingEntryIDSManager__attemptPushSummaries__block_invoke(uint64_t a1, int a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC328];
  v7 = *MEMORY[0x277CCC328];
  if (a2)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v10 = 138543362;
      v11 = v8;
      _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Pushed summaries succeeded after invite completion", &v10, 0xCu);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v9 = *(a1 + 32);
    v10 = 138543618;
    v11 = v9;
    v12 = 2114;
    v13 = v5;
    _os_log_error_impl(&dword_228986000, v6, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@: Failed to push summaries after invite completion with error %{public}@", &v10, 0x16u);
  }
}

void __73__HDSummarySharingEntryIDSManager__finishHandlerForOperation_completion___block_invoke(void *a1, uint64_t a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 hd_errorForAnalytics];
  WeakRetained = objc_loadWeakRetained((a1[4] + 8));
  v8 = [WeakRetained daemon];
  v9 = [v8 analyticsSubmissionCoordinator];
  [v9 summarySharing_reportSetupOperation:a1[5] success:a2 error:v6];

  if ((a2 & 1) == 0)
  {
    v10 = a1[4];
    v11 = v6;
    v12 = v11;
    if (v10 && [v11 hk_isHealthKitError])
    {
      if ([v12 code] == 3)
      {
      }

      else
      {
        v13 = [v12 code];

        if (v13 != 1600)
        {
          goto LABEL_11;
        }
      }

      _HKInitializeLogging();
      v14 = HKLogSharing();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v18 = a1[4];
        v19 = a1[5];
        v20 = 138543874;
        v21 = v18;
        v22 = 2114;
        v23 = v19;
        v24 = 2114;
        v25 = v12;
        _os_log_error_impl(&dword_228986000, v14, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@: Setup operation %{public}@ failed with error %{public}@", &v20, 0x20u);
      }

      v15 = objc_loadWeakRetained((a1[4] + 8));
      v16 = [v15 daemon];
      v17 = [v16 autoBugCaptureReporter];
      [v17 reportSummarySharingInvitationFailureForOperation:a1[5] error:v12];
    }

    else
    {
    }
  }

LABEL_11:
  (*(a1[6] + 16))();
}

- (void)invitationManager:(id)manager didReceiveInvitation:(id)invitation
{
  v27 = *MEMORY[0x277D85DE8];
  invitationCopy = invitation;
  codableObject = [invitationCopy codableObject];
  _HKInitializeLogging();
  v7 = HKLogSharing();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [codableObject uuid];
    uUID = [invitationCopy UUID];
    uUIDString = [uUID UUIDString];
    primaryContactIdentifier = [codableObject primaryContactIdentifier];
    *buf = 138544131;
    selfCopy = self;
    v21 = 2114;
    v22 = uuid;
    v23 = 2114;
    v24 = uUIDString;
    v25 = 2113;
    v26 = primaryContactIdentifier;
    _os_log_impl(&dword_228986000, v7, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Received invitation with UUID %{public}@, invitation UUID %{public}@ and identifier %{private}@.", buf, 0x2Au);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__HDSummarySharingEntryIDSManager_invitationManager_didReceiveInvitation___block_invoke;
  block[3] = &unk_278613830;
  v16 = codableObject;
  v17 = invitationCopy;
  selfCopy2 = self;
  v13 = invitationCopy;
  v14 = codableObject;
  dispatch_sync(queue, block);
}

void __74__HDSummarySharingEntryIDSManager_invitationManager_didReceiveInvitation___block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) sharingAuthorizationsCount];
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [v3 sharingAuthorizations];
    HDSharingAuthorizationsFromCodableSharingAuthorizations(v4);
  }

  else
  {
    v4 = [v3 authorizationCategories];
    [v4 hk_map:&__block_literal_global_382_0];
  }
  v26 = ;

  v5 = [HDCodableSummarySharingEntry alloc];
  v6 = objc_alloc(MEMORY[0x277CCAD78]);
  v7 = [*(a1 + 32) uuid];
  v8 = [v6 initWithUUIDString:v7];
  v9 = [*(a1 + 40) UUID];
  v10 = [*(a1 + 40) fromID];
  v11 = [*(a1 + 32) allContactIdentifiers];
  v12 = [*(a1 + 32) userWheelchairMode];
  v13 = [MEMORY[0x277CBEAA8] date];
  v14 = [*(a1 + 32) sharingSetupMetadata];
  v15 = [(HDCodableSummarySharingEntry *)v5 initWithUUID:v8 invitationUUID:v9 cloudKitIdentifier:0 primaryContactIdentifier:v10 allContactIdentifiers:v11 firstName:0 lastName:0 sharingAuthorizations:v26 userWheelchairMode:v12 type:0 direction:1 status:0 notificationStatus:0 dateModified:0 dateInvited:v13 dateAccepted:0 setupMetadata:v14 ownerParticipant:0];

  v16 = [MEMORY[0x277CBDAB8] hd_contactStoreWithHealthAppIdentity];
  v17 = HDCNContactForCodableEntry(v15, v16);
  v18 = v17;
  if (v17)
  {
    v19 = [v17 givenName];
    [(HDCodableSummarySharingEntry *)v15 setFirstName:v19];

    v20 = [v18 familyName];
    [(HDCodableSummarySharingEntry *)v15 setLastName:v20];
  }

  v21 = *(a1 + 48);
  v27 = 0;
  v22 = [(HDSummarySharingEntryIDSManager *)v21 _queue_insertOrReplaceCodableEntry:v15 ignoreIfExists:1 shouldResolveCNContact:1 error:&v27];
  v23 = v27;
  if ((v22 & 1) == 0)
  {
    _HKInitializeLogging();
    v24 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
    {
      v25 = *(a1 + 48);
      *buf = 138543618;
      v29 = v25;
      v30 = 2114;
      v31 = v23;
      _os_log_error_impl(&dword_228986000, v24, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@: Sharing invitation received but failed to insert HDCodableSummarySharingEntry with error %{public}@", buf, 0x16u);
    }
  }

  [(HDSummarySharingEntryIDSManager *)*(a1 + 48) _attemptBestEffortCloudSynchronization];
}

id __74__HDSummarySharingEntryIDSManager_invitationManager_didReceiveInvitation___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCD960];
  v3 = a2;
  v4 = [[v2 alloc] initWithAuthorizationIdentifier:v3];

  return v4;
}

- (void)invitationManager:(id)manager didRescindInvitation:(id)invitation
{
  v26 = *MEMORY[0x277D85DE8];
  invitationCopy = invitation;
  codableObject = [invitationCopy codableObject];
  _HKInitializeLogging();
  v7 = HKLogSharing();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [codableObject uuid];
    uUID = [invitationCopy UUID];
    uUIDString = [uUID UUIDString];
    primaryContactIdentifier = [codableObject primaryContactIdentifier];
    *buf = 138544131;
    selfCopy = self;
    v20 = 2114;
    v21 = uuid;
    v22 = 2114;
    v23 = uUIDString;
    v24 = 2113;
    v25 = primaryContactIdentifier;
    _os_log_impl(&dword_228986000, v7, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Received rescind invitation with UUID %{public}@, invitation UUID %{public}@ and identifier %{private}@.", buf, 0x2Au);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__HDSummarySharingEntryIDSManager_invitationManager_didRescindInvitation___block_invoke;
  block[3] = &unk_278613830;
  block[4] = self;
  v16 = invitationCopy;
  v17 = codableObject;
  v13 = codableObject;
  v14 = invitationCopy;
  dispatch_sync(queue, block);
}

void __74__HDSummarySharingEntryIDSManager_invitationManager_didRescindInvitation___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) UUID];
  v4 = v3;
  v14 = 0;
  if (v2)
  {
    v5 = [(HDSummarySharingEntryIDSManager *)v2 _queue_updateEntryWithInvitationUUID:v3 newStatus:3 dateAccepted:0 ownerParticipant:0 error:&v14];
    v2 = v14;

    if (v5)
    {
      [(HDSummarySharingEntryIDSManager *)*(a1 + 32) _attemptBestEffortCloudSynchronization];
      goto LABEL_7;
    }
  }

  else
  {
  }

  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC2A0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 48);
    v9 = v6;
    v10 = [v8 primaryContactIdentifier];
    v11 = [*(a1 + 48) uuid];
    v12 = [*(a1 + 40) UUID];
    v13 = [v12 UUIDString];
    *buf = 138544387;
    v16 = v7;
    v17 = 2113;
    v18 = v10;
    v19 = 2114;
    v20 = v11;
    v21 = 2114;
    v22 = v13;
    v23 = 2114;
    v24 = v2;
    _os_log_error_impl(&dword_228986000, v9, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@: Sharing entry rescind received but failed to update database for identifier %{private}@, UUID %{public}@ and invitation UUID %{public}@ with error %{public}@", buf, 0x34u);
  }

LABEL_7:
}

- (void)invitationManager:(id)manager didAcceptInvitation:(id)invitation
{
  v26 = *MEMORY[0x277D85DE8];
  invitationCopy = invitation;
  codableObject = [invitationCopy codableObject];
  _HKInitializeLogging();
  v7 = HKLogSharing();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [codableObject uuid];
    uUID = [invitationCopy UUID];
    uUIDString = [uUID UUIDString];
    primaryContactIdentifier = [codableObject primaryContactIdentifier];
    *buf = 138544131;
    selfCopy = self;
    v20 = 2114;
    v21 = uuid;
    v22 = 2114;
    v23 = uUIDString;
    v24 = 2113;
    v25 = primaryContactIdentifier;
    _os_log_impl(&dword_228986000, v7, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Received accept invitation with UUID %{public}@, invitation UUID %{public}@ and identifier %{private}@.", buf, 0x2Au);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__HDSummarySharingEntryIDSManager_invitationManager_didAcceptInvitation___block_invoke;
  block[3] = &unk_278613830;
  block[4] = self;
  v16 = invitationCopy;
  v17 = codableObject;
  v13 = codableObject;
  v14 = invitationCopy;
  dispatch_sync(queue, block);
}

void __73__HDSummarySharingEntryIDSManager_invitationManager_didAcceptInvitation___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) UUID];
  v4 = MEMORY[0x277CBEAA8];
  [*(a1 + 48) dateAccepted];
  v5 = [v4 dateWithTimeIntervalSinceReferenceDate:?];
  v16 = 0;
  v6 = [(HDSummarySharingEntryIDSManager *)v2 _queue_updateEntryWithInvitationUUID:v3 newStatus:1 dateAccepted:v5 ownerParticipant:0 error:&v16];
  v7 = v16;

  if (v6)
  {
    [(HDSummarySharingEntryIDSManager *)*(a1 + 32) _attemptBestEffortCloudSynchronization];
  }

  else
  {
    _HKInitializeLogging();
    v8 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v10 = *(a1 + 48);
      v11 = v8;
      v12 = [v10 primaryContactIdentifier];
      v13 = [*(a1 + 48) uuid];
      v14 = [*(a1 + 40) UUID];
      v15 = [v14 UUIDString];
      *buf = 138544387;
      v18 = v9;
      v19 = 2113;
      v20 = v12;
      v21 = 2114;
      v22 = v13;
      v23 = 2114;
      v24 = v15;
      v25 = 2114;
      v26 = v7;
      _os_log_error_impl(&dword_228986000, v11, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@: Sharing entry accepted received but failed to update database for identifier %{private}@, UUID %{public}@ and invitation UUID %{public}@ with error %{public}@", buf, 0x34u);
    }
  }
}

- (void)invitationManager:(id)manager didDeclineInvitation:(id)invitation
{
  v26 = *MEMORY[0x277D85DE8];
  invitationCopy = invitation;
  codableObject = [invitationCopy codableObject];
  _HKInitializeLogging();
  v7 = HKLogSharing();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [codableObject uuid];
    uUID = [invitationCopy UUID];
    uUIDString = [uUID UUIDString];
    primaryContactIdentifier = [codableObject primaryContactIdentifier];
    *buf = 138544131;
    selfCopy = self;
    v20 = 2114;
    v21 = uuid;
    v22 = 2114;
    v23 = uUIDString;
    v24 = 2113;
    v25 = primaryContactIdentifier;
    _os_log_impl(&dword_228986000, v7, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Received decline invitation with UUID %{public}@, invitation UUID %{public}@ and identifier %{private}@.", buf, 0x2Au);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__HDSummarySharingEntryIDSManager_invitationManager_didDeclineInvitation___block_invoke;
  block[3] = &unk_278613830;
  block[4] = self;
  v16 = invitationCopy;
  v17 = codableObject;
  v13 = codableObject;
  v14 = invitationCopy;
  dispatch_sync(queue, block);
}

void __74__HDSummarySharingEntryIDSManager_invitationManager_didDeclineInvitation___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) UUID];
  v4 = v3;
  v14 = 0;
  if (v2)
  {
    v5 = [(HDSummarySharingEntryIDSManager *)v2 _queue_updateEntryWithInvitationUUID:v3 newStatus:2 dateAccepted:0 ownerParticipant:0 error:&v14];
    v2 = v14;

    if (v5)
    {
      [(HDSummarySharingEntryIDSManager *)*(a1 + 32) _attemptBestEffortCloudSynchronization];
      goto LABEL_7;
    }
  }

  else
  {
  }

  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC2A0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 48);
    v9 = v6;
    v10 = [v8 primaryContactIdentifier];
    v11 = [*(a1 + 48) uuid];
    v12 = [*(a1 + 40) UUID];
    v13 = [v12 UUIDString];
    *buf = 138544387;
    v16 = v7;
    v17 = 2113;
    v18 = v10;
    v19 = 2114;
    v20 = v11;
    v21 = 2114;
    v22 = v13;
    v23 = 2114;
    v24 = v2;
    _os_log_error_impl(&dword_228986000, v9, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@: Sharing entry declined received but failed to update database for identifier %{private}@, UUID %{public}@ and invitation UUID %{public}@ with error %{public}@", buf, 0x34u);
  }

LABEL_7:
}

@end