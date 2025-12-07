@interface PPRecordStorageHelper
- (BOOL)clearWithDatabase:(id)database client:(unsigned __int8)client deletedCount:(unint64_t *)count error:(id *)error clearExternalTableReferences:(id)references;
- (BOOL)decayFeedbackWithDatabase:(id)database client:(unsigned __int8)client decayRate:(double)rate;
- (BOOL)deleteAllRecordsSourcedFromBundleId:(id)id algorithm:(unsigned int)algorithm txnWitness:(id)witness atLeastOneRecordClusterRemoved:(BOOL *)removed deletedCount:(unint64_t *)count error:(id *)error;
- (BOOL)deleteAllRecordsSourcedFromBundleId:(id)id documentIds:(id)ids algorithm:(unsigned int)algorithm txnWitness:(id)witness atLeastOneRecordClusterRemoved:(BOOL *)removed deletedCount:(unint64_t *)count error:(id *)error;
- (BOOL)deleteAllRecordsSourcedFromBundleId:(id)id documentIds:(id)ids txnWitness:(id)witness atLeastOneRecordClusterRemoved:(BOOL *)removed deletedCount:(unint64_t *)count error:(id *)error;
- (BOOL)deleteAllRecordsSourcedFromBundleId:(id)id groupId:(id)groupId olderThanDate:(id)date algorithm:(unsigned int)algorithm txnWitness:(id)witness atLeastOneRecordClusterRemoved:(BOOL *)removed deletedCount:(unint64_t *)count error:(id *)self0;
- (BOOL)deleteAllRecordsSourcedFromBundleId:(id)id groupId:(id)groupId olderThanDate:(id)date txnWitness:(id)witness atLeastOneRecordClusterRemoved:(BOOL *)removed deletedCount:(unint64_t *)count error:(id *)error;
- (BOOL)deleteAllRecordsSourcedFromBundleId:(id)id groupIds:(id)ids algorithm:(unsigned int)algorithm txnWitness:(id)witness atLeastOneRecordClusterRemoved:(BOOL *)removed deletedCount:(unint64_t *)count error:(id *)error;
- (BOOL)deleteAllRecordsSourcedFromBundleId:(id)id groupIds:(id)ids txnWitness:(id)witness atLeastOneRecordClusterRemoved:(BOOL *)removed deletedCount:(unint64_t *)count error:(id *)error;
- (BOOL)deleteAllRecordsSourcedFromBundleId:(id)id txnWitness:(id)witness atLeastOneRecordClusterRemoved:(BOOL *)removed deletedCount:(unint64_t *)count error:(id *)error;
- (BOOL)deleteAllRecordsWithClusterIdentifier:(id)identifier algorithm:(unsigned int)algorithm txnWitness:(id)witness atLeastOneRecordClusterRemoved:(BOOL *)removed deletedCount:(unint64_t *)count error:(id *)error;
- (BOOL)deleteAllRecordsWithClusterIdentifier:(id)identifier txnWitness:(id)witness atLeastOneRecordClusterRemoved:(BOOL *)removed deletedCount:(unint64_t *)count error:(id *)error;
- (BOOL)deleteAllRecordsWithName:(id)name algorithm:(unsigned int)algorithm bundleId:(id)id groupId:(id)groupId category:(unsigned int)category beforeDate:(id)date txnWitness:(id)witness atLeastOneRecordClusterRemoved:(BOOL *)self0 deletedCount:(unint64_t *)self1 error:(id *)self2;
- (BOOL)deleteFeedbackCountRecordsOlderThanDate:(id)date txnWitness:(id)witness;
- (BOOL)fixupDKEventsWithDatabase:(id)database fixup49995922Table:(id)table batchSize:(unsigned int)size shouldContinueBlock:(id)block createRecordWithStatement:(id)statement eventForRecord:(id)record;
- (BOOL)pruneOrphanedFeedbackCountRecordsWithLimit:(unint64_t)limit rowOffset:(unint64_t)offset deletedCount:(unint64_t *)count txnWitness:(id)witness isComplete:(BOOL *)complete;
- (BOOL)storeFeedback:(id)feedback database:(id)database client:(unsigned __int8)client lowercaseItemStrings:(BOOL)strings limit:(unsigned int)limit;
- (PPRecordStorageHelper)initWithName:(id)name table:(id)table clusterIdentifierColumn:(id)column maxRecords:(unsigned int)records duetStorage:(id)storage duetStream:(id)stream sourceStorage:(id)sourceStorage;
- (id)blobFromUUID:(id)d;
- (id)clusterIdentifiersExistingInDatabaseBeforeDate:(id)date client:(unsigned __int8)client date:(id)a5;
- (id)decayedFeedbackCountsForItemString:(id)string database:(id)database client:(unsigned __int8)client;
- (id)duetEventDeletionProcessingBlockWithDatabase:(id)database client:(unsigned __int8)client;
- (id)firstDonationSourceCountsForDatabase:(id)database client:(unsigned __int8)client shouldContinueBlock:(id)block;
- (id)lastDonationTimeForSourcesInDatabase:(id)database client:(unsigned __int8)client before:(id)before;
- (id)rowIdsForRecordsOlderThanDate:(id)date txnWitness:(id)witness;
- (id)rowIdsForRecordsSourcedFromBundleId:(id)id documentIds:(id)ids txnWitness:(id)witness;
- (id)rowIdsForRecordsSourcedFromBundleId:(id)id exactMatchGroupId:(id)groupId olderThanDate:(id)date txnWitness:(id)witness;
- (id)rowIdsForRecordsSourcedFromBundleId:(id)id groupIds:(id)ids txnWitness:(id)witness;
- (id)rowIdsForRecordsSourcedFromBundleId:(id)id txnWitness:(id)witness;
- (id)rowIdsForRecordsToDropMakingRoomForCount:(unsigned int)count txnWitness:(id)witness;
- (id)thirdPartyBundleIdsFromTodayInDatabase:(id)database client:(unsigned __int8)client;
- (id)uuidForStatement:(id)statement columnName:(const char *)name tableName:(const char *)tableName;
- (unsigned)distinctClusterCountInDatabase:(id)database client:(unsigned __int8)client;
- (void)_deleteRecordsWithRowIdsFromQuery:(void *)query txnWitness:(uint64_t)witness atLeastOneRecordClusterRemoved:(uint64_t)removed deletedCount:(void *)count bind:;
- (void)deleteAllRemoteRecordsMissingInDuetFromDatabase:(id)database client:(unsigned __int8)client shouldContinueBlock:(id)block;
- (void)deleteRecordsForRowIds:(id)ids txnWitness:(id)witness atLeastOneClusterRemoved:(BOOL *)removed deletedCount:(unint64_t *)count;
- (void)disableSyncForBundleIds:(id)ids txnWitness:(id)witness;
- (void)fixupDKEventsMetadataWithShouldContinueBlock:(id)block database:(id)database client:(unsigned __int8)client;
- (void)importDuetEventsWithLimit:(unsigned int)limit database:(id)database client:(unsigned __int8)client remoteEventsOnly:(BOOL)only isComplete:(BOOL *)complete shouldContinueBlock:(id)block eventImportBlock:(id)importBlock;
- (void)truncateRecordsByDroppingOldestMakingRoomForCount:(unsigned int)count txnWitness:(id)witness;
@end

@implementation PPRecordStorageHelper

- (id)firstDonationSourceCountsForDatabase:(id)database client:(unsigned __int8)client shouldContinueBlock:(id)block
{
  clientCopy = client;
  databaseCopy = database;
  blockCopy = block;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__5140;
  v23 = __Block_byref_object_dispose__5141;
  v24 = objc_opt_new();
  v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"SELECT src.bundle_id AS bundle_id, item.algorithm as algorithm, count(DISTINCT(item.%@)) as count FROM %@ as item INNER JOIN sources as src on src.id = item.source_id WHERE NOT item.is_remote AND item.rowid in (SELECT x.rowid FROM %@ as x INNER JOIN sources as srx ON srx.id = x.source_id WHERE item.%@ = x.%@ ORDER BY srx.seconds_from_1970 ASC LIMIT 1) GROUP BY src.bundle_id, item.algorithm", self->_clusterIdentifierColumn, self->_table, self->_table, self->_clusterIdentifierColumn, self->_clusterIdentifierColumn];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __89__PPRecordStorageHelper_firstDonationSourceCountsForDatabase_client_shouldContinueBlock___block_invoke;
  v15[3] = &unk_278973260;
  v11 = blockCopy;
  v17 = v11;
  v18 = &v19;
  v12 = v10;
  v16 = v12;
  [databaseCopy readTransactionWithClient:clientCopy block:v15];
  v13 = v20[5];

  _Block_object_dispose(&v19, 8);

  return v13;
}

void __89__PPRecordStorageHelper_firstDonationSourceCountsForDatabase_client_shouldContinueBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*(*(a1 + 40) + 16))())
  {
    v4 = [v3 db];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __89__PPRecordStorageHelper_firstDonationSourceCountsForDatabase_client_shouldContinueBlock___block_invoke_2;
    v11[3] = &unk_278973238;
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v12 = v6;
    v13 = v7;
    [v4 prepAndRunQuery:v5 onPrep:&__block_literal_global_390 onRow:v11 onError:0];

    v8 = v12;
  }

  else
  {
    v9 = pp_default_log_handle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v9, OS_LOG_TYPE_DEFAULT, "PPRecordStorageHelper: not executing first sources query due to deferral request.", buf, 2u);
    }

    v10 = *(*(a1 + 48) + 8);
    v8 = *(v10 + 40);
    *(v10 + 40) = 0;
  }
}

uint64_t __89__PPRecordStorageHelper_firstDonationSourceCountsForDatabase_client_shouldContinueBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*(*(a1 + 32) + 16))())
  {
    v4 = objc_opt_new();
    v5 = [v3 nonnullNSStringForColumnAlias:"bundle_id"];
    [v4 setBundleId:v5];
    [v4 setAlgorithm:{objc_msgSend(v3, "getInt64ForColumnAlias:", "algorithm")}];
    [v4 setCount:{objc_msgSend(v3, "getInt64ForColumnAlias:", "count")}];
    [*(*(*(a1 + 40) + 8) + 40) addObject:v4];
    v6 = *MEMORY[0x277D42690];
  }

  else
  {
    v7 = pp_default_log_handle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_23224A000, v7, OS_LOG_TYPE_DEFAULT, "PPRecordStorageHelper: interrupting first sources query to defer.", v11, 2u);
    }

    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = 0;

    v6 = *MEMORY[0x277D42698];
  }

  return v6;
}

- (id)lastDonationTimeForSourcesInDatabase:(id)database client:(unsigned __int8)client before:(id)before
{
  clientCopy = client;
  databaseCopy = database;
  beforeCopy = before;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__5140;
  v23 = __Block_byref_object_dispose__5141;
  v24 = objc_opt_new();
  v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"SELECT src.bundle_id AS bundle_id, MAX(src.seconds_from_1970) as date FROM sources AS src WHERE src.seconds_from_1970 < :date AND src.id IN (SELECT source_id FROM %@) GROUP BY src.bundle_id", self->_table];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __76__PPRecordStorageHelper_lastDonationTimeForSourcesInDatabase_client_before___block_invoke;
  v15[3] = &unk_278972E70;
  v11 = v10;
  v16 = v11;
  v12 = beforeCopy;
  v17 = v12;
  v18 = &v19;
  [databaseCopy readTransactionWithClient:clientCopy block:v15];
  v13 = v20[5];

  _Block_object_dispose(&v19, 8);

  return v13;
}

void __76__PPRecordStorageHelper_lastDonationTimeForSourcesInDatabase_client_before___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 db];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __76__PPRecordStorageHelper_lastDonationTimeForSourcesInDatabase_client_before___block_invoke_2;
  v6[3] = &unk_278978CF8;
  v4 = *(a1 + 32);
  v7 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __76__PPRecordStorageHelper_lastDonationTimeForSourcesInDatabase_client_before___block_invoke_3;
  v5[3] = &unk_278976450;
  v5[4] = *(a1 + 48);
  [v3 prepAndRunQuery:v4 onPrep:v6 onRow:v5 onError:0];
}

void __76__PPRecordStorageHelper_lastDonationTimeForSourcesInDatabase_client_before___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 timeIntervalSince1970];
  [v3 bindNamedParam:":date" toDouble:?];
}

uint64_t __76__PPRecordStorageHelper_lastDonationTimeForSourcesInDatabase_client_before___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 getNSStringForColumnAlias:"bundle_id"];
  [v3 getDoubleForColumnAlias:"date"];
  v6 = v5;

  if (v4)
  {
    v7 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSince1970:v6];
    [*(*(*(a1 + 32) + 8) + 40) setObject:v7 forKeyedSubscript:v4];
  }

  v8 = MEMORY[0x277D42690];

  return *v8;
}

- (id)thirdPartyBundleIdsFromTodayInDatabase:(id)database client:(unsigned __int8)client
{
  clientCopy = client;
  databaseCopy = database;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__5140;
  v18 = __Block_byref_object_dispose__5141;
  v19 = objc_opt_new();
  v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"SELECT src.bundle_id AS third_party_bundle FROM sources AS src WHERE src.seconds_from_1970 > :date AND src.bundle_id NOT LIKE com.apple%% AND src.id IN (SELECT source_id FROM %@)", self->_table];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __71__PPRecordStorageHelper_thirdPartyBundleIdsFromTodayInDatabase_client___block_invoke;
  v11[3] = &unk_278978BB8;
  v8 = v7;
  v12 = v8;
  v13 = &v14;
  [databaseCopy readTransactionWithClient:clientCopy block:v11];
  v9 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v9;
}

void __71__PPRecordStorageHelper_thirdPartyBundleIdsFromTodayInDatabase_client___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 db];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __71__PPRecordStorageHelper_thirdPartyBundleIdsFromTodayInDatabase_client___block_invoke_3;
  v5[3] = &unk_278976450;
  v4 = *(a1 + 32);
  v5[4] = *(a1 + 40);
  [v3 prepAndRunQuery:v4 onPrep:&__block_literal_global_377 onRow:v5 onError:0];
}

uint64_t __71__PPRecordStorageHelper_thirdPartyBundleIdsFromTodayInDatabase_client___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 getNSStringForColumnAlias:"third_party_bundle"];
  if (v3)
  {
    [*(*(*(a1 + 32) + 8) + 40) addObject:v3];
  }

  v4 = MEMORY[0x277D42690];

  return *v4;
}

void __71__PPRecordStorageHelper_thirdPartyBundleIdsFromTodayInDatabase_client___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = objc_opt_new();
  [v4 timeIntervalSince1970];
  [v2 bindNamedParam:":date" toDouble:v3 + -86400.0];
}

- (id)clusterIdentifiersExistingInDatabaseBeforeDate:(id)date client:(unsigned __int8)client date:(id)a5
{
  clientCopy = client;
  dateCopy = date;
  v9 = a5;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__5140;
  v23 = __Block_byref_object_dispose__5141;
  v24 = objc_opt_new();
  v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"SELECT DISTINCT tbl.%@ AS cluster_id FROM %@ AS tbl INNER JOIN sources AS src ON tbl.source_id = src.id WHERE src.seconds_from_1970 < :date", self->_clusterIdentifierColumn, self->_table];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __84__PPRecordStorageHelper_clusterIdentifiersExistingInDatabaseBeforeDate_client_date___block_invoke;
  v15[3] = &unk_278972E70;
  v11 = v10;
  v16 = v11;
  v12 = v9;
  v17 = v12;
  v18 = &v19;
  [dateCopy readTransactionWithClient:clientCopy block:v15];
  v13 = v20[5];

  _Block_object_dispose(&v19, 8);

  return v13;
}

void __84__PPRecordStorageHelper_clusterIdentifiersExistingInDatabaseBeforeDate_client_date___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 db];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __84__PPRecordStorageHelper_clusterIdentifiersExistingInDatabaseBeforeDate_client_date___block_invoke_2;
  v6[3] = &unk_278978CF8;
  v4 = *(a1 + 32);
  v7 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __84__PPRecordStorageHelper_clusterIdentifiersExistingInDatabaseBeforeDate_client_date___block_invoke_3;
  v5[3] = &unk_278976450;
  v5[4] = *(a1 + 48);
  [v3 prepAndRunQuery:v4 onPrep:v6 onRow:v5 onError:0];
}

void __84__PPRecordStorageHelper_clusterIdentifiersExistingInDatabaseBeforeDate_client_date___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 timeIntervalSince1970];
  [v3 bindNamedParam:":date" toDouble:?];
}

uint64_t __84__PPRecordStorageHelper_clusterIdentifiersExistingInDatabaseBeforeDate_client_date___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 getNSStringForColumnAlias:"cluster_id"];
  if (v3)
  {
    [*(*(*(a1 + 32) + 8) + 40) addObject:v3];
  }

  v4 = MEMORY[0x277D42690];

  return *v4;
}

- (unsigned)distinctClusterCountInDatabase:(id)database client:(unsigned __int8)client
{
  clientCopy = client;
  databaseCopy = database;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"SELECT COUNT(DISTINCT %@) AS cluster_count FROM %@", self->_clusterIdentifierColumn, self->_table];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __63__PPRecordStorageHelper_distinctClusterCountInDatabase_client___block_invoke;
  v10[3] = &unk_278978BB8;
  v8 = v7;
  v11 = v8;
  v12 = &v13;
  [databaseCopy readTransactionWithClient:clientCopy block:v10];
  LODWORD(clientCopy) = *(v14 + 6);

  _Block_object_dispose(&v13, 8);
  return clientCopy;
}

void __63__PPRecordStorageHelper_distinctClusterCountInDatabase_client___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 db];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __63__PPRecordStorageHelper_distinctClusterCountInDatabase_client___block_invoke_2;
  v5[3] = &unk_278976450;
  v4 = *(a1 + 32);
  v5[4] = *(a1 + 40);
  [v3 prepAndRunQuery:v4 onPrep:0 onRow:v5 onError:0];
}

- (BOOL)fixupDKEventsWithDatabase:(id)database fixup49995922Table:(id)table batchSize:(unsigned int)size shouldContinueBlock:(id)block createRecordWithStatement:(id)statement eventForRecord:(id)record
{
  databaseCopy = database;
  tableCopy = table;
  blockCopy = block;
  statementCopy = statement;
  recordCopy = record;
  if (self->_duetStorage && self->_duetStream)
  {
    if (size <= 1)
    {
      size = 1;
    }

    *buf = 0;
    v34 = buf;
    v35 = 0x2020000000;
    v36 = 1;
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __141__PPRecordStorageHelper_fixupDKEventsWithDatabase_fixup49995922Table_batchSize_shouldContinueBlock_createRecordWithStatement_eventForRecord___block_invoke;
    v25[3] = &unk_278973210;
    sizeCopy = size;
    v26 = tableCopy;
    selfCopy = self;
    v28 = statementCopy;
    v29 = recordCopy;
    v30 = blockCopy;
    v31 = buf;
    v19 = [databaseCopy writeTransactionWithClient:1 timeoutInSeconds:v25 block:5.0];
    if ((v19 & 1) == 0)
    {
      v20 = pp_default_log_handle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *v24 = 0;
        _os_log_error_impl(&dword_23224A000, v20, OS_LOG_TYPE_ERROR, "during fixup pass: SQL transaction timed out.", v24, 2u);
      }
    }

    v21 = v34[24] & v19;

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v22 = pp_default_log_handle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v22, OS_LOG_TYPE_DEFAULT, "fixupDKEventsWithBatchSize exiting early due to missing _duetStorage or _duetStream", buf, 2u);
    }

    v21 = 1;
  }

  return v21 & 1;
}

void __141__PPRecordStorageHelper_fixupDKEventsWithDatabase_fixup49995922Table_batchSize_shouldContinueBlock_createRecordWithStatement_eventForRecord___block_invoke(uint64_t a1, void *a2)
{
  v68 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 db];
  v5 = [v4 hasTableNamed:*(a1 + 32)];

  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:*(a1 + 80)];
    v7 = [v3 db];
    v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"SELECT * FROM %@ LIMIT :batchSize", *(a1 + 32)];
    v63[0] = MEMORY[0x277D85DD0];
    v63[1] = 3221225472;
    v63[2] = __141__PPRecordStorageHelper_fixupDKEventsWithDatabase_fixup49995922Table_batchSize_shouldContinueBlock_createRecordWithStatement_eventForRecord___block_invoke_2;
    v63[3] = &__block_descriptor_36_e29_v16__0___PASSqliteStatement_8l;
    v64 = *(a1 + 80);
    v61[0] = MEMORY[0x277D85DD0];
    v61[1] = 3221225472;
    v61[2] = __141__PPRecordStorageHelper_fixupDKEventsWithDatabase_fixup49995922Table_batchSize_shouldContinueBlock_createRecordWithStatement_eventForRecord___block_invoke_3;
    v61[3] = &unk_278978DB8;
    v9 = v6;
    v62 = v9;
    [v7 prepAndRunQuery:v8 onPrep:v63 onRow:v61 onError:0];

    if ([v9 count])
    {
      v10 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:*(a1 + 80)];
      v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"SELECT * FROM %@ AS rec_tbl INNER JOIN sources ON rec_tbl.source_id = sources.id WHERE rec_tbl.id IN _pas_nsarray(:batchRowIds)", *(*(a1 + 40) + 8)];
      v12 = [v3 db];
      v59[0] = MEMORY[0x277D85DD0];
      v59[1] = 3221225472;
      v59[2] = __141__PPRecordStorageHelper_fixupDKEventsWithDatabase_fixup49995922Table_batchSize_shouldContinueBlock_createRecordWithStatement_eventForRecord___block_invoke_4;
      v59[3] = &unk_278978CF8;
      v13 = v9;
      v60 = v13;
      v55[0] = MEMORY[0x277D85DD0];
      v55[1] = 3221225472;
      v55[2] = __141__PPRecordStorageHelper_fixupDKEventsWithDatabase_fixup49995922Table_batchSize_shouldContinueBlock_createRecordWithStatement_eventForRecord___block_invoke_5;
      v55[3] = &unk_278973180;
      v14 = *(a1 + 48);
      v55[4] = *(a1 + 40);
      v58 = v14;
      v44 = v3;
      v56 = v44;
      v15 = v10;
      v57 = v15;
      [v12 prepAndRunQuery:v11 onPrep:v59 onRow:v55 onError:0];

      v53[0] = MEMORY[0x277D85DD0];
      v53[1] = 3221225472;
      v53[2] = __141__PPRecordStorageHelper_fixupDKEventsWithDatabase_fixup49995922Table_batchSize_shouldContinueBlock_createRecordWithStatement_eventForRecord___block_invoke_344;
      v53[3] = &unk_2789731A8;
      v54 = *(a1 + 56);
      v16 = [v15 _pas_mappedArrayWithTransform:v53];
      v17 = [v16 _pas_mappedArrayWithTransform:&__block_literal_global_350];
      if ([*(*(a1 + 40) + 40) saveEvents:v17 stream:*(*(a1 + 40) + 48) maxRetries:-1 retryInterval:*(a1 + 64) shouldContinueBlock:5.0])
      {
        v42 = v16;
        v39 = v13;
        v40 = v11;

        v18 = [v15 _pas_mappedArrayWithTransform:&__block_literal_global_354];
        v19 = *(a1 + 40);
        v20 = *(v19 + 40);
        v21 = *(v19 + 48);
        v22 = MEMORY[0x277CFE1E0];
        v23 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v18];
        v24 = [v22 predicateForObjectsWithUUIDs:v23];
        v52 = 0;
        LOBYTE(v21) = [v20 deleteAllEventsInEventStream:v21 matchingPredicate:v24 error:&v52];
        v25 = v52;

        if ((v21 & 1) == 0)
        {
          v26 = pp_default_log_handle();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v67 = v25;
            _os_log_error_impl(&dword_23224A000, v26, OS_LOG_TYPE_ERROR, "during fixup pass: failed to delete old _DKEvent batch: %@", buf, 0xCu);
          }
        }

        v27 = a1;
        v41 = v9;

        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        obj = v42;
        v28 = [obj countByEnumeratingWithState:&v48 objects:v65 count:16];
        if (v28)
        {
          v29 = v28;
          v30 = *v49;
          do
          {
            for (i = 0; i != v29; ++i)
            {
              if (*v49 != v30)
              {
                objc_enumerationMutation(obj);
              }

              v32 = *(*(&v48 + 1) + 8 * i);
              v33 = [v44 db];
              v34 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"UPDATE %@ SET dk_event_id = :uuidBlob WHERE id = :rowId", *(v27[5] + 8), v39];
              v47[0] = MEMORY[0x277D85DD0];
              v47[1] = 3221225472;
              v47[2] = __141__PPRecordStorageHelper_fixupDKEventsWithDatabase_fixup49995922Table_batchSize_shouldContinueBlock_createRecordWithStatement_eventForRecord___block_invoke_359;
              v47[3] = &unk_2789743E8;
              v35 = v27[5];
              v47[4] = v32;
              v47[5] = v35;
              [v33 prepAndRunQuery:v34 onPrep:v47 onRow:0 onError:0];
            }

            v29 = [obj countByEnumeratingWithState:&v48 objects:v65 count:16];
          }

          while (v29);
        }

        v36 = [v44 db];
        v37 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"DELETE FROM %@ WHERE id IN _pas_nsarray(:batchRowIds)", v27[4]];
        v45[0] = MEMORY[0x277D85DD0];
        v45[1] = 3221225472;
        v45[2] = __141__PPRecordStorageHelper_fixupDKEventsWithDatabase_fixup49995922Table_batchSize_shouldContinueBlock_createRecordWithStatement_eventForRecord___block_invoke_2_363;
        v45[3] = &unk_278978CF8;
        v46 = v39;
        [v36 prepAndRunQuery:v37 onPrep:v45 onRow:0 onError:0];

        *(*(v27[9] + 8) + 24) = 0;
        v17 = v46;
        v9 = v41;
        v11 = v40;
        v16 = v42;
      }

      else
      {
        v38 = pp_default_log_handle();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_23224A000, v38, OS_LOG_TYPE_ERROR, "during fixup pass: failed to save replacement _DKEvent batch", buf, 2u);
        }
      }
    }

    else
    {
      v15 = [v3 db];
      v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"DROP TABLE %@", *(a1 + 32)];
      [v15 prepAndRunQuery:v11 onPrep:0 onRow:0 onError:0];
    }
  }
}

uint64_t __141__PPRecordStorageHelper_fixupDKEventsWithDatabase_fixup49995922Table_batchSize_shouldContinueBlock_createRecordWithStatement_eventForRecord___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v3, "getInt64ForColumnName:table:", "id", 0)}];
  [v5 addObject:v6];

  v7 = MEMORY[0x277D42690];
  objc_autoreleasePoolPop(v4);

  return *v7;
}

uint64_t __141__PPRecordStorageHelper_fixupDKEventsWithDatabase_fixup49995922Table_batchSize_shouldContinueBlock_createRecordWithStatement_eventForRecord___block_invoke_5(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = [v3 getInt64ForColumnName:"id" table:{objc_msgSend(*(*(a1 + 32) + 8), "UTF8String")}];
  v6 = (*(*(a1 + 56) + 16))();
  if (v6)
  {
    v7 = [v3 getNSDataForColumnName:"dk_event_id" table:{objc_msgSend(*(*(a1 + 32) + 8), "UTF8String")}];
    v8 = v7;
    if (v7)
    {
      if ([v7 length] == 16)
      {
        v9 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:{objc_msgSend(v8, "bytes")}];
LABEL_11:
        v12 = [[PPFixup49995922Tuple alloc] initWithRowid:v5 record:v6 dkUUID:v9];
        [*(a1 + 48) addObject:v12];

        goto LABEL_12;
      }

      v11 = pp_default_log_handle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v14 = *(*(a1 + 32) + 8);
        v15 = 138412546;
        v16 = v14;
        v17 = 2048;
        v18 = v5;
        _os_log_error_impl(&dword_23224A000, v11, OS_LOG_TYPE_ERROR, "during fixup pass: %@ row %lld has bad dk_event_id, ignoring", &v15, 0x16u);
      }
    }

    v9 = 0;
    goto LABEL_11;
  }

  v9 = pp_default_log_handle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v10 = *(*(a1 + 32) + 8);
    v15 = 138412546;
    v16 = v10;
    v17 = 2048;
    v18 = v5;
    _os_log_error_impl(&dword_23224A000, v9, OS_LOG_TYPE_ERROR, "during fixup pass: %@ row %lld contains bad source, ignoring", &v15, 0x16u);
  }

LABEL_12:

  objc_autoreleasePoolPop(v4);
  return *MEMORY[0x277D42690];
}

id __141__PPRecordStorageHelper_fixupDKEventsWithDatabase_fixup49995922Table_batchSize_shouldContinueBlock_createRecordWithStatement_eventForRecord___block_invoke_344(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D42648];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v4, "rowid")}];
  v7 = *(a1 + 32);
  v8 = [v4 record];

  v9 = (*(v7 + 16))(v7, v8);
  v10 = [v5 initWithFirst:v6 second:v9];

  return v10;
}

void __141__PPRecordStorageHelper_fixupDKEventsWithDatabase_fixup49995922Table_batchSize_shouldContinueBlock_createRecordWithStatement_eventForRecord___block_invoke_359(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 first];
  [v4 bindNamedParam:":rowId" toInt64:{objc_msgSend(v5, "longLongValue")}];

  v6 = *(a1 + 40);
  v9 = [*(a1 + 32) second];
  v7 = [v9 UUID];
  v8 = [v6 blobFromUUID:v7];
  [v4 bindNamedParam:":uuidBlob" toNSData:v8];
}

- (void)deleteRecordsForRowIds:(id)ids txnWitness:(id)witness atLeastOneClusterRemoved:(BOOL *)removed deletedCount:(unint64_t *)count
{
  v93 = *MEMORY[0x277D85DE8];
  idsCopy = ids;
  witnessCopy = witness;
  v61 = idsCopy;
  if ([idsCopy count])
  {
    v56 = a2;
    removedCopy = removed;
    if (removed)
    {
      v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"SELECT %@ AS clusterIdent FROM %@ WHERE id IN _pas_nsindexset(:rowIds)", self->_clusterIdentifierColumn, self->_table];
      v12 = objc_opt_new();
      v13 = [witnessCopy db];
      v74[0] = MEMORY[0x277D85DD0];
      v74[1] = 3221225472;
      v74[2] = __97__PPRecordStorageHelper_deleteRecordsForRowIds_txnWitness_atLeastOneClusterRemoved_deletedCount___block_invoke;
      v74[3] = &unk_278978CF8;
      v14 = idsCopy;
      v75 = v14;
      v72[0] = MEMORY[0x277D85DD0];
      v72[1] = 3221225472;
      v72[2] = __97__PPRecordStorageHelper_deleteRecordsForRowIds_txnWitness_atLeastOneClusterRemoved_deletedCount___block_invoke_2;
      v72[3] = &unk_278978DB8;
      v15 = v12;
      v73 = v15;
      [v13 prepAndRunQuery:v11 onPrep:v74 onRow:v72 onError:0];

      v16 = v73;
      v60 = v15;

      v17 = v14;
      v18 = witnessCopy;
    }

    else
    {
      v19 = idsCopy;
      v20 = witnessCopy;
      v60 = 0;
      if (!self)
      {
LABEL_26:

        v43 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"SELECT source_id, COUNT(source_id) FROM %@ WHERE id IN _pas_nsindexset(:rowIds) GROUP BY source_id", self->_table];
        v44 = [witnessCopy db];
        v70[0] = MEMORY[0x277D85DD0];
        v70[1] = 3221225472;
        v70[2] = __97__PPRecordStorageHelper_deleteRecordsForRowIds_txnWitness_atLeastOneClusterRemoved_deletedCount___block_invoke_3;
        v70[3] = &unk_278978CF8;
        v45 = v61;
        v71 = v45;
        v68[0] = MEMORY[0x277D85DD0];
        v68[1] = 3221225472;
        v68[2] = __97__PPRecordStorageHelper_deleteRecordsForRowIds_txnWitness_atLeastOneClusterRemoved_deletedCount___block_invoke_4;
        v68[3] = &unk_278974C38;
        v68[4] = self;
        v46 = witnessCopy;
        v69 = v46;
        [v44 prepAndRunQuery:v43 onPrep:v70 onRow:v68 onError:0];

        v47 = [v46 db];
        v48 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"DELETE FROM %@ WHERE id IN _pas_nsindexset(:rowIds)", self->_table];
        v66[0] = MEMORY[0x277D85DD0];
        v66[1] = 3221225472;
        v66[2] = __97__PPRecordStorageHelper_deleteRecordsForRowIds_txnWitness_atLeastOneClusterRemoved_deletedCount___block_invoke_5;
        v66[3] = &unk_278978CF8;
        v67 = v45;
        [v47 prepAndRunQuery:v48 onPrep:v66 onRow:0 onError:0];

        if (count)
        {
          v49 = [v46 db];
          v50 = v49;
          v51 = sqlite3_changes([v49 handle]);

          if (v51 < 0)
          {
            v52 = pp_default_log_handle();
            if (os_log_type_enabled(v52, OS_LOG_TYPE_FAULT))
            {
              *v84 = 67109120;
              *&v84[4] = v51;
              _os_log_fault_impl(&dword_23224A000, v52, OS_LOG_TYPE_FAULT, "Negative number of deletions found: %d", v84, 8u);
            }
          }

          *count = v51;
        }

        [(PPSourceStorage *)self->_sourceStorage pruneSourcesWithNoReferencesWithTxnWitness:v46];
        if (removedCopy)
        {
          if (!v60)
          {
            currentHandler = [MEMORY[0x277CCA890] currentHandler];
            [currentHandler handleFailureInMethod:v56 object:self file:@"PPRecordStorageHelper.m" lineNumber:1423 description:{@"Invalid parameter not satisfying: %@", @"clusterIdentSet"}];
          }

          *removedCopy = 0;
          v53 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"SELECT touched.value AS touchedId, remaining.%@ as remainingId FROM _pas_nsset(:clusterIdentSet) AS touched LEFT JOIN %@ AS remaining ON touchedId = remainingId WHERE remainingId IS NULL", self->_clusterIdentifierColumn, self->_table];
          v54 = [v46 db];
          v64[0] = MEMORY[0x277D85DD0];
          v64[1] = 3221225472;
          v64[2] = __97__PPRecordStorageHelper_deleteRecordsForRowIds_txnWitness_atLeastOneClusterRemoved_deletedCount___block_invoke_301;
          v64[3] = &unk_278978CF8;
          v65 = v60;
          v63[0] = MEMORY[0x277D85DD0];
          v63[1] = 3221225472;
          v63[2] = __97__PPRecordStorageHelper_deleteRecordsForRowIds_txnWitness_atLeastOneClusterRemoved_deletedCount___block_invoke_2_303;
          v63[3] = &__block_descriptor_40_e49___PASDBIterAction__B_16__0___PASSqliteStatement_8l;
          v63[4] = removedCopy;
          [v54 prepAndRunQuery:v53 onPrep:v64 onRow:v63 onError:0];
        }

        goto LABEL_37;
      }
    }

    if (self->_duetStream && [v61 count])
    {
      v57 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"SELECT dk_event_id FROM %@ WHERE is_remote = 0 AND dk_event_id IS NOT NULL AND id IN _pas_nsindexset(:rowIds)", self->_table];
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v92 = 0;
      v21 = [witnessCopy db];
      v82[0] = MEMORY[0x277D85DD0];
      v82[1] = 3221225472;
      v82[2] = __61__PPRecordStorageHelper__deleteDKEventsForRowIds_txnWitness___block_invoke;
      v82[3] = &unk_278978CF8;
      v22 = v61;
      v83 = v22;
      v81[0] = MEMORY[0x277D85DD0];
      v81[1] = 3221225472;
      v81[2] = __61__PPRecordStorageHelper__deleteDKEventsForRowIds_txnWitness___block_invoke_2;
      v81[3] = &unk_278976450;
      v81[4] = buf;
      [v21 prepAndRunQuery:v57 onPrep:v82 onRow:v81 onError:0];

      LOBYTE(v21) = *(*&buf[8] + 24);
      _Block_object_dispose(buf, 8);
      if (v21)
      {
        v79[0] = MEMORY[0x277D85DD0];
        v79[1] = 3221225472;
        v79[2] = __61__PPRecordStorageHelper__deleteDKEventsForRowIds_txnWitness___block_invoke_3;
        v79[3] = &unk_278978CF8;
        v80 = v22;
        v23 = [PPSQLDatabase createTempTableContainingRowsFromQuery:v57 descriptiveTableName:@"del_dk_evt" txnWitness:witnessCopy bind:v79];

        do
        {
          v24 = objc_opt_new();
          v25 = objc_opt_new();
          v26 = [witnessCopy db];
          v27 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"SELECT rowid, dk_event_id FROM %@ LIMIT :batchSize", v23];
          *v84 = MEMORY[0x277D85DD0];
          v85 = 3221225472;
          v86 = __61__PPRecordStorageHelper__deleteDKEventsForRowIds_txnWitness___block_invoke_5;
          v87 = &unk_278977B98;
          v28 = v24;
          v88 = v28;
          v29 = v23;
          v89 = v29;
          v30 = v25;
          v90 = v30;
          [v26 prepAndRunQuery:v27 onPrep:&__block_literal_global_325_5203 onRow:v84 onError:0];

          v31 = [v28 count];
          if ([v30 count])
          {
            v32 = pp_default_log_handle();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
            {
              v41 = [v30 count];
              *buf = 134217984;
              *&buf[4] = v41;
              _os_log_debug_impl(&dword_23224A000, v32, OS_LOG_TYPE_DEBUG, "Propagating deletion of %tu _DKEvents", buf, 0xCu);
            }

            v33 = [MEMORY[0x277CFE260] predicateForObjectsWithUUIDs:v30];
            duetStorage = self->_duetStorage;
            duetStream = self->_duetStream;
            v78 = 0;
            v36 = [(PPDKStorage *)duetStorage deleteAllEventsInEventStream:duetStream matchingPredicate:v33 error:&v78];
            v37 = v78;
            if (!v36)
            {
              v38 = pp_default_log_handle();
              if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
              {
                v42 = [v30 count];
                *buf = 134218242;
                *&buf[4] = v42;
                *&buf[12] = 2112;
                *&buf[14] = v37;
                _os_log_error_impl(&dword_23224A000, v38, OS_LOG_TYPE_ERROR, "Failed to delete %tu _DKEvents: %@", buf, 0x16u);
              }
            }
          }

          if ([v28 count])
          {
            v39 = [witnessCopy db];
            v40 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"DELETE FROM %@ WHERE rowid IN _pas_nsarray(:batchRowIds)", v29];
            v76[0] = MEMORY[0x277D85DD0];
            v76[1] = 3221225472;
            v76[2] = __61__PPRecordStorageHelper__deleteDKEventsForRowIds_txnWitness___block_invoke_331;
            v76[3] = &unk_278978CF8;
            v77 = v28;
            [v39 prepAndRunQuery:v40 onPrep:v76 onRow:0 onError:0];
          }
        }

        while (v31 > 0xC7);
        [PPSQLDatabase dropTableWithName:v29 txnWitness:witnessCopy];
      }
    }

    goto LABEL_26;
  }

  if (removed)
  {
    *removed = 0;
  }

  if (count)
  {
    *count = 0;
  }

LABEL_37:
}

uint64_t __97__PPRecordStorageHelper_deleteRecordsForRowIds_txnWitness_atLeastOneClusterRemoved_deletedCount___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 getNSStringForColumnAlias:"clusterIdent"];
  if (v3)
  {
    [*(a1 + 32) addObject:v3];
  }

  v4 = MEMORY[0x277D42690];

  return *v4;
}

uint64_t __97__PPRecordStorageHelper_deleteRecordsForRowIds_txnWitness_atLeastOneClusterRemoved_deletedCount___block_invoke_4(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = a2;
  v5 = [v2 db];
  v6 = v4;
  v7 = v5;
  if (v3)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = [v6 getInt64ForColumn:0];
    v10 = [v6 getInt64ForColumn:1];
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v24 = 0x7FFFFFFFFFFFFFFFLL;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __68__PPRecordStorageHelper__processRowForDeletionWithStatement_handle___block_invoke;
    v20[3] = &__block_descriptor_40_e29_v16__0___PASSqliteStatement_8l;
    v20[4] = v9;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __68__PPRecordStorageHelper__processRowForDeletionWithStatement_handle___block_invoke_2;
    v19[3] = &unk_278976450;
    v19[4] = &v21;
    [v7 prepAndRunQuery:@"SELECT ref_count FROM sources WHERE id = :rowId" onPrep:v20 onRow:v19 onError:0];
    v11 = v22[3];
    if (v11 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v12 = pp_default_log_handle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v17 = *(v3 + 8);
        *buf = 134218242;
        *&buf[4] = v9;
        *&buf[12] = 2112;
        *&buf[14] = v17;
        _os_log_error_impl(&dword_23224A000, v12, OS_LOG_TYPE_ERROR, "Can't find source with id %lld during %@ record deletion", buf, 0x16u);
      }
    }

    else
    {
      v13 = v11 - v10;
      if (v11 - v10 < 0)
      {
        v14 = pp_default_log_handle();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v18 = *(v3 + 8);
          *buf = 138412546;
          *&buf[4] = v18;
          *&buf[12] = 2048;
          *&buf[14] = v9;
          _os_log_error_impl(&dword_23224A000, v14, OS_LOG_TYPE_ERROR, "Record deletion from %@ is leading to negative ref_count for source with id %lld", buf, 0x16u);
        }
      }

      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __68__PPRecordStorageHelper__processRowForDeletionWithStatement_handle___block_invoke_312;
      v26 = &__block_descriptor_48_e29_v16__0___PASSqliteStatement_8l;
      v27 = v13;
      v28 = v9;
      [v7 prepAndRunQuery:@"UPDATE sources SET ref_count = :refCount WHERE id = :rowId" onPrep:buf onRow:0 onError:0];
    }

    _Block_object_dispose(&v21, 8);
    objc_autoreleasePoolPop(v8);
    v15 = *MEMORY[0x277D42690];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

void __68__PPRecordStorageHelper__processRowForDeletionWithStatement_handle___block_invoke_312(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 bindNamedParam:":refCount" toInt64:v3];
  [v4 bindNamedParam:":rowId" toInt64:*(a1 + 40)];
}

uint64_t __61__PPRecordStorageHelper__deleteDKEventsForRowIds_txnWitness___block_invoke_5(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = MEMORY[0x277CCABB0];
  v5 = a2;
  v6 = [v4 numberWithLongLong:{objc_msgSend(v5, "getInt64ForColumn:", 0)}];
  [v3 addObject:v6];

  v7 = [v5 getNSDataForColumnAlias:"dk_event_id"];

  if ([v7 length] != 16)
  {
    v9 = pp_default_log_handle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 40);
      v12 = 138412546;
      v13 = v11;
      v14 = 2048;
      v15 = [v7 length];
      _os_log_error_impl(&dword_23224A000, v9, OS_LOG_TYPE_ERROR, "column 'dk_event_id' in table '%@' has blob of unexpected length %tu", &v12, 0x16u);
    }

    goto LABEL_6;
  }

  v8 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:{objc_msgSend(v7, "bytes")}];
  if (v8)
  {
    v9 = v8;
    [*(a1 + 48) addObject:v8];
LABEL_6:
  }

  return *MEMORY[0x277D42690];
}

- (id)rowIdsForRecordsOlderThanDate:(id)date txnWitness:(id)witness
{
  dateCopy = date;
  witnessCopy = witness;
  v8 = objc_opt_new();
  v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"SELECT rt.id FROM %@ AS rt INNER JOIN sources AS src on rt.source_id = src.id WHERE src.seconds_from_1970 < :timestamp", self->_table];
  v10 = objc_autoreleasePoolPush();
  uTF8String = [(NSString *)self->_table UTF8String];
  v12 = [witnessCopy db];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __66__PPRecordStorageHelper_rowIdsForRecordsOlderThanDate_txnWitness___block_invoke;
  v19[3] = &unk_278978CF8;
  v13 = dateCopy;
  v20 = v13;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __66__PPRecordStorageHelper_rowIdsForRecordsOlderThanDate_txnWitness___block_invoke_2;
  v16[3] = &unk_278972D80;
  v14 = v8;
  v17 = v14;
  v18 = uTF8String;
  [v12 prepAndRunQuery:v9 onPrep:v19 onRow:v16 onError:0];

  objc_autoreleasePoolPop(v10);

  return v14;
}

void __66__PPRecordStorageHelper_rowIdsForRecordsOlderThanDate_txnWitness___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 timeIntervalSince1970];
  [v3 bindNamedParam:":timestamp" toDouble:?];
}

- (id)rowIdsForRecordsSourcedFromBundleId:(id)id exactMatchGroupId:(id)groupId olderThanDate:(id)date txnWitness:(id)witness
{
  idCopy = id;
  groupIdCopy = groupId;
  dateCopy = date;
  witnessCopy = witness;
  v14 = objc_opt_new();
  v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"SELECT rt.id FROM %@ AS rt INNER JOIN sources AS src ON rt.source_id = src.id WHERE src.seconds_from_1970 < :timestamp ", self->_table];
  if (([idCopy isEqualToString:@"PortraitBundleIdWildCardMatchingAll"] & 1) == 0)
  {
    v16 = objc_autoreleasePoolPush();
    v17 = [v15 stringByAppendingString:@"AND src.bundle_id = :bundleId "];

    objc_autoreleasePoolPop(v16);
    v15 = v17;
  }

  if (groupIdCopy)
  {
    v18 = objc_autoreleasePoolPush();
    v19 = [v15 stringByAppendingString:@"AND src.group_id = :groupId"];

    objc_autoreleasePoolPop(v18);
    v15 = v19;
  }

  v20 = objc_autoreleasePoolPush();
  uTF8String = [(NSString *)self->_table UTF8String];
  v22 = [witnessCopy db];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __104__PPRecordStorageHelper_rowIdsForRecordsSourcedFromBundleId_exactMatchGroupId_olderThanDate_txnWitness___block_invoke;
  v31[3] = &unk_278975708;
  v23 = idCopy;
  v32 = v23;
  v24 = dateCopy;
  v33 = v24;
  v25 = groupIdCopy;
  v34 = v25;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __104__PPRecordStorageHelper_rowIdsForRecordsSourcedFromBundleId_exactMatchGroupId_olderThanDate_txnWitness___block_invoke_2;
  v28[3] = &unk_278972D80;
  v26 = v14;
  v29 = v26;
  v30 = uTF8String;
  [v22 prepAndRunQuery:v15 onPrep:v31 onRow:v28 onError:0];

  objc_autoreleasePoolPop(v20);

  return v26;
}

void __104__PPRecordStorageHelper_rowIdsForRecordsSourcedFromBundleId_exactMatchGroupId_olderThanDate_txnWitness___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) isEqualToString:@"PortraitBundleIdWildCardMatchingAll"] & 1) == 0)
  {
    [v3 bindNamedParam:":bundleId" toNonnullNSString:*(a1 + 32)];
  }

  [*(a1 + 40) timeIntervalSince1970];
  [v3 bindNamedParam:":timestamp" toDouble:?];
  if (*(a1 + 48))
  {
    [v3 bindNamedParam:":groupId" toNonnullNSString:?];
  }
}

- (id)rowIdsForRecordsSourcedFromBundleId:(id)id txnWitness:(id)witness
{
  idCopy = id;
  witnessCopy = witness;
  v8 = objc_opt_new();
  v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"SELECT rt.id FROM %@ AS rt INNER JOIN sources AS src ON rt.source_id = src.id WHERE src.bundle_id = :bundleId", self->_table];
  v10 = objc_autoreleasePoolPush();
  uTF8String = [(NSString *)self->_table UTF8String];
  v12 = [witnessCopy db];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __72__PPRecordStorageHelper_rowIdsForRecordsSourcedFromBundleId_txnWitness___block_invoke;
  v19[3] = &unk_278978CF8;
  v13 = idCopy;
  v20 = v13;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __72__PPRecordStorageHelper_rowIdsForRecordsSourcedFromBundleId_txnWitness___block_invoke_2;
  v16[3] = &unk_278972D80;
  v14 = v8;
  v17 = v14;
  v18 = uTF8String;
  [v12 prepAndRunQuery:v9 onPrep:v19 onRow:v16 onError:0];

  objc_autoreleasePoolPop(v10);

  return v14;
}

- (id)rowIdsForRecordsSourcedFromBundleId:(id)id groupIds:(id)ids txnWitness:(id)witness
{
  idCopy = id;
  idsCopy = ids;
  witnessCopy = witness;
  v11 = objc_opt_new();
  v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"SELECT rt.id FROM %@ AS rt INNER JOIN sources AS src ON rt.source_id = src.id WHERE src.bundle_id = :bundleId AND (src.group_id = :domain OR (src.group_id >= :domain || '.' AND src.group_id < :domain || '/'))", self->_table];
  _pas_stringBackedByUTF8CString = [v12 _pas_stringBackedByUTF8CString];

  v14 = [witnessCopy db];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __81__PPRecordStorageHelper_rowIdsForRecordsSourcedFromBundleId_groupIds_txnWitness___block_invoke;
  v23[3] = &unk_278978A58;
  v23[4] = self;
  v24 = idsCopy;
  v25 = witnessCopy;
  v26 = _pas_stringBackedByUTF8CString;
  v27 = idCopy;
  v15 = v11;
  v28 = v15;
  v16 = idCopy;
  v17 = _pas_stringBackedByUTF8CString;
  v18 = witnessCopy;
  v19 = idsCopy;
  [v14 readTransaction:v23];

  v20 = v28;
  v21 = v15;

  return v15;
}

void __81__PPRecordStorageHelper_rowIdsForRecordsSourcedFromBundleId_groupIds_txnWitness___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 8) UTF8String];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = *(a1 + 40);
  v3 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v18;
    do
    {
      v6 = 0;
      do
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v17 + 1) + 8 * v6);
        v8 = [*(a1 + 48) db];
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __81__PPRecordStorageHelper_rowIdsForRecordsSourcedFromBundleId_groupIds_txnWitness___block_invoke_2;
        v14[3] = &unk_2789743E8;
        v9 = *(a1 + 56);
        v15 = *(a1 + 64);
        v16 = v7;
        v11[0] = MEMORY[0x277D85DD0];
        v11[1] = 3221225472;
        v11[2] = __81__PPRecordStorageHelper_rowIdsForRecordsSourcedFromBundleId_groupIds_txnWitness___block_invoke_3;
        v11[3] = &unk_278972D80;
        v12 = *(a1 + 72);
        v13 = v2;
        [v8 prepAndRunQuery:v9 onPrep:v14 onRow:v11 onError:0];

        ++v6;
      }

      while (v4 != v6);
      v4 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v4);
  }
}

void __81__PPRecordStorageHelper_rowIdsForRecordsSourcedFromBundleId_groupIds_txnWitness___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 bindNamedParam:":bundleId" toNonnullNSString:v3];
  [v4 bindNamedParam:":domain" toNonnullNSString:*(a1 + 40)];
}

- (id)rowIdsForRecordsSourcedFromBundleId:(id)id documentIds:(id)ids txnWitness:(id)witness
{
  idCopy = id;
  idsCopy = ids;
  witnessCopy = witness;
  v11 = objc_opt_new();
  v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"SELECT rt.id FROM %@ AS rt INNER JOIN sources AS src ON rt.source_id = src.id WHERE src.bundle_id = :bundleId AND src.doc_id IN _pas_nsarray(:documentIds)", self->_table];
  v13 = objc_autoreleasePoolPush();
  uTF8String = [(NSString *)self->_table UTF8String];
  v15 = [witnessCopy db];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __84__PPRecordStorageHelper_rowIdsForRecordsSourcedFromBundleId_documentIds_txnWitness___block_invoke;
  v23[3] = &unk_2789743E8;
  v16 = idCopy;
  v24 = v16;
  v17 = idsCopy;
  v25 = v17;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __84__PPRecordStorageHelper_rowIdsForRecordsSourcedFromBundleId_documentIds_txnWitness___block_invoke_2;
  v20[3] = &unk_278972D80;
  v18 = v11;
  v21 = v18;
  v22 = uTF8String;
  [v15 prepAndRunQuery:v12 onPrep:v23 onRow:v20 onError:0];

  objc_autoreleasePoolPop(v13);

  return v18;
}

void __84__PPRecordStorageHelper_rowIdsForRecordsSourcedFromBundleId_documentIds_txnWitness___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 bindNamedParam:":bundleId" toNonnullNSString:v3];
  [v4 bindNamedParam:":documentIds" toNSArray:*(a1 + 40)];
}

- (BOOL)pruneOrphanedFeedbackCountRecordsWithLimit:(unint64_t)limit rowOffset:(unint64_t)offset deletedCount:(unint64_t *)count txnWitness:(id)witness isComplete:(BOOL *)complete
{
  v12 = MEMORY[0x277CCACA8];
  witnessCopy = witness;
  v14 = [[v12 alloc] initWithFormat:@"DELETE FROM %@ AS fb WHERE fb.rowid IN (SELECT rowid FROM %@                    ORDER BY rowid                    LIMIT :limit                    OFFSET :offset) AND NOT EXISTS (SELECT 1 FROM %@ AS rt                 WHERE rt.%@ = fb.item_string)", self->_feedbackTable, self->_feedbackTable, self->_table, self->_clusterIdentifierColumn];
  v15 = [witnessCopy db];
  v16 = [v15 numberOfRowsInTable:self->_feedbackTable];

  v17 = [witnessCopy db];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __113__PPRecordStorageHelper_pruneOrphanedFeedbackCountRecordsWithLimit_rowOffset_deletedCount_txnWitness_isComplete___block_invoke;
  v21[3] = &__block_descriptor_48_e29_v16__0___PASSqliteStatement_8l;
  v21[4] = limit;
  v21[5] = offset;
  v18 = [v17 prepAndRunQuery:v14 onPrep:v21 onRow:0 onError:0];

  v19 = [witnessCopy db];

  *count = sqlite3_changes([v19 handle]);
  if (offset + limit >= v16)
  {
    *complete = 1;
  }

  return v18;
}

void __113__PPRecordStorageHelper_pruneOrphanedFeedbackCountRecordsWithLimit_rowOffset_deletedCount_txnWitness_isComplete___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 bindNamedParam:":limit" toInteger:v3];
  [v4 bindNamedParam:":offset" toInteger:*(a1 + 40)];
}

- (BOOL)deleteFeedbackCountRecordsOlderThanDate:(id)date txnWitness:(id)witness
{
  dateCopy = date;
  v7 = [witness db];
  v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"DELETE FROM %@ WHERE last_update_seconds_from_1970 < :secondsFrom1970", self->_feedbackTable];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __76__PPRecordStorageHelper_deleteFeedbackCountRecordsOlderThanDate_txnWitness___block_invoke;
  v12[3] = &unk_278978CF8;
  v13 = dateCopy;
  v9 = dateCopy;
  v10 = [v7 prepAndRunQuery:v8 onPrep:v12 onRow:0 onError:0];

  return v10;
}

void __76__PPRecordStorageHelper_deleteFeedbackCountRecordsOlderThanDate_txnWitness___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 timeIntervalSince1970];
  [v3 bindNamedParam:":secondsFrom1970" toDouble:?];
}

- (void)deleteAllRemoteRecordsMissingInDuetFromDatabase:(id)database client:(unsigned __int8)client shouldContinueBlock:(id)block
{
  clientCopy = client;
  v46 = *MEMORY[0x277D85DE8];
  databaseCopy = database;
  blockCopy = block;
  if (self->_duetStream)
  {
    v10 = pp_default_log_handle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      table = self->_table;
      LODWORD(buf) = 138412290;
      *(&buf + 4) = table;
      _os_log_debug_impl(&dword_23224A000, v10, OS_LOG_TYPE_DEBUG, "PPRecordStorageHelper(%@): purging all orphaned remote records from local storage", &buf, 0xCu);
    }

    v33 = 0;
    v34 = &v33;
    v35 = 0x2020000000;
    v36 = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __100__PPRecordStorageHelper_deleteAllRemoteRecordsMissingInDuetFromDatabase_client_shouldContinueBlock___block_invoke;
    aBlock[3] = &unk_278973078;
    aBlock[4] = self;
    v11 = databaseCopy;
    v29 = v11;
    v32 = clientCopy;
    v12 = blockCopy;
    v30 = v12;
    v31 = &v33;
    v13 = _Block_copy(aBlock);
    *&buf = 0;
    *(&buf + 1) = &buf;
    v42 = 0x3032000000;
    v43 = __Block_byref_object_copy__5140;
    v44 = __Block_byref_object_dispose__5141;
    v45 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{-[PPDKStorage readBatchSize](self->_duetStorage, "readBatchSize")}];
    v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"SELECT dk_event_id FROM %@ WHERE dk_event_id IS NOT NULL AND is_remote", self->_table];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __100__PPRecordStorageHelper_deleteAllRemoteRecordsMissingInDuetFromDatabase_client_shouldContinueBlock___block_invoke_2;
    v22[3] = &unk_2789730C8;
    v15 = v14;
    v23 = v15;
    selfCopy = self;
    p_buf = &buf;
    v16 = v13;
    v25 = v16;
    v17 = v12;
    v26 = v17;
    [v11 readTransactionWithClient:clientCopy block:v22];
    if ([*(*(&buf + 1) + 40) count] && v17[2](v17))
    {
      (*(v16 + 2))(v16, *(*(&buf + 1) + 40));
    }

    v18 = pp_default_log_handle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v20 = self->_table;
      v21 = v34[3];
      *v37 = 138412546;
      v38 = v20;
      v39 = 2048;
      v40 = v21;
      _os_log_debug_impl(&dword_23224A000, v18, OS_LOG_TYPE_DEBUG, "PPRecordStorageHelper(%@): removed %tu orphaned remote records from local storage", v37, 0x16u);
    }

    _Block_object_dispose(&buf, 8);
    _Block_object_dispose(&v33, 8);
  }
}

void __100__PPRecordStorageHelper_deleteAllRemoteRecordsMissingInDuetFromDatabase_client_shouldContinueBlock___block_invoke(uint64_t a1, void *a2)
{
  v30[1] = *MEMORY[0x277D85DE8];
  v20 = 0;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v18 = *(a1 + 64);
  v5 = *(a1 + 48);
  v6 = a2;
  v7 = v4;
  v8 = v5;
  if (v3)
  {
    v24 = 0;
    v9 = *(v3 + 40);
    v10 = [MEMORY[0x277CFE260] predicateForObjectsWithUUIDs:v6];
    v30[0] = *(v3 + 48);
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:1];
    v12 = [*(v3 + 40) readBatchSize];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __120__PPRecordStorageHelper__filterAndRemoveMissingRemoteRecordsFromBatch_database_client_deletedCount_shouldContinueBlock___block_invoke;
    v21[3] = &unk_2789730F0;
    v19 = v8;
    v13 = v8;
    v23 = v13;
    v14 = v6;
    v22 = v14;
    LOBYTE(v12) = [v9 iterEventBatchesMatchingPredicate:v10 streams:v11 sortDescriptors:MEMORY[0x277CBEBF8] batchSize:v12 readMetaData:0 remoteOnly:1 error:&v24 block:v21];

    if (v12)
    {
      if (![v14 count] || !v13[2](v13))
      {
        goto LABEL_9;
      }

      v15 = [v14 allObjects];
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __120__PPRecordStorageHelper__filterAndRemoveMissingRemoteRecordsFromBatch_database_client_deletedCount_shouldContinueBlock___block_invoke_251;
      v26 = &unk_278973118;
      v28 = v15;
      v29 = &v20;
      v27 = v3;
      v16 = v15;
      [v7 writeTransactionWithClient:v18 block:buf];
    }

    else
    {
      v16 = pp_default_log_handle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = *(v3 + 8);
        *buf = 138412546;
        *&buf[4] = v17;
        *&buf[12] = 2112;
        *&buf[14] = v24;
        _os_log_error_impl(&dword_23224A000, v16, OS_LOG_TYPE_ERROR, "PPRecordStorageHelper(%@): error iterating the duet stream: %@", buf, 0x16u);
      }
    }

LABEL_9:
    v8 = v19;
  }

  *(*(*(a1 + 56) + 8) + 24) += v20;
  [v6 removeAllObjects];
}

void __100__PPRecordStorageHelper_deleteAllRemoteRecordsMissingInDuetFromDatabase_client_shouldContinueBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 db];
  v4 = *(a1 + 32);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __100__PPRecordStorageHelper_deleteAllRemoteRecordsMissingInDuetFromDatabase_client_shouldContinueBlock___block_invoke_3;
  v9[3] = &unk_2789730A0;
  v5 = *(a1 + 64);
  v8 = *(a1 + 40);
  v6 = *(&v8 + 1);
  *&v7 = *(a1 + 56);
  *(&v7 + 1) = v5;
  v10 = v8;
  v11 = v7;
  [v3 prepAndRunQuery:v4 onPrep:0 onRow:v9 onError:0];
}

uint64_t __100__PPRecordStorageHelper_deleteAllRemoteRecordsMissingInDuetFromDatabase_client_shouldContinueBlock___block_invoke_3(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = v3[1];
  v5 = a2;
  v6 = [v3 uuidForStatement:v5 columnName:"dk_event_id" tableName:{objc_msgSend(v4, "UTF8String")}];

  if (v6)
  {
    [*(*(a1[7] + 8) + 40) addObject:v6];
  }

  v7 = [*(*(a1[7] + 8) + 40) count];
  if (v7 >= [*(a1[4] + 40) readBatchSize])
  {
    (*(a1[5] + 16))();
  }

  v8 = (*(a1[6] + 16))();
  v9 = MEMORY[0x277D42690];
  v10 = MEMORY[0x277D42698];

  if (v8)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  return *v11;
}

void __120__PPRecordStorageHelper__filterAndRemoveMissingRemoteRecordsFromBatch_database_client_deletedCount_shouldContinueBlock___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if ((*(*(a1 + 40) + 16))())
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        v10 = 0;
        do
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(a1 + 32);
          v12 = [*(*(&v13 + 1) + 8 * v10) UUID];
          [v11 removeObject:v12];

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }

  else
  {
    *a3 = 1;
  }
}

void __120__PPRecordStorageHelper__filterAndRemoveMissingRemoteRecordsFromBatch_database_client_deletedCount_shouldContinueBlock___block_invoke_251(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a2;
  v5 = [[v3 alloc] initWithFormat:@"SELECT id FROM %@ WHERE dk_event_id IN _pas_nsarray(:batch)", *(*(a1 + 32) + 8)];
  v6 = *(a1 + 48);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __120__PPRecordStorageHelper__filterAndRemoveMissingRemoteRecordsFromBatch_database_client_deletedCount_shouldContinueBlock___block_invoke_2;
  v10[3] = &unk_2789743E8;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 32);
  v11 = v8;
  v12 = v9;
  [(PPRecordStorageHelper *)v7 _deleteRecordsWithRowIdsFromQuery:v5 txnWitness:v4 atLeastOneRecordClusterRemoved:0 deletedCount:v6 bind:v10];
}

void __120__PPRecordStorageHelper__filterAndRemoveMissingRemoteRecordsFromBatch_database_client_deletedCount_shouldContinueBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __120__PPRecordStorageHelper__filterAndRemoveMissingRemoteRecordsFromBatch_database_client_deletedCount_shouldContinueBlock___block_invoke_3;
  v5[3] = &unk_278972DF8;
  v2 = *(a1 + 32);
  v5[4] = *(a1 + 40);
  v3 = a2;
  v4 = [v2 _pas_proxyArrayWithMapping:v5];
  [v3 bindNamedParam:":batch" toNSArray:v4];
}

- (void)_deleteRecordsWithRowIdsFromQuery:(void *)query txnWitness:(uint64_t)witness atLeastOneRecordClusterRemoved:(uint64_t)removed deletedCount:(void *)count bind:
{
  if (self)
  {
    countCopy = count;
    queryCopy = query;
    v13 = a2;
    v14 = objc_opt_new();
    v15 = [queryCopy db];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __119__PPRecordStorageHelper__deleteRecordsWithRowIdsFromQuery_txnWitness_atLeastOneRecordClusterRemoved_deletedCount_bind___block_invoke;
    v17[3] = &unk_278978DB8;
    v18 = v14;
    v16 = v14;
    [v15 prepAndRunQuery:v13 onPrep:countCopy onRow:v17 onError:0];

    [self deleteRecordsForRowIds:v16 txnWitness:queryCopy atLeastOneClusterRemoved:witness deletedCount:removed];
  }
}

- (BOOL)deleteAllRecordsSourcedFromBundleId:(id)id groupId:(id)groupId olderThanDate:(id)date algorithm:(unsigned int)algorithm txnWitness:(id)witness atLeastOneRecordClusterRemoved:(BOOL *)removed deletedCount:(unint64_t *)count error:(id *)self0
{
  idCopy = id;
  groupIdCopy = groupId;
  dateCopy = date;
  witnessCopy = witness;
  v19 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"SELECT rt.id FROM %@ AS rt INNER JOIN sources AS src ON rt.source_id = src.id WHERE rt.algorithm = :algorithm AND src.seconds_from_1970 < :timestamp ", self->_table];
  if (([idCopy isEqualToString:@"PortraitBundleIdWildCardMatchingAll"] & 1) == 0)
  {
    v20 = objc_autoreleasePoolPush();
    v21 = [v19 stringByAppendingString:@"AND src.bundle_id = :bundleId "];

    objc_autoreleasePoolPop(v20);
    v19 = v21;
  }

  if (groupIdCopy)
  {
    v22 = objc_autoreleasePoolPush();
    v23 = [v19 stringByAppendingString:@"AND src.group_id = :groupId"];

    objc_autoreleasePoolPop(v22);
    v19 = v23;
  }

  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __154__PPRecordStorageHelper_deleteAllRecordsSourcedFromBundleId_groupId_olderThanDate_algorithm_txnWitness_atLeastOneRecordClusterRemoved_deletedCount_error___block_invoke;
  v29[3] = &unk_278973050;
  algorithmCopy = algorithm;
  v30 = idCopy;
  v31 = dateCopy;
  v32 = groupIdCopy;
  v24 = groupIdCopy;
  v25 = dateCopy;
  v26 = idCopy;
  [(PPRecordStorageHelper *)self _deleteRecordsWithRowIdsFromQuery:v19 txnWitness:witnessCopy atLeastOneRecordClusterRemoved:removed deletedCount:count bind:v29];

  return 1;
}

void __154__PPRecordStorageHelper_deleteAllRecordsSourcedFromBundleId_groupId_olderThanDate_algorithm_txnWitness_atLeastOneRecordClusterRemoved_deletedCount_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 bindNamedParam:":algorithm" toInt64:*(a1 + 56)];
  if (([*(a1 + 32) isEqualToString:@"PortraitBundleIdWildCardMatchingAll"] & 1) == 0)
  {
    [v3 bindNamedParam:":bundleId" toNSString:*(a1 + 32)];
  }

  [*(a1 + 40) timeIntervalSince1970];
  [v3 bindNamedParam:":timestamp" toDouble:?];
  if (*(a1 + 48))
  {
    [v3 bindNamedParam:":groupId" toNSString:?];
  }
}

- (BOOL)deleteAllRecordsSourcedFromBundleId:(id)id groupId:(id)groupId olderThanDate:(id)date txnWitness:(id)witness atLeastOneRecordClusterRemoved:(BOOL *)removed deletedCount:(unint64_t *)count error:(id *)error
{
  idCopy = id;
  groupIdCopy = groupId;
  dateCopy = date;
  witnessCopy = witness;
  v19 = [witnessCopy db];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __144__PPRecordStorageHelper_deleteAllRecordsSourcedFromBundleId_groupId_olderThanDate_txnWitness_atLeastOneRecordClusterRemoved_deletedCount_error___block_invoke;
  v25[3] = &unk_278973028;
  v25[4] = self;
  v26 = idCopy;
  v27 = groupIdCopy;
  v28 = dateCopy;
  v29 = witnessCopy;
  removedCopy = removed;
  countCopy = count;
  v20 = witnessCopy;
  v21 = dateCopy;
  v22 = groupIdCopy;
  v23 = idCopy;
  [v19 writeTransaction:v25];

  return 1;
}

void __144__PPRecordStorageHelper_deleteAllRecordsSourcedFromBundleId_groupId_olderThanDate_txnWitness_atLeastOneRecordClusterRemoved_deletedCount_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) rowIdsForRecordsSourcedFromBundleId:*(a1 + 40) exactMatchGroupId:*(a1 + 48) olderThanDate:*(a1 + 56) txnWitness:*(a1 + 64)];
  [*(a1 + 32) deleteRecordsForRowIds:v2 txnWitness:*(a1 + 64) atLeastOneClusterRemoved:*(a1 + 72) deletedCount:*(a1 + 80)];
}

- (BOOL)deleteAllRecordsSourcedFromBundleId:(id)id algorithm:(unsigned int)algorithm txnWitness:(id)witness atLeastOneRecordClusterRemoved:(BOOL *)removed deletedCount:(unint64_t *)count error:(id *)error
{
  idCopy = id;
  v14 = MEMORY[0x277CCACA8];
  witnessCopy = witness;
  v16 = [[v14 alloc] initWithFormat:@"SELECT rt.id FROM %@ AS rt INNER JOIN sources AS src ON rt.source_id = src.id WHERE rt.algorithm = :algorithm AND src.bundle_id = :bundleId", self->_table];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __132__PPRecordStorageHelper_deleteAllRecordsSourcedFromBundleId_algorithm_txnWitness_atLeastOneRecordClusterRemoved_deletedCount_error___block_invoke;
  v19[3] = &unk_278972F60;
  algorithmCopy = algorithm;
  v20 = idCopy;
  v17 = idCopy;
  [(PPRecordStorageHelper *)self _deleteRecordsWithRowIdsFromQuery:v16 txnWitness:witnessCopy atLeastOneRecordClusterRemoved:removed deletedCount:count bind:v19];

  return 1;
}

void __132__PPRecordStorageHelper_deleteAllRecordsSourcedFromBundleId_algorithm_txnWitness_atLeastOneRecordClusterRemoved_deletedCount_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  [v4 bindNamedParam:":algorithm" toInt64:v3];
  [v4 bindNamedParam:":bundleId" toNSString:*(a1 + 32)];
}

- (BOOL)deleteAllRecordsSourcedFromBundleId:(id)id txnWitness:(id)witness atLeastOneRecordClusterRemoved:(BOOL *)removed deletedCount:(unint64_t *)count error:(id *)error
{
  idCopy = id;
  witnessCopy = witness;
  v13 = [witnessCopy db];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __122__PPRecordStorageHelper_deleteAllRecordsSourcedFromBundleId_txnWitness_atLeastOneRecordClusterRemoved_deletedCount_error___block_invoke;
  v17[3] = &unk_278975258;
  v17[4] = self;
  v18 = idCopy;
  v19 = witnessCopy;
  removedCopy = removed;
  countCopy = count;
  v14 = witnessCopy;
  v15 = idCopy;
  [v13 writeTransaction:v17];

  return 1;
}

void __122__PPRecordStorageHelper_deleteAllRecordsSourcedFromBundleId_txnWitness_atLeastOneRecordClusterRemoved_deletedCount_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = [v2 rowIdsForRecordsSourcedFromBundleId:a1[5] txnWitness:a1[6]];
  [v2 deleteRecordsForRowIds:v3 txnWitness:a1[6] atLeastOneClusterRemoved:a1[7] deletedCount:a1[8]];
}

- (BOOL)deleteAllRecordsSourcedFromBundleId:(id)id groupIds:(id)ids algorithm:(unsigned int)algorithm txnWitness:(id)witness atLeastOneRecordClusterRemoved:(BOOL *)removed deletedCount:(unint64_t *)count error:(id *)error
{
  idCopy = id;
  idsCopy = ids;
  witnessCopy = witness;
  if ([idsCopy count])
  {
    v18 = [witnessCopy db];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __141__PPRecordStorageHelper_deleteAllRecordsSourcedFromBundleId_groupIds_algorithm_txnWitness_atLeastOneRecordClusterRemoved_deletedCount_error___block_invoke;
    v20[3] = &unk_278973000;
    v20[4] = self;
    v21 = idCopy;
    v22 = idsCopy;
    algorithmCopy = algorithm;
    v23 = witnessCopy;
    removedCopy = removed;
    countCopy = count;
    [v18 writeTransaction:v20];
  }

  else
  {
    if (removed)
    {
      *removed = 0;
    }

    if (count)
    {
      *count = 0;
    }
  }

  return 1;
}

void __141__PPRecordStorageHelper_deleteAllRecordsSourcedFromBundleId_groupIds_algorithm_txnWitness_atLeastOneRecordClusterRemoved_deletedCount_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) rowIdsForRecordsSourcedFromBundleId:*(a1 + 40) groupIds:*(a1 + 48) txnWitness:*(a1 + 56)];
  v3 = objc_opt_new();
  v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"SELECT id FROM %@ AS rt WHERE rt.id IN _pas_nsindexset(:unfilteredRowIds) AND rt.algorithm = :algorithm", *(*(a1 + 32) + 8)];
  v5 = [*(*(a1 + 32) + 8) UTF8String];
  v6 = [*(a1 + 56) db];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __141__PPRecordStorageHelper_deleteAllRecordsSourcedFromBundleId_groupIds_algorithm_txnWitness_atLeastOneRecordClusterRemoved_deletedCount_error___block_invoke_2;
  v12[3] = &unk_278972F60;
  v13 = v2;
  v14 = *(a1 + 80);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __141__PPRecordStorageHelper_deleteAllRecordsSourcedFromBundleId_groupIds_algorithm_txnWitness_atLeastOneRecordClusterRemoved_deletedCount_error___block_invoke_3;
  v9[3] = &unk_278972D80;
  v10 = v3;
  v11 = v5;
  v7 = v3;
  v8 = v2;
  [v6 prepAndRunQuery:v4 onPrep:v12 onRow:v9 onError:0];

  [*(a1 + 32) deleteRecordsForRowIds:v7 txnWitness:*(a1 + 56) atLeastOneClusterRemoved:*(a1 + 64) deletedCount:*(a1 + 72)];
}

void __141__PPRecordStorageHelper_deleteAllRecordsSourcedFromBundleId_groupIds_algorithm_txnWitness_atLeastOneRecordClusterRemoved_deletedCount_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 bindNamedParam:":unfilteredRowIds" toNSIndexSet:v3];
  [v4 bindNamedParam:":algorithm" toInt64:*(a1 + 40)];
}

- (BOOL)deleteAllRecordsSourcedFromBundleId:(id)id groupIds:(id)ids txnWitness:(id)witness atLeastOneRecordClusterRemoved:(BOOL *)removed deletedCount:(unint64_t *)count error:(id *)error
{
  idCopy = id;
  idsCopy = ids;
  witnessCopy = witness;
  if ([idsCopy count])
  {
    v16 = [witnessCopy db];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __131__PPRecordStorageHelper_deleteAllRecordsSourcedFromBundleId_groupIds_txnWitness_atLeastOneRecordClusterRemoved_deletedCount_error___block_invoke;
    v18[3] = &unk_278972FB0;
    v18[4] = self;
    v19 = idCopy;
    v20 = idsCopy;
    v21 = witnessCopy;
    removedCopy = removed;
    countCopy = count;
    [v16 writeTransaction:v18];
  }

  else
  {
    if (removed)
    {
      *removed = 0;
    }

    if (count)
    {
      *count = 0;
    }
  }

  return 1;
}

void __131__PPRecordStorageHelper_deleteAllRecordsSourcedFromBundleId_groupIds_txnWitness_atLeastOneRecordClusterRemoved_deletedCount_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = [v2 rowIdsForRecordsSourcedFromBundleId:a1[5] groupIds:a1[6] txnWitness:a1[7]];
  [v2 deleteRecordsForRowIds:v3 txnWitness:a1[7] atLeastOneClusterRemoved:a1[8] deletedCount:a1[9]];
}

- (BOOL)deleteAllRecordsSourcedFromBundleId:(id)id documentIds:(id)ids algorithm:(unsigned int)algorithm txnWitness:(id)witness atLeastOneRecordClusterRemoved:(BOOL *)removed deletedCount:(unint64_t *)count error:(id *)error
{
  idCopy = id;
  idsCopy = ids;
  witnessCopy = witness;
  if ([idsCopy count])
  {
    v18 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"SELECT rt.id FROM %@ AS rt INNER JOIN sources AS src ON rt.source_id = src.id WHERE rt.algorithm = :algorithm AND src.bundle_id = :bundleId AND src.doc_id IN _pas_nsarray(:documentIds)", self->_table];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __144__PPRecordStorageHelper_deleteAllRecordsSourcedFromBundleId_documentIds_algorithm_txnWitness_atLeastOneRecordClusterRemoved_deletedCount_error___block_invoke;
    v20[3] = &unk_278972FD8;
    algorithmCopy = algorithm;
    v21 = idCopy;
    v22 = idsCopy;
    [(PPRecordStorageHelper *)self _deleteRecordsWithRowIdsFromQuery:v18 txnWitness:witnessCopy atLeastOneRecordClusterRemoved:removed deletedCount:count bind:v20];
  }

  else
  {
    if (removed)
    {
      *removed = 0;
    }

    if (count)
    {
      *count = 0;
    }
  }

  return 1;
}

void __144__PPRecordStorageHelper_deleteAllRecordsSourcedFromBundleId_documentIds_algorithm_txnWitness_atLeastOneRecordClusterRemoved_deletedCount_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 48);
  v4 = a2;
  [v4 bindNamedParam:":algorithm" toInt64:v3];
  [v4 bindNamedParam:":bundleId" toNSString:*(a1 + 32)];
  [v4 bindNamedParam:":documentIds" toNSArray:*(a1 + 40)];
}

- (BOOL)deleteAllRecordsSourcedFromBundleId:(id)id documentIds:(id)ids txnWitness:(id)witness atLeastOneRecordClusterRemoved:(BOOL *)removed deletedCount:(unint64_t *)count error:(id *)error
{
  idCopy = id;
  idsCopy = ids;
  witnessCopy = witness;
  if ([idsCopy count])
  {
    v16 = [witnessCopy db];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __134__PPRecordStorageHelper_deleteAllRecordsSourcedFromBundleId_documentIds_txnWitness_atLeastOneRecordClusterRemoved_deletedCount_error___block_invoke;
    v18[3] = &unk_278972FB0;
    v18[4] = self;
    v19 = idCopy;
    v20 = idsCopy;
    v21 = witnessCopy;
    removedCopy = removed;
    countCopy = count;
    [v16 writeTransaction:v18];
  }

  else
  {
    if (removed)
    {
      *removed = 0;
    }

    if (count)
    {
      *count = 0;
    }
  }

  return 1;
}

void __134__PPRecordStorageHelper_deleteAllRecordsSourcedFromBundleId_documentIds_txnWitness_atLeastOneRecordClusterRemoved_deletedCount_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = [v2 rowIdsForRecordsSourcedFromBundleId:a1[5] documentIds:a1[6] txnWitness:a1[7]];
  [v2 deleteRecordsForRowIds:v3 txnWitness:a1[7] atLeastOneClusterRemoved:a1[8] deletedCount:a1[9]];
}

- (BOOL)deleteAllRecordsWithName:(id)name algorithm:(unsigned int)algorithm bundleId:(id)id groupId:(id)groupId category:(unsigned int)category beforeDate:(id)date txnWitness:(id)witness atLeastOneRecordClusterRemoved:(BOOL *)self0 deletedCount:(unint64_t *)self1 error:(id *)self2
{
  nameCopy = name;
  idCopy = id;
  groupIdCopy = groupId;
  dateCopy = date;
  v22 = MEMORY[0x277CCACA8];
  witnessCopy = witness;
  v24 = [[v22 alloc] initWithFormat:@"SELECT rt.id FROM %@ AS rt INNER JOIN sources src ON rt.source_id = src.id WHERE rt.algorithm = :algorithm AND rt.name = :name AND rt.category = :category AND src.group_id = :groupId AND src.bundle_id = :bundleId AND src.seconds_from_1970 <= :beforeDate", self->_table];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __158__PPRecordStorageHelper_deleteAllRecordsWithName_algorithm_bundleId_groupId_category_beforeDate_txnWitness_atLeastOneRecordClusterRemoved_deletedCount_error___block_invoke;
  v30[3] = &unk_278972F88;
  algorithmCopy = algorithm;
  categoryCopy = category;
  v31 = nameCopy;
  v32 = idCopy;
  v33 = groupIdCopy;
  v34 = dateCopy;
  v25 = dateCopy;
  v26 = groupIdCopy;
  v27 = idCopy;
  v28 = nameCopy;
  [(PPRecordStorageHelper *)self _deleteRecordsWithRowIdsFromQuery:v24 txnWitness:witnessCopy atLeastOneRecordClusterRemoved:removed deletedCount:count bind:v30];

  return 1;
}

void __158__PPRecordStorageHelper_deleteAllRecordsWithName_algorithm_bundleId_groupId_category_beforeDate_txnWitness_atLeastOneRecordClusterRemoved_deletedCount_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 64);
  v4 = a2;
  [v4 bindNamedParam:":algorithm" toInt64:v3];
  [v4 bindNamedParam:":name" toNSString:*(a1 + 32)];
  [v4 bindNamedParam:":category" toInt64:*(a1 + 68)];
  [v4 bindNamedParam:":bundleId" toNSString:*(a1 + 40)];
  [v4 bindNamedParam:":groupId" toNSString:*(a1 + 48)];
  [*(a1 + 56) timeIntervalSince1970];
  [v4 bindNamedParam:":beforeDate" toDouble:?];
}

- (BOOL)deleteAllRecordsWithClusterIdentifier:(id)identifier algorithm:(unsigned int)algorithm txnWitness:(id)witness atLeastOneRecordClusterRemoved:(BOOL *)removed deletedCount:(unint64_t *)count error:(id *)error
{
  identifierCopy = identifier;
  v14 = MEMORY[0x277CCACA8];
  witnessCopy = witness;
  v16 = [[v14 alloc] initWithFormat:@"SELECT rt.id FROM %@ AS rt WHERE rt.algorithm = :algorithm AND rt.%@ = :clusterIdent", self->_table, self->_clusterIdentifierColumn];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __134__PPRecordStorageHelper_deleteAllRecordsWithClusterIdentifier_algorithm_txnWitness_atLeastOneRecordClusterRemoved_deletedCount_error___block_invoke;
  v19[3] = &unk_278972F60;
  algorithmCopy = algorithm;
  v20 = identifierCopy;
  v17 = identifierCopy;
  [(PPRecordStorageHelper *)self _deleteRecordsWithRowIdsFromQuery:v16 txnWitness:witnessCopy atLeastOneRecordClusterRemoved:removed deletedCount:count bind:v19];

  return 1;
}

void __134__PPRecordStorageHelper_deleteAllRecordsWithClusterIdentifier_algorithm_txnWitness_atLeastOneRecordClusterRemoved_deletedCount_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  [v4 bindNamedParam:":algorithm" toInt64:v3];
  [v4 bindNamedParam:":clusterIdent" toNSString:*(a1 + 32)];
}

- (BOOL)deleteAllRecordsWithClusterIdentifier:(id)identifier txnWitness:(id)witness atLeastOneRecordClusterRemoved:(BOOL *)removed deletedCount:(unint64_t *)count error:(id *)error
{
  identifierCopy = identifier;
  v12 = MEMORY[0x277CCACA8];
  witnessCopy = witness;
  v14 = [[v12 alloc] initWithFormat:@"SELECT rt.id FROM %@ AS rt WHERE rt.%@ = :clusterIdent", self->_table, self->_clusterIdentifierColumn];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __124__PPRecordStorageHelper_deleteAllRecordsWithClusterIdentifier_txnWitness_atLeastOneRecordClusterRemoved_deletedCount_error___block_invoke;
  v17[3] = &unk_278978CF8;
  v18 = identifierCopy;
  v15 = identifierCopy;
  [(PPRecordStorageHelper *)self _deleteRecordsWithRowIdsFromQuery:v14 txnWitness:witnessCopy atLeastOneRecordClusterRemoved:removed deletedCount:count bind:v17];

  return 1;
}

- (void)disableSyncForBundleIds:(id)ids txnWitness:(id)witness
{
  v53 = *MEMORY[0x277D85DE8];
  idsCopy = ids;
  witnessCopy = witness;
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 0;
  v8 = objc_opt_new();
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __60__PPRecordStorageHelper_disableSyncForBundleIds_txnWitness___block_invoke;
  aBlock[3] = &unk_2789797E0;
  v9 = v8;
  v39 = v9;
  selfCopy = self;
  v10 = _Block_copy(aBlock);
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __60__PPRecordStorageHelper_disableSyncForBundleIds_txnWitness___block_invoke_201;
  v34[3] = &unk_278972F10;
  v37 = &v41;
  v11 = v9;
  v35 = v11;
  v12 = v10;
  v36 = v12;
  v13 = _Block_copy(v34);
  v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"SELECT rt.dk_event_id FROM %@ AS rt INNER JOIN sources AS src ON rt.source_id = src.id WHERE rt.is_remote = 0 AND rt.is_sync_eligible = 1 AND rt.dk_event_id IS NOT NULL AND src.bundle_id IN _pas_nsset(:bundleIds)", self->_table];
  v15 = [witnessCopy db];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __60__PPRecordStorageHelper_disableSyncForBundleIds_txnWitness___block_invoke_2;
  v32[3] = &unk_278978CF8;
  v16 = idsCopy;
  v33 = v16;
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __60__PPRecordStorageHelper_disableSyncForBundleIds_txnWitness___block_invoke_3;
  v30[3] = &unk_278972F38;
  v30[4] = self;
  v17 = v13;
  v31 = v17;
  [v15 prepAndRunQuery:v14 onPrep:v32 onRow:v30 onError:0];

  v12[2](v12);
  v18 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"UPDATE %@ SET is_sync_eligible = 0 WHERE is_remote = 0 AND is_sync_eligible = 1 AND source_id IN (SELECT id FROM sources WHERE bundle_id IN _pas_nsset(:bundleIds))", self->_table];
  v19 = [witnessCopy db];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __60__PPRecordStorageHelper_disableSyncForBundleIds_txnWitness___block_invoke_4;
  v28[3] = &unk_278978CF8;
  v20 = v16;
  v29 = v20;
  [v19 prepAndRunQuery:v18 onPrep:v28 onRow:0 onError:0];

  v21 = [witnessCopy db];
  v22 = v21;
  v23 = sqlite3_changes([v21 handle]);

  v24 = pp_default_log_handle();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = [v20 count];
    table = self->_table;
    v27 = v42[3];
    *buf = 134218754;
    v46 = v25;
    v47 = 2112;
    v48 = table;
    v49 = 1024;
    v50 = v23;
    v51 = 2048;
    v52 = v27;
    _os_log_impl(&dword_23224A000, v24, OS_LOG_TYPE_DEFAULT, "Disabled cloud sync for %tu bundleIds in %@: %d records modified, %tu _DKKnowledgeStore records deleted.", buf, 0x26u);
  }

  _Block_object_dispose(&v41, 8);
}

uint64_t __60__PPRecordStorageHelper_disableSyncForBundleIds_txnWitness___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) count])
  {
    v2 = *(a1 + 40);
    v3 = *(v2 + 40);
    if (v3)
    {
      v4 = *(v2 + 48);
      v5 = [MEMORY[0x277CFE260] predicateForObjectsWithUUIDs:*(a1 + 32)];
      v9 = 0;
      LOBYTE(v4) = [v3 deleteAllEventsInEventStream:v4 matchingPredicate:v5 error:&v9];
      v6 = v9;

      if ((v4 & 1) == 0)
      {
        v7 = pp_default_log_handle();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v11 = v6;
          _os_log_error_impl(&dword_23224A000, v7, OS_LOG_TYPE_ERROR, "Failed to delete _DKEvents in response to change in bundleId sync status: %@", buf, 0xCu);
        }
      }
    }
  }

  return [*(a1 + 32) removeAllObjects];
}

void *__60__PPRecordStorageHelper_disableSyncForBundleIds_txnWitness___block_invoke_201(uint64_t a1, uint64_t a2)
{
  ++*(*(*(a1 + 48) + 8) + 24);
  [*(a1 + 32) addObject:a2];
  result = [*(a1 + 32) count];
  if (result >= 0xC9)
  {
    v4 = *(*(a1 + 40) + 16);

    return v4();
  }

  return result;
}

uint64_t __60__PPRecordStorageHelper_disableSyncForBundleIds_txnWitness___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = v3[1];
  v5 = a2;
  v6 = [v3 uuidForStatement:v5 columnName:"dk_event_id" tableName:{objc_msgSend(v4, "UTF8String")}];

  if (v6)
  {
    (*(*(a1 + 40) + 16))();
  }

  v7 = MEMORY[0x277D42690];

  return *v7;
}

- (void)importDuetEventsWithLimit:(unsigned int)limit database:(id)database client:(unsigned __int8)client remoteEventsOnly:(BOOL)only isComplete:(BOOL *)complete shouldContinueBlock:(id)block eventImportBlock:(id)importBlock
{
  onlyCopy = only;
  clientCopy = client;
  v61[3] = *MEMORY[0x277D85DE8];
  databaseCopy = database;
  blockCopy = block;
  importBlockCopy = importBlock;
  if (self->_duetStorage)
  {
    v35 = importBlockCopy;
    v51 = 0;
    v52 = &v51;
    v53 = 0x3032000000;
    v54 = __Block_byref_object_copy__5140;
    v55 = __Block_byref_object_dispose__5141;
    v56 = 0;
    v17 = objc_opt_new();
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __132__PPRecordStorageHelper_importDuetEventsWithLimit_database_client_remoteEventsOnly_isComplete_shouldContinueBlock_eventImportBlock___block_invoke;
    v48[3] = &unk_278972E70;
    v48[4] = self;
    v36 = v17;
    v49 = v36;
    v50 = &v51;
    [databaseCopy readTransactionWithClient:clientCopy block:v48];
    if (v52[5])
    {
      [MEMORY[0x277CFE260] predicateForEventsWithStartDateAfter:?];
    }

    else
    {
      [MEMORY[0x277CCAC30] predicateWithValue:1];
    }
    v18 = ;
    if (onlyCopy)
    {
      v19 = MEMORY[0x277CCA920];
      predicateForEventsWithNullSourceDeviceID = [MEMORY[0x277CFE1E0] predicateForEventsWithNullSourceDeviceID];
      v21 = [v19 notPredicateWithSubpredicate:predicateForEventsWithNullSourceDeviceID];
    }

    else
    {
      v21 = [MEMORY[0x277CCAC30] predicateWithValue:1];
    }

    v22 = MEMORY[0x277CCA920];
    v23 = [MEMORY[0x277CFE260] predicateForObjectsWithUUIDs:v36];
    v24 = [v22 notPredicateWithSubpredicate:v23];

    v25 = MEMORY[0x277CCA920];
    v61[0] = v18;
    v61[1] = v21;
    v61[2] = v24;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:3];
    v27 = [v25 andPredicateWithSubpredicates:v26];

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __132__PPRecordStorageHelper_importDuetEventsWithLimit_database_client_remoteEventsOnly_isComplete_shouldContinueBlock_eventImportBlock___block_invoke_2;
    aBlock[3] = &unk_278972EC0;
    limitCopy = limit;
    completeCopy = complete;
    v42 = blockCopy;
    v47 = clientCopy;
    v44 = &v51;
    v40 = databaseCopy;
    selfCopy = self;
    v43 = v35;
    v28 = _Block_copy(aBlock);
    v38 = 0;
    duetStorage = self->_duetStorage;
    duetStream = self->_duetStream;
    v30 = [MEMORY[0x277CBEA60] arrayWithObjects:&duetStream count:1];
    v31 = [MEMORY[0x277CFE1E0] startDateSortDescriptorAscending:1];
    v59 = v31;
    v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v59 count:1];
    v33 = [(PPDKStorage *)duetStorage iterEventBatchesMatchingPredicate:v27 streams:v30 sortDescriptors:v32 batchSize:limit error:&v38 block:v28];

    if (!v33)
    {
      v34 = pp_default_log_handle();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v58 = v38;
        _os_log_error_impl(&dword_23224A000, v34, OS_LOG_TYPE_ERROR, "Error while iterating through _DKEvents during importDuetEventsWithLimit: %@", buf, 0xCu);
      }

      if (complete)
      {
        *complete = 1;
      }
    }

    _Block_object_dispose(&v51, 8);
    importBlockCopy = v35;
  }

  else if (complete)
  {
    *complete = 1;
  }
}

void __132__PPRecordStorageHelper_importDuetEventsWithLimit_database_client_remoteEventsOnly_isComplete_shouldContinueBlock_eventImportBlock___block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = *(*(a1 + 48) + 8);
  v7 = *(v4 + 40);
  v5 = (v4 + 40);
  v6 = v7;
  v8 = *(a1 + 40);
  v9 = a2;
  if (v3)
  {
    v10 = [PPSQLKVStore loadBlobForKey:*(v3 + 56) transaction:v9];
    if (v10)
    {
      v22 = 0;
      v11 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v10 error:&v22];
      v12 = v22;
      if (v11)
      {
        v13 = v11;
        v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"SELECT rt.dk_event_id FROM %@ AS rt INNER JOIN sources AS src ON rt.source_id = src.id WHERE src.seconds_from_1970 > :before_timestamp AND src.seconds_from_1970 < :after_timestamp AND rt.dk_event_id IS NOT NULL", *(v3 + 8)];
        v15 = [v9 db];
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __92__PPRecordStorageHelper__addEventsSourcedOnLastImportDateToSet_lastDKImportDate_txnWitness___block_invoke;
        v20[3] = &unk_278978CF8;
        v6 = v11;
        v21 = v6;
        *v25 = MEMORY[0x277D85DD0];
        *&v25[8] = 3221225472;
        *&v25[16] = __92__PPRecordStorageHelper__addEventsSourcedOnLastImportDateToSet_lastDKImportDate_txnWitness___block_invoke_2;
        v26 = &unk_278974C38;
        v27 = v3;
        v16 = v8;
        v28 = v16;
        [v15 prepAndRunQuery:v14 onPrep:v20 onRow:v25 onError:0];

        if ([v16 count])
        {
          v17 = pp_default_log_handle();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            v18 = [v16 count];
            *buf = 134217984;
            v24 = v18;
            _os_log_debug_impl(&dword_23224A000, v17, OS_LOG_TYPE_DEBUG, "importDuetEventsWithLimit skipping import of %tu events with matching starting date.", buf, 0xCu);
          }
        }
      }

      else
      {
        v14 = pp_default_log_handle();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v19 = *(v3 + 56);
          *v25 = 138412546;
          *&v25[4] = v19;
          *&v25[12] = 2112;
          *&v25[14] = v12;
          _os_log_error_impl(&dword_23224A000, v14, OS_LOG_TYPE_ERROR, "Failed to unarchive blob for key %@: %@", v25, 0x16u);
        }
      }
    }
  }

  objc_storeStrong(v5, v6);
}

void __132__PPRecordStorageHelper_importDuetEventsWithLimit_database_client_remoteEventsOnly_isComplete_shouldContinueBlock_eventImportBlock___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  *a3 = 1;
  if ([v5 count] < *(a1 + 80))
  {
    v6 = *(a1 + 72);
    if (v6)
    {
      *v6 = 1;
    }
  }

  if ((*(*(a1 + 48) + 16))())
  {
    v7 = *(a1 + 84);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __132__PPRecordStorageHelper_importDuetEventsWithLimit_database_client_remoteEventsOnly_isComplete_shouldContinueBlock_eventImportBlock___block_invoke_3;
    v12[3] = &unk_278972E98;
    v9 = *(a1 + 32);
    v8 = *(a1 + 40);
    v15 = *(a1 + 64);
    v12[4] = v8;
    v10 = v5;
    v11 = *(a1 + 72);
    v13 = v10;
    v16 = v11;
    v14 = *(a1 + 56);
    [v9 writeTransactionWithClient:v7 block:v12];
  }
}

void __132__PPRecordStorageHelper_importDuetEventsWithLimit_database_client_remoteEventsOnly_isComplete_shouldContinueBlock_eventImportBlock___block_invoke_3(uint64_t a1, void *a2)
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  v6 = *(*(*(a1 + 56) + 8) + 40);
  v7 = *(a1 + 64);
  v8 = *(a1 + 40);
  v9 = v6;
  v23 = v5;
  v10 = a2;
  v22 = v9;
  if (v4)
  {
    v25 = 0;
    v26 = &v25;
    v27 = 0x3032000000;
    v28 = __Block_byref_object_copy__5140;
    v29 = __Block_byref_object_dispose__5141;
    v11 = v9;
    v30 = v11;
    v12 = [PPSQLKVStore loadBlobForKey:v4[7] transaction:v10];
    if (v12)
    {
      v24 = 0;
      v13 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v12 error:&v24];
      v14 = v24;
      if (v13)
      {
        if (([v13 isEqualToDate:v11] & 1) == 0)
        {
          v15 = pp_default_log_handle();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_23224A000, v15, OS_LOG_TYPE_DEFAULT, "Detected concurrent _DK event import, aborting", buf, 2u);
          }

          if (v7)
          {
            *v7 = 1;
          }

          v4 = v26[5];

LABEL_16:
LABEL_22:
          _Block_object_dispose(&v25, 8);

          goto LABEL_23;
        }
      }

      else
      {
        v17 = pp_default_log_handle();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v21 = v4[7];
          *buf = 138412546;
          *&buf[4] = v21;
          *&buf[12] = 2112;
          *&buf[14] = v14;
          _os_log_error_impl(&dword_23224A000, v17, OS_LOG_TYPE_ERROR, "Failed to unarchive blob for key %@: %@", buf, 0x16u);
        }
      }
    }

    else if (v11)
    {
      v16 = pp_default_log_handle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23224A000, v16, OS_LOG_TYPE_DEFAULT, "Detected concurrent _DK event import, aborting", buf, 2u);
      }

      if (v7)
      {
        *v7 = 1;
      }

      v4 = v26[5];
      goto LABEL_16;
    }

    [v4 truncateRecordsByDroppingOldestMakingRoomForCount:objc_msgSend(v8 txnWitness:{"count"), v10}];
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __103__PPRecordStorageHelper__importDuetEventBatch_lastDKImportDate_isComplete_eventImportBlock_txnWitness___block_invoke;
    v32 = &unk_278972EE8;
    v39 = sel__importDuetEventBatch_lastDKImportDate_isComplete_eventImportBlock_txnWitness_;
    v33 = v4;
    v34 = v10;
    v37 = v23;
    v18 = v8;
    v35 = v18;
    v38 = &v25;
    v36 = v11;
    [v18 enumerateObjectsUsingBlock:buf];
    v4 = v26[5];

    goto LABEL_22;
  }

LABEL_23:

  v19 = *(*(a1 + 56) + 8);
  v20 = *(v19 + 40);
  *(v19 + 40) = v4;
}

void __103__PPRecordStorageHelper__importDuetEventBatch_lastDKImportDate_isComplete_eventImportBlock_txnWitness___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v43 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [v5 UUID];

  if (!v6)
  {
    v32 = [MEMORY[0x277CCA890] currentHandler];
    [v32 handleFailureInMethod:*(a1 + 80) object:*(a1 + 32) file:@"PPRecordStorageHelper.m" lineNumber:708 description:@"_DKEvent has nil UUID"];
  }

  v7 = *(a1 + 32);
  v8 = [v5 UUID];
  v9 = [v7 blobFromUUID:v8];

  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  v10 = [*(a1 + 40) db];
  v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"SELECT 1 FROM %@ WHERE dk_event_id = :uuidBlob", *(*(a1 + 32) + 8)];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __103__PPRecordStorageHelper__importDuetEventBatch_lastDKImportDate_isComplete_eventImportBlock_txnWitness___block_invoke_2;
  v35[3] = &unk_278978CF8;
  v12 = v9;
  v36 = v12;
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __103__PPRecordStorageHelper__importDuetEventBatch_lastDKImportDate_isComplete_eventImportBlock_txnWitness___block_invoke_3;
  v34[3] = &unk_278976450;
  v34[4] = &v37;
  [v10 prepAndRunQuery:v11 onPrep:v35 onRow:v34 onError:0];

  if (*(v38 + 24) == 1)
  {
    v13 = pp_default_log_handle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v31 = [v5 UUID];
      *buf = 138412290;
      v42 = v31;
      _os_log_debug_impl(&dword_23224A000, v13, OS_LOG_TYPE_DEBUG, "Skipping import of _DKEvent %@, already present", buf, 0xCu);
    }
  }

  else
  {
    v14 = +[PPSettings sharedInstance];
    v15 = [v5 source];
    v16 = [v15 bundleID];
    v17 = [v14 bundleIdentifierIsEnabledForCloudKit:v16];

    if (v17)
    {
      (*(*(a1 + 64) + 16))();
    }
  }

  if (a3 + 1 == [*(a1 + 48) count])
  {
    v18 = [v5 startDate];
    v19 = *(*(a1 + 72) + 8);
    v20 = *(v19 + 40);
    *(v19 + 40) = v18;

    v21 = *(*(*(a1 + 72) + 8) + 40);
    if (v21 && *(a1 + 56) && [v21 isEqualToDate:?])
    {
      v22 = pp_default_log_handle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = *(a1 + 56);
        *buf = 138412290;
        v42 = v23;
        _os_log_impl(&dword_23224A000, v22, OS_LOG_TYPE_DEFAULT, "_DKEvent.startDate %@ did not change across batch, bumping timestamp to avoid spin.", buf, 0xCu);
      }

      v24 = [*(a1 + 56) dateByAddingTimeInterval:1.0];
      v25 = *(*(a1 + 72) + 8);
      v26 = *(v25 + 40);
      *(v25 + 40) = v24;
    }

    v27 = *(*(*(a1 + 72) + 8) + 40);
    v33 = 0;
    v28 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v27 requiringSecureCoding:1 error:&v33];
    v29 = v33;
    if (v28)
    {
      [PPSQLKVStore storeBlob:v28 forKey:*(*(a1 + 32) + 56) transaction:*(a1 + 40)];
    }

    else
    {
      v30 = pp_default_log_handle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v42 = v29;
        _os_log_error_impl(&dword_23224A000, v30, OS_LOG_TYPE_ERROR, "Failed to serialize NSDate during _DK import: %@", buf, 0xCu);
      }
    }
  }

  _Block_object_dispose(&v37, 8);
}

void __92__PPRecordStorageHelper__addEventsSourcedOnLastImportDateToSet_lastDKImportDate_txnWitness___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  +[PPSourceStorage matchAccuracyForSecondsFrom1970];
  v4 = v3;
  [*(a1 + 32) timeIntervalSince1970];
  [v7 bindNamedParam:":before_timestamp" toDouble:v5 - v4];
  [*(a1 + 32) timeIntervalSince1970];
  [v7 bindNamedParam:":after_timestamp" toDouble:v4 + v6];
}

uint64_t __92__PPRecordStorageHelper__addEventsSourcedOnLastImportDateToSet_lastDKImportDate_txnWitness___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = v3[1];
  v5 = a2;
  v6 = [v3 uuidForStatement:v5 columnName:"dk_event_id" tableName:{objc_msgSend(v4, "UTF8String")}];

  if (v6)
  {
    [*(a1 + 40) addObject:v6];
  }

  v7 = MEMORY[0x277D42690];

  return *v7;
}

- (void)fixupDKEventsMetadataWithShouldContinueBlock:(id)block database:(id)database client:(unsigned __int8)client
{
  clientCopy = client;
  v45[2] = *MEMORY[0x277D85DE8];
  blockCopy = block;
  databaseCopy = database;
  v9 = databaseCopy;
  if (self)
  {
    *buf = 0;
    v39 = buf;
    v40 = 0x3032000000;
    v41 = __Block_byref_object_copy__5140;
    v42 = __Block_byref_object_dispose__5141;
    v43 = 0;
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __78__PPRecordStorageHelper__dkEventMetadataFixupHasCompletedWithDatabase_client___block_invoke;
    v37[3] = &unk_278978BB8;
    v37[4] = self;
    v37[5] = buf;
    [databaseCopy readTransactionWithClient:clientCopy block:v37];
    v10 = *(v39 + 5);
    if (v10)
    {
      bOOLValue = [v10 BOOLValue];
      _Block_object_dispose(buf, 8);

      if (bOOLValue)
      {
        v12 = pp_default_log_handle();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_debug_impl(&dword_23224A000, v12, OS_LOG_TYPE_DEBUG, "Skipping duet fix up as it has already been completed.", buf, 2u);
        }

        goto LABEL_20;
      }
    }

    else
    {
      v13 = pp_default_log_handle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *v36 = 0;
        _os_log_debug_impl(&dword_23224A000, v13, OS_LOG_TYPE_DEBUG, "PPRecordStorageHelper: metadata fix up has never occurred.", v36, 2u);
      }

      _Block_object_dispose(buf, 8);
    }
  }

  else
  {
  }

  v12 = [MEMORY[0x277D425A0] autoreleasingSerialQueueWithLabel:"com.apple.PersonalizationPortrait.duetStreamFixup" qosClass:5];
  if (self->_duetStorage && self->_duetStream)
  {
    v14 = objc_autoreleasePoolPush();
    v15 = MEMORY[0x277CCA920];
    v16 = [MEMORY[0x277CFE260] predicateForObjectsWithMetadataKey:@"compatVersion"];
    v17 = [v15 notPredicateWithSubpredicate:v16];

    objc_autoreleasePoolPop(v14);
    v18 = objc_autoreleasePoolPush();
    v19 = MEMORY[0x277CFE260];
    compatibilityVersion = [MEMORY[0x277CFE0F8] compatibilityVersion];
    v29 = [v19 predicateForObjectsWithMetadataKey:compatibilityVersion];

    objc_autoreleasePoolPop(v18);
    v21 = objc_autoreleasePoolPush();
    v22 = MEMORY[0x277CCA920];
    v45[0] = v17;
    v45[1] = v29;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:2];
    v24 = [v22 andPredicateWithSubpredicates:v23];

    objc_autoreleasePoolPop(v21);
    duetStorage = self->_duetStorage;
    duetStream = self->_duetStream;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&duetStream count:1];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __86__PPRecordStorageHelper_fixupDKEventsMetadataWithShouldContinueBlock_database_client___block_invoke;
    v32[3] = &unk_278972E20;
    v27 = blockCopy;
    v35 = v27;
    v33 = v12;
    selfCopy = self;
    [(PPDKStorage *)duetStorage iterEventBatchesMatchingPredicate:v24 streams:v26 sortDescriptors:MEMORY[0x277CBEBF8] batchSize:8 error:0 block:v32];

    if (v27[2](v27))
    {
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __86__PPRecordStorageHelper_fixupDKEventsMetadataWithShouldContinueBlock_database_client___block_invoke_173;
      v31[3] = &unk_278978B68;
      v31[4] = self;
      [v9 writeTransactionWithClient:clientCopy block:v31];
    }

    else
    {
      v28 = pp_default_log_handle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23224A000, v28, OS_LOG_TYPE_DEFAULT, "Duet stream fix up deferring.", buf, 2u);
      }
    }
  }

  else
  {
    v17 = pp_default_log_handle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v17, OS_LOG_TYPE_INFO, "Not fixing up Duet stream as the stream or storage is nil.", buf, 2u);
    }
  }

LABEL_20:
}

void __86__PPRecordStorageHelper_fixupDKEventsMetadataWithShouldContinueBlock_database_client___block_invoke(void *a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  if ((*(a1[6] + 16))())
  {
    v6 = MEMORY[0x277D425A0];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __86__PPRecordStorageHelper_fixupDKEventsMetadataWithShouldContinueBlock_database_client___block_invoke_172;
    v14[3] = &unk_2789797E0;
    v7 = a1[4];
    v14[4] = a1[5];
    v15 = v5;
    [v6 runAsyncOnQueue:v7 afterDelaySeconds:v14 block:0.0];
    if (((*(a1[6] + 16))(a1[6], v8, v9, v10, v11) & 1) == 0)
    {
      v12 = pp_default_log_handle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23224A000, v12, OS_LOG_TYPE_DEFAULT, "Deferring fix up of Duet stream.", buf, 2u);
      }

      *a3 = 1;
    }
  }

  else
  {
    v13 = pp_default_log_handle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v13, OS_LOG_TYPE_DEFAULT, "Deferring fix up of Duet stream.", buf, 2u);
    }

    *a3 = 1;
  }
}

void __86__PPRecordStorageHelper_fixupDKEventsMetadataWithShouldContinueBlock_database_client___block_invoke_173(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a2;
  v5 = [[v3 alloc] initWithFormat:@"%@_%@", *(*(a1 + 32) + 8), @"DuetStreamFixedUp"];
  [PPSQLKVStore setNumber:MEMORY[0x277CBEC38] forKey:v5 transaction:v4];
}

void __86__PPRecordStorageHelper_fixupDKEventsMetadataWithShouldContinueBlock_database_client___block_invoke_172(id a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 4);
  if (!v1)
  {
    v11 = 0;
LABEL_16:
    v14 = pp_default_log_handle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v16) = 138412290;
      *(&v16 + 4) = v11;
      _os_log_error_impl(&dword_23224A000, v14, OS_LOG_TYPE_ERROR, "Error cleaning events in Duet stream: %@", &v16, 0xCu);
    }

    goto LABEL_19;
  }

  v2 = [*(a1 + 5) _pas_filteredArrayWithTest:&__block_literal_global_5319];
  if (![v2 count])
  {

    v11 = 0;
    goto LABEL_19;
  }

  v3 = *(v1 + 40);
  v15 = 0;
  v4 = [v3 deleteEvents:v2 error:&v15];
  v5 = v15;
  if (v4)
  {
    *&v16 = MEMORY[0x277D85DD0];
    *(&v16 + 1) = 3221225472;
    v17 = __67__PPRecordStorageHelper__cleanUpMalformedMetadataDuetEvents_error___block_invoke_175;
    v18 = &unk_278972E48;
    v19 = v1;
    v6 = [v2 _pas_mappedArrayWithTransform:&v16];
    v7 = [*(v1 + 40) saveEvents:v6 stream:*(v1 + 48) maxRetries:-1 retryInterval:&__block_literal_global_181 shouldContinueBlock:5.0];
    if ((v7 & 1) == 0)
    {
      v8 = pp_default_log_handle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23224A000, v8, OS_LOG_TYPE_DEFAULT, "Unable to save fixed up events to Duet", buf, 2u);
      }
    }

    v9 = pp_default_log_handle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v9, OS_LOG_TYPE_INFO, "Completed cleanup of malformed Duet events.", buf, 2u);
    }

    v10 = 0;
  }

  else
  {
    v12 = pp_default_log_handle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v21 = v5;
      _os_log_error_impl(&dword_23224A000, v12, OS_LOG_TYPE_ERROR, "Error deleting incompatible events: %@", buf, 0xCu);
    }

    v13 = v5;
    v7 = 0;
    v10 = v5;
  }

  v11 = v10;
  if ((v7 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_19:
}

id __67__PPRecordStorageHelper__cleanUpMalformedMetadataDuetEvents_error___block_invoke_175(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 stream];
  v5 = [MEMORY[0x277CFE100] entityStream];
  v6 = [v4 isEqual:v5];

  v7 = *(*(a1 + 32) + 40);
  if (v6)
  {
    v8 = [v7 namedEntityRecordFromEvent:v3];
    if (v8)
    {
      v9 = v8;
      v10 = *(*(a1 + 32) + 40);
      v11 = [v3 source];
      v12 = [v11 deviceID];
      v13 = [v10 eventForNamedEntityRecord:v9 sourceDeviceID:v12];
LABEL_6:
      v16 = v13;

      goto LABEL_13;
    }

    v17 = pp_default_log_handle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 0;
      v18 = "PPRecordStorageHelper: unable to generate entity record for Duet event.";
      v19 = &v22;
LABEL_11:
      _os_log_impl(&dword_23224A000, v17, OS_LOG_TYPE_DEFAULT, v18, v19, 2u);
    }
  }

  else
  {
    v14 = [v7 topicRecordFromEvent:v3];
    if (v14)
    {
      v9 = v14;
      v15 = *(*(a1 + 32) + 40);
      v11 = [v3 source];
      v12 = [v11 deviceID];
      v13 = [v15 eventForTopicRecord:v9 sourceDeviceID:v12];
      goto LABEL_6;
    }

    v17 = pp_default_log_handle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 0;
      v18 = "PPRecordStorageHelper: unable to generate topic record for Duet event.";
      v19 = &v21;
      goto LABEL_11;
    }
  }

  v16 = 0;
LABEL_13:

  return v16;
}

BOOL __67__PPRecordStorageHelper__cleanUpMalformedMetadataDuetEvents_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 metadata];
  v3 = [v2 objectForKeyedSubscript:@"compatVersion"];
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v5 = [MEMORY[0x277CFE0F8] compatibilityVersion];
    v4 = v5 != 0;
  }

  return v4;
}

void __78__PPRecordStorageHelper__dkEventMetadataFixupHasCompletedWithDatabase_client___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a2;
  v8 = [[v3 alloc] initWithFormat:@"%@_%@", *(*(a1 + 32) + 8), @"DuetStreamFixedUp"];
  v5 = [PPSQLKVStore numberForKey:v8 transaction:v4];

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)duetEventDeletionProcessingBlockWithDatabase:(id)database client:(unsigned __int8)client
{
  databaseCopy = database;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __77__PPRecordStorageHelper_duetEventDeletionProcessingBlockWithDatabase_client___block_invoke;
  aBlock[3] = &unk_278972DD0;
  clientCopy = client;
  v11 = databaseCopy;
  selfCopy = self;
  v7 = databaseCopy;
  v8 = _Block_copy(aBlock);

  return v8;
}

void __77__PPRecordStorageHelper_duetEventDeletionProcessingBlockWithDatabase_client___block_invoke(int8x16_t *a1)
{
  v67[3] = *MEMORY[0x277D85DE8];
  v51 = 0;
  v52 = &v51;
  v53 = 0x3032000000;
  v54 = __Block_byref_object_copy__5140;
  v55 = __Block_byref_object_dispose__5141;
  v56 = 0;
  v2 = a1[2].i64[0];
  v3 = a1[3].u8[0];
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __77__PPRecordStorageHelper_duetEventDeletionProcessingBlockWithDatabase_client___block_invoke_2;
  v50[3] = &unk_278978BB8;
  v50[4] = a1[2].i64[1];
  v50[5] = &v51;
  [v2 readTransactionWithClient:v3 block:v50];
  if (v52[5])
  {
    v4 = pp_default_log_handle();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_5;
    }

    v5 = *(a1[2].i64[1] + 8);
    v6 = v52[5];
    *v63 = 138412546;
    *&v63[4] = v5;
    *&v63[12] = 2112;
    *&v63[14] = v6;
    v7 = "dkEventDeletionProcessingBlock(%@): processing _DKEvent deletions after: %@";
    v8 = v4;
    v9 = 22;
  }

  else
  {
    v4 = pp_default_log_handle();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_5;
    }

    v38 = *(a1[2].i64[1] + 8);
    *v63 = 138412290;
    *&v63[4] = v38;
    v7 = "dkEventDeletionProcessingBlock(%@): processing all _DKEvent deletions";
    v8 = v4;
    v9 = 12;
  }

  _os_log_debug_impl(&dword_23224A000, v8, OS_LOG_TYPE_DEBUG, v7, v63, v9);
LABEL_5:

  if (v52[5])
  {
    [MEMORY[0x277CFE1E0] predicateForEventsWithStartDateAfter:?];
  }

  else
  {
    [MEMORY[0x277CCAC30] predicateWithValue:1];
  }
  v10 = ;
  v11 = MEMORY[0x277CFE1E0];
  v12 = [MEMORY[0x277CFE2A8] eventStreamName];
  v13 = [*(a1[2].i64[1] + 48) name];
  v14 = [v11 predicateForObjectsWithMetadataKey:v12 andStringValue:v13];

  v15 = MEMORY[0x277CFE1E0];
  v16 = [MEMORY[0x277CFE2A8] eventSourceDeviceID];
  v17 = [v15 predicateForObjectsWithMetadataKey:v16];

  v18 = MEMORY[0x277CCA920];
  v67[0] = v10;
  v67[1] = v14;
  v67[2] = v17;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v67 count:3];
  v20 = [v18 andPredicateWithSubpredicates:v19];

  location = 0;
  *v63 = 0;
  *&v63[8] = v63;
  *&v63[16] = 0x3032000000;
  v64 = __Block_byref_object_copy__5140;
  v65 = __Block_byref_object_dispose__5141;
  v66 = 0;
  v21 = *(a1[2].i64[1] + 40);
  v22 = [v21 tombstoneStream];
  v62 = v22;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v62 count:1];
  v24 = [MEMORY[0x277CFE260] startDateSortDescriptorAscending:1];
  v61 = v24;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v61 count:1];
  v26 = [*(a1[2].i64[1] + 40) readBatchSize];
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __77__PPRecordStorageHelper_duetEventDeletionProcessingBlockWithDatabase_client___block_invoke_157;
  v45[3] = &unk_278972DA8;
  v40 = a1[2];
  v27 = v40.i64[0];
  v46 = vextq_s8(v40, v40, 8uLL);
  v48 = a1[3].i8[0];
  v47 = v63;
  LOBYTE(v21) = [v21 iterEventBatchesMatchingPredicate:v20 streams:v23 sortDescriptors:v25 batchSize:v26 readMetaData:0 remoteOnly:0 error:&location block:v45];

  if ((v21 & 1) == 0)
  {
    v28 = pp_default_log_handle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v37 = *(a1[2].i64[1] + 8);
      *buf = 138412546;
      v58 = v37;
      v59 = 2112;
      v60 = location;
      _os_log_error_impl(&dword_23224A000, v28, OS_LOG_TYPE_ERROR, "dkEventDeletionProcessingBlock(%@): failed to load tombstone events: %@", buf, 0x16u);
    }
  }

  if (*(*&v63[8] + 40))
  {
    v29 = location;
    location = 0;

    v30 = *(*&v63[8] + 40);
    obj = location;
    v31 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v30 requiringSecureCoding:1 error:&obj];
    objc_storeStrong(&location, obj);
    if (v31)
    {
      v32 = a1[2].i64[0];
      v33 = a1[3].u8[0];
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __77__PPRecordStorageHelper_duetEventDeletionProcessingBlockWithDatabase_client___block_invoke_159;
      v41[3] = &unk_278977CD8;
      v34 = v31;
      v35 = a1[2].i64[1];
      v42 = v34;
      v43 = v35;
      [v32 writeTransactionWithClient:v33 block:v41];
      v36 = v42;
    }

    else
    {
      v36 = pp_default_log_handle();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
      {
        v39 = *(a1[2].i64[1] + 8);
        *buf = 138412546;
        v58 = v39;
        v59 = 2112;
        v60 = location;
        _os_log_debug_impl(&dword_23224A000, v36, OS_LOG_TYPE_DEBUG, "dkEventDeletionProcessingBlock(%@): failed to serialize NSDate: %@", buf, 0x16u);
      }
    }
  }

  _Block_object_dispose(v63, 8);
  _Block_object_dispose(&v51, 8);
}

void __77__PPRecordStorageHelper_duetEventDeletionProcessingBlockWithDatabase_client___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = [PPSQLKVStore loadBlobForKey:*(v3 + 64) transaction:a2];
    if (v4)
    {
      v11 = 0;
      v5 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v4 error:&v11];
      v6 = v11;
      if (!v5)
      {
        v7 = pp_default_log_handle();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v10 = *(v3 + 64);
          *buf = 138412546;
          v13 = v10;
          v14 = 2112;
          v15 = v6;
          _os_log_error_impl(&dword_23224A000, v7, OS_LOG_TYPE_ERROR, "Failed to unarchive NSDate for KVS key %@: %@", buf, 0x16u);
        }
      }
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;
}

void __77__PPRecordStorageHelper_duetEventDeletionProcessingBlockWithDatabase_client___block_invoke_157(uint64_t a1, void *a2)
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(a1 + 56);
  v5 = *(*(a1 + 48) + 8);
  v8 = *(v5 + 40);
  v6 = (v5 + 40);
  v7 = v8;
  v9 = a2;
  v10 = v2;
  v11 = v10;
  v34 = v3;
  if (v3)
  {
    v28 = v4;
    v30 = v10;
    v33 = v6;
    v12 = [v9 lastObject];
    v13 = v12;
    if (v12)
    {
      v7 = [v12 startDate];
      v14 = v7;
    }

    v29 = v13;
    v32 = v7;
    v15 = objc_opt_new();
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v31 = v9;
    v16 = v9;
    v17 = [v16 countByEnumeratingWithState:&v35 objects:v43 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v36;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v36 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v35 + 1) + 8 * i);
          v22 = [v21 stringValue];

          if (v22 && (v23 = objc_alloc(MEMORY[0x277CCAD78]), [v21 stringValue], v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v23, "initWithUUIDString:", v24), v24, v25))
          {
            [v15 addObject:v25];
          }

          else
          {
            v25 = pp_default_log_handle();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              v26 = *(v34 + 8);
              v27 = [v21 stringValue];
              *buf = 138412546;
              *&buf[4] = v26;
              *&buf[12] = 2112;
              *&buf[14] = v27;
              _os_log_error_impl(&dword_23224A000, v25, OS_LOG_TYPE_ERROR, "dkEventDeletionProcessingBlock(%@): tombstone event contains bad UUIDString: %@", buf, 0x16u);
            }
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v35 objects:v43 count:16];
      }

      while (v18);
    }

    v11 = v30;
    if ([v15 count])
    {
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __87__PPRecordStorageHelper__processTombstoneEventBatch_database_client_lastTombstoneDate___block_invoke;
      v40 = &unk_278977CD8;
      v41 = v34;
      v42 = v15;
      [v30 writeTransactionWithClient:v28 block:buf];
    }

    v7 = v32;
    v6 = v33;
    v9 = v31;
  }

  objc_storeStrong(v6, v7);
}

void __87__PPRecordStorageHelper__processTombstoneEventBatch_database_client_lastTombstoneDate___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v3)
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = a2;
    v7 = [[v5 alloc] initWithFormat:@"SELECT id FROM %@ WHERE dk_event_id IN _pas_nsarray(:eventUUIDBlobs) AND is_remote", v3[1]];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __79__PPRecordStorageHelper__cleanDatabaseOfCloudSyncedEventsWithUUIDs_txnWitness___block_invoke;
    v8[3] = &unk_2789743E8;
    v9 = v4;
    v10 = v3;
    [(PPRecordStorageHelper *)v3 _deleteRecordsWithRowIdsFromQuery:v7 txnWitness:v6 atLeastOneRecordClusterRemoved:0 deletedCount:0 bind:v8];
  }
}

void __79__PPRecordStorageHelper__cleanDatabaseOfCloudSyncedEventsWithUUIDs_txnWitness___block_invoke(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __79__PPRecordStorageHelper__cleanDatabaseOfCloudSyncedEventsWithUUIDs_txnWitness___block_invoke_2;
  v5[3] = &unk_278972DF8;
  v2 = *(a1 + 32);
  v5[4] = *(a1 + 40);
  v3 = a2;
  v4 = [v2 _pas_mappedArrayWithTransform:v5];
  [v3 bindNamedParam:":eventUUIDBlobs" toNSArray:v4];
}

- (id)rowIdsForRecordsToDropMakingRoomForCount:(unsigned int)count txnWitness:(id)witness
{
  witnessCopy = witness;
  v8 = objc_opt_new();
  v9 = [witnessCopy db];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __77__PPRecordStorageHelper_rowIdsForRecordsToDropMakingRoomForCount_txnWitness___block_invoke;
  v15[3] = &unk_278976ED0;
  countCopy = count;
  v15[4] = self;
  v16 = witnessCopy;
  v18 = a2;
  v10 = v8;
  v17 = v10;
  v11 = witnessCopy;
  [v9 readTransaction:v15];

  v12 = v17;
  v13 = v10;

  return v10;
}

void __77__PPRecordStorageHelper_rowIdsForRecordsToDropMakingRoomForCount_txnWitness___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  LODWORD(v3) = *(v3 + 32);
  v4 = *(a1 + 64);
  v5 = v3 >= v4;
  v6 = v3 - v4;
  if (v5)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = [v2 db];
  v9 = [v8 numberOfRowsInTable:*(*(a1 + 32) + 8)];

  if (v9 < 0)
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:*(a1 + 56) object:v9 file:*(*(a1 + 32) + 8) lineNumber:? description:?];
  }

  v10 = v9 - v7;
  if (v9 > v7)
  {
    if (v10 <= 0)
    {
      v15 = [MEMORY[0x277CCA890] currentHandler];
      [v15 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"PPRecordStorageHelper.m" lineNumber:304 description:@"Removing non-positive row count"];
    }

    v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"SELECT rt.id FROM %@ AS rt INNER JOIN sources AS src ON rt.source_id = src.id ORDER BY src.seconds_from_1970 ASC LIMIT :rowsToRemove ", *(*(a1 + 32) + 8)];
    v12 = [*(*(a1 + 32) + 8) UTF8String];
    v13 = [*(a1 + 40) db];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __77__PPRecordStorageHelper_rowIdsForRecordsToDropMakingRoomForCount_txnWitness___block_invoke_2;
    v19[3] = &__block_descriptor_40_e29_v16__0___PASSqliteStatement_8l;
    v19[4] = v10;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __77__PPRecordStorageHelper_rowIdsForRecordsToDropMakingRoomForCount_txnWitness___block_invoke_3;
    v16[3] = &unk_278972D80;
    v17 = *(a1 + 48);
    v18 = v12;
    [v13 prepAndRunQuery:v11 onPrep:v19 onRow:v16 onError:0];
  }
}

- (void)truncateRecordsByDroppingOldestMakingRoomForCount:(unsigned int)count txnWitness:(id)witness
{
  witnessCopy = witness;
  v7 = [witnessCopy db];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __86__PPRecordStorageHelper_truncateRecordsByDroppingOldestMakingRoomForCount_txnWitness___block_invoke;
  v9[3] = &unk_278978E70;
  countCopy = count;
  v9[4] = self;
  v10 = witnessCopy;
  v8 = witnessCopy;
  [v7 writeTransaction:v9];
}

void __86__PPRecordStorageHelper_truncateRecordsByDroppingOldestMakingRoomForCount_txnWitness___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 rowIdsForRecordsToDropMakingRoomForCount:*(a1 + 48) txnWitness:*(a1 + 40)];
  [v2 deleteRecordsForRowIds:v3 txnWitness:*(a1 + 40) atLeastOneClusterRemoved:0 deletedCount:0];
}

- (BOOL)decayFeedbackWithDatabase:(id)database client:(unsigned __int8)client decayRate:(double)rate
{
  clientCopy = client;
  databaseCopy = database;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __68__PPRecordStorageHelper_decayFeedbackWithDatabase_client_decayRate___block_invoke;
  v11[3] = &unk_278972D58;
  v11[4] = self;
  v11[5] = &v12;
  *&v11[6] = rate;
  if ([databaseCopy writeTransactionWithClient:clientCopy timeoutInSeconds:v11 block:5.0])
  {
    v9 = *(v13 + 24);
  }

  else
  {
    v9 = 0;
  }

  _Block_object_dispose(&v12, 8);

  return v9 & 1;
}

void __68__PPRecordStorageHelper_decayFeedbackWithDatabase_client_decayRate___block_invoke(void *a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  context = objc_autoreleasePoolPush();
  v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@_lastDecayDate", *(a1[4] + 16)];
  v5 = [PPSQLKVStore loadBlobForKey:v4 transaction:v3];
  if (v5)
  {
    v22 = 0;
    v6 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v5 error:&v22];
    v7 = v22;
    if (!v6)
    {
      [PPSQLKVStore removeBlobForKey:v4 transaction:v3];
      v15 = pp_default_log_handle();
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
LABEL_12:

        v6 = 0;
        goto LABEL_17;
      }

      *buf = 138412546;
      v24 = v4;
      v25 = 2112;
      v26 = v7;
      v16 = "Clearing key %@ because the blob failed to deserialize: %@";
LABEL_19:
      _os_log_error_impl(&dword_23224A000, v15, OS_LOG_TYPE_ERROR, v16, buf, 0x16u);
      goto LABEL_12;
    }

    [v6 timeIntervalSinceNow];
    v9 = v8 / -86400.0;
    if (v8 / -86400.0 < 0.25)
    {
      *(*(a1[5] + 8) + 24) = 1;
      goto LABEL_17;
    }
  }

  else
  {
    v7 = 0;
    v9 = 1.0;
  }

  v10 = v7;
  v11 = MEMORY[0x277CCAAB0];
  v12 = objc_opt_new();
  v21 = v10;
  v6 = [v11 archivedDataWithRootObject:v12 requiringSecureCoding:1 error:&v21];
  v7 = v21;

  if (!v6)
  {
    v15 = pp_default_log_handle();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    *buf = 138412546;
    v24 = v4;
    v25 = 2112;
    v26 = v7;
    v16 = "Unable to serialize date for key %@: %@";
    goto LABEL_19;
  }

  v13 = [v3 db];
  v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"UPDATE %@ SET pseudocount = :decayFactor * pseudocount", *(a1[4] + 16), context];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __68__PPRecordStorageHelper_decayFeedbackWithDatabase_client_decayRate___block_invoke_131;
  v20[3] = &__block_descriptor_48_e29_v16__0___PASSqliteStatement_8l;
  v20[4] = a1[6];
  *&v20[5] = v9;
  *(*(a1[5] + 8) + 24) = [v13 prepAndRunQuery:v14 onPrep:v20 onRow:0 onError:0];

  if (*(*(a1[5] + 8) + 24))
  {
    [PPSQLKVStore storeBlob:v6 forKey:v4 transaction:v3];
  }

  else
  {
    v17 = pp_default_log_handle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = *(a1[4] + 16);
      *buf = 138412290;
      v24 = v18;
      _os_log_impl(&dword_23224A000, v17, OS_LOG_TYPE_INFO, "Decaying feedback counts UPSERT transaction failed for table %@", buf, 0xCu);
    }
  }

LABEL_17:

  objc_autoreleasePoolPop(context);
}

uint64_t __68__PPRecordStorageHelper_decayFeedbackWithDatabase_client_decayRate___block_invoke_131(uint64_t a1, void *a2)
{
  v3 = exp(-(*(a1 + 32) * *(a1 + 40)));

  return [a2 bindNamedParam:":decayFactor" toDouble:v3];
}

- (BOOL)storeFeedback:(id)feedback database:(id)database client:(unsigned __int8)client lowercaseItemStrings:(BOOL)strings limit:(unsigned int)limit
{
  clientCopy = client;
  feedbackCopy = feedback;
  databaseCopy = database;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  timestamp = [feedbackCopy timestamp];
  [timestamp timeIntervalSince1970];
  v16 = v15;

  v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"INSERT INTO %@ (item_string, feedback_type, last_update_seconds_from_1970) VALUES (:itemString, :feedbackType, :lastUpdateSecondsFrom1970) ON CONFLICT(item_string, feedback_type) DO UPDATE SET pseudocount = pseudocount + 1, last_update_seconds_from_1970 = :lastUpdateSecondsFrom1970", self->_feedbackTable];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __82__PPRecordStorageHelper_storeFeedback_database_client_lowercaseItemStrings_limit___block_invoke;
  v21[3] = &unk_278972D30;
  v18 = feedbackCopy;
  limitCopy = limit;
  v22 = v18;
  v25 = &v29;
  v19 = v17;
  stringsCopy = strings;
  v26 = v16;
  v23 = v19;
  selfCopy = self;
  [databaseCopy writeTransactionWithClient:clientCopy block:v21];
  LOBYTE(clientCopy) = *(v30 + 24);

  _Block_object_dispose(&v29, 8);
  return clientCopy;
}

void __82__PPRecordStorageHelper_storeFeedback_database_client_lowercaseItemStrings_limit___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) feedbackItems];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __82__PPRecordStorageHelper_storeFeedback_database_client_lowercaseItemStrings_limit___block_invoke_2;
  v13[3] = &unk_278972D08;
  v18 = *(a1 + 72);
  v16 = *(a1 + 56);
  v5 = v3;
  v14 = v5;
  v15 = *(a1 + 40);
  v19 = *(a1 + 76);
  v17 = *(a1 + 64);
  [v4 enumerateObjectsUsingBlock:v13];

  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    v6 = [v5 db];
    v7 = [v6 numberOfRowsInTable:*(*(a1 + 48) + 16)];

    if (v7 > *(a1 + 72))
    {
      v8 = objc_autoreleasePoolPush();
      v9 = v7 - *(a1 + 72);
      v10 = [v5 db];
      v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"DELETE FROM %@ ORDER BY last_update_seconds_from_1970 LIMIT :excessRowCount", *(*(a1 + 48) + 16)];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __82__PPRecordStorageHelper_storeFeedback_database_client_lowercaseItemStrings_limit___block_invoke_4;
      v12[3] = &__block_descriptor_40_e29_v16__0___PASSqliteStatement_8l;
      v12[4] = v9;
      *(*(*(a1 + 56) + 8) + 24) = [v10 prepAndRunQuery:v11 onPrep:v12 onRow:0 onError:0];

      objc_autoreleasePoolPop(v8);
    }
  }
}

void __82__PPRecordStorageHelper_storeFeedback_database_client_lowercaseItemStrings_limit___block_invoke_2(uint64_t a1, void *a2, unint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if (*(a1 + 64) <= a3)
  {
    *a4 = 1;
  }

  else
  {
    v8 = [*(a1 + 32) db];
    v9 = *(a1 + 40);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __82__PPRecordStorageHelper_storeFeedback_database_client_lowercaseItemStrings_limit___block_invoke_3;
    v10[3] = &unk_278972CE0;
    v13 = *(a1 + 68);
    v11 = v7;
    v12 = *(a1 + 56);
    *(*(*(a1 + 48) + 8) + 24) = [v8 prepAndRunQuery:v9 onPrep:v10 onRow:0 onError:0];

    if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
    {
      *a4 = 1;
    }
  }
}

void __82__PPRecordStorageHelper_storeFeedback_database_client_lowercaseItemStrings_limit___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 48);
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 itemString];
  v7 = v6;
  if (v3 == 1)
  {
    v9 = v6;
    v8 = [v6 lowercaseString];

    v7 = v8;
  }

  v10 = v7;
  [v5 bindNamedParam:":itemString" toNSString:v7];
  [v5 bindNamedParam:":feedbackType" toInteger:{objc_msgSend(*(a1 + 32), "itemFeedbackType")}];
  [v5 bindNamedParam:":lastUpdateSecondsFrom1970" toDouble:*(a1 + 40)];
}

- (id)decayedFeedbackCountsForItemString:(id)string database:(id)database client:(unsigned __int8)client
{
  clientCopy = client;
  v54 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  databaseCopy = database;
  v48 = 0;
  v49 = &v48;
  v50 = 0x2020000000;
  v51 = 0;
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__5140;
  v46 = __Block_byref_object_dispose__5141;
  v47 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"SELECT MAX(last_update_seconds_from_1970) AS latest_date, SUM(CASE WHEN feedback_type = :engagedExplicitly THEN pseudocount END) AS engaged_explicitly, SUM(CASE WHEN feedback_type = :engagedImplicitly THEN pseudocount END) AS engaged_implicitly, SUM(CASE WHEN feedback_type = :rejectedExplicitly THEN pseudocount END) AS rejected_explicitly, SUM(CASE WHEN feedback_type = :rejectedImplicitly THEN pseudocount END) AS rejected_implicitly FROM %@ WHERE item_string = :itemString", self->_feedbackTable];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __76__PPRecordStorageHelper_decayedFeedbackCountsForItemString_database_client___block_invoke;
  v17[3] = &unk_278972CB8;
  v20 = &v48;
  v11 = v10;
  v18 = v11;
  v12 = stringCopy;
  v19 = v12;
  v21 = &v42;
  v22 = &v38;
  v23 = &v34;
  v24 = &v30;
  v25 = &v26;
  [databaseCopy readTransactionWithClient:clientCopy block:v17];
  if (v49[3])
  {
    v13 = [PPDecayedFeedbackCounts alloc];
    v14 = [(PPDecayedFeedbackCounts *)v13 initWithLatestDate:v43[5] engagedExplicitly:v39[3] engagedImplicitly:v35[3] rejectedExplicitly:v31[3] rejectedImplicitly:v27[3]];
  }

  else
  {
    v15 = pp_default_log_handle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v53 = clientCopy;
      _os_log_error_impl(&dword_23224A000, v15, OS_LOG_TYPE_ERROR, "Error accumulating feedback counts with database client %hhu", buf, 8u);
    }

    v14 = 0;
  }

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v42, 8);

  _Block_object_dispose(&v48, 8);

  return v14;
}

void __76__PPRecordStorageHelper_decayedFeedbackCountsForItemString_database_client___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 db];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __76__PPRecordStorageHelper_decayedFeedbackCountsForItemString_database_client___block_invoke_2;
  v10[3] = &unk_278978CF8;
  v4 = *(a1 + 32);
  v11 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __76__PPRecordStorageHelper_decayedFeedbackCountsForItemString_database_client___block_invoke_3;
  v6[3] = &unk_278972C90;
  v5 = *(a1 + 72);
  v7 = *(a1 + 56);
  v8 = v5;
  v9 = *(a1 + 88);
  *(*(*(a1 + 48) + 8) + 24) = [v3 prepAndRunQuery:v4 onPrep:v10 onRow:v6 onError:0];
}

void __76__PPRecordStorageHelper_decayedFeedbackCountsForItemString_database_client___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 bindNamedParam:":engagedExplicitly" toInteger:1];
  [v3 bindNamedParam:":engagedImplicitly" toInteger:2];
  [v3 bindNamedParam:":rejectedExplicitly" toInteger:3];
  [v3 bindNamedParam:":rejectedImplicitly" toInteger:4];
  [v3 bindNamedParam:":itemString" toNSString:*(a1 + 32)];
}

uint64_t __76__PPRecordStorageHelper_decayedFeedbackCountsForItemString_database_client___block_invoke_3(void *a1, void *a2)
{
  v3 = MEMORY[0x277CBEAA8];
  v4 = a2;
  v5 = [[v3 alloc] initWithTimeIntervalSince1970:{objc_msgSend(v4, "getInt64ForColumnAlias:", "latest_date")}];
  v6 = *(a1[4] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  [v4 getDoubleForColumnAlias:"engaged_explicitly"];
  *(*(a1[5] + 8) + 24) = v8;
  [v4 getDoubleForColumnAlias:"engaged_implicitly"];
  *(*(a1[6] + 8) + 24) = v9;
  [v4 getDoubleForColumnAlias:"rejected_explicitly"];
  *(*(a1[7] + 8) + 24) = v10;
  [v4 getDoubleForColumnAlias:"rejected_implicitly"];
  v12 = v11;

  *(*(a1[8] + 8) + 24) = v12;
  return *MEMORY[0x277D42698];
}

- (BOOL)clearWithDatabase:(id)database client:(unsigned __int8)client deletedCount:(unint64_t *)count error:(id *)error clearExternalTableReferences:(id)references
{
  clientCopy = client;
  v24 = *MEMORY[0x277D85DE8];
  referencesCopy = references;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __98__PPRecordStorageHelper_clearWithDatabase_client_deletedCount_error_clearExternalTableReferences___block_invoke;
  v19[3] = &unk_278972C68;
  v13 = referencesCopy;
  v19[4] = self;
  v20 = v13;
  countCopy = count;
  [database writeTransactionWithClient:clientCopy block:v19];
  duetStorage = self->_duetStorage;
  if (duetStorage)
  {
    v15 = [(PPDKStorage *)duetStorage deleteAllEventsInEventStream:self->_duetStream error:error];
  }

  else
  {
    v16 = pp_default_log_handle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      name = [(_DKEventStream *)self->_duetStream name];
      *buf = 138412290;
      v23 = name;
      _os_log_debug_impl(&dword_23224A000, v16, OS_LOG_TYPE_DEBUG, "Suppressing _DKKnowledge %@ clear due to dkSyncEnabled=NO.", buf, 0xCu);
    }

    v15 = 1;
  }

  return v15;
}

void __98__PPRecordStorageHelper_clearWithDatabase_client_deletedCount_error_clearExternalTableReferences___block_invoke(void *a1, void *a2)
{
  v8 = a2;
  v3 = a1[5];
  if (v3)
  {
    (*(v3 + 16))(v3, v8);
  }

  v4 = a1[4];
  v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"SELECT id FROM %@", v4[1]];
  [(PPRecordStorageHelper *)v4 _deleteRecordsWithRowIdsFromQuery:v5 txnWitness:v8 atLeastOneRecordClusterRemoved:0 deletedCount:a1[6] bind:0];

  v6 = [v8 db];
  v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"DELETE FROM %@", *(a1[4] + 16)];
  [v6 prepAndRunQuery:v7 onPrep:0 onRow:0 onError:0];

  [PPSQLKVStore removeBlobForKey:*(a1[4] + 56) transaction:v8];
  [PPSQLKVStore removeBlobForKey:*(a1[4] + 64) transaction:v8];
}

- (id)uuidForStatement:(id)statement columnName:(const char *)name tableName:(const char *)tableName
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = [statement getNSDataForColumnName:name table:tableName];
  if ([v7 length] == 16)
  {
    v8 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:{objc_msgSend(v7, "bytes")}];
  }

  else
  {
    v9 = pp_default_log_handle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315650;
      nameCopy = name;
      v13 = 2080;
      tableNameCopy = tableName;
      v15 = 2048;
      v16 = [v7 length];
      _os_log_error_impl(&dword_23224A000, v9, OS_LOG_TYPE_ERROR, "column '%s' in table '%s' has blob of unexpected length %tu", &v11, 0x20u);
    }

    v8 = 0;
  }

  return v8;
}

- (id)blobFromUUID:(id)d
{
  v3 = MEMORY[0x277CBEB28];
  dCopy = d;
  v5 = [[v3 alloc] initWithLength:16];
  [dCopy getUUIDBytes:{objc_msgSend(v5, "mutableBytes")}];

  return v5;
}

- (PPRecordStorageHelper)initWithName:(id)name table:(id)table clusterIdentifierColumn:(id)column maxRecords:(unsigned int)records duetStorage:(id)storage duetStream:(id)stream sourceStorage:(id)sourceStorage
{
  nameCopy = name;
  tableCopy = table;
  columnCopy = column;
  storageCopy = storage;
  streamCopy = stream;
  sourceStorageCopy = sourceStorage;
  v30.receiver = self;
  v30.super_class = PPRecordStorageHelper;
  v18 = [(PPRecordStorageHelper *)&v30 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_table, table);
    columnCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@_fb_pseudocounts", tableCopy, streamCopy, storageCopy, columnCopy];
    feedbackTable = v19->_feedbackTable;
    v19->_feedbackTable = columnCopy;

    objc_storeStrong(&v19->_clusterIdentifierColumn, column);
    v19->_maxRecords = records;
    objc_storeStrong(&v19->_duetStorage, storage);
    objc_storeStrong(&v19->_duetStream, stream);
    nameCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"lastDK%@ImportDate", nameCopy];
    lastDuetImportDateKey = v19->_lastDuetImportDateKey;
    v19->_lastDuetImportDateKey = nameCopy;

    nameCopy2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"lastDK%@DeletionDate", nameCopy];
    lastDuetDeletionDateKey = v19->_lastDuetDeletionDateKey;
    v19->_lastDuetDeletionDateKey = nameCopy2;

    objc_storeStrong(&v19->_sourceStorage, sourceStorage);
  }

  return v19;
}

@end