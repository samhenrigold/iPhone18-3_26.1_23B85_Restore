@interface _HDDeletedSampleEntityEncoder
- (BOOL)applyPropertiesToObject:(id)object persistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error;
- (id)codableRepresentationForPersistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error;
- (id)objectForPersistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error;
- (id)orderedProperties;
@end

@implementation _HDDeletedSampleEntityEncoder

- (id)orderedProperties
{
  v4[9] = *MEMORY[0x277D85DE8];
  v4[0] = @"uuid";
  v4[1] = @"creation_date";
  v4[2] = @"provenance";
  v4[3] = @"data_type";
  v4[4] = @"start_date";
  v4[5] = @"end_date";
  v4[6] = @"external_sync_ids.sid";
  v4[7] = @"external_sync_ids.version";
  v4[8] = @"external_sync_ids.object_code";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:9];

  return v2;
}

- (id)codableRepresentationForPersistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error
{
  v6 = objc_alloc_init(HDCodableHealthObject);
  v7 = [HDDeletedSampleEntity _externalSyncMetadataForRow:row];
  hk_codableMetadata = [v7 hk_codableMetadata];
  [(HDCodableHealthObject *)v6 setMetadataDictionary:hk_codableMetadata];

  v9 = HDSQLiteColumnWithNameAsData();
  [(HDCodableHealthObject *)v6 setUuid:v9];

  HDSQLiteColumnWithNameAsDouble();
  [(HDCodableHealthObject *)v6 setCreationDate:?];
  if ((HDSQLiteColumnWithNameIsNull() & 1) == 0)
  {
    [(HDCodableHealthObject *)v6 setExternalSyncObjectCode:HDSQLiteColumnWithNameAsInt64()];
  }

  v10 = objc_alloc_init(HDCodableSample);
  [(HDCodableSample *)v10 setObject:v6];
  [(HDCodableSample *)v10 setDataType:HDSQLiteColumnWithNameAsInt64()];
  v11 = HDSQLiteColumnWithName();
  if ((MEMORY[0x22AAC6CD0](row, v11) & 1) == 0)
  {
    MEMORY[0x22AAC6C50](row, v11);
    [(HDCodableSample *)v10 setStartDate:?];
  }

  v12 = HDSQLiteColumnWithName();
  if ((MEMORY[0x22AAC6CD0](row, v12) & 1) == 0)
  {
    MEMORY[0x22AAC6C50](row, v12);
    [(HDCodableSample *)v10 setEndDate:?];
  }

  v13 = objc_alloc_init(HDCodableDeletedSample);
  [(HDCodableDeletedSample *)v13 setSample:v10];

  return v13;
}

- (id)objectForPersistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error
{
  v6 = HDSQLiteColumnWithNameAsUUID();
  v7 = MEMORY[0x277CCD2E0];
  v8 = [HDDeletedSampleEntity _externalSyncMetadataForRow:row];
  v9 = [v7 _deletedObjectWithUUID:v6 metadata:v8];

  return v9;
}

- (BOOL)applyPropertiesToObject:(id)object persistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error
{
  objectCopy = object;
  superclassEncoder = [(HDEntityEncoder *)self superclassEncoder];
  LOBYTE(error) = [superclassEncoder applyPropertiesToObject:objectCopy persistentID:d row:row error:error];

  return error;
}

@end