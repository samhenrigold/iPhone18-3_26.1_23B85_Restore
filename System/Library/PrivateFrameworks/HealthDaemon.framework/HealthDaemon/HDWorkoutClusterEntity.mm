@interface HDWorkoutClusterEntity
+ (BOOL)deleteWorkoutClusterWithUUID:(id)d profile:(id)profile error:(id *)error;
+ (BOOL)updateWorkoutClusterWithUUID:(id)d relevanceValue:(id)value lastWorkoutUUID:(id)iD bestWorkoutUUID:(id)uID workoutUUIDsToAssociate:(id)associate workoutUUIDsToRemove:(id)remove profile:(id)profile error:(id *)self0;
+ (BOOL)updateWorkoutClusterWithUUID:(id)d routeLabel:(id)label profile:(id)profile error:(id *)error;
+ (BOOL)updateWorkoutClusterWithUUID:(id)d routeSnapshot:(id)snapshot profile:(id)profile error:(id *)error;
+ (id)_baseEntityProperties;
+ (id)_clusterModelForSQLiteRow:(void *)row database:(uint64_t)database error:;
+ (id)_workoutClusterEntityForUUID:(void *)d database:(void *)database error:;
+ (id)_workoutEntityForUUID:(void *)d database:(void *)database error:;
+ (id)_workoutUUIDForPersistentID:(void *)d database:(uint64_t)database error:;
+ (id)clusterEntitiesWithTransaction:(id)transaction limit:(unint64_t)limit error:(id *)error;
+ (id)clusterUUIDsForWorkoutUUIDs:(id)ds profile:(id)profile error:(id *)error;
+ (id)entityForClusterUUID:(id)d transaction:(id)transaction error:(id *)error;
+ (id)foreignKeys;
+ (id)insertWorkoutCluster:(id)cluster profile:(id)profile error:(id *)error;
+ (id)privateSubEntities;
+ (id)uniquedColumns;
+ (id)workoutClusterContainingWorkoutUUID:(id)d profile:(id)profile error:(id *)error;
+ (id)workoutClustersForProfile:(id)profile limit:(unint64_t)limit error:(id *)error;
+ (id)workoutEntityForUUID:(id)d transaction:(id)transaction error:(id *)error;
+ (id)workoutUUIDsForClusterUUID:(id)d profile:(id)profile error:(id *)error;
- (BOOL)modelPropertiesWithTransaction:(id)transaction error:(id *)error handler:(id)handler;
- (id)snapshotEntityWithTransaction:(id)transaction error:(id *)error;
- (id)workoutRouteSnapshotWithTransaction:(id)transaction error:(id *)error;
- (id)workoutUUIDsWithTransaction:(id)transaction error:(id *)error;
- (uint64_t)_associateWorkoutUUIDs:(void *)ds transaction:(void *)transaction error:;
@end

@implementation HDWorkoutClusterEntity

+ (id)entityForClusterUUID:(id)d transaction:(id)transaction error:(id *)error
{
  dCopy = d;
  v9 = [transaction databaseForEntityClass:self];
  v10 = [(HDWorkoutClusterEntity *)self _workoutClusterEntityForUUID:dCopy database:v9 error:error];

  return v10;
}

+ (id)_workoutClusterEntityForUUID:(void *)d database:(void *)database error:
{
  v6 = a2;
  dCopy = d;
  objc_opt_self();
  v8 = [MEMORY[0x277D10B18] predicateWithProperty:@"uuid" equalToValue:v6];
  v15 = 0;
  v9 = [(HDSQLiteEntity *)HDWorkoutClusterEntity anyInDatabase:dCopy predicate:v8 error:&v15];

  v10 = v15;
  v11 = v10;
  if (v9 | v10)
  {
    v12 = v10;
    if (v11)
    {
      if (database)
      {
        v13 = v12;
        *database = v12;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:database code:118 format:{@"Cluster (%@) not found", v6}];
  }

  return v9;
}

+ (id)insertWorkoutCluster:(id)cluster profile:(id)profile error:(id *)error
{
  clusterCopy = cluster;
  profileCopy = profile;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__205;
  v25 = __Block_byref_object_dispose__205;
  v26 = 0;
  database = [profileCopy database];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __61__HDWorkoutClusterEntity_insertWorkoutCluster_profile_error___block_invoke;
  v16[3] = &unk_27861C150;
  selfCopy = self;
  v11 = clusterCopy;
  v17 = v11;
  v19 = &v21;
  v12 = profileCopy;
  v18 = v12;
  LODWORD(error) = [self performWriteTransactionWithHealthDatabase:database error:error block:v16];

  if (error)
  {
    v13 = v22[5];
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  _Block_object_dispose(&v21, 8);

  return v14;
}

uint64_t __61__HDWorkoutClusterEntity_insertWorkoutCluster_profile_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [v5 databaseForEntityClass:*(a1 + 56)];
  v7 = *(a1 + 56);
  v8 = [*(a1 + 32) lastWorkoutUUID];
  v9 = [(HDWorkoutClusterEntity *)v7 _workoutEntityForUUID:v8 database:v6 error:a3];

  if (v9)
  {
    v10 = *(a1 + 56);
    v11 = [*(a1 + 32) bestWorkoutUUID];
    v12 = [(HDWorkoutClusterEntity *)v10 _workoutEntityForUUID:v11 database:v6 error:a3];

    if (v12)
    {
      v13 = [*(a1 + 32) workoutRouteSnapshot];
      v14 = [HDRaceRouteSnapshotEntity insertSnapshotData:v13 transaction:v5 error:a3];

      v15 = +[(HDWorkoutClusterEntity *)*(a1];
      v16 = [v15 arrayByAddingObject:@"snapshot_id"];

      v17 = *(a1 + 56);
      v18 = [*(a1 + 40) database];
      v27 = MEMORY[0x277D85DD0];
      v28 = 3221225472;
      v29 = __61__HDWorkoutClusterEntity_insertWorkoutCluster_profile_error___block_invoke_2;
      v30 = &unk_278624198;
      v31 = *(a1 + 32);
      v32 = v9;
      v33 = v12;
      v19 = v14;
      v34 = v19;
      v20 = [v17 insertOrReplaceEntity:0 healthDatabase:v18 properties:v16 error:a3 bindingHandler:&v27];
      v21 = *(*(a1 + 48) + 8);
      v22 = *(v21 + 40);
      *(v21 + 40) = v20;

      v23 = *(*(*(a1 + 48) + 8) + 40);
      if (v23)
      {
        v24 = [*(a1 + 32) workoutUUIDs];
        v25 = [(HDWorkoutClusterEntity *)v23 _associateWorkoutUUIDs:v24 transaction:v5 error:a3];
      }

      else
      {
        v25 = 0;
      }
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

+ (id)_workoutEntityForUUID:(void *)d database:(void *)database error:
{
  v6 = a2;
  dCopy = d;
  objc_opt_self();
  v8 = HDDataEntityPredicateForDataUUID();
  v14 = 0;
  v9 = [(HDDataEntity *)HDWorkoutEntity anyInDatabase:dCopy predicate:v8 error:&v14];

  v10 = v14;
  if (v9 | v10)
  {
    v11 = v10;
    if (v10)
    {
      if (database)
      {
        v12 = v11;
        *database = v11;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:database code:118 format:{@"Workout (%@) not found", v6}];
  }

  return v9;
}

+ (id)_baseEntityProperties
{
  v3[6] = *MEMORY[0x277D85DE8];
  objc_opt_self();
  v3[0] = @"uuid";
  v3[1] = @"relevance";
  v3[2] = @"last_workout_id";
  v3[3] = @"best_workout_id";
  v3[4] = @"route_label";
  v3[5] = @"modified_date";
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:6];

  return v1;
}

void __61__HDWorkoutClusterEntity_insertWorkoutCluster_profile_error___block_invoke_2(id *a1, uint64_t a2)
{
  v4 = [a1[4] clusterUUID];
  MEMORY[0x22AAC6C00](a2, @"uuid", v4);

  [a1[4] relevanceValue];
  MEMORY[0x22AAC6B60](a2, @"relevance");
  MEMORY[0x22AAC6B90](a2, @"last_workout_id", [a1[5] persistentID]);
  MEMORY[0x22AAC6B90](a2, @"best_workout_id", [a1[6] persistentID]);
  MEMORY[0x22AAC6B90](a2, @"snapshot_id", [a1[7] persistentID]);
  v5 = [a1[4] workoutRouteLabel];
  MEMORY[0x22AAC6BD0](a2, @"route_label", v5);

  v6 = [MEMORY[0x277CBEAA8] date];
  MEMORY[0x22AAC6B50](a2, @"modified_date", v6);
}

- (uint64_t)_associateWorkoutUUIDs:(void *)ds transaction:(void *)transaction error:
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = a2;
  dsCopy = ds;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v7;
  v9 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        v14 = dsCopy;
        v15 = v13;
        v16 = [v14 databaseForEntity:self];
        v17 = [HDWorkoutClusterEntity _workoutEntityForUUID:v15 database:v16 error:transaction];

        if (!v17)
        {

LABEL_13:
          v19 = 0;
          goto LABEL_14;
        }

        v18 = [HDWorkoutClusterComponentEntity associateWorkout:v17 withCluster:self transaction:v14 error:transaction];

        if (!v18)
        {
          goto LABEL_13;
        }
      }

      v10 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
      v19 = 1;
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v19 = 1;
  }

LABEL_14:

  return v19;
}

+ (id)clusterEntitiesWithTransaction:(id)transaction limit:(unint64_t)limit error:(id *)error
{
  v8 = MEMORY[0x277CBEB18];
  transactionCopy = transaction;
  v10 = objc_alloc_init(v8);
  limit = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT ROWID FROM RacePreviousRoute_workout_cluster ORDER BY relevance DESC LIMIT %lu", limit];
  v12 = [transactionCopy databaseForEntityClass:self];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __69__HDWorkoutClusterEntity_clusterEntitiesWithTransaction_limit_error___block_invoke;
  v16[3] = &unk_278614098;
  v13 = v10;
  v17 = v13;
  LODWORD(v10) = [v12 executeSQL:limit error:error bindingHandler:0 enumerationHandler:v16];

  v14 = 0;
  if (v10)
  {
    v14 = objc_msgSend_copy(v13);
  }

  return v14;
}

uint64_t __69__HDWorkoutClusterEntity_clusterEntitiesWithTransaction_limit_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [(HDSQLiteEntity *)[HDWorkoutClusterEntity alloc] initWithPersistentID:HDSQLiteColumnAsInt64()];
  [v2 addObject:v3];

  return 1;
}

+ (id)workoutClustersForProfile:(id)profile limit:(unint64_t)limit error:(id *)error
{
  v8 = MEMORY[0x277CBEB18];
  profileCopy = profile;
  v10 = objc_alloc_init(v8);
  database = [profileCopy database];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __64__HDWorkoutClusterEntity_workoutClustersForProfile_limit_error___block_invoke;
  v15[3] = &unk_27861E450;
  selfCopy = self;
  limitCopy = limit;
  v12 = v10;
  v16 = v12;
  LODWORD(error) = [self performReadTransactionWithHealthDatabase:database error:error block:v15];

  if (error)
  {
    v13 = objc_msgSend_copy(v12);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

uint64_t __64__HDWorkoutClusterEntity_workoutClustersForProfile_limit_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v5 = [a2 databaseForEntityClass:*(a1 + 40)];
  v6 = [MEMORY[0x277D10B68] orderingTermWithProperty:@"relevance" entityClass:*(a1 + 40) ascending:0];
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v20[0] = v6;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
  v10 = [v7 queryWithDatabase:v5 predicate:0 limit:v8 orderingTerms:v9 groupBy:0];

  v11 = +[(HDWorkoutClusterEntity *)*(a1];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __64__HDWorkoutClusterEntity_workoutClustersForProfile_limit_error___block_invoke_2;
  v17[3] = &unk_278617E98;
  v18 = v5;
  v16 = *(a1 + 32);
  v12 = v16;
  v19 = v16;
  v13 = v5;
  v14 = [v10 enumeratePersistentIDsAndProperties:v11 error:a3 enumerationHandler:v17];

  return v14;
}

BOOL __64__HDWorkoutClusterEntity_workoutClustersForProfile_limit_error___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = [(HDWorkoutClusterEntity *)*(a1 + 48) _clusterModelForSQLiteRow:a4 database:*(a1 + 32) error:a5];
  if (v6)
  {
    [*(a1 + 40) addObject:v6];
  }

  return v6 != 0;
}

+ (id)_clusterModelForSQLiteRow:(void *)row database:(uint64_t)database error:
{
  rowCopy = row;
  v6 = objc_opt_self();
  v7 = HDSQLiteColumnWithNameAsUUID();
  v8 = HDSQLiteColumnWithNameAsInt64();
  v9 = HDSQLiteColumnWithNameAsInt64();
  HDSQLiteColumnWithNameAsDouble();
  v11 = v10;
  v12 = HDSQLiteColumnWithNameAsString();
  v13 = [(HDWorkoutClusterEntity *)v6 _workoutUUIDForPersistentID:v8 database:rowCopy error:database];
  if (v13)
  {
    v14 = [(HDWorkoutClusterEntity *)v6 _workoutUUIDForPersistentID:v9 database:rowCopy error:database];
    if (v14)
    {
      v15 = [objc_alloc(MEMORY[0x277CCDC20]) _initWithUUID:v7 workoutUUIDs:0 lastWorkoutUUID:v13 bestWorkoutUUID:v14 relevanceValue:0 workoutRouteSnapshot:v12 workoutRouteLabel:v11];
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (id)workoutClusterContainingWorkoutUUID:(id)d profile:(id)profile error:(id *)error
{
  dCopy = d;
  profileCopy = profile;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__205;
  v23 = __Block_byref_object_dispose__205;
  v24 = 0;
  database = [profileCopy database];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __76__HDWorkoutClusterEntity_workoutClusterContainingWorkoutUUID_profile_error___block_invoke;
  v15[3] = &unk_278616AA0;
  selfCopy = self;
  v11 = dCopy;
  v16 = v11;
  v17 = &v19;
  LODWORD(error) = [self performReadTransactionWithHealthDatabase:database error:error block:v15];

  if (error)
  {
    v12 = v20[5];
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  _Block_object_dispose(&v19, 8);

  return v13;
}

uint64_t __76__HDWorkoutClusterEntity_workoutClusterContainingWorkoutUUID_profile_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v34[1] = *MEMORY[0x277D85DE8];
  v5 = [a2 databaseForEntityClass:*(a1 + 48)];
  v6 = [(HDWorkoutClusterEntity *)*(a1 + 48) _workoutEntityForUUID:v5 database:a3 error:?];
  v7 = v6;
  if (v6)
  {
    v29 = a3;
    v27 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v6, "persistentID")}];
    v8 = MEMORY[0x277D10B50];
    v9 = [*(a1 + 48) databaseTable];
    v28 = [v8 innerJoinClauseFromTable:v9 toTargetEntity:objc_opt_class() as:0 localReference:*MEMORY[0x277D10A40] targetKey:@"cluster_id"];

    v10 = MEMORY[0x277D10B58];
    v11 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{v28, 0}];
    v12 = [v10 predicateWithJoinClauses:v11];

    v13 = MEMORY[0x277D10B90];
    v14 = MEMORY[0x277CCACA8];
    v15 = +[HDWorkoutClusterComponentEntity databaseTable];
    v16 = [v14 stringWithFormat:@"%@.%@ = ?", v15, @"workout_id", 0];
    v34[0] = v27;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:1];
    v18 = [v13 predicateWithSQL:v16 overProperties:MEMORY[0x277CBEBF8] values:v17];

    v19 = [MEMORY[0x277D10B20] compoundPredicateWithPredicate:v12 otherPredicate:v18];
    v20 = [MEMORY[0x277D10B68] orderingTermWithProperty:@"modified_date" entityClass:*(a1 + 48) ascending:0];
    v21 = *(a1 + 48);
    v33 = v20;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v33 count:1];
    v23 = [v21 queryWithDatabase:v5 predicate:v19 limit:1 orderingTerms:v22 groupBy:0];

    v24 = +[(HDWorkoutClusterEntity *)*(a1];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __76__HDWorkoutClusterEntity_workoutClusterContainingWorkoutUUID_profile_error___block_invoke_2;
    v30[3] = &unk_278617EC0;
    v32 = *(a1 + 40);
    v31 = v5;
    v25 = [v23 enumeratePersistentIDsAndProperties:v24 error:v29 enumerationHandler:v30];
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

BOOL __76__HDWorkoutClusterEntity_workoutClusterContainingWorkoutUUID_profile_error___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = [(HDWorkoutClusterEntity *)*(a1 + 48) _clusterModelForSQLiteRow:a4 database:*(a1 + 32) error:a5];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  return *(*(*(a1 + 40) + 8) + 40) != 0;
}

+ (id)clusterUUIDsForWorkoutUUIDs:(id)ds profile:(id)profile error:(id *)error
{
  dsCopy = ds;
  v9 = MEMORY[0x277CBEB18];
  profileCopy = profile;
  v11 = objc_alloc_init(v9);
  database = [profileCopy database];

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __68__HDWorkoutClusterEntity_clusterUUIDsForWorkoutUUIDs_profile_error___block_invoke;
  v17[3] = &unk_278614698;
  selfCopy = self;
  v18 = dsCopy;
  v13 = v11;
  v19 = v13;
  v14 = dsCopy;
  LODWORD(error) = [self performReadTransactionWithHealthDatabase:database error:error block:v17];

  if (error)
  {
    v15 = objc_msgSend_copy(v13);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

uint64_t __68__HDWorkoutClusterEntity_clusterUUIDsForWorkoutUUIDs_profile_error___block_invoke(id *a1, void *a2, uint64_t a3)
{
  v20 = [a2 databaseForEntityClass:a1[6]];
  v18 = objc_alloc(MEMORY[0x277CCAB68]);
  v17 = [a1[6] databaseTable];
  v16 = [a1[6] databaseTable];
  v4 = +[HDWorkoutClusterComponentEntity databaseTable];
  v5 = [a1[6] databaseTable];
  v6 = *MEMORY[0x277D10A40];
  v7 = +[HDDataEntity databaseTable];
  v8 = +[HDDataEntity databaseTable];
  v9 = +[HDDataEntity databaseTable];
  v10 = objc_msgSend(v18, "initWithFormat:", @"SELECT %@.%@ FROM %@ INNER JOIN %@ ON %@.%@ = %@ INNER JOIN %@ ON %@.%@ = %@ WHERE %@.%@ IN ("), v17, @"uuid", v16, v4, v5, v6, @"cluster_id", v7, v8, @"data_id", @"workout_id", v9, @"uuid", 0;

  if ([a1[4] count])
  {
    v11 = 0;
    v12 = @"?";
    do
    {
      [v10 appendFormat:v12];
      ++v11;
      v13 = [a1[4] count];
      v12 = @",?";
    }

    while (v13 > v11);
  }

  [v10 appendString:@""]);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __68__HDWorkoutClusterEntity_clusterUUIDsForWorkoutUUIDs_profile_error___block_invoke_2;
  v23[3] = &unk_278614860;
  v24 = a1[4];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __68__HDWorkoutClusterEntity_clusterUUIDsForWorkoutUUIDs_profile_error___block_invoke_3;
  v21[3] = &unk_278614098;
  v22 = a1[5];
  v14 = [v20 executeUncachedSQL:v10 error:a3 bindingHandler:v23 enumerationHandler:v21];

  return v14;
}

uint64_t __68__HDWorkoutClusterEntity_clusterUUIDsForWorkoutUUIDs_profile_error___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x22AAC6CA0](a2, 0);
  [v2 addObject:v3];

  return 1;
}

+ (id)workoutEntityForUUID:(id)d transaction:(id)transaction error:(id *)error
{
  dCopy = d;
  v9 = [transaction databaseForEntityClass:self];
  v10 = [HDWorkoutClusterEntity _workoutEntityForUUID:dCopy database:v9 error:error];

  return v10;
}

+ (id)workoutUUIDsForClusterUUID:(id)d profile:(id)profile error:(id *)error
{
  dCopy = d;
  profileCopy = profile;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__205;
  v23 = __Block_byref_object_dispose__205;
  v24 = 0;
  database = [profileCopy database];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __67__HDWorkoutClusterEntity_workoutUUIDsForClusterUUID_profile_error___block_invoke;
  v15[3] = &unk_278616AA0;
  selfCopy = self;
  v11 = dCopy;
  v16 = v11;
  v17 = &v19;
  LODWORD(error) = [(HDHealthEntity *)HDWorkoutClusterEntity performReadTransactionWithHealthDatabase:database error:error block:v15];

  if (error)
  {
    v12 = v20[5];
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  _Block_object_dispose(&v19, 8);

  return v13;
}

BOOL __67__HDWorkoutClusterEntity_workoutUUIDsForClusterUUID_profile_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [v5 databaseForEntityClass:*(a1 + 48)];
  v7 = [(HDWorkoutClusterEntity *)*(a1 + 48) _workoutClusterEntityForUUID:v6 database:a3 error:?];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 workoutUUIDsWithTransaction:v5 error:a3];
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    v12 = *(*(*(a1 + 40) + 8) + 40) != 0;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)workoutUUIDsWithTransaction:(id)transaction error:(id *)error
{
  transactionCopy = transaction;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = [transactionCopy databaseForEntity:self];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __60__HDWorkoutClusterEntity_workoutUUIDsWithTransaction_error___block_invoke;
  v16 = &unk_27862F998;
  v9 = v8;
  v17 = v9;
  v10 = v7;
  v18 = v10;
  if (self && [HDWorkoutClusterComponentEntity enumerateWorkoutsForCluster:self transaction:transactionCopy error:error block:&v13])
  {
    v11 = objc_msgSend_copy(v10, v13, v14, v15, v16, v17, v18);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

BOOL __60__HDWorkoutClusterEntity_workoutUUIDsWithTransaction_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = +[HDWorkoutClusterEntity _workoutUUIDForPersistentID:database:error:](HDWorkoutClusterEntity, [a2 persistentID], *(a1 + 32), a3);
  if (v4)
  {
    [*(a1 + 40) addObject:v4];
  }

  return v4 != 0;
}

+ (id)_workoutUUIDForPersistentID:(void *)d database:(uint64_t)database error:
{
  dCopy = d;
  objc_opt_self();
  v7 = [MEMORY[0x277CCABB0] numberWithLongLong:a2];
  v8 = HDDataEntityPredicateForRowID(v7, 1);

  v9 = [(HDSQLiteEntity *)HDDataEntity propertyValueForAnyInDatabase:dCopy property:@"uuid" predicate:v8 error:database];

  v10 = _HDUUIDForSQLiteValue();

  return v10;
}

+ (BOOL)updateWorkoutClusterWithUUID:(id)d routeSnapshot:(id)snapshot profile:(id)profile error:(id *)error
{
  dCopy = d;
  snapshotCopy = snapshot;
  database = [profile database];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __83__HDWorkoutClusterEntity_updateWorkoutClusterWithUUID_routeSnapshot_profile_error___block_invoke;
  v16[3] = &unk_278614698;
  v18 = snapshotCopy;
  selfCopy = self;
  v17 = dCopy;
  v13 = snapshotCopy;
  v14 = dCopy;
  LOBYTE(error) = [self performWriteTransactionWithHealthDatabase:database error:error block:v16];

  return error;
}

uint64_t __83__HDWorkoutClusterEntity_updateWorkoutClusterWithUUID_routeSnapshot_profile_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [v5 databaseForEntityClass:*(a1 + 48)];
  v7 = [(HDWorkoutClusterEntity *)*(a1 + 48) _workoutClusterEntityForUUID:v6 database:a3 error:?];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 snapshotEntityWithTransaction:v5 error:a3];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 updateSnapshotData:*(a1 + 40) transaction:v5 error:a3];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (BOOL)updateWorkoutClusterWithUUID:(id)d routeLabel:(id)label profile:(id)profile error:(id *)error
{
  dCopy = d;
  labelCopy = label;
  database = [profile database];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __80__HDWorkoutClusterEntity_updateWorkoutClusterWithUUID_routeLabel_profile_error___block_invoke;
  v16[3] = &unk_278614698;
  v18 = labelCopy;
  selfCopy = self;
  v17 = dCopy;
  v13 = labelCopy;
  v14 = dCopy;
  LOBYTE(error) = [self performWriteTransactionWithHealthDatabase:database error:error block:v16];

  return error;
}

uint64_t __80__HDWorkoutClusterEntity_updateWorkoutClusterWithUUID_routeLabel_profile_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = [a2 databaseForEntityClass:*(a1 + 48)];
  v6 = [(HDWorkoutClusterEntity *)*(a1 + 48) _workoutClusterEntityForUUID:v5 database:a3 error:?];
  if (v6)
  {
    v12[0] = @"route_label";
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __80__HDWorkoutClusterEntity_updateWorkoutClusterWithUUID_routeLabel_profile_error___block_invoke_2;
    v10[3] = &unk_278614508;
    v11 = *(a1 + 40);
    v8 = [v6 updateProperties:v7 database:v5 error:a3 bindingHandler:v10];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (BOOL)updateWorkoutClusterWithUUID:(id)d relevanceValue:(id)value lastWorkoutUUID:(id)iD bestWorkoutUUID:(id)uID workoutUUIDsToAssociate:(id)associate workoutUUIDsToRemove:(id)remove profile:(id)profile error:(id *)self0
{
  dCopy = d;
  valueCopy = value;
  iDCopy = iD;
  uIDCopy = uID;
  associateCopy = associate;
  removeCopy = remove;
  database = [profile database];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __161__HDWorkoutClusterEntity_updateWorkoutClusterWithUUID_relevanceValue_lastWorkoutUUID_bestWorkoutUUID_workoutUUIDsToAssociate_workoutUUIDsToRemove_profile_error___block_invoke;
  v31[3] = &unk_278626488;
  v37 = removeCopy;
  selfCopy = self;
  v32 = dCopy;
  v33 = valueCopy;
  v34 = iDCopy;
  v35 = uIDCopy;
  v36 = associateCopy;
  v23 = removeCopy;
  v24 = associateCopy;
  v25 = uIDCopy;
  v26 = iDCopy;
  v27 = valueCopy;
  v28 = dCopy;
  v29 = [self performWriteTransactionWithHealthDatabase:database error:error block:v31];

  return v29;
}

uint64_t __161__HDWorkoutClusterEntity_updateWorkoutClusterWithUUID_relevanceValue_lastWorkoutUUID_bestWorkoutUUID_workoutUUIDsToAssociate_workoutUUIDsToRemove_profile_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v45 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [v5 databaseForEntityClass:*(a1 + 80)];
  v7 = [(HDWorkoutClusterEntity *)*(a1 + 80) _workoutClusterEntityForUUID:v6 database:a3 error:?];
  if (v7)
  {
    v8 = objc_alloc_init(MEMORY[0x277CCAB68]);
    v9 = v8;
    if (*(a1 + 40))
    {
      [v8 appendFormat:@", %@ = ?", @"relevance"];
    }

    if (*(a1 + 48))
    {
      [v9 appendFormat:@", %@ = ?", @"last_workout_id"];
      v10 = [(HDWorkoutClusterEntity *)*(a1 + 80) _workoutEntityForUUID:v6 database:a3 error:?];
      if (!v10 || ![HDWorkoutClusterComponentEntity associateWorkout:v10 withCluster:v7 transaction:v5 error:a3])
      {
        v11 = 0;
LABEL_36:

        goto LABEL_37;
      }
    }

    else
    {
      v10 = 0;
    }

    if (*(a1 + 56))
    {
      [v9 appendFormat:@", %@ = ?", @"best_workout_id"];
      v11 = [(HDWorkoutClusterEntity *)*(a1 + 80) _workoutEntityForUUID:v6 database:a3 error:?];
      if (!v11)
      {

        goto LABEL_36;
      }

      if (![HDWorkoutClusterComponentEntity associateWorkout:v11 withCluster:v7 transaction:v5 error:a3])
      {
        v34 = v11;
        v11 = 0;

        goto LABEL_36;
      }

      v27 = v5;
    }

    else
    {
      v27 = v5;
      v11 = 0;
    }

    v12 = MEMORY[0x277CCACA8];
    v13 = [*(a1 + 80) databaseTable];
    v14 = [v12 stringWithFormat:@"UPDATE %@ SET %@ = ?%@ WHERE %@ = ?", v13, @"modified_date", v9, *MEMORY[0x277D10A40]];

    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __161__HDWorkoutClusterEntity_updateWorkoutClusterWithUUID_relevanceValue_lastWorkoutUUID_bestWorkoutUUID_workoutUUIDsToAssociate_workoutUUIDsToRemove_profile_error___block_invoke_2;
    v35[3] = &unk_27862F9C0;
    v36 = *(a1 + 40);
    v29 = v10;
    v37 = v10;
    v38 = v11;
    v15 = v7;
    v39 = v15;
    v28 = v14;
    v33 = v38;
    if ([v6 executeUncachedSQL:v14 error:a3 bindingHandler:v35 enumerationHandler:0])
    {
      v5 = v27;
      if ([(HDWorkoutClusterEntity *)v15 _associateWorkoutUUIDs:v27 transaction:a3 error:?])
      {
        v16 = *(a1 + 72);
        v32 = v27;
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        obj = v16;
        v31 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
        if (v31)
        {
          v30 = *v41;
          v25 = v9;
          while (2)
          {
            for (i = 0; i != v31; ++i)
            {
              if (*v41 != v30)
              {
                objc_enumerationMutation(obj);
              }

              v18 = *(*(&v40 + 1) + 8 * i);
              v19 = v32;
              v20 = v18;
              v21 = [v19 databaseForEntity:v15];
              v22 = [HDWorkoutClusterEntity _workoutEntityForUUID:v20 database:v21 error:a3];

              if (!v22)
              {

LABEL_33:
                v11 = 0;
                v9 = v25;
                goto LABEL_34;
              }

              v23 = [HDWorkoutClusterComponentEntity removeWorkout:v22 fromCluster:v15 transaction:v19 error:a3];

              if (!v23)
              {
                goto LABEL_33;
              }
            }

            v11 = 1;
            v9 = v25;
            v31 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
            if (v31)
            {
              continue;
            }

            break;
          }
        }

        else
        {
          v11 = 1;
        }

LABEL_34:
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
      v5 = v27;
    }

    v10 = v29;
    goto LABEL_36;
  }

  v11 = 0;
LABEL_37:

  return v11;
}

uint64_t __161__HDWorkoutClusterEntity_updateWorkoutClusterWithUUID_relevanceValue_lastWorkoutUUID_bestWorkoutUUID_workoutUUIDsToAssociate_workoutUUIDsToRemove_profile_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  sqlite3_bind_double(a2, 1, v4);
  v5 = *(a1 + 32);
  if (v5)
  {
    [v5 doubleValue];
    sqlite3_bind_double(a2, 2, v6);
    v7 = 3;
  }

  else
  {
    v7 = 2;
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    sqlite3_bind_int64(a2, v7++, [v8 persistentID]);
  }

  v9 = *(a1 + 48);
  if (v9)
  {
    sqlite3_bind_int64(a2, v7++, [v9 persistentID]);
  }

  v10 = [*(a1 + 56) persistentID];

  return sqlite3_bind_int64(a2, v7, v10);
}

+ (BOOL)deleteWorkoutClusterWithUUID:(id)d profile:(id)profile error:(id *)error
{
  dCopy = d;
  database = [profile database];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __69__HDWorkoutClusterEntity_deleteWorkoutClusterWithUUID_profile_error___block_invoke;
  v12[3] = &unk_278619348;
  v13 = dCopy;
  selfCopy = self;
  v10 = dCopy;
  LOBYTE(error) = [self performWriteTransactionWithHealthDatabase:database error:error block:v12];

  return error;
}

uint64_t __69__HDWorkoutClusterEntity_deleteWorkoutClusterWithUUID_profile_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [MEMORY[0x277D10B18] predicateWithProperty:@"uuid" equalToValue:*(a1 + 32)];
  v7 = v5;
  v8 = v6;
  v9 = objc_opt_self();
  v10 = [v7 databaseForEntityClass:v9];
  v11 = [v9 queryWithDatabase:v10 predicate:v8];

  v21[0] = @"snapshot_id";
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __83__HDWorkoutClusterEntity__deleteClusterBackingDataWithPredicate_transaction_error___block_invoke;
  v19[3] = &unk_27861E4C0;
  v20 = v7;
  v13 = v7;
  v14 = [v11 enumerateProperties:v12 error:a3 enumerationHandler:v19];

  if (v14)
  {
    v15 = *(a1 + 40);
    v16 = [v13 databaseForEntityClass:v15];
    v17 = [v15 deleteEntitiesInDatabase:v16 predicate:v8 error:a3];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)snapshotEntityWithTransaction:(id)transaction error:(id *)error
{
  v17[1] = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = -1;
  v17[0] = @"snapshot_id";
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  v8 = [transactionCopy databaseForEntity:self];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __62__HDWorkoutClusterEntity_snapshotEntityWithTransaction_error___block_invoke;
  v12[3] = &unk_278618B98;
  v12[4] = &v13;
  LOBYTE(error) = [(HDSQLiteEntity *)self getValuesForProperties:v7 database:v8 error:error handler:v12];

  if (error)
  {
    v9 = [HDRaceRouteSnapshotEntity alloc];
    v10 = [(HDSQLiteEntity *)v9 initWithPersistentID:v14[3]];
  }

  else
  {
    v10 = 0;
  }

  _Block_object_dispose(&v13, 8);

  return v10;
}

uint64_t __62__HDWorkoutClusterEntity_snapshotEntityWithTransaction_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = HDSQLiteColumnWithNameAsInt64();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (BOOL)modelPropertiesWithTransaction:(id)transaction error:(id *)error handler:(id)handler
{
  v22[5] = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  handlerCopy = handler;
  v10 = [transactionCopy databaseForEntity:self];
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v22[0] = @"uuid";
  v22[1] = @"last_workout_id";
  v22[2] = @"best_workout_id";
  v22[3] = @"relevance";
  v22[4] = @"route_label";
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:5];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __71__HDWorkoutClusterEntity_modelPropertiesWithTransaction_error_handler___block_invoke;
  v15[3] = &unk_27862F9E8;
  v12 = handlerCopy;
  v16 = v12;
  v17 = &v18;
  v13 = [(HDSQLiteEntity *)self getValuesForProperties:v11 database:v10 error:error handler:v15];

  if (v13)
  {
    LOBYTE(v13) = *(v19 + 24);
  }

  _Block_object_dispose(&v18, 8);
  return v13 & 1;
}

void __71__HDWorkoutClusterEntity_modelPropertiesWithTransaction_error_handler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = HDSQLiteColumnWithNameAsUUID();
  v4 = HDSQLiteColumnWithNameAsInt64();
  v5 = HDSQLiteColumnWithNameAsInt64();
  HDSQLiteColumnWithNameAsDouble();
  v7 = v6;
  v8 = HDSQLiteColumnWithNameAsString();
  v9 = [(HDSQLiteEntity *)[HDWorkoutEntity alloc] initWithPersistentID:v4];
  v10 = [(HDSQLiteEntity *)[HDWorkoutEntity alloc] initWithPersistentID:v5];
  v11 = *(a1 + 32);
  v12 = [MEMORY[0x277CCABB0] numberWithDouble:v7];
  (*(v11 + 16))(v11, v13, v9, v10, v12, v8);

  *(*(*(a1 + 40) + 8) + 24) = 1;
}

- (id)workoutRouteSnapshotWithTransaction:(id)transaction error:(id *)error
{
  transactionCopy = transaction;
  v7 = [(HDWorkoutClusterEntity *)self snapshotEntityWithTransaction:transactionCopy error:error];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 snapshotDataWithTransaction:transactionCopy error:error];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t __83__HDWorkoutClusterEntity__deleteClusterBackingDataWithPredicate_transaction_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = [(HDSQLiteEntity *)[HDRaceRouteSnapshotEntity alloc] initWithPersistentID:HDSQLiteColumnAsInt64()];
  v7 = [(HDRaceRouteSnapshotEntity *)v6 deleteDataWithTransaction:*(a1 + 32) error:a4];

  return v7;
}

+ (id)uniquedColumns
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = @"uuid";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

+ (id)foreignKeys
{
  v8[3] = *MEMORY[0x277D85DE8];
  v2 = [objc_alloc(MEMORY[0x277D10B38]) initWithEntityClass:objc_opt_class() property:@"ROWID" deletionAction:0 isDeferred:1];
  v7[0] = @"last_workout_id";
  v3 = +[(HDDataEntity *)HDWorkoutEntity];
  v8[0] = v3;
  v7[1] = @"best_workout_id";
  v4 = +[(HDDataEntity *)HDWorkoutEntity];
  v7[2] = @"snapshot_id";
  v8[1] = v4;
  v8[2] = v2;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:3];

  return v5;
}

+ (id)privateSubEntities
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

@end