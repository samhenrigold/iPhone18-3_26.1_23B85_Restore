@interface PLSubmissionFileBG
- (BOOL)copyAndPrepareLog;
- (PLSubmissionFileBG)initWithConfig:(id)config;
- (id)getBGSQLFile;
- (void)copyAndPrepareLog;
- (void)getBGSQLFile;
- (void)submit;
@end

@implementation PLSubmissionFileBG

- (PLSubmissionFileBG)initWithConfig:(id)config
{
  configCopy = config;
  if ([configCopy submitBG] && ((v8.receiver = self, v8.super_class = PLSubmissionFileBG, v5 = -[PLSubmissionFile initWithConfig:](&v8, sel_initWithConfig_, configCopy), (self = v5) == 0) || -[PLSubmissionFileBG copyAndPrepareLog](v5, "copyAndPrepareLog")))
  {
    self = self;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)copyAndPrepareLog
{
  v77 = *MEMORY[0x1E69E9840];
  filePath = [(PLSubmissionFile *)self filePath];
  v4 = [filePath stringByReplacingOccurrencesOfString:@".bg.anon" withString:&stru_1F539D228];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v6 = [defaultManager fileExistsAtPath:v4];

  if (v6)
  {
    v8 = PLLogSubmission(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [PLSubmissionFileBG copyAndPrepareLog];
    }

    v9 = 0;
  }

  else
  {
    defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
    v71 = 0;
    v11 = [defaultManager2 createDirectoryAtPath:v4 withIntermediateDirectories:1 attributes:0 error:&v71];
    v8 = v71;

    if (v11)
    {
      v13 = +[PowerlogCore sharedCore];
      storage = [v13 storage];
      [storage blockingFlushCachesWithReason:@"BackgroundProcessing"];

      getBGSQLFile = [(PLSubmissionFileBG *)self getBGSQLFile];
      v16 = [v4 stringByAppendingPathComponent:getBGSQLFile];

      v17 = [v16 stringByAppendingFormat:@".gz"];
      v18 = +[PPSCoreStorage sharedSQLStorage];
      bGSQLConnection = [v18 BGSQLConnection];
      v20 = [bGSQLConnection copyDatabaseToPath:v16 fromDate:0 toDate:0 withTableFilters:0 vacuumDB:0];

      if (v20)
      {
        date = [MEMORY[0x1E695DF00] date];
        [date timeIntervalSince1970];
        v24 = v23;

        v26 = PLLogSubmission(v25);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          *buf = 134217984;
          *&buf[4] = v24;
          _os_log_impl(&dword_1D8611000, v26, OS_LOG_TYPE_INFO, "The epoch time for BGSQL copy log is %f", buf, 0xCu);
        }

        v68 = v17;

        v74[0] = @"TaskEndTime";
        v27 = [MEMORY[0x1E696AD98] numberWithDouble:v24];
        v74[1] = @"Reason";
        v75[0] = v27;
        v75[1] = &unk_1F5405B80;
        v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v75 forKeys:v74 count:2];

        v30 = PLLogSubmission(v29);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          *&buf[4] = v28;
          _os_log_impl(&dword_1D8611000, v30, OS_LOG_TYPE_INFO, "The payload for BGSQL Tasking log is %@", buf, 0xCu);
        }

        *buf = 0;
        errmsg = 0;
        v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%@_%@_%@", @"BackgroundProcessing", @"TimeOfCaptureEvent", @"1", @"5"];
        v32 = PLLogSubmission(v31);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
        {
          [PLSubmissionFileBG copyAndPrepareLog];
        }

        v33 = sqlite3_open_v2([v16 UTF8String], buf, 2, 0);
        if (v33)
        {
          v34 = PLLogSubmission(v33);
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            [PLSubmissionFileBG copyAndPrepareLog];
          }
        }

        else
        {
          v35 = MEMORY[0x1E696AEC0];
          v36 = [MEMORY[0x1E696AD98] numberWithDouble:v24];
          v34 = [v35 stringWithFormat:@"INSERT INTO %@ (TaskEndTime, Reason) VALUES ('%@', '%@')", v31, v36, &unk_1F5405B80];

          v37 = sqlite3_exec(*buf, [v34 UTF8String], 0, 0, &errmsg);
          if (v37)
          {
            v38 = PLLogSubmission(v37);
            if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
            {
              [PLSubmissionFileBG copyAndPrepareLog];
            }
          }
        }

        if (errmsg)
        {
          sqlite3_free(errmsg);
        }

        if (*buf)
        {
          sqlite3_close(*buf);
        }

        v39 = [PLUtilities compressWithSource:v16 withDestination:v68 withLevel:4];
        if (v39)
        {
          defaultManager3 = [MEMORY[0x1E696AC08] defaultManager];
          [defaultManager3 removeItemAtPath:v16 error:0];

          defaultManager4 = [MEMORY[0x1E696AC08] defaultManager];
          v42 = [v16 stringByAppendingString:@"-wal"];
          [defaultManager4 removeItemAtPath:v42 error:0];

          defaultManager5 = [MEMORY[0x1E696AC08] defaultManager];
          v44 = [v16 stringByAppendingString:@"-shm"];
          [defaultManager5 removeItemAtPath:v44 error:0];

          v28 = [v4 stringByAppendingPathComponent:@"tag.json"];
          array = [MEMORY[0x1E695DF70] array];
          lastPathComponent = [v68 lastPathComponent];
          [array addObject:lastPathComponent];

          v72 = @"LogFiles";
          v73 = array;
          v67 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v73 forKeys:&v72 count:1];
          v47 = [(PLSubmissionFile *)self createTagFileWithPath:v28 withInfo:?];
          v17 = v68;
          if ((v47 & 1) == 0)
          {
            v48 = PLLogSubmission(v47);
            if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
            {
              [PLSubmissionFileBG copyAndPrepareLog];
            }
          }

          v49 = MEMORY[0x1E6999F68];
          v50 = [MEMORY[0x1E695DFF8] fileURLWithPath:v4];
          v51 = [v49 archiveDirectoryAt:v50 deleteOriginal:1];

          v53 = v51;
          if (v51)
          {
            v65 = array;
            defaultManager6 = [MEMORY[0x1E696AC08] defaultManager];
            v64 = v53;
            path = [v53 path];
            filePath2 = [(PLSubmissionFile *)self filePath];
            v69 = v8;
            v57 = [defaultManager6 moveItemAtPath:path toPath:filePath2 error:&v69];
            v66 = v69;

            if (v57)
            {
              v59 = PLLogSubmission([(PLSubmissionFile *)self decorateFile]);
              v53 = v64;
              array = v65;
              if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
              {
                [PLSubmissionFileBG copyAndPrepareLog];
              }

              defaultManager7 = [MEMORY[0x1E696AC08] defaultManager];
              path2 = [v64 path];
              [defaultManager7 removeItemAtPath:path2 error:0];

              v9 = 1;
              v17 = v68;
            }

            else
            {
              defaultManager7 = PLLogSubmission(v58);
              array = v65;
              if (os_log_type_enabled(defaultManager7, OS_LOG_TYPE_ERROR))
              {
                [PLSubmissionFileBG copyAndPrepareLog];
              }

              v9 = 0;
              v17 = v68;
              v53 = v64;
            }

            v8 = v66;
          }

          else
          {
            defaultManager7 = PLLogSubmission(v52);
            if (os_log_type_enabled(defaultManager7, OS_LOG_TYPE_ERROR))
            {
              [PLSubmissionFileBG copyAndPrepareLog];
            }

            v9 = 0;
          }
        }

        else
        {
          v62 = PLLogSubmission(v39);
          if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
          {
            [PLSubmissionFileBG copyAndPrepareLog];
          }

          v9 = 0;
          v17 = v68;
        }
      }

      else
      {
        v28 = PLLogSubmission(v21);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          [PLSubmissionFileBG copyAndPrepareLog];
        }

        v9 = 0;
      }
    }

    else
    {
      v16 = PLLogSubmission(v12);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [PLSubmissionFileBG copyAndPrepareLog];
      }

      v9 = 0;
    }
  }

  return v9;
}

- (id)getBGSQLFile
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

  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"bgprocessing_%@.BGSQL", v9];
  v13 = PLLogSubmission(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [PLSubmissionFileBG getBGSQLFile];
  }

  return v12;
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
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)getBGSQLFile
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(&dword_1D8611000, v0, OS_LOG_TYPE_DEBUG, "Requested BackgroundProcessing DB file: %@", v1, 0xCu);
}

@end