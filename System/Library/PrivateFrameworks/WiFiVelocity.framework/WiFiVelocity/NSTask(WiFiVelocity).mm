@interface NSTask(WiFiVelocity)
+ (BOOL)runTaskWithLaunchPath:()WiFiVelocity arguments:timeout:outputData:errorData:launchHandler:didLaunch:error:;
+ (BOOL)runTaskWithLaunchPath:()WiFiVelocity arguments:timeout:outputFileHandle:errorFileHandle:launchHandler:didLaunch:error:;
+ (BOOL)runTaskWithLaunchPath:()WiFiVelocity arguments:timeout:outputFilePath:errorFilePath:redirectErrorToOutput:launchHandler:didLaunch:error:;
+ (uint64_t)runTaskWithLaunchPath:()WiFiVelocity arguments:outputData:reply:;
+ (uint64_t)runTaskWithLaunchPath:()WiFiVelocity arguments:outputFileHandle:reply:;
+ (uint64_t)runTaskWithLaunchPath:()WiFiVelocity arguments:outputFilePath:reply:;
+ (uint64_t)runTaskWithLaunchPath:()WiFiVelocity arguments:reply:;
+ (uint64_t)runTaskWithLaunchPath:()WiFiVelocity arguments:timeout:outputData:errorData:launchHandler:reply:;
+ (uint64_t)runTaskWithLaunchPath:()WiFiVelocity arguments:timeout:outputFileHandle:errorFileHandle:launchHandler:reply:;
+ (void)runTaskWithLaunchPath:()WiFiVelocity arguments:timeout:outputFilePath:errorFilePath:redirectErrorToOutput:launchHandler:reply:;
+ (void)runTaskWithLaunchPath:()WiFiVelocity arguments:timeout:startBlock:updateBlock:endBlock:;
@end

@implementation NSTask(WiFiVelocity)

+ (uint64_t)runTaskWithLaunchPath:()WiFiVelocity arguments:reply:
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __62__NSTask_WiFiVelocity__runTaskWithLaunchPath_arguments_reply___block_invoke;
  v6[3] = &unk_279ECD1D8;
  v6[4] = a5;
  return [MEMORY[0x277CCACB0] runTaskWithLaunchPath:a3 arguments:a4 timeout:0 outputData:0 errorData:0 launchHandler:v6 reply:10.0];
}

+ (uint64_t)runTaskWithLaunchPath:()WiFiVelocity arguments:outputData:reply:
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __73__NSTask_WiFiVelocity__runTaskWithLaunchPath_arguments_outputData_reply___block_invoke;
  v7[3] = &unk_279ECD1D8;
  v7[4] = a6;
  return [MEMORY[0x277CCACB0] runTaskWithLaunchPath:a3 arguments:a4 timeout:a5 outputData:0 errorData:0 launchHandler:v7 reply:10.0];
}

+ (uint64_t)runTaskWithLaunchPath:()WiFiVelocity arguments:timeout:outputData:errorData:launchHandler:reply:
{
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __105__NSTask_WiFiVelocity__runTaskWithLaunchPath_arguments_timeout_outputData_errorData_launchHandler_reply___block_invoke;
  v11[3] = &unk_279ECD200;
  v11[4] = a8;
  v11[5] = a7;
  v9[4] = a8;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __105__NSTask_WiFiVelocity__runTaskWithLaunchPath_arguments_timeout_outputData_errorData_launchHandler_reply___block_invoke_2;
  v10[3] = &unk_279ECD228;
  v10[4] = a5;
  v10[5] = a6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __105__NSTask_WiFiVelocity__runTaskWithLaunchPath_arguments_timeout_outputData_errorData_launchHandler_reply___block_invoke_3;
  v9[3] = &unk_279ECD250;
  return [MEMORY[0x277CCACB0] runTaskWithLaunchPath:a3 arguments:a4 timeout:v11 startBlock:v10 updateBlock:v9 endBlock:?];
}

+ (uint64_t)runTaskWithLaunchPath:()WiFiVelocity arguments:outputFilePath:reply:
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __77__NSTask_WiFiVelocity__runTaskWithLaunchPath_arguments_outputFilePath_reply___block_invoke;
  v7[3] = &unk_279ECD1D8;
  v7[4] = a6;
  return [MEMORY[0x277CCACB0] runTaskWithLaunchPath:a3 arguments:a4 timeout:a5 outputFilePath:0 errorFilePath:0 redirectErrorToOutput:0 launchHandler:10.0 reply:v7];
}

+ (void)runTaskWithLaunchPath:()WiFiVelocity arguments:timeout:outputFilePath:errorFilePath:redirectErrorToOutput:launchHandler:reply:
{
  v42 = *MEMORY[0x277D85DE8];
  if (a6 | a7)
  {
    v16 = a6;
    if (a6)
    {
      [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
      [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
      v17 = [MEMORY[0x277CCA9F8] fileHandleForUpdatingAtPath:v16];
      if (v17)
      {
        v18 = v17;
        v16 = 0;
        if (!a7)
        {
          goto LABEL_20;
        }

        goto LABEL_13;
      }

      OSLog = W5GetOSLog();
      if (os_log_type_enabled(OSLog, OS_LOG_TYPE_DEFAULT))
      {
        v32 = 136316162;
        v33 = "+[NSTask(WiFiVelocity) runTaskWithLaunchPath:arguments:timeout:outputFilePath:errorFilePath:redirectErrorToOutput:launchHandler:reply:]";
        v34 = 2080;
        v35 = "W5TaskUtil.m";
        v36 = 1024;
        v37 = 146;
        v38 = 2114;
        lastPathComponent = [a4 lastPathComponent];
        v40 = 2114;
        v41 = v16;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_274216000, OSLog, 0, "[wifivelocity] %s (%s:%u) <%{public}@> FAILED to create file handle for output path '%{public}@'", &v32, 48);
      }

      v30 = *MEMORY[0x277CCA470];
      v31 = @"W5ResourceErr";
      v16 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.wifivelocity.error" code:7 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", &v31, &v30, 1)}];
    }

    v18 = 0;
    if (!a7)
    {
      goto LABEL_20;
    }

LABEL_13:
    [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
    [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
    v22 = [MEMORY[0x277CCA9F8] fileHandleForUpdatingAtPath:a7];
    if (v22)
    {
      if (!v16)
      {
LABEL_21:
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __135__NSTask_WiFiVelocity__runTaskWithLaunchPath_arguments_timeout_outputFilePath_errorFilePath_redirectErrorToOutput_launchHandler_reply___block_invoke;
        v27[3] = &unk_279ECD278;
        if (a8)
        {
          v25 = v18;
        }

        else
        {
          v25 = v22;
        }

        v27[4] = v18;
        v27[5] = v22;
        v27[6] = a10;
        return [MEMORY[0x277CCACB0] runTaskWithLaunchPath:a4 arguments:a5 timeout:v18 outputFileHandle:v25 errorFileHandle:a9 launchHandler:v27 reply:self];
      }

      goto LABEL_15;
    }

    v23 = W5GetOSLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      lastPathComponent2 = [a4 lastPathComponent];
      v32 = 136316162;
      v33 = "+[NSTask(WiFiVelocity) runTaskWithLaunchPath:arguments:timeout:outputFilePath:errorFilePath:redirectErrorToOutput:launchHandler:reply:]";
      v34 = 2080;
      v35 = "W5TaskUtil.m";
      v36 = 1024;
      v37 = 160;
      v38 = 2114;
      lastPathComponent = lastPathComponent2;
      v40 = 2114;
      v41 = a7;
      LODWORD(v26) = 48;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_274216000, v23, 0, "[wifivelocity] %s (%s:%u) <%{public}@> FAILED to create file handle for error path '%{public}@'", &v32, v26);
    }

    v28 = *MEMORY[0x277CCA470];
    v29 = @"W5ResourceErr";
    v16 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.wifivelocity.error" code:7 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", &v29, &v28, 1)}];
LABEL_20:
    v22 = 0;
    if (!v16)
    {
      goto LABEL_21;
    }

LABEL_15:
    [v18 closeFile];
    result = [v22 closeFile];
    if (a10)
    {
      return (*(a10 + 16))(a10, v16, 0);
    }

    return result;
  }

  v19 = MEMORY[0x277CCACB0];

  return [v19 runTaskWithLaunchPath:a4 arguments:a5 timeout:0 outputData:0 errorData:a9 launchHandler:a10 reply:?];
}

+ (uint64_t)runTaskWithLaunchPath:()WiFiVelocity arguments:outputFileHandle:reply:
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __79__NSTask_WiFiVelocity__runTaskWithLaunchPath_arguments_outputFileHandle_reply___block_invoke;
  v7[3] = &unk_279ECD1D8;
  v7[4] = a6;
  return [MEMORY[0x277CCACB0] runTaskWithLaunchPath:a3 arguments:a4 timeout:a5 outputFileHandle:0 errorFileHandle:0 launchHandler:v7 reply:10.0];
}

+ (uint64_t)runTaskWithLaunchPath:()WiFiVelocity arguments:timeout:outputFileHandle:errorFileHandle:launchHandler:reply:
{
  if (a6 | a7)
  {
    [a6 seekToEndOfFile];
    [a7 seekToEndOfFile];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __117__NSTask_WiFiVelocity__runTaskWithLaunchPath_arguments_timeout_outputFileHandle_errorFileHandle_launchHandler_reply___block_invoke;
    v20[3] = &unk_279ECD200;
    v20[4] = a9;
    v20[5] = a8;
    v18[4] = a9;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __117__NSTask_WiFiVelocity__runTaskWithLaunchPath_arguments_timeout_outputFileHandle_errorFileHandle_launchHandler_reply___block_invoke_2;
    v19[3] = &unk_279ECD228;
    v19[4] = a6;
    v19[5] = a7;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __117__NSTask_WiFiVelocity__runTaskWithLaunchPath_arguments_timeout_outputFileHandle_errorFileHandle_launchHandler_reply___block_invoke_13;
    v18[3] = &unk_279ECD250;
    return [MEMORY[0x277CCACB0] runTaskWithLaunchPath:a4 arguments:a5 timeout:v20 startBlock:v19 updateBlock:v18 endBlock:self];
  }

  else
  {
    v17 = MEMORY[0x277CCACB0];

    return [v17 runTaskWithLaunchPath:a4 arguments:a5 timeout:0 outputData:0 errorData:? launchHandler:? reply:?];
  }
}

+ (void)runTaskWithLaunchPath:()WiFiVelocity arguments:timeout:startBlock:updateBlock:endBlock:
{
  v98[1] = *MEMORY[0x277D85DE8];
  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.wifivelocity.task.%@", objc_msgSend(a4, "lastPathComponent")];
  v75[0] = 0;
  v75[1] = v75;
  v75[2] = 0x3052000000;
  v75[3] = __Block_byref_object_copy_;
  v75[4] = __Block_byref_object_dispose_;
  [v13 UTF8String];
  v14 = os_transaction_create();
  [+[W5ActivityManager sharedActivityManager](W5ActivityManager "sharedActivityManager")];
  v75[5] = v14;
  v73[0] = 0;
  v73[1] = v73;
  v73[2] = 0x2020000000;
  v74 = 0;
  v71[0] = 0;
  v71[1] = v71;
  v71[2] = 0x2020000000;
  v72 = 0;
  v65 = 0;
  v66 = &v65;
  v67 = 0x3052000000;
  v68 = __Block_byref_object_copy_;
  v69 = __Block_byref_object_dispose_;
  v70 = 0;
  v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v16 = "op Discoverable Mode: %@\n";
  identifier = dispatch_queue_create(0, v15);
  if (!identifier)
  {
    v36 = MEMORY[0x277CCA9B8];
    v97 = *MEMORY[0x277CCA470];
    v98[0] = @"W5NoMemErr";
    v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v98 forKeys:&v97 count:1];
    v37 = 2;
LABEL_32:
    v41 = [v36 errorWithDomain:@"com.apple.wifivelocity.error" code:v37 userInfo:v38];
    v26 = 0;
    v24 = 0;
    v51 = 0;
    v21 = 0;
    v30 = 0;
    v54 = 0;
    goto LABEL_33;
  }

  firstObject = a4;
  if ([a4 isEqualToString:@"/bin/sh"])
  {
    firstObject = [a5 firstObject];
  }

  if ((([firstObject hasPrefix:@"/usr/local/"] & 1) != 0 || objc_msgSend(firstObject, "hasPrefix:", @"/AppleInternal/")) && (os_variant_allows_internal_security_policies() & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      uTF8String = [firstObject UTF8String];
      *buf = 136446210;
      v83 = uTF8String;
      _os_log_error_impl(&dword_274216000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "[wifivelocity] '%{public}s' not allowed on non-internal install variants, will not run task", buf, 0xCu);
    }

    v36 = MEMORY[0x277CCA9B8];
    v95 = *MEMORY[0x277CCA470];
    v96 = @"W5NotPermittedErr";
    v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v96 forKeys:&v95 count:1];
    v37 = 5;
    goto LABEL_32;
  }

  if (!a4 || ([objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")] & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      uTF8String2 = [a4 UTF8String];
      *buf = 136446210;
      v83 = uTF8String2;
      _os_log_error_impl(&dword_274216000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "[wifivelocity] '%{public}s' does not exist, will not run task", buf, 0xCu);
    }

    v36 = MEMORY[0x277CCA9B8];
    v93 = *MEMORY[0x277CCA470];
    v94 = @"W5ParamErr";
    v37 = 1;
    v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v94 forKeys:&v93 count:1];
    goto LABEL_32;
  }

  v54 = objc_alloc_init(MEMORY[0x277CCACB0]);
  [v54 setLaunchPath:a4];
  if (a5)
  {
    [v54 setArguments:a5];
  }

  *v64 = 0;
  handle = 0;
  memset(&v92, 0, sizeof(v92));
  v18 = openpty(&v64[1], v64, 0, &v92, 0);
  if (v18)
  {
    v39 = MEMORY[0x277CCA9B8];
    v90 = *MEMORY[0x277CCA470];
    v91 = @"err";
    v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v91 forKeys:&v90 count:1];
    v41 = [v39 errorWithDomain:*MEMORY[0x277CCA5B8] code:v18 userInfo:v40];
    OSLog = W5GetOSLog();
    if (os_log_type_enabled(OSLog, OS_LOG_TYPE_DEFAULT))
    {
      v43 = *__error();
      *buf = 136315906;
      v83 = "+[NSTask(WiFiVelocity) runTaskWithLaunchPath:arguments:timeout:startBlock:updateBlock:endBlock:]";
      v84 = 2080;
      v85 = "W5TaskUtil.m";
      v86 = 1024;
      v87 = 335;
      v88 = 1024;
      v89 = v43;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_274216000, OSLog, 0, "[wifivelocity] %s (%s:%u) Failed to open pseduo-terminal for stdout, returned error %d", buf, 34);
    }

    goto LABEL_25;
  }

  memset(&v92, 0, sizeof(v92));
  v19 = openpty(&handle + 1, &handle, 0, &v92, 0);
  if (v19)
  {
    v44 = MEMORY[0x277CCA9B8];
    v80 = *MEMORY[0x277CCA470];
    v81 = @"err";
    v45 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v81 forKeys:&v80 count:1];
    v41 = [v44 errorWithDomain:*MEMORY[0x277CCA5B8] code:v19 userInfo:v45];
    v46 = W5GetOSLog();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      v47 = *__error();
      *buf = 136315906;
      v83 = "+[NSTask(WiFiVelocity) runTaskWithLaunchPath:arguments:timeout:startBlock:updateBlock:endBlock:]";
      v84 = 2080;
      v85 = "W5TaskUtil.m";
      v86 = 1024;
      v87 = 339;
      v88 = 1024;
      v89 = v47;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_274216000, v46, 0, "[wifivelocity] %s (%s:%u) Failed to open pseduo-terminal for stderr, returned error %d", buf, 34);
    }

LABEL_25:
    v26 = 0;
    v24 = 0;
    v51 = 0;
    v21 = 0;
LABEL_27:
    v30 = 0;
    goto LABEL_33;
  }

  v20 = objc_alloc(MEMORY[0x277CCA9F8]);
  v21 = [v20 initWithFileDescriptor:v64[1] closeOnDealloc:1];
  v22 = objc_alloc(MEMORY[0x277CCA9F8]);
  v51 = [v22 initWithFileDescriptor:v64[0] closeOnDealloc:1];
  v23 = objc_alloc(MEMORY[0x277CCA9F8]);
  v24 = [v23 initWithFileDescriptor:HIDWORD(handle) closeOnDealloc:1];
  v25 = objc_alloc(MEMORY[0x277CCA9F8]);
  v26 = [v25 initWithFileDescriptor:handle closeOnDealloc:1];
  [v54 setStandardOutput:v51];
  [v54 setStandardError:v26];
  [v54 setStandardInput:0];
  fcntl(v64[1], 4, 4);
  fcntl(SHIDWORD(handle), 4, 4);
  v27 = v64[1];
  global_queue = dispatch_get_global_queue(0, 0);
  v29 = dispatch_source_create(MEMORY[0x277D85D28], v27, 0, global_queue);
  if (!v29)
  {
    v78 = *MEMORY[0x277CCA470];
    v79 = @"W5NoMemErr";
    v41 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.wifivelocity.error" code:2 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", &v79, &v78, 1)}];
    goto LABEL_27;
  }

  v30 = v29;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __96__NSTask_WiFiVelocity__runTaskWithLaunchPath_arguments_timeout_startBlock_updateBlock_endBlock___block_invoke;
  handler[3] = &unk_279ECD2C8;
  v62 = v64[1];
  handler[7] = v71;
  handler[6] = a7;
  handler[4] = identifier;
  handler[5] = v54;
  dispatch_source_set_event_handler(v29, handler);
  v60[0] = MEMORY[0x277D85DD0];
  v60[1] = 3221225472;
  v60[2] = __96__NSTask_WiFiVelocity__runTaskWithLaunchPath_arguments_timeout_startBlock_updateBlock_endBlock___block_invoke_3;
  v60[3] = &unk_279ECD2F0;
  v60[4] = v51;
  v60[5] = v21;
  v60[6] = v30;
  dispatch_source_set_cancel_handler(v30, v60);
  dispatch_resume(v30);
  v31 = dispatch_source_create(MEMORY[0x277D85D28], SHIDWORD(handle), 0, global_queue);
  if (v31)
  {
    v32 = v31;
    v58[0] = MEMORY[0x277D85DD0];
    v58[1] = 3221225472;
    v58[2] = __96__NSTask_WiFiVelocity__runTaskWithLaunchPath_arguments_timeout_startBlock_updateBlock_endBlock___block_invoke_4;
    v58[3] = &unk_279ECD2C8;
    v59 = HIDWORD(handle);
    v58[6] = a7;
    v58[7] = v71;
    v58[4] = identifier;
    v58[5] = v54;
    dispatch_source_set_event_handler(v31, v58);
    v57[0] = MEMORY[0x277D85DD0];
    v57[1] = 3221225472;
    v57[2] = __96__NSTask_WiFiVelocity__runTaskWithLaunchPath_arguments_timeout_startBlock_updateBlock_endBlock___block_invoke_6;
    v57[3] = &unk_279ECD2F0;
    v57[4] = v26;
    v57[5] = v24;
    v57[6] = v32;
    dispatch_source_set_cancel_handler(v32, v57);
    dispatch_resume(v32);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [MEMORY[0x277CCABD8] mainQueue];
    v34 = *MEMORY[0x277CCA6A0];
    block[15] = MEMORY[0x277D85DD0];
    block[16] = 3221225472;
    block[17] = __96__NSTask_WiFiVelocity__runTaskWithLaunchPath_arguments_timeout_startBlock_updateBlock_endBlock___block_invoke_7;
    block[18] = &unk_279ECD340;
    block[27] = v71;
    block[28] = v73;
    block[19] = identifier;
    block[20] = v54;
    block[21] = a4;
    block[22] = a5;
    block[25] = a8;
    block[26] = &v65;
    block[29] = v75;
    block[23] = v32;
    block[24] = v30;
    v35 = [defaultCenter addObserverForName:v34 object:? queue:? usingBlock:?];
    v66[5] = v35;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __96__NSTask_WiFiVelocity__runTaskWithLaunchPath_arguments_timeout_startBlock_updateBlock_endBlock___block_invoke_62;
    block[3] = &unk_279ECD3E0;
    block[4] = v54;
    block[5] = a4;
    block[6] = v32;
    block[7] = v30;
    block[8] = identifier;
    block[9] = a5;
    block[10] = 0;
    block[11] = a6;
    *&block[14] = self;
    block[12] = v75;
    block[13] = v73;
    dispatch_async(MEMORY[0x277D85CD0], block);
    goto LABEL_16;
  }

  v76 = *MEMORY[0x277CCA470];
  v77 = @"W5NoMemErr";
  v16 = "AirDrop Discoverable Mode: %@\n" + 5;
  v41 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.wifivelocity.error" code:2 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", &v77, &v76, 1)}];
LABEL_33:

  if (v30)
  {
    dispatch_source_cancel(v30);
  }

  else
  {
  }

  v48 = identifier;
  if (!identifier)
  {
    v48 = dispatch_get_global_queue(0, 0);
  }

  v55[0] = MEMORY[0x277D85DD0];
  v55[1] = *(v16 + 44);
  v55[2] = __96__NSTask_WiFiVelocity__runTaskWithLaunchPath_arguments_timeout_startBlock_updateBlock_endBlock___block_invoke_2_66;
  v55[3] = &unk_279ECD368;
  v55[4] = a4;
  v55[5] = v41;
  v55[6] = a5;
  v55[7] = v54;
  v55[8] = a6;
  v55[9] = v75;
  dispatch_async(v48, v55);
  if (identifier)
  {
    dispatch_release(identifier);
  }

LABEL_16:
  _Block_object_dispose(&v65, 8);
  _Block_object_dispose(v71, 8);
  _Block_object_dispose(v73, 8);
  _Block_object_dispose(v75, 8);
}

+ (BOOL)runTaskWithLaunchPath:()WiFiVelocity arguments:timeout:outputData:errorData:launchHandler:didLaunch:error:
{
  v37 = *MEMORY[0x277D85DE8];
  v29 = 0;
  v30 = &v29;
  v31 = 0x3052000000;
  v32 = __Block_byref_object_copy_;
  v33 = __Block_byref_object_dispose_;
  v34 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v17 = dispatch_semaphore_create(0);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __115__NSTask_WiFiVelocity__runTaskWithLaunchPath_arguments_timeout_outputData_errorData_launchHandler_didLaunch_error___block_invoke;
  v24[3] = &unk_279ECD408;
  v24[5] = &v29;
  v24[6] = &v25;
  v24[4] = v17;
  [MEMORY[0x277CCACB0] runTaskWithLaunchPath:a4 arguments:a5 timeout:a6 outputData:a7 errorData:a8 launchHandler:v24 reply:self];
  v18 = dispatch_time(0, 600000000000);
  if (dispatch_semaphore_wait(v17, v18) >= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 134349056;
    v36 = 0x4082C00000000000;
    _os_log_error_impl(&dword_274216000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "[wifivelocity] FAILED to complete operation within %{public}.1fs, continuing", buf, 0xCu);
  }

  v19 = v30[5];
  if (a9)
  {
    *a9 = *(v26 + 24);
  }

  v20 = v30;
  if (a10)
  {
    v21 = v30[5];
    if (v21)
    {
      *a10 = v21;
    }
  }

  v22 = v20[5] == 0;
  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v29, 8);
  return v22;
}

+ (BOOL)runTaskWithLaunchPath:()WiFiVelocity arguments:timeout:outputFilePath:errorFilePath:redirectErrorToOutput:launchHandler:didLaunch:error:
{
  v38 = *MEMORY[0x277D85DE8];
  v30 = 0;
  v31 = &v30;
  v32 = 0x3052000000;
  v33 = __Block_byref_object_copy_;
  v34 = __Block_byref_object_dispose_;
  v35 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v18 = dispatch_semaphore_create(0);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __145__NSTask_WiFiVelocity__runTaskWithLaunchPath_arguments_timeout_outputFilePath_errorFilePath_redirectErrorToOutput_launchHandler_didLaunch_error___block_invoke;
  v25[3] = &unk_279ECD408;
  v25[5] = &v30;
  v25[6] = &v26;
  v25[4] = v18;
  [MEMORY[0x277CCACB0] runTaskWithLaunchPath:a4 arguments:a5 timeout:a6 outputFilePath:a7 errorFilePath:a8 redirectErrorToOutput:a9 launchHandler:self reply:v25];
  v19 = dispatch_time(0, 600000000000);
  if (dispatch_semaphore_wait(v18, v19) >= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 134349056;
    v37 = 0x4082C00000000000;
    _os_log_error_impl(&dword_274216000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "[wifivelocity] FAILED to complete operation within %{public}.1fs, continuing", buf, 0xCu);
  }

  v20 = v31[5];
  if (a10)
  {
    *a10 = *(v27 + 24);
  }

  v21 = v31;
  if (a11)
  {
    v22 = v31[5];
    if (v22)
    {
      *a11 = v22;
    }
  }

  v23 = v21[5] == 0;
  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v30, 8);
  return v23;
}

+ (BOOL)runTaskWithLaunchPath:()WiFiVelocity arguments:timeout:outputFileHandle:errorFileHandle:launchHandler:didLaunch:error:
{
  v37 = *MEMORY[0x277D85DE8];
  v29 = 0;
  v30 = &v29;
  v31 = 0x3052000000;
  v32 = __Block_byref_object_copy_;
  v33 = __Block_byref_object_dispose_;
  v34 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v17 = dispatch_semaphore_create(0);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __127__NSTask_WiFiVelocity__runTaskWithLaunchPath_arguments_timeout_outputFileHandle_errorFileHandle_launchHandler_didLaunch_error___block_invoke;
  v24[3] = &unk_279ECD408;
  v24[5] = &v29;
  v24[6] = &v25;
  v24[4] = v17;
  [MEMORY[0x277CCACB0] runTaskWithLaunchPath:a4 arguments:a5 timeout:a6 outputFileHandle:a7 errorFileHandle:a8 launchHandler:v24 reply:self];
  v18 = dispatch_time(0, 600000000000);
  if (dispatch_semaphore_wait(v17, v18) >= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 134349056;
    v36 = 0x4082C00000000000;
    _os_log_error_impl(&dword_274216000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "[wifivelocity] FAILED to complete operation within %{public}.1fs, continuing", buf, 0xCu);
  }

  v19 = v30[5];
  if (a9)
  {
    *a9 = *(v26 + 24);
  }

  v20 = v30;
  if (a10)
  {
    v21 = v30[5];
    if (v21)
    {
      *a10 = v21;
    }
  }

  v22 = v20[5] == 0;
  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v29, 8);
  return v22;
}

@end