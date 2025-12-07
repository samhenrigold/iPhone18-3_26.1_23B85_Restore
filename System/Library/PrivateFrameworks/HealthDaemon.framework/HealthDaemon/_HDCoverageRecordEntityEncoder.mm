@interface _HDCoverageRecordEntityEncoder
- (BOOL)applyPropertiesToObject:(id)object persistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error;
- (id)createBareObjectWithRow:(HDSQLiteRow *)row;
- (id)orderedProperties;
@end

@implementation _HDCoverageRecordEntityEncoder

- (id)orderedProperties
{
  v8[14] = *MEMORY[0x277D85DE8];
  v8[0] = @"status_coding";
  v8[1] = @"coverage_type_coding_collection";
  v8[2] = @"subscriber";
  v8[3] = @"subscriber_id";
  v8[4] = @"beneficiary";
  v8[5] = @"policy_holder";
  v8[6] = @"payor";
  v8[7] = @"relationship_coding_collection";
  v8[8] = @"classification";
  v8[9] = @"network";
  v8[10] = @"period_start_date";
  v8[11] = @"period_end_date";
  v8[12] = @"subscriber_identifier";
  v8[13] = @"beneficiary_identifier";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:14];
  superclassEncoder = [(HDEntityEncoder *)self superclassEncoder];
  orderedProperties = [superclassEncoder orderedProperties];
  v6 = [v3 arrayByAddingObjectsFromArray:orderedProperties];

  return v6;
}

- (id)createBareObjectWithRow:(HDSQLiteRow *)row
{
  _init = [objc_alloc(MEMORY[0x277CCD270]) _init];

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
    v33 = HDSQLiteColumnWithNameAsObject();
    [objectCopy _setStatusCoding:v33];
    objc_opt_class();
    v32 = HDSQLiteColumnWithNameAsObject();
    [objectCopy _setCoverageTypeCodingCollection:v32];
    v31 = HDSQLiteColumnWithNameAsString();
    [objectCopy _setSubscriber:v31];
    v30 = HDSQLiteColumnWithNameAsString();
    [objectCopy _setSubscriberId:v30];
    v29 = HDSQLiteColumnWithNameAsString();
    [objectCopy _setBeneficiary:v29];
    v28 = HDSQLiteColumnWithNameAsString();
    [objectCopy _setPolicyHolder:v28];
    v13 = MEMORY[0x277CBEB98];
    v14 = objc_opt_class();
    v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
    v27 = HDSQLiteColumnWithNameAsObjectWithClasses();

    [objectCopy _setPayor:v27];
    objc_opt_class();
    v16 = HDSQLiteColumnWithNameAsObject();
    [objectCopy _setRelationshipCodingCollection:v16];
    v17 = MEMORY[0x277CBEB98];
    v18 = objc_opt_class();
    v19 = [v17 setWithObjects:{v18, objc_opt_class(), 0}];
    v20 = HDSQLiteColumnWithNameAsObjectWithClasses();

    [objectCopy _setClassification:v20];
    v21 = HDSQLiteColumnWithNameAsString();
    [objectCopy _setNetwork:v21];
    objc_opt_class();
    v22 = HDSQLiteColumnWithNameAsObject();
    [objectCopy _setPeriodStartDate:v22];
    objc_opt_class();
    v23 = HDSQLiteColumnWithNameAsObject();
    [objectCopy _setPeriodEndDate:v23];
    objc_opt_class();
    v24 = HDSQLiteColumnWithNameAsObject();
    [objectCopy _setSubscriberIdentifier:v24];
    objc_opt_class();
    v25 = HDSQLiteColumnWithNameAsObject();
    [objectCopy _setBeneficiaryIdentifier:v25];
  }

  return v12;
}

@end