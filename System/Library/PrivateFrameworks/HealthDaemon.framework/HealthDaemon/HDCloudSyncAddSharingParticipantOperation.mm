@interface HDCloudSyncAddSharingParticipantOperation
- (BOOL)requireExistingRelationship;
- (CKShareParticipant)participant;
- (HDCloudSyncAddSharingParticipantOperation)initWithConfiguration:(id)configuration cloudState:(id)state;
- (NSArray)zoneIdentifiers;
- (void)_foundOwnerParticipant:(uint64_t)participant;
- (void)main;
- (void)setParticipant:(id)participant;
- (void)setRequireExistingRelationship:(BOOL)relationship;
- (void)setZoneIdentifiers:(id)identifiers;
- (void)synchronousTaskGroup:(id)group didFinishWithSuccess:(BOOL)success errors:(id)errors;
@end

@implementation HDCloudSyncAddSharingParticipantOperation

- (HDCloudSyncAddSharingParticipantOperation)initWithConfiguration:(id)configuration cloudState:(id)state
{
  v15.receiver = self;
  v15.super_class = HDCloudSyncAddSharingParticipantOperation;
  v4 = [(HDCloudSyncOperation *)&v15 initWithConfiguration:configuration cloudState:state];
  v5 = v4;
  if (v4)
  {
    v4->_lock._os_unfair_lock_opaque = 0;
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    clonedParticipants = v5->_clonedParticipants;
    v5->_clonedParticipants = v6;

    zoneIdentifiers = v5->_zoneIdentifiers;
    v9 = MEMORY[0x277CBEBF8];
    v5->_zoneIdentifiers = MEMORY[0x277CBEBF8];

    v10 = objc_alloc_init(MEMORY[0x277D10BB0]);
    taskGroup = v5->_taskGroup;
    v5->_taskGroup = v10;

    [(HDSynchronousTaskGroup *)v5->_taskGroup setDelegate:v5];
    shareURLs = v5->_shareURLs;
    v5->_shareURLs = v9;

    invitationTokensByShareURL = v5->_invitationTokensByShareURL;
    v5->_invitationTokensByShareURL = MEMORY[0x277CBEC10];
  }

  return v5;
}

- (CKShareParticipant)participant
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_participant;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setParticipant:(id)participant
{
  participantCopy = participant;
  if ([(HDCloudSyncOperation *)self status])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDCloudSyncAddSharingParticipantOperation.m" lineNumber:80 description:{@"Invalid parameter not satisfying: %@", @"self.status == HDCloudSyncOperationStatusPending"}];
  }

  os_unfair_lock_lock(&self->_lock);
  participant = self->_participant;
  self->_participant = participantCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSArray)zoneIdentifiers
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_zoneIdentifiers;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setZoneIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  if ([(HDCloudSyncOperation *)self status])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDCloudSyncAddSharingParticipantOperation.m" lineNumber:96 description:{@"Invalid parameter not satisfying: %@", @"self.status == HDCloudSyncOperationStatusPending"}];
  }

  os_unfair_lock_lock(&self->_lock);
  v6 = objc_msgSend_copy(identifiersCopy);

  zoneIdentifiers = self->_zoneIdentifiers;
  self->_zoneIdentifiers = v6;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)requireExistingRelationship
{
  os_unfair_lock_lock(&self->_lock);
  requireExistingRelationship = self->_requireExistingRelationship;
  os_unfair_lock_unlock(&self->_lock);
  return requireExistingRelationship;
}

- (void)setRequireExistingRelationship:(BOOL)relationship
{
  if ([(HDCloudSyncOperation *)self status])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDCloudSyncAddSharingParticipantOperation.m" lineNumber:112 description:{@"Invalid parameter not satisfying: %@", @"self.status == HDCloudSyncOperationStatusPending"}];
  }

  os_unfair_lock_lock(&self->_lock);
  self->_requireExistingRelationship = relationship;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)main
{
  selfCopy8 = self;
  v170 = *MEMORY[0x277D85DE8];
  participant = self->_participant;
  if (participant)
  {
    if (!self->_requireExistingRelationship)
    {
      goto LABEL_26;
    }

    v144 = participant;
    memset(v159, 0, sizeof(v159));
    v160 = 0u;
    v161 = 0u;
    obj = selfCopy8->_zoneIdentifiers;
    v4 = [(NSArray *)obj countByEnumeratingWithState:v159 objects:v157 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = **&v159[16];
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (**&v159[16] != v6)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*&v159[8] + 8 * i);
          v9 = [HDCloudSyncCachedZone alloc];
          configuration = [(HDCloudSyncOperation *)selfCopy8 configuration];
          repository = [configuration repository];
          configuration2 = [(HDCloudSyncOperation *)selfCopy8 configuration];
          accessibilityAssertion = [configuration2 accessibilityAssertion];
          v14 = [(HDCloudSyncCachedZone *)v9 initForZoneIdentifier:v8 repository:repository accessibilityAssertion:accessibilityAssertion];

          *buf = 0;
          v15 = [v14 zoneShareWithError:buf];
          v16 = *buf;
          v17 = v16;
          if (v15)
          {
            v18 = 1;
          }

          else
          {
            v18 = v16 == 0;
          }

          if (!v18)
          {
            _HKInitializeLogging();
            v23 = *MEMORY[0x277CCC328];
            if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
            {
              *v167 = 138543874;
              *&v167[4] = self;
              *&v167[12] = 2114;
              *&v167[14] = v8;
              *&v167[22] = 2114;
              v168 = v17;
              _os_log_error_impl(&dword_228986000, v23, OS_LOG_TYPE_ERROR, "%{public}@ Failed to fetch CKShare for cached zone %{public}@, %{public}@", v167, 0x20u);
            }

            v25 = v17;

            v22 = v17;
            [(HDCloudSyncOperation *)self finishWithSuccess:0 error:v22];
            goto LABEL_24;
          }

          if (v15)
          {
            participants = [v15 participants];
            v20 = [participants containsObject:v144];

            if (v20)
            {

              selfCopy8 = self;
LABEL_26:
              [(HDSynchronousTaskGroup *)selfCopy8->_taskGroup beginTask];
              v151 = 0u;
              v152 = 0u;
              v153 = 0u;
              v154 = 0u;
              configuration3 = [(HDCloudSyncOperation *)selfCopy8 configuration];
              repository2 = [configuration3 repository];
              allCKContainers = [repository2 allCKContainers];

              v129 = allCKContainers;
              v131 = [allCKContainers countByEnumeratingWithState:&v151 objects:v156 count:16];
              if (!v131)
              {
                goto LABEL_109;
              }

              v130 = *v152;
              v29 = 0x27860D000uLL;
              while (2)
              {
                v30 = 0;
LABEL_29:
                if (*v152 != v130)
                {
                  objc_enumerationMutation(v129);
                }

                v132 = v30;
                v31 = *(*(&v151 + 1) + 8 * v30);
                [(HDSynchronousTaskGroup *)selfCopy8->_taskGroup beginTask];
                v135 = selfCopy8->_participant;
                v32 = v31;
                v133 = objc_alloc_init(MEMORY[0x277CBEB38]);
                memset(v159, 0, sizeof(v159));
                v160 = 0u;
                v161 = 0u;
                v145 = selfCopy8->_zoneIdentifiers;
                v33 = [(NSArray *)v145 countByEnumeratingWithState:v159 objects:v157 count:16];
                if (v33)
                {
                  v34 = v33;
                  v35 = **&v159[16];
                  v139 = v32;
                  while (2)
                  {
                    v36 = 0;
                    obja = v34;
                    do
                    {
                      if (**&v159[16] != v35)
                      {
                        objc_enumerationMutation(v145);
                      }

                      v37 = *(*&v159[8] + 8 * v36);
                      containerIdentifier = [v37 containerIdentifier];
                      containerIdentifier2 = [v32 containerIdentifier];
                      v40 = [containerIdentifier isEqualToString:containerIdentifier2];

                      if (v40)
                      {
                        v41 = objc_alloc(*(v29 + 2856));
                        configuration4 = [(HDCloudSyncOperation *)selfCopy8 configuration];
                        repository3 = [configuration4 repository];
                        configuration5 = [(HDCloudSyncOperation *)selfCopy8 configuration];
                        accessibilityAssertion2 = [configuration5 accessibilityAssertion];
                        v46 = [v41 initForZoneIdentifier:v37 repository:repository3 accessibilityAssertion:accessibilityAssertion2];

                        selfCopy8 = self;
                        if ([v46 zoneType] != 4)
                        {
                          v155 = 0;
                          v47 = [v46 zoneShareWithError:&v155];
                          v48 = v155;
                          v49 = v48;
                          if (!v47 && v48)
                          {
                            _HKInitializeLogging();
                            v70 = *MEMORY[0x277CCC328];
                            if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
                            {
                              *v167 = 138543874;
                              *&v167[4] = self;
                              *&v167[12] = 2114;
                              *&v167[14] = v37;
                              *&v167[22] = 2114;
                              v168 = v49;
                              _os_log_error_impl(&dword_228986000, v70, OS_LOG_TYPE_ERROR, "%{public}@ Failed to fetch CKShare for cached zone %{public}@, %{public}@", v167, 0x20u);
                            }

                            v71 = v49;

                            v69 = 0;
                            v32 = v139;
                            v68 = v133;
                            goto LABEL_62;
                          }

                          v137 = v48;
                          if (!v47)
                          {
                            v50 = objc_alloc(MEMORY[0x277CBC680]);
                            zoneIdentifier = [v37 zoneIdentifier];
                            v47 = [v50 initWithRecordZoneID:zoneIdentifier];
                          }

                          v52 = v135;
                          v53 = v37;
                          v54 = v47;
                          participants2 = [v54 participants];
                          *v167 = MEMORY[0x277D85DD0];
                          *&v167[8] = 3221225472;
                          *&v167[16] = __90__HDCloudSyncAddSharingParticipantOperation__addParticipantIfNeeded_zoneIdentifier_share___block_invoke;
                          v168 = &unk_27861A858;
                          v56 = v52;
                          v169 = v56;
                          v57 = [participants2 hk_firstObjectPassingTest:v167];

                          if (v57 && (v58 = v57, v59 = [v58 acceptanceStatus], v60 = objc_msgSend(v58, "permission"), v58, v59 == 2) && v60 == 3)
                          {
                            _HKInitializeLogging();
                            v61 = *MEMORY[0x277CCC328];
                            if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
                            {
                              *buf = 138543874;
                              selfCopy8 = self;
                              *&buf[4] = self;
                              v163 = 2114;
                              v164 = v53;
                              v165 = 2114;
                              v166 = v58;
                              _os_log_impl(&dword_228986000, v61, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@: Skipping, zone already contains this participant: %{public}@.", buf, 0x20u);
                              v62 = 0;
                            }

                            else
                            {
                              v62 = 0;
                              selfCopy8 = self;
                            }
                          }

                          else
                          {
                            v62 = objc_msgSend_copy(v56);
                            uUID = [MEMORY[0x277CCAD78] UUID];
                            uUIDString = [uUID UUIDString];
                            [v62 setParticipantID:uUIDString];

                            [v62 setPermission:3];
                            [v54 addParticipant:v62];
                            selfCopy8 = self;
                            os_unfair_lock_lock(&self->_lock);
                            [(NSMutableArray *)self->_clonedParticipants addObject:v62];
                            os_unfair_lock_unlock(&self->_lock);
                          }

                          if (v62)
                          {
                            _HKInitializeLogging();
                            v65 = *MEMORY[0x277CCC328];
                            if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
                            {
                              *v167 = 138543874;
                              *&v167[4] = selfCopy8;
                              *&v167[12] = 2114;
                              *&v167[14] = v53;
                              *&v167[22] = 2114;
                              v168 = v62;
                              _os_log_impl(&dword_228986000, v65, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@: Added participant: %{public}@", v167, 0x20u);
                            }

                            [v133 setObject:v54 forKeyedSubscript:v53];
                          }

                          owner = [v54 owner];
                          [(HDCloudSyncAddSharingParticipantOperation *)selfCopy8 _foundOwnerParticipant:owner];

                          v29 = 0x27860D000;
                        }

                        v32 = v139;
                        v34 = obja;
                      }

                      v36 = v36 + 1;
                    }

                    while (v34 != v36);
                    v67 = [(NSArray *)v145 countByEnumeratingWithState:v159 objects:v157 count:16];
                    v34 = v67;
                    if (v67)
                    {
                      continue;
                    }

                    break;
                  }
                }

                v68 = v133;
                v69 = v133;
                v49 = 0;
LABEL_62:

                v72 = v49;
                v73 = v72;
                if (!v69 && v72)
                {
                  [(HDSynchronousTaskGroup *)selfCopy8->_taskGroup failTaskWithError:v72];
                  goto LABEL_107;
                }

                allValues = [v69 allValues];
                v75 = [allValues count];

                if (!v75)
                {
                  [(HDSynchronousTaskGroup *)selfCopy8->_taskGroup finishTask];
                  goto LABEL_107;
                }

                allValues2 = [v69 allValues];
                v77 = v32;
                configuration6 = [(HDCloudSyncOperation *)selfCopy8 configuration];
                repository4 = [configuration6 repository];

                behavior = [repository4 behavior];
                tinkerModeEnabled = [behavior tinkerModeEnabled];

                if (!tinkerModeEnabled)
                {
                  record = 0;
                  goto LABEL_104;
                }

                objb = allValues2;
                v82 = repository4;
                v83 = v77;
                configuration7 = [(HDCloudSyncOperation *)selfCopy8 configuration];
                cachedCloudState = [configuration7 cachedCloudState];
                *v167 = 0;
                v86 = [cachedCloudState zonesByIdentifierWithError:v167];
                v87 = *v167;

                v146 = v86;
                if (!v86 && v87)
                {
                  _HKInitializeLogging();
                  v88 = *MEMORY[0x277CCC328];
                  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
                  {
                    *v159 = 138543618;
                    *&v159[4] = selfCopy8;
                    *&v159[12] = 2114;
                    *&v159[14] = v87;
                    _os_log_error_impl(&dword_228986000, v88, OS_LOG_TYPE_ERROR, "%{public}@ Failed to get cached unified zone, %{public}@", v159, 0x16u);
                  }

                  record = 0;
                  v77 = v83;
                  repository4 = v82;
                  allValues2 = objb;
LABEL_103:

LABEL_104:
                  if (record)
                  {
                    v115 = [allValues2 arrayByAddingObject:record];

                    allValues2 = v115;
                  }

                  v116 = [HDCloudSyncModifyRecordsOperation alloc];
                  configuration8 = [(HDCloudSyncOperation *)selfCopy8 configuration];
                  v118 = [(HDCloudSyncModifyRecordsOperation *)v116 initWithConfiguration:configuration8 container:v77 recordsToSave:allValues2 recordIDsToDelete:0];

                  [(HDCloudSyncModifyRecordsOperation *)v118 setTreatAnyErrorAsFatal:1];
                  v150[0] = MEMORY[0x277D85DD0];
                  v150[1] = 3221225472;
                  v150[2] = __49__HDCloudSyncAddSharingParticipantOperation_main__block_invoke;
                  v150[3] = &unk_278613088;
                  v150[4] = selfCopy8;
                  [(HDCloudSyncOperation *)v118 setOnError:v150];
                  v149[0] = MEMORY[0x277D85DD0];
                  v149[1] = 3221225472;
                  v149[2] = __49__HDCloudSyncAddSharingParticipantOperation_main__block_invoke_312;
                  v149[3] = &unk_278613060;
                  v149[4] = selfCopy8;
                  [(HDCloudSyncOperation *)v118 setOnSuccess:v149];
                  [(HDCloudSyncOperation *)v118 start];

LABEL_107:
                  v30 = v132 + 1;
                  if (v132 + 1 == v131)
                  {
                    v131 = [v129 countByEnumeratingWithState:&v151 objects:v156 count:16];
                    if (!v131)
                    {
LABEL_109:

                      [(HDSynchronousTaskGroup *)selfCopy8->_taskGroup finishTask];
                      return;
                    }

                    continue;
                  }

                  goto LABEL_29;
                }

                break;
              }

              v138 = v87;
              allValues3 = [v86 allValues];
              v157[0] = MEMORY[0x277D85DD0];
              v157[1] = 3221225472;
              v157[2] = __88__HDCloudSyncAddSharingParticipantOperation__updatedRegistryRecordIfNeededForContainer___block_invoke;
              v157[3] = &unk_2786147D0;
              v77 = v83;
              v91 = v83;
              v158 = v91;
              v92 = [allValues3 hk_filter:v157];

              repository4 = v82;
              v140 = v92;
              if ([v92 count] >= 2)
              {
                _HKInitializeLogging();
                v93 = *MEMORY[0x277CCC328];
                if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_FAULT))
                {
                  v119 = v93;
                  containerIdentifier3 = [v91 containerIdentifier];
                  profileIdentifier = [repository4 profileIdentifier];
                  v122 = HDDatabaseForContainer(v91, profileIdentifier);
                  [v122 databaseScope];
                  v123 = CKDatabaseScopeString();
                  *v159 = 138543874;
                  *&v159[4] = self;
                  *&v159[12] = 2114;
                  *&v159[14] = containerIdentifier3;
                  *&v159[22] = 2114;
                  *&v159[24] = v123;
                  _os_log_fault_impl(&dword_228986000, v119, OS_LOG_TYPE_FAULT, "%{public}@ Retrieved multiple cached unified zone for container %{public}@, database %{public}@. This is unexpected.", v159, 0x20u);

                  v29 = 0x27860D000;
                  v92 = v140;
                }
              }

              firstObject = [v92 firstObject];
              allValues2 = objb;
              if (!firstObject)
              {
                _HKInitializeLogging();
                v99 = *MEMORY[0x277CCC328];
                if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
                {
                  *v159 = 138543362;
                  *&v159[4] = self;
                  _os_log_error_impl(&dword_228986000, v99, OS_LOG_TYPE_ERROR, "%{public}@ Unified zone does not exist.", v159, 0xCu);
                }

                record = 0;
                goto LABEL_102;
              }

              v95 = objc_opt_class();
              *buf = 0;
              v96 = [firstObject recordsForClass:v95 error:buf];
              v97 = *buf;
              v134 = v96;
              v136 = v97;
              if (!v96 && v97)
              {
                _HKInitializeLogging();
                v98 = *MEMORY[0x277CCC328];
                if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
                {
                  v124 = v98;
                  zoneIdentifier2 = [firstObject zoneIdentifier];
                  *v159 = 138543874;
                  *&v159[4] = self;
                  *&v159[12] = 2114;
                  *&v159[14] = zoneIdentifier2;
                  *&v159[22] = 2114;
                  *&v159[24] = v136;
                  _os_log_error_impl(&dword_228986000, v124, OS_LOG_TYPE_ERROR, "%{public}@ Failed to get registry records for %{public}@, %{public}@", v159, 0x20u);
                }

                record = 0;
LABEL_101:
                v87 = v138;

LABEL_102:
                selfCopy8 = self;
                goto LABEL_103;
              }

              if ([v96 count] >= 2)
              {
                _HKInitializeLogging();
                v100 = *MEMORY[0x277CCC328];
                if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_FAULT))
                {
                  v126 = v100;
                  [firstObject zoneIdentifier];
                  v128 = v127 = v96;
                  *v159 = 138543618;
                  *&v159[4] = self;
                  *&v159[12] = 2114;
                  *&v159[14] = v128;
                  _os_log_fault_impl(&dword_228986000, v126, OS_LOG_TYPE_FAULT, "%{public}@ Retrieved multiple registry records for %{public}@. This is unexpected.", v159, 0x16u);

                  v96 = v127;
                }
              }

              firstObject2 = [v96 firstObject];
              if (firstObject2)
              {
                v102 = firstObject2;
                sharedProfileIdentifier = [firstObject2 sharedProfileIdentifier];
                if (sharedProfileIdentifier)
                {
                  v104 = sharedProfileIdentifier;
                  ownerProfileIdentifier = [v102 ownerProfileIdentifier];

                  if (ownerProfileIdentifier)
                  {
                    record = 0;
                    goto LABEL_99;
                  }
                }

                ownerProfileIdentifier2 = [v102 ownerProfileIdentifier];

                if (!ownerProfileIdentifier2)
                {
                  profileIdentifier2 = [repository4 profileIdentifier];
                  [v102 setOwnerProfileIdentifier:profileIdentifier2];
                }

                sharedProfileIdentifier2 = [v102 sharedProfileIdentifier];

                v29 = 0x27860D000;
                if (!sharedProfileIdentifier2)
                {
                  profileIdentifier3 = [repository4 profileIdentifier];
                  v110 = [HDCloudSyncRegistryRecord sharedProfileIdentifierForOwnerProfileIdentifier:profileIdentifier3];
                  [v102 setSharedProfileIdentifier:v110];

                  v29 = 0x27860D000;
                }

                record = [v102 record];
              }

              else
              {
                v111 = [HDCloudSyncRegistryRecord alloc];
                zoneIdentifier3 = [firstObject zoneIdentifier];
                v112ZoneIdentifier = [zoneIdentifier3 zoneIdentifier];
                profileIdentifier4 = [repository4 profileIdentifier];
                v102 = [(HDCloudSyncRegistryRecord *)v111 initInZone:v112ZoneIdentifier ownerProfileIdentifier:profileIdentifier4];

                record = [v102 record];
LABEL_99:
                v29 = 0x27860D000;
              }

              goto LABEL_101;
            }
          }

          selfCopy8 = self;
        }

        v5 = [(NSArray *)obj countByEnumeratingWithState:v159 objects:v157 count:16];
      }

      while (v5);
    }

    v21 = [MEMORY[0x277CCA9B8] hk_error:707 format:{@"Participant not found on any zones: %@", selfCopy8->_participant}];
    [(HDCloudSyncOperation *)selfCopy8 finishWithSuccess:0 error:v21];

    v22 = 0;
LABEL_24:

    return;
  }

  v148 = [MEMORY[0x277CCA9B8] hk_errorForNilArgument:@"_participant" class:objc_opt_class() selector:a2];
  [(HDCloudSyncOperation *)selfCopy8 finishWithSuccess:0 error:?];
}

void __49__HDCloudSyncAddSharingParticipantOperation_main__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 138543618;
    v8 = v6;
    v9 = 2114;
    v10 = v4;
    _os_log_error_impl(&dword_228986000, v5, OS_LOG_TYPE_ERROR, "%{public}@: Failed to update shares: %{public}@", &v7, 0x16u);
  }

  [*(*(a1 + 32) + 144) failTaskWithError:v4];
}

void __49__HDCloudSyncAddSharingParticipantOperation_main__block_invoke_312(uint64_t a1, void *a2)
{
  v66 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138543362;
    v65 = v5;
    _os_log_impl(&dword_228986000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Successfully updated share records", buf, 0xCu);
  }

  v6 = [v3 savedRecords];

  v7 = [v6 hk_map:&__block_literal_global_52];

  v8 = *(a1 + 32);
  v9 = v7;
  if (v8)
  {
    v40 = a1;
    os_unfair_lock_lock((v8 + 104));
    v46 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v45 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v39 = v9;
    obj = v9;
    v43 = [obj countByEnumeratingWithState:&v51 objects:buf count:16];
    if (!v43)
    {
      goto LABEL_33;
    }

    v42 = *v52;
    while (1)
    {
      for (i = 0; i != v43; ++i)
      {
        if (*v52 != v42)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v51 + 1) + 8 * i);
        v12 = [v11 owner];
        [(HDCloudSyncAddSharingParticipantOperation *)v8 _foundOwnerParticipant:v12];

        _HKInitializeLogging();
        v13 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
        {
          *v55 = 138543618;
          v56 = v8;
          v57 = 2114;
          v58 = v11;
          _os_log_impl(&dword_228986000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: Looking for added participant on share: %{public}@", v55, 0x16u);
        }

        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v14 = [v11 participants];
        v15 = [v14 countByEnumeratingWithState:&v47 objects:v63 count:16];
        if (!v15)
        {

LABEL_29:
          _HKInitializeLogging();
          v30 = *MEMORY[0x277CCC328];
          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
          {
            v31 = v30;
            v32 = [v11 participants];
            v33 = [v11 recordID];
            v34 = [v33 zoneID];
            *v55 = 138543874;
            v56 = v8;
            v57 = 2114;
            v58 = v32;
            v59 = 2114;
            v60 = v34;
            _os_log_error_impl(&dword_228986000, v31, OS_LOG_TYPE_ERROR, "%{public}@: Failed to find a matching participant with pending status in the participants (%{public}@) for zone %{public}@", v55, 0x20u);
          }

          continue;
        }

        v16 = v15;
        v44 = i;
        v17 = 0;
        v18 = *v48;
        do
        {
          for (j = 0; j != v16; ++j)
          {
            if (*v48 != v18)
            {
              objc_enumerationMutation(v14);
            }

            v20 = *(*(&v47 + 1) + 8 * j);
            _HKInitializeLogging();
            v21 = *MEMORY[0x277CCC328];
            if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
            {
              *v55 = 138543618;
              v56 = v8;
              v57 = 2114;
              v58 = v20;
              _os_log_impl(&dword_228986000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@: Found candidate participant: %{public}@", v55, 0x16u);
            }

            if ([*(v8 + 120) containsObject:v20])
            {
              if ([v20 acceptanceStatus] == 1)
              {
                v22 = [v11 URL];

                if (v22)
                {
                  v23 = [v11 URL];
                  [v45 addObject:v23];

                  v24 = [v20 invitationToken];
                  v25 = [v11 URL];
                  [v46 setObject:v24 forKeyedSubscript:v25];

                  _HKInitializeLogging();
                  v26 = *MEMORY[0x277CCC328];
                  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
                  {
                    v27 = v26;
                    v28 = [v11 URL];
                    v29 = [v20 invitationToken];
                    *v55 = 138544130;
                    v56 = v8;
                    v57 = 2114;
                    v58 = v20;
                    v59 = 2114;
                    v60 = v28;
                    v61 = 2114;
                    v62 = v29;
                    _os_log_impl(&dword_228986000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@: Found added participant: %{public}@ with share URL: %{public}@ and token: %{public}@", v55, 0x2Au);
                  }

                  v17 = 1;
                }
              }
            }
          }

          v16 = [v14 countByEnumeratingWithState:&v47 objects:v63 count:16];
        }

        while (v16);

        i = v44;
        if ((v17 & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      v43 = [obj countByEnumeratingWithState:&v51 objects:buf count:16];
      if (!v43)
      {
LABEL_33:

        v35 = [*(v8 + 152) arrayByAddingObjectsFromArray:v45];
        v36 = *(v8 + 152);
        *(v8 + 152) = v35;

        v37 = [*(v8 + 160) hk_dictionaryByAddingEntriesFromDictionary:v46];
        v38 = *(v8 + 160);
        *(v8 + 160) = v37;

        os_unfair_lock_unlock((v8 + 104));
        v9 = v39;
        a1 = v40;
        break;
      }
    }
  }

  [*(*(a1 + 32) + 144) finishTask];
}

id __49__HDCloudSyncAddSharingParticipantOperation_main__block_invoke_313(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 hd_isCKShare])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t __88__HDCloudSyncAddSharingParticipantOperation__updatedRegistryRecordIfNeededForContainer___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 zoneType] == 2)
  {
    v4 = [v3 zoneIdentifier];
    v5 = [v4 containerIdentifier];
    v6 = [*(a1 + 32) containerIdentifier];
    v7 = [v5 isEqualToString:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_foundOwnerParticipant:(uint64_t)participant
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = v4;
  if (!*(participant + 168))
  {
    userIdentity = [v4 userIdentity];
    userRecordID = [userIdentity userRecordID];
    recordName = [userRecordID recordName];
    v9 = [recordName isEqualToString:*MEMORY[0x277CBBF28]];

    _HKInitializeLogging();
    v10 = *MEMORY[0x277CCC328];
    v11 = os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      if (v11)
      {
        v12 = 138543618;
        participantCopy2 = participant;
        v14 = 2114;
        v15 = v5;
        _os_log_impl(&dword_228986000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: Ignoring candidate owner %{public}@ with default record name.", &v12, 0x16u);
      }
    }

    else
    {
      if (v11)
      {
        v12 = 138543618;
        participantCopy2 = participant;
        v14 = 2114;
        v15 = v5;
        _os_log_impl(&dword_228986000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: Found owner participant: %{public}@", &v12, 0x16u);
      }

      objc_storeStrong((participant + 168), a2);
    }
  }
}

- (void)synchronousTaskGroup:(id)group didFinishWithSuccess:(BOOL)success errors:(id)errors
{
  successCopy = success;
  firstObject = [errors firstObject];
  [(HDCloudSyncOperation *)self finishWithSuccess:successCopy error:firstObject];
}

@end