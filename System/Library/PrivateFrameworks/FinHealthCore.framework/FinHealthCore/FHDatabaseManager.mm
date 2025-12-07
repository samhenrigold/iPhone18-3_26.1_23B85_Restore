@interface FHDatabaseManager
- (BOOL)_computeSingleAmountAggregateFeature:(id)feature;
- (BOOL)_computeSingleDatetimeAggregateFeature:(id)feature;
- (BOOL)_computeSingleMerchantAggregateFeature:(id)feature;
- (BOOL)_execute:(id)_execute;
- (BOOL)_executeRaw:(id)raw;
- (BOOL)_hasDeterministicRealtime:(id)realtime;
- (BOOL)_insertOrUpdateTransactionFeatures:(id)features compoundFeatures:(id)compoundFeatures transactionID:(id)d financeTransactionID:(id)iD;
- (BOOL)_isDatabaseCorrupt;
- (BOOL)_isEligibleForSchemaMigration;
- (BOOL)_predictAndPersistIncomeClassification:(id)classification dataId:(id)id dataType:(int64_t)type features:(id)features;
- (BOOL)_truncateDatabase;
- (BOOL)_updateTransaction:(id)transaction withNewInternalState:(unint64_t)state;
- (BOOL)computeAmountAggregateFeatures;
- (BOOL)computeDatetimeAggregateFeatures;
- (BOOL)computeMerchantAggregateFeatures;
- (BOOL)deleteAllFeatureRecordsForTransaction:(id)transaction;
- (BOOL)deleteAllMarkedTransactionFeatures;
- (BOOL)deleteAllRecordsFromTransactionFeatures;
- (BOOL)deleteAllRecordsInAccountInfoForTransactionSource:(id)source;
- (BOOL)deleteAllRecordsInPeerPaymentFeatures:(id)features;
- (BOOL)deleteAllRecordsInTransactions:(id)transactions;
- (BOOL)deleteBankConnectTransactionWithFinanceTransactionIdentifier:(id)identifier;
- (BOOL)deleteDatabase:(id *)database;
- (BOOL)deleteTaggedButDeletedEvent:(id)event;
- (BOOL)deleteTaggedEventsInTimeRange:(id)range startDate:(id)date comparatorOfEndDate:(id)endDate endDate:(id)a6;
- (BOOL)deleteTransactionWithIdentifier:(id)identifier;
- (BOOL)deleteWithRollBack:(BOOL)back SQL:(id)l args:(char *)args;
- (BOOL)executeAsPreparedStatement:(id)statement values:(id)values;
- (BOOL)groupingSchemaUpdate;
- (BOOL)insertFeatures:(id)features realtimeFeatures:(id)realtimeFeatures;
- (BOOL)insertFeaturesCompoundRealtime:(id)realtime realtimeFeatures:(id)features;
- (BOOL)insertFeaturesCompoundRealtimeWithoutEvents:(id)events realtimeFeatures:(id)features;
- (BOOL)insertFeaturesDeterminiticRealtime:(id)realtime realtimeFeatures:(id)features;
- (BOOL)insertFeaturesEvents:(id)events;
- (BOOL)insertFeaturesPredictedRealtime:(id)realtime realtimeFeatures:(id)features;
- (BOOL)insertGroupForTransaction:(id)transaction withGroup:(id)group type:(unint64_t)type;
- (BOOL)insertInstrumentationRecord:(id)record;
- (BOOL)insertModelPredictionLabel:(id)label modelVersion:(id)version label:(id)a5;
- (BOOL)insertModelRecord:(id)record;
- (BOOL)insertOrUpdateBankConnectAccount:(id)account;
- (BOOL)insertReceiptData:(id)data identifier:(id)identifier title:(id)title subtitle:(id)subtitle quantity:(unint64_t)quantity amount:(id)amount currencyCode:(id)code adamIdentifier:(unint64_t)self0;
- (BOOL)insertTransactionInInternalStateDirty:(id)dirty;
- (BOOL)recordPeerPaymentForecastingStatus:(unint64_t)status counterpartHandle:(id)handle amount:(id)amount;
- (BOOL)shouldCallGetAllTransactions;
- (BOOL)updateFinanceIdentifiers:(id)identifiers;
- (BOOL)updateGetAllStatus:(unint64_t)status;
- (BOOL)updatePeerPaymentAccountBalance:(id)balance amount:(id)amount currencyCode:(id)code;
- (BOOL)updateStateForTransaction:(id)transaction newState:(unint64_t)state;
- (BOOL)updateTransactionInternalStateByIdentifier:(id)identifier newInternalState:(unint64_t)state;
- (BOOL)updateTransactionsInternalStateToState:(id)state oldInternalState:(unint64_t)internalState newInternalState:(unint64_t)newInternalState;
- (FHFetchAllTransactionsDelegate)delegate;
- (id)_buildTransactionIdFilter:(id)filter;
- (id)_columnNamesForTable:(id)table;
- (id)_computeDisputeFeaturesForTransaction:(id)transaction;
- (id)_computePaymentFeaturesForTransaction:(id)transaction;
- (id)_createFeatureResponseFromFeatures:(id)features compoundFeatures:(id)compoundFeatures locale:(id)locale forTxnID:(id)d forApplication:(id)application;
- (id)_fetch:(id)_fetch;
- (id)_fetchv:(id)_fetchv args:(char *)args;
- (id)_filterAggregateFeatureByCurrentWindow:(id)window;
- (id)_filterPeriodicCategories:(id)categories;
- (id)_getAllTransactions:(unint64_t)transactions limit:(unint64_t)limit;
- (id)_getDisputeFeaturesForTransaction:(id)transaction;
- (id)_getTransactionByIdentifier:(id)identifier;
- (id)_getTransactionsMarkedForRecurrChange;
- (id)_lockFreeFetch:(id)fetch;
- (id)_predictAndPersistIncomeClassificationForGroupId:(id)id transactionIds:(id)ids finHealthIncomeClassifier:(id)classifier;
- (id)compoundFeaturesForTransaction:(id)transaction;
- (id)computeAndPersistTransactionGroupings;
- (id)featuresForTransaction:(id)transaction;
- (id)getAllPeerPaymentSignalsFilterDismissed:(BOOL)dismissed;
- (id)getCurrentCashBalance;
- (id)getExpectedWeeklySpend;
- (id)getFHAccounts;
- (id)getFHSmartFeatureByAmountType:(id)type;
- (id)getFHSmartFeatureByDateTimeType:(id)type;
- (id)getFHSmartFeatureByMerchantType:(id)type;
- (id)getFeaturePredicate:(id)predicate FHSmartFeatureAggregateType:(id)type;
- (id)getFilteredPeerPaymentForecastingSignals;
- (id)getRecurringTransactionIdentifiersByClass:(unint64_t)class;
- (id)getTaggedPastCalendarEvents;
- (id)getTransactionByFinanceTransactionIdentifier:(id)identifier;
- (id)getTransactionIdByServiceId:(id)id;
- (id)getTransactionIdsInTimeRangeFrom:(id)from to:(id)to;
- (id)getTransactionSmartFeaturesForApplication:(id)application;
- (id)getTransactionsByDetailedCategory:(id)category;
- (id)getTransactionsByInternalState:(unint64_t)state internalState:(unint64_t)internalState offSet:(unint64_t)set addCompoundFeatures:(BOOL)features;
- (id)init:(BOOL)init multiThreadingEnabled:(BOOL)enabled;
- (id)predictAndPersistIncomeClassificationForAllGroups:(id)groups;
- (id)processingDataForFeature:(id)feature;
- (id)reconstructTransaction:(id)transaction;
- (id)retrieveGroups;
- (id)transactionsByGroupId:(id)id;
- (int)streamTransactionsWithLimit:(unint64_t)limit internalState:(unint64_t)state offSet:(unint64_t)set onTransaction:(id)transaction;
- (int64_t)_mostRecentTransactionDate;
- (int64_t)_startingDateSmartFeatureComputation;
- (int64_t)getAccountCategoryForIdentifier:(id)identifier;
- (unint64_t)getTransactionInternalState:(id)state;
- (unint64_t)processingTimeForFeature:(id)feature;
- (unint64_t)streamGenericSQLFetch:(id)fetch predicate:(id)predicate sqlFetchQuery:(id)query;
- (unint64_t)streamQueryResults:(id)results usingFetchHandler:(id)handler;
- (void)_addColumnIfNotExists:(id)exists columnName:(id)name columnType:(id)type;
- (void)_checkUniqueConstraints:(id)constraints uniqueConstraintSet:(id)set;
- (void)_computeAllAggregateFeaturesWithTransactionId:(id)id;
- (void)_createDataDirectory;
- (void)_executeFeatureQuery:(id)query aggregatedFeatures:(id)features;
- (void)_executeSeparateQueriesForTransactionId:(id)id amountQueries:(id)queries dateTimeQueries:(id)timeQueries merchantQueries:(id)merchantQueries multiClassQuery:(id)query;
- (void)_executeSeparateQueriesForTransactionIds:(id)ids amountQueries:(id)queries dateTimeQueries:(id)timeQueries merchantQueries:(id)merchantQueries multiClassQuery:(id)query;
- (void)_instrumentationTableMigration;
- (void)_invertFeaturesForTransaction:(id)transaction featuresString:(id)string compoundFeatures:(id)features;
- (void)_logSchema:(id)schema;
- (void)_populateMerchantEntityRecurringClassHistograms:(id)histograms transaction:(id)transaction;
- (void)_rebuildTablesAndIndexes:(BOOL)indexes;
- (void)_updateAggregateTablesSchema;
- (void)clearCardProcessingHistory;
- (void)closeAndUnlock:(id)unlock;
- (void)computeAndPersistDisputeFeaturesForPendingTransactions;
- (void)computePaymentFeatures;
- (void)computeRecurringClassesWithMerchantEntityCounts:(id)counts peerPaymentCounts:(id)paymentCounts merchantDetailedCategoryCounts:(id)categoryCounts;
- (void)dealloc;
- (void)deleteAllDataForTransactionSourceIdentifier:(id)identifier force:(BOOL)force completion:(id)completion;
- (void)populateRecurringClassHistogramsWithMerchantDetailedCategoryCounts:(id)counts histogram:(id)histogram transaction:(id)transaction;
- (void)populateRecurringClassHistogramsWithPeerPaymentsCounts:(id)counts histogram:(id)histogram transaction:(id)transaction;
- (void)predictRecurringTransactions;
- (void)publishEventsToBiome;
- (void)retrieveAll;
- (void)updateProcessingTimeForFeature:(id)feature;
- (void)updateProcessingTimeForFeature:(id)feature data:(id)data;
@end

@implementation FHDatabaseManager

- (void)_createDataDirectory
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  _getDataDirectory = [(FHDatabaseManager *)self _getDataDirectory];
  v5 = 0;
  [defaultManager createDirectoryAtPath:_getDataDirectory withIntermediateDirectories:1 attributes:0 error:&v5];
}

- (BOOL)_isEligibleForSchemaMigration
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [(FHDatabaseManager *)self _fetch:@"select sch_version_id, sch_upgrade_status from fh_schema order by sch_id desc limit %d", 1];;
  v4 = [MEMORY[0x277CCA980] decimalNumberWithString:@"11.11"];
  v5 = [MEMORY[0x277CCA980] decimalNumberWithString:@"0.0"];
  if ([v3 next])
  {
    v6 = MEMORY[0x277CCA980];
    v7 = [v3 stringAtIndex:0];
    v8 = [v6 decimalNumberWithString:v7];

    v9 = [v3 unsignedIntegerAtIndex:1] == 2;
    v5 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = [MEMORY[0x277CCA980] decimalNumberWithString:@"0.0"];
  v11 = [v5 isEqual:v10];

  if (v11)
  {
    v12 = [MEMORY[0x277CBEAA8] now];
    [v12 timeIntervalSinceReferenceDate];
    v14 = v13;

    v15 = [(FHDatabaseManager *)self _execute:@"insert into fh_schema (sch_version_id, sch_upgrade_status, sch_date, sch_getall_status) values (%@, %d, %d, %d)", @"11.11", 2, v14, 0];
    v16 = FinHealthLogObject(@"FinHealthCore");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v17 = @"Fail";
      if (v15)
      {
        v17 = @"Success";
      }

      *buf = 138412290;
      v21 = v17;
      _os_log_impl(&dword_226DD4000, v16, OS_LOG_TYPE_DEBUG, "createSchemaVersionRecord: %@", buf, 0xCu);
    }
  }

  [(FHDatabaseManager *)self closeAndUnlock:v3];
  v18 = [v5 isEqual:v4];

  return v18 & v9 ^ 1;
}

- (void)_logSchema:(id)schema
{
  v9 = *MEMORY[0x277D85DE8];
  schema = [(FHDatabaseManager *)self _fetch:@"select sql from sqlite_master where type='table' and name=%@", schema];;
  if ([schema next])
  {
    v5 = FinHealthLogObject(@"FinHealthCore");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = [schema stringAtIndex:0];
      *buf = 138412290;
      v8 = v6;
      _os_log_impl(&dword_226DD4000, v5, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }
  }

  [(FHDatabaseManager *)self closeAndUnlock:schema];
}

- (void)_updateAggregateTablesSchema
{
  v48 = *MEMORY[0x277D85DE8];
  v3 = [(FHDatabaseManager *)self _fetch:@"select count(*) from PRAGMA_TABLE_INFO('features_datetime')"];;
  if ([v3 next])
  {
    v4 = [v3 intAtIndex:0];
    [(FHDatabaseManager *)self closeAndUnlock:v3];
    if (v4 <= 4)
    {
      v5 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"features_datetime", @"features_amount", @"features_detailed_category", 0}];
      v6 = FinHealthLogObject(@"FinHealthCore");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_226DD4000, v6, OS_LOG_TYPE_DEBUG, "Aggreagate tables are out of date. Drop and re-create", buf, 2u);
      }

      v7 = FinHealthLogObject(@"FinHealthCore");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_226DD4000, v7, OS_LOG_TYPE_DEBUG, "Schema before change:", buf, 2u);
      }

      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v8 = v5;
      v9 = [v8 countByEnumeratingWithState:&v41 objects:v47 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v42;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v42 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v41 + 1) + 8 * i);
            [(FHDatabaseManager *)self _logSchema:v13];
            v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"drop table if exists %@", v13];;
            [(FHDatabaseManager *)self _executeRaw:v14];
          }

          v10 = [v8 countByEnumeratingWithState:&v41 objects:v47 count:16];
        }

        while (v10);
      }

      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"create table %@ %@", @"features_merchant", @"(merchant_aggregate_id integer primary key autoincrement, merchant_aggregate_type text, merchant_aggregate_value text, start_date integer, end_date integer, UNIQUE(merchant_aggregate_type, start_date, end_date))"];;
      [(FHDatabaseManager *)self _executeRaw:v15];

      v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"create table %@ %@", @"features_detailed_category", @"(category_aggregate_id integer primary key autoincrement, detailed_category text, amount integer, transaction_count integer, country_code text, recurring_transaction_ratio real, time_of_day integer, time_window integer, start_date real, end_date real, UNIQUE(detailed_category, time_of_day, time_window, country_code))"];;
      [(FHDatabaseManager *)self _executeRaw:v16];

      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"create table %@ %@", @"features_datetime", @"(datetime_aggregate_id integer primary key autoincrement, datetime_aggregate_type text, datetime_aggregate_value_start_date integer, datetime_aggregate_value_end_date integer, start_date integer, end_date integer, UNIQUE(datetime_aggregate_type, start_date, end_date))"];;
      [(FHDatabaseManager *)self _executeRaw:v17];

      v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"create table %@ %@", @"features_amount", @"(amount_aggregate_id integer primary key autoincrement, amount_aggregate_type text, amount_aggregate_value integer, comparison_operator text, start_date integer, end_date integer, UNIQUE(amount_aggregate_type, start_date, end_date))"];;
      [(FHDatabaseManager *)self _executeRaw:v18];

      v19 = FinHealthLogObject(@"FinHealthCore");
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_226DD4000, v19, OS_LOG_TYPE_DEBUG, "Schema after change:", buf, 2u);
      }

      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v20 = v8;
      v21 = [v20 countByEnumeratingWithState:&v37 objects:v46 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v38;
        do
        {
          for (j = 0; j != v22; ++j)
          {
            if (*v38 != v23)
            {
              objc_enumerationMutation(v20);
            }

            [(FHDatabaseManager *)self _logSchema:*(*(&v37 + 1) + 8 * j)];
          }

          v22 = [v20 countByEnumeratingWithState:&v37 objects:v46 count:16];
        }

        while (v22);
      }
    }
  }

  else
  {
    [(FHDatabaseManager *)self closeAndUnlock:v3];
  }

  v25 = [(PQLConnection *)self->_db fetch:@"select sql from sqlite_master where type='table' and name=%@;", @"features_events"];

  if ([v25 next])
  {
    v26 = [v25 stringAtIndex:0];
  }

  else
  {
    v26 = &stru_283A7B918;
  }

  v36 = v25;
  [v25 close];
  v27 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@""];;
  v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"create table %@ %@", @"features_events", @"(e_id integer primary key autoincrement, e_identifier text, start_date integer, end_date integer, UNIQUE(e_identifier, start_date, end_date))"];;
  v35 = v26;
  lowercaseString = [(__CFString *)v26 lowercaseString];
  v30 = [lowercaseString stringByTrimmingCharactersInSet:v27];
  lowercaseString2 = [v28 lowercaseString];
  v32 = [lowercaseString2 stringByTrimmingCharactersInSet:v27];
  v33 = [v30 isEqualToString:v32];

  if ((v33 & 1) == 0)
  {
    [(FHDatabaseManager *)self _logSchema:@"features_events"];
    v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"drop table if exists %@", @"features_events"];;
    [(FHDatabaseManager *)self _executeRaw:v34];

    [(FHDatabaseManager *)self _executeRaw:v28];
    [(FHDatabaseManager *)self _logSchema:@"features_events"];
  }
}

- (id)init:(BOOL)init multiThreadingEnabled:(BOOL)enabled
{
  v52 = *MEMORY[0x277D85DE8];
  v49.receiver = self;
  v49.super_class = FHDatabaseManager;
  v5 = [(FHDatabaseManager *)&v49 init:init];
  if (v5)
  {
    v6 = MEMORY[0x277CCA980];
    86400 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", 86400];
    v8 = [v6 decimalNumberWithString:86400];
    secondsInDay = v5->_secondsInDay;
    v5->_secondsInDay = v8;

    v10 = MEMORY[0x277CCA980];
    0x4000000000000000 = [MEMORY[0x277CCACA8] stringWithFormat:@"%f", 0x4000000000000000];
    v12 = [v10 decimalNumberWithString:0x4000000000000000];
    decimalRmseThreshold = v5->_decimalRmseThreshold;
    v5->_decimalRmseThreshold = v12;

    v14 = objc_opt_new();
    amountAggregatesCache = v5->_amountAggregatesCache;
    v5->_amountAggregatesCache = v14;

    v16 = objc_opt_new();
    merchantAggregatesCache = v5->_merchantAggregatesCache;
    v5->_merchantAggregatesCache = v16;

    v18 = objc_opt_new();
    dateTimeAggregatesCache = v5->_dateTimeAggregatesCache;
    v5->_dateTimeAggregatesCache = v18;

    _getDataDirectory = [(FHDatabaseManager *)v5 _getDataDirectory];
    v21 = objc_alloc_init(MEMORY[0x277D82C00]);
    db = v5->_db;
    v5->_db = v21;

    v5->_transactionFeaturesOffset = 0;
    *&v5->_lockDatabaseBookKeeping._os_unfair_lock_opaque = 0;
    *&v5->_lockDatabaseFetch._os_unfair_lock_opaque = 0;
    v5->_lockSQLStreaming._os_unfair_lock_opaque = 0;
    v23 = objc_opt_new();
    transactionFeaturesCache = v5->_transactionFeaturesCache;
    v5->_transactionFeaturesCache = v23;

    [(PQLConnection *)v5->_db setSqliteErrorHandler:&__block_literal_global_119];
    [(PQLConnection *)v5->_db setBusyHandler:&__block_literal_global_123];
    if (_getDataDirectory)
    {
      [(FHDatabaseManager *)v5 _createDataDirectory];
      getDatabaseFileName = [(FHDatabaseManager *)v5 getDatabaseFileName];
      v26 = MEMORY[0x277CBEBC0];
      v27 = [_getDataDirectory stringByAppendingPathComponent:getDatabaseFileName];
      v28 = [v26 URLWithString:v27];

      v29 = FinHealthLogObject(@"FinHealthCore");
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v51 = v28;
        _os_log_impl(&dword_226DD4000, v29, OS_LOG_TYPE_DEBUG, "dbUrl: %@", buf, 0xCu);
      }

      v30 = v5->_db;
      v48 = 0;
      v31 = [(PQLConnection *)v30 openAtURL:v28 withFlags:3211270 error:&v48];
      v32 = v48;
      v33 = [(PQLConnection *)v5->_db fetch:@"PRAGMA journal_mode=WAL"];
      if ([v33 next])
      {
        v34 = FinHealthLogObject(@"FinHealthCore");
        if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
        {
          v35 = [v33 stringAtIndex:0];
          *buf = 138412290;
          v51 = v35;
          _os_log_impl(&dword_226DD4000, v34, OS_LOG_TYPE_INFO, "Journal mode: %@", buf, 0xCu);
        }
      }

      [v33 close];
      if (v31)
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __48__FHDatabaseManager_init_multiThreadingEnabled___block_invoke_128;
        block[3] = &unk_2785CB008;
        v46 = v5;
        initCopy = init;
        if (init_multiThreadingEnabled__onceToken != -1)
        {
          dispatch_once(&init_multiThreadingEnabled__onceToken, block);
        }
      }
    }

    objc_initWeak(buf, v5);
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __48__FHDatabaseManager_init_multiThreadingEnabled___block_invoke_2;
    v43[3] = &unk_2785CB030;
    objc_copyWeak(&v44, buf);
    v36 = [FHBatchProcessor initWithBuilder:v43];
    batchProcessor = v5->_batchProcessor;
    v5->_batchProcessor = v36;

    v38 = [FHDatabaseEntity alloc];
    WeakRetained = objc_loadWeakRetained(buf);
    v40 = [(FHDatabaseEntity *)v38 initWithEntity:@"transactions" databaseManager:WeakRetained];
    transactionsEntity = v5->_transactionsEntity;
    v5->_transactionsEntity = v40;

    objc_destroyWeak(&v44);
    objc_destroyWeak(buf);
  }

  return v5;
}

void __48__FHDatabaseManager_init_multiThreadingEnabled___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a4;
  v8 = FinHealthLogObject(@"FinHealthCore");
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
  if (a3)
  {
    if (v9)
    {
LABEL_7:
      v10 = 138543618;
      v11 = v7;
      v12 = 2080;
      v13 = "[FHDatabaseManager init:multiThreadingEnabled:]_block_invoke";
      _os_log_impl(&dword_226DD4000, v8, OS_LOG_TYPE_ERROR, "Sqlite error: [%{public}@], %s", &v10, 0x16u);
    }
  }

  else
  {
    if (v9)
    {
      v10 = 138543618;
      v11 = v6;
      v12 = 2080;
      v13 = "[FHDatabaseManager init:multiThreadingEnabled:]_block_invoke";
      _os_log_impl(&dword_226DD4000, v8, OS_LOG_TYPE_ERROR, "Sqlite [no statement available] failed on %{public}@:, %s", &v10, 0x16u);
    }

    v8 = FinHealthLogObject(@"FinHealthCore");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }
  }
}

BOOL __48__FHDatabaseManager_init_multiThreadingEnabled___block_invoke_120(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = FinHealthLogObject(@"FinHealthCore");
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
  if (a3 >= 0xA)
  {
    if (v5)
    {
      v7 = 67109378;
      v8 = a3;
      v9 = 2080;
      v10 = "[FHDatabaseManager init:multiThreadingEnabled:]_block_invoke";
      _os_log_impl(&dword_226DD4000, v4, OS_LOG_TYPE_ERROR, "Exhautsed all retries :%d, %s", &v7, 0x12u);
    }
  }

  else
  {
    if (v5)
    {
      v7 = 67109378;
      v8 = a3;
      v9 = 2080;
      v10 = "[FHDatabaseManager init:multiThreadingEnabled:]_block_invoke";
      _os_log_impl(&dword_226DD4000, v4, OS_LOG_TYPE_ERROR, "Database is locked, retrying. retries :%d, %s", &v7, 0x12u);
    }

    sqlite3_sleep(200);
  }

  return a3 < 0xA;
}

void __48__FHDatabaseManager_init_multiThreadingEnabled___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [v3 enableMerchantCounts];
    [v3 setDatabaseManager:WeakRetained];
    [v3 addInternalState:2];
  }

  else
  {
    v5 = FinHealthLogObject(@"FinHealthCore");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315138;
      v7 = "[FHDatabaseManager init:multiThreadingEnabled:]_block_invoke_2";
      _os_log_impl(&dword_226DD4000, v5, OS_LOG_TYPE_ERROR, "%s strongSelf is nil", &v6, 0xCu);
    }
  }
}

- (BOOL)insertTransactionInInternalStateDirty:(id)dirty
{
  dirtyCopy = dirty;
  transactionServiceIdentifier = [dirtyCopy transactionServiceIdentifier];

  if (transactionServiceIdentifier)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __59__FHDatabaseManager_insertTransactionInInternalStateDirty___block_invoke;
    v11[3] = &unk_2785CB058;
    v12 = dirtyCopy;
    v6 = [FHDatabaseClauseFromBuilder initWithBuilder:v11];
    [(FHDatabaseEntity *)self->_transactionsEntity clearDataWithClauseBuilder:v6];
  }

  identifier = [dirtyCopy identifier];
  transactionServiceIdentifier2 = [dirtyCopy transactionServiceIdentifier];
  v9 = [(FHDatabaseManager *)self _execute:@"insert into transactions (t_identifier, t_service_identifier, t_fh_internal_state) values (%@, %@, %d)", identifier, transactionServiceIdentifier2, 1];

  return v9;
}

void __59__FHDatabaseManager_insertTransactionInInternalStateDirty___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 transactionServiceIdentifier];
  [v3 addStringClause:@"==" fieldName:@"transactions.t_service_identifier" expression:v4];
}

- (BOOL)updateFinanceIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  financeTransactionIdentifier = [identifiersCopy financeTransactionIdentifier];
  financeAccountIdentifier = [identifiersCopy financeAccountIdentifier];
  transactionServiceIdentifier = [identifiersCopy transactionServiceIdentifier];

  LOBYTE(self) = [(FHDatabaseManager *)self _execute:@"update transactions set t_finance_transaction_id = %@, a_finance_account_id = %@ where t_service_identifier == %@", financeTransactionIdentifier, financeAccountIdentifier, transactionServiceIdentifier];
  return self;
}

- (BOOL)updateTransactionInternalStateByIdentifier:(id)identifier newInternalState:(unint64_t)state
{
  v6 = [(FHDatabaseManager *)self getTransactionByIdentifier:identifier];
  LOBYTE(state) = [(FHDatabaseManager *)self _updateTransaction:v6 withNewInternalState:state];

  return state;
}

- (BOOL)_updateTransaction:(id)transaction withNewInternalState:(unint64_t)state
{
  transactionCopy = transaction;
  if (!self->_descriptionCleaner)
  {
    v6 = FinHealthLogObject(@"FinHealthCore");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_226DD4000, v6, OS_LOG_TYPE_DEBUG, "Creating FHBankConnectDescriptionCleaner", buf, 2u);
    }

    v7 = objc_alloc_init(FHBankConnectDescriptionCleaner);
    descriptionCleaner = self->_descriptionCleaner;
    self->_descriptionCleaner = v7;
  }

  v9 = MEMORY[0x277CCA980];
  amount = [transactionCopy amount];
  v11 = amount;
  if (amount)
  {
    objc_msgSend_decimalValue(amount);
  }

  else
  {
    *buf = 0;
    v104 = 0;
    v105 = 0;
  }

  v12 = [v9 decimalNumberWithDecimal:buf];

  defaultDatabaseAmountMultiplier = [MEMORY[0x277CCA980] defaultDatabaseAmountMultiplier];
  v14 = [v12 decimalNumberByMultiplyingBy:defaultDatabaseAmountMultiplier];
  intValue = [v14 intValue];

  transactionDate = [transactionCopy transactionDate];
  [transactionDate timeIntervalSinceReferenceDate];
  v17 = v16;

  transactionStatusChangedDate = [transactionCopy transactionStatusChangedDate];
  [transactionStatusChangedDate timeIntervalSinceReferenceDate];
  v20 = v19;

  if ([transactionCopy mapsMerchantID])
  {
    v102 = [MEMORY[0x277CCACA8] stringWithFormat:@"%llu", objc_msgSend(transactionCopy, "mapsMerchantID")];
  }

  else
  {
    v102 = 0;
  }

  if ([transactionCopy mapsMerchantBrandID])
  {
    v101 = [MEMORY[0x277CCACA8] stringWithFormat:@"%llu", objc_msgSend(transactionCopy, "mapsMerchantBrandID")];
  }

  else
  {
    v101 = 0;
  }

  merchantDetailedCategory = [transactionCopy merchantDetailedCategory];
  if (merchantDetailedCategory)
  {
    merchantDetailedCategory2 = [transactionCopy merchantDetailedCategory];
  }

  else
  {
    merchantDetailedCategory2 = @"undefined";
  }

  v100 = merchantDetailedCategory2;

  timeZone = [transactionCopy timeZone];
  if (timeZone)
  {
    v24 = MEMORY[0x277CCABB0];
    timeZone2 = [transactionCopy timeZone];
    v99 = [v24 numberWithInteger:{objc_msgSend(timeZone2, "secondsFromGMT")}];
  }

  else
  {
    v99 = 0;
  }

  peerPaymentCounterpartHandle = [transactionCopy peerPaymentCounterpartHandle];
  if (peerPaymentCounterpartHandle)
  {
    peerPaymentCounterpartHandle2 = [transactionCopy peerPaymentCounterpartHandle];
  }

  else
  {
    peerPaymentCounterpartHandle2 = 0;
  }

  if ([transactionCopy peerPaymentType])
  {
    peerPaymentType = [transactionCopy peerPaymentType];
  }

  else
  {
    peerPaymentType = 0;
  }

  transactionDescription = [transactionCopy transactionDescription];
  processedDescription = [transactionCopy processedDescription];
  v28 = processedDescription;
  selfCopy = self;
  if (processedDescription && [processedDescription length])
  {
    v97 = v28;
  }

  else
  {
    v29 = [(FHBankConnectDescriptionCleaner *)self->_descriptionCleaner cleanDescriptionForTransaction:transactionCopy];

    v97 = v29;
  }

  v80 = v20;
  v79 = v17;
  recurring = [transactionCopy recurring];
  disputeOpenDate = [transactionCopy disputeOpenDate];
  [disputeOpenDate timeIntervalSinceReferenceDate];
  v76 = v31;

  disputeLastUpdatedDate = [transactionCopy disputeLastUpdatedDate];
  [disputeLastUpdatedDate timeIntervalSinceReferenceDate];
  v74 = v33;

  financeAccountIdentifier = [transactionCopy financeAccountIdentifier];
  v35 = financeAccountIdentifier;
  v36 = &stru_283A7B918;
  if (financeAccountIdentifier)
  {
    v36 = financeAccountIdentifier;
  }

  v78 = v36;

  transactionServiceIdentifier = [transactionCopy transactionServiceIdentifier];
  financeTransactionIdentifier = [transactionCopy financeTransactionIdentifier];
  financeTransactionSharedIdentifier = [transactionCopy financeTransactionSharedIdentifier];
  financeTransactionSource = [transactionCopy financeTransactionSource];
  paymentHash = [transactionCopy paymentHash];
  transactionSourceIdentifier = [transactionCopy transactionSourceIdentifier];
  currencyCode = [transactionCopy currencyCode];
  transactionStatus = [transactionCopy transactionStatus];
  transactionSource = [transactionCopy transactionSource];
  cardType = [transactionCopy cardType];
  transactionType = [transactionCopy transactionType];
  accountType = [transactionCopy accountType];
  altDSID = [transactionCopy altDSID];
  receiptIdentifier = [transactionCopy receiptIdentifier];
  associatedReceiptUniqueID = [transactionCopy associatedReceiptUniqueID];
  merchantUniqueIdentifier = [transactionCopy merchantUniqueIdentifier];
  industryCode = [transactionCopy industryCode];
  name = [transactionCopy name];
  rawName = [transactionCopy rawName];
  category = [transactionCopy category];
  displayName = [transactionCopy displayName];
  street = [transactionCopy street];
  city = [transactionCopy city];
  state = [transactionCopy state];
  v54 = [transactionCopy zip];
  countryCode = [transactionCopy countryCode];
  country = [transactionCopy country];
  mapsMerchantResultProviderID = [transactionCopy mapsMerchantResultProviderID];
  mapsMerchantBrandResultProviderID = [transactionCopy mapsMerchantBrandResultProviderID];
  location = [transactionCopy location];
  [location coordinate];
  v40 = v39;
  location2 = [transactionCopy location];
  [location2 coordinate];
  v42 = v41;
  location3 = [transactionCopy location];
  [location3 verticalAccuracy];
  v44 = v43;
  location4 = [transactionCopy location];
  [location4 horizontalAccuracy];
  v46 = v45;
  disputeType = [transactionCopy disputeType];
  disputeStatus = [transactionCopy disputeStatus];
  proprietaryBankTransactionCode = [transactionCopy proprietaryBankTransactionCode];
  proprietaryBankTransactionIssuer = [transactionCopy proprietaryBankTransactionIssuer];
  [transactionCopy identifier];
  v50 = v52 = disputeType;
  v85 = [(FHDatabaseManager *)selfCopy _execute:@"update transactions set t_service_identifier = %@, t_finance_transaction_id = %@, t_finance_transaction_shared_id = %@, t_finance_transaction_source = %d, a_finance_account_id = %@, t_payment_hash = %@, t_source_identifier = %@, t_amount = %d, t_currencycode = %@, t_timezone = %@, t_date = %d, t_status = %d, t_status_changed_date = %d, t_source = %d, t_card_type = %d, t_type = %d, a_type = %d, t_altDSID = %@, t_receipt_identifier = %@, t_associated_receipt_unique_id = %@, t_fh_internal_state = %d, m_merchant_identifier = %@, m_industrycode = %d, m_name = %@, m_raw_name = %@, m_category = %d, m_detailed_category = %@, m_displayname = %@, m_street = %@, m_city = %@, m_state = %@, m_zip = %@, m_country_code = %@, m_country = %@, m_maps_merchant_id = %@, m_maps_merchant_result_id = %d, m_maps_merchant_brand_id = %@, m_maps_merchant_brand_result_id = %d, lat = %f, long = %f, v_accuracy = %f, h_accuracy = %f, dispute_type = %d, dispute_status = %d, peer_pay_counterpart = %@, peer_pay_type = %d, t_description = %@, processed_description = %@, peer_pay_is_recurring = %d, dispute_open_date = %d, dispute_last_updated_date = %d, proprietary_bank_transaction_code = %@, proprietary_bank_transaction_issuer = %@ where t_identifier == %@", transactionServiceIdentifier, financeTransactionIdentifier, financeTransactionSharedIdentifier, financeTransactionSource, v78, paymentHash, transactionSourceIdentifier, intValue, currencyCode, v99, v79, transactionStatus, v80, transactionSource, cardType, transactionType, accountType, altDSID, receiptIdentifier, associatedReceiptUniqueID, state, merchantUniqueIdentifier, industryCode, name, rawName, category, v100, displayName, street, city, state, v54, countryCode, country, v102, mapsMerchantResultProviderID, v101, mapsMerchantBrandResultProviderID, v40, v42, v44, v46, v52, disputeStatus, peerPaymentCounterpartHandle2, peerPaymentType, transactionDescription, v97, recurring, v76, v74, proprietaryBankTransactionCode, proprietaryBankTransactionIssuer, v50];

  return v85;
}

- (BOOL)updateTransactionsInternalStateToState:(id)state oldInternalState:(unint64_t)internalState newInternalState:(unint64_t)newInternalState
{
  v8 = MEMORY[0x277CCACA8];
  stateCopy = state;
  v10 = [v8 stringWithFormat:@"update transactions set t_fh_internal_state = %d where t_date >= %d and t_date <= %d and t_fh_internal_state %@ %d and t_fh_internal_state != %d", newInternalState, -[FHDatabaseManager _startingDateSmartFeatureComputation](self, "_startingDateSmartFeatureComputation"), -[FHDatabaseManager mostRecentTransactionDate](self, "mostRecentTransactionDate"), stateCopy, internalState, 6];

  LOBYTE(internalState) = [(FHDatabaseManager *)self _executeRaw:v10];
  return internalState;
}

- (BOOL)updateStateForTransaction:(id)transaction newState:(unint64_t)state
{
  transaction = [MEMORY[0x277CCACA8] stringWithFormat:@"update transactions set t_fh_internal_state = %d where t_identifier == '%@'", state, transaction];
  LOBYTE(self) = [(FHDatabaseManager *)self _executeRaw:transaction];

  return self;
}

- (BOOL)insertInstrumentationRecord:(id)record
{
  v24 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  v5 = FinHealthLogObject(@"FinHealthCore");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v23 = recordCopy;
    _os_log_impl(&dword_226DD4000, v5, OS_LOG_TYPE_DEBUG, "instrumentationRecord: %@", buf, 0xCu);
  }

  v6 = [recordCopy objectForKey:@"Source"];
  unsignedIntegerValue = [v6 unsignedIntegerValue];

  v8 = [recordCopy objectForKey:@"TagType"];
  unsignedIntegerValue2 = [v8 unsignedIntegerValue];

  v10 = [recordCopy objectForKey:@"PassType"];
  unsignedIntegerValue3 = [v10 unsignedIntegerValue];

  v12 = [MEMORY[0x277CBEAA8] now];
  [v12 timeIntervalSinceReferenceDate];
  v14 = v13;

  v15 = [recordCopy objectForKey:@"HeuristicIdentifier"];
  v16 = [recordCopy objectForKey:@"AccountState"];
  unsignedIntegerValue4 = [v16 unsignedIntegerValue];

  v18 = [recordCopy objectForKey:@"PaidUsingRing"];
  unsignedIntegerValue5 = [v18 unsignedIntegerValue];

  v20 = [(FHDatabaseManager *)self _execute:@"insert into features_instrumentation (tag_source, tag_type, tag_click_date, pass_type, heuristics_identifier, account_state, paid_using_ring) values (%d, %d, %d, %d, %@, %d, %d)", unsignedIntegerValue, unsignedIntegerValue2, v14, unsignedIntegerValue3, v15, unsignedIntegerValue4, unsignedIntegerValue5];
  return v20;
}

- (BOOL)insertReceiptData:(id)data identifier:(id)identifier title:(id)title subtitle:(id)subtitle quantity:(unint64_t)quantity amount:(id)amount currencyCode:(id)code adamIdentifier:(unint64_t)self0
{
  dataCopy = data;
  identifierCopy = identifier;
  titleCopy = title;
  subtitleCopy = subtitle;
  codeCopy = code;
  v19 = MEMORY[0x277CCA980];
  if (amount)
  {
    objc_msgSend_decimalValue(amount);
  }

  else
  {
    v27[0] = 0;
    v27[1] = 0;
    v28 = 0;
  }

  v20 = [v19 decimalNumberWithDecimal:v27];
  defaultDatabaseAmountMultiplier = [MEMORY[0x277CCA980] defaultDatabaseAmountMultiplier];
  v22 = [v20 decimalNumberByMultiplyingBy:defaultDatabaseAmountMultiplier];
  intValue = [v22 intValue];

  LOBYTE(intValue) = [(FHDatabaseManager *)self _execute:@"insert into fh_receipt_data(receiptIdentifier, line_item_index, title, subtitle, quantity, amount, currencyCode, adamIdentifier) values (%@, %@, %@, %@, %d, %d, %@, %d)", dataCopy, identifierCopy, titleCopy, subtitleCopy, quantity, intValue, codeCopy, adamIdentifier];
  return intValue;
}

- (BOOL)insertModelRecord:(id)record
{
  recordCopy = record;
  v5 = [recordCopy objectForKey:@"modelName"];
  v6 = [recordCopy objectForKey:@"modelVersion"];
  v7 = [recordCopy objectForKey:@"dataType"];
  unsignedIntegerValue = [v7 unsignedIntegerValue];

  v9 = [recordCopy objectForKey:@"dataIdentifier"];
  v10 = [recordCopy objectForKey:@"predictedScore"];
  [v10 doubleValue];
  v12 = v11;

  LOBYTE(self) = [(FHDatabaseManager *)self _execute:@"insert or replace into features_predicted_realtime (identifier, feature_name, feature_predicted_class, version, data_type, predicted_score) values (%@, %@, %d, %@, %d, %f)", v9, v5, 0, v6, unsignedIntegerValue, v12];
  [FHModel recordModelScore:recordCopy];

  return self;
}

- (unint64_t)getTransactionInternalState:(id)state
{
  identifier = [state identifier];
  v5 = [(FHDatabaseManager *)self _fetch:@"select * from transactions t where t.t_identifier == %@ order by t_date desc limit %d", identifier, 1];

  if ([v5 next])
  {
    v6 = [v5 unsignedIntegerAtIndex:22];
  }

  else
  {
    v6 = 0;
  }

  [(FHDatabaseManager *)self closeAndUnlock:v5];

  return v6;
}

- (id)getTransactionByFinanceTransactionIdentifier:(id)identifier
{
  identifier = [(PQLConnection *)self->_db fetch:@"select * from transactions where t_finance_transaction_id == %@", identifier];
  if ([identifier next])
  {
    v5 = [(FHDatabaseManager *)self reconstructTransaction:identifier];
  }

  else
  {
    v5 = 0;
  }

  [identifier close];

  return v5;
}

- (id)getTransactionIdByServiceId:(id)id
{
  idCopy = id;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __49__FHDatabaseManager_getTransactionIdByServiceId___block_invoke;
  v17[3] = &unk_2785CB058;
  v5 = idCopy;
  v18 = v5;
  v6 = [FHDatabaseClauseFromBuilder initWithBuilder:v17];
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy_;
  v15 = __Block_byref_object_dispose_;
  v16 = 0;
  transactionsEntity = self->_transactionsEntity;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __49__FHDatabaseManager_getTransactionIdByServiceId___block_invoke_146;
  v10[3] = &unk_2785CB080;
  v10[4] = &v11;
  [(FHDatabaseEntity *)transactionsEntity queryDataWithBlock:v6 logicalOperator:@"AND" selectFields:&unk_283A88128 usingBlock:v10];
  v8 = [v12[5] copy];
  _Block_object_dispose(&v11, 8);

  return v8;
}

uint64_t __49__FHDatabaseManager_getTransactionIdByServiceId___block_invoke_146(uint64_t a1, void *a2)
{
  *(*(*(a1 + 32) + 8) + 40) = [a2 stringAtIndex:0];

  return MEMORY[0x2821F96F8]();
}

- (id)_getTransactionByIdentifier:(id)identifier
{
  v4 = [(PQLConnection *)self->_db fetch:@"select * from transactions t where t.t_identifier == %@ order by t_date desc limit %d", identifier, 1];
  if ([v4 next])
  {
    v5 = [(FHDatabaseManager *)self reconstructTransaction:v4];
  }

  else
  {
    v5 = 0;
  }

  [v4 close];

  return v5;
}

- (id)transactionsByGroupId:(id)id
{
  idCopy = id;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  idCopy = [(FHDatabaseManager *)self _fetch:@"select t_identifier from fh_grouping where group_id == %@", idCopy];
  if ([idCopy next])
  {
    do
    {
      v7 = [idCopy objectAtIndex:0];
      stringValue = [v7 stringValue];

      v9 = [(FHDatabaseManager *)self getTransactionByIdentifier:stringValue];
      [v5 addObject:v9];
    }

    while (([idCopy next] & 1) != 0);
  }

  [(FHDatabaseManager *)self closeAndUnlock:idCopy];
  v10 = [v5 copy];

  return v10;
}

- (int)streamTransactionsWithLimit:(unint64_t)limit internalState:(unint64_t)state offSet:(unint64_t)set onTransaction:(id)transaction
{
  transactionCopy = transaction;
  v11 = [(FHDatabaseManager *)self _fetch:@"select * from transactions t where t_fh_internal_state == %d order by t_date desc limit %d offset %d", state, limit, set];
  v12 = 0;
  if ([v11 next])
  {
    do
    {
      v13 = objc_autoreleasePoolPush();
      v14 = [(FHDatabaseManager *)self reconstructTransaction:v11];
      transactionCopy[2](transactionCopy, v14);
      ++v12;

      objc_autoreleasePoolPop(v13);
    }

    while (([v11 next] & 1) != 0);
  }

  [(FHDatabaseManager *)self closeAndUnlock:v11];

  return v12;
}

- (id)getTransactionsByInternalState:(unint64_t)state internalState:(unint64_t)internalState offSet:(unint64_t)set addCompoundFeatures:(BOOL)features
{
  featuresCopy = features;
  v38 = *MEMORY[0x277D85DE8];
  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v12 = [(FHDatabaseManager *)self _fetch:@"select * from transactions t where t_fh_internal_state == %d order by t_date desc limit %d offset %d", internalState, state, set];
  if ([v12 next])
  {
    do
    {
      v13 = [(FHDatabaseManager *)self reconstructTransaction:v12];
      if ([v13 transactionType])
      {
        v14 = 0;
      }

      else
      {
        v14 = [v13 transactionStatus] == 1;
      }

      transactionType = [v13 transactionType];
      if (v14 || transactionType == 3 || [v13 transactionType] == 20 || objc_msgSend(v13, "transactionType") == 19 || objc_msgSend(v13, "transactionType") == 21)
      {
        [v11 addObject:v13];
      }
    }

    while (([v12 next] & 1) != 0);
  }

  [(FHDatabaseManager *)self closeAndUnlock:v12];
  if (featuresCopy)
  {
    v30 = v12;
    v31 = v11;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    obj = v11;
    v16 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v34;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v34 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v33 + 1) + 8 * i);
          identifier = [v20 identifier];
          v22 = [(FHDatabaseManager *)self compoundFeaturesForTransaction:identifier];

          v23 = [v22 objectForKey:@"FHSmartFeatureCompoundTypePointsOfInterest"];
          v24 = v23;
          if (v23 && [v23 count])
          {
            v25 = objc_alloc(MEMORY[0x277CBEAC0]);
            v26 = [MEMORY[0x277CBEA60] arrayWithArray:v24];
            v27 = [v25 initWithObjectsAndKeys:{v26, @"FHSmartFeatureCompoundTypePointsOfInterest", 0}];

            [v20 setCompoundFeatures:v27];
          }
        }

        v17 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v17);
    }

    v12 = v30;
    v11 = v31;
  }

  v28 = [MEMORY[0x277CBEA60] arrayWithArray:v11];

  return v28;
}

- (id)getTransactionsByDetailedCategory:(id)category
{
  categoryCopy = category;
  v5 = objc_opt_new();
  categoryCopy = [(FHDatabaseManager *)self _fetch:@"select * from transactions where m_detailed_category == %@ order by t_date desc", categoryCopy];
  if ([categoryCopy next])
  {
    do
    {
      v7 = [(FHDatabaseManager *)self reconstructTransaction:categoryCopy];
      [v5 addObject:v7];
    }

    while (([categoryCopy next] & 1) != 0);
  }

  [(FHDatabaseManager *)self closeAndUnlock:categoryCopy];
  v8 = [MEMORY[0x277CBEA60] arrayWithArray:v5];

  return v8;
}

- (id)getRecurringTransactionIdentifiersByClass:(unint64_t)class
{
  v5 = objc_opt_new();
  v6 = [(FHDatabaseManager *)self _fetch:@"select identifier from features_predicted_realtime where feature_name='FHSmartFeatureAggregateTypeRecurring' and feature_predicted_class=%d limit %d", class, -1];
  if ([v6 next])
  {
    do
    {
      v7 = [v6 stringAtIndex:0];
      [v5 addObject:v7];
    }

    while (([v6 next] & 1) != 0);
  }

  [(FHDatabaseManager *)self closeAndUnlock:v6];
  v8 = [MEMORY[0x277CBEA60] arrayWithArray:v5];

  return v8;
}

- (id)getTransactionIdsInTimeRangeFrom:(id)from to:(id)to
{
  fromCopy = from;
  toCopy = to;
  v8 = objc_opt_new();
  [fromCopy timeIntervalSinceReferenceDate];
  v10 = v9;
  [toCopy timeIntervalSinceReferenceDate];
  v12 = [(FHDatabaseManager *)self _fetch:@"select * from transactions t where t_date >= %d and t_date <= %d and a_type == %d order by t_date desc limit %d", v10, v11, 2, -1];
  if ([v12 next])
  {
    do
    {
      v13 = [v12 stringAtIndex:1];
      [v8 addObject:v13];
    }

    while (([v12 next] & 1) != 0);
  }

  [(FHDatabaseManager *)self closeAndUnlock:v12];
  v14 = [MEMORY[0x277CBEA60] arrayWithArray:v8];

  return v14;
}

- (BOOL)insertFeatures:(id)features realtimeFeatures:(id)realtimeFeatures
{
  realtimeFeaturesCopy = realtimeFeatures;
  featuresCopy = features;
  identifier = [featuresCopy identifier];
  accountType = [featuresCopy accountType];

  v10 = accountType == 2 && [(FHDatabaseManager *)self insertFeaturesDeterminiticRealtime:identifier realtimeFeatures:realtimeFeaturesCopy]&& [(FHDatabaseManager *)self insertFeaturesPredictedRealtime:identifier realtimeFeatures:realtimeFeaturesCopy]&& [(FHDatabaseManager *)self insertFeaturesCompoundRealtime:identifier realtimeFeatures:realtimeFeaturesCopy];
  return v10;
}

- (BOOL)insertFeaturesDeterminiticRealtime:(id)realtime realtimeFeatures:(id)features
{
  featuresCopy = features;
  realtimeCopy = realtime;
  timeOfDay = [featuresCopy timeOfDay];
  transactionDateAtZerothHour = [featuresCopy transactionDateAtZerothHour];
  merchantCategory = [featuresCopy merchantCategory];
  isInternationalSpend = [featuresCopy isInternationalSpend];
  isTapToPay = [featuresCopy isTapToPay];

  LOBYTE(self) = [(FHDatabaseManager *)self _execute:@"insert or replace into features_deterministic_realtime (t_identifier, a, b, c, f, g) values (%@, %d, %d, %d, %d, %d)", realtimeCopy, timeOfDay, transactionDateAtZerothHour, merchantCategory, isInternationalSpend, isTapToPay];
  return self;
}

- (BOOL)insertFeaturesPredictedRealtime:(id)realtime realtimeFeatures:(id)features
{
  realtimeCopy = realtime;
  featuresCopy = features;
  [featuresCopy repeatingPatternClass];
  if ([featuresCopy repeatingPatternClass] <= 2)
  {
    [(FHDatabaseManager *)self deleteWithSQL:@"delete from features_predicted_realtime where identifier == %@ and feature_name == %@", realtimeCopy, @"FHSmartFeatureAggregateTypeRecurring"];
  }

  v8 = -[FHDatabaseManager _execute:](self, "_execute:", @"insert or replace into features_predicted_realtime (identifier, feature_name, feature_predicted_class, version, data_type, predicted_score) values (%@, %@, %d, %@, %d, %f)", realtimeCopy, @"FHSmartFeatureAggregateTypeRecurring", [featuresCopy repeatingPatternClass], @"0", 0, 0);

  return v8;
}

- (BOOL)insertFeaturesCompoundRealtime:(id)realtime realtimeFeatures:(id)features
{
  realtimeCopy = realtime;
  featuresCopy = features;
  smartCompoundFeatures = [featuresCopy smartCompoundFeatures];
  if (!smartCompoundFeatures)
  {
    goto LABEL_6;
  }

  v9 = smartCompoundFeatures;
  smartCompoundFeatures2 = [featuresCopy smartCompoundFeatures];
  v11 = [smartCompoundFeatures2 objectForKey:@"FHSmartFeatureCompoundTypeEventTagging"];
  if (!v11)
  {
    smartCompoundFeatures3 = [featuresCopy smartCompoundFeatures];
    v13 = [smartCompoundFeatures3 objectForKey:@"FHSmartFeatureCompoundTypeTripEvents"];

    if (v13)
    {
      goto LABEL_5;
    }

LABEL_6:
    v17 = 1;
    goto LABEL_7;
  }

LABEL_5:
  v14 = MEMORY[0x277CBEA60];
  smartCompoundFeatures4 = [featuresCopy smartCompoundFeatures];
  v16 = [v14 arrayWithObject:smartCompoundFeatures4];
  v17 = [(FHDatabaseManager *)self insertFeaturesEvents:v16];

LABEL_7:
  v18 = [(FHDatabaseManager *)self insertFeaturesCompoundRealtimeWithoutEvents:realtimeCopy realtimeFeatures:featuresCopy];

  return v17 && v18;
}

- (BOOL)insertFeaturesCompoundRealtimeWithoutEvents:(id)events realtimeFeatures:(id)features
{
  v20 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  featuresCopy = features;
  v8 = objc_autoreleasePoolPush();
  v9 = MEMORY[0x277CCAAA0];
  smartCompoundFeaturesDictionaryForJson = [featuresCopy smartCompoundFeaturesDictionaryForJson];
  v17 = 0;
  v11 = [v9 dataWithJSONObject:smartCompoundFeaturesDictionaryForJson options:0 error:&v17];
  v12 = v17;

  if (v11)
  {
    v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v11 encoding:4];
    v14 = [(FHDatabaseManager *)self _execute:@"insert or replace into features_compound_realtime (t_identifier, t_compound_feature_value) values (%@, %@)", eventsCopy, v13];
  }

  else
  {
    v13 = FinHealthLogObject(@"FinHealthCore");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      localizedDescription = [v12 localizedDescription];
      *buf = 138412290;
      v19 = localizedDescription;
      _os_log_impl(&dword_226DD4000, v13, OS_LOG_TYPE_DEBUG, "Failed to parse smartCompoundFeaturesDictionaryForJson: %@", buf, 0xCu);
    }

    v14 = 0;
  }

  objc_autoreleasePoolPop(v8);
  return v14;
}

- (BOOL)insertFeaturesEvents:(id)events
{
  v40 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  v5 = MEMORY[0x277CBEB58];
  v6 = [eventsCopy valueForKeyPath:@"@distinctUnionOfArrays.FHSmartFeatureCompoundTypeEventTagging"];
  v7 = [v5 setWithArray:v6];

  v8 = [eventsCopy valueForKeyPath:@"@distinctUnionOfArrays.FHSmartFeatureCompoundTypeTripEvents"];
  [v7 addObjectsFromArray:v8];

  if ([v7 count])
  {
    v9 = FinHealthLogObject(@"FinHealthCore");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v39 = v7;
      _os_log_impl(&dword_226DD4000, v9, OS_LOG_TYPE_DEBUG, "Distinct event ranked values: %@", buf, 0xCu);
    }
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v7;
  v27 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v27)
  {
    v26 = *v33;
    v10 = 1;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v33 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v32 + 1) + 8 * i);
        eventStartDate = [v12 eventStartDate];
        [eventStartDate timeIntervalSinceReferenceDate];
        v15 = v14;

        eventEndDate = [v12 eventEndDate];
        [eventEndDate timeIntervalSinceReferenceDate];
        v18 = v17;

        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        eventIdentifiers = [v12 eventIdentifiers];
        v20 = [eventIdentifiers countByEnumeratingWithState:&v28 objects:v36 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v29;
          do
          {
            for (j = 0; j != v21; ++j)
            {
              if (*v29 != v22)
              {
                objc_enumerationMutation(eventIdentifiers);
              }

              v10 &= [(FHDatabaseManager *)self _execute:@"insert or replace into features_events (e_identifier, start_date, end_date) values (%@, %d, %d)", *(*(&v28 + 1) + 8 * j), v15, v18];
            }

            v21 = [eventIdentifiers countByEnumeratingWithState:&v28 objects:v36 count:16];
          }

          while (v21);
        }
      }

      v27 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v27);
  }

  else
  {
    LOBYTE(v10) = 1;
  }

  return v10 & 1;
}

- (BOOL)insertGroupForTransaction:(id)transaction withGroup:(id)group type:(unint64_t)type
{
  v8 = MEMORY[0x277CCACA8];
  v9 = MEMORY[0x277CCA980];
  groupCopy = group;
  transactionCopy = transaction;
  zero = [v9 zero];
  stringValue = [zero stringValue];
  type = [v8 stringWithFormat:@"insert or replace into fh_grouping (t_identifier, group_id, similarity_score, group_type) values ('%@', '%@', %@, %d)", transactionCopy, groupCopy, stringValue, type];

  LOBYTE(transactionCopy) = [(FHDatabaseManager *)self _execute:type];
  return transactionCopy;
}

- (id)getTaggedPastCalendarEvents
{
  v3 = objc_opt_new();
  v4 = [MEMORY[0x277CBEAA8] now];
  v5 = [v4 dateByAddingTimeInterval:-31536000.0];
  [v5 timeIntervalSinceReferenceDate];
  v7 = v6;

  selfCopy = self;
  v8 = [(FHDatabaseManager *)self _fetch:@"select * from features_events where end_date < %d limit %d", v7, -1];
  if ([v8 next])
  {
    do
    {
      v9 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:{objc_msgSend(v8, "unsignedIntAtIndex:", 2)}];
      v10 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:{objc_msgSend(v8, "unsignedIntAtIndex:", 3)}];
      v11 = MEMORY[0x277CBEAC0];
      [v8 stringAtIndex:1];
      v13 = v12 = v3;
      v14 = [MEMORY[0x277CBEA60] arrayWithObjects:{v9, v10, 0}];
      v15 = [v11 dictionaryWithObjectsAndKeys:{v13, @"featureEventIdentifiers", v9, @"featureEventStartDate", v10, @"featureEventEndDate", v14, @"featureEventDateRangeKey", 0}];

      v3 = v12;
      [v12 addObject:v15];
    }

    while (([v8 next] & 1) != 0);
  }

  [(FHDatabaseManager *)selfCopy closeAndUnlock:v8];
  v16 = [MEMORY[0x277CBEA60] arrayWithArray:v3];

  return v16;
}

- (id)getFeaturePredicate:(id)predicate FHSmartFeatureAggregateType:(id)type
{
  typeCopy = type;
  predicateCopy = predicate;
  v7 = FHSmartFeaturesDict(predicateCopy);
  v8 = [v7 objectForKey:predicateCopy];

  v9 = [v8 objectForKey:typeCopy];

  v10 = [v9 objectForKey:@"predicate"];

  if (v10)
  {
    v11 = MEMORY[0x277CCACA8];
    v12 = [v10 objectForKey:@"index"];
    v13 = [v10 objectForKey:@"filteringOperator"];
    v14 = [v10 objectForKey:@"match"];
    v15 = [v11 stringWithFormat:@"SELF[%@] %@ '%@'", v12, v13, v14];

    v16 = [MEMORY[0x277CCAC30] predicateWithFormat:v15];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (BOOL)_computeSingleMerchantAggregateFeature:(id)feature
{
  v44 = *MEMORY[0x277D85DE8];
  featureCopy = feature;
  v5 = FHSmartFeaturesDict(featureCopy);
  v6 = [v5 objectForKey:@"FHMerchantSmartFeatures"];
  v7 = [v6 objectForKey:featureCopy];

  v8 = [v7 objectForKey:@"featureValueIndex"];
  intValue = [v8 intValue];

  v9 = [(FHDatabaseManager *)self getFeaturePredicate:@"FHMerchantSmartFeatures" FHSmartFeatureAggregateType:featureCopy];
  v39 = v7;
  v10 = [v7 objectForKey:@"aggrWindow"];
  if (!v10)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", 30];
  }

  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v10];
  v12 = [(NSMutableDictionary *)self->_merchantAggregatesCache objectForKey:v11];
  intValue2 = [v10 intValue];
  mostRecentTransactionDate = [(FHDatabaseManager *)self mostRecentTransactionDate];
  v15 = mostRecentTransactionDate - 86400 * intValue2;
  v36 = mostRecentTransactionDate;
  if (v12)
  {
    v16 = FinHealthLogObject(@"FinHealthCore");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v41 = "[FHDatabaseManager _computeSingleMerchantAggregateFeature:]";
      v42 = 2112;
      v43 = v11;
      _os_log_impl(&dword_226DD4000, v16, OS_LOG_TYPE_DEBUG, "%s resultArray for %@ is already cached", buf, 0x16u);
    }
  }

  else
  {
    v17 = mostRecentTransactionDate;
    v34 = v9;
    v35 = featureCopy;
    v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v18 = [(FHDatabaseManager *)self _fetch:@"select m_displayname, count(*) c, m_detailed_category from transactions where transactions.t_date >= %d and transactions.t_date <= %d and transactions.t_type == %lu and transactions.t_status == %lu and transactions.a_type == %d group by m_displayname order by c desc", v15, v17, 0, 1, 2];
    if ([v18 next])
    {
      do
      {
        v19 = MEMORY[0x277CBEA60];
        v20 = [v18 stringAtIndex:0];
        v21 = [v18 stringAtIndex:1];
        v22 = [v18 stringAtIndex:2];
        v23 = [v19 arrayWithObjects:{v20, v21, v22, 0}];

        if ([v23 count])
        {
          [v16 addObject:v23];
        }
      }

      while (([v18 next] & 1) != 0);
    }

    [(FHDatabaseManager *)self closeAndUnlock:v18];
    v12 = [MEMORY[0x277CBEA60] arrayWithArray:v16];
    [(NSMutableDictionary *)self->_merchantAggregatesCache setObject:v12 forKey:v11];
    v24 = FinHealthLogObject(@"FinHealthCore");
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v41 = "[FHDatabaseManager _computeSingleMerchantAggregateFeature:]";
      v42 = 2112;
      v43 = v11;
      _os_log_impl(&dword_226DD4000, v24, OS_LOG_TYPE_DEBUG, "%s resultArray %@ added to cache", buf, 0x16u);
    }

    v9 = v34;
    featureCopy = v35;
  }

  v25 = [v12 filteredArrayUsingPredicate:v9];
  if ([v25 count])
  {
    v26 = v9;
    firstObject = [v25 firstObject];
    v28 = [firstObject count];

    if (v28 <= intValue)
    {
      v32 = 1;
    }

    else
    {
      v37 = v15;
      v29 = featureCopy;
      firstObject2 = [v25 firstObject];
      v31 = [firstObject2 objectAtIndex:intValue];

      if (v31)
      {
        featureCopy = v29;
        v32 = [(FHDatabaseManager *)self _execute:@"insert or replace into features_merchant (merchant_aggregate_type, merchant_aggregate_value, start_date, end_date) values (%@, %@, %d, %d)", v29, v31, v37, v36];
      }

      else
      {
        v32 = 1;
        featureCopy = v29;
      }
    }

    v9 = v26;
  }

  else
  {
    v32 = 1;
  }

  return v32;
}

- (BOOL)computeMerchantAggregateFeatures
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  v3 = FHMerchantSmartFeaturesArray(self);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __53__FHDatabaseManager_computeMerchantAggregateFeatures__block_invoke;
  v5[3] = &unk_2785CB0A8;
  v5[4] = selfCopy;
  v5[5] = &v6;
  [v3 enumerateObjectsUsingBlock:v5];

  [(NSMutableDictionary *)selfCopy->_merchantAggregatesCache removeAllObjects];
  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

void *__53__FHDatabaseManager_computeMerchantAggregateFeatures__block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) _computeSingleMerchantAggregateFeature:a2];
  if ((result & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  return result;
}

- (BOOL)_computeSingleDatetimeAggregateFeature:(id)feature
{
  v42 = *MEMORY[0x277D85DE8];
  featureCopy = feature;
  v5 = FHSmartFeaturesDict(featureCopy);
  v6 = [v5 objectForKey:@"FHDateTimeSmartFeatures"];
  v7 = [v6 objectForKey:featureCopy];

  v8 = [v7 objectForKey:@"featureValueIndex"];
  intValue = [v8 intValue];

  v37 = v7;
  v9 = [v7 objectForKey:@"aggrWindow"];
  if (!v9)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", 30];
  }

  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v9];
  v11 = [(NSMutableDictionary *)self->_dateTimeAggregatesCache objectForKey:v10];
  intValue2 = [v9 intValue];
  mostRecentTransactionDate = [(FHDatabaseManager *)self mostRecentTransactionDate];
  v14 = mostRecentTransactionDate - 86400 * intValue2;
  v34 = v14;
  v35 = mostRecentTransactionDate;
  if (v11)
  {
    v15 = FinHealthLogObject(@"FinHealthCore");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v39 = "[FHDatabaseManager _computeSingleDatetimeAggregateFeature:]";
      v40 = 2112;
      v41 = v10;
      _os_log_impl(&dword_226DD4000, v15, OS_LOG_TYPE_DEBUG, "%s resultArray for %@ is already cached", buf, 0x16u);
    }
  }

  else
  {
    v16 = mostRecentTransactionDate;
    v33 = featureCopy;
    v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v18 = [(FHDatabaseManager *)self _fetch:@"select sum(t.t_amount) daily_spend, f.b from transactions t inner join features_deterministic_realtime f on t.t_identifier = f.t_identifier where t.t_date >= %d and t.t_date <= %d and t.t_type == %lu and t.t_status == %lu and t.a_type == %d group by f.b order by daily_spend desc limit %d", v14, v16, 0, 1, 2, 1];
    if ([v18 next])
    {
      do
      {
        v19 = MEMORY[0x277CBEA60];
        v20 = [v18 numberAtIndex:0];
        v21 = [v18 numberAtIndex:1];
        v22 = [v19 arrayWithObjects:{v20, v21, 0}];

        [v17 addObject:v22];
      }

      while (([v18 next] & 1) != 0);
    }

    [(FHDatabaseManager *)self closeAndUnlock:v18];
    v11 = [MEMORY[0x277CBEA60] arrayWithArray:v17];
    [(NSMutableDictionary *)self->_dateTimeAggregatesCache setObject:v11 forKey:v10];

    featureCopy = v33;
  }

  v23 = [(FHDatabaseManager *)self getFeaturePredicate:@"FHDateTimeSmartFeatures" FHSmartFeatureAggregateType:featureCopy];
  if (v23)
  {
    v24 = [v11 filteredArrayUsingPredicate:v23];
  }

  else
  {
    v24 = v11;
  }

  v25 = v24;
  if ([v24 count] && (objc_msgSend(v25, "firstObject"), v26 = objc_claimAutoreleasedReturnValue(), v27 = objc_msgSend(v26, "count"), v26, v27 > intValue))
  {
    v28 = featureCopy;
    firstObject = [v25 firstObject];
    v30 = [firstObject objectAtIndex:intValue];

    if (v30)
    {
      featureCopy = v28;
      v31 = -[FHDatabaseManager _execute:](self, "_execute:", @"insert or replace into features_datetime (datetime_aggregate_type, datetime_aggregate_value_start_date, datetime_aggregate_value_end_date, start_date, end_date) values (%@, %d, %d, %d, %d)", v28, [v30 intValue], objc_msgSend(v30, "intValue") + 86399, v34, v35);
    }

    else
    {
      v31 = 0;
      featureCopy = v28;
    }
  }

  else
  {
    v31 = 0;
  }

  return v31;
}

- (BOOL)computeDatetimeAggregateFeatures
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  v3 = FHDateTimeSmartFeaturesArray(self);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __53__FHDatabaseManager_computeDatetimeAggregateFeatures__block_invoke;
  v5[3] = &unk_2785CB0A8;
  v5[4] = selfCopy;
  v5[5] = &v6;
  [v3 enumerateObjectsUsingBlock:v5];

  [(NSMutableDictionary *)selfCopy->_dateTimeAggregatesCache removeAllObjects];
  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

void *__53__FHDatabaseManager_computeDatetimeAggregateFeatures__block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) _computeSingleDatetimeAggregateFeature:a2];
  if ((result & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  return result;
}

- (BOOL)_computeSingleAmountAggregateFeature:(id)feature
{
  v47 = *MEMORY[0x277D85DE8];
  featureCopy = feature;
  v5 = FHSmartFeaturesDict(featureCopy);
  v6 = [v5 objectForKey:@"FHAmountSmartFeatures"];
  v39 = featureCopy;
  v7 = [v6 objectForKey:featureCopy];

  v8 = [v7 objectForKey:@"expression"];
  v9 = [v7 objectForKey:@"aggrWindow"];
  if (!v9)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", 30];
  }

  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v9];
  filteredTransaction = [(NSMutableDictionary *)self->_amountAggregatesCache objectForKey:v10];
  intValue = [v9 intValue];
  mostRecentTransactionDate = [(FHDatabaseManager *)self mostRecentTransactionDate];
  v14 = mostRecentTransactionDate;
  v15 = mostRecentTransactionDate - 86400 * intValue;
  if (filteredTransaction)
  {
    v16 = FinHealthLogObject(@"FinHealthCore");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v44 = "[FHDatabaseManager _computeSingleAmountAggregateFeature:]";
      v45 = 2112;
      v46 = v10;
      _os_log_impl(&dword_226DD4000, v16, OS_LOG_TYPE_DEBUG, "%s resultArray for %@ is already cached", buf, 0x16u);
    }
  }

  else
  {
    v35 = mostRecentTransactionDate;
    v37 = v8;
    v17 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:mostRecentTransactionDate];
    v34 = v15;
    v18 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v15];
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __58__FHDatabaseManager__computeSingleAmountAggregateFeature___block_invoke;
    v40[3] = &unk_2785CB0D0;
    v40[4] = self;
    v19 = v18;
    v41 = v19;
    v20 = v17;
    v42 = v20;
    v21 = [FHBatchProcessor initWithBuilder:v40];
    [v21 fetchAndProcessInBatchMode];
    filteredTransaction = [v21 filteredTransaction];
    [(NSMutableDictionary *)self->_amountAggregatesCache setObject:filteredTransaction forKey:v10];
    v22 = FinHealthLogObject(@"FinHealthCore");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v44 = "[FHDatabaseManager _computeSingleAmountAggregateFeature:]";
      v45 = 2112;
      v46 = v10;
      _os_log_impl(&dword_226DD4000, v22, OS_LOG_TYPE_DEBUG, "%s resultArray %@ added to cache", buf, 0x16u);
    }

    v14 = v35;
    v8 = v37;
    v15 = v34;
    if (!filteredTransaction)
    {
      goto LABEL_15;
    }
  }

  if (![filteredTransaction count])
  {
LABEL_15:
    v32 = 1;
    goto LABEL_18;
  }

  v38 = v10;
  v23 = objc_opt_new();
  v24 = [v8 componentsSeparatedByString:@"%@"];
  v25 = [v24 count] - 1;

  if (v25 >= 1)
  {
    do
    {
      [v23 addObject:filteredTransaction];
      --v25;
    }

    while (v25);
  }

  v36 = v7;
  v26 = [v7 objectForKey:@"comparator"];
  v27 = v8;
  v28 = [MEMORY[0x277CCA9C0] expressionWithFormat:v8 argumentArray:v23];
  v29 = [v28 expressionValueWithObject:0 context:0];
  v30 = v29;
  if (v29)
  {
    [v29 doubleValue];
    v32 = [(FHDatabaseManager *)self _execute:@"insert or replace into features_amount (amount_aggregate_type, amount_aggregate_value, comparison_operator, start_date, end_date) values (%@, %d, %@, %d, %d)", v39, v31, v26, v15, v14];
  }

  else
  {
    v32 = 1;
  }

  v8 = v27;
  v7 = v36;
  v10 = v38;
LABEL_18:

  return v32;
}

void __58__FHDatabaseManager__computeSingleAmountAggregateFeature___block_invoke(uint64_t *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  [v4 setDatabaseManager:v3];
  [v4 addInternalState:2];
  [v4 setMostRecentTransactionFromDatabase:{objc_msgSend(a1[4], "mostRecentTransactionDate")}];
  [v4 setStartDate:a1[5]];
  [v4 setEndDate:a1[6]];
}

- (BOOL)computeAmountAggregateFeatures
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  v3 = FHAmountSmartFeaturesArray(self);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __51__FHDatabaseManager_computeAmountAggregateFeatures__block_invoke;
  v5[3] = &unk_2785CB0A8;
  v5[4] = selfCopy;
  v5[5] = &v6;
  [v3 enumerateObjectsUsingBlock:v5];

  [(NSMutableDictionary *)selfCopy->_amountAggregatesCache removeAllObjects];
  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

void *__51__FHDatabaseManager_computeAmountAggregateFeatures__block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) _computeSingleAmountAggregateFeature:a2];
  if ((result & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  return result;
}

- (id)getFHSmartFeatureByMerchantType:(id)type
{
  type = [(FHDatabaseManager *)self _fetch:@"select merchant_aggregate_value, start_date, end_date from features_merchant where merchant_aggregate_type == %@ order by end_date desc", type];
  if ([type next])
  {
    v5 = objc_opt_new();
    v6 = [type stringAtIndex:0];
    [v5 setMerchantDisplayName:v6];

    v7 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:{objc_msgSend(type, "integerAtIndex:", 1)}];
    [v5 setProcessingWindowStartDate:v7];

    v8 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:{objc_msgSend(type, "integerAtIndex:", 2)}];
    [v5 setProcessingWindowEndDate:v8];
  }

  else
  {
    v5 = 0;
  }

  [(FHDatabaseManager *)self closeAndUnlock:type];

  return v5;
}

- (id)getFHSmartFeatureByAmountType:(id)type
{
  type = [(FHDatabaseManager *)self _fetch:@"select amount_aggregate_value, comparison_operator, start_date, end_date from features_amount where amount_aggregate_type == %@ order by end_date desc", type];
  if ([type next])
  {
    v5 = objc_opt_new();
    [v5 setAmount:{objc_msgSend(type, "integerAtIndex:", 0)}];
    v6 = [type stringAtIndex:1];
    [v5 setComparator:v6];

    v7 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:{objc_msgSend(type, "integerAtIndex:", 2)}];
    [v5 setProcessingWindowStartDate:v7];

    v8 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:{objc_msgSend(type, "integerAtIndex:", 3)}];
    [v5 setProcessingWindowEndDate:v8];
  }

  else
  {
    v5 = 0;
  }

  [(FHDatabaseManager *)self closeAndUnlock:type];

  return v5;
}

- (id)getFHSmartFeatureByDateTimeType:(id)type
{
  type = [(FHDatabaseManager *)self _fetch:@"select datetime_aggregate_value_start_date, datetime_aggregate_value_end_date, start_date, end_date from features_datetime where datetime_aggregate_type == %@ order by end_date desc", type];
  if ([type next])
  {
    v5 = objc_opt_new();
    v6 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:{objc_msgSend(type, "integerAtIndex:", 0)}];
    [v5 setStartDate:v6];

    v7 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:{objc_msgSend(type, "integerAtIndex:", 1)}];
    [v5 setEndDate:v7];

    v8 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:{objc_msgSend(type, "integerAtIndex:", 2)}];
    [v5 setProcessingWindowStartDate:v8];

    v9 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:{objc_msgSend(type, "integerAtIndex:", 3)}];
    [v5 setProcessingWindowEndDate:v9];
  }

  else
  {
    v5 = 0;
  }

  [(FHDatabaseManager *)self closeAndUnlock:type];

  return v5;
}

- (BOOL)deleteAllFeatureRecordsForTransaction:(id)transaction
{
  transactionCopy = transaction;
  v5 = [[FHDatabaseEntity alloc] initWithEntity:@"fh_recurring_predictions" databaseManager:self];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __59__FHDatabaseManager_deleteAllFeatureRecordsForTransaction___block_invoke;
  v13 = &unk_2785CB058;
  v6 = transactionCopy;
  v14 = v6;
  v7 = [FHDatabaseClauseFromBuilder initWithBuilder:&v10];
  v8 = [(FHDatabaseManager *)self deleteWithSQL:@"delete from features_deterministic_realtime where t_identifier in (select t_identifier from transactions t where t.t_source_identifier == %@)", v6, v10, v11, v12, v13]&& [(FHDatabaseManager *)self deleteWithSQL:@"delete from features_predicted_realtime where identifier in (select t_identifier from transactions t where t.t_source_identifier == %@)", v6]&& [(FHDatabaseManager *)self deleteWithSQL:@"delete from features_compound_realtime where t_identifier in (select t_identifier from transactions t where t.t_source_identifier == %@)", v6]&& [(FHDatabaseManager *)self deleteWithSQL:@"delete from features_heuristics where t_identifier in (select t_identifier from transactions t where t.t_source_identifier == %@)", v6]&& [(FHDatabaseEntity *)v5 clearDataWithClauseBuilder:v7];

  return v8;
}

- (BOOL)deleteAllRecordsInTransactions:(id)transactions
{
  transactionsCopy = transactions;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __52__FHDatabaseManager_deleteAllRecordsInTransactions___block_invoke;
  v8[3] = &unk_2785CB058;
  v9 = transactionsCopy;
  v5 = transactionsCopy;
  v6 = [FHDatabaseClauseFromBuilder initWithBuilder:v8];
  LOBYTE(self) = [(FHDatabaseEntity *)self->_transactionsEntity clearDataWithClauseBuilder:v6];

  return self;
}

- (BOOL)deleteTransactionWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53__FHDatabaseManager_deleteTransactionWithIdentifier___block_invoke;
  v8[3] = &unk_2785CB058;
  v9 = identifierCopy;
  v5 = identifierCopy;
  v6 = [FHDatabaseClauseFromBuilder initWithBuilder:v8];
  LOBYTE(self) = [(FHDatabaseEntity *)self->_transactionsEntity clearDataWithClauseBuilder:v6];

  return self;
}

- (BOOL)deleteBankConnectTransactionWithFinanceTransactionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __82__FHDatabaseManager_deleteBankConnectTransactionWithFinanceTransactionIdentifier___block_invoke;
  v8[3] = &unk_2785CB058;
  v9 = identifierCopy;
  v5 = identifierCopy;
  v6 = [FHDatabaseClauseFromBuilder initWithBuilder:v8];
  LOBYTE(self) = [(FHDatabaseEntity *)self->_transactionsEntity clearDataWithClauseBuilder:v6];

  return self;
}

void __82__FHDatabaseManager_deleteBankConnectTransactionWithFinanceTransactionIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 addStringClause:@"==" fieldName:@"transactions.t_identifier" expression:v3];
  [v4 addStringClause:@"==" fieldName:@"transactions.t_finance_transaction_id" expression:*(a1 + 32)];
}

- (BOOL)deleteAllRecordsInPeerPaymentFeatures:(id)features
{
  featuresCopy = features;
  v5 = [[FHDatabaseEntity alloc] initWithEntity:@"features_peer_payments" databaseManager:self];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __59__FHDatabaseManager_deleteAllRecordsInPeerPaymentFeatures___block_invoke;
  v10[3] = &unk_2785CB058;
  v11 = featuresCopy;
  v6 = featuresCopy;
  v7 = [FHDatabaseClauseFromBuilder initWithBuilder:v10];
  v8 = [(FHDatabaseEntity *)v5 clearDataWithClauseBuilder:v7];

  return v8;
}

- (BOOL)deleteAllRecordsInAccountInfoForTransactionSource:(id)source
{
  sourceCopy = source;
  v5 = [[FHDatabaseEntity alloc] initWithEntity:@"fh_account_information" databaseManager:self];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __71__FHDatabaseManager_deleteAllRecordsInAccountInfoForTransactionSource___block_invoke;
  v10[3] = &unk_2785CB058;
  v11 = sourceCopy;
  v6 = sourceCopy;
  v7 = [FHDatabaseClauseFromBuilder initWithBuilder:v10];
  v8 = [(FHDatabaseEntity *)v5 clearDataWithClauseBuilder:v7];

  return v8;
}

- (void)deleteAllDataForTransactionSourceIdentifier:(id)identifier force:(BOOL)force completion:(id)completion
{
  forceCopy = force;
  identifierCopy = identifier;
  completionCopy = completion;
  if (forceCopy)
  {
    v9 = 3;
  }

  else
  {
    v9 = 1;
  }

  v10 = objc_opt_new();
  if (completionCopy)
  {
    while (![(FHDatabaseManager *)self deleteAllFeatureRecordsForTransaction:identifierCopy])
    {
      identifierCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"features_deterministic_realtime for id %@", identifierCopy];
      [v10 addObject:identifierCopy];

      if (![(FHDatabaseManager *)self deleteAllRecordsInTransactionFeatures:identifierCopy])
      {
        goto LABEL_12;
      }

LABEL_14:
      if (v9 == 1)
      {
        v14 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
        completionCopy[2](completionCopy, 0, v14);
      }

      if (!--v9)
      {
        goto LABEL_17;
      }
    }

    if ([(FHDatabaseManager *)self deleteAllRecordsInTransactionFeatures:identifierCopy])
    {
      if ([(FHDatabaseManager *)self deleteAllRecordsInTransactions:identifierCopy]&& [(FHDatabaseManager *)self deleteAllRecordsInPeerPaymentFeatures:identifierCopy]&& [(FHDatabaseManager *)self deleteAllRecordsInAccountInfoForTransactionSource:identifierCopy])
      {
        completionCopy[2](completionCopy, 1, 0);
        goto LABEL_17;
      }

      v11 = @"transactions for id %@";
    }

    else
    {
LABEL_12:
      v11 = @"transaction_features for id %@";
    }

    identifierCopy2 = [MEMORY[0x277CCACA8] stringWithFormat:v11, identifierCopy];
    [v10 addObject:identifierCopy2];

    goto LABEL_14;
  }

LABEL_17:
}

- (BOOL)updateGetAllStatus:(unint64_t)status
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = [(FHDatabaseManager *)self _execute:@"update fh_schema set sch_getall_status = %d where sch_version_id == %@", status, @"11.11"];
  v5 = FinHealthLogObject(@"FinHealthCore");
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_226DD4000, v6, OS_LOG_TYPE_DEBUG, "updateGetAllStatus successful", buf, 2u);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    lastError = [(PQLConnection *)self->_db lastError];
    localizedDescription = [lastError localizedDescription];
    *buf = 138412290;
    v11 = localizedDescription;
    _os_log_impl(&dword_226DD4000, v6, OS_LOG_TYPE_ERROR, "Update failed with error: %@", buf, 0xCu);
  }

  return v4;
}

- (BOOL)shouldCallGetAllTransactions
{
  v3 = [(FHDatabaseManager *)self _fetch:@"select sch_getall_status from fh_schema where sch_version_id == %@", @"11.11"];;
  if ([v3 next])
  {
    v4 = [v3 unsignedIntegerAtIndex:0] != 1;
  }

  else
  {
    v4 = 1;
  }

  [(FHDatabaseManager *)self closeAndUnlock:v3];

  return v4;
}

- (id)compoundFeaturesForTransaction:(id)transaction
{
  transaction = [(FHDatabaseManager *)self _fetch:@"select t_identifier, t_compound_feature_value from features_compound_realtime where t_identifier == %@", transaction];
  v5 = objc_alloc_init(MEMORY[0x277CBEAC0]);
  if ([transaction next])
  {
    v6 = [transaction stringAtIndex:1];
    v7 = [FinHealthFeatureHelper reconstructCompoundFeatures:v6];

    v5 = v7;
  }

  [(FHDatabaseManager *)self closeAndUnlock:transaction];

  return v5;
}

- (id)reconstructTransaction:(id)transaction
{
  transactionCopy = transaction;
  v4 = objc_alloc_init(FHTransaction);
  v5 = [transactionCopy intAtIndex:9];
  v6 = [objc_alloc(MEMORY[0x277CCA980]) initWithInteger:v5];
  v7 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:{objc_msgSend(transactionCopy, "unsignedIntAtIndex:", 12)}];
  v8 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:{objc_msgSend(transactionCopy, "unsignedIntAtIndex:", 14)}];
  v9 = [transactionCopy stringAtIndex:1];
  [(FHTransaction *)v4 setIdentifier:v9];

  v10 = [transactionCopy stringAtIndex:2];
  [(FHTransaction *)v4 setTransactionServiceIdentifier:v10];

  v11 = [transactionCopy stringAtIndex:6];
  [(FHTransaction *)v4 setFinanceAccountIdentifier:v11];

  v12 = [transactionCopy stringAtIndex:3];
  [(FHTransaction *)v4 setFinanceTransactionIdentifier:v12];

  v13 = [transactionCopy stringAtIndex:7];
  [(FHTransaction *)v4 setPaymentHash:v13];

  v14 = [transactionCopy stringAtIndex:8];
  [(FHTransaction *)v4 setTransactionSourceIdentifier:v14];

  defaultDatabaseAmountMultiplier = [MEMORY[0x277CCA980] defaultDatabaseAmountMultiplier];
  v16 = [v6 decimalNumberByDividingBy:defaultDatabaseAmountMultiplier];
  [(FHTransaction *)v4 setAmount:v16];

  [(FHTransaction *)v4 setAmountFromDatabase:v5];
  v17 = [transactionCopy stringAtIndex:10];
  [(FHTransaction *)v4 setCurrencyCode:v17];

  [(FHTransaction *)v4 setTransactionDate:v7];
  -[FHTransaction setTransactionStatus:](v4, "setTransactionStatus:", [transactionCopy intAtIndex:13]);
  [(FHTransaction *)v4 setTransactionStatusChangedDate:v8];
  -[FHTransaction setTransactionSource:](v4, "setTransactionSource:", [transactionCopy intAtIndex:15]);
  -[FHTransaction setCardType:](v4, "setCardType:", [transactionCopy intAtIndex:16]);
  -[FHTransaction setTransactionType:](v4, "setTransactionType:", [transactionCopy intAtIndex:17]);
  -[FHTransaction setAccountType:](v4, "setAccountType:", [transactionCopy intAtIndex:18]);
  v18 = [transactionCopy stringAtIndex:19];
  [(FHTransaction *)v4 setAltDSID:v18];

  v19 = [transactionCopy stringAtIndex:20];
  [(FHTransaction *)v4 setReceiptIdentifier:v19];

  -[FHTransaction setTransactionInternalState:](v4, "setTransactionInternalState:", [transactionCopy intAtIndex:22]);
  v20 = [transactionCopy stringAtIndex:23];
  [(FHTransaction *)v4 setMerchantUniqueIdentifier:v20];

  -[FHTransaction setIndustryCode:](v4, "setIndustryCode:", [transactionCopy intAtIndex:24]);
  v21 = [transactionCopy stringAtIndex:25];
  [(FHTransaction *)v4 setName:v21];

  v22 = [transactionCopy stringAtIndex:26];
  [(FHTransaction *)v4 setRawName:v22];

  -[FHTransaction setCategory:](v4, "setCategory:", [transactionCopy intAtIndex:27]);
  v23 = [transactionCopy stringAtIndex:28];
  [(FHTransaction *)v4 setMerchantDetailedCategory:v23];

  v24 = [transactionCopy stringAtIndex:29];
  [(FHTransaction *)v4 setDisplayName:v24];

  v25 = [transactionCopy stringAtIndex:30];
  [(FHTransaction *)v4 setStreet:v25];

  v26 = [transactionCopy stringAtIndex:31];
  [(FHTransaction *)v4 setCity:v26];

  v27 = [transactionCopy stringAtIndex:32];
  [(FHTransaction *)v4 setState:v27];

  v28 = [transactionCopy stringAtIndex:33];
  [(FHTransaction *)v4 setZip:v28];

  v29 = [transactionCopy stringAtIndex:34];
  [(FHTransaction *)v4 setCountryCode:v29];

  v30 = [transactionCopy stringAtIndex:35];
  [(FHTransaction *)v4 setCountry:v30];

  v31 = [transactionCopy stringAtIndex:36];
  -[FHTransaction setMapsMerchantID:](v4, "setMapsMerchantID:", [v31 longLongValue]);

  -[FHTransaction setMapsMerchantResultProviderID:](v4, "setMapsMerchantResultProviderID:", [transactionCopy intAtIndex:37]);
  v32 = [transactionCopy stringAtIndex:38];
  -[FHTransaction setMapsMerchantBrandID:](v4, "setMapsMerchantBrandID:", [v32 longLongValue]);

  -[FHTransaction setMapsMerchantBrandResultProviderID:](v4, "setMapsMerchantBrandResultProviderID:", [transactionCopy intAtIndex:39]);
  v33 = [transactionCopy stringAtIndex:46];
  [(FHTransaction *)v4 setPeerPaymentCounterpartHandle:v33];

  -[FHTransaction setPeerPaymentType:](v4, "setPeerPaymentType:", [transactionCopy intAtIndex:47]);
  v34 = [transactionCopy stringAtIndex:48];
  [(FHTransaction *)v4 setTransactionDescription:v34];

  v35 = [transactionCopy stringAtIndex:49];
  [(FHTransaction *)v4 setProcessedDescription:v35];

  -[FHTransaction setRecurring:](v4, "setRecurring:", [transactionCopy intAtIndex:50] != 0);
  v36 = [transactionCopy stringAtIndex:53];
  [(FHTransaction *)v4 setProprietaryBankTransactionCode:v36];

  v37 = [transactionCopy stringAtIndex:54];
  [(FHTransaction *)v4 setProprietaryBankTransactionIssuer:v37];

  [transactionCopy doubleAtIndex:40];
  v39 = v38;
  [transactionCopy doubleAtIndex:41];
  v41 = v40;
  v42 = CLLocationCoordinate2DMake(v39, v40);
  if ((v39 != 0.0 || v41 != 0.0) && CLLocationCoordinate2DIsValid(v42))
  {
    v43 = objc_alloc(MEMORY[0x277CE41F8]);
    [transactionCopy doubleAtIndex:43];
    v45 = v44;
    [transactionCopy doubleAtIndex:42];
    v47 = v46;
    v48 = [MEMORY[0x277CBEAA8] now];
    v49 = [v43 initWithCoordinate:v48 altitude:v42.latitude horizontalAccuracy:v42.longitude verticalAccuracy:0.0 timestamp:{v45, v47}];
    [(FHTransaction *)v4 setLocation:v49];
  }

  if ([transactionCopy intAtIndex:11])
  {
    v50 = [MEMORY[0x277CBEBB0] timeZoneForSecondsFromGMT:{objc_msgSend(transactionCopy, "intAtIndex:", 11)}];
    [(FHTransaction *)v4 setTimeZone:v50];
  }

  -[FHTransaction setDisputeType:](v4, "setDisputeType:", [transactionCopy intAtIndex:44]);
  -[FHTransaction setDisputeStatus:](v4, "setDisputeStatus:", [transactionCopy intAtIndex:45]);
  v51 = [transactionCopy stringAtIndex:46];
  [(FHTransaction *)v4 setPeerPaymentCounterpartHandle:v51];

  -[FHTransaction setPeerPaymentType:](v4, "setPeerPaymentType:", [transactionCopy intAtIndex:47]);
  v52 = [transactionCopy unsignedIntAtIndex:51];
  v53 = [transactionCopy unsignedIntAtIndex:52];
  if (v52 >= 1)
  {
    v54 = v53;
    if (v53 >= 1)
    {
      v55 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:v52];
      [(FHTransaction *)v4 setDisputeOpenDate:v55];

      v56 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:v54];
      [(FHTransaction *)v4 setDisputeLastUpdatedDate:v56];
    }
  }

  return v4;
}

- (id)featuresForTransaction:(id)transaction
{
  transactionCopy = transaction;
  v5 = [(FHDatabaseManager *)self getTransactionByIdentifier:transactionCopy];
  if (-[FHDatabaseManager _hasDeterministicRealtime:](self, "_hasDeterministicRealtime:", transactionCopy) && ![v5 transactionType] && objc_msgSend(v5, "transactionStatus") == 1 && objc_msgSend(v5, "accountType") == 2)
  {
    [(FHDatabaseManager *)self _computeAllAggregateFeaturesWithTransactionId:transactionCopy];
    transactionCopy = [(FHDatabaseManager *)self _fetch:@"select t_features, t_compound_features, locale from transaction_features where t_identifier == %@", transactionCopy];
    if ([transactionCopy next])
    {
      v7 = [transactionCopy stringAtIndex:0];
      v8 = [transactionCopy stringAtIndex:1];
      v9 = [transactionCopy stringAtIndex:2];
      v10 = [(FHDatabaseManager *)self _createFeatureResponseFromFeatures:v7 compoundFeatures:v8 locale:v9 forTxnID:transactionCopy];
    }

    else
    {
      v10 = 0;
    }

    [(FHDatabaseManager *)self closeAndUnlock:transactionCopy];
    goto LABEL_16;
  }

  if ([v5 transactionType] == 10 && objc_msgSend(v5, "accountType") == 2)
  {
    v11 = [(FHDatabaseManager *)self _computePaymentFeaturesForTransaction:v5];
    goto LABEL_10;
  }

  transactionCopy = [(FHDatabaseManager *)self _getDisputeFeaturesForTransaction:v5];
  if (!transactionCopy || [v5 transactionType] || objc_msgSend(v5, "transactionStatus"))
  {
    goto LABEL_15;
  }

  accountType = [v5 accountType];

  if (accountType == 2)
  {
    v11 = [(FHDatabaseManager *)self _computeDisputeFeaturesForTransaction:v5];
LABEL_10:
    transactionCopy = v11;
    if (v11)
    {
      allObjects = [v11 allObjects];
      v13 = [allObjects componentsJoinedByString:@"|"];
      v10 = [(FHDatabaseManager *)self _createFeatureResponseFromFeatures:v13 compoundFeatures:0 locale:0 forTxnID:transactionCopy];

LABEL_16:
      goto LABEL_17;
    }

LABEL_15:
    v10 = 0;
    goto LABEL_16;
  }

  v10 = 0;
LABEL_17:

  return v10;
}

- (BOOL)_hasDeterministicRealtime:(id)realtime
{
  realtime = [(FHDatabaseManager *)self _fetch:@"select * from features_deterministic_realtime where t_identifier == %@", realtime];
  next = [realtime next];
  [(FHDatabaseManager *)self closeAndUnlock:realtime];

  return next;
}

- (id)_filterAggregateFeatureByCurrentWindow:(id)window
{
  windowCopy = window;
  v5 = NSStringFromSelector(sel_timeIntervalSinceReferenceDate);
  v6 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(SELF.%K == nil and SELF.%K == nil) or %lu - SELF.%K.%K < SELF.%K.%K - SELF.%K.%K", @"processingWindowStartDate", @"processingWindowEndDate", -[FHDatabaseManager _mostRecentTransactionDate](self, "_mostRecentTransactionDate"), @"processingWindowEndDate", v5, @"processingWindowEndDate", v5, @"processingWindowStartDate", v5];
  v7 = [windowCopy filteredArrayUsingPredicate:v6];

  v8 = [v7 valueForKey:@"name"];

  return v8;
}

- (id)_createFeatureResponseFromFeatures:(id)features compoundFeatures:(id)compoundFeatures locale:(id)locale forTxnID:(id)d forApplication:(id)application
{
  v74 = *MEMORY[0x277D85DE8];
  featuresCopy = features;
  compoundFeaturesCopy = compoundFeatures;
  localeCopy = locale;
  dCopy = d;
  applicationCopy = application;
  v17 = objc_opt_new();
  v60 = featuresCopy;
  v59 = [featuresCopy componentsSeparatedByString:@"|"];
  v18 = [FinHealthFeatureHelper reconstructAggregateFeaturesWithProcessingWindow:?];
  v19 = FHApplicationToTagsMapping(v18);
  v20 = [v19 objectForKey:applicationCopy];
  v21 = [v20 objectForKey:@"featuresWithIds"];

  v22 = v18;
  v23 = [MEMORY[0x277CCAC30] predicateWithFormat:@"SELF.%K in %@", @"name", v21];
  v24 = [v18 filteredArrayUsingPredicate:v23];
  v57 = [(FHDatabaseManager *)self _filterAggregateFeatureByCurrentWindow:v24];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __104__FHDatabaseManager__createFeatureResponseFromFeatures_compoundFeatures_locale_forTxnID_forApplication___block_invoke;
  aBlock[3] = &unk_2785CB0F8;
  v55 = v21;
  v66 = v55;
  v56 = v17;
  v67 = v56;
  v58 = localeCopy;
  v68 = v58;
  v25 = _Block_copy(aBlock);
  if ([compoundFeaturesCopy length])
  {
    v25[2](v25, compoundFeaturesCopy);
  }

  if (_os_feature_enabled_impl())
  {
    v26 = FHDataDirectory();
    v27 = [v26 stringByAppendingString:@"/inferred_merchants.txt"];

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v54 = v27;
    if ([defaultManager fileExistsAtPath:v27])
    {
      inferredMerchants = self->_inferredMerchants;

      if (inferredMerchants)
      {
LABEL_8:
        if (self->_inferredMerchants)
        {
          v49 = v24;
          v50 = v23;
          v51 = v22;
          v52 = dCopy;
          v53 = compoundFeaturesCopy;
          v48 = [(FHDatabaseManager *)self _getTransactionByIdentifier:dCopy];
          displayName = [v48 displayName];
          v61 = 0u;
          v62 = 0u;
          v63 = 0u;
          v64 = 0u;
          v34 = self->_inferredMerchants;
          v35 = [(NSArray *)v34 countByEnumeratingWithState:&v61 objects:v73 count:16];
          if (v35)
          {
            v36 = v35;
            v37 = *v62;
            do
            {
              for (i = 0; i != v36; ++i)
              {
                if (*v62 != v37)
                {
                  objc_enumerationMutation(v34);
                }

                if (displayName)
                {
                  v39 = *(*(&v61 + 1) + 8 * i);
                  if ([v39 containsString:displayName])
                  {
                    v40 = [v39 rangeOfString:@"###"];
                    if (v40 != 0x7FFFFFFFFFFFFFFFLL)
                    {
                      v41 = [v39 substringFromIndex:v40 + 3];
                      v42 = v25;
                      v25[2](v25, v41);
                      v43 = FinHealthLogObject(@"FinHealthCore");
                      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
                      {
                        *buf = 138412546;
                        v70 = v39;
                        v71 = 2112;
                        v72 = v41;
                        _os_log_impl(&dword_226DD4000, v43, OS_LOG_TYPE_DEBUG, "inferredMerchantEntry: %@, productsWithLabels: %@", buf, 0x16u);
                      }

                      v25 = v42;
                    }
                  }
                }
              }

              v36 = [(NSArray *)v34 countByEnumeratingWithState:&v61 objects:v73 count:16];
            }

            while (v36);
          }

          dCopy = v52;
          compoundFeaturesCopy = v53;
          v22 = v51;
          v24 = v49;
          v23 = v50;
          v44 = v54;
          v45 = v48;
        }

        else
        {
          v45 = FinHealthLogObject(@"FinHealthCore");
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v44 = v54;
            v70 = v54;
            _os_log_impl(&dword_226DD4000, v45, OS_LOG_TYPE_DEBUG, "check finalFilePath: %@", buf, 0xCu);
          }

          else
          {
            v44 = v54;
          }
        }

        goto LABEL_27;
      }

      defaultManager = [MEMORY[0x277CCACA8] stringWithContentsOfFile:v54 encoding:4 error:0];
      newlineCharacterSet = [MEMORY[0x277CCA900] newlineCharacterSet];
      v31 = [defaultManager componentsSeparatedByCharactersInSet:newlineCharacterSet];
      v32 = self->_inferredMerchants;
      self->_inferredMerchants = v31;
    }

    goto LABEL_8;
  }

LABEL_27:
  v46 = [[FHFeaturesResponse alloc] initWithSmartFeatures:v57 aggregateFeatureswithProcessingWindow:v24 compoundFeatures:v56 transactionID:dCopy];

  return v46;
}

void __104__FHDatabaseManager__createFeatureResponseFromFeatures_compoundFeatures_locale_forTxnID_forApplication___block_invoke(uint64_t a1, void *a2)
{
  v50 = *MEMORY[0x277D85DE8];
  v3 = [a2 dataUsingEncoding:4];
  v47 = 0;
  v4 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v3 options:0 error:&v47];
  v5 = v47;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && !v5)
  {
    v30 = v4;
    v31 = v3;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v34 = v4;
    obj = [v34 allKeys];
    v6 = [obj countByEnumeratingWithState:&v43 objects:v49 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v44;
      v32 = *v44;
      v33 = a1;
      do
      {
        v9 = 0;
        v35 = v7;
        do
        {
          if (*v44 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v43 + 1) + 8 * v9);
          if ([*(a1 + 32) containsObject:v10])
          {
            v38 = v9;
            v11 = objc_opt_new();
            v39 = 0u;
            v40 = 0u;
            v41 = 0u;
            v42 = 0u;
            v37 = v10;
            v12 = [v34 objectForKey:v10];
            v13 = [v12 countByEnumeratingWithState:&v39 objects:v48 count:16];
            if (v13)
            {
              v14 = v13;
              v15 = *v40;
              do
              {
                for (i = 0; i != v14; ++i)
                {
                  if (*v40 != v15)
                  {
                    objc_enumerationMutation(v12);
                  }

                  v17 = *(*(&v39 + 1) + 8 * i);
                  v18 = [v17 objectForKey:@"featureLabel"];
                  v19 = MEMORY[0x277CCACA8];
                  v20 = [v17 objectForKey:@"featureRank"];
                  [v20 doubleValue];
                  v22 = [v19 stringWithFormat:@"%f", v21];

                  v23 = [FHSmartCompoundFeatureRankedValue alloc];
                  v24 = [objc_alloc(MEMORY[0x277CCA980]) initWithString:v22];
                  v25 = [(FHSmartCompoundFeatureRankedValue *)v23 initWithLabelAndRank:v18 featureRank:v24];
                  [v11 addObject:v25];
                }

                v14 = [v12 countByEnumeratingWithState:&v39 objects:v48 count:16];
              }

              while (v14);
            }

            a1 = v33;
            if ([v11 count])
            {
              v26 = *(v33 + 40);
              v27 = [FHSmartCompoundFeature alloc];
              v28 = [MEMORY[0x277CBEA60] arrayWithArray:v11];
              v29 = [(FHSmartCompoundFeature *)v27 initWithCompoundFeatureKey:v37 smartCompoundFeatures:v28 locale:*(v33 + 48)];
              [v26 addObject:v29];
            }

            v8 = v32;
            v7 = v35;
            v9 = v38;
          }

          ++v9;
        }

        while (v9 != v7);
        v7 = [obj countByEnumeratingWithState:&v43 objects:v49 count:16];
      }

      while (v7);
    }

    v4 = v30;
    v3 = v31;
    v5 = 0;
  }
}

- (int64_t)_mostRecentTransactionDate
{
  v3 = [(PQLConnection *)self->_db fetch:@"select * from transactions t where t.t_type == %lu and t.t_status == %lu and t.a_type == %d order by t_date desc limit %d", 0, 1, 2, 1];
  if ([v3 next])
  {
    v4 = [(FHDatabaseManager *)self reconstructTransaction:v3];
    transactionDate = [v4 transactionDate];
    [transactionDate timeIntervalSinceReferenceDate];
    v7 = v6;
  }

  else
  {
    v7 = -1;
  }

  [v3 close];

  return v7;
}

- (int64_t)_startingDateSmartFeatureComputation
{
  if ([(FHDatabaseManager *)self mostRecentTransactionDate]== -1)
  {
    return -1;
  }

  else
  {
    return 0;
  }
}

- (void)_computeAllAggregateFeaturesWithTransactionId:(id)id
{
  idCopy = id;
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v7 = FinHealthLogObject(@"FinHealthCore");
  v8 = FinHealthLogObject(@"FinHealthCore");
  v9 = os_signpost_id_make_with_pointer(v8, self);

  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_226DD4000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v9, "_computeAllAggregateFeaturesWithTransactionId", "", buf, 2u);
  }

  v10 = FinHealthLogObject(@"FinHealthCore");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_226DD4000, v10, OS_LOG_TYPE_INFO, "BEGIN _computeAllAggregateFeaturesWithTransactionId", buf, 2u);
  }

  v12 = FHAmountSmartFeaturesArray(v11);
  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 3221225472;
  v56[2] = __67__FHDatabaseManager__computeAllAggregateFeaturesWithTransactionId___block_invoke;
  v56[3] = &unk_2785CB120;
  v56[4] = self;
  v13 = v4;
  v57 = v13;
  [v12 enumerateObjectsUsingBlock:v56];

  v15 = FHDateTimeSmartFeaturesArray(v14);
  v54[0] = MEMORY[0x277D85DD0];
  v54[1] = 3221225472;
  v54[2] = __67__FHDatabaseManager__computeAllAggregateFeaturesWithTransactionId___block_invoke_2;
  v54[3] = &unk_2785CB120;
  v54[4] = self;
  v16 = v5;
  v55 = v16;
  [v15 enumerateObjectsUsingBlock:v54];

  v18 = FHMerchantSmartFeaturesArray(v17);
  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = __67__FHDatabaseManager__computeAllAggregateFeaturesWithTransactionId___block_invoke_3;
  v52[3] = &unk_2785CB120;
  v52[4] = self;
  v19 = v6;
  v53 = v19;
  [v18 enumerateObjectsUsingBlock:v52];

  v20 = MEMORY[0x277CCACA8];
  _startingDateSmartFeatureComputation = [(FHDatabaseManager *)self _startingDateSmartFeatureComputation];
  mostRecentTransactionDate = [(FHDatabaseManager *)self mostRecentTransactionDate];
  v23 = FHMultiClassPredictionsSmartFeaturesAsString(mostRecentTransactionDate);
  v24 = [v20 stringWithFormat:@"select f.identifier, l.smart_feature_name FHSmartFeatureAggregateType from features_predicted_realtime f inner join features_prediction_labels l on f.feature_name = l.feature_name and l.feature_predicted_class = f.feature_predicted_class where f.identifier in (select t_identifier from transactions where t_date >= %lu and t_date <= %lu and t_fh_internal_state == %lu) and f.feature_name in (%@)", _startingDateSmartFeatureComputation, mostRecentTransactionDate, 2, v23];

  v25 = idCopy;
  v39 = v24;
  if (idCopy)
  {
    [(FHDatabaseManager *)self _executeSeparateQueriesForTransactionId:idCopy amountQueries:v13 dateTimeQueries:v16 merchantQueries:v19 multiClassQuery:v24];
  }

  else
  {
    v38 = v16;
    *buf = 0;
    v47 = buf;
    v48 = 0x3032000000;
    v49 = __Block_byref_object_copy_;
    v50 = __Block_byref_object_dispose_;
    v26 = 0;
    v51 = objc_alloc_init(MEMORY[0x277CBEB18]);
    do
    {
      v27 = objc_autoreleasePoolPush();
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __67__FHDatabaseManager__computeAllAggregateFeaturesWithTransactionId___block_invoke_4;
      v40[3] = &unk_2785CB148;
      v45 = buf;
      v40[4] = self;
      v28 = v13;
      v41 = v28;
      v29 = v38;
      v42 = v29;
      v30 = v19;
      v43 = v30;
      v31 = v39;
      v44 = v31;
      v32 = [(FHDatabaseManager *)self streamTransactionsWithLimit:25 internalState:2 offSet:v26 onTransaction:v40];

      objc_autoreleasePoolPop(v27);
      v26 += 25;
    }

    while (v32 == 25);
    if ([*(v47 + 5) count])
    {
      [(FHDatabaseManager *)self _executeSeparateQueriesForTransactionIds:*(v47 + 5) amountQueries:v28 dateTimeQueries:v29 merchantQueries:v30 multiClassQuery:v31];
    }

    _Block_object_dispose(buf, 8);

    v25 = 0;
    v16 = v38;
  }

  v33 = FinHealthLogObject(@"FinHealthCore");
  v34 = FinHealthLogObject(@"FinHealthCore");
  v35 = os_signpost_id_make_with_pointer(v34, self);

  if (v35 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v33))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_226DD4000, v33, OS_SIGNPOST_INTERVAL_END, v35, "_computeAllAggregateFeaturesWithTransactionId", "", buf, 2u);
  }

  v36 = FinHealthLogObject(@"FinHealthCore");
  if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_226DD4000, v36, OS_LOG_TYPE_INFO, "END _computeAllAggregateFeaturesWithTransactionId", buf, 2u);
  }
}

void __67__FHDatabaseManager__computeAllAggregateFeaturesWithTransactionId___block_invoke(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = [*(a1 + 32) getFHSmartFeatureByAmountType:?];
  v4 = [v3 comparator];
  v5 = [v3 amount];
  v6 = [v3 processingWindowStartDate];
  [v6 timeIntervalSinceReferenceDate];
  v8 = v7;

  v9 = [v3 processingWindowEndDate];
  [v9 timeIntervalSinceReferenceDate];
  v11 = v10;

  if (v4)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = *(a1 + 40);
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"select t_identifier, '%@, %lu, %lu' FHSmartFeatureAggregateType from transactions where t_amount %@ %lu", v15, v8, v11, v4, v5];
    [v13 addObject:v14];

    objc_autoreleasePoolPop(v12);
  }
}

void __67__FHDatabaseManager__computeAllAggregateFeaturesWithTransactionId___block_invoke_2(uint64_t a1, void *a2)
{
  v18 = a2;
  v3 = [*(a1 + 32) getFHSmartFeatureByDateTimeType:v18];
  v4 = [v3 startDate];
  [v4 timeIntervalSinceReferenceDate];
  v6 = v5;

  v7 = [v3 endDate];
  [v7 timeIntervalSinceReferenceDate];
  v9 = v8;

  v10 = [v3 processingWindowStartDate];
  [v10 timeIntervalSinceReferenceDate];
  v12 = v11;

  v13 = [v3 processingWindowEndDate];
  [v13 timeIntervalSinceReferenceDate];
  v15 = v14;

  v16 = objc_autoreleasePoolPush();
  v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"select t_identifier, '%@, %lu, %lu' FHSmartFeatureAggregateType from transactions where t_date >= %lu and t_date <= %lu and a_type == %d", v18, v12, v15, v6, v9, 2];
  [*(a1 + 40) addObject:v17];

  objc_autoreleasePoolPop(v16);
}

void __67__FHDatabaseManager__computeAllAggregateFeaturesWithTransactionId___block_invoke_3(uint64_t a1, void *a2)
{
  v14 = a2;
  v3 = [*(a1 + 32) getFHSmartFeatureByMerchantType:v14];
  v4 = [v3 processingWindowStartDate];
  [v4 timeIntervalSinceReferenceDate];
  v6 = v5;

  v7 = [v3 processingWindowEndDate];
  [v7 timeIntervalSinceReferenceDate];
  v9 = v8;

  v10 = objc_autoreleasePoolPush();
  v11 = MEMORY[0x277CCACA8];
  v12 = [v3 merchantDisplayName];
  v13 = [v11 stringWithFormat:@"select t_identifier, '%@, %lu, %lu' FHSmartFeatureAggregateType from transactions where m_displayname == %@", v14, v6, v9, v12];

  [*(a1 + 40) addObject:v13];
  objc_autoreleasePoolPop(v10);
}

void __67__FHDatabaseManager__computeAllAggregateFeaturesWithTransactionId___block_invoke_4(uint64_t a1, void *a2)
{
  v6 = a2;
  if ([*(*(*(a1 + 72) + 8) + 40) count] == 5)
  {
    [*(a1 + 32) _executeSeparateQueriesForTransactionIds:*(*(*(a1 + 72) + 8) + 40) amountQueries:*(a1 + 40) dateTimeQueries:*(a1 + 48) merchantQueries:*(a1 + 56) multiClassQuery:*(a1 + 64)];
    [*(*(*(a1 + 72) + 8) + 40) removeAllObjects];
  }

  if (![v6 transactionType] && objc_msgSend(v6, "transactionStatus") == 1 && objc_msgSend(v6, "accountType") == 2)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = *(*(*(a1 + 72) + 8) + 40);
    v5 = [v6 identifier];
    [v4 addObject:v5];

    objc_autoreleasePoolPop(v3);
  }
}

- (void)_executeSeparateQueriesForTransactionId:(id)id amountQueries:(id)queries dateTimeQueries:(id)timeQueries merchantQueries:(id)merchantQueries multiClassQuery:(id)query
{
  v20 = *MEMORY[0x277D85DE8];
  idCopy = id;
  v12 = MEMORY[0x277CBEA60];
  queryCopy = query;
  merchantQueriesCopy = merchantQueries;
  timeQueriesCopy = timeQueries;
  queriesCopy = queries;
  idCopy2 = id;
  v18 = [v12 arrayWithObjects:&idCopy count:1];

  [(FHDatabaseManager *)self _executeSeparateQueriesForTransactionIds:v18 amountQueries:queriesCopy dateTimeQueries:timeQueriesCopy merchantQueries:merchantQueriesCopy multiClassQuery:queryCopy, idCopy, v20];
}

- (void)_executeSeparateQueriesForTransactionIds:(id)ids amountQueries:(id)queries dateTimeQueries:(id)timeQueries merchantQueries:(id)merchantQueries multiClassQuery:(id)query
{
  v76 = *MEMORY[0x277D85DE8];
  idsCopy = ids;
  queriesCopy = queries;
  timeQueriesCopy = timeQueries;
  merchantQueriesCopy = merchantQueries;
  queryCopy = query;
  v16 = objc_opt_new();
  v49 = idsCopy;
  v54 = [(FHDatabaseManager *)self _buildTransactionIdFilter:idsCopy];
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  obj = queriesCopy;
  v17 = [obj countByEnumeratingWithState:&v68 objects:v75 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v69;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v69 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ AND t_identifier IN (%@)", *(*(&v68 + 1) + 8 * i), v54];
        [(FHDatabaseManager *)self _executeFeatureQuery:v21 aggregatedFeatures:v16];
      }

      v18 = [obj countByEnumeratingWithState:&v68 objects:v75 count:16];
    }

    while (v18);
  }

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v52 = timeQueriesCopy;
  v22 = [v52 countByEnumeratingWithState:&v64 objects:v74 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v65;
    do
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v65 != v24)
        {
          objc_enumerationMutation(v52);
        }

        v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ AND t_identifier IN (%@)", *(*(&v64 + 1) + 8 * j), v54];
        [(FHDatabaseManager *)self _executeFeatureQuery:v26 aggregatedFeatures:v16];
      }

      v23 = [v52 countByEnumeratingWithState:&v64 objects:v74 count:16];
    }

    while (v23);
  }

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v27 = merchantQueriesCopy;
  v28 = [v27 countByEnumeratingWithState:&v60 objects:v73 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v61;
    do
    {
      for (k = 0; k != v29; ++k)
      {
        if (*v61 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ AND t_identifier IN (%@)", *(*(&v60 + 1) + 8 * k), v54];
        [(FHDatabaseManager *)self _executeFeatureQuery:v32 aggregatedFeatures:v16];
      }

      v29 = [v27 countByEnumeratingWithState:&v60 objects:v73 count:16];
    }

    while (v29);
  }

  v47 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ AND f.identifier IN (%@)", queryCopy, v54];
  [FHDatabaseManager _executeFeatureQuery:"_executeFeatureQuery:aggregatedFeatures:" aggregatedFeatures:?];
  v46 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT t_identifier, t_compound_feature_value FROM features_compound_realtime WHERE t_identifier IN (%@)", v54];
  v33 = [(FHDatabaseManager *)self _lockFreeFetch:-1];
  v55 = objc_opt_new();
  if ([v33 next])
  {
    do
    {
      v34 = [v33 stringAtIndex:0];
      v35 = [v33 stringAtIndex:1];
      v36 = v35;
      if (v34 && v35)
      {
        [v55 setObject:v35 forKeyedSubscript:v34];
      }
    }

    while (([v33 next] & 1) != 0);
  }

  v45 = v33;
  v48 = v27;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  allKeys = [v16 allKeys];
  v37 = [allKeys countByEnumeratingWithState:&v56 objects:v72 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v57;
    do
    {
      for (m = 0; m != v38; ++m)
      {
        if (*v57 != v39)
        {
          objc_enumerationMutation(allKeys);
        }

        v41 = *(*(&v56 + 1) + 8 * m);
        v42 = [v16 objectForKeyedSubscript:v41];
        v43 = [v42 componentsJoinedByString:@"|||"];
        v44 = [v55 objectForKeyedSubscript:v41];
        [(FHDatabaseManager *)self _invertFeaturesForTransaction:v41 featuresString:v43 compoundFeatures:v44];
      }

      v38 = [allKeys countByEnumeratingWithState:&v56 objects:v72 count:16];
    }

    while (v38);
  }
}

- (id)_buildTransactionIdFilter:(id)filter
{
  v18 = *MEMORY[0x277D85DE8];
  filterCopy = filter;
  v4 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = filterCopy;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"'%@'", *(*(&v13 + 1) + 8 * i)];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [v4 componentsJoinedByString:{@", "}];

  return v11;
}

- (void)_executeFeatureQuery:(id)query aggregatedFeatures:(id)features
{
  queryCopy = query;
  featuresCopy = features;
  v7 = [(FHDatabaseManager *)self _lockFreeFetch:queryCopy, -1];
  if ([v7 next])
  {
    do
    {
      v8 = objc_autoreleasePoolPush();
      v9 = [v7 stringAtIndex:0];
      v10 = [v7 stringAtIndex:1];
      v11 = v10;
      if (v9 && v10)
      {
        v12 = [featuresCopy objectForKeyedSubscript:v9];

        if (!v12)
        {
          v13 = objc_opt_new();
          [featuresCopy setObject:v13 forKeyedSubscript:v9];
        }

        v14 = [featuresCopy objectForKeyedSubscript:v9];
        [v14 addObject:v11];
      }

      objc_autoreleasePoolPop(v8);
    }

    while (([v7 next] & 1) != 0);
  }
}

- (void)_invertFeaturesForTransaction:(id)transaction featuresString:(id)string compoundFeatures:(id)features
{
  v29 = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  stringCopy = string;
  featuresCopy = features;
  v11 = [(FHDatabaseManager *)self _getTransactionByIdentifier:transactionCopy];
  if (![v11 transactionType] && objc_msgSend(v11, "transactionStatus") == 1 && objc_msgSend(v11, "accountType") == 2)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = MEMORY[0x277CBEB98];
    v14 = [stringCopy componentsSeparatedByString:@"|||"];
    v15 = [v13 setWithArray:v14];

    v16 = [(FHDatabaseManager *)self _getDisputeFeaturesForTransaction:v11];
    if (v16)
    {
      v17 = [v15 setByAddingObjectsFromSet:v16];

      v15 = v17;
    }

    if (!transactionCopy)
    {
      goto LABEL_16;
    }

    v18 = [v15 count];
    if (!featuresCopy && !v18)
    {
      goto LABEL_16;
    }

    financeTransactionIdentifier = [v11 financeTransactionIdentifier];
    v20 = [(FHDatabaseManager *)self _insertOrUpdateTransactionFeatures:v15 compoundFeatures:featuresCopy transactionID:transactionCopy financeTransactionID:financeTransactionIdentifier];

    v21 = FinHealthLogObject(@"FinHealthCore");
    v22 = v21;
    if (v20)
    {
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v27) = 0;
        v23 = "_insertOrUpdateTransactionFeatures success";
        v24 = v22;
        v25 = OS_LOG_TYPE_DEBUG;
        v26 = 2;
LABEL_14:
        _os_log_impl(&dword_226DD4000, v24, v25, v23, &v27, v26);
      }
    }

    else if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v27 = 138412290;
      v28 = transactionCopy;
      v23 = "_insertOrUpdateTransactionFeatures fails for transactionID %@";
      v24 = v22;
      v25 = OS_LOG_TYPE_ERROR;
      v26 = 12;
      goto LABEL_14;
    }

LABEL_16:
    objc_autoreleasePoolPop(v12);
  }
}

- (void)clearCardProcessingHistory
{
  v14 = *MEMORY[0x277D85DE8];
  objc_initWeak(&location, self);
  v2 = [FHDatabaseEntity alloc];
  v3 = objc_loadWeakRetained(&location);
  v4 = [(FHDatabaseEntity *)v2 initWithEntity:@"fh_processing_history" databaseManager:v3];

  v5 = [FHDatabaseClauseFromBuilder initWithBuilder:&__block_literal_global_229];
  v6 = [(FHDatabaseEntity *)v4 clearDataWithClauseBuilder:v5];
  v7 = FinHealthLogObject(@"FinHealthClient");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = @"Failed to perform";
    if (v6)
    {
      v8 = @"Successfully performed operation";
    }

    *buf = 138412546;
    v11 = v8;
    v12 = 2112;
    v13 = @"FHSmartFeatureCompoundTypePointsOfInterest";
    _os_log_impl(&dword_226DD4000, v7, OS_LOG_TYPE_DEBUG, "%@: delete all card processing history records of feature %@", buf, 0x16u);
  }

  objc_destroyWeak(&location);
}

- (BOOL)_insertOrUpdateTransactionFeatures:(id)features compoundFeatures:(id)compoundFeatures transactionID:(id)d financeTransactionID:(id)iD
{
  featuresCopy = features;
  compoundFeaturesCopy = compoundFeatures;
  dCopy = d;
  iDCopy = iD;
  if (!dCopy)
  {
    goto LABEL_13;
  }

  v36 = compoundFeaturesCopy;
  allObjects = [featuresCopy allObjects];
  v15 = [allObjects componentsJoinedByString:@"|"];

  selfCopy = self;
  dCopy = [(PQLConnection *)self->_db fetch:@"select t_features, t_compound_features, locale from transaction_features where t_identifier == %@", dCopy];
  if (![dCopy next])
  {
    v29 = v36;
    goto LABEL_11;
  }

  v35 = compoundFeaturesCopy;
  v17 = MEMORY[0x277CBEB58];
  v18 = [dCopy stringAtIndex:0];
  v19 = [v18 componentsSeparatedByString:@"|"];
  v20 = [v17 setWithArray:v19];

  v22 = FHRepeatingAggregateFeatureSet(v21);
  v23 = [v20 intersectsSet:v22];
  if (!v23)
  {
    goto LABEL_6;
  }

  v24 = FHRepeatingAggregateFeatureSet(v23);
  v25 = [featuresCopy intersectsSet:v24];

  if (v25)
  {
    v22 = FHRepeatingAggregateFeatureSet(v26);
    [v20 minusSet:v22];
LABEL_6:
  }

  [v20 unionSet:featuresCopy];
  allObjects2 = [v20 allObjects];
  v28 = [allObjects2 componentsJoinedByString:@"|"];

  v29 = v36;
  if (!v36)
  {
    v29 = [dCopy stringAtIndex:1];
  }

  v15 = v28;
  compoundFeaturesCopy = v35;
LABEL_11:
  [dCopy close];
  autoupdatingCurrentLocale = [MEMORY[0x277CBEAF8] autoupdatingCurrentLocale];
  localeIdentifier = [autoupdatingCurrentLocale localeIdentifier];
  iDCopy = [(FHDatabaseManager *)selfCopy _execute:@"insert or replace into transaction_features (t_identifier, t_features, t_compound_features, locale, t_mark_for_delete, t_finance_transaction_id) values (%@, %@, %@, %@, %d, %@)", dCopy, v15, v29, localeIdentifier, 0, iDCopy];

  if (!iDCopy)
  {
LABEL_13:
    v33 = 0;
    goto LABEL_14;
  }

  v33 = 1;
LABEL_14:

  return v33;
}

- (id)getTransactionSmartFeaturesForApplication:(id)application
{
  v50 = *MEMORY[0x277D85DE8];
  applicationCopy = application;
  v5 = objc_opt_new();
  v6 = FHApplications(v5);
  v7 = [v6 containsObject:applicationCopy];

  if (v7)
  {
    v9 = FHApplicationToTagsMapping(v8);
    v10 = [v9 objectForKey:applicationCopy];
    v11 = [v10 objectForKey:@"featuresWithIds"];

    v28 = @"FinHealthCore";
    v12 = FinHealthLogObject(@"FinHealthCore");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v39 = "[FHDatabaseManager getTransactionSmartFeaturesForApplication:]";
      v40 = 2112;
      v41 = applicationCopy;
      v42 = 2112;
      v43 = v11;
      _os_log_impl(&dword_226DD4000, v12, OS_LOG_TYPE_DEBUG, "%s Application[%@] is asking for tags with transaction ids: %@", buf, 0x20u);
    }

    v13 = MEMORY[0x277CCAC30];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __63__FHDatabaseManager_getTransactionSmartFeaturesForApplication___block_invoke;
    v35[3] = &unk_2785CB190;
    v29 = v11;
    v30 = applicationCopy;
    v36 = v29;
    v14 = applicationCopy;
    v37 = v14;
    v31 = [v13 predicateWithBlock:v35];
    if ([v14 isEqual:@"Search"])
    {
      self->_transactionFeaturesOffset = 0;
    }

    [v5 addObjectsFromArray:self->_transactionFeaturesCache];
    [(NSMutableArray *)self->_transactionFeaturesCache removeAllObjects];
    v15 = 0;
    while (1)
    {
      v16 = [v5 count];
      if (v16 >= 0x64)
      {
        break;
      }

      v17 = [v14 isEqualToString:@"Search"];
      transactionFeaturesOffset = self->_transactionFeaturesOffset;
      if (v17)
      {
        [MEMORY[0x277CCACA8] stringWithFormat:@"select t_identifier, t_features, t_compound_features, locale from transaction_features where t_mark_for_delete = %d limit %d offset %d", 0, 100, transactionFeaturesOffset, v28, v29];
      }

      else
      {
        [MEMORY[0x277CCACA8] stringWithFormat:@"select t_identifier, t_features, t_compound_features, locale from transaction_features limit %d offset %d", 100, transactionFeaturesOffset, v27, v28, v29];
      }
      v19 = ;

      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __63__FHDatabaseManager_getTransactionSmartFeaturesForApplication___block_invoke_2;
      v32[3] = &unk_2785CB1B8;
      v32[4] = self;
      v33 = v14;
      v34 = v5;
      v20 = [(FHDatabaseManager *)self streamGenericSQLFetch:v32 predicate:v31 sqlFetchQuery:v19];
      self->_transactionFeaturesOffset += v20;

      v15 = v19;
      if (!v20)
      {
        [(NSMutableArray *)self->_transactionFeaturesCache removeAllObjects];
        goto LABEL_15;
      }
    }

    v19 = v15;
LABEL_15:
    v22 = FinHealthLogObject(v28);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      v23 = [v5 count];
      v24 = self->_transactionFeaturesOffset;
      v25 = @"True";
      *buf = 136316418;
      v39 = "[FHDatabaseManager getTransactionSmartFeaturesForApplication:]";
      if (v16 < 0x64)
      {
        v25 = @"False";
      }

      v40 = 2112;
      v41 = v14;
      v42 = 2048;
      v43 = v23;
      v44 = 2112;
      v45 = v25;
      v46 = 2048;
      v47 = v24;
      v48 = 2112;
      v49 = v5;
      _os_log_impl(&dword_226DD4000, v22, OS_LOG_TYPE_DEBUG, "%s Transaction features for Application[%@] count[%lu] moreComing[%@] scanOffset[%lu] :%@", buf, 0x3Eu);
    }

    if ([v5 count])
    {
      v21 = [MEMORY[0x277CBEA60] arrayWithArray:v5];
    }

    else
    {
      v21 = 0;
    }

    applicationCopy = v30;
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

uint64_t __63__FHDatabaseManager_getTransactionSmartFeaturesForApplication___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    v15 = a1;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * v8);
        v10 = [v3 objectForKey:@"t_features"];
        if ([v10 containsString:v9])
        {

LABEL_13:
          v13 = 1;
          goto LABEL_14;
        }

        v11 = [v3 objectForKey:@"t_compound_features"];
        v12 = [v11 containsString:v9];

        if (v12)
        {
          goto LABEL_13;
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
      a1 = v15;
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  if ([*(a1 + 40) isEqualToString:@"Search"])
  {
    v4 = [v3 objectForKey:@"t_features"];
    v13 = [v4 isEqualToString:&stru_283A7B918];
LABEL_14:
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void __63__FHDatabaseManager_getTransactionSmartFeaturesForApplication___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 objectAtIndexedSubscript:1];
  v6 = [v5 stringValue];
  v7 = [v4 objectAtIndexedSubscript:2];
  v8 = [v7 stringValue];
  v9 = [v4 objectAtIndexedSubscript:3];
  v10 = [v9 stringValue];
  v11 = [v4 objectAtIndexedSubscript:0];

  v12 = [v11 stringValue];
  v14 = [v3 _createFeatureResponseFromFeatures:v6 compoundFeatures:v8 locale:v10 forTxnID:v12 forApplication:*(a1 + 40)];

  v13 = (a1 + 48);
  if ([*(a1 + 48) count] >= 0x64)
  {
    v13 = (*(a1 + 32) + 96);
  }

  [*v13 addObject:v14];
}

- (BOOL)deleteAllMarkedTransactionFeatures
{
  objc_initWeak(&location, self);
  v2 = [FHDatabaseEntity alloc];
  v3 = objc_loadWeakRetained(&location);
  v4 = [(FHDatabaseEntity *)v2 initWithEntity:@"transaction_features" databaseManager:v3];

  v5 = [FHDatabaseClauseFromBuilder initWithBuilder:&__block_literal_global_249];
  v6 = [(FHDatabaseEntity *)v4 clearDataWithClauseBuilder:v5];

  objc_destroyWeak(&location);
  return v6;
}

- (BOOL)deleteAllRecordsFromTransactionFeatures
{
  v2 = [[FHDatabaseEntity alloc] initWithEntity:@"transaction_features" databaseManager:self];
  clearData = [(FHDatabaseEntity *)v2 clearData];

  return clearData;
}

- (BOOL)deleteTaggedButDeletedEvent:(id)event
{
  eventCopy = event;
  v5 = [[FHDatabaseEntity alloc] initWithEntity:@"features_events" databaseManager:self];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __49__FHDatabaseManager_deleteTaggedButDeletedEvent___block_invoke;
  v10[3] = &unk_2785CB058;
  v11 = eventCopy;
  v6 = eventCopy;
  v7 = [FHDatabaseClauseFromBuilder initWithBuilder:v10];
  v8 = [(FHDatabaseEntity *)v5 clearDataWithClauseBuilder:v7];

  return v8;
}

- (BOOL)deleteTaggedEventsInTimeRange:(id)range startDate:(id)date comparatorOfEndDate:(id)endDate endDate:(id)a6
{
  rangeCopy = range;
  dateCopy = date;
  endDateCopy = endDate;
  v13 = a6;
  v14 = [[FHDatabaseEntity alloc] initWithEntity:@"features_events" databaseManager:self];
  v22 = MEMORY[0x277D85DD0];
  v23 = 3221225472;
  v24 = __89__FHDatabaseManager_deleteTaggedEventsInTimeRange_startDate_comparatorOfEndDate_endDate___block_invoke;
  v25 = &unk_2785CB1E0;
  v26 = rangeCopy;
  v27 = dateCopy;
  v28 = endDateCopy;
  v29 = v13;
  v15 = v13;
  v16 = endDateCopy;
  v17 = dateCopy;
  v18 = rangeCopy;
  v19 = [FHDatabaseClauseFromBuilder initWithBuilder:&v22];
  v20 = [(FHDatabaseEntity *)v14 clearDataWithClauseBuilder:v19, v22, v23, v24, v25];

  return v20;
}

void __89__FHDatabaseManager_deleteTaggedEventsInTimeRange_startDate_comparatorOfEndDate_endDate___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a2;
  [v5 addDateClause:v3 fieldName:@"features_events.start_date" expression:v4];
  [v5 addDateClause:a1[6] fieldName:@"features_events.end_date" expression:a1[7]];
}

- (void)computeRecurringClassesWithMerchantEntityCounts:(id)counts peerPaymentCounts:(id)paymentCounts merchantDetailedCategoryCounts:(id)categoryCounts
{
  v91 = *MEMORY[0x277D85DE8];
  countsCopy = counts;
  paymentCountsCopy = paymentCounts;
  categoryCountsCopy = categoryCounts;
  v11 = FinHealthLogObject(@"FinHealthCore");
  v12 = FinHealthLogObject(@"FinHealthCore");
  v13 = os_signpost_id_make_with_pointer(v12, self);

  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_226DD4000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v13, "processAggregateFeatures:computeRecurringHistograms", "", buf, 2u);
  }

  v14 = FinHealthLogObject(@"FinHealthCore");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_226DD4000, v14, OS_LOG_TYPE_INFO, "BEGIN processAggregateFeatures:computeRecurringHistograms", buf, 2u);
  }

  *buf = 0;
  v83 = buf;
  v84 = 0x3032000000;
  v85 = __Block_byref_object_copy_;
  v86 = __Block_byref_object_dispose_;
  v87 = self->_decimalRmseThreshold;
  v80[0] = 0;
  v80[1] = v80;
  v80[2] = 0x3032000000;
  v80[3] = __Block_byref_object_copy_;
  v80[4] = __Block_byref_object_dispose_;
  v81 = self->_secondsInDay;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __118__FHDatabaseManager_computeRecurringClassesWithMerchantEntityCounts_peerPaymentCounts_merchantDetailedCategoryCounts___block_invoke;
  aBlock[3] = &unk_2785CB278;
  aBlock[5] = buf;
  aBlock[6] = v80;
  aBlock[4] = self;
  v41 = _Block_copy(aBlock);
  v73 = 0;
  v74 = &v73;
  v75 = 0x3032000000;
  v76 = __Block_byref_object_copy_;
  v77 = __Block_byref_object_dispose_;
  v78 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v67 = 0;
  v68 = &v67;
  v69 = 0x3032000000;
  v70 = __Block_byref_object_copy_;
  v71 = __Block_byref_object_dispose_;
  v72 = objc_opt_new();
  v61 = 0;
  v62 = &v61;
  v63 = 0x3032000000;
  v64 = __Block_byref_object_copy_;
  v65 = __Block_byref_object_dispose_;
  v66 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v39 = objc_opt_new();
  v55 = 0;
  v56 = &v55;
  v57 = 0x3032000000;
  v58 = __Block_byref_object_copy_;
  v59 = __Block_byref_object_dispose_;
  v60 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v40 = objc_opt_new();
  v38 = [countsCopy keysOfEntriesPassingTest:&__block_literal_global_273];
  allObjects = [v38 allObjects];
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __118__FHDatabaseManager_computeRecurringClassesWithMerchantEntityCounts_peerPaymentCounts_merchantDetailedCategoryCounts___block_invoke_2_274;
  v46[3] = &unk_2785CB2C0;
  v46[4] = self;
  v35 = paymentCountsCopy;
  v47 = v35;
  v51 = &v73;
  v37 = allObjects;
  v48 = v37;
  v52 = &v61;
  v36 = categoryCountsCopy;
  v49 = v36;
  v53 = &v55;
  v54 = &v67;
  v34 = countsCopy;
  v50 = v34;
  [(FHDatabaseManager *)self streamTransactionsWithLimit:-1 internalState:2 onTransaction:v46];
  v41[2](v41, v74[5], v68[5]);
  [v74[5] removeAllObjects];
  if ([v62[5] count])
  {
    v41[2](v41, v62[5], v39);
    [v62[5] removeAllObjects];
  }

  v41[2](v41, v56[5], v40);
  [v56[5] removeAllObjects];
  [(FHDatabaseManager *)self _getTransactionsMarkedForRecurrChange];
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v16 = v43 = 0u;
  v17 = [v16 countByEnumeratingWithState:&v42 objects:v90 count:16];
  if (v17)
  {
    v18 = *v43;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v43 != v18)
        {
          objc_enumerationMutation(v16);
        }

        v20 = *(*(&v42 + 1) + 8 * i);
        v21 = objc_alloc_init(FHRealtimeFeaturesResponse);
        v22 = objc_alloc(MEMORY[0x277CBEB38]);
        v23 = [(FHDatabaseManager *)self compoundFeaturesForTransaction:v20];
        v24 = [v22 initWithDictionary:v23];

        v25 = [v16 objectForKey:v20];
        [v24 setObject:v25 forKey:@"FHSmartFeatureCompoundTypeRecurringChange"];
        [(FHRealtimeFeaturesResponse *)v21 setSmartCompoundFeatures:v24];
        if ([(FHDatabaseManager *)self insertFeaturesCompoundRealtime:v20 realtimeFeatures:v21])
        {
          v26 = FinHealthLogObject(@"FinHealthCore");
          if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_19;
          }

          *v88 = 138412290;
          v89 = v25;
          v27 = v26;
          v28 = OS_LOG_TYPE_DEBUG;
          v29 = "insertSuccess: smartFeatureValues: %@";
        }

        else
        {
          v26 = FinHealthLogObject(@"FinHealthCore");
          if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_19;
          }

          *v88 = 138412290;
          v89 = v25;
          v27 = v26;
          v28 = OS_LOG_TYPE_ERROR;
          v29 = "insertFailure smartFeatureValues: %@";
        }

        _os_log_impl(&dword_226DD4000, v27, v28, v29, v88, 0xCu);
LABEL_19:
      }

      v17 = [v16 countByEnumeratingWithState:&v42 objects:v90 count:16];
    }

    while (v17);
  }

  v30 = FinHealthLogObject(@"FinHealthCore");
  v31 = FinHealthLogObject(@"FinHealthCore");
  v32 = os_signpost_id_make_with_pointer(v31, self);

  if (v32 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v30))
  {
    *v88 = 0;
    _os_signpost_emit_with_name_impl(&dword_226DD4000, v30, OS_SIGNPOST_INTERVAL_END, v32, "processAggregateFeatures:computeRecurringHistograms", "", v88, 2u);
  }

  v33 = FinHealthLogObject(@"FinHealthCore");
  if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
  {
    *v88 = 0;
    _os_log_impl(&dword_226DD4000, v33, OS_LOG_TYPE_INFO, "END processAggregateFeatures:computeRecurringHistograms", v88, 2u);
  }

  _Block_object_dispose(&v55, 8);
  _Block_object_dispose(&v61, 8);

  _Block_object_dispose(&v67, 8);
  _Block_object_dispose(&v73, 8);

  _Block_object_dispose(v80, 8);
  _Block_object_dispose(buf, 8);
}

void __118__FHDatabaseManager_computeRecurringClassesWithMerchantEntityCounts_peerPaymentCounts_merchantDetailedCategoryCounts___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __118__FHDatabaseManager_computeRecurringClassesWithMerchantEntityCounts_peerPaymentCounts_merchantDetailedCategoryCounts___block_invoke_2;
  v7[3] = &unk_2785CB250;
  v9 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v5;
  [a2 enumerateKeysAndObjectsUsingBlock:v7];
}

void __118__FHDatabaseManager_computeRecurringClassesWithMerchantEntityCounts_peerPaymentCounts_merchantDetailedCategoryCounts___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  [v6 sortUsingComparator:&__block_literal_global_264];
  if ([v6 count] >= 3)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = [v6 copy];
    v9 = *(*(*(a1 + 48) + 8) + 40);
    v10 = *(*(*(a1 + 56) + 8) + 40);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __118__FHDatabaseManager_computeRecurringClassesWithMerchantEntityCounts_peerPaymentCounts_merchantDetailedCategoryCounts___block_invoke_4;
    v13[3] = &unk_2785CB228;
    v11 = v6;
    v12 = *(a1 + 32);
    v14 = v11;
    v15 = v12;
    v16 = v5;
    v17 = *(a1 + 40);
    [FinHealthRecurringHelper rootMeanSquareErrorForSlidingWindowWithCompletion:v8 slidingWindowWidth:3 decimalThreshold:v9 decimalDenominator:v10 decimalKeyEntry:@"transactionDate" completion:v13];

    objc_autoreleasePoolPop(v7);
  }
}

uint64_t __118__FHDatabaseManager_computeRecurringClassesWithMerchantEntityCounts_peerPaymentCounts_merchantDetailedCategoryCounts___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [v5 objectForKey:@"repeatingClass"];
  LODWORD(a2) = [v6 intValue];

  v7 = [v4 objectForKey:@"repeatingClass"];
  LODWORD(v6) = [v7 intValue];

  v8 = [v5 objectForKey:@"transactionDate"];

  [v8 doubleValue];
  v10 = v9;

  v11 = [v4 objectForKey:@"transactionDate"];

  [v11 doubleValue];
  v13 = v12;

  v14 = (a2 - v6);
  if (a2 == v6)
  {
    return (v13 - v10);
  }

  return v14;
}

void __118__FHDatabaseManager_computeRecurringClassesWithMerchantEntityCounts_peerPaymentCounts_merchantDetailedCategoryCounts___block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v20 = a3;
  v5 = 3;
  do
  {
    v6 = [*(a1 + 32) objectAtIndex:a2];
    context = objc_autoreleasePoolPush();
    v7 = [v6 objectForKey:@"identifier"];
    v8 = [v6 objectForKey:@"transactionDate"];
    [v8 doubleValue];
    v10 = v9;

    v11 = [v6 objectForKey:@"repeatingClass"];
    v12 = [v11 intValue];
    v13 = *(a1 + 40);
    v14 = *(a1 + 48);
    [v20 doubleValue];
    if (([v13 _execute:{@"insert or replace into features_heuristics (t_identifier, t_heuristics_identifier, t_heuristics_value, t_heuristics_score) values (%@, %@, %d, %f)", v7, v14, v10, v15}] & 1) == 0)
    {
      v16 = FinHealthLogObject(@"FinHealthCore");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v23 = v7;
        _os_log_impl(&dword_226DD4000, v16, OS_LOG_TYPE_ERROR, "FHInsertOrUpdateIntoFeaturesHeuristics failed for %@", buf, 0xCu);
      }
    }

    v17 = v12;
    v18 = objc_alloc_init(FHRealtimeFeaturesResponse);
    [(FHRealtimeFeaturesResponse *)v18 setRepeatingPatternClass:v17];
    if (([*(a1 + 40) insertFeaturesPredictedRealtime:v7 realtimeFeatures:v18] & 1) == 0)
    {
      v19 = FinHealthLogObject(@"FinHealthCore");
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v23 = v7;
        _os_log_impl(&dword_226DD4000, v19, OS_LOG_TYPE_ERROR, "FHInsertIntoFeaturesPredictedRealTime failed for %@", buf, 0xCu);
      }
    }

    [*(a1 + 56) addObject:v7];

    objc_autoreleasePoolPop(context);
    ++a2;
    --v5;
  }

  while (v5);
}

void __118__FHDatabaseManager_computeRecurringClassesWithMerchantEntityCounts_peerPaymentCounts_merchantDetailedCategoryCounts___block_invoke_2_274(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  [*(a1 + 32) populateRecurringClassHistogramsWithPeerPaymentsCounts:*(a1 + 40) histogram:*(*(*(a1 + 72) + 8) + 40) transaction:v3];
  objc_autoreleasePoolPop(v4);
  if ([v3 accountType] == 2)
  {
    v5 = *(a1 + 48);
    v6 = [v3 displayName];
    LODWORD(v5) = [v5 containsObject:v6];

    if (v5)
    {
      [*(a1 + 32) _populateMerchantEntityRecurringClassHistograms:*(*(*(a1 + 80) + 8) + 40) transaction:v3];
    }
  }

  v7 = [v3 displayName];
  if (v7)
  {
    v8 = v7;
    v9 = [v3 displayName];
    if ([v9 length] && !objc_msgSend(v3, "transactionType"))
    {
      v10 = [v3 transactionStatus];

      if (v10 == 1)
      {
        v11 = objc_autoreleasePoolPush();
        v12 = [v3 identifier];
        if (([*(*(*(a1 + 96) + 8) + 40) containsObject:v12] & 1) == 0)
        {
          v13 = [v3 displayName];
          v14 = [*(a1 + 64) objectForKey:v13];
          if ([v14 integerValue] >= 3)
          {
            v15 = 1;
          }

          else
          {
            v15 = 2;
          }

          v16 = objc_alloc_init(FHRealtimeFeaturesResponse);
          [(FHRealtimeFeaturesResponse *)v16 setRepeatingPatternClass:v15];
          if (([*(a1 + 32) insertFeaturesPredictedRealtime:v12 realtimeFeatures:v16] & 1) == 0)
          {
            v17 = FinHealthLogObject(@"FinHealthCore");
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              v18 = 138412290;
              v19 = v12;
              _os_log_impl(&dword_226DD4000, v17, OS_LOG_TYPE_ERROR, "FHInsertIntoFeaturesPredictedRealTime failed for %@", &v18, 0xCu);
            }
          }
        }

        objc_autoreleasePoolPop(v11);
      }
    }

    else
    {
    }
  }
}

- (void)populateRecurringClassHistogramsWithPeerPaymentsCounts:(id)counts histogram:(id)histogram transaction:(id)transaction
{
  v44 = *MEMORY[0x277D85DE8];
  countsCopy = counts;
  histogramCopy = histogram;
  transactionCopy = transaction;
  peerPaymentCounterpartHandle = [transactionCopy peerPaymentCounterpartHandle];
  if ([transactionCopy transactionType] == 3)
  {
    v11 = [countsCopy objectForKey:peerPaymentCounterpartHandle];
    if ([v11 integerValue] >= 3)
    {
      v12 = [transactionCopy recurring] ^ 1;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = [transactionCopy accountType] == 1 && objc_msgSend(transactionCopy, "transactionType") == 6;
  if ((v12 | v13))
  {
    v30 = peerPaymentCounterpartHandle;
    v31 = countsCopy;
    context = objc_autoreleasePoolPush();
    [FinHealthRecurringHelper histogramKeysForTransaction:transactionCopy];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    obj = v40 = 0u;
    v34 = [obj countByEnumeratingWithState:&v37 objects:v43 count:16];
    if (v34)
    {
      v33 = *v38;
      do
      {
        for (i = 0; i != v34; ++i)
        {
          if (*v38 != v33)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v37 + 1) + 8 * i);
          featureLabel = [v15 featureLabel];
          v17 = [histogramCopy objectForKey:featureLabel];
          transactionDate = [transactionCopy transactionDate];
          [transactionDate timeIntervalSinceReferenceDate];
          v20 = v19;

          v21 = MEMORY[0x277CCA980];
          v22 = [MEMORY[0x277CCABB0] numberWithDouble:v20];
          v23 = v22;
          if (v22)
          {
            objc_msgSend_decimalValue(v22);
          }

          else
          {
            v35[0] = 0;
            v35[1] = 0;
            v36 = 0;
          }

          v24 = [v21 decimalNumberWithDecimal:v35];

          v42[0] = v24;
          v41[0] = @"transactionDate";
          v41[1] = @"identifier";
          identifier = [transactionCopy identifier];
          v42[1] = identifier;
          v41[2] = @"transactionSourceIdentifier";
          transactionSourceIdentifier = [transactionCopy transactionSourceIdentifier];
          v42[2] = transactionSourceIdentifier;
          v41[3] = @"repeatingClass";
          featureRank = [v15 featureRank];
          v42[3] = featureRank;
          v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:4];

          if (v17)
          {
            [v17 addObject:v28];
          }

          else
          {
            v17 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v28, 0}];
          }

          [histogramCopy setValue:v17 forKey:featureLabel];
        }

        v34 = [obj countByEnumeratingWithState:&v37 objects:v43 count:16];
      }

      while (v34);
    }

    objc_autoreleasePoolPop(context);
    peerPaymentCounterpartHandle = v30;
    countsCopy = v31;
  }
}

- (void)_populateMerchantEntityRecurringClassHistograms:(id)histograms transaction:(id)transaction
{
  v40 = *MEMORY[0x277D85DE8];
  histogramsCopy = histograms;
  transactionCopy = transaction;
  v7 = objc_autoreleasePoolPush();
  displayName = [transactionCopy displayName];
  accountType = [transactionCopy accountType];
  if (displayName && [displayName length] && !objc_msgSend(transactionCopy, "transactionType") && objc_msgSend(transactionCopy, "transactionStatus") == 1 && !objc_msgSend(transactionCopy, "transactionSource") && (objc_msgSend(transactionCopy, "cardType") == 7 || objc_msgSend(transactionCopy, "cardType") == 6) || accountType == 4)
  {
    v26 = displayName;
    v27 = v7;
    context = objc_autoreleasePoolPush();
    [FinHealthRecurringHelper histogramKeysForTransaction:transactionCopy];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    obj = v36 = 0u;
    v30 = [obj countByEnumeratingWithState:&v33 objects:v39 count:16];
    if (v30)
    {
      v29 = *v34;
      do
      {
        for (i = 0; i != v30; ++i)
        {
          if (*v34 != v29)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v33 + 1) + 8 * i);
          featureLabel = [v11 featureLabel];
          v13 = [histogramsCopy objectForKey:featureLabel];
          transactionDate = [transactionCopy transactionDate];
          [transactionDate timeIntervalSinceReferenceDate];
          v16 = v15;

          v17 = MEMORY[0x277CCA980];
          v18 = [MEMORY[0x277CCABB0] numberWithDouble:v16];
          v19 = v18;
          if (v18)
          {
            objc_msgSend_decimalValue(v18);
          }

          else
          {
            v31[0] = 0;
            v31[1] = 0;
            v32 = 0;
          }

          v20 = [v17 decimalNumberWithDecimal:v31];

          v38[0] = v20;
          v37[0] = @"transactionDate";
          v37[1] = @"identifier";
          identifier = [transactionCopy identifier];
          v38[1] = identifier;
          v37[2] = @"transactionSourceIdentifier";
          transactionSourceIdentifier = [transactionCopy transactionSourceIdentifier];
          v38[2] = transactionSourceIdentifier;
          v37[3] = @"repeatingClass";
          featureRank = [v11 featureRank];
          v38[3] = featureRank;
          v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:4];

          if (v13)
          {
            [v13 addObject:v24];
          }

          else
          {
            v13 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v24, 0}];
          }

          [histogramsCopy setValue:v13 forKey:featureLabel];
        }

        v30 = [obj countByEnumeratingWithState:&v33 objects:v39 count:16];
      }

      while (v30);
    }

    objc_autoreleasePoolPop(context);
    displayName = v26;
    v7 = v27;
  }

  objc_autoreleasePoolPop(v7);
}

- (void)populateRecurringClassHistogramsWithMerchantDetailedCategoryCounts:(id)counts histogram:(id)histogram transaction:(id)transaction
{
  v47 = *MEMORY[0x277D85DE8];
  countsCopy = counts;
  histogramCopy = histogram;
  transactionCopy = transaction;
  merchantDetailedCategory = [transactionCopy merchantDetailedCategory];
  v11 = merchantDetailedCategory;
  if (merchantDetailedCategory && ([merchantDetailedCategory isEqualToString:@"undefined"] & 1) == 0 && objc_msgSend(v11, "length") && (objc_msgSend(transactionCopy, "accountType") == 2 || objc_msgSend(transactionCopy, "accountType") == 4) && !objc_msgSend(transactionCopy, "transactionType") && objc_msgSend(transactionCopy, "transactionStatus") == 1)
  {
    v12 = [countsCopy objectForKey:v11];
    integerValue = [v12 integerValue];

    if (integerValue >= 3)
    {
      v34 = countsCopy;
      context = objc_autoreleasePoolPush();
      transactionSourceIdentifier = [transactionCopy transactionSourceIdentifier];
      amount = [transactionCopy amount];
      v33 = v11;
      v16 = +[FinHealthRecurringHelper histogramKeysForMerchantDetailedCategoryTransaction:transactionSourceIdentifier:transactionAmount:transactionType:amountFromDatabase:](FinHealthRecurringHelper, "histogramKeysForMerchantDetailedCategoryTransaction:transactionSourceIdentifier:transactionAmount:transactionType:amountFromDatabase:", v11, transactionSourceIdentifier, amount, 0, [transactionCopy amountFromDatabase]);

      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      obj = v16;
      v37 = [obj countByEnumeratingWithState:&v40 objects:v46 count:16];
      if (v37)
      {
        v36 = *v41;
        do
        {
          for (i = 0; i != v37; ++i)
          {
            if (*v41 != v36)
            {
              objc_enumerationMutation(obj);
            }

            v18 = *(*(&v40 + 1) + 8 * i);
            featureLabel = [v18 featureLabel];
            v20 = [histogramCopy objectForKey:featureLabel];
            transactionDate = [transactionCopy transactionDate];
            [transactionDate timeIntervalSinceReferenceDate];
            v23 = v22;

            v24 = MEMORY[0x277CCA980];
            v25 = [MEMORY[0x277CCABB0] numberWithDouble:v23];
            v26 = v25;
            if (v25)
            {
              objc_msgSend_decimalValue(v25);
            }

            else
            {
              v38[0] = 0;
              v38[1] = 0;
              v39 = 0;
            }

            v27 = [v24 decimalNumberWithDecimal:v38];

            v45[0] = v27;
            v44[0] = @"transactionDate";
            v44[1] = @"identifier";
            identifier = [transactionCopy identifier];
            v45[1] = identifier;
            v44[2] = @"transactionSourceIdentifier";
            transactionSourceIdentifier2 = [transactionCopy transactionSourceIdentifier];
            v45[2] = transactionSourceIdentifier2;
            v44[3] = @"repeatingClass";
            featureRank = [v18 featureRank];
            v45[3] = featureRank;
            v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:4];

            if (v20)
            {
              [v20 addObject:v31];
            }

            else
            {
              v20 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v31, 0}];
            }

            [histogramCopy setValue:v20 forKey:featureLabel];
          }

          v37 = [obj countByEnumeratingWithState:&v40 objects:v46 count:16];
        }

        while (v37);
      }

      objc_autoreleasePoolPop(context);
      v11 = v33;
      countsCopy = v34;
    }
  }
}

- (void)retrieveAll
{
  delegate = [(FHDatabaseManager *)self delegate];
  if (delegate)
  {
    v12 = delegate;
    delegate2 = [(FHDatabaseManager *)self delegate];
    if ([delegate2 conformsToProtocol:&unk_283A8EEC0])
    {
      delegate3 = [(FHDatabaseManager *)self delegate];
      v6 = objc_opt_respondsToSelector();

      if (v6)
      {
        v7 = 0;
        do
        {
          v8 = objc_autoreleasePoolPush();
          v9 = [(FHDatabaseManager *)self _getAllTransactions:v7 limit:25];
          delegate4 = [(FHDatabaseManager *)self delegate];
          [delegate4 processBatch:v9];

          v11 = [v9 count];
          objc_autoreleasePoolPop(v8);
          v7 += 25;
        }

        while (v11);
      }
    }

    else
    {
    }
  }
}

- (id)_getAllTransactions:(unint64_t)transactions limit:(unint64_t)limit
{
  v7 = objc_opt_new();
  limit = [(FHDatabaseManager *)self _fetch:@"select * from transactions limit %d, %d", transactions, limit];
  if ([limit next])
  {
    do
    {
      v9 = [(FHDatabaseManager *)self reconstructTransaction:limit];
      [v7 addObject:v9];
    }

    while (([limit next] & 1) != 0);
  }

  [(FHDatabaseManager *)self closeAndUnlock:limit];
  v10 = [MEMORY[0x277CBEA60] arrayWithArray:v7];

  return v10;
}

- (BOOL)deleteDatabase:(id *)database
{
  os_unfair_lock_lock(&self->_lockDatabaseBookKeeping);
  [(FHDatabaseManager *)self _rebuildTablesAndIndexes:1];
  os_unfair_lock_unlock(&self->_lockDatabaseBookKeeping);
  return 1;
}

- (BOOL)_execute:(id)_execute
{
  _executeCopy = _execute;
  os_unfair_lock_lock(&self->_lockDatabaseExecute);
  v5 = [(PQLConnection *)self->_db execute:_executeCopy args:&v7];

  os_unfair_lock_unlock(&self->_lockDatabaseExecute);
  return v5;
}

- (BOOL)deleteWithRollBack:(BOOL)back SQL:(id)l args:(char *)args
{
  backCopy = back;
  lCopy = l;
  os_unfair_lock_lock(&self->_lockDatabaseExecute);
  db = self->_db;
  if (!backCopy)
  {
    v12 = [(PQLConnection *)db execute:lCopy args:args];
    goto LABEL_8;
  }

  if (![(PQLConnection *)db execute:@"BEGIN"])
  {
LABEL_7:
    v12 = 0;
    goto LABEL_8;
  }

  v10 = [(PQLConnection *)self->_db execute:lCopy args:args];
  v11 = self->_db;
  if (!v10)
  {
    [(PQLConnection *)v11 execute:@"ROLLBACK"];
    goto LABEL_7;
  }

  [(PQLConnection *)v11 execute:@"COMMIT"];
  v12 = 1;
LABEL_8:
  os_unfair_lock_unlock(&self->_lockDatabaseExecute);

  return v12;
}

- (BOOL)executeAsPreparedStatement:(id)statement values:(id)values
{
  v24 = *MEMORY[0x277D85DE8];
  statementCopy = statement;
  valuesCopy = values;
  os_unfair_lock_lock(&self->_lockDatabaseExecute);
  ppStmt = 0;
  if (sqlite3_prepare_v2(-[PQLConnection dbHandle](self->_db, "dbHandle"), [statementCopy UTF8String], -1, &ppStmt, 0))
  {
    v8 = FinHealthLogObject(@"FinHealthCore");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v19 = statementCopy;
      _os_log_impl(&dword_226DD4000, v8, OS_LOG_TYPE_DEBUG, "Failed to prepare sql statement %@", buf, 0xCu);
    }
  }

  else
  {
    if ([valuesCopy count])
    {
      v10 = 0;
      *&v9 = 138412802;
      v16 = v9;
      do
      {
        v11 = [valuesCopy objectAtIndex:{v10, v16}];
        v12 = v10 + 1;
        if (sqlite3_bind_text(ppStmt, v10 + 1, [v11 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL))
        {
          v13 = FinHealthLogObject(@"FinHealthCore");
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            *buf = v16;
            v19 = statementCopy;
            v20 = 2112;
            v21 = v11;
            v22 = 2048;
            v23 = v10;
            _os_log_impl(&dword_226DD4000, v13, OS_LOG_TYPE_DEBUG, "sql statement %@ failed to bind %@ at index %lu", buf, 0x20u);
          }
        }

        ++v10;
      }

      while (v12 < [valuesCopy count]);
    }

    sqlite3_step(ppStmt);
  }

  v14 = sqlite3_finalize(ppStmt);
  os_unfair_lock_unlock(&self->_lockDatabaseExecute);

  return v14 == 0;
}

- (BOOL)_executeRaw:(id)raw
{
  rawCopy = raw;
  os_unfair_lock_lock(&self->_lockDatabaseExecute);
  v5 = [(PQLConnection *)self->_db executeRaw:rawCopy];

  os_unfair_lock_unlock(&self->_lockDatabaseExecute);
  return v5;
}

- (id)_fetch:(id)_fetch
{
  _fetchCopy = _fetch;
  os_unfair_lock_lock(&self->_lockDatabaseFetch);
  v5 = [(PQLConnection *)self->_db fetch:_fetchCopy args:&v8];

  return v5;
}

- (id)_fetchv:(id)_fetchv args:(char *)args
{
  _fetchvCopy = _fetchv;
  os_unfair_lock_lock(&self->_lockDatabaseFetch);
  v7 = [(PQLConnection *)self->_db fetch:_fetchvCopy args:args];

  return v7;
}

- (id)_lockFreeFetch:(id)fetch
{
  v3 = [(PQLConnection *)self->_db fetch:fetch args:&v6];

  return v3;
}

- (void)closeAndUnlock:(id)unlock
{
  [unlock close];

  os_unfair_lock_unlock(&self->_lockDatabaseFetch);
}

- (BOOL)_isDatabaseCorrupt
{
  v13 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lockDatabaseFetch);
  _getDataDirectory = [(FHDatabaseManager *)self _getDataDirectory];
  date = [MEMORY[0x277CBEAA8] date];
  v5 = [_getDataDirectory stringByAppendingPathComponent:@"finhealth.db"];
  [v5 UTF8String];
  v6 = _sqlite3_integrity_check();

  date2 = [MEMORY[0x277CBEAA8] date];
  v8 = FinHealthLogObject(@"FinHealthCore");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [date2 timeIntervalSinceDate:date];
    v11 = 134217984;
    v12 = v9;
    _os_log_impl(&dword_226DD4000, v8, OS_LOG_TYPE_DEBUG, "Integrity check time: %f", &v11, 0xCu);
  }

  os_unfair_lock_unlock(&self->_lockDatabaseFetch);
  return v6 == 11;
}

- (BOOL)_truncateDatabase
{
  v12 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lockDatabaseExecute);
  dbHandle = [(PQLConnection *)self->_db dbHandle];
  v4 = _sqlite3_db_truncate();
  if (v4)
  {
    v5 = FinHealthLogObject(@"FinHealthCore");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7[0] = 67109634;
      v7[1] = v4;
      v8 = 2080;
      v9 = sqlite3_errmsg(dbHandle);
      v10 = 1024;
      v11 = sqlite3_extended_errcode(dbHandle);
      _os_log_impl(&dword_226DD4000, v5, OS_LOG_TYPE_ERROR, "Failed to truncate database %d (%s, %d)", v7, 0x18u);
    }
  }

  os_unfair_lock_unlock(&self->_lockDatabaseExecute);
  return v4 == 0;
}

- (id)_columnNamesForTable:(id)table
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"PRAGMA table_info('%@')", @"features_instrumentation"];;
  v5 = [(FHDatabaseManager *)self _fetch:v4];

  v6 = objc_opt_new();
  if ([v5 next])
  {
    do
    {
      v7 = [v5 stringAtIndex:1];
      [v6 addObject:v7];
    }

    while (([v5 next] & 1) != 0);
  }

  [(FHDatabaseManager *)self closeAndUnlock:v5];

  return v6;
}

- (void)_addColumnIfNotExists:(id)exists columnName:(id)name columnType:(id)type
{
  existsCopy = exists;
  nameCopy = name;
  typeCopy = type;
  v10 = [(FHDatabaseManager *)self _columnNamesForTable:existsCopy];
  if (([v10 containsObject:nameCopy] & 1) == 0)
  {
    typeCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"alter table %@ add column %@ %@", existsCopy, nameCopy, typeCopy];;
    [(FHDatabaseManager *)self _executeRaw:typeCopy];
  }
}

- (void)_rebuildTablesAndIndexes:(BOOL)indexes
{
  indexesCopy = indexes;
  v47 = *MEMORY[0x277D85DE8];
  _isEligibleForSchemaMigration = [(FHDatabaseManager *)self _isEligibleForSchemaMigration];
  v6 = FinHealthLogObject(@"FinHealthCore");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = @"NO";
    if (_isEligibleForSchemaMigration)
    {
      v7 = @"YES";
    }

    *buf = 138412290;
    v46 = v7;
    _os_log_impl(&dword_226DD4000, v6, OS_LOG_TYPE_DEBUG, "isEligibleForSchemaMigration: %@", buf, 0xCu);
  }

  if (indexesCopy || _isEligibleForSchemaMigration)
  {
    _isDatabaseCorrupt = [(FHDatabaseManager *)self _isDatabaseCorrupt];
    if (_isDatabaseCorrupt)
    {
      v9 = FinHealthLogObject(@"FinHealthCore");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_226DD4000, v9, OS_LOG_TYPE_ERROR, "DB corrupted. Truncating", buf, 2u);
      }

      _isDatabaseCorrupt = [(FHDatabaseManager *)self _truncateDatabase];
    }

    v34 = _isEligibleForSchemaMigration;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v10 = DropTablesAndIndexes(_isDatabaseCorrupt);
    v11 = [v10 countByEnumeratingWithState:&v39 objects:v44 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v40;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v40 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v39 + 1) + 8 * i);
          v16 = FinHealthLogObject(@"FinHealthCore");
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v46 = v15;
            _os_log_impl(&dword_226DD4000, v16, OS_LOG_TYPE_DEBUG, "sqlExecuteCommand: %@", buf, 0xCu);
          }

          [(FHDatabaseManager *)self _executeRaw:v15];
        }

        v12 = [v10 countByEnumeratingWithState:&v39 objects:v44 count:16];
      }

      while (v12);
    }

    v17 = FinHealthLogObject(@"FinHealthCore");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_226DD4000, v17, OS_LOG_TYPE_INFO, "Recreating database", buf, 2u);
    }

    _isEligibleForSchemaMigration = v34;
  }

  [(FHDatabaseManager *)self _instrumentationTableMigration];
  v18 = [MEMORY[0x277CBEB98] setWithObjects:{@"t_identifier", @"t_heuristics_identifier", 0}];
  [(FHDatabaseManager *)self _checkUniqueConstraints:@"features_heuristics" uniqueConstraintSet:v18];

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v20 = CreateTablesAndIndexes(v19);
  v21 = [v20 countByEnumeratingWithState:&v35 objects:v43 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v36;
    v24 = 1;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v36 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v24 &= [(FHDatabaseManager *)self _executeRaw:*(*(&v35 + 1) + 8 * j)];
      }

      v22 = [v20 countByEnumeratingWithState:&v35 objects:v43 count:16];
    }

    while (v22);
  }

  else
  {
    v24 = 1;
  }

  [(FHDatabaseManager *)self _addColumnIfNotExists:@"features_instrumentation" columnName:@"pass_type" columnType:@"integer"];
  [(FHDatabaseManager *)self _addColumnIfNotExists:@"features_instrumentation" columnName:@"heuristics_identifier" columnType:@"text"];
  [(FHDatabaseManager *)self _addColumnIfNotExists:@"features_instrumentation" columnName:@"account_state" columnType:@"integer"];
  [(FHDatabaseManager *)self _addColumnIfNotExists:@"features_instrumentation" columnName:@"paid_using_ring" columnType:@"integer"];
  if (indexesCopy || (_isEligibleForSchemaMigration & v24) != 0)
  {
    v26 = [MEMORY[0x277CBEAA8] now];
    [v26 timeIntervalSinceReferenceDate];
    v28 = v27;

    v29 = [(FHDatabaseManager *)self _execute:@"insert into fh_schema (sch_version_id, sch_upgrade_status, sch_date, sch_getall_status) values (%@, %d, %d, %d)", @"11.11", 2, v28, 0];
    v30 = FinHealthLogObject(@"FinHealthCore");
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      v31 = @"Fail";
      if (v29)
      {
        v31 = @"Success";
      }

      *buf = 138412290;
      v46 = v31;
      _os_log_impl(&dword_226DD4000, v30, OS_LOG_TYPE_INFO, "createSchemaVersionRecord: %@", buf, 0xCu);
    }
  }

  for (k = 0; k != 11; ++k)
  {
    v33 = FHTransactionRepeatingPatternClassToFHSmartFeature(k);
    [(FHDatabaseManager *)self _execute:@"insert or replace into features_prediction_labels (feature_name, feature_predicted_class, smart_feature_name) values (%@, %d, %@)", @"FHSmartFeatureAggregateTypeRecurring", k, v33];
  }
}

- (void)_instrumentationTableMigration
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"PRAGMA table_info('%@')", @"features_instrumentation"];;
  v4 = [(FHDatabaseManager *)self _fetch:v3];

  if ([v4 next])
  {
    v5 = 0;
    do
    {
      v6 = [v4 stringAtIndex:1];
      v7 = [v6 isEqualToString:@"source_identifier"];

      v5 |= v7;
    }

    while (([v4 next] & 1) != 0);
    [(FHDatabaseManager *)self closeAndUnlock:v4];
    if (v5)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"drop table if exists %@", @"features_instrumentation"];;
      [(FHDatabaseManager *)self _executeRaw:v8];

      v9 = FinHealthLogObject(@"FinHealthCore");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v11 = @"features_instrumentation";
        _os_log_impl(&dword_226DD4000, v9, OS_LOG_TYPE_DEBUG, "Drop table %@", buf, 0xCu);
      }
    }
  }

  else
  {
    [(FHDatabaseManager *)self closeAndUnlock:v4];
  }
}

- (void)_checkUniqueConstraints:(id)constraints uniqueConstraintSet:(id)set
{
  v20 = *MEMORY[0x277D85DE8];
  constraintsCopy = constraints;
  setCopy = set;
  constraintsCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"PRAGMA index_info('%@')", constraintsCopy];;
  v9 = [(FHDatabaseManager *)self _fetch:constraintsCopy];

  if ([v9 next])
  {
    v10 = [v9 stringAtIndex:1];
    [(FHDatabaseManager *)self closeAndUnlock:v9];
    if (v10)
    {
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"PRAGMA index_list('%@')", v10];;
      v12 = [(FHDatabaseManager *)self _fetch:v11];

      v13 = 0;
      if ([v12 next])
      {
        do
        {
          v14 = [v12 stringAtIndex:2];
          v15 = [setCopy containsObject:v14];

          v13 += v15;
        }

        while (([v12 next] & 1) != 0);
      }

      if (v13 != [setCopy count])
      {
        constraintsCopy2 = [MEMORY[0x277CCACA8] stringWithFormat:@"drop table if exists %@", constraintsCopy];;
        [(FHDatabaseManager *)self _executeRaw:constraintsCopy2];

        v17 = FinHealthLogObject(@"FinHealthCore");
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v19 = constraintsCopy;
          _os_log_impl(&dword_226DD4000, v17, OS_LOG_TYPE_DEBUG, "Drop table %@", buf, 0xCu);
        }
      }

      [(FHDatabaseManager *)self closeAndUnlock:v12];
    }
  }

  else
  {
    [(FHDatabaseManager *)self closeAndUnlock:v9];
  }
}

- (unint64_t)streamGenericSQLFetch:(id)fetch predicate:(id)predicate sqlFetchQuery:(id)query
{
  fetchCopy = fetch;
  predicateCopy = predicate;
  queryCopy = query;
  os_unfair_lock_lock(&self->_lockSQLStreaming);
  v24 = queryCopy;
  v11 = [(FHDatabaseManager *)self _fetchv:queryCopy args:&v25];
  if ([v11 next])
  {
    do
    {
      v12 = objc_autoreleasePoolPush();
      v13 = objc_opt_new();
      v14 = objc_opt_new();
      if ([v11 columns])
      {
        v15 = 0;
        do
        {
          v16 = [v11 objectAtIndex:v15];
          if (v16)
          {
            v17 = v16;
          }

          else
          {
            v17 = &stru_283A7B918;
          }

          if (predicateCopy)
          {
            v18 = [v11 columnNameAtIndex:v15];
            [v14 setObject:v17 forKey:v18];
          }

          [v13 addObject:v17];

          ++v15;
        }

        while ([v11 columns] > v15);
      }

      if (predicateCopy)
      {
        v19 = [MEMORY[0x277CBEA60] arrayWithObject:v14];
        v20 = [v19 filteredArrayUsingPredicate:predicateCopy];

        if ([v20 count])
        {
          v21 = [MEMORY[0x277CBEA60] arrayWithArray:v13];
          fetchCopy[2](fetchCopy, v21);
        }
      }

      else
      {
        v20 = [MEMORY[0x277CBEA60] arrayWithArray:v13];
        fetchCopy[2](fetchCopy, v20);
      }

      objc_autoreleasePoolPop(v12);
    }

    while (([v11 next] & 1) != 0);
  }

  rowNumber = [v11 rowNumber];
  [(FHDatabaseManager *)self closeAndUnlock:v11];
  os_unfair_lock_unlock(&self->_lockSQLStreaming);

  return rowNumber;
}

- (unint64_t)streamQueryResults:(id)results usingFetchHandler:(id)handler
{
  handlerCopy = handler;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __58__FHDatabaseManager_streamQueryResults_usingFetchHandler___block_invoke;
  v10[3] = &unk_2785CB2E8;
  v11 = handlerCopy;
  v7 = handlerCopy;
  v8 = [(FHDatabaseManager *)self streamGenericSQLFetch:v10 predicate:0 sqlFetchQuery:results, 0];

  return v8;
}

- (unint64_t)processingTimeForFeature:(id)feature
{
  featureCopy = feature;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  featureCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"select feature_processing_date, feature_data from fh_processing_history where feature_name == '%@'", featureCopy];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __46__FHDatabaseManager_processingTimeForFeature___block_invoke;
  v8[3] = &unk_2785CB310;
  v8[4] = &v9;
  [(FHDatabaseManager *)self streamGenericSQLFetch:v8 predicate:0 sqlFetchQuery:featureCopy, 0];
  v6 = v10[3];

  _Block_object_dispose(&v9, 8);
  return v6;
}

void __46__FHDatabaseManager_processingTimeForFeature___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectAtIndex:0];
  *(*(*(a1 + 32) + 8) + 24) = [v3 unsignedIntegerValue];
}

- (id)processingDataForFeature:(id)feature
{
  featureCopy = feature;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy_;
  v13 = __Block_byref_object_dispose_;
  v14 = 0;
  featureCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"select feature_processing_date, feature_data from fh_processing_history where feature_name == '%@'", featureCopy];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __46__FHDatabaseManager_processingDataForFeature___block_invoke;
  v8[3] = &unk_2785CB310;
  v8[4] = &v9;
  [(FHDatabaseManager *)self streamGenericSQLFetch:v8 predicate:0 sqlFetchQuery:featureCopy, 0];
  v6 = v10[5];

  _Block_object_dispose(&v9, 8);

  return v6;
}

uint64_t __46__FHDatabaseManager_processingDataForFeature___block_invoke(uint64_t a1, void *a2)
{
  *(*(*(a1 + 32) + 8) + 40) = [a2 objectAtIndex:1];

  return MEMORY[0x2821F96F8]();
}

- (void)updateProcessingTimeForFeature:(id)feature
{
  v4 = MEMORY[0x277CBEAA8];
  featureCopy = feature;
  v5 = [v4 now];
  [v5 timeIntervalSinceReferenceDate];
  v7 = v6;

  [(FHDatabaseManager *)self _updateProcessingTimeForFeature:featureCopy processingDate:v7 data:0];
}

- (void)updateProcessingTimeForFeature:(id)feature data:(id)data
{
  v6 = MEMORY[0x277CBEAA8];
  dataCopy = data;
  featureCopy = feature;
  v8 = [v6 now];
  [v8 timeIntervalSinceReferenceDate];
  v10 = v9;

  [(FHDatabaseManager *)self _updateProcessingTimeForFeature:featureCopy processingDate:v10 data:dataCopy];
}

- (id)_getTransactionsMarkedForRecurrChange
{
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x3032000000;
  v25[3] = __Block_byref_object_copy_;
  v25[4] = __Block_byref_object_dispose_;
  v26 = 0;
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x3032000000;
  v23[3] = __Block_byref_object_copy_;
  v23[4] = __Block_byref_object_dispose_;
  v24 = objc_opt_new();
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x2020000000;
  v22[3] = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v21 = objc_opt_new();
  v3 = dispatch_semaphore_create(0);
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __58__FHDatabaseManager__getTransactionsMarkedForRecurrChange__block_invoke;
  v8[3] = &unk_2785CB338;
  objc_copyWeak(&v14, &location);
  v8[4] = self;
  v10 = v25;
  v11 = v23;
  v12 = v22;
  v13 = &v16;
  v4 = v3;
  v9 = v4;
  [(FHDatabaseManager *)self streamGenericSQLFetch:v8 predicate:0 sqlFetchQuery:@"select distinct t.t_identifier, ifnull(h.t_heuristics_score, -1) from transactions t left join features_heuristics h on t.t_identifier == h.t_identifier order by t.m_displayname asc, t.t_date asc limit %d", -1];
  v5 = dispatch_time(0, 3000000000);
  dispatch_semaphore_wait(v4, v5);
  v6 = [v17[5] copy];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(v22, 8);
  _Block_object_dispose(v23, 8);

  _Block_object_dispose(v25, 8);

  return v6;
}

void __58__FHDatabaseManager__getTransactionsMarkedForRecurrChange__block_invoke(uint64_t a1, void *a2)
{
  v48 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v5 = WeakRetained;
  if (v3 && WeakRetained)
  {
    v6 = [v3 firstObject];
    v7 = [v6 stringValue];

    v8 = [*(a1 + 32) getTransactionByIdentifier:v7];
    v9 = [v8 displayName];
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", @"Price Increase for", v9];
    v11 = [v3 lastObject];
    [v11 doubleValue];
    v13 = v12;

    v14 = *(*(a1 + 48) + 8);
    v15 = *(v14 + 40);
    if (v15)
    {
      v16 = [v15 displayName];
      v17 = v16;
      if (v9 && v16 && [v9 length] && objc_msgSend(v17, "length") && (objc_msgSend(v9, "isEqualToString:", v17) & 1) != 0)
      {
        if (*(*(*(a1 + 64) + 8) + 24) != -1)
        {
          v18 = FinHealthLogObject(@"FinHealthCore");
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            v19 = *(*(*(a1 + 64) + 8) + 24);
            *buf = 134217984;
            v45 = v19;
            _os_log_impl(&dword_226DD4000, v18, OS_LOG_TYPE_DEBUG, "previousPreComputedRmseValue: %f", buf, 0xCu);
          }

          v20 = [v8 transactionDate];
          [v20 timeIntervalSinceReferenceDate];
          v42 = v21;

          v22 = [*(*(*(a1 + 48) + 8) + 40) transactionDate];
          [v22 timeIntervalSinceReferenceDate];
          v40 = v23;

          v24 = MEMORY[0x277CCA980];
          v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"%f", (v42 - v40)];
          v26 = [v24 decimalNumberWithString:v25];

          v43 = [v26 decimalNumberByDividingBy:v5[2]];
          [*(*(*(a1 + 56) + 8) + 40) addObject:?];
          if (v13 == -1 && [*(*(*(a1 + 56) + 8) + 40) count] >= 3)
          {
            v41 = v26;
            v27 = +[FinHealthRecurringHelper rootMeanSquareError:startIndex:arrayLength:](FinHealthRecurringHelper, "rootMeanSquareError:startIndex:arrayLength:", *(*(*(a1 + 56) + 8) + 40), [*(*(*(a1 + 56) + 8) + 40) count] - 3, 3);
            if ([v27 lessThan:v5[3]])
            {
              v28 = [v8 amount];
              v37 = [*(*(*(a1 + 48) + 8) + 40) amount];
              v38 = v28;
              v39 = [v28 decimalNumberBySubtracting:?];
              if ([v39 isPositive])
              {
                v35 = *(*(*(a1 + 72) + 8) + 40);
                v29 = MEMORY[0x277CBEA60];
                v36 = v27;
                v30 = [[FHSmartCompoundFeatureRankedValue alloc] initWithLabelAndRank:v10 featureRank:v39];
                v31 = [v29 arrayWithObjects:{v30, 0}];
                [v35 setObject:v31 forKey:v7];

                v27 = v36;
              }

              v32 = FinHealthLogObject(@"FinHealthCore");
              if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412546;
                v45 = v7;
                v46 = 2112;
                v47 = v39;
                _os_log_impl(&dword_226DD4000, v32, OS_LOG_TYPE_DEBUG, "currentTransactionId: %@, changeInAmount: %@", buf, 0x16u);
              }
            }

            v26 = v41;
          }
        }
      }

      else
      {
        [*(*(*(a1 + 56) + 8) + 40) removeAllObjects];
      }

      v14 = *(*(a1 + 48) + 8);
    }

    v33 = *(v14 + 40);
    *(v14 + 40) = v8;
    v34 = v8;

    *(*(*(a1 + 64) + 8) + 24) = v13;
LABEL_28:

    goto LABEL_29;
  }

  if (!WeakRetained)
  {
    v7 = FinHealthLogObject(@"FinHealthCore");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v45 = "[FHDatabaseManager _getTransactionsMarkedForRecurrChange]_block_invoke";
      _os_log_impl(&dword_226DD4000, v7, OS_LOG_TYPE_ERROR, "%s strongSelf is nil", buf, 0xCu);
    }

    goto LABEL_28;
  }

LABEL_29:
  dispatch_semaphore_signal(*(a1 + 40));
}

- (void)publishEventsToBiome
{
  v38 = *MEMORY[0x277D85DE8];
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v3 = [(FHDatabaseManager *)self processingTimeForFeature:@"FHProcessingHistoryInstrumentation"];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __41__FHDatabaseManager_publishEventsToBiome__block_invoke;
  v29[3] = &unk_2785CB310;
  v29[4] = &v30;
  [(FHDatabaseManager *)self streamGenericSQLFetch:v29 predicate:0 sqlFetchQuery:@"select * from features_instrumentation", 0];
  v4 = v31[3];
  if (v4)
  {
    v5 = v4 - 2592000;
    v6 = [MEMORY[0x277CCAC30] predicateWithFormat:@"SELF.%K > %lu AND SELF.%K <= %lu", @"tag_click_date", v4 - 2592000, @"tag_click_date", v4];
    if (v3 != v31[3])
    {
      v7 = FinHealthLogObject(@"FinHealthCore");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v8 = v31[3];
        *buf = 136315650;
        *&buf[4] = "[FHDatabaseManager publishEventsToBiome]";
        *&buf[12] = 2048;
        *&buf[14] = v5;
        *&buf[22] = 2048;
        v35 = v8;
        _os_log_impl(&dword_226DD4000, v7, OS_LOG_TYPE_DEBUG, "[%s] starting instrumentation streaming to Biome: leastRecentInstrumentationEntryDate: %lu, mostRecentInstrumentationEntryDate: %lu", buf, 0x20u);
      }

      [(FHDatabaseManager *)self _updateProcessingTimeForFeature:@"FHProcessingHistoryInstrumentation" processingDate:v31[3]];
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v35 = __Block_byref_object_copy_;
      v36 = __Block_byref_object_dispose_;
      v9 = BiomeLibrary();
      walletPaymentsCommerce = [v9 WalletPaymentsCommerce];
      financialInsights = [walletPaymentsCommerce FinancialInsights];
      search = [financialInsights Search];

      v27[0] = 0;
      v27[1] = v27;
      v27[2] = 0x3032000000;
      v27[3] = __Block_byref_object_copy_;
      v27[4] = __Block_byref_object_dispose_;
      v12 = BiomeLibrary();
      walletPaymentsCommerce2 = [v12 WalletPaymentsCommerce];
      financialInsights2 = [walletPaymentsCommerce2 FinancialInsights];
      paymentRingSuggestions = [financialInsights2 PaymentRingSuggestions];

      v25[0] = 0;
      v25[1] = v25;
      v25[2] = 0x3032000000;
      v25[3] = __Block_byref_object_copy_;
      v25[4] = __Block_byref_object_dispose_;
      v15 = BiomeLibrary();
      walletPaymentsCommerce3 = [v15 WalletPaymentsCommerce];
      financialInsights3 = [walletPaymentsCommerce3 FinancialInsights];
      recurringSendSuggestions = [financialInsights3 RecurringSendSuggestions];

      v18 = [(FHDatabaseManager *)self getAllPeerPaymentSignalsFilterDismissed:0];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __41__FHDatabaseManager_publishEventsToBiome__block_invoke_341;
      v20[3] = &unk_2785CB388;
      v22 = buf;
      v23 = v27;
      v19 = v18;
      v21 = v19;
      v24 = v25;
      [(FHDatabaseManager *)self streamGenericSQLFetch:v20 predicate:v6 sqlFetchQuery:@"select * from features_instrumentation", 0];

      _Block_object_dispose(v25, 8);
      _Block_object_dispose(v27, 8);

      _Block_object_dispose(buf, 8);
    }
  }

  else
  {
    v6 = FinHealthLogObject(@"FinHealthCore");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      *&buf[4] = "[FHDatabaseManager publishEventsToBiome]";
      _os_log_impl(&dword_226DD4000, v6, OS_LOG_TYPE_DEBUG, "%s No instrumentation records found", buf, 0xCu);
    }
  }

  _Block_object_dispose(&v30, 8);
}

void __41__FHDatabaseManager_publishEventsToBiome__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v9 = v3;
    v4 = [v3 count] == 8;
    v3 = v9;
    if (v4)
    {
      v5 = [v9 objectAtIndex:3];
      v6 = [v5 intValue];

      v3 = v9;
      v7 = *(*(a1 + 32) + 8);
      v8 = *(v7 + 24);
      if (v8 <= v6)
      {
        v8 = v6;
      }

      *(v7 + 24) = v8;
    }
  }
}

void __41__FHDatabaseManager_publishEventsToBiome__block_invoke_341(uint64_t a1, void *a2)
{
  v62 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (v3 && [v3 count] == 8)
  {
    v5 = [v4 objectAtIndex:1];
    v6 = [v5 intValue];

    v7 = [v4 objectAtIndex:2];
    v8 = [v7 intValue];

    v9 = [v4 objectAtIndex:4];
    v10 = [v9 intValue];

    v11 = MEMORY[0x277CCABB0];
    v12 = [v4 objectAtIndex:3];
    v13 = [v11 numberWithInt:{objc_msgSend(v12, "intValue")}];

    if (v10 == 2 && v6 <= 199)
    {
      v14 = [objc_alloc(MEMORY[0x277CF1718]) initWithTagSource:v6 tagType:v8 passType:2 tagClickDate:v13];
      v15 = FinHealthLogObject(@"FinHealthCore");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        *&buf[4] = "[FHDatabaseManager publishEventsToBiome]_block_invoke";
        *&buf[12] = 2112;
        *&buf[14] = v14;
        _os_log_impl(&dword_226DD4000, v15, OS_LOG_TYPE_DEBUG, "%s FH_BIOME_REPORTING search event: %@", buf, 0x16u);
      }

      v16 = [*(*(*(a1 + 40) + 8) + 40) source];
      [v16 sendEvent:v14];
    }

    else
    {
      if ((v6 - 200) <= 4)
      {
        v17 = [v4 objectAtIndex:6];
        v18 = [v17 intValue];

        v19 = [v4 objectAtIndex:7];
        v20 = [v19 intValue];

        v21 = [v4 objectAtIndex:2];
        v22 = [v21 intValue];

        v23 = [v4 objectAtIndex:1];
        v24 = [v23 intValue] - 200;

        v25 = [objc_alloc(MEMORY[0x277CF1708]) initWithAccountState:v18 paidUsingRing:v20 lastPaymentCategory:v22 paymentAction:v24];
        v26 = FinHealthLogObject(@"FinHealthCore");
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          *&buf[4] = "[FHDatabaseManager publishEventsToBiome]_block_invoke";
          *&buf[12] = 2112;
          *&buf[14] = v25;
          _os_log_impl(&dword_226DD4000, v26, OS_LOG_TYPE_DEBUG, "%s FH_BIOME_REPORTING payment ring event: %@", buf, 0x16u);
        }

        v27 = [*(*(*(a1 + 48) + 8) + 40) source];
        [v27 sendEvent:v25];
      }

      if (v10 == 1)
      {
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v59 = __Block_byref_object_copy_;
        v60 = __Block_byref_object_dispose_;
        v61 = [v4 objectAtIndex:5];
        v53[0] = MEMORY[0x277D85DD0];
        v53[1] = 3221225472;
        v53[2] = __41__FHDatabaseManager_publishEventsToBiome__block_invoke_344;
        v53[3] = &unk_2785CB360;
        v53[4] = buf;
        v52 = [MEMORY[0x277CCAC30] predicateWithBlock:v53];
        v28 = [*(a1 + 32) filteredArrayUsingPredicate:?];
        v29 = [MEMORY[0x277CBEAA8] now];
        [v29 timeIntervalSinceReferenceDate];
        v31 = v30;

        if ([v28 count])
        {
          v32 = [v28 objectAtIndex:0];
          v33 = [v32 periodicCategory];
          v51 = FHRecurringPeerPaymentPeriodicCategoryTypeFromString(v33);

          v34 = [v32 signalDate];

          v35 = v34 - v31;
          if (v35 <= 0x93A80)
          {
            v36 = 2;
          }

          else
          {
            v36 = 3;
          }

          if (v35 <= 0x3F480)
          {
            v37 = 1;
          }

          else
          {
            v37 = v36;
          }

          v38 = [v4 objectAtIndex:4];
          v39 = [v38 intValue];

          v40 = [v4 objectAtIndex:1];
          v41 = [v40 intValue];

          v42 = MEMORY[0x277CCABB0];
          v43 = [v4 objectAtIndex:3];
          v44 = [v42 numberWithInt:{objc_msgSend(v43, "intValue")}];

          v45 = [*(a1 + 32) count];
          v46 = objc_alloc(MEMORY[0x277CF1710]);
          if (v45 <= 1)
          {
            v47 = 1;
          }

          else
          {
            v47 = 2;
          }

          v48 = [v46 initWithUserSelection:v41 passType:v39 tagClickDate:v44 frequency:v51 suggestionsRange:v47 dayRange:v37];
          v49 = FinHealthLogObject(@"FinHealthCore");
          if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
          {
            *v54 = 136315394;
            v55 = "[FHDatabaseManager publishEventsToBiome]_block_invoke_2";
            v56 = 2112;
            v57 = v48;
            _os_log_impl(&dword_226DD4000, v49, OS_LOG_TYPE_DEBUG, "%s FH_BIOME_REPORTING recurring send suggestion event: %@", v54, 0x16u);
          }

          v50 = [*(*(*(a1 + 56) + 8) + 40) source];
          [v50 sendEvent:v48];
        }

        _Block_object_dispose(buf, 8);
      }
    }
  }
}

uint64_t __41__FHDatabaseManager_publishEventsToBiome__block_invoke_344(uint64_t a1, void *a2)
{
  v3 = [a2 peerPaymentHeuristicIds];
  v4 = [MEMORY[0x277CBEB70] orderedSetWithSet:v3];
  v5 = [v4 firstObject];
  v6 = [v5 isEqual:*(*(*(a1 + 32) + 8) + 40)];

  return v6;
}

- (void)predictRecurringTransactions
{
  v3 = FinHealthLogObject(@"FinHealthCore");
  v4 = FinHealthLogObject(@"FinHealthCore");
  ptr = self;
  v5 = os_signpost_id_make_with_pointer(v4, self);

  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_226DD4000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v5, "processAggregateFeatures:computeRecurringCashTransactions", "", buf, 2u);
  }

  v6 = FinHealthLogObject(@"FinHealthCore");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_226DD4000, v6, OS_LOG_TYPE_INFO, "BEGIN processAggregateFeatures:computeRecurringCashTransactions", buf, 2u);
  }

  *buf = 0;
  v104 = buf;
  v105 = 0x3032000000;
  v106 = __Block_byref_object_copy_;
  v107 = __Block_byref_object_dispose_;
  v108 = objc_opt_new();
  v86 = 0;
  v87 = &v86;
  v88 = 0x2020000000;
  v7 = 3;
  v89 = 3;
  do
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"select identifier from features_predicted_realtime where feature_name='FHSmartFeatureAggregateTypeRecurring' and feature_predicted_class=%d limit %d", v7, -1];
    v9 = objc_autoreleasePoolPush();
    v102[0] = MEMORY[0x277D85DD0];
    v102[1] = 3221225472;
    v102[2] = __49__FHDatabaseManager_predictRecurringTransactions__block_invoke;
    v102[3] = &unk_2785CB3B0;
    v102[4] = &v86;
    v102[5] = buf;
    [(FHDatabaseManager *)self streamGenericSQLFetch:v102 predicate:0 sqlFetchQuery:v8, 0];
    objc_autoreleasePoolPop(v9);

    v7 = v87[3] + 1;
    v87[3] = v7;
  }

  while (v7 < 0xB);
  _Block_object_dispose(&v86, 8);
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:*(v104 + 5)];
  v53 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", @"select * from features_heuristics order by t_heuristics_identifier asc, t_heuristics_value asc"];
  v101[0] = 0;
  v101[1] = v101;
  v101[2] = 0x2020000000;
  v101[3] = 0;
  v97 = 0;
  v98 = &v97;
  v99 = 0x2020000000;
  v100 = 0;
  v93 = 0;
  v94 = &v93;
  v95 = 0x2020000000;
  v96 = 0;
  v92[0] = 0;
  v92[1] = v92;
  v92[2] = 0x2020000000;
  v92[3] = 0;
  v86 = 0;
  v87 = &v86;
  v88 = 0x3032000000;
  v89 = __Block_byref_object_copy_;
  v90 = __Block_byref_object_dispose_;
  v91 = 0;
  v80 = 0;
  v81 = &v80;
  v82 = 0x3032000000;
  v83 = __Block_byref_object_copy_;
  v84 = __Block_byref_object_dispose_;
  v85 = 0;
  v74 = 0;
  v75 = &v74;
  v76 = 0x3032000000;
  v77 = __Block_byref_object_copy_;
  v78 = __Block_byref_object_dispose_;
  v79 = 0;
  v70 = 0;
  v71 = &v70;
  v72 = 0x2020000000;
  v73 = 0x8000000000000000;
  v68[0] = 0;
  v68[1] = v68;
  v68[2] = 0x3032000000;
  v68[3] = __Block_byref_object_copy_;
  v68[4] = __Block_byref_object_dispose_;
  v69 = objc_opt_new();
  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 3221225472;
  v56[2] = __49__FHDatabaseManager_predictRecurringTransactions__block_invoke_2;
  v56[3] = &unk_2785CB3D8;
  v11 = v10;
  v57 = v11;
  selfCopy = self;
  v59 = &v86;
  v60 = &v74;
  v61 = &v93;
  v62 = &v97;
  v63 = v101;
  v64 = &v70;
  v65 = v68;
  v66 = &v80;
  v67 = v92;
  [(FHDatabaseManager *)self streamGenericSQLFetch:v56 predicate:0 sqlFetchQuery:v53, 0];
  v12 = v98[3];
  v13 = v94[3];
  integerValue = [v81[5] integerValue];
  v15 = [(FHDatabaseManager *)ptr getTransactionByIdentifier:v75[5]];
  v16 = v71[3];
  amountFromDatabase = [v15 amountFromDatabase];
  if (v16 <= amountFromDatabase)
  {
    v18 = amountFromDatabase;
  }

  else
  {
    v18 = v16;
  }

  v71[3] = v18;
  displayName = [v15 displayName];
  v20 = displayName;
  v21 = v12 / v13;
  if (displayName)
  {
    v22 = displayName;
  }

  v23 = v21;
  if (integerValue <= 6)
  {
    if (integerValue == 3)
    {
      v24 = v11;
      transactionSourceIdentifier = [v15 transactionSourceIdentifier];
      peerPaymentCounterpartHandle = [v15 peerPaymentCounterpartHandle];
      amountFromDatabase2 = [v15 amountFromDatabase];
      peerPaymentType = [v15 peerPaymentType];
      transactionDate = [v15 transactionDate];
      [transactionDate timeIntervalSinceReferenceDate];
      [(FHDatabaseManager *)ptr _execute:@"insert or replace into features_peer_payments (source_identifier, peer_pay_counterpart, amount, frequency, peer_pay_type, forecast_date, forecast_signal_type, heuristics_identifier) values (%@, %@, %d, %f, %d, %f, %d, %@)", transactionSourceIdentifier, peerPaymentCounterpartHandle, amountFromDatabase2, v21, peerPaymentType, v35 + v23, 3, v87[5]];
    }

    else
    {
      if (integerValue == 4)
      {
        v24 = v11;
        transactionSourceIdentifier = [v15 transactionSourceIdentifier];
        peerPaymentCounterpartHandle = [v15 peerPaymentCounterpartHandle];
        v44 = v71[3];
        peerPaymentType2 = [v15 peerPaymentType];
        transactionDate = [v15 transactionDate];
        [transactionDate timeIntervalSinceReferenceDate];
        [(FHDatabaseManager *)ptr _execute:@"insert or replace into features_peer_payments (source_identifier, peer_pay_counterpart, amount, frequency, peer_pay_type, forecast_date, forecast_signal_type, heuristics_identifier) values (%@, %@, %d, %f, %d, %f, %d, %@)", transactionSourceIdentifier, peerPaymentCounterpartHandle, v44, *&v23, peerPaymentType2, v46 + v23, 2, v87[5]];
        goto LABEL_31;
      }

      v24 = v11;
      if (integerValue != 5)
      {
        goto LABEL_32;
      }

      v26 = MEMORY[0x277CCACA8];
      v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu-%f", objc_msgSend(v15, "amountFromDatabase"), v21];
      transactionSourceIdentifier = [v26 stringWithFormat:@"%lu", objc_msgSend(v27, "hash")];

      peerPaymentCounterpartHandle = [v15 transactionSourceIdentifier];
      amountFromDatabase3 = [v15 amountFromDatabase];
      transactionDate = [v15 transactionDate];
      [transactionDate timeIntervalSinceReferenceDate];
      [(FHDatabaseManager *)ptr _execute:@"insert or replace into features_peer_payments (source_identifier, peer_pay_counterpart, amount, frequency, peer_pay_type, forecast_date, forecast_signal_type, heuristics_identifier) values (%@, %@, %d, %f, %d, %f, %d, %@)", peerPaymentCounterpartHandle, transactionSourceIdentifier, amountFromDatabase3, v21, 0, v32 + v23, 6, v87[5]];
    }

LABEL_31:

    goto LABEL_32;
  }

  if (integerValue <= 8)
  {
    v24 = v11;
    if (integerValue == 7)
    {
      v25 = 2;
    }

    else
    {
      v25 = 1;
    }

LABEL_26:
    amountFromDatabase4 = v71[3];
    goto LABEL_28;
  }

  if (integerValue != 9)
  {
    v24 = v11;
    if (integerValue != 10)
    {
      goto LABEL_32;
    }

    v25 = 3;
    goto LABEL_26;
  }

  v24 = v11;
  amountFromDatabase4 = [v15 amountFromDatabase];
  v25 = 4;
LABEL_28:
  transactionDate2 = [v15 transactionDate];
  v37 = [transactionDate2 dateByAddingTimeInterval:v23];
  date = [MEMORY[0x277CBEAA8] date];
  v39 = [v37 compare:date];

  if (v39 == 1)
  {
    transactionSourceIdentifier = [v15 transactionSourceIdentifier];
    peerPaymentCounterpartHandle = [v15 displayName];
    transactionDate = [v15 merchantDetailedCategory];
    transactionType = [v15 transactionType];
    transactionSource = [v15 transactionSource];
    transactionDate3 = [v15 transactionDate];
    [transactionDate3 timeIntervalSinceReferenceDate];
    [(FHDatabaseManager *)ptr _execute:@"insert or replace into fh_recurring_predictions (source_identifier, merchant_entity, detailed_category, amount, frequency, transaction_type, transaction_source, forecast_date, forecast_signal_type, heuristic_identifier) values (%@, %@, %@, %d, %f, %d, %d, %f, %d, %@)", transactionSourceIdentifier, peerPaymentCounterpartHandle, transactionDate, amountFromDatabase4, *&v23, transactionType, transactionSource, v43 + v23, v25, v87[5]];

    goto LABEL_31;
  }

LABEL_32:
  v47 = FinHealthLogObject(@"FinHealthCore");
  v48 = v24;
  v49 = FinHealthLogObject(@"FinHealthCore");
  v50 = os_signpost_id_make_with_pointer(v49, ptr);

  if (v50 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v47))
  {
    *v55 = 0;
    _os_signpost_emit_with_name_impl(&dword_226DD4000, v47, OS_SIGNPOST_INTERVAL_END, v50, "processAggregateFeatures:computeRecurringCashTransactions", "", v55, 2u);
  }

  v51 = FinHealthLogObject(@"FinHealthCore");
  if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
  {
    *v55 = 0;
    _os_log_impl(&dword_226DD4000, v51, OS_LOG_TYPE_INFO, "END processAggregateFeatures:computeRecurringCashTransactions", v55, 2u);
  }

  _Block_object_dispose(v68, 8);
  _Block_object_dispose(&v70, 8);
  _Block_object_dispose(&v74, 8);

  _Block_object_dispose(&v80, 8);
  _Block_object_dispose(&v86, 8);

  _Block_object_dispose(v92, 8);
  _Block_object_dispose(&v93, 8);
  _Block_object_dispose(&v97, 8);
  _Block_object_dispose(v101, 8);

  _Block_object_dispose(buf, 8);
}

void __49__FHDatabaseManager_predictRecurringTransactions__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectAtIndex:0];
  v4 = [v3 stringValue];

  v5 = MEMORY[0x277CCA980];
  v6 = [MEMORY[0x277CCA980] numberWithInteger:*(*(*(a1 + 32) + 8) + 24)];
  v7 = v6;
  if (v6)
  {
    objc_msgSend_decimalValue(v6);
  }

  else
  {
    v13[0] = 0;
    v13[1] = 0;
    v14 = 0;
  }

  v8 = [v5 decimalNumberWithDecimal:v13];

  v9 = [*(*(*(a1 + 40) + 8) + 40) objectForKey:v4];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = [MEMORY[0x277CCA980] maximumDecimalNumber];
  }

  v12 = v11;

  if ([v8 compare:v12] == -1)
  {
    [*(*(*(a1 + 40) + 8) + 40) setObject:v8 forKey:v4];
  }
}

void __49__FHDatabaseManager_predictRecurringTransactions__block_invoke_2(uint64_t a1, void *a2)
{
  v105 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 objectAtIndex:1];
  v5 = [v4 stringValue];

  v6 = [v3 objectAtIndex:2];
  v7 = [v6 stringValue];

  v8 = [v3 objectAtIndex:3];
  v99 = [v8 integerValue];

  v9 = [*(a1 + 32) objectForKey:v5];
  v98 = v5;
  v10 = [*(a1 + 40) getTransactionByIdentifier:v5];
  v11 = [MEMORY[0x277CCA980] numberWithInt:7];
  v12 = [v9 isEqualToNumber:v11];

  if (v12)
  {
    v93 = v3;
    v13 = [v10 merchantDetailedCategory];
    v14 = [v10 transactionSourceIdentifier];
    v15 = [v10 amount];
    v16 = +[FinHealthRecurringHelper histogramKeysForMerchantDetailedCategoryTransaction:transactionSourceIdentifier:transactionAmount:transactionType:amountFromDatabase:](FinHealthRecurringHelper, "histogramKeysForMerchantDetailedCategoryTransaction:transactionSourceIdentifier:transactionAmount:transactionType:amountFromDatabase:", v13, v14, v15, 0, [v10 amountFromDatabase]);

    v102 = 0u;
    v103 = 0u;
    v100 = 0u;
    v101 = 0u;
    v17 = v16;
    v18 = [v17 countByEnumeratingWithState:&v100 objects:v104 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v101;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v101 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v100 + 1) + 8 * i);
          v23 = [v22 featureLabel];
          if ([v23 isEqualToString:v7])
          {
            v24 = [v22 featureRank];

            v9 = v24;
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v100 objects:v104 count:16];
      }

      while (v19);
    }

    v3 = v93;
  }

  v25 = [v10 transactionDate];
  [v25 timeIntervalSinceReferenceDate];
  v27 = v26;

  v28 = *(*(a1 + 48) + 8);
  if (*(v28 + 40))
  {
    v29 = [*(a1 + 40) getTransactionByIdentifier:*(*(*(a1 + 56) + 8) + 40)];
    v30 = [v29 displayName];
    v31 = v30;
    if (v30)
    {
      v32 = v30;
    }

    v33 = [v29 amountFromDatabase];
    if ([*(*(*(a1 + 48) + 8) + 40) isEqualToString:v7])
    {
      ++*(*(*(a1 + 64) + 8) + 24);
      *(*(*(a1 + 72) + 8) + 24) += v99 - *(*(*(a1 + 80) + 8) + 24);
      v34 = *(*(a1 + 88) + 8);
      v35 = *(v34 + 24);
      if (v35 <= v33)
      {
        v35 = v33;
      }

      *(v34 + 24) = v35;
      v36 = *(*(*(a1 + 96) + 8) + 40);
      v37 = [MEMORY[0x277CCABB0] numberWithInteger:v99 - *(*(*(a1 + 80) + 8) + 24)];
      [v36 addObject:v37];
      goto LABEL_45;
    }

    if ([*(*(*(a1 + 96) + 8) + 40) count] >= 3)
    {
      v37 = [*(*(*(a1 + 96) + 8) + 40) subarrayWithRange:{objc_msgSend(*(*(*(a1 + 96) + 8) + 40), "count") - 3, 3}];
    }

    else
    {
      v37 = 0;
    }

    [*(*(*(a1 + 96) + 8) + 40) removeAllObjects];
    if (v37)
    {
      v38 = [v37 valueForKeyPath:@"@sum.self"];
      [v38 doubleValue];
      v40 = v39 / 3uLL;
    }

    else
    {
      v40 = 0.0;
    }

    *(*(*(a1 + 64) + 8) + 24) = 0;
    *(*(*(a1 + 72) + 8) + 24) = 0;
    v41 = [*(*(*(a1 + 104) + 8) + 40) integerValue];
    if (v41 > 6)
    {
      v92 = v31;
      if (v41 <= 8)
      {
        v42 = v3;
        v87 = *(*(*(a1 + 88) + 8) + 24);
        v89 = v37;
        if (v41 == 7)
        {
          v43 = 2;
        }

        else
        {
          v43 = 1;
        }

        goto LABEL_39;
      }

      if (v41 == 9)
      {
        v89 = v37;
        v42 = v3;
        v87 = [v29 amountFromDatabase];
        v43 = 4;
        goto LABEL_39;
      }

      if (v41 == 10)
      {
        v42 = v3;
        v87 = *(*(*(a1 + 88) + 8) + 24);
        v89 = v37;
        v43 = 3;
LABEL_39:
        v82 = v43;
        v52 = [v29 transactionDate];
        v53 = [v52 dateByAddingTimeInterval:v40];
        v54 = [MEMORY[0x277CBEAA8] date];
        v55 = [v53 compare:v54];

        v56 = v55 == 1;
        v3 = v42;
        v37 = v89;
        v31 = v92;
        if (!v56)
        {
          goto LABEL_44;
        }

        v81 = *(a1 + 40);
        v85 = [v29 transactionSourceIdentifier];
        v57 = [v29 displayName];
        v58 = [v29 merchantDetailedCategory];
        v80 = [v29 transactionType];
        v59 = [v29 transactionSource];
        [v29 transactionDate];
        v60 = v96 = v3;
        [v60 timeIntervalSinceReferenceDate];
        v79 = v59;
        v37 = v89;
        v49 = v85;
        v74 = v58;
        v76 = v87;
        v88 = v58;
        v46 = v57;
        [v81 _execute:{@"insert or replace into fh_recurring_predictions (source_identifier, merchant_entity, detailed_category, amount, frequency, transaction_type, transaction_source, forecast_date, forecast_signal_type, heuristic_identifier) values (%@, %@, %@, %d, %f, %d, %d, %f, %d, %@)", v85, v57, v74, v76, *&v40, v80, v79, v40 + v61, v82, *(*(*(a1 + 48) + 8) + 40)}];

        v31 = v92;
        v3 = v96;
        goto LABEL_43;
      }

LABEL_44:
      *(*(*(a1 + 88) + 8) + 24) = 0x8000000000000000;
LABEL_45:

      v28 = *(*(a1 + 48) + 8);
      goto LABEL_46;
    }

    switch(v41)
    {
      case 3:
        v95 = *(a1 + 40);
        v84 = [v29 transactionSourceIdentifier];
        v46 = [v29 peerPaymentCounterpartHandle];
        v90 = [v29 amountFromDatabase];
        v50 = [v29 peerPaymentType];
        v88 = [v29 transactionDate];
        [v88 timeIntervalSinceReferenceDate];
        v77 = v50;
        v49 = v84;
        [v95 _execute:{@"insert or replace into features_peer_payments (source_identifier, peer_pay_counterpart, amount, frequency, peer_pay_type, forecast_date, forecast_signal_type, heuristics_identifier) values (%@, %@, %d, %f, %d, %f, %d, %@)", v84, v46, v90, *&v40, v77, v40 + v51, 3, *(*(*(a1 + 48) + 8) + 40)}];
        break;
      case 4:
        v97 = *(a1 + 40);
        v86 = [v29 transactionSourceIdentifier];
        v46 = [v29 peerPaymentCounterpartHandle];
        v91 = v37;
        v62 = *(*(*(a1 + 88) + 8) + 24);
        v63 = [v29 peerPaymentType];
        v88 = [v29 transactionDate];
        [v88 timeIntervalSinceReferenceDate];
        v78 = v63;
        v49 = v86;
        v75 = v62;
        v37 = v91;
        [v97 _execute:{@"insert or replace into features_peer_payments (source_identifier, peer_pay_counterpart, amount, frequency, peer_pay_type, forecast_date, forecast_signal_type, heuristics_identifier) values (%@, %@, %d, %f, %d, %f, %d, %@)", v86, v46, v75, *&v40, v78, v40 + v64, 2, *(*(*(a1 + 48) + 8) + 40)}];
        break;
      case 5:
        v44 = MEMORY[0x277CCACA8];
        v45 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu-%f", objc_msgSend(v29, "amountFromDatabase"), *&v40];
        v83 = [v44 stringWithFormat:@"%lu", objc_msgSend(v45, "hash")];

        v94 = *(a1 + 40);
        v46 = [v29 transactionSourceIdentifier];
        v47 = [v29 amountFromDatabase];
        v88 = [v29 transactionDate];
        [v88 timeIntervalSinceReferenceDate];
        v73 = v47;
        v49 = v83;
        [v94 _execute:{@"insert or replace into features_peer_payments (source_identifier, peer_pay_counterpart, amount, frequency, peer_pay_type, forecast_date, forecast_signal_type, heuristics_identifier) values (%@, %@, %d, %f, %d, %f, %d, %@)", v46, v83, v73, *&v40, 0, v40 + v48, 6, *(*(*(a1 + 48) + 8) + 40)}];
        break;
      default:
        goto LABEL_44;
    }

LABEL_43:

    goto LABEL_44;
  }

LABEL_46:
  v65 = *(v28 + 40);
  *(v28 + 40) = v7;
  v66 = v7;

  *(*(*(a1 + 80) + 8) + 24) = v99;
  v67 = *(*(a1 + 104) + 8);
  v68 = *(v67 + 40);
  *(v67 + 40) = v9;
  v69 = v9;

  v70 = *(*(a1 + 56) + 8);
  v71 = *(v70 + 40);
  *(v70 + 40) = v98;
  v72 = v98;

  *(*(*(a1 + 112) + 8) + 24) = v27;
}

- (id)getFilteredPeerPaymentForecastingSignals
{
  v3 = [(FHDatabaseManager *)self getAllPeerPaymentSignalsFilterDismissed:1];
  v4 = [(FHDatabaseManager *)self _filterPeriodicCategories:v3];

  return v4;
}

- (id)_filterPeriodicCategories:(id)categories
{
  v24 = *MEMORY[0x277D85DE8];
  categoriesCopy = categories;
  v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = categoriesCopy;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = objc_autoreleasePoolPush();
        if ([v10 forecastingType] == 3)
        {
          v12 = v10;
          direction = [v12 direction];
          frequency = [v12 frequency];
          v15 = GetPeriodicCategoryFromFrequency(frequency);
          LODWORD(direction) = [(FHDatabaseManager *)self _signalMatchesSendSuggestionCriteria:direction periodicCategory:FHRecurringPeerPaymentPeriodicCategoryTypeFromString(v15)];

          if (direction)
          {
            [v18 addObject:v12];
          }
        }

        objc_autoreleasePoolPop(v11);
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  v16 = [v18 copy];

  return v16;
}

- (id)getAllPeerPaymentSignalsFilterDismissed:(BOOL)dismissed
{
  dismissedCopy = dismissed;
  v85 = *MEMORY[0x277D85DE8];
  v75 = 0;
  v76 = &v75;
  v77 = 0x3032000000;
  v78 = __Block_byref_object_copy_;
  v79 = __Block_byref_object_dispose_;
  v80 = objc_opt_new();
  v5 = objc_opt_new();
  if (dismissedCopy)
  {
    v68 = 0;
    v69 = &v68;
    v70 = 0x2020000000;
    v71 = 0;
    v74[0] = MEMORY[0x277D85DD0];
    v74[1] = 3221225472;
    v74[2] = __61__FHDatabaseManager_getAllPeerPaymentSignalsFilterDismissed___block_invoke;
    v74[3] = &unk_2785CB3B0;
    v74[4] = &v68;
    v74[5] = &v75;
    [(FHDatabaseManager *)self streamGenericSQLFetch:v74 predicate:0 sqlFetchQuery:@"select * from features_instrumentation", 0];
    _Block_object_dispose(&v68, 8);
  }

  v68 = 0;
  v69 = &v68;
  v70 = 0x3032000000;
  v71 = __Block_byref_object_copy_;
  v72 = __Block_byref_object_dispose_;
  v73 = 0;
  v62 = 0;
  v63 = &v62;
  v64 = 0x3032000000;
  v65 = __Block_byref_object_copy_;
  v66 = __Block_byref_object_dispose_;
  v67 = 0;
  v56 = 0;
  v57 = &v56;
  v58 = 0x3032000000;
  v59 = __Block_byref_object_copy_;
  v60 = __Block_byref_object_dispose_;
  v61 = 0;
  v50 = 0;
  v51 = &v50;
  v52 = 0x3032000000;
  v53 = __Block_byref_object_copy_;
  v54 = __Block_byref_object_dispose_;
  v55 = 0;
  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = __Block_byref_object_copy_;
  v48 = __Block_byref_object_dispose_;
  v49 = 0;
  v43[0] = 0;
  v43[1] = v43;
  v43[2] = 0x2020000000;
  v43[3] = 0;
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy_;
  v33 = __Block_byref_object_dispose_;
  v34 = objc_opt_new();
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __61__FHDatabaseManager_getAllPeerPaymentSignalsFilterDismissed___block_invoke_2;
  v17[3] = &unk_2785CB400;
  v19 = &v68;
  v20 = &v29;
  v21 = &v62;
  v22 = v43;
  v23 = &v75;
  v24 = &v39;
  v25 = &v50;
  v26 = &v44;
  v27 = &v56;
  v28 = &v35;
  v6 = v5;
  v18 = v6;
  [(FHDatabaseManager *)self streamGenericSQLFetch:v17 predicate:0 sqlFetchQuery:@"select * from features_peer_payments order by peer_pay_counterpart, amount, frequency, peer_pay_type, forecast_date, forecast_signal_type limit %lu", -1];
  if (v69[5] && ([v76[5] containsObject:v63[5]] & 1) == 0)
  {
    [v30[5] addObject:v63[5]];
    v7 = FinHealthLogObject(@"FinHealthCore");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = v69[5];
      v9 = v30[5];
      *buf = 138412546;
      v82 = v8;
      v83 = 2112;
      v84 = v9;
      _os_log_impl(&dword_226DD4000, v7, OS_LOG_TYPE_DEBUG, "heuristicIdentifierSetByPeerPaymentHandleAndAmount %@, %@", buf, 0x16u);
    }

    v10 = v40[3];
    switch(v10)
    {
      case 2:
        v11 = objc_alloc_init(FHPeerPaymentForecastingSignalPerson);
        [(FHPeerPaymentForecastingSignalPerson *)v11 setPersonId:v69[5]];
        [(FHPeerPaymentForecastingSignal *)v11 setFrequency:v45[5]];
        [(FHPeerPaymentForecastingSignal *)v11 setSignalDate:v57[5]];
        [(FHPeerPaymentForecastingSignalPerson *)v11 setDirection:v36[3]];
        v14 = [v30[5] copy];
        [(FHPeerPaymentForecastingSignal *)v11 setPeerPaymentHeuristicIds:v14];

        [v6 addObject:v11];
        break;
      case 6:
        v11 = objc_alloc_init(FHPeerPaymentForecastingSignalTopUpWithAmount);
        [(FHPeerPaymentForecastingSignalPersonWithAmount *)v11 setAmount:v51[5]];
        [(FHPeerPaymentForecastingSignal *)v11 setFrequency:v45[5]];
        [(FHPeerPaymentForecastingSignal *)v11 setSignalDate:v57[5]];
        v13 = [v30[5] copy];
        [(FHPeerPaymentForecastingSignal *)v11 setPeerPaymentHeuristicIds:v13];

        [v6 addObject:v11];
        break;
      case 3:
        v11 = objc_alloc_init(FHPeerPaymentForecastingSignalPersonWithAmount);
        [(FHPeerPaymentForecastingSignalPerson *)v11 setPersonId:v69[5]];
        [(FHPeerPaymentForecastingSignalPersonWithAmount *)v11 setAmount:v51[5]];
        [(FHPeerPaymentForecastingSignal *)v11 setFrequency:v45[5]];
        [(FHPeerPaymentForecastingSignal *)v11 setSignalDate:v57[5]];
        [(FHPeerPaymentForecastingSignalPerson *)v11 setDirection:v36[3]];
        v12 = [v30[5] copy];
        [(FHPeerPaymentForecastingSignal *)v11 setPeerPaymentHeuristicIds:v12];

        [v6 addObject:v11];
        break;
      default:
        goto LABEL_14;
    }
  }

LABEL_14:
  v15 = [v6 copy];

  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v39, 8);
  _Block_object_dispose(v43, 8);
  _Block_object_dispose(&v44, 8);

  _Block_object_dispose(&v50, 8);
  _Block_object_dispose(&v56, 8);

  _Block_object_dispose(&v62, 8);
  _Block_object_dispose(&v68, 8);

  _Block_object_dispose(&v75, 8);

  return v15;
}

void __61__FHDatabaseManager_getAllPeerPaymentSignalsFilterDismissed___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = objc_autoreleasePoolPush();
  *(*(*(a1 + 32) + 8) + 24) = [v9 unsignedIntAtIndex:4];
  v4 = [v9 stringAtIndex:5];
  v5 = v4;
  v6 = *(*(*(a1 + 32) + 8) + 24) != 1 || v4 == 0;
  if (!v6 && [v4 length] >= 2)
  {
    v7 = *(*(*(a1 + 40) + 8) + 40);
    v8 = [v9 stringAtIndex:5];
    [v7 addObject:v8];
  }

  objc_autoreleasePoolPop(v3);
}

void __61__FHDatabaseManager_getAllPeerPaymentSignalsFilterDismissed___block_invoke_2(uint64_t a1, void *a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = a2;
  context = objc_autoreleasePoolPush();
  v4 = [v3 stringAtIndex:2];
  v5 = [v3 stringAtIndex:8];
  v6 = MEMORY[0x277CBEAA8];
  v7 = [v3 objectAtIndex:6];
  [v7 doubleValue];
  v39 = [v6 dateWithTimeIntervalSinceReferenceDate:?];

  v8 = [v3 intAtIndex:3];
  v9 = [objc_alloc(MEMORY[0x277CCA980]) initWithInteger:v8];
  v10 = [MEMORY[0x277CCA980] defaultDatabaseAmountMultiplier];
  v11 = [v9 decimalNumberByDividingBy:v10];

  v12 = objc_alloc(MEMORY[0x277CCA980]);
  v13 = [v3 objectAtIndex:4];
  [v13 doubleValue];
  v38 = [v12 initWithDouble:?];

  v14 = [v3 unsignedIntAtIndex:5];
  v15 = [v3 unsignedIntAtIndex:7];
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    [*(*(*(a1 + 48) + 8) + 40) addObject:*(*(*(a1 + 56) + 8) + 40)];
    if ((![v4 isEqualToString:*(*(*(a1 + 40) + 8) + 40)] || *(*(*(a1 + 64) + 8) + 24) != v8) && (objc_msgSend(*(*(*(a1 + 72) + 8) + 40), "containsObject:", *(*(*(a1 + 56) + 8) + 40)) & 1) == 0)
    {
      v16 = FinHealthLogObject(@"FinHealthCore");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v17 = *(*(*(a1 + 40) + 8) + 40);
        v18 = *(*(*(a1 + 48) + 8) + 40);
        *buf = 138412546;
        v42 = v17;
        v43 = 2112;
        v44 = v18;
        _os_log_impl(&dword_226DD4000, v16, OS_LOG_TYPE_DEBUG, "heuristicIdentifierByPeerPaymentHandleAndAmount %@, %@", buf, 0x16u);
      }

      v19 = *(*(*(a1 + 80) + 8) + 24);
      switch(v19)
      {
        case 2:
          v20 = objc_alloc_init(FHPeerPaymentForecastingSignalPerson);
          [(FHPeerPaymentForecastingSignalPerson *)v20 setPersonId:*(*(*(a1 + 40) + 8) + 40)];
          break;
        case 6:
          v20 = objc_alloc_init(FHPeerPaymentForecastingSignalTopUpWithAmount);
          [(FHPeerPaymentForecastingSignalPersonWithAmount *)v20 setAmount:*(*(*(a1 + 88) + 8) + 40)];
          [(FHPeerPaymentForecastingSignal *)v20 setFrequency:*(*(*(a1 + 96) + 8) + 40)];
          [(FHPeerPaymentForecastingSignal *)v20 setSignalDate:*(*(*(a1 + 104) + 8) + 40)];
LABEL_14:
          v21 = [*(*(*(a1 + 48) + 8) + 40) copy];
          [(FHPeerPaymentForecastingSignal *)v20 setPeerPaymentHeuristicIds:v21];

          [*(a1 + 32) addObject:v20];
          goto LABEL_15;
        case 3:
          v20 = objc_alloc_init(FHPeerPaymentForecastingSignalPersonWithAmount);
          [(FHPeerPaymentForecastingSignalPerson *)v20 setPersonId:*(*(*(a1 + 40) + 8) + 40)];
          [(FHPeerPaymentForecastingSignalPersonWithAmount *)v20 setAmount:*(*(*(a1 + 88) + 8) + 40)];
          break;
        default:
LABEL_15:
          [*(*(*(a1 + 48) + 8) + 40) removeAllObjects];
          goto LABEL_16;
      }

      [(FHPeerPaymentForecastingSignal *)v20 setFrequency:*(*(*(a1 + 96) + 8) + 40)];
      [(FHPeerPaymentForecastingSignal *)v20 setSignalDate:*(*(*(a1 + 104) + 8) + 40)];
      [(FHPeerPaymentForecastingSignalPerson *)v20 setDirection:*(*(*(a1 + 112) + 8) + 24)];
      goto LABEL_14;
    }
  }

LABEL_16:
  v22 = v15;
  v23 = v14;
  v24 = *(*(a1 + 40) + 8);
  v25 = *(v24 + 40);
  *(v24 + 40) = v4;
  v26 = v4;

  v27 = *(*(a1 + 56) + 8);
  v28 = *(v27 + 40);
  *(v27 + 40) = v5;
  v29 = v5;

  v30 = *(*(a1 + 104) + 8);
  v31 = *(v30 + 40);
  *(v30 + 40) = v39;
  v32 = v39;

  *(*(*(a1 + 64) + 8) + 24) = v8;
  v33 = *(*(a1 + 88) + 8);
  v34 = *(v33 + 40);
  *(v33 + 40) = v11;
  v35 = v11;

  *(*(*(a1 + 112) + 8) + 24) = v23;
  *(*(*(a1 + 80) + 8) + 24) = v22;
  v36 = *(*(a1 + 96) + 8);
  v37 = *(v36 + 40);
  *(v36 + 40) = v38;

  objc_autoreleasePoolPop(context);
}

- (id)getExpectedWeeklySpend
{
  v39 = *MEMORY[0x277D85DE8];
  zero = [MEMORY[0x277CCA980] zero];
  v4 = [MEMORY[0x277CBEAA8] now];
  [(FHDatabaseManager *)self getAllPeerPaymentSignalsFilterDismissed:0];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v5 = v37 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v35;
    v33 = v5;
    do
    {
      v9 = 0;
      do
      {
        if (*v35 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v34 + 1) + 8 * v9);
        v11 = objc_autoreleasePoolPush();
        forecastingType = [v10 forecastingType];
        signalDate = [v10 signalDate];
        v14 = signalDate;
        if (forecastingType == 6)
        {
          [signalDate timeIntervalSinceDate:v4];
          if (v25 > 0.0)
          {
            v26 = [v4 dateByAddingTimeInterval:0x93A80uLL];
            [v26 timeIntervalSinceDate:v14];
            v28 = v27;

            if (v28 > 0.0)
            {
              v20Amount = v10;
              amount = [v20Amount amount];
              v23 = zero;
              v24 = amount;
LABEL_16:
              v29 = [v23 decimalNumberByAdding:v24];
LABEL_17:
              v19 = v29;

              goto LABEL_18;
            }
          }
        }

        else if (forecastingType == 3)
        {
          [signalDate timeIntervalSinceDate:v4];
          if (v15 > 0.0)
          {
            v16 = [v4 dateByAddingTimeInterval:0x93A80uLL];
            [v16 timeIntervalSinceDate:v14];
            v18 = v17;

            if (v18 > 0.0)
            {
              v19 = zero;
              amount = v10;
              direction = [amount direction];
              v20Amount = [amount amount];
              if (direction == 1)
              {
                zero = v19;
                v29 = [v19 decimalNumberBySubtracting:v20Amount];
                goto LABEL_17;
              }

              if (direction == 2)
              {
                zero = v19;
                v23 = v19;
                v24 = v20Amount;
                goto LABEL_16;
              }

LABEL_18:
              zero = v19;

              v5 = v33;
            }
          }
        }

        objc_autoreleasePoolPop(v11);
        ++v9;
      }

      while (v7 != v9);
      v30 = [v5 countByEnumeratingWithState:&v34 objects:v38 count:16];
      v7 = v30;
    }

    while (v30);
  }

  v31 = zero;
  return zero;
}

- (BOOL)recordPeerPaymentForecastingStatus:(unint64_t)status counterpartHandle:(id)handle amount:(id)amount
{
  v46 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  amountCopy = amount;
  v9 = [objc_alloc(MEMORY[0x277CCA980]) initWithInteger:100];
  v10 = [amountCopy decimalNumberByMultiplyingBy:v9];
  intValue = [v10 intValue];

  v12 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v13 = FinHealthLogObject(@"FinHealthCore");
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG);
  if (handleCopy)
  {
    if (v14)
    {
      *buf = 134218498;
      statusCopy2 = status;
      v42 = 2112;
      v43 = handleCopy;
      v44 = 2112;
      v45 = amountCopy;
      _os_log_impl(&dword_226DD4000, v13, OS_LOG_TYPE_DEBUG, "Recurring peer payment setup={FHPeerPaymentSuggestionStatusType: %lu, counterpartHandle: %@, Amount: %@}", buf, 0x20u);
    }

    v15 = [FinHealthRecurringHelper histogramKeysForPeerPaymentTransaction:handleCopy transactionAmount:amountCopy transactionPeerPaymentSubtype:1 amountFromDatabase:intValue];
  }

  else
  {
    if (v14)
    {
      *buf = 134218242;
      statusCopy2 = status;
      v42 = 2112;
      v43 = amountCopy;
      _os_log_impl(&dword_226DD4000, v13, OS_LOG_TYPE_DEBUG, "Threshold based top up setup={FHPeerPaymentSuggestionStatusType: %lu, Amount: %@}", buf, 0x16u);
    }

    v15 = [FinHealthRecurringHelper histogramKeysForTopUpTransaction:amountCopy amountFromDatabase:intValue];
  }

  v16 = v15;
  v17 = [v15 copy];

  v18 = FinHealthLogObject(@"FinHealthCore");
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    statusCopy2 = v17;
    _os_log_impl(&dword_226DD4000, v18, OS_LOG_TYPE_DEBUG, "Forecasting signal uniqueHistogramIds=%@", buf, 0xCu);
  }

  v19 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v17;
  v20 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v20)
  {
    v21 = v20;
    v31 = amountCopy;
    v33 = *v36;
    while (2)
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v36 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v35 + 1) + 8 * i);
        [v19 removeAllObjects];
        v24 = [MEMORY[0x277CCABB0] numberWithInteger:3];
        [v19 setObject:v24 forKey:@"TagType"];

        v25 = [MEMORY[0x277CCABB0] numberWithInteger:1];
        [v19 setObject:v25 forKey:@"PassType"];

        v26 = [MEMORY[0x277CCABB0] numberWithInteger:101];
        [v19 setObject:v26 forKey:@"Source"];

        featureLabel = [v23 featureLabel];
        [v19 setObject:featureLabel forKey:@"HeuristicIdentifier"];

        v28 = [v19 copy];
        LODWORD(v26) = [(FHDatabaseManager *)self insertInstrumentationRecord:v28];

        if (!v26)
        {
          v29 = 0;
          goto LABEL_20;
        }
      }

      v21 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
      if (v21)
      {
        continue;
      }

      break;
    }

    v29 = 1;
LABEL_20:
    amountCopy = v31;
  }

  else
  {
    v29 = 1;
  }

  return v29;
}

- (BOOL)insertOrUpdateBankConnectAccount:(id)account
{
  accountCopy = account;
  accountBalance = [accountCopy accountBalance];
  defaultDatabaseAmountMultiplier = [MEMORY[0x277CCA980] defaultDatabaseAmountMultiplier];
  v33 = [accountBalance decimalNumberByMultiplyingBy:defaultDatabaseAmountMultiplier];

  creditLimit = [accountCopy creditLimit];
  defaultDatabaseAmountMultiplier2 = [MEMORY[0x277CCA980] defaultDatabaseAmountMultiplier];
  v32 = [creditLimit decimalNumberByMultiplyingBy:defaultDatabaseAmountMultiplier2];

  minimumPaymentAmount = [accountCopy minimumPaymentAmount];
  defaultDatabaseAmountMultiplier3 = [MEMORY[0x277CCA980] defaultDatabaseAmountMultiplier];
  v25 = [minimumPaymentAmount decimalNumberByMultiplyingBy:defaultDatabaseAmountMultiplier3];

  overduePaymentAmount = [accountCopy overduePaymentAmount];
  defaultDatabaseAmountMultiplier4 = [MEMORY[0x277CCA980] defaultDatabaseAmountMultiplier];
  v24 = [overduePaymentAmount decimalNumberByMultiplyingBy:defaultDatabaseAmountMultiplier4];

  accountID = [accountCopy accountID];
  accountType = [accountCopy accountType];
  sourceType = [accountCopy sourceType];
  currency = [accountCopy currency];
  v31 = [MEMORY[0x277CBEAA8] now];
  [v31 timeIntervalSinceReferenceDate];
  v26 = v12;
  accountCategory = [accountCopy accountCategory];
  accountDescription = [accountCopy accountDescription];
  accountStatus = [accountCopy accountStatus];
  nextPaymentDate = [accountCopy nextPaymentDate];
  [nextPaymentDate timeIntervalSinceReferenceDate];
  v18 = v17;
  institutionName = [accountCopy institutionName];
  institutionID = [accountCopy institutionID];
  uniqueAccountID = [accountCopy uniqueAccountID];

  v22 = [(FHDatabaseManager *)self _execute:@"insert or replace into fh_account_information (source_identifier, account_type, account_balance, source_type, account_currency_code, account_date, account_category, account_description, account_status, credit_limit, next_payment_date, minimum_payment_amount, overdue_payment_amount, institution_name, institution_id, unique_account_id) values (%@, %d, %@, %d, %@, %d, %d, %@, %d, %@, %f, %@, %@, %@, %@, %@)", accountID, accountType, v33, sourceType, currency, v26, accountCategory, accountDescription, accountStatus, v32, v18, v25, v24, institutionName, institutionID, uniqueAccountID];
  return v22;
}

- (id)getFHAccounts
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __34__FHDatabaseManager_getFHAccounts__block_invoke;
  v5[3] = &unk_2785CB310;
  v5[4] = &v6;
  [(FHDatabaseManager *)self streamGenericSQLFetch:v5 predicate:0 sqlFetchQuery:@"select * from fh_account_information", 0];
  v3 = [v7[5] copy];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __34__FHDatabaseManager_getFHAccounts__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v25 = objc_alloc_init(FHAccount);
  v4 = [v3 stringAtIndex:0];
  [(FHAccount *)v25 setAccountID:v4];

  v5 = [objc_alloc(MEMORY[0x277CCA980]) initWithInteger:{objc_msgSend(v3, "intAtIndex:", 2)}];
  v6 = [MEMORY[0x277CCA980] defaultDatabaseAmountMultiplier];
  v7 = [v5 decimalNumberByDividingBy:v6];
  [(FHAccount *)v25 setAccountBalance:v7];

  -[FHAccount setSourceType:](v25, "setSourceType:", [v3 intAtIndex:3]);
  v8 = [v3 stringAtIndex:4];
  [(FHAccount *)v25 setCurrency:v8];

  -[FHAccount setAccountCategory:](v25, "setAccountCategory:", [v3 intAtIndex:6]);
  -[FHAccount setAccountType:](v25, "setAccountType:", [v3 intAtIndex:1]);
  v9 = [v3 stringAtIndex:7];
  [(FHAccount *)v25 setAccountDescription:v9];

  -[FHAccount setAccountStatus:](v25, "setAccountStatus:", [v3 intAtIndex:8]);
  v10 = [v3 decimalNumberAtIndex:9];
  v11 = [MEMORY[0x277CCA980] defaultDatabaseAmountMultiplier];
  v12 = [v10 decimalNumberByDividingBy:v11];
  [(FHAccount *)v25 setCreditLimit:v12];

  v13 = MEMORY[0x277CBEAA8];
  v14 = [v3 objectAtIndex:10];
  [v14 doubleValue];
  v15 = [v13 dateWithTimeIntervalSinceReferenceDate:?];
  [(FHAccount *)v25 setNextPaymentDate:v15];

  v16 = [v3 decimalNumberAtIndex:11];
  v17 = [MEMORY[0x277CCA980] defaultDatabaseAmountMultiplier];
  v18 = [v16 decimalNumberByDividingBy:v17];
  [(FHAccount *)v25 setMinimumPaymentAmount:v18];

  v19 = [v3 decimalNumberAtIndex:12];
  v20 = [MEMORY[0x277CCA980] defaultDatabaseAmountMultiplier];
  v21 = [v19 decimalNumberByDividingBy:v20];
  [(FHAccount *)v25 setOverduePaymentAmount:v21];

  v22 = [v3 stringAtIndex:13];
  [(FHAccount *)v25 setInstitutionName:v22];

  v23 = [v3 stringAtIndex:14];
  [(FHAccount *)v25 setInstitutionID:v23];

  v24 = [v3 stringAtIndex:15];

  [(FHAccount *)v25 setUniqueAccountID:v24];
  [*(*(*(a1 + 32) + 8) + 40) addObject:v25];
}

- (BOOL)updatePeerPaymentAccountBalance:(id)balance amount:(id)amount currencyCode:(id)code
{
  v34 = *MEMORY[0x277D85DE8];
  balanceCopy = balance;
  amountCopy = amount;
  codeCopy = code;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = -1;
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2020000000;
  v23[3] = 0;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __73__FHDatabaseManager_updatePeerPaymentAccountBalance_amount_currencyCode___block_invoke;
  v22[3] = &unk_2785CB3B0;
  v22[4] = v23;
  v22[5] = &v24;
  [(FHDatabaseManager *)self streamGenericSQLFetch:v22 predicate:0 sqlFetchQuery:@"select * from fh_account_information", 0];
  v11 = [MEMORY[0x277CBEAA8] now];
  [v11 timeIntervalSinceReferenceDate];
  v13 = v12;

  defaultDatabaseAmountMultiplier = [MEMORY[0x277CCA980] defaultDatabaseAmountMultiplier];
  v15 = [amountCopy decimalNumberByMultiplyingBy:defaultDatabaseAmountMultiplier];

  LODWORD(defaultDatabaseAmountMultiplier) = *(v25 + 6);
  if (defaultDatabaseAmountMultiplier != [v15 intValue] || *(v25 + 6) == -1)
  {
    v16 = [(FHDatabaseManager *)self _execute:@"insert or replace into fh_account_information (source_identifier, account_type, account_balance, account_currency_code, account_date) values (%@, %d, %@, %@, %d)", balanceCopy, 1, v15, codeCopy, v13];
    if (v16)
    {
      v17 = FinHealthLogObject(@"FinHealthCore");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412802;
        v29 = v15;
        v30 = 2112;
        v31 = codeCopy;
        v32 = 2112;
        v33 = balanceCopy;
        v18 = "Updating balance of %@ %@ for transactionSourceIdentifier=%@ in fh_acount_information database table: success";
        v19 = v17;
        v20 = OS_LOG_TYPE_DEBUG;
LABEL_9:
        _os_log_impl(&dword_226DD4000, v19, v20, v18, buf, 0x20u);
      }
    }

    else
    {
      v17 = FinHealthLogObject(@"FinHealthCore");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v29 = v15;
        v30 = 2112;
        v31 = codeCopy;
        v32 = 2112;
        v33 = balanceCopy;
        v18 = "Updating balance of %@ %@ for transactionSourceIdentifier=%@ in fh_acount_information database table: failed";
        v19 = v17;
        v20 = OS_LOG_TYPE_ERROR;
        goto LABEL_9;
      }
    }

    goto LABEL_11;
  }

  LOBYTE(v16) = 1;
LABEL_11:

  _Block_object_dispose(v23, 8);
  _Block_object_dispose(&v24, 8);

  return v16;
}

void __73__FHDatabaseManager_updatePeerPaymentAccountBalance_amount_currencyCode___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 unsignedIntAtIndex:5];
  if (*(*(*(a1 + 32) + 8) + 24) <= v3)
  {
    v4 = v3;
    if ([v5 intAtIndex:1] == 1)
    {
      *(*(*(a1 + 32) + 8) + 24) = v4;
      *(*(*(a1 + 40) + 8) + 24) = [v5 unsignedIntAtIndex:2];
    }
  }
}

- (id)getCurrentCashBalance
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = -1;
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x2020000000;
  v6[3] = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __42__FHDatabaseManager_getCurrentCashBalance__block_invoke;
  v5[3] = &unk_2785CB3B0;
  v5[4] = v6;
  v5[5] = &v7;
  [(FHDatabaseManager *)self streamGenericSQLFetch:v5 predicate:0 sqlFetchQuery:@"select * from fh_account_information", 0];
  v2 = objc_alloc(MEMORY[0x277CCA980]);
  v3 = [v2 initWithInteger:*(v8 + 6)];
  _Block_object_dispose(v6, 8);
  _Block_object_dispose(&v7, 8);

  return v3;
}

void __42__FHDatabaseManager_getCurrentCashBalance__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 unsignedIntAtIndex:5];
  if (*(*(*(a1 + 32) + 8) + 24) <= v3)
  {
    v4 = v3;
    if ([v5 intAtIndex:1] == 1)
    {
      *(*(*(a1 + 32) + 8) + 24) = v4;
      *(*(*(a1 + 40) + 8) + 24) = [v5 unsignedIntAtIndex:2];
    }
  }
}

- (void)computePaymentFeatures
{
  v3 = objc_alloc(MEMORY[0x277CBEA80]);
  v4 = [v3 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
  v5 = [v4 fh_dateWithStartOfDayByAddingDaysFromNow:-7];
  v6 = [MEMORY[0x277CBEAA8] now];
  [v6 timeIntervalSinceReferenceDate];
  v8 = v7;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __43__FHDatabaseManager_computePaymentFeatures__block_invoke;
  v11[3] = &unk_2785CB1B8;
  v12 = v5;
  v13 = v6;
  selfCopy = self;
  v9 = v6;
  v10 = v5;
  [(FHDatabaseManager *)self streamGenericSQLFetch:v11 predicate:0 sqlFetchQuery:@"select * from transactions t where t_type = %d and t_date >= %d and t_date <= %d and a_type == %d order by t_date desc limit %d", 10, 0, v8, 2, -1];
}

void __43__FHDatabaseManager_computePaymentFeatures__block_invoke(uint64_t a1, void *a2)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 objectAtIndex:1];
  v5 = [v3 objectAtIndex:3];
  v6 = objc_alloc(MEMORY[0x277CBEAA8]);
  v7 = [v3 unsignedIntAtIndex:12];

  v8 = [v6 initWithTimeIntervalSinceReferenceDate:v7];
  if ([v8 compare:*(a1 + 32)] == -1 || objc_msgSend(v8, "compare:", *(a1 + 40)) == 1)
  {
    v9 = 0;
  }

  else
  {
    v10 = MEMORY[0x277CBEB98];
    v19[0] = @"FHSmartFeatureAggregateTypeRecentPayment";
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
    v9 = [v10 setWithArray:v11];
  }

  v12 = [*(a1 + 48) _insertOrUpdateTransactionFeatures:v9 compoundFeatures:0 transactionID:v4 financeTransactionID:v5];
  v13 = FinHealthLogObject(@"FinHealthCore");
  v14 = v13;
  if (v12)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *v18 = 0;
      v15 = "Insert Payment Features : succeess";
      v16 = v14;
      v17 = OS_LOG_TYPE_DEBUG;
LABEL_10:
      _os_log_impl(&dword_226DD4000, v16, v17, v15, v18, 2u);
    }
  }

  else if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *v18 = 0;
    v15 = "Insert Payment Features : failed";
    v16 = v14;
    v17 = OS_LOG_TYPE_ERROR;
    goto LABEL_10;
  }
}

- (id)_computePaymentFeaturesForTransaction:(id)transaction
{
  v25[1] = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  v5 = objc_alloc(MEMORY[0x277CBEA80]);
  v6 = [v5 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
  v7 = [v6 fh_dateWithStartOfDayByAddingDaysFromNow:-7];
  identifier = [transactionCopy identifier];
  transactionDate = [transactionCopy transactionDate];
  if ([transactionCopy transactionType] != 10 || objc_msgSend(transactionDate, "compare:", v7) == -1 || (objc_msgSend(MEMORY[0x277CBEAA8], "now"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(transactionDate, "compare:", v10), v10, v11 == 1))
  {
    v12 = 0;
    goto LABEL_5;
  }

  v14 = MEMORY[0x277CBEB98];
  v25[0] = @"FHSmartFeatureAggregateTypeRecentPayment";
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
  v12 = [v14 setWithArray:v15];

  financeTransactionIdentifier = [transactionCopy financeTransactionIdentifier];
  v17 = [(FHDatabaseManager *)self _insertOrUpdateTransactionFeatures:v12 compoundFeatures:0 transactionID:identifier financeTransactionID:financeTransactionIdentifier];

  v18 = FinHealthLogObject(@"FinHealthCore");
  v19 = v18;
  if (v17)
  {
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v23 = 138412290;
      v24 = identifier;
      v20 = "Insert Payment Features for transaction id %@:  success";
      v21 = v19;
      v22 = OS_LOG_TYPE_DEBUG;
LABEL_13:
      _os_log_impl(&dword_226DD4000, v21, v22, v20, &v23, 0xCu);
    }
  }

  else if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v23 = 138412290;
    v24 = identifier;
    v20 = "Insert Payment Features for transaction id %@: failed";
    v21 = v19;
    v22 = OS_LOG_TYPE_ERROR;
    goto LABEL_13;
  }

LABEL_5:

  return v12;
}

- (void)computeAndPersistDisputeFeaturesForPendingTransactions
{
  mostRecentTransactionDate = [(FHDatabaseManager *)self mostRecentTransactionDate];
  7776000 = [MEMORY[0x277CCAC30] predicateWithFormat:@"SELF.%K > %lu", @"t_date", mostRecentTransactionDate - 7776000];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __75__FHDatabaseManager_computeAndPersistDisputeFeaturesForPendingTransactions__block_invoke;
  v5[3] = &unk_2785CB428;
  v5[4] = self;
  [(FHDatabaseManager *)self streamGenericSQLFetch:v5 predicate:7776000 sqlFetchQuery:@"select * from transactions t where t.t_type == %lu and t.t_status == %lu and t.a_type == %d order by t_date desc limit %d", 0, 0, 2, -1];
}

void __75__FHDatabaseManager_computeAndPersistDisputeFeaturesForPendingTransactions__block_invoke(uint64_t a1, void *a2)
{
  v4 = TransactionFromArray(a2);
  v3 = [*(a1 + 32) _computeDisputeFeaturesForTransaction:v4];
}

- (id)_computeDisputeFeaturesForTransaction:(id)transaction
{
  v18 = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  v5 = [(FHDatabaseManager *)self _getDisputeFeaturesForTransaction:transactionCopy];
  v6 = v5;
  if (v5 && [v5 count])
  {
    identifier = [transactionCopy identifier];
    financeTransactionIdentifier = [transactionCopy financeTransactionIdentifier];
    v9 = [(FHDatabaseManager *)self _insertOrUpdateTransactionFeatures:v6 compoundFeatures:0 transactionID:identifier financeTransactionID:financeTransactionIdentifier];

    v10 = FinHealthLogObject(@"FinHealthCore");
    v11 = v10;
    if (v9)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v16 = 138412290;
        v17 = identifier;
        v12 = "computeDisputeFeaturesForTransaction: _insertOrUpdateTransactionFeatures success for transactionID %@ ";
        v13 = v11;
        v14 = OS_LOG_TYPE_DEBUG;
LABEL_8:
        _os_log_impl(&dword_226DD4000, v13, v14, v12, &v16, 0xCu);
      }
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v16 = 138412290;
      v17 = identifier;
      v12 = "computeDisputeFeaturesForTransaction: _insertOrUpdateTransactionFeatures fails for transactionID %@";
      v13 = v11;
      v14 = OS_LOG_TYPE_ERROR;
      goto LABEL_8;
    }
  }

  return v6;
}

- (id)_getDisputeFeaturesForTransaction:(id)transaction
{
  transactionCopy = transaction;
  if (_getDisputeFeaturesForTransaction__onceToken != -1)
  {
    [FHDatabaseManager _getDisputeFeaturesForTransaction:];
  }

  if (![transactionCopy disputeStatus])
  {
    v10 = 0;
    goto LABEL_10;
  }

  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  [v4 addObject:@"FHSmartFeatureAggregateTypeDispute"];
  v5 = objc_alloc(MEMORY[0x277CBEA80]);
  v6 = [v5 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
  v7 = [v6 fh_dateWithStartOfDayByAddingDaysFromNow:-60];
  v8 = _getDisputeFeaturesForTransaction__openDisputeStatuses;
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(transactionCopy, "disputeStatus")}];
  if ([v8 containsObject:v9])
  {

LABEL_8:
    [v4 addObject:@"FHSmartFeatureAggregateTypeRecentDispute"];
    goto LABEL_9;
  }

  disputeLastUpdatedDate = [transactionCopy disputeLastUpdatedDate];
  v12 = [disputeLastUpdatedDate compare:v7];

  if (v12 != -1)
  {
    goto LABEL_8;
  }

LABEL_9:
  v10 = [v4 copy];

LABEL_10:

  return v10;
}

uint64_t __55__FHDatabaseManager__getDisputeFeaturesForTransaction___block_invoke()
{
  _getDisputeFeaturesForTransaction__openDisputeStatuses = [MEMORY[0x277CBEB98] setWithArray:&unk_283A88140];

  return MEMORY[0x2821F96F8]();
}

- (id)computeAndPersistTransactionGroupings
{
  v22[1] = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x3032000000;
  v20[3] = __Block_byref_object_copy_;
  v20[4] = __Block_byref_object_dispose_;
  v21 = 0;
  v4 = objc_alloc(MEMORY[0x277CD89D8]);
  v22[0] = *MEMORY[0x277CD8978];
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
  v6 = [v4 initWithTagSchemes:v5];

  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __58__FHDatabaseManager_computeAndPersistTransactionGroupings__block_invoke;
  v10[3] = &unk_2785CB478;
  v10[4] = self;
  v7 = v6;
  v11 = v7;
  v12 = v20;
  v13 = &v14;
  [(FHDatabaseManager *)self streamGenericSQLFetch:v10 predicate:0 sqlFetchQuery:@"select t_identifier, processed_description from fts_transactions where a_type == %d AND processed_description IS NOT NULL order by t_date asc", 4];
  v8 = [v15[5] copy];

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(v20, 8);

  objc_autoreleasePoolPop(v3);

  return v8;
}

void __58__FHDatabaseManager_computeAndPersistTransactionGroupings__block_invoke(uint64_t a1, void *a2)
{
  v142[3] = *MEMORY[0x277D85DE8];
  v2 = a2;
  context = objc_autoreleasePoolPush();
  v95 = v2;
  v96 = [v2 objectAtIndex:0];
  v97 = [*(a1 + 32) _lockFreeFetch:v96];
  v3 = v97;
  if (([v97 next] & 1) == 0)
  {
    v4 = [v95 objectAtIndex:1];
    v5 = [v4 stringValue];

    v6 = [v5 stringByReplacingOccurrencesOfString:@"'" withString:@"''"];

    v123 = 0;
    v124 = &v123;
    v125 = 0x3032000000;
    v126 = __Block_byref_object_copy_;
    v127 = __Block_byref_object_dispose_;
    v128 = objc_alloc_init(MEMORY[0x277CBEA60]);
    [*(a1 + 40) setString:v6];
    v7 = *(a1 + 40);
    v8 = [v6 length];
    v9 = *MEMORY[0x277CD8978];
    v120[0] = MEMORY[0x277D85DD0];
    v120[1] = 3221225472;
    v120[2] = __58__FHDatabaseManager_computeAndPersistTransactionGroupings__block_invoke_2;
    v120[3] = &unk_2785CB450;
    v89 = v6;
    v121 = v89;
    v122 = &v123;
    [v7 enumerateTagsInRange:0 unit:v8 scheme:0 options:v9 usingBlock:{46, v120}];
    v10 = MEMORY[0x277CCACA8];
    v11 = [v124[5] componentsJoinedByString:@" OR "];
    v92 = [v10 stringWithFormat:@"%@", v11];

    v12 = MEMORY[0x277CCACA8];
    v13 = [v124[5] componentsJoinedByString:@" "];
    v91 = [v12 stringWithFormat:@"%@", v13];

    v90 = [MEMORY[0x277CCACA8] stringWithFormat:@"    SELECT         txns.t_identifier, txns.t_description, txns.t_date, txns.t_amount, txns.a_type, txns.proprietary_bank_transaction_issuer, txns.proprietary_bank_transaction_code, accs.account_category, txns.t_type, txns.t_currencycode, fts.rank     FROM         fts_transactions fts         INNER JOIN transactions txns ON fts.t_identifier = txns.t_identifier         LEFT JOIN fh_account_information accs ON txns.t_source_identifier = accs.source_identifier     WHERE         fts_transactions match '^%@'         AND fts.a_type == %d     UNION     SELECT         txns.t_identifier, txns.t_description, txns.t_date, txns.t_amount, txns.a_type, txns.proprietary_bank_transaction_issuer, txns.proprietary_bank_transaction_code, accs.account_category, txns.t_type, txns.t_currencycode, fts.rank     FROM         fts_transactions fts         INNER JOIN transactions txns ON fts.t_identifier = txns.t_identifier         LEFT JOIN fh_account_information accs ON txns.t_source_identifier = accs.source_identifier     WHERE         fts_transactions match '%@' AND rank < %f         AND fts.a_type == %d     ORDER BY txns.t_date ASC", v91, 4, v92, 0xC024000000000000, 4];;
    v98 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v100 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v99 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v104 = [*(a1 + 32) _lockFreeFetch:v90];
    v101 = objc_alloc_init(MEMORY[0x277CCACA8]);
    v102 = objc_alloc_init(MEMORY[0x277CBEB38]);
    while ([v104 next])
    {
      v14 = [v104 stringAtIndex:0];
      v15 = [*(a1 + 32) _lockFreeFetch:{@"select group_id, group_type from fh_grouping where t_identifier == %@", v14}];
      v105 = [v104 stringAtIndex:1];
      v16 = [v104 integerAtIndex:2];
      [v104 doubleAtIndex:3];
      v18 = v17;
      v19 = [v104 integerAtIndex:4];
      obj = [v104 stringAtIndex:5];
      v110 = [v104 stringAtIndex:6];
      v20 = [v104 integerAtIndex:7];
      v21 = [v104 integerAtIndex:8];
      v108 = [v104 stringAtIndex:9];
      [v104 doubleAtIndex:10];
      v23 = v22;
      v24 = [MEMORY[0x277CCABB0] numberWithDouble:?];
      v142[0] = v24;
      v25 = v18 / 100.0;
      v26 = [MEMORY[0x277CCABB0] numberWithDouble:v25];
      v142[1] = v26;
      v27 = [MEMORY[0x277CCABB0] numberWithInteger:v16];
      v142[2] = v27;
      v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v142 count:3];

      v29 = checkIfIncomeCandidate(v19, v20, obj, v110, v21, v108, v25);
      if ([v15 next])
      {
        v30 = [v15 stringAtIndex:0];
        v31 = [v15 intAtIndex:1];
        v32 = [v102 objectForKey:v30];
        v33 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v16];
        if (v32)
        {
          [(FHTransactionAdditiveGroup *)v32 addTransactionId:v14];
          [(FHTransactionAdditiveGroup *)v32 addAggSimilarityScore:v23];
        }

        else
        {
          v141 = v14;
          v36 = [MEMORY[0x277CBEA60] arrayWithObjects:&v141 count:1];
          v37 = [objc_alloc(MEMORY[0x277CCA980]) initWithDouble:v23];
          v32 = [[FHTransactionAdditiveGroup alloc] initWithAggSimilarityScore:v37 latestTransactionDate:v33 groupIdentifier:v30 transactionIds:v36 groupingMethod:v31 creditDebitType:0 category:0];
        }

        [v102 setObject:v32 forKey:v30];
      }

      else
      {
        if (v29)
        {
          [v99 setObject:v28 forKey:v14];
          [v98 addObject:v105];
        }

        v34 = [objc_alloc(MEMORY[0x277CCA980]) initWithDouble:v23];
        [v100 setObject:v34 forKey:v14];

        v30 = v101;
        if ([v100 count] == 1)
        {
          v35 = v14;
        }

        else
        {
          v35 = v101;
        }

        v101 = v35;
      }

      [v15 close];
    }

    [v104 close];
    v111 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", objc_msgSend(v101, "hash")];
    v93 = [*(a1 + 32) sortGroupsByMode:v102];
    if ([v93 count])
    {
      v38 = [v93 objectAtIndex:0];

      v39 = [v102 objectForKey:v38];
      v40 = [v39 groupingMethod];
      v88 = v39;
      if (v40 == 3 || v40 == 6)
      {
        v40 = 6;
      }

      v109 = v40;
      v87 = [MEMORY[0x277CCACA8] stringWithFormat:@"select fh_grouping.t_identifier, transactions.t_description, transactions.t_date, transactions.t_amount, transactions.a_type, transactions.proprietary_bank_transaction_issuer, transactions.proprietary_bank_transaction_code, accs.account_category, transactions.t_type, transactions.t_currencycode from fh_grouping INNER JOIN transactions ON fh_grouping.t_identifier == transactions.t_identifier LEFT JOIN fh_account_information accs ON transactions.t_source_identifier == accs.source_identifier where fh_grouping.group_id == '%@'", v38];
      v41 = [*(a1 + 32) _lockFreeFetch:?];
      while ([v41 next])
      {
        v112 = [v41 stringAtIndex:0];
        v106 = [v41 stringAtIndex:1];
        v42 = [v41 integerAtIndex:2];
        [v41 doubleAtIndex:3];
        v44 = v43;
        v103 = [v41 integerAtIndex:4];
        obja = [v41 stringAtIndex:5];
        v45 = [v41 stringAtIndex:6];
        v46 = [v41 integerAtIndex:7];
        v47 = [v41 integerAtIndex:8];
        v48 = [v41 stringAtIndex:9];
        v49 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
        v140[0] = v49;
        v50 = v44 / 100.0;
        v51 = [MEMORY[0x277CCABB0] numberWithDouble:v50];
        v140[1] = v51;
        v52 = [MEMORY[0x277CCABB0] numberWithInteger:v42];
        v140[2] = v52;
        v53 = [MEMORY[0x277CBEA60] arrayWithObjects:v140 count:3];

        if (checkIfIncomeCandidate(v103, v46, obja, v45, v47, v48, v50))
        {
          [v99 setObject:v53 forKey:v112];
          [v98 addObject:v106];
        }
      }

      [v41 close];

      v111 = v38;
    }

    else
    {
      v109 = 3;
    }

    v118 = 0u;
    v119 = 0u;
    v116 = 0u;
    v117 = 0u;
    objb = v100;
    v54 = [objb countByEnumeratingWithState:&v116 objects:v139 count:16];
    if (v54)
    {
      v55 = *v117;
      do
      {
        for (i = 0; i != v54; ++i)
        {
          if (*v117 != v55)
          {
            objc_enumerationMutation(objb);
          }

          v57 = *(*(&v116 + 1) + 8 * i);
          v58 = FinHealthLogObject(@"FinHealthCore");
          if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
          {
            v59 = [objb objectForKey:v57];
            v60 = [v59 stringValue];
            *buf = 136316162;
            v130 = "[FHDatabaseManager computeAndPersistTransactionGroupings]_block_invoke";
            v131 = 2112;
            v132 = v111;
            v133 = 2112;
            v134 = v57;
            v135 = 2112;
            v136 = v60;
            v137 = 2048;
            v138 = v109;
            _os_log_impl(&dword_226DD4000, v58, OS_LOG_TYPE_DEBUG, "%s Group: groupId %@ transactionId %@ similarityScore %@ GroupMethod %lu", buf, 0x34u);
          }

          v61 = MEMORY[0x277CCACA8];
          v62 = [objb objectForKey:v57];
          v63 = [v62 stringValue];
          v64 = [v61 stringWithFormat:@"insert or replace into fh_grouping (t_identifier, group_id, similarity_score, group_type) values ('%@', '%@', %@, %d)", v57, v111, v63, v109];

          [*(a1 + 32) _execute:v64];
        }

        v54 = [objb countByEnumeratingWithState:&v116 objects:v139 count:16];
      }

      while (v54);
    }

    if (_os_feature_enabled_impl() && [v99 count])
    {
      v65 = a1;
      v66 = *(*(*(a1 + 48) + 8) + 40);
      if (!v66)
      {
        v67 = objc_alloc_init(FinHealthIncomeClassifier);
        v68 = *(*(a1 + 48) + 8);
        v69 = *(v68 + 40);
        *(v68 + 40) = v67;

        v70 = *(a1 + 32);
        v71 = MEMORY[0x277CCACA8];
        v72 = [*(*(*(a1 + 48) + 8) + 40) modelName];
        v73 = [*(*(*(a1 + 48) + 8) + 40) modelVersion];
        v74 = [v71 stringWithFormat:@"%@:%@", v72, v73];
        v75 = [*(*(*(a1 + 48) + 8) + 40) trialId];
        [v70 updateProcessingTimeForFeature:v74 data:v75];

        v65 = a1;
        v66 = *(*(*(a1 + 48) + 8) + 40);
      }

      v76 = *(v65 + 32);
      v77 = [v99 copy];
      v78 = [v98 copy];
      v79 = [FinHealthIncomeClassifier generateFeatures:v77 withDescriptions:v78];
      v80 = [v76 _predictAndPersistIncomeClassification:v66 dataId:v111 dataType:2 features:v79];

      if (v80)
      {
        v81 = [*(*(*(a1 + 56) + 8) + 40) objectForKey:@"INCOME-INSIGHTS"];
        v82 = v81;
        if (v81)
        {
          v83 = v81;
        }

        else
        {
          v83 = objc_opt_new();
        }

        v84 = v83;

        v85 = *(*(*(a1 + 56) + 8) + 40);
        v86 = [v84 setByAddingObject:v111];
        [v85 setObject:v86 forKey:@"INCOME-INSIGHTS"];
      }
    }

    _Block_object_dispose(&v123, 8);
    v3 = v97;
  }

  [v3 close];

  objc_autoreleasePoolPop(context);
}

void __58__FHDatabaseManager_computeAndPersistTransactionGroupings__block_invoke_2(uint64_t a1)
{
  v5 = [*(a1 + 32) substringWithRange:?];
  v2 = [*(*(*(a1 + 40) + 8) + 40) arrayByAddingObject:v5];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (BOOL)groupingSchemaUpdate
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCA980] decimalNumberWithString:@"1.3"];
  v4 = [(FHDatabaseManager *)self processingDataForFeature:@"FHProcessingHistoryGrouping"];
  v5 = FinHealthLogObject(@"FinHealthCore");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v14 = 138412290;
    v15 = v4;
    _os_log_impl(&dword_226DD4000, v5, OS_LOG_TYPE_DEBUG, "Current Grouping Version: %@", &v14, 0xCu);
  }

  if (v4 && ([MEMORY[0x277CCA980] decimalNumberWithString:v4], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "lessThan:", v3), v6, !v7))
  {
    LOBYTE(clearData) = 0;
  }

  else
  {
    v8 = FinHealthLogObject(@"FinHealthCore");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v14 = 138412290;
      v15 = v3;
      _os_log_impl(&dword_226DD4000, v8, OS_LOG_TYPE_DEBUG, "Grouping Schema Will Update to %@", &v14, 0xCu);
    }

    v9 = [[FHDatabaseEntity alloc] initWithEntity:@"fh_grouping"];
    v10 = [[FHDatabaseEntity alloc] initWithEntity:@"features_predicted_realtime"];
    v11 = [FHDatabaseClauseFromBuilder initWithBuilder:&__block_literal_global_396];
    clearData = [(FHDatabaseEntity *)v9 clearData];
    if (clearData)
    {
      [(FHDatabaseManager *)self updateProcessingTimeForFeature:@"FHProcessingHistoryGrouping" data:@"1.3"];
      [(FHDatabaseEntity *)v10 clearDataWithClauseBuilder:v11];
    }
  }

  return clearData;
}

uint64_t __38__FHDatabaseManager_sortGroupsByMode___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 transactionIds];
  v7 = [v6 count];

  v8 = [v5 transactionIds];
  v9 = [v8 count];

  if (v7 >= v9)
  {
    if (v7 > v9)
    {
      v10 = -1;
    }

    else
    {
      v11 = [v4 aggSimilarityScore];
      v12 = [v5 aggSimilarityScore];
      v13 = [v11 compare:v12];
      v10 = v13;
      if (!v13)
      {
        v14 = [v4 transactionIds];
        v15 = [v14 lastObject];

        v16 = [v5 transactionIds];
        v17 = [v16 lastObject];

        v10 = [v17 compare:v15];
      }
    }
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (id)predictAndPersistIncomeClassificationForAllGroups:(id)groups
{
  v32[2] = *MEMORY[0x277D85DE8];
  groupsCopy = groups;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy_;
  v30 = __Block_byref_object_dispose_;
  v31 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy_;
  v24 = __Block_byref_object_dispose_;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v5 = groupsCopy;
  v19 = v5;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __71__FHDatabaseManager_predictAndPersistIncomeClassificationForAllGroups___block_invoke;
  v13[3] = &unk_2785CB388;
  v13[4] = self;
  v13[5] = &v20;
  v13[6] = &v14;
  v13[7] = &v26;
  [(FHDatabaseManager *)self streamGenericSQLFetch:v13 predicate:0 sqlFetchQuery:@"select t_identifier, group_id from fh_grouping order by group_id", 0];
  if ([v27[5] count])
  {
    v6 = [(FHDatabaseManager *)self _predictAndPersistIncomeClassificationForGroupId:v21[5] transactionIds:v27[5] finHealthIncomeClassifier:v15[5]];
    v7 = v15[5];
    v15[5] = v6;
  }

  v8 = v15[5];

  if (v8)
  {
    modelName = [v8 modelName];
    v32[0] = modelName;
    modelVersion = [v8 modelVersion];
    v32[1] = modelVersion;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:2];
  }

  else
  {
    v11 = 0;
  }

  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);

  return v11;
}

void __71__FHDatabaseManager_predictAndPersistIncomeClassificationForAllGroups___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectAtIndex:0];
  v12 = [v4 stringValue];

  v5 = [v3 stringAtIndex:1];

  if (([v5 isEqualToString:*(*(*(a1 + 40) + 8) + 40)] & 1) == 0)
  {
    v6 = [*(a1 + 32) _predictAndPersistIncomeClassificationForGroupId:*(*(*(a1 + 40) + 8) + 40) transactionIds:*(*(*(a1 + 56) + 8) + 40) finHealthIncomeClassifier:*(*(*(a1 + 48) + 8) + 40)];
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v5);
    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v10 = *(*(a1 + 56) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  [*(*(*(a1 + 56) + 8) + 40) addObject:v12];
}

- (BOOL)insertModelPredictionLabel:(id)label modelVersion:(id)version label:(id)a5
{
  v8 = MEMORY[0x277CCACA8];
  v9 = a5;
  version = [v8 stringWithFormat:@"%@:%@", label, version];
  LOBYTE(label) = [(FHDatabaseManager *)self _execute:@"insert or replace into features_prediction_labels (feature_name, feature_predicted_class, smart_feature_name) values (%@, %d, %@)", version, 0, v9];

  return label;
}

- (id)_predictAndPersistIncomeClassificationForGroupId:(id)id transactionIds:(id)ids finHealthIncomeClassifier:(id)classifier
{
  v46 = *MEMORY[0x277D85DE8];
  idCopy = id;
  idsCopy = ids;
  classifierCopy = classifier;
  v29 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v28 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = idsCopy;
  v33 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v33)
  {
    v31 = *v41;
    do
    {
      for (i = 0; i != v33; ++i)
      {
        if (*v41 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v9 = [(FHDatabaseManager *)self getTransactionByIdentifier:*(*(&v40 + 1) + 8 * i)];
        identifier = [v9 identifier];
        transactionDescription = [v9 transactionDescription];
        transactionDate = [v9 transactionDate];
        amount = [v9 amount];
        [amount doubleValue];
        v13 = v12;

        accountType = [v9 accountType];
        transactionSourceIdentifier = [v9 transactionSourceIdentifier];
        v35 = [(FHDatabaseManager *)self getAccountCategoryForIdentifier:?];
        proprietaryBankTransactionIssuer = [v9 proprietaryBankTransactionIssuer];
        proprietaryBankTransactionCode = [v9 proprietaryBankTransactionCode];
        transactionType = [v9 transactionType];
        currencyCode = [v9 currencyCode];
        notANumber = [MEMORY[0x277CCA980] notANumber];
        v44[0] = notANumber;
        v18 = [MEMORY[0x277CCABB0] numberWithDouble:v13];
        v44[1] = v18;
        v19 = MEMORY[0x277CCABB0];
        [transactionDate timeIntervalSinceReferenceDate];
        v20 = [v19 numberWithDouble:?];
        v44[2] = v20;
        v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:3];

        if (checkIfIncomeCandidate(accountType, v35, proprietaryBankTransactionIssuer, proprietaryBankTransactionCode, transactionType, currencyCode, v13))
        {
          [v29 addObject:transactionDescription];
          [v28 setObject:v21 forKey:identifier];
        }
      }

      v33 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
    }

    while (v33);
  }

  if ([v28 count])
  {
    v22 = [v28 copy];
    v23 = [v29 copy];
    v24 = [FinHealthIncomeClassifier generateFeatures:v22 withDescriptions:v23];
    [(FHDatabaseManager *)self _predictAndPersistIncomeClassification:classifierCopy dataId:idCopy dataType:2 features:v24];
  }

  return classifierCopy;
}

- (BOOL)_predictAndPersistIncomeClassification:(id)classification dataId:(id)id dataType:(int64_t)type features:(id)features
{
  classificationCopy = classification;
  idCopy = id;
  if (features)
  {
    v12 = [classificationCopy incomeProbabilityWithMultiArray:features];
    if (v12)
    {
      v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
      modelName = [classificationCopy modelName];
      [v13 setObject:modelName forKey:@"modelName"];

      modelVersion = [classificationCopy modelVersion];
      [v13 setObject:modelVersion forKey:@"modelVersion"];

      [v13 setObject:idCopy forKey:@"dataIdentifier"];
      v16 = [MEMORY[0x277CCABB0] numberWithInteger:type];
      [v13 setObject:v16 forKey:@"dataType"];

      [v13 setObject:v12 forKey:@"predictedScore"];
      trialId = [classificationCopy trialId];
      [v13 setObject:trialId forKey:@"trialIdentifier"];

      v18 = [v13 copy];
      [(FHDatabaseManager *)self insertModelRecord:v18];

      [v12 doubleValue];
      v20 = v19 > 0.8;
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (id)retrieveGroups
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __35__FHDatabaseManager_retrieveGroups__block_invoke;
  v5[3] = &unk_2785CB310;
  v5[4] = &v6;
  [(FHDatabaseManager *)self streamGenericSQLFetch:v5 predicate:0 sqlFetchQuery:@"select t_identifier, group_id from fh_grouping order by group_id", 0];
  v3 = [v7[5] copy];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __35__FHDatabaseManager_retrieveGroups__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectAtIndex:0];
  v10 = [v4 stringValue];

  v5 = [v3 stringAtIndex:1];

  v6 = [*(*(*(a1 + 32) + 8) + 40) objectForKey:v5];

  if (v6)
  {
    v7 = [*(*(*(a1 + 32) + 8) + 40) objectForKey:v5];
    v8 = *(*(*(a1 + 32) + 8) + 40);
    v9 = [v7 arrayByAddingObject:v10];
    [v8 setObject:v9 forKey:v5];
  }

  else
  {
    v7 = [MEMORY[0x277CBEA60] arrayWithObject:v10];
    [*(*(*(a1 + 32) + 8) + 40) setObject:v7 forKey:v5];
  }
}

- (int64_t)getAccountCategoryForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [[FHDatabaseEntity alloc] initWithEntity:@"fh_account_information"];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = -1;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __53__FHDatabaseManager_getAccountCategoryForIdentifier___block_invoke;
  v10[3] = &unk_2785CB058;
  v5 = identifierCopy;
  v11 = v5;
  v6 = [FHDatabaseClauseFromBuilder initWithBuilder:v10];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __53__FHDatabaseManager_getAccountCategoryForIdentifier___block_invoke_2;
  v9[3] = &unk_2785CB080;
  v9[4] = &v12;
  [(FHDatabaseEntity *)v4 queryDataWithBlock:v6 logicalOperator:@"AND" limit:1 selectFields:&unk_283A88158 orderby:0 usingBlock:v9];
  v7 = v13[3];

  _Block_object_dispose(&v12, 8);
  return v7;
}

void *__53__FHDatabaseManager_getAccountCategoryForIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  result = [a2 intAtIndex:0];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (void)dealloc
{
  v11 = *MEMORY[0x277D85DE8];
  db = self->_db;
  if (db)
  {
    v8 = 0;
    [(PQLConnection *)db close:&v8];
    v4 = v8;
    v5 = FinHealthLogObject(@"FinHealthCore");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = [v4 description];
      *buf = 138412290;
      v10 = v6;
      _os_log_impl(&dword_226DD4000, v5, OS_LOG_TYPE_DEBUG, "db dealloced, %@", buf, 0xCu);
    }
  }

  v7.receiver = self;
  v7.super_class = FHDatabaseManager;
  [(FHDatabaseManager *)&v7 dealloc];
}

- (FHFetchAllTransactionsDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end