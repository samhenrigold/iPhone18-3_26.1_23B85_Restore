@interface HDCloudSyncStoreEntity
+ (BOOL)cacheEpochs:(id)epochs storeIdentifier:(id)identifier database:(id)database error:(id *)error;
+ (BOOL)cacheEpochs:(id)epochs storeIdentifier:(id)identifier profile:(id)profile error:(id *)error;
+ (BOOL)cacheExcludedSyncIdentities:(id)identities storeIdentifier:(id)identifier database:(id)database error:(id *)error;
+ (BOOL)cacheExcludedSyncIdentities:(id)identities storeIdentifier:(id)identifier profile:(id)profile error:(id *)error;
+ (BOOL)enumerateShardsForOwnerIdentifier:(id)identifier containerIdentifier:(id)containerIdentifier syncIdentity:(id)identity profile:(id)profile transaction:(id)transaction error:(id *)error handler:(id)handler;
+ (BOOL)persistState:(id)state storeUUID:(id)d shouldReplace:(BOOL)replace healthDatabase:(id)database error:(id *)error;
+ (BOOL)rebaseRequiredByDate:(id)date intervals:(id)intervals profile:(id)profile error:(id *)error;
+ (BOOL)resetLastSyncDateExcludingStores:(id)stores profile:(id)profile error:(id *)error;
+ (id)_persistedStateProperties;
+ (id)cachedEpochsForStoreIdentifier:(id)identifier database:(id)database error:(id *)error;
+ (id)cachedEpochsForStoreIdentifier:(id)identifier profile:(id)profile error:(id *)error;
+ (id)cachedExcludedSyncIdentitiesForStoreIdentifier:(id)identifier database:(id)database error:(id *)error;
+ (id)cachedExcludedSyncIdentitiesForStoreIdentifier:(id)identifier profile:(id)profile error:(id *)error;
+ (id)foreignKeys;
+ (id)persistedMostRecentLastSyncDateForProfile:(id)profile error:(id *)error;
+ (id)persistedStateForStoreUUID:(id)d database:(id)database error:(id *)error;
+ (id)persistedStateForStoreUUID:(id)d profile:(id)profile error:(id *)error;
+ (id)persistedStoreUUIDsForProfile:(id)profile error:(id *)error;
+ (id)storeIdentifiersForOwnerIdentifier:(id)identifier containerIdentifier:(id)containerIdentifier syncIdentity:(id)identity profile:(id)profile error:(id *)error;
- (BOOL)fetchShardPropertiesInTransaction:(id)transaction error:(id *)error handler:(id)handler;
- (BOOL)updateShardStartDate:(id)date endDate:(id)endDate type:(int64_t)type transaction:(id)transaction error:(id *)error;
- (BOOL)updateSyncIdentity:(id)identity transaction:(id)transaction error:(id *)error;
- (id)storeUUIDInTransaction:(id)transaction error:(id *)error;
@end

@implementation HDCloudSyncStoreEntity

+ (BOOL)rebaseRequiredByDate:(id)date intervals:(id)intervals profile:(id)profile error:(id *)error
{
  dateCopy = date;
  intervalsCopy = intervals;
  database = [profile database];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __71__HDCloudSyncStoreEntity_rebaseRequiredByDate_intervals_profile_error___block_invoke;
  v16[3] = &unk_278614698;
  v18 = intervalsCopy;
  selfCopy = self;
  v17 = dateCopy;
  v13 = intervalsCopy;
  v14 = dateCopy;
  LOBYTE(error) = [self performWriteTransactionWithHealthDatabase:database error:error block:v16];

  return error;
}

uint64_t __71__HDCloudSyncStoreEntity_rebaseRequiredByDate_intervals_profile_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 databaseForEntityClass:*(a1 + 48)];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __71__HDCloudSyncStoreEntity_rebaseRequiredByDate_intervals_profile_error___block_invoke_2;
  v14[3] = &__block_descriptor_40_e15___NSString_8__0l;
  v14[4] = *(a1 + 48);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __71__HDCloudSyncStoreEntity_rebaseRequiredByDate_intervals_profile_error___block_invoke_3;
  v9[3] = &unk_27862D420;
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = v5;
  v13 = *(a1 + 48);
  v6 = v5;
  v7 = [v6 executeCachedStatementForKey:&HDCloudSyncStoreExcludedSyncIdentitiesKey_block_invoke_lookupKey error:a3 SQLGenerator:v14 bindingHandler:0 enumerationHandler:v9];

  return v7;
}

id __71__HDCloudSyncStoreEntity_rebaseRequiredByDate_intervals_profile_error___block_invoke_2(uint64_t a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = *MEMORY[0x277D10A40];
  v3 = [*(a1 + 32) disambiguatedDatabaseTable];
  v4 = [v1 stringWithFormat:@"SELECT %@, %@, %@, %@, %@ FROM %@", v2, @"rebase_deadline", @"shard_type", @"shard_start_date", @"shard_end_date", v3];

  return v4;
}

uint64_t __71__HDCloudSyncStoreEntity_rebaseRequiredByDate_intervals_profile_error___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = HDSQLiteColumnAsInt64();
  if ((MEMORY[0x22AAC6CD0](a2, 1) & 1) != 0 || (v7 = 1, v8 = MEMORY[0x22AAC6C50](a2, 1), [*(a1 + 32) timeIntervalSinceReferenceDate], v8 > v9))
  {
    if (MEMORY[0x22AAC6CD0](a2, 2))
    {
LABEL_4:
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __71__HDCloudSyncStoreEntity_rebaseRequiredByDate_intervals_profile_error___block_invoke_4;
      v18[3] = &__block_descriptor_40_e15___NSString_8__0l;
      v10 = *(a1 + 48);
      v18[4] = *(a1 + 56);
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __71__HDCloudSyncStoreEntity_rebaseRequiredByDate_intervals_profile_error___block_invoke_5;
      v15[3] = &unk_278613B58;
      v16 = *(a1 + 32);
      v17 = v6;
      v7 = [v10 executeCachedStatementForKey:&HDCloudSyncStoreExcludedSyncIdentitiesKey_block_invoke_2_updateKey error:a3 SQLGenerator:v18 bindingHandler:v15 enumerationHandler:0];

      return v7;
    }

    v12 = HDSQLiteColumnAsInt64();
    v7 = 1;
    if (v12 && v12 != 2)
    {
      if (v12 == 1 && *(a1 + 40))
      {
        v13 = (MEMORY[0x22AAC6CD0](a2, 3) & 1) != 0 ? -1.79769313e308 : MEMORY[0x22AAC6C50](a2, 3);
        v14 = (MEMORY[0x22AAC6CD0](a2, 4) & 1) != 0 ? 1.79769313e308 : MEMORY[0x22AAC6C50](a2, 4);
        if (![*(a1 + 40) hasOverlapWithStartTime:v13 endTime:v14])
        {
          return 1;
        }
      }

      goto LABEL_4;
    }
  }

  return v7;
}

id __71__HDCloudSyncStoreEntity_rebaseRequiredByDate_intervals_profile_error___block_invoke_4(uint64_t a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = [*(a1 + 32) disambiguatedDatabaseTable];
  v3 = [v1 stringWithFormat:@"UPDATE %@ SET %@ = ? WHERE %@ = ?", v2, @"rebase_deadline", *MEMORY[0x277D10A40], 0];

  return v3;
}

uint64_t __71__HDCloudSyncStoreEntity_rebaseRequiredByDate_intervals_profile_error___block_invoke_5(uint64_t a1, sqlite3_stmt *a2)
{
  HDSQLiteBindFoundationValueToStatement();
  v4 = *(a1 + 40);

  return sqlite3_bind_int64(a2, 2, v4);
}

+ (id)storeIdentifiersForOwnerIdentifier:(id)identifier containerIdentifier:(id)containerIdentifier syncIdentity:(id)identity profile:(id)profile error:(id *)error
{
  identifierCopy = identifier;
  containerIdentifierCopy = containerIdentifier;
  identityCopy = identity;
  profileCopy = profile;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__188;
  v35 = __Block_byref_object_dispose__188;
  v36 = objc_alloc_init(MEMORY[0x277CBEB18]);
  database = [profileCopy database];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __108__HDCloudSyncStoreEntity_storeIdentifiersForOwnerIdentifier_containerIdentifier_syncIdentity_profile_error___block_invoke;
  v24[3] = &unk_27862D448;
  selfCopy = self;
  v17 = profileCopy;
  v25 = v17;
  v18 = identityCopy;
  v26 = v18;
  v19 = identifierCopy;
  v27 = v19;
  v20 = containerIdentifierCopy;
  v28 = v20;
  v29 = &v31;
  LODWORD(error) = [self performReadTransactionWithHealthDatabase:database error:error block:v24];

  if (error)
  {
    v21 = v32[5];
  }

  else
  {
    v21 = 0;
  }

  v22 = v21;

  _Block_object_dispose(&v31, 8);

  return v22;
}

uint64_t __108__HDCloudSyncStoreEntity_storeIdentifiersForOwnerIdentifier_containerIdentifier_syncIdentity_profile_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 72);
  v6 = a2;
  v7 = [v6 databaseForEntityClass:v5];
  v8 = [*(a1 + 32) syncIdentityManager];
  v9 = *(a1 + 40);
  v21 = 0;
  v10 = [v8 concreteIdentityForIdentity:v9 shouldCreate:0 transaction:v6 error:&v21];

  v11 = v21;
  if (v11)
  {
    if (a3)
    {
      v12 = v11;
      v13 = 0;
      *a3 = v11;
    }

    else
    {
      _HKLogDroppedError();
      v13 = 0;
    }
  }

  else
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __108__HDCloudSyncStoreEntity_storeIdentifiersForOwnerIdentifier_containerIdentifier_syncIdentity_profile_error___block_invoke_2;
    v20[3] = &__block_descriptor_40_e15___NSString_8__0l;
    v20[4] = *(a1 + 72);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __108__HDCloudSyncStoreEntity_storeIdentifiersForOwnerIdentifier_containerIdentifier_syncIdentity_profile_error___block_invoke_3;
    v16[3] = &unk_278613528;
    v17 = *(a1 + 48);
    v18 = *(a1 + 56);
    v19 = v10;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __108__HDCloudSyncStoreEntity_storeIdentifiersForOwnerIdentifier_containerIdentifier_syncIdentity_profile_error___block_invoke_4;
    v15[3] = &unk_278614620;
    v15[4] = *(a1 + 64);
    v13 = [v7 executeCachedStatementForKey:&HDCloudSyncStoreExcludedSyncIdentitiesKey_block_invoke_3_lookupKey error:a3 SQLGenerator:v20 bindingHandler:v16 enumerationHandler:v15];
  }

  return v13;
}

id __108__HDCloudSyncStoreEntity_storeIdentifiersForOwnerIdentifier_containerIdentifier_syncIdentity_profile_error___block_invoke_2(uint64_t a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = [*(a1 + 32) disambiguatedDatabaseTable];
  v3 = +[(HDSQLiteSchemaEntity *)HDSyncStoreEntity];
  v4 = [v1 stringWithFormat:@"SELECT %@ FROM %@ INNER JOIN %@ ON %@ = %@ WHERE %@ = ? AND %@ = ? AND %@ = ? ORDER BY %@ ASC", @"uuid", v2, v3, @"sync_store", *MEMORY[0x277D10A40], @"owner_id", @"container_id", @"sync_identity", @"uuid", 0];

  return v4;
}

void __108__HDCloudSyncStoreEntity_storeIdentifiersForOwnerIdentifier_containerIdentifier_syncIdentity_profile_error___block_invoke_3(uint64_t a1, sqlite3_stmt *a2)
{
  HDSQLiteBindFoundationValueToStatement();
  HDSQLiteBindFoundationValueToStatement();
  v4 = [*(a1 + 48) entity];
  sqlite3_bind_int64(a2, 3, [v4 persistentID]);
}

uint64_t __108__HDCloudSyncStoreEntity_storeIdentifiersForOwnerIdentifier_containerIdentifier_syncIdentity_profile_error___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v3 = HDSQLiteColumnWithNameAsUUID();
  [v2 addObject:v3];

  return 1;
}

+ (id)_persistedStateProperties
{
  v3[13] = *MEMORY[0x277D85DE8];
  objc_opt_self();
  v3[0] = @"sync_store";
  v3[1] = @"server_change_token";
  v3[2] = @"baseline_epoch";
  v3[3] = @"rebase_deadline";
  v3[4] = @"last_sync";
  v3[5] = @"empty_zones";
  v3[6] = @"last_check";
  v3[7] = @"owner_id";
  v3[8] = @"container_id";
  v3[9] = @"sync_identity";
  v3[10] = @"has_gap";
  v3[11] = @"sync_protocol_version";
  v3[12] = @"pending_full_sync";
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:13];

  return v1;
}

+ (id)persistedStateForStoreUUID:(id)d profile:(id)profile error:(id *)error
{
  dCopy = d;
  profileCopy = profile;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__188;
  v23 = __Block_byref_object_dispose__188;
  v24 = 0;
  database = [profileCopy database];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __67__HDCloudSyncStoreEntity_persistedStateForStoreUUID_profile_error___block_invoke;
  v15[3] = &unk_2786169D8;
  v17 = &v19;
  selfCopy = self;
  v11 = dCopy;
  v16 = v11;
  LODWORD(error) = [self performReadTransactionWithHealthDatabase:database error:error block:v15];

  if (error)
  {
    v12 = v20[5];
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  _Block_object_dispose(&v19, 8);

  return v13;
}

BOOL __67__HDCloudSyncStoreEntity_persistedStateForStoreUUID_profile_error___block_invoke(void *a1, void *a2, uint64_t a3)
{
  v5 = a1[6];
  v6 = a1[4];
  v7 = [a2 databaseForEntityClass:v5];
  v8 = [v5 persistedStateForStoreUUID:v6 database:v7 error:a3];
  v9 = *(a1[5] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  return *(*(a1[5] + 8) + 40) != 0;
}

+ (id)persistedStoreUUIDsForProfile:(id)profile error:(id *)error
{
  profileCopy = profile;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__188;
  v16 = __Block_byref_object_dispose__188;
  v17 = [MEMORY[0x277CBEB58] set];
  database = [profileCopy database];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __62__HDCloudSyncStoreEntity_persistedStoreUUIDsForProfile_error___block_invoke;
  v11[3] = &unk_27861C1A0;
  v11[4] = &v12;
  v11[5] = self;
  LOBYTE(error) = [self performReadTransactionWithHealthDatabase:database error:error block:v11];

  if ((error & 1) == 0)
  {
    v8 = v13[5];
    v13[5] = 0;
  }

  v9 = objc_msgSend_copy(v13[5]);
  _Block_object_dispose(&v12, 8);

  return v9;
}

uint64_t __62__HDCloudSyncStoreEntity_persistedStoreUUIDsForProfile_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 databaseForEntityClass:*(a1 + 40)];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __62__HDCloudSyncStoreEntity_persistedStoreUUIDsForProfile_error___block_invoke_2;
  v9[3] = &__block_descriptor_40_e15___NSString_8__0l;
  v9[4] = *(a1 + 40);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __62__HDCloudSyncStoreEntity_persistedStoreUUIDsForProfile_error___block_invoke_3;
  v8[3] = &unk_278614620;
  v8[4] = *(a1 + 32);
  v6 = [v5 executeCachedStatementForKey:&HDCloudSyncStoreExcludedSyncIdentitiesKey_block_invoke_4_lookupKey error:a3 SQLGenerator:v9 bindingHandler:0 enumerationHandler:v8];

  return v6;
}

id __62__HDCloudSyncStoreEntity_persistedStoreUUIDsForProfile_error___block_invoke_2(uint64_t a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = [*(a1 + 32) disambiguatedDatabaseTable];
  v3 = +[(HDSQLiteSchemaEntity *)HDSyncStoreEntity];
  v4 = [v1 stringWithFormat:@"SELECT %@ FROM %@ cloud_stores INNER JOIN %@ sync_stores ON cloud_stores.%@ = sync_stores.%@", @"uuid", v2, v3, @"sync_store", *MEMORY[0x277D10A40], 0];

  return v4;
}

uint64_t __62__HDCloudSyncStoreEntity_persistedStoreUUIDsForProfile_error___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = HDSQLiteColumnWithNameAsUUID();
  [*(*(*(a1 + 32) + 8) + 40) addObject:v3];

  return 1;
}

+ (id)persistedMostRecentLastSyncDateForProfile:(id)profile error:(id *)error
{
  profileCopy = profile;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__188;
  v15 = __Block_byref_object_dispose__188;
  v16 = 0;
  database = [profileCopy database];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __74__HDCloudSyncStoreEntity_persistedMostRecentLastSyncDateForProfile_error___block_invoke;
  v10[3] = &unk_27861C1A0;
  v10[4] = &v11;
  v10[5] = self;
  LODWORD(error) = [self performReadTransactionWithHealthDatabase:database error:error block:v10];

  if (error)
  {
    v8 = objc_msgSend_copy(v12[5]);
  }

  else
  {
    v8 = 0;
  }

  _Block_object_dispose(&v11, 8);

  return v8;
}

uint64_t __74__HDCloudSyncStoreEntity_persistedMostRecentLastSyncDateForProfile_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 unprotectedDatabase];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __74__HDCloudSyncStoreEntity_persistedMostRecentLastSyncDateForProfile_error___block_invoke_2;
  v9[3] = &__block_descriptor_40_e15___NSString_8__0l;
  v9[4] = *(a1 + 40);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __74__HDCloudSyncStoreEntity_persistedMostRecentLastSyncDateForProfile_error___block_invoke_3;
  v8[3] = &unk_278614620;
  v8[4] = *(a1 + 32);
  v6 = [v5 executeCachedStatementForKey:&HDCloudSyncStoreExcludedSyncIdentitiesKey_block_invoke_5_lookupKey error:a3 SQLGenerator:v9 bindingHandler:0 enumerationHandler:v8];

  return v6;
}

id __74__HDCloudSyncStoreEntity_persistedMostRecentLastSyncDateForProfile_error___block_invoke_2(uint64_t a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = [*(a1 + 32) disambiguatedDatabaseTable];
  v3 = [v1 stringWithFormat:@"SELECT MAX(%@) as %@ FROM %@", @"last_sync", @"last_sync", v2, 0];

  return v3;
}

uint64_t __74__HDCloudSyncStoreEntity_persistedMostRecentLastSyncDateForProfile_error___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = HDSQLiteColumnWithNameAsDate();
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return 0;
}

+ (id)persistedStateForStoreUUID:(id)d database:(id)database error:(id *)error
{
  v113[3] = *MEMORY[0x277D85DE8];
  dCopy = d;
  databaseCopy = database;
  if (!dCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDCloudSyncStoreEntity.m" lineNumber:269 description:{@"Invalid parameter not satisfying: %@", @"storeUUID != nil"}];
  }

  v107 = 0;
  v108 = &v107;
  v109 = 0x3032000000;
  v110 = __Block_byref_object_copy__188;
  v111 = __Block_byref_object_dispose__188;
  v112 = 0;
  v103 = 0;
  v104 = &v103;
  v105 = 0x2020000000;
  v106 = 0;
  v97 = 0;
  v98 = &v97;
  v99 = 0x3032000000;
  v100 = __Block_byref_object_copy__188;
  v101 = __Block_byref_object_dispose__188;
  v102 = 0;
  v91 = 0;
  v92 = &v91;
  v93 = 0x3032000000;
  v94 = __Block_byref_object_copy__188;
  v95 = __Block_byref_object_dispose__188;
  v96 = 0;
  v85 = 0;
  v86 = &v85;
  v87 = 0x3032000000;
  v88 = __Block_byref_object_copy__188;
  v89 = __Block_byref_object_dispose__188;
  v90 = 0;
  v79 = 0;
  v80 = &v79;
  v81 = 0x3032000000;
  v82 = __Block_byref_object_copy__188;
  v83 = __Block_byref_object_dispose__188;
  v84 = 0;
  v73 = 0;
  v74 = &v73;
  v75 = 0x3032000000;
  v76 = __Block_byref_object_copy__188;
  v77 = __Block_byref_object_dispose__188;
  v78 = 0;
  v67 = 0;
  v68 = &v67;
  v69 = 0x3032000000;
  v70 = __Block_byref_object_copy__188;
  v71 = __Block_byref_object_dispose__188;
  v72 = 0;
  v63 = 0;
  v64 = &v63;
  v65 = 0x2020000000;
  v66 = -1;
  v59 = 0;
  v60 = &v59;
  v61 = 0x2020000000;
  v62 = 0;
  v55 = 0;
  v56 = &v55;
  v57 = 0x2020000000;
  v58 = 6;
  v51 = 0;
  v52 = &v51;
  v53 = 0x2020000000;
  v54 = 0;
  v11 = [HDSyncStoreEntity existingSyncStoreEntityWithUUID:dCopy database:databaseCopy error:error];
  v12 = v11;
  if (!v11)
  {
    v19 = 0;
    goto LABEL_24;
  }

  v13 = MEMORY[0x277D10B18];
  v14 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v11, "persistentID")}];
  v48 = [v13 predicateWithProperty:@"sync_store" equalToValue:v14];

  v15 = [self queryWithDatabase:databaseCopy predicate:v48];
  v16 = +[(HDCloudSyncStoreEntity *)self];
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __68__HDCloudSyncStoreEntity_persistedStateForStoreUUID_database_error___block_invoke;
  v50[3] = &unk_27862D470;
  v50[4] = &v107;
  v50[5] = &v103;
  v50[6] = &v97;
  v50[7] = &v91;
  v50[8] = &v85;
  v50[9] = &v79;
  v50[10] = &v73;
  v50[11] = &v67;
  v50[12] = &v63;
  v50[13] = &v59;
  v50[14] = &v55;
  v50[15] = &v51;
  LOBYTE(v13) = [v15 enumerateProperties:v16 error:error enumerationHandler:v50];

  if (v13)
  {
    if (v108[5])
    {
      v17 = objc_alloc(MEMORY[0x277CCAAC8]);
      v18 = [v17 initForReadingFromData:v108[5] error:0];
      v47 = [v18 decodeObjectOfClass:objc_opt_class() forKey:@"changeToken"];
      [v18 finishDecoding];
    }

    else
    {
      v47 = 0;
    }

    if (v86[5])
    {
      v20 = objc_alloc(MEMORY[0x277CCAAC8]);
      v21 = [v20 initForReadingFromData:v86[5] error:0];
      v22 = MEMORY[0x277CBEB98];
      v113[0] = objc_opt_class();
      v113[1] = objc_opt_class();
      v113[2] = objc_opt_class();
      v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v113 count:3];
      v24 = [v22 setWithArray:v23];
      v46 = [v21 decodeObjectOfClasses:v24 forKey:@"emptyZones"];

      [v21 finishDecoding];
    }

    else
    {
      v46 = 0;
    }

    v25 = v64[3];
    v49 = 0;
    v26 = [HDSyncIdentityEntity concreteIdentityForPersistentID:v25 database:databaseCopy error:&v49];
    v27 = v49;
    v28 = v27;
    if (v27)
    {
      v29 = v27;
      v30 = v29;
      if (error)
      {
        v31 = v29;
        v19 = 0;
        *error = v30;
      }

      else
      {
        _HKLogDroppedError();
        v19 = 0;
      }
    }

    else
    {
      v44 = v15;
      v45 = v26;
      v43 = [_HDCloudSyncStorePersistableState alloc];
      v42 = v104[3];
      v32 = v98[5];
      v33 = v92[5];
      v34 = v80[5];
      v35 = v74[5];
      v36 = v68[5];
      identity = [v45 identity];
      LODWORD(v41) = *(v56 + 6);
      v30 = [(_HDCloudSyncStorePersistableState *)v43 initWithServerChangeToken:v47 baselineEpoch:v42 rebaseDeadline:v32 lastSyncDate:v33 emptyZones:v46 lastCheckDate:v34 ownerIdentifier:v35 containerIdentifier:v36 syncIdentity:identity syncProtocolVersion:v41];

      v15 = v44;
      v26 = v45;
      if (*(v60 + 24) == 1)
      {
        v38 = [(_HDCloudSyncStorePersistableState *)v30 stateWithGapEncountered:1];

        v15 = v44;
        v26 = v45;
        v30 = v38;
      }

      if (*(v52 + 24) != 1)
      {
        v19 = v30;
        goto LABEL_22;
      }

      v19 = [(_HDCloudSyncStorePersistableState *)v30 stateWithPendingFullSync:1];
      v15 = v44;
      v26 = v45;
    }

LABEL_22:
    goto LABEL_23;
  }

  v19 = 0;
LABEL_23:

LABEL_24:
  _Block_object_dispose(&v51, 8);
  _Block_object_dispose(&v55, 8);
  _Block_object_dispose(&v59, 8);
  _Block_object_dispose(&v63, 8);
  _Block_object_dispose(&v67, 8);

  _Block_object_dispose(&v73, 8);
  _Block_object_dispose(&v79, 8);

  _Block_object_dispose(&v85, 8);
  _Block_object_dispose(&v91, 8);

  _Block_object_dispose(&v97, 8);
  _Block_object_dispose(&v103, 8);
  _Block_object_dispose(&v107, 8);

  return v19;
}

uint64_t __68__HDCloudSyncStoreEntity_persistedStateForStoreUUID_database_error___block_invoke(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = HDSQLiteColumnWithNameAsData();
  v5 = *(a1[4] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  *(*(a1[5] + 8) + 24) = HDSQLiteColumnWithNameAsInt64();
  v7 = HDSQLiteColumnWithNameAsDate();
  v8 = *(a1[6] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v10 = HDSQLiteColumnWithNameAsDate();
  v11 = *(a1[7] + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  v13 = HDSQLiteColumnWithNameAsData();
  v14 = *(a1[8] + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;

  v16 = HDSQLiteColumnWithNameAsDate();
  v17 = *(a1[9] + 8);
  v18 = *(v17 + 40);
  *(v17 + 40) = v16;

  v19 = HDSQLiteColumnWithNameAsString();
  v20 = *(a1[10] + 8);
  v21 = *(v20 + 40);
  *(v20 + 40) = v19;

  v22 = HDSQLiteColumnWithNameAsString();
  v23 = *(a1[11] + 8);
  v24 = *(v23 + 40);
  *(v23 + 40) = v22;

  *(*(a1[12] + 8) + 24) = HDSQLiteColumnWithNameAsInt64();
  *(*(a1[13] + 8) + 24) = HDSQLiteColumnWithNameAsBoolean();
  *(*(a1[14] + 8) + 24) = HDSQLiteColumnWithNameAsInt64();
  *(*(a1[15] + 8) + 24) = HDSQLiteColumnWithNameAsBoolean();
  return 1;
}

+ (BOOL)persistState:(id)state storeUUID:(id)d shouldReplace:(BOOL)replace healthDatabase:(id)database error:(id *)error
{
  stateCopy = state;
  dCopy = d;
  databaseCopy = database;
  if (!dCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDCloudSyncStoreEntity.m" lineNumber:361 description:{@"Invalid parameter not satisfying: %@", @"uuid != nil"}];
  }

  serverChangeToken = [stateCopy serverChangeToken];

  if (serverChangeToken)
  {
    v17 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
    serverChangeToken2 = [stateCopy serverChangeToken];
    [v17 encodeObject:serverChangeToken2 forKey:@"changeToken"];

    serverChangeToken = [v17 encodedData];
  }

  emptyZoneDateByZoneID = [stateCopy emptyZoneDateByZoneID];

  if (emptyZoneDateByZoneID)
  {
    v20 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
    emptyZoneDateByZoneID2 = [stateCopy emptyZoneDateByZoneID];
    [v20 encodeObject:emptyZoneDateByZoneID2 forKey:@"emptyZones"];

    emptyZoneDateByZoneID = [v20 encodedData];
  }

  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x2020000000;
  v40 = 0;
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __84__HDCloudSyncStoreEntity_persistState_storeUUID_shouldReplace_healthDatabase_error___block_invoke;
  v30[3] = &unk_27862D4E8;
  selfCopy = self;
  v22 = dCopy;
  v31 = v22;
  v23 = stateCopy;
  v32 = v23;
  v24 = databaseCopy;
  v33 = v24;
  v36 = v39;
  v25 = serverChangeToken;
  v34 = v25;
  v26 = emptyZoneDateByZoneID;
  v35 = v26;
  replaceCopy = replace;
  v27 = [self performWriteTransactionWithHealthDatabase:v24 error:error block:v30];

  _Block_object_dispose(v39, 8);
  return v27;
}

uint64_t __84__HDCloudSyncStoreEntity_persistState_storeUUID_shouldReplace_healthDatabase_error___block_invoke(uint64_t a1, void *a2, HDCloudSyncStoreEntity **a3)
{
  v5 = a2;
  v6 = [v5 databaseForEntityClass:*(a1 + 80)];
  v7 = [HDSyncStoreEntity existingSyncStoreEntityWithUUID:*(a1 + 32) database:v6 error:a3];
  v8 = v7;
  if (v7)
  {
    v71 = 0;
    v72 = &v71;
    v73 = 0x3032000000;
    v74 = __Block_byref_object_copy__188;
    v75 = __Block_byref_object_dispose__188;
    v76 = 0;
    v65 = 0;
    v66 = &v65;
    v67 = 0x3032000000;
    v68 = __Block_byref_object_copy__188;
    v69 = __Block_byref_object_dispose__188;
    v70 = 0;
    v61 = 0;
    v62 = &v61;
    v63 = 0x2020000000;
    v64 = -1;
    v57 = 0;
    v58 = &v57;
    v59 = 0x2020000000;
    v60 = 0;
    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = __84__HDCloudSyncStoreEntity_persistState_storeUUID_shouldReplace_healthDatabase_error___block_invoke_2;
    v56[3] = &__block_descriptor_40_e15___NSString_8__0l;
    v56[4] = *(a1 + 80);
    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = __84__HDCloudSyncStoreEntity_persistState_storeUUID_shouldReplace_healthDatabase_error___block_invoke_3;
    v54[3] = &unk_278614860;
    v9 = v7;
    v55 = v9;
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = __84__HDCloudSyncStoreEntity_persistState_storeUUID_shouldReplace_healthDatabase_error___block_invoke_4;
    v53[3] = &unk_27862D498;
    v53[4] = &v71;
    v53[5] = &v65;
    v53[6] = &v61;
    v53[7] = &v57;
    if (([v6 executeCachedStatementForKey:&HDCloudSyncStoreExcludedSyncIdentitiesKey_block_invoke_6_lookupKey error:a3 SQLGenerator:v56 bindingHandler:v54 enumerationHandler:v53] & 1) == 0)
    {
      v18 = 0;
LABEL_47:

      _Block_object_dispose(&v57, 8);
      _Block_object_dispose(&v61, 8);
      _Block_object_dispose(&v65, 8);

      _Block_object_dispose(&v71, 8);
      goto LABEL_48;
    }

    v10 = [*(a1 + 40) syncIdentity];

    if (v10)
    {
      v11 = [*(a1 + 48) profile];
      v12 = [v11 syncIdentityManager];
      v13 = [*(a1 + 40) syncIdentity];
      v52 = 0;
      v44 = [v12 concreteIdentityForIdentity:v13 shouldCreate:1 transaction:v5 error:&v52];
      v14 = v52;

      if (v14)
      {
        v15 = v14;
        v16 = v15;
        if (a3)
        {
          v17 = v15;
          *a3 = v16;
        }

        else
        {
          _HKLogDroppedError();
        }

        goto LABEL_20;
      }

      v22 = v62[3];
      if (v22 == -1)
      {
        *(*(*(a1 + 72) + 8) + 24) = 1;
      }

      else
      {
        v23 = [v44 entity];
        v24 = [v23 persistentID];

        if (v22 != v24)
        {
          [MEMORY[0x277CCA9B8] hk_assignError:a3 code:3 format:@"Sync identity must not be changed after creation."];
          v16 = 0;
LABEL_20:
          v18 = 0;
LABEL_41:

LABEL_46:
          goto LABEL_47;
        }
      }
    }

    else
    {
      v44 = 0;
    }

    if (!v72[5])
    {
      goto LABEL_31;
    }

    v19 = v66[5];
    v20 = [*(a1 + 40) ownerIdentifier];
    if (v19 != v20)
    {
      v43 = [*(a1 + 40) ownerIdentifier];
      if (!v43)
      {
        goto LABEL_44;
      }

      v21 = v66[5];
      v42 = [*(a1 + 40) ownerIdentifier];
      if (![v21 isEqualToString:v42])
      {
        goto LABEL_43;
      }
    }

    v25 = v72[5];
    v26 = [*(a1 + 40) containerIdentifier];
    v27 = v26;
    if (v25 == v26)
    {

      if (v19 != v20)
      {
      }

      goto LABEL_31;
    }

    v41 = [*(a1 + 40) containerIdentifier];
    if (v41)
    {
      v39 = v72[5];
      v28 = [*(a1 + 40) containerIdentifier];
      v40 = [v39 isEqualToString:v28];

      if (v19 != v20)
      {
      }

      if ((v40 & 1) == 0)
      {
        goto LABEL_45;
      }

LABEL_31:
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __84__HDCloudSyncStoreEntity_persistState_storeUUID_shouldReplace_healthDatabase_error___block_invoke_5;
      aBlock[3] = &unk_27862D4C0;
      v29 = v9;
      v47 = v29;
      v48 = *(a1 + 56);
      v49 = *(a1 + 40);
      v50 = *(a1 + 64);
      v44 = v44;
      v51 = v44;
      v30 = _Block_copy(aBlock);
      if (*(v58 + 24) == 1)
      {
        if ((*(a1 + 88) & 1) == 0 && !*(*(*(a1 + 72) + 8) + 24))
        {
          v18 = 1;
          goto LABEL_40;
        }

        v31 = [(HDSQLiteEntity *)[HDCloudSyncStoreEntity alloc] initWithPersistentID:[(HDSQLiteEntity *)v29 persistentID]];
        v32 = +[(HDCloudSyncStoreEntity *)*(a1];
        v18 = [(HDSQLiteEntity *)v31 updateProperties:v32 database:v6 error:a3 bindingHandler:v30];
      }

      else
      {
        v33 = *(a1 + 80);
        v34 = *(a1 + 88);
        v35 = +[(HDCloudSyncStoreEntity *)v33];
        v45 = 0;
        v32 = [v33 insertOrReplaceEntity:v34 database:v6 properties:v35 error:&v45 bindingHandler:v30];
        v31 = v45;

        if (!v32)
        {
          if (([(HDCloudSyncStoreEntity *)v31 hd_isConstraintViolation]& 1) == 0)
          {
            v37 = v31;
            v31 = v37;
            if (v37)
            {
              if (a3)
              {
                v38 = v37;
                *a3 = v31;
              }

              else
              {
                _HKLogDroppedError();
              }
            }

            v32 = 0;
            v18 = 0;
            goto LABEL_39;
          }

          v32 = 0;
        }

        v18 = 1;
      }

LABEL_39:

LABEL_40:
      v16 = v47;
      goto LABEL_41;
    }

    if (v19 != v20)
    {
LABEL_43:
    }

LABEL_44:

LABEL_45:
    [MEMORY[0x277CCA9B8] hk_assignError:a3 code:3 format:@"Owner and container identifiers must not be changed after creation."];
    v18 = 0;
    goto LABEL_46;
  }

  v18 = 0;
LABEL_48:

  return v18;
}

id __84__HDCloudSyncStoreEntity_persistState_storeUUID_shouldReplace_healthDatabase_error___block_invoke_2(uint64_t a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = [*(a1 + 32) disambiguatedDatabaseTable];
  v3 = [v1 stringWithFormat:@"SELECT %@, %@, %@ FROM %@ WHERE %@ = ?", @"container_id", @"owner_id", @"sync_identity", v2, @"sync_store", 0];

  return v3;
}

uint64_t __84__HDCloudSyncStoreEntity_persistState_storeUUID_shouldReplace_healthDatabase_error___block_invoke_3(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = [*(a1 + 32) persistentID];

  return sqlite3_bind_int64(a2, 1, v3);
}

uint64_t __84__HDCloudSyncStoreEntity_persistState_storeUUID_shouldReplace_healthDatabase_error___block_invoke_4(void *a1, uint64_t a2)
{
  v4 = MEMORY[0x22AAC6C90](a2, 0);
  v5 = *(a1[4] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = MEMORY[0x22AAC6C90](a2, 1);
  v8 = *(a1[5] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  if ((MEMORY[0x22AAC6CD0](a2, 2) & 1) == 0 && HDSQLiteColumnAsInt64())
  {
    *(*(a1[6] + 8) + 24) = HDSQLiteColumnAsInt64();
  }

  *(*(a1[7] + 8) + 24) = 1;
  return 0;
}

void __84__HDCloudSyncStoreEntity_persistState_storeUUID_shouldReplace_healthDatabase_error___block_invoke_5(uint64_t a1, uint64_t a2)
{
  MEMORY[0x22AAC6B90](a2, @"sync_store", [*(a1 + 32) persistentID]);
  MEMORY[0x22AAC6B40](a2, @"server_change_token", *(a1 + 40));
  MEMORY[0x22AAC6B90](a2, @"baseline_epoch", [*(a1 + 48) baselineEpoch]);
  v4 = [*(a1 + 48) rebaseDeadline];
  MEMORY[0x22AAC6B50](a2, @"rebase_deadline", v4);

  v5 = [*(a1 + 48) lastSyncDate];
  MEMORY[0x22AAC6B50](a2, @"last_sync", v5);

  MEMORY[0x22AAC6B40](a2, @"empty_zones", *(a1 + 56));
  v6 = [*(a1 + 48) lastCheckDate];
  MEMORY[0x22AAC6B50](a2, @"last_check", v6);

  v7 = [*(a1 + 48) ownerIdentifier];
  MEMORY[0x22AAC6BD0](a2, @"owner_id", v7);

  v8 = [*(a1 + 48) containerIdentifier];
  MEMORY[0x22AAC6BD0](a2, @"container_id", v8);

  v9 = [*(a1 + 64) entity];
  MEMORY[0x22AAC6B90](a2, @"sync_identity", [v9 persistentID]);

  MEMORY[0x22AAC6B30](a2, @"has_gap", [*(a1 + 48) hasEncounteredGapInCurrentEpoch]);
  MEMORY[0x22AAC6B90](a2, @"sync_protocol_version", [*(a1 + 48) syncProtocolVersion]);
  [*(a1 + 48) pendingFullSync];

  JUMPOUT(0x22AAC6B30);
}

+ (BOOL)resetLastSyncDateExcludingStores:(id)stores profile:(id)profile error:(id *)error
{
  storesCopy = stores;
  database = [profile database];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __73__HDCloudSyncStoreEntity_resetLastSyncDateExcludingStores_profile_error___block_invoke;
  v12[3] = &unk_278619348;
  v13 = storesCopy;
  selfCopy = self;
  v10 = storesCopy;
  LOBYTE(error) = [self performWriteTransactionWithHealthDatabase:database error:error block:v12];

  return error;
}

uint64_t __73__HDCloudSyncStoreEntity_resetLastSyncDateExcludingStores_profile_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 databaseForEntityClass:*(a1 + 40)];
  v6 = [*(a1 + 32) hk_map:&__block_literal_global_227];
  v7 = [v6 componentsJoinedByString:{@", "}];

  v8 = MEMORY[0x277CCACA8];
  v9 = [*(a1 + 40) disambiguatedDatabaseTable];
  v10 = *MEMORY[0x277D10A40];
  v11 = +[(HDSQLiteSchemaEntity *)HDSyncStoreEntity];
  v12 = [v8 stringWithFormat:@"UPDATE %@ SET %@ = NULL WHERE %@ NOT IN (SELECT %@ FROM %@ WHERE %@ IN (%@))", v9, @"last_sync", @"sync_store", v10, v11, @"uuid", v7];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __73__HDCloudSyncStoreEntity_resetLastSyncDateExcludingStores_profile_error___block_invoke_3;
  v15[3] = &unk_278614860;
  v16 = *(a1 + 32);
  v13 = [v5 executeUncachedSQL:v12 error:a3 bindingHandler:v15 enumerationHandler:0];

  return v13;
}

void __73__HDCloudSyncStoreEntity_resetLastSyncDateExcludingStores_profile_error___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    v6 = 1;
    do
    {
      v7 = 0;
      v8 = v6;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v6 = v8 + 1;
        v9 = [*(*(&v10 + 1) + 8 * v7) storeIdentifier];
        HDSQLiteBindFoundationValueToStatement();

        ++v7;
        ++v8;
      }

      while (v4 != v7);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }
}

- (id)storeUUIDInTransaction:(id)transaction error:(id *)error
{
  transactionCopy = transaction;
  v6 = [(HDSQLiteEntity *)[HDSyncStoreEntity alloc] initWithPersistentID:[(HDSQLiteEntity *)self persistentID]];
  v7 = [transactionCopy databaseForEntityClass:objc_opt_class()];

  v8 = [(HDSQLiteEntity *)v6 UUIDForProperty:@"uuid" database:v7];

  return v8;
}

+ (id)cachedExcludedSyncIdentitiesForStoreIdentifier:(id)identifier profile:(id)profile error:(id *)error
{
  identifierCopy = identifier;
  profileCopy = profile;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__188;
  v23 = __Block_byref_object_dispose__188;
  v24 = 0;
  database = [profileCopy database];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __87__HDCloudSyncStoreEntity_cachedExcludedSyncIdentitiesForStoreIdentifier_profile_error___block_invoke;
  v15[3] = &unk_2786169D8;
  v17 = &v19;
  selfCopy = self;
  v11 = identifierCopy;
  v16 = v11;
  LODWORD(error) = [self performReadTransactionWithHealthDatabase:database error:error block:v15];

  if (error)
  {
    v12 = v20[5];
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  _Block_object_dispose(&v19, 8);

  return v13;
}

BOOL __87__HDCloudSyncStoreEntity_cachedExcludedSyncIdentitiesForStoreIdentifier_profile_error___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a1[6];
  v6 = a1[4];
  v7 = [a2 databaseForEntityClass:v5];
  v8 = [v5 cachedExcludedSyncIdentitiesForStoreIdentifier:v6 database:v7 error:a3];
  v9 = *(a1[5] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  return *a3 == 0;
}

+ (id)cachedExcludedSyncIdentitiesForStoreIdentifier:(id)identifier database:(id)database error:(id *)error
{
  v43[2] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  databaseCopy = database;
  v11 = databaseCopy;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDCloudSyncStoreEntity.m" lineNumber:564 description:{@"Invalid parameter not satisfying: %@", @"storeIdentifier != nil"}];

    if (v11)
    {
      goto LABEL_3;
    }

LABEL_14:
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"HDCloudSyncStoreEntity.m" lineNumber:565 description:{@"Invalid parameter not satisfying: %@", @"database != nil"}];

    goto LABEL_3;
  }

  if (!databaseCopy)
  {
    goto LABEL_14;
  }

LABEL_3:
  v12 = MEMORY[0x277CCACA8];
  v13 = +[(HDSQLiteSchemaEntity *)HDSyncStoreEntity];
  disambiguatedDatabaseTable = [self disambiguatedDatabaseTable];
  v15 = [v12 stringWithFormat:@"SELECT cs.%@ FROM %@ AS s INNER JOIN %@ AS cs ON s.%@ == cs.%@ WHERE s.%@ == ?", @"cached_excluded_sync_identities", v13, disambiguatedDatabaseTable, *MEMORY[0x277D10A40], @"sync_store", @"uuid"];

  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__188;
  v37 = __Block_byref_object_dispose__188;
  v38 = 0;
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __88__HDCloudSyncStoreEntity_cachedExcludedSyncIdentitiesForStoreIdentifier_database_error___block_invoke;
  v31[3] = &unk_278614860;
  v16 = identifierCopy;
  v32 = v16;
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __88__HDCloudSyncStoreEntity_cachedExcludedSyncIdentitiesForStoreIdentifier_database_error___block_invoke_2;
  v30[3] = &unk_278614620;
  v30[4] = &v33;
  if (([v11 executeUncachedSQL:v15 error:error bindingHandler:v31 enumerationHandler:v30] & 1) != 0 && v34[5])
  {
    v17 = objc_alloc(MEMORY[0x277CCAAC8]);
    v18 = v34[5];
    v29 = 0;
    v19 = [v17 initForReadingFromData:v18 error:&v29];
    v20 = v29;
    v21 = MEMORY[0x277CBEB98];
    v43[0] = objc_opt_class();
    v43[1] = objc_opt_class();
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:2];
    v23 = [v21 setWithArray:v22];
    v24 = [v19 decodeObjectOfClasses:v23 forKey:@"excludedSyncIdentities"];

    [v19 finishDecoding];
    if (v20)
    {
      _HKInitializeLogging();
      v25 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        selfCopy = self;
        v41 = 2114;
        v42 = v20;
        _os_log_error_impl(&dword_228986000, v25, OS_LOG_TYPE_ERROR, "%{public}@: Failed to load cached excluded sync identities with error: %{public}@", buf, 0x16u);
      }
    }
  }

  else
  {
    v24 = 0;
  }

  _Block_object_dispose(&v33, 8);

  return v24;
}

uint64_t __88__HDCloudSyncStoreEntity_cachedExcludedSyncIdentitiesForStoreIdentifier_database_error___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v4[2] = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  v4[1] = 0;
  [*(a1 + 32) getUUIDBytes:v4];
  return sqlite3_bind_blob(a2, 1, v4, 16, 0xFFFFFFFFFFFFFFFFLL);
}

uint64_t __88__HDCloudSyncStoreEntity_cachedExcludedSyncIdentitiesForStoreIdentifier_database_error___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x22AAC6C30](a2, 0);
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return 0;
}

+ (BOOL)cacheExcludedSyncIdentities:(id)identities storeIdentifier:(id)identifier profile:(id)profile error:(id *)error
{
  identitiesCopy = identities;
  identifierCopy = identifier;
  database = [profile database];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __84__HDCloudSyncStoreEntity_cacheExcludedSyncIdentities_storeIdentifier_profile_error___block_invoke;
  v16[3] = &unk_278614698;
  v18 = identifierCopy;
  selfCopy = self;
  v17 = identitiesCopy;
  v13 = identifierCopy;
  v14 = identitiesCopy;
  LOBYTE(error) = [self performWriteTransactionWithHealthDatabase:database error:error block:v16];

  return error;
}

uint64_t __84__HDCloudSyncStoreEntity_cacheExcludedSyncIdentities_storeIdentifier_profile_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 databaseForEntityClass:*(a1 + 48)];
  v6 = [*(a1 + 48) cacheExcludedSyncIdentities:*(a1 + 32) storeIdentifier:*(a1 + 40) database:v5 error:a3];

  return v6;
}

+ (BOOL)cacheExcludedSyncIdentities:(id)identities storeIdentifier:(id)identifier database:(id)database error:(id *)error
{
  identitiesCopy = identities;
  identifierCopy = identifier;
  databaseCopy = database;
  v14 = databaseCopy;
  if (identifierCopy)
  {
    if (databaseCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDCloudSyncStoreEntity.m" lineNumber:636 description:{@"Invalid parameter not satisfying: %@", @"storeIdentifier != nil"}];

    if (v14)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"HDCloudSyncStoreEntity.m" lineNumber:637 description:{@"Invalid parameter not satisfying: %@", @"database != nil"}];

LABEL_3:
  v15 = [HDSyncStoreEntity existingSyncStoreEntityWithUUID:identifierCopy database:v14 error:error];
  if (v15)
  {
    if (identitiesCopy)
    {
      v16 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
      [v16 encodeObject:identitiesCopy forKey:@"excludedSyncIdentities"];
      encodedData = [v16 encodedData];
    }

    else
    {
      encodedData = 0;
    }

    v19 = MEMORY[0x277CCACA8];
    disambiguatedDatabaseTable = [self disambiguatedDatabaseTable];
    v21 = [v19 stringWithFormat:@"UPDATE %@ SET %@ = ? WHERE %@ == ?", disambiguatedDatabaseTable, @"cached_excluded_sync_identities", @"sync_store"];

    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __85__HDCloudSyncStoreEntity_cacheExcludedSyncIdentities_storeIdentifier_database_error___block_invoke;
    v26[3] = &unk_278613038;
    v27 = encodedData;
    v28 = v15;
    v22 = encodedData;
    v18 = [v14 executeUncachedSQL:v21 error:error bindingHandler:v26 enumerationHandler:0];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

uint64_t __85__HDCloudSyncStoreEntity_cacheExcludedSyncIdentities_storeIdentifier_database_error___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    sqlite3_bind_blob(a2, 1, [v4 bytes], objc_msgSend(*(a1 + 32), "length"), 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    sqlite3_bind_null(a2, 1);
  }

  v5 = [*(a1 + 40) persistentID];

  return sqlite3_bind_int64(a2, 2, v5);
}

+ (id)cachedEpochsForStoreIdentifier:(id)identifier profile:(id)profile error:(id *)error
{
  identifierCopy = identifier;
  profileCopy = profile;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__188;
  v23 = __Block_byref_object_dispose__188;
  v24 = 0;
  database = [profileCopy database];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __71__HDCloudSyncStoreEntity_cachedEpochsForStoreIdentifier_profile_error___block_invoke;
  v15[3] = &unk_2786169D8;
  v17 = &v19;
  selfCopy = self;
  v11 = identifierCopy;
  v16 = v11;
  LODWORD(error) = [self performReadTransactionWithHealthDatabase:database error:error block:v15];

  if (error)
  {
    v12 = v20[5];
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  _Block_object_dispose(&v19, 8);

  return v13;
}

BOOL __71__HDCloudSyncStoreEntity_cachedEpochsForStoreIdentifier_profile_error___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a1[6];
  v6 = a1[4];
  v7 = [a2 databaseForEntityClass:v5];
  v8 = [v5 cachedEpochsForStoreIdentifier:v6 database:v7 error:a3];
  v9 = *(a1[5] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  return *a3 == 0;
}

+ (id)cachedEpochsForStoreIdentifier:(id)identifier database:(id)database error:(id *)error
{
  identifierCopy = identifier;
  databaseCopy = database;
  v11 = databaseCopy;
  if (identifierCopy)
  {
    if (databaseCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDCloudSyncStoreEntity.m" lineNumber:699 description:{@"Invalid parameter not satisfying: %@", @"storeIdentifier != nil"}];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"HDCloudSyncStoreEntity.m" lineNumber:700 description:{@"Invalid parameter not satisfying: %@", @"database != nil"}];

LABEL_3:
  v12 = MEMORY[0x277CCACA8];
  v13 = +[(HDSQLiteSchemaEntity *)HDSyncStoreEntity];
  disambiguatedDatabaseTable = [self disambiguatedDatabaseTable];
  v15 = [v12 stringWithFormat:@"SELECT cs.%@, cs.%@, cs.%@ FROM %@ AS s INNER JOIN %@ AS cs ON s.%@ == cs.%@ WHERE s.%@ == ?", @"cached_active_epoch", @"cached_pending_epoch", @"cached_tombstone_epoch", v13, disambiguatedDatabaseTable, *MEMORY[0x277D10A40], @"sync_store", @"uuid"];

  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__188;
  v28 = __Block_byref_object_dispose__188;
  v29 = 0;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __72__HDCloudSyncStoreEntity_cachedEpochsForStoreIdentifier_database_error___block_invoke;
  v22[3] = &unk_278614860;
  v16 = identifierCopy;
  v23 = v16;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __72__HDCloudSyncStoreEntity_cachedEpochsForStoreIdentifier_database_error___block_invoke_2;
  v21[3] = &unk_278614620;
  v21[4] = &v24;
  if ([v11 executeUncachedSQL:v15 error:error bindingHandler:v22 enumerationHandler:v21])
  {
    v17 = v25[5];
  }

  else
  {
    v17 = 0;
  }

  _Block_object_dispose(&v24, 8);

  return v17;
}

uint64_t __72__HDCloudSyncStoreEntity_cachedEpochsForStoreIdentifier_database_error___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v4[2] = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  v4[1] = 0;
  [*(a1 + 32) getUUIDBytes:v4];
  return sqlite3_bind_blob(a2, 1, v4, 16, 0xFFFFFFFFFFFFFFFFLL);
}

uint64_t __72__HDCloudSyncStoreEntity_cachedEpochsForStoreIdentifier_database_error___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (HDSQLiteColumnWithNameIsNull())
  {
    v3 = 0;
  }

  else
  {
    v3 = [MEMORY[0x277CCABB0] numberWithLongLong:HDSQLiteColumnWithNameAsInt64()];
  }

  if (HDSQLiteColumnWithNameIsNull())
  {
    v4 = 0;
  }

  else
  {
    v4 = [MEMORY[0x277CCABB0] numberWithLongLong:HDSQLiteColumnWithNameAsInt64()];
  }

  if (HDSQLiteColumnWithNameIsNull())
  {
    v5 = 0;
  }

  else
  {
    v5 = [MEMORY[0x277CCABB0] numberWithLongLong:HDSQLiteColumnWithNameAsInt64()];
  }

  v6 = [[HDCloudSyncCachedStoreEpochs alloc] initWithActiveEpoch:v3 pendingEpoch:v4 tombstoneEpoch:v5];
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  return 0;
}

+ (BOOL)cacheEpochs:(id)epochs storeIdentifier:(id)identifier profile:(id)profile error:(id *)error
{
  epochsCopy = epochs;
  identifierCopy = identifier;
  database = [profile database];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __68__HDCloudSyncStoreEntity_cacheEpochs_storeIdentifier_profile_error___block_invoke;
  v16[3] = &unk_278614698;
  v18 = identifierCopy;
  selfCopy = self;
  v17 = epochsCopy;
  v13 = identifierCopy;
  v14 = epochsCopy;
  LOBYTE(error) = [self performWriteTransactionWithHealthDatabase:database error:error block:v16];

  return error;
}

uint64_t __68__HDCloudSyncStoreEntity_cacheEpochs_storeIdentifier_profile_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 databaseForEntityClass:*(a1 + 48)];
  v6 = [*(a1 + 48) cacheEpochs:*(a1 + 32) storeIdentifier:*(a1 + 40) database:v5 error:a3];

  return v6;
}

+ (BOOL)cacheEpochs:(id)epochs storeIdentifier:(id)identifier database:(id)database error:(id *)error
{
  epochsCopy = epochs;
  identifierCopy = identifier;
  databaseCopy = database;
  if (epochsCopy)
  {
    if (identifierCopy)
    {
      goto LABEL_3;
    }

LABEL_9:
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDCloudSyncStoreEntity.m" lineNumber:778 description:{@"Invalid parameter not satisfying: %@", @"storeIdentifier != nil"}];

    if (databaseCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"HDCloudSyncStoreEntity.m" lineNumber:777 description:{@"Invalid parameter not satisfying: %@", @"epochs != nil"}];

  if (!identifierCopy)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (databaseCopy)
  {
    goto LABEL_4;
  }

LABEL_10:
  currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"HDCloudSyncStoreEntity.m" lineNumber:779 description:{@"Invalid parameter not satisfying: %@", @"database != nil"}];

LABEL_4:
  v14 = [HDSyncStoreEntity existingSyncStoreEntityWithUUID:identifierCopy database:databaseCopy error:error];
  if (v14)
  {
    v15 = MEMORY[0x277CCACA8];
    disambiguatedDatabaseTable = [self disambiguatedDatabaseTable];
    v17 = [v15 stringWithFormat:@"UPDATE %@ SET %@ = ?, %@ = ?, %@ = ? WHERE %@ == ?", disambiguatedDatabaseTable, @"cached_active_epoch", @"cached_pending_epoch", @"cached_tombstone_epoch", @"sync_store"];

    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __69__HDCloudSyncStoreEntity_cacheEpochs_storeIdentifier_database_error___block_invoke;
    v23[3] = &unk_278613038;
    v24 = epochsCopy;
    v25 = v14;
    v18 = [databaseCopy executeUncachedSQL:v17 error:error bindingHandler:v23 enumerationHandler:0];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

uint64_t __69__HDCloudSyncStoreEntity_cacheEpochs_storeIdentifier_database_error___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = [*(a1 + 32) activeEpoch];

  if (v4)
  {
    v5 = [*(a1 + 32) activeEpoch];
    sqlite3_bind_int64(a2, 1, [v5 integerValue]);
  }

  else
  {
    sqlite3_bind_null(a2, 1);
  }

  v6 = [*(a1 + 32) pendingEpoch];

  if (v6)
  {
    v7 = [*(a1 + 32) pendingEpoch];
    sqlite3_bind_int64(a2, 2, [v7 integerValue]);
  }

  else
  {
    sqlite3_bind_null(a2, 2);
  }

  v8 = [*(a1 + 32) tombstoneEpoch];

  if (v8)
  {
    v9 = [*(a1 + 32) tombstoneEpoch];
    sqlite3_bind_int64(a2, 3, [v9 integerValue]);
  }

  else
  {
    sqlite3_bind_null(a2, 3);
  }

  v10 = [*(a1 + 40) persistentID];

  return sqlite3_bind_int64(a2, 4, v10);
}

+ (BOOL)enumerateShardsForOwnerIdentifier:(id)identifier containerIdentifier:(id)containerIdentifier syncIdentity:(id)identity profile:(id)profile transaction:(id)transaction error:(id *)error handler:(id)handler
{
  if (identity)
  {
    identifierCopy = identifier;
    containerIdentifierCopy = containerIdentifier;
    transactionCopy = transaction;
    handlerCopy = handler;
    profileCopy = profile;
    identityCopy = identity;
    v20 = objc_opt_self();
    syncIdentityManager = [profileCopy syncIdentityManager];

    v69[0] = 0;
    v22 = [syncIdentityManager concreteIdentityForIdentity:identityCopy shouldCreate:0 transaction:transactionCopy error:v69];

    v23 = v69[0];
    if (v23)
    {
      if (error)
      {
        v24 = v23;
        v25 = 0;
        *error = v23;
      }

      else
      {
        _HKLogDroppedError();
        v25 = 0;
      }
    }

    else
    {
      v40 = MEMORY[0x277CCACA8];
      errorCopy = error;
      v41 = handlerCopy;
      v42 = containerIdentifierCopy;
      v43 = identifierCopy;
      v44 = *MEMORY[0x277D10A40];
      disambiguatedDatabaseTable = [v20 disambiguatedDatabaseTable];
      v50 = v44;
      identifierCopy = v43;
      containerIdentifierCopy = v42;
      handlerCopy = v41;
      v46 = [v40 stringWithFormat:@"SELECT %@, %@, %@, %@ FROM %@ WHERE %@ = ? AND %@ = ? AND %@ = ? AND %@ IS NOT NULL", v50, @"shard_start_date", @"shard_end_date", @"shard_type", disambiguatedDatabaseTable, @"owner_id", @"container_id", @"sync_identity", @"shard_type"];

      v47 = [transactionCopy databaseForEntityClass:v20];
      v64 = MEMORY[0x277D85DD0];
      v65 = 3221225472;
      v66 = __128__HDCloudSyncStoreEntity__enumerateShardsForOwnerIdentifier_containerIdentifier_syncIdentity_profile_transaction_error_handler___block_invoke;
      v67 = &unk_278615C80;
      v68 = v46;
      v57 = MEMORY[0x277D85DD0];
      v58 = 3221225472;
      v59 = __128__HDCloudSyncStoreEntity__enumerateShardsForOwnerIdentifier_containerIdentifier_syncIdentity_profile_transaction_error_handler___block_invoke_2;
      v60 = &unk_278613528;
      v61 = identifierCopy;
      v62 = containerIdentifierCopy;
      v63 = v22;
      v52 = MEMORY[0x277D85DD0];
      v53 = 3221225472;
      v54 = __128__HDCloudSyncStoreEntity__enumerateShardsForOwnerIdentifier_containerIdentifier_syncIdentity_profile_transaction_error_handler___block_invoke_3;
      v55 = &unk_278613B30;
      v56 = v41;
      v48 = v46;
      v25 = [v47 executeCachedStatementForKey:&_enumerateShardsForOwnerIdentifier_containerIdentifier_syncIdentity_profile_transaction_error_handler__lookupKey error:errorCopy SQLGenerator:&v64 bindingHandler:&v57 enumerationHandler:&v52];
    }
  }

  else
  {
    identifierCopy2 = identifier;
    containerIdentifierCopy2 = containerIdentifier;
    handlerCopy2 = handler;
    transactionCopy2 = transaction;
    v30 = objc_opt_self();
    v31 = MEMORY[0x277CCACA8];
    v32 = *MEMORY[0x277D10A40];
    disambiguatedDatabaseTable2 = [v30 disambiguatedDatabaseTable];
    v34 = [v31 stringWithFormat:@"SELECT %@, %@, %@, %@ FROM %@ WHERE %@ = ? AND %@ = ? AND %@ IS NOT NULL", v32, @"shard_start_date", @"shard_end_date", @"shard_type", disambiguatedDatabaseTable2, @"owner_id", @"container_id", @"shard_type"];

    v35 = [transactionCopy2 databaseForEntityClass:v30];

    v64 = MEMORY[0x277D85DD0];
    v65 = 3221225472;
    v66 = __115__HDCloudSyncStoreEntity__enumerateShardsForOwnerIdentifier_containerIdentifier_profile_transaction_error_handler___block_invoke;
    v67 = &unk_278615C80;
    v68 = v34;
    v56 = handlerCopy2;
    v57 = MEMORY[0x277D85DD0];
    v58 = 3221225472;
    v59 = __115__HDCloudSyncStoreEntity__enumerateShardsForOwnerIdentifier_containerIdentifier_profile_transaction_error_handler___block_invoke_2;
    v60 = &unk_278613038;
    v61 = identifierCopy2;
    v62 = containerIdentifierCopy2;
    v52 = MEMORY[0x277D85DD0];
    v53 = 3221225472;
    v54 = __115__HDCloudSyncStoreEntity__enumerateShardsForOwnerIdentifier_containerIdentifier_profile_transaction_error_handler___block_invoke_3;
    v55 = &unk_278613B30;
    v36 = handlerCopy2;
    v37 = containerIdentifierCopy2;
    v38 = identifierCopy2;
    v39 = v34;
    v25 = [v35 executeCachedStatementForKey:&_enumerateShardsForOwnerIdentifier_containerIdentifier_profile_transaction_error_handler__lookupKey error:error SQLGenerator:&v64 bindingHandler:&v57 enumerationHandler:&v52];
  }

  return v25;
}

- (BOOL)updateShardStartDate:(id)date endDate:(id)endDate type:(int64_t)type transaction:(id)transaction error:(id *)error
{
  dateCopy = date;
  endDateCopy = endDate;
  v14 = [transaction databaseForEntity:self];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __78__HDCloudSyncStoreEntity_updateShardStartDate_endDate_type_transaction_error___block_invoke;
  v23[3] = &unk_278615C80;
  v23[4] = self;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __78__HDCloudSyncStoreEntity_updateShardStartDate_endDate_type_transaction_error___block_invoke_2;
  v18[3] = &unk_2786144E0;
  v19 = dateCopy;
  v20 = endDateCopy;
  selfCopy = self;
  typeCopy = type;
  v15 = endDateCopy;
  v16 = dateCopy;
  LOBYTE(error) = [v14 executeCachedStatementForKey:&updateShardStartDate_endDate_type_transaction_error__updateKey error:error SQLGenerator:v23 bindingHandler:v18 enumerationHandler:0];

  return error;
}

id __78__HDCloudSyncStoreEntity_updateShardStartDate_endDate_type_transaction_error___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = [objc_opt_class() disambiguatedDatabaseTable];
  v3 = [v1 stringWithFormat:@"UPDATE %@ SET %@ = ?, %@ = ?, %@ = ? WHERE %@ = ?", v2, @"shard_start_date", @"shard_end_date", @"shard_type", *MEMORY[0x277D10A40]];

  return v3;
}

uint64_t __78__HDCloudSyncStoreEntity_updateShardStartDate_endDate_type_transaction_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    [v4 timeIntervalSinceReferenceDate];
    sqlite3_bind_double(a2, 1, v5);
  }

  else
  {
    sqlite3_bind_null(a2, 1);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    [v6 timeIntervalSinceReferenceDate];
    sqlite3_bind_double(a2, 2, v7);
  }

  else
  {
    sqlite3_bind_null(a2, 2);
  }

  sqlite3_bind_int64(a2, 3, *(a1 + 56));
  v8 = [*(a1 + 48) persistentID];

  return sqlite3_bind_int64(a2, 4, v8);
}

- (BOOL)fetchShardPropertiesInTransaction:(id)transaction error:(id *)error handler:(id)handler
{
  handlerCopy = handler;
  v9 = [transaction databaseForEntity:self];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __74__HDCloudSyncStoreEntity_fetchShardPropertiesInTransaction_error_handler___block_invoke;
  v15[3] = &unk_278615C80;
  v15[4] = self;
  v13 = handlerCopy;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __74__HDCloudSyncStoreEntity_fetchShardPropertiesInTransaction_error_handler___block_invoke_2;
  v14[3] = &unk_278614860;
  v14[4] = self;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __74__HDCloudSyncStoreEntity_fetchShardPropertiesInTransaction_error_handler___block_invoke_3;
  v12[3] = &unk_278613B30;
  v10 = handlerCopy;
  LOBYTE(error) = [v9 executeCachedStatementForKey:&fetchShardPropertiesInTransaction_error_handler__lookupKey error:error SQLGenerator:v15 bindingHandler:v14 enumerationHandler:v12];

  return error;
}

id __74__HDCloudSyncStoreEntity_fetchShardPropertiesInTransaction_error_handler___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = [objc_opt_class() disambiguatedDatabaseTable];
  v3 = [v1 stringWithFormat:@"SELECT %@, %@, %@ FROM %@ WHERE %@ = ? AND %@ IS NOT NULL", @"shard_type", @"shard_start_date", @"shard_end_date", v2, *MEMORY[0x277D10A40], @"shard_type"];

  return v3;
}

uint64_t __74__HDCloudSyncStoreEntity_fetchShardPropertiesInTransaction_error_handler___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = [*(a1 + 32) persistentID];

  return sqlite3_bind_int64(a2, 1, v3);
}

uint64_t __74__HDCloudSyncStoreEntity_fetchShardPropertiesInTransaction_error_handler___block_invoke_3(uint64_t a1, uint64_t a2)
{
  HDSQLiteColumnAsInt64();
  v4 = MEMORY[0x22AAC6C40](a2, 1);
  v5 = MEMORY[0x22AAC6C40](a2, 2);
  v6 = (*(*(a1 + 32) + 16))();

  return v6;
}

- (BOOL)updateSyncIdentity:(id)identity transaction:(id)transaction error:(id *)error
{
  identityCopy = identity;
  v9 = [transaction databaseForEntity:self];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __63__HDCloudSyncStoreEntity_updateSyncIdentity_transaction_error___block_invoke;
  v15[3] = &unk_278615C80;
  v15[4] = self;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __63__HDCloudSyncStoreEntity_updateSyncIdentity_transaction_error___block_invoke_2;
  v12[3] = &unk_278613038;
  v13 = identityCopy;
  selfCopy = self;
  v10 = identityCopy;
  LOBYTE(error) = [v9 executeCachedStatementForKey:&updateSyncIdentity_transaction_error__lookupKey error:error SQLGenerator:v15 bindingHandler:v12 enumerationHandler:0];

  return error;
}

id __63__HDCloudSyncStoreEntity_updateSyncIdentity_transaction_error___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = [objc_opt_class() disambiguatedDatabaseTable];
  v3 = [v1 stringWithFormat:@"UPDATE %@ SET %@ = ? WHERE %@ = ?", v2, @"sync_identity", *MEMORY[0x277D10A40]];

  return v3;
}

uint64_t __63__HDCloudSyncStoreEntity_updateSyncIdentity_transaction_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = [*(a1 + 32) entity];
  sqlite3_bind_int64(a2, 1, [v4 persistentID]);

  v5 = [*(a1 + 40) persistentID];

  return sqlite3_bind_int64(a2, 2, v5);
}

+ (id)foreignKeys
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"sync_store";
  v2 = +[(HDHealthEntity *)HDSyncStoreEntity];
  v6[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

void __128__HDCloudSyncStoreEntity__enumerateShardsForOwnerIdentifier_containerIdentifier_syncIdentity_profile_transaction_error_handler___block_invoke_2(id *a1, sqlite3_stmt *a2)
{
  sqlite3_bind_text(a2, 1, [a1[4] UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  sqlite3_bind_text(a2, 2, [a1[5] UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  v4 = [a1[6] entity];
  sqlite3_bind_int64(a2, 3, [v4 persistentID]);
}

uint64_t __128__HDCloudSyncStoreEntity__enumerateShardsForOwnerIdentifier_containerIdentifier_syncIdentity_profile_transaction_error_handler___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v4 = [(HDSQLiteEntity *)[HDCloudSyncStoreEntity alloc] initWithPersistentID:HDSQLiteColumnAsInt64()];
  v5 = MEMORY[0x22AAC6C40](a2, 1);
  v6 = MEMORY[0x22AAC6C40](a2, 2);
  HDSQLiteColumnAsInt64();
  v7 = (*(*(a1 + 32) + 16))();

  return v7;
}

uint64_t __115__HDCloudSyncStoreEntity__enumerateShardsForOwnerIdentifier_containerIdentifier_profile_transaction_error_handler___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_text(a2, 1, [*(a1 + 32) UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  v4 = [*(a1 + 40) UTF8String];

  return sqlite3_bind_text(a2, 2, v4, -1, 0xFFFFFFFFFFFFFFFFLL);
}

uint64_t __115__HDCloudSyncStoreEntity__enumerateShardsForOwnerIdentifier_containerIdentifier_profile_transaction_error_handler___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v4 = [(HDSQLiteEntity *)[HDCloudSyncStoreEntity alloc] initWithPersistentID:HDSQLiteColumnAsInt64()];
  v5 = MEMORY[0x22AAC6C40](a2, 1);
  v6 = MEMORY[0x22AAC6C40](a2, 2);
  HDSQLiteColumnAsInt64();
  v7 = (*(*(a1 + 32) + 16))();

  return v7;
}

@end