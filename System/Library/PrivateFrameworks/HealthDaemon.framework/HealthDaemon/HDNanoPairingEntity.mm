@interface HDNanoPairingEntity
+ (id)_predicateWithRegistryUUID:(uint64_t)d;
+ (id)foreignKeys;
+ (id)nanoPairingEntityWithRegistryUUID:(id)d database:(id)database error:(id *)error;
+ (id)nanoPairingEntityWithRegistryUUID:(id)d profile:(id)profile error:(id *)error;
+ (id)sourceEntityForRegistryUUID:(id)d profile:(id)profile error:(id *)error;
+ (void)_nanoPairingEntitiesWithPredicate:(void *)predicate database:(uint64_t)database error:;
- (BOOL)saveWithHealthDatabase:(id)database error:(id *)error;
- (id)description;
- (id)resetProvenanceForProfile:(id)profile error:(id *)error;
@end

@implementation HDNanoPairingEntity

void __170__HDNanoPairingEntity__initWithNanoRegistryUUID_persistentUUID_healthDatabaseUUID_sourceBundleIdentifier_deviceIdentifier_syncStoreEntity_restoreComplete_database_error___block_invoke(uint64_t a1, uint64_t a2)
{
  MEMORY[0x22AAC6C00](a2, @"registry_uuid", *(a1 + 32));
  MEMORY[0x22AAC6C00](a2, @"persistent_uuid", *(a1 + 40));
  MEMORY[0x22AAC6C00](a2, @"health_uuid", *(a1 + 48));
  MEMORY[0x22AAC6BD0](a2, @"source_bundle_id", *(a1 + 56));
  MEMORY[0x22AAC6BD0](a2, @"ids_id", *(a1 + 64));
  MEMORY[0x22AAC6B90](a2, @"sync_provenance", [*(a1 + 72) persistentID]);

  JUMPOUT(0x22AAC6B30);
}

+ (id)nanoPairingEntityWithRegistryUUID:(id)d profile:(id)profile error:(id *)error
{
  dCopy = d;
  profileCopy = profile;
  if (!dCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDNanoPairingEntity.m" lineNumber:98 description:{@"Invalid parameter not satisfying: %@", @"nanoRegistryUUID != nil"}];
  }

  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__76;
  v28 = __Block_byref_object_dispose__76;
  v29 = 0;
  database = [profileCopy database];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __71__HDNanoPairingEntity_nanoPairingEntityWithRegistryUUID_profile_error___block_invoke;
  v19[3] = &unk_27861C150;
  selfCopy = self;
  v12 = dCopy;
  v20 = v12;
  v22 = &v24;
  v13 = profileCopy;
  v21 = v13;
  v14 = [self performWriteTransactionWithHealthDatabase:database error:error block:v19];

  if (v14)
  {
    v15 = v25[5];
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  _Block_object_dispose(&v24, 8);

  return v16;
}

BOOL __71__HDNanoPairingEntity_nanoPairingEntityWithRegistryUUID_profile_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v51[7] = *MEMORY[0x277D85DE8];
  v5 = [a2 databaseForEntityClass:*(a1 + 56)];
  v6 = [(HDNanoPairingEntity *)*(a1 + 56) _predicateWithRegistryUUID:?];
  v7 = [(HDNanoPairingEntity *)*(a1 + 56) _nanoPairingEntitiesWithPredicate:v6 database:v5 error:a3];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 firstObject];
    v10 = *(*(a1 + 48) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    if (*(*(*(a1 + 48) + 8) + 40))
    {
      v12 = 1;
    }

    else
    {
      v13 = *(a1 + 32);
      v14 = [*(a1 + 40) database];
      v15 = [HDSyncStoreEntity syncStoreEntityWithUUID:v13 type:1 healthDatabase:v14 error:a3];

      if (v15)
      {
        v16 = [HDNanoPairingEntity alloc];
        v17 = *(a1 + 32);
        v18 = v15;
        v19 = v5;
        v20 = v19;
        v43 = v17;
        v44 = v18;
        if (v16)
        {
          v41 = v15;
          v42 = v19;
          if (!v17)
          {
            v40 = [MEMORY[0x277CCA890] currentHandler];
            v17 = 0;
            [v40 handleFailureInMethod:sel__initWithNanoRegistryUUID_persistentUUID_healthDatabaseUUID_sourceBundleIdentifier_deviceIdentifier_syncStoreEntity_restoreComplete_database_error_ object:v16 file:@"HDNanoPairingEntity.m" lineNumber:55 description:{@"Invalid parameter not satisfying: %@", @"nanoRegistryUUID != nil"}];

            v18 = v44;
          }

          v51[0] = @"registry_uuid";
          v51[1] = @"persistent_uuid";
          v51[2] = @"health_uuid";
          v51[3] = @"source_bundle_id";
          v51[4] = @"ids_id";
          v51[5] = @"sync_provenance";
          v51[6] = @"restored";
          v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:7];
          v22 = objc_opt_class();
          v45[0] = MEMORY[0x277D85DD0];
          v45[1] = 3221225472;
          v45[2] = __170__HDNanoPairingEntity__initWithNanoRegistryUUID_persistentUUID_healthDatabaseUUID_sourceBundleIdentifier_deviceIdentifier_syncStoreEntity_restoreComplete_database_error___block_invoke;
          v45[3] = &unk_27861EB10;
          v23 = v17;
          v46 = v23;
          v47 = 0u;
          v48 = 0u;
          v24 = v18;
          v49 = v24;
          v50 = 0;
          v25 = v22;
          v20 = v42;
          v26 = [v25 insertOrReplaceEntity:0 database:v42 properties:v21 error:a3 bindingHandler:v45];

          if (v26)
          {
            v27 = objc_msgSend_copy(v23);
            v28 = *(v26 + 24);
            *(v26 + 24) = v27;

            v29 = objc_msgSend_copy(0);
            v30 = *(v26 + 32);
            *(v26 + 32) = v29;

            v31 = objc_msgSend_copy(0);
            v32 = *(v26 + 40);
            *(v26 + 40) = v31;

            v33 = objc_msgSend_copy(0);
            v34 = *(v26 + 48);
            *(v26 + 48) = v33;

            v35 = objc_msgSend_copy(0);
            v36 = *(v26 + 56);
            *(v26 + 56) = v35;

            *(v26 + 64) = [v24 persistentID];
            *(v26 + 16) = 0;
          }

          v16 = v26;

          v15 = v41;
        }

        v37 = *(*(a1 + 48) + 8);
        v38 = *(v37 + 40);
        *(v37 + 40) = v16;
      }

      v12 = *(*(*(a1 + 48) + 8) + 40) != 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)_predicateWithRegistryUUID:(uint64_t)d
{
  v2 = a2;
  objc_opt_self();
  v3 = MEMORY[0x277D10B18];
  hk_dataForUUIDBytes = [v2 hk_dataForUUIDBytes];

  v5 = [v3 predicateWithProperty:@"registry_uuid" equalToValue:hk_dataForUUIDBytes];

  return v5;
}

+ (void)_nanoPairingEntitiesWithPredicate:(void *)predicate database:(uint64_t)database error:
{
  v18[7] = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  v7 = a2;
  v8 = objc_opt_self();
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v18[0] = @"registry_uuid";
  v18[1] = @"persistent_uuid";
  v18[2] = @"health_uuid";
  v18[3] = @"source_bundle_id";
  v18[4] = @"ids_id";
  v18[5] = @"sync_provenance";
  v18[6] = @"restored";
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:7];
  v11 = [v8 queryWithDatabase:predicateCopy predicate:v7];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __72__HDNanoPairingEntity__nanoPairingEntitiesWithPredicate_database_error___block_invoke;
  v16[3] = &unk_278615128;
  v17 = v9;
  v12 = v9;
  if ([v11 enumeratePersistentIDsAndProperties:v10 error:database enumerationHandler:v16])
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

+ (id)nanoPairingEntityWithRegistryUUID:(id)d database:(id)database error:(id *)error
{
  databaseCopy = database;
  v9 = [(HDNanoPairingEntity *)self _predicateWithRegistryUUID:d];
  v10 = [(HDNanoPairingEntity *)self _nanoPairingEntitiesWithPredicate:v9 database:databaseCopy error:error];

  firstObject = [v10 firstObject];

  return firstObject;
}

uint64_t __72__HDNanoPairingEntity__nanoPairingEntitiesWithPredicate_database_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = [(HDSQLiteEntity *)[HDNanoPairingEntity alloc] initWithPersistentID:a2];
  v8 = MEMORY[0x22AAC6CA0](a4, 0);
  if (v6)
  {
    objc_setProperty_nonatomic_copy(v6, v7, v8, 24);
  }

  v9 = MEMORY[0x22AAC6CA0](a4, 1);
  [(HDNanoPairingEntity *)v6 setPersistentUUID:v9];

  v10 = MEMORY[0x22AAC6CA0](a4, 2);
  [(HDNanoPairingEntity *)v6 setHealthDatabaseUUID:v10];

  v11 = MEMORY[0x22AAC6C90](a4, 3);
  [(HDNanoPairingEntity *)v6 setDefaultSourceBundleIdentifier:v11];

  v12 = MEMORY[0x22AAC6C90](a4, 4);
  [(HDNanoPairingEntity *)v6 setDeviceIdentifier:v12];

  v13 = HDSQLiteColumnAsInt64();
  if (v6)
  {
    v6->_syncProvenance = v13;
  }

  [(HDNanoPairingEntity *)v6 setRestoreComplete:MEMORY[0x22AAC6C10](a4, 6)];
  [*(a1 + 32) addObject:v6];

  return 1;
}

+ (id)sourceEntityForRegistryUUID:(id)d profile:(id)profile error:(id *)error
{
  dCopy = d;
  profileCopy = profile;
  if (!dCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDNanoPairingEntity.m" lineNumber:187 description:{@"Invalid parameter not satisfying: %@", @"registryUUID != nil"}];
  }

  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__76;
  v28 = __Block_byref_object_dispose__76;
  v29 = 0;
  database = [profileCopy database];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __65__HDNanoPairingEntity_sourceEntityForRegistryUUID_profile_error___block_invoke;
  v19[3] = &unk_27861C150;
  selfCopy = self;
  v12 = dCopy;
  v20 = v12;
  v22 = &v24;
  v13 = profileCopy;
  v21 = v13;
  v14 = [self performReadTransactionWithHealthDatabase:database error:error block:v19];

  if (v14)
  {
    v15 = v25[5];
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  _Block_object_dispose(&v24, 8);

  return v16;
}

BOOL __65__HDNanoPairingEntity_sourceEntityForRegistryUUID_profile_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 databaseForEntityClass:*(a1 + 56)];
  v6 = [(HDNanoPairingEntity *)*(a1 + 56) _predicateWithRegistryUUID:?];
  v7 = [*(a1 + 56) propertyValueForAnyInDatabase:v5 property:@"source_bundle_id" predicate:v6 error:a3];
  if (v7)
  {
    v8 = [*(a1 + 40) sourceManager];
    v9 = [v8 localSourceForBundleIdentifier:v7 error:a3];
    v10 = *(*(a1 + 48) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  else
  {
    v12 = MEMORY[0x277CCA9B8];
    v8 = [*(a1 + 32) UUIDString];
    [v12 hk_assignError:a3 code:100 format:{@"missing source bundle identifier for registry UUID %@", v8}];
  }

  v13 = *(*(*(a1 + 48) + 8) + 40) != 0;
  return v13;
}

- (BOOL)saveWithHealthDatabase:(id)database error:(id *)error
{
  v11[6] = *MEMORY[0x277D85DE8];
  v11[0] = @"persistent_uuid";
  v11[1] = @"health_uuid";
  v11[2] = @"source_bundle_id";
  v11[3] = @"ids_id";
  v11[4] = @"sync_provenance";
  v11[5] = @"restored";
  v6 = MEMORY[0x277CBEA60];
  databaseCopy = database;
  v8 = [v6 arrayWithObjects:v11 count:6];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __52__HDNanoPairingEntity_saveWithHealthDatabase_error___block_invoke;
  v10[3] = &unk_278614508;
  v10[4] = self;
  LOBYTE(error) = [(HDHealthEntity *)self updateProperties:v8 healthDatabase:databaseCopy error:error bindingHandler:v10];

  return error;
}

void __52__HDNanoPairingEntity_saveWithHealthDatabase_error___block_invoke(uint64_t a1, uint64_t a2)
{
  MEMORY[0x22AAC6C00](a2, @"persistent_uuid", *(*(a1 + 32) + 32));
  MEMORY[0x22AAC6C00](a2, @"health_uuid", *(*(a1 + 32) + 40));
  MEMORY[0x22AAC6BD0](a2, @"source_bundle_id", *(*(a1 + 32) + 48));
  MEMORY[0x22AAC6BD0](a2, @"ids_id", *(*(a1 + 32) + 56));
  MEMORY[0x22AAC6B90](a2, @"sync_provenance", *(*(a1 + 32) + 64));

  JUMPOUT(0x22AAC6B30);
}

- (id)resetProvenanceForProfile:(id)profile error:(id *)error
{
  profileCopy = profile;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__76;
  v19 = __Block_byref_object_dispose__76;
  v20 = 0;
  database = [profileCopy database];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __55__HDNanoPairingEntity_resetProvenanceForProfile_error___block_invoke;
  v12[3] = &unk_278615F88;
  v12[4] = self;
  v8 = profileCopy;
  v13 = v8;
  v14 = &v15;
  LODWORD(error) = [(HDHealthEntity *)HDNanoPairingEntity performWriteTransactionWithHealthDatabase:database error:error block:v12];

  if (error)
  {
    v9 = v16[5];
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  _Block_object_dispose(&v15, 8);

  return v10;
}

uint64_t __55__HDNanoPairingEntity_resetProvenanceForProfile_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [HDSyncStoreEntity recreateSyncStoreWithUUID:*(*(a1 + 32) + 24) type:1 profile:*(a1 + 40) error:a3];
  if (v5 && ([HDNanoPairingEntity nanoPairingEntityWithRegistryUUID:*(*(a1 + 32) + 24) profile:*(a1 + 40) error:a3], v6 = objc_claimAutoreleasedReturnValue(), v7 = *(*(a1 + 48) + 8), v8 = *(v7 + 40), *(v7 + 40) = v6, v8, *(*(*(a1 + 48) + 8) + 40)))
  {
    v9 = [*(a1 + 32) persistentUUID];
    [*(*(*(a1 + 48) + 8) + 40) setPersistentUUID:v9];

    v10 = [*(a1 + 32) healthDatabaseUUID];
    [*(*(*(a1 + 48) + 8) + 40) setHealthDatabaseUUID:v10];

    v11 = [*(a1 + 32) defaultSourceBundleIdentifier];
    [*(*(*(a1 + 48) + 8) + 40) setDefaultSourceBundleIdentifier:v11];

    v12 = [*(a1 + 32) deviceIdentifier];
    [*(*(*(a1 + 48) + 8) + 40) setDeviceIdentifier:v12];

    v13 = [v5 persistentID];
    v14 = *(*(*(a1 + 48) + 8) + 40);
    if (v14)
    {
      *(v14 + 64) = v13;
    }

    [*(*(*(a1 + 48) + 8) + 40) setRestoreComplete:{objc_msgSend(*(a1 + 32), "isRestoreComplete")}];
    v15 = *(a1 + 40);
    v16 = *(*(*(a1 + 48) + 8) + 40);
    v17 = [v15 database];
    v18 = [v16 saveWithHealthDatabase:v17 error:a3];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

+ (id)foreignKeys
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"sync_provenance";
  v2 = +[(HDHealthEntity *)HDSyncStoreEntity];
  v6[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  uUIDString = [(NSUUID *)self->_nanoRegistryUUID UUIDString];
  uUIDString2 = [(NSUUID *)self->_persistentUUID UUIDString];
  uUIDString3 = [(NSUUID *)self->_healthDatabaseUUID UUIDString];
  v8 = [v3 stringWithFormat:@"<%@:%p registry:%@ persistent:%@ health:%@ device:%@>", v4, self, uUIDString, uUIDString2, uUIDString3, self->_deviceIdentifier, 0];

  return v8;
}

@end