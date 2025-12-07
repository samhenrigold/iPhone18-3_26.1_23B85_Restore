@interface ATXWidgetPredictionTrainingDatasetBuilder
- (ATXWidgetPredictionTrainingDatasetBuilder)initWithDistinctScoreCounts:(id)counts;
- (id)createMLArrayBatchProviderFromTrainingArray:(id)array;
- (id)featureDictionaryWithWidgetEngagementRecord:(id)record;
- (id)mlFeatureKeyMapping;
- (id)mlFeatureValueForFeatureName:(id)name withWidgetEngagementRecord:(id)record withFeatureMapping:(id)mapping;
- (id)propertyNameForInputFeatureName:(id)name;
- (void)populateAdditionalFeaturesWithMultiArray:(id)array forWidgetEngagementRecord:(id)record;
@end

@implementation ATXWidgetPredictionTrainingDatasetBuilder

- (ATXWidgetPredictionTrainingDatasetBuilder)initWithDistinctScoreCounts:(id)counts
{
  countsCopy = counts;
  v9.receiver = self;
  v9.super_class = ATXWidgetPredictionTrainingDatasetBuilder;
  v6 = [(ATXWidgetPredictionTrainingDatasetBuilder *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_distinctScoreCounts, counts);
  }

  return v7;
}

- (void)populateAdditionalFeaturesWithMultiArray:(id)array forWidgetEngagementRecord:(id)record
{
  v6 = MEMORY[0x277D42648];
  recordCopy = record;
  arrayCopy = array;
  widgetBundleId = [recordCopy widgetBundleId];
  widgetKind = [recordCopy widgetKind];

  v12 = [v6 tupleWithFirst:widgetBundleId second:widgetKind];

  v11 = [(NSDictionary *)self->_distinctScoreCounts objectForKeyedSubscript:v12];
  [arrayCopy setObject:v11 atIndexedSubscript:0];
}

- (id)createMLArrayBatchProviderFromTrainingArray:(id)array
{
  v40 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  array = [MEMORY[0x277CBEB18] array];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v6 = arrayCopy;
  v7 = [v6 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v36;
    v10 = @"Engaged";
    while (2)
    {
      v11 = 0;
      v30 = v8;
      do
      {
        if (*v36 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v35 + 1) + 8 * v11);
        context = objc_autoreleasePoolPush();
        v13 = [(ATXWidgetPredictionTrainingDatasetBuilder *)self featureDictionaryWithWidgetEngagementRecord:v12];
        type = [v12 type];
        v15 = v10;
        if (type != 1)
        {
          if ([v12 type] == 2)
          {
            v15 = v10;
          }

          else
          {
            v15 = @"Not Engaged";
          }
        }

        v16 = [MEMORY[0x277CBFEF8] featureValueWithString:{v15, v30}];
        [v13 setObject:v16 forKeyedSubscript:@"classLabel"];

        v17 = objc_alloc(MEMORY[0x277CBFED0]);
        v34 = 0;
        v18 = [v17 initWithDictionary:v13 error:&v34];
        v19 = v18;
        if (v34)
        {
          v20 = 1;
        }

        else
        {
          v20 = v18 == 0;
        }

        v21 = !v20;
        if (v20)
        {
          v22 = v10;
          v23 = v9;
          selfCopy = self;
          v25 = v6;
          v26 = array;
          v27 = __atxlog_handle_timeline(v18);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            [(ATXWidgetPredictionTrainingDatasetBuilder *)&buf createMLArrayBatchProviderFromTrainingArray:v33, v27];
          }

          array = v26;
          v6 = v25;
          self = selfCopy;
          v9 = v23;
          v10 = v22;
          v8 = v30;
        }

        else
        {
          [array addObject:v18];
        }

        objc_autoreleasePoolPop(context);
        if (!v21)
        {

          v28 = 0;
          goto LABEL_26;
        }

        ++v11;
      }

      while (v8 != v11);
      v8 = [v6 countByEnumeratingWithState:&v35 objects:v39 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v28 = [objc_alloc(MEMORY[0x277CBFEB0]) initWithFeatureProviderArray:array];
LABEL_26:

  return v28;
}

- (id)featureDictionaryWithWidgetEngagementRecord:(id)record
{
  v20 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  v5 = objc_opt_new();
  mlFeatureKeyMapping = [(ATXWidgetPredictionTrainingDatasetBuilder *)self mlFeatureKeyMapping];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  allKeys = [mlFeatureKeyMapping allKeys];
  v8 = [allKeys countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(allKeys);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        v13 = [(ATXWidgetPredictionTrainingDatasetBuilder *)self mlFeatureValueForFeatureName:v12 withWidgetEngagementRecord:recordCopy withFeatureMapping:mlFeatureKeyMapping];
        [v5 setObject:v13 forKeyedSubscript:v12];
      }

      v9 = [allKeys countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  return v5;
}

- (id)mlFeatureValueForFeatureName:(id)name withWidgetEngagementRecord:(id)record withFeatureMapping:(id)mapping
{
  nameCopy = name;
  recordCopy = record;
  mappingCopy = mapping;
  v21 = 0;
  v11 = [objc_alloc(MEMORY[0x277CBFF48]) initWithShape:&unk_283A57D10 dataType:65568 error:&v21];
  v12 = v21;
  v13 = v12;
  if (v12)
  {
    v14 = __atxlog_handle_timeline(v12);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [ATXWidgetPredictionTrainingDatasetBuilder mlFeatureValueForFeatureName:nameCopy withWidgetEngagementRecord:v14 withFeatureMapping:?];
    }

    v15 = 0;
  }

  else
  {
    v16 = [mappingCopy objectForKeyedSubscript:nameCopy];
    bOOLValue = [v16 BOOLValue];

    if (bOOLValue)
    {
      v18 = [(ATXWidgetPredictionTrainingDatasetBuilder *)self propertyNameForInputFeatureName:nameCopy];
      v19 = [recordCopy valueForKey:v18];
      [v11 setObject:v19 atIndexedSubscript:0];
    }

    else
    {
      [(ATXWidgetPredictionTrainingDatasetBuilder *)self populateAdditionalFeaturesWithMultiArray:v11 forWidgetEngagementRecord:recordCopy];
    }

    v15 = [MEMORY[0x277CBFEF8] featureValueWithMultiArray:v11];
  }

  return v15;
}

- (id)mlFeatureKeyMapping
{
  v7[2] = *MEMORY[0x277D85DE8];
  v6[0] = @"input_widget_family";
  v2 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v6[1] = @"input_unique_score_count";
  v7[0] = v2;
  v3 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v7[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

- (id)propertyNameForInputFeatureName:(id)name
{
  v11[1] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v10 = @"input_widget_family";
  v11[0] = @"widgetFamily";
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v5 = [v4 objectForKeyedSubscript:nameCopy];

  if (!v5)
  {
    v7 = __atxlog_handle_timeline(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [(ATXWidgetPredictionTrainingDatasetBuilder *)nameCopy propertyNameForInputFeatureName:v7];
    }
  }

  v8 = [v4 objectForKeyedSubscript:nameCopy];

  return v8;
}

- (void)createMLArrayBatchProviderFromTrainingArray:(os_log_t)log .cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_2263AA000, log, OS_LOG_TYPE_ERROR, "ATXWidgetPredictionTrainingDatasetBuilder: Error initializing MLDictionaryFeatureProvider", buf, 2u);
}

- (void)mlFeatureValueForFeatureName:(uint64_t)a1 withWidgetEngagementRecord:(NSObject *)a2 withFeatureMapping:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "ATXWidgetPredictionTrainingDatasetBuilder: Error initializing MLMultiArray for input feature: %{public}@", &v2, 0xCu);
}

- (void)propertyNameForInputFeatureName:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_fault_impl(&dword_2263AA000, a2, OS_LOG_TYPE_FAULT, "ATXWidgetPredictionTrainingDatasetBuilder: unexpected input feature: %{public}@", &v2, 0xCu);
}

@end