@interface PFSQLiteArchiveReadwriteTransaction
@end

@implementation PFSQLiteArchiveReadwriteTransaction

void __62___PFSQLiteArchiveReadwriteTransaction__accessDatabase_error___block_invoke(void *a1, sqlite3 *a2)
{
  v4 = *(a1[4] + 32);
  v33 = 0;
  v5 = PFSQLite_prepare_and_stepThrough_withBlock(a2, @"BEGIN IMMEDIATE TRANSACTION;", 3, 100000, v4, 0, 0, 0, &v33);
  v6 = v33;
  v7 = v6;
  if (v5)
  {
    *(a1[4] + 16) = 1;
    *(a1[4] + 24) = a2;
    v8 = objc_autoreleasePoolPush();
    v9 = a1[6];
    v32[1] = 0;
    v10 = (*(v9 + 16))();
    v11 = 0;

    objc_autoreleasePoolPop(v8);
    if (((v11 == 0) & v10) != 0)
    {
      v7 = 0;
      v12 = *(a1[4] + 32);
      v31 = 0;
      v13 = PFSQLite_prepare_and_stepThrough_withBlock(a2, @"COMMIT;", 3, 100000, v12, 0, 0, 0, &v31);
      v14 = v31;
      v15 = v14;
      if ((v13 & 1) == 0)
      {
        v16 = PFLogSQLite(v14);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          __62___PFSQLiteArchiveReadwriteTransaction__accessDatabase_error___block_invoke_cold_4();
        }
      }

      v17 = *(a1[4] + 32);
      v30 = 0;
      v18 = PFSQLite_prepare_and_stepThrough_withBlock(a2, @"PRAGMA wal_checkpoint(FULL);", 3, 100000, v17, 0, 0, 0, &v30);
      v19 = v30;
      v20 = v19;
      if ((v18 & 1) == 0)
      {
        v21 = PFLogSQLite(v19);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          __62___PFSQLiteArchiveReadwriteTransaction__accessDatabase_error___block_invoke_cold_5();
        }
      }

      *(*(a1[7] + 8) + 24) = 1;

      *(a1[4] + 24) = 0;
      *(a1[4] + 16) = 0;
    }

    else
    {
      v7 = v11;
      v23 = *(a1[4] + 32);
      v32[0] = 0;
      v24 = PFSQLite_prepare_and_stepThrough_withBlock(a2, @"ROLLBACK;", 3, 100000, v23, 0, 0, 0, v32);
      v25 = v32[0];
      v26 = v25;
      if ((v24 & 1) == 0)
      {
        v27 = PFLogSQLite(v25);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          __62___PFSQLiteArchiveReadwriteTransaction__accessDatabase_error___block_invoke_cold_3();
        }
      }

      *(*(a1[7] + 8) + 24) = 0;

      *(a1[4] + 24) = 0;
      *(a1[4] + 16) = 0;
    }
  }

  else
  {
    v22 = PFLogSQLite(v6);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      __62___PFSQLiteArchiveReadwriteTransaction__accessDatabase_error___block_invoke_cold_1();
    }
  }

  v28 = *(a1[8] + 8);
  v29 = *(v28 + 40);
  *(v28 + 40) = v7;
}

uint64_t __60___PFSQLiteArchiveReadwriteTransaction_archiveObject_error___block_invoke(uint64_t a1, sqlite3 *a2, void *a3)
{
  v35[4] = *MEMORY[0x1E69E9840];
  v6 = [*(a1 + 32) setupObjectDescriptorForClass:*(a1 + 48) expectedObjectDescriptor:0 error:a3];
  if (v6)
  {
    v7 = MEMORY[0x1E695DFD8];
    v8 = [*(a1 + 40) dictionary];
    v9 = [v8 allKeys];
    v10 = [v7 setWithArray:v9];

    v11 = [v6 columns];
    v12 = [v11 bs_filter:&__block_literal_global_3];

    v13 = MEMORY[0x1E695DFD8];
    v14 = [v12 bs_mapNoNulls:&__block_literal_global_196];
    v15 = [v13 setWithArray:v14];

    if ([v15 isSubsetOfSet:v10])
    {
      v16 = *(a1 + 40);
      v33 = 0;
      v17 = [PFSQLiteQueryFactory generateInsertStatementForDescriptor:v6 coder:v16 canUpsert:1 bindings:&v33];
      v18 = MEMORY[0x1C691C400](v33);
      v19 = PFSQLite_prepare_and_stepThrough_withBlock(a2, v17, 3, 100000, *(*(a1 + 32) + 32), v18, 0, 0, a3);
    }

    else
    {
      v18 = [v15 mutableCopy];
      [v18 minusSet:v10];
      v32 = MEMORY[0x1E696ABC0];
      v20 = *MEMORY[0x1E696A588];
      v35[0] = @"NSCoder missing values for required keys";
      v34[0] = v20;
      v34[1] = @"requiredKeys";
      v21 = [v15 allObjects];
      v17 = v21;
      v22 = MEMORY[0x1E695E0F0];
      if (v21)
      {
        v23 = v21;
      }

      else
      {
        v23 = MEMORY[0x1E695E0F0];
      }

      v35[1] = v23;
      v34[2] = @"providedKeys";
      v24 = [v10 allObjects];
      v25 = v24;
      if (v24)
      {
        v26 = v24;
      }

      else
      {
        v26 = v22;
      }

      v35[2] = v26;
      v34[3] = @"missingKeys";
      v27 = [v18 allObjects];
      v28 = v27;
      if (v27)
      {
        v29 = v27;
      }

      else
      {
        v29 = v22;
      }

      v35[3] = v29;
      v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:4];
      *a3 = [v32 errorWithDomain:@"PFSQLiteArchiver" code:-1 userInfo:v30];

      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

uint64_t __61___PFSQLiteArchiveReadwriteTransaction_archiveObjects_error___block_invoke(id *a1, sqlite3 *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = a1[4];
  v6 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v21 != v8)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v20 + 1) + 8 * v9);
      v11 = objc_opt_class();
      [v10 encodeWithCoder:a1[5]];
      v12 = [a1[6] setupObjectDescriptorForClass:v11 expectedObjectDescriptor:0 error:a3];
      if (!v12)
      {
        break;
      }

      v13 = a1[5];
      v19 = 0;
      v14 = [PFSQLiteQueryFactory generateInsertStatementForDescriptor:v12 coder:v13 canUpsert:1 bindings:&v19];
      v15 = MEMORY[0x1C691C400](v19);
      if (!PFSQLite_prepare_and_stepThrough_withBlock(a2, v14, 3, 100000, *(a1[6] + 4), v15, 0, 0, a3))
      {

        v12 = 0;
        break;
      }

      v16 = [a1[5] dictionary];
      [v16 removeAllObjects];

      if (v7 == ++v9)
      {
        v7 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
        v12 = 1;
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    v12 = 1;
  }

  return v12;
}

uint64_t __77___PFSQLiteArchiveReadwriteTransaction_deleteObjectsOfClass_predicate_error___block_invoke(uint64_t a1, sqlite3 *a2, void *a3)
{
  v6 = [*(a1 + 32) setupObjectDescriptorForClass:*(a1 + 48) expectedObjectDescriptor:0 error:a3];
  if (v6)
  {
    v7 = *(a1 + 40);
    v12 = 0;
    v8 = [PFSQLiteQueryFactory generateDeleteSQLForDescriptor:v6 predicate:v7 bindings:&v12];
    v9 = MEMORY[0x1C691C400](v12);
    v10 = PFSQLite_prepare_and_stepThrough_withBlock(a2, v8, 3, 100000, *(*(a1 + 32) + 32), v9, 0, 0, a3);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t __59___PFSQLiteArchiveReadwriteTransaction_deleteObject_error___block_invoke(uint64_t a1, sqlite3 *a2, void *a3)
{
  v6 = [*(a1 + 32) setupObjectDescriptorForClass:*(a1 + 48) expectedObjectDescriptor:0 error:a3];
  if (v6)
  {
    v7 = [PFSQLitePredicate predicateForDescriptor:v6 coder:*(a1 + 40)];
    v12 = 0;
    v8 = [PFSQLiteQueryFactory generateDeleteSQLForDescriptor:v6 predicate:v7 bindings:&v12];
    v9 = MEMORY[0x1C691C400](v12);
    v10 = PFSQLite_prepare_and_stepThrough_withBlock(a2, v8, 3, 100000, *(*(a1 + 32) + 32), v9, 0, 0, a3);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t __71___PFSQLiteArchiveReadwriteTransaction_replaceObject_withObject_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(a1 + 32) setupObjectDescriptorForClass:*(a1 + 56) expectedObjectDescriptor:0 error:a3];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_4;
  }

  v7 = *(a1 + 64);
  if (v7 == *(a1 + 56))
  {
    v8 = v5;
  }

  else
  {
    v8 = [*(a1 + 32) setupObjectDescriptorForClass:v7 expectedObjectDescriptor:0 error:a3];
    if (!v8)
    {
LABEL_4:
      v9 = 0;
      goto LABEL_10;
    }
  }

  v10 = [PFSQLitePredicate predicateForDescriptor:v6 coder:*(a1 + 40)];
  if ([*(a1 + 32) deleteObjectsOfClass:*(a1 + 56) predicate:v10 error:a3])
  {
    v9 = [*(a1 + 32) archiveObject:*(a1 + 48) error:a3];
  }

  else
  {
    v9 = 0;
  }

LABEL_10:
  return v9;
}

uint64_t __59___PFSQLiteArchiveReadwriteTransaction_updateObject_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(a1 + 32) setupObjectDescriptorForClass:*(a1 + 48) expectedObjectDescriptor:0 error:a3];

  if (!v5 || ![*(a1 + 32) deleteObject:*(a1 + 40) error:a3])
  {
    return 0;
  }

  v6 = *(a1 + 32);
  v7 = *(a1 + 40);

  return [v6 archiveObject:v7 error:a3];
}

uint64_t __101___PFSQLiteArchiveReadwriteTransaction_setupObjectDescriptorForClass_expectedObjectDescriptor_error___block_invoke_2(void *a1, sqlite3_stmt *a2, void *a3)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = 1;
  *(*(a1[5] + 8) + 24) = 1;
  if (sqlite3_column_int(a2, 2) && a1[6] != 2)
  {
    v6 = MEMORY[0x1E696ABC0];
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"index mismatch for %@", a1[4], *MEMORY[0x1E696A588]];
    v11[0] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    *a3 = [v6 errorWithDomain:@"PFSQLiteArchiver" code:-3 userInfo:v8];

    return 0;
  }

  return v5;
}

void __62___PFSQLiteArchiveReadwriteTransaction__accessDatabase_error___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_1C269D000, v0, v1, "Unable to 'BEGIN TRANSACTION' for database '%@': %{public}@");
}

void __62___PFSQLiteArchiveReadwriteTransaction__accessDatabase_error___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_2_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_1C269D000, v0, v1, "Unable to ROLLBACK transaction for database '%@': %{public}@");
}

void __62___PFSQLiteArchiveReadwriteTransaction__accessDatabase_error___block_invoke_cold_4()
{
  OUTLINED_FUNCTION_2_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_1C269D000, v0, v1, "Unable to COMMIT transaction for database '%@': %{public}@");
}

void __62___PFSQLiteArchiveReadwriteTransaction__accessDatabase_error___block_invoke_cold_5()
{
  OUTLINED_FUNCTION_2_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_1C269D000, v0, v1, "Unable to checkpoint database '%@': %{public}@");
}

@end