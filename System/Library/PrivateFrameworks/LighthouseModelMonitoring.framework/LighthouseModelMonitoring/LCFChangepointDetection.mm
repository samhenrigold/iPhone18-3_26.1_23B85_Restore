@interface LCFChangepointDetection
+ (id)_generateFeatureDictionaryForFeatureStore:(id)store featureNames:(id)names labelName:(id)name timestampName:(id)timestampName;
+ (id)convertFeatureStoreToEvents:(id)events featureNames:(id)names labelName:(id)name valueName:(id)valueName timestampName:(id)timestampName;
@end

@implementation LCFChangepointDetection

+ (id)convertFeatureStoreToEvents:(id)events featureNames:(id)names labelName:(id)name valueName:(id)valueName timestampName:(id)timestampName
{
  v37 = *MEMORY[0x277D85DE8];
  namesCopy = names;
  valueNameCopy = valueName;
  timestampNameCopy = timestampName;
  v25 = [LCFChangepointDetection _generateFeatureDictionaryForFeatureStore:events featureNames:namesCopy labelName:name timestampName:timestampNameCopy];
  v26 = objc_opt_new();
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = namesCopy;
  v27 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v27)
  {
    v24 = *v31;
    do
    {
      v14 = 0;
      do
      {
        if (*v31 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v29 = v14;
        v28 = *(*(&v30 + 1) + 8 * v14);
        v15 = [v25 objectForKeyedSubscript:?];
        v16 = [v25 objectForKeyedSubscript:timestampNameCopy];
        v17 = objc_opt_new();
        if ([v15 count])
        {
          v18 = 0;
          do
          {
            v34[0] = valueNameCopy;
            v19 = [v15 objectAtIndexedSubscript:v18];
            v34[1] = timestampNameCopy;
            v35[0] = v19;
            v20 = [v16 objectAtIndexedSubscript:v18];
            v35[1] = v20;
            v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:2];

            [v17 addObject:v21];
            ++v18;
          }

          while ([v15 count] > v18);
        }

        [v26 setObject:v17 forKeyedSubscript:v28];

        v14 = v29 + 1;
      }

      while (v29 + 1 != v27);
      v27 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
    }

    while (v27);
  }

  return v26;
}

+ (id)_generateFeatureDictionaryForFeatureStore:(id)store featureNames:(id)names labelName:(id)name timestampName:(id)timestampName
{
  v57 = *MEMORY[0x277D85DE8];
  storeCopy = store;
  namesCopy = names;
  nameCopy = name;
  timestampNameCopy = timestampName;
  v12 = [storeCopy getMultiArrayFeatureVectors:namesCopy vectorName:@"vector" srcLabelName:nameCopy destLabelName:nameCopy option:0];
  getFeatureVectorTimestamps = [storeCopy getFeatureVectorTimestamps];
  if ([v12 count] && (v14 = objc_msgSend(v12, "count"), v14 == objc_msgSend(getFeatureVectorTimestamps, "count")))
  {
    v46 = nameCopy;
    v47 = getFeatureVectorTimestamps;
    v15 = objc_opt_new();
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v44 = namesCopy;
    v16 = namesCopy;
    v17 = [v16 countByEnumeratingWithState:&v52 objects:v56 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v53;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v53 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v52 + 1) + 8 * i);
          v22 = objc_opt_new();
          [v15 setObject:v22 forKeyedSubscript:v21];
        }

        v18 = [v16 countByEnumeratingWithState:&v52 objects:v56 count:16];
      }

      while (v18);
    }

    v23 = objc_opt_new();
    nameCopy = v46;
    [v15 setObject:v23 forKeyedSubscript:v46];

    v24 = objc_opt_new();
    [v15 setObject:v24 forKeyedSubscript:timestampNameCopy];

    if ([v12 count] < 1)
    {
LABEL_17:
      v42 = v15;
    }

    else
    {
      v25 = 0;
      v45 = v12;
      while (1)
      {
        v26 = [v12 featuresAtIndex:v25];
        v27 = [v26 featureValueForName:@"vector"];
        multiArrayValue = [v27 multiArrayValue];

        v50 = [v47 objectAtIndexedSubscript:v25];
        v51 = v26;
        v29 = [v26 featureValueForName:nameCopy];
        int64Value = [v29 int64Value];

        dataPointer = [multiArrayValue dataPointer];
        shape = [multiArrayValue shape];
        v32 = [shape objectAtIndexedSubscript:0];
        longLongValue = [v32 longLongValue];

        if (longLongValue != [v16 count])
        {
          break;
        }

        if ([v16 count])
        {
          v34 = 0;
          do
          {
            v35 = [v16 objectAtIndexedSubscript:v34];
            v36 = *(dataPointer + 8 * v34);
            v37 = [v15 objectForKeyedSubscript:v35];
            v38 = [MEMORY[0x277CCABB0] numberWithDouble:v36];
            [v37 addObject:v38];

            ++v34;
          }

          while ([v16 count] > v34);
        }

        nameCopy = v46;
        v39 = [v15 objectForKeyedSubscript:v46];
        v40 = [MEMORY[0x277CCABB0] numberWithDouble:int64Value];
        [v39 addObject:v40];

        v41 = [v15 objectForKeyedSubscript:timestampNameCopy];
        [v41 addObject:v50];

        ++v25;
        v12 = v45;
        if ([v45 count] <= v25)
        {
          goto LABEL_17;
        }
      }

      v42 = 0;
      v12 = v45;
    }

    getFeatureVectorTimestamps = v47;

    namesCopy = v44;
  }

  else
  {
    v42 = 0;
  }

  return v42;
}

@end