@interface HDMetadataValueEntity
+ (BOOL)_insertMetadataValueWithKeyID:(int64_t)d objectID:(int64_t)iD value:(id)value database:(id)database error:(id *)error;
+ (BOOL)_updateMetadataValueForKeyID:(int64_t)d objectID:(int64_t)iD value:(id)value database:(id)database error:(id *)error;
+ (id)deleteStatementForObjectMetadataWithTransaction:(id)transaction;
+ (id)indices;
+ (uint64_t)_determineMetadataTypeForValue:(__CFString *)value stringValue:(__CFString *)stringValue numberValue:(__CFString *)numberValue dateValue:(__CFString *)dateValue dataValue:(uint64_t *)dataValue type:(uint64_t)type error:;
@end

@implementation HDMetadataValueEntity

+ (id)indices
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277D10B40]);
  v3 = objc_opt_class();
  v8 = @"object_id";
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:&v8 count:1];
  v5 = [v2 initWithEntity:v3 name:@"object" columns:v4];
  v9[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];

  return v6;
}

+ (id)deleteStatementForObjectMetadataWithTransaction:(id)transaction
{
  v4 = [transaction databaseForEntityClass:self];
  v5 = [self deleteStatementWithProperty:@"object_id" database:v4];

  return v5;
}

+ (uint64_t)_determineMetadataTypeForValue:(__CFString *)value stringValue:(__CFString *)stringValue numberValue:(__CFString *)numberValue dateValue:(__CFString *)dateValue dataValue:(uint64_t *)dataValue type:(uint64_t)type error:
{
  v39 = *MEMORY[0x277D85DE8];
  v13 = a2;
  objc_opt_self();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    unitString = v13;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    if (!value)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = v13;
    v15 = 0;
    v17 = 0;
    unitString = 0;
    v16 = 1;
    if (!value)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = v13;
    v15 = 0;
    v18 = 0;
    unitString = 0;
    v16 = 2;
    if (!value)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19 = MEMORY[0x277CCABB0];
    v20 = v13;
    _unit = [(__CFString *)v20 _unit];
    [(__CFString *)v20 doubleValueForUnit:_unit];
    v18 = [v19 numberWithDouble:?];

    _unit2 = [(__CFString *)v20 _unit];

    unitString = [_unit2 unitString];

    v15 = 0;
    v17 = 0;
    v16 = 3;
    if (!value)
    {
LABEL_13:
      if (stringValue)
      {
        v24 = v18;
        *stringValue = v18;
      }

      if (numberValue)
      {
        v25 = v17;
        *numberValue = v17;
      }

      if (dateValue)
      {
        v26 = v15;
        *dateValue = v15;
      }

      if (dataValue)
      {
        *dataValue = v16;
      }

      v27 = 1;
      goto LABEL_22;
    }

LABEL_12:
    v23 = unitString;
    *value = unitString;
    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = v13;
    v17 = 0;
    v18 = 0;
    unitString = 0;
    v16 = 4;
    if (!value)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  [MEMORY[0x277CCA9B8] hk_assignError:type code:3 format:{@"Received invalid metadata value type %@ (%@)", v13, objc_opt_class()}];
  _HKInitializeLogging();
  v29 = *MEMORY[0x277CCC2A0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
  {
    v30 = MEMORY[0x277CCDD30];
    v31 = v29;
    if ([v30 isAppleInternalInstall])
    {
      v32 = v13;
    }

    else
    {
      v32 = @"<redacted>";
    }

    *buf = 138412546;
    v36 = v32;
    v37 = 2112;
    v38 = objc_opt_class();
    v33 = v38;
    _os_log_error_impl(&dword_228986000, v31, OS_LOG_TYPE_ERROR, "Received invalid value %@ of type %@", buf, 0x16u);
  }

  v15 = 0;
  v17 = 0;
  v18 = 0;
  unitString = 0;
  v27 = 0;
LABEL_22:

  return v27;
}

+ (BOOL)_insertMetadataValueWithKeyID:(int64_t)d objectID:(int64_t)iD value:(id)value database:(id)database error:(id *)error
{
  databaseCopy = database;
  v32 = 0;
  v33 = 0;
  v30 = 0;
  v31 = 0;
  v29 = 0;
  v13 = [(HDMetadataValueEntity *)self _determineMetadataTypeForValue:value stringValue:&v32 numberValue:&v31 dateValue:&v30 dataValue:&v29 type:&v33 error:error];
  v14 = v32;
  v15 = v31;
  v16 = v30;
  v17 = v29;
  if (v13)
  {
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __85__HDMetadataValueEntity__insertMetadataValueWithKeyID_objectID_value_database_error___block_invoke;
    v28[3] = &__block_descriptor_40_e15___NSString_8__0l;
    v28[4] = self;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __85__HDMetadataValueEntity__insertMetadataValueWithKeyID_objectID_value_database_error___block_invoke_2;
    v20[3] = &unk_27861FCD8;
    dCopy = d;
    iDCopy = iD;
    v21 = v14;
    v22 = v15;
    v23 = v16;
    v24 = v17;
    v27 = v33;
    v18 = [databaseCopy executeCachedStatementForKey:&_insertMetadataValueWithKeyID_objectID_value_database_error__insertKey error:error SQLGenerator:v28 bindingHandler:v20 enumerationHandler:0];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

id __85__HDMetadataValueEntity__insertMetadataValueWithKeyID_objectID_value_database_error___block_invoke(uint64_t a1)
{
  v5[7] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v5[0] = @"key_id";
  v5[1] = @"object_id";
  v5[2] = @"string_value";
  v5[3] = @"numerical_value";
  v5[4] = @"date_value";
  v5[5] = @"data_value";
  v5[6] = @"value_type";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:7];
  v3 = [v1 insertSQLForProperties:v2 shouldReplace:0];

  return v3;
}

uint64_t __85__HDMetadataValueEntity__insertMetadataValueWithKeyID_objectID_value_database_error___block_invoke_2(void *a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, a1[8]);
  sqlite3_bind_int64(a2, 2, a1[9]);
  HDSQLiteBindFoundationValueToStatement();
  HDSQLiteBindFoundationValueToStatement();
  HDSQLiteBindFoundationValueToStatement();
  HDSQLiteBindFoundationValueToStatement();
  v4 = a1[10];

  return sqlite3_bind_int64(a2, 7, v4);
}

+ (BOOL)_updateMetadataValueForKeyID:(int64_t)d objectID:(int64_t)iD value:(id)value database:(id)database error:(id *)error
{
  v54[2] = *MEMORY[0x277D85DE8];
  databaseCopy = database;
  v52 = 0;
  v53 = 0;
  v51 = 0;
  v49 = 0;
  v50 = 0;
  v13 = [(HDMetadataValueEntity *)self _determineMetadataTypeForValue:value stringValue:&v52 numberValue:&v51 dateValue:&v50 dataValue:&v49 type:&v53 error:error];
  v14 = v52;
  v15 = v51;
  v16 = v50;
  v17 = v49;
  if (v13)
  {
    v18 = [MEMORY[0x277CCABB0] numberWithLongLong:d];
    [MEMORY[0x277CCABB0] numberWithLongLong:iD];
    v19 = v37 = databaseCopy;
    v20 = v18;
    objc_opt_self();
    v21 = MEMORY[0x277D10B20];
    v22 = v20;
    objc_opt_self();
    v36 = v17;
    v23 = v16;
    v24 = v15;
    v25 = v14;
    v26 = [MEMORY[0x277D10B18] predicateWithProperty:@"key_id" equalToValue:v22];

    v54[0] = v26;
    v27 = v19;
    objc_opt_self();
    v28 = [MEMORY[0x277D10B18] predicateWithProperty:@"object_id" equalToValue:v27];

    v54[1] = v28;
    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:2];
    v30 = [v21 predicateMatchingAllPredicates:v29];

    v14 = v25;
    v15 = v24;
    v16 = v23;
    v17 = v36;

    databaseCopy = v37;
    selfCopy = self;
    v48 = 0;
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __84__HDMetadataValueEntity__updateMetadataValueForKeyID_objectID_value_database_error___block_invoke;
    v45[3] = &unk_278618EF0;
    v46 = v30;
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __84__HDMetadataValueEntity__updateMetadataValueForKeyID_objectID_value_database_error___block_invoke_2;
    v38[3] = &unk_27861FD00;
    v39 = v14;
    v40 = v15;
    v41 = v16;
    v31 = v36;
    v43 = v46;
    v44 = v53;
    v42 = v31;
    v32 = v46;
    v33 = [v37 executeCachedStatementForKey:&_updateMetadataValueForKeyID_objectID_value_database_error__updateKey error:&v48 SQLGenerator:v45 bindingHandler:v38 enumerationHandler:0];
    v34 = v48;
  }

  else
  {
    v33 = 0;
  }

  return v33;
}

id __84__HDMetadataValueEntity__updateMetadataValueForKeyID_objectID_value_database_error___block_invoke(uint64_t a1)
{
  v6[5] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v6[0] = @"string_value";
  v6[1] = @"numerical_value";
  v6[2] = @"date_value";
  v6[3] = @"data_value";
  v6[4] = @"value_type";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:5];
  v4 = [v2 updateSQLForProperties:v3 predicate:*(a1 + 32)];

  return v4;
}

uint64_t __84__HDMetadataValueEntity__updateMetadataValueForKeyID_objectID_value_database_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  HDSQLiteBindFoundationValueToStatement();
  HDSQLiteBindFoundationValueToStatement();
  HDSQLiteBindFoundationValueToStatement();
  HDSQLiteBindFoundationValueToStatement();
  v5 = 6;
  sqlite3_bind_int64(a2, 5, *(a1 + 72));
  return [*(a1 + 64) bindToStatement:a2 bindingIndex:&v5];
}

@end