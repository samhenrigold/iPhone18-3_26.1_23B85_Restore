@interface ATXActionSessionLog
+ (BOOL)isLowConfidenceSession:(id)session;
+ (BOOL)isSessionNotUsefulForTraining:(int)training actionResponse:(id)response;
+ (BOOL)isSessionWithoutEngagement:(int)engagement;
+ (double)_bucketize:(double)result bucketSize:(double)size;
+ (double)roundedElapsedTimeWithStartDate:(id)date endDate:(id)endDate accuracy:(double)accuracy;
+ (unint64_t)_determineNumItemsInSession:(id)session engagedAction:(id)action cacheReader:(id)reader;
+ (void)harvestActionPredictionDataForResponse:(id)response;
+ (void)performSessionLoggingWithActionResponse:(id)response engagementType:(unint64_t)type context:(id)context isShadowLog:(BOOL)log forTestingMode:(BOOL)mode;
- (ATXActionSessionLog)initWithActionEngagementType:(unint64_t)type actionResponse:(id)response context:(id)context isShadowLog:(BOOL)log;
- (id)constructActionDataDictionaryWithEngagedIndicesOut:(id *)out andAWDActionOut:(id *)actionOut andEngagementTypeFound:(unint64_t *)found forTestingMode:(BOOL)mode;
- (id)constructSessionLogDictionaryWithAWDSessionOut:(id *)out forTestingMode:(BOOL)mode;
- (void)performSessionLogging:(BOOL)logging;
@end

@implementation ATXActionSessionLog

- (ATXActionSessionLog)initWithActionEngagementType:(unint64_t)type actionResponse:(id)response context:(id)context isShadowLog:(BOOL)log
{
  responseCopy = response;
  contextCopy = context;
  v16.receiver = self;
  v16.super_class = ATXActionSessionLog;
  v13 = [(ATXActionSessionLog *)&v16 init];
  v14 = v13;
  if (v13)
  {
    v13->_engagementType = type;
    objc_storeStrong(&v13->_actionResponse, response);
    objc_storeStrong(&v14->_context, context);
    v14->_isShadowLog = log;
  }

  return v14;
}

+ (void)performSessionLoggingWithActionResponse:(id)response engagementType:(unint64_t)type context:(id)context isShadowLog:(BOOL)log forTestingMode:(BOOL)mode
{
  modeCopy = mode;
  logCopy = log;
  responseCopy = response;
  contextCopy = context;
  v12 = [[ATXActionSessionLog alloc] initWithActionEngagementType:type actionResponse:responseCopy context:contextCopy isShadowLog:logCopy];
  [(ATXActionSessionLog *)v12 performSessionLogging:modeCopy];
}

- (void)performSessionLogging:(BOOL)logging
{
  loggingCopy = logging;
  v99 = *MEMORY[0x277D85DE8];
  if (![(ATXPredictionContext *)self->_context isOverridden])
  {
    v5 = 1.0;
    if (!self->_isShadowLog)
    {
      isInternalBuild = [MEMORY[0x277D42590] isInternalBuild];
      v7 = +[_ATXGlobals sharedInstance];
      v8 = v7;
      if (isInternalBuild)
      {
        [v7 actionPredictionInternalBuildSessionLogSamplingRate];
      }

      else
      {
        [v7 actionPredictionSessionLogSamplingRate];
      }

      v5 = v9;
    }

    if ([_ATXAggregateLogger yesWithProbability:v5])
    {
      sel_getName(a2);
      v61 = os_transaction_create();
      v82 = objc_opt_new();
      v10 = [(ATXActionSessionLog *)self constructSessionLogDictionaryWithAWDSessionOut:&v82 forTestingMode:loggingCopy];
      v11 = [objc_opt_class() isSessionNotUsefulForTraining:objc_msgSend(v82 actionResponse:{"engagementType"), self->_actionResponse}];
      if (v11)
      {
        v12 = __atxlog_handle_feedback(v11);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = objc_opt_class();
          v14 = NSStringFromClass(v13);
          *buf = 138412290;
          v84 = v14;
          _os_log_impl(&dword_2263AA000, v12, OS_LOG_TYPE_DEFAULT, "%@ - the session does not have engagement, is low confidence, and is not a lockscreen session. Skipping session logging.", buf, 0xCu);
        }
      }

      else
      {
        v15 = objc_alloc_init(MEMORY[0x277CCAD78]);
        uUIDString = [v15 UUIDString];

        [v82 setSessionId:uUIDString];
        v16 = objc_opt_new();
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 3221225472;
        aBlock[2] = __45__ATXActionSessionLog_performSessionLogging___block_invoke;
        aBlock[3] = &unk_278597170;
        v64 = uUIDString;
        v79 = v64;
        v68 = v16;
        v80 = v68;
        selfCopy = self;
        v69 = _Block_copy(aBlock);
        engagementType = [v82 engagementType];
        v76 = 0u;
        v77 = 0u;
        v74 = 0u;
        v75 = 0u;
        actionDatas = [v82 actionDatas];
        v19 = [actionDatas countByEnumeratingWithState:&v74 objects:v98 count:16];
        if (v19)
        {
          v66 = 0;
          v20 = *v75;
          do
          {
            v21 = 0;
            do
            {
              if (*v75 != v20)
              {
                objc_enumerationMutation(actionDatas);
              }

              v22 = *(*(&v74 + 1) + 8 * v21);
              if (([v22 shown] & 1) != 0 || (objc_msgSend(v22, "engaged"), v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v23, "isEqualToString:", @"Complete"), v23, v24))
              {
                v69[2](v69, v22);
              }

              else if (engagementType == 8 || engagementType == 3)
              {
                engaged = [v22 engaged];
                v26 = [engaged isEqualToString:@"Partial"];

                if (!(v66 & 1 | ((v26 & 1) == 0)))
                {
                  v69[2](v69, v22);
                  v66 = 1;
                }
              }

              ++v21;
            }

            while (v19 != v21);
            v27 = [actionDatas countByEnumeratingWithState:&v74 objects:v98 count:16];
            v19 = v27;
          }

          while (v27);
        }

        v28 = +[_ATXGlobals sharedInstance];
        maxNumberOfActionDataMetricsToLogViaAWD = [v28 maxNumberOfActionDataMetricsToLogViaAWD];

        v62 = objc_opt_new();
        for (i = 0; ; ++i)
        {
          actionDatas2 = [v82 actionDatas];
          v32 = [actionDatas2 count] > i;

          if (!v32)
          {
            break;
          }

          v33 = [MEMORY[0x277CCABB0] numberWithInt:i];
          [v62 addObject:v33];
        }

        [MEMORY[0x277CEBCF8] shuffle:v62];
        v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v34 = v71 = 0u;
        v35 = [v34 countByEnumeratingWithState:&v70 objects:v97 count:16];
        v63 = v34;
        if (v35)
        {
          v36 = maxNumberOfActionDataMetricsToLogViaAWD;
          v67 = *v71;
          do
          {
            for (j = 0; j != v35; ++j)
            {
              if (*v71 != v67)
              {
                objc_enumerationMutation(v34);
              }

              v38 = *(*(&v70 + 1) + 8 * j);
              actionDatas3 = [v82 actionDatas];
              v40 = [actionDatas3 objectAtIndexedSubscript:{objc_msgSend(v38, "intValue")}];

              v41 = [v68 count];
              if (v41 >= v36)
              {
                v42 = __atxlog_handle_feedback(v41);
                if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
                {
                  v43 = objc_opt_class();
                  v44 = NSStringFromClass(v43);
                  actionKey = [v40 actionKey];
                  engaged2 = [v40 engaged];
                  shown = [v40 shown];
                  cacheRank = [v40 cacheRank];
                  [v40 score];
                  *buf = 138413826;
                  v84 = v44;
                  v85 = 2112;
                  v86 = v64;
                  v87 = 2112;
                  v88 = actionKey;
                  v89 = 2112;
                  v90 = engaged2;
                  v91 = 1024;
                  v92 = shown;
                  v93 = 1024;
                  v94 = cacheRank;
                  v95 = 2048;
                  v96 = v49;
                  _os_log_impl(&dword_2263AA000, v42, OS_LOG_TYPE_DEFAULT, "%@ - NOT logging AWDProactiveActionData with sessionId: %@ actionKey: %@ engaged: %@ shown: %{BOOL}u cacheRank: %d score: %f", buf, 0x40u);

                  v34 = v63;
                }
              }

              else
              {
                v69[2](v69, v40);
              }
            }

            v35 = [v34 countByEnumeratingWithState:&v70 objects:v97 count:16];
          }

          while (v35);
        }

        [v82 clearActionDatas];
        v50 = [objc_opt_class() logIntentPredictionSession:v82];
        v51 = __atxlog_handle_feedback(v50);
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          v52 = objc_opt_class();
          v53 = NSStringFromClass(v52);
          sessionId = [v82 sessionId];
          consumerSubType = [v82 consumerSubType];
          if (consumerSubType >= 0x28)
          {
            v56 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", consumerSubType];
          }

          else
          {
            v56 = off_2785972A8[consumerSubType];
          }

          v57 = v56;
          engagementType2 = [v82 engagementType];
          if (engagementType2 >= 0xB)
          {
            v59 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", engagementType2];
          }

          else
          {
            v59 = off_2785973E8[engagementType2];
          }

          *buf = 138413058;
          v84 = v53;
          v85 = 2112;
          v86 = sessionId;
          v87 = 2112;
          v88 = v57;
          v89 = 2112;
          v90 = v59;
          _os_log_impl(&dword_2263AA000, v51, OS_LOG_TYPE_DEFAULT, "%@ - logged AWDProactiveAppPredictionIntentPredictionSession with sessionId: %@ consumerSubType: %@ engagementType: %@", buf, 0x2Au);
        }

        v12 = v64;
      }
    }
  }
}

void __45__ATXActionSessionLog_performSessionLogging___block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [v3 setSessionId:*(a1 + 32)];
  v4 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v3, "cacheRank")}];
  if (([*(a1 + 40) containsObject:v4] & 1) == 0)
  {
    [*(a1 + 40) addObject:v4];
    v5 = [objc_opt_class() logActionData:v3];
    v6 = __atxlog_handle_feedback(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = [v3 sessionId];
      v10 = [v3 actionKey];
      v11 = [v3 engaged];
      v12 = [v3 shown];
      v13 = [v3 cacheRank];
      [v3 score];
      v15 = 138413826;
      v16 = v8;
      v17 = 2112;
      v18 = v9;
      v19 = 2112;
      v20 = v10;
      v21 = 2112;
      v22 = v11;
      v23 = 1024;
      v24 = v12;
      v25 = 1024;
      v26 = v13;
      v27 = 2048;
      v28 = v14;
      _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_DEFAULT, "%@ - logged AWDProactiveActionData with sessionId: %@ actionKey: %@ engaged: %@ shown: %{BOOL}u cacheRank: %d score: %f", &v15, 0x40u);
    }
  }
}

+ (BOOL)isSessionNotUsefulForTraining:(int)training actionResponse:(id)response
{
  v4 = *&training;
  responseCopy = response;
  if ([self isSessionWithoutEngagement:v4] && objc_msgSend(self, "isLowConfidenceSession:", responseCopy))
  {
    v7 = [self isLockscreenSession:{objc_msgSend(responseCopy, "consumerSubType")}] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

+ (BOOL)isSessionWithoutEngagement:(int)engagement
{
  v3 = *&engagement;
  v4 = [MEMORY[0x277CBEB98] setWithObjects:{&unk_283A55220, &unk_283A55238, &unk_283A55250, 0}];
  v5 = [MEMORY[0x277CCABB0] numberWithInt:v3];
  v6 = [v4 containsObject:v5];

  return v6;
}

+ (BOOL)isLowConfidenceSession:(id)session
{
  MEMORY[0x28223BE20](self);
  v35 = *MEMORY[0x277D85DE8];
  v4 = v3;
  cacheFileData = [v4 cacheFileData];
  if (cacheFileData)
  {
    v6 = [ATXActionCacheReader alloc];
    cacheFileData2 = [v4 cacheFileData];
    v8 = [(ATXActionCacheReader *)v6 initWithData:cacheFileData2];
  }

  else
  {
    v8 = 0;
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  actions = [v4 actions];
  v10 = [actions countByEnumeratingWithState:&v27 objects:v34 count:16];
  if (v10)
  {
    v11 = *v28;
    v12.i32[1] = -1059153344;
    *v12.i32 = -31337.0;
    v22 = vdupq_lane_s32(v12, 0);
    do
    {
      v13 = 0;
      do
      {
        if (*v28 != v11)
        {
          objc_enumerationMutation(actions);
        }

        if (v8)
        {
          objc_msgSend_predictionItemForAction_(v8);
          v31[0] = 0;
          v33 = -31337.0;
          for (i = 2; i != 416; i += 2)
          {
            *&v31[i] = v22;
          }

          v15 = memcmp(v24, &v32, 0xCF0uLL);
          v16 = v31[0];
          if (!v15 && (!(v23 | v31[0]) || v23 && v31[0] && ([v23 isEqualToString:v31[0]] & 1) != 0))
          {
            v17 = v24[828] == v33;

            if (v17)
            {
              v20 = 1;
              goto LABEL_27;
            }
          }

          else
          {
          }

          if (v25 == 1)
          {
            v20 = 0;
LABEL_27:

            goto LABEL_29;
          }

          v18 = v26;

          if (v18)
          {
            v20 = 0;
            goto LABEL_29;
          }
        }

        ++v13;
      }

      while (v13 != v10);
      v19 = [actions countByEnumeratingWithState:&v27 objects:v34 count:16];
      v10 = v19;
    }

    while (v19);
  }

  v20 = 1;
LABEL_29:

  return v20;
}

+ (double)_bucketize:(double)result bucketSize:(double)size
{
  if (result >= 0.0)
  {
    return (result / size) * size;
  }

  return result;
}

+ (double)roundedElapsedTimeWithStartDate:(id)date endDate:(id)endDate accuracy:(double)accuracy
{
  dateCopy = date;
  endDateCopy = endDate;
  v9 = endDateCopy;
  v10 = NAN;
  if (dateCopy && endDateCopy)
  {
    [endDateCopy timeIntervalSinceDate:dateCopy];
    v10 = floor(v11 / accuracy) * accuracy;
  }

  return v10;
}

- (id)constructSessionLogDictionaryWithAWDSessionOut:(id *)out forTestingMode:(BOOL)mode
{
  modeCopy = mode;
  v172 = *MEMORY[0x277D85DE8];
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  timeContext = [(ATXPredictionContext *)self->_context timeContext];
  date = [timeContext date];

  v169 = 0;
  v163 = date;
  if ([(ATXActionResponse *)self->_actionResponse consumerSubType]<= 0x31 && [(ATXActionResponse *)self->_actionResponse consumerSubType])
  {
    v10 = +[_ATXAppPredictor sharedInstance];
    abGroupIdentifiers = [v10 abGroupIdentifiers];
    v12 = [abGroupIdentifiers objectAtIndexedSubscript:{-[ATXActionResponse consumerSubType](self->_actionResponse, "consumerSubType")}];

    [v7 setObject:v12 forKeyedSubscript:@"ABGroup"];
    [*out setAbGroup:v12];
  }

  else
  {
    [v7 setObject:@"ERROR!" forKeyedSubscript:@"ABGroup"];
    v10 = __atxlog_handle_feedback([*out setAbGroup:@"ERROR!"]);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [(ATXActionSessionLog *)[(ATXActionResponse *)self->_actionResponse consumerSubType] constructSessionLogDictionaryWithAWDSessionOut:buf forTestingMode:v10];
    }
  }

  v168 = 9;
  v13 = [(ATXActionSessionLog *)self constructActionDataDictionaryWithEngagedIndicesOut:&v169 andAWDActionOut:out andEngagementTypeFound:&v168 forTestingMode:modeCopy];
  [v7 setObject:v13 forKeyedSubscript:@"ActionData"];

  p_engagementType = &v168;
  if (!self->_isShadowLog)
  {
    p_engagementType = &self->_engagementType;
  }

  v15 = *p_engagementType;
  if (*p_engagementType - 2 >= 8)
  {
    if (v15 <= 0xA && ((1 << v15) & 0x403) != 0)
    {
      v16 = objc_alloc(MEMORY[0x277CCACA8]);
      v17 = [MEMORY[0x277CEB2E8] engagementTypeToString:v15];
      v10 = [v16 initWithFormat:@"ERROR:%@", v17];
    }
  }

  else
  {
    v10 = [MEMORY[0x277CEB2E8] engagementTypeToString:v15];
  }

  [v7 setObject:v10 forKeyedSubscript:@"EngagementType"];

  [*out setEngagementType:{+[ATXAWDUtils awdActionEngagementWithEngagement:](ATXAWDUtils, "awdActionEngagementWithEngagement:", v15)}];
  [v7 setObject:v169 forKeyedSubscript:@"EngagedActionCacheIndices"];
  v166 = 0u;
  v167 = 0u;
  v164 = 0u;
  v165 = 0u;
  v18 = v169;
  v19 = [v18 countByEnumeratingWithState:&v164 objects:v170 count:16];
  if (v19)
  {
    v20 = *v165;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v165 != v20)
        {
          objc_enumerationMutation(v18);
        }

        [*out addEngagedActionCacheIndices:{objc_msgSend(*(*(&v164 + 1) + 8 * i), "intValue")}];
      }

      v19 = [v18 countByEnumeratingWithState:&v164 objects:v170 count:16];
    }

    while (v19);
  }

  v22 = [MEMORY[0x277CCABB0] numberWithLongLong:5];
  [v7 setObject:v22 forKeyedSubscript:@"session_log_version"];

  [*out setSessionLogVersion:5];
  if (self->_isShadowLog)
  {
    v23 = @"Shadow";
  }

  else
  {
    v23 = @"Feedback";
  }

  [v7 setObject:v23 forKeyedSubscript:@"LogType"];
  [*out setLogType:!self->_isShadowLog];
  v24 = +[_ATXGlobals sharedInstance];
  [v24 actionPredictionSessionLoggingDurationResolutionSec];
  v26 = v25;

  predictionDate = [(ATXActionResponse *)self->_actionResponse predictionDate];
  [ATXActionSessionLog roundedElapsedTimeWithStartDate:predictionDate endDate:v163 accuracy:v26];
  if ((*&v28 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v29 = -31337.0;
  }

  else
  {
    v29 = v28;
  }

  v30 = [MEMORY[0x277CCABB0] numberWithInt:v29];
  [v7 setObject:v30 forKeyedSubscript:@"PredictionAge"];

  [*out setPredictionAge:v29];
  predictionDate2 = [(ATXActionResponse *)self->_actionResponse predictionDate];
  uiFeedbackDate = [(ATXActionResponse *)self->_actionResponse uiFeedbackDate];
  [ATXActionSessionLog roundedElapsedTimeWithStartDate:predictionDate2 endDate:uiFeedbackDate accuracy:v26];
  if ((*&v33 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v34 = -31337.0;
  }

  else
  {
    v34 = v33;
  }

  v35 = [MEMORY[0x277CCABB0] numberWithInt:v34];
  [v7 setObject:v35 forKeyedSubscript:@"UIFeedbackDelay"];

  [*out setUiFeedbackDelay:v34];
  predictionDate3 = [(ATXActionResponse *)self->_actionResponse predictionDate];
  donatedIntentDate = [(ATXActionResponse *)self->_actionResponse donatedIntentDate];
  [ATXActionSessionLog roundedElapsedTimeWithStartDate:predictionDate3 endDate:donatedIntentDate accuracy:v26];
  if ((*&v38 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v39 = -31337.0;
  }

  else
  {
    v39 = v38;
  }

  v40 = [MEMORY[0x277CCABB0] numberWithInt:v39];
  [v7 setObject:v40 forKeyedSubscript:@"IntentDonationDelay"];

  [*out setIntentDonationDelay:v39];
  v162 = +[_ATXAppLaunchHistogramManager sharedInstance];
  v41 = objc_autoreleasePoolPush();
  v42 = [v162 histogramForLaunchType:14];
  [v42 totalTimeOfDayLaunchesForDate:v163];
  if ((*&v43 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v43 = -31337.0;
  }

  v44 = [MEMORY[0x277CCABB0] numberWithDouble:v43];
  [v7 setObject:v44 forKeyedSubscript:@"TotalAppActionTimeOfDayLaunches"];

  [v42 totalTimeOfDayLaunchesForDate:v163];
  if ((*&v45 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v45 = -31337.0;
  }

  [*out setTotalAppActionTimeOfDayLaunches:v45];
  LODWORD(v46) = 1036831949;
  [v42 totalTimeOfDayLaunchesForDate:v163 distanceScale:v46];
  if ((*&v47 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v47 = -31337.0;
  }

  v48 = [MEMORY[0x277CCABB0] numberWithDouble:v47];
  [v7 setObject:v48 forKeyedSubscript:@"TotalAppActionCoarseTimeOfDayLaunches"];

  LODWORD(v49) = 1036831949;
  [v42 totalTimeOfDayLaunchesForDate:v163 distanceScale:v49];
  if ((*&v50 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v50 = -31337.0;
  }

  [*out setTotalAppActionCoarseTimeOfDayLaunches:v50];

  objc_autoreleasePoolPop(v41);
  v51 = objc_autoreleasePoolPush();
  v52 = [v162 histogramForLaunchType:16];
  [v52 totalTimeOfDayLaunchesForDate:v163];
  if ((*&v53 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v53 = -31337.0;
  }

  v54 = [MEMORY[0x277CCABB0] numberWithDouble:v53];
  [v7 setObject:v54 forKeyedSubscript:@"TotalAppForAllActionTimeOfDayLaunches"];

  [v52 totalTimeOfDayLaunchesForDate:v163];
  if ((*&v55 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v55 = -31337.0;
  }

  [*out setTotalAppForAllActionTimeOfDayLaunches:v55];
  LODWORD(v56) = 1036831949;
  [v52 totalTimeOfDayLaunchesForDate:v163 distanceScale:v56];
  if ((*&v57 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v57 = -31337.0;
  }

  v58 = [MEMORY[0x277CCABB0] numberWithDouble:v57];
  [v7 setObject:v58 forKeyedSubscript:@"TotalAppForAllActionsCoarseTimeOfDayLaunches"];

  LODWORD(v59) = 1036831949;
  [v52 totalTimeOfDayLaunchesForDate:v163 distanceScale:v59];
  if ((*&v60 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v60 = -31337.0;
  }

  [*out setTotalAppForAllActionsCoarseTimeOfDayLaunches:v60];

  objc_autoreleasePoolPop(v51);
  v61 = objc_autoreleasePoolPush();
  v62 = [v162 histogramForLaunchType:17];
  [v62 totalTimeOfDayLaunchesForDate:v163];
  if ((*&v63 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v64 = -31337.0;
  }

  else
  {
    v64 = v63;
  }

  v65 = [MEMORY[0x277CCABB0] numberWithDouble:v64];
  [v7 setObject:v65 forKeyedSubscript:@"TotalAppActionCurrentDayOfWeekLaunches"];

  [*out setTotalAppActionCurrentDayOfWeekLaunches:v64];
  objc_autoreleasePoolPop(v61);
  v66 = objc_autoreleasePoolPush();
  v67 = [v162 histogramForLaunchType:19];
  [v67 totalTimeOfDayLaunchesForDate:v163];
  if ((*&v68 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v69 = -31337.0;
  }

  else
  {
    v69 = v68;
  }

  v70 = [MEMORY[0x277CCABB0] numberWithDouble:v69];
  [v7 setObject:v70 forKeyedSubscript:@"TotalAppForAllActionsCurrentDayOfWeekLaunches"];

  [*out setTotalAppForAllActionsCurrentDayOfWeekLaunches:v69];
  objc_autoreleasePoolPop(v66);
  v71 = objc_autoreleasePoolPush();
  v72 = [v162 histogramForLaunchType:26];
  [v72 totalLaunches];
  if ((*&v73 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v73 = -31337.0;
  }

  v74 = v73;
  v75 = [MEMORY[0x277CCABB0] numberWithInt:v74];
  [v7 setObject:v75 forKeyedSubscript:@"TotalAppActionAirplaneModeLaunches"];

  [*out setTotalAppActionAirplaneModeLaunches:v74];
  objc_autoreleasePoolPop(v71);
  v76 = objc_autoreleasePoolPush();
  v77 = [v162 histogramForLaunchType:28];
  [v77 totalLaunches];
  if ((*&v78 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v79 = -31337.0;
  }

  else
  {
    v79 = v78;
  }

  v80 = [MEMORY[0x277CCABB0] numberWithDouble:v79];
  [v7 setObject:v80 forKeyedSubscript:@"TotalAppForAllActionsAirplaneModeLaunches"];

  [*out setTotalAppForAllActionsAirplaneModeLaunches:v79];
  objc_autoreleasePoolPop(v76);
  deviceStateContext = [(ATXPredictionContext *)self->_context deviceStateContext];
  inAirplaneMode = [deviceStateContext inAirplaneMode];

  v83 = [MEMORY[0x277CCABB0] numberWithInt:inAirplaneMode];
  [v7 setObject:v83 forKeyedSubscript:@"InAirplaneMode"];

  [*out setInAirplaneMode:inAirplaneMode];
  v84 = objc_autoreleasePoolPush();
  v85 = [v162 categoricalHistogramForLaunchType:38];
  v86 = +[_ATXAppLaunchHistogramManager sharedInstance];
  v87 = [v86 categoricalHistogramForLaunchType:39];

  v88 = MEMORY[0x277D41C30];
  locationMotionContext = [(ATXPredictionContext *)self->_context locationMotionContext];
  v90 = [v88 getMotionStringFromMotionType:{objc_msgSend(locationMotionContext, "motionType")}];

  v91 = [v90 length];
  if (v91)
  {
    [v85 totalLaunchesForCategory:v90];
    if ((*&v92 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      v92 = -31337.0;
    }

    v93 = [MEMORY[0x277CCABB0] numberWithDouble:v92];
  }

  else
  {
    v93 = &unk_283A55268;
  }

  [v7 setObject:v93 forKeyedSubscript:@"AppActionCoreMotionCurrentMotionLaunches"];
  if (v91)
  {
  }

  if ([v90 length])
  {
    [v85 totalLaunchesForCategory:v90];
    if ((*&v94 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      v94 = -31337.0;
    }

    v95 = v94;
  }

  else
  {
    v95 = 0;
  }

  [*out setAppActionCoreMotionCurrentMotionLaunches:v95];
  v96 = [v90 length];
  if (v96)
  {
    [v87 totalLaunchesForCategory:v90];
    if ((*&v97 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      v97 = -31337.0;
    }

    v98 = [MEMORY[0x277CCABB0] numberWithDouble:v97];
  }

  else
  {
    v98 = &unk_283A55268;
  }

  [v7 setObject:v98 forKeyedSubscript:@"AppForAllActionsCoreMotionCurrentMotionLaunches"];
  if (v96)
  {
  }

  if ([v90 length])
  {
    [v87 totalLaunchesForCategory:v90];
    if ((*&v99 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      v99 = -31337.0;
    }

    v100 = v99;
  }

  else
  {
    v100 = 0;
  }

  [*out setAppForAllActionsCoreMotionCurrentMotionLaunches:v100];

  objc_autoreleasePoolPop(v84);
  v101 = objc_autoreleasePoolPush();
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v103 = [currentCalendar component:32 fromDate:v163];
  v104 = [currentCalendar component:512 fromDate:v163];

  objc_autoreleasePoolPop(v101);
  v105 = [MEMORY[0x277CCABB0] numberWithLongLong:(v103 / 4)];
  [v7 setObject:v105 forKeyedSubscript:@"TimeOfDayInterval"];

  [*out setTimeOfDayInterval:(v103 / 4)];
  v106 = [MEMORY[0x277CCABB0] numberWithLongLong:(v104 - 1)];
  [v7 setObject:v106 forKeyedSubscript:@"DayOfWeek"];

  [*out setDayOfWeek:v104 - 1];
  v107 = [MEMORY[0x277CEBCF0] stringForConsumerSubtype:{-[ATXActionResponse consumerSubType](self->_actionResponse, "consumerSubType")}];
  [v7 setObject:v107 forKeyedSubscript:@"ConsumerSubType"];

  [*out setConsumerSubType:{+[ATXAWDUtils awdConsumerSubTypeWithConsumerSubType:](ATXAWDUtils, "awdConsumerSubTypeWithConsumerSubType:", -[ATXActionResponse consumerSubType](self->_actionResponse, "consumerSubType"))}];
  if ([MEMORY[0x277D42590] isInternalBuild])
  {
    [v7 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"IsInternalBuild"];
    [*out setIsInternalBuild:1];
  }

  v108 = objc_autoreleasePoolPush();
  v109 = +[_ATXGlobals sharedInstance];
  locationMotionContext2 = [(ATXPredictionContext *)self->_context locationMotionContext];
  currentLOI = [locationMotionContext2 currentLOI];

  if (currentLOI)
  {
    type = [currentLOI type];
  }

  else
  {
    type = -1;
  }

  if ([v109 sessionLoggingCurrentLOITypeEnable])
  {
    v113 = [MEMORY[0x277D41BF8] stringForLOIType:type];
    [v7 setObject:v113 forKeyedSubscript:@"CurrentLOIType"];
  }

  [*out setCurrentLOIType:{+[ATXAWDUtils awdLOITypeWithRTLOI:](ATXAWDUtils, "awdLOITypeWithRTLOI:", type)}];
  if ([v109 sessionLoggingHomeDistanceEnable])
  {
    v114 = objc_opt_class();
    locationMotionContext3 = [(ATXPredictionContext *)self->_context locationMotionContext];
    [locationMotionContext3 distanceFromHomeOfCurrentLocationInMeters];
    v117 = v116;
    [v109 sessionLoggingDistanceAccuracy];
    [v114 _bucketize:v117 bucketSize:v118];
    v120 = v119;

    if (v120 >= 0.0)
    {
      v121 = [MEMORY[0x277CCABB0] numberWithDouble:v120];
      [v7 setObject:v121 forKeyedSubscript:@"LocationDistanceFromHome"];

      [*out setLocationDistanceFromHome:v120];
    }
  }

  if ([v109 sessionLoggingWorkDistanceEnable])
  {
    v122 = objc_opt_class();
    locationMotionContext4 = [(ATXPredictionContext *)self->_context locationMotionContext];
    [locationMotionContext4 distanceFromWorkOfCurrentLocationInMeters];
    v125 = v124;
    [v109 sessionLoggingDistanceAccuracy];
    [v122 _bucketize:v125 bucketSize:v126];
    v128 = v127;

    if (v128 >= 0.0)
    {
      v129 = [MEMORY[0x277CCABB0] numberWithDouble:v128];
      [v7 setObject:v129 forKeyedSubscript:@"LocationDistanceFromWork"];

      [*out setLocationDistanceFromWork:v128];
    }
  }

  if ([v109 sessionLoggingSchoolDistanceEnable])
  {
    v130 = objc_opt_class();
    locationMotionContext5 = [(ATXPredictionContext *)self->_context locationMotionContext];
    [locationMotionContext5 distanceFromSchoolOfCurrentLocationInMeters];
    v133 = v132;
    [v109 sessionLoggingDistanceAccuracy];
    [v130 _bucketize:v133 bucketSize:v134];
    v136 = v135;

    if (v136 >= 0.0)
    {
      v137 = [MEMORY[0x277CCABB0] numberWithDouble:v136];
      [v7 setObject:v137 forKeyedSubscript:@"LocationDistanceFromSchool"];
    }
  }

  if ([v109 sessionLoggingGymDistanceEnable])
  {
    v138 = objc_opt_class();
    locationMotionContext6 = [(ATXPredictionContext *)self->_context locationMotionContext];
    [locationMotionContext6 distanceFromGymOfCurrentLocationInMeters];
    v141 = v140;
    [v109 sessionLoggingDistanceAccuracy];
    [v138 _bucketize:v141 bucketSize:v142];
    v144 = v143;

    if (v144 >= 0.0)
    {
      v145 = [MEMORY[0x277CCABB0] numberWithDouble:v144];
      [v7 setObject:v145 forKeyedSubscript:@"LocationDistanceFromGym"];
    }
  }

  objc_autoreleasePoolPop(v108);
  engagedAction = [(ATXActionResponse *)self->_actionResponse engagedAction];
  bundleId = [engagedAction bundleId];
  v148 = +[_ATXGlobals sharedInstance];
  v149 = +[ATXAppPredictorFeedback _getLastAppsWithEngagedApp:limit:](ATXAppPredictorFeedback, "_getLastAppsWithEngagedApp:limit:", bundleId, [v148 sessionLoggingAppSequenceLength]);

  if ([v149 count])
  {
    [v7 setObject:v149 forKeyedSubscript:@"AppSequence"];
    v150 = objc_opt_new();
    for (j = 0; [v149 count] > j; ++j)
    {
      v152 = [v149 objectAtIndexedSubscript:j];
      [v150 addBundleid:v152];
    }

    [*out setAppSequence:v150];
  }

  engagedAction2 = [(ATXActionResponse *)self->_actionResponse engagedAction];
  v154 = objc_opt_new();
  v155 = +[_ATXGlobals sharedInstance];
  v156 = +[ATXAppPredictorFeedback _getLastAppIntentsWithEngagedAction:combinedIntentStream:limit:](ATXAppPredictorFeedback, "_getLastAppIntentsWithEngagedAction:combinedIntentStream:limit:", engagedAction2, v154, [v155 sessionLoggingUniqueAppActionSequenceLength]);

  if ([v156 count])
  {
    v157 = objc_opt_new();
    for (k = 0; [v156 count] > k; ++k)
    {
      v159 = [v156 objectAtIndexedSubscript:k];
      [v157 addActionString:v159];
    }

    [*out setAppActionSequence:v157];
  }

  v160 = [v7 copy];

  return v160;
}

- (id)constructActionDataDictionaryWithEngagedIndicesOut:(id *)out andAWDActionOut:(id *)actionOut andEngagementTypeFound:(unint64_t *)found forTestingMode:(BOOL)mode
{
  v6 = MEMORY[0x28223BE20](self);
  v85 = v7;
  v82 = v8;
  v84 = v9;
  v78 = v10;
  v12 = v11;
  *(&v107[1] + 4) = *MEMORY[0x277D85DE8];
  cacheFileData = [*(v11 + 16) cacheFileData];
  if (cacheFileData)
  {
    v14 = [ATXActionCacheReader alloc];
    cacheFileData2 = [*(v12 + 16) cacheFileData];
    v83 = [(ATXActionCacheReader *)v14 initWithData:cacheFileData2];
  }

  else
  {
    v83 = 0;
  }

  v88 = objc_opt_new();
  v81 = objc_opt_new();
  v99 = 0;
  v100 = &v99;
  v101 = 0x2020000000;
  v102 = 0;
  v16 = +[_ATXGlobals sharedInstance];
  actionPredictionSessionLoggingBottomBlockMaxItemsToLog = [v16 actionPredictionSessionLoggingBottomBlockMaxItemsToLog];

  matchingIntentDonatedAction = [*(v12 + 16) matchingIntentDonatedAction];
  v19 = matchingIntentDonatedAction;
  if (matchingIntentDonatedAction)
  {
    engagedAction = matchingIntentDonatedAction;
  }

  else
  {
    engagedAction = [*(v12 + 16) engagedAction];
  }

  v20 = 0;
  *(v100 + 6) = 0;
  v86 = actionPredictionSessionLoggingBottomBlockMaxItemsToLog;
  *v21.i32 = -31337.0;
  v80 = vdupq_lane_s32(v21, 0);
  v79 = *MEMORY[0x277CBE658];
  while (1)
  {
    scoredActions = [*(v12 + 16) scoredActions];
    v23 = [scoredActions count];

    v24 = v86;
    if (v23 < v86)
    {
      v24 = v23;
    }

    if (v24 <= v20)
    {
      break;
    }

    v25 = objc_autoreleasePoolPush();
    scoredActions2 = [*(v12 + 16) scoredActions];
    v27 = [scoredActions2 objectAtIndexedSubscript:*(v100 + 6)];
    predictedItem = [v27 predictedItem];

    scoredActions3 = [*(v12 + 16) scoredActions];
    v30 = [scoredActions3 objectAtIndexedSubscript:*(v100 + 6)];
    [v30 score];
    v32 = v31;

    v33 = objc_opt_new();
    v34 = objc_opt_new();
    [(NSMutableDictionary *)v34 setObject:@"Top" forKeyedSubscript:@"CacheSection"];
    v35 = [MEMORY[0x277CCABB0] numberWithLongLong:*(v100 + 6)];
    [(NSMutableDictionary *)v34 setObject:v35 forKeyedSubscript:@"CacheRank"];

    [v33 setCacheRank:*(v100 + 6)];
    v36 = [*(v12 + 16) indexWasShown:*(v100 + 6)];
    v37 = MEMORY[0x277CBEC28];
    if (v36)
    {
      v37 = MEMORY[0x277CBEC38];
    }

    v38 = v37;
    [(NSMutableDictionary *)v34 setObject:v38 forKeyedSubscript:@"Shown"];

    [v33 setShown:{objc_msgSend(*(v12 + 16), "indexWasShown:", *(v100 + 6))}];
    if (*(v12 + 32) != 1)
    {
      v42 = *(v12 + 8);
      v43 = predictedItem;
      v44 = engagedAction;
      v45 = v44;
      if (v42 > 4)
      {
        if ((v42 - 5) < 2)
        {
          v40 = 0;
          goto LABEL_30;
        }

LABEL_26:
        v48 = __atxlog_handle_default(v44);
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          v49 = [MEMORY[0x277CEB2E8] engagementTypeToString:v42];
          [ATXActionSessionLog constructActionDataDictionaryWithEngagedIndicesOut:v49 andAWDActionOut:buf andEngagementTypeFound:v107 forTestingMode:v48];
        }

        v50 = MEMORY[0x277CBEAD8];
        actionKey = [MEMORY[0x277CEB2E8] engagementTypeToString:v42];
        [v50 raise:v79 format:{@"%@ is not a valid engagment type to call matchesEngagedAction with", actionKey}];
        v40 = 0;
      }

      else
      {
        if (v42 == 2)
        {
          goto LABEL_22;
        }

        if (v42 != 3)
        {
          if (v42 == 4)
          {
LABEL_22:
            v40 = [_ATXActionUtils isContainmentBetweenAction:v43 other:v44];
LABEL_30:

            v41 = engagementTypeForPrediction(*(v12 + 8), v40);
            goto LABEL_31;
          }

          goto LABEL_26;
        }

        actionKey = [v43 actionKey];
        actionKey2 = [(ATXAction *)v45 actionKey];
        v40 = [actionKey isEqualToString:actionKey2];
      }

      goto LABEL_30;
    }

    v39 = engagementTypeFoundForPredictedAction(predictedItem, engagedAction);
    if (v39 != 9 && *v82 != 7)
    {
      *v82 = v39;
    }

    v40 = (v39 - 7) < 2;
    v41 = engagementTypeForPrediction(v39, v40);
LABEL_31:
    v51 = v41;
    [(NSMutableDictionary *)v34 setObject:v41 forKeyedSubscript:@"Engaged"];
    [v33 setEngaged:v51];
    if (v40)
    {
      v52 = [MEMORY[0x277CCABB0] numberWithInt:*(v100 + 6)];
      [v81 addObject:v52];
    }

    v53 = v32;
    if ((*&v53 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      v54 = -31337.0;
    }

    else
    {
      v54 = v53;
    }

    v55 = [MEMORY[0x277CCABB0] numberWithDouble:v54];
    [(NSMutableDictionary *)v34 setObject:v55 forKeyedSubscript:@"Score"];

    [v33 setScore:v53];
    actionKey3 = [predictedItem actionKey];
    [(NSMutableDictionary *)v34 setObject:actionKey3 forKeyedSubscript:@"ActionKey"];

    actionKey4 = [predictedItem actionKey];
    [v33 setActionKey:actionKey4];

    if (ATXDetailedActionLoggingEnabled())
    {
      v58 = [MEMORY[0x277CEB2E8] actionTypeToString:{objc_msgSend(predictedItem, "actionType")}];
      [(NSMutableDictionary *)v34 setObject:v58 forKeyedSubscript:@"ActionType"];

      actionTitle = [predictedItem actionTitle];
      [(NSMutableDictionary *)v34 setObject:actionTitle forKeyedSubscript:@"ActionTitle"];

      slotSet = [predictedItem slotSet];
      parameters = [slotSet parameters];
      allObjects = [parameters allObjects];
      [(NSMutableDictionary *)v34 setObject:allObjects forKeyedSubscript:@"SlotSet"];
    }

    if ([predictedItem isHeuristic])
    {
      heuristic = [predictedItem heuristic];
      [(NSMutableDictionary *)v34 setObject:heuristic forKeyedSubscript:@"Heuristic"];

      heuristic2 = [predictedItem heuristic];
      [v33 setHeuristicName:heuristic2];
    }

    isFutureMedia = [predictedItem isFutureMedia];
    v66 = MEMORY[0x277CBEC28];
    if (isFutureMedia)
    {
      v66 = MEMORY[0x277CBEC38];
    }

    v67 = v66;
    [(NSMutableDictionary *)v34 setObject:v67 forKeyedSubscript:@"IsFutureMedia"];

    [v33 setFutureMedia:{objc_msgSend(predictedItem, "isFutureMedia")}];
    if ((v85 & 1) == 0)
    {
      if (v83)
      {
        objc_msgSend_predictionItemForAction_(v83);
        v103[0] = 0;
        v105 = -31337.0;
        for (i = 2; i != 416; i += 2)
        {
          *&v103[i] = v80;
        }

        v69 = memcmp(&v98[2], &v104, 0xCF0uLL);
        v70 = v103[0];
        if (v69 || v97 | v103[0] && (!v97 || !v103[0] || ([v97 isEqualToString:v103[0]] & 1) == 0))
        {

          goto LABEL_48;
        }

        v73 = v98[830] == v105;

        if (!v73)
        {
LABEL_48:
          v96.key = v97;
          memcpy(&v96.actionHash, v98, 0xCFEuLL);
          addScoreInputsForPredictionItemToDictionary(&v96, v34);
        }
      }

      v71 = [ATXAWDUtils subscoresWithDictionary:v34];
      [v33 setSubscores:v71];
    }

    v72 = [(NSMutableDictionary *)v34 copy];
    [v88 addObject:v72];

    [*v84 addActionData:v33];
    objc_autoreleasePoolPop(v25);
    v20 = *(v100 + 6) + 1;
    *(v100 + 6) = v20;
  }

  if (v83 && (v85 & 1) == 0)
  {
    v89[0] = MEMORY[0x277D85DD0];
    v89[1] = 3221225472;
    v89[2] = __128__ATXActionSessionLog_constructActionDataDictionaryWithEngagedIndicesOut_andAWDActionOut_andEngagementTypeFound_forTestingMode___block_invoke;
    v89[3] = &unk_278597198;
    v93 = &v99;
    v89[4] = v12;
    v90 = engagedAction;
    v94 = v82;
    v91 = v81;
    v92 = v88;
    v95 = v84;
    [(ATXActionCacheReader *)v83 enumerateExtraPredictionItemsWithBlock:v89];
  }

  v74 = [v81 copy];
  v75 = *v78;
  *v78 = v74;

  v76 = [v88 copy];
  _Block_object_dispose(&v99, 8);

  return v76;
}

void __128__ATXActionSessionLog_constructActionDataDictionaryWithEngagedIndicesOut_andAWDActionOut_andEngagementTypeFound_forTestingMode___block_invoke(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = v1;
  v4 = v3;
  v23 = objc_opt_new();
  v5 = objc_opt_new();
  [(NSMutableDictionary *)v23 setObject:@"Other" forKeyedSubscript:@"CacheSection"];
  v6 = [MEMORY[0x277CCABB0] numberWithLongLong:*(*(*(v4 + 64) + 8) + 24)];
  [(NSMutableDictionary *)v23 setObject:v6 forKeyedSubscript:@"CacheRank"];

  [v5 setCacheRank:*(*(*(v4 + 64) + 8) + 24)];
  [(NSMutableDictionary *)v23 setObject:*v2 forKeyedSubscript:@"ActionKey"];
  [v5 setActionKey:*v2];
  v7 = *(v2 + 832);
  if (COERCE__INT64(fabs(v7)) >= 0x7FF0000000000000)
  {
    v7 = -31337.0;
  }

  v8 = [MEMORY[0x277CCABB0] numberWithDouble:v7];
  [(NSMutableDictionary *)v23 setObject:v8 forKeyedSubscript:@"Score"];

  [v5 setScore:*(v2 + 832)];
  if (*(*(v4 + 32) + 32) == 1)
  {
    v9 = [_ATXActionUtils slotSetsForAction:*(v4 + 40)];
  }

  else
  {
    v10 = [*(v4 + 40) slotSet];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = [objc_alloc(MEMORY[0x277CEB848]) initWithOpaqueParameters];
    }

    v13 = v12;

    v9 = [MEMORY[0x277CBEB98] setWithObject:v13];
  }

  v25 = *v2;
  memcpy(v26, v2 + 1, sizeof(v26));
  v14 = engagementTypeFoundForPredictedItem(&v25, *(v4 + 40), v9);
  if (v14 != 9)
  {
    v15 = *(v4 + 72);
    if (*v15 != 7)
    {
      *v15 = v14;
    }
  }

  v16 = v14 - 7;
  v17 = engagementTypeForPrediction(v14, (v14 - 7) < 2);
  [(NSMutableDictionary *)v23 setObject:v17 forKeyedSubscript:@"Engaged"];
  [v5 setEngaged:v17];
  if (v16 <= 1)
  {
    v18 = *(v4 + 48);
    v19 = [MEMORY[0x277CCABB0] numberWithInt:*(*(*(v4 + 64) + 8) + 24)];
    [v18 addObject:v19];
  }

  v24.key = *v2;
  memcpy(&v24.actionHash, v2 + 1, 0xCFEuLL);
  addScoreInputsForPredictionItemToDictionary(&v24, v23);
  v20 = [ATXAWDUtils subscoresWithDictionary:v23];
  [v5 setSubscores:v20];

  v21 = *(v4 + 56);
  v22 = [(NSMutableDictionary *)v23 copy];
  [v21 addObject:v22];

  [**(v4 + 80) addActionData:v5];
  ++*(*(*(v4 + 64) + 8) + 24);
}

+ (unint64_t)_determineNumItemsInSession:(id)session engagedAction:(id)action cacheReader:(id)reader
{
  sessionCopy = session;
  actionCopy = action;
  readerCopy = reader;
  v10 = +[ATXAppPredictionDataHarvesterConstants actionPredictionSessionDataHarvestMaxItems];
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  scoredActions = [sessionCopy scoredActions];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __77__ATXActionSessionLog__determineNumItemsInSession_engagedAction_cacheReader___block_invoke;
  v24[3] = &unk_2785971C0;
  v12 = actionCopy;
  v26 = &v28;
  v27 = v10;
  v25 = v12;
  [scoredActions enumerateObjectsUsingBlock:v24];

  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2020000000;
  scoredActions2 = [sessionCopy scoredActions];
  v14 = [scoredActions2 count];

  v23[3] = v14;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __77__ATXActionSessionLog__determineNumItemsInSession_engagedAction_cacheReader___block_invoke_2;
  v18[3] = &unk_2785971E8;
  v15 = v12;
  v19 = v15;
  v20 = v23;
  v21 = &v28;
  v22 = v10;
  [readerCopy enumerateExtraPredictionItemsWithBlock:v18];
  v16 = v29[3];

  _Block_object_dispose(v23, 8);
  _Block_object_dispose(&v28, 8);

  return v16;
}

void __77__ATXActionSessionLog__determineNumItemsInSession_engagedAction_cacheReader___block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = [a2 predictedItem];
  v6 = engagementTypeFoundForPredictedAction(v5, *(a1 + 32));

  if (*(a1 + 48) > a3 || v6 != 9)
  {
    ++*(*(*(a1 + 40) + 8) + 24);
  }
}

void __77__ATXActionSessionLog__determineNumItemsInSession_engagedAction_cacheReader___block_invoke_2(uint64_t a1, id *a2)
{
  v8 = [_ATXActionUtils slotSetsForAction:*(a1 + 32)];
  v9 = *a2;
  memcpy(v10, a2 + 1, sizeof(v10));
  v4 = engagementTypeFoundForPredictedItem(&v9, *(a1 + 32), v8);
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 24);
  if (v4 != 9 || v6 < *(a1 + 56))
  {
    *(v5 + 24) = v6 + 1;
    ++*(*(*(a1 + 48) + 8) + 24);
  }
}

+ (void)harvestActionPredictionDataForResponse:(id)response
{
  v52 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  matchingIntentDonatedAction = [responseCopy matchingIntentDonatedAction];
  v5 = matchingIntentDonatedAction;
  if (matchingIntentDonatedAction)
  {
    engagedAction = matchingIntentDonatedAction;
  }

  else
  {
    engagedAction = [responseCopy engagedAction];
  }

  v6 = objc_opt_new();
  uUIDString = [v6 UUIDString];

  v8 = +[ATXAppPredictionDataHarvesterConstants actionPredictionSessionDataHarvestMaxItems];
  cacheFileData = [responseCopy cacheFileData];
  v10 = cacheFileData;
  if (cacheFileData && (v11 = [ATXActionCacheReader alloc], [responseCopy cacheFileData], v12 = objc_claimAutoreleasedReturnValue(), v13 = -[ATXActionCacheReader initWithData:](v11, "initWithData:", v12), v12, v10, v13))
  {
    *buf = 0;
    v49 = buf;
    v50 = 0x2020000000;
    v51 = 9;
    scoredActions = [responseCopy scoredActions];
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __62__ATXActionSessionLog_harvestActionPredictionDataForResponse___block_invoke;
    v45[3] = &unk_278597210;
    v15 = engagedAction;
    v46 = v15;
    v47 = buf;
    [scoredActions enumerateObjectsUsingBlock:v45];

    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __62__ATXActionSessionLog_harvestActionPredictionDataForResponse___block_invoke_2;
    v42[3] = &unk_278597238;
    v44 = buf;
    v16 = v15;
    v43 = v16;
    [(ATXActionCacheReader *)v13 enumerateExtraPredictionItemsWithBlock:v42];
    v17 = [ATXActionSessionLog _determineNumItemsInSession:responseCopy engagedAction:v16 cacheReader:v13];
    scoredActions2 = [responseCopy scoredActions];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __62__ATXActionSessionLog_harvestActionPredictionDataForResponse___block_invoke_3;
    v35[3] = &unk_278597260;
    v19 = v16;
    v36 = v19;
    v40 = v8;
    v20 = v13;
    v37 = v20;
    v39 = buf;
    v21 = uUIDString;
    v38 = v21;
    v41 = v17;
    [scoredActions2 enumerateObjectsUsingBlock:v35];

    v34[0] = 0;
    v34[1] = v34;
    v34[2] = 0x2020000000;
    scoredActions3 = [responseCopy scoredActions];
    v23 = [scoredActions3 count];

    v34[3] = v23;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __62__ATXActionSessionLog_harvestActionPredictionDataForResponse___block_invoke_4;
    v27[3] = &unk_278597288;
    v28 = v19;
    v30 = v34;
    v31 = buf;
    v32 = v8;
    v29 = v21;
    v33 = v17;
    [v20 enumerateExtraPredictionItemsWithBlock:v27];

    _Block_object_dispose(v34, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v20 = __atxlog_handle_feedback(cacheFileData);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      [(ATXActionSessionLog *)v25 harvestActionPredictionDataForResponse:buf, v20];
    }
  }
}

void __62__ATXActionSessionLog_harvestActionPredictionDataForResponse___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  v6 = [v10 predictedItem];
  v7 = engagementTypeFoundForPredictedAction(v6, *(a1 + 32));

  v8 = *(*(a1 + 40) + 8);
  if (v7 == 7)
  {
    *(v8 + 24) = 7;
    *a4 = 1;
  }

  else
  {
    v9 = *(v8 + 24);
    if (v9 == 9)
    {
      v9 = v7;
    }

    *(v8 + 24) = v9;
  }
}

void __62__ATXActionSessionLog_harvestActionPredictionDataForResponse___block_invoke_2(uint64_t a1, id *a2)
{
  if (*(*(*(a1 + 40) + 8) + 24) != 7)
  {
    v7 = [_ATXActionUtils slotSetsForAction:*(a1 + 32)];
    v8 = *a2;
    memcpy(v9, a2 + 1, sizeof(v9));
    v4 = engagementTypeFoundForPredictedItem(&v8, *(a1 + 32), v7);
    v5 = *(*(a1 + 40) + 8);
    if (v4 == 7)
    {
      v6 = 7;
    }

    else
    {
      v6 = *(v5 + 24);
      if (v6 == 9)
      {
        v6 = v4;
      }
    }

    *(v5 + 24) = v6;
  }
}

void __62__ATXActionSessionLog_harvestActionPredictionDataForResponse___block_invoke_3(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  v6 = [v5 predictedItem];
  v7 = engagementTypeFoundForPredictedAction(v6, *(a1 + 32));

  if (*(a1 + 64) > a3 || v7 != 9)
  {
    v9 = *(a1 + 40);
    v10 = [v5 predictedItem];
    if (v9)
    {
      objc_msgSend_predictionItemForAction_(v9);
    }

    else
    {
      bzero(v17, 0xD08uLL);
    }

    v11 = [ATXAppPredictionFeedbackItem alloc];
    v12 = [v5 predictedItem];
    v13 = [v12 bundleId];
    LODWORD(v14) = v18[828];
    v15 = [(ATXAppPredictionFeedbackItem *)v11 initWithBundleId:v13 totalScore:v18 scoreInputs:v14];

    v16 = [v5 predictedItem];
    +[ATXAppPredictionDataHarvester harvestDataFromActionPredictionItem:isMenuItem:itemIndex:itemOutcome:sessionOutcome:sessionUUID:numItemsInSession:](ATXAppPredictionDataHarvester, "harvestDataFromActionPredictionItem:isMenuItem:itemIndex:itemOutcome:sessionOutcome:sessionUUID:numItemsInSession:", v15, [v16 actionType] == 6, a3, v7, *(*(*(a1 + 56) + 8) + 24), *(a1 + 48), *(a1 + 72));
  }
}

void __62__ATXActionSessionLog_harvestActionPredictionDataForResponse___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v9 = [_ATXActionUtils slotSetsForAction:*(a1 + 32)];
  v10 = *a2;
  memcpy(v11, (a2 + 8), sizeof(v11));
  v4 = engagementTypeFoundForPredictedItem(&v10, *(a1 + 32), v9);
  if (v4 != 9 || *(*(*(a1 + 48) + 8) + 24) < *(a1 + 64))
  {
    v6 = [ATXAppPredictionFeedbackItem alloc];
    LODWORD(v7) = *(a2 + 3328);
    v8 = [(ATXAppPredictionFeedbackItem *)v6 initWithBundleId:&stru_2839A6058 totalScore:a2 + 16 scoreInputs:v7];
    +[ATXAppPredictionDataHarvester harvestDataFromActionPredictionItem:isMenuItem:itemIndex:itemOutcome:sessionOutcome:sessionUUID:numItemsInSession:](ATXAppPredictionDataHarvester, "harvestDataFromActionPredictionItem:isMenuItem:itemIndex:itemOutcome:sessionOutcome:sessionUUID:numItemsInSession:", v8, [*a2 hasSuffix:*MEMORY[0x277CEB230]], (*(*(*(a1 + 48) + 8) + 24))++, v4, *(*(*(a1 + 56) + 8) + 24), *(a1 + 40), *(a1 + 72));
  }
}

- (void)constructSessionLogDictionaryWithAWDSessionOut:(os_log_t)log forTestingMode:.cold.1(unsigned __int8 a1, uint8_t *buf, os_log_t log)
{
  *buf = 67109120;
  *(buf + 1) = a1;
  _os_log_fault_impl(&dword_2263AA000, log, OS_LOG_TYPE_FAULT, "Action Session Log: detected invalid consumerSubType of %hhu for AB group", buf, 8u);
}

- (void)constructActionDataDictionaryWithEngagedIndicesOut:(void *)a1 andAWDActionOut:(uint8_t *)buf andEngagementTypeFound:(void *)a3 forTestingMode:(os_log_t)log .cold.1(void *a1, uint8_t *buf, void *a3, os_log_t log)
{
  *buf = 138412290;
  *a3 = a1;
  _os_log_error_impl(&dword_2263AA000, log, OS_LOG_TYPE_ERROR, "%@ is not a valid engagment type to call matchesEngagedAction with", buf, 0xCu);
}

+ (void)harvestActionPredictionDataForResponse:(os_log_t)log .cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_2263AA000, log, OS_LOG_TYPE_ERROR, "%@ harvestActionPredictionDataForResponse - ATXActionCacheReader is nil, unable to read cache file data", buf, 0xCu);
}

@end