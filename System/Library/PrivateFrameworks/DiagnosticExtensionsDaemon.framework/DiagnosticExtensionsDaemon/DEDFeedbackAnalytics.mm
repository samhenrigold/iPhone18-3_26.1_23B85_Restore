@interface DEDFeedbackAnalytics
+ (void)logDataLoadWithContentItemCount:(unint64_t)count formItemsCount:(unint64_t)itemsCount teamCount:(unint64_t)teamCount errorsCount:(unint64_t)errorsCount startedAt:(double)at endedAt:(double)endedAt;
+ (void)logEventWithRequest:(id)request httpStatusCode:(int64_t)code nsurlErrorCode:(int64_t)errorCode success:(BOOL)success startedAt:(double)at endedAt:(double)endedAt;
+ (void)logFBKBugSessionStartWithDeviceType:(id)type isRemote:(BOOL)remote success:(BOOL)success errorCode:(int64_t)code startedAt:(double)at getSessionEndedAt:(double)endedAt showExtensionsEndedAt:(double)extensionsEndedAt getStatusEndedAt:(double)self0;
@end

@implementation DEDFeedbackAnalytics

+ (void)logEventWithRequest:(id)request httpStatusCode:(int64_t)code nsurlErrorCode:(int64_t)errorCode success:(BOOL)success startedAt:(double)at endedAt:(double)endedAt
{
  requestCopy = request;
  if (logEventWithRequest_httpStatusCode_nsurlErrorCode_success_startedAt_endedAt__onceToken != -1)
  {
    +[DEDFeedbackAnalytics logEventWithRequest:httpStatusCode:nsurlErrorCode:success:startedAt:endedAt:];
  }

  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __100__DEDFeedbackAnalytics_logEventWithRequest_httpStatusCode_nsurlErrorCode_success_startedAt_endedAt___block_invoke_2;
  v21 = &unk_278F66470;
  v22 = requestCopy;
  codeCopy = code;
  errorCodeCopy = errorCode;
  atCopy = at;
  endedAtCopy = endedAt;
  successCopy = success;
  v14 = requestCopy;
  v15 = AnalyticsSendEventLazy();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __100__DEDFeedbackAnalytics_logEventWithRequest_httpStatusCode_nsurlErrorCode_success_startedAt_endedAt___block_invoke_34;
  block[3] = &__block_descriptor_33_e5_v8__0l;
  v17 = v15;
  if (logEventWithRequest_httpStatusCode_nsurlErrorCode_success_startedAt_endedAt__logOnceToken != -1)
  {
    dispatch_once(&logEventWithRequest_httpStatusCode_nsurlErrorCode_success_startedAt_endedAt__logOnceToken, block);
  }
}

uint64_t __100__DEDFeedbackAnalytics_logEventWithRequest_httpStatusCode_nsurlErrorCode_success_startedAt_endedAt___block_invoke()
{
  logEventWithRequest_httpStatusCode_nsurlErrorCode_success_startedAt_endedAt__NetworkLog = os_log_create("com.apple.feedback.analytics", "network");

  return MEMORY[0x2821F96F8]();
}

id __100__DEDFeedbackAnalytics_logEventWithRequest_httpStatusCode_nsurlErrorCode_success_startedAt_endedAt___block_invoke_2(uint64_t a1)
{
  v43[7] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [v2 URL];
    v4 = [v3 path];

    if (v4)
    {
      goto LABEL_8;
    }

    v5 = logEventWithRequest_httpStatusCode_nsurlErrorCode_success_startedAt_endedAt__NetworkLog;
    if (os_log_type_enabled(logEventWithRequest_httpStatusCode_nsurlErrorCode_success_startedAt_endedAt__NetworkLog, OS_LOG_TYPE_ERROR))
    {
      __100__DEDFeedbackAnalytics_logEventWithRequest_httpStatusCode_nsurlErrorCode_success_startedAt_endedAt___block_invoke_2_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  else
  {
    v13 = logEventWithRequest_httpStatusCode_nsurlErrorCode_success_startedAt_endedAt__NetworkLog;
    if (os_log_type_enabled(logEventWithRequest_httpStatusCode_nsurlErrorCode_success_startedAt_endedAt__NetworkLog, OS_LOG_TYPE_ERROR))
    {
      __100__DEDFeedbackAnalytics_logEventWithRequest_httpStatusCode_nsurlErrorCode_success_startedAt_endedAt___block_invoke_2_cold_2(v13, v14, v15, v16, v17, v18, v19, v20);
    }
  }

  v4 = @"Unknown";
LABEL_8:
  v21 = [*(a1 + 32) HTTPMethod];
  if (!v21)
  {
    v22 = logEventWithRequest_httpStatusCode_nsurlErrorCode_success_startedAt_endedAt__NetworkLog;
    if (os_log_type_enabled(logEventWithRequest_httpStatusCode_nsurlErrorCode_success_startedAt_endedAt__NetworkLog, OS_LOG_TYPE_ERROR))
    {
      __100__DEDFeedbackAnalytics_logEventWithRequest_httpStatusCode_nsurlErrorCode_success_startedAt_endedAt___block_invoke_2_cold_3(v22, v23, v24, v25, v26, v27, v28, v29);
    }

    v21 = @"Unknown";
  }

  v42[0] = @"api_route";
  v42[1] = @"method";
  v43[0] = v4;
  v43[1] = v21;
  v42[2] = @"http_status_code";
  v30 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 40)];
  v43[2] = v30;
  v42[3] = @"nsurl_error_code";
  v31 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 48)];
  v43[3] = v31;
  v42[4] = @"duration";
  v32 = [MEMORY[0x277CCABB0] numberWithDouble:{DEDTimeElapsed(*(a1 + 56), *(a1 + 64))}];
  v43[4] = v32;
  v42[5] = @"success";
  v33 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 72)];
  v43[5] = v33;
  v42[6] = @"process_name";
  v34 = +[DEDConstants processName];
  v43[6] = v34;
  v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:7];

  v36 = logEventWithRequest_httpStatusCode_nsurlErrorCode_success_startedAt_endedAt__NetworkLog;
  if (os_log_type_enabled(logEventWithRequest_httpStatusCode_nsurlErrorCode_success_startedAt_endedAt__NetworkLog, OS_LOG_TYPE_INFO))
  {
    v38 = 138543618;
    v39 = @"com.apple.feedback.networkEvent";
    v40 = 2114;
    v41 = v35;
    _os_log_impl(&dword_248AD7000, v36, OS_LOG_TYPE_INFO, "%{public}@: %{public}@", &v38, 0x16u);
  }

  return v35;
}

void __100__DEDFeedbackAnalytics_logEventWithRequest_httpStatusCode_nsurlErrorCode_success_startedAt_endedAt___block_invoke_34(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = logEventWithRequest_httpStatusCode_nsurlErrorCode_success_startedAt_endedAt__NetworkLog;
  v3 = os_log_type_enabled(logEventWithRequest_httpStatusCode_nsurlErrorCode_success_startedAt_endedAt__NetworkLog, OS_LOG_TYPE_DEFAULT);
  if (v1 == 1)
  {
    if (!v3)
    {
      return;
    }

    v5 = 138543362;
    v6 = @"com.apple.feedback.networkEvent";
    v4 = "%{public}@ is enabled";
  }

  else
  {
    if (!v3)
    {
      return;
    }

    v5 = 138543362;
    v6 = @"com.apple.feedback.networkEvent";
    v4 = "%{public}@ is NOT enabled";
  }

  _os_log_impl(&dword_248AD7000, v2, OS_LOG_TYPE_DEFAULT, v4, &v5, 0xCu);
}

+ (void)logDataLoadWithContentItemCount:(unint64_t)count formItemsCount:(unint64_t)itemsCount teamCount:(unint64_t)teamCount errorsCount:(unint64_t)errorsCount startedAt:(double)at endedAt:(double)endedAt
{
  if (logDataLoadWithContentItemCount_formItemsCount_teamCount_errorsCount_startedAt_endedAt__onceToken != -1)
  {
    +[DEDFeedbackAnalytics logDataLoadWithContentItemCount:formItemsCount:teamCount:errorsCount:startedAt:endedAt:];
  }

  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __111__DEDFeedbackAnalytics_logDataLoadWithContentItemCount_formItemsCount_teamCount_errorsCount_startedAt_endedAt___block_invoke_2;
  v20 = &__block_descriptor_80_e19___NSDictionary_8__0l;
  countCopy = count;
  itemsCountCopy = itemsCount;
  teamCountCopy = teamCount;
  errorsCountCopy = errorsCount;
  endedAtCopy = endedAt;
  atCopy = at;
  v14 = AnalyticsSendEventLazy();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __111__DEDFeedbackAnalytics_logDataLoadWithContentItemCount_formItemsCount_teamCount_errorsCount_startedAt_endedAt___block_invoke_54;
  block[3] = &__block_descriptor_33_e5_v8__0l;
  v16 = v14;
  if (logDataLoadWithContentItemCount_formItemsCount_teamCount_errorsCount_startedAt_endedAt__logOnceToken != -1)
  {
    dispatch_once(&logDataLoadWithContentItemCount_formItemsCount_teamCount_errorsCount_startedAt_endedAt__logOnceToken, block);
  }
}

uint64_t __111__DEDFeedbackAnalytics_logDataLoadWithContentItemCount_formItemsCount_teamCount_errorsCount_startedAt_endedAt___block_invoke()
{
  logDataLoadWithContentItemCount_formItemsCount_teamCount_errorsCount_startedAt_endedAt__DataLoadLog = os_log_create("com.apple.feedback.analytics", "data-load");

  return MEMORY[0x2821F96F8]();
}

id __111__DEDFeedbackAnalytics_logDataLoadWithContentItemCount_formItemsCount_teamCount_errorsCount_startedAt_endedAt___block_invoke_2(uint64_t a1)
{
  v16[6] = *MEMORY[0x277D85DE8];
  v15[0] = @"content_item_count";
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:*(a1 + 32)];
  v16[0] = v2;
  v15[1] = @"form_item_count";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:*(a1 + 40)];
  v16[1] = v3;
  v15[2] = @"team_count";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:*(a1 + 48)];
  v16[2] = v4;
  v15[3] = @"errors_count";
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:*(a1 + 56)];
  v16[3] = v5;
  v15[4] = @"total_duration";
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 64) - *(a1 + 72)];
  v16[4] = v6;
  v15[5] = @"process_name";
  v7 = +[DEDConstants processName];
  v16[5] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:6];

  v9 = logDataLoadWithContentItemCount_formItemsCount_teamCount_errorsCount_startedAt_endedAt__DataLoadLog;
  if (os_log_type_enabled(logDataLoadWithContentItemCount_formItemsCount_teamCount_errorsCount_startedAt_endedAt__DataLoadLog, OS_LOG_TYPE_INFO))
  {
    v11 = 138543618;
    v12 = @"com.apple.feedback.dataLoad";
    v13 = 2114;
    v14 = v8;
    _os_log_impl(&dword_248AD7000, v9, OS_LOG_TYPE_INFO, "%{public}@: %{public}@", &v11, 0x16u);
  }

  return v8;
}

void __111__DEDFeedbackAnalytics_logDataLoadWithContentItemCount_formItemsCount_teamCount_errorsCount_startedAt_endedAt___block_invoke_54(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = logDataLoadWithContentItemCount_formItemsCount_teamCount_errorsCount_startedAt_endedAt__DataLoadLog;
  v3 = os_log_type_enabled(logDataLoadWithContentItemCount_formItemsCount_teamCount_errorsCount_startedAt_endedAt__DataLoadLog, OS_LOG_TYPE_DEFAULT);
  if (v1 == 1)
  {
    if (!v3)
    {
      return;
    }

    v5 = 138543362;
    v6 = @"com.apple.feedback.dataLoad";
    v4 = "%{public}@ is enabled";
  }

  else
  {
    if (!v3)
    {
      return;
    }

    v5 = 138543362;
    v6 = @"com.apple.feedback.dataLoad";
    v4 = "%{public}@ is NOT enabled";
  }

  _os_log_impl(&dword_248AD7000, v2, OS_LOG_TYPE_DEFAULT, v4, &v5, 0xCu);
}

+ (void)logFBKBugSessionStartWithDeviceType:(id)type isRemote:(BOOL)remote success:(BOOL)success errorCode:(int64_t)code startedAt:(double)at getSessionEndedAt:(double)endedAt showExtensionsEndedAt:(double)extensionsEndedAt getStatusEndedAt:(double)self0
{
  typeCopy = type;
  if (logFBKBugSessionStartWithDeviceType_isRemote_success_errorCode_startedAt_getSessionEndedAt_showExtensionsEndedAt_getStatusEndedAt__onceToken != -1)
  {
    +[DEDFeedbackAnalytics logFBKBugSessionStartWithDeviceType:isRemote:success:errorCode:startedAt:getSessionEndedAt:showExtensionsEndedAt:getStatusEndedAt:];
  }

  v22 = MEMORY[0x277D85DD0];
  v23 = 3221225472;
  v24 = __154__DEDFeedbackAnalytics_logFBKBugSessionStartWithDeviceType_isRemote_success_errorCode_startedAt_getSessionEndedAt_showExtensionsEndedAt_getStatusEndedAt___block_invoke_2;
  v25 = &unk_278F664B8;
  atCopy = at;
  endedAtCopy = endedAt;
  extensionsEndedAtCopy = extensionsEndedAt;
  statusEndedAtCopy = statusEndedAt;
  v26 = typeCopy;
  remoteCopy = remote;
  successCopy = success;
  codeCopy = code;
  v18 = typeCopy;
  v19 = AnalyticsSendEventLazy();
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __154__DEDFeedbackAnalytics_logFBKBugSessionStartWithDeviceType_isRemote_success_errorCode_startedAt_getSessionEndedAt_showExtensionsEndedAt_getStatusEndedAt___block_invoke_76;
  v20[3] = &__block_descriptor_33_e5_v8__0l;
  v21 = v19;
  if (logFBKBugSessionStartWithDeviceType_isRemote_success_errorCode_startedAt_getSessionEndedAt_showExtensionsEndedAt_getStatusEndedAt__logOnceToken != -1)
  {
    dispatch_once(&logFBKBugSessionStartWithDeviceType_isRemote_success_errorCode_startedAt_getSessionEndedAt_showExtensionsEndedAt_getStatusEndedAt__logOnceToken, v20);
  }
}

uint64_t __154__DEDFeedbackAnalytics_logFBKBugSessionStartWithDeviceType_isRemote_success_errorCode_startedAt_getSessionEndedAt_showExtensionsEndedAt_getStatusEndedAt___block_invoke()
{
  logFBKBugSessionStartWithDeviceType_isRemote_success_errorCode_startedAt_getSessionEndedAt_showExtensionsEndedAt_getStatusEndedAt__Log = os_log_create("com.apple.feedback.analytics", "fbk-session");

  return MEMORY[0x2821F96F8]();
}

id __154__DEDFeedbackAnalytics_logFBKBugSessionStartWithDeviceType_isRemote_success_errorCode_startedAt_getSessionEndedAt_showExtensionsEndedAt_getStatusEndedAt___block_invoke_2(uint64_t a1)
{
  v21[8] = *MEMORY[0x277D85DE8];
  v2 = DEDTimeElapsed(*(a1 + 40), *(a1 + 48));
  v3 = DEDTimeElapsed(*(a1 + 48), *(a1 + 56));
  v4 = DEDTimeElapsed(*(a1 + 56), *(a1 + 64));
  v5 = @"Unknown";
  if (*(a1 + 32))
  {
    v5 = *(a1 + 32);
  }

  v21[0] = v5;
  v20[0] = @"device_type";
  v20[1] = @"is_remote";
  v6 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 80)];
  v21[1] = v6;
  v20[2] = @"success";
  v7 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 81)];
  v21[2] = v7;
  v20[3] = @"error_code";
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 72)];
  v21[3] = v8;
  v20[4] = @"process_name";
  v9 = +[DEDConstants processName];
  v21[4] = v9;
  v20[5] = @"session_time_interval";
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:v2];
  v21[5] = v10;
  v20[6] = @"show_extensions_time_interval";
  v11 = [MEMORY[0x277CCABB0] numberWithDouble:v3];
  v21[6] = v11;
  v20[7] = @"status_time_interval";
  v12 = [MEMORY[0x277CCABB0] numberWithDouble:v4];
  v21[7] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:8];

  v14 = logFBKBugSessionStartWithDeviceType_isRemote_success_errorCode_startedAt_getSessionEndedAt_showExtensionsEndedAt_getStatusEndedAt__Log;
  if (os_log_type_enabled(logFBKBugSessionStartWithDeviceType_isRemote_success_errorCode_startedAt_getSessionEndedAt_showExtensionsEndedAt_getStatusEndedAt__Log, OS_LOG_TYPE_INFO))
  {
    v16 = 138543618;
    v17 = @"com.apple.feedback.fbkSideSessionStart";
    v18 = 2114;
    v19 = v13;
    _os_log_impl(&dword_248AD7000, v14, OS_LOG_TYPE_INFO, "%{public}@: %{public}@", &v16, 0x16u);
  }

  return v13;
}

void __154__DEDFeedbackAnalytics_logFBKBugSessionStartWithDeviceType_isRemote_success_errorCode_startedAt_getSessionEndedAt_showExtensionsEndedAt_getStatusEndedAt___block_invoke_76(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = logFBKBugSessionStartWithDeviceType_isRemote_success_errorCode_startedAt_getSessionEndedAt_showExtensionsEndedAt_getStatusEndedAt__Log;
  v3 = os_log_type_enabled(logFBKBugSessionStartWithDeviceType_isRemote_success_errorCode_startedAt_getSessionEndedAt_showExtensionsEndedAt_getStatusEndedAt__Log, OS_LOG_TYPE_DEFAULT);
  if (v1 == 1)
  {
    if (!v3)
    {
      return;
    }

    v5 = 138543362;
    v6 = @"com.apple.feedback.fbkSideSessionStart";
    v4 = "%{public}@ is enabled";
  }

  else
  {
    if (!v3)
    {
      return;
    }

    v5 = 138543362;
    v6 = @"com.apple.feedback.fbkSideSessionStart";
    v4 = "%{public}@ is NOT enabled";
  }

  _os_log_impl(&dword_248AD7000, v2, OS_LOG_TYPE_DEFAULT, v4, &v5, 0xCu);
}

@end