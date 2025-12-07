@interface DKSync2Policy
@end

@implementation DKSync2Policy

void __29___DKSync2Policy_policyCache__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DEE0]);
  v1 = policyCache_policyCache;
  policyCache_policyCache = v0;

  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v2 = [v3 addObserverForName:@"_DKSync2CoordinatorDidIdleNotification" object:0 queue:0 usingBlock:&__block_literal_global_111];
}

void __77___DKSync2Policy_possiblyDownloadSyncPolicyWithPolicyDownloadIntervalInDays___block_invoke(void *a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v2 = +[(_DKSync2Policy *)a1[5]];
  v3 = possiblyDownloadSyncPolicyWithPolicyDownloadIntervalInDays__productVersion;
  possiblyDownloadSyncPolicyWithPolicyDownloadIntervalInDays__productVersion = v2;

  v4 = +[_CDLogging syncChannel];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [objc_opt_class() description];
    *buf = 138543618;
    *&buf[4] = v5;
    *&buf[12] = 2114;
    *&buf[14] = possiblyDownloadSyncPolicyWithPolicyDownloadIntervalInDays__productVersion;
    _os_log_impl(&dword_191750000, v4, OS_LOG_TYPE_INFO, "%{public}@: Using productVersion %{public}@ for sync policy downloads", buf, 0x16u);
  }

  if (possiblyDownloadSyncPolicyWithPolicyDownloadIntervalInDays__productVersion && !+[_DKCloudUtilities isUnitTesting])
  {
    v7 = a1[4];
    v8 = dispatch_get_global_queue(-32768, 0);
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __77___DKSync2Policy_possiblyDownloadSyncPolicyWithPolicyDownloadIntervalInDays___block_invoke_146;
    v24[3] = &__block_descriptor_40_e5_v8__0l;
    v24[4] = a1[5];
    v6 = [_CDPeriodicSchedulerJob jobWithInterval:v7 schedulerJobName:v8 queue:0 asynchronousHandler:v24 handler:0.0];

    v9 = *MEMORY[0x1E69E9D88];
    *buf = *MEMORY[0x1E69E9CB0];
    *&buf[8] = v9;
    v10 = *MEMORY[0x1E69E9D58];
    *&buf[16] = *MEMORY[0x1E69E9D68];
    v27 = v10;
    v11 = *MEMORY[0x1E69E9DB0];
    v28 = *MEMORY[0x1E69E9C40];
    v29 = v11;
    v12 = *MEMORY[0x1E69E9D40];
    v30 = *MEMORY[0x1E69E9D18];
    v31 = v12;
    v13 = 86400 * a1[6];
    v32 = *MEMORY[0x1E69E9DA8];
    values[0] = xpc_int64_create(v13);
    v14 = MEMORY[0x1E69E9E10];
    v15 = MEMORY[0x1E69E9E10];
    values[1] = v14;
    values[2] = xpc_string_create(*MEMORY[0x1E69E9D70]);
    v16 = v14;
    values[3] = v14;
    v17 = MEMORY[0x1E69E9E08];
    v18 = MEMORY[0x1E69E9E08];
    values[4] = v17;
    v19 = v14;
    values[5] = v14;
    values[6] = xpc_string_create(*MEMORY[0x1E69E9D20]);
    values[7] = xpc_int64_create(5000);
    v20 = v14;
    values[8] = v14;
    v21 = xpc_dictionary_create(buf, values, 9uLL);
    [v6 setExecutionCriteria:v21];

    v22 = +[_CDPeriodicScheduler sharedInstance];
    [v22 registerJob:v6];

    for (i = 8; i != -1; --i)
    {
    }
  }

  else
  {
    v6 = +[_CDPeriodicScheduler sharedInstance];
    [v6 unregisterJob:a1[4]];
  }
}

void __77___DKSync2Policy_possiblyDownloadSyncPolicyWithPolicyDownloadIntervalInDays___block_invoke_146(uint64_t a1)
{
  v2 = +[_DKSync2Policy userDefaults];
  v3 = [v2 objectForKey:@"CloudSyncPoliciesLastModified"];

  v4 = objc_opt_new();
  v5 = objc_opt_new();
  [_CDServerRequest addHTTPIfModifiedSinceToHeaders:v5 date:v3];
  v6 = [@"https://configuration.apple.com/configurations/internetservices/cloudkit/knowledgestore/com.apple.coreduet.knowledge.syncPolicies2.ios.plist" pathComponents];
  v7 = [v6 mutableCopy];

  if ([v7 count] < 3)
  {
    v9 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __77___DKSync2Policy_possiblyDownloadSyncPolicyWithPolicyDownloadIntervalInDays___block_invoke_146_cold_1(a1, v9);
    }

    v8 = @"https://configuration.apple.com/configurations/internetservices/cloudkit/knowledgestore/com.apple.coreduet.knowledge.syncPolicies2.ios.plist";
  }

  else
  {
    [v7 insertObject:possiblyDownloadSyncPolicyWithPolicyDownloadIntervalInDays__productVersion atIndex:{objc_msgSend(v7, "count") - 1}];
    v8 = [MEMORY[0x1E696AEC0] pathWithComponents:v7];
  }

  v10 = [_CDServerRequest startDataTaskWithURI:v4 headers:v8 timeoutInterval:v5 responseHandler:&__block_literal_global_151];
  v11 = +[_CDLogging syncChannel];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    __77___DKSync2Policy_possiblyDownloadSyncPolicyWithPolicyDownloadIntervalInDays___block_invoke_146_cold_2();
  }
}

void __77___DKSync2Policy_possiblyDownloadSyncPolicyWithPolicyDownloadIntervalInDays___block_invoke_146_cold_1(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_class() description];
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void __77___DKSync2Policy_possiblyDownloadSyncPolicyWithPolicyDownloadIntervalInDays___block_invoke_146_cold_2()
{
  OUTLINED_FUNCTION_16();
  v0 = [objc_opt_class() description];
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
}

@end