@interface PGMeaningPartsOfDayCriteria
+ (id)_partsOfDayAsNumbersFromStrings:(id)strings;
+ (id)criteriaWithDictionary:(id)dictionary;
- (BOOL)_passesPartsOfDayWithMomentNodePartsOfDay:(unint64_t)day positivePartsOfDay:(id)ofDay negativePartsOfDay:(id)partsOfDay;
- (BOOL)isValid;
- (BOOL)passesForMomentNode:(id)node momentNodeCache:(id)cache;
- (NSString)description;
@end

@implementation PGMeaningPartsOfDayCriteria

+ (id)_partsOfDayAsNumbersFromStrings:(id)strings
{
  v19 = *MEMORY[0x277D85DE8];
  stringsCopy = strings;
  if ([stringsCopy count])
  {
    _partsOfDayNumbersByString = [self _partsOfDayNumbersByString];
    array = [MEMORY[0x277CBEB18] array];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = stringsCopy;
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [_partsOfDayNumbersByString objectForKeyedSubscript:{*(*(&v14 + 1) + 8 * i), v14}];
          if (v12)
          {
            [array addObject:v12];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }
  }

  else
  {
    array = MEMORY[0x277CBEBF8];
  }

  return array;
}

+ (id)criteriaWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = objc_alloc_init(self);
  v6 = [dictionaryCopy objectForKeyedSubscript:@"positiveSignificantPartsOfDay"];
  [v5 setPositiveSignificantPartsOfDayStrings:v6];
  v7 = [self _partsOfDayAsNumbersFromStrings:v6];
  [v5 setPositiveSignificantPartsOfDay:v7];

  v8 = [dictionaryCopy objectForKeyedSubscript:@"negativeSignificantPartsOfDay"];
  [v5 setNegativeSignificantPartsOfDayStrings:v8];
  v9 = [self _partsOfDayAsNumbersFromStrings:v8];
  [v5 setNegativeSignificantPartsOfDay:v9];

  v10 = [dictionaryCopy objectForKeyedSubscript:@"positivePartsOfDay"];
  [v5 setPositivePartsOfDayStrings:v10];
  v11 = [self _partsOfDayAsNumbersFromStrings:v10];
  [v5 setPositivePartsOfDay:v11];

  v12 = [dictionaryCopy objectForKeyedSubscript:@"negativePartsOfDay"];

  [v5 setNegativePartsOfDayStrings:v12];
  v13 = [self _partsOfDayAsNumbersFromStrings:v12];
  [v5 setNegativePartsOfDay:v13];

  return v5;
}

- (BOOL)_passesPartsOfDayWithMomentNodePartsOfDay:(unint64_t)day positivePartsOfDay:(id)ofDay negativePartsOfDay:(id)partsOfDay
{
  v30 = *MEMORY[0x277D85DE8];
  ofDayCopy = ofDay;
  partsOfDayCopy = partsOfDay;
  if ([ofDayCopy count] || objc_msgSend(partsOfDayCopy, "count"))
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v9 = ofDayCopy;
    v10 = [v9 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v25;
LABEL_5:
      v13 = 0;
      while (1)
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(v9);
        }

        if (([*(*(&v24 + 1) + 8 * v13) unsignedIntegerValue] & day) != 0)
        {
          break;
        }

        if (v11 == ++v13)
        {
          v11 = [v9 countByEnumeratingWithState:&v24 objects:v29 count:16];
          if (v11)
          {
            goto LABEL_5;
          }

          goto LABEL_11;
        }
      }

      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v9 = partsOfDayCopy;
      v15 = [v9 countByEnumeratingWithState:&v20 objects:v28 count:16];
      if (!v15)
      {
        v14 = 1;
        goto LABEL_22;
      }

      v16 = v15;
      v17 = *v21;
LABEL_14:
      v18 = 0;
      while (1)
      {
        if (*v21 != v17)
        {
          objc_enumerationMutation(v9);
        }

        if (([*(*(&v20 + 1) + 8 * v18) unsignedIntegerValue] & day) != 0)
        {
          break;
        }

        if (v16 == ++v18)
        {
          v16 = [v9 countByEnumeratingWithState:&v20 objects:v28 count:16];
          v14 = 1;
          if (v16)
          {
            goto LABEL_14;
          }

          goto LABEL_22;
        }
      }
    }

LABEL_11:
    v14 = 0;
LABEL_22:
  }

  else
  {
    v14 = 1;
  }

  return v14;
}

- (NSString)description
{
  string = [MEMORY[0x277CCAB68] string];
  positiveSignificantPartsOfDayStrings = [(PGMeaningPartsOfDayCriteria *)self positiveSignificantPartsOfDayStrings];
  v5 = [positiveSignificantPartsOfDayStrings componentsJoinedByString:{@", "}];

  negativeSignificantPartsOfDayStrings = [(PGMeaningPartsOfDayCriteria *)self negativeSignificantPartsOfDayStrings];
  v7 = [negativeSignificantPartsOfDayStrings componentsJoinedByString:{@", "}];

  [string appendFormat:@"positiveSignificantPartsOfDay: %@\n", v5];
  [string appendFormat:@"negativeSignificantPartsOfDay: %@\n", v7];
  positivePartsOfDayStrings = [(PGMeaningPartsOfDayCriteria *)self positivePartsOfDayStrings];
  v9 = [positivePartsOfDayStrings componentsJoinedByString:{@", "}];

  negativePartsOfDayStrings = [(PGMeaningPartsOfDayCriteria *)self negativePartsOfDayStrings];
  v11 = [negativePartsOfDayStrings componentsJoinedByString:{@", "}];

  [string appendFormat:@"positivePartsOfDay: %@\n", v9];
  [string appendFormat:@"negativePartsOfDay: %@\n", v11];

  return string;
}

- (BOOL)isValid
{
  v43 = *MEMORY[0x277D85DE8];
  _partsOfDayNumbersByString = [objc_opt_class() _partsOfDayNumbersByString];
  positiveSignificantPartsOfDayStrings = [(PGMeaningPartsOfDayCriteria *)self positiveSignificantPartsOfDayStrings];
  selfCopy = self;
  negativeSignificantPartsOfDayStrings = [(PGMeaningPartsOfDayCriteria *)self negativeSignificantPartsOfDayStrings];
  v6 = [positiveSignificantPartsOfDayStrings arrayByAddingObjectsFromArray:negativeSignificantPartsOfDayStrings];

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v35 objects:v42 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v36;
    v11 = 1;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v36 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v35 + 1) + 8 * i);
        v14 = [_partsOfDayNumbersByString objectForKeyedSubscript:v13];

        if (!v14)
        {
          v15 = +[PGLogging sharedLogging];
          loggingConnection = [v15 loggingConnection];

          if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v41 = v13;
            _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "[MEANING CRITERIA] Invalid significant part of day %@", buf, 0xCu);
          }

          v11 = 0;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v35 objects:v42 count:16];
    }

    while (v9);
  }

  else
  {
    v11 = 1;
  }

  positivePartsOfDayStrings = [(PGMeaningPartsOfDayCriteria *)selfCopy positivePartsOfDayStrings];
  negativePartsOfDayStrings = [(PGMeaningPartsOfDayCriteria *)selfCopy negativePartsOfDayStrings];
  v19 = [positivePartsOfDayStrings arrayByAddingObjectsFromArray:negativePartsOfDayStrings];

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v20 = v19;
  v21 = [v20 countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v32;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v32 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v31 + 1) + 8 * j);
        v26 = [_partsOfDayNumbersByString objectForKeyedSubscript:v25];

        if (!v26)
        {
          v27 = +[PGLogging sharedLogging];
          loggingConnection2 = [v27 loggingConnection];

          if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v41 = v25;
            _os_log_impl(&dword_22F0FC000, loggingConnection2, OS_LOG_TYPE_INFO, "[MEANING CRITERIA] Invalid part of day %@", buf, 0xCu);
          }

          v11 = 0;
        }
      }

      v22 = [v20 countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v22);
  }

  return v11 & 1;
}

- (BOOL)passesForMomentNode:(id)node momentNodeCache:(id)cache
{
  cacheCopy = cache;
  significantPartsOfDay = [cacheCopy significantPartsOfDay];
  positiveSignificantPartsOfDay = [(PGMeaningPartsOfDayCriteria *)self positiveSignificantPartsOfDay];
  negativeSignificantPartsOfDay = [(PGMeaningPartsOfDayCriteria *)self negativeSignificantPartsOfDay];
  LODWORD(significantPartsOfDay) = [(PGMeaningPartsOfDayCriteria *)self _passesPartsOfDayWithMomentNodePartsOfDay:significantPartsOfDay positivePartsOfDay:positiveSignificantPartsOfDay negativePartsOfDay:negativeSignificantPartsOfDay];

  if (significantPartsOfDay)
  {
    partsOfDay = [cacheCopy partsOfDay];
    positivePartsOfDay = [(PGMeaningPartsOfDayCriteria *)self positivePartsOfDay];
    negativePartsOfDay = [(PGMeaningPartsOfDayCriteria *)self negativePartsOfDay];
    v12 = [(PGMeaningPartsOfDayCriteria *)self _passesPartsOfDayWithMomentNodePartsOfDay:partsOfDay positivePartsOfDay:positivePartsOfDay negativePartsOfDay:negativePartsOfDay];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end