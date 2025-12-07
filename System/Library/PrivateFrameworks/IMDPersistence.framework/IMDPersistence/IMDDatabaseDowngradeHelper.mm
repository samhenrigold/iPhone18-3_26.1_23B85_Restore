@interface IMDDatabaseDowngradeHelper
- (BOOL)_readIntegerFromQuery:(id)query resultBlock:(id)block;
- (BOOL)beginTransaction:(id)transaction;
- (BOOL)cloneTableContents:(id)contents withOperation:(IMDSqlOperation *)operation resultBlock:(id)block;
- (BOOL)close:(id)close;
- (BOOL)commitTransaction:(id)transaction;
- (BOOL)createIndexes:(id)indexes;
- (BOOL)createTables:(id)tables;
- (BOOL)createTriggers:(id)triggers;
- (BOOL)importDataFromWhitetailDatabaseWithSqlOperation:(IMDSqlOperation *)operation resultBlock:(id)block;
- (BOOL)open:(id)open;
- (BOOL)readDatabaseVersion:(id)version;
- (BOOL)readRowCountForTable:(id)table resultBlock:(id)block;
- (BOOL)revertTransaction:(id)transaction;
- (BOOL)runArrayOfQueries:(id)queries resultBlock:(id)block;
- (BOOL)runSimpleQuery:(id)query resultBlock:(id)block;
- (BOOL)writeDatabaseVersion:(int64_t)version resultBlock:(id)block;
- (IMDDatabaseDowngradeHelper)initWithPath:(id)path tableNames:(id)names createTablesSQL:(id)l createIndexesSQL:(id)qL createTriggersSQL:(id)sQL downgradesToVersion:(int64_t)version;
- (id)errorFromResult:(int)result query:(id)query;
- (void)dealloc;
@end

@implementation IMDDatabaseDowngradeHelper

- (IMDDatabaseDowngradeHelper)initWithPath:(id)path tableNames:(id)names createTablesSQL:(id)l createIndexesSQL:(id)qL createTriggersSQL:(id)sQL downgradesToVersion:(int64_t)version
{
  v31.receiver = self;
  v31.super_class = IMDDatabaseDowngradeHelper;
  v17 = [(IMDDatabaseDowngradeHelper *)&v31 init];
  if (v17)
  {
    v17->_path = objc_msgSend_copy(path, v14, v15, v16);
    v17->_tableNames = objc_msgSend_copy(names, v18, v19, v20);
    v17->_createTablesSQL = objc_msgSend_copy(l, v21, v22, v23);
    v17->_createIndexesSQL = objc_msgSend_copy(qL, v24, v25, v26);
    v17->_createTriggersSQL = objc_msgSend_copy(sQL, v27, v28, v29);
    v17->_downgradesToVersion = version;
  }

  return v17;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = IMDDatabaseDowngradeHelper;
  [(IMDDatabaseDowngradeHelper *)&v3 dealloc];
}

- (BOOL)runSimpleQuery:(id)query resultBlock:(id)block
{
  ppStmt = 0;
  database = self->_database;
  v8 = objc_msgSend_UTF8String(query, a2, query, block);
  v9 = sqlite3_prepare_v2(database, v8, -1, &ppStmt, 0);
  v11 = objc_msgSend_errorFromResult_query_(self, v10, v9, query);
  if (!v11)
  {
    do
    {
      v12 = sqlite3_step(ppStmt);
    }

    while (v12 == 100);
    v11 = objc_msgSend_errorFromResult_query_(self, v13, v12, query);
  }

  if (ppStmt)
  {
    sqlite3_finalize(ppStmt);
    ppStmt = 0;
  }

  if (block)
  {
    (*(block + 2))(block, v11 == 0, v11);
  }

  return v11 == 0;
}

- (BOOL)runArrayOfQueries:(id)queries resultBlock:(id)block
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(queries, a2, &v14, v18, 16);
  if (v7)
  {
    v9 = v7;
    v10 = *v15;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v15 != v10)
      {
        objc_enumerationMutation(queries);
      }

      resultBlock = objc_msgSend_runSimpleQuery_resultBlock_(self, v8, *(*(&v14 + 1) + 8 * v11), block);
      if (!resultBlock)
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(queries, v8, &v14, v18, 16);
        if (v9)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    LOBYTE(resultBlock) = 1;
  }

  return resultBlock;
}

- (BOOL)createTables:(id)tables
{
  TablesSQL = objc_msgSend_createTablesSQL(self, a2, tables, v3);

  return MEMORY[0x1EEE66B58](self, sel_runArrayOfQueries_resultBlock_, TablesSQL, tables);
}

- (BOOL)createIndexes:(id)indexes
{
  IndexesSQL = objc_msgSend_createIndexesSQL(self, a2, indexes, v3);

  return MEMORY[0x1EEE66B58](self, sel_runArrayOfQueries_resultBlock_, IndexesSQL, indexes);
}

- (BOOL)createTriggers:(id)triggers
{
  TriggersSQL = objc_msgSend_createTriggersSQL(self, a2, triggers, v3);

  return MEMORY[0x1EEE66B58](self, sel_runArrayOfQueries_resultBlock_, TriggersSQL, triggers);
}

- (BOOL)beginTransaction:(id)transaction
{
  result = objc_msgSend_runSimpleQuery_resultBlock_(self, a2, @"BEGIN EXCLUSIVE;", transaction);
  self->_inTransaction = result;
  return result;
}

- (BOOL)commitTransaction:(id)transaction
{
  if (self->_inTransaction)
  {
    if (objc_msgSend_runSimpleQuery_resultBlock_(self, a2, @"COMMIT;", transaction))
    {
      self->_inTransaction = 0;
      return 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v5 = IMDatabaseLogHandle();
    v4 = 1;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_1B7AD5000, v5, OS_LOG_TYPE_INFO, "Skipping commit of a non-existent transaction in Downgraded database", v7, 2u);
    }
  }

  return v4;
}

- (BOOL)revertTransaction:(id)transaction
{
  if (self->_inTransaction)
  {
    if (objc_msgSend_runSimpleQuery_resultBlock_(self, a2, @"REVERT;", transaction))
    {
      self->_inTransaction = 0;
      return 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v5 = IMDatabaseLogHandle();
    v4 = 1;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_1B7AD5000, v5, OS_LOG_TYPE_INFO, "Skipping revert of a non-existant transaction in Downgraded database.", v7, 2u);
    }
  }

  return v4;
}

- (BOOL)writeDatabaseVersion:(int64_t)version resultBlock:(id)block
{
  v7 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"UPDATE _SqliteDatabaseProperties SET value = %ld WHERE key = '_ClientVersion';", block, version);

  return objc_msgSend_runSimpleQuery_resultBlock_(self, v6, v7, block);
}

- (BOOL)cloneTableContents:(id)contents withOperation:(IMDSqlOperation *)operation resultBlock:(id)block
{
  v43 = *MEMORY[0x1E69E9840];
  v8 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    *&buf[4] = contents;
    _os_log_impl(&dword_1B7AD5000, v8, OS_LOG_TYPE_INFO, "Cloning and downgrading table '%@' into Downgraded Database", buf, 0xCu);
  }

  v11 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v9, @"PRAGMA dest.table_info(%@);", v10, contents);
  Rows = _IMDSqlOperationGetRows(operation, v11);
  *buf = 0;
  IMDSqlOperationGetError(operation, buf);
  v16 = *buf;
  if (!*buf)
  {
    contentsCopy = contents;
    blockCopy = block;
    v17 = objc_msgSend_string(MEMORY[0x1E696AD60], v13, v14, v15);
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(Rows, v18, &v37, v41, 16);
    if (v19)
    {
      v23 = v19;
      v24 = *v38;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v38 != v24)
          {
            objc_enumerationMutation(Rows);
          }

          v26 = *(*(&v37 + 1) + 8 * i);
          v27 = objc_msgSend_length(v17, v20, v21, v22);
          v30 = objc_msgSend_objectForKeyedSubscript_(v26, v28, @"name", v29);
          if (v27)
          {
            objc_msgSend_appendFormat_(v17, v31, @", %@", v32, v30);
          }

          else
          {
            objc_msgSend_appendString_(v17, v31, v30, v32);
          }
        }

        v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(Rows, v20, &v37, v41, 16);
      }

      while (v23);
    }

    v33 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v20, @"INSERT INTO dest.%@ SELECT %@ FROM main.%@", v22, contentsCopy, v17, contentsCopy);
    _IMDSqlOperationRunQuery(operation, v33, 0, 0);
    *buf = 0;
    IMDSqlOperationGetError(operation, buf);
    v16 = *buf;
    block = blockCopy;
  }

  if (block)
  {
    (*(block + 2))(block, v16 == 0, v16);
  }

  return v16 == 0;
}

- (BOOL)importDataFromWhitetailDatabaseWithSqlOperation:(IMDSqlOperation *)operation resultBlock:(id)block
{
  v48 = *MEMORY[0x1E69E9840];
  v7 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1B7AD5000, v7, OS_LOG_TYPE_INFO, "Downgrade: turning off foreign keys", buf, 2u);
  }

  _IMDSqlOperationRunQuery(operation, @"PRAGMA foreign_keys = OFF;", 0, 0);
  *buf = 0;
  v41 = buf;
  v42 = 0x3052000000;
  v43 = sub_1B7AE18A4;
  v44 = sub_1B7AE2440;
  *v46 = 0;
  IMDSqlOperationGetError(operation, v46);
  v45 = *v46;
  if (!*(v41 + 5))
  {
    v8 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *v46 = 0;
      _os_log_impl(&dword_1B7AD5000, v8, OS_LOG_TYPE_INFO, "Downgrade: attaching new (empty so far) downgraded database to the real database", v46, 2u);
    }

    v12 = MEMORY[0x1E696AEC0];
    v13 = objc_msgSend_path(self, v9, v10, v11);
    v16 = objc_msgSend_stringWithFormat_(v12, v14, @"ATTACH '%@' AS 'dest';", v15, v13);
    _IMDSqlOperationRunQuery(operation, v16, 0, 0);
    *v46 = 0;
    IMDSqlOperationGetError(operation, v46);
    v17 = *v46;
    *(v41 + 5) = *v46;
    if (!v17)
    {
      v18 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *v46 = 0;
        _os_log_impl(&dword_1B7AD5000, v18, OS_LOG_TYPE_INFO, "Downgrade: Beginning transaction", v46, 2u);
      }

      IMDSqlOperationBeginTransaction(operation);
      blockCopy = block;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v22 = objc_msgSend_tableNames(self, v19, v20, v21);
      v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v23, &v36, v47, 16);
      if (v24)
      {
        v25 = *v37;
LABEL_11:
        v26 = 0;
        while (1)
        {
          if (*v37 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v36 + 1) + 8 * v26);
          v28 = IMDatabaseLogHandle();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
          {
            *v46 = 138412290;
            *&v46[4] = v27;
            _os_log_impl(&dword_1B7AD5000, v28, OS_LOG_TYPE_INFO, "Downgrade: Copying table: %@", v46, 0xCu);
          }

          v35[0] = MEMORY[0x1E69E9820];
          v35[1] = 3221225472;
          v35[2] = sub_1B7B033B8;
          v35[3] = &unk_1E7CB66D8;
          v35[4] = buf;
          objc_msgSend_cloneTableContents_withOperation_resultBlock_(self, v29, v27, operation, v35);
          if (*(v41 + 5))
          {
            break;
          }

          if (v24 == ++v26)
          {
            v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v30, &v36, v47, 16);
            if (v24)
            {
              goto LABEL_11;
            }

            break;
          }
        }
      }

      IMDSqlOperationCommitOrRevertTransaction(operation);
      block = blockCopy;
    }
  }

  v31 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
  {
    *v46 = 0;
    _os_log_impl(&dword_1B7AD5000, v31, OS_LOG_TYPE_INFO, "Downgrade: Detaching database", v46, 2u);
  }

  _IMDSqlOperationRunQuery(operation, @"DETACH DATABASE 'dest';", 0, 0);
  if (block)
  {
    (*(block + 2))(block, *(v41 + 5) == 0);
  }

  v32 = *(v41 + 5) == 0;
  _Block_object_dispose(buf, 8);
  return v32;
}

- (id)errorFromResult:(int)result query:(id)query
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = (result - 100) < 2 || result == 0;
  if (v5 || (v9 = IMDCreateCFErrorWithQueryErrorCode(result, self->_database, query)) == 0)
  {
    v6 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v12 = 138412290;
      queryCopy = query;
      _os_log_impl(&dword_1B7AD5000, v6, OS_LOG_TYPE_INFO, "Downgraded database SQL query ran ok: '%@'", &v12, 0xCu);
    }

    return 0;
  }

  else
  {
    v7 = v9;
    v10 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CEB1FC(query, v7, v10, v11);
    }
  }

  return v7;
}

- (BOOL)open:(id)open
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    path = self->_path;
    LODWORD(buf) = 138412290;
    *(&buf + 4) = path;
    _os_log_impl(&dword_1B7AD5000, v5, OS_LOG_TYPE_INFO, "Opening Downgraded database at: '%@'...", &buf, 0xCu);
  }

  v10 = objc_msgSend_UTF8String(self->_path, v6, v7, v8);
  v11 = sqlite3_open_v2(v10, &self->_database, 6, 0);
  *&buf = 0;
  *(&buf + 1) = &buf;
  v25 = 0x3052000000;
  v26 = sub_1B7AE18A4;
  v27 = sub_1B7AE2440;
  v28 = objc_msgSend_errorFromResult_query_(self, v12, v11, @"Open database");
  v14 = *(&buf + 1);
  if (!*(*(&buf + 1) + 40))
  {
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = sub_1B7B037CC;
    v23[3] = &unk_1E7CB66D8;
    v23[4] = &buf;
    objc_msgSend_runSimpleQuery_resultBlock_(self, v13, @"PRAGMA page_size = 4096;", v23);
    v14 = *(&buf + 1);
    if (!*(*(&buf + 1) + 40))
    {
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = sub_1B7B037DC;
      v22[3] = &unk_1E7CB66D8;
      v22[4] = &buf;
      objc_msgSend_runSimpleQuery_resultBlock_(self, v15, @"PRAGMA auto_vacuum = 2;", v22);
      v14 = *(&buf + 1);
      if (!*(*(&buf + 1) + 40))
      {
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = sub_1B7B037EC;
        v21[3] = &unk_1E7CB66D8;
        v21[4] = &buf;
        objc_msgSend_runSimpleQuery_resultBlock_(self, v16, @"PRAGMA journal_mode = wal;", v21);
        v14 = *(&buf + 1);
        if (!*(*(&buf + 1) + 40))
        {
          v20[0] = MEMORY[0x1E69E9820];
          v20[1] = 3221225472;
          v20[2] = sub_1B7B037FC;
          v20[3] = &unk_1E7CB66D8;
          v20[4] = &buf;
          objc_msgSend_runSimpleQuery_resultBlock_(self, v17, @"PRAGMA foreign_keys = OFF;", v20);
          v14 = *(&buf + 1);
        }
      }
    }
  }

  if (open)
  {
    (*(open + 2))(open, *(v14 + 40) == 0);
    v14 = *(&buf + 1);
  }

  v18 = *(v14 + 40) == 0;
  _Block_object_dispose(&buf, 8);
  return v18;
}

- (BOOL)close:(id)close
{
  v11 = *MEMORY[0x1E69E9840];
  database = self->_database;
  if (database)
  {
    sqlite3_close_v2(database);
    self->_database = 0;
    v6 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      path = self->_path;
      v9 = 138412290;
      v10 = path;
      _os_log_impl(&dword_1B7AD5000, v6, OS_LOG_TYPE_INFO, "Closed Downgraded database at: '%@'...", &v9, 0xCu);
    }
  }

  if (close)
  {
    (*(close + 2))(close, 1, 0);
  }

  return 1;
}

- (BOOL)_readIntegerFromQuery:(id)query resultBlock:(id)block
{
  ppStmt = 0;
  database = self->_database;
  v8 = objc_msgSend_UTF8String(query, a2, query, block);
  v9 = sqlite3_prepare_v2(database, v8, -1, &ppStmt, 0);
  v11 = objc_msgSend_errorFromResult_query_(self, v10, v9, query);
  if (v11)
  {
    v12 = v11;
    v13 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v14 = sqlite3_step(ppStmt);
    if (v14 == 100)
    {
      do
      {
        v13 = sqlite3_column_int64(ppStmt, 0);
        v16 = sqlite3_step(ppStmt);
      }

      while (v16 == 100);
      v18 = objc_msgSend_errorFromResult_query_(self, v17, v16, query);
    }

    else
    {
      v13 = 0x7FFFFFFFFFFFFFFFLL;
      v18 = objc_msgSend_errorFromResult_query_(self, v15, v14, query);
    }

    v12 = v18;
  }

  if (ppStmt)
  {
    sqlite3_finalize(ppStmt);
    ppStmt = 0;
  }

  if (block)
  {
    (*(block + 2))(block, v12 == 0, v12, v13);
  }

  return v12 == 0;
}

- (BOOL)readDatabaseVersion:(id)version
{
  v6 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"SELECT value FROM _SqliteDatabaseProperties WHERE key = '_ClientVersion';", v3);

  return MEMORY[0x1EEE66B58](self, sel__readIntegerFromQuery_resultBlock_, v6, version);
}

- (BOOL)readRowCountForTable:(id)table resultBlock:(id)block
{
  v6 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"SELECT count(*) FROM %@;", block, table);

  return MEMORY[0x1EEE66B58](self, sel__readIntegerFromQuery_resultBlock_, v6, block);
}

@end