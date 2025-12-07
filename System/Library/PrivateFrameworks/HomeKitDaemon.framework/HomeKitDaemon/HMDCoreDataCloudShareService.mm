@interface HMDCoreDataCloudShareService
+ (id)logCategory;
- (HMDCoreDataCloudShareService)initWithContainer:(id)container sharedStore:(id)store privateStore:(id)privateStore moc:(id)moc;
- (id)_acceptShareInvitation:(id)invitation;
- (id)_addParticipant:(id)participant share:(id)share;
- (id)_auditUsersForRevokedAccessWithAccountHandles:(id)handles share:(id)share;
- (id)_fetchParticipantForAccountHandle:(id)handle;
- (id)_fetchParticipantsForAccountHandles:(id)handles;
- (id)_fetchShareMetadataForInvitation:(id)invitation;
- (id)_fetchUserRecordIDForUserWithAccountHandle:(id)handle share:(id)share;
- (id)_grantAccessForUserWithAccountHandle:(id)handle share:(id)share logEventBuilder:(id)builder;
- (id)_pushUpdatedShare:(id)share;
- (id)_removeParticipant:(id)participant share:(id)share;
- (id)_revokeAccessForUserWithAccountHandle:(id)handle share:(id)share;
- (id)acceptShareInvitation:(id)invitation;
- (id)acceptShareInvitationsFromMetadata:(id)metadata intoPersistentStore:(id)store;
- (id)auditUsersForRevokedAccessWithAccountHandles:(id)handles share:(id)share;
- (id)ckContainer;
- (id)fetchShareWithRecordID:(id)d;
- (id)fetchUserRecordIDForUserWithAccountHandle:(id)handle share:(id)share;
- (id)grantAccessForUserWithAccountHandle:(id)handle share:(id)share logEventBuilder:(id)builder;
- (id)revokeAccessForUserWithAccountHandle:(id)handle share:(id)share;
- (id)validateGrantingAccessForUserWithAccountHandle:(id)handle share:(id)share;
- (void)_acceptShareInvitationsFromMetadata:(id)metadata intoPersistentStore:(id)store completion:(id)completion;
- (void)_fetchShareMetadataForInvitation:(id)invitation completion:(id)completion;
- (void)_fetchShareWithRecordID:(id)d completion:(id)completion;
- (void)_pushUpdatedShare:(id)share completion:(id)completion;
@end

@implementation HMDCoreDataCloudShareService

- (id)_fetchUserRecordIDForUserWithAccountHandle:(id)handle share:(id)share
{
  handleCopy = handle;
  shareCopy = share;
  v8 = [(HMDCoreDataCloudShareService *)self _fetchParticipantForAccountHandle:handleCopy];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __81__HMDCoreDataCloudShareService__fetchUserRecordIDForUserWithAccountHandle_share___block_invoke;
  v13[3] = &unk_27866F4B8;
  v14 = shareCopy;
  selfCopy = self;
  v16 = handleCopy;
  v9 = handleCopy;
  v10 = shareCopy;
  v11 = [v8 then:v13];

  return v11;
}

uint64_t __81__HMDCoreDataCloudShareService__fetchUserRecordIDForUserWithAccountHandle_share___block_invoke(uint64_t a1, void *a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) participants];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __81__HMDCoreDataCloudShareService__fetchUserRecordIDForUserWithAccountHandle_share___block_invoke_2;
  v29[3] = &unk_27866F378;
  v5 = v3;
  v30 = v5;
  v6 = [v4 na_firstObjectPassingTest:v29];

  if (!v6)
  {
    v17 = objc_autoreleasePoolPush();
    v18 = *(a1 + 40);
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      v21 = *(a1 + 32);
      *buf = 138543874;
      v32 = v20;
      v33 = 2112;
      v34 = v5;
      v35 = 2112;
      v36 = v21;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Participant for account handle not found on share using fetched participant %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v17);
    v22 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    v15 = v22;
    if (v22)
    {
      v23 = v22;
    }

    else
    {
      [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
      objc_claimAutoreleasedReturnValue();
    }

    goto LABEL_18;
  }

  v7 = [v6 userIdentity];
  v8 = [v7 userRecordID];

  v9 = objc_autoreleasePoolPush();
  v10 = *(a1 + 40);
  v11 = HMFGetOSLogHandle();
  v12 = v11;
  if (!v8)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543618;
      v32 = v24;
      v33 = 2112;
      v34 = v6;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Participant for account handle has no user record ID: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    v25 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    v26 = v25;
    if (v25)
    {
      v27 = v25;
    }

    else
    {
      [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
      objc_claimAutoreleasedReturnValue();
    }

    v15 = 0;
LABEL_18:
    v16 = 2;
    goto LABEL_19;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = HMFGetLogIdentifier();
    v14 = *(a1 + 48);
    *buf = 138543874;
    v32 = v13;
    v33 = 2112;
    v34 = v14;
    v35 = 2112;
    v36 = v8;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@Fetched user record ID for user with account handle %@: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  v15 = v8;
  v16 = 1;
LABEL_19:

  return v16;
}

- (id)fetchUserRecordIDForUserWithAccountHandle:(id)handle share:(id)share
{
  handleCopy = handle;
  shareCopy = share;
  v8 = MEMORY[0x277D0F7C0];
  managedObjectContext = self->_managedObjectContext;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __80__HMDCoreDataCloudShareService_fetchUserRecordIDForUserWithAccountHandle_share___block_invoke;
  v14[3] = &unk_278686828;
  v14[4] = self;
  v15 = handleCopy;
  v16 = shareCopy;
  v10 = shareCopy;
  v11 = handleCopy;
  v12 = [v8 inContext:managedObjectContext perform:v14];

  return v12;
}

uint64_t __80__HMDCoreDataCloudShareService_fetchUserRecordIDForUserWithAccountHandle_share___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _fetchUserRecordIDForUserWithAccountHandle:*(a1 + 40) share:*(a1 + 48)];
  if (v1)
  {
    v2 = v1;

    return 3;
  }

  else
  {
    v4 = _HMFPreconditionFailure();
    return [(HMDCoreDataCloudShareService *)v4 _fetchShareMetadataForInvitation:v5, v6];
  }
}

- (id)_fetchShareMetadataForInvitation:(id)invitation
{
  invitationCopy = invitation;
  v13 = 0;
  v5 = [MEMORY[0x277D0F7C0] futureWithPromise:&v13];
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __65__HMDCoreDataCloudShareService__fetchShareMetadataForInvitation___block_invoke;
  v8[3] = &unk_27866F490;
  objc_copyWeak(&v11, &location);
  v6 = invitationCopy;
  v9 = v6;
  v10 = v13;
  [(HMDCoreDataCloudShareService *)self _fetchShareMetadataForInvitation:v6 completion:v8];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);

  return v5;
}

void __65__HMDCoreDataCloudShareService__fetchShareMetadataForInvitation___block_invoke(id *a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v8 = v6;
  v9 = v8;
  if (!(v5 | v8))
  {
    v9 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
  }

  if (v9)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = WeakRetained;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v14 = [a1[4] url];
      v15 = 138544130;
      v16 = v13;
      v17 = 2160;
      v18 = 1752392040;
      v19 = 2112;
      v20 = v14;
      v21 = 2114;
      v22 = v9;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Fetching metadata for URL %{mask.hash}@ failed due to %{public}@", &v15, 0x2Au);
    }

    objc_autoreleasePoolPop(v10);
    [a1[5] rejectWithError:v9];
  }

  else
  {
    [a1[5] fulfillWithValue:v5];
  }
}

- (void)_fetchShareMetadataForInvitation:(id)invitation completion:(id)completion
{
  v42 = *MEMORY[0x277D85DE8];
  invitationCopy = invitation;
  completionCopy = completion;
  v8 = objc_alloc(MEMORY[0x277CBC3F8]);
  content = [invitationCopy content];
  allKeys = [content allKeys];
  content2 = [invitationCopy content];
  v12 = [v8 initWithShareURLs:allKeys invitationTokensByShareURL:content2];

  array = [MEMORY[0x277CBEB18] array];
  objc_initWeak(&location, self);
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __76__HMDCoreDataCloudShareService__fetchShareMetadataForInvitation_completion___block_invoke;
  v30[3] = &unk_27866F468;
  objc_copyWeak(&v32, &location);
  v14 = array;
  v31 = v14;
  [v12 setPerShareMetadataBlock:v30];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __76__HMDCoreDataCloudShareService__fetchShareMetadataForInvitation_completion___block_invoke_80;
  v25[3] = &unk_278685FB0;
  objc_copyWeak(&v29, &location);
  v15 = completionCopy;
  v28 = v15;
  v16 = invitationCopy;
  v26 = v16;
  v17 = v14;
  v27 = v17;
  [v12 setFetchShareMetadataCompletionBlock:v25];
  v18 = objc_autoreleasePoolPush();
  selfCopy = self;
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v21 = HMFGetLogIdentifier();
    v22 = [v16 url];
    operationID = [v12 operationID];
    *buf = 138544130;
    v35 = v21;
    v36 = 2160;
    v37 = 1752392040;
    v38 = 2112;
    v39 = v22;
    v40 = 2112;
    v41 = operationID;
    _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@Fetching share metadata for invitation URL %{mask.hash}@ (operationID: %@)", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v18);
  ckContainer = [(HMDCoreDataCloudShareService *)selfCopy ckContainer];
  [ckContainer addOperation:v12];

  objc_destroyWeak(&v29);
  objc_destroyWeak(&v32);
  objc_destroyWeak(&location);
}

void __76__HMDCoreDataCloudShareService__fetchShareMetadataForInvitation_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (v9)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = WeakRetained;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v15 = 138544130;
      v16 = v14;
      v17 = 2160;
      v18 = 1752392040;
      v19 = 2112;
      v20 = v7;
      v21 = 2114;
      v22 = v9;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Fetching metadata for URL %{mask.hash}@ failed due to %{public}@", &v15, 0x2Au);
    }

    objc_autoreleasePoolPop(v11);
  }

  else
  {
    [*(a1 + 32) addObject:v8];
  }
}

void __76__HMDCoreDataCloudShareService__fetchShareMetadataForInvitation_completion___block_invoke_80(id *a1, void *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  if (WeakRetained)
  {
    if (v3)
    {
      v5 = [v3 hmd_retryAfterCKError];
      v6 = objc_autoreleasePoolPush();
      v7 = WeakRetained;
      v8 = HMFGetOSLogHandle();
      v9 = v8;
      if (v5)
      {
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          v10 = HMFGetLogIdentifier();
          v11 = [a1[4] url];
          *buf = 138544386;
          v27 = v10;
          v28 = 2160;
          v29 = 1752392040;
          v30 = 2112;
          v31 = v11;
          v32 = 2114;
          v33 = v5;
          v34 = 2112;
          v35 = v3;
          _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Retrying fetching share metadata for URL %{mask.hash}@ in %{public}@s due to error: %@", buf, 0x34u);
        }

        objc_autoreleasePoolPop(v6);
        [v5 doubleValue];
        v13 = dispatch_time(0, (v12 * 1000000000.0));
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __76__HMDCoreDataCloudShareService__fetchShareMetadataForInvitation_completion___block_invoke_81;
        block[3] = &unk_278689F98;
        block[4] = v7;
        v24 = a1[4];
        v25 = a1[6];
        dispatch_after(v13, MEMORY[0x277D85CD0], block);

        goto LABEL_19;
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        v21 = [a1[4] url];
        *buf = 138544130;
        v27 = v20;
        v28 = 2160;
        v29 = 1752392040;
        v30 = 2112;
        v31 = v21;
        v32 = 2114;
        v33 = v3;
        _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch metadata for URL %{mask.hash}@ due to %{public}@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v6);
      v22 = _Block_copy(a1[6]);
      v19 = v22;
      if (v22)
      {
        (*(v22 + 2))(v22, 0, v3);
      }
    }

    else
    {
      v5 = _Block_copy(a1[6]);
      if (!v5)
      {
LABEL_19:

        goto LABEL_20;
      }

      v19 = [a1[5] firstObject];
      (v5)[2](v5, v19, 0);
    }

    goto LABEL_19;
  }

  v14 = objc_autoreleasePoolPush();
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v16 = HMFGetLogIdentifier();
    *buf = 138543362;
    v27 = v16;
    _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Lost self fetching share metadata", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v14);
  v17 = _Block_copy(a1[6]);
  v18 = v17;
  if (v17)
  {
    (*(v17 + 2))(v17, 0, v3);
  }

LABEL_20:
}

- (id)_pushUpdatedShare:(id)share
{
  shareCopy = share;
  v11 = 0;
  v5 = [MEMORY[0x277D0F7C0] futureWithPromise:&v11];
  objc_initWeak(&location, self);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__HMDCoreDataCloudShareService__pushUpdatedShare___block_invoke;
  v7[3] = &unk_27866F3F0;
  objc_copyWeak(&v9, &location);
  v8 = v11;
  [(HMDCoreDataCloudShareService *)self _pushUpdatedShare:shareCopy completion:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);

  return v5;
}

void __50__HMDCoreDataCloudShareService__pushUpdatedShare___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (v6)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = WeakRetained;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v14 = 138543618;
      v15 = v11;
      v16 = 2114;
      v17 = v6;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Fetching share failed with %{public}@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    [*(a1 + 32) rejectWithError:v6];
  }

  else
  {
    v12 = *(a1 + 32);
    if (v5)
    {
      [v12 fulfillWithValue:v5];
    }

    else
    {
      v13 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
      [v12 rejectWithError:v13];
    }
  }
}

- (void)_pushUpdatedShare:(id)share completion:(id)completion
{
  v34[1] = *MEMORY[0x277D85DE8];
  shareCopy = share;
  completionCopy = completion;
  v8 = objc_alloc_init(MEMORY[0x277CBC4F0]);
  [v8 setQualityOfService:17];
  v9 = objc_alloc(MEMORY[0x277CBC4A0]);
  v34[0] = shareCopy;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:1];
  v11 = [v9 initWithRecordsToSave:v10 recordIDsToDelete:0];

  [v11 setConfiguration:v8];
  objc_initWeak(&location, self);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __61__HMDCoreDataCloudShareService__pushUpdatedShare_completion___block_invoke;
  v25[3] = &unk_27866F418;
  objc_copyWeak(&v26, &location);
  [v11 setPerRecordCompletionBlock:v25];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __61__HMDCoreDataCloudShareService__pushUpdatedShare_completion___block_invoke_75;
  v21[3] = &unk_27866F440;
  objc_copyWeak(&v24, &location);
  v12 = completionCopy;
  v23 = v12;
  v13 = shareCopy;
  v22 = v13;
  [v11 setModifyRecordsCompletionBlock:v21];
  v14 = objc_autoreleasePoolPush();
  selfCopy = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    operationID = [v11 operationID];
    *buf = 138543874;
    v29 = v17;
    v30 = 2112;
    v31 = v13;
    v32 = 2112;
    v33 = operationID;
    _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Pushing updated share %@ (operationID: %@)", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v14);
  ckContainer = [(HMDCoreDataCloudShareService *)selfCopy ckContainer];
  privateCloudDatabase = [ckContainer privateCloudDatabase];
  [privateCloudDatabase addOperation:v11];

  objc_destroyWeak(&v24);
  objc_destroyWeak(&v26);
  objc_destroyWeak(&location);
}

void __61__HMDCoreDataCloudShareService__pushUpdatedShare_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = objc_autoreleasePoolPush();
  v9 = WeakRetained;
  v10 = HMFGetOSLogHandle();
  v11 = v10;
  if (v6)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v17 = 138543875;
      v18 = v12;
      v19 = 2112;
      v20 = v5;
      v21 = 2113;
      v22 = v6;
      v13 = "%{public}@Failed to push share %@: %{private}@";
      v14 = v11;
      v15 = OS_LOG_TYPE_ERROR;
      v16 = 32;
LABEL_6:
      _os_log_impl(&dword_229538000, v14, v15, v13, &v17, v16);
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = HMFGetLogIdentifier();
    v17 = 138543618;
    v18 = v12;
    v19 = 2112;
    v20 = v5;
    v13 = "%{public}@Successfully pushed share: %@";
    v14 = v11;
    v15 = OS_LOG_TYPE_DEFAULT;
    v16 = 22;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v8);
}

void __61__HMDCoreDataCloudShareService__pushUpdatedShare_completion___block_invoke_75(id *a1, void *a2, void *a3, void *a4)
{
  v52 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    if (v9)
    {
      v11 = objc_autoreleasePoolPush();
      v12 = WeakRetained;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = HMFGetLogIdentifier();
        *buf = 138543618;
        v49 = v14;
        v50 = 2114;
        v51 = v9;
        _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Push updated share operation failed: %{public}@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v11);
      v15 = [v9 hmd_retryAfterCKError];
      if (v15)
      {
        v16 = v15;
        v17 = objc_autoreleasePoolPush();
        v18 = v12;
        v19 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v20 = HMFGetLogIdentifier();
          *buf = 138543618;
          v49 = v20;
          v50 = 2114;
          v51 = v16;
          _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Retrying pushing updated share in %{public}@s", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v17);
        [v16 doubleValue];
        v22 = dispatch_time(0, (v21 * 1000000000.0));
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __61__HMDCoreDataCloudShareService__pushUpdatedShare_completion___block_invoke_76;
        block[3] = &unk_278689F98;
        block[4] = v18;
        v46 = a1[4];
        v47 = a1[5];
        dispatch_after(v22, MEMORY[0x277D85CD0], block);
      }

      else
      {
        v36 = [a1[4] recordID];
        v37 = [v9 hmd_actualCKErrorFromCKErrorPartialFailure:v36];

        v38 = objc_autoreleasePoolPush();
        v39 = v12;
        v40 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          v41 = HMFGetLogIdentifier();
          *buf = 138543618;
          v49 = v41;
          v50 = 2114;
          v51 = v37;
          _os_log_impl(&dword_229538000, v40, OS_LOG_TYPE_ERROR, "%{public}@Failing push updated share with %{public}@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v38);
        v42 = _Block_copy(a1[5]);
        v43 = v42;
        if (v42)
        {
          (*(v42 + 2))(v42, 0, v37);
        }

        v16 = 0;
      }
    }

    else
    {
      v27 = [v7 firstObject];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v28 = v27;
      }

      else
      {
        v28 = 0;
      }

      v16 = v28;

      if (!v16)
      {
        v29 = objc_autoreleasePoolPush();
        v30 = WeakRetained;
        v31 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          v32 = HMFGetLogIdentifier();
          [v7 firstObject];
          v33 = v44 = v29;
          *buf = 138543618;
          v49 = v32;
          v50 = 2112;
          v51 = v33;
          _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_ERROR, "%{public}@Unexpected record received when pushing updated share: %@", buf, 0x16u);

          v29 = v44;
        }

        objc_autoreleasePoolPop(v29);
      }

      v34 = _Block_copy(a1[5]);
      v35 = v34;
      if (v34)
      {
        (*(v34 + 2))(v34, v16, 0);
      }
    }
  }

  else
  {
    v23 = objc_autoreleasePoolPush();
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543362;
      v49 = v25;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@Lost self while pushing updated share", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v23);
    v26 = _Block_copy(a1[5]);
    v16 = v26;
    if (v26)
    {
      (*(v26 + 2))(v26, 0, v9);
    }
  }
}

- (id)fetchShareWithRecordID:(id)d
{
  dCopy = d;
  v11 = 0;
  v5 = [MEMORY[0x277D0F7C0] futureWithPromise:&v11];
  objc_initWeak(&location, self);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__HMDCoreDataCloudShareService_fetchShareWithRecordID___block_invoke;
  v7[3] = &unk_27866F3F0;
  objc_copyWeak(&v9, &location);
  v8 = v11;
  [(HMDCoreDataCloudShareService *)self _fetchShareWithRecordID:dCopy completion:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);

  return v5;
}

void __55__HMDCoreDataCloudShareService_fetchShareWithRecordID___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (v6)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = WeakRetained;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v14 = 138543618;
      v15 = v11;
      v16 = 2114;
      v17 = v6;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Fetching share failed with %{public}@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    [*(a1 + 32) rejectWithError:v6];
  }

  else
  {
    v12 = *(a1 + 32);
    if (v5)
    {
      [v12 fulfillWithValue:v5];
    }

    else
    {
      v13 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
      [v12 rejectWithError:v13];
    }
  }
}

- (void)_fetchShareWithRecordID:(id)d completion:(id)completion
{
  v34[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  completionCopy = completion;
  v8 = objc_alloc_init(MEMORY[0x277CBC4F0]);
  [v8 setQualityOfService:17];
  v9 = objc_alloc(MEMORY[0x277CBC3E0]);
  v34[0] = dCopy;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:1];
  v11 = [v9 initWithRecordIDs:v10];

  [v11 setConfiguration:v8];
  objc_initWeak(&location, self);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __67__HMDCoreDataCloudShareService__fetchShareWithRecordID_completion___block_invoke;
  v25[3] = &unk_27866F3A0;
  objc_copyWeak(&v26, &location);
  [v11 setPerRecordCompletionBlock:v25];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __67__HMDCoreDataCloudShareService__fetchShareWithRecordID_completion___block_invoke_68;
  v21[3] = &unk_27866F3C8;
  objc_copyWeak(&v24, &location);
  v12 = completionCopy;
  v23 = v12;
  v13 = dCopy;
  v22 = v13;
  [v11 setFetchRecordsCompletionBlock:v21];
  v14 = objc_autoreleasePoolPush();
  selfCopy = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    operationID = [v11 operationID];
    *buf = 138543874;
    v29 = v17;
    v30 = 2112;
    v31 = v13;
    v32 = 2112;
    v33 = operationID;
    _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Fetching share with record ID: %@ (operationID: %@)", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v14);
  ckContainer = [(HMDCoreDataCloudShareService *)selfCopy ckContainer];
  privateCloudDatabase = [ckContainer privateCloudDatabase];
  [privateCloudDatabase addOperation:v11];

  objc_destroyWeak(&v24);
  objc_destroyWeak(&v26);
  objc_destroyWeak(&location);
}

void __67__HMDCoreDataCloudShareService__fetchShareWithRecordID_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = objc_autoreleasePoolPush();
  v12 = WeakRetained;
  v13 = HMFGetOSLogHandle();
  v14 = v13;
  if (v9)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v20 = 138543874;
      v21 = v15;
      v22 = 2112;
      v23 = v7;
      v24 = 2114;
      v25 = v9;
      v16 = "%{public}@Failed to fetch share %@: %{public}@";
      v17 = v14;
      v18 = OS_LOG_TYPE_ERROR;
      v19 = 32;
LABEL_6:
      _os_log_impl(&dword_229538000, v17, v18, v16, &v20, v19);
    }
  }

  else if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v15 = HMFGetLogIdentifier();
    v20 = 138543618;
    v21 = v15;
    v22 = 2112;
    v23 = v7;
    v16 = "%{public}@Successfully fetched share: %@";
    v17 = v14;
    v18 = OS_LOG_TYPE_DEFAULT;
    v19 = 22;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v11);
}

void __67__HMDCoreDataCloudShareService__fetchShareWithRecordID_completion___block_invoke_68(id *a1, void *a2, void *a3)
{
  v48 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    if (v6)
    {
      v8 = objc_autoreleasePoolPush();
      v9 = WeakRetained;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = HMFGetLogIdentifier();
        *buf = 138543618;
        v43 = v11;
        v44 = 2114;
        v45 = v6;
        _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Fetch share operation failed: %{public}@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
      v12 = [v6 hmd_retryAfterCKError];
      if (v12)
      {
        v13 = v12;
        v14 = objc_autoreleasePoolPush();
        v15 = v9;
        v16 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v17 = HMFGetLogIdentifier();
          *buf = 138543874;
          v43 = v17;
          v44 = 2114;
          v45 = v13;
          v46 = 2112;
          v47 = v6;
          _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Retrying fetching share in %{public}@s due to error: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v14);
        [v13 doubleValue];
        v19 = dispatch_time(0, (v18 * 1000000000.0));
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __67__HMDCoreDataCloudShareService__fetchShareWithRecordID_completion___block_invoke_69;
        block[3] = &unk_278689F98;
        block[4] = v15;
        v40 = a1[4];
        v41 = a1[5];
        dispatch_after(v19, MEMORY[0x277D85CD0], block);
      }

      else
      {
        v32 = [v6 hmd_actualCKErrorFromCKErrorPartialFailure:a1[4]];
        v33 = objc_autoreleasePoolPush();
        v34 = v9;
        v35 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          v36 = HMFGetLogIdentifier();
          *buf = 138543618;
          v43 = v36;
          v44 = 2114;
          v45 = v32;
          _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_ERROR, "%{public}@Failing fetch share failed with %{public}@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v33);
        v37 = _Block_copy(a1[5]);
        v38 = v37;
        if (v37)
        {
          (*(v37 + 2))(v37, 0, v32);
        }

        v13 = 0;
      }
    }

    else
    {
      v24 = [v5 objectForKeyedSubscript:a1[4]];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v25 = v24;
      }

      else
      {
        v25 = 0;
      }

      v13 = v25;

      if (!v13)
      {
        v26 = objc_autoreleasePoolPush();
        v27 = WeakRetained;
        v28 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          v29 = HMFGetLogIdentifier();
          *buf = 138543618;
          v43 = v29;
          v44 = 2112;
          v45 = v5;
          _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetched share: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v26);
      }

      v30 = _Block_copy(a1[5]);
      v31 = v30;
      if (v30)
      {
        (*(v30 + 2))(v30, v13, 0);
      }
    }
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543362;
      v43 = v22;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@Lost self while fetching share", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v20);
    v23 = _Block_copy(a1[5]);
    v13 = v23;
    if (v23)
    {
      (*(v23 + 2))(v23, 0, v6);
    }
  }
}

- (id)_fetchParticipantForAccountHandle:(id)handle
{
  v14[1] = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  v5 = handleCopy;
  if (handleCopy)
  {
    v14[0] = handleCopy;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
    v7 = [(HMDCoreDataCloudShareService *)self _fetchParticipantsForAccountHandles:v6];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __66__HMDCoreDataCloudShareService__fetchParticipantForAccountHandle___block_invoke;
    v11[3] = &unk_278687110;
    v12 = v5;
    selfCopy = self;
    v8 = [v7 then:v11];
  }

  else
  {
    v9 = MEMORY[0x277D0F7C0];
    v6 = [MEMORY[0x277CCA9B8] hmErrorWithCode:27];
    v8 = [v9 futureWithError:v6];
  }

  return v8;
}

uint64_t __66__HMDCoreDataCloudShareService__fetchParticipantForAccountHandle___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:*(a1 + 32)];
  v5 = v4;
  if (v4)
  {
    v4;
    v6 = 1;
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 40);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = *(a1 + 32);
      v16 = 138543618;
      v17 = v10;
      v18 = 2112;
      v19 = v11;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@No participant with handle %@", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
      objc_claimAutoreleasedReturnValue();
    }

    v6 = 2;
  }

  return v6;
}

- (id)_fetchParticipantsForAccountHandles:(id)handles
{
  v43 = *MEMORY[0x277D85DE8];
  handlesCopy = handles;
  v4 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(handlesCopy, "count")}];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v5 = handlesCopy;
  v6 = [v5 countByEnumeratingWithState:&v35 objects:v42 count:16];
  v30 = v4;
  if (v6)
  {
    v8 = v6;
    v9 = *v36;
    *&v7 = 138543618;
    v29 = v7;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v36 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v35 + 1) + 8 * i);
        cloudKitLookupInfo = [v11 cloudKitLookupInfo];
        if (cloudKitLookupInfo)
        {
          [v4 setObject:v11 forKeyedSubscript:cloudKitLookupInfo];
        }

        else
        {
          if ([v5 count] == 1)
          {
            v26 = MEMORY[0x277D0F7C0];
            v27 = [MEMORY[0x277CCA9B8] hmErrorWithCode:27];
            v22 = [v26 futureWithError:v27];

            goto LABEL_20;
          }

          v13 = objc_autoreleasePoolPush();
          selfCopy = self;
          v15 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            v16 = HMFGetLogIdentifier();
            *buf = v29;
            *&buf[4] = v16;
            v40 = 2112;
            v41 = v11;
            _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Skipping user with handle %@ due to missing cloudkit lookup info", buf, 0x16u);

            v4 = v30;
          }

          objc_autoreleasePoolPop(v13);
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v35 objects:v42 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  if ([v4 count])
  {
    v17 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      allKeys = [v30 allKeys];
      *buf = 138543618;
      *&buf[4] = v20;
      v40 = 2112;
      v41 = allKeys;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Fetching share participants using lookup infos: %@", buf, 0x16u);

      v4 = v30;
    }

    objc_autoreleasePoolPop(v17);
    *buf = 0;
    v22 = [MEMORY[0x277D0F7C0] futureWithPromise:buf];
    container = [(HMDCoreDataCloudShareService *)selfCopy2 container];
    allKeys2 = [v4 allKeys];
    privateStore = [(HMDCoreDataCloudShareService *)selfCopy2 privateStore];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __68__HMDCoreDataCloudShareService__fetchParticipantsForAccountHandles___block_invoke;
    v32[3] = &unk_278688348;
    v32[4] = selfCopy2;
    v33 = v30;
    v34 = *buf;
    [container fetchParticipantsMatchingLookupInfos:allKeys2 intoPersistentStore:privateStore completion:v32];

    v4 = v30;
  }

  else
  {
    v22 = [MEMORY[0x277D0F7C0] futureWithValue:MEMORY[0x277CBEC10]];
  }

LABEL_20:

  return v22;
}

void __68__HMDCoreDataCloudShareService__fetchParticipantsForAccountHandles___block_invoke(id *a1, void *a2, void *a3)
{
  v49 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = a1;
    v8 = objc_autoreleasePoolPush();
    v9 = v7[4];
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [v7[5] allKeys];
      *buf = 138543874;
      v44 = v11;
      v45 = 2112;
      v46 = v12;
      v47 = 2114;
      v48 = v6;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Fetching participant for %@ resulted in error %{public}@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    [v7[6] rejectWithError:v6];
  }

  else if ([v5 count])
  {
    v37 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v5, "count")}];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v34 = v5;
    v13 = v5;
    v14 = [v13 countByEnumeratingWithState:&v38 objects:v42 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v39;
      v35 = a1;
      v36 = v13;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v39 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v38 + 1) + 8 * i);
          v19 = [v18 userIdentity];
          v20 = [v19 lookupInfo];

          if (v20)
          {
            v21 = [a1[5] objectForKeyedSubscript:v20];
            if (v21)
            {
              [v37 setObject:v18 forKeyedSubscript:v21];
            }

            else
            {
              v22 = objc_autoreleasePoolPush();
              v23 = a1[4];
              v24 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
              {
                v25 = HMFGetLogIdentifier();
                *buf = 138543618;
                v44 = v25;
                v45 = 2112;
                v46 = v18;
                _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@Cannot find account handle for fetching participant %@", buf, 0x16u);

                a1 = v35;
              }

              objc_autoreleasePoolPop(v22);
              v13 = v36;
            }
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v38 objects:v42 count:16];
      }

      while (v15);
    }

    [a1[6] fulfillWithValue:v37];
    v6 = 0;
    v5 = v34;
  }

  else
  {
    v26 = a1;
    v27 = objc_autoreleasePoolPush();
    v28 = v26[4];
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      v31 = [v26[5] allKeys];
      *buf = 138543618;
      v44 = v30;
      v45 = 2112;
      v46 = v31;
      _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_ERROR, "%{public}@Did not fetch any participants using lookup infos %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v27);
    v32 = v26[6];
    v33 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [v32 rejectWithError:v33];
  }
}

- (id)_removeParticipant:(id)participant share:(id)share
{
  v67 = *MEMORY[0x277D85DE8];
  participantCopy = participant;
  shareCopy = share;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v64 = v11;
    v65 = 2112;
    v66 = participantCopy;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Removing participant %@ from share", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  participants = [shareCopy participants];
  v58 = MEMORY[0x277D85DD0];
  v59 = 3221225472;
  v60 = __57__HMDCoreDataCloudShareService__removeParticipant_share___block_invoke;
  v61 = &unk_27866F378;
  v13 = participantCopy;
  v62 = v13;
  v14 = [participants na_firstObjectPassingTest:&v58];

  if (!v14)
  {
    v24 = objc_autoreleasePoolPush();
    v25 = selfCopy;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543362;
      v64 = v27;
      _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_INFO, "%{public}@Not removing participant from share: No equal participant exists on the share", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v24);
    v28 = [MEMORY[0x277D0F7C0] futureWithValue:shareCopy];
    goto LABEL_20;
  }

  if ([v14 role] == 1)
  {
    v15 = objc_autoreleasePoolPush();
    v16 = selfCopy;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543362;
      v64 = v18;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: Cannot remove participant from share: Cannot remove the owner from a share", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
    v19 = [[HMDAssertionLogEvent alloc] initWithReason:@"Cannot remove participant from share: Cannot remove the owner from a share"];
    v20 = +[HMDMetricsManager sharedLogEventSubmitter];
    [v20 submitLogEvent:v19];

    v21 = MEMORY[0x277D0F7C0];
    v22 = MEMORY[0x277CCA9B8];
    v23 = @"Cannot remove the owner from a share";
LABEL_15:
    v35 = [v22 hmfErrorWithCode:5 reason:v23];
    v36 = [v21 futureWithError:v35];

    goto LABEL_21;
  }

  if ([v14 isCurrentUser])
  {
    v29 = objc_autoreleasePoolPush();
    v30 = selfCopy;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
    {
      v32 = HMFGetLogIdentifier();
      *buf = 138543362;
      v64 = v32;
      _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: Cannot remove participant from share: Cannot remove the current user from the share", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v29);
    v33 = [[HMDAssertionLogEvent alloc] initWithReason:@"Cannot remove participant from share: Cannot remove the current user from the share"];
    v34 = +[HMDMetricsManager sharedLogEventSubmitter];
    [v34 submitLogEvent:v33];

    v21 = MEMORY[0x277D0F7C0];
    v22 = MEMORY[0x277CCA9B8];
    v23 = @"Cannot remove the current user from the share";
    goto LABEL_15;
  }

  currentUserParticipant = [shareCopy currentUserParticipant];
  if ([currentUserParticipant role] == 1)
  {

LABEL_19:
    [shareCopy removeParticipant:v14];
    v28 = [(HMDCoreDataCloudShareService *)selfCopy _pushUpdatedShare:shareCopy];
LABEL_20:
    v36 = v28;
    goto LABEL_21;
  }

  currentUserParticipant2 = [shareCopy currentUserParticipant];
  role = [currentUserParticipant2 role];

  if (role == 2)
  {
    goto LABEL_19;
  }

  v41 = objc_autoreleasePoolPush();
  v42 = selfCopy;
  v43 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v43, OS_LOG_TYPE_FAULT))
  {
    v44 = HMFGetLogIdentifier();
    currentUserParticipant3 = [shareCopy currentUserParticipant];
    role2 = [currentUserParticipant3 role];
    *buf = 138543618;
    v64 = v44;
    v65 = 2048;
    v66 = role2;
    _os_log_impl(&dword_229538000, v43, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: Current user participant with non-owner role %ld cannot remove participants from a share", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v41);
  v47 = [HMDAssertionLogEvent alloc];
  currentUserParticipant4 = [shareCopy currentUserParticipant];
  role3 = [currentUserParticipant4 role];
  v50 = [(HMDAssertionLogEvent *)v47 initWithReason:@"Current user participant with non-owner role %ld cannot remove participants from a share", role3, v58, v59, v60, v61];

  v51 = +[HMDMetricsManager sharedLogEventSubmitter];
  [v51 submitLogEvent:v50];

  v52 = MEMORY[0x277D0F7C0];
  v53 = MEMORY[0x277CCA9B8];
  v54 = MEMORY[0x277CCACA8];
  currentUserParticipant5 = [shareCopy currentUserParticipant];
  v56 = [v54 stringWithFormat:@"Current user participant with non-owner role %ld cannot remove participants from a share", objc_msgSend(currentUserParticipant5, "role")];
  v57 = [v53 hmfErrorWithCode:5 reason:v56];
  v36 = [v52 futureWithError:v57];

LABEL_21:

  return v36;
}

- (id)_addParticipant:(id)participant share:(id)share
{
  v18 = *MEMORY[0x277D85DE8];
  participantCopy = participant;
  shareCopy = share;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v14 = 138543618;
    v15 = v11;
    v16 = 2112;
    v17 = participantCopy;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Adding participant %@ to share", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  [shareCopy addParticipant:participantCopy];
  v12 = [(HMDCoreDataCloudShareService *)selfCopy _pushUpdatedShare:shareCopy];

  return v12;
}

- (id)_auditUsersForRevokedAccessWithAccountHandles:(id)handles share:(id)share
{
  handlesCopy = handles;
  shareCopy = share;
  if ([handlesCopy count])
  {
    v23[0] = 0;
    v23[1] = v23;
    v23[2] = 0x3032000000;
    v23[3] = __Block_byref_object_copy__10242;
    v23[4] = __Block_byref_object_dispose__10243;
    v24 = 0;
    recordID = [shareCopy recordID];
    v9 = [(HMDCoreDataCloudShareService *)self fetchShareWithRecordID:recordID];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __84__HMDCoreDataCloudShareService__auditUsersForRevokedAccessWithAccountHandles_share___block_invoke;
    v20[3] = &unk_27866F240;
    v22 = v23;
    v20[4] = self;
    v10 = handlesCopy;
    v21 = v10;
    v11 = [v9 then:v20];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __84__HMDCoreDataCloudShareService__auditUsersForRevokedAccessWithAccountHandles_share___block_invoke_2;
    v16[3] = &unk_27866F350;
    selfCopy = self;
    v19 = v23;
    v17 = v10;
    v12 = [v11 then:v16];

    _Block_object_dispose(v23, 8);
  }

  else
  {
    v13 = MEMORY[0x277D0F7C0];
    v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    v12 = [v13 futureWithError:v14];
  }

  return v12;
}

uint64_t __84__HMDCoreDataCloudShareService__auditUsersForRevokedAccessWithAccountHandles_share___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  v5 = [*(a1 + 32) _fetchParticipantsForAccountHandles:*(a1 + 40)];
  if (v5)
  {
    v6 = v5;

    return 3;
  }

  else
  {
    v8 = _HMFPreconditionFailure();
    return __84__HMDCoreDataCloudShareService__auditUsersForRevokedAccessWithAccountHandles_share___block_invoke_2(v8, v9);
  }
}

uint64_t __84__HMDCoreDataCloudShareService__auditUsersForRevokedAccessWithAccountHandles_share___block_invoke_2(uint64_t a1, void *a2)
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = MEMORY[0x277CBEB18];
  v5 = [*(a1 + 32) count];
  v6 = v4;
  v7 = v3;
  v26 = [v6 arrayWithCapacity:v5];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = [v3 allKeys];
  v8 = [obj countByEnumeratingWithState:&v28 objects:v38 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v29;
    *&v9 = 138543874;
    v24 = v9;
    v25 = v3;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v29 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v28 + 1) + 8 * i);
        v14 = [v7 objectForKeyedSubscript:{v13, v24}];
        v15 = [*(*(*(a1 + 48) + 8) + 40) participants];
        v16 = [v15 containsObject:v14];

        if ((v16 & 1) == 0)
        {
          v17 = v11;
          v18 = objc_autoreleasePoolPush();
          v19 = *(a1 + 40);
          v20 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            v21 = HMFGetLogIdentifier();
            v22 = *(*(*(a1 + 48) + 8) + 40);
            *buf = v24;
            v33 = v21;
            v34 = 2112;
            v35 = v14;
            v36 = 2112;
            v37 = v22;
            _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@Participant %@ no longer found on share %@", buf, 0x20u);

            v7 = v25;
          }

          objc_autoreleasePoolPop(v18);
          [v26 addObject:v13];
          v11 = v17;
        }
      }

      v10 = [obj countByEnumeratingWithState:&v28 objects:v38 count:16];
    }

    while (v10);
  }

  return 1;
}

- (id)_revokeAccessForUserWithAccountHandle:(id)handle share:(id)share
{
  handleCopy = handle;
  shareCopy = share;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x3032000000;
  v26[3] = __Block_byref_object_copy__10242;
  v26[4] = __Block_byref_object_dispose__10243;
  v27 = 0;
  recordID = [shareCopy recordID];
  v9 = [(HMDCoreDataCloudShareService *)self fetchShareWithRecordID:recordID];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __76__HMDCoreDataCloudShareService__revokeAccessForUserWithAccountHandle_share___block_invoke;
  v23[3] = &unk_27866F240;
  v25 = v26;
  v23[4] = self;
  v10 = handleCopy;
  v24 = v10;
  v11 = [v9 then:v23];
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __76__HMDCoreDataCloudShareService__revokeAccessForUserWithAccountHandle_share___block_invoke_2;
  v19 = &unk_27866F308;
  v22 = v26;
  selfCopy = self;
  v12 = shareCopy;
  v21 = v12;
  v13 = [v11 then:&v16];
  v14 = [v13 then:{&__block_literal_global_42, v16, v17, v18, v19, selfCopy}];

  _Block_object_dispose(v26, 8);

  return v14;
}

uint64_t __76__HMDCoreDataCloudShareService__revokeAccessForUserWithAccountHandle_share___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  v5 = [*(a1 + 32) _fetchParticipantForAccountHandle:*(a1 + 40)];
  if (v5)
  {
    v6 = v5;

    return 3;
  }

  else
  {
    v8 = _HMFPreconditionFailure();
    return __76__HMDCoreDataCloudShareService__revokeAccessForUserWithAccountHandle_share___block_invoke_2(v8, v9);
  }
}

uint64_t __76__HMDCoreDataCloudShareService__revokeAccessForUserWithAccountHandle_share___block_invoke_2(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(*(*(a1 + 48) + 8) + 40) participants];
  v5 = [v4 containsObject:v3];

  if (v5)
  {
    v6 = [*(a1 + 32) _removeParticipant:v3 share:*(*(*(a1 + 48) + 8) + 40)];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = *(a1 + 40);
      v15 = 138543874;
      v16 = v10;
      v17 = 2112;
      v18 = v3;
      v19 = 2112;
      v20 = v11;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@No matching participant %@ found on share %@ to revoke", &v15, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    v6 = [MEMORY[0x277D0F7C0] futureWithValue:*(*(*(a1 + 48) + 8) + 40)];
  }

  v12 = v6;
  if (!v12)
  {
    _HMFPreconditionFailure();
  }

  v13 = v12;

  return 3;
}

- (id)_grantAccessForUserWithAccountHandle:(id)handle share:(id)share logEventBuilder:(id)builder
{
  v43 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  shareCopy = share;
  builderCopy = builder;
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543874;
    *&buf[4] = v14;
    *&buf[12] = 2112;
    *&buf[14] = handleCopy;
    *&buf[22] = 2112;
    v40 = shareCopy;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Granting access for user with account handle %@ to share: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v11);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v40 = __Block_byref_object_copy__10242;
  v41 = __Block_byref_object_dispose__10243;
  v42 = 0;
  v37[0] = 0;
  v37[1] = v37;
  v37[2] = 0x3032000000;
  v37[3] = __Block_byref_object_copy__10242;
  v37[4] = __Block_byref_object_dispose__10243;
  v38 = 0;
  [builderCopy markAddUserBegin];
  recordID = [shareCopy recordID];
  v16 = [(HMDCoreDataCloudShareService *)selfCopy fetchShareWithRecordID:recordID];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __91__HMDCoreDataCloudShareService__grantAccessForUserWithAccountHandle_share_logEventBuilder___block_invoke;
  v34[3] = &unk_27866F240;
  v36 = buf;
  v34[4] = selfCopy;
  v17 = handleCopy;
  v35 = v17;
  v18 = [v16 then:v34];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __91__HMDCoreDataCloudShareService__grantAccessForUserWithAccountHandle_share_logEventBuilder___block_invoke_2;
  v33[3] = &unk_27866F2B8;
  v33[5] = v37;
  v33[6] = buf;
  v33[4] = selfCopy;
  v19 = [v18 then:v33];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __91__HMDCoreDataCloudShareService__grantAccessForUserWithAccountHandle_share_logEventBuilder___block_invoke_2_36;
  v29[3] = &unk_27866F2E0;
  v32 = v37;
  v29[4] = selfCopy;
  v30 = builderCopy;
  v31 = v17;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __91__HMDCoreDataCloudShareService__grantAccessForUserWithAccountHandle_share_logEventBuilder___block_invoke_38;
  v25[3] = &unk_2786864A0;
  v25[4] = selfCopy;
  v20 = v31;
  v26 = v20;
  v21 = shareCopy;
  v27 = v21;
  v22 = v30;
  v28 = v22;
  v23 = [v19 then:v29 orRecover:v25];

  _Block_object_dispose(v37, 8);
  _Block_object_dispose(buf, 8);

  return v23;
}

uint64_t __91__HMDCoreDataCloudShareService__grantAccessForUserWithAccountHandle_share_logEventBuilder___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  v5 = [*(a1 + 32) _fetchParticipantForAccountHandle:*(a1 + 40)];
  if (v5)
  {
    v6 = v5;

    return 3;
  }

  else
  {
    v8 = _HMFPreconditionFailure();
    return __91__HMDCoreDataCloudShareService__grantAccessForUserWithAccountHandle_share_logEventBuilder___block_invoke_2(v8, v9);
  }
}

uint64_t __91__HMDCoreDataCloudShareService__grantAccessForUserWithAccountHandle_share_logEventBuilder___block_invoke_2(uint64_t a1, void *a2)
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v5 = [*(*(*(a1 + 48) + 8) + 40) owner];
  v6 = [v5 isEqual:*(*(*(a1 + 40) + 8) + 40)];

  if (!v6)
  {
    v17 = [*(*(*(a1 + 48) + 8) + 40) participants];
    v18 = [v17 containsObject:*(*(*(a1 + 40) + 8) + 40)];

    if (v18)
    {
      v19 = objc_autoreleasePoolPush();
      v20 = *(a1 + 32);
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = HMFGetLogIdentifier();
        v23 = *(*(*(a1 + 40) + 8) + 40);
        *buf = 138543618;
        v34 = v22;
        v35 = 2112;
        v36 = v23;
        _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Removing and re-adding participant because fetched share already contains equivalent participant: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v19);
      v24 = [*(a1 + 32) _removeParticipant:*(*(*(a1 + 40) + 8) + 40) share:*(*(*(a1 + 48) + 8) + 40)];
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __91__HMDCoreDataCloudShareService__grantAccessForUserWithAccountHandle_share_logEventBuilder___block_invoke_35;
      v31[3] = &unk_27866F290;
      v32 = *(a1 + 32);
      v25 = [v24 then:v31];
      if (v25)
      {
        v26 = v25;

LABEL_13:
        v29 = 3;
        goto LABEL_16;
      }
    }

    else
    {
      v27 = [*(a1 + 32) _addParticipant:*(*(*(a1 + 40) + 8) + 40) share:*(*(*(a1 + 48) + 8) + 40)];
      if (v27)
      {
        v28 = v27;

        goto LABEL_13;
      }
    }

    _HMFPreconditionFailure();
  }

  v7 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:3511];
  v8 = objc_autoreleasePoolPush();
  v9 = *(a1 + 32);
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [*(*(*(a1 + 48) + 8) + 40) owner];
    v13 = *(*(*(a1 + 40) + 8) + 40);
    *buf = 138544130;
    v34 = v11;
    v35 = 2112;
    v36 = v12;
    v37 = 2112;
    v38 = v13;
    v39 = 2112;
    v40 = v7;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Refusing to grant access. Owner is same as participant. Owner: %@ Participant: %@. error: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v8);
  v14 = v7;
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
    objc_claimAutoreleasedReturnValue();
  }

  v29 = 2;
LABEL_16:

  return v29;
}

uint64_t __91__HMDCoreDataCloudShareService__grantAccessForUserWithAccountHandle_share_logEventBuilder___block_invoke_2_36(uint64_t a1, void *a2)
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v4 = [v3 participants];
  v5 = [v4 countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v32;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v32 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v31 + 1) + 8 * i);
        if ([v9 isEqual:*(*(*(a1 + 56) + 8) + 40)])
        {
          v18 = [v9 invitationToken];

          v19 = objc_autoreleasePoolPush();
          v20 = *(a1 + 32);
          v21 = HMFGetOSLogHandle();
          v22 = v21;
          if (v18)
          {
            if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
            {
              v23 = HMFGetLogIdentifier();
              v24 = *(a1 + 48);
              *buf = 138543618;
              v36 = v23;
              v37 = 2112;
              v38 = v24;
              _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@Successfully added user with handle %@ to share", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v19);
            [*(a1 + 40) markAddUserEnd];
            v25 = [HMDCoreDataCloudShareInvitation alloc];
            v16 = [v3 URL];
            v26 = [v9 invitationToken];
            [(HMDCoreDataCloudShareInvitation *)v25 initWithURL:v16 token:v26];
            v17 = 1;
          }

          else
          {
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              v27 = HMFGetLogIdentifier();
              *buf = 138543362;
              v36 = v27;
              _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Unexpected nil invitation token after adding user as new participant", buf, 0xCu);
            }

            objc_autoreleasePoolPop(v19);
            v28 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:3504];
            [*(a1 + 40) markError:v28];
            v29 = v28;
            if (v29)
            {
              v26 = v29;
              v17 = 2;
              v16 = v26;
            }

            else
            {
              [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
              objc_claimAutoreleasedReturnValue();
              v26 = 0;
              v16 = 0;
              v17 = 2;
            }
          }

          goto LABEL_24;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v31 objects:v39 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = objc_autoreleasePoolPush();
  v11 = *(a1 + 32);
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v13 = HMFGetLogIdentifier();
    *buf = 138543362;
    v36 = v13;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Unexpected no matching participant after adding user as a new participant", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v10);
  v14 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:3505];
  [*(a1 + 40) markError:v14];
  v15 = v14;
  if (v15)
  {
    v16 = v15;
    v17 = 2;
    v4 = v16;
  }

  else
  {
    [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
    objc_claimAutoreleasedReturnValue();
    v16 = 0;
    v4 = 0;
    v17 = 2;
  }

LABEL_24:

  return v17;
}

uint64_t __91__HMDCoreDataCloudShareService__grantAccessForUserWithAccountHandle_share_logEventBuilder___block_invoke_38(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 hmd_isRecordConflictCKError];
  v5 = objc_autoreleasePoolPush();
  v6 = *(a1 + 32);
  v7 = HMFGetOSLogHandle();
  v8 = v7;
  if (v4)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v10 = [v3 hmd_conciseCKError];
      v11 = [v10 shortDescription];
      v19 = 138543618;
      v20 = v9;
      v21 = 2114;
      v22 = v11;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Failed to save share, need to resolve conflict, %{public}@", &v19, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v12 = [*(a1 + 32) _grantAccessForUserWithAccountHandle:*(a1 + 40) share:*(a1 + 48) logEventBuilder:*(a1 + 56)];
    if (!v12)
    {
      _HMFPreconditionFailure();
    }

    v13 = v12;

    v14 = 3;
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v19 = 138543618;
      v20 = v15;
      v21 = 2114;
      v22 = v3;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to add participant with %{public}@", &v19, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v16 = v3;
    v13 = v16;
    if (v16)
    {
      v17 = v16;
    }

    else
    {
      [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
      objc_claimAutoreleasedReturnValue();
    }

    v14 = 2;
  }

  return v14;
}

uint64_t __91__HMDCoreDataCloudShareService__grantAccessForUserWithAccountHandle_share_logEventBuilder___block_invoke_35(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _addParticipant:*(*(*(a1 + 40) + 8) + 40) share:v3];
  if (v4)
  {
    v5 = v4;

    return 3;
  }

  else
  {
    v7 = _HMFPreconditionFailure();
    return [(HMDCoreDataCloudShareService *)v7 acceptShareInvitation:v8, v9];
  }
}

- (id)acceptShareInvitation:(id)invitation
{
  invitationCopy = invitation;
  v5 = MEMORY[0x277D0F7C0];
  managedObjectContext = self->_managedObjectContext;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __54__HMDCoreDataCloudShareService_acceptShareInvitation___block_invoke;
  v10[3] = &unk_2786898D8;
  v10[4] = self;
  v11 = invitationCopy;
  v7 = invitationCopy;
  v8 = [v5 inContext:managedObjectContext perform:v10];

  return v8;
}

uint64_t __54__HMDCoreDataCloudShareService_acceptShareInvitation___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _acceptShareInvitation:*(a1 + 40)];
  if (v1)
  {
    v2 = v1;

    return 3;
  }

  else
  {
    v4 = _HMFPreconditionFailure();
    return [(HMDCoreDataCloudShareService *)v4 validateGrantingAccessForUserWithAccountHandle:v5 share:v6, v7];
  }
}

- (id)validateGrantingAccessForUserWithAccountHandle:(id)handle share:(id)share
{
  v32 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  shareCopy = share;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543874;
    *&buf[4] = v11;
    *&buf[12] = 2112;
    *&buf[14] = handleCopy;
    *&buf[22] = 2112;
    v29 = shareCopy;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Validation granting access for user with account handle %@ to share: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v29 = __Block_byref_object_copy__10242;
  v30 = __Block_byref_object_dispose__10243;
  v31 = 0;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x3032000000;
  v26[3] = __Block_byref_object_copy__10242;
  v26[4] = __Block_byref_object_dispose__10243;
  v27 = 0;
  recordID = [shareCopy recordID];
  v13 = [(HMDCoreDataCloudShareService *)selfCopy fetchShareWithRecordID:recordID];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __85__HMDCoreDataCloudShareService_validateGrantingAccessForUserWithAccountHandle_share___block_invoke;
  v23[3] = &unk_27866F240;
  v25 = buf;
  v23[4] = selfCopy;
  v14 = handleCopy;
  v24 = v14;
  v15 = [v13 then:v23];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __85__HMDCoreDataCloudShareService_validateGrantingAccessForUserWithAccountHandle_share___block_invoke_2;
  v19[3] = &unk_27866F268;
  v21 = v26;
  v22 = buf;
  v19[4] = selfCopy;
  v16 = v14;
  v20 = v16;
  v17 = [v15 then:v19];

  _Block_object_dispose(v26, 8);
  _Block_object_dispose(buf, 8);

  return v17;
}

uint64_t __85__HMDCoreDataCloudShareService_validateGrantingAccessForUserWithAccountHandle_share___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  v5 = [*(a1 + 32) _fetchParticipantForAccountHandle:*(a1 + 40)];
  if (v5)
  {
    v6 = v5;

    return 3;
  }

  else
  {
    v8 = _HMFPreconditionFailure();
    return __85__HMDCoreDataCloudShareService_validateGrantingAccessForUserWithAccountHandle_share___block_invoke_2(v8, v9);
  }
}

uint64_t __85__HMDCoreDataCloudShareService_validateGrantingAccessForUserWithAccountHandle_share___block_invoke_2(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  v5 = [*(*(*(a1 + 56) + 8) + 40) owner];
  v6 = [v5 isEqual:*(*(*(a1 + 48) + 8) + 40)];

  if (v6)
  {
    v7 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:3511];
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [*(*(*(a1 + 56) + 8) + 40) owner];
      v13 = *(*(*(a1 + 48) + 8) + 40);
      v24 = 138544130;
      v25 = v11;
      v26 = 2112;
      v27 = v12;
      v28 = 2112;
      v29 = v13;
      v30 = 2112;
      v31 = v7;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Validation failed. Share owner is same as participant. Owner: %@ Participant: %@. error: %@", &v24, 0x2Au);
    }

    objc_autoreleasePoolPop(v8);
    v14 = v7;
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
      objc_claimAutoreleasedReturnValue();
    }

    v22 = 2;
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    v18 = *(a1 + 32);
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = HMFGetLogIdentifier();
      v21 = *(a1 + 40);
      v24 = 138543618;
      v25 = v20;
      v26 = 2112;
      v27 = v21;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@Validated %@", &v24, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    v22 = 1;
  }

  return v22;
}

- (id)_acceptShareInvitation:(id)invitation
{
  v4 = [(HMDCoreDataCloudShareService *)self _fetchShareMetadataForInvitation:invitation];
  managedObjectContext = self->_managedObjectContext;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __55__HMDCoreDataCloudShareService__acceptShareInvitation___block_invoke;
  v9[3] = &unk_27866F218;
  v9[4] = self;
  v6 = [v4 inContext:managedObjectContext then:v9];
  v7 = [v6 then:&__block_literal_global_32_10260];

  return v7;
}

uint64_t __55__HMDCoreDataCloudShareService__acceptShareInvitation___block_invoke(uint64_t a1, void *a2)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v10[0] = v3;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v6 = [*(a1 + 32) sharedStore];
  v7 = [v4 acceptShareInvitationsFromMetadata:v5 intoPersistentStore:v6];
  if (!v7)
  {
    _HMFPreconditionFailure();
  }

  v8 = v7;

  return 3;
}

uint64_t __55__HMDCoreDataCloudShareService__acceptShareInvitation___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 firstObject];
  [v2 share];
  objc_claimAutoreleasedReturnValue();

  return 1;
}

- (id)acceptShareInvitationsFromMetadata:(id)metadata intoPersistentStore:(id)store
{
  metadataCopy = metadata;
  storeCopy = store;
  v16 = 0;
  v8 = [MEMORY[0x277D0F7C0] futureWithPromise:&v16];
  objc_initWeak(&location, self);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __87__HMDCoreDataCloudShareService_acceptShareInvitationsFromMetadata_intoPersistentStore___block_invoke;
  v11[3] = &unk_278689578;
  objc_copyWeak(&v14, &location);
  v12 = v16;
  v9 = metadataCopy;
  v13 = v9;
  [(HMDCoreDataCloudShareService *)self _acceptShareInvitationsFromMetadata:v9 intoPersistentStore:storeCopy completion:v11];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);

  return v8;
}

void __87__HMDCoreDataCloudShareService_acceptShareInvitationsFromMetadata_intoPersistentStore___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (v6)
  {
    [*(a1 + 32) rejectWithError:v6];
  }

  else if (v5)
  {
    [*(a1 + 32) fulfillWithValue:v5];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = WeakRetained;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = *(a1 + 40);
      v15 = 138543618;
      v16 = v11;
      v17 = 2112;
      v18 = v12;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to accept share, no metadata returned for %@", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v13 = *(a1 + 32);
    v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    [v13 rejectWithError:v14];
  }
}

- (void)_acceptShareInvitationsFromMetadata:(id)metadata intoPersistentStore:(id)store completion:(id)completion
{
  v28 = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  storeCopy = store;
  completionCopy = completion;
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543618;
    v25 = v14;
    v26 = 2112;
    v27 = metadataCopy;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Accepting share invitations from metadata: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  objc_initWeak(buf, selfCopy);
  container = [(HMDCoreDataCloudShareService *)selfCopy container];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __99__HMDCoreDataCloudShareService__acceptShareInvitationsFromMetadata_intoPersistentStore_completion___block_invoke;
  v19[3] = &unk_27866F1F0;
  objc_copyWeak(&v23, buf);
  v16 = completionCopy;
  v22 = v16;
  v17 = metadataCopy;
  v20 = v17;
  v18 = storeCopy;
  v21 = v18;
  [container acceptShareInvitationsFromMetadata:v17 intoPersistentStore:v18 completion:v19];

  objc_destroyWeak(&v23);
  objc_destroyWeak(buf);
}

void __99__HMDCoreDataCloudShareService__acceptShareInvitationsFromMetadata_intoPersistentStore_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (!WeakRetained)
  {
    v16 = objc_autoreleasePoolPush();
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543362;
      v31 = v18;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Lost self while accepting share invitations", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v16);
    v19 = _Block_copy(*(a1 + 48));
    v20 = v19;
    if (!v19)
    {
      goto LABEL_14;
    }

    v21 = v19[2];
    goto LABEL_13;
  }

  if (!v6)
  {
    v22 = _Block_copy(*(a1 + 48));
    v20 = v22;
    if (!v22)
    {
LABEL_14:

      goto LABEL_21;
    }

    v21 = v22[2];
LABEL_13:
    v21();
    goto LABEL_14;
  }

  v8 = [v6 hmd_retryAfterCKError];
  v9 = objc_autoreleasePoolPush();
  v10 = WeakRetained;
  v11 = HMFGetOSLogHandle();
  v12 = v11;
  if (v8)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543874;
      v31 = v13;
      v32 = 2112;
      v33 = v8;
      v34 = 2114;
      v35 = v6;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Retrying with %@, failed to accept share invitation due to %{public}@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    [v8 doubleValue];
    v15 = dispatch_time(0, (v14 * 1000000000.0));
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __99__HMDCoreDataCloudShareService__acceptShareInvitationsFromMetadata_intoPersistentStore_completion___block_invoke_25;
    v26[3] = &unk_278689AB8;
    v26[4] = v10;
    v27 = *(a1 + 32);
    v28 = *(a1 + 40);
    v29 = *(a1 + 48);
    dispatch_after(v15, MEMORY[0x277D85CD0], v26);
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543618;
      v31 = v23;
      v32 = 2114;
      v33 = v6;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to accept share invitation due to %{public}@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    v24 = _Block_copy(*(a1 + 48));
    v25 = v24;
    if (v24)
    {
      (*(v24 + 2))(v24, 0, v6);
    }
  }

LABEL_21:
}

- (id)auditUsersForRevokedAccessWithAccountHandles:(id)handles share:(id)share
{
  handlesCopy = handles;
  shareCopy = share;
  v8 = MEMORY[0x277D0F7C0];
  managedObjectContext = self->_managedObjectContext;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __83__HMDCoreDataCloudShareService_auditUsersForRevokedAccessWithAccountHandles_share___block_invoke;
  v14[3] = &unk_278686828;
  v14[4] = self;
  v15 = handlesCopy;
  v16 = shareCopy;
  v10 = shareCopy;
  v11 = handlesCopy;
  v12 = [v8 inContext:managedObjectContext perform:v14];

  return v12;
}

uint64_t __83__HMDCoreDataCloudShareService_auditUsersForRevokedAccessWithAccountHandles_share___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _auditUsersForRevokedAccessWithAccountHandles:*(a1 + 40) share:*(a1 + 48)];
  if (v1)
  {
    v2 = v1;

    return 3;
  }

  else
  {
    v4 = _HMFPreconditionFailure();
    return [(HMDCoreDataCloudShareService *)v4 revokeAccessForUserWithAccountHandle:v5 share:v6, v7];
  }
}

- (id)revokeAccessForUserWithAccountHandle:(id)handle share:(id)share
{
  handleCopy = handle;
  shareCopy = share;
  v8 = MEMORY[0x277D0F7C0];
  managedObjectContext = self->_managedObjectContext;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __75__HMDCoreDataCloudShareService_revokeAccessForUserWithAccountHandle_share___block_invoke;
  v14[3] = &unk_278686828;
  v14[4] = self;
  v15 = handleCopy;
  v16 = shareCopy;
  v10 = shareCopy;
  v11 = handleCopy;
  v12 = [v8 inContext:managedObjectContext perform:v14];

  return v12;
}

uint64_t __75__HMDCoreDataCloudShareService_revokeAccessForUserWithAccountHandle_share___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _revokeAccessForUserWithAccountHandle:*(a1 + 40) share:*(a1 + 48)];
  if (v1)
  {
    v2 = v1;

    return 3;
  }

  else
  {
    v4 = _HMFPreconditionFailure();
    return [(HMDCoreDataCloudShareService *)v4 grantAccessForUserWithAccountHandle:v5 share:v6 logEventBuilder:v7, v8];
  }
}

- (id)grantAccessForUserWithAccountHandle:(id)handle share:(id)share logEventBuilder:(id)builder
{
  handleCopy = handle;
  shareCopy = share;
  builderCopy = builder;
  v11 = MEMORY[0x277D0F7C0];
  managedObjectContext = self->_managedObjectContext;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __90__HMDCoreDataCloudShareService_grantAccessForUserWithAccountHandle_share_logEventBuilder___block_invoke;
  v18[3] = &unk_2786886F0;
  v18[4] = self;
  v19 = handleCopy;
  v20 = shareCopy;
  v21 = builderCopy;
  v13 = builderCopy;
  v14 = shareCopy;
  v15 = handleCopy;
  v16 = [v11 inContext:managedObjectContext perform:v18];

  return v16;
}

uint64_t __90__HMDCoreDataCloudShareService_grantAccessForUserWithAccountHandle_share_logEventBuilder___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _grantAccessForUserWithAccountHandle:*(a1 + 40) share:*(a1 + 48) logEventBuilder:*(a1 + 56)];
  if (v1)
  {
    v2 = v1;

    return 3;
  }

  else
  {
    v4 = _HMFPreconditionFailure();
    return [(HMDCoreDataCloudShareService *)v4 ckContainer];
  }
}

- (id)ckContainer
{
  os_unfair_lock_lock_with_options();
  ckContainer = self->_ckContainer;
  if (!ckContainer)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBC230]);
    [v4 setUseZoneWidePCS:1];
    v5 = [MEMORY[0x277CBC218] containerIDForContainerIdentifier:@"com.apple.homekit.config"];
    v6 = [objc_alloc(MEMORY[0x277CBC218]) initWithContainerID:v5 options:v4];
    v7 = self->_ckContainer;
    self->_ckContainer = v6;

    ckContainer = self->_ckContainer;
  }

  v8 = ckContainer;
  os_unfair_lock_unlock(&self->_lock);

  return v8;
}

- (HMDCoreDataCloudShareService)initWithContainer:(id)container sharedStore:(id)store privateStore:(id)privateStore moc:(id)moc
{
  containerCopy = container;
  storeCopy = store;
  privateStoreCopy = privateStore;
  mocCopy = moc;
  v18.receiver = self;
  v18.super_class = HMDCoreDataCloudShareService;
  v15 = [(HMDCoreDataCloudShareService *)&v18 init];
  v16 = v15;
  if (v15)
  {
    v15->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v15->_container, container);
    objc_storeStrong(&v16->_sharedStore, store);
    objc_storeStrong(&v16->_privateStore, privateStore);
    objc_storeStrong(&v16->_managedObjectContext, moc);
  }

  return v16;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_10273 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_10273, &__block_literal_global_10274);
  }

  v3 = logCategory__hmf_once_v1_10275;

  return v3;
}

void __43__HMDCoreDataCloudShareService_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v1_10275;
  logCategory__hmf_once_v1_10275 = v0;
}

@end