@interface CDMAnalytics
+ (id)constructContextUpdateOutcome:(int)outcome numTurnsRollback:(int)rollback locale:(id)locale;
+ (void)recordCDMSetupFailureEvent:(id)event withError:(id)error;
+ (void)recordCDMSetupSuccessEvent:(id)event;
+ (void)recordContextUpdateOutcome:(int)outcome numTurnsRollback:(int)rollback locale:(id)locale;
+ (void)recordGraphFailureEvent:(id)event withError:(id)error;
+ (void)recordGraphSuccessEvent:(id)event withTopParserId:(id)id;
+ (void)recordReceivedNluRequestEvent:(id)event withNluRequest:(id)request;
@end

@implementation CDMAnalytics

+ (void)recordGraphFailureEvent:(id)event withError:(id)error
{
  v14 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  errorCopy = error;
  v7 = errorCopy;
  if (eventCopy)
  {
    if (errorCopy)
    {
      domain = [errorCopy domain];
      [v7 code];
    }

    else
    {
      domain = @"UnknownErrorDomain";
    }

    v10 = eventCopy;
    v11 = domain;
    v9 = domain;
    AnalyticsSendEventLazy();
  }

  else
  {
    v9 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v13 = "+[CDMAnalytics recordGraphFailureEvent:withError:]";
      _os_log_impl(&dword_1DC287000, v9, OS_LOG_TYPE_INFO, "%s [WARN]: Skipping recordGraphFailureEvent due to locale being nil.", buf, 0xCu);
    }
  }
}

id __50__CDMAnalytics_recordGraphFailureEvent_withError___block_invoke(void *a1)
{
  v6[4] = *MEMORY[0x1E69E9840];
  v5[0] = @"locale";
  v5[1] = @"wasSuccessful";
  v1 = a1[5];
  v6[0] = a1[4];
  v6[1] = MEMORY[0x1E695E110];
  v6[2] = v1;
  v5[2] = @"errorDomain";
  v5[3] = @"errorCode";
  v2 = [MEMORY[0x1E696AD98] numberWithInteger:a1[6]];
  v6[3] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:4];

  return v3;
}

+ (void)recordGraphSuccessEvent:(id)event withTopParserId:(id)id
{
  v14 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  idCopy = id;
  v7 = idCopy;
  if (!eventCopy)
  {
    v8 = CDMOSLoggerForCategory(0);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      goto LABEL_9;
    }

    *buf = 136315138;
    v13 = "+[CDMAnalytics recordGraphSuccessEvent:withTopParserId:]";
    v9 = "%s [WARN]: Skipping recordGraphSuccessEvent due to locale being nil.";
LABEL_8:
    _os_log_impl(&dword_1DC287000, v8, OS_LOG_TYPE_INFO, v9, buf, 0xCu);
    goto LABEL_9;
  }

  if (!idCopy)
  {
    v8 = CDMOSLoggerForCategory(0);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      goto LABEL_9;
    }

    *buf = 136315138;
    v13 = "+[CDMAnalytics recordGraphSuccessEvent:withTopParserId:]";
    v9 = "%s [WARN]: Skipping recordGraphSuccessEvent due to parserId being nil.";
    goto LABEL_8;
  }

  v10 = eventCopy;
  v11 = v7;
  AnalyticsSendEventLazy();

  v8 = v10;
LABEL_9:
}

id __56__CDMAnalytics_recordGraphSuccessEvent_withTopParserId___block_invoke(uint64_t a1)
{
  v5[3] = *MEMORY[0x1E69E9840];
  v4[0] = @"locale";
  v4[1] = @"wasSuccessful";
  v1 = *(a1 + 40);
  v5[0] = *(a1 + 32);
  v5[1] = MEMORY[0x1E695E118];
  v4[2] = @"topParseParserId";
  v5[2] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:3];

  return v2;
}

+ (void)recordCDMSetupFailureEvent:(id)event withError:(id)error
{
  v14 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  errorCopy = error;
  v7 = errorCopy;
  if (eventCopy)
  {
    if (errorCopy)
    {
      domain = [errorCopy domain];
      [v7 code];
    }

    else
    {
      domain = @"UnknownErrorDomain";
    }

    v10 = eventCopy;
    v11 = domain;
    v9 = domain;
    AnalyticsSendEventLazy();
  }

  else
  {
    v9 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v13 = "+[CDMAnalytics recordCDMSetupFailureEvent:withError:]";
      _os_log_impl(&dword_1DC287000, v9, OS_LOG_TYPE_INFO, "%s [WARN]: Skipping recordCDMSetupFailureEvent due to locale being nil.", buf, 0xCu);
    }
  }
}

id __53__CDMAnalytics_recordCDMSetupFailureEvent_withError___block_invoke(void *a1)
{
  v6[4] = *MEMORY[0x1E69E9840];
  v5[0] = @"locale";
  v5[1] = @"wasSuccessful";
  v1 = a1[5];
  v6[0] = a1[4];
  v6[1] = MEMORY[0x1E695E110];
  v6[2] = v1;
  v5[2] = @"errorDomain";
  v5[3] = @"errorCode";
  v2 = [MEMORY[0x1E696AD98] numberWithInteger:a1[6]];
  v6[3] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:4];

  return v3;
}

+ (void)recordCDMSetupSuccessEvent:(id)event
{
  v9 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  v4 = eventCopy;
  if (eventCopy)
  {
    v6 = eventCopy;
    AnalyticsSendEventLazy();
    v5 = v6;
  }

  else
  {
    v5 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v8 = "+[CDMAnalytics recordCDMSetupSuccessEvent:]";
      _os_log_impl(&dword_1DC287000, v5, OS_LOG_TYPE_INFO, "%s [WARN]: Skipping recordCDMSetupSuccessEvent due to locale being nil.", buf, 0xCu);
    }
  }
}

id __43__CDMAnalytics_recordCDMSetupSuccessEvent___block_invoke(uint64_t a1)
{
  v5[2] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v4[0] = @"locale";
  v4[1] = @"wasSuccessful";
  v5[0] = v1;
  v5[1] = MEMORY[0x1E695E118];
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:2];

  return v2;
}

+ (void)recordContextUpdateOutcome:(int)outcome numTurnsRollback:(int)rollback locale:(id)locale
{
  localeCopy = locale;
  v5 = localeCopy;
  AnalyticsSendEventLazy();
}

+ (id)constructContextUpdateOutcome:(int)outcome numTurnsRollback:(int)rollback locale:(id)locale
{
  v5 = *&rollback;
  v14[4] = *MEMORY[0x1E69E9840];
  if ((outcome - 1) > 2)
  {
    v6 = @"None";
  }

  else
  {
    v6 = off_1E862FA18[outcome - 1];
  }

  v14[0] = v6;
  v13[0] = @"reformType";
  v13[1] = @"numTurnsRollback";
  v7 = MEMORY[0x1E696AD98];
  localeCopy = locale;
  v9 = [v7 numberWithInt:v5];
  v14[1] = v9;
  v14[2] = @"success";
  v13[2] = @"status";
  v13[3] = @"locale";
  if (localeCopy)
  {
    v10 = localeCopy;
  }

  else
  {
    v10 = @"nil";
  }

  v14[3] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:4];

  return v11;
}

+ (void)recordReceivedNluRequestEvent:(id)event withNluRequest:(id)request
{
  v12 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  requestCopy = request;
  if (eventCopy)
  {
    v8 = eventCopy;
    v9 = requestCopy;
    AnalyticsSendEventLazy();

    v7 = v8;
  }

  else
  {
    v7 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v11 = "+[CDMAnalytics recordReceivedNluRequestEvent:withNluRequest:]";
      _os_log_impl(&dword_1DC287000, v7, OS_LOG_TYPE_INFO, "%s [WARN]: Skipping recordReceivedNluRequestEvent due to locale being nil.", buf, 0xCu);
    }
  }
}

id __61__CDMAnalytics_recordReceivedNluRequestEvent_withNluRequest___block_invoke(uint64_t a1)
{
  v9[2] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v8[0] = @"locale";
  v8[1] = @"previousTurnCount";
  v9[0] = v2;
  v3 = MEMORY[0x1E696AD98];
  v4 = [v1 previousTurnInputs];
  v5 = [v3 numberWithUnsignedInteger:{objc_msgSend(v4, "count")}];
  v9[1] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];

  return v6;
}

@end