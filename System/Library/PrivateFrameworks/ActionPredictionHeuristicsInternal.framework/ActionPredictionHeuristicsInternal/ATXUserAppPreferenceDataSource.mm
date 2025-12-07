@interface ATXUserAppPreferenceDataSource
- (ATXUserAppPreferenceDataSource)initWithDevice:(id)device;
- (BOOL)appSupportsParameterCombination:(id)combination forIntent:(id)intent forBundleId:(id)id;
- (BOOL)parametersExistInValidCombinationsForParameters:(id)parameters andValidCombinations:(id)combinations;
- (void)preferredAppForIntentName:(id)name andParameterCombination:(id)combination skipAppSchemaCheck:(BOOL)check callback:(id)callback;
@end

@implementation ATXUserAppPreferenceDataSource

- (ATXUserAppPreferenceDataSource)initWithDevice:(id)device
{
  deviceCopy = device;
  v9.receiver = self;
  v9.super_class = ATXUserAppPreferenceDataSource;
  v6 = [(ATXUserAppPreferenceDataSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, device);
  }

  return v7;
}

- (BOOL)parametersExistInValidCombinationsForParameters:(id)parameters andValidCombinations:(id)combinations
{
  v18 = *MEMORY[0x277D85DE8];
  parametersCopy = parameters;
  combinationsCopy = combinations;
  v7 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:parametersCopy];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  allKeys = [combinationsCopy allKeys];
  v9 = [allKeys countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = *v14;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(allKeys);
        }

        if ([*(*(&v13 + 1) + 8 * i) isEqualToSet:v7])
        {
          LOBYTE(v9) = 1;
          goto LABEL_11;
        }
      }

      v9 = [allKeys countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v9;
}

- (BOOL)appSupportsParameterCombination:(id)combination forIntent:(id)intent forBundleId:(id)id
{
  combinationCopy = combination;
  intentCopy = intent;
  idCopy = id;
  if ([MEMORY[0x277CEB3B8] isSystemAppForBundleId:idCopy])
  {
    _parameterCombinations = [intentCopy _parameterCombinations];
    v12 = [(ATXUserAppPreferenceDataSource *)self parametersExistInValidCombinationsForParameters:combinationCopy andValidCombinations:_parameterCombinations];
  }

  else
  {
    _parameterCombinations = [MEMORY[0x277CEB3B8] schemaWithoutFallbackForBundle:idCopy];
    if (_parameterCombinations)
    {
      _className = [intentCopy _className];
      v14 = [_parameterCombinations _parameterCombinationsForClassName:_className];
      v12 = [(ATXUserAppPreferenceDataSource *)self parametersExistInValidCombinationsForParameters:combinationCopy andValidCombinations:v14];
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (void)preferredAppForIntentName:(id)name andParameterCombination:(id)combination skipAppSchemaCheck:(BOOL)check callback:(id)callback
{
  v52 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  combinationCopy = combination;
  callbackCopy = callback;
  v13 = __atxlog_handle_heuristic();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    *&buf[4] = nameCopy;
    *&buf[12] = 2112;
    *&buf[14] = combinationCopy;
    _os_log_impl(&dword_23E3EA000, v13, OS_LOG_TYPE_INFO, "Looking for preferred app to handle %@ with parameter combination %@", buf, 0x16u);
  }

  v14 = objc_opt_new();
  v15 = NSClassFromString(nameCopy);
  if (v15 && ([(objc_class *)v15 isSubclassOfClass:objc_opt_class()]& 1) != 0)
  {
    v16 = objc_opt_new();
    v17 = dispatch_semaphore_create(0);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v49 = __Block_byref_object_copy_;
    v50 = __Block_byref_object_dispose_;
    v51 = 0;
    v18 = +[ATXIntentToAppBundleIdCache sharedInstance];
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __112__ATXUserAppPreferenceDataSource_preferredAppForIntentName_andParameterCombination_skipAppSchemaCheck_callback___block_invoke;
    v40[3] = &unk_278C3CAB8;
    v46 = buf;
    v19 = v17;
    v41 = v19;
    checkCopy = check;
    v20 = v14;
    v42 = v20;
    selfCopy = self;
    v44 = combinationCopy;
    v21 = v16;
    v45 = v21;
    [v18 fetchBundleIdsForIntent:v21 completionHandler:v40];

    if ([MEMORY[0x277D425A0] waitForSemaphore:v19 timeoutSeconds:1.0] == 1 || !objc_msgSend(v20, "count"))
    {
      (*(callbackCopy + 2))(callbackCopy, 0, *(*&buf[8] + 40));
    }

    else if ([v20 count] == 1)
    {
      v22 = [v20 objectAtIndexedSubscript:0];
      (*(callbackCopy + 2))(callbackCopy, v22, 0);
    }

    else
    {
      v34 = 0;
      v35 = &v34;
      v36 = 0x3032000000;
      v37 = __Block_byref_object_copy_;
      v38 = __Block_byref_object_dispose_;
      v39 = 0;
      v30 = BiomeLibrary();
      v23 = [v30 App];
      intent = [v23 Intent];
      v25 = [intent atx_publisherWithStartDate:0 endDate:0 maxEvents:0 lastN:0 reversed:1];
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __112__ATXUserAppPreferenceDataSource_preferredAppForIntentName_andParameterCombination_skipAppSchemaCheck_callback___block_invoke_25;
      v31[3] = &unk_278C3CB00;
      v26 = v20;
      v32 = v26;
      v33 = &v34;
      v27 = [v25 sinkWithCompletion:&__block_literal_global shouldContinue:v31];

      v28 = v35[5];
      v29 = v28;
      if (!v28)
      {
        v29 = [v26 objectAtIndexedSubscript:0];
      }

      (*(callbackCopy + 2))(callbackCopy, v29, 0);
      if (!v28)
      {
      }

      _Block_object_dispose(&v34, 8);
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    (*(callbackCopy + 2))(callbackCopy, 0, 0);
  }
}

void __112__ATXUserAppPreferenceDataSource_preferredAppForIntentName_andParameterCombination_skipAppSchemaCheck_callback___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5)
  {
    objc_storeStrong((*(*(a1 + 72) + 8) + 40), a3);
    dispatch_semaphore_signal(*(a1 + 32));
    goto LABEL_21;
  }

  v18 = v6;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = [v5 countByEnumeratingWithState:&v19 objects:v26 count:16];
  if (!v8)
  {
    goto LABEL_19;
  }

  v9 = v8;
  v10 = *v20;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v20 != v10)
      {
        objc_enumerationMutation(v5);
      }

      v12 = *(*(&v19 + 1) + 8 * i);
      v25 = v12;
      v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
      CanLearnFromApp = ATXHeuristicCanLearnFromApp(v13);

      if (CanLearnFromApp)
      {
        if (*(a1 + 80) == 1)
        {
          goto LABEL_13;
        }

        v15 = [*(a1 + 48) appSupportsParameterCombination:*(a1 + 56) forIntent:*(a1 + 64) forBundleId:v12];
        v16 = __atxlog_handle_heuristic();
        v17 = os_log_type_enabled(v16, OS_LOG_TYPE_INFO);
        if (v15)
        {
          if (v17)
          {
            *buf = 138412290;
            v24 = v12;
            _os_log_impl(&dword_23E3EA000, v16, OS_LOG_TYPE_INFO, "Bundle ID %@ supports intent, adding it to candidate for user app preference.", buf, 0xCu);
          }

LABEL_13:
          [*(a1 + 40) addObject:v12];
          continue;
        }

        if (v17)
        {
          *buf = 138412290;
          v24 = v12;
          _os_log_impl(&dword_23E3EA000, v16, OS_LOG_TYPE_INFO, "Bundle ID %@ supports intent, but it does not support the specific parameter combination we want to predict.", buf, 0xCu);
        }
      }
    }

    v9 = [v5 countByEnumeratingWithState:&v19 objects:v26 count:16];
  }

  while (v9);
LABEL_19:
  dispatch_semaphore_signal(*(a1 + 32));
  v7 = v18;
LABEL_21:
}

void __112__ATXUserAppPreferenceDataSource_preferredAppForIntentName_andParameterCombination_skipAppSchemaCheck_callback___block_invoke_23(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 error];

  if (v3)
  {
    v4 = __atxlog_handle_heuristic();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __112__ATXUserAppPreferenceDataSource_preferredAppForIntentName_andParameterCombination_skipAppSchemaCheck_callback___block_invoke_23_cold_1(v2, v4);
    }
  }
}

uint64_t __112__ATXUserAppPreferenceDataSource_preferredAppForIntentName_andParameterCombination_skipAppSchemaCheck_callback___block_invoke_25(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];
  v4 = [v3 bundleID];

  if (v4 && [*(a1 + 32) containsObject:v4])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v4);
    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

void __112__ATXUserAppPreferenceDataSource_preferredAppForIntentName_andParameterCombination_skipAppSchemaCheck_callback___block_invoke_23_cold_1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 error];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_23E3EA000, a2, OS_LOG_TYPE_ERROR, "Could not scan intent stream to determine most recently donated intent: %@", &v4, 0xCu);
}

@end