@interface APOdmlTrainingRow
- (APOdmlTrainingRow)initWithFeatures:(id)features;
- (BOOL)isValidFeature:(id)feature featureName:(id)name min:(id)min max:(id)max sentinelValues:(id)values;
- (BOOL)isValidRow:(id)row;
- (NSSet)featureNames;
- (id)featureValueForName:(id)name;
- (void)reportError:(int64_t)error name:(id)name value:(id)value;
@end

@implementation APOdmlTrainingRow

- (APOdmlTrainingRow)initWithFeatures:(id)features
{
  featuresCopy = features;
  v9.receiver = self;
  v9.super_class = APOdmlTrainingRow;
  v6 = [(APOdmlTrainingRow *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_features, features);
  }

  return v7;
}

- (BOOL)isValidRow:(id)row
{
  v23 = *MEMORY[0x277D85DE8];
  rowCopy = row;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = [(APOdmlTrainingRow *)self features];
  v5 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v17 = *v19;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        v9 = [rowCopy rangeBoundaryForFeature:v8 upperBound:0];
        v10 = [rowCopy rangeBoundaryForFeature:v8 upperBound:1];
        v11 = [rowCopy sentinelValuesForFeature:v8];
        features = [(APOdmlTrainingRow *)self features];
        v13 = [features objectForKey:v8];
        LODWORD(v8) = [(APOdmlTrainingRow *)self isValidFeature:v13 featureName:v8 min:v9 max:v10 sentinelValues:v11];

        if (!v8)
        {
          v14 = 0;
          goto LABEL_11;
        }
      }

      v6 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v14 = 1;
LABEL_11:

  return v14;
}

- (BOOL)isValidFeature:(id)feature featureName:(id)name min:(id)min max:(id)max sentinelValues:(id)values
{
  v57 = *MEMORY[0x277D85DE8];
  featureCopy = feature;
  nameCopy = name;
  minCopy = min;
  maxCopy = max;
  valuesCopy = values;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v17 = featureCopy;
  v18 = [v17 countByEnumeratingWithState:&v51 objects:v56 count:16];
  if (!v18)
  {
    LOBYTE(v22) = 1;
    goto LABEL_24;
  }

  v19 = v18;
  selfCopy = self;
  v45 = nameCopy;
  v20 = *v52;
  v46 = maxCopy;
  v42 = *v52;
  while (2)
  {
    v21 = 0;
    v43 = v19;
    do
    {
      if (*v52 != v20)
      {
        objc_enumerationMutation(v17);
      }

      v22 = *(*(&v51 + 1) + 8 * v21);
      if (!v22)
      {
        nameCopy = v45;
        [(APOdmlTrainingRow *)selfCopy reportError:8044 name:v45 value:0];
        goto LABEL_24;
      }

      if (minCopy)
      {
        [*(*(&v51 + 1) + 8 * v21) floatValue];
        v24 = v23;
        [minCopy floatValue];
        if (v24 < v25)
        {
          v41 = &kAPODMLDESPluginFeatureMinExceeded;
LABEL_28:
          nameCopy = v45;
          [(APOdmlTrainingRow *)selfCopy reportError:*v41 name:v45 value:v22];
          LOBYTE(v22) = 0;
          goto LABEL_24;
        }
      }

      if (maxCopy)
      {
        [v22 floatValue];
        v27 = v26;
        [maxCopy floatValue];
        if (v27 > v28)
        {
          v41 = &kAPODMLDESPluginFeatureMaxExceeded;
          goto LABEL_28;
        }
      }

      v29 = minCopy;
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v30 = valuesCopy;
      v31 = valuesCopy;
      v32 = [v31 countByEnumeratingWithState:&v47 objects:v55 count:16];
      if (v32)
      {
        v33 = v32;
        v34 = *v48;
        while (2)
        {
          for (i = 0; i != v33; ++i)
          {
            if (*v48 != v34)
            {
              objc_enumerationMutation(v31);
            }

            v36 = *(*(&v47 + 1) + 8 * i);
            [v22 floatValue];
            v38 = v37;
            [v36 floatValue];
            if (v38 == v39)
            {
              nameCopy = v45;
              [(APOdmlTrainingRow *)selfCopy reportError:8044 name:v45 value:v22];

              LOBYTE(v22) = 0;
              minCopy = v29;
              maxCopy = v46;
              valuesCopy = v30;
              goto LABEL_24;
            }
          }

          v33 = [v31 countByEnumeratingWithState:&v47 objects:v55 count:16];
          if (v33)
          {
            continue;
          }

          break;
        }
      }

      ++v21;
      v20 = v42;
      minCopy = v29;
      maxCopy = v46;
      valuesCopy = v30;
    }

    while (v21 != v43);
    v19 = [v17 countByEnumeratingWithState:&v51 objects:v56 count:16];
    LOBYTE(v22) = 1;
    nameCopy = v45;
    if (v19)
    {
      continue;
    }

    break;
  }

LABEL_24:

  return v22;
}

- (void)reportError:(int64_t)error name:(id)name value:(id)value
{
  v7 = MEMORY[0x277CCA9B8];
  valueCopy = value;
  nameCopy = name;
  v12 = [v7 errorWithDomain:@"APODMLDESPluginErrorDomain" code:error userInfo:0];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [dictionary setValue:nameCopy forKey:@"featureName"];

  [dictionary setValue:valueCopy forKey:@"featureValue"];
  v11 = [dictionary copy];
  [APOdmlAnalyticsModelTraining sendEvent:v12 additionalDetails:v11];
}

- (NSSet)featureNames
{
  v2 = MEMORY[0x277CBEB98];
  features = [(APOdmlTrainingRow *)self features];
  allKeys = [features allKeys];
  v5 = [v2 setWithArray:allKeys];

  return v5;
}

- (id)featureValueForName:(id)name
{
  v13 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  features = [(APOdmlTrainingRow *)self features];
  v6 = [features objectForKeyedSubscript:nameCopy];

  v7 = [MEMORY[0x277CBFF48] twoDimensionalMultiarrayFromArray:v6];
  if (v7)
  {
    v8 = [MEMORY[0x277CBFEF8] featureValueWithMultiArray:v7];
  }

  else
  {
    v9 = OdmlLogForCategory(0xBuLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412290;
      v12 = nameCopy;
      _os_log_impl(&dword_260ECB000, v9, OS_LOG_TYPE_ERROR, "Failed to initialize feature value for %@", &v11, 0xCu);
    }

    v8 = 0;
  }

  return v8;
}

@end