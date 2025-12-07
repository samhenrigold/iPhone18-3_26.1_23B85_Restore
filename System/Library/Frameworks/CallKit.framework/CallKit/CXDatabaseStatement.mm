@interface CXDatabaseStatement
- (BOOL)bind:(id)bind error:(id *)error;
- (BOOL)bindInt64:(int64_t)int64 atIndex:(int)index error:(id *)error;
- (BOOL)bindText:(const char *)text ofLength:(int)length atIndex:(int)index error:(id *)error;
- (BOOL)executeWithExpectedColumnCount:(int64_t)count resultRowHandler:(id)handler error:(id *)error;
- (BOOL)processResultsWithExpectedColumnCount:(int64_t)count resultRowHandler:(id)handler error:(id *)error;
- (CXDatabaseStatement)initWithSQL:(id)l database:(id)database error:(id *)error;
- (void)dealloc;
- (void)finalize;
@end

@implementation CXDatabaseStatement

- (void)finalize
{
  if ([(CXDatabaseStatement *)self statement])
  {
    sqlite3_finalize([(CXDatabaseStatement *)self statement]);

    [(CXDatabaseStatement *)self setStatement:0];
  }
}

- (void)dealloc
{
  [(CXDatabaseStatement *)self finalize];
  v3.receiver = self;
  v3.super_class = CXDatabaseStatement;
  [(CXDatabaseStatement *)&v3 dealloc];
}

- (CXDatabaseStatement)initWithSQL:(id)l database:(id)database error:(id *)error
{
  v19[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  databaseCopy = database;
  v17.receiver = self;
  v17.super_class = CXDatabaseStatement;
  v10 = [(CXDatabaseStatement *)&v17 init];
  if (v10)
  {
    v11 = sqlite3_prepare_v2([databaseCopy database], objc_msgSend(lCopy, "UTF8String"), objc_msgSend(lCopy, "length") + 1, &v10->_statement, 0);
    if (v11)
    {
      if (error)
      {
        v12 = v11;
        v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"sqlite3_prepare_v2 for query '%@' returned %d errorMessage '%s'", lCopy, v11, sqlite3_errmsg(objc_msgSend(databaseCopy, "database"))];
        v14 = MEMORY[0x1E696ABC0];
        v18 = *MEMORY[0x1E696A578];
        v19[0] = v13;
        v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
        *error = [v14 errorWithDomain:@"com.apple.callkit.database.sqlite" code:v12 userInfo:v15];
      }

      v10 = 0;
    }

    else
    {
      v10->_database = [databaseCopy database];
    }
  }

  return v10;
}

- (BOOL)executeWithExpectedColumnCount:(int64_t)count resultRowHandler:(id)handler error:(id *)error
{
  v42[1] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v29 = *MEMORY[0x1E696A578];
  v8 = 1;
  v9 = 0.0;
  v10 = 0.0;
  while (1)
  {
    v11 = sqlite3_step([(CXDatabaseStatement *)self statement]);
    v12 = v11;
    v13 = (v11 - 7) >= 0xFFFFFFFE ? v10 : 0.0;
    v14 = (v11 - 7) >= 0xFFFFFFFE ? v9 : 0.0;
    if ((v11 - 5) >= 2)
    {
      break;
    }

    v15 = sqlite3_errmsg([(CXDatabaseStatement *)self database]);
    v16 = sqlite3_extended_errcode([(CXDatabaseStatement *)self database]);
    v17 = v16;
    if (v10 > 300.0)
    {
      if (!error)
      {
        goto LABEL_30;
      }

      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"sqlite3_step for query '%s' returned %d (%d) errorMessage '%s' after retrying for %f seconds", sqlite3_sql(-[CXDatabaseStatement statement](self, "statement")), v12, v16, v15, *&v10];
      v22 = MEMORY[0x1E696ABC0];
      v23 = v12;
      v41 = v29;
      v42[0] = v21;
      v24 = MEMORY[0x1E695DF20];
      v25 = v42;
      v26 = &v41;
      goto LABEL_29;
    }

    if (v9 == 0.0)
    {
      v13 = v10;
    }

    else
    {
      v13 = v10 + v9 * 1.2;
    }

    if (v9 == 0.0)
    {
      v14 = 0.2;
    }

    else
    {
      v14 = v9 * 1.2;
    }

    v18 = CXDefaultLog(v16);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109890;
      v34 = v12;
      v35 = 1024;
      v36 = v17;
      v37 = 2080;
      v38 = v15;
      v39 = 2048;
      v40 = v14;
      _os_log_impl(&dword_1B47F3000, v18, OS_LOG_TYPE_DEFAULT, "[WARN] sqlite3_step returned %d (%d) errorMessage '%s', so retrying query after %f seconds", buf, 0x22u);
    }

    [MEMORY[0x1E696AF00] sleepForTimeInterval:v14];
LABEL_22:
    v9 = v14;
    v10 = v13;
    if (!v8)
    {
      goto LABEL_31;
    }
  }

  if (v11 == 100)
  {
    if (handlerCopy)
    {
      v8 = [(CXDatabaseStatement *)self processResultsWithExpectedColumnCount:count resultRowHandler:handlerCopy error:error];
    }

    goto LABEL_22;
  }

  if (v11 == 101)
  {
    goto LABEL_31;
  }

  if (error)
  {
    v19 = sqlite3_sql([(CXDatabaseStatement *)self statement]);
    v20 = sqlite3_errmsg([(CXDatabaseStatement *)self database]);
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"sqlite3_step for query '%s' returned %d (%d) errorMessage '%s'", v19, v12, sqlite3_extended_errcode(-[CXDatabaseStatement database](self, "database")), v20];
    v22 = MEMORY[0x1E696ABC0];
    v23 = v12;
    v31 = v29;
    v32 = v21;
    v24 = MEMORY[0x1E695DF20];
    v25 = &v32;
    v26 = &v31;
LABEL_29:
    v27 = [v24 dictionaryWithObjects:v25 forKeys:v26 count:1];
    *error = [v22 errorWithDomain:@"com.apple.callkit.database.sqlite" code:v23 userInfo:v27];
  }

LABEL_30:
  v8 = 0;
LABEL_31:
  sqlite3_reset([(CXDatabaseStatement *)self statement]);
  sqlite3_clear_bindings([(CXDatabaseStatement *)self statement]);

  return v8;
}

- (BOOL)bind:(id)bind error:(id *)error
{
  v39 = *MEMORY[0x1E69E9840];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  bindCopy = bind;
  v7 = [bindCopy countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (!v7)
  {
    goto LABEL_22;
  }

  v8 = v7;
  v9 = 1;
  v10 = *v31;
  v11 = 0x1E696A000uLL;
  errorCopy = error;
  while (2)
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v31 != v10)
      {
        objc_enumerationMutation(bindCopy);
      }

      v13 = *(*(&v30 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = v13;
        uTF8String = [v14 UTF8String];
        if (!uTF8String)
        {
          if (error)
          {
            v21 = [*(v11 + 3776) stringWithFormat:@"NSString %@ returned a nil UTF-8 string", v14];
            v22 = MEMORY[0x1E696ABC0];
            v23 = objc_opt_class();
            v24 = NSStringFromClass(v23);
            v36 = *MEMORY[0x1E696A578];
            v37 = v21;
            v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
            *error = [v22 errorWithDomain:v24 code:3 userInfo:v25];

            goto LABEL_25;
          }

          goto LABEL_26;
        }

        if (![(CXDatabaseStatement *)self bindText:uTF8String ofLength:strlen(uTF8String) atIndex:v9 error:error])
        {
          goto LABEL_26;
        }
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (!-[CXDatabaseStatement bindInt64:atIndex:error:](self, "bindInt64:atIndex:error:", [v13 longLongValue], v9, error))
          {
            goto LABEL_27;
          }
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            sqlite3_bind_null([(CXDatabaseStatement *)self statement], v9);
            goto LABEL_20;
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (!error)
            {
              goto LABEL_28;
            }

            v14 = [*(v11 + 3776) stringWithFormat:@"Object %@ not a supported binding class", v13];
            v27 = MEMORY[0x1E696ABC0];
            v28 = objc_opt_class();
            v21 = NSStringFromClass(v28);
            v34 = *MEMORY[0x1E696A578];
            v35 = v14;
            v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
            *error = [v27 errorWithDomain:v21 code:1 userInfo:v24];
LABEL_25:

LABEL_26:
LABEL_27:
            LOBYTE(error) = 0;
            goto LABEL_28;
          }

          v16 = v11;
          v17 = bindCopy;
          v18 = v13;
          bytes = [v18 bytes];
          if (bytes)
          {
            v20 = [v18 length];
          }

          else
          {
            v20 = 0;
          }

          sqlite3_bind_blob([(CXDatabaseStatement *)self statement], v9, bytes, v20, 0);

          bindCopy = v17;
          v11 = v16;
          error = errorCopy;
        }
      }

LABEL_20:
      v9 = (v9 + 1);
    }

    v8 = [bindCopy countByEnumeratingWithState:&v30 objects:v38 count:16];
    if (v8)
    {
      continue;
    }

    break;
  }

LABEL_22:
  LOBYTE(error) = 1;
LABEL_28:

  return error;
}

- (BOOL)bindInt64:(int64_t)int64 atIndex:(int)index error:(id *)error
{
  v14[1] = *MEMORY[0x1E69E9840];
  v7 = sqlite3_bind_int64([(CXDatabaseStatement *)self statement], index, int64);
  v8 = v7;
  if (error && v7)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SQLite bind attempt returned %d errorMessage '%s'", v7, sqlite3_errmsg(-[CXDatabaseStatement database](self, "database"))];
    v10 = MEMORY[0x1E696ABC0];
    v13 = *MEMORY[0x1E696A578];
    v14[0] = v9;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    *error = [v10 errorWithDomain:@"com.apple.callkit.database.sqlite" code:v8 userInfo:v11];
  }

  return v8 == 0;
}

- (BOOL)bindText:(const char *)text ofLength:(int)length atIndex:(int)index error:(id *)error
{
  v18[1] = *MEMORY[0x1E69E9840];
  if (text)
  {
    v10 = strnlen(text, length);
  }

  else
  {
    v10 = 0;
  }

  v11 = sqlite3_bind_text([(CXDatabaseStatement *)self statement], index, text, v10, 0);
  v12 = v11;
  if (error && v11)
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SQLite bind attempt returned %d errorMessage '%s'", v11, sqlite3_errmsg(-[CXDatabaseStatement database](self, "database"))];
    v14 = MEMORY[0x1E696ABC0];
    v17 = *MEMORY[0x1E696A578];
    v18[0] = v13;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    *error = [v14 errorWithDomain:@"com.apple.callkit.database.sqlite" code:v12 userInfo:v15];
  }

  return v12 == 0;
}

- (BOOL)processResultsWithExpectedColumnCount:(int64_t)count resultRowHandler:(id)handler error:(id *)error
{
  v23[1] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v9 = sqlite3_column_count([(CXDatabaseStatement *)self statement]);
  if (v9 == count)
  {
    v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:count];
    if (v9 >= 1)
    {
      for (i = 0; v9 != i; ++i)
      {
        v12 = sqlite3_column_type([(CXDatabaseStatement *)self statement], i);
        if (v12 <= 2)
        {
          if (v12 == 1)
          {
            null = [MEMORY[0x1E696AD98] numberWithLongLong:{sqlite3_column_int64(-[CXDatabaseStatement statement](self, "statement"), i)}];
            goto LABEL_15;
          }

          if (v12 == 2)
          {
            null = [MEMORY[0x1E696AD98] numberWithDouble:{sqlite3_column_double(-[CXDatabaseStatement statement](self, "statement"), i)}];
            goto LABEL_15;
          }
        }

        else
        {
          switch(v12)
          {
            case 5:
              null = [MEMORY[0x1E695DFB0] null];
              goto LABEL_15;
            case 4:
              v14 = sqlite3_column_blob([(CXDatabaseStatement *)self statement], i);
              null = [MEMORY[0x1E695DEF0] dataWithBytes:v14 length:{sqlite3_column_bytes(-[CXDatabaseStatement statement](self, "statement"), i)}];
              goto LABEL_15;
            case 3:
              null = [MEMORY[0x1E696AEC0] stringWithUTF8String:{sqlite3_column_text(-[CXDatabaseStatement statement](self, "statement"), i)}];
LABEL_15:
              v15 = null;
              [v10 addObject:null];

              break;
          }
        }
      }
    }

    handlerCopy[2](handlerCopy, v10);
  }

  else if (error)
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Columns returned by query (%d) did not match expected number of columns (%ld)", v9, count];
    v17 = MEMORY[0x1E696ABC0];
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    v22 = *MEMORY[0x1E696A578];
    v23[0] = v16;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    *error = [v17 errorWithDomain:v19 code:2 userInfo:v20];
  }

  return v9 == count;
}

@end