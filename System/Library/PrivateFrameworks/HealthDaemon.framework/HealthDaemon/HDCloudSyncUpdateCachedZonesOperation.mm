@interface HDCloudSyncUpdateCachedZonesOperation
- (HDCloudSyncUpdateCachedZonesOperation)initWithConfiguration:(id)configuration cloudState:(id)state;
- (uint64_t)_updateCKCachedZonesWithServerChangeToken:(void *)token recordZonesIDsToAdd:(void *)add recordZonesIDsToDelete:(void *)delete container:(void *)container database:(void *)database error:;
- (void)fetchChangesForContainer:(id)container database:(id)database;
- (void)main;
- (void)synchronousTaskGroup:(id)group didFinishWithSuccess:(BOOL)success errors:(id)errors;
@end

@implementation HDCloudSyncUpdateCachedZonesOperation

- (HDCloudSyncUpdateCachedZonesOperation)initWithConfiguration:(id)configuration cloudState:(id)state
{
  v8.receiver = self;
  v8.super_class = HDCloudSyncUpdateCachedZonesOperation;
  v4 = [(HDCloudSyncOperation *)&v8 initWithConfiguration:configuration cloudState:0];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277D10BB0]);
    taskGroup = v4->_taskGroup;
    v4->_taskGroup = v5;

    [(HDSynchronousTaskGroup *)v4->_taskGroup setDelegate:v4];
  }

  return v4;
}

- (void)main
{
  v29 = *MEMORY[0x277D85DE8];
  [(HDSynchronousTaskGroup *)self->_taskGroup beginTask];
  configuration = [(HDCloudSyncOperation *)self configuration];
  repository = [configuration repository];
  allCKContainers = [repository allCKContainers];
  allObjects = [allCKContainers allObjects];

  _HKInitializeLogging();
  v7 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = [allObjects count];
    v10 = [allObjects componentsJoinedByString:{@", "}];
    *buf = 138543874;
    selfCopy = self;
    v25 = 2048;
    v26 = v9;
    v27 = 2114;
    v28 = v10;
    _os_log_impl(&dword_228986000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: Beginning fetches for private database in %ld containers: %{public}@", buf, 0x20u);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = allObjects;
  v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v18 + 1) + 8 * i);
        privateCloudDatabase = [v16 privateCloudDatabase];
        [(HDCloudSyncUpdateCachedZonesOperation *)self fetchChangesForContainer:v16 database:privateCloudDatabase];
      }

      v13 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v13);
  }

  [(HDSynchronousTaskGroup *)self->_taskGroup finishTask];
}

- (void)fetchChangesForContainer:(id)container database:(id)database
{
  v59 = *MEMORY[0x277D85DE8];
  containerCopy = container;
  databaseCopy = database;
  v49[0] = 0;
  v49[1] = v49;
  v49[2] = 0x2810000000;
  v49[3] = &unk_22929BC4D;
  v50 = 0;
  v47[0] = 0;
  v47[1] = v47;
  v47[2] = 0x3032000000;
  v47[3] = __Block_byref_object_copy__2;
  v47[4] = __Block_byref_object_dispose__2;
  v48 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v45[0] = 0;
  v45[1] = v45;
  v45[2] = 0x3032000000;
  v45[3] = __Block_byref_object_copy__2;
  v45[4] = __Block_byref_object_dispose__2;
  v46 = objc_alloc_init(MEMORY[0x277CBEB18]);
  configuration = [(HDCloudSyncOperation *)self configuration];
  cachedCloudState = [configuration cachedCloudState];
  containerIdentifier = [containerCopy containerIdentifier];
  v44 = 0;
  v11 = [cachedCloudState serverChangeTokenForContainerIdentifier:containerIdentifier databaseScope:objc_msgSend(databaseCopy error:{"databaseScope"), &v44}];
  v12 = v44;

  if (v12)
  {
    _HKInitializeLogging();
    v13 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      containerIdentifier2 = [containerCopy containerIdentifier];
      databaseScope = [databaseCopy databaseScope];
      *buf = 138544130;
      selfCopy = self;
      v53 = 2114;
      v54 = containerIdentifier2;
      v55 = 2048;
      v56 = databaseScope;
      v57 = 2114;
      v58 = v12;
      _os_log_error_impl(&dword_228986000, v13, OS_LOG_TYPE_ERROR, "%{public}@ Failed to fetch server change token for container %{public}@, database, %ld, %{public}@", buf, 0x2Au);
    }
  }

  v14 = [objc_alloc(MEMORY[0x277CBC388]) initWithPreviousServerChangeToken:v11];
  [v14 setFetchAllChanges:1];
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __75__HDCloudSyncUpdateCachedZonesOperation_fetchChangesForContainer_database___block_invoke;
  v43[3] = &unk_278613768;
  v43[4] = v49;
  v43[5] = v47;
  [v14 setRecordZoneWithIDChangedBlock:v43];
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __75__HDCloudSyncUpdateCachedZonesOperation_fetchChangesForContainer_database___block_invoke_2;
  v42[3] = &unk_278613768;
  v42[4] = v49;
  v42[5] = v45;
  [v14 setRecordZoneWithIDWasDeletedBlock:v42];
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __75__HDCloudSyncUpdateCachedZonesOperation_fetchChangesForContainer_database___block_invoke_3;
  v41[3] = &unk_278613768;
  v41[4] = v49;
  v41[5] = v45;
  [v14 setRecordZoneWithIDWasPurgedBlock:v41];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __75__HDCloudSyncUpdateCachedZonesOperation_fetchChangesForContainer_database___block_invoke_4;
  v35[3] = &unk_278613790;
  v39 = v47;
  v40 = v45;
  v38 = v49;
  v35[4] = self;
  v15 = containerCopy;
  v36 = v15;
  v16 = databaseCopy;
  v37 = v16;
  [v14 setChangeTokenUpdatedBlock:v35];
  v25 = MEMORY[0x277D85DD0];
  v26 = 3221225472;
  v27 = __75__HDCloudSyncUpdateCachedZonesOperation_fetchChangesForContainer_database___block_invoke_299;
  v28 = &unk_2786137B8;
  v33 = v47;
  v34 = v45;
  v32 = v49;
  selfCopy2 = self;
  v17 = v15;
  v30 = v17;
  v18 = v16;
  v31 = v18;
  [v14 setFetchDatabaseChangesCompletionBlock:&v25];
  [(HDSynchronousTaskGroup *)self->_taskGroup beginTask:v25];
  configuration2 = [(HDCloudSyncOperation *)self configuration];
  cachedCloudState2 = [configuration2 cachedCloudState];
  [cachedCloudState2 setOperationCountForAnalytics:{objc_msgSend(cachedCloudState2, "operationCountForAnalytics") + 1}];

  configuration3 = [(HDCloudSyncOperation *)self configuration];
  operationGroup = [configuration3 operationGroup];
  [v14 setGroup:operationGroup];

  [v18 hd_addOperation:v14];
  _Block_object_dispose(v45, 8);

  _Block_object_dispose(v47, 8);
  _Block_object_dispose(v49, 8);
}

void __75__HDCloudSyncUpdateCachedZonesOperation_fetchChangesForContainer_database___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 8);
  v4 = a2;
  os_unfair_lock_lock(v3 + 8);
  [*(*(*(a1 + 40) + 8) + 40) addObject:v4];

  v5 = (*(*(a1 + 32) + 8) + 32);

  os_unfair_lock_unlock(v5);
}

void __75__HDCloudSyncUpdateCachedZonesOperation_fetchChangesForContainer_database___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 8);
  v4 = a2;
  os_unfair_lock_lock(v3 + 8);
  [*(*(*(a1 + 40) + 8) + 40) addObject:v4];

  v5 = (*(*(a1 + 32) + 8) + 32);

  os_unfair_lock_unlock(v5);
}

void __75__HDCloudSyncUpdateCachedZonesOperation_fetchChangesForContainer_database___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 8);
  v4 = a2;
  os_unfair_lock_lock(v3 + 8);
  [*(*(*(a1 + 40) + 8) + 40) addObject:v4];

  v5 = (*(*(a1 + 32) + 8) + 32);

  os_unfair_lock_unlock(v5);
}

void __75__HDCloudSyncUpdateCachedZonesOperation_fetchChangesForContainer_database___block_invoke_4(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = *(*(a1 + 56) + 8);
  v4 = a2;
  os_unfair_lock_lock(v3 + 8);
  v5 = objc_msgSend_copy(*(*(*(a1 + 64) + 8) + 40));
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v7 = *(*(a1 + 64) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = objc_msgSend_copy(*(*(*(a1 + 72) + 8) + 40));
  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v11 = *(*(a1 + 72) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  os_unfair_lock_unlock((*(*(a1 + 56) + 8) + 32));
  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  v15 = *(a1 + 48);
  v24 = 0;
  v16 = [(HDCloudSyncUpdateCachedZonesOperation *)v13 _updateCKCachedZonesWithServerChangeToken:v4 recordZonesIDsToAdd:v5 recordZonesIDsToDelete:v9 container:v14 database:v15 error:&v24];

  v17 = v24;
  if ((v16 & 1) == 0)
  {
    _HKInitializeLogging();
    v18 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v20 = *(a1 + 32);
      v19 = *(a1 + 40);
      v21 = v18;
      v22 = [v19 containerIdentifier];
      [*(a1 + 48) databaseScope];
      v23 = CKDatabaseScopeString();
      *buf = 138544386;
      v26 = v20;
      v27 = 2080;
      v28 = "[HDCloudSyncUpdateCachedZonesOperation fetchChangesForContainer:database:]_block_invoke_4";
      v29 = 2114;
      v30 = v22;
      v31 = 2114;
      v32 = v23;
      v33 = 2114;
      v34 = v17;
      _os_log_error_impl(&dword_228986000, v21, OS_LOG_TYPE_ERROR, "%{public}@ %s@: Failed to cache zones for container %{public}@, database %{public}@, %{public}@", buf, 0x34u);
    }
  }
}

- (uint64_t)_updateCKCachedZonesWithServerChangeToken:(void *)token recordZonesIDsToAdd:(void *)add recordZonesIDsToDelete:(void *)delete container:(void *)container database:(void *)database error:
{
  v139 = *MEMORY[0x277D85DE8];
  v13 = a2;
  tokenCopy = token;
  addCopy = add;
  deleteCopy = delete;
  containerCopy = container;
  selfCopy = self;
  if (self)
  {
    v15 = [tokenCopy count];
    v16 = MEMORY[0x277CCC328];
    v94 = v13;
    databaseCopy = database;
    if (v15 || [addCopy count])
    {
      _HKInitializeLogging();
      v17 = *v16;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = v17;
        v19 = [tokenCopy count];
        v20 = [addCopy count];
        [containerCopy databaseScope];
        v21 = CKDatabaseScopeString();
        containerIdentifier = [deleteCopy containerIdentifier];
        *buf = 138544386;
        selfCopy2 = self;
        v131 = 2048;
        v132 = v19;
        v133 = 2048;
        v134 = v20;
        v135 = 2114;
        v136 = v21;
        v137 = 2114;
        v138 = containerIdentifier;
        _os_log_impl(&dword_228986000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@: Found %ld modified and %ld deleted zone changes for %{public}@ database in %{public}@", buf, 0x34u);
      }

      v112 = 0u;
      v113 = 0u;
      v110 = 0u;
      v111 = 0u;
      obj = tokenCopy;
      v23 = [obj countByEnumeratingWithState:&v110 objects:v122 count:16];
      v24 = MEMORY[0x277CCC328];
      if (v23)
      {
        v25 = v23;
        v26 = 0;
        v27 = *v111;
        do
        {
          for (i = 0; i != v25; ++i)
          {
            if (*v111 != v27)
            {
              objc_enumerationMutation(obj);
            }

            v29 = *(*(&v110 + 1) + 8 * i);
            _HKInitializeLogging();
            v30 = *v24;
            if (os_log_type_enabled(*v24, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218242;
              selfCopy2 = v26;
              v131 = 2114;
              v132 = v29;
              _os_log_impl(&dword_228986000, v30, OS_LOG_TYPE_DEFAULT, "Modified:\t%ld: + %{public}@", buf, 0x16u);
            }

            ++v26;
          }

          v25 = [obj countByEnumeratingWithState:&v110 objects:v122 count:16];
        }

        while (v25);
      }

      v108 = 0u;
      v109 = 0u;
      v106 = 0u;
      v107 = 0u;
      v31 = addCopy;
      v32 = [v31 countByEnumeratingWithState:&v106 objects:v121 count:16];
      if (v32)
      {
        v33 = v32;
        v34 = 0;
        v35 = *v107;
        do
        {
          for (j = 0; j != v33; ++j)
          {
            if (*v107 != v35)
            {
              objc_enumerationMutation(v31);
            }

            v37 = *(*(&v106 + 1) + 8 * j);
            _HKInitializeLogging();
            v38 = *MEMORY[0x277CCC328];
            if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218242;
              selfCopy2 = v34;
              v131 = 2114;
              v132 = v37;
              _os_log_impl(&dword_228986000, v38, OS_LOG_TYPE_DEFAULT, "Deleted: \t%ld: + %{public}@", buf, 0x16u);
            }

            ++v34;
          }

          v33 = [v31 countByEnumeratingWithState:&v106 objects:v121 count:16];
        }

        while (v33);
      }

      v104[0] = MEMORY[0x277D85DD0];
      v104[1] = 3221225472;
      v104[2] = __151__HDCloudSyncUpdateCachedZonesOperation__updateCKCachedZonesWithServerChangeToken_recordZonesIDsToAdd_recordZonesIDsToDelete_container_database_error___block_invoke;
      v104[3] = &unk_2786137E0;
      v105 = v31;
      tokenCopy = [obj hk_filter:v104];

      v13 = v94;
    }

    configuration = [selfCopy configuration];
    cachedCloudState = [configuration cachedCloudState];
    [cachedCloudState setChangedZonesCount:{objc_msgSend(cachedCloudState, "changedZonesCount") + objc_msgSend(tokenCopy, "count")}];

    configuration2 = [selfCopy configuration];
    cachedCloudState2 = [configuration2 cachedCloudState];
    [cachedCloudState2 setDeletedZonesCount:{objc_msgSend(cachedCloudState2, "deletedZonesCount") + objc_msgSend(addCopy, "count")}];

    containerIdentifier2 = [deleteCopy containerIdentifier];
    obja = [containerCopy databaseScope];
    v44 = tokenCopy;
    v93 = addCopy;
    v92 = v13;
    v45 = containerIdentifier2;
    v46 = v44;
    v47 = v45;
    v117 = 0u;
    v118 = 0u;
    v119 = 0u;
    v120 = 0u;
    tokenCopy = v46;
    v48 = [tokenCopy countByEnumeratingWithState:&v117 objects:buf count:16];
    v101 = tokenCopy;
    if (v48)
    {
      v49 = v48;
      v50 = 0;
      v51 = *v118;
      while (2)
      {
        v52 = 0;
        v53 = v50;
        do
        {
          if (*v118 != v51)
          {
            objc_enumerationMutation(v101);
          }

          v54 = v47;
          v55 = [[HDCloudSyncZoneIdentifier alloc] initForZone:*(*(&v117 + 1) + 8 * v52) container:v47 scope:obja];
          configuration3 = [selfCopy configuration];
          cachedCloudState3 = [configuration3 cachedCloudState];
          v116 = v53;
          v58 = [cachedCloudState3 addZoneWithIdentifier:v55 error:&v116];
          v50 = v116;

          if ((v58 & 1) == 0)
          {
            _HKInitializeLogging();
            v59 = *MEMORY[0x277CCC328];
            if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
            {
              *v123 = 138543874;
              v124 = selfCopy;
              v125 = 2114;
              v126 = v55;
              v127 = 2114;
              v128 = v50;
              _os_log_error_impl(&dword_228986000, v59, OS_LOG_TYPE_ERROR, "%{public}@ Failed to add cached record zone %{public}@, %{public}@", v123, 0x20u);
            }

            v50 = v50;
            tokenCopy = v101;
            v47 = v54;
            if (v50)
            {
              if (databaseCopy)
              {
                v60 = v50;
                *databaseCopy = v50;
              }

              else
              {
                _HKLogDroppedError();
              }
            }

            v123[0] = v50 == 0;
            goto LABEL_43;
          }

          ++v52;
          v53 = v50;
          v47 = v54;
        }

        while (v49 != v52);
        tokenCopy = v101;
        v49 = [v101 countByEnumeratingWithState:&v117 objects:buf count:16];
        if (v49)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v50 = 0;
    }

    v123[0] = 1;
LABEL_43:

    v61 = v123[0];
    if (v61 != 1)
    {
      goto LABEL_65;
    }

    v62 = v93;
    v90 = v47;
    v63 = v47;
    v117 = 0u;
    v118 = 0u;
    v119 = 0u;
    v120 = 0u;
    v64 = v62;
    v65 = [v64 countByEnumeratingWithState:&v117 objects:buf count:16];
    v98 = v64;
    if (v65)
    {
      v66 = v65;
      v67 = 0;
      v99 = *v118;
      while (2)
      {
        v68 = 0;
        v69 = v67;
        do
        {
          if (*v118 != v99)
          {
            objc_enumerationMutation(v98);
          }

          v70 = v63;
          v71 = [[HDCloudSyncZoneIdentifier alloc] initForZone:*(*(&v117 + 1) + 8 * v68) container:v63 scope:obja];
          v72 = [HDCloudSyncCachedZone alloc];
          configuration4 = [selfCopy configuration];
          repository = [configuration4 repository];
          configuration5 = [selfCopy configuration];
          accessibilityAssertion = [configuration5 accessibilityAssertion];
          v77 = [(HDCloudSyncCachedZone *)v72 initForZoneIdentifier:v71 repository:repository accessibilityAssertion:accessibilityAssertion];

          v116 = v69;
          LOBYTE(accessibilityAssertion) = [v77 deleteZoneWithError:&v116];
          v67 = v116;

          if ((accessibilityAssertion & 1) == 0)
          {
            _HKInitializeLogging();
            v78 = *MEMORY[0x277CCC328];
            if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
            {
              *v123 = 138543874;
              v124 = selfCopy;
              v125 = 2114;
              v126 = v71;
              v127 = 2114;
              v128 = v67;
              _os_log_error_impl(&dword_228986000, v78, OS_LOG_TYPE_ERROR, "%{public}@ Failed to delete cached record zone %{public}@, %{public}@", v123, 0x20u);
            }

            v67 = v67;
            tokenCopy = v101;
            v63 = v70;
            v64 = v98;
            if (v67)
            {
              if (databaseCopy)
              {
                v79 = v67;
                *databaseCopy = v67;
              }

              else
              {
                _HKLogDroppedError();
              }
            }

            v123[0] = v67 == 0;
            goto LABEL_62;
          }

          ++v68;
          v69 = v67;
          v63 = v70;
        }

        while (v66 != v68);
        v64 = v98;
        v66 = [v98 countByEnumeratingWithState:&v117 objects:buf count:16];
        if (v66)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v67 = 0;
    }

    v123[0] = 1;
    tokenCopy = v101;
LABEL_62:

    v80 = v123[0];
    v47 = v90;
    if (v80 == 1)
    {
      configuration6 = [selfCopy configuration];
      cachedCloudState4 = [configuration6 cachedCloudState];
      v115 = 0;
      v83 = [cachedCloudState4 setServerChangeToken:v92 containerIdentifier:v63 databaseScope:obja error:&v115];
      v84 = v115;

      if (v83)
      {

LABEL_75:
        v114 = 1;
        v13 = v94;
        goto LABEL_68;
      }

      _HKInitializeLogging();
      v86 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        *buf = 138544130;
        selfCopy2 = selfCopy;
        v131 = 2114;
        v132 = v63;
        v133 = 2048;
        v134 = obja;
        v135 = 2114;
        v136 = v84;
        _os_log_error_impl(&dword_228986000, v86, OS_LOG_TYPE_ERROR, "%{public}@ Failed to update cached server change token for container %{public}@, database, %ld, %{public}@", buf, 0x2Au);
      }

      v87 = v84;
      if (!v87)
      {

        goto LABEL_75;
      }

      v88 = v87;
      if (databaseCopy)
      {
        v89 = v87;
        *databaseCopy = v88;
      }

      else
      {
        _HKLogDroppedError();
      }

      v13 = v94;
    }

    else
    {
LABEL_65:

      v13 = v94;
    }
  }

  v114 = 0;
LABEL_68:

  return v114;
}

void __75__HDCloudSyncUpdateCachedZonesOperation_fetchChangesForContainer_database___block_invoke_299(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v91 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = *(*(a1 + 56) + 8);
  v8 = a2;
  os_unfair_lock_lock(v7 + 8);
  v9 = objc_msgSend_copy(*(*(*(a1 + 64) + 8) + 40));
  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v11 = *(*(a1 + 64) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  v13 = objc_msgSend_copy(*(*(*(a1 + 72) + 8) + 40));
  v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v15 = *(*(a1 + 72) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v14;

  os_unfair_lock_unlock((*(*(a1 + 56) + 8) + 32));
  v17 = *(a1 + 32);
  v18 = *(a1 + 40);
  v19 = *(a1 + 48);
  v80 = 0;
  v20 = [(HDCloudSyncUpdateCachedZonesOperation *)v17 _updateCKCachedZonesWithServerChangeToken:v8 recordZonesIDsToAdd:v9 recordZonesIDsToDelete:v13 container:v18 database:v19 error:&v80];

  v21 = v80;
  v22 = MEMORY[0x277CCC328];
  if (v6)
  {
    v77 = v20;
    _HKInitializeLogging();
    v23 = *v22;
    if (os_log_type_enabled(*v22, OS_LOG_TYPE_ERROR))
    {
      v56 = v13;
      v57 = *(a1 + 32);
      v58 = *(a1 + 40);
      v59 = v23;
      v60 = [v58 containerIdentifier];
      [*(a1 + 48) databaseScope];
      CKDatabaseScopeString();
      v62 = v61 = v21;
      *buf = 138544386;
      v82 = v57;
      v83 = 2080;
      v84 = "[HDCloudSyncUpdateCachedZonesOperation fetchChangesForContainer:database:]_block_invoke";
      v85 = 2114;
      v86 = v60;
      v87 = 2114;
      v88 = v62;
      v89 = 2114;
      v90 = v6;
      _os_log_error_impl(&dword_228986000, v59, OS_LOG_TYPE_ERROR, "%{public}@ %s@: Failed to fetch database changes for container %{public}@, database %{public}@, %{public}@", buf, 0x34u);

      v13 = v56;
      v21 = v61;
    }

    v78 = v13;
    if ([v6 hk_isErrorInDomain:*MEMORY[0x277CBBF50] code:21])
    {
      v74 = v6;
      v75 = v21;
      v76 = v9;
      os_unfair_lock_lock((*(*(a1 + 56) + 8) + 32));
      [*(*(*(a1 + 64) + 8) + 40) removeAllObjects];
      [*(*(*(a1 + 72) + 8) + 40) removeAllObjects];
      os_unfair_lock_unlock((*(*(a1 + 56) + 8) + 32));
      v24 = [*(a1 + 32) configuration];
      v25 = [v24 cachedCloudState];
      v26 = [*(a1 + 40) containerIdentifier];
      v27 = [*(a1 + 48) databaseScope];
      v79 = 0;
      v28 = [v25 resetServerChangeTokenForContainerIdentifier:v26 databaseScope:v27 error:&v79];
      v29 = v79;

      if ((v28 & 1) == 0)
      {
        _HKInitializeLogging();
        v30 = *v22;
        if (os_log_type_enabled(*v22, OS_LOG_TYPE_ERROR))
        {
          v68 = *(a1 + 32);
          v69 = *(a1 + 40);
          v70 = v30;
          v71 = [v69 containerIdentifier];
          [*(a1 + 48) databaseScope];
          v72 = CKDatabaseScopeString();
          *buf = 138544130;
          v82 = v68;
          v83 = 2114;
          v84 = v71;
          v85 = 2114;
          v86 = v72;
          v87 = 2114;
          v88 = v29;
          _os_log_error_impl(&dword_228986000, v70, OS_LOG_TYPE_ERROR, " %{public}@ Failed to delete %{public}@ %{public}@ from cache in response to CKErrorChangeTokenExpired, error %{public}@", buf, 0x2Au);
        }
      }

      v31 = [*(a1 + 32) configuration];
      v32 = [v31 repository];
      v33 = [v32 profile];
      v34 = [v33 daemon];
      v35 = [v34 analyticsSubmissionCoordinator];
      v73 = v29;
      v36 = v22;
      v37 = *(a1 + 32);
      v38 = [*(a1 + 40) containerIdentifier];
      [*(a1 + 48) databaseScope];
      v39 = CKDatabaseScopeString();
      v40 = v37;
      v22 = v36;
      v6 = v74;
      [v35 cloudCache_reportCacheDiscrepancyForOperation:v40 reason:&stru_283BF39C8 containerIdentifier:v38 databaseScope:v39 error:v74];

      v21 = v75;
      v9 = v76;
      v13 = v78;
    }

    v41 = [v6 hd_errorSurfacingFatalCloudKitPartialFailure];
    if (v41)
    {
      v42 = v21;
      v43 = v9;
      v44 = v6;
      v45 = v22;
      v46 = *(a1 + 40);
      v47 = [*(a1 + 32) configuration];
      v48 = [v47 repository];
      v49 = [v48 primaryCKContainer];

      v50 = v46 == v49;
      v22 = v45;
      v6 = v44;
      v9 = v43;
      v21 = v42;
      v13 = v78;
      if (v50)
      {
        [*(*(a1 + 32) + 104) failTaskWithError:v41];

        goto LABEL_17;
      }
    }

    v20 = v77;
  }

  if (v20)
  {
    goto LABEL_16;
  }

  _HKInitializeLogging();
  v51 = *v22;
  if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
  {
    v64 = *(a1 + 32);
    v63 = *(a1 + 40);
    v65 = v51;
    v66 = [v63 containerIdentifier];
    [*(a1 + 48) databaseScope];
    v67 = CKDatabaseScopeString();
    *buf = 138544386;
    v82 = v64;
    v83 = 2080;
    v84 = "[HDCloudSyncUpdateCachedZonesOperation fetchChangesForContainer:database:]_block_invoke";
    v85 = 2114;
    v86 = v66;
    v87 = 2114;
    v88 = v67;
    v89 = 2114;
    v90 = v21;
    _os_log_error_impl(&dword_228986000, v65, OS_LOG_TYPE_ERROR, "%{public}@ %s@: Failed to cache zones for container %{public}@, database %{public}@, %{public}@", buf, 0x34u);
  }

  v52 = *(a1 + 40);
  v53 = [*(a1 + 32) configuration];
  v54 = [v53 repository];
  v55 = [v54 primaryCKContainer];

  if (v52 == v55)
  {
    [*(*(a1 + 32) + 104) failTaskWithError:v21];
  }

  else
  {
LABEL_16:
    [*(*(a1 + 32) + 104) finishTask];
  }

LABEL_17:
}

uint64_t __151__HDCloudSyncUpdateCachedZonesOperation__updateCKCachedZonesWithServerChangeToken_recordZonesIDsToAdd_recordZonesIDsToDelete_container_database_error___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) containsObject:v3];
  if (v4)
  {
    _HKInitializeLogging();
    v5 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138543362;
      v8 = v3;
      _os_log_impl(&dword_228986000, v5, OS_LOG_TYPE_DEFAULT, "\tZone %{public}@ was both modified and deleted and will be ignored.", &v7, 0xCu);
    }
  }

  return v4 ^ 1u;
}

- (void)synchronousTaskGroup:(id)group didFinishWithSuccess:(BOOL)success errors:(id)errors
{
  successCopy = success;
  firstObject = [errors firstObject];
  [(HDCloudSyncOperation *)self finishWithSuccess:successCopy error:firstObject];
}

@end