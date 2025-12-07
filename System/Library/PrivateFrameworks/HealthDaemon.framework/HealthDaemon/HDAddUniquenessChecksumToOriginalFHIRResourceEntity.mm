@interface HDAddUniquenessChecksumToOriginalFHIRResourceEntity
@end

@implementation HDAddUniquenessChecksumToOriginalFHIRResourceEntity

uint64_t ___HDAddUniquenessChecksumToOriginalFHIRResourceEntity_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = HDSQLiteColumnAsInt64();
  v7 = MEMORY[0x22AAC6C30](a2, 1);
  v25 = 0;
  v8 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v7 options:0 error:&v25];
  v9 = v25;
  if (v8)
  {
    v24 = v9;
    v10 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v8 options:10 error:&v24];
    v11 = v24;

    if (v10)
    {
      v12 = v10;
    }

    else
    {
      _HKInitializeLogging();
      v15 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        v27 = v11;
        _os_log_fault_impl(&dword_228986000, v15, OS_LOG_TYPE_FAULT, "HDDatabaseMigrator (Sydney) failed to encode JSON object: %@", buf, 0xCu);
      }

      v12 = v7;
    }

    v14 = [v12 hk_MD5];
    goto LABEL_11;
  }

  _HKInitializeLogging();
  v13 = *MEMORY[0x277CCC2A0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_FAULT))
  {
    *buf = 138412290;
    v27 = v9;
    _os_log_fault_impl(&dword_228986000, v13, OS_LOG_TYPE_FAULT, "HDDatabaseMigrator (Sydney) failed to decode JSON data: %@", buf, 0xCu);
    if (v7)
    {
      goto LABEL_6;
    }

LABEL_14:
    v10 = [MEMORY[0x277CBEA90] data];
    v14 = [v10 hk_MD5];
    v11 = v9;
LABEL_11:

    v9 = v11;
    goto LABEL_12;
  }

  if (!v7)
  {
    goto LABEL_14;
  }

LABEL_6:
  v14 = [v7 hk_MD5];
LABEL_12:
  v17 = *(a1 + 32);
  v16 = *(a1 + 40);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = ___HDAddUniquenessChecksumToOriginalFHIRResourceEntity_block_invoke_1340;
  v21[3] = &unk_278613B58;
  v22 = v14;
  v23 = v6;
  v18 = v14;
  v19 = [v17 executeSQL:v16 error:a3 bindingHandler:v21 enumerationHandler:0];

  return v19;
}

uint64_t ___HDAddUniquenessChecksumToOriginalFHIRResourceEntity_block_invoke_1340(uint64_t a1, sqlite3_stmt *a2)
{
  HDSQLiteBindFoundationValueToStatement();
  v4 = *(a1 + 40);

  return sqlite3_bind_int64(a2, 2, v4);
}

@end