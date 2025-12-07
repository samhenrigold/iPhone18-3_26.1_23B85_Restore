@interface _DPReportGenerator
+ (id)filterNonConformingRecordsFrom:(id)from;
+ (id)queryKeysForPattern:(id)pattern storage:(id)storage;
+ (id)queryRecordsForKey:(id)key storage:(id)storage;
+ (id)randomizeKeys:(id)keys andSortByPriority:(BOOL)priority;
+ (unint64_t)queryRecordCountForKey:(id)key withPredicate:(id)predicate storage:(id)storage;
- (BOOL)markSubmitted:(id)submitted storage:(id)storage;
- (_DPReportGenerator)init;
- (_DPReportGenerator)initWithMetricsCollector:(id)collector;
- (id)generateReportForKeys:(id)keys storage:(id)storage;
- (id)generateReportUsing:(id)using;
- (void)reportMetricsForKey:(id)key toBeSubmitted:(id)submitted currentDate:(id)date storage:(id)storage;
- (void)scheduleMaintenanceWithName:(id)name database:(id)database;
@end

@implementation _DPReportGenerator

+ (id)filterNonConformingRecordsFrom:(id)from
{
  fromCopy = from;
  v4 = [fromCopy indexesOfObjectsPassingTest:&__block_literal_global_14];
  v5 = [fromCopy mutableCopy];

  [v5 removeObjectsAtIndexes:v4];

  return v5;
}

+ (unint64_t)queryRecordCountForKey:(id)key withPredicate:(id)predicate storage:(id)storage
{
  keyCopy = key;
  predicateCopy = predicate;
  storageCopy = storage;
  if (storageCopy)
  {
    v11 = [_DPKeyNames keyPropertiesForKey:keyCopy];
    v12 = [_DPRecordQueryPredicates entityForKey:keyCopy];
    v13 = v12;
    if (v11)
    {
      v14 = v12 == 0;
    }

    else
    {
      v14 = 1;
    }

    if (v14)
    {
      v17 = 0;
    }

    else
    {
      v15 = dispatch_semaphore_create(0);
      v23 = 0;
      v24 = &v23;
      v25 = 0x2020000000;
      v26 = 0;
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __67___DPReportGenerator_queryRecordCountForKey_withPredicate_storage___block_invoke;
      v19[3] = &unk_27858B5D8;
      v21 = &v23;
      v22 = a2;
      v16 = v15;
      v20 = v16;
      [storageCopy fetchRecordCountForEntity:v13 predicate:predicateCopy completion:v19];
      dispatch_semaphore_wait(v16, 0xFFFFFFFFFFFFFFFFLL);
      v17 = v24[3];

      _Block_object_dispose(&v23, 8);
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

+ (id)queryRecordsForKey:(id)key storage:(id)storage
{
  keyCopy = key;
  storageCopy = storage;
  if (storageCopy)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = [_DPKeyNames keyPropertiesForKey:keyCopy];
    v10 = v9;
    if (v9)
    {
      budget = [v9 budget];
      name = [budget name];

      v13 = [_DPPrivacyBudgetProperties budgetPropertiesForKey:name];
      intervalBudgetValue = [v13 intervalBudgetValue];
      unsignedIntegerValue = [intervalBudgetValue unsignedIntegerValue];

      if (unsignedIntegerValue >= 0x28)
      {
        v16 = 40;
      }

      else
      {
        v16 = unsignedIntegerValue;
      }
    }

    else
    {
      v16 = 40;
    }

    v18 = [_DPRecordQueryPredicates entityForKey:keyCopy];
    if (v18)
    {
      v19 = [_DPRecordQueryPredicates predicateForRecordsNotSubmittedForKeyBeginsWith:keyCopy];
      v27 = 0;
      v28 = &v27;
      v29 = 0x3032000000;
      v30 = __Block_byref_object_copy__8;
      v31 = __Block_byref_object_dispose__8;
      v32 = 0;
      v20 = dispatch_semaphore_create(0);
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __49___DPReportGenerator_queryRecordsForKey_storage___block_invoke;
      v23[3] = &unk_27858B238;
      v25 = &v27;
      v26 = a2;
      v21 = v20;
      v24 = v21;
      [storageCopy fetchRecordsFor:v18 predicate:v19 fetchLimit:v16 fetchOffset:0 randomizeOrder:1 withCompletion:v23];
      dispatch_semaphore_wait(v21, 0xFFFFFFFFFFFFFFFFLL);
      v17 = v28[5];

      _Block_object_dispose(&v27, 8);
    }

    else
    {
      v17 = MEMORY[0x277CBEBF8];
    }

    objc_autoreleasePoolPop(v8);
  }

  else
  {
    v17 = MEMORY[0x277CBEBF8];
  }

  return v17;
}

+ (id)queryKeysForPattern:(id)pattern storage:(id)storage
{
  patternCopy = pattern;
  storageCopy = storage;
  if (storageCopy)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = [_DPRecordQueryPredicates entityForKey:patternCopy];
    if (v9)
    {
      v10 = [_DPRecordQueryPredicates predicateForRecordsNotSubmittedForKeyBeginsWith:patternCopy];
      v19 = 0;
      v20 = &v19;
      v21 = 0x3032000000;
      v22 = __Block_byref_object_copy__8;
      v23 = __Block_byref_object_dispose__8;
      v24 = 0;
      v11 = dispatch_semaphore_create(0);
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __50___DPReportGenerator_queryKeysForPattern_storage___block_invoke;
      v15[3] = &unk_27858B238;
      v17 = &v19;
      v18 = a2;
      v12 = v11;
      v16 = v12;
      [storageCopy fetchKeynamesFor:v9 predicate:v10 fetchLimit:100 fetchOffset:0 withCompletion:v15];
      dispatch_semaphore_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
      v13 = v20[5];

      _Block_object_dispose(&v19, 8);
    }

    else
    {
      v13 = MEMORY[0x277CBEBF8];
    }

    objc_autoreleasePoolPop(v8);
  }

  else
  {
    v13 = MEMORY[0x277CBEBF8];
  }

  return v13;
}

- (_DPReportGenerator)init
{
  v3 = +[_DPCoreAnalyticsCollector sharedInstance];
  v4 = [(_DPReportGenerator *)self initWithMetricsCollector:v3];

  return v4;
}

- (_DPReportGenerator)initWithMetricsCollector:(id)collector
{
  collectorCopy = collector;
  v9.receiver = self;
  v9.super_class = _DPReportGenerator;
  v6 = [(_DPReportGenerator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_metricsCollector, collector);
  }

  return v7;
}

- (BOOL)markSubmitted:(id)submitted storage:(id)storage
{
  v19 = *MEMORY[0x277D85DE8];
  submittedCopy = submitted;
  storageCopy = storage;
  if (storageCopy)
  {
    v7 = objc_autoreleasePoolPush();
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = submittedCopy;
    v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      do
      {
        v12 = 0;
        do
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [*(*(&v14 + 1) + 8 * v12++) setSubmitted:{1, v14}];
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v10);
    }

    [storageCopy updateRecords:v8 withCompletion:0];
    objc_autoreleasePoolPop(v7);
  }

  return storageCopy != 0;
}

- (id)generateReportUsing:(id)using
{
  v45 = *MEMORY[0x277D85DE8];
  usingCopy = using;
  v6 = +[_DPLog daemon];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(_DPReportGenerator *)a2 generateReportUsing:v6];
  }

  if (!+[_DPDeviceInfo isDataCollectionEnabled])
  {
    v7 = +[_DPLog daemon];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [_DPReportGenerator generateReportUsing:a2];
    }

    goto LABEL_9;
  }

  if (+[_DPDeviceInfo isDisabledByTaskingForCrashCopier])
  {
    v7 = +[_DPLog daemon];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [_DPReportGenerator generateReportUsing:a2];
    }

LABEL_9:

    v8 = 0;
    goto LABEL_29;
  }

  v28 = objc_autoreleasePoolPush();
  v9 = +[_DPKeyNames keyNamesGroupedByPropertyName];
  v10 = [MEMORY[0x277CBEBF8] mutableCopy];
  v31 = v9;
  allKeys = [v9 allKeys];
  [objc_opt_class() randomizeKeys:allKeys andSortByPriority:1];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = v42 = 0u;
  v32 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (v32)
  {
    v30 = *v40;
    do
    {
      v11 = 0;
      do
      {
        if (*v40 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v34 = v11;
        v12 = *(*(&v39 + 1) + 8 * v11);
        context = objc_autoreleasePoolPush();
        v13 = [v31 objectForKeyedSubscript:v12];
        v14 = [v13 mutableCopy];

        v15 = [MEMORY[0x277CBEBF8] mutableCopy];
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v16 = v14;
        v17 = [v16 countByEnumeratingWithState:&v35 objects:v43 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v36;
          do
          {
            for (i = 0; i != v18; ++i)
            {
              if (*v36 != v19)
              {
                objc_enumerationMutation(v16);
              }

              v21 = *(*(&v35 + 1) + 8 * i);
              [v15 addObject:v21];
              v22 = [objc_opt_class() queryKeysForPattern:v21 storage:usingCopy];
              if ([v22 count])
              {
                v23 = [objc_opt_class() randomizeKeys:v22 andSortByPriority:0];
                [v10 addObjectsFromArray:v23];
              }
            }

            v18 = [v16 countByEnumeratingWithState:&v35 objects:v43 count:16];
          }

          while (v18);
        }

        [v16 removeObjectsInArray:v15];
        v24 = [v16 copy];
        if ([v24 count])
        {
          v25 = [objc_opt_class() randomizeKeys:v24 andSortByPriority:0];
          [v10 addObjectsFromArray:v25];
        }

        objc_autoreleasePoolPop(context);
        v11 = v34 + 1;
      }

      while (v34 + 1 != v32);
      v32 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
    }

    while (v32);
  }

  v8 = [(_DPReportGenerator *)self generateReportForKeys:v10 storage:usingCopy];

  objc_autoreleasePoolPop(v28);
LABEL_29:

  return v8;
}

+ (id)randomizeKeys:(id)keys andSortByPriority:(BOOL)priority
{
  priorityCopy = priority;
  keysCopy = keys;
  v6 = objc_autoreleasePoolPush();
  v7 = [keysCopy count];
  v8 = [keysCopy mutableCopy];
  for (i = [MEMORY[0x277CBEBF8] mutableCopy]; objc_msgSend(v8, "count"); --v7)
  {
    v10 = arc4random_uniform(v7);
    v11 = [v8 objectAtIndexedSubscript:v10];
    [v8 removeObjectAtIndex:v10];
    [i addObject:v11];
  }

  if (priorityCopy)
  {
    v12 = [i sortedArrayWithOptions:16 usingComparator:&__block_literal_global_13];
  }

  else
  {
    v12 = [i copy];
  }

  v13 = v12;

  objc_autoreleasePoolPop(v6);

  return v13;
}

- (void)reportMetricsForKey:(id)key toBeSubmitted:(id)submitted currentDate:(id)date storage:(id)storage
{
  v46[2] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  submittedCopy = submitted;
  dateCopy = date;
  storageCopy = storage;
  if (+[_DPDeviceInfo isInternalBuild])
  {
    v14 = [_DPKeyNames keyPropertiesForKey:keyCopy];
    if (v14)
    {
      selfCopy = self;
      v41 = v14;
      v40 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:dateCopy sinceDate:-604800.0];
      v39 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:dateCopy sinceDate:-86400.0];
      v37 = [_DPRecordQueryPredicates predicateForRecordsInDateRangeStart:v40 end:dateCopy];
      v38 = [_DPRecordQueryPredicates predicateForRecordsInDateRangeStart:v39 end:dateCopy];
      v15 = [_DPRecordQueryPredicates predicateForRecordsMatchingKey:keyCopy];
      v16 = MEMORY[0x277CCA920];
      v46[0] = v15;
      v46[1] = v38;
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:2];
      v36 = [v16 andPredicateWithSubpredicates:v17];

      v18 = MEMORY[0x277CCA920];
      v45[0] = v15;
      v45[1] = v37;
      v35 = v15;
      v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:2];
      v34 = [v18 andPredicateWithSubpredicates:v19];

      v33 = [objc_opt_class() queryRecordCountForKey:keyCopy withPredicate:v36 storage:storageCopy];
      v20 = [objc_opt_class() queryRecordCountForKey:keyCopy withPredicate:v34 storage:storageCopy];
      v21 = MEMORY[0x277CCA920];
      v44[0] = v15;
      v22 = +[_DPRecordQueryPredicates predicateForRecordsNotSubmitted];
      v44[1] = v22;
      v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:2];
      v24 = [v21 andPredicateWithSubpredicates:v23];

      v25 = [objc_opt_class() queryRecordCountForKey:keyCopy withPredicate:v24 storage:storageCopy];
      v26 = [submittedCopy count] / v25;
      v43[0] = keyCopy;
      v42[0] = @"useCase";
      v42[1] = @"countLastWeek";
      v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v20];
      v43[1] = v27;
      v42[2] = @"countLastDay";
      v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v33];
      v43[2] = v28;
      v42[3] = @"proportionSubmitted";
      v29 = [MEMORY[0x277CCABB0] numberWithDouble:v26];
      v43[3] = v29;
      v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:4];

      metricsCollector = [(_DPReportGenerator *)selfCopy metricsCollector];
      [metricsCollector reportMetricsForEvent:@"com.apple.DifferentialPrivacy.usage" withMetrics:v30];

      v14 = v41;
    }
  }
}

- (id)generateReportForKeys:(id)keys storage:(id)storage
{
  v78 = *MEMORY[0x277D85DE8];
  keysCopy = keys;
  storageCopy = storage;
  if (!storageCopy)
  {
    v38 = &stru_2839671C8;
    goto LABEL_51;
  }

  context = objc_autoreleasePoolPush();
  v7 = MEMORY[0x277CBEBF8];
  v58 = [MEMORY[0x277CBEBF8] mutableCopy];
  v60 = [v7 mutableCopy];
  v57 = [v7 mutableCopy];
  v67 = [MEMORY[0x277CBEC10] mutableCopy];
  v59 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:0.0];
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v56 = keysCopy;
  v8 = keysCopy;
  v9 = [v8 countByEnumeratingWithState:&v72 objects:v77 count:16];
  if (!v9)
  {
    goto LABEL_33;
  }

  v10 = v9;
  v61 = 40;
  v62 = storageCopy;
  v11 = 0x27858A000uLL;
  v12 = *v73;
  v64 = v8;
  v65 = *v73;
  while (2)
  {
    v13 = 0;
    v66 = v10;
    do
    {
      if (*v73 != v12)
      {
        objc_enumerationMutation(v8);
      }

      v14 = *(*(&v72 + 1) + 8 * v13);
      v15 = objc_autoreleasePoolPush();
      v16 = [*(v11 + 624) keyPropertiesForKey:v14];
      v17 = v16;
      if (v16 && [v16 transport] != 4)
      {
        budget = [v17 budget];
        [budget initializeBudgetRecordFrom:storageCopy];

        budget2 = [v17 budget];
        name = [budget2 name];

        v21 = [_DPPrivacyBudget balanceForBudgetWithName:name];
        v22 = [v67 objectForKeyedSubscript:name];
        unsignedIntegerValue = [v22 unsignedIntegerValue];

        v24 = v21 - unsignedIntegerValue;
        if (v24 < 1)
        {
LABEL_27:
          v12 = v65;

          v11 = 0x27858A000;
          v10 = v66;
          goto LABEL_28;
        }

        transport = [v17 transport];
        v26 = objc_autoreleasePoolPush();
        v27 = [objc_opt_class() queryRecordsForKey:v14 storage:storageCopy];
        v28 = [objc_opt_class() filterNonConformingRecordsFrom:v27];
        if ([v28 count])
        {

          objc_autoreleasePoolPop(v26);
          if ([v28 count] <= v24)
          {
            v27 = v28;
          }

          else
          {
            v27 = [v28 subarrayWithRange:{0, v24}];
          }

          v8 = v64;
          if (![v27 count])
          {
            goto LABEL_26;
          }

          v29 = [v27 count];
          if (v61 - v29 < 0)
          {

            objc_autoreleasePoolPop(v15);
            storageCopy = v62;
            goto LABEL_33;
          }

          v61 -= v29;
          v30 = [_DPJSONSegment alloc];
          serverAlgorithmString = [v17 serverAlgorithmString];
          parameterDictionary = [v17 parameterDictionary];
          v33 = [(_DPJSONSegment *)v30 initWithKey:v14 serverAlgorithmString:serverAlgorithmString parameterDictionary:parameterDictionary records:v27];

          if (v33)
          {
            [v60 addObjectsFromArray:v27];
            if (transport == 2)
            {
              [v57 addObject:v33];
            }

            [(_DPReportGenerator *)self reportMetricsForKey:v14 toBeSubmitted:v27 currentDate:v59 storage:v62];
            if (+[_DPDeviceInfo isInternalBuild]|| transport != 2)
            {
              [v58 addObject:v33];
            }

            v34 = [v67 objectForKeyedSubscript:name];
            unsignedIntegerValue2 = [v34 unsignedIntegerValue];

            v36 = [v27 count];
            v37 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v36 + unsignedIntegerValue2];
            [v67 setObject:v37 forKeyedSubscript:name];
          }
        }

        else
        {

          objc_autoreleasePoolPop(v26);
        }

        v8 = v64;
LABEL_26:

        storageCopy = v62;
        goto LABEL_27;
      }

LABEL_28:

      objc_autoreleasePoolPop(v15);
      ++v13;
    }

    while (v10 != v13);
    v10 = [v8 countByEnumeratingWithState:&v72 objects:v77 count:16];
    if (v10)
    {
      continue;
    }

    break;
  }

LABEL_33:

  v39 = v58;
  if (![v58 count])
  {
    v38 = 0;
    keysCopy = v56;
    v41 = v57;
    goto LABEL_50;
  }

  v40 = objc_autoreleasePoolPush();
  v41 = v57;
  if (![v58 count] || (+[_DPJSONOutputHelper submissionContentForSegments:](_DPJSONOutputHelper, "submissionContentForSegments:", v58), (v42 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    objc_autoreleasePoolPop(v40);
    v38 = 0;
    goto LABEL_48;
  }

  v43 = v42;
  v38 = [_DPUploadHelper writeFileForDA:v42];

  objc_autoreleasePoolPop(v40);
  if (!v38)
  {
LABEL_48:
    keysCopy = v56;
    goto LABEL_50;
  }

  [(_DPReportGenerator *)self markSubmitted:v60 storage:storageCopy];
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v44 = v67;
  v45 = [v44 countByEnumeratingWithState:&v68 objects:v76 count:16];
  if (v45)
  {
    v46 = v45;
    v47 = *v69;
    do
    {
      for (i = 0; i != v46; ++i)
      {
        if (*v69 != v47)
        {
          objc_enumerationMutation(v44);
        }

        v49 = *(*(&v68 + 1) + 8 * i);
        v50 = [v44 objectForKeyedSubscript:v49];
        +[_DPPrivacyBudget debit:budgetWithName:](_DPPrivacyBudget, "debit:budgetWithName:", [v50 unsignedIntegerValue], v49);
      }

      v46 = [v44 countByEnumeratingWithState:&v68 objects:v76 count:16];
    }

    while (v46);
  }

  v51 = objc_autoreleasePoolPush();
  [_DPPrivacyBudget updateAllBudgetsIn:storageCopy];
  objc_autoreleasePoolPop(v51);
  v41 = v57;
  keysCopy = v56;
  if ([v57 count])
  {
    v52 = [_DPJSONOutputHelper submissionContentForSegments:v57];
    v53 = [_DPUploadHelper writeFileForParsec:v52];
  }

  v39 = v58;
LABEL_50:

  objc_autoreleasePoolPop(context);
LABEL_51:

  return v38;
}

- (void)scheduleMaintenanceWithName:(id)name database:(id)database
{
  databaseCopy = database;
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __59___DPReportGenerator_scheduleMaintenanceWithName_database___block_invoke;
  v14 = &unk_27858AF18;
  selfCopy = self;
  v16 = databaseCopy;
  v7 = databaseCopy;
  nameCopy = name;
  v9 = MEMORY[0x22AA7A8C0](&v11);
  selfCopy = [_DPPeriodicTask taskWithName:nameCopy period:kSecondsIn18Hours handler:v9 networkingRequired:1, v11, v12, v13, v14, selfCopy];

  [_DPPeriodicTaskManager registerTask:selfCopy];
}

- (void)generateReportUsing:(const char *)a1 .cold.1(const char *a1, NSObject *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = NSStringFromSelector(a1);
  v4 = +[_DPStrings databaseDirectoryPath];
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = v4;
  _os_log_debug_impl(&dword_22622D000, a2, OS_LOG_TYPE_DEBUG, "%@: Data Base Directory Path: %@", &v5, 0x16u);
}

- (void)generateReportUsing:(const char *)a1 .cold.2(const char *a1)
{
  v6 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)generateReportUsing:(const char *)a1 .cold.3(const char *a1)
{
  v6 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

@end