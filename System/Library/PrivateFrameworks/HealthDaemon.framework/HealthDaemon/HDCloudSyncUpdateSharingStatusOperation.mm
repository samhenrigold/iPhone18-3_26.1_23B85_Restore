@interface HDCloudSyncUpdateSharingStatusOperation
- (void)_finishOperationWithParticipantSharingStatus:(void *)status;
- (void)main;
@end

@implementation HDCloudSyncUpdateSharingStatusOperation

- (void)main
{
  v58 = *MEMORY[0x277D85DE8];
  configuration = [(HDCloudSyncOperation *)self configuration];
  repository = [configuration repository];
  syncAvailability = [repository syncAvailability];

  if ([syncAvailability shouldSyncSummarySharingPull] & 1) != 0 || (objc_msgSend(syncAvailability, "shouldSyncSummarySharingPush"))
  {
    configuration2 = [(HDCloudSyncOperation *)self configuration];
    cachedCloudState = [configuration2 cachedCloudState];
    v49 = 0;
    v8 = [cachedCloudState zonesByIdentifierWithError:&v49];
    v9 = v49;

    if (v8 || !v9)
    {
      allValues = [v8 allValues];
      v12 = allValues;
      if (allValues)
      {
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        obj = allValues;
        v38 = [obj countByEnumeratingWithState:&v45 objects:v57 count:16];
        if (v38)
        {
          v37 = *v46;
          *&v13 = 138543874;
          v33 = v13;
          v35 = v9;
          v36 = v8;
          v34 = v12;
          do
          {
            v14 = 0;
            v15 = v37;
            v16 = v38;
            do
            {
              if (*v46 != v15)
              {
                objc_enumerationMutation(obj);
              }

              v17 = *(*(&v45 + 1) + 8 * v14);
              v44 = 0;
              v18 = [v17 zoneShareWithError:{&v44, v33}];
              v19 = v44;
              v20 = v19;
              if (v18)
              {
                v21 = 1;
              }

              else
              {
                v21 = v19 == 0;
              }

              if (v21)
              {
                if (v18)
                {
                  v42 = 0u;
                  v43 = 0u;
                  v40 = 0u;
                  v41 = 0u;
                  participants = [v18 participants];
                  v23 = [participants countByEnumeratingWithState:&v40 objects:v50 count:16];
                  if (v23)
                  {
                    v24 = v23;
                    v25 = *v41;
                    while (2)
                    {
                      for (i = 0; i != v24; ++i)
                      {
                        if (*v41 != v25)
                        {
                          objc_enumerationMutation(participants);
                        }

                        v27 = *(*(&v40 + 1) + 8 * i);
                        if ([v27 acceptanceStatus] == 2 || objc_msgSend(v27, "acceptanceStatus") == 1)
                        {
                          [(HDCloudSyncUpdateSharingStatusOperation *)self _finishOperationWithParticipantSharingStatus:?];

                          v9 = v35;
                          v8 = v36;
                          v12 = v34;
                          goto LABEL_40;
                        }
                      }

                      v24 = [participants countByEnumeratingWithState:&v40 objects:v50 count:16];
                      v15 = v37;
                      if (v24)
                      {
                        continue;
                      }

                      break;
                    }
                  }

                  v16 = v38;
                }
              }

              else
              {
                _HKInitializeLogging();
                v28 = *MEMORY[0x277CCC328];
                if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
                {
                  v30 = v28;
                  zoneIdentifier = [v17 zoneIdentifier];
                  *buf = v33;
                  selfCopy3 = self;
                  v53 = 2114;
                  v54 = zoneIdentifier;
                  v55 = 2114;
                  v56 = v20;
                  _os_log_error_impl(&dword_228986000, v30, OS_LOG_TYPE_ERROR, "%{public}@ Failed to retrieve cached CKShare for zone %{public}@, %{public}@", buf, 0x20u);
                }
              }

              ++v14;
            }

            while (v14 != v16);
            v9 = v35;
            v8 = v36;
            v12 = v34;
            v38 = [obj countByEnumeratingWithState:&v45 objects:v57 count:16];
          }

          while (v38);
        }
      }

      [(HDCloudSyncUpdateSharingStatusOperation *)self _finishOperationWithParticipantSharingStatus:?];
LABEL_40:
    }

    else
    {
      _HKInitializeLogging();
      v10 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        selfCopy3 = self;
        v53 = 2114;
        v54 = v9;
        _os_log_error_impl(&dword_228986000, v10, OS_LOG_TYPE_ERROR, "%{public}@: Failed to retrieve cached zones, %{public}@", buf, 0x16u);
      }

      [(HDCloudSyncOperation *)self finishWithSuccess:0 error:v9];
    }
  }

  else
  {
    _HKInitializeLogging();
    v32 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy3 = self;
      _os_log_impl(&dword_228986000, v32, OS_LOG_TYPE_DEFAULT, "%{public}@ Skipping operation because platform/profile does not support summary sharing", buf, 0xCu);
    }

    [(HDCloudSyncOperation *)self finishWithSuccess:1 error:0];
  }
}

- (void)_finishOperationWithParticipantSharingStatus:(void *)status
{
  if (status)
  {
    profile = [status profile];
    v5 = HDTinkerProtectedKeyValueDomainWithProfile(profile);

    v6 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
    v9 = 0;
    v7 = [v5 setNumber:v6 forKey:@"HDCloudSyncSharingStatusKey" error:&v9];
    v8 = v9;

    [status finishWithSuccess:v7 error:v8];
  }
}

@end