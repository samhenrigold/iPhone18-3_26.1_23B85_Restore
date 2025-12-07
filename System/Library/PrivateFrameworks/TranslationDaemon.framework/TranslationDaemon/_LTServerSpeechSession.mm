@interface _LTServerSpeechSession
- (_LTServerSpeechSession)initWithEngine:(id)engine delegate:(id)delegate selfLoggingManager:(id)manager;
- (void)_startSpeechTranslationWithContext:(id)context;
- (void)_translateSpeechAudioData:(id)data;
- (void)_updateOVADStreamingState_onQueue:(BOOL)queue;
- (void)addSpeechAudioData:(id)data;
- (void)cancel;
- (void)cancelOwnVoicePendingSwapAndRestartTimer;
- (void)delegateTranslationDidFinishWithError:(id)error;
- (void)endAudio;
- (void)forcePendingSwapAndRestart;
- (void)hybridEndpointerFoundEndpoint;
- (void)languageDetectionCompleted;
- (void)languageDetectionResult:(id)result;
- (void)serverEndpointerFeatures:(id)features locale:(id)locale;
- (void)speechActivityDetected;
- (void)speechRecognitionResult:(id)result;
- (void)startSpeechTranslationWithContext:(id)context;
- (void)startTextToSpeechTranslationWithContext:(id)context text:(id)text;
- (void)swapLocalesAndRestart;
- (void)swapLocalesAndRestartWithStateResetAndLogMessage:(id)message;
- (void)translationDidFinishWithError:(id)error;
- (void)translatorDidTranslate:(id)translate;
- (void)updateOVADStreamingState:(BOOL)state;
- (void)updateOwnVoicePendingSwapAndRestartTimer;
@end

@implementation _LTServerSpeechSession

- (_LTServerSpeechSession)initWithEngine:(id)engine delegate:(id)delegate selfLoggingManager:(id)manager
{
  engineCopy = engine;
  delegateCopy = delegate;
  managerCopy = manager;
  v20.receiver = self;
  v20.super_class = _LTServerSpeechSession;
  v12 = [(_LTServerSpeechSession *)&v20 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_engine, engine);
    objc_storeStrong(&v13->_delegate, delegate);
    objc_storeStrong(&v13->_selfLoggingManager, manager);
    v14 = objc_alloc_init(_LTHybridEndpointer);
    endpointer = v13->_endpointer;
    v13->_endpointer = v14;

    v16 = [[_LTLanguageDetector alloc] initWithSelfLoggingManager:v13->_selfLoggingManager];
    languageDetector = v13->_languageDetector;
    v13->_languageDetector = v16;

    v18 = v13;
  }

  return v13;
}

- (void)startSpeechTranslationWithContext:(id)context
{
  contextCopy = context;
  *&self->_expectFinalLidResult = 0;
  self->_translationFinished = 0;
  atomic_store(0, &self->_speechActivityDetected);
  atomic_store(0, &self->_ownVoiceIsActive);
  atomic_store(0, &self->_pendingFinalTranslation);
  v16 = contextCopy;
  localePair = [contextCopy localePair];
  originalLocalePair = self->_originalLocalePair;
  self->_originalLocalePair = localePair;

  translationError = self->_translationError;
  self->_translationError = 0;

  objc_storeStrong(&self->_context, context);
  if ([v16 enableMultiFieldInput])
  {
    v9 = [_LTSpeechDataQueue alloc];
    _LTPreferencesOVADAudioBufferDuration();
    v10 = [(_LTSpeechDataQueue *)v9 initForSeconds:1.0, 1.0];
    cache = self->_cache;
    self->_cache = v10;
  }

  else
  {
    if ([v16 enableVAD])
    {
      v12 = [[_LTSpeechActivityDetector alloc] initWithDelegate:self];
      speechDetector = self->_speechDetector;
      self->_speechDetector = v12;

      v14 = [[_LTSpeechDataQueue alloc] initForSeconds:_LTPreferencesVADAudioCacheMaxDuration()];
      v15 = self->_cache;
      self->_cache = v14;

      goto LABEL_7;
    }

    atomic_store(1u, &self->_speechActivityDetected);
  }

  [(_LTServerSpeechSession *)self _startSpeechTranslationWithContext:v16];
LABEL_7:
}

- (void)_startSpeechTranslationWithContext:(id)context
{
  contextCopy = context;
  if ([contextCopy autodetectLanguage])
  {
    self->_expectFinalLidResult = 1;
    [(_LTLanguageDetector *)self->_languageDetector startLanguageDetectionWithContext:contextCopy delegate:self];
  }

  [(_LTHybridEndpointer *)self->_endpointer startEndpointingWithContext:contextCopy delegate:self];
  [(_LTTranslationEngine *)self->_engine startSpeechTranslationWithContext:contextCopy delegate:self];
}

- (void)startTextToSpeechTranslationWithContext:(id)context text:(id)text
{
  contextCopy = context;
  *&self->_expectFinalLidResult = 0;
  self->_translationFinished = 0;
  atomic_store(0, &self->_pendingFinalTranslation);
  translationError = self->_translationError;
  self->_translationError = 0;
  textCopy = text;

  context = self->_context;
  self->_context = contextCopy;
  v9 = contextCopy;

  [(_LTTranslationEngine *)self->_engine startTextToSpeechTranslationWithContext:v9 text:textCopy delegate:self];
}

- (void)addSpeechAudioData:(id)data
{
  dataCopy = data;
  if ([(_LTTranslationContext *)self->_context enableMultiFieldInput])
  {
    v5 = atomic_load(&self->_pendingSwapAndRestart);
    if ((v5 & 1) == 0)
    {
      [(_LTServerSpeechSession *)self _translateSpeechAudioData:dataCopy];
LABEL_9:
      [(_LTSpeechDataQueue *)self->_cache addSpeechAudioData:dataCopy];
    }
  }

  else
  {
    v6 = atomic_load(&self->_speechActivityDetected);
    if ((v6 & 1) == 0)
    {
      [(_LTSpeechActivityDetector *)self->_speechDetector addSpeechAudioData:dataCopy];
      goto LABEL_9;
    }

    cache = self->_cache;
    if (cache)
    {
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __45___LTServerSpeechSession_addSpeechAudioData___block_invoke;
      v9[3] = &unk_2789B7AA0;
      v9[4] = self;
      [(_LTSpeechDataQueue *)cache consumeAll:v9];
      v8 = self->_cache;
      self->_cache = 0;
    }

    [(_LTServerSpeechSession *)self _translateSpeechAudioData:dataCopy];
  }
}

- (void)_translateSpeechAudioData:(id)data
{
  dataCopy = data;
  [(_LTLanguageDetector *)self->_languageDetector addSpeechAudioData:?];
  [(_LTHybridEndpointer *)self->_endpointer addSpeechAudioData:dataCopy];
  [(_LTTranslationEngine *)self->_engine addSpeechAudioData:dataCopy];
}

- (void)endAudio
{
  v3 = _LTOSLogSpeech(self, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [_LTServerSpeechSession endAudio];
  }

  [(_LTLanguageDetector *)self->_languageDetector endAudio];
  [(_LTHybridEndpointer *)self->_endpointer endAudio];
  [(_LTTranslationEngine *)self->_engine endAudio];
  if (self->_completionHandler)
  {
    enableVAD = [(_LTTranslationContext *)self->_context enableVAD];
    if (enableVAD && (v6 = atomic_load(&self->_speechActivityDetected), (v6 & 1) == 0))
    {
      (*(self->_completionHandler + 2))();
    }

    else if (self->_completionHandler)
    {
      v7 = _LTOSLogSpeech(enableVAD, v5);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
      }
    }
  }
}

- (void)cancel
{
  v3 = _LTOSLogSpeech(self, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [_LTServerSpeechSession cancel];
  }

  [(_LTLanguageDetector *)self->_languageDetector cancelLanguageDetection];
  [(_LTTranslationEngine *)self->_engine cancelSpeechTranslation:0];
  completionHandler = self->_completionHandler;
  if (completionHandler)
  {
    completionHandler[2](completionHandler, 0);
  }
}

- (void)delegateTranslationDidFinishWithError:(id)error
{
  errorCopy = error;
  v4 = _sharedQueue(errorCopy);
  dispatch_assert_queue_V2(v4);

  if (objc_opt_respondsToSelector())
  {
    [(_LTSpeechTranslationDelegate *)self->_delegate translationDidFinishWithError:errorCopy];
  }

  completionHandler = self->_completionHandler;
  if (completionHandler)
  {
    completionHandler[2](completionHandler, errorCopy);
  }
}

- (void)_updateOVADStreamingState_onQueue:(BOOL)queue
{
  queueCopy = queue;
  v43 = *MEMORY[0x277D85DE8];
  v5 = _sharedQueue(self);
  dispatch_assert_queue_V2(v5);

  v8 = _LTOSLogSpeech(v6, v7);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    v11 = @"false";
    v12 = atomic_load(&self->_ownVoiceIsActive);
    v13 = atomic_load(&self->_pendingFinalTranslation);
    v14 = atomic_load(&self->_pendingSwapAndRestart);
    if (v12)
    {
      v15 = @"true";
    }

    else
    {
      v15 = @"false";
    }

    *v38 = 67109890;
    *&v38[4] = queueCopy;
    if (v13)
    {
      v16 = @"true";
    }

    else
    {
      v16 = @"false";
    }

    *&v38[8] = 2112;
    if (v14)
    {
      v11 = @"true";
    }

    *&v38[10] = v15;
    v39 = 2112;
    v40 = v16;
    v41 = 2112;
    v42 = v11;
    _os_log_impl(&dword_232E53000, v8, OS_LOG_TYPE_DEFAULT, "OVAD streaming state changed to %{BOOL}i. _ownVoiceIsActive: %@, _pendingFinalTranslation: %@, _pendingSwapAndRestart: %@", v38, 0x26u);
  }

  v17 = atomic_load(&self->_ownVoiceIsActive);
  if ((v17 & 1) == queueCopy)
  {
    v30 = _LTOSLogSpeech(v9, v10);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      [_LTServerSpeechSession _updateOVADStreamingState_onQueue:];
    }
  }

  else
  {
    atomic_store(queueCopy, &self->_ownVoiceIsActive);
    v18 = [MEMORY[0x277CE1BB0] generateSilentAudioDataWithDuration:3.0];
    v19 = [(_LTServerSpeechSession *)self _translateSpeechAudioData:v18];
    v21 = atomic_load(&self->_pendingFinalTranslation);
    if ((v21 & 1) != 0 && (v22 = atomic_load(&self->_ownVoiceIsActive), (v22 & 1) == 0))
    {
      atomic_store(1u, &self->_pendingSwapAndRestart);
      v31 = _LTOSLogSpeech(v19, v20);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        targetLocale = [(_LTLocalePair *)self->_originalLocalePair targetLocale];
        localeIdentifier = [targetLocale localeIdentifier];
        *v38 = 138412290;
        *&v38[4] = localeIdentifier;
        _os_log_impl(&dword_232E53000, v31, OS_LOG_TYPE_DEFAULT, "OVAD transitioning to pending locale swap and restart state for source: %@", v38, 0xCu);
      }

      updateOwnVoicePendingSwapAndRestartTimer = [(_LTServerSpeechSession *)self updateOwnVoicePendingSwapAndRestartTimer];
    }

    else
    {
      v23 = atomic_load(&self->_ownVoiceIsActive);
      if (v23 & 1) != 0 && (v24 = atomic_load(&self->_pendingSwapAndRestart), (v24))
      {
        atomic_store(0, &self->_pendingSwapAndRestart);
        v25 = _LTOSLogSpeech(v19, v20);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          targetLocale2 = [(_LTLocalePair *)self->_originalLocalePair targetLocale];
          localeIdentifier2 = [targetLocale2 localeIdentifier];
          *v38 = 138412290;
          *&v38[4] = localeIdentifier2;
          _os_log_impl(&dword_232E53000, v25, OS_LOG_TYPE_DEFAULT, "OVAD signaled while waiting for pending locale swap. Reseting pending swap and restart state for source: %@", v38, 0xCu);
        }

        updateOwnVoicePendingSwapAndRestartTimer = [(_LTServerSpeechSession *)self cancelOwnVoicePendingSwapAndRestartTimer];
      }

      else
      {
        updateOwnVoicePendingSwapAndRestartTimer = [(_LTServerSpeechSession *)self swapLocalesAndRestart:*v38];
      }
    }

    v34 = atomic_load(&self->_ownVoiceIsActive);
    if (v34)
    {
      atomic_store(1u, &self->_pendingFinalTranslation);
      v35 = _LTOSLogSpeech(updateOwnVoicePendingSwapAndRestartTimer, v29);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        targetLocale3 = [(_LTLocalePair *)self->_originalLocalePair targetLocale];
        localeIdentifier3 = [targetLocale3 localeIdentifier];
        *v38 = 138412290;
        *&v38[4] = localeIdentifier3;
        _os_log_impl(&dword_232E53000, v35, OS_LOG_TYPE_DEFAULT, "OVAD assuming pending final translation for source: %@", v38, 0xCu);
      }
    }
  }
}

- (void)updateOVADStreamingState:(BOOL)state
{
  inited = objc_initWeak(&location, self);
  v5 = _sharedQueue(inited);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51___LTServerSpeechSession_updateOVADStreamingState___block_invoke;
  block[3] = &unk_2789B7290;
  objc_copyWeak(&v7, &location);
  stateCopy = state;
  dispatch_async(v5, block);

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)swapLocalesAndRestart
{
  v3 = _sharedQueue(self);
  dispatch_assert_queue_V2(v3);

  v4 = atomic_load(&self->_ownVoiceIsActive);
  originalLocalePair = self->_originalLocalePair;
  if (v4)
  {
    originalLocalePair = [(_LTLocalePair *)self->_originalLocalePair reversedPair];
  }

  [(_LTTranslationContext *)self->_context setLocalePair:originalLocalePair];
  if (v4)
  {
  }

  [(_LTTranslationEngine *)self->_engine startSpeechTranslationWithContext:self->_context delegate:self];
  cache = self->_cache;
  if (cache)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __47___LTServerSpeechSession_swapLocalesAndRestart__block_invoke;
    v12[3] = &unk_2789B7AC8;
    v13 = v4 & 1;
    v12[4] = self;
    [(_LTSpeechDataQueue *)cache consumeAll:v12];
    v8 = [_LTSpeechDataQueue alloc];
    _LTPreferencesOVADAudioBufferDuration();
    v9 = [(_LTSpeechDataQueue *)v8 initForSeconds:1.0, 1.0];
    v10 = self->_cache;
    self->_cache = v9;
  }

  else
  {
    v11 = _LTOSLogSpeech(0, v6);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [_LTServerSpeechSession swapLocalesAndRestart];
    }
  }
}

- (void)updateOwnVoicePendingSwapAndRestartTimer
{
  v3 = _sharedQueue(self);
  dispatch_assert_queue_V2(v3);

  cancelOwnVoicePendingSwapAndRestartTimer = [(_LTServerSpeechSession *)self cancelOwnVoicePendingSwapAndRestartTimer];
  v6 = _LTOSLogSpeech(cancelOwnVoicePendingSwapAndRestartTimer, v5);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    *buf = 0;
    _os_log_impl(&dword_232E53000, v6, OS_LOG_TYPE_DEFAULT, "OVAD updating own voice pending swap and restart timer", buf, 2u);
  }

  v8 = _sharedQueue(v7);
  v9 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v8);
  ownVoicePendingSwapAndRestartTimer = self->_ownVoicePendingSwapAndRestartTimer;
  self->_ownVoicePendingSwapAndRestartTimer = v9;

  v11 = _LTPreferencesOVADPendingSwapTimeoutDuration() == 0.0;
  v12 = 0.0;
  if (!v11)
  {
    v12 = 1.0;
  }

  v13 = v12 * 1000000000.0;
  v14 = self->_ownVoicePendingSwapAndRestartTimer;
  if (v11)
  {
    v13 = 2000000000.0;
  }

  v15 = dispatch_time(0, v13);
  dispatch_source_set_timer(v14, v15, 0xFFFFFFFFFFFFFFFFLL, 0);
  v16 = self->_ownVoicePendingSwapAndRestartTimer;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __66___LTServerSpeechSession_updateOwnVoicePendingSwapAndRestartTimer__block_invoke;
  handler[3] = &unk_2789B7AF0;
  handler[4] = self;
  dispatch_source_set_event_handler(v16, handler);
  dispatch_resume(self->_ownVoicePendingSwapAndRestartTimer);
}

- (void)cancelOwnVoicePendingSwapAndRestartTimer
{
  v3 = _sharedQueue(self);
  dispatch_assert_queue_V2(v3);

  if (self->_ownVoicePendingSwapAndRestartTimer)
  {
    v6 = _LTOSLogSpeech(v4, v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_232E53000, v6, OS_LOG_TYPE_DEFAULT, "OVAD cancelling own voice pending swap and restart timer", v8, 2u);
    }

    dispatch_source_cancel(self->_ownVoicePendingSwapAndRestartTimer);
    ownVoicePendingSwapAndRestartTimer = self->_ownVoicePendingSwapAndRestartTimer;
    self->_ownVoicePendingSwapAndRestartTimer = 0;
  }
}

- (void)swapLocalesAndRestartWithStateResetAndLogMessage:(id)message
{
  v12 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v5 = _sharedQueue(messageCopy);
  dispatch_assert_queue_V2(v5);

  atomic_store(0, &self->_pendingFinalTranslation);
  v8 = atomic_load(&self->_pendingSwapAndRestart);
  if (v8)
  {
    atomic_store(0, &self->_pendingSwapAndRestart);
    v9 = _LTOSLogSpeech(v6, v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = messageCopy;
      _os_log_impl(&dword_232E53000, v9, OS_LOG_TYPE_DEFAULT, "%@", &v10, 0xCu);
    }

    [(_LTServerSpeechSession *)self cancelOwnVoicePendingSwapAndRestartTimer];
    [(_LTServerSpeechSession *)self swapLocalesAndRestart];
  }
}

- (void)forcePendingSwapAndRestart
{
  v3 = _sharedQueue(self);
  dispatch_assert_queue_V2(v3);

  [(_LTServerSpeechSession *)self swapLocalesAndRestartWithStateResetAndLogMessage:@"OVAD forcing pending swap and restart"];
}

- (void)speechActivityDetected
{
  v2 = atomic_load(&self->_speechActivityDetected);
  if ((v2 & 1) == 0)
  {
    [(_LTServerSpeechSession *)self _startSpeechTranslationWithContext:self->_context];
    speechDetector = self->_speechDetector;
    self->_speechDetector = 0;

    if (objc_opt_respondsToSelector())
    {
      [(_LTSpeechTranslationDelegate *)self->_delegate speechActivityDetected];
    }

    atomic_store(1u, &self->_speechActivityDetected);
  }
}

- (void)languageDetectionResult:(id)result
{
  resultCopy = result;
  if (objc_opt_respondsToSelector())
  {
    [(_LTSpeechTranslationDelegate *)self->_delegate languageDetectionResult:resultCopy];
  }

  if (objc_opt_respondsToSelector())
  {
    [(_LTTranslationEngine *)self->_engine setLanguagesRecognized:resultCopy context:self->_context];
  }

  if ([resultCopy isFinal])
  {
    inited = objc_initWeak(&location, self);
    v6 = _sharedQueue(inited);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __50___LTServerSpeechSession_languageDetectionResult___block_invoke;
    v7[3] = &unk_2789B72E0;
    objc_copyWeak(&v8, &location);
    dispatch_async(v6, v7);

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

- (void)languageDetectionCompleted
{
  if (objc_opt_respondsToSelector())
  {
    delegate = self->_delegate;

    [(_LTSpeechTranslationDelegate *)delegate languageDetectionCompleted];
  }
}

- (void)hybridEndpointerFoundEndpoint
{
  v3 = _LTOSLogSpeech(self, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [_LTServerSpeechSession hybridEndpointerFoundEndpoint];
  }

  [(_LTLanguageDetector *)self->_languageDetector endAudio];
  [(_LTTranslationEngine *)self->_engine endpoint];
  if (objc_opt_respondsToSelector())
  {
    [(_LTSpeechTranslationDelegate *)self->_delegate hybridEndpointerFoundEndpoint];
  }
}

- (void)serverEndpointerFeatures:(id)features locale:(id)locale
{
  featuresCopy = features;
  localeCopy = locale;
  [(_LTHybridEndpointer *)self->_endpointer setServerEndpointerFeatures:featuresCopy withLocale:localeCopy];
  if (objc_opt_respondsToSelector())
  {
    [(_LTSpeechTranslationDelegate *)self->_delegate serverEndpointerFeatures:featuresCopy locale:localeCopy];
  }
}

- (void)speechRecognitionResult:(id)result
{
  resultCopy = result;
  inited = objc_initWeak(&location, self);
  v6 = _sharedQueue(inited);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50___LTServerSpeechSession_speechRecognitionResult___block_invoke;
  block[3] = &unk_2789B72B8;
  objc_copyWeak(&v10, &location);
  v7 = resultCopy;
  v9 = v7;
  dispatch_async(v6, block);

  [(_LTLanguageDetector *)self->_languageDetector addSpeechRecognitionResult:v7];
  if (objc_opt_respondsToSelector())
  {
    [(_LTSpeechTranslationDelegate *)self->_delegate speechRecognitionResult:v7];
  }

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)translatorDidTranslate:(id)translate
{
  translateCopy = translate;
  inited = objc_initWeak(&location, self);
  v6 = _sharedQueue(inited);
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __49___LTServerSpeechSession_translatorDidTranslate___block_invoke;
  v11 = &unk_2789B7B18;
  objc_copyWeak(&v14, &location);
  v7 = translateCopy;
  v12 = v7;
  selfCopy = self;
  dispatch_async(v6, &v8);

  if (objc_opt_respondsToSelector())
  {
    [(_LTSpeechTranslationDelegate *)self->_delegate translatorDidTranslate:v7, v8, v9, v10, v11];
  }

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)translationDidFinishWithError:(id)error
{
  errorCopy = error;
  inited = objc_initWeak(&location, self);
  v6 = _sharedQueue(inited);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56___LTServerSpeechSession_translationDidFinishWithError___block_invoke;
  block[3] = &unk_2789B72B8;
  objc_copyWeak(&v10, &location);
  v9 = errorCopy;
  v7 = errorCopy;
  dispatch_async(v6, block);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

@end