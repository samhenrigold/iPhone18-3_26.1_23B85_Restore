@interface HDRaceRouteSnapshotEntity
+ (BOOL)pruneUnreachableDataWithTransaction:(id)transaction error:(id *)error;
+ (id)insertSnapshotData:(id)data transaction:(id)transaction error:(id *)error;
- (BOOL)deleteDataWithTransaction:(id)transaction error:(id *)error;
- (BOOL)updateSnapshotData:(id)data transaction:(id)transaction error:(id *)error;
- (id)snapshotDataWithTransaction:(id)transaction error:(id *)error;
@end

@implementation HDRaceRouteSnapshotEntity

+ (id)insertSnapshotData:(id)data transaction:(id)transaction error:(id *)error
{
  v25[1] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  transactionCopy = transaction;
  v10 = [transactionCopy databaseForEntityClass:self];
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = -1;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __66__HDRaceRouteSnapshotEntity_insertSnapshotData_transaction_error___block_invoke;
  v19[3] = &unk_278614860;
  v11 = dataCopy;
  v20 = v11;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __66__HDRaceRouteSnapshotEntity_insertSnapshotData_transaction_error___block_invoke_2;
  v18[3] = &unk_278614620;
  v18[4] = &v21;
  if ([v10 executeSQL:@"SELECT ROWID FROM RacePreviousRoute_route_snapshot WHERE data = ?" error:error bindingHandler:v19 enumerationHandler:v18])
  {
    if (v22[3] < 0)
    {
      v25[0] = @"data";
      v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __66__HDRaceRouteSnapshotEntity_insertSnapshotData_transaction_error___block_invoke_3;
      v16[3] = &unk_278614508;
      v17 = v11;
      v13 = [self insertOrReplaceEntity:0 database:v10 properties:v14 error:error bindingHandler:v16];
    }

    else
    {
      v12 = [HDRaceRouteSnapshotEntity alloc];
      v13 = [(HDSQLiteEntity *)v12 initWithPersistentID:v22[3]];
    }
  }

  else
  {
    v13 = 0;
  }

  _Block_object_dispose(&v21, 8);

  return v13;
}

+ (BOOL)pruneUnreachableDataWithTransaction:(id)transaction error:(id *)error
{
  v6 = MEMORY[0x277CCACA8];
  transactionCopy = transaction;
  v8 = +[HDWorkoutClusterEntity databaseTable];
  v9 = +[HDRaceRouteClusterEntity databaseTable];
  v10 = [v6 stringWithFormat:@"DELETE FROM RacePreviousRoute_route_snapshot WHERE (NOT EXISTS (SELECT * FROM %@ WHERE %@ = RacePreviousRoute_route_snapshot.ROWID)) AND (NOT EXISTS (SELECT * FROM %@ WHERE %@ = RacePreviousRoute_route_snapshot.ROWID))", v8, @"snapshot_id", v9, @"snapshot_id"];

  v11 = [transactionCopy databaseForEntityClass:self];

  LOBYTE(error) = [v11 executeSQL:v10 error:error bindingHandler:0 enumerationHandler:0];
  return error;
}

- (BOOL)updateSnapshotData:(id)data transaction:(id)transaction error:(id *)error
{
  v17[1] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v17[0] = @"data";
  v9 = MEMORY[0x277CBEA60];
  transactionCopy = transaction;
  v11 = [v9 arrayWithObjects:v17 count:1];
  v12 = [transactionCopy databaseForEntity:self];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __66__HDRaceRouteSnapshotEntity_updateSnapshotData_transaction_error___block_invoke;
  v15[3] = &unk_278614508;
  v16 = dataCopy;
  v13 = dataCopy;
  LOBYTE(error) = [(HDSQLiteEntity *)self updateProperties:v11 database:v12 error:error bindingHandler:v15];

  return error;
}

- (id)snapshotDataWithTransaction:(id)transaction error:(id *)error
{
  v18[1] = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__199;
  v16 = __Block_byref_object_dispose__199;
  v17 = 0;
  v18[0] = @"data";
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
  v7 = [transactionCopy databaseForEntity:self];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __63__HDRaceRouteSnapshotEntity_snapshotDataWithTransaction_error___block_invoke;
  v11[3] = &unk_278618B98;
  v11[4] = &v12;
  LODWORD(self) = [(HDSQLiteEntity *)self getValuesForProperties:v6 database:v7 handler:v11];

  if (self)
  {
    v8 = v13[5];
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  _Block_object_dispose(&v12, 8);

  return v9;
}

uint64_t __63__HDRaceRouteSnapshotEntity_snapshotDataWithTransaction_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = HDSQLiteColumnWithNameAsData();
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  return MEMORY[0x2821F96F8](v4, v6);
}

- (BOOL)deleteDataWithTransaction:(id)transaction error:(id *)error
{
  v6 = MEMORY[0x277CCACA8];
  transactionCopy = transaction;
  v8 = +[HDWorkoutClusterEntity databaseTable];
  v9 = +[HDRaceRouteClusterEntity databaseTable];
  v10 = [v6 stringWithFormat:@"DELETE FROM RacePreviousRoute_route_snapshot WHERE ROWID = ? AND((SELECT COUNT(*) FROM %@ WHERE %@ = RacePreviousRoute_route_snapshot.ROWID) + (SELECT COUNT(*) FROM %@ WHERE %@ = RacePreviousRoute_route_snapshot.ROWID) <= 1)", v8, @"snapshot_id", v9, @"snapshot_id"];

  v11 = [transactionCopy databaseForEntity:self];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __61__HDRaceRouteSnapshotEntity_deleteDataWithTransaction_error___block_invoke;
  v13[3] = &unk_278614860;
  v13[4] = self;
  LOBYTE(error) = [v11 executeSQL:v10 error:error bindingHandler:v13 enumerationHandler:0];

  return error;
}

uint64_t __61__HDRaceRouteSnapshotEntity_deleteDataWithTransaction_error___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = [*(a1 + 32) persistentID];

  return sqlite3_bind_int64(a2, 1, v3);
}

@end