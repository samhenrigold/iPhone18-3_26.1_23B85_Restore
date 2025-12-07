@interface SGMIFollowUpAnalyzer
+ (id)_analyzeFeatureVector:(id)vector withRegExpDictionary:(id)dictionary forOutgoingMail:(BOOL)mail withDetectedLanguage:(id)language withRegExLanguage:(id)exLanguage withCustomTimeRange:(BOOL)range;
+ (id)_analyzeForFollowUpMailWithBody:(id)body isSent:(BOOL)sent messageId:(id)id date:(id)date;
+ (id)analyzeBody:(id)body forLanguage:(id)language forDate:(id)date withCustomTimeRange:(BOOL)range;
+ (id)analyzeFeatureVector:(id)vector;
+ (id)analyzeForFollowUpMailWithBody:(id)body isSent:(BOOL)sent messageId:(id)id date:(id)date;
+ (id)analyzeIncomingMailFeatureVector:(id)vector;
+ (id)analyzeOutgoingMailFeatureVector:(id)vector;
+ (id)identifyFollowUpWarningFromSubject:(id)subject body:(id)body date:(id)date;
+ (void)logFollowUpStatsAndSetting;
+ (void)reportUserEngagement:(int64_t)engagement forWarning:(id)warning;
@end

@implementation SGMIFollowUpAnalyzer

+ (void)logFollowUpStatsAndSetting
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = +[SGSqlEntityStore defaultStore];
  sgmiFeatureStore = [v2 sgmiFeatureStore];
  v4 = [sgmiFeatureStore getNSDateForKey:@"lastSGMIFollowUpStatsAndSettingReportingDate"];
  if (v4)
  {
LABEL_2:
    [v4 timeIntervalSinceNow];
    if (v5 >= -2419200.0)
    {
      goto LABEL_15;
    }

    goto LABEL_8;
  }

  v6 = [v2 getNSDateForKey:@"lastSGMIFollowUpStatsAndSettingReportingDate"];
  if (v6)
  {
    v7 = v6;
    [sgmiFeatureStore setNSDate:v6 forKey:@"lastSGMIFollowUpStatsAndSettingReportingDate"];
    v4 = [sgmiFeatureStore getNSDateForKey:@"lastSGMIFollowUpStatsAndSettingReportingDate"];

    if (!v4)
    {
      goto LABEL_15;
    }

    [v2 deleteValueForKey:@"lastSGMIFollowUpStatsAndSettingReportingDate"];
    goto LABEL_2;
  }

  v4 = 0;
LABEL_8:
  sgmiFeatureStore2 = [v2 sgmiFeatureStore];
  followUpWarningStats = [sgmiFeatureStore2 followUpWarningStats];

  if (followUpWarningStats)
  {
    v10 = objc_alloc(MEMORY[0x277CBEBD0]);
    v11 = [v10 initWithSuiteName:*MEMORY[0x277D06D20]];
    v12 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v11, "BOOLForKey:", *MEMORY[0x277D06C70]) ^ 1}];
    v13 = sgMailIntelligenceLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      bOOLValue = [v12 BOOLValue];
      v15 = @"disabled";
      if (bOOLValue)
      {
        v15 = @"enabled";
      }

      *buf = 138412290;
      v22 = v15;
      _os_log_impl(&dword_231E60000, v13, OS_LOG_TYPE_DEFAULT, "SGMIFollowUpManager Sending an event to CoreAnalytics: FollowUp is %@", buf, 0xCu);
    }

    v18 = MEMORY[0x277D85DD0];
    v19 = v12;
    v20 = followUpWarningStats;
    v16 = v12;
    AnalyticsSendEventLazy();
    date = [MEMORY[0x277CBEAA8] date];
    [sgmiFeatureStore setNSDate:date forKey:@"lastSGMIFollowUpStatsAndSettingReportingDate"];
  }

LABEL_15:
}

id __50__SGMIFollowUpAnalyzer_logFollowUpStatsAndSetting__block_invoke(uint64_t a1)
{
  v10[4] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v10[0] = v3;
  v9[0] = @"enabled";
  v9[1] = @"positiveEngagement";
  v4 = [v2 positiveEngagement];
  v10[1] = v4;
  v9[2] = @"noEngagement";
  v5 = [*(a1 + 40) noEngagement];
  v10[2] = v5;
  v9[3] = @"negativeEngagement";
  v6 = [*(a1 + 40) negativeEngagement];
  v10[3] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:4];

  return v7;
}

+ (void)reportUserEngagement:(int64_t)engagement forWarning:(id)warning
{
  v16 = *MEMORY[0x277D85DE8];
  warningCopy = warning;
  v6 = sgMailIntelligenceLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v12[0] = &unk_2847493C8;
    v12[1] = &unk_2847493E0;
    v13[0] = @"positive";
    v13[1] = @"negative";
    v12[2] = &unk_2847493F8;
    v13[2] = @"no engagement";
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3];
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:engagement];
    v9 = [v7 objectForKeyedSubscript:v8];
    *buf = 138412290;
    engagementCopy = v9;
    _os_log_impl(&dword_231E60000, v6, OS_LOG_TYPE_DEFAULT, "SGMI received %@ feedback for follow up warning", buf, 0xCu);
  }

  if (engagement > 1)
  {
    v10 = sgMailIntelligenceLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      engagementCopy = engagement;
      _os_log_impl(&dword_231E60000, v10, OS_LOG_TYPE_DEFAULT, "[Follow Up] Engagement type %ld received is not supported.", buf, 0xCu);
    }
  }

  else
  {
    v10 = +[SGSqlEntityStore defaultStore];
    sgmiFeatureStore = [v10 sgmiFeatureStore];
    [sgmiFeatureStore incrementUserEngagement:engagement == 1 forFollowUpWarning:warningCopy];
  }
}

+ (id)analyzeIncomingMailFeatureVector:(id)vector
{
  v35[1] = *MEMORY[0x277D85DE8];
  vectorCopy = vector;
  v5 = +[SGMIConfig defaultConfig];
  mailMessage = [vectorCopy mailMessage];
  textContentLanguageIdentifier = [mailMessage textContentLanguageIdentifier];

  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  languageCode = [currentLocale languageCode];

  if (textContentLanguageIdentifier && ([v5 detectors], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "objectForKeyedSubscript:", textContentLanguageIdentifier), v11 = objc_claimAutoreleasedReturnValue(), v11, v10, v11))
  {
    v12 = textContentLanguageIdentifier;

    languageCode = v12;
  }

  else if (!languageCode)
  {
    goto LABEL_7;
  }

  detectors = [v5 detectors];
  v14 = [detectors objectForKeyedSubscript:languageCode];
  followUpOnIncomingMails = [v14 followUpOnIncomingMails];
  body = [followUpOnIncomingMails body];

  if (body)
  {
    v34 = &unk_2847493B0;
    detectors2 = [v5 detectors];
    v18 = [detectors2 objectForKeyedSubscript:languageCode];
    followUpOnIncomingMails2 = [v18 followUpOnIncomingMails];
    body2 = [followUpOnIncomingMails2 body];
    v35[0] = body2;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:&v34 count:1];

    goto LABEL_8;
  }

LABEL_7:
  v21 = MEMORY[0x277CBEC10];
LABEL_8:
  followUpWarningsParameters = [v5 followUpWarningsParameters];
  v23 = [followUpWarningsParameters objectForKeyedSubscript:languageCode];
  v24 = [v23 objectForKeyedSubscript:computeCustomTimeRange];
  bOOLValue = [v24 BOOLValue];

  v26 = [MEMORY[0x277D02098] followUpComputeCustomTimeRangeForLanguage:languageCode];

  if (v26)
  {
    v27 = [MEMORY[0x277D02098] followUpComputeCustomTimeRangeForLanguage:languageCode];
    bOOLValue = [v27 BOOLValue];

    v28 = sgMailIntelligenceLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = [MEMORY[0x277CCABB0] numberWithBool:bOOLValue];
      v32 = 138412290;
      v33 = v29;
      _os_log_impl(&dword_231E60000, v28, OS_LOG_TYPE_DEFAULT, "[Follow Up] CustomTimeRange behavior specified in asset overriden by default setting. Value: %@", &v32, 0xCu);
    }
  }

  v30 = [self _analyzeFeatureVector:vectorCopy withRegExpDictionary:v21 forOutgoingMail:0 withDetectedLanguage:textContentLanguageIdentifier withRegExLanguage:languageCode withCustomTimeRange:bOOLValue];

  return v30;
}

+ (id)analyzeOutgoingMailFeatureVector:(id)vector
{
  v48 = *MEMORY[0x277D85DE8];
  vectorCopy = vector;
  v5 = +[SGMIConfig defaultConfig];
  if (v5)
  {
    v6 = objc_opt_new();
    mailMessage = [vectorCopy mailMessage];
    textContentLanguageIdentifier = [mailMessage textContentLanguageIdentifier];

    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    languageCode = [currentLocale languageCode];

    if (textContentLanguageIdentifier && ([v5 detectors], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "objectForKeyedSubscript:", textContentLanguageIdentifier), v12 = objc_claimAutoreleasedReturnValue(), v12, v11, v12))
    {
      v13 = textContentLanguageIdentifier;

      languageCode = v13;
    }

    else if (!languageCode)
    {
LABEL_10:
      v30 = sgMailIntelligenceLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v31 = [v6 description];
        v42 = 138412802;
        v43 = textContentLanguageIdentifier;
        v44 = 2112;
        v45 = languageCode;
        v46 = 2112;
        v47 = v31;
        _os_log_impl(&dword_231E60000, v30, OS_LOG_TYPE_DEFAULT, "Follow Up. [analyzeOutgoingMailFeatureVector] detectedLanguage: %@ regExLanguage %@ regexes loaded: %@", &v42, 0x20u);
      }

      followUpWarningsParameters = [v5 followUpWarningsParameters];
      v33 = [followUpWarningsParameters objectForKeyedSubscript:languageCode];
      v34 = [v33 objectForKeyedSubscript:computeCustomTimeRange];
      bOOLValue = [v34 BOOLValue];

      v36 = [MEMORY[0x277D02098] followUpComputeCustomTimeRangeForLanguage:languageCode];

      if (v36)
      {
        v37 = [MEMORY[0x277D02098] followUpComputeCustomTimeRangeForLanguage:languageCode];
        bOOLValue = [v37 BOOLValue];

        v38 = sgMailIntelligenceLogHandle();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          v39 = [MEMORY[0x277CCABB0] numberWithBool:bOOLValue];
          v42 = 138412290;
          v43 = v39;
          _os_log_impl(&dword_231E60000, v38, OS_LOG_TYPE_DEFAULT, "[Follow Up] CustomTimeRange behavior specified in asset overriden by default setting. Value: %@", &v42, 0xCu);
        }
      }

      v40 = [self _analyzeFeatureVector:vectorCopy withRegExpDictionary:v6 forOutgoingMail:1 withDetectedLanguage:textContentLanguageIdentifier withRegExLanguage:languageCode withCustomTimeRange:bOOLValue];

      goto LABEL_20;
    }

    detectors = [v5 detectors];
    v15 = [detectors objectForKeyedSubscript:languageCode];
    followUpOnOutgoingMailsQuestions = [v15 followUpOnOutgoingMailsQuestions];
    body = [followUpOnOutgoingMailsQuestions body];

    if (body)
    {
      detectors2 = [v5 detectors];
      v19 = [detectors2 objectForKeyedSubscript:languageCode];
      followUpOnOutgoingMailsQuestions2 = [v19 followUpOnOutgoingMailsQuestions];
      body2 = [followUpOnOutgoingMailsQuestions2 body];
      [v6 setObject:body2 forKeyedSubscript:&unk_284749320];
    }

    detectors3 = [v5 detectors];
    v23 = [detectors3 objectForKeyedSubscript:languageCode];
    followUpOnOutgoingMailsAsks = [v23 followUpOnOutgoingMailsAsks];
    body3 = [followUpOnOutgoingMailsAsks body];

    if (body3)
    {
      detectors4 = [v5 detectors];
      v27 = [detectors4 objectForKeyedSubscript:languageCode];
      followUpOnOutgoingMailsAsks2 = [v27 followUpOnOutgoingMailsAsks];
      body4 = [followUpOnOutgoingMailsAsks2 body];
      [v6 setObject:body4 forKeyedSubscript:&unk_284749338];
    }

    goto LABEL_10;
  }

  v6 = sgMailIntelligenceLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v42) = 0;
    _os_log_impl(&dword_231E60000, v6, OS_LOG_TYPE_DEFAULT, "Follow Up. [analyzeOutgoingMailFeatureVector] nil config. Follow Up processing aborted.", &v42, 2u);
  }

  v40 = 0;
LABEL_20:

  return v40;
}

+ (id)_analyzeForFollowUpMailWithBody:(id)body isSent:(BOOL)sent messageId:(id)id date:(id)date
{
  sentCopy = sent;
  v32 = *MEMORY[0x277D85DE8];
  bodyCopy = body;
  idCopy = id;
  dateCopy = date;
  v12 = dateCopy;
  if (bodyCopy && idCopy && dateCopy)
  {
    v23[0] = bodyCopy;
    v22[0] = @"body";
    v22[1] = @"isSent";
    v13 = [MEMORY[0x277CCABB0] numberWithBool:sentCopy];
    v23[1] = v13;
    v23[2] = idCopy;
    v22[2] = @"messageId";
    v22[3] = @"appleMailMessageId";
    v22[4] = @"date";
    v23[3] = &stru_284703F00;
    v23[4] = v12;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:5];

    v15 = [[SGSimpleMailMessage alloc] initWithMessageDictionary:v14];
    v16 = [SGMIFeatureVector alloc];
    v17 = +[SGSqlEntityStore defaultStore];
    v18 = [(SGMIFeatureVector *)v16 initWithMessageId:idCopy hasHashedMessageId:0 simpleMailMessage:v15 senderConnectionScore:&unk_284749350 biomeMessageSummary:0 store:v17 preLoadedFeatureNames:&unk_28474A5A0];

    v19 = [SGMIFollowUpAnalyzer analyzeFeatureVector:v18];
  }

  else
  {
    v14 = sgMailIntelligenceLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [MEMORY[0x277CCABB0] numberWithInt:bodyCopy == 0];
      *buf = 138740739;
      v25 = bodyCopy;
      v26 = 2112;
      v27 = v20;
      v28 = 2112;
      v29 = idCopy;
      v30 = 2112;
      v31 = v12;
      _os_log_impl(&dword_231E60000, v14, OS_LOG_TYPE_DEFAULT, "Follow Up. [analyzeForFollowUpMailWithBody:isSent:messageId:date] Can't initialize mailDictionary: nil object. body: %{sensitive}@, isNil_body: %@, messageId: %@, date: %@", buf, 0x2Au);
    }

    v19 = 0;
  }

  return v19;
}

+ (id)analyzeForFollowUpMailWithBody:(id)body isSent:(BOOL)sent messageId:(id)id date:(id)date
{
  bodyCopy = body;
  idCopy = id;
  dateCopy = date;
  if (analyzeForFollowUpMailWithBody_isSent_messageId_date___pasOnceToken30 != -1)
  {
    dispatch_once(&analyzeForFollowUpMailWithBody_isSent_messageId_date___pasOnceToken30, &__block_literal_global_9529);
  }

  v13 = analyzeForFollowUpMailWithBody_isSent_messageId_date___pasExprOnceResult;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__9530;
  v38 = __Block_byref_object_dispose__9531;
  v39 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__SGMIFollowUpAnalyzer_analyzeForFollowUpMailWithBody_isSent_messageId_date___block_invoke_2;
  block[3] = &unk_27894CCD0;
  v31 = &v34;
  selfCopy = self;
  v14 = bodyCopy;
  v28 = v14;
  sentCopy = sent;
  v15 = idCopy;
  v29 = v15;
  v16 = dateCopy;
  v30 = v16;
  v17 = dispatch_block_create(0, block);
  dispatch_async(v13, v17);
  if ([MEMORY[0x277D425A0] waitForBlock:v17 timeoutSeconds:0.25] == 1)
  {
    v18 = sgMailIntelligenceLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_231E60000, v18, OS_LOG_TYPE_ERROR, "SGMIFollowUpAnalyzer: Mail Intelligence's SPI back end timed out", buf, 2u);
    }

    if (analyzeForFollowUpMailWithBody_isSent_messageId_date___pasOnceToken32 != -1)
    {
      dispatch_once(&analyzeForFollowUpMailWithBody_isSent_messageId_date___pasOnceToken32, &__block_literal_global_95);
    }

    v19 = analyzeForFollowUpMailWithBody_isSent_messageId_date___pasExprOnceResult_92;
    v20 = MEMORY[0x277D425A0];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __77__SGMIFollowUpAnalyzer_analyzeForFollowUpMailWithBody_isSent_messageId_date___block_invoke_2_97;
    v23[3] = &unk_278955EE8;
    v25 = v17;
    v24 = v14;
    [v20 runAsyncOnQueue:v19 afterDelaySeconds:v23 block:5.0];

    v21 = 0;
  }

  else
  {
    v21 = v35[5];
  }

  _Block_object_dispose(&v34, 8);

  return v21;
}

uint64_t __77__SGMIFollowUpAnalyzer_analyzeForFollowUpMailWithBody_isSent_messageId_date___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 64) _analyzeForFollowUpMailWithBody:*(a1 + 32) isSent:*(a1 + 72) messageId:*(a1 + 40) date:*(a1 + 48)];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

void *__77__SGMIFollowUpAnalyzer_analyzeForFollowUpMailWithBody_isSent_messageId_date___block_invoke_2_97(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  result = [MEMORY[0x277D425A0] waitForBlock:*(a1 + 40) timeoutSeconds:0.0];
  if (result == 1)
  {
    v3 = sgMailIntelligenceLogHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      v4 = [*(a1 + 32) length];
      v5 = 134217984;
      v6 = v4;
      _os_log_fault_impl(&dword_231E60000, v3, OS_LOG_TYPE_FAULT, "SGMIFollowUpAnalyzer: Mail Intelligence's SPI back took over 5 seconds on a %tu-lengthed content: we have to xpc_transaction_exit_clean", &v5, 0xCu);
    }

    return xpc_transaction_exit_clean();
  }

  return result;
}

void __77__SGMIFollowUpAnalyzer_analyzeForFollowUpMailWithBody_isSent_messageId_date___block_invoke_93()
{
  v0 = objc_autoreleasePoolPush();
  v1 = dispatch_queue_create("SGMIFollowUpAnalyzer-timeout", 0);
  v2 = analyzeForFollowUpMailWithBody_isSent_messageId_date___pasExprOnceResult_92;
  analyzeForFollowUpMailWithBody_isSent_messageId_date___pasExprOnceResult_92 = v1;

  objc_autoreleasePoolPop(v0);
}

void __77__SGMIFollowUpAnalyzer_analyzeForFollowUpMailWithBody_isSent_messageId_date___block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = dispatch_queue_create("SGMIFollowUpAnalyzer-processing", 0);
  v2 = analyzeForFollowUpMailWithBody_isSent_messageId_date___pasExprOnceResult;
  analyzeForFollowUpMailWithBody_isSent_messageId_date___pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

+ (id)identifyFollowUpWarningFromSubject:(id)subject body:(id)body date:(id)date
{
  v21 = *MEMORY[0x277D85DE8];
  subjectCopy = subject;
  bodyCopy = body;
  dateCopy = date;
  v11 = sgMailIntelligenceLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138740483;
    v16 = subjectCopy;
    v17 = 2117;
    v18 = bodyCopy;
    v19 = 2117;
    v20 = dateCopy;
    _os_log_impl(&dword_231E60000, v11, OS_LOG_TYPE_DEFAULT, "Follow Up. [identifyFollowUpWarningFromSubject:body:date] Computing warning for subject: %{sensitive}@ body:%{sensitive}@ date:%{sensitive}@", &v15, 0x20u);
  }

  if (dateCopy)
  {
    v12 = [self analyzeForFollowUpMailWithBody:bodyCopy isSent:1 messageId:&stru_284703F00 date:dateCopy];
  }

  else
  {
    v13 = [MEMORY[0x277CBEAA8] now];
    v12 = [self analyzeForFollowUpMailWithBody:bodyCopy isSent:1 messageId:&stru_284703F00 date:v13];
  }

  return v12;
}

+ (id)_analyzeFeatureVector:(id)vector withRegExpDictionary:(id)dictionary forOutgoingMail:(BOOL)mail withDetectedLanguage:(id)language withRegExLanguage:(id)exLanguage withCustomTimeRange:(BOOL)range
{
  rangeCopy = range;
  mailCopy = mail;
  v131 = *MEMORY[0x277D85DE8];
  vectorCopy = vector;
  dictionaryCopy = dictionary;
  languageCopy = language;
  exLanguageCopy = exLanguage;
  v13 = sgMailIntelligenceLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    messageId = [vectorCopy messageId];
    v15 = [MEMORY[0x277CCABB0] numberWithBool:rangeCopy];
    *buf = 138412803;
    *&buf[4] = messageId;
    *&buf[12] = 2117;
    *&buf[14] = vectorCopy;
    *&buf[22] = 2112;
    v129 = v15;
    _os_log_impl(&dword_231E60000, v13, OS_LOG_TYPE_DEFAULT, "Follow Up. [_analyzeFeatureVector] Analyze Feature Vector for messageId %@. Feature Vector: %{sensitive}@ with CustomRange %@", buf, 0x20u);
  }

  v16 = +[SGMIConfig defaultConfig];
  v17 = sgMailIntelligenceLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = v16;
    _os_log_impl(&dword_231E60000, v17, OS_LOG_TYPE_DEFAULT, "Follow Up. [_analyzeFeatureVector] SGMIConfig loaded: %@", buf, 0xCu);
  }

  mailMessage = [vectorCopy mailMessage];
  textContent = [mailMessage textContent];

  v89 = exLanguageCopy;
  if (dictionaryCopy && v16 && textContent)
  {
    followUpWarningsParameters = [v16 followUpWarningsParameters];
    v86 = [followUpWarningsParameters objectForKeyedSubscript:safeguardingQuotedRegionsRegex];

    v85 = [objc_alloc(MEMORY[0x277CCAC68]) initWithPattern:v86 options:1 error:0];
    v21 = [v85 firstMatchInString:textContent options:0 range:{0, objc_msgSend(textContent, "length")}];
    v84 = v21;
    if (v21)
    {
      range = [v21 range];
    }

    else
    {
      range = [textContent length];
    }

    v25 = [textContent substringToIndex:range];

    textContent = [v25 stringByReplacingOccurrencesOfString:@"’" withString:@"'"];

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v129 = __Block_byref_object_copy__9530;
    *&v130 = __Block_byref_object_dispose__9531;
    *(&v130 + 1) = 0;
    v114 = 0;
    v115 = &v114;
    v116 = 0x3032000000;
    v117 = __Block_byref_object_copy__9530;
    v118 = __Block_byref_object_dispose__9531;
    mailMessage2 = [vectorCopy mailMessage];
    date = [mailMessage2 date];
    v28 = date;
    if (date)
    {
      v29 = date;
    }

    else
    {
      v29 = [MEMORY[0x277CBEAA8] now];
    }

    v119 = v29;

    v108 = 0;
    v109 = &v108;
    v110 = 0x3032000000;
    v111 = __Block_byref_object_copy__9530;
    v112 = __Block_byref_object_dispose__9531;
    v30 = v115[5];
    [v16 defaultTimeIntervalToStartWarningExposition];
    v113 = [v30 dateByAddingTimeInterval:?];
    v106[0] = 0;
    v106[1] = v106;
    v106[2] = 0x3032000000;
    v106[3] = __Block_byref_object_copy__9530;
    v106[4] = __Block_byref_object_dispose__9531;
    v107 = v109[5];
    if ([textContent length])
    {
      v31 = objc_autoreleasePoolPush();
      v32 = [objc_alloc(MEMORY[0x277CCAB58]) initWithIndexesInRange:{0, objc_msgSend(textContent, "length")}];
      mailMessage3 = [vectorCopy mailMessage];
      quotedRegions = [mailMessage3 quotedRegions];
      [v32 removeIndexes:quotedRegions];

      v92[0] = MEMORY[0x277D85DD0];
      v92[1] = 3221225472;
      v92[2] = __142__SGMIFollowUpAnalyzer__analyzeFeatureVector_withRegExpDictionary_forOutgoingMail_withDetectedLanguage_withRegExLanguage_withCustomTimeRange___block_invoke;
      v92[3] = &unk_27894CCA8;
      v35 = v32;
      v93 = v35;
      v94 = textContent;
      v104 = rangeCopy;
      v95 = vectorCopy;
      v100 = v106;
      v101 = &v108;
      v96 = v16;
      v97 = v89;
      v102 = &v114;
      v105 = mailCopy;
      v103 = buf;
      v98 = v97;
      v99 = languageCopy;
      [dictionaryCopy enumerateKeysAndObjectsUsingBlock:v92];

      objc_autoreleasePoolPop(v31);
    }

    snippet = [*(*&buf[8] + 40) snippet];
    if (!snippet)
    {
      goto LABEL_27;
    }

    signature = [*(*&buf[8] + 40) signature];
    if (signature)
    {
      detectedLanguage = [*(*&buf[8] + 40) detectedLanguage];
      if (detectedLanguage)
      {
        startDate = [*(*&buf[8] + 40) startDate];
        v40 = startDate == 0;

        if (!v40)
        {
          v41 = sgMailIntelligenceLogHandle();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            v42 = *(*&buf[8] + 40);
            *v120 = 138739971;
            v121 = v42;
            _os_log_impl(&dword_231E60000, v41, OS_LOG_TYPE_DEFAULT, "Follow Up. [_analyzeFeatureVector] Exiting the method. Warning found %{sensitive}@", v120, 0xCu);
          }

LABEL_30:

          followUpTimeRangeForDebugging = [MEMORY[0x277D02098] followUpTimeRangeForDebugging];
          v56 = objc_msgSend_count(followUpTimeRangeForDebugging) == 0;

          if (!v56)
          {
            v57 = sgMailIntelligenceLogHandle();
            if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
            {
              v58 = *(*&buf[8] + 40);
              *v120 = 138739971;
              v121 = v58;
              _os_log_impl(&dword_231E60000, v57, OS_LOG_TYPE_DEFAULT, "Follow Up. [_analyzeFeatureVector] followUpTimeRangeForDebugging was set in defaults settings. Overriding the custom time range for warning %{sensitive}@", v120, 0xCu);
            }

            [v16 defaultTimeIntervalToStartWarningExposition];
            v60 = v59;
            [v16 defaultTimeIntervalForAWarning];
            v62 = v61;
            followUpTimeRangeForDebugging2 = [MEMORY[0x277D02098] followUpTimeRangeForDebugging];
            v64 = [followUpTimeRangeForDebugging2 objectForKeyedSubscript:@"startOffset"];

            if (v64)
            {
              followUpTimeRangeForDebugging3 = [MEMORY[0x277D02098] followUpTimeRangeForDebugging];
              v66 = [followUpTimeRangeForDebugging3 objectForKeyedSubscript:@"startOffset"];
              [v66 doubleValue];
              v60 = v67;
            }

            followUpTimeRangeForDebugging4 = [MEMORY[0x277D02098] followUpTimeRangeForDebugging];
            v69 = [followUpTimeRangeForDebugging4 objectForKeyedSubscript:@"endOffset"];

            if (v69)
            {
              followUpTimeRangeForDebugging5 = [MEMORY[0x277D02098] followUpTimeRangeForDebugging];
              v71 = [followUpTimeRangeForDebugging5 objectForKeyedSubscript:@"endOffset"];
              [v71 doubleValue];
              v62 = v72;
            }

            v73 = [v115[5] dateByAddingTimeInterval:v60];
            v74 = [v73 dateByAddingTimeInterval:v62];
            type = [*(*&buf[8] + 40) type];
            v76 = objc_alloc(MEMORY[0x277D02018]);
            snippet2 = [*(*&buf[8] + 40) snippet];
            core = [*(*&buf[8] + 40) core];
            signature2 = [*(*&buf[8] + 40) signature];
            v80 = [v76 initWithSnippet:snippet2 core:core signature:signature2 detectedLanguage:languageCopy isIncomingMessage:!mailCopy score:&unk_284749398 startDate:v73 startDateCore:0 endDate:v74 endDateCore:0];
            v81 = *(*&buf[8] + 40);
            *(*&buf[8] + 40) = v80;

            [*(*&buf[8] + 40) setType:type];
          }

          v24 = *(*&buf[8] + 40);
          _Block_object_dispose(v106, 8);

          _Block_object_dispose(&v108, 8);
          _Block_object_dispose(&v114, 8);

          _Block_object_dispose(buf, 8);
          v23 = v86;
          goto LABEL_39;
        }

LABEL_27:
        v43 = sgMailIntelligenceLogHandle();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          v44 = MEMORY[0x277CCABB0];
          snippet3 = [*(*&buf[8] + 40) snippet];
          v45 = [v44 numberWithInt:snippet3 == 0];
          v46 = MEMORY[0x277CCABB0];
          signature3 = [*(*&buf[8] + 40) signature];
          v48 = [v46 numberWithInt:signature3 == 0];
          v49 = MEMORY[0x277CCABB0];
          detectedLanguage2 = [*(*&buf[8] + 40) detectedLanguage];
          v51 = [v49 numberWithInt:detectedLanguage2 == 0];
          v52 = MEMORY[0x277CCABB0];
          startDate2 = [*(*&buf[8] + 40) startDate];
          v54 = [v52 numberWithInt:startDate2 == 0];
          *v120 = 138413058;
          v121 = v45;
          v122 = 2112;
          v123 = v48;
          v124 = 2112;
          v125 = v51;
          v126 = 2112;
          v127 = v54;
          _os_log_impl(&dword_231E60000, v43, OS_LOG_TYPE_DEFAULT, "Follow Up. [_analyzeFeatureVector] Warning not raised, as one of the following is nil. isNil_snippet: %@, isNil_signature: %@, isNil_detectedLanguage: %@, isNil_startDate: %@", v120, 0x2Au);
        }

        v41 = *(*&buf[8] + 40);
        *(*&buf[8] + 40) = 0;
        goto LABEL_30;
      }
    }

    goto LABEL_27;
  }

  v23 = sgMailIntelligenceLogHandle();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413059;
    *&buf[4] = v89;
    *&buf[12] = 2112;
    *&buf[14] = v16;
    *&buf[22] = 2117;
    v129 = textContent;
    LOWORD(v130) = 2112;
    *(&v130 + 2) = dictionaryCopy;
    _os_log_impl(&dword_231E60000, v23, OS_LOG_TYPE_DEFAULT, "Follow Up. [_analyzeFeatureVector] Aborting computation. Language %@, Config %@, Body %{sensitive}@, RegExpDictionary %@", buf, 0x2Au);
  }

  v24 = 0;
LABEL_39:

  return v24;
}

void __142__SGMIFollowUpAnalyzer__analyzeFeatureVector_withRegExpDictionary_forOutgoingMail_withDetectedLanguage_withRegExLanguage_withCustomTimeRange___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v33 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = sgMailIntelligenceLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v32 = v8;
    _os_log_impl(&dword_231E60000, v9, OS_LOG_TYPE_DEFAULT, "Follow Up. [_analyzeFeatureVector][RegEx loop] Checking for a match in RegEx: %@", buf, 0xCu);
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __142__SGMIFollowUpAnalyzer__analyzeFeatureVector_withRegExpDictionary_forOutgoingMail_withDetectedLanguage_withRegExLanguage_withCustomTimeRange___block_invoke_60;
  v19[3] = &unk_27894CC80;
  v20 = v8;
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v29 = *(a1 + 120);
  v12 = *(a1 + 48);
  v26 = *(a1 + 88);
  v13 = *(a1 + 56);
  v14 = *(a1 + 64);
  *&v15 = v13;
  *(&v15 + 1) = v14;
  *&v16 = v11;
  *(&v16 + 1) = v12;
  v21 = v16;
  v22 = v15;
  v30 = *(a1 + 121);
  v27 = *(a1 + 104);
  v23 = *(a1 + 72);
  v24 = *(a1 + 80);
  v25 = v7;
  v28 = a4;
  v17 = v7;
  v18 = v8;
  [v10 enumerateRangesUsingBlock:v19];
}

void __142__SGMIFollowUpAnalyzer__analyzeFeatureVector_withRegExpDictionary_forOutgoingMail_withDetectedLanguage_withRegExLanguage_withCustomTimeRange___block_invoke_60(uint64_t a1, NSUInteger a2, NSUInteger a3, _BYTE *a4)
{
  v128 = *MEMORY[0x277D85DE8];
  v95.length = a3;
  context = objc_autoreleasePoolPush();
  v95.location = a2;
  v97 = [*(a1 + 32) matchForString:*(a1 + 40) withinRange:{__PAIR128__(v95.length, a2)}];
  v114 = 0;
  v115 = &v114;
  v116 = 0x3010000000;
  v118 = 0;
  v119 = 0;
  v117 = "";
  v118 = [v97 range];
  v119 = v6;
  v7 = sgMailIntelligenceLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138739971;
    *(&buf + 4) = v97;
    _os_log_impl(&dword_231E60000, v7, OS_LOG_TYPE_DEFAULT, "Follow Up. [_analyzeFeatureVector] Match found: %{sensitive}@", &buf, 0xCu);
  }

  v8 = v97;
  if (v97)
  {
    v8 = v97;
    if ([v97 location] != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (*(a1 + 136) == 1)
      {
        v9 = sgMailIntelligenceLogHandle();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 138739971;
          *(&buf + 4) = v97;
          _os_log_impl(&dword_231E60000, v9, OS_LOG_TYPE_DEFAULT, "Follow Up. [_analyzeFeatureVector] Match valid: %{sensitive}@", &buf, 0xCu);
        }

        v10 = [v97 location];
        v11 = [v97 range];
        v130.length = v12 + v11 + 64;
        v129.location = a2;
        v129.length = v95.length;
        v130.location = v10;
        v13 = NSIntersectionRange(v129, v130);
        v14 = sgMailIntelligenceLogHandle();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = *(a1 + 40);
          v16 = [v97 range];
          v18 = [v15 substringWithRange:{v16, v17}];
          LODWORD(buf) = 138739971;
          *(&buf + 4) = v18;
          _os_log_impl(&dword_231E60000, v14, OS_LOG_TYPE_DEFAULT, "Follow Up. [_analyzeFeatureVector] Looking for a potential time reference in: %{sensitive}@", &buf, 0xCu);
        }

        if (v13.length)
        {
          v19 = [*(a1 + 40) substringWithRange:{v13.location, v13.length}];
          v20 = [*(a1 + 48) mailMessage];
          v21 = [v20 date];
          v22 = [SGDataDetectorMatch detectionsInPlainText:v19 baseDate:v21];
          v93 = v19;

          v23 = sgMailIntelligenceLogHandle();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf) = 0;
            _os_log_impl(&dword_231E60000, v23, OS_LOG_TYPE_DEFAULT, "Follow Up. [_analyzeFeatureVector] Exploring Data Detector matches.", &buf, 2u);
          }

          *&buf = 0;
          *(&buf + 1) = &buf;
          v124 = 0x3032000000;
          v125 = __Block_byref_object_copy__9530;
          v126 = __Block_byref_object_dispose__9531;
          v127 = [MEMORY[0x277CBEAA8] distantFuture];
          v110 = 0u;
          v111 = 0u;
          v112 = 0u;
          v113 = 0u;
          v24 = v22;
          v25 = [v24 countByEnumeratingWithState:&v110 objects:v122 count:16];
          if (v25)
          {
            v26 = *v111;
            do
            {
              for (i = 0; i != v25; ++i)
              {
                if (*v111 != v26)
                {
                  objc_enumerationMutation(v24);
                }

                if ([*(*(&v110 + 1) + 8 * i) matchType] == 3)
                {
                  v28 = [v24 objectAtIndexedSubscript:0];
                  v29 = [v28 detectedDate];
                  v30 = *(*(a1 + 96) + 8);
                  v31 = *(v30 + 40);
                  *(v30 + 40) = v29;

                  if ([*(*(*(a1 + 96) + 8) + 40) compare:*(*(&buf + 1) + 40)] == -1)
                  {
                    v33 = *(*(a1 + 96) + 8);
                    v32 = *(&buf + 1);
                  }

                  else
                  {
                    v32 = *(&buf + 1);
                    v33 = *(&buf + 1);
                  }

                  objc_storeStrong((v32 + 40), *(v33 + 40));
                  location = v115[2].location;
                  length = v115[2].length;
                  v36 = [v24 objectAtIndexedSubscript:0];
                  v37 = [v36 range];
                  v39 = v38;

                  v40 = v37 + v39;
                  v41 = v115;
                  if (length > v37 + v39)
                  {
                    v40 = length;
                  }

                  v115[2].location = location;
                  v41[2].length = v40;
                }
              }

              v25 = [v24 countByEnumeratingWithState:&v110 objects:v122 count:16];
            }

            while (v25);
          }

          v42 = *(*(&buf + 1) + 40);
          v43 = [*(a1 + 48) mailMessage];
          v44 = [v43 date];
          v45 = [v42 compare:v44] == -1;

          if (v45)
          {
            objc_storeStrong((*(&buf + 1) + 40), *(*(*(a1 + 104) + 8) + 40));
          }

          v46 = sgMailIntelligenceLogHandle();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
          {
            v47 = *(*(*(a1 + 96) + 8) + 40);
            *v120 = 138739971;
            v121 = v47;
            _os_log_impl(&dword_231E60000, v46, OS_LOG_TYPE_DEFAULT, "Follow Up. [_analyzeFeatureVector] Exploration Data Detector matches finished. Warning start date %{sensitive}@", v120, 0xCu);
          }

          v48 = sgMailIntelligenceLogHandle();
          if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
          {
            *v120 = 0;
            _os_log_impl(&dword_231E60000, v48, OS_LOG_TYPE_DEFAULT, "Follow Up. [_analyzeFeatureVector] Exploring Data Detector Mapped Additions matches.", v120, 2u);
          }

          v49 = [*(a1 + 56) detectors];
          v50 = [v49 objectForKeyedSubscript:*(a1 + 64)];
          v51 = [v50 followUpOnIncomingMails];
          v52 = [v51 dataDetectorMappedAdditions];
          v104[0] = MEMORY[0x277D85DD0];
          v104[1] = 3221225472;
          v104[2] = __142__SGMIFollowUpAnalyzer__analyzeFeatureVector_withRegExpDictionary_forOutgoingMail_withDetectedLanguage_withRegExLanguage_withCustomTimeRange___block_invoke_62;
          v104[3] = &unk_27894CC30;
          v53 = v93;
          v54 = *(a1 + 96);
          v105 = v53;
          v107 = v54;
          v106 = *(a1 + 48);
          p_buf = &buf;
          v109 = &v114;
          [v52 enumerateKeysAndObjectsUsingBlock:v104];

          v55 = sgMailIntelligenceLogHandle();
          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
          {
            v56 = *(*(*(a1 + 96) + 8) + 40);
            *v120 = 138739971;
            v121 = v56;
            _os_log_impl(&dword_231E60000, v55, OS_LOG_TYPE_DEFAULT, "Follow Up. [_analyzeFeatureVector] Exploration Data Detector Mapped Additions matches finished. Warning start date %{sensitive}@", v120, 0xCu);
          }

          v57 = sgMailIntelligenceLogHandle();
          if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
          {
            *v120 = 0;
            _os_log_impl(&dword_231E60000, v57, OS_LOG_TYPE_DEFAULT, "Follow Up. [_analyzeFeatureVector] Exploring Data Detector Additions matches.", v120, 2u);
          }

          v58 = [*(a1 + 56) detectors];
          v59 = [v58 objectForKeyedSubscript:*(a1 + 64)];
          v60 = [v59 followUpOnIncomingMails];
          v61 = [v60 dataDetectorAdditions];
          v98[0] = MEMORY[0x277D85DD0];
          v98[1] = 3221225472;
          v98[2] = __142__SGMIFollowUpAnalyzer__analyzeFeatureVector_withRegExpDictionary_forOutgoingMail_withDetectedLanguage_withRegExLanguage_withCustomTimeRange___block_invoke_64;
          v98[3] = &unk_27894CC58;
          v62 = v53;
          v63 = *(a1 + 96);
          v99 = v62;
          v101 = v63;
          v100 = *(a1 + 48);
          v102 = &buf;
          v103 = &v114;
          [v61 enumerateKeysAndObjectsUsingBlock:v98];

          v64 = sgMailIntelligenceLogHandle();
          if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
          {
            v65 = *(*(*(a1 + 96) + 8) + 40);
            *v120 = 138739971;
            v121 = v65;
            _os_log_impl(&dword_231E60000, v64, OS_LOG_TYPE_DEFAULT, "Follow Up. [_analyzeFeatureVector] Exploration Data Detector Additions matches finished. Warning start date %{sensitive}@", v120, 0xCu);
          }

          objc_storeStrong((*(*(a1 + 96) + 8) + 40), *(*(&buf + 1) + 40));
          v66 = *(*(*(a1 + 96) + 8) + 40);
          v67 = [*(a1 + 48) mailMessage];
          v68 = [v67 date];
          v69 = [v66 compare:v68] == -1;

          if (v69)
          {
            objc_storeStrong((*(*(a1 + 96) + 8) + 40), *(*(*(a1 + 112) + 8) + 40));
          }

          v70 = *(*(*(a1 + 96) + 8) + 40);
          v71 = [MEMORY[0x277CBEAA8] distantFuture];
          v72 = 96;
          if (v70 == v71)
          {
            v72 = 104;
          }

          objc_storeStrong((*(*(a1 + 96) + 8) + 40), *(*(*(a1 + v72) + 8) + 40));

          if (*(a1 + 137) == 1 && [*(*(*(a1 + 104) + 8) + 40) compare:*(*(*(a1 + 96) + 8) + 40)] == -1)
          {
            objc_storeStrong((*(*(a1 + 96) + 8) + 40), *(*(*(a1 + 104) + 8) + 40));
          }

          v73 = NSIntersectionRange(v95, v115[2]);
          v115[2] = v73;

          _Block_object_dispose(&buf, 8);
        }
      }

      v74 = objc_alloc(MEMORY[0x277CCACA8]);
      if (v115[2].location)
      {
        v75 = @"…";
      }

      else
      {
        v75 = &stru_284703F00;
      }

      v76 = [*(a1 + 40) substringWithRange:?];
      v77 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
      v78 = [v76 stringByTrimmingCharactersInSet:v77];
      v79 = v78;
      if (v115[2].length + v115[2].location >= v95.location + v95.length)
      {
        v80 = &stru_284703F00;
      }

      else
      {
        v80 = @"…";
      }

      v81 = [v74 initWithFormat:@"%@%@%@", v75, v78, v80];

      v82 = objc_alloc(MEMORY[0x277D02018]);
      v83 = objc_alloc(MEMORY[0x277CCACA8]);
      v84 = *(a1 + 72);
      v85 = [v97 signature];
      v86 = [v83 initWithFormat:@"%@-%@", v84, v85];
      v87 = *(a1 + 80);
      LOBYTE(v84) = *(a1 + 137);
      v88 = *(*(*(a1 + 96) + 8) + 40);
      [*(a1 + 56) defaultTimeIntervalForAWarning];
      v89 = [v88 dateByAddingTimeInterval:?];
      v90 = [v82 initWithSnippet:v81 core:v81 signature:v86 detectedLanguage:v87 isIncomingMessage:(v84 ^ 1) & 1 score:&unk_284749398 startDate:v88 startDateCore:0 endDate:v89 endDateCore:0];
      v91 = *(*(a1 + 120) + 8);
      v92 = *(v91 + 40);
      *(v91 + 40) = v90;

      [*(*(*(a1 + 120) + 8) + 40) setType:*(a1 + 88)];
      if ((*(a1 + 136) & 1) == 0)
      {
        *a4 = 1;
        **(a1 + 128) = 1;
      }

      v8 = v97;
    }
  }

  _Block_object_dispose(&v114, 8);

  objc_autoreleasePoolPop(context);
}

void __142__SGMIFollowUpAnalyzer__analyzeFeatureVector_withRegExpDictionary_forOutgoingMail_withDetectedLanguage_withRegExLanguage_withCustomTimeRange___block_invoke_62(uint64_t a1, void *a2, void *a3)
{
  v21 = a3;
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v6 rangeOfFirstMatchInString:v5 options:0 range:{0, objc_msgSend(v5, "length")}];
  v9 = v8;

  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = [*(a1 + 40) mailMessage];
    v11 = [v10 date];
    v12 = [SGDataDetectorMatch detectionsInPlainText:v21 baseDate:v11];
    v13 = [v12 objectAtIndexedSubscript:0];
    v14 = [v13 detectedDate];
    v15 = *(*(a1 + 48) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    v17 = [*(*(*(a1 + 48) + 8) + 40) compare:*(*(*(a1 + 56) + 8) + 40)];
    v18 = 56;
    if (v17 == -1)
    {
      v18 = 48;
    }

    objc_storeStrong((*(*(a1 + 56) + 8) + 40), *(*(*(a1 + v18) + 8) + 40));
    v19 = *(*(a1 + 64) + 8);
    v20 = *(v19 + 40);
    if (v20 <= v7 + v9)
    {
      v20 = v7 + v9;
    }

    *(v19 + 40) = v20;
  }
}

void __142__SGMIFollowUpAnalyzer__analyzeFeatureVector_withRegExpDictionary_forOutgoingMail_withDetectedLanguage_withRegExLanguage_withCustomTimeRange___block_invoke_64(uint64_t a1, void *a2, void *a3)
{
  v19 = a3;
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v6 rangeOfFirstMatchInString:v5 options:0 range:{0, objc_msgSend(v5, "length")}];
  v9 = v8;

  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = [*(a1 + 40) mailMessage];
    v11 = [v10 date];
    [v19 doubleValue];
    v12 = [v11 dateByAddingTimeInterval:?];
    v13 = *(*(a1 + 48) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;

    v15 = [*(*(*(a1 + 48) + 8) + 40) compare:*(*(*(a1 + 56) + 8) + 40)];
    v16 = 56;
    if (v15 == -1)
    {
      v16 = 48;
    }

    objc_storeStrong((*(*(a1 + 56) + 8) + 40), *(*(*(a1 + v16) + 8) + 40));
    v17 = *(*(a1 + 64) + 8);
    v18 = *(v17 + 40);
    if (v18 <= v7 + v9)
    {
      v18 = v7 + v9;
    }

    *(v17 + 40) = v18;
  }
}

+ (id)analyzeBody:(id)body forLanguage:(id)language forDate:(id)date withCustomTimeRange:(BOOL)range
{
  rangeCopy = range;
  v40[5] = *MEMORY[0x277D85DE8];
  bodyCopy = body;
  languageCopy = language;
  dateCopy = date;
  v11 = +[SGMIConfig defaultConfig];
  v12 = objc_opt_new();
  detectors = [v11 detectors];
  v14 = [detectors objectForKeyedSubscript:languageCopy];
  followUpOnOutgoingMailsQuestions = [v14 followUpOnOutgoingMailsQuestions];
  body = [followUpOnOutgoingMailsQuestions body];

  if (body)
  {
    detectors2 = [v11 detectors];
    v18 = [detectors2 objectForKeyedSubscript:languageCopy];
    followUpOnOutgoingMailsQuestions2 = [v18 followUpOnOutgoingMailsQuestions];
    body2 = [followUpOnOutgoingMailsQuestions2 body];
    [v12 setObject:body2 forKeyedSubscript:&unk_284749320];
  }

  detectors3 = [v11 detectors];
  v22 = [detectors3 objectForKeyedSubscript:languageCopy];
  followUpOnOutgoingMailsAsks = [v22 followUpOnOutgoingMailsAsks];
  body3 = [followUpOnOutgoingMailsAsks body];

  if (body3)
  {
    detectors4 = [v11 detectors];
    v26 = [detectors4 objectForKeyedSubscript:languageCopy];
    followUpOnOutgoingMailsAsks2 = [v26 followUpOnOutgoingMailsAsks];
    body4 = [followUpOnOutgoingMailsAsks2 body];
    [v12 setObject:body4 forKeyedSubscript:&unk_284749338];
  }

  v39[0] = @"body";
  v39[1] = @"isSent";
  v40[0] = bodyCopy;
  v40[1] = MEMORY[0x277CBEC38];
  v39[2] = @"messageId";
  v39[3] = @"appleMailMessageId";
  v40[2] = &stru_284703F00;
  v40[3] = &stru_284703F00;
  v39[4] = @"date";
  v29 = dateCopy;
  if (!dateCopy)
  {
    v29 = [MEMORY[0x277CBEAA8] now];
  }

  v40[4] = v29;
  v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:5];
  if (!dateCopy)
  {
  }

  v31 = [[SGSimpleMailMessage alloc] initWithMessageDictionary:v30];
  v32 = [SGMIFeatureVector alloc];
  v33 = +[SGSqlEntityStore defaultStore];
  v34 = [(SGMIFeatureVector *)v32 initWithMessageId:&stru_284703F00 hasHashedMessageId:0 simpleMailMessage:v31 senderConnectionScore:&unk_284749350 biomeMessageSummary:0 store:v33 preLoadedFeatureNames:&unk_28474A588];

  v35 = [self _analyzeFeatureVector:v34 withRegExpDictionary:v12 forOutgoingMail:1 withDetectedLanguage:languageCopy withRegExLanguage:languageCopy withCustomTimeRange:rangeCopy];

  return v35;
}

+ (id)analyzeFeatureVector:(id)vector
{
  v16 = *MEMORY[0x277D85DE8];
  vectorCopy = vector;
  v4 = sgMailIntelligenceLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    messageId = [vectorCopy messageId];
    v12 = 138412547;
    v13 = messageId;
    v14 = 2117;
    v15 = vectorCopy;
    _os_log_impl(&dword_231E60000, v4, OS_LOG_TYPE_DEFAULT, "Follow Up. [analyzeFeatureVector] Analyze Feature Vector with messageId %@. Feature Vector: %{sensitive}@", &v12, 0x16u);
  }

  mailMessage = [vectorCopy mailMessage];
  if ([mailMessage isSent])
  {
    [SGMIFollowUpAnalyzer analyzeOutgoingMailFeatureVector:vectorCopy];
  }

  else
  {
    [SGMIFollowUpAnalyzer analyzeIncomingMailFeatureVector:vectorCopy];
  }
  v7 = ;

  v8 = sgMailIntelligenceLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138739971;
    v13 = v7;
    _os_log_impl(&dword_231E60000, v8, OS_LOG_TYPE_DEFAULT, "Follow Up. [analyzeFeatureVector] Storing Detection Stats for Warning  %{sensitive}@", &v12, 0xCu);
  }

  v9 = +[SGSqlEntityStore defaultStore];
  sgmiFeatureStore = [v9 sgmiFeatureStore];
  [sgmiFeatureStore updateFollowUpDetectionStatsWithWarning:v7];

  return v7;
}

@end