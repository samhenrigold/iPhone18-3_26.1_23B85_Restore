@interface HDCloudSyncDisableAndDeleteOperation
- (BOOL)_isSecureSecondaryContainer:(id)container;
- (id)_createZonesOperationForContainer:(id)container;
- (id)_deleteUnifiedZoneRecordsOperationForContainer:(id)container zones:(id)zones;
- (id)_deleteZonesOperationForContainer:(id)container zones:(id)zones;
- (id)_leaveSharesOperationForContainer:(id)container;
- (void)main;
@end

@implementation HDCloudSyncDisableAndDeleteOperation

- (void)main
{
  v69 = *MEMORY[0x277D85DE8];
  v3 = [HDCloudSyncCompoundOperation alloc];
  configuration = [(HDCloudSyncOperation *)self configuration];
  v51 = [(HDCloudSyncCompoundOperation *)v3 initWithConfiguration:configuration cloudState:0 name:@"Disable & Delete" continueOnSubOperationError:0];

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  configuration2 = [(HDCloudSyncOperation *)self configuration];
  repository = [configuration2 repository];
  allCKContainers = [repository allCKContainers];

  v8 = [allCKContainers countByEnumeratingWithState:&v57 objects:v68 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v58;
    do
    {
      v11 = 0;
      do
      {
        if (*v58 != v10)
        {
          objc_enumerationMutation(allCKContainers);
        }

        v12 = *(*(&v57 + 1) + 8 * v11);
        configuration3 = [(HDCloudSyncOperation *)self configuration];
        repository2 = [configuration3 repository];
        profileIdentifier = [repository2 profileIdentifier];
        v16 = HDDatabaseForContainer(v12, profileIdentifier);

        databaseScope = [v16 databaseScope];
        if (databaseScope == 2)
        {
          currentHandler = [(HDCloudSyncDisableAndDeleteOperation *)self _createZonesOperationForContainer:v12];
          [(HDCloudSyncCompoundOperation *)v51 addOperation:currentHandler transitionHandler:0];
        }

        else
        {
          if (databaseScope != 1)
          {
            goto LABEL_11;
          }

          currentHandler = [MEMORY[0x277CCA890] currentHandler];
          [currentHandler handleFailureInMethod:a2 object:self file:@"HDCloudSyncDisableAndDeleteOperation.m" lineNumber:68 description:@"Public database scope not handled for disable and delete."];
        }

LABEL_11:
        ++v11;
      }

      while (v9 != v11);
      v9 = [allCKContainers countByEnumeratingWithState:&v57 objects:v68 count:16];
    }

    while (v9);
  }

  [(HDCloudSyncCompoundOperation *)v51 addOperationOfClass:objc_opt_class() transitionHandler:0];
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  configuration4 = [(HDCloudSyncOperation *)self configuration];
  repository3 = [configuration4 repository];
  allCKContainers2 = [repository3 allCKContainers];

  obj = allCKContainers2;
  v22 = [allCKContainers2 countByEnumeratingWithState:&v53 objects:v67 count:16];
  if (v22)
  {
    v24 = v22;
    v49 = *v54;
    *&v23 = 138543618;
    v47 = v23;
LABEL_15:
    v25 = 0;
    while (1)
    {
      if (*v54 != v49)
      {
        objc_enumerationMutation(obj);
      }

      v26 = *(*(&v53 + 1) + 8 * v25);
      configuration5 = [(HDCloudSyncOperation *)self configuration];
      repository4 = [configuration5 repository];
      profileIdentifier2 = [repository4 profileIdentifier];
      v30 = HDDatabaseForContainer(v26, profileIdentifier2);

      configuration6 = [(HDCloudSyncOperation *)self configuration];
      cachedCloudState = [configuration6 cachedCloudState];
      containerIdentifier = [v26 containerIdentifier];
      v52 = 0;
      v34 = [cachedCloudState zonesForContainerID:containerIdentifier error:&v52];
      v35 = v52;

      if (!v34 && v35)
      {
        _HKInitializeLogging();
        v44 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
        {
          v45 = v44;
          containerIdentifier2 = [v26 containerIdentifier];
          *buf = 138543874;
          selfCopy2 = self;
          v63 = 2114;
          v64 = containerIdentifier2;
          v65 = 2114;
          v66 = v35;
          _os_log_error_impl(&dword_228986000, v45, OS_LOG_TYPE_ERROR, "%{public}@ Failed to retrieve cached zones for container %{public}@, %{public}@", buf, 0x20u);
        }

        [(HDCloudSyncOperation *)self finishWithSuccess:0 error:v35];

        v43 = v51;
        goto LABEL_37;
      }

      if (v34)
      {
        databaseScope2 = [v30 databaseScope];
        switch(databaseScope2)
        {
          case 3:
            currentHandler2 = [(HDCloudSyncDisableAndDeleteOperation *)self _leaveSharesOperationForContainer:v26];
            v41 = v51;
            goto LABEL_29;
          case 2:
            v40 = [(HDCloudSyncDisableAndDeleteOperation *)self _deleteZonesOperationForContainer:v26 zones:v34];
            [(HDCloudSyncCompoundOperation *)v51 addOperation:v40 transitionHandler:0];

            currentHandler2 = [(HDCloudSyncDisableAndDeleteOperation *)self _deleteUnifiedZoneRecordsOperationForContainer:v26 zones:v34];
            v41 = v51;
LABEL_29:
            [(HDCloudSyncCompoundOperation *)v41 addOperation:currentHandler2 transitionHandler:0];
            goto LABEL_30;
          case 1:
            currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
            [currentHandler2 handleFailureInMethod:a2 object:self file:@"HDCloudSyncDisableAndDeleteOperation.m" lineNumber:100 description:@"Public database scope not handled for disable and delete."];
LABEL_30:

            break;
        }
      }

      else
      {
        _HKInitializeLogging();
        v38 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEBUG))
        {
          currentHandler2 = v38;
          containerIdentifier3 = [v26 containerIdentifier];
          *buf = v47;
          selfCopy2 = self;
          v63 = 2114;
          v64 = containerIdentifier3;
          _os_log_debug_impl(&dword_228986000, currentHandler2, OS_LOG_TYPE_DEBUG, "%{public}@ No cached zones found for container %{public}@.", buf, 0x16u);

          goto LABEL_30;
        }
      }

      if (v24 == ++v25)
      {
        v24 = [obj countByEnumeratingWithState:&v53 objects:v67 count:16];
        if (v24)
        {
          goto LABEL_15;
        }

        break;
      }
    }
  }

  selfCopy3 = self;
  v43 = v51;
  [(HDCloudSyncOperation *)selfCopy3 delegateToOperation:v51];
LABEL_37:
}

- (BOOL)_isSecureSecondaryContainer:(id)container
{
  containerCopy = container;
  containerIdentifier = [containerCopy containerIdentifier];
  if ([containerIdentifier isEqualToString:@"com.apple.health.sync.secure"])
  {
    containerIdentifier2 = [containerCopy containerIdentifier];
    configuration = [(HDCloudSyncOperation *)self configuration];
    repository = [configuration repository];
    primaryCKContainer = [repository primaryCKContainer];
    containerIdentifier3 = [primaryCKContainer containerIdentifier];
    v11 = [containerIdentifier2 isEqualToString:containerIdentifier3] ^ 1;
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11;
}

- (id)_createZonesOperationForContainer:(id)container
{
  v27[2] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBC5E8];
  containerCopy = container;
  v5 = [v4 alloc];
  v6 = MEMORY[0x277CBC5F8];
  configuration = [(HDCloudSyncOperation *)self configuration];
  repository = [configuration repository];
  syncCircleIdentifier = [repository syncCircleIdentifier];
  v8 = [v6 hd_masterZoneIDForSyncCircleIdentifier:syncCircleIdentifier];
  v9 = [v5 initWithZoneID:v8];
  v27[0] = v9;
  v10 = objc_alloc(MEMORY[0x277CBC5E8]);
  v11 = MEMORY[0x277CBC5F8];
  configuration2 = [(HDCloudSyncOperation *)self configuration];
  repository2 = [configuration2 repository];
  syncCircleIdentifier2 = [repository2 syncCircleIdentifier];
  v15 = [v11 hd_unifiedSyncZoneIDForSyncCircleIdentifier:syncCircleIdentifier2];
  v16 = [v10 initWithZoneID:v15];
  v27[1] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];

  v18 = [HDCloudSyncCreateZonesOperation alloc];
  configuration3 = [(HDCloudSyncOperation *)self configuration];
  v20 = [(HDCloudSyncCreateZonesOperation *)v18 initWithConfiguration:configuration3 cloudState:0 zones:v17 container:containerCopy];

  LOBYTE(self) = [(HDCloudSyncDisableAndDeleteOperation *)self _isSecureSecondaryContainer:containerCopy];
  if (self)
  {
    operationIgnoringErrors = [(HDCloudSyncOperation *)v20 operationIgnoringErrors];
  }

  else
  {
    operationIgnoringErrors = v20;
  }

  v22 = operationIgnoringErrors;

  return v22;
}

- (id)_deleteZonesOperationForContainer:(id)container zones:(id)zones
{
  zonesCopy = zones;
  containerCopy = container;
  v8 = [HDCloudSyncDeleteZonesOperation alloc];
  configuration = [(HDCloudSyncOperation *)self configuration];
  v10 = [(HDCloudSyncDeleteZonesOperation *)v8 initWithConfiguration:configuration cloudState:0];

  v11 = [zonesCopy hk_map:&__block_literal_global_172];

  [(HDCloudSyncDeleteZonesOperation *)v10 setZonesToDelete:v11];
  LOBYTE(self) = [(HDCloudSyncDisableAndDeleteOperation *)self _isSecureSecondaryContainer:containerCopy];

  if (self)
  {
    operationIgnoringErrors = [(HDCloudSyncOperation *)v10 operationIgnoringErrors];
  }

  else
  {
    operationIgnoringErrors = v10;
  }

  v13 = operationIgnoringErrors;

  return v13;
}

id __80__HDCloudSyncDisableAndDeleteOperation__deleteZonesOperationForContainer_zones___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 zoneIdentifier];
  v4 = [v3 type];

  if ((v4 - 3) < 5 || v4 == 1)
  {
    v7 = [v2 zoneIdentifier];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_deleteUnifiedZoneRecordsOperationForContainer:(id)container zones:(id)zones
{
  v60 = *MEMORY[0x277D85DE8];
  containerCopy = container;
  zonesCopy = zones;
  v7 = [HDCloudSyncDeleteRecordsOperation alloc];
  selfCopy = self;
  configuration = [(HDCloudSyncOperation *)self configuration];
  v41 = [(HDCloudSyncDeleteRecordsOperation *)v7 initWithConfiguration:configuration cloudState:0];

  v44 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v9 = zonesCopy;
  v10 = [v9 countByEnumeratingWithState:&v49 objects:v59 count:16];
  if (v10)
  {
    v12 = v10;
    v13 = *v50;
    *&v11 = 138543874;
    v40 = v11;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v50 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v49 + 1) + 8 * i);
        zoneIdentifier = [v15 zoneIdentifier];
        type = [zoneIdentifier type];

        if (type == 2)
        {
          v18 = objc_opt_class();
          v48 = 0;
          v46[0] = MEMORY[0x277D85DD0];
          v46[1] = 3221225472;
          v46[2] = __93__HDCloudSyncDisableAndDeleteOperation__deleteUnifiedZoneRecordsOperationForContainer_zones___block_invoke;
          v46[3] = &unk_278621DE8;
          v19 = v44;
          v47 = v19;
          LOBYTE(v18) = [v15 recordsForClass:v18 epoch:0 error:&v48 enumerationHandler:v46];
          v20 = v48;
          if ((v18 & 1) == 0)
          {
            _HKInitializeLogging();
            v35 = *MEMORY[0x277CCC328];
            if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
            {
              v38 = v35;
              zoneIdentifier2 = [v15 zoneIdentifier];
              *buf = v40;
              v54 = selfCopy;
              v55 = 2114;
              v56 = zoneIdentifier2;
              v57 = 2114;
              v58 = v20;
              _os_log_error_impl(&dword_228986000, v38, OS_LOG_TYPE_ERROR, "%{public}@ Failed to get store records for %{public}@, %{public}@", buf, 0x20u);
            }

            [(HDCloudSyncOperation *)selfCopy finishWithSuccess:0 error:v20];

            v36 = 0;
            v32 = v41;
            v33 = containerCopy;
            goto LABEL_24;
          }

          v21 = v9;
          zoneIdentifier3 = [v15 zoneIdentifier];
          v22ZoneIdentifier = [zoneIdentifier3 zoneIdentifier];

          v24 = [HDCloudSyncMedicalIDRecord recordIDWithZoneID:v22ZoneIdentifier];
          [v19 addObject:v24];

          v45 = 0;
          v25 = [v15 zoneShareWithError:&v45];
          v26 = v45;
          v27 = v26;
          if (v25 || !v26)
          {
            if (v25)
            {
              recordID = [v25 recordID];
              [v19 addObject:recordID];
            }
          }

          else
          {
            _HKInitializeLogging();
            v28 = *MEMORY[0x277CCC328];
            if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
            {
              v29 = v28;
              zoneIdentifier4 = [v15 zoneIdentifier];
              *buf = v40;
              v54 = selfCopy;
              v55 = 2114;
              v56 = zoneIdentifier4;
              v57 = 2114;
              v58 = v27;
              _os_log_error_impl(&dword_228986000, v29, OS_LOG_TYPE_ERROR, "%{public}@ Failed to retrieve cached CKShare for zone %{public}@, %{public}@", buf, 0x20u);
            }
          }

          v9 = v21;
        }
      }

      v12 = [v9 countByEnumeratingWithState:&v49 objects:v59 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v32 = v41;
  [(HDCloudSyncDeleteRecordsOperation *)v41 setRecordIDsToDelete:v44];
  v33 = containerCopy;
  if ([(HDCloudSyncDisableAndDeleteOperation *)selfCopy _isSecureSecondaryContainer:containerCopy])
  {
    operationIgnoringErrors = [(HDCloudSyncOperation *)v41 operationIgnoringErrors];
  }

  else
  {
    operationIgnoringErrors = v41;
  }

  v36 = operationIgnoringErrors;
LABEL_24:

  return v36;
}

uint64_t __93__HDCloudSyncDisableAndDeleteOperation__deleteUnifiedZoneRecordsOperationForContainer_zones___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 recordID];
  [v2 addObject:v3];

  return 1;
}

- (id)_leaveSharesOperationForContainer:(id)container
{
  v4 = [HDCloudSyncLeaveAllSharesOperation alloc];
  configuration = [(HDCloudSyncOperation *)self configuration];
  v6 = [(HDCloudSyncOperation *)v4 initWithConfiguration:configuration cloudState:0];

  return v6;
}

@end