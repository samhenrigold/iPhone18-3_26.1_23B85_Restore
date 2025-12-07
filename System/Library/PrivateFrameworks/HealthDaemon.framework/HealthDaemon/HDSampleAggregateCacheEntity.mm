@interface HDSampleAggregateCacheEntity
+ (BOOL)deleteCacheForBucketIndexes:(id)indexes forQueryIdentifier:(id)identifier sourceEntity:(id)entity generationNumber:(int64_t)number persistentAnchorDate:(id)date intervalComponents:(id)components profile:(id)profile error:(id *)self0;
+ (BOOL)enumerateCachedDataForQueryIdentifier:(id)identifier sourceEntity:(id)entity profile:(id)profile startIndex:(int64_t)index endIndex:(int64_t)endIndex error:(id *)error enumerationHandler:(id)handler;
+ (BOOL)insertCachedData:(id)data forQueryIdentifier:(id)identifier sourceEntity:(id)entity generationNumber:(int64_t)number persistentAnchorDate:(id)date intervalComponents:(id)components profile:(id)profile error:(id *)self0;
+ (id)_owningCachedQueryEntityForQueryIdentifier:(void *)identifier sourceEntity:(void *)entity database:(uint64_t)database error:;
+ (id)_queryMetadataForIdentifier:(uint64_t)identifier sourceEntity:(void *)entity generationNumber:(void *)number persistentAnchorDate:(void *)date intervalComponents:(void *)components profile:(void *)profile transaction:(void *)transaction error:(void *)error;
+ (id)foreignKeys;
+ (id)pruneWithProfile:(id)profile nowDate:(id)date limit:(unint64_t)limit error:(id *)error;
+ (id)uniquedColumns;
+ (int64_t)cachesExistForQueryIdentifier:(id)identifier sourceEntity:(id)entity profile:(id)profile error:(id *)error;
@end

@implementation HDSampleAggregateCacheEntity

+ (id)uniquedColumns
{
  v4[2] = *MEMORY[0x277D85DE8];
  v4[0] = @"owning_query_id";
  v4[1] = @"bucket_index";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:2];

  return v2;
}

+ (id)foreignKeys
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"owning_query_id";
  v2 = +[(HDHealthEntity *)HDCachedQueryMetadataEntity];
  v6[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

+ (id)_queryMetadataForIdentifier:(uint64_t)identifier sourceEntity:(void *)entity generationNumber:(void *)number persistentAnchorDate:(void *)date intervalComponents:(void *)components profile:(void *)profile transaction:(void *)transaction error:(void *)error
{
  entityCopy = entity;
  numberCopy = number;
  dateCopy = date;
  componentsCopy = components;
  profileCopy = profile;
  transactionCopy = transaction;
  v20 = objc_opt_self();
  v21 = [transactionCopy databaseForEntityClass:v20];

  v42 = 0;
  v22 = [(HDSampleAggregateCacheEntity *)v20 _owningCachedQueryEntityForQueryIdentifier:entityCopy sourceEntity:numberCopy database:v21 error:&v42];
  v23 = v42;
  v24 = v23;
  if (!v22)
  {
    if (v23)
    {
      if (error)
      {
        v26 = v23;
        v22 = 0;
        *error = v24;
      }

      else
      {
        _HKLogDroppedError();
        v22 = 0;
      }
    }

    else
    {
      errorCopy = error;
      v27 = [HDCachedQueryMetadata alloc];
      persistentID = [numberCopy persistentID];
      daemon = [profileCopy daemon];
      behavior = [daemon behavior];
      currentOSBuild = [behavior currentOSBuild];
      v30 = [(HDCachedQueryMetadata *)v27 initWithCachingIdentifier:entityCopy sourceEntityPersistentID:persistentID buildVersion:currentOSBuild anchorDate:dateCopy intervalComponents:componentsCopy];

      v31 = v30;
      v41 = 0;
      v22 = [HDCachedQueryMetadataEntity insertCachedQueryMetadata:v30 profile:profileCopy error:&v41];
      v32 = v41;
      v33 = v32;
      if (v22)
      {
        v34 = v22;
      }

      else
      {
        v35 = v32;
        if (v35)
        {
          v40 = v31;
          if (errorCopy)
          {
            v35 = v35;
            *errorCopy = v35;
          }

          else
          {
            v36 = v35;
            _HKLogDroppedError();
            v35 = v36;
          }

          v31 = v40;
        }
      }
    }
  }

  return v22;
}

+ (id)_owningCachedQueryEntityForQueryIdentifier:(void *)identifier sourceEntity:(void *)entity database:(uint64_t)database error:
{
  entityCopy = entity;
  identifierCopy = identifier;
  v10 = a2;
  objc_opt_self();
  v11 = HDCachedQueryMetadataEntityPredicateForQueryIdentifierAndSource(v10, identifierCopy);

  v12 = [(HDSQLiteEntity *)HDCachedQueryMetadataEntity anyInDatabase:entityCopy predicate:v11 error:database];

  return v12;
}

+ (BOOL)insertCachedData:(id)data forQueryIdentifier:(id)identifier sourceEntity:(id)entity generationNumber:(int64_t)number persistentAnchorDate:(id)date intervalComponents:(id)components profile:(id)profile error:(id *)self0
{
  v48[4] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  identifierCopy = identifier;
  entityCopy = entity;
  dateCopy = date;
  componentsCopy = components;
  profileCopy = profile;
  if (identifierCopy)
  {
    if (entityCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDSampleAggregateCacheEntity.m" lineNumber:120 description:{@"Invalid parameter not satisfying: %@", @"queryIdentifier != nil"}];

    if (entityCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"HDSampleAggregateCacheEntity.m" lineNumber:121 description:{@"Invalid parameter not satisfying: %@", @"sourceEntity != nil"}];

LABEL_3:
  if (!profileCopy)
  {
    currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"HDSampleAggregateCacheEntity.m" lineNumber:122 description:{@"Invalid parameter not satisfying: %@", @"profile != nil"}];

    if (dateCopy)
    {
      goto LABEL_5;
    }

LABEL_9:
    currentHandler4 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler4 handleFailureInMethod:a2 object:self file:@"HDSampleAggregateCacheEntity.m" lineNumber:123 description:{@"Invalid parameter not satisfying: %@", @"persistentAnchorDate != nil"}];

    goto LABEL_5;
  }

  if (!dateCopy)
  {
    goto LABEL_9;
  }

LABEL_5:
  v48[0] = @"owning_query_id";
  v48[1] = @"bucket_index";
  v48[2] = @"data";
  v48[3] = @"generation_number";
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:4];
  database = [profileCopy database];
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __152__HDSampleAggregateCacheEntity_insertCachedData_forQueryIdentifier_sourceEntity_generationNumber_persistentAnchorDate_intervalComponents_profile_error___block_invoke;
  v38[3] = &unk_27862A458;
  v39 = identifierCopy;
  v40 = entityCopy;
  selfCopy = self;
  numberCopy = number;
  v41 = dateCopy;
  v42 = componentsCopy;
  v43 = profileCopy;
  v44 = dataCopy;
  v45 = v22;
  v24 = v22;
  v25 = dataCopy;
  v26 = profileCopy;
  v27 = componentsCopy;
  v28 = dateCopy;
  v29 = entityCopy;
  v30 = identifierCopy;
  v31 = [self performWriteTransactionWithHealthDatabase:database error:error block:v38];

  return v31;
}

uint64_t __152__HDSampleAggregateCacheEntity_insertCachedData_forQueryIdentifier_sourceEntity_generationNumber_persistentAnchorDate_intervalComponents_profile_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v26 = [HDSampleAggregateCacheEntity _queryMetadataForIdentifier:*(a1 + 32) sourceEntity:*(a1 + 40) generationNumber:*(a1 + 48) persistentAnchorDate:*(a1 + 56) intervalComponents:*(a1 + 64) profile:v5 transaction:a3 error:?];
  if (v26)
  {
    v25 = [v5 databaseForEntityClass:*(a1 + 88)];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    obj = *(a1 + 72);
    v6 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v34;
      v23 = v5;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v34 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v33 + 1) + 8 * i);
          v11 = [v10 bucketIndexForIntervalComponents:*(a1 + 56) anchorDate:*(a1 + 48)];
          v32 = 0;
          v12 = [v10 getData:&v32 error:a3];
          v13 = v32;
          v14 = v13;
          if (!v12)
          {

LABEL_15:
            v21 = 0;
            v5 = v23;
            goto LABEL_16;
          }

          v15 = *(a1 + 80);
          v16 = *(a1 + 88);
          v27[0] = MEMORY[0x277D85DD0];
          v27[1] = 3221225472;
          v27[2] = __152__HDSampleAggregateCacheEntity_insertCachedData_forQueryIdentifier_sourceEntity_generationNumber_persistentAnchorDate_intervalComponents_profile_error___block_invoke_2;
          v27[3] = &unk_27861BAE8;
          v17 = v26;
          v18 = *(a1 + 96);
          v30 = v11;
          v31 = v18;
          v28 = v17;
          v29 = v14;
          v19 = v14;
          v20 = [v16 insertOrReplaceEntity:1 database:v25 properties:v15 error:a3 bindingHandler:v27];

          if (!v20)
          {
            goto LABEL_15;
          }
        }

        v7 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
        v21 = 1;
        v5 = v23;
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v21 = 1;
    }

LABEL_16:
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

void __152__HDSampleAggregateCacheEntity_insertCachedData_forQueryIdentifier_sourceEntity_generationNumber_persistentAnchorDate_intervalComponents_profile_error___block_invoke_2(uint64_t a1, uint64_t a2)
{
  MEMORY[0x22AAC6B90](a2, @"owning_query_id", [*(a1 + 32) persistentID]);
  MEMORY[0x22AAC6B90](a2, @"bucket_index", *(a1 + 48));
  MEMORY[0x22AAC6B90](a2, @"generation_number", *(a1 + 56));

  JUMPOUT(0x22AAC6B40);
}

+ (BOOL)deleteCacheForBucketIndexes:(id)indexes forQueryIdentifier:(id)identifier sourceEntity:(id)entity generationNumber:(int64_t)number persistentAnchorDate:(id)date intervalComponents:(id)components profile:(id)profile error:(id *)self0
{
  indexesCopy = indexes;
  identifierCopy = identifier;
  entityCopy = entity;
  dateCopy = date;
  componentsCopy = components;
  profileCopy = profile;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDSampleAggregateCacheEntity.m" lineNumber:188 description:{@"Invalid parameter not satisfying: %@", @"queryIdentifier != nil"}];
  }

  if (!entityCopy)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"HDSampleAggregateCacheEntity.m" lineNumber:189 description:{@"Invalid parameter not satisfying: %@", @"sourceEntity != nil"}];

    if (profileCopy)
    {
      goto LABEL_5;
    }

LABEL_7:
    currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"HDSampleAggregateCacheEntity.m" lineNumber:190 description:{@"Invalid parameter not satisfying: %@", @"profile != nil"}];

    goto LABEL_5;
  }

  if (!profileCopy)
  {
    goto LABEL_7;
  }

LABEL_5:
  database = [profileCopy database];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __163__HDSampleAggregateCacheEntity_deleteCacheForBucketIndexes_forQueryIdentifier_sourceEntity_generationNumber_persistentAnchorDate_intervalComponents_profile_error___block_invoke;
  v35[3] = &unk_278614530;
  v36 = identifierCopy;
  v37 = entityCopy;
  selfCopy = self;
  numberCopy = number;
  v38 = dateCopy;
  v39 = componentsCopy;
  v40 = profileCopy;
  v41 = indexesCopy;
  v24 = indexesCopy;
  v25 = profileCopy;
  v26 = componentsCopy;
  v27 = dateCopy;
  v28 = entityCopy;
  v29 = identifierCopy;
  v30 = [self performWriteTransactionWithHealthDatabase:database error:error block:v35];

  return v30;
}

uint64_t __163__HDSampleAggregateCacheEntity_deleteCacheForBucketIndexes_forQueryIdentifier_sourceEntity_generationNumber_persistentAnchorDate_intervalComponents_profile_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [HDSampleAggregateCacheEntity _queryMetadataForIdentifier:*(a1 + 32) sourceEntity:*(a1 + 40) generationNumber:*(a1 + 48) persistentAnchorDate:*(a1 + 56) intervalComponents:*(a1 + 64) profile:v5 transaction:a3 error:?];
  if (v6)
  {
    v7 = [v5 databaseForEntityClass:*(a1 + 80)];
    v8 = *(a1 + 80);
    v9 = [MEMORY[0x277D10B28] containsPredicateWithProperty:@"bucket_index" values:*(a1 + 72)];
    v10 = [v8 deleteEntitiesInDatabase:v7 predicate:v9 error:a3];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (int64_t)cachesExistForQueryIdentifier:(id)identifier sourceEntity:(id)entity profile:(id)profile error:(id *)error
{
  identifierCopy = identifier;
  entityCopy = entity;
  profileCopy = profile;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 2;
  database = [profileCopy database];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __89__HDSampleAggregateCacheEntity_cachesExistForQueryIdentifier_sourceEntity_profile_error___block_invoke;
  v19[3] = &unk_27861DAA8;
  selfCopy = self;
  v14 = identifierCopy;
  v20 = v14;
  v15 = entityCopy;
  v21 = v15;
  v16 = profileCopy;
  v22 = v16;
  v23 = &v25;
  LOBYTE(error) = [(HDHealthEntity *)HDSampleAggregateCacheEntity performReadTransactionWithHealthDatabase:database error:error block:v19];

  if (error)
  {
    v17 = v26[3];
  }

  else
  {
    v17 = 0;
  }

  _Block_object_dispose(&v25, 8);
  return v17;
}

uint64_t __89__HDSampleAggregateCacheEntity_cachesExistForQueryIdentifier_sourceEntity_profile_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = [a2 databaseForEntityClass:*(a1 + 64)];
  v6 = *(a1 + 64);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v25 = 0;
  v9 = [(HDSampleAggregateCacheEntity *)v6 _owningCachedQueryEntityForQueryIdentifier:v7 sourceEntity:v8 database:v5 error:&v25];
  v10 = v25;
  v11 = v10;
  if (v9)
  {
    v12 = 1;
  }

  else
  {
    v12 = v10 == 0;
  }

  if (v12)
  {
    if (v9)
    {
      v13 = MEMORY[0x277D10B18];
      v14 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v9, "persistentID")}];
      v15 = [v13 predicateWithProperty:@"owning_query_id" equalToValue:v14];

      v16 = [*(a1 + 48) database];
      v24 = 0;
      v17 = [(HDHealthEntity *)HDSampleAggregateCacheEntity anyWithPredicate:v15 healthDatabase:v16 error:&v24];
      v18 = v24;

      if (v17)
      {
        v19 = 1;
      }

      else
      {
        v19 = v18 == 0;
      }

      v20 = v19;
      if (v19)
      {
        if (v17)
        {
          *(*(*(a1 + 56) + 8) + 24) = 1;
        }
      }

      else if (a3)
      {
        v22 = v18;
        *a3 = v18;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    else
    {
      v20 = 1;
    }
  }

  else if (a3)
  {
    v21 = v10;
    v20 = 0;
    *a3 = v11;
  }

  else
  {
    _HKLogDroppedError();
    v20 = 0;
  }

  return v20;
}

+ (BOOL)enumerateCachedDataForQueryIdentifier:(id)identifier sourceEntity:(id)entity profile:(id)profile startIndex:(int64_t)index endIndex:(int64_t)endIndex error:(id *)error enumerationHandler:(id)handler
{
  identifierCopy = identifier;
  entityCopy = entity;
  profileCopy = profile;
  handlerCopy = handler;
  if (index > endIndex)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDSampleAggregateCacheEntity.m" lineNumber:275 description:{@"Invalid parameter not satisfying: %@", @"startIndex <= endIndex"}];
  }

  database = [profileCopy database];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __136__HDSampleAggregateCacheEntity_enumerateCachedDataForQueryIdentifier_sourceEntity_profile_startIndex_endIndex_error_enumerationHandler___block_invoke;
  v27[3] = &unk_27862A480;
  v28 = identifierCopy;
  v29 = entityCopy;
  indexCopy = index;
  endIndexCopy = endIndex;
  v30 = handlerCopy;
  selfCopy = self;
  v21 = handlerCopy;
  v22 = entityCopy;
  v23 = identifierCopy;
  v24 = [(HDHealthEntity *)HDSampleAggregateCacheEntity performReadTransactionWithHealthDatabase:database error:error block:v27];

  return v24;
}

uint64_t __136__HDSampleAggregateCacheEntity_enumerateCachedDataForQueryIdentifier_sourceEntity_profile_startIndex_endIndex_error_enumerationHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v41[3] = *MEMORY[0x277D85DE8];
  v5 = [a2 databaseForEntityClass:*(a1 + 56)];
  v6 = *(a1 + 56);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v38 = 0;
  v9 = [(HDSampleAggregateCacheEntity *)v6 _owningCachedQueryEntityForQueryIdentifier:v7 sourceEntity:v8 database:v5 error:&v38];
  v10 = v38;
  v11 = v10;
  if (v9)
  {
    v12 = 1;
  }

  else
  {
    v12 = v10 == 0;
  }

  if (v12)
  {
    if (v9)
    {
      v13 = [v9 persistentID];
      v35 = a3;
      v14 = *(a1 + 64);
      v31 = *(a1 + 72);
      v34 = objc_alloc_init(MEMORY[0x277D10B80]);
      [v34 setEntityClass:objc_opt_class()];
      v15 = MEMORY[0x277D10B18];
      v33 = [MEMORY[0x277CCABB0] numberWithLongLong:v13];
      v32 = [v15 predicateWithProperty:@"owning_query_id" equalToValue:v33];
      v41[0] = v32;
      v16 = MEMORY[0x277D10B18];
      v17 = [MEMORY[0x277CCABB0] numberWithInteger:v14];
      v18 = [v16 predicateWithProperty:@"bucket_index" greaterThanOrEqualToValue:v17];
      v41[1] = v18;
      v19 = MEMORY[0x277D10B18];
      v20 = [MEMORY[0x277CCABB0] numberWithInteger:v31];
      v21 = [v19 predicateWithProperty:@"bucket_index" lessThanValue:v20];
      v41[2] = v21;
      v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:3];

      v23 = [MEMORY[0x277D10B20] predicateMatchingAllPredicates:v22];
      [v34 setPredicate:v23];

      v24 = [MEMORY[0x277D10B68] orderingTermWithProperty:@"bucket_index" entityClass:objc_opt_class() ascending:1];
      v40 = v24;
      v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v40 count:1];
      [v34 setOrderingTerms:v25];

      v26 = [objc_alloc(MEMORY[0x277D10B78]) initWithDatabase:v5 descriptor:v34];
      v39[0] = @"data";
      v39[1] = @"bucket_index";
      v39[2] = @"generation_number";
      v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:3];
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __136__HDSampleAggregateCacheEntity_enumerateCachedDataForQueryIdentifier_sourceEntity_profile_startIndex_endIndex_error_enumerationHandler___block_invoke_2;
      v36[3] = &unk_2786145A8;
      v37 = *(a1 + 48);
      v28 = [v26 enumerateProperties:v27 error:v35 enumerationHandler:v36];
    }

    else
    {
      v28 = 1;
    }
  }

  else if (a3)
  {
    v29 = v10;
    v28 = 0;
    *a3 = v11;
  }

  else
  {
    _HKLogDroppedError();
    v28 = 0;
  }

  return v28;
}

uint64_t __136__HDSampleAggregateCacheEntity_enumerateCachedDataForQueryIdentifier_sourceEntity_profile_startIndex_endIndex_error_enumerationHandler___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  v4 = HKWithAutoreleasePool();

  return v4;
}

uint64_t __136__HDSampleAggregateCacheEntity_enumerateCachedDataForQueryIdentifier_sourceEntity_profile_startIndex_endIndex_error_enumerationHandler___block_invoke_3(uint64_t a1)
{
  v2 = HDSQLiteColumnWithNameAsData();
  HDSQLiteColumnWithNameAsInt64();
  HDSQLiteColumnWithNameAsInt64();
  v3 = (*(*(a1 + 32) + 16))();

  return v3;
}

+ (id)pruneWithProfile:(id)profile nowDate:(id)date limit:(unint64_t)limit error:(id *)error
{
  profileCopy = profile;
  dateCopy = date;
  v11 = MEMORY[0x277CCACA8];
  disambiguatedDatabaseTable = [self disambiguatedDatabaseTable];
  disambiguatedDatabaseTable2 = [self disambiguatedDatabaseTable];
  v14 = +[(HDSQLiteSchemaEntity *)HDCachedQueryMetadataEntity];
  v15 = [v11 stringWithFormat:@"DELETE FROM %@                                                               WHERE ROWID IN(                                                                SELECT a.ROWID FROM %@ a                                                                 INNER JOIN %@ b ON (a.%@ = b.ROWID)                                                                     WHERE a.%@ < b.%@ OR a.%@ > b.%@ OR  a.%@ > b.%@                                                              )", disambiguatedDatabaseTable, disambiguatedDatabaseTable2, v14, @"owning_query_id", @"bucket_index", 0x283C30628, @"bucket_index", 0x283C30648, @"generation_number", 0x283C26288, 0];;

  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  database = [profileCopy database];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __69__HDSampleAggregateCacheEntity_pruneWithProfile_nowDate_limit_error___block_invoke;
  v19[3] = &unk_278614110;
  v19[4] = v15;
  v19[5] = &v20;
  LODWORD(error) = [self performWriteTransactionWithHealthDatabase:database error:error block:v19];

  if (error)
  {
    v17 = [MEMORY[0x277CCABB0] numberWithInt:*(v21 + 6)];
  }

  else
  {
    v17 = 0;
  }

  _Block_object_dispose(&v20, 8);

  return v17;
}

uint64_t __69__HDSampleAggregateCacheEntity_pruneWithProfile_nowDate_limit_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 protectedDatabase];
  v6 = [v5 executeSQL:*(a1 + 32) error:a3 bindingHandler:0 enumerationHandler:0];
  *(*(*(a1 + 40) + 8) + 24) = [v5 getChangesCount];

  return v6;
}

@end