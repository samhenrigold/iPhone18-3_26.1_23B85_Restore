@interface HDWorkoutBuilderAssociatedSeriesEntity
+ (BOOL)enumerateSeriesForBuilder:(id)builder transaction:(id)transaction error:(id *)error block:(id)block;
+ (id)allBuilderAssociatedSeriesWithProfile:(id)profile error:(id *)error;
+ (id)foreignKeys;
+ (id)seriesForBuilder:(id)builder profile:(id)profile error:(id *)error;
+ (id)uniquedColumns;
+ (int64_t)associateSeries:(id)series toWorkoutBuilderID:(id)d profile:(id)profile error:(id *)error;
@end

@implementation HDWorkoutBuilderAssociatedSeriesEntity

+ (int64_t)associateSeries:(id)series toWorkoutBuilderID:(id)d profile:(id)profile error:(id *)error
{
  v24[3] = *MEMORY[0x277D85DE8];
  seriesCopy = series;
  profileCopy = profile;
  v12 = [HDWorkoutBuilderEntity workoutBuilderEntityWithIdentifier:d profile:profileCopy error:error];
  if (v12)
  {
    v24[0] = @"workout_builder_id";
    v24[1] = @"series_uuid";
    v24[2] = @"series_type";
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:3];
    database = [profileCopy database];
    v18 = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __91__HDWorkoutBuilderAssociatedSeriesEntity_associateSeries_toWorkoutBuilderID_profile_error___block_invoke;
    v21 = &unk_278613DE8;
    v22 = v12;
    v23 = seriesCopy;
    v15 = [self insertOrReplaceEntity:0 healthDatabase:database properties:v13 error:error bindingHandler:&v18];

    if (v15)
    {
      v16 = 1;
    }

    else if ([*error hd_isConstraintViolation])
    {
      v16 = 2;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

void __91__HDWorkoutBuilderAssociatedSeriesEntity_associateSeries_toWorkoutBuilderID_profile_error___block_invoke(uint64_t a1, uint64_t a2)
{
  MEMORY[0x22AAC6B90](a2, @"workout_builder_id", [*(a1 + 32) persistentID]);
  v4 = [*(a1 + 40) UUID];
  MEMORY[0x22AAC6C00](a2, @"series_uuid", v4);

  v5 = [*(a1 + 40) sampleType];
  MEMORY[0x22AAC6B90](a2, @"series_type", [v5 code]);
}

+ (id)seriesForBuilder:(id)builder profile:(id)profile error:(id *)error
{
  v28[2] = *MEMORY[0x277D85DE8];
  v8 = MEMORY[0x277CBEB38];
  profileCopy = profile;
  builderCopy = builder;
  v11 = objc_alloc_init(v8);
  v12 = MEMORY[0x277D10B18];
  v13 = MEMORY[0x277CCABB0];
  persistentID = [builderCopy persistentID];

  v15 = [v13 numberWithLongLong:persistentID];
  v16 = _HDSQLiteValueForNumber();
  v17 = [v12 predicateWithProperty:@"workout_builder_id" equalToValue:v16];

  v28[0] = @"series_uuid";
  v28[1] = @"series_type";
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:2];
  database = [profileCopy database];

  v23 = MEMORY[0x277D85DD0];
  v24 = 3221225472;
  v25 = __73__HDWorkoutBuilderAssociatedSeriesEntity_seriesForBuilder_profile_error___block_invoke;
  v26 = &unk_278615128;
  v20 = v11;
  v27 = v20;
  LODWORD(error) = [self enumerateProperties:v18 withPredicate:v17 healthDatabase:database error:error enumerationHandler:&v23];

  if (error)
  {
    v21 = objc_msgSend_copy(v20, v23, v24, v25, v26);
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

uint64_t __73__HDWorkoutBuilderAssociatedSeriesEntity_seriesForBuilder_profile_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = HDSQLiteColumnWithNameAsUUID();
  v6 = [MEMORY[0x277CCD920] dataTypeWithCode:HDSQLiteColumnWithNameAsInt64()];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];

  return 1;
}

+ (BOOL)enumerateSeriesForBuilder:(id)builder transaction:(id)transaction error:(id *)error block:(id)block
{
  builderCopy = builder;
  blockCopy = block;
  v12 = MEMORY[0x277CCACA8];
  transactionCopy = transaction;
  disambiguatedDatabaseTable = [self disambiguatedDatabaseTable];
  v15 = [v12 stringWithFormat:@"SELECT %@ FROM %@ WHERE %@ = ?", @"series_uuid", disambiguatedDatabaseTable, @"workout_builder_id"];

  v16 = [transactionCopy databaseForEntityClass:self];

  v21 = blockCopy;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __92__HDWorkoutBuilderAssociatedSeriesEntity_enumerateSeriesForBuilder_transaction_error_block___block_invoke;
  v22[3] = &unk_278614860;
  v23 = builderCopy;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __92__HDWorkoutBuilderAssociatedSeriesEntity_enumerateSeriesForBuilder_transaction_error_block___block_invoke_2;
  v20[3] = &unk_278613B30;
  v17 = blockCopy;
  v18 = builderCopy;
  LOBYTE(error) = [v16 executeSQL:v15 error:error bindingHandler:v22 enumerationHandler:v20];

  return error;
}

uint64_t __92__HDWorkoutBuilderAssociatedSeriesEntity_enumerateSeriesForBuilder_transaction_error_block___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = [*(a1 + 32) persistentID];

  return sqlite3_bind_int64(a2, 1, v3);
}

uint64_t __92__HDWorkoutBuilderAssociatedSeriesEntity_enumerateSeriesForBuilder_transaction_error_block___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = HDSQLiteColumnWithNameAsUUID();
  v4 = (*(*(a1 + 32) + 16))();

  return v4;
}

+ (id)allBuilderAssociatedSeriesWithProfile:(id)profile error:(id *)error
{
  v16[1] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CBEB18];
  profileCopy = profile;
  v8 = objc_alloc_init(v6);
  v16[0] = @"series_uuid";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  database = [profileCopy database];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __86__HDWorkoutBuilderAssociatedSeriesEntity_allBuilderAssociatedSeriesWithProfile_error___block_invoke;
  v14[3] = &unk_278615128;
  v11 = v8;
  v15 = v11;
  LODWORD(self) = [self enumerateProperties:v9 withPredicate:0 healthDatabase:database error:error enumerationHandler:v14];

  v12 = 0;
  if (self)
  {
    v12 = objc_msgSend_copy(v11);
  }

  return v12;
}

uint64_t __86__HDWorkoutBuilderAssociatedSeriesEntity_allBuilderAssociatedSeriesWithProfile_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = HDSQLiteColumnWithNameAsUUID();
  [*(a1 + 32) addObject:v5];

  return 1;
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

+ (id)uniquedColumns
{
  v4[3] = *MEMORY[0x277D85DE8];
  v4[0] = @"workout_builder_id";
  v4[1] = @"series_uuid";
  v4[2] = @"series_type";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:3];

  return v2;
}

@end