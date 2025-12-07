@interface HDCloudSyncShareParticipantManagerTaskServer
- (void)remote_fetchAllShareParticipantEmailAddressesForSharingType:(unint64_t)type completion:(id)completion;
- (void)remote_fetchSharingParticipantStatus:(id)status;
- (void)remote_revokeAccessForAllShareParticipantsForSharingType:(unint64_t)type completion:(id)completion;
- (void)remote_tearDownHealthSharingForProfile:(id)profile completion:(id)completion;
@end

@implementation HDCloudSyncShareParticipantManagerTaskServer

- (void)remote_fetchSharingParticipantStatus:(id)status
{
  v28 = *MEMORY[0x277D85DE8];
  statusCopy = status;
  profile = [(HDStandardTaskServer *)self profile];
  v6 = HDTinkerProtectedKeyValueDomainWithProfile(profile);

  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__121;
  v22 = __Block_byref_object_dispose__121;
  v23 = 0;
  profile2 = [(HDStandardTaskServer *)self profile];
  database = [profile2 database];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __85__HDCloudSyncShareParticipantManagerTaskServer_remote_fetchSharingParticipantStatus___block_invoke;
  v14[3] = &unk_27861A418;
  v16 = &v18;
  v17 = 0;
  v9 = v6;
  v15 = v9;
  [database performHighPriorityTransactionsWithError:&v17 block:v14];
  v10 = v17;

  v11 = v19[5];
  if (v11)
  {
    integerValue = [v11 integerValue];
  }

  else
  {
    _HKInitializeLogging();
    v13 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      selfCopy = self;
      v26 = 2114;
      v27 = v10;
      _os_log_error_impl(&dword_228986000, v13, OS_LOG_TYPE_ERROR, "%{public}@ Failed to fetch participant share status. Error: %{public}@", buf, 0x16u);
    }

    integerValue = 0;
  }

  statusCopy[2](statusCopy, integerValue);

  _Block_object_dispose(&v18, 8);
}

uint64_t __85__HDCloudSyncShareParticipantManagerTaskServer_remote_fetchSharingParticipantStatus___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) numberForKey:@"HDCloudSyncSharingStatusKey" error:a2];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return 1;
}

- (void)remote_fetchAllShareParticipantEmailAddressesForSharingType:(unint64_t)type completion:(id)completion
{
  v21 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  _HKInitializeLogging();
  v8 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = NSStringFromSelector(a2);
    *buf = 138543618;
    selfCopy = self;
    v19 = 2114;
    v20 = v10;
    _os_log_impl(&dword_228986000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@", buf, 0x16u);
  }

  profile = [(HDStandardTaskServer *)self profile];
  cloudSyncManager = [profile cloudSyncManager];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __119__HDCloudSyncShareParticipantManagerTaskServer_remote_fetchAllShareParticipantEmailAddressesForSharingType_completion___block_invoke;
  v15[3] = &unk_27861B2F8;
  v15[4] = self;
  v16 = completionCopy;
  v13 = completionCopy;
  v14 = [cloudSyncManager fetchShareParticipantsForSharingType:type completion:v15];
}

void __119__HDCloudSyncShareParticipantManagerTaskServer_remote_fetchAllShareParticipantEmailAddressesForSharingType_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v45 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = v5;
  if (v4 || !v5)
  {
    v32 = v5;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v11 = [v4 countByEnumeratingWithState:&v34 objects:v44 count:16];
    if (v11)
    {
      v12 = v11;
      v10 = 0;
      v13 = *v35;
      v14 = 0x277CBE000uLL;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v35 != v13)
          {
            objc_enumerationMutation(v4);
          }

          v16 = *(*(&v34 + 1) + 8 * i);
          if ([v16 role] != 1)
          {
            if (!v10)
            {
              v10 = objc_alloc_init(*(v14 + 2904));
            }

            v17 = [v16 userIdentity];
            v18 = [v17 lookupInfo];
            v19 = [v18 emailAddress];

            if (v19)
            {
              v20 = [v16 userIdentity];
              v21 = [v20 lookupInfo];
              v22 = [v21 emailAddress];
              [v10 addObject:v22];
            }

            else
            {
              _HKInitializeLogging();
              v23 = *MEMORY[0x277CCC328];
              if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_FAULT))
              {
                v24 = *(a1 + 32);
                v25 = v23;
                v26 = [v16 userIdentity];
                v27 = [v26 lookupInfo];
                *buf = 138543874;
                v39 = v24;
                v14 = 0x277CBE000;
                v40 = 2114;
                v41 = v16;
                v42 = 2114;
                v43 = v27;
                _os_log_fault_impl(&dword_228986000, v25, OS_LOG_TYPE_FAULT, "%{public}@ Received nil email address for fetched share participant %{public}@ with lookup info %{public}@", buf, 0x20u);
              }
            }
          }
        }

        v12 = [v4 countByEnumeratingWithState:&v34 objects:v44 count:16];
      }

      while (v12);
    }

    else
    {
      v10 = 0;
    }

    v28 = *(a1 + 40);
    v29 = [v10 allObjects];
    (*(v28 + 16))(v28, v29, 0);

    v6 = v32;
  }

  else
  {
    _HKInitializeLogging();
    v7 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v31 = *(a1 + 32);
      *buf = 138543618;
      v39 = v31;
      v40 = 2114;
      v41 = v6;
      _os_log_error_impl(&dword_228986000, v7, OS_LOG_TYPE_ERROR, "%{public}@ Failed to fetch participants from cloud zones, error: %{public}@", buf, 0x16u);
    }

    v8 = [v6 hd_cloudKitErrorRequiringUserAction];
    v9 = *(a1 + 40);
    if (v8)
    {
      v10 = v8;
      (*(v9 + 16))(*(a1 + 40), 0, v8);
    }

    else
    {
      v30 = [v6 hk_sanitizedError];
      (*(v9 + 16))(v9, 0, v30);

      v10 = 0;
    }
  }
}

- (void)remote_revokeAccessForAllShareParticipantsForSharingType:(unint64_t)type completion:(id)completion
{
  v24 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  _HKInitializeLogging();
  v8 = MEMORY[0x277CCC328];
  v9 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = NSStringFromSelector(a2);
    v20 = 138543618;
    selfCopy2 = self;
    v22 = 2114;
    v23 = v11;
    _os_log_impl(&dword_228986000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@", &v20, 0x16u);
  }

  profile = [(HDStandardTaskServer *)self profile];
  profileType = [profile profileType];

  if (profileType == 1)
  {
    profile2 = [(HDStandardTaskServer *)self profile];
    cloudSyncManager = [profile2 cloudSyncManager];
    v16 = [cloudSyncManager removeAllParticipantsForSharingType:type completion:completionCopy];
  }

  else
  {
    _HKInitializeLogging();
    v17 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
    {
      v18 = v17;
      v19 = NSStringFromSelector(a2);
      v20 = 138543618;
      selfCopy2 = self;
      v22 = 2114;
      v23 = v19;
      _os_log_error_impl(&dword_228986000, v18, OS_LOG_TYPE_ERROR, "%{public}@ %{public}@ Called on non-primary profile. Abort.", &v20, 0x16u);
    }

    profile2 = [MEMORY[0x277CCA9B8] hk_error:127 class:objc_opt_class() selector:a2 format:@"Revoke access for all share participants called on non-primary profile."];
    completionCopy[2](completionCopy, 0, profile2);
  }
}

- (void)remote_tearDownHealthSharingForProfile:(id)profile completion:(id)completion
{
  v40 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  completionCopy = completion;
  _HKInitializeLogging();
  v9 = MEMORY[0x277CCC328];
  v10 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    v12 = NSStringFromSelector(a2);
    *buf = 138543874;
    selfCopy3 = self;
    v36 = 2114;
    v37 = v12;
    v38 = 2114;
    v39 = profileCopy;
    _os_log_impl(&dword_228986000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@ called for profile %{public}@", buf, 0x20u);
  }

  profile = [(HDStandardTaskServer *)self profile];
  profileType = [profile profileType];

  if (profileType == 1)
  {
    profile2 = [(HDStandardTaskServer *)self profile];
    daemon = [profile2 daemon];
    profileManager = [daemon profileManager];

    v18 = [profileManager profileForIdentifier:profileCopy];
    v19 = v18;
    if (v18)
    {
      if ([v18 profileType] != 1)
      {
        cloudSyncManager = [v19 cloudSyncManager];
        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = __98__HDCloudSyncShareParticipantManagerTaskServer_remote_tearDownHealthSharingForProfile_completion___block_invoke;
        v30[3] = &unk_278613150;
        v31 = profileManager;
        v32 = profileCopy;
        v33 = completionCopy;
        v25 = [cloudSyncManager leaveSharesWithCompletion:v30];

        v23 = v31;
        goto LABEL_15;
      }

      _HKInitializeLogging();
      v20 = *v9;
      if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
      {
        v28 = v20;
        v29 = NSStringFromSelector(a2);
        *buf = 138543618;
        selfCopy3 = self;
        v36 = 2114;
        v37 = v29;
        _os_log_error_impl(&dword_228986000, v28, OS_LOG_TYPE_ERROR, "%{public}@ %{public}@ Called for primary profile. Abort.", buf, 0x16u);
      }

      v21 = [MEMORY[0x277CCA9B8] hk_error:127 class:objc_opt_class() selector:a2 format:@"Tear down health sharing called for primary profile."];
    }

    else
    {
      v21 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:{@"No profile for identifier %@.", profileCopy}];
    }

    v23 = v21;
    (*(completionCopy + 2))(completionCopy, 0, v21);
LABEL_15:

    goto LABEL_16;
  }

  _HKInitializeLogging();
  v22 = *v9;
  if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
  {
    v26 = v22;
    v27 = NSStringFromSelector(a2);
    *buf = 138543618;
    selfCopy3 = self;
    v36 = 2114;
    v37 = v27;
    _os_log_error_impl(&dword_228986000, v26, OS_LOG_TYPE_ERROR, "%{public}@ %{public}@ Must be called on primary profile participant manager. Abort.", buf, 0x16u);
  }

  profileManager = [MEMORY[0x277CCA9B8] hk_error:127 class:objc_opt_class() selector:a2 format:@"Tear down health sharing not called on primary profile participant manager."];
  (*(completionCopy + 2))(completionCopy, 0, profileManager);
LABEL_16:
}

void __98__HDCloudSyncShareParticipantManagerTaskServer_remote_tearDownHealthSharingForProfile_completion___block_invoke(void *a1, int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v7 = a1[4];
    v8 = a1[5];
    v13 = 0;
    [v7 deleteProfile:v8 error:&v13];
    v9 = v13;
    (*(a1[6] + 16))();
  }

  else
  {
    v10 = [v5 hd_cloudKitErrorRequiringUserAction];
    v11 = a1[6];
    if (v10)
    {
      (*(v11 + 16))(v11, 0, v10);
    }

    else
    {
      v12 = [v6 hk_sanitizedError];
      (*(v11 + 16))(v11, 0, v12);
    }
  }
}

@end