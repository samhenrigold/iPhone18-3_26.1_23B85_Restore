@interface _HDMedicationDispenseRecordEntityEncoder
- (BOOL)applyPropertiesToObject:(id)object persistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error;
- (id)createBareObjectWithRow:(HDSQLiteRow *)row;
- (id)orderedProperties;
@end

@implementation _HDMedicationDispenseRecordEntityEncoder

- (id)orderedProperties
{
  v8[8] = *MEMORY[0x277D85DE8];
  v8[0] = @"medication_codings";
  v8[1] = @"quantity_dispensed";
  v8[2] = @"preparation_date";
  v8[3] = @"hand_over_date";
  v8[4] = @"dosages";
  v8[5] = @"earliest_dosage_date";
  v8[6] = @"status_coding";
  v8[7] = @"days_supply_quantity";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:8];
  superclassEncoder = [(HDEntityEncoder *)self superclassEncoder];
  orderedProperties = [superclassEncoder orderedProperties];
  v6 = [v3 arrayByAddingObjectsFromArray:orderedProperties];

  return v6;
}

- (id)createBareObjectWithRow:(HDSQLiteRow *)row
{
  _init = [objc_alloc(MEMORY[0x277CCD630]) _init];

  return _init;
}

- (BOOL)applyPropertiesToObject:(id)object persistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error
{
  objectCopy = object;
  superclassEncoder = [(HDEntityEncoder *)self superclassEncoder];
  v12 = [superclassEncoder applyPropertiesToObject:objectCopy persistentID:d row:row error:error];

  if (v12)
  {
    v13 = MEMORY[0x277CBEB98];
    v14 = objc_opt_class();
    v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
    v16 = HDSQLiteColumnWithNameAsObjectWithClasses();

    [objectCopy _setMedicationCodings:v16];
    objc_opt_class();
    v17 = HDSQLiteColumnWithNameAsObject();
    [objectCopy _setQuantityDispensed:v17];
    objc_opt_class();
    v18 = HDSQLiteColumnWithNameAsObject();
    [objectCopy _setPreparationDate:v18];
    objc_opt_class();
    v19 = HDSQLiteColumnWithNameAsObject();
    [objectCopy _setHandOverDate:v19];
    v20 = MEMORY[0x277CBEB98];
    v21 = objc_opt_class();
    v22 = [v20 setWithObjects:{v21, objc_opt_class(), 0}];
    v23 = HDSQLiteColumnWithNameAsObjectWithClasses();

    [objectCopy _setDosages:v23];
    objc_opt_class();
    v24 = HDSQLiteColumnWithNameAsObject();
    [objectCopy _setEarliestDosageDate:v24];
    objc_opt_class();
    v25 = HDSQLiteColumnWithNameAsObject();
    [objectCopy _setStatusCoding:v25];
    objc_opt_class();
    v26 = HDSQLiteColumnWithNameAsObject();
    [objectCopy _setDaysSupplyQuantity:v26];
  }

  return v12;
}

@end