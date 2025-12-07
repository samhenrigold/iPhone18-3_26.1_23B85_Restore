@interface APOdmlFeatureValidator
- (id)imputeFeature:(id)feature;
- (id)imputeMissingFeatures:(id)features;
- (id)missingFeatures:(id)features inputDescriptions:(id)descriptions;
- (id)validateFeatureProvider:(id)provider inputDescriptions:(id)descriptions;
- (id)validateFeatures:(id)features predictionModel:(id)model;
- (void)reportMissingFeatureError:(id)error;
@end

@implementation APOdmlFeatureValidator

- (id)validateFeatures:(id)features predictionModel:(id)model
{
  featuresCopy = features;
  modelDescription = [model modelDescription];
  inputDescriptionsByName = [modelDescription inputDescriptionsByName];
  allValues = [inputDescriptionsByName allValues];

  if ([featuresCopy count])
  {
    v10 = 0;
    do
    {
      v11 = [featuresCopy objectAtIndexedSubscript:v10];
      v12 = [(APOdmlFeatureValidator *)self validateFeatureProvider:v11 inputDescriptions:allValues];
      [featuresCopy setObject:v12 atIndexedSubscript:v10];

      ++v10;
    }

    while (v10 < [featuresCopy count]);
  }

  v13 = [featuresCopy copy];

  return v13;
}

- (id)validateFeatureProvider:(id)provider inputDescriptions:(id)descriptions
{
  providerCopy = provider;
  v7 = [(APOdmlFeatureValidator *)self missingFeatures:providerCopy inputDescriptions:descriptions];
  [(APOdmlFeatureValidator *)self reportMissingFeatureError:v7];
  v8 = [(APOdmlFeatureValidator *)self imputeMissingFeatures:v7];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  dictionary2 = [providerCopy dictionary];

  [dictionary addEntriesFromDictionary:dictionary2];
  [dictionary addEntriesFromDictionary:v8];
  v11 = objc_alloc(MEMORY[0x277CBFED0]);
  v12 = [dictionary copy];
  v13 = [v11 initWithDictionary:v12 error:0];

  return v13;
}

- (id)missingFeatures:(id)features inputDescriptions:(id)descriptions
{
  v24 = *MEMORY[0x277D85DE8];
  featuresCopy = features;
  descriptionsCopy = descriptions;
  array = [MEMORY[0x277CBEB18] array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = descriptionsCopy;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        dictionary = [featuresCopy dictionary];
        name = [v13 name];
        v16 = [dictionary objectForKey:name];

        if (!v16)
        {
          [array addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  v17 = [array copy];

  return v17;
}

- (id)imputeMissingFeatures:(id)features
{
  v20 = *MEMORY[0x277D85DE8];
  featuresCopy = features;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = featuresCopy;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [(APOdmlFeatureValidator *)self imputeFeature:v11, v15];
        name = [v11 name];
        [dictionary setValue:v12 forKey:name];
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  return dictionary;
}

- (id)imputeFeature:(id)feature
{
  v30 = *MEMORY[0x277D85DE8];
  featureCopy = feature;
  multiArrayConstraint = [featureCopy multiArrayConstraint];
  shape = [multiArrayConstraint shape];
  v6 = [shape count];

  if (v6 < 3)
  {
    multiArrayConstraint2 = [featureCopy multiArrayConstraint];
    shape2 = [multiArrayConstraint2 shape];
    v15 = [shape2 count] - 1;

    multiArrayConstraint3 = [featureCopy multiArrayConstraint];
    shape3 = [multiArrayConstraint3 shape];
    v18 = [shape3 objectAtIndexedSubscript:v15];

    array = [MEMORY[0x277CBEB18] array];
    if ([v18 intValue] >= 1)
    {
      v20 = 0;
      do
      {
        notANumber = [MEMORY[0x277CCA980] notANumber];
        [array addObject:notANumber];

        ++v20;
      }

      while (v20 < [v18 intValue]);
    }

    multiArrayConstraint4 = [featureCopy multiArrayConstraint];
    shape4 = [multiArrayConstraint4 shape];
    v24 = [shape4 count];

    if (v24 == 1)
    {
      [MEMORY[0x277CBFF48] multiarrayFromArray:array];
    }

    else
    {
      [MEMORY[0x277CBFF48] twoDimensionalMultiarrayFromArray:array];
    }
    v12 = ;
  }

  else
  {
    v7 = OdmlLogForCategory(6uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = objc_opt_class();
      v9 = v8;
      multiArrayConstraint5 = [featureCopy multiArrayConstraint];
      shape5 = [multiArrayConstraint5 shape];
      v26 = 138412546;
      v27 = v8;
      v28 = 2048;
      v29 = [shape5 count];
      _os_log_impl(&dword_260ECB000, v7, OS_LOG_TYPE_ERROR, "[%@] Unexpected shape length: %lu", &v26, 0x16u);
    }

    v12 = 0;
  }

  return v12;
}

- (void)reportMissingFeatureError:(id)error
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  obj = error;
  v3 = [obj countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    do
    {
      v6 = 0;
      do
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v13 + 1) + 8 * v6);
        v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"APOdmlPredictionErrorDomain" code:4004 userInfo:0];
        dictionary = [MEMORY[0x277CBEB38] dictionary];
        name = [v7 name];
        [dictionary setValue:name forKey:@"featureName"];

        v11 = [dictionary copy];
        [APOdmlAnalyticsPrediction sendEvent:v8 additionalDetails:v11];

        ++v6;
      }

      while (v4 != v6);
      v4 = [obj countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }
}

@end