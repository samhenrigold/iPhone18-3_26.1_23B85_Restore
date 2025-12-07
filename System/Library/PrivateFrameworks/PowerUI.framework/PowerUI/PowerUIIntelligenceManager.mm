@interface PowerUIIntelligenceManager
- (PowerUIIntelligenceManager)initWithDefaultsDomain:(id)domain withContextStore:(id)store withTrialManager:(id)manager;
- (id)queryPredictedPlugoutDate;
- (id)ttrURLforBadPredictionsWithStateDictionary:(id)dictionary;
- (void)handleCallback;
- (void)postAnalyticsEventForNewEventTypeWithPredictedDurationMinutes:(int64_t)minutes andActualDurationMinutes:(int64_t)durationMinutes andConfidence:(double)confidence didMeetThreshold:(int)threshold andWasWireless:(BOOL)wireless andPredictionScheme:(id)scheme;
- (void)postPluginNotificationWithPredictorOutput:(id)output andError:(id)error andState:(id)state;
- (void)removePluginNotification;
@end

@implementation PowerUIIntelligenceManager

- (PowerUIIntelligenceManager)initWithDefaultsDomain:(id)domain withContextStore:(id)store withTrialManager:(id)manager
{
  domainCopy = domain;
  storeCopy = store;
  managerCopy = manager;
  v21.receiver = self;
  v21.super_class = PowerUIIntelligenceManager;
  v12 = [(PowerUIIntelligenceManager *)&v21 init];
  if (v12)
  {
    v13 = os_log_create("com.apple.powerui.smartcharging.intelligence", "manager");
    log = v12->_log;
    v12->_log = v13;

    objc_storeStrong(&v12->_context, store);
    objc_storeStrong(&v12->_trialManager, manager);
    predictor = [MEMORY[0x277D36CD0] predictor];
    chargingPredictor = v12->_chargingPredictor;
    v12->_chargingPredictor = predictor;

    objc_storeStrong(&v12->_defaultsDomain, domain);
    lastPluginPredictionInfo = v12->_lastPluginPredictionInfo;
    v12->_lastPluginPredictionInfo = 0;

    v18 = v12->_log;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 0;
      _os_log_impl(&dword_21B766000, v18, OS_LOG_TYPE_DEFAULT, "Init powerui intelligence manager", v20, 2u);
    }
  }

  return v12;
}

- (id)queryPredictedPlugoutDate
{
  v2 = objc_opt_new();

  return v2;
}

- (void)handleCallback
{
  v117[3] = *MEMORY[0x277D85DE8];
  context = [(PowerUIIntelligenceManager *)self context];
  keyPathForBatteryStateDataDictionary = [MEMORY[0x277CFE338] keyPathForBatteryStateDataDictionary];
  v5 = [context objectForKeyedSubscript:keyPathForBatteryStateDataDictionary];

  if (v5)
  {
    context2 = [(PowerUIIntelligenceManager *)self context];
    v7 = [PowerUISmartChargeUtilities isPluggedInWithContext:context2];

    if (+[PowerUISmartChargeUtilities isiPhone](PowerUISmartChargeUtilities, "isiPhone") && +[PowerUISmartChargeUtilities isInternalBuild])
    {
      v8 = [PowerUISmartChargeUtilities numberForPreferenceKey:@"chargingIntelligenceNotificationEnabled" inDomain:self->_defaultsDomain];
      bOOLValue = [v8 BOOLValue];
    }

    else
    {
      bOOLValue = 0;
    }

    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      *v108 = v7;
      *&v108[4] = 1024;
      *&v108[6] = bOOLValue;
      _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Handling callback in intelligence manager isPluggedIn: %d, notificationsEnabled: %d", buf, 0xEu);
    }

    if (v7)
    {
      chargingPredictor = self->_chargingPredictor;
      v106 = 0;
      v12 = [(_OSChargingPredictor *)chargingPredictor chargePredictionOutputOfScheme:1 withError:&v106];
      v13 = v106;
      v14 = self->_chargingPredictor;
      v105 = v13;
      v101 = [(_OSChargingPredictor *)v14 chargePredictionOutputOfScheme:0 withError:&v105];
      v15 = v105;

      v16 = self->_chargingPredictor;
      v104 = 0;
      v17 = [(_OSChargingPredictor *)v16 chargePredictionOutputOfScheme:6 withError:&v104];
      v102 = v104;
      v18 = self->_log;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *v108 = v102;
        _os_log_impl(&dword_21B766000, v18, OS_LOG_TYPE_INFO, "draError: %@", buf, 0xCu);
      }

      if (bOOLValue)
      {
        [(PowerUIIntelligenceManager *)self postPluginNotificationWithPredictorOutput:v17 andError:v15 andState:v5];
      }

      v99 = v5;
      v100 = v15;
      v96 = +[PowerUISmartChargeUtilities lastPluggedInDate];
      v116[0] = @"predictedDurationSeconds";
      v19 = MEMORY[0x277CCABB0];
      [v101 chargingDuration];
      v20 = [v19 numberWithDouble:?];
      v117[0] = v20;
      v116[1] = @"confidence";
      v21 = MEMORY[0x277CCABB0];
      [v101 confidence];
      v22 = [v21 numberWithDouble:?];
      v117[1] = v22;
      v116[2] = @"meetsThreshold";
      v23 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v101, "meetsSystemConfidenceThreshold")}];
      v117[2] = v23;
      v94 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v117 forKeys:v116 count:3];

      v114[0] = @"predictedDurationSeconds";
      v24 = MEMORY[0x277CCABB0];
      [v12 chargingDuration];
      v25 = [v24 numberWithDouble:?];
      v115[0] = v25;
      v114[1] = @"confidence";
      v26 = MEMORY[0x277CCABB0];
      [v12 confidence];
      v27 = [v26 numberWithDouble:?];
      v115[1] = v27;
      v114[2] = @"meetsThreshold";
      v98 = v12;
      v28 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v12, "meetsSystemConfidenceThreshold")}];
      v115[2] = v28;
      v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v115 forKeys:v114 count:3];

      v112[0] = @"predictedDurationSeconds";
      v30 = MEMORY[0x277CCABB0];
      [v17 chargingDuration];
      v31 = [v30 numberWithDouble:?];
      v113[0] = v31;
      v112[1] = @"confidence";
      v32 = MEMORY[0x277CCABB0];
      [v17 confidence];
      v33 = [v32 numberWithDouble:?];
      v113[1] = v33;
      v112[2] = @"engagementDecision";
      v97 = v17;
      v34 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v17, "meetsSystemConfidenceThreshold")}];
      v35 = v34;
      v36 = MEMORY[0x277CBEC38];
      if (!v102)
      {
        v36 = MEMORY[0x277CBEC28];
      }

      v113[2] = v34;
      v113[3] = v36;
      v112[3] = @"returnedError";
      v112[4] = @"isWireless";
      v37 = MEMORY[0x277CCABB0];
      context3 = [(PowerUIIntelligenceManager *)self context];
      v39 = [v37 numberWithBool:{+[PowerUISmartChargeUtilities deviceConnectedToWirelessChargerWithContext:](PowerUISmartChargeUtilities, "deviceConnectedToWirelessChargerWithContext:", context3)}];
      v113[4] = v39;
      v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v113 forKeys:v112 count:5];

      v110[0] = @"classicPredictionInfo";
      v110[1] = @"onPluginPredictionInfo";
      v111[0] = v95;
      v111[1] = v29;
      v110[2] = @"draPredictionInfo";
      v110[3] = @"pluginDate";
      v111[2] = v40;
      v111[3] = v96;
      v110[4] = @"isWireless";
      v41 = MEMORY[0x277CCABB0];
      context4 = [(PowerUIIntelligenceManager *)self context];
      v43 = [v41 numberWithBool:{+[PowerUISmartChargeUtilities deviceConnectedToWirelessChargerWithContext:](PowerUISmartChargeUtilities, "deviceConnectedToWirelessChargerWithContext:", context4)}];
      v111[4] = v43;
      v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v111 forKeys:v110 count:5];

      objc_storeStrong(&self->_lastPluginPredictionInfo, v44);
      [PowerUISmartChargeUtilities setDict:v44 forPreferenceKey:@"intelligence-manager-predictions" inDomain:self->_defaultsDomain];
      v45 = self->_log;
      if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *v108 = v44;
        _os_log_impl(&dword_21B766000, v45, OS_LOG_TYPE_INFO, "Wrote prediction information %@ to defaults", buf, 0xCu);
      }

LABEL_18:
      v46 = v98;
      v5 = v99;
      v47 = v100;
LABEL_31:

      goto LABEL_32;
    }

    [(PowerUIIntelligenceManager *)self removePluginNotification];
    lastPluginPredictionInfo = self->_lastPluginPredictionInfo;
    if (lastPluginPredictionInfo)
    {
      v47 = lastPluginPredictionInfo;
      [(NSDictionary *)self->_lastPluginPredictionInfo objectForKeyedSubscript:@"pluginDate"];
    }

    else
    {
      v47 = [PowerUISmartChargeUtilities readDictForPreferenceKey:@"intelligence-manager-predictions" inDomain:self->_defaultsDomain];
      +[PowerUISmartChargeUtilities lastPluggedInDate];
    }
    v46 = ;
    [PowerUISmartChargeUtilities setDict:MEMORY[0x277CBEC10] forPreferenceKey:@"intelligence-manager-predictions" inDomain:self->_defaultsDomain];
    v49 = self->_lastPluginPredictionInfo;
    self->_lastPluginPredictionInfo = 0;

    if (v47 && [(NSDictionary *)v47 count]&& v46)
    {
      v50 = [(NSDictionary *)v47 objectForKeyedSubscript:@"pluginDate"];
      [v46 timeIntervalSinceDate:v50];
      v52 = fabs(v51);

      if (v52 <= 300.0)
      {
        v58 = [(NSDictionary *)v47 objectForKey:@"classicPredictionInfo"];
        if (v58)
        {
          v59 = v58;
          v60 = [(NSDictionary *)v47 objectForKey:@"onPluginPredictionInfo"];

          if (v60)
          {
            v61 = [MEMORY[0x277CBEAA8] now];
            [v61 timeIntervalSinceDate:v46];
            v103 = (v62 / 60.0);

            v63 = self->_log;
            if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              *v108 = v46;
              _os_log_impl(&dword_21B766000, v63, OS_LOG_TYPE_INFO, "Logging metrics for charge session started at %@", buf, 0xCu);
            }

            v99 = v5;
            v100 = v47;
            v64 = [(NSDictionary *)v47 objectForKeyedSubscript:@"classicPredictionInfo"];
            v65 = self->_log;
            if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_21B766000, v65, OS_LOG_TYPE_DEFAULT, "Posting metrics from classic predictions", buf, 2u);
            }

            v66 = [v64 objectForKeyedSubscript:@"predictedDurationSeconds"];
            v67 = [v66 integerValue] / 60;

            v68 = [v64 objectForKeyedSubscript:@"confidence"];
            [v68 doubleValue];
            v70 = v69;
            v71 = [v64 objectForKeyedSubscript:@"meetsThreshold"];
            integerValue = [v71 integerValue];
            v73 = [(NSDictionary *)v100 objectForKeyedSubscript:@"isWireless"];
            -[PowerUIIntelligenceManager postAnalyticsEventForNewEventTypeWithPredictedDurationMinutes:andActualDurationMinutes:andConfidence:didMeetThreshold:andWasWireless:andPredictionScheme:](self, "postAnalyticsEventForNewEventTypeWithPredictedDurationMinutes:andActualDurationMinutes:andConfidence:didMeetThreshold:andWasWireless:andPredictionScheme:", v67, v103, integerValue, [v73 BOOLValue], @"classic", v70);

            v74 = [(NSDictionary *)v100 objectForKeyedSubscript:@"onPluginPredictionInfo"];
            v75 = self->_log;
            if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_21B766000, v75, OS_LOG_TYPE_DEFAULT, "Posting metrics from on plugin predictions", buf, 2u);
            }

            v98 = v46;
            v76 = [v74 objectForKeyedSubscript:@"predictedDurationSeconds"];
            v77 = [v76 integerValue] / 60;

            [(PowerUIIntelligenceManager *)self postAnalyticsEventForOldEventTypeWithPredictedDurationMinutes:v77 andActualDurationMinutes:v103];
            v78 = [v74 objectForKeyedSubscript:@"confidence"];
            [v78 doubleValue];
            v80 = v79;
            v81 = [v74 objectForKeyedSubscript:@"meetsThreshold"];
            integerValue2 = [v81 integerValue];
            v83 = [(NSDictionary *)v100 objectForKeyedSubscript:@"isWireless"];
            -[PowerUIIntelligenceManager postAnalyticsEventForNewEventTypeWithPredictedDurationMinutes:andActualDurationMinutes:andConfidence:didMeetThreshold:andWasWireless:andPredictionScheme:](self, "postAnalyticsEventForNewEventTypeWithPredictedDurationMinutes:andActualDurationMinutes:andConfidence:didMeetThreshold:andWasWireless:andPredictionScheme:", v77, v103, integerValue2, [v83 BOOLValue], @"onplugin", v80);

            v84 = [(NSDictionary *)v100 objectForKeyedSubscript:@"draPredictionInfo"];
            v85 = self->_log;
            if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_21B766000, v85, OS_LOG_TYPE_DEFAULT, "Posting metrics from DRA predictions", buf, 2u);
            }

            v86 = [v84 objectForKeyedSubscript:@"predictedDurationSeconds"];
            v87 = [v86 integerValue] / 60;

            v88 = [v84 objectForKeyedSubscript:@"engagementDecision"];
            bOOLValue2 = [v88 BOOLValue];
            v90 = [v84 objectForKeyedSubscript:@"isWireless"];
            bOOLValue3 = [v90 BOOLValue];
            v92 = [v84 objectForKeyedSubscript:@"returnedError"];
            -[PowerUIIntelligenceManager postAnalyticsEventForDynamicRuntimeAllocationWithPredictedDurationMinutes:andActualDurationMinutes:andEngagementDecision:andWasWireless:andSPIError:](self, "postAnalyticsEventForDynamicRuntimeAllocationWithPredictedDurationMinutes:andActualDurationMinutes:andEngagementDecision:andWasWireless:andSPIError:", v87, v103, bOOLValue2, bOOLValue3, [v92 BOOLValue]);

            goto LABEL_18;
          }
        }

        v93 = self->_log;
        if (!os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_31;
        }

        *buf = 138412290;
        *v108 = v47;
        v54 = "Corrupted saved prediction doesn't contain classic/plugin prediction info %@";
        v55 = v93;
        v56 = 12;
      }

      else
      {
        v53 = self->_log;
        if (!os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_31;
        }

        *buf = 138412546;
        *v108 = v47;
        *&v108[8] = 2112;
        v109 = v46;
        v54 = "Can't retrieve information on plugin that matches the saved prediction, \n saved info: %@ \n biome info %@";
        v55 = v53;
        v56 = 22;
      }
    }

    else
    {
      v57 = self->_log;
      if (!os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_31;
      }

      *buf = 0;
      v54 = "Prediction for previous plugin not found";
      v55 = v57;
      v56 = 2;
    }

    _os_log_impl(&dword_21B766000, v55, OS_LOG_TYPE_DEFAULT, v54, buf, v56);
    goto LABEL_31;
  }

LABEL_32:
}

id __117__PowerUIIntelligenceManager_postAnalyticsEventForOldEventTypeWithPredictedDurationMinutes_andActualDurationMinutes___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  *&v3 = *(a1 + 40) / 60.0;
  v4 = [MEMORY[0x277CCABB0] numberWithFloat:v3];
  [v2 setObject:v4 forKeyedSubscript:@"actualDuration"];

  *&v5 = *(a1 + 48) / 60.0;
  v6 = [MEMORY[0x277CCABB0] numberWithFloat:v5];
  [v2 setObject:v6 forKeyedSubscript:@"predictedDuration"];

  *&v7 = (*(a1 + 48) - *(a1 + 40)) / 60.0;
  v8 = [MEMORY[0x277CCABB0] numberWithFloat:v7];
  [v2 setObject:v8 forKeyedSubscript:@"durationDelta"];

  v9 = [*(a1 + 32) log];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = v2;
    v13 = 2112;
    v14 = @"com.apple.smartcharging.plugoutpredictions";
    _os_log_impl(&dword_21B766000, v9, OS_LOG_TYPE_DEFAULT, "Logged %@ to %@ event in CA", &v11, 0x16u);
  }

  return v2;
}

- (void)postAnalyticsEventForNewEventTypeWithPredictedDurationMinutes:(int64_t)minutes andActualDurationMinutes:(int64_t)durationMinutes andConfidence:(double)confidence didMeetThreshold:(int)threshold andWasWireless:(BOOL)wireless andPredictionScheme:(id)scheme
{
  schemeCopy = scheme;
  v8 = schemeCopy;
  AnalyticsSendEventLazy();
}

id __183__PowerUIIntelligenceManager_postAnalyticsEventForNewEventTypeWithPredictedDurationMinutes_andActualDurationMinutes_andConfidence_didMeetThreshold_andWasWireless_andPredictionScheme___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v3 = [MEMORY[0x277CCABB0] numberWithInt:(30 * (*(a1 + 48) / 30))];
  [v2 setObject:v3 forKeyedSubscript:@"actualDuration"];

  v4 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 48)];
  [v2 setObject:v4 forKeyedSubscript:@"actualDurationTrueValue"];

  v5 = [MEMORY[0x277CCABB0] numberWithInt:(30 * (*(a1 + 56) / 30))];
  [v2 setObject:v5 forKeyedSubscript:@"predictedDuration"];

  v6 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 56)];
  [v2 setObject:v6 forKeyedSubscript:@"predictedDurationTrueValue"];

  v7 = *(a1 + 56) - *(a1 + 48);
  v8 = [MEMORY[0x277CCABB0] numberWithInt:(15 * (v7 / 15))];
  [v2 setObject:v8 forKeyedSubscript:@"durationDelta"];

  v9 = [MEMORY[0x277CCABB0] numberWithInt:v7];
  [v2 setObject:v9 forKeyedSubscript:@"durationDeltaTrueValue"];

  LODWORD(v10) = vcvtmd_s64_f64(*(a1 + 64) * 10.0);
  v11 = [MEMORY[0x277CCABB0] numberWithInt:v10];
  [v2 setObject:v11 forKeyedSubscript:@"confidenceTrueValue"];

  LODWORD(v12) = vcvtmd_s64_f64(*(a1 + 64) * 10.0);
  v13 = [MEMORY[0x277CCABB0] numberWithInt:v12];
  [v2 setObject:v13 forKeyedSubscript:@"confidence"];

  v14 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 72)];
  [v2 setObject:v14 forKeyedSubscript:@"meetsThreshold"];

  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"obc-v1-isWireless=%d-%@", *(a1 + 76), *(a1 + 32)];
  [v2 setObject:v15 forKeyedSubscript:@"modelInfo"];

  v16 = [*(a1 + 40) log];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v19 = v2;
    v20 = 2112;
    v21 = @"com.apple.smartcharging.plugoutpredictions.discrete.v2";
    _os_log_impl(&dword_21B766000, v16, OS_LOG_TYPE_DEFAULT, "Logged %@ to %@ event in CA", buf, 0x16u);
  }

  return v2;
}

id __178__PowerUIIntelligenceManager_postAnalyticsEventForDynamicRuntimeAllocationWithPredictedDurationMinutes_andActualDurationMinutes_andEngagementDecision_andWasWireless_andSPIError___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v3 = [MEMORY[0x277CCABB0] numberWithLong:*(a1 + 40)];
  [v2 setObject:v3 forKeyedSubscript:@"actualDuration"];

  v4 = [MEMORY[0x277CCABB0] numberWithLong:*(a1 + 48)];
  [v2 setObject:v4 forKeyedSubscript:@"predictedDuration"];

  v5 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 56)];
  [v2 setObject:v5 forKeyedSubscript:@"engagementDecision"];

  v6 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 57)];
  [v2 setObject:v6 forKeyedSubscript:@"queryReturnedError"];

  v8 = *(a1 + 40);
  v7 = *(a1 + 48);
  v9 = [MEMORY[0x277CCABB0] numberWithBool:v7 > v8];
  [v2 setObject:v9 forKeyedSubscript:@"overpredicted"];

  v10 = *(a1 + 40);
  if (v7 <= v8)
  {
    v11 = 0;
    if (v10 < 1)
    {
      v12 = 0.0;
    }

    else
    {
      v12 = *(a1 + 48) / v10;
    }
  }

  else
  {
    v11 = v10 * 1.5 > *(a1 + 48);
    v12 = 1.0;
  }

  v13 = [MEMORY[0x277CCABB0] numberWithBool:v11];
  [v2 setObject:v13 forKeyedSubscript:@"withinFiftyPercent"];

  *&v14 = v12;
  v15 = [MEMORY[0x277CCABB0] numberWithFloat:v14];
  [v2 setObject:v15 forKeyedSubscript:@"utilization"];

  v16 = [*(a1 + 32) log];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412546;
    v19 = v2;
    v20 = 2112;
    v21 = @"com.apple.smartcharging.plugoutpredictions.dra";
    _os_log_impl(&dword_21B766000, v16, OS_LOG_TYPE_DEFAULT, "Logged %@ to %@ event in CA", &v18, 0x16u);
  }

  return v2;
}

- (void)postPluginNotificationWithPredictorOutput:(id)output andError:(id)error andState:(id)state
{
  v26 = *MEMORY[0x277D85DE8];
  outputCopy = output;
  errorCopy = error;
  stateCopy = state;
  if (+[PowerUISmartChargeUtilities isInternalBuild])
  {
    if ([errorCopy code] == 3)
    {
      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v24) = 0;
        v12 = "Plugin Notification error: Not enough history, do not post";
LABEL_12:
        _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, v12, &v24, 2u);
      }
    }

    else
    {
      if (errorCopy)
      {
        v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"Prediction failed, please file a radar by tapping the notification"];
        v14 = self->_log;
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = v14;
          localizedDescription = [errorCopy localizedDescription];
          v24 = 138412290;
          v25 = localizedDescription;
          _os_log_impl(&dword_21B766000, v15, OS_LOG_TYPE_DEFAULT, "Error querying the predictor %@", &v24, 0xCu);
        }

        v17 = +[PowerUINotificationManager sharedInstance];
        v18 = [(PowerUIIntelligenceManager *)self ttrURLforBadPredictionsWithStateDictionary:stateCopy];
        v19 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:30.0];
        v20 = [v17 postInternalChargingIntelligenceNotificationWithChargingStatus:1 information:v13 url:v18 validUntil:v19];
      }

      else
      {
        v13 = +[PowerUINotificationManager sharedInstance];
        [outputCopy chargingDuration];
        v22 = v21;
        [outputCopy confidence];
        [v13 postInternalChargeDurationNotificationWithDuration:v22 withConfidence:v23];
      }

      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v24) = 0;
        v12 = "Posted plugin notification ";
        goto LABEL_12;
      }
    }
  }
}

- (void)removePluginNotification
{
  if (+[PowerUISmartChargeUtilities isInternalBuild])
  {
    v3 = +[PowerUINotificationManager sharedInstance];
    [v3 cancelNotificationRequestWithIdentifier:@"charging-intelligence-notification"];

    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Removed plugin notification", v5, 2u);
    }
  }
}

- (id)ttrURLforBadPredictionsWithStateDictionary:(id)dictionary
{
  v19 = *MEMORY[0x277D85DE8];
  context = self->_context;
  dictionaryCopy = dictionary;
  v6 = [PowerUISmartChargeUtilities currentBatteryLevelWithContext:context];
  v7 = MEMORY[0x277CCACA8];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:v6];
  v9 = [MEMORY[0x277CBEAA8] now];
  v10 = [PowerUISmartChargeUtilities timeStringFromDate:v9];
  dictionaryCopy = [v7 stringWithFormat:@"tap-to-radar://new?Title=Duration Predictor Failure (Unplugged at %@ percent)&Classification=Serious Bug&ComponentID=971083&ComponentName=PowerUI&ComponentVersion=all&Reproducible=Sometimes&Description=PLEASE ANSWER THESE QUESTIONS TO AID DEBUGGING:\n\n* Why did you unplug your device at %@?\n* Do you usually leave your device charged for a while at this time?\n* Is this your regular carry device? \n\n\n DebugInfo:\n %@", v8, v10, dictionaryCopy];

  uRLQueryAllowedCharacterSet = [MEMORY[0x277CCA900] URLQueryAllowedCharacterSet];
  v13 = [dictionaryCopy stringByAddingPercentEncodingWithAllowedCharacters:uRLQueryAllowedCharacterSet];

  v14 = [MEMORY[0x277CBEBC0] URLWithString:v13];
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = v14;
    _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "TTR URL is %@", buf, 0xCu);
  }

  return v14;
}

@end