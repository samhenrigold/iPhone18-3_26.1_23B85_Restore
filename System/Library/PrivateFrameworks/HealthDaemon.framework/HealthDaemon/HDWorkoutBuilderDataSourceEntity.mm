@interface HDWorkoutBuilderDataSourceEntity
+ (BOOL)enumerateDataSourcesForWorkoutBuilder:(id)builder transaction:(id)transaction error:(id *)error block:(id)block;
+ (BOOL)removeDataSourceWithIdentifier:(id)identifier fromWorkoutBuilder:(id)builder transaction:(id)transaction error:(id *)error;
+ (BOOL)storeDataSourceWithIdentifier:(id)identifier archivedState:(id)state workoutBuilder:(id)builder transaction:(id)transaction error:(id *)error;
+ (id)foreignKeys;
@end

@implementation HDWorkoutBuilderDataSourceEntity

+ (BOOL)storeDataSourceWithIdentifier:(id)identifier archivedState:(id)state workoutBuilder:(id)builder transaction:(id)transaction error:(id *)error
{
  v28[3] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  stateCopy = state;
  builderCopy = builder;
  v28[0] = @"workout_builder_id";
  v28[1] = @"recovery_identifier";
  v28[2] = @"archived_state";
  v15 = MEMORY[0x277CBEA60];
  transactionCopy = transaction;
  v17 = [v15 arrayWithObjects:v28 count:3];
  v18 = [transactionCopy databaseForEntityClass:self];

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __113__HDWorkoutBuilderDataSourceEntity_storeDataSourceWithIdentifier_archivedState_workoutBuilder_transaction_error___block_invoke;
  v24[3] = &unk_278624170;
  v25 = builderCopy;
  v26 = identifierCopy;
  v27 = stateCopy;
  v19 = stateCopy;
  v20 = identifierCopy;
  v21 = builderCopy;
  v22 = [self insertOrReplaceEntity:1 database:v18 properties:v17 error:error bindingHandler:v24];

  return v22 != 0;
}

void __113__HDWorkoutBuilderDataSourceEntity_storeDataSourceWithIdentifier_archivedState_workoutBuilder_transaction_error___block_invoke(uint64_t a1, uint64_t a2)
{
  MEMORY[0x22AAC6B90](a2, @"workout_builder_id", [*(a1 + 32) persistentID]);
  MEMORY[0x22AAC6BD0](a2, @"recovery_identifier", *(a1 + 40));

  JUMPOUT(0x22AAC6B40);
}

+ (BOOL)removeDataSourceWithIdentifier:(id)identifier fromWorkoutBuilder:(id)builder transaction:(id)transaction error:(id *)error
{
  v24[2] = *MEMORY[0x277D85DE8];
  v10 = MEMORY[0x277D10B18];
  transactionCopy = transaction;
  builderCopy = builder;
  v13 = [v10 predicateWithProperty:@"recovery_identifier" equalToValue:identifier];
  v14 = MEMORY[0x277D10B18];
  v15 = MEMORY[0x277CCABB0];
  persistentID = [builderCopy persistentID];

  v17 = [v15 numberWithLongLong:persistentID];
  v18 = [v14 predicateWithProperty:@"workout_builder_id" equalToValue:v17];

  v19 = MEMORY[0x277D10B20];
  v24[0] = v13;
  v24[1] = v18;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  v21 = [v19 predicateMatchingAllPredicates:v20];

  v22 = [transactionCopy databaseForEntityClass:self];

  LOBYTE(error) = [self deleteEntitiesInDatabase:v22 predicate:v21 error:error];
  return error;
}

+ (BOOL)enumerateDataSourcesForWorkoutBuilder:(id)builder transaction:(id)transaction error:(id *)error block:(id)block
{
  v23[2] = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v11 = MEMORY[0x277D10B18];
  v12 = MEMORY[0x277CCABB0];
  transactionCopy = transaction;
  v14 = [v12 numberWithLongLong:{objc_msgSend(builder, "persistentID")}];
  v15 = [v11 predicateWithProperty:@"workout_builder_id" equalToValue:v14];

  v16 = [transactionCopy databaseForEntityClass:self];

  v17 = [self queryWithDatabase:v16 predicate:v15];

  v23[0] = @"recovery_identifier";
  v23[1] = @"archived_state";
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __98__HDWorkoutBuilderDataSourceEntity_enumerateDataSourcesForWorkoutBuilder_transaction_error_block___block_invoke;
  v21[3] = &unk_2786145A8;
  v22 = blockCopy;
  v19 = blockCopy;
  LOBYTE(error) = [v17 enumerateProperties:v18 error:error enumerationHandler:v21];

  return error;
}

uint64_t __98__HDWorkoutBuilderDataSourceEntity_enumerateDataSourcesForWorkoutBuilder_transaction_error_block___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = HDSQLiteColumnWithNameAsString();
  v5 = HDSQLiteColumnWithNameAsData();
  v6 = (*(*(a1 + 32) + 16))();

  return v6;
}

+ (id)foreignKeys
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"workout_builder_id";
  v2 = +[(HDHealthEntity *)HDWorkoutBuilderEntity];
  v6[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

@end