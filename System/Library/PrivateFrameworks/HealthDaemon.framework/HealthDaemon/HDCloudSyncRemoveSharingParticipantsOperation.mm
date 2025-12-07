@interface HDCloudSyncRemoveSharingParticipantsOperation
- (HDCloudSyncRemoveSharingParticipantsOperation)initWithConfiguration:(id)configuration cloudState:(id)state;
- (HDCloudSyncRemoveSharingParticipantsOperation)initWithConfiguration:(id)configuration cloudState:(id)state participantsToRemove:(id)remove;
- (void)main;
- (void)synchronousTaskGroup:(id)group didFinishWithSuccess:(BOOL)success errors:(id)errors;
@end

@implementation HDCloudSyncRemoveSharingParticipantsOperation

- (HDCloudSyncRemoveSharingParticipantsOperation)initWithConfiguration:(id)configuration cloudState:(id)state
{
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE660];
  v7 = NSStringFromSelector(a2);
  [v5 raise:v6 format:{@"The -%@ method is not available on %@", v7, objc_opt_class()}];

  return 0;
}

- (HDCloudSyncRemoveSharingParticipantsOperation)initWithConfiguration:(id)configuration cloudState:(id)state participantsToRemove:(id)remove
{
  removeCopy = remove;
  v16.receiver = self;
  v16.super_class = HDCloudSyncRemoveSharingParticipantsOperation;
  v9 = [(HDCloudSyncOperation *)&v16 initWithConfiguration:configuration cloudState:state];
  v10 = v9;
  if (v9)
  {
    v9->_lock._os_unfair_lock_opaque = 0;
    v11 = objc_msgSend_copy(removeCopy);
    participantsToRemove = v10->_participantsToRemove;
    v10->_participantsToRemove = v11;

    v13 = objc_alloc_init(MEMORY[0x277D10BB0]);
    taskGroup = v10->_taskGroup;
    v10->_taskGroup = v13;

    [(HDSynchronousTaskGroup *)v10->_taskGroup setDelegate:v10];
  }

  return v10;
}

- (void)main
{
  selfCopy = self;
  v102 = *MEMORY[0x277D85DE8];
  configuration = [(HDCloudSyncOperation *)self configuration];
  repository = [configuration repository];
  allCKContainers = [repository allCKContainers];
  v6 = [allCKContainers count];
  progress = [(HDCloudSyncOperation *)selfCopy progress];
  [progress setTotalUnitCount:v6];

  [(HDSynchronousTaskGroup *)selfCopy->_taskGroup beginTask];
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  configuration2 = [(HDCloudSyncOperation *)selfCopy configuration];
  repository2 = [configuration2 repository];
  allCKContainers2 = [repository2 allCKContainers];

  obj = allCKContainers2;
  v69 = [allCKContainers2 countByEnumeratingWithState:&v76 objects:v86 count:16];
  if (v69)
  {
    v68 = *v77;
    *&v11 = 138543618;
    v63 = v11;
    v64 = selfCopy;
    do
    {
      for (i = 0; i != v69; ++i)
      {
        if (*v77 != v68)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v76 + 1) + 8 * i);
        [(HDSynchronousTaskGroup *)selfCopy->_taskGroup beginTask];
        v14 = selfCopy->_participantsToRemove;
        v15 = v13;
        configuration3 = [(HDCloudSyncOperation *)selfCopy configuration];
        cachedCloudState = [configuration3 cachedCloudState];
        v85 = 0;
        v18 = [cachedCloudState zonesByIdentifierWithError:&v85];
        v19 = v85;

        v70 = v18;
        if (v18 || !v19)
        {
          v66 = v19;
          v67 = i;
          v71 = objc_alloc_init(MEMORY[0x277CBEB18]);
          memset(buf, 0, sizeof(buf));
          v100 = 0u;
          v101 = 0u;
          allValues = [v18 allValues];
          v24 = [allValues countByEnumeratingWithState:buf objects:v95 count:16];
          if (v24)
          {
            v25 = v24;
            v26 = **&buf[16];
            v72 = **&buf[16];
            v73 = v15;
            while (2)
            {
              v27 = 0;
              v74 = v25;
              do
              {
                if (**&buf[16] != v26)
                {
                  objc_enumerationMutation(allValues);
                }

                v28 = *(*&buf[8] + 8 * v27);
                zoneIdentifier = [v28 zoneIdentifier];
                containerIdentifier = [zoneIdentifier containerIdentifier];
                containerIdentifier2 = [v15 containerIdentifier];
                v32 = [containerIdentifier isEqualToString:containerIdentifier2];

                if (v32)
                {
                  v84 = 0;
                  v33 = [v28 zoneShareWithError:&v84];
                  v34 = v84;
                  v19 = v34;
                  if (v33)
                  {
                    v35 = 1;
                  }

                  else
                  {
                    v35 = v34 == 0;
                  }

                  if (!v35)
                  {
                    _HKInitializeLogging();
                    v44 = *MEMORY[0x277CCC328];
                    v45 = os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR);
                    selfCopy = v64;
                    i = v67;
                    if (v45)
                    {
                      v61 = v44;
                      zoneIdentifier2 = [v28 zoneIdentifier];
                      *v89 = 138543874;
                      v90 = v64;
                      v91 = 2114;
                      v92 = zoneIdentifier2;
                      v93 = 2114;
                      v94 = v19;
                      _os_log_error_impl(&dword_228986000, v61, OS_LOG_TYPE_ERROR, "%{public}@ Failed to fetch CKShare for cached zone %{public}@, %{public}@", v89, 0x20u);
                    }

                    v46 = v19;

                    v22 = 0;
                    v43 = v71;
                    goto LABEL_41;
                  }

                  v82 = 0u;
                  v83 = 0u;
                  v80 = 0u;
                  v81 = 0u;
                  participants = [v33 participants];
                  v37 = [participants countByEnumeratingWithState:&v80 objects:v87 count:16];
                  if (v37)
                  {
                    v38 = v37;
                    v39 = 0;
                    v40 = *v81;
                    do
                    {
                      for (j = 0; j != v38; ++j)
                      {
                        if (*v81 != v40)
                        {
                          objc_enumerationMutation(participants);
                        }

                        v42 = *(*(&v80 + 1) + 8 * j);
                        if ([(NSSet *)v14 containsObject:v42])
                        {
                          [v33 removeParticipant:v42];
                          v39 = 1;
                        }
                      }

                      v38 = [participants countByEnumeratingWithState:&v80 objects:v87 count:16];
                    }

                    while (v38);

                    v26 = v72;
                    v15 = v73;
                    if (v39)
                    {
                      [v71 addObject:v33];
                    }
                  }

                  else
                  {
                  }

                  v25 = v74;
                }

                ++v27;
              }

              while (v27 != v25);
              v25 = [allValues countByEnumeratingWithState:buf objects:v95 count:16];
              if (v25)
              {
                continue;
              }

              break;
            }
          }

          v43 = v71;
          v22 = v71;
          v19 = 0;
          selfCopy = v64;
          i = v67;
LABEL_41:

          v23 = v66;
        }

        else
        {
          _HKInitializeLogging();
          v20 = *MEMORY[0x277CCC328];
          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
          {
            *v95 = v63;
            *&v95[4] = selfCopy;
            *&v95[12] = 2114;
            *&v95[14] = v19;
            _os_log_error_impl(&dword_228986000, v20, OS_LOG_TYPE_ERROR, "%{public}@ Failed to get cached zones, %{public}@", v95, 0x16u);
          }

          v21 = v19;
          v22 = 0;
          v23 = v19;
        }

        v47 = v19;
        v48 = v47;
        if (v22 || !v47)
        {
          if ([v22 count])
          {
            v49 = i;
            v50 = v22;
            v51 = v15;
            _HKInitializeLogging();
            v52 = *MEMORY[0x277CCC328];
            if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
            {
              v53 = v52;
              v54 = [v50 count];
              containerIdentifier3 = [v51 containerIdentifier];
              *buf = 138543874;
              *&buf[4] = selfCopy;
              *&buf[12] = 2048;
              *&buf[14] = v54;
              *&buf[22] = 2114;
              *&buf[24] = containerIdentifier3;
              _os_log_impl(&dword_228986000, v53, OS_LOG_TYPE_DEFAULT, "%{public}@: Saving %ld updated share records in %{public}@", buf, 0x20u);
            }

            v56 = [HDCloudSyncModifyRecordsOperation alloc];
            configuration4 = [(HDCloudSyncOperation *)selfCopy configuration];
            v58 = [(HDCloudSyncModifyRecordsOperation *)v56 initWithConfiguration:configuration4 container:v51 recordsToSave:v50 recordIDsToDelete:0];

            [(HDCloudSyncModifyRecordsOperation *)v58 setTreatAnyErrorAsFatal:1];
            *v95 = MEMORY[0x277D85DD0];
            *&v95[8] = 3221225472;
            *&v95[16] = __78__HDCloudSyncRemoveSharingParticipantsOperation__saveUpdatedShares_container___block_invoke;
            v96 = &unk_278616348;
            v97 = selfCopy;
            v59 = v51;
            v98 = v59;
            [(HDCloudSyncOperation *)v58 setOnError:v95];
            v87[0] = MEMORY[0x277D85DD0];
            v87[1] = 3221225472;
            v87[2] = __78__HDCloudSyncRemoveSharingParticipantsOperation__saveUpdatedShares_container___block_invoke_299;
            v87[3] = &unk_278614BA8;
            v87[4] = selfCopy;
            v60 = v59;
            v88 = v60;
            [(HDCloudSyncOperation *)v58 setOnSuccess:v87];
            [(HDCloudSyncOperation *)v58 start];

            i = v49;
          }

          else
          {
            [(HDSynchronousTaskGroup *)selfCopy->_taskGroup finishTask];
          }
        }

        else
        {
          [(HDSynchronousTaskGroup *)selfCopy->_taskGroup failTaskWithError:v47];
        }
      }

      v69 = [obj countByEnumeratingWithState:&v76 objects:v86 count:16];
    }

    while (v69);
  }

  [(HDSynchronousTaskGroup *)selfCopy->_taskGroup finishTask];
}

void __78__HDCloudSyncRemoveSharingParticipantsOperation__saveUpdatedShares_container___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
  {
    v7 = *(a1 + 32);
    v6 = *(a1 + 40);
    v8 = v5;
    v9 = [v6 containerIdentifier];
    v10 = 138543874;
    v11 = v7;
    v12 = 2114;
    v13 = v9;
    v14 = 2114;
    v15 = v4;
    _os_log_error_impl(&dword_228986000, v8, OS_LOG_TYPE_ERROR, "%{public}@: Failed to update share records in %{public}@: %{public}@", &v10, 0x20u);
  }

  [*(*(a1 + 32) + 112) failTaskWithError:v4];
}

uint64_t __78__HDCloudSyncRemoveSharingParticipantsOperation__saveUpdatedShares_container___block_invoke_299(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = v2;
    v6 = [v3 containerIdentifier];
    v8 = 138543618;
    v9 = v4;
    v10 = 2114;
    v11 = v6;
    _os_log_impl(&dword_228986000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Successfully updated share records in %{public}@", &v8, 0x16u);
  }

  return [*(*(a1 + 32) + 112) finishTask];
}

- (void)synchronousTaskGroup:(id)group didFinishWithSuccess:(BOOL)success errors:(id)errors
{
  successCopy = success;
  firstObject = [errors firstObject];
  [(HDCloudSyncOperation *)self finishWithSuccess:successCopy error:firstObject];
}

@end