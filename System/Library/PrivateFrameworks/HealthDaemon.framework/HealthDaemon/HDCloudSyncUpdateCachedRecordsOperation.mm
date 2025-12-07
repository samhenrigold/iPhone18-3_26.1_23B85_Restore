@interface HDCloudSyncUpdateCachedRecordsOperation
- (HDCloudSyncUpdateCachedRecordsOperation)initWithConfiguration:(id)configuration cloudState:(id)state;
- (NSArray)invalidRecordIDs;
- (uint64_t)_updateCKCachedZoneForZone:(void *)zone recordsToAdd:(void *)add recordIDsToDelete:(void *)delete serverChangeToken:(unsigned int)token fetchComplete:(void *)complete container:(void *)container database:(void *)database error:;
- (void)_fetchChangesForRecordZoneIDs:(void *)ds container:(void *)container database:;
- (void)_limitExceededFetchingChangesForRecordZoneIDs:(void *)ds container:(void *)container database:(void *)database error:;
- (void)fetchRecordZoneChangesForContainer:(id)container database:(id)database;
- (void)main;
- (void)synchronousTaskGroup:(id)group didFinishWithSuccess:(BOOL)success errors:(id)errors;
@end

@implementation HDCloudSyncUpdateCachedRecordsOperation

- (HDCloudSyncUpdateCachedRecordsOperation)initWithConfiguration:(id)configuration cloudState:(id)state
{
  v10.receiver = self;
  v10.super_class = HDCloudSyncUpdateCachedRecordsOperation;
  v4 = [(HDCloudSyncOperation *)&v10 initWithConfiguration:configuration cloudState:0];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277D10BB0]);
    taskGroup = v4->_taskGroup;
    v4->_taskGroup = v5;

    [(HDSynchronousTaskGroup *)v4->_taskGroup setDelegate:v4];
    v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
    invalidRecordIDs = v4->_invalidRecordIDs;
    v4->_invalidRecordIDs = v7;

    v4->_lock._os_unfair_lock_opaque = 0;
  }

  return v4;
}

- (void)main
{
  v17 = *MEMORY[0x277D85DE8];
  [(HDSynchronousTaskGroup *)self->_taskGroup beginTask];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  configuration = [(HDCloudSyncOperation *)self configuration];
  repository = [configuration repository];
  allCKContainers = [repository allCKContainers];

  v6 = [allCKContainers countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(allCKContainers);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        privateCloudDatabase = [v10 privateCloudDatabase];
        [(HDCloudSyncUpdateCachedRecordsOperation *)self fetchRecordZoneChangesForContainer:v10 database:privateCloudDatabase];
      }

      v7 = [allCKContainers countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  [(HDSynchronousTaskGroup *)self->_taskGroup finishTask];
}

- (NSArray)invalidRecordIDs
{
  os_unfair_lock_lock(&self->_lock);
  allObjects = [(NSMutableSet *)self->_invalidRecordIDs allObjects];
  os_unfair_lock_unlock(&self->_lock);

  return allObjects;
}

- (void)fetchRecordZoneChangesForContainer:(id)container database:(id)database
{
  containerCopy = container;
  databaseCopy = database;
  configuration = [(HDCloudSyncOperation *)self configuration];
  cachedCloudState = [configuration cachedCloudState];
  containerIdentifier = [containerCopy containerIdentifier];
  v26 = 0;
  v11 = [cachedCloudState zoneIdentifiersRequiringFetchForContainerIdentifier:containerIdentifier databaseScope:objc_msgSend(databaseCopy error:{"databaseScope"), &v26}];
  v12 = v26;

  if (v11 || !v12)
  {
    configuration2 = [(HDCloudSyncOperation *)self configuration];
    repository = [configuration2 repository];
    syncAvailability = [repository syncAvailability];

    v21 = MEMORY[0x277D85DD0];
    v22 = 3221225472;
    v23 = __87__HDCloudSyncUpdateCachedRecordsOperation_fetchRecordZoneChangesForContainer_database___block_invoke;
    v24 = &unk_278616300;
    v25 = syncAvailability;
    v16 = syncAvailability;
    v17 = [v11 hk_filter:&v21];
    v18 = [v17 mutableCopy];

    v19 = [v18 hk_map:&__block_literal_global_27];
    v20 = v19;
    if (v19 && [v19 count])
    {
      [(HDCloudSyncUpdateCachedRecordsOperation *)&self->super.super.isa _fetchChangesForRecordZoneIDs:v20 container:containerCopy database:databaseCopy];
    }
  }

  else
  {
    [(HDCloudSyncOperation *)self finishWithSuccess:0 error:v12];
  }
}

uint64_t __87__HDCloudSyncUpdateCachedRecordsOperation_fetchRecordZoneChangesForContainer_database___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) shouldSyncSummarySharingPull] & 1) != 0 || (objc_msgSend(*(a1 + 32), "shouldSyncSummarySharingPush"))
  {
    v4 = 1;
  }

  else
  {
    v5 = [v3 zoneIdentifier];
    v9 = 0;
    v10 = 0;
    v6 = [v5 hd_isSharedSummaryZoneIDForUserIdentifier:&v10 syncCircleIdentifier:&v9];
    v7 = v10;

    v4 = v6 ^ 1u;
  }

  return v4;
}

- (void)_fetchChangesForRecordZoneIDs:(void *)ds container:(void *)container database:
{
  v76 = *MEMORY[0x277D85DE8];
  v7 = a2;
  dsCopy = ds;
  containerCopy = container;
  if (self)
  {
    [self[13] beginTask];
    v68[0] = 0;
    v68[1] = v68;
    v68[2] = 0x2810000000;
    v68[3] = &unk_22929BC4D;
    v69 = 0;
    v66[0] = 0;
    v66[1] = v66;
    v66[2] = 0x3032000000;
    v66[3] = __Block_byref_object_copy__25;
    v66[4] = __Block_byref_object_dispose__25;
    v67 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v64[0] = 0;
    v64[1] = v64;
    v64[2] = 0x3032000000;
    v64[3] = __Block_byref_object_copy__25;
    v64[4] = __Block_byref_object_dispose__25;
    v65 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v62[0] = 0;
    v62[1] = v62;
    v62[2] = 0x3032000000;
    v62[3] = __Block_byref_object_copy__25;
    v62[4] = __Block_byref_object_dispose__25;
    v63 = objc_alloc_init(MEMORY[0x277CBEB58]);
    if (v7 && [v7 count])
    {
      if ([v7 count] < 0x190)
      {
        containerIdentifier = [dsCopy containerIdentifier];
        databaseScope = [containerCopy databaseScope];
        v15 = containerIdentifier;
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __108__HDCloudSyncUpdateCachedRecordsOperation__configurationsByRecordZoneIDs_containerIdentifier_databaseScope___block_invoke;
        v73 = &unk_2786168B8;
        v16 = v15;
        *(&v74 + 1) = self;
        v75 = databaseScope;
        *&v74 = v16;
        v34 = [v7 hk_mapToDictionary:buf];

        _HKInitializeLogging();
        v17 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          containerIdentifier2 = [dsCopy containerIdentifier];
          [containerCopy databaseScope];
          v19 = CKDatabaseScopeString();
          v20 = [v7 count];
          *buf = 138544130;
          *&buf[4] = self;
          *&buf[12] = 2114;
          *&buf[14] = containerIdentifier2;
          *&buf[22] = 2114;
          v73 = v19;
          LOWORD(v74) = 2048;
          *(&v74 + 2) = v20;
          _os_log_impl(&dword_228986000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@: %{public}@: Beginning fetch of %ld record zone changes", buf, 0x2Au);
        }

        v33 = dsCopy;
        v21 = [objc_alloc(MEMORY[0x277CBC3B8]) initWithRecordZoneIDs:v7 configurationsByRecordZoneID:v34];
        [v21 setFetchAllChanges:1];
        [v21 setShouldFetchAssetContents:0];
        v56[0] = MEMORY[0x277D85DD0];
        v56[1] = 3221225472;
        v56[2] = __92__HDCloudSyncUpdateCachedRecordsOperation__fetchChangesForRecordZoneIDs_container_database___block_invoke;
        v56[3] = &unk_278616780;
        v56[4] = self;
        v22 = dsCopy;
        v57 = v22;
        v23 = containerCopy;
        v58 = v23;
        v59 = v68;
        v60 = v62;
        v61 = v66;
        [v21 setRecordWasChangedBlock:v56];
        v55[0] = MEMORY[0x277D85DD0];
        v55[1] = 3221225472;
        v55[2] = __92__HDCloudSyncUpdateCachedRecordsOperation__fetchChangesForRecordZoneIDs_container_database___block_invoke_305;
        v55[3] = &unk_2786167A8;
        v55[4] = v68;
        v55[5] = v64;
        [v21 setRecordWithIDWasDeletedBlock:v55];
        v47[0] = MEMORY[0x277D85DD0];
        v47[1] = 3221225472;
        v47[2] = __92__HDCloudSyncUpdateCachedRecordsOperation__fetchChangesForRecordZoneIDs_container_database___block_invoke_2;
        v47[3] = &unk_278616820;
        v24 = v22;
        v48 = v24;
        v25 = v23;
        v49 = v25;
        selfCopy = self;
        v51 = v68;
        v52 = v62;
        v53 = v66;
        v54 = v64;
        [v21 setRecordZoneChangeTokensUpdatedBlock:v47];
        v39[0] = MEMORY[0x277D85DD0];
        v39[1] = 3221225472;
        v39[2] = __92__HDCloudSyncUpdateCachedRecordsOperation__fetchChangesForRecordZoneIDs_container_database___block_invoke_313;
        v39[3] = &unk_278616848;
        v26 = v24;
        v40 = v26;
        v27 = v25;
        v41 = v27;
        selfCopy2 = self;
        v43 = v68;
        v44 = v62;
        v45 = v66;
        v46 = v64;
        [v21 setRecordZoneFetchCompletionBlock:v39];
        v35[0] = MEMORY[0x277D85DD0];
        v35[1] = 3221225472;
        v35[2] = __92__HDCloudSyncUpdateCachedRecordsOperation__fetchChangesForRecordZoneIDs_container_database___block_invoke_317;
        v35[3] = &unk_278616890;
        v35[4] = self;
        v36 = v26;
        v28 = v27;
        v37 = v28;
        v38 = v7;
        [v21 setFetchRecordZoneChangesCompletionBlock:v35];
        configuration = [self configuration];
        cachedCloudState = [configuration cachedCloudState];
        [cachedCloudState setOperationCountForAnalytics:{objc_msgSend(cachedCloudState, "operationCountForAnalytics") + 1}];

        configuration2 = [self configuration];
        operationGroup = [configuration2 operationGroup];
        [v21 setGroup:operationGroup];

        [v28 hd_addOperation:v21];
        dsCopy = v33;

        goto LABEL_7;
      }

      v10 = MEMORY[0x277CCA9B8];
      v70 = *MEMORY[0x277CCA450];
      v71 = @"Synthesized error for preemptive split.";
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v71 forKeys:&v70 count:1];
      v12 = [v10 errorWithDomain:*MEMORY[0x277CBBF50] code:27 userInfo:v11];
      [(HDCloudSyncUpdateCachedRecordsOperation *)self _limitExceededFetchingChangesForRecordZoneIDs:v7 container:dsCopy database:containerCopy error:v12];
    }

    [self[13] finishTask];
LABEL_7:
    _Block_object_dispose(v62, 8);

    _Block_object_dispose(v64, 8);
    _Block_object_dispose(v66, 8);

    _Block_object_dispose(v68, 8);
  }
}

- (void)_limitExceededFetchingChangesForRecordZoneIDs:(void *)ds container:(void *)container database:(void *)database error:
{
  v24 = *MEMORY[0x277D85DE8];
  v9 = a2;
  dsCopy = ds;
  containerCopy = container;
  databaseCopy = database;
  if (self)
  {
    v13 = [v9 count];
    _HKInitializeLogging();
    v14 = *MEMORY[0x277CCC328];
    v15 = *MEMORY[0x277CCC328];
    if (v13 == 1)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v20 = 138543362;
        selfCopy2 = self;
        _os_log_error_impl(&dword_228986000, v14, OS_LOG_TYPE_ERROR, "%{public}@: Received limit exceeded error for a single record zone. This is unexpected.", &v20, 0xCu);
      }

      [self[13] beginTask];
      [self[13] failTaskWithError:databaseCopy];
    }

    else
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = v14;
        v20 = 138543618;
        selfCopy2 = self;
        v22 = 2048;
        v23 = [v9 count];
        _os_log_impl(&dword_228986000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@: Received limit exceeded error; retrying by splitting record zone request in half and re-fetching (%ld zones).", &v20, 0x16u);
      }

      v17 = [v9 hk_splitWithBucketCount:2];
      v18 = [v17 objectAtIndexedSubscript:0];
      [(HDCloudSyncUpdateCachedRecordsOperation *)self _fetchChangesForRecordZoneIDs:v18 container:dsCopy database:containerCopy];

      v19 = [v17 objectAtIndexedSubscript:1];
      [(HDCloudSyncUpdateCachedRecordsOperation *)self _fetchChangesForRecordZoneIDs:v19 container:dsCopy database:containerCopy];
    }
  }
}

void __92__HDCloudSyncUpdateCachedRecordsOperation__fetchChangesForRecordZoneIDs_container_database___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v28 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    _HKInitializeLogging();
    v10 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v21 = *(a1 + 32);
      v22 = 138543874;
      v23 = v21;
      v24 = 2114;
      v25 = v7;
      v26 = 2114;
      v27 = v9;
      _os_log_error_impl(&dword_228986000, v10, OS_LOG_TYPE_ERROR, "%{public}@: recordWasChangedBlock failed to fetch changes for record %{public}@, %{public}@", &v22, 0x20u);
    }

    v11 = [HDCloudSyncZoneIdentifier alloc];
    v12 = [v7 zoneID];
    v13 = [*(a1 + 40) containerIdentifier];
    v14 = -[HDCloudSyncZoneIdentifier initForZone:container:scope:](v11, "initForZone:container:scope:", v12, v13, [*(a1 + 48) databaseScope]);

    v15 = [HDCloudSyncCachedZone alloc];
    v16 = [*(a1 + 32) configuration];
    v17 = [v16 repository];
    v18 = [*(a1 + 32) configuration];
    v19 = [v18 accessibilityAssertion];
    v20 = [(HDCloudSyncCachedZone *)v15 initForZoneIdentifier:v14 repository:v17 accessibilityAssertion:v19];

    [v20 handleCloudError:v9 operation:*(a1 + 32) container:*(a1 + 40) database:*(a1 + 48)];
    if ([v9 hd_shouldPreventCloudKitCacheUpdate])
    {
      os_unfair_lock_lock((*(*(a1 + 56) + 8) + 32));
      [*(*(*(a1 + 64) + 8) + 40) addObject:v14];
      os_unfair_lock_unlock((*(*(a1 + 56) + 8) + 32));
    }
  }

  else if (v8)
  {
    os_unfair_lock_lock((*(*(a1 + 56) + 8) + 32));
    [*(*(*(a1 + 72) + 8) + 40) addObject:v8];
    os_unfair_lock_unlock((*(*(a1 + 56) + 8) + 32));
  }
}

void __92__HDCloudSyncUpdateCachedRecordsOperation__fetchChangesForRecordZoneIDs_container_database___block_invoke_305(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 8);
  v4 = a2;
  os_unfair_lock_lock(v3 + 8);
  [*(*(*(a1 + 40) + 8) + 40) addObject:v4];

  v5 = (*(*(a1 + 32) + 8) + 32);

  os_unfair_lock_unlock(v5);
}

void __92__HDCloudSyncUpdateCachedRecordsOperation__fetchChangesForRecordZoneIDs_container_database___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v57 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a2;
  v7 = [HDCloudSyncZoneIdentifier alloc];
  v8 = [*(a1 + 32) containerIdentifier];
  v9 = -[HDCloudSyncZoneIdentifier initForZone:container:scope:](v7, "initForZone:container:scope:", v6, v8, [*(a1 + 40) databaseScope]);

  v10 = [HDCloudSyncCachedZone alloc];
  v11 = [*(a1 + 48) configuration];
  v12 = [v11 repository];
  v13 = [*(a1 + 48) configuration];
  v14 = [v13 accessibilityAssertion];
  v15 = [(HDCloudSyncCachedZone *)v10 initForZoneIdentifier:v9 repository:v12 accessibilityAssertion:v14];

  os_unfair_lock_lock((*(*(a1 + 56) + 8) + 32));
  if ([*(*(*(a1 + 64) + 8) + 40) containsObject:v9])
  {
    os_unfair_lock_unlock((*(*(a1 + 56) + 8) + 32));
    _HKInitializeLogging();
    v16 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v17 = *(a1 + 48);
      v18 = *(a1 + 32);
      v19 = v16;
      v20 = [v18 containerIdentifier];
      [*(a1 + 40) databaseScope];
      v21 = CKDatabaseScopeString();
      *buf = 138544386;
      v46 = v17;
      v47 = 2080;
      v48 = "[HDCloudSyncUpdateCachedRecordsOperation _fetchChangesForRecordZoneIDs:container:database:]_block_invoke_2";
      v49 = 2114;
      v50 = v9;
      v51 = 2114;
      v52 = v20;
      v53 = 2114;
      v54 = v21;
      _os_log_error_impl(&dword_228986000, v19, OS_LOG_TYPE_ERROR, "%{public}@ %s@: recordZoneChangeTokensUpdatedBlock with incomplete zone %{public}@, container %{public}@, database %{public}@.", buf, 0x34u);
    }
  }

  else
  {
    v22 = *(*(*(a1 + 72) + 8) + 40);
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __92__HDCloudSyncUpdateCachedRecordsOperation__fetchChangesForRecordZoneIDs_container_database___block_invoke_307;
    v43[3] = &unk_2786167D0;
    v23 = v15;
    v44 = v23;
    v24 = [v22 hk_filter:v43];
    v25 = objc_msgSend_copy(v24);

    [*(*(*(a1 + 72) + 8) + 40) removeObjectsInArray:v25];
    v26 = *(*(*(a1 + 80) + 8) + 40);
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __92__HDCloudSyncUpdateCachedRecordsOperation__fetchChangesForRecordZoneIDs_container_database___block_invoke_2_309;
    v41[3] = &unk_2786167F8;
    v27 = v23;
    v42 = v27;
    v28 = [v26 hk_filter:v41];
    v29 = objc_msgSend_copy(v28);

    [*(*(*(a1 + 80) + 8) + 40) removeObjectsInArray:v29];
    os_unfair_lock_unlock((*(*(a1 + 56) + 8) + 32));
    v31 = *(a1 + 40);
    v30 = *(a1 + 48);
    v32 = *(a1 + 32);
    v40 = 0;
    LOBYTE(v27) = [(HDCloudSyncUpdateCachedRecordsOperation *)v30 _updateCKCachedZoneForZone:v27 recordsToAdd:v25 recordIDsToDelete:v29 serverChangeToken:v5 fetchComplete:0 container:v32 database:v31 error:&v40];
    v33 = v40;
    if ((v27 & 1) == 0)
    {
      _HKInitializeLogging();
      v34 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        v39 = *(a1 + 48);
        v35 = *(a1 + 32);
        v36 = v34;
        v37 = [v35 containerIdentifier];
        [*(a1 + 40) databaseScope];
        v38 = CKDatabaseScopeString();
        *buf = 138544642;
        v46 = v39;
        v47 = 2080;
        v48 = "[HDCloudSyncUpdateCachedRecordsOperation _fetchChangesForRecordZoneIDs:container:database:]_block_invoke_3";
        v49 = 2114;
        v50 = v9;
        v51 = 2114;
        v52 = v37;
        v53 = 2114;
        v54 = v38;
        v55 = 2114;
        v56 = v33;
        _os_log_error_impl(&dword_228986000, v36, OS_LOG_TYPE_ERROR, "%{public}@ %s@: recordZoneChangeTokensUpdatedBlock failed to cache records for zone %{public}@, container %{public}@, database %{public}@, %{public}@", buf, 0x3Eu);
      }
    }
  }
}

uint64_t __92__HDCloudSyncUpdateCachedRecordsOperation__fetchChangesForRecordZoneIDs_container_database___block_invoke_307(uint64_t a1, void *a2)
{
  v3 = [a2 recordID];
  v4 = [v3 zoneID];
  v5 = [*(a1 + 32) zoneIdentifier];
  v6 = [v5 zoneIdentifier];
  v7 = [v4 isEqual:v6];

  return v7;
}

uint64_t __92__HDCloudSyncUpdateCachedRecordsOperation__fetchChangesForRecordZoneIDs_container_database___block_invoke_2_309(uint64_t a1, void *a2)
{
  v3 = [a2 zoneID];
  v4 = [*(a1 + 32) zoneIdentifier];
  v5 = [v4 zoneIdentifier];
  v6 = [v3 isEqual:v5];

  return v6;
}

- (uint64_t)_updateCKCachedZoneForZone:(void *)zone recordsToAdd:(void *)add recordIDsToDelete:(void *)delete serverChangeToken:(unsigned int)token fetchComplete:(void *)complete container:(void *)container database:(void *)database error:
{
  v148 = *MEMORY[0x277D85DE8];
  v15 = a2;
  zoneCopy = zone;
  addCopy = add;
  deleteCopy = delete;
  completeCopy = complete;
  containerCopy = container;
  v21 = 0;
  selfCopy = self;
  if (self && deleteCopy)
  {
    v108 = v15;
    v106 = deleteCopy;
    v22 = containerCopy;
    configuration = [selfCopy configuration];
    cachedCloudState = [configuration cachedCloudState];
    [cachedCloudState setChangedRecordsCount:{objc_msgSend(cachedCloudState, "changedRecordsCount") + objc_msgSend(zoneCopy, "count")}];

    configuration2 = [selfCopy configuration];
    cachedCloudState2 = [configuration2 cachedCloudState];
    [cachedCloudState2 setDeletedRecordsCount:{objc_msgSend(cachedCloudState2, "deletedRecordsCount") + objc_msgSend(addCopy, "count")}];

    v105 = completeCopy;
    v27 = completeCopy;
    v104 = v22;
    v111 = v22;
    v28 = zoneCopy;
    v107 = addCopy;
    v29 = addCopy;
    v110 = v27;
    if ([v28 count] || objc_msgSend(v29, "count"))
    {
      _HKInitializeLogging();
      v30 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
      {
        v31 = v30;
        containerIdentifier = [v27 containerIdentifier];
        v33 = [v28 count];
        v34 = [v29 count];
        [v111 databaseScope];
        v35 = CKDatabaseScopeString();
        *buf = 138544386;
        v139 = selfCopy;
        v140 = 2114;
        v141 = containerIdentifier;
        v142 = 2048;
        v143 = v33;
        v27 = v110;
        v144 = 2048;
        v145 = v34;
        v146 = 2114;
        v147 = v35;
        _os_log_impl(&dword_228986000, v31, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@: Fetched %ld changed records and %ld deleted records in database %{public}@. Updating cache.", buf, 0x34u);
      }
    }

    containerIdentifier2 = [v27 containerIdentifier];
    databaseScope = [v111 databaseScope];
    v37 = v28;
    v112 = v29;
    v38 = containerIdentifier2;
    v39 = v37;
    v40 = v38;
    v124 = 0u;
    v125 = 0u;
    v126 = 0u;
    v127 = 0u;
    obj = v39;
    v41 = [obj countByEnumeratingWithState:&v124 objects:buf count:16];
    if (v41)
    {
      v42 = v41;
      v43 = *v125;
      while (2)
      {
        for (i = 0; i != v42; ++i)
        {
          if (*v125 != v43)
          {
            objc_enumerationMutation(obj);
          }

          v45 = *(*(&v124 + 1) + 8 * i);
          *&v120 = MEMORY[0x277D85DD0];
          *(&v120 + 1) = 3221225472;
          *&v121 = __119__HDCloudSyncUpdateCachedRecordsOperation__addRecordToCacheWithChangedRecords_containerIdentifier_databaseScope_error___block_invoke;
          *(&v121 + 1) = &unk_2786168E0;
          *&v122 = v45;
          v46 = v40;
          v47 = v40;
          *&v123 = selfCopy;
          *(&v123 + 1) = databaseScope;
          *(&v122 + 1) = v47;
          v48 = HKWithAutoreleasePool();

          if (!v48)
          {

            v21 = 0;
            deleteCopy = v106;
            addCopy = v107;
            containerCopy = v104;
            completeCopy = v105;
            v15 = v108;
            goto LABEL_68;
          }

          v40 = v46;
        }

        v42 = [obj countByEnumeratingWithState:&v124 objects:buf count:16];
        if (v42)
        {
          continue;
        }

        break;
      }
    }

    v103 = zoneCopy;
    if ([obj count])
    {
      v102 = v40;
      _HKInitializeLogging();
      v49 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
      {
        v50 = v49;
        v51 = [obj count];
        *v131 = 138543618;
        *&v131[4] = selfCopy;
        *&v131[12] = 2048;
        *&v131[14] = v51;
        _os_log_impl(&dword_228986000, v50, OS_LOG_TYPE_DEFAULT, "%{public}@ Updated cache with %ld changed records:", v131, 0x16u);
      }

      v129 = 0u;
      v130 = 0u;
      memset(v128, 0, sizeof(v128));
      v52 = obj;
      v53 = [v52 countByEnumeratingWithState:v128 objects:v132 count:16];
      v54 = MEMORY[0x277CCC328];
      if (v53)
      {
        v55 = v53;
        v56 = 0;
        v57 = **&v128[16];
        do
        {
          for (j = 0; j != v55; ++j)
          {
            if (**&v128[16] != v57)
            {
              objc_enumerationMutation(v52);
            }

            v59 = *(*&v128[8] + 8 * j);
            _HKInitializeLogging();
            v60 = *v54;
            if (os_log_type_enabled(*v54, OS_LOG_TYPE_DEFAULT))
            {
              v61 = v60;
              recordID = [v59 recordID];
              *v131 = 67109378;
              *&v131[4] = v56;
              *&v131[8] = 2114;
              *&v131[10] = recordID;
              _os_log_impl(&dword_228986000, v61, OS_LOG_TYPE_DEFAULT, "\t\t%3d. %{public}@", v131, 0x12u);

              ++v56;
              v54 = MEMORY[0x277CCC328];
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              _HKInitializeLogging();
              v63 = *v54;
              if (os_log_type_enabled(*v54, OS_LOG_TYPE_DEFAULT))
              {
                v64 = v63;
                v65 = [v59 description];
                *v131 = 138543362;
                *&v131[4] = v65;
                _os_log_impl(&dword_228986000, v64, OS_LOG_TYPE_DEFAULT, "Participant Record Status %{public}@", v131, 0xCu);
              }
            }
          }

          v55 = [v52 countByEnumeratingWithState:v128 objects:v132 count:16];
        }

        while (v55);
      }

      v40 = v102;
    }

    else
    {
    }

    v66 = v112;
    v118 = v40;
    v124 = 0u;
    v125 = 0u;
    v126 = 0u;
    v127 = 0u;
    v67 = v66;
    v68 = [v67 countByEnumeratingWithState:&v124 objects:buf count:16];
    v113 = v67;
    if (v68)
    {
      v69 = v68;
      v70 = 0;
      v119 = *v125;
      while (2)
      {
        v71 = 0;
        v72 = v70;
        do
        {
          if (*v125 != v119)
          {
            objc_enumerationMutation(v113);
          }

          v73 = *(*(&v124 + 1) + 8 * v71);
          v74 = [HDCloudSyncZoneIdentifier alloc];
          zoneID = [v73 zoneID];
          v76 = [(HDCloudSyncZoneIdentifier *)v74 initForZone:zoneID container:v118 scope:databaseScope];

          v77 = [HDCloudSyncCachedZone alloc];
          configuration3 = [selfCopy configuration];
          repository = [configuration3 repository];
          configuration4 = [selfCopy configuration];
          accessibilityAssertion = [configuration4 accessibilityAssertion];
          v82 = [(HDCloudSyncCachedZone *)v77 initForZoneIdentifier:v76 repository:repository accessibilityAssertion:accessibilityAssertion];

          *v131 = v72;
          LOBYTE(repository) = [v82 deleteRecordID:v73 error:v131];
          v70 = *v131;

          if ((repository & 1) == 0)
          {
            _HKInitializeLogging();
            v83 = *MEMORY[0x277CCC328];
            databaseCopy2 = database;
            if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
            {
              *v132 = 138543874;
              v133 = selfCopy;
              v134 = 2114;
              v135 = v73;
              v136 = 2114;
              v137 = v70;
              _os_log_error_impl(&dword_228986000, v83, OS_LOG_TYPE_ERROR, "%{public}@ Failed to delete cached recordID %{public}@, %{public}@", v132, 0x20u);
            }

            v85 = v70;
            v86 = v85;
            addCopy = v107;
            v15 = v108;
            zoneCopy = v103;
            deleteCopy = v106;
            if (v85)
            {
              if (database)
              {
                v87 = v85;
                *database = v86;
              }

              else
              {
                _HKLogDroppedError();
              }
            }

            v128[0] = v86 == 0;
            v99 = v113;

            goto LABEL_64;
          }

          ++v71;
          v72 = v70;
        }

        while (v69 != v71);
        v67 = v113;
        v69 = [v113 countByEnumeratingWithState:&v124 objects:buf count:16];
        if (v69)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v70 = 0;
    }

    v116 = v70;

    if ([v67 count])
    {
      _HKInitializeLogging();
      v88 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
      {
        v89 = v88;
        v90 = [v113 count];
        *v132 = 138543618;
        v133 = selfCopy;
        v134 = 2048;
        v135 = v90;
        _os_log_impl(&dword_228986000, v89, OS_LOG_TYPE_DEFAULT, "%{public}@ Updated cache with %ld deleted records:", v132, 0x16u);
      }

      v122 = 0u;
      v123 = 0u;
      v120 = 0u;
      v121 = 0u;
      v91 = v113;
      v92 = [v91 countByEnumeratingWithState:&v120 objects:v132 count:16];
      if (v92)
      {
        v93 = v92;
        v94 = 0;
        v95 = *v121;
        do
        {
          for (k = 0; k != v93; ++k)
          {
            if (*v121 != v95)
            {
              objc_enumerationMutation(v91);
            }

            v97 = *(*(&v120 + 1) + 8 * k);
            _HKInitializeLogging();
            v98 = *MEMORY[0x277CCC328];
            if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
            {
              *v128 = 67109378;
              *&v128[4] = v94;
              *&v128[8] = 2114;
              *&v128[10] = v97;
              _os_log_impl(&dword_228986000, v98, OS_LOG_TYPE_DEFAULT, "\t\t%3d. %{public}@", v128, 0x12u);
              ++v94;
            }
          }

          v93 = [v91 countByEnumeratingWithState:&v120 objects:v132 count:16];
        }

        while (v93);
      }
    }

    v128[0] = 1;
    addCopy = v107;
    v15 = v108;
    zoneCopy = v103;
    deleteCopy = v106;
    databaseCopy2 = database;
    v86 = v116;
    v99 = v113;
LABEL_64:

    v100 = v128[0];
    completeCopy = v105;
    if (v100 == 1)
    {
      v21 = [v15 setServerChangeToken:deleteCopy fetchComplete:token error:databaseCopy2];
    }

    else
    {
      v21 = 0;
    }

    containerCopy = v104;
  }

LABEL_68:

  return v21;
}

void __92__HDCloudSyncUpdateCachedRecordsOperation__fetchChangesForRecordZoneIDs_container_database___block_invoke_313(uint64_t a1, void *a2, void *a3, uint64_t a4, int a5, void *a6)
{
  v74 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a6;
  v12 = a2;
  v13 = [HDCloudSyncZoneIdentifier alloc];
  v14 = [*(a1 + 32) containerIdentifier];
  v15 = -[HDCloudSyncZoneIdentifier initForZone:container:scope:](v13, "initForZone:container:scope:", v12, v14, [*(a1 + 40) databaseScope]);

  v16 = [HDCloudSyncCachedZone alloc];
  v17 = [*(a1 + 48) configuration];
  v18 = [v17 repository];
  v19 = [*(a1 + 48) configuration];
  v20 = [v19 accessibilityAssertion];
  v21 = [(HDCloudSyncCachedZone *)v16 initForZoneIdentifier:v15 repository:v18 accessibilityAssertion:v20];

  os_unfair_lock_lock((*(*(a1 + 56) + 8) + 32));
  if (![*(*(*(a1 + 64) + 8) + 40) containsObject:v15])
  {
    v29 = *(*(*(a1 + 72) + 8) + 40);
    v60[0] = MEMORY[0x277D85DD0];
    v60[1] = 3221225472;
    v60[2] = __92__HDCloudSyncUpdateCachedRecordsOperation__fetchChangesForRecordZoneIDs_container_database___block_invoke_314;
    v60[3] = &unk_2786167D0;
    v30 = v21;
    v61 = v30;
    v31 = [v29 hk_filter:v60];
    v32 = objc_msgSend_copy(v31);

    [*(*(*(a1 + 72) + 8) + 40) removeObjectsInArray:v32];
    v33 = *(*(*(a1 + 80) + 8) + 40);
    v58[0] = MEMORY[0x277D85DD0];
    v58[1] = 3221225472;
    v58[2] = __92__HDCloudSyncUpdateCachedRecordsOperation__fetchChangesForRecordZoneIDs_container_database___block_invoke_2_315;
    v58[3] = &unk_2786167F8;
    v34 = v30;
    v59 = v34;
    v35 = [v33 hk_filter:v58];
    v36 = objc_msgSend_copy(v35);

    [*(*(*(a1 + 80) + 8) + 40) removeObjectsInArray:v36];
    os_unfair_lock_unlock((*(*(a1 + 56) + 8) + 32));
    v38 = *(a1 + 40);
    v37 = *(a1 + 48);
    if (v11)
    {
      v39 = 0;
    }

    else
    {
      v39 = a5 ^ 1;
    }

    v40 = *(a1 + 32);
    v56 = v10;
    v57 = 0;
    v41 = [(HDCloudSyncUpdateCachedRecordsOperation *)v37 _updateCKCachedZoneForZone:v34 recordsToAdd:v32 recordIDsToDelete:v36 serverChangeToken:v10 fetchComplete:v39 container:v40 database:v38 error:&v57];
    v42 = v57;
    v43 = MEMORY[0x277CCC328];
    if ((v41 & 1) == 0 && (_HKInitializeLogging(), v44 = *v43, os_log_type_enabled(*v43, OS_LOG_TYPE_ERROR)))
    {
      v50 = *(a1 + 32);
      v53 = *(a1 + 48);
      loga = v44;
      v48 = [v50 containerIdentifier];
      [*(a1 + 40) databaseScope];
      v51 = CKDatabaseScopeString();
      *buf = 138544642;
      v63 = v53;
      v64 = 2080;
      v65 = "[HDCloudSyncUpdateCachedRecordsOperation _fetchChangesForRecordZoneIDs:container:database:]_block_invoke_3";
      v66 = 2114;
      v67 = v15;
      v68 = 2114;
      v69 = v48;
      v70 = 2114;
      v71 = v51;
      v72 = 2114;
      v73 = v42;
      _os_log_error_impl(&dword_228986000, loga, OS_LOG_TYPE_ERROR, "%{public}@ %s@: recordZoneFetchCompletionBlock failed to cache records for zone %{public}@, container %{public}@, database %{public}@, %{public}@", buf, 0x3Eu);

      if (v11)
      {
        goto LABEL_10;
      }
    }

    else if (v11)
    {
LABEL_10:
      _HKInitializeLogging();
      v45 = *v43;
      if (os_log_type_enabled(*v43, OS_LOG_TYPE_ERROR))
      {
        v52 = *(a1 + 48);
        v46 = *(a1 + 32);
        log = v45;
        v49 = [v46 containerIdentifier];
        [*(a1 + 40) databaseScope];
        v47 = CKDatabaseScopeString();
        *buf = 138544642;
        v63 = v52;
        v64 = 2080;
        v65 = "[HDCloudSyncUpdateCachedRecordsOperation _fetchChangesForRecordZoneIDs:container:database:]_block_invoke";
        v66 = 2114;
        v67 = v15;
        v68 = 2114;
        v69 = v49;
        v70 = 2114;
        v71 = v47;
        v72 = 2114;
        v73 = v11;
        _os_log_error_impl(&dword_228986000, log, OS_LOG_TYPE_ERROR, "%{public}@ %s: recordZoneFetchCompletionBlock failed for zone %{public}@ in container %{public}@, database %{public}@, %{public}@", buf, 0x3Eu);
      }

      [v34 handleCloudError:v11 operation:*(a1 + 48) container:*(a1 + 32) database:*(a1 + 40)];
    }

    v10 = v56;
    goto LABEL_14;
  }

  os_unfair_lock_unlock((*(*(a1 + 56) + 8) + 32));
  _HKInitializeLogging();
  v22 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
  {
    v23 = v10;
    v24 = *(a1 + 48);
    v25 = *(a1 + 32);
    v26 = v22;
    v27 = [v25 containerIdentifier];
    [*(a1 + 40) databaseScope];
    v28 = CKDatabaseScopeString();
    *buf = 138544386;
    v63 = v24;
    v10 = v23;
    v64 = 2080;
    v65 = "[HDCloudSyncUpdateCachedRecordsOperation _fetchChangesForRecordZoneIDs:container:database:]_block_invoke";
    v66 = 2114;
    v67 = v15;
    v68 = 2114;
    v69 = v27;
    v70 = 2114;
    v71 = v28;
    _os_log_error_impl(&dword_228986000, v26, OS_LOG_TYPE_ERROR, "%{public}@ %s@: recordZoneFetchCompletionBlock with incomplete zone %{public}@, container %{public}@, database %{public}@.", buf, 0x34u);
  }

LABEL_14:
}

uint64_t __92__HDCloudSyncUpdateCachedRecordsOperation__fetchChangesForRecordZoneIDs_container_database___block_invoke_314(uint64_t a1, void *a2)
{
  v3 = [a2 recordID];
  v4 = [v3 zoneID];
  v5 = [*(a1 + 32) zoneIdentifier];
  v6 = [v5 zoneIdentifier];
  v7 = [v4 isEqual:v6];

  return v7;
}

uint64_t __92__HDCloudSyncUpdateCachedRecordsOperation__fetchChangesForRecordZoneIDs_container_database___block_invoke_2_315(uint64_t a1, void *a2)
{
  v3 = [a2 zoneID];
  v4 = [*(a1 + 32) zoneIdentifier];
  v5 = [v4 zoneIdentifier];
  v6 = [v3 isEqual:v5];

  return v6;
}

void __92__HDCloudSyncUpdateCachedRecordsOperation__fetchChangesForRecordZoneIDs_container_database___block_invoke_317(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    _HKInitializeLogging();
    v4 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 32);
      v12 = *(a1 + 40);
      v14 = v4;
      v15 = [v12 containerIdentifier];
      [*(a1 + 48) databaseScope];
      v16 = CKDatabaseScopeString();
      v17 = 138544386;
      v18 = v13;
      v19 = 2080;
      v20 = "[HDCloudSyncUpdateCachedRecordsOperation _fetchChangesForRecordZoneIDs:container:database:]_block_invoke";
      v21 = 2114;
      v22 = v15;
      v23 = 2114;
      v24 = v16;
      v25 = 2114;
      v26 = v3;
      _os_log_error_impl(&dword_228986000, v14, OS_LOG_TYPE_ERROR, "%{public}@ %s@: Failed for container %{public}@, database %{public}@, %{public}@", &v17, 0x34u);
    }

    if ([v3 hk_isErrorInDomain:*MEMORY[0x277CBBF50] code:27])
    {
      [(HDCloudSyncUpdateCachedRecordsOperation *)*(a1 + 32) _limitExceededFetchingChangesForRecordZoneIDs:*(a1 + 40) container:*(a1 + 48) database:v3 error:?];
    }

    else
    {
      v5 = [v3 hd_errorStrippingCloudKitPartialFailuresWithShouldIgnoreBlock:&__block_literal_global_321];
      if (v5)
      {
        v6 = *(a1 + 40);
        v7 = [*(a1 + 32) configuration];
        v8 = [v7 repository];
        v9 = [v8 primaryCKContainer];

        if (v6 == v9)
        {
          v10 = *(*(a1 + 32) + 104);
          v11 = [v5 hd_errorSurfacingFatalCloudKitPartialFailure];
          [v10 failTaskWithError:v11];

          goto LABEL_10;
        }
      }
    }
  }

  [*(*(a1 + 32) + 104) finishTask];
LABEL_10:
}

uint64_t __92__HDCloudSyncUpdateCachedRecordsOperation__fetchChangesForRecordZoneIDs_container_database___block_invoke_318(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 domain];
  v4 = [v3 isEqualToString:*MEMORY[0x277CBBF50]];

  if (v4)
  {
    v5 = [v2 code];
    v6 = v5 == 112;
    if (v5 == 22)
    {
      v6 = 1;
    }

    v7 = v5 == 11 || v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __108__HDCloudSyncUpdateCachedRecordsOperation__configurationsByRecordZoneIDs_containerIdentifier_databaseScope___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [[HDCloudSyncZoneIdentifier alloc] initForZone:v5 container:*(a1 + 32) scope:*(a1 + 48)];
  v8 = [HDCloudSyncCachedZone alloc];
  v9 = [*(a1 + 40) configuration];
  v10 = [v9 repository];
  v11 = [*(a1 + 40) configuration];
  v12 = [v11 accessibilityAssertion];
  v13 = [(HDCloudSyncCachedZone *)v8 initForZoneIdentifier:v7 repository:v10 accessibilityAssertion:v12];

  v20 = 0;
  v14 = [v13 serverChangeTokenWithError:&v20];
  v15 = v20;
  v16 = v15;
  if (!v14)
  {
    if (v15)
    {
      _HKInitializeLogging();
      v17 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        v19 = *(a1 + 40);
        *buf = 138543874;
        v22 = v19;
        v23 = 2114;
        v24 = v7;
        v25 = 2114;
        v26 = v16;
        _os_log_error_impl(&dword_228986000, v17, OS_LOG_TYPE_ERROR, "%{public}@ Failed to retrieve previous server change token for %{public}@, %{public}@", buf, 0x20u);
      }
    }
  }

  v18 = objc_alloc_init(MEMORY[0x277CBC3A0]);
  [v18 setPreviousServerChangeToken:v14];
  [v18 setResultsLimit:0];
  [v18 setDesiredKeys:0];
  v6[2](v6, v5, v18);
}

BOOL __119__HDCloudSyncUpdateCachedRecordsOperation__addRecordToCacheWithChangedRecords_containerIdentifier_databaseScope_error___block_invoke(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = [HDCloudSyncZoneIdentifier alloc];
  v5 = [*(a1 + 32) recordID];
  v6 = [v5 zoneID];
  v7 = [(HDCloudSyncZoneIdentifier *)v4 initForZone:v6 container:*(a1 + 40) scope:*(a1 + 56)];

  v8 = [HDCloudSyncCachedZone alloc];
  v9 = [*(a1 + 48) configuration];
  v10 = [v9 repository];
  v11 = [*(a1 + 48) configuration];
  v12 = [v11 accessibilityAssertion];
  v13 = [(HDCloudSyncCachedZone *)v8 initForZoneIdentifier:v7 repository:v10 accessibilityAssertion:v12];

  v14 = *(a1 + 32);
  v25 = 0;
  LOBYTE(v10) = [v13 addRecord:v14 error:&v25];
  v15 = v25;
  if (v10)
  {
    goto LABEL_7;
  }

  _HKInitializeLogging();
  v16 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
  {
    v23 = *(a1 + 48);
    v24 = *(a1 + 32);
    *buf = 138543874;
    v27 = v23;
    v28 = 2114;
    v29 = v24;
    v30 = 2114;
    v31 = v15;
    _os_log_error_impl(&dword_228986000, v16, OS_LOG_TYPE_ERROR, "%{public}@ Failed to cache record %{public}@, %{public}@", buf, 0x20u);
  }

  if ([v15 code] == 713)
  {
    goto LABEL_7;
  }

  if ([v15 code] == 709)
  {
    os_unfair_lock_lock((*(a1 + 48) + 120));
    v17 = *(*(a1 + 48) + 112);
    v18 = [*(a1 + 32) recordID];
    [v17 addObject:v18];

    os_unfair_lock_unlock((*(a1 + 48) + 120));
LABEL_7:
    v19 = 1;
    goto LABEL_8;
  }

  v21 = v15;
  v19 = v21 == 0;
  if (v21)
  {
    if (a2)
    {
      v22 = v21;
      *a2 = v21;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

LABEL_8:
  return v19;
}

- (void)synchronousTaskGroup:(id)group didFinishWithSuccess:(BOOL)success errors:(id)errors
{
  successCopy = success;
  firstObject = [errors firstObject];
  [(HDCloudSyncOperation *)self finishWithSuccess:successCopy error:firstObject];
}

@end