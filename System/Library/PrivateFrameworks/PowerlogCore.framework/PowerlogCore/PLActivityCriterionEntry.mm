@interface PLActivityCriterionEntry
+ (id)audioOffCriterion;
+ (id)displayOffCriterion;
+ (id)pluggedInCriterion;
- (PLActivityCriterionEntry)initWithEntryKey:(id)key withFilter:(id)filter withCriterionBlock:(id)block;
- (void)didDisableActivity:(id)activity;
- (void)didEnableActivity:(id)activity;
- (void)scheduleEntryListener;
@end

@implementation PLActivityCriterionEntry

void __49__PLActivityCriterionEntry_scheduleEntryListener__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:@"entry"];
  if (v3)
  {
    if (+[PLDefaults debugEnabled])
    {
      v4 = objc_opt_class();
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __49__PLActivityCriterionEntry_scheduleEntryListener__block_invoke_2;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v4;
      if (PLSubmissionAnalyticsStateSuccess_block_invoke_defaultOnce_3 != -1)
      {
        dispatch_once(&PLSubmissionAnalyticsStateSuccess_block_invoke_defaultOnce_3, block);
      }

      if (PLSubmissionAnalyticsStateSuccess_block_invoke_classDebugEnabled_3 == 1)
      {
        v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PLActivityCriterionEntry::entryListenerBlock: entry=%@ for criterion=%@", v3, *(a1 + 32)];
        v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/Activity/PLActivityCriterionEntry.m"];
        v7 = [v6 lastPathComponent];
        v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLActivityCriterionEntry scheduleEntryListener]_block_invoke"];
        [PLCoreStorage logMessage:v5 fromFile:v7 fromFunction:v8 fromLineNumber:117];

        v10 = PLLogCommon(v9);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
        }
      }
    }

    v11 = [*(a1 + 32) criterionBlock];
    [*(a1 + 32) setSatisfied:{(v11)[2](v11, v3)}];
  }
}

uint64_t __45__PLActivityCriterionEntry_audioOffCriterion__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 objectForKeyedSubscript:*(*(*(a1 + 32) + 8) + 40)];
  v3 = [v2 BOOLValue];

  return v3 ^ 1u;
}

- (PLActivityCriterionEntry)initWithEntryKey:(id)key withFilter:(id)filter withCriterionBlock:(id)block
{
  keyCopy = key;
  filterCopy = filter;
  blockCopy = block;
  v12 = blockCopy;
  selfCopy = 0;
  if (keyCopy && blockCopy)
  {
    v19.receiver = self;
    v19.super_class = PLActivityCriterionEntry;
    v14 = [(PLActivityCriterion *)&v19 init];
    v15 = v14;
    if (v14)
    {
      objc_storeStrong(&v14->_entryKey, key);
      objc_storeStrong(&v15->_filter, filter);
      v16 = [v12 copy];
      criterionBlock = v15->_criterionBlock;
      v15->_criterionBlock = v16;
    }

    self = v15;
    selfCopy = self;
  }

  return selfCopy;
}

+ (id)pluggedInCriterion
{
  v13[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(objc_opt_class());
  v12 = @"ExternalConnected";
  v10 = &unk_1F5406078;
  null = [MEMORY[0x1E695DFB0] null];
  v11 = null;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v13[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __46__PLActivityCriterionEntry_pluggedInCriterion__block_invoke;
  v8[3] = &unk_1E851A758;
  v9 = @"ExternalConnected";
  v6 = [v2 initWithEntryKey:@"PLBatteryAgent_EventBackward_Battery" withFilter:v5 withCriterionBlock:v8];

  return v6;
}

uint64_t __46__PLActivityCriterionEntry_pluggedInCriterion__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 objectForKeyedSubscript:*(a1 + 32)];
  v3 = [v2 BOOLValue];

  return v3;
}

+ (id)displayOffCriterion
{
  v13[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(objc_opt_class());
  v12 = @"Active";
  v10 = &unk_1F5406078;
  null = [MEMORY[0x1E695DFB0] null];
  v11 = null;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v13[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __47__PLActivityCriterionEntry_displayOffCriterion__block_invoke;
  v8[3] = &unk_1E851A758;
  v9 = @"Active";
  v6 = [v2 initWithEntryKey:@"PLDisplayAgent_EventPoint_Display" withFilter:v5 withCriterionBlock:v8];

  return v6;
}

BOOL __47__PLActivityCriterionEntry_displayOffCriterion__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 objectForKeyedSubscript:*(a1 + 32)];
  v3 = [v2 integerValue] != 1;

  return v3;
}

+ (id)audioOffCriterion
{
  v18[1] = *MEMORY[0x1E69E9840];
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__13;
  v13 = __Block_byref_object_dispose__13;
  v14 = @"Active";
  v2 = objc_alloc(objc_opt_class());
  v17 = v10[5];
  v15 = &unk_1F5406078;
  null = [MEMORY[0x1E695DFB0] null];
  v16 = null;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  v18[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __45__PLActivityCriterionEntry_audioOffCriterion__block_invoke;
  v8[3] = &unk_1E851A780;
  v8[4] = &v9;
  v6 = [v2 initWithEntryKey:@"PLAudioAgent_EventForward_Routing" withFilter:v5 withCriterionBlock:v8];

  _Block_object_dispose(&v9, 8);

  return v6;
}

- (void)didEnableActivity:(id)activity
{
  activityCopy = activity;
  if (+[PLDefaults debugEnabled])
  {
    v5 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __46__PLActivityCriterionEntry_didEnableActivity___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v5;
    if (didEnableActivity__defaultOnce_0 != -1)
    {
      dispatch_once(&didEnableActivity__defaultOnce_0, block);
    }

    if (didEnableActivity__classDebugEnabled_0 == 1)
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PLActivityCriterionEntry::didEnableActivity:%@ for criterion=%@", activityCopy, self];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/Activity/PLActivityCriterionEntry.m"];
      lastPathComponent = [v7 lastPathComponent];
      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLActivityCriterionEntry didEnableActivity:]"];
      [PLCoreStorage logMessage:v6 fromFile:lastPathComponent fromFunction:v9 fromLineNumber:89];

      v11 = PLLogCommon(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  v25.receiver = self;
  v25.super_class = PLActivityCriterionEntry;
  [(PLActivityCriterion *)&v25 didEnableActivity:activityCopy];
  v12 = +[PowerlogCore sharedCore];
  storage = [v12 storage];
  entryKey = [(PLActivityCriterionEntry *)self entryKey];
  v15 = [storage lastEntryForKey:entryKey];

  if (+[PLDefaults debugEnabled])
  {
    v16 = objc_opt_class();
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __46__PLActivityCriterionEntry_didEnableActivity___block_invoke_38;
    v24[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v24[4] = v16;
    if (didEnableActivity__defaultOnce_36 != -1)
    {
      dispatch_once(&didEnableActivity__defaultOnce_36, v24);
    }

    if (didEnableActivity__classDebugEnabled_37 == 1)
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PLActivityCriterionEntry::didEnableActivity: entry=%@", v15];
      v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/Activity/PLActivityCriterionEntry.m"];
      lastPathComponent2 = [v18 lastPathComponent];
      v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLActivityCriterionEntry didEnableActivity:]"];
      [PLCoreStorage logMessage:v17 fromFile:lastPathComponent2 fromFunction:v20 fromLineNumber:93];

      v22 = PLLogCommon(v21);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  if (v15)
  {
    criterionBlock = [(PLActivityCriterionEntry *)self criterionBlock];
    [(PLActivityCriterion *)self setSatisfied:(criterionBlock)[2](criterionBlock, v15)];
  }

  [(PLActivityCriterionEntry *)self scheduleEntryListener];
}

BOOL __46__PLActivityCriterionEntry_didEnableActivity___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  didEnableActivity__classDebugEnabled_0 = result;
  return result;
}

BOOL __46__PLActivityCriterionEntry_didEnableActivity___block_invoke_38(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  didEnableActivity__classDebugEnabled_37 = result;
  return result;
}

- (void)didDisableActivity:(id)activity
{
  activityCopy = activity;
  if (+[PLDefaults debugEnabled])
  {
    v5 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __47__PLActivityCriterionEntry_didDisableActivity___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v5;
    if (didDisableActivity__defaultOnce_0 != -1)
    {
      dispatch_once(&didDisableActivity__defaultOnce_0, block);
    }

    if (didDisableActivity__classDebugEnabled_0 == 1)
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PLActivityCriterionEntry::didDisableActivity:%@ for criterion=%@", activityCopy, self];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/Activity/PLActivityCriterionEntry.m"];
      lastPathComponent = [v7 lastPathComponent];
      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLActivityCriterionEntry didDisableActivity:]"];
      [PLCoreStorage logMessage:v6 fromFile:lastPathComponent fromFunction:v9 fromLineNumber:105];

      v11 = PLLogCommon(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  v12.receiver = self;
  v12.super_class = PLActivityCriterionEntry;
  [(PLActivityCriterion *)&v12 didDisableActivity:activityCopy];
  [(PLActivityCriterionEntry *)self setEntryListener:0];
}

BOOL __47__PLActivityCriterionEntry_didDisableActivity___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  didDisableActivity__classDebugEnabled_0 = result;
  return result;
}

- (void)scheduleEntryListener
{
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __49__PLActivityCriterionEntry_scheduleEntryListener__block_invoke;
  v12[3] = &unk_1E8519090;
  v12[4] = self;
  v3 = MEMORY[0x1DA71B0D0](v12, a2);
  filter = [(PLActivityCriterionEntry *)self filter];

  v5 = [PLEntryNotificationOperatorComposition alloc];
  v6 = dispatch_get_global_queue(2, 0);
  entryKey = [(PLActivityCriterionEntry *)self entryKey];
  if (filter)
  {
    filter2 = [(PLActivityCriterionEntry *)self filter];
    v9 = [(PLEntryNotificationOperatorComposition *)v5 initWithWorkQueue:v6 forEntryKey:entryKey withFilter:filter2 withBlock:v3];
    entryListener = self->_entryListener;
    self->_entryListener = v9;
  }

  else
  {
    v11 = [(PLEntryNotificationOperatorComposition *)v5 initWithWorkQueue:v6 forEntryKey:entryKey withBlock:v3];
    filter2 = self->_entryListener;
    self->_entryListener = v11;
  }
}

BOOL __49__PLActivityCriterionEntry_scheduleEntryListener__block_invoke_2(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  PLSubmissionAnalyticsStateSuccess_block_invoke_classDebugEnabled_3 = result;
  return result;
}

@end