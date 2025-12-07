@interface CDJetsamReport
+ (int64_t)_daysSince1970;
+ (jetsam_snapshot)fetchSnapshotWithFlags:(unsigned int)flags error:(id *)error;
- (BOOL)alreadyDumpedSuspendedJetsamLogToday;
- (BOOL)isActionable;
- (BOOL)saveWithOptions:(id)options;
- (CDJetsamReport)initWithIncidentID:(id)d visibilityEndowmentState:(id)state audioAssertionState:(id)assertionState;
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

@implementation CDJetsamReport

- (CDJetsamReport)initWithIncidentID:(id)d visibilityEndowmentState:(id)state audioAssertionState:(id)assertionState
{
  dCopy = d;
  stateCopy = state;
  assertionStateCopy = assertionState;
  v22.receiver = self;
  v22.super_class = CDJetsamReport;
  v12 = [(OSAReport *)&v22 init];
  v13 = v12;
  if (v12)
  {
    if (dCopy)
    {
      objc_storeStrong((&v12->super.super.isa + *MEMORY[0x1E69B7C20]), d);
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
    v13->_largestActiveApp = &stru_1F550D880;

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
  v3.super_class = CDJetsamReport;
  [(CDJetsamReport *)&v3 dealloc];
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
  v7 = *MEMORY[0x1E69B7C48];
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
  v6.super_class = CDJetsamReport;
  v4 = [(OSAReport *)&v6 saveWithOptions:options];
  [(CDJetsamReport *)self instrumentEvents:v4];
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

  v10 = malloc_type_malloc(v5, 0xC6E11B53uLL);
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
    _os_log_impl(&dword_1D97FA000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
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
  if ([&unk_1F5514330 containsObject:priority])
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
      v6 = 0;
      v5 = &unk_1F55143C0;
      v7 = @"298_HIGH_PRIORITY";
    }

    else
    {
      if (for != 3)
      {
        return;
      }

      v5 = 0;
      v6 = 1;
      v7 = @"298_ALE";
    }

LABEL_10:
    v4 = *MEMORY[0x1E69B7C28];
    [*(&self->super.super.isa + v4) setObject:v7 forKeyedSubscript:*MEMORY[0x1E69B7C50]];
    if (v6)
    {
      return;
    }

    goto LABEL_12;
  }

  if (!for)
  {
    v6 = 0;
    v5 = &unk_1F55143A8;
    v7 = @"298_LOW_PRIORITY";
    goto LABEL_10;
  }

  if (for != 1)
  {
    return;
  }

  v4 = *MEMORY[0x1E69B7C28];
  v5 = &unk_1F55143C0;
LABEL_12:
  v8 = *(&self->super.super.isa + v4);
  v9 = *MEMORY[0x1E69B7C80];

  [v8 setObject:v5 forKeyedSubscript:v9];
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
      v7 = &unk_1F55143D8;
      if (events)
      {
        v7 = &unk_1F55143A8;
      }

      v34 = v7;
      do
      {
        v8 = snapshot + v5 * 288;
        if (snapshot->var5[v5].var8)
        {
          v43 = v6;
          v9 = processName((v8 + 200));
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
          if (OSARTCIsProcessOfInterest())
          {
            v46[0] = @"crk";
            mEMORY[0x1E69B7C10] = [MEMORY[0x1E69B7C10] sharedInstance];
            crashReporterKey = [mEMORY[0x1E69B7C10] crashReporterKey];
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
            rtcsc_send();
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
    [CDJetsamReport instrumentEvents:];
  }
}

- (void)fetchWiredMemoryInfo
{
  [self unsignedIntValue];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xEu);
}

- (void)acquireJetsamDataWithFlags:(unsigned int)flags
{
  v3 = *&flags;
  v38 = *MEMORY[0x1E69E9840];
  *(&self->super.super.isa + *MEMORY[0x1E69B7C18]) = CFAbsoluteTimeGetCurrent();
  v31 = 0;
  v5 = [CDJetsamReport fetchSnapshotWithFlags:v3 error:&v31];
  v6 = v31;
  self->_snapshot = v5;
  if (v6)
  {
    [*(&self->super.super.isa + *MEMORY[0x1E69B7C30]) addObject:v6];
  }

  mEMORY[0x1E69B7C10] = [MEMORY[0x1E69B7C10] sharedInstance];
  appleInternal = [mEMORY[0x1E69B7C10] appleInternal];

  if (appleInternal)
  {
    [(CDJetsamReport *)self fetchWiredMemoryInfo];
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

        if (!v11 || *(&snapshot->var0 + v13) > *(v11 + 88))
        {
          v11 = (v14 - 88);
        }

        if ((*(snapshot + v13 - 44) & 1) == 0 && (!v12 || *(&snapshot->var0 + v13) > *(v12 + 88)))
        {
          v12 = (v14 - 88);
        }

        if (v15)
        {
          ++self->_killed_or_suspended_count;
          v17 = processName((v14 - 88));
          if ((*(snapshot + v13 - 44) & 1) == 0)
          {
            [(NSMutableArray *)self->_killedActiveApps addObject:v17];
          }

          v18 = [(CDJetsamReport *)self getEventPriority:v17 terminationReason:*(v14 - 1) priority:*(snapshot + v13 - 48)];
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
            _os_log_impl(&dword_1D97FA000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Process %{public}@ [%d] killed by jetsam reason %{public}@", buf, 0x1Cu);
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

    problemType = [(CDJetsamReport *)self problemType];
    v26 = [problemType isEqualToString:@"298"];

    if (v26)
    {
      [(CDJetsamReport *)self updateLogLimitFor:v30];
    }

    if (v11)
    {
      v27 = processName(v11);
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
      v28 = processName(v12);
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
    v5 = integerValue == +[CDJetsamReport _daysSince1970];
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
  [standardUserDefaults setInteger:+[CDJetsamReport _daysSince1970](CDJetsamReport forKey:{"_daysSince1970"), @"lastSuspendedLogDumpedDaySince1970"}];
}

- (BOOL)isActionable
{
  if (!self->_snapshot)
  {
    return 0;
  }

  if (self->_killed_or_suspended_count)
  {
    if (!self->_isSuspendedOnlyJetsam || [(OSAReport *)self isAppleTV]|| ![(CDJetsamReport *)self alreadyDumpedSuspendedJetsamLogToday])
    {
      return 1;
    }

    v3 = @"suspended-only jetsam log already dumped today";
  }

  else
  {
    v3 = @"No processes were jettisoned (either killed or suspended)";
  }

  v5 = *(&self->super.super.isa + *MEMORY[0x1E69B7C30]);
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:v3];
  [v5 addObject:v6];

  return 0;
}

- (void)generateLogAtLevel:(BOOL)level withBlock:(id)block
{
  v156[7] = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v155[0] = @"incident";
  incidentID = [(OSAReport *)self incidentID];
  v156[0] = incidentID;
  v155[1] = @"crashReporterKey";
  mEMORY[0x1E69B7C10] = [MEMORY[0x1E69B7C10] sharedInstance];
  crashReporterKey = [mEMORY[0x1E69B7C10] crashReporterKey];
  v156[1] = crashReporterKey;
  v155[2] = @"product";
  mEMORY[0x1E69B7C10]2 = [MEMORY[0x1E69B7C10] sharedInstance];
  modelCode = [mEMORY[0x1E69B7C10]2 modelCode];
  v156[2] = modelCode;
  v155[3] = @"build";
  mEMORY[0x1E69B7C10]3 = [MEMORY[0x1E69B7C10] sharedInstance];
  productNameVersionBuildString = [mEMORY[0x1E69B7C10]3 productNameVersionBuildString];
  v156[3] = productNameVersionBuildString;
  v155[4] = @"kernel";
  kernelVersionDescription = [objc_opt_class() kernelVersionDescription];
  v156[4] = kernelVersionDescription;
  v155[5] = @"date";
  v10 = OSADateFormat();
  v156[5] = v10;
  v155[6] = @"codeSigningMonitor";
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(objc_opt_class(), "codeSigningMonitor")}];
  v156[6] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v156 forKeys:v155 count:7];
  blockCopy[2](blockCopy, v12);

  v13 = blockCopy;
  v14 = MEMORY[0x1E69B7C00];
  problemType = [(CDJetsamReport *)self problemType];
  v16 = [v14 commonFieldsForBody:problemType];
  blockCopy[2](blockCopy, v16);

  if ([objc_opt_class() isDeveloperMode])
  {
    blockCopy[2](blockCopy, &unk_1F5514570);
  }

  if ([(NSString *)self->_event_reason length]| self->_event_code)
  {
    event_reason = self->_event_reason;
    if (!event_reason)
    {
      event_reason = &stru_1F550D880;
    }

    v154[0] = event_reason;
    v153[0] = @"eventReason";
    v153[1] = @"eventCode";
    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
    v153[2] = &unk_1F5514438;
    v154[1] = v18;
    v154[2] = &unk_1F55143A8;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v154 forKeys:v153 count:3];
    blockCopy[2](blockCopy, v19);
  }

  v20 = +[_TtC15CoreDiagnostics22AppleIntelligenceState getAppleIntelligenceAvailability];
  if ([v20 count])
  {
    v151 = @"appleIntelligenceStatus";
    v152 = v20;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v152 forKeys:&v151 count:1];
    blockCopy[2](blockCopy, v21);
  }

  if (self->_snapshot)
  {
    info = 0;
    mach_timebase_info(&info);
    v106 = blockCopy;
    v105 = v20;
    if (info.denom)
    {
      v22 = ((self->_snapshot->var1 - self->_snapshot->var0) * info.numer / info.denom + 500000) / 0xF4240;
    }

    else
    {
      v22 = 0xFFFFFFFFLL;
    }

    v149[0] = @"timeDelta";
    v128 = [MEMORY[0x1E696AD98] numberWithInt:v22];
    v150[0] = v128;
    v149[1] = @"memoryStatus";
    v147[0] = @"memoryPages";
    v145[0] = @"free";
    v125 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_snapshot->var3.var0];
    v146[0] = v125;
    v145[1] = @"active";
    v122 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_snapshot->var3.var1];
    v146[1] = v122;
    v145[2] = @"inactive";
    v119 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_snapshot->var3.var2];
    v146[2] = v119;
    v145[3] = @"purgeable";
    v116 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_snapshot->var3.var4];
    v146[3] = v116;
    v145[4] = @"wired";
    v114 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_snapshot->var3.var5];
    v146[4] = v114;
    v145[5] = @"speculative";
    v112 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_snapshot->var3.var6];
    v146[5] = v112;
    v145[6] = @"throttled";
    v109 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_snapshot->var3.var3];
    v146[6] = v109;
    v145[7] = @"fileBacked";
    v107 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_snapshot->var3.var7];
    v146[7] = v107;
    v145[8] = @"anonymous";
    v104 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_snapshot->var3.var8];
    v146[8] = v104;
    v103 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v146 forKeys:v145 count:9];
    v148[0] = v103;
    v147[1] = @"compressions";
    v102 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_snapshot->var3.var10];
    v148[1] = v102;
    v147[2] = @"decompressions";
    v101 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_snapshot->var3.var11];
    v148[2] = v101;
    v147[3] = @"compressorSize";
    [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_snapshot->var3.var9];
    v23 = v111 = self;
    v148[3] = v23;
    v147[4] = @"uncompressed";
    v24 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v111->_snapshot->var3.var12];
    v148[4] = v24;
    v147[5] = @"zoneMapSize";
    v25 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v111->_snapshot->var3.var13];
    v148[5] = v25;
    v147[6] = @"zoneMapCap";
    v26 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v111->_snapshot->var3.var14];
    v148[6] = v26;
    v147[7] = @"largestZone";
    v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v111->_snapshot->var3.var16];
    v148[7] = v27;
    v147[8] = @"largestZoneSize";
    v28 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v111->_snapshot->var3.var15];
    v148[8] = v28;
    v147[9] = @"pageSize";
    v29 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:*MEMORY[0x1E69E9AB0]];
    v148[9] = v29;
    v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v148 forKeys:v147 count:10];
    v150[1] = v30;
    v149[2] = @"genCounter";
    v31 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v111->_snapshot->var2];
    largestProcess = v111->_largestProcess;
    v150[2] = v31;
    v150[3] = largestProcess;
    v149[3] = @"largestProcess";
    v149[4] = &unk_1F5514438;
    v150[4] = &unk_1F55143A8;
    v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v150 forKeys:v149 count:5];
    v106[2](v106, v33);

    self = v111;
    array = [MEMORY[0x1E695DF70] array];
    mEMORY[0x1E69B7C10]4 = [MEMORY[0x1E69B7C10] sharedInstance];
    appleInternal = [mEMORY[0x1E69B7C10]4 appleInternal];

    snapshot = v111->_snapshot;
    if (snapshot->var4)
    {
      v36 = 0;
      v37 = 0;
      do
      {
        v126 = v37;
        v38 = snapshot + v36;
        memset(out, 0, 37);
        uuid_unparse_lower(&snapshot->var5[0].var6[v36], out);
        array2 = [MEMORY[0x1E695DF70] array];
        v40 = array2;
        v41 = *(&snapshot->var5[0].var3 + v36);
        if (v41)
        {
          [array2 addObject:@"suspended"];
          v41 = *(v38 + 61);
        }

        if ((v41 & 0x80) != 0)
        {
          [v40 addObject:@"active"];
        }

        v42 = snapshot + v36;
        v43 = *&snapshot->var5[0].var6[v36 + 16];
        if (v43)
        {
          [v40 addObject:@"audio"];
          v43 = *(v42 + 34);
          if ((v43 & 4) == 0)
          {
LABEL_21:
            if ((v43 & 2) != 0)
            {
              goto LABEL_71;
            }

            goto LABEL_22;
          }
        }

        else if ((v43 & 4) == 0)
        {
          goto LABEL_21;
        }

        [v40 addObject:@"accessory"];
        v43 = *(v42 + 34);
        if ((v43 & 2) != 0)
        {
LABEL_71:
          [v40 addObject:@"location"];
          if ((*(v42 + 34) & 0x10) == 0)
          {
            goto LABEL_24;
          }

LABEL_23:
          [v40 addObject:@"bluetooth"];
          goto LABEL_24;
        }

LABEL_22:
        if ((v43 & 0x10) != 0)
        {
          goto LABEL_23;
        }

LABEL_24:
        visibilityEndowmentState = self->_visibilityEndowmentState;
        v45 = [MEMORY[0x1E696AD98] numberWithInt:*(v38 + 50)];
        LOBYTE(visibilityEndowmentState) = [(NSSet *)visibilityEndowmentState containsObject:v45];

        v46 = @"frontmost";
        if ((visibilityEndowmentState & 1) != 0 || (v46 = @"background", (v42[272] & 8) != 0))
        {
          [v40 addObject:v46];
        }

        v47 = *(v42 + 34);
        if ((v47 & 0x100) != 0)
        {
          [v40 addObject:@"resume"];
          v47 = *(v42 + 34);
          if ((v47 & 0x200) == 0)
          {
LABEL_29:
            if ((v47 & 0x800) == 0)
            {
              goto LABEL_30;
            }

            goto LABEL_75;
          }
        }

        else if ((v47 & 0x200) == 0)
        {
          goto LABEL_29;
        }

        [v40 addObject:@"suspending"];
        v47 = *(v42 + 34);
        if ((v47 & 0x800) == 0)
        {
LABEL_30:
          if ((v47 & 0x2000) == 0)
          {
            goto LABEL_32;
          }

LABEL_31:
          [v40 addObject:@"continuous"];
          goto LABEL_32;
        }

LABEL_75:
        [v40 addObject:@"periodic"];
        if ((*(v42 + 34) & 0x2000) != 0)
        {
          goto LABEL_31;
        }

LABEL_32:
        if (![v40 count])
        {
          if (strcmp(&snapshot->var5[0].var1[v36], "SpringBoard"))
          {
            v48 = @"background";
            if (*(v42 + 34) || ([v40 addObject:@"daemon"], v48 = @"idle", (*(v38 + 61) & 0x30) == 0x10))
            {
              [v40 addObject:v48];
            }
          }
        }

        v142[0] = @"name";
        v117 = processName((v38 + 200));
        v143[0] = v117;
        v142[1] = @"pid";
        v115 = [MEMORY[0x1E696AD98] numberWithInt:*(v38 + 50)];
        v143[1] = v115;
        v142[2] = @"uuid";
        v113 = [MEMORY[0x1E696AEC0] stringWithUTF8String:out];
        v143[2] = v113;
        v142[3] = @"cpuTime";
        v129 = v36;
        v123 = snapshot;
        v49 = snapshot + v36;
        [MEMORY[0x1E696AD98] numberWithDouble:*(&snapshot->var5[0].var26.tv_usec + v36) / 1000000.0 + *(&snapshot->var5[0].var26.tv_sec + v36)];
        v51 = v50 = v40;
        v143[3] = v51;
        v142[4] = @"rpages";
        v52 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(&snapshot->var5[0].var9 + v36)];
        v143[4] = v52;
        v142[5] = @"purgeable";
        v53 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(v49 + 38)];
        v143[5] = v53;
        v142[6] = @"lifetimeMax";
        v54 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(v49 + 37)];
        v143[6] = v54;
        v142[7] = @"fds";
        v55 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(v49 + 62)];
        v143[7] = v55;
        v143[8] = v50;
        v120 = v50;
        v142[8] = @"states";
        v142[9] = @"age";
        v56 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_snapshot->var0 - *(v49 + 49)];
        v143[9] = v56;
        v142[10] = @"priority";
        v57 = [MEMORY[0x1E696AD98] numberWithInt:*(v49 + 60)];
        v143[10] = v57;
        v142[11] = @"freeze_skip_reason:";
        v58 = *(v49 + 63);
        v59 = @"(unknown-reason)";
        if (v58 <= 0xAu)
        {
          v59 = off_1E8585278[v58 & 0xF];
        }

        v143[11] = v59;
        v60 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v143 forKeys:v142 count:12];
        v61 = [v60 mutableCopy];

        if (*(v49 + 51))
        {
          v62 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
          [v61 setObject:v62 forKeyedSubscript:@"idleDelta"];
        }

        v63 = v123 + v129;
        v64 = *(&v123->var5[0].var23 + v129);
        self = v111;
        if (v64)
        {
          v65 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v64 - v111->_snapshot->var0];
          [v61 setObject:v65 forKeyedSubscript:@"killDelta"];

          v66 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(v63 + 384)];
          [v61 setObject:v66 forKeyedSubscript:@"genCount"];
        }

        v67 = *(v63 + 280);
        if (v67)
        {
          v68 = killDescription(v67);
          [v61 setObject:v68 forKeyedSubscript:@"reason"];
        }

        dictionary = [MEMORY[0x1E695DF90] dictionary];
        v70 = v123 + v129;
        if (*(&v123->var5[0].var12 + v129) || *(v70 + 320))
        {
          v71 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
          v141[0] = v71;
          v72 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(v70 + 320)];
          v141[1] = v72;
          v73 = [MEMORY[0x1E695DEC8] arrayWithObjects:v141 count:2];
          [dictionary setObject:v73 forKeyedSubscript:@"internal"];
        }

        if (*(&v123->var5[0].var28 + v129))
        {
          v74 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
          [dictionary setObject:v74 forKeyedSubscript:@"frozen_to_swap_pages"];
        }

        v75 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(&v123->var5[0].var20 + v129)];
        [v61 setObject:v75 forKeyedSubscript:@"mem_regions"];

        if (appleInternal)
        {
          v76 = v123 + v129;
          if (*(&v123->var5[0].var14 + v129) || *(v76 + 336))
          {
            v77 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
            v140[0] = v77;
            v78 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(v76 + 336)];
            v140[1] = v78;
            v79 = [MEMORY[0x1E695DEC8] arrayWithObjects:v140 count:2];
            [dictionary setObject:v79 forKeyedSubscript:@"purgeable_nv"];
          }

          v80 = v123 + v129;
          if (*(&v123->var5[0].var16 + v129) || *(v80 + 352))
          {
            v81 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
            v139[0] = v81;
            v82 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(v80 + 352)];
            v139[1] = v82;
            v83 = [MEMORY[0x1E695DEC8] arrayWithObjects:v139 count:2];
            [dictionary setObject:v83 forKeyedSubscript:@"alternate"];
          }

          if (*(&v123->var5[0].var18 + v129))
          {
            v84 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
            [dictionary setObject:v84 forKeyedSubscript:@"iokit"];
          }

          if (*(&v123->var5[0].var19 + v129))
          {
            v85 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
            [dictionary setObject:v85 forKeyedSubscript:@"table"];
          }

          if (*(&v123->var5[0].var31 + v129))
          {
            v86 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
            [v61 setObject:v86 forKeyedSubscript:@"neuralPages"];
          }
        }

        if ([dictionary count])
        {
          [v61 setObject:dictionary forKeyedSubscript:@"physicalPages"];
        }

        v87 = v123 + v129;
        if (*(&v123->var5[0].var25 + v129))
        {
          v88 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
          [v61 setObject:v88 forKeyedSubscript:@"coalition"];
        }

        v89 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(v87 + 456)];
        [v61 setObject:v89 forKeyedSubscript:@"csFlags"];

        v90 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(v87 + 464)];
        [v61 setObject:v90 forKeyedSubscript:@"csTrustLevel"];

        [array addObject:v61];
        v37 = v126 + 1;
        snapshot = v111->_snapshot;
        v36 = v129 + 288;
      }

      while (snapshot->var4 > v126 + 1);
    }

    v137[0] = @"processes";
    v137[1] = &unk_1F5514438;
    v138[0] = array;
    v138[1] = &unk_1F55143A8;
    v91 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v138 forKeys:v137 count:2];
    v13 = v106;
    v106[2](v106, v91);

    v20 = v105;
  }

  mEMORY[0x1E69B7C10]5 = [MEMORY[0x1E69B7C10] sharedInstance];
  appleInternal2 = [mEMORY[0x1E69B7C10]5 appleInternal];

  if (appleInternal2)
  {
    if ([(NSMutableArray *)self->_zones count])
    {
      zones = self->_zones;
      v135 = @"zones";
      v136 = zones;
      v95 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v136 forKeys:&v135 count:1];
      v13[2](v13, v95);
    }

    if ([(NSMutableArray *)self->_tags count])
    {
      tags = self->_tags;
      v133 = @"tags";
      v134 = tags;
      v97 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v134 forKeys:&v133 count:1];
      v13[2](v13, v97);
    }
  }

  v98 = *MEMORY[0x1E69B7C30];
  if ([*(&self->super.super.isa + v98) count])
  {
    v99 = *(&self->super.super.isa + v98);
    v131 = @"notes";
    v132 = v99;
    v100 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v132 forKeys:&v131 count:1];
    v13[2](v13, v100);
  }

  if (self->_isSuspendedOnlyJetsam)
  {
    [(CDJetsamReport *)self _setDumpedSuspendedJetsamLog];
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