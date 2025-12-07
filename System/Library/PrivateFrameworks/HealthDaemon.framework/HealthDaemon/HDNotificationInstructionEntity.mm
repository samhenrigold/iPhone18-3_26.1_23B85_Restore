@interface HDNotificationInstructionEntity
+ (BOOL)attemptProtectedReadTransactionWithUnprotectedFallbackWithHealthDatabase:(id)database error:(id *)error block:(id)block;
+ (BOOL)enumerateAllNotificationInstructionsWithTransaction:(id)transaction predicate:(id)predicate limit:(unint64_t)limit ascending:(BOOL)ascending error:(id *)error enumerationHandler:(id)handler;
+ (BOOL)enumerateNotificationInstructionsWithClientIdentifier:(id)identifier action:(int64_t)action notExpiredBeforeDate:(id)date transaction:(id)transaction error:(id *)error enumerationHandler:(id)handler;
+ (BOOL)enumerateNotificationInstructionsWithSetCriteriaNotExpiredBeforeDate:(id)date transaction:(id)transaction limit:(unint64_t)limit error:(id *)error enumerationHandler:(id)handler;
+ (BOOL)insertOrIgnoreNotificationInstruction:(id)instruction transaction:(id)transaction error:(id *)error;
+ (BOOL)invalidateNotificationInstructionWithMessageIdentifier:(id)identifier modificationDate:(id)date transaction:(id)transaction error:(id *)error;
+ (BOOL)obliterateNotificationInstructionsWithTransaction:(id)transaction error:(id *)error;
+ (id)pruneWithProfile:(id)profile nowDate:(id)date limit:(unint64_t)limit error:(id *)error;
@end

@implementation HDNotificationInstructionEntity

+ (BOOL)attemptProtectedReadTransactionWithUnprotectedFallbackWithHealthDatabase:(id)database error:(id *)error block:(id)block
{
  databaseCopy = database;
  blockCopy = block;
  v10 = [(HDHealthEntity *)HDDataEntity transactionContextForWriting:0 baseContext:0];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __120__HDNotificationInstructionEntity_attemptProtectedReadTransactionWithUnprotectedFallbackWithHealthDatabase_error_block___block_invoke;
  v14[3] = &unk_27861EF40;
  v16 = blockCopy;
  selfCopy = self;
  v15 = databaseCopy;
  v11 = blockCopy;
  v12 = databaseCopy;
  LOBYTE(error) = [v12 performTransactionWithContext:v10 error:error block:v11 inaccessibilityHandler:v14];

  return error;
}

uint64_t __120__HDNotificationInstructionEntity_attemptProtectedReadTransactionWithUnprotectedFallbackWithHealthDatabase_error_block___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = [*(a1 + 48) transactionContextForWriting:0 baseContext:0];
  v7 = [v5 performTransactionWithContext:v6 error:a3 block:*(a1 + 40) inaccessibilityHandler:0];

  return v7;
}

+ (BOOL)enumerateNotificationInstructionsWithClientIdentifier:(id)identifier action:(int64_t)action notExpiredBeforeDate:(id)date transaction:(id)transaction error:(id *)error enumerationHandler:(id)handler
{
  v29[4] = *MEMORY[0x277D85DE8];
  v26 = MEMORY[0x277D10B20];
  v12 = MEMORY[0x277D10B18];
  v13 = MEMORY[0x277CCABB0];
  handlerCopy = handler;
  transactionCopy = transaction;
  dateCopy = date;
  identifierCopy = identifier;
  v18 = [v13 numberWithInteger:action];
  v19 = [v12 predicateWithProperty:@"action" equalToValue:v18];
  v29[0] = v19;
  v20 = [MEMORY[0x277D10B18] predicateWithProperty:@"client_identifier" equalToValue:identifierCopy];

  v29[1] = v20;
  v21 = HDNotificationInstructionPredicateForIsValid(1);
  v29[2] = v21;
  v22 = [MEMORY[0x277D10B18] predicateWithProperty:@"expiration_date" greaterThanOrEqualToValue:dateCopy];

  v29[3] = v22;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:4];
  v24 = [v26 predicateMatchingAllPredicates:v23];

  LOBYTE(v23) = [self enumerateAllNotificationInstructionsWithTransaction:transactionCopy predicate:v24 limit:0 ascending:1 error:error enumerationHandler:handlerCopy];
  return v23;
}

+ (BOOL)enumerateNotificationInstructionsWithSetCriteriaNotExpiredBeforeDate:(id)date transaction:(id)transaction limit:(unint64_t)limit error:(id *)error enumerationHandler:(id)handler
{
  v23[3] = *MEMORY[0x277D85DE8];
  v12 = MEMORY[0x277D10B20];
  v13 = MEMORY[0x277D10B60];
  handlerCopy = handler;
  transactionCopy = transaction;
  dateCopy = date;
  v17 = [v13 isNotNullPredicateWithProperty:@"criteria"];
  v18 = HDNotificationInstructionPredicateForIsValid(1);
  v19 = [MEMORY[0x277D10B18] predicateWithProperty:@"expiration_date" greaterThanOrEqualToValue:{dateCopy, v17, v18}];

  v23[2] = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:3];
  v21 = [v12 predicateMatchingAllPredicates:v20];

  LOBYTE(error) = [self enumerateAllNotificationInstructionsWithTransaction:transactionCopy predicate:v21 limit:limit ascending:1 error:error enumerationHandler:handlerCopy];
  return error;
}

+ (BOOL)enumerateAllNotificationInstructionsWithTransaction:(id)transaction predicate:(id)predicate limit:(unint64_t)limit ascending:(BOOL)ascending error:(id *)error enumerationHandler:(id)handler
{
  ascendingCopy = ascending;
  v27[12] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  predicateCopy = predicate;
  v16 = [transaction databaseForEntityClass:self];
  v17 = [MEMORY[0x277D10B68] orderingTermWithProperty:*MEMORY[0x277D10A40] entityClass:self ascending:ascendingCopy];
  v26 = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
  v19 = [self queryWithDatabase:v16 predicate:predicateCopy limit:limit orderingTerms:v18 groupBy:0];

  v27[0] = @"action";
  v27[1] = @"category_identifier";
  v27[2] = @"client_identifier";
  v27[3] = @"criteria";
  v27[4] = @"creation_date";
  v27[5] = @"expiration_date";
  v27[6] = @"is_invalid";
  v27[7] = @"message_identifier";
  v27[8] = @"modification_date";
  v27[9] = @"received_date";
  v27[10] = @"sending_device_info";
  v27[11] = @"sending_device_name";
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:12];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __138__HDNotificationInstructionEntity_enumerateAllNotificationInstructionsWithTransaction_predicate_limit_ascending_error_enumerationHandler___block_invoke;
  v23[3] = &unk_278618B48;
  v24 = handlerCopy;
  selfCopy = self;
  v21 = handlerCopy;
  LOBYTE(error) = [v19 enumerateProperties:v20 error:error enumerationHandler:v23];

  return error;
}

uint64_t __138__HDNotificationInstructionEntity_enumerateAllNotificationInstructionsWithTransaction_predicate_limit_ascending_error_enumerationHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  objc_opt_self();
  v19 = HDSQLiteColumnWithNameAsInt64();
  v18 = HDSQLiteColumnWithNameAsString();
  v17 = HDSQLiteColumnWithNameAsString();
  v3 = HDSQLiteColumnWithNameAsDate();
  objc_opt_class();
  v16 = HDSQLiteColumnWithNameAsObject();
  v4 = HDSQLiteColumnWithNameAsDate();
  v5 = HDSQLiteColumnWithNameAsBoolean();
  v6 = HDSQLiteColumnWithNameAsString();
  v7 = HDSQLiteColumnWithNameAsDate();
  v8 = HDSQLiteColumnWithNameAsDate();
  v9 = HDSQLiteColumnWithNameAsString();
  v10 = HDSQLiteColumnWithNameAsString();
  LOBYTE(v15) = v5;
  v11 = v3;
  v12 = [[HDNotificationInstruction alloc] initWithMessageIdentifier:v6 creationDate:v3 receivedDate:v8 modificationDate:v7 sendingDeviceName:v10 sendingDeviceInfo:v9 action:v19 clientIdentifier:v17 categoryIdentifier:v18 expirationDate:v4 criteria:v16 isInvalid:v15];

  v13 = (*(*(a1 + 32) + 16))();
  return v13;
}

+ (BOOL)insertOrIgnoreNotificationInstruction:(id)instruction transaction:(id)transaction error:(id *)error
{
  instructionCopy = instruction;
  v9 = [transaction databaseForEntityClass:self];
  v13 = instructionCopy;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __91__HDNotificationInstructionEntity_insertOrIgnoreNotificationInstruction_transaction_error___block_invoke;
  v14[3] = &__block_descriptor_40_e15___NSString_8__0l;
  v14[4] = self;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __91__HDNotificationInstructionEntity_insertOrIgnoreNotificationInstruction_transaction_error___block_invoke_2;
  v12[3] = &unk_278614860;
  v10 = instructionCopy;
  LOBYTE(error) = [v9 executeCachedStatementForKey:&insertOrIgnoreNotificationInstruction_transaction_error__lookupKey error:error SQLGenerator:v14 bindingHandler:v12 enumerationHandler:0];

  return error;
}

id __91__HDNotificationInstructionEntity_insertOrIgnoreNotificationInstruction_transaction_error___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = [*(a1 + 32) disambiguatedDatabaseTable];
  v3 = [v1 stringWithFormat:@"INSERT OR IGNORE INTO %@ (%@, %@, %@, %@, %@, %@, %@, %@, %@, %@, %@, %@) VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)", v2, @"action", @"category_identifier", @"client_identifier", @"creation_date", @"criteria", @"expiration_date", @"is_invalid", @"message_identifier", @"modification_date", @"received_date", @"sending_device_info", @"sending_device_name"];

  return v3;
}

void __91__HDNotificationInstructionEntity_insertOrIgnoreNotificationInstruction_transaction_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = [*(a1 + 32) criteria];
  if (v4)
  {
    v5 = MEMORY[0x277CCAAB0];
    v6 = [*(a1 + 32) criteria];
    v16 = [v5 archivedDataWithRootObject:v6 requiringSecureCoding:1 error:0];
  }

  else
  {
    v16 = 0;
  }

  sqlite3_bind_int64(a2, 1, [*(a1 + 32) action]);
  v7 = [*(a1 + 32) categoryIdentifier];
  HDSQLiteBindFoundationValueToStatement();

  v8 = [*(a1 + 32) clientIdentifier];
  HDSQLiteBindFoundationValueToStatement();

  v9 = [*(a1 + 32) creationDate];
  HDSQLiteBindFoundationValueToStatement();

  HDSQLiteBindFoundationValueToStatement();
  v10 = [*(a1 + 32) expirationDate];
  HDSQLiteBindFoundationValueToStatement();

  sqlite3_bind_int(a2, 7, [*(a1 + 32) isInvalid]);
  v11 = [*(a1 + 32) messageIdentifier];
  HDSQLiteBindFoundationValueToStatement();

  v12 = [*(a1 + 32) modificationDate];
  HDSQLiteBindFoundationValueToStatement();

  v13 = [*(a1 + 32) receivedDate];
  HDSQLiteBindFoundationValueToStatement();

  v14 = [*(a1 + 32) sendingDeviceInfo];
  HDSQLiteBindFoundationValueToStatement();

  v15 = [*(a1 + 32) sendingDeviceName];
  HDSQLiteBindFoundationValueToStatement();
}

+ (BOOL)invalidateNotificationInstructionWithMessageIdentifier:(id)identifier modificationDate:(id)date transaction:(id)transaction error:(id *)error
{
  identifierCopy = identifier;
  dateCopy = date;
  v12 = [transaction databaseForEntityClass:self];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __125__HDNotificationInstructionEntity_invalidateNotificationInstructionWithMessageIdentifier_modificationDate_transaction_error___block_invoke;
  v19[3] = &__block_descriptor_40_e15___NSString_8__0l;
  v19[4] = self;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __125__HDNotificationInstructionEntity_invalidateNotificationInstructionWithMessageIdentifier_modificationDate_transaction_error___block_invoke_2;
  v16[3] = &unk_278613038;
  v17 = dateCopy;
  v18 = identifierCopy;
  v13 = identifierCopy;
  v14 = dateCopy;
  LOBYTE(error) = [v12 executeCachedStatementForKey:&invalidateNotificationInstructionWithMessageIdentifier_modificationDate_transaction_error__lookupKey error:error SQLGenerator:v19 bindingHandler:v16 enumerationHandler:0];

  return error;
}

id __125__HDNotificationInstructionEntity_invalidateNotificationInstructionWithMessageIdentifier_modificationDate_transaction_error___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = [*(a1 + 32) disambiguatedDatabaseTable];
  v3 = [v1 stringWithFormat:@"UPDATE %@ SET %@ = ?, %@ = ? WHERE %@ = ?", v2, @"is_invalid", @"modification_date", @"message_identifier"];

  return v3;
}

uint64_t __125__HDNotificationInstructionEntity_invalidateNotificationInstructionWithMessageIdentifier_modificationDate_transaction_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, 1);
  HDSQLiteBindFoundationValueToStatement();

  return HDSQLiteBindStringToStatement();
}

+ (BOOL)obliterateNotificationInstructionsWithTransaction:(id)transaction error:(id *)error
{
  v7 = [transaction databaseForEntityClass:self];
  if (!v7)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDNotificationInstructionEntity.m" lineNumber:247 description:{@"Invalid parameter not satisfying: %@", @"database != nil"}];
  }

  v8 = objc_alloc_init(MEMORY[0x277D10B80]);
  [v8 setEntityClass:self];
  [v8 setLimitCount:*MEMORY[0x277D10C08]];
  v9 = [objc_alloc(MEMORY[0x277D10B78]) initWithDatabase:v7 descriptor:v8];
  v10 = [v9 deleteAllEntitiesWithError:error];

  return v10;
}

+ (id)pruneWithProfile:(id)profile nowDate:(id)date limit:(unint64_t)limit error:(id *)error
{
  profileCopy = profile;
  dateCopy = date;
  hk_gregorianCalendar = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
  v13 = [hk_gregorianCalendar dateByAddingUnit:0x2000 value:-1 toDate:dateCopy options:0];

  v14 = [MEMORY[0x277D10B18] predicateWithProperty:@"expiration_date" lessThanValue:v13];
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  database = [profileCopy database];
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __72__HDNotificationInstructionEntity_pruneWithProfile_nowDate_limit_error___block_invoke;
  v22 = &unk_27861F0A0;
  selfCopy = self;
  v16 = v14;
  limitCopy = limit;
  v23 = v16;
  v24 = &v27;
  LODWORD(error) = [self performWriteTransactionWithHealthDatabase:database error:error block:&v19];

  if (error)
  {
    v17 = [MEMORY[0x277CCABB0] numberWithInt:{*(v28 + 6), v19, v20, v21, v22}];
  }

  else
  {
    v17 = 0;
  }

  _Block_object_dispose(&v27, 8);

  return v17;
}

uint64_t __72__HDNotificationInstructionEntity_pruneWithProfile_nowDate_limit_error___block_invoke(void *a1, void *a2, uint64_t a3)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = [a2 databaseForEntityClass:a1[6]];
  v6 = a1[4];
  v7 = a1[6];
  v8 = a1[7];
  v9 = [MEMORY[0x277D10B68] orderingTermWithProperty:*MEMORY[0x277D10A40] entityClass:v7 ascending:1];
  v14[0] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v11 = [v7 queryWithDatabase:v5 predicate:v6 limit:v8 orderingTerms:v10 groupBy:0];

  v12 = [v11 deleteAllEntitiesWithError:a3];
  *(*(a1[5] + 8) + 24) = [v5 getChangesCount];

  return v12;
}

@end