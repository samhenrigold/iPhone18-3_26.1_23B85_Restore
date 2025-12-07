@interface HDFixInvalidContributorInDataProvenancesTable
@end

@implementation HDFixInvalidContributorInDataProvenancesTable

uint64_t ___HDFixInvalidContributorInDataProvenancesTable_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28[1] = *MEMORY[0x277D85DE8];
  if ((*(*(*(a1 + 56) + 8) + 24) & 0x8000000000000000) == 0 || ([MEMORY[0x277CCACA8] stringWithFormat:@"SELECT ROWID FROM contributors WHERE uuid = %@('00000000-0000-0000-0000-000000000000')", *MEMORY[0x277D10A68]], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(*(a1 + 32), "protectedDatabase"), v7 = objc_claimAutoreleasedReturnValue(), v27[0] = MEMORY[0x277D85DD0], v27[1] = 3221225472, v27[2] = ___HDFixInvalidContributorInDataProvenancesTable_block_invoke_2, v27[3] = &unk_278614620, v27[4] = *(a1 + 56), v8 = objc_msgSend(v7, "executeUncachedSQL:error:bindingHandler:enumerationHandler:", v6, a3, 0, v27), v7, v6, v8))
  {
    v23 = 0;
    v24 = &v23;
    v25 = 0x2020000000;
    v26 = -1;
    v9 = [*(a1 + 32) protectedDatabase];
    v21[4] = &v23;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = ___HDFixInvalidContributorInDataProvenancesTable_block_invoke_3;
    v22[3] = &unk_27861B7A8;
    v22[4] = *(a1 + 56);
    v22[5] = a2;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = ___HDFixInvalidContributorInDataProvenancesTable_block_invoke_4;
    v21[3] = &unk_278614620;
    v10 = [v9 executeUncachedSQL:@"SELECT ROWID from data_provenances WHERE sync_provenance = ? AND origin_product_type = ? AND origin_build = ? AND local_product_type = ? AND local_build = ? AND source_id = ? AND device_id = ? AND contributor_id = ? AND source_version = ? AND tz_name = ? AND origin_major_version = ? AND origin_minor_version = ? AND origin_patch_version = ?" error:a3 bindingHandler:v22 enumerationHandler:v21];

    if ((v10 & 1) == 0)
    {
      v18 = 0;
LABEL_13:
      _Block_object_dispose(&v23, 8);
      return v18;
    }

    v11 = HDSQLiteColumnWithNameAsInt64();
    if (v24[3] < 1)
    {
      v19 = *(a1 + 48);
      v12 = [MEMORY[0x277CCABB0] numberWithLongLong:v11];
      [v19 addObject:v12];
    }

    else
    {
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"UPDATE objects SET provenance = %lld WHERE provenance = %lld", v24[3], v11];
      v13 = [*(a1 + 32) protectedDatabase];
      v28[0] = v12;
      v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
      v15 = [v13 executeSQLStatements:v14 error:a3];

      if ((v15 & 1) == 0)
      {
        v18 = 0;
        goto LABEL_12;
      }

      v16 = *(a1 + 40);
      v17 = [MEMORY[0x277CCABB0] numberWithLongLong:v11];
      [v16 addObject:v17];
    }

    v18 = 1;
LABEL_12:

    goto LABEL_13;
  }

  return 0;
}

uint64_t ___HDFixInvalidContributorInDataProvenancesTable_block_invoke_3(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = HDSQLiteColumnWithNameAsInt64();
  sqlite3_bind_int64(a2, 1, v4);
  v5 = HDSQLiteColumnWithNameAsString();
  HDSQLiteBindStringToStatement();

  v6 = HDSQLiteColumnWithNameAsString();
  HDSQLiteBindStringToStatement();

  v7 = HDSQLiteColumnWithNameAsString();
  HDSQLiteBindStringToStatement();

  v8 = HDSQLiteColumnWithNameAsString();
  HDSQLiteBindStringToStatement();

  v9 = HDSQLiteColumnWithNameAsInt64();
  sqlite3_bind_int64(a2, 6, v9);
  v10 = HDSQLiteColumnWithNameAsInt64();
  sqlite3_bind_int64(a2, 7, v10);
  sqlite3_bind_int64(a2, 8, *(*(*(a1 + 32) + 8) + 24));
  v11 = HDSQLiteColumnWithNameAsString();
  HDSQLiteBindStringToStatement();

  v12 = HDSQLiteColumnWithNameAsString();
  HDSQLiteBindStringToStatement();

  v13 = HDSQLiteColumnWithNameAsInt64();
  sqlite3_bind_int64(a2, 11, v13);
  v14 = HDSQLiteColumnWithNameAsInt64();
  sqlite3_bind_int64(a2, 12, v14);
  v15 = HDSQLiteColumnWithNameAsInt64();

  return sqlite3_bind_int64(a2, 13, v15);
}

@end