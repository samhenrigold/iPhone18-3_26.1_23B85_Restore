@interface UPQueryRunner
- (UPQueryRunner)initWithCoreModel:(id)model domainModelBundles:(id)bundles;
- (UPQueryRunner)initWithCoreModel:(id)model domainModels:(id)models;
- (id)combinedResultFromResults:(id)results;
- (id)dialogActFromQuery:(id)query;
- (id)multiTurnPredictionFromQuery:(id)query modelIdentifierToDomainResults:(id)results dialogAct:(id)act error:(id *)error;
- (id)predictionFromProtobufQuery:(id)query error:(id *)error;
- (id)predictionFromQuery:(id)query error:(id *)error;
- (id)singleTurnPredictionFromDomainResults:(id)results;
@end

@implementation UPQueryRunner

- (id)multiTurnPredictionFromQuery:(id)query modelIdentifierToDomainResults:(id)results dialogAct:(id)act error:(id *)error
{
  v32 = *MEMORY[0x277D85DE8];
  queryCopy = query;
  resultsCopy = results;
  v24 = queryCopy;
  actCopy = act;
  v11 = [(UPParserModel *)self->_coreModel predictionFromQuery:queryCopy error:error];
  v26 = v11;
  if (!v11)
  {
LABEL_13:
    v21 = 0;
    goto LABEL_14;
  }

  if (![v11 candidateCount])
  {
    if (error)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.uaapcustomluframework" code:2 userInfo:{0, resultsCopy}];
      *error = v21 = 0;
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v12 = [MEMORY[0x277CBEB58] set];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v13 = resultsCopy;
  v14 = [v13 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v14)
  {
    v15 = *v28;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v28 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(&v27 + 1) + 8 * i);
        v18 = [v13 objectForKeyedSubscript:{v17, resultsCopy}];
        v19 = [[UPContextualizerInput alloc] initWithDomainResult:v18 coreResult:v26 modelIdentifier:v17 query:v24 dialogAct:actCopy];
        v20 = [(UPContextualizer *)self->__contextualizer resultWithContextualizerInput:v19];
        [v12 addObject:v20];
      }

      v14 = [v13 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v14);
  }

  v21 = [(UPQueryRunner *)self combinedResultFromResults:v12];

LABEL_14:

  return v21;
}

- (id)singleTurnPredictionFromDomainResults:(id)results
{
  v3 = [(UPQueryRunner *)self combinedResultFromResults:results];

  return v3;
}

- (id)combinedResultFromResults:(id)results
{
  v28 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  v19 = NSStringFromSelector(sel_queryUUID);
  v20 = [resultsCopy valueForKey:v19];
  anyObject = [v20 anyObject];
  array = [MEMORY[0x277CBEB18] array];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = resultsCopy;
  v6 = [v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v6)
  {
    v7 = *v23;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v22 + 1) + 8 * i);
        candidateCount = [v9 candidateCount];
        if (candidateCount >= 1)
        {
          for (j = 0; j != candidateCount; ++j)
          {
            v12 = [v9 candidateAtRank:j];
            [array addObject:v12];
          }
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v6);
  }

  v13 = NSStringFromSelector(sel_probability);
  v14 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:v13 ascending:0];
  v26 = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
  v16 = [array sortedArrayUsingDescriptors:v15];

  v17 = [[UPResult alloc] initWithCandidates:v16 queryUUID:anyObject];

  return v17;
}

- (id)dialogActFromQuery:(id)query
{
  v18 = *MEMORY[0x277D85DE8];
  queryCopy = query;
  dialogAct = [queryCopy dialogAct];

  if (dialogAct)
  {
    dialogActConverter = self->__dialogActConverter;
    dialogAct2 = [queryCopy dialogAct];
    v15 = 0;
    v8 = [(UPDialogActConverter *)dialogActConverter convertFromDialogAct:dialogAct2 error:&v15];
    v9 = v15;

    v10 = SNLPOSLoggerForCategory(3);
    v11 = v10;
    if (v8)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v12 = [v8 description];
        *buf = 138412290;
        v17 = v12;
        _os_log_impl(&dword_22284A000, v11, OS_LOG_TYPE_DEBUG, "Converted dialog act and got: %@", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      localizedDescription = [v9 localizedDescription];
      *buf = 138739971;
      v17 = localizedDescription;
      _os_log_impl(&dword_22284A000, v11, OS_LOG_TYPE_ERROR, "Could not convert query dialog act: %{sensitive}@", buf, 0xCu);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)predictionFromQuery:(id)query error:(id *)error
{
  v48 = *MEMORY[0x277D85DE8];
  queryCopy = query;
  v4 = SNLPOSLoggerForCategory(3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v47 = queryCopy;
    _os_log_impl(&dword_22284A000, v4, OS_LOG_TYPE_DEBUG, "UPQuery from non-proto service: %@", buf, 0xCu);
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = self->_domainModelBundles;
  v5 = [(NSSet *)obj countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (!v5)
  {
    goto LABEL_16;
  }

  v6 = *v42;
  while (2)
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v42 != v6)
      {
        objc_enumerationMutation(obj);
      }

      v8 = *(*(&v41 + 1) + 8 * i);
      parserModel = [v8 parserModel];
      identifier = [parserModel identifier];

      preprocessor = [v8 preprocessor];
      v40 = 0;
      v12 = [preprocessor preprocess:queryCopy error:&v40];
      v13 = v40;

      if (!v12)
      {
        if (error)
        {
          v25 = v13;
          *error = v13;
        }

        goto LABEL_32;
      }

      parserModel2 = [v8 parserModel];
      v15 = [parserModel2 predictionFromQuery:queryCopy preprocessorOutput:v12 error:error];

      if (!v15)
      {
        goto LABEL_24;
      }

      if (![v15 candidateCount])
      {
        if (error)
        {
          *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.uaapcustomluframework" code:2 userInfo:0];
        }

LABEL_24:

LABEL_32:
        goto LABEL_33;
      }

      [dictionary setObject:v15 forKey:identifier];
      calibrationModel = [v8 calibrationModel];
      v17 = calibrationModel;
      if (!calibrationModel)
      {
        goto LABEL_14;
      }

      v39 = 0;
      v18 = [calibrationModel scoreFromQuery:queryCopy preprocessorOutput:v12 error:&v39];
      v19 = v39;
      v20 = v19;
      if (!v18)
      {
        if (error)
        {
          v30 = v19;
          *error = v20;
        }

        goto LABEL_32;
      }

      [dictionary2 setObject:v18 forKey:identifier];

LABEL_14:
    }

    v5 = [(NSSet *)obj countByEnumeratingWithState:&v41 objects:v45 count:16];
    if (v5)
    {
      continue;
    }

    break;
  }

LABEL_16:

  calibration = self->__calibration;
  v38 = 0;
  identifier = [(UPCalibration *)calibration calibrateParserResults:dictionary withCalibrationScores:dictionary2 error:&v38];
  obj = v38;
  if (identifier)
  {
    v22 = [(UPQueryRunner *)self dialogActFromQuery:queryCopy];
    v23 = v22;
    if (self->_coreModel && v22)
    {
      v24 = [(UPQueryRunner *)self multiTurnPredictionFromQuery:queryCopy modelIdentifierToDomainResults:identifier dialogAct:v22 error:error];
    }

    else
    {
      v27 = MEMORY[0x277CBEB58];
      allValues = [identifier allValues];
      v29 = [v27 setWithArray:allValues];

      v24 = [(UPQueryRunner *)self singleTurnPredictionFromDomainResults:v29];
    }
  }

  else if (error)
  {
    v26 = obj;
    identifier = 0;
    v24 = 0;
    *error = obj;
  }

  else
  {
    identifier = 0;
LABEL_33:
    v24 = 0;
  }

  return v24;
}

- (id)predictionFromProtobufQuery:(id)query error:(id *)error
{
  queryCopy = query;
  v15 = 0;
  v7 = [[UPQuery alloc] initWithProtobufQuery:queryCopy error:&v15];
  v8 = v15;
  v9 = v8;
  if (v7)
  {
    v10 = [(UPQueryRunner *)self predictionFromQuery:v7 error:error];
    v11 = v10;
    if (v10)
    {
      protobufRepresentation = [v10 protobufRepresentation];
    }

    else
    {
      protobufRepresentation = 0;
    }
  }

  else if (error)
  {
    v13 = v8;
    protobufRepresentation = 0;
    *error = v9;
  }

  else
  {
    protobufRepresentation = 0;
  }

  return protobufRepresentation;
}

- (UPQueryRunner)initWithCoreModel:(id)model domainModels:(id)models
{
  v23 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  modelsCopy = models;
  v7 = [MEMORY[0x277CBEB58] set];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = modelsCopy;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        preprocessor = [v12 preprocessor];
        v14 = [[UPModelBundle alloc] initWithPreprocessor:preprocessor parserModel:v12 calibrationModel:0];
        [v7 addObject:v14];
      }

      v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  v15 = [(UPQueryRunner *)self initWithCoreModel:modelCopy domainModelBundles:v7];
  return v15;
}

- (UPQueryRunner)initWithCoreModel:(id)model domainModelBundles:(id)bundles
{
  modelCopy = model;
  bundlesCopy = bundles;
  v19.receiver = self;
  v19.super_class = UPQueryRunner;
  v9 = [(UPQueryRunner *)&v19 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_coreModel, model);
    objc_storeStrong(&v10->_domainModelBundles, bundles);
    v11 = objc_alloc_init(UPCalibration);
    calibration = v10->__calibration;
    v10->__calibration = v11;

    v13 = objc_alloc_init(UPUsoSerializer);
    v14 = [[UPDialogActConverter alloc] initWithUsoSerializer:v13];
    dialogActConverter = v10->__dialogActConverter;
    v10->__dialogActConverter = v14;

    v16 = objc_alloc_init(UPContextualizer);
    contextualizer = v10->__contextualizer;
    v10->__contextualizer = v16;
  }

  return v10;
}

@end