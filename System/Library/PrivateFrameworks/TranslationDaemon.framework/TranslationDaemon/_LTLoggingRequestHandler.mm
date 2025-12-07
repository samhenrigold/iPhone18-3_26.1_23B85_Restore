@interface _LTLoggingRequestHandler
- (FTBlazarService)mtAppService;
- (id)combineFeedbackCategory:(int64_t)category andErrors:(id)errors;
- (void)startLoggingRequest:(id)request;
- (void)startSafariFeedbackRequest:(id)request;
- (void)startSafariLatencyLoggingRequest:(id)request;
- (void)startSpeechLIDRequest:(id)request;
- (void)startSpeechSensesLoggingRequest:(id)request;
- (void)streamDidReceiveBatchTranslationStreamingResponse:(id)response;
- (void)streamDidReceiveSpeechTranslationStreamingResponse:(id)response;
- (void)streamFailVerifyBatchTranslationStreamingResponse:(id)response;
- (void)streamFailVerifySpeechTranslationStreamingResponse:(id)response;
@end

@implementation _LTLoggingRequestHandler

- (FTBlazarService)mtAppService
{
  mtAppService = self->_mtAppService;
  if (!mtAppService)
  {
    v4 = [_LTOnlineTranslationEngine blazarServiceWithBundleID:@"com.apple.Translate"];
    v5 = self->_mtAppService;
    self->_mtAppService = v4;

    mtAppService = self->_mtAppService;
  }

  return mtAppService;
}

- (void)startLoggingRequest:(id)request
{
  requestCopy = request;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(_LTLoggingRequestHandler *)self startSpeechLIDRequest:requestCopy];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_LTLoggingRequestHandler *)self startSpeechSensesLoggingRequest:requestCopy];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(_LTLoggingRequestHandler *)self startSafariLatencyLoggingRequest:requestCopy];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(_LTLoggingRequestHandler *)self startSafariFeedbackRequest:requestCopy];
        }
      }
    }
  }
}

- (void)startSpeechLIDRequest:(id)request
{
  v53 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v6 = _LTOSLogTranslationEngine(requestCopy, v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_232E53000, v6, OS_LOG_TYPE_INFO, "Start Speech LID logging request", buf, 2u);
  }

  mtAppService = [(_LTLoggingRequestHandler *)self mtAppService];
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __50___LTLoggingRequestHandler_startSpeechLIDRequest___block_invoke_2;
  v49[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v49[4] = a2;
  v43 = [mtAppService performSpeechTranslationWithDelegate:self requestBuilder:&__block_literal_global_20 completion:v49];

  v8 = objc_alloc_init(FTMutableTranslationLocalePair);
  targetLocale = [requestCopy targetLocale];
  localeIdentifier = [targetLocale localeIdentifier];
  [(FTMutableTranslationLocalePair *)v8 setTarget_locale:localeIdentifier];

  localePair = [requestCopy localePair];
  targetLocale2 = [requestCopy targetLocale];
  v13 = [localePair oppositeToLocale:targetLocale2];
  localeIdentifier2 = [v13 localeIdentifier];
  v42 = v8;
  [(FTMutableTranslationLocalePair *)v8 setSource_locale:localeIdentifier2];

  v15 = objc_alloc_init(FTMutableLanguageDetected);
  lidResult = [requestCopy lidResult];
  dominantLanguage = [lidResult dominantLanguage];
  localeIdentifier3 = [dominantLanguage localeIdentifier];
  v41 = v15;
  [(FTMutableLanguageDetected *)v15 setDetected_locale:localeIdentifier3];

  lidResult2 = [requestCopy lidResult];
  confidences = [lidResult2 confidences];

  v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  localePair2 = [requestCopy localePair];
  v51[0] = localePair2;
  localePair3 = [requestCopy localePair];
  reversedPair = [localePair3 reversedPair];
  v51[1] = reversedPair;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:2];

  v26 = [v25 countByEnumeratingWithState:&v45 objects:v52 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v46;
    do
    {
      v29 = 0;
      do
      {
        if (*v46 != v28)
        {
          objc_enumerationMutation(v25);
        }

        sourceLocale = [*(*(&v45 + 1) + 8 * v29) sourceLocale];
        v31 = [confidences objectForKeyedSubscript:sourceLocale];
        if (v31)
        {
          v32 = objc_alloc_init(FTMutableLanguageDetectionPrediction);
          localeIdentifier4 = [sourceLocale localeIdentifier];
          [(FTMutableLanguageDetectionPrediction *)v32 setLocale:localeIdentifier4];

          [v31 floatValue];
          [(FTMutableLanguageDetectionPrediction *)v32 setConfidence:?];
          lidResult3 = [requestCopy lidResult];
          -[FTMutableLanguageDetectionPrediction setIs_low_confidence:](v32, "setIs_low_confidence:", [lidResult3 isConfident] ^ 1);

          [v21 addObject:v32];
        }

        ++v29;
      }

      while (v27 != v29);
      v27 = [v25 countByEnumeratingWithState:&v45 objects:v52 count:16];
    }

    while (v27);
  }

  [(FTMutableLanguageDetected *)v41 setPredictions:v21];
  v35 = objc_alloc_init(FTMutableStartSpeechTranslationLoggingRequest);
  conversationID = [requestCopy conversationID];
  [(FTMutableStartSpeechTranslationLoggingRequest *)v35 setConversation_id:conversationID];

  requestID = [requestCopy requestID];
  [(FTMutableStartSpeechTranslationLoggingRequest *)v35 setRequest_id:requestID];

  selectedLocale = [requestCopy selectedLocale];
  localeIdentifier5 = [selectedLocale localeIdentifier];
  [(FTMutableStartSpeechTranslationLoggingRequest *)v35 setUser_selected_locale:localeIdentifier5];

  [(FTMutableStartSpeechTranslationLoggingRequest *)v35 setDetected_locale:v41];
  [(FTMutableStartSpeechTranslationLoggingRequest *)v35 setTranslation_locale_pair:v42];
  v40 = objc_alloc_init(FTMutableSpeechTranslationStreamingRequest);
  [(FTMutableSpeechTranslationStreamingRequest *)v40 setContentAsFTStartSpeechTranslationLoggingRequest:v35];
  [v43 sendSpeechTranslationStreamingRequest:v40];
  [v43 closeStream];
}

- (void)startSpeechSensesLoggingRequest:(id)request
{
  requestCopy = request;
  v7 = _LTOSLogTranslationEngine(requestCopy, v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_232E53000, v7, OS_LOG_TYPE_INFO, "Start speech senses logging request", buf, 2u);
  }

  mtAppService = [(_LTLoggingRequestHandler *)self mtAppService];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __60___LTLoggingRequestHandler_startSpeechSensesLoggingRequest___block_invoke_2;
  v20[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v20[4] = a2;
  v9 = [mtAppService performSpeechTranslationWithDelegate:self requestBuilder:&__block_literal_global_14 completion:v20];

  v10 = objc_alloc_init(FTMutableStartSpeechTranslationLoggingRequest);
  conversationID = [requestCopy conversationID];
  [(FTMutableStartSpeechTranslationLoggingRequest *)v10 setConversation_id:conversationID];

  requestID = [requestCopy requestID];
  [(FTMutableStartSpeechTranslationLoggingRequest *)v10 setRequest_id:requestID];

  senses = [requestCopy senses];
  [(FTMutableStartSpeechTranslationLoggingRequest *)v10 setSenses:senses];

  userInteractedSenses = [requestCopy userInteractedSenses];
  v15 = [userInteractedSenses count];

  if (v15)
  {
    userInteractedSenses2 = [requestCopy userInteractedSenses];
    [userInteractedSenses2 lastObject];
  }

  else
  {
    userInteractedSenses2 = [requestCopy senses];
    [userInteractedSenses2 objectAtIndexedSubscript:0];
  }
  v17 = ;
  [(FTMutableStartSpeechTranslationLoggingRequest *)v10 setUser_selected_sense:v17];

  userInteractedSenses3 = [requestCopy userInteractedSenses];
  [(FTMutableStartSpeechTranslationLoggingRequest *)v10 setUser_interacted_senses:userInteractedSenses3];

  v19 = objc_alloc_init(FTMutableSpeechTranslationStreamingRequest);
  [(FTMutableSpeechTranslationStreamingRequest *)v19 setContentAsFTStartSpeechTranslationLoggingRequest:v10];
  [v9 sendSpeechTranslationStreamingRequest:v19];
  [v9 closeStream];
}

- (void)startSafariLatencyLoggingRequest:(id)request
{
  requestCopy = request;
  v5 = _LTOSLogTranslationEngine(requestCopy, v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_232E53000, v5, OS_LOG_TYPE_INFO, "Start Safari latency logging request", buf, 2u);
  }

  v7 = requestCopy;
  v6 = requestCopy;
  AnalyticsSendEventLazy();
}

- (void)startSafariFeedbackRequest:(id)request
{
  v34 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v7 = _LTOSLogTranslationEngine(requestCopy, v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_232E53000, v7, OS_LOG_TYPE_INFO, "Start Safari feedback request", buf, 2u);
  }

  mtAppService = [(_LTLoggingRequestHandler *)self mtAppService];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __55___LTLoggingRequestHandler_startSafariFeedbackRequest___block_invoke_2;
  v32[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v32[4] = a2;
  v9 = [mtAppService performBatchTranslationWithDelegate:self requestBuilder:&__block_literal_global_18 completion:v32];

  v10 = objc_alloc_init(FTMutableBatchTranslationFeedbackRequest);
  sourceContentAsJSON = [requestCopy sourceContentAsJSON];
  [(FTMutableBatchTranslationFeedbackRequest *)v10 setSource_content:sourceContentAsJSON];

  targetContentAsJSON = [requestCopy targetContentAsJSON];
  [(FTMutableBatchTranslationFeedbackRequest *)v10 setTranslated_content:targetContentAsJSON];

  webpageURL = [requestCopy webpageURL];
  absoluteString = [webpageURL absoluteString];
  [(FTMutableBatchTranslationFeedbackRequest *)v10 setUrl:absoluteString];

  category = [requestCopy category];
  errorsAsJSON = [requestCopy errorsAsJSON];
  v17 = [(_LTLoggingRequestHandler *)self combineFeedbackCategory:category andErrors:errorsAsJSON];
  [(FTMutableBatchTranslationFeedbackRequest *)v10 setErrors:v17];

  sessionID = [requestCopy sessionID];
  [(FTMutableBatchTranslationFeedbackRequest *)v10 setSession_id:sessionID];

  localePair = [requestCopy localePair];
  sourceLocale = [localePair sourceLocale];
  localeIdentifier = [sourceLocale localeIdentifier];
  [(FTMutableBatchTranslationFeedbackRequest *)v10 setSource_language:localeIdentifier];

  localePair2 = [requestCopy localePair];
  targetLocale = [localePair2 targetLocale];
  localeIdentifier2 = [targetLocale localeIdentifier];
  [(FTMutableBatchTranslationFeedbackRequest *)v10 setTarget_language:localeIdentifier2];

  safariVersion = [requestCopy safariVersion];
  [(FTMutableBatchTranslationFeedbackRequest *)v10 setSafari_version:safariVersion];

  clientBundleID = [requestCopy clientBundleID];

  [(FTMutableBatchTranslationFeedbackRequest *)v10 setApp_id:clientBundleID];
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  operatingSystemVersionString = [processInfo operatingSystemVersionString];
  [(FTMutableBatchTranslationFeedbackRequest *)v10 setOs_version:operatingSystemVersionString];

  v31 = 4096;
  sysctlbyname("hw.machine", buf, &v31, 0, 0);
  v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:buf];
  [(FTMutableBatchTranslationFeedbackRequest *)v10 setDevice_type:v29];

  v30 = objc_alloc_init(FTMutableBatchTranslationStreamingRequest);
  [(FTMutableBatchTranslationStreamingRequest *)v30 setContentAsFTBatchTranslationFeedbackRequest:v10];
  [v9 sendBatchTranslationStreamingRequest:v30];
  [v9 closeStream];
}

- (id)combineFeedbackCategory:(int64_t)category andErrors:(id)errors
{
  v23[2] = *MEMORY[0x277D85DE8];
  errorsCopy = errors;
  v5 = [errorsCopy dataUsingEncoding:4];
  v21 = 0;
  v6 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v5 options:0 error:&v21];
  v7 = v21;
  if (v7)
  {
    v9 = v7;
    v10 = _LTOSLogTranslationEngine(v7, v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [_LTLoggingRequestHandler combineFeedbackCategory:andErrors:];
    }

    v11 = errorsCopy;
  }

  else
  {
    v12 = _LTFeedbackCategoryString();
    v22[0] = @"category";
    v22[1] = @"errors";
    v23[0] = v12;
    v23[1] = v6;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];
    v20 = 0;
    v14 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v13 options:0 error:&v20];
    v15 = v20;
    v9 = v15;
    if (v15)
    {
      v17 = _LTOSLogTranslationEngine(v15, v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [_LTLoggingRequestHandler combineFeedbackCategory:andErrors:];
      }

      v18 = errorsCopy;
    }

    else
    {
      v18 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v14 encoding:4];
    }

    v11 = v18;
  }

  return v11;
}

- (void)streamDidReceiveSpeechTranslationStreamingResponse:(id)response
{
  v16 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  content_type = [responseCopy content_type];
  if (content_type == 6)
  {
    contentAsFTFinalBlazarResponse = [responseCopy contentAsFTFinalBlazarResponse];
    v8 = _LTOSLogTranslationEngine(contentAsFTFinalBlazarResponse, v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = v8;
      return_code = [contentAsFTFinalBlazarResponse return_code];
      return_str = [contentAsFTFinalBlazarResponse return_str];
      v13[0] = 67109378;
      v13[1] = return_code;
      v14 = 2112;
      v15 = return_str;
      _os_log_impl(&dword_232E53000, v9, OS_LOG_TYPE_INFO, "Received speech logging request response: [%d] %@", v13, 0x12u);
    }
  }

  else
  {
    v12 = _LTOSLogTranslationEngine(content_type, v5);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [_LTLoggingRequestHandler streamDidReceiveSpeechTranslationStreamingResponse:];
    }
  }
}

- (void)streamFailVerifySpeechTranslationStreamingResponse:(id)response
{
  responseCopy = response;
  v6 = _LTOSLogTranslationEngine(responseCopy, v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [_LTLoggingRequestHandler streamFailVerifySpeechTranslationStreamingResponse:];
  }

  v7 = NSStringFromSelector(a2);
  _LTSendErrorEvent(responseCopy, v7);
}

- (void)streamDidReceiveBatchTranslationStreamingResponse:(id)response
{
  v16 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  content_type = [responseCopy content_type];
  if (content_type == 2)
  {
    contentAsFTFinalBlazarResponse = [responseCopy contentAsFTFinalBlazarResponse];
    v8 = _LTOSLogTranslationEngine(contentAsFTFinalBlazarResponse, v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = v8;
      return_code = [contentAsFTFinalBlazarResponse return_code];
      return_str = [contentAsFTFinalBlazarResponse return_str];
      v13[0] = 67109378;
      v13[1] = return_code;
      v14 = 2112;
      v15 = return_str;
      _os_log_impl(&dword_232E53000, v9, OS_LOG_TYPE_INFO, "Received safari feedback request response: [%d] %@", v13, 0x12u);
    }
  }

  else
  {
    v12 = _LTOSLogTranslationEngine(content_type, v5);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [_LTLoggingRequestHandler streamDidReceiveBatchTranslationStreamingResponse:];
    }
  }
}

- (void)streamFailVerifyBatchTranslationStreamingResponse:(id)response
{
  responseCopy = response;
  v6 = _LTOSLogTranslationEngine(responseCopy, v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [_LTLoggingRequestHandler streamFailVerifyBatchTranslationStreamingResponse:];
  }

  v7 = NSStringFromSelector(a2);
  _LTSendErrorEvent(responseCopy, v7);
}

@end