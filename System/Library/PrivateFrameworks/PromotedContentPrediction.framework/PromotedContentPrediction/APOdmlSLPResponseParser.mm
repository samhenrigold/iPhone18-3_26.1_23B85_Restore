@interface APOdmlSLPResponseParser
+ (BOOL)isValidResponse:(id)response;
+ (id)convertArrayToFeatureValue:(id)value;
+ (id)convertStringToFeatureValue:(id)value;
+ (id)convertToFeatureValue:(id)value;
+ (id)parseFeature:(id)feature withTopLevelKey:(id)key forKey:(id)forKey;
+ (id)parseFeatureDictionaryForFeatureValues:(id)values;
+ (id)parseResponseForFeatureValues:(id)values;
@end

@implementation APOdmlSLPResponseParser

+ (BOOL)isValidResponse:(id)response
{
  v3 = [response objectForKey:@"odmlEnabled"];

  return v3 != 0;
}

+ (id)parseResponseForFeatureValues:(id)values
{
  v4 = [values objectForKey:@"features"];
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v4 count])
  {
    v5 = [self parseFeatureDictionaryForFeatureValues:v4];
    if ([v5 count])
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)parseFeatureDictionaryForFeatureValues:(id)values
{
  v43 = *MEMORY[0x277D85DE8];
  valuesCopy = values;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v6 = valuesCopy;
  v31 = [v6 countByEnumeratingWithState:&v32 objects:v42 count:16];
  if (v31)
  {
    v7 = *v33;
    v8 = @"value";
    v29 = dictionary;
    v30 = *v33;
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v33 != v7)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v32 + 1) + 8 * i);
        v11 = objc_autoreleasePoolPush();
        v12 = [v6 objectForKey:v10];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v14 = [v6 objectForKey:v10];
          v15 = [self parseFeature:v14 withTopLevelKey:v10 forKey:v8];

          [dictionary addEntriesFromDictionary:v15];
        }

        else
        {
          v15 = OdmlLogForCategory(5uLL);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            v16 = objc_opt_class();
            v17 = v16;
            [v6 objectForKey:v10];
            v18 = v8;
            v19 = v6;
            v21 = v20 = self;
            *buf = 138412802;
            v37 = v16;
            v38 = 2112;
            v39 = v21;
            v40 = 2112;
            v41 = v10;
            _os_log_impl(&dword_260ECB000, v15, OS_LOG_TYPE_ERROR, "[%@] Failed to parse feature %@ with key %@", buf, 0x20u);

            self = v20;
            v6 = v19;
            v8 = v18;

            dictionary = v29;
            v7 = v30;
          }
        }

        objc_autoreleasePoolPop(v11);
      }

      v31 = [v6 countByEnumeratingWithState:&v32 objects:v42 count:16];
    }

    while (v31);
  }

  v22 = OdmlLogForCategory(5uLL);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = objc_opt_class();
    v24 = v23;
    [dictionary mlJSONString];
    v26 = v25 = v6;
    *buf = 138412546;
    v37 = v23;
    v38 = 2112;
    v39 = v26;
    _os_log_impl(&dword_260ECB000, v22, OS_LOG_TYPE_DEFAULT, "[%@] Successfully parsed feature dictionary: %@", buf, 0x16u);

    v6 = v25;
  }

  v27 = [dictionary copy];

  return v27;
}

+ (id)parseFeature:(id)feature withTopLevelKey:(id)key forKey:(id)forKey
{
  v34[1] = *MEMORY[0x277D85DE8];
  featureCopy = feature;
  keyCopy = key;
  forKeyCopy = forKey;
  v11 = [featureCopy objectForKey:forKeyCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v26 = forKeyCopy;
    v27 = featureCopy;
    v12 = [keyCopy stringByAppendingString:@"_"];

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v25 = v11;
    v14 = v11;
    v15 = [v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v29;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v29 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v28 + 1) + 8 * i);
          v20 = objc_autoreleasePoolPush();
          v21 = [v12 stringByAppendingString:v19];
          v22 = [self parseFeature:v14 withTopLevelKey:v21 forKey:v19];
          [dictionary addEntriesFromDictionary:v22];

          objc_autoreleasePoolPop(v20);
        }

        v16 = [v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v16);
    }

    v23 = [dictionary copy];
    forKeyCopy = v26;
    featureCopy = v27;
    v11 = v25;
  }

  else
  {
    v33 = keyCopy;
    dictionary = [self convertToFeatureValue:v11];
    v34[0] = dictionary;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:&v33 count:1];
    v12 = keyCopy;
  }

  return v23;
}

+ (id)convertToFeatureValue:(id)value
{
  v15 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [self convertStringToFeatureValue:valueCopy];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [self convertArrayToFeatureValue:valueCopy];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = MEMORY[0x277CBFEF8];
        [valueCopy doubleValue];
        v5 = [v6 featureValueWithDouble:?];
      }

      else
      {
        v7 = OdmlLogForCategory(5uLL);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v11 = 138412546;
          v12 = objc_opt_class();
          v13 = 2112;
          v14 = valueCopy;
          v8 = v12;
          _os_log_impl(&dword_260ECB000, v7, OS_LOG_TYPE_DEFAULT, "[%@] Failed to convert the following to an MLFeatureValue: %@", &v11, 0x16u);
        }

        v5 = [MEMORY[0x277CBFEF8] undefinedFeatureValueWithType:2];
      }
    }
  }

  v9 = v5;

  return v9;
}

+ (id)convertStringToFeatureValue:(id)value
{
  valueCopy = value;
  containsOnlyDecimalCharacters = [valueCopy containsOnlyDecimalCharacters];
  v5 = MEMORY[0x277CBFEF8];
  if (containsOnlyDecimalCharacters)
  {
    [valueCopy doubleValue];
    v7 = v6;

    v8 = [v5 featureValueWithDouble:v7];
  }

  else
  {
    v8 = [MEMORY[0x277CBFEF8] featureValueWithString:valueCopy];
  }

  return v8;
}

+ (id)convertArrayToFeatureValue:(id)value
{
  valueCopy = value;
  if ([valueCopy count])
  {
    firstObject = [valueCopy firstObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      firstObject2 = [valueCopy firstObject];
      containsOnlyDecimalCharacters = [firstObject2 containsOnlyDecimalCharacters];

      if ((containsOnlyDecimalCharacters & 1) == 0)
      {
        v7 = MEMORY[0x277CBFEF8];
        array = [MEMORY[0x277CBFF78] sequenceWithStringArray:valueCopy];
        v9 = [v7 featureValueWithSequence:array];
        goto LABEL_11;
      }
    }

    else
    {
    }

    array = [MEMORY[0x277CBEB18] array];
    if ([valueCopy count])
    {
      v13 = 0;
      do
      {
        v14 = MEMORY[0x277CCABB0];
        v15 = [valueCopy objectAtIndexedSubscript:v13];
        [v15 doubleValue];
        v16 = [v14 numberWithDouble:?];
        [array addObject:v16];

        ++v13;
      }

      while (v13 < [valueCopy count]);
    }

    v17 = MEMORY[0x277CBFEF8];
    v18 = MEMORY[0x277CBFF48];
    v19 = [array copy];
    v20 = [v18 multiarrayFromArray:v19];
    v9 = [v17 featureValueWithMultiArray:v20];
  }

  else
  {
    v10 = MEMORY[0x277CBFEF8];
    v11 = MEMORY[0x277CBFF48];
    array = [MEMORY[0x277CBEA60] array];
    v12 = [v11 multiarrayFromArray:array];
    v9 = [v10 featureValueWithMultiArray:v12];
  }

LABEL_11:

  return v9;
}

@end