@interface APOdmlFeatureHandler
- (APOdmlFeatureHandler)initWithResponses:(id)responses assetManager:(id)manager model:(id)model;
- (BOOL)isTwoDimensional:(id)dimensional;
- (id)_translateFeaturesToTwoDimensional:(id)dimensional;
- (id)adSpecificFeatures:(id)features;
- (id)computeUserQueryVectorWithResponses:(id)responses;
- (id)featuresForResponse:(id)response adSpecificFeatures:(id)features;
- (void)addOnDeviceFeaturesToDictionary:(id)dictionary;
- (void)fetchOnDeviceFeatures;
- (void)saveFeaturesFromResponse:(id)response;
- (void)saveUserQueryVector;
@end

@implementation APOdmlFeatureHandler

- (APOdmlFeatureHandler)initWithResponses:(id)responses assetManager:(id)manager model:(id)model
{
  v56 = *MEMORY[0x277D85DE8];
  responsesCopy = responses;
  managerCopy = manager;
  modelCopy = model;
  v54.receiver = self;
  v54.super_class = APOdmlFeatureHandler;
  v11 = [(APOdmlFeatureHandler *)&v54 init];
  v12 = v11;
  if (v11)
  {
    v39 = managerCopy;
    objc_storeStrong(&v11->_assetManager, manager);
    v37 = modelCopy;
    v12->_isTwoDimensional = [(APOdmlFeatureHandler *)v12 isTwoDimensional:modelCopy];
    [(APOdmlFeatureHandler *)v12 fetchOnDeviceFeatures];
    v13 = [responsesCopy valueForKey:@"odmlResponse"];
    v14 = [(APOdmlFeatureHandler *)v12 computeUserQueryVectorWithResponses:v13];
    [(APOdmlFeatureHandler *)v12 setUserQueryVector:v14];

    v15 = dispatch_get_global_queue(17, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_260EE4CDC;
    block[3] = &unk_279AC6188;
    v38 = v12;
    v16 = v12;
    v53 = v16;
    dispatch_async(v15, block);

    v17 = [responsesCopy valueForKey:@"adamID"];
    array = [MEMORY[0x277CBEB18] array];
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v40 = responsesCopy;
    v19 = responsesCopy;
    v20 = [v19 countByEnumeratingWithState:&v48 objects:v55 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v49;
      do
      {
        v23 = 0;
        do
        {
          if (*v49 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = [(APOdmlFeatureHandler *)v16 adSpecificFeatures:*(*(&v48 + 1) + 8 * v23)];
          [array addObject:v24];

          ++v23;
        }

        while (v21 != v23);
        v21 = [v19 countByEnumeratingWithState:&v48 objects:v55 count:16];
      }

      while (v21);
    }

    v25 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v13, "count")}];
    v41 = v17;
    if ([v13 count])
    {
      v26 = 0;
      do
      {
        v27 = [v13 objectAtIndexedSubscript:v26];
        v28 = [array objectAtIndexedSubscript:v26];
        v29 = [(APOdmlFeatureHandler *)v16 featuresForResponse:v27 adSpecificFeatures:v28];

        v42[0] = MEMORY[0x277D85DD0];
        v42[1] = 3221225472;
        v42[2] = sub_260EE4CE4;
        v42[3] = &unk_279AC6338;
        v43 = v29;
        v44 = v41;
        v47 = v26;
        v45 = v16;
        v30 = v13;
        v46 = v30;
        v31 = v29;
        dispatch_async(v15, v42);

        [v25 addObject:v31];
        ++v26;
      }

      while (v26 < [v30 count]);
    }

    v32 = objc_alloc_init(APOdmlFeatureValidator);
    modelCopy = v37;
    v33 = [(APOdmlFeatureValidator *)v32 validateFeatures:v25 predictionModel:v37];
    v34 = [objc_alloc(MEMORY[0x277CBFEB0]) initWithFeatureProviderArray:v33];
    batchInput = v16->_batchInput;
    v16->_batchInput = v34;

    managerCopy = v39;
    responsesCopy = v40;
    v12 = v38;
  }

  return v12;
}

- (id)adSpecificFeatures:(id)features
{
  v23 = *MEMORY[0x277D85DE8];
  featuresCopy = features;
  v4 = objc_getAssociatedObject(featuresCopy, [@"DupeFirstOrganic" UTF8String]);
  v5 = objc_getAssociatedObject(featuresCopy, [@"Installed" UTF8String]);
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (v4)
  {
    v7 = OdmlLogForCategory(5uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      adamID = [featuresCopy adamID];
      bOOLValue = [v4 BOOLValue];
      v10 = @" not ";
      if (bOOLValue)
      {
        v10 = @" ";
      }

      v19 = 138412546;
      v20 = adamID;
      v21 = 2112;
      v22 = v10;
      _os_log_impl(&dword_260ECB000, v7, OS_LOG_TYPE_ERROR, "Ad %@ is%@dupe.", &v19, 0x16u);
    }

    v11 = [MEMORY[0x277CBFEF8] featureValueOfTypeDouble:v4];
    [dictionary setValue:v11 forKey:@"DupeFirstOrganic"];
  }

  if (v5)
  {
    v12 = OdmlLogForCategory(5uLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      adamID2 = [featuresCopy adamID];
      bOOLValue2 = [v5 BOOLValue];
      v15 = @" not ";
      if (bOOLValue2)
      {
        v15 = @" ";
      }

      v19 = 138412546;
      v20 = adamID2;
      v21 = 2112;
      v22 = v15;
      _os_log_impl(&dword_260ECB000, v12, OS_LOG_TYPE_ERROR, "Ad %@ is%@installed.", &v19, 0x16u);
    }

    v16 = [MEMORY[0x277CBFEF8] featureValueOfTypeDouble:v5];
    [dictionary setValue:v16 forKey:@"Installed"];
  }

  v17 = [dictionary copy];

  return v17;
}

- (id)featuresForResponse:(id)response adSpecificFeatures:(id)features
{
  v27 = *MEMORY[0x277D85DE8];
  featuresCopy = features;
  responseCopy = response;
  isTwoDimensional = [(APOdmlFeatureHandler *)self isTwoDimensional];
  featureValues = [responseCopy featureValues];

  if (isTwoDimensional)
  {
    v10 = [(APOdmlFeatureHandler *)self _translateFeaturesToTwoDimensional:featureValues];
    v11 = [v10 mutableCopy];
  }

  else
  {
    v11 = [featureValues mutableCopy];
  }

  [(APOdmlFeatureHandler *)self addOnDeviceFeaturesToDictionary:v11];
  if ([(APOdmlFeatureHandler *)self isTwoDimensional])
  {
    v12 = [(APOdmlFeatureHandler *)self _translateFeaturesToTwoDimensional:featuresCopy];
    v13 = [v12 mutableCopy];

    [v11 addEntriesFromDictionary:v13];
  }

  else
  {
    [v11 addEntriesFromDictionary:featuresCopy];
  }

  v14 = objc_alloc(MEMORY[0x277CBFED0]);
  v15 = [v11 copy];
  v22 = 0;
  v16 = [v14 initWithDictionary:v15 error:&v22];
  v17 = v22;

  if (!v16 || v17)
  {
    v18 = OdmlLogForCategory(5uLL);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = objc_opt_class();
      *buf = 138412546;
      v24 = v19;
      v25 = 2112;
      v26 = v17;
      v20 = v19;
      _os_log_impl(&dword_260ECB000, v18, OS_LOG_TYPE_ERROR, "[%@] Error constructing FeatureProvider from ODMLResponseV2: %@", buf, 0x16u);
    }
  }

  return v16;
}

- (id)computeUserQueryVectorWithResponses:(id)responses
{
  v45 = *MEMORY[0x277D85DE8];
  responsesCopy = responses;
  array = [MEMORY[0x277CBEB18] array];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = responsesCopy;
  v4 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v41;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v41 != v6)
        {
          objc_enumerationMutation(obj);
        }

        featureValues = [*(*(&v40 + 1) + 8 * i) featureValues];
        v9 = [featureValues objectForKey:@"queryVector"];

        v10 = [APOdmlVector alloc];
        v11 = MEMORY[0x277CCACA8];
        assetManager = [(APOdmlFeatureHandler *)self assetManager];
        v13 = [v11 stringWithFormat:@"%d", objc_msgSend(assetManager, "odmlVersion")];
        multiArrayValue = [v9 multiArrayValue];
        arrayFromMultiarray = [multiArrayValue arrayFromMultiarray];
        v16 = [(APOdmlVector *)v10 initWithVersion:v13 andArray:arrayFromMultiarray];

        [array addObject:v16];
      }

      v5 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
    }

    while (v5);
  }

  v17 = MEMORY[0x277CBEB18];
  assetManager2 = [(APOdmlFeatureHandler *)self assetManager];
  v19 = [assetManager2 featuresForName:@"queryVector"];
  v20 = [v17 arrayWithArray:v19];

  if (!v20 || ![v20 count])
  {
    v21 = [MEMORY[0x277CCA9B8] errorWithDomain:@"APOdmlPredictionErrorDomain" code:4008 userInfo:0];
    [APOdmlAnalyticsPrediction sendEvent:v21 additionalDetails:0];
  }

  v22 = [v20 arrayByAddingObjectsFromArray:array];
  if ([v22 count])
  {
    v23 = [v22 objectAtIndexedSubscript:0];
    if ([v22 count] < 2 || objc_msgSend(v22, "count") < 2)
    {
      v26 = v23;
    }

    else
    {
      v24 = 1;
      do
      {
        v25 = [v22 objectAtIndexedSubscript:v24];
        v26 = [v23 vectorAdd:v25];

        ++v24;
        v23 = v26;
      }

      while (v24 < [v22 count]);
    }

    [v26 magnitude];
    *&v28 = 1.0 / v27;
    v29 = [v26 scalarMultiply:v28];
    isTwoDimensional = [(APOdmlFeatureHandler *)self isTwoDimensional];
    v31 = MEMORY[0x277CBFF48];
    arrayOfNumbers = [v29 arrayOfNumbers];
    if (isTwoDimensional)
    {
      [v31 twoDimensionalMultiarrayFromArray:arrayOfNumbers];
    }

    else
    {
      [v31 multiarrayFromArray:arrayOfNumbers];
    }
    v34 = ;

    if ([v34 count] < 1)
    {
      v35 = [MEMORY[0x277CCA9B8] errorWithDomain:@"APOdmlPredictionErrorDomain" code:4009 userInfo:0];
      [APOdmlAnalyticsPrediction sendEvent:v35 additionalDetails:0];

      v33 = 0;
    }

    else
    {
      v33 = [MEMORY[0x277CBFEF8] featureValueWithMultiArray:v34];
    }
  }

  else
  {
    v26 = [MEMORY[0x277CCA9B8] errorWithDomain:@"APOdmlPredictionErrorDomain" code:4009 userInfo:0];
    [APOdmlAnalyticsPrediction sendEvent:v26 additionalDetails:0];
    v33 = 0;
  }

  return v33;
}

- (void)fetchOnDeviceFeatures
{
  assetManager = [(APOdmlFeatureHandler *)self assetManager];
  v23 = [assetManager featureForName:@"appUsageVector"];

  assetManager2 = [(APOdmlFeatureHandler *)self assetManager];
  v5 = [assetManager2 featureForName:@"appDownloadVector"];

  assetManager3 = [(APOdmlFeatureHandler *)self assetManager];
  v7 = [assetManager3 featureForName:@"installedAppVector"];

  isTwoDimensional = [(APOdmlFeatureHandler *)self isTwoDimensional];
  v9 = MEMORY[0x277CBFF48];
  arrayOfNumbers = [v23 arrayOfNumbers];
  if (isTwoDimensional)
  {
    [v9 twoDimensionalMultiarrayFromArray:arrayOfNumbers];
  }

  else
  {
    [v9 multiarrayFromArray:arrayOfNumbers];
  }
  v11 = ;

  isTwoDimensional2 = [(APOdmlFeatureHandler *)self isTwoDimensional];
  v13 = MEMORY[0x277CBFF48];
  arrayOfNumbers2 = [v5 arrayOfNumbers];
  if (isTwoDimensional2)
  {
    [v13 twoDimensionalMultiarrayFromArray:arrayOfNumbers2];
  }

  else
  {
    [v13 multiarrayFromArray:arrayOfNumbers2];
  }
  v15 = ;

  isTwoDimensional3 = [(APOdmlFeatureHandler *)self isTwoDimensional];
  v17 = MEMORY[0x277CBFF48];
  arrayOfNumbers3 = [v7 arrayOfNumbers];
  if (isTwoDimensional3)
  {
    [v17 twoDimensionalMultiarrayFromArray:arrayOfNumbers3];
  }

  else
  {
    [v17 multiarrayFromArray:arrayOfNumbers3];
  }
  v19 = ;

  if ([v11 count])
  {
    v20 = [MEMORY[0x277CBFEF8] featureValueWithMultiArray:v11];
    [(APOdmlFeatureHandler *)self setAppUsageVector:v20];
  }

  if ([v15 count])
  {
    v21 = [MEMORY[0x277CBFEF8] featureValueWithMultiArray:v15];
    [(APOdmlFeatureHandler *)self setAppDownloadVector:v21];
  }

  if ([v19 count])
  {
    v22 = [MEMORY[0x277CBFEF8] featureValueWithMultiArray:v19];
    [(APOdmlFeatureHandler *)self setInstalledAppVector:v22];
  }
}

- (void)addOnDeviceFeaturesToDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if ([(APOdmlFeatureHandler *)self isTwoDimensional])
  {
    v4 = [dictionaryCopy copy];
    v5 = [(APOdmlFeatureHandler *)self _translateFeaturesToTwoDimensional:v4];
    v6 = [v5 mutableCopy];
    [dictionaryCopy addEntriesFromDictionary:v6];
  }

  appUsageVector = [(APOdmlFeatureHandler *)self appUsageVector];

  if (appUsageVector)
  {
    appUsageVector2 = [(APOdmlFeatureHandler *)self appUsageVector];
    [dictionaryCopy setValue:appUsageVector2 forKey:@"appUsageVector"];

    appUsageVector3 = [(APOdmlFeatureHandler *)self appUsageVector];
    [dictionaryCopy setValue:appUsageVector3 forKey:@"AppUsageVector"];
  }

  appDownloadVector = [(APOdmlFeatureHandler *)self appDownloadVector];

  if (appDownloadVector)
  {
    appDownloadVector2 = [(APOdmlFeatureHandler *)self appDownloadVector];
    [dictionaryCopy setValue:appDownloadVector2 forKey:@"appDownloadVector"];

    appDownloadVector3 = [(APOdmlFeatureHandler *)self appDownloadVector];
    [dictionaryCopy setValue:appDownloadVector3 forKey:@"AppDownloadVector"];
  }

  installedAppVector = [(APOdmlFeatureHandler *)self installedAppVector];

  if (installedAppVector)
  {
    installedAppVector2 = [(APOdmlFeatureHandler *)self installedAppVector];
    [dictionaryCopy setValue:installedAppVector2 forKey:@"installedAppVector"];

    installedAppVector3 = [(APOdmlFeatureHandler *)self installedAppVector];
    [dictionaryCopy setValue:installedAppVector3 forKey:@"AppInstalledVector"];
  }

  userQueryVector = [(APOdmlFeatureHandler *)self userQueryVector];

  v17 = dictionaryCopy;
  if (userQueryVector)
  {
    userQueryVector2 = [(APOdmlFeatureHandler *)self userQueryVector];
    [dictionaryCopy setValue:userQueryVector2 forKey:@"userQueryVector"];

    v17 = dictionaryCopy;
  }
}

- (BOOL)isTwoDimensional:(id)dimensional
{
  v19 = *MEMORY[0x277D85DE8];
  modelDescription = [dimensional modelDescription];
  inputDescriptionsByName = [modelDescription inputDescriptionsByName];
  allValues = [inputDescriptionsByName allValues];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = allValues;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        multiArrayConstraint = [*(*(&v14 + 1) + 8 * i) multiArrayConstraint];
        shape = [multiArrayConstraint shape];
        v12 = [shape count];

        if (v12 > 1)
        {
          LOBYTE(v7) = 1;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (id)_translateFeaturesToTwoDimensional:(id)dimensional
{
  v25 = *MEMORY[0x277D85DE8];
  dimensionalCopy = dimensional;
  v4 = [dimensionalCopy mutableCopy];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = dimensionalCopy;
  v5 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        v10 = [v4 objectForKeyedSubscript:v9];
        if ([v10 type] == 5)
        {
          v11 = MEMORY[0x277CBFEF8];
          v12 = MEMORY[0x277CBFF48];
          multiArrayValue = [v10 multiArrayValue];
          arrayFromMultiarray = [multiArrayValue arrayFromMultiarray];
          v15 = [v12 twoDimensionalMultiarrayFromArray:arrayFromMultiarray];
          v16 = [v11 featureValueWithMultiArray:v15];

          [v4 setObject:v16 forKeyedSubscript:v9];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v6);
  }

  v17 = [v4 copy];

  return v17;
}

- (void)saveFeaturesFromResponse:(id)response
{
  v27 = *MEMORY[0x277D85DE8];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  responseCopy = response;
  obj = [responseCopy featureValues];
  v4 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v4)
  {
    v5 = v4;
    v20 = *v23;
    do
    {
      v6 = 0;
      do
      {
        if (*v23 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v22 + 1) + 8 * v6);
        featureValues = [responseCopy featureValues];
        v9 = [featureValues valueForKey:v7];

        v10 = [APOdmlVector alloc];
        v11 = MEMORY[0x277CCACA8];
        assetManager = [(APOdmlFeatureHandler *)self assetManager];
        v13 = [v11 stringWithFormat:@"%d", objc_msgSend(assetManager, "odmlVersion")];
        multiArrayValue = [v9 multiArrayValue];
        arrayFromMultiarray = [multiArrayValue arrayFromMultiarray];
        v16 = [(APOdmlVector *)v10 initWithVersion:v13 andArray:arrayFromMultiarray];

        assetManager2 = [(APOdmlFeatureHandler *)self assetManager];
        v18 = [assetManager2 saveFeatureFromObject:v16 withName:v7];

        ++v6;
      }

      while (v5 != v6);
      v5 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v5);
  }
}

- (void)saveUserQueryVector
{
  userQueryVector = [(APOdmlFeatureHandler *)self userQueryVector];

  if (userQueryVector)
  {
    v4 = [APOdmlVector alloc];
    v5 = MEMORY[0x277CCACA8];
    assetManager = [(APOdmlFeatureHandler *)self assetManager];
    v7 = [v5 stringWithFormat:@"%d", objc_msgSend(assetManager, "odmlVersion")];
    userQueryVector2 = [(APOdmlFeatureHandler *)self userQueryVector];
    multiArrayValue = [userQueryVector2 multiArrayValue];
    arrayFromMultiarray = [multiArrayValue arrayFromMultiarray];
    v13 = [(APOdmlVector *)v4 initWithVersion:v7 andArray:arrayFromMultiarray];

    assetManager2 = [(APOdmlFeatureHandler *)self assetManager];
    v12 = [assetManager2 saveFeatureFromObject:v13 withName:@"userQueryVector"];
  }
}

@end