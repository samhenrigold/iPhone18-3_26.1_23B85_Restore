@interface ATXInspectionServer
@end

@implementation ATXInspectionServer

void __38___ATXInspectionServer_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = sharedInstance__pasExprOnceResult_40;
  sharedInstance__pasExprOnceResult_40 = v1;

  objc_autoreleasePoolPop(v0);
}

void __59___ATXInspectionServer_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v1 = __atxlog_handle_default(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    __59___ATXInspectionServer_listener_shouldAcceptNewConnection___block_invoke_cold_1();
  }
}

void __59___ATXInspectionServer_listener_shouldAcceptNewConnection___block_invoke_25(uint64_t a1)
{
  v1 = __atxlog_handle_default(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    __59___ATXInspectionServer_listener_shouldAcceptNewConnection___block_invoke_25_cold_1();
  }
}

uint64_t __69___ATXInspectionServer__filterAndSortAppIntentEventsWithUUID_events___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 action];
  v4 = [v3 actionUUID];
  v5 = [v4 isEqual:*(a1 + 32)];

  return v5;
}

uint64_t __69___ATXInspectionServer__filterAndSortAppIntentEventsWithUUID_events___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 endDate];
  v6 = [v4 endDate];

  v7 = [v5 compare:v6];
  return v7;
}

uint64_t __55___ATXInspectionServer_appHistoryActionWithUUID_reply___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;

  v7 = [v4 description];
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  if ((ATXDetailedActionLoggingEnabled() & 1) == 0)
  {
    v10 = [*(*(*(a1 + 40) + 8) + 40) mutableCopy];
    v11 = [v4 actionTitle];
    [v10 appendFormat:@"actionTitle: %@\n", v11];

    v12 = [v4 actionSubtitle];
    [v10 appendFormat:@"actionSubtitle: %@\n", v12];

    v13 = [v4 actionDescription];
    [v10 appendFormat:@"actionDescription: %@\n", v13];

    v14 = [v10 copy];
    v15 = *(*(a1 + 40) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;
  }

  return 0;
}

void __99___ATXInspectionServer_appIntentHistoryDonateINIntent_intentType_startDate_endDate_timeZone_reply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_default(v3);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __99___ATXInspectionServer_appIntentHistoryDonateINIntent_intentType_startDate_endDate_timeZone_reply___block_invoke_cold_1(v3, v5);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "Successfully donated INIntent!", v6, 2u);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void __48___ATXInspectionServer_createAppPredictionLogs___block_invoke(uint64_t a1)
{
  v2 = __atxlog_handle_default(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __48___ATXInspectionServer_createAppPredictionLogs___block_invoke_cold_1();
  }

  dispatch_group_leave(*(a1 + 32));
}

uint64_t __48___ATXInspectionServer_createAppPredictionLogs___block_invoke_134(uint64_t a1)
{
  v2 = __atxlog_handle_default(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2263AA000, v2, OS_LOG_TYPE_DEFAULT, "Successfully generated app prediction logs", v4, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

void __48___ATXInspectionServer_createAppPredictionLogs___block_invoke_135(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = MEMORY[0x277CCA9B8];
  v3 = *MEMORY[0x277CCA050];
  v6 = *MEMORY[0x277CCA450];
  v7[0] = @"Requesting app prediction logs timed out";
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v5 = [v2 errorWithDomain:v3 code:666 userInfo:v4];
  (*(v1 + 16))(v1, v5);
}

uint64_t __51___ATXInspectionServer__getActionLogs_obfuscation___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, void *a7, void *a8, double a9, uint64_t a10, void *a11, void *a12, uint64_t a13, uint64_t a14)
{
  v75[1] = *MEMORY[0x277D85DE8];
  v22 = a2;
  v23 = a3;
  v67 = a4;
  v66 = a7;
  v65 = a8;
  v64 = a11;
  v62 = v22;
  v63 = a12;
  v72[0] = @"action";
  v61 = a1;
  v58 = a6;
  if (*(a1 + 48) == 1)
  {
    [v22 obfuscatedJsonWithMapping:*(a1 + 32)];
  }

  else
  {
    [v22 json];
  }
  v60 = ;
  v73[0] = v60;
  v72[1] = @"slotSets";
  v24 = v23;
  v25 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"self" ascending:1];
  v75[0] = v25;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v75 count:1];

  v27 = objc_opt_new();
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v28 = v24;
  v29 = [v28 countByEnumeratingWithState:&v68 objects:v74 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v69;
    do
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v69 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = [*(*(&v68 + 1) + 8 * i) parameters];
        v34 = [v33 sortedArrayUsingDescriptors:v26];
        if (v34)
        {
          [v27 addObject:v34];
        }

        else
        {
          v35 = [MEMORY[0x277CBEB68] null];
          [v27 addObject:v35];
        }
      }

      v30 = [v28 countByEnumeratingWithState:&v68 objects:v74 count:16];
    }

    while (v30);
  }

  v36 = [v27 copy];
  v57 = v36;
  v73[1] = v36;
  v72[2] = @"date";
  v37 = MEMORY[0x277CCABB0];
  [v67 timeIntervalSinceReferenceDate];
  v55 = [v37 numberWithDouble:?];
  v73[2] = v55;
  v72[3] = @"timeOfDay";
  v56 = [MEMORY[0x277CCABB0] numberWithInteger:a5];
  v73[3] = v56;
  v72[4] = @"dayOfWeek";
  v59 = [MEMORY[0x277CCABB0] numberWithInteger:v58];
  v73[4] = v59;
  v72[5] = @"prevLocationUUID";
  if (v66)
  {
    v38 = [v66 UUIDString];
  }

  else
  {
    v38 = @"No previous location";
  }

  v54 = v38;
  v73[5] = v38;
  v72[6] = @"locationUUID";
  if (v65)
  {
    v39 = [v65 UUIDString];
  }

  else
  {
    v39 = @"No location";
  }

  v73[6] = v39;
  v72[7] = @"motionType";
  v40 = [MEMORY[0x277D41C30] getMotionStringFromMotionType:{a10, v39}];
  v73[7] = v40;
  v72[8] = @"appSessionStartDate";
  if (v64)
  {
    v41 = MEMORY[0x277CCABB0];
    [v64 timeIntervalSinceReferenceDate];
    v42 = [v41 numberWithDouble:?];
  }

  else
  {
    v42 = @"No app session start date";
  }

  v73[8] = v42;
  v72[9] = @"appSessionEndDate";
  if (v63)
  {
    v43 = MEMORY[0x277CCABB0];
    [v63 timeIntervalSinceReferenceDate];
    v44 = [v43 numberWithDouble:?];
  }

  else
  {
    v44 = @"No app session end date";
  }

  v73[9] = v44;
  v72[10] = @"weight";
  v45 = [MEMORY[0x277CCABB0] numberWithDouble:a9];
  v73[10] = v45;
  v72[11] = @"geohash";
  v46 = [MEMORY[0x277CCABB0] numberWithLongLong:a13];
  v73[11] = v46;
  v72[12] = @"coarseGeohash";
  v47 = [MEMORY[0x277CCABB0] numberWithLongLong:a14];
  v73[12] = v47;
  v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v73 forKeys:v72 count:13];
  v49 = [v48 mutableCopy];

  v50 = v63;
  if (v63)
  {
  }

  if (v64)
  {
  }

  if (v65)
  {
  }

  if (v66)
  {
  }

  if ([v62 actionType] == 1 && (*(v61 + 48) & 1) == 0)
  {
    v51 = [v62 userActivityString];
    [v49 setObject:v51 forKeyedSubscript:@"userActivityString"];

    v50 = v63;
  }

  [*(v61 + 40) addObject:v49];

  return 1;
}

uint64_t __51___ATXInspectionServer__getActionLogs_obfuscation___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10)
{
  v44[1] = *MEMORY[0x277D85DE8];
  v18 = a4;
  v19 = a2;
  v20 = [a3 parameters];
  v21 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"self" ascending:1];
  v44[0] = v21;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:1];
  v23 = [v20 sortedArrayUsingDescriptors:v22];

  v42[0] = @"action";
  if (*(a1 + 48) == 1)
  {
    [v19 obfuscatedJsonWithMapping:*(a1 + 32)];
  }

  else
  {
    [v19 json];
  }
  v24 = ;
  v41 = a1;

  v38 = v24;
  v43[0] = v24;
  v42[1] = @"slotSet";
  v25 = v23;
  if (!v23)
  {
    v25 = [MEMORY[0x277CBEB68] null];
  }

  v43[1] = v25;
  v42[2] = @"confirms";
  v26 = [MEMORY[0x277CCABB0] numberWithDouble:{a9, v38}];
  v43[2] = v26;
  v42[3] = @"rejects";
  v27 = [MEMORY[0x277CCABB0] numberWithDouble:a10];
  v43[3] = v27;
  v42[4] = @"geohash";
  v28 = [MEMORY[0x277CCABB0] numberWithLongLong:a7];
  v43[4] = v28;
  v42[5] = @"coarseGeohash";
  v29 = [MEMORY[0x277CCABB0] numberWithLongLong:a8];
  v43[5] = v29;
  v42[6] = @"feedbackType";
  v30 = [MEMORY[0x277CEB2E8] actionFeedbackTypeToString:a6];
  v43[6] = v30;
  v42[7] = @"date";
  v31 = MEMORY[0x277CCABB0];
  [v18 timeIntervalSince1970];
  v33 = v32;

  v34 = [v31 numberWithDouble:v33];
  v43[7] = v34;
  v42[8] = @"consumerSubType";
  v35 = [MEMORY[0x277CEBCF0] stringForConsumerSubtype:a5];
  v43[8] = v35;
  v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:9];

  if (!v23)
  {
  }

  [*(v41 + 40) addObject:v36];
  return 1;
}

void __43___ATXInspectionServer_histogramsInMemory___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [_ATXDataStore stringForHistogramType:a2];
  [v2 addObject:v3];
}

void __43___ATXInspectionServer_histogramsInMemory___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [_ATXDataStore stringForHistogramType:a2];
  [v2 addObject:v3];
}

void __49___ATXInspectionServer_histogramsInMemoryBySize___block_invoke(uint64_t a1, uint64_t a2)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = [*(a1 + 32) histogramDataForHistogramType:a2];
  if (v4)
  {
    v5 = [_ATXDataStore stringForHistogramType:a2];
    v6 = *(a1 + 40);
    v9 = v5;
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "length")}];
    v10[0] = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    [v6 addObject:v8];
  }
}

void __49___ATXInspectionServer_histogramsInMemoryBySize___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = [*(a1 + 32) categoricalHistogramDataForHistogramType:a2];
  if (v4)
  {
    v5 = [_ATXDataStore stringForHistogramType:a2];
    v6 = *(a1 + 40);
    v9 = v5;
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "length")}];
    v10[0] = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    [v6 addObject:v8];
  }
}

uint64_t __49___ATXInspectionServer_histogramsInMemoryBySize___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 allValues];
  v6 = [v5 firstObject];
  v7 = [v4 allValues];

  v8 = [v7 firstObject];
  v9 = [v6 compare:v8];

  return v9;
}

id __49___ATXInspectionServer_histogramsInMemoryBySize___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v3 allKeys];
  v6 = [v5 firstObject];
  v7 = [v3 allValues];

  v8 = [v7 firstObject];
  v9 = [v4 initWithFormat:@"%@:%@", v6, v8];

  return v9;
}

uint64_t __44___ATXInspectionServer_allHistogramsBySize___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 allValues];
  v6 = [v5 firstObject];
  v7 = [v4 allValues];

  v8 = [v7 firstObject];
  v9 = [v6 compare:v8];

  return v9;
}

id __44___ATXInspectionServer_allHistogramsBySize___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v3 allKeys];
  v6 = [v5 firstObject];
  v7 = [v3 allValues];

  v8 = [v7 firstObject];
  v9 = [v4 initWithFormat:@"%@:%@", v6, v8];

  return v9;
}

uint64_t __63___ATXInspectionServer_triggerPredictionsUpdateWithCompletion___block_invoke(uint64_t a1)
{
  v2 = +[ATXUpdatePredictionsManager sharedInstance];
  [v2 updateBehavioralPredictionsIfOlderThan:22 reason:0.0];

  v3 = *(*(a1 + 32) + 16);

  return v3();
}

void __99___ATXInspectionServer_appIntentHistoryDonateINIntent_intentType_startDate_endDate_timeZone_reply___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "ERROR: %@", &v2, 0xCu);
}

@end