@interface DKSync3Policy
@end

@implementation DKSync3Policy

void __77___DKSync3Policy_possiblyDownloadSyncPolicyWithPolicyDownloadIntervalInDays___block_invoke(void *a1)
{
  keys[9] = *MEMORY[0x1E69E9840];
  if (+[_DKCloudUtilities isUnitTesting])
  {
    v20 = +[_CDPeriodicScheduler sharedInstance];
    [v20 unregisterJob:a1[4]];
  }

  else
  {
    v2 = a1[4];
    v3 = dispatch_get_global_queue(-32768, 0);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __77___DKSync3Policy_possiblyDownloadSyncPolicyWithPolicyDownloadIntervalInDays___block_invoke_2;
    v21[3] = &__block_descriptor_40_e5_v8__0l;
    v21[4] = a1[5];
    v4 = [_CDPeriodicSchedulerJob jobWithInterval:v2 schedulerJobName:v3 queue:0 asynchronousHandler:v21 handler:0.0];

    v5 = *MEMORY[0x1E69E9D88];
    keys[0] = *MEMORY[0x1E69E9CB0];
    keys[1] = v5;
    v6 = *MEMORY[0x1E69E9D58];
    keys[2] = *MEMORY[0x1E69E9D68];
    keys[3] = v6;
    v7 = *MEMORY[0x1E69E9DB0];
    keys[4] = *MEMORY[0x1E69E9C40];
    keys[5] = v7;
    v8 = *MEMORY[0x1E69E9D40];
    keys[6] = *MEMORY[0x1E69E9D18];
    keys[7] = v8;
    v9 = 86400 * a1[6];
    keys[8] = *MEMORY[0x1E69E9DA8];
    values[0] = xpc_int64_create(v9);
    v10 = MEMORY[0x1E69E9E10];
    v11 = MEMORY[0x1E69E9E10];
    values[1] = v10;
    values[2] = xpc_string_create(*MEMORY[0x1E69E9D70]);
    v12 = v10;
    values[3] = v10;
    v13 = MEMORY[0x1E69E9E08];
    v14 = MEMORY[0x1E69E9E08];
    values[4] = v13;
    v15 = v10;
    values[5] = v10;
    values[6] = xpc_string_create(*MEMORY[0x1E69E9D20]);
    values[7] = xpc_int64_create(5000);
    v16 = v10;
    values[8] = v10;
    v17 = xpc_dictionary_create(keys, values, 9uLL);
    [v4 setExecutionCriteria:v17];

    v18 = +[_CDPeriodicScheduler sharedInstance];
    [v18 registerJob:v4];

    for (i = 8; i != -1; --i)
    {
    }
  }
}

void __77___DKSync3Policy_possiblyDownloadSyncPolicyWithPolicyDownloadIntervalInDays___block_invoke_2(uint64_t a1)
{
  v1 = +[_DKSync3Policy userDefaults];
  v2 = [v1 objectForKey:@"CloudSyncPoliciesLastModified"];

  v3 = objc_opt_new();
  v4 = objc_opt_new();
  [_CDServerRequest addHTTPIfModifiedSinceToHeaders:v4 date:v2];
  v5 = [_CDServerRequest startDataTaskWithURI:v3 headers:@"https://configuration.apple.com/configurations/internetservices/cloudkit/knowledgestore/com.apple.coreduet.knowledge.Sync3Policy.plist" timeoutInterval:v4 responseHandler:&__block_literal_global_837];
  v6 = +[_CDLogging syncChannel];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __77___DKSync2Policy_possiblyDownloadSyncPolicyWithPolicyDownloadIntervalInDays___block_invoke_146_cold_2();
  }
}

void __42___DKSync3Policy_PolicyCache__policyCache__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DEE0]);
  v1 = policyCache_policyCache_0;
  policyCache_policyCache_0 = v0;

  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = policyCache_policyCache_0;
  policyCache_policyCache_0 = v2;

  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  v4 = [v5 addObserverForName:@"_DKSync2CoordinatorDidIdleNotification" object:0 queue:0 usingBlock:&__block_literal_global_950];
}

void __32___DKSync3Policy_disabledPolicy__block_invoke()
{
  v0 = objc_opt_new();
  v1 = disabledPolicy_policy;
  disabledPolicy_policy = v0;

  if (disabledPolicy_policy)
  {
    *(disabledPolicy_policy + 8) = 1;
  }
}

@end