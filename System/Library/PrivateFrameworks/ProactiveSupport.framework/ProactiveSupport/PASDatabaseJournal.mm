@interface PASDatabaseJournal
@end

@implementation PASDatabaseJournal

uint64_t __37___PASDatabaseJournal_stopJournaling__block_invoke(uint64_t result)
{
  *(*(*(result + 40) + 8) + 24) = *(*(result + 32) + 40);
  *(*(result + 32) + 40) = 0;
  return result;
}

uint64_t __38___PASDatabaseJournal_startJournaling__block_invoke(uint64_t result)
{
  *(*(*(result + 40) + 8) + 24) = *(*(result + 32) + 40) ^ 1;
  *(*(result + 32) + 40) = 1;
  return result;
}

void __48___PASDatabaseJournal_deleteAllJournaledQueries__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    v8 = *(*(a1 + 32) + 16);
    *buf = 138412290;
    v12 = v8;
    _os_log_debug_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Removing all journal files at %@", buf, 0xCu);
  }

  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v3 = *(*(a1 + 32) + 16);
  v10 = 0;
  [v2 removeItemAtPath:v3 error:&v10];
  v4 = v10;

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = v4;
      _os_log_error_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "_PASDatabaseJournal unable to remove journal directory: %@", buf, 0xCu);
    }

    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  v5 = [MEMORY[0x1E696AC08] defaultManager];
  v6 = *(*(a1 + 32) + 16);
  v9 = v4;
  [v5 createDirectoryAtPath:v6 withIntermediateDirectories:1 attributes:0 error:&v9];
  v7 = v9;

  if (v7)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = v7;
      _os_log_error_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "_PASDatabaseJournal unable to re-create directory for storing journals: %@", buf, 0xCu);
    }

    *(*(*(a1 + 40) + 8) + 24) = 0;
  }
}

void __48___PASDatabaseJournal_executeQueriesOnDatabase___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _closeCurrentFile];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    v6 = [*(a1 + 40) filename];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v6;
    _os_log_debug_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Executing queries from journals to %@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v28 = 0x2020000000;
  v29 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  sel_getName(*(a1 + 56));
  v2 = os_transaction_create();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48___PASDatabaseJournal_executeQueriesOnDatabase___block_invoke_67;
  v8[3] = &unk_1E77F1D98;
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v10 = &v19;
  v8[4] = v4;
  v5 = *(a1 + 48);
  v11 = &v15;
  v12 = v5;
  v13 = &v23;
  v9 = v3;
  p_buf = &buf;
  [v9 writeTransaction:v8];

  while (1)
  {
    v7 = *(v24 + 6) + 1;
    *(v24 + 6) = v7;
    if (v7 >= *(v20 + 6))
    {
      break;
    }

    free(*(v16[3] + 8 * v7));
  }

  free(v16[3]);

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&buf, 8);
}

void __48___PASDatabaseJournal_executeQueriesOnDatabase___block_invoke_67(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 16) UTF8String];
  *(*(*(a1 + 48) + 8) + 24) = scandir(v2, (*(*(a1 + 56) + 8) + 24), 0, MEMORY[0x1E69E9860]);
  if ((*(*(*(a1 + 48) + 8) + 24) & 0x80000000) != 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = *__error();
      v14 = __error();
      v15 = strerror(*v14);
      *buf = 67109378;
      v18 = v13;
      v19 = 2080;
      v20 = v15;
      _os_log_error_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "_PASDatabaseJournal unable to open journal directory: errno(%i): %s", buf, 0x12u);
    }

    *(*(*(a1 + 64) + 8) + 24) = 0;
    return;
  }

  *(*(*(a1 + 72) + 8) + 24) = 0;
  v4 = *(*(*(a1 + 72) + 8) + 24);
  if (v4 >= *(*(*(a1 + 48) + 8) + 24))
  {
    return;
  }

  v5 = MEMORY[0x1E69E9C10];
  *&v3 = 67109120;
  v16 = v3;
  while (1)
  {
    v6 = *(*(*(*(a1 + 56) + 8) + 24) + 8 * v4);
    if (v6[20] != 8)
    {
      free(v6);
      goto LABEL_14;
    }

    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v6 + 21];
    free(v6);
    v8 = objc_autoreleasePoolPush();
    buf[0] = 0;
    if (([*(a1 + 32) _executeFile:v7 onDb:*(a1 + 40) becameLocked:buf] & 1) == 0)
    {
      *(*(*(a1 + 64) + 8) + 24) = 0;
    }

    if (buf[0] == 1)
    {
      *(*(*(a1 + 64) + 8) + 24) = 0;
      objc_autoreleasePoolPop(v8);
      goto LABEL_20;
    }

    objc_autoreleasePoolPop(v8);
    v9 = *(*(a1 + 80) + 8);
    v10 = *(v9 + 24);
    *(v9 + 24) = v10 + 1;
    if (v10)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        v11 = *(*(*(a1 + 80) + 8) + 24);
        *buf = v16;
        v18 = v11;
        _os_log_debug_impl(&dword_1A7F47000, v5, OS_LOG_TYPE_DEBUG, "journal execution checking lock state after %u files", buf, 8u);
      }

      if (!+[_PASDeviceState isUnlocked])
      {
        break;
      }
    }

LABEL_14:
    v4 = ++*(*(*(a1 + 72) + 8) + 24);
    if (v4 >= *(*(*(a1 + 48) + 8) + 24))
    {
      return;
    }
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v12 = *(*(*(a1 + 80) + 8) + 24);
    *buf = v16;
    v18 = v12;
    _os_log_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "journal execution exiting early after %u files because device is locked", buf, 8u);
  }

LABEL_20:
}

uint64_t __79___PASDatabaseJournal__executeNextRecordFromFile_onDb_becameLocked_deleteFile___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v6 = [*(a1 + 32) objectForKeyedSubscript:@"__query"];
    v7 = 138412546;
    v8 = v6;
    v9 = 2112;
    v10 = v3;
    _os_log_error_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "_PASDatabaseJournal error when replaying query: %@: %@", &v7, 0x16u);
  }

  if (_sqliteErrorIndicatesDeviceBecameLocked(v3))
  {
    v4 = *(a1 + 48);
    **(a1 + 40) = 0;
    if (v4)
    {
      *v4 = 1;
    }
  }

  return 0;
}

void __44___PASDatabaseJournal_runQuery_values_onDb___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) substringToIndex:6];
  v3 = [v2 lowercaseString];
  v4 = [v3 isEqualToString:@"select"];

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf) = 0;
      _os_log_debug_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "skipping select query", &buf, 2u);
    }
  }

  else
  {
    v5 = [*(a1 + 40) mutableCopy];
    [v5 setObject:*(a1 + 32) forKeyedSubscript:@"__query"];
    v6 = objc_autoreleasePoolPush();
    v17 = 0;
    v7 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v5 requiringSecureCoding:1 error:&v17];
    v8 = v17;
    if (v7)
    {
      v9 = [*(a1 + 48) _getCurrentFile];
      [v9 write:v7];

      objc_autoreleasePoolPop(v6);
      if (*(*(a1 + 48) + 40))
      {
        [*(a1 + 48) _addCurrentFileToLog];
      }

      else
      {
        *&buf = 0;
        *(&buf + 1) = &buf;
        v19 = 0x2020000000;
        v20 = 1;
        v10 = *(a1 + 56);
        v11 = *(a1 + 32);
        v12 = [_PASDatabaseJournal _binderForDictionary:*(a1 + 40)];
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __44___PASDatabaseJournal_runQuery_values_onDb___block_invoke_36;
        v14[3] = &unk_1E77F2638;
        v15 = *(a1 + 32);
        p_buf = &buf;
        [v10 prepAndRunQuery:v11 onPrep:v12 onRow:0 onError:v14];

        v13 = *(a1 + 48);
        if (*(*(&buf + 1) + 24) == 1)
        {
          [v13 _clearCurrentFile];
        }

        else
        {
          [v13 _addCurrentFileToLog];
        }

        _Block_object_dispose(&buf, 8);
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v8;
        _os_log_error_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error archiving: %@", &buf, 0xCu);
      }

      objc_autoreleasePoolPop(v6);
    }
  }
}

uint64_t __44___PASDatabaseJournal_runQuery_values_onDb___block_invoke_39(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = 138412546;
    v7 = v5;
    v8 = 2112;
    v9 = a2;
    _os_log_error_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "_PASDatabaseJournal error when immediately running query: %@: %@", &v6, 0x16u);
  }

  return 0;
}

uint64_t __44___PASDatabaseJournal_runQuery_values_onDb___block_invoke_36(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = 138412546;
    v7 = v5;
    v8 = 2112;
    v9 = v3;
    _os_log_error_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "_PASDatabaseJournal error when immediately running query: %@: %@", &v6, 0x16u);
  }

  if (_sqliteErrorIndicatesDeviceBecameLocked(v3))
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  return 0;
}

void __44___PASDatabaseJournal__binderForDictionary___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __44___PASDatabaseJournal__binderForDictionary___block_invoke_2;
  v6[3] = &unk_1E77F1D20;
  v7 = v3;
  v5 = v3;
  [v4 enumerateKeysAndObjectsUsingBlock:v6];
}

void __44___PASDatabaseJournal__binderForDictionary___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (([v5 isEqualToString:@"__query"] & 1) == 0)
  {
    if ([v5 isEqualToString:@"qmarksSeparatedByCommas"])
    {
      v19 = v6;
      v20 = v5;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (!v8)
      {
        goto LABEL_15;
      }

      v9 = v8;
      v10 = *v22;
      v11 = 1;
      while (1)
      {
        v12 = 0;
        do
        {
          if (*v22 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v21 + 1) + 8 * v12);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v14 = (v11 + 1);
            sqlite3_bind_int64([*(a1 + 32) stmt], v11, objc_msgSend(v13, "longLongValue"));
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_13;
            }

            v14 = (v11 + 1);
            _PAS_sqlite3_bind_nsstring([*(a1 + 32) stmt], v11, v13);
          }

          v11 = v14;
LABEL_13:
          ++v12;
        }

        while (v9 != v12);
        v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (!v9)
        {
LABEL_15:

          v6 = v19;
          v5 = v20;
          goto LABEL_21;
        }
      }
    }

    v15 = [MEMORY[0x1E695DFB0] null];

    if (v15 == v6)
    {
      [*(a1 + 32) bindNamedParamToNull:{objc_msgSend(v5, "UTF8String")}];
    }

    else
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v17 = *(a1 + 32);
      v18 = [v5 UTF8String];
      if (isKindOfClass)
      {
        [v17 bindNamedParam:v18 toInteger:{objc_msgSend(v6, "longValue")}];
      }

      else
      {
        [v17 bindNamedParam:v18 toNSString:v6];
      }
    }
  }

LABEL_21:
}

@end