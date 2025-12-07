@interface APOdmlRecipe
- (APOdmlRecipe)initWithDictionary:(id)dictionary;
- (APOdmlRecipe)initWithMLRTask:(id)task;
- (id)rangeBoundaryForFeature:(id)feature upperBound:(BOOL)bound;
- (id)rangeBoundaryForOutput:(BOOL)output;
- (id)sentinelValuesForFeature:(id)feature;
- (id)sentinelValuesForOutput;
@end

@implementation APOdmlRecipe

- (APOdmlRecipe)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v74.receiver = self;
  v74.super_class = APOdmlRecipe;
  v5 = [(APOdmlRecipe *)&v74 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"ModelType"];
    modelType = v5->_modelType;
    v5->_modelType = v6;

    v8 = [dictionaryCopy objectForKeyedSubscript:@"ModelFileName"];
    modelFileName = v5->_modelFileName;
    v5->_modelFileName = v8;

    v10 = [dictionaryCopy objectForKeyedSubscript:@"LossName"];
    lossName = v5->_lossName;
    v5->_lossName = v10;

    v12 = [dictionaryCopy objectForKeyedSubscript:@"LabelName"];
    labelName = v5->_labelName;
    v5->_labelName = v12;

    v14 = [dictionaryCopy objectForKeyedSubscript:@"LearningRateName"];
    learningRateName = v5->_learningRateName;
    v5->_learningRateName = v14;

    v16 = [dictionaryCopy objectForKeyedSubscript:@"InitName"];
    functionInitName = v5->_functionInitName;
    v5->_functionInitName = v16;

    v18 = [dictionaryCopy objectForKeyedSubscript:@"IsTrainingName"];
    isTrainingName = v5->_isTrainingName;
    v5->_isTrainingName = v18;

    v20 = [dictionaryCopy objectForKeyedSubscript:@"IsCounterfactual"];
    isCounterfactual = v5->_isCounterfactual;
    v5->_isCounterfactual = v20;

    v22 = [dictionaryCopy objectForKeyedSubscript:@"CentralDifferentialPrivacyParameters"];
    privacyParams = v5->_privacyParams;
    v5->_privacyParams = v22;

    v24 = [dictionaryCopy objectForKeyedSubscript:@"L2NormBound"];
    l2NormBound = v5->_l2NormBound;
    v5->_l2NormBound = v24;

    v26 = [dictionaryCopy objectForKeyedSubscript:@"LearningRate"];
    learningRate = v5->_learningRate;
    v5->_learningRate = v26;

    v28 = [dictionaryCopy objectForKeyedSubscript:@"NumLocalIterations"];
    localIterationsCount = v5->_localIterationsCount;
    v5->_localIterationsCount = v28;

    v30 = [dictionaryCopy objectForKeyedSubscript:@"TrainLayers"];
    trainLayers = v5->_trainLayers;
    v5->_trainLayers = v30;

    v32 = [dictionaryCopy objectForKeyedSubscript:@"WeightBySamples"];
    weightBySamples = v5->_weightBySamples;
    v5->_weightBySamples = v32;

    v34 = [dictionaryCopy objectForKeyedSubscript:@"shouldShuffle"];
    shouldShuffle = v5->_shouldShuffle;
    v5->_shouldShuffle = v34;

    v36 = [dictionaryCopy objectForKeyedSubscript:@"des_settings"];
    desSettings = v5->_desSettings;
    v5->_desSettings = v36;

    v38 = [dictionaryCopy objectForKeyedSubscript:@"iCloudAggServiceKey"];
    iCloudServiceKey = v5->_iCloudServiceKey;
    v5->_iCloudServiceKey = v38;

    v40 = [dictionaryCopy objectForKeyedSubscript:@"maxNorm"];
    maxNorm = v5->_maxNorm;
    v5->_maxNorm = v40;

    v42 = [dictionaryCopy objectForKeyedSubscript:@"minTrainingSamples"];
    minTrainingSamples = v5->_minTrainingSamples;
    v5->_minTrainingSamples = v42;

    v44 = [dictionaryCopy objectForKeyedSubscript:@"normBinCount"];
    normBinCount = v5->_normBinCount;
    v5->_normBinCount = v44;

    v46 = [dictionaryCopy objectForKeyedSubscript:@"WeightNames"];
    weightNames = v5->_weightNames;
    v5->_weightNames = v46;

    v48 = [dictionaryCopy objectForKeyedSubscript:@"batchSize"];
    batchSize = v5->_batchSize;
    v5->_batchSize = v48;

    v50 = [dictionaryCopy objectForKeyedSubscript:@"featureValueConfig"];
    featureValueConfig = v5->_featureValueConfig;
    v5->_featureValueConfig = v50;

    v52 = [dictionaryCopy objectForKeyedSubscript:@"modelOutputConfig"];
    modelOutputConfig = v5->_modelOutputConfig;
    v5->_modelOutputConfig = v52;

    v54 = [dictionaryCopy objectForKeyedSubscript:@"augmentedDESRecords"];
    augmentedDESRecords = v5->_augmentedDESRecords;
    v5->_augmentedDESRecords = v54;

    v56 = [dictionaryCopy objectForKeyedSubscript:@"augmentedDESRecordsLimit"];
    augmentedDESRecordsLimit = v5->_augmentedDESRecordsLimit;
    v5->_augmentedDESRecordsLimit = v56;

    v58 = [dictionaryCopy objectForKeyedSubscript:@"augmentedDESRecordsRatio"];
    augmentedDESRecordsRatio = v5->_augmentedDESRecordsRatio;
    v5->_augmentedDESRecordsRatio = v58;

    v60 = [dictionaryCopy objectForKeyedSubscript:@"augmentedDESRecordsTruePercentage"];
    augmentedDESRecordsTruePercentage = v5->_augmentedDESRecordsTruePercentage;
    v5->_augmentedDESRecordsTruePercentage = v60;

    v62 = [dictionaryCopy objectForKeyedSubscript:@"augmentedDESRecordsTargetKey"];
    augmentedDESRecordsTargetKey = v5->_augmentedDESRecordsTargetKey;
    v5->_augmentedDESRecordsTargetKey = v62;

    v64 = [dictionaryCopy objectForKeyedSubscript:@"InputNames"];
    inputNames = v5->_inputNames;
    v5->_inputNames = v64;

    v66 = [dictionaryCopy objectForKeyedSubscript:@"OutputNames"];
    outputNames = v5->_outputNames;
    v5->_outputNames = v66;

    v68 = [dictionaryCopy objectForKeyedSubscript:@"MILModel"];

    if (v68)
    {
      v69 = [APOdmlRecipe alloc];
      v70 = [dictionaryCopy objectForKeyedSubscript:@"MILModel"];
      v71 = [(APOdmlRecipe *)v69 initWithDictionary:v70];
      coreMLRecipe = v5->_coreMLRecipe;
      v5->_coreMLRecipe = v71;
    }
  }

  return v5;
}

- (APOdmlRecipe)initWithMLRTask:(id)task
{
  parameters = [task parameters];
  v66.receiver = self;
  v66.super_class = APOdmlRecipe;
  v5 = [(APOdmlRecipe *)&v66 init];
  if (v5)
  {
    v6 = parameters == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v7 = [parameters objectForKeyedSubscript:@"ModelType"];
    modelType = v5->_modelType;
    v5->_modelType = v7;

    v9 = [parameters objectForKeyedSubscript:@"ModelFileName"];
    modelFileName = v5->_modelFileName;
    v5->_modelFileName = v9;

    v11 = [parameters objectForKeyedSubscript:@"LossName"];
    lossName = v5->_lossName;
    v5->_lossName = v11;

    v13 = [parameters objectForKeyedSubscript:@"LabelName"];
    labelName = v5->_labelName;
    v5->_labelName = v13;

    v15 = [parameters objectForKeyedSubscript:@"LearningRateName"];
    learningRateName = v5->_learningRateName;
    v5->_learningRateName = v15;

    v17 = [parameters objectForKeyedSubscript:@"InitName"];
    functionInitName = v5->_functionInitName;
    v5->_functionInitName = v17;

    v19 = [parameters objectForKeyedSubscript:@"IsTrainingName"];
    isTrainingName = v5->_isTrainingName;
    v5->_isTrainingName = v19;

    v21 = [parameters objectForKeyedSubscript:@"IsCounterfactual"];
    isCounterfactual = v5->_isCounterfactual;
    v5->_isCounterfactual = v21;

    v23 = [parameters objectForKeyedSubscript:@"CentralDifferentialPrivacyParameters"];
    privacyParams = v5->_privacyParams;
    v5->_privacyParams = v23;

    v25 = [parameters objectForKeyedSubscript:@"L2NormBound"];
    l2NormBound = v5->_l2NormBound;
    v5->_l2NormBound = v25;

    v27 = [parameters objectForKeyedSubscript:@"LearningRate"];
    learningRate = v5->_learningRate;
    v5->_learningRate = v27;

    v29 = [parameters objectForKeyedSubscript:@"NumLocalIterations"];
    localIterationsCount = v5->_localIterationsCount;
    v5->_localIterationsCount = v29;

    v31 = [parameters objectForKeyedSubscript:@"TrainLayers"];
    trainLayers = v5->_trainLayers;
    v5->_trainLayers = v31;

    v33 = [parameters objectForKeyedSubscript:@"WeightBySamples"];
    weightBySamples = v5->_weightBySamples;
    v5->_weightBySamples = v33;

    v35 = [parameters objectForKeyedSubscript:@"shouldShuffle"];
    shouldShuffle = v5->_shouldShuffle;
    v5->_shouldShuffle = v35;

    v37 = [parameters objectForKeyedSubscript:@"des_settings"];
    desSettings = v5->_desSettings;
    v5->_desSettings = v37;

    v39 = [parameters objectForKeyedSubscript:@"iCloudAggServiceKey"];
    iCloudServiceKey = v5->_iCloudServiceKey;
    v5->_iCloudServiceKey = v39;

    v41 = [parameters objectForKeyedSubscript:@"maxNorm"];
    maxNorm = v5->_maxNorm;
    v5->_maxNorm = v41;

    v43 = [parameters objectForKeyedSubscript:@"minTrainingSamples"];
    minTrainingSamples = v5->_minTrainingSamples;
    v5->_minTrainingSamples = v43;

    v45 = [parameters objectForKeyedSubscript:@"normBinCount"];
    normBinCount = v5->_normBinCount;
    v5->_normBinCount = v45;

    v47 = [parameters objectForKeyedSubscript:@"WeightNames"];
    weightNames = v5->_weightNames;
    v5->_weightNames = v47;

    v49 = [parameters objectForKeyedSubscript:@"batchSize"];
    batchSize = v5->_batchSize;
    v5->_batchSize = v49;

    v51 = [parameters objectForKeyedSubscript:@"featureValueConfig"];
    featureValueConfig = v5->_featureValueConfig;
    v5->_featureValueConfig = v51;

    v53 = [parameters objectForKeyedSubscript:@"modelOutputConfig"];
    modelOutputConfig = v5->_modelOutputConfig;
    v5->_modelOutputConfig = v53;

    v55 = [parameters objectForKeyedSubscript:@"augmentedDESRecords"];
    augmentedDESRecords = v5->_augmentedDESRecords;
    v5->_augmentedDESRecords = v55;

    v57 = [parameters objectForKeyedSubscript:@"augmentedDESRecordsLimit"];
    augmentedDESRecordsLimit = v5->_augmentedDESRecordsLimit;
    v5->_augmentedDESRecordsLimit = v57;

    v59 = [parameters objectForKeyedSubscript:@"augmentedDESRecordsRatio"];
    augmentedDESRecordsRatio = v5->_augmentedDESRecordsRatio;
    v5->_augmentedDESRecordsRatio = v59;

    v61 = [parameters objectForKeyedSubscript:@"augmentedDESRecordsTruePercentage"];
    augmentedDESRecordsTruePercentage = v5->_augmentedDESRecordsTruePercentage;
    v5->_augmentedDESRecordsTruePercentage = v61;

    v63 = [parameters objectForKeyedSubscript:@"augmentedDESRecordsTargetKey"];
    augmentedDESRecordsTargetKey = v5->_augmentedDESRecordsTargetKey;
    v5->_augmentedDESRecordsTargetKey = v63;
  }

  return v5;
}

- (id)sentinelValuesForFeature:(id)feature
{
  featureCopy = feature;
  featureValueConfig = [(APOdmlRecipe *)self featureValueConfig];
  v6 = [featureValueConfig objectForKey:featureCopy];

  v7 = [v6 objectForKey:@"sentinelValueSet"];

  return v7;
}

- (id)rangeBoundaryForFeature:(id)feature upperBound:(BOOL)bound
{
  boundCopy = bound;
  featureCopy = feature;
  featureValueConfig = [(APOdmlRecipe *)self featureValueConfig];
  v8 = [featureValueConfig objectForKey:featureCopy];

  v9 = kAPOdmlConfigMax;
  if (!boundCopy)
  {
    v9 = kAPOdmlConfigMin;
  }

  v10 = [v8 objectForKey:*v9];

  return v10;
}

- (id)sentinelValuesForOutput
{
  modelOutputConfig = [(APOdmlRecipe *)self modelOutputConfig];
  v3 = [modelOutputConfig objectForKey:@"sentinelValueSet"];

  return v3;
}

- (id)rangeBoundaryForOutput:(BOOL)output
{
  outputCopy = output;
  modelOutputConfig = [(APOdmlRecipe *)self modelOutputConfig];
  v5 = modelOutputConfig;
  v6 = kAPOdmlConfigMax;
  if (!outputCopy)
  {
    v6 = kAPOdmlConfigMin;
  }

  v7 = [modelOutputConfig objectForKeyedSubscript:*v6];

  return v7;
}

@end