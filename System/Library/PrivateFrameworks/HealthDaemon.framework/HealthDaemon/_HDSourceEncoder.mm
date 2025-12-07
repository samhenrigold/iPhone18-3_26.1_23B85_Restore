@interface _HDSourceEncoder
- (BOOL)applyPropertiesToObject:(id)object persistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error;
- (id)codableRepresentationForPersistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error;
- (id)createBareObjectWithRow:(HDSQLiteRow *)row;
- (id)orderedProperties;
@end

@implementation _HDSourceEncoder

- (id)orderedProperties
{
  v8[10] = *MEMORY[0x277D85DE8];
  purpose = [(HDEntityEncoder *)self purpose];
  if (purpose == 1)
  {
    v7[0] = @"name";
    v7[1] = @"source_options";
    v7[2] = @"local_device";
    v7[3] = @"product_type";
    v7[4] = @"mod_date";
    v7[5] = @"logical_source_id";
    v7[6] = @"logical_sources.bundle_id";
    v7[7] = @"logical_sources.owner_bundle_id";
    v3 = MEMORY[0x277CBEA60];
    v4 = v7;
    v5 = 8;
  }

  else
  {
    if (purpose)
    {
      goto LABEL_6;
    }

    v8[0] = @"uuid";
    v8[1] = @"name";
    v8[2] = @"source_options";
    v8[3] = @"product_type";
    v8[4] = @"deleted";
    v8[5] = @"mod_date";
    v8[6] = @"logical_source_id";
    v8[7] = @"sync_identity";
    v8[8] = @"logical_sources.bundle_id";
    v8[9] = @"logical_sources.owner_bundle_id";
    v3 = MEMORY[0x277CBEA60];
    v4 = v8;
    v5 = 10;
  }

  purpose = [v3 arrayWithObjects:v4 count:v5];
LABEL_6:

  return purpose;
}

- (id)codableRepresentationForPersistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error
{
  v6 = objc_alloc_init(HDCodableSource);
  v7 = HDSQLiteColumnWithNameAsData();
  [(HDCodableSource *)v6 setUuid:v7];

  v8 = HDSQLiteColumnWithNameAsString();
  [(HDCodableSource *)v6 setName:v8];

  v9 = HDSQLiteColumnWithNameAsString();
  [(HDCodableSource *)v6 setProductType:v9];

  [(HDCodableSource *)v6 setDeleted:HDSQLiteColumnWithNameAsBoolean()];
  v10 = HDSQLiteColumnWithNameAsInt64();
  if (v10)
  {
    [(HDCodableSource *)v6 setOptions:v10];
  }

  HDSQLiteColumnWithNameAsDouble();
  [(HDCodableSource *)v6 setModificationDate:?];
  v11 = HDSQLiteColumnWithNameAsString();
  if (v11)
  {
    [(HDCodableSource *)v6 setBundleIdentifier:v11];
    v12 = HDSQLiteColumnWithNameAsString();
    if (v12)
    {
      [(HDCodableSource *)v6 setOwningAppBundleIdentifier:v12];
    }

    v13 = v6;
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:error code:1401 description:@"Bundle identifier not present in Source codable"];
    v13 = 0;
  }

  return v13;
}

- (id)createBareObjectWithRow:(HDSQLiteRow *)row
{
  _init = [objc_alloc(MEMORY[0x277CCDA00]) _init];

  return _init;
}

- (BOOL)applyPropertiesToObject:(id)object persistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error
{
  objectCopy = object;
  superclassEncoder = [(HDEntityEncoder *)self superclassEncoder];

  if (superclassEncoder)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDSourceEntity.m" lineNumber:855 description:{@"Invalid parameter not satisfying: %@", @"[self superclassEncoder] == nil"}];
  }

  v11 = HDSQLiteColumnWithNameAsString();
  [objectCopy _setName:v11];

  [objectCopy _setOptions:HDSQLiteColumnWithNameAsInt64()];
  [objectCopy _setLocalDevice:HDSQLiteColumnWithNameAsBoolean()];
  v12 = HDSQLiteColumnWithNameAsString();
  [objectCopy _setProductType:v12];

  v13 = [MEMORY[0x277CCABB0] numberWithLongLong:d];
  [objectCopy _setSourceID:v13];

  v14 = HDSQLiteColumnWithNameAsString();
  [objectCopy _setBundleIdentifier:v14];

  v15 = HDSQLiteColumnWithNameAsString();
  [objectCopy _setOwningAppBundleIdentifier:v15];

  v16 = HDSQLiteColumnWithNameAsDate();
  [objectCopy _setModificationDate:v16];

  return 1;
}

@end