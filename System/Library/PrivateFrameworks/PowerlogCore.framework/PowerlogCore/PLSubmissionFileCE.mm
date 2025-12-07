@interface PLSubmissionFileCE
- (BOOL)copyAndPrepareLog;
- (BOOL)performCopyTablesToDB:(id)b;
- (id)getCESQLFile;
- (void)submit;
@end

@implementation PLSubmissionFileCE

- (BOOL)copyAndPrepareLog
{
  v57[1] = *MEMORY[0x1E69E9840];
  filePath = [(PLSubmissionFile *)self filePath];
  v4 = [filePath stringByReplacingOccurrencesOfString:@".ce.anon" withString:&stru_1F539D228];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v6 = [defaultManager fileExistsAtPath:v4];

  if (!v6)
  {
    defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
    v55 = 0;
    v11 = [defaultManager2 createDirectoryAtPath:v4 withIntermediateDirectories:1 attributes:0 error:&v55];
    v8 = v55;

    if ((v11 & 1) == 0)
    {
      v14 = PLLogSubmission(v12);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [PLSubmissionFileBG copyAndPrepareLog];
      }

      v9 = 0;
      goto LABEL_36;
    }

    getCESQLFile = [(PLSubmissionFileCE *)self getCESQLFile];
    v14 = [v4 stringByAppendingPathComponent:getCESQLFile];

    v15 = [v14 stringByAppendingFormat:@".gz"];
    v16 = +[PPSCoreStorage sharedSQLStorage];
    cESQLConnection = [v16 CESQLConnection];

    v53 = cESQLConnection;
    v18 = [cESQLConnection copyDatabaseToPath:v14 fromDate:0 toDate:0 withTableFilters:0 vacuumDB:0];
    if (v18)
    {
      if (_os_feature_enabled_impl())
      {
        v19 = [(PLSubmissionFileCE *)self performCopyTablesToDB:v14];
        if ((v19 & 1) == 0)
        {
          v20 = PLLogSubmission(v19);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            [PLSubmissionFileCE copyAndPrepareLog];
          }
        }
      }

      v21 = [PLUtilities compressWithSource:v14 withDestination:v15 withLevel:4];
      if ((v21 & 1) == 0)
      {
        v22 = PLLogSubmission(v21);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          [PLSubmissionFileCE copyAndPrepareLog];
        }
      }

      defaultManager3 = [MEMORY[0x1E696AC08] defaultManager];
      [defaultManager3 removeItemAtPath:v14 error:0];

      defaultManager4 = [MEMORY[0x1E696AC08] defaultManager];
      v25 = [v14 stringByAppendingString:@"-wal"];
      [defaultManager4 removeItemAtPath:v25 error:0];

      defaultManager5 = [MEMORY[0x1E696AC08] defaultManager];
      v27 = [v14 stringByAppendingString:@"-shm"];
      [defaultManager5 removeItemAtPath:v27 error:0];
    }

    else
    {
      defaultManager5 = PLLogSubmission(v18);
      if (os_log_type_enabled(defaultManager5, OS_LOG_TYPE_ERROR))
      {
        [PLSubmissionFileCE copyAndPrepareLog];
      }
    }

    v28 = [v4 stringByAppendingPathComponent:@"tag.json"];
    array = [MEMORY[0x1E695DF70] array];
    lastPathComponent = [v15 lastPathComponent];
    [array addObject:lastPathComponent];

    v56 = @"LogFiles";
    v57[0] = array;
    v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v57 forKeys:&v56 count:1];
    v31 = [(PLSubmissionFile *)self createTagFileWithPath:v28 withInfo:?];
    if ((v31 & 1) == 0)
    {
      v32 = PLLogSubmission(v31);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        [PLSubmissionFileCE copyAndPrepareLog];
      }
    }

    v52 = v28;
    v33 = MEMORY[0x1E6999F68];
    v34 = [MEMORY[0x1E695DFF8] fileURLWithPath:v4];
    v35 = [v33 archiveDirectoryAt:v34 deleteOriginal:1];

    if (v35)
    {
      v49 = array;
      v50 = v15;
      defaultManager6 = [MEMORY[0x1E696AC08] defaultManager];
      path = [v35 path];
      filePath2 = [(PLSubmissionFile *)self filePath];
      v54 = v8;
      v40 = [defaultManager6 moveItemAtPath:path toPath:filePath2 error:&v54];
      v41 = v54;

      if (v40)
      {
        [(PLSubmissionFile *)self decorateFile];
        v9 = 1;
        v43 = v52;
        v8 = v41;
        array = v49;
        v15 = v50;
LABEL_35:

LABEL_36:
        goto LABEL_37;
      }

      v44 = PLLogSubmission(v42);
      v8 = v41;
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        [PLSubmissionFileCE copyAndPrepareLog];
      }

      defaultManager7 = [MEMORY[0x1E696AC08] defaultManager];
      path2 = [v35 path];
      [defaultManager7 removeItemAtPath:path2 error:0];

      array = v49;
      v15 = v50;
    }

    v47 = PLLogSubmission(v36);
    v43 = v52;
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      [(PLSubmissionFileCE *)v47 copyAndPrepareLog];
    }

    v9 = 0;
    goto LABEL_35;
  }

  v8 = PLLogSubmission(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [PLSubmissionFileCE copyAndPrepareLog];
  }

  v9 = 0;
LABEL_37:

  return v9;
}

- (id)getCESQLFile
{
  taskingConfig = [(PLSubmissionFile *)self taskingConfig];
  startDate = [taskingConfig startDate];
  convertFromMonotonicToSystem = [startDate convertFromMonotonicToSystem];

  taskingConfig2 = [(PLSubmissionFile *)self taskingConfig];
  endDate = [taskingConfig2 endDate];
  convertFromMonotonicToSystem2 = [endDate convertFromMonotonicToSystem];

  v9 = [MEMORY[0x1E695DF00] filenameDateStringWithStartDate:convertFromMonotonicToSystem endDate:convertFromMonotonicToSystem2];
  if (![v9 length])
  {
    taskingConfig3 = [(PLSubmissionFile *)self taskingConfig];
    tagUUID = [taskingConfig3 tagUUID];

    v9 = tagUUID;
  }

  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cleanenergy_%@.CESQL", v9];
  v13 = PLLogSubmission(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [PLSubmissionFileCE getCESQLFile];
  }

  return v12;
}

- (BOOL)performCopyTablesToDB:(id)b
{
  bCopy = b;
  tablesToMigrateForCE = [(PLSubmissionFileCE *)self tablesToMigrateForCE];
  v6 = [[PLSQLiteConnection alloc] initWithFilePath:bCopy];

  v7 = +[PowerlogCore sharedCore];
  storage = [v7 storage];
  connection = [storage connection];

  filePath = [connection filePath];
  lastPathComponent = [filePath lastPathComponent];
  stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];

  filePath2 = [connection filePath];
  v14 = [(PLSQLiteConnection *)v6 attachDB:filePath2 withName:stringByDeletingPathExtension];

  if (v14)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];

    v19 = PLLogSubmission(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      [PLSubmissionFileCE performCopyTablesToDB:];
    }

    v26 = MEMORY[0x1E69E9820];
    v27 = 3221225472;
    v28 = __44__PLSubmissionFileCE_performCopyTablesToDB___block_invoke;
    v29 = &unk_1E851A040;
    selfCopy = self;
    v20 = uUIDString;
    v31 = v20;
    v21 = v6;
    v32 = v21;
    v33 = connection;
    v22 = PLLogSubmission([tablesToMigrateForCE enumerateObjectsUsingBlock:&v26]);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      [PLSubmissionFileCE performCopyTablesToDB:];
    }

    selfCopy = [(PLSQLiteConnection *)v21 detachDB:stringByDeletingPathExtension, v26, v27, v28, v29, selfCopy];
    if ((selfCopy & 1) == 0)
    {
      v24 = PLLogSubmission(selfCopy);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [PLSubmissionFileCE performCopyTablesToDB:];
      }
    }

    [(PLSQLiteConnection *)v21 closeConnection];
  }

  else
  {
    v20 = PLLogSubmission(v15);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [(PLSubmissionFileCE *)connection performCopyTablesToDB:stringByDeletingPathExtension, v20];
    }
  }

  return v14;
}

void __44__PLSubmissionFileCE_performCopyTablesToDB___block_invoke(uint64_t a1, void *a2)
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = a2;
  context = objc_autoreleasePoolPush();
  v4 = [PLEntryDefinition configsForEntryKey:v3];
  v5 = [*(a1 + 32) taskingConfig];
  v6 = [v5 startDate];

  v7 = [*(a1 + 32) taskingConfig];
  v8 = [v7 endDate];

  v9 = [v4 objectForKeyedSubscript:@"TrimConditionsTemplate"];
  v10 = [v9 isEqual:&unk_1F5405DC0];

  if (v10)
  {
    v11 = [v4 objectForKeyedSubscript:@"TrimConditionsTemplateArg"];
    [v11 doubleValue];
    v13 = v12;

    v14 = [v8 dateByAddingTimeInterval:-v13];

    v16 = PLLogSubmission(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 138413058;
      v32 = v3;
      v33 = 2048;
      v34 = v13;
      v35 = 2112;
      v36 = v14;
      v37 = 2112;
      v38 = v8;
      _os_log_impl(&dword_1D8611000, v16, OS_LOG_TYPE_INFO, "'%@' has %f seconds to live, modified range: [%@, %@]", buf, 0x2Au);
    }
  }

  else
  {
    v14 = v6;
  }

  v17 = [MEMORY[0x1E695DF90] dictionary];
  v18 = MEMORY[0x1E696AEC0];
  [v14 timeIntervalSince1970];
  v20 = v19;
  [v8 timeIntervalSince1970];
  v22 = [v18 stringWithFormat:@"timestamp BETWEEN %f AND %f", v20, v21];
  v30 = v22;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:1];
  [v17 setObject:v23 forKeyedSubscript:@"WHERE"];

  if ([PLDefaults BOOLForKey:@"PLDebugService_Enabled" ifNotSet:0])
  {
    [v17 setObject:*(a1 + 40) forKeyedSubscript:@"uuid"];
  }

  v25 = *(a1 + 48);
  v24 = *(a1 + 56);
  v26 = [v24 filePath];
  v27 = [v26 lastPathComponent];
  v28 = [v27 stringByDeletingPathExtension];
  [v25 copyTable:v3 fromConnection:v24 withDBName:v28 withProperties:v17 andAttach:0];

  objc_autoreleasePoolPop(context);
}

- (void)submit
{
  if ([(PLSubmissionFile *)self iCloudUploadEnabled])
  {

    [(PLSubmissionFile *)self submitLogToiCloudWithCompress:0];
  }
}

- (void)performCopyTablesToDB:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = [a1 filePath];
  OUTLINED_FUNCTION_2();
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_1D8611000, a3, OS_LOG_TYPE_ERROR, "Failed to attach DB at '%@' as '%@'", v6, 0x16u);
}

@end