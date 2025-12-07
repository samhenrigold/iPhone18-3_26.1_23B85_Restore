@interface CNAutocompleteStewieSearch
- (id)executeRequest:(id)request completionHandler:(id)handler;
@end

@implementation CNAutocompleteStewieSearch

- (id)executeRequest:(id)request completionHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  currentEnvironment = [MEMORY[0x277CFBE10] currentEnvironment];
  schedulerProvider = [currentEnvironment schedulerProvider];
  backgroundScheduler = [schedulerProvider backgroundScheduler];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __63__CNAutocompleteStewieSearch_executeRequest_completionHandler___block_invoke;
  v14[3] = &unk_2781C4000;
  v15 = requestCopy;
  v16 = handlerCopy;
  v10 = requestCopy;
  v11 = handlerCopy;
  v12 = [backgroundScheduler performCancelableBlock:v14];

  return v12;
}

void __63__CNAutocompleteStewieSearch_executeRequest_completionHandler___block_invoke(uint64_t a1)
{
  v49 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CFBE10] currentEnvironment];
  v3 = [v2 stewie];
  v4 = [v3 isEmergencyEnabled];

  v5 = [MEMORY[0x277CFBE10] currentEnvironment];
  v6 = [v5 stewie];
  v7 = [v6 isAvocetEnabled];

  if (v4 & 1) != 0 || (v7)
  {
    v10 = CNALoggingContextDebug(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      *buf = 134217984;
      v46 = v11;
      _os_log_impl(&dword_2155FE000, v10, OS_LOG_TYPE_DEFAULT, "Executing request %p against Stewie contacts", buf, 0xCu);
    }

    v12 = [MEMORY[0x277CBEAA8] date];
    v13 = objc_opt_new();
    v14 = v13;
    if (v4)
    {
      v15 = [MEMORY[0x277CFBE10] currentEnvironment];
      v16 = [v15 stewie];
      v17 = [v16 emergencyTerms];

      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = __63__CNAutocompleteStewieSearch_executeRequest_completionHandler___block_invoke_3;
      v43[3] = &unk_2781C3FD8;
      v44 = *(a1 + 32);
      v18 = [v17 _cn_filter:v43];
      if ([v18 count])
      {
        v19 = [CNAutocompleteResultValue resultValueWithAddress:@"stewie:emergency:112911" addressType:4];
        v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        [v20 localizedStringForKey:@"EMERGENCY_SERVICES" value:&stru_282787720 table:@"Localized-Stewie"];
        v21 = v14;
        v22 = v17;
        v23 = v12;
        v25 = v24 = a1;
        v26 = [(CNAutocompleteResult *)CNAutocompleteStewieResult contactResultWithDisplayName:v25 value:v19 nameComponents:0 identifier:0];

        a1 = v24;
        v12 = v23;
        v17 = v22;
        v14 = v21;

        [v26 setSourceType:512];
        [v21 addObject:v26];
      }
    }

    if (v7)
    {
      v27 = [MEMORY[0x277CFBE10] currentEnvironment];
      v28 = [v27 stewie];
      v29 = [v28 avocetTerms];

      v38 = MEMORY[0x277D85DD0];
      v39 = 3221225472;
      v40 = __63__CNAutocompleteStewieSearch_executeRequest_completionHandler___block_invoke_2;
      v41 = &unk_2781C3FD8;
      v42 = *(a1 + 32);
      v30 = [v29 _cn_filter:&v38];
      if ([v30 count])
      {
        v31 = [CNAutocompleteResultValue resultValueWithAddress:@"stewie:roadside:0:autocomplete:" addressType:5];
        v32 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v33 = [v32 localizedStringForKey:@"ROADSIDE_ASSISTANCE" value:&stru_282787720 table:@"Localized-Avocet"];
        v34 = [(CNAutocompleteResult *)CNAutocompleteStewieResult contactResultWithDisplayName:v33 value:v31 nameComponents:0 identifier:0];

        [v34 setSourceType:512];
        [v14 addObject:v34];
      }
    }

    v35 = CNALoggingContextPerformance(v13);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v14, "count")}];
      [v12 timeIntervalSinceNow];
      *buf = 138412546;
      v46 = v36;
      v47 = 2048;
      v48 = v37 * -1000.0;
      _os_log_impl(&dword_2155FE000, v35, OS_LOG_TYPE_INFO, "Time to fetch %@ Stewie contacts: %.3fms", buf, 0x16u);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v9 = *(*(a1 + 40) + 16);

    v9();
  }
}

uint64_t __63__CNAutocompleteStewieSearch_executeRequest_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 searchString];
  v5 = [v3 _cn_hasPrefix:v4];

  return v5;
}

uint64_t __63__CNAutocompleteStewieSearch_executeRequest_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 length];
  v5 = [*(a1 + 32) searchString];
  v6 = v5;
  if (v4 <= 3)
  {
    v7 = [v3 isEqualToString:v5];
LABEL_6:
    v9 = v7;

    goto LABEL_7;
  }

  v8 = [v5 length];

  if (v8 >= 4)
  {
    v6 = [*(a1 + 32) searchString];
    v7 = [v3 _cn_hasPrefix:v6];
    goto LABEL_6;
  }

  v9 = 0;
LABEL_7:

  return v9;
}

@end