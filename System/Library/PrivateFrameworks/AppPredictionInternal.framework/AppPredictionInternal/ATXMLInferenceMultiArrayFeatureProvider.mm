@interface ATXMLInferenceMultiArrayFeatureProvider
- (ATXMLInferenceMultiArrayFeatureProvider)initWithPredictionItem:(ATXPredictionItem *)item featuresToConcatenate:(id)concatenate;
- (NSSet)featureNames;
- (id).cxx_construct;
- (id)featureValueForName:(id)name;
- (void)setPredictionItem:(ATXPredictionItem *)item;
@end

@implementation ATXMLInferenceMultiArrayFeatureProvider

- (ATXMLInferenceMultiArrayFeatureProvider)initWithPredictionItem:(ATXPredictionItem *)item featuresToConcatenate:(id)concatenate
{
  concatenateCopy = concatenate;
  v10.receiver = self;
  v10.super_class = ATXMLInferenceMultiArrayFeatureProvider;
  v7 = [(ATXMLInferenceMultiArrayFeatureProvider *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(ATXMLInferenceMultiArrayFeatureProvider *)v7 setPredictionItem:item];
    [(ATXMLInferenceMultiArrayFeatureProvider *)v8 setFeaturesToConcatenate:concatenateCopy];
  }

  return v8;
}

- (NSSet)featureNames
{
  featureNames = self->_featureNames;
  if (!featureNames)
  {
    v4 = [MEMORY[0x277CBEB98] setWithObject:@"input_feature_vector"];
    v5 = [v4 copy];
    v6 = self->_featureNames;
    self->_featureNames = v5;

    featureNames = self->_featureNames;
  }

  return featureNames;
}

- (id)featureValueForName:(id)name
{
  v26[2] = *MEMORY[0x277D85DE8];
  v4 = [name isEqualToString:@"input_feature_vector"];
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x277CBFF48]);
    v26[0] = &unk_283A56D08;
    v6 = MEMORY[0x277CCABB0];
    featuresToConcatenate = [(ATXMLInferenceMultiArrayFeatureProvider *)self featuresToConcatenate];
    v8 = [v6 numberWithUnsignedInteger:{objc_msgSend(featuresToConcatenate, "count")}];
    v26[1] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
    v25 = 0;
    v10 = [v5 initWithShape:v9 dataType:65568 error:&v25];
    v11 = v25;

    if (v11)
    {
      v13 = __atxlog_handle_ml_inference(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [(ATXMLInferenceMultiArrayFeatureProvider *)v11 featureValueForName:v13];
      }

      v14 = 0;
    }

    else
    {
      v15 = [[ATXMLInferenceFeatureProvider alloc] initWithPredictionItem:objc_msgSend_predictionItem(self)];
      featuresToConcatenate2 = [(ATXMLInferenceMultiArrayFeatureProvider *)self featuresToConcatenate];
      v19 = MEMORY[0x277D85DD0];
      v20 = 3221225472;
      v21 = __63__ATXMLInferenceMultiArrayFeatureProvider_featureValueForName___block_invoke;
      v22 = &unk_278598990;
      v17 = v10;
      v23 = v17;
      v13 = v15;
      v24 = v13;
      [featuresToConcatenate2 enumerateObjectsUsingBlock:&v19];

      v14 = [MEMORY[0x277CBFEF8] featureValueWithMultiArray:{v17, v19, v20, v21, v22}];
    }
  }

  else
  {
    v11 = __atxlog_handle_ml_inference(v4);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [ATXMLInferenceMultiArrayFeatureProvider featureValueForName:v11];
    }

    v14 = 0;
  }

  return v14;
}

void __63__ATXMLInferenceMultiArrayFeatureProvider_featureValueForName___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = MEMORY[0x277CCABB0];
  v7 = [*(a1 + 40) featureValueForName:a2];
  [v7 doubleValue];
  v6 = [v5 numberWithDouble:?];
  [*(a1 + 32) setObject:v6 atIndexedSubscript:a3];
}

- (void)setPredictionItem:(ATXPredictionItem *)item
{
  p_actionHash = &item->actionHash;
  objc_storeStrong(&self->_predictionItem.key, item->key);

  memcpy(&self->_predictionItem.actionHash, p_actionHash, 0xCFEuLL);
}

- (id).cxx_construct
{
  v2.i32[1] = -1059153344;
  *v2.i32 = -31337.0;
  *(self + 3) = 0;
  *(self + 838) = -31337.0;
  *(self + 1678) = 0;
  v3 = vdupq_lane_s32(v2, 0);
  for (i = 40; i != 3352; i += 16)
  {
    *(self + i) = v3;
  }

  return self;
}

- (void)featureValueForName:(os_log_t)log .cold.1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 138412290;
  v2 = @"input_feature_vector";
  _os_log_fault_impl(&dword_2263AA000, log, OS_LOG_TYPE_FAULT, "ATXMLInferenceMultiArrayFeatureProvider can only provide the %@ feature.", &v1, 0xCu);
}

- (void)featureValueForName:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "Error in initializing MLMultiArray: %@", &v2, 0xCu);
}

@end