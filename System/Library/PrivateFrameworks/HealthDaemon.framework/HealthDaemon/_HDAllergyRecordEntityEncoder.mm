@interface _HDAllergyRecordEntityEncoder
- (BOOL)applyPropertiesToObject:(id)object persistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error;
- (id)createBareObjectWithRow:(HDSQLiteRow *)row;
- (id)orderedProperties;
@end

@implementation _HDAllergyRecordEntityEncoder

- (id)orderedProperties
{
  v8[11] = *MEMORY[0x277D85DE8];
  v8[0] = @"allergy_coding_collection";
  v8[1] = @"onset_date";
  v8[2] = @"asserter";
  v8[3] = @"reactions";
  v8[4] = @"criticality_coding";
  v8[5] = @"last_occurrence_date";
  v8[6] = @"recorded_date";
  v8[7] = @"verification_status_coding";
  v8[8] = @"clinical_status_coding";
  v8[9] = @"allergy_type_coding";
  v8[10] = @"category_coding";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:11];
  superclassEncoder = [(HDEntityEncoder *)self superclassEncoder];
  orderedProperties = [superclassEncoder orderedProperties];
  v6 = [v3 arrayByAddingObjectsFromArray:orderedProperties];

  return v6;
}

- (id)createBareObjectWithRow:(HDSQLiteRow *)row
{
  _init = [objc_alloc(MEMORY[0x277CCCFD0]) _init];

  return _init;
}

- (BOOL)applyPropertiesToObject:(id)object persistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error
{
  objectCopy = object;
  superclassEncoder = [(HDEntityEncoder *)self superclassEncoder];
  v12 = [superclassEncoder applyPropertiesToObject:objectCopy persistentID:d row:row error:error];

  if (v12)
  {
    objc_opt_class();
    v27 = HDSQLiteColumnWithNameAsObject();
    [objectCopy _setAllergyCodingCollection:v27];
    objc_opt_class();
    v26 = HDSQLiteColumnWithNameAsObject();
    [objectCopy _setOnsetDate:v26];
    v25 = HDSQLiteColumnWithNameAsString();
    [objectCopy _setAsserter:v25];
    v13 = MEMORY[0x277CBEB98];
    v14 = objc_opt_class();
    v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
    v24 = HDSQLiteColumnWithNameAsObjectWithClasses();

    [objectCopy _setReactions:v24];
    objc_opt_class();
    v16 = HDSQLiteColumnWithNameAsObject();
    [objectCopy _setCriticalityCoding:v16];
    objc_opt_class();
    v17 = HDSQLiteColumnWithNameAsObject();
    [objectCopy _setLastOccurrenceDate:v17];
    objc_opt_class();
    v18 = HDSQLiteColumnWithNameAsObject();
    [objectCopy _setRecordedDate:v18];
    objc_opt_class();
    v19 = HDSQLiteColumnWithNameAsObject();
    [objectCopy _setVerificationStatusCoding:v19];
    objc_opt_class();
    v20 = HDSQLiteColumnWithNameAsObject();
    [objectCopy _setClinicalStatusCoding:v20];
    objc_opt_class();
    v21 = HDSQLiteColumnWithNameAsObject();
    [objectCopy _setAllergyTypeCoding:v21];
    objc_opt_class();
    v22 = HDSQLiteColumnWithNameAsObject();
    [objectCopy _setCategoryCoding:v22];
  }

  return v12;
}

@end