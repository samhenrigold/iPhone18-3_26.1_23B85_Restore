@interface PLTestService
+ (void)load;
- (PLTestService)init;
- (id)presubmissionTest_testEPLMode:(id)mode withParam:(id)param;
- (void)initOperatorDependancies;
@end

@implementation PLTestService

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___PLTestService;
  objc_msgSendSuper2(&v2, sel_load);
}

- (PLTestService)init
{
  v17 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] isHomePod])
  {
    selfCopy = 0;
  }

  else
  {
    v14.receiver = self;
    v14.super_class = PLTestService;
    v4 = [(PLOperator *)&v14 init];
    if (v4 && [MEMORY[0x277D3F180] debugEnabled])
    {
      v5 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __21__PLTestService_init__block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v5;
      if (qword_2811F7DE8 != -1)
      {
        dispatch_once(&qword_2811F7DE8, block);
      }

      if (_MergedGlobals_105 == 1)
      {
        v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"PLTestService initialized"];
        v7 = MEMORY[0x277D3F178];
        v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLTestService.m"];
        lastPathComponent = [v8 lastPathComponent];
        v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLTestService init]"];
        [v7 logMessage:v6 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:32];

        v11 = PLLogCommon();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v16 = v6;
          _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    self = v4;
    selfCopy = self;
  }

  return selfCopy;
}

void *__21__PLTestService_init__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  _MergedGlobals_105 = result;
  return result;
}

- (void)initOperatorDependancies
{
  v3 = objc_alloc(MEMORY[0x277D3F278]);
  v4 = dispatch_get_global_queue(-32768, 0);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __41__PLTestService_initOperatorDependancies__block_invoke;
  v6[3] = &unk_278259810;
  v6[4] = self;
  v5 = [v3 initWithWorkQueue:v4 withRegistration:&unk_282C18B70 withBlock:v6];
  [(PLTestService *)self setPresubmissionTestResponder:v5];
}

id __41__PLTestService_initOperatorDependancies__block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v47 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (!v10 || ([v10 objectForKeyedSubscript:@"testName"], v12 = objc_claimAutoreleasedReturnValue(), v12, !v12))
  {
    v28 = 0;
    goto LABEL_27;
  }

  v13 = [v11 objectForKeyedSubscript:@"testName"];
  v14 = objc_opt_new();
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v15 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __41__PLTestService_initOperatorDependancies__block_invoke_2;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v15;
    if (qword_2811F7DF0 != -1)
    {
      dispatch_once(&qword_2811F7DF0, block);
    }

    if (byte_2811F7DE1 == 1)
    {
      v41 = v14;
      v16 = MEMORY[0x277CCACA8];
      v17 = [v11 objectForKeyedSubscript:@"testParam"];
      v18 = [v16 stringWithFormat:@"presubmissionTestResponder testName=%@ testParam=%@", v13, v17];

      v19 = MEMORY[0x277D3F178];
      v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLTestService.m"];
      v21 = [v20 lastPathComponent];
      v22 = v18;
      v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLTestService initOperatorDependancies]_block_invoke"];
      [v19 logMessage:v22 fromFile:v21 fromFunction:v23 fromLineNumber:43];

      v24 = PLLogCommon();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v46 = v22;
        _os_log_debug_impl(&dword_21A4C6000, v24, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      v14 = v41;
    }
  }

  if ([v13 isEqualToString:@"DebugServiceForATP"])
  {
    v25 = [v11 objectForKeyedSubscript:@"testParam"];
    if (v25)
    {
      v26 = [v11 objectForKeyedSubscript:@"testParam"];
      v27 = [v26 isEqualToString:@"ENABLE"];
    }

    else
    {
      v27 = 0;
    }

    v31 = MEMORY[0x277D3F180];
    v32 = [MEMORY[0x277CCABB0] numberWithBool:v27];
    [v31 setObject:v32 forKey:@"PLDebugService_Enabled" saveToDisk:1];

    [MEMORY[0x277D3F258] exitWithReason:8];
    goto LABEL_18;
  }

  if (![v13 isEqualToString:@"testEPLMode"])
  {
LABEL_18:
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v33 = objc_opt_class();
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = __41__PLTestService_initOperatorDependancies__block_invoke_56;
      v43[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v43[4] = v33;
      if (qword_2811F7DF8 != -1)
      {
        dispatch_once(&qword_2811F7DF8, v43);
      }

      if (byte_2811F7DE2 == 1)
      {
        v42 = v14;
        v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"payload=%@\nresult=%@", v11, v14];
        v35 = MEMORY[0x277D3F178];
        v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLTestService.m"];
        v37 = [v36 lastPathComponent];
        v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLTestService initOperatorDependancies]_block_invoke_2"];
        [v35 logMessage:v34 fromFile:v37 fromFunction:v38 fromLineNumber:55];

        v39 = PLLogCommon();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v46 = v34;
          _os_log_debug_impl(&dword_21A4C6000, v39, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }

        v14 = v42;
      }
    }

    v28 = v14;
    goto LABEL_26;
  }

  v29 = *(a1 + 32);
  v30 = [v11 objectForKeyedSubscript:@"testParam"];
  v28 = [v29 presubmissionTest_testEPLMode:v14 withParam:v30];

LABEL_26:
LABEL_27:

  return v28;
}

void *__41__PLTestService_initOperatorDependancies__block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7DE1 = result;
  return result;
}

void *__41__PLTestService_initOperatorDependancies__block_invoke_56(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7DE2 = result;
  return result;
}

- (id)presubmissionTest_testEPLMode:(id)mode withParam:(id)param
{
  v31 = *MEMORY[0x277D85DE8];
  modeCopy = mode;
  paramCopy = param;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v7 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__PLTestService_presubmissionTest_testEPLMode_withParam___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v7;
    if (qword_2811F7E00 != -1)
    {
      dispatch_once(&qword_2811F7E00, block);
    }

    if (byte_2811F7DE3 == 1)
    {
      paramCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"presubmissionTest_testEPLMode with param=%@", paramCopy];
      v9 = MEMORY[0x277D3F178];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLTestService.m"];
      lastPathComponent = [v10 lastPathComponent];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLTestService presubmissionTest_testEPLMode:withParam:]"];
      [v9 logMessage:paramCopy fromFile:lastPathComponent fromFunction:v12 fromLineNumber:62];

      v13 = PLLogCommon();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v30 = paramCopy;
        _os_log_debug_impl(&dword_21A4C6000, v13, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  eplEnabled = [MEMORY[0x277D3F180] eplEnabled];
  if (paramCopy)
  {
    v15 = eplEnabled;
    if ([paramCopy isEqualToString:@"ENABLE"])
    {
      v16 = @"FAIL";
      v17 = @"PASS";
    }

    else
    {
      if (![paramCopy isEqualToString:@"DISABLE"])
      {
        goto LABEL_17;
      }

      v16 = @"PASS";
      v17 = @"FAIL";
    }

    if (v15)
    {
      v18 = v17;
    }

    else
    {
      v18 = v16;
    }

    [modeCopy setObject:v18 forKeyedSubscript:paramCopy];
  }

LABEL_17:
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v19 = objc_opt_class();
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __57__PLTestService_presubmissionTest_testEPLMode_withParam___block_invoke_76;
    v27[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v27[4] = v19;
    if (qword_2811F7E08 != -1)
    {
      dispatch_once(&qword_2811F7E08, v27);
    }

    if (byte_2811F7DE4 == 1)
    {
      modeCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"presubmissionTest_testEPLMode with result=%@", modeCopy];
      v21 = MEMORY[0x277D3F178];
      v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLTestService.m"];
      lastPathComponent2 = [v22 lastPathComponent];
      v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLTestService presubmissionTest_testEPLMode:withParam:]"];
      [v21 logMessage:modeCopy fromFile:lastPathComponent2 fromFunction:v24 fromLineNumber:74];

      v25 = PLLogCommon();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v30 = modeCopy;
        _os_log_debug_impl(&dword_21A4C6000, v25, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  return modeCopy;
}

void *__57__PLTestService_presubmissionTest_testEPLMode_withParam___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7DE3 = result;
  return result;
}

void *__57__PLTestService_presubmissionTest_testEPLMode_withParam___block_invoke_76(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7DE4 = result;
  return result;
}

@end