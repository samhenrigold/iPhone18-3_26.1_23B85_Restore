@interface CoreMLTrainer
+ (void)initialize;
- (id)evaluateWithModelURL:(id)l dataSource:(id)source error:(id *)error;
- (id)processModelURL:(id)l;
@end

@implementation CoreMLTrainer

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    sLog = os_log_create("com.apple.iCloudSubscriptionOptimizerCore.PFLPlugin", "CoreMLTrainer");

    MEMORY[0x2821F96F8]();
  }
}

- (id)processModelURL:(id)l
{
  v25 = *MEMORY[0x277D85DE8];
  lCopy = l;
  hasDirectoryPath = [lCopy hasDirectoryPath];
  v5 = sLog;
  v6 = os_log_type_enabled(sLog, OS_LOG_TYPE_INFO);
  if (hasDirectoryPath)
  {
    if (v6)
    {
      *buf = 138412290;
      v24 = lCopy;
      _os_log_impl(&dword_275B9B000, v5, OS_LOG_TYPE_INFO, "modelURL %@ is a directory.", buf, 0xCu);
    }

    v7 = lCopy;
  }

  else
  {
    if (v6)
    {
      *buf = 138412290;
      v24 = lCopy;
      _os_log_impl(&dword_275B9B000, v5, OS_LOG_TYPE_INFO, "modelURL %@ is a file URL.", buf, 0xCu);
    }

    absoluteString = [lCopy absoluteString];
    [CFSTR(""model.mil metadata.json];
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v9 = v19 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v10)
    {
      v11 = *v19;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v18 + 1) + 8 * i);
          if ([absoluteString hasSuffix:{v13, v18}])
          {
            v14 = [absoluteString substringToIndex:{objc_msgSend(absoluteString, "length") - objc_msgSend(v13, "length")}];

            absoluteString = v14;
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v10);
    }

    v15 = sLog;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = [MEMORY[0x277CBEBC0] URLWithString:absoluteString];
      *buf = 138412290;
      v24 = v16;
      _os_log_impl(&dword_275B9B000, v15, OS_LOG_TYPE_INFO, "modelURL is %@.", buf, 0xCu);
    }

    v7 = [MEMORY[0x277CBEBC0] URLWithString:absoluteString];
  }

  return v7;
}

- (id)evaluateWithModelURL:(id)l dataSource:(id)source error:(id *)error
{
  v115 = *MEMORY[0x277D85DE8];
  lCopy = l;
  sourceCopy = source;
  v90 = sourceCopy;
  v82 = objc_alloc_init(MEMORY[0x277CBFF38]);
  [v82 setComputeUnits:0];
  v10 = [(CoreMLTrainer *)self processModelURL:lCopy];

  v106 = 0;
  v80 = v10;
  v11 = [MEMORY[0x277CBFF20] modelWithContentsOfURL:v10 configuration:v82 error:&v106];
  v83 = v106;
  v81 = v11;
  if (v11)
  {
    v12 = objc_alloc(MEMORY[0x277CBFF70]);
    program = [v81 program];
    [sourceCopy learningRate];
    v105 = v83;
    v86 = [v12 initWithProgram:program learningRate:&v105 error:v14];
    v15 = v105;

    if (v86)
    {
      v89 = [MEMORY[0x277CBEBF8] mutableCopy];
      v91 = [[EvaluationDataSourceEspressoWrapper alloc] initWithEvaluatorDataSource:sourceCopy];
      for (i = 0; ; ++i)
      {
        recordCount = [sourceCopy recordCount];
        if (recordCount / [sourceCopy batchSize] <= i)
        {
          break;
        }

        v18 = [(EvaluationDataSourceEspressoWrapper *)v91 featureProviderAtIndex:i];
        [v89 addObject:v18];

        sourceCopy = v90;
      }

      v104 = v15;
      v85 = [objc_alloc(MEMORY[0x277CBFEB0]) initWithFeatureProviderArray:v89];
      v79 = [v86 evaluateUsingTestData:? error:?];
      v19 = v15;

      [v79 loss];
      v21 = v20;
      v22 = sLog;
      if (os_log_type_enabled(sLog, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        *v113 = v21;
        _os_log_impl(&dword_275B9B000, v22, OS_LOG_TYPE_INFO, "loss before training is: %f", buf, 0xCu);
      }

      array = [MEMORY[0x277CBEB18] array];
      array2 = [MEMORY[0x277CBEB18] array];
      v102 = 0u;
      v103 = 0u;
      v100 = 0u;
      v101 = 0u;
      layersToTrain = [v90 layersToTrain];
      v24 = [layersToTrain countByEnumeratingWithState:&v100 objects:v114 count:16];
      if (v24)
      {
        v25 = *v101;
        do
        {
          for (j = 0; j != v24; ++j)
          {
            if (*v101 != v25)
            {
              objc_enumerationMutation(layersToTrain);
            }

            [array addObject:*(*(&v100 + 1) + 8 * j)];
          }

          v24 = [layersToTrain countByEnumeratingWithState:&v100 objects:v114 count:16];
        }

        while (v24);
      }

      numLocalIterations = [v90 numLocalIterations];
      if (numLocalIterations < 1)
      {
        v35 = -1.0;
      }

      else
      {
        for (k = 0; k != numLocalIterations; ++k)
        {
          v29 = [MEMORY[0x277CBEB98] setWithArray:array];
          v99 = v19;
          v30 = [v86 trainUsingTrainingData:v85 evaluationMetricNames:v29 error:&v99];
          v31 = v99;

          v32 = sLog;
          if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
          {
            [v30 loss];
            *buf = 67109376;
            *v113 = k;
            *&v113[4] = 2048;
            *&v113[6] = v33;
            _os_log_impl(&dword_275B9B000, v32, OS_LOG_TYPE_INFO, "fit: iter=%d loss=%f", buf, 0x12u);
          }

          [v30 loss];
          v35 = v34;
          v36 = MEMORY[0x277CCABB0];
          [v30 loss];
          v37 = [v36 numberWithDouble:?];
          [array2 addObject:v37];

          v19 = v31;
        }

        v19 = v31;
      }

      v98 = v19;
      v78 = [v86 evaluateUsingTestData:v85 error:&v98];
      v43 = v98;

      [v78 loss];
      v45 = v44;
      v46 = sLog;
      if (os_log_type_enabled(sLog, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        *v113 = v45;
        _os_log_impl(&dword_275B9B000, v46, OS_LOG_TYPE_INFO, "loss after training is: %f", buf, 0xCu);
      }

      copyCurrentTrainingDelta = [v86 copyCurrentTrainingDelta];
      flattenedModelUpdate = [copyCurrentTrainingDelta flattenedModelUpdate];
      v47 = sLog;
      if (os_log_type_enabled(sLog, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_275B9B000, v47, OS_LOG_TYPE_INFO, "Started model evaluation", buf, 2u);
      }

      modelOutputName = [v90 modelOutputName];
      modelInputSchemaLabelName = [v90 modelInputSchemaLabelName];
      v48 = MEMORY[0x277CBEB98];
      v111 = modelOutputName;
      v49 = [MEMORY[0x277CBEA60] arrayWithObjects:&v111 count:1];
      v50 = [v48 setWithArray:v49];
      v97 = v43;
      v92 = [v86 evaluateUsingTestData:v85 evaluationMetricNames:v50 error:&v97];
      v83 = v97;

      array3 = [MEMORY[0x277CBEB18] array];
      for (m = 0; ; ++m)
      {
        evaluationMetrics = [v92 evaluationMetrics];
        v52 = [evaluationMetrics count] > m;

        if (!v52)
        {
          break;
        }

        evaluationMetrics2 = [v92 evaluationMetrics];
        v93 = [evaluationMetrics2 featuresAtIndex:m];

        v54 = [v93 featureValueForName:modelOutputName];
        multiArrayValue = [v54 multiArrayValue];

        v56 = [(EvaluationDataSourceEspressoWrapper *)v91 featureProviderAtIndex:m];
        v57 = [v56 objectForKeyedSubscript:modelInputSchemaLabelName];
        multiArrayValue2 = [v57 multiArrayValue];

        for (n = 0; ; ++n)
        {
          v60 = [multiArrayValue count];
          v61 = [multiArrayValue2 count];
          v62 = v60 >= v61 ? v61 : v60;
          if (v62 <= n)
          {
            break;
          }

          dictionary = [MEMORY[0x277CBEB38] dictionary];
          v64 = MEMORY[0x277CCABB0];
          v65 = [multiArrayValue objectAtIndexedSubscript:n];
          [v65 doubleValue];
          v66 = [v64 numberWithDouble:?];
          [dictionary setValue:v66 forKey:@"probability"];

          v67 = MEMORY[0x277CCABB0];
          v68 = [multiArrayValue2 objectAtIndexedSubscript:n];
          [v68 doubleValue];
          v70 = [v67 numberWithBool:v69 > 0.0];
          [dictionary setValue:v70 forKey:@"label"];

          [array3 addObject:dictionary];
        }
      }

      v109[0] = @"LossBeforeTraining";
      v71 = [MEMORY[0x277CCABB0] numberWithDouble:v21];
      v110[0] = v71;
      v109[1] = @"LossAfterTraining";
      v72 = [MEMORY[0x277CCABB0] numberWithDouble:v45];
      v110[1] = v72;
      v109[2] = @"TrainingLoss";
      v73 = [MEMORY[0x277CCABB0] numberWithDouble:v35];
      v110[2] = v73;
      v110[3] = array;
      v109[3] = @"UpdatedModelIndices";
      v109[4] = @"ModelDeltas";
      v110[4] = flattenedModelUpdate;
      v109[5] = @"TrainingLosses";
      v107 = @"losses";
      v108 = array2;
      v74 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v108 forKeys:&v107 count:1];
      v109[6] = @"OtherEvaluationMetric";
      v110[5] = v74;
      v110[6] = array3;
      v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v110 forKeys:v109 count:7];
    }

    else
    {
      v41 = sLog;
      if (os_log_type_enabled(sLog, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_275B9B000, v41, OS_LOG_TYPE_INFO, "Failed to load MLProgramTrainer.", buf, 2u);
      }

      if (v15)
      {
        v42 = v15;
        v40 = 0;
        *error = v15;
        v83 = v15;
      }

      else
      {
        v83 = 0;
        v40 = 0;
      }
    }
  }

  else
  {
    v38 = sLog;
    if (os_log_type_enabled(sLog, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *v113 = v10;
      _os_log_impl(&dword_275B9B000, v38, OS_LOG_TYPE_INFO, "Failed to load model from %@", buf, 0xCu);
    }

    if (v83)
    {
      v39 = v83;
      v40 = 0;
      *error = v83;
    }

    else
    {
      v83 = 0;
      v40 = 0;
    }
  }

  return v40;
}

@end