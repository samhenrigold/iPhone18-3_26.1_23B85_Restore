@interface HDCloudSyncPullReferencesOperation
- (HDCloudSyncPullReferencesOperation)initWithConfiguration:(id)configuration cloudState:(id)state;
- (uint64_t)_persistPendingReferencesIfNeededWithError:(id *)error;
- (void)_fetchAttachmentRecordAssets;
- (void)main;
- (void)synchronousTaskGroup:(id)group didFinishWithSuccess:(BOOL)success errors:(id)errors;
@end

@implementation HDCloudSyncPullReferencesOperation

- (HDCloudSyncPullReferencesOperation)initWithConfiguration:(id)configuration cloudState:(id)state
{
  v12.receiver = self;
  v12.super_class = HDCloudSyncPullReferencesOperation;
  v4 = [(HDCloudSyncOperation *)&v12 initWithConfiguration:configuration cloudState:state];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    attachmentRecordsToFetch = v4->_attachmentRecordsToFetch;
    v4->_attachmentRecordsToFetch = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    referencesToPersist = v4->_referencesToPersist;
    v4->_referencesToPersist = v7;

    v9 = objc_alloc_init(MEMORY[0x277D10BB0]);
    taskGroup = v4->_taskGroup;
    v4->_taskGroup = v9;

    [(HDSynchronousTaskGroup *)v4->_taskGroup setDelegate:v4];
  }

  return v4;
}

- (void)main
{
  v65 = *MEMORY[0x277D85DE8];
  [(HDSynchronousTaskGroup *)self->_taskGroup beginTask];
  configuration = [(HDCloudSyncOperation *)self configuration];
  repository = [configuration repository];
  profile = [repository profile];
  legacyRepositoryProfile = [profile legacyRepositoryProfile];
  v56 = 0;
  v7 = HDCloudSyncAttachmentReferenceEpoch(legacyRepositoryProfile, &v56);
  v8 = v56;
  self->_epoch = v7;

  if (self->_epoch)
  {
    v9 = 1;
  }

  else
  {
    v9 = v8 == 0;
  }

  if (v9)
  {
    v51 = v8;
    configuration2 = [(HDCloudSyncOperation *)self configuration];
    cachedCloudState = [configuration2 cachedCloudState];
    configuration3 = [(HDCloudSyncOperation *)self configuration];
    repository2 = [configuration3 repository];
    primaryCKContainer = [repository2 primaryCKContainer];
    containerIdentifier = [primaryCKContainer containerIdentifier];
    v55 = 0;
    v16 = [cachedCloudState attachmentZoneForContainerID:containerIdentifier error:&v55];
    v17 = v55;
    attachmentZone = self->_attachmentZone;
    self->_attachmentZone = v16;

    v19 = self->_attachmentZone;
    v20 = v17;
    if (!v19 && v17)
    {
      selfCopy2 = self;
      v22 = 0;
      v23 = v17;
LABEL_9:
      [(HDCloudSyncOperation *)selfCopy2 finishWithSuccess:v22 error:v23];
LABEL_25:
      v8 = v51;

      goto LABEL_26;
    }

    if (!v19)
    {
      configuration4 = [(HDCloudSyncOperation *)self configuration];
      repository3 = [configuration4 repository];
      profileType = [repository3 profileType];

      if (profileType != 1)
      {
        selfCopy2 = self;
        v22 = 1;
        v23 = 0;
        goto LABEL_9;
      }
    }

    configuration5 = [(HDCloudSyncOperation *)self configuration];
    accessibilityAssertion = [configuration5 accessibilityAssertion];
    v29 = [HDDatabaseTransactionContext contextForAccessibilityAssertion:accessibilityAssertion];

    configuration6 = [(HDCloudSyncOperation *)self configuration];
    repository4 = [configuration6 repository];
    profile2 = [repository4 profile];
    database = [profile2 database];
    v53[4] = self;
    v54 = 0;
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = __42__HDCloudSyncPullReferencesOperation_main__block_invoke;
    v53[3] = &unk_278616D40;
    v34 = [database performWithTransactionContext:v29 error:&v54 block:v53];
    v35 = v54;

    if ((v34 & 1) == 0)
    {
      [(HDSynchronousTaskGroup *)self->_taskGroup failTaskWithError:v35];
LABEL_24:

      goto LABEL_25;
    }

    v50 = v17;
    if ([(NSMutableDictionary *)self->_attachmentRecordsToFetch count])
    {
      v36 = objc_alloc_init(HDMutableDatabaseTransactionContext);
      configuration7 = [(HDCloudSyncOperation *)self configuration];
      accessibilityAssertion2 = [configuration7 accessibilityAssertion];
      v39 = [(HDMutableDatabaseTransactionContext *)v36 contextWithAccessibilityAssertion:accessibilityAssertion2];

      configuration8 = [(HDCloudSyncOperation *)self configuration];
      repository5 = [configuration8 repository];
      profile3 = [repository5 profile];
      database2 = [profile3 database];
      v57 = 0;
      *v62 = MEMORY[0x277D85DD0];
      *&v62[8] = 3221225472;
      *&v62[16] = __68__HDCloudSyncPullReferencesOperation__persistUnsupportedAttachments__block_invoke;
      v63 = &unk_278616D40;
      selfCopy3 = self;
      LOBYTE(v36) = [database2 performWithTransactionContext:v39 error:&v57 block:v62];
      v44 = v57;

      if ((v36 & 1) == 0)
      {
        _HKInitializeLogging();
        v45 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          selfCopy4 = self;
          v60 = 2114;
          v61 = v44;
          _os_log_error_impl(&dword_228986000, v45, OS_LOG_TYPE_ERROR, "[attachments] %{public}@: Failed to ingest unsupported attachments with error: %{public}@", buf, 0x16u);
        }
      }

      [(HDCloudSyncPullReferencesOperation *)&self->super.super.isa _fetchAttachmentRecordAssets];
    }

    else
    {
      v52 = 0;
      v46 = [(HDCloudSyncPullReferencesOperation *)&self->super.super.isa _persistPendingReferencesIfNeededWithError:?];
      v47 = v52;
      v48 = v47;
      if ((v46 & 1) == 0)
      {
        _HKInitializeLogging();
        v49 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
        {
          *v62 = 138543618;
          *&v62[4] = self;
          *&v62[12] = 2114;
          *&v62[14] = v48;
          _os_log_error_impl(&dword_228986000, v49, OS_LOG_TYPE_ERROR, "[attachments] %{public}@: Failed to persist pending references, %{public}@", v62, 0x16u);
        }

        [(HDSynchronousTaskGroup *)self->_taskGroup failTaskWithError:v48];

        goto LABEL_23;
      }
    }

    [(HDSynchronousTaskGroup *)self->_taskGroup finishTask];
LABEL_23:
    v20 = v50;
    goto LABEL_24;
  }

  [(HDSynchronousTaskGroup *)self->_taskGroup failTaskWithError:v8];
LABEL_26:
}

uint64_t __42__HDCloudSyncPullReferencesOperation_main__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a1 + 32) + 120);
  v5 = objc_opt_class();
  v6 = *(a1 + 32);
  v7 = *(v6 + 128);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __42__HDCloudSyncPullReferencesOperation_main__block_invoke_2;
  v9[3] = &unk_278621E38;
  v9[4] = v6;
  return [v4 recordsForClass:v5 epoch:v7 error:a2 enumerationHandler:v9];
}

uint64_t __42__HDCloudSyncPullReferencesOperation_main__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v56 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = v6;
  v8 = *(a1 + 32);
  v9 = *(v8 + 128);
  if (v9 <= a3)
  {
    v9 = a3;
  }

  *(v8 + 128) = v9;
  v10 = [v6 attachmentReference];
  v11 = *(*(a1 + 32) + 112);
  v12 = [v7 referenceIdentifier];
  [v11 setObject:v10 forKeyedSubscript:v12];

  v13 = objc_alloc(MEMORY[0x277CCAD78]);
  v14 = [v7 attachmentIdentifier];
  v15 = [v13 initWithUUIDString:v14];
  v16 = [*(a1 + 32) configuration];
  v17 = [v16 repository];
  v18 = [v17 profile];
  v19 = [v18 legacyRepositoryProfile];
  v49 = 0;
  v20 = [HDAttachmentEntity attachmentWithIdentifier:v15 profile:v19 error:&v49];
  v21 = v49;

  if (!v20 && v21)
  {
    if (v45)
    {
      v22 = v21;
      v23 = 0;
      *v45 = v21;
    }

    else
    {
      _HKLogDroppedError();
      v23 = 0;
    }

    goto LABEL_22;
  }

  if (v20)
  {
    v23 = 1;
LABEL_22:
    v30 = v21;
    goto LABEL_23;
  }

  v24 = *(*(a1 + 32) + 120);
  v25 = [v7 attachmentIdentifier];
  v26 = [*(*(a1 + 32) + 120) zoneIdentifier];
  v27 = [v26 zoneIdentifier];
  v28 = [HDCloudSyncAttachmentRecord recordIDForAttachmentIdentifier:v25 zoneID:v27];
  v48 = v21;
  v29 = [v24 recordForRecordID:v28 class:objc_opt_class() error:&v48];
  v30 = v48;

  if (v29)
  {
    v31 = 1;
  }

  else
  {
    v31 = v30 == 0;
  }

  v23 = v31;
  if (v31)
  {
    if (v29)
    {
      v32 = [*(*(a1 + 32) + 104) allValues];
      v46[0] = MEMORY[0x277D85DD0];
      v46[1] = 3221225472;
      v46[2] = __42__HDCloudSyncPullReferencesOperation_main__block_invoke_298;
      v46[3] = &unk_278621E10;
      v33 = v29;
      v47 = v33;
      v34 = [v32 hk_containsObjectPassingTest:v46];

      if ((v34 & 1) == 0)
      {
        v35 = *(*(a1 + 32) + 104);
        v36 = [v7 attachmentIdentifier];
        [v35 setObject:v33 forKeyedSubscript:v36];
      }
    }

    else
    {
      _HKInitializeLogging();
      v39 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_FAULT))
      {
        v40 = *(a1 + 32);
        v41 = v39;
        v42 = [v7 attachmentIdentifier];
        v43 = [v7 referenceIdentifier];
        *buf = 138543874;
        v51 = v40;
        v52 = 2114;
        v53 = v42;
        v54 = 2114;
        v55 = v43;
        _os_log_fault_impl(&dword_228986000, v41, OS_LOG_TYPE_FAULT, "%{public}@ Failed to find attachment record %{public}@ for reference %{public}@ in the cache", buf, 0x20u);
      }
    }
  }

  else if (v45)
  {
    v38 = v30;
    *v45 = v30;
  }

  else
  {
    _HKLogDroppedError();
  }

LABEL_23:
  return v23;
}

uint64_t __42__HDCloudSyncPullReferencesOperation_main__block_invoke_298(uint64_t a1, void *a2)
{
  v3 = [a2 recordID];
  v4 = [*(a1 + 32) recordID];
  v5 = [v3 isEqual:v4];

  return v5;
}

- (void)_fetchAttachmentRecordAssets
{
  v24[1] = *MEMORY[0x277D85DE8];
  if (self)
  {
    [self[17] beginTask];
    if ([self[13] count])
    {
      v23[0] = 0;
      v23[1] = v23;
      v23[2] = 0x2020000000;
      v23[3] = 0;
      v22[0] = 0;
      v22[1] = v22;
      v22[2] = 0x2020000000;
      v22[3] = 0;
      allValues = [self[13] allValues];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __66__HDCloudSyncPullReferencesOperation__fetchAttachmentRecordAssets__block_invoke;
      v21[3] = &unk_278621E88;
      v21[4] = v23;
      v21[5] = v22;
      v3 = [allValues hk_map:v21];

      if ([v3 count])
      {
        if (!v3)
        {
          goto LABEL_12;
        }
      }

      else
      {
        allValues2 = [self[13] allValues];
        firstObject = [allValues2 firstObject];
        recordID = [firstObject recordID];
        v24[0] = recordID;
        v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];

        v3 = v8;
        if (!v8)
        {
          goto LABEL_12;
        }
      }

      if ([v3 count])
      {
        v9 = [HDCloudSyncFetchRecordsOperation alloc];
        configuration = [self configuration];
        configuration2 = [self configuration];
        repository = [configuration2 repository];
        primaryCKContainer = [repository primaryCKContainer];
        v14 = [(HDCloudSyncFetchRecordsOperation *)v9 initWithConfiguration:configuration container:primaryCKContainer recordIDs:v3];

        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __66__HDCloudSyncPullReferencesOperation__fetchAttachmentRecordAssets__block_invoke_2;
        v19[3] = &unk_278621EB0;
        v19[4] = self;
        v15 = v3;
        v20 = v15;
        [(HDCloudSyncOperation *)v14 setOnError:v19];
        v17[0] = MEMORY[0x277D85DD0];
        v17[1] = 3221225472;
        v17[2] = __66__HDCloudSyncPullReferencesOperation__fetchAttachmentRecordAssets__block_invoke_308;
        v17[3] = &unk_278621ED8;
        v17[4] = self;
        v18 = v15;
        [(HDCloudSyncOperation *)v14 setOnSuccess:v17];
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __66__HDCloudSyncPullReferencesOperation__fetchAttachmentRecordAssets__block_invoke_310;
        v16[3] = &unk_278621F00;
        v16[4] = self;
        [(HDCloudSyncFetchRecordsOperation *)v14 setRecordHandler:v16];
        [(HDCloudSyncOperation *)v14 start];

LABEL_13:
        _Block_object_dispose(v22, 8);
        _Block_object_dispose(v23, 8);
        return;
      }

LABEL_12:
      [self[17] finishTask];
      goto LABEL_13;
    }

    v4 = self[17];

    [v4 finishTask];
  }
}

- (uint64_t)_persistPendingReferencesIfNeededWithError:(id *)error
{
  if (!error)
  {
    return 0;
  }

  allValues = [error[14] allValues];
  v5 = [allValues count];

  if (!v5)
  {
    return 1;
  }

  v6 = +[HDMutableDatabaseTransactionContext contextForWritingProtectedData];
  configuration = [error configuration];
  accessibilityAssertion = [configuration accessibilityAssertion];
  v9 = [v6 contextWithAccessibilityAssertion:accessibilityAssertion];

  configuration2 = [error configuration];
  repository = [configuration2 repository];
  profile = [repository profile];
  database = [profile database];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __81__HDCloudSyncPullReferencesOperation__persistPendingReferencesIfNeededWithError___block_invoke;
  v16[3] = &unk_278616D40;
  v16[4] = error;
  v14 = [database performWithTransactionContext:v9 error:a2 block:v16];

  return v14;
}

uint64_t __68__HDCloudSyncPullReferencesOperation__persistUnsupportedAttachments__block_invoke(uint64_t a1, void *a2)
{
  v64 = *MEMORY[0x277D85DE8];
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  obj = [*(*(a1 + 32) + 104) allValues];
  v43 = [obj countByEnumeratingWithState:&v57 objects:v63 count:16];
  if (v43)
  {
    v40 = a2;
    v42 = *v58;
    while (2)
    {
      v4 = 0;
      do
      {
        if (*v58 != v42)
        {
          objc_enumerationMutation(obj);
        }

        v45 = v4;
        v5 = *(*(&v57 + 1) + 8 * v4);
        v6 = [*(*(a1 + 32) + 112) allValues];
        v56[0] = MEMORY[0x277D85DD0];
        v56[1] = 3221225472;
        v56[2] = __68__HDCloudSyncPullReferencesOperation__persistUnsupportedAttachments__block_invoke_2;
        v56[3] = &unk_278621E60;
        v44 = v5;
        v56[4] = v5;
        v7 = [v6 hk_filter:v56];

        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        v8 = v7;
        v9 = [v8 countByEnumeratingWithState:&v52 objects:v62 count:16];
        v46 = v8;
        if (v9)
        {
          v10 = v9;
          v11 = *v53;
          while (2)
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v53 != v11)
              {
                objc_enumerationMutation(v46);
              }

              v13 = *(*(&v52 + 1) + 8 * i);
              v14 = [*(a1 + 32) configuration];
              v15 = [v14 repository];
              v16 = [v15 attachmentManager];
              v17 = [v16 supportedSchemaVersionForReference:v13];

              if (!v17 || v17 >= [v13 schemaVersion])
              {
                v34 = v46;
                v23 = v46;
                goto LABEL_25;
              }
            }

            v8 = v46;
            v10 = [v46 countByEnumeratingWithState:&v52 objects:v62 count:16];
            if (v10)
            {
              continue;
            }

            break;
          }
        }

        v18 = [*(a1 + 32) configuration];
        v19 = [v18 repository];
        v20 = [v19 attachmentManager];
        v21 = [v44 attachment];
        v51 = 0;
        v22 = [v20 insertAttachmentReferences:v8 attachment:v21 error:&v51];
        v23 = v51;

        if ((v22 & 1) == 0)
        {
          v36 = v23;
          v37 = v36;
          if (v36)
          {
            if (v40)
            {
              v38 = v36;
              *v40 = v37;
            }

            else
            {
              _HKLogDroppedError();
            }
          }

          v35 = 0;
          goto LABEL_33;
        }

        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v24 = v8;
        v25 = [v24 countByEnumeratingWithState:&v47 objects:v61 count:16];
        if (v25)
        {
          v26 = v25;
          v27 = *v48;
          do
          {
            for (j = 0; j != v26; ++j)
            {
              if (*v48 != v27)
              {
                objc_enumerationMutation(v24);
              }

              v29 = *(*(a1 + 32) + 112);
              v30 = [*(*(&v47 + 1) + 8 * j) identifier];
              v31 = [v30 UUIDString];
              [v29 removeObjectForKey:v31];
            }

            v26 = [v24 countByEnumeratingWithState:&v47 objects:v61 count:16];
          }

          while (v26);
        }

        v32 = *(*(a1 + 32) + 104);
        v33 = [v44 attachmentIdentifier];
        [v32 removeObjectForKey:v33];

        v34 = v46;
LABEL_25:

        v4 = v45 + 1;
      }

      while (v45 + 1 != v43);
      v43 = [obj countByEnumeratingWithState:&v57 objects:v63 count:16];
      if (v43)
      {
        continue;
      }

      break;
    }
  }

  v35 = 1;
LABEL_33:

  return v35;
}

uint64_t __68__HDCloudSyncPullReferencesOperation__persistUnsupportedAttachments__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 attachmentIdentifier];
  v5 = [v3 attachmentIdentifier];

  v6 = [v5 UUIDString];
  v7 = [v4 isEqualToString:v6];

  return v7;
}

id __66__HDCloudSyncPullReferencesOperation__fetchAttachmentRecordAssets__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(*(*(a1 + 32) + 8) + 24) <= 99 && (v5 = *(*(*(a1 + 40) + 8) + 24), [v3 fileSize] + v5 <= 104857600))
  {
    ++*(*(*(a1 + 32) + 8) + 24);
    *(*(*(a1 + 40) + 8) + 24) += [v4 fileSize];
    v6 = [v4 recordID];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __66__HDCloudSyncPullReferencesOperation__fetchAttachmentRecordAssets__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = 138543874;
    v9 = v6;
    v10 = 2114;
    v11 = v7;
    v12 = 2114;
    v13 = v4;
    _os_log_error_impl(&dword_228986000, v5, OS_LOG_TYPE_ERROR, "[attachments] %{public}@: Failed to fetch recordIDs %{public}@: %{public}@", &v8, 0x20u);
  }

  [*(*(a1 + 32) + 136) failTaskWithError:v4];
}

uint64_t __66__HDCloudSyncPullReferencesOperation__fetchAttachmentRecordAssets__block_invoke_308(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = v2;
    v7 = 138543618;
    v8 = v4;
    v9 = 2048;
    v10 = [v3 count];
    _os_log_impl(&dword_228986000, v5, OS_LOG_TYPE_DEFAULT, "[attachments] %{public}@: Successfully fetched %lu records", &v7, 0x16u);
  }

  [(HDCloudSyncPullReferencesOperation *)*(a1 + 32) _fetchAttachmentRecordAssets];
  return [*(*(a1 + 32) + 136) finishTask];
}

uint64_t __66__HDCloudSyncPullReferencesOperation__fetchAttachmentRecordAssets__block_invoke_310(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  if (v3)
  {
    v5 = [(HDCloudSyncRecord *)HDCloudSyncAttachmentRecord recordWithCKRecord:a2 error:a3];
    if (v5)
    {
      v6 = [*(v3 + 112) allValues];
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = __66__HDCloudSyncPullReferencesOperation__ingestAssetForRecord_error___block_invoke;
      v42[3] = &unk_278621E60;
      v33 = v5;
      v7 = v5;
      v43 = v7;
      v8 = [v6 hk_filter:v42];

      v9 = objc_alloc_init(HDMutableDatabaseTransactionContext);
      v10 = [v3 configuration];
      v11 = [v10 accessibilityAssertion];
      v12 = [(HDMutableDatabaseTransactionContext *)v9 contextWithAccessibilityAssertion:v11];

      v13 = [v3 configuration];
      v14 = [v13 repository];
      v15 = [v14 profile];
      v16 = [v15 database];
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __66__HDCloudSyncPullReferencesOperation__ingestAssetForRecord_error___block_invoke_2;
      v38[3] = &unk_27861A028;
      v39 = v7;
      v40 = v3;
      v17 = v8;
      v41 = v17;
      v32 = v12;
      v31 = [v16 performWithTransactionContext:v12 error:a3 block:v38];

      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v18 = v17;
      v19 = [v18 countByEnumeratingWithState:&v34 objects:v44 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v35;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v35 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = *(*(&v34 + 1) + 8 * i);
            v24 = *(v3 + 112);
            v25 = [v23 identifier];
            v26 = [v25 UUIDString];
            [v24 removeObjectForKey:v26];

            v27 = *(v3 + 104);
            v28 = [v23 attachmentIdentifier];
            v29 = [v28 UUIDString];
            [v27 removeObjectForKey:v29];
          }

          v20 = [v18 countByEnumeratingWithState:&v34 objects:v44 count:16];
        }

        while (v20);
      }

      v5 = v33;
      v3 = v31;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t __66__HDCloudSyncPullReferencesOperation__ingestAssetForRecord_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 attachmentIdentifier];
  v4 = [v3 UUIDString];
  v5 = [*(a1 + 32) attachmentIdentifier];
  v6 = [v4 isEqualToString:v5];

  return v6;
}

uint64_t __66__HDCloudSyncPullReferencesOperation__ingestAssetForRecord_error___block_invoke_2(uint64_t a1, HDInsertSynchronisedAttachmentReferences **a2)
{
  v51 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) hasAssetData])
  {
    v4 = [*(a1 + 40) configuration];
    v5 = [v4 repository];
    v6 = [v5 attachmentManager];
    v7 = *(a1 + 48);
    v8 = [*(a1 + 32) attachment];
    v9 = [*(a1 + 32) assetData];
    v44 = 0;
    v10 = [v6 insertAttachmentReferences:v7 attachment:v8 fileData:v9 encrypt:0 error:&v44];
    v11 = v44;

    if ((v10 & 1) == 0)
    {
      _HKInitializeLogging();
      v12 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        v33 = *(a1 + 32);
        v32 = *(a1 + 40);
        *buf = 138543874;
        v46 = v32;
        v47 = 2114;
        v48 = v33;
        v49 = 2114;
        v50 = v11;
        _os_log_error_impl(&dword_228986000, v12, OS_LOG_TYPE_ERROR, "[attachments] %{public}@: Failed to ingest attachment record %{public}@, %{public}@", buf, 0x20u);
      }

      v13 = v11;
      v14 = v13 == 0;
      if (!v13)
      {
        goto LABEL_17;
      }

      if (a2)
      {
        goto LABEL_7;
      }

LABEL_16:
      _HKLogDroppedError();
      goto LABEL_17;
    }

    goto LABEL_11;
  }

  v16 = MEMORY[0x277CCA9F8];
  v17 = [*(a1 + 32) assetURL];
  v43 = 0;
  v13 = [v16 fileHandleForReadingFromURL:v17 error:&v43];
  v11 = v43;

  if (v13)
  {
    v18 = [*(a1 + 40) configuration];
    v19 = [v18 repository];
    v20 = [v19 attachmentManager];
    v21 = *(a1 + 48);
    v22 = [*(a1 + 32) attachment];
    v42 = 0;
    v23 = [v20 insertAttachmentReferences:v21 attachment:v22 fileHandle:v13 encrypt:0 error:&v42];
    v24 = v42;

    [(HDInsertSynchronisedAttachmentReferences *)v13 closeFile];
    if (!v23)
    {
      _HKInitializeLogging();
      v29 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        v41 = *(a1 + 32);
        v40 = *(a1 + 40);
        *buf = 138543874;
        v46 = v40;
        v47 = 2114;
        v48 = v41;
        v49 = 2114;
        v50 = v24;
        _os_log_error_impl(&dword_228986000, v29, OS_LOG_TYPE_ERROR, "[attachments] %{public}@: Failed to ingest attachment record %{public}@, %{public}@", buf, 0x20u);
      }

      v25 = v24;
      v14 = v25 == 0;
      if (v25)
      {
        if (a2)
        {
          v30 = v25;
          *a2 = v25;
        }

        else
        {
          _HKLogDroppedError();
        }
      }

      goto LABEL_25;
    }

LABEL_11:
    v11 = [[HDInsertSynchronisedAttachmentReferences alloc] initWithAttachmentReferences:*(a1 + 48)];
    v13 = [*(a1 + 40) configuration];
    v25 = [(HDInsertSynchronisedAttachmentReferences *)v13 repository];
    v26 = [(HDInsertSynchronisedAttachmentReferences *)v25 profile];
    v27 = [v26 legacyRepositoryProfile];
    v14 = [(HDJournalableOperation *)v11 performOrJournalWithProfile:v27 error:a2];

LABEL_25:
    goto LABEL_26;
  }

  _HKInitializeLogging();
  v28 = *MEMORY[0x277CCC2A0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
  {
    v36 = a1 + 32;
    v34 = *(a1 + 32);
    v35 = *(v36 + 8);
    v37 = v28;
    v38 = [v34 assetURL];
    v39 = [v38 path];
    *buf = 138543874;
    v46 = v35;
    v47 = 2114;
    v48 = v39;
    v49 = 2114;
    v50 = v11;
    _os_log_error_impl(&dword_228986000, v37, OS_LOG_TYPE_ERROR, "[attachments] %{public}@: Failed to retreive fileHandle for %{public}@, %{public}@", buf, 0x20u);
  }

  v13 = v11;
  v14 = v13 == 0;
  if (!v13)
  {
    goto LABEL_17;
  }

  if (!a2)
  {
    goto LABEL_16;
  }

LABEL_7:
  v15 = v13;
  *a2 = v13;
LABEL_17:
  v11 = v13;
LABEL_26:

  return v14;
}

uint64_t __81__HDCloudSyncPullReferencesOperation__persistPendingReferencesIfNeededWithError___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [HDInsertSynchronisedAttachmentReferences alloc];
  v5 = [*(*(a1 + 32) + 112) allValues];
  v6 = [(HDInsertSynchronisedAttachmentReferences *)v4 initWithAttachmentReferences:v5];

  v7 = [*(a1 + 32) configuration];
  v8 = [v7 repository];
  v9 = [v8 profile];
  v10 = [v9 legacyRepositoryProfile];
  v11 = [(HDJournalableOperation *)v6 performOrJournalWithProfile:v10 error:a2];

  return v11;
}

- (void)synchronousTaskGroup:(id)group didFinishWithSuccess:(BOOL)success errors:(id)errors
{
  successCopy = success;
  v29 = *MEMORY[0x277D85DE8];
  groupCopy = group;
  errorsCopy = errors;
  if (successCopy)
  {
    v24 = 0;
    v10 = [(HDCloudSyncPullReferencesOperation *)&self->super.super.isa _persistPendingReferencesIfNeededWithError:?];
    firstObject = v24;
    if ((v10 & 1) == 0)
    {
      _HKInitializeLogging();
      v21 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        selfCopy = self;
        v27 = 2114;
        v28 = firstObject;
        _os_log_error_impl(&dword_228986000, v21, OS_LOG_TYPE_ERROR, "[attachments] %{public}@: Failed to persist pending references, %{public}@", buf, 0x16u);
      }

      selfCopy3 = self;
      v20 = 0;
      goto LABEL_9;
    }

    v22 = groupCopy;
    epoch = self->_epoch;
    configuration = [(HDCloudSyncOperation *)self configuration];
    repository = [configuration repository];
    profile = [repository profile];
    legacyRepositoryProfile = [profile legacyRepositoryProfile];
    v23 = 0;
    v17 = HDSetCloudSyncAttachmentReferenceEpoch(epoch, legacyRepositoryProfile, &v23);
    v18 = v23;

    if ((v17 & 1) == 0)
    {
      [(HDCloudSyncOperation *)self finishWithSuccess:0 error:v18];

      groupCopy = v22;
      goto LABEL_10;
    }

    groupCopy = v22;
  }

  firstObject = [errorsCopy firstObject];
  selfCopy3 = self;
  v20 = successCopy;
LABEL_9:
  [(HDCloudSyncOperation *)selfCopy3 finishWithSuccess:v20 error:firstObject];
LABEL_10:
}

@end