@interface PLSubmissionFileBDC
- (BOOL)copyAndPrepareLog;
- (PLSubmissionFileBDC)initWithConfig:(id)config;
- (id)getBDCPlistFile;
- (id)getEPSQLFile;
- (id)getListOfRequiredBDCFiles;
- (void)copyAndPrepareLog;
- (void)getBDCPlistFile;
- (void)getEPSQLFile;
- (void)getListOfRequiredBDCFiles;
- (void)submit;
@end

@implementation PLSubmissionFileBDC

- (PLSubmissionFileBDC)initWithConfig:(id)config
{
  configCopy = config;
  if (![configCopy submitBDC] || +[PLPlatform isTVOS](PLPlatform, "isTVOS") || (v8.receiver = self, v8.super_class = PLSubmissionFileBDC, v5 = -[PLSubmissionFile initWithConfig:](&v8, sel_initWithConfig_, configCopy), (self = v5) != 0) && !-[PLSubmissionFileBDC copyAndPrepareLog](v5, "copyAndPrepareLog"))
  {
    selfCopy = 0;
  }

  else
  {
    self = self;
    selfCopy = self;
  }

  return selfCopy;
}

- (void)submit
{
  if ([(PLSubmissionFile *)self iCloudUploadEnabled])
  {

    [(PLSubmissionFile *)self submitLogToiCloudWithCompress:0];
  }
}

- (BOOL)copyAndPrepareLog
{
  v93 = *MEMORY[0x1E69E9840];
  getListOfRequiredBDCFiles = [(PLSubmissionFileBDC *)self getListOfRequiredBDCFiles];
  if ([getListOfRequiredBDCFiles count])
  {
    filePath = [(PLSubmissionFile *)self filePath];
    v5 = [filePath stringByReplacingOccurrencesOfString:@".bdc.anon" withString:&stru_1F539D228];

    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v7 = [defaultManager fileExistsAtPath:v5];

    if (v7)
    {
      v9 = PLLogSubmission(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [PLSubmissionFileBG copyAndPrepareLog];
      }

      v10 = 0;
      goto LABEL_54;
    }

    defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
    v83 = 0;
    v12 = [defaultManager2 createDirectoryAtPath:v5 withIntermediateDirectories:1 attributes:0 error:&v83];
    v9 = v83;

    if ((v12 & 1) == 0)
    {
      v28 = PLLogSubmission(v13);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        [PLSubmissionFileBDC copyAndPrepareLog];
      }

      v10 = 0;
      goto LABEL_53;
    }

    selfCopy = self;
    v71 = getListOfRequiredBDCFiles;
    v14 = v5;
    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    obj = getListOfRequiredBDCFiles;
    v15 = [obj countByEnumeratingWithState:&v79 objects:v92 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v80;
      do
      {
        v18 = 0;
        v19 = v9;
        do
        {
          if (*v80 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v79 + 1) + 8 * v18);
          v21 = [@"/var/db/Battery/BDC" stringByAppendingPathComponent:v20];
          v22 = [v14 stringByAppendingPathComponent:v20];
          defaultManager3 = [MEMORY[0x1E696AC08] defaultManager];
          v78 = v19;
          v24 = [defaultManager3 copyItemAtPath:v21 toPath:v22 error:&v78];
          v9 = v78;

          if ((v24 & 1) == 0)
          {
            v26 = PLLogSubmission(v25);
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412802;
              v87 = v21;
              v88 = 2112;
              v89 = v22;
              v90 = 2112;
              v91 = v9;
              _os_log_error_impl(&dword_1D8611000, v26, OS_LOG_TYPE_ERROR, "Error trying to copy bdc file from %@ to %@, %@", buf, 0x20u);
            }
          }

          ++v18;
          v19 = v9;
        }

        while (v16 != v18);
        v16 = [obj countByEnumeratingWithState:&v79 objects:v92 count:16];
      }

      while (v16);
    }

    getEPSQLFile = [(PLSubmissionFileBDC *)selfCopy getEPSQLFile];
    v5 = v14;
    v28 = [v14 stringByAppendingPathComponent:getEPSQLFile];

    v29 = [v28 stringByAppendingFormat:@".gz"];
    v30 = +[PPSCoreStorage sharedSQLStorage];
    ePSQLConnection = [v30 EPSQLConnection];

    v32 = [ePSQLConnection copyDatabaseToPath:v28 fromDate:0 toDate:0 withTableFilters:0 vacuumDB:0];
    v73 = ePSQLConnection;
    if (v32)
    {
      v33 = [PLUtilities compressWithSource:v28 withDestination:v29 withLevel:4];
      if ((v33 & 1) == 0)
      {
        v34 = PLLogSubmission(v33);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          [PLSubmissionFileBG copyAndPrepareLog];
        }
      }

      defaultManager4 = [MEMORY[0x1E696AC08] defaultManager];
      [defaultManager4 removeItemAtPath:v28 error:0];

      defaultManager5 = [MEMORY[0x1E696AC08] defaultManager];
      v37 = [v28 stringByAppendingString:@"-shm"];
      [defaultManager5 removeItemAtPath:v37 error:0];
    }

    else
    {
      defaultManager5 = PLLogSubmission(v32);
      if (os_log_type_enabled(defaultManager5, OS_LOG_TYPE_ERROR))
      {
        [PLSubmissionFileBDC copyAndPrepareLog];
      }
    }

    getListOfRequiredBDCFiles = v71;

    v38 = [v5 stringByAppendingPathComponent:@"tag.json"];
    v39 = [MEMORY[0x1E695DF70] arrayWithArray:obj];
    lastPathComponent = [v29 lastPathComponent];
    [v39 addObject:lastPathComponent];

    v84 = @"LogFiles";
    v85 = v39;
    v69 = v39;
    v68 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v85 forKeys:&v84 count:1];
    v41 = [(PLSubmissionFile *)selfCopy createTagFileWithPath:v38 withInfo:?];
    if ((v41 & 1) == 0)
    {
      v42 = PLLogSubmission(v41);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        [PLSubmissionFileBG copyAndPrepareLog];
      }
    }

    obja = v29;
    getBDCPlistFile = [(PLSubmissionFileBDC *)selfCopy getBDCPlistFile];
    v72 = v38;
    v67 = getBDCPlistFile;
    if (getBDCPlistFile)
    {
      v44 = getBDCPlistFile;
      v45 = [v5 stringByAppendingPathComponent:@"com.apple.powerd.bdc.plist"];
      v46 = [MEMORY[0x1E695DFF8] fileURLWithPath:v45];
      v77 = v9;
      v47 = [v44 writeToURL:v46 error:&v77];
      v48 = v77;

      if ((v47 & 1) == 0)
      {
        v50 = PLLogSubmission(v49);
        if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
        {
          [PLSubmissionFileBDC copyAndPrepareLog];
        }
      }
    }

    else
    {
      v45 = PLLogSubmission(0);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        [PLSubmissionFileBDC copyAndPrepareLog];
      }

      v48 = v9;
    }

    v51 = MEMORY[0x1E6999F68];
    v52 = [MEMORY[0x1E695DFF8] fileURLWithPath:v5];
    v53 = [v51 archiveDirectoryAt:v52 deleteOriginal:1];

    if (v53)
    {
      defaultManager6 = [MEMORY[0x1E696AC08] defaultManager];
      path = [v53 path];
      filePath2 = [(PLSubmissionFile *)selfCopy filePath];
      v76 = v48;
      v58 = [defaultManager6 moveItemAtPath:path toPath:filePath2 error:&v76];
      v9 = v76;

      if (v58)
      {
        [(PLSubmissionFile *)selfCopy decorateFile];
        v10 = 1;
        v60 = v67;
        v61 = obja;
LABEL_52:

LABEL_53:
LABEL_54:

        goto LABEL_55;
      }

      v62 = PLLogSubmission(v59);
      v60 = v67;
      if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
      {
        [PLSubmissionFileBDC copyAndPrepareLog];
      }

      defaultManager7 = [MEMORY[0x1E696AC08] defaultManager];
      path2 = [v53 path];
      [defaultManager7 removeItemAtPath:path2 error:0];
    }

    else
    {
      v9 = v48;
      v60 = v67;
    }

    v65 = PLLogSubmission(v54);
    v61 = obja;
    if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
    {
      [PLSubmissionFileBDC copyAndPrepareLog];
    }

    v10 = 0;
    goto LABEL_52;
  }

  v10 = 0;
LABEL_55:

  return v10;
}

- (id)getListOfRequiredBDCFiles
{
  v23 = *MEMORY[0x1E69E9840];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v21 = 0;
  v3 = [defaultManager contentsOfDirectoryAtPath:@"/var/db/Battery/BDC" error:&v21];
  v4 = v21;

  array = [MEMORY[0x1E695DF70] array];
  v6 = array;
  if (v4)
  {
    v7 = PLLogSubmission(array);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [PLSubmissionFileBDC getListOfRequiredBDCFiles];
    }

LABEL_4:

    v8 = 0;
    goto LABEL_16;
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = v3;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [v6 addObject:{*(*(&v17 + 1) + 8 * i), v17}];
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v11);
  }

  v14 = [v6 count];
  v15 = PLLogSubmission(v14);
  v7 = v15;
  if (!v14)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [PLSubmissionFileBDC getListOfRequiredBDCFiles];
    }

    goto LABEL_4;
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [PLSubmissionFileBDC getListOfRequiredBDCFiles];
  }

  v8 = v6;
LABEL_16:

  return v8;
}

- (id)getEPSQLFile
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

  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"log_%@.EPSQL", v9];
  v13 = PLLogSubmission(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [PLSubmissionFileBDC getEPSQLFile];
  }

  return v12;
}

- (id)getBDCPlistFile
{
  mach_service = xpc_connection_create_mach_service("com.apple.iokit.powerdxpc", MEMORY[0x1E69E96A0], 0);
  v3 = mach_service;
  if (!mach_service)
  {
    v16 = PLLogSubmission(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [PLSubmissionFileBDC getBDCPlistFile];
    }

    goto LABEL_14;
  }

  v4 = MEMORY[0x1E69E96A0];
  xpc_connection_set_target_queue(mach_service, MEMORY[0x1E69E96A0]);

  xpc_connection_set_event_handler(v3, &__block_literal_global_34);
  xpc_connection_resume(v3);
  v5 = xpc_dictionary_create(0, 0, 0);
  if (!v5)
  {
    v17 = PLLogSubmission(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [PLSubmissionFileBDC getBDCPlistFile];
    }

    xpc_connection_cancel(v3);
LABEL_14:
    v18 = 0;
    goto LABEL_21;
  }

  v6 = v5;
  xpc_dictionary_set_BOOL(v5, "BDCXPCCopyDefaults", 1);
  v7 = [PLTimer alloc];
  v8 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:5.0];
  v9 = dispatch_get_global_queue(2, 0);
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __38__PLSubmissionFileBDC_getBDCPlistFile__block_invoke_50;
  v26[3] = &unk_1E8519A18;
  v10 = v3;
  v27 = v10;
  v11 = [(PLTimer *)v7 initWithFireDate:v8 withInterval:0 withTolerance:0 repeats:v9 withUserInfo:v26 withQueue:0.0 withBlock:0.0];

  v12 = xpc_connection_send_message_with_reply_sync(v10, v6);
  invalidate = [(PLTimer *)v11 invalidate];
  if (!v12)
  {
    v15 = PLLogSubmission(invalidate);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [PLSubmissionFileBDC getBDCPlistFile];
    }

    goto LABEL_17;
  }

  if (MEMORY[0x1DA71B8B0](v12) != MEMORY[0x1E69E9E80])
  {
    v14 = MEMORY[0x1DA71B8B0](v12);
    if (v14 != MEMORY[0x1E69E9E98])
    {
LABEL_18:
      xpc_connection_cancel(v10);
      goto LABEL_19;
    }

    v15 = PLLogSubmission(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [PLSubmissionFileBDC getBDCPlistFile];
    }

LABEL_17:

    goto LABEL_18;
  }

  v20 = _CFXPCCreateCFObjectFromXPCObject();
  v21 = PLLogSubmission(v20);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    [PLSubmissionFileBDC getBDCPlistFile];
  }

  xpc_connection_cancel(v10);
  if (v20)
  {
    v22 = [v20 objectForKeyedSubscript:@"returnCode"];
    intValue = [v22 intValue];

    if (!intValue)
    {
      v18 = [v20 objectForKeyedSubscript:@"BDCXPCCopyDefaults"];

      goto LABEL_20;
    }

    v25 = PLLogSubmission(v24);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [PLSubmissionFileBDC getBDCPlistFile];
    }
  }

LABEL_19:
  v18 = 0;
LABEL_20:

LABEL_21:

  return v18;
}

void __38__PLSubmissionFileBDC_getBDCPlistFile__block_invoke_50(uint64_t a1)
{
  v2 = PLLogSubmission(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __38__PLSubmissionFileBDC_getBDCPlistFile__block_invoke_50_cold_1();
  }

  xpc_connection_cancel(*(a1 + 32));
}

- (void)copyAndPrepareLog
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)getListOfRequiredBDCFiles
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)getEPSQLFile
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(&dword_1D8611000, v0, OS_LOG_TYPE_DEBUG, "Requested BDC EPSQL file: %@", v1, 0xCu);
}

- (void)getBDCPlistFile
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __38__PLSubmissionFileBDC_getBDCPlistFile__block_invoke_50_cold_1()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end