@interface ATXMLInferenceRunner
- (BOOL)runInferenceOnItem:(ATXPredictionItem *)item resultBlock:(id)block error:(id *)error;
- (BOOL)runInferenceOnItems:(void *)items resultBlock:(id)block error:(id *)error;
- (double)_getScoreFromInferenceResult:(id)result;
- (id)_inferenceResultWithOutputFeatureProvider:(id)provider inputFeatureProvider:(id)featureProvider;
- (id)initModelWithName:(id)name error:(id *)error;
@end

@implementation ATXMLInferenceRunner

- (id)initModelWithName:(id)name error:(id *)error
{
  v47 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v7 = MEMORY[0x277CEBCF8];
  nameCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Start ATXMLInferenceRunner loading: %@", nameCopy];
  [v7 logCurrentMemoryFootprint:nameCopy];

  v44.receiver = self;
  v44.super_class = ATXMLInferenceRunner;
  v9 = [(ATXMLInferenceRunner *)&v44 init];
  v10 = v9;
  if (v9)
  {
    v11 = __atxlog_handle_ml_inference(v9);
    v12 = os_signpost_id_generate(v11);

    v14 = __atxlog_handle_ml_inference(v13);
    v15 = v14;
    v16 = v12 - 1;
    if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      v17 = nameCopy;
      uTF8String = [nameCopy UTF8String];
      *buf = 136446210;
      v46 = uTF8String;
      _os_signpost_emit_with_name_impl(&dword_2263AA000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v12, "ModelLoading", "model=%{public,signpost.telemetry:string1}s enableTelemetry=YES ", buf, 0xCu);
    }

    v41 = objc_opt_new();
    [v41 setComputeUnits:0];
    v43 = 0;
    v19 = [ATXCoreMLUtilities loadCoreMLModelWithName:nameCopy withConfiguration:v41 error:&v43];
    v20 = v43;
    v42 = v20;
    if (v19)
    {
      modelDescription = [v19 modelDescription];
      metadata = [modelDescription metadata];
      v23 = [metadata objectForKeyedSubscript:*MEMORY[0x277CBFE90]];

      v24 = [v23 objectForKey:@"feature_names"];
      v25 = v24;
      if (v24)
      {
        v26 = [v24 componentsSeparatedByString:{@", "}];
        [(ATXMLInferenceRunner *)v10 setFeaturesToConcatenate:v26];
      }

      v27 = [v23 objectForKey:@"intermediate_values"];
      v28 = v27;
      if (v27)
      {
        v29 = [v27 componentsSeparatedByString:{@", "}];
        [(ATXMLInferenceRunner *)v10 setIntermediateValuesForInspection:v29];
      }

      v30 = __atxlog_handle_ml_inference(v27);
      v31 = v30;
      if (v16 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v30))
      {
        v32 = nameCopy;
        uTF8String2 = [nameCopy UTF8String];
        *buf = 136446210;
        v46 = uTF8String2;
        _os_signpost_emit_with_name_impl(&dword_2263AA000, v31, OS_SIGNPOST_INTERVAL_END, v12, "ModelLoading", "model=%{public,signpost.telemetry:string1}s-passed enableTelemetry=YES ", buf, 0xCu);
      }

      [(ATXMLInferenceRunner *)v10 setMlModel:v19];
      [(ATXMLInferenceRunner *)v10 setModelName:nameCopy];
      v34 = MEMORY[0x277CEBCF8];
      nameCopy2 = [MEMORY[0x277CCACA8] stringWithFormat:@"End ATXMLInferenceRunner loading: %@", nameCopy];
      [v34 logCurrentMemoryFootprint:nameCopy2];

      v36 = v10;
    }

    else
    {
      if (error)
      {
        v20 = v20;
        *error = v42;
      }

      v37 = __atxlog_handle_ml_inference(v20);
      v23 = v37;
      if (v16 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v37))
      {
        v38 = nameCopy;
        uTF8String3 = [nameCopy UTF8String];
        *buf = 136446210;
        v46 = uTF8String3;
        _os_signpost_emit_with_name_impl(&dword_2263AA000, v23, OS_SIGNPOST_INTERVAL_END, v12, "ModelLoading", "model=%{public,signpost.telemetry:string1}s-failed enableTelemetry=YES ", buf, 0xCu);
      }

      v36 = 0;
    }
  }

  else if (error)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CEB260] code:6 userInfo:0];
    *error = v36 = 0;
  }

  else
  {
    v36 = 0;
  }

  return v36;
}

- (double)_getScoreFromInferenceResult:(id)result
{
  resultCopy = result;
  mlModel = [(ATXMLInferenceRunner *)self mlModel];
  modelDescription = [mlModel modelDescription];
  predictedProbabilitiesName = [modelDescription predictedProbabilitiesName];

  if (predictedProbabilitiesName)
  {
    mlModel2 = [(ATXMLInferenceRunner *)self mlModel];
    modelDescription2 = [mlModel2 modelDescription];
    predictedProbabilitiesName2 = [modelDescription2 predictedProbabilitiesName];
    v11 = [resultCopy featureValueForName:predictedProbabilitiesName2];

    [ATXCoreMLUtilities scoreForModelOutputValue:v11 outputIndexedSubscript:1];
LABEL_5:
    v19 = v12;
    goto LABEL_6;
  }

  mlModel3 = [(ATXMLInferenceRunner *)self mlModel];
  modelDescription3 = [mlModel3 modelDescription];
  predictedFeatureName = [modelDescription3 predictedFeatureName];

  if (predictedFeatureName)
  {
    mlModel4 = [(ATXMLInferenceRunner *)self mlModel];
    modelDescription4 = [mlModel4 modelDescription];
    predictedFeatureName2 = [modelDescription4 predictedFeatureName];
    v11 = [resultCopy featureValueForName:predictedFeatureName2];

    [ATXCoreMLUtilities scoreForModelOutputValue:v11];
    goto LABEL_5;
  }

  mlModel5 = [(ATXMLInferenceRunner *)self mlModel];
  modelDescription5 = [mlModel5 modelDescription];
  outputDescriptionsByName = [modelDescription5 outputDescriptionsByName];
  v24 = [outputDescriptionsByName objectForKeyedSubscript:@"score"];

  if (v24)
  {
    v25 = [resultCopy featureValueForName:@"score"];
    [ATXCoreMLUtilities scoreForModelOutputValue:v25];
    v19 = v26;
    v11 = v25;
  }

  else
  {
    mlModel6 = [(ATXMLInferenceRunner *)self mlModel];
    modelDescription6 = [mlModel6 modelDescription];
    outputDescriptionsByName2 = [modelDescription6 outputDescriptionsByName];
    v30 = [outputDescriptionsByName2 count];

    if (v30)
    {
      mlModel7 = [(ATXMLInferenceRunner *)self mlModel];
      modelDescription7 = [mlModel7 modelDescription];
      outputDescriptionsByName3 = [modelDescription7 outputDescriptionsByName];
      allKeys = [outputDescriptionsByName3 allKeys];
      firstObject = [allKeys firstObject];

      v11 = [resultCopy featureValueForName:firstObject];
      [ATXCoreMLUtilities scoreForModelOutputValue:v11];
      v19 = v37;
    }

    else
    {
      v38 = __atxlog_handle_ml_inference(v31);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        [ATXMLInferenceRunner _getScoreFromInferenceResult:v38];
      }

      v11 = 0;
      v19 = -31337.0;
    }
  }

LABEL_6:

  return v19;
}

- (id)_inferenceResultWithOutputFeatureProvider:(id)provider inputFeatureProvider:(id)featureProvider
{
  v53 = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  featureProviderCopy = featureProvider;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  selfCopy = self;
  featuresToConcatenate = [(ATXMLInferenceRunner *)self featuresToConcatenate];

  if (featuresToConcatenate)
  {
    featuresToConcatenate2 = [(ATXMLInferenceRunner *)self featuresToConcatenate];
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __87__ATXMLInferenceRunner__inferenceResultWithOutputFeatureProvider_inputFeatureProvider___block_invoke;
    v46[3] = &unk_278598990;
    v47 = featureProviderCopy;
    v48 = dictionary;
    [featuresToConcatenate2 enumerateObjectsUsingBlock:v46];

    v8 = v47;
  }

  else
  {
    mlModel = [(ATXMLInferenceRunner *)self mlModel];
    modelDescription = [mlModel modelDescription];
    inputDescriptionsByName = [modelDescription inputDescriptionsByName];

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v8 = inputDescriptionsByName;
    v12 = [v8 countByEnumeratingWithState:&v42 objects:v52 count:16];
    if (v12)
    {
      v13 = *v43;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v43 != v13)
          {
            objc_enumerationMutation(v8);
          }

          v15 = *(*(&v42 + 1) + 8 * i);
          v16 = [featureProviderCopy featureValueForName:v15];
          v17 = v16;
          if (v16 && (v16 = [v16 type], v16 == 2))
          {
            v18 = MEMORY[0x277CCABB0];
            [v17 doubleValue];
            v19 = [v18 numberWithDouble:?];
            [dictionary setObject:v19 forKeyedSubscript:v15];
          }

          else
          {
            v19 = __atxlog_handle_ml_inference(v16);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              [(ATXMLInferenceRunner *)&v40 _inferenceResultWithOutputFeatureProvider:v41 inputFeatureProvider:v19];
            }
          }
        }

        v12 = [v8 countByEnumeratingWithState:&v42 objects:v52 count:16];
      }

      while (v12);
    }
  }

  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  intermediateValuesForInspection = [(ATXMLInferenceRunner *)self intermediateValuesForInspection];
  v22 = [intermediateValuesForInspection countByEnumeratingWithState:&v36 objects:v51 count:16];
  if (v22)
  {
    v23 = *v37;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v37 != v23)
        {
          objc_enumerationMutation(intermediateValuesForInspection);
        }

        v25 = *(*(&v36 + 1) + 8 * j);
        v26 = [providerCopy featureValueForName:v25];
        if (v26)
        {
          v27 = MEMORY[0x277CCABB0];
          [ATXCoreMLUtilities scoreForModelOutputValue:v26];
          v28 = [v27 numberWithDouble:?];
          [dictionary2 setObject:v28 forKeyedSubscript:v25];
        }

        else
        {
          v28 = __atxlog_handle_ml_inference(0);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v50 = v25;
            _os_log_error_impl(&dword_2263AA000, v28, OS_LOG_TYPE_ERROR, "Could not retrieve intermediate feature value %@", buf, 0xCu);
          }
        }
      }

      v22 = [intermediateValuesForInspection countByEnumeratingWithState:&v36 objects:v51 count:16];
    }

    while (v22);
  }

  [(ATXMLInferenceRunner *)selfCopy _getScoreFromInferenceResult:providerCopy];
  v30 = [[ATXMLInferenceResult alloc] initWithScore:dictionary inputs:dictionary2 intermediateValues:v29];

  return v30;
}

void __87__ATXMLInferenceRunner__inferenceResultWithOutputFeatureProvider_inputFeatureProvider___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v11 = a2;
  v5 = *(a1 + 32);
  v6 = [v5 featureNames];
  v7 = [v6 anyObject];
  v8 = [v5 featureValueForName:v7];

  v9 = [v8 multiArrayValue];
  v10 = [v9 objectAtIndexedSubscript:a3];
  [*(a1 + 40) setObject:v10 forKeyedSubscript:v11];
}

- (BOOL)runInferenceOnItems:(void *)items resultBlock:(id)block error:(id *)error
{
  v68 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v9 = MEMORY[0x277CEBCF8];
  v10 = MEMORY[0x277CCACA8];
  modelName = [(ATXMLInferenceRunner *)self modelName];
  v12 = [v10 stringWithFormat:@"Start runInferenceOnItems loading: %@", modelName];
  [v9 logCurrentMemoryFootprint:v12];

  mlModel = [(ATXMLInferenceRunner *)self mlModel];

  if (!mlModel)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ATXMLInferenceRunner.mm" lineNumber:180 description:@"Valid ML model should exist for inference"];
  }

  v15 = __atxlog_handle_ml_inference(v14);
  v16 = os_signpost_id_generate(v15);

  v18 = __atxlog_handle_ml_inference(v17);
  v19 = v18;
  spid = v16;
  v55 = v16 - 1;
  if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    modelName2 = [(ATXMLInferenceRunner *)self modelName];
    *buf = 136446210;
    uTF8String = [modelName2 UTF8String];
    _os_signpost_emit_with_name_impl(&dword_2263AA000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v16, "BatchedInference", "model=%{public,signpost.telemetry:string1}s enableTelemetry=YES ", buf, 0xCu);
  }

  featuresToConcatenate = [(ATXMLInferenceRunner *)self featuresToConcatenate];
  v22 = featuresToConcatenate == 0;

  if (v22)
  {
    v58 = [[ATXMLBatchInferenceFeatureProvider alloc] initWithFeatureVectors:items];
  }

  else
  {
    v23 = [ATXMLBatchInferenceMultiArrayFeatureProvider alloc];
    featuresToConcatenate2 = [(ATXMLInferenceRunner *)self featuresToConcatenate];
    v58 = [(ATXMLBatchInferenceMultiArrayFeatureProvider *)v23 initWithFeatureVectors:items featuresToConcatenate:featuresToConcatenate2];
  }

  mlModel2 = [(ATXMLInferenceRunner *)self mlModel];
  v59 = 0;
  v26 = [mlModel2 predictionsFromBatch:v58 error:&v59];
  v57 = v59;

  if (!v26)
  {
    v33 = __atxlog_handle_ml_inference(v27);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      mlModel3 = [(ATXMLInferenceRunner *)self mlModel];
      [ATXMLInferenceRunner runInferenceOnItems:mlModel3 resultBlock:v57 error:buf];
    }

    goto LABEL_19;
  }

  if ([v26 count] != 0x13A524387AC82261 * ((*(items + 1) - *items) >> 3))
  {
    v35 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CEB260] code:6 userInfo:0];

    v33 = __atxlog_handle_ml_inference(v36);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v51 = [v26 count];
      v52 = 0x13A524387AC82261 * ((*(items + 1) - *items) >> 3);
      *buf = 134218240;
      uTF8String = v51;
      v66 = 2048;
      v67 = v52;
      _os_log_error_impl(&dword_2263AA000, v33, OS_LOG_TYPE_ERROR, "Results size (%ld) != number of prediction items (%ld)", buf, 0x16u);
    }

    v57 = v35;
LABEL_19:

    v37 = 0;
    goto LABEL_21;
  }

  v28 = 0;
  for (i = 0; i < [v26 count]; ++i)
  {
    v30 = [v26 featuresAtIndex:i];
    v31 = [(ATXMLBatchInferenceFeatureProvider *)v58 featuresAtIndex:i];
    v32 = [(ATXMLInferenceRunner *)self _inferenceResultWithOutputFeatureProvider:v30 inputFeatureProvider:v31];
    blockCopy[2](blockCopy, *items + v28, v32);

    v28 += 3336;
  }

  v37 = 1;
LABEL_21:
  v38 = MEMORY[0x277CEBCF8];
  v39 = MEMORY[0x277CCACA8];
  modelName3 = [(ATXMLInferenceRunner *)self modelName];
  v41 = [v39 stringWithFormat:@"End runInferenceOnItems loading: %@", modelName3];
  [v38 logCurrentMemoryFootprint:v41];

  v43 = __atxlog_handle_ml_inference(v42);
  v44 = v43;
  if (v55 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v43))
  {
    modelName4 = [(ATXMLInferenceRunner *)self modelName];
    v46 = modelName4;
    uTF8String2 = [modelName4 UTF8String];
    *v60 = 136446466;
    v61 = uTF8String2;
    v62 = 1026;
    v63 = v37;
    _os_signpost_emit_with_name_impl(&dword_2263AA000, v44, OS_SIGNPOST_INTERVAL_END, spid, "BatchedInference", "model=%{public,signpost.telemetry:string1}s-%{public,signpost.telemetry:number1}d enableTelemetry=YES ", v60, 0x12u);
  }

  if (error)
  {
    v48 = v37;
  }

  else
  {
    v48 = 1;
  }

  if ((v48 & 1) == 0)
  {
    v49 = v57;
    *error = v57;
  }

  return v37;
}

- (BOOL)runInferenceOnItem:(ATXPredictionItem *)item resultBlock:(id)block error:(id *)error
{
  v54 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v9 = MEMORY[0x277CEBCF8];
  v10 = MEMORY[0x277CCACA8];
  modelName = [(ATXMLInferenceRunner *)self modelName];
  v12 = [v10 stringWithFormat:@"Start single runInferenceOnItem loading: %@", modelName];
  [v9 logCurrentMemoryFootprint:v12];

  mlModel = [(ATXMLInferenceRunner *)self mlModel];

  if (!mlModel)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ATXMLInferenceRunner.mm" lineNumber:229 description:@"Valid ML model should exist for inference"];
  }

  v15 = __atxlog_handle_ml_inference(v14);
  v16 = os_signpost_id_generate(v15);

  v18 = __atxlog_handle_ml_inference(v17);
  v19 = v18;
  if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    modelName2 = [(ATXMLInferenceRunner *)self modelName];
    *buf = 136446210;
    uTF8String = [modelName2 UTF8String];
    _os_signpost_emit_with_name_impl(&dword_2263AA000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v16, "SingleInference", "model=%{public,signpost.telemetry:string1}s enableTelemetry=YES ", buf, 0xCu);
  }

  featuresToConcatenate = [(ATXMLInferenceRunner *)self featuresToConcatenate];
  v22 = featuresToConcatenate == 0;

  if (v22)
  {
    v25 = [[ATXMLInferenceFeatureProvider alloc] initWithPredictionItem:item];
  }

  else
  {
    v23 = [ATXMLInferenceMultiArrayFeatureProvider alloc];
    featuresToConcatenate2 = [(ATXMLInferenceRunner *)self featuresToConcatenate];
    v25 = [(ATXMLInferenceMultiArrayFeatureProvider *)v23 initWithPredictionItem:item featuresToConcatenate:featuresToConcatenate2];
  }

  mlModel2 = [(ATXMLInferenceRunner *)self mlModel];
  v47 = 0;
  v27 = [mlModel2 predictionFromFeatures:v25 error:&v47];
  v28 = v47;

  if (v27)
  {
    v30 = [(ATXMLInferenceRunner *)self _inferenceResultWithOutputFeatureProvider:v27 inputFeatureProvider:v25];
    blockCopy[2](blockCopy, item, v30);
  }

  else
  {
    v30 = __atxlog_handle_ml_inference(v29);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      mlModel3 = [(ATXMLInferenceRunner *)self mlModel];
      [ATXMLInferenceRunner runInferenceOnItems:mlModel3 resultBlock:v28 error:buf];
    }
  }

  v32 = MEMORY[0x277CEBCF8];
  v33 = MEMORY[0x277CCACA8];
  modelName3 = [(ATXMLInferenceRunner *)self modelName];
  v35 = [v33 stringWithFormat:@"End single runInferenceOnItem loading: %@", modelName3];
  [v32 logCurrentMemoryFootprint:v35];

  v37 = __atxlog_handle_ml_inference(v36);
  v38 = v37;
  if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v37))
  {
    modelName4 = [(ATXMLInferenceRunner *)self modelName];
    v40 = modelName4;
    uTF8String2 = [modelName4 UTF8String];
    *v48 = 136446466;
    v49 = uTF8String2;
    v50 = 1026;
    v51 = v27 != 0;
    _os_signpost_emit_with_name_impl(&dword_2263AA000, v38, OS_SIGNPOST_INTERVAL_END, v16, "SingleInference", "model=%{public,signpost.telemetry:string1}s-%{public,signpost.telemetry:number1}d enableTelemetry=YES ", v48, 0x12u);
  }

  if (error)
  {
    v42 = v27 != 0;
  }

  else
  {
    v42 = 1;
  }

  if (!v42)
  {
    v43 = v28;
    *error = v28;
  }

  return v27 != 0;
}

- (void)_inferenceResultWithOutputFeatureProvider:(os_log_t)log inputFeatureProvider:.cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_2263AA000, log, OS_LOG_TYPE_ERROR, "Encountered non-double feature value in the non MultArray inference path; not supported.", buf, 2u);
}

- (void)runInferenceOnItems:(void *)a1 resultBlock:(uint64_t)a2 error:(uint64_t)a3 .cold.1(void *a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_6(a1, a2, a3, 5.778e-34);
  _os_log_error_impl(&dword_2263AA000, v5, OS_LOG_TYPE_ERROR, "Failed to run inference for %@ : %@", v4, 0x16u);
}

@end