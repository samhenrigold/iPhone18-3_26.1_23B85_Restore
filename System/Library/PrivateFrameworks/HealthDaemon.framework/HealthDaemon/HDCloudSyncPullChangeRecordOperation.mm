@interface HDCloudSyncPullChangeRecordOperation
- (HDCloudSyncPullChangeRecordOperation)initWithConfiguration:(id)configuration cloudState:(id)state;
- (HDCloudSyncPullChangeRecordOperation)initWithConfiguration:(id)configuration cloudState:(id)state target:(id)target sequenceRecord:(id)record changeRecord:(id)changeRecord;
- (id)_assetExtractionFailureCountKey;
- (uint64_t)_shouldSucceedWithAssetExtractionError:(uint64_t)error;
- (void)_handlePossibleCacheDiscrepancyWithRecordID:(void *)d fetchError:(void *)error errorOut:;
- (void)_setAssetExtractionFailureCount:(void *)count;
- (void)main;
@end

@implementation HDCloudSyncPullChangeRecordOperation

- (HDCloudSyncPullChangeRecordOperation)initWithConfiguration:(id)configuration cloudState:(id)state
{
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE660];
  v7 = NSStringFromSelector(a2);
  [v5 raise:v6 format:{@"The -%@ method is not available on %@", v7, objc_opt_class()}];

  return 0;
}

- (HDCloudSyncPullChangeRecordOperation)initWithConfiguration:(id)configuration cloudState:(id)state target:(id)target sequenceRecord:(id)record changeRecord:(id)changeRecord
{
  targetCopy = target;
  recordCopy = record;
  changeRecordCopy = changeRecord;
  v19.receiver = self;
  v19.super_class = HDCloudSyncPullChangeRecordOperation;
  v16 = [(HDCloudSyncOperation *)&v19 initWithConfiguration:configuration cloudState:state];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_target, target);
    objc_storeStrong(&v17->_sequenceRecord, record);
    objc_storeStrong(&v17->_changeRecord, changeRecord);
  }

  return v17;
}

- (void)main
{
  v30[1] = *MEMORY[0x277D85DE8];
  sequenceRecordID = [(HDCloudSyncChangeRecord *)self->_changeRecord sequenceRecordID];
  recordID = [(HDCloudSyncRecord *)self->_sequenceRecord recordID];
  v5 = [sequenceRecordID isEqual:recordID];

  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277CBC3E0]);
    recordID2 = [(HDCloudSyncRecord *)self->_changeRecord recordID];
    v30[0] = recordID2;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:1];
    v9 = [v6 initWithRecordIDs:v8];

    v10 = +[HDCloudSyncChangeRecord assetKeys];
    v11 = +[HDCloudSyncChangeRecord nonAssetKeys];
    v12 = [v10 arrayByAddingObjectsFromArray:v11];
    [v9 setDesiredKeys:v12];

    shouldFetchAssetContentInMemory = [(HDCloudSyncChangeRecord *)self->_changeRecord shouldFetchAssetContentInMemory];
    v14 = shouldFetchAssetContentInMemory;
    if (shouldFetchAssetContentInMemory)
    {
      [v9 setShouldFetchAssetContentInMemory:1];
      [v9 setDropInMemoryAssetContentASAP:1];
    }

    v28[0] = 0;
    v28[1] = v28;
    v28[2] = 0x3032000000;
    v28[3] = __Block_byref_object_copy__94;
    v28[4] = __Block_byref_object_dispose__94;
    v29 = 0;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __44__HDCloudSyncPullChangeRecordOperation_main__block_invoke;
    v26[3] = &unk_278620C18;
    v26[4] = self;
    v26[5] = v28;
    v27 = v14;
    [v9 setPerRecordCompletionBlock:v26];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __44__HDCloudSyncPullChangeRecordOperation_main__block_invoke_306;
    v25[3] = &unk_278620C40;
    v25[4] = self;
    v25[5] = v28;
    [v9 setFetchRecordsCompletionBlock:v25];
    configuration = [(HDCloudSyncOperation *)self configuration];
    cachedCloudState = [configuration cachedCloudState];
    [cachedCloudState setOperationCountForAnalytics:{objc_msgSend(cachedCloudState, "operationCountForAnalytics") + 1}];

    configuration2 = [(HDCloudSyncOperation *)self configuration];
    operationGroup = [configuration2 operationGroup];
    [v9 setGroup:operationGroup];

    container = [(HDCloudSyncTarget *)self->_target container];
    configuration3 = [(HDCloudSyncOperation *)self configuration];
    repository = [configuration3 repository];
    profileIdentifier = [repository profileIdentifier];
    v23 = HDDatabaseForContainer(container, profileIdentifier);

    [v23 addOperation:v9];
    _Block_object_dispose(v28, 8);
  }

  else
  {
    v24 = [MEMORY[0x277CCA9B8] hk_error:709 format:{@"Change record %@ does not match this sequence record (%@)", self->_changeRecord, self->_sequenceRecord}];
    [(HDCloudSyncOperation *)self finishWithSuccess:0 error:v24];
  }
}

void __44__HDCloudSyncPullChangeRecordOperation_main__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v40 = *MEMORY[0x277D85DE8];
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    _HKInitializeLogging();
    v5 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_FAULT))
    {
      v27 = *(a1 + 32);
      *buf = 138543362;
      *&buf[4] = v27;
      _os_log_fault_impl(&dword_228986000, v5, OS_LOG_TYPE_FAULT, "%{public}@: Multiple calls to perRecordCompletionBlock.", buf, 0xCu);
    }
  }

  else
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 48);
    v10 = a2;
    v11 = a3;
    v12 = a4;
    if (v8)
    {
      [v8 updateCompletedProgressCount:100];
      _HKInitializeLogging();
      v13 = MEMORY[0x277CCC328];
      v14 = *MEMORY[0x277CCC328];
      v15 = *MEMORY[0x277CCC328];
      if (v10)
      {
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          *&buf[4] = v8;
          *&buf[12] = 2114;
          *&buf[14] = v10;
          _os_log_impl(&dword_228986000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: Persisting fetched change record %{public}@", buf, 0x16u);
        }

        v16 = v10;
        v28 = 0;
        v29 = &v28;
        v30 = 0x3032000000;
        v31 = __Block_byref_object_copy__330;
        v32 = __Block_byref_object_dispose__331;
        v33 = 0;
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __103__HDCloudSyncPullChangeRecordOperation__zipArchiveExtractorForChangeRecord_assetContentInMemory_error___block_invoke;
        v35 = &unk_278620C90;
        v39 = v9;
        v38 = &v28;
        v36 = v8;
        v17 = v16;
        v37 = v17;
        if (HKWithAutoreleasePool())
        {
          v18 = v29[5];
        }

        else
        {
          v18 = 0;
        }

        v20 = v18;

        _Block_object_dispose(&v28, 8);
        v21 = 0;
        v19 = v21;
        if (v20)
        {
          v28 = 0;
          v22 = [HDCloudSyncChangeRecord recordWithCKRecord:v17 error:&v28];
          v23 = v28;
          if (v22)
          {
            *buf = MEMORY[0x277D85DD0];
            *&buf[8] = 3221225472;
            *&buf[16] = __104__HDCloudSyncPullChangeRecordOperation__continuationForFetchedRecord_recordID_inMemoryAsset_fetchError___block_invoke_2;
            v35 = &unk_27861A028;
            v36 = v22;
            v37 = v8;
            v38 = v20;
            v8 = _Block_copy(buf);
          }

          else
          {
            _HKInitializeLogging();
            v24 = *v13;
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543618;
              *&buf[4] = v8;
              *&buf[12] = 2114;
              *&buf[14] = v23;
              _os_log_error_impl(&dword_228986000, v24, OS_LOG_TYPE_ERROR, "%{public}@: change record instantiation failed: %{public}@", buf, 0x16u);
            }

            *buf = MEMORY[0x277D85DD0];
            *&buf[8] = 3221225472;
            *&buf[16] = __104__HDCloudSyncPullChangeRecordOperation__continuationForFetchedRecord_recordID_inMemoryAsset_fetchError___block_invoke_313;
            v35 = &unk_278616D40;
            v36 = v23;
            v8 = _Block_copy(buf);
          }
        }

        else
        {
          *buf = MEMORY[0x277D85DD0];
          *&buf[8] = 3221225472;
          *&buf[16] = __104__HDCloudSyncPullChangeRecordOperation__continuationForFetchedRecord_recordID_inMemoryAsset_fetchError___block_invoke_312;
          v35 = &unk_278620C68;
          v36 = v21;
          v37 = v8;
          v8 = _Block_copy(buf);
          v23 = v36;
        }
      }

      else
      {
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          *&buf[4] = v8;
          *&buf[12] = 2114;
          *&buf[14] = v12;
          _os_log_error_impl(&dword_228986000, v14, OS_LOG_TYPE_ERROR, "%{public}@: Failed to fetch change asset: %{public}@", buf, 0x16u);
        }

        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __104__HDCloudSyncPullChangeRecordOperation__continuationForFetchedRecord_recordID_inMemoryAsset_fetchError___block_invoke;
        v35 = &unk_27861A028;
        v36 = v12;
        v37 = v8;
        v38 = v11;
        v8 = _Block_copy(buf);

        v19 = v36;
      }
    }

    v25 = *(*(a1 + 40) + 8);
    v26 = *(v25 + 40);
    *(v25 + 40) = v8;
  }
}

void __44__HDCloudSyncPullChangeRecordOperation_main__block_invoke_306(uint64_t a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    _HKInitializeLogging();
    v7 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v23 = *(a1 + 32);
      v24 = *(v23 + 128);
      *buf = 138543874;
      v28 = v23;
      v29 = 2114;
      v30 = v24;
      v31 = 2114;
      v32 = v6;
      _os_log_error_impl(&dword_228986000, v7, OS_LOG_TYPE_ERROR, "%{public}@: Failed record fetch for change %{public}@: %{public}@", buf, 0x20u);
    }

    v8 = *(a1 + 32);
    v9 = [v8[16] recordID];
    v26 = 0;
    [(HDCloudSyncPullChangeRecordOperation *)v8 _handlePossibleCacheDiscrepancyWithRecordID:v9 fetchError:v6 errorOut:&v26];
    v10 = v26;
  }

  else
  {
    v14 = *(*(*(a1 + 40) + 8) + 40);
    if (!v14)
    {
      v19 = *(a1 + 32);
      v20 = MEMORY[0x277CCA9B8];
      v21 = [v19[16] recordID];
      v22 = [v20 hk_error:720 format:{@"Failed to fetch requested change record %@", v21}];
      [v19 finishWithSuccess:0 error:v22];

      goto LABEL_7;
    }

    v25 = 0;
    v15 = (*(v14 + 16))(v14, &v25);
    v10 = v25;
    if (v15)
    {
      _HKInitializeLogging();
      v16 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
      {
        v17 = *(a1 + 32);
        v18 = *(v17 + 128);
        *buf = 138543618;
        v28 = v17;
        v29 = 2114;
        v30 = v18;
        _os_log_impl(&dword_228986000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@: Finished record fetch for change %{public}@", buf, 0x16u);
      }

      v11 = *(a1 + 32);
      v12 = 1;
      v13 = 0;
      goto LABEL_6;
    }
  }

  v11 = *(a1 + 32);
  v12 = 0;
  v13 = v10;
LABEL_6:
  [v11 finishWithSuccess:v12 error:v13];

LABEL_7:
}

- (void)_handlePossibleCacheDiscrepancyWithRecordID:(void *)d fetchError:(void *)error errorOut:
{
  v31 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (self)
  {
    v8 = a2;
    configuration = [self configuration];
    cachedCloudState = [configuration cachedCloudState];
    container = [self[14] container];
    containerIdentifier = [container containerIdentifier];
    v26 = 0;
    v13 = [cachedCloudState zoneForRecordID:v8 containerIdentifier:containerIdentifier error:&v26];

    v14 = v26;
    if (v13)
    {
      container2 = [self[14] container];
      configuration2 = [self configuration];
      repository = [configuration2 repository];
      profileIdentifier = [repository profileIdentifier];
      HDDatabaseForContainer(container2, profileIdentifier);
      v19 = v14;
      v21 = v20 = error;

      container3 = [self[14] container];
      [v13 handleCloudError:dCopy operation:self container:container3 database:v21];

      error = v20;
      v14 = v19;
    }

    else
    {
      _HKInitializeLogging();
      v23 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        selfCopy = self;
        v29 = 2114;
        v30 = v14;
        _os_log_error_impl(&dword_228986000, v23, OS_LOG_TYPE_ERROR, "%{public}@: Failed to lookup zone during cache discrepancy reporting %{public}@", buf, 0x16u);
      }
    }

    v24 = dCopy;
    if (v24)
    {
      if (error)
      {
        v25 = v24;
        *error = v24;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }
}

uint64_t __104__HDCloudSyncPullChangeRecordOperation__continuationForFetchedRecord_recordID_inMemoryAsset_fetchError___block_invoke(uint64_t a1, void *a2)
{
  v4 = [*(a1 + 32) domain];
  v5 = [v4 isEqualToString:*MEMORY[0x277CBBF50]];

  if (v5)
  {
    [(HDCloudSyncPullChangeRecordOperation *)*(a1 + 40) _handlePossibleCacheDiscrepancyWithRecordID:*(a1 + 32) fetchError:a2 errorOut:?];
  }

  else
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      if (a2)
      {
        v7 = v6;
        *a2 = v6;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  return 0;
}

uint64_t __104__HDCloudSyncPullChangeRecordOperation__continuationForFetchedRecord_recordID_inMemoryAsset_fetchError___block_invoke_312(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    if (a2)
    {
      v5 = v4;
      *a2 = v4;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  v7 = *(a1 + 32);
  v6 = *(a1 + 40);

  return [(HDCloudSyncPullChangeRecordOperation *)v6 _shouldSucceedWithAssetExtractionError:v7];
}

- (uint64_t)_shouldSucceedWithAssetExtractionError:(uint64_t)error
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (error)
  {
    configuration = [error configuration];
    repository = [configuration repository];
    profile = [repository profile];
    legacyRepositoryProfile = [profile legacyRepositoryProfile];
    v8 = HDCloudSyncKeyValueDomainWithProfile(legacyRepositoryProfile);

    _assetExtractionFailureCountKey = [(HDCloudSyncPullChangeRecordOperation *)error _assetExtractionFailureCountKey];
    v31 = 0;
    v10 = [v8 numberForKey:_assetExtractionFailureCountKey error:&v31];
    v11 = v31;
    v12 = v11;
    v13 = MEMORY[0x277CCC328];
    if (!v10)
    {
      if (v11)
      {
        _HKInitializeLogging();
        v14 = *v13;
        if (os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          errorCopy3 = _assetExtractionFailureCountKey;
          v34 = 2114;
          v35 = v12;
          _os_log_error_impl(&dword_228986000, v14, OS_LOG_TYPE_ERROR, "Failed to get value for %{public}@: %{public}@.", buf, 0x16u);
        }
      }
    }

    integerValue = [v10 integerValue];

    _HKInitializeLogging();
    v16 = *v13;
    v17 = os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR);
    if (integerValue > 1)
    {
      if (v17)
      {
        *buf = 138543618;
        errorCopy3 = error;
        v34 = 2114;
        v35 = v3;
        _os_log_error_impl(&dword_228986000, v16, OS_LOG_TYPE_ERROR, "%{public}@: skip record due to multiple failures to extract archive: %{public}@", buf, 0x16u);
      }

      v29 = v3;
      [(HDCloudSyncPullChangeRecordOperation *)error _setAssetExtractionFailureCount:?];
      decodedSyncAnchorRangeMap = [*(error + 128) decodedSyncAnchorRangeMap];
      v19 = [HDSyncAnchorMap syncAnchorMapWithSyncAnchorRangeMap:decodedSyncAnchorRangeMap];
      store = [*(error + 112) store];
      configuration2 = [error configuration];
      repository2 = [configuration2 repository];
      profile2 = [repository2 profile];
      legacyRepositoryProfile2 = [profile2 legacyRepositoryProfile];
      v30 = 0;
      v25 = [HDSyncAnchorEntity updateSyncAnchorsWithMap:v19 type:3 store:store updatePolicy:1 resetInvalid:0 profile:legacyRepositoryProfile2 error:&v30];
      v26 = v30;

      if (!v25)
      {
        _HKInitializeLogging();
        v27 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          errorCopy3 = error;
          v34 = 2114;
          v35 = v26;
          _os_log_error_impl(&dword_228986000, v27, OS_LOG_TYPE_ERROR, "%{public}@: Failed to update anchors when skipping record due to extraction failures: %{public}@", buf, 0x16u);
        }
      }

      error = 1;
      v3 = v29;
    }

    else
    {
      if (v17)
      {
        *buf = 138543618;
        errorCopy3 = error;
        v34 = 2114;
        v35 = v3;
        _os_log_error_impl(&dword_228986000, v16, OS_LOG_TYPE_ERROR, "%{public}@: zip extraction failed: %{public}@", buf, 0x16u);
      }

      [(HDCloudSyncPullChangeRecordOperation *)error _setAssetExtractionFailureCount:?];
      error = 0;
    }
  }

  return error;
}

uint64_t __104__HDCloudSyncPullChangeRecordOperation__continuationForFetchedRecord_recordID_inMemoryAsset_fetchError___block_invoke_313(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    if (a2)
    {
      v4 = v3;
      *a2 = v3;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  return 0;
}

uint64_t __104__HDCloudSyncPullChangeRecordOperation__continuationForFetchedRecord_recordID_inMemoryAsset_fetchError___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v81[2] = *MEMORY[0x277D85DE8];
  CFAbsoluteTimeGetCurrent();
  v3 = MEMORY[0x277CCC328];
  v4 = os_signpost_id_make_with_pointer(*MEMORY[0x277CCC328], *(a1 + 32));
  _HKInitializeLogging();
  v5 = *v3;
  if (os_signpost_enabled(v5))
  {
    v6 = v5;
    v7 = v6;
    if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
    {
      v8 = [*(a1 + 40) configuration];
      v9 = [v8 descriptionForSignpost];
      *buf = 138543362;
      *&buf[4] = v9;
      _os_signpost_emit_with_name_impl(&dword_228986000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v4, "cloud-sync-persist-asset", "%{public}@", buf, 0xCu);
    }
  }

  v11 = *(a1 + 40);
  v10 = *(a1 + 48);
  v12 = [*(a1 + 32) protocolVersion];
  v13 = v10;
  if (v11)
  {
    _HKInitializeLogging();
    v14 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = v11;
      _os_log_impl(&dword_228986000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: persist asset archive", buf, 0xCu);
    }

    v15 = [v11[14] store];
    v16 = [v15 syncStoreForEpoch:{objc_msgSend(v11[15], "baselineEpoch")}];

    if ([v16 protocolVersion] >= v12)
    {
      v20 = [v16 syncStoreForProtocolVersion:v12];

      v16 = v20;
    }

    else
    {
      _HKInitializeLogging();
      v17 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
      {
        v18 = v17;
        v19 = [v16 protocolVersion];
        *buf = 138543874;
        *&buf[4] = v11;
        *&buf[12] = 2048;
        *&buf[14] = v12;
        *&buf[22] = 2048;
        v73 = v19;
        _os_log_impl(&dword_228986000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@: Change record has protocol version %ld, which is later than store protocol version %ld. Attempting pull and will re-ingest upon upgrade.", buf, 0x20u);
      }
    }

    v21 = [v13 numberOfEntriesWithError:0];
    v22 = v21;
    if (v21)
    {
      v23 = [MEMORY[0x277CCAC48] discreteProgressWithTotalUnitCount:{objc_msgSend(v21, "integerValue")}];
      if (v23)
      {
        v24 = [v11 progress];
        [v24 addChild:v23 withPendingUnitCount:100];
      }
    }

    else
    {
      v23 = 0;
    }

    v68 = 0;
    v69 = &v68;
    v70 = 0x2020000000;
    v71 = 1;
    v62 = 0;
    v63 = &v62;
    v64 = 0x3032000000;
    v65 = __Block_byref_object_copy__330;
    v66 = __Block_byref_object_dispose__331;
    v67 = 0;
    v61[0] = 0;
    v61[1] = v61;
    v61[2] = 0x2020000000;
    v61[3] = 0;
    v25 = MEMORY[0x277CBEB98];
    v81[0] = objc_opt_class();
    v81[1] = objc_opt_class();
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v81 count:2];
    v27 = [v25 setWithArray:v26];

    v28 = v63 + 5;
    obj = v63[5];
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __90__HDCloudSyncPullChangeRecordOperation__persistFetchedArchiveAsset_protocolVersion_error___block_invoke;
    v73 = &unk_278620D08;
    v74 = v11;
    v78 = &v62;
    v29 = v27;
    v75 = v29;
    v79 = &v68;
    v30 = v16;
    v76 = v30;
    v80 = v61;
    v31 = v23;
    v77 = v31;
    LODWORD(v11) = [v13 enumerateEntriesWithError:&obj block:buf];
    objc_storeStrong(v28, obj);
    *(v69 + 24) = v11;
    if (v11)
    {
      v32 = 0;
    }

    else
    {
      v33 = v63[5];
      v32 = v33;
      if (v33)
      {
        v34 = v33;
      }
    }

    _Block_object_dispose(v61, 8);
    _Block_object_dispose(&v62, 8);

    _Block_object_dispose(&v68, 8);
  }

  else
  {
    v32 = 0;
  }

  v35 = v32;
  _HKInitializeLogging();
  v36 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_INFO))
  {
    v37 = *(a1 + 32);
    v38 = *(a1 + 40);
    v39 = v36;
    CFAbsoluteTimeGetCurrent();
    v40 = HKDiagnosticStringFromDuration();
    *buf = 138543874;
    *&buf[4] = v38;
    *&buf[12] = 2112;
    *&buf[14] = v37;
    *&buf[22] = 2114;
    v73 = v40;
    _os_log_impl(&dword_228986000, v39, OS_LOG_TYPE_INFO, "%{public}@: persisted %@ in %{public}@", buf, 0x20u);
  }

  _HKInitializeLogging();
  v41 = *MEMORY[0x277CCC328];
  if (os_signpost_enabled(*MEMORY[0x277CCC328]))
  {
    v42 = v41;
    v43 = v42;
    if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v42))
    {
      v44 = [*(a1 + 40) configuration];
      v45 = [v44 descriptionForSignpost];
      *buf = 67109378;
      *&buf[4] = v11;
      *&buf[8] = 2114;
      *&buf[10] = v45;
      _os_signpost_emit_with_name_impl(&dword_228986000, v43, OS_SIGNPOST_INTERVAL_END, v4, "cloud-sync-persist-asset", "success=%{BOOL}d, %{public}@", buf, 0x12u);
    }
  }

  if (!v11)
  {
    if (v35)
    {
      v35 = v35;
    }

    else
    {
      v35 = [MEMORY[0x277CCA9B8] hk_error:122 format:@"Asset extraction failed without producing an error."];
      if (!v35)
      {
LABEL_46:
        v55 = [(HDCloudSyncPullChangeRecordOperation *)*(a1 + 40) _shouldSucceedWithAssetExtractionError:v35];
        goto LABEL_47;
      }
    }

    if (v59)
    {
      v56 = v35;
      *v59 = v35;
    }

    else
    {
      _HKLogDroppedError();
    }

    goto LABEL_46;
  }

  v47 = *(a1 + 40);
  v46 = (a1 + 40);
  [(HDCloudSyncPullChangeRecordOperation *)v47 _setAssetExtractionFailureCount:?];
  v48 = *v46;
  if (*v46)
  {
    v49 = [*v46 profile];
    v50 = HDCloudSyncKeyValueDomainWithProfile(v49);

    _HKInitializeLogging();
    v51 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      *&buf[4] = v48;
      _os_log_impl(&dword_228986000, v51, OS_LOG_TYPE_INFO, "%{public}@: Recording pull operation applied changes", buf, 0xCu);
    }

    v62 = 0;
    v52 = [v50 setNumber:MEMORY[0x277CBEC38] forKey:@"HDCloudSyncHasPullAppliedChange" error:&v62];
    v53 = v62;
    if ((v52 & 1) == 0)
    {
      _HKInitializeLogging();
      v54 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        *&buf[4] = v53;
        _os_log_error_impl(&dword_228986000, v54, OS_LOG_TYPE_ERROR, "Failed to record pull operation applied changes: %{public}@.", buf, 0xCu);
      }
    }
  }

  v55 = 1;
LABEL_47:

  return v55;
}

- (void)_setAssetExtractionFailureCount:(void *)count
{
  v18 = *MEMORY[0x277D85DE8];
  if (count)
  {
    configuration = [count configuration];
    repository = [configuration repository];
    profile = [repository profile];
    legacyRepositoryProfile = [profile legacyRepositoryProfile];
    v8 = HDCloudSyncKeyValueDomainWithProfile(legacyRepositoryProfile);

    _assetExtractionFailureCountKey = [(HDCloudSyncPullChangeRecordOperation *)count _assetExtractionFailureCountKey];
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
    v13 = 0;
    LOBYTE(repository) = [v8 setNumber:v10 forKey:_assetExtractionFailureCountKey error:&v13];
    v11 = v13;

    if ((repository & 1) == 0)
    {
      _HKInitializeLogging();
      v12 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v15 = _assetExtractionFailureCountKey;
        v16 = 2114;
        v17 = v11;
        _os_log_error_impl(&dword_228986000, v12, OS_LOG_TYPE_ERROR, "Failed to set value for %{public}@: %{public}@.", buf, 0x16u);
      }
    }
  }
}

uint64_t __103__HDCloudSyncPullChangeRecordOperation__zipArchiveExtractorForChangeRecord_assetContentInMemory_error___block_invoke(uint64_t a1, void *a2)
{
  *&v86[13] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (*(a1 + 56) == 1)
  {
    if (!v5)
    {
      v36 = 0;
      goto LABEL_58;
    }

    v6 = [HDCloudSyncChangeRecord changesetArchiveContentDataForCKRecord:v4 error:a2];
    if (v6)
    {
      v7 = v6;
      _HKInitializeLogging();
      v8 = MEMORY[0x277CCC328];
      v9 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
      {
        v10 = v9;
        *buf = 138543618;
        v84 = v5;
        v85 = 2048;
        *v86 = [v7 length];
        _os_log_impl(&dword_228986000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: fetched asset data size (%lu)", buf, 0x16u);
      }

      if ([v7 length] <= 0x40000)
      {
        v39 = objc_msgSend_copy(v7);
      }

      else
      {
        v78 = [MEMORY[0x277CCAD78] UUID];
        v11 = [v78 UUIDString];
        objc_opt_self();
        v12 = objc_alloc_init(MEMORY[0x277CCAA00]);
        v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"syncarchive-%@", v11];
        v77 = v11;

        v14 = [v12 temporaryDirectory];
        v75 = v13;
        v15 = [v14 URLByAppendingPathComponent:v13];
        v16 = [v15 URLByAppendingPathExtension:@"zip"];

        _HKInitializeLogging();
        v17 = *v8;
        if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEBUG))
        {
          v54 = v17;
          v55 = [v16 path];
          *buf = 138543362;
          v84 = v55;
          _os_log_debug_impl(&dword_228986000, v54, OS_LOG_TYPE_DEBUG, "Creating asset file %{public}@", buf, 0xCu);
        }

        v18 = [v16 path];
        v19 = [v12 createFileAtPath:v18 contents:0 attributes:0];

        v76 = v12;
        if (v19)
        {
          v80 = 0;
          v20 = [MEMORY[0x277CCA9F8] fileHandleForUpdatingURL:v16 error:&v80];
          v21 = v80;
          v22 = v21;
          if (v20)
          {
            v73 = v21;
            if (fcntl([v20 fileDescriptor], 48, 1))
            {
              _HKInitializeLogging();
              v23 = *MEMORY[0x277CCC328];
              if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
              {
                v62 = v23;
                v63 = [v16 path];
                v64 = v12;
                v65 = *__error();
                v66 = __error();
                v67 = strerror(*v66);
                *buf = 138543874;
                v84 = v63;
                v85 = 1024;
                *v86 = v65;
                v12 = v64;
                v86[2] = 2082;
                *&v86[3] = v67;
                _os_log_error_impl(&dword_228986000, v62, OS_LOG_TYPE_ERROR, "Error setting F_NOCACHE on file at %{public}@ failed (%d): %{public}s", buf, 0x1Cu);
              }
            }

            v24 = *MEMORY[0x277CCA198];
            v25 = *MEMORY[0x277CCA180];
            v81[0] = *MEMORY[0x277CCA1B0];
            v81[1] = v25;
            v82[0] = v24;
            v82[1] = &unk_283CB2178;
            v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v82 forKeys:v81 count:2];
            v27 = [v16 path];
            v79 = 0;
            v74 = v26;
            v28 = [v12 setAttributes:v26 ofItemAtPath:v27 error:&v79];
            v29 = v79;

            if (v28)
            {
              v30 = [v16 path];
              v31 = unlink([v30 fileSystemRepresentation]);

              if (v31)
              {
                _HKInitializeLogging();
                v32 = *MEMORY[0x277CCC328];
                if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
                {
                  v68 = v32;
                  v69 = [v16 path];
                  v70 = *__error();
                  v71 = __error();
                  v72 = strerror(*v71);
                  *buf = 138543874;
                  v84 = v69;
                  v85 = 1024;
                  *v86 = v70;
                  v86[2] = 2082;
                  *&v86[3] = v72;
                  _os_log_error_impl(&dword_228986000, v68, OS_LOG_TYPE_ERROR, "Error unlinking file at %{public}@ failed (%d): %{public}s", buf, 0x1Cu);
                }
              }

              v33 = v20;
            }

            else
            {
              v49 = MEMORY[0x277CCACA8];
              v50 = [v16 path];
              v51 = [v49 stringWithFormat:@"Error setting protection class for %@", v50];

              v52 = [MEMORY[0x277CCA9B8] hk_error:102 description:v51 underlyingError:v29];
              if (v52)
              {
                if (a2)
                {
                  v53 = v52;
                  *a2 = v52;
                }

                else
                {
                  _HKLogDroppedError();
                }
              }

              v33 = 0;
            }

            v22 = v73;
          }

          else
          {
            v44 = [v16 path];
            [v12 removeItemAtPath:v44 error:0];

            v45 = MEMORY[0x277CCACA8];
            v46 = [v16 path];
            v47 = [v45 stringWithFormat:@"Failed to create fileHandle at %@", v46];

            v74 = v47;
            v29 = [MEMORY[0x277CCA9B8] hk_error:102 description:v47 underlyingError:v22];
            if (v29)
            {
              if (a2)
              {
                v48 = v29;
                *a2 = v29;
              }

              else
              {
                _HKLogDroppedError();
              }
            }

            v33 = 0;
          }
        }

        else
        {
          v40 = MEMORY[0x277CCA9B8];
          v41 = [v16 path];
          v42 = [v40 hk_error:102 format:{@"Error creating file at %@", v41}];

          v20 = v42;
          if (v20)
          {
            if (a2)
            {
              v43 = v20;
              v33 = 0;
              *a2 = v20;
            }

            else
            {
              _HKLogDroppedError();
              v33 = 0;
            }

            v22 = v20;
          }

          else
          {
            v22 = 0;
            v33 = 0;
          }
        }

        v56 = v5[13];
        v5[13] = v33;

        v57 = v5[13];
        if (!v57)
        {
          v36 = 0;
          v37 = v7;
          goto LABEL_57;
        }

        [v57 writeData:v7];
        [v5[13] fileDescriptor];
        v39 = mmapFileDescriptor();
      }

      v37 = v39;

      if (v37)
      {
        if ([v37 length])
        {
          v36 = [objc_alloc(MEMORY[0x277CCDE88]) initWithData:v37];
LABEL_57:

          goto LABEL_58;
        }

        v58 = [MEMORY[0x277CCACA8] stringWithFormat:@"has data size (%lu)", objc_msgSend(v37, "length")];
      }

      else
      {
        v58 = @"is nil";
      }

      [MEMORY[0x277CCA9B8] hk_assignError:a2 code:3 format:{@"cloud sync archive data %@", v58}];
    }

    else
    {
      v37 = 0;
    }

    v36 = 0;
    goto LABEL_57;
  }

  v34 = v4;
  if (v5)
  {
    v35 = [HDCloudSyncChangeRecord changesetArchiveFileHandleForCKRecord:v34 error:a2];
    if (v35)
    {
      v36 = [objc_alloc(MEMORY[0x277CCDE88]) initWithFileHandle:v35];
    }

    else
    {
      v38 = [HDCloudSyncChangeRecord changesetArchiveURLForCKRecord:v34 error:a2];
      if (v38)
      {
        v36 = [objc_alloc(MEMORY[0x277CCDE88]) initWithURL:v38];
      }

      else
      {
        v36 = 0;
      }
    }
  }

  else
  {
    v36 = 0;
  }

LABEL_58:
  v59 = *(*(a1 + 48) + 8);
  v60 = *(v59 + 40);
  *(v59 + 40) = v36;

  return 1;
}

void __90__HDCloudSyncPullChangeRecordOperation__persistFetchedArchiveAsset_protocolVersion_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a2;
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = v5;
    v8 = [v4 pathname];
    *buf = 138543618;
    *&buf[4] = v6;
    *&buf[12] = 2114;
    *&buf[14] = v8;
    _os_log_impl(&dword_228986000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: persist change set file %{public}@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v24 = __Block_byref_object_copy__330;
  v25 = __Block_byref_object_dispose__331;
  v26 = 0;
  v9 = *(*(a1 + 64) + 8);
  obj = *(v9 + 40);
  v10 = v4;
  v21 = *(a1 + 40);
  v11 = HKWithAutoreleasePool();
  objc_storeStrong((v9 + 40), obj);
  if (v11)
  {
    v12 = *(*(a1 + 64) + 8);
    v20 = *(v12 + 40);
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __90__HDCloudSyncPullChangeRecordOperation__persistFetchedArchiveAsset_protocolVersion_error___block_invoke_337;
    v17 = &unk_278620CE0;
    v18 = *(a1 + 32);
    v19 = *(a1 + 48);
    v13 = HKWithAutoreleasePool();
    objc_storeStrong((v12 + 40), v20);
    *(*(*(a1 + 72) + 8) + 24) = v13;
  }

  [*(a1 + 56) setCompletedUnitCount:{++*(*(*(a1 + 80) + 8) + 24), v14, v15, v16, v17, v18}];

  _Block_object_dispose(buf, 8);
}

BOOL __90__HDCloudSyncPullChangeRecordOperation__persistFetchedArchiveAsset_protocolVersion_error___block_invoke_335(void *a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v18 = 0;
  v3 = [v2 dataWithError:&v18];
  v4 = v18;
  if (v3)
  {
    v5 = a1[6];
    v17 = 0;
    v6 = [MEMORY[0x277CCAAC8] hk_unarchivedObjectOfClasses:v5 forKey:@"changes" data:v3 error:&v17];
    v7 = v17;
    v8 = *(a1[7] + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v6;

    v10 = *(*(a1[7] + 8) + 40);
    v11 = v10 != 0;
    if (!v10)
    {
      _HKInitializeLogging();
      v12 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        v16 = a1[5];
        *buf = 138543618;
        v20 = v16;
        v21 = 2114;
        v22 = v7;
        _os_log_error_impl(&dword_228986000, v12, OS_LOG_TYPE_ERROR, "%{public}@: Failed to unarchive changes: %{public}@", buf, 0x16u);
      }
    }
  }

  else
  {
    _HKInitializeLogging();
    v13 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v15 = a1[5];
      *buf = 138543618;
      v20 = v15;
      v21 = 2114;
      v22 = v4;
      _os_log_error_impl(&dword_228986000, v13, OS_LOG_TYPE_ERROR, "%{public}@: Failed to extract data from archive: %{public}@", buf, 0x16u);
    }

    v11 = 0;
  }

  return v11;
}

uint64_t __90__HDCloudSyncPullChangeRecordOperation__persistFetchedArchiveAsset_protocolVersion_error___block_invoke_337(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 40);
  v5 = *(*(*(a1 + 48) + 8) + 40);
  v6 = *(a1 + 32);
  v25 = 0;
  v7 = v5;
  v8 = v4;
  if (v6)
  {
    v9 = [v6 configuration];
    v10 = [v9 repository];
    v11 = [v10 profile];
    v12 = [v11 legacyRepositoryProfile];

    v13 = objc_alloc_init(HDMutableDatabaseTransactionContext);
    [(HDMutableDatabaseTransactionContext *)v13 setJournalType:2];
    [(HDMutableDatabaseTransactionContext *)v13 setCacheScope:1];
    v14 = [v6 configuration];
    v15 = [v14 accessibilityAssertion];

    if (v15)
    {
      [(HDMutableDatabaseTransactionContext *)v13 addAccessibilityAssertion:v15];
    }

    v16 = [v12 database];
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __70__HDCloudSyncPullChangeRecordOperation__applySyncChanges_store_error___block_invoke;
    v27 = &unk_27861A218;
    v28 = v12;
    v29 = v7;
    v30 = v6;
    v31 = v8;
    v17 = v12;
    v6 = [v16 performWithTransactionContext:v13 error:&v25 block:buf];
  }

  v18 = v25;
  if ((v6 & 1) == 0)
  {
    _HKInitializeLogging();
    v19 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v23 = *(a1 + 32);
      v24 = *(a1 + 40);
      *buf = 138543874;
      *&buf[4] = v23;
      *&buf[12] = 2114;
      *&buf[14] = v24;
      *&buf[22] = 2114;
      v27 = v18;
      _os_log_error_impl(&dword_228986000, v19, OS_LOG_TYPE_ERROR, "%{public}@: Error applying sync changes to store %{public}@ with error %{public}@", buf, 0x20u);
    }

    **(a1 + 56) = 1;
    v20 = v18;
    if (v20)
    {
      if (a2)
      {
        v21 = v20;
        *a2 = v20;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  return v6;
}

uint64_t __70__HDCloudSyncPullChangeRecordOperation__applySyncChanges_store_error___block_invoke(id *a1, uint64_t a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [a1[4] syncEngine];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = a1[5];
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v12 = a1[4];
        v13 = v3;
        v14 = a1[7];
        v9 = HKWithAutoreleasePool();

        if (!v9)
        {
          v10 = 0;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 1;
LABEL_11:

  return v10;
}

uint64_t __70__HDCloudSyncPullChangeRecordOperation__applySyncChanges_store_error___block_invoke_2(uint64_t *a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  if ([a1[4] syncEntityClassForProfile:a1[5]])
  {
    v4 = a1[4];
    v5 = a1[7];
    v6 = a1[8];
    v17 = 0;
    v7 = [v5 applySyncChange:v4 forStore:v6 error:&v17];
    v8 = v17;
    if ((v7 & 1) == 0)
    {
      _HKInitializeLogging();
      v9 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        v16 = a1[4];
        *buf = 138543618;
        v19 = v16;
        v20 = 2114;
        v21 = v8;
        _os_log_error_impl(&dword_228986000, v9, OS_LOG_TYPE_ERROR, "failed to apply request change %{public}@: %{public}@", buf, 0x16u);
      }

      v10 = v8;
      if (v10)
      {
        if (a2)
        {
          v11 = v10;
          *a2 = v10;
        }

        else
        {
          _HKLogDroppedError();
        }
      }
    }
  }

  else
  {
    _HKInitializeLogging();
    v12 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      v13 = a1[6];
      v14 = a1[4];
      *buf = 138543618;
      v19 = v13;
      v20 = 2114;
      v21 = v14;
      _os_log_impl(&dword_228986000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: cannot apply change %{public}@ because it is for an unknown (possibly future) sync entity.", buf, 0x16u);
    }

    return 1;
  }

  return v7;
}

- (id)_assetExtractionFailureCountKey
{
  v1 = MEMORY[0x277CCACA8];
  storeRecord = [*(self + 112) storeRecord];
  storeIdentifier = [storeRecord storeIdentifier];
  uUIDString = [storeIdentifier UUIDString];
  v5 = [v1 stringWithFormat:@"%@%@", @"FailedAssetExtractionCount-", uUIDString];

  return v5;
}

@end