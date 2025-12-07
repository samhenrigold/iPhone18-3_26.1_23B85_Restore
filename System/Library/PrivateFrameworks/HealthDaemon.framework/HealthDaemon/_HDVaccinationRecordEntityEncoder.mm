@interface _HDVaccinationRecordEntityEncoder
- (BOOL)applyPropertiesToObject:(id)object persistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error;
- (id)createBareObjectWithRow:(HDSQLiteRow *)row;
- (id)orderedProperties;
@end

@implementation _HDVaccinationRecordEntityEncoder

- (id)orderedProperties
{
  v8[15] = *MEMORY[0x277D85DE8];
  v8[0] = @"vaccination_codings";
  v8[1] = @"expiration_date";
  v8[2] = @"dose_number";
  v8[3] = @"dose_quantity";
  v8[4] = @"lot_number";
  v8[5] = @"performer";
  v8[6] = @"body_site_codings";
  v8[7] = @"reaction";
  v8[8] = @"not_given";
  v8[9] = @"administration_date";
  v8[10] = @"status_coding";
  v8[11] = @"patient_reported";
  v8[12] = @"route_codings";
  v8[13] = @"reasons_codings";
  v8[14] = @"reasons_not_given_codings";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:15];
  superclassEncoder = [(HDEntityEncoder *)self superclassEncoder];
  orderedProperties = [superclassEncoder orderedProperties];
  v6 = [v3 arrayByAddingObjectsFromArray:orderedProperties];

  return v6;
}

- (id)createBareObjectWithRow:(HDSQLiteRow *)row
{
  _init = [objc_alloc(MEMORY[0x277CCDB78]) _init];

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
    v41 = HDSQLiteColumnWithNameAsObjectWithClasses();

    [objectCopy _setVaccinationCodings:v41];
    objc_opt_class();
    v40 = HDSQLiteColumnWithNameAsObject();
    [objectCopy _setExpirationDate:v40];
    v39 = HDSQLiteColumnWithNameAsString();
    [objectCopy _setDoseNumber:v39];
    v38 = HDSQLiteColumnWithNameAsString();
    [objectCopy _setDoseQuantity:v38];
    v37 = HDSQLiteColumnWithNameAsString();
    [objectCopy _setLotNumber:v37];
    v36 = HDSQLiteColumnWithNameAsString();
    [objectCopy _setPerformer:v36];
    v16 = MEMORY[0x277CBEB98];
    v17 = objc_opt_class();
    v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
    v35 = HDSQLiteColumnWithNameAsObjectWithClasses();

    [objectCopy _setBodySiteCodings:v35];
    v34 = HDSQLiteColumnWithNameAsString();
    [objectCopy _setReaction:v34];
    [objectCopy _setNotGiven:HDSQLiteColumnWithNameAsBoolean()];
    objc_opt_class();
    v33 = HDSQLiteColumnWithNameAsObject();
    [objectCopy _setAdministrationDate:v33];
    objc_opt_class();
    v19 = HDSQLiteColumnWithNameAsObject();
    [objectCopy _setStatusCoding:v19];
    [objectCopy _setPatientReported:HDSQLiteColumnWithNameAsBoolean()];
    v20 = MEMORY[0x277CBEB98];
    v21 = objc_opt_class();
    v22 = [v20 setWithObjects:{v21, objc_opt_class(), 0}];
    v23 = HDSQLiteColumnWithNameAsObjectWithClasses();

    [objectCopy _setRouteCodings:v23];
    v24 = MEMORY[0x277CBEB98];
    v25 = objc_opt_class();
    v26 = [v24 setWithObjects:{v25, objc_opt_class(), 0}];
    v27 = HDSQLiteColumnWithNameAsObjectWithClasses();

    [objectCopy _setReasonsCodings:v27];
    v28 = MEMORY[0x277CBEB98];
    v29 = objc_opt_class();
    v30 = [v28 setWithObjects:{v29, objc_opt_class(), 0}];
    v31 = HDSQLiteColumnWithNameAsObjectWithClasses();

    [objectCopy _setReasonsNotGivenCodings:v31];
  }

  return v12;
}

@end