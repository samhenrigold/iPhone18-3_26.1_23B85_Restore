@interface PLSQLStatement
- (PLSQLStatement)initWithSQLQuery:(id)query forDatabase:(sqlite3 *)database withDBSem:(id)sem result:(int *)result;
- (id)perform;
- (int)bindValue:(id)value withFormater:(signed __int16)formater atPosition:(int)position;
- (void)dealloc;
- (void)finalize;
- (void)reset;
@end

@implementation PLSQLStatement

- (id)perform
{
  v67 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  dbSem = [(PLSQLStatement *)self dbSem];
  dispatch_semaphore_wait(dbSem, 0xFFFFFFFFFFFFFFFFLL);

  statement = [(PLSQLStatement *)self statement];
  if (!statement)
  {
    if (+[PLDefaults debugEnabled])
    {
      v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"*** invalid statement ***"];
      v43 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/DataTypes/PLSQLStatement.m"];
      lastPathComponent = [v43 lastPathComponent];
      v45 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSQLStatement perform]"];
      [PLCoreStorage logMessage:v42 fromFile:lastPathComponent fromFunction:v45 fromLineNumber:95];

      v47 = PLLogCommon(v46);
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }

    dbSem2 = [(PLSQLStatement *)self dbSem];
    dispatch_semaphore_signal(dbSem2);

    v49 = MEMORY[0x1E695E0F0];
    goto LABEL_59;
  }

  v7 = statement;
  selfCopy = self;
  v8 = sqlite3_column_count(statement);
  v9 = 0;
  v63 = v8;
  v64 = v8;
  v10 = 0x1E8518000uLL;
  v11 = 0x1E696A000uLL;
  v62 = v3;
  while (1)
  {
    while (1)
    {
      v12 = sqlite3_step(v7);
      if (v12 != 5)
      {
        break;
      }

      if (v9 >= 5)
      {
        ++v9;
        goto LABEL_53;
      }

      sqlite3_sleep(10);
      ++v9;
    }

    v13 = v12;
    if (v12 != 100)
    {
      break;
    }

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v22 = v63;
    if (v64 >= 1)
    {
      for (i = 0; v22 != i; ++i)
      {
        if ([v4 count] == v64)
        {
          v24 = [v4 objectAtIndex:i];
        }

        else
        {
          v24 = [*(v11 + 3776) stringWithUTF8String:{sqlite3_column_name(v7, i)}];
          [v4 addObject:v24];
        }

        v25 = sqlite3_column_type(v7, i);
        v26 = v25;
        if (v25 <= 2)
        {
          if (v25 == 1)
          {
            null2 = [MEMORY[0x1E696AD98] numberWithLongLong:{sqlite3_column_int64(v7, i)}];
          }

          else
          {
            if (v25 != 2)
            {
              goto LABEL_29;
            }

            null2 = [MEMORY[0x1E696AD98] numberWithDouble:{sqlite3_column_double(v7, i)}];
          }
        }

        else
        {
          if (v25 == 5)
          {
            goto LABEL_33;
          }

          if (v25 != 4)
          {
            if (v25 == 3)
            {
              v27 = sqlite3_column_text(v7, i);
              if (v27)
              {
                v28 = [*(v11 + 3776) stringWithUTF8String:v27];
                v29 = v28;
                if (v28)
                {
                  null = v28;
                }

                else
                {
                  null = [MEMORY[0x1E695DFB0] null];
                }

                v41 = null;

                goto LABEL_35;
              }
            }

            else
            {
LABEL_29:
              if ([*(v10 + 2224) debugEnabled])
              {
                v33 = [*(v11 + 3776) stringWithFormat:@"[SQLITE] UNKNOWN DATATYPE colType=%d", v26];
                v34 = [*(v11 + 3776) stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/DataTypes/PLSQLStatement.m"];
                lastPathComponent2 = [v34 lastPathComponent];
                v36 = v11;
                v37 = lastPathComponent2;
                v38 = [*(v36 + 3776) stringWithUTF8String:"-[PLSQLStatement perform]"];
                [PLCoreStorage logMessage:v33 fromFile:v37 fromFunction:v38 fromLineNumber:140];

                v40 = PLLogCommon(v39);
                if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v66 = v33;
                  _os_log_debug_impl(&dword_1D8611000, v40, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                }

                v11 = 0x1E696A000;
                v10 = 0x1E8518000;
                v22 = v63;
              }
            }

LABEL_33:
            null2 = [MEMORY[0x1E695DFB0] null];
            goto LABEL_34;
          }

          v32 = sqlite3_column_blob(v7, i);
          null2 = [MEMORY[0x1E695DEF0] dataWithBytes:v32 length:{sqlite3_column_bytes(v7, i)}];
        }

LABEL_34:
        v41 = null2;
LABEL_35:
        [dictionary setObject:v41 forKey:v24];
      }
    }

    v3 = v62;
    [v62 addObject:dictionary];

    v9 = 0;
    LODWORD(v13) = 100;
LABEL_40:
    if (v13 != 100)
    {
      goto LABEL_53;
    }
  }

  if (v12 == 101)
  {
    goto LABEL_53;
  }

  debugEnabled = [*(v10 + 2224) debugEnabled];
  if (debugEnabled)
  {
    v15 = [*(v11 + 3776) stringWithFormat:@"ERROR: sqlite3_step error=%d", v13];
    v16 = [*(v11 + 3776) stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/DataTypes/PLSQLStatement.m"];
    lastPathComponent3 = [v16 lastPathComponent];
    v18 = [*(v11 + 3776) stringWithUTF8String:"-[PLSQLStatement perform]"];
    [PLCoreStorage logMessage:v15 fromFile:lastPathComponent3 fromFunction:v18 fromLineNumber:155];

    v20 = PLLogCommon(v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v66 = v15;
      _os_log_debug_impl(&dword_1D8611000, v20, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    v11 = 0x1E696A000;
    v10 = 0x1E8518000;
  }

  if (v13 != 11)
  {
    goto LABEL_40;
  }

  v50 = PLLogSQLiteConnection(debugEnabled);
  if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
  {
    [(PLSQLStatement *)v50 perform];
  }

  v52 = +[PLSQLiteConnection sharedSQLiteConnection];
  [PLUtilities exitWithReason:1001 connection:v52];

LABEL_53:
  dbSem3 = [(PLSQLStatement *)selfCopy dbSem];
  dispatch_semaphore_signal(dbSem3);

  if (v9 > 5 && [*(v10 + 2224) debugEnabled])
  {
    v54 = [*(v11 + 3776) stringWithFormat:@"WARNING: SQLITE_BUSY for too long"];
    v55 = [*(v11 + 3776) stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/DataTypes/PLSQLStatement.m"];
    lastPathComponent4 = [v55 lastPathComponent];
    v57 = [*(v11 + 3776) stringWithUTF8String:"-[PLSQLStatement perform]"];
    [PLCoreStorage logMessage:v54 fromFile:lastPathComponent4 fromFunction:v57 fromLineNumber:166];

    v59 = PLLogCommon(v58);
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
    {
      [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
    }
  }

  v49 = v3;
LABEL_59:

  return v49;
}

- (void)reset
{
  dbSem = [(PLSQLStatement *)self dbSem];
  dispatch_semaphore_wait(dbSem, 0xFFFFFFFFFFFFFFFFLL);

  sqlite3_clear_bindings([(PLSQLStatement *)self statement]);
  sqlite3_reset([(PLSQLStatement *)self statement]);
  dbSem2 = [(PLSQLStatement *)self dbSem];
  dispatch_semaphore_signal(dbSem2);
}

- (void)dealloc
{
  [(PLSQLStatement *)self finalize];
  v3.receiver = self;
  v3.super_class = PLSQLStatement;
  [(PLSQLStatement *)&v3 dealloc];
}

- (void)finalize
{
  dbSem = [(PLSQLStatement *)self dbSem];
  dispatch_semaphore_wait(dbSem, 0xFFFFFFFFFFFFFFFFLL);

  sqlite3_clear_bindings([(PLSQLStatement *)self statement]);
  sqlite3_reset([(PLSQLStatement *)self statement]);
  sqlite3_finalize([(PLSQLStatement *)self statement]);
  dbSem2 = [(PLSQLStatement *)self dbSem];
  dispatch_semaphore_signal(dbSem2);
}

- (PLSQLStatement)initWithSQLQuery:(id)query forDatabase:(sqlite3 *)database withDBSem:(id)sem result:(int *)result
{
  queryCopy = query;
  semCopy = sem;
  v27.receiver = self;
  v27.super_class = PLSQLStatement;
  v12 = [(PLSQLStatement *)&v27 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_dbSem, sem);
    v13->_isInsert = [queryCopy hasPrefix:@"INSERT INTO "];
    v13->_isDelete = [queryCopy hasPrefix:@"DELETE FROM "];
    dbSem = [(PLSQLStatement *)v13 dbSem];
    dispatch_semaphore_wait(dbSem, 0xFFFFFFFFFFFFFFFFLL);

    if (database)
    {
      v15 = 5;
      do
      {
        v16 = sqlite3_prepare_v2(database, [queryCopy UTF8String], -1, &v13->_statement, 0);
        *result = v16;
        if (!v16)
        {
          dbSem2 = [(PLSQLStatement *)v13 dbSem];
          dispatch_semaphore_signal(dbSem2);

          goto LABEL_12;
        }

        --v15;
      }

      while (v15);
      if (+[PLDefaults debugEnabled])
      {
        queryCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"unable to prepare statement (error=%d, msg=%s) %@", *result, sqlite3_errmsg(database), queryCopy];
        v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/DataTypes/PLSQLStatement.m"];
        lastPathComponent = [v18 lastPathComponent];
        v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSQLStatement initWithSQLQuery:forDatabase:withDBSem:result:]"];
        [PLCoreStorage logMessage:queryCopy fromFile:lastPathComponent fromFunction:v20 fromLineNumber:38];

        v22 = PLLogCommon(v21);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
        }
      }
    }

    dbSem3 = [(PLSQLStatement *)v13 dbSem];
    dispatch_semaphore_signal(dbSem3);

    v24 = 0;
  }

  else
  {
LABEL_12:
    v24 = v13;
  }

  return v24;
}

- (int)bindValue:(id)value withFormater:(signed __int16)formater atPosition:(int)position
{
  v5 = *&position;
  formaterCopy = formater;
  valueCopy = value;
  if (formaterCopy == -32768 || [PLValueUtilties isFormater:formaterCopy validForObject:valueCopy])
  {
    dbSem = [(PLSQLStatement *)self dbSem];
    dispatch_semaphore_wait(dbSem, 0xFFFFFFFFFFFFFFFFLL);

    if (!valueCopy || ([MEMORY[0x1E695DFB0] null], v10 = objc_claimAutoreleasedReturnValue(), v10, v10 == valueCopy))
    {
      v11 = sqlite3_bind_null([(PLSQLStatement *)self statement], v5);
      goto LABEL_13;
    }

    if (formaterCopy > 2)
    {
      if (formaterCopy > 5)
      {
        if (formaterCopy != 6)
        {
          if (formaterCopy != 7)
          {
            if (formaterCopy == 8 && [valueCopy length])
            {
              v11 = sqlite3_bind_blob(-[PLSQLStatement statement](self, "statement"), v5, [valueCopy bytes], objc_msgSend(valueCopy, "length"), 0xFFFFFFFFFFFFFFFFLL);
LABEL_13:
              v12 = v11;
LABEL_14:
              dbSem2 = [(PLSQLStatement *)self dbSem];
              dispatch_semaphore_signal(dbSem2);
              goto LABEL_15;
            }

LABEL_31:
            formaterCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid formatter=%i", formaterCopy];
            v30 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/DataTypes/PLSQLStatement.m"];
            lastPathComponent = [v30 lastPathComponent];
            v32 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSQLStatement bindValue:withFormater:atPosition:]"];
            [PLCoreStorage logMessage:formaterCopy fromFile:lastPathComponent fromFunction:v32 fromLineNumber:77];

            v34 = PLLogCommon(v33);
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
            {
              [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
            }

            v12 = 0;
            goto LABEL_14;
          }

          statement = [(PLSQLStatement *)self statement];
          unsignedLongLongValue = [valueCopy unsignedLongLongValue];
LABEL_42:
          v11 = sqlite3_bind_int64(statement, v5, unsignedLongLongValue);
          goto LABEL_13;
        }

        statement2 = [(PLSQLStatement *)self statement];
        [valueCopy doubleValue];
LABEL_38:
        v11 = sqlite3_bind_double(statement2, v5, v26);
        goto LABEL_13;
      }

      if (formaterCopy != 3)
      {
        if (formaterCopy != 5)
        {
          goto LABEL_31;
        }

        statement = [(PLSQLStatement *)self statement];
        unsignedLongLongValue = [valueCopy longLongValue];
        goto LABEL_42;
      }

      statement3 = [(PLSQLStatement *)self statement];
      bOOLValue = [valueCopy BOOLValue];
LABEL_40:
      v11 = sqlite3_bind_int(statement3, v5, bOOLValue);
      goto LABEL_13;
    }

    if (formaterCopy > 0)
    {
      if (formaterCopy != 1)
      {
        statement2 = [(PLSQLStatement *)self statement];
        [valueCopy timeIntervalSince1970];
        goto LABEL_38;
      }

      uTF8String = [valueCopy UTF8String];
    }

    else
    {
      if (formaterCopy != -32768)
      {
        if (formaterCopy)
        {
          goto LABEL_31;
        }

        statement3 = [(PLSQLStatement *)self statement];
        bOOLValue = [valueCopy count] != 0;
        goto LABEL_40;
      }

      v35 = [valueCopy description];
      uTF8String = [v35 UTF8String];
    }

    statement4 = [(PLSQLStatement *)self statement];
    v38 = strlen(uTF8String);
    v11 = sqlite3_bind_text(statement4, v5, uTF8String, v38, 0xFFFFFFFFFFFFFFFFLL);
    goto LABEL_13;
  }

  if (!+[PLDefaults debugEnabled])
  {
    v12 = 20;
    goto LABEL_16;
  }

  v15 = MEMORY[0x1E696AEC0];
  v16 = objc_opt_class();
  v17 = [valueCopy description];
  dbSem2 = [v15 stringWithFormat:@"*** formater does not match object type! ***\nposition=%d formater=%d class=%@ value=%@\n", v5, formaterCopy, v16, v17];

  v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/DataTypes/PLSQLStatement.m"];
  lastPathComponent2 = [v18 lastPathComponent];
  v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSQLStatement bindValue:withFormater:atPosition:]"];
  [PLCoreStorage logMessage:dbSem2 fromFile:lastPathComponent2 fromFunction:v20 fromLineNumber:51];

  v22 = PLLogCommon(v21);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
  }

  v12 = 20;
LABEL_15:

LABEL_16:
  return v12;
}

@end