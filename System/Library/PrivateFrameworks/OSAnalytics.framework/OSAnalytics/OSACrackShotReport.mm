@interface OSACrackShotReport
+ (id)getDisplayState;
+ (id)getThermalPressureLevel;
- (BOOL)saveWithOptions:(id)options;
- (OSACrackShotReport)initWithPid:(int)pid procName:(id)name bundleID:(id)d exitSnapshot:(exit_reason_snapshot *)snapshot reason:(id)reason;
- (id)additionalIPSMetadata;
- (id)decode_reason:(exit_reason_snapshot *)decode_reason reason:(id)reason;
- (id)initForPid:(int)pid exitSnapshot:(exit_reason_snapshot *)snapshot reason:(id)reason;
- (id)problemType;
- (id)reportNamePrefix;
- (void)generateLogAtLevel:(BOOL)level withBlock:(id)block;
@end

@implementation OSACrackShotReport

- (OSACrackShotReport)initWithPid:(int)pid procName:(id)name bundleID:(id)d exitSnapshot:(exit_reason_snapshot *)snapshot reason:(id)reason
{
  v11 = *&pid;
  nameCopy = name;
  dCopy = d;
  reasonCopy = reason;
  v26.receiver = self;
  v26.super_class = OSACrackShotReport;
  v16 = [(OSAStackShotReport *)&v26 initForPid:v11 process:nameCopy withReason:0 exceptionCode:0 exceptionCodeCount:0 stackshotFlags:0];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(v16 + 10, name);
    objc_storeStrong(&v17->_bundleID, d);
    v18 = [(OSACrackShotReport *)v17 decode_reason:snapshot reason:reasonCopy];
    termination_info = v17->_termination_info;
    v17->_termination_info = v18;

    [(OSAStackShotReport *)v17 setReason:reasonCopy];
    v20 = +[OSASystemConfiguration sharedInstance];
    v21 = [v20 getTaskingKey:@"disableWatchdogStackshot"];
    v17->_isSnapshotDisabled = [v21 BOOLValue];

    v17->_isSystemWatchdog = 1;
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
      _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "failed task_read_for_pid", v22, 2u);
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
        _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "failed to create VMUProcInfo", buf, 2u);
      }

      v11 = 0;
    }

    mach_port_deallocate(*v8, name);
  }

  v14 = [(OSACrackShotReport *)self initWithPid:v6 procName:v11 bundleID:0 exitSnapshot:snapshot reason:reasonCopy];

  if (v14)
  {
    v14->_isSystemWatchdog = 0;
    if (v10)
    {
      *(&v14->_cpuType + 1) = [v10 cpuType];
      userAppName = [v10 userAppName];
      v16 = [userAppName copy];
      procPath = v14->_procPath;
      v14->_procPath = v16;

      if ([(NSString *)v14->_procPath length])
      {
        v18 = [OSAReport findBundleAtPath:v14->_procPath withKeys:&unk_1F241F1D0 bundleURL:0];
        v19 = [v18 objectForKeyedSubscript:@"CFBundleIdentifier"];
        bundleID = v14->_bundleID;
        v14->_bundleID = v19;
      }
    }
  }

  return v14;
}

- (id)problemType
{
  if (self->_isSystemWatchdog)
  {
    return @"409";
  }

  else
  {
    return @"509";
  }
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

  v14[0] = @"name";
  v14[1] = @"app_name";
  v15[0] = appName;
  v15[1] = appName;
  v14[2] = @"share_with_app_devs";
  v4 = MEMORY[0x1E696AD98];
  v5 = +[OSASystemConfiguration sharedInstance];
  v6 = [v4 numberWithBool:{objc_msgSend(v5, "optIn3rdParty")}];
  v15[2] = v6;
  v14[3] = @"incident_id";
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
    [v9 setObject:bundleID forKeyedSubscript:@"bundleID"];
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
      v9 = [_TtC11OSAnalytics24WatchdogExitReasonHelper descriptionFromCode:LODWORD(decode_reason->ers_code)];
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
  v98[10] = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v97[0] = @"incident";
  incidentID = [(OSAReport *)self incidentID];
  v98[0] = incidentID;
  v97[1] = @"crashReporterKey";
  v61 = +[OSASystemConfiguration sharedInstance];
  crashReporterKey = [v61 crashReporterKey];
  v98[1] = crashReporterKey;
  v97[2] = @"modelCode";
  v60 = +[OSASystemConfiguration sharedInstance];
  modelCode = [v60 modelCode];
  v98[2] = modelCode;
  v97[3] = @"pid";
  v57 = [MEMORY[0x1E696AD98] numberWithInt:self->super._pid];
  v98[3] = v57;
  v97[4] = @"cpuType";
  decode_cpuType = [(OSACrackShotReport *)self decode_cpuType];
  v98[4] = decode_cpuType;
  v97[5] = @"osVersion";
  v95[0] = @"train";
  v55 = +[OSASystemConfiguration sharedInstance];
  osTrain = [v55 osTrain];
  v96[0] = osTrain;
  v95[1] = @"build";
  v6 = +[OSASystemConfiguration sharedInstance];
  buildVersion = [v6 buildVersion];
  v96[1] = buildVersion;
  v95[2] = @"releaseType";
  v8 = +[OSASystemConfiguration sharedInstance];
  releaseType = [v8 releaseType];
  v96[2] = releaseType;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v96 forKeys:v95 count:3];
  v98[5] = v10;
  v97[6] = @"captureTime";
  v11 = OSADateFormat(2u, self->super.super._capture_time);
  v98[6] = v11;
  v98[7] = &unk_1F241E8A8;
  v97[7] = @"deployVersion";
  v97[8] = @"variant";
  v97[9] = @"variantVersion";
  v98[8] = @"stackshot";
  v98[9] = &unk_1F241E8C0;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v98 forKeys:v97 count:10];
  blockCopy[2](blockCopy, v12);

  problemType = [(OSACrackShotReport *)self problemType];
  v14 = [OSALog commonFieldsForBody:problemType];
  blockCopy[2](blockCopy, v14);

  v15 = +[OSASystemConfiguration sharedInstance];
  LODWORD(problemType) = [v15 appleInternal];

  if (problemType)
  {
    v16 = +[OSASystemConfiguration sharedInstance];
    hwModel = [v16 hwModel];

    v93 = @"codeName";
    v94 = hwModel;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v94 forKeys:&v93 count:1];
    blockCopy[2](blockCopy, v18);
  }

  if ([(NSString *)self->super._appName length])
  {
    appName = self->super._appName;
    v91 = @"procName";
    v92 = appName;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v92 forKeys:&v91 count:1];
    blockCopy[2](blockCopy, v20);
  }

  if ([(NSString *)self->_procPath length])
  {
    procPath = self->_procPath;
    v89 = @"procPath";
    v90 = procPath;
    v22 = MEMORY[0x1E695DF20];
    v23 = procPath;
    v24 = [v22 dictionaryWithObjects:&v90 forKeys:&v89 count:1];

    blockCopy[2](blockCopy, v24);
  }

  if (self->_bundleID)
  {
    bundleID = self->_bundleID;
    v87 = @"bundleInfo";
    v85 = @"CFBundleIdentifier";
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&bundleID forKeys:&v85 count:1];
    v88 = v25;
    v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v88 forKeys:&v87 count:1];
    blockCopy[2](blockCopy, v26);
  }

  if ([(NSDictionary *)self->_termination_info count])
  {
    termination_info = self->_termination_info;
    v83 = @"termination";
    v84 = termination_info;
    v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v84 forKeys:&v83 count:1];
    blockCopy[2](blockCopy, v28);
  }

  bootSessionUUID = [objc_opt_class() bootSessionUUID];
  v30 = bootSessionUUID;
  if (bootSessionUUID)
  {
    v81 = @"bootSessionUUID";
    v82 = bootSessionUUID;
    v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v82 forKeys:&v81 count:1];
    blockCopy[2](blockCopy, v31);
  }

  v79 = @"uptime";
  v32 = [objc_opt_class() reduceToTwoSigFigures:self->_awakeSystemUptime];
  v80 = v32;
  v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v80 forKeys:&v79 count:1];
  blockCopy[2](blockCopy, v33);

  v34 = +[OSACrackShotReport getThermalPressureLevel];
  v35 = v34;
  if (v34)
  {
    v77 = @"thermalPressureLevel";
    v78 = v34;
    v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v78 forKeys:&v77 count:1];
    blockCopy[2](blockCopy, v36);
  }

  processInfo = [MEMORY[0x1E696AE30] processInfo];
  isLowPowerModeEnabled = [processInfo isLowPowerModeEnabled];

  if (isLowPowerModeEnabled)
  {
    blockCopy[2](blockCopy, &unk_1F241EDD8);
  }

  v39 = +[OSACrackShotReport getDisplayState];
  v40 = v39;
  if (v39)
  {
    v75 = @"displayState";
    v76 = v39;
    v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v76 forKeys:&v75 count:1];
    blockCopy[2](blockCopy, v41);
  }

  if (![(OSACrackShotReport *)self isSnapshotDisabled])
  {
    if (self->super._ss_trace_buffer)
    {
      v73 = &unk_1F241E8D8;
      v74 = @"stackshot";
      v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v74 forKeys:&v73 count:1];
      blockCopy[2](blockCopy, v42);

      v43 = objc_alloc_init(OSABinaryImageCatalog);
      [(OSAStackShotReport *)self decodeKCDataWithBlock:blockCopy withTuning:&unk_1F241EE00 usingCatalog:v43];
      v71 = @"binaryImages";
      reportUsedImages = [(OSABinaryImageCatalog *)v43 reportUsedImages];
      v72 = reportUsedImages;
      v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v72 forKeys:&v71 count:1];
      blockCopy[2](blockCopy, v45);

      [(OSABinaryImageCatalog *)v43 appendNotesTo:self->super.super._notes];
      v69 = &unk_1F241E908;
      v70 = &stru_1F2411100;
      v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v70 forKeys:&v69 count:1];
      blockCopy[2](blockCopy, v46);
    }

    spindump = [(OSACrackShotReport *)self spindump];

    if (spindump)
    {
      v67 = @"spindump";
      spindump2 = [(OSACrackShotReport *)self spindump];
      v68 = spindump2;
      v49 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v68 forKeys:&v67 count:1];
      blockCopy[2](blockCopy, v49);
    }
  }

  additionalPayload = self->super._additionalPayload;
  if (additionalPayload)
  {
    v65 = @"additionalPayload";
    v66 = additionalPayload;
    v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v66 forKeys:&v65 count:1];
    blockCopy[2](blockCopy, v51);
  }

  [(NSMutableArray *)self->super.super._notes addObject:@"This is a watchdog-triggered termination event, and not expected to be well-represented in the legacy crash format"];
  if (self->_isSnapshotDisabled)
  {
    [(NSMutableArray *)self->super.super._notes addObject:@"stackshot inclusion disabled"];
  }

  if ([(NSMutableArray *)self->super.super._notes count])
  {
    notes = self->super.super._notes;
    v63[0] = @"reportNotes";
    v63[1] = &unk_1F241E920;
    v64[0] = notes;
    v64[1] = &unk_1F241E8F0;
    v53 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v64 forKeys:v63 count:2];
    blockCopy[2](blockCopy, v53);
  }
}

- (BOOL)saveWithOptions:(id)options
{
  v8.receiver = self;
  v8.super_class = OSACrackShotReport;
  v4 = [(OSAReport *)&v8 saveWithOptions:options];
  if (self->_isSystemWatchdog)
  {
    v5 = 3;
  }

  else
  {
    v5 = 4;
  }

  logfile = [(OSAReport *)self logfile];
  [OSADiagnosticsReporterSupport handleDiagnosticLog:v5 logPath:logfile completion:0];

  return v4;
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
        +[OSACrackShotReport getThermalPressureLevel];
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
    +[OSACrackShotReport getThermalPressureLevel];
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
      +[OSACrackShotReport getDisplayState];
    }

    return 0;
  }

  v3 = 0;
  if (notify_get_state(out_token, &v3))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      +[OSACrackShotReport getDisplayState];
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

@end