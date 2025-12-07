@interface DRSConfigPersistedStore
- (BOOL)addConfigMetdata:(id)metdata errorOut:(id *)out;
- (BOOL)applyWaitingConfigWithUUID:(id)d appliedDate:(id)date errorOut:(id *)out;
- (BOOL)clearStoreWithErrorOut:(id *)out;
- (BOOL)completeConfigWithUUID:(id)d completedDate:(id)date completionType:(unint64_t)type completionDescription:(id)description errorOut:(id *)out;
- (BOOL)updateCloudChannelConfig:(id)config errorOut:(id *)out;
- (DRSConfigPersistedStore)initWithWorkingDirectory:(id)directory isReadOnly:(BOOL)only cloudKitHelper:(id)helper errorOut:(id *)out;
- (id)_ON_MOC_cloudChannelConfigMOs;
- (id)cloudChannelConfig;
- (id)configMetadataForUUID:(id)d errorOut:(id *)out;
- (id)configMetadatasForPredicate:(id)predicate sortDescriptors:(id)descriptors fetchLimit:(unint64_t)limit errorOut:(id *)out;
- (unint64_t)_countForFetchRequest:(id)request withPredicate:(id)predicate fetchLimit:(unint64_t)limit errorOut:(id *)out;
- (unint64_t)configCountForPredicate:(id)predicate fetchLimit:(unint64_t)limit withErrorOut:(id *)out;
- (unint64_t)metadataCountForPredicate:(id)predicate fetchLimit:(unint64_t)limit withErrorOut:(id *)out;
- (void)_ON_MOC_deleteCloudChannelConfigMOs:(id)os;
@end

@implementation DRSConfigPersistedStore

- (id)configMetadataForUUID:(id)d errorOut:(id *)out
{
  dCopy = d;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__7;
  v26 = __Block_byref_object_dispose__7;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__7;
  v20 = __Block_byref_object_dispose__7;
  v21 = 0;
  context = [(DRSConfigPersistedStore *)self context];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __58__DRSConfigPersistedStore_configMetadataForUUID_errorOut___block_invoke;
  v11[3] = &unk_27899ED80;
  v8 = dCopy;
  v12 = v8;
  selfCopy = self;
  v14 = &v16;
  v15 = &v22;
  [context performBlockAndWait:v11];

  if (out)
  {
    *out = v17[5];
  }

  v9 = v23[5];

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);

  return v9;
}

void __58__DRSConfigPersistedStore_configMetadataForUUID_errorOut___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) context];
  v11 = 0;
  v4 = [DRSConfigMetadata _ON_CONTEXT_QUEUE_existingBackingMOWithConfigUUID:v2 context:v3 errorOut:&v11];
  v5 = v11;
  v6 = v11;

  objc_storeStrong((*(*(a1 + 48) + 8) + 40), v5);
  if (v4)
  {
    v7 = [DRSConfigMetadata alloc];
    v8 = [(DRSConfigMetadata *)v7 _ON_CONTEXT_QUEUE_initWithConfigMetadataMO:v4];
    v9 = *(*(a1 + 56) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }
}

- (BOOL)addConfigMetdata:(id)metdata errorOut:(id *)out
{
  v41[1] = *MEMORY[0x277D85DE8];
  metdataCopy = metdata;
  if (![(DRSConfigPersistedStore *)self isReadOnly])
  {
    v32 = 0;
    v33 = &v32;
    v34 = 0x2020000000;
    v35 = 0;
    v26 = 0;
    v27 = &v26;
    v28 = 0x3032000000;
    v29 = __Block_byref_object_copy__7;
    v30 = __Block_byref_object_dispose__7;
    v31 = 0;
    context = [(DRSConfigPersistedStore *)self context];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __53__DRSConfigPersistedStore_addConfigMetdata_errorOut___block_invoke;
    v21[3] = &unk_27899ED80;
    v11 = metdataCopy;
    v22 = v11;
    selfCopy = self;
    v24 = &v26;
    v25 = &v32;
    [context performBlockAndWait:v21];

    if (out)
    {
      v12 = v27[5];
      *out = v12;
    }

    if (!v27[5])
    {
      if (*(v33 + 24) != 1)
      {
        v9 = 1;
        goto LABEL_13;
      }

      if (out)
      {
        v13 = MEMORY[0x277CCACA8];
        configUUID = [v11 configUUID];
        v15 = [v13 stringWithFormat:@"Attempted to add already existing metadata with config UUID %@", configUUID];

        v16 = MEMORY[0x277CCA9B8];
        v38 = *MEMORY[0x277CCA450];
        v39 = v15;
        v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
        *out = [v16 errorWithDomain:@"DRSConfigPersistenceError" code:0 userInfo:v17];
      }

      v18 = DPLogHandle_ConfigPersistedStoreError(v12);
      if (os_signpost_enabled(v18))
      {
        configUUID2 = [v11 configUUID];
        *buf = 138412290;
        v37 = configUUID2;
        _os_signpost_emit_with_name_impl(&dword_232906000, v18, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ConfigMetadataCollision", "Attempted to add already existing metadata with config UUID %@", buf, 0xCu);
      }
    }

    v9 = 0;
LABEL_13:

    _Block_object_dispose(&v26, 8);
    _Block_object_dispose(&v32, 8);
    goto LABEL_14;
  }

  v7 = MEMORY[0x277CCA9B8];
  v40 = *MEMORY[0x277CCA450];
  v41[0] = @"Attempted write operation on read-only ConfigPersistedStore";
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:&v40 count:1];
  *out = [v7 errorWithDomain:@"DRSConfigPersistenceError" code:0 userInfo:v8];

  v9 = 0;
LABEL_14:

  return v9;
}

void __53__DRSConfigPersistedStore_addConfigMetdata_errorOut___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _uuidPredicate];
  v3 = [*(a1 + 40) context];
  v22 = 0;
  v4 = [DRSConfigMetadata _ON_CONTEXT_QUEUE_countForFilterPredicate:v2 context:v3 errorOut:&v22];
  v5 = v22;
  v6 = v22;

  objc_storeStrong((*(*(a1 + 48) + 8) + 40), v5);
  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    if (v4)
    {
      *(*(*(a1 + 56) + 8) + 24) = 1;
    }

    else
    {
      v7 = *(a1 + 32);
      v8 = [*(a1 + 40) context];
      v9 = *(*(a1 + 48) + 8);
      obj = *(v9 + 40);
      v10 = [v7 _ON_CONTEXT_QUEUE_moRepresentationInContext:v8 createIfMissing:1 errorOut:&obj];
      objc_storeStrong((v9 + 40), obj);

      if (v10)
      {
        v11 = [*(a1 + 40) context];
        v12 = *(*(a1 + 48) + 8);
        v20 = *(v12 + 40);
        v13 = [v11 save:&v20];
        objc_storeStrong((v12 + 40), v20);

        if (v13)
        {
          v15 = DPLogHandle_ConfigPersistedStore(v14);
          if (os_signpost_enabled(v15))
          {
            v16 = [*(a1 + 32) configUUID];
            [*(a1 + 32) state];
            v17 = DRConfigStringForState();
            *buf = 138543618;
            v24 = v16;
            v25 = 2114;
            v26 = v17;
            _os_signpost_emit_with_name_impl(&dword_232906000, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ConfigMetadataSaveSuccess", "Saved %{public}@ with state %{public}@", buf, 0x16u);
          }
        }

        else
        {
          v15 = DPLogHandle_ConfigPersistedStoreError(v14);
          if (os_signpost_enabled(v15))
          {
            v18 = [*(a1 + 32) configUUID];
            v19 = *(*(*(a1 + 48) + 8) + 40);
            *buf = 138543618;
            v24 = v18;
            v25 = 2114;
            v26 = v19;
            _os_signpost_emit_with_name_impl(&dword_232906000, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ConfigMetadataSaveFailed", "Could not save %{public}@ due to error %{public}@", buf, 0x16u);
          }
        }
      }
    }
  }
}

- (BOOL)applyWaitingConfigWithUUID:(id)d appliedDate:(id)date errorOut:(id *)out
{
  v36[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  dateCopy = date;
  if ([(DRSConfigPersistedStore *)self isReadOnly])
  {
    v10 = MEMORY[0x277CCA9B8];
    v35 = *MEMORY[0x277CCA450];
    v36[0] = @"Attempted write operation on read-only ConfigPersistedStore";
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:&v35 count:1];
    *out = [v10 errorWithDomain:@"DRSConfigPersistenceError" code:0 userInfo:v11];

    v12 = 0;
  }

  else
  {
    v25 = 0;
    v26 = &v25;
    v27 = 0x3032000000;
    v28 = __Block_byref_object_copy__7;
    v29 = __Block_byref_object_dispose__7;
    v30 = 0;
    context = [(DRSConfigPersistedStore *)self context];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __75__DRSConfigPersistedStore_applyWaitingConfigWithUUID_appliedDate_errorOut___block_invoke;
    v20[3] = &unk_27899FAE0;
    v14 = dCopy;
    v21 = v14;
    selfCopy = self;
    v24 = &v25;
    v23 = dateCopy;
    [context performBlockAndWait:v20];

    v16 = v26[5];
    v12 = v16 == 0;
    if (v16)
    {
      v17 = DPLogHandle_ConfigPersistedStoreError(v15);
      if (os_signpost_enabled(v17))
      {
        v18 = v26[5];
        *buf = 138543618;
        v32 = v14;
        v33 = 2114;
        v34 = v18;
        _os_signpost_emit_with_name_impl(&dword_232906000, v17, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ApplyWaitingConfigFailed", "Could not apply waiting config %{public}@ due to error %{public}@", buf, 0x16u);
      }

      *out = v26[5];
    }

    _Block_object_dispose(&v25, 8);
  }

  return v12;
}

void __75__DRSConfigPersistedStore_applyWaitingConfigWithUUID_appliedDate_errorOut___block_invoke(uint64_t a1)
{
  v37[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) context];
  v31 = 0;
  v4 = [DRSConfigMetadata _ON_CONTEXT_QUEUE_existingBackingMOWithConfigUUID:v2 context:v3 errorOut:&v31];
  v5 = v31;
  v6 = v31;

  objc_storeStrong((*(*(a1 + 56) + 8) + 40), v5);
  if (!*(*(*(a1 + 56) + 8) + 40))
  {
    if (v4)
    {
      if ([v4 state] == 1)
      {
        v7 = [v4 completionType];
        v8 = [v4 receivedDate];
        v9 = *(a1 + 48);
        v10 = [v4 completedDate];
        v11 = [v4 completionDescription];
        v12 = [DRSConfigMetadata _isValidState:2 completionType:v7 receivedDate:v8 appliedDate:v9 completedDate:v10 completionDescription:v11];

        if (v12)
        {
          [v4 setState:2];
          [v4 setAppliedDate:*(a1 + 48)];
          v13 = [*(a1 + 40) context];
          v14 = *(*(a1 + 56) + 8);
          v30 = *(v14 + 40);
          [v13 save:&v30];
          v15 = v30;
          v16 = *(v14 + 40);
          *(v14 + 40) = v15;
LABEL_10:

          goto LABEL_11;
        }

        v25 = MEMORY[0x277CCACA8];
        v26 = [*(a1 + 32) UUIDString];
        v13 = [v25 stringWithFormat:@"Failed to apply config %@", v26];

        v19 = MEMORY[0x277CCA9B8];
        v32 = *MEMORY[0x277CCA450];
        v33 = v13;
        v20 = MEMORY[0x277CBEAC0];
        v21 = &v33;
        v22 = &v32;
      }

      else
      {
        v23 = MEMORY[0x277CCACA8];
        v24 = [*(a1 + 32) UUIDString];
        v13 = [v23 stringWithFormat:@"Attempted to apply non-waiting config %@", v24];

        v19 = MEMORY[0x277CCA9B8];
        v34 = *MEMORY[0x277CCA450];
        v35 = v13;
        v20 = MEMORY[0x277CBEAC0];
        v21 = &v35;
        v22 = &v34;
      }
    }

    else
    {
      v17 = MEMORY[0x277CCACA8];
      v18 = [*(a1 + 32) UUIDString];
      v13 = [v17 stringWithFormat:@"Attempting to update missing config %@", v18];

      v19 = MEMORY[0x277CCA9B8];
      v36 = *MEMORY[0x277CCA450];
      v37[0] = v13;
      v20 = MEMORY[0x277CBEAC0];
      v21 = v37;
      v22 = &v36;
    }

    v16 = [v20 dictionaryWithObjects:v21 forKeys:v22 count:1];
    v27 = [v19 errorWithDomain:@"DRSConfigPersistenceError" code:0 userInfo:v16];
    v28 = *(*(a1 + 56) + 8);
    v29 = *(v28 + 40);
    *(v28 + 40) = v27;

    goto LABEL_10;
  }

LABEL_11:
}

- (BOOL)completeConfigWithUUID:(id)d completedDate:(id)date completionType:(unint64_t)type completionDescription:(id)description errorOut:(id *)out
{
  v48[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  dateCopy = date;
  descriptionCopy = description;
  if ([(DRSConfigPersistedStore *)self isReadOnly])
  {
    if (out)
    {
      v15 = MEMORY[0x277CCA9B8];
      v47 = *MEMORY[0x277CCA450];
      v48[0] = @"Attempted write operation on read-only ConfigPersistedStore";
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:&v47 count:1];
      *out = [v15 errorWithDomain:@"DRSConfigPersistenceError" code:0 userInfo:v16];
    }

    v17 = 0;
  }

  else
  {
    v35 = 0;
    v36 = &v35;
    v37 = 0x3032000000;
    v38 = __Block_byref_object_copy__7;
    v39 = __Block_byref_object_dispose__7;
    v40 = 0;
    context = [(DRSConfigPersistedStore *)self context];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __110__DRSConfigPersistedStore_completeConfigWithUUID_completedDate_completionType_completionDescription_errorOut___block_invoke;
    v28[3] = &unk_27899FB30;
    v19 = dCopy;
    v29 = v19;
    selfCopy = self;
    v33 = &v35;
    v31 = dateCopy;
    typeCopy = type;
    v20 = descriptionCopy;
    v32 = v20;
    [context performBlockAndWait:v28];

    v22 = v36[5];
    v17 = v22 == 0;
    if (v22)
    {
      v23 = DPLogHandle_ConfigPersistedStoreError(v21);
      if (os_signpost_enabled(v23))
      {
        v24 = v36[5];
        *buf = 138543618;
        v42 = v19;
        v43 = 2114;
        v44 = v24;
        _os_signpost_emit_with_name_impl(&dword_232906000, v23, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CompleteConfigFailed", "Could not complete active config %{public}@ due to error %{public}@", buf, 0x16u);
      }

      if (out)
      {
        *out = v36[5];
      }
    }

    else
    {
      v25 = DPLogHandle_ConfigPersistedStore(v21);
      if (os_signpost_enabled(v25))
      {
        v26 = DRConfigCompletionTypeString(type);
        *buf = 138543874;
        v42 = v19;
        v43 = 2114;
        v44 = v26;
        v45 = 2114;
        v46 = v20;
        _os_signpost_emit_with_name_impl(&dword_232906000, v25, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CompleteConfigSuceeded", "Completed config with UUID %{public}@ with type %{public}@, description %{public}@", buf, 0x20u);
      }
    }

    _Block_object_dispose(&v35, 8);
  }

  return v17;
}

void __110__DRSConfigPersistedStore_completeConfigWithUUID_completedDate_completionType_completionDescription_errorOut___block_invoke(uint64_t a1)
{
  v68[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) context];
  v60 = 0;
  v4 = [DRSConfigMetadata _ON_CONTEXT_QUEUE_existingBackingMOWithConfigUUID:v2 context:v3 errorOut:&v60];
  v5 = v60;
  v6 = v60;

  objc_storeStrong((*(*(a1 + 64) + 8) + 40), v5);
  if (!*(*(*(a1 + 64) + 8) + 40))
  {
    if (v4)
    {
      if ([v4 state] != 3)
      {
        if ([v4 state] == 2)
        {
          v20 = [v4 appliedDate];
        }

        else
        {
          v20 = *(a1 + 48);
        }

        v9 = v20;
        v21 = *(a1 + 72);
        v22 = [v4 receivedDate];
        v23 = [DRSConfigMetadata _isValidState:3 completionType:v21 receivedDate:v22 appliedDate:v9 completedDate:*(a1 + 48) completionDescription:*(a1 + 56)];

        if (v23)
        {
          [v4 setState:3];
          [v4 setAppliedDate:v9];
          [v4 setCompletionType:*(a1 + 72)];
          [v4 setCompletedDate:*(a1 + 48)];
          [v4 setCompletionDescription:*(a1 + 56)];
          [*(a1 + 48) timeIntervalSinceDate:v9];
          v25 = v24;
          if ([v4 logTelemetry])
          {
            v61[0] = kUUIDKey;
            v54 = [v4 configUUID];
            v52 = [v54 UUIDString];
            v62[0] = v52;
            v61[1] = kTeamIDKey;
            v26 = [v4 teamID];
            v62[1] = v26;
            v61[2] = kConfigCompletedEventKey_CompletionType;
            v27 = DRConfigCompletionTypeString(*(a1 + 72));
            v62[2] = v27;
            v61[3] = kConfigCompletedEventKey_ActiveDuration;
            v28 = [MEMORY[0x277CCABB0] numberWithDouble:v25];
            v62[3] = v28;
            v61[4] = kConfigCompletedEventKey_ReceivedToCompletedDuration;
            v29 = MEMORY[0x277CCABB0];
            v30 = *(a1 + 48);
            v31 = [v4 receivedDate];
            [v30 timeIntervalSinceDate:v31];
            v32 = [v29 numberWithDouble:?];
            v62[4] = v32;
            v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v62 forKeys:v61 count:5];

            DRSCoreAnalyticsSendEvent(kConfigCompletedEventName, v33);
            if ([v4 reportToDecisionServer])
            {
              v34 = [v4 configUUID];
              v35 = [*(a1 + 40) cloudKitHelper];
              v50 = [v4 teamID];
              v55 = [v4 configUUID];
              v53 = [v55 UUIDString];
              v36 = DRConfigCompletionTypeString(*(a1 + 72));
              v37 = [v4 completionDescription];
              v38 = os_transaction_create();
              v57[0] = MEMORY[0x277D85DD0];
              v57[1] = 3221225472;
              v57[2] = __110__DRSConfigPersistedStore_completeConfigWithUUID_completedDate_completionType_completionDescription_errorOut___block_invoke_2;
              v57[3] = &unk_27899FB08;
              v39 = *(a1 + 64);
              v58 = v34;
              v59 = v39;
              v51 = v34;
              [v35 reportTaskingConfigCompletion:v50 uuidString:v53 completionType:v36 completionDescription:v37 activeDuration:v38 transaction:v57 completionHandler:v25];
            }
          }

          v40 = [*(a1 + 40) context];
          v41 = [v4 configMO];
          [v40 deleteObject:v41];

          v16 = [*(a1 + 40) context];
          v42 = *(*(a1 + 64) + 8);
          v56 = *(v42 + 40);
          [v16 save:&v56];
          v43 = v56;
          v19 = *(v42 + 40);
          *(v42 + 40) = v43;
        }

        else
        {
          v44 = MEMORY[0x277CCACA8];
          v45 = [*(a1 + 32) UUIDString];
          v16 = [v44 stringWithFormat:@"Failed to complete config %@", v45];

          v46 = MEMORY[0x277CCA9B8];
          v63 = *MEMORY[0x277CCA450];
          v64 = v16;
          v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v64 forKeys:&v63 count:1];
          v47 = [v46 errorWithDomain:@"DRSConfigPersistenceError" code:0 userInfo:v19];
          v48 = *(*(a1 + 64) + 8);
          v49 = *(v48 + 40);
          *(v48 + 40) = v47;
        }

        goto LABEL_7;
      }

      v7 = MEMORY[0x277CCACA8];
      v8 = [*(a1 + 32) UUIDString];
      v9 = [v7 stringWithFormat:@"Attempted to complete already-completed config %@", v8];

      v10 = MEMORY[0x277CCA9B8];
      v65 = *MEMORY[0x277CCA450];
      v66 = v9;
      v11 = MEMORY[0x277CBEAC0];
      v12 = &v66;
      v13 = &v65;
    }

    else
    {
      v14 = MEMORY[0x277CCACA8];
      v15 = [*(a1 + 32) UUIDString];
      v9 = [v14 stringWithFormat:@"Attempting to update missing config %@", v15];

      v10 = MEMORY[0x277CCA9B8];
      v67 = *MEMORY[0x277CCA450];
      v68[0] = v9;
      v11 = MEMORY[0x277CBEAC0];
      v12 = v68;
      v13 = &v67;
    }

    v16 = [v11 dictionaryWithObjects:v12 forKeys:v13 count:1];
    v17 = [v10 errorWithDomain:@"DRSConfigPersistenceError" code:0 userInfo:v16];
    v18 = *(*(a1 + 64) + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = v17;
LABEL_7:
  }
}

void __110__DRSConfigPersistedStore_completeConfigWithUUID_completedDate_completionType_completionDescription_errorOut___block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = DPLogHandle_ConfigPersistedStoreError(a1);
  if (os_signpost_enabled(v2))
  {
    v3 = *(a1 + 32);
    v4 = *(*(*(a1 + 40) + 8) + 40);
    v5 = 138543618;
    v6 = v3;
    v7 = 2114;
    v8 = v4;
    _os_signpost_emit_with_name_impl(&dword_232906000, v2, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ConfigPersistedStoreConfigCompletionTelemetryError", "Telemetry reporting for %{public}@ failed %{public}@", &v5, 0x16u);
  }
}

- (id)configMetadatasForPredicate:(id)predicate sortDescriptors:(id)descriptors fetchLimit:(unint64_t)limit errorOut:(id *)out
{
  predicateCopy = predicate;
  descriptorsCopy = descriptors;
  array = [MEMORY[0x277CBEB18] array];
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__7;
  v31 = __Block_byref_object_dispose__7;
  v32 = 0;
  context = [(DRSConfigPersistedStore *)self context];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __91__DRSConfigPersistedStore_configMetadatasForPredicate_sortDescriptors_fetchLimit_errorOut___block_invoke;
  v20[3] = &unk_27899FB58;
  v14 = predicateCopy;
  v21 = v14;
  selfCopy = self;
  v15 = descriptorsCopy;
  v25 = &v27;
  limitCopy = limit;
  v23 = v15;
  v16 = array;
  v24 = v16;
  [context performBlockAndWait:v20];

  if (out)
  {
    *out = v28[5];
  }

  v17 = v24;
  v18 = v16;

  _Block_object_dispose(&v27, 8);

  return v18;
}

void __91__DRSConfigPersistedStore_configMetadatasForPredicate_sortDescriptors_fetchLimit_errorOut___block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) context];
  v4 = *(a1 + 48);
  v5 = *(a1 + 72);
  v31 = 0;
  v6 = [DRSConfigMetadata _ON_CONTEXT_QUEUE_configMetadataForFilterPredicate:v2 context:v3 sortDescriptors:v4 fetchLimit:v5 errorOut:&v31];
  v7 = v31;

  if (v7)
  {
    v8 = *(*(a1 + 64) + 8);
    v9 = v7;
    v10 = *(v8 + 40);
    *(v8 + 40) = v9;
  }

  else
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v10 = v6;
    v11 = [v10 countByEnumeratingWithState:&v27 objects:v34 count:16];
    if (v11)
    {
      v12 = v11;
      v26 = v6;
      v13 = *v28;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v28 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v27 + 1) + 8 * i);
          v16 = [DRSConfigMetadata alloc];
          v17 = [(DRSConfigMetadata *)v16 _ON_CONTEXT_QUEUE_initWithConfigMetadataMO:v15];

          if (!v17)
          {
            v18 = MEMORY[0x277CCACA8];
            v19 = [v15 configUUID];
            v20 = [v18 stringWithFormat:@"Failed to create ConfigMetadata from backing MO for %@", v19];

            v21 = MEMORY[0x277CCA9B8];
            v32 = *MEMORY[0x277CCA450];
            v33 = v20;
            v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
            v23 = [v21 errorWithDomain:@"DRSConfigPersistenceError" code:0 userInfo:v22];
            v24 = *(*(a1 + 64) + 8);
            v25 = *(v24 + 40);
            *(v24 + 40) = v23;

            goto LABEL_13;
          }

          [*(a1 + 56) addObject:v17];
        }

        v12 = [v10 countByEnumeratingWithState:&v27 objects:v34 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }

LABEL_13:
      v6 = v26;
    }
  }
}

- (DRSConfigPersistedStore)initWithWorkingDirectory:(id)directory isReadOnly:(BOOL)only cloudKitHelper:(id)helper errorOut:(id *)out
{
  onlyCopy = only;
  directoryCopy = directory;
  helperCopy = helper;
  v13 = DRSTaskingPersistentContainer(directoryCopy, onlyCopy, out);
  v14 = v13;
  if (v13)
  {
    newBackgroundContext = [v13 newBackgroundContext];
    v20.receiver = self;
    v20.super_class = DRSConfigPersistedStore;
    v16 = [(DRSConfigPersistedStore *)&v20 init];
    v17 = v16;
    if (v16)
    {
      objc_storeStrong(&v16->_workingDirectory, directory);
      v17->_isReadOnly = onlyCopy;
      objc_storeStrong(&v17->_container, v14);
      objc_storeStrong(&v17->_context, newBackgroundContext);
      objc_storeStrong(&v17->_cloudKitHelper, helper);
    }

    self = v17;

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (unint64_t)_countForFetchRequest:(id)request withPredicate:(id)predicate fetchLimit:(unint64_t)limit errorOut:(id *)out
{
  requestCopy = request;
  predicateCopy = predicate;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__7;
  v24 = __Block_byref_object_dispose__7;
  v25 = 0;
  [requestCopy setPredicate:predicateCopy];
  if (limit)
  {
    [requestCopy setFetchLimit:limit];
  }

  context = [(DRSConfigPersistedStore *)self context];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __83__DRSConfigPersistedStore__countForFetchRequest_withPredicate_fetchLimit_errorOut___block_invoke;
  v16[3] = &unk_27899ED10;
  v18 = &v26;
  v16[4] = self;
  v13 = requestCopy;
  v17 = v13;
  v19 = &v20;
  [context performBlockAndWait:v16];

  if (out)
  {
    *out = v21[5];
  }

  if (v21[5])
  {
    v14 = 0;
  }

  else
  {
    v14 = v27[3];
  }

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);

  return v14;
}

void __83__DRSConfigPersistedStore__countForFetchRequest_withPredicate_fetchLimit_errorOut___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = *(a1 + 40);
  v8 = 0;
  v4 = [v2 countForFetchRequest:v3 error:&v8];
  v5 = v8;
  *(*(*(a1 + 48) + 8) + 24) = v4;

  v6 = *(*(a1 + 56) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (unint64_t)metadataCountForPredicate:(id)predicate fetchLimit:(unint64_t)limit withErrorOut:(id *)out
{
  predicateCopy = predicate;
  v9 = +[DRSConfigMetadataMO fetchRequest];
  v10 = [(DRSConfigPersistedStore *)self _countForFetchRequest:v9 withPredicate:predicateCopy fetchLimit:limit errorOut:out];

  return v10;
}

- (unint64_t)configCountForPredicate:(id)predicate fetchLimit:(unint64_t)limit withErrorOut:(id *)out
{
  predicateCopy = predicate;
  v9 = +[DRConfigMO fetchRequest];
  v10 = [(DRSConfigPersistedStore *)self _countForFetchRequest:v9 withPredicate:predicateCopy fetchLimit:limit errorOut:out];

  return v10;
}

- (BOOL)clearStoreWithErrorOut:(id *)out
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__7;
  v13 = __Block_byref_object_dispose__7;
  v14 = 0;
  context = [(DRSConfigPersistedStore *)self context];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __50__DRSConfigPersistedStore_clearStoreWithErrorOut___block_invoke;
  v8[3] = &unk_27899F8D8;
  v8[4] = self;
  v8[5] = &v9;
  [context performBlockAndWait:v8];

  if (out)
  {
    *out = v10[5];
  }

  v6 = v10[5] == 0;
  _Block_object_dispose(&v9, 8);

  return v6;
}

void __50__DRSConfigPersistedStore_clearStoreWithErrorOut___block_invoke(uint64_t a1)
{
  v61 = *MEMORY[0x277D85DE8];
  v2 = +[DRSConfigMetadataMO fetchRequest];
  v3 = [*(a1 + 32) context];
  v54 = 0;
  v4 = [v3 executeFetchRequest:v2 error:&v54];
  v5 = v54;
  v6 = v54;

  if (v6)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v5);
    v8 = DPLogHandle_ConfigPersistedStoreError(v7);
    if (os_signpost_enabled(v8))
    {
      v9 = [v6 localizedDescription];
      v10 = v9;
      v11 = @"Unknown";
      if (v9)
      {
        v11 = v9;
      }

      *buf = 138543362;
      v56 = v11;
      _os_signpost_emit_with_name_impl(&dword_232906000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ClearStoreError", "Failed to fetch config metadatas due to error: %{public}@", buf, 0xCu);
    }
  }

  else
  {
    v12 = [v4 count];
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v13 = v4;
    v14 = [v13 countByEnumeratingWithState:&v50 objects:v60 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v51;
      do
      {
        v17 = 0;
        do
        {
          if (*v51 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v50 + 1) + 8 * v17);
          v19 = [*(a1 + 32) context];
          [v19 deleteObject:v18];

          ++v17;
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v50 objects:v60 count:16];
      }

      while (v15);
    }

    v2 = +[DRConfigMO fetchRequest];
    v20 = [*(a1 + 32) context];
    v49 = 0;
    v21 = [v20 executeFetchRequest:v2 error:&v49];
    v22 = v49;
    v6 = v49;

    if (v6)
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), v22);
      v24 = DPLogHandle_ConfigPersistedStoreError(v23);
      if (os_signpost_enabled(v24))
      {
        v25 = [v6 localizedDescription];
        v26 = v25;
        v27 = @"Unknown";
        if (v25)
        {
          v27 = v25;
        }

        *buf = 138543362;
        v56 = v27;
        _os_signpost_emit_with_name_impl(&dword_232906000, v24, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ClearStoreError", "Failed to fetch configs due to error: %{public}@", buf, 0xCu);
      }
    }

    else
    {
      v43 = [v21 count];
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v28 = v21;
      v29 = [v28 countByEnumeratingWithState:&v45 objects:v59 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v46;
        do
        {
          v32 = 0;
          do
          {
            if (*v46 != v31)
            {
              objc_enumerationMutation(v28);
            }

            v33 = *(*(&v45 + 1) + 8 * v32);
            v34 = [*(a1 + 32) context];
            [v34 deleteObject:v33];

            ++v32;
          }

          while (v30 != v32);
          v30 = [v28 countByEnumeratingWithState:&v45 objects:v59 count:16];
        }

        while (v30);
      }

      v35 = [*(a1 + 32) context];
      v44 = 0;
      v36 = [v35 save:&v44];
      v37 = v44;
      v6 = v44;

      if (v36)
      {
        v2 = DPLogHandle_ConfigPersistedStore(v38);
        if (os_signpost_enabled(v2))
        {
          *buf = 134349312;
          v56 = v12;
          v57 = 2050;
          v58 = v43;
          _os_signpost_emit_with_name_impl(&dword_232906000, v2, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ClearStoreSuccess", "Deleted %{public}llu config metadatas and %{public}llu configs", buf, 0x16u);
        }
      }

      else
      {
        objc_storeStrong((*(*(a1 + 40) + 8) + 40), v37);
        v2 = DPLogHandle_ConfigPersistedStoreError(v39);
        if (os_signpost_enabled(v2))
        {
          v40 = [v6 localizedDescription];
          v41 = v40;
          v42 = @"Unknown";
          if (v40)
          {
            v42 = v40;
          }

          *buf = 138543362;
          v56 = v42;
          _os_signpost_emit_with_name_impl(&dword_232906000, v2, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ClearStoreError", "Failed to save deletion of records due to error: %{public}@", buf, 0xCu);
        }
      }
    }
  }
}

- (id)_ON_MOC_cloudChannelConfigMOs
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = +[DRSCloudChannelConfigMO fetchRequest];
  context = [(DRSConfigPersistedStore *)self context];
  v14 = 0;
  v5 = [context executeFetchRequest:v3 error:&v14];
  v6 = v14;

  if (v6)
  {
    v8 = DPLogHandle_ConfigPersistedStoreError(v7);
    if (os_signpost_enabled(v8))
    {
      localizedDescription = [v6 localizedDescription];
      v10 = localizedDescription;
      v11 = @"Unknown";
      if (localizedDescription)
      {
        v11 = localizedDescription;
      }

      *buf = 138543362;
      v16 = v11;
      _os_signpost_emit_with_name_impl(&dword_232906000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CloudChannelConfigError", "Failed to fetch cloud channel config due to error: %{public}@", buf, 0xCu);
    }

    v12 = 0;
  }

  else
  {
    v12 = v5;
  }

  return v12;
}

- (void)_ON_MOC_deleteCloudChannelConfigMOs:(id)os
{
  v28 = *MEMORY[0x277D85DE8];
  osCopy = os;
  v5 = osCopy;
  if (osCopy)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v6 = [osCopy countByEnumeratingWithState:&v21 objects:v27 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v22;
      do
      {
        v9 = 0;
        do
        {
          if (*v22 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v21 + 1) + 8 * v9);
          context = [(DRSConfigPersistedStore *)self context];
          [context deleteObject:v10];

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v21 objects:v27 count:16];
      }

      while (v7);
    }

    context2 = [(DRSConfigPersistedStore *)self context];
    v20 = 0;
    v13 = [context2 save:&v20];
    v14 = v20;

    if ((v13 & 1) == 0)
    {
      v16 = DPLogHandle_ConfigPersistedStoreError(v15);
      if (os_signpost_enabled(v16))
      {
        localizedDescription = [v14 localizedDescription];
        v18 = localizedDescription;
        v19 = @"Unknown";
        if (localizedDescription)
        {
          v19 = localizedDescription;
        }

        *buf = 138543362;
        v26 = v19;
        _os_signpost_emit_with_name_impl(&dword_232906000, v16, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CloudChannelConfigDeleteFailed", "Failed to save deletion of cloud channel configs due to error: %{public}@", buf, 0xCu);
      }
    }
  }
}

- (id)cloudChannelConfig
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__7;
  v11 = __Block_byref_object_dispose__7;
  v12 = 0;
  context = [(DRSConfigPersistedStore *)self context];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __45__DRSConfigPersistedStore_cloudChannelConfig__block_invoke;
  v6[3] = &unk_27899F8D8;
  v6[4] = self;
  v6[5] = &v7;
  [context performBlockAndWait:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __45__DRSConfigPersistedStore_cloudChannelConfig__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _ON_MOC_cloudChannelConfigMOs];
  if ([v2 count])
  {
    v3 = [v2 count];
    if (v3 < 2)
    {
      v6 = [DRSCloudChannelConfig alloc];
      v7 = [v2 firstObject];
      v8 = [(DRSCloudChannelConfig *)v6 initWithMO:v7];
      v9 = *(*(a1 + 40) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;
    }

    else
    {
      v4 = DPLogHandle_ConfigPersistedStoreError(v3);
      if (os_signpost_enabled(v4))
      {
        *v11 = 0;
        _os_signpost_emit_with_name_impl(&dword_232906000, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "MultipleConfigs", "Multiple configs specified. Reverting to default", v11, 2u);
      }

      [*(a1 + 32) _ON_MOC_deleteCloudChannelConfigMOs:v2];
    }
  }

  else
  {
    v5 = DPLogHandle_ConfigPersistedStore(0);
    if (os_signpost_enabled(v5))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_232906000, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "DefaultConfig", "Not subscribing to any channel by default.", buf, 2u);
    }
  }
}

- (BOOL)updateCloudChannelConfig:(id)config errorOut:(id *)out
{
  configCopy = config;
  *out = 0;
  cloudChannelConfig = [(DRSConfigPersistedStore *)self cloudChannelConfig];
  v8 = cloudChannelConfig;
  if (!(configCopy | cloudChannelConfig) || cloudChannelConfig && ([cloudChannelConfig isEqual:configCopy] & 1) != 0)
  {
    v9 = 1;
  }

  else
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v25 = 0;
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__7;
    v20 = __Block_byref_object_dispose__7;
    v21 = 0;
    context = [(DRSConfigPersistedStore *)self context];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __61__DRSConfigPersistedStore_updateCloudChannelConfig_errorOut___block_invoke;
    v12[3] = &unk_27899ED80;
    v12[4] = self;
    v13 = configCopy;
    v14 = &v22;
    v15 = &v16;
    [context performBlockAndWait:v12];

    *out = v17[5];
    v9 = *(v23 + 24);

    _Block_object_dispose(&v16, 8);
    _Block_object_dispose(&v22, 8);
  }

  return v9 & 1;
}

void __61__DRSConfigPersistedStore_updateCloudChannelConfig_errorOut___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _ON_MOC_cloudChannelConfigMOs];
  v3 = v2;
  if (*(a1 + 40))
  {
    v4 = [v2 count];
    if (v4 >= 2)
    {
      v5 = DPLogHandle_ConfigPersistedStoreError(v4);
      if (os_signpost_enabled(v5))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_232906000, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "MultipleConfigsWhenUpdating", "Multiple configs specified. Deleting all", buf, 2u);
      }

      [*(a1 + 32) _ON_MOC_deleteCloudChannelConfigMOs:v3];
      v3 = MEMORY[0x277CBEBF8];
    }

    if ([v3 count])
    {
      v6 = [v3 firstObject];
    }

    else
    {
      v7 = [DRSCloudChannelConfigMO alloc];
      v8 = [*(a1 + 32) context];
      v6 = [(DRSCloudChannelConfigMO *)v7 initWithContext:v8];
    }

    -[DRSCloudChannelConfigMO setEnvironment:](v6, "setEnvironment:", [*(a1 + 40) environment]);
    -[DRSCloudChannelConfigMO setChannelType:](v6, "setChannelType:", [*(a1 + 40) type]);
    -[DRSCloudChannelConfigMO setPlatform:](v6, "setPlatform:", [*(a1 + 40) platform]);
    v9 = [*(a1 + 40) populationSliceNumber];
    [(DRSCloudChannelConfigMO *)v6 setPopulationSliceNumber:v9];

    -[DRSCloudChannelConfigMO setOverridesDeviceDefault:](v6, "setOverridesDeviceDefault:", [*(a1 + 40) overridesDeviceDefault]);
    v10 = [*(a1 + 32) context];
    v21 = 0;
    v11 = [v10 save:&v21];
    v12 = v21;
    v13 = v21;

    v15 = DPLogHandle_ConfigPersistedStoreError(v14);
    v16 = os_signpost_enabled(v15);
    if (v11)
    {
      if (v16)
      {
        v17 = [*(a1 + 40) debugDescription];
        *buf = 138543362;
        v23 = v17;
        _os_signpost_emit_with_name_impl(&dword_232906000, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "PersistedCloudChannelConfigUpdated", "Updated persisted config to:\n%{public}@", buf, 0xCu);
      }

      *(*(*(a1 + 48) + 8) + 24) = 1;
    }

    else
    {
      if (v16)
      {
        v18 = [v13 localizedDescription];
        v19 = v18;
        v20 = @"Unknown";
        if (v18)
        {
          v20 = v18;
        }

        *buf = 138543362;
        v23 = v20;
        _os_signpost_emit_with_name_impl(&dword_232906000, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "PersistedCloudChannelConfigUpdateFailed", "Failed to save cloud channel config due to error: %{public}@", buf, 0xCu);
      }

      *(*(*(a1 + 48) + 8) + 24) = 0;
      objc_storeStrong((*(*(a1 + 56) + 8) + 40), v12);
    }
  }

  else
  {
    [*(a1 + 32) _ON_MOC_deleteCloudChannelConfigMOs:v2];
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

@end