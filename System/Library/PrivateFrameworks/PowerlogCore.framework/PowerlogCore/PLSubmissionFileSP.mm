@interface PLSubmissionFileSP
- (BOOL)copyAndPrepareLog;
- (PLSubmissionFileSP)initWithConfig:(id)config;
- (void)copyAndPrepareLog;
@end

@implementation PLSubmissionFileSP

- (PLSubmissionFileSP)initWithConfig:(id)config
{
  v7.receiver = self;
  v7.super_class = PLSubmissionFileSP;
  v3 = [(PLSubmissionFile *)&v7 initWithConfig:config];
  v4 = v3;
  if (v3 && ![(PLSubmissionFileSP *)v3 copyAndPrepareLog])
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  return v5;
}

- (BOOL)copyAndPrepareLog
{
  v113[3] = *MEMORY[0x1E69E9840];
  taskingConfig = [(PLSubmissionFile *)self taskingConfig];
  if (![taskingConfig signpostDisable])
  {
    if (+[PLPlatform internalBuild])
    {
      v12 = [PLDefaults BOOLForKey:@"SignpostReaderDisable" ifNotSet:0];
      if (v12)
      {
        v9 = PLLogSubmission(v12);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1D8611000, v9, OS_LOG_TYPE_DEFAULT, "signpost collection disabled", buf, 2u);
        }

        goto LABEL_13;
      }
    }

    signpostAllowlist = [taskingConfig signpostAllowlist];
    if (signpostAllowlist)
    {
      v15 = signpostAllowlist;
    }

    else
    {
      v15 = &unk_1F540C7C0;
    }

    if (+[PLPlatform internalBuild])
    {
      v16 = [v15 mutableCopy];
      [v16 setObject:MEMORY[0x1E695E0F0] forKey:@"com.apple.metrickit.log"];
      [v16 setObject:&unk_1F540B6C8 forKeyedSubscript:@"com.apple.signpost_emitter"];

      v15 = v16;
    }

    if ((+[PLPlatform internalBuild](PLPlatform, "internalBuild") || +[PLPlatform seedBuild](PLPlatform, "seedBuild")) && ([taskingConfig deviceModel], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(&unk_1F540B6E0, "containsObject:", v17), v17, v18))
    {
      v19 = [v15 mutableCopy];
      [v19 setObject:&unk_1F540B6F8 forKeyedSubscript:@"com.apple.TextInput"];

      v106 = v19;
    }

    else
    {
      v106 = v15;
    }

    v20 = objc_alloc_init(MEMORY[0x1E695DF90]);
    tagUUID = [taskingConfig tagUUID];
    [v20 setObject:tagUUID forKeyedSubscript:@"TagUUID"];

    builds = [taskingConfig builds];
    lastObject = [builds lastObject];
    [v20 setObject:lastObject forKeyedSubscript:@"Build"];

    deviceModel = [taskingConfig deviceModel];
    [v20 setObject:deviceModel forKeyedSubscript:@"Model"];

    if ([taskingConfig internal])
    {
      v25 = @"true";
    }

    else
    {
      v25 = @"false";
    }

    [v20 setObject:v25 forKeyedSubscript:@"Internal"];
    if ([taskingConfig seed])
    {
      v26 = @"true";
    }

    else
    {
      v26 = @"false";
    }

    [v20 setObject:v26 forKeyedSubscript:@"Beta"];
    getSubmitReasonTypeToReasonLog = [taskingConfig getSubmitReasonTypeToReasonLog];
    [v20 setObject:getSubmitReasonTypeToReasonLog forKeyedSubscript:@"Reason"];

    getDateMarkerLegacy = [taskingConfig getDateMarkerLegacy];
    [v20 setObject:getDateMarkerLegacy forKeyedSubscript:@"Date"];

    v112[0] = @"CollectDate";
    getDateMarker = [taskingConfig getDateMarker];
    v113[0] = getDateMarker;
    v112[1] = @"SignpostStartDate";
    date = [MEMORY[0x1E695DF00] date];
    v31 = [PLSubmissionConfig getDateMarkerFromSystemDate:date];
    v113[1] = v31;
    v112[2] = @"DebugEnabled";
    v32 = +[PLPlatform internalBuild];
    if (v32)
    {
      v33 = [MEMORY[0x1E696AD98] numberWithBool:{+[PLDefaults debugEnabled](PLDefaults, "debugEnabled")}];
    }

    else
    {
      v33 = MEMORY[0x1E695E110];
    }

    v113[2] = v33;
    v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v113 forKeys:v112 count:3];
    [v20 setObject:v34 forKeyedSubscript:@"ExtendedAttributes"];

    if (v32)
    {
    }

    v35 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(taskingConfig, "submittedFilesMask")}];
    [v20 setObject:v35 forKeyedSubscript:@"SubmittedFilesMask"];

    taskingConfig2 = [(PLSubmissionFile *)self taskingConfig];
    [taskingConfig2 setCkTagConfig:v20];

    v37 = [v20 mutableCopy];
    v38 = [v20 objectForKeyedSubscript:@"ExtendedAttributes"];
    serializedJSONString = [v38 serializedJSONString];
    [v37 setObject:serializedJSONString forKeyedSubscript:@"ExtendedAttributes"];

    startDate = [taskingConfig startDate];
    convertFromMonotonicToSystem = [startDate convertFromMonotonicToSystem];

    endDate = [taskingConfig endDate];
    convertFromMonotonicToSystem2 = [endDate convertFromMonotonicToSystem];

    v105 = v37;
    if (+[PLPlatform internalBuild](PLPlatform, "internalBuild") && _os_feature_enabled_impl() && (-[PLSubmissionFile taskingConfig](self, "taskingConfig"), v44 = objc_claimAutoreleasedReturnValue(), v45 = [v44 submitSP], v44, v45))
    {
      v9 = v106;
      if (convertFromMonotonicToSystem && convertFromMonotonicToSystem2)
      {
        if (v37)
        {
          v47 = [convertFromMonotonicToSystem laterDate:convertFromMonotonicToSystem2];

          if (v47 != convertFromMonotonicToSystem)
          {
            v102 = convertFromMonotonicToSystem2;
            p_super = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:convertFromMonotonicToSystem endDate:convertFromMonotonicToSystem2];
            v101 = objc_alloc_init(PPSSignpostController);
            v104 = [(PPSSignpostController *)v101 generateForTimeRange:p_super];
            v50 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v104, "count")}];
            [v37 setObject:v50 forKeyedSubscript:@"FileCount"];

            v52 = PLLogSubmission(v51);
            if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
            {
              [(PLSubmissionFileSP *)v104 copyAndPrepareLog];
            }

            v53 = MEMORY[0x1E696AEC0];
            v54 = [v20 objectForKeyedSubscript:@"Date"];
            v103 = convertFromMonotonicToSystem;
            if (v54)
            {
              taskingConfig3 = [v20 objectForKeyedSubscript:@"Date"];
              v56 = [v53 stringWithFormat:@"Signpost_%@", taskingConfig3];
            }

            else
            {
              taskingConfig3 = [(PLSubmissionFile *)self taskingConfig];
              configUUID = [taskingConfig3 configUUID];
              v56 = [v53 stringWithFormat:@"Signpost_%@", configUUID];
            }

            v69 = MEMORY[0x1E695DFF8];
            filePath = [(PLSubmissionFile *)self filePath];
            v71 = [v69 fileURLWithPath:filePath];
            v100 = v56;
            v72 = [v71 URLByAppendingPathComponent:v56];

            defaultManager = [MEMORY[0x1E696AC08] defaultManager];
            [defaultManager createDirectoryAtURL:v72 withIntermediateDirectories:1 attributes:0 error:0];

            v108[0] = MEMORY[0x1E69E9820];
            v108[1] = 3221225472;
            v108[2] = __39__PLSubmissionFileSP_copyAndPrepareLog__block_invoke_157;
            v108[3] = &unk_1E8519340;
            v74 = v72;
            v109 = v74;
            [v104 enumerateObjectsUsingBlock:v108];
            v98 = [v74 URLByAppendingPathComponent:@"tag.json"];
            path = [v98 path];
            LOBYTE(filePath) = [(PLSubmissionFile *)self createTagFileWithPath:path withInfo:v105];

            v99 = v74;
            if (filePath)
            {
              v77 = [MEMORY[0x1E6999F68] archiveDirectoryAt:v74 deleteOriginal:1];
              v78 = PLLogSubmission(v77);
              v79 = v78;
              v80 = v77;
              if (v77)
              {
                if (os_log_type_enabled(v78, OS_LOG_TYPE_DEBUG))
                {
                  [(PLSubmissionFileSP *)v77 copyAndPrepareLog];
                }

                v81 = MEMORY[0x1E696AEC0];
                taskingConfig4 = [(PLSubmissionFile *)self taskingConfig];
                tagUUID2 = [taskingConfig4 tagUUID];
                v84 = [v81 stringWithFormat:@"%@Powerlog_%@/", @"/tmp/powerlog/cloud/", tagUUID2];

                v85 = MEMORY[0x1E696AEC0];
                path2 = [v80 path];
                lastPathComponent = [path2 lastPathComponent];
                v97 = v84;
                v88 = [v85 stringWithFormat:@"%@%@/", v84, lastPathComponent];

                defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
                path3 = [v80 path];
                v107 = 0;
                v91 = defaultManager2;
                v96 = v88;
                bOOLValue = [defaultManager2 moveItemAtPath:path3 toPath:v88 error:&v107];
                v79 = v107;

                v9 = v106;
                convertFromMonotonicToSystem = v103;
                if ((bOOLValue & 1) == 0)
                {
                  v93 = PLLogSubmission(v92);
                  if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
                  {
                    [(PLSubmissionFileSP *)v80 copyAndPrepareLog];
                  }
                }

                v94 = v101;
              }

              else
              {
                v9 = v106;
                v94 = v101;
                if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
                {
                  [(PLSubmissionFileSP *)v79 copyAndPrepareLog];
                }

                bOOLValue = 0;
                convertFromMonotonicToSystem = v103;
              }

              v95 = v98;

              convertFromMonotonicToSystem2 = v102;
            }

            else
            {
              v80 = PLLogSubmission(v76);
              convertFromMonotonicToSystem = v103;
              if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
              {
                v95 = v98;
                [(PLSubmissionFileSP *)v98 copyAndPrepareLog];
                bOOLValue = 0;
                v9 = v106;
                v94 = v101;
                convertFromMonotonicToSystem2 = v102;
              }

              else
              {
                bOOLValue = 0;
                v9 = v106;
                v94 = v101;
                convertFromMonotonicToSystem2 = v102;
                v95 = v98;
              }
            }

            goto LABEL_55;
          }

          p_super = PLLogSubmission(v48);
          if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
          {
            [PLSubmissionFileSP copyAndPrepareLog];
          }
        }

        else
        {
          p_super = PLLogSubmission(v46);
          if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
          {
            [(PLSubmissionFileSP *)p_super copyAndPrepareLog];
          }
        }
      }

      else
      {
        p_super = PLLogSubmission(v46);
        if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
        {
          [PLSubmissionFileSP copyAndPrepareLog];
        }
      }

      bOOLValue = 0;
    }

    else
    {
      v57 = objc_alloc_init(SignpostReaderHelper);
      taskingConfig5 = [(PLSubmissionFile *)self taskingConfig];
      submitSP = [taskingConfig5 submitSP];
      v60 = v57;
      v61 = v57;
      v9 = v106;
      v62 = convertFromMonotonicToSystem2;
      v63 = [(SignpostReaderHelper *)v61 generateSignpostSubmissionWithTagConfig:v37 withAllowlist:v106 withStartDate:convertFromMonotonicToSystem withEndDate:convertFromMonotonicToSystem2 includeSPFile:submitSP];

      if (v63)
      {
        objc_opt_class();
        v64 = 3;
        if (objc_opt_isKindOfClass())
        {
          [v63 objectForKeyedSubscript:@"success"];
          v66 = v65 = convertFromMonotonicToSystem;
          bOOLValue = [v66 BOOLValue];

          convertFromMonotonicToSystem = v65;
          v9 = v106;
          if (bOOLValue)
          {
            v64 = 0;
          }

          else
          {
            v64 = 3;
          }
        }

        else
        {
          bOOLValue = 0;
        }
      }

      else
      {
        bOOLValue = 0;
        v64 = 3;
      }

      [(PLSubmissionFile *)self logSubmissionResultToCAWithErrorType:v64 withFileType:@"signpost" withOverrideKeys:0];

      convertFromMonotonicToSystem2 = v62;
      p_super = &v60->super;
    }

LABEL_55:

    goto LABEL_56;
  }

  if (+[PLDefaults debugEnabled])
  {
    v4 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __39__PLSubmissionFileSP_copyAndPrepareLog__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v4;
    if (copyAndPrepareLog_defaultOnce != -1)
    {
      dispatch_once(&copyAndPrepareLog_defaultOnce, block);
    }

    if (copyAndPrepareLog_classDebugEnabled == 1)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"copyAndPrepareLog: Signpost submission disabled"];
      v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLSubmissionsClasses/PLSubmissionFileSP.m"];
      lastPathComponent2 = [v6 lastPathComponent];
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSubmissionFileSP copyAndPrepareLog]"];
      [PLCoreStorage logMessage:v5 fromFile:lastPathComponent2 fromFunction:v8 fromLineNumber:56];

      v9 = v5;
      v11 = PLLogCommon(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [(PLSubmissionFileSP *)v5 copyAndPrepareLog];
      }

LABEL_13:
      bOOLValue = 0;
LABEL_56:

      goto LABEL_57;
    }
  }

  bOOLValue = 0;
LABEL_57:

  return bOOLValue & 1;
}

BOOL __39__PLSubmissionFileSP_copyAndPrepareLog__block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  copyAndPrepareLog_classDebugEnabled = result;
  return result;
}

void __39__PLSubmissionFileSP_copyAndPrepareLog__block_invoke_157(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AC08];
  v4 = a2;
  v8 = [v3 defaultManager];
  v5 = *(a1 + 32);
  v6 = [v4 lastPathComponent];
  v7 = [v5 URLByAppendingPathComponent:v6];
  [v8 copyItemAtURL:v4 toURL:v7 error:0];
}

- (void)copyAndPrepareLog
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  selfCopy = self;
  _os_log_debug_impl(&dword_1D8611000, a2, OS_LOG_TYPE_DEBUG, "%@", &v2, 0xCu);
}

@end