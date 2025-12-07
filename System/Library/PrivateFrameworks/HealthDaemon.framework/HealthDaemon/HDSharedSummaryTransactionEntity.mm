@interface HDSharedSummaryTransactionEntity
+ (BOOL)deleteAllEntriesWithDatabaseTransaction:(id)transaction error:(id *)error;
+ (BOOL)enumerateTransactionsWithDatabaseTransaction:(id)transaction includeNonCommitted:(BOOL)committed error:(id *)error enumerationHandler:(id)handler;
+ (id)insertWithUUID:(id)d sourceDevice:(id)device databaseTransaction:(id)transaction error:(id *)error;
+ (id)mostRecentTransactionCreationDateWithDatabaseTransaction:(id)transaction error:(id *)error;
+ (id)pruneWithProfile:(id)profile nowDate:(id)date limit:(unint64_t)limit error:(id *)error;
+ (id)transactionEntityWithUUID:(id)d databaseTransaction:(id)transaction error:(id *)error;
- (BOOL)committedInDatabaseTransaction:(id)transaction error:(id *)error;
- (BOOL)deleteWithDatabaseTransaction:(id)transaction error:(id *)error;
- (BOOL)setCommitted:(BOOL)committed databaseTransaction:(id)transaction error:(id *)error;
- (id)uuidInDatabaseTransaction:(id)transaction error:(id *)error;
@end

@implementation HDSharedSummaryTransactionEntity

+ (id)insertWithUUID:(id)d sourceDevice:(id)device databaseTransaction:(id)transaction error:(id *)error
{
  v21[4] = *MEMORY[0x277D85DE8];
  dCopy = d;
  deviceCopy = device;
  v12 = [transaction databaseForEntityClass:self];
  v21[0] = @"uuid";
  v21[1] = @"source_device";
  v21[2] = @"committed";
  v21[3] = @"creation_date";
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:4];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __90__HDSharedSummaryTransactionEntity_insertWithUUID_sourceDevice_databaseTransaction_error___block_invoke;
  v18[3] = &unk_278613DE8;
  v19 = dCopy;
  v20 = deviceCopy;
  v14 = deviceCopy;
  v15 = dCopy;
  v16 = [self insertOrReplaceEntity:0 database:v12 properties:v13 error:error bindingHandler:v18];

  return v16;
}

void __90__HDSharedSummaryTransactionEntity_insertWithUUID_sourceDevice_databaseTransaction_error___block_invoke(uint64_t a1, uint64_t a2)
{
  MEMORY[0x22AAC6C00](a2, @"uuid", *(a1 + 32));
  MEMORY[0x22AAC6BD0](a2, @"source_device", *(a1 + 40));
  MEMORY[0x22AAC6B30](a2, @"committed", 0);
  v4 = [MEMORY[0x277CBEAA8] date];
  MEMORY[0x22AAC6B50](a2, @"creation_date", v4);
}

+ (BOOL)enumerateTransactionsWithDatabaseTransaction:(id)transaction includeNonCommitted:(BOOL)committed error:(id *)error enumerationHandler:(id)handler
{
  transactionCopy = transaction;
  handlerCopy = handler;
  if (committed)
  {
    v12 = 0;
  }

  else
  {
    v12 = [MEMORY[0x277D10B18] predicateWithProperty:@"committed" equalToValue:MEMORY[0x277CBEC38]];
  }

  v13 = [transactionCopy databaseForEntityClass:objc_opt_class()];
  v14 = [self queryWithDatabase:v13 predicate:v12];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __126__HDSharedSummaryTransactionEntity_enumerateTransactionsWithDatabaseTransaction_includeNonCommitted_error_enumerationHandler___block_invoke;
  v18[3] = &unk_278616A78;
  v19 = handlerCopy;
  v15 = handlerCopy;
  v16 = [v14 enumeratePersistentIDsAndProperties:MEMORY[0x277CBEBF8] error:error enumerationHandler:v18];

  return v16;
}

uint64_t __126__HDSharedSummaryTransactionEntity_enumerateTransactionsWithDatabaseTransaction_includeNonCommitted_error_enumerationHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x277CCABB0] numberWithLongLong:a2];
  v4 = [(HDSQLiteEntity *)HDSharedSummaryTransactionEntity entityWithPersistentID:v3];

  (*(*(a1 + 32) + 16))();
  return 1;
}

+ (id)transactionEntityWithUUID:(id)d databaseTransaction:(id)transaction error:(id *)error
{
  dCopy = d;
  v9 = [transaction databaseForEntityClass:self];
  v10 = [MEMORY[0x277D10B18] predicateWithProperty:@"uuid" equalToValue:dCopy];

  v11 = [self anyInDatabase:v9 predicate:v10 error:error];

  return v11;
}

+ (id)mostRecentTransactionCreationDateWithDatabaseTransaction:(id)transaction error:(id *)error
{
  transactionCopy = transaction;
  v7 = objc_alloc(MEMORY[0x277CCACA8]);
  databaseTable = [self databaseTable];
  v9 = [v7 initWithFormat:@"SELECT MAX(%@) FROM %@", @"creation_date", databaseTable];

  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__27;
  v18 = __Block_byref_object_dispose__27;
  v19 = 0;
  v10 = [transactionCopy databaseForEntityClass:self];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __99__HDSharedSummaryTransactionEntity_mostRecentTransactionCreationDateWithDatabaseTransaction_error___block_invoke;
  v13[3] = &unk_278614620;
  v13[4] = &v14;
  LOBYTE(error) = [v10 executeSQL:v9 error:error bindingHandler:0 enumerationHandler:v13];

  if (error)
  {
    v11 = v15[5];
  }

  else
  {
    v11 = 0;
  }

  _Block_object_dispose(&v14, 8);

  return v11;
}

uint64_t __99__HDSharedSummaryTransactionEntity_mostRecentTransactionCreationDateWithDatabaseTransaction_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x22AAC6C40](a2, 0);
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return 1;
}

+ (BOOL)deleteAllEntriesWithDatabaseTransaction:(id)transaction error:(id *)error
{
  transactionCopy = transaction;
  v6 = objc_opt_class();
  protectedDatabase = [transactionCopy protectedDatabase];

  v8 = [v6 queryWithDatabase:protectedDatabase predicate:0];

  LOBYTE(error) = [v8 deleteAllEntitiesWithError:error];
  return error;
}

- (BOOL)deleteWithDatabaseTransaction:(id)transaction error:(id *)error
{
  v6 = MEMORY[0x277D10B18];
  v7 = *MEMORY[0x277D10A40];
  v8 = MEMORY[0x277CCABB0];
  transactionCopy = transaction;
  v10 = [v8 numberWithLongLong:{-[HDSQLiteEntity persistentID](self, "persistentID")}];
  v11 = [v6 predicateWithProperty:v7 equalToValue:v10];

  v12 = [transactionCopy databaseForEntityClass:objc_opt_class()];

  LOBYTE(error) = [objc_opt_class() deleteEntitiesInDatabase:v12 predicate:v11 error:error];
  return error;
}

- (id)uuidInDatabaseTransaction:(id)transaction error:(id *)error
{
  transactionCopy = transaction;
  v6 = [transactionCopy databaseForEntityClass:objc_opt_class()];

  v7 = [(HDSQLiteEntity *)self UUIDForProperty:@"uuid" database:v6];

  return v7;
}

- (BOOL)setCommitted:(BOOL)committed databaseTransaction:(id)transaction error:(id *)error
{
  committedCopy = committed;
  v8 = MEMORY[0x277CCABB0];
  transactionCopy = transaction;
  v10 = [v8 numberWithBool:committedCopy];
  LOBYTE(error) = [(HDHealthEntity *)self setNumber:v10 forProperty:@"committed" transaction:transactionCopy error:error];

  return error;
}

- (BOOL)committedInDatabaseTransaction:(id)transaction error:(id *)error
{
  v4 = [(HDHealthEntity *)self numberForProperty:@"committed" transaction:transaction error:error];
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

+ (id)pruneWithProfile:(id)profile nowDate:(id)date limit:(unint64_t)limit error:(id *)error
{
  profileCopy = profile;
  dateCopy = date;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  database = [profileCopy database];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __73__HDSharedSummaryTransactionEntity_pruneWithProfile_nowDate_limit_error___block_invoke;
  v15[3] = &unk_278616AA0;
  selfCopy = self;
  v12 = dateCopy;
  v16 = v12;
  v17 = &v19;
  LODWORD(error) = [self performWriteTransactionWithHealthDatabase:database error:error block:v15];

  if (error)
  {
    v13 = [MEMORY[0x277CCABB0] numberWithInt:*(v20 + 6)];
  }

  else
  {
    v13 = 0;
  }

  _Block_object_dispose(&v19, 8);

  return v13;
}

BOOL __73__HDSharedSummaryTransactionEntity_pruneWithProfile_nowDate_limit_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21[2] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [v5 databaseForEntityClass:objc_opt_class()];

  v7 = [*(a1 + 32) dateByAddingTimeInterval:-1209600.0];
  v8 = [MEMORY[0x277D10B18] predicateWithProperty:@"committed" equalToValue:MEMORY[0x277CBEC28]];
  v9 = [MEMORY[0x277D10B18] predicateWithProperty:@"creation_date" lessThanValue:v7];
  v10 = MEMORY[0x277D10B20];
  v21[0] = v8;
  v21[1] = v9;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
  v12 = [v10 predicateMatchingAllPredicates:v11];

  v20 = 0;
  v13 = [objc_opt_class() deleteEntitiesInDatabase:v6 predicate:v12 error:&v20];
  v14 = v20;
  v15 = v14;
  if (v13)
  {
    *(*(*(a1 + 40) + 8) + 24) = [v6 getChangesCount];
    v16 = 1;
  }

  else
  {
    v17 = v14;
    v16 = v17 == 0;
    if (v17)
    {
      if (a3)
      {
        v18 = v17;
        *a3 = v17;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  return v16;
}

@end