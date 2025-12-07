@interface _PSCoreMLScoringModel
- (BOOL)isGBDTModel;
- (BOOL)isSetModel;
- (_PSCoreMLScoringModel)init;
- (_PSCoreMLScoringModel)initWithCoreMLModel:(id)model;
- (_opaque_pthread_mutex_t)lock;
- (id)batchPredictWithFeatureDictArray:(id)array;
- (id)featureOrderFromMetadata;
- (id)getModelDescription;
- (id)getModelPath;
- (id)getSuggestionProxiesForCandidateToFeatureVectorDictGetter:(id)getter predictionContext:(id)context messageInteractionCache:(id)cache shareInteractionCache:(id)interactionCache;
- (id)loadCoreMLModel:(id)model config:(id)config;
- (id)predictWithFeatureProvider:(id)provider;
- (id)reformatCandidateDictionaryIntoFeatureTensor:(id)tensor candidateList:(id)list error:(id *)error;
- (id)scoreCandidates:(id)candidates predictionContext:(id)context;
- (id)scoreCandidatesWithCoreMLModel:(id)model;
- (id)scoreCandidatesWithGBDTModel:(id)model;
- (int64_t)getModelTypeWithModelMetadata:(id)metadata;
- (void)featureOrderFromMetadata;
- (void)loadModel;
- (void)loadModelMetadata;
- (void)loadProductionModel:(id)model;
- (void)setLock:(_opaque_pthread_mutex_t *)lock;
- (void)unloadModel;
@end

@implementation _PSCoreMLScoringModel

- (_PSCoreMLScoringModel)init
{
  v6 = *MEMORY[0x1E69E9840];
  v4.receiver = self;
  v4.super_class = _PSCoreMLScoringModel;
  v2 = [(_PSCoreMLScoringModel *)&v4 init];
  if (v2)
  {
    v5.__sig = 0;
    *v5.__opaque = 0;
    pthread_mutexattr_init(&v5);
    pthread_mutexattr_settype(&v5, 2);
    pthread_mutex_init(&v2->_lock, &v5);
  }

  return v2;
}

- (void)loadModel
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_1B5ED1000, v3, OS_LOG_TYPE_DEFAULT, "_PSCoreMLScoringModel: loading model", &buf, 2u);
  }

  pthread_mutex_lock(&self->_lock);
  peopleDirectory = [MEMORY[0x1E6997910] peopleDirectory];
  v4 = [MEMORY[0x1E695DFF8] fileURLWithPath:peopleDirectory];
  v31 = 0;
  v32 = &v31;
  v33 = 0x2050000000;
  v5 = getLCFModelStoreClass_softClass;
  v34 = getLCFModelStoreClass_softClass;
  if (!getLCFModelStoreClass_softClass)
  {
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v36 = __getLCFModelStoreClass_block_invoke;
    v37 = &unk_1E7C23BF0;
    v38 = &v31;
    __getLCFModelStoreClass_block_invoke(&buf);
    v5 = v32[3];
  }

  v6 = v5;
  _Block_object_dispose(&v31, 8);
  v7 = [[v5 alloc] init:@"com.apple.proactive.shareheet.peoplesuggester" modelStoreRootURL:v4];
  modelStore = self->_modelStore;
  self->_modelStore = v7;

  [(LCFModelStore *)self->_modelStore clear];
  v31 = 0;
  v32 = &v31;
  v33 = 0x2050000000;
  v9 = getTRIClientClass_softClass_2;
  v34 = getTRIClientClass_softClass_2;
  if (!getTRIClientClass_softClass_2)
  {
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v36 = __getTRIClientClass_block_invoke_2;
    v37 = &unk_1E7C23BF0;
    v38 = &v31;
    __getTRIClientClass_block_invoke_2(&buf);
    v9 = v32[3];
  }

  v10 = v9;
  _Block_object_dispose(&v31, 8);
  v11 = [v9 clientWithIdentifier:210];
  v12 = [v11 levelForFactor:@"compiledOnDeviceShareSheetCoreMLModel" withNamespaceName:@"COREML_SYSTEMS_PEOPLE_SUGGESTER"];
  v13 = v12;
  if (!v12 || ([v12 directoryValue], v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "path"), v15 = objc_claimAutoreleasedReturnValue(), v16 = v15 == 0, v15, v14, v16))
  {
    v21 = 0;
    goto LABEL_13;
  }

  v17 = MEMORY[0x1E695DFF8];
  directoryValue = [v13 directoryValue];
  path = [directoryValue path];
  v20 = [v17 fileURLWithPath:path isDirectory:1];

  v21 = v20;
  if (!v21 || ([(_PSCoreMLScoringModel *)self loadCoreMLModel:v21 config:0], (v22 = objc_claimAutoreleasedReturnValue()) == 0))
  {
LABEL_13:
    v25 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    bundlePath = [v25 bundlePath];

    v27 = [bundlePath stringByAppendingPathComponent:@"compiledShareSheetModel.mlmodelc"];
    v24 = [MEMORY[0x1E695DFF8] fileURLWithPath:v27];

    v22 = [(_PSCoreMLScoringModel *)self loadCoreMLModel:v24 config:0];
    if (v22)
    {
      v23 = @"coreML_Build";
    }

    else
    {
      v23 = @"nil_model";
    }

    goto LABEL_17;
  }

  v23 = @"coreML_Trial";
  v24 = v21;
LABEL_17:
  v28 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v23];
  [(_PSCoreMLScoringModel *)self setModelURL:v28];

  [(_PSCoreMLScoringModel *)self setMlModel:v22];
  [(_PSCoreMLScoringModel *)self loadModelMetadata];
  pthread_mutex_unlock(&self->_lock);
  v29 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v24;
    _os_log_impl(&dword_1B5ED1000, v29, OS_LOG_TYPE_INFO, "ML Model successfully loaded by _PSCoreMLScoringModel, model name: %@", &buf, 0xCu);
  }
}

- (void)unloadModel
{
  pthread_mutex_lock(&self->_lock);
  [(_PSCoreMLScoringModel *)self setMlModel:0];
  [(_PSCoreMLScoringModel *)self setMetadata:0];
  [(_PSCoreMLScoringModel *)self setInputFeatureName:0];
  [(_PSCoreMLScoringModel *)self setNumCandidatesFeatureName:0];
  [(_PSCoreMLScoringModel *)self setOutputFeatureName:0];
  [(_PSCoreMLScoringModel *)self setInputShape:0];
  [(_PSCoreMLScoringModel *)self setMlModelInitialized:0];

  pthread_mutex_unlock(&self->_lock);
}

- (_PSCoreMLScoringModel)initWithCoreMLModel:(id)model
{
  modelCopy = model;
  v5 = [(_PSCoreMLScoringModel *)self init];
  pthread_mutex_lock(&v5->_lock);
  if (modelCopy)
  {
    [(_PSCoreMLScoringModel *)v5 setMlModelInitialized:1];
    [(_PSCoreMLScoringModel *)v5 setMlModel:modelCopy];
    configuration = [modelCopy configuration];
    modelDisplayName = [configuration modelDisplayName];

    if (modelDisplayName)
    {
      v8 = objc_alloc(MEMORY[0x1E695DFF8]);
      configuration2 = [modelCopy configuration];
      modelDisplayName2 = [configuration2 modelDisplayName];
      v11 = [v8 initWithString:modelDisplayName2];
      [(_PSCoreMLScoringModel *)v5 setModelURL:v11];
    }

    [(_PSCoreMLScoringModel *)v5 loadModelMetadata];
  }

  pthread_mutex_lock(&v5->_lock);

  return v5;
}

- (id)loadCoreMLModel:(id)model config:(id)config
{
  v29 = *MEMORY[0x1E69E9840];
  modelCopy = model;
  configCopy = config;
  v7 = [configCopy copy];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x2050000000;
    v10 = getMLModelConfigurationClass_softClass_0;
    v24 = getMLModelConfigurationClass_softClass_0;
    if (!getMLModelConfigurationClass_softClass_0)
    {
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v26 = __getMLModelConfigurationClass_block_invoke_0;
      v27 = &unk_1E7C23BF0;
      v28 = &v21;
      CoreMLLibraryCore_3();
      Class = objc_getClass("MLModelConfiguration");
      *(v28[1] + 24) = Class;
      getMLModelConfigurationClass_softClass_0 = *(v28[1] + 24);
      v10 = v22[3];
    }

    v12 = v10;
    _Block_object_dispose(&v21, 8);
    v9 = objc_opt_new();
  }

  [v9 setComputeUnits:0];
  v21 = 0;
  v22 = &v21;
  v23 = 0x2050000000;
  v13 = getMLModelClass_softClass_3;
  v24 = getMLModelClass_softClass_3;
  if (!getMLModelClass_softClass_3)
  {
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v26 = __getMLModelClass_block_invoke_3;
    v27 = &unk_1E7C23BF0;
    v28 = &v21;
    CoreMLLibraryCore_3();
    v14 = objc_getClass("MLModel");
    *(v28[1] + 24) = v14;
    getMLModelClass_softClass_3 = *(v28[1] + 24);
    v13 = v22[3];
  }

  v15 = v13;
  _Block_object_dispose(&v21, 8);
  v20 = 0;
  v16 = [v13 modelWithContentsOfURL:modelCopy configuration:v9 error:&v20];
  v17 = v20;
  if (v17)
  {
    v18 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v17;
      _os_log_impl(&dword_1B5ED1000, v18, OS_LOG_TYPE_INFO, "Couldn't load ML model, error: %@", &buf, 0xCu);
    }
  }

  return v16;
}

- (void)loadProductionModel:(id)model
{
  modelCopy = model;
  mlModel = [(_PSCoreMLScoringModel *)self mlModel];

  if (!mlModel)
  {
    if (modelCopy)
    {
      [(_PSCoreMLScoringModel *)self setMlModel:modelCopy];
    }

    else
    {
      v6 = [(LCFModelStore *)self->_modelStore getModelURL:@"compiledShareSheetModel.mlmodelc"];
      v7 = [(LCFModelStore *)self->_modelStore getModelConfig:@"compiledShareSheetModel.mlmodelc"];
      v8 = [(_PSCoreMLScoringModel *)self loadCoreMLModel:v6 config:v7];
      [(_PSCoreMLScoringModel *)self setMlModel:v8];

      [(_PSCoreMLScoringModel *)self setModelURL:v6];
      mlModel2 = [(_PSCoreMLScoringModel *)self mlModel];

      if (!mlModel2)
      {
        v10 = +[_PSLogging generalChannel];
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          [_PSCoreMLScoringModel loadProductionModel:];
        }
      }
    }
  }
}

- (void)loadModelMetadata
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (id)featureOrderFromMetadata
{
  metadata = [(_PSCoreMLScoringModel *)self metadata];
  v4 = [metadata objectForKeyedSubscript:@"feature_order"];

  if (v4)
  {
    v5 = MEMORY[0x1E696ACB0];
    metadata2 = [(_PSCoreMLScoringModel *)self metadata];
    v7 = [metadata2 objectForKeyedSubscript:@"feature_order"];
    v8 = [v7 dataUsingEncoding:4];
    v21 = 0;
    v9 = [v5 JSONObjectWithData:v8 options:8 error:&v21];
    v10 = v21;

    if (v9)
    {
      v11 = [v9 _pas_mappedArrayWithTransform:&__block_literal_global_47];
    }

    else
    {
      v19 = +[_PSLogging generalChannel];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [_PSCoreMLScoringModel featureOrderFromMetadata];
      }

      v11 = 0;
    }
  }

  else
  {
    v10 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(_PSCoreMLScoringModel *)v10 featureOrderFromMetadata:v12];
    }

    v11 = 0;
  }

  return v11;
}

- (int64_t)getModelTypeWithModelMetadata:(id)metadata
{
  metadataCopy = metadata;
  v4 = [metadataCopy objectForKeyedSubscript:@"model_type"];
  if ([v4 isEqualToString:@"item"])
  {
    v5 = 0;
  }

  else if ([v4 isEqualToString:@"set"])
  {
    v5 = 1;
  }

  else if ([v4 isEqualToString:@"gbdt"])
  {
    v5 = 2;
  }

  else
  {
    v6 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [_PSCoreMLScoringModel getModelTypeWithModelMetadata:];
    }

    v5 = 3;
  }

  return v5;
}

- (id)getModelDescription
{
  pthread_mutex_lock(&self->_lock);
  modelDescription = [(MLModel *)self->_mlModel modelDescription];
  pthread_mutex_unlock(&self->_lock);

  return modelDescription;
}

- (id)getModelPath
{
  pthread_mutex_lock(&self->_lock);
  modelURL = [(_PSCoreMLScoringModel *)self modelURL];
  absoluteString = [modelURL absoluteString];

  pthread_mutex_unlock(&self->_lock);

  return absoluteString;
}

- (BOOL)isSetModel
{
  v2 = [MEMORY[0x1E696AD98] numberWithInteger:{-[_PSCoreMLScoringModel modelType](self, "modelType")}];
  v3 = [v2 isEqual:&unk_1F2D8BE08];

  return v3;
}

- (BOOL)isGBDTModel
{
  v2 = [MEMORY[0x1E696AD98] numberWithInteger:{-[_PSCoreMLScoringModel modelType](self, "modelType")}];
  v3 = [v2 isEqual:&unk_1F2D8BE20];

  return v3;
}

- (id)reformatCandidateDictionaryIntoFeatureTensor:(id)tensor candidateList:(id)list error:(id *)error
{
  v59[1] = *MEMORY[0x1E69E9840];
  tensorCopy = tensor;
  listCopy = list;
  v9 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [_PSCoreMLScoringModel reformatCandidateDictionaryIntoFeatureTensor:v9 candidateList:? error:?];
  }

  isSetModel = [(_PSCoreMLScoringModel *)self isSetModel];
  featureOrderFromMetadata = [(_PSCoreMLScoringModel *)self featureOrderFromMetadata];
  if (isSetModel)
  {
    v12 = 2;
  }

  else
  {
    v12 = 1;
  }

  inputShape = [(_PSCoreMLScoringModel *)self inputShape];
  v14 = [inputShape objectAtIndexedSubscript:v12];
  unsignedLongValue = [v14 unsignedLongValue];
  v16 = [featureOrderFromMetadata count];

  if (unsignedLongValue == v16)
  {
    v18 = objc_alloc(getMLMultiArrayClass_0(v17));
    inputShape2 = [(_PSCoreMLScoringModel *)self inputShape];
    v20 = [v18 initWithShape:inputShape2 dataType:65568 error:error];

    v21 = +[_PSLogging generalChannel];
    v22 = v21;
    if (v20)
    {
      v23 = os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG);

      v24 = v48;
      if (v23)
      {
        v25 = objc_opt_new();
        v26 = objc_opt_new();
      }

      else
      {
        v26 = 0;
        v25 = 0;
      }

      v36 = +[_PSLogging generalChannel];
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B5ED1000, v36, OS_LOG_TYPE_DEFAULT, "Copying feature vectors into feature tensor", buf, 2u);
      }

      v37 = isSetModel;
      v38 = +[_PSCandidate selfCandidate];
      v39 = [v48 objectForKeyedSubscript:v38];

      v49[0] = MEMORY[0x1E69E9820];
      v49[1] = 3221225472;
      v49[2] = __90___PSCoreMLScoringModel_reformatCandidateDictionaryIntoFeatureTensor_candidateList_error___block_invoke;
      v49[3] = &unk_1E7C270D0;
      v56 = v37;
      v50 = listCopy;
      v51 = v48;
      v52 = featureOrderFromMetadata;
      v40 = v39;
      v53 = v40;
      v41 = v26;
      v54 = v41;
      v22 = v25;
      v55 = v22;
      [v20 getMutableBytesWithHandler:v49];
      v42 = +[_PSLogging generalChannel];
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
      {
        [_PSCoreMLScoringModel reformatCandidateDictionaryIntoFeatureTensor:candidateList:error:];
      }

      v43 = +[_PSLogging generalChannel];
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
      {
        [_PSCoreMLScoringModel reformatCandidateDictionaryIntoFeatureTensor:candidateList:error:];
      }

      v44 = +[_PSLogging generalChannel];
      if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B5ED1000, v44, OS_LOG_TYPE_INFO, "Finished reformatting candidate dictionary into feature tensor", buf, 2u);
      }

      v45 = v20;
    }

    else
    {
      v24 = v48;
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [(_PSCoreMLScoringModel *)error reformatCandidateDictionaryIntoFeatureTensor:v22 candidateList:v30 error:v31, v32, v33, v34, v35];
      }
    }

    v29 = v20;
  }

  else
  {
    if (!error)
    {
      v29 = 0;
      v24 = v48;
      goto LABEL_27;
    }

    v27 = objc_alloc(MEMORY[0x1E696ABC0]);
    v58 = *MEMORY[0x1E696A578];
    v59[0] = @"feature list length doesn't match shape";
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v59 forKeys:&v58 count:1];
    v28 = [v27 initWithDomain:@"com.apple.PeopleSuggester" code:1 userInfo:v20];
    v29 = 0;
    *error = v28;
    v24 = v48;
  }

LABEL_27:

  return v29;
}

- (id)predictWithFeatureProvider:(id)provider
{
  providerCopy = provider;
  mlModel = [(_PSCoreMLScoringModel *)self mlModel];
  v16 = 0;
  v6 = [mlModel predictionFromFeatures:providerCopy error:&v16];

  v7 = v16;
  if (v7)
  {
    dictionary = +[_PSLogging generalChannel];
    if (os_log_type_enabled(dictionary, OS_LOG_TYPE_ERROR))
    {
      [_PSCoreMLScoringModel predictWithFeatureProvider:];
    }

    multiArrayValue = 0;
  }

  else
  {
    dictionary = [v6 dictionary];
    outputFeatureName = [(_PSCoreMLScoringModel *)self outputFeatureName];
    v11 = [dictionary objectForKeyedSubscript:outputFeatureName];

    v12 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v11, "type")}];
    v13 = [v12 isEqual:&unk_1F2D8BE38];

    if (v13)
    {
      multiArrayValue = [v11 multiArrayValue];
    }

    else
    {
      v14 = +[_PSLogging generalChannel];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [(_PSCoreMLScoringModel *)v11 predictWithFeatureProvider:v14];
      }

      multiArrayValue = 0;
    }
  }

  return multiArrayValue;
}

- (id)scoreCandidatesWithGBDTModel:(id)model
{
  v28 = *MEMORY[0x1E69E9840];
  modelCopy = model;
  v5 = +[_PSLogging suggestionSignpost];
  if (os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "_PSCandidateScoringGBDTModel-Inference", " enableTelemetry=YES ", buf, 2u);
  }

  allValues = [modelCopy allValues];
  v7 = [(_PSCoreMLScoringModel *)self batchPredictWithFeatureDictArray:allValues];

  v8 = +[_PSLogging suggestionSignpost];
  if (os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v8, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_PSCandidateScoringGBDTModel-Inference", &unk_1B5FD970D, buf, 2u);
  }

  v9 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1B5ED1000, v9, OS_LOG_TYPE_INFO, "_PSCandidateScoringCoreMLModel - People Suggester run inference with the GBDT model", buf, 2u);
  }

  v10 = [v7 count];
  if (v10 == [modelCopy count])
  {
    v11 = objc_opt_new();
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v12 = modelCopy;
    v13 = [v12 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = 0;
      v16 = *v23;
      do
      {
        v17 = 0;
        v18 = v15;
        do
        {
          if (*v23 != v16)
          {
            objc_enumerationMutation(v12);
          }

          v19 = *(*(&v22 + 1) + 8 * v17);
          v15 = v18 + 1;
          v20 = [v7 objectAtIndexedSubscript:{v18, v22}];
          [v11 setObject:v20 forKeyedSubscript:v19];

          ++v17;
          v18 = v15;
        }

        while (v14 != v17);
        v14 = [v12 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v14);
    }
  }

  else
  {
    v11 = MEMORY[0x1E695E0F8];
  }

  return v11;
}

- (id)scoreCandidatesWithCoreMLModel:(id)model
{
  v39 = *MEMORY[0x1E69E9840];
  modelCopy = model;
  allKeys = [modelCopy allKeys];
  v6 = [allKeys _pas_mappedArrayWithTransform:&__block_literal_global_155];

  v7 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v38 = [v6 count];
    _os_log_impl(&dword_1B5ED1000, v7, OS_LOG_TYPE_DEFAULT, "Scoring %tu candidates using CoreML ranker", buf, 0xCu);
  }

  v8 = +[_PSLogging suggestionSignpost];
  if (os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "_PSCandidateScoringCoreMLModel-Inference", " enableTelemetry=YES ", buf, 2u);
  }

  v9 = [_PSFeaturePreprocessor encodeFeatureVectors:modelCopy];

  v36 = 0;
  v10 = [(_PSCoreMLScoringModel *)self reformatCandidateDictionaryIntoFeatureTensor:v9 candidateList:v6 error:&v36];
  v11 = v36;
  if (v10)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v6, "count")}];
    v13 = objc_opt_new();
    inputFeatureName = [(_PSCoreMLScoringModel *)self inputFeatureName];
    [v13 setObject:v10 forKeyedSubscript:inputFeatureName];

    if ([(_PSCoreMLScoringModel *)self isSetModel])
    {
      v15 = +[_PSLogging generalChannel];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        [_PSCoreMLScoringModel scoreCandidatesWithCoreMLModel:];
      }

      v35 = v11;
      v17 = [objc_alloc(getMLMultiArrayClass_0(v16)) initWithShape:&unk_1F2D8C660 dataType:65600 error:&v35];
      v18 = v35;

      if (v18)
      {
        squeeze = +[_PSLogging generalChannel];
        if (os_log_type_enabled(squeeze, OS_LOG_TYPE_ERROR))
        {
          [_PSCoreMLScoringModel scoreCandidatesWithCoreMLModel:];
        }

LABEL_19:
        v20 = MEMORY[0x1E695E0F8];
LABEL_31:

        v11 = v18;
        goto LABEL_32;
      }

      [v17 setObject:v12 atIndexedSubscript:0];
      numCandidatesFeatureName = [(_PSCoreMLScoringModel *)self numCandidatesFeatureName];
      [v13 setObject:v17 forKeyedSubscript:numCandidatesFeatureName];

      v11 = 0;
    }

    v34 = v11;
    v17 = [objc_alloc(getMLDictionaryFeatureProviderClass_1()) initWithDictionary:v13 error:&v34];
    v18 = v34;

    if (v18)
    {
      squeeze = +[_PSLogging generalChannel];
      if (os_log_type_enabled(squeeze, OS_LOG_TYPE_ERROR))
      {
        [_PSCoreMLScoringModel scoreCandidatesWithCoreMLModel:];
      }

      goto LABEL_19;
    }

    v22 = [(_PSCoreMLScoringModel *)self predictWithFeatureProvider:v17];
    squeeze = [v22 squeeze];

    v23 = +[_PSLogging suggestionSignpost];
    if (os_signpost_enabled(v23))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v23, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_PSCandidateScoringCoreMLModel-Inference", " enableTelemetry=YES ", buf, 2u);
    }

    shape = [squeeze shape];
    if ([shape count] == 1)
    {
      v24 = [squeeze count];
      if (v24 >= [v12 intValue])
      {
        v26 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{-[NSObject intValue](v12, "intValue")}];
        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 3221225472;
        v31[2] = __56___PSCoreMLScoringModel_scoreCandidatesWithCoreMLModel___block_invoke_160;
        v31[3] = &unk_1E7C27118;
        v27 = v26;
        v32 = v27;
        v33 = squeeze;
        [v6 enumerateObjectsUsingBlock:v31];
        v28 = v33;
        v25 = v27;

        v20 = v25;
        goto LABEL_30;
      }

      v25 = +[_PSLogging generalChannel];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        [(_PSCoreMLScoringModel *)squeeze scoreCandidatesWithCoreMLModel:v12, v25];
      }
    }

    else
    {
      v25 = +[_PSLogging generalChannel];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        [_PSCoreMLScoringModel scoreCandidatesWithCoreMLModel:];
      }
    }

    v20 = MEMORY[0x1E695E0F8];
LABEL_30:

    goto LABEL_31;
  }

  v12 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    [_PSCoreMLScoringModel scoreCandidatesWithCoreMLModel:];
  }

  v20 = MEMORY[0x1E695E0F8];
LABEL_32:

  return v20;
}

- (id)scoreCandidates:(id)candidates predictionContext:(id)context
{
  candidatesCopy = candidates;
  contextCopy = context;
  pthread_mutex_lock(&self->_lock);
  v8 = +[_PSLogging suggestionSignpost];
  if (os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "_PSShareSheetLoadMLModel", " enableTelemetry=YES ", buf, 2u);
  }

  if (!self->_mlModelInitialized)
  {
    [(_PSCoreMLScoringModel *)self loadModel];
  }

  v9 = +[_PSLogging suggestionSignpost];
  if (os_signpost_enabled(v9))
  {
    *v18 = 0;
    _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v9, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_PSShareSheetLoadMLModel", &unk_1B5FD970D, v18, 2u);
  }

  mlModel = [(_PSCoreMLScoringModel *)self mlModel];

  if (mlModel)
  {
    v11 = candidatesCopy[2](candidatesCopy);
    if ([v11 count])
    {
      metadata = [(_PSCoreMLScoringModel *)self metadata];
      if (metadata)
      {
        inputFeatureName = [(_PSCoreMLScoringModel *)self inputFeatureName];

        if (inputFeatureName)
        {
          if ([(_PSCoreMLScoringModel *)self isGBDTModel])
          {
            [(_PSCoreMLScoringModel *)self scoreCandidatesWithGBDTModel:v11];
          }

          else
          {
            [(_PSCoreMLScoringModel *)self scoreCandidatesWithCoreMLModel:v11];
          }
          v15 = ;
          goto LABEL_23;
        }
      }

      v16 = +[_PSLogging generalChannel];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        [_PSCoreMLScoringModel scoreCandidates:predictionContext:];
      }
    }

    else
    {
      v16 = +[_PSLogging generalChannel];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        [_PSCoreMLScoringModel scoreCandidates:predictionContext:];
      }
    }

    v15 = MEMORY[0x1E695E0F8];
LABEL_23:

    goto LABEL_24;
  }

  v14 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
  {
    [_PSCoreMLScoringModel scoreCandidates:predictionContext:];
  }

  v15 = MEMORY[0x1E695E0F8];
LABEL_24:
  [(_PSCoreMLScoringModel *)self unloadModel];
  pthread_mutex_unlock(&self->_lock);

  return v15;
}

- (id)batchPredictWithFeatureDictArray:(id)array
{
  v60 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  selfCopy = self;
  featureOrderFromMetadata = [(_PSCoreMLScoringModel *)self featureOrderFromMetadata];
  if (featureOrderFromMetadata)
  {
    v32 = objc_alloc_init(MEMORY[0x1E695DF70]);
    array = [MEMORY[0x1E695DF70] array];
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    obj = arrayCopy;
    v4 = [obj countByEnumeratingWithState:&v45 objects:v59 count:16];
    if (v4)
    {
      v5 = *v46;
      while (2)
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v46 != v5)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v45 + 1) + 8 * i);
          v8 = [MEMORY[0x1E695E0F8] mutableCopy];
          v9 = objc_alloc(getMLMultiArrayClass_0(v8));
          v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(featureOrderFromMetadata, "count")}];
          v58 = v10;
          v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v58 count:1];
          v44 = 0;
          v12 = [v9 initWithShape:v11 dataType:65600 error:&v44];
          v13 = v44;

          if (v13)
          {
            v25 = +[_PSLogging generalChannel];
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              [_PSCoreMLScoringModel batchPredictWithFeatureDictArray:];
            }

            goto LABEL_28;
          }

          v42[0] = MEMORY[0x1E69E9820];
          v42[1] = 3221225472;
          v42[2] = __58___PSCoreMLScoringModel_batchPredictWithFeatureDictArray___block_invoke;
          v42[3] = &unk_1E7C248D0;
          v42[4] = v7;
          v14 = v12;
          v43 = v14;
          [featureOrderFromMetadata enumerateObjectsUsingBlock:v42];
          inputFeatureName = [(_PSCoreMLScoringModel *)selfCopy inputFeatureName];
          [v8 setObject:v14 forKeyedSubscript:inputFeatureName];

          v16 = objc_alloc(getMLDictionaryFeatureProviderClass_1());
          v41 = 0;
          v17 = [v16 initWithDictionary:v8 error:&v41];
          v13 = v41;
          if (v13)
          {
            v18 = +[_PSLogging generalChannel];
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              [(_PSCoreMLScoringModel *)&buf batchPredictWithFeatureDictArray:v40, v18];
            }
          }

          else
          {
            [array addObject:v17];
          }

          if (v13)
          {
            v24 = 0;
            goto LABEL_37;
          }
        }

        v4 = [obj countByEnumeratingWithState:&v45 objects:v59 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

    v54 = 0;
    v55 = &v54;
    v56 = 0x2050000000;
    v19 = getMLArrayBatchProviderClass_softClass_0;
    v57 = getMLArrayBatchProviderClass_softClass_0;
    if (!getMLArrayBatchProviderClass_softClass_0)
    {
      v49 = MEMORY[0x1E69E9820];
      v50 = 3221225472;
      v51 = __getMLArrayBatchProviderClass_block_invoke_0;
      v52 = &unk_1E7C23BF0;
      v53 = &v54;
      CoreMLLibraryCore_3();
      Class = objc_getClass("MLArrayBatchProvider");
      *(v53[1] + 24) = Class;
      getMLArrayBatchProviderClass_softClass_0 = *(v53[1] + 24);
      v19 = v55[3];
    }

    v21 = v19;
    _Block_object_dispose(&v54, 8);
    obj = [[v19 alloc] initWithFeatureProviderArray:array];
    mlModel = selfCopy->_mlModel;
    v38 = 0;
    v8 = [(MLModel *)mlModel predictionsFromBatch:obj error:&v38];
    v13 = v38;
    if (v13)
    {
      v23 = +[_PSLogging generalChannel];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [_PSCoreMLScoringModel batchPredictWithFeatureDictArray:];
      }

LABEL_28:
      v24 = 0;
    }

    else
    {
      if ([v8 count] >= 1)
      {
        v26 = 0;
        do
        {
          v27 = [v8 featuresAtIndex:v26];
          v28 = [v27 featureValueForName:@"classProbability"];
          dictionaryValue = [v28 dictionaryValue];

          if ([dictionaryValue count] == 2)
          {
            v30 = [dictionaryValue objectForKeyedSubscript:&unk_1F2D8BE50];
            [v32 addObject:v30];
          }

          ++v26;
        }

        while (v26 < [v8 count]);
      }

      v24 = [v32 copy];
    }

LABEL_37:
  }

  else
  {
    v13 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [_PSCoreMLScoringModel batchPredictWithFeatureDictArray:];
    }

    v24 = 0;
  }

  return v24;
}

- (id)getSuggestionProxiesForCandidateToFeatureVectorDictGetter:(id)getter predictionContext:(id)context messageInteractionCache:(id)cache shareInteractionCache:(id)interactionCache
{
  v43 = *MEMORY[0x1E69E9840];
  getterCopy = getter;
  contextCopy = context;
  v34 = objc_opt_new();
  v10 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1B5ED1000, v10, OS_LOG_TYPE_INFO, "_PSCoreMLScoringModel ranking", buf, 2u);
  }

  v31 = contextCopy;
  v32 = getterCopy;
  v35 = [(_PSCoreMLScoringModel *)self scoreCandidates:getterCopy predictionContext:contextCopy];
  v11 = [v35 keysSortedByValueUsingComparator:&__block_literal_global_169];
  v12 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 138477827;
    v42 = v11;
    _os_log_impl(&dword_1B5ED1000, v12, OS_LOG_TYPE_INFO, "_PSCoreMLScoringModel sorted score array: %{private}@", buf, 0xCu);
  }

  getModelPath = [(_PSCoreMLScoringModel *)self getModelPath];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = v11;
  v14 = [(_PSSuggestionProxy *)obj countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v37;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v37 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v36 + 1) + 8 * i);
        v19 = [v35 objectForKeyedSubscript:v18];
        candidateIdentifier = [v18 candidateIdentifier];
        bundleId = [v18 bundleId];
        v22 = +[_PSConstants sharePlayBundleId];
        v23 = [bundleId isEqual:v22];

        if (v23)
        {
          recipientsId = [v18 recipientsId];

          candidateIdentifier = recipientsId;
        }

        v25 = [_PSSuggestionProxy alloc];
        bundleId2 = [v18 bundleId];
        v27 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@\n Score: %@", getModelPath, v19];
        v28 = [(_PSSuggestionProxy *)v25 initWithBundleID:bundleId2 interactionRecipients:candidateIdentifier contactID:0 reason:v27 reasonType:getModelPath modelScore:v19];

        if (v28)
        {
          [v34 addObject:v28];
          v29 = +[_PSLogging generalChannel];
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v42 = v28;
            _os_log_impl(&dword_1B5ED1000, v29, OS_LOG_TYPE_DEFAULT, "suggestionProxy: %@", buf, 0xCu);
          }
        }
      }

      v15 = [(_PSSuggestionProxy *)obj countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v15);
  }

  return v34;
}

- (_opaque_pthread_mutex_t)lock
{
  v3 = *&self[1].__opaque[32];
  *&retstr->__sig = *&self[1].__opaque[16];
  *&retstr->__opaque[8] = v3;
  v4 = *self[2].__opaque;
  *&retstr->__opaque[24] = *&self[1].__opaque[48];
  *&retstr->__opaque[40] = v4;
  return self;
}

- (void)setLock:(_opaque_pthread_mutex_t *)lock
{
  v3 = *&lock->__sig;
  v4 = *&lock->__opaque[8];
  v5 = *&lock->__opaque[24];
  *&self->_lock.__opaque[40] = *&lock->__opaque[40];
  *&self->_lock.__opaque[24] = v5;
  *&self->_lock.__opaque[8] = v4;
  *&self->_lock.__sig = v3;
}

- (void)featureOrderFromMetadata
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = @"feature_order";
  OUTLINED_FUNCTION_0_2(&dword_1B5ED1000, self, a3, "%@ not in metadata", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)getModelTypeWithModelMetadata:.cold.1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_fault_impl(&dword_1B5ED1000, v0, OS_LOG_TYPE_FAULT, "Metadata %@ resulted in unknown model type", v1, 0xCu);
}

- (void)reformatCandidateDictionaryIntoFeatureTensor:(void *)a1 candidateList:(NSObject *)a2 error:.cold.1(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = [a1 inputShape];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_1B5ED1000, a2, OS_LOG_TYPE_DEBUG, "Reformatting candidate dictionary into feature tensor, with input shape: %@", v4, 0xCu);
}

- (void)reformatCandidateDictionaryIntoFeatureTensor:(uint64_t)a3 candidateList:(uint64_t)a4 error:(uint64_t)a5 .cold.4(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = *a1;
  OUTLINED_FUNCTION_0_2(&dword_1B5ED1000, a2, a3, "_PSCandidateScoringCoreMLModel: error creating MLMultiArray: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)predictWithFeatureProvider:(void *)a1 .cold.2(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(a1, "type")}];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_1B5ED1000, a2, OS_LOG_TYPE_ERROR, "Model output type was %@ instead of MLFeatureTypeMultiArray", v4, 0xCu);
}

- (void)scoreCandidatesWithCoreMLModel:(NSObject *)a3 .cold.5(void *a1, uint64_t a2, NSObject *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  [a1 count];
  OUTLINED_FUNCTION_1();
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_1B5ED1000, a3, OS_LOG_TYPE_ERROR, "prediction count (%ld) < candidate count (%@)", v5, 0x16u);
}

- (void)batchPredictWithFeatureDictArray:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)batchPredictWithFeatureDictArray:(os_log_t)log .cold.2(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_1B5ED1000, log, OS_LOG_TYPE_ERROR, "MLDictionaryFeatureProvider call failure", buf, 2u);
}

- (void)batchPredictWithFeatureDictArray:.cold.3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)batchPredictWithFeatureDictArray:.cold.4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end