@interface LPKPerformanceTestIntermediary
+ (BOOL)_startUserSwitchTestForType:(unint64_t)type count:(int64_t)count username:(id)username password:(id)password loginDelay:(int64_t)delay logoutDelay:(int64_t)logoutDelay isPerformanceTest:(BOOL)test;
+ (BOOL)endUserSwitchTest;
+ (BOOL)startPerformanceTestForType:(unint64_t)type count:(int64_t)count username:(id)username password:(id)password loginDelay:(int64_t)delay logoutDelay:(int64_t)logoutDelay;
+ (id)_generateSharedipadTraceHelperCommand;
+ (id)endPerformanceTestAndDumpResults;
+ (int64_t)_disableKtrace;
+ (int64_t)_dumpKtraceResult;
+ (int64_t)_enableKtrace;
+ (void)_removeStoredValues;
+ (void)disableRestrictionlessLoginWithCompletionHandler:(id)handler;
+ (void)enableRestrictionlessLoginWithCompletionHandler:(id)handler;
@end

@implementation LPKPerformanceTestIntermediary

+ (BOOL)startPerformanceTestForType:(unint64_t)type count:(int64_t)count username:(id)username password:(id)password loginDelay:(int64_t)delay logoutDelay:(int64_t)logoutDelay
{
  usernameCopy = username;
  passwordCopy = password;
  if ([MEMORY[0x277D244C0] isInternalBuild] && !+[LPKPerformanceTestIntermediary _enableKtrace](LPKPerformanceTestIntermediary, "_enableKtrace"))
  {
    LOBYTE(v17) = 1;
    v15 = [LPKPerformanceTestIntermediary _startUserSwitchTestForType:type count:count username:usernameCopy password:passwordCopy loginDelay:delay logoutDelay:logoutDelay isPerformanceTest:v17];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (id)endPerformanceTestAndDumpResults
{
  if (![MEMORY[0x277D244C0] isInternalBuild] || +[LPKPerformanceTestIntermediary _disableKtrace](LPKPerformanceTestIntermediary, "_disableKtrace") || (objc_msgSend(MEMORY[0x277CCAA00], "defaultManager"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "fileExistsAtPath:", @"/tmp/perf_test_result.json"), v4, (v5 & 1) == 0) && +[LPKPerformanceTestIntermediary _dumpKtraceResult](LPKPerformanceTestIntermediary, "_dumpKtraceResult"))
  {
    v2 = 0;
  }

  else
  {
    v6 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:@"/tmp/perf_test_result.json"];
    v15 = 0;
    v7 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v6 options:0 error:&v15];
    v8 = v15;
    if (v8 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      NSLog(&cfstr_FailedToDeseri.isa, v8);
      v2 = 0;
    }

    else
    {
      NSLog(&cfstr_DeserializePer.isa);
      mEMORY[0x277D244D0] = [MEMORY[0x277D244D0] sharedStorage];
      v10 = [mEMORY[0x277D244D0] retrieveValueForKey:@"loginctlPerfTestType"];
      integerValue = [v10 integerValue];

      mEMORY[0x277D244D0]2 = [MEMORY[0x277D244D0] sharedStorage];
      v13 = [mEMORY[0x277D244D0]2 retrieveValueForKey:@"loginctlPerfTestCount"];
      integerValue2 = [v13 integerValue];

      v2 = [LPKPerfResultAnalyzer analyzePerformanceTestResult:v7 type:integerValue count:integerValue2];
      if (!+[LPKPerformanceTestIntermediary endUserSwitchTest])
      {
        NSLog(&cfstr_NoUserSwitchTe.isa);
      }
    }
  }

  return v2;
}

+ (BOOL)_startUserSwitchTestForType:(unint64_t)type count:(int64_t)count username:(id)username password:(id)password loginDelay:(int64_t)delay logoutDelay:(int64_t)logoutDelay isPerformanceTest:(BOOL)test
{
  v44[4] = *MEMORY[0x277D85DE8];
  usernameCopy = username;
  passwordCopy = password;
  mEMORY[0x277D244D0] = [MEMORY[0x277D244D0] sharedStorage];
  v18 = [mEMORY[0x277D244D0] retrieveValueForKey:@"LPKIsLocalUserSwitchTestOngoing"];

  if (v18)
  {
    NSLog(&cfstr_ThereSALocalTe.isa);
    v19 = 0;
  }

  else
  {
    v39 = 0;
    v40 = &v39;
    v41 = 0x2020000000;
    v42 = 1;
    [self _removeStoredValues];
    NSLog(&cfstr_StoringTestSta.isa);
    v28 = dispatch_semaphore_create(0);
    mEMORY[0x277D244D0]2 = [MEMORY[0x277D244D0] sharedStorage];
    v43[0] = @"loginctlPerfTestType";
    v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
    v44[0] = v20;
    v43[1] = @"loginctlPerfTestCount";
    v21 = [MEMORY[0x277CCABB0] numberWithInteger:count];
    v44[1] = v21;
    v43[2] = @"LPKLocalUserSwitchTestIsPerformanceTest";
    v22 = [MEMORY[0x277CCABB0] numberWithBool:test];
    v23 = v22;
    v43[3] = @"LPKLocalUserSwitchTestRetryCount";
    v24 = &unk_28683E070;
    if (test)
    {
      v24 = &unk_28683E058;
    }

    v44[2] = v22;
    v44[3] = v24;
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:4];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __127__LPKPerformanceTestIntermediary__startUserSwitchTestForType_count_username_password_loginDelay_logoutDelay_isPerformanceTest___block_invoke;
    v30[3] = &unk_279827D68;
    v31 = usernameCopy;
    typeCopy = type;
    countCopy = count;
    delayCopy = delay;
    logoutDelayCopy = logoutDelay;
    v32 = passwordCopy;
    v34 = &v39;
    v26 = v28;
    v33 = v26;
    [mEMORY[0x277D244D0]2 saveKeyValuePairs:v25 completionHandler:v30];

    dispatch_semaphore_wait(v26, 0xFFFFFFFFFFFFFFFFLL);
    if (v40[3])
    {
      v19 = 1;
    }

    else
    {
      +[LPKPerformanceTestIntermediary _removeStoredValues];
      v19 = *(v40 + 24);
    }

    _Block_object_dispose(&v39, 8);
  }

  return v19 & 1;
}

void __127__LPKPerformanceTestIntermediary__startUserSwitchTestForType_count_username_password_loginDelay_logoutDelay_isPerformanceTest___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    NSLog(&cfstr_TestStatesStor.isa, a2, a3, *(a1 + 32));
    v4 = [MEMORY[0x277D244B0] sharedController];
    v5 = *(a1 + 64);
    v6 = *(a1 + 72);
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = *(a1 + 80);
    v10 = *(a1 + 88);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __127__LPKPerformanceTestIntermediary__startUserSwitchTestForType_count_username_password_loginDelay_logoutDelay_isPerformanceTest___block_invoke_2;
    v14[3] = &unk_279827D40;
    v13 = *(a1 + 48);
    v11 = v13;
    v15 = v13;
    [v4 triggerLocalUserSwitchTestForType:v5 count:v6 username:v7 password:v8 loginDelay:v9 logoutDelay:v10 completionHandler:v14];
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 24) = 0;
    NSLog(&cfstr_FailedToStartT.isa, a3);
    v12 = *(a1 + 48);

    dispatch_semaphore_signal(v12);
  }
}

intptr_t __127__LPKPerformanceTestIntermediary__startUserSwitchTestForType_count_username_password_loginDelay_logoutDelay_isPerformanceTest___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    NSLog(&cfstr_FailedToTrigge.isa, a2);
  }

  v3 = *(a1 + 32);

  return dispatch_semaphore_signal(v3);
}

+ (BOOL)endUserSwitchTest
{
  mEMORY[0x277D244D0] = [MEMORY[0x277D244D0] sharedStorage];
  v4 = [mEMORY[0x277D244D0] retrieveValueForKey:@"LPKLocalUserSwitchTestHasFinishedSuccessfully"];
  bOOLValue = [v4 BOOLValue];

  [self _removeStoredValues];
  mEMORY[0x277D244B0] = [MEMORY[0x277D244B0] sharedController];
  [mEMORY[0x277D244B0] interruptLocalUserSwitchTest];

  return bOOLValue;
}

+ (void)enableRestrictionlessLoginWithCompletionHandler:(id)handler
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D244D0];
  handlerCopy = handler;
  sharedStorage = [v3 sharedStorage];
  v7 = @"isRestrictionlessLoginEnabled";
  v8[0] = MEMORY[0x277CBEC38];
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [sharedStorage saveKeyValuePairs:v6 completionHandler:handlerCopy];
}

+ (void)disableRestrictionlessLoginWithCompletionHandler:(id)handler
{
  v7[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D244D0];
  handlerCopy = handler;
  sharedStorage = [v3 sharedStorage];
  v7[0] = @"isRestrictionlessLoginEnabled";
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  [sharedStorage clearKeys:v6 completionHandler:handlerCopy];
}

+ (void)_removeStoredValues
{
  v8[11] = *MEMORY[0x277D85DE8];
  v2 = dispatch_semaphore_create(0);
  mEMORY[0x277D244D0] = [MEMORY[0x277D244D0] sharedStorage];
  v8[0] = @"LPKIsLocalUserSwitchTestOngoing";
  v8[1] = @"LPKLocalUserSwitchTestType";
  v8[2] = @"LPKLocalUserSwitchTestRemainCycleCount";
  v8[3] = @"LPKLocalUserSwitchTestUsername";
  v8[4] = @"LPKLocalUserSwitchTestPassword";
  v8[5] = @"LPKLocalUserSwitchTestHasFinishedSuccessfully";
  v8[6] = @"LPKLocalUserSwitchTestRetryCount";
  v8[7] = @"LPKLocalUserSwitchTestIsPerformanceTest";
  v8[8] = @"TestHasBeenPrewarmed";
  v8[9] = @"LPKLocalUserSwitchTestLoginDelay";
  v8[10] = @"LPKLocalUserSwitchTestLogoutDelay";
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:11];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__LPKPerformanceTestIntermediary__removeStoredValues__block_invoke;
  v6[3] = &unk_279827D90;
  v7 = v2;
  v5 = v2;
  [mEMORY[0x277D244D0] clearKeys:v4 completionHandler:v6];

  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
}

+ (int64_t)_enableKtrace
{
  v2 = system("rm /tmp/perf_test_result.trace");
  NSLog(&cfstr_RemoveOldResul.isa, v2);
  v3 = system("rm /tmp/perf_test_result.json");
  NSLog(&cfstr_RemoveOldResul_0.isa, v3);
  v4 = system("/usr/bin/ktrace remove");
  v5 = v4;
  NSLog(&cfstr_RemoveOldKtrac.isa, v4);
  if (!v5)
  {
    v6 = system("/usr/bin/ktrace init -b 200");
    v5 = v6;
    NSLog(&cfstr_InitializeKtra.isa, v6);
    if (!v5)
    {
      v7 = system("/usr/bin/ktrace setopt -w -f S0x2B84,S0x2BAB,S0x2BAD,S0x2BB1,S0x2B85,S0x2B8A,S0x2B52,S0x2B71,S0x2B6D,S0x2B6E,S0x3410");
      v5 = v7;
      NSLog(&cfstr_SetupKtraceOut.isa, v7);
      if (!v5)
      {
        v8 = system("/usr/bin/ktrace enable");
        v5 = v8;
        NSLog(&cfstr_EnableKtraceD.isa, v8);
      }
    }
  }

  return v5;
}

+ (int64_t)_disableKtrace
{
  v2 = system("/usr/bin/ktrace disable");
  v3 = v2;
  NSLog(&cfstr_DisableKtraceD.isa, v2);
  return v3;
}

+ (int64_t)_dumpKtraceResult
{
  v3 = system("/usr/bin/ktrace dump -E /tmp/perf_test_result.trace");
  v4 = v3;
  NSLog(&cfstr_DumpPerfResult.isa, v3);
  if (!v4)
  {
    _generateSharedipadTraceHelperCommand = [self _generateSharedipadTraceHelperCommand];
    v6 = system([_generateSharedipadTraceHelperCommand UTF8String]);

    NSLog(&cfstr_GenerateSignpo.isa, v6);
    if (!v6)
    {
      v6 = system("ktrace trace -R /tmp/perf_test_result.trace -C /tmp/signposts.codes -fS0x2B84,S0x2BAB,S0x2BAD,S0x2BB1,S0x2B85,S0x2B8A,S0x2B71,S0x2B6D,S0x2B6E --json > /tmp/perf_test_result.json");
      NSLog(&cfstr_GeneratePerfRe.isa, v6);
    }

    return v6;
  }

  return v4;
}

+ (id)_generateSharedipadTraceHelperCommand
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAB68] stringWithFormat:@"/usr/local/bin/sharedipadtracehelper make -codes %@ -plists ", @"/tmp/signposts.codes"];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [&unk_28683E088 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(&unk_28683E088);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        if (!access([v7 UTF8String], 4))
        {
          v8 = [MEMORY[0x277CCACA8] stringWithFormat:@" %@ ", v7];
          [v2 appendString:v8];
        }
      }

      v4 = [&unk_28683E088 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  return v2;
}

@end