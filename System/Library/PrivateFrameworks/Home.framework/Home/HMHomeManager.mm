@interface HMHomeManager
@end

@implementation HMHomeManager

uint64_t __52__HMHomeManager_HFAdditions__hf_homeWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

id __51__HMHomeManager_HFAdditions__hf_homeFutureForName___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v9 = [v8 name];
        v10 = [v9 isEqualToString:*(a1 + 32)];

        if (v10)
        {
          v13 = [MEMORY[0x277D2C900] futureWithResult:v8];
          v12 = v3;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v11 = MEMORY[0x277D2C900];
  v12 = [MEMORY[0x277CCA9B8] hf_errorWithCode:30];
  v13 = [v11 futureWithError:v12];
LABEL_11:

  return v13;
}

uint64_t __44__HMHomeManager_HFAdditions__hf_homeForURL___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [v3 UUIDString];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  return v5;
}

uint64_t __45__HMHomeManager_HFAdditions__hf_homeForName___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 name];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

void __65__HMHomeManager_HFAdditions__hf_setHasSeenOnboardingWelcomeView___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HFLogForCategory(9uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v9 = *(a1 + 48);
    v10 = 138412546;
    v11 = @"hasSeenOnboardingWelcomeView";
    v12 = 1024;
    v13 = v9;
  }

  v6 = [*(a1 + 32) _cached_hasSeenOnboardingWelcomeViewNumber];
  v7 = *(a1 + 40);

  if (v6 == v7)
  {
    [*(a1 + 32) set_cached_hasSeenOnboardingWelcomeViewNumber:0];
  }

  if (v4)
  {
    v8 = HFLogForCategory(9uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = v4;
      _os_log_error_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_ERROR, "*** Setting HasSeenOnboardingWelcomeView using hf_updateApplicationDataFuture has FAILED =  [%@]  ***", &v10, 0xCu);
    }
  }
}

void __63__HMHomeManager_HFAdditions__hf_setSeenNewFeaturesViewVersion___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = HFLogForCategory(9uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 48);
    v6 = 138412546;
    v7 = @"lastOnboardingNewFeaturesVersionSeen";
    v8 = 2048;
    v9 = v5;
  }

  v3 = [*(a1 + 32) _cached_lastOnboardingNewFeaturesVersionSeenNumber];
  v4 = *(a1 + 40);

  if (v3 == v4)
  {
    [*(a1 + 32) set_cached_lastOnboardingNewFeaturesVersionSeenNumber:0];
  }
}

void __60__HMHomeManager_HFAdditions__hf_updateApplicationDataFuture__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 applicationData];
  [v2 hf_updateApplicationData:v4 handleError:0 completionHandler:v3];
}

void __61__HMHomeManager_HFAdditions__hf_enableEventLogOnboardingFlag__block_invoke_2(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (v2)
  {
    v3 = HFLogForCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_error_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_ERROR, "Error onboarding Activity History: %@", &v4, 0xCu);
    }
  }
}

void __91__HMHomeManager_HFApplicationData__hf_updateApplicationData_handleError_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v6 = a2;
  v4 = +[HFErrorHandler sharedHandler];
  v5 = v4;
  if (v3 == 1)
  {
    [v4 handleError:v6 operationType:@"HFOperationUpdateApplicationDataCloudSync" options:0 retryBlock:0 cancelBlock:0];
  }

  else
  {
    [v4 logError:v6 operationDescription:@"HFOperationUpdateApplicationDataCloudSync"];
  }

  (*(*(a1 + 32) + 16))();
}

@end