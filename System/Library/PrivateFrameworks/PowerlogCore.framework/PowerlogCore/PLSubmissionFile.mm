@interface PLSubmissionFile
- (BOOL)createTagFileWithPath:(id)path withInfo:(id)info;
- (PLSubmissionFile)initWithConfig:(id)config;
- (id)filePath;
- (int)submitLogToDAWithBugType:(id)type;
- (void)cleanupTmpDirectory;
- (void)decorateFile;
- (void)decorateFileAtPath:(id)path;
- (void)logSubmissionResultToCAWithErrorType:(int)type withFileType:(id)fileType withOverrideKeys:(id)keys;
- (void)setFileNameWithSubmissionType:(id)type withID:(id)d;
- (void)submit;
- (void)submitLogToiCloud:(id)cloud WithCompress:(BOOL)compress;
- (void)submitLogToiCloudWithCompress:(BOOL)compress;
@end

@implementation PLSubmissionFile

- (PLSubmissionFile)initWithConfig:(id)config
{
  configCopy = config;
  v6 = [(PLSubmissionFile *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_taskingConfig, config);
    v8 = MEMORY[0x1E696AEC0];
    tagUUID = [configCopy tagUUID];
    tagUUID2 = [configCopy tagUUID];
    v11 = [tagUUID2 length];
    v12 = @"/";
    if (!v11)
    {
      v12 = &stru_1F539D228;
    }

    v13 = [v8 stringWithFormat:@"%@%@%@", @"/tmp/powerlog/", tagUUID, v12];
    directory = v7->_directory;
    v7->_directory = v13;

    fileName = v7->_fileName;
    v7->_fileName = 0;

    v7->_iCloudUploadEnabled = 1;
    startDate = [configCopy startDate];
    convertFromMonotonicToSystem = [startDate convertFromMonotonicToSystem];

    endDate = [configCopy endDate];
    convertFromMonotonicToSystem2 = [endDate convertFromMonotonicToSystem];

    v20 = [MEMORY[0x1E695DF00] filenameDateStringWithStartDate:convertFromMonotonicToSystem endDate:convertFromMonotonicToSystem2];
    if (![v20 length])
    {
      tagUUID3 = [configCopy tagUUID];

      v20 = tagUUID3;
    }

    getSubmitReasonTypeToStorageEventOTAType = [configCopy getSubmitReasonTypeToStorageEventOTAType];
    [(PLSubmissionFile *)v7 setFileNameWithSubmissionType:getSubmitReasonTypeToStorageEventOTAType withID:v20];
  }

  return v7;
}

- (void)setFileNameWithSubmissionType:(id)type withID:(id)d
{
  v6 = MEMORY[0x1E696AEC0];
  dCopy = d;
  typeCopy = type;
  fileType = [(PLSubmissionFile *)self fileType];
  fileExtension = [(PLSubmissionFile *)self fileExtension];
  v10 = [v6 stringWithFormat:@"%@OTA%@Submission_%@%@", fileType, typeCopy, dCopy, fileExtension];

  fileName = self->_fileName;
  self->_fileName = v10;
}

- (id)filePath
{
  v3 = MEMORY[0x1E696AEC0];
  directory = [(PLSubmissionFile *)self directory];
  fileName = [(PLSubmissionFile *)self fileName];
  v6 = [v3 stringWithFormat:@"%@%@", directory, fileName];

  return v6;
}

- (int)submitLogToDAWithBugType:(id)type
{
  v42[1] = *MEMORY[0x1E69E9840];
  typeCopy = type;
  filePath = [(PLSubmissionFile *)self filePath];
  v6 = [PLFileStats fileSizeAtPath:filePath];

  taskingConfig = [(PLSubmissionFile *)self taskingConfig];
  capSize = [taskingConfig capSize];
  longLongValue = [capSize longLongValue];

  if (v6 <= longLongValue)
  {
    v41 = @"override-fileName";
    fileName = [(PLSubmissionFile *)self fileName];
    v42[0] = fileName;
    v13 = 1;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:&v41 count:1];
    v16 = MEMORY[0x1E695DFF8];
    filePath2 = [(PLSubmissionFile *)self filePath];
    v18 = [v16 fileURLWithPath:filePath2];
    v19 = PLOSAMoveFileForSubmissions();

    if (v19)
    {
      v20 = MEMORY[0x1E695DFF8];
      filePath3 = [(PLSubmissionFile *)self filePath];
      lastPathComponent = [filePath3 lastPathComponent];
      v23 = [@"/var/mobile/Library/Logs/CrashReporter/" stringByAppendingPathComponent:lastPathComponent];
      v24 = [v20 URLWithString:v23];
      [PPSFileUtilities markAsPurgeable:v24 urgency:512 startDate:0];

      v13 = 0;
      v12 = 1;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    filePath4 = [(PLSubmissionFile *)self filePath];
    [defaultManager removeItemAtPath:filePath4 error:0];

    v12 = 0;
    v13 = 2;
  }

  taskingConfig2 = [(PLSubmissionFile *)self taskingConfig];
  submitReasonType = [taskingConfig2 submitReasonType];

  if (submitReasonType == 3)
  {
    taskingConfig3 = [(PLSubmissionFile *)self taskingConfig];
    request = [taskingConfig3 request];
    if (request)
    {
      taskingConfig4 = [(PLSubmissionFile *)self taskingConfig];
      request2 = [taskingConfig4 request];
    }

    else
    {
      request2 = @"request nil";
    }

    taskingConfig6 = +[PLSubmissions sharedInstance];
    v39[0] = @"Type";
    taskingConfig5 = [(PLSubmissionFile *)self taskingConfig];
    getSubmitReasonTypeToStorageEventOTAType = [taskingConfig5 getSubmitReasonTypeToStorageEventOTAType];
    v40[0] = getSubmitReasonTypeToStorageEventOTAType;
    v40[1] = request2;
    v39[1] = @"Name";
    v39[2] = @"Success";
    v34 = [MEMORY[0x1E696AD98] numberWithBool:v12];
    v40[2] = v34;
    v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v39 count:3];
    [taskingConfig6 logOTAStatus:v35];
  }

  else
  {
    request2 = +[PLSubmissions sharedInstance];
    v37[0] = @"Type";
    taskingConfig6 = [(PLSubmissionFile *)self taskingConfig];
    taskingConfig5 = [taskingConfig6 getSubmitReasonTypeToStorageEventOTAType];
    v38[0] = taskingConfig5;
    v37[1] = @"Success";
    getSubmitReasonTypeToStorageEventOTAType = [MEMORY[0x1E696AD98] numberWithBool:v12];
    v38[1] = getSubmitReasonTypeToStorageEventOTAType;
    v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:2];
    [(__CFString *)request2 logOTAStatus:v34];
  }

  return v13;
}

- (void)logSubmissionResultToCAWithErrorType:(int)type withFileType:(id)fileType withOverrideKeys:(id)keys
{
  v6 = *&type;
  fileTypeCopy = fileType;
  keysCopy = keys;
  v10 = keysCopy;
  if (!keysCopy || [keysCopy count] != 4)
  {
    v15 = 0;
    if (v6 > 1)
    {
      if (v6 != 2)
      {
        v14 = 0;
        v11 = 0;
        if (v6 != 3)
        {
          goto LABEL_27;
        }

        v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", @"submissionFail.noFile"];
        v14 = @"submissionFail";
        v15 = @"noFile";
        if (!v13)
        {
          goto LABEL_24;
        }

        goto LABEL_18;
      }

      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", @"submissionFail.fileOverLimit"];
      v14 = @"submissionFail";
      v15 = @"fileOverLimit";
      if (v13)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (v6)
      {
        v14 = 0;
        v11 = 0;
        if (v6 != 1)
        {
          goto LABEL_27;
        }

        v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", @"submissionFail.OSA"];
        v14 = @"submissionFail";
        v15 = @"OSA";
        if (!v13)
        {
          goto LABEL_24;
        }

LABEL_18:
        v20 = &stru_1F539D228;
        if (fileTypeCopy)
        {
          v20 = fileTypeCopy;
        }

        v21 = ".";
        if (!fileTypeCopy)
        {
          v21 = "";
        }

        v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.powerlog.%@%s%@", v20, v21, v13];
        goto LABEL_26;
      }

      v16 = MEMORY[0x1E696AEC0];
      taskingConfig = [(PLSubmissionFile *)self taskingConfig];
      getSubmitReasonTypeToCAFieldValue = [taskingConfig getSubmitReasonTypeToCAFieldValue];
      v19 = [v16 stringWithFormat:@"%@", getSubmitReasonTypeToCAFieldValue];

      v13 = v19;
      v15 = @"noError";
      v14 = v13;
      if (v13)
      {
        goto LABEL_18;
      }
    }

LABEL_24:
    v11 = 0;
    goto LABEL_27;
  }

  v11 = [v10 objectAtIndexedSubscript:v6];
  v12 = [v10 objectAtIndexedSubscript:v6];
  v13 = [v12 componentsSeparatedByString:@"."];

  if (v6 || [(__CFString *)v13 count]< 4)
  {
    if ([(__CFString *)v13 count]< 5)
    {
      v15 = 0;
      v14 = 0;
    }

    else
    {
      v14 = [(__CFString *)v13 objectAtIndexedSubscript:3];
      v15 = [(__CFString *)v13 objectAtIndexedSubscript:4];
    }
  }

  else
  {
    v14 = [(__CFString *)v13 objectAtIndexedSubscript:3];
    v15 = @"noError";
  }

LABEL_26:

LABEL_27:
  if (+[PLDefaults debugEnabled])
  {
    v22 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __87__PLSubmissionFile_logSubmissionResultToCAWithErrorType_withFileType_withOverrideKeys___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v22;
    if (logSubmissionResultToCAWithErrorType_withFileType_withOverrideKeys__defaultOnce != -1)
    {
      dispatch_once(&logSubmissionResultToCAWithErrorType_withFileType_withOverrideKeys__defaultOnce, block);
    }

    if (logSubmissionResultToCAWithErrorType_withFileType_withOverrideKeys__classDebugEnabled == 1)
    {
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Set aggdKey = %@ for OTA submission result: error = %d, filetype = %@, overrideKeys = %@ (%d == %d)", v11, v6, fileTypeCopy, v10, objc_msgSend(v10, "count"), 4];
      v24 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLSubmissionsClasses/PLSubmissionFile.m"];
      lastPathComponent = [v24 lastPathComponent];
      v26 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:]"];
      [PLCoreStorage logMessage:v23 fromFile:lastPathComponent fromFunction:v26 fromLineNumber:173];

      v28 = PLLogCommon(v27);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  if (v14)
  {
    v29 = v14;
    v30 = v15;
    v31 = fileTypeCopy;
    AnalyticsSendEventLazy();
  }

  if (v11)
  {
    PLADClientAddValueForScalarKey();
  }
}

BOOL __87__PLSubmissionFile_logSubmissionResultToCAWithErrorType_withFileType_withOverrideKeys___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  logSubmissionResultToCAWithErrorType_withFileType_withOverrideKeys__classDebugEnabled = result;
  return result;
}

id __87__PLSubmissionFile_logSubmissionResultToCAWithErrorType_withFileType_withOverrideKeys___block_invoke_87(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v4[0] = @"source";
  v4[1] = @"reason";
  v4[2] = @"fileType";
  v5 = v1;
  v6 = vbslq_s8(vceqzq_s64(*(a1 + 40)), vdupq_n_s64(&stru_1F539D228), *(a1 + 40));
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v5 forKeys:v4 count:3];

  return v2;
}

- (void)decorateFile
{
  filePath = [(PLSubmissionFile *)self filePath];
  [(PLSubmissionFile *)self decorateFileAtPath:filePath];
}

- (void)decorateFileAtPath:(id)path
{
  pathCopy = path;
  taskingConfig = [(PLSubmissionFile *)self taskingConfig];
  date = [MEMORY[0x1E695DF00] date];
  v7 = [PLSubmissionConfig getDateMarkerFromSystemDate:date];

  uTF8String = [pathCopy UTF8String];
  uTF8String2 = [v7 UTF8String];
  v118 = v7;
  v10 = strlen([v7 UTF8String]);
  if (setxattr(uTF8String, "com.apple.powerlog.handoverDate", uTF8String2, v10, 0, 0) && +[PLDefaults debugEnabled])
  {
    v11 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __39__PLSubmissionFile_decorateFileAtPath___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v11;
    if (decorateFileAtPath__defaultOnce != -1)
    {
      dispatch_once(&decorateFileAtPath__defaultOnce, block);
    }

    if (decorateFileAtPath__classDebugEnabled == 1)
    {
      v12 = MEMORY[0x1E696AEC0];
      v13 = *__error();
      v14 = __error();
      v15 = [v12 stringWithFormat:@"Add decoration to %@ %s:%@ failed %d(%s)\n", pathCopy, "com.apple.powerlog.handoverDate", v7, v13, strerror(*v14)];
      v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLSubmissionsClasses/PLSubmissionFile.m"];
      lastPathComponent = [v16 lastPathComponent];
      v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSubmissionFile decorateFileAtPath:]"];
      [PLCoreStorage logMessage:v15 fromFile:lastPathComponent fromFunction:v18 fromLineNumber:199];

      v20 = PLLogCommon(v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  getDateMarker = [taskingConfig getDateMarker];
  uTF8String3 = [pathCopy UTF8String];
  uTF8String4 = [getDateMarker UTF8String];
  v24 = strlen([getDateMarker UTF8String]);
  if (setxattr(uTF8String3, "com.apple.powerlog.collectDate", uTF8String4, v24, 0, 0) && +[PLDefaults debugEnabled])
  {
    v25 = objc_opt_class();
    v127[0] = MEMORY[0x1E69E9820];
    v127[1] = 3221225472;
    v127[2] = __39__PLSubmissionFile_decorateFileAtPath___block_invoke_106;
    v127[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v127[4] = v25;
    if (decorateFileAtPath__defaultOnce_104 != -1)
    {
      dispatch_once(&decorateFileAtPath__defaultOnce_104, v127);
    }

    if (decorateFileAtPath__classDebugEnabled_105 == 1)
    {
      v26 = MEMORY[0x1E696AEC0];
      v27 = *__error();
      v28 = __error();
      v29 = [v26 stringWithFormat:@"Add decoration to %@ %s:%@ failed %d(%s)\n", pathCopy, "com.apple.powerlog.collectDate", getDateMarker, v27, strerror(*v28)];
      v30 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLSubmissionsClasses/PLSubmissionFile.m"];
      lastPathComponent2 = [v30 lastPathComponent];
      v32 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSubmissionFile decorateFileAtPath:]"];
      [PLCoreStorage logMessage:v29 fromFile:lastPathComponent2 fromFunction:v32 fromLineNumber:203];

      v34 = PLLogCommon(v33);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  value = [taskingConfig internal];
  if (setxattr([pathCopy UTF8String], "com.apple.powerlog.internal", &value, 1uLL, 0, 0) && +[PLDefaults debugEnabled](PLDefaults, "debugEnabled"))
  {
    v35 = objc_opt_class();
    v125[0] = MEMORY[0x1E69E9820];
    v125[1] = 3221225472;
    v125[2] = __39__PLSubmissionFile_decorateFileAtPath___block_invoke_110;
    v125[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v125[4] = v35;
    if (decorateFileAtPath__defaultOnce_108 != -1)
    {
      dispatch_once(&decorateFileAtPath__defaultOnce_108, v125);
    }

    if (decorateFileAtPath__classDebugEnabled_109 == 1)
    {
      v36 = MEMORY[0x1E696AEC0];
      v37 = value;
      v38 = *__error();
      v39 = __error();
      v40 = [v36 stringWithFormat:@"Add decoration to %@ %s:%d failed %d(%s)\n", pathCopy, "com.apple.powerlog.internal", v37, v38, strerror(*v39)];
      v41 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLSubmissionsClasses/PLSubmissionFile.m"];
      lastPathComponent3 = [v41 lastPathComponent];
      v43 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSubmissionFile decorateFileAtPath:]"];
      [PLCoreStorage logMessage:v40 fromFile:lastPathComponent3 fromFunction:v43 fromLineNumber:207];

      v45 = PLLogCommon(v44);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  seed = [taskingConfig seed];
  if (setxattr([pathCopy UTF8String], "com.apple.powerlog.beta", &seed, 1uLL, 0, 0) && +[PLDefaults debugEnabled](PLDefaults, "debugEnabled"))
  {
    v46 = objc_opt_class();
    v123[0] = MEMORY[0x1E69E9820];
    v123[1] = 3221225472;
    v123[2] = __39__PLSubmissionFile_decorateFileAtPath___block_invoke_117;
    v123[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v123[4] = v46;
    if (decorateFileAtPath__defaultOnce_115 != -1)
    {
      dispatch_once(&decorateFileAtPath__defaultOnce_115, v123);
    }

    if (decorateFileAtPath__classDebugEnabled_116 == 1)
    {
      v47 = MEMORY[0x1E696AEC0];
      v48 = seed;
      v49 = *__error();
      v50 = __error();
      v51 = [v47 stringWithFormat:@"Add decoration to %@ %s:%d failed %d(%s)\n", pathCopy, "com.apple.powerlog.beta", v48, v49, strerror(*v50)];
      v52 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLSubmissionsClasses/PLSubmissionFile.m"];
      lastPathComponent4 = [v52 lastPathComponent];
      v54 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSubmissionFile decorateFileAtPath:]"];
      [PLCoreStorage logMessage:v51 fromFile:lastPathComponent4 fromFunction:v54 fromLineNumber:211];

      v56 = PLLogCommon(v55);
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  uTF8String5 = [pathCopy UTF8String];
  deviceModel = [taskingConfig deviceModel];
  uTF8String6 = [deviceModel UTF8String];
  deviceModel2 = [taskingConfig deviceModel];
  v61 = strlen([deviceModel2 UTF8String]);
  LODWORD(uTF8String5) = setxattr(uTF8String5, "com.apple.powerlog.deviceModel", uTF8String6, v61, 0, 0);

  if (uTF8String5 && +[PLDefaults debugEnabled])
  {
    v62 = objc_opt_class();
    v122[0] = MEMORY[0x1E69E9820];
    v122[1] = 3221225472;
    v122[2] = __39__PLSubmissionFile_decorateFileAtPath___block_invoke_121;
    v122[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v122[4] = v62;
    if (decorateFileAtPath__defaultOnce_119 != -1)
    {
      dispatch_once(&decorateFileAtPath__defaultOnce_119, v122);
    }

    if (decorateFileAtPath__classDebugEnabled_120 == 1)
    {
      v63 = MEMORY[0x1E696AEC0];
      deviceModel3 = [taskingConfig deviceModel];
      v65 = *__error();
      v66 = __error();
      v67 = [v63 stringWithFormat:@"Add decoration to %@ %s:%@ failed %d(%s)\n", pathCopy, "com.apple.powerlog.deviceModel", deviceModel3, v65, strerror(*v66)];

      v68 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLSubmissionsClasses/PLSubmissionFile.m"];
      lastPathComponent5 = [v68 lastPathComponent];
      v70 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSubmissionFile decorateFileAtPath:]"];
      [PLCoreStorage logMessage:v67 fromFile:lastPathComponent5 fromFunction:v70 fromLineNumber:214];

      v72 = PLLogCommon(v71);
      if (os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  builds = [taskingConfig builds];
  lastObject = [builds lastObject];

  if (lastObject)
  {
    uTF8String7 = [pathCopy UTF8String];
    uTF8String8 = [lastObject UTF8String];
    v77 = strlen([lastObject UTF8String]);
    if (setxattr(uTF8String7, "com.apple.powerlog.build", uTF8String8, v77, 0, 0))
    {
      if (+[PLDefaults debugEnabled])
      {
        v78 = objc_opt_class();
        v121[0] = MEMORY[0x1E69E9820];
        v121[1] = 3221225472;
        v121[2] = __39__PLSubmissionFile_decorateFileAtPath___block_invoke_125;
        v121[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v121[4] = v78;
        if (decorateFileAtPath__defaultOnce_123 != -1)
        {
          dispatch_once(&decorateFileAtPath__defaultOnce_123, v121);
        }

        if (decorateFileAtPath__classDebugEnabled_124 == 1)
        {
          v79 = MEMORY[0x1E696AEC0];
          v80 = *__error();
          v81 = __error();
          v82 = [v79 stringWithFormat:@"Add decoration to %@ %s:%@ failed %d(%s)\n", pathCopy, "com.apple.powerlog.build", lastObject, v80, strerror(*v81)];
          v83 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLSubmissionsClasses/PLSubmissionFile.m"];
          lastPathComponent6 = [v83 lastPathComponent];
          v85 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSubmissionFile decorateFileAtPath:]"];
          [PLCoreStorage logMessage:v82 fromFile:lastPathComponent6 fromFunction:v85 fromLineNumber:219];

          v87 = PLLogCommon(v86);
          if (os_log_type_enabled(v87, OS_LOG_TYPE_DEBUG))
          {
            [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
          }
        }
      }
    }
  }

  uTF8String9 = [pathCopy UTF8String];
  tagUUID = [taskingConfig tagUUID];
  uTF8String10 = [tagUUID UTF8String];
  tagUUID2 = [taskingConfig tagUUID];
  v92 = strlen([tagUUID2 UTF8String]);
  LODWORD(uTF8String9) = setxattr(uTF8String9, "com.apple.powerlog.TagUUID", uTF8String10, v92, 0, 0);

  if (uTF8String9 && +[PLDefaults debugEnabled])
  {
    v93 = objc_opt_class();
    v120[0] = MEMORY[0x1E69E9820];
    v120[1] = 3221225472;
    v120[2] = __39__PLSubmissionFile_decorateFileAtPath___block_invoke_129;
    v120[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v120[4] = v93;
    if (decorateFileAtPath__defaultOnce_127 != -1)
    {
      dispatch_once(&decorateFileAtPath__defaultOnce_127, v120);
    }

    if (decorateFileAtPath__classDebugEnabled_128 == 1)
    {
      v94 = MEMORY[0x1E696AEC0];
      tagUUID3 = [taskingConfig tagUUID];
      v96 = *__error();
      v97 = __error();
      v98 = [v94 stringWithFormat:@"Add decoration to %@ %s:%@ failed %d(%s)\n", pathCopy, "com.apple.powerlog.TagUUID", tagUUID3, v96, strerror(*v97)];

      v99 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLSubmissionsClasses/PLSubmissionFile.m"];
      lastPathComponent7 = [v99 lastPathComponent];
      v101 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSubmissionFile decorateFileAtPath:]"];
      [PLCoreStorage logMessage:v98 fromFile:lastPathComponent7 fromFunction:v101 fromLineNumber:223];

      v103 = PLLogCommon(v102);
      if (os_log_type_enabled(v103, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  getSubmitReasonTypeToReasonLog = [taskingConfig getSubmitReasonTypeToReasonLog];
  uTF8String11 = [pathCopy UTF8String];
  uTF8String12 = [getSubmitReasonTypeToReasonLog UTF8String];
  v107 = strlen([getSubmitReasonTypeToReasonLog UTF8String]);
  if (setxattr(uTF8String11, "com.apple.powerlog.reason", uTF8String12, v107, 0, 0) && +[PLDefaults debugEnabled])
  {
    v108 = objc_opt_class();
    v119[0] = MEMORY[0x1E69E9820];
    v119[1] = 3221225472;
    v119[2] = __39__PLSubmissionFile_decorateFileAtPath___block_invoke_133;
    v119[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v119[4] = v108;
    if (decorateFileAtPath__defaultOnce_131 != -1)
    {
      dispatch_once(&decorateFileAtPath__defaultOnce_131, v119);
    }

    if (decorateFileAtPath__classDebugEnabled_132 == 1)
    {
      v109 = MEMORY[0x1E696AEC0];
      v110 = *__error();
      v111 = __error();
      v112 = [v109 stringWithFormat:@"Add decoration to %@ %s:%@ failed %d(%s)\n", pathCopy, "com.apple.powerlog.reason", getSubmitReasonTypeToReasonLog, v110, strerror(*v111)];
      v113 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLSubmissionsClasses/PLSubmissionFile.m"];
      lastPathComponent8 = [v113 lastPathComponent];
      v115 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSubmissionFile decorateFileAtPath:]"];
      [PLCoreStorage logMessage:v112 fromFile:lastPathComponent8 fromFunction:v115 fromLineNumber:227];

      v117 = PLLogCommon(v116);
      if (os_log_type_enabled(v117, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }
}

BOOL __39__PLSubmissionFile_decorateFileAtPath___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  decorateFileAtPath__classDebugEnabled = result;
  return result;
}

BOOL __39__PLSubmissionFile_decorateFileAtPath___block_invoke_106(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  decorateFileAtPath__classDebugEnabled_105 = result;
  return result;
}

BOOL __39__PLSubmissionFile_decorateFileAtPath___block_invoke_110(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  decorateFileAtPath__classDebugEnabled_109 = result;
  return result;
}

BOOL __39__PLSubmissionFile_decorateFileAtPath___block_invoke_117(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  decorateFileAtPath__classDebugEnabled_116 = result;
  return result;
}

BOOL __39__PLSubmissionFile_decorateFileAtPath___block_invoke_121(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  decorateFileAtPath__classDebugEnabled_120 = result;
  return result;
}

BOOL __39__PLSubmissionFile_decorateFileAtPath___block_invoke_125(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  decorateFileAtPath__classDebugEnabled_124 = result;
  return result;
}

BOOL __39__PLSubmissionFile_decorateFileAtPath___block_invoke_129(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  decorateFileAtPath__classDebugEnabled_128 = result;
  return result;
}

BOOL __39__PLSubmissionFile_decorateFileAtPath___block_invoke_133(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  decorateFileAtPath__classDebugEnabled_132 = result;
  return result;
}

- (BOOL)createTagFileWithPath:(id)path withInfo:(id)info
{
  pathCopy = path;
  infoCopy = info;
  taskingConfig = [(PLSubmissionFile *)self taskingConfig];
  tagUUID = [taskingConfig tagUUID];

  if (tagUUID)
  {
    v10 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:infoCopy];
    tagUUID2 = [taskingConfig tagUUID];
    [v10 setObject:tagUUID2 forKeyedSubscript:@"TagUUID"];

    getDateMarker = [taskingConfig getDateMarker];
    [v10 setObject:getDateMarker forKeyedSubscript:@"Date"];

    builds = [taskingConfig builds];
    lastObject = [builds lastObject];
    [v10 setObject:lastObject forKeyedSubscript:@"Build"];

    deviceModel = [taskingConfig deviceModel];
    [v10 setObject:deviceModel forKeyedSubscript:@"Model"];

    if ([taskingConfig internal])
    {
      v16 = @"true";
    }

    else
    {
      v16 = @"false";
    }

    [v10 setObject:v16 forKeyedSubscript:@"Internal"];
    if ([taskingConfig seed])
    {
      v17 = @"true";
    }

    else
    {
      v17 = @"false";
    }

    [v10 setObject:v17 forKeyedSubscript:@"Beta"];
    if ([MEMORY[0x1E696ACB0] isValidJSONObject:v10])
    {
      v18 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v10 options:0 error:0];
      v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v18 encoding:4];
      v20 = [v19 writeToFile:pathCopy atomically:0 encoding:4 error:0];
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (void)submit
{
  if (+[PLDefaults debugEnabled])
  {
    v2 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __26__PLSubmissionFile_submit__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v2;
    if (submit_defaultOnce != -1)
    {
      dispatch_once(&submit_defaultOnce, block);
    }

    if (submit_classDebugEnabled == 1)
    {
      v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PLSubmissionFile: submit\n"];
      v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLSubmissionsClasses/PLSubmissionFile.m"];
      lastPathComponent = [v4 lastPathComponent];
      v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSubmissionFile submit]"];
      [PLCoreStorage logMessage:v3 fromFile:lastPathComponent fromFunction:v6 fromLineNumber:267];

      v8 = PLLogCommon(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }
}

BOOL __26__PLSubmissionFile_submit__block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  submit_classDebugEnabled = result;
  return result;
}

- (void)submitLogToiCloud:(id)cloud WithCompress:(BOOL)compress
{
  compressCopy = compress;
  v37 = *MEMORY[0x1E69E9840];
  cloudCopy = cloud;
  if (cloudCopy)
  {
    taskingConfig = [(PLSubmissionFile *)self taskingConfig];
    tagUUID = [taskingConfig tagUUID];

    if (tagUUID)
    {
      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      v10 = [defaultManager fileExistsAtPath:cloudCopy];

      if (v10)
      {
        [PLUtilities createAndChownDirectoryIfDirectoryDoesNotExist:@"/tmp/powerlog/cloud/"];
        v12 = MEMORY[0x1E696AEC0];
        taskingConfig2 = [(PLSubmissionFile *)self taskingConfig];
        tagUUID2 = [taskingConfig2 tagUUID];
        v15 = [v12 stringWithFormat:@"%@Powerlog_%@/", @"/tmp/powerlog/cloud/", tagUUID2];

        if (v15)
        {
          [PLUtilities createAndChownDirectoryIfDirectoryDoesNotExist:v15];
        }

        v16 = MEMORY[0x1E696AEC0];
        lastPathComponent = [cloudCopy lastPathComponent];
        v18 = [v16 stringWithFormat:@"%@%@", v15, lastPathComponent];

        if (compressCopy)
        {
          v19 = [PLUtilities compressWithSource:cloudCopy withDestination:v18 withLevel:4];
          v20 = v19;
          v21 = PLLogSubmission(v19);
          v22 = v21;
          if (v20)
          {
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
            {
              [PLSubmissionFile submitLogToiCloud:WithCompress:];
            }

            [(PLSubmissionFile *)self decorateFileAtPath:v18];
          }

          else
          {
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              [PLSubmissionFile submitLogToiCloud:WithCompress:];
            }
          }
        }

        else
        {
          defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
          v30 = 0;
          v24 = [defaultManager2 copyItemAtPath:cloudCopy toPath:v18 error:&v30];
          v25 = v30;

          v27 = PLLogSubmission(v26);
          v28 = v27;
          if (v24)
          {
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
            {
              [PLSubmissionFile submitLogToiCloud:WithCompress:];
            }
          }

          else if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            localizedDescription = [v25 localizedDescription];
            *buf = 138412802;
            v32 = cloudCopy;
            v33 = 2112;
            v34 = v18;
            v35 = 2112;
            v36 = localizedDescription;
            _os_log_error_impl(&dword_1D8611000, v28, OS_LOG_TYPE_ERROR, "Failed to copy '%@' to '%@' for submission due to error '%@'", buf, 0x20u);
          }
        }
      }

      else
      {
        v15 = PLLogSubmission(v11);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          [PLSubmissionFile submitLogToiCloud:WithCompress:];
        }
      }
    }
  }
}

- (void)submitLogToiCloudWithCompress:(BOOL)compress
{
  compressCopy = compress;
  filePath = [(PLSubmissionFile *)self filePath];
  [(PLSubmissionFile *)self submitLogToiCloud:filePath WithCompress:compressCopy];
}

- (void)cleanupTmpDirectory
{
  v27 = *MEMORY[0x1E69E9840];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  directory = [(PLSubmissionFile *)self directory];
  v5 = [defaultManager fileExistsAtPath:directory];

  if (v5)
  {
    defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
    directory2 = [(PLSubmissionFile *)self directory];
    v24 = 0;
    [defaultManager2 removeItemAtPath:directory2 error:&v24];
    v8 = v24;

    v9 = MEMORY[0x1E696AEC0];
    directory3 = [(PLSubmissionFile *)self directory];
    fileName = [(PLSubmissionFile *)self fileName];
    v12 = [v9 stringWithFormat:@"Cleanup remove directory %@, file %@, %@", directory3, fileName, v8];

    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLSubmissionsClasses/PLSubmissionFile.m"];
    lastPathComponent = [v13 lastPathComponent];
    v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSubmissionFile cleanupTmpDirectory]"];
    [PLCoreStorage logMessage:v12 fromFile:lastPathComponent fromFunction:v15 fromLineNumber:322];

    v17 = PLLogCommon(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v26 = v12;
      _os_log_impl(&dword_1D8611000, v17, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
    }
  }

  else
  {
    v18 = MEMORY[0x1E696AEC0];
    directory4 = [(PLSubmissionFile *)self directory];
    v8 = [v18 stringWithFormat:@"Cleanup directory %@ does not exist, skipping removal", directory4];

    v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLSubmissionsClasses/PLSubmissionFile.m"];
    lastPathComponent2 = [v20 lastPathComponent];
    v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSubmissionFile cleanupTmpDirectory]"];
    [PLCoreStorage logMessage:v8 fromFile:lastPathComponent2 fromFunction:v22 fromLineNumber:315];

    v12 = PLLogCommon(v23);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v26 = v8;
      _os_log_impl(&dword_1D8611000, v12, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
    }
  }
}

- (void)submitLogToiCloud:WithCompress:.cold.1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_1D8611000, v0, OS_LOG_TYPE_ERROR, "PLSubmissionFile: file %@ does not exist, cannot submit", v1, 0xCu);
}

- (void)submitLogToiCloud:WithCompress:.cold.3()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(&dword_1D8611000, v0, OS_LOG_TYPE_ERROR, "Failed to compress '%@' to '%@' for submission", v1, 0x16u);
}

@end