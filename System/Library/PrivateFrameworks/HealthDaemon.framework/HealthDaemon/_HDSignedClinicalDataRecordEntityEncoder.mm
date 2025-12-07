@interface _HDSignedClinicalDataRecordEntityEncoder
- (BOOL)applyPropertiesToObject:(id)object persistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error;
- (id)createBareObjectWithRow:(HDSQLiteRow *)row;
- (id)orderedProperties;
@end

@implementation _HDSignedClinicalDataRecordEntityEncoder

- (id)orderedProperties
{
  v8[10] = *MEMORY[0x277D85DE8];
  v8[0] = @"credential_types";
  v8[1] = @"issuer_identifier";
  v8[2] = @"issued_date";
  v8[3] = @"relevant_date";
  v8[4] = @"expiration_date";
  v8[5] = @"signature_status";
  v8[6] = @"subject";
  v8[7] = @"items";
  v8[8] = @"data_value";
  v8[9] = @"source_type";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:10];
  superclassEncoder = [(HDEntityEncoder *)self superclassEncoder];
  orderedProperties = [superclassEncoder orderedProperties];
  v6 = [v3 arrayByAddingObjectsFromArray:orderedProperties];

  return v6;
}

- (id)createBareObjectWithRow:(HDSQLiteRow *)row
{
  _init = [objc_alloc(MEMORY[0x277CCD998]) _init];

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
    v27 = HDSQLiteColumnWithNameAsObjectWithClasses();

    [objectCopy _setCredentialTypes:v27];
    v16 = HDSQLiteColumnWithNameAsString();
    [objectCopy _setIssuerIdentifier:v16];
    v17 = HDSQLiteColumnWithNameAsDate();
    [objectCopy _setIssuedDate:v17];
    v18 = HDSQLiteColumnWithNameAsDate();
    [objectCopy _setRelevantDate:v18];
    v19 = HDSQLiteColumnWithNameAsDate();
    [objectCopy _setExpirationDate:v19];
    [objectCopy _setSignatureStatus:HDSQLiteColumnWithNameAsInt64()];
    objc_opt_class();
    v20 = HDSQLiteColumnWithNameAsObject();
    [objectCopy _setSubject:v20];
    v21 = MEMORY[0x277CBEB98];
    v22 = objc_opt_class();
    v23 = [v21 setWithObjects:{v22, objc_opt_class(), 0}];
    v24 = HDSQLiteColumnWithNameAsObjectWithClasses();

    [objectCopy _setItems:v24];
    v25 = HDSQLiteColumnWithNameAsData();
    [objectCopy _setDataValue:v25];
    [objectCopy _setSourceType:HDSQLiteColumnWithNameAsInt64()];
  }

  return v12;
}

@end