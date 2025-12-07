@interface MCMSQLiteDB
+ (BOOL)moveDBWithURL:(id)l toURL:(id)rL queue:(id)queue error:(id *)error;
+ (sqlite3)openDBWithURL:(id)l queue:(id)queue error:(id *)error;
- (BOOL)_deleteCodeSigningWithIdentifier:(id)identifier error:(id *)error;
- (BOOL)_insertChildIdentifier:(id)identifier forParentIdentifier:(id)parentIdentifier error:(id *)error;
- (BOOL)_insertCodeSigningData:(id)data forIdentifier:(id)identifier error:(id *)error;
- (BOOL)_insertCodeSigningInfo:(id)info forIdentifier:(id)identifier error:(id *)error;
- (BOOL)_performInsertOrUpdateQuery:(const char *)query withCodeSigningEntry:(id)entry forIdentifier:(id)identifier isUpdate:(BOOL)update error:(id *)error;
- (BOOL)_performSingleParameterQuery:(const char *)query withTextInput:(id)input error:(id *)error;
- (BOOL)_performSingleParameterQuery:(const char *)query withTextInput:(id)input expectedChanges:(int)changes error:(id *)error;
- (BOOL)_performTwoParameterQuery:(const char *)query withTextInputOne:(id)one andTextInputTwo:(id)two expectedChanges:(int)changes error:(id *)error;
- (BOOL)_sqliteExec:(id)exec error:(id *)error;
- (BOOL)addCodeSigningEntry:(id)entry withIdentifier:(id)identifier error:(id *)error;
- (BOOL)deleteAllAdvanceCopiesOfCodeSigningEntriesWithError:(id *)error;
- (BOOL)deleteAllInvalidPluginCodeSigningEntriesWithNumChanges:(int *)changes error:(id *)error;
- (BOOL)deleteCodeSigningEntryWithIdentifier:(id)identifier error:(id *)error;
- (BOOL)invalidateCodeSigningForIdentifierAndAllChildren:(id)children error:(id *)error;
- (BOOL)invalidateCodeSigningWithIdentifier:(id)identifier error:(id *)error;
- (MCMSQLiteDB)initWithURL:(id)l queue:(id)queue error:(id *)error;
- (MCMSQLiteDBCodeSigningPeerageDelegate)peerageDelegate;
- (id)_codeSigningEntryFromStatementRow:(sqlite3_stmt *)row error:(id *)error;
- (id)_selectCodeSigningEntryWithIdentifier:(id)identifier error:(id *)error;
- (id)childIdentifiersForParentIdentifier:(id)identifier error:(id *)error;
- (id)childParentMapWithError:(id *)error;
- (id)codeSigningEntryWithIdentifier:(id)identifier error:(id *)error;
- (id)enumerateIdentifiersAndCodeSigningInfoUsingBlock:(id)block;
- (id)identifiersWithError:(id *)error;
- (id)parentIdentifierForChildIdentifier:(id)identifier error:(id *)error;
- (void)closeDB;
- (void)dealloc;
- (void)setPeerageDelegate:(id)delegate;
- (void)setQueue:(id)queue;
- (void)setUrl:(id)url;
@end

@implementation MCMSQLiteDB

- (void)setQueue:(id)queue
{
  p_queue = &self->_queue;

  objc_storeStrong(p_queue, queue);
}

- (void)setUrl:(id)url
{
  p_url = &self->_url;

  objc_storeStrong(p_url, url);
}

- (void)setPeerageDelegate:(id)delegate
{
  p_peerageDelegate = &self->_peerageDelegate;

  objc_storeWeak(p_peerageDelegate, delegate);
}

- (MCMSQLiteDBCodeSigningPeerageDelegate)peerageDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_peerageDelegate);

  return WeakRetained;
}

- (BOOL)deleteAllInvalidPluginCodeSigningEntriesWithNumChanges:(int *)changes error:(id *)error
{
  v29 = *MEMORY[0x1E69E9840];
  ppStmt = 0;
  v7 = [(MCMSQLiteDB *)self db];
  if (sqlite3_prepare_v2(v7, "DELETE FROM code_signing_info WHERE placeholder = 0 AND invalid = 1 AND data_container_class = ?;", -1, &ppStmt, 0))
  {
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __76__MCMSQLiteDB_deleteAllInvalidPluginCodeSigningEntriesWithNumChanges_error___block_invoke;
    v23[3] = &unk_1E86B0B48;
    v23[4] = self;
    v23[5] = v7;
    v8 = __76__MCMSQLiteDB_deleteAllInvalidPluginCodeSigningEntriesWithNumChanges_error___block_invoke(v23);
LABEL_12:
    v11 = v8;
    v9 = 0;
    v12 = 0;
    goto LABEL_13;
  }

  if (sqlite3_bind_int(ppStmt, 1, 4))
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __76__MCMSQLiteDB_deleteAllInvalidPluginCodeSigningEntriesWithNumChanges_error___block_invoke_367;
    v22[3] = &unk_1E86B0B48;
    v22[4] = self;
    v22[5] = v7;
    v8 = __76__MCMSQLiteDB_deleteAllInvalidPluginCodeSigningEntriesWithNumChanges_error___block_invoke_367(v22);
    goto LABEL_12;
  }

  if (sqlite3_step(ppStmt) != 101)
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __76__MCMSQLiteDB_deleteAllInvalidPluginCodeSigningEntriesWithNumChanges_error___block_invoke_373;
    v21[3] = &unk_1E86B0B48;
    v21[4] = self;
    v21[5] = v7;
    v8 = __76__MCMSQLiteDB_deleteAllInvalidPluginCodeSigningEntriesWithNumChanges_error___block_invoke_373(v21);
    goto LABEL_12;
  }

  v9 = sqlite3_changes(v7);
  if (v9 >= 1)
  {
    v10 = container_log_handle_for_category();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      LODWORD(v26) = v9;
      _os_log_debug_impl(&dword_1DF2C3000, v10, OS_LOG_TYPE_DEBUG, "Deleted %d invalid plugin code signing entries.", buf, 8u);
    }
  }

  v11 = 0;
  v12 = 1;
LABEL_13:
  if (ppStmt && sqlite3_finalize(ppStmt))
  {
    v13 = container_log_handle_for_category();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v18 = [(MCMSQLiteDB *)self url];
      path = [v18 path];
      v20 = sqlite3_errmsg(v7);
      *buf = 138412546;
      v26 = path;
      v27 = 2080;
      v28 = v20;
      _os_log_error_impl(&dword_1DF2C3000, v13, OS_LOG_TYPE_ERROR, "sqlite3_finalize for %@ failed: %s", buf, 0x16u);
    }
  }

  v14 = !v12;
  if (!changes)
  {
    v14 = 1;
  }

  if ((v14 & 1) == 0)
  {
    *changes = v9;
  }

  if (error)
  {
    v15 = v12;
  }

  else
  {
    v15 = 1;
  }

  if ((v15 & 1) == 0)
  {
    v16 = v11;
    *error = v11;
  }

  return v12;
}

id __76__MCMSQLiteDB_deleteAllInvalidPluginCodeSigningEntriesWithNumChanges_error___block_invoke(uint64_t a1)
{
  v15[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) url];
  v4 = [v3 path];
  v5 = [v2 initWithFormat:@"sqlite3_prepare(delete) for %@ failed: %s", v4, sqlite3_errmsg(*(a1 + 40))];

  v14[0] = @"FunctionName";
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB deleteAllInvalidPluginCodeSigningEntriesWithNumChanges:error:]_block_invoke"];
  v15[0] = v6;
  v15[1] = &unk_1F5A76F30;
  v7 = *MEMORY[0x1E696A578];
  v14[1] = @"SourceFileLine";
  v14[2] = v7;
  v15[2] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:3];

  v9 = container_log_handle_for_category();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v13 = v5;
    _os_log_error_impl(&dword_1DF2C3000, v9, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:66 userInfo:v8];

  return v10;
}

id __76__MCMSQLiteDB_deleteAllInvalidPluginCodeSigningEntriesWithNumChanges_error___block_invoke_367(uint64_t a1)
{
  v15[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) url];
  v4 = [v3 path];
  v5 = [v2 initWithFormat:@"sqlite3_bind_text for plugin data container class at %@ failed: %s", v4, sqlite3_errmsg(*(a1 + 40))];

  v14[0] = @"FunctionName";
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB deleteAllInvalidPluginCodeSigningEntriesWithNumChanges:error:]_block_invoke"];
  v15[0] = v6;
  v15[1] = &unk_1F5A76F48;
  v7 = *MEMORY[0x1E696A578];
  v14[1] = @"SourceFileLine";
  v14[2] = v7;
  v15[2] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:3];

  v9 = container_log_handle_for_category();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v13 = v5;
    _os_log_error_impl(&dword_1DF2C3000, v9, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:66 userInfo:v8];

  return v10;
}

id __76__MCMSQLiteDB_deleteAllInvalidPluginCodeSigningEntriesWithNumChanges_error___block_invoke_373(uint64_t a1)
{
  v15[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) url];
  v4 = [v3 path];
  v5 = [v2 initWithFormat:@"sqlite3_step for %@ failed: %s", v4, sqlite3_errmsg(*(a1 + 40))];

  v14[0] = @"FunctionName";
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB deleteAllInvalidPluginCodeSigningEntriesWithNumChanges:error:]_block_invoke"];
  v15[0] = v6;
  v15[1] = &unk_1F5A76F60;
  v7 = *MEMORY[0x1E696A578];
  v14[1] = @"SourceFileLine";
  v14[2] = v7;
  v15[2] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:3];

  v9 = container_log_handle_for_category();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v13 = v5;
    _os_log_error_impl(&dword_1DF2C3000, v9, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:66 userInfo:v8];

  return v10;
}

- (id)childParentMapWithError:(id *)error
{
  v33 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  v5 = objc_opt_new();
  ppStmt = 0;
  v6 = [(MCMSQLiteDB *)self db];
  if (!sqlite3_prepare_v2(v6, "SELECT child_code_signing_id_text, code_signing_info.code_signing_id_text FROM child_bundles, code_signing_info WHERE child_bundles.parent_id=code_signing_info.id;", -1, &ppStmt, 0))
  {
    while (1)
    {
      v13 = sqlite3_step(ppStmt);
      if ((v13 - 102) <= 0xFFFFFFFD)
      {
        v26[0] = MEMORY[0x1E69E9820];
        v26[1] = 3221225472;
        v26[2] = __39__MCMSQLiteDB_childParentMapWithError___block_invoke_349;
        v26[3] = &unk_1E86B0B48;
        v26[4] = self;
        v26[5] = v6;
        v7 = __39__MCMSQLiteDB_childParentMapWithError___block_invoke_349(v26);
        goto LABEL_3;
      }

      if (v13 != 100)
      {
        v8 = 0;
        goto LABEL_4;
      }

      v14 = sqlite3_column_text(ppStmt, 0);
      if (v14)
      {
        v15 = v14;
        v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v14];
        if (!v16)
        {
          v25[0] = MEMORY[0x1E69E9820];
          v25[1] = 3221225472;
          v25[2] = __39__MCMSQLiteDB_childParentMapWithError___block_invoke_352;
          v25[3] = &__block_descriptor_40_e14___NSError_8__0l;
          v25[4] = v15;
          v7 = __39__MCMSQLiteDB_childParentMapWithError___block_invoke_352(v25);
          goto LABEL_3;
        }
      }

      else
      {
        v16 = 0;
      }

      v17 = sqlite3_column_text(ppStmt, 1);
      if (v17)
      {
        v18 = v17;
        v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v17];
        if (!v19)
        {
          v24[0] = MEMORY[0x1E69E9820];
          v24[1] = 3221225472;
          v24[2] = __39__MCMSQLiteDB_childParentMapWithError___block_invoke_358;
          v24[3] = &__block_descriptor_40_e14___NSError_8__0l;
          v24[4] = v18;
          v8 = __39__MCMSQLiteDB_childParentMapWithError___block_invoke_358(v24);

          goto LABEL_4;
        }

        v20 = v19;
        if (v16)
        {
          [v5 setObject:v19 forKeyedSubscript:v16];
        }
      }

      else
      {
        v20 = 0;
      }
    }
  }

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __39__MCMSQLiteDB_childParentMapWithError___block_invoke;
  v27[3] = &unk_1E86B0B48;
  v27[4] = self;
  v27[5] = v6;
  v7 = __39__MCMSQLiteDB_childParentMapWithError___block_invoke(v27);
LABEL_3:
  v8 = v7;
LABEL_4:
  if (ppStmt && sqlite3_finalize(ppStmt))
  {
    v9 = container_log_handle_for_category();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v21 = [(MCMSQLiteDB *)self url];
      path = [v21 path];
      v23 = sqlite3_extended_errcode(v6);
      *buf = 138412546;
      v30 = path;
      v31 = 1024;
      v32 = v23;
      _os_log_error_impl(&dword_1DF2C3000, v9, OS_LOG_TYPE_ERROR, "sqlite3_finalize for %@ failed: %d", buf, 0x12u);
    }
  }

  if (error && !v5)
  {
    v10 = v8;
    *error = v8;
  }

  v11 = [v5 copy];

  return v11;
}

id __39__MCMSQLiteDB_childParentMapWithError___block_invoke(uint64_t a1)
{
  v15[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) url];
  v4 = [v3 path];
  v5 = [v2 initWithFormat:@"sqlite3_prepare(select) for %@ failed: %d", v4, sqlite3_extended_errcode(*(a1 + 40))];

  v14[0] = @"FunctionName";
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB childParentMapWithError:]_block_invoke"];
  v15[0] = v6;
  v15[1] = &unk_1F5A76ED0;
  v7 = *MEMORY[0x1E696A578];
  v14[1] = @"SourceFileLine";
  v14[2] = v7;
  v15[2] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:3];

  v9 = container_log_handle_for_category();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v13 = v5;
    _os_log_error_impl(&dword_1DF2C3000, v9, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:66 userInfo:v8];

  return v10;
}

id __39__MCMSQLiteDB_childParentMapWithError___block_invoke_349(uint64_t a1)
{
  v15[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) url];
  v4 = [v3 path];
  v5 = [v2 initWithFormat:@"sqlite3_step for %@ failed: %d", v4, sqlite3_extended_errcode(*(a1 + 40))];

  v14[0] = @"FunctionName";
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB childParentMapWithError:]_block_invoke"];
  v15[0] = v6;
  v15[1] = &unk_1F5A76EE8;
  v7 = *MEMORY[0x1E696A578];
  v14[1] = @"SourceFileLine";
  v14[2] = v7;
  v15[2] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:3];

  v9 = container_log_handle_for_category();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v13 = v5;
    _os_log_error_impl(&dword_1DF2C3000, v9, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:66 userInfo:v8];

  return v10;
}

id __39__MCMSQLiteDB_childParentMapWithError___block_invoke_352(uint64_t a1)
{
  v11[3] = *MEMORY[0x1E69E9840];
  v1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Failed to allocate childIdentifier for text: %s", *(a1 + 32)];
  v10[0] = @"FunctionName";
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB childParentMapWithError:]_block_invoke"];
  v11[0] = v2;
  v11[1] = &unk_1F5A76F00;
  v3 = *MEMORY[0x1E696A578];
  v10[1] = @"SourceFileLine";
  v10[2] = v3;
  v11[2] = v1;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:3];

  v5 = container_log_handle_for_category();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v9 = v1;
    _os_log_error_impl(&dword_1DF2C3000, v5, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:73 userInfo:v4];

  return v6;
}

id __39__MCMSQLiteDB_childParentMapWithError___block_invoke_358(uint64_t a1)
{
  v11[3] = *MEMORY[0x1E69E9840];
  v1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Failed to allocate parentIdentifier for text: %s", *(a1 + 32)];
  v10[0] = @"FunctionName";
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB childParentMapWithError:]_block_invoke"];
  v11[0] = v2;
  v11[1] = &unk_1F5A76F18;
  v3 = *MEMORY[0x1E696A578];
  v10[1] = @"SourceFileLine";
  v10[2] = v3;
  v11[2] = v1;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:3];

  v5 = container_log_handle_for_category();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v9 = v1;
    _os_log_error_impl(&dword_1DF2C3000, v5, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:73 userInfo:v4];

  return v6;
}

- (BOOL)deleteAllAdvanceCopiesOfCodeSigningEntriesWithError:(id *)error
{
  v27 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  ppStmt = 0;
  v5 = [(MCMSQLiteDB *)self db];
  if (sqlite3_prepare_v2(v5, "DELETE FROM code_signing_info WHERE (placeholder & ?) > 0;", -1, &ppStmt, 0))
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __67__MCMSQLiteDB_deleteAllAdvanceCopiesOfCodeSigningEntriesWithError___block_invoke;
    v21[3] = &unk_1E86B0B48;
    v21[4] = self;
    v21[5] = v5;
    v6 = __67__MCMSQLiteDB_deleteAllAdvanceCopiesOfCodeSigningEntriesWithError___block_invoke(v21);
LABEL_12:
    v10 = v6;
    v11 = 0;
    goto LABEL_13;
  }

  if (sqlite3_bind_int(ppStmt, 1, 2))
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __67__MCMSQLiteDB_deleteAllAdvanceCopiesOfCodeSigningEntriesWithError___block_invoke_336;
    v20[3] = &unk_1E86B0B48;
    v20[4] = self;
    v20[5] = v5;
    v6 = __67__MCMSQLiteDB_deleteAllAdvanceCopiesOfCodeSigningEntriesWithError___block_invoke_336(v20);
    goto LABEL_12;
  }

  if (sqlite3_step(ppStmt) != 101)
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __67__MCMSQLiteDB_deleteAllAdvanceCopiesOfCodeSigningEntriesWithError___block_invoke_342;
    v19[3] = &unk_1E86B0B48;
    v19[4] = self;
    v19[5] = v5;
    v6 = __67__MCMSQLiteDB_deleteAllAdvanceCopiesOfCodeSigningEntriesWithError___block_invoke_342(v19);
    goto LABEL_12;
  }

  v7 = sqlite3_changes(v5);
  if (v7 >= 1)
  {
    v8 = v7;
    v9 = container_log_handle_for_category();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v24) = v8;
      _os_log_error_impl(&dword_1DF2C3000, v9, OS_LOG_TYPE_ERROR, "Deleted %d advance copies of code signing info.", buf, 8u);
    }
  }

  v10 = 0;
  v11 = 1;
LABEL_13:
  if (ppStmt && sqlite3_finalize(ppStmt))
  {
    v12 = container_log_handle_for_category();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v16 = [(MCMSQLiteDB *)self url];
      path = [v16 path];
      v18 = sqlite3_extended_errcode(v5);
      *buf = 138412546;
      v24 = path;
      v25 = 1024;
      v26 = v18;
      _os_log_error_impl(&dword_1DF2C3000, v12, OS_LOG_TYPE_ERROR, "sqlite3_finalize for %@ failed: %d", buf, 0x12u);
    }
  }

  if (error)
  {
    v13 = v11;
  }

  else
  {
    v13 = 1;
  }

  if ((v13 & 1) == 0)
  {
    v14 = v10;
    *error = v10;
  }

  return v11;
}

id __67__MCMSQLiteDB_deleteAllAdvanceCopiesOfCodeSigningEntriesWithError___block_invoke(uint64_t a1)
{
  v15[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) url];
  v4 = [v3 path];
  v5 = [v2 initWithFormat:@"sqlite3_prepare(delete) for %@ failed: %d", v4, sqlite3_extended_errcode(*(a1 + 40))];

  v14[0] = @"FunctionName";
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB deleteAllAdvanceCopiesOfCodeSigningEntriesWithError:]_block_invoke"];
  v15[0] = v6;
  v15[1] = &unk_1F5A76E88;
  v7 = *MEMORY[0x1E696A578];
  v14[1] = @"SourceFileLine";
  v14[2] = v7;
  v15[2] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:3];

  v9 = container_log_handle_for_category();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v13 = v5;
    _os_log_error_impl(&dword_1DF2C3000, v9, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:66 userInfo:v8];

  return v10;
}

id __67__MCMSQLiteDB_deleteAllAdvanceCopiesOfCodeSigningEntriesWithError___block_invoke_336(uint64_t a1)
{
  v15[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) url];
  v4 = [v3 path];
  v5 = [v2 initWithFormat:@"sqlite3_bind_text for flags=%d at %@ failed: %d", 2, v4, sqlite3_extended_errcode(*(a1 + 40))];

  v14[0] = @"FunctionName";
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB deleteAllAdvanceCopiesOfCodeSigningEntriesWithError:]_block_invoke"];
  v15[0] = v6;
  v15[1] = &unk_1F5A76EA0;
  v7 = *MEMORY[0x1E696A578];
  v14[1] = @"SourceFileLine";
  v14[2] = v7;
  v15[2] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:3];

  v9 = container_log_handle_for_category();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v13 = v5;
    _os_log_error_impl(&dword_1DF2C3000, v9, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:66 userInfo:v8];

  return v10;
}

id __67__MCMSQLiteDB_deleteAllAdvanceCopiesOfCodeSigningEntriesWithError___block_invoke_342(uint64_t a1)
{
  v15[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) url];
  v4 = [v3 path];
  v5 = [v2 initWithFormat:@"sqlite3_step for %@ failed: %d", v4, sqlite3_extended_errcode(*(a1 + 40))];

  v14[0] = @"FunctionName";
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB deleteAllAdvanceCopiesOfCodeSigningEntriesWithError:]_block_invoke"];
  v15[0] = v6;
  v15[1] = &unk_1F5A76EB8;
  v7 = *MEMORY[0x1E696A578];
  v14[1] = @"SourceFileLine";
  v14[2] = v7;
  v15[2] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:3];

  v9 = container_log_handle_for_category();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v13 = v5;
    _os_log_error_impl(&dword_1DF2C3000, v9, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:66 userInfo:v8];

  return v10;
}

- (id)parentIdentifierForChildIdentifier:(id)identifier error:(id *)error
{
  v35 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  dispatch_assert_queue_V2(self->_queue);
  ppStmt = 0;
  v7 = [(MCMSQLiteDB *)self db];
  if (sqlite3_prepare_v2(v7, "SELECT code_signing_info.code_signing_id_text FROM child_bundles, code_signing_info WHERE child_bundles.child_code_signing_id_text = ? AND child_bundles.parent_id=code_signing_info.id;", -1, &ppStmt, 0))
  {
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __56__MCMSQLiteDB_parentIdentifierForChildIdentifier_error___block_invoke;
    v29[3] = &unk_1E86B0B48;
    v29[4] = self;
    v29[5] = v7;
    v8 = __56__MCMSQLiteDB_parentIdentifierForChildIdentifier_error___block_invoke(v29);
LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  if (sqlite3_bind_text(ppStmt, 1, [identifierCopy UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL))
  {
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __56__MCMSQLiteDB_parentIdentifierForChildIdentifier_error___block_invoke_309;
    v25[3] = &unk_1E86B0B20;
    v26 = identifierCopy;
    selfCopy = self;
    v28 = v7;
    v8 = __56__MCMSQLiteDB_parentIdentifierForChildIdentifier_error___block_invoke_309(v25);

    goto LABEL_5;
  }

  v9 = 0;
  while (1)
  {
    v13 = sqlite3_step(ppStmt);
    if ((v13 - 102) <= 0xFFFFFFFD)
    {
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __56__MCMSQLiteDB_parentIdentifierForChildIdentifier_error___block_invoke_315;
      v24[3] = &unk_1E86B0B48;
      v24[4] = self;
      v24[5] = v7;
      v17 = __56__MCMSQLiteDB_parentIdentifierForChildIdentifier_error___block_invoke_315(v24);
      goto LABEL_28;
    }

    if (v13 != 100)
    {
      break;
    }

    v14 = sqlite3_column_text(ppStmt, 0);
    if (v14)
    {
      v15 = v14;
      v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v14];

      v9 = v16;
      if (!v16)
      {
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __56__MCMSQLiteDB_parentIdentifierForChildIdentifier_error___block_invoke_318;
        v23[3] = &__block_descriptor_40_e14___NSError_8__0l;
        v23[4] = v15;
        v17 = __56__MCMSQLiteDB_parentIdentifierForChildIdentifier_error___block_invoke_318(v23);
LABEL_28:
        v8 = v17;
        goto LABEL_6;
      }
    }
  }

  v8 = 0;
LABEL_6:
  if (ppStmt && sqlite3_finalize(ppStmt))
  {
    v10 = container_log_handle_for_category();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v18 = [(MCMSQLiteDB *)self url];
      path = [v18 path];
      v20 = sqlite3_extended_errcode(v7);
      *buf = 138412546;
      v32 = path;
      v33 = 1024;
      v34 = v20;
      _os_log_error_impl(&dword_1DF2C3000, v10, OS_LOG_TYPE_ERROR, "sqlite3_finalize for %@ failed: %d", buf, 0x12u);
    }
  }

  if (!v8)
  {
    if (v9)
    {
      v8 = 0;
      goto LABEL_17;
    }

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __56__MCMSQLiteDB_parentIdentifierForChildIdentifier_error___block_invoke_324;
    v21[3] = &unk_1E86B0B98;
    v22 = identifierCopy;
    v8 = __56__MCMSQLiteDB_parentIdentifierForChildIdentifier_error___block_invoke_324(v21);
    v9 = v22;
  }

  if (error)
  {
    v11 = v8;
    v9 = 0;
    *error = v8;
  }

  else
  {
    v9 = 0;
  }

LABEL_17:

  return v9;
}

id __56__MCMSQLiteDB_parentIdentifierForChildIdentifier_error___block_invoke(uint64_t a1)
{
  v15[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) url];
  v4 = [v3 path];
  v5 = [v2 initWithFormat:@"sqlite3_prepare(select) for %@ failed: %d", v4, sqlite3_extended_errcode(*(a1 + 40))];

  v14[0] = @"FunctionName";
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB parentIdentifierForChildIdentifier:error:]_block_invoke"];
  v15[0] = v6;
  v15[1] = &unk_1F5A76E10;
  v7 = *MEMORY[0x1E696A578];
  v14[1] = @"SourceFileLine";
  v14[2] = v7;
  v15[2] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:3];

  v9 = container_log_handle_for_category();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v13 = v5;
    _os_log_error_impl(&dword_1DF2C3000, v9, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:66 userInfo:v8];

  return v10;
}

id __56__MCMSQLiteDB_parentIdentifierForChildIdentifier_error___block_invoke_309(uint64_t a1)
{
  v16[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) url];
  v5 = [v4 path];
  v6 = [v2 initWithFormat:@"sqlite3_bind_text for child_code_signing_id_text=%@ at %@ failed: %s", v3, v5, sqlite3_errmsg(*(a1 + 48))];

  v15[0] = @"FunctionName";
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB parentIdentifierForChildIdentifier:error:]_block_invoke"];
  v16[0] = v7;
  v16[1] = &unk_1F5A76E28;
  v8 = *MEMORY[0x1E696A578];
  v15[1] = @"SourceFileLine";
  v15[2] = v8;
  v16[2] = v6;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:3];

  v10 = container_log_handle_for_category();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v14 = v6;
    _os_log_error_impl(&dword_1DF2C3000, v10, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:66 userInfo:v9];

  return v11;
}

id __56__MCMSQLiteDB_parentIdentifierForChildIdentifier_error___block_invoke_315(uint64_t a1)
{
  v15[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) url];
  v4 = [v3 path];
  v5 = [v2 initWithFormat:@"sqlite3_step for %@ failed: %d", v4, sqlite3_extended_errcode(*(a1 + 40))];

  v14[0] = @"FunctionName";
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB parentIdentifierForChildIdentifier:error:]_block_invoke"];
  v15[0] = v6;
  v15[1] = &unk_1F5A76E40;
  v7 = *MEMORY[0x1E696A578];
  v14[1] = @"SourceFileLine";
  v14[2] = v7;
  v15[2] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:3];

  v9 = container_log_handle_for_category();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v13 = v5;
    _os_log_error_impl(&dword_1DF2C3000, v9, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:66 userInfo:v8];

  return v10;
}

id __56__MCMSQLiteDB_parentIdentifierForChildIdentifier_error___block_invoke_318(uint64_t a1)
{
  v11[3] = *MEMORY[0x1E69E9840];
  v1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Failed to allocate parentIdentifier for text: %s", *(a1 + 32)];
  v10[0] = @"FunctionName";
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB parentIdentifierForChildIdentifier:error:]_block_invoke"];
  v11[0] = v2;
  v11[1] = &unk_1F5A76E58;
  v3 = *MEMORY[0x1E696A578];
  v10[1] = @"SourceFileLine";
  v10[2] = v3;
  v11[2] = v1;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:3];

  v5 = container_log_handle_for_category();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v9 = v1;
    _os_log_error_impl(&dword_1DF2C3000, v5, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:73 userInfo:v4];

  return v6;
}

id __56__MCMSQLiteDB_parentIdentifierForChildIdentifier_error___block_invoke_324(uint64_t a1)
{
  v8[3] = *MEMORY[0x1E69E9840];
  v1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Parent identifier for: %@ Not Found in DB", *(a1 + 32)];
  v7[0] = @"FunctionName";
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB parentIdentifierForChildIdentifier:error:]_block_invoke"];
  v8[0] = v2;
  v8[1] = &unk_1F5A76E70;
  v3 = *MEMORY[0x1E696A578];
  v7[1] = @"SourceFileLine";
  v7[2] = v3;
  v8[2] = v1;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:3];

  v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:67 userInfo:v4];

  return v5;
}

- (id)childIdentifiersForParentIdentifier:(id)identifier error:(id *)error
{
  v39 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  dispatch_assert_queue_V2(self->_queue);
  ppStmt = 0;
  v7 = [(MCMSQLiteDB *)self db];
  if (sqlite3_prepare_v2(v7, "SELECT child_bundles.child_code_signing_id_text FROM child_bundles, code_signing_info WHERE code_signing_info.code_signing_id_text = ? AND child_bundles.parent_id=code_signing_info.id;", -1, &ppStmt, 0))
  {
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __57__MCMSQLiteDB_childIdentifiersForParentIdentifier_error___block_invoke;
    v33[3] = &unk_1E86B0B48;
    v33[4] = self;
    v33[5] = v7;
    v8 = __57__MCMSQLiteDB_childIdentifiersForParentIdentifier_error___block_invoke(v33);
LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  if (sqlite3_bind_text(ppStmt, 1, [identifierCopy UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL))
  {
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __57__MCMSQLiteDB_childIdentifiersForParentIdentifier_error___block_invoke_280;
    v29[3] = &unk_1E86B0B20;
    v30 = identifierCopy;
    selfCopy = self;
    v32 = v7;
    v8 = __57__MCMSQLiteDB_childIdentifiersForParentIdentifier_error___block_invoke_280(v29);

    goto LABEL_5;
  }

  v9 = 0;
  while (1)
  {
    do
    {
      v14 = sqlite3_step(ppStmt);
      if ((v14 - 102) <= 0xFFFFFFFD)
      {
        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 3221225472;
        v28[2] = __57__MCMSQLiteDB_childIdentifiersForParentIdentifier_error___block_invoke_283;
        v28[3] = &unk_1E86B0B48;
        v28[4] = self;
        v28[5] = v7;
        v8 = __57__MCMSQLiteDB_childIdentifiersForParentIdentifier_error___block_invoke_283(v28);
        goto LABEL_6;
      }

      if (v14 != 100)
      {
        v8 = 0;
        goto LABEL_6;
      }

      v15 = sqlite3_column_text(ppStmt, 0);
    }

    while (!v15);
    v16 = v15;
    v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v15];
    if (!v17)
    {
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __57__MCMSQLiteDB_childIdentifiersForParentIdentifier_error___block_invoke_286;
      v27[3] = &__block_descriptor_40_e14___NSError_8__0l;
      v27[4] = v16;
      v21 = __57__MCMSQLiteDB_childIdentifiersForParentIdentifier_error___block_invoke_286(v27);
      goto LABEL_33;
    }

    if (!v9)
    {
      v9 = objc_opt_new();
      if (!v9)
      {
        break;
      }
    }

    [v9 addObject:v17];
  }

  v21 = __57__MCMSQLiteDB_childIdentifiersForParentIdentifier_error___block_invoke_292();
LABEL_33:
  v8 = v21;

LABEL_6:
  if (ppStmt && sqlite3_finalize(ppStmt))
  {
    v10 = container_log_handle_for_category();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v18 = [(MCMSQLiteDB *)self url];
      path = [v18 path];
      v20 = sqlite3_extended_errcode(v7);
      *buf = 138412546;
      v36 = path;
      v37 = 1024;
      v38 = v20;
      _os_log_error_impl(&dword_1DF2C3000, v10, OS_LOG_TYPE_ERROR, "sqlite3_finalize for %@ failed: %d", buf, 0x12u);
    }
  }

  if (!v8)
  {
    if (v9)
    {
      v8 = 0;
      goto LABEL_17;
    }

    v22 = MEMORY[0x1E69E9820];
    v23 = 3221225472;
    v24 = __57__MCMSQLiteDB_childIdentifiersForParentIdentifier_error___block_invoke_300;
    v25 = &unk_1E86B0B98;
    v26 = identifierCopy;
    v8 = __57__MCMSQLiteDB_childIdentifiersForParentIdentifier_error___block_invoke_300(&v22);
    v9 = v26;
  }

  if (error)
  {
    v11 = v8;
    v9 = 0;
    *error = v8;
  }

  else
  {
    v9 = 0;
  }

LABEL_17:
  v12 = [v9 copy];

  return v12;
}

id __57__MCMSQLiteDB_childIdentifiersForParentIdentifier_error___block_invoke(uint64_t a1)
{
  v15[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) url];
  v4 = [v3 path];
  v5 = [v2 initWithFormat:@"sqlite3_prepare(select) for %@ failed: %d", v4, sqlite3_extended_errcode(*(a1 + 40))];

  v14[0] = @"FunctionName";
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB childIdentifiersForParentIdentifier:error:]_block_invoke"];
  v15[0] = v6;
  v15[1] = &unk_1F5A76D80;
  v7 = *MEMORY[0x1E696A578];
  v14[1] = @"SourceFileLine";
  v14[2] = v7;
  v15[2] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:3];

  v9 = container_log_handle_for_category();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v13 = v5;
    _os_log_error_impl(&dword_1DF2C3000, v9, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:66 userInfo:v8];

  return v10;
}

id __57__MCMSQLiteDB_childIdentifiersForParentIdentifier_error___block_invoke_280(uint64_t a1)
{
  v16[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) url];
  v5 = [v4 path];
  v6 = [v2 initWithFormat:@"sqlite3_bind_text for code_signing_id_text=%@ at %@ failed: %d", v3, v5, sqlite3_extended_errcode(*(a1 + 48))];

  v15[0] = @"FunctionName";
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB childIdentifiersForParentIdentifier:error:]_block_invoke"];
  v16[0] = v7;
  v16[1] = &unk_1F5A76D98;
  v8 = *MEMORY[0x1E696A578];
  v15[1] = @"SourceFileLine";
  v15[2] = v8;
  v16[2] = v6;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:3];

  v10 = container_log_handle_for_category();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v14 = v6;
    _os_log_error_impl(&dword_1DF2C3000, v10, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:66 userInfo:v9];

  return v11;
}

id __57__MCMSQLiteDB_childIdentifiersForParentIdentifier_error___block_invoke_283(uint64_t a1)
{
  v15[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) url];
  v4 = [v3 path];
  v5 = [v2 initWithFormat:@"sqlite3_step for %@ failed: %d", v4, sqlite3_extended_errcode(*(a1 + 40))];

  v14[0] = @"FunctionName";
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB childIdentifiersForParentIdentifier:error:]_block_invoke"];
  v15[0] = v6;
  v15[1] = &unk_1F5A76DB0;
  v7 = *MEMORY[0x1E696A578];
  v14[1] = @"SourceFileLine";
  v14[2] = v7;
  v15[2] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:3];

  v9 = container_log_handle_for_category();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v13 = v5;
    _os_log_error_impl(&dword_1DF2C3000, v9, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:66 userInfo:v8];

  return v10;
}

id __57__MCMSQLiteDB_childIdentifiersForParentIdentifier_error___block_invoke_286(uint64_t a1)
{
  v11[3] = *MEMORY[0x1E69E9840];
  v1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Failed to allocate thisChildBundleId for text: %s", *(a1 + 32)];
  v10[0] = @"FunctionName";
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB childIdentifiersForParentIdentifier:error:]_block_invoke"];
  v11[0] = v2;
  v11[1] = &unk_1F5A76DC8;
  v3 = *MEMORY[0x1E696A578];
  v10[1] = @"SourceFileLine";
  v10[2] = v3;
  v11[2] = v1;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:3];

  v5 = container_log_handle_for_category();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v9 = v1;
    _os_log_error_impl(&dword_1DF2C3000, v5, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:73 userInfo:v4];

  return v6;
}

id __57__MCMSQLiteDB_childIdentifiersForParentIdentifier_error___block_invoke_292()
{
  v10[3] = *MEMORY[0x1E69E9840];
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Failed to allocate childBundleIds"];
  v9[0] = @"FunctionName";
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB childIdentifiersForParentIdentifier:error:]_block_invoke"];
  v10[0] = v1;
  v10[1] = &unk_1F5A76DE0;
  v2 = *MEMORY[0x1E696A578];
  v9[1] = @"SourceFileLine";
  v9[2] = v2;
  v10[2] = v0;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:3];

  v4 = container_log_handle_for_category();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 138543362;
    v8 = v0;
    _os_log_error_impl(&dword_1DF2C3000, v4, OS_LOG_TYPE_ERROR, "%{public}@", &v7, 0xCu);
  }

  v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:73 userInfo:v3];

  return v5;
}

id __57__MCMSQLiteDB_childIdentifiersForParentIdentifier_error___block_invoke_300(uint64_t a1)
{
  v8[3] = *MEMORY[0x1E69E9840];
  v1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Children for parent identifier: %@ Not Found in DB", *(a1 + 32)];
  v7[0] = @"FunctionName";
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB childIdentifiersForParentIdentifier:error:]_block_invoke"];
  v8[0] = v2;
  v8[1] = &unk_1F5A76DF8;
  v3 = *MEMORY[0x1E696A578];
  v7[1] = @"SourceFileLine";
  v7[2] = v3;
  v8[2] = v1;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:3];

  v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:67 userInfo:v4];

  return v5;
}

- (id)identifiersWithError:(id *)error
{
  v30 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  ppStmt = 0;
  v5 = [(MCMSQLiteDB *)self db];
  v6 = [MEMORY[0x1E695DFA8] set];
  if (!sqlite3_prepare_v2(v5, "SELECT code_signing_info.code_signing_id_text FROM code_signing_info;", -1, &ppStmt, 0))
  {
    while (1)
    {
      v14 = sqlite3_step(ppStmt);
      if ((v14 - 102) <= 0xFFFFFFFD)
      {
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __36__MCMSQLiteDB_identifiersWithError___block_invoke_271;
        v23[3] = &unk_1E86B0B48;
        v23[4] = self;
        v23[5] = v5;
        v7 = __36__MCMSQLiteDB_identifiersWithError___block_invoke_271(v23);
        goto LABEL_3;
      }

      if (v14 != 100)
      {
        v8 = 0;
        goto LABEL_4;
      }

      v15 = sqlite3_column_text(ppStmt, 0);
      if (v15)
      {
        v16 = v15;
        v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v15];
        if (!v17)
        {
          v22[0] = MEMORY[0x1E69E9820];
          v22[1] = 3221225472;
          v22[2] = __36__MCMSQLiteDB_identifiersWithError___block_invoke_274;
          v22[3] = &__block_descriptor_40_e14___NSError_8__0l;
          v22[4] = v16;
          v7 = __36__MCMSQLiteDB_identifiersWithError___block_invoke_274(v22);
          goto LABEL_3;
        }

        v18 = v17;
        [v6 addObject:v17];
      }

      else
      {
        v18 = container_log_handle_for_category();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_1DF2C3000, v18, OS_LOG_TYPE_ERROR, "Error retrieving code_signing_id_text from DB", buf, 2u);
        }
      }
    }
  }

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __36__MCMSQLiteDB_identifiersWithError___block_invoke;
  v24[3] = &unk_1E86B0B48;
  v24[4] = self;
  v24[5] = v5;
  v7 = __36__MCMSQLiteDB_identifiersWithError___block_invoke(v24);
LABEL_3:
  v8 = v7;
LABEL_4:
  if (ppStmt && sqlite3_finalize(ppStmt))
  {
    v9 = container_log_handle_for_category();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v19 = [(MCMSQLiteDB *)self url];
      path = [v19 path];
      v21 = sqlite3_extended_errcode(v5);
      *buf = 138412546;
      v27 = path;
      v28 = 1024;
      v29 = v21;
      _os_log_error_impl(&dword_1DF2C3000, v9, OS_LOG_TYPE_ERROR, "sqlite3_finalize for %@ failed: %d", buf, 0x12u);
    }
  }

  v10 = [v6 count];
  if (error && !v10)
  {

    v11 = v8;
    v6 = 0;
    *error = v8;
  }

  v12 = [v6 copy];

  return v12;
}

id __36__MCMSQLiteDB_identifiersWithError___block_invoke(uint64_t a1)
{
  v15[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) url];
  v4 = [v3 path];
  v5 = [v2 initWithFormat:@"sqlite3_prepare(select) for %@ failed: %d", v4, sqlite3_extended_errcode(*(a1 + 40))];

  v14[0] = @"FunctionName";
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB identifiersWithError:]_block_invoke"];
  v15[0] = v6;
  v15[1] = &unk_1F5A76D38;
  v7 = *MEMORY[0x1E696A578];
  v14[1] = @"SourceFileLine";
  v14[2] = v7;
  v15[2] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:3];

  v9 = container_log_handle_for_category();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v13 = v5;
    _os_log_error_impl(&dword_1DF2C3000, v9, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:66 userInfo:v8];

  return v10;
}

id __36__MCMSQLiteDB_identifiersWithError___block_invoke_271(uint64_t a1)
{
  v15[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) url];
  v4 = [v3 path];
  v5 = [v2 initWithFormat:@"sqlite3_step for %@ failed: %d", v4, sqlite3_extended_errcode(*(a1 + 40))];

  v14[0] = @"FunctionName";
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB identifiersWithError:]_block_invoke"];
  v15[0] = v6;
  v15[1] = &unk_1F5A76D50;
  v7 = *MEMORY[0x1E696A578];
  v14[1] = @"SourceFileLine";
  v14[2] = v7;
  v15[2] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:3];

  v9 = container_log_handle_for_category();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v13 = v5;
    _os_log_error_impl(&dword_1DF2C3000, v9, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:66 userInfo:v8];

  return v10;
}

id __36__MCMSQLiteDB_identifiersWithError___block_invoke_274(uint64_t a1)
{
  v11[3] = *MEMORY[0x1E69E9840];
  v1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Failed to allocate identifier for text: %s", *(a1 + 32)];
  v10[0] = @"FunctionName";
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB identifiersWithError:]_block_invoke"];
  v11[0] = v2;
  v11[1] = &unk_1F5A76D68;
  v3 = *MEMORY[0x1E696A578];
  v10[1] = @"SourceFileLine";
  v10[2] = v3;
  v11[2] = v1;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:3];

  v5 = container_log_handle_for_category();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v9 = v1;
    _os_log_error_impl(&dword_1DF2C3000, v5, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:73 userInfo:v4];

  return v6;
}

- (id)enumerateIdentifiersAndCodeSigningInfoUsingBlock:(id)block
{
  v48 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  dispatch_assert_queue_V2(self->_queue);
  ppStmt = 0;
  v5 = [(MCMSQLiteDB *)self db];
  v35 = blockCopy;
  db = v5;
  if (!sqlite3_prepare_v2(v5, "SELECT code_signing_data.data, code_signing_info.invalid, code_signing_info.placeholder, code_signing_info.registered_by_caller, code_signing_info.data_container_class, code_signing_info.code_signing_id_text FROM code_signing_info, code_signing_data WHERE code_signing_info.id = code_signing_data.cs_info_id;", -1, &ppStmt, 0))
  {
    v7 = 0;
    v34 = *MEMORY[0x1E696A578];
    *&v6 = 138543362;
    v32 = v6;
    while (1)
    {
      v10 = objc_autoreleasePoolPush();
      v11 = sqlite3_step(ppStmt);
      if ((v11 - 102) <= 0xFFFFFFFD)
      {
        v41[0] = MEMORY[0x1E69E9820];
        v41[1] = 3221225472;
        v41[2] = __64__MCMSQLiteDB_enumerateIdentifiersAndCodeSigningInfoUsingBlock___block_invoke_244;
        v41[3] = &unk_1E86B0B48;
        v41[4] = self;
        v41[5] = db;
        v28 = __64__MCMSQLiteDB_enumerateIdentifiersAndCodeSigningInfoUsingBlock___block_invoke_244(v41);

        objc_autoreleasePoolPop(v10);
        v7 = v28;
        goto LABEL_3;
      }

      if (v11 != 100)
      {
        objc_autoreleasePoolPop(v10);
        goto LABEL_3;
      }

      v40 = 0;
      v12 = [(MCMSQLiteDB *)self _codeSigningEntryFromStatementRow:ppStmt error:&v40];
      v13 = v40;
      if (v12)
      {
        break;
      }

      v21 = 0;
LABEL_31:

      objc_autoreleasePoolPop(v10);
      if (v21)
      {
        goto LABEL_3;
      }
    }

    v14 = sqlite3_column_text(ppStmt, 5);
    if (!v14)
    {
      v18 = v7;
      v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Error retrieving code_signing_id_text from DB"];
      v46[0] = @"FunctionName";
      v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB enumerateIdentifiersAndCodeSigningInfoUsingBlock:]_block_invoke"];
      *v47 = v23;
      *&v47[8] = &unk_1F5A76CF0;
      v46[1] = @"SourceFileLine";
      v46[2] = v34;
      *&v47[16] = v22;
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v47 forKeys:v46 count:3];

      v25 = container_log_handle_for_category();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = v32;
        v45 = v22;
        _os_log_error_impl(&dword_1DF2C3000, v25, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      v20 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:66 userInfo:v24];

      v21 = 0;
      v17 = v13;
      goto LABEL_23;
    }

    v15 = v14;
    v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v14];
    if (!v16)
    {
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __64__MCMSQLiteDB_enumerateIdentifiersAndCodeSigningInfoUsingBlock___block_invoke_255;
      v39[3] = &__block_descriptor_40_e14___NSError_8__0l;
      v39[4] = v15;
      __64__MCMSQLiteDB_enumerateIdentifiersAndCodeSigningInfoUsingBlock___block_invoke_255(v39);
      v17 = v7;
      v7 = v21 = 1;
      goto LABEL_30;
    }

    v17 = v16;
    v18 = v7;
    v38 = v13;
    v19 = [(MCMSQLiteDB *)self childIdentifiersForParentIdentifier:v16 error:&v38];
    v20 = v38;

    if (v19)
    {
LABEL_18:
      [v12 setChildBundleIdentifiers:{v19, v32}];
      (v35)[2](v35, v17, v12);

      v21 = 0;
      v17 = v19;
LABEL_23:
      v13 = v20;
      v7 = v18;
LABEL_30:

      goto LABEL_31;
    }

    domain = [v20 domain];
    if ([domain isEqualToString:@"MCMErrorDomain"])
    {
      code = [v20 code];

      if (code == 67)
      {

        v20 = 0;
        goto LABEL_18;
      }
    }

    else
    {
    }

    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __64__MCMSQLiteDB_enumerateIdentifiersAndCodeSigningInfoUsingBlock___block_invoke_261;
    v36[3] = &unk_1E86B0B98;
    v13 = v20;
    v37 = v13;
    v7 = __64__MCMSQLiteDB_enumerateIdentifiersAndCodeSigningInfoUsingBlock___block_invoke_261(v36);

    v21 = 0;
    goto LABEL_30;
  }

  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __64__MCMSQLiteDB_enumerateIdentifiersAndCodeSigningInfoUsingBlock___block_invoke;
  v42[3] = &unk_1E86B0B48;
  v42[4] = self;
  v42[5] = v5;
  v7 = __64__MCMSQLiteDB_enumerateIdentifiersAndCodeSigningInfoUsingBlock___block_invoke(v42);
LABEL_3:
  if (ppStmt && sqlite3_finalize(ppStmt))
  {
    v8 = container_log_handle_for_category();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v29 = [(MCMSQLiteDB *)self url];
      path = [v29 path];
      v31 = sqlite3_extended_errcode(db);
      *v47 = 138412546;
      *&v47[4] = path;
      *&v47[12] = 1024;
      *&v47[14] = v31;
      _os_log_error_impl(&dword_1DF2C3000, v8, OS_LOG_TYPE_ERROR, "sqlite3_finalize for %@ failed: %d", v47, 0x12u);
    }
  }

  return v7;
}

id __64__MCMSQLiteDB_enumerateIdentifiersAndCodeSigningInfoUsingBlock___block_invoke(uint64_t a1)
{
  v15[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) url];
  v4 = [v3 path];
  v5 = [v2 initWithFormat:@"sqlite3_prepare(select) for %@ failed: %d", v4, sqlite3_extended_errcode(*(a1 + 40))];

  v14[0] = @"FunctionName";
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB enumerateIdentifiersAndCodeSigningInfoUsingBlock:]_block_invoke"];
  v15[0] = v6;
  v15[1] = &unk_1F5A76CC0;
  v7 = *MEMORY[0x1E696A578];
  v14[1] = @"SourceFileLine";
  v14[2] = v7;
  v15[2] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:3];

  v9 = container_log_handle_for_category();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v13 = v5;
    _os_log_error_impl(&dword_1DF2C3000, v9, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:66 userInfo:v8];

  return v10;
}

id __64__MCMSQLiteDB_enumerateIdentifiersAndCodeSigningInfoUsingBlock___block_invoke_244(uint64_t a1)
{
  v15[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) url];
  v4 = [v3 path];
  v5 = [v2 initWithFormat:@"sqlite3_step for %@ failed: %d", v4, sqlite3_extended_errcode(*(a1 + 40))];

  v14[0] = @"FunctionName";
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB enumerateIdentifiersAndCodeSigningInfoUsingBlock:]_block_invoke"];
  v15[0] = v6;
  v15[1] = &unk_1F5A76CD8;
  v7 = *MEMORY[0x1E696A578];
  v14[1] = @"SourceFileLine";
  v14[2] = v7;
  v15[2] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:3];

  v9 = container_log_handle_for_category();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v13 = v5;
    _os_log_error_impl(&dword_1DF2C3000, v9, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:66 userInfo:v8];

  return v10;
}

id __64__MCMSQLiteDB_enumerateIdentifiersAndCodeSigningInfoUsingBlock___block_invoke_255(uint64_t a1)
{
  v11[3] = *MEMORY[0x1E69E9840];
  v1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Failed to allocate identifier for text: %s", *(a1 + 32)];
  v10[0] = @"FunctionName";
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB enumerateIdentifiersAndCodeSigningInfoUsingBlock:]_block_invoke"];
  v11[0] = v2;
  v11[1] = &unk_1F5A76D08;
  v3 = *MEMORY[0x1E696A578];
  v10[1] = @"SourceFileLine";
  v10[2] = v3;
  v11[2] = v1;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:3];

  v5 = container_log_handle_for_category();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v9 = v1;
    _os_log_error_impl(&dword_1DF2C3000, v5, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:73 userInfo:v4];

  return v6;
}

id __64__MCMSQLiteDB_enumerateIdentifiersAndCodeSigningInfoUsingBlock___block_invoke_261(uint64_t a1)
{
  v20[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Error retrieving childBundleIds: %@", *(a1 + 32)];
  v19[0] = @"FunctionName";
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB enumerateIdentifiersAndCodeSigningInfoUsingBlock:]_block_invoke"];
  v20[0] = v3;
  v20[1] = &unk_1F5A76D20;
  v4 = *MEMORY[0x1E696A578];
  v19[1] = @"SourceFileLine";
  v19[2] = v4;
  v20[2] = v2;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:3];

  if (*(a1 + 32))
  {
    v6 = [v5 mutableCopy];
    [v6 setObject:*(a1 + 32) forKeyedSubscript:*MEMORY[0x1E696AA08]];
    v7 = [v6 copy];

    if (*(a1 + 32))
    {
      v8 = container_log_handle_for_category();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      v9 = *(a1 + 32);
      *buf = 138543618;
      v16 = v2;
      v17 = 2114;
      v18 = v9;
      v10 = "%{public}@ (%{public}@)";
      v11 = v8;
      v12 = 22;
      goto LABEL_11;
    }
  }

  else
  {
    v7 = v5;
  }

  v8 = container_log_handle_for_category();
  if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_7;
  }

  *buf = 138543362;
  v16 = v2;
  v10 = "%{public}@";
  v11 = v8;
  v12 = 12;
LABEL_11:
  _os_log_error_impl(&dword_1DF2C3000, v11, OS_LOG_TYPE_ERROR, v10, buf, v12);
LABEL_7:

  v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:66 userInfo:v7];

  return v13;
}

- (BOOL)invalidateCodeSigningForIdentifierAndAllChildren:(id)children error:(id *)error
{
  v56 = *MEMORY[0x1E69E9840];
  childrenCopy = children;
  dispatch_assert_queue_V2(self->_queue);
  v32 = objc_opt_new();
  v44 = 0;
  v33 = childrenCopy;
  v6 = [(MCMSQLiteDB *)self childIdentifiersForParentIdentifier:childrenCopy error:&v44];
  v7 = v44;
  v8 = v7;
  v31 = v6;
  if (v6)
  {
    goto LABEL_2;
  }

  domain = [v7 domain];
  if (![domain isEqualToString:@"MCMErrorDomain"])
  {

    goto LABEL_27;
  }

  v24 = [v8 code] == 67;

  if (!v24)
  {
LABEL_27:
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __70__MCMSQLiteDB_invalidateCodeSigningForIdentifierAndAllChildren_error___block_invoke;
    v41[3] = &unk_1E86B0BE8;
    v42 = v33;
    v27 = v8;
    v43 = v27;
    v21 = __70__MCMSQLiteDB_invalidateCodeSigningForIdentifierAndAllChildren_error___block_invoke(v41);

    v31 = 0;
    v26 = &v42;
    v25 = v43;
    goto LABEL_28;
  }

  v8 = 0;
  v6 = 0;
LABEL_2:
  [v32 addObject:v33];
  if (v6)
  {
    [v32 addObjectsFromArray:v6];
  }

  v40 = v8;
  v9 = [(MCMSQLiteDB *)self _sqliteExec:@"BEGIN;" error:&v40];
  v10 = v40;

  if (v9)
  {
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v11 = v32;
    v12 = [v11 countByEnumeratingWithState:&v52 objects:v51 count:16];
    if (v12)
    {
      v13 = *v53;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v53 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v52 + 1) + 8 * i);
          v37 = v10;
          v16 = [(MCMSQLiteDB *)self invalidateCodeSigningWithIdentifier:v15 error:&v37];
          v17 = v37;

          if (v16)
          {
            v18 = container_log_handle_for_category();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412546;
              v46 = v33;
              v47 = 2112;
              v48 = v15;
              _os_log_debug_impl(&dword_1DF2C3000, v18, OS_LOG_TYPE_DEBUG, "Invalidating code signing info for %@ child: %@", buf, 0x16u);
            }

            v10 = v17;
          }

          else
          {
            v19 = container_log_handle_for_category();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412802;
              v46 = v33;
              v47 = 2112;
              v48 = v15;
              v49 = 2112;
              v50 = v17;
              _os_log_error_impl(&dword_1DF2C3000, v19, OS_LOG_TYPE_ERROR, "Failed to invalidate code signing info for %@ child %@ : %@", buf, 0x20u);
            }

            v10 = 0;
            v18 = v17;
          }
        }

        v12 = [v11 countByEnumeratingWithState:&v52 objects:v51 count:16];
      }

      while (v12);
    }

    v36[0] = v10;
    v20 = [(MCMSQLiteDB *)self _sqliteExec:@"COMMIT;" error:v36];
    v21 = v36[0];

    if (!v20)
    {
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __70__MCMSQLiteDB_invalidateCodeSigningForIdentifierAndAllChildren_error___block_invoke_235;
      v34[3] = &unk_1E86B0B98;
      v35 = v21;
      v21 = __70__MCMSQLiteDB_invalidateCodeSigningForIdentifierAndAllChildren_error___block_invoke_235(v34);
    }

    v22 = 1;
    goto LABEL_31;
  }

  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __70__MCMSQLiteDB_invalidateCodeSigningForIdentifierAndAllChildren_error___block_invoke_229;
  v38[3] = &unk_1E86B0B98;
  v25 = v10;
  v39 = v25;
  v21 = __70__MCMSQLiteDB_invalidateCodeSigningForIdentifierAndAllChildren_error___block_invoke_229(v38);
  v26 = &v39;
LABEL_28:

  if (error)
  {
    v28 = v21;
    *error = v21;
  }

  v22 = 0;
LABEL_31:

  return v22;
}

id __70__MCMSQLiteDB_invalidateCodeSigningForIdentifierAndAllChildren_error___block_invoke(uint64_t a1)
{
  v20[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Error retrieving child bundles ids from DB with identifier %@ : %@", *(a1 + 32), *(a1 + 40)];
  v19[0] = @"FunctionName";
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB invalidateCodeSigningForIdentifierAndAllChildren:error:]_block_invoke"];
  v20[0] = v3;
  v20[1] = &unk_1F5A76C48;
  v4 = *MEMORY[0x1E696A578];
  v19[1] = @"SourceFileLine";
  v19[2] = v4;
  v20[2] = v2;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:3];

  if (*(a1 + 40))
  {
    v6 = [v5 mutableCopy];
    [v6 setObject:*(a1 + 40) forKeyedSubscript:*MEMORY[0x1E696AA08]];
    v7 = [v6 copy];

    if (*(a1 + 40))
    {
      v8 = container_log_handle_for_category();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      v9 = *(a1 + 40);
      *buf = 138543618;
      v16 = v2;
      v17 = 2114;
      v18 = v9;
      v10 = "%{public}@ (%{public}@)";
      v11 = v8;
      v12 = 22;
      goto LABEL_11;
    }
  }

  else
  {
    v7 = v5;
  }

  v8 = container_log_handle_for_category();
  if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_7;
  }

  *buf = 138543362;
  v16 = v2;
  v10 = "%{public}@";
  v11 = v8;
  v12 = 12;
LABEL_11:
  _os_log_error_impl(&dword_1DF2C3000, v11, OS_LOG_TYPE_ERROR, v10, buf, v12);
LABEL_7:

  v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:66 userInfo:v7];

  return v13;
}

id __70__MCMSQLiteDB_invalidateCodeSigningForIdentifierAndAllChildren_error___block_invoke_229(uint64_t a1)
{
  v20[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"failed _sqliteExec begin"];
  v19[0] = @"FunctionName";
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB invalidateCodeSigningForIdentifierAndAllChildren:error:]_block_invoke"];
  v20[0] = v3;
  v20[1] = &unk_1F5A76C60;
  v4 = *MEMORY[0x1E696A578];
  v19[1] = @"SourceFileLine";
  v19[2] = v4;
  v20[2] = v2;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:3];

  if (*(a1 + 32))
  {
    v6 = [v5 mutableCopy];
    [v6 setObject:*(a1 + 32) forKeyedSubscript:*MEMORY[0x1E696AA08]];
    v7 = [v6 copy];

    if (*(a1 + 32))
    {
      v8 = container_log_handle_for_category();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      v9 = *(a1 + 32);
      v15 = 138543618;
      v16 = v2;
      v17 = 2114;
      v18 = v9;
      v10 = "%{public}@ (%{public}@)";
      v11 = v8;
      v12 = 22;
      goto LABEL_11;
    }
  }

  else
  {
    v7 = v5;
  }

  v8 = container_log_handle_for_category();
  if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_7;
  }

  v15 = 138543362;
  v16 = v2;
  v10 = "%{public}@";
  v11 = v8;
  v12 = 12;
LABEL_11:
  _os_log_error_impl(&dword_1DF2C3000, v11, OS_LOG_TYPE_ERROR, v10, &v15, v12);
LABEL_7:

  v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:66 userInfo:v7];

  return v13;
}

id __70__MCMSQLiteDB_invalidateCodeSigningForIdentifierAndAllChildren_error___block_invoke_235(uint64_t a1)
{
  v20[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"failed _sqliteExec commit"];
  v19[0] = @"FunctionName";
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB invalidateCodeSigningForIdentifierAndAllChildren:error:]_block_invoke"];
  v20[0] = v3;
  v20[1] = &unk_1F5A76C90;
  v4 = *MEMORY[0x1E696A578];
  v19[1] = @"SourceFileLine";
  v19[2] = v4;
  v20[2] = v2;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:3];

  if (*(a1 + 32))
  {
    v6 = [v5 mutableCopy];
    [v6 setObject:*(a1 + 32) forKeyedSubscript:*MEMORY[0x1E696AA08]];
    v7 = [v6 copy];

    if (*(a1 + 32))
    {
      v8 = container_log_handle_for_category();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      v9 = *(a1 + 32);
      v15 = 138543618;
      v16 = v2;
      v17 = 2114;
      v18 = v9;
      v10 = "%{public}@ (%{public}@)";
      v11 = v8;
      v12 = 22;
      goto LABEL_11;
    }
  }

  else
  {
    v7 = v5;
  }

  v8 = container_log_handle_for_category();
  if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_7;
  }

  v15 = 138543362;
  v16 = v2;
  v10 = "%{public}@";
  v11 = v8;
  v12 = 12;
LABEL_11:
  _os_log_error_impl(&dword_1DF2C3000, v11, OS_LOG_TYPE_ERROR, v10, &v15, v12);
LABEL_7:

  v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:66 userInfo:v7];

  return v13;
}

id __70__MCMSQLiteDB_invalidateCodeSigningForIdentifierAndAllChildren_error___block_invoke_232(uint64_t a1)
{
  v15[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = *(a1 + 32);
  v4 = [v3 callStackSymbols];
  v5 = [v2 initWithFormat:@"Got exception: %@ : %@", v3, v4];

  v14[0] = @"FunctionName";
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB invalidateCodeSigningForIdentifierAndAllChildren:error:]_block_invoke"];
  v15[0] = v6;
  v15[1] = &unk_1F5A76C78;
  v7 = *MEMORY[0x1E696A578];
  v14[1] = @"SourceFileLine";
  v14[2] = v7;
  v15[2] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:3];

  v9 = container_log_handle_for_category();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v13 = v5;
    _os_log_error_impl(&dword_1DF2C3000, v9, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:40 userInfo:v8];

  return v10;
}

id __70__MCMSQLiteDB_invalidateCodeSigningForIdentifierAndAllChildren_error___block_invoke_238(uint64_t a1)
{
  v20[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"failed _sqliteExec rollback"];
  v19[0] = @"FunctionName";
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB invalidateCodeSigningForIdentifierAndAllChildren:error:]_block_invoke"];
  v20[0] = v3;
  v20[1] = &unk_1F5A76CA8;
  v4 = *MEMORY[0x1E696A578];
  v19[1] = @"SourceFileLine";
  v19[2] = v4;
  v20[2] = v2;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:3];

  if (*(a1 + 32))
  {
    v6 = [v5 mutableCopy];
    [v6 setObject:*(a1 + 32) forKeyedSubscript:*MEMORY[0x1E696AA08]];
    v7 = [v6 copy];

    if (*(a1 + 32))
    {
      v8 = container_log_handle_for_category();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      v9 = *(a1 + 32);
      v15 = 138543618;
      v16 = v2;
      v17 = 2114;
      v18 = v9;
      v10 = "%{public}@ (%{public}@)";
      v11 = v8;
      v12 = 22;
      goto LABEL_11;
    }
  }

  else
  {
    v7 = v5;
  }

  v8 = container_log_handle_for_category();
  if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_7;
  }

  v15 = 138543362;
  v16 = v2;
  v10 = "%{public}@";
  v11 = v8;
  v12 = 12;
LABEL_11:
  _os_log_error_impl(&dword_1DF2C3000, v11, OS_LOG_TYPE_ERROR, v10, &v15, v12);
LABEL_7:

  v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:66 userInfo:v7];

  return v13;
}

- (BOOL)invalidateCodeSigningWithIdentifier:(id)identifier error:(id *)error
{
  v15[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  dispatch_assert_queue_V2(self->_queue);
  v15[0] = 0;
  v7 = [(MCMSQLiteDB *)self _performSingleParameterQuery:"UPDATE code_signing_info SET invalid=1 WHERE code_signing_id_text = ?;" withTextInput:identifierCopy error:v15];
  v8 = v15[0];
  if (!v7)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __57__MCMSQLiteDB_invalidateCodeSigningWithIdentifier_error___block_invoke;
    v12[3] = &unk_1E86B0BE8;
    v13 = identifierCopy;
    v14 = v8;
    v9 = v8;
    v8 = __57__MCMSQLiteDB_invalidateCodeSigningWithIdentifier_error___block_invoke(v12);

    if (error)
    {
      v10 = v8;
      *error = v8;
    }
  }

  return v7;
}

id __57__MCMSQLiteDB_invalidateCodeSigningWithIdentifier_error___block_invoke(uint64_t a1)
{
  v20[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"failed to invalidate identifier %@", *(a1 + 32)];
  v19[0] = @"FunctionName";
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB invalidateCodeSigningWithIdentifier:error:]_block_invoke"];
  v20[0] = v3;
  v20[1] = &unk_1F5A76C30;
  v4 = *MEMORY[0x1E696A578];
  v19[1] = @"SourceFileLine";
  v19[2] = v4;
  v20[2] = v2;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:3];

  if (*(a1 + 40))
  {
    v6 = [v5 mutableCopy];
    [v6 setObject:*(a1 + 40) forKeyedSubscript:*MEMORY[0x1E696AA08]];
    v7 = [v6 copy];

    if (*(a1 + 40))
    {
      v8 = container_log_handle_for_category();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      v9 = *(a1 + 40);
      *buf = 138543618;
      v16 = v2;
      v17 = 2114;
      v18 = v9;
      v10 = "%{public}@ (%{public}@)";
      v11 = v8;
      v12 = 22;
      goto LABEL_11;
    }
  }

  else
  {
    v7 = v5;
  }

  v8 = container_log_handle_for_category();
  if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_7;
  }

  *buf = 138543362;
  v16 = v2;
  v10 = "%{public}@";
  v11 = v8;
  v12 = 12;
LABEL_11:
  _os_log_error_impl(&dword_1DF2C3000, v11, OS_LOG_TYPE_ERROR, v10, buf, v12);
LABEL_7:

  v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:66 userInfo:v7];

  return v13;
}

- (id)codeSigningEntryWithIdentifier:(id)identifier error:(id *)error
{
  v23 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  dispatch_assert_queue_V2(self->_queue);
  v20 = 0;
  v7 = [(MCMSQLiteDB *)self _selectCodeSigningEntryWithIdentifier:identifierCopy error:&v20];
  v8 = v20;
  v9 = v8;
  if (v7)
  {
    v17 = v8;
    v10 = [(MCMSQLiteDB *)self childIdentifiersForParentIdentifier:identifierCopy error:&v17];
    v11 = v17;

    if (v10)
    {
LABEL_3:
      [v7 setChildBundleIdentifiers:v10];
      goto LABEL_19;
    }

    domain = [v11 domain];
    if ([domain isEqualToString:@"MCMErrorDomain"])
    {
      code = [v11 code];

      if (code == 67)
      {

        v11 = 0;
        goto LABEL_3;
      }
    }

    else
    {
    }

    v14 = container_log_handle_for_category();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v22 = v11;
      _os_log_error_impl(&dword_1DF2C3000, v14, OS_LOG_TYPE_ERROR, "Error retrieving childBundleIds: %@", buf, 0xCu);
    }
  }

  else if (v8)
  {
    v7 = container_log_handle_for_category();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v22 = v9;
      _os_log_error_impl(&dword_1DF2C3000, v7, OS_LOG_TYPE_ERROR, "Error retrieving code signing entry: %@", buf, 0xCu);
    }

    v11 = v9;
  }

  else
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __52__MCMSQLiteDB_codeSigningEntryWithIdentifier_error___block_invoke;
    v18[3] = &unk_1E86B0B98;
    v19 = identifierCopy;
    v11 = __52__MCMSQLiteDB_codeSigningEntryWithIdentifier_error___block_invoke(v18);
    v7 = v19;
  }

  if (error)
  {
    v15 = v11;
    v10 = 0;
    v7 = 0;
    *error = v11;
  }

  else
  {
    v10 = 0;
    v7 = 0;
  }

LABEL_19:

  return v7;
}

id __52__MCMSQLiteDB_codeSigningEntryWithIdentifier_error___block_invoke(uint64_t a1)
{
  v8[3] = *MEMORY[0x1E69E9840];
  v1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Identifier: %@ Not Found in DB", *(a1 + 32)];
  v7[0] = @"FunctionName";
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB codeSigningEntryWithIdentifier:error:]_block_invoke"];
  v8[0] = v2;
  v8[1] = &unk_1F5A76C18;
  v3 = *MEMORY[0x1E696A578];
  v7[1] = @"SourceFileLine";
  v7[2] = v3;
  v8[2] = v1;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:3];

  v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:67 userInfo:v4];

  return v5;
}

- (BOOL)deleteCodeSigningEntryWithIdentifier:(id)identifier error:(id *)error
{
  v13 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  dispatch_assert_queue_V2(self->_queue);
  if (identifierCopy)
  {
    v7 = [(MCMSQLiteDB *)self _deleteCodeSigningWithIdentifier:identifierCopy error:error];
    v8 = 0;
    if (!error)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __58__MCMSQLiteDB_deleteCodeSigningEntryWithIdentifier_error___block_invoke;
    v11[3] = &unk_1E86B0B98;
    v12 = 0;
    v8 = __58__MCMSQLiteDB_deleteCodeSigningEntryWithIdentifier_error___block_invoke(v11);

    v7 = 0;
    if (!error)
    {
      goto LABEL_7;
    }
  }

  if (!v7)
  {
    v9 = v8;
    *error = v8;
  }

LABEL_7:

  return v7;
}

id __58__MCMSQLiteDB_deleteCodeSigningEntryWithIdentifier_error___block_invoke(uint64_t a1)
{
  v11[3] = *MEMORY[0x1E69E9840];
  v1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"\bidentifier %@ cannot be nil", *(a1 + 32)];
  v10[0] = @"FunctionName";
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB deleteCodeSigningEntryWithIdentifier:error:]_block_invoke"];
  v11[0] = v2;
  v11[1] = &unk_1F5A76C00;
  v3 = *MEMORY[0x1E696A578];
  v10[1] = @"SourceFileLine";
  v10[2] = v3;
  v11[2] = v1;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:3];

  v5 = container_log_handle_for_category();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v9 = v1;
    _os_log_error_impl(&dword_1DF2C3000, v5, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:38 userInfo:v4];

  return v6;
}

- (BOOL)addCodeSigningEntry:(id)entry withIdentifier:(id)identifier error:(id *)error
{
  v43 = *MEMORY[0x1E69E9840];
  entryCopy = entry;
  identifierCopy = identifier;
  dispatch_assert_queue_V2(self->_queue);
  if (!entryCopy || !identifierCopy)
  {
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __56__MCMSQLiteDB_addCodeSigningEntry_withIdentifier_error___block_invoke;
    v35[3] = &unk_1E86B0BE8;
    v36 = entryCopy;
    v37 = identifierCopy;
    v19 = __56__MCMSQLiteDB_addCodeSigningEntry_withIdentifier_error___block_invoke(v35);
    v21 = &v36;
    v22 = v37;
LABEL_22:

    goto LABEL_23;
  }

  v34 = 0;
  v10 = [(MCMSQLiteDB *)self _sqliteExec:@"BEGIN;" error:&v34];
  v11 = v34;
  v12 = v11;
  if (!v10)
  {
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __56__MCMSQLiteDB_addCodeSigningEntry_withIdentifier_error___block_invoke_177;
    v32[3] = &unk_1E86B0B98;
    v22 = v11;
    v33 = v22;
    v19 = __56__MCMSQLiteDB_addCodeSigningEntry_withIdentifier_error___block_invoke_177(v32);
    v21 = &v33;
    goto LABEL_22;
  }

  if ([(MCMSQLiteDB *)self _insertCodeSigningInfo:entryCopy forIdentifier:identifierCopy error:error]&& [(MCMSQLiteDB *)self _insertCodeSigningData:entryCopy forIdentifier:identifierCopy error:error])
  {
    childBundleIdentifiers = [entryCopy childBundleIdentifiers];

    if (childBundleIdentifiers)
    {
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      childBundleIdentifiers2 = [entryCopy childBundleIdentifiers];
      v15 = [childBundleIdentifiers2 countByEnumeratingWithState:&v39 objects:v38 count:16];
      if (v15)
      {
        v16 = *v40;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v40 != v16)
            {
              objc_enumerationMutation(childBundleIdentifiers2);
            }

            [(MCMSQLiteDB *)self _insertChildIdentifier:*(*(&v39 + 1) + 8 * i) forParentIdentifier:identifierCopy error:0];
          }

          v15 = [childBundleIdentifiers2 countByEnumeratingWithState:&v39 objects:v38 count:16];
        }

        while (v15);
      }
    }

    v31[0] = v12;
    v18 = [(MCMSQLiteDB *)self _sqliteExec:@"COMMIT;" error:v31];
    v19 = v31[0];

    if (!v18)
    {
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __56__MCMSQLiteDB_addCodeSigningEntry_withIdentifier_error___block_invoke_192;
      v29[3] = &unk_1E86B0B98;
      v30 = v19;
      v19 = __56__MCMSQLiteDB_addCodeSigningEntry_withIdentifier_error___block_invoke_192(v29);
    }

    v20 = 1;
    goto LABEL_26;
  }

  v28 = v12;
  v23 = [(MCMSQLiteDB *)self _sqliteExec:@"ROLLBACK;" error:&v28];
  v19 = v28;

  if (!v23)
  {
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __56__MCMSQLiteDB_addCodeSigningEntry_withIdentifier_error___block_invoke_201;
    v26[3] = &unk_1E86B0B98;
    v22 = v19;
    v27 = v22;
    v19 = __56__MCMSQLiteDB_addCodeSigningEntry_withIdentifier_error___block_invoke_201(v26);
    v21 = &v27;
    goto LABEL_22;
  }

LABEL_23:
  if (error)
  {
    v24 = v19;
    *error = v19;
  }

  v20 = 0;
LABEL_26:

  return v20;
}

id __56__MCMSQLiteDB_addCodeSigningEntry_withIdentifier_error___block_invoke(uint64_t a1)
{
  v11[3] = *MEMORY[0x1E69E9840];
  v1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"codeSigningEntry %@ and identifier %@ cannot be nil", *(a1 + 32), *(a1 + 40)];
  v10[0] = @"FunctionName";
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB addCodeSigningEntry:withIdentifier:error:]_block_invoke"];
  v11[0] = v2;
  v11[1] = &unk_1F5A76B88;
  v3 = *MEMORY[0x1E696A578];
  v10[1] = @"SourceFileLine";
  v10[2] = v3;
  v11[2] = v1;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:3];

  v5 = container_log_handle_for_category();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v9 = v1;
    _os_log_error_impl(&dword_1DF2C3000, v5, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:38 userInfo:v4];

  return v6;
}

id __56__MCMSQLiteDB_addCodeSigningEntry_withIdentifier_error___block_invoke_177(uint64_t a1)
{
  v20[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"failed _sqliteExec begin"];
  v19[0] = @"FunctionName";
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB addCodeSigningEntry:withIdentifier:error:]_block_invoke"];
  v20[0] = v3;
  v20[1] = &unk_1F5A76BA0;
  v4 = *MEMORY[0x1E696A578];
  v19[1] = @"SourceFileLine";
  v19[2] = v4;
  v20[2] = v2;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:3];

  if (*(a1 + 32))
  {
    v6 = [v5 mutableCopy];
    [v6 setObject:*(a1 + 32) forKeyedSubscript:*MEMORY[0x1E696AA08]];
    v7 = [v6 copy];

    if (*(a1 + 32))
    {
      v8 = container_log_handle_for_category();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      v9 = *(a1 + 32);
      v15 = 138543618;
      v16 = v2;
      v17 = 2114;
      v18 = v9;
      v10 = "%{public}@ (%{public}@)";
      v11 = v8;
      v12 = 22;
      goto LABEL_11;
    }
  }

  else
  {
    v7 = v5;
  }

  v8 = container_log_handle_for_category();
  if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_7;
  }

  v15 = 138543362;
  v16 = v2;
  v10 = "%{public}@";
  v11 = v8;
  v12 = 12;
LABEL_11:
  _os_log_error_impl(&dword_1DF2C3000, v11, OS_LOG_TYPE_ERROR, v10, &v15, v12);
LABEL_7:

  v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:66 userInfo:v7];

  return v13;
}

id __56__MCMSQLiteDB_addCodeSigningEntry_withIdentifier_error___block_invoke_192(uint64_t a1)
{
  v20[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"failed _sqliteExec commit"];
  v19[0] = @"FunctionName";
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB addCodeSigningEntry:withIdentifier:error:]_block_invoke"];
  v20[0] = v3;
  v20[1] = &unk_1F5A76BD0;
  v4 = *MEMORY[0x1E696A578];
  v19[1] = @"SourceFileLine";
  v19[2] = v4;
  v20[2] = v2;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:3];

  if (*(a1 + 32))
  {
    v6 = [v5 mutableCopy];
    [v6 setObject:*(a1 + 32) forKeyedSubscript:*MEMORY[0x1E696AA08]];
    v7 = [v6 copy];

    if (*(a1 + 32))
    {
      v8 = container_log_handle_for_category();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      v9 = *(a1 + 32);
      v15 = 138543618;
      v16 = v2;
      v17 = 2114;
      v18 = v9;
      v10 = "%{public}@ (%{public}@)";
      v11 = v8;
      v12 = 22;
      goto LABEL_11;
    }
  }

  else
  {
    v7 = v5;
  }

  v8 = container_log_handle_for_category();
  if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_7;
  }

  v15 = 138543362;
  v16 = v2;
  v10 = "%{public}@";
  v11 = v8;
  v12 = 12;
LABEL_11:
  _os_log_error_impl(&dword_1DF2C3000, v11, OS_LOG_TYPE_ERROR, v10, &v15, v12);
LABEL_7:

  v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:66 userInfo:v7];

  return v13;
}

id __56__MCMSQLiteDB_addCodeSigningEntry_withIdentifier_error___block_invoke_183(uint64_t a1)
{
  v15[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = *(a1 + 32);
  v4 = [v3 callStackSymbols];
  v5 = [v2 initWithFormat:@"Got exception: %@ : %@", v3, v4];

  v14[0] = @"FunctionName";
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB addCodeSigningEntry:withIdentifier:error:]_block_invoke"];
  v15[0] = v6;
  v15[1] = &unk_1F5A76BB8;
  v7 = *MEMORY[0x1E696A578];
  v14[1] = @"SourceFileLine";
  v14[2] = v7;
  v15[2] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:3];

  v9 = container_log_handle_for_category();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v13 = v5;
    _os_log_error_impl(&dword_1DF2C3000, v9, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:40 userInfo:v8];

  return v10;
}

id __56__MCMSQLiteDB_addCodeSigningEntry_withIdentifier_error___block_invoke_201(uint64_t a1)
{
  v20[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"failed _sqliteExec rollback"];
  v19[0] = @"FunctionName";
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB addCodeSigningEntry:withIdentifier:error:]_block_invoke"];
  v20[0] = v3;
  v20[1] = &unk_1F5A76BE8;
  v4 = *MEMORY[0x1E696A578];
  v19[1] = @"SourceFileLine";
  v19[2] = v4;
  v20[2] = v2;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:3];

  if (*(a1 + 32))
  {
    v6 = [v5 mutableCopy];
    [v6 setObject:*(a1 + 32) forKeyedSubscript:*MEMORY[0x1E696AA08]];
    v7 = [v6 copy];

    if (*(a1 + 32))
    {
      v8 = container_log_handle_for_category();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      v9 = *(a1 + 32);
      v15 = 138543618;
      v16 = v2;
      v17 = 2114;
      v18 = v9;
      v10 = "%{public}@ (%{public}@)";
      v11 = v8;
      v12 = 22;
      goto LABEL_11;
    }
  }

  else
  {
    v7 = v5;
  }

  v8 = container_log_handle_for_category();
  if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_7;
  }

  v15 = 138543362;
  v16 = v2;
  v10 = "%{public}@";
  v11 = v8;
  v12 = 12;
LABEL_11:
  _os_log_error_impl(&dword_1DF2C3000, v11, OS_LOG_TYPE_ERROR, v10, &v15, v12);
LABEL_7:

  v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:66 userInfo:v7];

  return v13;
}

- (id)_selectCodeSigningEntryWithIdentifier:(id)identifier error:(id *)error
{
  v30 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  ppStmt = 0;
  v7 = [(MCMSQLiteDB *)self db];
  if (sqlite3_prepare_v2(v7, "SELECT code_signing_data.data, code_signing_info.invalid, code_signing_info.placeholder, code_signing_info.registered_by_caller, code_signing_info.data_container_class FROM code_signing_info, code_signing_data WHERE code_signing_info.id = code_signing_data.cs_info_id AND code_signing_info.code_signing_id_text = ?;", -1, &ppStmt, 0))
  {
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __59__MCMSQLiteDB__selectCodeSigningEntryWithIdentifier_error___block_invoke;
    v24[3] = &unk_1E86B0B48;
    v24[4] = self;
    v24[5] = v7;
    v8 = __59__MCMSQLiteDB__selectCodeSigningEntryWithIdentifier_error___block_invoke(v24);
LABEL_3:
    v9 = v8;
    goto LABEL_6;
  }

  if (sqlite3_bind_text(ppStmt, 1, [identifierCopy UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL))
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __59__MCMSQLiteDB__selectCodeSigningEntryWithIdentifier_error___block_invoke_163;
    v20[3] = &unk_1E86B0B20;
    v21 = identifierCopy;
    selfCopy = self;
    v23 = v7;
    v9 = __59__MCMSQLiteDB__selectCodeSigningEntryWithIdentifier_error___block_invoke_163(v20);

    goto LABEL_6;
  }

  v14 = sqlite3_step(ppStmt);
  if ((v14 - 102) <= 0xFFFFFFFD)
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __59__MCMSQLiteDB__selectCodeSigningEntryWithIdentifier_error___block_invoke_166;
    v19[3] = &unk_1E86B0B48;
    v19[4] = self;
    v19[5] = v7;
    v8 = __59__MCMSQLiteDB__selectCodeSigningEntryWithIdentifier_error___block_invoke_166(v19);
    goto LABEL_3;
  }

  if (v14 == 100)
  {
    v18 = 0;
    v10 = [(MCMSQLiteDB *)self _codeSigningEntryFromStatementRow:ppStmt error:&v18];
    v9 = v18;
    goto LABEL_7;
  }

  v9 = 0;
LABEL_6:
  v10 = 0;
LABEL_7:
  if (ppStmt && sqlite3_finalize(ppStmt))
  {
    v11 = container_log_handle_for_category();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v15 = [(MCMSQLiteDB *)self url];
      path = [v15 path];
      v17 = sqlite3_extended_errcode(v7);
      *buf = 138412546;
      v27 = path;
      v28 = 1024;
      v29 = v17;
      _os_log_error_impl(&dword_1DF2C3000, v11, OS_LOG_TYPE_ERROR, "sqlite3_finalize for %@ failed: %d", buf, 0x12u);
    }
  }

  if (error && !v10)
  {
    v12 = v9;
    *error = v9;
  }

  return v10;
}

id __59__MCMSQLiteDB__selectCodeSigningEntryWithIdentifier_error___block_invoke(uint64_t a1)
{
  v15[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) url];
  v4 = [v3 path];
  v5 = [v2 initWithFormat:@"sqlite3_prepare(select) for %@ failed: %d", v4, sqlite3_extended_errcode(*(a1 + 40))];

  v14[0] = @"FunctionName";
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB _selectCodeSigningEntryWithIdentifier:error:]_block_invoke"];
  v15[0] = v6;
  v15[1] = &unk_1F5A76B40;
  v7 = *MEMORY[0x1E696A578];
  v14[1] = @"SourceFileLine";
  v14[2] = v7;
  v15[2] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:3];

  v9 = container_log_handle_for_category();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v13 = v5;
    _os_log_error_impl(&dword_1DF2C3000, v9, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:66 userInfo:v8];

  return v10;
}

id __59__MCMSQLiteDB__selectCodeSigningEntryWithIdentifier_error___block_invoke_163(uint64_t a1)
{
  v16[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) url];
  v5 = [v4 path];
  v6 = [v2 initWithFormat:@"sqlite3_bind_text for code_signing_id_text=%@ at %@ failed: %d", v3, v5, sqlite3_extended_errcode(*(a1 + 48))];

  v15[0] = @"FunctionName";
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB _selectCodeSigningEntryWithIdentifier:error:]_block_invoke"];
  v16[0] = v7;
  v16[1] = &unk_1F5A76B58;
  v8 = *MEMORY[0x1E696A578];
  v15[1] = @"SourceFileLine";
  v15[2] = v8;
  v16[2] = v6;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:3];

  v10 = container_log_handle_for_category();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v14 = v6;
    _os_log_error_impl(&dword_1DF2C3000, v10, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:66 userInfo:v9];

  return v11;
}

id __59__MCMSQLiteDB__selectCodeSigningEntryWithIdentifier_error___block_invoke_166(uint64_t a1)
{
  v15[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) url];
  v4 = [v3 path];
  v5 = [v2 initWithFormat:@"sqlite3_step for %@ failed: %d", v4, sqlite3_extended_errcode(*(a1 + 40))];

  v14[0] = @"FunctionName";
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB _selectCodeSigningEntryWithIdentifier:error:]_block_invoke"];
  v15[0] = v6;
  v15[1] = &unk_1F5A76B70;
  v7 = *MEMORY[0x1E696A578];
  v14[1] = @"SourceFileLine";
  v14[2] = v7;
  v15[2] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:3];

  v9 = container_log_handle_for_category();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v13 = v5;
    _os_log_error_impl(&dword_1DF2C3000, v9, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:66 userInfo:v8];

  return v10;
}

- (id)_codeSigningEntryFromStatementRow:(sqlite3_stmt *)row error:(id *)error
{
  v32[3] = *MEMORY[0x1E69E9840];
  v6 = sqlite3_column_blob(row, 0);
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:v6 length:sqlite3_column_bytes(row freeWhenDone:{0), 0}];
    v28 = 0;
    v8 = [MEMORY[0x1E696AE40] propertyListWithData:v7 options:0 format:0 error:&v28];
    v9 = v28;
    objc_opt_class();
    v10 = v8;
    v11 = 0;
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    if (v11)
    {
      v12 = [[MCMCodeSigningEntry alloc] initWithCodeSigningInfo:v10];
      if (v12)
      {
        v13 = v12;
        [(MCMCodeSigningEntry *)v12 setInvalid:sqlite3_column_int(row, 1) != 0];
        v14 = sqlite3_column_int(row, 2);
        [(MCMCodeSigningEntry *)v13 setPlaceholder:v14 & 1];
        [(MCMCodeSigningEntry *)v13 setAdvanceCopy:(v14 >> 1) & 1];
        [(MCMCodeSigningEntry *)v13 setRegisteredByKernel:(v14 >> 2) & 1];
        [(MCMCodeSigningEntry *)v13 setRegisteredByCaller:sqlite3_column_int(row, 3) != 0];
        [(MCMCodeSigningEntry *)v13 setDataContainerClass:sqlite3_column_int(row, 4)];

        goto LABEL_16;
      }

      v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Failed to allocate codeSigningEntry"];
      v31[0] = @"FunctionName";
      v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB _codeSigningEntryFromStatementRow:error:]_block_invoke"];
      v32[0] = v18;
      v32[1] = &unk_1F5A76B10;
      v19 = *MEMORY[0x1E696A578];
      v31[1] = @"SourceFileLine";
      v31[2] = v19;
      v32[2] = v17;
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:3];

      v21 = container_log_handle_for_category();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v30 = v17;
        _os_log_error_impl(&dword_1DF2C3000, v21, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      v16 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:73 userInfo:v20];
    }

    else
    {
      v15 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:2048 userInfo:0];

      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __55__MCMSQLiteDB__codeSigningEntryFromStatementRow_error___block_invoke;
      v26[3] = &unk_1E86B0B98;
      v27 = v15;
      v16 = __55__MCMSQLiteDB__codeSigningEntryFromStatementRow_error___block_invoke(v26);
      v9 = v27;
    }

    v9 = v16;
  }

  else
  {
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __55__MCMSQLiteDB__codeSigningEntryFromStatementRow_error___block_invoke_151;
    v24[3] = &unk_1E86B0B98;
    v25 = 0;
    v9 = __55__MCMSQLiteDB__codeSigningEntryFromStatementRow_error___block_invoke_151(v24);
    v7 = v25;
  }

  if (error)
  {
    v22 = v9;
    v13 = 0;
    *error = v9;
  }

  else
  {
    v13 = 0;
  }

LABEL_16:

  return v13;
}

id __55__MCMSQLiteDB__codeSigningEntryFromStatementRow_error___block_invoke(uint64_t a1)
{
  v20[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Error formatting info data from DB"];
  v19[0] = @"FunctionName";
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB _codeSigningEntryFromStatementRow:error:]_block_invoke"];
  v20[0] = v3;
  v20[1] = &unk_1F5A76AF8;
  v4 = *MEMORY[0x1E696A578];
  v19[1] = @"SourceFileLine";
  v19[2] = v4;
  v20[2] = v2;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:3];

  if (*(a1 + 32))
  {
    v6 = [v5 mutableCopy];
    [v6 setObject:*(a1 + 32) forKeyedSubscript:*MEMORY[0x1E696AA08]];
    v7 = [v6 copy];

    if (*(a1 + 32))
    {
      v8 = container_log_handle_for_category();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      v9 = *(a1 + 32);
      v15 = 138543618;
      v16 = v2;
      v17 = 2114;
      v18 = v9;
      v10 = "%{public}@ (%{public}@)";
      v11 = v8;
      v12 = 22;
      goto LABEL_11;
    }
  }

  else
  {
    v7 = v5;
  }

  v8 = container_log_handle_for_category();
  if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_7;
  }

  v15 = 138543362;
  v16 = v2;
  v10 = "%{public}@";
  v11 = v8;
  v12 = 12;
LABEL_11:
  _os_log_error_impl(&dword_1DF2C3000, v11, OS_LOG_TYPE_ERROR, v10, &v15, v12);
LABEL_7:

  v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:66 userInfo:v7];

  return v13;
}

id __55__MCMSQLiteDB__codeSigningEntryFromStatementRow_error___block_invoke_151(uint64_t a1)
{
  v20[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Failed to create code signing entry from statement row"];
  v19[0] = @"FunctionName";
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB _codeSigningEntryFromStatementRow:error:]_block_invoke"];
  v20[0] = v3;
  v20[1] = &unk_1F5A76B28;
  v4 = *MEMORY[0x1E696A578];
  v19[1] = @"SourceFileLine";
  v19[2] = v4;
  v20[2] = v2;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:3];

  if (*(a1 + 32))
  {
    v6 = [v5 mutableCopy];
    [v6 setObject:*(a1 + 32) forKeyedSubscript:*MEMORY[0x1E696AA08]];
    v7 = [v6 copy];

    if (*(a1 + 32))
    {
      v8 = container_log_handle_for_category();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      v9 = *(a1 + 32);
      v15 = 138543618;
      v16 = v2;
      v17 = 2114;
      v18 = v9;
      v10 = "%{public}@ (%{public}@)";
      v11 = v8;
      v12 = 22;
      goto LABEL_11;
    }
  }

  else
  {
    v7 = v5;
  }

  v8 = container_log_handle_for_category();
  if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_7;
  }

  v15 = 138543362;
  v16 = v2;
  v10 = "%{public}@";
  v11 = v8;
  v12 = 12;
LABEL_11:
  _os_log_error_impl(&dword_1DF2C3000, v11, OS_LOG_TYPE_ERROR, v10, &v15, v12);
LABEL_7:

  v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:66 userInfo:v7];

  return v13;
}

- (BOOL)_deleteCodeSigningWithIdentifier:(id)identifier error:(id *)error
{
  v16[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v16[0] = 0;
  v7 = [(MCMSQLiteDB *)self _performSingleParameterQuery:"DELETE FROM code_signing_info WHERE code_signing_id_text=?;" withTextInput:identifierCopy expectedChanges:1 error:v16];
  v8 = v16[0];
  v9 = v8;
  if (v7)
  {
    peerageDelegate = [(MCMSQLiteDB *)self peerageDelegate];
    [peerageDelegate codeSigningDB:self removeParentIdentifier:identifierCopy];
  }

  else
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __54__MCMSQLiteDB__deleteCodeSigningWithIdentifier_error___block_invoke;
    v14[3] = &unk_1E86B0B98;
    v15 = v8;
    v11 = v8;
    v9 = __54__MCMSQLiteDB__deleteCodeSigningWithIdentifier_error___block_invoke(v14);

    if (error)
    {
      v12 = v9;
      *error = v9;
    }
  }

  return v7;
}

id __54__MCMSQLiteDB__deleteCodeSigningWithIdentifier_error___block_invoke(uint64_t a1)
{
  v20[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"failed to delete from code_signing_info"];
  v19[0] = @"FunctionName";
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB _deleteCodeSigningWithIdentifier:error:]_block_invoke"];
  v20[0] = v3;
  v20[1] = &unk_1F5A76AE0;
  v4 = *MEMORY[0x1E696A578];
  v19[1] = @"SourceFileLine";
  v19[2] = v4;
  v20[2] = v2;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:3];

  if (*(a1 + 32))
  {
    v6 = [v5 mutableCopy];
    [v6 setObject:*(a1 + 32) forKeyedSubscript:*MEMORY[0x1E696AA08]];
    v7 = [v6 copy];

    if (*(a1 + 32))
    {
      v8 = container_log_handle_for_category();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      v9 = *(a1 + 32);
      v15 = 138543618;
      v16 = v2;
      v17 = 2114;
      v18 = v9;
      v10 = "%{public}@ (%{public}@)";
      v11 = v8;
      v12 = 22;
      goto LABEL_11;
    }
  }

  else
  {
    v7 = v5;
  }

  v8 = container_log_handle_for_category();
  if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_7;
  }

  v15 = 138543362;
  v16 = v2;
  v10 = "%{public}@";
  v11 = v8;
  v12 = 12;
LABEL_11:
  _os_log_error_impl(&dword_1DF2C3000, v11, OS_LOG_TYPE_ERROR, v10, &v15, v12);
LABEL_7:

  v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:66 userInfo:v7];

  return v13;
}

- (BOOL)_insertCodeSigningData:(id)data forIdentifier:(id)identifier error:(id *)error
{
  v42 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  identifierCopy = identifier;
  ppStmt = 0;
  v10 = [(MCMSQLiteDB *)self db];
  if (!sqlite3_prepare_v2(v10, "INSERT OR REPLACE INTO code_signing_data (cs_info_id, data) SELECT id, ? FROM code_signing_info WHERE code_signing_id_text = ?;", -1, &ppStmt, 0))
  {
    v14 = MEMORY[0x1E696AE40];
    codeSigningInfo = [dataCopy codeSigningInfo];
    v35 = 0;
    v12 = [v14 dataWithPropertyList:codeSigningInfo format:200 options:0 error:&v35];
    v11 = v35;

    if (!v12)
    {
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __58__MCMSQLiteDB__insertCodeSigningData_forIdentifier_error___block_invoke_111;
      v32[3] = &unk_1E86B0BE8;
      v33 = dataCopy;
      v34 = v11;
      v18 = v11;
      v11 = __58__MCMSQLiteDB__insertCodeSigningData_forIdentifier_error___block_invoke_111(v32);

      goto LABEL_3;
    }

    if (sqlite3_bind_blob64(ppStmt, 1, [v12 bytes], objc_msgSend(v12, "length"), 0xFFFFFFFFFFFFFFFFLL))
    {
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __58__MCMSQLiteDB__insertCodeSigningData_forIdentifier_error___block_invoke_117;
      v31[3] = &unk_1E86B0B48;
      v31[4] = self;
      v31[5] = v10;
      v16 = __58__MCMSQLiteDB__insertCodeSigningData_forIdentifier_error___block_invoke_117(v31);
    }

    else
    {
      if (sqlite3_bind_text(ppStmt, 2, [identifierCopy UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL))
      {
        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 3221225472;
        v27[2] = __58__MCMSQLiteDB__insertCodeSigningData_forIdentifier_error___block_invoke_123;
        v27[3] = &unk_1E86B0B20;
        v28 = identifierCopy;
        selfCopy = self;
        v30 = v10;
        v17 = __58__MCMSQLiteDB__insertCodeSigningData_forIdentifier_error___block_invoke_123(v27);

        goto LABEL_11;
      }

      if (sqlite3_step(ppStmt) == 101)
      {
        v13 = 1;
        goto LABEL_12;
      }

      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __58__MCMSQLiteDB__insertCodeSigningData_forIdentifier_error___block_invoke_129;
      v26[3] = &unk_1E86B0B48;
      v26[4] = self;
      v26[5] = v10;
      v16 = __58__MCMSQLiteDB__insertCodeSigningData_forIdentifier_error___block_invoke_129(v26);
    }

    v17 = v16;

LABEL_11:
    v13 = 0;
    v11 = v17;
    goto LABEL_12;
  }

  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __58__MCMSQLiteDB__insertCodeSigningData_forIdentifier_error___block_invoke;
  v36[3] = &unk_1E86B0B48;
  v36[4] = self;
  v36[5] = v10;
  v11 = __58__MCMSQLiteDB__insertCodeSigningData_forIdentifier_error___block_invoke(v36);
LABEL_3:
  v12 = 0;
  v13 = 0;
LABEL_12:
  if (ppStmt && sqlite3_finalize(ppStmt))
  {
    v19 = container_log_handle_for_category();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v23 = [(MCMSQLiteDB *)self url];
      path = [v23 path];
      v25 = sqlite3_extended_errcode(v10);
      *buf = 138412546;
      v39 = path;
      v40 = 1024;
      v41 = v25;
      _os_log_error_impl(&dword_1DF2C3000, v19, OS_LOG_TYPE_ERROR, "sqlite3_finalize for %@ failed: %d", buf, 0x12u);
    }
  }

  if (error)
  {
    v20 = v13;
  }

  else
  {
    v20 = 1;
  }

  if ((v20 & 1) == 0)
  {
    v21 = v11;
    *error = v11;
  }

  return v13;
}

id __58__MCMSQLiteDB__insertCodeSigningData_forIdentifier_error___block_invoke(uint64_t a1)
{
  v15[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) url];
  v4 = [v3 path];
  v5 = [v2 initWithFormat:@"sqlite3_prepare(insert) for %@ failed: %d", v4, sqlite3_extended_errcode(*(a1 + 40))];

  v14[0] = @"FunctionName";
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB _insertCodeSigningData:forIdentifier:error:]_block_invoke"];
  v15[0] = v6;
  v15[1] = &unk_1F5A76A68;
  v7 = *MEMORY[0x1E696A578];
  v14[1] = @"SourceFileLine";
  v14[2] = v7;
  v15[2] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:3];

  v9 = container_log_handle_for_category();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v13 = v5;
    _os_log_error_impl(&dword_1DF2C3000, v9, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:66 userInfo:v8];

  return v10;
}

id __58__MCMSQLiteDB__insertCodeSigningData_forIdentifier_error___block_invoke_111(uint64_t a1)
{
  v22[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) codeSigningInfo];
  v4 = [v2 initWithFormat:@"Error creating NSData from code signing info: %@", v3];

  v21[0] = @"FunctionName";
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB _insertCodeSigningData:forIdentifier:error:]_block_invoke"];
  v22[0] = v5;
  v22[1] = &unk_1F5A76A80;
  v6 = *MEMORY[0x1E696A578];
  v21[1] = @"SourceFileLine";
  v21[2] = v6;
  v22[2] = v4;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:3];

  if (*(a1 + 40))
  {
    v8 = [v7 mutableCopy];
    [v8 setObject:*(a1 + 40) forKeyedSubscript:*MEMORY[0x1E696AA08]];
    v9 = [v8 copy];

    if (*(a1 + 40))
    {
      v10 = container_log_handle_for_category();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      v11 = *(a1 + 40);
      *buf = 138543618;
      v18 = v4;
      v19 = 2114;
      v20 = v11;
      v12 = "%{public}@ (%{public}@)";
      v13 = v10;
      v14 = 22;
      goto LABEL_11;
    }
  }

  else
  {
    v9 = v7;
  }

  v10 = container_log_handle_for_category();
  if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_7;
  }

  *buf = 138543362;
  v18 = v4;
  v12 = "%{public}@";
  v13 = v10;
  v14 = 12;
LABEL_11:
  _os_log_error_impl(&dword_1DF2C3000, v13, OS_LOG_TYPE_ERROR, v12, buf, v14);
LABEL_7:

  v15 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:66 userInfo:v9];

  return v15;
}

id __58__MCMSQLiteDB__insertCodeSigningData_forIdentifier_error___block_invoke_117(uint64_t a1)
{
  v15[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) url];
  v4 = [v3 path];
  v5 = [v2 initWithFormat:@"sqlite3_bind_blob64 for codeSigningInfoData at %@ failed: %d", v4, sqlite3_extended_errcode(*(a1 + 40))];

  v14[0] = @"FunctionName";
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB _insertCodeSigningData:forIdentifier:error:]_block_invoke"];
  v15[0] = v6;
  v15[1] = &unk_1F5A76A98;
  v7 = *MEMORY[0x1E696A578];
  v14[1] = @"SourceFileLine";
  v14[2] = v7;
  v15[2] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:3];

  v9 = container_log_handle_for_category();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v13 = v5;
    _os_log_error_impl(&dword_1DF2C3000, v9, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:66 userInfo:v8];

  return v10;
}

id __58__MCMSQLiteDB__insertCodeSigningData_forIdentifier_error___block_invoke_123(uint64_t a1)
{
  v16[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) url];
  v5 = [v4 path];
  v6 = [v2 initWithFormat:@"sqlite3_bind_text for code_signing_id_text=%@ at %@ failed: %d", v3, v5, sqlite3_extended_errcode(*(a1 + 48))];

  v15[0] = @"FunctionName";
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB _insertCodeSigningData:forIdentifier:error:]_block_invoke"];
  v16[0] = v7;
  v16[1] = &unk_1F5A76AB0;
  v8 = *MEMORY[0x1E696A578];
  v15[1] = @"SourceFileLine";
  v15[2] = v8;
  v16[2] = v6;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:3];

  v10 = container_log_handle_for_category();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v14 = v6;
    _os_log_error_impl(&dword_1DF2C3000, v10, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:66 userInfo:v9];

  return v11;
}

id __58__MCMSQLiteDB__insertCodeSigningData_forIdentifier_error___block_invoke_129(uint64_t a1)
{
  v15[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) url];
  v4 = [v3 path];
  v5 = [v2 initWithFormat:@"sqlite3_step for %@ failed: %d", v4, sqlite3_extended_errcode(*(a1 + 40))];

  v14[0] = @"FunctionName";
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB _insertCodeSigningData:forIdentifier:error:]_block_invoke"];
  v15[0] = v6;
  v15[1] = &unk_1F5A76AC8;
  v7 = *MEMORY[0x1E696A578];
  v14[1] = @"SourceFileLine";
  v14[2] = v7;
  v15[2] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:3];

  v9 = container_log_handle_for_category();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v13 = v5;
    _os_log_error_impl(&dword_1DF2C3000, v9, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:66 userInfo:v8];

  return v10;
}

- (BOOL)_insertCodeSigningInfo:(id)info forIdentifier:(id)identifier error:(id *)error
{
  v27[1] = *MEMORY[0x1E69E9840];
  infoCopy = info;
  identifierCopy = identifier;
  v27[0] = 0;
  v10 = 1;
  v11 = [(MCMSQLiteDB *)self _performInsertOrUpdateQuery:"UPDATE code_signing_info SET invalid=? withCodeSigningEntry:placeholder=? forIdentifier:registered_by_caller=? isUpdate:data_container_class=? WHERE code_signing_id_text=?;" error:infoCopy, identifierCopy, 1, v27];
  v12 = v27[0];
  v13 = v12;
  if (v11)
  {
    goto LABEL_12;
  }

  domain = [v12 domain];
  if ([domain isEqualToString:@"MCMErrorDomain"])
  {
    code = [v13 code];

    if (code == 68)
    {

      v24 = 0;
      v16 = [(MCMSQLiteDB *)self _performInsertOrUpdateQuery:"INSERT INTO code_signing_info (invalid withCodeSigningEntry:placeholder forIdentifier:registered_by_caller isUpdate:data_container_class error:code_signing_id_text) VALUES (?, ?, ?, ?, ?);", infoCopy, identifierCopy, 0, &v24];
      v13 = v24;
      if (v16)
      {
        v10 = 1;
        goto LABEL_12;
      }

      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __58__MCMSQLiteDB__insertCodeSigningInfo_forIdentifier_error___block_invoke_101;
      v22[3] = &unk_1E86B0B98;
      v17 = &v23;
      v23 = identifierCopy;
      v18 = __58__MCMSQLiteDB__insertCodeSigningInfo_forIdentifier_error___block_invoke_101(v22);
      goto LABEL_8;
    }
  }

  else
  {
  }

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __58__MCMSQLiteDB__insertCodeSigningInfo_forIdentifier_error___block_invoke;
  v25[3] = &unk_1E86B0B98;
  v17 = &v26;
  v26 = identifierCopy;
  v18 = __58__MCMSQLiteDB__insertCodeSigningInfo_forIdentifier_error___block_invoke(v25);
LABEL_8:
  v19 = v18;

  if (error)
  {
    v20 = v19;
    v10 = 0;
    *error = v19;
  }

  else
  {
    v10 = 0;
  }

  v13 = v19;
LABEL_12:

  return v10;
}

id __58__MCMSQLiteDB__insertCodeSigningInfo_forIdentifier_error___block_invoke(uint64_t a1)
{
  v11[3] = *MEMORY[0x1E69E9840];
  v1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Error performing UPDATE operation for %@", *(a1 + 32)];
  v10[0] = @"FunctionName";
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB _insertCodeSigningInfo:forIdentifier:error:]_block_invoke"];
  v11[0] = v2;
  v11[1] = &unk_1F5A76A38;
  v3 = *MEMORY[0x1E696A578];
  v10[1] = @"SourceFileLine";
  v10[2] = v3;
  v11[2] = v1;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:3];

  v5 = container_log_handle_for_category();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v9 = v1;
    _os_log_error_impl(&dword_1DF2C3000, v5, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:66 userInfo:v4];

  return v6;
}

id __58__MCMSQLiteDB__insertCodeSigningInfo_forIdentifier_error___block_invoke_101(uint64_t a1)
{
  v11[3] = *MEMORY[0x1E69E9840];
  v1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Error performing INSERT operation for %@", *(a1 + 32)];
  v10[0] = @"FunctionName";
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB _insertCodeSigningInfo:forIdentifier:error:]_block_invoke"];
  v11[0] = v2;
  v11[1] = &unk_1F5A76A50;
  v3 = *MEMORY[0x1E696A578];
  v10[1] = @"SourceFileLine";
  v10[2] = v3;
  v11[2] = v1;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:3];

  v5 = container_log_handle_for_category();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v9 = v1;
    _os_log_error_impl(&dword_1DF2C3000, v5, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:66 userInfo:v4];

  return v6;
}

- (BOOL)_performInsertOrUpdateQuery:(const char *)query withCodeSigningEntry:(id)entry forIdentifier:(id)identifier isUpdate:(BOOL)update error:(id *)error
{
  updateCopy = update;
  v62 = *MEMORY[0x1E69E9840];
  entryCopy = entry;
  identifierCopy = identifier;
  ppStmt = 0;
  v14 = [(MCMSQLiteDB *)self db];
  if (!sqlite3_prepare_v2(v14, query, -1, &ppStmt, 0))
  {
    if (sqlite3_bind_int(ppStmt, 1, [entryCopy isInvalid]))
    {
      v52[0] = MEMORY[0x1E69E9820];
      v52[1] = 3221225472;
      v52[2] = __93__MCMSQLiteDB__performInsertOrUpdateQuery_withCodeSigningEntry_forIdentifier_isUpdate_error___block_invoke_55;
      v52[3] = &unk_1E86B0B20;
      v53 = entryCopy;
      selfCopy = self;
      v55 = v14;
      v16 = __93__MCMSQLiteDB__performInsertOrUpdateQuery_withCodeSigningEntry_forIdentifier_isUpdate_error___block_invoke_55(v52);
      v17 = v53;
    }

    else
    {
      isPlaceholder = [entryCopy isPlaceholder];
      if ([entryCopy isAdvanceCopy])
      {
        v19 = 2;
      }

      else
      {
        v19 = 0;
      }

      v20 = v19 | isPlaceholder;
      if ([entryCopy isRegisteredByKernel])
      {
        v21 = 4;
      }

      else
      {
        v21 = 0;
      }

      v22 = v20 | v21;
      if (sqlite3_bind_int(ppStmt, 2, v22))
      {
        v47[0] = MEMORY[0x1E69E9820];
        v47[1] = 3221225472;
        v47[2] = __93__MCMSQLiteDB__performInsertOrUpdateQuery_withCodeSigningEntry_forIdentifier_isUpdate_error___block_invoke_61;
        v47[3] = &unk_1E86B0BC0;
        v51 = v22;
        v48 = entryCopy;
        selfCopy2 = self;
        v50 = v14;
        v16 = __93__MCMSQLiteDB__performInsertOrUpdateQuery_withCodeSigningEntry_forIdentifier_isUpdate_error___block_invoke_61(v47);
        v17 = v48;
      }

      else if (sqlite3_bind_int(ppStmt, 3, [entryCopy isRegisteredByCaller]))
      {
        v43[0] = MEMORY[0x1E69E9820];
        v43[1] = 3221225472;
        v43[2] = __93__MCMSQLiteDB__performInsertOrUpdateQuery_withCodeSigningEntry_forIdentifier_isUpdate_error___block_invoke_67;
        v43[3] = &unk_1E86B0B20;
        v44 = entryCopy;
        selfCopy3 = self;
        v46 = v14;
        v16 = __93__MCMSQLiteDB__performInsertOrUpdateQuery_withCodeSigningEntry_forIdentifier_isUpdate_error___block_invoke_67(v43);
        v17 = v44;
      }

      else if (sqlite3_bind_int(ppStmt, 4, [entryCopy dataContainerClass]))
      {
        v39[0] = MEMORY[0x1E69E9820];
        v39[1] = 3221225472;
        v39[2] = __93__MCMSQLiteDB__performInsertOrUpdateQuery_withCodeSigningEntry_forIdentifier_isUpdate_error___block_invoke_73;
        v39[3] = &unk_1E86B0B20;
        v40 = entryCopy;
        selfCopy4 = self;
        v42 = v14;
        v16 = __93__MCMSQLiteDB__performInsertOrUpdateQuery_withCodeSigningEntry_forIdentifier_isUpdate_error___block_invoke_73(v39);
        v17 = v40;
      }

      else
      {
        if (!sqlite3_bind_text(ppStmt, 5, [identifierCopy UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL))
        {
          if (sqlite3_step(ppStmt) == 101)
          {
            if (!updateCopy || (v31 = sqlite3_changes(v14), v31 == 1))
            {
              v16 = 0;
              v23 = 1;
              goto LABEL_22;
            }

            v32[0] = MEMORY[0x1E69E9820];
            v32[1] = 3221225472;
            v32[2] = __93__MCMSQLiteDB__performInsertOrUpdateQuery_withCodeSigningEntry_forIdentifier_isUpdate_error___block_invoke_88;
            v32[3] = &unk_1E86B0AF8;
            v32[4] = self;
            v32[5] = query;
            v33 = v31;
            v15 = __93__MCMSQLiteDB__performInsertOrUpdateQuery_withCodeSigningEntry_forIdentifier_isUpdate_error___block_invoke_88(v32);
          }

          else
          {
            v34[0] = MEMORY[0x1E69E9820];
            v34[1] = 3221225472;
            v34[2] = __93__MCMSQLiteDB__performInsertOrUpdateQuery_withCodeSigningEntry_forIdentifier_isUpdate_error___block_invoke_85;
            v34[3] = &unk_1E86B0B48;
            v34[4] = self;
            v34[5] = v14;
            v15 = __93__MCMSQLiteDB__performInsertOrUpdateQuery_withCodeSigningEntry_forIdentifier_isUpdate_error___block_invoke_85(v34);
          }

          goto LABEL_3;
        }

        v35[0] = MEMORY[0x1E69E9820];
        v35[1] = 3221225472;
        v35[2] = __93__MCMSQLiteDB__performInsertOrUpdateQuery_withCodeSigningEntry_forIdentifier_isUpdate_error___block_invoke_79;
        v35[3] = &unk_1E86B0B20;
        v36 = identifierCopy;
        selfCopy5 = self;
        v38 = v14;
        v16 = __93__MCMSQLiteDB__performInsertOrUpdateQuery_withCodeSigningEntry_forIdentifier_isUpdate_error___block_invoke_79(v35);
        v17 = v36;
      }
    }

    goto LABEL_21;
  }

  v56[0] = MEMORY[0x1E69E9820];
  v56[1] = 3221225472;
  v56[2] = __93__MCMSQLiteDB__performInsertOrUpdateQuery_withCodeSigningEntry_forIdentifier_isUpdate_error___block_invoke;
  v56[3] = &unk_1E86B0B48;
  v56[4] = self;
  v56[5] = v14;
  v15 = __93__MCMSQLiteDB__performInsertOrUpdateQuery_withCodeSigningEntry_forIdentifier_isUpdate_error___block_invoke(v56);
LABEL_3:
  v16 = v15;
LABEL_21:
  v23 = 0;
LABEL_22:
  if (ppStmt && sqlite3_finalize(ppStmt))
  {
    v24 = container_log_handle_for_category();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v28 = [(MCMSQLiteDB *)self url];
      path = [v28 path];
      v30 = sqlite3_extended_errcode(v14);
      *buf = 138412546;
      v59 = path;
      v60 = 1024;
      v61 = v30;
      _os_log_error_impl(&dword_1DF2C3000, v24, OS_LOG_TYPE_ERROR, "sqlite3_finalize for %@ failed: %d", buf, 0x12u);
    }
  }

  if (error)
  {
    v25 = v23;
  }

  else
  {
    v25 = 1;
  }

  if ((v25 & 1) == 0)
  {
    v26 = v16;
    *error = v16;
  }

  return v23;
}

id __93__MCMSQLiteDB__performInsertOrUpdateQuery_withCodeSigningEntry_forIdentifier_isUpdate_error___block_invoke(uint64_t a1)
{
  v15[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) url];
  v4 = [v3 path];
  v5 = [v2 initWithFormat:@"sqlite3_prepare(insert) for %@ failed: %d", v4, sqlite3_extended_errcode(*(a1 + 40))];

  v14[0] = @"FunctionName";
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB _performInsertOrUpdateQuery:withCodeSigningEntry:forIdentifier:isUpdate:error:]_block_invoke"];
  v15[0] = v6;
  v15[1] = &unk_1F5A76978;
  v7 = *MEMORY[0x1E696A578];
  v14[1] = @"SourceFileLine";
  v14[2] = v7;
  v15[2] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:3];

  v9 = container_log_handle_for_category();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v13 = v5;
    _os_log_error_impl(&dword_1DF2C3000, v9, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:66 userInfo:v8];

  return v10;
}

id __93__MCMSQLiteDB__performInsertOrUpdateQuery_withCodeSigningEntry_forIdentifier_isUpdate_error___block_invoke_55(uint64_t a1)
{
  v16[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) isInvalid];
  v4 = [*(a1 + 40) url];
  v5 = [v4 path];
  v6 = [v2 initWithFormat:@"sqlite3_bind_int for invalid=%d at %@ failed: %d", v3, v5, sqlite3_extended_errcode(*(a1 + 48))];

  v15[0] = @"FunctionName";
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB _performInsertOrUpdateQuery:withCodeSigningEntry:forIdentifier:isUpdate:error:]_block_invoke"];
  v16[0] = v7;
  v16[1] = &unk_1F5A76990;
  v8 = *MEMORY[0x1E696A578];
  v15[1] = @"SourceFileLine";
  v15[2] = v8;
  v16[2] = v6;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:3];

  v10 = container_log_handle_for_category();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v14 = v6;
    _os_log_error_impl(&dword_1DF2C3000, v10, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:66 userInfo:v9];

  return v11;
}

id __93__MCMSQLiteDB__performInsertOrUpdateQuery_withCodeSigningEntry_forIdentifier_isUpdate_error___block_invoke_61(uint64_t a1)
{
  v18[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) isPlaceholder];
  v4 = [*(a1 + 32) isAdvanceCopy];
  v5 = *(a1 + 56);
  v6 = [*(a1 + 40) url];
  v7 = [v6 path];
  v8 = [v2 initWithFormat:@"sqlite3_bind_int for placeholder=%d, advance_copy=%d (flags=%d) at %@ failed: %d", v3, v4, v5, v7, sqlite3_extended_errcode(*(a1 + 48))];

  v17[0] = @"FunctionName";
  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB _performInsertOrUpdateQuery:withCodeSigningEntry:forIdentifier:isUpdate:error:]_block_invoke"];
  v18[0] = v9;
  v18[1] = &unk_1F5A769A8;
  v10 = *MEMORY[0x1E696A578];
  v17[1] = @"SourceFileLine";
  v17[2] = v10;
  v18[2] = v8;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:3];

  v12 = container_log_handle_for_category();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v16 = v8;
    _os_log_error_impl(&dword_1DF2C3000, v12, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:66 userInfo:v11];

  return v13;
}

id __93__MCMSQLiteDB__performInsertOrUpdateQuery_withCodeSigningEntry_forIdentifier_isUpdate_error___block_invoke_67(uint64_t a1)
{
  v16[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) isRegisteredByCaller];
  v4 = [*(a1 + 40) url];
  v5 = [v4 path];
  v6 = [v2 initWithFormat:@"sqlite3_bind_int for registered_by_caller=%d at %@ failed: %d", v3, v5, sqlite3_extended_errcode(*(a1 + 48))];

  v15[0] = @"FunctionName";
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB _performInsertOrUpdateQuery:withCodeSigningEntry:forIdentifier:isUpdate:error:]_block_invoke"];
  v16[0] = v7;
  v16[1] = &unk_1F5A769C0;
  v8 = *MEMORY[0x1E696A578];
  v15[1] = @"SourceFileLine";
  v15[2] = v8;
  v16[2] = v6;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:3];

  v10 = container_log_handle_for_category();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v14 = v6;
    _os_log_error_impl(&dword_1DF2C3000, v10, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:66 userInfo:v9];

  return v11;
}

id __93__MCMSQLiteDB__performInsertOrUpdateQuery_withCodeSigningEntry_forIdentifier_isUpdate_error___block_invoke_73(uint64_t a1)
{
  v16[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) dataContainerClass];
  v4 = [*(a1 + 40) url];
  v5 = [v4 path];
  v6 = [v2 initWithFormat:@"sqlite3_bind_int for data_container_class=%llu at %@ failed: %d", v3, v5, sqlite3_extended_errcode(*(a1 + 48))];

  v15[0] = @"FunctionName";
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB _performInsertOrUpdateQuery:withCodeSigningEntry:forIdentifier:isUpdate:error:]_block_invoke"];
  v16[0] = v7;
  v16[1] = &unk_1F5A769D8;
  v8 = *MEMORY[0x1E696A578];
  v15[1] = @"SourceFileLine";
  v15[2] = v8;
  v16[2] = v6;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:3];

  v10 = container_log_handle_for_category();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v14 = v6;
    _os_log_error_impl(&dword_1DF2C3000, v10, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:66 userInfo:v9];

  return v11;
}

id __93__MCMSQLiteDB__performInsertOrUpdateQuery_withCodeSigningEntry_forIdentifier_isUpdate_error___block_invoke_79(uint64_t a1)
{
  v16[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) url];
  v5 = [v4 path];
  v6 = [v2 initWithFormat:@"sqlite3_bind_text for code_signing_id=%@ at %@ failed: %d", v3, v5, sqlite3_extended_errcode(*(a1 + 48))];

  v15[0] = @"FunctionName";
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB _performInsertOrUpdateQuery:withCodeSigningEntry:forIdentifier:isUpdate:error:]_block_invoke"];
  v16[0] = v7;
  v16[1] = &unk_1F5A769F0;
  v8 = *MEMORY[0x1E696A578];
  v15[1] = @"SourceFileLine";
  v15[2] = v8;
  v16[2] = v6;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:3];

  v10 = container_log_handle_for_category();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v14 = v6;
    _os_log_error_impl(&dword_1DF2C3000, v10, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:66 userInfo:v9];

  return v11;
}

id __93__MCMSQLiteDB__performInsertOrUpdateQuery_withCodeSigningEntry_forIdentifier_isUpdate_error___block_invoke_85(uint64_t a1)
{
  v15[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) url];
  v4 = [v3 path];
  v5 = [v2 initWithFormat:@"sqlite3_step for %@ failed: %d", v4, sqlite3_extended_errcode(*(a1 + 40))];

  v14[0] = @"FunctionName";
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB _performInsertOrUpdateQuery:withCodeSigningEntry:forIdentifier:isUpdate:error:]_block_invoke"];
  v15[0] = v6;
  v15[1] = &unk_1F5A76A08;
  v7 = *MEMORY[0x1E696A578];
  v14[1] = @"SourceFileLine";
  v14[2] = v7;
  v15[2] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:3];

  v9 = container_log_handle_for_category();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v13 = v5;
    _os_log_error_impl(&dword_1DF2C3000, v9, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:66 userInfo:v8];

  return v10;
}

id __93__MCMSQLiteDB__performInsertOrUpdateQuery_withCodeSigningEntry_forIdentifier_isUpdate_error___block_invoke_88(uint64_t a1)
{
  v13[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) url];
  v5 = [v4 path];
  v6 = [v2 initWithFormat:@"sqlite3_changes for %s in %@: %d, but expecting 1", v3, v5, *(a1 + 48)];

  v12[0] = @"FunctionName";
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB _performInsertOrUpdateQuery:withCodeSigningEntry:forIdentifier:isUpdate:error:]_block_invoke"];
  v13[0] = v7;
  v13[1] = &unk_1F5A76A20;
  v8 = *MEMORY[0x1E696A578];
  v12[1] = @"SourceFileLine";
  v12[2] = v8;
  v13[2] = v6;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];

  v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:68 userInfo:v9];

  return v10;
}

- (BOOL)_insertChildIdentifier:(id)identifier forParentIdentifier:(id)parentIdentifier error:(id *)error
{
  v18[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  parentIdentifierCopy = parentIdentifier;
  v18[0] = 0;
  v10 = [(MCMSQLiteDB *)self _performTwoParameterQuery:"INSERT OR REPLACE INTO child_bundles (parent_id withTextInputOne:child_code_signing_id_text) SELECT id andTextInputTwo:? FROM code_signing_info WHERE code_signing_id_text = ?;" expectedChanges:identifierCopy error:parentIdentifierCopy, 0xFFFFFFFFLL, v18];
  v11 = v18[0];
  if (v10)
  {
    peerageDelegate = [(MCMSQLiteDB *)self peerageDelegate];
    [peerageDelegate codeSigningDB:self addChildIdentifier:identifierCopy forParentIdentifier:parentIdentifierCopy];
  }

  else
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __64__MCMSQLiteDB__insertChildIdentifier_forParentIdentifier_error___block_invoke;
    v16[3] = &unk_1E86B0B98;
    v17 = identifierCopy;
    v13 = __64__MCMSQLiteDB__insertChildIdentifier_forParentIdentifier_error___block_invoke(v16);

    if (error)
    {
      v14 = v13;
      *error = v13;
    }

    v11 = v13;
  }

  return v10;
}

id __64__MCMSQLiteDB__insertChildIdentifier_forParentIdentifier_error___block_invoke(uint64_t a1)
{
  v11[3] = *MEMORY[0x1E69E9840];
  v1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Error performing INSERT operation for child %@", *(a1 + 32)];
  v10[0] = @"FunctionName";
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB _insertChildIdentifier:forParentIdentifier:error:]_block_invoke"];
  v11[0] = v2;
  v11[1] = &unk_1F5A76960;
  v3 = *MEMORY[0x1E696A578];
  v10[1] = @"SourceFileLine";
  v10[2] = v3;
  v11[2] = v1;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:3];

  v5 = container_log_handle_for_category();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v9 = v1;
    _os_log_error_impl(&dword_1DF2C3000, v5, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:66 userInfo:v4];

  return v6;
}

- (BOOL)_performSingleParameterQuery:(const char *)query withTextInput:(id)input error:(id *)error
{

  return [(MCMSQLiteDB *)self _performSingleParameterQuery:query withTextInput:input expectedChanges:0xFFFFFFFFLL error:error];
}

- (BOOL)_performSingleParameterQuery:(const char *)query withTextInput:(id)input expectedChanges:(int)changes error:(id *)error
{

  return [(MCMSQLiteDB *)self _performTwoParameterQuery:query withTextInputOne:input andTextInputTwo:0 expectedChanges:*&changes error:error];
}

- (BOOL)_performTwoParameterQuery:(const char *)query withTextInputOne:(id)one andTextInputTwo:(id)two expectedChanges:(int)changes error:(id *)error
{
  v45 = *MEMORY[0x1E69E9840];
  oneCopy = one;
  twoCopy = two;
  ppStmt = 0;
  v14 = [(MCMSQLiteDB *)self db];
  if (!sqlite3_prepare_v2(v14, query, -1, &ppStmt, 0))
  {
    if (sqlite3_bind_text(ppStmt, 1, [oneCopy UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL))
    {
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __96__MCMSQLiteDB__performTwoParameterQuery_withTextInputOne_andTextInputTwo_expectedChanges_error___block_invoke_26;
      v35[3] = &unk_1E86B0B20;
      v36 = oneCopy;
      selfCopy = self;
      v38 = v14;
      v16 = __96__MCMSQLiteDB__performTwoParameterQuery_withTextInputOne_andTextInputTwo_expectedChanges_error___block_invoke_26(v35);
      v17 = v36;
    }

    else
    {
      if (!twoCopy || !sqlite3_bind_text(ppStmt, 2, [twoCopy UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL))
      {
        if (sqlite3_step(ppStmt) == 101)
        {
          if (changes == -1 || (v23 = sqlite3_changes(v14), v23 == changes))
          {
            v16 = 0;
            v18 = 1;
            goto LABEL_8;
          }

          v27[0] = MEMORY[0x1E69E9820];
          v27[1] = 3221225472;
          v27[2] = __96__MCMSQLiteDB__performTwoParameterQuery_withTextInputOne_andTextInputTwo_expectedChanges_error___block_invoke_41;
          v27[3] = &unk_1E86B0B70;
          v27[4] = self;
          v27[5] = query;
          v28 = v23;
          changesCopy = changes;
          v15 = __96__MCMSQLiteDB__performTwoParameterQuery_withTextInputOne_andTextInputTwo_expectedChanges_error___block_invoke_41(v27);
        }

        else
        {
          v30[0] = MEMORY[0x1E69E9820];
          v30[1] = 3221225472;
          v30[2] = __96__MCMSQLiteDB__performTwoParameterQuery_withTextInputOne_andTextInputTwo_expectedChanges_error___block_invoke_35;
          v30[3] = &unk_1E86B0B48;
          v30[4] = self;
          v30[5] = v14;
          v15 = __96__MCMSQLiteDB__performTwoParameterQuery_withTextInputOne_andTextInputTwo_expectedChanges_error___block_invoke_35(v30);
        }

        goto LABEL_3;
      }

      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __96__MCMSQLiteDB__performTwoParameterQuery_withTextInputOne_andTextInputTwo_expectedChanges_error___block_invoke_32;
      v31[3] = &unk_1E86B0B20;
      v32 = twoCopy;
      selfCopy2 = self;
      v34 = v14;
      v16 = __96__MCMSQLiteDB__performTwoParameterQuery_withTextInputOne_andTextInputTwo_expectedChanges_error___block_invoke_32(v31);
      v17 = v32;
    }

    goto LABEL_7;
  }

  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __96__MCMSQLiteDB__performTwoParameterQuery_withTextInputOne_andTextInputTwo_expectedChanges_error___block_invoke;
  v39[3] = &unk_1E86B0B48;
  v39[4] = self;
  v39[5] = v14;
  v15 = __96__MCMSQLiteDB__performTwoParameterQuery_withTextInputOne_andTextInputTwo_expectedChanges_error___block_invoke(v39);
LABEL_3:
  v16 = v15;
LABEL_7:
  v18 = 0;
LABEL_8:
  if (ppStmt && sqlite3_finalize(ppStmt))
  {
    v19 = container_log_handle_for_category();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v24 = [(MCMSQLiteDB *)self url];
      path = [v24 path];
      v26 = sqlite3_extended_errcode(v14);
      *buf = 138412546;
      v42 = path;
      v43 = 1024;
      v44 = v26;
      _os_log_error_impl(&dword_1DF2C3000, v19, OS_LOG_TYPE_ERROR, "sqlite3_finalize for %@ failed: %d", buf, 0x12u);
    }
  }

  if (error)
  {
    v20 = v18;
  }

  else
  {
    v20 = 1;
  }

  if ((v20 & 1) == 0)
  {
    v21 = v16;
    *error = v16;
  }

  return v18;
}

id __96__MCMSQLiteDB__performTwoParameterQuery_withTextInputOne_andTextInputTwo_expectedChanges_error___block_invoke(uint64_t a1)
{
  v15[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) url];
  v4 = [v3 path];
  v5 = [v2 initWithFormat:@"sqlite3_prepare(insert) for %@ failed: %d", v4, sqlite3_extended_errcode(*(a1 + 40))];

  v14[0] = @"FunctionName";
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB _performTwoParameterQuery:withTextInputOne:andTextInputTwo:expectedChanges:error:]_block_invoke"];
  v15[0] = v6;
  v15[1] = &unk_1F5A768E8;
  v7 = *MEMORY[0x1E696A578];
  v14[1] = @"SourceFileLine";
  v14[2] = v7;
  v15[2] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:3];

  v9 = container_log_handle_for_category();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v13 = v5;
    _os_log_error_impl(&dword_1DF2C3000, v9, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:66 userInfo:v8];

  return v10;
}

id __96__MCMSQLiteDB__performTwoParameterQuery_withTextInputOne_andTextInputTwo_expectedChanges_error___block_invoke_26(uint64_t a1)
{
  v16[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) url];
  v5 = [v4 path];
  v6 = [v2 initWithFormat:@"sqlite3_bind_text for identifier=%@ at %@ failed: %d", v3, v5, sqlite3_extended_errcode(*(a1 + 48))];

  v15[0] = @"FunctionName";
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB _performTwoParameterQuery:withTextInputOne:andTextInputTwo:expectedChanges:error:]_block_invoke"];
  v16[0] = v7;
  v16[1] = &unk_1F5A76900;
  v8 = *MEMORY[0x1E696A578];
  v15[1] = @"SourceFileLine";
  v15[2] = v8;
  v16[2] = v6;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:3];

  v10 = container_log_handle_for_category();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v14 = v6;
    _os_log_error_impl(&dword_1DF2C3000, v10, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:66 userInfo:v9];

  return v11;
}

id __96__MCMSQLiteDB__performTwoParameterQuery_withTextInputOne_andTextInputTwo_expectedChanges_error___block_invoke_32(uint64_t a1)
{
  v16[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) url];
  v5 = [v4 path];
  v6 = [v2 initWithFormat:@"sqlite3_bind_text for identifier=%@ at %@ failed: %d", v3, v5, sqlite3_extended_errcode(*(a1 + 48))];

  v15[0] = @"FunctionName";
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB _performTwoParameterQuery:withTextInputOne:andTextInputTwo:expectedChanges:error:]_block_invoke"];
  v16[0] = v7;
  v16[1] = &unk_1F5A76918;
  v8 = *MEMORY[0x1E696A578];
  v15[1] = @"SourceFileLine";
  v15[2] = v8;
  v16[2] = v6;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:3];

  v10 = container_log_handle_for_category();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v14 = v6;
    _os_log_error_impl(&dword_1DF2C3000, v10, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:66 userInfo:v9];

  return v11;
}

id __96__MCMSQLiteDB__performTwoParameterQuery_withTextInputOne_andTextInputTwo_expectedChanges_error___block_invoke_35(uint64_t a1)
{
  v15[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) url];
  v4 = [v3 path];
  v5 = [v2 initWithFormat:@"sqlite3_step for %@ failed: %d", v4, sqlite3_extended_errcode(*(a1 + 40))];

  v14[0] = @"FunctionName";
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB _performTwoParameterQuery:withTextInputOne:andTextInputTwo:expectedChanges:error:]_block_invoke"];
  v15[0] = v6;
  v15[1] = &unk_1F5A76930;
  v7 = *MEMORY[0x1E696A578];
  v14[1] = @"SourceFileLine";
  v14[2] = v7;
  v15[2] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:3];

  v9 = container_log_handle_for_category();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v13 = v5;
    _os_log_error_impl(&dword_1DF2C3000, v9, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:66 userInfo:v8];

  return v10;
}

id __96__MCMSQLiteDB__performTwoParameterQuery_withTextInputOne_andTextInputTwo_expectedChanges_error___block_invoke_41(uint64_t a1)
{
  v13[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) url];
  v5 = [v4 path];
  v6 = [v2 initWithFormat:@"sqlite3_changes for %s in %@: %d, but expecting %d", v3, v5, *(a1 + 48), *(a1 + 52)];

  v12[0] = @"FunctionName";
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB _performTwoParameterQuery:withTextInputOne:andTextInputTwo:expectedChanges:error:]_block_invoke"];
  v13[0] = v7;
  v13[1] = &unk_1F5A76948;
  v8 = *MEMORY[0x1E696A578];
  v12[1] = @"SourceFileLine";
  v12[2] = v8;
  v13[2] = v6;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];

  v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:68 userInfo:v9];

  return v10;
}

- (void)closeDB
{
  v15 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  v3 = container_log_handle_for_category();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v7 = [(MCMSQLiteDB *)self url];
    path = [v7 path];
    v11 = 138412290;
    v12 = path;
    _os_log_debug_impl(&dword_1DF2C3000, v3, OS_LOG_TYPE_DEBUG, "closing %@", &v11, 0xCu);
  }

  v4 = sqlite3_close([(MCMSQLiteDB *)self db]);
  if (v4)
  {
    v5 = v4;
    v6 = container_log_handle_for_category();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v9 = [(MCMSQLiteDB *)self url];
      path2 = [v9 path];
      v11 = 138412546;
      v12 = path2;
      v13 = 1024;
      v14 = v5;
      _os_log_error_impl(&dword_1DF2C3000, v6, OS_LOG_TYPE_ERROR, "sqlite3_close for %@ failed: %d", &v11, 0x12u);
    }
  }

  [(MCMSQLiteDB *)self setDb:0];
}

- (BOOL)_sqliteExec:(id)exec error:(id *)error
{
  errmsg[1] = *MEMORY[0x1E69E9840];
  execCopy = exec;
  errmsg[0] = 0;
  v7 = sqlite3_exec(-[MCMSQLiteDB db](self, "db"), [execCopy UTF8String], 0, 0, errmsg);
  if (v7)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __33__MCMSQLiteDB__sqliteExec_error___block_invoke;
    v11[3] = &unk_1E86B0B20;
    v12 = execCopy;
    selfCopy = self;
    v14 = errmsg[0];
    v8 = __33__MCMSQLiteDB__sqliteExec_error___block_invoke(v11);
    sqlite3_free(errmsg[0]);

    if (error)
    {
      v9 = v8;
      *error = v8;
    }
  }

  else
  {
    v8 = 0;
  }

  return v7 == 0;
}

id __33__MCMSQLiteDB__sqliteExec_error___block_invoke(uint64_t a1)
{
  v15[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) url];
  v5 = [v2 initWithFormat:@"%@ on %@ failed: %s", v3, v4, *(a1 + 48)];

  v14[0] = @"FunctionName";
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB _sqliteExec:error:]_block_invoke"];
  v15[0] = v6;
  v15[1] = &unk_1F5A768D0;
  v7 = *MEMORY[0x1E696A578];
  v14[1] = @"SourceFileLine";
  v14[2] = v7;
  v15[2] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:3];

  v9 = container_log_handle_for_category();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v13 = v5;
    _os_log_error_impl(&dword_1DF2C3000, v9, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:66 userInfo:v8];

  return v10;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  [(MCMSQLiteDB *)self closeDB];
  v3.receiver = self;
  v3.super_class = MCMSQLiteDB;
  [(MCMSQLiteDB *)&v3 dealloc];
}

- (MCMSQLiteDB)initWithURL:(id)l queue:(id)queue error:(id *)error
{
  v18 = *MEMORY[0x1E69E9840];
  lCopy = l;
  queueCopy = queue;
  dispatch_assert_queue_V2(queueCopy);
  v17.receiver = self;
  v17.super_class = MCMSQLiteDB;
  v11 = [(MCMSQLiteDB *)&v17 init];
  v12 = v11;
  if (v11 && ((objc_storeStrong(&v11->_queue, queue), objc_storeStrong(&v12->_url, l), !v12->_url) || ((v13 = [objc_opt_class() openDBWithURL:v12->_url queue:queueCopy error:error], v12->_db = v13, v12->_url) ? (v14 = v13 == 0) : (v14 = 1), v14)))
  {
    v15 = 0;
  }

  else
  {
    v15 = v12;
  }

  return v15;
}

+ (sqlite3)openDBWithURL:(id)l queue:(id)queue error:(id *)error
{
  v36 = *MEMORY[0x1E69E9840];
  lCopy = l;
  queueCopy = queue;
  dispatch_assert_queue_V2(queueCopy);
  ppDb = 0;
  v9 = container_log_handle_for_category();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    path = [lCopy path];
    *buf = 138412290;
    *&buf[4] = path;
    _os_log_debug_impl(&dword_1DF2C3000, v9, OS_LOG_TYPE_DEBUG, "Opening [%@]", buf, 0xCu);
  }

  if (sqlite3_open_v2([lCopy fileSystemRepresentation], &ppDb, 4194310, 0))
  {
    v10 = sqlite3_extended_errcode(ppDb);
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __41__MCMSQLiteDB_openDBWithURL_queue_error___block_invoke;
    v25[3] = &unk_1E86B0AF8;
    v11 = lCopy;
    v28 = v10;
    v26 = v11;
    v27 = ppDb;
    v12 = __41__MCMSQLiteDB_openDBWithURL_queue_error___block_invoke(v25);
    v13 = container_log_handle_for_category();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      path2 = [v11 path];
      *buf = 138412546;
      *&buf[4] = path2;
      *&buf[12] = 1024;
      *&buf[14] = v10;
      _os_log_error_impl(&dword_1DF2C3000, v13, OS_LOG_TYPE_ERROR, "opening %@ failed: xerr = %d", buf, 0x12u);
    }

    sqlite3_close(ppDb);
    goto LABEL_8;
  }

  errmsg = 0;
  v14 = sqlite3_exec(ppDb, "PRAGMA locking_mode = EXCLUSIVE;PRAGMA journal_mode = WAL;PRAGMA foreign_keys = ON;PRAGMA auto_vacuum = FULL;CREATE TABLE IF NOT EXISTS code_signing_info(id INTEGER PRIMARY KEY AUTOINCREMENT,code_signing_id_text TEXT NOT NULL UNIQUE,invalid INTEGER NOT NULL DEFAULT 0,placeholder INTEGER NOT NULL DEFAULT 0,registered_by_caller INTEGER NOT NULL DEFAULT 0,data_container_class INTEGER NOT NULL DEFAULT 0);CREATE TABLE IF NOT EXISTS code_signing_data(id INTEGER PRIMARY KEY AUTOINCREMENT,cs_info_id INTEGER NOT NULL UNIQUE,data BLOB NOT NULL,FOREIGN KEY(cs_info_id) REFERENCES code_signing_info(id) ON DELETE CASCADE);CREATE TABLE IF NOT EXISTS child_bundles(id INTEGER PRIMARY KEY AUTOINCREMENT,child_code_signing_id_text TEXT NOT NULL UNIQUE,parent_id INTEGER NOT NULL,FOREIGN KEY(parent_id) REFERENCES code_signing_info(id) ON DELETE CASCADE);CREATE INDEX IF NOT EXISTS code_signing_id_text_idx ON code_signing_info(code_signing_id_text);CREATE INDEX IF NOT EXISTS cs_info_id_idx ON code_signing_data(cs_info_id);CREATE INDEX IF NOT EXISTS parent_id_idx ON child_bundles(parent_id);", 0, 0, &errmsg);
  v12 = 0;
  if (!v14)
  {
LABEL_8:
    v15 = ppDb;
    if (error)
    {
      if (!ppDb)
      {
        v16 = v12;
        *error = v12;
        v15 = ppDb;
      }
    }

    return v15;
  }

  v20 = v14;
  v21 = sqlite3_extended_errcode(ppDb);
  v22 = container_log_handle_for_category();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    path3 = [lCopy path];
    *buf = 138412546;
    *&buf[4] = path3;
    *&buf[12] = 2080;
    *&buf[14] = errmsg;
    _os_log_error_impl(&dword_1DF2C3000, v22, OS_LOG_TYPE_ERROR, "table create for %@ failed: %s", buf, 0x16u);
  }

  sqlite3_free(errmsg);
  v35 = 0;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  memset(buf, 0, sizeof(buf));
  snprintf(buf, 0x64uLL, "Failed to initialize database, err = %d, xerr = %d", v20, v21);
  sqlite3_close(ppDb);
  result = _os_crash();
  __break(1u);
  return result;
}

id __41__MCMSQLiteDB_openDBWithURL_queue_error___block_invoke(uint64_t a1)
{
  v11[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) path];
  v4 = [v2 initWithFormat:@"opening %@ failed: xerr = %d, errmsg: %s", v3, *(a1 + 48), sqlite3_errmsg(*(a1 + 40))];

  v10[0] = @"FunctionName";
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[MCMSQLiteDB openDBWithURL:queue:error:]_block_invoke"];
  v11[0] = v5;
  v11[1] = &unk_1F5A768B8;
  v6 = *MEMORY[0x1E696A578];
  v10[1] = @"SourceFileLine";
  v10[2] = v6;
  v11[2] = v4;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:3];

  v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.containermanagerd.SQLite" code:sqlite3_extended_errcode(*(a1 + 40)) userInfo:v7];

  return v8;
}

+ (BOOL)moveDBWithURL:(id)l toURL:(id)rL queue:(id)queue error:(id *)error
{
  v43 = *MEMORY[0x1E69E9840];
  lCopy = l;
  rLCopy = rL;
  dispatch_assert_queue_V2(queue);
  ppDb = 0;
  if (sqlite3_open_v2([lCopy fileSystemRepresentation], &ppDb, 1, 0))
  {
    v11 = sqlite3_extended_errcode(ppDb);
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __47__MCMSQLiteDB_moveDBWithURL_toURL_queue_error___block_invoke;
    v32[3] = &unk_1E86B0AF8;
    v12 = lCopy;
    v35 = v11;
    v33 = v12;
    v34 = ppDb;
    v13 = __47__MCMSQLiteDB_moveDBWithURL_toURL_queue_error___block_invoke(v32);
    v14 = container_log_handle_for_category();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      path = [v12 path];
      *buf = 138412546;
      v38 = path;
      v39 = 1024;
      LODWORD(v40) = v11;
      _os_log_error_impl(&dword_1DF2C3000, v14, OS_LOG_TYPE_ERROR, "opening %@ failed: xerr = %d", buf, 0x12u);
    }

    v15 = 0;
    v16 = v33;
  }

  else
  {
    [rLCopy fileSystemRepresentation];
    if (_sqlite3_db_copy_compact())
    {
      v17 = sqlite3_extended_errcode(ppDb);
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __47__MCMSQLiteDB_moveDBWithURL_toURL_queue_error___block_invoke_5;
      v28[3] = &unk_1E86B0AF8;
      v18 = lCopy;
      v31 = v17;
      v29 = v18;
      v30 = ppDb;
      v13 = __47__MCMSQLiteDB_moveDBWithURL_toURL_queue_error___block_invoke_5(v28);
      v19 = container_log_handle_for_category();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        path2 = [v18 path];
        path3 = [rLCopy path];
        *buf = 138412802;
        v38 = path2;
        v39 = 2112;
        v40 = path3;
        v41 = 1024;
        v42 = v17;
        _os_log_error_impl(&dword_1DF2C3000, v19, OS_LOG_TYPE_ERROR, "copying [%@] to [%@] failed: xerr = %d", buf, 0x1Cu);
      }

      v15 = 0;
      v16 = v29;
    }

    else
    {
      v16 = container_log_handle_for_category();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        path4 = [lCopy path];
        path5 = [rLCopy path];
        *buf = 138412546;
        v38 = path4;
        v39 = 2112;
        v40 = path5;
        _os_log_debug_impl(&dword_1DF2C3000, v16, OS_LOG_TYPE_DEBUG, "Moved [%@] to [%@]", buf, 0x16u);
      }

      v13 = 0;
      v15 = 1;
    }
  }

  if (ppDb)
  {
    sqlite3_close(ppDb);
  }

  if (error)
  {
    v20 = v15;
  }

  else
  {
    v20 = 1;
  }

  if ((v20 & 1) == 0)
  {
    v21 = v13;
    *error = v13;
  }

  return v15;
}

id __47__MCMSQLiteDB_moveDBWithURL_toURL_queue_error___block_invoke(uint64_t a1)
{
  v11[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) path];
  v4 = [v2 initWithFormat:@"opening %@ failed: xerr = %x, errmsg: %s", v3, *(a1 + 48), sqlite3_errmsg(*(a1 + 40))];

  v10[0] = @"FunctionName";
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[MCMSQLiteDB moveDBWithURL:toURL:queue:error:]_block_invoke"];
  v11[0] = v5;
  v11[1] = &unk_1F5A76888;
  v6 = *MEMORY[0x1E696A578];
  v10[1] = @"SourceFileLine";
  v10[2] = v6;
  v11[2] = v4;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:3];

  v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.containermanagerd.SQLite" code:sqlite3_extended_errcode(*(a1 + 40)) userInfo:v7];

  return v8;
}

id __47__MCMSQLiteDB_moveDBWithURL_toURL_queue_error___block_invoke_5(uint64_t a1)
{
  v11[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) path];
  v4 = [v2 initWithFormat:@"opening %@ failed: xerr = %x, errmsg: %s", v3, *(a1 + 48), sqlite3_errmsg(*(a1 + 40))];

  v10[0] = @"FunctionName";
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[MCMSQLiteDB moveDBWithURL:toURL:queue:error:]_block_invoke"];
  v11[0] = v5;
  v11[1] = &unk_1F5A768A0;
  v6 = *MEMORY[0x1E696A578];
  v10[1] = @"SourceFileLine";
  v10[2] = v6;
  v11[2] = v4;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:3];

  v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.containermanagerd.SQLite" code:sqlite3_extended_errcode(*(a1 + 40)) userInfo:v7];

  return v8;
}

@end