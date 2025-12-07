@interface HDHRHeartCLogEntity
+ (BOOL)_enumerateJournalsWithPredicate:(id)predicate limit:(unint64_t)limit orderingTerms:(id)terms transaction:(id)transaction error:(id *)error enumerationHandler:(id)handler;
+ (BOOL)_insertTimeIntervals:(id)intervals journalPrimaryKey:(id)key transaction:(id)transaction error:(id *)error;
+ (BOOL)insertBloodPressureJournal:(id)journal profile:(id)profile transaction:(id)transaction error:(id *)error;
+ (id)_insertJournal:(id)journal transaction:(id)transaction error:(id *)error;
+ (id)_journalEntityProperties;
+ (id)_journalFromRow:(HDSQLiteRow *)row persistentID:(int64_t)d transaction:(id)transaction error:(id *)error;
+ (id)privateSubEntities;
@end

@implementation HDHRHeartCLogEntity

+ (id)_journalEntityProperties
{
  v4[7] = *MEMORY[0x277D85DE8];
  v4[0] = @"uuid";
  v4[1] = @"start_date";
  v4[2] = @"end_date";
  v4[3] = @"modified_date";
  v4[4] = @"c_log_type";
  v4[5] = @"schedule_type";
  v4[6] = @"c_log_state";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:7];

  return v2;
}

+ (id)_journalFromRow:(HDSQLiteRow *)row persistentID:(int64_t)d transaction:(id)transaction error:(id *)error
{
  v36 = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  v8 = HDSQLiteColumnWithNameAsUUID();
  v9 = HDSQLiteColumnWithNameAsDate();
  v10 = HDSQLiteColumnWithNameAsDate();
  HDSQLiteColumnWithNameAsDouble();
  v12 = v11;
  v13 = HDSQLiteColumnWithNameAsInt64();
  v14 = HDSQLiteColumnWithNameAsInt64();
  v15 = HDSQLiteColumnWithNameAsInt64();
  v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v29 = 0;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __70__HDHRHeartCLogEntity__journalFromRow_persistentID_transaction_error___block_invoke;
  v27[3] = &unk_27865FA08;
  v17 = v16;
  v28 = v17;
  v18 = [HDHRHeartCLogScheduleTimeIntervalEntity enumerateJournalScheduleIntervalWithOwnerID:d transaction:transactionCopy error:&v29 enumerationHandler:v27];

  v19 = v29;
  if (v18)
  {
    v20 = [objc_alloc(MEMORY[0x277D12F70]) initWithUUID:v8 startDate:v9 endDate:v10 timestamp:v13 journalType:v14 scheduleType:v15 journalState:v12 timeIntervals:v17];
  }

  else
  {
    _HKInitializeLogging();
    v21 = HKLogBloodPressureJournal();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      selfCopy = self;
      v32 = 2114;
      v33 = v8;
      v34 = 2114;
      v35 = v19;
      _os_log_error_impl(&dword_229486000, v21, OS_LOG_TYPE_ERROR, "%{public}@: Failed to fetch intervals for journal UUID: %{public}@ error: %{public}@", buf, 0x20u);
    }

    v22 = v19;
    if (v22)
    {
      if (error)
      {
        v23 = v22;
        *error = v22;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v20 = 0;
  }

  return v20;
}

+ (id)privateSubEntities
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

+ (BOOL)_enumerateJournalsWithPredicate:(id)predicate limit:(unint64_t)limit orderingTerms:(id)terms transaction:(id)transaction error:(id *)error enumerationHandler:(id)handler
{
  transactionCopy = transaction;
  handlerCopy = handler;
  termsCopy = terms;
  predicateCopy = predicate;
  v18 = [transactionCopy databaseForEntityClass:self];
  v19 = [self queryWithDatabase:v18 predicate:predicateCopy limit:limit orderingTerms:termsCopy groupBy:0];

  _journalEntityProperties = [self _journalEntityProperties];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __112__HDHRHeartCLogEntity__enumerateJournalsWithPredicate_limit_orderingTerms_transaction_error_enumerationHandler___block_invoke;
  v24[3] = &unk_27865FAF0;
  v26 = handlerCopy;
  selfCopy = self;
  v25 = transactionCopy;
  v21 = handlerCopy;
  v22 = transactionCopy;
  LOBYTE(error) = [v19 enumeratePersistentIDsAndProperties:_journalEntityProperties error:error enumerationHandler:v24];

  return error;
}

uint64_t __112__HDHRHeartCLogEntity__enumerateJournalsWithPredicate_limit_orderingTerms_transaction_error_enumerationHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = [*(a1 + 48) _journalFromRow:a4 persistentID:a2 transaction:*(a1 + 32) error:a5];
  if (v6)
  {
    v7 = (*(*(a1 + 40) + 16))();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (BOOL)insertBloodPressureJournal:(id)journal profile:(id)profile transaction:(id)transaction error:(id *)error
{
  journalCopy = journal;
  transactionCopy = transaction;
  v11 = [self _insertJournal:journalCopy transaction:transactionCopy error:error];
  if (v11)
  {
    timeIntervals = [journalCopy timeIntervals];
    v13 = [self _insertTimeIntervals:timeIntervals journalPrimaryKey:v11 transaction:transactionCopy error:error];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)_insertJournal:(id)journal transaction:(id)transaction error:(id *)error
{
  v30 = *MEMORY[0x277D85DE8];
  journalCopy = journal;
  protectedDatabase = [transaction protectedDatabase];
  _journalEntityProperties = [self _journalEntityProperties];
  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = __56__HDHRHeartCLogEntity__insertJournal_transaction_error___block_invoke;
  v24 = &unk_27865FB18;
  v25 = journalCopy;
  v11 = journalCopy;
  v12 = [self insertOrReplaceEntity:1 database:protectedDatabase properties:_journalEntityProperties error:error bindingHandler:&v21];

  if (!v12)
  {
    _HKInitializeLogging();
    v17 = HKLogBloodPressureJournal();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy2 = self;
      _os_log_impl(&dword_229486000, v17, OS_LOG_TYPE_DEFAULT, "[%{public}@] Did not successfully insert journal", buf, 0xCu);
    }

    goto LABEL_10;
  }

  if ([protectedDatabase getChangesCount] < 1)
  {
    v18 = MEMORY[0x277CCA9B8];
    uUID = [v11 UUID];
    [v18 hk_assignError:error code:124 format:{@"Could not insert journal with UUID %@", uUID, v21, v22, v23, v24, v25}];

LABEL_10:
    lastInsertRowID2 = 0;
    goto LABEL_11;
  }

  _HKInitializeLogging();
  v13 = HKLogBloodPressureJournal();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    lastInsertRowID = [protectedDatabase lastInsertRowID];
    longLongValue = [lastInsertRowID longLongValue];
    *buf = 138543618;
    selfCopy2 = self;
    v28 = 2050;
    v29 = longLongValue;
    _os_log_impl(&dword_229486000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] Inserted journal with persistent ID: %{public}lld", buf, 0x16u);
  }

  lastInsertRowID2 = [protectedDatabase lastInsertRowID];
LABEL_11:

  return lastInsertRowID2;
}

void __56__HDHRHeartCLogEntity__insertJournal_transaction_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) UUID];
  MEMORY[0x22AACD1F0](a2, @"uuid", v4);

  v5 = [*(a1 + 32) startDate];
  MEMORY[0x22AACD190](a2, @"start_date", v5);

  v6 = [*(a1 + 32) endDate];
  MEMORY[0x22AACD190](a2, @"end_date", v6);

  [*(a1 + 32) timestamp];
  MEMORY[0x22AACD1A0](a2, @"modified_date");
  MEMORY[0x22AACD1B0](a2, @"c_log_type", [*(a1 + 32) journalType]);
  MEMORY[0x22AACD1B0](a2, @"schedule_type", [*(a1 + 32) scheduleType]);
  [*(a1 + 32) journalState];

  JUMPOUT(0x22AACD1B0);
}

+ (BOOL)_insertTimeIntervals:(id)intervals journalPrimaryKey:(id)key transaction:(id)transaction error:(id *)error
{
  v26 = *MEMORY[0x277D85DE8];
  intervalsCopy = intervals;
  keyCopy = key;
  transactionCopy = transaction;
  v12 = [transactionCopy databaseForEntityClass:objc_opt_class()];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v13 = intervalsCopy;
  v14 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v22;
    while (2)
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [HDHRHeartCLogScheduleTimeIntervalEntity insertJournalScheduleInterval:*(*(&v21 + 1) + 8 * i) ownerID:keyCopy database:v12 error:error, v21];

        if (!v18)
        {
          v19 = 0;
          goto LABEL_11;
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  v19 = 1;
LABEL_11:

  return v19;
}

@end