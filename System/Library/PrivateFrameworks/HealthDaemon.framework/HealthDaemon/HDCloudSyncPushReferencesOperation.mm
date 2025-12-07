@interface HDCloudSyncPushReferencesOperation
- (HDCloudSyncPushReferencesOperation)initWithConfiguration:(id)configuration cloudState:(id)state;
- (uint64_t)_updateReferencesToSynchronizedWithError:(void *)error;
- (void)main;
@end

@implementation HDCloudSyncPushReferencesOperation

- (HDCloudSyncPushReferencesOperation)initWithConfiguration:(id)configuration cloudState:(id)state
{
  v12.receiver = self;
  v12.super_class = HDCloudSyncPushReferencesOperation;
  v4 = [(HDCloudSyncOperation *)&v12 initWithConfiguration:configuration cloudState:state];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    unsynchronizedReferences = v4->_unsynchronizedReferences;
    v4->_unsynchronizedReferences = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    referencesToPush = v4->_referencesToPush;
    v4->_referencesToPush = v7;

    v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
    attachmentRecordsToPush = v4->_attachmentRecordsToPush;
    v4->_attachmentRecordsToPush = v9;
  }

  return v4;
}

- (void)main
{
  configuration = [(HDCloudSyncOperation *)self configuration];
  cachedCloudState = [configuration cachedCloudState];
  configuration2 = [(HDCloudSyncOperation *)self configuration];
  repository = [configuration2 repository];
  primaryCKContainer = [repository primaryCKContainer];
  containerIdentifier = [primaryCKContainer containerIdentifier];
  v45 = 0;
  v9 = [cachedCloudState attachmentZoneForContainerID:containerIdentifier error:&v45];
  v10 = v45;
  attachmentZone = self->_attachmentZone;
  self->_attachmentZone = v9;

  v12 = self->_attachmentZone;
  if (v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = v10 == 0;
  }

  if (v13)
  {
    if (!v12)
    {
      configuration3 = [(HDCloudSyncOperation *)self configuration];
      repository2 = [configuration3 repository];
      profileType = [repository2 profileType];

      if (profileType != 1)
      {
        selfCopy4 = self;
        v39 = 1;
        v40 = 0;
        goto LABEL_12;
      }
    }

    v44 = 0;
    v17 = +[HDMutableDatabaseTransactionContext contextForReadingProtectedData];
    configuration4 = [(HDCloudSyncOperation *)self configuration];
    accessibilityAssertion = [configuration4 accessibilityAssertion];
    v20 = [v17 contextWithAccessibilityAssertion:accessibilityAssertion];

    configuration5 = [(HDCloudSyncOperation *)self configuration];
    repository3 = [configuration5 repository];
    profile = [repository3 profile];
    database = [profile database];
    v47 = MEMORY[0x277D85DD0];
    v48 = 3221225472;
    v49 = __86__HDCloudSyncPushReferencesOperation__generateReferenceAndAttachmentRecordsWithError___block_invoke;
    v50 = &unk_278616048;
    selfCopy3 = self;
    v25 = [database performTransactionWithContext:v20 error:&v44 block:&v47 inaccessibilityHandler:0];

    v26 = v44;
    if ((v25 & 1) == 0)
    {
      [(HDCloudSyncOperation *)self finishWithSuccess:0 error:v26];
LABEL_20:

      goto LABEL_21;
    }

    referencesToPush = self->_referencesToPush;
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __42__HDCloudSyncPushReferencesOperation_main__block_invoke;
    v43[3] = &unk_27862B960;
    v43[4] = self;
    v28 = [(NSMutableArray *)referencesToPush hk_map:v43];
    v29 = [v28 mutableCopy];

    allObjects = [(NSMutableSet *)self->_attachmentRecordsToPush allObjects];
    [v29 addObjectsFromArray:allObjects];

    v31 = v29;
    if ([v31 count])
    {
      v32 = [HDCloudSyncModifyRecordsOperation alloc];
      configuration6 = [(HDCloudSyncOperation *)self configuration];
      configuration7 = [(HDCloudSyncOperation *)self configuration];
      repository4 = [configuration7 repository];
      primaryCKContainer2 = [repository4 primaryCKContainer];
      v37 = [(HDCloudSyncModifyRecordsOperation *)v32 initWithConfiguration:configuration6 container:primaryCKContainer2 recordsToSave:v31 recordIDsToDelete:0];

      v47 = MEMORY[0x277D85DD0];
      v48 = 3221225472;
      v49 = __73__HDCloudSyncPushReferencesOperation__pushToCloudKitAndFinishForRecords___block_invoke;
      v50 = &unk_278613088;
      selfCopy3 = self;
      [(HDCloudSyncOperation *)v37 setOnError:&v47];
      v46[0] = MEMORY[0x277D85DD0];
      v46[1] = 3221225472;
      v46[2] = __73__HDCloudSyncPushReferencesOperation__pushToCloudKitAndFinishForRecords___block_invoke_308;
      v46[3] = &unk_278613060;
      v46[4] = self;
      [(HDCloudSyncOperation *)v37 setOnSuccess:v46];
      [(HDCloudSyncOperation *)v37 start];
LABEL_11:

LABEL_19:
      goto LABEL_20;
    }

    if ([(NSMutableArray *)self->_unsynchronizedReferences count])
    {
      v47 = 0;
      v41 = [(HDCloudSyncPushReferencesOperation *)self _updateReferencesToSynchronizedWithError:?];
      v42 = v47;
      v37 = v42;
      if ((v41 & 1) == 0)
      {
        [(HDCloudSyncOperation *)self finishWithSuccess:0 error:v42];
        goto LABEL_11;
      }
    }

    [(HDCloudSyncOperation *)self finishWithSuccess:1 error:0];
    goto LABEL_19;
  }

  selfCopy4 = self;
  v39 = 0;
  v40 = v10;
LABEL_12:
  [(HDCloudSyncOperation *)selfCopy4 finishWithSuccess:v39 error:v40];
LABEL_21:
}

id __42__HDCloudSyncPushReferencesOperation_main__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [HDCloudSyncAttachmentReferenceRecord alloc];
  v5 = [*(*(a1 + 32) + 128) zoneIdentifier];
  v6 = [v5 zoneIdentifier];
  v7 = [(HDCloudSyncAttachmentReferenceRecord *)v4 initWithAttachmentReference:v3 zoneID:v6];

  v8 = [(HDCloudSyncRecord *)v7 record];

  return v8;
}

BOOL __86__HDCloudSyncPushReferencesOperation__generateReferenceAndAttachmentRecordsWithError___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = HDAttachmentReferencePredicateForUnsynchronizedReferences();
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __86__HDCloudSyncPushReferencesOperation__generateReferenceAndAttachmentRecordsWithError___block_invoke_2;
  v9[3] = &unk_27861B210;
  v9[4] = *(a1 + 32);
  v7 = [HDAttachmentReferenceEntity enumerateReferencesWithPredicate:v6 transaction:v5 error:a3 enumerationHandler:v9];

  return v7;
}

BOOL __86__HDCloudSyncPushReferencesOperation__generateReferenceAndAttachmentRecordsWithError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v65 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [v5 identifier];
  v7 = [v6 UUIDString];
  v8 = [*(*(a1 + 32) + 128) zoneIdentifier];
  v9 = [v8 zoneIdentifier];
  v10 = [HDCloudSyncAttachmentReferenceRecord recordIDForReferenceIdentifier:v7 zoneID:v9];

  v11 = [v5 attachmentIdentifier];
  v12 = [v11 UUIDString];
  v13 = [*(*(a1 + 32) + 128) zoneIdentifier];
  v14 = [v13 zoneIdentifier];
  v15 = [HDCloudSyncAttachmentRecord recordIDForAttachmentIdentifier:v12 zoneID:v14];

  [*(*(a1 + 32) + 104) addObject:v5];
  v16 = [*(*(a1 + 32) + 128) containsRecordWithRecordID:v10 error:a3];
  if (v16)
  {
    if (v16 != 2)
    {
LABEL_12:
      v24 = 1;
      goto LABEL_13;
    }

    [*(*(a1 + 32) + 112) addObject:v5];
    v17 = *(*(a1 + 32) + 120);
    v59[0] = MEMORY[0x277D85DD0];
    v59[1] = 3221225472;
    v59[2] = __86__HDCloudSyncPushReferencesOperation__generateReferenceAndAttachmentRecordsWithError___block_invoke_3;
    v59[3] = &unk_2786167D0;
    v18 = v15;
    v60 = v18;
    if ([v17 hk_containsObjectPassingTest:v59])
    {
LABEL_11:

      goto LABEL_12;
    }

    v19 = *(*(a1 + 32) + 128);
    v58 = 0;
    v20 = [v19 recordForRecordID:v18 class:objc_opt_class() error:&v58];
    v21 = v58;
    if (v21)
    {
      v22 = v21;
      if (a3)
      {
        v23 = v21;
        *a3 = v22;
      }

      else
      {
        _HKLogDroppedError();
      }

      goto LABEL_16;
    }

    if (v20)
    {
      v25 = 0;
LABEL_10:
      v26 = *(*(a1 + 32) + 120);
      v27 = [v20 record];
      [v26 addObject:v27];

      goto LABEL_11;
    }

    v50 = [v5 attachmentIdentifier];
    v53 = [*(a1 + 32) configuration];
    v29 = [v53 repository];
    v30 = [v29 profile];
    v31 = [v30 legacyRepositoryProfile];
    v57 = 0;
    v32 = [HDAttachmentEntity attachmentWithIdentifier:v50 profile:v31 error:&v57];
    v22 = v57;

    if (!v32)
    {
      if (!v22)
      {
        _HKInitializeLogging();
        v45 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_FAULT))
        {
          v48 = *(a1 + 32);
          *buf = 138543618;
          v62 = v48;
          v63 = 2114;
          v64 = v5;
          _os_log_fault_impl(&dword_228986000, v45, OS_LOG_TYPE_FAULT, "%{public}@ No attachment found for reference %{public}@", buf, 0x16u);
        }

        v46 = [MEMORY[0x277CCA9B8] hk_error:118 format:{@"No attachment found for reference %@", v5}];
        v24 = v46 == 0;
        if (v46)
        {
          if (a3)
          {
            v47 = v46;
            *a3 = v46;
          }

          else
          {
            _HKLogDroppedError();
          }
        }

        v22 = 0;
        goto LABEL_17;
      }

      if (a3)
      {
        v40 = v22;
        v24 = 0;
        *a3 = v22;
        goto LABEL_17;
      }

      _HKLogDroppedError();
LABEL_16:
      v24 = 0;
LABEL_17:

      goto LABEL_13;
    }

    v51 = [*(a1 + 32) configuration];
    v33 = [v51 repository];
    v34 = [v33 attachmentManager];
    v56 = 0;
    v35 = [v34 fileHandleForAttachment:v32 error:&v56];
    v54 = v32;
    v36 = v56;

    v37 = v35;
    if (v35)
    {
      v52 = v36;
      v38 = [*(*(a1 + 32) + 128) zoneIdentifier];
      v39 = [v38 zoneIdentifier];
      v55 = v22;
      [HDCloudSyncAttachmentRecord recordWithAttachment:v54 fileHandle:v37 zoneID:v39 error:&v55];
      v20 = v49 = v37;
      v25 = v55;

      if (v20)
      {

        goto LABEL_10;
      }

      v35 = v49;
      v42 = v25;
      v36 = v52;
      v41 = v54;
      if (v42)
      {
        if (a3)
        {
          v44 = v42;
          v24 = 0;
          *a3 = v42;
        }

        else
        {
          _HKLogDroppedError();
          v24 = 0;
        }

        v22 = v42;
        goto LABEL_42;
      }

      v22 = 0;
    }

    else
    {
      v41 = v54;
      v42 = v36;
      if (v42)
      {
        if (a3)
        {
          v43 = v42;
          v24 = 0;
          *a3 = v42;
        }

        else
        {
          _HKLogDroppedError();
          v24 = 0;
        }

        goto LABEL_42;
      }
    }

    v24 = 1;
LABEL_42:

    goto LABEL_17;
  }

  v24 = 0;
LABEL_13:

  return v24;
}

uint64_t __86__HDCloudSyncPushReferencesOperation__generateReferenceAndAttachmentRecordsWithError___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 recordID];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (uint64_t)_updateReferencesToSynchronizedWithError:(void *)error
{
  if (!error)
  {
    return 0;
  }

  v4 = +[HDMutableDatabaseTransactionContext contextForWritingProtectedData];
  configuration = [error configuration];
  accessibilityAssertion = [configuration accessibilityAssertion];
  v7 = [v4 contextWithAccessibilityAssertion:accessibilityAssertion];

  configuration2 = [error configuration];
  repository = [configuration2 repository];
  profile = [repository profile];
  database = [profile database];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __79__HDCloudSyncPushReferencesOperation__updateReferencesToSynchronizedWithError___block_invoke;
  v14[3] = &unk_278616048;
  v14[4] = error;
  v12 = [database performTransactionWithContext:v7 error:a2 block:v14 inaccessibilityHandler:0];

  return v12;
}

void __73__HDCloudSyncPushReferencesOperation__pushToCloudKitAndFinishForRecords___block_invoke(uint64_t a1, uint64_t a2, void *a3)
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
    _os_log_error_impl(&dword_228986000, v5, OS_LOG_TYPE_ERROR, "[attachments] %{public}@: Failed to modify records: %{public}@", &v7, 0x16u);
  }

  [*(a1 + 32) finishWithSuccess:0 error:v4];
}

void __73__HDCloudSyncPushReferencesOperation__pushToCloudKitAndFinishForRecords___block_invoke_308(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v14 = 0;
  v3 = [(HDCloudSyncPushReferencesOperation *)v2 _updateReferencesToSynchronizedWithError:?];
  v4 = v14;
  if (v3)
  {
    _HKInitializeLogging();
    v5 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = *(v6 + 112);
      v8 = v5;
      v9 = [v7 count];
      v10 = [*(*(a1 + 32) + 120) count];
      *buf = 138543874;
      v16 = v6;
      v17 = 2048;
      v18 = v9;
      v19 = 2048;
      v20 = v10;
      _os_log_impl(&dword_228986000, v8, OS_LOG_TYPE_DEFAULT, "[attachments] %{public}@: Successfully pushed %lu reference and %lu attachments records", buf, 0x20u);
    }

    v11 = *(a1 + 32);
    v12 = 1;
    v13 = 0;
  }

  else
  {
    v11 = *(a1 + 32);
    v12 = 0;
    v13 = v4;
  }

  [v11 finishWithSuccess:v12 error:v13];
}

@end