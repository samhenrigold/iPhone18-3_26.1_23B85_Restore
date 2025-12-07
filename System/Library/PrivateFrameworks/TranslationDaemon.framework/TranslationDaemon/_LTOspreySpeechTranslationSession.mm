@interface _LTOspreySpeechTranslationSession
- (BOOL)_receivedEmptyFinalASRResults;
- (NSString)description;
- (_LTOspreySpeechTranslationSession)initWithService:(id)service context:(id)context delegate:(id)delegate selfLoggingManager:(id)manager;
- (_LTOspreySpeechTranslationSession)initWithService:(id)service context:(id)context text:(id)text delegate:(id)delegate selfLoggingManager:(id)manager;
- (_LTSpeechTranslationDelegate)delegate;
- (id)_bestSourceTextForResponse:(id)response;
- (id)_primaryLanguageRecognized;
- (id)_translationForLocale:(id)locale;
- (void)_handleAudioLimitExceededResponse:(id)response;
- (void)_handleFinalBlazarResponse:(id)response;
- (void)_handleFinalRecognitionResponse:(id)response;
- (void)_handlePartialRecognitionResponse:(id)response;
- (void)_handleServerEndpointFeatures:(id)features;
- (void)_handleTTSResponse:(id)response;
- (void)_handleTranslationResponse:(id)response;
- (void)cancel;
- (void)cancelServerTimeout;
- (void)confirmDataIfNeeded;
- (void)didCompressPackets:(id)packets totalPacketCount:(unint64_t)count;
- (void)endpoint;
- (void)initCommon;
- (void)sendAnalyticsEvent;
- (void)sendAudioData:(id)data;
- (void)sendEndAudio;
- (void)serverTimeoutFired;
- (void)setLanguagesRecognized:(id)recognized;
- (void)startServerTimeoutTimer;
- (void)streamDidReceiveSpeechTranslationStreamingResponse:(id)response;
- (void)streamFailVerifySpeechTranslationStreamingResponse:(id)response;
- (void)translationDidFinishWithError:(id)error;
- (void)updateServerTimeout:(double)timeout;
@end

@implementation _LTOspreySpeechTranslationSession

- (void)sendAnalyticsEvent
{
  objc_initWeak(&location, self);
  objc_copyWeak(&v2, &location);
  AnalyticsSendEventLazy();
  objc_destroyWeak(&v2);
  objc_destroyWeak(&location);
}

- (NSString)description
{
  if (self->_sentAudio)
  {
    v3 = @"YES";
  }

  else
  {
    v3 = @"NO";
  }

  if (self->_sentEndAudio)
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  if (self->_endpointedSpeech)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  v25 = v5;
  v26 = v3;
  if (self->_didReceiveAudioLimitExceededResponse)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  if (self->_didReceivePartialRecognitionResponse)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  if (self->_didReceiveFinalRecognitionResponse)
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  if (self->_didReceiveTranslationResponse)
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  if (self->_didReceiveTTSResponse)
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  if (self->_didReceiveFinalBlazarResponse)
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  if (self->_didTimeout)
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  v27 = MEMORY[0x277CCACA8];
  v13 = v12;
  v24 = v11;
  v23 = v10;
  v22 = v9;
  v29 = v8;
  v14 = v7;
  v15 = v6;
  v16 = v25;
  v17 = v4;
  v18 = v26;
  v19 = objc_opt_class();
  v20 = NSStringFromClass(v19);
  v28 = [v27 stringWithFormat:@"<%@: sentAudio:%@ sentEndAudio:%@ endpointedSpeech:%@ didReceiveAudioLimitExceededResponse:%@ didReceivePartialRecognitionResponse:%@ didReceiveFinalRecognitionResponse:%@ didReceiveTranslationResponse:%@  didReceiveTTSResponse:%@ didReceiveFinalBlazarResponse:%@ didTimeout:%@ error %@>", v20, v18, v17, v16, v15, v14, v29, v22, v23, v24, v13, self->_error];

  return v28;
}

- (_LTOspreySpeechTranslationSession)initWithService:(id)service context:(id)context delegate:(id)delegate selfLoggingManager:(id)manager
{
  v55 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  contextCopy = context;
  delegateCopy = delegate;
  managerCopy = manager;
  v48.receiver = self;
  v48.super_class = _LTOspreySpeechTranslationSession;
  v15 = [(_LTOspreySpeechTranslationSession *)&v48 init];
  v16 = v15;
  if (v15)
  {
    objc_storeWeak(&v15->_delegate, delegateCopy);
    objc_storeStrong(&v16->_context, context);
    v17 = [[_LTSpeechCompressor alloc] initWithDelegate:v16];
    speechCompressor = v16->_speechCompressor;
    v16->_speechCompressor = v17;

    [(_LTSpeechCompressor *)v16->_speechCompressor startCompressionNarrowband:0];
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    finalASRResults = v16->_finalASRResults;
    v16->_finalASRResults = dictionary;

    array = [MEMORY[0x277CBEB18] array];
    mtResults = v16->_mtResults;
    v16->_mtResults = array;

    array2 = [MEMORY[0x277CBEB18] array];
    confirmedTranslations = v16->_confirmedTranslations;
    v16->_confirmedTranslations = array2;

    v16->_audioPacketCount = 0;
    v16->_didSendTranslationDidFinish = 0;
    *&v16->_sentAudio = 0;
    v16->_didReceiveFinalBlazarResponse = 0;
    objc_storeStrong(&v16->_selfLoggingManager, manager);
    v27 = _LTOSLogTranslationEngine(v25, v26);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v28 = v27;
      uniqueID = [contextCopy uniqueID];
      sessionID = [contextCopy sessionID];
      v31 = _LTPreferencesSessionIDOverride(sessionID);
      dataSharingOptInStatus = [contextCopy dataSharingOptInStatus];
      *buf = 138543874;
      v50 = uniqueID;
      v51 = 2114;
      v52 = v31;
      v53 = 2048;
      v54 = dataSharingOptInStatus;
      _os_log_impl(&dword_232E53000, v28, OS_LOG_TYPE_INFO, "Starting speech translation with request ID: %{public}@ session ID: %{public}@, opt in status: %zd", buf, 0x20u);
    }

    objc_initWeak(buf, v16);
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __89___LTOspreySpeechTranslationSession_initWithService_context_delegate_selfLoggingManager___block_invoke;
    v46[3] = &unk_2789B78F8;
    v33 = contextCopy;
    v47 = v33;
    v40 = MEMORY[0x277D85DD0];
    v41 = 3221225472;
    v42 = __89___LTOspreySpeechTranslationSession_initWithService_context_delegate_selfLoggingManager___block_invoke_50;
    v43 = &unk_2789B7920;
    v34 = v16;
    v44 = v34;
    v45[1] = a2;
    objc_copyWeak(v45, buf);
    v35 = [serviceCopy performSpeechTranslationWithDelegate:v34 requestBuilder:v46 completion:&v40];
    v36 = v34[1];
    v34[1] = v35;

    v37 = [v33 _ospreySpeechTranslationRequestWithHybridEndpointer:{1, v40, v41, v42, v43}];
    [v34[1] sendSpeechTranslationStreamingRequest:v37];
    [v34 initCommon];
    v38 = v34;

    objc_destroyWeak(v45);
    objc_destroyWeak(buf);
  }

  return v16;
}

- (_LTOspreySpeechTranslationSession)initWithService:(id)service context:(id)context text:(id)text delegate:(id)delegate selfLoggingManager:(id)manager
{
  v54 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  contextCopy = context;
  textCopy = text;
  delegateCopy = delegate;
  managerCopy = manager;
  v47.receiver = self;
  v47.super_class = _LTOspreySpeechTranslationSession;
  v17 = [(_LTOspreySpeechTranslationSession *)&v47 init];
  v19 = v17;
  if (v17)
  {
    if (!textCopy)
    {
      v20 = _LTOSLogTranslationEngine(v17, v18);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [_LTOspreySpeechTranslationSession initWithService:context:text:delegate:selfLoggingManager:];
      }
    }

    objc_storeWeak(&v19->_delegate, delegateCopy);
    objc_storeStrong(&v19->_context, context);
    array = [MEMORY[0x277CBEB18] array];
    mtResults = v19->_mtResults;
    v19->_mtResults = array;

    array2 = [MEMORY[0x277CBEB18] array];
    confirmedTranslations = v19->_confirmedTranslations;
    v19->_confirmedTranslations = array2;

    v25 = [textCopy copy];
    cachedUserTypedText = v19->_cachedUserTypedText;
    v19->_cachedUserTypedText = v25;

    objc_storeStrong(&v19->_selfLoggingManager, manager);
    v29 = _LTOSLogTranslationEngine(v27, v28);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      v30 = v29;
      uniqueID = [contextCopy uniqueID];
      sessionID = [contextCopy sessionID];
      v33 = _LTPreferencesSessionIDOverride(sessionID);
      dataSharingOptInStatus = [contextCopy dataSharingOptInStatus];
      *buf = 138543874;
      v49 = uniqueID;
      v50 = 2114;
      v51 = v33;
      v52 = 2048;
      v53 = dataSharingOptInStatus;
      _os_log_impl(&dword_232E53000, v30, OS_LOG_TYPE_INFO, "Starting text to speech translation with request ID: %{public}@, session ID: %{public}@, opt in status: %zd", buf, 0x20u);
    }

    objc_initWeak(buf, v19);
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __94___LTOspreySpeechTranslationSession_initWithService_context_text_delegate_selfLoggingManager___block_invoke;
    v45[3] = &unk_2789B78F8;
    v35 = contextCopy;
    v46 = v35;
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __94___LTOspreySpeechTranslationSession_initWithService_context_text_delegate_selfLoggingManager___block_invoke_2;
    v42[3] = &unk_2789B7948;
    v36 = v19;
    v43 = v36;
    objc_copyWeak(&v44, buf);
    v37 = [serviceCopy performSpeechTranslationWithDelegate:v36 requestBuilder:v45 completion:v42];
    v38 = v36[1];
    v36[1] = v37;

    v39 = [v35 _ospreyTextToSpeechTranslationRequestWithText:textCopy];
    [v36[1] sendSpeechTranslationStreamingRequest:v39];
    [v36 initCommon];
    v40 = v36;

    objc_destroyWeak(&v44);
    objc_destroyWeak(buf);
  }

  return v19;
}

- (void)initCommon
{
  self->_initialOnlineTimeout = _LTPreferencesServerSpeechSessionInitialOnlineTimeout();
  self->_onlineTimeout = _LTPreferencesServerSpeechSessionOnlineTimeout();
  self->_endpointTimeout = _LTPreferencesServerSpeechSessionEndpointTimeout();
  v3 = dispatch_queue_create("com.apple.translation.speech-timer", 0);
  timerQueue = self->_timerQueue;
  self->_timerQueue = v3;

  [(_LTOspreySpeechTranslationSession *)self startServerTimeoutTimer];
  selfLoggingManager = self->_selfLoggingManager;
  logIdentifier = [(_LTTranslationContext *)self->_context logIdentifier];
  uniqueID = [(_LTTranslationContext *)self->_context uniqueID];
  [(_LTDSELFLoggingManager *)selfLoggingManager sendSpeechTranslationFrameworkRequestSentWithInvocationId:logIdentifier qssSessionId:uniqueID requestRoute:1 payloadSizeInBytes:0];
}

- (void)startServerTimeoutTimer
{
  if (!self->_serverTimer)
  {
    v4 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_timerQueue);
    serverTimer = self->_serverTimer;
    self->_serverTimer = v4;

    [(_LTOspreySpeechTranslationSession *)self updateServerTimeout:self->_initialOnlineTimeout];
    v6 = self->_serverTimer;

    dispatch_resume(v6);
  }
}

- (void)updateServerTimeout:(double)timeout
{
  if (self->_serverTimer)
  {
    objc_initWeak(&location, self);
    serverTimer = self->_serverTimer;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __57___LTOspreySpeechTranslationSession_updateServerTimeout___block_invoke;
    v11[3] = &unk_2789B53F0;
    objc_copyWeak(&v12, &location);
    dispatch_source_set_event_handler(serverTimer, v11);
    v8 = _LTOSLogTranslationEngine(v6, v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [(_LTOspreySpeechTranslationSession *)v8 updateServerTimeout:timeout];
    }

    v9 = self->_serverTimer;
    v10 = dispatch_time(0, (timeout * 1000000000.0));
    dispatch_source_set_timer(v9, v10, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

- (void)cancelServerTimeout
{
  serverTimer = self->_serverTimer;
  if (serverTimer)
  {
    dispatch_source_cancel(serverTimer);
    v4 = self->_serverTimer;
    self->_serverTimer = 0;
  }
}

- (void)serverTimeoutFired
{
  v3 = _LTOSLogTranslationEngine(self, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_232E53000, v3, OS_LOG_TYPE_INFO, "Server timeout triggered", v5, 2u);
  }

  self->_didTimeout = 1;
  lt_translationTimeout = [MEMORY[0x277CCA9B8] lt_translationTimeout];
  [(_LTOspreySpeechTranslationSession *)self translationDidFinishWithError:lt_translationTimeout];

  [(_LTOspreySpeechTranslationSession *)self cancel];
}

- (void)sendAudioData:(id)data
{
  dataCopy = data;
  v6 = dataCopy;
  if (self->_didReceiveFinalRecognitionResponse)
  {
    v7 = _LTOSLogTranslationEngine(dataCopy, v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [_LTOspreySpeechTranslationSession sendAudioData:];
    }
  }

  else if (self->_sentEndAudio)
  {
    v8 = _LTOSLogTranslationEngine(dataCopy, v5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [_LTOspreySpeechTranslationSession sendAudioData:];
    }
  }

  else
  {
    endpointedSpeech = self->_endpointedSpeech;
    v10 = _LTOSLogTranslationEngine(dataCopy, v5);
    v11 = v10;
    if (endpointedSpeech)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [_LTOspreySpeechTranslationSession sendAudioData:];
      }
    }

    else
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *v12 = 0;
        _os_log_impl(&dword_232E53000, v11, OS_LOG_TYPE_INFO, "sendAudioData: Start compressing audio", v12, 2u);
      }

      [(_LTSpeechCompressor *)self->_speechCompressor addAudioSampleData:v6];
      self->_sentAudio = 1;
    }
  }
}

- (void)sendEndAudio
{
  if (self->_sentAudio)
  {
    v9 = v2;
    v10 = v3;
    if (!self->_sentEndAudio)
    {
      self->_sentEndAudio = 1;
      v5 = _LTOSLogTranslationEngine(self, a2);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *v8 = 0;
        _os_log_impl(&dword_232E53000, v5, OS_LOG_TYPE_INFO, "Sending end audio", v8, 2u);
      }

      v6 = objc_alloc_init(FTMutableFinishAudio);
      [(FTMutableFinishAudio *)v6 setPacket_count:LODWORD(self->_audioPacketCount)];
      v7 = objc_alloc_init(FTMutableSpeechTranslationStreamingRequest);
      [(FTMutableSpeechTranslationStreamingRequest *)v7 setContent_type:5];
      [(FTMutableSpeechTranslationStreamingRequest *)v7 setContentAsFTFinishAudio:v6];
      [(FTSpeechTranslationStreamingContext *)self->_streamContext sendSpeechTranslationStreamingRequest:v7];
    }
  }
}

- (void)endpoint
{
  v3 = [(_LTOspreySpeechTranslationSession *)self updateServerTimeout:self->_endpointTimeout];
  if (!self->_endpointedSpeech)
  {
    v5 = _LTOSLogTranslationEngine(v3, v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [_LTOspreySpeechTranslationSession endpoint];
    }

    self->_endpointedSpeech = 1;
    [(_LTOspreySpeechTranslationSession *)self sendEndAudio];
  }
}

- (void)cancel
{
  [(_LTOspreySpeechTranslationSession *)self sendEndAudio];
  [(FTSpeechTranslationStreamingContext *)self->_streamContext closeStream];
  self->_isCancelled = 1;

  objc_storeWeak(&self->_delegate, 0);
}

- (void)setLanguagesRecognized:(id)recognized
{
  v38 = *MEMORY[0x277D85DE8];
  recognizedCopy = recognized;
  objc_storeStrong(&self->_lidResult, recognized);
  isFinal = [recognizedCopy isFinal];
  v7 = isFinal;
  v9 = _LTOSLogTranslationEngine(isFinal, v8);
  v10 = v9;
  if (v7)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = v10;
      _primaryLanguageRecognized = [(_LTOspreySpeechTranslationSession *)self _primaryLanguageRecognized];
      _ltLocaleIdentifier = [_primaryLanguageRecognized _ltLocaleIdentifier];
      *buf = 138543362;
      v37 = _ltLocaleIdentifier;
      _os_log_impl(&dword_232E53000, v11, OS_LOG_TYPE_INFO, "LID result received. Primary language recognized: %{public}@", buf, 0xCu);
    }

    selfCopy = self;
    [(_LTOspreySpeechTranslationSession *)self confirmDataIfNeeded];
    v14 = objc_alloc_init(FTMutableLanguageDetected);
    dominantLanguage = [recognizedCopy dominantLanguage];
    _ltLocaleIdentifier2 = [dominantLanguage _ltLocaleIdentifier];
    [(FTMutableLanguageDetected *)v14 setDetected_locale:_ltLocaleIdentifier2];

    array = [MEMORY[0x277CBEB18] array];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    confidences = [recognizedCopy confidences];
    allKeys = [confidences allKeys];

    v20 = [allKeys countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v32;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v32 != v22)
          {
            objc_enumerationMutation(allKeys);
          }

          v24 = *(*(&v31 + 1) + 8 * i);
          v25 = objc_alloc_init(FTMutableLanguageDetectionPrediction);
          _ltLocaleIdentifier3 = [v24 _ltLocaleIdentifier];
          [(FTMutableLanguageDetectionPrediction *)v25 setLocale:_ltLocaleIdentifier3];

          confidences2 = [recognizedCopy confidences];
          v28 = [confidences2 objectForKeyedSubscript:v24];
          [v28 floatValue];
          [(FTMutableLanguageDetectionPrediction *)v25 setConfidence:?];

          [array addObject:v25];
        }

        v21 = [allKeys countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v21);
    }

    [(FTMutableLanguageDetected *)v14 setPredictions:array];
    v29 = objc_alloc_init(FTMutableSpeechTranslationStreamingRequest);
    [(FTMutableSpeechTranslationStreamingRequest *)v29 setContent_type:2];
    [(FTMutableSpeechTranslationStreamingRequest *)v29 setContentAsFTLanguageDetected:v14];
    [(FTSpeechTranslationStreamingContext *)selfCopy->_streamContext sendSpeechTranslationStreamingRequest:v29];
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [_LTOspreySpeechTranslationSession setLanguagesRecognized:];
  }
}

- (id)_primaryLanguageRecognized
{
  if (([(_LTTranslationContext *)self->_context autodetectLanguage]& 1) != 0)
  {
    lidResult = self->_lidResult;
    if (lidResult)
    {
      dominantLanguage = [(_LTLanguageDetectionResult *)lidResult dominantLanguage];
    }

    else
    {
      dominantLanguage = 0;
    }
  }

  else
  {
    localePair = [(_LTTranslationContext *)self->_context localePair];
    dominantLanguage = [localePair sourceLocale];
  }

  return dominantLanguage;
}

- (id)_translationForLocale:(id)locale
{
  v18 = *MEMORY[0x277D85DE8];
  localeCopy = locale;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  reverseObjectEnumerator = [(NSMutableArray *)self->_mtResults reverseObjectEnumerator];
  v6 = [reverseObjectEnumerator countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        locale = [v9 locale];
        v11 = [locale _ltEqual:localeCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [reverseObjectEnumerator countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)translationDidFinishWithError:(id)error
{
  v15 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  objc_storeStrong(&self->_error, error);
  [(_LTOspreySpeechTranslationSession *)self sendEndAudio];
  [(_LTOspreySpeechTranslationSession *)self cancelServerTimeout];
  if (!self->_didSendTranslationDidFinish)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      self->_didSendTranslationDidFinish = 1;
      v10 = objc_loadWeakRetained(&self->_delegate);
      [v10 translationDidFinishWithError:errorCopy];
    }

    else
    {
      v11 = _LTOSLogTranslationEngine(v8, v9);
      v12 = v11;
      if (errorCopy)
      {
        if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
        {
          [_LTOspreySpeechTranslationSession translationDidFinishWithError:];
        }
      }

      else if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v13 = 134217984;
        selfCopy = self;
        _os_log_impl(&dword_232E53000, v12, OS_LOG_TYPE_INFO, "Warning: Speech session %p finished successfully but there's no delegate to inform", &v13, 0xCu);
      }
    }
  }
}

- (void)confirmDataIfNeeded
{
  v7 = a2;
  locale = [a3 locale];
  _ltLocaleIdentifier = [locale _ltLocaleIdentifier];
  *self = 138543362;
  *a4 = _ltLocaleIdentifier;
  _os_log_debug_impl(&dword_232E53000, v7, OS_LOG_TYPE_DEBUG, "Result locale: %{public}@", self, 0xCu);
}

- (void)didCompressPackets:(id)packets totalPacketCount:(unint64_t)count
{
  v14 = *MEMORY[0x277D85DE8];
  packetsCopy = packets;
  v7 = _LTOSLogTranslationEngine(packetsCopy, v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    v12 = 134217984;
    v13 = [packetsCopy count];
    _os_log_impl(&dword_232E53000, v8, OS_LOG_TYPE_INFO, "Sending %zu packets from compressor", &v12, 0xCu);
  }

  v9 = [packetsCopy _ltCompactMap:&__block_literal_global_25];
  v10 = objc_alloc_init(FTMutableSpeechTranslationAudioPacket);
  [(FTMutableSpeechTranslationAudioPacket *)v10 setAudio_frames:v9];
  v11 = objc_alloc_init(FTMutableSpeechTranslationStreamingRequest);
  [(FTMutableSpeechTranslationStreamingRequest *)v11 setContent_type:4];
  [(FTMutableSpeechTranslationStreamingRequest *)v11 setContentAsFTSpeechTranslationAudioPacket:v10];
  [(FTSpeechTranslationStreamingContext *)self->_streamContext sendSpeechTranslationStreamingRequest:v11];
  self->_audioPacketCount += [v9 count];
}

- (void)_handleAudioLimitExceededResponse:(id)response
{
  self->_didReceiveAudioLimitExceededResponse = 1;
  v4 = _LTOSLogTranslationEngine(self, a2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [_LTOspreySpeechTranslationSession _handleAudioLimitExceededResponse:];
  }

  lt_speechLimitExceeded = [MEMORY[0x277CCA9B8] lt_speechLimitExceeded];
  [(_LTOspreySpeechTranslationSession *)self translationDidFinishWithError:lt_speechLimitExceeded];
}

- (void)_handlePartialRecognitionResponse:(id)response
{
  v17 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  self->_didReceivePartialRecognitionResponse = 1;
  source_locale = [responseCopy source_locale];

  if (source_locale)
  {
    v6 = [(_LTOspreySpeechTranslationSession *)self updateServerTimeout:self->_onlineTimeout];
    v8 = _LTOSLogTranslationEngine(v6, v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = v8;
      source_locale2 = [responseCopy source_locale];
      v15 = 138543362;
      v16 = source_locale2;
      _os_log_impl(&dword_232E53000, v9, OS_LOG_TYPE_INFO, "Always sending ASR partial %{public}@", &v15, 0xCu);
    }

    v11 = [objc_alloc(MEMORY[0x277CE1B90]) initWithOspreyPartialRecognitionResponse:responseCopy isSanitized:{-[_LTTranslationContext censorSpeech](self->_context, "censorSpeech")}];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      v14 = objc_loadWeakRetained(&self->_delegate);
      [v14 speechRecognitionResult:v11];
    }
  }
}

- (void)_handleFinalRecognitionResponse:(id)response
{
  responseCopy = response;
  v6 = _LTOSLogTranslationEngine(responseCopy, v5);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v7)
  {
    *v25 = 0;
    _os_log_impl(&dword_232E53000, v6, OS_LOG_TYPE_INFO, "Received final recognition response", v25, 2u);
  }

  v9 = _LTOSLogTranslationEngine(v7, v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [(_LTOspreySpeechTranslationSession *)v9 _handleFinalRecognitionResponse:responseCopy];
  }

  self->_didReceiveFinalRecognitionResponse = 1;
  v10 = objc_alloc(MEMORY[0x277CBEAF8]);
  source_locale = [responseCopy source_locale];
  v12 = [v10 initWithLocaleIdentifier:source_locale];

  asrConfidenceThreshold = _LTPreferencesServerASRConfidenceThreshold(v12);
  if (([(_LTTranslationContext *)self->_context asrConfidenceThreshold]& 0x8000000000000000) == 0)
  {
    asrConfidenceThreshold = [(_LTTranslationContext *)self->_context asrConfidenceThreshold];
  }

  v14 = [objc_alloc(MEMORY[0x277CE1B90]) initWithOspreyResponse:responseCopy confidenceThreshold:asrConfidenceThreshold isSanitized:{-[_LTTranslationContext censorSpeech](self->_context, "censorSpeech")}];
  transcriptions = [v14 transcriptions];
  v16 = [transcriptions _ltCompactMap:&__block_literal_global_72_0];

  v19 = _LTOSLogTranslationEngine(v17, v18);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    [_LTOspreySpeechTranslationSession _handleFinalRecognitionResponse:];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v21 = objc_opt_respondsToSelector();

  if (v21)
  {
    v22 = objc_loadWeakRetained(&self->_delegate);
    [v22 speechRecognitionResult:v14];
  }

  finalASRResults = self->_finalASRResults;
  locale = [v14 locale];
  [(NSMutableDictionary *)finalASRResults setObject:v14 forKeyedSubscript:locale];

  [(_LTOspreySpeechTranslationSession *)self confirmDataIfNeeded];
}

- (void)_handleServerEndpointFeatures:(id)features
{
  featuresCopy = features;
  source_locale = [featuresCopy source_locale];
  if (source_locale && (v7 = source_locale, [featuresCopy server_endpoint_features], v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v8))
  {
    [(_LTOspreySpeechTranslationSession *)self updateServerTimeout:self->_onlineTimeout];
    v9 = objc_alloc(MEMORY[0x277CE1B70]);
    server_endpoint_features = [featuresCopy server_endpoint_features];
    v11 = [v9 initWithResponse:server_endpoint_features];

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      v14 = objc_loadWeakRetained(&self->_delegate);
      v15 = objc_alloc(MEMORY[0x277CBEAF8]);
      source_locale2 = [featuresCopy source_locale];
      v17 = [v15 initWithLocaleIdentifier:source_locale2];
      [v14 serverEndpointerFeatures:v11 locale:v17];
    }
  }

  else
  {
    v18 = _LTOSLogTranslationEngine(source_locale, v6);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      [_LTOspreySpeechTranslationSession _handleServerEndpointFeatures:];
    }
  }
}

- (id)_bestSourceTextForResponse:(id)response
{
  cachedUserTypedText = self->_cachedUserTypedText;
  if (cachedUserTypedText)
  {
    formattedString = cachedUserTypedText;
  }

  else
  {
    translation_locale_pair = [response translation_locale_pair];
    source_locale = [translation_locale_pair source_locale];

    v8 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:source_locale];
    v9 = [(NSMutableDictionary *)self->_finalASRResults objectForKeyedSubscript:v8];
    bestTranscription = [v9 bestTranscription];
    formattedString = [bestTranscription formattedString];
  }

  return formattedString;
}

- (void)_handleTranslationResponse:(id)response
{
  responseCopy = response;
  v5 = [(_LTOspreySpeechTranslationSession *)self _bestSourceTextForResponse:responseCopy];
  v6 = [objc_alloc(MEMORY[0x277CE1C18]) initWithOspreySpeechTranslationMTResponse:responseCopy sourceText:v5 censorSpeech:{-[_LTTranslationContext censorSpeech](self->_context, "censorSpeech")}];
  [(_LTOspreySpeechTranslationSession *)self updateServerTimeout:self->_onlineTimeout];
  is_final = [responseCopy is_final];

  if (is_final)
  {
    self->_didReceiveTranslationResponse = 1;
  }

  v10 = _LTOSLogTranslationEngine(v8, v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [_LTOspreySpeechTranslationSession _handleTranslationResponse:v10];
  }

  [(NSMutableArray *)self->_mtResults addObject:v6];
  [(_LTOspreySpeechTranslationSession *)self confirmDataIfNeeded];
}

- (void)_handleTTSResponse:(id)response
{
  v40 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  self->_didReceiveTTSResponse = 1;
  v6 = _LTOSLogTTS(responseCopy, v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = v6;
    target_locale = [responseCopy target_locale];
    text_to_speech_response = [responseCopy text_to_speech_response];
    *buf = 138543618;
    *&buf[4] = target_locale;
    *&buf[12] = 2048;
    *&buf[14] = [text_to_speech_response audio_type];
    _os_log_impl(&dword_232E53000, v7, OS_LOG_TYPE_INFO, "Received TTS response: %{public}@ (%zd)", buf, 0x16u);
  }

  [(_LTOspreySpeechTranslationSession *)self updateServerTimeout:self->_onlineTimeout];
  v10 = MEMORY[0x277CBEAF8];
  target_locale2 = [responseCopy target_locale];
  v12 = [v10 localeWithLocaleIdentifier:target_locale2];

  v37 = v12;
  v36 = [(_LTOspreySpeechTranslationSession *)self _translationForLocale:v12];
  translations = [v36 translations];
  firstObject = [translations firstObject];

  sanitizedFormattedString = [firstObject sanitizedFormattedString];
  v16 = sanitizedFormattedString;
  if (sanitizedFormattedString)
  {
    formattedString = sanitizedFormattedString;
  }

  else
  {
    formattedString = [firstObject formattedString];
  }

  v18 = formattedString;

  v19 = MEMORY[0x277CE1C50];
  text_to_speech_response2 = [responseCopy text_to_speech_response];
  word_timing_info = [text_to_speech_response2 word_timing_info];
  v22 = [v19 wordTimingInfoFromArray:word_timing_info text:v18];

  v23 = [_LTAudioData alloc];
  text_to_speech_response3 = [responseCopy text_to_speech_response];
  decoder_description = [text_to_speech_response3 decoder_description];
  v26 = decoder_description;
  if (decoder_description)
  {
    objc_msgSend_audioStreamBasicDescription(decoder_description);
  }

  else
  {
    v39 = 0;
    memset(buf, 0, sizeof(buf));
  }

  text_to_speech_response4 = [responseCopy text_to_speech_response];
  audio = [text_to_speech_response4 audio];
  v29 = [(_LTAudioData *)v23 initWithASBD:buf rawData:audio wordTimingInfo:v22];

  if (!v29)
  {
    v32 = _LTOSLogTTS(v30, v31);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      [_LTOspreySpeechTranslationSession _handleTTSResponse:];
    }
  }

  v33 = MEMORY[0x277CCACA8];
  target_locale3 = [responseCopy target_locale];
  v35 = [v33 stringWithFormat:@"%@-%@", target_locale3, v18];

  [(_LTTextToSpeechCache *)self->_ttsCache cacheAudioData:v29 forKey:v35];
}

- (BOOL)_receivedEmptyFinalASRResults
{
  v21 = *MEMORY[0x277D85DE8];
  if (![(NSMutableDictionary *)self->_finalASRResults count])
  {
    return 0;
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  allValues = [(NSMutableDictionary *)self->_finalASRResults allValues];
  v4 = [allValues countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(allValues);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        bestTranscription = [v8 bestTranscription];
        if (bestTranscription)
        {
          v10 = bestTranscription;
          bestTranscription2 = [v8 bestTranscription];
          formattedString = [bestTranscription2 formattedString];
          v13 = [formattedString isEqualToString:&stru_284834138];

          if (!v13)
          {
            v14 = 0;
            goto LABEL_14;
          }
        }
      }

      v5 = [allValues countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v14 = 1;
LABEL_14:

  return v14;
}

- (void)_handleFinalBlazarResponse:(id)response
{
  v21[2] = *MEMORY[0x277D85DE8];
  responseCopy = response;
  [(_LTOspreySpeechTranslationSession *)self cancelServerTimeout];
  self->_didReceiveFinalBlazarResponse = 1;
  [(FTSpeechTranslationStreamingContext *)self->_streamContext closeStream];
  IsSuccess = _LTRemoteStatusIsSuccess([responseCopy return_code]);
  if (IsSuccess)
  {
    _receivedEmptyFinalASRResults = [(_LTOspreySpeechTranslationSession *)self _receivedEmptyFinalASRResults];
    if (!_receivedEmptyFinalASRResults)
    {
      v16 = 0;
      goto LABEL_11;
    }

    v9 = _LTOSLogTranslationEngine(_receivedEmptyFinalASRResults, v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [_LTOspreySpeechTranslationSession _handleFinalBlazarResponse:];
    }

    return_str = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = MEMORY[0x277CCA9B8];
    v12 = *MEMORY[0x277CE1C58];
    v20[0] = *MEMORY[0x277CCA450];
    v13 = [return_str localizedStringForKey:@"EMPTY_RECOGNITION_ERROR_DESCRIPTION" value:&stru_284834138 table:0];
    v21[0] = v13;
    v20[1] = *MEMORY[0x277CCA470];
    v14 = [return_str localizedStringForKey:@"SPEECH_NOT_RECOGNIZED_ERROR_DESCRIPTION" value:&stru_284834138 table:0];
    v21[1] = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
    v16 = [v11 errorWithDomain:v12 code:10 userInfo:v15];
  }

  else
  {
    v17 = _LTOSLogTranslationEngine(IsSuccess, v6);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [(_LTOspreySpeechTranslationSession *)v17 _handleFinalBlazarResponse:responseCopy];
    }

    return_code = [responseCopy return_code];
    return_str = [responseCopy return_str];
    v16 = _LTErrorFromRemoteFailure(return_code, return_str);
  }

LABEL_11:
  [(_LTOspreySpeechTranslationSession *)self translationDidFinishWithError:v16];
  if (!self->_isCancelled)
  {
    completionBlock = self->_completionBlock;
    if (completionBlock)
    {
      completionBlock[2](completionBlock, v16);
    }
  }
}

- (void)streamFailVerifySpeechTranslationStreamingResponse:(id)response
{
  responseCopy = response;
  v5 = [(_LTOspreySpeechTranslationSession *)self translationDidFinishWithError:responseCopy];
  v7 = _LTOSLogTranslationEngine(v5, v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [_LTOspreySpeechTranslationSession streamFailVerifySpeechTranslationStreamingResponse:];
  }
}

- (void)streamDidReceiveSpeechTranslationStreamingResponse:(id)response
{
  responseCopy = response;
  v6 = _LTOSLogTranslationEngine(responseCopy, v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *v9 = 0;
    _os_log_impl(&dword_232E53000, v6, OS_LOG_TYPE_INFO, "Received server message", v9, 2u);
  }

  content_type = [responseCopy content_type];
  if (content_type > 3)
  {
    if (content_type <= 5)
    {
      if (content_type == 4)
      {
        contentAsFTSpeechTranslationMtResponse = [responseCopy contentAsFTSpeechTranslationMtResponse];
        [(_LTOspreySpeechTranslationSession *)self _handleTranslationResponse:contentAsFTSpeechTranslationMtResponse];
      }

      else
      {
        contentAsFTSpeechTranslationMtResponse = [responseCopy contentAsFTSpeechTranslationTextToSpeechResponse];
        [(_LTOspreySpeechTranslationSession *)self _handleTTSResponse:contentAsFTSpeechTranslationMtResponse];
      }

      goto LABEL_20;
    }

    if (content_type == 6)
    {
      contentAsFTSpeechTranslationMtResponse = [responseCopy contentAsFTFinalBlazarResponse];
      [(_LTOspreySpeechTranslationSession *)self _handleFinalBlazarResponse:contentAsFTSpeechTranslationMtResponse];
      goto LABEL_20;
    }

    if (content_type == 12)
    {
      contentAsFTSpeechTranslationMtResponse = [responseCopy contentAsFTSpeechTranslationServerEndpointFeatures];
      [(_LTOspreySpeechTranslationSession *)self _handleServerEndpointFeatures:contentAsFTSpeechTranslationMtResponse];
      goto LABEL_20;
    }
  }

  else
  {
    if (content_type > 1)
    {
      if (content_type == 2)
      {
        contentAsFTSpeechTranslationMtResponse = [responseCopy contentAsFTSpeechTranslationFinalRecognitionResponse];
        [(_LTOspreySpeechTranslationSession *)self _handleFinalRecognitionResponse:contentAsFTSpeechTranslationMtResponse];
      }

      else
      {
        contentAsFTSpeechTranslationMtResponse = [responseCopy contentAsFTAudioLimitExceeded];
        [(_LTOspreySpeechTranslationSession *)self _handleAudioLimitExceededResponse:contentAsFTSpeechTranslationMtResponse];
      }

      goto LABEL_20;
    }

    if (content_type)
    {
      if (content_type == 1)
      {
        contentAsFTSpeechTranslationMtResponse = [responseCopy contentAsFTSpeechTranslationPartialRecognitionResponse];
        [(_LTOspreySpeechTranslationSession *)self _handlePartialRecognitionResponse:contentAsFTSpeechTranslationMtResponse];
LABEL_20:
      }
    }

    else
    {
      [(_LTOspreySpeechTranslationSession *)self cancelServerTimeout];
    }
  }
}

- (_LTSpeechTranslationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithService:context:text:delegate:selfLoggingManager:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)updateServerTimeout:(os_log_t)log .cold.1(os_log_t log, double a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = a2;
  _os_log_debug_impl(&dword_232E53000, log, OS_LOG_TYPE_DEBUG, "Setting server timeout for %.2fs", &v2, 0xCu);
}

- (void)translationDidFinishWithError:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  v3 = 2112;
  v4 = v0;
  _os_log_fault_impl(&dword_232E53000, v1, OS_LOG_TYPE_FAULT, "Speech session %p finished with error, but there's no delegate to inform; error: %@", v2, 0x16u);
}

- (void)_handleAudioLimitExceededResponse:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_handleFinalRecognitionResponse:(void *)a1 .cold.1(void *a1, void *a2)
{
  v4 = a1;
  [OUTLINED_FUNCTION_7() return_code];
  v5 = [a2 return_str];
  OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_0_11();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x12u);
}

- (void)_handleFinalRecognitionResponse:.cold.2()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  _os_log_debug_impl(&dword_232E53000, v0, OS_LOG_TYPE_DEBUG, "Recognition: %{sensitive}@", v1, 0xCu);
}

- (void)_handleTranslationResponse:(void *)a1 .cold.1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_7() locale];
  v4 = [v3 _ltLocaleIdentifier];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_11();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0xCu);
}

- (void)_handleTTSResponse:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_handleFinalBlazarResponse:(void *)a1 .cold.1(void *a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = a1;
  [OUTLINED_FUNCTION_7() return_code];
  v5 = [a2 return_str];
  OUTLINED_FUNCTION_5_4();
  _os_log_error_impl(&dword_232E53000, v2, OS_LOG_TYPE_ERROR, "Remote service error %d: %@", v6, 0x12u);
}

- (void)_handleFinalBlazarResponse:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)streamFailVerifySpeechTranslationStreamingResponse:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end