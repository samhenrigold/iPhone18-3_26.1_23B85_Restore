@interface CDTerminatingStackshotReport
+ (id)getDisplayState;
+ (id)getThermalPressureLevel;
+ (void)getDisplayState;
+ (void)getThermalPressureLevel;
- (BOOL)saveWithOptions:(id)options;
- (CDTerminatingStackshotReport)initWithPid:(int)pid procName:(id)name bundleID:(id)d exitSnapshot:(exit_reason_snapshot *)snapshot reason:(id)reason;
- (id)additionalIPSMetadata;
- (id)decode_reason:(exit_reason_snapshot *)decode_reason reason:(id)reason;
- (id)initForPid:(int)pid exitSnapshot:(exit_reason_snapshot *)snapshot reason:(id)reason;
- (id)reportNamePrefix;
- (void)generateLogAtLevel:(BOOL)level withBlock:(id)block;
- (void)launchDiagnosticsReporter;
@end

@implementation CDTerminatingStackshotReport

- (CDTerminatingStackshotReport)initWithPid:(int)pid procName:(id)name bundleID:(id)d exitSnapshot:(exit_reason_snapshot *)snapshot reason:(id)reason
{
  v11 = *&pid;
  nameCopy = name;
  dCopy = d;
  reasonCopy = reason;
  v26.receiver = self;
  v26.super_class = CDTerminatingStackshotReport;
  v16 = [(CDStackshotReport *)&v26 initForPid:v11 process:nameCopy withReason:0 exceptionCode:0 exceptionCodeCount:0 stackshotFlags:0];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(v16 + 10, name);
    objc_storeStrong(&v17->_bundleID, d);
    v18 = [(CDTerminatingStackshotReport *)v17 decode_reason:snapshot reason:reasonCopy];
    termination_info = v17->_termination_info;
    v17->_termination_info = v18;

    [(CDStackshotReport *)v17 setReason:reasonCopy];
    mEMORY[0x1E69B7C10] = [MEMORY[0x1E69B7C10] sharedInstance];
    v21 = [mEMORY[0x1E69B7C10] getTaskingKey:@"disableWatchdogStackshot"];
    v17->_isSnapshotDisabled = [v21 BOOLValue];

    info = 0;
    if (!mach_timebase_info(&info))
    {
      if (info.denom)
      {
        LODWORD(v22) = info.numer;
        v23 = v22 * 0.000000001 / info.denom;
        v17->_awakeSystemUptime = (v23 * mach_absolute_time());
      }
    }
  }

  return v17;
}

- (id)initForPid:(int)pid exitSnapshot:(exit_reason_snapshot *)snapshot reason:(id)reason
{
  v6 = *&pid;
  name = 0;
  v8 = MEMORY[0x1E69E9A60];
  reasonCopy = reason;
  if (task_read_for_pid())
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *v22 = 0;
      _os_log_impl(&dword_1D97FA000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "failed task_read_for_pid", v22, 2u);
    }

    v10 = 0;
    v11 = 0;
  }

  else
  {
    v12 = [objc_alloc(MEMORY[0x1E69D4F38]) initWithTask:name];
    v10 = v12;
    if (v12)
    {
      name = [v12 name];
      v11 = [name copy];
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1D97FA000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "failed to create VMUProcInfo", buf, 2u);
      }

      v11 = 0;
    }

    mach_port_deallocate(*v8, name);
  }

  v14 = [(CDTerminatingStackshotReport *)self initWithPid:v6 procName:v11 bundleID:0 exitSnapshot:snapshot reason:reasonCopy];

  if (v14)
  {
    if (v10)
    {
      *(&v14->_cpuType + 1) = [v10 cpuType];
      userAppName = [v10 userAppName];
      v16 = [userAppName copy];
      procPath = v14->_procPath;
      v14->_procPath = v16;

      if ([(NSString *)v14->_procPath length])
      {
        v18 = [MEMORY[0x1E69B7C08] findBundleAtPath:v14->_procPath withKeys:&unk_1F5514360 bundleURL:0];
        v19 = [v18 objectForKeyedSubscript:@"CFBundleIdentifier"];
        bundleID = v14->_bundleID;
        v14->_bundleID = v19;
      }
    }
  }

  return v14;
}

- (id)reportNamePrefix
{
  appName = self->super._appName;
  if (appName)
  {
    appName = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", appName];
  }

  else
  {
    appName = @"unknown";
  }

  return appName;
}

- (id)additionalIPSMetadata
{
  v15[4] = *MEMORY[0x1E69E9840];
  appName = self->super._appName;
  if (!appName)
  {
    appName = @"Unknown";
  }

  v14[0] = *MEMORY[0x1E69B7C38];
  v14[1] = @"app_name";
  v15[0] = appName;
  v15[1] = appName;
  v14[2] = @"share_with_app_devs";
  v4 = MEMORY[0x1E696AD98];
  mEMORY[0x1E69B7C10] = [MEMORY[0x1E69B7C10] sharedInstance];
  v6 = [v4 numberWithBool:{objc_msgSend(mEMORY[0x1E69B7C10], "optIn3rdParty")}];
  v15[2] = v6;
  v14[3] = *MEMORY[0x1E69B7C48];
  incidentID = [(OSAReport *)self incidentID];
  v15[3] = incidentID;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:4];
  v9 = [v8 mutableCopy];

  etlKey = [(OSAReport *)self etlKey];

  if (etlKey)
  {
    etlKey2 = [(OSAReport *)self etlKey];
    [v9 setObject:etlKey2 forKeyedSubscript:@"etl_key"];
  }

  bundleID = self->_bundleID;
  if (bundleID)
  {
    [v9 setObject:bundleID forKeyedSubscript:*MEMORY[0x1E69B7C40]];
  }

  return v9;
}

- (id)decode_reason:(exit_reason_snapshot *)decode_reason reason:(id)reason
{
  reasonCopy = reason;
  v6 = objc_opt_new();
  if (decode_reason)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:decode_reason->ers_code];
    [v6 setObject:v7 forKeyedSubscript:@"code"];

    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:decode_reason->ers_flags];
    [v6 setObject:v8 forKeyedSubscript:@"flags"];

    if (decode_reason->ers_namespace == 20)
    {
      v9 = [_TtC15CoreDiagnostics24WatchdogExitReasonHelper descriptionFromCode:LODWORD(decode_reason->ers_code)];
      [v6 setObject:v9 forKeyedSubscript:@"indicator"];

      v10 = @"WATCHDOG";
    }

    else
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<0x%X>", decode_reason->ers_namespace];
    }
  }

  else
  {
    v10 = @"<NO_NS>";
  }

  [v6 setObject:v10 forKeyedSubscript:@"namespace"];
  if (reasonCopy)
  {
    v11 = [reasonCopy componentsSeparatedByString:@"\n"];
    v12 = [v11 valueForKey:@"stringByTrimming"];
    v13 = [MEMORY[0x1E696AE18] predicateWithFormat:@"SELF != ''"];
    v14 = [v12 filteredArrayUsingPredicate:v13];

    if ([v14 count])
    {
      [v6 setObject:v14 forKeyedSubscript:@"details"];
    }
  }

  return v6;
}

- (void)generateLogAtLevel:(BOOL)level withBlock:(id)block
{
  v107[10] = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v106[0] = @"incident";
  incidentID = [(OSAReport *)self incidentID];
  v107[0] = incidentID;
  v106[1] = @"crashReporterKey";
  mEMORY[0x1E69B7C10] = [MEMORY[0x1E69B7C10] sharedInstance];
  crashReporterKey = [mEMORY[0x1E69B7C10] crashReporterKey];
  v107[1] = crashReporterKey;
  v106[2] = @"modelCode";
  mEMORY[0x1E69B7C10]2 = [MEMORY[0x1E69B7C10] sharedInstance];
  modelCode = [mEMORY[0x1E69B7C10]2 modelCode];
  v107[2] = modelCode;
  v106[3] = @"pid";
  v63 = [MEMORY[0x1E696AD98] numberWithInt:self->super._pid];
  v107[3] = v63;
  v106[4] = @"cpuType";
  decode_cpuType = [(CDTerminatingStackshotReport *)self decode_cpuType];
  v107[4] = decode_cpuType;
  v106[5] = @"osVersion";
  v104[0] = @"train";
  mEMORY[0x1E69B7C10]3 = [MEMORY[0x1E69B7C10] sharedInstance];
  osTrain = [mEMORY[0x1E69B7C10]3 osTrain];
  v105[0] = osTrain;
  v104[1] = @"build";
  mEMORY[0x1E69B7C10]4 = [MEMORY[0x1E69B7C10] sharedInstance];
  buildVersion = [mEMORY[0x1E69B7C10]4 buildVersion];
  v105[1] = buildVersion;
  v104[2] = @"releaseType";
  mEMORY[0x1E69B7C10]5 = [MEMORY[0x1E69B7C10] sharedInstance];
  releaseType = [mEMORY[0x1E69B7C10]5 releaseType];
  v105[2] = releaseType;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v105 forKeys:v104 count:3];
  v107[5] = v10;
  v106[6] = @"captureTime";
  v11 = OSADateFormat();
  v107[6] = v11;
  v107[7] = &unk_1F55144C8;
  v106[7] = @"deployVersion";
  v106[8] = @"variant";
  v106[9] = @"variantVersion";
  v107[8] = @"stackshot";
  v107[9] = &unk_1F55144E0;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v107 forKeys:v106 count:10];
  v13 = (blockCopy + 16);
  (*(blockCopy + 2))(blockCopy, v12);

  v14 = blockCopy;
  v15 = MEMORY[0x1E69B7C00];
  problemType = [(CDTerminatingStackshotReport *)self problemType];
  v17 = [v15 commonFieldsForBody:problemType];
  (*v13)(v14, v17);

  mEMORY[0x1E69B7C10]6 = [MEMORY[0x1E69B7C10] sharedInstance];
  LODWORD(problemType) = [mEMORY[0x1E69B7C10]6 appleInternal];

  if (problemType)
  {
    mEMORY[0x1E69B7C10]7 = [MEMORY[0x1E69B7C10] sharedInstance];
    hwModel = [mEMORY[0x1E69B7C10]7 hwModel];

    v102 = @"codeName";
    v103 = hwModel;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v103 forKeys:&v102 count:1];
    (*(v14 + 2))(v14, v21);
  }

  if ([(NSString *)self->super._appName length])
  {
    appName = self->super._appName;
    v100 = @"procName";
    v101 = appName;
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v101 forKeys:&v100 count:1];
    (*(v14 + 2))(v14, v23);
  }

  if ([(NSString *)self->_procPath length])
  {
    procPath = self->_procPath;
    v98 = @"procPath";
    v99 = procPath;
    v25 = MEMORY[0x1E695DF20];
    v26 = procPath;
    v27 = [v25 dictionaryWithObjects:&v99 forKeys:&v98 count:1];

    (*(v14 + 2))(v14, v27);
  }

  if (self->_bundleID)
  {
    bundleID = self->_bundleID;
    v96 = @"bundleInfo";
    v94 = @"CFBundleIdentifier";
    v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&bundleID forKeys:&v94 count:1];
    v97 = v28;
    v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v97 forKeys:&v96 count:1];
    (*(v14 + 2))(v14, v29);
  }

  if ([(NSDictionary *)self->_termination_info count])
  {
    termination_info = self->_termination_info;
    v92 = @"termination";
    v93 = termination_info;
    v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v93 forKeys:&v92 count:1];
    (*(v14 + 2))(v14, v31);
  }

  bootSessionUUID = [objc_opt_class() bootSessionUUID];
  if (bootSessionUUID)
  {
    v90 = @"bootSessionUUID";
    v91 = bootSessionUUID;
    v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v91 forKeys:&v90 count:1];
    (*(v14 + 2))(v14, v32);
  }

  v88 = @"uptime";
  v33 = [objc_opt_class() reduceToTwoSigFigures:self->_awakeSystemUptime];
  v89 = v33;
  v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v89 forKeys:&v88 count:1];
  (*(v14 + 2))(v14, v34);

  v35 = +[CDTerminatingStackshotReport getThermalPressureLevel];
  v36 = v35;
  if (v35)
  {
    v86 = @"thermalPressureLevel";
    v87 = v35;
    v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v87 forKeys:&v86 count:1];
    (*(v14 + 2))(v14, v37);
  }

  processInfo = [MEMORY[0x1E696AE30] processInfo];
  isLowPowerModeEnabled = [processInfo isLowPowerModeEnabled];

  if (isLowPowerModeEnabled)
  {
    (*(v14 + 2))(v14, &unk_1F5514638);
  }

  v40 = +[CDTerminatingStackshotReport getDisplayState];
  v41 = v40;
  if (v40)
  {
    v84 = @"displayState";
    v85 = v40;
    v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v85 forKeys:&v84 count:1];
    (*(v14 + 2))(v14, v42);
  }

  v43 = +[_TtC15CoreDiagnostics22AppleIntelligenceState getAppleIntelligenceAvailability];
  if ([v43 count])
  {
    v82 = @"appleIntelligenceStatus";
    v83 = v43;
    v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v83 forKeys:&v82 count:1];
    (*(v14 + 2))(v14, v44);
  }

  isSnapshotDisabled = [(CDTerminatingStackshotReport *)self isSnapshotDisabled];
  v46 = MEMORY[0x1E69B7C30];
  if (!isSnapshotDisabled)
  {
    if (self->super._ss_trace_buffer)
    {
      v80 = &unk_1F55144F8;
      v81 = @"stackshot";
      v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v81 forKeys:&v80 count:1];
      (*(v14 + 2))(v14, v47);

      v48 = objc_alloc_init(MEMORY[0x1E69B7BF0]);
      [(CDStackshotReport *)self decodeKCDataWithBlock:v14 withTuning:&unk_1F5514660 usingCatalog:v48];
      v78 = @"binaryImages";
      reportUsedImages = [v48 reportUsedImages];
      v79 = reportUsedImages;
      v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v79 forKeys:&v78 count:1];
      (*(v14 + 2))(v14, v50);

      [v48 appendNotesTo:*(&self->super.super.super.isa + *v46)];
      v76 = &unk_1F5514528;
      v77 = &stru_1F550D880;
      v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v77 forKeys:&v76 count:1];
      (*(v14 + 2))(v14, v51);
    }

    spindump = [(CDTerminatingStackshotReport *)self spindump];

    if (spindump)
    {
      v74 = @"spindump";
      spindump2 = [(CDTerminatingStackshotReport *)self spindump];
      v75 = spindump2;
      v54 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v75 forKeys:&v74 count:1];
      (*(v14 + 2))(v14, v54);
    }
  }

  additionalPayload = self->super._additionalPayload;
  if (additionalPayload)
  {
    v72 = @"additionalPayload";
    v73 = additionalPayload;
    v56 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v73 forKeys:&v72 count:1];
    (*(v14 + 2))(v14, v56);
  }

  v57 = *v46;
  [*(&self->super.super.super.isa + v57) addObject:{@"This is a watchdog-triggered termination event, and not expected to be well-represented in the legacy crash format"}];
  if (self->_isSnapshotDisabled)
  {
    [*(&self->super.super.super.isa + v57) addObject:@"stackshot inclusion disabled"];
  }

  if ([*(&self->super.super.super.isa + v57) count])
  {
    v58 = *(&self->super.super.super.isa + v57);
    v70[0] = @"reportNotes";
    v70[1] = &unk_1F5514540;
    v71[0] = v58;
    v71[1] = &unk_1F5514510;
    v59 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v71 forKeys:v70 count:2];
    (*(v14 + 2))(v14, v59);
  }
}

- (BOOL)saveWithOptions:(id)options
{
  v6.receiver = self;
  v6.super_class = CDTerminatingStackshotReport;
  v4 = [(OSAReport *)&v6 saveWithOptions:options];
  [(CDTerminatingStackshotReport *)self launchDiagnosticsReporter];
  return v4;
}

- (void)launchDiagnosticsReporter
{
  logfile = [(OSAReport *)self logfile];
  handleDiagnosticLog(4, logfile);
}

+ (id)getThermalPressureLevel
{
  out_token = 0;
  if (!notify_register_check(*MEMORY[0x1E69E98C0], &out_token))
  {
    state64 = 0;
    if (notify_get_state(out_token, &state64))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        +[CDTerminatingStackshotReport getThermalPressureLevel];
      }

      v2 = 0;
      goto LABEL_24;
    }

    v3 = MEMORY[0x1E696AEC0];
    if (state64 > 29)
    {
      switch(state64)
      {
        case 0x1E:
          v4 = @"ThermalPressureLevelHeavy";
          goto LABEL_23;
        case 0x28:
          v4 = @"ThermalPressureLevelTrapping";
          goto LABEL_23;
        case 0x32:
          v4 = @"ThermalPressureLevelSleeping";
          goto LABEL_23;
      }
    }

    else
    {
      switch(state64)
      {
        case 0:
          v4 = @"ThermalPressureLevelNominal";
          goto LABEL_23;
        case 0xA:
          v4 = @"ThermalPressureLevelLight";
          goto LABEL_23;
        case 0x14:
          v4 = @"ThermalPressureLevelModerate";
LABEL_23:
          v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:state64];
          stringValue = [v5 stringValue];
          v2 = [v3 stringWithFormat:@"%@ (%@)", v4, stringValue];

LABEL_24:
          notify_cancel(out_token);
          goto LABEL_25;
      }
    }

    v4 = @"unknown";
    goto LABEL_23;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    +[CDTerminatingStackshotReport getThermalPressureLevel];
  }

  v2 = 0;
LABEL_25:

  return v2;
}

+ (id)getDisplayState
{
  out_token = 0;
  if (notify_register_check("com.apple.iokit.hid.displayStatus", &out_token))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      +[CDTerminatingStackshotReport getDisplayState];
    }

    return 0;
  }

  v3 = 0;
  if (notify_get_state(out_token, &v3))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      +[CDTerminatingStackshotReport getDisplayState];
    }

    return 0;
  }

  if (v3)
  {
    return @"ON";
  }

  else
  {
    return @"OFF";
  }
}

+ (void)getThermalPressureLevel
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

+ (void)getDisplayState
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

@end