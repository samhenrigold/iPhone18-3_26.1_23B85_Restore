@interface HDUserDomainConceptEducationContentSectionDataEntity
+ (BOOL)addSectionDataToCodable:(id)codable educationContentSectionID:(int64_t)d transaction:(id)transaction error:(id *)error;
+ (BOOL)enumerateSectionDataForEducationContentSectionID:(int64_t)d transaction:(id)transaction error:(id *)error enumerationHandler:(id)handler;
+ (BOOL)insertEducationContentSectionData:(id)data sectionPersistentID:(int64_t)d transaction:(id)transaction error:(id *)error;
+ (id)foreignKeys;
+ (id)privateSubEntities;
+ (uint64_t)_enumerateSectionDataRowsForEducationContentSectionPersistentID:(void *)d transaction:(uint64_t)transaction error:(void *)error enumerationHandler:;
@end

@implementation HDUserDomainConceptEducationContentSectionDataEntity

+ (id)foreignKeys
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"section_id";
  v2 = +[(HDHealthEntity *)HDUserDomainConceptEducationContentSectionEntity];
  v6[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

+ (id)privateSubEntities
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

+ (BOOL)insertEducationContentSectionData:(id)data sectionPersistentID:(int64_t)d transaction:(id)transaction error:(id *)error
{
  v31 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  transactionCopy = transaction;
  protectedDatabase = [transactionCopy protectedDatabase];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __128__HDUserDomainConceptEducationContentSectionDataEntity_insertEducationContentSectionData_sectionPersistentID_transaction_error___block_invoke_2;
  v27[3] = &unk_278613B58;
  dCopy = d;
  v12 = dataCopy;
  v28 = v12;
  LODWORD(dataCopy) = [protectedDatabase executeCachedStatementForKey:&insertEducationContentSectionData_sectionPersistentID_transaction_error__statementKey error:error SQLGenerator:&__block_literal_global_18 bindingHandler:v27 enumerationHandler:0];

  if (dataCopy)
  {
    protectedDatabase2 = [transactionCopy protectedDatabase];
    lastInsertRowID = [protectedDatabase2 lastInsertRowID];

    if (lastInsertRowID)
    {
      longLongValue = [lastInsertRowID longLongValue];
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      stringValues = [v12 stringValues];
      v17 = [stringValues countByEnumeratingWithState:&v23 objects:v30 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v24;
        while (2)
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v24 != v19)
            {
              objc_enumerationMutation(stringValues);
            }

            if (![HDUserDomainConceptEducationContentSectionDataStringsEntity insertEducationContentSectionDataString:*(*(&v23 + 1) + 8 * i) sectionDataPersistentID:longLongValue transaction:transactionCopy error:error])
            {
              v21 = 0;
              goto LABEL_14;
            }
          }

          v18 = [stringValues countByEnumeratingWithState:&v23 objects:v30 count:16];
          if (v18)
          {
            continue;
          }

          break;
        }
      }

      v21 = 1;
LABEL_14:
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

uint64_t __128__HDUserDomainConceptEducationContentSectionDataEntity_insertEducationContentSectionData_sectionPersistentID_transaction_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, *(a1 + 40));
  sqlite3_bind_int64(a2, 2, [*(a1 + 32) sectionDataType]);
  sqlite3_bind_int64(a2, 3, [*(a1 + 32) version]);
  [*(a1 + 32) timestamp];
  sqlite3_bind_double(a2, 4, v4);
  v5 = [*(a1 + 32) deleted];

  return sqlite3_bind_int(a2, 5, v5);
}

+ (BOOL)enumerateSectionDataForEducationContentSectionID:(int64_t)d transaction:(id)transaction error:(id *)error enumerationHandler:(id)handler
{
  transactionCopy = transaction;
  handlerCopy = handler;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __142__HDUserDomainConceptEducationContentSectionDataEntity_enumerateSectionDataForEducationContentSectionID_transaction_error_enumerationHandler___block_invoke;
  v15[3] = &unk_278615BA0;
  v16 = transactionCopy;
  v17 = handlerCopy;
  v12 = handlerCopy;
  v13 = transactionCopy;
  LOBYTE(error) = [(HDUserDomainConceptEducationContentSectionDataEntity *)self _enumerateSectionDataRowsForEducationContentSectionPersistentID:d transaction:v13 error:error enumerationHandler:v15];

  return error;
}

uint64_t __142__HDUserDomainConceptEducationContentSectionDataEntity_enumerateSectionDataForEducationContentSectionID_transaction_error_enumerationHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = HDSQLiteColumnWithNameAsInt64();
  v6 = HDSQLiteColumnWithNameAsInt64();
  v7 = HDSQLiteColumnWithNameAsInt64();
  HDSQLiteColumnWithNameAsDouble();
  v9 = v8;
  v10 = HDSQLiteColumnWithNameAsBoolean();
  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v12 = *(a1 + 32);
  v27 = 0;
  v22 = MEMORY[0x277D85DD0];
  v23 = 3221225472;
  v24 = __142__HDUserDomainConceptEducationContentSectionDataEntity_enumerateSectionDataForEducationContentSectionID_transaction_error_enumerationHandler___block_invoke_2;
  v25 = &unk_278615B78;
  v13 = v11;
  v26 = v13;
  v14 = [HDUserDomainConceptEducationContentSectionDataStringsEntity enumerateSectionDataStringsForEducationContentSectionDataID:v5 transaction:v12 error:&v27 enumerationHandler:&v22];
  v15 = v27;
  v16 = v15;
  if (v14)
  {
    v17 = objc_alloc(MEMORY[0x277CCD748]);
    v18 = [v17 initWithStringValues:v13 sectionDataType:v6 version:v7 timestamp:v10 deleted:{v9, v22, v23, v24, v25}];
    v19 = (*(*(a1 + 40) + 16))();
  }

  else if (a3)
  {
    v20 = v15;
    v19 = 0;
    *a3 = v16;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

+ (uint64_t)_enumerateSectionDataRowsForEducationContentSectionPersistentID:(void *)d transaction:(uint64_t)transaction error:(void *)error enumerationHandler:
{
  errorCopy = error;
  dCopy = d;
  objc_opt_self();
  protectedDatabase = [dCopy protectedDatabase];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __157__HDUserDomainConceptEducationContentSectionDataEntity__enumerateSectionDataRowsForEducationContentSectionPersistentID_transaction_error_enumerationHandler___block_invoke_2;
  v13[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
  v13[4] = a2;
  v11 = [protectedDatabase executeCachedStatementForKey:&_enumerateSectionDataRowsForEducationContentSectionPersistentID_transaction_error_enumerationHandler__statementKey error:transaction SQLGenerator:&__block_literal_global_336_0 bindingHandler:v13 enumerationHandler:errorCopy];

  return v11;
}

+ (BOOL)addSectionDataToCodable:(id)codable educationContentSectionID:(int64_t)d transaction:(id)transaction error:(id *)error
{
  codableCopy = codable;
  transactionCopy = transaction;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __124__HDUserDomainConceptEducationContentSectionDataEntity_addSectionDataToCodable_educationContentSectionID_transaction_error___block_invoke;
  v15[3] = &unk_2786140C0;
  v16 = transactionCopy;
  v17 = codableCopy;
  v12 = codableCopy;
  v13 = transactionCopy;
  LOBYTE(error) = [(HDUserDomainConceptEducationContentSectionDataEntity *)self _enumerateSectionDataRowsForEducationContentSectionPersistentID:d transaction:v13 error:error enumerationHandler:v15];

  return error;
}

BOOL __124__HDUserDomainConceptEducationContentSectionDataEntity_addSectionDataToCodable_educationContentSectionID_transaction_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = HDSQLiteColumnWithNameAsInt64();
  v6 = HDSQLiteColumnWithNameAsInt64();
  v7 = HDSQLiteColumnWithNameAsInt64();
  HDSQLiteColumnWithNameAsDouble();
  v9 = v8;
  v10 = HDSQLiteColumnWithNameAsBoolean();
  v11 = objc_alloc_init(HDCodableSectionData);
  [(HDCodableSectionData *)v11 setSectionDataType:v6];
  [(HDCodableSectionData *)v11 setVersion:v7];
  [(HDCodableSectionData *)v11 setTimestamp:v9];
  [(HDCodableSectionData *)v11 setDeleted:v10];
  v12 = [HDUserDomainConceptEducationContentSectionDataStringsEntity addSectionDataStringsToCodable:v11 sectionDataID:v5 transaction:*(a1 + 32) error:a3];
  if (v12)
  {
    [*(a1 + 40) addSectionData:v11];
  }

  return v12;
}

@end