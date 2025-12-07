@interface _DPPrivacyBudget
+ (BOOL)createDatabaseRecordIfMissingIn:(id)in key:(id)key balance:(int64_t)balance cohortAggregateBalance:(double)aggregateBalance;
+ (BOOL)credit:(unint64_t)credit budgetWithName:(id)name;
+ (BOOL)creditCohortAggregate:(double)aggregate budgetWithName:(id)name;
+ (BOOL)debit:(unint64_t)debit budgetWithName:(id)name;
+ (BOOL)debitCohortAggregate:(double)aggregate budgetWithName:(id)name;
+ (BOOL)isMultiDayIntervalBudgetWithName:(id)name;
+ (_DPPrivacyBudget)budgetWithName:(id)name;
+ (double)balanceForCohortAggregateBudgetWithName:(id)name;
+ (id)enforceBudgetForRecords:(id)records withKey:(id)key inDatabase:(id)database;
+ (id)enforceEnhancedBudgetForRecords:(id)records withKey:(id)key inDatabase:(id)database;
+ (id)enforceSimpleBudgetForRecords:(id)records withKey:(id)key inDatabase:(id)database;
+ (id)fetchBudgetKeyNamesFrom:(id)from;
+ (id)fetchBudgetRecordFrom:(id)from key:(id)key;
+ (int64_t)balanceForBudgetWithName:(id)name;
+ (void)createBudgetRecordsIn:(id)in;
+ (void)initialize;
+ (void)removeBudgetWithName:(id)name;
+ (void)resetAllBudgetRecordsIn:(id)in;
+ (void)resetLastUpdateDateForName:(id)name;
+ (void)updateAllBudgetsIn:(id)in;
+ (void)updateAllBudgetsUnsafeIn:(id)in;
+ (void)updateBudgetForRecords:(id)records withKey:(id)key inDatabase:(id)database;
+ (void)updateEnhancedBudgetForRecords:(id)records withKey:(id)key inDatabase:(id)database;
+ (void)updateSimpleBudgetForRecords:(id)records withKey:(id)key inDatabase:(id)database;
- (BOOL)initializeBudgetRecordFrom:(id)from;
- (_DPPrivacyBudget)initWithName:(id)name budgetProperties:(id)properties;
- (id)description;
@end

@implementation _DPPrivacyBudget

+ (void)initialize
{
  if (initialize_onceToken != -1)
  {
    +[_DPPrivacyBudget initialize];
  }
}

- (_DPPrivacyBudget)initWithName:(id)name budgetProperties:(id)properties
{
  nameCopy = name;
  propertiesCopy = properties;
  v9 = propertiesCopy;
  selfCopy = 0;
  if (nameCopy && propertiesCopy)
  {
    v15.receiver = self;
    v15.super_class = _DPPrivacyBudget;
    v11 = [(_DPPrivacyBudget *)&v15 init];
    v12 = v11;
    if (v11)
    {
      objc_storeStrong(&v11->_name, name);
      objc_storeStrong(&v12->_budgetProperties, properties);
      budgetRecord = v12->_budgetRecord;
      v12->_budgetRecord = 0;
    }

    self = v12;
    selfCopy = self;
  }

  return selfCopy;
}

+ (_DPPrivacyBudget)budgetWithName:(id)name
{
  nameCopy = name;
  v5 = gAllBudgets;
  objc_sync_enter(v5);
  v6 = [gAllBudgets objectForKeyedSubscript:nameCopy];
  if (!v6)
  {
    v7 = [_DPPrivacyBudgetProperties budgetPropertiesForKey:nameCopy];
    v6 = [[self alloc] initWithName:nameCopy budgetProperties:v7];
    if (v6)
    {
      [gAllBudgets setObject:v6 forKeyedSubscript:nameCopy];
    }
  }

  objc_sync_exit(v5);

  return v6;
}

+ (void)removeBudgetWithName:(id)name
{
  nameCopy = name;
  v3 = gAllBudgets;
  objc_sync_enter(v3);
  if (nameCopy)
  {
    [gAllBudgets removeObjectForKey:nameCopy];
  }

  objc_sync_exit(v3);
}

+ (BOOL)debit:(unint64_t)debit budgetWithName:(id)name
{
  nameCopy = name;
  v6 = gAllBudgets;
  objc_sync_enter(v6);
  v7 = [gAllBudgets objectForKeyedSubscript:nameCopy];
  budgetRecord = [v7 budgetRecord];
  [budgetRecord setBalance:{objc_msgSend(budgetRecord, "balance") - debit}];

  objc_sync_exit(v6);
  return 1;
}

+ (BOOL)debitCohortAggregate:(double)aggregate budgetWithName:(id)name
{
  nameCopy = name;
  v6 = gAllBudgets;
  objc_sync_enter(v6);
  v7 = [gAllBudgets objectForKeyedSubscript:nameCopy];
  budgetRecord = [v7 budgetRecord];
  [budgetRecord cohortAggregateBalance];
  [budgetRecord setCohortAggregateBalance:v9 - aggregate];

  objc_sync_exit(v6);
  return 1;
}

+ (BOOL)credit:(unint64_t)credit budgetWithName:(id)name
{
  nameCopy = name;
  v6 = gAllBudgets;
  objc_sync_enter(v6);
  v7 = [gAllBudgets objectForKeyedSubscript:nameCopy];
  budgetRecord = [v7 budgetRecord];
  [budgetRecord setBalance:{objc_msgSend(budgetRecord, "balance") + credit}];

  objc_sync_exit(v6);
  return 1;
}

+ (BOOL)creditCohortAggregate:(double)aggregate budgetWithName:(id)name
{
  nameCopy = name;
  v6 = gAllBudgets;
  objc_sync_enter(v6);
  v7 = [gAllBudgets objectForKeyedSubscript:nameCopy];
  budgetRecord = [v7 budgetRecord];
  [budgetRecord cohortAggregateBalance];
  [budgetRecord setCohortAggregateBalance:v9 + aggregate];

  objc_sync_exit(v6);
  return 1;
}

+ (int64_t)balanceForBudgetWithName:(id)name
{
  nameCopy = name;
  v4 = gAllBudgets;
  objc_sync_enter(v4);
  v5 = [gAllBudgets objectForKeyedSubscript:nameCopy];
  budgetRecord = [v5 budgetRecord];
  balance = [budgetRecord balance];

  objc_sync_exit(v4);
  return balance;
}

+ (double)balanceForCohortAggregateBudgetWithName:(id)name
{
  nameCopy = name;
  v4 = gAllBudgets;
  objc_sync_enter(v4);
  v5 = [gAllBudgets objectForKeyedSubscript:nameCopy];
  budgetRecord = [v5 budgetRecord];
  [budgetRecord cohortAggregateBalance];
  v8 = v7;

  objc_sync_exit(v4);
  return v8;
}

+ (BOOL)isMultiDayIntervalBudgetWithName:(id)name
{
  nameCopy = name;
  v4 = gAllBudgets;
  objc_sync_enter(v4);
  v5 = [gAllBudgets objectForKeyedSubscript:nameCopy];
  budgetProperties = [v5 budgetProperties];
  interval = [budgetProperties interval];
  unsignedIntegerValue = [interval unsignedIntegerValue];
  v9 = unsignedIntegerValue > kSecondsIn24Hours;

  objc_sync_exit(v4);
  return v9;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  name = [(_DPPrivacyBudget *)self name];
  budgetRecord = [(_DPPrivacyBudget *)self budgetRecord];
  budgetProperties = [(_DPPrivacyBudget *)self budgetProperties];
  v9 = [v3 stringWithFormat:@"%@: { name=%@  budgetRecord=%@ ; budgetProperties=%@ ; }", v5, name, budgetRecord, budgetProperties];;

  return v9;
}

+ (void)resetLastUpdateDateForName:(id)name
{
  nameCopy = name;
  v3 = gAllBudgets;
  objc_sync_enter(v3);
  v4 = [gAllBudgets objectForKeyedSubscript:nameCopy];
  budgetRecord = [v4 budgetRecord];
  [budgetRecord setLastUpdate:0.0];

  objc_sync_exit(v3);
}

+ (void)updateAllBudgetsIn:(id)in
{
  inCopy = in;
  v3 = gAllBudgets;
  objc_sync_enter(v3);
  [objc_opt_class() updateAllBudgetsUnsafeIn:inCopy];
  objc_sync_exit(v3);
}

+ (void)updateAllBudgetsUnsafeIn:(id)in
{
  v67 = *MEMORY[0x277D85DE8];
  inCopy = in;
  v50 = [MEMORY[0x277CBEBF8] mutableCopy];
  v3 = +[_DPPrivacyBudgetProperties budgetMaintenanceSchedule];
  v43 = gAllBudgets;
  objc_sync_enter(v43);
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  obj = v3;
  v46 = [obj countByEnumeratingWithState:&v61 objects:v66 count:16];
  if (v46)
  {
    v45 = *v62;
    do
    {
      for (i = 0; i != v46; ++i)
      {
        if (*v62 != v45)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v61 + 1) + 8 * i);
        v48 = [obj objectForKeyedSubscript:{v4, v43}];
        allObjects = [v48 allObjects];
        v56 = v4;
        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        v51 = allObjects;
        v6 = [v51 countByEnumeratingWithState:&v57 objects:v65 count:16];
        if (v6)
        {
          v53 = *v58;
          do
          {
            v7 = 0;
            v54 = v6;
            do
            {
              if (*v58 != v53)
              {
                objc_enumerationMutation(v51);
              }

              v8 = *(*(&v57 + 1) + 8 * v7);
              v9 = objc_autoreleasePoolPush();
              v10 = [gAllBudgets objectForKeyedSubscript:v8];
              v11 = MEMORY[0x277CBEAA8];
              budgetRecord = [v10 budgetRecord];
              [budgetRecord lastUpdate];
              v13 = [v11 dateWithTimeIntervalSinceReferenceDate:?];

              date = [MEMORY[0x277CBEAA8] date];
              [date timeIntervalSinceDate:v13];
              v16 = v15;

              [v56 doubleValue];
              if (v17 <= v16)
              {
                unsignedIntegerValue = [v56 unsignedIntegerValue];
                unsignedIntegerValue2 = [v56 unsignedIntegerValue];
                v20 = v16 / unsignedIntegerValue;
                v21 = (v20 * unsignedIntegerValue2);
                v23 = v16 < v21 || v20 > 1;
                if (v23)
                {
                  v20 = 1;
                }

                v55 = v20;
                if (v23)
                {
                  v24 = v16;
                }

                else
                {
                  v24 = v21;
                }

                budgetProperties = [v10 budgetProperties];
                intervalBudgetValue = [budgetProperties intervalBudgetValue];
                unsignedIntegerValue3 = [intervalBudgetValue unsignedIntegerValue];
                budgetProperties2 = [v10 budgetProperties];
                intervalChunksValue = [budgetProperties2 intervalChunksValue];
                unsignedIntegerValue4 = [intervalChunksValue unsignedIntegerValue];

                budgetProperties3 = [v10 budgetProperties];
                intervalCohortAggregateBudgetValue = [budgetProperties3 intervalCohortAggregateBudgetValue];
                [intervalCohortAggregateBudgetValue doubleValue];
                v33 = v32;
                budgetProperties4 = [v10 budgetProperties];
                intervalChunksValue2 = [budgetProperties4 intervalChunksValue];
                unsignedIntegerValue5 = [intervalChunksValue2 unsignedIntegerValue];

                budgetRecord2 = [v10 budgetRecord];

                if (budgetRecord2)
                {
                  budgetRecord3 = [v10 budgetRecord];
                  [budgetRecord3 lastUpdate];
                  [budgetRecord3 setLastUpdate:v24 + v39];

                  budgetRecord4 = [v10 budgetRecord];
                  [budgetRecord4 setBalance:unsignedIntegerValue3 * v55 * unsignedIntegerValue4];

                  budgetRecord5 = [v10 budgetRecord];
                  [budgetRecord5 setCohortAggregateBalance:v33 * v55 * unsignedIntegerValue5];

                  budgetRecord6 = [v10 budgetRecord];
                  [v50 addObject:budgetRecord6];
                }
              }

              objc_autoreleasePoolPop(v9);
              ++v7;
            }

            while (v54 != v7);
            v6 = [v51 countByEnumeratingWithState:&v57 objects:v65 count:16];
          }

          while (v6);
        }
      }

      v46 = [obj countByEnumeratingWithState:&v61 objects:v66 count:16];
    }

    while (v46);
  }

  [inCopy updateRecords:v50 withCompletion:0];
  objc_sync_exit(v43);
}

+ (void)resetAllBudgetRecordsIn:(id)in
{
  v19 = *MEMORY[0x277D85DE8];
  inCopy = in;
  context = objc_autoreleasePoolPush();
  obj = gAllBudgets;
  objc_sync_enter(obj);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  allKeys = [gAllBudgets allKeys];
  v5 = [allKeys countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = *v15;
    do
    {
      v7 = 0;
      do
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(allKeys);
        }

        v8 = *(*(&v14 + 1) + 8 * v7);
        v9 = [objc_opt_class() fetchBudgetRecordFrom:inCopy key:{v8, context}];
        if ([v9 count])
        {
          firstObject = [v9 firstObject];
          v11 = [gAllBudgets objectForKeyedSubscript:v8];
          [v11 setBudgetRecord:firstObject];
        }

        else
        {
          firstObject = [gAllBudgets objectForKeyedSubscript:v8];
          [firstObject setBudgetRecord:0];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [allKeys countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  objc_sync_exit(obj);
  objc_autoreleasePoolPop(context);
}

+ (void)createBudgetRecordsIn:(id)in
{
  v26 = *MEMORY[0x277D85DE8];
  inCopy = in;
  context = objc_autoreleasePoolPush();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = +[_DPPrivacyBudgetProperties allBudgetPropertiesKeys];
  v4 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v22;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v21 + 1) + 8 * i);
        v9 = [_DPPrivacyBudgetProperties budgetPropertiesForKey:v8];
        intervalBudgetValue = [v9 intervalBudgetValue];
        integerValue = [intervalBudgetValue integerValue];
        intervalChunksValue = [v9 intervalChunksValue];
        v13 = [intervalChunksValue integerValue] * integerValue;

        intervalCohortAggregateBudgetValue = [v9 intervalCohortAggregateBudgetValue];
        [intervalCohortAggregateBudgetValue doubleValue];
        v16 = v15;
        intervalChunksValue2 = [v9 intervalChunksValue];
        v18 = v16 * [intervalChunksValue2 integerValue];

        [_DPPrivacyBudget createDatabaseRecordIfMissingIn:inCopy key:v8 balance:v13 cohortAggregateBalance:v18];
      }

      v5 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v5);
  }

  objc_autoreleasePoolPop(context);
}

+ (id)fetchBudgetRecordFrom:(id)from key:(id)key
{
  fromCopy = from;
  keyCopy = key;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__5;
  v22 = __Block_byref_object_dispose__5;
  v23 = 0;
  v8 = [_DPRecordQueryPredicates predicateForKey:keyCopy];
  v9 = dispatch_semaphore_create(0);
  v10 = +[_DPPrivacyBudgetRecord entityName];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __46___DPPrivacyBudget_fetchBudgetRecordFrom_key___block_invoke;
  v14[3] = &unk_27858B210;
  v16 = &v18;
  v17 = a2;
  v11 = v9;
  v15 = v11;
  [fromCopy fetchRecordsFor:v10 predicate:v8 fetchLimit:1 fetchOffset:0 withCompletion:v14];

  dispatch_semaphore_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
  v12 = v19[5];

  _Block_object_dispose(&v18, 8);

  return v12;
}

+ (id)fetchBudgetKeyNamesFrom:(id)from
{
  fromCopy = from;
  if (fromCopy)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = +[_DPPrivacyBudgetRecord entityName];
    if (v6)
    {
      v7 = +[_DPRecordQueryPredicates predicateForAllRecords];
      v16 = 0;
      v17 = &v16;
      v18 = 0x3032000000;
      v19 = __Block_byref_object_copy__5;
      v20 = __Block_byref_object_dispose__5;
      v21 = 0;
      v8 = dispatch_semaphore_create(0);
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __44___DPPrivacyBudget_fetchBudgetKeyNamesFrom___block_invoke;
      v12[3] = &unk_27858B238;
      v14 = &v16;
      v15 = a2;
      v9 = v8;
      v13 = v9;
      [fromCopy fetchKeynamesFor:v6 predicate:v7 fetchLimit:300 fetchOffset:0 withCompletion:v12];
      dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
      v10 = v17[5];

      _Block_object_dispose(&v16, 8);
    }

    else
    {
      v10 = MEMORY[0x277CBEBF8];
    }

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v10 = MEMORY[0x277CBEBF8];
  }

  return v10;
}

- (BOOL)initializeBudgetRecordFrom:(id)from
{
  fromCopy = from;
  v5 = objc_autoreleasePoolPush();
  v6 = gAllBudgets;
  objc_sync_enter(v6);
  budgetRecord = [(_DPPrivacyBudget *)self budgetRecord];

  if (budgetRecord)
  {
    LOBYTE(v8) = 0;
  }

  else
  {
    v9 = [objc_opt_class() fetchBudgetRecordFrom:fromCopy key:self->_name];
    v10 = [v9 count];
    v8 = v10 != 0;
    if (v10)
    {
      firstObject = [v9 firstObject];
      [(_DPPrivacyBudget *)self setBudgetRecord:firstObject];
    }
  }

  objc_sync_exit(v6);

  objc_autoreleasePoolPop(v5);
  return v8;
}

+ (BOOL)createDatabaseRecordIfMissingIn:(id)in key:(id)key balance:(int64_t)balance cohortAggregateBalance:(double)aggregateBalance
{
  v22[1] = *MEMORY[0x277D85DE8];
  inCopy = in;
  keyCopy = key;
  v12 = objc_autoreleasePoolPush();
  v13 = gAllBudgets;
  objc_sync_enter(v13);
  v14 = [objc_opt_class() fetchBudgetRecordFrom:inCopy key:keyCopy];
  v15 = [v14 count];
  if (!v15)
  {
    v16 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:0.0];
    [v16 timeIntervalSinceReferenceDate];
    v18 = [[_DPPrivacyBudgetRecord alloc] initWithKey:keyCopy creationDate:balance lastUpdate:0 balance:v17 cohortAggregateBalance:v17 objectId:aggregateBalance];
    v22[0] = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __87___DPPrivacyBudget_createDatabaseRecordIfMissingIn_key_balance_cohortAggregateBalance___block_invoke;
    v21[3] = &__block_descriptor_40_e20_v20__0B8__NSError_12l;
    v21[4] = a2;
    [inCopy updateRecords:v19 withCompletion:v21];
  }

  objc_sync_exit(v13);
  objc_autoreleasePoolPop(v12);

  return v15 == 0;
}

+ (id)enforceBudgetForRecords:(id)records withKey:(id)key inDatabase:(id)database
{
  recordsCopy = records;
  keyCopy = key;
  databaseCopy = database;
  if ([recordsCopy count])
  {
    v11 = [recordsCopy objectAtIndexedSubscript:0];
    metadata = [v11 metadata];

    if ([_DPEnhancedPrivacyAlgorithm isEnhancedPrivacyAlgorithm:metadata])
    {
      [self enforceEnhancedBudgetForRecords:recordsCopy withKey:keyCopy inDatabase:databaseCopy];
    }

    else
    {
      [self enforceSimpleBudgetForRecords:recordsCopy withKey:keyCopy inDatabase:databaseCopy];
    }
    v13 = ;
  }

  else
  {
    v13 = MEMORY[0x277CBEBF8];
    metadata = MEMORY[0x277CBEC10];
  }

  return v13;
}

+ (void)updateBudgetForRecords:(id)records withKey:(id)key inDatabase:(id)database
{
  recordsCopy = records;
  keyCopy = key;
  databaseCopy = database;
  if ([recordsCopy count])
  {
    v10 = [recordsCopy objectAtIndexedSubscript:0];
    metadata = [v10 metadata];

    if ([_DPEnhancedPrivacyAlgorithm isEnhancedPrivacyAlgorithm:metadata])
    {
      [self updateEnhancedBudgetForRecords:recordsCopy withKey:keyCopy inDatabase:databaseCopy];
    }

    else
    {
      [self updateSimpleBudgetForRecords:recordsCopy withKey:keyCopy inDatabase:databaseCopy];
    }
  }

  else
  {
    metadata = MEMORY[0x277CBEC10];
  }
}

+ (id)enforceEnhancedBudgetForRecords:(id)records withKey:(id)key inDatabase:(id)database
{
  v63 = *MEMORY[0x277D85DE8];
  recordsCopy = records;
  keyCopy = key;
  databaseCopy = database;
  if ([recordsCopy count])
  {
    v10 = [recordsCopy objectAtIndexedSubscript:0];
    metadata = [v10 metadata];

    if ([_DPEnhancedPrivacyAlgorithm isMetadataValid:metadata]&& [_DPEnhancedPrivacyAlgorithm verifyEnhancedDPParamsForKey:keyCopy withMetadata:metadata])
    {
      v12 = [_DPEnhancedPrivacyAlgorithm allowedDataTypesForKey:keyCopy withMetadata:metadata];
      if (v12)
      {
        v50 = keyCopy;
        v48 = [_DPKeyNames keyPropertiesForKey:keyCopy];
        namespaceName = [v48 namespaceName];
        v51 = [_DPNamespaceParameters initParametersForNamespace:?];
        budget = [v51 budget];
        [budget initializeBudgetRecordFrom:databaseCopy];

        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        v49 = v12;
        v14 = v12;
        v15 = [v14 countByEnumeratingWithState:&v57 objects:v62 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = 0;
          v18 = *v58;
          do
          {
            v19 = 0;
            v20 = v17;
            do
            {
              if (*v58 != v18)
              {
                objc_enumerationMutation(v14);
              }

              v17 = [_DPDataTypeParameters initParametersForDataType:*(*(&v57 + 1) + 8 * v19)];

              budget2 = [v17 budget];
              [budget2 initializeBudgetRecordFrom:databaseCopy];

              ++v19;
              v20 = v17;
            }

            while (v16 != v19);
            v16 = [v14 countByEnumeratingWithState:&v57 objects:v62 count:16];
          }

          while (v16);
        }

        else
        {
          v17 = 0;
        }

        v23 = objc_autoreleasePoolPush();
        [_DPPrivacyBudget updateAllBudgetsIn:databaseCopy];
        objc_autoreleasePoolPop(v23);
        v24 = v51;
        budget3 = [v51 budget];
        name = [budget3 name];

        v27 = [_DPPrivacyBudget balanceForBudgetWithName:name];
        v46 = name;
        [_DPPrivacyBudget balanceForCohortAggregateBudgetWithName:name];
        v29 = v28;
        v45 = [metadata objectForKeyedSubscript:@"EnhancedDifferentialPrivacyParameters"];
        v30 = [v45 objectForKeyedSubscript:@"cohortAggregateDifferentialPrivacyBudget"];
        [v30 doubleValue];
        v32 = v31;

        v22 = MEMORY[0x277CBEBF8];
        if (v27 >= 1 && v29 >= v32)
        {
          v55 = 0u;
          v56 = 0u;
          v53 = 0u;
          v54 = 0u;
          obj = v14;
          v33 = [obj countByEnumeratingWithState:&v53 objects:v61 count:16];
          if (v33)
          {
            v34 = v33;
            v35 = *v54;
            while (2)
            {
              v36 = 0;
              v37 = v17;
              do
              {
                if (*v54 != v35)
                {
                  objc_enumerationMutation(obj);
                }

                v17 = [_DPDataTypeParameters initParametersForDataType:*(*(&v53 + 1) + 8 * v36)];

                budget4 = [v17 budget];
                name2 = [budget4 name];

                v40 = [_DPPrivacyBudget balanceForBudgetWithName:name2];
                [_DPPrivacyBudget balanceForCohortAggregateBudgetWithName:name2];
                v42 = v41;

                if (v40 < 1 || v42 < v32)
                {

                  v22 = MEMORY[0x277CBEBF8];
                  goto LABEL_32;
                }

                ++v36;
                v37 = v17;
              }

              while (v34 != v36);
              v34 = [obj countByEnumeratingWithState:&v53 objects:v61 count:16];
              if (v34)
              {
                continue;
              }

              break;
            }
          }

          v22 = [recordsCopy copy];
LABEL_32:
          v24 = v51;
        }

        v12 = v49;
        keyCopy = v50;
      }

      else
      {
        v22 = MEMORY[0x277CBEBF8];
      }
    }

    else
    {
      v22 = MEMORY[0x277CBEBF8];
    }
  }

  else
  {
    v22 = MEMORY[0x277CBEBF8];
    metadata = MEMORY[0x277CBEC10];
  }

  return v22;
}

+ (id)enforceSimpleBudgetForRecords:(id)records withKey:(id)key inDatabase:(id)database
{
  recordsCopy = records;
  keyCopy = key;
  databaseCopy = database;
  v10 = [_DPKeyNames keyPropertiesForKey:keyCopy];
  budget = [v10 budget];
  [budget initializeBudgetRecordFrom:databaseCopy];

  v12 = objc_autoreleasePoolPush();
  [_DPPrivacyBudget updateAllBudgetsIn:databaseCopy];
  objc_autoreleasePoolPop(v12);
  budget2 = [v10 budget];
  name = [budget2 name];

  v15 = [_DPPrivacyBudget balanceForBudgetWithName:name];
  if (v15 <= 0)
  {
    v19 = +[_DPLog framework];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      +[_DPPrivacyBudget enforceSimpleBudgetForRecords:withKey:inDatabase:];
    }

    v17 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v16 = v15;
    v17 = recordsCopy;
    if ([v17 count] > v16)
    {
      v18 = [v17 subarrayWithRange:{0, v16}];

      v17 = v18;
    }
  }

  return v17;
}

+ (void)updateEnhancedBudgetForRecords:(id)records withKey:(id)key inDatabase:(id)database
{
  v49 = *MEMORY[0x277D85DE8];
  recordsCopy = records;
  keyCopy = key;
  databaseCopy = database;
  v10 = [_DPKeyNames keyPropertiesForKey:keyCopy];
  v11 = [recordsCopy objectAtIndexedSubscript:0];
  metadata = [v11 metadata];

  if ([_DPEnhancedPrivacyAlgorithm isMetadataValid:metadata]&& [_DPEnhancedPrivacyAlgorithm verifyEnhancedDPParamsForKey:keyCopy withMetadata:metadata])
  {
    v38 = [MEMORY[0x277CBEBF8] mutableCopy];
    namespaceName = [v10 namespaceName];
    v13 = [_DPNamespaceParameters initParametersForNamespace:?];
    budget = [v13 budget];
    name = [budget name];

    [_DPPrivacyBudget debit:1 budgetWithName:name];
    v39 = [metadata objectForKeyedSubscript:@"EnhancedDifferentialPrivacyParameters"];
    v16 = [v39 objectForKeyedSubscript:@"cohortAggregateDifferentialPrivacyBudget"];
    [v16 doubleValue];
    v18 = v17;

    v40 = name;
    [_DPPrivacyBudget debitCohortAggregate:name budgetWithName:v18];
    budget2 = [v13 budget];
    [budget2 budgetRecord];
    budgetRecord = v20 = metadata;

    [v38 addObject:budgetRecord];
    v42 = v20;
    v22 = [_DPEnhancedPrivacyAlgorithm allowedDataTypesForKey:keyCopy withMetadata:v20];
    v44 = 0u;
    v45 = 0u;
    v23 = MEMORY[0x277CBEBF8];
    if (v22)
    {
      v23 = v22;
    }

    v46 = 0uLL;
    v47 = 0uLL;
    obj = v23;
    v24 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
    if (v24)
    {
      v25 = v24;
      v34 = v10;
      v35 = databaseCopy;
      v36 = keyCopy;
      v37 = recordsCopy;
      v26 = 0;
      v27 = *v45;
      do
      {
        v28 = 0;
        v29 = v26;
        v30 = budgetRecord;
        do
        {
          if (*v45 != v27)
          {
            objc_enumerationMutation(obj);
          }

          v26 = [_DPDataTypeParameters initParametersForDataType:*(*(&v44 + 1) + 8 * v28)];

          budget3 = [v26 budget];
          name2 = [budget3 name];

          [_DPPrivacyBudget debit:1 budgetWithName:name2];
          [_DPPrivacyBudget debitCohortAggregate:name2 budgetWithName:v18];
          budget4 = [v26 budget];
          budgetRecord = [budget4 budgetRecord];

          [v38 addObject:budgetRecord];
          ++v28;
          v29 = v26;
          v30 = budgetRecord;
        }

        while (v25 != v28);
        v25 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
      }

      while (v25);

      keyCopy = v36;
      recordsCopy = v37;
      v10 = v34;
      databaseCopy = v35;
    }

    [databaseCopy updateRecords:v38 withCompletion:0];
    metadata = v42;
  }
}

+ (void)updateSimpleBudgetForRecords:(id)records withKey:(id)key inDatabase:(id)database
{
  v15[1] = *MEMORY[0x277D85DE8];
  recordsCopy = records;
  databaseCopy = database;
  v9 = [_DPKeyNames keyPropertiesForKey:key];
  if ([recordsCopy count])
  {
    budget = [v9 budget];
    name = [budget name];

    +[_DPPrivacyBudget debit:budgetWithName:](_DPPrivacyBudget, "debit:budgetWithName:", [recordsCopy count], name);
    budget2 = [v9 budget];
    budgetRecord = [budget2 budgetRecord];

    v15[0] = budgetRecord;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
    [databaseCopy updateRecords:v14 withCompletion:0];
  }
}

+ (void)enforceSimpleBudgetForRecords:withKey:inDatabase:.cold.1()
{
  OUTLINED_FUNCTION_4_0();
  v4 = *MEMORY[0x277D85DE8];
  v2 = NSStringFromSelector(v1);
  OUTLINED_FUNCTION_0_6();
  _os_log_debug_impl(&dword_22622D000, v0, OS_LOG_TYPE_DEBUG, "%@: no balance left for key=%@", v3, 0x16u);
}

@end