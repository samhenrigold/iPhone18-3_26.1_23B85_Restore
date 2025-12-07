@interface HDCloudSyncModifyRecordZonesOperation
- (HDCloudSyncModifyRecordZonesOperation)initWithConfiguration:(id)configuration container:(id)container recordZonesToSave:(id)save recordZoneIDsToDelete:(id)delete;
- (HDCloudSyncModifyRecordZonesOperation)initWithConfiguration:(id)configuration container:(id)container scope:(int64_t)scope recordZonesToSave:(id)save recordZoneIDsToDelete:(id)delete;
- (void)_limitExceededForSavingRecordZones:(id)zones deletingRecordZoneIDs:(id)ds error:(id)error;
- (void)_saveRecordZones:(id)zones deleteRecordZoneIDs:(id)ds;
- (void)synchronousTaskGroup:(id)group didFinishWithSuccess:(BOOL)success errors:(id)errors;
@end

@implementation HDCloudSyncModifyRecordZonesOperation

- (HDCloudSyncModifyRecordZonesOperation)initWithConfiguration:(id)configuration container:(id)container recordZonesToSave:(id)save recordZoneIDsToDelete:(id)delete
{
  deleteCopy = delete;
  saveCopy = save;
  containerCopy = container;
  configurationCopy = configuration;
  repository = [configurationCopy repository];
  profileIdentifier = [repository profileIdentifier];
  v16 = HDDatabaseForContainer(containerCopy, profileIdentifier);
  v17 = -[HDCloudSyncModifyRecordZonesOperation initWithConfiguration:container:scope:recordZonesToSave:recordZoneIDsToDelete:](self, "initWithConfiguration:container:scope:recordZonesToSave:recordZoneIDsToDelete:", configurationCopy, containerCopy, [v16 databaseScope], saveCopy, deleteCopy);

  return v17;
}

- (HDCloudSyncModifyRecordZonesOperation)initWithConfiguration:(id)configuration container:(id)container scope:(int64_t)scope recordZonesToSave:(id)save recordZoneIDsToDelete:(id)delete
{
  containerCopy = container;
  saveCopy = save;
  deleteCopy = delete;
  v23.receiver = self;
  v23.super_class = HDCloudSyncModifyRecordZonesOperation;
  v16 = [(HDCloudSyncOperation *)&v23 initWithConfiguration:configuration cloudState:0];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_container, container);
    v18 = [containerCopy databaseWithDatabaseScope:scope];
    database = v17->_database;
    v17->_database = v18;

    objc_storeStrong(&v17->_recordZonesToSave, save);
    objc_storeStrong(&v17->_recordZoneIDsToDelete, delete);
    v20 = objc_alloc_init(MEMORY[0x277D10BB0]);
    taskGroup = v17->_taskGroup;
    v17->_taskGroup = v20;

    [(HDSynchronousTaskGroup *)v17->_taskGroup setDelegate:v17];
  }

  return v17;
}

- (void)_saveRecordZones:(id)zones deleteRecordZoneIDs:(id)ds
{
  v33[1] = *MEMORY[0x277D85DE8];
  zonesCopy = zones;
  dsCopy = ds;
  [(HDSynchronousTaskGroup *)self->_taskGroup beginTask];
  v8 = [zonesCopy count];
  v9 = [dsCopy count] + v8;
  if (!v9)
  {
LABEL_10:
    [(HDSynchronousTaskGroup *)self->_taskGroup finishTask];
    goto LABEL_14;
  }

  if (v9 >= 400)
  {
    if (zonesCopy)
    {
      v10 = zonesCopy;
    }

    else
    {
      v10 = MEMORY[0x277CBEBF8];
    }

    if (dsCopy)
    {
      v11 = dsCopy;
    }

    else
    {
      v11 = MEMORY[0x277CBEBF8];
    }

    v12 = MEMORY[0x277CCA9B8];
    v13 = *MEMORY[0x277CBBF50];
    v32 = *MEMORY[0x277CCA450];
    v33[0] = @"Synthesized error for preemptive split.";
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:&v32 count:1];
    v15 = [v12 errorWithDomain:v13 code:27 userInfo:v14];
    [(HDCloudSyncModifyRecordZonesOperation *)self _limitExceededForSavingRecordZones:v10 deletingRecordZoneIDs:v11 error:v15];

    goto LABEL_10;
  }

  _HKInitializeLogging();
  v16 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v17 = v16;
    *buf = 138543874;
    selfCopy = self;
    v28 = 2048;
    v29 = [zonesCopy count];
    v30 = 2048;
    v31 = [dsCopy count];
    _os_log_impl(&dword_228986000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@: Saving %ld zones, deleting %ld zones", buf, 0x20u);
  }

  v18 = [objc_alloc(MEMORY[0x277CBC490]) initWithRecordZonesToSave:zonesCopy recordZoneIDsToDelete:dsCopy];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __78__HDCloudSyncModifyRecordZonesOperation__saveRecordZones_deleteRecordZoneIDs___block_invoke;
  v23[3] = &unk_278616968;
  v23[4] = self;
  v24 = zonesCopy;
  v25 = dsCopy;
  [v18 setModifyRecordZonesCompletionBlock:v23];
  configuration = [(HDCloudSyncOperation *)self configuration];
  cachedCloudState = [configuration cachedCloudState];
  [cachedCloudState setOperationCountForAnalytics:{objc_msgSend(cachedCloudState, "operationCountForAnalytics") + 1}];

  configuration2 = [(HDCloudSyncOperation *)self configuration];
  operationGroup = [configuration2 operationGroup];
  [v18 setGroup:operationGroup];

  [(CKDatabase *)self->_database hd_addOperation:v18];
LABEL_14:
}

void __78__HDCloudSyncModifyRecordZonesOperation__saveRecordZones_deleteRecordZoneIDs___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v72 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    _HKInitializeLogging();
    v10 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v39 = *(a1 + 32);
      v40 = *(v39 + 104);
      v41 = v10;
      v42 = [v40 containerIdentifier];
      [*(*(a1 + 32) + 112) databaseScope];
      v43 = CKDatabaseScopeString();
      *buf = 138544130;
      v65 = v39;
      v66 = 2114;
      v67 = v42;
      v68 = 2114;
      v69 = v43;
      v70 = 2114;
      v71 = v9;
      _os_log_error_impl(&dword_228986000, v41, OS_LOG_TYPE_ERROR, "%{public}@ Failed to modify record zones in container %{public}@, database %{public}@, error %{public}@", buf, 0x2Au);
    }

    if ([v9 hk_isErrorInDomain:*MEMORY[0x277CBBF50] code:27])
    {
      [*(a1 + 32) _limitExceededForSavingRecordZones:*(a1 + 40) deletingRecordZoneIDs:*(a1 + 48) error:v9];
      [*(*(a1 + 32) + 120) finishTask];
      goto LABEL_31;
    }

    v11 = [v9 hd_errorSurfacingFatalCloudKitPartialFailure];
    if (v11)
    {
      v12 = v11;
      [*(*(a1 + 32) + 120) failTaskWithError:v11];

      goto LABEL_31;
    }
  }

  v44 = v9;
  v45 = v7;
  v46 = v8;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  obj = v7;
  v13 = [obj countByEnumeratingWithState:&v58 objects:v63 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = 0;
    v50 = *v59;
    while (2)
    {
      v16 = 0;
      v17 = v15;
      do
      {
        if (*v59 != v50)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v58 + 1) + 8 * v16);
        v19 = [HDCloudSyncZoneIdentifier alloc];
        v20 = [v18 zoneID];
        v21 = [*(*(a1 + 32) + 104) containerIdentifier];
        v22 = -[HDCloudSyncZoneIdentifier initForZone:container:scope:](v19, "initForZone:container:scope:", v20, v21, [*(*(a1 + 32) + 112) databaseScope]);

        v23 = [*(a1 + 32) configuration];
        v24 = [v23 cachedCloudState];
        v57 = v17;
        v25 = [v24 addZoneWithIdentifier:v22 error:&v57];
        v15 = v57;

        if (!v25)
        {
          [*(*(a1 + 32) + 120) failTaskWithError:v15];

          v26 = obj;
LABEL_29:

          goto LABEL_30;
        }

        ++v16;
        v17 = v15;
      }

      while (v14 != v16);
      v14 = [obj countByEnumeratingWithState:&v58 objects:v63 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v15 = 0;
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v47 = v46;
  v51 = [v47 countByEnumeratingWithState:&v53 objects:v62 count:16];
  if (v51)
  {
    obja = *v54;
    while (2)
    {
      v27 = 0;
      v28 = v15;
      do
      {
        if (*v54 != obja)
        {
          objc_enumerationMutation(v47);
        }

        v29 = *(*(&v53 + 1) + 8 * v27);
        v30 = [HDCloudSyncZoneIdentifier alloc];
        v31 = [*(*(a1 + 32) + 104) containerIdentifier];
        v32 = -[HDCloudSyncZoneIdentifier initForZone:container:scope:](v30, "initForZone:container:scope:", v29, v31, [*(*(a1 + 32) + 112) databaseScope]);

        v33 = [HDCloudSyncCachedZone alloc];
        v34 = [*(a1 + 32) configuration];
        v35 = [v34 repository];
        v36 = [*(a1 + 32) configuration];
        v37 = [v36 accessibilityAssertion];
        v38 = [(HDCloudSyncCachedZone *)v33 initForZoneIdentifier:v32 repository:v35 accessibilityAssertion:v37];

        v52 = v28;
        LODWORD(v36) = [v38 deleteZoneWithError:&v52];
        v15 = v52;

        if (!v36)
        {
          [*(*(a1 + 32) + 120) failTaskWithError:v15];

          v26 = v47;
          goto LABEL_29;
        }

        ++v27;
        v28 = v15;
      }

      while (v51 != v27);
      v51 = [v47 countByEnumeratingWithState:&v53 objects:v62 count:16];
      if (v51)
      {
        continue;
      }

      break;
    }
  }

  [*(*(a1 + 32) + 120) finishTask];
LABEL_30:

  v7 = v45;
  v8 = v46;
  v9 = v44;
LABEL_31:
}

- (void)_limitExceededForSavingRecordZones:(id)zones deletingRecordZoneIDs:(id)ds error:(id)error
{
  v27 = *MEMORY[0x277D85DE8];
  zonesCopy = zones;
  dsCopy = ds;
  errorCopy = error;
  v11 = [zonesCopy count];
  if (([dsCopy count] + v11) > 1)
  {
    if ([zonesCopy count] && objc_msgSend(dsCopy, "count"))
    {
      [(HDCloudSyncModifyRecordZonesOperation *)self _saveRecordZones:zonesCopy deleteRecordZoneIDs:0];
      [(HDCloudSyncModifyRecordZonesOperation *)self _saveRecordZones:0 deleteRecordZoneIDs:dsCopy];
    }

    else
    {
      _HKInitializeLogging();
      v13 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
      {
        v14 = v13;
        v21 = 138543874;
        selfCopy2 = self;
        v23 = 2048;
        v24 = [zonesCopy count];
        v25 = 2048;
        v26 = [dsCopy count];
        _os_log_impl(&dword_228986000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: Received limit exceeded error; retrying by splitting record zone request in half and re-fetching (%ld zone saves, %ld zone deletions).", &v21, 0x20u);
      }

      v15 = [zonesCopy hk_splitWithBucketCount:2];
      v16 = [dsCopy hk_splitWithBucketCount:2];
      v17 = [v15 objectAtIndexedSubscript:0];
      v18 = [v16 objectAtIndexedSubscript:0];
      [(HDCloudSyncModifyRecordZonesOperation *)self _saveRecordZones:v17 deleteRecordZoneIDs:v18];

      v19 = [v15 objectAtIndexedSubscript:1];
      v20 = [v16 objectAtIndexedSubscript:1];
      [(HDCloudSyncModifyRecordZonesOperation *)self _saveRecordZones:v19 deleteRecordZoneIDs:v20];
    }
  }

  else
  {
    _HKInitializeLogging();
    v12 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v21 = 138543362;
      selfCopy2 = self;
      _os_log_error_impl(&dword_228986000, v12, OS_LOG_TYPE_ERROR, "%{public}@: Received limit exceeded error for a single record zone modification. This is unexpected.", &v21, 0xCu);
    }

    [(HDSynchronousTaskGroup *)self->_taskGroup beginTask];
    [(HDSynchronousTaskGroup *)self->_taskGroup failTaskWithError:errorCopy];
  }
}

- (void)synchronousTaskGroup:(id)group didFinishWithSuccess:(BOOL)success errors:(id)errors
{
  successCopy = success;
  firstObject = [errors firstObject];
  [(HDCloudSyncOperation *)self finishWithSuccess:successCopy error:firstObject];
}

@end