@interface NLPLearnerACTShadowEvaluator
+ (id)actParamFilesAtPath:(id)path;
+ (id)actParametersFromConfig:(id)config;
+ (id)processACTResults:(id)results metric:(id)metric;
+ (void)initialize;
- (NLPLearnerACTShadowEvaluator)initWithLocale:(id)locale andMetricParameters:(id)parameters;
- (id)evaluateModel:(id)model onRecords:(id)records options:(id)options completion:(id)completion error:(id *)error;
- (id)runACTWithParams:(id)params modelPath:(id)path data:(id)data;
@end

@implementation NLPLearnerACTShadowEvaluator

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    sLog_7 = os_log_create("com.apple.NLPLearner", "NLPLearnerACTShadowEvaluator");

    MEMORY[0x2821F96F8]();
  }
}

- (NLPLearnerACTShadowEvaluator)initWithLocale:(id)locale andMetricParameters:(id)parameters
{
  parametersCopy = parameters;
  localeCopy = locale;
  v9 = os_log_create("com.apple.NLPLearner", "NLPLearnerACTShadowEvaluator");
  v10 = sLog_7;
  sLog_7 = v9;

  v13.receiver = self;
  v13.super_class = NLPLearnerACTShadowEvaluator;
  v11 = [(NLPLearnerShadowEvaluator *)&v13 initWithLocale:localeCopy andTask:7];

  if (v11)
  {
    objc_storeStrong(&v11->_metricParameters, parameters);
  }

  return v11;
}

+ (id)actParamFilesAtPath:(id)path
{
  v25 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v23 = 0;
  v5 = [defaultManager contentsOfDirectoryAtPath:pathCopy error:&v23];
  v6 = v23;

  if (v6)
  {
    if (os_log_type_enabled(sLog_7, OS_LOG_TYPE_ERROR))
    {
      +[NLPLearnerACTShadowEvaluator actParamFilesAtPath:];
    }

    v7 = 0;
  }

  else
  {
    v18 = [MEMORY[0x277CCAC30] predicateWithFormat:@"pathExtension MATCHES 'json'"];
    [v5 filteredArrayUsingPredicate:?];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = v22 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v20;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v8);
          }

          stringByDeletingPathExtension = [*(*(&v19 + 1) + 8 * i) stringByDeletingPathExtension];
          v14 = supportedMetrics(stringByDeletingPathExtension);
          v15 = [v14 containsObject:stringByDeletingPathExtension];

          if ((v15 & 1) == 0)
          {
            v16 = sLog_7;
            if (os_log_type_enabled(sLog_7, OS_LOG_TYPE_ERROR))
            {
              [(NLPLearnerACTShadowEvaluator *)stringByDeletingPathExtension actParamFilesAtPath:v16];
            }

            v7 = 0;
            goto LABEL_17;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v19 objects:v24 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v7 = v8;
LABEL_17:
  }

  return v7;
}

- (id)evaluateModel:(id)model onRecords:(id)records options:(id)options completion:(id)completion error:(id *)error
{
  v75 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  recordsCopy = records;
  v12 = [options objectForKeyedSubscript:@"skip_if_ondevice_autocorrection_disabled"];
  if (!v12)
  {
    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_9;
  }

  v13 = sLog_7;
  if (os_log_type_enabled(sLog_7, OS_LOG_TYPE_INFO))
  {
    v14 = v13;
    bOOLValue = [v12 BOOLValue];
    v16 = @"NO";
    if (bOOLValue)
    {
      v16 = @"YES";
    }

    *buf = 138412290;
    v74 = v16;
    _os_log_impl(&dword_25AE22000, v14, OS_LOG_TYPE_INFO, "skip_if_ondevice_autocorrection_disabled is set to %@", buf, 0xCu);
  }

  if (![v12 BOOLValue] || (objc_msgSend(MEMORY[0x277D262A0], "sharedConnection"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "isAutoCorrectionAllowed"), v17, (v18 & 1) != 0))
  {
LABEL_9:
    v57 = [(NLPLearnerShadowEvaluator *)self prepareDataFromRecords:recordsCopy];
    if (![v57 numSamples])
    {
      if (!error)
      {
        v31 = 0;
LABEL_39:

        goto LABEL_40;
      }

      v32 = MEMORY[0x277CCA9B8];
      v71 = *MEMORY[0x277CCA450];
      v72 = @"missing evaluation data for ACT";
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v72 forKeys:&v71 count:1];
      [v32 errorWithDomain:@"com.apple.NLPLearner.NLPShadowEvaluationErrorDomain" code:9 userInfo:v19];
      *error = v31 = 0;
LABEL_38:

      goto LABEL_39;
    }

    v19 = objc_opt_new();
    metricParameters = [(NLPLearnerACTShadowEvaluator *)self metricParameters];

    if (metricParameters)
    {
      v51 = v12;
      v53 = recordsCopy;
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      metricParameters2 = [(NLPLearnerACTShadowEvaluator *)self metricParameters];
      v22 = [metricParameters2 countByEnumeratingWithState:&v63 objects:v70 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v64;
        do
        {
          for (i = 0; i != v23; ++i)
          {
            if (*v64 != v24)
            {
              objc_enumerationMutation(metricParameters2);
            }

            v26 = *(*(&v63 + 1) + 8 * i);
            metricParameters3 = [(NLPLearnerACTShadowEvaluator *)self metricParameters];
            v28 = [metricParameters3 objectForKeyedSubscript:v26];

            v29 = [(NLPLearnerACTShadowEvaluator *)self runACTWithParams:v28 modelPath:modelCopy data:v57];
            v30 = [NLPLearnerACTShadowEvaluator processACTResults:v29 metric:v26];
            [v19 addEntriesFromDictionary:v30];
          }

          v23 = [metricParameters2 countByEnumeratingWithState:&v63 objects:v70 count:16];
        }

        while (v23);
      }

      v19 = v19;
      v31 = v19;
      v12 = v51;
      recordsCopy = v53;
      goto LABEL_38;
    }

    path = [modelCopy path];
    v34 = [NLPLearnerACTShadowEvaluator actParamFilesAtPath:path];

    if ([v34 count])
    {
      v52 = v12;
      v54 = recordsCopy;
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v50 = v34;
      obj = v34;
      v35 = [obj countByEnumeratingWithState:&v59 objects:v67 count:16];
      if (v35)
      {
        v36 = v35;
        v56 = *v60;
        do
        {
          for (j = 0; j != v36; ++j)
          {
            if (*v60 != v56)
            {
              objc_enumerationMutation(obj);
            }

            v38 = *(*(&v59 + 1) + 8 * j);
            v39 = [modelCopy URLByAppendingPathComponent:v38];
            v40 = [NLPLearnerACTShadowEvaluator actParametersFromConfig:v39];
            v41 = sLog_7;
            if (os_log_type_enabled(sLog_7, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v74 = v40;
              _os_log_impl(&dword_25AE22000, v41, OS_LOG_TYPE_INFO, "Run ACT with params : %@", buf, 0xCu);
            }

            v42 = [(NLPLearnerACTShadowEvaluator *)self runACTWithParams:v40 modelPath:modelCopy data:v57];
            stringByDeletingPathExtension = [v38 stringByDeletingPathExtension];
            v44 = [NLPLearnerACTShadowEvaluator processACTResults:v42 metric:stringByDeletingPathExtension];
            [v19 addEntriesFromDictionary:v44];
          }

          v36 = [obj countByEnumeratingWithState:&v59 objects:v67 count:16];
        }

        while (v36);
      }

      v31 = v19;
      v34 = v50;
      v12 = v52;
      recordsCopy = v54;
      goto LABEL_37;
    }

    v45 = sLog_7;
    if (os_log_type_enabled(sLog_7, OS_LOG_TYPE_ERROR))
    {
      [NLPLearnerACTShadowEvaluator evaluateModel:v45 onRecords:modelCopy options:? completion:? error:?];
      if (!error)
      {
        goto LABEL_36;
      }
    }

    else if (!error)
    {
LABEL_36:
      v31 = 0;
LABEL_37:

      goto LABEL_38;
    }

    v46 = MEMORY[0x277CCA9B8];
    v68 = *MEMORY[0x277CCA450];
    v69 = @"Cannot load params file for ACT evaluation";
    v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v69 forKeys:&v68 count:1];
    *error = [v46 errorWithDomain:@"com.apple.NLPLearner.NLPShadowEvaluationErrorDomain" code:6 userInfo:v47];

    goto LABEL_36;
  }

  v49 = sLog_7;
  if (os_log_type_enabled(sLog_7, OS_LOG_TYPE_ERROR))
  {
    [NLPLearnerACTShadowEvaluator evaluateModel:v49 onRecords:self options:? completion:? error:?];
    if (error)
    {
      goto LABEL_45;
    }
  }

  else if (error)
  {
LABEL_45:
    [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.NLPLearner.NLPShadowEvaluationErrorDomain" code:10 userInfo:&unk_286C3AB80];
    *error = v31 = 0;
    goto LABEL_40;
  }

  v31 = 0;
LABEL_40:

  return v31;
}

+ (id)processACTResults:(id)results metric:(id)metric
{
  v40 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  metricCopy = metric;
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v8 = resultsCopy;
  v9 = [v8 countByEnumeratingWithState:&v27 objects:v39 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = @"WordErrorCount";
    v12 = *v28;
    v26 = v7;
    do
    {
      v13 = 0;
      do
      {
        if (*v28 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v27 + 1) + 8 * v13);
        if (![v14 isEqualToString:v11])
        {
          if ([v14 isEqualToString:@"InsertedCharacterCount"])
          {
            if (![metricCopy isEqualToString:@"KSR"])
            {
              goto LABEL_22;
            }

            v15 = [v8 objectForKeyedSubscript:v14];
            [v7 setObject:v15 forKey:v14];
          }

          else
          {
            v15 = [v7 objectForKey:v14];
            v16 = [v8 objectForKeyedSubscript:v14];
            if (v15)
            {
              v20 = v11;
              v21 = [v15 isEqual:v16];

              if ((v21 & 1) == 0)
              {
                v22 = sLog_7;
                if (os_log_type_enabled(sLog_7, OS_LOG_TYPE_ERROR))
                {
                  v23 = v22;
                  v24 = [v8 objectForKeyedSubscript:v14];
                  *buf = 138413058;
                  v32 = metricCopy;
                  v33 = 2112;
                  v34 = v14;
                  v35 = 2112;
                  v36 = v15;
                  v37 = 2112;
                  v38 = v24;
                  _os_log_error_impl(&dword_25AE22000, v23, OS_LOG_TYPE_ERROR, "In the ACT result for metric: %@, Key: %@, expected Value: %@ where as actual Value: %@", buf, 0x2Au);
                }
              }

              v11 = v20;
              v7 = v26;
            }

            else
            {
              v17 = v7;
              v18 = v16;
              v19 = v14;
LABEL_20:
              [v17 setObject:v18 forKey:v19];
            }
          }

          goto LABEL_22;
        }

        if (overrideWordErrorCountForMetrics_onceToken != -1)
        {
          +[NLPLearnerACTShadowEvaluator processACTResults:metric:];
        }

        if ([overrideWordErrorCountForMetrics_overrideWordErrorCountForMetrics containsObject:metricCopy])
        {
          v15 = [v8 objectForKeyedSubscript:v14];
          v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", metricCopy, v14];
          v17 = v7;
          v18 = v15;
          v19 = v16;
          goto LABEL_20;
        }

LABEL_22:
        ++v13;
      }

      while (v10 != v13);
      v10 = [v8 countByEnumeratingWithState:&v27 objects:v39 count:16];
    }

    while (v10);
  }

  return v7;
}

+ (id)actParametersFromConfig:(id)config
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEA90];
  configCopy = config;
  v5 = [v3 alloc];
  path = [configCopy path];

  v18 = 0;
  v7 = [v5 initWithContentsOfFile:path options:1 error:&v18];
  v8 = v18;

  v17 = v8;
  v9 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v7 options:0 error:&v17];
  v10 = v17;

  v11 = [v9 mutableCopy];
  v12 = sLog_7;
  if (os_log_type_enabled(sLog_7, OS_LOG_TYPE_INFO))
  {
    v13 = v12;
    v14 = [v11 description];
    *buf = 138412290;
    v20 = v14;
    _os_log_impl(&dword_25AE22000, v13, OS_LOG_TYPE_INFO, "Loaded ACT params from config: %@", buf, 0xCu);
  }

  if (!v11 || v10)
  {
    if (os_log_type_enabled(sLog_7, OS_LOG_TYPE_ERROR))
    {
      +[NLPLearnerACTShadowEvaluator actParametersFromConfig:];
    }

    v15 = 0;
  }

  else
  {
    v15 = v11;
  }

  return v15;
}

- (id)runACTWithParams:(id)params modelPath:(id)path data:(id)data
{
  v48 = *MEMORY[0x277D85DE8];
  paramsCopy = params;
  pathCopy = path;
  dataCopy = data;
  path = [pathCopy path];
  stringByDeletingPathExtension = [path stringByDeletingPathExtension];

  v13 = [paramsCopy objectForKeyedSubscript:@"CUSTOM_LANGUAGE_MODEL_PATH"];
  if (v13)
  {
    [paramsCopy setObject:stringByDeletingPathExtension forKeyedSubscript:@"CUSTOM_LANGUAGE_MODEL_PATH"];
    v14 = sLog_7;
    if (os_log_type_enabled(sLog_7, OS_LOG_TYPE_INFO))
    {
      v15 = v14;
      v16 = [paramsCopy objectForKeyedSubscript:@"CUSTOM_LANGUAGE_MODEL_PATH"];
      *buf = 138412546;
      *&buf[4] = v13;
      *&buf[12] = 2112;
      *&buf[14] = v16;
      _os_log_impl(&dword_25AE22000, v15, OS_LOG_TYPE_INFO, "Updated CUSTOM_LANGUAGE_MODEL_PATH from '%@' to '%@'", buf, 0x16u);
    }
  }

  v17 = [paramsCopy objectForKeyedSubscript:@"CUSTOM_STATIC_DICTIONARY_PATH"];
  if (v17)
  {
    v18 = [stringByDeletingPathExtension stringByAppendingPathComponent:v17];
    [paramsCopy setObject:v18 forKeyedSubscript:@"CUSTOM_STATIC_DICTIONARY_PATH"];

    v19 = sLog_7;
    if (os_log_type_enabled(sLog_7, OS_LOG_TYPE_INFO))
    {
      v20 = v19;
      v21 = [paramsCopy objectForKeyedSubscript:@"CUSTOM_STATIC_DICTIONARY_PATH"];
      *buf = 138412546;
      *&buf[4] = v17;
      *&buf[12] = 2112;
      *&buf[14] = v21;
      _os_log_impl(&dword_25AE22000, v20, OS_LOG_TYPE_INFO, "Updated CUSTOM_STATIC_DICTIONARY_PATH from '%@' to '%@'", buf, 0x16u);
    }
  }

  locale = [(NLPLearnerShadowEvaluator *)self locale];
  localeIdentifier = [locale localeIdentifier];
  [paramsCopy setValue:localeIdentifier forKey:@"KEYBOARD_LANGUAGE"];

  getSamples = [dataCopy getSamples];
  [paramsCopy setObject:getSamples forKey:@"INPUT_SAMPLES"];

  [paramsCopy setValue:@"0" forKey:@"WORD_LEARNING_ENABLED"];
  v25 = objc_alloc_init(MEMORY[0x277D6FF58]);
  [v25 resetOptions:paramsCopy];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v45 = __Block_byref_object_copy__1;
  v46 = __Block_byref_object_dispose__1;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(dataCopy, "numSamples")}];
  [*(*&buf[8] + 40) setObject:v26 forKeyedSubscript:@"Samples"];

  v27 = dispatch_semaphore_create(0);
  dispatch_get_global_queue(0, 0);
  v28 = paramsCopy;
  v29 = v17;
  v30 = dataCopy;
  v31 = v13;
  v32 = stringByDeletingPathExtension;
  v34 = v33 = pathCopy;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__NLPLearnerACTShadowEvaluator_runACTWithParams_modelPath_data___block_invoke;
  block[3] = &unk_279928D08;
  v42 = v27;
  v43 = buf;
  v41 = v25;
  v35 = v27;
  v36 = v25;
  dispatch_async(v34, block);

  v37 = dispatch_time(0, 600000000000);
  dispatch_semaphore_wait(v35, v37);
  v38 = *(*&buf[8] + 40);

  _Block_object_dispose(buf, 8);

  return v38;
}

void __64__NLPLearnerACTShadowEvaluator_runACTWithParams_modelPath_data___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __64__NLPLearnerACTShadowEvaluator_runACTWithParams_modelPath_data___block_invoke_2;
  v4[3] = &unk_279928CE0;
  v3 = *(a1 + 40);
  v2 = v3;
  v5 = v3;
  [v1 runWithObserver:v4];
}

void __64__NLPLearnerACTShadowEvaluator_runACTWithParams_modelPath_data___block_invoke_2(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  if (reporterKeysToKeep_onceToken != -1)
  {
    __64__NLPLearnerACTShadowEvaluator_runACTWithParams_modelPath_data___block_invoke_2_cold_1();
  }

  v4 = reporterKeysToKeep_keysForCASchema;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        v10 = [v3 objectForKeyedSubscript:{v9, v11}];
        [*(*(*(a1 + 40) + 8) + 40) setObject:v10 forKeyedSubscript:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

+ (void)actParamFilesAtPath:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_25AE22000, v1, OS_LOG_TYPE_ERROR, "Cannot get list of act param files in : %@ with error: %@", v2, 0x16u);
}

+ (void)actParamFilesAtPath:(uint64_t)a1 .cold.2(uint64_t a1, void *a2)
{
  v2 = a2;
  v8 = supportedMetrics(v2);
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)evaluateModel:(void *)a1 onRecords:(void *)a2 options:completion:error:.cold.1(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 locale];
  v5 = [v4 localeIdentifier];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0xCu);
}

- (void)evaluateModel:(void *)a1 onRecords:(void *)a2 options:completion:error:.cold.2(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 path];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);
}

+ (void)actParametersFromConfig:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_25AE22000, v0, OS_LOG_TYPE_ERROR, "Failed to load parameter config for ACT evaluation: %@", v1, 0xCu);
}

@end