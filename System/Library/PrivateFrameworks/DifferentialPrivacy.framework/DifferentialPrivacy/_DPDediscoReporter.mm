@interface _DPDediscoReporter
+ (id)filterNonConformingDediscoRecordsFrom:(id)from;
- (BOOL)markSubmitted:(id)submitted storage:(id)storage;
- (BOOL)reportDediscoKeys:(id)keys storage:(id)storage;
- (BOOL)reportDediscoRecords:(id)records;
- (id)directlyUploadDediscoRecords:(id)records forKey:(id)key keyProperties:(id)properties storage:(id)storage;
- (id)reportToDediscoRecords:(id)records forKey:(id)key keyProperties:(id)properties storage:(id)storage;
- (void)scheduleMaintenanceWithName:(id)name database:(id)database;
@end

@implementation _DPDediscoReporter

- (BOOL)reportDediscoRecords:(id)records
{
  v47 = *MEMORY[0x277D85DE8];
  recordsCopy = records;
  if (recordsCopy)
  {
    v5 = +[_DPLog daemon];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [_DPDediscoReporter reportDediscoRecords:a2];
    }

    if (+[_DPDeviceInfo isDataCollectionEnabled])
    {
      if (+[_DPDeviceInfo isDisabledByTaskingForDedisco])
      {
        v6 = +[_DPLog daemon];
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          [_DPDediscoReporter reportDediscoRecords:a2];
        }
      }

      else
      {
        v28 = objc_autoreleasePoolPush();
        v9 = +[_DPKeyNames keyNamesGroupedByPropertyName];
        v35 = [MEMORY[0x277CBEBF8] mutableCopy];
        v31 = v9;
        allKeys = [v9 allKeys];
        [objc_opt_class() randomizeKeys:allKeys andSortByPriority:1];
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        obj = v44 = 0u;
        v32 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
        if (v32)
        {
          v30 = *v42;
          do
          {
            v10 = 0;
            do
            {
              if (*v42 != v30)
              {
                objc_enumerationMutation(obj);
              }

              v34 = v10;
              v11 = *(*(&v41 + 1) + 8 * v10);
              context = objc_autoreleasePoolPush();
              v12 = [v31 objectForKeyedSubscript:v11];
              v13 = [v12 mutableCopy];

              v14 = [MEMORY[0x277CBEBF8] mutableCopy];
              v37 = 0u;
              v38 = 0u;
              v39 = 0u;
              v40 = 0u;
              v15 = v13;
              v16 = [v15 countByEnumeratingWithState:&v37 objects:v45 count:16];
              if (v16)
              {
                v17 = v16;
                v18 = *v38;
                do
                {
                  for (i = 0; i != v17; ++i)
                  {
                    if (*v38 != v18)
                    {
                      objc_enumerationMutation(v15);
                    }

                    v20 = *(*(&v37 + 1) + 8 * i);
                    v21 = [_DPKeyNames keyPropertiesForKey:v20];
                    if ([v21 transport] == 4)
                    {
                      [v14 addObject:v20];
                      v22 = [objc_opt_class() queryKeysForPattern:v20 storage:recordsCopy];
                      if ([v22 count])
                      {
                        v23 = [objc_opt_class() randomizeKeys:v22 andSortByPriority:0];
                        [v35 addObjectsFromArray:v23];
                      }
                    }
                  }

                  v17 = [v15 countByEnumeratingWithState:&v37 objects:v45 count:16];
                }

                while (v17);
              }

              [v15 removeObjectsInArray:v14];
              v24 = [v15 copy];
              if ([v24 count])
              {
                v25 = [objc_opt_class() randomizeKeys:v24 andSortByPriority:0];
                [v35 addObjectsFromArray:v25];
              }

              objc_autoreleasePoolPop(context);
              v10 = v34 + 1;
            }

            while (v34 + 1 != v32);
            v32 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
          }

          while (v32);
        }

        v26 = [(_DPDediscoReporter *)self reportDediscoKeys:v35 storage:recordsCopy];
        objc_autoreleasePoolPop(v28);
        if (v26)
        {
          v7 = 1;
          goto LABEL_12;
        }

        v6 = +[_DPLog daemon];
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          [_DPDediscoReporter reportDediscoRecords:v6];
        }
      }
    }

    else
    {
      v6 = +[_DPLog daemon];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [_DPDediscoReporter reportDediscoRecords:a2];
      }
    }
  }

  v7 = 0;
LABEL_12:

  return v7;
}

- (BOOL)reportDediscoKeys:(id)keys storage:(id)storage
{
  v62 = *MEMORY[0x277D85DE8];
  keysCopy = keys;
  storageCopy = storage;
  if (storageCopy)
  {
    v36 = objc_autoreleasePoolPush();
    v43 = [MEMORY[0x277CBEBF8] mutableCopy];
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v37 = keysCopy;
    v6 = keysCopy;
    v7 = [v6 countByEnumeratingWithState:&v50 objects:v61 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v51;
      v10 = 40;
      v11 = 0x27858A000uLL;
      v38 = *v51;
      v39 = v6;
      do
      {
        v12 = 0;
        v40 = v8;
        do
        {
          if (*v51 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v13 = *(*(&v50 + 1) + 8 * v12);
          v14 = objc_autoreleasePoolPush();
          v15 = [*(v11 + 624) keyPropertiesForKey:v13];
          v16 = v15;
          if (v15 && [v15 transport] == 4)
          {
            v17 = objc_autoreleasePoolPush();
            v18 = [objc_opt_class() queryRecordsForKey:v13 storage:storageCopy];
            if ([v18 count])
            {
              v19 = [objc_opt_class() filterNonConformingDediscoRecordsFrom:v18];
              if ([v19 count])
              {

                objc_autoreleasePoolPop(v17);
                context = v14;
                if (v10 < [v19 count])
                {
                  v20 = [v19 subarrayWithRange:{0, v10}];

                  v19 = v20;
                }

                v21 = [_DPEnhancedPrivacyAlgorithm findMultipleDonationForKey:v13 inRecords:v19];
                v46 = 0u;
                v47 = 0u;
                v48 = 0u;
                v49 = 0u;
                obj = [v21 allKeys];
                v22 = [obj countByEnumeratingWithState:&v46 objects:v60 count:16];
                if (v22)
                {
                  v23 = v22;
                  v24 = *v47;
                  while (2)
                  {
                    v25 = 0;
                    v26 = v19;
                    do
                    {
                      if (*v47 != v24)
                      {
                        objc_enumerationMutation(obj);
                      }

                      v19 = [v21 objectForKeyedSubscript:*(*(&v46 + 1) + 8 * v25)];

                      v27 = [(_DPDediscoReporter *)self directlyUploadDediscoRecords:v19 forKey:v13 keyProperties:v16 storage:storageCopy];
                      if ([v27 count])
                      {
                        [v43 addObjectsFromArray:v27];
                        v10 -= [v27 count];
                        if (!v10)
                        {

                          goto LABEL_27;
                        }

                        if (v10 < 0)
                        {
                          v32 = +[_DPLog daemon];
                          v29 = v43;
                          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
                          {
                            v34 = [v19 count];
                            v35 = [v43 count];
                            *buf = 134218496;
                            v55 = v10;
                            v56 = 2048;
                            v57 = v34;
                            v58 = 2048;
                            v59 = v35;
                            _os_log_error_impl(&dword_22622D000, v32, OS_LOG_TYPE_ERROR, "The max report count (%ld) has become negative. The latest submitted record count is %lu with the total submitted records of %lu so far.", buf, 0x20u);
                          }

                          objc_autoreleasePoolPop(context);
                          v31 = 0;
                          goto LABEL_39;
                        }
                      }

                      ++v25;
                      v26 = v19;
                    }

                    while (v23 != v25);
                    v23 = [obj countByEnumeratingWithState:&v46 objects:v60 count:16];
                    if (v23)
                    {
                      continue;
                    }

                    break;
                  }
                }

LABEL_27:

                v18 = v19;
                v9 = v38;
                v6 = v39;
                v8 = v40;
                v14 = context;
                goto LABEL_28;
              }

              v8 = v40;
            }

            objc_autoreleasePoolPop(v17);
LABEL_28:

            v11 = 0x27858A000;
          }

          objc_autoreleasePoolPop(v14);
          ++v12;
        }

        while (v12 != v8);
        v8 = [v6 countByEnumeratingWithState:&v50 objects:v61 count:16];
      }

      while (v8);
    }

    v28 = +[_DPLog daemon];
    v29 = v43;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      [_DPDediscoReporter reportDediscoKeys:v43 storage:?];
    }

    if ([v43 count])
    {
      v30 = objc_autoreleasePoolPush();
      [_DPPrivacyBudget updateAllBudgetsIn:storageCopy];
      objc_autoreleasePoolPop(v30);
      [(_DPDediscoReporter *)self markSubmitted:v43 storage:storageCopy];
    }

    v31 = 1;
LABEL_39:
    keysCopy = v37;

    objc_autoreleasePoolPop(v36);
  }

  else
  {
    v31 = 0;
  }

  return v31;
}

- (id)directlyUploadDediscoRecords:(id)records forKey:(id)key keyProperties:(id)properties storage:(id)storage
{
  v43[4] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  propertiesCopy = properties;
  storageCopy = storage;
  recordsCopy = records;
  v13 = [_DPPrivacyBudget enforceBudgetForRecords:recordsCopy withKey:keyCopy inDatabase:storageCopy];
  v14 = [recordsCopy count];

  v15 = v14 - [v13 count];
  v39 = propertiesCopy;
  telemetryAllowed = [propertiesCopy telemetryAllowed];
  v17 = 1;
  if ((telemetryAllowed & 1) == 0)
  {
    v17 = +[_DPDeviceInfo isInternalBuild];
  }

  LOBYTE(v35) = v17;
  LODWORD(v33) = 1;
  HIDWORD(v33) = v15;
  [_DPLHBitacoraLogger donateEventToBitacoraForKey:keyCopy eventPhase:3 uuid:0 succeeded:0 errorCode:301 errorMessage:@"No budget left" aggregateFunction:v33 count:v35 telemetryAllowed:?];
  v18 = +[_DPCoreAnalyticsCollector sharedInstance];
  v42[0] = @"Phase";
  v42[1] = @"TaskName";
  v43[0] = &unk_283975F28;
  v43[1] = keyCopy;
  v43[2] = MEMORY[0x277CBEC28];
  v42[2] = @"Status";
  v42[3] = @"Counts";
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v15];
  v43[3] = v19;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:4];
  [v18 reportMetricsForEvent:@"com.apple.DifferentialPrivacy.PhaseCount" withMetrics:v20];

  if ([v13 count])
  {
    v21 = [v13 count];
    v22 = propertiesCopy;
    telemetryAllowed2 = [propertiesCopy telemetryAllowed];
    v24 = 1;
    if ((telemetryAllowed2 & 1) == 0)
    {
      v24 = +[_DPDeviceInfo isInternalBuild];
    }

    LOBYTE(v36) = v24;
    LODWORD(v34) = 1;
    HIDWORD(v34) = v21;
    [_DPLHBitacoraLogger donateEventToBitacoraForKey:keyCopy eventPhase:3 uuid:0 succeeded:1 errorCode:300 errorMessage:0 aggregateFunction:v34 count:v36 telemetryAllowed:?];
    v25 = +[_DPCoreAnalyticsCollector sharedInstance];
    v40[0] = @"Phase";
    v40[1] = @"TaskName";
    v41[0] = &unk_283975F28;
    v41[1] = keyCopy;
    v41[2] = MEMORY[0x277CBEC38];
    v40[2] = @"Status";
    v40[3] = @"Counts";
    v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v13, "count")}];
    v41[3] = v26;
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:4];
    [v25 reportMetricsForEvent:@"com.apple.DifferentialPrivacy.PhaseCount" withMetrics:v27];

    v28 = storageCopy;
    v29 = [(_DPDediscoReporter *)self reportToDediscoRecords:v13 forKey:keyCopy keyProperties:v39 storage:storageCopy];
    if ([v29 count])
    {
      [_DPPrivacyBudget updateBudgetForRecords:v29 withKey:keyCopy inDatabase:storageCopy];
    }

    v30 = v29;
  }

  else
  {
    v31 = +[_DPLog framework];
    v22 = propertiesCopy;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      [_DPDediscoReporter directlyUploadDediscoRecords:a2 forKey:? keyProperties:? storage:?];
    }

    v30 = MEMORY[0x277CBEBF8];
    v28 = storageCopy;
  }

  return v30;
}

- (id)reportToDediscoRecords:(id)records forKey:(id)key keyProperties:(id)properties storage:(id)storage
{
  v81 = *MEMORY[0x277D85DE8];
  recordsCopy = records;
  keyCopy = key;
  propertiesCopy = properties;
  storageCopy = storage;
  v9 = +[_DPLog daemon];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    *&buf[4] = [recordsCopy count];
    *&buf[12] = 2112;
    *&buf[14] = keyCopy;
    _os_log_impl(&dword_22622D000, v9, OS_LOG_TYPE_DEFAULT, "Submitting %lu record(s) to Dedisco for key %@", buf, 0x16u);
  }

  context = objc_autoreleasePoolPush();
  v47 = [objc_alloc(MEMORY[0x277CCAE80]) initWithServiceName:@"com.apple.DPSubmissionService"];
  v10 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_283982D30];
  [v47 setRemoteObjectInterface:v10];

  [v47 resume];
  if (v47)
  {
    v71[0] = MEMORY[0x277D85DD0];
    v71[1] = 3221225472;
    v71[2] = __74___DPDediscoReporter_reportToDediscoRecords_forKey_keyProperties_storage___block_invoke;
    v71[3] = &unk_27858AEA8;
    v72 = @"com.apple.DPSubmissionService";
    v52 = keyCopy;
    v73 = v52;
    v11 = recordsCopy;
    v74 = v11;
    v12 = propertiesCopy;
    v75 = v12;
    v50 = [v47 synchronousRemoteObjectProxyWithErrorHandler:v71];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v78 = __Block_byref_object_copy__3;
    v79 = __Block_byref_object_dispose__3;
    v80 = [MEMORY[0x277CBEBF8] mutableCopy];
    v65 = 0;
    v66 = &v65;
    v67 = 0x3032000000;
    v68 = __Block_byref_object_copy__3;
    v69 = __Block_byref_object_dispose__3;
    v70 = [MEMORY[0x277CBEBF8] mutableCopy];
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    obj = v11;
    v13 = [obj countByEnumeratingWithState:&v61 objects:v76 count:16];
    if (v13)
    {
      v49 = *v62;
      do
      {
        v51 = v13;
        for (i = 0; i != v51; ++i)
        {
          if (*v62 != v49)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v61 + 1) + 8 * i);
          v59[0] = 0;
          v59[1] = v59;
          v59[2] = 0x3032000000;
          v59[3] = __Block_byref_object_copy__3;
          v59[4] = __Block_byref_object_dispose__3;
          v16 = v15;
          v60 = v16;
          parameterDictionary = [v12 parameterDictionary];
          metadata = [v16 metadata];
          v19 = [metadata objectForKeyedSubscript:@"dimensionality"];

          if (v19)
          {
            v20 = [parameterDictionary mutableCopy];
            [v20 setObject:v19 forKey:@"size"];
            v21 = [v20 copy];

            parameterDictionary = v21;
          }

          metadata2 = [v16 metadata];
          v23 = [metadata2 mutableCopy];

          v24 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v12, "telemetryAllowed")}];
          [v23 setObject:v24 forKeyedSubscript:@"telemetryAllowed"];

          v25 = [_DPDediscoDonation alloc];
          share1 = [v16 share1];
          share2 = [v16 share2];
          dimension = [v16 dimension];
          serverAlgorithmString = [v12 serverAlgorithmString];
          v30 = [(_DPDediscoDonation *)v25 initWithKey:v52 share1:share1 share2:share2 dimension:dimension metadata:v23 serverAlgorithm:serverAlgorithmString algorithmParameters:parameterDictionary];

          v53[0] = MEMORY[0x277D85DD0];
          v53[1] = 3221225472;
          v53[2] = __74___DPDediscoReporter_reportToDediscoRecords_forKey_keyProperties_storage___block_invoke_53;
          v53[3] = &unk_27858AED0;
          v54 = v52;
          v56 = buf;
          v57 = v59;
          v58 = &v65;
          v31 = v30;
          v55 = v31;
          [v50 submitDonation:v31 toDediscoWithReply:v53];

          _Block_object_dispose(v59, 8);
        }

        v13 = [obj countByEnumeratingWithState:&v61 objects:v76 count:16];
      }

      while (v13);
    }

    [v47 invalidate];
    v32 = _DPNewTransparencyLog(v66[5], 0);
    v33 = v32;
    if (v32)
    {
      [v32 writeToDiskWithError:0];
    }

    v34 = [*(*&buf[8] + 40) copy];

    _Block_object_dispose(&v65, 8);
    _Block_object_dispose(buf, 8);

    v35 = v72;
  }

  else
  {
    v50 = [MEMORY[0x277CCACA8] stringWithFormat:@"Could not create connection to %@", @"com.apple.DPSubmissionService"];
    v36 = [recordsCopy count];
    telemetryAllowed = [propertiesCopy telemetryAllowed];
    v38 = 1;
    if ((telemetryAllowed & 1) == 0)
    {
      v38 = +[_DPDeviceInfo isInternalBuild];
    }

    LOBYTE(v41) = v38;
    LODWORD(v40) = 1;
    HIDWORD(v40) = v36;
    [_DPLHBitacoraLogger donateEventToBitacoraForKey:keyCopy eventPhase:4 uuid:0 succeeded:0 errorCode:411 errorMessage:v50 aggregateFunction:v40 count:v41 telemetryAllowed:context];
    v35 = +[_DPLog daemon];
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      [_DPDediscoReporter reportToDediscoRecords:forKey:keyProperties:storage:];
    }

    v34 = 0;
  }

  objc_autoreleasePoolPop(context);

  return v34;
}

+ (id)filterNonConformingDediscoRecordsFrom:(id)from
{
  fromCopy = from;
  v4 = [fromCopy indexesOfObjectsPassingTest:&__block_literal_global_3];
  v5 = [fromCopy mutableCopy];

  [v5 removeObjectsAtIndexes:v4];

  return v5;
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

- (void)scheduleMaintenanceWithName:(id)name database:(id)database
{
  databaseCopy = database;
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __59___DPDediscoReporter_scheduleMaintenanceWithName_database___block_invoke;
  v14 = &unk_27858AF18;
  selfCopy = self;
  v16 = databaseCopy;
  v7 = databaseCopy;
  nameCopy = name;
  v9 = MEMORY[0x22AA7A8C0](&v11);
  selfCopy = [_DPPeriodicTask taskWithName:nameCopy period:kSecondsIn18Hours handler:v9 networkingRequired:1, v11, v12, v13, v14, selfCopy];

  [_DPPeriodicTaskManager registerTask:selfCopy];
}

- (void)reportDediscoRecords:(const char *)a1 .cold.1(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  v7 = +[_DPStrings databaseDirectoryPath];
  OUTLINED_FUNCTION_0_5();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)reportDediscoRecords:(const char *)a1 .cold.2(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4(&dword_22622D000, v2, v3, "%@: Disabled by D&U switch - skipping dedisco reporter", v4, v5, v6, v7);
}

- (void)reportDediscoRecords:(const char *)a1 .cold.4(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4(&dword_22622D000, v2, v3, "%@: Disabled by Tasking - skipping dedisco reporter", v4, v5, v6, v7);
}

- (void)reportDediscoKeys:(void *)a1 storage:.cold.1(void *a1)
{
  [a1 count];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_5();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)directlyUploadDediscoRecords:(const char *)a1 forKey:keyProperties:storage:.cold.1(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_5();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)reportToDediscoRecords:forKey:keyProperties:storage:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_22622D000, v0, OS_LOG_TYPE_ERROR, "%@", v1, 0xCu);
}

@end