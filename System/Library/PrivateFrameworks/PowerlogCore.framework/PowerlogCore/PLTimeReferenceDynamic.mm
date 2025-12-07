@interface PLTimeReferenceDynamic
+ (double)nearestDistanceFromDate:(id)date toRegionWithStartDate:(id)startDate andEndDate:(id)endDate;
- (BOOL)shouldQueryCurrentTime;
- (PLTimeReferenceDynamic)initWithTimeManager:(id)manager entryDefinitionKey:(id)key timeReferenceType:(int64_t)type;
- (id)newOffsetEntryWithCurrentTime;
- (id)removeTimeOffsetFromReferenceTime:(id)time;
- (void)checkForTimeChangeWithCurrentTime:(id)time;
- (void)initializeOffsetHistoryWithEntries:(id)entries;
- (void)initializeOffsetWithEntries:(id)entries;
- (void)notifyTimeChange:(double)change;
- (void)registerForClockSetNotification;
- (void)registerForTimeChangedCallbackWithIdentifier:(id)identifier usingBlock:(id)block;
- (void)registerForTimeChangedNotification;
- (void)setOffset:(double)offset;
- (void)unregisterForTimeChangedCallbackWithIdentifier:(id)identifier;
@end

@implementation PLTimeReferenceDynamic

- (BOOL)shouldQueryCurrentTime
{
  lastQueryTime = [(PLTimeReferenceDynamic *)self lastQueryTime];
  [lastQueryTime timeIntervalSinceMonitonicNow];
  v4 = fabs(v3) > 600.0;

  return v4;
}

- (PLTimeReferenceDynamic)initWithTimeManager:(id)manager entryDefinitionKey:(id)key timeReferenceType:(int64_t)type
{
  v13.receiver = self;
  v13.super_class = PLTimeReferenceDynamic;
  v5 = [(PLTimeReference *)&v13 initWithTimeManager:manager entryDefinitionKey:key timeReferenceType:type];
  if (v5)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    timeChangeBlocks = v5->_timeChangeBlocks;
    v5->_timeChangeBlocks = dictionary;

    v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:3];
    offsetHistory = v5->_offsetHistory;
    v5->_offsetHistory = v8;

    v5->_offsetHistoryHead = 0;
    v5->_tooFarInFutureDistance = 2147483650.0;
    v5->_tooFarInPastDistance = 2147483650.0;
    distantPast = [MEMORY[0x1E695DF00] distantPast];
    lastQueryTime = v5->_lastQueryTime;
    v5->_lastQueryTime = distantPast;
  }

  return v5;
}

- (void)initializeOffsetWithEntries:(id)entries
{
  v14.receiver = self;
  v14.super_class = PLTimeReferenceDynamic;
  entriesCopy = entries;
  [(PLTimeReference *)&v14 initializeOffsetWithEntries:entriesCopy];
  [(PLTimeReferenceDynamic *)self initializeOffsetHistoryWithEntries:entriesCopy];

  if (!+[PLUtilities isPowerlogHelperd](PLUtilities, "isPowerlogHelperd") && !+[PLUtilities isPerfPowerMetricd])
  {
    v5 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __54__PLTimeReferenceDynamic_initializeOffsetWithEntries___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v5;
    if (initializeOffsetWithEntries__defaultOnce != -1)
    {
      dispatch_once(&initializeOffsetWithEntries__defaultOnce, block);
    }

    if (initializeOffsetWithEntries__classDebugEnabled)
    {
      v6 = 10.0;
    }

    else
    {
      v6 = 1800.0;
    }

    if (initializeOffsetWithEntries__classDebugEnabled)
    {
      v7 = 10.0;
    }

    else
    {
      v7 = 60.0;
    }

    v8 = [PLTimer alloc];
    v9 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:v7];
    v10 = [PLUtilities workQueueForClass:objc_opt_class()];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __54__PLTimeReferenceDynamic_initializeOffsetWithEntries___block_invoke_2;
    v12[3] = &unk_1E8519A18;
    v12[4] = self;
    v11 = [(PLTimer *)v8 initWithFireDate:v9 withInterval:1 withTolerance:0 repeats:v10 withUserInfo:v12 withQueue:v6 withBlock:0.0];
    [(PLTimeReferenceDynamic *)self setPeriodicCurrentTime:v11];
  }
}

BOOL __54__PLTimeReferenceDynamic_initializeOffsetWithEntries___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  initializeOffsetWithEntries__classDebugEnabled = result;
  return result;
}

id __54__PLTimeReferenceDynamic_initializeOffsetWithEntries___block_invoke_2(uint64_t a1)
{
  if (+[PLDefaults debugEnabled])
  {
    v2 = objc_opt_class();
    block = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __54__PLTimeReferenceDynamic_initializeOffsetWithEntries___block_invoke_3;
    v15 = &__block_descriptor_40_e5_v8__0lu32l8;
    v16 = v2;
    if (PLSubmissionAnalyticsStateSuccess_block_invoke_defaultOnce_6 != -1)
    {
      dispatch_once(&PLSubmissionAnalyticsStateSuccess_block_invoke_defaultOnce_6, &block);
    }

    if (PLSubmissionAnalyticsStateSuccess_block_invoke_classDebugEnabled_6 == 1)
    {
      v3 = MEMORY[0x1E696AEC0];
      v4 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*(a1 + 32), "timeReferenceType")}];
      v5 = [v3 stringWithFormat:@"PLTimeReferenceDynamic::periodicCurrentTime: timeReferenceType=%@", v4, block, v13, v14, v15, v16];

      v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLTimeReferenceClasses/PLTimeReferenceDynamic.m"];
      v7 = [v6 lastPathComponent];
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLTimeReferenceDynamic initializeOffsetWithEntries:]_block_invoke_2"];
      [PLCoreStorage logMessage:v5 fromFile:v7 fromFunction:v8 fromLineNumber:71];

      v10 = PLLogCommon(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  return [*(a1 + 32) currentTime];
}

BOOL __54__PLTimeReferenceDynamic_initializeOffsetWithEntries___block_invoke_3(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  PLSubmissionAnalyticsStateSuccess_block_invoke_classDebugEnabled_6 = result;
  return result;
}

- (void)initializeOffsetHistoryWithEntries:(id)entries
{
  v40[3] = *MEMORY[0x1E69E9840];
  entriesCopy = entries;
  v31 = entriesCopy;
  if (entriesCopy && (v4 = entriesCopy, [entriesCopy count]))
  {
    v5 = [v4 count];
    if (v5 < 1)
    {
      v6 = 0;
      v32 = 0;
      v23 = 0;
    }

    else
    {
      v35 = 0;
      v32 = 0;
      v6 = 0;
      v7 = v5 & 0x7FFFFFFF;
      v8 = 3.40282347e38;
      do
      {
        v9 = [v4 objectAtIndexedSubscript:v7 - 1];
        entryDefinitionKey = [(PLTimeReference *)self entryDefinitionKey];
        v11 = [v9 objectForKeyedSubscript:entryDefinitionKey];
        [v11 doubleValue];
        v13 = v12;

        if (vabdd_f64(v13, v8) > 1.0)
        {
          entryDate = [v9 entryDate];

          if (v32)
          {
            [v32 dateByAddingTimeInterval:v13];
          }

          else
          {
            [MEMORY[0x1E695DF00] distantFuture];
          }
          v15 = ;
          obj = [(PLTimeReferenceDynamic *)self offsetHistory];
          objc_sync_enter(obj);
          offsetHistory = [(PLTimeReferenceDynamic *)self offsetHistory];
          v37[0] = @"offset";
          v17 = [MEMORY[0x1E696AD98] numberWithDouble:v13];
          v38[0] = v17;
          v37[1] = @"startReferenceTime";
          v18 = [entryDate dateByAddingTimeInterval:v13];
          v37[2] = @"endReferenceTime";
          v38[1] = v18;
          v38[2] = v15;
          v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:3];
          v20 = [v19 mutableCopy];
          [offsetHistory insertObject:v20 atIndex:0];

          objc_sync_exit(obj);
          entryDate2 = [v9 entryDate];

          ++v35;
          v8 = v13;
          v6 = entryDate;
          v32 = entryDate2;
        }

        v4 = v31;
        if (v35 > 2)
        {
          break;
        }
      }

      while (v7-- > 1);
      if (v35 >= 3)
      {
        v23 = 0;
      }

      else
      {
        v23 = v35;
      }
    }

    [(PLTimeReferenceDynamic *)self setOffsetHistoryHead:v23];
  }

  else
  {
    monotonicDate = [MEMORY[0x1E695DF00] monotonicDate];
    [(PLTimeReference *)self offset];
    v6 = [monotonicDate dateByAddingTimeInterval:?];

    if (v6)
    {
      obja = [(PLTimeReferenceDynamic *)self offsetHistory];
      objc_sync_enter(obja);
      offsetHistory2 = [(PLTimeReferenceDynamic *)self offsetHistory];
      v39[0] = @"offset";
      v26 = MEMORY[0x1E696AD98];
      [(PLTimeReference *)self offset];
      v27 = [v26 numberWithDouble:?];
      v40[0] = v27;
      v40[1] = v6;
      v39[1] = @"startReferenceTime";
      v39[2] = @"endReferenceTime";
      distantFuture = [MEMORY[0x1E695DF00] distantFuture];
      v40[2] = distantFuture;
      v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v39 count:3];
      v30 = [v29 mutableCopy];
      [offsetHistory2 addObject:v30];

      objc_sync_exit(obja);
      [(PLTimeReferenceDynamic *)self setOffsetHistoryHead:1];
    }
  }
}

- (void)registerForTimeChangedNotification
{
  if (+[PLDefaults debugEnabled])
  {
    v2 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __60__PLTimeReferenceDynamic_registerForTimeChangedNotification__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v2;
    if (registerForTimeChangedNotification_defaultOnce != -1)
    {
      dispatch_once(&registerForTimeChangedNotification_defaultOnce, block);
    }

    if (registerForTimeChangedNotification_classDebugEnabled == 1)
    {
      v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PLTimeReferenceDynamic::registerForTimeChangedNotification WARNING: inherited class must implement"];
      v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLTimeReferenceClasses/PLTimeReferenceDynamic.m"];
      lastPathComponent = [v4 lastPathComponent];
      v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLTimeReferenceDynamic registerForTimeChangedNotification]"];
      [PLCoreStorage logMessage:v3 fromFile:lastPathComponent fromFunction:v6 fromLineNumber:132];

      v8 = PLLogCommon(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }
}

BOOL __60__PLTimeReferenceDynamic_registerForTimeChangedNotification__block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  registerForTimeChangedNotification_classDebugEnabled = result;
  return result;
}

- (void)registerForClockSetNotification
{
  if (+[PLDefaults debugEnabled])
  {
    v2 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __57__PLTimeReferenceDynamic_registerForClockSetNotification__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v2;
    if (registerForClockSetNotification_defaultOnce != -1)
    {
      dispatch_once(&registerForClockSetNotification_defaultOnce, block);
    }

    if (registerForClockSetNotification_classDebugEnabled == 1)
    {
      v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PLTimeReferenceDynamic::registerForClockSetNotification WARNING: inherited class must implement"];
      v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLTimeReferenceClasses/PLTimeReferenceDynamic.m"];
      lastPathComponent = [v4 lastPathComponent];
      v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLTimeReferenceDynamic registerForClockSetNotification]"];
      [PLCoreStorage logMessage:v3 fromFile:lastPathComponent fromFunction:v6 fromLineNumber:137];

      v8 = PLLogCommon(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }
}

BOOL __57__PLTimeReferenceDynamic_registerForClockSetNotification__block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  registerForClockSetNotification_classDebugEnabled = result;
  return result;
}

- (void)checkForTimeChangeWithCurrentTime:(id)time
{
  timeCopy = time;
  monotonicDate = [MEMORY[0x1E695DF00] monotonicDate];
  [(PLTimeReference *)self offset];
  v6 = [monotonicDate dateByAddingTimeInterval:?];

  if (v6)
  {
    if (+[PLDefaults debugEnabled])
    {
      v7 = objc_opt_class();
      block = MEMORY[0x1E69E9820];
      v20 = 3221225472;
      v21 = __60__PLTimeReferenceDynamic_checkForTimeChangeWithCurrentTime___block_invoke;
      v22 = &__block_descriptor_40_e5_v8__0lu32l8;
      v23 = v7;
      if (checkForTimeChangeWithCurrentTime__defaultOnce != -1)
      {
        dispatch_once(&checkForTimeChangeWithCurrentTime__defaultOnce, &block);
      }

      if (checkForTimeChangeWithCurrentTime__classDebugEnabled == 1)
      {
        v8 = MEMORY[0x1E696AEC0];
        v9 = [MEMORY[0x1E696AD98] numberWithInteger:{-[PLTimeReference timeReferenceType](self, "timeReferenceType")}];
        v10 = [v8 stringWithFormat:@"PLTimeReferenceDynamic::checkForTimeChangeWithCurrentTime: timeReferenceType=%@, prevTimeInReference=%@, currentTimeInReference=%@", v9, v6, timeCopy, block, v20, v21, v22, v23];

        v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLTimeReferenceClasses/PLTimeReferenceDynamic.m"];
        lastPathComponent = [v11 lastPathComponent];
        v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLTimeReferenceDynamic checkForTimeChangeWithCurrentTime:]"];
        [PLCoreStorage logMessage:v10 fromFile:lastPathComponent fromFunction:v13 fromLineNumber:147];

        v15 = PLLogCommon(v14);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
        }
      }
    }

    [(PLTimeReference *)self offset];
    v17 = v16;
    [timeCopy timeIntervalSinceDate:v6];
    [(PLTimeReferenceDynamic *)self setOffset:v17 + v18];
  }
}

BOOL __60__PLTimeReferenceDynamic_checkForTimeChangeWithCurrentTime___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  checkForTimeChangeWithCurrentTime__classDebugEnabled = result;
  return result;
}

- (id)newOffsetEntryWithCurrentTime
{
  v12[3] = *MEMORY[0x1E69E9840];
  monotonicDate = [MEMORY[0x1E695DF00] monotonicDate];
  [(PLTimeReference *)self offset];
  v4 = [monotonicDate dateByAddingTimeInterval:?];

  if (v4)
  {
    v11[0] = @"offset";
    v5 = MEMORY[0x1E696AD98];
    [(PLTimeReference *)self offset];
    v6 = [v5 numberWithDouble:?];
    v12[0] = v6;
    v12[1] = v4;
    v11[1] = @"startReferenceTime";
    v11[2] = @"endReferenceTime";
    distantFuture = [MEMORY[0x1E695DF00] distantFuture];
    v12[2] = distantFuture;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];
    v9 = [v8 mutableCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)setOffset:(double)offset
{
  v5 = [PLUtilities workQueueForKey:@"PLTimeReferenceDynamic::setOffset"];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __36__PLTimeReferenceDynamic_setOffset___block_invoke;
  v6[3] = &unk_1E85195E0;
  v6[4] = self;
  *&v6[5] = offset;
  dispatch_sync(v5, v6);
}

void __36__PLTimeReferenceDynamic_setOffset___block_invoke(uint64_t a1)
{
  [*(a1 + 32) offset];
  if (v2 != 3.40282347e38)
  {
    v3 = *(a1 + 40);
    [*(a1 + 32) offset];
    v5 = v3 - v4;
    if (+[PLDefaults debugEnabled])
    {
      v6 = objc_opt_class();
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __36__PLTimeReferenceDynamic_setOffset___block_invoke_2;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v6;
      if (PLSubmissionAnalyticsStateSuccess_block_invoke_2_defaultOnce_0 != -1)
      {
        dispatch_once(&PLSubmissionAnalyticsStateSuccess_block_invoke_2_defaultOnce_0, block);
      }

      if (PLSubmissionAnalyticsStateSuccess_block_invoke_2_classDebugEnabled_0 == 1)
      {
        v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PLTimeReferenceDynamic::setOffset: delta=%f", *&v5];
        v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLTimeReferenceClasses/PLTimeReferenceDynamic.m"];
        v9 = [v8 lastPathComponent];
        v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLTimeReferenceDynamic setOffset:]_block_invoke"];
        [PLCoreStorage logMessage:v7 fromFile:v9 fromFunction:v10 fromLineNumber:176];

        v12 = PLLogCommon(v11);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
        }
      }
    }

    if (fabs(v5) >= 1.0)
    {
      if (+[PLDefaults debugEnabled])
      {
        v13 = objc_opt_class();
        v43[0] = MEMORY[0x1E69E9820];
        v43[1] = 3221225472;
        v43[2] = __36__PLTimeReferenceDynamic_setOffset___block_invoke_50;
        v43[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v43[4] = v13;
        if (PLSubmissionAnalyticsStateSuccess_block_invoke_2_defaultOnce_48 != -1)
        {
          dispatch_once(&PLSubmissionAnalyticsStateSuccess_block_invoke_2_defaultOnce_48, v43);
        }

        if (PLSubmissionAnalyticsStateSuccess_block_invoke_2_classDebugEnabled_49 == 1)
        {
          v14 = MEMORY[0x1E696AEC0];
          v15 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*(a1 + 32), "timeReferenceType")}];
          [*(a1 + 32) offset];
          v17 = [v14 stringWithFormat:@"PLTimeReferenceDynamic::setOffset: timeReferenceType=%@, oldOffset=%f, newOffset=%f", v15, v16, *(a1 + 40)];

          v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLTimeReferenceClasses/PLTimeReferenceDynamic.m"];
          v19 = [v18 lastPathComponent];
          v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLTimeReferenceDynamic setOffset:]_block_invoke_2"];
          [PLCoreStorage logMessage:v17 fromFile:v19 fromFunction:v20 fromLineNumber:180];

          v22 = PLLogCommon(v21);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
          {
            [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
          }
        }
      }

      v23 = [*(a1 + 32) offsetHistory];
      objc_sync_enter(v23);
      v24 = [*(a1 + 32) offsetHistory];
      v25 = [v24 count];

      if (v25)
      {
        v26 = [MEMORY[0x1E695DF00] monotonicDate];
        [*(a1 + 32) offset];
        v27 = [v26 dateByAddingTimeInterval:?];

        if (v27)
        {
          v28 = [*(a1 + 32) offsetHistoryHead];
          v29 = [*(a1 + 32) offsetHistory];
          v30 = (v28 - 1) % [v29 count];

          if ((v30 & 0x80000000) != 0)
          {
            v31 = [*(a1 + 32) offsetHistory];
            LODWORD(v30) = [v31 count] + v30;
          }

          v32 = [*(a1 + 32) offsetHistory];
          v33 = [v32 objectAtIndexedSubscript:v30];

          [v33 setObject:v27 forKeyedSubscript:@"endReferenceTime"];
        }
      }

      objc_sync_exit(v23);

      v34 = *(a1 + 40);
      v42.receiver = *(a1 + 32);
      v42.super_class = PLTimeReferenceDynamic;
      objc_msgSendSuper2(&v42, sel_setOffset_, v34);
      v35 = [*(a1 + 32) offsetHistory];
      objc_sync_enter(v35);
      v36 = [*(a1 + 32) newOffsetEntryWithCurrentTime];
      if (v36)
      {
        v37 = [*(a1 + 32) offsetHistory];
        v38 = [v37 count];

        v39 = [*(a1 + 32) offsetHistory];
        if (v38 == 3)
        {
          [v39 setObject:v36 atIndexedSubscript:{objc_msgSend(*(a1 + 32), "offsetHistoryHead")}];
        }

        else
        {
          [v39 addObject:v36];
        }

        v40 = [*(a1 + 32) offsetHistoryHead];
        v41 = [*(a1 + 32) offsetHistory];
        [*(a1 + 32) setOffsetHistoryHead:{((v40 + 1) % objc_msgSend(v41, "count"))}];
      }

      objc_sync_exit(v35);
      [*(a1 + 32) notifyTimeChange:v5];
    }
  }
}

BOOL __36__PLTimeReferenceDynamic_setOffset___block_invoke_2(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  PLSubmissionAnalyticsStateSuccess_block_invoke_2_classDebugEnabled_0 = result;
  return result;
}

BOOL __36__PLTimeReferenceDynamic_setOffset___block_invoke_50(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  PLSubmissionAnalyticsStateSuccess_block_invoke_2_classDebugEnabled_49 = result;
  return result;
}

- (id)removeTimeOffsetFromReferenceTime:(id)time
{
  timeCopy = time;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__18;
  v16 = __Block_byref_object_dispose__18;
  date = [MEMORY[0x1E695DF00] date];
  v5 = [PLUtilities workQueueForKey:@"PLTimeReferenceDynamic::removeTimeOffsetFromReferenceTime"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__PLTimeReferenceDynamic_removeTimeOffsetFromReferenceTime___block_invoke;
  block[3] = &unk_1E8519128;
  block[4] = self;
  v10 = timeCopy;
  v11 = &v12;
  v6 = timeCopy;
  dispatch_sync(v5, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __60__PLTimeReferenceDynamic_removeTimeOffsetFromReferenceTime___block_invoke(uint64_t a1)
{
  [*(a1 + 32) offset];
  v2 = 3.40282347e38;
  if (v3 != 3.40282347e38)
  {
    obj = [*(a1 + 32) offsetHistory];
    objc_sync_enter(obj);
    v4 = 0;
    v5 = 0.0;
    for (i = -1; ; --i)
    {
      v7 = [*(a1 + 32) offsetHistory];
      v8 = [v7 count];

      if (v8 <= v4)
      {
        break;
      }

      v9 = [*(a1 + 32) offsetHistoryHead];
      v10 = [*(a1 + 32) offsetHistory];
      v11 = (i + v9) % [v10 count];

      if ((v11 & 0x80000000) != 0)
      {
        v12 = [*(a1 + 32) offsetHistory];
        LODWORD(v11) = [v12 count] + v11;
      }

      v13 = [*(a1 + 32) offsetHistory];
      v14 = [v13 objectAtIndexedSubscript:v11];

      v15 = [v14 objectForKeyedSubscript:@"startReferenceTime"];
      v16 = [v14 objectForKeyedSubscript:@"endReferenceTime"];
      [objc_opt_class() nearestDistanceFromDate:*(a1 + 40) toRegionWithStartDate:v15 andEndDate:v16];
      v18 = fabs(v17);
      if (v18 < v2)
      {
        v19 = [v14 objectForKeyedSubscript:@"offset"];
        [v19 doubleValue];
        v5 = v20;

        if (v18 < 1.0)
        {

          break;
        }

        v2 = v18;
      }

      ++v4;
    }

    objc_sync_exit(obj);

    v21 = [*(a1 + 40) dateByAddingTimeInterval:-v5];
    v22 = *(*(a1 + 48) + 8);
    v23 = *(v22 + 40);
    *(v22 + 40) = v21;

    v24 = *(*(*(a1 + 48) + 8) + 40);
    [*(a1 + 32) tooFarInFutureDistance];
    if (([v24 isInMonotonicFutureWithDistance:?] & 1) != 0 || (v25 = *(*(*(a1 + 48) + 8) + 40), objc_msgSend(*(a1 + 32), "tooFarInPastDistance"), objc_msgSend(v25, "isInMonotonicPastWithDistance:")))
    {
      if ([*(a1 + 32) shouldQueryCurrentTime])
      {
        v26 = [*(a1 + 32) currentTime];
      }

      v27 = *(a1 + 40);
      [*(a1 + 32) offset];
      v29 = [v27 dateByAddingTimeInterval:-v28];
      v30 = *(*(a1 + 48) + 8);
      v31 = *(v30 + 40);
      *(v30 + 40) = v29;

      v32 = *(*(*(a1 + 48) + 8) + 40);
      [*(a1 + 32) tooFarInFutureDistance];
      if (([v32 isInMonotonicFutureWithDistance:?] & 1) != 0 || (v33 = *(*(*(a1 + 48) + 8) + 40), objc_msgSend(*(a1 + 32), "tooFarInPastDistance"), objc_msgSend(v33, "isInMonotonicPastWithDistance:")))
      {
        if (+[PLPlatform internalBuild])
        {
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __60__PLTimeReferenceDynamic_removeTimeOffsetFromReferenceTime___block_invoke_2;
          block[3] = &unk_1E85199A8;
          v47 = @"PLTimeReferenceDynamic_TimeCorrection_Debug";
          v48 = 0;
          if (PLSubmissionAnalyticsStateSuccess_block_invoke_3_defaultOnce != -1)
          {
            dispatch_once(&PLSubmissionAnalyticsStateSuccess_block_invoke_3_defaultOnce, block);
          }

          v34 = PLSubmissionAnalyticsStateSuccess_block_invoke_3_objectForKey;

          if (v34 == 1)
          {
            v35 = [(PLOperator *)PLStorageOperator entryKeyForType:@"EventPoint" andName:@"TimeCorrection"];
            v36 = [[PLEntry alloc] initWithEntryKey:v35];
            v37 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*(a1 + 32), "timeReferenceType")}];
            [(PLEntry *)v36 setObject:v37 forKeyedSubscript:@"TimeReferenceType"];

            [(PLEntry *)v36 setObject:*(a1 + 40) forKeyedSubscript:@"TimeInReference"];
            [(PLEntry *)v36 setObject:*(*(*(a1 + 48) + 8) + 40) forKeyedSubscript:@"ProjectedTimeInMonotonic"];
            v38 = [MEMORY[0x1E696AF00] callStackSymbols];
            v39 = [v38 componentsJoinedByString:{@", "}];
            [(PLEntry *)v36 setObject:v39 forKeyedSubscript:@"CallStack"];

            v40 = +[PowerlogCore sharedCore];
            v41 = [v40 storage];
            [v41 writeEntry:v36 withCompletionBlock:&__block_literal_global_45];
          }
        }

        v42 = [MEMORY[0x1E695DF00] monotonicDate];
        v43 = *(*(a1 + 48) + 8);
        v44 = *(v43 + 40);
        *(v43 + 40) = v42;
      }
    }
  }
}

BOOL __60__PLTimeReferenceDynamic_removeTimeOffsetFromReferenceTime___block_invoke_2(uint64_t a1)
{
  result = [PLDefaults BOOLForKey:*(a1 + 32) ifNotSet:*(a1 + 40)];
  PLSubmissionAnalyticsStateSuccess_block_invoke_3_objectForKey = result;
  return result;
}

+ (double)nearestDistanceFromDate:(id)date toRegionWithStartDate:(id)startDate andEndDate:(id)endDate
{
  endDateCopy = endDate;
  startDateCopy = startDate;
  dateCopy = date;
  [dateCopy timeIntervalSinceDate:startDateCopy];
  v11 = v10;
  [endDateCopy timeIntervalSinceDate:dateCopy];
  v13 = v12;

  [endDateCopy timeIntervalSinceDate:startDateCopy];
  v15 = v14;

  result = -1.0;
  if (v15 >= 0.0)
  {
    if (v11 <= 0.0 || (result = 0.0, v13 <= 0.0))
    {
      result = fabs(v11);
      v17 = fabs(v13);
      if (result >= v17)
      {
        return v17;
      }
    }
  }

  return result;
}

- (void)registerForTimeChangedCallbackWithIdentifier:(id)identifier usingBlock:(id)block
{
  identifierCopy = identifier;
  blockCopy = block;
  v8 = blockCopy;
  if (identifierCopy && blockCopy)
  {
    timeChangeBlocks = [(PLTimeReferenceDynamic *)self timeChangeBlocks];
    objc_sync_enter(timeChangeBlocks);
    if (+[PLDefaults debugEnabled])
    {
      v10 = objc_opt_class();
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __82__PLTimeReferenceDynamic_registerForTimeChangedCallbackWithIdentifier_usingBlock___block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v10;
      if (registerForTimeChangedCallbackWithIdentifier_usingBlock__defaultOnce != -1)
      {
        dispatch_once(&registerForTimeChangedCallbackWithIdentifier_usingBlock__defaultOnce, block);
      }

      if (registerForTimeChangedCallbackWithIdentifier_usingBlock__classDebugEnabled == 1)
      {
        identifierCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"identifier=%@", identifierCopy];
        v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLTimeReferenceClasses/PLTimeReferenceDynamic.m"];
        lastPathComponent = [v12 lastPathComponent];
        v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLTimeReferenceDynamic registerForTimeChangedCallbackWithIdentifier:usingBlock:]"];
        [PLCoreStorage logMessage:identifierCopy fromFile:lastPathComponent fromFunction:v14 fromLineNumber:322];

        v16 = PLLogCommon(v15);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
        }
      }
    }

    v17 = MEMORY[0x1DA71B0D0](v8);
    timeChangeBlocks2 = [(PLTimeReferenceDynamic *)self timeChangeBlocks];
    [timeChangeBlocks2 setObject:v17 forKeyedSubscript:identifierCopy];

    if (+[PLDefaults debugEnabled])
    {
      v19 = objc_opt_class();
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __82__PLTimeReferenceDynamic_registerForTimeChangedCallbackWithIdentifier_usingBlock___block_invoke_76;
      v28[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v28[4] = v19;
      if (registerForTimeChangedCallbackWithIdentifier_usingBlock__defaultOnce_74 != -1)
      {
        dispatch_once(&registerForTimeChangedCallbackWithIdentifier_usingBlock__defaultOnce_74, v28);
      }

      if (registerForTimeChangedCallbackWithIdentifier_usingBlock__classDebugEnabled_75 == 1)
      {
        v20 = MEMORY[0x1E696AEC0];
        timeChangeBlocks3 = [(PLTimeReferenceDynamic *)self timeChangeBlocks];
        v22 = [v20 stringWithFormat:@"self.timeChangeBlocks=%@", timeChangeBlocks3];

        v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLTimeReferenceClasses/PLTimeReferenceDynamic.m"];
        lastPathComponent2 = [v23 lastPathComponent];
        v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLTimeReferenceDynamic registerForTimeChangedCallbackWithIdentifier:usingBlock:]"];
        [PLCoreStorage logMessage:v22 fromFile:lastPathComponent2 fromFunction:v25 fromLineNumber:324];

        v27 = PLLogCommon(v26);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
        }
      }
    }

    objc_sync_exit(timeChangeBlocks);
  }
}

BOOL __82__PLTimeReferenceDynamic_registerForTimeChangedCallbackWithIdentifier_usingBlock___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  registerForTimeChangedCallbackWithIdentifier_usingBlock__classDebugEnabled = result;
  return result;
}

BOOL __82__PLTimeReferenceDynamic_registerForTimeChangedCallbackWithIdentifier_usingBlock___block_invoke_76(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  registerForTimeChangedCallbackWithIdentifier_usingBlock__classDebugEnabled_75 = result;
  return result;
}

- (void)unregisterForTimeChangedCallbackWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    timeChangeBlocks = [(PLTimeReferenceDynamic *)self timeChangeBlocks];
    objc_sync_enter(timeChangeBlocks);
    if (+[PLDefaults debugEnabled])
    {
      v6 = objc_opt_class();
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __73__PLTimeReferenceDynamic_unregisterForTimeChangedCallbackWithIdentifier___block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v6;
      if (unregisterForTimeChangedCallbackWithIdentifier__defaultOnce != -1)
      {
        dispatch_once(&unregisterForTimeChangedCallbackWithIdentifier__defaultOnce, block);
      }

      if (unregisterForTimeChangedCallbackWithIdentifier__classDebugEnabled == 1)
      {
        identifierCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"identifier=%@", identifierCopy];
        v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLTimeReferenceClasses/PLTimeReferenceDynamic.m"];
        lastPathComponent = [v8 lastPathComponent];
        v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLTimeReferenceDynamic unregisterForTimeChangedCallbackWithIdentifier:]"];
        [PLCoreStorage logMessage:identifierCopy fromFile:lastPathComponent fromFunction:v10 fromLineNumber:331];

        v12 = PLLogCommon(v11);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
        }
      }
    }

    timeChangeBlocks2 = [(PLTimeReferenceDynamic *)self timeChangeBlocks];
    [timeChangeBlocks2 removeObjectForKey:identifierCopy];

    if (+[PLDefaults debugEnabled])
    {
      v14 = objc_opt_class();
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __73__PLTimeReferenceDynamic_unregisterForTimeChangedCallbackWithIdentifier___block_invoke_82;
      v23[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v23[4] = v14;
      if (unregisterForTimeChangedCallbackWithIdentifier__defaultOnce_80 != -1)
      {
        dispatch_once(&unregisterForTimeChangedCallbackWithIdentifier__defaultOnce_80, v23);
      }

      if (unregisterForTimeChangedCallbackWithIdentifier__classDebugEnabled_81 == 1)
      {
        v15 = MEMORY[0x1E696AEC0];
        timeChangeBlocks3 = [(PLTimeReferenceDynamic *)self timeChangeBlocks];
        v17 = [v15 stringWithFormat:@"self.timeChangeBlocks=%@", timeChangeBlocks3];

        v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLTimeReferenceClasses/PLTimeReferenceDynamic.m"];
        lastPathComponent2 = [v18 lastPathComponent];
        v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLTimeReferenceDynamic unregisterForTimeChangedCallbackWithIdentifier:]"];
        [PLCoreStorage logMessage:v17 fromFile:lastPathComponent2 fromFunction:v20 fromLineNumber:333];

        v22 = PLLogCommon(v21);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
        }
      }
    }

    objc_sync_exit(timeChangeBlocks);
  }
}

BOOL __73__PLTimeReferenceDynamic_unregisterForTimeChangedCallbackWithIdentifier___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  unregisterForTimeChangedCallbackWithIdentifier__classDebugEnabled = result;
  return result;
}

BOOL __73__PLTimeReferenceDynamic_unregisterForTimeChangedCallbackWithIdentifier___block_invoke_82(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  unregisterForTimeChangedCallbackWithIdentifier__classDebugEnabled_81 = result;
  return result;
}

- (void)notifyTimeChange:(double)change
{
  v18 = *MEMORY[0x1E69E9840];
  if (change != 0.0)
  {
    timeChangeBlocks = [(PLTimeReferenceDynamic *)self timeChangeBlocks];
    objc_sync_enter(timeChangeBlocks);
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    timeChangeBlocks2 = [(PLTimeReferenceDynamic *)self timeChangeBlocks];
    allValues = [timeChangeBlocks2 allValues];

    v8 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = *v14;
      do
      {
        v10 = 0;
        do
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(allValues);
          }

          v11 = *(*(&v13 + 1) + 8 * v10);
          v12 = objc_autoreleasePoolPush();
          (*(v11 + 16))(v11, change);
          objc_autoreleasePoolPop(v12);
          ++v10;
        }

        while (v8 != v10);
        v8 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }

    objc_sync_exit(timeChangeBlocks);
  }
}

@end