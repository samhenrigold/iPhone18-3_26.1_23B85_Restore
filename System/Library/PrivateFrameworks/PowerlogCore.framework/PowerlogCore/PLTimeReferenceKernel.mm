@interface PLTimeReferenceKernel
- (double)resolution;
- (id)currentTime;
- (mach_timebase_info)getTimebaseInfo;
- (void)currentTime;
- (void)initializeOffsetWithEntries:(id)entries;
- (void)quarantineWithExitReason:(signed __int16)reason;
@end

@implementation PLTimeReferenceKernel

- (id)currentTime
{
  v28 = *MEMORY[0x1E69E9840];
  if (currentTime_onceToken != -1)
  {
    [PLTimeReferenceKernel currentTime];
  }

  date = [MEMORY[0x1E695DF00] date];
  lastSystemTimeRecalibrated = [(PLTimeReferenceKernel *)self lastSystemTimeRecalibrated];
  if (lastSystemTimeRecalibrated && ((v5 = lastSystemTimeRecalibrated, -[PLTimeReferenceKernel lastSystemTimeRecalibrated](self, "lastSystemTimeRecalibrated"), v6 = objc_claimAutoreleasedReturnValue(), [date timeIntervalSinceDate:v6], v8 = v7, v6, v5, v8 >= 0.0) ? (v9 = v8 < 30.0) : (v9 = 0), v9))
  {
    lastKernelTimeRecalibrated = [(PLTimeReferenceKernel *)self lastKernelTimeRecalibrated];
    v14 = [lastKernelTimeRecalibrated dateByAddingTimeInterval:v8];

    v16 = PLLogTimeManager(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      lastSystemTimeRecalibrated2 = [(PLTimeReferenceKernel *)self lastSystemTimeRecalibrated];
      *buf = 138412802;
      *&buf[4] = date;
      v24 = 2112;
      v25 = lastSystemTimeRecalibrated2;
      v26 = 2112;
      v27 = v14;
      _os_log_debug_impl(&dword_1D8611000, v16, OS_LOG_TYPE_DEBUG, "Linear approximation: systemNow=%@, lastSystemTimeRecalibrated=%@, currentTime=%@", buf, 0x20u);
    }
  }

  else
  {
    v22 = 8;
    *buf = 0;
    v10 = sysctl(currentTime_mib, currentTime_miblen, buf, &v22, 0, 0);
    if (v10)
    {
      v11 = PLLogTimeManager(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [PLTimeReferenceKernel currentTime];
      }

      date2 = [MEMORY[0x1E695DF00] date];
    }

    else
    {
      v17 = *buf / 1000000.0;
      [(PLTimeReferenceKernel *)self resolution];
      date2 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:v17 + v18 * 0.5];
    }

    v14 = date2;
    [(PLTimeReferenceKernel *)self setLastSystemTimeRecalibrated:date];
    v19 = PLLogTimeManager([(PLTimeReferenceKernel *)self setLastKernelTimeRecalibrated:v14]);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      [(PLTimeReferenceKernel *)date currentTime];
    }
  }

  return v14;
}

- (double)resolution
{
  if (resolution_onceToken != -1)
  {
    [PLTimeReferenceKernel resolution];
  }

  return *&resolution_sInterval;
}

- (void)initializeOffsetWithEntries:(id)entries
{
  entriesCopy = entries;
  currentTime = [(PLTimeReferenceKernel *)self currentTime];
  if (entriesCopy && [entriesCopy count])
  {
    lastObject = [entriesCopy lastObject];
    v7 = [lastObject objectForKeyedSubscript:@"system"];
    [v7 doubleValue];
    v9 = v8;

    v10 = [lastObject objectForKeyedSubscript:@"kernel"];
    [v10 doubleValue];
    v12 = v11;

    entryDate = [lastObject entryDate];
  }

  else
  {
    v37.receiver = self;
    v37.super_class = PLTimeReferenceKernel;
    v14 = [-[PLTimeReferenceKernel class](&v37 class)];
    v15 = [PLDefaults objectForKey:v14];
    [v15 doubleValue];
    v9 = v16;

    v36.receiver = self;
    v36.super_class = PLTimeReferenceKernel;
    v17 = [-[PLTimeReferenceKernel class](&v36 class)];
    v18 = [PLDefaults objectForKey:v17];
    [v18 doubleValue];
    v12 = v19;

    v20 = MEMORY[0x1E695DF00];
    v35.receiver = self;
    v35.super_class = PLTimeReferenceKernel;
    v21 = [-[PLTimeReferenceKernel class](&v35 class)];
    v22 = [PLDefaults objectForKey:v21];
    [v22 doubleValue];
    entryDate = [v20 dateWithTimeIntervalSince1970:?];
  }

  if (v9 == 0.0 || (v12 != 0.0 ? (v23 = entryDate == 0) : (v23 = 1), v23))
  {
    timeManager = [(PLTimeReference *)self timeManager];
    initialMonotonicTime = [timeManager initialMonotonicTime];
    [currentTime timeIntervalSinceDate:initialMonotonicTime];
    [(PLTimeReference *)&v32 setOffset:self, PLTimeReferenceKernel];
  }

  else
  {
    timeManager = [entryDate dateByAddingTimeInterval:v12];
    [currentTime timeIntervalSinceDate:timeManager];
    if (v25 >= 0.0)
    {
      v33.receiver = self;
      v33.super_class = PLTimeReferenceKernel;
      [(PLTimeReference *)&v33 setOffset:v12];
      goto LABEL_19;
    }

    date = [MEMORY[0x1E695DF00] date];
    initialMonotonicTime = [date dateByAddingTimeInterval:-v9];

    v28 = [initialMonotonicTime timeIntervalSinceDate:entryDate];
    v30 = v29;
    v31 = PLLogTimeManager(v28);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      [(PLTimeReferenceKernel *)v30 < 0.0 initializeOffsetWithEntries:v31];
    }

    if (v30 < 0.0)
    {
      [(PLTimeReferenceKernel *)self quarantineWithExitReason:1006];
    }

    [currentTime timeIntervalSinceDate:initialMonotonicTime];
    v34.receiver = self;
    v34.super_class = PLTimeReferenceKernel;
    [(PLTimeReference *)&v34 setOffset:v32.receiver, v32.super_class];
  }

LABEL_19:
}

- (void)quarantineWithExitReason:(signed __int16)reason
{
  reasonCopy = reason;
  v13.receiver = self;
  v13.super_class = PLTimeReferenceKernel;
  v5 = [-[PLTimeReferenceKernel class](&v13 class)];
  [PLDefaults setObject:0 forKey:v5 saveToDisk:1];

  v12.receiver = self;
  v12.super_class = PLTimeReferenceKernel;
  v6 = [-[PLTimeReferenceKernel class](&v12 class)];
  [PLDefaults setObject:0 forKey:v6 saveToDisk:1];

  v11.receiver = self;
  v11.super_class = PLTimeReferenceKernel;
  v7 = [-[PLTimeReferenceKernel class](&v11 class)];
  [PLDefaults setObject:0 forKey:v7 saveToDisk:1];

  v10.receiver = self;
  v10.super_class = PLTimeReferenceKernel;
  v8 = [-[PLTimeReferenceKernel class](&v10 class)];
  [PLDefaults setObject:0 forKey:v8 saveToDisk:1];

  v9 = dispatch_semaphore_create(0);
  [PLUtilities exitWithReason:reasonCopy];
  dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
}

void __36__PLTimeReferenceKernel_currentTime__block_invoke()
{
  v0 = sysctlnametomib("kern.monotonicclock_usecs", currentTime_mib, &currentTime_miblen);
  if (v0)
  {
    v1 = PLLogTimeManager(v0);
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      __36__PLTimeReferenceKernel_currentTime__block_invoke_cold_1(v1);
    }
  }
}

double __35__PLTimeReferenceKernel_resolution__block_invoke()
{
  v8 = *MEMORY[0x1E69E9840];
  resolution_sInterval = 0x3FF0000000000000;
  v5 = 8;
  v6 = 0;
  *v4 = 8;
  v0 = sysctlnametomib("kern.monotonicclock_rate_usecs", v7, v4);
  if (v0)
  {
    v1 = PLLogTimeManager(v0);
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      __35__PLTimeReferenceKernel_resolution__block_invoke_cold_1(v1);
    }

LABEL_7:

    goto LABEL_8;
  }

  v2 = sysctl(v7, v4[0], &v6, &v5, 0, 0);
  if (v2)
  {
    v1 = PLLogTimeManager(v2);
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      __35__PLTimeReferenceKernel_resolution__block_invoke_cold_2();
    }

    goto LABEL_7;
  }

LABEL_8:
  result = v6 / 1000000.0;
  *&resolution_sInterval = result;
  return result;
}

- (mach_timebase_info)getTimebaseInfo
{
  if (getTimebaseInfo_onceToken != -1)
  {
    [PLTimeReferenceKernel getTimebaseInfo];
  }

  return &getTimebaseInfo_machTimeInfo;
}

double __40__PLTimeReferenceKernel_getTimebaseInfo__block_invoke()
{
  if (mach_timebase_info(&getTimebaseInfo_machTimeInfo))
  {
    _os_assumes_log();
  }

  else if (dword_1ECA616AC)
  {
    return result;
  }

  *&result = 0x100000001;
  getTimebaseInfo_machTimeInfo = 0x100000001;
  return result;
}

- (void)initializeOffsetWithEntries:(char)a1 .cold.1(char a1, NSObject *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = a1 & 1;
  _os_log_debug_impl(&dword_1D8611000, a2, OS_LOG_TYPE_DEBUG, "monotonicTimeWentBackwards=%d", v2, 8u);
}

- (void)currentTime
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  selfCopy = self;
  v5 = 2112;
  v6 = a2;
  _os_log_debug_impl(&dword_1D8611000, log, OS_LOG_TYPE_DEBUG, "Recalibration: systemNow=%@, currentTime=%@", &v3, 0x16u);
}

void __35__PLTimeReferenceKernel_resolution__block_invoke_cold_2()
{
  __error();
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1_6(&dword_1D8611000, v1, v2, "PLTimeReferenceKernel::resolution: error occurred %d %s", v3, v4, v5, v6);
}

@end