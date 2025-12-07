@interface HDCloudSyncRemoveInvalidShareParticipantsOperation
- (HDCloudSyncRemoveInvalidShareParticipantsOperation)initWithConfiguration:(id)configuration cloudState:(id)state;
- (void)main;
- (void)setParticipantsToCheck:(id)check;
- (void)setRequiredPermission:(int64_t)permission;
- (void)synchronousTaskGroup:(id)group didFinishWithSuccess:(BOOL)success errors:(id)errors;
@end

@implementation HDCloudSyncRemoveInvalidShareParticipantsOperation

- (HDCloudSyncRemoveInvalidShareParticipantsOperation)initWithConfiguration:(id)configuration cloudState:(id)state
{
  v5.receiver = self;
  v5.super_class = HDCloudSyncRemoveInvalidShareParticipantsOperation;
  result = [(HDCloudSyncOperation *)&v5 initWithConfiguration:configuration cloudState:state];
  if (result)
  {
    result->_requiredPermission = 3;
  }

  return result;
}

- (void)setRequiredPermission:(int64_t)permission
{
  if ([(HDCloudSyncOperation *)self status])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDCloudSyncRemoveInvalidShareParticipantsOperation.m" lineNumber:41 description:{@"Invalid parameter not satisfying: %@", @"self.status == HDCloudSyncOperationStatusPending"}];
  }

  self->_requiredPermission = permission;
}

- (void)setParticipantsToCheck:(id)check
{
  checkCopy = check;
  if ([(HDCloudSyncOperation *)self status])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDCloudSyncRemoveInvalidShareParticipantsOperation.m" lineNumber:47 description:{@"Invalid parameter not satisfying: %@", @"self.status == HDCloudSyncOperationStatusPending"}];
  }

  v5 = objc_msgSend_copy(checkCopy);
  participantsToCheck = self->_participantsToCheck;
  self->_participantsToCheck = v5;
}

- (void)main
{
  v110 = *MEMORY[0x277D85DE8];
  participantsToCheck = self->_participantsToCheck;
  if (participantsToCheck && ![(NSArray *)participantsToCheck count])
  {
    _HKInitializeLogging();
    v62 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      *v106 = 138543362;
      selfCopy4 = self;
      _os_log_impl(&dword_228986000, v62, OS_LOG_TYPE_DEFAULT, "%{public}@: No participants to check; nothing to do.", v106, 0xCu);
    }

    [(HDCloudSyncOperation *)self finishWithSuccess:1 error:0];
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x277D10BB0]);
    taskGroup = self->_taskGroup;
    self->_taskGroup = v4;

    [(HDSynchronousTaskGroup *)self->_taskGroup setDelegate:self];
    [(HDSynchronousTaskGroup *)self->_taskGroup beginTask];
    v84 = 0u;
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    configuration = [(HDCloudSyncOperation *)self configuration];
    repository = [configuration repository];
    allCKContainers = [repository allCKContainers];

    obj = allCKContainers;
    v9 = [allCKContainers countByEnumeratingWithState:&v84 objects:v98 count:16];
    if (v9)
    {
      v11 = v9;
      v12 = *v85;
      v64 = v81;
      v65 = v83;
      v13 = 0x277CBE000uLL;
      *&v10 = 138543874;
      v63 = v10;
      v66 = *v85;
      do
      {
        v14 = 0;
        v67 = v11;
        do
        {
          if (*v85 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v70 = v14;
          v15 = *(*(&v84 + 1) + 8 * v14);
          [(HDSynchronousTaskGroup *)self->_taskGroup beginTask:v63];
          v73 = v15;
          v71 = objc_alloc_init(*(v13 + 2840));
          configuration2 = [(HDCloudSyncOperation *)self configuration];
          cachedCloudState = [configuration2 cachedCloudState];
          v97 = 0;
          v18 = [cachedCloudState zonesByIdentifierWithError:&v97];
          v19 = v97;

          v20 = v18;
          if (v18 || !v19)
          {
            v95 = 0u;
            v96 = 0u;
            v93 = 0u;
            v94 = 0u;
            v69 = v18;
            allValues = [v18 allValues];
            v26 = v73;
            v77 = [allValues countByEnumeratingWithState:&v93 objects:v106 count:16];
            if (v77)
            {
              v27 = *v94;
              v72 = allValues;
              v78 = v19;
              v75 = *v94;
              while (2)
              {
                for (i = 0; i != v77; ++i)
                {
                  if (*v94 != v27)
                  {
                    objc_enumerationMutation(allValues);
                  }

                  v29 = *(*(&v93 + 1) + 8 * i);
                  zoneIdentifier = [v29 zoneIdentifier];
                  containerIdentifier = [zoneIdentifier containerIdentifier];
                  containerIdentifier2 = [v26 containerIdentifier];
                  v33 = [containerIdentifier isEqualToString:containerIdentifier2];

                  v19 = v78;
                  if (v33)
                  {
                    v76 = i;
                    v92 = 0;
                    v34 = [v29 zoneShareWithError:&v92];
                    v35 = v92;
                    v24 = v35;
                    if (v34)
                    {
                      v36 = 1;
                    }

                    else
                    {
                      v36 = v35 == 0;
                    }

                    if (!v36)
                    {
                      _HKInitializeLogging();
                      v52 = *MEMORY[0x277CCC328];
                      v53 = os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR);
                      v11 = v67;
                      if (v53)
                      {
                        v60 = v52;
                        zoneIdentifier2 = [v29 zoneIdentifier];
                        *buf = v63;
                        selfCopy3 = self;
                        v102 = 2114;
                        v103 = zoneIdentifier2;
                        v104 = 2114;
                        v105 = v24;
                        _os_log_error_impl(&dword_228986000, v60, OS_LOG_TYPE_ERROR, "%{public}@ Failed to retrieve cached CKShare for zone %{public}@, %{public}@", buf, 0x20u);
                      }

                      v54 = v24;

                      v23 = 0;
                      goto LABEL_52;
                    }

                    if (v34)
                    {
                      v90 = 0u;
                      v91 = 0u;
                      v88 = 0u;
                      v89 = 0u;
                      v79 = v34;
                      participants = [v34 participants];
                      v38 = objc_msgSend_copy(participants);

                      v39 = [v38 countByEnumeratingWithState:&v88 objects:v99 count:16];
                      if (v39)
                      {
                        v40 = v39;
                        v74 = v24;
                        v41 = 0;
                        v42 = *v89;
                        do
                        {
                          for (j = 0; j != v40; ++j)
                          {
                            if (*v89 != v42)
                            {
                              objc_enumerationMutation(v38);
                            }

                            v44 = *(*(&v88 + 1) + 8 * j);
                            if ([v44 role] != 1)
                            {
                              requiredPermission = self->_requiredPermission;
                              v46 = v44;
                              acceptanceStatus = [v46 acceptanceStatus];
                              permission = [v46 permission];

                              if (acceptanceStatus != 2 || permission != requiredPermission)
                              {
                                v50 = self->_participantsToCheck;
                                if (!v50 || [(NSArray *)v50 containsObject:v46])
                                {
                                  _HKInitializeLogging();
                                  v51 = *MEMORY[0x277CCC328];
                                  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
                                  {
                                    *buf = 138543618;
                                    selfCopy3 = self;
                                    v102 = 2114;
                                    v103 = v46;
                                    _os_log_impl(&dword_228986000, v51, OS_LOG_TYPE_DEFAULT, "%{public}@: Found invalid participant %{public}@, removing.", buf, 0x16u);
                                  }

                                  [v79 removeParticipant:v46];
                                  v41 = 1;
                                }
                              }
                            }
                          }

                          v40 = [v38 countByEnumeratingWithState:&v88 objects:v99 count:16];
                        }

                        while (v40);

                        allValues = v72;
                        v26 = v73;
                        v19 = v78;
                        v24 = v74;
                        v34 = v79;
                        if (v41)
                        {
                          [v71 addObject:v79];
                        }
                      }

                      else
                      {
                      }
                    }

                    v27 = v75;
                    i = v76;
                  }
                }

                v77 = [allValues countByEnumeratingWithState:&v93 objects:v106 count:16];
                if (v77)
                {
                  continue;
                }

                break;
              }
            }

            v23 = v71;
            v24 = 0;
            v11 = v67;
LABEL_52:
            v12 = v66;
            v13 = 0x277CBE000;
            v20 = v69;
          }

          else
          {
            _HKInitializeLogging();
            v21 = *MEMORY[0x277CCC328];
            if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
            {
              *v106 = 138543618;
              selfCopy4 = self;
              v108 = 2114;
              v109 = v19;
              _os_log_error_impl(&dword_228986000, v21, OS_LOG_TYPE_ERROR, "%{public}@: Failed to retrieve cached zones, %{public}@", v106, 0x16u);
            }

            v22 = v19;
            v23 = 0;
            v24 = v19;
          }

          v55 = v24;
          v56 = v55;
          if (v23 || !v55)
          {
            if ([v23 count])
            {
              v57 = [HDCloudSyncModifyRecordsOperation alloc];
              configuration3 = [(HDCloudSyncOperation *)self configuration];
              v59 = [(HDCloudSyncModifyRecordsOperation *)v57 initWithConfiguration:configuration3 container:v73 recordsToSave:v23 recordIDsToDelete:0];

              v82[0] = MEMORY[0x277D85DD0];
              v82[1] = 3221225472;
              v83[0] = __58__HDCloudSyncRemoveInvalidShareParticipantsOperation_main__block_invoke;
              v83[1] = &unk_278616348;
              v83[2] = self;
              v83[3] = v73;
              [(HDCloudSyncOperation *)v59 setOnError:v82];
              v80[0] = MEMORY[0x277D85DD0];
              v80[1] = 3221225472;
              v81[0] = __58__HDCloudSyncRemoveInvalidShareParticipantsOperation_main__block_invoke_304;
              v81[1] = &unk_278614BA8;
              v81[2] = self;
              v81[3] = v73;
              [(HDCloudSyncOperation *)v59 setOnSuccess:v80];
              [(HDCloudSyncOperation *)v59 start];
            }

            else
            {
              [(HDSynchronousTaskGroup *)self->_taskGroup finishTask];
            }
          }

          else
          {
            [(HDSynchronousTaskGroup *)self->_taskGroup failTaskWithError:v55];
          }

          v14 = v70 + 1;
        }

        while (v70 + 1 != v11);
        v11 = [obj countByEnumeratingWithState:&v84 objects:v98 count:16];
      }

      while (v11);
    }

    [(HDSynchronousTaskGroup *)self->_taskGroup finishTask];
  }
}

void __58__HDCloudSyncRemoveInvalidShareParticipantsOperation_main__block_invoke(uint64_t a1, uint64_t a2, void *a3)
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
    _os_log_error_impl(&dword_228986000, v8, OS_LOG_TYPE_ERROR, "%{public}@: Failed to update shares in %{public}@: %{public}@", &v10, 0x20u);
  }

  [*(*(a1 + 32) + 104) failTaskWithError:v4];
}

uint64_t __58__HDCloudSyncRemoveInvalidShareParticipantsOperation_main__block_invoke_304(uint64_t a1)
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
    _os_log_impl(&dword_228986000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Successfully updated share records for %{public}@", &v8, 0x16u);
  }

  return [*(*(a1 + 32) + 104) finishTask];
}

- (void)synchronousTaskGroup:(id)group didFinishWithSuccess:(BOOL)success errors:(id)errors
{
  successCopy = success;
  firstObject = [errors firstObject];
  [(HDCloudSyncOperation *)self finishWithSuccess:successCopy error:firstObject];
}

@end