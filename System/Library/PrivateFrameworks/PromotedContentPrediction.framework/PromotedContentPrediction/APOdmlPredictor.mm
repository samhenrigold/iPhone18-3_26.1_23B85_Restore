@interface APOdmlPredictor
- (APOdmlPredictor)initWithResponses:(id)responses assetManager:(id)manager model:(id)model;
- (id)predictTapThroughRate;
- (void)localOutputLog:(id)log adamID:(id)d;
- (void)validateOutput:(id)output adamID:(id)d;
@end

@implementation APOdmlPredictor

- (APOdmlPredictor)initWithResponses:(id)responses assetManager:(id)manager model:(id)model
{
  responsesCopy = responses;
  managerCopy = manager;
  modelCopy = model;
  v22.receiver = self;
  v22.super_class = APOdmlPredictor;
  v11 = [(APOdmlPredictor *)&v22 init];
  if (v11 && ([responsesCopy valueForKey:@"adamID"], v12 = objc_claimAutoreleasedReturnValue(), adamIDs = v11->_adamIDs, v11->_adamIDs = v12, adamIDs, objc_storeStrong(&v11->_assetManager, manager), objc_storeStrong(&v11->_predictionModel, model), objc_msgSend(MEMORY[0x277CBEAA8], "date"), v14 = objc_claimAutoreleasedReturnValue(), v15 = -[APOdmlFeatureHandler initWithResponses:assetManager:model:]([APOdmlFeatureHandler alloc], "initWithResponses:assetManager:model:", responsesCopy, managerCopy, modelCopy), featureHandler = v11->_featureHandler, v11->_featureHandler = v15, featureHandler, objc_msgSend(MEMORY[0x277CCA9B8], "errorWithDomain:code:userInfo:", @"APOdmlRerankingErrorDomain", 2102, 0), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x277CBEAA8], "date"), v18 = objc_claimAutoreleasedReturnValue(), +[APOdmlAnalytics sendTimedEvent:statusSuccess:additionalDetails:startDate:endDate:](APOdmlAnalyticsReranking, "sendTimedEvent:statusSuccess:additionalDetails:startDate:endDate:", v17, 1, 0, v14, v18), v18, v19 = v11->_featureHandler, v17, v14, !v19))
  {
    v20 = 0;
  }

  else
  {
    v20 = v11;
  }

  return v20;
}

- (id)predictTapThroughRate
{
  v48 = *MEMORY[0x277D85DE8];
  featureHandler = [(APOdmlPredictor *)self featureHandler];
  batchInput = [featureHandler batchInput];

  if (batchInput)
  {
    predictionModel = [(APOdmlPredictor *)self predictionModel];
    v6 = OdmlLogForCategory(5uLL);
    v7 = os_signpost_id_generate(v6);

    v8 = OdmlLogForCategory(5uLL);
    v9 = v8;
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_260ECB000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "Batch PTTR Prediction", &unk_260EFF3C5, buf, 2u);
    }

    date = [MEMORY[0x277CBEAA8] date];
    featureHandler2 = [(APOdmlPredictor *)self featureHandler];
    batchInput2 = [featureHandler2 batchInput];
    v43 = 0;
    v13 = [predictionModel predictionsFromBatch:batchInput2 error:&v43];
    v14 = v43;

    v15 = OdmlLogForCategory(5uLL);
    v16 = v15;
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_260ECB000, v16, OS_SIGNPOST_INTERVAL_END, v7, "Batch PTTR Prediction", &unk_260EFF3C5, buf, 2u);
    }

    if (v14 || !v13)
    {
      v36 = OdmlLogForCategory(5uLL);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        v37 = objc_opt_class();
        *buf = 138412546;
        v45 = v37;
        v46 = 2112;
        v47 = v14;
        v38 = v37;
        _os_log_impl(&dword_260ECB000, v36, OS_LOG_TYPE_ERROR, "[%@] Error predicting tap through rate: %@", buf, 0x16u);
      }

      v33 = [MEMORY[0x277CCA9B8] errorWithDomain:@"APOdmlPredictionErrorDomain" code:4002 userInfo:0];
      [APOdmlAnalyticsPrediction sendEvent:v33 additionalDetails:0];
      v32 = 0;
    }

    else
    {
      v42 = predictionModel;
      v17 = [MEMORY[0x277CCA9B8] errorWithDomain:@"APOdmlRerankingErrorDomain" code:2103 userInfo:0];
      date2 = [MEMORY[0x277CBEAA8] date];
      v40 = v17;
      v41 = date;
      [APOdmlAnalyticsReranking sendTimedEvent:v17 statusSuccess:1 additionalDetails:0 startDate:date endDate:date2];

      [APOdmlAnalyticsPrediction sendEvent:0 additionalDetails:0];
      array = [MEMORY[0x277CBEB18] array];
      if ([v13 count] >= 1)
      {
        v20 = 0;
        do
        {
          v21 = [v13 featuresAtIndex:v20];
          featureNames = [v21 featureNames];
          anyObject = [featureNames anyObject];

          v24 = [v21 featureValueForName:anyObject];
          v25 = v24;
          if (v24)
          {
            multiArrayValue = [v24 multiArrayValue];
            v27 = [multiArrayValue count];

            if (v27 >= 1)
            {
              multiArrayValue2 = [v25 multiArrayValue];
              v29 = [multiArrayValue2 objectAtIndexedSubscript:0];

              adamIDs = [(APOdmlPredictor *)self adamIDs];
              v31 = [adamIDs objectAtIndexedSubscript:v20];
              [(APOdmlPredictor *)self validateOutput:v29 adamID:v31];

              [array addObject:v29];
            }
          }

          ++v20;
        }

        while (v20 < [v13 count]);
      }

      v32 = [array copy];

      v33 = 0;
      date = v41;
      predictionModel = v42;
      v14 = 0;
    }
  }

  else
  {
    v34 = OdmlLogForCategory(5uLL);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v45 = objc_opt_class();
      v35 = v45;
      _os_log_impl(&dword_260ECB000, v34, OS_LOG_TYPE_ERROR, "[%@] Cannot predict because input is nil.", buf, 0xCu);
    }

    v33 = [MEMORY[0x277CCA9B8] errorWithDomain:@"APOdmlPredictionErrorDomain" code:4001 userInfo:0];
    [APOdmlAnalyticsPrediction sendEvent:v33 additionalDetails:0];
    v32 = 0;
  }

  return v32;
}

- (void)validateOutput:(id)output adamID:(id)d
{
  v57 = *MEMORY[0x277D85DE8];
  outputCopy = output;
  dCopy = d;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [dictionary setValue:@"modelOutput" forKey:@"featureName"];
  if (outputCopy)
  {
    stringValue = [outputCopy stringValue];
    [dictionary setValue:stringValue forKey:@"featureValue"];

    v10 = [dictionary copy];
    [(APOdmlPredictor *)self localOutputLog:v10 adamID:dCopy];

    assetManager = [(APOdmlPredictor *)self assetManager];
    v12 = [assetManager stringValueForFactor:@"ModelOutputConfig"];

    if (v12)
    {
      v13 = [v12 dataUsingEncoding:4];
      v55 = 0;
      v14 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v13 options:0 error:&v55];
      v15 = v55;
      if (!v15)
      {
        v48 = v13;
        v16 = [v14 objectForKeyedSubscript:@"min"];
        if (v16)
        {
          [outputCopy floatValue];
          v18 = v17;
          [v16 floatValue];
          if (v18 < v19)
          {
            v20 = [MEMORY[0x277CCA9B8] errorWithDomain:@"APODMLDESPluginErrorDomain" code:4006 userInfo:0];
            v21 = [dictionary copy];
            [APOdmlAnalyticsPrediction sendEvent:v20 additionalDetails:v21];
          }
        }

        v46 = v16;
        v49 = v12;
        v50 = dCopy;
        v22 = [v14 objectForKeyedSubscript:@"max"];
        if (v22)
        {
          [outputCopy floatValue];
          v24 = v23;
          [v22 floatValue];
          if (v24 > v25)
          {
            v26 = [MEMORY[0x277CCA9B8] errorWithDomain:@"APODMLDESPluginErrorDomain" code:4005 userInfo:0];
            v27 = [dictionary copy];
            [APOdmlAnalyticsPrediction sendEvent:v26 additionalDetails:v27];
          }
        }

        v45 = v22;
        v28 = outputCopy;
        v47 = v14;
        v29 = [v14 objectForKeyedSubscript:@"sentinelValueSet"];
        v51 = 0u;
        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        v30 = [v29 countByEnumeratingWithState:&v51 objects:v56 count:16];
        if (v30)
        {
          v31 = v30;
          v32 = *v52;
          do
          {
            for (i = 0; i != v31; ++i)
            {
              if (*v52 != v32)
              {
                objc_enumerationMutation(v29);
              }

              v34 = *(*(&v51 + 1) + 8 * i);
              if (v34)
              {
                null = [MEMORY[0x277CBEB68] null];
                v36 = [v34 isEqual:null];

                if ((v36 & 1) == 0)
                {
                  [v28 floatValue];
                  v38 = v37;
                  [v34 floatValue];
                  if (v38 == v39)
                  {
                    v40 = [MEMORY[0x277CCA9B8] errorWithDomain:@"APODMLDESPluginErrorDomain" code:4007 userInfo:0];
                    v41 = [dictionary copy];
                    [APOdmlAnalyticsPrediction sendEvent:v40 additionalDetails:v41];
                  }
                }
              }
            }

            v31 = [v29 countByEnumeratingWithState:&v51 objects:v56 count:16];
          }

          while (v31);
        }

        outputCopy = v28;
        v12 = v49;
        dCopy = v50;
        v14 = v47;
        v13 = v48;
        v15 = 0;
      }
    }
  }

  else
  {
    v42 = [MEMORY[0x277CCA9B8] errorWithDomain:@"APODMLDESPluginErrorDomain" code:4007 userInfo:0];
    v43 = [dictionary copy];
    [APOdmlAnalyticsPrediction sendEvent:v42 additionalDetails:v43];

    v44 = [dictionary copy];
    [(APOdmlPredictor *)self localOutputLog:v44 adamID:dCopy];
  }
}

- (void)localOutputLog:(id)log adamID:(id)d
{
  v5 = MEMORY[0x277CBEB38];
  dCopy = d;
  v7 = [v5 dictionaryWithDictionary:log];
  [v7 setValue:dCopy forKey:@"adamID"];

  [APOdmlLogUtility logWithLoggerKey:@"InferenceModelOutput" message:v7 category:5];
}

@end