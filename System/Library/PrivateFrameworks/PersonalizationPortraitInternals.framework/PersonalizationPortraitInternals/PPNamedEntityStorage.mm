@interface PPNamedEntityStorage
- (BOOL)decayFeedbackCountsWithDecayRate:(double)rate shouldContinueBlock:(id)block;
- (BOOL)deleteAllNamedEntitiesFromSourcesWithBundleId:(id)id atLeastOneNamedEntityRemoved:(BOOL *)removed deletedCount:(unint64_t *)count error:(id *)error;
- (BOOL)deleteAllNamedEntitiesFromSourcesWithBundleId:(id)id documentIds:(id)ids atLeastOneNamedEntityRemoved:(BOOL *)removed deletedCount:(unint64_t *)count error:(id *)error;
- (BOOL)deleteAllNamedEntitiesFromSourcesWithBundleId:(id)id groupId:(id)groupId olderThanDate:(id)date atLeastOneNamedEntityRemoved:(BOOL *)removed deletedCount:(unint64_t *)count error:(id *)error;
- (BOOL)deleteAllNamedEntitiesFromSourcesWithBundleId:(id)id groupIds:(id)ids atLeastOneNamedEntityRemoved:(BOOL *)removed deletedCount:(unint64_t *)count error:(id *)error;
- (BOOL)deleteAllNamedEntitiesOlderThanDate:(id)date atLeastOneNamedEntityRemoved:(BOOL *)removed deletedCount:(unint64_t *)count error:(id *)error;
- (BOOL)deleteAllNamedEntityFeedbackCountRecordsOlderThanDate:(id)date;
- (BOOL)deleteNamedEntitiesMatchingRowIds:(id)ids atLeastOneNamedEntityRemoved:(BOOL *)removed deletedCount:(unint64_t *)count error:(id *)error;
- (BOOL)donateNamedEntities:(id)entities source:(id)source algorithm:(unint64_t)algorithm cloudSync:(BOOL)sync decayRate:(double)rate sentimentScore:(double)score error:(id *)error;
- (BOOL)iterNamedEntityRecordsAndIdsWithQuery:(id)query error:(id *)error block:(id)block;
- (BOOL)iterNamedEntityRecordsWithQuery:(id)query error:(id *)error block:(id)block;
- (BOOL)pruneOrphanedNamedEntityFeedbackCountRecordsWithLimit:(unint64_t)limit rowOffset:(unint64_t)offset deletedCount:(unint64_t *)count isComplete:(BOOL *)complete;
- (BOOL)setNamedEntityFilterLastRecordDate:(id)date error:(id *)error;
- (BOOL)setNamedEntityFilterLastRunDate:(id)date error:(id *)error;
- (PPNamedEntityStorage)initWithDatabase:(id)database;
- (PPNamedEntityStorage)initWithDatabase:(id)database maxRecords:(unsigned int)records dkStorage:(id)storage loadEmptyDatabaseFromDK:(BOOL)k trialWrapper:(id)wrapper;
- (id)_createRecordWithStatement:(void *)statement txnWitness:;
- (id)_deletionQueue;
- (id)namedEntityFilterLastRecordDate;
- (id)namedEntityFilterLastRunDateWithError:(id *)error;
- (id)sourceStats:(unint64_t)stats withExcludedAlgorithms:(id)algorithms;
- (id)tempViewForSourceIdsExcludedAlgorithms:(id)algorithms txnWitness:(id)witness;
- (void)_asyncProcessNewDKEventDeletions;
- (void)_importDKEventsWithShouldContinueBlock:(uint64_t)block remoteEventsOnly:(uint64_t)only isComplete:(void *)complete shouldContinueBlock:;
- (void)dealloc;
- (void)disableSyncForBundleIds:(id)ids;
- (void)exportRecordsToDKWithShouldContinueBlock:(id)block;
- (void)fixupDKEventsWithShouldContinueBlock:(id)block;
- (void)processNewDKEventDeletions;
@end

@implementation PPNamedEntityStorage

- (BOOL)setNamedEntityFilterLastRunDate:(id)date error:(id *)error
{
  dateCopy = date;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 1;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__3014;
  v19 = __Block_byref_object_dispose__3015;
  v20 = 0;
  db = self->_db;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __62__PPNamedEntityStorage_setNamedEntityFilterLastRunDate_error___block_invoke;
  v11[3] = &unk_278972478;
  v8 = dateCopy;
  v12 = v8;
  v13 = &v15;
  v14 = &v21;
  [(PPSQLDatabase *)db writeTransactionWithClient:6 block:v11];
  if (error)
  {
    *error = v16[5];
  }

  v9 = *(v22 + 24);

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);

  return v9;
}

void __62__PPNamedEntityStorage_setNamedEntityFilterLastRunDate_error___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = *(a1[5] + 8);
  obj = *(v5 + 40);
  v6 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v4 requiringSecureCoding:1 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  if (v6)
  {
    [PPSQLKVStore storeBlob:v6 forKey:@"namedEntityLastFilteredTime" transaction:v3];
    [PPSQLKVStore removeBlobForKey:@"namedEntityLastRecordFilteredTime" transaction:v3];
  }

  else
  {
    *(*(a1[6] + 8) + 24) = 0;
  }
}

- (BOOL)setNamedEntityFilterLastRecordDate:(id)date error:(id *)error
{
  dateCopy = date;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 1;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__3014;
  v19 = __Block_byref_object_dispose__3015;
  v20 = 0;
  db = self->_db;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __65__PPNamedEntityStorage_setNamedEntityFilterLastRecordDate_error___block_invoke;
  v11[3] = &unk_278972478;
  v8 = dateCopy;
  v12 = v8;
  v13 = &v15;
  v14 = &v21;
  [(PPSQLDatabase *)db writeTransactionWithClient:6 block:v11];
  if (error)
  {
    *error = v16[5];
  }

  v9 = *(v22 + 24);

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);

  return v9;
}

void __65__PPNamedEntityStorage_setNamedEntityFilterLastRecordDate_error___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = *(a1[5] + 8);
  obj = *(v5 + 40);
  v6 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v4 requiringSecureCoding:1 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  if (v6)
  {
    [PPSQLKVStore storeBlob:v6 forKey:@"namedEntityLastRecordFilteredTime" transaction:v3];
  }

  else
  {
    *(*(a1[6] + 8) + 24) = 0;
  }
}

- (id)namedEntityFilterLastRecordDate
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__3014;
  v14 = __Block_byref_object_dispose__3015;
  v15 = 0;
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x3032000000;
  v8[3] = __Block_byref_object_copy__3014;
  v8[4] = __Block_byref_object_dispose__3015;
  v9 = 0;
  db = self->_db;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__PPNamedEntityStorage_namedEntityFilterLastRecordDate__block_invoke;
  v7[3] = &unk_278974078;
  v7[4] = &v10;
  v7[5] = v8;
  [(PPSQLDatabase *)db readTransactionWithClient:1 block:v7];
  v3 = v11[5];
  if (v3)
  {
    distantPast = v3;
  }

  else
  {
    distantPast = [MEMORY[0x277CBEAA8] distantPast];
  }

  v5 = distantPast;
  _Block_object_dispose(v8, 8);

  _Block_object_dispose(&v10, 8);

  return v5;
}

void __55__PPNamedEntityStorage_namedEntityFilterLastRecordDate__block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [PPSQLKVStore loadBlobForKey:@"namedEntityLastRecordFilteredTime" transaction:v3];
  if (!v4)
  {
    v12 = pp_default_log_handle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v12, OS_LOG_TYPE_INFO, "PPNamedEntityStorage: named entities have never been filtered via CTS.", buf, 2u);
    }

    goto LABEL_7;
  }

  v5 = MEMORY[0x277CCAAC8];
  v6 = objc_autoreleasePoolPush();
  v7 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v6);
  v8 = *(*(a1 + 40) + 8);
  obj = *(v8 + 40);
  v9 = [v5 unarchivedObjectOfClasses:v7 fromData:v4 error:&obj];
  objc_storeStrong((v8 + 40), obj);
  v10 = *(*(a1 + 32) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    v12 = pp_entities_log_handle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = *(*(*(a1 + 40) + 8) + 40);
      *buf = 138412290;
      v16 = v13;
      _os_log_error_impl(&dword_23224A000, v12, OS_LOG_TYPE_ERROR, "PPNamedEntityStorage: error unarchiving filter date %@", buf, 0xCu);
    }

LABEL_7:
  }
}

- (id)namedEntityFilterLastRunDateWithError:(id *)error
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__3014;
  v18 = __Block_byref_object_dispose__3015;
  v19 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__3014;
  v12 = __Block_byref_object_dispose__3015;
  v13 = 0;
  db = self->_db;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__PPNamedEntityStorage_namedEntityFilterLastRunDateWithError___block_invoke;
  v7[3] = &unk_278974078;
  v7[4] = &v8;
  v7[5] = &v14;
  [(PPSQLDatabase *)db readTransactionWithClient:1 block:v7];
  if (error)
  {
    *error = v9[5];
  }

  v5 = v15[5];
  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(&v14, 8);

  return v5;
}

void __62__PPNamedEntityStorage_namedEntityFilterLastRunDateWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [PPSQLKVStore loadBlobForKey:@"namedEntityLastFilteredTime" transaction:v3];
  if (v4)
  {
    v5 = MEMORY[0x277CCAAC8];
    v6 = objc_autoreleasePoolPush();
    v7 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v6);
    v8 = *(*(a1 + 32) + 8);
    obj = *(v8 + 40);
    v9 = [v5 unarchivedObjectOfClasses:v7 fromData:v4 error:&obj];
    objc_storeStrong((v8 + 40), obj);

    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  else
  {
    v11 = pp_default_log_handle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v11, OS_LOG_TYPE_INFO, "PPNamedEntityStorage: named entities have never been filtered via CTS.", buf, 2u);
    }
  }
}

- (id)tempViewForSourceIdsExcludedAlgorithms:(id)algorithms txnWitness:(id)witness
{
  algorithmsCopy = algorithms;
  witnessCopy = witness;
  if ([algorithmsCopy count])
  {
    v7 = objc_alloc(MEMORY[0x277CCACA8]);
    allObjects = [algorithmsCopy allObjects];
    v9 = [allObjects _pas_componentsJoinedByString:{@", "}];
    v10 = [v7 initWithFormat:@"SELECT source_id FROM ne_records WHERE algorithm NOT IN (%@)", v9];

    v11 = [PPSQLDatabase createTempViewContainingRowsFromQuery:v10 descriptiveTableName:@"ne_sourceids" txnWitness:witnessCopy];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)sourceStats:(unint64_t)stats withExcludedAlgorithms:(id)algorithms
{
  algorithmsCopy = algorithms;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__3014;
  v19 = __Block_byref_object_dispose__3015;
  v20 = 0;
  db = self->_db;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __59__PPNamedEntityStorage_sourceStats_withExcludedAlgorithms___block_invoke;
  v11[3] = &unk_278978F38;
  v11[4] = self;
  v8 = algorithmsCopy;
  v12 = v8;
  v13 = &v15;
  statsCopy = stats;
  [(PPSQLDatabase *)db writeTransactionWithClient:1 block:v11];
  v9 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v9;
}

void __59__PPNamedEntityStorage_sourceStats_withExcludedAlgorithms___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [*(a1 + 32) tempViewForSourceIdsExcludedAlgorithms:*(a1 + 40) txnWitness:v8];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = @"ne_records";
  }

  v5 = [*(*(a1 + 32) + 8) sourceStats:*(a1 + 56) forTableWithName:v4 txnWitness:v8];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  if (v3)
  {
    [PPSQLDatabase dropViewWithName:v3 txnWitness:v8];
  }
}

- (void)disableSyncForBundleIds:(id)ids
{
  idsCopy = ids;
  if ([idsCopy count])
  {
    db = self->_db;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __48__PPNamedEntityStorage_disableSyncForBundleIds___block_invoke;
    v6[3] = &unk_278977CD8;
    v6[4] = self;
    v7 = idsCopy;
    [(PPSQLDatabase *)db writeTransactionWithClient:1 block:v6];
  }
}

- (void)fixupDKEventsWithShouldContinueBlock:(id)block
{
  blockCopy = block;
  if (self->_dkStorage)
  {
    do
    {
      if (!blockCopy[2](blockCopy))
      {
        break;
      }

      storageHelper = self->_storageHelper;
      db = self->_db;
      namedEntityWriteBatchSize = [(PPDKStorage *)self->_dkStorage namedEntityWriteBatchSize];
      v8[4] = self;
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __61__PPNamedEntityStorage_fixupDKEventsWithShouldContinueBlock___block_invoke;
      v9[3] = &unk_278977C88;
      v9[4] = self;
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __61__PPNamedEntityStorage_fixupDKEventsWithShouldContinueBlock___block_invoke_2;
      v8[3] = &unk_278977CB0;
    }

    while (![(PPRecordStorageHelper *)storageHelper fixupDKEventsWithDatabase:db fixup49995922Table:@"ne_dk_fixup_49995922" batchSize:namedEntityWriteBatchSize shouldContinueBlock:blockCopy createRecordWithStatement:v9 eventForRecord:v8]);
  }
}

- (id)_createRecordWithStatement:(void *)statement txnWitness:
{
  v5 = a2;
  if (self)
  {
    statementCopy = statement;
    v27 = [v5 nonnullNSStringForColumnName:"name" table:"ne_records"];
    v7 = [v5 getInt64ForColumnName:"category" table:"ne_records"];
    v26 = [v5 getNSStringForColumnName:"dynamic_category" table:"ne_records"];
    v8 = [v5 nonnullNSStringForColumnName:"language" table:"ne_records"];
    v9 = [v5 getInt64ForColumnName:"algorithm" table:"ne_records"];
    [v5 getDoubleForColumnName:"initial_score" table:"ne_records"];
    if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      v11 = 0.0;
    }

    else
    {
      v11 = v10;
    }

    [v5 getDoubleForColumnName:"decay_rate" table:"ne_records"];
    if ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      v13 = *MEMORY[0x277D3A758];
    }

    else
    {
      v13 = v12;
    }

    v14 = [v5 getNSStringForColumnName:"extraction_os_build" table:"ne_records"];
    v15 = [v5 getInt64AsNSNumberForColumnName:"extraction_asset_version" table:"ne_records"];
    v16 = v15;
    if (v15)
    {
      unsignedLongValue = [v15 unsignedLongValue];
    }

    else
    {
      unsignedLongValue = 0xFFFFFFFFLL;
    }

    [v5 getDoubleForColumnName:"sentiment_score" table:"ne_records"];
    v19 = v18;
    v20 = [objc_alloc(MEMORY[0x277D3A420]) initWithName:v27 category:v7 dynamicCategory:v26 language:v8];
    v21 = [*(self + 40) createSourceWithStatement:v5 txnWitness:statementCopy];

    if (v21)
    {
      if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
      {
        v19 = 0.0;
      }

      v22 = objc_opt_new();
      [v22 setEntity:v20];
      [v22 setSource:v21];
      [v22 setAlgorithm:v9];
      [v22 setInitialScore:v11];
      [v22 setDecayRate:v13];
      [v22 setExtractionOsBuild:v14];
      [v22 setExtractionAssetVersion:unsignedLongValue];
      [v22 setSentimentScore:v19];
      v23 = [objc_alloc(MEMORY[0x277D3A428]) initWithImpressionCount:objc_msgSend(v5 occurrencesInSource:{"getInt64ForColumnName:table:", "impression_count", "ne_records"), objc_msgSend(v5, "getInt64ForColumnName:table:", "occurrences_in_source", "ne_records")}];
      [v22 setMetadata:v23];
    }

    else
    {
      v24 = pp_entities_log_handle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_23224A000, v24, OS_LOG_TYPE_ERROR, "Suppressing construction of named entity record due to source with bogus date.", buf, 2u);
      }

      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (void)exportRecordsToDKWithShouldContinueBlock:(id)block
{
  blockCopy = block;
  v5 = blockCopy;
  if (self->_dkStorage)
  {
    v25 = 0;
    v23 = v27;
    v24 = blockCopy;
    do
    {
      if (!v5[2](v5))
      {
        break;
      }

      namedEntityWriteBatchSize = [(PPDKStorage *)self->_dkStorage namedEntityWriteBatchSize];
      v63[0] = 0;
      v63[1] = v63;
      v63[2] = 0x2020000000;
      v64 = 0;
      v61[0] = 0;
      v61[1] = v61;
      v61[2] = 0x2020000000;
      v62 = 0;
      v59[0] = 0;
      v59[1] = v59;
      v59[2] = 0x3032000000;
      v59[3] = __Block_byref_object_copy__3014;
      v59[4] = __Block_byref_object_dispose__3015;
      v60 = 0;
      v57[0] = 0;
      v57[1] = v57;
      v57[2] = 0x3032000000;
      v57[3] = __Block_byref_object_copy__3014;
      v57[4] = __Block_byref_object_dispose__3015;
      v58 = 0;
      v56[0] = 0;
      v56[1] = v56;
      v56[2] = 0x2020000000;
      v56[3] = 0;
      v55[0] = 0;
      v55[1] = v55;
      v55[2] = 0x2020000000;
      v55[3] = 0x7FFFFFFFFFFFFFFFLL;
      v53[0] = 0;
      v53[1] = v53;
      v53[2] = 0x2020000000;
      v54 = 0;
      v7 = objc_opt_new();
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __70__PPNamedEntityStorage__generateExportRowIdsWithBatchSize_isComplete___block_invoke_2;
      aBlock[3] = &unk_278972428;
      v47 = v59;
      v8 = v7;
      v46 = v8;
      v48 = v55;
      v49 = v61;
      v50 = v57;
      v51 = v56;
      v52 = v53;
      v9 = _Block_copy(aBlock);
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __70__PPNamedEntityStorage__generateExportRowIdsWithBatchSize_isComplete___block_invoke_3;
      v36[3] = &unk_278972450;
      v39 = v63;
      v40 = v59;
      v10 = v9;
      v41 = v57;
      v42 = v56;
      v43 = v55;
      v44 = v53;
      v37 = v10;
      v38 = &__block_literal_global_351;
      v11 = _Block_copy(v36);
      selfCopy = self;
      db = self->_db;
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __70__PPNamedEntityStorage__generateExportRowIdsWithBatchSize_isComplete___block_invoke_4;
      v31[3] = &unk_278977C60;
      v32 = @"SELECT ne.id, ne.name, ne.lc_name, src.seconds_from_1970 FROM ne_records AS ne INNER JOIN sources AS src ON ne.source_id = src.id WHERE ne.lc_name NOT IN (SELECT DISTINCT(lc_name) FROM ne_records WHERE is_remote = 0 AND dk_event_id IS NOT NULL) AND ne.is_remote = 0 AND ne.is_sync_eligible = 1 ORDER BY ne.lc_name ASC";
      v14 = v11;
      v33 = v14;
      v34 = v61;
      v35 = namedEntityWriteBatchSize;
      [(PPSQLDatabase *)db readTransactionWithClient:1 block:v31];
      v5 = v24;
      if ([v8 count] < namedEntityWriteBatchSize)
      {
        v10[2](v10);
        v25 = 1;
      }

      v15 = v33;
      v16 = v8;

      _Block_object_dispose(v53, 8);
      _Block_object_dispose(v55, 8);
      _Block_object_dispose(v56, 8);
      _Block_object_dispose(v57, 8);

      _Block_object_dispose(v59, 8);
      _Block_object_dispose(v61, 8);
      _Block_object_dispose(v63, 8);
      v17 = objc_opt_new();
      v18 = selfCopy->_db;
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v27[0] = __65__PPNamedEntityStorage_exportRecordsToDKWithShouldContinueBlock___block_invoke;
      v27[1] = &unk_278977BC0;
      v28 = v16;
      v29 = selfCopy;
      v30 = v17;
      v19 = v17;
      v20 = v16;
      [(PPSQLDatabase *)v18 writeTransactionWithClient:1 timeoutInSeconds:v26 block:2.5];
      dkStorage = selfCopy->_dkStorage;
      entityStream = [(PPDKStorage *)dkStorage entityStream];
      [(PPDKStorage *)dkStorage saveEvents:v19 stream:entityStream maxRetries:-1 retryInterval:v24 shouldContinueBlock:5.0];

      self = selfCopy;
    }

    while ((v25 & 1) == 0);
  }
}

void __65__PPNamedEntityStorage_exportRecordsToDKWithShouldContinueBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 db];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __65__PPNamedEntityStorage_exportRecordsToDKWithShouldContinueBlock___block_invoke_2;
  v10[3] = &unk_278978CF8;
  v11 = *(a1 + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__PPNamedEntityStorage_exportRecordsToDKWithShouldContinueBlock___block_invoke_3;
  v7[3] = &unk_278977B98;
  v5 = *(a1 + 48);
  v7[4] = *(a1 + 40);
  v8 = v5;
  v9 = v3;
  v6 = v3;
  [v4 prepAndRunQuery:@"SELECT * FROM ne_records AS ne JOIN sources AS src ON ne.source_id = src.id WHERE ne.id IN _pas_nsarray(:rowIds)" onPrep:v10 onRow:v7 onError:0];
}

uint64_t __65__PPNamedEntityStorage_exportRecordsToDKWithShouldContinueBlock___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  v5 = *(a1 + 40);
  v6 = v4;
  if (v3)
  {
    v7 = a2;
    v8 = [v7 getInt64ForColumnName:"id" table:"ne_records"];
    v9 = [(PPNamedEntityStorage *)v3 _createRecordWithStatement:v7 txnWitness:v6];

    if (v9)
    {
      v10 = [*(v3 + 16) eventForNamedEntityRecord:v9 sourceDeviceID:0];
      [v10 setShouldSync:1];
      v11 = [v6 db];
      v16 = MEMORY[0x277D85DD0];
      v17 = 3221225472;
      v18 = __61__PPNamedEntityStorage__populateEvents_statement_txnWitness___block_invoke;
      v19 = &unk_278978E98;
      v12 = v10;
      v20 = v12;
      v21 = v8;
      v13 = [v11 prepAndRunQuery:@"UPDATE ne_records SET dk_event_id = :uuidBlob WHERE id = :rowid" onPrep:&v16 onRow:0 onError:0];

      if (v13)
      {
        [v5 addObject:{v12, v16, v17, v18, v19}];
      }

      v14 = *MEMORY[0x277D42690];
    }

    else
    {
      v14 = *MEMORY[0x277D42690];
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

void __61__PPNamedEntityStorage__populateEvents_statement_txnWitness___block_invoke(uint64_t a1, void *a2)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v7[0] = 0;
  v7[1] = 0;
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 UUID];
  [v5 getUUIDBytes:v7];

  v6 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:v7 length:16];
  [v4 bindNamedParam:":uuidBlob" toNSData:v6];
  [v4 bindNamedParam:":rowid" toInt64:*(a1 + 40)];
}

void __70__PPNamedEntityStorage__generateExportRowIdsWithBatchSize_isComplete___block_invoke_2(void *a1)
{
  if (*(*(a1[5] + 8) + 40))
  {
    v2 = a1[4];
    v3 = [MEMORY[0x277CCABB0] numberWithLongLong:*(*(a1[6] + 8) + 24)];
    [v2 addObject:v3];

    ++*(*(a1[7] + 8) + 24);
    v4 = *(a1[5] + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = 0;

    v6 = *(a1[8] + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = 0;

    *(*(a1[9] + 8) + 24) = 0;
    *(*(a1[6] + 8) + 24) = 0x7FFFFFFFFFFFFFFFLL;
    *(*(a1[10] + 8) + 24) = 0;
  }
}

void __70__PPNamedEntityStorage__generateExportRowIdsWithBatchSize_isComplete___block_invoke_3(void *a1, uint64_t a2, void *a3, void *a4, double a5)
{
  v18 = a3;
  v10 = a4;
  v11 = v10;
  ++*(*(a1[6] + 8) + 24);
  if (*(*(a1[7] + 8) + 40) && ([v10 isEqualToString:?] & 1) == 0)
  {
    (*(a1[4] + 16))();
  }

  v12 = *(a1[7] + 8);
  v14 = *(v12 + 40);
  v13 = (v12 + 40);
  if (v14)
  {
    v15 = (*(a1[5] + 16))();
    v16 = v15;
    v17 = *(*(a1[11] + 8) + 24);
    if (v15 && (v17 & 1) == 0 || v17 == v15 && *(*(a1[9] + 8) + 24) < a5)
    {
      objc_storeStrong((*(a1[8] + 8) + 40), a3);
      *(*(a1[9] + 8) + 24) = a5;
      *(*(a1[10] + 8) + 24) = a2;
      *(*(a1[11] + 8) + 24) = v16;
    }
  }

  else
  {
    objc_storeStrong(v13, a4);
    objc_storeStrong((*(a1[8] + 8) + 40), a3);
    *(*(a1[9] + 8) + 24) = a5;
    *(*(a1[10] + 8) + 24) = a2;
    *(*(a1[11] + 8) + 24) = (*(a1[5] + 16))();
  }
}

void __70__PPNamedEntityStorage__generateExportRowIdsWithBatchSize_isComplete___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = [a2 db];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __70__PPNamedEntityStorage__generateExportRowIdsWithBatchSize_isComplete___block_invoke_5;
  v7[3] = &unk_278977C38;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v8 = v5;
  v9 = v6;
  v10 = *(a1 + 56);
  [v3 prepAndRunQuery:v4 onPrep:0 onRow:v7 onError:0];
}

uint64_t __70__PPNamedEntityStorage__generateExportRowIdsWithBatchSize_isComplete___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 getInt64ForColumnName:"id" table:"ne_records"];
  v4 = [v3 getNSStringForColumnName:"name" table:"ne_records"];
  v5 = [v3 getNSStringForColumnName:"lc_name" table:"ne_records"];
  [v3 getDoubleForColumnName:"seconds_from_1970" table:"sources"];
  v7 = v6;

  (*(*(a1 + 32) + 16))(v7);
  LODWORD(v3) = *(*(*(a1 + 40) + 8) + 24);
  LODWORD(a1) = *(a1 + 48);
  v8 = MEMORY[0x277D42690];
  v9 = MEMORY[0x277D42698];

  if (v3 >= a1)
  {
    v10 = v9;
  }

  else
  {
    v10 = v8;
  }

  return *v10;
}

uint64_t __70__PPNamedEntityStorage__generateExportRowIdsWithBatchSize_isComplete___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_autoreleasePoolPush();
  v4 = [v2 localizedLowercaseString];
  v5 = [v4 localizedCapitalizedString];
  v6 = [v2 isEqualToString:v5];

  objc_autoreleasePoolPop(v3);
  return v6;
}

- (void)_importDKEventsWithShouldContinueBlock:(uint64_t)block remoteEventsOnly:(uint64_t)only isComplete:(void *)complete shouldContinueBlock:
{
  if (self)
  {
    completeCopy = complete;
    v10 = objc_opt_new();
    v11 = *(self + 32);
    v12 = *(self + 8);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __111__PPNamedEntityStorage__importDKEventsWithShouldContinueBlock_remoteEventsOnly_isComplete_shouldContinueBlock___block_invoke;
    v14[3] = &unk_2789723E0;
    v14[4] = self;
    v15 = v10;
    v13 = v10;
    [v11 importDuetEventsWithLimit:a2 database:v12 client:1 remoteEventsOnly:block isComplete:only shouldContinueBlock:completeCopy eventImportBlock:v14];
  }
}

void __111__PPNamedEntityStorage__importDKEventsWithShouldContinueBlock_remoteEventsOnly_isComplete_shouldContinueBlock___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v30[1] = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = a4;
  v9 = a3;
  v10 = a2;
  v11 = v6;
  if (v7)
  {
    v12 = [*(v7 + 16) namedEntityRecordFromEvent:v8];
    v13 = v12;
    if (v12)
    {
      v30[0] = v12;
      v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:1];
      v15 = [v11 filterNamedEntityRecords:v14];
      v16 = [v15 firstObject];

      if (v16)
      {
        v17 = *(v7 + 40);
        v18 = [v13 source];
        v19 = [v17 updateOrCreateRowForSource:v18 addingRefCount:1 txnWitness:v10];

        if (v19 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v20 = pp_entities_log_handle();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v25[0]) = 0;
            _os_log_error_impl(&dword_23224A000, v20, OS_LOG_TYPE_ERROR, "Suppressing named entity DKEvent import due to source with bogus date.", v25, 2u);
          }
        }

        else
        {
          v21 = [v13 entity];
          v22 = [v21 clusterIdentifier];

          if (!v22)
          {
            v23 = pp_default_log_handle();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
            {
              LOWORD(v25[0]) = 0;
              _os_log_fault_impl(&dword_23224A000, v23, OS_LOG_TYPE_FAULT, "Named entity record unexpectedly had nil cluster identifier during DKEvent import.", v25, 2u);
            }
          }

          v24 = [v10 db];
          v25[0] = MEMORY[0x277D85DD0];
          v25[1] = 3221225472;
          v25[2] = __90__PPNamedEntityStorage__dkEventImportToDatabaseWithEvent_eventUUIDBlob_txnWitness_filter___block_invoke;
          v25[3] = &unk_278977B70;
          v26 = v13;
          v29 = v19;
          v27 = v8;
          v28 = v9;
          [v24 prepAndRunQuery:@"INSERT INTO ne_records (name onPrep:lc_name onRow:category onError:{dynamic_category, language, algorithm, initial_score, decay_rate, extraction_os_build, extraction_asset_version, source_id, is_remote, is_sync_eligible, sentiment_score, dk_event_id) VALUES (:name, :lcName, :category, :dynamicCategory, :language, :algorithm, :initialScore, :decayRate, :osBuild, :assetVersion, :sourceRowId, :isRemote, 0, :sentimentScore, :uuidBlob)", v25, 0, 0}];

          v20 = v26;
        }
      }
    }
  }
}

void __90__PPNamedEntityStorage__dkEventImportToDatabaseWithEvent_eventUUIDBlob_txnWitness_filter___block_invoke(uint64_t a1, void *a2)
{
  v18 = a2;
  v3 = [*(a1 + 32) entity];
  v4 = [v3 name];
  [v18 bindNamedParam:":name" toNSString:v4];

  v5 = [*(a1 + 32) entity];
  v6 = [v5 clusterIdentifier];
  if (v6)
  {
    [v18 bindNamedParam:":lcName" toNSString:v6];
  }

  else
  {
    v7 = [*(a1 + 32) entity];
    v8 = [v7 name];
    v9 = [v8 lowercaseString];
    [v18 bindNamedParam:":lcName" toNSString:v9];
  }

  v10 = [*(a1 + 32) entity];
  [v18 bindNamedParam:":category" toInt64:{objc_msgSend(v10, "category")}];

  v11 = [*(a1 + 32) entity];
  v12 = [v11 dynamicCategory];
  [v18 bindNamedParam:":dynamicCategory" toNSString:v12];

  v13 = [*(a1 + 32) entity];
  v14 = [v13 bestLanguage];
  [v18 bindNamedParam:":language" toNSString:v14];

  [v18 bindNamedParam:":algorithm" toInt64:{objc_msgSend(*(a1 + 32), "algorithm")}];
  [*(a1 + 32) initialScore];
  [v18 bindNamedParam:":initialScore" toDouble:?];
  [*(a1 + 32) decayRate];
  [v18 bindNamedParam:":decayRate" toDouble:?];
  v15 = [*(a1 + 32) extractionOsBuild];
  [v18 bindNamedParam:":osBuild" toNSString:v15];

  if ([*(a1 + 32) extractionAssetVersion] == -1)
  {
    [v18 bindNamedParamToNull:":assetVersion"];
  }

  else
  {
    [v18 bindNamedParam:":assetVersion" toInt64:{objc_msgSend(*(a1 + 32), "extractionAssetVersion")}];
  }

  [v18 bindNamedParam:":sourceRowId" toInt64:*(a1 + 56)];
  v16 = [*(a1 + 40) source];
  v17 = [v16 deviceID];
  [v18 bindNamedParam:":isRemote" toInt64:v17 != 0];

  [*(a1 + 32) sentimentScore];
  [v18 bindNamedParam:":sentimentScore" toDouble:?];
  [v18 bindNamedParam:":uuidBlob" toNSData:*(a1 + 48)];
}

- (void)processNewDKEventDeletions
{
  [(PPNamedEntityStorage *)self _asyncProcessNewDKEventDeletions];
  _deletionQueue = [(PPNamedEntityStorage *)self _deletionQueue];
  dispatch_sync(_deletionQueue, &__block_literal_global_325);
}

- (void)_asyncProcessNewDKEventDeletions
{
  if (self && *(self + 16))
  {
    queue = [(PPNamedEntityStorage *)self _deletionQueue];
    v2 = [*(self + 32) duetEventDeletionProcessingBlockWithDatabase:*(self + 8) client:1];
    dispatch_async(queue, v2);
  }
}

- (id)_deletionQueue
{
  if (self)
  {
    if (_deletionQueue__pasOnceToken16 != -1)
    {
      dispatch_once(&_deletionQueue__pasOnceToken16, &__block_literal_global_322);
    }

    self = _deletionQueue__pasExprOnceResult;
    v1 = vars8;
  }

  return self;
}

void __38__PPNamedEntityStorage__deletionQueue__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v2 = dispatch_queue_attr_make_with_qos_class(v1, QOS_CLASS_UTILITY, 0);

  v3 = dispatch_queue_create("PPNamedEntityStorage-_DKEvent-deletion", v2);
  v4 = _deletionQueue__pasExprOnceResult;
  _deletionQueue__pasExprOnceResult = v3;

  objc_autoreleasePoolPop(v0);
}

- (BOOL)pruneOrphanedNamedEntityFeedbackCountRecordsWithLimit:(unint64_t)limit rowOffset:(unint64_t)offset deletedCount:(unint64_t *)count isComplete:(BOOL *)complete
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  db = self->_db;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __112__PPNamedEntityStorage_pruneOrphanedNamedEntityFeedbackCountRecordsWithLimit_rowOffset_deletedCount_isComplete___block_invoke;
  v9[3] = &unk_278978F88;
  v9[4] = self;
  v9[5] = &v10;
  v9[6] = limit;
  v9[7] = offset;
  v9[8] = count;
  v9[9] = complete;
  [(PPSQLDatabase *)db writeTransactionWithClient:2 block:v9];
  v7 = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  return v7;
}

void *__112__PPNamedEntityStorage_pruneOrphanedNamedEntityFeedbackCountRecordsWithLimit_rowOffset_deletedCount_isComplete___block_invoke(void *a1, uint64_t a2)
{
  result = [*(a1[4] + 32) pruneOrphanedFeedbackCountRecordsWithLimit:a1[6] rowOffset:a1[7] deletedCount:a1[8] txnWitness:a2 isComplete:a1[9]];
  *(*(a1[5] + 8) + 24) = result;
  return result;
}

- (BOOL)deleteAllNamedEntityFeedbackCountRecordsOlderThanDate:(id)date
{
  dateCopy = date;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  db = self->_db;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __78__PPNamedEntityStorage_deleteAllNamedEntityFeedbackCountRecordsOlderThanDate___block_invoke;
  v8[3] = &unk_278978F60;
  v10 = &v11;
  v8[4] = self;
  v6 = dateCopy;
  v9 = v6;
  [(PPSQLDatabase *)db writeTransactionWithClient:1 block:v8];
  LOBYTE(db) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return db;
}

void *__78__PPNamedEntityStorage_deleteAllNamedEntityFeedbackCountRecordsOlderThanDate___block_invoke(void *a1, uint64_t a2)
{
  result = [*(a1[4] + 32) deleteFeedbackCountRecordsOlderThanDate:a1[5] txnWitness:a2];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

- (BOOL)deleteAllNamedEntitiesFromSourcesWithBundleId:(id)id groupId:(id)groupId olderThanDate:(id)date atLeastOneNamedEntityRemoved:(BOOL *)removed deletedCount:(unint64_t *)count error:(id *)error
{
  idCopy = id;
  groupIdCopy = groupId;
  dateCopy = date;
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__3014;
  v36 = __Block_byref_object_dispose__3015;
  v37 = 0;
  db = self->_db;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __140__PPNamedEntityStorage_deleteAllNamedEntitiesFromSourcesWithBundleId_groupId_olderThanDate_atLeastOneNamedEntityRemoved_deletedCount_error___block_invoke;
  v24[3] = &unk_278977AD0;
  v28 = &v38;
  v24[4] = self;
  v18 = idCopy;
  v25 = v18;
  v19 = groupIdCopy;
  v26 = v19;
  v20 = dateCopy;
  removedCopy = removed;
  countCopy = count;
  v27 = v20;
  v29 = &v32;
  [(PPSQLDatabase *)db writeTransactionWithClient:1 block:v24];
  if (error)
  {
    v21 = v33[5];
    if (v21)
    {
      *error = v21;
    }
  }

  v22 = *(v39 + 24);

  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v38, 8);

  return v22;
}

void __140__PPNamedEntityStorage_deleteAllNamedEntitiesFromSourcesWithBundleId_groupId_olderThanDate_atLeastOneNamedEntityRemoved_deletedCount_error___block_invoke(void *a1, uint64_t a2)
{
  v3 = a1[5];
  v4 = *(a1[4] + 32);
  v5 = a1[6];
  v6 = a1[7];
  v7 = a1[10];
  v8 = a1[11];
  v9 = *(a1[9] + 8);
  obj = *(v9 + 40);
  v10 = [v4 deleteAllRecordsSourcedFromBundleId:v3 groupId:v5 olderThanDate:v6 txnWitness:a2 atLeastOneRecordClusterRemoved:v7 deletedCount:v8 error:&obj];
  objc_storeStrong((v9 + 40), obj);
  *(*(a1[8] + 8) + 24) = v10;
}

- (BOOL)deleteAllNamedEntitiesFromSourcesWithBundleId:(id)id atLeastOneNamedEntityRemoved:(BOOL *)removed deletedCount:(unint64_t *)count error:(id *)error
{
  idCopy = id;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__3014;
  v26 = __Block_byref_object_dispose__3015;
  v27 = 0;
  db = self->_db;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __118__PPNamedEntityStorage_deleteAllNamedEntitiesFromSourcesWithBundleId_atLeastOneNamedEntityRemoved_deletedCount_error___block_invoke;
  v16[3] = &unk_278977A30;
  v18 = &v28;
  v16[4] = self;
  v12 = idCopy;
  removedCopy = removed;
  countCopy = count;
  v17 = v12;
  v19 = &v22;
  [(PPSQLDatabase *)db writeTransactionWithClient:1 block:v16];
  if (error)
  {
    v13 = v23[5];
    if (v13)
    {
      *error = v13;
    }
  }

  v14 = *(v29 + 24);

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);

  return v14;
}

void __118__PPNamedEntityStorage_deleteAllNamedEntitiesFromSourcesWithBundleId_atLeastOneNamedEntityRemoved_deletedCount_error___block_invoke(void *a1, uint64_t a2)
{
  v3 = a1[5];
  v4 = *(a1[4] + 32);
  v5 = a1[8];
  v6 = a1[9];
  v7 = *(a1[7] + 8);
  obj = *(v7 + 40);
  v8 = [v4 deleteAllRecordsSourcedFromBundleId:v3 txnWitness:a2 atLeastOneRecordClusterRemoved:v5 deletedCount:v6 error:&obj];
  objc_storeStrong((v7 + 40), obj);
  *(*(a1[6] + 8) + 24) = v8;
}

- (BOOL)deleteAllNamedEntitiesFromSourcesWithBundleId:(id)id groupIds:(id)ids atLeastOneNamedEntityRemoved:(BOOL *)removed deletedCount:(unint64_t *)count error:(id *)error
{
  idCopy = id;
  idsCopy = ids;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__3014;
  v31 = __Block_byref_object_dispose__3015;
  v32 = 0;
  db = self->_db;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __127__PPNamedEntityStorage_deleteAllNamedEntitiesFromSourcesWithBundleId_groupIds_atLeastOneNamedEntityRemoved_deletedCount_error___block_invoke;
  v20[3] = &unk_278977A80;
  v23 = &v33;
  v20[4] = self;
  v15 = idCopy;
  v21 = v15;
  v16 = idsCopy;
  removedCopy = removed;
  countCopy = count;
  v22 = v16;
  v24 = &v27;
  [(PPSQLDatabase *)db writeTransactionWithClient:1 block:v20];
  if (error)
  {
    v17 = v28[5];
    if (v17)
    {
      *error = v17;
    }
  }

  v18 = *(v34 + 24);

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v33, 8);

  return v18;
}

void __127__PPNamedEntityStorage_deleteAllNamedEntitiesFromSourcesWithBundleId_groupIds_atLeastOneNamedEntityRemoved_deletedCount_error___block_invoke(void *a1, uint64_t a2)
{
  v3 = a1[5];
  v4 = *(a1[4] + 32);
  v5 = a1[6];
  v6 = a1[9];
  v7 = a1[10];
  v8 = *(a1[8] + 8);
  obj = *(v8 + 40);
  v9 = [v4 deleteAllRecordsSourcedFromBundleId:v3 groupIds:v5 txnWitness:a2 atLeastOneRecordClusterRemoved:v6 deletedCount:v7 error:&obj];
  objc_storeStrong((v8 + 40), obj);
  *(*(a1[7] + 8) + 24) = v9;
}

- (BOOL)deleteAllNamedEntitiesFromSourcesWithBundleId:(id)id documentIds:(id)ids atLeastOneNamedEntityRemoved:(BOOL *)removed deletedCount:(unint64_t *)count error:(id *)error
{
  idCopy = id;
  idsCopy = ids;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__3014;
  v31 = __Block_byref_object_dispose__3015;
  v32 = 0;
  db = self->_db;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __130__PPNamedEntityStorage_deleteAllNamedEntitiesFromSourcesWithBundleId_documentIds_atLeastOneNamedEntityRemoved_deletedCount_error___block_invoke;
  v20[3] = &unk_278977A80;
  v23 = &v33;
  v20[4] = self;
  v15 = idCopy;
  v21 = v15;
  v16 = idsCopy;
  removedCopy = removed;
  countCopy = count;
  v22 = v16;
  v24 = &v27;
  [(PPSQLDatabase *)db writeTransactionWithClient:1 block:v20];
  if (error)
  {
    v17 = v28[5];
    if (v17)
    {
      *error = v17;
    }
  }

  v18 = *(v34 + 24);

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v33, 8);

  return v18;
}

void __130__PPNamedEntityStorage_deleteAllNamedEntitiesFromSourcesWithBundleId_documentIds_atLeastOneNamedEntityRemoved_deletedCount_error___block_invoke(void *a1, uint64_t a2)
{
  v3 = a1[5];
  v4 = *(a1[4] + 32);
  v5 = a1[6];
  v6 = a1[9];
  v7 = a1[10];
  v8 = *(a1[8] + 8);
  obj = *(v8 + 40);
  v9 = [v4 deleteAllRecordsSourcedFromBundleId:v3 documentIds:v5 txnWitness:a2 atLeastOneRecordClusterRemoved:v6 deletedCount:v7 error:&obj];
  objc_storeStrong((v8 + 40), obj);
  *(*(a1[7] + 8) + 24) = v9;
}

- (BOOL)deleteNamedEntitiesMatchingRowIds:(id)ids atLeastOneNamedEntityRemoved:(BOOL *)removed deletedCount:(unint64_t *)count error:(id *)error
{
  idsCopy = ids;
  db = self->_db;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __106__PPNamedEntityStorage_deleteNamedEntitiesMatchingRowIds_atLeastOneNamedEntityRemoved_deletedCount_error___block_invoke;
  v13[3] = &unk_278978EC0;
  v13[4] = self;
  v14 = idsCopy;
  removedCopy = removed;
  countCopy = count;
  v11 = idsCopy;
  [(PPSQLDatabase *)db writeTransactionWithClient:1 block:v13];

  return 1;
}

- (BOOL)deleteAllNamedEntitiesOlderThanDate:(id)date atLeastOneNamedEntityRemoved:(BOOL *)removed deletedCount:(unint64_t *)count error:(id *)error
{
  dateCopy = date;
  db = self->_db;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __108__PPNamedEntityStorage_deleteAllNamedEntitiesOlderThanDate_atLeastOneNamedEntityRemoved_deletedCount_error___block_invoke;
  v13[3] = &unk_278978EC0;
  v13[4] = self;
  v14 = dateCopy;
  removedCopy = removed;
  countCopy = count;
  v11 = dateCopy;
  [(PPSQLDatabase *)db writeTransactionWithClient:1 block:v13];

  return 1;
}

void __108__PPNamedEntityStorage_deleteAllNamedEntitiesOlderThanDate_atLeastOneNamedEntityRemoved_deletedCount_error___block_invoke(void *a1, void *a2)
{
  v3 = a1[5];
  v4 = *(a1[4] + 32);
  v5 = a2;
  v6 = [v4 rowIdsForRecordsOlderThanDate:v3 txnWitness:v5];
  [v4 deleteRecordsForRowIds:v6 txnWitness:v5 atLeastOneClusterRemoved:a1[6] deletedCount:a1[7]];
}

- (BOOL)decayFeedbackCountsWithDecayRate:(double)rate shouldContinueBlock:(id)block
{
  do
  {
    v7 = (*(block + 2))(block, a2);
  }

  while (v7 && ![(PPRecordStorageHelper *)self->_storageHelper decayFeedbackWithDatabase:self->_db client:1 decayRate:rate]);
  return v7;
}

- (BOOL)donateNamedEntities:(id)entities source:(id)source algorithm:(unint64_t)algorithm cloudSync:(BOOL)sync decayRate:(double)rate sentimentScore:(double)score error:(id *)error
{
  v36[1] = *MEMORY[0x277D85DE8];
  entitiesCopy = entities;
  sourceCopy = source;
  v18 = 1;
  if ([entitiesCopy count])
  {
    v31 = 0;
    v32 = &v31;
    v33 = 0x2020000000;
    v34 = 1;
    db = self->_db;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __102__PPNamedEntityStorage_donateNamedEntities_source_algorithm_cloudSync_decayRate_sentimentScore_error___block_invoke;
    v23[3] = &unk_278972368;
    v26 = &v31;
    v23[4] = self;
    v24 = entitiesCopy;
    v25 = sourceCopy;
    algorithmCopy = algorithm;
    syncCopy = sync;
    rateCopy = rate;
    scoreCopy = score;
    [(PPSQLDatabase *)db writeTransactionWithClient:1 block:v23];
    v18 = *(v32 + 24);
    if (error && (v32[3] & 1) == 0)
    {
      v20 = objc_alloc(MEMORY[0x277CCA9B8]);
      v35 = *MEMORY[0x277CCA450];
      v36[0] = @"The donated data is invalid.";
      v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:&v35 count:1];
      *error = [v20 initWithDomain:*MEMORY[0x277D3A580] code:9 userInfo:v21];

      v18 = *(v32 + 24);
    }

    _Block_object_dispose(&v31, 8);
  }

  return v18 & 1;
}

void __102__PPNamedEntityStorage_donateNamedEntities_source_algorithm_cloudSync_decayRate_sentimentScore_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a1;
  v121 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  v89 = *(a1 + 64);
  v88 = *(a1 + 88);
  v6 = *(a1 + 72);
  v7 = *(a1 + 80);
  v8 = *(a1 + 40);
  v9 = v5;
  v10 = a2;
  v90 = v4;
  if (v4)
  {
    v11 = objc_opt_new();
    v92 = 0u;
    v93 = 0u;
    v94 = 0u;
    v95 = 0u;
    v12 = v8;
    v13 = [v12 countByEnumeratingWithState:&v92 objects:v117 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v93;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v93 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [*(*(&v92 + 1) + 8 * i) scoredNamedEntity];
          [v11 addObject:v17];
        }

        v14 = [v12 countByEnumeratingWithState:&v92 objects:v117 count:16];
      }

      while (v14);
    }

    v82 = v8;
    v83 = v3;
    obj = v12;

    v18 = v11;
    v81 = v9;
    v19 = v9;
    v84 = v10;
    v20 = v10;
    if (![v18 count])
    {
      v72 = [MEMORY[0x277CCA890] currentHandler];
      [v72 handleFailureInMethod:sel__updatePreexistingEntitiesMatchingEntities_source_algorithm_txnWitness_ object:v90 file:@"PPNamedEntityStorage.m" lineNumber:474 description:{@"Invalid parameter not satisfying: %@", @"entities.count > 0"}];
    }

    v21 = +[PPSettings sharedInstance];
    [v21 weightMultiplier];
    v23 = v22;

    v24 = objc_opt_new();
    v25 = objc_opt_new();
    v113 = 0u;
    v114 = 0u;
    v115 = 0u;
    v116 = 0u;
    v26 = v18;
    v27 = [v26 countByEnumeratingWithState:&v113 objects:buf count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v114;
      do
      {
        for (j = 0; j != v28; ++j)
        {
          if (*v114 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = *(*(&v113 + 1) + 8 * j);
          v32 = [v31 item];
          [v24 setObject:v31 forKeyedSubscript:v32];

          v33 = [v31 item];
          v34 = [v33 name];
          [v25 addObject:v34];
        }

        v28 = [v26 countByEnumeratingWithState:&v113 objects:buf count:16];
      }

      while (v28);
    }

    v85 = v26;
    v35 = [v26 count];
    if (v35 != [v24 count])
    {
      v73 = [MEMORY[0x277CCA890] currentHandler];
      [v73 handleFailureInMethod:sel__updatePreexistingEntitiesMatchingEntities_source_algorithm_txnWitness_ object:v90 file:@"PPNamedEntityStorage.m" lineNumber:483 description:@"scored entities array contains duplicate entities"];
    }

    v36 = objc_opt_new();
    v37 = objc_alloc(MEMORY[0x277CCACA8]);
    v38 = [v19 groupId];
    v39 = @"= :groupId";
    if (!v38)
    {
      v39 = @"IS NULL";
    }

    v40 = [v37 initWithFormat:@"SELECT ne.id, ne.name, ne.category, ne.dynamic_category, ne.language, ne.initial_score, ne.decay_rate, src.seconds_from_1970 FROM ne_records AS ne INNER JOIN sources AS src ON ne.source_id = src.id WHERE src.bundle_id = :bundleId AND src.group_id %@ AND src.doc_id = :docId AND ne.is_remote = 0 AND ne.algorithm = :algorithm AND ne.name IN _pas_nsset(:uniqueEntityNames)", v39];

    v91 = v20;
    v41 = [v20 db];
    v109[0] = MEMORY[0x277D85DD0];
    v109[1] = 3221225472;
    v109[2] = __95__PPNamedEntityStorage__updatePreexistingEntitiesMatchingEntities_source_algorithm_txnWitness___block_invoke;
    v109[3] = &unk_278977918;
    v42 = v19;
    v110 = v42;
    v112 = v89;
    v76 = v25;
    v111 = v76;
    *&v104 = MEMORY[0x277D85DD0];
    *(&v104 + 1) = 3221225472;
    *&v105 = __95__PPNamedEntityStorage__updatePreexistingEntitiesMatchingEntities_source_algorithm_txnWitness___block_invoke_2;
    *(&v105 + 1) = &unk_278977940;
    *&v106 = v90;
    v43 = v36;
    *(&v106 + 1) = v43;
    v79 = v42;
    *&v107 = v79;
    v108 = v23;
    v74 = v24;
    *(&v107 + 1) = v74;
    v77 = v40;
    [v41 prepAndRunQuery:v40 onPrep:v109 onRow:&v104 onError:0];

    v102 = 0u;
    v103 = 0u;
    v100 = 0u;
    v101 = 0u;
    v44 = v43;
    v45 = [v44 countByEnumeratingWithState:&v100 objects:v118 count:16];
    if (v45)
    {
      v46 = v45;
      v47 = *v101;
      do
      {
        for (k = 0; k != v46; ++k)
        {
          if (*v101 != v47)
          {
            objc_enumerationMutation(v44);
          }

          v49 = *(*(&v100 + 1) + 8 * k);
          v50 = [v91 db];
          v99[0] = MEMORY[0x277D85DD0];
          v99[1] = 3221225472;
          v99[2] = __95__PPNamedEntityStorage__updatePreexistingEntitiesMatchingEntities_source_algorithm_txnWitness___block_invoke_3;
          v99[3] = &unk_278978CF8;
          v99[4] = v49;
          [v50 prepAndRunQuery:@"UPDATE ne_records SET initial_score = :initialScore onPrep:impression_count = impression_count + 1 WHERE id = :rowId" onRow:v99 onError:{0, 0}];
        }

        v46 = [v44 countByEnumeratingWithState:&v100 objects:v118 count:16];
      }

      while (v46);
    }

    v51 = objc_opt_new();
    v96[0] = MEMORY[0x277D85DD0];
    v96[1] = 3221225472;
    v96[2] = __95__PPNamedEntityStorage__updatePreexistingEntitiesMatchingEntities_source_algorithm_txnWitness___block_invoke_4;
    v96[3] = &unk_278977968;
    v97 = v74;
    v52 = v51;
    v98 = v52;
    v53 = v74;
    [v85 enumerateObjectsUsingBlock:v96];
    v54 = v98;
    v55 = v52;

    v56 = MEMORY[0x277CCAC30];
    *&v113 = MEMORY[0x277D85DD0];
    *(&v113 + 1) = 3221225472;
    *&v114 = __108__PPNamedEntityStorage__donateNamedEntities_source_algorithm_cloudSync_decayRate_sentimentScore_txnWitness___block_invoke;
    *(&v114 + 1) = &unk_278972390;
    v57 = v55;
    *&v115 = v57;
    v58 = [v56 predicateWithBlock:&v113];
    v59 = [obj filteredArrayUsingPredicate:v58];
    v10 = v84;
    if ([v59 count])
    {
      [*(v90 + 32) truncateRecordsByDroppingOldestMakingRoomForCount:objc_msgSend(v59 txnWitness:{"count"), v91}];
      v60 = [*(v90 + 40) updateOrCreateRowForSource:v79 addingRefCount:objc_msgSend(v59 txnWitness:{"count"), v91}];
      v61 = v59;
      LOBYTE(v4) = v60 != 0x7FFFFFFFFFFFFFFFLL;
      if (v60 == 0x7FFFFFFFFFFFFFFFLL)
      {
        obja = pp_entities_log_handle();
        if (os_log_type_enabled(obja, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_23224A000, obja, OS_LOG_TYPE_ERROR, "Suppressing named entity donation due to source with bogus date.", buf, 2u);
        }

        v8 = v82;
        v3 = v83;
        v9 = v81;
      }

      else
      {
        v62 = v60;
        v63 = +[PPSettings sharedInstance];
        [v63 weightMultiplier];
        v65 = v64;

        v106 = 0u;
        v107 = 0u;
        v104 = 0u;
        v105 = 0u;
        v80 = v61;
        obja = v61;
        v66 = [obja countByEnumeratingWithState:&v104 objects:buf count:16];
        if (v66)
        {
          v67 = v66;
          v75 = v4;
          v78 = v57;
          v68 = *v105;
          do
          {
            for (m = 0; m != v67; ++m)
            {
              if (*v105 != v68)
              {
                objc_enumerationMutation(obja);
              }

              v70 = *(*(&v104 + 1) + 8 * m);
              v71 = [v91 db];
              v118[0] = MEMORY[0x277D85DD0];
              v118[1] = 3221225472;
              v118[2] = __108__PPNamedEntityStorage__donateNamedEntities_source_algorithm_cloudSync_decayRate_sentimentScore_txnWitness___block_invoke_307;
              v118[3] = &unk_2789723B8;
              v118[4] = v90;
              v118[5] = v70;
              v118[6] = v89;
              v119 = v88;
              v118[7] = v6;
              v118[8] = v7;
              v118[9] = v65;
              v118[10] = v62;
              [v71 prepAndRunQuery:@"INSERT INTO ne_records (name onPrep:lc_name onRow:category onError:{dynamic_category, language, algorithm, initial_score, decay_rate, extraction_os_build, extraction_asset_version, source_id, is_remote, is_sync_eligible, sentiment_score, occurrences_in_source) VALUES (:name, :lcName, :category, :dynamicCategory, :language, :algorithm, :initialScore, :decayRate, :osBuild, :assetVersion, :sourceRowId, 0, :shouldSync, :sentimentScore, :occurrencesInSource)", v118, 0, 0}];
            }

            v67 = [obja countByEnumeratingWithState:&v104 objects:buf count:16];
          }

          while (v67);
          v8 = v82;
          v3 = v83;
          v59 = v80;
          v9 = v81;
          v10 = v84;
          v57 = v78;
          LOBYTE(v4) = v75;
        }

        else
        {
          v8 = v82;
          v3 = v83;
          v59 = v61;
          v9 = v81;
          v10 = v84;
        }
      }
    }

    else
    {
      LOBYTE(v4) = 1;
      v8 = v82;
      v3 = v83;
      v9 = v81;
    }
  }

  *(*(*(v3 + 56) + 8) + 24) = v4;
}

uint64_t __108__PPNamedEntityStorage__donateNamedEntities_source_algorithm_cloudSync_decayRate_sentimentScore_txnWitness___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 scoredNamedEntity];
  v4 = [v3 item];
  v5 = [v2 containsObject:v4];

  return v5;
}

void __108__PPNamedEntityStorage__donateNamedEntities_source_algorithm_cloudSync_decayRate_sentimentScore_txnWitness___block_invoke_307(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = a2;
  v6 = [v3 scoredNamedEntity];
  v7 = *(a1 + 88);
  v9 = *(a1 + 56);
  v8 = *(a1 + 64);
  v10 = *(a1 + 48);
  v11 = [*(a1 + 40) occurrencesInSource];
  v12 = *(a1 + 72);
  v13 = *(a1 + 80);
  v14 = v5;
  v38 = v6;
  if (v4)
  {
    v15 = objc_autoreleasePoolPush();
    v16 = [v38 item];
    v17 = [v16 clusterIdentifier];

    if (!v17)
    {
      v18 = pp_default_log_handle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_23224A000, v18, OS_LOG_TYPE_FAULT, "Named entity record unexpectedly had nil cluster identifier during named entity donation.", buf, 2u);
      }
    }

    v19 = [v38 item];
    v20 = [v19 name];

    [v14 bindNamedParam:":name" toNSString:v20];
    v21 = [v38 item];
    v22 = [v21 clusterIdentifier];
    if (v22)
    {
      [v14 bindNamedParam:":lcName" toNSString:v22];
    }

    else
    {
      [MEMORY[0x277D3A420] clusterIdentifierFromName:v20];
      v37 = v20;
      v23 = v4;
      v24 = v10;
      v25 = v13;
      v26 = v15;
      v27 = v7;
      v29 = v28 = v11;
      [v14 bindNamedParam:":lcName" toNSString:v29];

      v11 = v28;
      v7 = v27;
      v15 = v26;
      v13 = v25;
      v10 = v24;
      v4 = v23;
      v20 = v37;
    }

    v30 = [v38 item];
    [v14 bindNamedParam:":category" toInt64:{objc_msgSend(v30, "category")}];

    v31 = [v38 item];
    v32 = [v31 dynamicCategory];
    [v14 bindNamedParam:":dynamicCategory" toNSString:v32];

    v33 = [v38 item];
    v34 = [v33 bestLanguage];
    [v14 bindNamedParam:":language" toNSString:v34];

    [v14 bindNamedParam:":algorithm" toInt64:v10];
    [v38 score];
    [v14 bindNamedParam:":initialScore" toDouble:v35 * v12];
    [v14 bindNamedParam:":decayRate" toDouble:v9];
    v36 = [MEMORY[0x277D3A578] osBuild];
    [v14 bindNamedParam:":osBuild" toNSString:v36];
    [v14 bindNamedParam:":assetVersion" toInt64:{objc_msgSend(*(v4 + 48), "treatmentsHash")}];
    [v14 bindNamedParam:":sourceRowId" toInt64:v13];
    [v14 bindNamedParam:":shouldSync" toInt64:v7];
    [v14 bindNamedParam:":sentimentScore" toDouble:v8];
    [v14 bindNamedParam:":occurrencesInSource" toInt64:v11];

    objc_autoreleasePoolPop(v15);
  }
}

void __95__PPNamedEntityStorage__updatePreexistingEntitiesMatchingEntities_source_algorithm_txnWitness___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [*(a1 + 32) bundleId];
  [v7 bindNamedParam:":bundleId" toNSString:v3];

  v4 = [*(a1 + 32) groupId];

  if (v4)
  {
    v5 = [*(a1 + 32) groupId];
    [v7 bindNamedParam:":groupId" toNSString:v5];
  }

  v6 = [*(a1 + 32) documentId];
  [v7 bindNamedParam:":docId" toNSString:v6];

  [v7 bindNamedParam:":algorithm" toInt64:*(a1 + 48)];
  [v7 bindNamedParam:":uniqueEntityNames" toNSSet:*(a1 + 40)];
}

uint64_t __95__PPNamedEntityStorage__updatePreexistingEntitiesMatchingEntities_source_algorithm_txnWitness___block_invoke_2(uint64_t a1, void *a2)
{
  v47 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = *(a1 + 64);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v43 = *(a1 + 40);
  v7 = a2;
  v44 = v5;
  v8 = v6;
  if (v3)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = [v7 getInt64ForColumnName:"id" table:"ne_records"];
    v11 = [v7 nonnullNSStringForColumnName:"name" table:"ne_records"];
    v12 = [v7 getInt64ForColumnName:"category" table:"ne_records"];
    v13 = [v7 getNSStringForColumnName:"dynamic_category" table:"ne_records"];
    v14 = [v7 nonnullNSStringForColumnName:"language" table:"ne_records"];
    [v7 getDoubleForColumnName:"initial_score" table:"ne_records"];
    v16 = 0.0;
    if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      v17 = 0.0;
    }

    else
    {
      v17 = v15;
    }

    [v7 getDoubleForColumnName:"decay_rate" table:"ne_records"];
    if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      v19 = *MEMORY[0x277D3A758];
    }

    else
    {
      v19 = v18;
    }

    [v7 getDoubleForColumnName:"seconds_from_1970" table:"sources"];
    if ((*&v20 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
    {
      v16 = v20;
    }

    v21 = [objc_alloc(MEMORY[0x277D3A420]) initWithName:v11 category:v12 dynamicCategory:v13 language:v14];
    v22 = [v8 objectForKeyedSubscript:v21];
    if (v22)
    {
      [v8 setObject:0 forKeyedSubscript:v21];
      v23 = [v44 bundleId];
      v42 = v10;
      if (_shouldSuppressRepeatedImpressions___pasOnceToken12 != -1)
      {
        dispatch_once(&_shouldSuppressRepeatedImpressions___pasOnceToken12, &__block_literal_global_263);
      }

      v24 = [_shouldSuppressRepeatedImpressions___pasExprOnceResult containsObject:v23];

      if (v24)
      {
        v25 = pp_entities_log_handle();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          v40 = [v44 bundleId];
          *buf = 138412290;
          v46 = v40;
          _os_log_debug_impl(&dword_23224A000, v25, OS_LOG_TYPE_DEBUG, "Suppressing repeated impressions sourced from %@.", buf, 0xCu);
        }
      }

      else
      {
        v41 = v9;
        v26 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSince1970:v16];
        v27 = [v44 date];
        v28 = v26;
        objc_opt_self();
        [v27 timeIntervalSinceDate:v28];
        v30 = v29;

        if (v30 >= 0.0)
        {
          v31 = -v19;
          if (v19 < 0.0)
          {
            v31 = -0.0;
          }

          v17 = exp(v31 * v30) * v17;
        }

        [v22 score];
        v33 = v17 + v32 * v4;
        v34 = MEMORY[0x277D42648];
        v35 = [MEMORY[0x277CCABB0] numberWithLongLong:v42];
        v36 = [MEMORY[0x277CCABB0] numberWithDouble:v33];
        v37 = [v34 tupleWithFirst:v35 second:v36];
        [v43 addObject:v37];

        v9 = v41;
      }
    }

    v38 = *MEMORY[0x277D42690];

    objc_autoreleasePoolPop(v9);
  }

  else
  {
    v38 = 0;
  }

  return v38;
}

void __95__PPNamedEntityStorage__updatePreexistingEntitiesMatchingEntities_source_algorithm_txnWitness___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 second];
  [v5 doubleValue];
  [v4 bindNamedParam:":initialScore" toDouble:?];

  v6 = [*(a1 + 32) first];
  [v4 bindNamedParam:":rowId" toInt64:{objc_msgSend(v6, "longLongValue")}];
}

void __95__PPNamedEntityStorage__updatePreexistingEntitiesMatchingEntities_source_algorithm_txnWitness___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v9 = v3;
  v5 = [v3 item];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (v6)
  {
    v7 = *(a1 + 40);
    v8 = [v9 item];
    [v7 addObject:v8];
  }
}

void __59__PPNamedEntityStorage__shouldSuppressRepeatedImpressions___block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_autoreleasePoolPush();
  v2 = objc_alloc(MEMORY[0x277CBEB98]);
  v3 = [v2 initWithObjects:{*MEMORY[0x277D3A620], *MEMORY[0x277D3A630], 0}];
  objc_autoreleasePoolPop(v1);
  v4 = _shouldSuppressRepeatedImpressions___pasExprOnceResult;
  _shouldSuppressRepeatedImpressions___pasExprOnceResult = v3;

  objc_autoreleasePoolPop(v0);
}

- (BOOL)iterNamedEntityRecordsWithQuery:(id)query error:(id *)error block:(id)block
{
  blockCopy = block;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __68__PPNamedEntityStorage_iterNamedEntityRecordsWithQuery_error_block___block_invoke;
  v11[3] = &unk_278972340;
  v12 = blockCopy;
  v9 = blockCopy;
  LOBYTE(error) = [(PPNamedEntityStorage *)self iterNamedEntityRecordsAndIdsWithQuery:query error:error block:v11];

  return error;
}

- (BOOL)iterNamedEntityRecordsAndIdsWithQuery:(id)query error:(id *)error block:(id)block
{
  v141 = *MEMORY[0x277D85DE8];
  queryCopy = query;
  blockCopy = block;
  v91 = objc_autoreleasePoolPush();
  limit = [queryCopy limit];
  if (limit)
  {
    if ([queryCopy orderByName] & 1) != 0 || (objc_msgSend(queryCopy, "removeNearDuplicates"))
    {
      v7 = @"INNER JOIN";
      v89 = @"ORDER BY lc_name ASC, src.seconds_from_1970 DESC";
    }

    else
    {
      orderByAscendingDate = [queryCopy orderByAscendingDate];
      v10 = @"ORDER BY src.seconds_from_1970 DESC";
      if (orderByAscendingDate)
      {
        v10 = @"ORDER BY src.seconds_from_1970 ASC";
      }

      v89 = v10;
      v7 = @"CROSS JOIN";
    }

    v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"SELECT ne.id, src.id FROM sources AS src %@ ne_records AS ne ON ne.source_id = src.id WHERE 1 ", v7];
    v12 = objc_opt_new();
    fromDate = [queryCopy fromDate];

    if (fromDate)
    {
      v14 = objc_autoreleasePoolPush();
      if ([queryCopy filterByRelevanceDate])
      {
        v15 = @"AND COALESCE(src.relevance_seconds_from_1970, src.seconds_from_1970) >= :fromDateEpoch ";
      }

      else
      {
        v15 = @"AND src.seconds_from_1970 >= :fromDateEpoch ";
      }

      v16 = [v11 stringByAppendingString:v15];

      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __74__PPNamedEntityStorage_iterNamedEntityRecordsAndIdsWithQuery_error_block___block_invoke;
      aBlock[3] = &unk_278978CF8;
      v138 = queryCopy;
      v17 = _Block_copy(aBlock);
      [v12 addObject:v17];

      objc_autoreleasePoolPop(v14);
      v11 = v16;
    }

    toDate = [queryCopy toDate];

    if (toDate)
    {
      v19 = objc_autoreleasePoolPush();
      if ([queryCopy filterByRelevanceDate])
      {
        v20 = @"AND COALESCE(src.relevance_seconds_from_1970, src.seconds_from_1970) <= :toDateEpoch ";
      }

      else
      {
        v20 = @"AND src.seconds_from_1970 <= :toDateEpoch ";
      }

      v21 = [v11 stringByAppendingString:v20];

      v135[0] = MEMORY[0x277D85DD0];
      v135[1] = 3221225472;
      v135[2] = __74__PPNamedEntityStorage_iterNamedEntityRecordsAndIdsWithQuery_error_block___block_invoke_2;
      v135[3] = &unk_278978CF8;
      v136 = queryCopy;
      v22 = _Block_copy(v135);
      [v12 addObject:v22];

      objc_autoreleasePoolPop(v19);
      v11 = v21;
    }

    if ([queryCopy deviceFilter])
    {
      v23 = objc_autoreleasePoolPush();
      v24 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"AND ne.is_remote = %u ", objc_msgSend(queryCopy, "deviceFilter") == 2];
      v25 = [v11 stringByAppendingString:v24];

      objc_autoreleasePoolPop(v23);
      v11 = v25;
    }

    if ([queryCopy excludeWithoutSentiment])
    {
      v26 = objc_autoreleasePoolPush();
      v27 = [v11 stringByAppendingString:@"AND ne.sentiment_score != 0 "];

      objc_autoreleasePoolPop(v26);
      v11 = v27;
    }

    v28 = objc_autoreleasePoolPush();
    matchingSourceBundleIds = [queryCopy matchingSourceBundleIds];
    if ([matchingSourceBundleIds count])
    {
      v30 = [v11 stringByAppendingString:@"AND src.bundle_id IN _pas_nsset(:matchingSourceBundleIds) "];

      v133[0] = MEMORY[0x277D85DD0];
      v133[1] = 3221225472;
      v133[2] = __74__PPNamedEntityStorage_iterNamedEntityRecordsAndIdsWithQuery_error_block___block_invoke_3;
      v133[3] = &unk_278978CF8;
      v134 = matchingSourceBundleIds;
      v31 = _Block_copy(v133);
      [v12 addObject:v31];

      v11 = v30;
    }

    objc_autoreleasePoolPop(v28);
    v32 = objc_autoreleasePoolPush();
    excludingSourceBundleIds = [queryCopy excludingSourceBundleIds];
    if ([excludingSourceBundleIds count])
    {
      v34 = [v11 stringByAppendingString:@"AND src.bundle_id NOT IN _pas_nsset(:excludingSourceBundleIds) "];

      v131[0] = MEMORY[0x277D85DD0];
      v131[1] = 3221225472;
      v131[2] = __74__PPNamedEntityStorage_iterNamedEntityRecordsAndIdsWithQuery_error_block___block_invoke_4;
      v131[3] = &unk_278978CF8;
      v132 = excludingSourceBundleIds;
      v35 = _Block_copy(v131);
      [v12 addObject:v35];

      v11 = v34;
    }

    objc_autoreleasePoolPop(v32);
    v36 = objc_autoreleasePoolPush();
    matchingContactHandle = [queryCopy matchingContactHandle];
    v38 = [matchingContactHandle length] == 0;

    if (!v38)
    {
      v39 = [[PPContactStorage alloc] initWithDatabase:self->_db foundInAppsHarvestStoreGetter:&__block_literal_global_3068];
      matchingContactHandle2 = [queryCopy matchingContactHandle];
      v41 = [(PPContactStorage *)v39 sourcesForContactHandle:matchingContactHandle2];

      v42 = [(PPSourceStorage *)self->_sourceStorage whereSourceIdInSubclauseWithSourceIds:v41 tableNameAlias:@"src" binders:v12];
      v43 = [v11 stringByAppendingString:v42];

      v11 = v43;
    }

    objc_autoreleasePoolPop(v36);
    v44 = objc_autoreleasePoolPush();
    matchingSourceGroupIds = [queryCopy matchingSourceGroupIds];
    if ([matchingSourceGroupIds count])
    {
      v46 = [v11 stringByAppendingString:@"AND src.group_id IN _pas_nsset(:matchingGroupIds) "];

      v129[0] = MEMORY[0x277D85DD0];
      v129[1] = 3221225472;
      v129[2] = __74__PPNamedEntityStorage_iterNamedEntityRecordsAndIdsWithQuery_error_block___block_invoke_6;
      v129[3] = &unk_278978CF8;
      v130 = matchingSourceGroupIds;
      v47 = _Block_copy(v129);
      [v12 addObject:v47];

      v11 = v46;
    }

    objc_autoreleasePoolPop(v44);
    v48 = objc_autoreleasePoolPush();
    matchingCategories = [queryCopy matchingCategories];
    if ([matchingCategories count])
    {
      v50 = [v11 stringByAppendingString:@"AND ne.category IN _pas_nsset(:matchingCategories) "];

      v127[0] = MEMORY[0x277D85DD0];
      v127[1] = 3221225472;
      v127[2] = __74__PPNamedEntityStorage_iterNamedEntityRecordsAndIdsWithQuery_error_block___block_invoke_7;
      v127[3] = &unk_278978CF8;
      v128 = matchingCategories;
      v51 = _Block_copy(v127);
      [v12 addObject:v51];

      v11 = v50;
    }

    objc_autoreleasePoolPop(v48);
    v52 = objc_autoreleasePoolPush();
    excludingAlgorithms = [queryCopy excludingAlgorithms];
    if ([excludingAlgorithms count])
    {
      v54 = [v11 stringByAppendingString:@"AND ne.algorithm NOT IN _pas_nsset(:excludingAlgorithms) "];

      v125[0] = MEMORY[0x277D85DD0];
      v125[1] = 3221225472;
      v125[2] = __74__PPNamedEntityStorage_iterNamedEntityRecordsAndIdsWithQuery_error_block___block_invoke_8;
      v125[3] = &unk_278978CF8;
      v126 = excludingAlgorithms;
      v55 = _Block_copy(v125);
      [v12 addObject:v55];

      v11 = v54;
    }

    objc_autoreleasePoolPop(v52);
    v56 = objc_autoreleasePoolPush();
    matchingSourceDocumentIds = [queryCopy matchingSourceDocumentIds];
    if ([matchingSourceDocumentIds count])
    {
      v58 = [v11 stringByAppendingString:@"AND src.doc_id IN _pas_nsset(:matchingSourceDocumentIds) "];

      v123[0] = MEMORY[0x277D85DD0];
      v123[1] = 3221225472;
      v123[2] = __74__PPNamedEntityStorage_iterNamedEntityRecordsAndIdsWithQuery_error_block___block_invoke_9;
      v123[3] = &unk_278978CF8;
      v124 = matchingSourceDocumentIds;
      v59 = _Block_copy(v123);
      [v12 addObject:v59];

      v11 = v58;
    }

    objc_autoreleasePoolPop(v56);
    v60 = objc_autoreleasePoolPush();
    matchingNames = [queryCopy matchingNames];
    matchingName = [queryCopy matchingName];
    if ([matchingNames count] || matchingName)
    {
      v63 = [matchingNames _pas_mappedSetWithTransform:&__block_literal_global_205];
      v64 = v63;
      if (matchingName)
      {
        v65 = [MEMORY[0x277D3A420] clusterIdentifierFromName:matchingName];
        if ([v64 count] && !objc_msgSend(v64, "containsObject:", v65))
        {
          v67 = [MEMORY[0x277CBEB98] set];
        }

        else
        {
          v66 = objc_autoreleasePoolPush();
          v67 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{v65, 0}];
          objc_autoreleasePoolPop(v66);
        }
      }

      else
      {
        v67 = v63;
      }

      v68 = [v11 stringByAppendingString:@"AND ne.lc_name IN _pas_nsset(:lowercaseMatchingNames) "];

      v121[0] = MEMORY[0x277D85DD0];
      v121[1] = 3221225472;
      v121[2] = __74__PPNamedEntityStorage_iterNamedEntityRecordsAndIdsWithQuery_error_block___block_invoke_11;
      v121[3] = &unk_278978CF8;
      v122 = v67;
      v69 = v67;
      v70 = _Block_copy(v121);
      [v12 addObject:v70];

      v11 = v68;
    }

    objc_autoreleasePoolPop(v60);
    v71 = objc_autoreleasePoolPush();
    matchingEntityTrie = [queryCopy matchingEntityTrie];

    if (matchingEntityTrie)
    {
      trialWrapper = self->_trialWrapper;
      matchingEntityTrie2 = [queryCopy matchingEntityTrie];
      v75 = [(PPTrialWrapper *)trialWrapper trieForFactorName:matchingEntityTrie2 namespaceName:@"PERSONALIZATION_PORTRAIT_NAMED_ENTITIES"];

      if (!v75)
      {
        v86 = pp_default_log_handle();
        if (os_log_type_enabled(v86, OS_LOG_TYPE_FAULT))
        {
          *v113 = 0;
          _os_log_fault_impl(&dword_23224A000, v86, OS_LOG_TYPE_FAULT, "Failed to load entity trie, stops this query.", v113, 2u);
        }

        objc_autoreleasePoolPop(v71);
        v8 = 0;
        goto LABEL_58;
      }

      v76 = [v11 stringByAppendingString:{@"AND _pas_block(:matchingEntityTrieBlock, ne.name) "}];

      v119[0] = MEMORY[0x277D85DD0];
      v119[1] = 3221225472;
      v119[2] = __74__PPNamedEntityStorage_iterNamedEntityRecordsAndIdsWithQuery_error_block___block_invoke_218;
      v119[3] = &unk_278978CF8;
      v120 = v75;
      v77 = v75;
      v78 = _Block_copy(v119);
      [v12 addObject:v78];

      v11 = v76;
    }

    objc_autoreleasePoolPop(v71);
    v79 = objc_autoreleasePoolPush();
    v80 = [v11 stringByAppendingString:v89];

    objc_autoreleasePoolPop(v79);
    *v113 = 0;
    v114 = v113;
    v115 = 0x3032000000;
    v116 = __Block_byref_object_copy__3014;
    v117 = __Block_byref_object_dispose__3015;
    v118 = 0;
    v112[0] = MEMORY[0x277D85DD0];
    v112[1] = 3221225472;
    v112[2] = __74__PPNamedEntityStorage_iterNamedEntityRecordsAndIdsWithQuery_error_block___block_invoke_223;
    v112[3] = &unk_278972318;
    v112[4] = v113;
    v81 = _Block_copy(v112);
    v111[0] = 0;
    v111[1] = v111;
    v111[2] = 0x2020000000;
    v111[3] = 0;
    v105 = 0;
    v106 = &v105;
    v107 = 0x3032000000;
    v108 = __Block_byref_object_copy__3014;
    v109 = __Block_byref_object_dispose__3015;
    v110 = 0;
    db = self->_db;
    v95[0] = MEMORY[0x277D85DD0];
    v95[1] = 3221225472;
    v95[2] = __74__PPNamedEntityStorage_iterNamedEntityRecordsAndIdsWithQuery_error_block___block_invoke_2_225;
    v95[3] = &unk_2789778C8;
    v11 = v80;
    v96 = v11;
    v97 = v12;
    v102 = v111;
    v98 = queryCopy;
    selfCopy = self;
    v103 = &v105;
    v83 = v81;
    v100 = v83;
    v104 = v113;
    v101 = blockCopy;
    [(PPSQLDatabase *)db readTransactionWithClient:1 block:v95];
    if (v106[5])
    {
      v84 = pp_default_log_handle();
      if (os_log_type_enabled(v84, OS_LOG_TYPE_FAULT))
      {
        v88 = [v106[5] count];
        *buf = 134217984;
        v140 = v88;
        _os_log_fault_impl(&dword_23224A000, v84, OS_LOG_TYPE_FAULT, "iterNamedEntityRecordsWithQuery encountered %tu sources which did not validate; deleting associated named entity records now.", buf, 0xCu);
      }

      v85 = self->_db;
      v94[0] = MEMORY[0x277D85DD0];
      v94[1] = 3221225472;
      v94[2] = __74__PPNamedEntityStorage_iterNamedEntityRecordsAndIdsWithQuery_error_block___block_invoke_233;
      v94[3] = &unk_278978DE0;
      v94[4] = self;
      v94[5] = &v105;
      [(PPSQLDatabase *)v85 writeTransactionWithClient:1 block:v94];
    }

    _Block_object_dispose(&v105, 8);
    _Block_object_dispose(v111, 8);

    _Block_object_dispose(v113, 8);
    v8 = 1;
LABEL_58:

    goto LABEL_59;
  }

  v8 = 0;
LABEL_59:
  objc_autoreleasePoolPop(v91);

  return (limit == 0) | v8;
}

void __74__PPNamedEntityStorage_iterNamedEntityRecordsAndIdsWithQuery_error_block___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 fromDate];
  [v4 timeIntervalSince1970];
  [v3 bindNamedParam:":fromDateEpoch" toDouble:?];
}

void __74__PPNamedEntityStorage_iterNamedEntityRecordsAndIdsWithQuery_error_block___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 toDate];
  [v4 timeIntervalSince1970];
  [v3 bindNamedParam:":toDateEpoch" toDouble:?];
}

void __74__PPNamedEntityStorage_iterNamedEntityRecordsAndIdsWithQuery_error_block___block_invoke_218(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __74__PPNamedEntityStorage_iterNamedEntityRecordsAndIdsWithQuery_error_block___block_invoke_2_220;
  v3[3] = &unk_278977850;
  v4 = *(a1 + 32);
  [a2 bindNamedParam:":matchingEntityTrieBlock" toBlock:v3];
}

BOOL __74__PPNamedEntityStorage_iterNamedEntityRecordsAndIdsWithQuery_error_block___block_invoke_223(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = 0;
  if (v3)
  {
    v5 = *(*(*(a1 + 32) + 8) + 40);
    if (v5)
    {
      v6 = [v5 algorithm];
      if (v6 == [v3 algorithm] && (objc_msgSend(*(*(*(a1 + 32) + 8) + 40), "entity"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "entity"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v7, "isEqualToNamedEntity:", v8), v8, v7, v9) && (objc_msgSend(*(*(*(a1 + 32) + 8) + 40), "source"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "bundleId"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "source"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "bundleId"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v11, "isEqualToString:", v13), v13, v12, v11, v10, v14))
      {
        v15 = [v3 source];
        v16 = [v15 date];
        v17 = [*(*(*(a1 + 32) + 8) + 40) source];
        v18 = [v17 date];
        [v16 timeIntervalSinceDate:v18];
        v4 = fabs(v19) <= 1.0;
      }

      else
      {
        v4 = 0;
      }
    }
  }

  return v4;
}

void __74__PPNamedEntityStorage_iterNamedEntityRecordsAndIdsWithQuery_error_block___block_invoke_2_225(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 db];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __74__PPNamedEntityStorage_iterNamedEntityRecordsAndIdsWithQuery_error_block___block_invoke_3_226;
  v23[3] = &unk_278978CF8;
  v5 = *(a1 + 32);
  v24 = *(a1 + 40);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __74__PPNamedEntityStorage_iterNamedEntityRecordsAndIdsWithQuery_error_block___block_invoke_4_227;
  v16[3] = &unk_2789778A0;
  v14 = *(a1 + 80);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v17 = v6;
  v18 = v7;
  v19 = v3;
  *&v9 = v14;
  *(&v9 + 1) = *(a1 + 88);
  v15 = v9;
  v10 = v8;
  v22 = *(a1 + 96);
  v11 = *(a1 + 72);
  *&v12 = v10;
  *(&v12 + 1) = v11;
  v20 = v12;
  v21 = v15;
  v13 = v3;
  [v4 prepAndRunQuery:v5 onPrep:v23 onRow:v16 onError:0];
}

void __74__PPNamedEntityStorage_iterNamedEntityRecordsAndIdsWithQuery_error_block___block_invoke_233(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  v5 = [v3 db];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __74__PPNamedEntityStorage_iterNamedEntityRecordsAndIdsWithQuery_error_block___block_invoke_2_238;
  v12[3] = &unk_278978D90;
  v12[4] = *(a1 + 40);
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __74__PPNamedEntityStorage_iterNamedEntityRecordsAndIdsWithQuery_error_block___block_invoke_3_240;
  v10 = &unk_278978DB8;
  v11 = v4;
  v6 = v4;
  [v5 prepAndRunQuery:@"SELECT id FROM ne_records WHERE source_id IN _pas_nsset(:sourceIds)" onPrep:v12 onRow:&v7 onError:0];

  [*(*(a1 + 32) + 32) deleteRecordsForRowIds:v6 txnWitness:v3 atLeastOneClusterRemoved:0 deletedCount:{0, v7, v8, v9, v10}];
}

void __74__PPNamedEntityStorage_iterNamedEntityRecordsAndIdsWithQuery_error_block___block_invoke_3_226(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        (*(*(*(&v9 + 1) + 8 * v8) + 16))(*(*(&v9 + 1) + 8 * v8));
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

uint64_t __74__PPNamedEntityStorage_iterNamedEntityRecordsAndIdsWithQuery_error_block___block_invoke_4_227(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(*(*(a1 + 72) + 8) + 24);
  if (v5 != [*(a1 + 32) limit])
  {
    v7 = [v3 getInt64ForColumnName:"id" table:"ne_records"];
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v10 = v9;
    if (v8)
    {
      v32 = 0;
      v33 = &v32;
      v34 = 0x3032000000;
      v35 = __Block_byref_object_copy__3014;
      v36 = __Block_byref_object_dispose__3015;
      v37 = 0;
      v11 = [v9 db];
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __53__PPNamedEntityStorage__loadRecordWithId_txnWitness___block_invoke;
      v31[3] = &__block_descriptor_40_e29_v16__0___PASSqliteStatement_8l;
      v31[4] = v7;
      v24 = MEMORY[0x277D85DD0];
      v25 = 3221225472;
      v26 = __53__PPNamedEntityStorage__loadRecordWithId_txnWitness___block_invoke_2;
      v27 = &unk_2789778F0;
      v30 = &v32;
      v28 = v8;
      v12 = v10;
      v29 = v12;
      [v11 prepAndRunQuery:@"SELECT * FROM ne_records AS ne CROSS JOIN sources AS src ON ne.source_id = src.id WHERE ne.id = :recordId LIMIT 1" onPrep:v31 onRow:&v24 onError:0];

      v13 = v33[5];
      v14 = v13;

      _Block_object_dispose(&v32, 8);
      if (v14)
      {
        if (![*(a1 + 32) removeNearDuplicates] || !(*(*(a1 + 56) + 16))())
        {
          objc_storeStrong((*(*(a1 + 88) + 8) + 40), v13);
          LOBYTE(v24) = 0;
          (*(*(a1 + 64) + 16))();
          ++*(*(*(a1 + 72) + 8) + 24);
          v15 = MEMORY[0x277D42698];
          if ((v24 & 1) == 0)
          {
            v16 = *(*(*(a1 + 72) + 8) + 24);
            if (v16 != [*(a1 + 32) limit])
            {
              v15 = MEMORY[0x277D42690];
            }
          }

          v6 = *v15;
          goto LABEL_16;
        }

LABEL_15:
        v6 = *MEMORY[0x277D42690];
LABEL_16:

        goto LABEL_17;
      }
    }

    else
    {
    }

    if (!*(*(*(a1 + 80) + 8) + 40))
    {
      v17 = objc_opt_new();
      v18 = *(*(a1 + 80) + 8);
      v19 = *(v18 + 40);
      *(v18 + 40) = v17;
    }

    v20 = [v3 getInt64ForColumnName:"id" table:{"sources", v24, v25, v26, v27, v28}];
    v21 = *(*(*(a1 + 80) + 8) + 40);
    v22 = [MEMORY[0x277CCABB0] numberWithLongLong:v20];
    [v21 addObject:v22];

    v14 = 0;
    goto LABEL_15;
  }

  v6 = *MEMORY[0x277D42698];
LABEL_17:
  objc_autoreleasePoolPop(v4);

  return v6;
}

uint64_t __53__PPNamedEntityStorage__loadRecordWithId_txnWitness___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [(PPNamedEntityStorage *)*(a1 + 32) _createRecordWithStatement:a2 txnWitness:*(a1 + 40)];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return *MEMORY[0x277D42698];
}

id __74__PPNamedEntityStorage_iterNamedEntityRecordsAndIdsWithQuery_error_block___block_invoke_2_220(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = *(a1 + 32);
  v4 = [a2 objectAtIndexedSubscript:0];
  v5 = [v2 numberWithUnsignedInt:{objc_msgSend(v3, "payloadForString:", v4)}];

  return v5;
}

- (void)dealloc
{
  [(PPDKStorage *)self->_dkStorage removeObserver:self->_deletionObserver];
  v3.receiver = self;
  v3.super_class = PPNamedEntityStorage;
  [(PPNamedEntityStorage *)&v3 dealloc];
}

- (PPNamedEntityStorage)initWithDatabase:(id)database
{
  databaseCopy = database;
  v5 = [PPTrialWrapper alloc];
  v6 = objc_opt_new();
  v7 = +[PPTrialWrapper sharedTrialClient];
  v8 = [(PPTrialWrapper *)v5 initWithSettings:v6 database:databaseCopy trialClient:v7];

  v9 = +[PPDKStorage sharedInstance];
  v10 = [(PPNamedEntityStorage *)self initWithDatabase:databaseCopy maxRecords:15000 dkStorage:v9 loadEmptyDatabaseFromDK:1 trialWrapper:v8];

  return v10;
}

- (PPNamedEntityStorage)initWithDatabase:(id)database maxRecords:(unsigned int)records dkStorage:(id)storage loadEmptyDatabaseFromDK:(BOOL)k trialWrapper:(id)wrapper
{
  kCopy = k;
  v10 = *&records;
  databaseCopy = database;
  storageCopy = storage;
  wrapperCopy = wrapper;
  if (!databaseCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PPNamedEntityStorage.m" lineNumber:69 description:{@"Invalid parameter not satisfying: %@", @"database"}];
  }

  v38.receiver = self;
  v38.super_class = PPNamedEntityStorage;
  v16 = [(PPNamedEntityStorage *)&v38 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_db, database);
    objc_storeStrong(&v17->_dkStorage, storage);
    v18 = [[PPSourceStorage alloc] initWithDatabase:v17->_db];
    sourceStorage = v17->_sourceStorage;
    v17->_sourceStorage = v18;

    v20 = [PPRecordStorageHelper alloc];
    v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ne_records"];
    dkStorage = v17->_dkStorage;
    entityStream = [(PPDKStorage *)dkStorage entityStream];
    v24 = [(PPRecordStorageHelper *)v20 initWithName:@"NamedEntity" table:v21 clusterIdentifierColumn:@"lc_name" maxRecords:v10 duetStorage:dkStorage duetStream:entityStream sourceStorage:v17->_sourceStorage];
    storageHelper = v17->_storageHelper;
    v17->_storageHelper = v24;

    objc_storeStrong(&v17->_trialWrapper, wrapper);
    v26 = [MEMORY[0x277D425A0] autoreleasingSerialQueueWithLabel:"com.apple.PersonalizationPortrait.NamedEntity.PopulateDatabaseQueue" qosClass:9];
    populateDatabaseQueue = v17->_populateDatabaseQueue;
    v17->_populateDatabaseQueue = v26;

    v28 = v17->_dkStorage;
    if (kCopy && v28)
    {
      v29 = v17->_populateDatabaseQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __69__PPNamedEntityStorage__asyncPopulateDatabaseFromDKEventsIfNecessary__block_invoke;
      block[3] = &unk_278977B20;
      block[4] = v17;
      block[5] = sel__asyncPopulateDatabaseFromDKEventsIfNecessary;
      dispatch_async(v29, block);
      v28 = v17->_dkStorage;
    }

    if (v28)
    {
      objc_initWeak(block, v17);
      v30 = v17->_dkStorage;
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __99__PPNamedEntityStorage_initWithDatabase_maxRecords_dkStorage_loadEmptyDatabaseFromDK_trialWrapper___block_invoke;
      v36[3] = &unk_278977828;
      objc_copyWeak(&v37, block);
      v31 = [(PPDKStorage *)v30 registerForNamedEntitiesRemoteDeletionWithBlock:v36];
      deletionObserver = v17->_deletionObserver;
      v17->_deletionObserver = v31;

      objc_destroyWeak(&v37);
      objc_destroyWeak(block);
    }

    [(PPNamedEntityStorage *)v17 _asyncProcessNewDKEventDeletions];
  }

  return v17;
}

void __99__PPNamedEntityStorage_initWithDatabase_maxRecords_dkStorage_loadEmptyDatabaseFromDK_trialWrapper___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(PPNamedEntityStorage *)WeakRetained _asyncProcessNewDKEventDeletions];
}

void __69__PPNamedEntityStorage__asyncPopulateDatabaseFromDKEventsIfNecessary__block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 8) handleWithClient:1];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ne_records"];
  v4 = [v2 numberOfRowsInTable:v3];

  if (v4 < 0)
  {
    v16 = [MEMORY[0x277CCA890] currentHandler];
    [v16 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"PPNamedEntityStorage.m" lineNumber:925 description:@"negative record count in ne_records"];

LABEL_3:
    v5 = pp_entities_log_handle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_23224A000, v5, OS_LOG_TYPE_DEBUG, "Skipping initial _DKEvent named entity import because database is nonempty.", buf, 2u);
    }

    goto LABEL_20;
  }

  if (v4)
  {
    goto LABEL_3;
  }

  v6 = pp_entities_log_handle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v6, OS_LOG_TYPE_DEFAULT, "Database is empty; trying to load named entity data in the background from the _DKKnowledgeStore.", buf, 2u);
  }

  v7 = [*(a1 + 32) duetReadBatchSize] + 99999;
  v8 = [*(a1 + 32) duetReadBatchSize];
  v9 = 0;
  v18 = 0;
  v10 = v7 / v8;
  do
  {
    v11 = *(a1 + 32);
    v12 = [v11 duetReadBatchSize];
    if (v11)
    {
      [(PPNamedEntityStorage *)v11 _importDKEventsWithShouldContinueBlock:v12 remoteEventsOnly:0 isComplete:&v18 shouldContinueBlock:&__block_literal_global_333];
    }

    ++v9;
  }

  while ((v18 & 1) == 0 && v9 < v10);
  if ((v18 & 1) == 0)
  {
    v13 = pp_default_log_handle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      *buf = 134217984;
      v20 = v9;
      _os_log_fault_impl(&dword_23224A000, v13, OS_LOG_TYPE_FAULT, "PPNamedEntityStorage:_asyncPopulateDatabaseFromDKEventsIfNecessary terminated due to excessive loop count %tu", buf, 0xCu);
    }
  }

  v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ne_records"];
  v15 = [v2 numberOfRowsInTable:v14];

  if (v15 < 0)
  {
    v17 = [MEMORY[0x277CCA890] currentHandler];
    [v17 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"PPNamedEntityStorage.m" lineNumber:946 description:@"negative record count in ne_records"];
  }

  v5 = pp_entities_log_handle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v20 = v15;
    _os_log_impl(&dword_23224A000, v5, OS_LOG_TYPE_DEFAULT, "Completed initial _DKEvent named entity import. Database now contains %lld named entity records.", buf, 0xCu);
  }

LABEL_20:
}

@end