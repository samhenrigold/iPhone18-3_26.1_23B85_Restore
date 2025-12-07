@interface HDMedicationOrderEntity
+ (id)entityEncoderForProfile:(id)profile transaction:(id)transaction purpose:(int64_t)purpose encodingOptions:(id)options authorizationFilter:(id)filter;
+ (id)insertDataObject:(id)object withProvenance:(id)provenance inDatabase:(id)database persistentID:(id)d error:(id *)error;
@end

@implementation HDMedicationOrderEntity

+ (id)insertDataObject:(id)object withProvenance:(id)provenance inDatabase:(id)database persistentID:(id)d error:(id *)error
{
  v27[12] = *MEMORY[0x277D85DE8];
  objectCopy = object;
  dCopy = d;
  databaseCopy = database;
  v15 = objc_opt_class();
  if (([v15 isEqual:objc_opt_class()] & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDMedicationOrderEntity.m" lineNumber:71 description:{@"Subclasses must override %s", "+[HDMedicationOrderEntity insertDataObject:withProvenance:inDatabase:persistentID:error:]"}];
  }

  v27[0] = @"data_id";
  v27[1] = @"medication_coding_collection";
  v27[2] = @"prescriber";
  v27[3] = @"number_of_fills";
  v27[4] = @"dosages";
  v27[5] = @"earliest_dosage_date";
  v27[6] = @"written_date";
  v27[7] = @"ended_date";
  v27[8] = @"status_coding";
  v27[9] = @"reason_coding_collections";
  v27[10] = @"reason_ended_coding_collection";
  v27[11] = @"status_reason_coding_collection";
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:12];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __89__HDMedicationOrderEntity_insertDataObject_withProvenance_inDatabase_persistentID_error___block_invoke;
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

void __89__HDMedicationOrderEntity_insertDataObject_withProvenance_inDatabase_persistentID_error___block_invoke(uint64_t a1, uint64_t a2)
{
  MEMORY[0x22AAC6B90](a2, @"data_id", [*(a1 + 32) longLongValue]);
  v4 = [*(a1 + 40) medicationCodingCollection];
  HDSQLiteBindSecureCodingObjectToProperty();

  v5 = [*(a1 + 40) prescriber];
  MEMORY[0x22AAC6BD0](a2, @"prescriber", v5);

  MEMORY[0x22AAC6B90](a2, @"number_of_fills", [*(a1 + 40) numberOfFills]);
  v6 = [*(a1 + 40) dosages];
  HDSQLiteBindSecureCodingObjectToProperty();

  v7 = [*(a1 + 40) earliestDosageDate];
  HDSQLiteBindSecureCodingObjectToProperty();

  v8 = [*(a1 + 40) writtenDate];
  HDSQLiteBindSecureCodingObjectToProperty();

  v9 = [*(a1 + 40) endedDate];
  HDSQLiteBindSecureCodingObjectToProperty();

  v10 = [*(a1 + 40) statusCoding];
  HDSQLiteBindSecureCodingObjectToProperty();

  v11 = [*(a1 + 40) reasonCodingCollections];
  HDSQLiteBindSecureCodingObjectToProperty();

  v12 = [*(a1 + 40) reasonEndedCodingCollection];
  HDSQLiteBindSecureCodingObjectToProperty();

  v13 = [*(a1 + 40) statusReasonCodingCollection];
  HDSQLiteBindSecureCodingObjectToProperty();
}

+ (id)entityEncoderForProfile:(id)profile transaction:(id)transaction purpose:(int64_t)purpose encodingOptions:(id)options authorizationFilter:(id)filter
{
  filterCopy = filter;
  optionsCopy = options;
  transactionCopy = transaction;
  profileCopy = profile;
  v15 = [(_HDMedicalRecordEntityEncoder *)[_HDMedicationOrderEntityEncoder alloc] initWithHealthEntityClass:objc_opt_class() profile:profileCopy transaction:transactionCopy purpose:purpose encodingOptions:optionsCopy authorizationFilter:filterCopy];

  return v15;
}

@end