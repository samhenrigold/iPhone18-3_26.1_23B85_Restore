@interface HDWorkoutSessionControllerEntity
+ (BOOL)retrieveArchivedStateFromRecoveryIdentifier:(id)identifier workoutSession:(id)session transaction:(id)transaction error:(id *)error block:(id)block;
+ (BOOL)storeArchivedStateWithRecoveryIdentifier:(id)identifier archivedState:(id)state workoutSession:(id)session transaction:(id)transaction error:(id *)error;
+ (id)foreignKeys;
+ (id)uniquedColumns;
@end

@implementation HDWorkoutSessionControllerEntity

+ (id)foreignKeys
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"workout_session_id";
  v2 = +[(HDHealthEntity *)HDWorkoutSessionEntity];
  v6[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

+ (id)uniquedColumns
{
  v4[2] = *MEMORY[0x277D85DE8];
  v4[0] = @"workout_session_id";
  v4[1] = @"recovery_identifier";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:2];

  return v2;
}

+ (BOOL)storeArchivedStateWithRecoveryIdentifier:(id)identifier archivedState:(id)state workoutSession:(id)session transaction:(id)transaction error:(id *)error
{
  v28[3] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  stateCopy = state;
  sessionCopy = session;
  v28[0] = @"workout_session_id";
  v28[1] = @"recovery_identifier";
  v28[2] = @"archived_state";
  v15 = MEMORY[0x277CBEA60];
  transactionCopy = transaction;
  v17 = [v15 arrayWithObjects:v28 count:3];
  v18 = [transactionCopy databaseForEntityClass:self];

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __124__HDWorkoutSessionControllerEntity_storeArchivedStateWithRecoveryIdentifier_archivedState_workoutSession_transaction_error___block_invoke;
  v24[3] = &unk_278624170;
  v25 = sessionCopy;
  v26 = identifierCopy;
  v27 = stateCopy;
  v19 = stateCopy;
  v20 = identifierCopy;
  v21 = sessionCopy;
  v22 = [self insertOrReplaceEntity:1 database:v18 properties:v17 error:error bindingHandler:v24];

  return v22 != 0;
}

void __124__HDWorkoutSessionControllerEntity_storeArchivedStateWithRecoveryIdentifier_archivedState_workoutSession_transaction_error___block_invoke(uint64_t a1, uint64_t a2)
{
  MEMORY[0x22AAC6B90](a2, @"workout_session_id", [*(a1 + 32) persistentID]);
  MEMORY[0x22AAC6BD0](a2, @"recovery_identifier", *(a1 + 40));

  JUMPOUT(0x22AAC6B40);
}

+ (BOOL)retrieveArchivedStateFromRecoveryIdentifier:(id)identifier workoutSession:(id)session transaction:(id)transaction error:(id *)error block:(id)block
{
  v36[2] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  blockCopy = block;
  transactionCopy = transaction;
  sessionCopy = session;
  v16 = identifierCopy;
  objc_opt_self();
  v17 = [MEMORY[0x277D10B18] predicateWithProperty:@"recovery_identifier" equalToValue:v16];

  v18 = MEMORY[0x277D10B18];
  v19 = MEMORY[0x277CCABB0];
  persistentID = [sessionCopy persistentID];

  v21 = [v19 numberWithLongLong:persistentID];
  v22 = [v18 predicateWithProperty:@"workout_session_id" equalToValue:v21];

  v23 = MEMORY[0x277D10B20];
  v36[0] = v17;
  v36[1] = v22;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:2];
  v25 = [v23 predicateMatchingAllPredicates:v24];

  v26 = [transactionCopy databaseForEntityClass:self];

  v27 = [self queryWithDatabase:v26 predicate:v25];

  v35 = @"archived_state";
  v28 = [MEMORY[0x277CBEA60] arrayWithObjects:&v35 count:1];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __119__HDWorkoutSessionControllerEntity_retrieveArchivedStateFromRecoveryIdentifier_workoutSession_transaction_error_block___block_invoke;
  v32[3] = &unk_27862AFF0;
  v33 = v16;
  v34 = blockCopy;
  v29 = v16;
  v30 = blockCopy;
  LOBYTE(error) = [v27 enumeratePersistentIDsAndProperties:v28 error:error enumerationHandler:v32];

  return error;
}

uint64_t __119__HDWorkoutSessionControllerEntity_retrieveArchivedStateFromRecoveryIdentifier_workoutSession_transaction_error_block___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = HDSQLiteColumnWithNameAsData();
  (*(*(a1 + 40) + 16))();

  return 0;
}

@end