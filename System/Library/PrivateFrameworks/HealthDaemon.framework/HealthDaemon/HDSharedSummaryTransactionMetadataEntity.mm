@interface HDSharedSummaryTransactionMetadataEntity
+ (id)foreignKeys;
+ (id)insertWithTransactionID:(int64_t)d metadata:(id)metadata databaseTransaction:(id)transaction error:(id *)error;
+ (id)metadataForTransactionID:(int64_t)d databaseTransaction:(id)transaction error:(id *)error;
+ (id)uniquedColumns;
@end

@implementation HDSharedSummaryTransactionMetadataEntity

+ (id)foreignKeys
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"transaction_id";
  v2 = +[(HDHealthEntity *)HDSharedSummaryTransactionEntity];
  v6[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

+ (id)uniquedColumns
{
  v4[2] = *MEMORY[0x277D85DE8];
  v4[0] = @"transaction_id";
  v4[1] = @"key";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:2];

  return v2;
}

+ (id)insertWithTransactionID:(int64_t)d metadata:(id)metadata databaseTransaction:(id)transaction error:(id *)error
{
  metadataCopy = metadata;
  transactionCopy = transaction;
  v12 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__110;
  v31 = __Block_byref_object_dispose__110;
  v32 = 0;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __103__HDSharedSummaryTransactionMetadataEntity_insertWithTransactionID_metadata_databaseTransaction_error___block_invoke;
  v21[3] = &unk_278622DE8;
  selfCopy = self;
  dCopy = d;
  v13 = transactionCopy;
  v22 = v13;
  v24 = &v27;
  v14 = v12;
  v23 = v14;
  [metadataCopy enumerateKeysAndObjectsUsingBlock:v21];
  v15 = v28[5];
  v16 = v15;
  if (v15)
  {
    if (error)
    {
      v17 = v15;
      *error = v16;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  if (v28[5])
  {
    v18 = 0;
  }

  else
  {
    v18 = v14;
  }

  v19 = v18;

  _Block_object_dispose(&v27, 8);

  return v19;
}

void __103__HDSharedSummaryTransactionMetadataEntity_insertWithTransactionID_metadata_databaseTransaction_error___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v46[7] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 64);
  v6 = *(a1 + 32);
  v7 = *(*(a1 + 48) + 8);
  v9 = *(v7 + 40);
  v8 = (v7 + 40);
  obj = v9;
  v10 = a2;
  v11 = a3;
  v12 = v6;
  v13 = objc_opt_self();
  objc_opt_class();
  v35 = v11;
  v36 = v8;
  v34 = v10;
  if (objc_opt_isKindOfClass())
  {
    v14 = v11;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
LABEL_11:
    [v12 databaseForEntityClass:v13];
    v25 = v24 = v12;
    v46[0] = @"transaction_id";
    v46[1] = @"key";
    v46[2] = @"value_type";
    v46[3] = @"string_value";
    v46[4] = @"numerical_value";
    v46[5] = @"date_value";
    v46[6] = @"data_value";
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:7];
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __105__HDSharedSummaryTransactionMetadataEntity__insertWithTransactionID_key_value_databaseTransaction_error___block_invoke;
    v38[3] = &unk_278622E10;
    v44 = v5;
    v39 = v34;
    v40 = v14;
    v41 = v15;
    v42 = v16;
    v45 = v18;
    v43 = v17;
    v27 = v17;
    v28 = v16;
    v29 = v15;
    v30 = v14;
    v31 = [v13 insertOrReplaceEntity:0 database:v25 properties:v26 error:&obj bindingHandler:v38];

    v12 = v24;
    v10 = v34;

    v11 = v35;
    v8 = v36;
    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = v11;
    v16 = 0;
    v17 = 0;
    v14 = 0;
    v18 = 1;
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = v11;
    v15 = 0;
    v17 = 0;
    v14 = 0;
    v18 = 2;
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19 = MEMORY[0x277CCABB0];
    v20 = v11;
    [v20 _unit];
    v22 = v21 = v12;
    [v20 doubleValueForUnit:v22];
    v15 = [v19 numberWithDouble:?];

    v12 = v21;
    v23 = [v20 _unit];

    v14 = [v23 unitString];

    v16 = 0;
    v17 = 0;
    v18 = 3;
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = v11;
    v15 = 0;
    v16 = 0;
    v14 = 0;
    v18 = 4;
    goto LABEL_11;
  }

  [MEMORY[0x277CCA9B8] hk_assignError:&obj code:3 format:{@"Received invalid metadata value type %@ (%@)", v11, objc_opt_class()}];
  v31 = 0;
LABEL_12:

  objc_storeStrong(v8, obj);
  if (v31)
  {
    [*(a1 + 40) addObject:v31];
  }

  else
  {
    *a4 = 1;
  }
}

+ (id)metadataForTransactionID:(int64_t)d databaseTransaction:(id)transaction error:(id *)error
{
  v23[6] = *MEMORY[0x277D85DE8];
  v8 = MEMORY[0x277CBEB38];
  transactionCopy = transaction;
  v10 = objc_alloc_init(v8);
  v11 = MEMORY[0x277D10B18];
  v12 = [MEMORY[0x277CCABB0] numberWithLongLong:d];
  v13 = [v11 predicateWithProperty:@"transaction_id" equalToValue:v12];

  v14 = [transactionCopy databaseForEntityClass:self];

  v15 = [self queryWithDatabase:v14 predicate:v13];

  v23[0] = @"key";
  v23[1] = @"value_type";
  v23[2] = @"string_value";
  v23[3] = @"numerical_value";
  v23[4] = @"date_value";
  v23[5] = @"data_value";
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:6];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __95__HDSharedSummaryTransactionMetadataEntity_metadataForTransactionID_databaseTransaction_error___block_invoke;
  v21[3] = &unk_27861E4C0;
  v22 = v10;
  v17 = v10;
  if ([v15 enumerateProperties:v16 error:error enumerationHandler:v21])
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;

  return v18;
}

uint64_t __95__HDSharedSummaryTransactionMetadataEntity_metadataForTransactionID_databaseTransaction_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = HDSQLiteColumnWithNameAsString();
  v7 = HDSQLiteColumnWithNameAsInt64();
  v8 = v7;
  if (v7 <= 1)
  {
    if (v7)
    {
      if (v7 != 1)
      {
        goto LABEL_15;
      }

      v15 = HDSQLiteColumnWithNameAsNumber();
    }

    else
    {
      v15 = HDSQLiteColumnWithNameAsString();
    }

LABEL_13:
    v14 = v15;
    if (v15)
    {
      goto LABEL_14;
    }

LABEL_15:
    v17 = MEMORY[0x277CCA9B8];
    v14 = [MEMORY[0x277CCABB0] numberWithInteger:v8];
    [v17 hk_assignError:a4 code:3 format:{@"Read invalid metadata type %@ ", v14}];
    v16 = 0;
    goto LABEL_16;
  }

  if (v7 == 2)
  {
    v15 = HDSQLiteColumnWithNameAsDate();
    goto LABEL_13;
  }

  if (v7 == 4)
  {
    v15 = HDSQLiteColumnWithNameAsData();
    goto LABEL_13;
  }

  if (v7 != 3)
  {
    goto LABEL_15;
  }

  HDSQLiteColumnWithNameAsDouble();
  v10 = v9;
  v11 = HDSQLiteColumnWithNameAsString();
  v12 = MEMORY[0x277CCD7E8];
  v13 = [MEMORY[0x277CCDAB0] unitFromString:v11];
  v14 = [v12 quantityWithUnit:v13 doubleValue:v10];

  if (!v14)
  {
    goto LABEL_15;
  }

LABEL_14:
  [*(a1 + 32) setObject:v14 forKeyedSubscript:v6];
  v16 = 1;
LABEL_16:

  return v16;
}

void __105__HDSharedSummaryTransactionMetadataEntity__insertWithTransactionID_key_value_databaseTransaction_error___block_invoke(void *a1, uint64_t a2)
{
  MEMORY[0x22AAC6B90](a2, @"transaction_id", a1[9]);
  MEMORY[0x22AAC6BD0](a2, @"key", a1[4]);
  MEMORY[0x22AAC6B90](a2, @"value_type", a1[10]);
  MEMORY[0x22AAC6BD0](a2, @"string_value", a1[5]);
  MEMORY[0x22AAC6BB0](a2, @"numerical_value", a1[6]);
  MEMORY[0x22AAC6B50](a2, @"date_value", a1[7]);

  JUMPOUT(0x22AAC6B40);
}

@end