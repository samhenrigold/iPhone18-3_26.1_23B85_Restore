@interface HDWorkoutClusterComponentEntity
+ (BOOL)associateWorkout:(id)workout withCluster:(id)cluster transaction:(id)transaction error:(id *)error;
+ (BOOL)enumerateWorkoutsForCluster:(id)cluster transaction:(id)transaction error:(id *)error block:(id)block;
+ (BOOL)removeWorkout:(id)workout fromCluster:(id)cluster transaction:(id)transaction error:(id *)error;
+ (id)foreignKeys;
+ (id)numberOfWorkoutsInCluster:(id)cluster transaction:(id)transaction error:(id *)error;
+ (id)uniquedColumns;
@end

@implementation HDWorkoutClusterComponentEntity

+ (BOOL)associateWorkout:(id)workout withCluster:(id)cluster transaction:(id)transaction error:(id *)error
{
  v26[2] = *MEMORY[0x277D85DE8];
  workoutCopy = workout;
  clusterCopy = cluster;
  v26[0] = @"cluster_id";
  v26[1] = @"workout_id";
  v12 = MEMORY[0x277CBEA60];
  transactionCopy = transaction;
  v14 = [v12 arrayWithObjects:v26 count:2];
  v15 = [transactionCopy databaseForEntityClass:self];

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __82__HDWorkoutClusterComponentEntity_associateWorkout_withCluster_transaction_error___block_invoke;
  v23[3] = &unk_278618EF0;
  v24 = v14;
  selfCopy = self;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __82__HDWorkoutClusterComponentEntity_associateWorkout_withCluster_transaction_error___block_invoke_2;
  v20[3] = &unk_278613038;
  v21 = clusterCopy;
  v22 = workoutCopy;
  v16 = workoutCopy;
  v17 = clusterCopy;
  v18 = v14;
  LOBYTE(error) = [v15 executeCachedStatementForKey:&associateWorkout_withCluster_transaction_error__insertKey error:error SQLGenerator:v23 bindingHandler:v20 enumerationHandler:0];

  return error;
}

uint64_t __82__HDWorkoutClusterComponentEntity_associateWorkout_withCluster_transaction_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, [*(a1 + 32) persistentID]);
  v4 = [*(a1 + 40) persistentID];

  return sqlite3_bind_int64(a2, 2, v4);
}

+ (BOOL)removeWorkout:(id)workout fromCluster:(id)cluster transaction:(id)transaction error:(id *)error
{
  workoutCopy = workout;
  clusterCopy = cluster;
  v12 = MEMORY[0x277CCACA8];
  transactionCopy = transaction;
  databaseTable = [self databaseTable];
  v15 = [v12 stringWithFormat:@"DELETE FROM %@ WHERE %@ = ? AND %@ = ?", databaseTable, @"cluster_id", @"workout_id", 0];

  v16 = [transactionCopy databaseForEntityClass:self];

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __79__HDWorkoutClusterComponentEntity_removeWorkout_fromCluster_transaction_error___block_invoke;
  v20[3] = &unk_278613038;
  v21 = clusterCopy;
  v22 = workoutCopy;
  v17 = workoutCopy;
  v18 = clusterCopy;
  LOBYTE(error) = [v16 executeSQL:v15 error:error bindingHandler:v20 enumerationHandler:0];

  return error;
}

uint64_t __79__HDWorkoutClusterComponentEntity_removeWorkout_fromCluster_transaction_error___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, [*(a1 + 32) persistentID]);
  v4 = [*(a1 + 40) persistentID];

  return sqlite3_bind_int64(a2, 2, v4);
}

+ (BOOL)enumerateWorkoutsForCluster:(id)cluster transaction:(id)transaction error:(id *)error block:(id)block
{
  clusterCopy = cluster;
  blockCopy = block;
  v12 = [transaction databaseForEntityClass:self];
  v19 = clusterCopy;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __87__HDWorkoutClusterComponentEntity_enumerateWorkoutsForCluster_transaction_error_block___block_invoke;
  v20[3] = &__block_descriptor_40_e15___NSString_8__0l;
  v20[4] = self;
  v17 = blockCopy;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __87__HDWorkoutClusterComponentEntity_enumerateWorkoutsForCluster_transaction_error_block___block_invoke_2;
  v18[3] = &unk_278614860;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __87__HDWorkoutClusterComponentEntity_enumerateWorkoutsForCluster_transaction_error_block___block_invoke_3;
  v16[3] = &unk_278613B30;
  v13 = blockCopy;
  v14 = clusterCopy;
  LOBYTE(error) = [v12 executeCachedStatementForKey:&enumerateWorkoutsForCluster_transaction_error_block__enumerationKey error:error SQLGenerator:v20 bindingHandler:v18 enumerationHandler:v16];

  return error;
}

id __87__HDWorkoutClusterComponentEntity_enumerateWorkoutsForCluster_transaction_error_block___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = [*(a1 + 32) databaseTable];
  v3 = [v1 stringWithFormat:@"SELECT %@ FROM %@ WHERE %@ = ?", @"workout_id", v2, @"cluster_id", 0];

  return v3;
}

uint64_t __87__HDWorkoutClusterComponentEntity_enumerateWorkoutsForCluster_transaction_error_block___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = [*(a1 + 32) persistentID];

  return sqlite3_bind_int64(a2, 1, v3);
}

uint64_t __87__HDWorkoutClusterComponentEntity_enumerateWorkoutsForCluster_transaction_error_block___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v3 = HKWithAutoreleasePool();

  return v3;
}

uint64_t __87__HDWorkoutClusterComponentEntity_enumerateWorkoutsForCluster_transaction_error_block___block_invoke_4(uint64_t a1)
{
  v2 = [(HDSQLiteEntity *)[HDWorkoutEntity alloc] initWithPersistentID:HDSQLiteColumnAsInt64()];
  v3 = (*(*(a1 + 32) + 16))();

  return v3;
}

+ (id)numberOfWorkoutsInCluster:(id)cluster transaction:(id)transaction error:(id *)error
{
  clusterCopy = cluster;
  transactionCopy = transaction;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v10 = MEMORY[0x277CCACA8];
  databaseTable = [self databaseTable];
  v12 = [v10 stringWithFormat:@"SELECT COUNT(*) FROM %@ WHERE %@ = ?", databaseTable, @"cluster_id", 0];

  v13 = [transactionCopy databaseForEntityClass:self];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __79__HDWorkoutClusterComponentEntity_numberOfWorkoutsInCluster_transaction_error___block_invoke;
  v18[3] = &unk_278614860;
  v14 = clusterCopy;
  v19 = v14;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __79__HDWorkoutClusterComponentEntity_numberOfWorkoutsInCluster_transaction_error___block_invoke_2;
  v17[3] = &unk_278614620;
  v17[4] = &v20;
  if ([v13 executeSQL:v12 error:error bindingHandler:v18 enumerationHandler:v17])
  {
    v15 = [MEMORY[0x277CCABB0] numberWithLongLong:v21[3]];
  }

  else
  {
    v15 = 0;
  }

  _Block_object_dispose(&v20, 8);

  return v15;
}

uint64_t __79__HDWorkoutClusterComponentEntity_numberOfWorkoutsInCluster_transaction_error___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = [*(a1 + 32) persistentID];

  return sqlite3_bind_int64(a2, 1, v3);
}

+ (id)uniquedColumns
{
  v4[2] = *MEMORY[0x277D85DE8];
  v4[0] = @"cluster_id";
  v4[1] = @"workout_id";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:2];

  return v2;
}

+ (id)foreignKeys
{
  v7[2] = *MEMORY[0x277D85DE8];
  v6[0] = @"cluster_id";
  v2 = +[(HDHealthEntity *)HDWorkoutClusterEntity];
  v6[1] = @"workout_id";
  v7[0] = v2;
  v3 = +[(HDDataEntity *)HDWorkoutEntity];
  v7[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

@end