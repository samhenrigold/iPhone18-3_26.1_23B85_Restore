@interface OSAStackShotReport
- (id)appleCareDetails;
- (id)exceptionCodesDescription;
- (id)getStackshotData;
- (id)getVMStatistics;
- (id)initForPid:(int)pid process:(id)process withReason:(id)reason exceptionCode:(int64_t *)code exceptionCodeCount:(unsigned int)count stackshotFlags:(unsigned int)flags;
- (id)reportNamePrefix;
- (id)resampleUUIDsForTask:(int)task usingCatalog:(id)catalog;
- (int)resampleTruncatedBacktracesForTask:(int)task forThreads:(id)threads usingCatalog:(id)catalog in:(id)in usingSymbolicator:(_CSTypeRef)symbolicator;
- (void)acquireStackshot;
- (void)addCustomField:(const char *)field value:(id)value into:(id)into;
- (void)dealloc;
- (void)decodeKCDataWithBlock:(id)block withTuning:(id)tuning usingCatalog:(id)catalog;
- (void)generateLogAtLevel:(BOOL)level withBlock:(id)block;
- (void)queryThermalData;
- (void)useStackshotBuffer:(const void *)buffer size:(unsigned int)size frontmostPids:(id)pids atTime:(double)time machTime:(unint64_t)machTime sequence:(unsigned int)sequence isSnapshotDead:(BOOL)dead;
- (void)useStackshotData:(id)data frontmostPids:(id)pids atTime:(double)time machTime:(unint64_t)machTime sequence:(unsigned int)sequence;
@end

@implementation OSAStackShotReport

- (id)initForPid:(int)pid process:(id)process withReason:(id)reason exceptionCode:(int64_t *)code exceptionCodeCount:(unsigned int)count stackshotFlags:(unsigned int)flags
{
  processCopy = process;
  reasonCopy = reason;
  v27.receiver = self;
  v27.super_class = OSAStackShotReport;
  v17 = [(OSAReport *)&v27 init];
  v18 = v17;
  if (v17)
  {
    v17->_pid = pid;
    objc_storeStrong(&v17->_appName, process);
    [(OSAStackShotReport *)v18 setReason:reasonCopy];
    v19 = objc_opt_new();
    frontmostPids = v18->_frontmostPids;
    v18->_frontmostPids = v19;

    v18->_ss_sequence = -1;
    v18->_exceptionCodeCount = count;
    v21 = malloc_type_calloc(8uLL, count, 0x64539EFAuLL);
    v18->_exceptionCodes = v21;
    memcpy(v21, code, 8 * v18->_exceptionCodeCount);
    if ((flags & 0x80000000) != 0)
    {
      [(NSMutableDictionary *)v18->super._logWritingOptions setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"override-limit"];
    }

    v18->_flags = flags & 0x7FFFFFFF;
    v18->_jetsamLevel = -1;
    v22 = objc_opt_new();
    extras = v18->_extras;
    v18->_extras = v22;

    v18->_capture_absoluteTime = mach_absolute_time();
    v18->super._capture_time = CFAbsoluteTimeGetCurrent();
    v24 = +[OSASystemConfiguration sharedInstance];
    appleInternal = [v24 appleInternal];

    if (appleInternal)
    {
      v18->_includeSyslog = 1;
    }

    if (initForPid_process_withReason_exceptionCode_exceptionCodeCount_stackshotFlags__onceToken != -1)
    {
      [OSAStackShotReport initForPid:process:withReason:exceptionCode:exceptionCodeCount:stackshotFlags:];
    }
  }

  return v18;
}

void __100__OSAStackShotReport_initForPid_process_withReason_exceptionCode_exceptionCodeCount_stackshotFlags___block_invoke()
{
  v0 = +[OSASystemConfiguration sharedInstance];
  v1 = [v0 getTaskingKey:@"stackshot_tuning"];
  v2 = tasked_tuning;
  tasked_tuning = v1;

  if (tasked_tuning)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v3 = tasked_tuning;
      tasked_tuning = 0;
    }
  }
}

- (void)dealloc
{
  if (self->_stackshot_config)
  {
    stackshot_config_dealloc();
  }

  free(self->_exceptionCodes);
  v3.receiver = self;
  v3.super_class = OSAStackShotReport;
  [(OSAStackShotReport *)&v3 dealloc];
}

- (id)appleCareDetails
{
  v19[4] = *MEMORY[0x1E69E9840];
  if (self->_pid)
  {
    v3 = [objc_alloc(MEMORY[0x1E69D4F38]) initWithPid:self->_pid];
    v4 = v3;
    if (v3)
    {
      userAppName = [v3 userAppName];
      v6 = CFURLCreateWithFileSystemPath(0, userAppName, kCFURLPOSIXPathStyle, 1u);
      if (v6)
      {
        v7 = v6;
        v8 = _CFBundleCopyBundleURLForExecutableURL();
        if (v8)
        {
          v9 = v8;
          v10 = CFBundleCreate(0, v8);
          if (v10)
          {
            v11 = v10;
            v12 = CFBundleGetIdentifier(v10);
            CFRelease(v11);
          }

          else
          {
            v12 = 0;
          }

          CFRelease(v9);
        }

        else
        {
          v12 = 0;
        }

        CFRelease(v7);
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  appName = self->_appName;
  if (appName)
  {
    v19[0] = &unk_1F241E758;
    v19[1] = appName;
    v14 = &stru_1F2411100;
    if (v12)
    {
      v15 = v12;
    }

    else
    {
      v15 = &stru_1F2411100;
    }

    v19[2] = v15;
    reason = self->_reason;
    if (reason)
    {
      v14 = [(NSString *)reason stringByReplacingOccurrencesOfString:@"\n" withString:@" "];
    }

    v19[3] = v14;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:4];
    if (reason)
    {
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)reportNamePrefix
{
  appName = self->_appName;
  if (appName)
  {
    appName = [MEMORY[0x1E696AEC0] stringWithFormat:@"stacks+%@", appName];
  }

  else
  {
    appName = @"stacks";
  }

  if (self->_ss_sequence == -1)
  {
    v5 = &stru_1F2411100;
  }

  else
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"-%u", self->_ss_sequence];
  }

  v6 = [(__CFString *)appName stringByAppendingString:v5];

  return v6;
}

- (void)queryThermalData
{
  Current = CFAbsoluteTimeGetCurrent();
  if (Current - *&queryThermalData_queried > 30.0)
  {
    queryThermalData_queried = *&Current;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __38__OSAStackShotReport_queryThermalData__block_invoke;
    v4[3] = &unk_1E7A26EC0;
    v4[4] = self;
    [OSAReport executeWithTimeout:2000 Code:v4];
  }
}

uint64_t __38__OSAStackShotReport_queryThermalData__block_invoke(uint64_t a1)
{
  result = OSThermalNotificationCurrentLevel();
  *(*(a1 + 32) + 120) = result;
  return result;
}

- (void)useStackshotBuffer:(const void *)buffer size:(unsigned int)size frontmostPids:(id)pids atTime:(double)time machTime:(unint64_t)machTime sequence:(unsigned int)sequence isSnapshotDead:(BOOL)dead
{
  pidsCopy = pids;
  if (self->_stackshot_config)
  {
    stackshot_config_dealloc();
    self->_stackshot_config = 0;
  }

  self->_ss_trace_buffer = buffer;
  self->_ss_trace_length = size;
  self->_ss_sequence = sequence;
  if (!self->_pid)
  {
    self->_pid = -1;
  }

  [(NSMutableArray *)self->_frontmostPids removeAllObjects];
  [(NSMutableArray *)self->_frontmostPids addObjectsFromArray:pidsCopy];
  self->super._capture_time = time;
  self->_capture_absoluteTime = machTime;
  self->_dead_snapshot = dead;
}

- (void)useStackshotData:(id)data frontmostPids:(id)pids atTime:(double)time machTime:(unint64_t)machTime sequence:(unsigned int)sequence
{
  v7 = *&sequence;
  dataCopy = data;
  pidsCopy = pids;
  dataCopy2 = data;
  bytes = [dataCopy2 bytes];
  v16 = [dataCopy2 length];

  [(OSAStackShotReport *)self useStackshotBuffer:bytes size:v16 frontmostPids:pidsCopy atTime:machTime machTime:v7 sequence:time];
}

- (void)acquireStackshot
{
  v41 = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self->super._notes removeAllObjects];
  if (self->_stackshot_config)
  {
    stackshot_config_dealloc();
    self->_stackshot_config = 0;
  }

  self->_ss_trace_buffer = 0;
  self->_ss_trace_length = 0;
  self->_capture_absoluteTime = mach_absolute_time();
  self->super._capture_time = CFAbsoluteTimeGetCurrent();
  v3 = stackshot_config_create();
  if (v3)
  {
    v4 = v3;
    flags = self->_flags;
    self->_flags = flags | 0x10000;
    if ((flags & 0xFFFEFFFF) == 0)
    {
      self->_flags = 73743;
      v6 = [tasked_tuning objectForKeyedSubscript:@"uuid_faulting"];
      v7 = v6;
      if (!v6 || [v6 BOOLValue])
      {
        self->_flags |= 0x200000u;
      }

      v8 = [tasked_tuning objectForKeyedSubscript:@"waitinfos"];
      v9 = v8;
      if (!v8 || [v8 BOOLValue])
      {
        self->_flags |= 0x1000000u;
      }

      v10 = [tasked_tuning objectForKeyedSubscript:@"shared_cache_layout"];
      v11 = v10;
      if (!v10 || [v10 BOOLValue])
      {
        self->_flags |= 0x80000u;
      }
    }

    if (stackshot_config_set_flags())
    {
      notes = self->super._notes;
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to set flags for stackshot config"];
      [(NSMutableArray *)notes addObject:v13];

LABEL_17:
      stackshot_config_dealloc();
      goto LABEL_19;
    }

    v29 = stackshot_capture_with_config();
    if (v29)
    {
      v30 = v29;
      v31 = self->super._notes;
      v32 = MEMORY[0x1E696AEC0];
      v33 = geteuid();
      v34 = [v32 stringWithFormat:@"Stackshot syscall failed (from euid %d) with error %d: %s", v33, v30, strerror(v30)];
      [(NSMutableArray *)v31 addObject:v34];

      if (v30 == 2 && (self->_flags & 0x8000) != 0)
      {
        [(NSMutableArray *)self->super._notes addObject:@"Stackshot key-combo received while a prior stackshot was still processing."];
      }

      goto LABEL_17;
    }

    self->_stackshot_config = v4;
    self->_ss_trace_buffer = stackshot_config_get_stackshot_buffer();
    self->_ss_trace_length = stackshot_config_get_stackshot_size();
    if ((self->_flags & 0x10000) == 0)
    {
      self->_jetsamLevel = memorystatus_control();
    }
  }

  else
  {
    v14 = self->super._notes;
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to allocate memory for stackshot config"];
    [(NSMutableArray *)v14 addObject:v15];
  }

LABEL_19:
  [(NSMutableArray *)self->_frontmostPids removeAllObjects];
  v16 = memorystatus_control();
  if (v16 < 1)
  {
    v28 = self->super._notes;
    [MEMORY[0x1E696AEC0] stringWithFormat:@"No jetsam status list available (size query returned %d)", (2 * v16)];
    v35 = LABEL_44:;
    [(NSMutableArray *)v28 addObject:v35];

    goto LABEL_47;
  }

  v17 = malloc_type_malloc((2 * v16), 0x8AA04207uLL);
  if (!v17)
  {
    v28 = self->super._notes;
    [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to allocate memory for jetsam status list", v38];
    goto LABEL_44;
  }

  v18 = v17;
  v19 = memorystatus_control();
  if (v19 >= 25)
  {
    v20 = v19 / 0x18uLL;
    v21 = v18 + 4;
    while (1)
    {
      v22 = *(v21 + 4);
      v23 = *(v21 - 1);
      if (!proc_name(*(v21 - 1), &buffer, 0x20u) || (buffer == 0x6F42676E69727053 ? (v24 = v40 == 6582881) : (v24 = 0), !v24))
      {
        if ((v22 & 0x100) != 0)
        {
          if (*v21 != 100 && (v22 & 1) == 0)
          {
            goto LABEL_36;
          }
        }

        else if ((v22 & 1) == 0)
        {
          goto LABEL_36;
        }
      }

      frontmostPids = self->_frontmostPids;
      v27 = [MEMORY[0x1E696AD98] numberWithInt:v23];
      [(NSMutableArray *)frontmostPids addObject:v27];

LABEL_36:
      v21 += 24;
      if (!--v20)
      {
        goto LABEL_46;
      }
    }
  }

  v36 = self->super._notes;
  v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to get jetsam status list (query returned %d)", v19];
  [(NSMutableArray *)v36 addObject:v37];

LABEL_46:
  free(v18);
LABEL_47:
  [(OSAStackShotReport *)self queryThermalData];
}

- (id)getStackshotData
{
  if (self->_ss_trace_buffer && self->_ss_trace_length)
  {
    v3 = [MEMORY[0x1E695DEF0] dataWithBytes:? length:?];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)generateLogAtLevel:(BOOL)level withBlock:(id)block
{
  v76[10] = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v75[0] = @"incident";
  incidentID = [(OSAReport *)self incidentID];
  v76[0] = incidentID;
  v75[1] = @"crashReporterKey";
  v51 = +[OSASystemConfiguration sharedInstance];
  crashReporterKey = [v51 crashReporterKey];
  v76[1] = crashReporterKey;
  v75[2] = @"product";
  v49 = +[OSASystemConfiguration sharedInstance];
  modelCode = [v49 modelCode];
  v76[2] = modelCode;
  v75[3] = @"build";
  v6 = +[OSASystemConfiguration sharedInstance];
  productNameVersionBuildString = [v6 productNameVersionBuildString];
  v76[3] = productNameVersionBuildString;
  v75[4] = @"kernel";
  kernelVersionDescription = [objc_opt_class() kernelVersionDescription];
  v9 = kernelVersionDescription;
  v10 = tasked_tuning;
  if (!tasked_tuning)
  {
    v10 = MEMORY[0x1E695E0F8];
  }

  v76[4] = kernelVersionDescription;
  v76[5] = v10;
  v75[5] = @"tuning";
  v75[6] = @"exception";
  exceptionCodesDescription = [(OSAStackShotReport *)self exceptionCodesDescription];
  v12 = exceptionCodesDescription;
  reason = self->_reason;
  if (!reason)
  {
    reason = &stru_1F2411100;
  }

  v76[6] = exceptionCodesDescription;
  v76[7] = reason;
  v75[7] = @"reason";
  v75[8] = @"frontmostPids";
  v76[8] = self->_frontmostPids;
  v75[9] = @"codeSigningMonitor";
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(objc_opt_class(), "codeSigningMonitor")}];
  v76[9] = v14;
  v15 = 0x1E695D000uLL;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v76 forKeys:v75 count:10];
  blockCopy[2](blockCopy, v16);

  problemType = [(OSAStackShotReport *)self problemType];
  v18 = [OSALog commonFieldsForBody:problemType];
  blockCopy[2](blockCopy, v18);

  if (self->_pid)
  {
    v73 = @"pid";
    v19 = [MEMORY[0x1E696AD98] numberWithInt:?];
    v74 = v19;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v74 forKeys:&v73 count:1];
    blockCopy[2](blockCopy, v20);
  }

  additionalPayload = self->_additionalPayload;
  if (additionalPayload)
  {
    v71 = @"additionalPayload";
    v72 = additionalPayload;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v72 forKeys:&v71 count:1];
    blockCopy[2](blockCopy, v22);
  }

  if (self->_thermalSensorValues)
  {
    v69 = @"thermalData";
    v67[0] = @"thermalLevel";
    v23 = [MEMORY[0x1E696AD98] numberWithInt:self->_thermalNotificationCurrentLevel];
    v67[1] = @"sensors";
    v68[0] = v23;
    v68[1] = self->_thermalSensorValues;
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v68 forKeys:v67 count:2];
    v70 = v24;
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v70 forKeys:&v69 count:1];
    blockCopy[2](blockCopy, v25);
  }

  if ([objc_opt_class() isInLDM])
  {
    blockCopy[2](blockCopy, &unk_1F241EC20);
  }

  if ([objc_opt_class() isDeveloperMode])
  {
    blockCopy[2](blockCopy, &unk_1F241EC48);
  }

  if (!+[_TtC11OSAnalytics11DeviceState isCustomerFused])
  {
    blockCopy[2](blockCopy, &unk_1F241EC70);
  }

  bootProgressRegister = [objc_opt_class() bootProgressRegister];
  v27 = bootProgressRegister;
  if (bootProgressRegister)
  {
    v65 = @"bootProgressRegister";
    v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"0x%llx", objc_msgSend(bootProgressRegister, "unsignedLongLongValue")];
    v66 = v28;
    v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v66 forKeys:&v65 count:1];
    blockCopy[2](blockCopy, v29);
  }

  v30 = objc_alloc_init(OSABinaryImageCatalog);
  if (*self->_exceptionCodes == 3131746989)
  {
    v31 = &unk_1F241EC98;
  }

  else
  {
    v31 = tasked_tuning;
  }

  v32 = v31;
  [(OSAStackShotReport *)self decodeKCDataWithBlock:blockCopy withTuning:v32 usingCatalog:v30];
  v63 = @"date";
  v33 = OSADateFormat(1u, self->super._capture_time);
  v64 = v33;
  v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v64 forKeys:&v63 count:1];
  blockCopy[2](blockCopy, v34);

  v61 = @"absoluteTime";
  v35 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_capture_absoluteTime];
  v62 = v35;
  v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v62 forKeys:&v61 count:1];
  blockCopy[2](blockCopy, v36);

  v59 = @"binaryImages";
  reportUsedImages = [(OSABinaryImageCatalog *)v30 reportUsedImages];
  v60 = reportUsedImages;
  v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
  blockCopy[2](blockCopy, v38);

  [(OSABinaryImageCatalog *)v30 appendNotesTo:self->super._notes];
  if (self->_includeSyslog && includeSection(tasked_tuning, @"syslog"))
  {
    v39 = [(OSAReport *)self getSyslogForPids:0 andOptionalSenders:0 additionalPredicates:0];
    v40 = v39;
    if (v39)
    {
      v57[0] = @"syslog";
      reverseObjectEnumerator = [v39 reverseObjectEnumerator];
      allObjects = [reverseObjectEnumerator allObjects];
      v57[1] = &unk_1F241E788;
      v58[0] = allObjects;
      v58[1] = &unk_1F241E770;
      v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v58 forKeys:v57 count:2];
      blockCopy[2](blockCopy, v43);

      v15 = 0x1E695D000;
    }

    else
    {
      [(NSMutableArray *)self->super._notes addObject:@"Syslog query timed out"];
    }
  }

  if ([(NSMutableArray *)self->super._notes count])
  {
    notes = self->super._notes;
    v55 = @"notes";
    v56 = notes;
    v45 = [*(v15 + 3872) dictionaryWithObjects:&v56 forKeys:&v55 count:1];
    blockCopy[2](blockCopy, v45);
  }

  if ([(NSMutableDictionary *)self->_extras count])
  {
    extras = self->_extras;
    v53 = @"additionalDetails";
    v54 = extras;
    v47 = [*(v15 + 3872) dictionaryWithObjects:&v54 forKeys:&v53 count:1];
    blockCopy[2](blockCopy, v47);
  }
}

- (id)exceptionCodesDescription
{
  if (self->_exceptionCodeCount)
  {
    array = [MEMORY[0x1E695DF70] array];
    if (self->_exceptionCodeCount)
    {
      v4 = 0;
      do
      {
        v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"0x%08x", self->_exceptionCodes[v4]];
        [array addObject:v5];

        ++v4;
      }

      while (v4 < self->_exceptionCodeCount);
    }

    v6 = [array componentsJoinedByString:{@", "}];
  }

  else
  {
    v6 = &stru_1F2411100;
  }

  return v6;
}

- (id)getVMStatistics
{
  v2 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:22];
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  *host_info64_out = 0u;
  v31 = 0u;
  host_info64_outCnt = 40;
  v3 = MEMORY[0x1B2702F50]();
  if (host_statistics64(v3, 4, host_info64_out, &host_info64_outCnt))
  {
    [v2 setObject:@"host_statistics64 failed" forKeyedSubscript:@"error"];
  }

  else
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:host_info64_out[0]];
    [v2 setObject:v4 forKeyedSubscript:@"free_count"];

    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:host_info64_out[1]];
    [v2 setObject:v5 forKeyedSubscript:@"active_count"];

    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:host_info64_out[2]];
    [v2 setObject:v6 forKeyedSubscript:@"inactive_count"];

    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:host_info64_out[3]];
    [v2 setObject:v7 forKeyedSubscript:@"wire_count"];

    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v31];
    [v2 setObject:v8 forKeyedSubscript:@"zero_fill_count"];

    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(&v31 + 1)];
    [v2 setObject:v9 forKeyedSubscript:@"reactivations"];

    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v32];
    [v2 setObject:v10 forKeyedSubscript:@"pageins"];

    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(&v32 + 1)];
    [v2 setObject:v11 forKeyedSubscript:@"pageouts"];

    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v33];
    [v2 setObject:v12 forKeyedSubscript:@"faults"];

    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(&v33 + 1)];
    [v2 setObject:v13 forKeyedSubscript:@"cow_faults"];

    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v34];
    [v2 setObject:v14 forKeyedSubscript:@"lookups"];

    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(&v34 + 1)];
    [v2 setObject:v15 forKeyedSubscript:@"hits"];

    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v35];
    [v2 setObject:v16 forKeyedSubscript:@"purges"];

    v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:DWORD2(v35)];
    [v2 setObject:v17 forKeyedSubscript:@"purgeable_count"];

    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:HIDWORD(v35)];
    [v2 setObject:v18 forKeyedSubscript:@"speculative_count"];

    v19 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v36];
    [v2 setObject:v19 forKeyedSubscript:@"decompressions"];

    v20 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(&v36 + 1)];
    [v2 setObject:v20 forKeyedSubscript:@"compressions"];

    v21 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v37];
    [v2 setObject:v21 forKeyedSubscript:@"swapins"];

    v22 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(&v37 + 1)];
    [v2 setObject:v22 forKeyedSubscript:@"swapouts"];

    v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v38];
    [v2 setObject:v23 forKeyedSubscript:@"compressor_page_count"];

    v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:DWORD1(v38)];
    [v2 setObject:v24 forKeyedSubscript:@"throttled_count"];

    v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:DWORD2(v38)];
    [v2 setObject:v25 forKeyedSubscript:@"external_page_count"];

    v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:HIDWORD(v38)];
    [v2 setObject:v26 forKeyedSubscript:@"internal_page_count"];

    v27 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v39];
    [v2 setObject:v27 forKeyedSubscript:@"total_uncompressed_pages_in_compressor"];
  }

  mach_port_deallocate(*MEMORY[0x1E69E9A60], v3);

  return v2;
}

- (int)resampleTruncatedBacktracesForTask:(int)task forThreads:(id)threads usingCatalog:(id)catalog in:(id)in usingSymbolicator:(_CSTypeRef)symbolicator
{
  var1 = symbolicator.var1;
  var0 = symbolicator.var0;
  v11 = *&task;
  threadsCopy = threads;
  catalogCopy = catalog;
  inCopy = in;
  if ((CSIsNull() & 1) == 0 && getpid() != v11)
  {
    v17 = objc_autoreleasePoolPush();
    v56 = 0;
    if (task_read_for_pid())
    {
      notes = self->super._notes;
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"task_read_for_pid(%d) for resampling backtraces failed", v11];
      [(NSMutableArray *)notes addObject:v19];
      v16 = 0;
LABEL_37:

      objc_autoreleasePoolPop(v17);
      goto LABEL_38;
    }

    v44 = [objc_alloc(MEMORY[0x1E69D4F40]) initWithPID:v11 options:64];
    if (v44)
    {
      if (resampleTruncatedStacksWithSymbolicator == 1)
      {
        [v44 setSymbolicator:{var0, var1}];
      }

      act_list = 0;
      act_listCnt = 0;
      if (!task_threads(v56, &act_list, &act_listCnt))
      {
        if (act_listCnt)
        {
          v42 = v17;
          v23 = 0;
          v16 = 0;
          v19 = 0;
          v22 = MEMORY[0x1E69E9A60];
          v43 = threadsCopy;
          do
          {
            v24 = act_list[v23];
            *thread_info_out = 0;
            v52 = 0;
            v53 = 0;
            thread_info_outCnt = 6;
            if (thread_info(v24, 4u, thread_info_out, &thread_info_outCnt))
            {
              v25 = -1;
            }

            else
            {
              v25 = *thread_info_out;
            }

            v26 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v25];
            v27 = [threadsCopy objectForKeyedSubscript:v26];

            if (v27)
            {
              v47 = v23;
              v46 = v24;
              v28 = [v44 sampleThread:v24];
              backtrace = [v28 backtrace];
              v45 = v28;
              backtraceLength = [v28 backtraceLength];
              v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unmapped pages caused truncated backtrace re-sampled %d frames", backtraceLength];;
              v48 = v27;
              [v27 setObject:v31 forKeyedSubscript:@"notice"];

              if (backtrace)
              {
                v32 = backtraceLength == 0;
              }

              else
              {
                v32 = 1;
              }

              if (!v32)
              {
                v33 = [MEMORY[0x1E695DF70] arrayWithCapacity:backtraceLength];
                do
                {
                  v34 = v19;
                  v35 = *backtrace++;
                  v49 = v19;
                  [catalogCopy searchFrame:v35 in:inCopy result:&v49];
                  v36 = inCopy;
                  v38 = v37 = catalogCopy;
                  v19 = v49;

                  [v33 addObject:v38];
                  catalogCopy = v37;
                  inCopy = v36;
                  if (v35)
                  {
                    v39 = v19 == 0;
                  }

                  else
                  {
                    v39 = 0;
                  }

                  if (v39)
                  {
                    ++v16;
                  }

                  LODWORD(backtraceLength) = backtraceLength - 1;
                }

                while (backtraceLength);
                [v48 setObject:v33 forKeyedSubscript:@"resampledUserFrames"];

                threadsCopy = v43;
                v22 = MEMORY[0x1E69E9A60];
              }

              v23 = v47;
              v27 = v48;
              LODWORD(v24) = v46;
            }

            mach_port_deallocate(*v22, v24);

            ++v23;
          }

          while (v23 < act_listCnt);
          v40 = 4 * act_listCnt;
          v17 = v42;
        }

        else
        {
          v19 = 0;
          v16 = 0;
          v40 = 0;
          v22 = MEMORY[0x1E69E9A60];
        }

        mach_vm_deallocate(*v22, act_list, v40);
        goto LABEL_36;
      }

      v20 = self->super._notes;
      [MEMORY[0x1E696AEC0] stringWithFormat:@"task_threads() for %d failed", v11];
    }

    else
    {
      v20 = self->super._notes;
      [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to create VMUSampler for %d", v11];
    }
    v21 = ;
    [(NSMutableArray *)v20 addObject:v21];

    v19 = 0;
    v16 = 0;
    v22 = MEMORY[0x1E69E9A60];
LABEL_36:
    mach_port_deallocate(*v22, v56);

    goto LABEL_37;
  }

  v16 = 0;
LABEL_38:

  return v16;
}

- (id)resampleUUIDsForTask:(int)task usingCatalog:(id)catalog
{
  v4 = *&task;
  catalogCopy = catalog;
  array = [MEMORY[0x1E695DF70] array];
  if (getpid() != v4)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = MEMORY[0x1E69E9A60];
    if (task_read_for_pid())
    {
      notes = self->super._notes;
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"task_read_for_pid(%d) for resampling UUIDs failed", v4];
      [(NSMutableArray *)notes addObject:v11];
    }

    else
    {
      if (_dyld_process_info_create())
      {
        v15 = catalogCopy;
        v16 = array;
        _dyld_process_info_for_each_image();
        _dyld_process_info_release();
        [v16 sortByAddressAndSetInferredSizes];

        v12 = v15;
      }

      else
      {
        v13 = self->super._notes;
        v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"_dyld_process_info_create(%d) for resampling UUIDs failed with %d", v4, 0];
        [(NSMutableArray *)v13 addObject:v12];
      }

      mach_port_deallocate(*v9, 0);
    }

    objc_autoreleasePoolPop(v8);
  }

  return array;
}

void *__56__OSAStackShotReport_resampleUUIDsForTask_usingCatalog___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = [*(a1 + 32) isAddressInTargetedCache:a2];
  if ((result & 1) == 0)
  {
    v7 = *(a1 + 40);

    return [v7 addImage:a3 address:a2 size:0];
  }

  return result;
}

- (void)addCustomField:(const char *)field value:(id)value into:(id)into
{
  valueCopy = value;
  intoCopy = into;
  if (field && valueCopy)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:field];
    if (v9)
    {
      if ([intoCopy count] && (objc_msgSend(intoCopy, "top"), (v10 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v11 = v10;
        data = [v10 data];
        [data setObject:valueCopy forKeyedSubscript:v9];
      }

      else
      {
        [(NSMutableDictionary *)self->_extras setObject:valueCopy forKeyedSubscript:v9];
      }
    }
  }
}

- (void)decodeKCDataWithBlock:(id)block withTuning:(id)tuning usingCatalog:(id)catalog
{
  v565[1] = *MEMORY[0x1E69E9840];
  blockCopy = block;
  tuningCopy = tuning;
  catalogCopy = catalog;
  ss_trace_buffer = self->_ss_trace_buffer;
  if (!ss_trace_buffer || (ss_trace_length = self->_ss_trace_length, !ss_trace_length))
  {
    notes = self->super._notes;
    v16 = @"missing stackshot buffer or size";
LABEL_10:
    [(NSMutableArray *)notes addObject:v16];
    goto LABEL_11;
  }

  v13 = &ss_trace_buffer[ss_trace_length];
  v14 = ss_trace_buffer + 16;
  if (ss_trace_buffer + 16 > &ss_trace_buffer[ss_trace_length] || &v14[*(ss_trace_buffer + 1)] > v13 || *ss_trace_buffer != 1503811591)
  {
    notes = self->super._notes;
    v16 = @"non-parseable kc snapshot buffer";
    goto LABEL_10;
  }

  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  array3 = [MEMORY[0x1E695DF70] array];
  if (self->_dead_snapshot)
  {
    v486 = 0;
  }

  else
  {
    v486 = excludeSection(tuningCopy, @"sampleTruncatedStacks") ^ 1;
  }

  v506 = blockCopy;
  array4 = [MEMORY[0x1E695DF70] array];
  array5 = [MEMORY[0x1E695DF70] array];
  v505 = objc_opt_new();
  array6 = [MEMORY[0x1E695DF70] array];
  array7 = [MEMORY[0x1E695DF70] array];
  v17 = +[OSASystemConfiguration sharedInstance];
  appleInternal = [v17 appleInternal];

  CSSymbolicatorGetFlagsForNListOnlyData();
  v18 = CSSymbolicatorCreateWithTaskFlagsAndNotification();
  v488 = v19;
  v489 = v18;
  if (CSIsNull())
  {
    v20 = MEMORY[0x1E69E9C10];
    v21 = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [OSAStackShotReport decodeKCDataWithBlock:withTuning:usingCatalog:];
    }
  }

  v502 = objc_alloc_init(OSAExclaveContainer);
  [(OSAExclaveContainer *)v502 parseKCdata:ss_trace_buffer, v13];
  v507 = 0;
  v508 = 0;
  v500 = 0;
  v501 = 0;
  v493 = 0;
  v497 = 0;
  v498 = 0;
  v495 = 0;
  v479 = 0;
  v480 = 0;
  v492 = 0;
  v490 = 0;
  v511 = 0;
  v455 = 0;
  v487 = 0;
  v22 = *MEMORY[0x1E695E468];
  v478 = 1;
  v23 = 0x1E695D000uLL;
  v510 = tuningCopy;
  v514 = catalogCopy;
  selfCopy = self;
  while (1)
  {
    v24 = *(ss_trace_buffer + 1);
    if (&v14[v24] > v13)
    {
LABEL_672:
      [OSAStackShotReport decodeKCDataWithBlock:withTuning:usingCatalog:];
    }

    v25 = *ss_trace_buffer;
    if (*ss_trace_buffer == -242132755)
    {
      break;
    }

    if ((v25 & 0xFFFFFFF0) == 0x20)
    {
      v26 = 17;
    }

    else
    {
      v26 = v25;
    }

    if (v26 > 2113)
    {
      switch(v26)
      {
        case 2305:
          if (!includeSection(tuningCopy, @"ioStats"))
          {
            goto LABEL_623;
          }

          v27 = [array3 top];
          if (!v27)
          {
            [OSAStackShotReport decodeKCDataWithBlock:withTuning:usingCatalog:];
          }

          v28 = v27;
          data = [v27 data];

          if (data)
          {
            v515 = v13;
            array8 = [MEMORY[0x1E695DF70] array];
            v31 = (ss_trace_buffer + 80);
            v32 = 4;
            do
            {
              v33 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(v31 - 4)];
              v544[0] = v33;
              v34 = *v31++;
              v35 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v34];
              v544[1] = v35;
              v36 = [*(v23 + 3784) arrayWithObjects:v544 count:2];
              [array8 addObject:v36];

              v23 = 0x1E695D000uLL;
              --v32;
            }

            while (v32);
            v542[0] = @"reads";
            v481 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(ss_trace_buffer + 2)];
            v541[0] = v481;
            v474 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(ss_trace_buffer + 3)];
            v541[1] = v474;
            v471 = [MEMORY[0x1E695DEC8] arrayWithObjects:v541 count:2];
            v543[0] = v471;
            v542[1] = @"writes";
            v468 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(ss_trace_buffer + 4)];
            v540[0] = v468;
            v466 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(ss_trace_buffer + 5)];
            v540[1] = v466;
            v464 = [MEMORY[0x1E695DEC8] arrayWithObjects:v540 count:2];
            v543[1] = v464;
            v542[2] = @"paging";
            v462 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(ss_trace_buffer + 14)];
            v539[0] = v462;
            v460 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(ss_trace_buffer + 15)];
            v539[1] = v460;
            v458 = [MEMORY[0x1E695DEC8] arrayWithObjects:v539 count:2];
            v543[2] = v458;
            v542[3] = @"nonpaging";
            v456 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(ss_trace_buffer + 16)];
            v538[0] = v456;
            v451 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(ss_trace_buffer + 17)];
            v538[1] = v451;
            v450 = [MEMORY[0x1E695DEC8] arrayWithObjects:v538 count:2];
            v543[3] = v450;
            v542[4] = @"data";
            v449 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(ss_trace_buffer + 18)];
            v537[0] = v449;
            v448 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(ss_trace_buffer + 19)];
            v537[1] = v448;
            v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v537 count:2];
            v543[4] = v37;
            v542[5] = @"metadata";
            v38 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(ss_trace_buffer + 20)];
            v536[0] = v38;
            v39 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(ss_trace_buffer + 21)];
            v536[1] = v39;
            v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v536 count:2];
            v542[6] = @"priorities";
            v543[5] = v40;
            v543[6] = array8;
            v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v543 forKeys:v542 count:7];
            data2 = [v28 data];
            [data2 setObject:v41 forKeyedSubscript:@"ioStats"];

            v23 = 0x1E695D000;
            tuningCopy = v510;
            catalogCopy = v514;
            v13 = v515;
          }

          goto LABEL_334;
        case 2306:
          v521 = v13;
          v564 = @"memoryStatus";
          v562[0] = @"memoryPressure";
          v138 = [MEMORY[0x1E696AD98] numberWithBool:self->_jetsamLevel > 0];
          v563[0] = v138;
          v562[1] = @"memoryPages";
          v560[0] = @"free";
          v476 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(ss_trace_buffer + 5)];
          v561[0] = v476;
          v560[1] = @"active";
          v472 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(ss_trace_buffer + 6)];
          v561[1] = v472;
          v560[2] = @"inactive";
          v469 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(ss_trace_buffer + 7)];
          v561[2] = v469;
          v560[3] = @"purgeable";
          v467 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(ss_trace_buffer + 8)];
          v561[3] = v467;
          v560[4] = @"wired";
          v465 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(ss_trace_buffer + 9)];
          v561[4] = v465;
          v560[5] = @"speculative";
          v463 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(ss_trace_buffer + 10)];
          v561[5] = v463;
          v560[6] = @"throttled";
          v461 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(ss_trace_buffer + 11)];
          v561[6] = v461;
          v560[7] = @"fileBacked";
          v459 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(ss_trace_buffer + 12)];
          v561[7] = v459;
          v457 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v561 forKeys:v560 count:8];
          v563[1] = v457;
          v562[2] = @"compressions";
          v139 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(ss_trace_buffer + 13)];
          v563[2] = v139;
          v562[3] = @"decompressions";
          v140 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(ss_trace_buffer + 14)];
          v563[3] = v140;
          v562[4] = @"compressorSize";
          v141 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(ss_trace_buffer + 15)];
          v563[4] = v141;
          v562[5] = @"busyBufferCount";
          v142 = [MEMORY[0x1E696AD98] numberWithInt:*(ss_trace_buffer + 16)];
          v563[5] = v142;
          v562[6] = @"memoryPressureDetails";
          v143 = ss_trace_buffer[76];
          v484 = v138;
          if (ss_trace_buffer[76])
          {
            v558[0] = @"pagesWanted";
            v454 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(ss_trace_buffer + 17)];
            v559[0] = v454;
            v558[1] = @"pagesReclaimed";
            v453 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(ss_trace_buffer + 18)];
            v559[1] = v453;
            v452 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v559 forKeys:v558 count:2];
            v144 = v452;
          }

          else
          {
            v144 = MEMORY[0x1E695E0F8];
          }

          v563[6] = v144;
          v562[7] = @"pageSize";
          v216 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v495];
          v563[7] = v216;
          v217 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v563 forKeys:v562 count:8];
          v565[0] = v217;
          v218 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v565 forKeys:&v564 count:1];
          v506[2](v506, v218);

          if (v143)
          {
          }

          tuningCopy = v510;
          catalogCopy = v514;
          v13 = v521;
          self = selfCopy;
          goto LABEL_468;
        case 2307:
        case 2308:
        case 2311:
        case 2314:
        case 2315:
        case 2316:
        case 2317:
        case 2322:
        case 2323:
        case 2324:
        case 2325:
        case 2326:
        case 2327:
        case 2328:
        case 2334:
        case 2335:
        case 2336:
        case 2339:
        case 2340:
        case 2341:
        case 2342:
        case 2343:
        case 2350:
        case 2351:
        case 2353:
        case 2354:
        case 2355:
        case 2356:
        case 2357:
        case 2358:
        case 2359:
        case 2361:
        case 2362:
        case 2363:
        case 2364:
        case 2365:
        case 2366:
        case 2367:
        case 2368:
        case 2369:
        case 2370:
        case 2375:
          goto LABEL_61;
        case 2309:
          v519 = v13;
          v84 = [array3 top];
          if (!v84 || (v85 = v84, [v84 type] != 2307))
          {
            [OSAStackShotReport decodeKCDataWithBlock:withTuning:usingCatalog:];
          }

          v86 = *(ss_trace_buffer + 25);
          if (v86 == self->_pid)
          {
            goto LABEL_345;
          }

          if (v86)
          {
            goto LABEL_107;
          }

          if (!excludeSection(tuningCopy, @"kernel"))
          {
            goto LABEL_345;
          }

          v86 = *(ss_trace_buffer + 25);
LABEL_107:
          frontmostPids = self->_frontmostPids;
          v88 = [MEMORY[0x1E696AD98] numberWithInt:v86];
          if ([(NSMutableArray *)frontmostPids containsObject:v88])
          {
          }

          else
          {
            if (!*(ss_trace_buffer + 25))
            {

LABEL_518:
              v291 = [array3 top];
              [v291 omit];
              v13 = v519;
              goto LABEL_482;
            }

            v265 = excludeSection(tuningCopy, @"allPids");

            if (v265)
            {
              goto LABEL_518;
            }
          }

LABEL_345:
          [v85 setPid:*(ss_trace_buffer + 25)];
          dictionary = [MEMORY[0x1E695DF90] dictionary];
          data3 = [v85 data];
          [data3 setObject:dictionary forKeyedSubscript:@"threadById"];

          v268 = [MEMORY[0x1E696AD98] numberWithInt:*(ss_trace_buffer + 25)];
          data4 = [v85 data];
          [data4 setObject:v268 forKeyedSubscript:@"pid"];

          v270 = [MEMORY[0x1E696AEC0] stringWithUTF8String:ss_trace_buffer + 104];
          data5 = [v85 data];
          [data5 setObject:v270 forKeyedSubscript:@"procname"];

          v272 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(ss_trace_buffer + 19)];
          data6 = [v85 data];
          [data6 setObject:v272 forKeyedSubscript:@"pageFaults"];

          v274 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(ss_trace_buffer + 20)];
          data7 = [v85 data];
          [data7 setObject:v274 forKeyedSubscript:@"pageIns"];

          v276 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(ss_trace_buffer + 21)];
          data8 = [v85 data];
          [data8 setObject:v276 forKeyedSubscript:@"copyOnWriteFaults"];

          v278 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(ss_trace_buffer + 22)];
          data9 = [v85 data];
          [data9 setObject:v278 forKeyedSubscript:@"timesThrottled"];

          v280 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(ss_trace_buffer + 23)];
          data10 = [v85 data];
          [data10 setObject:v280 forKeyedSubscript:@"timesDidThrottle"];

          v282 = [MEMORY[0x1E696AEC0] stringWithFormat:@"0x%llX", *(ss_trace_buffer + 3)];
          data11 = [v85 data];
          [data11 setObject:v282 forKeyedSubscript:@"rawFlags"];

          v284 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(ss_trace_buffer + 34)];
          data12 = [v85 data];
          [data12 setObject:v284 forKeyedSubscript:@"userID"];

          v286 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(ss_trace_buffer + 35)];
          data13 = [v85 data];
          [data13 setObject:v286 forKeyedSubscript:@"groupID"];

          if (*(ss_trace_buffer + 18))
          {
            v288 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
            data14 = [v85 data];
            [data14 setObject:v288 forKeyedSubscript:@"suspendCount"];
          }

          array9 = [MEMORY[0x1E695DF70] array];
          v291 = array9;
          v292 = *(ss_trace_buffer + 3);
          if ((v292 & 4) != 0)
          {
            [array9 addObject:@"rsrcFlagged"];
            v292 = *(ss_trace_buffer + 3);
            if ((v292 & 8) == 0)
            {
LABEL_349:
              if ((v292 & 0x10) == 0)
              {
                goto LABEL_350;
              }

              goto LABEL_365;
            }
          }

          else if ((v292 & 8) == 0)
          {
            goto LABEL_349;
          }

          [v291 addObject:@"terminatedSnapshot"];
          v292 = *(ss_trace_buffer + 3);
          if ((v292 & 0x10) == 0)
          {
LABEL_350:
            if ((v292 & 0x20) == 0)
            {
              goto LABEL_351;
            }

            goto LABEL_366;
          }

LABEL_365:
          [v291 addObject:@"suspended"];
          v292 = *(ss_trace_buffer + 3);
          if ((v292 & 0x20) == 0)
          {
LABEL_351:
            if ((v292 & 0x40) == 0)
            {
              goto LABEL_352;
            }

            goto LABEL_367;
          }

LABEL_366:
          [v291 addObject:@"frozen"];
          v292 = *(ss_trace_buffer + 3);
          if ((v292 & 0x40) == 0)
          {
LABEL_352:
            if ((v292 & 0x80) == 0)
            {
              goto LABEL_353;
            }

            goto LABEL_368;
          }

LABEL_367:
          [v291 addObject:@"darwinBG"];
          v292 = *(ss_trace_buffer + 3);
          if ((v292 & 0x80) == 0)
          {
LABEL_353:
            if ((v292 & 0x100) == 0)
            {
              goto LABEL_354;
            }

            goto LABEL_369;
          }

LABEL_368:
          [v291 addObject:@"extDarwinBG"];
          v292 = *(ss_trace_buffer + 3);
          if ((v292 & 0x100) == 0)
          {
LABEL_354:
            if ((v292 & 0x200) == 0)
            {
              goto LABEL_355;
            }

            goto LABEL_370;
          }

LABEL_369:
          [v291 addObject:@"visVisible"];
          v292 = *(ss_trace_buffer + 3);
          if ((v292 & 0x200) == 0)
          {
LABEL_355:
            if ((v292 & 0x400) == 0)
            {
              goto LABEL_356;
            }

            goto LABEL_371;
          }

LABEL_370:
          [v291 addObject:@"visNonvisible"];
          v292 = *(ss_trace_buffer + 3);
          if ((v292 & 0x400) == 0)
          {
LABEL_356:
            if ((v292 & 0x800) == 0)
            {
              goto LABEL_357;
            }

            goto LABEL_372;
          }

LABEL_371:
          [v291 addObject:@"foreground"];
          v292 = *(ss_trace_buffer + 3);
          if ((v292 & 0x800) == 0)
          {
LABEL_357:
            if ((v292 & 0x1000) == 0)
            {
              goto LABEL_358;
            }

            goto LABEL_373;
          }

LABEL_372:
          [v291 addObject:@"boosted"];
          v292 = *(ss_trace_buffer + 3);
          if ((v292 & 0x1000) == 0)
          {
LABEL_358:
            if ((v292 & 0x4000) == 0)
            {
              goto LABEL_359;
            }

            goto LABEL_374;
          }

LABEL_373:
          [v291 addObject:@"suppressed"];
          v292 = *(ss_trace_buffer + 3);
          if ((v292 & 0x4000) == 0)
          {
LABEL_359:
            if ((v292 & 0x8000) == 0)
            {
              goto LABEL_360;
            }

            goto LABEL_375;
          }

LABEL_374:
          [v291 addObject:@"isImpDonor"];
          v292 = *(ss_trace_buffer + 3);
          if ((v292 & 0x8000) == 0)
          {
LABEL_360:
            if ((v292 & 0x10000) == 0)
            {
              goto LABEL_361;
            }

            goto LABEL_376;
          }

LABEL_375:
          [v291 addObject:@"isLiveImpDonor"];
          v292 = *(ss_trace_buffer + 3);
          if ((v292 & 0x10000) == 0)
          {
LABEL_361:
            if ((v292 & 0x80000) == 0)
            {
              goto LABEL_381;
            }

            goto LABEL_377;
          }

LABEL_376:
          [v291 addObject:@"dirty"];
          v292 = *(ss_trace_buffer + 3);
          if ((v292 & 0x80000) == 0)
          {
            goto LABEL_381;
          }

LABEL_377:
          if ((v292 & 0x20000) != 0)
          {
            [v291 addObject:@"exceededWQConstrainedLimit"];
            v292 = *(ss_trace_buffer + 3);
          }

          if ((v292 & 0x40000) != 0)
          {
            [v291 addObject:@"exceededWQTotalLimit"];
            v292 = *(ss_trace_buffer + 3);
          }

LABEL_381:
          if ((v292 & 0x700000) != 0)
          {
            0x700000 = [MEMORY[0x1E696AEC0] stringWithFormat:@"uuidFaultFlags0x%08llX", v292 & 0x700000];
            [v291 addObject:0x700000];

            v292 = *(ss_trace_buffer + 3);
          }

          if ((v292 & 0x200000) != 0)
          {
            v294 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v85, "pid")}];
            [array5 addObject:v294];

            [v85 setInvalid_images:{objc_msgSend(v85, "invalid_images") + objc_msgSend(array2, "count")}];
            if ((excludeSection(v510, @"uuidResampling") & 1) == 0 && !self->_dead_snapshot)
            {
              v295 = -[OSAStackShotReport resampleUUIDsForTask:usingCatalog:](self, "resampleUUIDsForTask:usingCatalog:", [v85 pid], catalogCopy);
              v296 = [v295 count];
              v297 = [v295 count];
              invalid_images = [v85 invalid_images];
              v299 = @"resampledAllImages";
              if (v297 != invalid_images)
              {
                v300 = [v295 count];
                if (v300 <= [v85 invalid_images])
                {
                  v299 = @"resampleIncomplete";
                }

                else
                {
                  v299 = @"resampledExtraImages";
                }
              }

              [v291 addObject:v299];
              if ([v295 count])
              {
                v301 = [v295 valueForKey:@"details"];
                data15 = [v85 data];
                [data15 setObject:v301 forKeyedSubscript:@"resampled_images"];

                self = selfCopy;
                [array addObjectsFromArray:v295];
              }

              v479 = (v479 + v296);
            }
          }

          else if ([array2 count])
          {
            [array addObjectsFromArray:array2];
            [array sortByAddressAndSetInferredSizes];
          }

          v303 = *(ss_trace_buffer + 3);
          if ((v303 & 0x1000000) != 0)
          {
            [v291 addObject:@"TALEngaged"];
            v303 = *(ss_trace_buffer + 3);
            if ((v303 & 0x4000000) == 0)
            {
LABEL_397:
              if ((v303 & 0x8000000) == 0)
              {
                goto LABEL_398;
              }

              goto LABEL_419;
            }
          }

          else if ((v303 & 0x4000000) == 0)
          {
            goto LABEL_397;
          }

          [v291 addObject:@"isDirtyTracked"];
          v303 = *(ss_trace_buffer + 3);
          if ((v303 & 0x8000000) == 0)
          {
LABEL_398:
            if ((v303 & 0x10000000) == 0)
            {
              goto LABEL_399;
            }

            goto LABEL_420;
          }

LABEL_419:
          [v291 addObject:@"allowIdleExit"];
          v303 = *(ss_trace_buffer + 3);
          if ((v303 & 0x10000000) == 0)
          {
LABEL_399:
            if ((v303 & 0x20000000) == 0)
            {
              goto LABEL_400;
            }

            goto LABEL_421;
          }

LABEL_420:
          [v291 addObject:@"isTranslated"];
          v303 = *(ss_trace_buffer + 3);
          if ((v303 & 0x20000000) == 0)
          {
LABEL_400:
            if ((v303 & 0x40000000) == 0)
            {
              goto LABEL_401;
            }

            goto LABEL_422;
          }

LABEL_421:
          [v291 addObject:@"sharedRegionNone"];
          v303 = *(ss_trace_buffer + 3);
          if ((v303 & 0x40000000) == 0)
          {
LABEL_401:
            if ((v303 & 0x80000000) == 0)
            {
              goto LABEL_402;
            }

            goto LABEL_423;
          }

LABEL_422:
          [v291 addObject:@"sharedRegionSystem"];
          v303 = *(ss_trace_buffer + 3);
          if ((v303 & 0x80000000) == 0)
          {
LABEL_402:
            if ((v303 & 0x100000000) == 0)
            {
              goto LABEL_403;
            }

            goto LABEL_424;
          }

LABEL_423:
          [v291 addObject:@"sharedRegionOther"];
          v303 = *(ss_trace_buffer + 3);
          if ((v303 & 0x100000000) == 0)
          {
LABEL_403:
            if ((v303 & 0x200000000) == 0)
            {
              goto LABEL_404;
            }

            goto LABEL_425;
          }

LABEL_424:
          [v291 addObject:@"dyldCompactInfoNone"];
          v303 = *(ss_trace_buffer + 3);
          if ((v303 & 0x200000000) == 0)
          {
LABEL_404:
            if ((v303 & 0x400000000) == 0)
            {
              goto LABEL_405;
            }

            goto LABEL_426;
          }

LABEL_425:
          [v291 addObject:@"dyldCompactInfoTooBig"];
          v303 = *(ss_trace_buffer + 3);
          if ((v303 & 0x400000000) == 0)
          {
LABEL_405:
            if ((v303 & 0x800000000) == 0)
            {
              goto LABEL_406;
            }

            goto LABEL_427;
          }

LABEL_426:
          [v291 addObject:@"dyldCompactInfoFaultedIn"];
          v303 = *(ss_trace_buffer + 3);
          if ((v303 & 0x800000000) == 0)
          {
LABEL_406:
            if ((v303 & 0x1000000000) == 0)
            {
              goto LABEL_407;
            }

            goto LABEL_428;
          }

LABEL_427:
          [v291 addObject:@"dyldCompactInfoMissing"];
          v303 = *(ss_trace_buffer + 3);
          if ((v303 & 0x1000000000) == 0)
          {
LABEL_407:
            if ((v303 & 0x8000000000) == 0)
            {
              goto LABEL_409;
            }

LABEL_408:
            [v291 addObject:@"runawayMitigation"];
            goto LABEL_409;
          }

LABEL_428:
          [v291 addObject:@"dyldCompactInfoTriedFault"];
          if ((*(ss_trace_buffer + 3) & 0x8000000000) != 0)
          {
            goto LABEL_408;
          }

LABEL_409:
          if ([v291 count])
          {
            data16 = [v85 data];
            [data16 setObject:v291 forKeyedSubscript:@"flags"];
          }

          if (*(ss_trace_buffer + 7))
          {
            v305 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
            data17 = [v85 data];
            [data17 setObject:v305 forKeyedSubscript:@"residentMemoryBytes"];
          }

          v307 = self->_frontmostPids;
          v308 = [MEMORY[0x1E696AD98] numberWithInt:*(ss_trace_buffer + 25)];
          LODWORD(v307) = [(NSMutableArray *)v307 containsObject:v308];

          if (v307)
          {
            data18 = [v85 data];
            [data18 setObject:&unk_1F241E770 forKeyedSubscript:@"frontmost"];
          }

          v310 = *(ss_trace_buffer + 4);
          v500 = *(ss_trace_buffer + 5);
          problemType = [(OSAStackShotReport *)self problemType];
          v501 = v310;
          if ([problemType isEqualToString:@"409"])
          {
          }

          else
          {
            problemType2 = [(OSAStackShotReport *)self problemType];
            v313 = [problemType2 isEqualToString:@"509"];

            if (!v313)
            {
              goto LABEL_432;
            }
          }

          v314 = [objc_opt_class() reduceToTwoSigFigures:(self->super._capture_time - (*(ss_trace_buffer + 6) - v22))];
          data19 = [v85 data];
          [data19 setObject:v314 forKeyedSubscript:@"processUptime"];

LABEL_432:
          v316 = v508;
          if (v511)
          {
            v316 = v511;
          }

          v317 = v316;
          v318 = v317;
          if (v317)
          {
            [catalogCopy targetSharedCache:-[OSASharedCacheEntry original](v317 withSlide:"original") + 8 atBaseAddress:{-[OSASharedCacheEntry sharedCacheSlide](v317, "sharedCacheSlide"), -[OSASharedCacheEntry original](v317, "original")[32]}];
            if ([(OSASharedCacheEntry *)v318 layout])
            {
              v23 = 0x1E695D000;
              if ([(OSASharedCacheEntry *)v318 isDefaultSharedCache])
              {
                if ((v455 & 1) == 0)
                {
                  [catalogCopy setRootedCacheLibs:-[OSASharedCacheEntry layout](v318 count:{"layout"), -[OSASharedCacheEntry layoutImageCount](v318, "layoutImageCount")}];
                }

                v455 = 1;
              }

              else
              {
                [catalogCopy setRootedCacheLibs:-[OSASharedCacheEntry layout](v318 count:{"layout"), -[OSASharedCacheEntry layoutImageCount](v318, "layoutImageCount")}];
                v455 = 0;
              }

              v13 = v519;
            }

            else
            {
              v13 = v519;
              v23 = 0x1E695D000;
            }
          }

          else
          {
            v13 = v519;
            v23 = 0x1E695D000;
            if (v478)
            {
              [(NSMutableArray *)self->super._notes addObject:@"no shared cache available from the kernel snapshot -- this may impact symbolication"];
            }

            v478 = 0;
          }

LABEL_482:
          tuningCopy = v510;
          goto LABEL_623;
        case 2310:
          v520 = v13;
          v94 = [array3 top];
          if (!v94 || (v95 = v94, [v94 type] != 2308))
          {
            [OSAStackShotReport decodeKCDataWithBlock:withTuning:usingCatalog:];
          }

          v96 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(ss_trace_buffer + 2)];
          data20 = [v95 data];
          [data20 setObject:v96 forKeyedSubscript:@"id"];

          v98 = *(ss_trace_buffer + 26);
          array10 = [MEMORY[0x1E695DF70] array];
          v100 = array10;
          if (v98)
          {
            [array10 addObject:@"TH_WAIT"];
            if ((v98 & 2) == 0)
            {
LABEL_116:
              if ((v98 & 4) == 0)
              {
                goto LABEL_117;
              }

              goto LABEL_232;
            }
          }

          else if ((v98 & 2) == 0)
          {
            goto LABEL_116;
          }

          [v100 addObject:@"TH_SUSP"];
          if ((v98 & 4) == 0)
          {
LABEL_117:
            if ((v98 & 8) == 0)
            {
              goto LABEL_118;
            }

            goto LABEL_233;
          }

LABEL_232:
          [v100 addObject:@"TH_RUN"];
          if ((v98 & 8) == 0)
          {
LABEL_118:
            if ((v98 & 0x10) == 0)
            {
              goto LABEL_119;
            }

            goto LABEL_234;
          }

LABEL_233:
          [v100 addObject:@"TH_UNINT"];
          if ((v98 & 0x10) == 0)
          {
LABEL_119:
            if ((v98 & 0x20) == 0)
            {
              goto LABEL_120;
            }

            goto LABEL_235;
          }

LABEL_234:
          [v100 addObject:@"TH_TERMINATE"];
          if ((v98 & 0x20) == 0)
          {
LABEL_120:
            if ((v98 & 0x80) == 0)
            {
              goto LABEL_122;
            }

LABEL_121:
            [v100 addObject:@"TH_IDLE"];
            goto LABEL_122;
          }

LABEL_235:
          [v100 addObject:@"TH_TERMINATE2"];
          if ((v98 & 0x80) != 0)
          {
            goto LABEL_121;
          }

LABEL_122:
          data21 = [v95 data];
          [data21 setObject:v100 forKeyedSubscript:@"state"];

          v102 = *(ss_trace_buffer + 3);
          if (v102)
          {
            v103 = [catalogCopy searchFrame:v102 in:array result:0];
            data22 = [v95 data];
            [data22 setObject:v103 forKeyedSubscript:@"waitEvent"];
          }

          v105 = [MEMORY[0x1E696AD98] numberWithShort:*(ss_trace_buffer + 57)];
          data23 = [v95 data];
          [data23 setObject:v105 forKeyedSubscript:@"schedPriority"];

          v107 = [MEMORY[0x1E696AD98] numberWithShort:*(ss_trace_buffer + 56)];
          data24 = [v95 data];
          [data24 setObject:v107 forKeyedSubscript:@"basePriority"];

          if (ss_trace_buffer[117])
          {
            v109 = DecodeQOS(ss_trace_buffer[117]);
            data25 = [v95 data];
            [data25 setObject:v109 forKeyedSubscript:@"qosRequested"];
          }

          if (ss_trace_buffer[118])
          {
            v111 = DecodeQOS(ss_trace_buffer[118]);
            data26 = [v95 data];
            [data26 setObject:v111 forKeyedSubscript:@"qosOverride"];
          }

          if (ss_trace_buffer[116])
          {
            v113 = DecodeQOS(ss_trace_buffer[116]);
            data27 = [v95 data];
            [data27 setObject:v113 forKeyedSubscript:@"qosEffective"];
          }

          v115 = *(ss_trace_buffer + 27);
          if (v115)
          {
            v116 = DecodeThreadFlags(v115, 0);
            data28 = [v95 data];
            [data28 setObject:v116 forKeyedSubscript:@"schedFlags"];
          }

          v118 = *(ss_trace_buffer + 10);
          if (v118)
          {
            v119 = DecodeThreadFlags(v118, 1);
            data29 = [v95 data];
            [data29 setObject:v119 forKeyedSubscript:@"snapshotFlags"];
          }

          v121 = *(ss_trace_buffer + 4);
          if (v121)
          {
            v122 = [catalogCopy searchFrame:v121 in:array result:0];
            data30 = [v95 data];
            [data30 setObject:v122 forKeyedSubscript:@"continuation"];
          }

          if (ss_trace_buffer[80] < 0)
          {
            if (v486)
            {
              parent = [array3 parent];
              data31 = [v95 data];
              truncated_threads = [parent truncated_threads];
              v211 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(ss_trace_buffer + 2)];
              [truncated_threads setObject:data31 forKeyedSubscript:v211];
            }

            else
            {
              parent = [v95 data];
              [parent setObject:@"Unmapped pages caused truncated backtrace (resampling disabled)" forKeyedSubscript:@"notice"];
            }

            v124 = v507;
            v497 = (v497 + 1);
          }

          else
          {
            v124 = v507;
          }

          v245 = *(ss_trace_buffer + 8);
          v246 = *(ss_trace_buffer + 9);
          if (v124)
          {
            v247 = v245 * *v124 / v124[1];
          }

          else
          {
            v247 = *(ss_trace_buffer + 8);
          }

          v248 = [MEMORY[0x1E696AD98] numberWithDouble:v247 / 1000000000.0];
          data32 = [v95 data];
          [data32 setObject:v248 forKeyedSubscript:@"userTime"];

          v250 = *(ss_trace_buffer + 9);
          if (v124)
          {
            v250 = v250 * *v124 / v124[1];
          }

          v251 = [MEMORY[0x1E696AD98] numberWithDouble:v250 / 1000000000.0];
          data33 = [v95 data];
          [data33 setObject:v251 forKeyedSubscript:@"systemTime"];

          v253 = selfCopy->_capture_absoluteTime - *(ss_trace_buffer + 11);
          if (v124)
          {
            v253 = v253 * *v124 / v124[1];
          }

          v23 = 0x1E695D000;
          v254 = [MEMORY[0x1E696AD98] numberWithDouble:v253 / 1000000000.0];
          data34 = [v95 data];
          [data34 setObject:v254 forKeyedSubscript:@"lastRunTime"];

          v256 = *(ss_trace_buffer + 12);
          if (v256 != -1)
          {
            v257 = selfCopy->_capture_absoluteTime - v256;
            if (v507)
            {
              v257 = v257 * *v507 / v507[1];
            }

            v258 = [MEMORY[0x1E696AD98] numberWithDouble:v257 / 1000000000.0];
            data35 = [v95 data];
            [data35 setObject:v258 forKeyedSubscript:@"lastMadeRunnableTime"];
          }

          v498 = (v498 + 1);
          v501 += v245;
          v500 += v246;

          catalogCopy = v514;
          v13 = v520;
LABEL_334:
          self = selfCopy;
          goto LABEL_623;
        case 2312:
        case 2319:
        case 2331:
        case 2332:
        case 2333:
        case 2338:
        case 2345:
        case 2346:
        case 2347:
        case 2348:
        case 2349:
        case 2372:
          goto LABEL_623;
        case 2313:
          v89 = v13;
          v130 = [array3 top];
          if ([v130 type] != 2308)
          {
            [OSAStackShotReport decodeKCDataWithBlock:withTuning:usingCatalog:];
          }

          v131 = [MEMORY[0x1E696AEC0] stringWithUTF8String:ss_trace_buffer + 16];
          v132 = v131;
          if (v131)
          {
            v133 = v131;
          }

          else
          {
            v133 = @"<unprintable>";
          }

          data36 = [v130 data];
          v135 = data36;
          v136 = v133;
          v137 = @"name";
          goto LABEL_164;
        case 2318:
          if (!appleInternal)
          {
            goto LABEL_623;
          }

          v556 = @"bootArgs";
          v47 = [MEMORY[0x1E696AEC0] stringWithUTF8String:ss_trace_buffer + 16];
          v557 = v47;
          [MEMORY[0x1E695DF20] dictionaryWithObjects:&v557 forKeys:&v556 count:1];
          v126 = v125 = v13;
          v506[2](v506, v126);

          v13 = v125;
          goto LABEL_140;
        case 2320:
          v495 = *(ss_trace_buffer + 4);
          goto LABEL_623;
        case 2321:
          self->_jetsamLevel = *(ss_trace_buffer + 4);
          goto LABEL_623;
        case 2329:
          v127 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(ss_trace_buffer + 2)];
          [(OSAStackShotReport *)self addCustomField:"user_usec" value:v127 into:array3];

          v23 = 0x1E695D000;
          v47 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(ss_trace_buffer + 3)];
          selfCopy4 = self;
          v70 = "system_usec";
          v128 = v47;
          v129 = array3;
          goto LABEL_455;
        case 2330:
          v172 = *(ss_trace_buffer + 2);
          if (v507)
          {
            v172 = v172 * *v507 / v507[1];
          }

          v173 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v172];
          [(OSAStackShotReport *)self addCustomField:"stackshot_duration_nsec" value:v173 into:array3];

          v174 = *(ss_trace_buffer + 3);
          if (v507)
          {
            v174 = v174 * *v507 / v507[1];
          }

          v23 = 0x1E695D000;
          v175 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v174];
          [(OSAStackShotReport *)self addCustomField:"stackshot_duration_outer_nsec" value:v175 into:array3];

          v176 = *ss_trace_buffer;
          if ((*ss_trace_buffer & 0xFFFFFFF0) == 0x20)
          {
            v176 = 17;
          }

          if (v176 <= 2309)
          {
            if (v176 == 17 || v176 == 19)
            {
              v177 = *(ss_trace_buffer + 1);
              goto LABEL_450;
            }

LABEL_444:
            v206 = *(ss_trace_buffer + 1);
            goto LABEL_448;
          }

          if (v176 == 2310)
          {
            v206 = *(ss_trace_buffer + 1);
            if (v206 == 112)
            {
              if ((ss_trace_buffer[8] & 0x8F) == 0)
              {
                goto LABEL_451;
              }

              v206 = 112;
            }
          }

          else
          {
            if (v176 != 2312)
            {
              goto LABEL_444;
            }

            v206 = *(ss_trace_buffer + 1);
            if (v206 == 32)
            {
              if ((ss_trace_buffer[8] & 0x8F) == 0)
              {
                goto LABEL_451;
              }

              v206 = 32;
            }
          }

LABEL_448:
          v51 = v206 >= (*(ss_trace_buffer + 2) & 0xFu);
          v177 = v206 - (*(ss_trace_buffer + 2) & 0xF);
          if (!v51)
          {
            v177 = 0;
          }

LABEL_450:
          if (v177 < 0x11)
          {
            goto LABEL_623;
          }

LABEL_451:
          v319 = *(ss_trace_buffer + 4);
          if (v507)
          {
            v319 = v319 * *v507 / v507[1];
          }

          v47 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v319];
          selfCopy4 = self;
          v70 = "stackshot_duration_prior_nsec";
          goto LABEL_454;
        case 2337:
          v169 = [array3 top];
          if (!v169 || (v47 = v169, [v169 type] != 2307) && objc_msgSend(v47, "type") != 2353)
          {
            [OSAStackShotReport decodeKCDataWithBlock:withTuning:usingCatalog:];
          }

          v170 = *ss_trace_buffer;
          if ((*ss_trace_buffer & 0xFFFFFFF0) == 0x20)
          {
            v170 = 17;
          }

          if (v170 <= 2309)
          {
            if (v170 == 17 || v170 == 19)
            {
              v171 = *(ss_trace_buffer + 1);
              goto LABEL_462;
            }

LABEL_456:
            v207 = *(ss_trace_buffer + 1);
            goto LABEL_460;
          }

          if (v170 == 2310)
          {
            v207 = *(ss_trace_buffer + 1);
            if (v207 == 112)
            {
              if ((ss_trace_buffer[8] & 0x8F) == 0)
              {
                goto LABEL_463;
              }

              v207 = 112;
            }
          }

          else
          {
            if (v170 != 2312)
            {
              goto LABEL_456;
            }

            v207 = *(ss_trace_buffer + 1);
            if (v207 == 32)
            {
              if ((ss_trace_buffer[8] & 0x8F) == 0)
              {
                goto LABEL_463;
              }

              v207 = 32;
            }
          }

LABEL_460:
          v51 = v207 >= (*(ss_trace_buffer + 2) & 0xFu);
          v171 = v207 - (*(ss_trace_buffer + 2) & 0xF);
          if (!v51)
          {
            v171 = 0;
          }

LABEL_462:
          if (v171 < 8)
          {
            goto LABEL_478;
          }

LABEL_463:
          [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(ss_trace_buffer + 2)];
          v321 = v320 = v13;
          data37 = [v47 data];
          v323 = data37;
          v324 = v321;
          v325 = @"jetsamCoalition";
LABEL_477:
          [data37 setObject:v324 forKeyedSubscript:v325];

          v23 = 0x1E695D000;
          v13 = v320;
          goto LABEL_478;
        case 2344:
          v89 = v13;
          v130 = [array3 top];
          if ([v130 type] != 2308)
          {
            [OSAStackShotReport decodeKCDataWithBlock:withTuning:usingCatalog:];
          }

          v167 = [MEMORY[0x1E696AEC0] stringWithUTF8String:ss_trace_buffer + 16];
          v132 = v167;
          if (v167)
          {
            v168 = v167;
          }

          else
          {
            v168 = @"<unknown>";
          }

          data36 = [v130 data];
          v135 = data36;
          v136 = v168;
          v137 = @"dispatch_queue_label";
LABEL_164:
          [data36 setObject:v136 forKeyedSubscript:v137];

          self = selfCopy;
          goto LABEL_467;
        case 2352:
          v152 = v13;
          v153 = [array3 top];
          if (!v153 || (v154 = v153, [v153 type] != 2353))
          {
            [OSAStackShotReport decodeKCDataWithBlock:withTuning:usingCatalog:];
          }

          [v154 setPid:*(ss_trace_buffer + 10)];
          dictionary2 = [MEMORY[0x1E695DF90] dictionary];
          data38 = [v154 data];
          [data38 setObject:dictionary2 forKeyedSubscript:@"threadById"];

          v157 = [MEMORY[0x1E696AD98] numberWithInt:*(ss_trace_buffer + 10)];
          data39 = [v154 data];
          [data39 setObject:v157 forKeyedSubscript:@"pid"];

          v159 = [MEMORY[0x1E696AEC0] stringWithUTF8String:ss_trace_buffer + 44];
          data40 = [v154 data];
          [data40 setObject:v159 forKeyedSubscript:@"procname"];

          v161 = self->super._notes;
          v162 = MEMORY[0x1E696AEC0];
          data41 = [v154 data];
          v164 = [data41 objectForKeyedSubscript:@"pid"];
          v165 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(ss_trace_buffer + 4)];
          v165 = [v162 stringWithFormat:@"Process %@ is in transition type %@", v164, v165];
          [(NSMutableArray *)v161 addObject:v165];

          self = selfCopy;
          catalogCopy = v514;
          v13 = v152;
          v23 = 0x1E695D000;
          tuningCopy = v510;
          goto LABEL_623;
        case 2360:
          v72 = [array3 top];
          if (!v72 || (v47 = v72, [v72 type] != 2307))
          {
            [OSAStackShotReport decodeKCDataWithBlock:withTuning:usingCatalog:];
          }

          v73 = *(ss_trace_buffer + 2);
          if (!v73 || !*(ss_trace_buffer + 3) || !*(ss_trace_buffer + 5) || !*(ss_trace_buffer + 4))
          {
            goto LABEL_478;
          }

          v518 = v13;
          if (v507)
          {
            v73 = v73 * *v507 / v507[1];
          }

          v74 = [MEMORY[0x1E696AD98] numberWithDouble:v73 / 1000000000.0];
          data42 = [v47 data];
          [data42 setObject:v74 forKeyedSubscript:@"suspensionLastStart"];

          v76 = *(ss_trace_buffer + 3);
          if (v507)
          {
            v76 = v76 * *v507 / v507[1];
          }

          v77 = [MEMORY[0x1E696AD98] numberWithDouble:v76 / 1000000000.0];
          data43 = [v47 data];
          [data43 setObject:v77 forKeyedSubscript:@"suspensionLastEnd"];

          v79 = *(ss_trace_buffer + 5);
          if (v507)
          {
            v79 = v79 * *v507 / v507[1];
          }

          v80 = [MEMORY[0x1E696AD98] numberWithDouble:v79 / 1000000000.0];
          data44 = [v47 data];
          [data44 setObject:v80 forKeyedSubscript:@"suspensionDuration"];

          v82 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(ss_trace_buffer + 4)];
          data45 = [v47 data];
          [data45 setObject:v82 forKeyedSubscript:@"suspensionCount"];

          v13 = v518;
LABEL_140:
          v23 = 0x1E695D000;
          goto LABEL_478;
        case 2371:
          v89 = v13;
          if ([array3 count])
          {
            v91 = [array3 top];
          }

          else
          {
            v91 = 0;
          }

          v213 = objc_alloc_init(OSASharedCacheEntry);
          [(OSASharedCacheEntry *)v213 setSharedCacheInfo:ss_trace_buffer + 16];
          v214 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(ss_trace_buffer + 14)];
          if ([v91 type] == 2370)
          {
            [v91 setPid:*(ss_trace_buffer + 14)];
          }

          [v505 setObject:v213 forKeyedSubscript:v214];
          if ([(OSASharedCacheEntry *)v213 isDefaultSharedCache])
          {
            v215 = v213;

            v508 = v215;
            self = selfCopy;
          }

          goto LABEL_250;
        case 2373:
          v89 = v13;
          v178 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(ss_trace_buffer + 4)];
          v179 = [v505 objectForKeyedSubscript:v178];
          v180 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v179, "sharedCacheID")}];
          v181 = [v180 isEqual:v178];

          if (v181)
          {
            v182 = v179;

            if ([array3 count])
            {
              v183 = [array3 top];
              v184 = appleInternal;
              if (!v183)
              {
                v184 = 0;
              }

              if (v184 == 1)
              {
                memset(out, 0, sizeof(out));
                uuid_unparse(([(OSASharedCacheEntry *)v182 original]+ 8), out);
                v553[0] = @"uuid";
                v512 = [MEMORY[0x1E696AEC0] stringWithUTF8String:out];
                v554[0] = v512;
                v553[1] = @"slide";
                v185 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[OSASharedCacheEntry original](v182, "original")[32]}];
                v554[1] = v185;
                v186 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v554 forKeys:v553 count:2];
                data46 = [v183 data];
                [data46 setObject:v186 forKeyedSubscript:@"taskSpecificSharedCache"];

                tuningCopy = v510;
                catalogCopy = v514;
              }
            }

            else
            {
              v183 = 0;
            }
          }

          else
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              [OSAStackShotReport decodeKCDataWithBlock:buf withTuning:v178 usingCatalog:&buf[4]];
            }

            v182 = v511;
          }

          self = selfCopy;

          v511 = v182;
          goto LABEL_467;
        case 2374:
          v145 = v13;
          v146 = [array3 top];
          if (!v146 || (v147 = v146, [v146 type] != 2307))
          {
            [OSAStackShotReport decodeKCDataWithBlock:withTuning:usingCatalog:];
          }

          v148 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(ss_trace_buffer + 2)];
          data47 = [v147 data];
          [data47 setObject:v148 forKeyedSubscript:@"csFlags"];

          v150 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(ss_trace_buffer + 6)];
          data48 = [v147 data];
          [data48 setObject:v150 forKeyedSubscript:@"csTrustLevel"];

          v13 = v145;
          goto LABEL_468;
        case 2376:
          v89 = v13;
          v90 = [array3 top];
          if (!v90 || (v91 = v90, [v90 type] != 2308))
          {
            [OSAStackShotReport decodeKCDataWithBlock:withTuning:usingCatalog:];
          }

          v92 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(ss_trace_buffer + 2)];
          data49 = [v91 data];
          [data49 setObject:v92 forKeyedSubscript:@"exclaveScid"];

          v487 = *(ss_trace_buffer + 6);
LABEL_250:

LABEL_467:
          v13 = v89;
LABEL_468:
          v23 = 0x1E695D000;
          goto LABEL_623;
        default:
          if (v26 != 2114)
          {
            if (v26 == 1503811591)
            {
              goto LABEL_623;
            }

LABEL_61:
            v51 = v24 >= (*(ss_trace_buffer + 2) & 0xFu);
            LODWORD(v24) = v24 - (*(ss_trace_buffer + 2) & 0xF);
            if (v51)
            {
              v24 = v24;
            }

            else
            {
              v24 = 0;
            }

            NSLog(&cfstr_UnknownKcdataX.isa, v26, v24, v26);
            goto LABEL_623;
          }

          v188 = [array3 top];
          if (!v188 || (v47 = v188, [v188 type] != 2307))
          {
            [OSAStackShotReport decodeKCDataWithBlock:withTuning:usingCatalog:];
          }

          v189 = *ss_trace_buffer;
          if ((*ss_trace_buffer & 0xFFFFFFF0) == 0x20)
          {
            v189 = 17;
          }

          if (v189 <= 2309)
          {
            if (v189 == 17 || v189 == 19)
            {
              v190 = *(ss_trace_buffer + 1);
              goto LABEL_475;
            }

            goto LABEL_469;
          }

          if (v189 != 2310)
          {
            if (v189 != 2312)
            {
LABEL_469:
              v212 = *(ss_trace_buffer + 1);
              goto LABEL_473;
            }

            v212 = *(ss_trace_buffer + 1);
            if (v212 != 32)
            {
              goto LABEL_473;
            }

            if ((ss_trace_buffer[8] & 0x8F) != 0)
            {
              v212 = 32;
              goto LABEL_473;
            }

LABEL_476:
            [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(ss_trace_buffer + 2)];
            v321 = v320 = v13;
            data37 = [v47 data];
            v323 = data37;
            v324 = v321;
            v325 = @"codeSigningAuxiliaryInfo";
            goto LABEL_477;
          }

          v212 = *(ss_trace_buffer + 1);
          if (v212 == 112)
          {
            if ((ss_trace_buffer[8] & 0x8F) == 0)
            {
              goto LABEL_476;
            }

            v212 = 112;
          }

LABEL_473:
          v51 = v212 >= (*(ss_trace_buffer + 2) & 0xFu);
          v190 = v212 - (*(ss_trace_buffer + 2) & 0xF);
          if (!v51)
          {
            v190 = 0;
          }

LABEL_475:
          if (v190 < 8)
          {
            goto LABEL_478;
          }

          goto LABEL_476;
      }
    }

    if (v26 > 19)
    {
      if (v26 <= 50)
      {
        if (v26 == 20)
        {
          v52 = [array3 pop];
          v53 = *(ss_trace_buffer + 1);
          if (v53 != [v52 tag])
          {
            [OSAStackShotReport decodeKCDataWithBlock:withTuning:usingCatalog:];
          }

          if ([v52 type] != 2308)
          {
            if ([v52 type] == 2307 || objc_msgSend(v52, "type") == 2353)
            {
              data50 = [v52 data];

              if (data50)
              {
                v516 = v13;
                v192 = v501;
                if (v507)
                {
                  v192 = v501 * *v507 / v507[1];
                }

                v193 = [MEMORY[0x1E696AD98] numberWithDouble:v192 / 1000000000.0];
                data51 = [v52 data];
                [data51 setObject:v193 forKeyedSubscript:@"userTimeTask"];

                v195 = v500;
                if (v507)
                {
                  v195 = v500 * *v507 / v507[1];
                }

                v196 = [MEMORY[0x1E696AD98] numberWithDouble:v195 / 1000000000.0];
                data52 = [v52 data];
                [data52 setObject:v196 forKeyedSubscript:@"systemTimeTask"];

                if ([v52 unindexed_frames])
                {
                  v198 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v52, "unindexed_frames")}];
                  data53 = [v52 data];
                  [data53 setObject:v198 forKeyedSubscript:@"unindexed_frames"];

                  v492 = [v52 unindexed_frames] + v492;
                  v200 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v52, "pid")}];
                  [array6 addObject:v200];
                }

                truncated_threads2 = [v52 truncated_threads];
                v202 = [truncated_threads2 count];

                if (v202 && ([MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v52, "pid")}], v203 = objc_claimAutoreleasedReturnValue(), objc_msgSend(array4, "addObject:", v203), v203, (excludeSection(tuningCopy, @"stackResampling") & 1) == 0))
                {
                  v333 = [v52 pid];
                  truncated_threads3 = [v52 truncated_threads];
                  v488 = [(OSAStackShotReport *)self resampleTruncatedBacktracesForTask:v333 forThreads:truncated_threads3 usingCatalog:catalogCopy in:array usingSymbolicator:v489, v488];

                  if (v488)
                  {
                    v335 = [MEMORY[0x1E696AD98] numberWithInt:v488];
                    data54 = [v52 data];
                    [data54 setObject:v335 forKeyedSubscript:@"unindexed_rs_frames"];

                    v490 = (v488 + v490);
                    v488 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v52, "pid")}];
                    [array7 addObject:v488];

                    LODWORD(v488) = 1;
                  }
                }

                else
                {
                  LODWORD(v488) = 0;
                }

                if (appleInternal && (([v52 unindexed_frames] == 0) & ~v488) == 0)
                {
                  v337 = [array valueForKey:@"details"];
                  data55 = [v52 data];
                  [data55 setObject:v337 forKeyedSubscript:@"process_images"];
                }

                if ([v52 invalid_images])
                {
                  v339 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v52, "invalid_images")}];
                  data56 = [v52 data];
                  [data56 setObject:v339 forKeyedSubscript:@"invalid_images"];

                  v480 = [v52 invalid_images] + v480;
                }

                if ((v493 & 1) == 0)
                {
                  v547 = &unk_1F241E7A0;
                  v548 = @"processByPid";
                  v341 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v548 forKeys:&v547 count:1];
                  v506[2](v506, v341);
                }

                v494 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", objc_msgSend(v52, "pid")];
                v545[0] = v494;
                data57 = [v52 data];
                v546[0] = data57;
                v545[1] = &unk_1F241E788;
                v343 = MEMORY[0x1E696AD98];
                pid = selfCopy->_pid;
                v345 = [v52 pid];
                if (pid == v345)
                {
                  v346 = 1;
                }

                else
                {
                  v347 = selfCopy->_frontmostPids;
                  v348 = MEMORY[0x1E696AD98];
                  v349 = [v52 pid];
                  v350 = v348;
                  tuningCopy = v510;
                  v447 = [v350 numberWithInt:v349];
                  v346 = [(NSMutableArray *)v347 containsObject:?];
                }

                v351 = [v343 numberWithInt:v346];
                v546[1] = v351;
                v352 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v546 forKeys:v545 count:2];
                v506[2](v506, v352);

                if (pid != v345)
                {
                }

                v493 = 1;
                catalogCopy = v514;
                goto LABEL_621;
              }
            }

            else
            {
              v326 = MEMORY[0x1E69E9C10];
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
              {
                type = [v52 type];
                *out = 67109120;
                *&out[4] = type;
                _os_log_impl(&dword_1AE4F7000, v326, OS_LOG_TYPE_DEFAULT, "Unknown KCDATA CONTAINER %X", out, 8u);
              }
            }

LABEL_622:

            goto LABEL_623;
          }

          if (![array3 count])
          {
            [OSAStackShotReport decodeKCDataWithBlock:withTuning:usingCatalog:];
          }

          v516 = v13;
          data58 = [v52 data];
          v55 = [data58 objectForKeyedSubscript:@"id"];

          data59 = [v52 data];
          v57 = [data59 objectForKeyedSubscript:@"exclaveScid"];

          if (!v57)
          {
            goto LABEL_618;
          }

          v58 = [MEMORY[0x1E696AEC0] stringWithFormat:@"0x%llX", objc_msgSend(v57, "unsignedLongLongValue")];
          data60 = [v52 data];
          [data60 setObject:v58 forKeyedSubscript:@"exclaveScid"];

          [(OSAExclaveContainer *)v502 setThreadId:v55 withScId:v57];
          v60 = [(OSAExclaveContainer *)v502 getFramesForThread:v55 usingCatalog:catalogCopy];
          if (![v60 count])
          {
            goto LABEL_617;
          }

          data61 = [v52 data];
          v62 = [data61 objectForKeyedSubscript:@"kernelFrames"];

          array11 = [MEMORY[0x1E695DF70] array];
          v483 = v55;
          if ([v62 count] < v487)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              unsignedLongLongValue = [v55 unsignedLongLongValue];
              *out = 67109376;
              *&out[4] = v487;
              *&out[8] = 2048;
              *&out[10] = unsignedLongLongValue;
              _os_log_error_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Exclave frames offset of %d for thread %llu is invalid", out, 0x12u);
            }

            v64 = selfCopy->super._notes;
            v487 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Thread %llu with %lu kernel frames has exclave frames but invalid exclave frame offset of %d. Skipping adding exclave frames into kernel frames ", objc_msgSend(v55, "unsignedLongLongValue"), objc_msgSend(v62, "count"), v487];
            [(NSMutableArray *)v64 addObject:v487];
            tuningCopy = v510;
LABEL_616:

            v55 = v483;
LABEL_617:

            catalogCopy = v514;
LABEL_618:
            v408 = [array3 top];
            data62 = [v408 data];

            if (data62)
            {
              data63 = [v408 data];
              [data63 objectForKeyedSubscript:@"threadById"];
              v411 = v57;
              v413 = v412 = v55;

              data64 = [v52 data];
              v412 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v412];
              [v413 setObject:data64 forKeyedSubscript:v412];

              catalogCopy = v514;
              v55 = v412;
              v57 = v411;
            }

LABEL_621:
            self = selfCopy;
            v13 = v516;
            v23 = 0x1E695D000;
            goto LABEL_622;
          }

          if (v62)
          {
            if ([v62 count])
            {
              v328 = 0;
              do
              {
                if (v487 == v328)
                {
                  [array11 addObjectsFromArray:v60];
                }

                v329 = [v62 objectAtIndexedSubscript:v328];
                [array11 addObject:v329];

                ++v328;
              }

              while ([v62 count] > v328);
            }

            if ([v62 count] == v487)
            {
              [array11 addObjectsFromArray:v60];
            }

            tuningCopy = v510;
            if (!v487)
            {
              v330 = selfCopy->super._notes;
              v331 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Thread %llu has an incorrect exclave frame offset %d", objc_msgSend(v483, "unsignedLongLongValue"), 0];
              v332 = v330;
              tuningCopy = v510;
              [(NSMutableArray *)v332 addObject:v331];
              goto LABEL_614;
            }
          }

          else
          {
            v406 = v60;

            v407 = selfCopy->super._notes;
            v331 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Thread %llu has exclave frames but no kernel frames", objc_msgSend(v55, "unsignedLongLongValue")];
            [(NSMutableArray *)v407 addObject:v331];
            array11 = v406;
LABEL_614:
          }

          v487 = [v52 data];
          [v487 setObject:array11 forKeyedSubscript:@"kernelFrames"];
          goto LABEL_616;
        }

        if (v26 != 50)
        {
          goto LABEL_61;
        }

        v507 = (ss_trace_buffer + 16);
      }

      else
      {
        switch(v26)
        {
          case 0x33:
            self->_capture_absoluteTime = *(ss_trace_buffer + 2);
            break;
          case 0x35:
            self->super._capture_time = *(ss_trace_buffer + 2) / 1000000.0 - v22;
            break;
          case 0x840:
            v46 = [array3 top];
            if (!v46 || (v47 = v46, [v46 type] != 2307))
            {
              [OSAStackShotReport decodeKCDataWithBlock:withTuning:usingCatalog:];
            }

            v48 = *ss_trace_buffer;
            if ((*ss_trace_buffer & 0xFFFFFFF0) == 0x20)
            {
              v48 = 17;
            }

            if (v48 > 2309)
            {
              if (v48 == 2310)
              {
                v205 = *(ss_trace_buffer + 1);
                if (v205 == 112)
                {
                  if ((ss_trace_buffer[8] & 0x8F) == 0)
                  {
                    goto LABEL_342;
                  }

                  v205 = 112;
                }
              }

              else
              {
                if (v48 != 2312)
                {
                  goto LABEL_335;
                }

                v205 = *(ss_trace_buffer + 1);
                if (v205 == 32)
                {
                  if ((ss_trace_buffer[8] & 0x8F) == 0)
                  {
                    goto LABEL_342;
                  }

                  v205 = 32;
                }
              }
            }

            else
            {
              if (v48 == 17 || v48 == 19)
              {
                v49 = *(ss_trace_buffer + 1);
LABEL_341:
                if (v49 < 0x10)
                {
                  goto LABEL_478;
                }

LABEL_342:
                [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(ss_trace_buffer + 2)];
                v261 = v260 = v13;
                data65 = [v47 data];
                [data65 setObject:v261 forKeyedSubscript:@"jitStartAddress"];

                v263 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(ss_trace_buffer + 3)];
                data66 = [v47 data];
                [data66 setObject:v263 forKeyedSubscript:@"jitEndAddress"];

                v23 = 0x1E695D000;
                v13 = v260;
                [array addJITImage:*(ss_trace_buffer + 2) size:*(ss_trace_buffer + 3) - *(ss_trace_buffer + 2)];
                goto LABEL_478;
              }

LABEL_335:
              v205 = *(ss_trace_buffer + 1);
            }

            v51 = v205 >= (*(ss_trace_buffer + 2) & 0xFu);
            v49 = v205 - (*(ss_trace_buffer + 2) & 0xF);
            if (!v51)
            {
              v49 = 0;
            }

            goto LABEL_341;
          default:
            goto LABEL_61;
        }
      }
    }

    else if (v26 <= 2)
    {
      if (v26 == 1)
      {
        if (ss_trace_buffer != -48)
        {
          v50 = [MEMORY[0x1E696AEC0] stringWithUTF8String:ss_trace_buffer + 48];
          goto LABEL_86;
        }
      }

      else
      {
        if (v26 != 2)
        {
          goto LABEL_61;
        }

        if (ss_trace_buffer != -48)
        {
          v50 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(ss_trace_buffer + 12)];
LABEL_86:
          v47 = v50;
          v70 = ss_trace_buffer + 16;
          selfCopy4 = self;
LABEL_454:
          v128 = v47;
          v129 = array3;
LABEL_455:
          [(OSAStackShotReport *)selfCopy4 addCustomField:v70 value:v128 into:v129];
LABEL_478:
        }
      }
    }

    else
    {
      switch(v26)
      {
        case 3:
          if (ss_trace_buffer != -48)
          {
            v50 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(ss_trace_buffer + 6)];
            goto LABEL_86;
          }

          break;
        case 0x11:
          v517 = v13;
          v66 = *(ss_trace_buffer + 1);
          v67 = HIDWORD(v66);
          v475 = v66;
          if (v25 != 17)
          {
            v68 = array3;
            if (!v66)
            {
              goto LABEL_490;
            }

            v69 = (v24 - (*ss_trace_buffer & 0xF)) / v66;
            goto LABEL_520;
          }

          v68 = array3;
          if (SHIDWORD(v66) > 2313)
          {
            if (SHIDWORD(v66) <= 2315)
            {
              if (HIDWORD(v66) != 2314)
              {
                goto LABEL_489;
              }
            }

            else if (HIDWORD(v66) != 2316)
            {
              if (HIDWORD(v66) != 2317)
              {
                if (HIDWORD(v66) == 2369)
                {
                  v69 = 48;
                  goto LABEL_520;
                }

LABEL_490:
                v69 = 0;
                goto LABEL_520;
              }

LABEL_489:
              v69 = 16;
              goto LABEL_520;
            }

LABEL_491:
            v69 = 8;
            goto LABEL_520;
          }

          if (SHIDWORD(v66) <= 2073)
          {
            if (HIDWORD(v66) == 48)
            {
              v69 = 20;
            }

            else
            {
              if (HIDWORD(v66) != 49)
              {
                goto LABEL_490;
              }

              v69 = 24;
            }

            goto LABEL_520;
          }

          if (HIDWORD(v66) == 2074)
          {
            goto LABEL_491;
          }

          if (HIDWORD(v66) != 2311)
          {
            goto LABEL_490;
          }

          v69 = 4;
LABEL_520:
          if ([v68 count])
          {
            v485 = [v68 top];
          }

          else
          {
            v485 = 0;
          }

          if (v67 <= 2325)
          {
            v353 = v485;
            if (v67 <= 2322)
            {
              if ((v67 - 48) >= 2)
              {
                if (v67 == 2311)
                {
                  if (!v485 || [v485 type] != 2307 && objc_msgSend(v485, "type") != 2353)
                  {
                    [OSAStackShotReport decodeKCDataWithBlock:withTuning:usingCatalog:];
                  }

                  data67 = [v485 data];

                  if (data67)
                  {
                    array12 = [MEMORY[0x1E695DF70] array];
                    data68 = [v485 data];
                    [data68 setObject:array12 forKeyedSubscript:@"donatingPids"];

                    if (v475)
                    {
                      v357 = (ss_trace_buffer + 16);
                      v358 = v475;
                      do
                      {
                        v359 = *v357++;
                        v360 = [MEMORY[0x1E696AD98] numberWithInt:v359];
                        [array12 addObject:v360];

                        --v358;
                      }

                      while (v358);
                    }

                    self = selfCopy;
                    v23 = 0x1E695D000;
                    v353 = v485;
                  }

                  goto LABEL_611;
                }

LABEL_612:
                v405 = kcdata_iter_size(ss_trace_buffer);
                v353 = v485;
                NSLog(&cfstr_UnknownKcdataA.isa, v67, v475, v405, *(ss_trace_buffer + 1));
LABEL_611:

                tuningCopy = v510;
                v13 = v517;
                break;
              }

LABEL_573:
              if (!v353 || [v353 type] != 2307 && objc_msgSend(v353, "type") != 2353)
              {
                [OSAStackShotReport decodeKCDataWithBlock:withTuning:usingCatalog:];
              }

              goto LABEL_611;
            }

            if (v67 == 2323)
            {
              if (!v485 || [v485 type] != 2308)
              {
                [OSAStackShotReport decodeKCDataWithBlock:withTuning:usingCatalog:];
              }

              array13 = [MEMORY[0x1E695DF70] array];
              data69 = [v485 data];
              [data69 setObject:array13 forKeyedSubscript:@"kernelFrames"];

              if (v475)
              {
                v393 = (ss_trace_buffer + 16);
                v394 = v475;
                do
                {
                  v395 = *v393++;
                  v396 = [catalogCopy searchFrame:v395 in:array result:0];
                  [array13 addObject:v396];

                  --v394;
                }

                while (v394);
              }
            }

            else
            {
              if (v67 != 2324)
              {
                if (!v485 || [v485 type] != 2308)
                {
                  [OSAStackShotReport decodeKCDataWithBlock:withTuning:usingCatalog:];
                }

                parent2 = [array3 parent];
                array14 = [MEMORY[0x1E695DF70] array];
                data70 = [v485 data];
                [data70 setObject:array14 forKeyedSubscript:@"userFrames"];

                if (v475)
                {
                  v369 = 0;
                  v370 = ss_trace_buffer + 16;
                  v371 = v475;
                  do
                  {
                    v372 = v369;
                    v373 = *v370;
                    v526 = v369;
                    v374 = [v514 searchFrame:v373 in:array result:&v526];
                    v369 = v526;

                    [array14 addObject:v374];
                    if (!v369 && *v370)
                    {
                      [parent2 setUnindexed_frames:{objc_msgSend(parent2, "unindexed_frames") + 1}];
                    }

                    ++v370;
                    --v371;
                  }

                  while (v371);
                  goto LABEL_585;
                }

                goto LABEL_586;
              }

              if (!v485 || [v485 type] != 2308)
              {
                [OSAStackShotReport decodeKCDataWithBlock:withTuning:usingCatalog:];
              }

              array13 = [MEMORY[0x1E695DF70] array];
              data71 = [v485 data];
              [data71 setObject:array13 forKeyedSubscript:@"kernelFrames"];

              if (v475)
              {
                v401 = (ss_trace_buffer + 16);
                v402 = v475;
                do
                {
                  v403 = *v401++;
                  v404 = [catalogCopy searchFrame:v403 in:array result:0];
                  [array13 addObject:v404];

                  --v402;
                }

                while (v402);
              }
            }

            self = selfCopy;
LABEL_610:
            v23 = 0x1E695D000;
            goto LABEL_611;
          }

          if (v67 > 2344)
          {
            if (v67 != 2345)
            {
              v353 = v485;
              if (v67 != 2350)
              {
                if (v67 == 2361)
                {
                  if (!v485 || [v485 type] != 2307)
                  {
                    [OSAStackShotReport decodeKCDataWithBlock:withTuning:usingCatalog:];
                  }

                  array15 = [MEMORY[0x1E695DF70] array];
                  if (v475)
                  {
                    v376 = v475;
                    v377 = ss_trace_buffer + 36;
                    do
                    {
                      if (*(v377 - 12) && *(v377 - 1) && *v377 && *(v377 - 20))
                      {
                        dictionary3 = [MEMORY[0x1E695DF90] dictionary];
                        v379 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(v377 - 12)];
                        [dictionary3 setObject:v379 forKeyedSubscript:@"suspensionThreadID"];

                        v380 = [MEMORY[0x1E696AD98] numberWithInt:*(v377 - 1)];
                        [dictionary3 setObject:v380 forKeyedSubscript:@"suspensionProcID"];

                        v381 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v377];
                        [dictionary3 setObject:v381 forKeyedSubscript:@"suspensionProcName"];

                        v382 = *(v377 - 20);
                        if (v507)
                        {
                          v382 = v382 * *v507 / v507[1];
                        }

                        v383 = [MEMORY[0x1E696AD98] numberWithDouble:v382 / 1000000000.0];
                        [dictionary3 setObject:v383 forKeyedSubscript:@"suspensionTime"];

                        [array15 addObject:dictionary3];
                        self = selfCopy;
                        v23 = 0x1E695D000;
                        v353 = v485;
                      }

                      v377 += 85;
                      --v376;
                    }

                    while (v376);
                  }

                  if ([array15 count])
                  {
                    data72 = [v353 data];
                    [data72 setObject:array15 forKeyedSubscript:@"suspensionSources"];
                  }

                  catalogCopy = v514;
                  goto LABEL_611;
                }

                goto LABEL_612;
              }

              goto LABEL_573;
            }

            v353 = v485;
            if (!v485 || [v485 type] != 2307 && objc_msgSend(v485, "type") != 2353)
            {
              [OSAStackShotReport decodeKCDataWithBlock:withTuning:usingCatalog:];
            }

            data73 = [v485 data];

            if (!data73)
            {
              goto LABEL_611;
            }

            data74 = [v485 data];
            [data74 addTurnstileInfoDesc:ss_trace_buffer + 16 count:v475 elSize:v69];
          }

          else
          {
            if (v67 == 2326)
            {
              if (!v485 || [v485 type] != 2308)
              {
                [OSAStackShotReport decodeKCDataWithBlock:withTuning:usingCatalog:];
              }

              parent2 = [v68 parent];
              array14 = [MEMORY[0x1E695DF70] array];
              data75 = [v485 data];
              [data75 setObject:array14 forKeyedSubscript:@"userFrames"];

              v353 = v485;
              if (v475)
              {
                v369 = 0;
                v386 = (ss_trace_buffer + 16);
                v387 = v475;
                do
                {
                  v388 = v369;
                  v389 = *v386;
                  v527 = v369;
                  v390 = [v514 searchFrame:v389 in:array result:&v527];
                  v369 = v527;

                  [array14 addObject:v390];
                  if (!v369 && *v386)
                  {
                    [parent2 setUnindexed_frames:{objc_msgSend(parent2, "unindexed_frames") + 1}];
                  }

                  ++v386;
                  --v387;
                }

                while (v387);
LABEL_585:

                self = selfCopy;
                v353 = v485;
              }

LABEL_586:

              catalogCopy = v514;
              goto LABEL_610;
            }

            if (v67 != 2333)
            {
              v353 = v485;
              if (v67 != 2343)
              {
                goto LABEL_612;
              }

              if (!v485 || [v485 type] != 2370)
              {
                goto LABEL_611;
              }

              v361 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v485, "pid")}];
              v362 = [v505 objectForKeyedSubscript:v361];
              v363 = v362;
              if (v362 && ([MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v362, "sharedCacheID")}], v364 = objc_claimAutoreleasedReturnValue(), v365 = objc_msgSend(v364, "isEqual:", v361), v364, v365))
              {
                [v363 setSharedCacheLayout:ss_trace_buffer + 16 andCount:v475];
              }

              else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                [OSAStackShotReport decodeKCDataWithBlock:v551 withTuning:v361 usingCatalog:&v551[4]];
              }

              self = selfCopy;
              goto LABEL_610;
            }

            v353 = v485;
            if (!v485 || [v485 type] != 2307 && objc_msgSend(v485, "type") != 2353)
            {
              [OSAStackShotReport decodeKCDataWithBlock:withTuning:usingCatalog:];
            }

            data76 = [v485 data];

            if (!data76)
            {
              goto LABEL_611;
            }

            data74 = [v485 data];
            [data74 addWaitInfoDesc:ss_trace_buffer + 16 count:v475 elSize:v69];
          }

          goto LABEL_611;
        case 0x13:
          v43 = [[KCContainer alloc] initWithKCData:ss_trace_buffer, v13];
          [array3 push:v43];

          if (*(ss_trace_buffer + 4) == 2307)
          {
            v482 = *(ss_trace_buffer + 2);

            [array removeAllObjects];
            [array2 removeAllObjects];
            v44 = &v14[*(ss_trace_buffer + 1)];
            v45 = v44 + 16;
            if ((v44 + 16) > v13)
            {
              v511 = 0;
LABEL_315:
              catalogCopy = v514;
              break;
            }

            v511 = 0;
            v219 = 1;
            v522 = v13;
            while (2)
            {
              if (&v45[*(v44 + 1)] > v13 || (v220 = *v44, *v44 == -242132755))
              {
LABEL_314:
                tuningCopy = v510;
                goto LABEL_315;
              }

              if ((v220 & 0xFFFFFFF0) == 0x20)
              {
                v220 = 17;
              }

              if (v220 > 19)
              {
                switch(v220)
                {
                  case 20:
                    if (!--v219)
                    {
                      goto LABEL_314;
                    }

                    break;
                  case 2332:
                    [v514 setKernelCache:v44 + 24 address:*(v44 + 2) size:0];
                    break;
                  case 2373:
                    v221 = v13;
                    v222 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(v44 + 4)];
                    v223 = [v505 objectForKeyedSubscript:v222];
                    v224 = v223;
                    if (v223 && ([MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v223, "sharedCacheID")}], v225 = objc_claimAutoreleasedReturnValue(), v226 = objc_msgSend(v225, "isEqual:", v222), v225, v226))
                    {
                      v227 = v224;

                      v228 = [array3 count];
                      if (v228)
                      {
                        v228 = [array3 top];
                        v229 = appleInternal;
                        if (!v228)
                        {
                          v229 = 0;
                        }

                        if (v229 == 1)
                        {
                          memset(out, 0, sizeof(out));
                          v513 = v228;
                          uuid_unparse(([(OSASharedCacheEntry *)v227 original]+ 8), out);
                          v549[0] = @"uuid";
                          v473 = [MEMORY[0x1E696AEC0] stringWithUTF8String:out];
                          v550[0] = v473;
                          v549[1] = @"slide";
                          v470 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[OSASharedCacheEntry original](v227, "original")[32]}];
                          v550[1] = v470;
                          v477 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v550 forKeys:v549 count:2];
                          data77 = [v513 data];
                          [data77 setObject:v477 forKeyedSubscript:@"taskSpecificSharedCache"];

                          v228 = v513;
                        }
                      }

                      self = selfCopy;
                    }

                    else
                    {
                      v241 = MEMORY[0x1E69E9C10];
                      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
                      {
                        *out = 138412290;
                        *&out[4] = v222;
                        _os_log_impl(&dword_1AE4F7000, v241, OS_LOG_TYPE_DEFAULT, "Expected a task specific shared cache with id %@ but none was found", out, 0xCu);
                      }

                      v227 = v511;
                      self = selfCopy;
                    }

                    v511 = v227;
                    v13 = v221;
LABEL_312:
                    v23 = 0x1E695D000;
                    break;
                }

LABEL_313:
                v44 = &v45[*(v44 + 1)];
                v45 = v44 + 16;
                if ((v44 + 16) > v13)
                {
                  goto LABEL_314;
                }

                continue;
              }

              break;
            }

            if (v220 != 17)
            {
              if (v220 == 19)
              {
                ++v219;
                if (*(v44 + 4) == 2356)
                {
                  v231 = [array3 top];
                  [v231 data];
                  v233 = v232 = v13;
                  [v233 parsePortLabelContainer:{v44, v232}];

                  v13 = v232;
                  v23 = 0x1E695D000;
                }
              }

              goto LABEL_313;
            }

            v234 = *(v44 + 1);
            v235 = HIDWORD(v234);
            if (HIDWORD(v234) != 48)
            {
              if (HIDWORD(v234) == 2350 || HIDWORD(v234) == 49)
              {
                v236 = [array3 top];
                if (v234)
                {
                  v237 = v234;
                  v238 = (v44 + 24);
                  do
                  {
                    if (uuid_is_null(v238))
                    {
                      if (!*(v238 - 1))
                      {
                        [v236 setInvalid_images:{objc_msgSend(v236, "invalid_images") + 1}];
                        goto LABEL_290;
                      }

                      v239 = array2;
                    }

                    else
                    {
                      v239 = array;
                    }

                    [v239 addImage:v238 address:? size:?];
LABEL_290:
                    v238 += 24;
                    --v237;
                  }

                  while (v237);
                }

                [array sortByAddressAndSetInferredSizes];
                self = selfCopy;
                if (!v482)
                {
                  if (v235 == 2350)
                  {
                    v240 = array;
                    [v514 setKernelTextExecImages:array];
                    goto LABEL_309;
                  }

LABEL_308:
                  v240 = array;
                  [v514 setKernelImages:array];
LABEL_309:
                  [v240 removeAllObjects];
                }

LABEL_310:
              }

              v13 = v522;
              goto LABEL_312;
            }

            v236 = [array3 top];
            if (!v234)
            {
LABEL_307:
              [array sortByAddressAndSetInferredSizes];
              if (!v482)
              {
                goto LABEL_308;
              }

              goto LABEL_310;
            }

            v242 = v234;
            v243 = (v44 + 20);
            while (2)
            {
              if (uuid_is_null(v243))
              {
                if (*(v243 - 1))
                {
                  v244 = array2;
                  goto LABEL_304;
                }

                [v236 setInvalid_images:{objc_msgSend(v236, "invalid_images") + 1}];
              }

              else
              {
                v244 = array;
LABEL_304:
                [v244 addImage:v243 address:? size:?];
              }

              v243 += 20;
              if (!--v242)
              {
                goto LABEL_307;
              }

              continue;
            }
          }

          break;
        default:
          goto LABEL_61;
      }
    }

LABEL_623:
    ss_trace_buffer = &v14[*(ss_trace_buffer + 1)];
    v14 = ss_trace_buffer + 16;
    if ((ss_trace_buffer + 16) > v13)
    {
      goto LABEL_672;
    }
  }

  if ([array3 count])
  {
    [OSAStackShotReport decodeKCDataWithBlock:withTuning:usingCatalog:];
  }

  [(OSAExclaveContainer *)v502 appendNotesTo:self->super._notes];
  blockCopy = v506;
  if (v493)
  {
    v534 = &unk_1F241E7B8;
    v535 = &stru_1F2411100;
    v417 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v535 forKeys:&v534 count:1];
    v506[2](v506, v417);
  }

  if (v508)
  {
    v418 = appleInternal;
  }

  else
  {
    v418 = 0;
  }

  if (v418 == 1)
  {
    memset(out, 0, sizeof(out));
    uuid_unparse(([(OSASharedCacheEntry *)v508 original]+ 8), out);
    v532 = @"systemDefaultSharedCache";
    v530[0] = @"uuid";
    v419 = [MEMORY[0x1E696AEC0] stringWithUTF8String:out];
    v531[0] = v419;
    v530[1] = @"slide";
    v420 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[OSASharedCacheEntry original](v508, "original")[32]}];
    v531[1] = v420;
    v421 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v531 forKeys:v530 count:2];
    v533 = v421;
    v422 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v533 forKeys:&v532 count:1];
    v506[2](v506, v422);

    self = selfCopy;
  }

  if (v497)
  {
    v423 = self->super._notes;
    v424 = MEMORY[0x1E696AEC0];
    v425 = [array4 count];
    sortedPids = [array4 sortedPids];
    v426 = [v424 stringWithFormat:@"resampled %d of %d threads with truncated backtraces from %d pids: %@", v497, v498, v425, sortedPids];
    [(NSMutableArray *)v423 addObject:v426];

    self = selfCopy;
    if (v486)
    {
      v528 = @"postSampleVMStats";
      getVMStatistics = [(OSAStackShotReport *)selfCopy getVMStatistics];
      v529 = getVMStatistics;
      v429 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v529 forKeys:&v528 count:1];
      v506[2](v506, v429);
    }
  }

  if ([array5 count])
  {
    v430 = self->super._notes;
    v431 = MEMORY[0x1E696AEC0];
    v432 = [array5 count];
    sortedPids2 = [array5 sortedPids];
    v433 = [v431 stringWithFormat:@"resampled %d of %d images missing from %d pids: %@", v479, v480, v432, sortedPids2];
    [(NSMutableArray *)v430 addObject:v433];

    self = selfCopy;
  }

  if (v492)
  {
    v435 = self->super._notes;
    v436 = MEMORY[0x1E696AEC0];
    v437 = [array6 count];
    sortedPids3 = [array6 sortedPids];
    v438 = [v436 stringWithFormat:@"%d unindexed user-stack frames from %d pids: %@", v492, v437, sortedPids3];
    [(NSMutableArray *)v435 addObject:v438];

    self = selfCopy;
  }

  if (v490)
  {
    v440 = self->super._notes;
    v441 = MEMORY[0x1E696AEC0];
    v442 = [array7 count];
    sortedPids4 = [array7 sortedPids];
    v443 = [v441 stringWithFormat:@"%d unindexed re-sampled frames from %d pids: %@", v490, v442, sortedPids4];
    [(NSMutableArray *)v440 addObject:v443];

    self = selfCopy;
  }

  if ([array4 count] && (resampleTruncatedStacksWithSymbolicator & 1) == 0)
  {
    v445 = self->super._notes;
    v446 = [MEMORY[0x1E696AEC0] stringWithFormat:@"resampledUserFrames might be missing second-to-leaf frame"];
    [(NSMutableArray *)v445 addObject:v446];
  }

  if ((CSIsNull() & 1) == 0)
  {
    CSRelease();
  }

LABEL_11:
}

- (void)decodeKCDataWithBlock:(uint8_t *)buf withTuning:(uint64_t)a2 usingCatalog:(void *)a3 .cold.25(uint8_t *buf, uint64_t a2, void *a3)
{
  *buf = 138543362;
  *a3 = a2;
  _os_log_error_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Expected a task specific shared cache with ID %{public}@ but none was found", buf, 0xCu);
}

@end