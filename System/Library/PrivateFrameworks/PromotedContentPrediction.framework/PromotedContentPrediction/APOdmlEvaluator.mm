@interface APOdmlEvaluator
- (APOdmlEvaluator)initWithTrainingRowBuilder:(id)builder recipe:(id)recipe modelURL:(id)l;
- (BOOL)_setError:(id *)error errorCode:(int64_t)code;
- (id)_generateMetricsForBatch:(id)batch preTraining:(id)training postTraining:(id)postTraining tapAndImpressions:(id)impressions pttrDeltas:(id)deltas;
- (id)evaluate:(id *)evaluate;
@end

@implementation APOdmlEvaluator

- (APOdmlEvaluator)initWithTrainingRowBuilder:(id)builder recipe:(id)recipe modelURL:(id)l
{
  builderCopy = builder;
  recipeCopy = recipe;
  lCopy = l;
  v15.receiver = self;
  v15.super_class = APOdmlEvaluator;
  v12 = [(APOdmlEvaluator *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_builder, builder);
    objc_storeStrong(&v13->_recipe, recipe);
    objc_storeStrong(&v13->_modelURL, l);
    v13->_trainingSetSize = 0;
  }

  return v13;
}

- (id)evaluate:(id *)evaluate
{
  v137[1] = *MEMORY[0x277D85DE8];
  v5 = OdmlLogForCategory(0xBuLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    *v133 = objc_opt_class();
    v6 = *v133;
    _os_log_impl(&dword_260ECB000, v5, OS_LOG_TYPE_DEBUG, "[%@] Evaluation begins.", buf, 0xCu);
  }

  v7 = MEMORY[0x277CBFF20];
  modelURL = [(APOdmlEvaluator *)self modelURL];
  v9 = [v7 modelFromCompiledURL:modelURL isCPUOnly:0];

  recipe = [(APOdmlEvaluator *)self recipe];
  coreMLRecipe = [recipe coreMLRecipe];

  v12 = MEMORY[0x277CBEB98];
  outputNames = [coreMLRecipe outputNames];
  v14 = [v12 setWithArray:outputNames];

  recipe2 = [(APOdmlEvaluator *)self recipe];
  shouldShuffle = [recipe2 shouldShuffle];
  bOOLValue = [shouldShuffle BOOLValue];

  if (bOOLValue)
  {
    configuration = [v9 configuration];
    shuffle = [MEMORY[0x277CBFF58] shuffle];
    v136 = shuffle;
    v137[0] = MEMORY[0x277CBEC38];
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v137 forKeys:&v136 count:1];
    [configuration setParameters:v20];

    [v9 setConfiguration:configuration];
  }

  inputNames = [coreMLRecipe inputNames];
  builder = [(APOdmlEvaluator *)self builder];
  [builder addRequiredFeatures:inputNames];

  builder2 = [(APOdmlEvaluator *)self builder];
  v24 = [builder2 generateTrainingSet:evaluate];

  if (!v24 || ![v24 count])
  {
    v43 = OdmlLogForCategory(0xBuLL);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_260ECB000, v43, OS_LOG_TYPE_ERROR, "Failed to find any training rows.", buf, 2u);
    }

    if (!evaluate || *evaluate)
    {
      goto LABEL_27;
    }

    v44 = &kAPODMLDESPluginNoDataToEvaluate;
LABEL_26:
    [(APOdmlEvaluator *)self _setError:evaluate errorCode:*v44];
LABEL_27:
    dictionary = 0;
    goto LABEL_85;
  }

  v25 = OdmlLogForCategory(0xBuLL);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    *v133 = v24;
    _os_log_impl(&dword_260ECB000, v25, OS_LOG_TYPE_DEBUG, "Generated the following training rows: %@", buf, 0xCu);
  }

  -[APOdmlEvaluator setTrainingSetSize:](self, "setTrainingSetSize:", [v24 count]);
  recipe3 = [(APOdmlEvaluator *)self recipe];
  batchSize = [recipe3 batchSize];
  unsignedIntegerValue = [batchSize unsignedIntegerValue];

  if (!unsignedIntegerValue)
  {
    v45 = OdmlLogForCategory(0xBuLL);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_260ECB000, v45, OS_LOG_TYPE_ERROR, "Batch size should not be zero.", buf, 2u);
    }

    v44 = &kAPODMLDESPluginBatchSizeZero;
    goto LABEL_26;
  }

  v118 = inputNames;
  trainingSetSize = [(APOdmlEvaluator *)self trainingSetSize];
  if (trainingSetSize < unsignedIntegerValue)
  {
    unsignedIntegerValue = trainingSetSize;
  }

  v30 = OdmlLogForCategory(0xBuLL);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    *v133 = unsignedIntegerValue;
    _os_log_impl(&dword_260ECB000, v30, OS_LOG_TYPE_DEBUG, "Batch size required: %ld", buf, 0xCu);
  }

  v31 = objc_alloc(MEMORY[0x277CBFEB0]);
  v120 = v24;
  v32 = [v24 subarrayWithRange:{0, unsignedIntegerValue}];
  v33 = [v31 initWithFeatureProviderArray:v32];

  v34 = objc_alloc(MEMORY[0x277CBFF70]);
  program = [v9 program];
  recipe4 = [(APOdmlEvaluator *)self recipe];
  learningRate = [recipe4 learningRate];
  [learningRate doubleValue];
  v129 = 0;
  v38 = [v34 initWithProgram:program learningRate:&v129 error:?];
  v39 = v129;

  if (v39)
  {
    v40 = OdmlLogForCategory(0xBuLL);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *v133 = v39;
      _os_log_impl(&dword_260ECB000, v40, OS_LOG_TYPE_ERROR, "Failed to init trainer. Reason: %@", buf, 0xCu);
    }

    dictionary = 0;
    i = v38;
    goto LABEL_84;
  }

  v128 = 0;
  v109 = [v38 evaluateUsingTestData:v33 evaluationMetricNames:v14 error:&v128];
  v46 = v128;
  i = v38;
  if (v46)
  {
    v39 = v46;
    v47 = OdmlLogForCategory(0xBuLL);
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *v133 = v39;
      _os_log_impl(&dword_260ECB000, v47, OS_LOG_TYPE_ERROR, "Failed to compute pre training results. Reason: %@", buf, 0xCu);
    }

    dictionary = 0;
    goto LABEL_32;
  }

  v119 = v38;
  v116 = v33;
  v107 = coreMLRecipe;
  v108 = v9;
  recipe5 = [(APOdmlEvaluator *)self recipe];
  localIterationsCount = [recipe5 localIterationsCount];
  intValue = [localIterationsCount intValue];

  if (intValue < 1)
  {
    v52 = 0;
    v51 = 0;
    v63 = v120;
LABEL_46:
    v126 = 0;
    v64 = [v119 evaluateUsingTestData:v116 evaluationMetricNames:v14 error:&v126];
    v65 = v126;
    if (v65)
    {
      v66 = OdmlLogForCategory(0xBuLL);
      if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *v133 = v65;
        _os_log_impl(&dword_260ECB000, v66, OS_LOG_TYPE_ERROR, "Failed to compute post training results. Reason: %@", buf, 0xCu);
      }
    }

    array = [MEMORY[0x277CBEB18] array];
    array2 = [MEMORY[0x277CBEB18] array];
    v122 = 0u;
    v123 = 0u;
    v124 = 0u;
    v125 = 0u;
    v67 = v63;
    v112 = [v67 countByEnumeratingWithState:&v122 objects:v131 count:16];
    v106 = v64;
    if (v112)
    {
      v111 = *v123;
      v115 = v14;
      obj = v67;
      while (2)
      {
        v68 = 0;
        v69 = 0x277CBF000uLL;
        do
        {
          if (*v123 != v111)
          {
            objc_enumerationMutation(obj);
          }

          v70 = *(*(&v122 + 1) + 8 * v68);
          v71 = objc_alloc(*(v69 + 3760));
          v130 = v70;
          v72 = [MEMORY[0x277CBEA60] arrayWithObjects:&v130 count:1];
          v73 = [v71 initWithFeatureProviderArray:v72];
          v121 = v65;
          array3 = [v119 evaluateUsingTestData:v73 evaluationMetricNames:v115 error:&v121];
          v39 = v121;

          if (v39)
          {
            v101 = OdmlLogForCategory(0xBuLL);
            if (os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              *v133 = v39;
              _os_log_impl(&dword_260ECB000, v101, OS_LOG_TYPE_ERROR, "Failed to evaluate row. Reason: %@", buf, 0xCu);
            }

            dictionary = 0;
            coreMLRecipe = v107;
            v9 = v108;
            v14 = v115;
            i = v119;
            v40 = v109;
            v104 = array2;
            goto LABEL_82;
          }

          v75 = array3;
          evaluationMetrics = [array3 evaluationMetrics];
          v77 = [evaluationMetrics featuresAtIndex:0];

          v117 = v77;
          v78 = [v77 featureValueForName:@"Identity"];
          v79 = OdmlLogForCategory(0xBuLL);
          v80 = v79;
          if (!v78)
          {
            if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&dword_260ECB000, v80, OS_LOG_TYPE_ERROR, "Failed to compute clientPttr after training.", buf, 2u);
            }

            dictionary = 0;
            coreMLRecipe = v107;
            v9 = v108;
            v14 = v115;
            i = v119;
            v40 = v109;
            v104 = array2;
            v101 = v117;
            goto LABEL_82;
          }

          if (os_log_type_enabled(v79, OS_LOG_TYPE_DEBUG))
          {
            multiArrayValue = [v78 multiArrayValue];
            v82 = [multiArrayValue objectAtIndexedSubscript:0];
            *buf = 138412290;
            *v133 = v82;
            _os_log_impl(&dword_260ECB000, v80, OS_LOG_TYPE_DEBUG, "Client pTTR: %@", buf, 0xCu);
          }

          multiArrayValue2 = [v78 multiArrayValue];
          v84 = [multiArrayValue2 objectAtIndexedSubscript:0];
          [array addObject:v84];

          features = [v70 features];
          v86 = [features objectForKeyedSubscript:@"pTTRLogit"];

          if ([v86 count])
          {
            multiArrayValue3 = [v78 multiArrayValue];
            v88 = [multiArrayValue3 objectAtIndexedSubscript:0];
            [v88 doubleValue];
            v90 = v89;
            v91 = [v86 objectAtIndexedSubscript:0];
            [v91 doubleValue];
            v93 = v90 - v92;

            v94 = [MEMORY[0x277CCABB0] numberWithDouble:v93];
            [array2 addObject:v94];
          }

          else
          {
            v95 = OdmlLogForCategory(0xBuLL);
            if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&dword_260ECB000, v95, OS_LOG_TYPE_ERROR, "server side PTTR does not exist for a trainingRow", buf, 2u);
            }

            [array2 addObject:&unk_28736F230];
          }

          v69 = 0x277CBF000;

          v65 = 0;
          ++v68;
        }

        while (v112 != v68);
        v67 = obj;
        v65 = 0;
        v39 = 0;
        v14 = v115;
        v112 = [obj countByEnumeratingWithState:&v122 objects:v131 count:16];
        if (v112)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v39 = v65;
    }

    obj = [MEMORY[0x277CBEA60] array];
    v96 = OdmlLogForCategory(0xBuLL);
    if (os_log_type_enabled(v96, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      *v133 = obj;
      _os_log_impl(&dword_260ECB000, v96, OS_LOG_TYPE_DEBUG, "tapAndImpressionMetrics: %@", buf, 0xCu);
    }

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    array3 = [MEMORY[0x277CBEB18] array];
    for (i = v119; v52; --v52)
    {
      v98 = *v51++;
      LODWORD(v97) = v98;
      v99 = [MEMORY[0x277CCABB0] numberWithFloat:v97];
      [array3 addObject:v99];
    }

    [dictionary setValue:array3 forKey:@"Deltas"];
    selfCopy = self;
    v40 = v109;
    v101 = [(APOdmlEvaluator *)selfCopy _generateMetricsForBatch:v116 preTraining:v109 postTraining:v106 tapAndImpressions:obj pttrDeltas:array2];
    coreMLRecipe = v107;
    weightNames = [v107 weightNames];
    [v101 setValue:weightNames forKey:@"UpdatedModelIndices"];

    v103 = [v101 copy];
    [dictionary setValue:v103 forKey:@"Metrics"];

    v104 = array2;
    v9 = v108;
LABEL_82:

    v47 = v106;
    v33 = v116;
    goto LABEL_83;
  }

  v51 = 0;
  v52 = 0;
  v53 = 0;
  while (1)
  {
    v127 = 0;
    i = v119;
    v54 = [v119 trainUsingTrainingData:v116 error:&v127];
    v55 = v127;
    if (v55)
    {
      break;
    }

    v56 = v14;
    copyCurrentTrainingDelta = [v119 copyCurrentTrainingDelta];
    flattenedModelUpdate = [copyCurrentTrainingDelta flattenedModelUpdate];

    copyCurrentTrainingDelta2 = [v119 copyCurrentTrainingDelta];
    flattenedModelUpdate2 = [copyCurrentTrainingDelta2 flattenedModelUpdate];
    bytes = [flattenedModelUpdate2 bytes];

    if (v51)
    {
      v14 = v56;
      if (v52)
      {
        v62 = 0;
        v63 = v120;
        do
        {
          *&v51[v62] = *(bytes + 4 * v62) + *&v51[v62];
          ++v62;
        }

        while (v52 != v62);
        goto LABEL_43;
      }
    }

    else
    {
      v52 = [flattenedModelUpdate length] >> 2;
      v51 = bytes;
      v14 = v56;
    }

    v63 = v120;
LABEL_43:

    if (++v53 == intValue)
    {
      goto LABEL_46;
    }
  }

  v39 = v55;
  v47 = OdmlLogForCategory(0xBuLL);
  if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109634;
    *v133 = v53;
    *&v133[4] = 1024;
    *&v133[6] = intValue;
    v134 = 2112;
    v135 = v39;
    _os_log_impl(&dword_260ECB000, v47, OS_LOG_TYPE_ERROR, "Failed to train model at epoch %d/%d. Reason: %@", buf, 0x18u);
  }

  dictionary = 0;
  coreMLRecipe = v107;
  v9 = v108;
  v33 = v116;
LABEL_32:
  v40 = v109;
LABEL_83:

LABEL_84:
  inputNames = v118;
  v24 = v120;
LABEL_85:

  return dictionary;
}

- (id)_generateMetricsForBatch:(id)batch preTraining:(id)training postTraining:(id)postTraining tapAndImpressions:(id)impressions pttrDeltas:(id)deltas
{
  v11 = MEMORY[0x277CBEB38];
  deltasCopy = deltas;
  impressionsCopy = impressions;
  postTrainingCopy = postTraining;
  trainingCopy = training;
  batchCopy = batch;
  dictionary = [v11 dictionary];
  averageLoss = [trainingCopy averageLoss];
  [dictionary setValue:averageLoss forKey:@"PreTrainingLoss"];

  v19 = [trainingCopy averageAccuracy:batchCopy];

  [dictionary setValue:v19 forKey:@"PreTrainingAccuracy"];
  averageLoss2 = [postTrainingCopy averageLoss];
  [dictionary setValue:averageLoss2 forKey:@"PostTrainingLoss"];

  v21 = [postTrainingCopy averageAccuracy:batchCopy];

  [dictionary setValue:v21 forKey:@"PostTrainingAccuracy"];
  [dictionary setValue:impressionsCopy forKey:@"AdditionalMetrics"];

  [dictionary setValue:deltasCopy forKey:@"delta_pTTR"];

  return dictionary;
}

- (BOOL)_setError:(id *)error errorCode:(int64_t)code
{
  if (error)
  {
    *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"APODMLDESPluginErrorDomain" code:code userInfo:0];
  }

  return error != 0;
}

@end