@interface HDDiagnosticTestResultEntity
+ (id)entityEncoderForProfile:(id)profile transaction:(id)transaction purpose:(int64_t)purpose encodingOptions:(id)options authorizationFilter:(id)filter;
+ (id)insertDataObject:(id)object withProvenance:(id)provenance inDatabase:(id)database persistentID:(id)d error:(id *)error;
@end

@implementation HDDiagnosticTestResultEntity

+ (id)insertDataObject:(id)object withProvenance:(id)provenance inDatabase:(id)database persistentID:(id)d error:(id *)error
{
  v27[16] = *MEMORY[0x277D85DE8];
  objectCopy = object;
  dCopy = d;
  databaseCopy = database;
  v15 = objc_opt_class();
  if (([v15 isEqual:objc_opt_class()] & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDDiagnosticTestResultEntity.m" lineNumber:79 description:{@"Subclasses must override %s", "+[HDDiagnosticTestResultEntity insertDataObject:withProvenance:inDatabase:persistentID:error:]"}];
  }

  v27[0] = @"data_id";
  v27[1] = @"diagnostic_test_coding_collection";
  v27[2] = @"value";
  v27[3] = @"reference_ranges";
  v27[4] = @"effective_start_date";
  v27[5] = @"category";
  v27[6] = @"categories_coding_collections";
  v27[7] = @"issue_date";
  v27[8] = @"effective_end_date";
  v27[9] = @"status_coding";
  v27[10] = @"interpretation_coding_collections";
  v27[11] = @"comments";
  v27[12] = @"body_site_coding_collection";
  v27[13] = @"method_coding_collection";
  v27[14] = @"performers";
  v27[15] = @"reference_range_status";
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:16];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __94__HDDiagnosticTestResultEntity_insertDataObject_withProvenance_inDatabase_persistentID_error___block_invoke;
  v24[3] = &unk_278613DE8;
  v25 = dCopy;
  v26 = objectCopy;
  v17 = objectCopy;
  v18 = dCopy;
  v19 = [self insertOrReplaceEntity:1 database:databaseCopy properties:v16 error:error bindingHandler:v24];

  if (v19)
  {
    v20 = v18;
  }

  else
  {
    v20 = 0;
  }

  v21 = v20;

  return v20;
}

void __94__HDDiagnosticTestResultEntity_insertDataObject_withProvenance_inDatabase_persistentID_error___block_invoke(uint64_t a1, uint64_t a2)
{
  MEMORY[0x22AAC6B90](a2, @"data_id", [*(a1 + 32) longLongValue]);
  v4 = [*(a1 + 40) diagnosticTestCodingCollection];
  HDSQLiteBindSecureCodingObjectToProperty();

  v5 = [*(a1 + 40) value];
  HDSQLiteBindSecureCodingObjectToProperty();

  v6 = [*(a1 + 40) referenceRanges];
  HDSQLiteBindSecureCodingObjectToProperty();

  v7 = [*(a1 + 40) effectiveStartDate];
  HDSQLiteBindSecureCodingObjectToProperty();

  v8 = [*(a1 + 40) category];
  MEMORY[0x22AAC6BD0](a2, @"category", v8);

  v9 = [*(a1 + 40) categoriesCodingCollections];
  HDSQLiteBindSecureCodingObjectToProperty();

  v10 = [*(a1 + 40) issueDate];
  HDSQLiteBindSecureCodingObjectToProperty();

  v11 = [*(a1 + 40) effectiveEndDate];
  HDSQLiteBindSecureCodingObjectToProperty();

  v12 = [*(a1 + 40) statusCoding];
  HDSQLiteBindSecureCodingObjectToProperty();

  v13 = [*(a1 + 40) interpretationCodingCollections];
  HDSQLiteBindSecureCodingObjectToProperty();

  v14 = [*(a1 + 40) comments];
  MEMORY[0x22AAC6BD0](a2, @"comments", v14);

  v15 = [*(a1 + 40) bodySiteCodingCollection];
  HDSQLiteBindSecureCodingObjectToProperty();

  v16 = [*(a1 + 40) methodCodingCollection];
  HDSQLiteBindSecureCodingObjectToProperty();

  v17 = [*(a1 + 40) performers];
  HDSQLiteBindSecureCodingObjectToProperty();

  [*(a1 + 40) referenceRangeStatus];

  JUMPOUT(0x22AAC6B90);
}

+ (id)entityEncoderForProfile:(id)profile transaction:(id)transaction purpose:(int64_t)purpose encodingOptions:(id)options authorizationFilter:(id)filter
{
  filterCopy = filter;
  optionsCopy = options;
  transactionCopy = transaction;
  profileCopy = profile;
  v15 = [(_HDMedicalRecordEntityEncoder *)[_HDDiagnosticTestResultEntityEncoder alloc] initWithHealthEntityClass:objc_opt_class() profile:profileCopy transaction:transactionCopy purpose:purpose encodingOptions:optionsCopy authorizationFilter:filterCopy];

  return v15;
}

@end