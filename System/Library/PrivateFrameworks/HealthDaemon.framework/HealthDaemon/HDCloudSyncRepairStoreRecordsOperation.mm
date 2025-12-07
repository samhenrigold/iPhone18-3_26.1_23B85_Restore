@interface HDCloudSyncRepairStoreRecordsOperation
- (void)_repairRecordsForContainer:(void *)container database:;
- (void)_repairStoreRecordWithRandomOwnerIdentifier:(uint64_t)identifier;
- (void)main;
- (void)synchronousTaskGroup:(id)group didFinishWithSuccess:(BOOL)success errors:(id)errors;
@end

@implementation HDCloudSyncRepairStoreRecordsOperation

- (void)main
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277D10BB0]);
  taskGroup = self->_taskGroup;
  self->_taskGroup = v3;

  [(HDSynchronousTaskGroup *)self->_taskGroup setDelegate:self];
  [(HDSynchronousTaskGroup *)self->_taskGroup beginTask];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  configuration = [(HDCloudSyncOperation *)self configuration];
  repository = [configuration repository];
  allCKContainers = [repository allCKContainers];

  v8 = [allCKContainers countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(allCKContainers);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        privateCloudDatabase = [v12 privateCloudDatabase];
        [(HDCloudSyncRepairStoreRecordsOperation *)self _repairRecordsForContainer:v12 database:privateCloudDatabase];

        sharedCloudDatabase = [v12 sharedCloudDatabase];
        [(HDCloudSyncRepairStoreRecordsOperation *)self _repairRecordsForContainer:v12 database:sharedCloudDatabase];
      }

      v9 = [allCKContainers countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  [(HDSynchronousTaskGroup *)self->_taskGroup finishTask];
}

- (void)_repairRecordsForContainer:(void *)container database:
{
  v152 = *MEMORY[0x277D85DE8];
  v5 = a2;
  containerCopy = container;
  if (self)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    configuration = [self configuration];
    cachedCloudState = [configuration cachedCloudState];
    containerIdentifier = [v5 containerIdentifier];
    v123 = 0;
    v11 = [cachedCloudState zoneIdentifiersForContainerIdentifier:containerIdentifier databaseScope:objc_msgSend(containerCopy error:{"databaseScope"), &v123}];
    v12 = v123;

    v100 = v12;
    v94 = v11;
    if (!v11 && v12)
    {
      _HKInitializeLogging();
      v13 = *MEMORY[0x277CCC328];
      if (!os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
LABEL_74:

        goto LABEL_75;
      }

      v14 = v13;
      containerIdentifier2 = [v5 containerIdentifier];
      [containerCopy databaseScope];
      v16 = CKDatabaseScopeString();
      *buf = 138544130;
      selfCopy6 = self;
      v146 = 2114;
      v147 = containerIdentifier2;
      v148 = 2114;
      v149 = v16;
      v150 = 2114;
      v151 = v12;
      _os_log_error_impl(&dword_228986000, v14, OS_LOG_TYPE_ERROR, "%{public}@ Failed to get zone identifiers for container %{public}@, database %{public}@, %{public}@", buf, 0x2Au);
      goto LABEL_77;
    }

    if (!v11)
    {
      _HKInitializeLogging();
      v92 = *MEMORY[0x277CCC328];
      if (!os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_74;
      }

      v14 = v92;
      containerIdentifier2 = [v5 containerIdentifier];
      [containerCopy databaseScope];
      v16 = CKDatabaseScopeString();
      *buf = 138543874;
      selfCopy6 = self;
      v146 = 2114;
      v147 = containerIdentifier2;
      v148 = 2114;
      v149 = v16;
      _os_log_debug_impl(&dword_228986000, v14, OS_LOG_TYPE_DEBUG, "%{public}@ No zones cached for container %{public}@, database %{public}@", buf, 0x20u);
LABEL_77:

LABEL_72:
      goto LABEL_74;
    }

    v121 = 0u;
    v122 = 0u;
    v119 = 0u;
    v120 = 0u;
    obj = v11;
    v17 = v5;
    v95 = v7;
    v96 = v5;
    v93 = containerCopy;
    v101 = [obj countByEnumeratingWithState:&v119 objects:v130 count:16];
    if (!v101)
    {
LABEL_57:

      v14 = v7;
      v5 = v17;
      v69 = v17;
      containerCopy = v93;
      v70 = v93;
      if (v14 && [v14 count])
      {
        _HKInitializeLogging();
        v71 = MEMORY[0x277CCC328];
        v72 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
        {
          v73 = v72;
          v74 = [v14 count];
          containerIdentifier3 = [v69 containerIdentifier];
          v76 = HDCKDatabaseScopeToString([v70 databaseScope]);
          *buf = 138544130;
          selfCopy6 = self;
          v146 = 2048;
          v147 = v74;
          v148 = 2114;
          v149 = containerIdentifier3;
          v150 = 2114;
          v151 = v76;
          _os_log_impl(&dword_228986000, v73, OS_LOG_TYPE_DEFAULT, "%{public}@: Saving %ld repaired records in %{public}@:%{public}@", buf, 0x2Au);
        }

        v113 = v70;
        v115 = v69;
        selfCopy4 = self;
        v133 = 0u;
        v134 = 0u;
        v131 = 0u;
        v132 = 0u;
        v117 = v14;
        v78 = v14;
        v79 = [v78 countByEnumeratingWithState:&v131 objects:buf count:16];
        if (v79)
        {
          v80 = v79;
          v81 = *v132;
          do
          {
            for (i = 0; i != v80; ++i)
            {
              if (*v132 != v81)
              {
                objc_enumerationMutation(v78);
              }

              v83 = *(*(&v131 + 1) + 8 * i);
              _HKInitializeLogging();
              v84 = *v71;
              if (os_log_type_enabled(*v71, OS_LOG_TYPE_DEFAULT))
              {
                v85 = v84;
                recordID = [v83 recordID];
                *v135 = 138543618;
                *&v135[4] = selfCopy4;
                *&v135[12] = 2114;
                *&v135[14] = recordID;
                _os_log_impl(&dword_228986000, v85, OS_LOG_TYPE_DEFAULT, "%{public}@: Repaired %{public}@", v135, 0x16u);
              }
            }

            v80 = [v78 countByEnumeratingWithState:&v131 objects:buf count:16];
          }

          while (v80);
        }

        v87 = selfCopy4;
        [selfCopy4[13] beginTask];
        v88 = [v78 hk_map:&__block_literal_global_175];
        v89 = [HDCloudSyncModifyRecordsOperation alloc];
        configuration2 = [selfCopy4 configuration];
        v69 = v115;
        v91 = [(HDCloudSyncModifyRecordsOperation *)v89 initWithConfiguration:configuration2 container:v115 recordsToSave:v88 recordIDsToDelete:0];

        *v135 = MEMORY[0x277D85DD0];
        *&v135[8] = 3221225472;
        *&v135[16] = __82__HDCloudSyncRepairStoreRecordsOperation__saveRepairedRecords_container_database___block_invoke_2;
        *&v135[24] = &unk_278613088;
        *&v136 = v87;
        [(HDCloudSyncOperation *)v91 setOnError:v135];
        *&v124 = MEMORY[0x277D85DD0];
        *(&v124 + 1) = 3221225472;
        *&v125 = __82__HDCloudSyncRepairStoreRecordsOperation__saveRepairedRecords_container_database___block_invoke_3;
        *(&v125 + 1) = &unk_278613060;
        *&v126 = v87;
        [(HDCloudSyncOperation *)v91 setOnSuccess:&v124];
        [(HDCloudSyncOperation *)v91 start];

        v7 = v95;
        v5 = v96;
        containerCopy = v93;
        v12 = v100;
        v14 = v117;
        v70 = v113;
      }

      goto LABEL_72;
    }

    v99 = *v120;
    v18 = MEMORY[0x277CCC328];
    selfCopy5 = self;
LABEL_9:
    v19 = 0;
    while (1)
    {
      if (*v120 != v99)
      {
        objc_enumerationMutation(obj);
      }

      v103 = v19;
      v20 = *(*(&v119 + 1) + 8 * v19);
      v106 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v21 = [HDCloudSyncCachedZone alloc];
      configuration3 = [self configuration];
      repository = [configuration3 repository];
      configuration4 = [self configuration];
      accessibilityAssertion = [configuration4 accessibilityAssertion];
      v107 = v20;
      v26 = [(HDCloudSyncCachedZone *)v21 initForZoneIdentifier:v20 repository:repository accessibilityAssertion:accessibilityAssertion];

      v27 = v26;
      v28 = objc_opt_class();
      v128 = 0;
      v29 = [v26 recordsForClass:v28 error:&v128];
      v30 = v128;
      v31 = v29 || v30 == 0;
      v102 = v30;
      if (v31)
      {
        break;
      }

      v64 = v30;
      _HKInitializeLogging();
      v65 = *v18;
      if (os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
      {
        v67 = v65;
        zoneIdentifier = [v27 zoneIdentifier];
        *buf = 138543874;
        selfCopy6 = self;
        v146 = 2114;
        v147 = zoneIdentifier;
        v148 = 2114;
        v149 = v64;
        _os_log_error_impl(&dword_228986000, v67, OS_LOG_TYPE_ERROR, "%{public}@ Failed to get store records for %{public}@, %{public}@", buf, 0x20u);
      }

LABEL_54:
      v62 = 0;
      v63 = v103;
      v33 = v106;
      v32 = v107;
LABEL_55:

      [v7 addObjectsFromArray:v62];
      v19 = v63 + 1;
      v12 = v100;
      if (v19 == v101)
      {
        v101 = [obj countByEnumeratingWithState:&v119 objects:v130 count:16];
        if (!v101)
        {
          goto LABEL_57;
        }

        goto LABEL_9;
      }
    }

    if (!v29)
    {
      goto LABEL_54;
    }

    v126 = 0u;
    v127 = 0u;
    v124 = 0u;
    v125 = 0u;
    v98 = v29;
    v111 = v29;
    v33 = v106;
    v32 = v107;
    v116 = [v111 countByEnumeratingWithState:&v124 objects:&v131 count:16];
    if (!v116)
    {
      goto LABEL_51;
    }

    v114 = *v125;
    v105 = v26;
LABEL_20:
    v34 = 0;
    while (1)
    {
      if (*v125 != v114)
      {
        objc_enumerationMutation(v111);
      }

      v35 = *(*(&v124 + 1) + 8 * v34);
      ownerIdentifier = [v35 ownerIdentifier];

      if (ownerIdentifier)
      {
        goto LABEL_49;
      }

      if ([v32 type] != 2)
      {
        break;
      }

      v118 = v35;
      v37 = v27;
      v38 = objc_opt_class();
      v129 = 0;
      v110 = v37;
      v39 = [v37 recordsForClass:v38 error:&v129];
      v40 = v129;
      v109 = v40;
      if (v39 || !v40)
      {
        if (v39)
        {
          v108 = v39;
          if ([v39 count] >= 2)
          {
            _HKInitializeLogging();
            v44 = *v18;
            if (os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
            {
              v60 = v44;
              zoneIdentifier2 = [v110 zoneIdentifier];
              *v138 = 138543618;
              selfCopy8 = self;
              v140 = 2114;
              v141 = zoneIdentifier2;
              _os_log_error_impl(&dword_228986000, v60, OS_LOG_TYPE_ERROR, "%{public}@ Retrieved multiple cached registry records for %{public}@,", v138, 0x16u);
            }
          }

          firstObject = [v39 firstObject];
          ownerIdentifiers = [firstObject ownerIdentifiers];
          memset(v135, 0, sizeof(v135));
          v136 = 0u;
          v137 = 0u;
          v112 = ownerIdentifiers;
          v47 = [v112 countByEnumeratingWithState:v135 objects:buf count:16];
          if (v47)
          {
            v48 = v47;
            v49 = **&v135[16];
            while (2)
            {
              for (j = 0; j != v48; ++j)
              {
                if (**&v135[16] != v49)
                {
                  objc_enumerationMutation(v112);
                }

                v51 = *(*&v135[8] + 8 * j);
                v52 = [firstObject storeIdentifiersForOwnerIdentifier:v51];
                storeIdentifier = [v118 storeIdentifier];
                v54 = [v52 containsObject:storeIdentifier];

                if (v54)
                {
                  _HKInitializeLogging();
                  v18 = MEMORY[0x277CCC328];
                  v57 = *MEMORY[0x277CCC328];
                  self = selfCopy5;
                  v56 = v118;
                  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
                  {
                    v58 = v57;
                    storeIdentifier2 = [v118 storeIdentifier];
                    *v138 = 138543874;
                    selfCopy8 = selfCopy5;
                    v140 = 2114;
                    v141 = storeIdentifier2;
                    v142 = 2114;
                    v143 = v51;
                    _os_log_impl(&dword_228986000, v58, OS_LOG_TYPE_DEFAULT, "%{public}@: Found broken store identifier %{public}@ in set for owner %{public}@; repairing.", v138, 0x20u);
                  }

                  [v118 repairOwnerIdentifier:v51];
                  [v118 setRepaired:1];
                  v55 = v112;

                  goto LABEL_47;
                }
              }

              v48 = [v112 countByEnumeratingWithState:v135 objects:buf count:16];
              if (v48)
              {
                continue;
              }

              break;
            }
          }

          v55 = v112;

          self = selfCopy5;
          v56 = v118;
          [(HDCloudSyncRepairStoreRecordsOperation *)selfCopy5 _repairStoreRecordWithRandomOwnerIdentifier:v118];
          v18 = MEMORY[0x277CCC328];
LABEL_47:

          v33 = v106;
          v32 = v107;
          v27 = v105;
          goto LABEL_48;
        }
      }

      else
      {
        _HKInitializeLogging();
        v41 = *v18;
        if (os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
        {
          v42 = v41;
          zoneIdentifier3 = [v110 zoneIdentifier];
          *v138 = 138543874;
          selfCopy8 = self;
          v140 = 2114;
          v141 = zoneIdentifier3;
          v142 = 2114;
          v143 = v109;
          _os_log_error_impl(&dword_228986000, v42, OS_LOG_TYPE_ERROR, "%{public}@ Failed to get registry records for %{public}@, %{public}@", v138, 0x20u);

          v27 = v105;
        }
      }

LABEL_49:
      if (++v34 == v116)
      {
        v116 = [v111 countByEnumeratingWithState:&v124 objects:&v131 count:16];
        if (!v116)
        {
LABEL_51:

          v62 = v33;
          v7 = v95;
          v17 = v96;
          v63 = v103;
          v29 = v98;
          goto LABEL_55;
        }

        goto LABEL_20;
      }
    }

    [(HDCloudSyncRepairStoreRecordsOperation *)self _repairStoreRecordWithRandomOwnerIdentifier:v35];
LABEL_48:
    [v33 addObject:{v35, v93}];
    goto LABEL_49;
  }

LABEL_75:
}

- (void)_repairStoreRecordWithRandomOwnerIdentifier:(uint64_t)identifier
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    storeIdentifier = [v3 storeIdentifier];
    *buf = 138543618;
    identifierCopy = identifier;
    v17 = 2114;
    v18 = storeIdentifier;
    _os_log_impl(&dword_228986000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Repairing broken store record with identifier %{public}@ by generating random owner identifier.", buf, 0x16u);
  }

  v7 = MEMORY[0x277CCACA8];
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  uUID2 = [MEMORY[0x277CCAD78] UUID];
  uUIDString2 = [uUID2 UUIDString];
  uUID3 = [MEMORY[0x277CCAD78] UUID];
  uUIDString3 = [uUID3 UUIDString];
  v14 = [v7 stringWithFormat:@"%@:%@:%@", uUIDString, uUIDString2, uUIDString3];
  [v3 repairOwnerIdentifier:v14];

  [v3 setRepaired:1];
}

- (void)synchronousTaskGroup:(id)group didFinishWithSuccess:(BOOL)success errors:(id)errors
{
  successCopy = success;
  firstObject = [errors firstObject];
  [(HDCloudSyncOperation *)self finishWithSuccess:successCopy error:firstObject];
}

@end