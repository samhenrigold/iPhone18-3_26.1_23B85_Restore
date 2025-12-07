@interface OSAJetsamReport
+ (int64_t)_daysSince1970;
+ (jetsam_snapshot)fetchSnapshotWithFlags:(unsigned int)flags error:(id *)error;
- (BOOL)alreadyDumpedSuspendedJetsamLogToday;
- (BOOL)isActionable;
- (BOOL)saveWithOptions:(id)options;
- (OSAJetsamReport)initWithIncidentID:(id)d visibilityEndowmentState:(id)state audioAssertionState:(id)assertionState;
- (id)additionalIPSMetadata;
- (id)appleCareDetails;
- (unint64_t)getEventPriority:(id)priority terminationReason:(unint64_t)reason priority:(int64_t)a5;
- (void)_setDumpedSuspendedJetsamLog;
- (void)acquireJetsamDataWithFlags:(unsigned int)flags;
- (void)dealloc;
- (void)fetchWiredMemoryInfo;
- (void)generateLogAtLevel:(BOOL)level withBlock:(id)block;
- (void)instrumentEvents:(BOOL)events;
- (void)updateLogLimitFor:(unint64_t)for;
@end

@implementation OSAJetsamReport

- (void)fetchWiredMemoryInfo
{
  [self unsignedIntValue];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xEu);
}

- (OSAJetsamReport)initWithIncidentID:(id)d visibilityEndowmentState:(id)state audioAssertionState:(id)assertionState
{
  dCopy = d;
  stateCopy = state;
  assertionStateCopy = assertionState;
  v22.receiver = self;
  v22.super_class = OSAJetsamReport;
  v12 = [(OSAReport *)&v22 init];
  v13 = v12;
  if (v12)
  {
    if (dCopy)
    {
      objc_storeStrong(&v12->super._incidentID, d);
    }

    if (stateCopy)
    {
      v14 = stateCopy;
    }

    else
    {
      v14 = objc_alloc_init(MEMORY[0x1E695DFD8]);
    }

    visibilityEndowmentState = v13->_visibilityEndowmentState;
    v13->_visibilityEndowmentState = v14;

    if (assertionStateCopy)
    {
      v16 = assertionStateCopy;
    }

    else
    {
      v16 = objc_alloc_init(MEMORY[0x1E695DFD8]);
    }

    audioAssertionState = v13->_audioAssertionState;
    v13->_audioAssertionState = v16;

    largestActiveApp = v13->_largestActiveApp;
    v13->_largestActiveApp = &stru_1F2411100;

    v19 = objc_opt_new();
    killedActiveApps = v13->_killedActiveApps;
    v13->_killedActiveApps = v19;
  }

  return v13;
}

- (void)dealloc
{
  free(self->_snapshot);
  v3.receiver = self;
  v3.super_class = OSAJetsamReport;
  [(OSAJetsamReport *)&v3 dealloc];
}

- (id)appleCareDetails
{
  v7[3] = *MEMORY[0x1E69E9840];
  if ([(NSMutableArray *)self->_killedActiveApps count])
  {
    v3 = [(NSMutableArray *)self->_killedActiveApps componentsJoinedByString:@"", self->_largestActiveApp];;
    v7[1] = v3;
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_wiredBytes];
    v7[2] = v4;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)additionalIPSMetadata
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"incident_id";
  incidentID = [(OSAReport *)self incidentID];
  v8[0] = incidentID;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v5 = [v4 mutableCopy];

  if (self->_aleFlag)
  {
    [v5 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"ale_flag"];
  }

  return v5;
}

- (BOOL)saveWithOptions:(id)options
{
  v6.receiver = self;
  v6.super_class = OSAJetsamReport;
  v4 = [(OSAReport *)&v6 saveWithOptions:options];
  [(OSAJetsamReport *)self instrumentEvents:v4];
  return v4;
}

+ (jetsam_snapshot)fetchSnapshotWithFlags:(unsigned int)flags error:(id *)error
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = memorystatus_control();
  if ((v5 & 0x80000000) != 0)
  {
    v8 = MEMORY[0x1E696AEC0];
    v9 = __error();
    [v8 stringWithFormat:@"memorystatus_control(MEMORYSTATUS_CMD_GET_JETSAM_SNAPSHOT) failed: %s", strerror(*v9), v21];
    goto LABEL_13;
  }

  v6 = v5;
  if (!v5)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"kernel returned (0) from memorystatus_control(MEMORYSTATUS_CMD_GET_JETSAM_SNAPSHOT) -- no jetsam data available", v20, v21];
    goto LABEL_13;
  }

  v7 = v5;
  if (v5 >= 0xC9 && __ROR8__(0x8E38E38E38E38E39 * (v5 - 200), 5) >= 0xE38E38E38E38E4uLL)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"memorystatus_control gave snapshot size (%lu) not multiple of jetsam entry type (%lu)", v5 - 200, 288];
    var4 = LABEL_13:;
    goto LABEL_14;
  }

  v10 = malloc_type_malloc(v5, 0x19E0B1BAuLL);
  if (v10)
  {
    v11 = memorystatus_control();
    if (v11 != v6)
    {
      v17 = v11;
      v18 = MEMORY[0x1E696AEC0];
      v19 = __error();
      var4 = [v18 stringWithFormat:@"memorystatus_control returned unexpected value - %d: %s", v17, strerror(*v19)];
      free(v10);
LABEL_14:
      v10 = 0;
      if (!var4)
      {
        goto LABEL_19;
      }

      goto LABEL_15;
    }

    v12 = (v6 - 200) / 0x120;
    var4 = v10->var4;
    if (v12 >= var4)
    {
      var4 = 0;
      goto LABEL_19;
    }

    var4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Got fewer jetsam entries from the kernel received %zu, expected %zu", (v7 - 200) / 0x120uLL, var4];;
    v10->var4 = v12;
    if (!var4)
    {
      goto LABEL_19;
    }
  }

  else
  {
    var4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unable to allocate %d bytes for jetsam snapshot", v6];
    if (!var4)
    {
      goto LABEL_19;
    }
  }

LABEL_15:
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v23 = var4;
    _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  if (error)
  {
    v15 = var4;
    *error = var4;
  }

LABEL_19:

  return v10;
}

- (unint64_t)getEventPriority:(id)priority terminationReason:(unint64_t)reason priority:(int64_t)a5
{
  if ([&unk_1F241F188 containsObject:priority])
  {
    self->_aleFlag = 1;
    return 3;
  }

  else if (reason <= 0x11 && ((1 << reason) & 0x20284) != 0)
  {
    return 0;
  }

  else if (a5 <= 89)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (void)updateLogLimitFor:(unint64_t)for
{
  if (for > 1)
  {
    if (for == 2)
    {
      v5 = 0;
      v4 = &unk_1F241E7E8;
      v6 = @"298_HIGH_PRIORITY";
    }

    else
    {
      if (for != 3)
      {
        return;
      }

      v4 = 0;
      v5 = 1;
      v6 = @"298_ALE";
    }

LABEL_10:
    [(NSMutableDictionary *)self->super._logWritingOptions setObject:v6 forKeyedSubscript:@"LogType"];
    if (v5)
    {
      return;
    }

    goto LABEL_12;
  }

  if (!for)
  {
    v5 = 0;
    v4 = &unk_1F241E7D0;
    v6 = @"298_LOW_PRIORITY";
    goto LABEL_10;
  }

  if (for != 1)
  {
    return;
  }

  v4 = &unk_1F241E7E8;
LABEL_12:
  logWritingOptions = self->super._logWritingOptions;

  [(NSMutableDictionary *)logWritingOptions setObject:v4 forKeyedSubscript:@"set-log-limit"];
}

- (void)instrumentEvents:(BOOL)events
{
  v51 = *MEMORY[0x1E69E9840];
  snapshot = self->_snapshot;
  if (snapshot)
  {
    if (snapshot->var4)
    {
      selfCopy2 = self;
      v5 = 0;
      v6 = 0;
      v7 = &unk_1F241E800;
      if (events)
      {
        v7 = &unk_1F241E7D0;
      }

      v34 = v7;
      do
      {
        v8 = snapshot + v5 * 288;
        if (snapshot->var5[v5].var8)
        {
          v43 = v6;
          v9 = processName();
          v44 = killDescription(*(v8 + 35));
          info = 0;
          v10 = 0;
          if (!mach_timebase_info(&info) && info.denom)
          {
            v10 = (((snapshot->var5[v5].var23 - snapshot->var5[v5].var22) * info.numer / info.denom / 0xF4240) / 1000.0);
          }

          audioAssertionState = selfCopy2->_audioAssertionState;
          v12 = [MEMORY[0x1E696AD98] numberWithInt:*(v8 + 50)];
          v13 = [(NSSet *)audioAssertionState containsObject:v12];

          visibilityEndowmentState = selfCopy2->_visibilityEndowmentState;
          v15 = [MEMORY[0x1E696AD98] numberWithInt:*(v8 + 50)];
          v16 = [(NSSet *)visibilityEndowmentState containsObject:v15];

          v17 = snapshot + v5 * 288;
          memset(out, 0, 37);
          uuid_unparse_lower(snapshot->var5[v5].var6, out);
          v48[0] = @"name";
          v48[1] = @"reason";
          v49[0] = v9;
          v49[1] = v44;
          v48[2] = @"priority";
          v42 = [MEMORY[0x1E696AD98] numberWithInt:snapshot->var5[v5].var2];
          v49[2] = v42;
          v48[3] = @"uptime";
          v41 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v10];
          v49[3] = v41;
          v48[4] = @"audio";
          v40 = [MEMORY[0x1E696AD98] numberWithBool:v13];
          v49[4] = v40;
          v48[5] = @"visible";
          v39 = [MEMORY[0x1E696AD98] numberWithBool:v16];
          v49[5] = v39;
          v48[6] = @"uuid";
          v38 = [MEMORY[0x1E696AEC0] stringWithUTF8String:out];
          v49[6] = v38;
          v48[7] = @"max_pages";
          v37 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:snapshot->var5[v5].var10];
          v49[7] = v37;
          v48[8] = @"suspended";
          v36 = [MEMORY[0x1E696AD98] numberWithBool:snapshot->var5[v5].var3 & 1];
          v49[8] = v36;
          v48[9] = @"frozen";
          v18 = [MEMORY[0x1E696AD98] numberWithBool:(snapshot->var5[v5].var3 >> 1) & 1];
          v49[9] = v18;
          v48[10] = @"thawed";
          v19 = [MEMORY[0x1E696AD98] numberWithBool:(snapshot->var5[v5].var3 >> 2) & 1];
          v49[10] = v19;
          v48[11] = @"tracked";
          v20 = [MEMORY[0x1E696AD98] numberWithBool:(snapshot->var5[v5].var3 >> 3) & 1];
          v49[11] = v20;
          v48[12] = @"can_idle_exit";
          v21 = [MEMORY[0x1E696AD98] numberWithBool:(snapshot->var5[v5].var3 >> 4) & 1];
          v49[12] = v21;
          v48[13] = @"dirty";
          v22 = [MEMORY[0x1E696AD98] numberWithBool:(*(v17 + 61) >> 5) & 1];
          v49[13] = v22;
          v48[14] = @"assertion";
          v23 = [MEMORY[0x1E696AD98] numberWithBool:(*(v17 + 61) >> 6) & 1];
          v48[15] = @"logwritten";
          v49[14] = v23;
          v49[15] = v34;
          [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:v48 count:16];
          v25 = v24 = v9;
          AnalyticsSendEvent();

          v26 = v24;
          if (OSARTCIsProcessOfInterest(v24))
          {
            v46[0] = @"crk";
            v27 = +[OSASystemConfiguration sharedInstance];
            crashReporterKey = [v27 crashReporterKey];
            v47[0] = crashReporterKey;
            v46[1] = @"dirty";
            v29 = [MEMORY[0x1E696AD98] numberWithBool:(*(v17 + 61) >> 5) & 1];
            v30 = v29;
            if (v26)
            {
              v31 = v26;
            }

            else
            {
              v31 = @"<unknown>";
            }

            v47[1] = v29;
            v47[2] = v31;
            v46[2] = @"name";
            v46[3] = @"reason";
            if (v44)
            {
              v32 = v44;
            }

            else
            {
              v32 = @"<unknown>";
            }

            v47[3] = v32;
            v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v47 forKeys:v46 count:4];
            rtcsc_send(2004, 2004, v33);
          }

          selfCopy2 = self;
          snapshot = self->_snapshot;
          v6 = v43;
        }

        ++v6;
        ++v5;
      }

      while (snapshot->var4 > v6);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [OSAJetsamReport instrumentEvents:];
  }
}

- (void)acquireJetsamDataWithFlags:(unsigned int)flags
{
  v3 = *&flags;
  v38 = *MEMORY[0x1E69E9840];
  self->super._capture_time = CFAbsoluteTimeGetCurrent();
  v31 = 0;
  v5 = [OSAJetsamReport fetchSnapshotWithFlags:v3 error:&v31];
  v6 = v31;
  self->_snapshot = v5;
  if (v6)
  {
    [(NSMutableArray *)self->super._notes addObject:v6];
  }

  v7 = +[OSASystemConfiguration sharedInstance];
  appleInternal = [v7 appleInternal];

  if (appleInternal)
  {
    [(OSAJetsamReport *)self fetchWiredMemoryInfo];
  }

  snapshot = self->_snapshot;
  if (snapshot)
  {
    v29 = v6;
    self->_wiredBytes = *MEMORY[0x1E69E9AC8] * snapshot->var3.var5;
    self->_isSuspendedOnlyJetsam = 1;
    if (snapshot->var4)
    {
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v30 = 0;
      v13 = 288;
      do
      {
        v14 = snapshot + v13;
        v15 = *(snapshot + v13 - 8);
        v16 = v15 == 2 || v15 == 7;
        if (v16 || ((v22 = *(v14 - 11), v15) ? (v23 = (*(v14 - 11) & 1) == 0) : (v23 = 0), v23 && ((v22 & 0x10) == 0 || (*(snapshot + v13 - 16) & 0x12B1FLL) != 0 || (v24 = strcmp(snapshot + v13 - 84, "SpringBoard"), (v22 & 0x20) != 0) || !v24)))
        {
          self->_isSuspendedOnlyJetsam = 0;
        }

        if (!v11 || *(&snapshot->var0 + v13) > *(v11 + 11))
        {
          v11 = v14 - 88;
        }

        if ((*(snapshot + v13 - 44) & 1) == 0 && (!v12 || *(&snapshot->var0 + v13) > *(v12 + 11)))
        {
          v12 = v14 - 88;
        }

        if (v15)
        {
          ++self->_killed_or_suspended_count;
          v17 = processName();
          if ((*(snapshot + v13 - 44) & 1) == 0)
          {
            [(NSMutableArray *)self->_killedActiveApps addObject:v17];
          }

          v18 = [(OSAJetsamReport *)self getEventPriority:v17 terminationReason:*(v14 - 1) priority:*(snapshot + v13 - 48)];
          v19 = v30;
          if (v30 <= v18)
          {
            v19 = v18;
          }

          v30 = v19;
          v20 = killDescription(*(v14 - 1));
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            v21 = *(v14 - 22);
            *buf = 138543874;
            v33 = v17;
            v34 = 1024;
            v35 = v21;
            v36 = 2114;
            v37 = v20;
            _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Process %{public}@ [%d] killed by jetsam reason %{public}@", buf, 0x1Cu);
          }

          snapshot = self->_snapshot;
        }

        ++v10;
        v13 += 288;
      }

      while (snapshot->var4 > v10);
    }

    else
    {
      v30 = 0;
      v12 = 0;
      v11 = 0;
    }

    problemType = [(OSAJetsamReport *)self problemType];
    v26 = [problemType isEqualToString:@"298"];

    if (v26)
    {
      [(OSAJetsamReport *)self updateLogLimitFor:v30];
    }

    if (v11)
    {
      v27 = processName();
    }

    else
    {
      v27 = @"none";
    }

    objc_storeStrong(&self->_largestProcess, v27);
    if (v11)
    {
    }

    if (v12)
    {
      v28 = processName();
    }

    else
    {
      v28 = @"none";
    }

    v6 = v29;
    objc_storeStrong(&self->_largestActiveApp, v28);
    if (v12)
    {
    }
  }
}

- (BOOL)alreadyDumpedSuspendedJetsamLogToday
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults objectForKey:@"lastSuspendedLogDumpedDaySince1970"];

  if (v3)
  {
    integerValue = [v3 integerValue];
    v5 = integerValue == +[OSAJetsamReport _daysSince1970];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_setDumpedSuspendedJetsamLog
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults setInteger:+[OSAJetsamReport _daysSince1970](OSAJetsamReport forKey:{"_daysSince1970"), @"lastSuspendedLogDumpedDaySince1970"}];
}

- (BOOL)isActionable
{
  if (!self->_snapshot)
  {
    return 0;
  }

  if (self->_killed_or_suspended_count)
  {
    if (!self->_isSuspendedOnlyJetsam || [(OSAReport *)self isAppleTV]|| ![(OSAJetsamReport *)self alreadyDumpedSuspendedJetsamLogToday])
    {
      return 1;
    }

    v3 = @"suspended-only jetsam log already dumped today";
  }

  else
  {
    v3 = @"No processes were jettisoned (either killed or suspended)";
  }

  notes = self->super._notes;
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:v3];
  [(NSMutableArray *)notes addObject:v6];

  return 0;
}

- (void)generateLogAtLevel:(BOOL)level withBlock:(id)block
{
  v145[7] = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v144[0] = @"incident";
  incidentID = [(OSAReport *)self incidentID];
  v145[0] = incidentID;
  v144[1] = @"crashReporterKey";
  v117 = +[OSASystemConfiguration sharedInstance];
  crashReporterKey = [v117 crashReporterKey];
  v145[1] = crashReporterKey;
  v144[2] = @"product";
  v111 = +[OSASystemConfiguration sharedInstance];
  modelCode = [v111 modelCode];
  v145[2] = modelCode;
  v144[3] = @"build";
  v7 = +[OSASystemConfiguration sharedInstance];
  productNameVersionBuildString = [v7 productNameVersionBuildString];
  v145[3] = productNameVersionBuildString;
  v144[4] = @"kernel";
  kernelVersionDescription = [objc_opt_class() kernelVersionDescription];
  v145[4] = kernelVersionDescription;
  v144[5] = @"date";
  v10 = OSADateFormat(1u, self->super._capture_time);
  v145[5] = v10;
  v144[6] = @"codeSigningMonitor";
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(objc_opt_class(), "codeSigningMonitor")}];
  v145[6] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v145 forKeys:v144 count:7];
  blockCopy[2](blockCopy, v12);

  v13 = blockCopy;
  problemType = [(OSAJetsamReport *)self problemType];
  v15 = [OSALog commonFieldsForBody:problemType];
  blockCopy[2](blockCopy, v15);

  if ([objc_opt_class() isDeveloperMode])
  {
    blockCopy[2](blockCopy, &unk_1F241EDB0);
  }

  if ([(NSString *)self->_event_reason length]| self->_event_code)
  {
    event_reason = self->_event_reason;
    if (!event_reason)
    {
      event_reason = &stru_1F2411100;
    }

    v143[0] = event_reason;
    v142[0] = @"eventReason";
    v142[1] = @"eventCode";
    v17 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
    v142[2] = &unk_1F241E860;
    v143[1] = v17;
    v143[2] = &unk_1F241E7D0;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v143 forKeys:v142 count:3];
    blockCopy[2](blockCopy, v18);
  }

  if (self->_snapshot)
  {
    info = 0;
    mach_timebase_info(&info);
    v95 = blockCopy;
    if (info.denom)
    {
      v19 = ((self->_snapshot->var1 - self->_snapshot->var0) * info.numer / info.denom + 500000) / 0xF4240;
    }

    else
    {
      v19 = 0xFFFFFFFFLL;
    }

    v140[0] = @"timeDelta";
    v119 = [MEMORY[0x1E696AD98] numberWithInt:v19];
    v141[0] = v119;
    v140[1] = @"memoryStatus";
    v138[0] = @"memoryPages";
    v136[0] = @"free";
    v115 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_snapshot->var3.var0];
    v137[0] = v115;
    v136[1] = @"active";
    v112 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_snapshot->var3.var1];
    v137[1] = v112;
    v136[2] = @"inactive";
    v109 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_snapshot->var3.var2];
    v137[2] = v109;
    v136[3] = @"purgeable";
    v107 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_snapshot->var3.var4];
    v137[3] = v107;
    v136[4] = @"wired";
    v105 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_snapshot->var3.var5];
    v137[4] = v105;
    v136[5] = @"speculative";
    v103 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_snapshot->var3.var6];
    v137[5] = v103;
    v136[6] = @"throttled";
    v101 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_snapshot->var3.var3];
    v137[6] = v101;
    v136[7] = @"fileBacked";
    v98 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_snapshot->var3.var7];
    v137[7] = v98;
    v136[8] = @"anonymous";
    v96 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_snapshot->var3.var8];
    v137[8] = v96;
    v94 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v137 forKeys:v136 count:9];
    v139[0] = v94;
    v138[1] = @"compressions";
    v93 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_snapshot->var3.var10];
    v139[1] = v93;
    v138[2] = @"decompressions";
    v92 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_snapshot->var3.var11];
    v139[2] = v92;
    v138[3] = @"compressorSize";
    v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_snapshot->var3.var9];
    v139[3] = v20;
    v138[4] = @"uncompressed";
    v21 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_snapshot->var3.var12];
    v139[4] = v21;
    v138[5] = @"zoneMapSize";
    v22 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_snapshot->var3.var13];
    v139[5] = v22;
    v138[6] = @"zoneMapCap";
    v23 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_snapshot->var3.var14];
    v139[6] = v23;
    v138[7] = @"largestZone";
    v24 = [MEMORY[0x1E696AEC0] stringWithUTF8String:self->_snapshot->var3.var16];
    v139[7] = v24;
    v138[8] = @"largestZoneSize";
    v25 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_snapshot->var3.var15];
    v139[8] = v25;
    v138[9] = @"pageSize";
    v26 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:*MEMORY[0x1E69E9AB0]];
    v139[9] = v26;
    v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v139 forKeys:v138 count:10];
    v141[1] = v27;
    v140[2] = @"genCounter";
    [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_snapshot->var2];
    v28 = v100 = self;
    largestProcess = v100->_largestProcess;
    v141[2] = v28;
    v141[3] = largestProcess;
    v140[3] = @"largestProcess";
    v140[4] = &unk_1F241E860;
    v141[4] = &unk_1F241E7D0;
    v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v141 forKeys:v140 count:5];
    v95[2](v95, v30);

    self = v100;
    array = [MEMORY[0x1E695DF70] array];
    v31 = +[OSASystemConfiguration sharedInstance];
    appleInternal = [v31 appleInternal];

    snapshot = v100->_snapshot;
    if (snapshot->var4)
    {
      v33 = 0;
      v34 = 0;
      do
      {
        v113 = v34;
        v35 = snapshot + v33;
        memset(out, 0, 37);
        uuid_unparse_lower(&snapshot->var5[0].var6[v33], out);
        array2 = [MEMORY[0x1E695DF70] array];
        v37 = array2;
        v38 = *(&snapshot->var5[0].var3 + v33);
        if (v38)
        {
          [array2 addObject:@"suspended"];
          v38 = *(v35 + 61);
        }

        if ((v38 & 0x80) != 0)
        {
          [v37 addObject:@"active"];
        }

        v39 = snapshot + v33;
        v40 = *&snapshot->var5[0].var6[v33 + 16];
        if (v40)
        {
          [v37 addObject:@"audio"];
          v40 = *(v39 + 34);
          if ((v40 & 4) == 0)
          {
LABEL_19:
            if ((v40 & 2) != 0)
            {
              goto LABEL_67;
            }

            goto LABEL_20;
          }
        }

        else if ((v40 & 4) == 0)
        {
          goto LABEL_19;
        }

        [v37 addObject:@"accessory"];
        v40 = *(v39 + 34);
        if ((v40 & 2) != 0)
        {
LABEL_67:
          [v37 addObject:@"location"];
          if ((*(v39 + 34) & 0x10) == 0)
          {
            goto LABEL_22;
          }

LABEL_21:
          [v37 addObject:@"bluetooth"];
          goto LABEL_22;
        }

LABEL_20:
        if ((v40 & 0x10) != 0)
        {
          goto LABEL_21;
        }

LABEL_22:
        visibilityEndowmentState = self->_visibilityEndowmentState;
        [MEMORY[0x1E696AD98] numberWithInt:*(v35 + 50)];
        v42 = v120 = v37;
        LOBYTE(visibilityEndowmentState) = [(NSSet *)visibilityEndowmentState containsObject:v42];

        v43 = @"frontmost";
        if ((visibilityEndowmentState & 1) != 0 || (v43 = @"background", (v39[272] & 8) != 0))
        {
          [v120 addObject:v43];
        }

        v44 = *(v39 + 34);
        if ((v44 & 0x100) != 0)
        {
          [v120 addObject:@"resume"];
          v44 = *(v39 + 34);
          if ((v44 & 0x200) == 0)
          {
LABEL_27:
            if ((v44 & 0x800) == 0)
            {
              goto LABEL_28;
            }

            goto LABEL_71;
          }
        }

        else if ((v44 & 0x200) == 0)
        {
          goto LABEL_27;
        }

        [v120 addObject:@"suspending"];
        v44 = *(v39 + 34);
        if ((v44 & 0x800) == 0)
        {
LABEL_28:
          if ((v44 & 0x2000) == 0)
          {
            goto LABEL_30;
          }

LABEL_29:
          [v120 addObject:@"continuous"];
          goto LABEL_30;
        }

LABEL_71:
        [v120 addObject:@"periodic"];
        if ((*(v39 + 34) & 0x2000) != 0)
        {
          goto LABEL_29;
        }

LABEL_30:
        if (![v120 count])
        {
          if (strcmp(&snapshot->var5[0].var1[v33], "SpringBoard"))
          {
            v45 = @"background";
            if (*(v39 + 34) || ([v120 addObject:@"daemon"], v45 = @"idle", (*(v35 + 61) & 0x30) == 0x10))
            {
              [v120 addObject:v45];
            }
          }
        }

        v133[0] = @"name";
        v108 = processName();
        v134[0] = v108;
        v133[1] = @"pid";
        v106 = [MEMORY[0x1E696AD98] numberWithInt:*(v35 + 50)];
        v134[1] = v106;
        v133[2] = @"uuid";
        v104 = [MEMORY[0x1E696AEC0] stringWithUTF8String:out];
        v134[2] = v104;
        v133[3] = @"cpuTime";
        v116 = v33;
        v110 = snapshot;
        v46 = (snapshot + v33);
        v102 = [MEMORY[0x1E696AD98] numberWithDouble:v46[54] / 1000000.0 + v46[53]];
        v134[3] = v102;
        v133[4] = @"rpages";
        v47 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v46[36]];
        v134[4] = v47;
        v133[5] = @"purgeable";
        v48 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v46[38]];
        v134[5] = v48;
        v133[6] = @"lifetimeMax";
        v49 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v46[37]];
        v134[6] = v49;
        v133[7] = @"fds";
        v50 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(v46 + 62)];
        v134[7] = v50;
        v134[8] = v120;
        v133[8] = @"states";
        v133[9] = @"age";
        v51 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_snapshot->var0 - v46[49]];
        v134[9] = v51;
        v133[10] = @"priority";
        v52 = [MEMORY[0x1E696AD98] numberWithInt:*(v46 + 60)];
        v134[10] = v52;
        v133[11] = @"freeze_skip_reason:";
        v53 = freezeSkipReason(*(v46 + 252));
        v134[11] = v53;
        v54 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v134 forKeys:v133 count:12];
        v55 = [v54 mutableCopy];

        if (v46[51])
        {
          v56 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
          [v55 setObject:v56 forKeyedSubscript:@"idleDelta"];
        }

        v57 = v46[50];
        self = v100;
        if (v57)
        {
          v58 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v57 - v100->_snapshot->var0];
          [v55 setObject:v58 forKeyedSubscript:@"killDelta"];

          v59 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(&v110->var5[0].var21 + v116)];
          [v55 setObject:v59 forKeyedSubscript:@"genCount"];
        }

        v60 = *(&v110->var5[0].var8 + v116);
        if (v60)
        {
          v61 = killDescription(v60);
          [v55 setObject:v61 forKeyedSubscript:@"reason"];
        }

        dictionary = [MEMORY[0x1E695DF90] dictionary];
        if (*(&v110->var5[0].var12 + v116) || *(&v110->var5[0].var13 + v116))
        {
          v63 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
          v132[0] = v63;
          v64 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(&v110->var5[0].var13 + v116)];
          v132[1] = v64;
          v65 = [MEMORY[0x1E695DEC8] arrayWithObjects:v132 count:2];
          [dictionary setObject:v65 forKeyedSubscript:@"internal"];
        }

        if (*(&v110->var5[0].var28 + v116))
        {
          v66 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
          [dictionary setObject:v66 forKeyedSubscript:@"frozen_to_swap_pages"];
        }

        v67 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(&v110->var5[0].var20 + v116)];
        [v55 setObject:v67 forKeyedSubscript:@"mem_regions"];

        if (appleInternal)
        {
          v68 = v110 + v116;
          if (*(&v110->var5[0].var14 + v116) || *(v68 + 336))
          {
            v69 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
            v131[0] = v69;
            v70 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(v68 + 336)];
            v131[1] = v70;
            v71 = [MEMORY[0x1E695DEC8] arrayWithObjects:v131 count:2];
            [dictionary setObject:v71 forKeyedSubscript:@"purgeable_nv"];
          }

          v72 = v110 + v116;
          if (*(&v110->var5[0].var16 + v116) || *(v72 + 352))
          {
            v73 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
            v130[0] = v73;
            v74 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(v72 + 352)];
            v130[1] = v74;
            v75 = [MEMORY[0x1E695DEC8] arrayWithObjects:v130 count:2];
            [dictionary setObject:v75 forKeyedSubscript:@"alternate"];
          }

          if (*(&v110->var5[0].var18 + v116))
          {
            v76 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
            [dictionary setObject:v76 forKeyedSubscript:@"iokit"];
          }

          if (*(&v110->var5[0].var19 + v116))
          {
            v77 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
            [dictionary setObject:v77 forKeyedSubscript:@"table"];
          }

          if (*(&v110->var5[0].var31 + v116))
          {
            v78 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
            [v55 setObject:v78 forKeyedSubscript:@"neuralPages"];
          }
        }

        if ([dictionary count])
        {
          [v55 setObject:dictionary forKeyedSubscript:@"physicalPages"];
        }

        v79 = v110 + v116;
        if (*(&v110->var5[0].var25 + v116))
        {
          v80 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
          [v55 setObject:v80 forKeyedSubscript:@"coalition"];
        }

        v81 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(v79 + 456)];
        [v55 setObject:v81 forKeyedSubscript:@"csFlags"];

        v82 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(v79 + 464)];
        [v55 setObject:v82 forKeyedSubscript:@"csTrustLevel"];

        [array addObject:v55];
        v34 = v113 + 1;
        snapshot = v100->_snapshot;
        v33 = v116 + 288;
      }

      while (snapshot->var4 > v113 + 1);
    }

    v128[0] = @"processes";
    v128[1] = &unk_1F241E860;
    v129[0] = array;
    v129[1] = &unk_1F241E7D0;
    v83 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v129 forKeys:v128 count:2];
    v13 = v95;
    v95[2](v95, v83);
  }

  v84 = +[OSASystemConfiguration sharedInstance];
  appleInternal2 = [v84 appleInternal];

  if (appleInternal2)
  {
    if ([(NSMutableArray *)self->_zones count])
    {
      zones = self->_zones;
      v126 = @"zones";
      v127 = zones;
      v87 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v127 forKeys:&v126 count:1];
      v13[2](v13, v87);
    }

    if ([(NSMutableArray *)self->_tags count])
    {
      tags = self->_tags;
      v124 = @"tags";
      v125 = tags;
      v89 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v125 forKeys:&v124 count:1];
      v13[2](v13, v89);
    }
  }

  if ([(NSMutableArray *)self->super._notes count])
  {
    notes = self->super._notes;
    v122 = @"notes";
    v123 = notes;
    v91 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v123 forKeys:&v122 count:1];
    v13[2](v13, v91);
  }

  if (self->_isSuspendedOnlyJetsam)
  {
    [(OSAJetsamReport *)self _setDumpedSuspendedJetsamLog];
  }
}

+ (int64_t)_daysSince1970
{
  result = time(0);
  if (result >= 0)
  {
    return result / 0x15180uLL;
  }

  return result;
}

@end