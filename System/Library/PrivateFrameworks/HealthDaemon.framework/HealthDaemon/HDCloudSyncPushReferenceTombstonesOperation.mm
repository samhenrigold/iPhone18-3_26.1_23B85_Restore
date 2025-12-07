@interface HDCloudSyncPushReferenceTombstonesOperation
- (HDCloudSyncPushReferenceTombstonesOperation)initWithConfiguration:(id)configuration cloudState:(id)state;
- (void)main;
@end

@implementation HDCloudSyncPushReferenceTombstonesOperation

- (HDCloudSyncPushReferenceTombstonesOperation)initWithConfiguration:(id)configuration cloudState:(id)state
{
  v14.receiver = self;
  v14.super_class = HDCloudSyncPushReferenceTombstonesOperation;
  v4 = [(HDCloudSyncOperation *)&v14 initWithConfiguration:configuration cloudState:state];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    unsynchronizedTombstones = v4->_unsynchronizedTombstones;
    v4->_unsynchronizedTombstones = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
    referenceRecordsToDelete = v4->_referenceRecordsToDelete;
    v4->_referenceRecordsToDelete = v7;

    v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
    attachmentsRecordsToDelete = v4->_attachmentsRecordsToDelete;
    v4->_attachmentsRecordsToDelete = v9;

    v11 = objc_alloc_init(MEMORY[0x277CBEB58]);
    tombstoneRecordsToPush = v4->_tombstoneRecordsToPush;
    v4->_tombstoneRecordsToPush = v11;
  }

  return v4;
}

- (void)main
{
  v75 = *MEMORY[0x277D85DE8];
  configuration = [(HDCloudSyncOperation *)self configuration];
  cachedCloudState = [configuration cachedCloudState];
  configuration2 = [(HDCloudSyncOperation *)self configuration];
  repository = [configuration2 repository];
  primaryCKContainer = [repository primaryCKContainer];
  containerIdentifier = [primaryCKContainer containerIdentifier];
  v68 = 0;
  v9 = [cachedCloudState attachmentZoneForContainerID:containerIdentifier error:&v68];
  v10 = v68;
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

  if (!v13)
  {
    selfCopy2 = self;
    v61 = 0;
    v62 = v10;
LABEL_18:
    [(HDCloudSyncOperation *)selfCopy2 finishWithSuccess:v61 error:v62];
    goto LABEL_19;
  }

  if (!v12)
  {
    configuration3 = [(HDCloudSyncOperation *)self configuration];
    repository2 = [configuration3 repository];
    profileType = [repository2 profileType];

    if (profileType != 1)
    {
LABEL_17:
      selfCopy2 = self;
      v61 = 1;
      v62 = 0;
      goto LABEL_18;
    }
  }

  v66 = v10;
  configuration4 = [(HDCloudSyncOperation *)self configuration];
  repository3 = [configuration4 repository];
  profile = [repository3 profile];
  cloudSyncManager = [profile cloudSyncManager];
  ownerIdentifierManager = [cloudSyncManager ownerIdentifierManager];
  configuration5 = [(HDCloudSyncOperation *)self configuration];
  repository4 = [configuration5 repository];
  primaryCKContainer2 = [repository4 primaryCKContainer];
  v25 = [ownerIdentifierManager cachedOwnerIdentifierForContainer:primaryCKContainer2];

  v26 = +[HDMutableDatabaseTransactionContext contextForReadingProtectedData];
  configuration6 = [(HDCloudSyncOperation *)self configuration];
  accessibilityAssertion = [configuration6 accessibilityAssertion];
  v29 = [v26 contextWithAccessibilityAssertion:accessibilityAssertion];

  configuration7 = [(HDCloudSyncOperation *)self configuration];
  repository5 = [configuration7 repository];
  profile2 = [repository5 profile];
  database = [profile2 database];
  v69[0] = 0;
  *&buf = MEMORY[0x277D85DD0];
  *(&buf + 1) = 3221225472;
  v71 = __116__HDCloudSyncPushReferenceTombstonesOperation__generateTombstoneRecordsToPushAndReferencesRecordsToDeleteWithError___block_invoke;
  v72 = &unk_278613218;
  selfCopy5 = self;
  v74 = v25;
  v34 = v25;
  LOBYTE(v25) = [database performTransactionWithContext:v29 error:v69 block:&buf inaccessibilityHandler:0];
  v35 = v69[0];

  if ((v25 & 1) == 0)
  {
    [(HDCloudSyncOperation *)self finishWithSuccess:0 error:0];
    v10 = v66;
    goto LABEL_19;
  }

  if (![(NSMutableSet *)self->_tombstoneRecordsToPush count])
  {
    _HKInitializeLogging();
    v63 = *MEMORY[0x277CCC328];
    v10 = v66;
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = self;
      _os_log_impl(&dword_228986000, v63, OS_LOG_TYPE_DEFAULT, "[attachments] %{public}@ No reference tombstones to push.", &buf, 0xCu);
    }

    goto LABEL_17;
  }

  v67 = 0;
  v36 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v37 = +[HDMutableDatabaseTransactionContext contextForReadingProtectedData];
  configuration8 = [(HDCloudSyncOperation *)self configuration];
  accessibilityAssertion2 = [configuration8 accessibilityAssertion];
  v40 = [v37 contextWithAccessibilityAssertion:accessibilityAssertion2];

  configuration9 = [(HDCloudSyncOperation *)self configuration];
  repository6 = [configuration9 repository];
  profile3 = [repository6 profile];
  database2 = [profile3 database];
  *&buf = MEMORY[0x277D85DD0];
  *(&buf + 1) = 3221225472;
  v71 = __122__HDCloudSyncPushReferenceTombstonesOperation__updateRecordsToDeleteBySkippingAttachmentsWithMultipleReferencesWithError___block_invoke;
  v72 = &unk_278613218;
  selfCopy5 = self;
  v45 = v36;
  v74 = v45;
  v46 = [database2 performTransactionWithContext:v40 error:&v67 block:&buf inaccessibilityHandler:0];

  if (v46)
  {
    [(NSMutableSet *)self->_attachmentsRecordsToDelete minusSet:v45];
  }

  v47 = v67;
  if (v46)
  {
    tombstoneRecordsToPush = self->_tombstoneRecordsToPush;
    [(NSMutableSet *)self->_referenceRecordsToDelete setByAddingObjectsFromSet:self->_attachmentsRecordsToDelete];
    v49 = v65 = v47;
    v50 = tombstoneRecordsToPush;
    v51 = [HDCloudSyncModifyRecordsOperation alloc];
    configuration10 = [(HDCloudSyncOperation *)self configuration];
    configuration11 = [(HDCloudSyncOperation *)self configuration];
    repository7 = [configuration11 repository];
    primaryCKContainer3 = [repository7 primaryCKContainer];
    allObjects = [(NSMutableSet *)v50 allObjects];

    allObjects2 = [v49 allObjects];

    v58 = v51;
    v47 = v65;
    v59 = [(HDCloudSyncModifyRecordsOperation *)v58 initWithConfiguration:configuration10 container:primaryCKContainer3 recordsToSave:allObjects recordIDsToDelete:allObjects2];

    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v71 = __95__HDCloudSyncPushReferenceTombstonesOperation__modifyCloudWithRecordsToSave_recordIDsToDelete___block_invoke;
    v72 = &unk_278613088;
    selfCopy5 = self;
    [(HDCloudSyncOperation *)v59 setOnError:&buf];
    v69[0] = MEMORY[0x277D85DD0];
    v69[1] = 3221225472;
    v69[2] = __95__HDCloudSyncPushReferenceTombstonesOperation__modifyCloudWithRecordsToSave_recordIDsToDelete___block_invoke_309;
    v69[3] = &unk_278613060;
    v69[4] = self;
    [(HDCloudSyncOperation *)v59 setOnSuccess:v69];
    [(HDCloudSyncOperation *)v59 start];
  }

  else
  {
    _HKInitializeLogging();
    v64 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = self;
      _os_log_impl(&dword_228986000, v64, OS_LOG_TYPE_DEFAULT, "[attachments] %{public}@ Failed to skip attachments with multiple references.", &buf, 0xCu);
    }

    [(HDCloudSyncOperation *)self finishWithSuccess:0 error:v47];
  }

  v10 = v66;

LABEL_19:
}

BOOL __116__HDCloudSyncPushReferenceTombstonesOperation__generateTombstoneRecordsToPushAndReferencesRecordsToDeleteWithError___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__127;
  v21 = __Block_byref_object_dispose__127;
  v22 = 0;
  v6 = HDAttachmentReferencePredicateForUnsynchronizedTombstones();
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __116__HDCloudSyncPushReferenceTombstonesOperation__generateTombstoneRecordsToPushAndReferencesRecordsToDeleteWithError___block_invoke_295;
  v14[3] = &unk_2786251A0;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v16 = &v17;
  v14[4] = v7;
  v15 = v8;
  v9 = [HDAttachmentReferenceEntity enumerateReferencesWithPredicate:v6 transaction:v5 error:a3 enumerationHandler:v14];

  if (v9)
  {
    v10 = v18[5];
    if (v10)
    {
      v11 = *(*(a1 + 32) + 128);
      v12 = [v10 record];
      [v11 addObject:v12];
    }
  }

  _Block_object_dispose(&v17, 8);
  return v9;
}

uint64_t __116__HDCloudSyncPushReferenceTombstonesOperation__generateTombstoneRecordsToPushAndReferencesRecordsToDeleteWithError___block_invoke_295(uint64_t a1, void *a2, void *a3)
{
  v95 = *MEMORY[0x277D85DE8];
  v79 = a2;
  v5 = *(*(*(a1 + 48) + 8) + 40);
  if (!v5)
  {
    v77 = a3;
    v6 = *(a1 + 32);
    v7 = [*(a1 + 40) string];
    if (v6)
    {
      v89[0] = 0;
      v89[1] = v89;
      v89[2] = 0x2020000000;
      v89[3] = 0;
      v83 = 0;
      v84 = &v83;
      v85 = 0x3032000000;
      v86 = __Block_byref_object_copy__127;
      v87 = __Block_byref_object_dispose__127;
      v88 = 0;
      v8 = *(v6 + 136);
      v9 = objc_opt_class();
      v82 = 0;
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __101__HDCloudSyncPushReferenceTombstonesOperation_tombstoneRecordToPushForZoneWithOwnerIdentifier_error___block_invoke;
      v91 = &unk_2786251C8;
      v10 = v7;
      v92 = v10;
      v93 = v89;
      v94 = &v83;
      v11 = [v8 recordsForClass:v9 epoch:0 error:&v82 enumerationHandler:buf];
      v12 = v82;
      v13 = v12;
      if (v11)
      {
        v14 = v84[5];
        if (!v14)
        {
          v15 = [HDCloudSyncAttachmentReferenceTombstoneRecord alloc];
          v16 = [*(v6 + 136) zoneIdentifier];
          v17 = [v16 zoneIdentifier];
          v18 = [(HDCloudSyncAttachmentReferenceTombstoneRecord *)v15 initWithOwnerIdentifier:v10 recordIndex:0 zoneID:v17];
          v19 = v84[5];
          v84[5] = v18;

          v14 = v84[5];
        }

        if ([v14 attachmentReferenceTombstoneCount] >= 10000)
        {
          v20 = [v84[5] recordIndex];
          v21 = [HDCloudSyncAttachmentReferenceTombstoneRecord alloc];
          v22 = [*(v6 + 136) zoneIdentifier];
          v23 = [v22 zoneIdentifier];
          v24 = [(HDCloudSyncAttachmentReferenceTombstoneRecord *)v21 initWithOwnerIdentifier:v10 recordIndex:v20 + 1 zoneID:v23];
          v25 = v84[5];
          v84[5] = v24;
        }

        v26 = v84[5];
        v27 = 0;
      }

      else
      {
        if (v12)
        {
          v27 = v12;
          v28 = v27;
        }

        else
        {
          v29 = [MEMORY[0x277CCA9B8] hk_error:100 format:@"Failed to retrieve tombstone record from cache."];
          v27 = v29;
          if (v29)
          {
            v30 = v29;
          }
        }

        v26 = 0;
      }

      _Block_object_dispose(&v83, 8);
      _Block_object_dispose(v89, 8);
    }

    else
    {
      v27 = 0;
      v26 = 0;
    }

    v31 = v27;
    v32 = *(*(a1 + 48) + 8);
    v33 = *(v32 + 40);
    *(v32 + 40) = v26;

    if (!*(*(*(a1 + 48) + 8) + 40))
    {
      v71 = v31;
      v52 = v71;
      if (v71)
      {
        if (v77)
        {
          v72 = v71;
          v53 = 0;
          *v77 = v52;
        }

        else
        {
          _HKLogDroppedError();
          v53 = 0;
        }

        v48 = v52;
      }

      else
      {
        v48 = 0;
        v53 = 1;
      }

      goto LABEL_45;
    }

    v5 = *(*(*(a1 + 48) + 8) + 40);
  }

  if ([v5 attachmentReferenceTombstoneCount] >= 10000)
  {
    v34 = *(*(a1 + 32) + 128);
    v35 = [*(*(*(a1 + 48) + 8) + 40) record];
    [v34 addObject:v35];

    v36 = [*(*(*(a1 + 48) + 8) + 40) recordIndex];
    v37 = [HDCloudSyncAttachmentReferenceTombstoneRecord alloc];
    v38 = [*(a1 + 40) string];
    v39 = [*(*(a1 + 32) + 136) zoneIdentifier];
    v40 = [v39 zoneIdentifier];
    v41 = [(HDCloudSyncAttachmentReferenceTombstoneRecord *)v37 initWithOwnerIdentifier:v38 recordIndex:v36 + 1 zoneID:v40];
    v42 = *(*(a1 + 48) + 8);
    v43 = *(v42 + 40);
    *(v42 + 40) = v41;
  }

  [*(*(*(a1 + 48) + 8) + 40) addAttachmentReferenceTombstone:v79];
  v44 = [v79 identifier];
  v45 = [v44 UUIDString];
  v46 = [*(*(a1 + 32) + 136) zoneIdentifier];
  v47 = [v46 zoneIdentifier];
  v48 = [HDCloudSyncAttachmentReferenceRecord recordIDForReferenceIdentifier:v45 zoneID:v47];

  v49 = *(*(a1 + 32) + 136);
  v81 = 0;
  v50 = [v49 recordForRecordID:v48 class:objc_opt_class() error:&v81];
  v51 = v81;
  v52 = v51;
  if (v50 || !v51)
  {
    if (v50)
    {
      v54 = [v50 attachmentIdentifier];
      v55 = [*(*(a1 + 32) + 136) zoneIdentifier];
      v56 = [v55 zoneIdentifier];
      v78 = [HDCloudSyncAttachmentRecord recordIDForAttachmentIdentifier:v54 zoneID:v56];

      v57 = *(*(a1 + 32) + 136);
      v80 = 0;
      v58 = [v57 recordForRecordID:v78 class:objc_opt_class() error:&v80];
      v59 = v80;
      v60 = v59;
      if (v58)
      {
        v61 = 1;
      }

      else
      {
        v61 = v59 == 0;
      }

      v53 = v61;
      if (v61)
      {
        if (v58)
        {
          v63 = *(a1 + 32);
          v62 = a1 + 32;
          v64 = *(v63 + 112);
          v65 = [v50 record];
          v66 = [v65 recordID];
          [v64 addObject:v66];

          v67 = *(*v62 + 120);
          v68 = [v58 record];
          v69 = [v68 recordID];
          [v67 addObject:v69];

          [*(*v62 + 104) addObject:v79];
        }

        else
        {
          _HKInitializeLogging();
          v73 = *MEMORY[0x277CCC328];
          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_FAULT))
          {
            v76 = *(a1 + 32);
            *buf = 138543618;
            *&buf[4] = v76;
            *&buf[12] = 2114;
            *&buf[14] = v50;
            _os_log_fault_impl(&dword_228986000, v73, OS_LOG_TYPE_FAULT, "[attachments] %{public}@ Missing attachment record for corresponding reference %{public}@.", buf, 0x16u);
          }
        }
      }
    }

    else
    {
      _HKInitializeLogging();
      v70 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        v75 = *(a1 + 32);
        *buf = 138543618;
        *&buf[4] = v75;
        *&buf[12] = 2114;
        *&buf[14] = v79;
        _os_log_error_impl(&dword_228986000, v70, OS_LOG_TYPE_ERROR, "[attachments] %{public}@ Failed to find record for reference %{public}@.", buf, 0x16u);
      }

      v53 = 1;
    }
  }

  else
  {
    v53 = 0;
  }

LABEL_45:
  return v53;
}

uint64_t __101__HDCloudSyncPushReferenceTombstonesOperation_tombstoneRecordToPushForZoneWithOwnerIdentifier_error___block_invoke(void *a1, void *a2)
{
  v4 = a2;
  v5 = [v4 ownerIdentifier];
  v6 = [v5 isEqualToString:a1[4]];

  if (v6 && [v4 recordIndex] >= *(*(a1[5] + 8) + 24))
  {
    *(*(a1[5] + 8) + 24) = [v4 recordIndex];
    objc_storeStrong((*(a1[6] + 8) + 40), a2);
  }

  return 1;
}

uint64_t __122__HDCloudSyncPushReferenceTombstonesOperation__updateRecordsToDeleteBySkippingAttachmentsWithMultipleReferencesWithError___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = *(*(a1 + 32) + 120);
  v6 = [v5 countByEnumeratingWithState:&v26 objects:v34 count:16];
  v19 = v5;
  if (v6)
  {
    v7 = *v27;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v27 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v26 + 1) + 8 * i);
        v22 = 0;
        v23 = &v22;
        v24 = 0x2020000000;
        v25 = 0;
        v10 = objc_alloc(MEMORY[0x277CCAD78]);
        v11 = [HDCloudSyncAttachmentRecord attachmentIdentifierForRecordID:v9];
        v12 = [v10 initWithUUIDString:v11];

        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __122__HDCloudSyncPushReferenceTombstonesOperation__updateRecordsToDeleteBySkippingAttachmentsWithMultipleReferencesWithError___block_invoke_2;
        v21[3] = &unk_278621878;
        v21[4] = &v22;
        if (![HDAttachmentReferenceEntity enumerateReferencesForAttachmentIdentifier:v12 type:0 transaction:v4 error:a3 enumerationHandler:v21])
        {

          _Block_object_dispose(&v22, 8);
          v17 = 0;
          goto LABEL_15;
        }

        if (*(v23 + 24) == 1)
        {
          _HKInitializeLogging();
          v13 = *MEMORY[0x277CCC2A0];
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            v14 = v4;
            v15 = *(a1 + 32);
            v16 = [v12 UUIDString];
            *buf = 138543618;
            v31 = v15;
            v32 = 2114;
            v33 = v16;
            _os_log_impl(&dword_228986000, v13, OS_LOG_TYPE_DEFAULT, "[attachments] %{public}@: Skipping deletion for attachment with multiple references %{public}@", buf, 0x16u);

            v4 = v14;
            v5 = v19;
          }

          [*(a1 + 40) addObject:v9];
        }

        _Block_object_dispose(&v22, 8);
      }

      v6 = [v5 countByEnumeratingWithState:&v26 objects:v34 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v17 = 1;
LABEL_15:

  return v17;
}

void __95__HDCloudSyncPushReferenceTombstonesOperation__modifyCloudWithRecordsToSave_recordIDsToDelete___block_invoke(uint64_t a1, uint64_t a2, void *a3)
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

void __95__HDCloudSyncPushReferenceTombstonesOperation__modifyCloudWithRecordsToSave_recordIDsToDelete___block_invoke_309(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v22 = 0;
  if (!v2)
  {
    v12 = 0;
    goto LABEL_7;
  }

  v3 = +[HDMutableDatabaseTransactionContext contextForWritingProtectedData];
  v4 = [v2 configuration];
  v5 = [v4 accessibilityAssertion];
  v6 = [v3 contextWithAccessibilityAssertion:v5];

  v7 = [v2 configuration];
  v8 = [v7 repository];
  v9 = [v8 profile];
  v10 = [v9 database];
  *buf = MEMORY[0x277D85DD0];
  *&buf[8] = 3221225472;
  *&buf[16] = __88__HDCloudSyncPushReferenceTombstonesOperation__updateTombstonesToSynchronizedWithError___block_invoke;
  v24 = &unk_278616048;
  v25 = v2;
  v11 = [v10 performTransactionWithContext:v6 error:&v22 block:buf inaccessibilityHandler:0];

  v12 = v22;
  if ((v11 & 1) == 0)
  {
LABEL_7:
    v19 = *(a1 + 32);
    v20 = 0;
    v21 = v12;
    goto LABEL_8;
  }

  _HKInitializeLogging();
  v13 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(a1 + 32);
    v15 = *(v14 + 112);
    v16 = v13;
    v17 = [v15 count];
    v18 = [*(*(a1 + 32) + 120) count];
    *buf = 138543874;
    *&buf[4] = v14;
    *&buf[12] = 2048;
    *&buf[14] = v17;
    *&buf[22] = 2048;
    v24 = v18;
    _os_log_impl(&dword_228986000, v16, OS_LOG_TYPE_DEFAULT, "[attachments] %{public}@: Successfully deleted %lu reference and %lu attachments records", buf, 0x20u);
  }

  v19 = *(a1 + 32);
  v20 = 1;
  v21 = 0;
LABEL_8:
  [v19 finishWithSuccess:v20 error:v21];
}

@end