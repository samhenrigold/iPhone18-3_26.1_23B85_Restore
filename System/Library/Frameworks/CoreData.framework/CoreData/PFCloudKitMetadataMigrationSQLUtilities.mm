@interface PFCloudKitMetadataMigrationSQLUtilities
+ (BOOL)migrationDebugEnabled;
+ (id)columnNamesFromCreateStatement:(uint64_t)statement;
+ (id)columnStatementsFromCreateStatement:(uint64_t)statement;
+ (id)tableNameFromCreateStatement:(uint64_t)statement;
+ (id)tableNameFromStatement:(id)statement withPrefix:(id)prefix;
+ (void)fetchSchemaSQLForEntity:(void *)entity usingConnection:;
@end

@implementation PFCloudKitMetadataMigrationSQLUtilities

+ (BOOL)migrationDebugEnabled
{
  if (qword_1ED4BEAC0 != -1)
  {
    dispatch_once(&qword_1ED4BEAC0, &__block_literal_global_18);
  }

  return _MergedGlobals_80;
}

void *__64__PFCloudKitMetadataMigrationSQLUtilities_migrationDebugEnabled__block_invoke()
{
  result = [+[_PFRoutines valueForProcessArgument:](_PFRoutines @"com.apple.coredata.cloudkit.MigrationDebug")];
  _MergedGlobals_80 = result;
  return result;
}

+ (void)fetchSchemaSQLForEntity:(void *)entity usingConnection:
{
  v23 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v5 = -[NSSQLiteConnection fetchTableCreationSQLContaining:](entity, [a2 tableName]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v17 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v16 + 1) + 8 * v9);
      if ([objc_msgSend(v10 objectAtIndex:{0), "isEqualToString:", objc_msgSend(a2, "tableName")}])
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v16 objects:v22 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_11;
      }
    }

    result = [v10 objectAtIndex:1];
    if (result)
    {
      return result;
    }
  }

LABEL_11:
  LogStream = _PFLogGetLogStream(17);
  if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
  {
    tableName = [a2 tableName];
    *buf = 138412290;
    v21 = tableName;
    _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Couldn't find sql for table '%@', did you check if it exists first?\n", buf, 0xCu);
  }

  v13 = _PFLogGetLogStream(17);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
  {
    tableName2 = [a2 tableName];
    *buf = 138412290;
    v21 = tableName2;
    _os_log_fault_impl(&dword_18565F000, v13, OS_LOG_TYPE_FAULT, "CoreData: Couldn't find sql for table '%@', did you check if it exists first?", buf, 0xCu);
  }

  return 0;
}

+ (id)tableNameFromStatement:(id)statement withPrefix:(id)prefix
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = objc_autoreleasePoolPush();
  if ([statement hasPrefix:prefix])
  {
    v7 = [statement substringFromIndex:{objc_msgSend(prefix, "length") + (objc_msgSend(prefix, "hasSuffix:", @" "}];
    v8 = [v7 rangeOfString:@" "];
    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        v17 = 138412290;
        statementCopy2 = v7;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Failed to find the end of the table name in this statement: %@\n", &v17, 0xCu);
      }

      v10 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        v17 = 138412290;
        statementCopy2 = v7;
        _os_log_fault_impl(&dword_18565F000, v10, OS_LOG_TYPE_FAULT, "CoreData: Failed to find the end of the table name in this statement: %@", &v17, 0xCu);
      }
    }

    v11 = [v7 substringToIndex:v8];
    v12 = [v11 stringByTrimmingCharactersInSet:{objc_msgSend(MEMORY[0x1E696AB08], "whitespaceAndNewlineCharacterSet")}];
  }

  else
  {
    v13 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v17 = 138412290;
      statementCopy2 = statement;
      _os_log_error_impl(&dword_18565F000, v13, OS_LOG_TYPE_ERROR, "CoreData: fault: This is not a create table statement? %@\n", &v17, 0xCu);
    }

    v14 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      v17 = 138412290;
      statementCopy2 = statement;
      _os_log_fault_impl(&dword_18565F000, v14, OS_LOG_TYPE_FAULT, "CoreData: This is not a create table statement? %@", &v17, 0xCu);
    }

    v12 = 0;
  }

  v15 = v12;
  objc_autoreleasePoolPop(v6);
  return v12;
}

+ (id)tableNameFromCreateStatement:(uint64_t)statement
{
  objc_opt_self();

  return [PFCloudKitMetadataMigrationSQLUtilities tableNameFromStatement:a2 withPrefix:@"CREATE TABLE"];
}

+ (id)columnStatementsFromCreateStatement:(uint64_t)statement
{
  v27 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v4 = objc_autoreleasePoolPush();
  v5 = objc_msgSend(a2, "rangeOfString:", @" (");
  v7 = v6;
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v26 = a2;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Failed to find the end of the table name in this statement: %@\n", buf, 0xCu);
    }

    v9 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v26 = a2;
      _os_log_fault_impl(&dword_18565F000, v9, OS_LOG_TYPE_FAULT, "CoreData: Failed to find the end of the table name in this statement: %@", buf, 0xCu);
    }
  }

  v10 = [a2 substringFromIndex:v5 + v7];
  v11 = [v10 rangeOfString:@""]);
  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v26 = a2;
      _os_log_error_impl(&dword_18565F000, v12, OS_LOG_TYPE_ERROR, "CoreData: fault: Failed to find the ending parenthesis in this statement: %@\n", buf, 0xCu);
    }

    v13 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v26 = a2;
      _os_log_fault_impl(&dword_18565F000, v13, OS_LOG_TYPE_FAULT, "CoreData: Failed to find the ending parenthesis in this statement: %@", buf, 0xCu);
    }
  }

  v14 = [objc_msgSend(v10 substringToIndex:{v11), "componentsSeparatedByString:", @", "}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v15 = [v14 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v21;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v21 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [v3 addObject:{objc_msgSend(*(*(&v20 + 1) + 8 * i), "stringByTrimmingCharactersInSet:", objc_msgSend(MEMORY[0x1E696AB08], "whitespaceAndNewlineCharacterSet"))}];
      }

      v16 = [v14 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v16);
  }

  objc_autoreleasePoolPop(v4);
  return v3;
}

+ (id)columnNamesFromCreateStatement:(uint64_t)statement
{
  v33 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  context = objc_autoreleasePoolPush();
  v4 = objc_msgSend(a2, "rangeOfString:", @" (");
  v6 = v5;
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v29 = a2;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Failed to find the end of the table name in this statement: %@\n", buf, 0xCu);
    }

    v8 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v29 = a2;
      _os_log_fault_impl(&dword_18565F000, v8, OS_LOG_TYPE_FAULT, "CoreData: Failed to find the end of the table name in this statement: %@", buf, 0xCu);
    }
  }

  v9 = [a2 substringFromIndex:v4 + v6];
  v10 = [v9 rangeOfString:@""]);
  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v29 = a2;
      _os_log_error_impl(&dword_18565F000, v11, OS_LOG_TYPE_ERROR, "CoreData: fault: Failed to find the ending parenthesis in this statement: %@\n", buf, 0xCu);
    }

    v12 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v29 = a2;
      _os_log_fault_impl(&dword_18565F000, v12, OS_LOG_TYPE_FAULT, "CoreData: Failed to find the ending parenthesis in this statement: %@", buf, 0xCu);
    }
  }

  v13 = [objc_msgSend(v9 substringToIndex:{v10), "componentsSeparatedByString:", @", "}];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v14 = [v13 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v25;
    do
    {
      v17 = 0;
      do
      {
        if (*v25 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v24 + 1) + 8 * v17);
        v19 = [objc_msgSend(v18 stringByTrimmingCharactersInSet:{objc_msgSend(MEMORY[0x1E696AB08], "whitespaceAndNewlineCharacterSet")), "componentsSeparatedByString:", @" "}];
        if ([v19 count] < 2)
        {
          v20 = _PFLogGetLogStream(17);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v29 = v18;
            v30 = 2112;
            v31 = a2;
            _os_log_error_impl(&dword_18565F000, v20, OS_LOG_TYPE_ERROR, "CoreData: fault: Unknown column declaration? This is missing its type? %@\n%@\n", buf, 0x16u);
          }

          v21 = _PFLogGetLogStream(17);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
          {
            *buf = 138412546;
            v29 = v18;
            v30 = 2112;
            v31 = a2;
            _os_log_fault_impl(&dword_18565F000, v21, OS_LOG_TYPE_FAULT, "CoreData: Unknown column declaration? This is missing its type? %@\n%@", buf, 0x16u);
          }
        }

        else
        {
          [v3 addObject:{objc_msgSend(v19, "objectAtIndexedSubscript:", 0)}];
        }

        ++v17;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v15);
  }

  objc_autoreleasePoolPop(context);
  return v3;
}

@end