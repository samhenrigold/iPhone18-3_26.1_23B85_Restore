@interface HDDaemonSyncEngine
- (BOOL)applyAcknowledgedAnchorMap:(id)map forStore:(id)store resetNext:(BOOL)next resetInvalid:(BOOL)invalid error:(id *)error;
- (BOOL)applySyncChange:(id)change forStore:(id)store error:(id *)error;
- (BOOL)getReceivedAnchorMap:(id)map forStore:(id)store error:(id *)error;
- (BOOL)performSyncSession:(id)session accessibilityAssertion:(id)assertion error:(id *)error;
- (BOOL)updateLocalVersionsForStore:(id)store profile:(id)profile error:(id *)error;
- (HDCodableSyncEntityVersionMap)allSyncEntityVersionsByIdentifier;
- (HDDaemonSyncEngine)initWithProfile:(id)profile;
- (HDSyncAnchorRangeMap)_syncAnchorRangeMapForSession:(uint64_t)session store:(void *)store syncEntities:(void *)entities startingAnchors:(void *)anchors error:(uint64_t)error;
- (id)syncAnchorRangesIfRequiredForSession:(id)session startingAnchors:(id)anchors error:(id *)error;
- (uint64_t)_applySyncChange:(objc_class *)change entity:(void *)entity store:(void *)store error:;
- (uint64_t)_nextSyncAnchorForEntity:(void *)entity session:(uint64_t)session startSyncAnchor:(uint64_t)anchor error:;
- (uint64_t)_singleTransactionApplySyncChange:(uint64_t)change entity:(void *)entity store:(void *)store error:;
- (uint64_t)_validateAnchorsForSyncChange:(void *)change store:(void *)store error:;
- (void)resetAnchorsWithFailedChanges:(id)changes store:(id)store;
- (void)resetStore:(id)store;
@end

@implementation HDDaemonSyncEngine

- (HDDaemonSyncEngine)initWithProfile:(id)profile
{
  profileCopy = profile;
  v12.receiver = self;
  v12.super_class = HDDaemonSyncEngine;
  v5 = [(HDDaemonSyncEngine *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, profileCopy);
    v7 = [HDDaemonSyncEntityManager alloc];
    daemon = [profileCopy daemon];
    v9 = [(HDDaemonSyncEntityManager *)v7 initWithDaemon:daemon];
    entityManager = v6->_entityManager;
    v6->_entityManager = v9;
  }

  return v6;
}

- (HDCodableSyncEntityVersionMap)allSyncEntityVersionsByIdentifier
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__HDDaemonSyncEngine_allSyncEntityVersionsByIdentifier__block_invoke;
  block[3] = &unk_278613968;
  block[4] = self;
  if (_MergedGlobals_221 != -1)
  {
    dispatch_once(&_MergedGlobals_221, block);
  }

  v2 = objc_msgSend_copy(qword_280D67E08);

  return v2;
}

void __55__HDDaemonSyncEngine_allSyncEntityVersionsByIdentifier__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(HDCodableSyncEntityVersionMap);
  v3 = qword_280D67E08;
  qword_280D67E08 = v2;

  v4 = [*(*(a1 + 32) + 16) syncEntitiesByIdentifier];
  [v4 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_210];
}

void __55__HDDaemonSyncEngine_allSyncEntityVersionsByIdentifier__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v9 = objc_alloc_init(HDCodableSyncEntityVersionRange);
  v5 = objc_alloc_init(HDCodableEntityIdentifier);
  -[HDCodableEntityIdentifier setIdentifier:](v5, "setIdentifier:", [v4 entityIdentifier]);
  v6 = [v4 schemaIdentifier];

  [(HDCodableEntityIdentifier *)v5 setSchema:v6];
  v7 = objc_alloc_init(HDCodableSyncVersionRange);
  if (objc_opt_respondsToSelector())
  {
    v8 = [a3 supportedSyncVersionRange];
  }

  else if (objc_opt_respondsToSelector())
  {
    v8 = [a3 currentSyncVersion];
  }

  else
  {
    v8 = 0;
  }

  [(HDCodableSyncVersionRange *)v7 setMinimum:v8];
  [(HDCodableSyncVersionRange *)v7 setCurrent:HDCurrentSyncVersionForSyncEntity(a3)];
  [(HDCodableSyncEntityVersionRange *)v9 setEntityIdentifier:v5];
  [(HDCodableSyncEntityVersionRange *)v9 setVersionRange:v7];
  [qword_280D67E08 addEntityVersionRange:v9];
}

- (BOOL)updateLocalVersionsForStore:(id)store profile:(id)profile error:(id *)error
{
  storeCopy = store;
  profileCopy = profile;
  orderedSyncEntities = [storeCopy orderedSyncEntities];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __64__HDDaemonSyncEngine_updateLocalVersionsForStore_profile_error___block_invoke;
  v19[3] = &unk_278623A30;
  v10 = storeCopy;
  v20 = v10;
  v11 = [orderedSyncEntities hk_filter:v19];

  database = [profileCopy database];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __64__HDDaemonSyncEngine_updateLocalVersionsForStore_profile_error___block_invoke_2;
  v16[3] = &unk_278613218;
  v17 = v11;
  v18 = v10;
  v13 = v10;
  v14 = v11;
  LOBYTE(error) = [(HDHealthEntity *)HDSyncAnchorEntity performWriteTransactionWithHealthDatabase:database error:error block:v16];

  return error;
}

uint64_t __64__HDDaemonSyncEngine_updateLocalVersionsForStore_profile_error___block_invoke(uint64_t a1, void *a2)
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 1;
  }

  v4 = *(a1 + 32);

  return [a2 supportsSyncStore:v4];
}

uint64_t __64__HDDaemonSyncEngine_updateLocalVersionsForStore_profile_error___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = *(a1 + 32);
  v6 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = HDCurrentSyncVersionForSyncEntity(v10);
        v12 = [v10 syncEntityIdentifier];
        v13 = [HDSyncAnchorEntity updateLocalVersion:v11 entityIdentifier:v12 store:*(a1 + 40) transaction:v5 error:a3];

        if (!v13)
        {
          v14 = 0;
          goto LABEL_11;
        }
      }

      v7 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v14 = 1;
LABEL_11:

  return v14;
}

- (uint64_t)_singleTransactionApplySyncChange:(uint64_t)change entity:(void *)entity store:(void *)store error:
{
  v8 = a2;
  entityCopy = entity;
  if (!self)
  {
    v14 = 0;
    goto LABEL_14;
  }

  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__176;
  v36 = __Block_byref_object_dispose__176;
  v37 = 0;
  WeakRetained = objc_loadWeakRetained((self + 8));
  database = [WeakRetained database];
  v31 = 0;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __75__HDDaemonSyncEngine__singleTransactionApplySyncChange_entity_store_error___block_invoke;
  v25[3] = &unk_27862B780;
  v28 = &v38;
  v25[4] = self;
  v26 = v8;
  changeCopy = change;
  v27 = entityCopy;
  v29 = &v32;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __75__HDDaemonSyncEngine__singleTransactionApplySyncChange_entity_store_error___block_invoke_2;
  v19[3] = &unk_27862B7A8;
  v22 = &v38;
  v19[4] = self;
  v20 = v26;
  changeCopy2 = change;
  v21 = v27;
  v23 = &v32;
  v12 = [(HDHealthEntity *)HDDataEntity performWriteTransactionWithHealthDatabase:database error:&v31 block:v25 inaccessibilityHandler:v19];
  v13 = v31;

  if ((v39[3] & 1) == 0)
  {
    v15 = v33[5];
    if (v15)
    {
      if (store)
      {
LABEL_10:
        v16 = v15;
        *store = v15;
        goto LABEL_12;
      }

LABEL_11:
      _HKLogDroppedError();
    }

LABEL_12:

    v14 = 0;
    goto LABEL_13;
  }

  if (!v12)
  {
    v15 = v13;
    if (v15)
    {
      if (store)
      {
        goto LABEL_10;
      }

      goto LABEL_11;
    }

    goto LABEL_12;
  }

  v14 = 1;
LABEL_13:

  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v38, 8);

LABEL_14:
  return v14;
}

uint64_t __75__HDDaemonSyncEngine__singleTransactionApplySyncChange_entity_store_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[9];
  v6 = *(a1[8] + 8);
  obj = *(v6 + 40);
  v7 = [(HDDaemonSyncEngine *)v2 _applySyncChange:v3 entity:v5 store:v4 error:&obj];
  objc_storeStrong((v6 + 40), obj);
  *(*(a1[7] + 8) + 24) = v7;
  return 1;
}

- (uint64_t)_applySyncChange:(objc_class *)change entity:(void *)entity store:(void *)store error:
{
  v52 = *MEMORY[0x277D85DE8];
  v9 = a2;
  entityCopy = entity;
  v11 = entityCopy;
  if (!self)
  {
    goto LABEL_13;
  }

  if (([entityCopy canRecieveSyncObjectsForEntityClass:change] & 1) == 0)
  {
    v27 = MEMORY[0x277CCA9B8];
    v28 = objc_opt_class();
    v29 = NSStringFromClass(v28);
    v30 = NSStringFromClass(change);
    [v27 hk_assignError:store code:1401 format:{@"Ignoring sync objects from %@; syncEntityClass was %@", v29, v30}];

LABEL_13:
    v31 = 0;
    goto LABEL_29;
  }

  v12 = [(HKDaemonTransaction *)HDDaemonTransaction transactionWithOwner:self activityName:@"ApplyChange"];
  WeakRetained = objc_loadWeakRetained((self + 8));
  v45 = 0;
  v14 = [v9 decodedObjectsForProfile:WeakRetained error:&v45];
  v15 = v45;

  if (v14)
  {
    v41 = v12;
    storeCopy = store;
    versionRange = [v9 versionRange];
    v44 = v15;
    v17 = v11;
    v18 = v14;
    v19 = objc_loadWeakRetained((self + 8));
    v20 = [(objc_class *)change receiveSyncObjects:v18 version:versionRange syncStore:v17 profile:v19 error:&v44];

    v21 = v44;
    if (v20 == 1)
    {
      if ([v21 hk_isHealthKitErrorWithCode:1403])
      {
        _HKInitializeLogging();
        v22 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_FAULT))
        {
          *buf = 138543874;
          changeCopy3 = change;
          v48 = 2114;
          v49 = v17;
          v50 = 2114;
          v51 = v21;
          _os_log_fault_impl(&dword_228986000, v22, OS_LOG_TYPE_FAULT, "Client %{public}@ requested a reset of received sync anchor for store %{public}@ with error %{public}@.", buf, 0x20u);
        }

        v23 = objc_loadWeakRetained((self + 8));
        v43 = 0;
        v24 = [HDSyncAnchorEntity resetSyncAnchorsOfType:3 store:v17 profile:v23 error:&v43];
        v25 = v43;

        if (!v24)
        {
          _HKInitializeLogging();
          v26 = *MEMORY[0x277CCC330];
          if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            changeCopy3 = v25;
            _os_log_error_impl(&dword_228986000, v26, OS_LOG_TYPE_ERROR, "Failed to reset sync Anchors %{public}@", buf, 0xCu);
          }
        }

LABEL_18:
        v31 = 0;
LABEL_23:
        v12 = v41;
        store = storeCopy;
        goto LABEL_24;
      }

      v32 = [v21 hk_isHealthKitErrorWithCode:123];
      _HKInitializeLogging();
      v33 = *MEMORY[0x277CCC328];
      v34 = os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR);
      if (v32)
      {
        if (v34)
        {
          *buf = 138543618;
          changeCopy3 = change;
          v48 = 2114;
          v49 = v21;
          _os_log_error_impl(&dword_228986000, v33, OS_LOG_TYPE_ERROR, "Failed to receive sync objects for '%{public}@' because the journal is full: %{public}@", buf, 0x16u);
        }

        goto LABEL_18;
      }

      if (v34)
      {
        *buf = 138543618;
        changeCopy3 = change;
        v48 = 2114;
        v49 = v21;
        _os_log_error_impl(&dword_228986000, v33, OS_LOG_TYPE_ERROR, "Failed to receive sync objects for '%{public}@' with ignorable error: %{public}@", buf, 0x16u);
      }

      v35 = objc_loadWeakRetained((self + 8));
      daemon = [v35 daemon];
      autoBugCaptureReporter = [daemon autoBugCaptureReporter];
      [autoBugCaptureReporter reportApplyDataFailure:change duringSyncFromStore:v17 error:v21];

      v21 = 0;
    }

    v31 = 1;
    goto LABEL_23;
  }

  v31 = 0;
  v21 = v15;
LABEL_24:
  [v12 invalidate];
  v38 = v21;
  if (v38)
  {
    if (store)
    {
      v39 = v38;
      *store = v38;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

LABEL_29:
  return v31;
}

uint64_t __75__HDDaemonSyncEngine__singleTransactionApplySyncChange_entity_store_error___block_invoke_2(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[9];
  v6 = *(a1[8] + 8);
  obj = *(v6 + 40);
  v7 = [(HDDaemonSyncEngine *)v2 _applySyncChange:v3 entity:v5 store:v4 error:&obj];
  objc_storeStrong((v6 + 40), obj);
  *(*(a1[7] + 8) + 24) = v7;
  return 1;
}

- (uint64_t)_validateAnchorsForSyncChange:(void *)change store:(void *)store error:
{
  v7 = a2;
  changeCopy = change;
  if (!self)
  {
    v18 = 0;
    goto LABEL_14;
  }

  WeakRetained = objc_loadWeakRetained((self + 8));
  v10 = [v7 syncEntityClassForProfile:WeakRetained];

  profile = [changeCopy profile];
  v12 = [v7 requiredAnchorMapWithProfile:profile error:store];

  if (!v12)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:store code:1400 description:@"invalid required anchor map"];
LABEL_12:
    v18 = 2;
    goto LABEL_13;
  }

  syncEntityIdentifier = [v10 syncEntityIdentifier];
  v14 = objc_loadWeakRetained((self + 8));
  v15 = [HDSyncAnchorEntity syncAnchorOfType:3 entityIdentifier:syncEntityIdentifier store:changeCopy profile:v14 error:store];

  if ((v15 & 0x8000000000000000) != 0)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:store code:1400 format:{@"invalid last anchor %lld", v15}];
    goto LABEL_12;
  }

  syncAnchorRange = [v7 syncAnchorRange];
  if ((syncAnchorRange & 0x8000000000000000) != 0 || syncAnchorRange > v17)
  {
    v19 = MEMORY[0x277CCA9B8];
    v20 = HDSyncAnchorRangeDescription(syncAnchorRange, v17);
    [v19 hk_assignError:store code:1400 format:{@"invalid anchor range %@", v20}];

    goto LABEL_12;
  }

  if (syncAnchorRange >= v15 || v17 > v15)
  {
    if (syncAnchorRange <= v15)
    {
      v38 = 0;
      v39 = &v38;
      v40 = 0x2020000000;
      v41 = 1;
      v32 = 0;
      v33 = &v32;
      v34 = 0x3032000000;
      v35 = __Block_byref_object_copy__176;
      v36 = __Block_byref_object_dispose__176;
      v37 = 0;
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __64__HDDaemonSyncEngine__validateAnchorsForSyncChange_store_error___block_invoke;
      v27[3] = &unk_27862B7D0;
      v28 = changeCopy;
      selfCopy = self;
      v30 = &v32;
      v31 = &v38;
      [v12 enumerateAnchorsAndEntityIdentifiersWithBlock:v27];
      if (v39[3])
      {
        v18 = 0;
      }

      else
      {
        v24 = v33[5];
        v25 = v24;
        if (v24)
        {
          if (store)
          {
            v26 = v24;
            *store = v25;
          }

          else
          {
            _HKLogDroppedError();
          }
        }

        if (v39[3])
        {
          v18 = 0;
        }

        else
        {
          v18 = 2;
        }
      }

      _Block_object_dispose(&v32, 8);
      _Block_object_dispose(&v38, 8);
      goto LABEL_13;
    }

    v22 = MEMORY[0x277CCA9B8];
    v23 = HDSyncAnchorRangeDescription(syncAnchorRange, v17);
    [v22 hk_assignError:store code:1400 format:{@"unexpected anchor range %@ for %@, last anchor %lld", v23, v10, v15}];

    goto LABEL_12;
  }

  v18 = 1;
LABEL_13:

LABEL_14:
  return v18;
}

void __64__HDDaemonSyncEngine__validateAnchorsForSyncChange_store_error___block_invoke(void *a1, void *a2, int64_t a3, _BYTE *a4)
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a1[4];
  WeakRetained = objc_loadWeakRetained((a1[5] + 8));
  v19 = 0;
  v10 = [HDSyncAnchorEntity syncAnchorOfType:3 entityIdentifier:v7 store:v8 profile:WeakRetained error:&v19];
  v11 = v19;
  v12 = v19;

  if (v10 == -1 && v12 != 0)
  {
    _HKInitializeLogging();
    v17 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v21 = v7;
      _os_log_impl(&dword_228986000, v17, OS_LOG_TYPE_INFO, "Failed to lookup existing anchor for sync entity: %{public}@", buf, 0xCu);
    }

    objc_storeStrong((*(a1[6] + 8) + 40), v11);
    *(*(a1[7] + 8) + 24) = 0;
    goto LABEL_11;
  }

  if (v10 < a3)
  {
    *(*(a1[7] + 8) + 24) = 0;
    v14 = [MEMORY[0x277CCA9B8] hk_error:1400 format:{@"change requires anchor %lld for %@, but we only have %lld", a3, v7, v10}];
    v15 = *(a1[6] + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

LABEL_11:
    *a4 = 1;
  }
}

- (BOOL)applySyncChange:(id)change forStore:(id)store error:(id *)error
{
  v128 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  storeCopy = store;
  v9 = &unk_283CE36F8;
  if ([changeCopy conformsToProtocol:v9])
  {
    Current = CFAbsoluteTimeGetCurrent();
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    v12 = [changeCopy syncEntityClassForProfile:WeakRetained];

    _HKInitializeLogging();
    v13 = MEMORY[0x277CCC328];
    v14 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_INFO))
    {
      v15 = v14;
      syncAnchorRange = [changeCopy syncAnchorRange];
      [changeCopy syncAnchorRange];
      v18 = v17;
      [changeCopy sequenceNumber];
      selfCopy = self;
      v20 = changeCopy;
      v21 = storeCopy;
      v23 = v22 = v9;
      *buf = 138544130;
      v24 = v12;
      v119 = v12;
      v120 = 2048;
      v121 = syncAnchorRange;
      v122 = 2048;
      v123 = v18;
      v13 = MEMORY[0x277CCC328];
      v124 = 2114;
      v125 = v23;
      _os_log_impl(&dword_228986000, v15, OS_LOG_TYPE_INFO, "Apply Sync change for %{public}@ over range (%lld, %lld) with sequence %{public}@", buf, 0x2Au);

      v9 = v22;
      storeCopy = v21;
      changeCopy = v20;
      self = selfCopy;

      v14 = *v13;
    }

    else
    {
      v24 = v12;
    }

    v28 = os_signpost_id_make_with_pointer(v14, self);
    _HKInitializeLogging();
    v29 = *v13;
    if (os_signpost_enabled(*v13))
    {
      v30 = v29;
      v31 = v30;
      if (v28 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v30))
      {
        selfCopy2 = self;
        v32 = v13;
        syncAnchorRange2 = [changeCopy syncAnchorRange];
        [changeCopy syncAnchorRange];
        v34 = v28;
        v35 = changeCopy;
        v36 = storeCopy;
        v37 = v9;
        v39 = v38;
        sequenceNumber = [v35 sequenceNumber];
        integerValue = [sequenceNumber integerValue];
        *buf = 138544130;
        v119 = v24;
        v120 = 2048;
        v121 = syncAnchorRange2;
        v13 = v32;
        self = selfCopy2;
        v122 = 2048;
        v123 = v39;
        v9 = v37;
        storeCopy = v36;
        changeCopy = v35;
        v28 = v34;
        v124 = 2048;
        v125 = integerValue;
        _os_signpost_emit_with_name_impl(&dword_228986000, v31, OS_SIGNPOST_INTERVAL_BEGIN, v34, "apply-sync-change", "syncEntityClass=%{public}@, start=%lld, end=%lld, sequence=%ld", buf, 0x2Au);
      }
    }

    if (v24)
    {
      v42 = v24;
      if (((objc_opt_respondsToSelector() & 1) == 0 || [(objc_class *)v24 supportsSyncStore:storeCopy]) && ([storeCopy canRecieveSyncObjectsForEntityClass:v24]& 1) != 0)
      {
        v109 = v9;
        v43 = changeCopy;
        v44 = storeCopy;
        v45 = v44;
        if (!self)
        {
LABEL_21:

          v27 = 0;
          v9 = v109;
          goto LABEL_81;
        }

        if ([v44 shouldEnforceSequenceOrdering])
        {
          v46 = objc_loadWeakRetained(&self->_profile);
          v47 = [v43 syncEntityClassForProfile:v46];

          sequenceNumber2 = [v43 sequenceNumber];
          if (sequenceNumber2)
          {
            v49 = v47;
            v50 = [v45 expectedSequenceNumberForSyncEntityClass:v47];
            integerValue2 = [sequenceNumber2 integerValue];
            if (integerValue2)
            {
              if (v50 != integerValue2)
              {
                [MEMORY[0x277CCA9B8] hk_assignError:error code:1402 format:{@"Received out-of-order message for %@: Expected sequence number %ld but received %ld", v49, v50, integerValue2}];

                goto LABEL_21;
              }
            }

            else if (v50)
            {
              _HKInitializeLogging();
              log = *MEMORY[0x277CCC328];
              if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_INFO))
              {
                *buf = 138543618;
                v119 = v49;
                v120 = 2048;
                v121 = v50;
                _os_log_impl(&dword_228986000, log, OS_LOG_TYPE_INFO, "Received restart of sequence for %{public}@ (expecting %ld)", buf, 0x16u);
              }
            }
          }
        }

        loga = storeCopy;

        v56 = objc_loadWeakRetained(&self->_profile);
        database = [v56 database];
        v114[0] = MEMORY[0x277D85DD0];
        v114[1] = 3221225472;
        v114[2] = __53__HDDaemonSyncEngine_applySyncChange_forStore_error___block_invoke;
        v114[3] = &unk_27861D320;
        v117 = v42;
        v58 = v45;
        v115 = v58;
        v59 = v43;
        v116 = v59;
        v60 = [(HDHealthEntity *)HDSyncAnchorEntity performWriteTransactionWithHealthDatabase:database error:error block:v114];

        if (!v60)
        {
          v27 = 0;
          storeCopy = loga;
          v9 = v109;
LABEL_80:

          goto LABEL_81;
        }

        if ([v59 isSpeculative])
        {
          storeCopy = loga;
          v9 = v109;
          if (([v58 supportsSpeculativeChangesForSyncEntityClass:v42]& 1) == 0)
          {
            [MEMORY[0x277CCA9B8] hk_assignError:error code:100 format:{@"%@ does not support speculative changes", v42}];
LABEL_44:
            v27 = 0;
            goto LABEL_80;
          }

LABEL_40:
          if (_os_feature_enabled_impl())
          {
            if (([(HDDaemonSyncEngine *)self _singleTransactionApplySyncChange:v59 entity:v42 store:v58 error:error]& 1) == 0)
            {
              goto LABEL_42;
            }
          }

          else if (([(HDDaemonSyncEngine *)self _applySyncChange:v59 entity:v42 store:v58 error:error]& 1) == 0)
          {
LABEL_42:
            _HKInitializeLogging();
            v65 = *MEMORY[0x277CCC328];
            if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_228986000, v65, OS_LOG_TYPE_INFO, "Failed to apply object collection.", buf, 2u);
            }

            goto LABEL_44;
          }

          _HKInitializeLogging();
          v66 = *MEMORY[0x277CCC328];
          v105 = v58;
          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_INFO))
          {
            v67 = v66;
            syncAnchorRange3 = [v59 syncAnchorRange];
            [v59 syncAnchorRange];
            v70 = v69;
            sequenceNumber3 = [v59 sequenceNumber];
            v72 = CFAbsoluteTimeGetCurrent();
            *buf = 138544386;
            v119 = v42;
            v120 = 2048;
            v121 = syncAnchorRange3;
            storeCopy = loga;
            v122 = 2048;
            v123 = v70;
            v124 = 2114;
            v125 = sequenceNumber3;
            v126 = 2048;
            v127 = v72 - Current;
            _os_log_impl(&dword_228986000, v67, OS_LOG_TYPE_INFO, "Applied sync change for %{public}@ over range (%lld, %lld) sequence %{public}@ in %.3f seconds", buf, 0x34u);

            v58 = v105;
          }

          _HKInitializeLogging();
          v73 = *MEMORY[0x277CCC328];
          if (os_signpost_enabled(*MEMORY[0x277CCC328]))
          {
            v74 = v73;
            v75 = v74;
            if (v28 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v74))
            {
              syncAnchorRange4 = [v59 syncAnchorRange];
              [v59 syncAnchorRange];
              v78 = v77;
              sequenceNumber4 = [v59 sequenceNumber];
              integerValue3 = [sequenceNumber4 integerValue];
              *buf = 138544130;
              v119 = v42;
              v120 = 2048;
              v121 = syncAnchorRange4;
              storeCopy = loga;
              v122 = 2048;
              v123 = v78;
              v124 = 2048;
              v125 = integerValue3;
              _os_signpost_emit_with_name_impl(&dword_228986000, v75, OS_SIGNPOST_INTERVAL_END, v28, "apply-sync-change", "syncEntityClass=%{public}@, start=%lld, end=%lld, sequence=%ld", buf, 0x2Au);

              v58 = v105;
            }
          }

          sequenceNumber5 = [v59 sequenceNumber];
          done = [v59 done];
          if (sequenceNumber5 && ((v83 = done, ([v59 done] & 1) == 0) ? (v84 = objc_msgSend(sequenceNumber5, "integerValue") + 1) : (v84 = 0), -[NSObject setExpectedSequenceNumber:forSyncEntityClass:](v58, "setExpectedSequenceNumber:forSyncEntityClass:", v84, v42), !v83) || (objc_msgSend(v59, "isSpeculative") & 1) != 0)
          {
            v27 = 1;
            v9 = v109;
          }

          else
          {
            v104 = sequenceNumber5;
            [v59 syncAnchorRange];
            v90 = v89;
            syncEntityIdentifier = [(objc_class *)v42 syncEntityIdentifier];
            v92 = objc_loadWeakRetained(&self->_profile);
            errorCopy = error;
            v111 = v90;
            v93 = [HDSyncAnchorEntity updateSyncAnchor:v90 type:3 entityIdentifier:syncEntityIdentifier store:v58 updatePolicy:1 profile:v92 error:errorCopy];

            if (v93)
            {
              v94 = [v59 versionRange] >> 32;
              v9 = v109;
              sequenceNumber5 = v104;
              if (HDCurrentSyncVersionForSyncEntity(v42) >= v94)
              {
                syncEntityIdentifier2 = [(objc_class *)v42 syncEntityIdentifier];
                selfCopy3 = self;
                v97 = objc_loadWeakRetained(&self->_profile);
                v112 = 0;
                v98 = [HDSyncAnchorEntity updateSyncAnchor:v111 type:5 entityIdentifier:syncEntityIdentifier2 store:v105 updatePolicy:1 profile:v97 error:&v112];
                v99 = v112;

                if (!v98)
                {
                  _HKInitializeLogging();
                  v100 = *MEMORY[0x277CCC328];
                  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138543874;
                    v119 = selfCopy3;
                    v120 = 2114;
                    v121 = v42;
                    v122 = 2114;
                    v123 = v99;
                    _os_log_error_impl(&dword_228986000, v100, OS_LOG_TYPE_ERROR, "%{public}@: Failed to update validated anchor for %{public}@: %{public}@", buf, 0x20u);
                  }
                }
              }

              v27 = 1;
              storeCopy = loga;
            }

            else
            {
              _HKInitializeLogging();
              v101 = *MEMORY[0x277CCC328];
              storeCopy = loga;
              v9 = v109;
              sequenceNumber5 = v104;
              if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_228986000, v101, OS_LOG_TYPE_INFO, "failed to write received anchor", buf, 2u);
              }

              v27 = 0;
            }
          }

          goto LABEL_80;
        }

        v113 = 0;
        v61 = v58;
        v62 = [(HDDaemonSyncEngine *)self _validateAnchorsForSyncChange:v59 store:v58 error:&v113];
        v63 = v113;
        storeCopy = loga;
        if (v62 == 1)
        {
          v27 = 1;
        }

        else
        {
          v64 = v62 == 2;
          v58 = v61;
          if (!v64 || ([v61 shouldContinueAfterAnchorValidationError:v63]& 1) != 0)
          {

            v9 = v109;
            goto LABEL_40;
          }

          v86 = v63;
          v87 = v86;
          if (v86)
          {
            if (error)
            {
              v88 = v86;
              *error = v87;
            }

            else
            {
              _HKLogDroppedError();
            }
          }

          v27 = 0;
        }

        v9 = v109;
        goto LABEL_80;
      }

      _HKInitializeLogging();
      v52 = *v13;
      if (os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
      {
        v53 = v52;
        syncEntityIdentifier3 = [(objc_class *)v24 syncEntityIdentifier];
        *buf = 138543874;
        v119 = v24;
        v120 = 2114;
        v121 = syncEntityIdentifier3;
        v122 = 2114;
        v123 = storeCopy;
        _os_log_error_impl(&dword_228986000, v53, OS_LOG_TYPE_ERROR, "Ignoring sync change with sync entity class %{public}@ (%{public}@), unsupported by %{public}@", buf, 0x20u);

LABEL_57:
      }
    }

    else
    {
      _HKInitializeLogging();
      v55 = *v13;
      if (os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
      {
        v53 = v55;
        syncEntityIdentifier4 = [changeCopy syncEntityIdentifier];
        *buf = 138543362;
        v119 = syncEntityIdentifier4;
        _os_log_error_impl(&dword_228986000, v53, OS_LOG_TYPE_ERROR, "No sync entity available for change with sync entity identifier %{public}@; change will be ignored.", buf, 0xCu);

        goto LABEL_57;
      }
    }

    v27 = 1;
    goto LABEL_81;
  }

  v25 = MEMORY[0x277CCA9B8];
  v26 = NSStringFromProtocol(v9);
  [v25 hk_assignError:error code:125 format:{@"%@ does not conform to %@", changeCopy, v26}];

  v27 = 0;
LABEL_81:

  return v27;
}

BOOL __53__HDDaemonSyncEngine_applySyncChange_forStore_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = HDCurrentSyncVersionForSyncEntity(*(a1 + 48));
  v7 = [*(a1 + 48) syncEntityIdentifier];
  v8 = [HDSyncAnchorEntity updateLocalVersion:v6 entityIdentifier:v7 store:*(a1 + 32) transaction:v5 error:a3];

  if (v8)
  {
    v9 = [*(a1 + 40) versionRange] >> 32;
    v10 = [*(a1 + 40) syncEntityIdentifier];
    v11 = [HDSyncAnchorEntity updateReceivedVersion:v9 entityIdentifier:v10 store:*(a1 + 32) transaction:v5 error:a3];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)syncAnchorRangesIfRequiredForSession:(id)session startingAnchors:(id)anchors error:(id *)error
{
  v49 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  anchorsCopy = anchors;
  databaseAccessibilityAssertion = [sessionCopy databaseAccessibilityAssertion];

  if (databaseAccessibilityAssertion)
  {
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    database = [WeakRetained database];
    databaseAccessibilityAssertion2 = [sessionCopy databaseAccessibilityAssertion];
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v43 = 0;
    v16 = [database cloneAccessibilityAssertion:databaseAccessibilityAssertion2 ownerIdentifier:v15 error:&v43];
    v17 = v43;

    if (v16)
    {
LABEL_7:
      *&buf = 0;
      *(&buf + 1) = &buf;
      v45 = 0x3032000000;
      v46 = __Block_byref_object_copy__176;
      v47 = __Block_byref_object_dispose__176;
      v48 = 0;
      v38 = 0;
      v39 = &v38;
      v40 = 0x2020000000;
      v41 = 0;
      v23 = objc_alloc_init(HDMutableDatabaseTransactionContext);
      [(HDMutableDatabaseTransactionContext *)v23 setRequiresProtectedData:1];
      [(HDMutableDatabaseTransactionContext *)v23 setCacheScope:1];
      [(HDMutableDatabaseTransactionContext *)v23 addAccessibilityAssertion:v16];
      v24 = objc_loadWeakRetained(&self->_profile);
      database2 = [v24 database];
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __81__HDDaemonSyncEngine_syncAnchorRangesIfRequiredForSession_startingAnchors_error___block_invoke;
      v32[3] = &unk_27862A8E0;
      p_buf = &buf;
      v33 = sessionCopy;
      selfCopy = self;
      v35 = anchorsCopy;
      v37 = &v38;
      v26 = [database2 performTransactionWithContext:v23 error:error block:v32 inaccessibilityHandler:0];

      [v16 invalidate];
      if (v26)
      {
        if (*(v39 + 24) == 1)
        {
          v27 = *(*(&buf + 1) + 40);
        }

        else
        {
          v27 = objc_alloc_init(HDSyncAnchorRangeMap);
        }

        v28 = v27;
      }

      else
      {
        v28 = 0;
      }

      _Block_object_dispose(&v38, 8);
      _Block_object_dispose(&buf, 8);

      goto LABEL_18;
    }
  }

  else
  {
    v17 = 0;
  }

  v18 = objc_loadWeakRetained(&self->_profile);
  database3 = [v18 database];
  v20 = objc_opt_class();
  v21 = NSStringFromClass(v20);
  [sessionCopy databaseAccessibilityTimeout];
  v42 = v17;
  v16 = [database3 takeAccessibilityAssertionWithOwnerIdentifier:v21 timeout:&v42 error:?];
  v22 = v42;

  if (v16)
  {
    v17 = v22;
    goto LABEL_7;
  }

  if (([v22 hk_isDatabaseAccessibilityError] & 1) == 0 && (_HKInitializeLogging(), v29 = *MEMORY[0x277CCC328], os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR)))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v22;
    _os_log_error_impl(&dword_228986000, v29, OS_LOG_TYPE_ERROR, "Failed to acquire database accessibility assertion for sync: %{public}@", &buf, 0xCu);
    if (v22)
    {
      goto LABEL_14;
    }
  }

  else if (v22)
  {
LABEL_14:
    v16 = v22;
    goto LABEL_24;
  }

  v16 = [MEMORY[0x277CCA9B8] hk_error:100 format:@"Failed to acquire database accessibility assertion for sync with no error."];
  if (v16)
  {
LABEL_24:
    if (error)
    {
      v31 = v16;
      *error = v16;
    }

    else
    {
      _HKLogDroppedError();
    }

    v17 = 0;
    v28 = 0;
    if (v22)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v17 = 0;
  v28 = 0;
LABEL_18:

  v22 = v17;
LABEL_19:

  return v28;
}

BOOL __81__HDDaemonSyncEngine_syncAnchorRangesIfRequiredForSession_startingAnchors_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) syncStore];
  v7 = [v6 orderedSyncEntities];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __81__HDDaemonSyncEngine_syncAnchorRangesIfRequiredForSession_startingAnchors_error___block_invoke_2;
  v20[3] = &unk_278623A30;
  v8 = v6;
  v21 = v8;
  v9 = [v7 hk_filter:v20];

  v10 = [HDDaemonSyncEngine _syncAnchorRangeMapForSession:*(a1 + 32) store:v9 syncEntities:*(a1 + 48) startingAnchors:a3 error:?];
  v11 = *(*(a1 + 56) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  v13 = *(*(*(a1 + 56) + 8) + 40);
  if (v13)
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 0;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __81__HDDaemonSyncEngine_syncAnchorRangesIfRequiredForSession_startingAnchors_error___block_invoke_3;
    v15[3] = &unk_27862B7F8;
    v15[4] = &v16;
    [v13 enumerateAnchorRangesAndEntityIdentifiersWithBlock:v15];
    if (*(v17 + 24))
    {
      *(*(*(a1 + 64) + 8) + 24) = [*(a1 + 32) requiresSyncForChangesFromAnchorRangeMap:*(*(*(a1 + 56) + 8) + 40)];
    }

    _Block_object_dispose(&v16, 8);
  }

  return v13 != 0;
}

uint64_t __81__HDDaemonSyncEngine_syncAnchorRangesIfRequiredForSession_startingAnchors_error___block_invoke_2(uint64_t a1, void *a2)
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 1;
  }

  v4 = *(a1 + 32);

  return [a2 supportsSyncStore:v4];
}

- (HDSyncAnchorRangeMap)_syncAnchorRangeMapForSession:(uint64_t)session store:(void *)store syncEntities:(void *)entities startingAnchors:(void *)anchors error:(uint64_t)error
{
  v49 = *MEMORY[0x277D85DE8];
  storeCopy = store;
  entitiesCopy = entities;
  anchorsCopy = anchors;
  sessionCopy = session;
  if (session)
  {
    v32 = entitiesCopy;
    v33 = objc_alloc_init(HDSyncAnchorRangeMap);
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    obj = entitiesCopy;
    v10 = [obj countByEnumeratingWithState:&v38 objects:v44 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v39;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v39 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v38 + 1) + 8 * i);
          syncEntityIdentifier = [v14 syncEntityIdentifier];
          v16 = [anchorsCopy anchorForSyncEntityIdentifier:syncEntityIdentifier];
          v17 = [(HDDaemonSyncEngine *)sessionCopy _nextSyncAnchorForEntity:v14 session:storeCopy startSyncAnchor:v16 error:error];
          if ((v16 & 0x8000000000000000) != 0 || (v18 = v17, v17 < 0))
          {
            [MEMORY[0x277CCA9B8] hk_assignError:error code:1400 format:@"Start or final anchor is invalid."];

            v30 = 0;
            v29 = v33;
            goto LABEL_28;
          }

          syncAnchorMapLimits = [storeCopy syncAnchorMapLimits];

          if (syncAnchorMapLimits)
          {
            v20 = syncEntityIdentifier;
            v21 = storeCopy;
            v42 = HDSyncAnchorRangeMake(-1, -1);
            v43 = v22;
            syncAnchorMapLimits2 = [v21 syncAnchorMapLimits];

            LOBYTE(v21) = [syncAnchorMapLimits2 getAnchorRange:&v42 forSyncEntityIdentifier:v20];
            if (v21)
            {
              if (v43 <= v16)
              {
                v24 = v16;
              }

              else
              {
                v24 = v43;
              }

              if (v43 <= v18)
              {
                v18 = v24;
              }
            }

            else
            {
              _HKInitializeLogging();
              v25 = *MEMORY[0x277CCC328];
              if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
              {
                *buf = 138543618;
                v46 = sessionCopy;
                v47 = 2114;
                v48 = v20;
                _os_log_error_impl(&dword_228986000, v25, OS_LOG_TYPE_ERROR, "%{public}@ no sync anchor map limits for sync identifier %{public}@", buf, 0x16u);
              }
            }
          }

          if (v18 < v16)
          {
            currentHandler = [MEMORY[0x277CCA890] currentHandler];
            [currentHandler handleFailureInMethod:sel__syncAnchorRangeMapForSession_store_syncEntities_startingAnchors_error_ object:sessionCopy file:@"HDDaemonSyncEngine.m" lineNumber:877 description:{@"Invalid parameter not satisfying: %@", @"finalAnchor >= startAnchor"}];
          }

          if (v18 > v16)
          {
            v26 = HDSyncAnchorRangeMake(v16, v18);
            [(HDSyncAnchorRangeMap *)v33 setAnchorRange:v26 forSyncEntityIdentifier:v27, syncEntityIdentifier];
          }
        }

        v11 = [obj countByEnumeratingWithState:&v38 objects:v44 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v29 = v33;
    v30 = v33;
LABEL_28:

    entitiesCopy = v32;
  }

  else
  {
    v30 = 0;
  }

  return v30;
}

uint64_t __81__HDDaemonSyncEngine_syncAnchorRangesIfRequiredForSession_startingAnchors_error___block_invoke_3(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  if (a4 > a3)
  {
    *(*(*(result + 32) + 8) + 24) = 1;
    *a5 = 1;
  }

  return result;
}

- (BOOL)performSyncSession:(id)session accessibilityAssertion:(id)assertion error:(id *)error
{
  sessionCopy = session;
  v140 = *MEMORY[0x277D85DE8];
  if (session)
  {
    assertionCopy = assertion;
    v9 = sessionCopy;
    [v9 syncWillBegin];
    v10 = v9;
    v11 = assertionCopy;
    v106 = v10;
    errorCopy = error;
    v101 = v11;
    if (self)
    {
      v12 = v11;
      selfCopy = self;
      v97 = v12;
      if (v12)
      {
        v100 = 0;
        v102 = v12;
        goto LABEL_7;
      }

      WeakRetained = objc_loadWeakRetained(&self->_profile);
      database = [WeakRetained database];
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      [v106 databaseAccessibilityTimeout];
      v113 = 0;
      v102 = [database takeAccessibilityAssertionWithOwnerIdentifier:v16 timeout:&v113 error:?];
      v100 = v113;

      if (v102)
      {
        v10 = v106;
LABEL_7:
        syncStore = [v10 syncStore];
        if (!syncStore)
        {
          currentHandler = [MEMORY[0x277CCA890] currentHandler];
          v95 = [MEMORY[0x277CCACA8] stringWithUTF8String:"BOOL _VerifySyncEntityOrderForStore(id<HDSyncStore>  _Nonnull __strong)"];
          [currentHandler handleFailureInFunction:v95 file:@"HDDaemonSyncEngine.m" lineNumber:1154 description:{@"Invalid parameter not satisfying: %@", @"syncStore != nil"}];

          syncStore = 0;
        }

        v105 = syncStore;
        if (([syncStore enforceSyncEntityOrdering] & 1) == 0)
        {

          goto LABEL_30;
        }

        orderedSyncEntities = [v105 orderedSyncEntities];
        v19 = objc_alloc_init(MEMORY[0x277CBEB58]);
        v120 = 0u;
        v121 = 0u;
        v118 = 0u;
        v119 = 0u;
        v20 = orderedSyncEntities;
        v21 = [v20 countByEnumeratingWithState:&v118 objects:buf count:16];
        if (v21)
        {
          v22 = *v119;
          v109 = *v119;
          do
          {
            for (i = 0; i != v21; ++i)
            {
              if (*v119 != v22)
              {
                objc_enumerationMutation(v20);
              }

              v24 = *(*(&v118 + 1) + 8 * i);
              v114 = 0u;
              v115 = 0u;
              v116 = 0u;
              v117 = 0u;
              v25 = [v105 syncEntityDependenciesForSyncEntity:v24];
              v26 = [v25 countByEnumeratingWithState:&v114 objects:&v127 count:16];
              if (v26)
              {
                v27 = *v115;
                do
                {
                  for (j = 0; j != v26; ++j)
                  {
                    if (*v115 != v27)
                    {
                      objc_enumerationMutation(v25);
                    }

                    v29 = *(*(&v114 + 1) + 8 * j);
                    if (([v19 containsObject:v29] & 1) == 0)
                    {
                      _HKInitializeLogging();
                      v30 = *MEMORY[0x277CCC328];
                      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
                      {
                        *v124 = 138543618;
                        *&v124[4] = v29;
                        v125 = 2114;
                        v126 = v24;
                        _os_log_error_impl(&dword_228986000, v30, OS_LOG_TYPE_ERROR, "%{public}@ is not ordered before %{public}@ in sync entities", v124, 0x16u);
                      }

                      currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
                      [currentHandler2 handleFailureInMethod:sel__performSyncSession_databaseAccessibilityAssertion_error_ object:selfCopy file:@"HDDaemonSyncEngine.m" lineNumber:1052 description:{@"Invalid parameter not satisfying: %@", @"_VerifySyncEntityOrderForStore(store)"}];

LABEL_30:
                      _HKInitializeLogging();
                      v32 = MEMORY[0x277CCC328];
                      v33 = *MEMORY[0x277CCC328];
                      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 138543618;
                        v34 = v106;
                        *&buf[4] = v106;
                        *&buf[12] = 2114;
                        *&buf[14] = v105;
                        _os_log_impl(&dword_228986000, v33, OS_LOG_TYPE_DEFAULT, "beginning sync session %{public}@ with store %{public}@", buf, 0x16u);
                        v33 = *v32;
                      }

                      else
                      {
                        v34 = v106;
                      }

                      v99 = os_signpost_id_make_with_pointer(v33, v34);
                      v35 = MEMORY[0x277CCACA8];
                      reason = [v34 reason];
                      syncStoreType = [v105 syncStoreType];
                      syncStoreIdentifier = [v105 syncStoreIdentifier];
                      v98 = [v35 stringWithFormat:@"reason=%@, storeType=%ld, storeID=%@, storeEpoch=%lld", reason, syncStoreType, syncStoreIdentifier, objc_msgSend(v105, "syncEpoch")];

                      _HKInitializeLogging();
                      v39 = *MEMORY[0x277CCC328];
                      if (os_signpost_enabled(*MEMORY[0x277CCC328]))
                      {
                        v40 = v39;
                        v41 = v40;
                        if (v99 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v40))
                        {
                          *buf = 138543362;
                          *&buf[4] = v98;
                          _os_signpost_emit_with_name_impl(&dword_228986000, v41, OS_SIGNPOST_INTERVAL_BEGIN, v99, "sync-session", "%{public}@", buf, 0xCu);
                        }
                      }

                      Current = CFAbsoluteTimeGetCurrent();
                      v104 = objc_alloc_init(HDMutableDatabaseTransactionContext);
                      [(HDMutableDatabaseTransactionContext *)v104 setRequiresProtectedData:1];
                      [(HDMutableDatabaseTransactionContext *)v104 setCacheScope:1];
                      [(HDMutableDatabaseTransactionContext *)v104 addAccessibilityAssertion:v102];
                      databaseAccessibilityAssertion = [v106 databaseAccessibilityAssertion];

                      if (databaseAccessibilityAssertion)
                      {
                        databaseAccessibilityAssertion2 = [v106 databaseAccessibilityAssertion];
                        [(HDMutableDatabaseTransactionContext *)v104 addAccessibilityAssertion:databaseAccessibilityAssertion2];
                      }

                      v45 = objc_alloc_init(HDSyncAnchorRangeMap);
                      v110 = 0;
                      v103 = 0;
                      while (2)
                      {
                        _HKInitializeLogging();
                        v46 = *MEMORY[0x277CCC328];
                        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 138543874;
                          *&buf[4] = v106;
                          *&buf[12] = 1024;
                          *&buf[14] = v110;
                          *&buf[18] = 2114;
                          *&buf[20] = v105;
                          _os_log_impl(&dword_228986000, v46, OS_LOG_TYPE_DEFAULT, "beginning sync session %{public}@ transaction %d with store %{public}@", buf, 0x1Cu);
                        }

                        v47 = CFAbsoluteTimeGetCurrent();
                        v48 = v106;
                        v49 = v105;
                        v111 = v104;
                        array = [MEMORY[0x277CBEB18] array];
                        *&v114 = 0;
                        *(&v114 + 1) = &v114;
                        *&v115 = 0x2020000000;
                        *(&v115 + 1) = 1;
                        v127 = 0;
                        v128 = &v127;
                        v129 = 0x3032000000;
                        v130 = __Block_byref_object_copy__176;
                        v131 = __Block_byref_object_dispose__176;
                        v51 = v45;
                        v132 = v51;
                        v52 = objc_loadWeakRetained(&selfCopy->_profile);
                        database2 = [v52 database];
                        v123 = 0;
                        *buf = MEMORY[0x277D85DD0];
                        *&buf[8] = 3221225472;
                        *&buf[16] = __102__HDDaemonSyncEngine__performSyncTransactionForSession_store_anchorRangeMap_transactionContext_error___block_invoke;
                        *&buf[24] = &unk_27862B870;
                        v54 = v48;
                        *&buf[32] = v54;
                        v134 = selfCopy;
                        v108 = v49;
                        v135 = v108;
                        v55 = array;
                        v136 = v55;
                        v137 = &v127;
                        v139 = sel__performSyncTransactionForSession_store_anchorRangeMap_transactionContext_error_;
                        v138 = &v114;
                        v56 = [database2 performTransactionWithContext:v111 error:&v123 block:buf inaccessibilityHandler:0];
                        v57 = v123;

                        v58 = _Block_copy(selfCopy->_unitTest_didCompleteReadTransaction);
                        v59 = v58;
                        if (v58)
                        {
                          (*(v58 + 2))(v58);
                        }

                        if (v56)
                        {
                          v107 = v128[5];
                          v60 = v107;
                          v61 = [(HDMutableDatabaseTransactionContext *)v111 mutableCopy];
                          [v61 setRequiresWrite:1];
                          v62 = objc_loadWeakRetained(&selfCopy->_profile);
                          database3 = [v62 database];
                          v122 = v57;
                          *&v118 = MEMORY[0x277D85DD0];
                          *(&v118 + 1) = 3221225472;
                          *&v119 = __102__HDDaemonSyncEngine__performSyncTransactionForSession_store_anchorRangeMap_transactionContext_error___block_invoke_473;
                          *(&v119 + 1) = &unk_278616048;
                          *&v120 = v55;
                          v64 = [database3 performTransactionWithContext:v61 error:&v122 block:&v118 inaccessibilityHandler:0];
                          v65 = v122;

                          if (!v64)
                          {
                            if ([v65 hk_isDatabaseAccessibilityError])
                            {
                              _HKInitializeLogging();
                              v69 = *MEMORY[0x277CCC328];
                              if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEBUG))
                              {
                                *v124 = 138543362;
                                *&v124[4] = v65;
                                _os_log_debug_impl(&dword_228986000, v69, OS_LOG_TYPE_DEBUG, "error during sync write transaction: %{public}@", v124, 0xCu);
                              }
                            }

                            else
                            {
                              _HKInitializeLogging();
                              v70 = *MEMORY[0x277CCC328];
                              if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
                              {
                                *v124 = 138543362;
                                *&v124[4] = v65;
                                _os_log_error_impl(&dword_228986000, v70, OS_LOG_TYPE_ERROR, "error during sync write transaction: %{public}@", v124, 0xCu);
                              }
                            }

                            v57 = v65;
                            goto LABEL_63;
                          }

                          if (*(*(&v114 + 1) + 24) == 2)
                          {
                            *v124 = v65;
                            v66 = [v54 transactionDidEndWithError:v124];
                            v57 = *v124;

                            if (v66)
                            {
                              v65 = v57;
                              goto LABEL_67;
                            }

LABEL_63:
                            *(*(&v114 + 1) + 24) = 0;
                            v71 = v57;
                            v61 = v71;
                            if (v71)
                            {
                              v72 = v71;
                              v103 = v61;
                              v65 = v61;
                            }

                            else
                            {
                              v65 = 0;
                            }
                          }

                          else
                          {
                          }

LABEL_67:
                          v73 = *(*(&v114 + 1) + 24);

                          _Block_object_dispose(&v127, 8);
                          _Block_object_dispose(&v114, 8);

                          v45 = v107;
                          v74 = CFAbsoluteTimeGetCurrent();
                          _HKInitializeLogging();
                          v75 = *MEMORY[0x277CCC328];
                          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
                          {
                            *buf = 67109890;
                            v76 = "YES";
                            if (!v73)
                            {
                              v76 = "NO";
                            }

                            *&buf[4] = v110;
                            *&buf[8] = 2048;
                            *&buf[10] = v74 - v47;
                            *&buf[18] = 2080;
                            *&buf[20] = v76;
                            *&buf[28] = 2048;
                            *&buf[30] = v73;
                            _os_log_impl(&dword_228986000, v75, OS_LOG_TYPE_DEFAULT, "finished sync transaction %d in %lfs; success=%s, status=%ld", buf, 0x26u);
                          }

                          ++v110;
                          if (v73 != 2)
                          {
                            if (!v97)
                            {
                              [v102 invalidate];
                            }

                            v77 = CFAbsoluteTimeGetCurrent();
                            _HKInitializeLogging();
                            v78 = *MEMORY[0x277CCC328];
                            if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
                            {
                              *buf = 138544130;
                              v79 = "YES";
                              if (!v73)
                              {
                                v79 = "NO";
                              }

                              *&buf[4] = v106;
                              *&buf[12] = 2048;
                              *&buf[14] = v77 - Current;
                              *&buf[22] = 1024;
                              *&buf[24] = v110;
                              *&buf[28] = 2080;
                              *&buf[30] = v79;
                              _os_log_impl(&dword_228986000, v78, OS_LOG_TYPE_DEFAULT, "finished sync session %{public}@ in %lfs with %d transactions; success=%s", buf, 0x26u);
                            }

                            _HKInitializeLogging();
                            v80 = *MEMORY[0x277CCC328];
                            if (os_signpost_enabled(*MEMORY[0x277CCC328]))
                            {
                              v81 = v80;
                              v82 = v81;
                              if (v99 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v81))
                              {
                                v83 = "YES";
                                if (!v73)
                                {
                                  v83 = "NO";
                                }

                                *buf = 136315394;
                                *&buf[4] = v83;
                                *&buf[12] = 2114;
                                *&buf[14] = v98;
                                _os_signpost_emit_with_name_impl(&dword_228986000, v82, OS_SIGNPOST_INTERVAL_END, v99, "sync-session", "success=%s, %{public}@", buf, 0x16u);
                              }
                            }

                            buf[0] = v73 != 0;

                            v84 = v100;
                            goto LABEL_86;
                          }

                          continue;
                        }

                        break;
                      }

                      if ([v57 hk_isDatabaseAccessibilityError])
                      {
                        _HKInitializeLogging();
                        v67 = *MEMORY[0x277CCC328];
                        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEBUG))
                        {
                          *v124 = 138543362;
                          *&v124[4] = v57;
                          _os_log_debug_impl(&dword_228986000, v67, OS_LOG_TYPE_DEBUG, "error during sync read transaction: %{public}@", v124, 0xCu);
                        }
                      }

                      else
                      {
                        _HKInitializeLogging();
                        v68 = *MEMORY[0x277CCC328];
                        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
                        {
                          *v124 = 138543362;
                          *&v124[4] = v57;
                          _os_log_error_impl(&dword_228986000, v68, OS_LOG_TYPE_ERROR, "error during sync read transaction: %{public}@", v124, 0xCu);
                        }
                      }

                      v107 = v51;
                      goto LABEL_63;
                    }
                  }

                  v26 = [v25 countByEnumeratingWithState:&v114 objects:&v127 count:16];
                }

                while (v26);
              }

              [v19 addObject:v24];
              v22 = v109;
            }

            v21 = [v20 countByEnumeratingWithState:&v118 objects:buf count:16];
            v22 = v109;
          }

          while (v21);
        }

        goto LABEL_30;
      }

      if (([v100 hk_isDatabaseAccessibilityError] & 1) == 0)
      {
        _HKInitializeLogging();
        v89 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          *&buf[4] = v100;
          _os_log_error_impl(&dword_228986000, v89, OS_LOG_TYPE_ERROR, "Failed to acquire database accessibility assertion for sync: %{public}@", buf, 0xCu);
        }
      }

      v90 = v100;
      if (v90)
      {
        v91 = v90;
        v92 = v90;
        v90 = v91;
      }

      v103 = v90;

      buf[0] = 0;
      v84 = v103;
LABEL_86:

      sessionCopy = buf[0];
    }

    else
    {
      v103 = 0;
      sessionCopy = 0;
    }

    v85 = v103;
    [v106 syncDidFinishWithSuccess:sessionCopy error:v85];

    if ((sessionCopy & 1) == 0)
    {
      v86 = v85;
      v87 = v86;
      if (v86)
      {
        if (errorCopy)
        {
          v88 = v86;
          *errorCopy = v87;
        }

        else
        {
          _HKLogDroppedError();
        }
      }
    }
  }

  return sessionCopy;
}

- (void)resetAnchorsWithFailedChanges:(id)changes store:(id)store
{
  v36 = *MEMORY[0x277D85DE8];
  obj = changes;
  storeCopy = store;
  if (storeCopy)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v6 = [obj countByEnumeratingWithState:&v25 objects:v35 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v26;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v26 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v25 + 1) + 8 * i);
          syncAnchorRange = [v10 syncAnchorRange];
          v13 = v12;
          WeakRetained = objc_loadWeakRetained(&self->_profile);
          v15 = [v10 syncEntityClassForProfile:WeakRetained];

          if ((syncAnchorRange & 0x8000000000000000) == 0 && syncAnchorRange <= v13 && v15 != 0)
          {
            syncEntityIdentifier = [v15 syncEntityIdentifier];
            v18 = objc_loadWeakRetained(&self->_profile);
            v24 = 0;
            v19 = [HDSyncAnchorEntity updateSyncAnchor:syncAnchorRange type:0 entityIdentifier:syncEntityIdentifier store:storeCopy updatePolicy:0 profile:v18 error:&v24];
            v20 = v24;

            if (!v19)
            {
              _HKInitializeLogging();
              v21 = *MEMORY[0x277CCC328];
              if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
              {
                *buf = 134218498;
                v30 = syncAnchorRange;
                v31 = 2114;
                v32 = v15;
                v33 = 2114;
                v34 = v20;
                _os_log_error_impl(&dword_228986000, v21, OS_LOG_TYPE_ERROR, "failed to reset next anchor to %lld for %{public}@: %{public}@", buf, 0x20u);
              }
            }
          }
        }

        v7 = [obj countByEnumeratingWithState:&v25 objects:v35 count:16];
      }

      while (v7);
    }
  }
}

- (BOOL)applyAcknowledgedAnchorMap:(id)map forStore:(id)store resetNext:(BOOL)next resetInvalid:(BOOL)invalid error:(id *)error
{
  invalidCopy = invalid;
  nextCopy = next;
  storeCopy = store;
  mapCopy = map;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  LOBYTE(error) = [HDSyncAnchorEntity setAcknowledgedAnchorsWithMap:mapCopy store:storeCopy resetNext:nextCopy resetInvalid:invalidCopy profile:WeakRetained error:error];

  return error;
}

- (BOOL)getReceivedAnchorMap:(id)map forStore:(id)store error:(id *)error
{
  storeCopy = store;
  mapCopy = map;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  LOBYTE(error) = [HDSyncAnchorEntity getSyncAnchorsOfType:3 anchorMap:mapCopy store:storeCopy profile:WeakRetained error:error];

  return error;
}

- (void)resetStore:(id)store
{
  v17 = *MEMORY[0x277D85DE8];
  storeCopy = store;
  if (storeCopy)
  {
    _HKInitializeLogging();
    v5 = MEMORY[0x277CCC328];
    v6 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v14 = storeCopy;
      _os_log_debug_impl(&dword_228986000, v6, OS_LOG_TYPE_DEBUG, "resetting store %@", buf, 0xCu);
    }

    v7 = storeCopy;
    if (self)
    {
      WeakRetained = objc_loadWeakRetained(&self->_profile);
      v12 = 0;
      v9 = [HDSyncAnchorEntity resetSyncStore:v7 profile:WeakRetained error:&v12];
      v10 = v12;

      if (!v9)
      {
        _HKInitializeLogging();
        v11 = *v5;
        if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v14 = v7;
          v15 = 2114;
          v16 = v10;
          _os_log_error_impl(&dword_228986000, v11, OS_LOG_TYPE_ERROR, "failed to reset sync store %{public}@: %{public}@", buf, 0x16u);
        }
      }
    }
  }
}

void __110__HDDaemonSyncEngine__synchronizeSyncEntityClass_session_startAnchor_finalAnchor_postTransactionBlocks_error___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) currentAnchor];
  v3 = [*(a1 + 56) syncEntityIdentifier];
  v4 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((*(a1 + 48) + 8));
  v9 = 0;
  LOBYTE(v2) = [HDSyncAnchorEntity updateSyncAnchor:v2 type:0 entityIdentifier:v3 store:v4 updatePolicy:1 profile:WeakRetained error:&v9];
  v6 = v9;

  if ((v2 & 1) == 0)
  {
    _HKInitializeLogging();
    v7 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 56);
      *buf = 138543618;
      v11 = v8;
      v12 = 2114;
      v13 = v6;
      _os_log_error_impl(&dword_228986000, v7, OS_LOG_TYPE_ERROR, "Failed to update next sync anchor for %{public}@: %{public}@", buf, 0x16u);
    }
  }
}

- (uint64_t)_nextSyncAnchorForEntity:(void *)entity session:(uint64_t)session startSyncAnchor:(uint64_t)anchor error:
{
  entityCopy = entity;
  WeakRetained = objc_loadWeakRetained((self + 8));
  v11 = [a2 nextSyncAnchorWithSession:entityCopy startSyncAnchor:session profile:WeakRetained error:anchor];

  return v11;
}

uint64_t __102__HDDaemonSyncEngine__performSyncTransactionForSession_store_anchorRangeMap_transactionContext_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v89 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 8));
  v61 = a3;
  LODWORD(v6) = [v6 syncDidBeginWithProfile:WeakRetained error:a3];

  if (v6)
  {
    v55 = v5;
    v58 = a1;
    v8 = (a1 + 48);
    v9 = [*(a1 + 48) orderedSyncEntities];
    v74[0] = MEMORY[0x277D85DD0];
    v74[1] = 3221225472;
    v74[2] = __102__HDDaemonSyncEngine__performSyncTransactionForSession_store_anchorRangeMap_transactionContext_error___block_invoke_2;
    v74[3] = &unk_278623A30;
    v75 = *(a1 + 48);
    v10 = [v9 hk_filter:v74];

    v12 = (a1 + 40);
    v11 = *v12;
    v13 = *(v58 + 56);
    v71[0] = MEMORY[0x277D85DD0];
    v71[1] = 3221225472;
    v71[2] = __102__HDDaemonSyncEngine__performSyncTransactionForSession_store_anchorRangeMap_transactionContext_error___block_invoke_3;
    v71[3] = &unk_278613830;
    v71[4] = v11;
    v72 = *v8;
    v14 = v10;
    v73 = v14;
    v15 = objc_msgSend_copy(v71);
    v16 = _Block_copy(v15);
    [v13 addObject:v16];

    v17 = *v12;
    v59 = *v8;
    v57 = v14;
    if (v17)
    {
      v18 = objc_alloc_init(HDSyncAnchorMap);
      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      v19 = v57;
      v20 = [v19 countByEnumeratingWithState:&v76 objects:buf count:16];
      if (v20)
      {
        v21 = *v77;
        while (2)
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v77 != v21)
            {
              objc_enumerationMutation(v19);
            }

            v23 = *(*(&v76 + 1) + 8 * i);
            v24 = [v23 syncEntityIdentifier];
            if (objc_opt_respondsToSelector())
            {
              v25 = [v23 startSyncAnchorForEntity];
            }

            else
            {
              v26 = objc_loadWeakRetained((v17 + 8));
              v25 = [HDSyncAnchorEntity syncAnchorOfType:0 entityIdentifier:v24 store:v59 profile:v26 error:v61];
            }

            if (v25 < 0)
            {
              [MEMORY[0x277CCA9B8] hk_assignError:v61 code:1400 format:{@"Failed to lookup next anchor for %@.", v24}];

              v56 = 0;
              goto LABEL_17;
            }

            [(HDSyncAnchorMap *)v18 setAnchor:v25 forSyncEntityIdentifier:v24];
          }

          v20 = [v19 countByEnumeratingWithState:&v76 objects:buf count:16];
          if (v20)
          {
            continue;
          }

          break;
        }
      }

      v56 = v18;
LABEL_17:
    }

    else
    {
      v56 = 0;
    }

    if (![*(*(*(v58 + 64) + 8) + 40) anchorRangeCount])
    {
      v28 = [HDDaemonSyncEngine _syncAnchorRangeMapForSession:*(v58 + 32) store:v57 syncEntities:v56 startingAnchors:v61 error:?];
      v29 = *(*(v58 + 64) + 8);
      v30 = *(v29 + 40);
      *(v29 + 40) = v28;
    }

    v31 = *(*(*(v58 + 64) + 8) + 40);
    if (v31)
    {
      if ([v31 anchorRangeCount])
      {
        if ([*(v58 + 32) requiresSyncForChangesFromAnchorRangeMap:*(*(*(v58 + 64) + 8) + 40)])
        {
          [*(v58 + 32) willSyncAnchorRanges:*(*(*(v58 + 64) + 8) + 40)];
          v69 = 0u;
          v70 = 0u;
          v68 = 0u;
          v67 = 0u;
          obj = v57;
          v32 = [obj countByEnumeratingWithState:&v67 objects:v80 count:16];
          if (v32)
          {
            v54 = *v68;
            while (2)
            {
              for (j = 0; j != v32; ++j)
              {
                if (*v68 != v54)
                {
                  objc_enumerationMutation(obj);
                }

                v34 = *(*(&v67 + 1) + 8 * j);
                v35 = [v34 syncEntityIdentifier];
                v65 = 0;
                v66 = 0;
                v65 = HDSyncAnchorRangeMake(-1, -1);
                v66 = v36;
                if ([*(*(*(v58 + 64) + 8) + 40) getAnchorRange:&v65 forSyncEntityIdentifier:v35])
                {
                  *&v76 = 0;
                  *(&v76 + 1) = &v76;
                  *&v77 = 0x2020000000;
                  v37 = v65;
                  v38 = v66;
                  *(&v77 + 1) = v65;
                  v39 = v58;
                  if (v66 < v65)
                  {
                    v45 = [MEMORY[0x277CCA890] currentHandler];
                    [v45 handleFailureInMethod:*(v58 + 80) object:*(v58 + 40) file:@"HDDaemonSyncEngine.m" lineNumber:957 description:{@"Invalid parameter not satisfying: %@", @"finalAnchor >= startAnchor"}];

                    v37 = *(*(&v76 + 1) + 24);
                    v39 = v58;
                  }

                  if (v38 > v37)
                  {
                    while (1)
                    {
                      v60 = *(v39 + 32);
                      v40 = v60.i64[0];
                      v62 = vextq_s8(v60, v60, 8uLL);
                      v63 = *(v39 + 56);
                      v64 = v35;
                      if ((HKWithAutoreleasePool() & 1) == 0)
                      {
                        break;
                      }

                      if (*(*(&v76 + 1) + 24) <= v37)
                      {
                        _HKInitializeLogging();
                        v41 = *MEMORY[0x277CCC328];
                        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
                        {
                          v42 = *(*(&v76 + 1) + 24);
                          *buf = 134218754;
                          v82 = v37;
                          v83 = 2048;
                          v84 = v42;
                          v85 = 2048;
                          v86 = v38;
                          v87 = 2114;
                          v88 = v34;
                          _os_log_error_impl(&dword_228986000, v41, OS_LOG_TYPE_ERROR, "Start anchor did not increase (original: %lld, updated: %lld, expected final: %lld) during sync of %{public}@; skipping this entity.", buf, 0x2Au);
                        }

                        goto LABEL_41;
                      }

                      if (*(*(*(v39 + 72) + 8) + 24) == 2)
                      {
                        _HKInitializeLogging();
                        v43 = *MEMORY[0x277CCC328];
                        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_INFO))
                        {
                          v44 = *(v39 + 32);
                          *buf = 138543618;
                          v82 = v44;
                          v83 = 2114;
                          v84 = v34;
                          _os_log_impl(&dword_228986000, v43, OS_LOG_TYPE_INFO, "Delegate for sync session %{public}@ signaled that this sync session should start a new transaction, stop getting changes for %{public}@", buf, 0x16u);
                        }

LABEL_41:

                        v39 = v58;
                        goto LABEL_42;
                      }

                      v37 = *(*(&v76 + 1) + 24);
                      v39 = v58;
                      if (v38 <= v37)
                      {
                        goto LABEL_42;
                      }
                    }

                    _HKInitializeLogging();
                    v49 = *MEMORY[0x277CCC328];
                    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_INFO))
                    {
                      *buf = 138543362;
                      v82 = v34;
                      _os_log_impl(&dword_228986000, v49, OS_LOG_TYPE_INFO, "Sync for entity %{public}@ was unsuccessful. Skipping sync.", buf, 0xCu);
                    }

                    v27 = 0;
                    goto LABEL_54;
                  }

LABEL_42:
                  if (*(*(*(v39 + 72) + 8) + 24) == 2)
                  {
                    _HKInitializeLogging();
                    v51 = *MEMORY[0x277CCC328];
                    v27 = 1;
                    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_INFO))
                    {
                      v52 = *(v39 + 32);
                      *buf = 138543362;
                      v82 = v52;
                      _os_log_impl(&dword_228986000, v51, OS_LOG_TYPE_INFO, "Delegate for sync session %{public}@ signaled that this sync session should start a new transaction, stop getting changes for any sync entity", buf, 0xCu);
                    }

LABEL_54:
                    _Block_object_dispose(&v76, 8);

                    goto LABEL_56;
                  }

                  _Block_object_dispose(&v76, 8);
                }
              }

              v32 = [obj countByEnumeratingWithState:&v67 objects:v80 count:16];
              v27 = 1;
              if (v32)
              {
                continue;
              }

              break;
            }
          }

          else
          {
            v27 = 1;
          }

LABEL_56:

          goto LABEL_57;
        }

        _HKInitializeLogging();
        v46 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
        {
          v47 = *(v58 + 32);
          v48 = *(*(*(v58 + 64) + 8) + 40);
          *buf = 138543618;
          v82 = v47;
          v83 = 2114;
          v84 = v48;
          _os_log_impl(&dword_228986000, v46, OS_LOG_TYPE_DEFAULT, "session %{public}@ does not require sync for computed anchor map %{public}@", buf, 0x16u);
        }
      }

      v27 = 1;
    }

    else
    {
      v27 = 0;
    }

LABEL_57:

    v5 = v55;
    goto LABEL_58;
  }

  v27 = 0;
LABEL_58:

  return v27;
}

uint64_t __102__HDDaemonSyncEngine__performSyncTransactionForSession_store_anchorRangeMap_transactionContext_error___block_invoke_2(uint64_t a1, void *a2)
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 1;
  }

  v4 = *(a1 + 32);

  return [a2 supportsSyncStore:v4];
}

void __102__HDDaemonSyncEngine__performSyncTransactionForSession_store_anchorRangeMap_transactionContext_error___block_invoke_3(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v3 = *(a1 + 40);
  if (v1)
  {
    v4 = [v2 hk_map:&__block_literal_global_452];
    WeakRetained = objc_loadWeakRetained((v1 + 8));
    v9 = 0;
    v6 = [HDSyncAnchorEntity prepareSyncAnchorsForEntityIdentifiers:v4 store:v3 profile:WeakRetained error:&v9];
    v7 = v9;

    if (!v6)
    {
      _HKInitializeLogging();
      v8 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v11 = v3;
        v12 = 2114;
        v13 = v7;
        _os_log_error_impl(&dword_228986000, v8, OS_LOG_TYPE_ERROR, "Failed to prepare sync entities for store %{public}@: %{public}@", buf, 0x16u);
      }
    }
  }
}

BOOL __102__HDDaemonSyncEngine__performSyncTransactionForSession_store_anchorRangeMap_transactionContext_error___block_invoke_470(uint64_t a1, HDDaemonSyncMessageHandler **a2)
{
  v63 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = *(*(a1 + 72) + 8);
  v6 = *(a1 + 88);
  v5 = *(a1 + 96);
  v7 = *(a1 + 48);
  v8 = *(a1 + 40);
  v50 = v7;
  if (!v3)
  {
    v30 = 0;
    v28 = v50;
    goto LABEL_41;
  }

  v48 = [v8 syncStore];
  v44 = v4;
  v9 = HDSyncAnchorRangeMake(*(v4 + 24), v5);
  v46 = v10;
  v52 = 0;
  v11 = v8;
  v12 = [v11 syncStore];
  v13 = [v12 syncEntityDependenciesForSyncEntity:v6];
  v14 = objc_alloc_init(HDSyncAnchorMap);
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v15 = v13;
  v16 = [v15 countByEnumeratingWithState:&v53 objects:aBlock count:16];
  v51 = v8;
  v47 = v6;
  if (v16)
  {
    v17 = v16;
    v45 = v9;
    v18 = *v54;
    while (2)
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v54 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v53 + 1) + 8 * i);
        v21 = [(HDDaemonSyncEngine *)v3 _nextSyncAnchorForEntity:v20 session:v11 startSyncAnchor:0 error:&v52];
        if (v21 < 0)
        {

          v14 = 0;
          goto LABEL_12;
        }

        [(HDSyncAnchorMap *)v14 setAnchor:v21 forSyncEntity:v20];
      }

      v17 = [v15 countByEnumeratingWithState:&v53 objects:aBlock count:16];
      if (v17)
      {
        continue;
      }

      break;
    }

LABEL_12:
    v8 = v51;
    v6 = v47;
    v9 = v45;
  }

  v22 = v52;
  if (!v14)
  {
    _HKInitializeLogging();
    v32 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      *aBlock = 138543618;
      *&aBlock[4] = v6;
      *&aBlock[12] = 2114;
      *&aBlock[14] = v22;
      _os_log_error_impl(&dword_228986000, v32, OS_LOG_TYPE_ERROR, "Failed to retrieve sync anchor map for entity class %{public}@: %{public}@", aBlock, 0x16u);
    }

    v23 = v22;
    v28 = v50;
    if (v23)
    {
      v29 = v48;
      if (a2)
      {
        v33 = v23;
        v30 = 0;
        *a2 = v23;
      }

      else
      {
        _HKLogDroppedError();
        v30 = 0;
      }

      v26 = v23;
    }

    else
    {
      v26 = 0;
      v30 = 0;
      v29 = v48;
    }

    goto LABEL_40;
  }

  v23 = [[HDDaemonSyncMessageHandler alloc] initWithSyncEntityClass:v6 anchorRange:v9 session:v46 requiredAnchorMap:v11, v14];
  WeakRetained = objc_loadWeakRetained((v3 + 8));
  *&v53 = v22;
  v25 = [v6 generateSyncObjectsForSession:v11 syncAnchorRange:v9 profile:v46 messageHandler:WeakRetained error:{v23, &v53}];
  v26 = v53;

  if ((v25 & 1) == 0)
  {
    [(HDDaemonSyncMessageHandler *)v23 abandonUnsentChangesForError:v26];
    v34 = v26;
    v35 = v34;
    v28 = v50;
    v8 = v51;
    v29 = v48;
    if (v34)
    {
      if (a2)
      {
        v36 = v34;
        *a2 = v35;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

LABEL_30:
    v37 = [(HDDaemonSyncMessageHandler *)v23 sendChangesError];

    if (v37)
    {
      v38 = [(HDDaemonSyncMessageHandler *)v23 sendChangesError];

      v26 = v38;
    }

    if (v26)
    {
      v26 = v26;
    }

    else
    {
      v26 = [MEMORY[0x277CCA9B8] hk_error:124 format:{@"Unknown error generating and sending sync messages for entity %@", v47}];
      if (!v26)
      {
LABEL_39:
        v30 = 0;
        goto LABEL_40;
      }
    }

    if (a2)
    {
      v39 = v26;
      *a2 = v26;
    }

    else
    {
      _HKLogDroppedError();
    }

    goto LABEL_39;
  }

  v27 = [(HDDaemonSyncMessageHandler *)v23 sendChangesStatus];
  v28 = v50;
  v8 = v51;
  v29 = v48;
  if (!v27)
  {
    goto LABEL_30;
  }

  v30 = v27;
  *aBlock = MEMORY[0x277D85DD0];
  *&aBlock[8] = 3221225472;
  *&aBlock[16] = __110__HDDaemonSyncEngine__synchronizeSyncEntityClass_session_startAnchor_finalAnchor_postTransactionBlocks_error___block_invoke;
  v58 = &unk_27862B820;
  v23 = v23;
  v59 = v23;
  v62 = v47;
  v60 = v48;
  v61 = v3;
  v31 = _Block_copy(aBlock);
  [v50 addObject:v31];

  *(v44 + 24) = [(HDDaemonSyncMessageHandler *)v23 currentAnchor];
LABEL_40:

LABEL_41:
  *(*(*(a1 + 64) + 8) + 24) = v30;
  v40 = *(*(*(a1 + 80) + 8) + 40);
  v41 = HDSyncAnchorRangeMake(*(*(*(a1 + 72) + 8) + 24), *(a1 + 96));
  [v40 setAnchorRange:v41 forSyncEntityIdentifier:{v42, *(a1 + 56)}];
  return *(*(*(a1 + 64) + 8) + 24) != 0;
}

uint64_t __102__HDDaemonSyncEngine__performSyncTransactionForSession_store_anchorRangeMap_transactionContext_error___block_invoke_473(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v1);
        }

        (*(*(*(&v7 + 1) + 8 * v5) + 16))(*(*(&v7 + 1) + 8 * v5));
        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }

  return 1;
}

@end