@interface PGMeaningCriteriaEvaluator
+ (id)_allMeaningCriteriaClassArray;
+ (id)meaningCriteriaEvaluatorsForMeaningLabel:(id)label withDictionary:(id)dictionary serviceManager:(id)manager;
- (BOOL)allCriteriaIsValid;
- (BOOL)allCriteriaPassForAssets:(id)assets;
- (BOOL)allCriteriaPassForMomentNode:(id)node momentNodeCache:(id)cache;
- (NSString)meaningLabel;
- (PGMeaningCriteriaEvaluator)initWithDictionary:(id)dictionary meaningCriteriaInfo:(id)info serviceManager:(id)manager;
- (id)description;
@end

@implementation PGMeaningCriteriaEvaluator

- (id)description
{
  v22 = *MEMORY[0x277D85DE8];
  meaningCriteriaInfo = [(PGMeaningCriteriaEvaluator *)self meaningCriteriaInfo];
  v4 = MEMORY[0x277CCAB68];
  meaningLabel = [meaningCriteriaInfo meaningLabel];
  v6 = [v4 stringWithFormat:@"=== %@Criteria%d ===\n\n", meaningLabel, objc_msgSend(meaningCriteriaInfo, "criteriaNumber")];

  [meaningCriteriaInfo version];
  [v6 appendFormat:@"version: %f\n\n", v7];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = self->_allMeaningCriteriaArray;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        criteriaKey = [objc_opt_class() criteriaKey];
        [v6 appendFormat:@"*%@*\n", criteriaKey];

        v15 = [v13 description];
        [v6 appendFormat:@"%@\n", v15];
      }

      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  return v6;
}

- (BOOL)allCriteriaIsValid
{
  v22 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = self->_allMeaningCriteriaArray;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v13 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    v7 = @"FAILED";
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if (![*(*(&v13 + 1) + 8 * i) isValid])
        {
          v9 = 0;
          goto LABEL_12;
        }
      }

      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v13 objects:v21 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }

    v9 = 1;
    v7 = @"PASSED";
  }

  else
  {
    v7 = @"PASSED";
    v9 = 1;
  }

LABEL_12:

  v10 = +[PGLogging sharedLogging];
  loggingConnection = [v10 loggingConnection];

  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v18 = v7;
    v19 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "[MEANING CRITERIA] PGMeaningCriteria %@ validation: \n%@", buf, 0x16u);
  }

  return v9;
}

- (BOOL)allCriteriaPassForAssets:(id)assets
{
  v17 = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_allMeaningCriteriaArray;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if (![*(*(&v12 + 1) + 8 * i) passesForAssets:{assetsCopy, v12}])
        {
          v10 = 0;
          goto LABEL_11;
        }
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = 1;
LABEL_11:

  return v10;
}

- (BOOL)allCriteriaPassForMomentNode:(id)node momentNodeCache:(id)cache
{
  v20 = *MEMORY[0x277D85DE8];
  nodeCopy = node;
  cacheCopy = cache;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = self->_allMeaningCriteriaArray;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        if (![*(*(&v15 + 1) + 8 * i) passesForMomentNode:nodeCopy momentNodeCache:{cacheCopy, v15}])
        {
          v13 = 0;
          goto LABEL_11;
        }
      }

      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v13 = 1;
LABEL_11:

  return v13;
}

- (NSString)meaningLabel
{
  meaningCriteriaInfo = [(PGMeaningCriteriaEvaluator *)self meaningCriteriaInfo];
  meaningLabel = [meaningCriteriaInfo meaningLabel];

  return meaningLabel;
}

- (PGMeaningCriteriaEvaluator)initWithDictionary:(id)dictionary meaningCriteriaInfo:(id)info serviceManager:(id)manager
{
  v41 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  infoCopy = info;
  managerCopy = manager;
  v39.receiver = self;
  v39.super_class = PGMeaningCriteriaEvaluator;
  v10 = [(PGMeaningCriteriaEvaluator *)&v39 init];
  v11 = v10;
  if (v10)
  {
    v31 = infoCopy;
    objc_storeStrong(&v10->_meaningCriteriaInfo, info);
    array = [MEMORY[0x277CBEB18] array];
    v33 = v11;
    [objc_opt_class() _allMeaningCriteriaClassArray];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    obj = v38 = 0u;
    v13 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (!v13)
    {
      goto LABEL_19;
    }

    v14 = v13;
    v15 = *v36;
    while (1)
    {
      v16 = 0;
      do
      {
        if (*v36 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v35 + 1) + 8 * v16);
        criteriaKey = [v17 criteriaKey];
        v19 = [dictionaryCopy objectForKeyedSubscript:criteriaKey];
        if (v19)
        {
          v20 = [v17 criteriaWithDictionary:v19];
          [(NSArray *)array addObject:v20];
          v21 = +[PGMeaningSceneCriteria criteriaKey];
          v22 = [criteriaKey isEqualToString:v21];

          if (v22)
          {
            p_meaningSceneCriteria = &v33->_meaningSceneCriteria;
            goto LABEL_12;
          }

          v24 = +[PGMeaningActionCriteria criteriaKey];
          v25 = [criteriaKey isEqualToString:v24];

          if (v25)
          {
            p_meaningSceneCriteria = &v33->_meaningActionCriteria;
LABEL_12:
            objc_storeStrong(p_meaningSceneCriteria, v20);
          }

          else
          {
            v26 = +[PGMeaningDurationCriteria criteriaKey];
            v27 = [criteriaKey isEqualToString:v26];

            if (v27)
            {
              [v20 setServiceManager:managerCopy];
            }
          }
        }

        ++v16;
      }

      while (v14 != v16);
      v28 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
      v14 = v28;
      if (!v28)
      {
LABEL_19:
        v11 = v33;
        allMeaningCriteriaArray = v33->_allMeaningCriteriaArray;
        v33->_allMeaningCriteriaArray = array;

        infoCopy = v31;
        break;
      }
    }
  }

  return v11;
}

+ (id)_allMeaningCriteriaClassArray
{
  v4[11] = *MEMORY[0x277D85DE8];
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  v4[2] = objc_opt_class();
  v4[3] = objc_opt_class();
  v4[4] = objc_opt_class();
  v4[5] = objc_opt_class();
  v4[6] = objc_opt_class();
  v4[7] = objc_opt_class();
  v4[8] = objc_opt_class();
  v4[9] = objc_opt_class();
  v4[10] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:11];

  return v2;
}

+ (id)meaningCriteriaEvaluatorsForMeaningLabel:(id)label withDictionary:(id)dictionary serviceManager:(id)manager
{
  v38 = *MEMORY[0x277D85DE8];
  labelCopy = label;
  dictionaryCopy = dictionary;
  managerCopy = manager;
  v9 = [dictionaryCopy objectForKeyedSubscript:@"version"];
  [v9 doubleValue];
  v11 = v10;

  v26 = dictionaryCopy;
  v12 = [dictionaryCopy objectForKeyedSubscript:@"criteria"];
  v13 = [v12 count];
  v14 = +[PGLogging sharedLogging];
  loggingConnection = [v14 loggingConnection];

  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v35 = v13;
    v36 = 2112;
    v37 = labelCopy;
    _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "[MEANING CRITERIA] Creating %d criteria evaluators for meaning %@", buf, 0x12u);
  }

  array = [MEMORY[0x277CBEB18] array];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v12;
  v17 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v30;
    v20 = 1;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v30 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v29 + 1) + 8 * i);
        v23 = objc_alloc_init(PGMeaningCriteriaInfo);
        [(PGMeaningCriteriaInfo *)v23 setMeaningLabel:labelCopy];
        [(PGMeaningCriteriaInfo *)v23 setCriteriaNumber:v20];
        [(PGMeaningCriteriaInfo *)v23 setVersion:v11];
        v24 = [[PGMeaningCriteriaEvaluator alloc] initWithDictionary:v22 meaningCriteriaInfo:v23 serviceManager:managerCopy];
        [array addObject:v24];
        ++v20;
      }

      v18 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v18);
  }

  return array;
}

@end