@interface HDCloudSyncPipelineStageRemoveSharingParticipants
- (HDCloudSyncRemoveSharingParticipantsOperation)_delegateToOperationForRemoveSharingParticipants:(void *)participants;
- (void)main;
@end

@implementation HDCloudSyncPipelineStageRemoveSharingParticipants

- (void)main
{
  v55 = *MEMORY[0x277D85DE8];
  if (self->_removeAllParticipants)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
    configuration = [(HDCloudSyncOperation *)self configuration];
    cachedCloudState = [configuration cachedCloudState];
    v46 = 0;
    v6 = [cachedCloudState zonesByIdentifierWithError:&v46];
    v7 = v46;

    if (v6 || !v7)
    {
      v31 = v7;
      v32 = v6;
      selfCopy = self;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      obj = [v6 allValues];
      v12 = [obj countByEnumeratingWithState:&v42 objects:v54 count:16];
      if (v12)
      {
        v13 = v12;
        v35 = *v43;
        while (2)
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v43 != v35)
            {
              objc_enumerationMutation(obj);
            }

            v15 = *(*(&v42 + 1) + 8 * i);
            v41 = 0;
            v16 = [v15 zoneShareWithError:&v41];
            v17 = v41;
            v18 = v17;
            if (v16)
            {
              v19 = 1;
            }

            else
            {
              v19 = v17 == 0;
            }

            if (!v19)
            {
              _HKInitializeLogging();
              v27 = *MEMORY[0x277CCC328];
              if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
              {
                v29 = v27;
                zoneIdentifier = [v15 zoneIdentifier];
                *buf = 138543874;
                selfCopy2 = selfCopy;
                v50 = 2114;
                v51 = zoneIdentifier;
                v52 = 2114;
                v53 = v18;
                _os_log_error_impl(&dword_228986000, v29, OS_LOG_TYPE_ERROR, "%{public}@ Failed to fetch CKShare for cached zone %{public}@, %{public}@", buf, 0x20u);
              }

              [(HDCloudSyncOperation *)selfCopy finishWithSuccess:0 error:v18];

              goto LABEL_37;
            }

            v39 = 0u;
            v40 = 0u;
            v37 = 0u;
            v38 = 0u;
            participants = [v16 participants];
            v21 = [participants countByEnumeratingWithState:&v37 objects:v47 count:16];
            if (v21)
            {
              v22 = v21;
              v23 = *v38;
              do
              {
                for (j = 0; j != v22; ++j)
                {
                  if (*v38 != v23)
                  {
                    objc_enumerationMutation(participants);
                  }

                  v25 = *(*(&v37 + 1) + 8 * j);
                  if ([v25 role] != 1)
                  {
                    [v3 addObject:v25];
                  }
                }

                v22 = [participants countByEnumeratingWithState:&v37 objects:v47 count:16];
              }

              while (v22);
            }
          }

          v13 = [obj countByEnumeratingWithState:&v42 objects:v54 count:16];
          if (v13)
          {
            continue;
          }

          break;
        }
      }

      v26 = [(HDCloudSyncPipelineStageRemoveSharingParticipants *)selfCopy _delegateToOperationForRemoveSharingParticipants:v3];
LABEL_37:
      v7 = v31;
      v6 = v32;
    }

    else
    {
      _HKInitializeLogging();
      v8 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        selfCopy2 = self;
        v50 = 2114;
        v51 = v7;
        _os_log_error_impl(&dword_228986000, v8, OS_LOG_TYPE_ERROR, "%{public}@ Failed to get cached zones, %{public}@", buf, 0x16u);
      }

      [(HDCloudSyncOperation *)self finishWithSuccess:0 error:v7];
    }
  }

  else
  {
    participantsToRemove = self->_participantsToRemove;
    if (participantsToRemove)
    {
      v11 = [(HDCloudSyncPipelineStageRemoveSharingParticipants *)self _delegateToOperationForRemoveSharingParticipants:?];
    }

    else
    {
      v36 = [MEMORY[0x277CCA9B8] hk_errorForNilArgument:@"_participantsToRemove" class:objc_opt_class() selector:a2];
      [(HDCloudSyncOperation *)self finishWithSuccess:0 error:?];
    }
  }
}

- (HDCloudSyncRemoveSharingParticipantsOperation)_delegateToOperationForRemoveSharingParticipants:(void *)participants
{
  if (participants)
  {
    v3 = a2;
    v4 = [HDCloudSyncRemoveSharingParticipantsOperation alloc];
    configuration = [participants configuration];
    cloudState = [participants cloudState];
    v7 = [(HDCloudSyncRemoveSharingParticipantsOperation *)v4 initWithConfiguration:configuration cloudState:cloudState participantsToRemove:v3];

    [participants delegateToOperation:v7];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end