@interface PLSubmissions
+ (id)sharedInstance;
- (BOOL)fullModeSubmissionBehavior;
- (BOOL)internalSubmissionBehavior;
- (BOOL)taskingBlobDRExists;
- (BOOL)taskingBlobExists;
- (BOOL)taskingBlobLegacyExists;
- (BOOL)taskingTypeSpecified;
- (PLStorageOperator)storageOperator;
- (PLSubmissions)init;
- (id)configFromMonitor:(id)monitor;
- (id)createWatchdogForSubmissionActivity:(id)activity;
- (id)enqueueFileForUpload:(id)upload;
- (id)generateMSSSubmissionWithPayload:(id)payload;
- (id)getCurrentDRConfig;
- (id)getLastBatteryTimestampSystem;
- (id)workQueue;
- (int)checkTaskingCompletionStatus;
- (signed)submitReasonForToday;
- (void)attemptToUnregisterUploadSchedulingActivity;
- (void)cleanupTemporarySubmissionFilesForTag:(id)tag;
- (void)clearTaskingDRConfig;
- (void)deferXPCActivity:(id)activity;
- (void)disableHangtracer;
- (void)emitBlobDetectedEvent:(id)event;
- (void)emitBlobVerifiedEvent:(id)event;
- (void)emitCollisionEvent:(id)event;
- (void)enableHangtracer;
- (void)enqueueSubmissionRecord:(id)record;
- (void)fileCleanupWithRecord:(id)record;
- (void)finishXPCActivity:(id)activity;
- (void)generateOTASubmissionAndSendTaskingEndSubmission:(BOOL)submission;
- (void)generatePLLSubmissionWithPayload:(id)payload;
- (void)handleDRConfigUpdate:(id)update error:(id)error;
- (void)handleXPCActivityCallback:(id)callback;
- (void)initSubmissionQueue;
- (void)logOTAStatus:(id)status;
- (void)logSubmissionStateToAnalytics:(id)analytics;
- (void)logTaskingStatus:(int)status withAction:(int)action withTables:(id)tables;
- (void)logTaskingTablesTurnedOn:(id)on;
- (void)performSubmission:(id)submission;
- (void)persistSubmissionInfo:(id)info;
- (void)prepareAndEnqueueSubmissionFilesWithConfig:(id)config;
- (void)registerUploadSchedulingActivity;
- (void)rejectTaskingDRConfig;
- (void)removeFileAtPath:(id)path;
- (void)removeFileAtURL:(id)l;
- (void)sendSubmissionIssueSignature:(id)signature;
- (void)setupDRTasking;
- (void)stopDRTasking;
- (void)stopWatchdogForSubmissionActivity:(id)activity;
- (void)submitRecord:(id)record withActivity:(id)activity;
- (void)submitRecordToDiagnosticPipeline:(id)pipeline withConfig:(id)config;
- (void)submitWithTaskingConfig:(id)config;
- (void)taskingCleanup;
- (void)taskingModeSafeguard;
- (void)taskingModeSetup;
@end

@implementation PLSubmissions

- (id)enqueueFileForUpload:(id)upload
{
  v33 = *MEMORY[0x1E69E9840];
  uploadCopy = upload;
  v5 = PLLogSubmission(uploadCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    filePath = [uploadCopy filePath];
    ckTagConfig = [uploadCopy ckTagConfig];
    *buf = 138412546;
    v30 = filePath;
    v31 = 2112;
    v32 = ckTagConfig;
    _os_log_impl(&dword_1D8611000, v5, OS_LOG_TYPE_DEFAULT, "File enqueued for submission: %@ %@", buf, 0x16u);
  }

  filePath2 = [uploadCopy filePath];
  if (filePath2)
  {
    v9 = filePath2;
    ckTagConfig2 = [uploadCopy ckTagConfig];
    if (ckTagConfig2)
    {
      v11 = ckTagConfig2;
      tagUUID = [uploadCopy tagUUID];

      if (tagUUID)
      {
        v13 = [PLSubmissionRecord alloc];
        filePath3 = [uploadCopy filePath];
        tagUUID2 = [uploadCopy tagUUID];
        ckTagConfig3 = [uploadCopy ckTagConfig];
        configUUID = [uploadCopy configUUID];
        configDateReceived = [uploadCopy configDateReceived];
        configDateApplied = [uploadCopy configDateApplied];
        v20 = [(PLSubmissionRecord *)v13 initWithCKFilePath:filePath3 tagUUID:tagUUID2 tagConfig:ckTagConfig3 configUUID:configUUID configDateReceived:configDateReceived configDateApplied:configDateApplied];

        [(PLSubmissionRecord *)v20 emitAttemptEvent];
        workQueue = [(PLSubmissions *)self workQueue];
        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 3221225472;
        v27[2] = __53__PLSubmissions_XPCScheduling__enqueueFileForUpload___block_invoke;
        v27[3] = &unk_1E8519100;
        v27[4] = self;
        v22 = v20;
        v28 = v22;
        dispatch_async(workQueue, v27);

        v23 = v28;
        v24 = v22;

        v25 = v24;
        goto LABEL_11;
      }
    }

    else
    {
    }
  }

  v24 = PLLogSubmission(filePath2);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    [PLSubmissions(XPCScheduling) enqueueFileForUpload:];
  }

  v25 = 0;
LABEL_11:

  return v25;
}

void *__53__PLSubmissions_XPCScheduling__enqueueFileForUpload___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) submissionQueue];
  [v2 addObject:*(a1 + 40)];

  result = [*(a1 + 32) xpcActivityStarted];
  if ((result & 1) == 0)
  {
    v4 = *(a1 + 32);

    return [v4 registerUploadSchedulingActivity];
  }

  return result;
}

- (void)enqueueSubmissionRecord:(id)record
{
  recordCopy = record;
  workQueue = [(PLSubmissions *)self workQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__PLSubmissions_XPCScheduling__enqueueSubmissionRecord___block_invoke;
  v7[3] = &unk_1E8519100;
  v7[4] = self;
  v8 = recordCopy;
  v6 = recordCopy;
  dispatch_async(workQueue, v7);
}

void *__56__PLSubmissions_XPCScheduling__enqueueSubmissionRecord___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) submissionQueue];
  [v2 addObject:*(a1 + 40)];

  result = [*(a1 + 32) xpcActivityStarted];
  if ((result & 1) == 0)
  {
    v4 = *(a1 + 32);

    return [v4 registerUploadSchedulingActivity];
  }

  return result;
}

- (void)registerUploadSchedulingActivity
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = PLLogSubmission(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1D8611000, v3, OS_LOG_TYPE_DEFAULT, "Registering submission scheduler", buf, 2u);
  }

  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v4, *MEMORY[0x1E69E9D88], 1);
  xpc_dictionary_set_BOOL(v4, *MEMORY[0x1E69E9C40], 1);
  xpc_dictionary_set_BOOL(v4, *MEMORY[0x1E69E9DB0], 1);
  xpc_dictionary_set_BOOL(v4, *MEMORY[0x1E69E9DB8], 1);
  xpc_dictionary_set_string(v4, *MEMORY[0x1E69E9D18], *MEMORY[0x1E69E9D28]);
  xpc_dictionary_set_int64(v4, *MEMORY[0x1E69E9D40], 20971520);
  v5 = [PLDefaults longForKey:@"submissionActivityDelayInSecs" ifNotSet:0];
  v6 = v5;
  if (!v5)
  {
    v5 = arc4random_uniform(0x3Du);
    v6 = 60 * v5;
  }

  v7 = PLLogSubmission(v5);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v11 = v6;
    _os_log_impl(&dword_1D8611000, v7, OS_LOG_TYPE_DEFAULT, "Delay of %lld secs", buf, 0xCu);
  }

  xpc_dictionary_set_int64(v4, *MEMORY[0x1E69E9C68], v6);
  xpc_dictionary_set_int64(v4, *MEMORY[0x1E69E9CB0], *MEMORY[0x1E69E9CE0]);
  xpc_dictionary_set_int64(v4, *MEMORY[0x1E69E9C98], *MEMORY[0x1E69E9CC8]);
  xpc_dictionary_set_string(v4, *MEMORY[0x1E69E9D68], *MEMORY[0x1E69E9D70]);
  monotonicDate = [MEMORY[0x1E695DF00] monotonicDate];
  [monotonicDate timeIntervalSince1970];
  [(PLSubmissions *)self setLastXPCActivityTimestamp:?];

  [(PLSubmissions *)self setXpcActivityDelay:v6];
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __64__PLSubmissions_XPCScheduling__registerUploadSchedulingActivity__block_invoke;
  handler[3] = &unk_1E8519FA8;
  handler[4] = self;
  xpc_activity_register("com.apple.powerlogd.XPCScheduler", v4, handler);
  [(PLSubmissions *)self setXpcActivityStarted:1];
}

void __64__PLSubmissions_XPCScheduling__registerUploadSchedulingActivity__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PLLogSubmission(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1D8611000, v4, OS_LOG_TYPE_DEFAULT, "Scheduling for background work", buf, 2u);
  }

  state = xpc_activity_get_state(v3);
  if (state != 2)
  {
    v8 = PLLogSubmission(state);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1D8611000, v8, OS_LOG_TYPE_DEFAULT, "Activity state: not to run", buf, 2u);
    }

    goto LABEL_10;
  }

  v6 = xpc_activity_set_state(v3, 4);
  if (!v6)
  {
    v8 = PLLogSubmission(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __64__PLSubmissions_XPCScheduling__registerUploadSchedulingActivity__block_invoke_cold_1();
    }

LABEL_10:

    goto LABEL_11;
  }

  v7 = [*(a1 + 32) workQueue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __64__PLSubmissions_XPCScheduling__registerUploadSchedulingActivity__block_invoke_14;
  v9[3] = &unk_1E8519100;
  v9[4] = *(a1 + 32);
  v10 = v3;
  dispatch_async(v7, v9);

LABEL_11:
}

- (void)attemptToUnregisterUploadSchedulingActivity
{
  internalSubmissionBehavior = [(PLSubmissions *)self internalSubmissionBehavior];
  if (!internalSubmissionBehavior || ([MEMORY[0x1E695DF00] date], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x1E695DF00], "nearestMidnightAfterDate:", v4), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "timeIntervalSinceDate:", v4), v7 = v6, v8 = *MEMORY[0x1E69E9CE0], v5, v4, v7 >= v8))
  {
    v9 = PLLogSubmission(internalSubmissionBehavior);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_1D8611000, v9, OS_LOG_TYPE_DEFAULT, "Unregistering submission scheduler", v10, 2u);
    }

    xpc_activity_unregister("com.apple.powerlogd.XPCScheduler");
    [(PLSubmissions *)self setXpcActivityStarted:0];
    [(PLSubmissions *)self setLastXPCActivityTimestamp:0.0];
  }
}

- (void)handleXPCActivityCallback:(id)callback
{
  v27 = *MEMORY[0x1E69E9840];
  callbackCopy = callback;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  submissionQueue = [(PLSubmissions *)self submissionQueue];
  v6 = [submissionQueue countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v23 != v8)
      {
        objc_enumerationMutation(submissionQueue);
      }

      v10 = *(*(&v22 + 1) + 8 * v9);
      if (![v10 inSubmission])
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [submissionQueue countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v12 = v10;

    if (!v12)
    {
      goto LABEL_15;
    }

    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    filePath = [v12 filePath];
    v15 = [defaultManager fileExistsAtPath:filePath];

    if (v15)
    {
      if (callbackCopy && xpc_activity_should_defer(callbackCopy))
      {
        [(PLSubmissions *)self deferXPCActivity:callbackCopy];
      }

      else
      {
        [(PLSubmissions *)self submitRecord:v12 withActivity:callbackCopy];
      }
    }

    else
    {
      v20 = PLLogSubmission(v16);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *v21 = 0;
        _os_log_impl(&dword_1D8611000, v20, OS_LOG_TYPE_DEFAULT, "Submission record does not exist", v21, 2u);
      }

      [(PLSubmissions *)self fileCleanupWithRecord:v12];
      [(PLSubmissions *)self finishXPCActivity:callbackCopy];
    }
  }

  else
  {
LABEL_9:

LABEL_15:
    v17 = PLLogSubmission(v11);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *v21 = 0;
      _os_log_impl(&dword_1D8611000, v17, OS_LOG_TYPE_DEFAULT, "Nothing to submit", v21, 2u);
    }

    [(PLSubmissions *)self finishXPCActivity:callbackCopy];
    submissionQueue2 = [(PLSubmissions *)self submissionQueue];
    v19 = [submissionQueue2 count];

    if (!v19)
    {
      [(PLSubmissions *)self attemptToUnregisterUploadSchedulingActivity];
    }
  }
}

- (void)submitRecord:(id)record withActivity:(id)activity
{
  v71 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  activityCopy = activity;
  monotonicDate = [MEMORY[0x1E695DF00] monotonicDate];
  [monotonicDate timeIntervalSince1970];
  v10 = v9;

  [(PLSubmissions *)self lastXPCActivityTimestamp];
  v12 = v10 - v11;
  xpcActivityDelay = [(PLSubmissions *)self xpcActivityDelay];
  if (v12 >= v14)
  {
    v16 = PLLogSubmission([(PLSubmissions *)self setLastXPCActivityTimestamp:v10]);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v70 = recordCopy;
      _os_log_impl(&dword_1D8611000, v16, OS_LOG_TYPE_DEFAULT, "Submit record: %@", buf, 0xCu);
    }

    [recordCopy setInSubmission:1];
    filePath = [recordCopy filePath];
    tagConfig = [recordCopy tagConfig];
    v19 = [objc_alloc(MEMORY[0x1E695B898]) initWithContainerIdentifier:@"com.apple.perfpowerservices.tasking" environment:1];
    v20 = [objc_alloc(MEMORY[0x1E695B890]) initWithContainerID:v19];
    publicCloudDatabase = [v20 publicCloudDatabase];
    v21 = [objc_alloc(MEMORY[0x1E695BA58]) initWithRecordType:@"Attachment"];
    v22 = objc_alloc(MEMORY[0x1E695B870]);
    v23 = [MEMORY[0x1E695DFF8] fileURLWithPath:filePath];
    v24 = [v22 initWithFileURL:v23];

    if (v24)
    {
      v61 = v20;
      v62 = v19;
      v60 = v24;
      [v21 setObject:v24 forKeyedSubscript:@"asset"];
      lastPathComponent = [filePath lastPathComponent];
      [v21 setObject:lastPathComponent forKeyedSubscript:@"fileName"];

      v27 = [tagConfig objectForKeyedSubscript:@"Internal"];
      if ([v27 isEqualToString:@"true"])
      {
        v28 = &unk_1F5405D90;
      }

      else
      {
        v28 = &unk_1F5405DA8;
      }

      [v21 setObject:v28 forKeyedSubscript:@"internal"];

      v29 = [tagConfig objectForKeyedSubscript:@"Beta"];
      if ([v29 isEqualToString:@"true"])
      {
        v30 = &unk_1F5405D90;
      }

      else
      {
        v30 = &unk_1F5405DA8;
      }

      [v21 setObject:v30 forKeyedSubscript:@"seed"];

      [v21 setObject:@"iOS" forKeyedSubscript:@"machineType"];
      v31 = [v21 objectForKeyedSubscript:@"machineType"];
      v32 = [v31 isEqualToString:@"iOS"];

      if (v32 && +[PLPlatform isiPad])
      {
        [v21 setObject:@"iPadOS" forKeyedSubscript:@"machineType"];
      }

      v33 = [tagConfig objectForKeyedSubscript:@"Model"];

      if (v33)
      {
        v34 = [tagConfig objectForKeyedSubscript:@"Model"];
        [v21 setObject:v34 forKeyedSubscript:@"deviceModel"];
      }

      v35 = [tagConfig objectForKeyedSubscript:@"TagUUID"];

      if (v35)
      {
        v36 = [tagConfig objectForKeyedSubscript:@"TagUUID"];
        [v21 setObject:v36 forKeyedSubscript:@"UUID"];
      }

      v37 = [tagConfig objectForKeyedSubscript:@"Reason"];

      if (v37)
      {
        v38 = [tagConfig objectForKeyedSubscript:@"Reason"];
        [v21 setObject:v38 forKeyedSubscript:@"reason"];
      }

      v39 = [tagConfig objectForKeyedSubscript:@"Build"];

      if (v39)
      {
        v40 = [tagConfig objectForKeyedSubscript:@"Build"];
        [v21 setObject:v40 forKeyedSubscript:@"build"];
      }

      v41 = [tagConfig objectForKeyedSubscript:@"Date"];

      if (v41)
      {
        v42 = [tagConfig objectForKeyedSubscript:@"Date"];
        [v21 setObject:v42 forKeyedSubscript:@"date"];
      }

      v43 = [tagConfig objectForKeyedSubscript:@"ExtendedAttributes"];

      if (v43)
      {
        v44 = [tagConfig objectForKeyedSubscript:@"ExtendedAttributes"];
        [v21 setObject:v44 forKeyedSubscript:@"extendedAttributes"];
      }

      v45 = [tagConfig objectForKeyedSubscript:@"SubmittedFilesMask"];

      if (v45)
      {
        v46 = [tagConfig objectForKeyedSubscript:@"SubmittedFilesMask"];
        [v21 setObject:v46 forKeyedSubscript:@"submittedFilesMask"];
      }

      v47 = objc_alloc_init(MEMORY[0x1E695DF70]);
      [v47 addObject:v21];
      v48 = [objc_alloc(MEMORY[0x1E695B9C0]) initWithRecordsToSave:v47 recordIDsToDelete:0];
      configuration = [v48 configuration];
      [configuration setAllowsCellularAccess:0];

      configuration2 = [v48 configuration];
      [configuration2 setDiscretionaryNetworkBehavior:0];

      configuration3 = [v48 configuration];
      [configuration3 setPreferAnonymousRequests:1];

      configuration4 = [v48 configuration];
      [configuration4 setXpcActivity:activityCopy];

      [v48 setPerRecordCompletionBlock:&__block_literal_global_20];
      v66[0] = MEMORY[0x1E69E9820];
      v66[1] = 3221225472;
      v66[2] = __58__PLSubmissions_XPCScheduling__submitRecord_withActivity___block_invoke_107;
      v66[3] = &unk_1E8519FF0;
      v66[4] = self;
      v53 = recordCopy;
      v67 = v53;
      v54 = activityCopy;
      v68 = v54;
      [v48 setModifyRecordsCompletionBlock:v66];
      if (v54 && xpc_activity_should_defer(v54))
      {
        [(PLSubmissions *)self workQueue];
        v55 = v59 = filePath;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __58__PLSubmissions_XPCScheduling__submitRecord_withActivity___block_invoke_2;
        block[3] = &unk_1E85190B8;
        v65 = v53;
        dispatch_async(v55, block);

        filePath = v59;
        [(PLSubmissions *)self deferXPCActivity:v54];

        v19 = v62;
        v56 = publicCloudDatabase;
      }

      else
      {
        v56 = publicCloudDatabase;
        [publicCloudDatabase addOperation:v48];
        v19 = v62;
      }

      v57 = v60;

      v20 = v61;
    }

    else
    {
      v58 = PLLogSubmission(v25);
      if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
      {
        [PLSubmissions(XPCScheduling) submitRecord:filePath withActivity:v58];
      }

      [(PLSubmissions *)self fileCleanupWithRecord:recordCopy];
      [(PLSubmissions *)self finishXPCActivity:activityCopy];
      v56 = publicCloudDatabase;
      v57 = 0;
    }
  }

  else
  {
    v15 = PLLogSubmission(xpcActivityDelay);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1D8611000, v15, OS_LOG_TYPE_DEFAULT, "Upload activity triggered earlier than delay. Deferring...", buf, 2u);
    }

    [(PLSubmissions *)self finishXPCActivity:activityCopy];
  }
}

void __58__PLSubmissions_XPCScheduling__submitRecord_withActivity___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = PLLogSubmission(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __58__PLSubmissions_XPCScheduling__submitRecord_withActivity___block_invoke_cold_1();
  }
}

void __58__PLSubmissions_XPCScheduling__submitRecord_withActivity___block_invoke_107(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a4;
  v8 = PLLogSubmission(v7);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v9)
    {
      *buf = 138412546;
      v30 = v6;
      v31 = 2112;
      v32 = v7;
      _os_log_impl(&dword_1D8611000, v8, OS_LOG_TYPE_DEFAULT, "Failed to submit ck records %@, error: %@", buf, 0x16u);
    }

    v10 = [*(a1 + 32) workQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __58__PLSubmissions_XPCScheduling__submitRecord_withActivity___block_invoke_108;
    block[3] = &unk_1E85190B8;
    v28 = *(a1 + 40);
    dispatch_async(v10, block);

    v11 = [v7 domain];
    v12 = *MEMORY[0x1E695B738];
    if ([v11 isEqualToString:*MEMORY[0x1E695B738]])
    {
      v13 = [v7 code];

      if (v13 != 20)
      {
LABEL_25:
        [*(a1 + 32) finishXPCActivity:*(a1 + 48)];
LABEL_26:
        v20 = v28;
        goto LABEL_27;
      }

      v14 = [v7 userInfo];
      v11 = [v14 objectForKeyedSubscript:*MEMORY[0x1E696AA08]];

      v15 = [v11 domain];
      v16 = [v15 isEqualToString:v12];

      if (v16)
      {
        if ([v11 code] == 130)
        {
          v17 = PLLogSubmission(130);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            __58__PLSubmissions_XPCScheduling__submitRecord_withActivity___block_invoke_107_cold_2();
          }
        }

        else
        {
          if ([v11 code] == 131)
          {
            v21 = PLLogSubmission(131);
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_1D8611000, v21, OS_LOG_TYPE_DEFAULT, "Activity needs to be deferred", buf, 2u);
            }

            [*(a1 + 32) deferXPCActivity:*(a1 + 48)];
            goto LABEL_26;
          }

          if ([v11 code] != 2000 && objc_msgSend(v11, "code") != 2001 && objc_msgSend(v11, "code") != 2002 && objc_msgSend(v11, "code") != 2009 && objc_msgSend(v11, "code") != 2022 || +[PLDefaults longForKey:ifNotSet:](PLDefaults, "longForKey:ifNotSet:", @"submissionActivityDelayInSecs", 0))
          {
            goto LABEL_24;
          }

          v22 = arc4random_uniform(0xB4u);
          v23 = xpc_activity_copy_criteria(*(a1 + 48));
          v17 = v23;
          if (v23)
          {
            xpc_dictionary_set_int64(v23, *MEMORY[0x1E69E9C68], (v22 * 60.0 + 3600.0));
            xpc_activity_set_criteria(*(a1 + 48), v17);
          }

          else
          {
            v24 = PLLogSubmission(0);
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              __58__PLSubmissions_XPCScheduling__submitRecord_withActivity___block_invoke_107_cold_1();
            }
          }
        }
      }
    }

LABEL_24:

    goto LABEL_25;
  }

  if (v9)
  {
    *buf = 138412290;
    v30 = v6;
    _os_log_impl(&dword_1D8611000, v8, OS_LOG_TYPE_DEFAULT, "Submission of ck records %@ succeeded", buf, 0xCu);
  }

  [*(a1 + 40) emitSuccessEvent];
  [*(a1 + 32) logSubmissionStateToAnalytics:@"success"];
  v18 = [*(a1 + 32) workQueue];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __58__PLSubmissions_XPCScheduling__submitRecord_withActivity___block_invoke_109;
  v25[3] = &unk_1E8519100;
  v19 = *(a1 + 40);
  v25[4] = *(a1 + 32);
  v26 = v19;
  dispatch_async(v18, v25);

  [*(a1 + 32) finishXPCActivity:*(a1 + 48)];
  v20 = v26;
LABEL_27:
}

- (void)finishXPCActivity:(id)activity
{
  activityCopy = activity;
  v4 = activityCopy;
  if (activityCopy)
  {
    state = xpc_activity_get_state(activityCopy);
    if (state == 4)
    {
      v6 = xpc_activity_set_state(v4, 5);
      v7 = v6;
      v8 = PLLogSubmission(v6);
      v9 = v8;
      if (v7)
      {
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *v10 = 0;
          _os_log_impl(&dword_1D8611000, v9, OS_LOG_TYPE_DEFAULT, "Set background state to done", v10, 2u);
        }
      }

      else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [PLSubmissions(XPCScheduling) finishXPCActivity:];
      }
    }

    else
    {
      v9 = PLLogSubmission(state);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [PLSubmissions(XPCScheduling) finishXPCActivity:];
      }
    }
  }
}

- (void)deferXPCActivity:(id)activity
{
  activityCopy = activity;
  v4 = activityCopy;
  if (activityCopy)
  {
    if (xpc_activity_get_state(activityCopy) == 3)
    {
      v5 = PLLogSubmission(3);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 0;
        v6 = "Background state already in defer";
        v7 = &v11;
LABEL_10:
        _os_log_impl(&dword_1D8611000, v5, OS_LOG_TYPE_DEFAULT, v6, v7, 2u);
      }
    }

    else
    {
      v8 = xpc_activity_set_state(v4, 3);
      v9 = v8;
      v5 = PLLogSubmission(v8);
      v10 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
      if (v9)
      {
        if (v10)
        {
          v13 = 0;
          v6 = "Set background state to defer";
          v7 = &v13;
          goto LABEL_10;
        }
      }

      else if (v10)
      {
        *buf = 0;
        v6 = "Failed to set background state to defer";
        v7 = buf;
        goto LABEL_10;
      }
    }
  }
}

- (void)fileCleanupWithRecord:(id)record
{
  v16 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  v5 = PLLogSubmission(recordCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = recordCopy;
    _os_log_impl(&dword_1D8611000, v5, OS_LOG_TYPE_DEFAULT, "Removing submission record %@", &v14, 0xCu);
  }

  filePath = [recordCopy filePath];
  [(PLSubmissions *)self removeFileAtPath:filePath];

  daFileDirPath = [recordCopy daFileDirPath];
  [(PLSubmissions *)self removeFileAtPath:daFileDirPath];

  ckFileDirPath = [recordCopy ckFileDirPath];
  [(PLSubmissions *)self removeFileAtPath:ckFileDirPath];

  v9 = NSTemporaryDirectory();
  v10 = [v9 stringByAppendingPathComponent:@"PLSubmissionConfig"];
  tagUUID = [recordCopy tagUUID];
  v12 = [v10 stringByAppendingPathComponent:tagUUID];
  [(PLSubmissions *)self removeFileAtPath:v12];

  submissionQueue = [(PLSubmissions *)self submissionQueue];
  [submissionQueue removeObject:recordCopy];
}

- (void)removeFileAtURL:(id)l
{
  v13 = *MEMORY[0x1E69E9840];
  lCopy = l;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v10 = 0;
  v5 = [defaultManager removeItemAtURL:lCopy error:&v10];
  v6 = v10;

  v8 = PLLogSubmission(v7);
  v9 = v8;
  if (v5)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = lCopy;
      _os_log_impl(&dword_1D8611000, v9, OS_LOG_TYPE_DEFAULT, "Removed file at %@", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [PLSubmissions(XPCScheduling) removeFileAtURL:];
  }
}

- (void)removeFileAtPath:(id)path
{
  v13 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v10 = 0;
  v5 = [defaultManager removeItemAtPath:pathCopy error:&v10];
  v6 = v10;

  v8 = PLLogSubmission(v7);
  v9 = v8;
  if (v5)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = pathCopy;
      _os_log_impl(&dword_1D8611000, v9, OS_LOG_TYPE_DEFAULT, "Removed file at %@", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [PLSubmissions(XPCScheduling) removeFileAtURL:];
  }
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__PLSubmissions_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken_4 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_4, block);
  }

  v2 = sharedInstance_instance_2;

  return v2;
}

uint64_t __31__PLSubmissions_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(objc_opt_class());
  sharedInstance_instance_2 = v1;

  return MEMORY[0x1EEE66BB8](v1);
}

- (id)workQueue
{
  v2 = objc_opt_class();

  return [PLUtilities workQueueForClass:v2];
}

- (PLSubmissions)init
{
  if (+[PLUtilities isPowerlogHelperd](PLUtilities, "isPowerlogHelperd") || +[PLUtilities isPerfPowerMetricd])
  {
    selfCopy = 0;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = PLSubmissions;
    v4 = [(PLSubmissions *)&v12 init];
    if (v4)
    {
      v5 = +[PLSQLiteConnection sharedSQLiteConnection];
      connection = v4->_connection;
      v4->_connection = v5;

      [(PLSubmissions *)v4 setXpcActivityStarted:0];
      v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
      [(PLSubmissions *)v4 setSubmissionQueue:v7];

      workQueue = [(PLSubmissions *)v4 workQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __21__PLSubmissions_init__block_invoke;
      block[3] = &unk_1E85190B8;
      v11 = v4;
      dispatch_async(workQueue, block);
    }

    self = v4;
    selfCopy = self;
  }

  return selfCopy;
}

uint64_t __21__PLSubmissions_init__block_invoke(uint64_t a1)
{
  [*(a1 + 32) initSubmissionQueue];
  v2 = *(a1 + 32);

  return [v2 setupDRTasking];
}

- (void)setupDRTasking
{
  v3 = objc_alloc(MEMORY[0x1E699A070]);
  workQueue = [(PLSubmissions *)self workQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __31__PLSubmissions_setupDRTasking__block_invoke;
  v7[3] = &unk_1E8519E90;
  v7[4] = self;
  v5 = [v3 initWithTeamID:@"perfpowerservices.config" targetQueue:workQueue configProcessingBlock:v7];
  [(PLSubmissions *)self setTaskingMonitor:v5];

  taskingMonitor = [(PLSubmissions *)self taskingMonitor];
  [taskingMonitor startMonitoring];
}

- (id)configFromMonitor:(id)monitor
{
  monitorCopy = monitor;
  v10 = 0;
  v4 = [monitorCopy currentConfigSnapshotWithErrorOut:&v10];
  v5 = v10;
  v6 = v5;
  if (v5)
  {
    v7 = PLLogSubmission(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(PLSubmissions *)monitorCopy configFromMonitor:v6, v7];
    }

    v8 = 0;
  }

  else
  {
    v8 = v4;
  }

  return v8;
}

- (void)stopDRTasking
{
  v3 = PLLogSubmission(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1D8611000, v3, OS_LOG_TYPE_DEFAULT, "Stop monitoring DRConfig", v5, 2u);
  }

  taskingMonitor = [(PLSubmissions *)self taskingMonitor];
  [taskingMonitor stopMonitoring];
}

- (BOOL)taskingBlobDRExists
{
  selfCopy = self;
  taskingMonitor = [(PLSubmissions *)self taskingMonitor];
  v4 = [(PLSubmissions *)selfCopy configFromMonitor:taskingMonitor];
  LOBYTE(selfCopy) = v4 != 0;

  return selfCopy;
}

- (BOOL)taskingBlobLegacyExists
{
  v2 = PLOSAPreferencesGetValue();
  v3 = v2 != 0;

  return v3;
}

- (BOOL)taskingBlobExists
{
  if ([(PLSubmissions *)self taskingBlobDRExists])
  {
    return 1;
  }

  return [(PLSubmissions *)self taskingBlobLegacyExists];
}

- (BOOL)taskingTypeSpecified
{
  getCurrentDRConfig = [(PLSubmissions *)self getCurrentDRConfig];
  v3 = getCurrentDRConfig;
  if (getCurrentDRConfig)
  {
    payloadDictionaryRepresentation = [getCurrentDRConfig payloadDictionaryRepresentation];
    v5 = [payloadDictionaryRepresentation objectForKeyedSubscript:@"PLTaskingType"];

    v6 = v5 != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)internalSubmissionBehavior
{
  v3 = +[PLPlatform internalBuild];
  if (v3)
  {
    if ([(PLSubmissions *)self taskingBlobDRExists])
    {
      LOBYTE(v3) = 0;
    }

    else
    {
      LOBYTE(v3) = ![(PLSubmissions *)self taskingBlobLegacyExists];
    }
  }

  return v3;
}

- (BOOL)fullModeSubmissionBehavior
{
  if (!+[PLPlatform internalBuild](PLPlatform, "internalBuild") || !+[PLDefaults fullMode])
  {
    return 0;
  }

  return [(PLSubmissions *)self taskingBlobExists];
}

- (void)handleDRConfigUpdate:(id)update error:(id)error
{
  v24 = *MEMORY[0x1E69E9840];
  updateCopy = update;
  errorCopy = error;
  v8 = errorCopy;
  if (errorCopy)
  {
    v9 = PLLogSubmission(errorCopy);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [PLSubmissions handleDRConfigUpdate:error:];
    }

LABEL_8:

    goto LABEL_9;
  }

  if (updateCopy)
  {
    v10 = PLLogSubmission(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      teamID = [updateCopy teamID];
      configUUID = [updateCopy configUUID];
      receivedDate = [updateCopy receivedDate];
      *buf = 138412802;
      v19 = teamID;
      v20 = 2112;
      v21 = configUUID;
      v22 = 2112;
      v23 = receivedDate;
      _os_log_impl(&dword_1D8611000, v10, OS_LOG_TYPE_DEFAULT, "DRConfig for teamID <%@> received: %@, receive time: %@", buf, 0x20u);
    }

    v17 = updateCopy;
    AnalyticsSendEventLazy();
    v9 = v17;
    goto LABEL_8;
  }

  if (+[PLDefaults taskMode])
  {
    v14 = [PLDefaults objectExistsForKey:@"PLTaskingOnDemandStartDate"];
    if (v14)
    {
      v15 = PLLogSubmission(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1D8611000, v15, OS_LOG_TYPE_DEFAULT, "DRConfig cancelled, exiting task mode...", buf, 2u);
      }

      v16 = MEMORY[0x1E69E9820];
      AnalyticsSendEventLazy();
      [(PLSubmissions *)self taskingCleanup:v16];
      PowerlogControlSwitchMode();
      v9 = 0;
      goto LABEL_8;
    }
  }

LABEL_9:
}

id __44__PLSubmissions_handleDRConfigUpdate_error___block_invoke(id *a1)
{
  v1 = a1;
  v8[5] = *MEMORY[0x1E69E9840];
  v7[0] = @"SubmissionConfigUUID";
  v2 = [a1[4] configUUID];
  if (v2)
  {
    v1 = [v1[4] configUUID];
    v3 = [v1 UUIDString];
  }

  else
  {
    v3 = @"UNKNOWN";
  }

  v8[0] = v3;
  v8[1] = &unk_1F54061C8;
  v7[1] = @"SubmissionError";
  v7[2] = @"SubmissionMode";
  v4 = [MEMORY[0x1E696AD98] numberWithLong:{+[PLDefaults mode](PLDefaults, "mode")}];
  v8[2] = v4;
  v8[3] = &unk_1F54061E0;
  v7[3] = @"SubmissionReason";
  v7[4] = @"SubmissionStage";
  v8[4] = &unk_1F54061C8;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:5];

  if (v2)
  {
  }

  return v5;
}

id __44__PLSubmissions_handleDRConfigUpdate_error___block_invoke_114(id *a1)
{
  v1 = a1;
  v8[5] = *MEMORY[0x1E69E9840];
  v7[0] = @"SubmissionConfigUUID";
  v2 = [a1[4] configUUID];
  if (v2)
  {
    v1 = [v1[4] configUUID];
    v3 = [v1 UUIDString];
  }

  else
  {
    v3 = @"UNKNOWN";
  }

  v8[0] = v3;
  v8[1] = &unk_1F54061F8;
  v7[1] = @"SubmissionError";
  v7[2] = @"SubmissionMode";
  v4 = [MEMORY[0x1E696AD98] numberWithLong:{+[PLDefaults mode](PLDefaults, "mode")}];
  v8[2] = v4;
  v8[3] = &unk_1F5406210;
  v7[3] = @"SubmissionReason";
  v7[4] = @"SubmissionStage";
  v8[4] = &unk_1F5406228;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:5];

  if (v2)
  {
  }

  return v5;
}

- (id)getCurrentDRConfig
{
  taskingMonitor = [(PLSubmissions *)self taskingMonitor];
  v4 = [(PLSubmissions *)self configFromMonitor:taskingMonitor];

  return v4;
}

- (signed)submitReasonForToday
{
  if (+[PLDefaults debugEnabled])
  {
    v3 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __37__PLSubmissions_submitReasonForToday__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v3;
    if (submitReasonForToday_defaultOnce != -1)
    {
      dispatch_once(&submitReasonForToday_defaultOnce, block);
    }

    if (submitReasonForToday_classDebugEnabled == 1)
    {
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"submission check: taskMode = %d", +[PLDefaults taskMode](PLDefaults, "taskMode")];
      v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLSubmissions.m"];
      lastPathComponent = [v5 lastPathComponent];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSubmissions submitReasonForToday]"];
      [PLCoreStorage logMessage:v4 fromFile:lastPathComponent fromFunction:v7 fromLineNumber:290];

      v9 = PLLogCommon(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  if (!+[PLDefaults taskMode])
  {
    goto LABEL_53;
  }

  if (+[PLDefaults debugEnabled])
  {
    v10 = objc_opt_class();
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __37__PLSubmissions_submitReasonForToday__block_invoke_133;
    v42[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v42[4] = v10;
    if (submitReasonForToday_defaultOnce_131 != -1)
    {
      dispatch_once(&submitReasonForToday_defaultOnce_131, v42);
    }

    if (submitReasonForToday_classDebugEnabled_132 == 1)
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"tasking submission configured"];
      v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLSubmissions.m"];
      lastPathComponent2 = [v12 lastPathComponent];
      v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSubmissions submitReasonForToday]"];
      [PLCoreStorage logMessage:v11 fromFile:lastPathComponent2 fromFunction:v14 fromLineNumber:292];

      v16 = PLLogCommon(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  checkTaskingCompletionStatus = [(PLSubmissions *)self checkTaskingCompletionStatus];
  v18 = checkTaskingCompletionStatus ? 2 : 1;
  [(PLSubmissions *)self logTaskingStatus:checkTaskingCompletionStatus withAction:v18];
  if (!checkTaskingCompletionStatus)
  {
    LOWORD(v26) = 3;
  }

  else
  {
LABEL_53:
    if ([(PLSubmissions *)self internalSubmissionBehavior])
    {
      if (+[PLDefaults debugEnabled])
      {
        v19 = objc_opt_class();
        v41[0] = MEMORY[0x1E69E9820];
        v41[1] = 3221225472;
        v41[2] = __37__PLSubmissions_submitReasonForToday__block_invoke_139;
        v41[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v41[4] = v19;
        if (submitReasonForToday_defaultOnce_137 != -1)
        {
          dispatch_once(&submitReasonForToday_defaultOnce_137, v41);
        }

        if (submitReasonForToday_classDebugEnabled_138 == 1)
        {
          v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"internal submission configured"];
          v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLSubmissions.m"];
          lastPathComponent3 = [v21 lastPathComponent];
          v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSubmissions submitReasonForToday]"];
          [PLCoreStorage logMessage:v20 fromFile:lastPathComponent3 fromFunction:v23 fromLineNumber:302];

          v25 = PLLogCommon(v24);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
          {
            [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
          }
        }
      }

      LOWORD(v26) = 1;
    }

    else
    {
      fullModeSubmissionBehavior = [(PLSubmissions *)self fullModeSubmissionBehavior];
      if (fullModeSubmissionBehavior)
      {
        v28 = PLLogSubmission(fullModeSubmissionBehavior);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1D8611000, v28, OS_LOG_TYPE_DEFAULT, "Tasking blob received for internal device in Full Mode.", buf, 2u);
        }

        if ([(PLSubmissions *)self taskingTypeSpecified])
        {
          LOWORD(v26) = 5;
        }

        else
        {
          LOWORD(v26) = 3;
        }
      }

      else
      {
        v29 = +[PLPlatform internalBuild];
        if (v29)
        {
          v30 = PLLogSubmission(v29);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1D8611000, v30, OS_LOG_TYPE_DEFAULT, "Tasking blob received for internal device", buf, 2u);
          }
        }

        if ([(PLSubmissions *)self taskingTypeSpecified])
        {
          LOWORD(v26) = 5;
        }

        else
        {
          v26 = +[PLDefaults debugEnabled];
          if (v26)
          {
            v31 = objc_opt_class();
            v39[0] = MEMORY[0x1E69E9820];
            v39[1] = 3221225472;
            v39[2] = __37__PLSubmissions_submitReasonForToday__block_invoke_145;
            v39[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            v39[4] = v31;
            if (submitReasonForToday_defaultOnce_143 != -1)
            {
              dispatch_once(&submitReasonForToday_defaultOnce_143, v39);
            }

            if (submitReasonForToday_classDebugEnabled_144 == 1)
            {
              v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"submission not configured"];
              v33 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLSubmissions.m"];
              lastPathComponent4 = [v33 lastPathComponent];
              v35 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSubmissions submitReasonForToday]"];
              [PLCoreStorage logMessage:v32 fromFile:lastPathComponent4 fromFunction:v35 fromLineNumber:315];

              v37 = PLLogCommon(v36);
              if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
              {
                [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
              }
            }

            LOWORD(v26) = 0;
          }
        }
      }
    }
  }

  return v26;
}

BOOL __37__PLSubmissions_submitReasonForToday__block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  submitReasonForToday_classDebugEnabled = result;
  return result;
}

BOOL __37__PLSubmissions_submitReasonForToday__block_invoke_133(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  submitReasonForToday_classDebugEnabled_132 = result;
  return result;
}

BOOL __37__PLSubmissions_submitReasonForToday__block_invoke_139(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  submitReasonForToday_classDebugEnabled_138 = result;
  return result;
}

BOOL __37__PLSubmissions_submitReasonForToday__block_invoke_145(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  submitReasonForToday_classDebugEnabled_144 = result;
  return result;
}

- (void)generateOTASubmissionAndSendTaskingEndSubmission:(BOOL)submission
{
  submissionCopy = submission;
  v71 = *MEMORY[0x1E69E9840];
  AnalyticsSendEventLazy();
  getCurrentDRConfig = [(PLSubmissions *)self getCurrentDRConfig];
  submitReasonForToday = [(PLSubmissions *)self submitReasonForToday];
  v46 = getCurrentDRConfig;
  v6 = [[PLSubmissionConfig alloc] initWithReasonType:submitReasonForToday DRConfig:getCurrentDRConfig];
  getLastBatteryTimestampSystem = [(PLSubmissions *)self getLastBatteryTimestampSystem];
  [(PLSubmissionConfig *)v6 setLastBatteryTimestampSystem:getLastBatteryTimestampSystem];

  v9 = PLLogSubmission(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v54) = submitReasonForToday;
    _os_log_impl(&dword_1D8611000, v9, OS_LOG_TYPE_DEFAULT, "Submit reason type: %hd", buf, 8u);
  }

  v11 = PLLogSubmission(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    teamID = [v46 teamID];
    configUUID = [v46 configUUID];
    *buf = 138412546;
    v54 = teamID;
    v55 = 2112;
    v56 = configUUID;
    _os_log_impl(&dword_1D8611000, v11, OS_LOG_TYPE_DEFAULT, "Current DRConfig teamID: %@, UUID: %@", buf, 0x16u);
  }

  v15 = PLLogSubmission(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    payloadDictionaryRepresentation = [v46 payloadDictionaryRepresentation];
    *buf = 138412290;
    v54 = payloadDictionaryRepresentation;
    _os_log_impl(&dword_1D8611000, v15, OS_LOG_TYPE_DEFAULT, "DRConfig payload: %@", buf, 0xCu);
  }

  v18 = PLLogSubmission(v17);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    selfCopy = self;
    v19 = [MEMORY[0x1E696AD98] numberWithBool:{-[PLSubmissionConfig hasFileToSubmit](v6, "hasFileToSubmit")}];
    v20 = [MEMORY[0x1E696AD98] numberWithBool:{-[PLSubmissionConfig submitPLL](v6, "submitPLL")}];
    [MEMORY[0x1E696AD98] numberWithBool:{-[PLSubmissionConfig submitPLLUpgrade](v6, "submitPLLUpgrade")}];
    submitReasonForToday = v43 = submitReasonForToday;
    v21 = [MEMORY[0x1E696AD98] numberWithBool:{-[PLSubmissionConfig submitMSS](v6, "submitMSS")}];
    v22 = [MEMORY[0x1E696AD98] numberWithBool:{-[PLSubmissionConfig submitSP](v6, "submitSP")}];
    v42 = [MEMORY[0x1E696AD98] numberWithBool:{-[PLSubmissionConfig submitBDC](v6, "submitBDC")}];
    v41 = [MEMORY[0x1E696AD98] numberWithBool:{-[PLSubmissionConfig submitBG](v6, "submitBG")}];
    v23 = [MEMORY[0x1E696AD98] numberWithBool:{-[PLSubmissionConfig submitCE](v6, "submitCE")}];
    v24 = [MEMORY[0x1E696AD98] numberWithBool:{-[PLSubmissionConfig submitXC](v6, "submitXC")}];
    *buf = 138414338;
    v54 = v19;
    v55 = 2112;
    v56 = v20;
    v57 = 2112;
    v58 = submitReasonForToday;
    v59 = 2112;
    v60 = v21;
    v61 = 2112;
    v62 = v22;
    v63 = 2112;
    v64 = v42;
    v65 = 2112;
    v66 = v41;
    v67 = 2112;
    v68 = v23;
    v69 = 2112;
    v70 = v24;
    _os_log_impl(&dword_1D8611000, v18, OS_LOG_TYPE_DEFAULT, "Tasking config BOOLs: hasFileToSubmit=%@, PLL=%@, PLL-UPGRADE=%@, MSS=%@, SP=%@, BDC=%@, BG=%@, CE=%@, XC=%@", buf, 0x5Cu);

    self = selfCopy;
    LODWORD(submitReasonForToday) = v43;
  }

  block[5] = MEMORY[0x1E69E9820];
  block[6] = 3221225472;
  block[7] = __66__PLSubmissions_generateOTASubmissionAndSendTaskingEndSubmission___block_invoke_150;
  block[8] = &unk_1E8519A88;
  v25 = v6;
  v52 = v25;
  AnalyticsSendEventLazy();
  if (!submitReasonForToday)
  {
    [(PLSubmissions *)self emitBlobDetectedEvent:v25];
  }

  hasFileToSubmit = [(PLSubmissionConfig *)v25 hasFileToSubmit];
  if (hasFileToSubmit)
  {
    submitPLL = [(PLSubmissionConfig *)v25 submitPLL];
    if (submitPLL && submitReasonForToday == 3 && submissionCopy)
    {
      v28 = PLLogSubmission(submitPLL);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1D8611000, v28, OS_LOG_TYPE_DEFAULT, "On demand tasking about to end, giving grace period of 10 secs...", buf, 2u);
      }

      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter postNotificationName:@"kPLTaskingEndNotification" object:self];

      v30 = dispatch_time(0, 10000000000);
      workQueue = [(PLSubmissions *)self workQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __66__PLSubmissions_generateOTASubmissionAndSendTaskingEndSubmission___block_invoke_154;
      block[3] = &unk_1E85190B8;
      block[4] = self;
      dispatch_after(v30, workQueue, block);

      goto LABEL_36;
    }

    if ([(PLSubmissionConfig *)v25 submitPLL]|| (submitReasonForToday & 0xFFFFFFFB) == 1 && [(PLSubmissionConfig *)v25 submitXC])
    {
      if ((submitReasonForToday - 1) > 2)
      {
        if (submitReasonForToday != 5)
        {
LABEL_35:
          workQueue2 = [(PLSubmissions *)self workQueue];
          v47[0] = MEMORY[0x1E69E9820];
          v47[1] = 3221225472;
          v47[2] = __66__PLSubmissions_generateOTASubmissionAndSendTaskingEndSubmission___block_invoke_155;
          v47[3] = &unk_1E851AF20;
          v25 = v25;
          v48 = v25;
          selfCopy2 = self;
          v50 = submitReasonForToday;
          dispatch_async(workQueue2, v47);

          goto LABEL_36;
        }

        shouldSubmitToday = [(PLSubmissionConfig *)v25 shouldSubmitToday];
        v34 = shouldSubmitToday;
        v35 = PLLogSubmission(shouldSubmitToday);
        v36 = os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);
        if (!v34)
        {
          if (v36)
          {
            *buf = 0;
            _os_log_impl(&dword_1D8611000, v35, OS_LOG_TYPE_DEFAULT, "Skipping conditional tasking...", buf, 2u);
          }

          goto LABEL_35;
        }

        if (v36)
        {
          *buf = 0;
          _os_log_impl(&dword_1D8611000, v35, OS_LOG_TYPE_DEFAULT, "Starting conditional tasking...", buf, 2u);
        }
      }
    }

    else
    {
      if ([(PLSubmissionConfig *)v25 submitPLLUpgrade])
      {
        v37 = [[PLSubmissionConfig alloc] initWithReasonType:4 DRConfig:v46];

        getLastBatteryTimestampSystem2 = [(PLSubmissions *)self getLastBatteryTimestampSystem];
        [(PLSubmissionConfig *)v37 setLastBatteryTimestampSystem:getLastBatteryTimestampSystem2];

        [(PLSubmissions *)self submitWithTaskingConfig:v37];
        v25 = v37;
        goto LABEL_35;
      }

      shouldStartTaskingToday = [(PLSubmissionConfig *)v25 shouldStartTaskingToday];
      [(PLSubmissions *)self emitBlobVerifiedEvent:v25];
      if (!shouldStartTaskingToday)
      {
        goto LABEL_35;
      }

      [(PLSubmissionConfig *)v25 setSubmitReasonType:3];
    }

    [(PLSubmissions *)self submitWithTaskingConfig:v25];
    goto LABEL_35;
  }

  v32 = PLLogSubmission(hasFileToSubmit);
  if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
  {
    [(PLSubmissions *)submitReasonForToday generateOTASubmissionAndSendTaskingEndSubmission:v32];
  }

  [(PLSubmissions *)self taskingCleanup];
LABEL_36:
}

id __66__PLSubmissions_generateOTASubmissionAndSendTaskingEndSubmission___block_invoke()
{
  v4[1] = *MEMORY[0x1E69E9840];
  v3 = @"SubmissionMode";
  v0 = [MEMORY[0x1E696AD98] numberWithLong:{+[PLDefaults mode](PLDefaults, "mode")}];
  v4[0] = v0;
  v1 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:&v3 count:1];

  return v1;
}

id __66__PLSubmissions_generateOTASubmissionAndSendTaskingEndSubmission___block_invoke_150(uint64_t a1)
{
  v11[5] = *MEMORY[0x1E69E9840];
  v10[0] = @"SubmissionConfigUUID";
  v3 = [*(a1 + 32) configUUID];
  if (v3)
  {
    v1 = [*(a1 + 32) configUUID];
    v4 = [v1 UUIDString];
  }

  else
  {
    v4 = @"UNKNOWN";
  }

  v11[0] = v4;
  v10[1] = @"SubmissionError";
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "hasFileToSubmit") ^ 1}];
  v11[1] = v5;
  v10[2] = @"SubmissionMode";
  v6 = [MEMORY[0x1E696AD98] numberWithLong:{+[PLDefaults mode](PLDefaults, "mode")}];
  v11[2] = v6;
  v10[3] = @"SubmissionReason";
  v7 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(*(a1 + 32), "submitReasonType")}];
  v10[4] = @"SubmissionStage";
  v11[3] = v7;
  v11[4] = &unk_1F5406258;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:5];

  if (v3)
  {
  }

  return v8;
}

void __66__PLSubmissions_generateOTASubmissionAndSendTaskingEndSubmission___block_invoke_155(uint64_t a1)
{
  v2 = PLLogSubmission(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1D8611000, v2, OS_LOG_TYPE_DEFAULT, "Starting mode check...", buf, 2u);
  }

  v3 = +[PLDefaults taskMode];
  if (v3)
  {
    v4 = PLLogSubmission(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1D8611000, v4, OS_LOG_TYPE_DEFAULT, "End mode", buf, 2u);
    }

    v9 = *(a1 + 32);
    AnalyticsSendEventLazy();
    [*(a1 + 40) taskingCleanup];
    PowerlogControlSwitchMode();
  }

  else
  {
    v5 = [*(a1 + 32) submitPLL];
    if (v5 && *(a1 + 48) != 5 && (v6 = [*(a1 + 32) shouldStartTaskingToday], v5 = objc_msgSend(*(a1 + 40), "emitBlobVerifiedEvent:", *(a1 + 32)), v6))
    {
      v7 = PLLogSubmission(v5);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1D8611000, v7, OS_LOG_TYPE_DEFAULT, "Start mode", buf, 2u);
      }

      PowerlogControlSwitchMode();
    }

    else
    {
      v8 = PLLogSubmission(v5);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1D8611000, v8, OS_LOG_TYPE_DEFAULT, "Defaults cleanup", buf, 2u);
      }

      [*(a1 + 40) taskingCleanup];
    }
  }
}

id __66__PLSubmissions_generateOTASubmissionAndSendTaskingEndSubmission___block_invoke_156(uint64_t a1)
{
  v10[5] = *MEMORY[0x1E69E9840];
  v9[0] = @"SubmissionConfigUUID";
  v3 = [*(a1 + 32) configUUID];
  if (v3)
  {
    v1 = [*(a1 + 32) configUUID];
    v4 = [v1 UUIDString];
  }

  else
  {
    v4 = @"UNKNOWN";
  }

  v10[0] = v4;
  v10[1] = &unk_1F54061C8;
  v9[1] = @"SubmissionError";
  v9[2] = @"SubmissionMode";
  v5 = [MEMORY[0x1E696AD98] numberWithLong:{+[PLDefaults mode](PLDefaults, "mode")}];
  v10[2] = v5;
  v9[3] = @"SubmissionReason";
  v6 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(*(a1 + 32), "submitReasonType")}];
  v9[4] = @"SubmissionStage";
  v10[3] = v6;
  v10[4] = &unk_1F5406228;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:5];

  if (v3)
  {
  }

  return v7;
}

- (void)performSubmission:(id)submission
{
  submissionCopy = submission;
  AnalyticsSendEventLazy();
  v4 = [(PLSubmissions *)self createWatchdogForSubmissionActivity:@"OTA"];
  [(PLSubmissions *)self prepareAndEnqueueSubmissionFilesWithConfig:submissionCopy];
  [(PLSubmissions *)self stopWatchdogForSubmissionActivity:v4];
  v5 = submissionCopy;
  AnalyticsSendEventLazy();
}

id __35__PLSubmissions_performSubmission___block_invoke(uint64_t a1)
{
  v10[5] = *MEMORY[0x1E69E9840];
  v9[0] = @"SubmissionConfigUUID";
  v3 = [*(a1 + 32) configUUID];
  if (v3)
  {
    v1 = [*(a1 + 32) configUUID];
    v4 = [v1 UUIDString];
  }

  else
  {
    v4 = @"UNKNOWN";
  }

  v10[0] = v4;
  v10[1] = &unk_1F54061C8;
  v9[1] = @"SubmissionError";
  v9[2] = @"SubmissionMode";
  v5 = [MEMORY[0x1E696AD98] numberWithLong:{+[PLDefaults mode](PLDefaults, "mode")}];
  v10[2] = v5;
  v9[3] = @"SubmissionReason";
  v6 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(*(a1 + 32), "submitReasonType")}];
  v9[4] = @"SubmissionStage";
  v10[3] = v6;
  v10[4] = &unk_1F5406288;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:5];

  if (v3)
  {
  }

  return v7;
}

id __35__PLSubmissions_performSubmission___block_invoke_164(uint64_t a1)
{
  v10[5] = *MEMORY[0x1E69E9840];
  v9[0] = @"SubmissionConfigUUID";
  v3 = [*(a1 + 32) configUUID];
  if (v3)
  {
    v1 = [*(a1 + 32) configUUID];
    v4 = [v1 UUIDString];
  }

  else
  {
    v4 = @"UNKNOWN";
  }

  v10[0] = v4;
  v10[1] = &unk_1F54061C8;
  v9[1] = @"SubmissionError";
  v9[2] = @"SubmissionMode";
  v5 = [MEMORY[0x1E696AD98] numberWithLong:{+[PLDefaults mode](PLDefaults, "mode")}];
  v10[2] = v5;
  v9[3] = @"SubmissionReason";
  v6 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(*(a1 + 32), "submitReasonType")}];
  v9[4] = @"SubmissionStage";
  v10[3] = v6;
  v10[4] = &unk_1F54062A0;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:5];

  if (v3)
  {
  }

  return v7;
}

- (void)submitWithTaskingConfig:(id)config
{
  configCopy = config;
  [(PLSubmissions *)self logSubmissionStateToAnalytics:@"attempt"];
  [configCopy submitFileStatsToAnalytics];
  workQueue = [(PLSubmissions *)self workQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __41__PLSubmissions_submitWithTaskingConfig___block_invoke;
  v7[3] = &unk_1E8519100;
  v7[4] = self;
  v8 = configCopy;
  v6 = configCopy;
  dispatch_async(workQueue, v7);
}

void __41__PLSubmissions_submitWithTaskingConfig___block_invoke(uint64_t a1)
{
  v2 = os_transaction_create();
  v3 = objc_autoreleasePoolPush();
  [*(a1 + 32) performSubmission:*(a1 + 40)];
  objc_autoreleasePoolPop(v3);
  v4 = dispatch_time(0, 60000000000);
  v5 = +[PLUtilities transactionWorkQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__PLSubmissions_submitWithTaskingConfig___block_invoke_2;
  block[3] = &unk_1E85190B8;
  v8 = v2;
  v6 = v2;
  dispatch_after(v4, v5, block);
}

- (void)prepareAndEnqueueSubmissionFilesWithConfig:(id)config
{
  v80 = *MEMORY[0x1E69E9840];
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  obj = [config splitBySubmissionType];
  v4 = [obj countByEnumeratingWithState:&v69 objects:v79 count:16];
  v61 = v4;
  if (v4)
  {
    v60 = *v70;
    selfCopy = self;
    do
    {
      v5 = 0;
      do
      {
        if (*v70 != v60)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v69 + 1) + 8 * v5);
        v7 = PLLogSubmission(v4);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          getSubmitReasonTypeToReasonLog = [v6 getSubmitReasonTypeToReasonLog];
          submittedFilesMask = [v6 submittedFilesMask];
          submissionMaskToString = [v6 submissionMaskToString];
          *buf = 138412802;
          v74 = getSubmitReasonTypeToReasonLog;
          v75 = 2048;
          v76 = submittedFilesMask;
          v77 = 2112;
          v78 = submissionMaskToString;
          _os_log_debug_impl(&dword_1D8611000, v7, OS_LOG_TYPE_DEBUG, "Starting submission of type '%@' (mask: %llu = %@)", buf, 0x20u);
        }

        v8 = [[PLSubmissionFilePLL alloc] initWithConfig:v6];
        v9 = v8;
        if (v8)
        {
          v10 = PLLogSubmission([(PLSubmissionFilePLL *)v8 submit]);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1D8611000, v10, OS_LOG_TYPE_DEFAULT, "Finished preparing PLL", buf, 2u);
          }
        }

        v11 = [[PLSubmissionFileMSS alloc] initWithConfig:v6];
        v12 = v11;
        if (v11)
        {
          v13 = PLLogSubmission([(PLSubmissionFileMSS *)v11 submit]);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1D8611000, v13, OS_LOG_TYPE_DEFAULT, "Finished preparing MSS", buf, 2u);
          }
        }

        v14 = [[PLSubmissionFileBDC alloc] initWithConfig:v6];
        v15 = v14;
        if (v14)
        {
          v16 = PLLogSubmission([(PLSubmissionFileBDC *)v14 submit]);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1D8611000, v16, OS_LOG_TYPE_DEFAULT, "Finished preparing BDC", buf, 2u);
          }
        }

        v17 = [[PLSubmissionFileCE alloc] initWithConfig:v6];
        v18 = v17;
        if (v17)
        {
          v19 = PLLogSubmission([(PLSubmissionFileCE *)v17 submit]);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1D8611000, v19, OS_LOG_TYPE_DEFAULT, "Finished preparing CE", buf, 2u);
          }
        }

        v66 = v9;
        v20 = [[PLSubmissionFileXC alloc] initWithConfig:v6];
        v21 = v20;
        if (v20)
        {
          v22 = PLLogSubmission([(PLSubmissionFileXC *)v20 submit]);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1D8611000, v22, OS_LOG_TYPE_DEFAULT, "Finished preparing XC", buf, 2u);
          }
        }

        v63 = v21;
        v23 = [[PLSubmissionFileBG alloc] initWithConfig:v6];
        v24 = v23;
        if (v23)
        {
          v25 = PLLogSubmission([(PLSubmissionFileBG *)v23 submit]);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1D8611000, v25, OS_LOG_TYPE_DEFAULT, "Finished preparing BG", buf, 2u);
          }
        }

        v65 = v12;
        v26 = [[PLSubmissionFileSP alloc] initWithConfig:v6];
        v27 = v26;
        if (v26)
        {
          v28 = PLLogSubmission([(PLSubmissionFile *)v26 submit]);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1D8611000, v28, OS_LOG_TYPE_DEFAULT, "Finished preparing SP", buf, 2u);
          }
        }

        v62 = v18;
        v64 = v15;
        v29 = MEMORY[0x1E696AEC0];
        tagUUID = [v6 tagUUID];
        v31 = [v29 stringWithFormat:@"%@Powerlog_%@/", @"/tmp/powerlog/cloud/", tagUUID];

        defaultManager = [MEMORY[0x1E696AC08] defaultManager];
        v33 = [defaultManager contentsOfDirectoryAtPath:v31 error:0];

        if (v33 && [v33 count])
        {
          v34 = MEMORY[0x1E6999F68];
          v35 = [MEMORY[0x1E695DFF8] fileURLWithPath:v31];
          v36 = [v34 archiveDirectoryAt:v35 deleteOriginal:1];

          path = [v36 path];
          [v6 setFilePath:path];

          v39 = PLLogSubmission(v38);
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
          {
            filePath = [v6 filePath];
            v53 = [v33 count];
            *buf = 138412546;
            v74 = filePath;
            v75 = 1024;
            LODWORD(v76) = v53;
            _os_log_debug_impl(&dword_1D8611000, v39, OS_LOG_TYPE_DEBUG, "File to upload generated at %@ with %d files included.", buf, 0x12u);
          }
        }

        filePath2 = [v6 filePath];
        if (filePath2)
        {
          v41 = filePath2;
          ckTagConfig = [v6 ckTagConfig];
          if (ckTagConfig)
          {
            v43 = ckTagConfig;
            tagUUID2 = [v6 tagUUID];

            if (tagUUID2)
            {
              if ([v6 enableDPUpload])
              {
                v56 = [PLSubmissionRecord alloc];
                filePath3 = [v6 filePath];
                tagUUID3 = [v6 tagUUID];
                ckTagConfig2 = [v6 ckTagConfig];
                configUUID = [v6 configUUID];
                configDateReceived = [v6 configDateReceived];
                configDateApplied = [v6 configDateApplied];
                v48 = [(PLSubmissionRecord *)v56 initWithCKFilePath:filePath3 tagUUID:tagUUID3 tagConfig:ckTagConfig2 configUUID:configUUID configDateReceived:configDateReceived configDateApplied:configDateApplied];

                self = selfCopy;
                [(PLSubmissions *)selfCopy submitRecordToDiagnosticPipeline:v48 withConfig:v6];
              }

              else
              {
                v48 = [(PLSubmissions *)self enqueueFileForUpload:v6];
                [(PLSubmissions *)self persistSubmissionInfo:v48];
              }

              goto LABEL_49;
            }
          }

          else
          {
          }
        }

        v48 = PLLogSubmission(filePath2);
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          [(PLSubmissions *)&v67 prepareAndEnqueueSubmissionFilesWithConfig:v68, v48];
        }

LABEL_49:

        ++v5;
      }

      while (v61 != v5);
      v4 = [obj countByEnumeratingWithState:&v69 objects:v79 count:16];
      v61 = v4;
    }

    while (v4);
  }
}

- (void)submitRecordToDiagnosticPipeline:(id)pipeline withConfig:(id)config
{
  v29 = *MEMORY[0x1E69E9840];
  pipelineCopy = pipeline;
  configCopy = config;
  getSubmitReasonTypeToReasonLog = [configCopy getSubmitReasonTypeToReasonLog];
  contextDictionary = [configCopy contextDictionary];
  v9 = PLLogSubmission(contextDictionary);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    submissionCategory = [configCopy submissionCategory];
    *buf = 138412802;
    v24 = @"com.apple.perfpowerservices";
    v25 = 2112;
    v26 = submissionCategory;
    v27 = 2112;
    v28 = contextDictionary;
    _os_log_impl(&dword_1D8611000, v9, OS_LOG_TYPE_DEFAULT, "Submitting '%@:%@' record for %@ via DiagnosticPipeline", buf, 0x20u);
  }

  v21[1] = MEMORY[0x1E69E9820];
  v21[2] = 3221225472;
  v21[3] = __61__PLSubmissions_submitRecordToDiagnosticPipeline_withConfig___block_invoke;
  v21[4] = &unk_1E8519A88;
  v11 = configCopy;
  v22 = v11;
  AnalyticsSendEventLazy();
  [pipelineCopy emitAttemptEvent];
  submissionCategory2 = [v11 submissionCategory];
  filePath = [pipelineCopy filePath];
  v21[0] = 0;
  v14 = DRSubmitLogToCKContainer();
  v15 = 0;

  if (v14)
  {
    v20 = v11;
    AnalyticsSendEventLazy();
    v17 = PLLogSubmission([pipelineCopy emitSuccessEvent]);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      filePath2 = [pipelineCopy filePath];
      *buf = 138412290;
      v24 = filePath2;
      _os_log_impl(&dword_1D8611000, v17, OS_LOG_TYPE_DEFAULT, "Successfully submitted %@ to DiagnosticPipeline for upload", buf, 0xCu);
    }

    v19 = v20;
  }

  else
  {
    v19 = PLLogSubmission(v16);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [PLSubmissions submitRecordToDiagnosticPipeline:withConfig:];
    }
  }

  [pipelineCopy cleanup];
}

id __61__PLSubmissions_submitRecordToDiagnosticPipeline_withConfig___block_invoke(uint64_t a1)
{
  v10[5] = *MEMORY[0x1E69E9840];
  v9[0] = @"SubmissionConfigUUID";
  v3 = [*(a1 + 32) configUUID];
  if (v3)
  {
    v1 = [*(a1 + 32) configUUID];
    v4 = [v1 UUIDString];
  }

  else
  {
    v4 = @"UNKNOWN";
  }

  v10[0] = v4;
  v10[1] = &unk_1F54061C8;
  v9[1] = @"SubmissionError";
  v9[2] = @"SubmissionMode";
  v5 = [MEMORY[0x1E696AD98] numberWithLong:{+[PLDefaults mode](PLDefaults, "mode")}];
  v10[2] = v5;
  v9[3] = @"SubmissionReason";
  v6 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(*(a1 + 32), "submitReasonType")}];
  v9[4] = @"SubmissionStage";
  v10[3] = v6;
  v10[4] = &unk_1F54062B8;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:5];

  if (v3)
  {
  }

  return v7;
}

id __61__PLSubmissions_submitRecordToDiagnosticPipeline_withConfig___block_invoke_196(uint64_t a1)
{
  v10[5] = *MEMORY[0x1E69E9840];
  v9[0] = @"SubmissionConfigUUID";
  v3 = [*(a1 + 32) configUUID];
  if (v3)
  {
    v1 = [*(a1 + 32) configUUID];
    v4 = [v1 UUIDString];
  }

  else
  {
    v4 = @"UNKNOWN";
  }

  v10[0] = v4;
  v10[1] = &unk_1F54061C8;
  v9[1] = @"SubmissionError";
  v9[2] = @"SubmissionMode";
  v5 = [MEMORY[0x1E696AD98] numberWithLong:{+[PLDefaults mode](PLDefaults, "mode")}];
  v10[2] = v5;
  v9[3] = @"SubmissionReason";
  v6 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(*(a1 + 32), "submitReasonType")}];
  v9[4] = @"SubmissionStage";
  v10[3] = v6;
  v10[4] = &unk_1F54062D0;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:5];

  if (v3)
  {
  }

  return v7;
}

- (void)generatePLLSubmissionWithPayload:(id)payload
{
  v74 = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  v64 = os_transaction_create();
  context = objc_autoreleasePoolPush();
  v62 = [(PLSubmissions *)self createWatchdogForSubmissionActivity:@"PLL"];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"GenerateOTASubmissionWithPayload"];
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLSubmissions.m"];
  lastPathComponent = [v6 lastPathComponent];
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSubmissions generatePLLSubmissionWithPayload:]"];
  [PLCoreStorage logMessage:v5 fromFile:lastPathComponent fromFunction:v8 fromLineNumber:638];

  v10 = PLLogCommon(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v73 = v5;
    _os_log_impl(&dword_1D8611000, v10, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  v11 = [payloadCopy mutableCopy];
  v12 = [payloadCopy objectForKeyedSubscript:@"cache_size"];

  if (!v12)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithInteger:10];
    [v11 setObject:v13 forKeyedSubscript:@"cache_size"];
  }

  v14 = [payloadCopy objectForKeyedSubscript:@"path"];
  v15 = [[PLSubmissionConfig alloc] initWithPayload:v11];
  getLastBatteryTimestampSystem = [(PLSubmissions *)self getLastBatteryTimestampSystem];
  [(PLSubmissionConfig *)v15 setLastBatteryTimestampSystem:getLastBatteryTimestampSystem];

  v17 = [[PLSubmissionFilePLL alloc] initWithConfig:v15];
  v70[0] = @"Type";
  getSubmitReasonTypeToStorageEventOTAType = [(PLSubmissionConfig *)v15 getSubmitReasonTypeToStorageEventOTAType];
  v19 = getSubmitReasonTypeToStorageEventOTAType;
  v70[1] = @"Success";
  v20 = MEMORY[0x1E695E118];
  if (!v17)
  {
    v20 = MEMORY[0x1E695E110];
  }

  v71[0] = getSubmitReasonTypeToStorageEventOTAType;
  v71[1] = v20;
  v21 = 0x1E695D000uLL;
  v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v71 forKeys:v70 count:2];
  selfCopy = self;
  [(PLSubmissions *)self logOTAStatus:v22];

  filePath = [(PLSubmissionFile *)v17 filePath];
  if (filePath)
  {
    v58 = v11;
    v60 = payloadCopy;
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v69 = 0;
    v59 = v14;
    v25 = [defaultManager moveItemAtPath:filePath toPath:v14 error:&v69];
    v26 = v69;

    if ((v25 & 1) == 0)
    {
      v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error moving file %@", v26];
      v28 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLSubmissions.m"];
      lastPathComponent2 = [v28 lastPathComponent];
      v30 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSubmissions generatePLLSubmissionWithPayload:]"];
      [PLCoreStorage logMessage:v27 fromFile:lastPathComponent2 fromFunction:v30 fromLineNumber:658];

      v32 = PLLogCommon(v31);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v73 = v27;
        _os_log_impl(&dword_1D8611000, v32, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
      }

      v21 = 0x1E695D000;
    }

    defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
    directory = [(PLSubmissionFile *)v17 directory];
    v68 = v26;
    v35 = [defaultManager2 removeItemAtPath:directory error:&v68];
    v36 = v68;

    if ((v35 & 1) == 0)
    {
      v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error removing file %@", v36];
      v38 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLSubmissions.m"];
      lastPathComponent3 = [v38 lastPathComponent];
      v40 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSubmissions generatePLLSubmissionWithPayload:]"];
      [PLCoreStorage logMessage:v37 fromFile:lastPathComponent3 fromFunction:v40 fromLineNumber:663];

      v42 = PLLogCommon(v41);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v73 = v37;
        _os_log_impl(&dword_1D8611000, v42, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
      }

      v21 = 0x1E695D000uLL;
    }

    payloadCopy = v60;
    v43 = [v60 objectForKeyedSubscript:@"user"];
    if ([v43 length])
    {
      v44 = [*(v21 + 3872) dictionaryWithObjectsAndKeys:{v43, *MEMORY[0x1E696A360], 0}];
      defaultManager3 = [MEMORY[0x1E696AC08] defaultManager];
      v67 = v36;
      v46 = [defaultManager3 setAttributes:v44 ofItemAtPath:v59 error:&v67];
      v47 = v67;

      if ((v46 & 1) == 0)
      {
        v57 = v44;
        v48 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error setting attr %@", v47];
        v49 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLSubmissions.m"];
        lastPathComponent4 = [v49 lastPathComponent];
        v51 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSubmissions generatePLLSubmissionWithPayload:]"];
        [PLCoreStorage logMessage:v48 fromFile:lastPathComponent4 fromFunction:v51 fromLineNumber:670];

        v53 = PLLogCommon(v52);
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v73 = v48;
          _os_log_impl(&dword_1D8611000, v53, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
        }

        v44 = v57;
      }

      payloadCopy = v60;
    }

    else
    {
      v47 = v36;
    }

    v14 = v59;

    v11 = v58;
  }

  [(PLSubmissionFile *)v17 cleanupTmpDirectory];
  [(PLSubmissions *)selfCopy stopWatchdogForSubmissionActivity:v62];

  objc_autoreleasePoolPop(context);
  v54 = dispatch_time(0, 60000000000);
  v55 = +[PLUtilities transactionWorkQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__PLSubmissions_generatePLLSubmissionWithPayload___block_invoke;
  block[3] = &unk_1E85190B8;
  v66 = v64;
  v56 = v64;
  dispatch_after(v54, v55, block);
}

- (id)generateMSSSubmissionWithPayload:(id)payload
{
  v23 = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  v5 = os_transaction_create();
  v6 = objc_autoreleasePoolPush();
  v7 = [(PLSubmissions *)self createWatchdogForSubmissionActivity:@"MSS"];
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"GenerateMSSSubmissionWithPayload"];
  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLSubmissions.m"];
  lastPathComponent = [v9 lastPathComponent];
  v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSubmissions generateMSSSubmissionWithPayload:]"];
  [PLCoreStorage logMessage:v8 fromFile:lastPathComponent fromFunction:v11 fromLineNumber:687];

  v13 = PLLogCommon(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = v8;
    _os_log_impl(&dword_1D8611000, v13, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  v14 = [payloadCopy mutableCopy];
  v15 = [[PLSubmissionConfig alloc] initWithPayload:v14];
  getLastBatteryTimestampSystem = [(PLSubmissions *)self getLastBatteryTimestampSystem];
  [(PLSubmissionConfig *)v15 setLastBatteryTimestampSystem:getLastBatteryTimestampSystem];

  v17 = [[PLSubmissionFileMSS alloc] initWithConfig:v15];
  filePath = [(PLSubmissionFile *)v17 filePath];
  if (filePath)
  {
    v19 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{filePath, @"microstackshots", 0}];
  }

  else
  {
    v19 = 0;
  }

  [(PLSubmissions *)self stopWatchdogForSubmissionActivity:v7];

  objc_autoreleasePoolPop(v6);

  return v19;
}

- (id)getLastBatteryTimestampSystem
{
  v2 = +[PowerlogCore sharedCore];
  storage = [v2 storage];
  v4 = [storage lastEntryForKey:@"PLBatteryAgent_EventBackward_Battery"];

  entryDate = [v4 entryDate];
  convertFromMonotonicToSystem = [entryDate convertFromMonotonicToSystem];

  return convertFromMonotonicToSystem;
}

- (void)logTaskingStatus:(int)status withAction:(int)action withTables:(id)tables
{
  v5 = *&action;
  v6 = *&status;
  v23[3] = *MEMORY[0x1E69E9840];
  tablesCopy = tables;
  if (+[PLDefaults debugEnabled])
  {
    v9 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __56__PLSubmissions_logTaskingStatus_withAction_withTables___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v9;
    if (logTaskingStatus_withAction_withTables__defaultOnce != -1)
    {
      dispatch_once(&logTaskingStatus_withAction_withTables__defaultOnce, block);
    }

    if (logTaskingStatus_withAction_withTables__classDebugEnabled == 1)
    {
      tablesCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"error=%d, action=%d, taskingTables=%@", v6, v5, tablesCopy];
      v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLSubmissions.m"];
      lastPathComponent = [v11 lastPathComponent];
      v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSubmissions logTaskingStatus:withAction:withTables:]"];
      [PLCoreStorage logMessage:tablesCopy fromFile:lastPathComponent fromFunction:v13 fromLineNumber:715];

      v15 = PLLogCommon(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  tablesCopy2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"taskingTablesPayload=%@", tablesCopy];
  storageOperator = [(PLSubmissions *)self storageOperator];
  v22[0] = @"Action";
  v18 = [MEMORY[0x1E696AD98] numberWithInt:v5];
  v23[0] = v18;
  v22[1] = @"ErrorType";
  v19 = [MEMORY[0x1E696AD98] numberWithInt:v6];
  v22[2] = @"TaskingTablesPayload";
  v23[1] = v19;
  v23[2] = tablesCopy2;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:3];
  [storageOperator logEventForwardTaskingMode:v20];
}

BOOL __56__PLSubmissions_logTaskingStatus_withAction_withTables___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  logTaskingStatus_withAction_withTables__classDebugEnabled = result;
  return result;
}

- (void)enableHangtracer
{
  v2 = *MEMORY[0x1E695E898];
  CFPreferencesSetValue(@"PLTasking.HangTracerEnableAppActivationLogging", &unk_1F54062E8, @"com.apple.hangtracer", @"mobile", *MEMORY[0x1E695E898]);
  CFPreferencesSynchronize(@"com.apple.hangtracer", @"mobile", v2);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.hangtracer.pref_changed", 0, 0, 0);
}

- (void)disableHangtracer
{
  v2 = *MEMORY[0x1E695E898];
  CFPreferencesSetValue(@"PLTasking.HangTracerEnableAppActivationLogging", 0, @"com.apple.hangtracer", @"mobile", *MEMORY[0x1E695E898]);
  CFPreferencesSynchronize(@"com.apple.hangtracer", @"mobile", v2);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.hangtracer.pref_changed", 0, 0, 0);
}

- (void)logTaskingTablesTurnedOn:(id)on
{
  onCopy = on;
  if (+[PLDefaults debugEnabled])
  {
    v5 = objc_opt_class();
    block = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __42__PLSubmissions_logTaskingTablesTurnedOn___block_invoke;
    v16 = &__block_descriptor_40_e5_v8__0lu32l8;
    v17 = v5;
    if (logTaskingTablesTurnedOn__defaultOnce != -1)
    {
      dispatch_once(&logTaskingTablesTurnedOn__defaultOnce, &block);
    }

    if (logTaskingTablesTurnedOn__classDebugEnabled == 1)
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"TaskingTablesTurnedOn=%@", onCopy, block, v14, v15, v16, v17];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLSubmissions.m"];
      lastPathComponent = [v7 lastPathComponent];
      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSubmissions logTaskingTablesTurnedOn:]"];
      [PLCoreStorage logMessage:v6 fromFile:lastPathComponent fromFunction:v9 fromLineNumber:745];

      v11 = PLLogCommon(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  storageOperator = [(PLSubmissions *)self storageOperator];
  [storageOperator logEventNoneAdditionalTablesTurnedOn:onCopy];
}

BOOL __42__PLSubmissions_logTaskingTablesTurnedOn___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  logTaskingTablesTurnedOn__classDebugEnabled = result;
  return result;
}

- (void)logOTAStatus:(id)status
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AEC0];
  statusCopy = status;
  statusCopy = [v4 stringWithFormat:@"OTAStatus=%@", statusCopy];
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLSubmissions.m"];
  lastPathComponent = [v7 lastPathComponent];
  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSubmissions logOTAStatus:]"];
  [PLCoreStorage logMessage:statusCopy fromFile:lastPathComponent fromFunction:v9 fromLineNumber:750];

  v11 = PLLogCommon(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = statusCopy;
    _os_log_impl(&dword_1D8611000, v11, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  storageOperator = [(PLSubmissions *)self storageOperator];
  [storageOperator logEventPointOTA:statusCopy];
}

- (void)clearTaskingDRConfig
{
  v14 = *MEMORY[0x1E69E9840];
  getCurrentDRConfig = [(PLSubmissions *)self getCurrentDRConfig];
  v4 = PLLogSubmission(getCurrentDRConfig);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (!getCurrentDRConfig)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_1D8611000, v4, OS_LOG_TYPE_DEFAULT, "No DRConfig to clear", buf, 2u);
    }

    goto LABEL_10;
  }

  if (v5)
  {
    configUUID = [getCurrentDRConfig configUUID];
    *buf = 138412290;
    v13 = configUUID;
    _os_log_impl(&dword_1D8611000, v4, OS_LOG_TYPE_DEFAULT, "Attempting to mark DRConfig %@ as completed", buf, 0xCu);
  }

  taskingMonitor = [(PLSubmissions *)self taskingMonitor];
  configUUID2 = [getCurrentDRConfig configUUID];
  v11 = 0;
  [taskingMonitor markCompletedConfigUUID:configUUID2 errorOut:&v11];
  v4 = v11;

  if (v4)
  {
    v10 = PLLogSubmission(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [PLSubmissions clearTaskingDRConfig];
    }

LABEL_10:
  }
}

- (void)rejectTaskingDRConfig
{
  v14 = *MEMORY[0x1E69E9840];
  getCurrentDRConfig = [(PLSubmissions *)self getCurrentDRConfig];
  v4 = PLLogSubmission(getCurrentDRConfig);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (!getCurrentDRConfig)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_1D8611000, v4, OS_LOG_TYPE_DEFAULT, "No DRConfig to reject", buf, 2u);
    }

    goto LABEL_10;
  }

  if (v5)
  {
    configUUID = [getCurrentDRConfig configUUID];
    *buf = 138412290;
    v13 = configUUID;
    _os_log_impl(&dword_1D8611000, v4, OS_LOG_TYPE_DEFAULT, "Rejecting DRConfig %@", buf, 0xCu);
  }

  taskingMonitor = [(PLSubmissions *)self taskingMonitor];
  configUUID2 = [getCurrentDRConfig configUUID];
  v11 = 0;
  [taskingMonitor rejectConfigUUID:configUUID2 errorOut:&v11];
  v4 = v11;

  if (v4)
  {
    v10 = PLLogSubmission(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [PLSubmissions rejectTaskingDRConfig];
    }

LABEL_10:
  }
}

- (void)taskingCleanup
{
  [(PLSubmissions *)self disableHangtracer];
  +[PLSubmissionConfig clearTaskingDefaults];

  [(PLSubmissions *)self clearTaskingDRConfig];
}

- (int)checkTaskingCompletionStatus
{
  v2 = [PLDefaults objectForKey:@"PLTaskingOnDemandStartDate"];
  monotonicDate = [MEMORY[0x1E695DF00] monotonicDate];
  if (+[PLDefaults debugEnabled])
  {
    v4 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __45__PLSubmissions_checkTaskingCompletionStatus__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v4;
    if (checkTaskingCompletionStatus_defaultOnce != -1)
    {
      dispatch_once(&checkTaskingCompletionStatus_defaultOnce, block);
    }

    if (checkTaskingCompletionStatus_classDebugEnabled == 1)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"taskingStartDate=%@, now=%@", v2, monotonicDate];
      v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLSubmissions.m"];
      lastPathComponent = [v6 lastPathComponent];
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSubmissions checkTaskingCompletionStatus]"];
      [PLCoreStorage logMessage:v5 fromFile:lastPathComponent fromFunction:v8 fromLineNumber:793];

      v10 = PLLogCommon(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  if ([v2 compare:monotonicDate] == 1)
  {
    v11 = 1;
    PLADClientAddValueForScalarKey();
    AnalyticsSendEventLazy();
    if (+[PLDefaults debugEnabled])
    {
      v12 = objc_opt_class();
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __45__PLSubmissions_checkTaskingCompletionStatus__block_invoke_2;
      v29[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v29[4] = v12;
      if (checkTaskingCompletionStatus_defaultOnce_281 != -1)
      {
        dispatch_once(&checkTaskingCompletionStatus_defaultOnce_281, v29);
      }

      if (checkTaskingCompletionStatus_classDebugEnabled_282 == 1)
      {
        v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Abort Tasking: monotonic time moved back"];
        v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLSubmissions.m"];
        lastPathComponent2 = [v14 lastPathComponent];
        v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSubmissions checkTaskingCompletionStatus]"];
        [PLCoreStorage logMessage:v13 fromFile:lastPathComponent2 fromFunction:v16 fromLineNumber:801];

        v18 = PLLogCommon(v17);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
        }
      }

      v11 = 1;
    }
  }

  else
  {
    [monotonicDate timeIntervalSinceDate:v2];
    if (v19 >= 604800.0)
    {
      PLADClientAddValueForScalarKey();
      AnalyticsSendEventLazy();
      if (+[PLDefaults debugEnabled])
      {
        v20 = objc_opt_class();
        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 3221225472;
        v28[2] = __45__PLSubmissions_checkTaskingCompletionStatus__block_invoke_2_301;
        v28[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v28[4] = v20;
        if (checkTaskingCompletionStatus_defaultOnce_299 != -1)
        {
          dispatch_once(&checkTaskingCompletionStatus_defaultOnce_299, v28);
        }

        if (checkTaskingCompletionStatus_classDebugEnabled_300 == 1)
        {
          v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Abort Tasking: 7 days since tasking start"];
          v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLSubmissions.m"];
          lastPathComponent3 = [v22 lastPathComponent];
          v24 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSubmissions checkTaskingCompletionStatus]"];
          [PLCoreStorage logMessage:v21 fromFile:lastPathComponent3 fromFunction:v24 fromLineNumber:812];

          v26 = PLLogCommon(v25);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
          {
            [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
          }
        }
      }

      v11 = 2;
    }

    else
    {
      PLADClientAddValueForScalarKey();
      AnalyticsSendEventLazy();
      v11 = 0;
    }
  }

  return v11;
}

BOOL __45__PLSubmissions_checkTaskingCompletionStatus__block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  checkTaskingCompletionStatus_classDebugEnabled = result;
  return result;
}

BOOL __45__PLSubmissions_checkTaskingCompletionStatus__block_invoke_2(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  checkTaskingCompletionStatus_classDebugEnabled_282 = result;
  return result;
}

BOOL __45__PLSubmissions_checkTaskingCompletionStatus__block_invoke_2_301(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  checkTaskingCompletionStatus_classDebugEnabled_300 = result;
  return result;
}

- (void)taskingModeSafeguard
{
  if (+[PLDefaults taskMode])
  {
    [PLDefaults doubleForKey:@"PLTaskingRestartCount" ifNotSet:0.0];
    v4 = v3 + 1.0;
    if (+[PLDefaults debugEnabled])
    {
      v5 = objc_opt_class();
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __37__PLSubmissions_taskingModeSafeguard__block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v5;
      if (taskingModeSafeguard_defaultOnce != -1)
      {
        dispatch_once(&taskingModeSafeguard_defaultOnce, block);
      }

      if (taskingModeSafeguard_classDebugEnabled == 1)
      {
        v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"powerlog restartCount=%f", *&v4];
        v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLSubmissions.m"];
        lastPathComponent = [v7 lastPathComponent];
        v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSubmissions taskingModeSafeguard]"];
        [PLCoreStorage logMessage:v6 fromFile:lastPathComponent fromFunction:v9 fromLineNumber:828];

        v11 = PLLogCommon(v10);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
        }
      }
    }

    if (v4 <= 10.0)
    {
      v19 = [MEMORY[0x1E696AD98] numberWithDouble:v4];
      [PLDefaults setObject:v19 forKey:@"PLTaskingRestartCount" saveToDisk:1];
    }

    else
    {
      PLADClientAddValueForScalarKey();
      AnalyticsSendEventLazy();
      [(PLSubmissions *)self logTaskingStatus:4 withAction:2];
      if (+[PLDefaults debugEnabled])
      {
        v12 = objc_opt_class();
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __37__PLSubmissions_taskingModeSafeguard__block_invoke_2;
        v20[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v20[4] = v12;
        if (taskingModeSafeguard_defaultOnce_337 != -1)
        {
          dispatch_once(&taskingModeSafeguard_defaultOnce_337, v20);
        }

        if (taskingModeSafeguard_classDebugEnabled_338 == 1)
        {
          v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"restartCount over limit, exiting tasking mode"];
          v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLSubmissions.m"];
          lastPathComponent2 = [v14 lastPathComponent];
          v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSubmissions taskingModeSafeguard]"];
          [PLCoreStorage logMessage:v13 fromFile:lastPathComponent2 fromFunction:v16 fromLineNumber:835];

          v18 = PLLogCommon(v17);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
          }
        }
      }

      PowerlogControlSwitchMode();
    }
  }
}

BOOL __37__PLSubmissions_taskingModeSafeguard__block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  taskingModeSafeguard_classDebugEnabled = result;
  return result;
}

BOOL __37__PLSubmissions_taskingModeSafeguard__block_invoke_2(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  taskingModeSafeguard_classDebugEnabled_338 = result;
  return result;
}

- (void)taskingModeSetup
{
  v27 = *MEMORY[0x1E69E9840];
  self->_taskingStarted = 0;
  if (+[PLDefaults taskMode])
  {
    if ([PLDefaults objectExistsForKey:@"PLTaskingOnDemandStartDate"])
    {

      [(PLSubmissions *)self logTaskingStatus:0 withAction:3];
    }

    else
    {
      v3 = dispatch_time(0, 10000000000);
      workQueue = [(PLSubmissions *)self workQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __33__PLSubmissions_taskingModeSetup__block_invoke;
      block[3] = &unk_1E85190B8;
      block[4] = self;
      dispatch_after(v3, workQueue, block);

      PLADClientAddValueForScalarKey();
      AnalyticsSendEventLazy();
      [PLSubmissionConfig submitTaskingDefaultsCheckStateToCA:@"OnDemandTaskingStart"];
      monotonicDate = [MEMORY[0x1E695DF00] monotonicDate];
      [PLDefaults setObject:monotonicDate forKey:@"PLTaskingOnDemandStartDate" saveToDisk:1];
      if (+[PLDefaults debugEnabled])
      {
        v6 = objc_opt_class();
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __33__PLSubmissions_taskingModeSetup__block_invoke_2_357;
        v23[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v23[4] = v6;
        if (taskingModeSetup_defaultOnce != -1)
        {
          dispatch_once(&taskingModeSetup_defaultOnce, v23);
        }

        if (taskingModeSetup_classDebugEnabled == 1)
        {
          v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"starting on demand logging with startTime=%@", monotonicDate];
          v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLSubmissions.m"];
          lastPathComponent = [v8 lastPathComponent];
          v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSubmissions taskingModeSetup]"];
          [PLCoreStorage logMessage:v7 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:871];

          v12 = PLLogCommon(v11);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
          }
        }
      }

      v13 = +[PLCoreStorage additionalTables];
      v14 = PLLogSubmission(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v26 = v13;
        _os_log_impl(&dword_1D8611000, v14, OS_LOG_TYPE_DEFAULT, "AdditionalTables: %@", buf, 0xCu);
      }

      [(PLSubmissions *)self logTaskingStatus:0 withAction:0 withTables:v13];
      v15 = +[PLEntryKey PLEntryKeyStringsForTasking];
      [(PLSubmissions *)self logTaskingTablesTurnedOn:v15];
      [(PLSubmissions *)self enableHangtracer];
      +[PLEntryKey PLEntryKeyStringsForTaskingReset];
      self->_taskingStarted = 1;
      if ([PLDefaults objectExistsForKey:@"PLTaskingFiles"])
      {
        v16 = [PLDefaults objectForKey:@"PLTaskingFiles"];
        v17 = [v16 containsObject:@"PLL-Upgrade"];

        if (v17)
        {
          v19 = PLLogSubmission(v18);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_1D8611000, v19, OS_LOG_TYPE_INFO, "Upgrade powerlog requested", buf, 2u);
          }

          v20 = dispatch_time(0, 10000000000);
          workQueue2 = [(PLSubmissions *)self workQueue];
          v22[0] = MEMORY[0x1E69E9820];
          v22[1] = 3221225472;
          v22[2] = __33__PLSubmissions_taskingModeSetup__block_invoke_362;
          v22[3] = &unk_1E85190B8;
          v22[4] = self;
          dispatch_after(v20, workQueue2, v22);
        }
      }
    }
  }
}

void __33__PLSubmissions_taskingModeSetup__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) getCurrentDRConfig];
  v1 = v2;
  AnalyticsSendEventLazy();
}

id __33__PLSubmissions_taskingModeSetup__block_invoke_2(id *a1)
{
  v1 = a1;
  v8[5] = *MEMORY[0x1E69E9840];
  v7[0] = @"SubmissionConfigUUID";
  v2 = [a1[4] configUUID];
  if (v2)
  {
    v1 = [v1[4] configUUID];
    v3 = [v1 UUIDString];
  }

  else
  {
    v3 = @"UNKNOWN";
  }

  v8[0] = v3;
  v8[1] = &unk_1F54061C8;
  v7[1] = @"SubmissionError";
  v7[2] = @"SubmissionMode";
  v4 = [MEMORY[0x1E696AD98] numberWithLong:{+[PLDefaults mode](PLDefaults, "mode")}];
  v8[2] = v4;
  v8[3] = &unk_1F5406210;
  v7[3] = @"SubmissionReason";
  v7[4] = @"SubmissionStage";
  v8[4] = &unk_1F5406300;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:5];

  if (v2)
  {
  }

  return v5;
}

BOOL __33__PLSubmissions_taskingModeSetup__block_invoke_2_357(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  taskingModeSetup_classDebugEnabled = result;
  return result;
}

void __33__PLSubmissions_taskingModeSetup__block_invoke_362(uint64_t a1)
{
  v3 = [*(a1 + 32) getCurrentDRConfig];
  v2 = [[PLSubmissionConfig alloc] initWithReasonType:4 DRConfig:v3];
  if (v2)
  {
    [*(a1 + 32) submitWithTaskingConfig:v2];
  }
}

- (id)createWatchdogForSubmissionActivity:(id)activity
{
  activityCopy = activity;
  v5 = [PLTimer alloc];
  v6 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:3600.0];
  v7 = dispatch_get_global_queue(2, 0);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __53__PLSubmissions_createWatchdogForSubmissionActivity___block_invoke;
  v11[3] = &unk_1E851AF48;
  v12 = activityCopy;
  selfCopy = self;
  v8 = activityCopy;
  v9 = [(PLTimer *)v5 initWithFireDate:v6 withInterval:0 withTolerance:0 repeats:v7 withUserInfo:v11 withQueue:0.0 withBlock:0.0];

  return v9;
}

uint64_t __53__PLSubmissions_createWatchdogForSubmissionActivity___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[ERROR] Watchdog fired %@", *(a1 + 32)];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLSubmissions.m"];
  v4 = [v3 lastPathComponent];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSubmissions createWatchdogForSubmissionActivity:]_block_invoke"];
  [PLCoreStorage logMessage:v2 fromFile:v4 fromFunction:v5 fromLineNumber:911];

  v7 = PLLogCommon(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v10 = v2;
    _os_log_impl(&dword_1D8611000, v7, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  [*(a1 + 40) sendSubmissionIssueSignature:*(a1 + 32)];
  return [PLUtilities exitWithReason:1002];
}

- (void)stopWatchdogForSubmissionActivity:(id)activity
{
  activityCopy = activity;
  [activityCopy setTimerActive:0];
  [activityCopy invalidate];
}

- (void)sendSubmissionIssueSignature:(id)signature
{
  signatureCopy = signature;
  v3 = objc_alloc_init(MEMORY[0x1E69D4F78]);
  if (v3)
  {
    processInfo = [MEMORY[0x1E696AE30] processInfo];
    processName = [processInfo processName];
    v6 = [v3 signatureWithDomain:@"PowerlogSubmission" type:@"Timeout" subType:signatureCopy subtypeContext:&stru_1F539D228 detectedProcess:processName triggerThresholdValues:@"3600"];

    [v3 snapshotWithSignature:v6 duration:0 events:0 payload:0 actions:&__block_literal_global_384 reply:600.0];
  }
}

void __46__PLSubmissions_sendSubmissionIssueSignature___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x1E69D50C8]];
  v4 = [v3 BOOLValue];

  if (v4)
  {
    v5 = [v2 objectForKeyedSubscript:*MEMORY[0x1E69D50B8]];
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SDRDiagnosticReporter response = %@, sessionID = %@", v2, v5];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLSubmissions.m"];
    v8 = [v7 lastPathComponent];
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSubmissions sendSubmissionIssueSignature:]_block_invoke"];
    [PLCoreStorage logMessage:v6 fromFile:v8 fromFunction:v9 fromLineNumber:936];

    v11 = PLLogCommon(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = v6;
      _os_log_impl(&dword_1D8611000, v11, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
    }
  }

  else
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SDRDiagnosticReporter dampened"];
    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLSubmissions.m"];
    v13 = [v12 lastPathComponent];
    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSubmissions sendSubmissionIssueSignature:]_block_invoke"];
    [PLCoreStorage logMessage:v5 fromFile:v13 fromFunction:v14 fromLineNumber:939];

    v6 = PLLogCommon(v15);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = v5;
      _os_log_impl(&dword_1D8611000, v6, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
    }
  }
}

- (void)initSubmissionQueue
{
  v85 = *MEMORY[0x1E69E9840];
  v2 = PLLogSubmission(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1D8611000, v2, OS_LOG_TYPE_DEFAULT, "Initializing submission queue", buf, 2u);
  }

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v4 = NSTemporaryDirectory();
  v5 = [v4 stringByAppendingPathComponent:@"PLSubmissionConfig"];
  v6 = [defaultManager enumeratorAtPath:v5];

  v7 = 0x1E696A000uLL;
  array = [MEMORY[0x1E695DF70] array];
  v61 = [MEMORY[0x1E695DFA8] set];
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v74 objects:v84 count:16];
  v62 = v8;
  if (v9)
  {
    v10 = v9;
    v11 = *v75;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v75 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v74 + 1) + 8 * i);
        v14 = NSTemporaryDirectory();
        v15 = [v14 stringByAppendingPathComponent:@"PLSubmissionConfig"];
        v16 = [v15 stringByAppendingPathComponent:v13];

        v73 = 0;
        defaultManager2 = [*(v7 + 3080) defaultManager];
        LODWORD(v14) = [defaultManager2 fileExistsAtPath:v16 isDirectory:&v73];

        if (v14 && (v73 & 1) == 0)
        {
          v18 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v16];
          v19 = MEMORY[0x1E696ACD0];
          v20 = objc_opt_class();
          v72 = 0;
          v21 = [v19 unarchivedObjectOfClass:v20 fromData:v18 error:&v72];
          v22 = v72;
          v23 = v22;
          if (v22)
          {
            v24 = PLLogSubmission(v22);
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v81 = v16;
              v82 = 2112;
              v83 = v23;
              _os_log_error_impl(&dword_1D8611000, v24, OS_LOG_TYPE_ERROR, "Failed to read record from file: %@, error: %@", buf, 0x16u);
            }

            goto LABEL_18;
          }

          defaultManager3 = [*(v7 + 3080) defaultManager];
          filePath = [v21 filePath];
          v27 = [defaultManager3 fileExistsAtPath:filePath];

          if (v27)
          {
            [array addObject:v21];
            tagUUID = [v21 tagUUID];
            [v61 addObject:tagUUID];
            v23 = v18;
            v7 = 0x1E696A000;
          }

          else
          {
            v24 = PLLogSubmission(v28);
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              filePath2 = [v21 filePath];
              *buf = 138412546;
              v81 = filePath2;
              v82 = 2112;
              v83 = v21;
              _os_log_error_impl(&dword_1D8611000, v24, OS_LOG_TYPE_ERROR, "File %@ does not exist for record %@", buf, 0x16u);
            }

            v7 = 0x1E696A000uLL;
LABEL_18:

            tagUUID = v21;
            v21 = v18;
          }

          v8 = v62;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v74 objects:v84 count:16];
    }

    while (v10);
  }

  [*(v7 + 3080) defaultManager];
  v32 = v31 = v7;
  v71 = 0;
  v33 = [v32 contentsOfDirectoryAtPath:@"/tmp/powerlog/" error:&v71];
  v34 = v71;

  if (v34)
  {
    v36 = PLLogSubmission(v35);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v81 = v34;
      _os_log_impl(&dword_1D8611000, v36, OS_LOG_TYPE_DEFAULT, "Failed to read contents at tmp: %@", buf, 0xCu);
    }
  }

  else
  {
    v58 = v33;
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v37 = v33;
    v38 = [v37 countByEnumeratingWithState:&v67 objects:v79 count:16];
    if (v38)
    {
      v39 = v38;
      v40 = v31;
      v41 = *v68;
      do
      {
        for (j = 0; j != v39; ++j)
        {
          if (*v68 != v41)
          {
            objc_enumerationMutation(v37);
          }

          v43 = *(*(&v67 + 1) + 8 * j);
          v44 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v43];
          if (v44)
          {
            v45 = [@"/tmp/powerlog/" stringByAppendingPathComponent:v43];
            v73 = 0;
            defaultManager4 = [*(v40 + 3080) defaultManager];
            v47 = [defaultManager4 fileExistsAtPath:v45 isDirectory:&v73];

            if (v47 && v73 == 1 && ([v43 containsString:@"cloud"] & 1) == 0)
            {
              lastPathComponent = [v43 lastPathComponent];
              v49 = [v61 containsObject:lastPathComponent];
              if ((v49 & 1) == 0)
              {
                v50 = PLLogSubmission(v49);
                if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v81 = lastPathComponent;
                  _os_log_impl(&dword_1D8611000, v50, OS_LOG_TYPE_DEFAULT, "Removing temporary files for: %@", buf, 0xCu);
                }

                [(PLSubmissions *)self cleanupTemporarySubmissionFilesForTag:lastPathComponent];
              }
            }

            v40 = 0x1E696A000;
          }
        }

        v39 = [v37 countByEnumeratingWithState:&v67 objects:v79 count:16];
      }

      while (v39);
    }

    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v36 = array;
    v51 = [v36 countByEnumeratingWithState:&v63 objects:v78 count:16];
    if (v51)
    {
      v52 = v51;
      v53 = *v64;
      do
      {
        v54 = 0;
        do
        {
          if (*v64 != v53)
          {
            objc_enumerationMutation(v36);
          }

          v55 = *(*(&v63 + 1) + 8 * v54);
          v56 = PLLogSubmission(v51);
          if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
          {
            tagUUID2 = [v55 tagUUID];
            *buf = 138412290;
            v81 = tagUUID2;
            _os_log_impl(&dword_1D8611000, v56, OS_LOG_TYPE_DEFAULT, "Initialized and enqueued record from disk: %@", buf, 0xCu);
          }

          v51 = [(PLSubmissions *)self enqueueSubmissionRecord:v55];
          ++v54;
        }

        while (v52 != v54);
        v51 = [v36 countByEnumeratingWithState:&v63 objects:v78 count:16];
        v52 = v51;
      }

      while (v51);
    }

    v8 = v62;
    v34 = 0;
    v33 = v58;
  }
}

- (void)cleanupTemporarySubmissionFilesForTag:(id)tag
{
  tagCopy = tag;
  v5 = [PLSubmissionRecord getDASubmissionDirPathForTag:tagCopy];
  [(PLSubmissions *)self removeFileAtPath:v5];

  v6 = [PLSubmissionRecord getCKSubmissionDirPathForTag:tagCopy];

  [(PLSubmissions *)self removeFileAtPath:v6];
}

- (void)persistSubmissionInfo:(id)info
{
  v18 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  if (infoCopy)
  {
    v4 = NSTemporaryDirectory();
    v5 = [v4 stringByAppendingPathComponent:@"PLSubmissionConfig"];
    tagUUID = [infoCopy tagUUID];
    v7 = [v5 stringByAppendingPathComponent:tagUUID];

    v8 = [PLUtilities createAndChownDirectoryIfDirectoryDoesNotExist:v7];
    if (v8)
    {
      v15 = 0;
      v9 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:infoCopy requiringSecureCoding:1 error:&v15];
      v10 = v15;
      v11 = v10;
      if (v10)
      {
        v12 = PLLogCommon(v10);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          [PLSubmissions persistSubmissionInfo:];
        }
      }

      else
      {
        v12 = [v7 stringByAppendingPathComponent:@"record"];
        v13 = [v9 writeToFile:v12 atomically:1];
        if ((v13 & 1) == 0)
        {
          v14 = PLLogCommon(v13);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            [PLSubmissions persistSubmissionInfo:];
          }
        }
      }
    }

    else
    {
      v11 = PLLogCommon(v8);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v17 = v7;
        _os_log_impl(&dword_1D8611000, v11, OS_LOG_TYPE_DEFAULT, "Failed to create dir: %@", buf, 0xCu);
      }
    }
  }
}

- (void)logSubmissionStateToAnalytics:(id)analytics
{
  v3 = MEMORY[0x1E696AEC0];
  analyticsCopy = analytics;
  analyticsCopy = [v3 stringWithFormat:@"%@.%@", @"com.apple.powerlog.iCloudTaskingSubmission", analyticsCopy];
  PLADClientAddValueForScalarKey();
  AnalyticsSendEventLazy();
}

id __47__PLSubmissions_logSubmissionStateToAnalytics___block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v4 = @"state";
  v5[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

- (void)emitCollisionEvent:(id)event
{
  eventCopy = event;
  if (eventCopy)
  {
    v10 = eventCopy;
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [dictionary setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"TaskingBlobCollision"];
    configUUID = [v10 configUUID];

    if (configUUID)
    {
      configUUID2 = [v10 configUUID];
      uUIDString = [configUUID2 UUIDString];
      [dictionary setObject:uUIDString forKeyedSubscript:@"DPTaskingUUID"];
    }

    payloadDictionaryRepresentation = [v10 payloadDictionaryRepresentation];
    v9 = [payloadDictionaryRepresentation objectForKeyedSubscript:@"PLTaskingRequest"];

    if (v9)
    {
      [dictionary setObject:v9 forKeyedSubscript:@"TaskingReason"];
    }

    _submitTaskingCAEventPayload(dictionary, @"Collision with DA tasking");

    eventCopy = v10;
  }
}

- (void)emitBlobDetectedEvent:(id)event
{
  eventCopy = event;
  if (eventCopy)
  {
    v11 = eventCopy;
    eventCopy = [(PLSubmissions *)self internalSubmissionBehavior];
    if ((eventCopy & 1) == 0)
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      [dictionary setObject:@"TaskingBlobDetected" forKeyedSubscript:@"TaskingState"];
      if ([v11 isDRTasking])
      {
        configUUID = [v11 configUUID];

        if (configUUID)
        {
          configUUID2 = [v11 configUUID];
          uUIDString = [configUUID2 UUIDString];
          [dictionary setObject:uUIDString forKeyedSubscript:@"DPTaskingUUID"];
        }
      }

      request = [v11 request];

      if (request)
      {
        request2 = [v11 request];
        [dictionary setObject:request2 forKeyedSubscript:@"TaskingReason"];
      }

      _submitTaskingCAEventPayload(dictionary, @"Tasking blob detected");
    }
  }

  MEMORY[0x1EEE66BB8](eventCopy);
}

- (void)emitBlobVerifiedEvent:(id)event
{
  eventCopy = event;
  if (eventCopy)
  {
    v13 = eventCopy;
    eventCopy = [(PLSubmissions *)self internalSubmissionBehavior];
    if ((eventCopy & 1) == 0)
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      [dictionary setObject:@"TaskingBlobVerified" forKeyedSubscript:@"TaskingState"];
      if ([v13 isDRTasking])
      {
        configUUID = [v13 configUUID];

        if (configUUID)
        {
          configUUID2 = [v13 configUUID];
          uUIDString = [configUUID2 UUIDString];
          [dictionary setObject:uUIDString forKeyedSubscript:@"DPTaskingUUID"];
        }
      }

      blobFailureReason = [v13 blobFailureReason];

      if (blobFailureReason)
      {
        blobFailureReason2 = [v13 blobFailureReason];
        [dictionary setObject:blobFailureReason2 forKeyedSubscript:@"TaskingBlobFailureReason"];
      }

      request = [v13 request];

      if (request)
      {
        request2 = [v13 request];
        [dictionary setObject:request2 forKeyedSubscript:@"TaskingReason"];
      }

      _submitTaskingCAEventPayload(dictionary, @"Tasking blob verified");
    }
  }

  MEMORY[0x1EEE66BB8](eventCopy);
}

- (PLStorageOperator)storageOperator
{
  WeakRetained = objc_loadWeakRetained(&self->_storageOperator);

  return WeakRetained;
}

void __58__PLSubmissions_XPCScheduling__submitRecord_withActivity___block_invoke_cold_1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(&dword_1D8611000, v0, OS_LOG_TYPE_DEBUG, "Record %@ completed: %@", v1, 0x16u);
}

- (void)configFromMonitor:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = [a1 teamID];
  OUTLINED_FUNCTION_2();
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_1D8611000, a3, OS_LOG_TYPE_ERROR, "Error getting current config from DRConfigMonitor <%@> : %@", v6, 0x16u);
}

- (void)generateOTASubmissionAndSendTaskingEndSubmission:(int)a1 .cold.1(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_1D8611000, a2, OS_LOG_TYPE_ERROR, "Nothing to submit for reason %d", v2, 8u);
}

- (void)prepareAndEnqueueSubmissionFilesWithConfig:(os_log_t)log .cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_1D8611000, log, OS_LOG_TYPE_ERROR, "Not submitting submission record to DiagnosticPipeline due to missing info", buf, 2u);
}

@end