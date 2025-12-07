@interface HDCloudSyncPipelineStageMedicalID
- (void)main;
@end

@implementation HDCloudSyncPipelineStageMedicalID

- (void)main
{
  v90[1] = *MEMORY[0x277D85DE8];
  configuration = [(HDCloudSyncOperation *)self configuration];
  repository = [configuration repository];
  medicalIDDataManager = [repository medicalIDDataManager];
  v81 = 0;
  v6 = [medicalIDDataManager fetchMedicalIDWithError:&v81];
  v7 = v81;
  localMedicalIDData = self->_localMedicalIDData;
  self->_localMedicalIDData = v6;

  cloudMedicalIDData = self->_cloudMedicalIDData;
  self->_cloudMedicalIDData = 0;

  medicalIDRecord = self->_medicalIDRecord;
  self->_medicalIDRecord = 0;

  if (self->_localMedicalIDData)
  {
    v11 = 1;
  }

  else
  {
    v11 = v7 == 0;
  }

  if (v11)
  {
    v70 = v7;
    v12 = [HDCloudSyncCompoundOperation alloc];
    configuration2 = [(HDCloudSyncOperation *)self configuration];
    v71 = [(HDCloudSyncCompoundOperation *)v12 initWithConfiguration:configuration2 cloudState:0 name:@"Fetch and Process Medical ID" continueOnSubOperationError:0];

    v14 = [HDCloudSyncParallelOperation alloc];
    configuration3 = [(HDCloudSyncOperation *)self configuration];
    v16 = [(HDCloudSyncParallelOperation *)v14 initWithConfiguration:configuration3 cloudState:0];

    configuration4 = [(HDCloudSyncOperation *)self configuration];
    repository2 = [configuration4 repository];
    secondaryCKContainers = [repository2 secondaryCKContainers];

    v20 = [HDCloudSyncMedicalIDFetchOperation alloc];
    configuration5 = [(HDCloudSyncOperation *)self configuration];
    configuration6 = [(HDCloudSyncOperation *)self configuration];
    repository3 = [configuration6 repository];
    primaryCKContainer = [repository3 primaryCKContainer];
    v25 = [(HDCloudSyncMedicalIDFetchOperation *)v20 initWithConfiguration:configuration5 cloudState:0 container:primaryCKContainer];

    v69 = v25;
    [(HDCloudSyncParallelOperation *)v16 addOperation:v25];
    v26 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    obj = secondaryCKContainers;
    v27 = [obj countByEnumeratingWithState:&v77 objects:v85 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v78;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v78 != v29)
          {
            objc_enumerationMutation(obj);
          }

          v31 = *(*(&v77 + 1) + 8 * i);
          v32 = [HDCloudSyncMedicalIDFetchOperation alloc];
          configuration7 = [(HDCloudSyncOperation *)self configuration];
          v34 = [(HDCloudSyncMedicalIDFetchOperation *)v32 initWithConfiguration:configuration7 cloudState:0 container:v31];

          [v26 addObject:v34];
          operationIgnoringErrors = [(HDCloudSyncOperation *)v34 operationIgnoringErrors];
          [(HDCloudSyncParallelOperation *)v16 addOperation:operationIgnoringErrors];
        }

        v28 = [obj countByEnumeratingWithState:&v77 objects:v85 count:16];
      }

      while (v28);
    }

    [(HDCloudSyncCompoundOperation *)v71 addOperation:v16 transitionHandler:0];
    configuration8 = [(HDCloudSyncOperation *)self configuration];
    if (self)
    {
      v72 = configuration8;
      v37 = [[HDCloudSyncCompoundOperation alloc] initWithConfiguration:configuration8 cloudState:0 name:@"Process Medical ID" continueOnSubOperationError:0];
      v38 = [(HDCloudSyncOperation *)[HDCloudSyncMedicalIDMergeOperation alloc] initWithConfiguration:v72 cloudState:0];
      v84[0] = MEMORY[0x277D85DD0];
      v84[1] = 3221225472;
      v84[2] = __77__HDCloudSyncPipelineStageMedicalID__compoundSyncOperationWithConfiguration___block_invoke;
      v84[3] = &unk_278625218;
      v84[4] = self;
      [(HDCloudSyncCompoundOperation *)v37 setPreparationHandler:v84];
      [(HDCloudSyncCompoundOperation *)v37 addOperation:v38 transitionHandler:0];
      v39 = [(HDCloudSyncOperation *)[HDCloudSyncMedicalIDPersistOperation alloc] initWithConfiguration:v72 cloudState:0];
      v82[0] = MEMORY[0x277D85DD0];
      v82[1] = 3221225472;
      v82[2] = __77__HDCloudSyncPipelineStageMedicalID__compoundSyncOperationWithConfiguration___block_invoke_2;
      v82[3] = &unk_278625240;
      v67 = v38;
      v68 = v39;
      v83 = v67;
      [(HDCloudSyncCompoundOperation *)v37 addOperation:v39 transitionHandler:v82];
      configuration9 = [(HDCloudSyncOperation *)self configuration];
      repository4 = [configuration9 repository];
      primaryCKContainer2 = [repository4 primaryCKContainer];
      configuration10 = [(HDCloudSyncOperation *)self configuration];
      repository5 = [configuration10 repository];
      profileIdentifier = [repository5 profileIdentifier];
      v45 = HDDatabaseForContainer(primaryCKContainer2, profileIdentifier);
      databaseScope = [v45 databaseScope];

      v46 = v37;
      configuration8 = v72;

      if (databaseScope == 2)
      {
        v47 = objc_alloc(MEMORY[0x277CBC5E8]);
        v48 = MEMORY[0x277CBC5F8];
        repository6 = [v72 repository];
        syncCircleIdentifier = [repository6 syncCircleIdentifier];
        v51 = [v48 hd_unifiedSyncZoneIDForSyncCircleIdentifier:syncCircleIdentifier];
        v52 = [v47 initWithZoneID:v51];

        v53 = [HDCloudSyncCreateZonesOperation alloc];
        v90[0] = v52;
        v54 = [MEMORY[0x277CBEA60] arrayWithObjects:v90 count:1];
        repository7 = [v72 repository];
        primaryCKContainer3 = [repository7 primaryCKContainer];
        v57 = [(HDCloudSyncCreateZonesOperation *)v53 initWithConfiguration:v72 cloudState:0 zones:v54 container:primaryCKContainer3];

        [(HDCloudSyncCompoundOperation *)v46 addOperation:v57 transitionHandler:0];
      }

      v58 = [(HDCloudSyncOperation *)[HDCloudSyncMedicalIDPushOperation alloc] initWithConfiguration:v72 cloudState:0];
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __77__HDCloudSyncPipelineStageMedicalID__compoundSyncOperationWithConfiguration___block_invoke_3;
      v87 = &unk_278614D48;
      selfCopy = self;
      v89 = v67;
      v59 = v67;
      [(HDCloudSyncCompoundOperation *)v46 addOperation:v58 transitionHandler:buf];
    }

    else
    {
      v46 = 0;
    }

    v74[0] = MEMORY[0x277D85DD0];
    v74[1] = 3221225472;
    v74[2] = __41__HDCloudSyncPipelineStageMedicalID_main__block_invoke;
    v74[3] = &unk_2786251F0;
    v74[4] = self;
    v75 = v69;
    v76 = v26;
    v60 = v26;
    v61 = v69;
    v62 = [(HDCloudSyncOperation *)v46 operationWithRunCondition:v74];
    [(HDCloudSyncCompoundOperation *)v71 addOperation:v62 transitionHandler:0];
    [(HDCloudSyncOperation *)self delegateToOperation:v71];

    v7 = v70;
  }

  else
  {
    _HKInitializeLogging();
    v63 = *MEMORY[0x277CCC2E0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2E0], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      *&buf[4] = self;
      *&buf[12] = 2114;
      *&buf[14] = v7;
      _os_log_error_impl(&dword_228986000, v63, OS_LOG_TYPE_ERROR, "%{public}@ Failed to fetch local Medical ID during cloud sync with error %{public}@", buf, 0x16u);
    }

    [(HDCloudSyncOperation *)self finishWithSuccess:0 error:v7];
  }
}

uint64_t __41__HDCloudSyncPipelineStageMedicalID_main__block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v3 = *(a1 + 40);
  v4 = v2;
  v27 = v3;
  if (v1)
  {
    v5 = v3;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v6 = [v4 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v31;
      obj = v4;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v31 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v30 + 1) + 8 * i);
          v11 = [v5 cloudMedicalIDData];

          if (v11)
          {
            v12 = [v5 cloudMedicalIDData];
            v13 = [v12 dateSaved];
            v14 = [v10 cloudMedicalIDData];
            v15 = [v14 dateSaved];
            v16 = [v13 hk_isBeforeDate:v15];

            if (!v16)
            {
              continue;
            }
          }

          v17 = v10;

          v5 = v17;
        }

        v4 = obj;
        v7 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v5 = 0;
  }

  v18 = [v5 cloudMedicalIDData];
  v19 = *(a1 + 32);
  v20 = *(v19 + 136);
  *(v19 + 136) = v18;

  v21 = [*(a1 + 40) medicalIDRecord];
  v22 = *(a1 + 32);
  v23 = *(v22 + 144);
  *(v22 + 144) = v21;

  v24 = *(a1 + 32);
  if (*(v24 + 128) == 0)
  {
    v25 = 0;
  }

  else
  {
    v25 = [*(v24 + 128) isEqualToSyncedData:?] ^ 1;
  }

  return v25;
}

void __77__HDCloudSyncPipelineStageMedicalID__compoundSyncOperationWithConfiguration___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 128);
  v4 = a2;
  v5 = [v4 operations];
  v6 = [v5 firstObject];
  [v6 setLocalMedicalIDData:v3];

  v7 = *(*(a1 + 32) + 136);
  v9 = [v4 operations];

  v8 = [v9 firstObject];
  [v8 setCloudMedicalIDData:v7];
}

void __77__HDCloudSyncPipelineStageMedicalID__compoundSyncOperationWithConfiguration___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = a3;
  v5 = [v3 mergedMedicalIDData];
  [v4 setMedicalIDDataToPersist:v5];
}

void __77__HDCloudSyncPipelineStageMedicalID__compoundSyncOperationWithConfiguration___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(*(a1 + 32) + 136);
  v6 = a3;
  [v6 setCloudMedicalIDData:v4];
  v5 = [*(a1 + 40) mergedMedicalIDData];
  [v6 setMedicalIDDataToPush:v5];

  [v6 setMedicalIDRecord:*(*(a1 + 32) + 144)];
}

@end