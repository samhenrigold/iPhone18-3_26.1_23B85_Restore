@interface HDDatabasePruningShowShim
+ (BOOL)canPerformRecentRecordRollWithProfile:(id)profile;
+ (BOOL)datesMatchSampleStartDate:(id)date sampleEndDate:(id)endDate shardStartDate:(id)startDate shardEndDate:(id)shardEndDate;
+ (id)_instantiateStores:(id)stores profile:(id)profile error:(id *)error;
+ (id)_persistentIDForSyncIdentity:(id)identity profile:(id)profile error:(id *)error;
+ (id)_syncStoresInProfile:(id)profile error:(id *)error;
+ (id)activeStoresForMaxAnchorWithProfile:(id)profile referenceDate:(id)date error:(id *)error;
+ (id)activeStoresForRestrictionPredicatesWithProfile:(id)profile referenceDate:(id)date error:(id *)error;
+ (id)deletedSampleInProfile:(id)profile sampleUUID:(id)d error:(id *)error;
+ (id)deletedSampleSyncEntityClassName;
+ (id)deletedSampleSyncEntityIdentifier;
+ (id)deletedSamplesInProfile:(id)profile anchor:(int64_t)anchor limit:(unint64_t)limit error:(id *)error;
+ (id)deletedSamplesInProfile:(id)profile createdOnOrAfter:(id)after createdBefore:(id)before limit:(unint64_t)limit error:(id *)error;
+ (id)entitiesInProfile:(id)profile referenceDate:(id)date shouldIncludeEntity:(id)entity error:(id *)error;
+ (id)syncIdentitiesInProfile:(id)profile error:(id *)error;
+ (id)syncStoresInProfile:(id)profile shouldIncludeEntityIdentifier:(id)identifier error:(id *)error;
+ (int64_t)currentSyncIdentityWithProfile:(id)profile;
@end

@implementation HDDatabasePruningShowShim

+ (BOOL)canPerformRecentRecordRollWithProfile:(id)profile
{
  cloudSyncManager = [profile cloudSyncManager];
  canPerformRecentRecordRoll = [cloudSyncManager canPerformRecentRecordRoll];

  return canPerformRecentRecordRoll;
}

+ (int64_t)currentSyncIdentityWithProfile:(id)profile
{
  syncIdentityManager = [profile syncIdentityManager];
  currentSyncIdentity = [syncIdentityManager currentSyncIdentity];
  entity = [currentSyncIdentity entity];
  persistentID = [entity persistentID];

  return persistentID;
}

+ (id)deletedSampleSyncEntityClassName
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (id)deletedSampleSyncEntityIdentifier
{
  v2 = objc_opt_class();

  return [v2 syncEntityIdentifier];
}

+ (id)activeStoresForRestrictionPredicatesWithProfile:(id)profile referenceDate:(id)date error:(id *)error
{
  v11 = 0;
  v6 = [HDSyncStoreEntity activeStoresForRestrictionPredictePruningInProfile:profile referenceDate:date error:&v11];
  v7 = v11;
  if (v7)
  {
    if (error)
    {
      v8 = v7;
      v9 = 0;
      *error = v7;
    }

    else
    {
      _HKLogDroppedError();
      v9 = 0;
    }
  }

  else
  {
    v9 = [v6 hk_mapToSet:&__block_literal_global_81];
  }

  return v9;
}

+ (id)activeStoresForMaxAnchorWithProfile:(id)profile referenceDate:(id)date error:(id *)error
{
  v11 = 0;
  v6 = [HDSyncStoreEntity activeStoresForMaxAnchorPruningInProfile:profile referenceDate:date error:&v11];
  v7 = v11;
  if (v7)
  {
    if (error)
    {
      v8 = v7;
      v9 = 0;
      *error = v7;
    }

    else
    {
      _HKLogDroppedError();
      v9 = 0;
    }
  }

  else
  {
    v9 = v6;
  }

  return v9;
}

+ (id)syncIdentitiesInProfile:(id)profile error:(id *)error
{
  v5 = MEMORY[0x277CBEB18];
  profileCopy = profile;
  v7 = objc_alloc_init(v5);
  syncIdentityManager = [profileCopy syncIdentityManager];

  v18 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __59__HDDatabasePruningShowShim_syncIdentitiesInProfile_error___block_invoke;
  v16[3] = &unk_27861EC18;
  v9 = v7;
  v17 = v9;
  v10 = [syncIdentityManager enumerateConcreteIdentitiesError:&v18 enumerationHandler:v16];
  v11 = v18;

  if (v10)
  {
    v12 = v9;
  }

  else
  {
    v13 = v11;
    if (v13)
    {
      if (error)
      {
        v14 = v13;
        *error = v13;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v12 = 0;
  }

  return v12;
}

uint64_t __59__HDDatabasePruningShowShim_syncIdentitiesInProfile_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [HDDatabasePruningShowSyncIdentity alloc];
  v5 = [v3 entity];
  v6 = [v5 persistentID];
  v7 = [v3 identity];
  v8 = [v7 hardwareIdentifier];
  v9 = [v3 identity];
  v10 = [v9 databaseIdentifier];
  v11 = [v3 identity];

  v12 = [v11 instanceDiscriminator];
  v13 = [(HDDatabasePruningShowSyncIdentity *)v4 initWithPersistentID:v6 hardwareIdentifier:v8 databaseIdentifier:v10 instanceDiscriminator:v12];
  [v2 addObject:v13];

  return 1;
}

+ (id)_syncStoresInProfile:(id)profile error:(id *)error
{
  v5 = MEMORY[0x277CBEB18];
  profileCopy = profile;
  v7 = objc_alloc_init(v5);
  database = [profileCopy database];

  v18 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __56__HDDatabasePruningShowShim__syncStoresInProfile_error___block_invoke;
  v16[3] = &unk_278616048;
  v9 = v7;
  v17 = v9;
  v10 = [(HDHealthEntity *)HDSyncStoreEntity performReadTransactionWithHealthDatabase:database error:&v18 block:v16];
  v11 = v18;

  if (v10)
  {
    v12 = v9;
  }

  else
  {
    v13 = v11;
    if (v13)
    {
      if (error)
      {
        v14 = v13;
        *error = v13;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v12 = 0;
  }

  return v12;
}

BOOL __56__HDDatabasePruningShowShim__syncStoresInProfile_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [v5 databaseForEntityClass:objc_opt_class()];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __56__HDDatabasePruningShowShim__syncStoresInProfile_error___block_invoke_2;
  v10[3] = &unk_27861EC40;
  v11 = v6;
  v12 = *(a1 + 32);
  v7 = v6;
  v8 = [(HDSQLiteEntity *)HDSyncStoreEntity enumerateEntitiesInDatabase:v7 predicate:0 error:a3 enumerationHandler:v10];

  return v8;
}

uint64_t __56__HDDatabasePruningShowShim__syncStoresInProfile_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 UUIDForProperty:@"uuid" database:v3];
  v6 = [v4 numberForProperty:@"type" database:*(a1 + 32)];
  v7 = [v4 dateForProperty:@"creation_date" database:*(a1 + 32)];
  v8 = *(a1 + 40);
  v9 = [HDDatabasePruningShowSyncStore alloc];
  v10 = [v4 persistentID];

  v11 = [(HDDatabasePruningShowSyncStore *)v9 initWithPersistentID:v10 identifier:v5 type:v6 creationDate:v7];
  [v8 addObject:v11];

  return 1;
}

+ (id)_persistentIDForSyncIdentity:(id)identity profile:(id)profile error:(id *)error
{
  identityCopy = identity;
  profileCopy = profile;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__77;
  v28 = __Block_byref_object_dispose__77;
  v29 = 0;
  database = [profileCopy database];
  v23 = 0;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __72__HDDatabasePruningShowShim__persistentIDForSyncIdentity_profile_error___block_invoke;
  v19[3] = &unk_278615F88;
  v10 = profileCopy;
  v20 = v10;
  v11 = identityCopy;
  v21 = v11;
  v22 = &v24;
  v12 = [(HDHealthEntity *)HDSyncStoreEntity performReadTransactionWithHealthDatabase:database error:&v23 block:v19];
  v13 = v23;

  if (v12)
  {
    v14 = v25[5];
  }

  else
  {
    v15 = v13;
    v16 = v15;
    if (v15)
    {
      if (error)
      {
        v17 = v15;
        *error = v16;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v14 = 0;
  }

  _Block_object_dispose(&v24, 8);

  return v14;
}

BOOL __72__HDDatabasePruningShowShim__persistentIDForSyncIdentity_profile_error___block_invoke(void *a1, void *a2, uint64_t *a3)
{
  v5 = a1[4];
  v6 = a2;
  v7 = [v5 syncIdentityManager];
  v8 = [v7 concreteIdentityForIdentity:a1[5] shouldCreate:0 transaction:v6 error:a3];

  v9 = *a3;
  if (!*a3 && v8)
  {
    v10 = MEMORY[0x277CCABB0];
    v11 = [v8 entity];
    v12 = [v10 numberWithLongLong:{objc_msgSend(v11, "persistentID")}];
    v13 = *(a1[6] + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;
  }

  return v9 == 0;
}

+ (id)_instantiateStores:(id)stores profile:(id)profile error:(id *)error
{
  storesCopy = stores;
  profileCopy = profile;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__77;
  v25 = __Block_byref_object_dispose__77;
  v26 = 0;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __62__HDDatabasePruningShowShim__instantiateStores_profile_error___block_invoke;
  v18[3] = &unk_27861EC68;
  v20 = &v21;
  v9 = profileCopy;
  v19 = v9;
  v10 = [storesCopy hk_map:v18];
  v11 = v10;
  v12 = v22[5];
  if (v12)
  {
    v13 = v12;
    v14 = v13;
    if (error)
    {
      v15 = v13;
      *error = v14;
    }

    else
    {
      _HKLogDroppedError();
    }

    v16 = 0;
  }

  else
  {
    v16 = v10;
  }

  _Block_object_dispose(&v21, 8);

  return v16;
}

id __62__HDDatabasePruningShowShim__instantiateStores_profile_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!*(*(*(a1 + 40) + 8) + 40) && (v7 = HDSyncStoreClassForSyncStoreType([v3 type])) != 0 && objc_msgSend(v7, "providesSamplePruningRestrictionPredicate"))
  {
    v8 = *(a1 + 32);
    v9 = *(*(a1 + 40) + 8);
    obj = *(v9 + 40);
    v5 = HDInstantiateSyncStore(v8, v4, &obj);
    objc_storeStrong((v9 + 40), obj);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)syncStoresInProfile:(id)profile shouldIncludeEntityIdentifier:(id)identifier error:(id *)error
{
  profileCopy = profile;
  identifierCopy = identifier;
  v52 = 0;
  v53 = &v52;
  v54 = 0x3032000000;
  v55 = __Block_byref_object_copy__77;
  v56 = __Block_byref_object_dispose__77;
  v57 = 0;
  obj = 0;
  v10 = [self _syncStoresInProfile:profileCopy error:&obj];
  objc_storeStrong(&v57, obj);
  v12 = (v53 + 5);
  v11 = v53[5];
  if (v11)
  {
    v13 = v11;
    v14 = v13;
    if (error)
    {
      v15 = v13;
      v16 = 0;
      *error = v14;
    }

    else
    {
      _HKLogDroppedError();
      v16 = 0;
    }
  }

  else
  {
    v50 = 0;
    v14 = [HDSyncAnchorEntity latestFrozenAnchorUpdatePerStoreInProfile:profileCopy error:&v50];
    objc_storeStrong(v12, v50);
    v18 = (v53 + 5);
    v17 = v53[5];
    if (v17)
    {
      v19 = v17;
      v20 = v19;
      if (error)
      {
        v21 = v19;
        v16 = 0;
        *error = v20;
      }

      else
      {
        _HKLogDroppedError();
        v16 = 0;
      }
    }

    else
    {
      v49 = 0;
      v20 = [HDSyncAnchorEntity frozenAnchorMapPerStoreInProfile:profileCopy error:&v49];
      objc_storeStrong(v18, v49);
      v22 = v53[5];
      if (v22)
      {
        v23 = v22;
        v24 = v23;
        if (error)
        {
          v25 = v23;
          v16 = 0;
          *error = v24;
        }

        else
        {
          _HKLogDroppedError();
          v16 = 0;
        }
      }

      else
      {
        v24 = [v10 hk_map:&__block_literal_global_439];
        v26 = (v53 + 5);
        v48 = v53[5];
        v39 = [self _instantiateStores:v24 profile:profileCopy error:&v48];
        objc_storeStrong(v26, v48);
        v27 = v53[5];
        if (v27)
        {
          v28 = v27;
          v29 = v28;
          if (error)
          {
            v30 = v28;
            v16 = 0;
            *error = v29;
          }

          else
          {
            _HKLogDroppedError();
            v16 = 0;
          }
        }

        else
        {
          v31 = [v39 hk_mapToDictionary:&__block_literal_global_443];
          v40[0] = MEMORY[0x277D85DD0];
          v40[1] = 3221225472;
          v40[2] = __85__HDDatabasePruningShowShim_syncStoresInProfile_shouldIncludeEntityIdentifier_error___block_invoke_3;
          v40[3] = &unk_27861ECF8;
          v46 = &v52;
          v29 = v31;
          v41 = v29;
          selfCopy = self;
          v42 = profileCopy;
          v43 = v20;
          v45 = identifierCopy;
          v44 = v14;
          v32 = [v10 hk_map:v40];
          v33 = v32;
          v34 = v53[5];
          if (v34)
          {
            v35 = v34;
            v36 = v35;
            if (error)
            {
              v37 = v35;
              *error = v36;
            }

            else
            {
              _HKLogDroppedError();
            }

            v16 = 0;
          }

          else
          {
            v16 = v32;
          }
        }
      }
    }
  }

  _Block_object_dispose(&v52, 8);

  return v16;
}

HDTypedSyncStoreIdentifier *__85__HDDatabasePruningShowShim_syncStoresInProfile_shouldIncludeEntityIdentifier_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [HDTypedSyncStoreIdentifier alloc];
  v4 = [v2 identifier];
  v5 = [v2 type];

  v6 = -[HDTypedSyncStoreIdentifier initWithIdentifier:type:](v3, "initWithIdentifier:type:", v4, [v5 integerValue]);

  return v6;
}

void __85__HDDatabasePruningShowShim_syncStoresInProfile_shouldIncludeEntityIdentifier_error___block_invoke_2(uint64_t a1, void *a2, void (**a3)(void, void, void))
{
  v5 = a3;
  v6 = a2;
  v7 = [v6 syncStoreIdentifier];
  (a3)[2](v5, v7, v6);
}

HDDatabasePruningShowSyncStore *__85__HDDatabasePruningShowShim_syncStoresInProfile_shouldIncludeEntityIdentifier_error___block_invoke_3(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(*(a1[9] + 8) + 40))
  {
    v5 = 0;
    goto LABEL_17;
  }

  v6 = a1[4];
  v7 = [v3 identifier];
  v8 = [v6 objectForKeyedSubscript:v7];

  if (!v8 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v37 = 0;
    v38 = 0;
    v40 = 0;
    v41 = 0;
    v35 = 0;
    goto LABEL_12;
  }

  v9 = v8;
  v10 = [v9 syncIdentity];

  if (!v10)
  {
    v37 = 0;
LABEL_11:
    v16 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v9, "_isSupportedShardTypeForRestrictionPredicates")}];
    v17 = [v9 cachedCurrentSequenceEpochs];
    v41 = [v17 activeEpoch];

    v18 = [v9 cachedCurrentSequenceEpochs];
    v40 = [v18 pendingEpoch];

    v19 = [v9 cachedCurrentSequenceEpochs];
    v35 = [v19 tombstoneEpoch];

    v38 = v16;
LABEL_12:
    v20 = a1[6];
    v21 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v4, "persitentID")}];
    v22 = [v20 objectForKeyedSubscript:v21];

    v39 = v8;
    if (v22)
    {
      v23 = a1[8];
      if (v23)
      {
        v42[0] = MEMORY[0x277D85DD0];
        v42[1] = 3221225472;
        v42[2] = __85__HDDatabasePruningShowShim_syncStoresInProfile_shouldIncludeEntityIdentifier_error___block_invoke_4;
        v42[3] = &unk_27861ECD0;
        v43 = v23;
        v24 = [v22 hk_filter:v42];

        v22 = v24;
      }
    }

    v34 = [HDDatabasePruningShowSyncStore alloc];
    v25 = v4;
    v33 = [v4 persitentID];
    v26 = [v4 identifier];
    v27 = [v25 type];
    v28 = [v25 creationDate];
    v29 = a1[7];
    v30 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v25, "persitentID")}];
    v31 = [v29 objectForKeyedSubscript:v30];
    v36 = v25;
    v15 = v37;
    v9 = v38;
    v5 = [(HDDatabasePruningShowSyncStore *)v34 initWithPersistentID:v33 identifier:v26 type:v27 creationDate:v28 latestFrozenAnchorDate:v31 frozenAnchorMap:v22 syncIdentity:v37 isSupportedShardType:v38 activeEpoch:v41 pendingEpoch:v40 tombstoneEpoch:v35];

    v4 = v36;
    v8 = v39;
    goto LABEL_16;
  }

  v11 = a1[10];
  v12 = [v9 syncIdentity];
  v13 = a1[5];
  v14 = *(a1[9] + 8);
  v44[0] = *(v14 + 40);
  v15 = [v11 _persistentIDForSyncIdentity:v12 profile:v13 error:v44];
  objc_storeStrong((v14 + 40), v44[0]);

  if (!*(*(a1[9] + 8) + 40))
  {
    v37 = v15;
    goto LABEL_11;
  }

  v5 = 0;
LABEL_16:

LABEL_17:

  return v5;
}

+ (id)entitiesInProfile:(id)profile referenceDate:(id)date shouldIncludeEntity:(id)entity error:(id *)error
{
  v81 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  dateCopy = date;
  entityCopy = entity;
  v13 = [[HDDatabasePruningTask alloc] initWithProfile:profileCopy];
  _untypedEntityClasses = [(HDDatabasePruningTask *)v13 _untypedEntityClasses];
  v78 = 0;
  v15 = [self _syncStoresInProfile:profileCopy error:&v78];
  v16 = v78;
  if (v16)
  {
    v17 = v16;
    if (error)
    {
      v18 = v16;
      v19 = 0;
      *error = v17;
    }

    else
    {
      _HKLogDroppedError();
      v19 = 0;
    }
  }

  else
  {
    errorCopy = error;
    v20 = [v15 hk_map:&__block_literal_global_449];
    v77 = 0;
    v65 = [self _instantiateStores:v20 profile:profileCopy error:&v77];
    v21 = v77;
    if (v21)
    {
      v17 = v21;
      if (errorCopy)
      {
        v22 = v21;
        v19 = 0;
        *errorCopy = v17;
      }

      else
      {
        _HKLogDroppedError();
        v19 = 0;
      }
    }

    else
    {
      v76 = 0;
      v63 = [(HDDatabasePruningTask *)v13 _minimumFrozenAnchorMapForPruningDate:dateCopy error:&v76];
      v23 = v76;
      if (v23)
      {
        v17 = v23;
        if (errorCopy)
        {
          v24 = v23;
          v19 = 0;
          *errorCopy = v17;
        }

        else
        {
          _HKLogDroppedError();
          v19 = 0;
        }
      }

      else
      {
        v60 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v72 = 0u;
        v73 = 0u;
        v74 = 0u;
        v75 = 0u;
        obj = _untypedEntityClasses;
        v58 = [obj countByEnumeratingWithState:&v72 objects:v80 count:16];
        if (v58)
        {
          v59 = *v73;
          v50 = _untypedEntityClasses;
          v51 = dateCopy;
          v54 = entityCopy;
          v48 = v20;
          v49 = v15;
          do
          {
            v25 = 0;
            v26 = v58;
            v27 = v59;
            do
            {
              if (*v73 != v27)
              {
                objc_enumerationMutation(obj);
              }

              v28 = *(*(&v72 + 1) + 8 * v25);
              v29 = NSStringFromClass(v28);
              if (!entityCopy || entityCopy[2](entityCopy, v29))
              {
                if (objc_opt_respondsToSelector())
                {
                  v30 = 1;
                }

                else
                {
                  v30 = objc_opt_respondsToSelector();
                }

                v61 = objc_opt_respondsToSelector();
                v66 = objc_alloc_init(MEMORY[0x277CBEB38]);
                if ([(objc_class *)v28 conformsToProtocol:&unk_283CCCD88])
                {
                  v52 = v30;
                  v53 = v25;
                  v57 = v29;
                  syncEntityIdentifier = [(objc_class *)v28 syncEntityIdentifier];
                  v55 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v63, "anchorForSyncEntityClass:", v28)}];
                  v68 = 0u;
                  v69 = 0u;
                  v70 = 0u;
                  v71 = 0u;
                  v31 = v65;
                  v32 = [v31 countByEnumeratingWithState:&v68 objects:v79 count:16];
                  if (v32)
                  {
                    v33 = v32;
                    v34 = *v69;
                    while (2)
                    {
                      for (i = 0; i != v33; ++i)
                      {
                        if (*v69 != v34)
                        {
                          objc_enumerationMutation(v31);
                        }

                        v36 = *(*(&v68 + 1) + 8 * i);
                        if ([v36 providesSamplePruningRestrictionPredicate])
                        {
                          v67 = 0;
                          v37 = [v36 samplePruningRestrictionPredicateForSyncEntity:v28 error:&v67];
                          v38 = v67;
                          if (v38)
                          {
                            v17 = v38;
                            if (errorCopy)
                            {
                              v46 = v38;
                              *errorCopy = v17;
                            }

                            else
                            {
                              _HKLogDroppedError();
                            }

                            _untypedEntityClasses = v50;
                            dateCopy = v51;
                            entityCopy = v54;
                            v20 = v48;
                            v15 = v49;

                            v19 = 0;
                            v45 = v60;
                            goto LABEL_46;
                          }

                          if (v37)
                          {
                            syncStoreIdentifier = [v36 syncStoreIdentifier];
                            [v66 setObject:v37 forKey:syncStoreIdentifier];
                          }
                        }
                      }

                      v33 = [v31 countByEnumeratingWithState:&v68 objects:v79 count:16];
                      if (v33)
                      {
                        continue;
                      }

                      break;
                    }
                  }

                  v25 = v53;
                  entityCopy = v54;
                  v29 = v57;
                  v26 = v58;
                  v41 = v55;
                  v40 = syncEntityIdentifier;
                  v30 = v52;
                }

                else
                {
                  v40 = 0;
                  v41 = 0;
                }

                v42 = [[HDDatabasePruningShowEntity alloc] initWithClassName:v29 identifier:v40 supportsPruning:v30 & 1 supportsPruningRestrictionPredicates:v61 & 1 maximumPruningAnchor:v41 pruningRestrictionPredicates:v66];
                v43 = v40;
                v44 = v42;
                [v60 addObject:v42];

                v27 = v59;
              }

              ++v25;
            }

            while (v25 != v26);
            _untypedEntityClasses = v50;
            dateCopy = v51;
            v20 = v48;
            v15 = v49;
            v58 = [obj countByEnumeratingWithState:&v72 objects:v80 count:16];
          }

          while (v58);
        }

        v45 = v60;
        v19 = v60;
        v17 = 0;
LABEL_46:
      }
    }
  }

  return v19;
}

HDTypedSyncStoreIdentifier *__87__HDDatabasePruningShowShim_entitiesInProfile_referenceDate_shouldIncludeEntity_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [HDTypedSyncStoreIdentifier alloc];
  v4 = [v2 identifier];
  v5 = [v2 type];

  v6 = -[HDTypedSyncStoreIdentifier initWithIdentifier:type:](v3, "initWithIdentifier:type:", v4, [v5 integerValue]);

  return v6;
}

+ (id)deletedSampleInProfile:(id)profile sampleUUID:(id)d error:(id *)error
{
  profileCopy = profile;
  dCopy = d;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__77;
  v17 = __Block_byref_object_dispose__77;
  v18 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __69__HDDatabasePruningShowShim_deletedSampleInProfile_sampleUUID_error___block_invoke;
  v12[3] = &unk_27861ED20;
  v12[4] = &v13;
  if ([HDDeletedSampleEntity deletedSampleInProfile:profileCopy sampleUUID:dCopy error:error handler:v12])
  {
    v9 = v14[5];
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  _Block_object_dispose(&v13, 8);

  return v10;
}

void __69__HDDatabasePruningShowShim_deletedSampleInProfile_sampleUUID_error___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7)
{
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [[HDDatabasePruningShowDeletedSample alloc] initWithRowID:a2 identifier:v16 creationDate:v15 startDate:v14 endDate:v13 syncIdentity:a7];

  v18 = *(*(a1 + 32) + 8);
  v19 = *(v18 + 40);
  *(v18 + 40) = v17;
}

+ (id)deletedSamplesInProfile:(id)profile anchor:(int64_t)anchor limit:(unint64_t)limit error:(id *)error
{
  v9 = MEMORY[0x277CBEB18];
  profileCopy = profile;
  v11 = objc_alloc_init(v9);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __72__HDDatabasePruningShowShim_deletedSamplesInProfile_anchor_limit_error___block_invoke;
  v16[3] = &unk_27861ED48;
  v17 = v11;
  v12 = v11;
  LODWORD(error) = [HDDeletedSampleEntity enumerateDeletedSamplesInProfile:profileCopy anchor:anchor limit:limit error:error handler:v16];

  if (error)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  return v13;
}

void __72__HDDatabasePruningShowShim_deletedSamplesInProfile_anchor_limit_error___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7)
{
  v12 = *(a1 + 32);
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [[HDDatabasePruningShowDeletedSample alloc] initWithRowID:a2 identifier:v16 creationDate:v15 startDate:v14 endDate:v13 syncIdentity:a7];

  [v12 addObject:v17];
}

+ (id)deletedSamplesInProfile:(id)profile createdOnOrAfter:(id)after createdBefore:(id)before limit:(unint64_t)limit error:(id *)error
{
  v11 = MEMORY[0x277CBEB18];
  beforeCopy = before;
  afterCopy = after;
  profileCopy = profile;
  v15 = objc_alloc_init(v11);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __96__HDDatabasePruningShowShim_deletedSamplesInProfile_createdOnOrAfter_createdBefore_limit_error___block_invoke;
  v20[3] = &unk_27861ED48;
  v21 = v15;
  v16 = v15;
  LODWORD(error) = [HDDeletedSampleEntity enumerateDeletedSamplesInProfile:profileCopy createdOnOrAfter:afterCopy createdBefore:beforeCopy limit:limit error:error handler:v20];

  if (error)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;

  return v17;
}

void __96__HDDatabasePruningShowShim_deletedSamplesInProfile_createdOnOrAfter_createdBefore_limit_error___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7)
{
  v12 = *(a1 + 32);
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [[HDDatabasePruningShowDeletedSample alloc] initWithRowID:a2 identifier:v16 creationDate:v15 startDate:v14 endDate:v13 syncIdentity:a7];

  [v12 addObject:v17];
}

+ (BOOL)datesMatchSampleStartDate:(id)date sampleEndDate:(id)endDate shardStartDate:(id)startDate shardEndDate:(id)shardEndDate
{
  dateCopy = date;
  endDateCopy = endDate;
  v11 = [HDCloudSyncStore shardIntervalWithStartDate:startDate endDate:shardEndDate];
  v12 = v11;
  if (dateCopy)
  {
    v13 = endDateCopy == 0;
  }

  else
  {
    v13 = 1;
  }

  v14 = v13;
  if (v11)
  {
    v15 = 0;
  }

  else
  {
    v15 = v14;
  }

  if ((v14 & 1) == 0 && v11)
  {
    [dateCopy timeIntervalSince1970];
    v17 = v16;
    endDate = [v12 endDate];
    [endDate timeIntervalSince1970];
    if (v17 <= v19)
    {
      [dateCopy timeIntervalSince1970];
      v21 = v20;
      startDate = [v12 startDate];
      v23 = [startDate dateByAddingTimeInterval:-*MEMORY[0x277CCCD58]];
      [v23 timeIntervalSince1970];
      if (v21 >= v24)
      {
        [endDateCopy timeIntervalSince1970];
        v26 = v25;
        startDate2 = [v12 startDate];
        [startDate2 timeIntervalSince1970];
        v15 = v26 >= v28;
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  return v15;
}

@end