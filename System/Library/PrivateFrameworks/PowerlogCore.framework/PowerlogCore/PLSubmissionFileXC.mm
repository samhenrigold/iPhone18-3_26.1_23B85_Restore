@interface PLSubmissionFileXC
- (BOOL)copyAndPrepareLog;
- (BOOL)copyDatabaseToPath:(id)path;
- (double)randomizedBaseOffset;
- (double)xcodeVersionFromUserActions;
- (id)getXCSQLFile;
- (void)copyAndPrepareLog;
- (void)getXCSQLFile;
- (void)obfuscateTimestampsForTable:(id)table connection:(id)connection withOffset:(double)offset;
- (void)submit;
- (void)xcodeVersionFromUserActions;
@end

@implementation PLSubmissionFileXC

- (BOOL)copyDatabaseToPath:(id)path
{
  pathCopy = path;
  v4 = objc_autoreleasePoolPush();
  v5 = +[PPSCoreStorage sharedSQLStorage];
  xCSQLConnection = [v5 XCSQLConnection];
  v7 = [xCSQLConnection copyDatabaseToPath:pathCopy];

  if (v7)
  {
    v8 = [[PLSQLiteConnection alloc] initWithFilePath:pathCopy];
    [(PLSQLiteConnection *)v8 setJournalMode:9];
    [(PLSQLiteConnection *)v8 closeConnection];
  }

  objc_autoreleasePoolPop(v4);

  return v7;
}

- (BOOL)copyAndPrepareLog
{
  v92[6] = *MEMORY[0x1E69E9840];
  taskingConfig = [(PLSubmissionFile *)self taskingConfig];
  if ([taskingConfig submitReasonType] != 1)
  {

LABEL_5:
    filePath = [(PLSubmissionFile *)self filePath];
    v8 = [filePath stringByReplacingOccurrencesOfString:@".xc.anon" withString:&stru_1F539D228];

    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v10 = [defaultManager fileExistsAtPath:v8];

    if (v10)
    {
      v12 = PLLogSubmission(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [PLSubmissionFileBG copyAndPrepareLog];
      }

      v6 = 0;
      goto LABEL_42;
    }

    defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
    v88 = 0;
    v14 = [defaultManager2 createDirectoryAtPath:v8 withIntermediateDirectories:1 attributes:0 error:&v88];
    v12 = v88;

    if ((v14 & 1) == 0)
    {
      v21 = PLLogSubmission(v15);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [PLSubmissionFileBG copyAndPrepareLog];
      }

      v6 = 0;
      goto LABEL_41;
    }

    taskingConfig2 = [(PLSubmissionFile *)self taskingConfig];
    submitReasonType = [taskingConfig2 submitReasonType];

    if (submitReasonType != 1)
    {
      v18 = +[PowerlogCore sharedCore];
      storage = [v18 storage];
      [storage blockingFlushCachesWithReason:@"XcodeOrganizer"];
    }

    getXCSQLFile = [(PLSubmissionFileXC *)self getXCSQLFile];
    v21 = [v8 stringByAppendingPathComponent:getXCSQLFile];

    v22 = [v21 stringByAppendingFormat:@".gz"];
    v23 = [(PLSubmissionFileXC *)self copyDatabaseToPath:v21];
    if (v23)
    {
      v85 = [[PLSQLiteConnection alloc] initWithFilePath:v21];
      [(PLSubmissionFileXC *)self randomizedBaseOffset];
      v25 = v24;
      [(PLSubmissionFileXC *)self obfuscateTimestampsForTable:@"XcodeMetrics_TimeOffset_365_4" connection:v85 withOffset:?];
      [(PLSubmissionFileXC *)self obfuscateTimestampsForTable:@"XcodeMetrics_UserAction_365_4" connection:v85 withOffset:v25];
      [(PLSQLiteConnection *)v85 fullVacuum];
      v26 = [(PLSubmissionFileXC *)self userActionCountForConnection:v85];
      v91[0] = @"has_user_actions";
      v81 = [MEMORY[0x1E696AD98] numberWithBool:v26 > 0];
      v92[0] = v81;
      v92[1] = &unk_1F540A230;
      v91[1] = @"preparation_stage";
      v91[2] = @"user_action_row_count";
      v71 = v26;
      v80 = [MEMORY[0x1E696AD98] numberWithInt:v26];
      v92[2] = v80;
      v91[3] = @"xcsql_size";
      v27 = MEMORY[0x1E696AD98];
      v79 = +[PPSCoreStorage sharedSQLStorage];
      xCSQLConnection = [v79 XCSQLConnection];
      filePath2 = [xCSQLConnection filePath];
      v76 = [v27 numberWithLongLong:{+[PLFileStats fileSizeAtPath:](PLFileStats, "fileSizeAtPath:", filePath2)}];
      v92[3] = v76;
      v91[4] = @"shm_size";
      v28 = MEMORY[0x1E696AD98];
      v83 = v21;
      v75 = +[PPSCoreStorage sharedSQLStorage];
      xCSQLConnection2 = [v75 XCSQLConnection];
      filePath3 = [xCSQLConnection2 filePath];
      v72 = [filePath3 stringByAppendingString:@"-shm"];
      v29 = [v28 numberWithLongLong:{+[PLFileStats fileSizeAtPath:](PLFileStats, "fileSizeAtPath:", v72)}];
      v92[4] = v29;
      v91[5] = @"wal_size";
      v84 = v22;
      v30 = MEMORY[0x1E696AD98];
      v31 = +[PPSCoreStorage sharedSQLStorage];
      xCSQLConnection3 = [v31 XCSQLConnection];
      filePath4 = [xCSQLConnection3 filePath];
      v34 = [filePath4 stringByAppendingString:@"-wal"];
      v35 = [v30 numberWithLongLong:{+[PLFileStats fileSizeAtPath:](PLFileStats, "fileSizeAtPath:", v34)}];
      v92[5] = v35;
      v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v92 forKeys:v91 count:6];
      AnalyticsSendEvent();

      v22 = v84;
      p_super = &v85->super;

      v21 = v83;
      [(PLSQLiteConnection *)v85 closeConnection];
      v38 = [PLUtilities compressWithSource:v83 withDestination:v84 withLevel:4];
      if (v38)
      {
        defaultManager3 = [MEMORY[0x1E696AC08] defaultManager];
        [defaultManager3 removeItemAtPath:v83 error:0];

        defaultManager4 = [MEMORY[0x1E696AC08] defaultManager];
        v41 = [v83 stringByAppendingString:@"-wal"];
        [defaultManager4 removeItemAtPath:v41 error:0];

        defaultManager5 = [MEMORY[0x1E696AC08] defaultManager];
        v43 = [v83 stringByAppendingString:@"-shm"];
        [defaultManager5 removeItemAtPath:v43 error:0];

        v86 = [v8 stringByAppendingPathComponent:@"tag.json"];
        array = [MEMORY[0x1E695DF70] array];
        lastPathComponent = [v84 lastPathComponent];
        [array addObject:lastPathComponent];

        v82 = array;
        v90[0] = array;
        v89[0] = @"LogFiles";
        v89[1] = @"XcodeVersion";
        v46 = MEMORY[0x1E696AD98];
        [(PLSubmissionFileXC *)self xcodeVersionFromUserActions];
        v47 = [v46 numberWithDouble:?];
        v90[1] = v47;
        v89[2] = @"UserActionCount_System";
        v48 = MEMORY[0x1E696AD98];
        v49 = +[PPSCoreStorage sharedSQLStorage];
        xCSQLConnection4 = [v49 XCSQLConnection];
        v51 = [v48 numberWithInt:{-[PLSubmissionFileXC userActionCountForConnection:](self, "userActionCountForConnection:", xCSQLConnection4)}];
        v90[2] = v51;
        v89[3] = @"UserActionCount_Upload";
        v52 = [MEMORY[0x1E696AD98] numberWithInt:v71];
        v90[3] = v52;
        v53 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v90 forKeys:v89 count:4];

        v54 = [(PLSubmissionFile *)self createTagFileWithPath:v86 withInfo:v53];
        if ((v54 & 1) == 0)
        {
          v55 = PLLogSubmission(v54);
          if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
          {
            [PLSubmissionFileBG copyAndPrepareLog];
          }
        }

        v56 = MEMORY[0x1E6999F68];
        v57 = [MEMORY[0x1E695DFF8] fileURLWithPath:v8];
        v58 = [v56 archiveDirectoryAt:v57 deleteOriginal:1];

        if (v58)
        {
          defaultManager6 = [MEMORY[0x1E696AC08] defaultManager];
          path = [v58 path];
          filePath5 = [(PLSubmissionFile *)self filePath];
          v87 = v12;
          v63 = [defaultManager6 moveItemAtPath:path toPath:filePath5 error:&v87];
          v64 = v87;

          if (v63)
          {
            v66 = PLLogSubmission([(PLSubmissionFile *)self decorateFile]);
            if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
            {
              [PLSubmissionFileXC copyAndPrepareLog];
            }

            defaultManager7 = [MEMORY[0x1E696AC08] defaultManager];
            path2 = [v58 path];
            [defaultManager7 removeItemAtPath:path2 error:0];

            v6 = 1;
          }

          else
          {
            defaultManager7 = PLLogSubmission(v65);
            if (os_log_type_enabled(defaultManager7, OS_LOG_TYPE_ERROR))
            {
              [PLSubmissionFileXC copyAndPrepareLog];
            }

            v6 = 0;
          }

          v21 = v83;
        }

        else
        {
          defaultManager7 = PLLogSubmission(v59);
          if (os_log_type_enabled(defaultManager7, OS_LOG_TYPE_ERROR))
          {
            [PLSubmissionFileXC copyAndPrepareLog];
          }

          v6 = 0;
          v64 = v12;
        }

        v12 = v64;
        v22 = v84;
        p_super = v86;
        goto LABEL_40;
      }

      v69 = PLLogSubmission(v38);
      if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
      {
        [PLSubmissionFileBG copyAndPrepareLog];
      }
    }

    else
    {
      p_super = PLLogSubmission(v23);
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
      {
        [PLSubmissionFileXC copyAndPrepareLog];
      }
    }

    v6 = 0;
LABEL_40:

LABEL_41:
LABEL_42:

    return v6;
  }

  taskingConfig3 = [(PLSubmissionFile *)self taskingConfig];
  conditionCheckForXcodeUserActions = [taskingConfig3 conditionCheckForXcodeUserActions];

  if (conditionCheckForXcodeUserActions)
  {
    goto LABEL_5;
  }

  return 0;
}

- (id)getXCSQLFile
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

  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"xcode_%@.XCSQL", v9];
  v13 = PLLogSubmission(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [PLSubmissionFileXC getXCSQLFile];
  }

  return v12;
}

- (void)obfuscateTimestampsForTable:(id)table connection:(id)connection withOffset:(double)offset
{
  tableCopy = table;
  connectionCopy = connection;
  v9 = PLLogSubmission(connectionCopy);
  v10 = v9;
  if (connectionCopy)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [PLSubmissionFileXC obfuscateTimestampsForTable:connection:withOffset:];
    }

    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UPDATE %@ SET timestamp = timestamp - %f", tableCopy, *&offset];;
    [connectionCopy beginTransaction];
    v11 = [connectionCopy performQuery:v10];
    [connectionCopy endTransaction];
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [PLSubmissionFileXC obfuscateTimestampsForTable:connection:withOffset:];
  }
}

- (double)randomizedBaseOffset
{
  v2 = arc4random();
  v3 = v2 / 4294967300.0 * 86400.0 + 86400.0;
  v4 = PLLogSubmission(v2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [PLSubmissionFileXC randomizedBaseOffset];
  }

  return v3;
}

- (double)xcodeVersionFromUserActions
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT DISTINCT %@ FROM %@ ORDER BY timestamp DESC limit 1", @"XcodeVersion", @"XcodeMetrics_UserAction_365_4"];
  v3 = +[PPSCoreStorage sharedSQLStorage];
  xCSQLConnection = [v3 XCSQLConnection];
  v5 = [xCSQLConnection entriesForKey:@"XcodeMetrics_UserAction_365_4" withQuery:v2];

  if ([v5 count])
  {
    firstObject = [v5 firstObject];
    v7 = [firstObject objectForKeyedSubscript:@"XcodeVersion"];
    [v7 doubleValue];
    v9 = v8;

    v11 = PLLogSubmission(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [PLSubmissionFileXC xcodeVersionFromUserActions];
    }
  }

  else
  {
    v11 = PLLogSubmission(0);
    v9 = -1.0;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [PLSubmissionFileXC xcodeVersionFromUserActions];
    }
  }

  return v9;
}

- (void)submit
{
  if ([(PLSubmissionFile *)self iCloudUploadEnabled])
  {

    [(PLSubmissionFile *)self submitLogToiCloudWithCompress:0];
  }
}

- (void)copyAndPrepareLog
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)getXCSQLFile
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)obfuscateTimestampsForTable:connection:withOffset:.cold.2()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)xcodeVersionFromUserActions
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

@end