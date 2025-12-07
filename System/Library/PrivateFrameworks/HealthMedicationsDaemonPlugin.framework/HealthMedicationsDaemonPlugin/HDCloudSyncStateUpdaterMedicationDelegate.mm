@interface HDCloudSyncStateUpdaterMedicationDelegate
+ (id)_deletedConceptPredicateWithUUIDs:(uint64_t)ds;
+ (id)_medicationsPredicate;
+ (id)_medsListOrderingTerms;
+ (id)_mergeCloudConcept:(void *)concept localConcept:(void *)localConcept profile:;
+ (uint64_t)_didAddNewLocalConcepts:(void *)concepts toMergedConcepts:;
+ (uint64_t)_didUpdateMergedConcepts:(uint64_t)concepts cloudState:(void *)state localState:(void *)localState profile:(void *)profile nonDeletedCloudConceptUUIDs:(void *)ds error:(void *)error;
+ (uint64_t)_fetchCloudState:(void *)state codableSyncState:(uint64_t)syncState profile:(uint64_t)profile error:;
+ (uint64_t)_fetchPersistedMeds:(void *)meds profile:(void *)profile transaction:(uint64_t)transaction error:;
+ (uint64_t)_persistCloudState:(void *)state profile:(uint64_t)profile error:;
+ (uint64_t)_replaceDeletedConceptIn:(void *)in nonDeletedCloudConceptUUIDs:(void *)ds profile:(void *)profile transaction:(uint64_t)transaction error:;
+ (uint64_t)_shouldUpdateWithMergedState:(void *)state cloudState:(void *)cloudState localState:(void *)localState profile:(void *)profile transaction:(uint64_t)transaction error:;
+ (uint64_t)_updateCodableSyncState:(uint64_t)state withMergeState:(void *)mergeState profile:(void *)profile error:(void *)error;
- (BOOL)persistCloudState:(id)state profile:(id)profile error:(id *)error;
- (BOOL)updateCodableSyncState:(id)state withMergeState:(id)mergeState profile:(id)profile error:(id *)error;
- (NSString)description;
- (int64_t)shouldUpdateWithMergedState:(id *)state cloudState:(id)cloudState localState:(id)localState profile:(id)profile transaction:(id)transaction error:(id *)error;
@end

@implementation HDCloudSyncStateUpdaterMedicationDelegate

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  domain = [(HDCloudSyncStateUpdaterMedicationDelegate *)self domain];
  v6 = [(HDCloudSyncStateUpdaterMedicationDelegate *)self key];
  v7 = [v3 stringWithFormat:@"[%@:%p (%@, %@)]", v4, self, domain, v6];

  return v7;
}

+ (uint64_t)_fetchPersistedMeds:(void *)meds profile:(void *)profile transaction:(uint64_t)transaction error:
{
  v36 = *MEMORY[0x277D85DE8];
  medsCopy = meds;
  profileCopy = profile;
  v10 = objc_opt_self();
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__3;
  v30 = __Block_byref_object_dispose__3;
  v31 = 0;
  v11 = MEMORY[0x277D10950];
  v12 = +[(HDCloudSyncStateUpdaterMedicationDelegate *)v10];
  v13 = +[(HDCloudSyncStateUpdaterMedicationDelegate *)v10];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __91__HDCloudSyncStateUpdaterMedicationDelegate__fetchPersistedMeds_profile_transaction_error___block_invoke;
  v25[3] = &unk_2796CD200;
  v25[4] = &v26;
  LOBYTE(transaction) = [v11 enumerateCodableObjectsForPredicate:v12 limit:500 orderingTerms:v13 profile:medsCopy transaction:profileCopy error:transaction handler:v25];

  if ((transaction & 1) == 0)
  {
LABEL_8:
    v18 = 0;
    goto LABEL_14;
  }

  concepts = [v27[5] concepts];
  v15 = [concepts count] > 0x1F3;

  if (v15)
  {
    if (!*MEMORY[0x277D109A0])
    {
      _HKInitializeLogging();
      v16 = HKLogMedication();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        concepts2 = [v27[5] concepts];
        v24 = [concepts2 count];
        *buf = 138543618;
        v33 = v10;
        v34 = 2048;
        v35 = v24;
        _os_log_fault_impl(&dword_25181C000, v16, OS_LOG_TYPE_FAULT, "[%{public}@] Trying to query for at least %ld medications for state sync, but this is too many!", buf, 0x16u);
      }
    }

    v17 = [MEMORY[0x277CCA9B8] hk_error:13 format:{@"%@ Unable to update the cloud state because max medication count (%ld) exceeded", v10, 500}];
    goto LABEL_8;
  }

  _HKInitializeLogging();
  v19 = HKLogMedication();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    concepts3 = [v27[5] concepts];
    v21 = [concepts3 count];
    *buf = 138543618;
    v33 = v10;
    v34 = 2048;
    v35 = v21;
    _os_log_impl(&dword_25181C000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ Fetch %ld local medications for state sync", buf, 0x16u);
  }

  if (a2)
  {
    *a2 = v27[5];
  }

  v18 = 1;
LABEL_14:
  _Block_object_dispose(&v26, 8);

  return v18;
}

+ (uint64_t)_fetchCloudState:(void *)state codableSyncState:(uint64_t)syncState profile:(uint64_t)profile error:
{
  v21 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  v8 = objc_opt_self();
  v16 = 0;
  v9 = [stateCopy decodedObjectOfClass:objc_opt_class() version:0 decodedObject:&v16 error:profile];

  v10 = v16;
  v11 = 0;
  if (v9)
  {
    _HKInitializeLogging();
    v12 = HKLogMedication();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      conceptsCount = [v10 conceptsCount];
      *buf = 138543618;
      v18 = v8;
      v19 = 2048;
      v20 = conceptsCount;
      _os_log_impl(&dword_25181C000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] Decode %ld cloud medications for state sync", buf, 0x16u);
    }

    if (a2)
    {
      v14 = v10;
      *a2 = v10;
    }

    v11 = 1;
  }

  return v11;
}

- (int64_t)shouldUpdateWithMergedState:(id *)state cloudState:(id)cloudState localState:(id)localState profile:(id)profile transaction:(id)transaction error:(id *)error
{
  cloudStateCopy = cloudState;
  localStateCopy = localState;
  profileCopy = profile;
  transactionCopy = transaction;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [HDCloudSyncStateUpdaterMedicationDelegate shouldUpdateWithMergedState:cloudState:localState:profile:transaction:error:];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [HDCloudSyncStateUpdaterMedicationDelegate shouldUpdateWithMergedState:cloudState:localState:profile:transaction:error:];
  }

  v17 = [HDCloudSyncStateUpdaterMedicationDelegate _shouldUpdateWithMergedState:state cloudState:cloudStateCopy localState:localStateCopy profile:profileCopy transaction:transactionCopy error:error];

  return v17;
}

+ (uint64_t)_shouldUpdateWithMergedState:(void *)state cloudState:(void *)cloudState localState:(void *)localState profile:(void *)profile transaction:(uint64_t)transaction error:
{
  v35 = *MEMORY[0x277D85DE8];
  localStateCopy = localState;
  profileCopy = profile;
  cloudStateCopy = cloudState;
  stateCopy = state;
  v16 = objc_opt_self();
  v17 = objc_alloc_init(MEMORY[0x277D10660]);
  v30 = 0;
  v18 = [HDCloudSyncStateUpdaterMedicationDelegate _didUpdateMergedConcepts:v16 cloudState:v17 localState:stateCopy profile:cloudStateCopy nonDeletedCloudConceptUUIDs:localStateCopy error:&v30];

  v19 = v30;
  _HKInitializeLogging();
  v20 = HKLogMedication();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = HKStringFromStateSyncMergeResult();
    *buf = 138543618;
    v32 = v16;
    v33 = 2114;
    v34 = v21;
    _os_log_impl(&dword_25181C000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ merge result %{public}@", buf, 0x16u);
  }

  if (v18 == 3)
  {
    v23 = 0;
    v22 = 1;
  }

  else if (v18 == 2)
  {
    v22 = 0;
    v23 = 1;
  }

  else
  {
    v23 = 0;
    v22 = 0;
  }

  v24 = [(HDCloudSyncStateUpdaterMedicationDelegate *)v16 _replaceDeletedConceptIn:v17 nonDeletedCloudConceptUUIDs:v19 profile:localStateCopy transaction:profileCopy error:transaction];

  _HKInitializeLogging();
  v25 = HKLogMedication();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = HKStringFromStateSyncMergeResult();
    *buf = 138543618;
    v32 = v16;
    v33 = 2114;
    v34 = v26;
    _os_log_impl(&dword_25181C000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@ replace deleted concepts result %{public}@", buf, 0x16u);
  }

  if (v24)
  {
    if (v24 == 3)
    {
      v22 = 1;
      if (!a2)
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (v24 == 2)
      {
        v23 = 1;
      }

      if (!a2)
      {
        goto LABEL_16;
      }
    }

    v27 = v17;
    *a2 = v17;
LABEL_16:
    v28 = 1;
    if (v23)
    {
      v28 = 2;
    }

    if (v22)
    {
      v24 = 3;
    }

    else
    {
      v24 = v28;
    }
  }

  return v24;
}

- (BOOL)updateCodableSyncState:(id)state withMergeState:(id)mergeState profile:(id)profile error:(id *)error
{
  stateCopy = state;
  mergeStateCopy = mergeState;
  profileCopy = profile;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [HDCloudSyncStateUpdaterMedicationDelegate updateCodableSyncState:withMergeState:profile:error:];
  }

  [HDCloudSyncStateUpdaterMedicationDelegate _updateCodableSyncState:stateCopy withMergeState:mergeStateCopy profile:profileCopy error:?];

  return 1;
}

+ (uint64_t)_updateCodableSyncState:(uint64_t)state withMergeState:(void *)mergeState profile:(void *)profile error:(void *)error
{
  v16 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  errorCopy = error;
  mergeStateCopy = mergeState;
  v9 = objc_opt_self();
  _HKInitializeLogging();
  v10 = HKLogMedication();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543618;
    v13 = v9;
    v14 = 2048;
    conceptsCount = [profileCopy conceptsCount];
    _os_log_impl(&dword_25181C000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Set %ld medications in cloud state for state sync", &v12, 0x16u);
  }

  [mergeStateCopy setCodableObject:profileCopy version:0 profile:errorCopy];
  return 1;
}

- (BOOL)persistCloudState:(id)state profile:(id)profile error:(id *)error
{
  stateCopy = state;
  profileCopy = profile;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [HDCloudSyncStateUpdaterMedicationDelegate persistCloudState:profile:error:];
  }

  v9 = [HDCloudSyncStateUpdaterMedicationDelegate _persistCloudState:stateCopy profile:profileCopy error:error];

  return v9;
}

+ (uint64_t)_persistCloudState:(void *)state profile:(uint64_t)profile error:
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a2;
  stateCopy = state;
  v8 = objc_opt_self();
  _HKInitializeLogging();
  v9 = HKLogMedication();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138543618;
    v15 = v8;
    v16 = 2048;
    conceptsCount = [v6 conceptsCount];
    _os_log_impl(&dword_25181C000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Persist %ld medication concepts for state sync", &v14, 0x16u);
  }

  v10 = MEMORY[0x277D10950];
  concepts = [v6 concepts];
  v12 = [v10 receiveSyncObjects:concepts version:objc_msgSend(MEMORY[0x277D10950] syncProvenance:"supportedSyncVersionRange") profile:0 error:{stateCopy, profile}];

  return v12;
}

+ (id)_medicationsPredicate
{
  objc_opt_self();
  medicationUserDomainConceptTypeIdentifier = [MEMORY[0x277CCDB50] medicationUserDomainConceptTypeIdentifier];
  v2 = HDUserDomainConceptEntityPredicateForConceptsWithTypeIdentifier();

  return v2;
}

+ (id)_medsListOrderingTerms
{
  v5[1] = *MEMORY[0x277D85DE8];
  objc_opt_self();
  v1 = objc_alloc(MEMORY[0x277D10B68]);
  v2 = [v1 initWithExpression:*MEMORY[0x277D10530] ascending:1];
  v5[0] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];

  return v3;
}

uint64_t __91__HDCloudSyncStateUpdaterMedicationDelegate__fetchPersistedMeds_profile_transaction_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 32) + 8) + 40);
  if (!v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277D10660]);
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v4 = *(*(*(a1 + 32) + 8) + 40);
  }

  [v4 addConcepts:v3];

  return 1;
}

+ (uint64_t)_didUpdateMergedConcepts:(uint64_t)concepts cloudState:(void *)state localState:(void *)localState profile:(void *)profile nonDeletedCloudConceptUUIDs:(void *)ds error:(void *)error
{
  v48 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  localStateCopy = localState;
  profileCopy = profile;
  dsCopy = ds;
  v39 = objc_opt_self();
  v12 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = [localStateCopy concepts];
  v13 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
  if (v13)
  {
    v14 = v13;
    v37 = v12;
    errorCopy = error;
    v35 = localStateCopy;
    v15 = 0;
    v36 = 0;
    v16 = *v44;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v44 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v43 + 1) + 8 * i);
        v19 = objc_autoreleasePoolPush();
        if (([v18 deleted] & 1) == 0)
        {
          v20 = MEMORY[0x277CCAD78];
          uuid = [v18 uuid];
          v22 = [v20 hk_UUIDWithData:uuid];
          [v37 addObject:v22];
        }

        concepts = [profileCopy concepts];
        v42[0] = MEMORY[0x277D85DD0];
        v42[1] = 3221225472;
        v42[2] = __134__HDCloudSyncStateUpdaterMedicationDelegate__didUpdateMergedConcepts_cloudState_localState_profile_nonDeletedCloudConceptUUIDs_error___block_invoke;
        v42[3] = &unk_2796CD648;
        v42[4] = v18;
        v24 = [concepts hk_firstObjectPassingTest:v42];

        if (v24)
        {
          v25 = [(HDCloudSyncStateUpdaterMedicationDelegate *)v39 _mergeCloudConcept:v18 localConcept:v24 profile:dsCopy];
          if (v25 == v18)
          {
            [v18 modificationDate];
            v27 = v26;
            [v24 modificationDate];
            if (v27 > v28)
            {
              v15 = 1;
            }
          }

          else
          {
            v36 = 1;
          }

          [stateCopy addConcepts:v25];
        }

        else
        {
          [stateCopy addConcepts:v18];
          v15 |= [v18 deleted] ^ 1;
        }

        objc_autoreleasePoolPop(v19);
      }

      v14 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
    }

    while (v14);
    if (v15)
    {
      v29 = 2;
    }

    else
    {
      v29 = 1;
    }

    error = errorCopy;
    localStateCopy = v35;
    v12 = v37;
    v30 = v36;
  }

  else
  {
    v30 = 0;
    v29 = 1;
  }

  if (error)
  {
    v31 = v12;
    *error = v12;
  }

  if ((v30 | [(HDCloudSyncStateUpdaterMedicationDelegate *)v39 _didAddNewLocalConcepts:profileCopy toMergedConcepts:stateCopy]))
  {
    v32 = 3;
  }

  else
  {
    v32 = v29;
  }

  return v32;
}

+ (uint64_t)_replaceDeletedConceptIn:(void *)in nonDeletedCloudConceptUUIDs:(void *)ds profile:(void *)profile transaction:(uint64_t)transaction error:
{
  v10 = a2;
  inCopy = in;
  dsCopy = ds;
  profileCopy = profile;
  v14 = objc_opt_self();
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 1;
  v15 = [(HDCloudSyncStateUpdaterMedicationDelegate *)v14 _deletedConceptPredicateWithUUIDs:inCopy];
  v16 = MEMORY[0x277D10950];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __124__HDCloudSyncStateUpdaterMedicationDelegate__replaceDeletedConceptIn_nonDeletedCloudConceptUUIDs_profile_transaction_error___block_invoke;
  v20[3] = &unk_2796CD670;
  v22 = &v23;
  v17 = v10;
  v21 = v17;
  if ([v16 enumerateCodableObjectsForPredicate:v15 limit:0 orderingTerms:0 profile:dsCopy transaction:profileCopy error:transaction handler:v20])
  {
    v18 = v24[3];
  }

  else
  {
    v18 = 0;
  }

  _Block_object_dispose(&v23, 8);
  return v18;
}

uint64_t __134__HDCloudSyncStateUpdaterMedicationDelegate__didUpdateMergedConcepts_cloudState_localState_profile_nonDeletedCloudConceptUUIDs_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uuid];
  v4 = [*(a1 + 32) uuid];
  v5 = [v3 isEqualToData:v4];

  return v5;
}

+ (id)_mergeCloudConcept:(void *)concept localConcept:(void *)localConcept profile:
{
  v6 = a2;
  conceptCopy = concept;
  localConceptCopy = localConcept;
  objc_opt_self();
  deleted = [v6 deleted];
  v10 = v6;
  v11 = v10;
  if ((deleted & 1) == 0)
  {
    v12 = conceptCopy;
    [v12 modificationDate];
    v14 = v13;
    [v10 modificationDate];
    if (v14 <= v15)
    {
      v16 = v12;
      v12 = v10;
    }

    else
    {

      v16 = v10;
    }

    v17 = [MEMORY[0x277CCDAF0] createWithCodableConcept:v12 profile:localConceptCopy];
    v18 = [MEMORY[0x277CCDAF0] createWithCodableConcept:v16 profile:localConceptCopy];
    v19 = [v17 copyUserDomainConceptByMergingInConcept:v18];
    v20 = v19;
    if (v19 == v17)
    {
      v21 = v12;
    }

    else
    {
      v21 = [v19 codableRepresentationForSyncWithProfile:localConceptCopy];
    }

    v11 = v21;
  }

  return v11;
}

+ (uint64_t)_didAddNewLocalConcepts:(void *)concepts toMergedConcepts:
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a2;
  conceptsCopy = concepts;
  objc_opt_self();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = [v4 concepts];
  v6 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v14 = 0;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        concepts = [conceptsCopy concepts];
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __86__HDCloudSyncStateUpdaterMedicationDelegate__didAddNewLocalConcepts_toMergedConcepts___block_invoke;
        v16[3] = &unk_2796CD648;
        v16[4] = v10;
        v12 = [concepts hk_containsObjectPassingTest:v16];

        if ((v12 & 1) == 0)
        {
          [conceptsCopy addConcepts:v10];
          v14 = 1;
        }
      }

      v7 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t __86__HDCloudSyncStateUpdaterMedicationDelegate__didAddNewLocalConcepts_toMergedConcepts___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uuid];
  v4 = [*(a1 + 32) uuid];
  v5 = [v3 isEqualToData:v4];

  return v5;
}

+ (id)_deletedConceptPredicateWithUUIDs:(uint64_t)ds
{
  v9[2] = *MEMORY[0x277D85DE8];
  v2 = a2;
  objc_opt_self();
  v3 = MEMORY[0x277D10B20];
  v4 = [MEMORY[0x277D10B18] predicateWithProperty:*MEMORY[0x277D10508] equalToValue:MEMORY[0x277CBEC38]];
  v9[0] = v4;
  v5 = HDUserDomainConceptEntityPredicateForConceptUUIDs();

  v9[1] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];
  v7 = [v3 predicateMatchingAllPredicates:v6];

  return v7;
}

uint64_t __124__HDCloudSyncStateUpdaterMedicationDelegate__replaceDeletedConceptIn_nonDeletedCloudConceptUUIDs_profile_transaction_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 40) + 8) + 24) = 3;
  v4 = [*(a1 + 32) concepts];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __124__HDCloudSyncStateUpdaterMedicationDelegate__replaceDeletedConceptIn_nonDeletedCloudConceptUUIDs_profile_transaction_error___block_invoke_2;
  v7[3] = &unk_2796CD648;
  v8 = v3;
  v5 = v3;
  [v4 hk_removeObjectsPassingTest:v7];

  [*(a1 + 32) addConcepts:v5];
  return 1;
}

uint64_t __124__HDCloudSyncStateUpdaterMedicationDelegate__replaceDeletedConceptIn_nonDeletedCloudConceptUUIDs_profile_transaction_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 uuid];
  v4 = [*(a1 + 32) uuid];
  v5 = [v3 isEqualToData:v4];

  return v5;
}

- (void)shouldUpdateWithMergedState:cloudState:localState:profile:transaction:error:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"[cloudState isKindOfClass:HDCodableUserDomainConceptCollection.class]" object:? file:? lineNumber:? description:?];
}

- (void)shouldUpdateWithMergedState:cloudState:localState:profile:transaction:error:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"[localState isKindOfClass:HDCodableUserDomainConceptCollection.class]" object:? file:? lineNumber:? description:?];
}

- (void)updateCodableSyncState:withMergeState:profile:error:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"[mergeState isKindOfClass:HDCodableUserDomainConceptCollection.class]" object:? file:? lineNumber:? description:?];
}

- (void)persistCloudState:profile:error:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"[codableCloudState isKindOfClass:HDCodableUserDomainConceptCollection.class]" object:? file:? lineNumber:? description:?];
}

@end