@interface LighthouseCoreMLModelTraining
+ (BOOL)trainModel:(id)model destModelUrl:(id)url modelConfiguration:(id)configuration dataBatch:(id)batch;
+ (BOOL)trainModel:(id)model destModelUrl:(id)url modelConfiguration:(id)configuration dataBatch:(id)batch labelFeatureName:(id)name;
+ (BOOL)validateModelFeatureName:(id)name modelConfiguration:(id)configuration dataBatch:(id)batch;
+ (id)evaluateModel:(id)model modelConfiguration:(id)configuration dataBatch:(id)batch;
+ (id)getLabelFeatureName:(id)name modelConfiguration:(id)configuration;
+ (void)initialize;
@end

@implementation LighthouseCoreMLModelTraining

+ (void)initialize
{
  if (initialize_onceToken != -1)
  {
    +[LighthouseCoreMLModelTraining initialize];
  }
}

uint64_t __43__LighthouseCoreMLModelTraining_initialize__block_invoke()
{
  trainingLog = os_log_create("com.apple.LighthouseCoreMLModelAnalysis.Training", "general");

  return MEMORY[0x2821F96F8]();
}

+ (BOOL)validateModelFeatureName:(id)name modelConfiguration:(id)configuration dataBatch:(id)batch
{
  v41 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  configurationCopy = configuration;
  batchCopy = batch;
  if ([batchCopy count])
  {
    v10 = [batchCopy featuresAtIndex:0];
    if (configurationCopy)
    {
      v38 = 0;
      v11 = &v38;
      v12 = [MEMORY[0x277CBFF20] modelWithContentsOfURL:nameCopy configuration:configurationCopy error:&v38];
    }

    else
    {
      v39 = 0;
      v11 = &v39;
      v12 = [MEMORY[0x277CBFF20] modelWithContentsOfURL:nameCopy error:&v39];
    }

    v14 = v12;
    v15 = *v11;
    v16 = v15;
    if (v14)
    {
      v33 = v15;
      modelDescription = [v14 modelDescription];
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      featureNames = [v10 featureNames];
      v19 = [featureNames countByEnumeratingWithState:&v34 objects:v40 count:16];
      if (v19)
      {
        v20 = v19;
        v29 = v14;
        v30 = v10;
        v31 = configurationCopy;
        v32 = nameCopy;
        v21 = *v35;
        while (2)
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v35 != v21)
            {
              objc_enumerationMutation(featureNames);
            }

            v23 = *(*(&v34 + 1) + 8 * i);
            inputFeatureNames = [modelDescription inputFeatureNames];
            if ([inputFeatureNames containsObject:v23])
            {
            }

            else
            {
              outputFeatureNames = [modelDescription outputFeatureNames];
              v26 = [outputFeatureNames containsObject:v23];

              if ((v26 & 1) == 0)
              {
                v27 = trainingLog;
                if (os_log_type_enabled(trainingLog, OS_LOG_TYPE_ERROR))
                {
                  [LighthouseCoreMLModelTraining validateModelFeatureName:v23 modelConfiguration:v27 dataBatch:modelDescription];
                }

                v13 = 0;
                goto LABEL_26;
              }
            }
          }

          v20 = [featureNames countByEnumeratingWithState:&v34 objects:v40 count:16];
          if (v20)
          {
            continue;
          }

          break;
        }

        v13 = 1;
LABEL_26:
        configurationCopy = v31;
        nameCopy = v32;
        v14 = v29;
        v10 = v30;
      }

      else
      {
        v13 = 1;
      }

      v16 = v33;
    }

    else
    {
      if (os_log_type_enabled(trainingLog, OS_LOG_TYPE_ERROR))
      {
        +[LighthouseCoreMLModelTraining validateModelFeatureName:modelConfiguration:dataBatch:];
      }

      v13 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(trainingLog, OS_LOG_TYPE_ERROR))
    {
      +[LighthouseCoreMLModelTraining validateModelFeatureName:modelConfiguration:dataBatch:];
    }

    v13 = 0;
  }

  return v13;
}

+ (id)getLabelFeatureName:(id)name modelConfiguration:(id)configuration
{
  nameCopy = name;
  configurationCopy = configuration;
  if (configurationCopy)
  {
    v15 = 0;
    v7 = &v15;
    v8 = [MEMORY[0x277CBFF20] modelWithContentsOfURL:nameCopy configuration:configurationCopy error:&v15];
  }

  else
  {
    v16 = 0;
    v7 = &v16;
    v8 = [MEMORY[0x277CBFF20] modelWithContentsOfURL:nameCopy error:&v16];
  }

  v9 = v8;
  v10 = *v7;
  if (v9)
  {
    modelDescription = [v9 modelDescription];
    inputFeatureNames = [modelDescription inputFeatureNames];
    v13 = [inputFeatureNames objectAtIndexedSubscript:0];
  }

  else
  {
    if (os_log_type_enabled(trainingLog, OS_LOG_TYPE_ERROR))
    {
      +[LighthouseCoreMLModelTraining validateModelFeatureName:modelConfiguration:dataBatch:];
    }

    v13 = 0;
  }

  return v13;
}

+ (BOOL)trainModel:(id)model destModelUrl:(id)url modelConfiguration:(id)configuration dataBatch:(id)batch
{
  batchCopy = batch;
  configurationCopy = configuration;
  urlCopy = url;
  modelCopy = model;
  v13 = [LighthouseCoreMLModelTraining getLabelFeatureName:modelCopy modelConfiguration:configurationCopy];
  v14 = [LighthouseCoreMLModelTraining trainModel:modelCopy destModelUrl:urlCopy modelConfiguration:configurationCopy dataBatch:batchCopy labelFeatureName:v13];

  return v14;
}

+ (BOOL)trainModel:(id)model destModelUrl:(id)url modelConfiguration:(id)configuration dataBatch:(id)batch labelFeatureName:(id)name
{
  v64 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  urlCopy = url;
  configurationCopy = configuration;
  batchCopy = batch;
  nameCopy = name;
  v14 = trainingLog;
  if (os_log_type_enabled(trainingLog, OS_LOG_TYPE_INFO))
  {
    v15 = v14;
    absoluteURL = [modelCopy absoluteURL];
    *buf = 138412546;
    *&buf[4] = absoluteURL;
    *&buf[12] = 2048;
    *&buf[14] = [batchCopy count];
    _os_log_impl(&dword_255F35000, v15, OS_LOG_TYPE_INFO, "Begin trainModel with model URL %@ and number of samples: %ld", buf, 0x16u);
  }

  if ([LighthouseCoreMLModelTraining validateModelFeatureName:modelCopy modelConfiguration:configurationCopy dataBatch:batchCopy])
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v61 = __Block_byref_object_copy_;
    v62 = __Block_byref_object_dispose_;
    v63 = 0;
    v52 = 0;
    v53 = &v52;
    v54 = 0x3032000000;
    v55 = __Block_byref_object_copy_;
    v56 = __Block_byref_object_dispose_;
    v57 = dispatch_semaphore_create(0);
    v48 = 0;
    v49 = &v48;
    v50 = 0x2020000000;
    v51 = 0;
    v17 = batchCopy;
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __103__LighthouseCoreMLModelTraining_trainModel_destModelUrl_modelConfiguration_dataBatch_labelFeatureName___block_invoke_67;
    v42[3] = &unk_2798168E8;
    v43 = urlCopy;
    v18 = modelCopy;
    v44 = v18;
    v45 = &v48;
    v46 = buf;
    v47 = &v52;
    v38 = MEMORY[0x259C522A0](v42);
    v37 = [objc_alloc(MEMORY[0x277CBFF80]) initForEvents:3 progressHandler:&__block_literal_global_66 completionHandler:v38];
    if (v17 && [v17 count])
    {
      v19 = trainingLog;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v17, "count")}];
        *v58 = 138412290;
        v59 = v20;
        _os_log_impl(&dword_255F35000, v19, OS_LOG_TYPE_INFO, "Update task will be initiated with %@ number of samples", v58, 0xCu);
      }

      v21 = trainingLog;
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        parameters = [configurationCopy parameters];
        *v58 = 138412290;
        v59 = parameters;
        _os_log_impl(&dword_255F35000, v21, OS_LOG_TYPE_INFO, "Config: %@", v58, 0xCu);
      }

      v23 = *&buf[8];
      obj = *(*&buf[8] + 40);
      v24 = [MEMORY[0x277CBFF88] updateTaskForModelAtURL:v18 trainingData:v17 configuration:configurationCopy progressHandlers:v37 error:&obj];
      objc_storeStrong((v23 + 40), obj);
      if (*(*&buf[8] + 40))
      {
        v25 = trainingLog;
        if (os_log_type_enabled(trainingLog, OS_LOG_TYPE_INFO))
        {
          v26 = *(*&buf[8] + 40);
          *v58 = 138412290;
          v59 = v26;
          _os_log_impl(&dword_255F35000, v25, OS_LOG_TYPE_INFO, "updateTaskForModelAtURL caused error: %@", v58, 0xCu);
        }

        goto LABEL_18;
      }

      [v24 resume];
      v36 = trainingLog;
      if (os_log_type_enabled(trainingLog, OS_LOG_TYPE_INFO))
      {
        *v58 = 0;
        _os_log_impl(&dword_255F35000, v36, OS_LOG_TYPE_INFO, "updateTaskForModelAtURL initiated", v58, 2u);
      }
    }

    else
    {
      v28 = trainingLog;
      if (os_log_type_enabled(trainingLog, OS_LOG_TYPE_INFO))
      {
        *v58 = 0;
        _os_log_impl(&dword_255F35000, v28, OS_LOG_TYPE_INFO, "updateTaskForModelAtURL is not initiated due to lack of training data", v58, 2u);
      }

      dispatch_semaphore_signal(v53[5]);
    }

    dispatch_semaphore_wait(v53[5], 0xFFFFFFFFFFFFFFFFLL);
    v29 = objc_alloc(MEMORY[0x277D23490]);
    lastPathComponent = [v18 lastPathComponent];
    v31 = objc_alloc(MEMORY[0x277D23468]);
    v32 = [MEMORY[0x277D23448] fromMLProvider:v17];
    v33 = [v31 init:v32 labelFeatureName:nameCopy];
    v34 = [MEMORY[0x277CCABB0] numberWithBool:*(v49 + 24)];
    v24 = [v29 init:lastPathComponent batchProviderInfo:v33 succeeded:v34 trainingError:*(*&buf[8] + 40)];

    [MEMORY[0x277D23470] emitModelTrainingEvent:v24];
LABEL_18:
    v27 = *(v49 + 24);

    _Block_object_dispose(&v48, 8);
    _Block_object_dispose(&v52, 8);

    _Block_object_dispose(buf, 8);
    goto LABEL_19;
  }

  v27 = 0;
LABEL_19:

  return v27 & 1;
}

void __103__LighthouseCoreMLModelTraining_trainModel_destModelUrl_modelConfiguration_dataBatch_labelFeatureName___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 task];
  v4 = [v3 error];

  if (v4)
  {
    v5 = trainingLog;
    if (os_log_type_enabled(trainingLog, OS_LOG_TYPE_ERROR))
    {
      __103__LighthouseCoreMLModelTraining_trainModel_destModelUrl_modelConfiguration_dataBatch_labelFeatureName___block_invoke_cold_1(v5, v2);
    }
  }
}

void __103__LighthouseCoreMLModelTraining_trainModel_destModelUrl_modelConfiguration_dataBatch_labelFeatureName___block_invoke_67(void *a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = trainingLog;
  if (os_log_type_enabled(trainingLog, OS_LOG_TYPE_INFO))
  {
    v5 = a1[4];
    if (!v5)
    {
      v5 = a1[5];
    }

    *buf = 138412290;
    v15 = v5;
    _os_log_impl(&dword_255F35000, v4, OS_LOG_TYPE_INFO, "Saving the adapted model at %@", buf, 0xCu);
  }

  v6 = [v3 model];
  v7 = v6;
  v8 = a1[4];
  if (!v8)
  {
    v8 = a1[5];
  }

  v9 = *(a1[7] + 8);
  obj = *(v9 + 40);
  v10 = [v6 writeToURL:v8 error:&obj];
  objc_storeStrong((v9 + 40), obj);
  *(*(a1[6] + 8) + 24) = v10;

  if (*(*(a1[7] + 8) + 40) || (*(*(a1[6] + 8) + 24) & 1) == 0)
  {
    if (os_log_type_enabled(trainingLog, OS_LOG_TYPE_ERROR))
    {
      __103__LighthouseCoreMLModelTraining_trainModel_destModelUrl_modelConfiguration_dataBatch_labelFeatureName___block_invoke_67_cold_1();
    }
  }

  else
  {
    v11 = MEMORY[0x277D234A8];
    v12 = [MEMORY[0x277CBEAA8] now];
    [v11 setLastTrainedDate:v12];
  }

  dispatch_semaphore_signal(*(*(a1[8] + 8) + 40));
}

+ (id)evaluateModel:(id)model modelConfiguration:(id)configuration dataBatch:(id)batch
{
  v43 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  configurationCopy = configuration;
  batchCopy = batch;
  if (configurationCopy)
  {
    v39 = 0;
    v10 = &v39;
    v11 = [MEMORY[0x277CBFF20] modelWithContentsOfURL:modelCopy configuration:configurationCopy error:&v39];
  }

  else
  {
    v40 = 0;
    v10 = &v40;
    v11 = [MEMORY[0x277CBFF20] modelWithContentsOfURL:modelCopy error:&v40];
  }

  v12 = v11;
  v13 = *v10;
  v14 = trainingLog;
  if (v13)
  {
    v15 = 1;
  }

  else
  {
    v15 = v12 == 0;
  }

  if (!v15)
  {
    if (os_log_type_enabled(trainingLog, OS_LOG_TYPE_INFO))
    {
      v19 = v14;
      absoluteString = [modelCopy absoluteString];
      *buf = 138412290;
      v42 = absoluteString;
      _os_log_impl(&dword_255F35000, v19, OS_LOG_TYPE_INFO, "Loaded ML Model at path %@", buf, 0xCu);
    }

    v38 = 0;
    v21 = [v12 predictionsFromBatch:batchCopy error:&v38];
    v16 = v38;
    v22 = trainingLog;
    if (v16)
    {
      if (os_log_type_enabled(trainingLog, OS_LOG_TYPE_ERROR))
      {
        +[LighthouseCoreMLModelTraining evaluateModel:modelConfiguration:dataBatch:];
      }
    }

    else
    {
      if (os_log_type_enabled(trainingLog, OS_LOG_TYPE_INFO))
      {
        v23 = v22;
        v24 = [v21 count];
        *buf = 134217984;
        v42 = v24;
        _os_log_impl(&dword_255F35000, v23, OS_LOG_TYPE_INFO, "Predicted on %ld number of batches", buf, 0xCu);
      }

      if ([v21 count] < 1)
      {
        v33 = 0.0;
        v32 = 0.0;
LABEL_28:
        v17 = objc_opt_new();
        *&v34 = v32 / v33;
        v35 = [MEMORY[0x277CCABB0] numberWithFloat:v34];
        [v17 setAccuracy:v35];

        goto LABEL_36;
      }

      v37 = configurationCopy;
      v25 = 0;
      v26 = 0;
      while (1)
      {
        v27 = [v21 featuresAtIndex:v26];
        v28 = [v27 objectForKeyedSubscript:@"WasShareRecipient"];

        v29 = [batchCopy featuresAtIndex:v26];
        v30 = [v29 featureValueForName:@"WasShareRecipient"];

        if (!v28)
        {
          break;
        }

        if (!v30)
        {
          configurationCopy = v37;
          if (os_log_type_enabled(trainingLog, OS_LOG_TYPE_ERROR))
          {
            +[LighthouseCoreMLModelTraining evaluateModel:modelConfiguration:dataBatch:];
          }

          goto LABEL_34;
        }

        int64Value = [v28 int64Value];
        if (int64Value == [v30 int64Value])
        {
          ++v25;
        }

        ++v26;

        if (v26 >= [v21 count])
        {
          v32 = v25;
          v33 = v26;
          configurationCopy = v37;
          goto LABEL_28;
        }
      }

      configurationCopy = v37;
      if (os_log_type_enabled(trainingLog, OS_LOG_TYPE_ERROR))
      {
        +[LighthouseCoreMLModelTraining evaluateModel:modelConfiguration:dataBatch:];
      }

LABEL_34:
    }

    v17 = 0;
LABEL_36:

    goto LABEL_37;
  }

  v16 = v13;
  if (os_log_type_enabled(trainingLog, OS_LOG_TYPE_ERROR))
  {
    [LighthouseCoreMLModelTraining evaluateModel:v14 modelConfiguration:modelCopy dataBatch:?];
  }

  v17 = 0;
LABEL_37:

  return v17;
}

+ (void)validateModelFeatureName:(uint64_t)a1 modelConfiguration:(void *)a2 dataBatch:(void *)a3 .cold.1(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [a3 inputFeatureNames];
  v7 = [a3 outputFeatureNames];
  v8 = 138412802;
  v9 = a1;
  v10 = 2112;
  v11 = v6;
  v12 = 2112;
  v13 = v7;
  _os_log_error_impl(&dword_255F35000, v5, OS_LOG_TYPE_ERROR, "featureName %@ is not in modelDescription %@ %@", &v8, 0x20u);
}

+ (void)validateModelFeatureName:modelConfiguration:dataBatch:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __103__LighthouseCoreMLModelTraining_trainModel_destModelUrl_modelConfiguration_dataBatch_labelFeatureName___block_invoke_cold_1(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 task];
  v5 = [v4 error];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_255F35000, v6, v7, "context.task.error: %@", v8, v9, v10, v11);
}

+ (void)evaluateModel:(void *)a1 modelConfiguration:(void *)a2 dataBatch:.cold.1(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 absoluteString];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_255F35000, v5, v6, "Failed to load ML Model at path：%@", v7, v8, v9, v10);
}

+ (void)evaluateModel:modelConfiguration:dataBatch:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end