@interface SVXSpeechSynthesizer
- (BOOL)_continueContext:(id)context error:(id *)error;
- (BOOL)_isTTSPlaybackDisabled;
- (BOOL)_startPresynthesizedAudioRequestForContext:(id)context error:(id *)error;
- (BOOL)_startSpeechRequestForContext:(id)context error:(id *)error;
- (SVXSpeechSynthesizer)initWithModule:(id)module;
- (SVXSpeechSynthesizer)initWithModule:(id)module speechSynthesisUtils:(id)utils sessionUtils:(id)sessionUtils voiceGenderConverter:(id)converter announcer:(id)announcer configurationManager:(id)manager audioStreamingAnnouncer:(id)streamingAnnouncer ttsSession:(id)self0 speechSynthesisConfigurer:(id)self1 speechRequestConfigurer:(id)self2 voiceConfigurer:(id)self3 notificationCenterRegistrar:(id)self4 speakableUtteranceParserProvider:(id)self5 localizationUtils:(id)self6 speechInstrumentationUtilities:(id)self7 metricsContextFactory:(id)self8;
- (unint64_t)_numberOfContexts;
- (void)_cancelPendingContextsAtIndexes:(id)indexes;
- (void)_cancelPendingContextsWithOperationType:(int64_t)type;
- (void)_cancelPendingSpeakingContextWithRequest:(id)request;
- (void)_cancelPendingSpeakingContextsWithPriorityBelow:(int64_t)below;
- (void)_configureWithConfiguration:(id)configuration;
- (void)_duckTTSVolumeTo:(float)to rampTime:(double)time completion:(id)completion;
- (void)_enqueueContext:(id)context;
- (void)_finalizeContext:(id)context withResultType:(int64_t)type utterance:(id)utterance error:(id)error;
- (void)_handleDidFinishPresynthesizedAudioRequest:(id)request instrumentMetrics:(id)metrics error:(id)error;
- (void)_handleDidFinishSpeakingWithSpeechRequest:(id)request instrumentMetrics:(id)metrics;
- (void)_handleDidFinishSpeakingWithSpeechRequest:(id)request success:(BOOL)success error:(id)error;
- (void)_handleDidFinishSynthesizingForSpeechRequest:(id)request instrumentMetrics:(id)metrics error:(id)error;
- (void)_handleDidGenerateAudioChunkData:(id)data forSpeechRequest:(id)request;
- (void)_handleDidReceiveSpeechWordTimingInfoArray:(id)array forSpeechRequest:(id)request;
- (void)_handleDidStartPresynthesizedAudioRequest:(id)request timestamp:(unint64_t)timestamp;
- (void)_handleDidStartSpeakingWithSpeechRequest:(id)request timestamp:(unint64_t)timestamp;
- (void)_handleDidStopPresynthesizedAudioRequest:(id)request success:(BOOL)success error:(id)error;
- (void)_postcool;
- (void)_prewarm;
- (void)_prewarmWithContext:(id)context;
- (void)_processPendingContexts;
- (void)_startContext:(id)context;
- (void)_stopCurrentSpeakingContextWithInterruptionBehavior:(int64_t)behavior;
- (void)_stopCurrentSpeakingContextWithRequest:(id)request withInterruptionBehavior:(int64_t)behavior;
- (void)addListener:(id)listener;
- (void)cancelPendingRequests;
- (void)cancelRequest:(id)request;
- (void)dealloc;
- (void)didFinishPresynthesizedAudioRequest:(id)request withInstrumentMetrics:(id)metrics error:(id)error;
- (void)didFinishSpeakingRequest:(id)request successfully:(BOOL)successfully phonemesSpoken:(id)spoken withError:(id)error;
- (void)didFinishSpeakingRequest:(id)request withInstrumentMetrics:(id)metrics;
- (void)didFinishSynthesisRequest:(id)request withInstrumentMetrics:(id)metrics error:(id)error;
- (void)didStartPresynthesizedAudioRequest:(id)request;
- (void)didStartSpeakingRequest:(id)request;
- (void)didStopPresynthesizedAudioRequest:(id)request atEnd:(BOOL)end error:(id)error;
- (void)duckTTSVolumeTo:(float)to rampTime:(double)time completion:(id)completion;
- (void)enqueueRequest:(id)request languageCode:(id)code voiceName:(id)name gender:(int64_t)gender audioSessionID:(unsigned int)d preparation:(id)preparation finalization:(id)finalization taskTracker:(id)self0 analyticsContext:(id)self1;
- (void)languageCodeChanged:(id)changed;
- (void)outputVoiceChanged:(id)changed;
- (void)postcool;
- (void)prewarm;
- (void)prewarmRequest:(id)request;
- (void)removeListener:(id)listener;
- (void)startWithModuleInstanceProvider:(id)provider platformDependencies:(id)dependencies;
- (void)stopCurrentRequestWithInterruptionBehavior:(int64_t)behavior;
- (void)stopRequest:(id)request withInterruptionBehavior:(int64_t)behavior;
- (void)stopWithModuleInstanceProvider:(id)provider;
- (void)synthesizeRequest:(id)request audioChunkHandler:(id)handler taskTracker:(id)tracker analyticsContext:(id)context completion:(id)completion;
- (void)updateWithConfiguration:(id)configuration;
- (void)withRequest:(id)request didGenerateAudioChunk:(id)chunk;
- (void)withRequest:(id)request didReceiveTimingInfo:(id)info;
@end

@implementation SVXSpeechSynthesizer

- (BOOL)_isTTSPlaybackDisabled
{
  v2 = _AFPreferencesValueForKey();
  v3 = _AFPreferencesBoolFromValueWithDefault();

  return v3;
}

- (void)_duckTTSVolumeTo:(float)to rampTime:(double)time completion:(id)completion
{
  completionCopy = completion;
  ttsSession = self->_ttsSession;
  if (ttsSession)
  {
    *&v9 = to;
    [(SiriTTSDaemonSession *)ttsSession adjustVolume:completionCopy rampTime:v9 didFinish:time];
  }

  else if (completionCopy)
  {
    v13 = completionCopy;
    v11 = objc_alloc(MEMORY[0x277CCA9B8]);
    v12 = [v11 initWithDomain:*MEMORY[0x277CEF588] code:6 userInfo:0];
    v13[2](v13, v12);
  }

  MEMORY[0x2821F96F8]();
}

- (void)duckTTSVolumeTo:(float)to rampTime:(double)time completion:(id)completion
{
  completionCopy = completion;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __60__SVXSpeechSynthesizer_duckTTSVolumeTo_rampTime_completion___block_invoke;
  v11[3] = &unk_279C680E0;
  v12 = completionCopy;
  v9 = completionCopy;
  *&v10 = to;
  [(SVXSpeechSynthesizer *)self _duckTTSVolumeTo:v11 rampTime:v10 completion:time];
}

uint64_t __60__SVXSpeechSynthesizer_duckTTSVolumeTo_rampTime_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_finalizeContext:(id)context withResultType:(int64_t)type utterance:(id)utterance error:(id)error
{
  v96 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  utteranceCopy = utterance;
  errorCopy = error;
  v13 = MEMORY[0x277CEF098];
  v14 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v15 = v14;
    if (type > 4)
    {
      v16 = @"(unknown)";
    }

    else
    {
      v16 = off_279C678A8[type];
    }

    v17 = v16;
    *buf = 136316162;
    v87 = "[SVXSpeechSynthesizer _finalizeContext:withResultType:utterance:error:]";
    v88 = 2112;
    v89 = contextCopy;
    v90 = 2112;
    v91 = v17;
    v92 = 2112;
    v93 = utteranceCopy;
    v94 = 2112;
    v95 = errorCopy;
    _os_log_impl(&dword_2695B9000, v15, OS_LOG_TYPE_INFO, "%s context = %@, resultType = %@, utterance = %@, error = %@", buf, 0x34u);
  }

  if (contextCopy)
  {
    _numberOfContexts = [(SVXSpeechSynthesizer *)self _numberOfContexts];
    currentSpeakingContext = self->_currentSpeakingContext;
    if (currentSpeakingContext == contextCopy)
    {
      self->_currentSpeakingContext = 0;

      v20 = *v13;
      if (os_log_type_enabled(*v13, OS_LOG_TYPE_INFO))
      {
        v21 = self->_currentSpeakingContext;
        *buf = 136315394;
        v87 = "[SVXSpeechSynthesizer _finalizeContext:withResultType:utterance:error:]";
        v88 = 2112;
        v89 = v21;
        _os_log_impl(&dword_2695B9000, v20, OS_LOG_TYPE_INFO, "%s Setting current speaking context. (_currentSpeakingContext = %@)", buf, 0x16u);
      }
    }

    [(NSMutableArray *)self->_pendingContexts removeObject:contextCopy];
    [(NSMutableSet *)self->_synthesizingContexts removeObject:contextCopy];
    speechWordTimingInfoArray = [(SVXSpeechSynthesisContext *)contextCopy speechWordTimingInfoArray];
    v75 = speechWordTimingInfoArray;
    if (speechWordTimingInfoArray)
    {
      v23 = speechWordTimingInfoArray;
      typeCopy = type;
      v67 = errorCopy;
      v69 = utteranceCopy;
      v72 = _numberOfContexts;
      v77 = contextCopy;
      v24 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(speechWordTimingInfoArray, "count")}];
      v80 = 0u;
      v81 = 0u;
      v82 = 0u;
      v83 = 0u;
      v25 = v23;
      v26 = [v25 countByEnumeratingWithState:&v80 objects:v85 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v81;
        do
        {
          for (i = 0; i != v27; ++i)
          {
            if (*v81 != v28)
            {
              objc_enumerationMutation(v25);
            }

            v30 = *(*(&v80 + 1) + 8 * i);
            v31 = [SVXSpeechSynthesisWordTiming alloc];
            textRange = [v30 textRange];
            v34 = v33;
            [v30 startTime];
            v35 = [(SVXSpeechSynthesisWordTiming *)v31 initWithRange:textRange timeInterval:v34];
            [v24 addObject:v35];
          }

          v27 = [v25 countByEnumeratingWithState:&v80 objects:v85 count:16];
        }

        while (v27);
      }

      contextCopy = v77;
      errorCopy = v67;
      utteranceCopy = v69;
      v13 = MEMORY[0x277CEF098];
      _numberOfContexts = v72;
      type = typeCopy;
    }

    else
    {
      v24 = 0;
    }

    v36 = [[SVXSpeechSynthesisUtteranceInfo alloc] initWithUtterance:utteranceCopy wordTimings:v24];
    [(SVXSpeechSynthesisContext *)contextCopy finalizeWithResultType:type utteranceInfo:v36 error:errorCopy];
    request = [(SVXSpeechSynthesisContext *)contextCopy request];
    taskTracker = [(SVXSpeechSynthesisContext *)contextCopy taskTracker];
    if (type > 2)
    {
      if (type == 3)
      {
        analytics = [(SVXModule *)self->_module analytics];
        [(SVXSpeechSynthesisContext *)contextCopy analyticsContext];
        v61 = v60 = v36;
        [analytics logEventWithType:2705 context:v61];

        v36 = v60;
        [(SVXSpeechSynthesisAnnouncer *)self->_announcer speechSynthesizerDidInterruptRequest:request taskTracker:taskTracker];
      }

      else if (type == 4)
      {
        analyticsContext = [(SVXSpeechSynthesisContext *)contextCopy analyticsContext];
        v41 = AFAnalyticsContextCreateWithError();
        analytics2 = [(SVXModule *)self->_module analytics];
        v42 = MEMORY[0x277CBEC10];
        v73 = analyticsContext;
        if (analyticsContext)
        {
          v43 = analyticsContext;
        }

        else
        {
          v43 = MEMORY[0x277CBEC10];
        }

        if (v41)
        {
          v42 = v41;
        }

        v84[0] = v43;
        v84[1] = v42;
        [MEMORY[0x277CBEA60] arrayWithObjects:v84 count:{2, analytics2}];
        v70 = v36;
        v44 = _numberOfContexts;
        v46 = v45 = utteranceCopy;
        AFAnalyticsContextsMerge();
        v47 = v13;
        v49 = v48 = errorCopy;
        [typeCopy logEventWithType:2703 context:v49];

        errorCopy = v48;
        v13 = v47;

        utteranceCopy = v45;
        _numberOfContexts = v44;
        v36 = v70;

        [(SVXSpeechSynthesisAnnouncer *)self->_announcer speechSynthesizerDidFailRequest:request taskTracker:taskTracker error:errorCopy];
      }

      goto LABEL_40;
    }

    if (type != 1)
    {
      if (type == 2)
      {
        analytics3 = [(SVXModule *)self->_module analytics];
        [(SVXSpeechSynthesisContext *)contextCopy analyticsContext];
        v39 = v38 = v36;
        [analytics3 logEventWithType:2702 context:v39];

        v36 = v38;
        [(SVXSpeechSynthesisAnnouncer *)self->_announcer speechSynthesizerDidCancelRequest:request taskTracker:taskTracker];
      }

      goto LABEL_40;
    }

    v71 = v36;
    analytics4 = [(SVXModule *)self->_module analytics];
    analyticsContext2 = [(SVXSpeechSynthesisContext *)contextCopy analyticsContext];
    [analytics4 logEventWithType:2704 context:analyticsContext2];

    instrumentMetrics = [(SVXSpeechSynthesisContext *)contextCopy instrumentMetrics];
    v53 = instrumentMetrics;
    if (instrumentMetrics)
    {
      v74 = _numberOfContexts;
      speechBeginTime = [instrumentMetrics speechBeginTime];
      speechEndTime = [v53 speechEndTime];
      v56 = 0;
      v36 = v71;
      v68 = speechBeginTime;
      if (!speechBeginTime)
      {
        _numberOfContexts = v74;
        goto LABEL_39;
      }

      _numberOfContexts = v74;
      if (!speechEndTime)
      {
LABEL_39:
        [(SVXSpeechSynthesisAnnouncer *)self->_announcer speechSynthesizerDidFinishRequest:request utteranceInfo:v36 record:v56 taskTracker:taskTracker, typeCopy];

LABEL_40:
        _numberOfContexts2 = [(SVXSpeechSynthesizer *)self _numberOfContexts];
        v63 = *v13;
        if (os_log_type_enabled(*v13, OS_LOG_TYPE_INFO))
        {
          *buf = 136315650;
          v87 = "[SVXSpeechSynthesizer _finalizeContext:withResultType:utterance:error:]";
          v88 = 2048;
          v89 = _numberOfContexts;
          v90 = 2048;
          v91 = _numberOfContexts2;
          _os_log_impl(&dword_2695B9000, v63, OS_LOG_TYPE_INFO, "%s (numberOfContexts: %tu -> %tu)", buf, 0x20u);
        }

        if (_numberOfContexts && !_numberOfContexts2)
        {
          [(SVXSpeechSynthesisAnnouncer *)self->_announcer speechSynthesizerDidBecomeIdle];
        }

        goto LABEL_46;
      }

      typeCopy = speechEndTime;
      v57 = objc_alloc(MEMORY[0x277CEF4A8]);
      utterance = [v53 utterance];
      v56 = [v57 initWithUtterance:utterance beginTimestamp:v68 endTimestamp:typeCopy];
    }

    else
    {
      v56 = 0;
    }

    v36 = v71;
    goto LABEL_39;
  }

LABEL_46:
  performer = [(SVXModule *)self->_module performer];
  v79[0] = MEMORY[0x277D85DD0];
  v79[1] = 3221225472;
  v79[2] = __72__SVXSpeechSynthesizer__finalizeContext_withResultType_utterance_error___block_invoke;
  v79[3] = &unk_279C68FC0;
  v79[4] = self;
  [performer performBlock:v79 withOptions:0];
}

- (void)_stopCurrentSpeakingContextWithRequest:(id)request withInterruptionBehavior:(int64_t)behavior
{
  currentSpeakingContext = self->_currentSpeakingContext;
  requestCopy = request;
  request = [(SVXSpeechSynthesisContext *)currentSpeakingContext request];
  v9 = [request isEqual:requestCopy];

  if (v9)
  {

    [(SVXSpeechSynthesizer *)self _stopCurrentSpeakingContextWithInterruptionBehavior:behavior];
  }
}

- (void)_cancelPendingContextsWithOperationType:(int64_t)type
{
  if (type)
  {
    pendingContexts = self->_pendingContexts;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __64__SVXSpeechSynthesizer__cancelPendingContextsWithOperationType___block_invoke;
    v6[3] = &__block_descriptor_40_e42_B32__0__SVXSpeechSynthesisContext_8Q16_B24l;
    v6[4] = type;
    v5 = [(NSMutableArray *)pendingContexts indexesOfObjectsPassingTest:v6];
    if ([v5 count])
    {
      [(SVXSpeechSynthesizer *)self _cancelPendingContextsAtIndexes:v5];
    }
  }
}

- (void)_cancelPendingSpeakingContextsWithPriorityBelow:(int64_t)below
{
  if (below)
  {
    pendingContexts = self->_pendingContexts;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __72__SVXSpeechSynthesizer__cancelPendingSpeakingContextsWithPriorityBelow___block_invoke;
    v6[3] = &__block_descriptor_40_e42_B32__0__SVXSpeechSynthesisContext_8Q16_B24l;
    v6[4] = below;
    v5 = [(NSMutableArray *)pendingContexts indexesOfObjectsPassingTest:v6];
    if ([v5 count])
    {
      [(SVXSpeechSynthesizer *)self _cancelPendingContextsAtIndexes:v5];
    }
  }
}

BOOL __72__SVXSpeechSynthesizer__cancelPendingSpeakingContextsWithPriorityBelow___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 operationType] == 2)
  {
    v4 = [v3 request];
    v5 = [v4 priority] < *(a1 + 32);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_cancelPendingSpeakingContextWithRequest:(id)request
{
  requestCopy = request;
  v5 = requestCopy;
  if (requestCopy)
  {
    pendingContexts = self->_pendingContexts;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __65__SVXSpeechSynthesizer__cancelPendingSpeakingContextWithRequest___block_invoke;
    v8[3] = &unk_279C66BA0;
    v9 = requestCopy;
    v7 = [(NSMutableArray *)pendingContexts indexesOfObjectsPassingTest:v8];
    if ([v7 count])
    {
      [(SVXSpeechSynthesizer *)self _cancelPendingContextsAtIndexes:v7];
    }
  }
}

uint64_t __65__SVXSpeechSynthesizer__cancelPendingSpeakingContextWithRequest___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 operationType] == 2)
  {
    v4 = [v3 request];
    v5 = [v4 isEqual:*(a1 + 32)];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_stopCurrentSpeakingContextWithInterruptionBehavior:(int64_t)behavior
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CEF098];
  v6 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    currentSpeakingContext = self->_currentSpeakingContext;
    v8 = v6;
    if (behavior > 2)
    {
      v9 = @"(unknown)";
    }

    else
    {
      v9 = off_279C67778[behavior];
    }

    v10 = v9;
    v25 = 136315650;
    v26 = "[SVXSpeechSynthesizer _stopCurrentSpeakingContextWithInterruptionBehavior:]";
    v27 = 2112;
    v28 = currentSpeakingContext;
    v29 = 2112;
    v30 = v10;
    _os_log_impl(&dword_2695B9000, v8, OS_LOG_TYPE_INFO, "%s (_currentSpeakingContext = %@, interruptionBehavior = %@)", &v25, 0x20u);
  }

  v11 = self->_currentSpeakingContext;
  if (v11)
  {
    presynthesizedAudioRequest = [(SVXSpeechSynthesisContext *)v11 presynthesizedAudioRequest];
    speechRequest = [(SVXSpeechSynthesisContext *)self->_currentSpeakingContext speechRequest];
    v14 = speechRequest;
    if (presynthesizedAudioRequest | speechRequest)
    {
      if (speechRequest)
      {
        v18 = *v5;
        if (os_log_type_enabled(*v5, OS_LOG_TYPE_INFO))
        {
          ttsSession = self->_ttsSession;
          v25 = 136315650;
          v26 = "[SVXSpeechSynthesizer _stopCurrentSpeakingContextWithInterruptionBehavior:]";
          v27 = 2112;
          v28 = ttsSession;
          v29 = 2112;
          v30 = v14;
          _os_log_impl(&dword_2695B9000, v18, OS_LOG_TYPE_INFO, "%s Stopping TTS for current speaking request... (ttsSession = %@, speechRequest = %@)", &v25, 0x20u);
        }

        [(SiriTTSDaemonSession *)self->_ttsSession cancelWithRequest:v14];
      }

      v16 = v14;
      if (presynthesizedAudioRequest)
      {
        v20 = *v5;
        if (os_log_type_enabled(*v5, OS_LOG_TYPE_INFO))
        {
          v21 = self->_ttsSession;
          v25 = 136315650;
          v26 = "[SVXSpeechSynthesizer _stopCurrentSpeakingContextWithInterruptionBehavior:]";
          v27 = 2112;
          v28 = v21;
          v29 = 2112;
          v30 = presynthesizedAudioRequest;
          _os_log_impl(&dword_2695B9000, v20, OS_LOG_TYPE_INFO, "%s Stopping TTS with presynthesized audio for current request... (ttsSession = %@, audioRequest = %@)", &v25, 0x20u);
        }

        [(SiriTTSDaemonSession *)self->_ttsSession cancelWithRequest:presynthesizedAudioRequest];
        v16 = v14;
      }
    }

    else
    {
      v15 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
      {
        v24 = self->_currentSpeakingContext;
        v25 = 136315394;
        v26 = "[SVXSpeechSynthesizer _stopCurrentSpeakingContextWithInterruptionBehavior:]";
        v27 = 2112;
        v28 = v24;
        _os_log_error_impl(&dword_2695B9000, v15, OS_LOG_TYPE_ERROR, "%s Current speaking context does NOT have an underlying speech request or presynthesized audio request when attempted to stop TTS. (_currentSpeakingContext = %@)", &v25, 0x16u);
      }

      v16 = 0;
    }

    v22 = self->_currentSpeakingContext;
    text = [(__CFString *)v16 text];
    [(SVXSpeechSynthesizer *)self _finalizeContext:v22 withResultType:3 utterance:text error:0];
  }

  else
  {
    v17 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_INFO))
    {
      v25 = 136315138;
      v26 = "[SVXSpeechSynthesizer _stopCurrentSpeakingContextWithInterruptionBehavior:]";
      _os_log_impl(&dword_2695B9000, v17, OS_LOG_TYPE_INFO, "%s There's no current speaking context to stop.", &v25, 0xCu);
    }
  }
}

- (void)_cancelPendingContextsAtIndexes:(id)indexes
{
  v35 = *MEMORY[0x277D85DE8];
  indexesCopy = indexes;
  v5 = MEMORY[0x277CEF098];
  v6 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v29 = "[SVXSpeechSynthesizer _cancelPendingContextsAtIndexes:]";
    _os_log_impl(&dword_2695B9000, v6, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  if ([(NSMutableArray *)self->_pendingContexts count])
  {
    _numberOfContexts = [(SVXSpeechSynthesizer *)self _numberOfContexts];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __56__SVXSpeechSynthesizer__cancelPendingContextsAtIndexes___block_invoke;
    v27[3] = &unk_279C66B50;
    v27[4] = self;
    v8 = MEMORY[0x26D642680](v27);
    v9 = v8;
    if (indexesCopy)
    {
      pendingContexts = self->_pendingContexts;
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __56__SVXSpeechSynthesizer__cancelPendingContextsAtIndexes___block_invoke_2;
      v25[3] = &unk_279C66B78;
      v26 = v8;
      [(NSMutableArray *)pendingContexts enumerateObjectsAtIndexes:indexesCopy options:0 usingBlock:v25];
      [(NSMutableArray *)self->_pendingContexts removeObjectsAtIndexes:indexesCopy];
    }

    else
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v12 = self->_pendingContexts;
      v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v21 objects:v34 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v22;
        do
        {
          v16 = 0;
          do
          {
            if (*v22 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v9[2](v9, *(*(&v21 + 1) + 8 * v16++));
          }

          while (v14 != v16);
          v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v21 objects:v34 count:16];
        }

        while (v14);
      }

      [(NSMutableArray *)self->_pendingContexts removeAllObjects];
    }

    _numberOfContexts2 = [(SVXSpeechSynthesizer *)self _numberOfContexts];
    v18 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v29 = "[SVXSpeechSynthesizer _cancelPendingContextsAtIndexes:]";
      v30 = 2048;
      v31 = _numberOfContexts;
      v32 = 2048;
      v33 = _numberOfContexts2;
      _os_log_impl(&dword_2695B9000, v18, OS_LOG_TYPE_INFO, "%s (numberOfContexts: %tu -> %tu)", buf, 0x20u);
    }

    if (_numberOfContexts && !_numberOfContexts2)
    {
      [(SVXSpeechSynthesisAnnouncer *)self->_announcer speechSynthesizerDidBecomeIdle];
    }

    performer = [(SVXModule *)self->_module performer];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __56__SVXSpeechSynthesizer__cancelPendingContextsAtIndexes___block_invoke_73;
    v20[3] = &unk_279C68FC0;
    v20[4] = self;
    [performer performBlock:v20 withOptions:0];
  }

  else
  {
    v11 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v29 = "[SVXSpeechSynthesizer _cancelPendingContextsAtIndexes:]";
      _os_log_impl(&dword_2695B9000, v11, OS_LOG_TYPE_INFO, "%s There's no pending context to cancel.", buf, 0xCu);
    }
  }
}

void __56__SVXSpeechSynthesizer__cancelPendingContextsAtIndexes___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 finalizeWithResultType:2 utteranceInfo:0 error:0];
  v8 = [v3 request];
  v4 = [*(*(a1 + 32) + 32) analytics];
  v5 = [v3 analyticsContext];
  [v4 logEventWithType:2702 context:v5];

  v6 = *(*(a1 + 32) + 48);
  v7 = [v3 taskTracker];

  [v6 speechSynthesizerDidCancelRequest:v8 taskTracker:v7];
}

- (BOOL)_startSpeechRequestForContext:(id)context error:(id *)error
{
  v102 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v7 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "[SVXSpeechSynthesizer _startSpeechRequestForContext:error:]";
    *&buf[12] = 2112;
    *&buf[14] = contextCopy;
    _os_log_impl(&dword_2695B9000, v7, OS_LOG_TYPE_INFO, "%s context = %@", buf, 0x16u);
  }

  if (error)
  {
    *error = 0;
  }

  languageCode = [contextCopy languageCode];
  if (![languageCode length] || (-[SVXSpeechSynthesisUtils createLocaleFromLanguageCode:](self->_speechSynthesisUtils, "createLocaleFromLanguageCode:", languageCode), (locale = objc_claimAutoreleasedReturnValue()) == 0))
  {
    currentConfiguration = [(SVXSpeechSynthesisConfigurationStateManager *)self->_configurationManager currentConfiguration];
    locale = [currentConfiguration locale];

    if (!locale)
    {
      speechSynthesisUtils = self->_speechSynthesisUtils;
      preferences = [(SVXModule *)self->_module preferences];
      locale = [(SVXSpeechSynthesisUtils *)speechSynthesisUtils getLocaleWithAllowsFallback:1 preferences:preferences];
    }
  }

  gender = [contextCopy gender];
  v66 = [(SVXAFSpeakableUtteranceParserProvider *)self->_speakableUtteranceParserProvider getWithLocale:locale];
  [v66 setHandleTTSCodes:1];
  request = [contextCopy request];
  speakableText = [request speakableText];
  if (!speakableText)
  {
    localizationKey = [request localizationKey];
    if (localizationKey)
    {
      currentConfiguration2 = [(SVXSpeechSynthesisConfigurationStateManager *)self->_configurationManager currentConfiguration];
      outputVoiceInfo = [currentConfiguration2 outputVoiceInfo];
      v17 = outputVoiceInfo;
      if (outputVoiceInfo)
      {
        v18 = outputVoiceInfo;
      }

      else
      {
        v19 = self->_speechSynthesisUtils;
        preferences2 = [(SVXModule *)self->_module preferences];
        v18 = [(SVXSpeechSynthesisUtils *)v19 getOutputVoiceInfoWithAllowsFallback:1 preferences:preferences2];
      }

      if (languageCode)
      {
        languageCode2 = languageCode;
      }

      else
      {
        languageCode2 = [v18 languageCode];
      }

      v22 = languageCode2;
      if (!gender)
      {
        gender = -[SVXSpeechSynthesisUtils getGenderFromVoiceGender:](self->_speechSynthesisUtils, "getGenderFromVoiceGender:", [v18 gender]);
      }

      speakableText = [(SVXLocalizationUtils *)self->_localizationUtils getLocalizedStringWithLanguageCode:v22 gender:gender key:localizationKey];
    }

    else
    {
      speakableText = 0;
    }
  }

  v93 = 0;
  v92 = 0;
  v23 = [v66 parseStringWithFormat:speakableText error:&v92 containsPrivacySensitiveContents:&v93];
  v24 = v92;
  if (!v24)
  {
    v29 = [v23 length];
    v30 = *MEMORY[0x277CEF098];
    v31 = os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO);
    if (!v29)
    {
      if (v31)
      {
        *buf = 136315650;
        *&buf[4] = "[SVXSpeechSynthesizer _startSpeechRequestForContext:error:]";
        *&buf[12] = 2114;
        *&buf[14] = speakableText;
        *&buf[22] = 2114;
        v100 = v66;
        _os_log_impl(&dword_2695B9000, v30, OS_LOG_TYPE_INFO, "%s Speakable utterance parser parsed an empty speakableUtterance. (speakableText = %{public}@, speakableUtteranceParser = %{public}@", buf, 0x20u);
      }

      v25 = 0;
      goto LABEL_43;
    }

    if (v31)
    {
      *buf = 136315394;
      *&buf[4] = "[SVXSpeechSynthesizer _startSpeechRequestForContext:error:]";
      *&buf[12] = 1024;
      *&buf[14] = v93;
      _os_log_impl(&dword_2695B9000, v30, OS_LOG_TYPE_INFO, "%s containsPrivacySensitiveContents = %d", buf, 0x12u);
    }

    v32 = ([request options] & 1) == 0;
    v33 = v93;
    objc_initWeak(&location, self);
    operationType = [contextCopy operationType];
    v35 = v32 | v33;
    if (operationType == 1)
    {
      speechSynthesisConfigurer = self->_speechSynthesisConfigurer;
      preferences3 = [(SVXModule *)self->_module preferences];
      v52 = [(SVXSpeechSynthesisConfigurer *)speechSynthesisConfigurer synthesisRequestForContext:contextCopy preferences:preferences3];

      [v52 setText:v23];
      [v52 setPrivacySensitive:v35 & 1];
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v100 = __Block_byref_object_copy_;
      *&v101 = __Block_byref_object_dispose_;
      *(&v101 + 1) = 0;
      v90[0] = MEMORY[0x277D85DD0];
      v90[1] = 3221225472;
      v90[2] = __60__SVXSpeechSynthesizer__startSpeechRequestForContext_error___block_invoke;
      v90[3] = &unk_279C66A60;
      v90[4] = buf;
      [v52 setDidReportInstrument:v90];
      objc_initWeak(&v89, v52);
      v86[0] = MEMORY[0x277D85DD0];
      v86[1] = 3221225472;
      v86[2] = __60__SVXSpeechSynthesizer__startSpeechRequestForContext_error___block_invoke_2;
      v86[3] = &unk_279C66A88;
      objc_copyWeak(&v87, &location);
      objc_copyWeak(&v88, &v89);
      [v52 setDidGenerateAudio:v86];
      v83[0] = MEMORY[0x277D85DD0];
      v83[1] = 3221225472;
      v83[2] = __60__SVXSpeechSynthesizer__startSpeechRequestForContext_error___block_invoke_3;
      v83[3] = &unk_279C66AB0;
      objc_copyWeak(&v84, &location);
      objc_copyWeak(&v85, &v89);
      [v52 setDidGenerateWordTimings:v83];
      v53 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
      {
        ttsSession = self->_ttsSession;
        *from = 136315650;
        *&from[4] = "[SVXSpeechSynthesizer _startSpeechRequestForContext:error:]";
        v95 = 2112;
        v96 = ttsSession;
        v97 = 2112;
        v98 = v52;
        _os_log_impl(&dword_2695B9000, v53, OS_LOG_TYPE_INFO, "%s Starting synthesizing context... (ttsSession = %@, synthesisRequest = %@)", from, 0x20u);
      }

      v55 = self->_ttsSession;
      v79[0] = MEMORY[0x277D85DD0];
      v79[1] = 3221225472;
      v79[2] = __60__SVXSpeechSynthesizer__startSpeechRequestForContext_error___block_invoke_67;
      v79[3] = &unk_279C66AD8;
      objc_copyWeak(&v82, &location);
      v56 = v52;
      v80 = v56;
      v81 = buf;
      [(SiriTTSDaemonSession *)v55 synthesizeWithRequest:v56 didFinish:v79];
      v57 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
      {
        v58 = self->_ttsSession;
        *from = 136315650;
        *&from[4] = "[SVXSpeechSynthesizer _startSpeechRequestForContext:error:]";
        v95 = 2112;
        v96 = v58;
        v97 = 2112;
        v98 = v56;
        _os_log_impl(&dword_2695B9000, v57, OS_LOG_TYPE_INFO, "%s Started synthesizing context. (ttsSession = %@, synthesisRequest = %@)", from, 0x20u);
      }

      [contextCopy setSynthesisRequest:v56];

      objc_destroyWeak(&v82);
      objc_destroyWeak(&v85);
      objc_destroyWeak(&v84);
      objc_destroyWeak(&v88);
      objc_destroyWeak(&v87);
      objc_destroyWeak(&v89);
      _Block_object_dispose(buf, 8);
    }

    else
    {
      if (operationType != 2)
      {
        v25 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SVXSpeechSynthesisErrorDomain" code:3 userInfo:0];
        v59 = *MEMORY[0x277CEF098];
        if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "[SVXSpeechSynthesizer _startSpeechRequestForContext:error:]";
          *&buf[12] = 2114;
          *&buf[14] = v25;
          _os_log_error_impl(&dword_2695B9000, v59, OS_LOG_TYPE_ERROR, "%s Speech synthesizer failed. (error = %{public}@)", buf, 0x16u);
        }

        v28 = v25 == 0;
        if (error && v25)
        {
          v60 = v25;
          v28 = 0;
          *error = v25;
        }

        goto LABEL_55;
      }

      speechRequestConfigurer = self->_speechRequestConfigurer;
      preferences4 = [(SVXModule *)self->_module preferences];
      v38 = [(SVXSpeechRequestConfigurer *)speechRequestConfigurer speechRequestForContext:contextCopy preferences:preferences4];

      taskTracker = [contextCopy taskTracker];
      sessionUUID = [taskTracker sessionUUID];
      [v38 setSiriRequestId:sessionUUID];

      v41 = objc_alloc(MEMORY[0x277CCAD78]);
      taskTracker2 = [contextCopy taskTracker];
      aceId = [taskTracker2 aceId];
      v62 = [v41 initWithUUIDString:aceId];

      [v38 setSiriAceViewId:v62];
      [v38 setText:v23];
      [v38 setPrivacySensitive:v35 & 1];
      if (([request options] & 2) != 0)
      {
        v44 = *MEMORY[0x277CEF098];
        if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          *&buf[4] = "[SVXSpeechSynthesizer _startSpeechRequestForContext:error:]";
          _os_log_impl(&dword_2695B9000, v44, OS_LOG_TYPE_INFO, "%s Setting minimizeDeviceUsage for TTS request to prefer server side synthesis.", buf, 0xCu);
        }

        [v38 setMinimizeDeviceUsage:{1, v62}];
      }

      objc_initWeak(from, v38);
      v76[0] = MEMORY[0x277D85DD0];
      v76[1] = 3221225472;
      v76[2] = __60__SVXSpeechSynthesizer__startSpeechRequestForContext_error___block_invoke_68;
      v76[3] = &unk_279C66A10;
      objc_copyWeak(&v77, &location);
      objc_copyWeak(&v78, from);
      [v38 setDidReportInstrument:v76];
      v73[0] = MEMORY[0x277D85DD0];
      v73[1] = 3221225472;
      v73[2] = __60__SVXSpeechSynthesizer__startSpeechRequestForContext_error___block_invoke_2_69;
      v73[3] = &unk_279C66B00;
      objc_copyWeak(&v74, &location);
      objc_copyWeak(&v75, from);
      [v38 setDidStartSpeaking:v73];
      v70[0] = MEMORY[0x277D85DD0];
      v70[1] = 3221225472;
      v70[2] = __60__SVXSpeechSynthesizer__startSpeechRequestForContext_error___block_invoke_3_70;
      v70[3] = &unk_279C66AB0;
      objc_copyWeak(&v71, &location);
      objc_copyWeak(&v72, from);
      [v38 setDidGenerateWordTimings:v70];
      v45 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
      {
        v46 = self->_ttsSession;
        *buf = 136315650;
        *&buf[4] = "[SVXSpeechSynthesizer _startSpeechRequestForContext:error:]";
        *&buf[12] = 2112;
        *&buf[14] = v46;
        *&buf[22] = 2112;
        v100 = v38;
        _os_log_impl(&dword_2695B9000, v45, OS_LOG_TYPE_INFO, "%s Starting TTS for speaking context... (ttsSession = %@, speechRequest = %@)", buf, 0x20u);
      }

      v47 = self->_ttsSession;
      v67[0] = MEMORY[0x277D85DD0];
      v67[1] = 3221225472;
      v67[2] = __60__SVXSpeechSynthesizer__startSpeechRequestForContext_error___block_invoke_71;
      v67[3] = &unk_279C66B28;
      objc_copyWeak(&v68, &location);
      objc_copyWeak(&v69, from);
      [(SiriTTSDaemonSession *)v47 speakWithSpeechRequest:v38 didFinish:v67];
      v48 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
      {
        v49 = self->_ttsSession;
        *buf = 136315650;
        *&buf[4] = "[SVXSpeechSynthesizer _startSpeechRequestForContext:error:]";
        *&buf[12] = 2112;
        *&buf[14] = v49;
        *&buf[22] = 2112;
        v100 = v38;
        _os_log_impl(&dword_2695B9000, v48, OS_LOG_TYPE_INFO, "%s Started TTS for speaking context... (ttsSession = %@, speechRequest = %@)", buf, 0x20u);
      }

      [contextCopy setSpeechRequest:{v38, v62}];
      objc_destroyWeak(&v69);
      objc_destroyWeak(&v68);
      objc_destroyWeak(&v72);
      objc_destroyWeak(&v71);
      objc_destroyWeak(&v75);
      objc_destroyWeak(&v74);
      objc_destroyWeak(&v78);
      objc_destroyWeak(&v77);
      objc_destroyWeak(from);
    }

    v25 = 0;
    v28 = 1;
LABEL_55:
    objc_destroyWeak(&location);
    goto LABEL_56;
  }

  v25 = v24;
  v26 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315906;
    *&buf[4] = "[SVXSpeechSynthesizer _startSpeechRequestForContext:error:]";
    *&buf[12] = 2114;
    *&buf[14] = speakableText;
    *&buf[22] = 2114;
    v100 = v66;
    LOWORD(v101) = 2114;
    *(&v101 + 2) = v25;
    _os_log_error_impl(&dword_2695B9000, v26, OS_LOG_TYPE_ERROR, "%s Speakable utterance parser failed to parse speakable text. (speakableText = %{public}@, speakableUtteranceParser = %{public}@, error = %{public}@)", buf, 0x2Au);
    if (error)
    {
      goto LABEL_25;
    }

LABEL_43:
    v28 = 0;
    goto LABEL_56;
  }

  if (!error)
  {
    goto LABEL_43;
  }

LABEL_25:
  v27 = v25;
  v28 = 0;
  *error = v25;
LABEL_56:

  return v28;
}

void __60__SVXSpeechSynthesizer__startSpeechRequestForContext_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained withRequest:v4 didGenerateAudioChunk:v3];
}

void __60__SVXSpeechSynthesizer__startSpeechRequestForContext_error___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained withRequest:v4 didReceiveTimingInfo:v3];
}

void __60__SVXSpeechSynthesizer__startSpeechRequestForContext_error___block_invoke_67(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained didFinishSynthesisRequest:*(a1 + 32) withInstrumentMetrics:*(*(*(a1 + 40) + 8) + 40) error:v3];
}

void __60__SVXSpeechSynthesizer__startSpeechRequestForContext_error___block_invoke_68(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained didFinishSpeakingRequest:v4 withInstrumentMetrics:v3];
}

void __60__SVXSpeechSynthesizer__startSpeechRequestForContext_error___block_invoke_2_69(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained didStartSpeakingRequest:v2];
}

void __60__SVXSpeechSynthesizer__startSpeechRequestForContext_error___block_invoke_3_70(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained withRequest:v4 didReceiveTimingInfo:v3];
}

void __60__SVXSpeechSynthesizer__startSpeechRequestForContext_error___block_invoke_71(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained didFinishSpeakingRequest:v4 successfully:v3 == 0 phonemesSpoken:0 withError:v3];
}

- (BOOL)_startPresynthesizedAudioRequestForContext:(id)context error:(id *)error
{
  v70 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v6 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "[SVXSpeechSynthesizer _startPresynthesizedAudioRequestForContext:error:]";
    *v67 = 2112;
    *&v67[2] = contextCopy;
    _os_log_impl(&dword_2695B9000, v6, OS_LOG_TYPE_INFO, "%s context = %@", buf, 0x16u);
  }

  if (error)
  {
    *error = 0;
  }

  request = [contextCopy request];
  presynthesizedAudio = [request presynthesizedAudio];
  streamID = [request streamID];
  if (presynthesizedAudio)
  {
    v8 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *&buf[4] = "[SVXSpeechSynthesizer _startPresynthesizedAudioRequestForContext:error:]";
      *v67 = 2112;
      *&v67[2] = presynthesizedAudio;
      _os_log_impl(&dword_2695B9000, v8, OS_LOG_TYPE_INFO, "%s presynthesizedAudio = %@", buf, 0x16u);
    }

    v9 = objc_alloc_init(MEMORY[0x277D613D0]);
    data = [presynthesizedAudio data];
    [v9 setAudioData:data];

    decoderASBD = [presynthesizedAudio decoderASBD];
    [decoderASBD sampleRate];
    *buf = v12;
    *&buf[8] = [decoderASBD formatID];
    *v67 = [decoderASBD formatFlags];
    *&v67[4] = [decoderASBD bytesPerPacket];
    *&v67[8] = [decoderASBD framesPerPacket];
    LODWORD(v68) = [decoderASBD bytesPerFrame];
    HIDWORD(v68) = [decoderASBD channelsPerFrame];
    v69[0] = [decoderASBD bitsPerChannel];
    reserved = [decoderASBD reserved];

    v69[1] = reserved;
    [v9 setAsbd:buf];

    v14 = [objc_alloc(MEMORY[0x277D613E8]) initWithAudio:v9];
  }

  else
  {
    if (streamID)
    {
      v16 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        *&buf[4] = "[SVXSpeechSynthesizer _startPresynthesizedAudioRequestForContext:error:]";
        *v67 = 2112;
        *&v67[2] = streamID;
        _os_log_impl(&dword_2695B9000, v16, OS_LOG_TYPE_INFO, "%s streamID = %@", buf, 0x16u);
      }

      v14 = 0;
LABEL_16:
      operationType = [contextCopy operationType];
      v18 = presynthesizedAudio != 0;
      if (!streamID)
      {
        v18 = 1;
      }

      if (!v18 && operationType == 2)
      {
        v19 = *MEMORY[0x277CEF098];
        if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "[SVXSpeechSynthesizer _startPresynthesizedAudioRequestForContext:error:]";
          *v67 = 2112;
          *&v67[2] = streamID;
          _os_log_error_impl(&dword_2695B9000, v19, OS_LOG_TYPE_ERROR, "%s operationType is speaking but presynthesizedAudio is nil for streamID:(%@). Updated to synthesizing.", buf, 0x16u);
        }

        goto LABEL_22;
      }

      if (v14 && operationType == 2)
      {
        audioSessionID = [contextCopy audioSessionID];
        if (!audioSessionID)
        {
          audioSessionAssertion = [contextCopy audioSessionAssertion];
          audioSessionID = [audioSessionAssertion audioSessionID];
          if (!audioSessionID)
          {
            currentConfiguration = [(SVXSpeechSynthesisConfigurationStateManager *)self->_configurationManager currentConfiguration];
            audioSessionID = [currentConfiguration audioSessionID];
          }
        }

        v34 = *MEMORY[0x277CEF098];
        if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          *&buf[4] = "[SVXSpeechSynthesizer _startPresynthesizedAudioRequestForContext:error:]";
          *v67 = 2048;
          *&v67[2] = audioSessionID;
          _os_log_impl(&dword_2695B9000, v34, OS_LOG_TYPE_INFO, "%s audioSessionID = %lu", buf, 0x16u);
        }

        [v14 setAudioSessionId:audioSessionID];
      }

      else if (operationType != 2)
      {
        if (operationType != 1)
        {
          v29 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SVXSpeechSynthesisErrorDomain" code:3 userInfo:0];
          v35 = *MEMORY[0x277CEF098];
          if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "[SVXSpeechSynthesizer _startPresynthesizedAudioRequestForContext:error:]";
            *v67 = 2114;
            *&v67[2] = v29;
            _os_log_error_impl(&dword_2695B9000, v35, OS_LOG_TYPE_ERROR, "%s Speech synthesizer failed. (error = %{public}@)", buf, 0x16u);
          }

LABEL_59:
          if (v29)
          {
            if (error)
            {
              v50 = v29;
              v15 = 0;
              *error = v29;
            }

            else
            {
              v15 = 0;
            }

            goto LABEL_64;
          }

LABEL_62:
          [contextCopy setPresynthesizedAudioRequest:v14];
          v29 = 0;
          v15 = 1;
LABEL_64:

          goto LABEL_65;
        }

LABEL_22:
        request2 = [contextCopy request];
        speakableText = [request2 speakableText];

        if ([speakableText length])
        {
          languageCode = [contextCopy languageCode];
          if (![languageCode length] || (-[SVXSpeechSynthesisUtils createLocaleFromLanguageCode:](self->_speechSynthesisUtils, "createLocaleFromLanguageCode:", languageCode), (locale = objc_claimAutoreleasedReturnValue()) == 0))
          {
            currentConfiguration2 = [(SVXSpeechSynthesisConfigurationStateManager *)self->_configurationManager currentConfiguration];
            locale = [currentConfiguration2 locale];

            if (!locale)
            {
              speechSynthesisUtils = self->_speechSynthesisUtils;
              preferences = [(SVXModule *)self->_module preferences];
              locale = [(SVXSpeechSynthesisUtils *)speechSynthesisUtils getLocaleWithAllowsFallback:1 preferences:preferences];
            }
          }

          v26 = [(SVXAFSpeakableUtteranceParserProvider *)self->_speakableUtteranceParserProvider getWithLocale:locale];
          [v26 setHandleTTSCodes:1];
          v65 = 0;
          v27 = [v26 parseStringWithFormat:speakableText error:&v65];
          v28 = v65;
          if (v28)
          {
            v29 = v28;
            v30 = *MEMORY[0x277CEF098];
            if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315906;
              *&buf[4] = "[SVXSpeechSynthesizer _startPresynthesizedAudioRequestForContext:error:]";
              *v67 = 2114;
              *&v67[2] = speakableText;
              *&v67[10] = 2114;
              v68 = v26;
              LOWORD(v69[0]) = 2114;
              *(v69 + 2) = v29;
              _os_log_error_impl(&dword_2695B9000, v30, OS_LOG_TYPE_ERROR, "%s Speakable utterance parser failed to parse speakable text. (speakableText = %{public}@, speakableUtteranceParser = %{public}@, error = %{public}@)", buf, 0x2Au);
            }
          }

          else if ([v27 length] && objc_msgSend(streamID, "length"))
          {
            v47 = [objc_alloc(MEMORY[0x277D61410]) initWithText:v27 identifier:streamID];
            [(SiriTTSDaemonSession *)self->_ttsSession signalWithInlineStreaming:v47];
            v48 = *MEMORY[0x277CEF098];
            if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
            {
              ttsSession = self->_ttsSession;
              *buf = 136315650;
              *&buf[4] = "[SVXSpeechSynthesizer _startPresynthesizedAudioRequestForContext:error:]";
              *v67 = 2112;
              *&v67[2] = ttsSession;
              *&v67[10] = 2112;
              v68 = v47;
              _os_log_impl(&dword_2695B9000, v48, OS_LOG_TYPE_INFO, "%s Signaled inline streaming. (session = %@, signal = %@)", buf, 0x20u);
            }

            v29 = 0;
          }

          else
          {
            v29 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SVXSpeechSynthesisErrorDomain" code:5 userInfo:0];
          }
        }

        else
        {
          v29 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SVXSpeechSynthesisErrorDomain" code:4 userInfo:0];
        }

        goto LABEL_59;
      }

      v36 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
      {
        v37 = self->_ttsSession;
        *buf = 136315650;
        *&buf[4] = "[SVXSpeechSynthesizer _startPresynthesizedAudioRequestForContext:error:]";
        *v67 = 2112;
        *&v67[2] = v37;
        *&v67[10] = 2112;
        v68 = v14;
        _os_log_impl(&dword_2695B9000, v36, OS_LOG_TYPE_INFO, "%s Starting TTS with presynthesized audio for speaking context... (session = %@, audioRequest = %@)", buf, 0x20u);
      }

      taskTracker = [contextCopy taskTracker];
      sessionUUID = [taskTracker sessionUUID];
      [v14 setSiriRequestId:sessionUUID];

      v40 = objc_alloc(MEMORY[0x277CCAD78]);
      taskTracker2 = [contextCopy taskTracker];
      aceId = [taskTracker2 aceId];
      v43 = [v40 initWithUUIDString:aceId];

      [v14 setSiriAceViewId:v43];
      objc_initWeak(&location, v14);
      objc_initWeak(&from, self);
      v60[0] = MEMORY[0x277D85DD0];
      v60[1] = 3221225472;
      v60[2] = __73__SVXSpeechSynthesizer__startPresynthesizedAudioRequestForContext_error___block_invoke;
      v60[3] = &unk_279C66A10;
      objc_copyWeak(&v61, &from);
      objc_copyWeak(&v62, &location);
      [v14 setDidReportInstrument:v60];
      v58[0] = MEMORY[0x277D85DD0];
      v58[1] = 3221225472;
      v58[2] = __73__SVXSpeechSynthesizer__startPresynthesizedAudioRequestForContext_error___block_invoke_2;
      v58[3] = &unk_279C690B0;
      v58[4] = self;
      objc_copyWeak(&v59, &location);
      [v14 setDidStartSpeaking:v58];
      v44 = self->_ttsSession;
      v56[0] = MEMORY[0x277D85DD0];
      v56[1] = 3221225472;
      v56[2] = __73__SVXSpeechSynthesizer__startPresynthesizedAudioRequestForContext_error___block_invoke_3;
      v56[3] = &unk_279C66A38;
      v56[4] = self;
      objc_copyWeak(&v57, &location);
      [(SiriTTSDaemonSession *)v44 speakWithAudioRequest:v14 didFinish:v56];
      v45 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
      {
        v46 = self->_ttsSession;
        *buf = 136315650;
        *&buf[4] = "[SVXSpeechSynthesizer _startPresynthesizedAudioRequestForContext:error:]";
        *v67 = 2112;
        *&v67[2] = v46;
        *&v67[10] = 2112;
        v68 = v14;
        _os_log_impl(&dword_2695B9000, v45, OS_LOG_TYPE_INFO, "%s Started TTS with presynthesized audio for speaking context. (session = %@, audioRequest = %@)", buf, 0x20u);
      }

      objc_destroyWeak(&v57);
      objc_destroyWeak(&v59);
      objc_destroyWeak(&v62);
      objc_destroyWeak(&v61);
      objc_destroyWeak(&from);
      objc_destroyWeak(&location);

      goto LABEL_62;
    }

    v14 = 0;
  }

  if (v14 | streamID)
  {
    goto LABEL_16;
  }

  if (error)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"SVXSpeechSynthesisErrorDomain" code:1 userInfo:0];
    *error = v15 = 0;
  }

  else
  {
    v15 = 0;
  }

LABEL_65:

  return v15;
}

void __73__SVXSpeechSynthesizer__startPresynthesizedAudioRequestForContext_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained didFinishPresynthesizedAudioRequest:v4 withInstrumentMetrics:v3 error:0];
}

void __73__SVXSpeechSynthesizer__startPresynthesizedAudioRequestForContext_error___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [v1 didStartPresynthesizedAudioRequest:WeakRetained];
}

void __73__SVXSpeechSynthesizer__startPresynthesizedAudioRequestForContext_error___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [v3 didStopPresynthesizedAudioRequest:WeakRetained atEnd:v4 == 0 error:v4];
}

- (BOOL)_continueContext:(id)context error:(id *)error
{
  v32 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v7 = MEMORY[0x277CEF098];
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v27 = "[SVXSpeechSynthesizer _continueContext:error:]";
    v28 = 2112;
    v29 = contextCopy;
    _os_log_impl(&dword_2695B9000, v8, OS_LOG_TYPE_INFO, "%s context = %@", buf, 0x16u);
  }

  if (error)
  {
    *error = 0;
  }

  if (contextCopy)
  {
    operationType = [contextCopy operationType];
    if (operationType == 2)
    {
      if ([contextCopy handledPresynthesizedAudioRequest])
      {
        v10 = 0;
      }

      else
      {
        v12 = 1;
        [contextCopy setHandledPresynthesizedAudioRequest:1];
        v23 = 0;
        v16 = [(SVXSpeechSynthesizer *)self _startPresynthesizedAudioRequestForContext:contextCopy error:&v23];
        v10 = v23;
        if (v16)
        {
          goto LABEL_32;
        }
      }

      if (([contextCopy handledSpeechRequest] & 1) == 0)
      {
        v12 = 1;
        [contextCopy setHandledSpeechRequest:1];
        v22 = v10;
        v14 = [(SVXSpeechSynthesizer *)self _startSpeechRequestForContext:contextCopy error:&v22];
        v15 = v22;
LABEL_22:
        v17 = v15;

        v10 = v17;
        if (!v14)
        {
          goto LABEL_23;
        }

LABEL_32:

        goto LABEL_33;
      }
    }

    else if (operationType == 1)
    {
      if ([contextCopy handledPresynthesizedAudioRequest])
      {
        v10 = 0;
      }

      else
      {
        [contextCopy setHandledPresynthesizedAudioRequest:1];
        v25 = 0;
        v13 = [(SVXSpeechSynthesizer *)self _startPresynthesizedAudioRequestForContext:contextCopy error:&v25];
        v10 = v25;
        if (v13)
        {
LABEL_31:
          v12 = 0;
          goto LABEL_32;
        }
      }

      if (([contextCopy handledSpeechRequest] & 1) == 0)
      {
        v12 = 1;
        [contextCopy setHandledSpeechRequest:1];
        v24 = v10;
        v14 = [(SVXSpeechSynthesizer *)self _startSpeechRequestForContext:contextCopy error:&v24];
        v15 = v24;
        goto LABEL_22;
      }
    }

    else
    {
      v10 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"SVXSpeechSynthesisErrorDomain" code:3 userInfo:0];
    }

LABEL_23:
    if (error)
    {
      v18 = v10;
      *error = v10;
    }

    v19 = *v7;
    v20 = *v7;
    if (v10)
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v27 = "[SVXSpeechSynthesizer _continueContext:error:]";
        v28 = 2112;
        v29 = contextCopy;
        v30 = 2112;
        v31 = v10;
        _os_log_error_impl(&dword_2695B9000, v19, OS_LOG_TYPE_ERROR, "%s Unable to continue context (context = %@, error = %@).", buf, 0x20u);
      }
    }

    else
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v27 = "[SVXSpeechSynthesizer _continueContext:error:]";
        v28 = 2112;
        v29 = contextCopy;
        _os_log_impl(&dword_2695B9000, v19, OS_LOG_TYPE_INFO, "%s Unable to continue context (context = %@).", buf, 0x16u);
      }

      v10 = 0;
    }

    goto LABEL_31;
  }

  v11 = *v7;
  if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v27 = "[SVXSpeechSynthesizer _continueContext:error:]";
    _os_log_error_impl(&dword_2695B9000, v11, OS_LOG_TYPE_ERROR, "%s There's no context to continue.", buf, 0xCu);
  }

  v12 = 0;
LABEL_33:

  return v12;
}

- (void)_startContext:(id)context
{
  v36 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v6 = MEMORY[0x277CEF098];
  v7 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v33 = "[SVXSpeechSynthesizer _startContext:]";
    v34 = 2112;
    v35 = contextCopy;
    _os_log_impl(&dword_2695B9000, v7, OS_LOG_TYPE_INFO, "%s context = %@", buf, 0x16u);
  }

  if (contextCopy)
  {
    [(SVXSpeechSynthesisContext *)contextCopy prepare];
    request = [(SVXSpeechSynthesisContext *)contextCopy request];
    announcer = self->_announcer;
    taskTracker = [(SVXSpeechSynthesisContext *)contextCopy taskTracker];
    [(SVXSpeechSynthesisAnnouncer *)announcer speechSynthesizerWillStartRequest:request taskTracker:taskTracker];

    operationType = [(SVXSpeechSynthesisContext *)contextCopy operationType];
    if (operationType == 2)
    {
      if ([(SVXSpeechSynthesizer *)self _isTTSPlaybackDisabled])
      {
        v19 = *MEMORY[0x277CEF0A0];
        if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v33 = "[SVXSpeechSynthesizer _startContext:]";
          v34 = 2112;
          v35 = contextCopy;
          _os_log_impl(&dword_2695B9000, v19, OS_LOG_TYPE_DEFAULT, "%s TTS is disabled. Cancel speaking context %@.", buf, 0x16u);
        }

        [(SVXSpeechSynthesizer *)self _finalizeContext:contextCopy withResultType:2 utterance:0 error:0];
        goto LABEL_16;
      }

      p_currentSpeakingContext = &self->_currentSpeakingContext;
      currentSpeakingContext = self->_currentSpeakingContext;
      if (currentSpeakingContext)
      {
        v22 = *v6;
        if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v33 = "[SVXSpeechSynthesizer _startContext:]";
          v34 = 2112;
          v35 = currentSpeakingContext;
          _os_log_error_impl(&dword_2695B9000, v22, OS_LOG_TYPE_ERROR, "%s Attempted to start a new speaking context when the current speaking context still exists. (_currentSpeakingContext = %@)", buf, 0x16u);
          currentSpeakingContext = *p_currentSpeakingContext;
        }

        speechRequest = [(SVXSpeechSynthesisContext *)currentSpeakingContext speechRequest];
        text = [speechRequest text];

        [(SVXSpeechSynthesizer *)self _finalizeContext:self->_currentSpeakingContext withResultType:3 utterance:text error:0];
      }

      if ([(SVXSpeechSynthesisUtils *)self->_speechSynthesisUtils requestHasSpeakableContents:request])
      {
        v12 = [(SVXSpeechSynthesisContext *)contextCopy audioSessionID]== 0;
      }

      else
      {
        v12 = 0;
      }

      objc_storeStrong(&self->_currentSpeakingContext, context);
      v25 = *v6;
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_INFO))
      {
        v26 = *p_currentSpeakingContext;
        *buf = 136315394;
        v33 = "[SVXSpeechSynthesizer _startContext:]";
        v34 = 2112;
        v35 = v26;
        _os_log_impl(&dword_2695B9000, v25, OS_LOG_TYPE_INFO, "%s Setting current speaking context. (_currentSpeakingContext = %@)", buf, 0x16u);
      }
    }

    else
    {
      if (operationType == 1)
      {
        [(NSMutableSet *)self->_synthesizingContexts addObject:contextCopy];
      }

      v12 = 0;
    }

    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __38__SVXSpeechSynthesizer__startContext___block_invoke;
    v30[3] = &unk_279C68FE8;
    v30[4] = self;
    v13 = contextCopy;
    v31 = v13;
    v14 = MEMORY[0x26D642680](v30);
    v15 = v14;
    if (v12)
    {
      v16 = *v6;
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v33 = "[SVXSpeechSynthesizer _startContext:]";
        _os_log_impl(&dword_2695B9000, v16, OS_LOG_TYPE_INFO, "%s Acquiring active audio session...", buf, 0xCu);
      }

      sessionManager = self->_sessionManager;
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __38__SVXSpeechSynthesizer__startContext___block_invoke_52;
      v27[3] = &unk_279C669E8;
      v27[4] = self;
      v28 = v13;
      v29 = v15;
      [(SVXSessionManager *)sessionManager getAudioSessionProviderWithCompletion:v27];
    }

    else
    {
      (*(v14 + 16))(v14);
    }

LABEL_16:
    goto LABEL_17;
  }

  v18 = *v6;
  if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v33 = "[SVXSpeechSynthesizer _startContext:]";
    _os_log_error_impl(&dword_2695B9000, v18, OS_LOG_TYPE_ERROR, "%s There's no context to start.", buf, 0xCu);
  }

LABEL_17:
}

void __38__SVXSpeechSynthesizer__startContext___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v11 = 0;
  v4 = [v2 _continueContext:v3 error:&v11];
  v5 = v11;
  if ((v4 & 1) == 0)
  {
    v6 = [*(a1 + 40) speechRequest];
    v7 = [v6 text];

    if (v5)
    {
      v8 = 4;
      v9 = v7;
      v10 = v5;
    }

    else
    {
      v8 = 1;
      v9 = v7;
      v10 = 0;
    }

    [*(a1 + 32) _finalizeContext:*(a1 + 40) withResultType:v8 utterance:v9 error:v10];
  }
}

void __38__SVXSpeechSynthesizer__startContext___block_invoke_52(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __38__SVXSpeechSynthesizer__startContext___block_invoke_2;
  v5[3] = &unk_279C669C0;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  v7 = *(a1 + 48);
  [a2 acquireAudioSessionForReason:@"Speech Synthesis" completion:v5];
}

void __38__SVXSpeechSynthesizer__startContext___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *MEMORY[0x277CEF098];
  if (v6)
  {
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "[SVXSpeechSynthesizer _startContext:]_block_invoke_2";
      v19 = 2112;
      v20 = v6;
      _os_log_error_impl(&dword_2695B9000, v7, OS_LOG_TYPE_ERROR, "%s Failed to acquire active audio session. (error = %@)", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v18 = "[SVXSpeechSynthesizer _startContext:]_block_invoke";
    v19 = 2112;
    v20 = v5;
    _os_log_impl(&dword_2695B9000, v7, OS_LOG_TYPE_INFO, "%s Acquired active audio session. (assertion = %@)", buf, 0x16u);
  }

  v8 = [*(*(a1 + 32) + 32) performer];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __38__SVXSpeechSynthesizer__startContext___block_invoke_57;
  v12[3] = &unk_279C68388;
  v9 = *(a1 + 40);
  v12[4] = *(a1 + 32);
  v13 = v9;
  v14 = v5;
  v15 = v6;
  v16 = *(a1 + 48);
  v10 = v6;
  v11 = v5;
  [v8 performBlock:v12];
}

uint64_t __38__SVXSpeechSynthesizer__startContext___block_invoke_57(void *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  v4 = a1[6];
  if (*(v3 + 64) == v2)
  {
    [v2 setAudioSessionAssertion:v4];
    v7 = a1[7];
    if (!v7 || SVXAudioSessionIsNoRoutesAvailableError(v7) && [a1[6] audioSessionID])
    {
      v8 = *(a1[8] + 16);

      return v8();
    }

    else
    {
      v9 = a1[4];
      v10 = a1[5];
      v11 = a1[7];

      return [v9 _finalizeContext:v10 withResultType:4 utterance:0 error:v11];
    }
  }

  else
  {
    v5 = a1[6];

    return [v5 relinquish];
  }
}

- (void)_processPendingContexts
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CEF098];
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[SVXSpeechSynthesizer _processPendingContexts]";
    _os_log_impl(&dword_2695B9000, v4, OS_LOG_TYPE_INFO, "%s ", &buf, 0xCu);
  }

  currentConfiguration = [(SVXSpeechSynthesisConfigurationStateManager *)self->_configurationManager currentConfiguration];
  audioSessionID = [currentConfiguration audioSessionID];

  if (self->_needsPrewarm)
  {
    if (audioSessionID)
    {
      [(SVXSpeechSynthesizer *)self _prewarm];
    }

    else
    {
      v7 = *v3;
      if (os_log_type_enabled(*v3, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 136315138;
        *(&buf + 4) = "[SVXSpeechSynthesizer _processPendingContexts]";
        _os_log_impl(&dword_2695B9000, v7, OS_LOG_TYPE_INFO, "%s Skipped prewarming because there's no audio session ID configured.", &buf, 0xCu);
      }
    }
  }

  if ([(NSMutableArray *)self->_pendingContexts count])
  {
    v8 = objc_alloc_init(MEMORY[0x277CCAB58]);
    *&buf = 0;
    *(&buf + 1) = &buf;
    v38 = 0x2020000000;
    v39 = 0x7FFFFFFFFFFFFFFFLL;
    v31[0] = 0;
    v31[1] = v31;
    v31[2] = 0x2020000000;
    v31[3] = 0;
    pendingContexts = self->_pendingContexts;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __47__SVXSpeechSynthesizer__processPendingContexts__block_invoke;
    v26[3] = &unk_279C66978;
    v10 = v8;
    v27 = v10;
    selfCopy = self;
    p_buf = &buf;
    v30 = v31;
    [(NSMutableArray *)pendingContexts enumerateObjectsUsingBlock:v26];
    if (*(*(&buf + 1) + 24) != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v10 addIndex:?];
    }

    if ([v10 count])
    {
      v11 = [(NSMutableArray *)self->_pendingContexts objectsAtIndexes:v10];
      [(NSMutableArray *)self->_pendingContexts removeObjectsAtIndexes:v10];
      v12 = *v3;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = [v11 count];
        *v33 = 136315394;
        v34 = "[SVXSpeechSynthesizer _processPendingContexts]";
        v35 = 2048;
        v36 = v13;
        _os_log_impl(&dword_2695B9000, v12, OS_LOG_TYPE_INFO, "%s Dequeued %tu pending contexts to process.", v33, 0x16u);
      }

      if (-[SVXSpeechSynthesizer _isInternalInstall](self, "_isInternalInstall") || (-[SVXModule preferences](self->_module, "preferences"), v14 = objc_claimAutoreleasedReturnValue(), v15 = [v14 shouldLogForQA], v14, v15))
      {
        [v11 enumerateObjectsUsingBlock:&__block_literal_global_51];
      }

      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v16 = v11;
      v17 = [v16 countByEnumeratingWithState:&v22 objects:v32 count:16];
      if (v17)
      {
        v18 = *v23;
        do
        {
          v19 = 0;
          do
          {
            if (*v23 != v18)
            {
              objc_enumerationMutation(v16);
            }

            [(SVXSpeechSynthesizer *)self _startContext:*(*(&v22 + 1) + 8 * v19++), v22];
          }

          while (v17 != v19);
          v17 = [v16 countByEnumeratingWithState:&v22 objects:v32 count:16];
        }

        while (v17);
      }
    }

    else
    {
      v21 = *v3;
      if (os_log_type_enabled(*v3, OS_LOG_TYPE_INFO))
      {
        *v33 = 136315138;
        v34 = "[SVXSpeechSynthesizer _processPendingContexts]";
        _os_log_impl(&dword_2695B9000, v21, OS_LOG_TYPE_INFO, "%s Skipped processing pending contexts because there's no suitable pending context.", v33, 0xCu);
      }
    }

    _Block_object_dispose(v31, 8);
    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v20 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "[SVXSpeechSynthesizer _processPendingContexts]";
      _os_log_impl(&dword_2695B9000, v20, OS_LOG_TYPE_INFO, "%s Skipped processing next pending context because there is no pending context.", &buf, 0xCu);
    }
  }
}

void __47__SVXSpeechSynthesizer__processPendingContexts__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v8 = [v5 request];
  v6 = [v5 operationType];

  if (v6 == 2)
  {
    if (!*(*(a1 + 40) + 64))
    {
      if (*(*(*(a1 + 48) + 8) + 24) == 0x7FFFFFFFFFFFFFFFLL || (v7 = *(*(*(a1 + 56) + 8) + 24), v7 < [v8 priority]))
      {
        *(*(*(a1 + 56) + 8) + 24) = [v8 priority];
        *(*(*(a1 + 48) + 8) + 24) = a3;
      }
    }
  }

  else
  {
    [*(a1 + 32) addIndex:a3];
  }
}

void __47__SVXSpeechSynthesizer__processPendingContexts__block_invoke_49(uint64_t a1, void *a2, uint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v6 = 136315650;
    v7 = "[SVXSpeechSynthesizer _processPendingContexts]_block_invoke";
    v8 = 2048;
    v9 = a3;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&dword_2695B9000, v5, OS_LOG_TYPE_INFO, "%s Dequeued[%tu] = %@", &v6, 0x20u);
  }
}

- (void)_enqueueContext:(id)context
{
  v47 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v5 = MEMORY[0x277CEF098];
  v6 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v41 = "[SVXSpeechSynthesizer _enqueueContext:]";
    v42 = 2112;
    v43 = contextCopy;
    _os_log_impl(&dword_2695B9000, v6, OS_LOG_TYPE_INFO, "%s context = %@", buf, 0x16u);
  }

  _numberOfContexts = [(SVXSpeechSynthesizer *)self _numberOfContexts];
  operationType = [contextCopy operationType];
  request = [contextCopy request];
  priority = [request priority];
  if (operationType == 2)
  {
    switch(priority)
    {
      case 3:
        [(SVXSpeechSynthesizer *)self _cancelPendingSpeakingContextsWithPriorityBelow:3];
        request2 = [(SVXSpeechSynthesisContext *)self->_currentSpeakingContext request];
        priority2 = [request2 priority];

        if (priority2 <= 2)
        {
          [(SVXSpeechSynthesizer *)self _stopCurrentSpeakingContextWithInterruptionBehavior:1];
        }

        break;
      case 2:
        [(SVXSpeechSynthesizer *)self _cancelPendingSpeakingContextsWithPriorityBelow:2];
        break;
      case 1:
        request3 = [(SVXSpeechSynthesisContext *)self->_currentSpeakingContext request];
        priority3 = [request3 priority];

        if (priority3 >= 2)
        {
          v13 = *v5;
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            currentSpeakingContext = self->_currentSpeakingContext;
            *buf = 136315394;
            v41 = "[SVXSpeechSynthesizer _enqueueContext:]";
            v42 = 2112;
            v43 = currentSpeakingContext;
            _os_log_impl(&dword_2695B9000, v13, OS_LOG_TYPE_INFO, "%s Ignored because current speaking context (%@) has a higher priority.", buf, 0x16u);
          }

LABEL_35:
          [(SVXSpeechSynthesizer *)self _finalizeContext:contextCopy withResultType:2 utterance:0 error:0];
          goto LABEL_36;
        }

        v34 = _numberOfContexts;
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v18 = self->_pendingContexts;
        v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v36 objects:v46 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v37;
          while (2)
          {
            for (i = 0; i != v20; ++i)
            {
              if (*v37 != v21)
              {
                objc_enumerationMutation(v18);
              }

              v23 = *(*(&v36 + 1) + 8 * i);
              if ([v23 operationType] == 2)
              {
                request4 = [v23 request];
                priority4 = [request4 priority];

                if (priority4 >= 2)
                {
                  v33 = *MEMORY[0x277CEF098];
                  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
                  {
                    *buf = 136315394;
                    v41 = "[SVXSpeechSynthesizer _enqueueContext:]";
                    v42 = 2112;
                    v43 = v23;
                    _os_log_impl(&dword_2695B9000, v33, OS_LOG_TYPE_INFO, "%s Ignored because pending speaking context (%@) has a higher priority.", buf, 0x16u);
                  }

                  goto LABEL_35;
                }
              }
            }

            v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v36 objects:v46 count:16];
            if (v20)
            {
              continue;
            }

            break;
          }
        }

        v5 = MEMORY[0x277CEF098];
        _numberOfContexts = v34;
        break;
      default:
        v17 = *v5;
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v41 = "[SVXSpeechSynthesizer _enqueueContext:]";
          _os_log_error_impl(&dword_2695B9000, v17, OS_LOG_TYPE_ERROR, "%s Ignored because no priority is specified.", buf, 0xCu);
        }

        goto LABEL_35;
    }

    kdebug_trace();
  }

  announcer = self->_announcer;
  taskTracker = [contextCopy taskTracker];
  [(SVXSpeechSynthesisAnnouncer *)announcer speechSynthesizerWillEnqueueRequest:request taskTracker:taskTracker];

  [(NSMutableArray *)self->_pendingContexts addObject:contextCopy];
  _numberOfContexts2 = [(SVXSpeechSynthesizer *)self _numberOfContexts];
  v29 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v41 = "[SVXSpeechSynthesizer _enqueueContext:]";
    v42 = 2048;
    v43 = _numberOfContexts;
    v44 = 2048;
    v45 = _numberOfContexts2;
    _os_log_impl(&dword_2695B9000, v29, OS_LOG_TYPE_INFO, "%s (numberOfContexts: %tu -> %tu)", buf, 0x20u);
  }

  if (!_numberOfContexts && _numberOfContexts2)
  {
    [(SVXSpeechSynthesisAnnouncer *)self->_announcer speechSynthesizerDidBecomeBusy];
  }

  analytics = [(SVXModule *)self->_module analytics];
  analyticsContext = [contextCopy analyticsContext];
  [analytics logEventWithType:2701 context:analyticsContext];

  performer = [(SVXModule *)self->_module performer];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __40__SVXSpeechSynthesizer__enqueueContext___block_invoke;
  v35[3] = &unk_279C68FC0;
  v35[4] = self;
  [performer performBlock:v35 withOptions:0];

LABEL_36:
}

- (unint64_t)_numberOfContexts
{
  result = [(NSMutableArray *)self->_pendingContexts count];
  if (self->_currentSpeakingContext)
  {
    ++result;
  }

  return result;
}

- (void)_handleDidFinishSynthesizingForSpeechRequest:(id)request instrumentMetrics:(id)metrics error:(id)error
{
  v90 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  metricsCopy = metrics;
  errorCopy = error;
  v11 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v83 = "[SVXSpeechSynthesizer _handleDidFinishSynthesizingForSpeechRequest:instrumentMetrics:error:]";
    v84 = 2112;
    v85 = requestCopy;
    v86 = 2112;
    v87 = metricsCopy;
    v88 = 2112;
    v89 = errorCopy;
    _os_log_impl(&dword_2695B9000, v11, OS_LOG_TYPE_INFO, "%s speechRequest = %@, instrumentMetrics = %@, error = %@", buf, 0x2Au);
  }

  synthesizingContexts = self->_synthesizingContexts;
  v72[0] = MEMORY[0x277D85DD0];
  v72[1] = 3221225472;
  v72[2] = __93__SVXSpeechSynthesizer__handleDidFinishSynthesizingForSpeechRequest_instrumentMetrics_error___block_invoke;
  v72[3] = &unk_279C66950;
  v60 = requestCopy;
  v73 = v60;
  v13 = [(NSMutableSet *)synthesizingContexts objectsPassingTest:v72];
  if ([v13 count])
  {
    [(NSMutableSet *)self->_synthesizingContexts minusSet:v13];
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v57 = v13;
    obj = v13;
    v63 = [obj countByEnumeratingWithState:&v68 objects:v81 count:16];
    if (!v63)
    {
      goto LABEL_36;
    }

    v62 = *v69;
    selfCopy = self;
    v59 = errorCopy;
    while (1)
    {
      for (i = 0; i != v63; ++i)
      {
        if (*v69 != v62)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v68 + 1) + 8 * i);
        [v15 setInstrumentMetrics:metricsCopy];
        if (metricsCopy)
        {
          request = [v15 request];
          uUID = [MEMORY[0x277CCAD78] UUID];
          uUIDString = [uUID UUIDString];

          [(SVXSpeechSynthesisMetricsContextFactory *)self->_metricsContextFactory creationContextFromInstrumentMetrics:metricsCopy];
          v65 = v64 = uUIDString;
          v79 = @"id";
          v80 = uUIDString;
          v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v80 forKeys:&v79 count:1];
          analyticsContext = [v15 analyticsContext];
          v20 = analyticsContext;
          v21 = MEMORY[0x277CBEC10];
          if (analyticsContext)
          {
            v21 = analyticsContext;
          }

          v22 = v21;

          _isInternalInstall = [(SVXSpeechSynthesizer *)self _isInternalInstall];
          if (!_isInternalInstall && (-[SVXModule preferences](self->_module, "preferences"), v61 = objc_claimAutoreleasedReturnValue(), v24 = [v61 shouldLogForQA], v25 = MEMORY[0x277CBEC10], !v24) || ((v77[0] = @"text", objc_msgSend(request, "speakableText"), v26 = objc_claimAutoreleasedReturnValue(), (v27 = v26) != 0) ? (v28 = v26) : (v28 = &stru_287A1C130), (v77[1] = @"utterance", v78[0] = v28, objc_msgSend(metricsCopy, "utterance"), v29 = objc_claimAutoreleasedReturnValue(), (v30 = v29) != 0) ? (v31 = v29) : (v31 = &stru_287A1C130), v78[1] = v31, objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v78, v77, 2), v25 = objc_claimAutoreleasedReturnValue(), v30, v27, !_isInternalInstall))
          {
          }

          requestCreatedTime = [metricsCopy requestCreatedTime];
          if (requestCreatedTime)
          {
            v33 = requestCreatedTime;
            analytics = [(SVXModule *)self->_module analytics];
            v76[0] = v65;
            v76[1] = v18;
            v76[2] = v22;
            v76[3] = v25;
            v35 = [MEMORY[0x277CBEA60] arrayWithObjects:v76 count:4];
            v36 = AFAnalyticsContextsMerge();
            [analytics logEventWithType:1801 machAbsoluteTime:v33 context:v36];

            speechInstrumentationUtilities = selfCopy->_speechInstrumentationUtilities;
            taskTracker = [(SVXSpeechSynthesisContext *)selfCopy->_currentSpeakingContext taskTracker];
            instrumentationContext = [taskTracker instrumentationContext];
            v40 = speechInstrumentationUtilities;
            self = selfCopy;
            [(SVXSpeechInstrumentationUtilities *)v40 emitTextToSpeechRequestReceived:instrumentationContext instrumentMetrics:metricsCopy];
          }

          synthesisBeginTime = [metricsCopy synthesisBeginTime];
          if (synthesisBeginTime)
          {
            v42 = synthesisBeginTime;
            analytics2 = [(SVXModule *)self->_module analytics];
            v75[0] = v18;
            v75[1] = v22;
            v75[2] = v25;
            v44 = [MEMORY[0x277CBEA60] arrayWithObjects:v75 count:3];
            v45 = AFAnalyticsContextsMerge();
            [analytics2 logEventWithType:1804 machAbsoluteTime:v42 context:v45];

            self = selfCopy;
          }

          synthesisEndTime = [metricsCopy synthesisEndTime];
          if (synthesisEndTime)
          {
            v47 = synthesisEndTime;
            analytics3 = [(SVXModule *)self->_module analytics];
            v74[0] = v18;
            v74[1] = v22;
            v74[2] = v25;
            v49 = [MEMORY[0x277CBEA60] arrayWithObjects:v74 count:3];
            v50 = AFAnalyticsContextsMerge();
            [analytics3 logEventWithType:1805 machAbsoluteTime:v47 context:v50];

            self = selfCopy;
          }

          errorCopy = v59;
        }

        if (errorCopy)
        {
          if ([(SVXSpeechSynthesizer *)self _continueContext:v15 error:0])
          {
            continue;
          }

          text = [v60 text];
          selfCopy3 = self;
          v53 = v15;
          v54 = 4;
          v55 = text;
          v56 = errorCopy;
        }

        else
        {
          text = [v60 text];
          selfCopy3 = self;
          v53 = v15;
          v54 = 1;
          v55 = text;
          v56 = 0;
        }

        [(SVXSpeechSynthesizer *)selfCopy3 _finalizeContext:v53 withResultType:v54 utterance:v55 error:v56];
      }

      v63 = [obj countByEnumeratingWithState:&v68 objects:v81 count:16];
      if (!v63)
      {
LABEL_36:

        v13 = v57;
        break;
      }
    }
  }
}

BOOL __93__SVXSpeechSynthesizer__handleDidFinishSynthesizingForSpeechRequest_instrumentMetrics_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 synthesisRequest];
  v4 = v3 == *(a1 + 32);

  return v4;
}

- (void)_handleDidGenerateAudioChunkData:(id)data forSpeechRequest:(id)request
{
  v28 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  requestCopy = request;
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v23 = "[SVXSpeechSynthesizer _handleDidGenerateAudioChunkData:forSpeechRequest:]";
    v24 = 2112;
    v25 = requestCopy;
    v26 = 2112;
    v27 = dataCopy;
    _os_log_impl(&dword_2695B9000, v8, OS_LOG_TYPE_INFO, "%s speechRequest = %@, audioChunkData = %@", buf, 0x20u);
  }

  speechRequest = [(SVXSpeechSynthesisContext *)self->_currentSpeakingContext speechRequest];

  if (speechRequest == requestCopy)
  {
    if ([(SVXSpeechSynthesisContext *)self->_currentSpeakingContext isStreamingSynthesisRequest])
    {
      [(SVXAudioStreamingAnnouncer *)self->_audioStreamingAnnouncer audioStreamDidProvideAudio:dataCopy];
    }

    else
    {
      [(SVXSpeechSynthesisContext *)self->_currentSpeakingContext handleAudioChunkData:dataCopy];
    }
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = self->_synthesizingContexts;
  v11 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v17 + 1) + 8 * i);
        speechRequest2 = [v15 speechRequest];

        if (speechRequest2 == requestCopy)
        {
          if ([v15 isStreamingSynthesisRequest])
          {
            [(SVXAudioStreamingAnnouncer *)self->_audioStreamingAnnouncer audioStreamDidProvideAudio:dataCopy];
          }

          else
          {
            [v15 handleAudioChunkData:dataCopy];
          }
        }
      }

      v12 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }
}

- (void)_handleDidReceiveSpeechWordTimingInfoArray:(id)array forSpeechRequest:(id)request
{
  v28 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  requestCopy = request;
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v23 = "[SVXSpeechSynthesizer _handleDidReceiveSpeechWordTimingInfoArray:forSpeechRequest:]";
    v24 = 2112;
    v25 = requestCopy;
    v26 = 2112;
    v27 = arrayCopy;
    _os_log_impl(&dword_2695B9000, v8, OS_LOG_TYPE_INFO, "%s speechRequest = %@, speechWordTimingInfoArray = %@", buf, 0x20u);
  }

  speechRequest = [(SVXSpeechSynthesisContext *)self->_currentSpeakingContext speechRequest];

  if (speechRequest == requestCopy)
  {
    [(SVXSpeechSynthesisContext *)self->_currentSpeakingContext setSpeechWordTimingInfoArray:arrayCopy];
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = self->_synthesizingContexts;
  v11 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v17 + 1) + 8 * i);
        speechRequest2 = [v15 speechRequest];

        if (speechRequest2 == requestCopy)
        {
          [v15 setSpeechWordTimingInfoArray:arrayCopy];
        }
      }

      v12 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }
}

- (void)_handleDidFinishPresynthesizedAudioRequest:(id)request instrumentMetrics:(id)metrics error:(id)error
{
  v92 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  metricsCopy = metrics;
  errorCopy = error;
  v11 = MEMORY[0x277CEF098];
  v12 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v85 = "[SVXSpeechSynthesizer _handleDidFinishPresynthesizedAudioRequest:instrumentMetrics:error:]";
    v86 = 2112;
    v87 = requestCopy;
    v88 = 2112;
    v89 = metricsCopy;
    v90 = 2112;
    v91 = errorCopy;
    _os_log_impl(&dword_2695B9000, v12, OS_LOG_TYPE_INFO, "%s presynthesizedAudioRequest = %@, instrumentMetrics = %@, error = %@", buf, 0x2Au);
  }

  presynthesizedAudioRequest = [(SVXSpeechSynthesisContext *)self->_currentSpeakingContext presynthesizedAudioRequest];

  if (presynthesizedAudioRequest == requestCopy)
  {
    v14 = *v11;
    if (os_log_type_enabled(*v11, OS_LOG_TYPE_INFO))
    {
      currentSpeakingContext = self->_currentSpeakingContext;
      *buf = 136315394;
      v85 = "[SVXSpeechSynthesizer _handleDidFinishPresynthesizedAudioRequest:instrumentMetrics:error:]";
      v86 = 2112;
      v87 = currentSpeakingContext;
      _os_log_impl(&dword_2695B9000, v14, OS_LOG_TYPE_INFO, "%s Stopped TTS with presynthesized audio for current speaking context. (_currentSpeakingContext = %@)", buf, 0x16u);
    }

    [(SVXSpeechSynthesisContext *)self->_currentSpeakingContext setInstrumentMetrics:metricsCopy];
    if (metricsCopy)
    {
      request = [(SVXSpeechSynthesisContext *)self->_currentSpeakingContext request];
      uUID = [MEMORY[0x277CCAD78] UUID];
      uUIDString = [uUID UUIDString];

      v73 = [(SVXSpeechSynthesisMetricsContextFactory *)self->_metricsContextFactory creationContextFromInstrumentMetrics:metricsCopy];
      v82 = @"id";
      v71 = uUIDString;
      v83 = uUIDString;
      v75 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v83 forKeys:&v82 count:1];
      analyticsContext = [(SVXSpeechSynthesisContext *)self->_currentSpeakingContext analyticsContext];
      v19 = analyticsContext;
      v20 = MEMORY[0x277CBEC10];
      if (analyticsContext)
      {
        v21 = analyticsContext;
      }

      else
      {
        v21 = MEMORY[0x277CBEC10];
      }

      v74 = v21;

      if ([(SVXSpeechSynthesizer *)self _isInternalInstall])
      {
        v80[0] = @"text";
        speakableText = [request speakableText];
        v23 = speakableText;
        if (speakableText)
        {
          v24 = speakableText;
        }

        else
        {
          v24 = &stru_287A1C130;
        }

        v80[1] = @"utterance";
        v81[0] = v24;
        utterance = [metricsCopy utterance];
        v26 = utterance;
        if (utterance)
        {
          v27 = utterance;
        }

        else
        {
          v27 = &stru_287A1C130;
        }

        v81[1] = v27;
        v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v81 forKeys:v80 count:2];
      }

      requestCreatedTime = [metricsCopy requestCreatedTime];
      if (requestCreatedTime)
      {
        v29 = requestCreatedTime;
        analytics = [(SVXModule *)self->_module analytics];
        v79[0] = v73;
        v79[1] = v75;
        v79[2] = v74;
        v79[3] = v20;
        v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v79 count:4];
        v32 = AFAnalyticsContextsMerge();
        [analytics logEventWithType:1801 machAbsoluteTime:v29 context:v32];

        speechInstrumentationUtilities = self->_speechInstrumentationUtilities;
        taskTracker = [(SVXSpeechSynthesisContext *)self->_currentSpeakingContext taskTracker];
        instrumentationContext = [taskTracker instrumentationContext];
        [(SVXSpeechInstrumentationUtilities *)speechInstrumentationUtilities emitTextToSpeechRequestReceived:instrumentationContext instrumentMetrics:metricsCopy];
      }

      speechBeginTime = [metricsCopy speechBeginTime];
      if (speechBeginTime)
      {
        v37 = speechBeginTime;
        analytics2 = [(SVXModule *)self->_module analytics];
        v78[0] = v75;
        v78[1] = v74;
        v78[2] = v20;
        v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v78 count:3];
        v40 = AFAnalyticsContextsMerge();
        [analytics2 logEventWithType:1802 machAbsoluteTime:v37 context:v40];

        v41 = objc_alloc_init(MEMORY[0x277D5AA58]);
        taskTracker2 = [(SVXSpeechSynthesisContext *)self->_currentSpeakingContext taskTracker];
        aceId = [taskTracker2 aceId];
        [(SVXSpeechSynthesisContext *)v41 setAceID:aceId];

        v44 = *MEMORY[0x277CEF0F8];
        if (os_log_type_enabled(*MEMORY[0x277CEF0F8], OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v85 = "[SVXSpeechSynthesizer _handleDidFinishPresynthesizedAudioRequest:instrumentMetrics:error:]";
          v86 = 2112;
          v87 = v41;
          _os_log_impl(&dword_2695B9000, v44, OS_LOG_TYPE_INFO, "%s Emit instrumentation: %@", buf, 0x16u);
        }

        taskTracker3 = [(SVXSpeechSynthesisContext *)self->_currentSpeakingContext taskTracker];
        instrumentationContext2 = [taskTracker3 instrumentationContext];
        [instrumentationContext2 emitInstrumentation:v41 machAbsoluteTime:v37];
      }

      speechEstimatedOutputBeginTime = [metricsCopy speechEstimatedOutputBeginTime];
      if (speechEstimatedOutputBeginTime >= 1)
      {
        v48 = speechEstimatedOutputBeginTime;
        analytics3 = [(SVXModule *)self->_module analytics];
        v77[0] = v75;
        v77[1] = v74;
        v77[2] = v20;
        v50 = [MEMORY[0x277CBEA60] arrayWithObjects:v77 count:3];
        v51 = AFAnalyticsContextsMerge();
        [analytics3 logEventWithType:1806 machAbsoluteTime:v48 context:v51];
      }

      speechEndTime = [metricsCopy speechEndTime];
      if (speechEndTime)
      {
        v53 = speechEndTime;
        analytics4 = [(SVXModule *)self->_module analytics];
        v76[0] = v75;
        v76[1] = v74;
        v76[2] = v20;
        v55 = [MEMORY[0x277CBEA60] arrayWithObjects:v76 count:3];
        v56 = AFAnalyticsContextsMerge();
        [analytics4 logEventWithType:1803 machAbsoluteTime:v53 context:v56];

        v57 = objc_alloc_init(MEMORY[0x277D5AA60]);
        taskTracker4 = [(SVXSpeechSynthesisContext *)self->_currentSpeakingContext taskTracker];
        aceId2 = [taskTracker4 aceId];
        [(SVXSpeechSynthesisContext *)v57 setAceID:aceId2];

        v60 = *MEMORY[0x277CEF0F8];
        if (os_log_type_enabled(*MEMORY[0x277CEF0F8], OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v85 = "[SVXSpeechSynthesizer _handleDidFinishPresynthesizedAudioRequest:instrumentMetrics:error:]";
          v86 = 2112;
          v87 = v57;
          _os_log_impl(&dword_2695B9000, v60, OS_LOG_TYPE_INFO, "%s Emit instrumentation: %@", buf, 0x16u);
        }

        taskTracker5 = [(SVXSpeechSynthesisContext *)self->_currentSpeakingContext taskTracker];
        instrumentationContext3 = [taskTracker5 instrumentationContext];
        [instrumentationContext3 emitInstrumentation:v57 machAbsoluteTime:v53];
      }
    }

    if (!errorCopy)
    {
      speechRequest = [(SVXSpeechSynthesisContext *)self->_currentSpeakingContext speechRequest];
      text = [speechRequest text];

      v65 = self->_currentSpeakingContext;
      selfCopy2 = self;
      v67 = 1;
      v68 = text;
      v69 = 0;
      goto LABEL_35;
    }

    if (![(SVXSpeechSynthesizer *)self _continueContext:self->_currentSpeakingContext error:0])
    {
      speechRequest2 = [(SVXSpeechSynthesisContext *)self->_currentSpeakingContext speechRequest];
      text = [speechRequest2 text];

      v65 = self->_currentSpeakingContext;
      selfCopy2 = self;
      v67 = 4;
      v68 = text;
      v69 = errorCopy;
LABEL_35:
      [(SVXSpeechSynthesizer *)selfCopy2 _finalizeContext:v65 withResultType:v67 utterance:v68 error:v69];
    }
  }
}

- (void)_handleDidStopPresynthesizedAudioRequest:(id)request success:(BOOL)success error:(id)error
{
  successCopy = success;
  v23 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  errorCopy = error;
  v10 = MEMORY[0x277CEF098];
  v11 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v15 = 136315906;
    v16 = "[SVXSpeechSynthesizer _handleDidStopPresynthesizedAudioRequest:success:error:]";
    v17 = 2112;
    v18 = requestCopy;
    v19 = 1024;
    v20 = successCopy;
    v21 = 2112;
    v22 = errorCopy;
    _os_log_impl(&dword_2695B9000, v11, OS_LOG_TYPE_INFO, "%s presynthesizedAudioRequest = %@, success = %d, error = %@", &v15, 0x26u);
  }

  presynthesizedAudioRequest = [(SVXSpeechSynthesisContext *)self->_currentSpeakingContext presynthesizedAudioRequest];

  if (presynthesizedAudioRequest == requestCopy)
  {
    v13 = *v10;
    if (os_log_type_enabled(*v10, OS_LOG_TYPE_INFO))
    {
      currentSpeakingContext = self->_currentSpeakingContext;
      v15 = 136315394;
      v16 = "[SVXSpeechSynthesizer _handleDidStopPresynthesizedAudioRequest:success:error:]";
      v17 = 2112;
      v18 = currentSpeakingContext;
      _os_log_impl(&dword_2695B9000, v13, OS_LOG_TYPE_INFO, "%s Stopped TTS with presynthesized audio for current speaking context. (_currentSpeakingContext = %@)", &v15, 0x16u);
    }
  }
}

- (void)_handleDidStartPresynthesizedAudioRequest:(id)request timestamp:(unint64_t)timestamp
{
  v22 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v7 = MEMORY[0x277CEF098];
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v18 = 136315394;
    v19 = "[SVXSpeechSynthesizer _handleDidStartPresynthesizedAudioRequest:timestamp:]";
    v20 = 2112;
    v21 = requestCopy;
    _os_log_impl(&dword_2695B9000, v8, OS_LOG_TYPE_INFO, "%s presynthesizedAudioRequest = %@", &v18, 0x16u);
  }

  presynthesizedAudioRequest = [(SVXSpeechSynthesisContext *)self->_currentSpeakingContext presynthesizedAudioRequest];

  if (presynthesizedAudioRequest == requestCopy)
  {
    v10 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_INFO))
    {
      currentSpeakingContext = self->_currentSpeakingContext;
      v18 = 136315394;
      v19 = "[SVXSpeechSynthesizer _handleDidStartPresynthesizedAudioRequest:timestamp:]";
      v20 = 2112;
      v21 = currentSpeakingContext;
      _os_log_impl(&dword_2695B9000, v10, OS_LOG_TYPE_INFO, "%s Started TTS with presynthesized audio for current speaking context. (_currentSpeakingContext = %@)", &v18, 0x16u);
    }

    analytics = [(SVXModule *)self->_module analytics];
    analyticsContext = [(SVXSpeechSynthesisContext *)self->_currentSpeakingContext analyticsContext];
    [analytics logEventWithType:2706 context:analyticsContext];

    announcer = self->_announcer;
    request = [(SVXSpeechSynthesisContext *)self->_currentSpeakingContext request];
    v16 = [objc_alloc(MEMORY[0x277CEF4A8]) initWithUtterance:0 beginTimestamp:timestamp endTimestamp:0];
    taskTracker = [(SVXSpeechSynthesisContext *)self->_currentSpeakingContext taskTracker];
    [(SVXSpeechSynthesisAnnouncer *)announcer speechSynthesizerDidStartRequest:request record:v16 taskTracker:taskTracker];
  }
}

- (void)_handleDidFinishSpeakingWithSpeechRequest:(id)request success:(BOOL)success error:(id)error
{
  successCopy = success;
  v31 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  errorCopy = error;
  v10 = MEMORY[0x277CEF098];
  v11 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v23 = 136315906;
    v24 = "[SVXSpeechSynthesizer _handleDidFinishSpeakingWithSpeechRequest:success:error:]";
    v25 = 2112;
    v26 = requestCopy;
    v27 = 1024;
    v28 = successCopy;
    v29 = 2112;
    v30 = errorCopy;
    _os_log_impl(&dword_2695B9000, v11, OS_LOG_TYPE_INFO, "%s speechRequest = %@, success = %d, error = %@", &v23, 0x26u);
  }

  speechRequest = [(SVXSpeechSynthesisContext *)self->_currentSpeakingContext speechRequest];

  if (speechRequest == requestCopy)
  {
    v13 = *v10;
    if (os_log_type_enabled(*v10, OS_LOG_TYPE_INFO))
    {
      currentSpeakingContext = self->_currentSpeakingContext;
      v23 = 136315394;
      v24 = "[SVXSpeechSynthesizer _handleDidFinishSpeakingWithSpeechRequest:success:error:]";
      v25 = 2112;
      v26 = currentSpeakingContext;
      _os_log_impl(&dword_2695B9000, v13, OS_LOG_TYPE_INFO, "%s Stopped TTS for current speaking context. (_currentSpeakingContext = %@)", &v23, 0x16u);
    }

    v15 = self->_currentSpeakingContext;
    if (!errorCopy)
    {
      text = [(SVXSpeechSynthesisContext *)requestCopy text];
      selfCopy2 = self;
      v19 = v15;
      v20 = 1;
      v21 = text;
      v22 = 0;
      goto LABEL_10;
    }

    if (![(SVXSpeechSynthesizer *)self _continueContext:self->_currentSpeakingContext error:0])
    {
      v16 = self->_currentSpeakingContext;
      text = [(SVXSpeechSynthesisContext *)requestCopy text];
      selfCopy2 = self;
      v19 = v16;
      v20 = 4;
      v21 = text;
      v22 = errorCopy;
LABEL_10:
      [(SVXSpeechSynthesizer *)selfCopy2 _finalizeContext:v19 withResultType:v20 utterance:v21 error:v22];
    }
  }
}

- (void)_handleDidFinishSpeakingWithSpeechRequest:(id)request instrumentMetrics:(id)metrics
{
  v76 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  metricsCopy = metrics;
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v73 = "[SVXSpeechSynthesizer _handleDidFinishSpeakingWithSpeechRequest:instrumentMetrics:]";
    v74 = 2112;
    v75 = requestCopy;
    _os_log_impl(&dword_2695B9000, v8, OS_LOG_TYPE_INFO, "%s speechRequest = %@", buf, 0x16u);
  }

  speechRequest = [(SVXSpeechSynthesisContext *)self->_currentSpeakingContext speechRequest];

  if (speechRequest == requestCopy)
  {
    [(SVXSpeechSynthesisContext *)self->_currentSpeakingContext setInstrumentMetrics:metricsCopy];
    if (metricsCopy)
    {
      request = [(SVXSpeechSynthesisContext *)self->_currentSpeakingContext request];
      uUID = [MEMORY[0x277CCAD78] UUID];
      uUIDString = [uUID UUIDString];

      dictionary = [MEMORY[0x277CBEB38] dictionary];
      [dictionary setObject:uUIDString forKey:@"id"];
      v70 = @"id";
      v71 = uUIDString;
      v60 = uUIDString;
      v62 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v71 forKeys:&v70 count:1];
      analyticsContext = [(SVXSpeechSynthesisContext *)self->_currentSpeakingContext analyticsContext];
      v14 = analyticsContext;
      v15 = MEMORY[0x277CBEC10];
      if (analyticsContext)
      {
        v15 = analyticsContext;
      }

      v16 = v15;

      _isInternalInstall = [(SVXSpeechSynthesizer *)self _isInternalInstall];
      v63 = request;
      if (_isInternalInstall || (-[SVXModule preferences](self->_module, "preferences"), v14 = objc_claimAutoreleasedReturnValue(), [v14 shouldLogForQA]))
      {
        v68[0] = @"text";
        speakableText = [request speakableText];
        v19 = speakableText;
        if (speakableText)
        {
          v20 = speakableText;
        }

        else
        {
          v20 = &stru_287A1C130;
        }

        v68[1] = @"utterance";
        v69[0] = v20;
        utterance = [metricsCopy utterance];
        v22 = utterance;
        if (utterance)
        {
          v23 = utterance;
        }

        else
        {
          v23 = &stru_287A1C130;
        }

        v69[1] = v23;
        v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v69 forKeys:v68 count:2];

        request = v63;
        if (_isInternalInstall)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v24 = MEMORY[0x277CBEC10];
      }

LABEL_19:
      requestCreatedTime = [metricsCopy requestCreatedTime];
      if (requestCreatedTime)
      {
        v26 = requestCreatedTime;
        analytics = [(SVXModule *)self->_module analytics];
        v67[0] = dictionary;
        v67[1] = v16;
        v67[2] = v24;
        v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v67 count:3];
        v29 = AFAnalyticsContextsMerge();
        [analytics logEventWithType:1801 machAbsoluteTime:v26 context:v29];

        speechInstrumentationUtilities = self->_speechInstrumentationUtilities;
        taskTracker = [(SVXSpeechSynthesisContext *)self->_currentSpeakingContext taskTracker];
        instrumentationContext = [taskTracker instrumentationContext];
        [(SVXSpeechInstrumentationUtilities *)speechInstrumentationUtilities emitTextToSpeechRequestReceived:instrumentationContext instrumentMetrics:metricsCopy];

        request = v63;
      }

      speechBeginTime = [metricsCopy speechBeginTime];
      if (speechBeginTime)
      {
        v34 = speechBeginTime;
        analytics2 = [(SVXModule *)self->_module analytics];
        v66[0] = v62;
        v66[1] = v16;
        v66[2] = v24;
        v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v66 count:3];
        v37 = AFAnalyticsContextsMerge();
        [analytics2 logEventWithType:1802 machAbsoluteTime:v34 context:v37];

        v38 = objc_alloc_init(MEMORY[0x277D5AA58]);
        taskTracker2 = [(SVXSpeechSynthesisContext *)self->_currentSpeakingContext taskTracker];
        aceId = [taskTracker2 aceId];
        [v38 setAceID:aceId];

        v41 = *MEMORY[0x277CEF0F8];
        if (os_log_type_enabled(*MEMORY[0x277CEF0F8], OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v73 = "[SVXSpeechSynthesizer _handleDidFinishSpeakingWithSpeechRequest:instrumentMetrics:]";
          v74 = 2112;
          v75 = v38;
          _os_log_impl(&dword_2695B9000, v41, OS_LOG_TYPE_INFO, "%s Emit instrumentation: %@", buf, 0x16u);
        }

        taskTracker3 = [(SVXSpeechSynthesisContext *)self->_currentSpeakingContext taskTracker];
        instrumentationContext2 = [taskTracker3 instrumentationContext];
        [instrumentationContext2 emitInstrumentation:v38 machAbsoluteTime:v34];

        request = v63;
      }

      speechEstimatedOutputBeginTime = [metricsCopy speechEstimatedOutputBeginTime];
      if (speechEstimatedOutputBeginTime >= 1)
      {
        v45 = speechEstimatedOutputBeginTime;
        analytics3 = [(SVXModule *)self->_module analytics];
        v65[0] = v62;
        v65[1] = v16;
        v65[2] = v24;
        v47 = [MEMORY[0x277CBEA60] arrayWithObjects:v65 count:3];
        v48 = AFAnalyticsContextsMerge();
        [analytics3 logEventWithType:1806 machAbsoluteTime:v45 context:v48];

        request = v63;
      }

      speechEndTime = [metricsCopy speechEndTime];
      if (speechEndTime)
      {
        v50 = speechEndTime;
        analytics4 = [(SVXModule *)self->_module analytics];
        v64[0] = v62;
        v64[1] = v16;
        v64[2] = v24;
        v52 = [MEMORY[0x277CBEA60] arrayWithObjects:v64 count:3];
        v53 = AFAnalyticsContextsMerge();
        [analytics4 logEventWithType:1803 machAbsoluteTime:v50 context:v53];

        v54 = objc_alloc_init(MEMORY[0x277D5AA60]);
        taskTracker4 = [(SVXSpeechSynthesisContext *)self->_currentSpeakingContext taskTracker];
        aceId2 = [taskTracker4 aceId];
        [v54 setAceID:aceId2];

        v57 = *MEMORY[0x277CEF0F8];
        if (os_log_type_enabled(*MEMORY[0x277CEF0F8], OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v73 = "[SVXSpeechSynthesizer _handleDidFinishSpeakingWithSpeechRequest:instrumentMetrics:]";
          v74 = 2112;
          v75 = v54;
          _os_log_impl(&dword_2695B9000, v57, OS_LOG_TYPE_INFO, "%s Emit instrumentation: %@", buf, 0x16u);
        }

        taskTracker5 = [(SVXSpeechSynthesisContext *)self->_currentSpeakingContext taskTracker];
        instrumentationContext3 = [taskTracker5 instrumentationContext];
        [instrumentationContext3 emitInstrumentation:v54 machAbsoluteTime:v50];

        request = v63;
      }
    }
  }
}

- (void)_handleDidStartSpeakingWithSpeechRequest:(id)request timestamp:(unint64_t)timestamp
{
  v24 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v7 = MEMORY[0x277CEF098];
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v20 = 136315394;
    v21 = "[SVXSpeechSynthesizer _handleDidStartSpeakingWithSpeechRequest:timestamp:]";
    v22 = 2112;
    v23 = requestCopy;
    _os_log_impl(&dword_2695B9000, v8, OS_LOG_TYPE_INFO, "%s speechRequest = %@", &v20, 0x16u);
  }

  speechRequest = [(SVXSpeechSynthesisContext *)self->_currentSpeakingContext speechRequest];

  if (speechRequest == requestCopy)
  {
    v10 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_INFO))
    {
      currentSpeakingContext = self->_currentSpeakingContext;
      v20 = 136315394;
      v21 = "[SVXSpeechSynthesizer _handleDidStartSpeakingWithSpeechRequest:timestamp:]";
      v22 = 2112;
      v23 = currentSpeakingContext;
      _os_log_impl(&dword_2695B9000, v10, OS_LOG_TYPE_INFO, "%s Started TTS for current speaking context. (_currentSpeakingContext = %@)", &v20, 0x16u);
    }

    analytics = [(SVXModule *)self->_module analytics];
    analyticsContext = [(SVXSpeechSynthesisContext *)self->_currentSpeakingContext analyticsContext];
    [analytics logEventWithType:2706 context:analyticsContext];

    announcer = self->_announcer;
    request = [(SVXSpeechSynthesisContext *)self->_currentSpeakingContext request];
    v16 = objc_alloc(MEMORY[0x277CEF4A8]);
    text = [(SVXSpeechSynthesisContext *)requestCopy text];
    v18 = [v16 initWithUtterance:text beginTimestamp:timestamp endTimestamp:0];
    taskTracker = [(SVXSpeechSynthesisContext *)self->_currentSpeakingContext taskTracker];
    [(SVXSpeechSynthesisAnnouncer *)announcer speechSynthesizerDidStartRequest:request record:v18 taskTracker:taskTracker];
  }
}

- (void)_configureWithConfiguration:(id)configuration
{
  if ([(SVXSpeechSynthesisConfigurationStateManager *)self->_configurationManager updateConfiguration:configuration])
  {
    performer = [(SVXModule *)self->_module performer];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __52__SVXSpeechSynthesizer__configureWithConfiguration___block_invoke;
    v5[3] = &unk_279C68FC0;
    v5[4] = self;
    [performer performBlock:v5 withOptions:0];
  }
}

- (void)_prewarmWithContext:(id)context
{
  v14 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v10 = 136315394;
    v11 = "[SVXSpeechSynthesizer _prewarmWithContext:]";
    v12 = 2112;
    v13 = contextCopy;
    _os_log_impl(&dword_2695B9000, v5, OS_LOG_TYPE_INFO, "%s context = %@", &v10, 0x16u);
  }

  voiceConfigurer = self->_voiceConfigurer;
  preferences = [(SVXModule *)self->_module preferences];
  v8 = [(SVXSynthesisVoiceConfigurer *)voiceConfigurer voiceForContext:contextCopy preferences:preferences];

  v9 = [(SVXSpeechSynthesisConfigurer *)self->_speechSynthesisConfigurer synthesisRequestForText:&stru_287A1C130 voice:v8];
  [(SiriTTSDaemonSession *)self->_ttsSession prewarmWithRequest:v9 didFinish:&__block_literal_global_2299];
}

void __44__SVXSpeechSynthesizer__prewarmWithContext___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (v2)
  {
    v3 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315394;
      v5 = "[SVXSpeechSynthesizer _prewarmWithContext:]_block_invoke";
      v6 = 2112;
      v7 = v2;
      _os_log_impl(&dword_2695B9000, v3, OS_LOG_TYPE_DEFAULT, "%s #tts Unable to prewarm session, error=%@", &v4, 0x16u);
    }
  }
}

- (void)_postcool
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[SVXSpeechSynthesizer _postcool]";
    _os_log_impl(&dword_2695B9000, v3, OS_LOG_TYPE_INFO, "%s ", &v4, 0xCu);
  }

  [(SiriTTSDaemonSession *)self->_ttsSession setKeepActive:0];
}

- (void)_prewarm
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CEF098];
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v8 = 136315138;
    v9 = "[SVXSpeechSynthesizer _prewarm]";
    _os_log_impl(&dword_2695B9000, v4, OS_LOG_TYPE_INFO, "%s ", &v8, 0xCu);
  }

  [(SiriTTSDaemonSession *)self->_ttsSession setKeepActive:1];
  currentConfiguration = [(SVXSpeechSynthesisConfigurationStateManager *)self->_configurationManager currentConfiguration];
  audioSessionID = [currentConfiguration audioSessionID];

  if (audioSessionID)
  {
    self->_needsPrewarm = 0;
    [(SVXSpeechSynthesizer *)self _prewarmWithContext:0];
  }

  else
  {
    v7 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_INFO))
    {
      v8 = 136315138;
      v9 = "[SVXSpeechSynthesizer _prewarm]";
      _os_log_impl(&dword_2695B9000, v7, OS_LOG_TYPE_INFO, "%s Skipped prewarming because audio session ID is unknown.", &v8, 0xCu);
    }

    self->_needsPrewarm = 1;
  }
}

- (void)didFinishSynthesisRequest:(id)request withInstrumentMetrics:(id)metrics error:(id)error
{
  v31 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  metricsCopy = metrics;
  errorCopy = error;
  v11 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    ttsSession = self->_ttsSession;
    *buf = 136316162;
    v22 = "[SVXSpeechSynthesizer didFinishSynthesisRequest:withInstrumentMetrics:error:]";
    v23 = 2112;
    v24 = ttsSession;
    v25 = 2112;
    v26 = requestCopy;
    v27 = 2112;
    v28 = metricsCopy;
    v29 = 2112;
    v30 = errorCopy;
    _os_log_impl(&dword_2695B9000, v11, OS_LOG_TYPE_INFO, "%s TTS session = %@, request = %@, instrumentMetrics = %@, error = %@", buf, 0x34u);
  }

  performer = [(SVXModule *)self->_module performer];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __78__SVXSpeechSynthesizer_didFinishSynthesisRequest_withInstrumentMetrics_error___block_invoke;
  v17[3] = &unk_279C68930;
  v17[4] = self;
  v18 = requestCopy;
  v19 = metricsCopy;
  v20 = errorCopy;
  v14 = errorCopy;
  v15 = metricsCopy;
  v16 = requestCopy;
  [performer performBlock:v17];
}

- (void)withRequest:(id)request didGenerateAudioChunk:(id)chunk
{
  v24 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  chunkCopy = chunk;
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    ttsSession = self->_ttsSession;
    *buf = 136315906;
    v17 = "[SVXSpeechSynthesizer withRequest:didGenerateAudioChunk:]";
    v18 = 2112;
    v19 = ttsSession;
    v20 = 2112;
    v21 = requestCopy;
    v22 = 2112;
    v23 = chunkCopy;
    _os_log_impl(&dword_2695B9000, v8, OS_LOG_TYPE_INFO, "%s TTS session = %@, request = %@, audio = %@", buf, 0x2Au);
  }

  performer = [(SVXModule *)self->_module performer];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __58__SVXSpeechSynthesizer_withRequest_didGenerateAudioChunk___block_invoke;
  v13[3] = &unk_279C68ED0;
  v13[4] = self;
  v14 = chunkCopy;
  v15 = requestCopy;
  v11 = requestCopy;
  v12 = chunkCopy;
  [performer performBlock:v13];
}

- (void)withRequest:(id)request didReceiveTimingInfo:(id)info
{
  v26 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  infoCopy = info;
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    ttsSession = self->_ttsSession;
    v10 = v8;
    *buf = 136315906;
    v19 = "[SVXSpeechSynthesizer withRequest:didReceiveTimingInfo:]";
    v20 = 2112;
    v21 = ttsSession;
    v22 = 2112;
    v23 = requestCopy;
    v24 = 2048;
    v25 = [infoCopy count];
    _os_log_impl(&dword_2695B9000, v10, OS_LOG_TYPE_INFO, "%s TTS session = %@, request = %@, timingInfo.count = %tu", buf, 0x2Au);
  }

  performer = [(SVXModule *)self->_module performer];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __57__SVXSpeechSynthesizer_withRequest_didReceiveTimingInfo___block_invoke;
  v14[3] = &unk_279C68ED0;
  v15 = infoCopy;
  selfCopy = self;
  v17 = requestCopy;
  v12 = requestCopy;
  v13 = infoCopy;
  [performer performBlock:v14];
}

uint64_t __57__SVXSpeechSynthesizer_withRequest_didReceiveTimingInfo___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v14 objects:v26 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v15;
    v5 = MEMORY[0x277CEF098];
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v15 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v7 = *v5;
        if (os_log_type_enabled(*v5, OS_LOG_TYPE_INFO))
        {
          v8 = *(*(&v14 + 1) + 8 * i);
          v9 = v7;
          v28.location = [v8 textRange];
          v10 = NSStringFromRange(v28);
          [v8 startTime];
          *buf = 136315906;
          v19 = "[SVXSpeechSynthesizer withRequest:didReceiveTimingInfo:]_block_invoke";
          v20 = 2112;
          v21 = v8;
          v22 = 2112;
          v23 = v10;
          v24 = 2048;
          v25 = v11;
          _os_log_impl(&dword_2695B9000, v9, OS_LOG_TYPE_INFO, "%s %@ {textRange = %@, startTime = %f}", buf, 0x2Au);
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v14 objects:v26 count:16];
    }

    while (v3);
  }

  return [*(a1 + 40) _handleDidReceiveSpeechWordTimingInfoArray:*(a1 + 32) forSpeechRequest:*(a1 + 48)];
}

- (void)didFinishPresynthesizedAudioRequest:(id)request withInstrumentMetrics:(id)metrics error:(id)error
{
  v31 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  metricsCopy = metrics;
  errorCopy = error;
  kdebug_trace();
  v11 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    ttsSession = self->_ttsSession;
    *buf = 136316162;
    v22 = "[SVXSpeechSynthesizer didFinishPresynthesizedAudioRequest:withInstrumentMetrics:error:]";
    v23 = 2112;
    v24 = ttsSession;
    v25 = 2112;
    v26 = requestCopy;
    v27 = 2112;
    v28 = metricsCopy;
    v29 = 2112;
    v30 = errorCopy;
    _os_log_impl(&dword_2695B9000, v11, OS_LOG_TYPE_INFO, "%s TTS session = %@, request = %@, instrumentMetrics = %@, error = %@", buf, 0x34u);
  }

  performer = [(SVXModule *)self->_module performer];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __88__SVXSpeechSynthesizer_didFinishPresynthesizedAudioRequest_withInstrumentMetrics_error___block_invoke;
  v17[3] = &unk_279C68930;
  v17[4] = self;
  v18 = requestCopy;
  v19 = metricsCopy;
  v20 = errorCopy;
  v14 = errorCopy;
  v15 = metricsCopy;
  v16 = requestCopy;
  [performer performBlock:v17];
}

- (void)didStopPresynthesizedAudioRequest:(id)request atEnd:(BOOL)end error:(id)error
{
  endCopy = end;
  v29 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  errorCopy = error;
  v10 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    ttsSession = self->_ttsSession;
    *buf = 136316162;
    v20 = "[SVXSpeechSynthesizer didStopPresynthesizedAudioRequest:atEnd:error:]";
    v21 = 2112;
    v22 = ttsSession;
    v23 = 2112;
    v24 = requestCopy;
    v25 = 1024;
    v26 = endCopy;
    v27 = 2112;
    v28 = errorCopy;
    _os_log_impl(&dword_2695B9000, v10, OS_LOG_TYPE_INFO, "%s TTS session = %@, request = %@, atEnd = %d, error = %@", buf, 0x30u);
  }

  performer = [(SVXModule *)self->_module performer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __70__SVXSpeechSynthesizer_didStopPresynthesizedAudioRequest_atEnd_error___block_invoke;
  v15[3] = &unk_279C69100;
  v15[4] = self;
  v16 = requestCopy;
  v18 = endCopy;
  v17 = errorCopy;
  v13 = errorCopy;
  v14 = requestCopy;
  [performer performBlock:v15];
}

- (void)didStartPresynthesizedAudioRequest:(id)request
{
  v19 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = mach_absolute_time();
  kdebug_trace();
  v6 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    ttsSession = self->_ttsSession;
    *buf = 136315650;
    v14 = "[SVXSpeechSynthesizer didStartPresynthesizedAudioRequest:]";
    v15 = 2112;
    v16 = ttsSession;
    v17 = 2112;
    v18 = requestCopy;
    _os_log_impl(&dword_2695B9000, v6, OS_LOG_TYPE_INFO, "%s TTS session = %@, request = %@", buf, 0x20u);
  }

  performer = [(SVXModule *)self->_module performer];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __59__SVXSpeechSynthesizer_didStartPresynthesizedAudioRequest___block_invoke;
  v10[3] = &unk_279C68E58;
  v10[4] = self;
  v11 = requestCopy;
  v12 = v5;
  v9 = requestCopy;
  [performer performBlock:v10];
}

- (void)didFinishSpeakingRequest:(id)request successfully:(BOOL)successfully phonemesSpoken:(id)spoken withError:(id)error
{
  successfullyCopy = successfully;
  v33 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  errorCopy = error;
  kdebug_trace();
  v11 = *MEMORY[0x277CEF0C8];
  v12 = v11;
  ttsSignpostInterval = self->_ttsSignpostInterval;
  if (ttsSignpostInterval - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2695B9000, v12, OS_SIGNPOST_INTERVAL_END, ttsSignpostInterval, "TextToSpeech", &unk_269656841, buf, 2u);
  }

  v14 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    ttsSession = self->_ttsSession;
    *buf = 136316162;
    v24 = "[SVXSpeechSynthesizer didFinishSpeakingRequest:successfully:phonemesSpoken:withError:]";
    v25 = 2112;
    v26 = ttsSession;
    v27 = 2112;
    v28 = requestCopy;
    v29 = 1024;
    v30 = successfullyCopy;
    v31 = 2112;
    v32 = errorCopy;
    _os_log_impl(&dword_2695B9000, v14, OS_LOG_TYPE_INFO, "%s TTS session = %@, request = %@, finishedSpeaking = %d, error = %@", buf, 0x30u);
  }

  performer = [(SVXModule *)self->_module performer];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __87__SVXSpeechSynthesizer_didFinishSpeakingRequest_successfully_phonemesSpoken_withError___block_invoke;
  v19[3] = &unk_279C69100;
  v19[4] = self;
  v20 = requestCopy;
  v22 = successfullyCopy;
  v21 = errorCopy;
  v17 = errorCopy;
  v18 = requestCopy;
  [performer performBlock:v19];
}

- (void)didFinishSpeakingRequest:(id)request withInstrumentMetrics:(id)metrics
{
  v22 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  metricsCopy = metrics;
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    ttsSession = self->_ttsSession;
    *buf = 136315650;
    v17 = "[SVXSpeechSynthesizer didFinishSpeakingRequest:withInstrumentMetrics:]";
    v18 = 2112;
    v19 = ttsSession;
    v20 = 2112;
    v21 = requestCopy;
    _os_log_impl(&dword_2695B9000, v8, OS_LOG_TYPE_INFO, "%s TTS session = %@, request = %@", buf, 0x20u);
  }

  performer = [(SVXModule *)self->_module performer];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __71__SVXSpeechSynthesizer_didFinishSpeakingRequest_withInstrumentMetrics___block_invoke;
  v13[3] = &unk_279C68ED0;
  v13[4] = self;
  v14 = requestCopy;
  v15 = metricsCopy;
  v11 = metricsCopy;
  v12 = requestCopy;
  [performer performBlock:v13];
}

- (void)didStartSpeakingRequest:(id)request
{
  v23 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = mach_absolute_time();
  kdebug_trace();
  v6 = MEMORY[0x277CEF0C8];
  v7 = os_signpost_id_generate(*MEMORY[0x277CEF0C8]);
  v8 = *v6;
  v9 = v8;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2695B9000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "TextToSpeech", &unk_269656841, buf, 2u);
  }

  self->_ttsSignpostInterval = v7;
  v10 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    ttsSession = self->_ttsSession;
    *buf = 136315650;
    v18 = "[SVXSpeechSynthesizer didStartSpeakingRequest:]";
    v19 = 2112;
    v20 = ttsSession;
    v21 = 2112;
    v22 = requestCopy;
    _os_log_impl(&dword_2695B9000, v10, OS_LOG_TYPE_INFO, "%s TTS session = %@, request = %@", buf, 0x20u);
  }

  performer = [(SVXModule *)self->_module performer];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __48__SVXSpeechSynthesizer_didStartSpeakingRequest___block_invoke;
  v14[3] = &unk_279C68E58;
  v14[4] = self;
  v15 = requestCopy;
  v16 = v5;
  v13 = requestCopy;
  [performer performBlock:v14];
}

- (void)languageCodeChanged:(id)changed
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v8 = "[SVXSpeechSynthesizer languageCodeChanged:]";
    _os_log_impl(&dword_2695B9000, v4, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  performer = [(SVXModule *)self->_module performer];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__SVXSpeechSynthesizer_languageCodeChanged___block_invoke;
  v6[3] = &unk_279C68FC0;
  v6[4] = self;
  [performer performBlock:v6];
}

void __44__SVXSpeechSynthesizer_languageCodeChanged___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 88);
  v4 = [*(v2 + 32) preferences];
  v6 = [v3 getLocaleWithAllowsFallback:0 preferences:v4];

  v5 = [SVXSpeechSynthesisConfiguration configurationWithLocale:v6];
  [*(a1 + 32) _configureWithConfiguration:v5];
}

- (void)outputVoiceChanged:(id)changed
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v8 = "[SVXSpeechSynthesizer outputVoiceChanged:]";
    _os_log_impl(&dword_2695B9000, v4, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  performer = [(SVXModule *)self->_module performer];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __43__SVXSpeechSynthesizer_outputVoiceChanged___block_invoke;
  v6[3] = &unk_279C68FC0;
  v6[4] = self;
  [performer performBlock:v6];
}

void __43__SVXSpeechSynthesizer_outputVoiceChanged___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 88);
  v4 = [*(v2 + 32) preferences];
  v6 = [v3 getOutputVoiceInfoWithAllowsFallback:0 preferences:v4];

  v5 = [SVXSpeechSynthesisConfiguration configurationWithOutputVoiceInfo:v6];
  [*(a1 + 32) _configureWithConfiguration:v5];
}

- (void)removeListener:(id)listener
{
  listenerCopy = listener;
  performer = [(SVXModule *)self->_module performer];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__SVXSpeechSynthesizer_removeListener___block_invoke;
  v7[3] = &unk_279C68FE8;
  v7[4] = self;
  v8 = listenerCopy;
  v6 = listenerCopy;
  [performer performBlock:v7];
}

- (void)addListener:(id)listener
{
  listenerCopy = listener;
  performer = [(SVXModule *)self->_module performer];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __36__SVXSpeechSynthesizer_addListener___block_invoke;
  v7[3] = &unk_279C68FE8;
  v7[4] = self;
  v8 = listenerCopy;
  v6 = listenerCopy;
  [performer performBlock:v7];
}

- (void)updateWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  performer = [(SVXModule *)self->_module performer];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__SVXSpeechSynthesizer_updateWithConfiguration___block_invoke;
  v7[3] = &unk_279C68FE8;
  v7[4] = self;
  v8 = configurationCopy;
  v6 = configurationCopy;
  [performer performBlock:v7];
}

- (void)postcool
{
  performer = [(SVXModule *)self->_module performer];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __32__SVXSpeechSynthesizer_postcool__block_invoke;
  v4[3] = &unk_279C68FC0;
  v4[4] = self;
  [performer performBlock:v4];
}

- (void)prewarm
{
  performer = [(SVXModule *)self->_module performer];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __31__SVXSpeechSynthesizer_prewarm__block_invoke;
  v4[3] = &unk_279C68FC0;
  v4[4] = self;
  [performer performBlock:v4];
}

- (void)stopWithModuleInstanceProvider:(id)provider
{
  performer = [(SVXModule *)self->_module performer];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __55__SVXSpeechSynthesizer_stopWithModuleInstanceProvider___block_invoke;
  v5[3] = &unk_279C68FC0;
  v5[4] = self;
  [performer performBlock:v5];
}

uint64_t __55__SVXSpeechSynthesizer_stopWithModuleInstanceProvider___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  *(v2 + 8) = 0;

  [*(a1 + 32) _cancelPendingContextsWithOperationType:2];
  v4 = *(a1 + 32);

  return [v4 _stopCurrentSpeakingContextWithInterruptionBehavior:1];
}

- (void)startWithModuleInstanceProvider:(id)provider platformDependencies:(id)dependencies
{
  v29 = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  dependenciesCopy = dependencies;
  performer = [(SVXModule *)self->_module performer];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __77__SVXSpeechSynthesizer_startWithModuleInstanceProvider_platformDependencies___block_invoke;
  v25[3] = &unk_279C68ED0;
  v25[4] = self;
  v9 = providerCopy;
  v26 = v9;
  v10 = dependenciesCopy;
  v27 = v10;
  [performer performBlock:v25];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v21 objects:v28 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v22;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v21 + 1) + 8 * i);
        if ([v16 type] == 5)
        {
          audioStreamingAnnouncer = self->_audioStreamingAnnouncer;
          audioStreamingListener = [v16 audioStreamingListener];
          [(SVXAnnouncer *)audioStreamingAnnouncer addListener:audioStreamingListener];
        }

        if ([v16 type] == 7)
        {
          configurationManager = self->_configurationManager;
          clientAudioSystemService = [v16 clientAudioSystemService];
          [(SVXSpeechSynthesisConfigurationStateManager *)configurationManager setClientAudioSystemServicing:clientAudioSystemService];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v21 objects:v28 count:16];
    }

    while (v13);
  }
}

void __77__SVXSpeechSynthesizer_startWithModuleInstanceProvider_platformDependencies___block_invoke(id *a1)
{
  v18 = *MEMORY[0x277D85DE8];
  [a1[4] _cancelPendingContextsWithOperationType:2];
  [a1[4] _stopCurrentSpeakingContextWithInterruptionBehavior:1];
  v2 = [a1[5] sessionManager];
  v3 = a1[4];
  v4 = v3[1];
  v3[1] = v2;

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = a1[6];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([v10 type] == 6)
        {
          v11 = a1[4];
          v12 = [v10 speechSynthesisListener];
          [v11 addListener:v12];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }
}

- (SVXSpeechSynthesizer)initWithModule:(id)module speechSynthesisUtils:(id)utils sessionUtils:(id)sessionUtils voiceGenderConverter:(id)converter announcer:(id)announcer configurationManager:(id)manager audioStreamingAnnouncer:(id)streamingAnnouncer ttsSession:(id)self0 speechSynthesisConfigurer:(id)self1 speechRequestConfigurer:(id)self2 voiceConfigurer:(id)self3 notificationCenterRegistrar:(id)self4 speakableUtteranceParserProvider:(id)self5 localizationUtils:(id)self6 speechInstrumentationUtilities:(id)self7 metricsContextFactory:(id)self8
{
  moduleCopy = module;
  utilsCopy = utils;
  sessionUtilsCopy = sessionUtils;
  converterCopy = converter;
  announcerCopy = announcer;
  managerCopy = manager;
  streamingAnnouncerCopy = streamingAnnouncer;
  sessionCopy = session;
  configurerCopy = configurer;
  requestConfigurerCopy = requestConfigurer;
  voiceConfigurerCopy = voiceConfigurer;
  registrarCopy = registrar;
  providerCopy = provider;
  localizationUtilsCopy = localizationUtils;
  utilitiesCopy = utilities;
  factoryCopy = factory;
  v55.receiver = self;
  v55.super_class = SVXSpeechSynthesizer;
  v23 = [(SVXSpeechSynthesizer *)&v55 init];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_speechSynthesisUtils, utils);
    objc_storeStrong(&v24->_sessionUtils, sessionUtils);
    objc_storeStrong(&v24->_voiceGenderConverter, converter);
    objc_storeStrong(&v24->_module, module);
    objc_storeStrong(&v24->_announcer, announcer);
    objc_storeStrong(&v24->_configurationManager, manager);
    objc_storeStrong(&v24->_audioStreamingAnnouncer, streamingAnnouncer);
    objc_storeStrong(&v24->_ttsSession, session);
    objc_storeStrong(&v24->_speechSynthesisConfigurer, configurer);
    objc_storeStrong(&v24->_speechRequestConfigurer, requestConfigurer);
    objc_storeStrong(&v24->_voiceConfigurer, voiceConfigurer);
    objc_storeStrong(&v24->_notificationCenterRegistrar, registrar);
    objc_storeStrong(&v24->_speakableUtteranceParserProvider, provider);
    objc_storeStrong(&v24->_speechInstrumentationUtilities, utilities);
    objc_storeStrong(&v24->_localizationUtils, localizationUtils);
    objc_storeStrong(&v24->_metricsContextFactory, factory);
    v25 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:16];
    pendingContexts = v24->_pendingContexts;
    v24->_pendingContexts = v25;

    v27 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:16];
    synthesizingContexts = v24->_synthesizingContexts;
    v24->_synthesizingContexts = v27;

    speechSynthesisUtils = v24->_speechSynthesisUtils;
    preferences = [(SVXModule *)v24->_module preferences];
    v31 = [(SVXSpeechSynthesisUtils *)speechSynthesisUtils getLocaleWithAllowsFallback:0 preferences:preferences];

    v32 = v24->_speechSynthesisUtils;
    preferences2 = [(SVXModule *)v24->_module preferences];
    v34 = [(SVXSpeechSynthesisUtils *)v32 getOutputVoiceInfoWithAllowsFallback:0 preferences:preferences2];

    v35 = [[SVXSpeechSynthesisConfiguration alloc] initWithLocale:v31 outputVoiceInfo:v34 audioSessionID:0];
    [(SVXSpeechSynthesizer *)v24 _configureWithConfiguration:v35];
    [(SVXDefaultNotificationCenterRegistrar *)v24->_notificationCenterRegistrar addObserver:v24 selector:sel_outputVoiceChanged_ name:*MEMORY[0x277CEF058] object:0];
    [(SVXDefaultNotificationCenterRegistrar *)v24->_notificationCenterRegistrar addObserver:v24 selector:sel_languageCodeChanged_ name:*MEMORY[0x277CEF018] object:0];
  }

  return v24;
}

- (SVXSpeechSynthesizer)initWithModule:(id)module
{
  moduleCopy = module;
  v3 = objc_alloc_init(SVXSpeechSynthesisUtils);
  v4 = objc_alloc_init(SVXSessionUtils);
  v5 = objc_alloc_init(SVXVoiceGenderConverter);
  v22 = objc_alloc_init(SVXSpeechSynthesisAnnouncer);
  v6 = objc_alloc_init(SVXSpeechSynthesisConfigurationStateManager);
  v21 = objc_alloc_init(SVXAudioStreamingAnnouncer);
  v7 = objc_alloc_init(SVXDefaultNotificationCenterRegistrar);
  v19 = objc_alloc_init(MEMORY[0x277D613F8]);
  v8 = v5;
  v26 = v5;
  v20 = [[SVXSynthesisVoiceConfigurer alloc] initWithConfigurationManager:v6 speechSynthesisUtils:v3 sessionUtils:v4 voiceGenderConverter:v5];
  v17 = [[SVXSpeechSynthesisConfigurer alloc] initWithVoiceConfigurer:v20];
  v16 = [[SVXSpeechRequestConfigurer alloc] initWithConfigurationManager:v6 voiceConfigurer:v20];
  v9 = v3;
  v18 = v3;
  v15 = [[SVXSynthesisVoiceConfigurer alloc] initWithConfigurationManager:v6 speechSynthesisUtils:v3 sessionUtils:v4 voiceGenderConverter:v8];
  v14 = objc_alloc_init(SVXAFSpeakableUtteranceParserProvider);
  v10 = objc_alloc_init(SVXLocalizationUtils);
  v11 = objc_alloc_init(SVXSpeechInstrumentationUtilities);
  v12 = objc_alloc_init(SVXSpeechSynthesisMetricsContextFactory);
  v25 = [(SVXSpeechSynthesizer *)self initWithModule:moduleCopy speechSynthesisUtils:v9 sessionUtils:v4 voiceGenderConverter:v26 announcer:v22 configurationManager:v6 audioStreamingAnnouncer:v21 ttsSession:v19 speechSynthesisConfigurer:v17 speechRequestConfigurer:v16 voiceConfigurer:v15 notificationCenterRegistrar:v7 speakableUtteranceParserProvider:v14 localizationUtils:v10 speechInstrumentationUtilities:v11 metricsContextFactory:v12];

  return v25;
}

- (void)stopCurrentRequestWithInterruptionBehavior:(int64_t)behavior
{
  performer = [(SVXModule *)self->_module performer];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __67__SVXSpeechSynthesizer_stopCurrentRequestWithInterruptionBehavior___block_invoke;
  v6[3] = &unk_279C68C68;
  v6[4] = self;
  v6[5] = behavior;
  [performer performBlock:v6];
}

- (void)cancelPendingRequests
{
  performer = [(SVXModule *)self->_module performer];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __45__SVXSpeechSynthesizer_cancelPendingRequests__block_invoke;
  v4[3] = &unk_279C68FC0;
  v4[4] = self;
  [performer performBlock:v4];
}

- (void)stopRequest:(id)request withInterruptionBehavior:(int64_t)behavior
{
  requestCopy = request;
  performer = [(SVXModule *)self->_module performer];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __61__SVXSpeechSynthesizer_stopRequest_withInterruptionBehavior___block_invoke;
  v9[3] = &unk_279C68E58;
  v9[4] = self;
  v10 = requestCopy;
  behaviorCopy = behavior;
  v8 = requestCopy;
  [performer performBlock:v9];
}

- (void)cancelRequest:(id)request
{
  requestCopy = request;
  performer = [(SVXModule *)self->_module performer];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__SVXSpeechSynthesizer_cancelRequest___block_invoke;
  v7[3] = &unk_279C68FE8;
  v7[4] = self;
  v8 = requestCopy;
  v6 = requestCopy;
  [performer performBlock:v7];
}

- (void)enqueueRequest:(id)request languageCode:(id)code voiceName:(id)name gender:(int64_t)gender audioSessionID:(unsigned int)d preparation:(id)preparation finalization:(id)finalization taskTracker:(id)self0 analyticsContext:(id)self1
{
  contextCopy = context;
  trackerCopy = tracker;
  finalizationCopy = finalization;
  preparationCopy = preparation;
  nameCopy = name;
  codeCopy = code;
  requestCopy = request;
  if ([(SVXSpeechSynthesizer *)self _useStreamingAudio])
  {
    v24 = 1;
  }

  else
  {
    v24 = 2;
  }

  v25 = [[SVXSpeechSynthesisContext alloc] initWithOperationType:v24 request:requestCopy languageCode:codeCopy voiceName:nameCopy gender:gender audioSessionID:d preparation:preparationCopy audioChunkHandler:0 finalization:finalizationCopy taskTracker:trackerCopy analyticsContext:contextCopy];

  if ([(SVXSpeechSynthesizer *)self _useStreamingAudio])
  {
    [(SVXSpeechSynthesisContext *)v25 setIsStreamingSynthesisRequest:1];
  }

  performer = [(SVXModule *)self->_module performer];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __138__SVXSpeechSynthesizer_enqueueRequest_languageCode_voiceName_gender_audioSessionID_preparation_finalization_taskTracker_analyticsContext___block_invoke;
  v29[3] = &unk_279C68FE8;
  v29[4] = self;
  v30 = v25;
  v27 = v25;
  [performer performBlock:v29];
}

- (void)synthesizeRequest:(id)request audioChunkHandler:(id)handler taskTracker:(id)tracker analyticsContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  contextCopy = context;
  trackerCopy = tracker;
  handlerCopy = handler;
  requestCopy = request;
  v17 = [[SVXSpeechSynthesisContext alloc] initWithOperationType:1 request:requestCopy languageCode:0 voiceName:0 gender:0 audioSessionID:0 preparation:0 audioChunkHandler:handlerCopy finalization:completionCopy taskTracker:trackerCopy analyticsContext:contextCopy];

  performer = [(SVXModule *)self->_module performer];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __100__SVXSpeechSynthesizer_synthesizeRequest_audioChunkHandler_taskTracker_analyticsContext_completion___block_invoke;
  v20[3] = &unk_279C68FE8;
  v20[4] = self;
  v21 = v17;
  v19 = v17;
  [performer performBlock:v20];
}

- (void)prewarmRequest:(id)request
{
  requestCopy = request;
  performer = [(SVXModule *)self->_module performer];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__SVXSpeechSynthesizer_prewarmRequest___block_invoke;
  v7[3] = &unk_279C68FE8;
  v8 = requestCopy;
  selfCopy = self;
  v6 = requestCopy;
  [performer performBlock:v7];
}

void __39__SVXSpeechSynthesizer_prewarmRequest___block_invoke(uint64_t a1)
{
  v2 = [[SVXSpeechSynthesisContext alloc] initWithOperationType:1 request:*(a1 + 32) languageCode:0 voiceName:0 gender:0 audioSessionID:0 preparation:0 audioChunkHandler:0 finalization:0 taskTracker:0 analyticsContext:0];
  [*(a1 + 40) _prewarmWithContext:v2];
}

- (void)dealloc
{
  [(SVXDefaultNotificationCenterRegistrar *)self->_notificationCenterRegistrar removeObserver:self];
  v3.receiver = self;
  v3.super_class = SVXSpeechSynthesizer;
  [(SVXSpeechSynthesizer *)&v3 dealloc];
}

@end