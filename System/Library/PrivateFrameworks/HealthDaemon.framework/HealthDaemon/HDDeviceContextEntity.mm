@interface HDDeviceContextEntity
+ (BOOL)deleteDeviceContextWithSyncIdentity:(int64_t)identity profile:(id)profile error:(id *)error;
+ (BOOL)enumerateDeviceContextWithTransaction:(id)transaction error:(id *)error enumerationHandler:(id)handler;
+ (BOOL)updateDeviceContext:(id)context transaction:(id)transaction error:(id *)error;
+ (BOOL)updateSoftwareVersionForDeviceContext:(id)context transaction:(id)transaction error:(id *)error;
+ (id)_contextForEntity:(void *)entity transaction:(uint64_t)transaction error:;
+ (id)_deviceContextWithSyncIdentity:(void *)identity transaction:(uint64_t)transaction error:;
+ (id)_predicateForSyncEntityIdentity:(uint64_t)identity;
+ (id)_propertiesForEntity;
+ (id)deviceContextEntityWithSyncIdentity:(int64_t)identity transaction:(id)transaction error:(id *)error;
+ (id)deviceContextForLocalSyncIdentityWithProfile:(id)profile transaction:(id)transaction error:(id *)error;
+ (id)foreignKeys;
+ (id)insertDeviceContext:(id)context transaction:(id)transaction error:(id *)error;
+ (id)lookupDeviceContext:(id)context transaction:(id)transaction error:(id *)error;
+ (id)lookupOrCreateDeviceContextForLocalSyncIdentityWithProfile:(id)profile transaction:(id)transaction error:(id *)error;
+ (id)lookupOrCreateDeviceContextForSyncIdentity:(id)identity WithTransaction:(id)transaction error:(id *)error;
@end

@implementation HDDeviceContextEntity

+ (BOOL)enumerateDeviceContextWithTransaction:(id)transaction error:(id *)error enumerationHandler:(id)handler
{
  transactionCopy = transaction;
  handlerCopy = handler;
  v10 = [transactionCopy databaseForEntityClass:objc_opt_class()];
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__16;
  v27 = __Block_byref_object_dispose__16;
  v28 = 0;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __88__HDDeviceContextEntity_enumerateDeviceContextWithTransaction_error_enumerationHandler___block_invoke;
  v18[3] = &unk_278615698;
  selfCopy = self;
  v11 = transactionCopy;
  v19 = v11;
  v21 = &v23;
  v12 = handlerCopy;
  v20 = v12;
  v13 = [(HDSQLiteEntity *)HDDeviceContextEntity enumerateEntitiesInDatabase:v10 predicate:0 error:error enumerationHandler:v18];
  v14 = v24[5];
  v15 = v14;
  if (v14)
  {
    if (error)
    {
      v16 = v14;
      *error = v15;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  _Block_object_dispose(&v23, 8);
  return v13;
}

uint64_t __88__HDDeviceContextEntity_enumerateDeviceContextWithTransaction_error_enumerationHandler___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[7];
  v5 = *(a1[6] + 8);
  obj = *(v5 + 40);
  v6 = [(HDDeviceContextEntity *)v4 _contextForEntity:a2 transaction:v3 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  if (v6)
  {
    v7 = a1[5];
    v8 = *(a1[6] + 8);
    v11 = *(v8 + 40);
    v9 = (*(v7 + 16))();
    objc_storeStrong((v8 + 40), v11);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)_contextForEntity:(void *)entity transaction:(uint64_t)transaction error:
{
  v6 = a2;
  entityCopy = entity;
  v8 = objc_opt_self();
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__16;
  v21 = __Block_byref_object_dispose__16;
  v22 = 0;
  v9 = +[(HDDeviceContextEntity *)v8];
  unprotectedDatabase = [entityCopy unprotectedDatabase];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __61__HDDeviceContextEntity__contextForEntity_transaction_error___block_invoke;
  v14[3] = &unk_2786156E0;
  v11 = entityCopy;
  v15 = v11;
  v16 = &v17;
  LOBYTE(transaction) = [v6 getValuesForProperties:v9 database:unprotectedDatabase error:transaction handler:v14];

  if (transaction)
  {
    v12 = v18[5];
  }

  else
  {
    v12 = 0;
  }

  _Block_object_dispose(&v17, 8);

  return v12;
}

+ (id)insertDeviceContext:(id)context transaction:(id)transaction error:(id *)error
{
  contextCopy = context;
  transactionCopy = transaction;
  syncIdentity = [contextCopy syncIdentity];
  v11 = [HDSyncIdentityEntity insertOrLookupConcreteIdentityForIdentity:syncIdentity transaction:transactionCopy error:error];

  if (v11)
  {
    unprotectedDatabase = [transactionCopy unprotectedDatabase];
    v13 = +[(HDDeviceContextEntity *)self];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __63__HDDeviceContextEntity_insertDeviceContext_transaction_error___block_invoke;
    v18[3] = &unk_278613DE8;
    v19 = v11;
    v20 = contextCopy;
    v14 = [self insertOrReplaceEntity:0 database:unprotectedDatabase properties:v13 error:error bindingHandler:v18];
  }

  else
  {
    v15 = [MEMORY[0x277CCA9B8] hk_error:11 description:@"Failed to create/lookup concrete sync identity while inserting device context"];
    if (v15)
    {
      if (error)
      {
        v16 = v15;
        *error = v15;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v14 = 0;
  }

  return v14;
}

+ (id)_propertiesForEntity
{
  v3[6] = *MEMORY[0x277D85DE8];
  objc_opt_self();
  v3[0] = @"sync_identity_id";
  v3[1] = @"device_type";
  v3[2] = @"currentOS_name";
  v3[3] = @"currentOS_version";
  v3[4] = @"product_type_name";
  v3[5] = @"date_modified";
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:6];

  return v1;
}

uint64_t __63__HDDeviceContextEntity_insertDeviceContext_transaction_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) entity];
  MEMORY[0x22AAC6B90](a2, @"sync_identity_id", [v4 persistentID]);

  MEMORY[0x22AAC6B90](a2, @"device_type", [*(a1 + 40) type]);
  v5 = [*(a1 + 40) currentOSName];
  MEMORY[0x22AAC6BD0](a2, @"currentOS_name", v5);

  v6 = *(a1 + 40);
  if (v6)
  {
    objc_msgSend_currentOSVersion(v6);
  }

  v7 = HKNSOperatingSystemVersionString();
  MEMORY[0x22AAC6BD0](a2, @"currentOS_version", v7);

  v8 = [*(a1 + 40) productTypeName];
  MEMORY[0x22AAC6BD0](a2, @"product_type_name", v8);

  Current = CFAbsoluteTimeGetCurrent();
  return MEMORY[0x22AAC6B60](a2, @"date_modified", Current);
}

+ (BOOL)deleteDeviceContextWithSyncIdentity:(int64_t)identity profile:(id)profile error:(id *)error
{
  profileCopy = profile;
  v9 = [(HDDeviceContextEntity *)self _predicateForSyncEntityIdentity:identity];
  database = [profileCopy database];

  LOBYTE(error) = [(HDHealthEntity *)HDDeviceContextEntity deleteEntitiesWithPredicate:v9 healthDatabase:database error:error];
  return error;
}

+ (id)_predicateForSyncEntityIdentity:(uint64_t)identity
{
  objc_opt_self();
  v3 = MEMORY[0x277D10B18];
  v4 = [MEMORY[0x277CCABB0] numberWithLongLong:a2];
  v5 = [v3 predicateWithProperty:@"sync_identity_id" equalToValue:v4];

  return v5;
}

+ (id)deviceContextForLocalSyncIdentityWithProfile:(id)profile transaction:(id)transaction error:(id *)error
{
  transactionCopy = transaction;
  v9 = +[HDDeviceContextEntity _deviceContextWithSyncIdentity:transaction:error:](self, [profile currentSyncIdentityPersistentID], transactionCopy, error);

  return v9;
}

+ (id)_deviceContextWithSyncIdentity:(void *)identity transaction:(uint64_t)transaction error:
{
  identityCopy = identity;
  v7 = objc_opt_self();
  v8 = [v7 deviceContextEntityWithSyncIdentity:a2 transaction:identityCopy error:transaction];
  if (v8)
  {
    v9 = [(HDDeviceContextEntity *)v7 _contextForEntity:v8 transaction:identityCopy error:transaction];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)lookupOrCreateDeviceContextForLocalSyncIdentityWithProfile:(id)profile transaction:(id)transaction error:(id *)error
{
  transactionCopy = transaction;
  syncIdentityManager = [profile syncIdentityManager];
  currentSyncIdentity = [syncIdentityManager currentSyncIdentity];
  v11 = [self lookupOrCreateDeviceContextForSyncIdentity:currentSyncIdentity WithTransaction:transactionCopy error:error];

  return v11;
}

+ (id)lookupOrCreateDeviceContextForSyncIdentity:(id)identity WithTransaction:(id)transaction error:(id *)error
{
  identityCopy = identity;
  transactionCopy = transaction;
  entity = [identityCopy entity];
  v11 = +[HDDeviceContextEntity _deviceContextWithSyncIdentity:transaction:error:](self, [entity persistentID], transactionCopy, error);

  if (v11)
  {
    v12 = v11;
    v13 = v12;
    goto LABEL_9;
  }

  v14 = [HDDeviceContext localProductTypeEnumWithError:error];
  if (v14)
  {
    v15 = [HDDeviceContext alloc];
    intValue = [v14 intValue];
    identity = [identityCopy identity];
    v12 = [(HDDeviceContext *)v15 initForLocalDeviceWithType:intValue syncIdentity:identity];

    v13 = [HDDeviceContextEntity insertDeviceContext:v12 transaction:transactionCopy error:error];

    if (!v13)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v12 = 0;
  }

  v12 = v12;
  v13 = v12;
LABEL_8:

LABEL_9:

  return v13;
}

+ (id)lookupDeviceContext:(id)context transaction:(id)transaction error:(id *)error
{
  transactionCopy = transaction;
  syncIdentity = [context syncIdentity];
  v14 = 0;
  v10 = [HDSyncIdentityEntity concreteIdentityForIdentity:syncIdentity transaction:transactionCopy error:&v14];

  if (v10)
  {
    entity = [v10 entity];
    v12 = +[HDDeviceContextEntity _deviceContextWithSyncIdentity:transaction:error:](self, [entity persistentID], transactionCopy, error);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (BOOL)updateSoftwareVersionForDeviceContext:(id)context transaction:(id)transaction error:(id *)error
{
  v24[3] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  transactionCopy = transaction;
  syncIdentity = [contextCopy syncIdentity];
  v11 = [HDSyncIdentityEntity concreteIdentityForIdentity:syncIdentity transaction:transactionCopy error:error];

  if (v11)
  {
    entity = [v11 entity];
    v13 = +[HDDeviceContextEntity _predicateForSyncEntityIdentity:](self, [entity persistentID]);

    v24[0] = @"currentOS_version";
    v24[1] = @"product_type_name";
    v24[2] = @"date_modified";
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:3];
    v15 = [transactionCopy databaseForEntityClass:self];
    v16 = [self updateProperties:v14 predicate:v13 database:v15 error:error bindingHandler:&__block_literal_global_15];
  }

  else
  {
    v17 = MEMORY[0x277CCA9B8];
    v18 = MEMORY[0x277CCACA8];
    syncIdentity2 = [contextCopy syncIdentity];
    v20 = [v18 stringWithFormat:@"No HDConcreteSyncIdentity found with sync identity %@", syncIdentity2];
    v21 = [v17 hk_error:11 description:v20];
    if (v21)
    {
      if (error)
      {
        v22 = v21;
        *error = v21;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v16 = 0;
  }

  return v16;
}

uint64_t __81__HDDeviceContextEntity_updateSoftwareVersionForDeviceContext_transaction_error___block_invoke(uint64_t a1, const char *a2)
{
  objc_msgSend_currentOSVersionStruct(MEMORY[0x277CCDD30]);
  v3 = HKNSOperatingSystemVersionString();
  MEMORY[0x22AAC6BD0](a2, @"currentOS_version", v3);

  v4 = [MEMORY[0x277CCDD30] currentDeviceProductType];
  MEMORY[0x22AAC6BD0](a2, @"product_type_name", v4);

  Current = CFAbsoluteTimeGetCurrent();
  return MEMORY[0x22AAC6B60](a2, @"date_modified", Current);
}

+ (BOOL)updateDeviceContext:(id)context transaction:(id)transaction error:(id *)error
{
  contextCopy = context;
  transactionCopy = transaction;
  syncIdentity = [contextCopy syncIdentity];
  v11 = [HDSyncIdentityEntity concreteIdentityForIdentity:syncIdentity transaction:transactionCopy error:error];

  if (v11)
  {
    entity = [v11 entity];
    v13 = +[HDDeviceContextEntity _predicateForSyncEntityIdentity:](self, [entity persistentID]);

    v14 = +[(HDDeviceContextEntity *)self];
    v15 = [transactionCopy databaseForEntityClass:self];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __63__HDDeviceContextEntity_updateDeviceContext_transaction_error___block_invoke;
    v18[3] = &unk_278613DE8;
    v19 = v11;
    v20 = contextCopy;
    v16 = [self updateProperties:v14 predicate:v13 database:v15 error:error bindingHandler:v18];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

uint64_t __63__HDDeviceContextEntity_updateDeviceContext_transaction_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) entity];
  MEMORY[0x22AAC6B90](a2, @"sync_identity_id", [v4 persistentID]);

  MEMORY[0x22AAC6B90](a2, @"device_type", [*(a1 + 40) type]);
  v5 = [*(a1 + 40) currentOSName];
  MEMORY[0x22AAC6BD0](a2, @"currentOS_name", v5);

  v6 = *(a1 + 40);
  if (v6)
  {
    objc_msgSend_currentOSVersion(v6);
  }

  v7 = HKNSOperatingSystemVersionString();
  MEMORY[0x22AAC6BD0](a2, @"currentOS_version", v7);

  v8 = [*(a1 + 40) productTypeName];
  MEMORY[0x22AAC6BD0](a2, @"product_type_name", v8);

  Current = CFAbsoluteTimeGetCurrent();
  return MEMORY[0x22AAC6B60](a2, @"date_modified", Current);
}

+ (id)foreignKeys
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"sync_identity_id";
  v2 = +[(HDHealthEntity *)HDSyncIdentityEntity];
  v6[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

void __61__HDDeviceContextEntity__contextForEntity_transaction_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = 0uLL;
  v22 = 0;
  v4 = HDSQLiteColumnWithNameAsString();
  HKNSOperatingSystemVersionFromString();

  v5 = HDSQLiteColumnWithNameAsInt64();
  v6 = *(a1 + 32);
  v20 = 0;
  v7 = [HDSyncIdentityEntity concreteIdentityForPersistentID:v5 transaction:v6 error:&v20];
  v8 = v20;
  if (v7)
  {
    v9 = [HDDeviceContext alloc];
    v10 = HDSQLiteColumnWithNameAsInt64();
    v11 = HDSQLiteColumnWithNameAsString();
    v12 = HDSQLiteColumnWithNameAsString();
    v13 = HDSQLiteColumnWithNameAsDate();
    v14 = [v7 identity];
    v18 = v21;
    v19 = v22;
    v15 = [(HDDeviceContext *)v9 initWithType:v10 productTypeName:v11 currentOSName:v12 currentOSVersion:&v18 modificationDate:v13 syncIdentity:v14];
    v16 = *(*(a1 + 40) + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = v15;
  }
}

+ (id)deviceContextEntityWithSyncIdentity:(int64_t)identity transaction:(id)transaction error:(id *)error
{
  transactionCopy = transaction;
  v9 = [transactionCopy databaseForEntityClass:objc_opt_class()];

  v10 = [(HDDeviceContextEntity *)self _predicateForSyncEntityIdentity:identity];
  v11 = [self anyInDatabase:v9 predicate:v10 error:error];

  return v11;
}

@end