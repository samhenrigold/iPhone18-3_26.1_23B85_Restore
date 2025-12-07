@interface AFDictationConnection
+ (BOOL)dictationIsEnabled;
+ (BOOL)dictationIsSupportedForLanguageCode:(id)code error:(id *)error;
+ (BOOL)languageDetectorIsEnabled;
+ (void)fetchSupportedLanguageCodes:(id)codes;
+ (void)getForcedOfflineDictationSupportedLanguagesWithCompletion:(id)completion;
- (AFDictationConnection)init;
- (AFDictationConnection)initWithInstanceContext:(id)context;
- (AFDictationDelegate)delegate;
- (BOOL)dictationIsAvailableForLanguage:(id)language synchronous:(BOOL)synchronous;
- (BOOL)forcedOfflineDictationIsAvailableForLanguage:(id)language synchronous:(BOOL)synchronous;
- (id)_connection;
- (id)_dequeueAudioWithLength:(unint64_t)length;
- (id)_dictationService;
- (id)_dictationServiceWithErrorHandler:(id)handler;
- (id)startRecordingForPendingDictationWithLanguageCode:(id)code options:(id)options speechOptions:(id)speechOptions;
- (void)_LogUEIRequestCategorization:(int)categorization;
- (void)_addPreheatAnalyticsEvent;
- (void)_cancelBufferFlushTimer;
- (void)_cancelRequestTimeout;
- (void)_cancelTimerClearBuffer;
- (void)_checkAndSetIsCapturingSpeech:(BOOL)speech;
- (void)_clearConnection;
- (void)_connectionClearedForInterruption:(BOOL)interruption;
- (void)_delayedStopSpeechWithOptions:(id)options;
- (void)_delegateDidRecognizePartialSpeechPackage:(id)package nluResult:(id)result languageModel:(id)model delegate:(id)delegate;
- (void)_delegateDidRecognizeSpeechTokens:(id)tokens nluResult:(id)result languageModel:(id)model delegate:(id)delegate;
- (void)_dispatchCallbackGroupBlock:(id)block;
- (void)_extendRequestTimeout;
- (void)_invokeRequestTimeout;
- (void)_logRequestCompetionStatusWithEventType:(int64_t)type error:(id)error;
- (void)_registerInvalidationHandlerForXPCConnection:(id)connection;
- (void)_scheduleRequestTimeout;
- (void)_sendDataIfNeeded;
- (void)_sendPendingAnalyticsEvents;
- (void)_setActivationTimeOnOptionsIfNecessary:(id)necessary;
- (void)_startInputAudioPowerUpdatesWithXPCWrapper:(id)wrapper;
- (void)_stopInputAudioPowerUpdates;
- (void)_tellSpeechDelegateAudioFileFinished:(id)finished error:(id)error;
- (void)_tellSpeechDelegateAvailabilityChanged;
- (void)_tellSpeechDelegateDidBeginLocalRecognitionWithModelInfo:(id)info;
- (void)_tellSpeechDelegateDidPauseRecognition;
- (void)_tellSpeechDelegateDidProcessAudioDuration:(double)duration;
- (void)_tellSpeechDelegateDidRecognizeFinalResultCandidatePackage:(id)package;
- (void)_tellSpeechDelegateDidRecognizePackage:(id)package;
- (void)_tellSpeechDelegateDidRecognizePartialResult:(id)result;
- (void)_tellSpeechDelegateDidRecognizePartialSpeechPackage:(id)package nluResult:(id)result languageModel:(id)model;
- (void)_tellSpeechDelegateDidRecognizeSpeechPhrases:(id)phrases rawPhrases:(id)rawPhrases utterances:(id)utterances rawUtterances:(id)rawUtterances nluResult:(id)result languageModel:(id)model correctionIdentifier:(id)identifier audioAnalytics:(id)self0;
- (void)_tellSpeechDelegateDidRecognizeSpeechTokens:(id)tokens nluResult:(id)result languageModel:(id)model;
- (void)_tellSpeechDelegateDidRecognizeTranscriptionObjects:(id)objects languageModel:(id)model;
- (void)_tellSpeechDelegateDidRecognizeVoiceCommandCandidatePackage:(id)package nluResult:(id)result;
- (void)_tellSpeechDelegateLanguageDetected:(id)detected confidenceScores:(id)scores isConfident:(BOOL)confident;
- (void)_tellSpeechDelegateLanguageDetectorDidFail:(id)fail;
- (void)_tellSpeechDelegateMultilingualSpeechRecognized:(id)recognized;
- (void)_tellSpeechDelegateRecognitionDidFail:(id)fail;
- (void)_tellSpeechDelegateRecordingDidBeginWithOptions:(id)options;
- (void)_tellSpeechDelegateRecordingDidCancel;
- (void)_tellSpeechDelegateRecordingDidEnd;
- (void)_tellSpeechDelegateRecordingDidFail:(id)fail;
- (void)_tellSpeechDelegateRecordingWillBegin;
- (void)_tellSpeechDelegateSearchResultsReceived:(id)received recognitionText:(id)text stable:(BOOL)stable final:(BOOL)final;
- (void)_tellSpeechDelegateSpeechRecognitionDidSucceed;
- (void)_updateBufferFlushTimerWithDelay:(double)delay;
- (void)_willCancelDictation;
- (void)_willCompleteDictation;
- (void)_willFailDictationWithError:(id)error;
- (void)_willStartDictationWithLanguageCode:(id)code options:(id)options speechOptions:(id)speechOptions machAbsoluteTime:(unint64_t)time;
- (void)addRecordedSpeechSampleData:(id)data;
- (void)beginAvailabilityMonitoring;
- (void)cancelAvailabilityMonitoring;
- (void)cancelSpeech;
- (void)dealloc;
- (void)endSession;
- (void)getEuclidPhonetic:(id)phonetic maxResultsCount:(int)count completion:(id)completion;
- (void)networkAvailability:(id)availability isAvailable:(BOOL)available;
- (void)pauseRecognition;
- (void)preheat;
- (void)preheatEuclidModelWithLanguage:(id)language clientID:(id)d;
- (void)preheatTestWithLanguage:(id)language options:(id)options;
- (void)preheatWithRecordDeviceIdentifier:(id)identifier;
- (void)reportIssueForError:(id)error eventType:(int64_t)type context:(id)context;
- (void)reportIssueForError:(id)error eventType:(int64_t)type subtype:(id)subtype context:(id)context;
- (void)requestOfflineAssistantSupportForLanguage:(id)language completion:(id)completion;
- (void)requestOfflineDictationSupportForLanguage:(id)language completion:(id)completion;
- (void)resumeRecognitionWithPrefixText:(id)text postfixText:(id)postfixText selectedText:(id)selectedText;
- (void)sendEngagementFeedback:(int64_t)feedback voiceQueryIdentifier:(id)identifier;
- (void)sendSpeechCorrection:(id)correction forIdentifier:(id)identifier;
- (void)sendSpeechCorrection:(id)correction interactionIdentifier:(id)identifier;
- (void)sendUserSelectedAlternativeDictationLanguageCode:(id)code;
- (void)sendVisualContextAndCorrectionsInfo:(id)info interactionIdentifier:(id)identifier;
- (void)startDictationWithLanguageCode:(id)code options:(id)options speechOptions:(id)speechOptions;
- (void)startDictationWithSpeechFileAtURL:(id)l isNarrowBand:(BOOL)band options:(id)options forLanguage:(id)language;
- (void)startRecordedAudioDictationWithOptions:(id)options forLanguage:(id)language narrowband:(BOOL)narrowband forceSampling:(BOOL)sampling;
- (void)stopSpeechWithOptions:(id)options;
- (void)suppressLowStorageNotificationForLanguage:(id)language suppress:(BOOL)suppress;
- (void)updateSpeechOptions:(id)options;
- (void)updateVoiceCommandContextWithPrefixText:(id)text postfixText:(id)postfixText selectedText:(id)selectedText disambiguationActive:(id)active cursorInVisibleText:(id)visibleText favorCommandSuppression:(id)suppression abortCommandSuppression:(id)commandSuppression;
- (void)updateVoiceCommandContextWithPrefixText:(id)text postfixText:(id)postfixText selectedText:(id)selectedText disambiguationActive:(id)active cursorInVisibleText:(id)visibleText favorCommandSuppression:(id)suppression abortCommandSuppression:(id)commandSuppression undoEvent:(id)self0;
@end

@implementation AFDictationConnection

- (AFDictationConnection)init
{
  v3 = +[AFInstanceContext currentContext];
  v4 = [(AFDictationConnection *)self initWithInstanceContext:v3];

  return v4;
}

- (void)beginAvailabilityMonitoring
{
  v3 = +[AFNetworkAvailability sharedAvailability];
  [v3 addObserver:self];
}

- (void)_tellSpeechDelegateAvailabilityChanged
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __63__AFDictationConnection__tellSpeechDelegateAvailabilityChanged__block_invoke;
  v2[3] = &unk_1E73440C0;
  v2[4] = self;
  [(AFDictationConnection *)self _dispatchCallbackGroupBlock:v2];
}

void __63__AFDictationConnection__tellSpeechDelegateAvailabilityChanged__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 dictationConnnectionDidChangeAvailability:*(a1 + 32)];
  }
}

- (void)cancelAvailabilityMonitoring
{
  v3 = +[AFNetworkAvailability sharedAvailability];
  [v3 removeObserver:self];
}

- (void)dealloc
{
  v9 = *MEMORY[0x1E69E9840];
  [(NSXPCConnection *)self->_connection invalidate];
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v6 = "[AFDictationConnection dealloc]";
    v7 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1912FE000, v3, OS_LOG_TYPE_INFO, "%s %p", buf, 0x16u);
  }

  v4.receiver = self;
  v4.super_class = AFDictationConnection;
  [(AFDictationConnection *)&v4 dealloc];
}

- (AFDictationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)sendVisualContextAndCorrectionsInfo:(id)info interactionIdentifier:(id)identifier
{
  infoCopy = info;
  identifierCopy = identifier;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __83__AFDictationConnection_sendVisualContextAndCorrectionsInfo_interactionIdentifier___block_invoke;
  block[3] = &unk_1E73494B0;
  block[4] = self;
  v12 = infoCopy;
  v13 = identifierCopy;
  v9 = identifierCopy;
  v10 = infoCopy;
  dispatch_async(internalQueue, block);
}

void __83__AFDictationConnection_sendVisualContextAndCorrectionsInfo_interactionIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _dictationService];
  [v2 sendVisualContextAndCorrectionsInfo:*(a1 + 40) interactionIdentifier:*(a1 + 48)];
}

- (void)updateVoiceCommandContextWithPrefixText:(id)text postfixText:(id)postfixText selectedText:(id)selectedText disambiguationActive:(id)active cursorInVisibleText:(id)visibleText favorCommandSuppression:(id)suppression abortCommandSuppression:(id)commandSuppression undoEvent:(id)self0
{
  textCopy = text;
  postfixTextCopy = postfixText;
  selectedTextCopy = selectedText;
  activeCopy = active;
  visibleTextCopy = visibleText;
  suppressionCopy = suppression;
  commandSuppressionCopy = commandSuppression;
  eventCopy = event;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __189__AFDictationConnection_updateVoiceCommandContextWithPrefixText_postfixText_selectedText_disambiguationActive_cursorInVisibleText_favorCommandSuppression_abortCommandSuppression_undoEvent___block_invoke;
  block[3] = &unk_1E73443E0;
  block[4] = self;
  v34 = textCopy;
  v35 = postfixTextCopy;
  v36 = selectedTextCopy;
  v37 = activeCopy;
  v38 = visibleTextCopy;
  v39 = suppressionCopy;
  v40 = commandSuppressionCopy;
  v41 = eventCopy;
  v25 = eventCopy;
  v26 = commandSuppressionCopy;
  v27 = suppressionCopy;
  v28 = visibleTextCopy;
  v29 = activeCopy;
  v30 = selectedTextCopy;
  v31 = postfixTextCopy;
  v32 = textCopy;
  dispatch_async(internalQueue, block);
}

void __189__AFDictationConnection_updateVoiceCommandContextWithPrefixText_postfixText_selectedText_disambiguationActive_cursorInVisibleText_favorCommandSuppression_abortCommandSuppression_undoEvent___block_invoke(void *a1)
{
  v2 = a1[4];
  if (v2[57] == 1)
  {
    v3 = [v2 _dictationService];
    [v3 updateVoiceCommandContextWithPrefixText:a1[5] postfixText:a1[6] selectedText:a1[7] disambiguationActive:a1[8] cursorInVisibleText:a1[9] favorCommandSuppression:a1[10] abortCommandSuppression:a1[11] undoEvent:a1[12]];
  }
}

- (void)updateVoiceCommandContextWithPrefixText:(id)text postfixText:(id)postfixText selectedText:(id)selectedText disambiguationActive:(id)active cursorInVisibleText:(id)visibleText favorCommandSuppression:(id)suppression abortCommandSuppression:(id)commandSuppression
{
  textCopy = text;
  postfixTextCopy = postfixText;
  selectedTextCopy = selectedText;
  activeCopy = active;
  visibleTextCopy = visibleText;
  suppressionCopy = suppression;
  commandSuppressionCopy = commandSuppression;
  internalQueue = self->_internalQueue;
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __179__AFDictationConnection_updateVoiceCommandContextWithPrefixText_postfixText_selectedText_disambiguationActive_cursorInVisibleText_favorCommandSuppression_abortCommandSuppression___block_invoke;
  v30[3] = &unk_1E73443B8;
  v30[4] = self;
  v31 = textCopy;
  v32 = postfixTextCopy;
  v33 = selectedTextCopy;
  v34 = activeCopy;
  v35 = visibleTextCopy;
  v36 = suppressionCopy;
  v37 = commandSuppressionCopy;
  v23 = commandSuppressionCopy;
  v24 = suppressionCopy;
  v25 = visibleTextCopy;
  v26 = activeCopy;
  v27 = selectedTextCopy;
  v28 = postfixTextCopy;
  v29 = textCopy;
  dispatch_async(internalQueue, v30);
}

void __179__AFDictationConnection_updateVoiceCommandContextWithPrefixText_postfixText_selectedText_disambiguationActive_cursorInVisibleText_favorCommandSuppression_abortCommandSuppression___block_invoke(void *a1)
{
  v2 = a1[4];
  if (v2[57] == 1)
  {
    v3 = [v2 _dictationService];
    [v3 updateVoiceCommandContextWithPrefixText:a1[5] postfixText:a1[6] selectedText:a1[7] disambiguationActive:a1[8] cursorInVisibleText:a1[9] favorCommandSuppression:a1[10] abortCommandSuppression:a1[11] undoEvent:0];
  }
}

- (void)getEuclidPhonetic:(id)phonetic maxResultsCount:(int)count completion:(id)completion
{
  phoneticCopy = phonetic;
  completionCopy = completion;
  internalQueue = self->_internalQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __70__AFDictationConnection_getEuclidPhonetic_maxResultsCount_completion___block_invoke;
  v13[3] = &unk_1E7344390;
  v13[4] = self;
  v14 = phoneticCopy;
  countCopy = count;
  v15 = completionCopy;
  v11 = completionCopy;
  v12 = phoneticCopy;
  dispatch_async(internalQueue, v13);
}

void __70__AFDictationConnection_getEuclidPhonetic_maxResultsCount_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _dictationService];
  [v2 findAlternativesForString:*(a1 + 40) maxResults:*(a1 + 56) completion:*(a1 + 48)];
}

- (void)preheatEuclidModelWithLanguage:(id)language clientID:(id)d
{
  languageCopy = language;
  dCopy = d;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__AFDictationConnection_preheatEuclidModelWithLanguage_clientID___block_invoke;
  block[3] = &unk_1E73494B0;
  block[4] = self;
  v12 = languageCopy;
  v13 = dCopy;
  v9 = dCopy;
  v10 = languageCopy;
  dispatch_async(internalQueue, block);
}

void __65__AFDictationConnection_preheatEuclidModelWithLanguage_clientID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _dictationService];
  [v2 preheatEuclidModelWithLanguage:*(a1 + 40) clientID:*(a1 + 48)];
}

- (void)resumeRecognitionWithPrefixText:(id)text postfixText:(id)postfixText selectedText:(id)selectedText
{
  textCopy = text;
  postfixTextCopy = postfixText;
  selectedTextCopy = selectedText;
  internalQueue = self->_internalQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __82__AFDictationConnection_resumeRecognitionWithPrefixText_postfixText_selectedText___block_invoke;
  v15[3] = &unk_1E7349398;
  v15[4] = self;
  v16 = textCopy;
  v17 = postfixTextCopy;
  v18 = selectedTextCopy;
  v12 = selectedTextCopy;
  v13 = postfixTextCopy;
  v14 = textCopy;
  dispatch_async(internalQueue, v15);
}

void __82__AFDictationConnection_resumeRecognitionWithPrefixText_postfixText_selectedText___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (*(v1 + 57) == 1)
  {
    v4 = [*(a1 + 32) _dictationService];
    [v4 resumeRecognitionWithPrefixText:*(a1 + 40) postfixText:*(a1 + 48) selectedText:*(a1 + 56)];
  }

  else
  {
    v3 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v6 = "[AFDictationConnection resumeRecognitionWithPrefixText:postfixText:selectedText:]_block_invoke";
      v7 = 2048;
      v8 = v1;
      _os_log_impl(&dword_1912FE000, v3, OS_LOG_TYPE_INFO, "%s %p ignoring - no active request", buf, 0x16u);
    }
  }
}

- (void)pauseRecognition
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v7 = "[AFDictationConnection pauseRecognition]";
    v8 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1912FE000, v3, OS_LOG_TYPE_INFO, "%s %p", buf, 0x16u);
  }

  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__AFDictationConnection_pauseRecognition__block_invoke;
  block[3] = &unk_1E73497C8;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

void __41__AFDictationConnection_pauseRecognition__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (*(v1 + 57) == 1)
  {
    v3 = [*(a1 + 32) _dictationService];
    [v3 pauseRecognition];
  }

  else
  {
    v2 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v5 = "[AFDictationConnection pauseRecognition]_block_invoke";
      v6 = 2048;
      v7 = v1;
      _os_log_impl(&dword_1912FE000, v2, OS_LOG_TYPE_INFO, "%s %p ignoring - no active request", buf, 0x16u);
    }
  }
}

- (void)reportIssueForError:(id)error eventType:(int64_t)type subtype:(id)subtype context:(id)context
{
  errorCopy = error;
  subtypeCopy = subtype;
  contextCopy = context;
  if (AFIsInternalInstall_onceToken != -1)
  {
    dispatch_once(&AFIsInternalInstall_onceToken, &__block_literal_global_164_46064);
  }

  if (AFIsInternalInstall_isInternal == 1)
  {
    _dictationService = [(AFDictationConnection *)self _dictationService];
    [_dictationService reportIssueForError:errorCopy eventType:type subtype:subtypeCopy context:contextCopy];
  }
}

- (void)reportIssueForError:(id)error eventType:(int64_t)type context:(id)context
{
  errorCopy = error;
  contextCopy = context;
  if (AFIsInternalInstall_onceToken != -1)
  {
    dispatch_once(&AFIsInternalInstall_onceToken, &__block_literal_global_164_46064);
  }

  if (AFIsInternalInstall_isInternal == 1)
  {
    _dictationService = [(AFDictationConnection *)self _dictationService];
    [_dictationService reportIssueForError:errorCopy eventType:type context:contextCopy];
  }
}

- (void)_cancelTimerClearBuffer
{
  dispatch_assert_queue_V2(self->_internalQueue);
  [(AFDictationConnection *)self _cancelBufferFlushTimer];
  data = [MEMORY[0x1E695DF88] data];
  buffer = self->_buffer;
  self->_buffer = data;
}

- (void)_cancelBufferFlushTimer
{
  dispatch_assert_queue_V2(self->_internalQueue);
  bufferTimer = self->_bufferTimer;
  if (bufferTimer)
  {
    dispatch_source_cancel(bufferTimer);
    v4 = self->_bufferTimer;
    self->_bufferTimer = 0;
  }
}

- (void)_updateBufferFlushTimerWithDelay:(double)delay
{
  v17 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_internalQueue);
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v14 = "[AFDictationConnection _updateBufferFlushTimerWithDelay:]";
    v15 = 2048;
    delayCopy = delay;
    _os_log_impl(&dword_1912FE000, v5, OS_LOG_TYPE_INFO, "%s Schedule timer with delay: %.2f", buf, 0x16u);
  }

  bufferTimer = self->_bufferTimer;
  if (!bufferTimer)
  {
    v7 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_internalQueue);
    v8 = self->_bufferTimer;
    self->_bufferTimer = v7;

    objc_initWeak(buf, self);
    v9 = self->_bufferTimer;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __58__AFDictationConnection__updateBufferFlushTimerWithDelay___block_invoke;
    handler[3] = &unk_1E7348A80;
    objc_copyWeak(&v12, buf);
    dispatch_source_set_event_handler(v9, handler);
    dispatch_resume(self->_bufferTimer);
    objc_destroyWeak(&v12);
    objc_destroyWeak(buf);
    bufferTimer = self->_bufferTimer;
  }

  v10 = dispatch_time(0, (delay * 1000000000.0));
  dispatch_source_set_timer(bufferTimer, v10, 0xFFFFFFFFFFFFFFFFLL, 0);
}

void __58__AFDictationConnection__updateBufferFlushTimerWithDelay___block_invoke(uint64_t a1)
{
  objc_copyWeak(&to, (a1 + 32));
  v1 = objc_loadWeakRetained(&to);
  [v1 _cancelBufferFlushTimer];

  v2 = objc_loadWeakRetained(&to);
  [v2 _sendDataIfNeeded];

  objc_destroyWeak(&to);
}

- (id)_dequeueAudioWithLength:(unint64_t)length
{
  dispatch_assert_queue_V2(self->_internalQueue);
  v5 = [(NSMutableData *)self->_buffer subdataWithRange:0, length];
  [(NSMutableData *)self->_buffer replaceBytesInRange:0 withBytes:length length:0, 0];

  return v5;
}

- (void)_sendDataIfNeeded
{
  v27 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_internalQueue);
  if (self->_stopOptions && ![(NSMutableData *)self->_buffer length])
  {
    stopOptions = self->_stopOptions;

    [(AFDictationConnection *)self _delayedStopSpeechWithOptions:stopOptions];
  }

  else if (!self->_bufferTimer && [(NSMutableData *)self->_buffer length])
  {
    if (self->_audioStartTime < 0.0)
    {
      processInfo = [MEMORY[0x1E696AE30] processInfo];
      [processInfo systemUptime];
      self->_audioStartTime = v4;
    }

    processInfo2 = [MEMORY[0x1E696AE30] processInfo];
    [processInfo2 systemUptime];
    v7 = v6 - self->_audioStartTime;

    v8 = v7 + 15.0 - self->_amountDataSent;
    v9 = [(NSMutableData *)self->_buffer length];
    v10 = 32000.0;
    if (self->_narrowband)
    {
      v10 = 16000.0;
    }

    v11 = fmin(v8, v9 / v10);
    v12 = v10 * v11;
    v13 = [(NSMutableData *)self->_buffer length];
    if (v12 < v13)
    {
      v13 = v12;
    }

    v14 = [(AFDictationConnection *)self _dequeueAudioWithLength:v13];
    _dictationService = [(AFDictationConnection *)self _dictationService];
    [_dictationService addRecordedSpeechSampleData:v14];

    v16 = v11 + self->_amountDataSent;
    self->_amountDataSent = v16;
    v17 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v19 = 136315906;
      v20 = "[AFDictationConnection _sendDataIfNeeded]";
      v21 = 2048;
      v22 = v7;
      v23 = 2048;
      v24 = v16;
      v25 = 2048;
      v26 = v11;
      _os_log_impl(&dword_1912FE000, v17, OS_LOG_TYPE_INFO, "%s Sent data from buffer, actualRuntime=%f, amountSent=%f, outgoingDuration=%f", &v19, 0x2Au);
    }

    if ([(NSMutableData *)self->_buffer length])
    {
      [(AFDictationConnection *)self _updateBufferFlushTimerWithDelay:2.0];
    }

    else if (self->_stopOptions)
    {
      [(AFDictationConnection *)self _delayedStopSpeechWithOptions:?];
    }
  }
}

- (void)suppressLowStorageNotificationForLanguage:(id)language suppress:(BOOL)suppress
{
  languageCopy = language;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__AFDictationConnection_suppressLowStorageNotificationForLanguage_suppress___block_invoke;
  block[3] = &unk_1E7344368;
  block[4] = self;
  v10 = languageCopy;
  suppressCopy = suppress;
  v8 = languageCopy;
  dispatch_async(internalQueue, block);
}

void __76__AFDictationConnection_suppressLowStorageNotificationForLanguage_suppress___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _dictationService];
  [v2 suppressLowStorageNotificationForLanguage:*(a1 + 40) suppress:*(a1 + 48)];
}

- (void)requestOfflineDictationSupportForLanguage:(id)language completion:(id)completion
{
  languageCopy = language;
  completionCopy = completion;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__AFDictationConnection_requestOfflineDictationSupportForLanguage_completion___block_invoke;
  block[3] = &unk_1E73496E8;
  block[4] = self;
  v12 = languageCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = languageCopy;
  dispatch_async(internalQueue, block);
}

void __78__AFDictationConnection_requestOfflineDictationSupportForLanguage_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _dictationService];
  [v2 requestOfflineDictationSupportForLanguage:*(a1 + 40) completion:*(a1 + 48)];
}

- (void)requestOfflineAssistantSupportForLanguage:(id)language completion:(id)completion
{
  languageCopy = language;
  completionCopy = completion;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__AFDictationConnection_requestOfflineAssistantSupportForLanguage_completion___block_invoke;
  block[3] = &unk_1E73496E8;
  block[4] = self;
  v12 = languageCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = languageCopy;
  dispatch_async(internalQueue, block);
}

void __78__AFDictationConnection_requestOfflineAssistantSupportForLanguage_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _dictationService];
  [v2 requestOfflineAssistantSupportForLanguage:*(a1 + 40) completion:*(a1 + 48)];
}

- (void)endSession
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v7 = "[AFDictationConnection endSession]";
    v8 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1912FE000, v3, OS_LOG_TYPE_INFO, "%s %p", buf, 0x16u);
  }

  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__AFDictationConnection_endSession__block_invoke;
  block[3] = &unk_1E73497C8;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

uint64_t __35__AFDictationConnection_endSession__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) remoteObjectProxy];
  [v2 endSession];

  v3 = *(a1 + 32);

  return [v3 _clearConnection];
}

- (void)sendUserSelectedAlternativeDictationLanguageCode:(id)code
{
  location[3] = *MEMORY[0x1E69E9840];
  codeCopy = code;
  if (codeCopy)
  {
    objc_initWeak(location, self);
    internalQueue = self->_internalQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __74__AFDictationConnection_sendUserSelectedAlternativeDictationLanguageCode___block_invoke;
    v7[3] = &unk_1E73470E0;
    objc_copyWeak(&v9, location);
    v8 = codeCopy;
    dispatch_async(internalQueue, v7);

    objc_destroyWeak(&v9);
    objc_destroyWeak(location);
  }

  else
  {
    v6 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      LODWORD(location[0]) = 136315138;
      *(location + 4) = "[AFDictationConnection sendUserSelectedAlternativeDictationLanguageCode:]";
      _os_log_error_impl(&dword_1912FE000, v6, OS_LOG_TYPE_ERROR, "%s Language code is nil.", location, 0xCu);
    }
  }
}

void __74__AFDictationConnection_sendUserSelectedAlternativeDictationLanguageCode___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained _dictationService];
  [v2 sendUserSelectedAlternativeDictationLanguageCode:*(a1 + 32)];
}

- (void)sendSpeechCorrection:(id)correction interactionIdentifier:(id)identifier
{
  correctionCopy = correction;
  identifierCopy = identifier;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__AFDictationConnection_sendSpeechCorrection_interactionIdentifier___block_invoke;
  block[3] = &unk_1E73494B0;
  block[4] = self;
  v12 = correctionCopy;
  v13 = identifierCopy;
  v9 = identifierCopy;
  v10 = correctionCopy;
  dispatch_async(internalQueue, block);
}

void __68__AFDictationConnection_sendSpeechCorrection_interactionIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _dictationService];
  [v2 sendSpeechCorrectionInfo:*(a1 + 40) interactionIdentifier:*(a1 + 48)];
}

- (void)sendSpeechCorrection:(id)correction forIdentifier:(id)identifier
{
  correctionCopy = correction;
  identifierCopy = identifier;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__AFDictationConnection_sendSpeechCorrection_forIdentifier___block_invoke;
  block[3] = &unk_1E73494B0;
  block[4] = self;
  v12 = correctionCopy;
  v13 = identifierCopy;
  v9 = identifierCopy;
  v10 = correctionCopy;
  dispatch_async(internalQueue, block);
}

void __60__AFDictationConnection_sendSpeechCorrection_forIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _dictationService];
  [v2 sendSpeechCorrectionInfo:*(a1 + 40) forCorrectionContext:*(a1 + 48)];
}

- (void)updateSpeechOptions:(id)options
{
  v17 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v12 = "[AFDictationConnection updateSpeechOptions:]";
    v13 = 2048;
    selfCopy = self;
    v15 = 2112;
    v16 = optionsCopy;
    _os_log_impl(&dword_1912FE000, v5, OS_LOG_TYPE_INFO, "%s %p %@", buf, 0x20u);
  }

  internalQueue = self->_internalQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __45__AFDictationConnection_updateSpeechOptions___block_invoke;
  v8[3] = &unk_1E7349860;
  v9 = optionsCopy;
  selfCopy2 = self;
  v7 = optionsCopy;
  dispatch_async(internalQueue, v8);
}

void __45__AFDictationConnection_updateSpeechOptions___block_invoke(uint64_t a1)
{
  v4 = AFAnalyticsContextCreateWithSpeechRequestOptions(*(a1 + 32));
  v2 = +[AFAnalytics sharedAnalytics];
  [v2 logEventWithType:2202 context:v4 contextNoCopy:1];

  v3 = [*(a1 + 40) _dictationService];
  [v3 updateSpeechOptions:*(a1 + 32)];
}

- (void)_delayedStopSpeechWithOptions:(id)options
{
  v12 = *MEMORY[0x1E69E9840];
  internalQueue = self->_internalQueue;
  optionsCopy = options;
  dispatch_assert_queue_V2(internalQueue);
  v6 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v10 = 136315138;
    v11 = "[AFDictationConnection _delayedStopSpeechWithOptions:]";
    _os_log_impl(&dword_1912FE000, v6, OS_LOG_TYPE_INFO, "%s Delayed stop after buffer cleared", &v10, 0xCu);
  }

  kdebug_trace();
  v7 = AFAnalyticsContextCreateWithSpeechRequestOptions(optionsCopy);
  v8 = +[AFAnalytics sharedAnalytics];
  [v8 logEventWithType:2203 context:v7 contextNoCopy:1];

  [(AFDictationConnection *)self _checkAndSetIsCapturingSpeech:0];
  _dictationService = [(AFDictationConnection *)self _dictationService];
  [_dictationService stopSpeechWithOptions:optionsCopy];
}

- (void)stopSpeechWithOptions:(id)options
{
  v16 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v11 = "[AFDictationConnection stopSpeechWithOptions:]";
    v12 = 2048;
    selfCopy = self;
    v14 = 2112;
    v15 = optionsCopy;
    _os_log_impl(&dword_1912FE000, v5, OS_LOG_TYPE_INFO, "%s %p %@", buf, 0x20u);
  }

  internalQueue = self->_internalQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __47__AFDictationConnection_stopSpeechWithOptions___block_invoke;
  v8[3] = &unk_1E7349860;
  v8[4] = self;
  v9 = optionsCopy;
  v7 = optionsCopy;
  dispatch_async(internalQueue, v8);
}

void __47__AFDictationConnection_stopSpeechWithOptions___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if ((*(v2 + 96) & 1) == 0)
  {
    if ([*(v2 + 112) length])
    {
      v3 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
      {
        v7 = 136315138;
        v8 = "[AFDictationConnection stopSpeechWithOptions:]_block_invoke";
        _os_log_impl(&dword_1912FE000, v3, OS_LOG_TYPE_INFO, "%s Stop requested, delaying till buffer is empty", &v7, 0xCu);
      }

      if (*(a1 + 40))
      {
        v4 = [*(a1 + 40) copy];
      }

      else
      {
        v4 = objc_alloc_init(AFSpeechRequestOptions);
      }

      v6 = v4;
      objc_storeStrong((*(a1 + 32) + 104), v4);

      return;
    }

    v2 = *(a1 + 32);
  }

  v5 = *(a1 + 40);

  [v2 _delayedStopSpeechWithOptions:v5];
}

- (void)cancelSpeech
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v7 = "[AFDictationConnection cancelSpeech]";
    v8 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1912FE000, v3, OS_LOG_TYPE_INFO, "%s %p", buf, 0x16u);
  }

  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__AFDictationConnection_cancelSpeech__block_invoke;
  block[3] = &unk_1E73497C8;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

void __37__AFDictationConnection_cancelSpeech__block_invoke(uint64_t a1)
{
  v2 = +[AFAnalytics sharedAnalytics];
  [v2 logEventWithType:2204 context:0];

  [*(a1 + 32) _cancelTimerClearBuffer];
  [*(a1 + 32) _checkAndSetIsCapturingSpeech:0];
  [*(a1 + 32) _willCancelDictation];
  v3 = [*(a1 + 32) _dictationService];
  [v3 cancelSpeech];
}

- (void)addRecordedSpeechSampleData:(id)data
{
  dataCopy = data;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__AFDictationConnection_addRecordedSpeechSampleData___block_invoke;
  v7[3] = &unk_1E7349860;
  v7[4] = self;
  v8 = dataCopy;
  v6 = dataCopy;
  dispatch_async(internalQueue, v7);
}

void __53__AFDictationConnection_addRecordedSpeechSampleData___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 96) == 1)
  {
    v4 = [v2 _dictationService];
    [v4 addRecordedSpeechSampleData:*(a1 + 40)];
  }

  else
  {
    [*(v2 + 112) appendData:*(a1 + 40)];
    v3 = *(a1 + 32);

    [v3 _sendDataIfNeeded];
  }
}

- (void)startRecordedAudioDictationWithOptions:(id)options forLanguage:(id)language narrowband:(BOOL)narrowband forceSampling:(BOOL)sampling
{
  narrowbandCopy = narrowband;
  v32 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  languageCopy = language;
  v12 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136316162;
    v23 = "[AFDictationConnection startRecordedAudioDictationWithOptions:forLanguage:narrowband:forceSampling:]";
    v24 = 2048;
    selfCopy = self;
    v26 = 2112;
    v27 = optionsCopy;
    v28 = 2112;
    v29 = languageCopy;
    v30 = 1024;
    v31 = narrowbandCopy;
    _os_log_impl(&dword_1912FE000, v12, OS_LOG_TYPE_INFO, "%s %p %@ %@ %d", buf, 0x30u);
  }

  v13 = [optionsCopy copy];
  internalQueue = self->_internalQueue;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __101__AFDictationConnection_startRecordedAudioDictationWithOptions_forLanguage_narrowband_forceSampling___block_invoke;
  v17[3] = &unk_1E7344340;
  v17[4] = self;
  v18 = languageCopy;
  v19 = v13;
  v20 = narrowbandCopy;
  samplingCopy = sampling;
  v15 = v13;
  v16 = languageCopy;
  dispatch_async(internalQueue, v17);
}

void __101__AFDictationConnection_startRecordedAudioDictationWithOptions_forLanguage_narrowband_forceSampling___block_invoke(uint64_t a1)
{
  v7 = objc_alloc_init(AFSpeechRequestOptions);
  [(AFSpeechRequestOptions *)v7 setActivationEvent:12];
  [*(a1 + 32) _willStartDictationWithLanguageCode:*(a1 + 40) options:*(a1 + 48) speechOptions:v7 machAbsoluteTime:mach_absolute_time()];
  *(*(a1 + 32) + 136) = *(a1 + 56);
  *(*(a1 + 32) + 96) = [*(a1 + 48) forceOfflineRecognition];
  *(*(a1 + 32) + 59) = [*(a1 + 48) incremental];
  *(*(a1 + 32) + 60) = [*(a1 + 48) shouldClassifyIntent];
  *(*(a1 + 32) + 61) = [*(a1 + 48) shouldRecognizeCommands];
  v2 = [*(a1 + 32) _dictationService];
  [v2 startRequestActivityWithCompletion:&__block_literal_global_322];

  v3 = [*(a1 + 48) offlineLanguage];

  if (!v3)
  {
    v4 = *(a1 + 48);
    v5 = AFOfflineDictationLanguageForKeyboardLanguage(*(a1 + 40), *(*(a1 + 32) + 24));
    [v4 setOfflineLanguage:v5];
  }

  v6 = [*(a1 + 32) _dictationService];
  [v6 startRecordedAudioDictationWithOptions:*(a1 + 48) language:*(a1 + 40) narrowband:*(a1 + 56) forceSampling:*(a1 + 57)];
}

void __101__AFDictationConnection_startRecordedAudioDictationWithOptions_forLanguage_narrowband_forceSampling___block_invoke_2()
{
  v3 = *MEMORY[0x1E69E9840];
  v0 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v1 = 136315138;
    v2 = "[AFDictationConnection startRecordedAudioDictationWithOptions:forLanguage:narrowband:forceSampling:]_block_invoke_2";
    _os_log_impl(&dword_1912FE000, v0, OS_LOG_TYPE_INFO, "%s Recorded audio dictation request completed", &v1, 0xCu);
  }
}

- (void)startDictationWithLanguageCode:(id)code options:(id)options speechOptions:(id)speechOptions
{
  v31 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  speechOptionsCopy = speechOptions;
  v10 = [code stringByReplacingOccurrencesOfString:@"_" withString:@"-"];
  v11 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136316162;
    v22 = "[AFDictationConnection startDictationWithLanguageCode:options:speechOptions:]";
    v23 = 2048;
    selfCopy = self;
    v25 = 2112;
    v26 = v10;
    v27 = 2112;
    v28 = optionsCopy;
    v29 = 2112;
    v30 = speechOptionsCopy;
    _os_log_impl(&dword_1912FE000, v11, OS_LOG_TYPE_INFO, "%s %p %@ %@ %@", buf, 0x34u);
  }

  v12 = [optionsCopy copy];
  internalQueue = self->_internalQueue;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __78__AFDictationConnection_startDictationWithLanguageCode_options_speechOptions___block_invoke;
  v17[3] = &unk_1E7349398;
  v17[4] = self;
  v18 = speechOptionsCopy;
  v19 = v10;
  v20 = v12;
  v14 = v12;
  v15 = v10;
  v16 = speechOptionsCopy;
  dispatch_async(internalQueue, v17);
}

void __78__AFDictationConnection_startDictationWithLanguageCode_options_speechOptions___block_invoke(uint64_t a1)
{
  v2 = mach_absolute_time();
  [*(a1 + 32) _checkAndSetIsCapturingSpeech:1];
  [*(a1 + 32) _setActivationTimeOnOptionsIfNecessary:*(a1 + 40)];
  [*(a1 + 32) _willStartDictationWithLanguageCode:*(a1 + 48) options:*(a1 + 56) speechOptions:*(a1 + 40) machAbsoluteTime:v2];
  v3 = [*(a1 + 48) copy];
  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  *(v4 + 16) = v3;

  *(*(a1 + 32) + 96) = [*(a1 + 56) forceOfflineRecognition];
  *(*(a1 + 32) + 59) = [*(a1 + 56) incremental];
  *(*(a1 + 32) + 60) = [*(a1 + 56) shouldClassifyIntent];
  *(*(a1 + 32) + 61) = [*(a1 + 56) shouldRecognizeCommands];
  v6 = [*(a1 + 32) _dictationService];
  [v6 startRequestActivityWithCompletion:&__block_literal_global_319];

  v7 = [*(a1 + 56) offlineLanguage];

  if (!v7)
  {
    v8 = *(a1 + 56);
    v9 = AFOfflineDictationLanguageForKeyboardLanguage(*(a1 + 48), *(*(a1 + 32) + 24));
    [v8 setOfflineLanguage:v9];
  }

  v10 = [*(a1 + 32) _dictationService];
  [v10 startDictationWithLanguageCode:*(a1 + 48) options:*(a1 + 56) speechOptions:*(a1 + 40)];
}

void __78__AFDictationConnection_startDictationWithLanguageCode_options_speechOptions___block_invoke_2()
{
  v3 = *MEMORY[0x1E69E9840];
  v0 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v1 = 136315138;
    v2 = "[AFDictationConnection startDictationWithLanguageCode:options:speechOptions:]_block_invoke_2";
    _os_log_impl(&dword_1912FE000, v0, OS_LOG_TYPE_INFO, "%s Dictation request completed", &v1, 0xCu);
  }
}

- (id)startRecordingForPendingDictationWithLanguageCode:(id)code options:(id)options speechOptions:(id)speechOptions
{
  v37 = *MEMORY[0x1E69E9840];
  codeCopy = code;
  optionsCopy = options;
  speechOptionsCopy = speechOptions;
  v11 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136316162;
    *&buf[4] = "[AFDictationConnection startRecordingForPendingDictationWithLanguageCode:options:speechOptions:]";
    *&buf[12] = 2048;
    *&buf[14] = self;
    *&buf[22] = 2112;
    v35 = codeCopy;
    *v36 = 2112;
    *&v36[2] = optionsCopy;
    *&v36[10] = 2112;
    *&v36[12] = speechOptionsCopy;
    _os_log_impl(&dword_1912FE000, v11, OS_LOG_TYPE_INFO, "%s %p %@ %@ %@", buf, 0x34u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v35 = __Block_byref_object_copy__13433;
  *v36 = __Block_byref_object_dispose__13434;
  *&v36[8] = 0;
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x3032000000;
  v32[3] = __Block_byref_object_copy__296;
  v32[4] = __Block_byref_object_dispose__297;
  v33 = 0;
  v12 = dispatch_group_create();
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __97__AFDictationConnection_startRecordingForPendingDictationWithLanguageCode_options_speechOptions___block_invoke;
  block[3] = &unk_1E73442C8;
  block[4] = self;
  v26 = speechOptionsCopy;
  v27 = codeCopy;
  v28 = optionsCopy;
  v14 = v12;
  v29 = v14;
  v30 = v32;
  v31 = buf;
  v15 = optionsCopy;
  v16 = codeCopy;
  v17 = speechOptionsCopy;
  dispatch_sync(internalQueue, block);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __97__AFDictationConnection_startRecordingForPendingDictationWithLanguageCode_options_speechOptions___block_invoke_3;
  v21[3] = &unk_1E7344318;
  v22 = v14;
  v23 = v32;
  v24 = buf;
  v18 = v14;
  v19 = MEMORY[0x193AFB7B0](v21);

  _Block_object_dispose(v32, 8);
  _Block_object_dispose(buf, 8);

  return v19;
}

void __97__AFDictationConnection_startRecordingForPendingDictationWithLanguageCode_options_speechOptions___block_invoke(uint64_t a1)
{
  v2 = mach_absolute_time();
  v3 = [*(a1 + 32) _dictationService];
  [v3 startRequestActivityWithCompletion:&__block_literal_global_299];

  [*(a1 + 32) _checkAndSetIsCapturingSpeech:1];
  [*(a1 + 32) _setActivationTimeOnOptionsIfNecessary:*(a1 + 40)];
  [*(a1 + 32) _willStartDictationWithLanguageCode:*(a1 + 48) options:*(a1 + 56) speechOptions:*(a1 + 40) machAbsoluteTime:v2];
  dispatch_group_enter(*(a1 + 64));
  kdebug_trace();
  v4 = *(a1 + 32);
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __97__AFDictationConnection_startRecordingForPendingDictationWithLanguageCode_options_speechOptions___block_invoke_300;
  v25[3] = &unk_1E73493C0;
  v26 = *(a1 + 64);
  v5 = [v4 _dictationServiceWithErrorHandler:v25];
  v7 = *(a1 + 48);
  v6 = *(a1 + 56);
  v8 = *(a1 + 40);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __97__AFDictationConnection_startRecordingForPendingDictationWithLanguageCode_options_speechOptions___block_invoke_301;
  v21[3] = &unk_1E73442A0;
  v24 = *(a1 + 72);
  v22 = v8;
  v23 = *(a1 + 64);
  [v5 startRecordingForPendingDictationWithLanguageCode:v7 options:v6 speechOptions:v22 reply:v21];

  if ([*(a1 + 40) pendCallbacksUntilAfterContinuation])
  {
    v9 = dispatch_group_create();
    dispatch_group_enter(v9);
    v10 = [AFSafetyBlock alloc];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __97__AFDictationConnection_startRecordingForPendingDictationWithLanguageCode_options_speechOptions___block_invoke_2_310;
    v19[3] = &unk_1E7345450;
    v11 = v9;
    v20 = v11;
    v12 = [(AFSafetyBlock *)v10 initWithBlock:v19];
    v13 = *(*(a1 + 80) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;

    v15 = *(a1 + 32);
    v16 = *(v15 + 64);
    *(v15 + 64) = v11;
    v17 = v11;
  }

  else
  {
    v18 = *(a1 + 32);
    v17 = *(v18 + 64);
    *(v18 + 64) = 0;
  }
}

uint64_t __97__AFDictationConnection_startRecordingForPendingDictationWithLanguageCode_options_speechOptions___block_invoke_3(void *a1)
{
  v2 = [MEMORY[0x1E696AE30] processInfo];
  [v2 systemUptime];
  v4 = v3;

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __97__AFDictationConnection_startRecordingForPendingDictationWithLanguageCode_options_speechOptions___block_invoke_4;
  v7[3] = &unk_1E73442F0;
  v5 = a1[4];
  v7[4] = a1[5];
  v7[5] = v4;
  dispatch_group_notify(v5, MEMORY[0x1E69E96A0], v7);
  return [*(*(a1[6] + 8) + 40) invoke];
}

uint64_t __97__AFDictationConnection_startRecordingForPendingDictationWithLanguageCode_options_speechOptions___block_invoke_4(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 8) + 40);
  if (result)
  {
    return (*(result + 16))(*(a1 + 40));
  }

  return result;
}

void __97__AFDictationConnection_startRecordingForPendingDictationWithLanguageCode_options_speechOptions___block_invoke_300(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[AFDictationConnection startRecordingForPendingDictationWithLanguageCode:options:speechOptions:]_block_invoke";
    v7 = 2114;
    v8 = v3;
    _os_log_error_impl(&dword_1912FE000, v4, OS_LOG_TYPE_ERROR, "%s %{public}@", &v5, 0x16u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __97__AFDictationConnection_startRecordingForPendingDictationWithLanguageCode_options_speechOptions___block_invoke_301(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v17 = "[AFDictationConnection startRecordingForPendingDictationWithLanguageCode:options:speechOptions:]_block_invoke";
    _os_log_impl(&dword_1912FE000, v4, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v5 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithListenerEndpoint:v3];
  v6 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F05BF200];
  [v5 setRemoteObjectInterface:v6];

  v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v8 = dispatch_queue_create(0, v7);

  [v5 _setQueue:v8];
  [v5 resume];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __97__AFDictationConnection_startRecordingForPendingDictationWithLanguageCode_options_speechOptions___block_invoke_302;
  v13[3] = &unk_1E7344278;
  v14 = *(a1 + 32);
  v15 = v5;
  v9 = v5;
  v10 = MEMORY[0x193AFB7B0](v13);
  v11 = *(*(a1 + 48) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  dispatch_group_leave(*(a1 + 40));
}

void __97__AFDictationConnection_startRecordingForPendingDictationWithLanguageCode_options_speechOptions___block_invoke_302(uint64_t a1, double a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    *buf = 136315394;
    v11 = "[AFDictationConnection startRecordingForPendingDictationWithLanguageCode:options:speechOptions:]_block_invoke";
    v12 = 2048;
    v13 = v5;
    _os_log_impl(&dword_1912FE000, v4, OS_LOG_TYPE_INFO, "%s Continuing pending speech request %p", buf, 0x16u);
  }

  v6 = [*(a1 + 40) remoteObjectProxyWithErrorHandler:&__block_literal_global_305];
  [v6 continuePendingSpeechRequestFromTimestamp:a2];

  v7 = *(a1 + 40);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __97__AFDictationConnection_startRecordingForPendingDictationWithLanguageCode_options_speechOptions___block_invoke_306;
  v8[3] = &unk_1E73497C8;
  v9 = v7;
  [v9 addBarrierBlock:v8];
}

void __97__AFDictationConnection_startRecordingForPendingDictationWithLanguageCode_options_speechOptions___block_invoke_303(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "[AFDictationConnection startRecordingForPendingDictationWithLanguageCode:options:speechOptions:]_block_invoke";
    v6 = 2114;
    v7 = v2;
    _os_log_error_impl(&dword_1912FE000, v3, OS_LOG_TYPE_ERROR, "%s %{public}@", &v4, 0x16u);
  }
}

void __97__AFDictationConnection_startRecordingForPendingDictationWithLanguageCode_options_speechOptions___block_invoke_2()
{
  v3 = *MEMORY[0x1E69E9840];
  v0 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v1 = 136315138;
    v2 = "[AFDictationConnection startRecordingForPendingDictationWithLanguageCode:options:speechOptions:]_block_invoke_2";
    _os_log_impl(&dword_1912FE000, v0, OS_LOG_TYPE_INFO, "%s Pending dictation request completed", &v1, 0xCu);
  }
}

- (void)_setActivationTimeOnOptionsIfNecessary:(id)necessary
{
  v12 = *MEMORY[0x1E69E9840];
  necessaryCopy = necessary;
  [necessaryCopy expectedActivationEventTime];
  if (v4 <= 0.0)
  {
    v5 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v10 = 136315138;
      v11 = "[AFDictationConnection _setActivationTimeOnOptionsIfNecessary:]";
      _os_log_impl(&dword_1912FE000, v5, OS_LOG_TYPE_INFO, "%s Inserting activation timestamps since client did not set them", &v10, 0xCu);
    }

    [necessaryCopy activationEventTime];
    if (v6 <= 0.0)
    {
      processInfo = [MEMORY[0x1E696AE30] processInfo];
      [processInfo systemUptime];
      v9 = v8;

      [necessaryCopy setActivationEventTime:v9];
    }

    [necessaryCopy activationEventTime];
    [necessaryCopy setExpectedActivationEventTime:?];
  }
}

- (void)preheatWithRecordDeviceIdentifier:(id)identifier
{
  v16 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v11 = "[AFDictationConnection preheatWithRecordDeviceIdentifier:]";
    v12 = 2048;
    selfCopy = self;
    v14 = 2112;
    v15 = identifierCopy;
    _os_log_impl(&dword_1912FE000, v5, OS_LOG_TYPE_INFO, "%s %p %@", buf, 0x20u);
  }

  internalQueue = self->_internalQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __59__AFDictationConnection_preheatWithRecordDeviceIdentifier___block_invoke;
  v8[3] = &unk_1E7349860;
  v8[4] = self;
  v9 = identifierCopy;
  v7 = identifierCopy;
  dispatch_async(internalQueue, v8);
}

void __59__AFDictationConnection_preheatWithRecordDeviceIdentifier___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _addPreheatAnalyticsEvent];
  v2 = [*(a1 + 32) _dictationService];
  [v2 preheatWithRecordDeviceIdentifier:*(a1 + 40)];
}

- (void)preheat
{
  v4 = +[AFPreferences sharedPreferences];
  languageCode = [v4 languageCode];
  [(AFDictationConnection *)self preheatForLanguageCode:languageCode];
}

- (void)_sendPendingAnalyticsEvents
{
  v8 = *MEMORY[0x1E69E9840];
  if (self->_preheatEvent)
  {
    v3 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
    {
      v6 = 136315138;
      v7 = "[AFDictationConnection _sendPendingAnalyticsEvents]";
      _os_log_impl(&dword_1912FE000, v3, OS_LOG_TYPE_INFO, "%s Sending 1 event", &v6, 0xCu);
    }

    v4 = +[AFAnalytics sharedAnalytics];
    [v4 logEvent:self->_preheatEvent];

    preheatEvent = self->_preheatEvent;
    self->_preheatEvent = 0;
  }
}

- (void)_addPreheatAnalyticsEvent
{
  v3 = AFAnalyticsEventCreateCurrent(2225, 0);
  preheatEvent = self->_preheatEvent;
  self->_preheatEvent = v3;
}

- (void)_willCompleteDictation
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v14 = "[AFDictationConnection _willCompleteDictation]";
    v15 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1912FE000, v3, OS_LOG_TYPE_INFO, "%s %p", buf, 0x16u);
  }

  dispatch_assert_queue_V2(self->_internalQueue);
  if (self->_hasActiveRequest)
  {
    self->_hasActiveRequest = 0;
    if (self->_intstrumentationContext)
    {
      v4 = objc_alloc_init(MEMORY[0x1E69CF630]);
      [(AFAnalyticsTurnBasedInstrumentationContext *)self->_intstrumentationContext emitInstrumentation:v4];
      [(AFDictationConnection *)self _LogUEIRequestCategorization:3];
    }

    if (AFIsInternalInstall_onceToken != -1)
    {
      dispatch_once(&AFIsInternalInstall_onceToken, &__block_literal_global_164_46064);
    }

    if (AFIsInternalInstall_isInternal == 1)
    {
      v5 = AFSiriLogContextSpeech;
      v6 = os_signpost_id_generate(AFSiriLogContextSpeech);
      if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v7 = v6;
        if (os_signpost_enabled(v5))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1912FE000, v5, OS_SIGNPOST_EVENT, v7, "UsefulUserFacingResults", &unk_19151673F, buf, 2u);
        }
      }
    }

    requestIdString = self->_requestIdString;
    if (requestIdString)
    {
      v11 = @"id";
      v12 = requestIdString;
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    }

    else
    {
      v9 = 0;
    }

    v10 = +[AFAnalytics sharedAnalytics];
    [v10 logEventWithType:2207 context:v9];

    [(AFDictationConnection *)self _logRequestCompetionStatusWithEventType:2207 error:0];
    +[AFAggregator logDictationSucceeded];
  }
}

- (void)_willFailDictationWithError:(id)error
{
  v29 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v26 = "[AFDictationConnection _willFailDictationWithError:]";
    v27 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1912FE000, v5, OS_LOG_TYPE_INFO, "%s %p", buf, 0x16u);
  }

  dispatch_assert_queue_V2(self->_internalQueue);
  if (self->_hasActiveRequest)
  {
    self->_hasActiveRequest = 0;
    if (self->_intstrumentationContext)
    {
      v6 = objc_alloc_init(MEMORY[0x1E69CF5C8]);
      v7 = AFPNRFatalErrorInfoFromNSError(errorCopy);
      [v6 setError:v7];

      userInfo = [errorCopy userInfo];
      v9 = *MEMORY[0x1E696AA08];
      v10 = [userInfo objectForKey:*MEMORY[0x1E696AA08]];

      v11 = AFPNRFatalErrorInfoFromNSError(v10);
      [v6 setUnderlyingError:v11];

      userInfo2 = [v10 userInfo];
      v13 = [userInfo2 objectForKey:v9];

      v14 = AFPNRFatalErrorInfoFromNSError(v13);
      [v6 setUnderUnderlyingError:v14];

      [(AFAnalyticsTurnBasedInstrumentationContext *)self->_intstrumentationContext emitInstrumentation:v6];
      [(AFDictationConnection *)self _LogUEIRequestCategorization:2];
    }

    requestIdString = self->_requestIdString;
    if (requestIdString)
    {
      v22 = @"id";
      v23 = requestIdString;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    }

    else
    {
      v16 = MEMORY[0x1E695E0F8];
    }

    v24[0] = v16;
    v17 = AFAnalyticsContextCreateWithError(errorCopy);
    v24[1] = v17;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
    v19 = AFAnalyticsContextsMerge(v18);

    if (requestIdString)
    {
    }

    v20 = +[AFAnalytics sharedAnalytics];
    [v20 logEventWithType:2206 context:v19];

    [(AFDictationConnection *)self _logRequestCompetionStatusWithEventType:2206 error:errorCopy];
    [AFAggregator logDictationFailedWithError:errorCopy];
    _dictationService = [(AFDictationConnection *)self _dictationService];
    [_dictationService recordFailureMetricsForError:errorCopy];

    [(AFDictationConnection *)self reportIssueForError:errorCopy eventType:2206 subtype:@"Dictation" context:v19];
  }
}

- (void)_willCancelDictation
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v10 = "[AFDictationConnection _willCancelDictation]";
    v11 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1912FE000, v3, OS_LOG_TYPE_INFO, "%s %p", buf, 0x16u);
  }

  dispatch_assert_queue_V2(self->_internalQueue);
  if (self->_hasActiveRequest)
  {
    self->_hasActiveRequest = 0;
    if (self->_intstrumentationContext)
    {
      [(AFDictationConnection *)self _LogUEIRequestCategorization:1];
    }

    requestIdString = self->_requestIdString;
    if (requestIdString)
    {
      v7 = @"id";
      v8 = requestIdString;
      v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v8 forKeys:&v7 count:1];
    }

    else
    {
      v5 = 0;
    }

    v6 = +[AFAnalytics sharedAnalytics];
    [v6 logEventWithType:2205 context:v5];

    [(AFDictationConnection *)self _logRequestCompetionStatusWithEventType:2205 error:0];
    +[AFAggregator logDictationCancelled];
  }
}

- (void)_LogUEIRequestCategorization:(int)categorization
{
  v3 = *&categorization;
  v5 = objc_alloc_init(MEMORY[0x1E69CF628]);
  [v5 setRequestStatus:v3];
  [v5 setRequestType:6];
  [(AFAnalyticsTurnBasedInstrumentationContext *)self->_intstrumentationContext emitInstrumentation:v5];
}

- (void)_logRequestCompetionStatusWithEventType:(int64_t)type error:(id)error
{
  v17[2] = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v7 = errorCopy;
  if (self->_onDeviceDictationUIInteractionIdentifier)
  {
    switch(type)
    {
      case 2205:
        v8 = @"canceled";
        break;
      case 2206:
        if (errorCopy)
        {
          domain = [errorCopy domain];
          isEqualToString = objc_msgSend_isEqualToString_(domain);

          v8 = @"failure";
          if (isEqualToString)
          {
            code = [v7 code];
            v12 = @"interrupted";
            if (code != 1107)
            {
              v12 = @"failure";
            }

            if (code == 1110)
            {
              v8 = @"noMatch";
            }

            else
            {
              v8 = v12;
            }
          }
        }

        else
        {
          v8 = @"failure";
        }

        break;
      case 2207:
        v8 = @"success";
        break;
      default:
        v8 = @"unknown";
        break;
    }

    v13 = +[AFAnalytics sharedAnalytics];
    v16[0] = @"requestStatus";
    v16[1] = @"dictationUIInteractionIdentifier";
    onDeviceDictationUIInteractionIdentifier = self->_onDeviceDictationUIInteractionIdentifier;
    v17[0] = v8;
    v17[1] = onDeviceDictationUIInteractionIdentifier;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];
    [v13 logEventWithType:2222 context:v15];
  }
}

- (void)_willStartDictationWithLanguageCode:(id)code options:(id)options speechOptions:(id)speechOptions machAbsoluteTime:(unint64_t)time
{
  v90 = *MEMORY[0x1E69E9840];
  codeCopy = code;
  optionsCopy = options;
  speechOptionsCopy = speechOptions;
  v13 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136316418;
    v79 = "[AFDictationConnection _willStartDictationWithLanguageCode:options:speechOptions:machAbsoluteTime:]";
    v80 = 2048;
    selfCopy = self;
    v82 = 2112;
    v83 = codeCopy;
    v84 = 2112;
    v85 = optionsCopy;
    v86 = 2112;
    v87 = speechOptionsCopy;
    v88 = 2048;
    timeCopy = time;
    _os_log_impl(&dword_1912FE000, v13, OS_LOG_TYPE_INFO, "%s %p %@ %@ %@ %llu", buf, 0x3Eu);
  }

  timeCopy2 = time;
  dispatch_assert_queue_V2(self->_internalQueue);
  self->_isDetectingUtterances = 0;
  turnIdentifier = [speechOptionsCopy turnIdentifier];
  if (turnIdentifier)
  {
    v15 = [AFAnalyticsTurnBasedInstrumentationContext alloc];
    turnIdentifier2 = [speechOptionsCopy turnIdentifier];
    v17 = [(AFAnalyticsTurnBasedInstrumentationContext *)v15 initWithTurnIdentifier:turnIdentifier2];
    p_intstrumentationContext = &self->_intstrumentationContext;
    intstrumentationContext = self->_intstrumentationContext;
    self->_intstrumentationContext = v17;
  }

  else
  {
    p_intstrumentationContext = &self->_intstrumentationContext;
    turnIdentifier2 = self->_intstrumentationContext;
    self->_intstrumentationContext = 0;
  }

  self->_hasActiveRequest = 1;
  v20 = objc_alloc_init(MEMORY[0x1E696AFB0]);
  uUIDString = [v20 UUIDString];
  requestIdString = self->_requestIdString;
  self->_requestIdString = uUIDString;

  self->_isWaitingForAudioFile = [speechOptionsCopy audioFileType] != 0;
  interactionIdentifier = [optionsCopy interactionIdentifier];
  if (!interactionIdentifier || (v24 = interactionIdentifier, [optionsCopy fieldLabel], v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v25, "hasPrefix:", @"SFSpeech"), v25, v24, v26))
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString2 = [uUID UUIDString];
    [optionsCopy setInteractionIdentifier:uUIDString2];
  }

  onDeviceDictationUIInteractionIdentifier = self->_onDeviceDictationUIInteractionIdentifier;
  self->_onDeviceDictationUIInteractionIdentifier = 0;

  v71 = speechOptionsCopy;
  if (AFIsDictationRequestEligibleForOnDeviceDictation(optionsCopy))
  {
    v30 = [AFPreferences sharedPreferencesWithInstanceContext:self->_instanceContext];
    offlineDictationStatus = [v30 offlineDictationStatus];

    if (offlineDictationStatus)
    {
      v32 = AFOfflineDictationStatusForLanguage(codeCopy, offlineDictationStatus);
      v33 = [v32 objectForKeyedSubscript:@"Installed"];
      bOOLValue = [v33 BOOLValue];

      if (bOOLValue)
      {
        v35 = [v32 objectForKeyedSubscript:@"High Quality"];
        bOOLValue2 = [v35 BOOLValue];

        v37 = bOOLValue2 ^ 1;
      }

      else
      {
        v37 = 1;
      }

      v38 = [v32 objectForKeyedSubscript:@"On Device Search"];
      bOOLValue3 = [v38 BOOLValue];

      if ([optionsCopy returnKeyType] == 7)
      {
        v40 = ([optionsCopy preferOnDeviceRecognition] | bOOLValue3) ^ 1;
      }

      else
      {
        v40 = 0;
      }

      if (((v37 | v40) & 1) == 0)
      {
        interactionIdentifier2 = [optionsCopy interactionIdentifier];
        v42 = self->_onDeviceDictationUIInteractionIdentifier;
        self->_onDeviceDictationUIInteractionIdentifier = interactionIdentifier2;
      }
    }
  }

  v43 = self->_onDeviceDictationUIInteractionIdentifier;
  if (self->_intstrumentationContext)
  {
    v44 = objc_alloc_init(MEMORY[0x1E69CF5D8]);
    v45 = v44;
    if (v43)
    {
      v46 = 1;
    }

    else
    {
      v46 = 2;
    }

    [v44 setSpeechRecognitionSource:v46];
    [(AFAnalyticsTurnBasedInstrumentationContext *)self->_intstrumentationContext emitInstrumentation:v45];
    v47 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:self->_requestIdString];
    if (v47)
    {
      v48 = [objc_alloc(MEMORY[0x1E69CF640]) initWithNSUUID:v47];
      v49 = objc_alloc_init(MEMORY[0x1E69CF608]);
      [v49 setMteRequestId:v48];
      [(AFAnalyticsTurnBasedInstrumentationContext *)*p_intstrumentationContext emitInstrumentation:v49];
    }
  }

  +[AFAggregator logDictationStarted];
  v68 = codeCopy;
  if (codeCopy)
  {
    v75 = @"languageCode";
    v76 = codeCopy;
    v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v76 forKeys:&v75 count:1];
  }

  else
  {
    v50 = MEMORY[0x1E695E0F8];
  }

  v66 = v50;
  v77[0] = v50;
  v67 = AFAnalyticsContextCreateWithSpeechRequestOptions(v71);
  v77[1] = v67;
  v70 = optionsCopy;
  v51 = AFAnalyticsContextCreateWithDictationOptions(optionsCopy);
  v77[2] = v51;
  v52 = AFAnalyticsContextCreateForCurrentProcess();
  v77[3] = v52;
  v73[0] = @"unixTime";
  v53 = MEMORY[0x1E696AD98];
  date = [MEMORY[0x1E695DF00] date];
  [date timeIntervalSince1970];
  v55 = [v53 numberWithDouble:?];
  v56 = self->_requestIdString;
  v74[0] = v55;
  v74[1] = v56;
  v73[1] = @"id";
  v73[2] = @"systemVersion";
  v57 = AFProductAndBuildVersion();
  v74[2] = v57;
  v73[3] = @"isOnDeviceDictationExpected";
  v58 = [MEMORY[0x1E696AD98] numberWithBool:v43 != 0];
  v74[3] = v58;
  v59 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v74 forKeys:v73 count:4];
  v77[4] = v59;
  v60 = [MEMORY[0x1E695DEC8] arrayWithObjects:v77 count:5];
  v61 = AFAnalyticsContextsMerge(v60);

  if (v68)
  {
  }

  if (AFIsInternalInstall_onceToken != -1)
  {
    dispatch_once(&AFIsInternalInstall_onceToken, &__block_literal_global_164_46064);
  }

  if (AFIsInternalInstall_isInternal == 1)
  {
    v72[0] = v61;
    v62 = AFAnalyticsTurnContextCreateWithSpeechRequestOptions(v71);
    v72[1] = v62;
    v63 = [MEMORY[0x1E695DEC8] arrayWithObjects:v72 count:2];
    v64 = AFAnalyticsContextsMerge(v63);

    v61 = v64;
  }

  [(AFDictationConnection *)self _sendPendingAnalyticsEvents];
  v65 = +[AFAnalytics sharedAnalytics];
  [v65 logEventWithType:2201 machAbsoluteTime:timeCopy2 context:v61];
}

- (void)networkAvailability:(id)availability isAvailable:(BOOL)available
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__AFDictationConnection_networkAvailability_isAvailable___block_invoke;
  block[3] = &unk_1E73497C8;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

- (BOOL)forcedOfflineDictationIsAvailableForLanguage:(id)language synchronous:(BOOL)synchronous
{
  languageCopy = language;
  knownOfflineInstalledLanguages = self->_knownOfflineInstalledLanguages;
  if (!knownOfflineInstalledLanguages)
  {
    v7 = [AFPreferences sharedPreferencesWithInstanceContext:self->_instanceContext];
    offlineDictationStatus = [v7 offlineDictationStatus];
    v9 = [offlineDictationStatus keysOfEntriesPassingTest:&__block_literal_global_241];
    v10 = self->_knownOfflineInstalledLanguages;
    self->_knownOfflineInstalledLanguages = v9;

    internalQueue = self->_internalQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __82__AFDictationConnection_forcedOfflineDictationIsAvailableForLanguage_synchronous___block_invoke_2;
    block[3] = &unk_1E73497C8;
    block[4] = self;
    dispatch_async(internalQueue, block);
    knownOfflineInstalledLanguages = self->_knownOfflineInstalledLanguages;
  }

  v12 = AFOfflineDictationLanguageForKeyboardLanguage(languageCopy, knownOfflineInstalledLanguages);
  v13 = v12 != 0;

  return v13;
}

uint64_t __82__AFDictationConnection_forcedOfflineDictationIsAvailableForLanguage_synchronous___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 objectForKey:@"Installed"];
    v5 = [v4 BOOLValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)dictationIsAvailableForLanguage:(id)language synchronous:(BOOL)synchronous
{
  synchronousCopy = synchronous;
  v43 = *MEMORY[0x1E69E9840];
  languageCopy = language;
  if (languageCopy)
  {
    languagesLoggingInfo = self->_languagesLoggingInfo;
    if (!languagesLoggingInfo)
    {
      v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v9 = self->_languagesLoggingInfo;
      self->_languagesLoggingInfo = v8;

      languagesLoggingInfo = self->_languagesLoggingInfo;
    }

    v10 = [(NSMutableDictionary *)languagesLoggingInfo objectForKeyedSubscript:languageCopy];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    v14 = v12;

    v15 = [v14 objectForKeyedSubscript:@"CheckLanguageAvailable"];
    bOOLValue = [v15 BOOLValue];

    v17 = [v14 objectForKeyedSubscript:@"LanguageAvailableOverNetwork"];
    bOOLValue2 = [v17 BOOLValue];

    v19 = [v14 objectForKeyedSubscript:@"HQAssetsAvailable"];
    bOOLValue3 = [v19 BOOLValue];

    v21 = [v14 objectForKeyedSubscript:@"LQAssetsAvailable"];
    bOOLValue4 = [v21 BOOLValue];

    if ((bOOLValue & 1) == 0)
    {
      v23 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
      {
        *v40 = 136315650;
        *&v40[4] = "[AFDictationConnection dictationIsAvailableForLanguage:synchronous:]";
        *&v40[12] = 2048;
        *&v40[14] = self;
        *&v40[22] = 2112;
        v41 = languageCopy;
        _os_log_debug_impl(&dword_1912FE000, v23, OS_LOG_TYPE_DEBUG, "%s %p Checking if language %@ is available", v40, 0x20u);
      }

      v24 = [MEMORY[0x1E696AD98] numberWithBool:1];
      [v14 setObject:v24 forKeyedSubscript:@"CheckLanguageAvailable"];

      [(NSMutableDictionary *)self->_languagesLoggingInfo setObject:v14 forKeyedSubscript:languageCopy];
    }

    v25 = +[AFPreferences sharedPreferences];
    isDictationHIPAACompliant = [v25 isDictationHIPAACompliant];

    if (isDictationHIPAACompliant)
    {
      v27 = +[AFPreferences sharedPreferences];
      offlineDictationStatus = [v27 offlineDictationStatus];
      v13 = AFIsDictationLanguageSupportedForOnDeviceDictation(languageCopy, offlineDictationStatus);

      if (!v14 || bOOLValue3 == v13)
      {
        goto LABEL_29;
      }

      v29 = AFSiriLogContextConnection;
      if (!os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_24;
      }

      v30 = "is not";
      *&v40[4] = "[AFDictationConnection dictationIsAvailableForLanguage:synchronous:]";
      *&v40[12] = 2048;
      *v40 = 136315906;
      *&v40[14] = self;
      if (v13)
      {
        v30 = "is";
      }

      *&v40[22] = 2112;
      v41 = languageCopy;
      LOWORD(v42) = 2080;
      *(&v42 + 2) = v30;
      v31 = "%s %p Language %@ %s available on-device (HQ assets)";
      goto LABEL_34;
    }

    v32 = +[AFNetworkAvailability sharedAvailability];
    isAvailable = [v32 isAvailable];

    if (isAvailable)
    {
      if ((bOOLValue2 & 1) == 0)
      {
        v36 = AFSiriLogContextConnection;
        if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
        {
          *v40 = 136315650;
          *&v40[4] = "[AFDictationConnection dictationIsAvailableForLanguage:synchronous:]";
          *&v40[12] = 2048;
          *&v40[14] = self;
          *&v40[22] = 2112;
          v41 = languageCopy;
          _os_log_debug_impl(&dword_1912FE000, v36, OS_LOG_TYPE_DEBUG, "%s %p Language %@ is available over network", v40, 0x20u);
        }

        v34 = MEMORY[0x1E696AD98];
        LOBYTE(v13) = 1;
        v35 = 1;
        goto LABEL_28;
      }

      LOBYTE(v13) = 1;
    }

    else
    {
      v13 = [(AFDictationConnection *)self forcedOfflineDictationIsAvailableForLanguage:languageCopy synchronous:synchronousCopy];
      if (bOOLValue4 != v13)
      {
        v29 = AFSiriLogContextConnection;
        if (!os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
        {
LABEL_24:
          v34 = MEMORY[0x1E696AD98];
          v35 = v13;
LABEL_28:
          v37 = [v34 numberWithBool:{v35, *v40, *&v40[8], v41, v42}];
          [v14 setObject:v37 forKeyedSubscript:@"LanguageAvailableOverNetwork"];

          [(NSMutableDictionary *)self->_languagesLoggingInfo setObject:v14 forKeyedSubscript:languageCopy];
          goto LABEL_29;
        }

        v39 = "is not";
        *&v40[4] = "[AFDictationConnection dictationIsAvailableForLanguage:synchronous:]";
        *&v40[12] = 2048;
        *v40 = 136315906;
        *&v40[14] = self;
        if (v13)
        {
          v39 = "is";
        }

        *&v40[22] = 2112;
        v41 = languageCopy;
        LOWORD(v42) = 2080;
        *(&v42 + 2) = v39;
        v31 = "%s %p Language %@ %s available on-device (LQ assets)";
LABEL_34:
        _os_log_debug_impl(&dword_1912FE000, v29, OS_LOG_TYPE_DEBUG, v31, v40, 0x2Au);
        goto LABEL_24;
      }
    }

LABEL_29:

    goto LABEL_30;
  }

  LOBYTE(v13) = 0;
LABEL_30:

  return v13;
}

- (void)_stopInputAudioPowerUpdates
{
  v10 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_internalQueue);
  inputAudioPowerUpdater = self->_inputAudioPowerUpdater;
  if (inputAudioPowerUpdater)
  {
    [(AFAudioPowerUpdater *)inputAudioPowerUpdater endUpdate];
    [(AFAudioPowerUpdater *)self->_inputAudioPowerUpdater invalidate];
    v4 = self->_inputAudioPowerUpdater;
    self->_inputAudioPowerUpdater = 0;

    v5 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v6 = 136315394;
      v7 = "[AFDictationConnection _stopInputAudioPowerUpdates]";
      v8 = 2048;
      selfCopy = self;
      _os_log_impl(&dword_1912FE000, v5, OS_LOG_TYPE_INFO, "%s %p Stopped input audio power updates.", &v6, 0x16u);
    }
  }
}

- (void)_startInputAudioPowerUpdatesWithXPCWrapper:(id)wrapper
{
  v13 = *MEMORY[0x1E69E9840];
  wrapperCopy = wrapper;
  [(AFDictationConnection *)self _stopInputAudioPowerUpdates];
  dispatch_assert_queue_V2(self->_internalQueue);
  if (wrapperCopy)
  {
    v5 = [[AFAudioPowerXPCProvider alloc] initWithXPCWrapper:wrapperCopy];
    v6 = [[AFAudioPowerUpdater alloc] initWithProvider:v5 queue:self->_internalQueue frequency:0 delegate:0];
    inputAudioPowerUpdater = self->_inputAudioPowerUpdater;
    self->_inputAudioPowerUpdater = v6;

    [(AFAudioPowerUpdater *)self->_inputAudioPowerUpdater beginUpdate];
    v8 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v9 = 136315394;
      v10 = "[AFDictationConnection _startInputAudioPowerUpdatesWithXPCWrapper:]";
      v11 = 2048;
      selfCopy = self;
      _os_log_impl(&dword_1912FE000, v8, OS_LOG_TYPE_INFO, "%s %p Started input audio power updates.", &v9, 0x16u);
    }
  }
}

- (void)_extendRequestTimeout
{
  dispatch_assert_queue_V2(self->_internalQueue);
  [(AFDictationConnection *)self _cancelRequestTimeout];
  if (self->_hasActiveRequest)
  {

    [(AFDictationConnection *)self _scheduleRequestTimeout];
  }
}

- (void)_invokeRequestTimeout
{
  dispatch_assert_queue_V2(self->_internalQueue);
  v3 = +[AFAnalytics sharedAnalytics];
  [v3 logEventWithType:2208 context:0];

  _dictationService = [(AFDictationConnection *)self _dictationService];
  [_dictationService cancelSpeech];

  v5 = [AFError errorWithCode:1];
  [(AFDictationConnection *)self _tellSpeechDelegateRecognitionDidFail:v5];
}

- (void)_cancelRequestTimeout
{
  dispatch_assert_queue_V2(self->_internalQueue);
  timeoutTimer = self->_timeoutTimer;
  if (timeoutTimer)
  {

    dispatch_source_cancel(timeoutTimer);
  }
}

- (void)_scheduleRequestTimeout
{
  dispatch_assert_queue_V2(self->_internalQueue);
  timeoutTimer = self->_timeoutTimer;
  if (!timeoutTimer)
  {
    v4 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_internalQueue);
    v5 = self->_timeoutTimer;
    self->_timeoutTimer = v4;

    v6 = self->_timeoutTimer;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __48__AFDictationConnection__scheduleRequestTimeout__block_invoke;
    handler[3] = &unk_1E73497C8;
    handler[4] = self;
    dispatch_source_set_event_handler(v6, handler);
    dispatch_resume(self->_timeoutTimer);
    timeoutTimer = self->_timeoutTimer;
  }

  v7 = dispatch_time(0, 30000000000);
  dispatch_source_set_timer(timeoutTimer, v7, 0xFFFFFFFFFFFFFFFFLL, 0);
}

uint64_t __48__AFDictationConnection__scheduleRequestTimeout__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _invokeRequestTimeout];
  v2 = *(a1 + 32);

  return [v2 _cancelRequestTimeout];
}

- (id)_dictationServiceWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  _connection = [(AFDictationConnection *)self _connection];
  v6 = [_connection remoteObjectProxyWithErrorHandler:handlerCopy];

  return v6;
}

- (id)_dictationService
{
  _connection = [(AFDictationConnection *)self _connection];
  remoteObjectProxy = [_connection remoteObjectProxy];

  return remoteObjectProxy;
}

- (id)_connection
{
  dispatch_assert_queue_V2(self->_internalQueue);
  connection = self->_connection;
  if (!connection)
  {
    v4 = [(AFInstanceContext *)self->_instanceContext createXPCConnectionWithMachServiceName:@"com.apple.assistant.dictation" options:0];
    v5 = self->_connection;
    self->_connection = v4;

    [(AFDictationConnection *)self _registerInvalidationHandlerForXPCConnection:self->_connection];
    objc_initWeak(&location, self);
    v6 = self->_connection;
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __36__AFDictationConnection__connection__block_invoke;
    v20 = &unk_1E7348A80;
    objc_copyWeak(&v21, &location);
    [(NSXPCConnection *)v6 setInterruptionHandler:&v17];
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_attr_make_with_qos_class(v7, QOS_CLASS_USER_INTERACTIVE, 0);

    v9 = dispatch_queue_create("AFDictationConnection.connection", v8);
    [(NSXPCConnection *)self->_connection _setQueue:v9, v17, v18, v19, v20];
    v10 = self->_connection;
    v11 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F05BED80];
    [(NSXPCConnection *)v10 setRemoteObjectInterface:v11];

    v12 = self->_connection;
    v13 = AFDictationServiceDelegateXPCInterface();
    [(NSXPCConnection *)v12 setExportedInterface:v13];

    v14 = self->_connection;
    v15 = [[AFDictationConnectionServiceDelegate alloc] initWithDictationConnection:self];
    [(NSXPCConnection *)v14 setExportedObject:v15];

    [(NSXPCConnection *)self->_connection resume];
    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
    connection = self->_connection;
  }

  return connection;
}

void __36__AFDictationConnection__connection__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __36__AFDictationConnection__connection__block_invoke_2;
  v3[3] = &unk_1E73497C8;
  v4 = WeakRetained;
  v2 = WeakRetained;
  [v2 _dispatchAsync:v3];
}

- (void)_registerInvalidationHandlerForXPCConnection:(id)connection
{
  connectionCopy = connection;
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __70__AFDictationConnection__registerInvalidationHandlerForXPCConnection___block_invoke;
  v5[3] = &unk_1E7348A80;
  objc_copyWeak(&v6, &location);
  [connectionCopy setInvalidationHandler:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __70__AFDictationConnection__registerInvalidationHandlerForXPCConnection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[9];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __70__AFDictationConnection__registerInvalidationHandlerForXPCConnection___block_invoke_2;
    block[3] = &unk_1E73497C8;
    v5 = WeakRetained;
    dispatch_async(v3, block);
  }
}

- (void)_clearConnection
{
  dispatch_assert_queue_V2(self->_internalQueue);
  [(AFDictationConnection *)self _cancelTimerClearBuffer];
  [(AFDictationConnection *)self _connectionClearedForInterruption:0];
  [(NSXPCConnection *)self->_connection invalidate];
  connection = self->_connection;
  self->_connection = 0;
}

- (void)_connectionClearedForInterruption:(BOOL)interruption
{
  interruptionCopy = interruption;
  v16 = *MEMORY[0x1E69E9840];
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v10 = 136315650;
    v11 = "[AFDictationConnection _connectionClearedForInterruption:]";
    v12 = 2048;
    selfCopy = self;
    v14 = 1024;
    v15 = interruptionCopy;
    _os_log_impl(&dword_1912FE000, v5, OS_LOG_TYPE_INFO, "%s %p %d", &v10, 0x1Cu);
  }

  dispatch_assert_queue_V2(self->_internalQueue);
  if (self->_isCapturingSpeech || self->_isWaitingForAudioFile || self->_hasActiveRequest)
  {
    if (interruptionCopy)
    {
      if (AFIsInternalInstall_onceToken != -1)
      {
        dispatch_once(&AFIsInternalInstall_onceToken, &__block_literal_global_164_46064);
      }

      if (AFIsInternalInstall_isInternal == 1 && (_connectionClearedForInterruption__hasAskedOnceForARadar & 1) == 0)
      {
        _connectionClearedForInterruption__hasAskedOnceForARadar = 1;
        dispatch_async(MEMORY[0x1E69E96A0], &__block_literal_global_13583);
      }
    }

    if (self->_isCapturingSpeech || self->_hasActiveRequest)
    {
      self->_isCapturingSpeech = 0;
      if (interruptionCopy)
      {
        v6 = 7;
      }

      else
      {
        v6 = 23;
      }

      v7 = [AFError errorWithCode:v6];
      [(AFDictationConnection *)self _tellSpeechDelegateRecognitionDidFail:v7];
    }

    if (self->_isWaitingForAudioFile)
    {
      if (interruptionCopy)
      {
        v8 = 7;
      }

      else
      {
        v8 = 23;
      }

      v9 = [AFError errorWithCode:v8];
      [(AFDictationConnection *)self _tellSpeechDelegateAudioFileFinished:0 error:v9];
    }
  }

  [(AFDictationConnection *)self _stopInputAudioPowerUpdates];
}

- (void)_tellSpeechDelegateDidPauseRecognition
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v6 = "[AFDictationConnection _tellSpeechDelegateDidPauseRecognition]";
    v7 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1912FE000, v3, OS_LOG_TYPE_INFO, "%s %p Speech recognition is paused", buf, 0x16u);
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __63__AFDictationConnection__tellSpeechDelegateDidPauseRecognition__block_invoke;
  v4[3] = &unk_1E73440C0;
  v4[4] = self;
  [(AFDictationConnection *)self _dispatchCallbackGroupBlock:v4];
}

void __63__AFDictationConnection__tellSpeechDelegateDidPauseRecognition__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 dictationConnectionDidPauseRecognition:*(a1 + 32)];
  }
}

- (void)_tellSpeechDelegateDidBeginLocalRecognitionWithModelInfo:(id)info
{
  v15 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v10 = "[AFDictationConnection _tellSpeechDelegateDidBeginLocalRecognitionWithModelInfo:]";
    v11 = 2048;
    selfCopy = self;
    v13 = 2112;
    v14 = infoCopy;
    _os_log_impl(&dword_1912FE000, v5, OS_LOG_TYPE_INFO, "%s %p Local speech recognizer model info: %@", buf, 0x20u);
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __82__AFDictationConnection__tellSpeechDelegateDidBeginLocalRecognitionWithModelInfo___block_invoke;
  v7[3] = &unk_1E73440E8;
  v7[4] = self;
  v8 = infoCopy;
  v6 = infoCopy;
  [(AFDictationConnection *)self _dispatchCallbackGroupBlock:v7];
}

void __82__AFDictationConnection__tellSpeechDelegateDidBeginLocalRecognitionWithModelInfo___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 dictationConnection:*(a1 + 32) didBeginLocalRecognitionWithModelInfo:*(a1 + 40)];
  }
}

- (void)_tellSpeechDelegateLanguageDetectorDidFail:(id)fail
{
  v11 = *MEMORY[0x1E69E9840];
  failCopy = fail;
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v10 = "[AFDictationConnection _tellSpeechDelegateLanguageDetectorDidFail:]";
    _os_log_impl(&dword_1912FE000, v5, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __68__AFDictationConnection__tellSpeechDelegateLanguageDetectorDidFail___block_invoke;
  v7[3] = &unk_1E73440E8;
  v7[4] = self;
  v8 = failCopy;
  v6 = failCopy;
  [(AFDictationConnection *)self _dispatchCallbackGroupBlock:v7];
}

void __68__AFDictationConnection__tellSpeechDelegateLanguageDetectorDidFail___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 dictationConnection:*(a1 + 32) languageDetectorFailedWithError:*(a1 + 40)];
  }
}

- (void)_tellSpeechDelegateMultilingualSpeechRecognized:(id)recognized
{
  v11 = *MEMORY[0x1E69E9840];
  recognizedCopy = recognized;
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v10 = "[AFDictationConnection _tellSpeechDelegateMultilingualSpeechRecognized:]";
    _os_log_impl(&dword_1912FE000, v5, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __73__AFDictationConnection__tellSpeechDelegateMultilingualSpeechRecognized___block_invoke;
  v7[3] = &unk_1E73440E8;
  v7[4] = self;
  v8 = recognizedCopy;
  v6 = recognizedCopy;
  [(AFDictationConnection *)self _dispatchCallbackGroupBlock:v7];
}

void __73__AFDictationConnection__tellSpeechDelegateMultilingualSpeechRecognized___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 dictationConnection:*(a1 + 32) didRecognizeMultilingualSpeech:*(a1 + 40)];
  }
}

- (void)_tellSpeechDelegateLanguageDetected:(id)detected confidenceScores:(id)scores isConfident:(BOOL)confident
{
  v19 = *MEMORY[0x1E69E9840];
  detectedCopy = detected;
  scoresCopy = scores;
  v10 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v18 = "[AFDictationConnection _tellSpeechDelegateLanguageDetected:confidenceScores:isConfident:]";
    _os_log_impl(&dword_1912FE000, v10, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __90__AFDictationConnection__tellSpeechDelegateLanguageDetected_confidenceScores_isConfident___block_invoke;
  v13[3] = &unk_1E7344228;
  v13[4] = self;
  v14 = detectedCopy;
  v15 = scoresCopy;
  confidentCopy = confident;
  v11 = scoresCopy;
  v12 = detectedCopy;
  [(AFDictationConnection *)self _dispatchCallbackGroupBlock:v13];
}

void __90__AFDictationConnection__tellSpeechDelegateLanguageDetected_confidenceScores_isConfident___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector())
  {
    [v3 dictationConnection:*(a1 + 32) didDetectLanguage:*(a1 + 40) confidenceScores:*(a1 + 48) isConfident:*(a1 + 56)];
  }

  else if (objc_opt_respondsToSelector())
  {
    [v3 dictationConnection:*(a1 + 32) didDetectLanguage:*(a1 + 40) confidenceScores:*(a1 + 48)];
  }
}

- (void)_tellSpeechDelegateSearchResultsReceived:(id)received recognitionText:(id)text stable:(BOOL)stable final:(BOOL)final
{
  v22 = *MEMORY[0x1E69E9840];
  receivedCopy = received;
  textCopy = text;
  v12 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v21 = "[AFDictationConnection _tellSpeechDelegateSearchResultsReceived:recognitionText:stable:final:]";
    _os_log_impl(&dword_1912FE000, v12, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __95__AFDictationConnection__tellSpeechDelegateSearchResultsReceived_recognitionText_stable_final___block_invoke;
  v15[3] = &unk_1E7344200;
  v15[4] = self;
  v16 = receivedCopy;
  v17 = textCopy;
  stableCopy = stable;
  finalCopy = final;
  v13 = textCopy;
  v14 = receivedCopy;
  [(AFDictationConnection *)self _dispatchCallbackGroupBlock:v15];
}

void __95__AFDictationConnection__tellSpeechDelegateSearchResultsReceived_recognitionText_stable_final___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 dictationConnection:*(a1 + 32) didReceiveSearchResults:*(a1 + 40) recognizedText:*(a1 + 48) stable:*(a1 + 56) final:*(a1 + 57)];
  }
}

- (void)_tellSpeechDelegateAudioFileFinished:(id)finished error:(id)error
{
  finishedCopy = finished;
  errorCopy = error;
  dispatch_assert_queue_V2(self->_internalQueue);
  if (self->_isWaitingForAudioFile)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __68__AFDictationConnection__tellSpeechDelegateAudioFileFinished_error___block_invoke;
    v8[3] = &unk_1E7344110;
    v8[4] = self;
    v9 = finishedCopy;
    v10 = errorCopy;
    [(AFDictationConnection *)self _dispatchCallbackGroupBlock:v8];
    self->_isWaitingForAudioFile = 0;
  }
}

void __68__AFDictationConnection__tellSpeechDelegateAudioFileFinished_error___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 dictationConnection:a1[4] didFinishWritingAudioFile:a1[5] error:a1[6]];
  }
}

- (void)_tellSpeechDelegateSpeechRecognitionDidSucceed
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v6 = "[AFDictationConnection _tellSpeechDelegateSpeechRecognitionDidSucceed]";
    _os_log_impl(&dword_1912FE000, v3, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  [(AFDictationConnection *)self _willCompleteDictation];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __71__AFDictationConnection__tellSpeechDelegateSpeechRecognitionDidSucceed__block_invoke;
  v4[3] = &unk_1E73440C0;
  v4[4] = self;
  [(AFDictationConnection *)self _dispatchCallbackGroupBlock:v4];
}

void __71__AFDictationConnection__tellSpeechDelegateSpeechRecognitionDidSucceed__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 dictationConnectionSpeechRecognitionDidSucceed:*(a1 + 32)];
  }
}

- (void)_tellSpeechDelegateRecognitionDidFail:(id)fail
{
  v11 = *MEMORY[0x1E69E9840];
  failCopy = fail;
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v10 = "[AFDictationConnection _tellSpeechDelegateRecognitionDidFail:]";
    _os_log_impl(&dword_1912FE000, v5, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  [(AFDictationConnection *)self _willFailDictationWithError:failCopy];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63__AFDictationConnection__tellSpeechDelegateRecognitionDidFail___block_invoke;
  v7[3] = &unk_1E73440E8;
  v7[4] = self;
  v8 = failCopy;
  v6 = failCopy;
  [(AFDictationConnection *)self _dispatchCallbackGroupBlock:v7];
}

void __63__AFDictationConnection__tellSpeechDelegateRecognitionDidFail___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 dictationConnection:*(a1 + 32) speechRecognitionDidFail:*(a1 + 40)];
  }
}

- (void)_tellSpeechDelegateDidRecognizeTranscriptionObjects:(id)objects languageModel:(id)model
{
  v16 = *MEMORY[0x1E69E9840];
  objectsCopy = objects;
  modelCopy = model;
  v8 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v15 = "[AFDictationConnection _tellSpeechDelegateDidRecognizeTranscriptionObjects:languageModel:]";
    _os_log_impl(&dword_1912FE000, v8, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  [(AFDictationConnection *)self _willCompleteDictation];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __91__AFDictationConnection__tellSpeechDelegateDidRecognizeTranscriptionObjects_languageModel___block_invoke;
  v11[3] = &unk_1E7344110;
  v11[4] = self;
  v12 = objectsCopy;
  v13 = modelCopy;
  v9 = modelCopy;
  v10 = objectsCopy;
  [(AFDictationConnection *)self _dispatchCallbackGroupBlock:v11];
}

void __91__AFDictationConnection__tellSpeechDelegateDidRecognizeTranscriptionObjects_languageModel___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 dictationConnection:a1[4] didRecognizeTranscriptionObjects:a1[5] languageModel:a1[6]];
  }
}

- (void)_tellSpeechDelegateDidProcessAudioDuration:(double)duration
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __68__AFDictationConnection__tellSpeechDelegateDidProcessAudioDuration___block_invoke;
  v3[3] = &unk_1E73441D8;
  v3[4] = self;
  *&v3[5] = duration;
  [(AFDictationConnection *)self _dispatchCallbackGroupBlock:v3];
}

void __68__AFDictationConnection__tellSpeechDelegateDidProcessAudioDuration___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 dictationConnection:*(a1 + 32) didProcessAudioDuration:*(a1 + 40)];
  }
}

- (void)_tellSpeechDelegateDidRecognizePartialSpeechPackage:(id)package nluResult:(id)result languageModel:(id)model
{
  v21 = *MEMORY[0x1E69E9840];
  packageCopy = package;
  resultCopy = result;
  modelCopy = model;
  v11 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v20 = "[AFDictationConnection _tellSpeechDelegateDidRecognizePartialSpeechPackage:nluResult:languageModel:]";
    _os_log_impl(&dword_1912FE000, v11, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __101__AFDictationConnection__tellSpeechDelegateDidRecognizePartialSpeechPackage_nluResult_languageModel___block_invoke;
  v15[3] = &unk_1E73441B0;
  v15[4] = self;
  v16 = packageCopy;
  v17 = resultCopy;
  v18 = modelCopy;
  v12 = modelCopy;
  v13 = resultCopy;
  v14 = packageCopy;
  [(AFDictationConnection *)self _dispatchCallbackGroupBlock:v15];
}

- (void)_tellSpeechDelegateDidRecognizeSpeechTokens:(id)tokens nluResult:(id)result languageModel:(id)model
{
  v21 = *MEMORY[0x1E69E9840];
  tokensCopy = tokens;
  resultCopy = result;
  modelCopy = model;
  v11 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v20 = "[AFDictationConnection _tellSpeechDelegateDidRecognizeSpeechTokens:nluResult:languageModel:]";
    _os_log_impl(&dword_1912FE000, v11, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __93__AFDictationConnection__tellSpeechDelegateDidRecognizeSpeechTokens_nluResult_languageModel___block_invoke;
  v15[3] = &unk_1E73441B0;
  v15[4] = self;
  v16 = tokensCopy;
  v17 = resultCopy;
  v18 = modelCopy;
  v12 = modelCopy;
  v13 = resultCopy;
  v14 = tokensCopy;
  [(AFDictationConnection *)self _dispatchCallbackGroupBlock:v15];
}

- (void)_tellSpeechDelegateDidRecognizePartialResult:(id)result
{
  resultCopy = result;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __70__AFDictationConnection__tellSpeechDelegateDidRecognizePartialResult___block_invoke;
  v6[3] = &unk_1E73440E8;
  v7 = resultCopy;
  selfCopy = self;
  v5 = resultCopy;
  [(AFDictationConnection *)self _dispatchCallbackGroupBlock:v6];
}

void __70__AFDictationConnection__tellSpeechDelegateDidRecognizePartialResult___block_invoke(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) language];
  v5 = [v4 copy];

  v6 = [*(a1 + 32) tokens];
  v7 = [v6 count];

  v8 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v9 = *(a1 + 32);
    *buf = 136315650;
    v22 = "[AFDictationConnection _tellSpeechDelegateDidRecognizePartialResult:]_block_invoke";
    v23 = 2112;
    v24 = v9;
    v25 = 2112;
    v26 = v5;
    _os_log_impl(&dword_1912FE000, v8, OS_LOG_TYPE_INFO, "%s %@ - %@", buf, 0x20u);
  }

  v10 = +[AFAnalytics sharedAnalytics];
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __70__AFDictationConnection__tellSpeechDelegateDidRecognizePartialResult___block_invoke_73;
  v18 = &unk_1E7344188;
  v20 = v7;
  v11 = v5;
  v19 = v11;
  [v10 logEventWithType:2214 contextProvider:&v15];

  v12 = *(a1 + 40);
  if ((v12[59] & 1) != 0 || (v13 = objc_opt_respondsToSelector(), v12 = *(a1 + 40), (v13 & 1) == 0))
  {
    v14 = [*(a1 + 32) af_tokens];
    [v12 _delegateDidRecognizeSpeechTokens:v14 nluResult:0 languageModel:v11 delegate:v3];
  }

  else
  {
    [v3 dictationConnection:*(a1 + 40) didRecognizePartialResult:{*(a1 + 32), v15, v16, v17, v18}];
  }
}

id __70__AFDictationConnection__tellSpeechDelegateDidRecognizePartialResult___block_invoke_73(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 40)];
  [v2 setObject:v3 forKey:@"tokensCount"];

  v4 = *(a1 + 32);
  if (v4)
  {
    [v2 setObject:v4 forKey:@"languageModel"];
  }

  return v2;
}

- (void)_delegateDidRecognizePartialSpeechPackage:(id)package nluResult:(id)result languageModel:(id)model delegate:(id)delegate
{
  v18 = *MEMORY[0x1E69E9840];
  packageCopy = package;
  resultCopy = result;
  modelCopy = model;
  delegateCopy = delegate;
  v14 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v16 = 136315138;
    v17 = "[AFDictationConnection _delegateDidRecognizePartialSpeechPackage:nluResult:languageModel:delegate:]";
    _os_log_impl(&dword_1912FE000, v14, OS_LOG_TYPE_INFO, "%s ", &v16, 0xCu);
  }

  if (self->_shouldClassifyIntent || self->_shouldRecognizeCommands) && (objc_opt_respondsToSelector())
  {
    [delegateCopy dictationConnection:self didRecognizePartialPackage:packageCopy nluResult:resultCopy languageModel:modelCopy];
  }

  else
  {
    v15 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v16 = 136315138;
      v17 = "[AFDictationConnection _delegateDidRecognizePartialSpeechPackage:nluResult:languageModel:delegate:]";
      _os_log_impl(&dword_1912FE000, v15, OS_LOG_TYPE_INFO, "%s No opt-in to command recognition, intent classification or no partial package delegate callback implemented. Dropping.", &v16, 0xCu);
    }
  }
}

- (void)_delegateDidRecognizeSpeechTokens:(id)tokens nluResult:(id)result languageModel:(id)model delegate:(id)delegate
{
  v42 = *MEMORY[0x1E69E9840];
  tokensCopy = tokens;
  resultCopy = result;
  modelCopy = model;
  delegateCopy = delegate;
  v14 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    *&buf[4] = "[AFDictationConnection _delegateDidRecognizeSpeechTokens:nluResult:languageModel:delegate:]";
    _os_log_impl(&dword_1912FE000, v14, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  if (self->_recognizingIncrementally && (objc_opt_respondsToSelector() & 1) != 0)
  {
    selfCopy = self;
    v31 = modelCopy;
    v32 = resultCopy;
    v15 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      *&buf[4] = "[AFDictationConnection _delegateDidRecognizeSpeechTokens:nluResult:languageModel:delegate:]";
      _os_log_impl(&dword_1912FE000, v15, OS_LOG_TYPE_INFO, "%s Recognizing incrementally.", buf, 0xCu);
    }

    v16 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(tokensCopy, "count")}];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    obj = tokensCopy;
    v17 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v35;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v35 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v34 + 1) + 8 * i);
          v22 = objc_alloc_init(AFSpeechInterpretation);
          v39 = v21;
          v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v39 count:1];
          [(AFSpeechInterpretation *)v22 setTokens:v23];

          v24 = [AFSpeechPhrase alloc];
          v38 = v22;
          v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v38 count:1];
          v26 = [(AFSpeechPhrase *)v24 initWithInterpretations:v25 isLowConfidence:0];
          [v16 addObject:v26];
        }

        v18 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
      }

      while (v18);
    }

    *buf = 0;
    v27 = DeltaPhrases(v16, selfCopy->_previouslyRecognizedPhrases, buf);
    modelCopy = v31;
    [delegateCopy dictationConnection:selfCopy didRecognizePhrases:v27 languageModel:v31 correctionIdentifier:0 replacingPreviousPhrasesCount:*buf];
    v28 = [v16 copy];
    previouslyRecognizedPhrases = selfCopy->_previouslyRecognizedPhrases;
    selfCopy->_previouslyRecognizedPhrases = v28;

    resultCopy = v32;
  }

  else if (self->_shouldClassifyIntent || self->_shouldRecognizeCommands) && (objc_opt_respondsToSelector())
  {
    [delegateCopy dictationConnection:self didRecognizeTokens:tokensCopy nluResult:resultCopy languageModel:modelCopy];
  }

  else if (objc_opt_respondsToSelector())
  {
    [delegateCopy dictationConnection:self didRecognizeTokens:tokensCopy languageModel:modelCopy];
  }
}

- (void)_tellSpeechDelegateDidRecognizeSpeechPhrases:(id)phrases rawPhrases:(id)rawPhrases utterances:(id)utterances rawUtterances:(id)rawUtterances nluResult:(id)result languageModel:(id)model correctionIdentifier:(id)identifier audioAnalytics:(id)self0
{
  v45 = *MEMORY[0x1E69E9840];
  phrasesCopy = phrases;
  rawPhrasesCopy = rawPhrases;
  utterancesCopy = utterances;
  rawUtterancesCopy = rawUtterances;
  resultCopy = result;
  modelCopy = model;
  identifierCopy = identifier;
  analyticsCopy = analytics;
  v24 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v44 = "[AFDictationConnection _tellSpeechDelegateDidRecognizeSpeechPhrases:rawPhrases:utterances:rawUtterances:nluResult:languageModel:correctionIdentifier:audioAnalytics:]";
    _os_log_impl(&dword_1912FE000, v24, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  if (!self->_isDetectingUtterances)
  {
    [(AFDictationConnection *)self _willCompleteDictation];
  }

  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __166__AFDictationConnection__tellSpeechDelegateDidRecognizeSpeechPhrases_rawPhrases_utterances_rawUtterances_nluResult_languageModel_correctionIdentifier_audioAnalytics___block_invoke;
  v33[3] = &unk_1E7344160;
  v34 = phrasesCopy;
  v35 = utterancesCopy;
  v36 = rawPhrasesCopy;
  v37 = rawUtterancesCopy;
  v38 = analyticsCopy;
  selfCopy = self;
  v40 = modelCopy;
  v41 = identifierCopy;
  v42 = resultCopy;
  v25 = resultCopy;
  v26 = identifierCopy;
  v27 = modelCopy;
  v28 = analyticsCopy;
  v29 = rawUtterancesCopy;
  v30 = rawPhrasesCopy;
  v31 = utterancesCopy;
  v32 = phrasesCopy;
  [(AFDictationConnection *)self _dispatchCallbackGroupBlock:v33];
}

void __166__AFDictationConnection__tellSpeechDelegateDidRecognizeSpeechPhrases_rawPhrases_utterances_rawUtterances_nluResult_languageModel_correctionIdentifier_audioAnalytics___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __166__AFDictationConnection__tellSpeechDelegateDidRecognizeSpeechPhrases_rawPhrases_utterances_rawUtterances_nluResult_languageModel_correctionIdentifier_audioAnalytics___block_invoke_2;
  v21[3] = &unk_1E7344138;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  *&v9 = v4;
  *(&v9 + 1) = v5;
  v22 = v9;
  v23 = v8;
  v24 = *(a1 + 64);
  v10 = MEMORY[0x193AFB7B0](v21);
  v11 = *(a1 + 72);
  if (*(v11 + 59) == 1)
  {
    v12 = objc_opt_respondsToSelector();
    v11 = *(a1 + 72);
    if (v12)
    {
      v20 = 0;
      v13 = DeltaPhrases(*(a1 + 32), *(v11 + 152), &v20);
      [v3 dictationConnection:*(a1 + 72) didRecognizePhrases:v13 languageModel:*(a1 + 80) correctionIdentifier:*(a1 + 88) replacingPreviousPhrasesCount:v20];
      v14 = [*(a1 + 32) copy];
      v15 = *(a1 + 72);
      v16 = *(v15 + 152);
      *(v15 + 152) = v14;

LABEL_10:
      goto LABEL_11;
    }
  }

  if ((*(v11 + 60) & 1) != 0 || *(v11 + 61) == 1) && (objc_opt_respondsToSelector())
  {
    v17 = *(a1 + 72);
    v18 = v10[2](v10);
    [v3 dictationConnection:v17 didRecognizePackage:v18 nluResult:*(a1 + 96)];
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v19 = *(a1 + 72);
      v13 = v10[2](v10);
      [v3 dictationConnection:v19 didRecognizePackage:v13];
      goto LABEL_10;
    }

    if (objc_opt_respondsToSelector())
    {
      [v3 dictationConnection:*(a1 + 72) didRecognizePhrases:*(a1 + 32) languageModel:*(a1 + 80) correctionIdentifier:*(a1 + 88)];
    }
  }

LABEL_11:
}

AFSpeechPackage *__166__AFDictationConnection__tellSpeechDelegateDidRecognizeSpeechPhrases_rawPhrases_utterances_rawUtterances_nluResult_languageModel_correctionIdentifier_audioAnalytics___block_invoke_2(uint64_t a1)
{
  v2 = [[AFSpeechRecognition alloc] initWithPhrases:*(a1 + 32) utterances:*(a1 + 40)];
  if ([*(a1 + 48) count] && objc_msgSend(*(a1 + 56), "count"))
  {
    v3 = [[AFSpeechRecognition alloc] initWithPhrases:*(a1 + 48) utterances:*(a1 + 56)];
    v4 = [AFSpeechPackage alloc];
    if (v3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v4 = [AFSpeechPackage alloc];
  }

  v3 = [(AFSpeechRecognition *)v2 copy];
LABEL_7:
  v5 = [(AFSpeechPackage *)v4 initWithRecognition:v2 rawRecognition:v3 audioAnalytics:*(a1 + 64) isFinal:1 utteranceStart:0.0];

  return v5;
}

- (void)_tellSpeechDelegateDidRecognizeVoiceCommandCandidatePackage:(id)package nluResult:(id)result
{
  v16 = *MEMORY[0x1E69E9840];
  packageCopy = package;
  resultCopy = result;
  v8 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v15 = "[AFDictationConnection _tellSpeechDelegateDidRecognizeVoiceCommandCandidatePackage:nluResult:]";
    _os_log_impl(&dword_1912FE000, v8, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __95__AFDictationConnection__tellSpeechDelegateDidRecognizeVoiceCommandCandidatePackage_nluResult___block_invoke;
  v11[3] = &unk_1E7344110;
  v11[4] = self;
  v12 = packageCopy;
  v13 = resultCopy;
  v9 = resultCopy;
  v10 = packageCopy;
  [(AFDictationConnection *)self _dispatchCallbackGroupBlock:v11];
}

void __95__AFDictationConnection__tellSpeechDelegateDidRecognizeVoiceCommandCandidatePackage_nluResult___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 dictationConnection:a1[4] didRecognizeVoiceCommandCandidatePackage:a1[5] nluResult:a1[6]];
  }
}

- (void)_tellSpeechDelegateDidRecognizeFinalResultCandidatePackage:(id)package
{
  v11 = *MEMORY[0x1E69E9840];
  packageCopy = package;
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v10 = "[AFDictationConnection _tellSpeechDelegateDidRecognizeFinalResultCandidatePackage:]";
    _os_log_impl(&dword_1912FE000, v5, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __84__AFDictationConnection__tellSpeechDelegateDidRecognizeFinalResultCandidatePackage___block_invoke;
  v7[3] = &unk_1E73440E8;
  v7[4] = self;
  v8 = packageCopy;
  v6 = packageCopy;
  [(AFDictationConnection *)self _dispatchCallbackGroupBlock:v7];
}

void __84__AFDictationConnection__tellSpeechDelegateDidRecognizeFinalResultCandidatePackage___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 dictationConnection:*(a1 + 32) didRecognizeFinalResultCandidatePackage:*(a1 + 40)];
  }
}

- (void)_tellSpeechDelegateDidRecognizePackage:(id)package
{
  v11 = *MEMORY[0x1E69E9840];
  packageCopy = package;
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v10 = "[AFDictationConnection _tellSpeechDelegateDidRecognizePackage:]";
    _os_log_impl(&dword_1912FE000, v5, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  [(AFDictationConnection *)self _willCompleteDictation];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__AFDictationConnection__tellSpeechDelegateDidRecognizePackage___block_invoke;
  v7[3] = &unk_1E73440E8;
  v7[4] = self;
  v8 = packageCopy;
  v6 = packageCopy;
  [(AFDictationConnection *)self _dispatchCallbackGroupBlock:v7];
}

void __64__AFDictationConnection__tellSpeechDelegateDidRecognizePackage___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(*(a1 + 32) + 59) == 1 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v15 = 0;
    v4 = [*(a1 + 40) recognition];
    v5 = [v4 phrases];
    v6 = DeltaPhrases(v5, *(*(a1 + 32) + 152), &v15);

    [v3 dictationConnection:*(a1 + 32) didRecognizePhrases:v6 languageModel:&stru_1F0512680 correctionIdentifier:0 replacingPreviousPhrasesCount:v15];
    v7 = [*(a1 + 40) recognition];
    v8 = [v7 phrases];
    v9 = [v8 copy];
    v10 = *(a1 + 32);
    v11 = *(v10 + 152);
    *(v10 + 152) = v9;
  }

  else if (objc_opt_respondsToSelector())
  {
    [v3 dictationConnection:*(a1 + 32) didRecognizePackage:*(a1 + 40)];
  }

  else if (objc_opt_respondsToSelector())
  {
    v12 = *(a1 + 32);
    v13 = [*(a1 + 40) recognition];
    v14 = [v13 phrases];
    [v3 dictationConnection:v12 didRecognizePhrases:v14 languageModel:&stru_1F0512680 correctionIdentifier:0];
  }
}

- (void)_tellSpeechDelegateRecordingDidFail:(id)fail
{
  failCopy = fail;
  [(AFDictationConnection *)self _willFailDictationWithError:failCopy];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __61__AFDictationConnection__tellSpeechDelegateRecordingDidFail___block_invoke;
  v6[3] = &unk_1E73440E8;
  v6[4] = self;
  v7 = failCopy;
  v5 = failCopy;
  [(AFDictationConnection *)self _dispatchCallbackGroupBlock:v6];
}

void __61__AFDictationConnection__tellSpeechDelegateRecordingDidFail___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 dictationConnection:*(a1 + 32) speechRecordingDidFail:*(a1 + 40)];
  }
}

- (void)_tellSpeechDelegateRecordingDidCancel
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __62__AFDictationConnection__tellSpeechDelegateRecordingDidCancel__block_invoke;
  v2[3] = &unk_1E73440C0;
  v2[4] = self;
  [(AFDictationConnection *)self _dispatchCallbackGroupBlock:v2];
}

void __62__AFDictationConnection__tellSpeechDelegateRecordingDidCancel__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 dictationConnectionSpeechRecordingDidCancel:*(a1 + 32)];
  }
}

- (void)_tellSpeechDelegateRecordingDidEnd
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __59__AFDictationConnection__tellSpeechDelegateRecordingDidEnd__block_invoke;
  v2[3] = &unk_1E73440C0;
  v2[4] = self;
  [(AFDictationConnection *)self _dispatchCallbackGroupBlock:v2];
}

void __59__AFDictationConnection__tellSpeechDelegateRecordingDidEnd__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 dictationConnectionSpeechRecordingDidEnd:*(a1 + 32)];
  }
}

- (void)_tellSpeechDelegateRecordingDidBeginWithOptions:(id)options
{
  v11 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v10 = "[AFDictationConnection _tellSpeechDelegateRecordingDidBeginWithOptions:]";
    _os_log_impl(&dword_1912FE000, v5, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  self->_isDetectingUtterances = [optionsCopy detectUtterances];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __73__AFDictationConnection__tellSpeechDelegateRecordingDidBeginWithOptions___block_invoke;
  v7[3] = &unk_1E73440E8;
  v7[4] = self;
  v8 = optionsCopy;
  v6 = optionsCopy;
  [(AFDictationConnection *)self _dispatchCallbackGroupBlock:v7];
}

void __73__AFDictationConnection__tellSpeechDelegateRecordingDidBeginWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 dictationConnection:*(a1 + 32) speechRecordingDidBeginWithOptions:*(a1 + 40)];
  }

  else if (objc_opt_respondsToSelector())
  {
    [v3 dictationConnectionSpeechRecordingDidBegin:*(a1 + 32)];
  }
}

- (void)_tellSpeechDelegateRecordingWillBegin
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __62__AFDictationConnection__tellSpeechDelegateRecordingWillBegin__block_invoke;
  v2[3] = &unk_1E73440C0;
  v2[4] = self;
  [(AFDictationConnection *)self _dispatchCallbackGroupBlock:v2];
}

void __62__AFDictationConnection__tellSpeechDelegateRecordingWillBegin__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 dictationConnectionSpeechRecordingWillBegin:*(a1 + 32)];
  }
}

- (void)_dispatchCallbackGroupBlock:(id)block
{
  blockCopy = block;
  if (blockCopy)
  {
    dispatch_assert_queue_V2(self->_internalQueue);
    if (self->_speechCallbackGroup)
    {
      objc_copyWeak(&to, &self->_delegate);
      speechCallbackGroup = self->_speechCallbackGroup;
      delegateQueue = self->_delegateQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __53__AFDictationConnection__dispatchCallbackGroupBlock___block_invoke;
      block[3] = &unk_1E7344098;
      v11 = blockCopy;
      objc_copyWeak(&v12, &to);
      dispatch_group_notify(speechCallbackGroup, delegateQueue, block);
      objc_destroyWeak(&v12);

      objc_destroyWeak(&to);
    }

    else
    {
      v7 = self->_delegateQueue;
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __53__AFDictationConnection__dispatchCallbackGroupBlock___block_invoke_2;
      v8[3] = &unk_1E7349838;
      v8[4] = self;
      v9 = blockCopy;
      dispatch_async(v7, v8);
    }
  }
}

void __53__AFDictationConnection__dispatchCallbackGroupBlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  (*(v1 + 16))(v1, WeakRetained);
}

void __53__AFDictationConnection__dispatchCallbackGroupBlock___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
  (*(v1 + 16))(v1, WeakRetained);
}

- (void)_checkAndSetIsCapturingSpeech:(BOOL)speech
{
  speechCopy = speech;
  v14 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_internalQueue);
  if (speechCopy && self->_isCapturingSpeech)
  {
    v5 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v13 = "[AFDictationConnection _checkAndSetIsCapturingSpeech:]";
      _os_log_fault_impl(&dword_1912FE000, v5, OS_LOG_TYPE_FAULT, "%s Trying to start speech capture while we are already capturing. This is a client app logic error, cancelling dictation", buf, 0xCu);
    }

    _dictationService = [(AFDictationConnection *)self _dictationService];
    [_dictationService cancelSpeech];

    v7 = MEMORY[0x1E696ABC0];
    v10 = *MEMORY[0x1E696A578];
    v11 = @"Trying to start speech capture while we are already capturing. This is a client app logic error, cancelling dictation";
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
    v9 = [v7 errorWithDomain:@"kAFAssistantErrorDomain" code:205 userInfo:v8];
    [(AFDictationConnection *)self _tellSpeechDelegateRecordingDidFail:v9];

    self->_isCapturingSpeech = 0;
  }

  else
  {
    [(AFDictationConnection *)self _stopInputAudioPowerUpdates];
    self->_isCapturingSpeech = speechCopy;
  }
}

- (AFDictationConnection)initWithInstanceContext:(id)context
{
  v30 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v28.receiver = self;
  v28.super_class = AFDictationConnection;
  v6 = [(AFDictationConnection *)&v28 init];
  if (v6)
  {
    if (v3 && (memset(&v29, 0, sizeof(v29)), dladdr(v3, &v29)))
    {
      if (v29.dli_fname && *v29.dli_fname)
      {
        v7 = objc_alloc(MEMORY[0x1E696AEC0]);
        v8 = [v7 initWithUTF8String:v29.dli_fname];
      }

      else
      {
        v8 = 0;
      }

      if (v29.dli_sname && *v29.dli_sname)
      {
        v10 = objc_alloc(MEMORY[0x1E696AEC0]);
        v11 = [v10 initWithUTF8String:v29.dli_sname];
      }

      else
      {
        v11 = 0;
      }

      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __49__AFDictationConnection_initWithInstanceContext___block_invoke;
      v25[3] = &unk_1E7347250;
      v26 = v8;
      v27 = v11;
      v12 = v11;
      v13 = v8;
      v9 = [AFCallSiteInfo newWithBuilder:v25];
    }

    else
    {
      v9 = 0;
    }

    initiationCallSiteInfo = v6->_initiationCallSiteInfo;
    v6->_initiationCallSiteInfo = v9;

    v15 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v16 = v6->_initiationCallSiteInfo;
      LODWORD(v29.dli_fname) = 136315650;
      *(&v29.dli_fname + 4) = "[AFDictationConnection initWithInstanceContext:]";
      WORD2(v29.dli_fbase) = 2048;
      *(&v29.dli_fbase + 6) = v6;
      HIWORD(v29.dli_sname) = 2112;
      v29.dli_saddr = v16;
      _os_log_impl(&dword_1912FE000, v15, OS_LOG_TYPE_INFO, "%s %p (Caller = %@)", &v29, 0x20u);
    }

    v17 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v18 = dispatch_queue_create(0, v17);
    internalQueue = v6->_internalQueue;
    v6->_internalQueue = v18;

    objc_storeStrong(&v6->_delegateQueue, MEMORY[0x1E69E96A0]);
    v20 = objc_alloc_init(MEMORY[0x1E695DF88]);
    buffer = v6->_buffer;
    v6->_buffer = v20;

    v6->_audioStartTime = -1.0;
    if (contextCopy)
    {
      v22 = contextCopy;
    }

    else
    {
      v22 = +[AFInstanceContext defaultContext];
    }

    instanceContext = v6->_instanceContext;
    v6->_instanceContext = v22;
  }

  return v6;
}

void __49__AFDictationConnection_initWithInstanceContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setImagePath:v3];
  [v4 setSymbolName:*(a1 + 40)];
}

+ (void)fetchSupportedLanguageCodes:(id)codes
{
  codesCopy = codes;
  if (AFDictationCapable_onceToken != -1)
  {
    v7 = codesCopy;
    dispatch_once(&AFDictationCapable_onceToken, &__block_literal_global_82_45998);
    codesCopy = v7;
  }

  if (AFDictationCapable_isCapable)
  {
    if (!codesCopy)
    {
      goto LABEL_9;
    }

    v6 = codesCopy;
    v4 = AFPreferencesSupportedDictationLanguages();
    v5 = *(v6 + 2);
  }

  else
  {
    if (!codesCopy)
    {
      goto LABEL_9;
    }

    v6 = codesCopy;
    v4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"kAFAssistantErrorDomain" code:400 userInfo:0];
    v5 = *(v6 + 2);
  }

  v5();

  codesCopy = v6;
LABEL_9:
}

+ (BOOL)dictationIsSupportedForLanguageCode:(id)code error:(id *)error
{
  codeCopy = code;
  if (AFDictationCapable_onceToken != -1)
  {
    dispatch_once(&AFDictationCapable_onceToken, &__block_literal_global_82_45998);
  }

  if (AFDictationCapable_isCapable == 1)
  {
    if (AFPreferencesLanguageIsSupportedForDictation(codeCopy))
    {
      v6 = 0;
      if (!error)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    v7 = 401;
  }

  else
  {
    v7 = 400;
  }

  v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"kAFAssistantErrorDomain" code:v7 userInfo:0];
  if (error)
  {
LABEL_10:
    v6 = v6;
    *error = v6;
  }

LABEL_11:
  v8 = v6 == 0;

  return v8;
}

+ (BOOL)dictationIsEnabled
{
  v2 = +[AFPreferences sharedPreferences];
  if ([v2 dictationIsEnabled])
  {
    v3 = AFDictationRestricted() ^ 1;
  }

  else
  {
    v4 = +[AFPreferences sharedPreferences];
    if ([v4 assistantIsEnabled])
    {
      v3 = AFDictationRestricted() ^ 1;
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  return v3;
}

+ (BOOL)languageDetectorIsEnabled
{
  v2 = +[AFPreferences sharedPreferences];
  if ([v2 isLanguageDetectorEnabled])
  {
    isLanguageDetectorEnabledByServer = [v2 isLanguageDetectorEnabledByServer];
  }

  else
  {
    isLanguageDetectorEnabledByServer = 0;
  }

  return isLanguageDetectorEnabledByServer;
}

+ (void)getForcedOfflineDictationSupportedLanguagesWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.assistant.dictation" options:0];
  v5 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F05BED80];
  [v4 setRemoteObjectInterface:v5];

  [v4 resume];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __83__AFDictationConnection_getForcedOfflineDictationSupportedLanguagesWithCompletion___block_invoke;
  v14[3] = &unk_1E7348AD0;
  v6 = v4;
  v15 = v6;
  v7 = completionCopy;
  v16 = v7;
  v8 = [v6 remoteObjectProxyWithErrorHandler:v14];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __83__AFDictationConnection_getForcedOfflineDictationSupportedLanguagesWithCompletion___block_invoke_244;
  v11[3] = &unk_1E7349180;
  v12 = v6;
  v13 = v7;
  v9 = v6;
  v10 = v7;
  [v8 getInstalledOfflineLanguagesWithCompletion:v11];
}

void __83__AFDictationConnection_getForcedOfflineDictationSupportedLanguagesWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v5 = 136315394;
    v6 = "+[AFDictationConnection getForcedOfflineDictationSupportedLanguagesWithCompletion:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&dword_1912FE000, v4, OS_LOG_TYPE_INFO, "%s Offline language fetch failed: %@", &v5, 0x16u);
  }

  [*(a1 + 32) invalidate];
  (*(*(a1 + 40) + 16))();
}

uint64_t __83__AFDictationConnection_getForcedOfflineDictationSupportedLanguagesWithCompletion___block_invoke_244(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 invalidate];
}

- (void)sendEngagementFeedback:(int64_t)feedback voiceQueryIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __78__AFDictationConnection_Private__sendEngagementFeedback_voiceQueryIdentifier___block_invoke;
  v8[3] = &unk_1E73484C0;
  v9 = identifierCopy;
  feedbackCopy = feedback;
  v8[4] = self;
  v7 = identifierCopy;
  [(AFDictationConnection *)self _dispatchAsync:v8];
}

void __78__AFDictationConnection_Private__sendEngagementFeedback_voiceQueryIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _dictationService];
  [v2 _sendEngagementFeedback:*(a1 + 48) voiceQueryIdentifier:*(a1 + 40)];
}

- (void)startDictationWithSpeechFileAtURL:(id)l isNarrowBand:(BOOL)band options:(id)options forLanguage:(id)language
{
  lCopy = l;
  optionsCopy = options;
  languageCopy = language;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __101__AFDictationConnection_Private__startDictationWithSpeechFileAtURL_isNarrowBand_options_forLanguage___block_invoke;
  v16[3] = &unk_1E7344408;
  bandCopy = band;
  v16[4] = self;
  v17 = optionsCopy;
  v18 = lCopy;
  v19 = languageCopy;
  v13 = languageCopy;
  v14 = lCopy;
  v15 = optionsCopy;
  [(AFDictationConnection *)self _dispatchAsync:v16];
}

void __101__AFDictationConnection_Private__startDictationWithSpeechFileAtURL_isNarrowBand_options_forLanguage___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 136) = *(a1 + 64);
  *(*(a1 + 32) + 96) = [*(a1 + 40) forceOfflineRecognition];
  *(*(a1 + 32) + 59) = [*(a1 + 40) incremental];
  *(*(a1 + 32) + 60) = [*(a1 + 40) shouldClassifyIntent];
  *(*(a1 + 32) + 61) = [*(a1 + 40) shouldRecognizeCommands];
  [*(a1 + 32) _checkAndSetIsCapturingSpeech:1];
  v2 = [*(a1 + 32) _dictationService];
  [v2 _startDictationWithURL:*(a1 + 48) isNarrowBand:*(a1 + 64) language:*(a1 + 56) options:*(a1 + 40)];
}

- (void)preheatTestWithLanguage:(id)language options:(id)options
{
  v19 = *MEMORY[0x1E69E9840];
  languageCopy = language;
  optionsCopy = options;
  v8 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v16 = "[AFDictationConnection(Private) preheatTestWithLanguage:options:]";
    v17 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1912FE000, v8, OS_LOG_TYPE_INFO, "%s %p", buf, 0x16u);
  }

  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__AFDictationConnection_Private__preheatTestWithLanguage_options___block_invoke;
  block[3] = &unk_1E73494B0;
  block[4] = self;
  v13 = languageCopy;
  v14 = optionsCopy;
  v10 = optionsCopy;
  v11 = languageCopy;
  dispatch_async(internalQueue, block);
}

void __66__AFDictationConnection_Private__preheatTestWithLanguage_options___block_invoke(uint64_t a1)
{
  v2 = +[AFAnalytics sharedAnalytics];
  [v2 logEventWithType:2225 context:0];

  v3 = [*(a1 + 32) _dictationService];
  [v3 preheatTestWithLanguage:*(a1 + 40) options:*(a1 + 48)];
}

@end