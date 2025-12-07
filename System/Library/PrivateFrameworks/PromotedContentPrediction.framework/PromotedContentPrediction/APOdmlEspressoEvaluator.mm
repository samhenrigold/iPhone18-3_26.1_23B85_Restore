@interface APOdmlEspressoEvaluator
- (APOdmlEspressoEvaluator)initWithTrainingRowBuilder:(id)builder recipe:(id)recipe netURL:(id)l;
- (BOOL)_setError:(id *)error errorCode:(int64_t)code;
- (id)_computeModelDeltas:(id)deltas weightsAfter:(id)after error:(id *)error;
- (id)_evaluate:(id)_evaluate error:(id *)error;
- (id)_generateMetrics:(id)metrics postTrainingMetrics:(id)trainingMetrics tapAndImpressionMetrics:(id)impressionMetrics deltaPttrMetrics:(id)pttrMetrics;
- (id)evaluate:(id *)evaluate;
@end

@implementation APOdmlEspressoEvaluator

- (APOdmlEspressoEvaluator)initWithTrainingRowBuilder:(id)builder recipe:(id)recipe netURL:(id)l
{
  builderCopy = builder;
  recipeCopy = recipe;
  lCopy = l;
  v15.receiver = self;
  v15.super_class = APOdmlEspressoEvaluator;
  v12 = [(APOdmlEspressoEvaluator *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_builder, builder);
    objc_storeStrong(&v13->_recipe, recipe);
    objc_storeStrong(&v13->_netURL, l);
    v13->_trainingSetSize = 0;
  }

  return v13;
}

- (id)evaluate:(id *)evaluate
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = OdmlLogForCategory(0xBuLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 138412290;
    v24 = objc_opt_class();
    v6 = v24;
    _os_log_impl(&dword_260ECB000, v5, OS_LOG_TYPE_DEFAULT, "[%@]: Evaluation begins.", &v23, 0xCu);
  }

  netURL = [(APOdmlEspressoEvaluator *)self netURL];
  v8 = [(APOdmlEspressoEvaluator *)self _evaluate:netURL error:evaluate];

  if (v8)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[APOdmlEspressoEvaluator trainingSetSize](self, "trainingSetSize")}];
    [dictionary setValue:v10 forKey:@"NumRows"];

    recipe = [(APOdmlEspressoEvaluator *)self recipe];
    batchSize = [recipe batchSize];
    [dictionary setValue:batchSize forKey:@"BatchSize"];

    recipe2 = [(APOdmlEspressoEvaluator *)self recipe];
    localIterationsCount = [recipe2 localIterationsCount];
    [dictionary setValue:localIterationsCount forKey:@"LocalIterationsCount"];

    recipe3 = [(APOdmlEspressoEvaluator *)self recipe];
    learningRate = [recipe3 learningRate];
    [dictionary setValue:learningRate forKey:@"LearningRate"];

    v17 = OdmlLogForCategory(0xBuLL);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v23) = 0;
      _os_log_impl(&dword_260ECB000, v17, OS_LOG_TYPE_DEFAULT, "Preparing to evaluate with the following inputs", &v23, 2u);
    }

    [APOdmlLogUtility logWithLoggerKey:@"TrainingParameters" message:dictionary category:11];
    v18 = [v8 objectForKey:@"Metrics"];
    recipe4 = [(APOdmlEspressoEvaluator *)self recipe];
    weightNames = [recipe4 weightNames];
    [v18 setValue:weightNames forKey:@"UpdatedModelIndices"];

    v21 = [v8 copy];
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (id)_evaluate:(id)_evaluate error:(id *)error
{
  v82 = *MEMORY[0x277D85DE8];
  _evaluateCopy = _evaluate;
  v7 = OdmlLogForCategory(0xBuLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v81 = _evaluateCopy;
    _os_log_impl(&dword_260ECB000, v7, OS_LOG_TYPE_DEFAULT, "Evaluation in C begins with netpath: %@", buf, 0xCu);
  }

  v8 = [APOdmlEspressoFacade alloc];
  recipe = [(APOdmlEspressoEvaluator *)self recipe];
  v10 = [(APOdmlEspressoFacade *)v8 initWithEspressoNetURL:_evaluateCopy recipe:recipe error:error];

  if (!v10)
  {
    v14 = OdmlLogForCategory(0xBuLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_260ECB000, v14, OS_LOG_TYPE_ERROR, "Failed to initialize the Espresso network.", buf, 2u);
    }

    goto LABEL_54;
  }

  builder = [(APOdmlEspressoEvaluator *)self builder];
  requiredFeatures = [(APOdmlEspressoFacade *)v10 requiredFeatures];
  [builder addRequiredFeatures:requiredFeatures];

  builder2 = [(APOdmlEspressoEvaluator *)self builder];
  v14 = [builder2 generateTrainingSet:error];

  if (!v14 || ![v14 count])
  {
    v45 = OdmlLogForCategory(0xBuLL);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_260ECB000, v45, OS_LOG_TYPE_ERROR, "Failed to find any training row.", buf, 2u);
    }

    if (error && !*error)
    {
      [(APOdmlEspressoEvaluator *)self _setError:error errorCode:8012];
    }

    goto LABEL_54;
  }

  v15 = OdmlLogForCategory(0xBuLL);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v81 = v14;
    _os_log_impl(&dword_260ECB000, v15, OS_LOG_TYPE_DEFAULT, "Generated the following training rows: %@", buf, 0xCu);
  }

  [(APOdmlEspressoEvaluator *)self setTrainingSetSize:[v14 count]];
  recipe2 = [(APOdmlEspressoEvaluator *)self recipe];
  batchSize = [recipe2 batchSize];
  unsignedIntegerValue = [batchSize unsignedIntegerValue];

  if (!unsignedIntegerValue)
  {
    v46 = OdmlLogForCategory(0xBuLL);
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_260ECB000, v46, OS_LOG_TYPE_ERROR, "Batch size should not be zero.", buf, 2u);
    }

    [(APOdmlEspressoEvaluator *)self _setError:error errorCode:8037];
LABEL_54:
    dictionary = 0;
    goto LABEL_55;
  }

  if ([(APOdmlEspressoEvaluator *)self trainingSetSize]< unsignedIntegerValue)
  {
    unsignedIntegerValue = [(APOdmlEspressoEvaluator *)self trainingSetSize];
  }

  if ([(APOdmlEspressoFacade *)v10 changeEspressoBatchSize:unsignedIntegerValue error:error])
  {
    if ([(APOdmlEspressoFacade *)v10 finalizeEspressoPipeline:error])
    {
      v19 = OdmlLogForCategory(0xBuLL);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_260ECB000, v19, OS_LOG_TYPE_DEFAULT, "Weights after initialization:\n", buf, 2u);
      }

      v73 = [(APOdmlEspressoFacade *)v10 retrieveWeights:error];
      if (!v73)
      {
        v50 = OdmlLogForCategory(0xBuLL);
        if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_260ECB000, v50, OS_LOG_TYPE_ERROR, "Failed to find any weights before training.", buf, 2u);
        }

        [(APOdmlEspressoEvaluator *)self _setError:error errorCode:8029];
        dictionary = 0;
        goto LABEL_94;
      }

      v20 = [(APOdmlEspressoFacade *)v10 retrieveWeights2D:error];
      if (!v20)
      {
        v51 = OdmlLogForCategory(0xBuLL);
        if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_260ECB000, v51, OS_LOG_TYPE_ERROR, "Failed to retrieve weights by preserving the shape.", buf, 2u);
        }

        [(APOdmlEspressoEvaluator *)self _setError:error errorCode:8029];
        dictionary = 0;
        goto LABEL_93;
      }

      [APOdmlLogUtility logWithLoggerKey:@"ModelWeightsBeforeTraining" message:v20 category:11];
      v68 = v20;
      v69 = [(APOdmlEspressoFacade *)v10 computeAccuracyAndLoss:v14 error:error];
      if (v69)
      {
        if ([(APOdmlEspressoFacade *)v10 trainWithTrainingSet:v14 error:error])
        {
          v61 = [(APOdmlEspressoFacade *)v10 computeAccuracyAndLoss:v14 error:error];
          if (v61)
          {
            v21 = OdmlLogForCategory(0xBuLL);
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_260ECB000, v21, OS_LOG_TYPE_DEFAULT, "Weights after training:\n", buf, 2u);
            }

            v22 = [(APOdmlEspressoFacade *)v10 retrieveWeights:error];
            v60 = v22;
            if (v22)
            {
              v23 = [(APOdmlEspressoFacade *)v10 retrieveWeights2D:error];
              v59 = v23;
              if (v23)
              {
                [APOdmlLogUtility logWithLoggerKey:@"ModelWeightsAfterTraining" message:v23 category:11];
                v58 = [(APOdmlEspressoEvaluator *)self _computeModelDeltas:v73 weightsAfter:v22 error:0];
                v24 = 0x277CBE000uLL;
                array = [MEMORY[0x277CBEB18] array];
                array2 = [MEMORY[0x277CBEB18] array];
                array3 = [MEMORY[0x277CBEB18] array];
                v77 = 0u;
                v78 = 0u;
                v75 = 0u;
                v76 = 0u;
                obj = v14;
                v25 = [obj countByEnumeratingWithState:&v75 objects:v79 count:16];
                if (v25)
                {
                  v64 = *v76;
                  while (2)
                  {
                    v26 = 0;
                    v63 = v25;
                    do
                    {
                      if (*v76 != v64)
                      {
                        objc_enumerationMutation(obj);
                      }

                      v70 = v26;
                      v27 = *(*(&v75 + 1) + 8 * v26);
                      array4 = [*(v24 + 2840) array];
                      v71 = array4;
                      [array4 addObject:v27];
                      v74 = [(APOdmlEspressoFacade *)v10 computeClientPttr:array4 error:error];
                      if (!v74)
                      {
                        v56 = OdmlLogForCategory(0xBuLL);
                        if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 0;
                          _os_log_impl(&dword_260ECB000, v56, OS_LOG_TYPE_ERROR, "Failed to compute clientPttr after training.", buf, 2u);
                        }

                        dictionary = 0;
                        v44 = obj;
                        goto LABEL_85;
                      }

                      v29 = OdmlLogForCategory(0xBuLL);
                      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 138412290;
                        v81 = v74;
                        _os_log_impl(&dword_260ECB000, v29, OS_LOG_TYPE_DEFAULT, "clientPttr: %@", buf, 0xCu);
                      }

                      [array addObject:v74];
                      features = [v27 features];
                      v72 = [features objectForKeyedSubscript:@"pTTRLogit"];

                      if ([v72 count])
                      {
                        v31 = [v72 objectAtIndexedSubscript:0];
                        v32 = MEMORY[0x277CCABB0];
                        [v74 floatValue];
                        v34 = v33;
                        [v31 floatValue];
                        *&v36 = v34 - v35;
                        v37 = [v32 numberWithFloat:v36];
                        v38 = OdmlLogForCategory(0xBuLL);
                        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 138412290;
                          v81 = v37;
                          _os_log_impl(&dword_260ECB000, v38, OS_LOG_TYPE_DEFAULT, "deltaPttr: %@", buf, 0xCu);
                        }

                        [array2 addObject:v37];
                      }

                      else
                      {
                        v39 = OdmlLogForCategory(0xBuLL);
                        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 0;
                          _os_log_impl(&dword_260ECB000, v39, OS_LOG_TYPE_ERROR, "server side PTTR does not exist for a trainingRow", buf, 2u);
                        }

                        v31 = [MEMORY[0x277CCABB0] numberWithFloat:0.0];
                        [array2 addObject:v31];
                      }

                      builder3 = [(APOdmlEspressoEvaluator *)self builder];
                      v41 = [builder3 metricsForTrainingRow:v27 withClientPttr:v74];

                      [array3 addObject:v41];
                      v26 = v70 + 1;
                      v24 = 0x277CBE000;
                    }

                    while (v63 != v70 + 1);
                    v25 = [obj countByEnumeratingWithState:&v75 objects:v79 count:16];
                    if (v25)
                    {
                      continue;
                    }

                    break;
                  }
                }

                v42 = OdmlLogForCategory(0xBuLL);
                if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v81 = array3;
                  _os_log_impl(&dword_260ECB000, v42, OS_LOG_TYPE_DEFAULT, "tapAndImpressionMetrics: %@", buf, 0xCu);
                }

                dictionary = [MEMORY[0x277CBEB38] dictionary];
                [dictionary setValue:v58 forKey:@"Deltas"];
                v44 = [(APOdmlEspressoEvaluator *)self _generateMetrics:v69 postTrainingMetrics:v61 tapAndImpressionMetrics:array3 deltaPttrMetrics:array2];
                [dictionary setValue:v44 forKey:@"Metrics"];
LABEL_85:

                v57 = v58;
              }

              else
              {
                v57 = OdmlLogForCategory(0xBuLL);
                if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
                {
                  *buf = 0;
                  _os_log_impl(&dword_260ECB000, v57, OS_LOG_TYPE_ERROR, "Failed to retrieve weights after training by preserving the shape.", buf, 2u);
                }

                dictionary = 0;
              }

              v55 = v59;
            }

            else
            {
              v55 = OdmlLogForCategory(0xBuLL);
              if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_impl(&dword_260ECB000, v55, OS_LOG_TYPE_ERROR, "Failed to find any weight after training.", buf, 2u);
              }

              dictionary = 0;
            }

            v54 = v60;
          }

          else
          {
            v54 = OdmlLogForCategory(0xBuLL);
            if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&dword_260ECB000, v54, OS_LOG_TYPE_ERROR, "Failed to compute accuracy and loss after training.", buf, 2u);
            }

            dictionary = 0;
          }

          v52 = v61;
          goto LABEL_92;
        }

        v52 = OdmlLogForCategory(0xBuLL);
        if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          v53 = "Failed to train the model";
          goto LABEL_74;
        }
      }

      else
      {
        v52 = OdmlLogForCategory(0xBuLL);
        if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          v53 = "Failed to find preTrainingMetrics.";
LABEL_74:
          _os_log_impl(&dword_260ECB000, v52, OS_LOG_TYPE_ERROR, v53, buf, 2u);
        }
      }

      dictionary = 0;
LABEL_92:

      v20 = v68;
LABEL_93:

LABEL_94:
      v48 = v73;
      goto LABEL_95;
    }

    v48 = OdmlLogForCategory(0xBuLL);
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v49 = "Failed to finalize the Espresso pipeline.";
      goto LABEL_62;
    }
  }

  else
  {
    v48 = OdmlLogForCategory(0xBuLL);
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v49 = "Failed to change input shape.";
LABEL_62:
      _os_log_impl(&dword_260ECB000, v48, OS_LOG_TYPE_ERROR, v49, buf, 2u);
    }
  }

  dictionary = 0;
LABEL_95:

LABEL_55:

  return dictionary;
}

- (id)_computeModelDeltas:(id)deltas weightsAfter:(id)after error:(id *)error
{
  deltasCopy = deltas;
  afterCopy = after;
  v10 = [deltasCopy count];
  if (v10 != [afterCopy count])
  {
    [(APOdmlEspressoEvaluator *)self _setError:error errorCode:8029];
  }

  array = [MEMORY[0x277CBEB18] array];
  for (i = 0; i < [deltasCopy count]; ++i)
  {
    v13 = [deltasCopy objectAtIndexedSubscript:i];
    [v13 floatValue];
    v15 = v14;

    v16 = [afterCopy objectAtIndexedSubscript:i];
    [v16 floatValue];
    v18 = v17;

    *&v19 = v18 - v15;
    v20 = [MEMORY[0x277CCABB0] numberWithFloat:v19];
    [array addObject:v20];
  }

  v21 = [array copy];

  return v21;
}

- (id)_generateMetrics:(id)metrics postTrainingMetrics:(id)trainingMetrics tapAndImpressionMetrics:(id)impressionMetrics deltaPttrMetrics:(id)pttrMetrics
{
  metricsCopy = metrics;
  trainingMetricsCopy = trainingMetrics;
  impressionMetricsCopy = impressionMetrics;
  pttrMetricsCopy = pttrMetrics;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if ([metricsCopy count] == 2)
  {
    v14 = [metricsCopy objectAtIndexedSubscript:0];
    [dictionary setValue:v14 forKey:@"PreTrainingAccuracy"];

    v15 = [metricsCopy objectAtIndexedSubscript:1];
    [dictionary setValue:v15 forKey:@"PreTrainingLoss"];
  }

  if ([trainingMetricsCopy count] == 2)
  {
    v16 = [trainingMetricsCopy objectAtIndexedSubscript:0];
    [dictionary setValue:v16 forKey:@"PostTrainingAccuracy"];

    v17 = [trainingMetricsCopy objectAtIndexedSubscript:1];
    [dictionary setValue:v17 forKey:@"PostTrainingLoss"];
  }

  [dictionary setValue:impressionMetricsCopy forKey:@"AdditionalMetrics"];
  [dictionary setValue:pttrMetricsCopy forKey:@"delta_pTTR"];

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