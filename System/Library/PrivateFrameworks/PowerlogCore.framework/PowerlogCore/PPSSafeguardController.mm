@interface PPSSafeguardController
+ (id)sharedInstance;
- (BOOL)debug_forceEligibility;
- (BOOL)debug_installDate;
- (BOOL)debug_treatAsTestDevice;
- (BOOL)handleTask:(id)task;
- (BOOL)isTestDeviceForSafeguard;
- (BOOL)upload:(BOOL *)upload;
- (PPSSafeguardController)init;
- (id)eligibilityRange;
- (id)installDate;
- (id)lastSubmissionDate;
- (id)startDate;
- (id)stopDate;
- (id)todayRange;
- (id)uploadRange;
- (id)workQueue;
- (unint64_t)isEligible;
- (void)configureWithDefaultValues;
- (void)configureWithDictionary:(id)dictionary;
- (void)registerDataCollectionActivity;
- (void)reportEventToCA:(unint64_t)a didUpload:(BOOL)upload;
- (void)setupDRTasking;
- (void)unregisterDataCollectionActivity;
@end

@implementation PPSSafeguardController

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_1 != -1)
  {
    +[PPSSafeguardController sharedInstance];
  }

  v3 = sharedInstance_result;

  return v3;
}

uint64_t __40__PPSSafeguardController_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(PPSSafeguardController);
  sharedInstance_result = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

- (void)registerDataCollectionActivity
{
  *buf = 134218240;
  *(buf + 4) = a4;
  *(buf + 6) = 1024;
  *(buf + 14) = a2;
  _os_log_debug_impl(&dword_1D8611000, log, OS_LOG_TYPE_DEBUG, "Skipping safeguard submission activity registration, passed daily stop hour (timeUntilDeadline=%lf, stopHour=%d)", buf, 0x12u);
}

void __56__PPSSafeguardController_registerDataCollectionActivity__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleTask:v3];
}

- (PPSSafeguardController)init
{
  if (+[PLUtilities isPowerlogHelperd](PLUtilities, "isPowerlogHelperd") || +[PLUtilities isPerfPowerMetricd](PLUtilities, "isPerfPowerMetricd") || !+[PLPlatform internalBuild])
  {
    selfCopy = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = PPSSafeguardController;
    v3 = [(PPSSafeguardController *)&v7 init];
    v4 = v3;
    if (v3)
    {
      [(PPSSafeguardController *)v3 setupDRTasking];
    }

    self = v4;
    selfCopy = self;
  }

  return selfCopy;
}

- (BOOL)upload:(BOOL *)upload
{
  v68 = *MEMORY[0x1E69E9840];
  v4 = PLLogSubmission(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1D8611000, v4, OS_LOG_TYPE_DEFAULT, "Performing safeguard submission...", buf, 2u);
  }

  v5 = [[PLSubmissionConfig alloc] initWithReasonType:2 DRConfig:0];
  dataDuration = [(PPSSafeguardController *)self dataDuration];
  if (dataDuration != 86400)
  {
    v7 = dataDuration;
    endDate = [(PLSubmissionConfig *)v5 endDate];
    v9 = [endDate dateByAddingTimeInterval:-v7];
    [(PLSubmissionConfig *)v5 setStartDate:v9];

    v11 = PLLogSubmission(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [PPSSafeguardController upload:];
    }
  }

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  obj = [(PLSubmissionConfig *)v5 splitBySubmissionType];
  v55 = [obj countByEnumeratingWithState:&v59 objects:v67 count:16];
  if (!v55)
  {
    v49 = 1;
    goto LABEL_44;
  }

  v52 = v5;
  v54 = *v60;
  while (2)
  {
    for (i = 0; i != v55; ++i)
    {
      if (*v60 != v54)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v59 + 1) + 8 * i);
      v14 = [[PLSubmissionFilePLL alloc] initWithConfig:v13];
      v15 = v14;
      if (v14)
      {
        v16 = PLLogSubmission([(PLSubmissionFilePLL *)v14 submit]);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1D8611000, v16, OS_LOG_TYPE_DEFAULT, "Finished preparing PLL", buf, 2u);
        }

        if (*upload)
        {
          p_super = PLLogSubmission(v17);
          if (os_log_type_enabled(p_super, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_1D8611000, p_super, OS_LOG_TYPE_INFO, "Task expired after Powerlog generation", buf, 2u);
          }

          goto LABEL_43;
        }
      }

      v18 = [[PLSubmissionFileMSS alloc] initWithConfig:v13];
      p_super = &v18->super.super;
      if (v18)
      {
        v20 = PLLogSubmission([(PLSubmissionFileMSS *)v18 submit]);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1D8611000, v20, OS_LOG_TYPE_DEFAULT, "Finished preparing MSS", buf, 2u);
        }

        if (*upload)
        {
          v50 = PLLogSubmission(v21);
          if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_1D8611000, v50, OS_LOG_TYPE_INFO, "Task expired after Microstackshots generation", buf, 2u);
          }

LABEL_43:
          v5 = v52;

          v49 = 0;
          goto LABEL_44;
        }
      }

      v22 = [[PLSubmissionFileSP alloc] initWithConfig:v13];
      v23 = v22;
      if (v22)
      {
        [(PLSubmissionFile *)v22 submit];
      }

      v24 = MEMORY[0x1E696AEC0];
      tagUUID = [v13 tagUUID];
      v26 = [v24 stringWithFormat:@"%@Powerlog_%@/", @"/tmp/powerlog/cloud/", tagUUID];

      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      v28 = [defaultManager contentsOfDirectoryAtPath:v26 error:0];

      if (v28 && [v28 count])
      {
        v29 = MEMORY[0x1E6999F68];
        v30 = [MEMORY[0x1E695DFF8] fileURLWithPath:v26];
        v31 = [v29 archiveDirectoryAt:v30 deleteOriginal:1];

        path = [v31 path];
        [v13 setFilePath:path];

        v34 = PLLogSubmission(v33);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
        {
          filePath = [v13 filePath];
          v48 = [v28 count];
          *buf = 138412546;
          v64 = filePath;
          v65 = 1024;
          v66 = v48;
          _os_log_debug_impl(&dword_1D8611000, v34, OS_LOG_TYPE_DEBUG, "File to upload generated at %@ with %d files included.", buf, 0x12u);
        }
      }

      filePath2 = [v13 filePath];
      if (filePath2)
      {
        v36 = filePath2;
        ckTagConfig = [v13 ckTagConfig];
        if (ckTagConfig)
        {
          v38 = ckTagConfig;
          tagUUID2 = [v13 tagUUID];

          if (tagUUID2)
          {
            v40 = objc_alloc_init(PPSSubmissionRecord);
            contextDictionary = [v13 contextDictionary];
            [(PPSSubmissionRecord *)v40 setContextDictionary:contextDictionary];

            [(PPSSubmissionRecord *)v40 setIsExpedited:1];
            v42 = MEMORY[0x1E695DFF8];
            filePath3 = [v13 filePath];
            v44 = [v42 fileURLWithPath:filePath3];
            [(PPSSubmissionRecord *)v40 setFilePath:v44];

            [(PPSSubmissionRecord *)v40 setFileType:@"gz"];
            submissionCategory = [v13 submissionCategory];
            [(PPSSubmissionRecord *)v40 setIssueCategory:submissionCategory];

            getSubmitReasonTypeToReasonLog = [v13 getSubmitReasonTypeToReasonLog];
            [(PPSSubmissionRecord *)v40 setIssueDescription:getSubmitReasonTypeToReasonLog];

            [(PPSSubmissionRecord *)v40 setRecordType:@"attachment"];
            [(PPSSubmissionRecord *)v40 setTargetContainer:@"com.apple.perfpowerservices.tasking"];
            [PPSSubmissionUtilities submit:v40];
            goto LABEL_34;
          }
        }

        else
        {
        }
      }

      v40 = PLLogSubmission(filePath2);
      if (os_log_type_enabled(&v40->super, OS_LOG_TYPE_ERROR))
      {
        [(PPSSafeguardController *)&v57 upload:v58, &v40->super];
      }

LABEL_34:
    }

    v55 = [obj countByEnumeratingWithState:&v59 objects:v67 count:16];
    if (v55)
    {
      continue;
    }

    break;
  }

  v49 = 1;
  v5 = v52;
LABEL_44:

  return v49;
}

- (unint64_t)isEligible
{
  v42 = *MEMORY[0x1E69E9840];
  isEnabled = [(PPSSafeguardController *)self isEnabled];
  if (isEnabled)
  {
    debug_forceEligibility = [(PPSSafeguardController *)self debug_forceEligibility];
    if (debug_forceEligibility)
    {
      installDate = PLLogSubmission(debug_forceEligibility);
      if (os_log_type_enabled(installDate, OS_LOG_TYPE_INFO))
      {
        LOWORD(v38) = 0;
        _os_log_impl(&dword_1D8611000, installDate, OS_LOG_TYPE_INFO, "Forcing eligibility...", &v38, 2u);
      }

      v6 = 0;
      goto LABEL_42;
    }

    if ([(PPSSafeguardController *)self excludeTestDevices])
    {
      isTestDeviceForSafeguard = [(PPSSafeguardController *)self isTestDeviceForSafeguard];
      if (isTestDeviceForSafeguard)
      {
        installDate = PLLogSubmission(isTestDeviceForSafeguard);
        if (os_log_type_enabled(installDate, OS_LOG_TYPE_INFO))
        {
          LOWORD(v38) = 0;
          _os_log_impl(&dword_1D8611000, installDate, OS_LOG_TYPE_INFO, "Excluding test device", &v38, 2u);
        }

        v6 = 5;
        goto LABEL_42;
      }
    }

    installDate = [(PPSSafeguardController *)self installDate];
    v8 = PLLogSubmission(installDate);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v38 = 138412290;
      v39 = *&installDate;
      _os_log_impl(&dword_1D8611000, v8, OS_LOG_TYPE_INFO, "Date/time of last OS install: %@", &v38, 0xCu);
    }

    todayRange = [(PPSSafeguardController *)self todayRange];
    lastSubmissionDate = [(PPSSafeguardController *)self lastSubmissionDate];
    v11 = [todayRange containsDate:lastSubmissionDate];

    currentDate = PLLogSubmission(v12);
    v14 = os_log_type_enabled(currentDate, OS_LOG_TYPE_INFO);
    if (v11)
    {
      if (v14)
      {
        lastSubmissionDate2 = [(PPSSafeguardController *)self lastSubmissionDate];
        v38 = 138412290;
        v39 = *&lastSubmissionDate2;
        _os_log_impl(&dword_1D8611000, currentDate, OS_LOG_TYPE_INFO, "Safeguard submission already performed on '%@'", &v38, 0xCu);
      }

      v6 = 2;
      goto LABEL_41;
    }

    if (v14)
    {
      LOWORD(v38) = 0;
      _os_log_impl(&dword_1D8611000, currentDate, OS_LOG_TYPE_INFO, "Device has not yet performed upload", &v38, 2u);
    }

    currentDate = [(PPSSafeguardController *)self currentDate];
    eligibilityRange = [(PPSSafeguardController *)self eligibilityRange];
    v17 = [eligibilityRange containsDate:currentDate];
    if ((v17 & 1) == 0)
    {
      v19 = PLLogSubmission(v17);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        startDate = [eligibilityRange startDate];
        endDate = [eligibilityRange endDate];
        v38 = 138412546;
        v39 = *&startDate;
        v40 = 2112;
        v41 = *&endDate;
        _os_log_impl(&dword_1D8611000, v19, OS_LOG_TYPE_INFO, "No install within eligibility range: ['%@', '%@']", &v38, 0x16u);
      }

      v6 = 3;
      goto LABEL_40;
    }

    uploadRange = [(PPSSafeguardController *)self uploadRange];
    v19 = uploadRange;
    if (uploadRange)
    {
      v20 = [uploadRange containsDate:currentDate];
      v21 = v20;
      v22 = PLLogSubmission(v20);
      v23 = os_log_type_enabled(v22, OS_LOG_TYPE_INFO);
      if (v21)
      {
        if (v23)
        {
          startDate2 = [eligibilityRange startDate];
          endDate2 = [eligibilityRange endDate];
          v38 = 138412546;
          v39 = *&startDate2;
          v40 = 2112;
          v41 = *&endDate2;
          _os_log_impl(&dword_1D8611000, v22, OS_LOG_TYPE_INFO, "Device is within eligibility range: ['%@', '%@']", &v38, 0x16u);
        }

        date = [MEMORY[0x1E695DF00] date];
        [date timeIntervalSinceDate:installDate];
        v28 = v27;

        minimumLiveOnTime = [(PPSSafeguardController *)self minimumLiveOnTime];
        v31 = v30;
        v22 = PLLogSubmission(minimumLiveOnTime);
        v32 = os_log_type_enabled(v22, OS_LOG_TYPE_INFO);
        if (v31 <= 0.0 || v28 >= v31)
        {
          if (v32)
          {
            v38 = 134218240;
            v39 = v31;
            v40 = 2048;
            v41 = v28;
            _os_log_impl(&dword_1D8611000, v22, OS_LOG_TYPE_INFO, "Device meets minimum LiveOn time of '%f': %f", &v38, 0x16u);
          }

          v6 = 0;
        }

        else
        {
          if (v32)
          {
            v38 = 134218240;
            v39 = v28;
            v40 = 2048;
            v41 = v31;
            _os_log_impl(&dword_1D8611000, v22, OS_LOG_TYPE_INFO, "Current LiveOn time '%f' does not yet meet minimum time required '%f'", &v38, 0x16u);
          }

          v6 = 4;
        }

        goto LABEL_39;
      }

      if (v23)
      {
        startDate3 = [v19 startDate];
        endDate3 = [v19 endDate];
        v38 = 138412546;
        v39 = *&startDate3;
        v40 = 2112;
        v41 = *&endDate3;
        _os_log_impl(&dword_1D8611000, v22, OS_LOG_TYPE_INFO, "Not currently within upload range: ['%@', '%@']", &v38, 0x16u);
      }
    }

    else
    {
      v22 = PLLogSubmission(0);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [(PPSSafeguardController *)v22 isEligible];
      }
    }

    v6 = 6;
LABEL_39:

LABEL_40:
LABEL_41:

    goto LABEL_42;
  }

  installDate = PLLogSubmission(isEnabled);
  v6 = 1;
  if (os_log_type_enabled(installDate, OS_LOG_TYPE_INFO))
  {
    LOWORD(v38) = 0;
    v6 = 1;
    _os_log_impl(&dword_1D8611000, installDate, OS_LOG_TYPE_INFO, "Disabled for eligiblity", &v38, 2u);
  }

LABEL_42:

  return v6;
}

- (BOOL)isTestDeviceForSafeguard
{
  if ([(PPSSafeguardController *)self debug_treatAsTestDevice])
  {
    return 1;
  }

  v3 = +[PLUtilities automatedDeviceGroup];
  v4 = [v3 length];

  +[PLFileStats totalLogDuration];
  return v5 < 86400.0 && v4 != 0;
}

- (BOOL)handleTask:(id)task
{
  v33 = *MEMORY[0x1E69E9840];
  taskCopy = task;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3020000000;
  v30 = 0;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __37__PPSSafeguardController_handleTask___block_invoke;
  v26[3] = &unk_1E8519E68;
  v26[4] = &v27;
  [taskCopy setExpirationHandler:v26];
  isEligible = [(PPSSafeguardController *)self isEligible];
  v6 = isEligible;
  if (isEligible > 6)
  {
    goto LABEL_18;
  }

  if (((1 << isEligible) & 0x6E) != 0)
  {
    [taskCopy setTaskCompleted];
LABEL_4:
    v7 = 0;
    goto LABEL_5;
  }

  if (isEligible)
  {
LABEL_18:
    v24 = PLLogSubmission(isEligible);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v32 = v6;
      _os_log_impl(&dword_1D8611000, v24, OS_LOG_TYPE_INFO, "Postponing safeguard submission with status '%lud'", buf, 0xCu);
    }

    goto LABEL_4;
  }

  v7 = [(PPSSafeguardController *)self upload:v28 + 5];
LABEL_5:
  v8 = [(PPSSafeguardController *)self reportEventToCA:v6 didUpload:v7];
  if (taskCopy)
  {
    if (v7)
    {
      v9 = MEMORY[0x1E696AD98];
      currentDate = [(PPSSafeguardController *)self currentDate];
      [currentDate timeIntervalSince1970];
      v11 = [v9 numberWithDouble:?];
      [PLDefaults setObject:v11 forKey:@"PPSSafeguardDefaultLastSubmissionTime"];

      [taskCopy setTaskCompleted];
    }

    else
    {
      v12 = PLLogSubmission(v8);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1D8611000, v12, OS_LOG_TYPE_INFO, "Deferring safeguard submission...", buf, 2u);
      }

      v25 = 0;
      v13 = [taskCopy setTaskExpiredWithRetryAfter:&v25 error:0.0];
      v14 = v25;
      v15 = v14;
      if ((v13 & 1) == 0)
      {
        v16 = PLLogSubmission(v14);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          [(PPSSafeguardController *)v15 handleTask:v16, v17, v18, v19, v20, v21, v22];
        }

        [taskCopy setTaskCompleted];
      }
    }
  }

  _Block_object_dispose(&v27, 8);

  return v7;
}

- (void)reportEventToCA:(unint64_t)a didUpload:(BOOL)upload
{
  uploadCopy = upload;
  v28 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v8 = [MEMORY[0x1E696AD98] numberWithBool:uploadCopy];
  [dictionary setObject:v8 forKeyedSubscript:@"PPSSafeguardCAKeyDidUpload"];

  v9 = [MEMORY[0x1E696AD98] numberWithInt:a == 0];
  [dictionary setObject:v9 forKeyedSubscript:@"PPSSafeguardCAKeyIsEligible"];

  v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[PPSSafeguardController isTestDeviceForSafeguard](self, "isTestDeviceForSafeguard")}];
  [dictionary setObject:v10 forKeyedSubscript:@"PPSSafeguardCAKeyIsTestDevice"];

  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a];
  [dictionary setObject:v11 forKeyedSubscript:@"PPSSafeguardCAKeyStatus"];

  v12 = [MEMORY[0x1E696AD98] numberWithInt:{-[PPSSafeguardController dataDuration](self, "dataDuration")}];
  [dictionary setObject:v12 forKeyedSubscript:@"PPSSafeguardParameterDataDuration"];

  v13 = [MEMORY[0x1E696AD98] numberWithInt:{-[PPSSafeguardController eligibilityDuration](self, "eligibilityDuration")}];
  [dictionary setObject:v13 forKeyedSubscript:@"PPSSafeguardParameterEligibilityDuration"];

  v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[PPSSafeguardController excludeTestDevices](self, "excludeTestDevices")}];
  [dictionary setObject:v14 forKeyedSubscript:@"PPSSafeguardParameterExcludeTestDevices"];

  v15 = [MEMORY[0x1E696AD98] numberWithInt:{-[PPSSafeguardController startHour](self, "startHour")}];
  [dictionary setObject:v15 forKeyedSubscript:@"PPSSafeguardParameterStartHour"];

  v16 = [MEMORY[0x1E696AD98] numberWithInt:{-[PPSSafeguardController stopHour](self, "stopHour")}];
  [dictionary setObject:v16 forKeyedSubscript:@"PPSSafeguardParameterStopHour"];

  v17 = [MEMORY[0x1E696AD98] numberWithBool:{-[PPSSafeguardController isEnabled](self, "isEnabled")}];
  [dictionary setObject:v17 forKeyedSubscript:@"PPSSafeguardParameterIsEnabled"];

  v18 = MEMORY[0x1E696AD98];
  [(PPSSafeguardController *)self minimumLiveOnTime];
  v19 = [v18 numberWithDouble:?];
  [dictionary setObject:v19 forKeyedSubscript:@"PPSSafeguardParameterMinimumLiveOnTime"];

  v20 = [MEMORY[0x1E696AD98] numberWithBool:{-[PPSSafeguardController debug_forceEligibility](self, "debug_forceEligibility")}];
  [dictionary setObject:v20 forKeyedSubscript:@"PPSSafeguardDebugParameterForceEligibility"];

  v22 = PLLogSubmission(v21);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    v24 = 138412546;
    v25 = @"com.apple.perfpowerservices.submission.safeguard";
    v26 = 2112;
    v27 = dictionary;
    _os_log_impl(&dword_1D8611000, v22, OS_LOG_TYPE_INFO, "Emitting '%@': %@", &v24, 0x16u);
  }

  v23 = [dictionary copy];
  AnalyticsSendEvent();
}

- (id)workQueue
{
  v2 = objc_opt_class();

  return [PLUtilities workQueueForClass:v2];
}

- (void)setupDRTasking
{
  v3 = objc_alloc(MEMORY[0x1E699A070]);
  workQueue = [(PPSSafeguardController *)self workQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__PPSSafeguardController_setupDRTasking__block_invoke;
  v7[3] = &unk_1E8519E90;
  v7[4] = self;
  v5 = [v3 initWithTeamID:@"perfpowerservices.safeguard.config" targetQueue:workQueue configProcessingBlock:v7];
  drConfigMonitor = self->_drConfigMonitor;
  self->_drConfigMonitor = v5;
}

void __40__PPSSafeguardController_setupDRTasking__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = PLLogSubmission(v6);
    v9 = v8;
    if (v7)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __40__PPSSafeguardController_setupDRTasking__block_invoke_cold_1(v7, v9, v10, v11, v12, v13, v14, v15);
      }
    }

    else
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [v5 teamID];
        v17 = [v5 configUUID];
        v18 = [v5 receivedDate];
        *buf = 138412802;
        v33 = v16;
        v34 = 2112;
        v35 = v17;
        v36 = 2112;
        v37 = v18;
        _os_log_impl(&dword_1D8611000, v9, OS_LOG_TYPE_DEFAULT, "DRConfig for teamID <%@> received: %@, receive time: %@", buf, 0x20u);
      }

      v19 = *(a1 + 32);
      v20 = [v5 payloadDictionaryRepresentation];
      [v19 configureWithDictionary:v20];

      v21 = [*(a1 + 32) drConfigMonitor];
      v22 = [v5 configUUID];
      v31 = 0;
      [v21 markCompletedConfigUUID:v22 errorOut:&v31];
      v9 = v31;

      if (v9)
      {
        v24 = PLLogSubmission(v23);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          __40__PPSSafeguardController_setupDRTasking__block_invoke_cold_2(v9, v24, v25, v26, v27, v28, v29, v30);
        }
      }
    }
  }
}

- (void)configureWithDefaultValues
{
  [PLDefaults setObject:0 forKey:@"PPSSafeguardParameterDataDuration"];
  [PLDefaults setObject:0 forKey:@"PPSSafeguardParameterExcludeTestDevices"];
  [PLDefaults setObject:0 forKey:@"PPSSafeguardParameterStartHour"];
  [PLDefaults setObject:0 forKey:@"PPSSafeguardParameterStopHour"];
  [PLDefaults setObject:0 forKey:@"PPSSafeguardParameterIsEnabled"];
  [PLDefaults setObject:0 forKey:@"PPSSafeguardParameterMinimumLiveOnTime"];
  [PLDefaults setObject:0 forKey:@"PPSSafeguardParameterEligibilityDuration"];
  [PLDefaults setObject:0 forKey:@"PPSSafeguardDebugParameterForceEligibility"];
  [PLDefaults setObject:0 forKey:@"PPSSafeguardDebugParameterInstallDate"];
  [PLDefaults setObject:0 forKey:@"PPSSafeguardDebugParameterTreatAsTestDevice"];

  [PLDefaults setObject:0 forKey:@"PPSSafeguardDefaultLastSubmissionTime"];
}

- (void)configureWithDictionary:(id)dictionary
{
  v24 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v4 = dictionaryCopy;
  if (dictionaryCopy)
  {
    v5 = PLLogSubmission(dictionaryCopy);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [PPSSafeguardController configureWithDictionary:];
    }

    v6 = [v4 objectForKeyedSubscript:@"PPSSafeguardParameterIsEnabled"];
    if (v6)
    {
      v7 = PLLogSubmission([PLDefaults setObject:v6 forKey:@"PPSSafeguardParameterIsEnabled"]);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v20 = 138412546;
        v21 = @"PPSSafeguardParameterIsEnabled";
        v22 = 2112;
        v23 = v6;
        _os_log_impl(&dword_1D8611000, v7, OS_LOG_TYPE_INFO, "Set modified parameter '%@': %@", &v20, 0x16u);
      }
    }

    v8 = [v4 objectForKeyedSubscript:@"PPSSafeguardParameterDataDuration"];
    if (v8)
    {
      v9 = PLLogSubmission([PLDefaults setObject:v8 forKey:@"PPSSafeguardParameterDataDuration"]);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v20 = 138412546;
        v21 = @"PPSSafeguardParameterDataDuration";
        v22 = 2112;
        v23 = v8;
        _os_log_impl(&dword_1D8611000, v9, OS_LOG_TYPE_INFO, "Set modified parameter '%@': %@", &v20, 0x16u);
      }
    }

    v10 = [v4 objectForKeyedSubscript:@"PPSSafeguardParameterMinimumLiveOnTime"];
    if (v10)
    {
      v11 = PLLogSubmission([PLDefaults setObject:v10 forKey:@"PPSSafeguardParameterMinimumLiveOnTime"]);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v20 = 138412546;
        v21 = @"PPSSafeguardParameterMinimumLiveOnTime";
        v22 = 2112;
        v23 = v10;
        _os_log_impl(&dword_1D8611000, v11, OS_LOG_TYPE_INFO, "Set modified parameter '%@': %@", &v20, 0x16u);
      }
    }

    v12 = [v4 objectForKeyedSubscript:@"PPSSafeguardParameterStartHour"];
    if (v12)
    {
      v13 = PLLogSubmission([PLDefaults setObject:v12 forKey:@"PPSSafeguardParameterStartHour"]);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v20 = 138412546;
        v21 = @"PPSSafeguardParameterStartHour";
        v22 = 2112;
        v23 = v12;
        _os_log_impl(&dword_1D8611000, v13, OS_LOG_TYPE_INFO, "Set modified parameter '%@': %@", &v20, 0x16u);
      }
    }

    v14 = [v4 objectForKeyedSubscript:@"PPSSafeguardParameterStopHour"];
    if (v14)
    {
      v15 = PLLogSubmission([PLDefaults setObject:v14 forKey:@"PPSSafeguardParameterStopHour"]);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v20 = 138412546;
        v21 = @"PPSSafeguardParameterStopHour";
        v22 = 2112;
        v23 = v14;
        _os_log_impl(&dword_1D8611000, v15, OS_LOG_TYPE_INFO, "Set modified parameter '%@': %@", &v20, 0x16u);
      }
    }

    v16 = [v4 objectForKeyedSubscript:@"PPSSafeguardParameterEligibilityDuration"];
    if (v16)
    {
      v17 = PLLogSubmission([PLDefaults setObject:v16 forKey:@"PPSSafeguardParameterEligibilityDuration"]);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v20 = 138412546;
        v21 = @"PPSSafeguardParameterEligibilityDuration";
        v22 = 2112;
        v23 = v16;
        _os_log_impl(&dword_1D8611000, v17, OS_LOG_TYPE_INFO, "Set modified parameter '%@': %@", &v20, 0x16u);
      }
    }

    v18 = [v4 objectForKeyedSubscript:@"PPSSafeguardParameterExcludeTestDevices"];
    if (v18)
    {
      v19 = PLLogSubmission([PLDefaults setObject:v18 forKey:@"PPSSafeguardParameterExcludeTestDevices"]);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = 138412546;
        v21 = @"PPSSafeguardParameterExcludeTestDevices";
        v22 = 2112;
        v23 = v18;
        _os_log_impl(&dword_1D8611000, v19, OS_LOG_TYPE_INFO, "Set modified parameter '%@': %@", &v20, 0x16u);
      }
    }
  }
}

- (id)installDate
{
  debug_installDate = [(PPSSafeguardController *)self debug_installDate];
  v3 = MEMORY[0x1E695DF00];
  if (debug_installDate)
  {
    v4 = @"PPSSafeguardDebugParameterInstallDate";
  }

  else
  {
    v4 = @"LastUpgradeSystemTimestamp";
  }

  [PLDefaults doubleForKey:v4 ifNotSet:-1.0];
  v5 = [v3 dateWithTimeIntervalSince1970:?];

  return v5;
}

- (id)lastSubmissionDate
{
  if ([PLDefaults objectExistsForKey:@"PPSSafeguardDefaultLastSubmissionTime"])
  {
    v2 = MEMORY[0x1E695DF00];
    [PLDefaults doubleForKey:@"PPSSafeguardDefaultLastSubmissionTime"];
    v3 = [v2 dateWithTimeIntervalSince1970:?];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)startDate
{
  v3 = objc_alloc(MEMORY[0x1E695DEE8]);
  v4 = [v3 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
  startHour = [(PPSSafeguardController *)self startHour];
  currentDate = [(PPSSafeguardController *)self currentDate];
  v7 = [v4 dateBySettingHour:startHour minute:0 second:0 ofDate:currentDate options:0];

  return v7;
}

- (id)stopDate
{
  v3 = objc_alloc(MEMORY[0x1E695DEE8]);
  v4 = [v3 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
  stopHour = [(PPSSafeguardController *)self stopHour];
  currentDate = [(PPSSafeguardController *)self currentDate];
  v7 = [v4 dateBySettingHour:stopHour minute:0 second:0 ofDate:currentDate options:0];

  return v7;
}

- (id)eligibilityRange
{
  eligibilityDuration = [(PPSSafeguardController *)self eligibilityDuration];
  installDate = [(PPSSafeguardController *)self installDate];
  v5 = [MEMORY[0x1E695DF00] nearestMidnightBeforeDate:installDate];
  v6 = [v5 dateByAddingTimeInterval:eligibilityDuration];
  v7 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v5 endDate:v6];

  return v7;
}

- (id)todayRange
{
  currentDate = [(PPSSafeguardController *)self currentDate];
  v3 = [MEMORY[0x1E695DF00] nearestMidnightBeforeDate:currentDate];
  v4 = [MEMORY[0x1E695DF00] nearestMidnightAfterDate:currentDate];
  v5 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v3 endDate:v4];

  return v5;
}

- (id)uploadRange
{
  startDate = [(PPSSafeguardController *)self startDate];
  stopDate = [(PPSSafeguardController *)self stopDate];
  v5 = stopDate;
  v6 = 0;
  if (startDate && stopDate)
  {
    v6 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:startDate endDate:stopDate];
  }

  return v6;
}

- (BOOL)debug_forceEligibility
{
  v2 = +[PLDefaults debugEnabled];
  if (v2)
  {

    LOBYTE(v2) = [PLDefaults BOOLForKey:@"PPSSafeguardDebugParameterForceEligibility" ifNotSet:0];
  }

  return v2;
}

- (BOOL)debug_installDate
{
  v2 = +[PLDefaults debugEnabled];
  if (v2)
  {

    LOBYTE(v2) = [PLDefaults objectExistsForKey:@"PPSSafeguardDebugParameterInstallDate"];
  }

  return v2;
}

- (BOOL)debug_treatAsTestDevice
{
  v2 = +[PLDefaults debugEnabled];
  if (v2)
  {

    LOBYTE(v2) = [PLDefaults BOOLForKey:@"PPSSafeguardDebugParameterTreatAsTestDevice"];
  }

  return v2;
}

- (void)unregisterDataCollectionActivity
{
  v10 = *MEMORY[0x1E69E9840];
  if (_os_feature_enabled_impl())
  {
    if ([(PPSSafeguardController *)self isEnabled])
    {
      mEMORY[0x1E698E4C0] = [MEMORY[0x1E698E4C0] sharedScheduler];
      v4 = [mEMORY[0x1E698E4C0] taskRequestForIdentifier:@"com.apple.perfpowerservices.safeguard"];

      if (v4)
      {
        v6 = PLLogSubmission(v5);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          v8 = 138412290;
          v9 = @"com.apple.perfpowerservices.safeguard";
          _os_log_impl(&dword_1D8611000, v6, OS_LOG_TYPE_INFO, "Unregistering safeguard collection activity ('%@')...", &v8, 0xCu);
        }

        mEMORY[0x1E698E4C0]2 = [MEMORY[0x1E698E4C0] sharedScheduler];
        [mEMORY[0x1E698E4C0]2 deregisterTaskWithIdentifier:@"com.apple.perfpowerservices.safeguard"];
      }
    }
  }
}

- (void)upload:(os_log_t)log .cold.2(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_1D8611000, log, OS_LOG_TYPE_ERROR, "Cannot submit record to DiagnosticPipeline due to missing info", buf, 2u);
}

- (void)handleTask:(uint64_t)a3 .cold.1(__CFString *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = @"Unknown";
  if (a1)
  {
    v8 = a1;
  }

  LODWORD(v9) = 138412290;
  *(&v9 + 4) = v8;
  OUTLINED_FUNCTION_0_3(&dword_1D8611000, a2, a3, "Failed to expire task with error: %@", a5, a6, a7, a8, v9, DWORD2(v9));
}

void __40__PPSSafeguardController_setupDRTasking__block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0_3(&dword_1D8611000, a2, a3, "DRConfig error: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __40__PPSSafeguardController_setupDRTasking__block_invoke_cold_2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0_3(&dword_1D8611000, a2, a3, "Error trying to mark DRConfig as completed: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end