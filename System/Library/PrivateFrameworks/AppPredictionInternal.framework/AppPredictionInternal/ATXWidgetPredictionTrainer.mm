@interface ATXWidgetPredictionTrainer
+ (BOOL)shouldTrainModelOnDeviceWithTimeOfLatestTraining:(id)training;
+ (id)compiledModelURLForModelName:(id)name;
+ (void)moveOriginalModelToWriteablePath:(id)path;
- (ATXWidgetPredictionTrainer)initWithInformationStore:(id)store distinctScoreCounts:(id)counts;
- (id)_timeOfLatestTraining;
- (void)modelPredictionWithSampleDictionaryFeatureProvider:(id)provider withMLModel:(id)model;
- (void)trainWidgetPredictionModelWithActivity:(id)activity;
- (void)trainWidgetPredictionModelWithMLArrayBatchProvider:(id)provider modelURL:(id)l andSaveToURL:(id)rL withActivity:(id)activity;
@end

@implementation ATXWidgetPredictionTrainer

- (ATXWidgetPredictionTrainer)initWithInformationStore:(id)store distinctScoreCounts:(id)counts
{
  storeCopy = store;
  countsCopy = counts;
  v14.receiver = self;
  v14.super_class = ATXWidgetPredictionTrainer;
  v9 = [(ATXWidgetPredictionTrainer *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_informationStore, store);
    v11 = [[ATXWidgetPredictionTrainingDatasetBuilder alloc] initWithDistinctScoreCounts:countsCopy];
    datasetBuilder = v10->_datasetBuilder;
    v10->_datasetBuilder = v11;
  }

  return v10;
}

- (void)trainWidgetPredictionModelWithActivity:(id)activity
{
  v24 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  v5 = objc_opt_class();
  _timeOfLatestTraining = [(ATXWidgetPredictionTrainer *)self _timeOfLatestTraining];
  LODWORD(v5) = [v5 shouldTrainModelOnDeviceWithTimeOfLatestTraining:_timeOfLatestTraining];

  if (v5)
  {
    v8 = __atxlog_handle_timeline(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      LOWORD(v22) = 0;
      _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_INFO, "ATXWidgetPredictionTrainer: Preparing to train; it has been sufficiently long since the widget prediction model was trained on-device.", &v22, 2u);
    }

    fetchWidgetEngagementRecords = [(ATXInformationStore *)self->_informationStore fetchWidgetEngagementRecords];
    v10 = [(ATXWidgetPredictionTrainingDatasetBuilder *)self->_datasetBuilder createMLArrayBatchProviderFromTrainingArray:fetchWidgetEngagementRecords];
    v11 = [objc_opt_class() compiledModelURLForModelName:@"ATXWidgetPredictionMLModel"];
    v12 = [objc_opt_class() compiledModelURLForModelName:@"ATXPersonalizedWidgetPredictionMLModel"];
    [objc_opt_class() moveOriginalModelToWriteablePath:v11];
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    path = [v12 path];
    v15 = [defaultManager isReadableFileAtPath:path];

    if (v15)
    {
      v17 = __atxlog_handle_timeline(v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        path2 = [v12 path];
        v22 = 138412290;
        v23 = path2;
        _os_log_impl(&dword_2263AA000, v17, OS_LOG_TYPE_INFO, "Using model from the previous round of on-device training at path: %@", &v22, 0xCu);
      }

      v19 = v12;
      v11 = v19;
    }

    didDefer = [activityCopy didDefer];
    if (didDefer)
    {
      v21 = __atxlog_handle_timeline(didDefer);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v22) = 0;
        _os_log_impl(&dword_2263AA000, v21, OS_LOG_TYPE_DEFAULT, "ATXWidgetPredictionTrainer: Deferring model training", &v22, 2u);
      }
    }

    else
    {
      [(ATXWidgetPredictionTrainer *)self trainWidgetPredictionModelWithMLArrayBatchProvider:v10 modelURL:v11 andSaveToURL:v12 withActivity:activityCopy];
    }
  }
}

+ (BOOL)shouldTrainModelOnDeviceWithTimeOfLatestTraining:(id)training
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = [training dateByAddingTimeInterval:604800.0];
  if (training && ([MEMORY[0x277CBEAA8] now], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "laterDate:", v5), v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v6 == v4))
  {
    v9 = __atxlog_handle_timeline(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = MEMORY[0x277CCABB0];
      v11 = [MEMORY[0x277CBEAA8] now];
      [v4 timeIntervalSinceDate:v11];
      v13 = [v10 numberWithDouble:v12 / 3600.0];
      v15 = 138412290;
      v16 = v13;
      _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_INFO, "ATXWidgetPredictionTrainer: Next training date is in the future. Model will be retrained on-device in %@ hours", &v15, 0xCu);
    }

    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (void)trainWidgetPredictionModelWithMLArrayBatchProvider:(id)provider modelURL:(id)l andSaveToURL:(id)rL withActivity:(id)activity
{
  providerCopy = provider;
  lCopy = l;
  rLCopy = rL;
  activityCopy = activity;
  array = [providerCopy array];
  v15 = [array count];

  if (!v15)
  {
    v25 = __atxlog_handle_timeline(v16);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [ATXWidgetPredictionTrainer trainWidgetPredictionModelWithMLArrayBatchProvider:modelURL:andSaveToURL:withActivity:];
    }

    goto LABEL_14;
  }

  if (!rLCopy)
  {
    v25 = __atxlog_handle_timeline(v16);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      [ATXWidgetPredictionTrainer trainWidgetPredictionModelWithMLArrayBatchProvider:v25 modelURL:? andSaveToURL:? withActivity:?];
    }

LABEL_14:

    goto LABEL_15;
  }

  v41[0] = 0;
  v41[1] = v41;
  v41[2] = 0x3032000000;
  v41[3] = __Block_byref_object_copy__71;
  v41[4] = __Block_byref_object_dispose__71;
  v42 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__71;
  v39 = __Block_byref_object_dispose__71;
  v40 = dispatch_semaphore_create(0);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __116__ATXWidgetPredictionTrainer_trainWidgetPredictionModelWithMLArrayBatchProvider_modelURL_andSaveToURL_withActivity___block_invoke;
  aBlock[3] = &unk_27859F258;
  v34 = activityCopy;
  v17 = _Block_copy(aBlock);
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __116__ATXWidgetPredictionTrainer_trainWidgetPredictionModelWithMLArrayBatchProvider_modelURL_andSaveToURL_withActivity___block_invoke_29;
  v28[3] = &unk_27859F280;
  v31 = &v35;
  v32 = v41;
  v29 = rLCopy;
  selfCopy = self;
  v18 = _Block_copy(v28);
  v19 = [objc_alloc(MEMORY[0x277CBFF80]) initForEvents:3 progressHandler:v17 completionHandler:v18];
  v20 = __atxlog_handle_timeline(v19);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, v20, OS_LOG_TYPE_INFO, "ATXWidgetPredictionTrainer: Starting MLUpdateTask", buf, 2u);
  }

  v26 = 0;
  v21 = [MEMORY[0x277CBFF88] updateTaskForModelAtURL:lCopy trainingData:providerCopy progressHandlers:v19 error:&v26];
  v22 = v26;
  v23 = v22;
  if (v22)
  {
    v24 = __atxlog_handle_timeline(v22);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [ATXWidgetPredictionTrainer trainWidgetPredictionModelWithMLArrayBatchProvider:modelURL:andSaveToURL:withActivity:];
    }
  }

  [v21 resume];
  dispatch_semaphore_wait(v36[5], 0x384uLL);

  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(v41, 8);

LABEL_15:
}

void __116__ATXWidgetPredictionTrainer_trainWidgetPredictionModelWithMLArrayBatchProvider_modelURL_andSaveToURL_withActivity___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 task];
  v5 = [v4 error];

  if (v5)
  {
    v7 = __atxlog_handle_timeline(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __116__ATXWidgetPredictionTrainer_trainWidgetPredictionModelWithMLArrayBatchProvider_modelURL_andSaveToURL_withActivity___block_invoke_cold_1(v3);
    }
  }

  v8 = [*(a1 + 32) didDefer];
  if (v8)
  {
    v9 = __atxlog_handle_timeline(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_DEFAULT, "ATXWidgetPredictionTrainer: Deferring model training", v10, 2u);
    }
  }
}

void __116__ATXWidgetPredictionTrainer_trainWidgetPredictionModelWithMLArrayBatchProvider_modelURL_andSaveToURL_withActivity___block_invoke_29(void *a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 task];
  v5 = [v4 state];

  if (v5 == 5)
  {
    v7 = __atxlog_handle_timeline(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __116__ATXWidgetPredictionTrainer_trainWidgetPredictionModelWithMLArrayBatchProvider_modelURL_andSaveToURL_withActivity___block_invoke_29_cold_2(v3);
    }
  }

  else
  {
    v8 = [v3 task];
    v9 = [v8 state];

    if (v9 == 4)
    {
      v11 = __atxlog_handle_timeline(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = a1[4];
        *buf = 138543362;
        v24 = v12;
        _os_log_impl(&dword_2263AA000, v11, OS_LOG_TYPE_INFO, "Success! Completed on-device training of widget prediction model; Saving the personalized model to path: %{public}@", buf, 0xCu);
      }
    }

    v13 = [v3 model];
    v14 = a1[4];
    v15 = *(a1[7] + 8);
    obj = *(v15 + 40);
    v16 = [v13 writeToURL:v14 error:&obj];
    objc_storeStrong((v15 + 40), obj);

    v17 = *(*(a1[7] + 8) + 40);
    v19 = __atxlog_handle_timeline(v18);
    v7 = v19;
    if (v17 || (v16 & 1) == 0)
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        __116__ATXWidgetPredictionTrainer_trainWidgetPredictionModelWithMLArrayBatchProvider_modelURL_andSaveToURL_withActivity___block_invoke_29_cold_1();
      }
    }

    else
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = a1[4];
        *buf = 138543362;
        v24 = v20;
        _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_INFO, "Successfully saved the personalized model at path: %{public}@", buf, 0xCu);
      }

      v21 = a1[5];
      v7 = [MEMORY[0x277CBEAA8] now];
      [v21 _updateTimeOfLatestTrainingTo:v7];
    }
  }

  dispatch_semaphore_signal(*(*(a1[6] + 8) + 40));
}

+ (id)compiledModelURLForModelName:(id)name
{
  if (name)
  {
    v3 = MEMORY[0x277CEBCB0];
    name = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.mlmodelc", name];
    v5 = [v3 widgetPredictionModelFileWithFilename:name];

    v6 = [MEMORY[0x277CBEBC0] fileURLWithPath:v5];
  }

  else
  {
    v7 = __atxlog_handle_timeline(self);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      +[ATXWidgetPredictionTrainer compiledModelURLForModelName:];
    }

    v6 = 0;
  }

  return v6;
}

+ (void)moveOriginalModelToWriteablePath:(id)path
{
  v30 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v4 = [@"ATXWidgetPredictionMLModel" stringByAppendingPathExtension:@"mlmodelc"];
  v5 = MEMORY[0x277CBEBC0];
  asset = [MEMORY[0x277CEB3C0] asset];
  v7 = [asset filesystemPathForAssetDataRelativePath:v4];
  v8 = [v5 fileURLWithPath:v7];

  v10 = __atxlog_handle_timeline(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    path = [v8 path];
    path2 = [pathCopy path];
    *buf = 138543618;
    v25 = path;
    v26 = 2114;
    v27 = path2;
    _os_log_impl(&dword_2263AA000, v10, OS_LOG_TYPE_INFO, "Moving original model from %{public}@ to %{public}@", buf, 0x16u);
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path3 = [v8 path];
  if (![defaultManager isReadableFileAtPath:path3])
  {
    goto LABEL_8;
  }

  defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
  path4 = [pathCopy path];
  v17 = [defaultManager2 isReadableFileAtPath:path4];

  if ((v17 & 1) == 0)
  {
    defaultManager3 = [MEMORY[0x277CCAA00] defaultManager];
    v23 = 0;
    v19 = [defaultManager3 copyItemAtURL:v8 toURL:pathCopy error:&v23];
    defaultManager = v23;

    if (v19)
    {
LABEL_9:

      goto LABEL_10;
    }

    path3 = __atxlog_handle_timeline(v20);
    if (os_log_type_enabled(path3, OS_LOG_TYPE_ERROR))
    {
      path5 = [v8 path];
      path6 = [pathCopy path];
      *buf = 138543874;
      v25 = path5;
      v26 = 2114;
      v27 = path6;
      v28 = 2114;
      v29 = defaultManager;
      _os_log_error_impl(&dword_2263AA000, path3, OS_LOG_TYPE_ERROR, "Failed to move file from %{public}@ to %{public}@ with error %{public}@", buf, 0x20u);
    }

LABEL_8:

    goto LABEL_9;
  }

LABEL_10:
}

- (id)_timeOfLatestTraining
{
  v3 = objc_alloc(MEMORY[0x277CBEBD0]);
  v4 = [v3 initWithSuiteName:*MEMORY[0x277CEBD08]];
  defaults = self->_defaults;
  self->_defaults = v4;

  v6 = self->_defaults;

  return [(NSUserDefaults *)v6 objectForKey:@"timestampOfLastTraining"];
}

- (void)modelPredictionWithSampleDictionaryFeatureProvider:(id)provider withMLModel:(id)model
{
  v27 = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  modelCopy = model;
  if (!modelCopy)
  {
    v7 = objc_opt_new();
    [v7 setComputeUnits:0];
    v8 = [ATXWidgetPredictionTrainer compiledModelURLForModelName:@"ATXPersonalizedWidgetPredictionMLModel"];
    v20 = 0;
    modelCopy = [MEMORY[0x277CBFF20] modelWithContentsOfURL:v8 configuration:v7 error:&v20];
    v9 = v20;
    v10 = v9;
    if (v9)
    {
      v11 = __atxlog_handle_timeline(v9);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [ATXWidgetPredictionTrainer modelPredictionWithSampleDictionaryFeatureProvider:withMLModel:];
      }
    }
  }

  v19 = 0;
  v12 = [modelCopy predictionFromFeatures:providerCopy error:&v19];
  v13 = v19;
  v14 = __atxlog_handle_timeline(v13);
  v15 = v14;
  if (v13)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [ATXWidgetPredictionTrainer modelPredictionWithSampleDictionaryFeatureProvider:withMLModel:];
    }
  }

  else if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v16 = [v12 featureValueForName:@"engaged"];
    v17 = [providerCopy featureValueForName:@"input_widget_family"];
    v18 = [providerCopy featureValueForName:@"input_widget_family"];
    *buf = 138543874;
    v22 = v16;
    v23 = 2114;
    v24 = v17;
    v25 = 2114;
    v26 = v18;
    _os_log_impl(&dword_2263AA000, v15, OS_LOG_TYPE_INFO, "ATXWidgetPredictionTrainer: Output from model: %{public}@ for unique score count: %{public}@ widget family: %{public}@", buf, 0x20u);
  }
}

- (void)trainWidgetPredictionModelWithMLArrayBatchProvider:modelURL:andSaveToURL:withActivity:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __116__ATXWidgetPredictionTrainer_trainWidgetPredictionModelWithMLArrayBatchProvider_modelURL_andSaveToURL_withActivity___block_invoke_cold_1(void *a1)
{
  v1 = [a1 task];
  v2 = [v1 error];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(&dword_2263AA000, v3, v4, "ATXWidgetPredictionTrainer: Error encountered before MLUpdate task could complete; context.task.error: %{public}@", v5, v6, v7, v8);
}

void __116__ATXWidgetPredictionTrainer_trainWidgetPredictionModelWithMLArrayBatchProvider_modelURL_andSaveToURL_withActivity___block_invoke_29_cold_2(void *a1)
{
  v1 = [a1 task];
  v2 = [v1 error];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(&dword_2263AA000, v3, v4, "ML Update task failed with error%@", v5, v6, v7, v8);
}

- (void)modelPredictionWithSampleDictionaryFeatureProvider:withMLModel:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)modelPredictionWithSampleDictionaryFeatureProvider:withMLModel:.cold.2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end