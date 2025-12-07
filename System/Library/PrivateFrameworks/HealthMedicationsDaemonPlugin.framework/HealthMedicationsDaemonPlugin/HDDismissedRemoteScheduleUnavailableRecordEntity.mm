@interface HDDismissedRemoteScheduleUnavailableRecordEntity
+ (BOOL)_insertRemoteScheduleUnavailableRecord:(void *)record transaction:(uint64_t)transaction error:;
+ (BOOL)enumerateDismissedRemoteScheduleUnavailableRecordEntitiesWithPredicate:(id)predicate transaction:(id)transaction error:(id *)error enumerationHandler:(id)handler;
+ (BOOL)insertDismissedRemoteScheduleUnavailableRecords:(id)records profile:(id)profile error:(id *)error;
+ (id)_propertiesForEntity;
+ (id)uniquedColumns;
@end

@implementation HDDismissedRemoteScheduleUnavailableRecordEntity

+ (id)uniquedColumns
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = @"medication_identifier";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

+ (BOOL)enumerateDismissedRemoteScheduleUnavailableRecordEntitiesWithPredicate:(id)predicate transaction:(id)transaction error:(id *)error enumerationHandler:(id)handler
{
  handlerCopy = handler;
  predicateCopy = predicate;
  v12 = [transaction databaseForEntityClass:self];
  v13 = [self queryWithDatabase:v12 predicate:predicateCopy];

  v14 = +[(HDDismissedRemoteScheduleUnavailableRecordEntity *)self];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __160__HDDismissedRemoteScheduleUnavailableRecordEntity_enumerateDismissedRemoteScheduleUnavailableRecordEntitiesWithPredicate_transaction_error_enumerationHandler___block_invoke;
  v17[3] = &unk_2796CDFB0;
  v18 = handlerCopy;
  v15 = handlerCopy;
  LOBYTE(error) = [v13 enumerateProperties:v14 error:error enumerationHandler:v17];

  return error;
}

+ (id)_propertiesForEntity
{
  v3[5] = *MEMORY[0x277D85DE8];
  objc_opt_self();
  v3[0] = @"medication_identifier";
  v3[1] = @"schedule_type";
  v3[2] = @"schedule_compatibility_version";
  v3[3] = @"device_identifiers";
  v3[4] = @"creation_date";
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:5];

  return v1;
}

uint64_t __160__HDDismissedRemoteScheduleUnavailableRecordEntity_enumerateDismissedRemoteScheduleUnavailableRecordEntitiesWithPredicate_transaction_error_enumerationHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = HDSQLiteColumnWithNameAsString();
  v5 = HDSQLiteColumnWithNameAsInt64();
  v6 = HDSQLiteColumnWithNameAsInt64();
  v7 = HDSQLiteColumnWithNameAsString();
  v8 = HDSQLiteColumnWithNameAsDate();
  v9 = [v7 componentsSeparatedByString:*MEMORY[0x277D115F8]];
  v10 = [v9 hk_map:&__block_literal_global_10];
  v11 = [objc_alloc(MEMORY[0x277D11500]) _initWithMedicationIdentifier:v4 scheduleType:v5 scheduleCompatibilityVersion:v6 deviceIdentifiers:v10 creationDate:v8];
  v12 = (*(*(a1 + 32) + 16))();

  return v12;
}

id __160__HDDismissedRemoteScheduleUnavailableRecordEntity_enumerateDismissedRemoteScheduleUnavailableRecordEntitiesWithPredicate_transaction_error_enumerationHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCAD78];
  v3 = a2;
  v4 = [[v2 alloc] initWithUUIDString:v3];

  return v4;
}

+ (BOOL)insertDismissedRemoteScheduleUnavailableRecords:(id)records profile:(id)profile error:(id *)error
{
  profileCopy = profile;
  recordsCopy = records;
  v9 = [[HDDismissedRemoteScheduleUnavailableRecordInsertOperation alloc] initWithRemoteScheduleUnavailableRecords:recordsCopy];

  LOBYTE(error) = [(HDJournalableOperation *)v9 performOrJournalWithProfile:profileCopy error:error];
  return error;
}

+ (BOOL)_insertRemoteScheduleUnavailableRecord:(void *)record transaction:(uint64_t)transaction error:
{
  v6 = a2;
  recordCopy = record;
  v8 = objc_opt_self();
  v9 = [recordCopy databaseForEntityClass:v8];

  v10 = +[(HDDismissedRemoteScheduleUnavailableRecordEntity *)v8];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __109__HDDismissedRemoteScheduleUnavailableRecordEntity__insertRemoteScheduleUnavailableRecord_transaction_error___block_invoke;
  v15[3] = &unk_2796CDFD8;
  v16 = v6;
  v11 = v6;
  v12 = [v8 insertOrReplaceEntity:1 database:v9 properties:v10 error:transaction bindingHandler:v15];
  v13 = v12 != 0;

  return v13;
}

void __109__HDDismissedRemoteScheduleUnavailableRecordEntity__insertRemoteScheduleUnavailableRecord_transaction_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) medicationIdentifier];
  MEMORY[0x253084420](a2, @"medication_identifier", v4);

  MEMORY[0x2530843E0](a2, @"schedule_type", [*(a1 + 32) scheduleType]);
  MEMORY[0x2530843E0](a2, @"schedule_compatibility_version", [*(a1 + 32) scheduleCompatibilityVersion]);
  v5 = [*(a1 + 32) deviceIdentifiersDatabaseString];
  MEMORY[0x253084420](a2, @"device_identifiers", v5);

  v6 = [*(a1 + 32) creationDate];
  MEMORY[0x2530843B0](a2, @"creation_date", v6);
}

@end