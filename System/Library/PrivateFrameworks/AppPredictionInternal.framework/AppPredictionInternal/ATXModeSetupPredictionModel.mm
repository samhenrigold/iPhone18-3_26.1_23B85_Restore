@interface ATXModeSetupPredictionModel
- (ATXModeSetupPredictionModel)initWithMode:(unint64_t)mode;
- (double)probabilityScore;
- (id)featuresToModel;
- (id)modeSetupPredictionModel;
- (id)modelName;
- (void)modelName;
- (void)probabilityScore;
@end

@implementation ATXModeSetupPredictionModel

- (ATXModeSetupPredictionModel)initWithMode:(unint64_t)mode
{
  v5.receiver = self;
  v5.super_class = ATXModeSetupPredictionModel;
  result = [(ATXModeSetupPredictionModel *)&v5 init];
  if (result)
  {
    result->_mode = mode;
  }

  return result;
}

- (id)featuresToModel
{
  v3 = objc_opt_new();
  v4 = [[ATXModeSetupPredictionFeaturesCorrelator alloc] initWithMode:self->_mode features:v3];
  featureVector = [(ATXModeSetupPredictionFeaturesCorrelator *)v4 featureVector];

  return featureVector;
}

- (id)modelName
{
  p_mode = &self->_mode;
  v3 = [ATXFocusModeModelsUtil setupPredictionModelNameForMode:self->_mode];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = __atxlog_handle_modes(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(ATXModeSetupPredictionModel *)p_mode modelName];
    }
  }

  return v4;
}

- (id)modeSetupPredictionModel
{
  modelName = [(ATXModeSetupPredictionModel *)self modelName];
  v3 = [ATXCoreMLUtilities loadCoreMLModelWithName:modelName];

  return v3;
}

- (double)probabilityScore
{
  modeSetupPredictionModel = [(ATXModeSetupPredictionModel *)self modeSetupPredictionModel];
  if (modeSetupPredictionModel)
  {
    v4 = objc_alloc(MEMORY[0x277CBFED0]);
    featuresToModel = [(ATXModeSetupPredictionModel *)self featuresToModel];
    v19 = 0;
    v6 = [v4 initWithDictionary:featuresToModel error:&v19];
    v7 = v19;

    if (v7)
    {
      v9 = __atxlog_handle_modes(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [(ATXModeSetupPredictionModel *)v7 probabilityScore];
      }
    }

    v18 = v7;
    v10 = [modeSetupPredictionModel predictionFromFeatures:v6 error:&v18];
    v11 = v18;

    if (v11)
    {
      v13 = __atxlog_handle_modes(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [(ATXModeSetupPredictionModel *)v11 probabilityScore];
      }
    }

    v14 = [v10 featureValueForName:@"classProbability"];
    [ATXCoreMLUtilities scoreForModelOutputValue:v14 outputIndexedSubscript:1];
    v16 = v15;
  }

  else
  {
    v16 = 0.0;
  }

  return v16;
}

- (void)modelName
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = ATXModeToString();
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "ATXModeSetupPredictionModel: nil returned for CoreML model file name for this mode: %@", &v4, 0xCu);
}

- (void)probabilityScore
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "ATXModeSetupPredictionModel - Error during inference on the CoreMLModel: %@", &v2, 0xCu);
}

@end