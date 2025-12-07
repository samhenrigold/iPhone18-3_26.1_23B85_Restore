@interface FedStatsPluginCoreConsentCheckHelper
+ (BOOL)checkChinaAIEligibility;
+ (BOOL)checkDnU;
+ (BOOL)checkIDV;
+ (BOOL)checkIHA;
@end

@implementation FedStatsPluginCoreConsentCheckHelper

+ (BOOL)checkDnU
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  isDiagnosticSubmissionAllowed = [mEMORY[0x277D262A0] isDiagnosticSubmissionAllowed];

  return isDiagnosticSubmissionAllowed;
}

+ (BOOL)checkIHA
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  isHealthDataSubmissionAllowed = [mEMORY[0x277D262A0] isHealthDataSubmissionAllowed];

  return isHealthDataSubmissionAllowed;
}

+ (BOOL)checkIDV
{
  v2 = +[FedStatsPluginLog logger];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    +[FedStatsPluginCoreConsentCheckHelper checkIDV];
  }

  v3 = objc_alloc_init(MEMORY[0x277CFFE68]);
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__0;
  v21 = __Block_byref_object_dispose__0;
  v22 = 0;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x3032000000;
  v15[3] = __Block_byref_object_copy__0;
  v15[4] = __Block_byref_object_dispose__0;
  v16 = 0;
  v4 = dispatch_semaphore_create(0);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __48__FedStatsPluginCoreConsentCheckHelper_checkIDV__block_invoke;
  v11[3] = &unk_278FF7970;
  v13 = v15;
  v14 = &v17;
  v5 = v4;
  v12 = v5;
  [v3 fetchUserConsent:v11];
  v6 = dispatch_time(0, 15000000000);
  if (dispatch_semaphore_wait(v5, v6))
  {
    v7 = +[FedStatsPluginLog logger];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      +[FedStatsPluginCoreConsentCheckHelper checkIDV];
    }
  }

  else
  {
    v9 = v18[5];
    if (v9)
    {
      bOOLValue = [v9 BOOLValue];
      goto LABEL_9;
    }

    v7 = +[FedStatsPluginLog logger];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      +[FedStatsPluginCoreConsentCheckHelper checkIDV];
    }
  }

  bOOLValue = 0;
LABEL_9:

  _Block_object_dispose(v15, 8);
  _Block_object_dispose(&v17, 8);

  return bOOLValue;
}

intptr_t __48__FedStatsPluginCoreConsentCheckHelper_checkIDV__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    v4 = [a3 copy];
    v5 = 40;
  }

  else
  {
    v4 = [MEMORY[0x277CCABB0] numberWithBool:a2 == 0];
    v5 = 48;
  }

  v6 = *(*(a1 + v5) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v4;

  v8 = *(a1 + 32);

  return dispatch_semaphore_signal(v8);
}

+ (BOOL)checkChinaAIEligibility
{
  v2 = +[FedStatsPluginLog logger];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    +[FedStatsPluginCoreConsentCheckHelper checkChinaAIEligibility];
  }

  return 0;
}

@end