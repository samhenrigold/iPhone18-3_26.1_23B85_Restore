@interface _HDVerifiableClinicalRecordEntityEncoder
- (BOOL)applyPropertiesToObject:(id)object persistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error;
- (id)createBareObjectWithRow:(HDSQLiteRow *)row;
- (id)orderedProperties;
@end

@implementation _HDVerifiableClinicalRecordEntityEncoder

- (id)orderedProperties
{
  v8[10] = *MEMORY[0x277D85DE8];
  v8[0] = @"record_types";
  v8[1] = @"issued_date";
  v8[2] = @"relevant_date";
  v8[3] = @"expiration_date";
  v8[4] = @"issuer_identifier";
  v8[5] = @"subject";
  v8[6] = @"item_names";
  v8[7] = @"jws_representation";
  v8[8] = @"origin_identifier";
  v8[9] = @"source_type";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:10];
  superclassEncoder = [(HDEntityEncoder *)self superclassEncoder];
  orderedProperties = [superclassEncoder orderedProperties];
  v6 = [v3 arrayByAddingObjectsFromArray:orderedProperties];

  return v6;
}

- (id)createBareObjectWithRow:(HDSQLiteRow *)row
{
  _init = [objc_alloc(MEMORY[0x277CCDBA8]) _init];

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
    v28 = HDSQLiteColumnWithNameAsObjectWithClasses();

    [objectCopy _setRecordTypes:v28];
    v27 = HDSQLiteColumnWithNameAsDate();
    [objectCopy _setIssuedDate:v27];
    v16 = HDSQLiteColumnWithNameAsDate();
    [objectCopy _setRelevantDate:v16];
    v17 = HDSQLiteColumnWithNameAsDate();
    [objectCopy _setExpirationDate:v17];
    v18 = HDSQLiteColumnWithNameAsString();
    [objectCopy _setIssuerIdentifier:v18];
    objc_opt_class();
    v19 = HDSQLiteColumnWithNameAsObject();
    [objectCopy _setSubject:v19];
    v20 = MEMORY[0x277CBEB98];
    v21 = objc_opt_class();
    v22 = [v20 setWithObjects:{v21, objc_opt_class(), 0}];
    v23 = HDSQLiteColumnWithNameAsObjectWithClasses();

    [objectCopy _setItemNames:v23];
    v24 = HDSQLiteColumnWithNameAsData();
    [objectCopy _setDataRepresentation:v24];
    v25 = HDSQLiteColumnWithNameAsUUID();
    [objectCopy _setOriginIdentifier:v25];
    [objectCopy _setSourceType:HDSQLiteColumnWithNameAsInt64()];
  }

  return v12;
}

@end