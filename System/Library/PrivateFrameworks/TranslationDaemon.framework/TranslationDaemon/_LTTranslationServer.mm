@interface _LTTranslationServer
- (_LTTranslationServer)init;
- (id)_effectiveGroupIDForContext:(id)context;
- (id)_engineForContext:(id)context error:(id *)error;
- (id)_modalitiesPerLocale;
- (id)_offlineEngineForContext:(id)context error:(id *)error;
- (id)_onlineEngineForContext:(id)context error:(id *)error;
- (id)_prepareStabilizerForContext:(id)context;
- (id)startSpeechTranslationWithContext:(id)context delegate:(id)delegate;
- (id)startTextToSpeechTranslationWithContext:(id)context text:(id)text delegate:(id)delegate;
- (void)_cancelPendingSpeechOperations;
- (void)_cleanUpForContextIfNeeded:(id)needed;
- (void)_deleteHotfix:(id)hotfix;
- (void)_downloadAssetForLanguagePair:(id)pair userInitiated:(BOOL)initiated completion:(id)completion;
- (void)_getAssetSize:(id)size;
- (void)_logStateSoon;
- (void)_markPendingSpeechSessionIfNeededWithContext:(id)context effectiveSessionID:(id)d;
- (void)_modalitiesPerLocale;
- (void)_offlineLanguageStatus:(id)status;
- (void)_purgeAllAssetsExcludingConfig:(BOOL)config completion:(id)completion;
- (void)_purgeAssetForLanguagePair:(id)pair userInitiated:(BOOL)initiated completion:(id)completion;
- (void)_removePendingSpeechSessionID:(id)d;
- (void)_speechSessionCompleted;
- (void)_updateAllAssets:(id)assets;
- (void)_updateHotfix:(id)hotfix;
- (void)addSpeechAudioData:(id)data;
- (void)additionalLikelyPreferredLocalesForLocale:(id)locale completion:(id)completion;
- (void)attemptToCancelRequestsWithSessionID:(id)d;
- (void)autoDetectSpeechUnsupportedPairsWithCompletion:(id)completion;
- (void)availableLocalePairsForTask:(int64_t)task completion:(id)completion;
- (void)cancelExistingSessions;
- (void)cancelSpeechSession;
- (void)cancelSpeechSessionWithID:(id)d;
- (void)cleanup;
- (void)cleanupOfflineEngine;
- (void)configInfoForLocale:(id)locale otherLocale:(id)otherLocale completion:(id)completion;
- (void)endAudio;
- (void)ensureSelectedLocalesDownload;
- (void)installedLocales:(id)locales;
- (void)installedLocalesForTask:(int64_t)task completion:(id)completion;
- (void)languageAssetsWithOptions:(unint64_t)options completion:(id)completion;
- (void)languageForText:(id)text completion:(id)completion;
- (void)languagesForText:(id)text usingModel:(unint64_t)model strategy:(unint64_t)strategy completion:(id)completion;
- (void)modalitiesPerLocaleWithCompletion:(id)completion;
- (void)onDeviceModeEnabled:(id)enabled;
- (void)onDeviceModeSupported:(id)supported;
- (void)preheatWithContext:(id)context completion:(id)completion;
- (void)scheduleAssetCleanupWork:(id)work;
- (void)selfLoggingEventWithData:(id)data;
- (void)selfLoggingInvocationCancelledForIDs:(id)ds;
- (void)selfLoggingInvocationDidError:(id)error invocationId:(id)id;
- (void)selfLoggingLanguageIdentificationCompletedWithLIDData:(id)data;
- (void)setLanguageAssets:(id)assets options:(unint64_t)options progress:(id)progress completion:(id)completion;
- (void)shouldPresentSystemFirstUseConsent:(id)consent;
- (void)speak:(id)speak withContext:(id)context delegate:(id)delegate completion:(id)completion;
- (void)startInstallRequest:(id)request delegate:(id)delegate;
- (void)startLoggingRequest:(id)request;
- (void)task:(int64_t)task isSupportedInCountry:(id)country completion:(id)completion;
- (void)textStreamingConfigurationWithCompletion:(id)completion;
- (void)translateParagraphs:(id)paragraphs withContext:(id)context paragraphResult:(id)result completion:(id)completion;
- (void)translateSentence:(id)sentence withContext:(id)context completion:(id)completion;
- (void)translateStreamingInput:(id)input withContext:(id)context completion:(id)completion;
- (void)updateOVADStreamingState:(id)state;
@end

@implementation _LTTranslationServer

- (_LTTranslationServer)init
{
  v21.receiver = self;
  v21.super_class = _LTTranslationServer;
  v2 = [(_LTTranslationServer *)&v21 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.translationd.server", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = [[_LTDTranslationOperationScheduler alloc] initWithQueue:v2->_queue];
    translationEngineScheduler = v2->_translationEngineScheduler;
    v2->_translationEngineScheduler = v5;

    v7 = objc_alloc_init(_LTTextToSpeechCache);
    ttsCache = v2->_ttsCache;
    v2->_ttsCache = v7;

    v9 = objc_alloc_init(_LTLoggingRequestHandler);
    logger = v2->_logger;
    v2->_logger = v9;

    v11 = objc_alloc_init(_LTActivityLogger);
    activityLogger = v2->_activityLogger;
    v2->_activityLogger = v11;

    v13 = objc_alloc_init(_LTDSELFLoggingManager);
    selfLoggingManager = v2->_selfLoggingManager;
    v2->_selfLoggingManager = v13;

    v15 = [MEMORY[0x277CBEB58] set];
    pendingSpeechSessionIDs = v2->_pendingSpeechSessionIDs;
    v2->_pendingSpeechSessionIDs = v15;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    stabilizerMap = v2->_stabilizerMap;
    v2->_stabilizerMap = dictionary;

    [(_LTTranslationServer *)v2 _logStateSoon];
    v19 = v2;
  }

  return v2;
}

- (id)_offlineEngineForContext:(id)context error:(id *)error
{
  v65 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  dispatch_assert_queue_V2(self->_queue);
  IsDisabled = _LTPreferencesTranslationIsDisabled();
  if (IsDisabled)
  {
    v9 = _LTOSLogTranslationEngine(IsDisabled, v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [_LTTranslationServer _offlineEngineForContext:error:];
    }

    [MEMORY[0x277CCA9B8] lt_translationNotWorking];
    *error = v10 = 0;
  }

  else
  {
    p_offlineCachedEngine = &self->_offlineCachedEngine;
    v12 = self->_offlineCachedEngine;
    if (v12)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = v12;
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;

    taskHint = [(_LTTranslationEngine *)v14 taskHint];
    if (taskHint == [contextCopy taskHint] && (v16 = *p_offlineCachedEngine, objc_msgSend(contextCopy, "localePair"), v17 = objc_claimAutoreleasedReturnValue(), LODWORD(v16) = -[_LTTranslationEngine translatesPair:](v16, "translatesPair:", v17), v17, v16))
    {
      v20 = _LTOSLogTranslationEngine(v18, v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = v20;
        localePair = [contextCopy localePair];
        [(_LTTranslationEngine *)v14 taskHint];
        v23 = _LTTranslationTaskHintString();
        *buf = 138543618;
        v62 = localePair;
        v63 = 2114;
        v64 = v23;
        _os_log_impl(&dword_232E53000, v21, OS_LOG_TYPE_DEFAULT, "Reusing cached offline engine for locales: %{public}@, with taskHint: %{public}@", buf, 0x16u);
      }

      [(_LTTranslationServer *)self _updateOfflineEngineIdleTimer];
      v10 = self->_offlineCachedEngine;
    }

    else
    {
      v24 = *p_offlineCachedEngine;
      *p_offlineCachedEngine = 0;

      v25 = objc_alloc_init(_LTOfflineAssetManager);
      localePair2 = [contextCopy localePair];
      v57 = v25;
      v58 = 0;
      v27 = -[_LTOfflineAssetManager speechTranslationAssetInfoForLocalePair:taskHint:error:](v25, "speechTranslationAssetInfoForLocalePair:taskHint:error:", localePair2, [contextCopy taskHint], &v58);
      v28 = v58;

      if (v27)
      {
        v29 = [_LTOfflineTranslationEngine alloc];
        localePair3 = [contextCopy localePair];
        v10 = -[_LTOfflineTranslationEngine initWithLocalePair:taskHint:assetInfo:selfLoggingManager:](v29, "initWithLocalePair:taskHint:assetInfo:selfLoggingManager:", localePair3, [contextCopy taskHint], v27, self->_selfLoggingManager);

        asrModelURLs = [contextCopy asrModelURLs];
        [(_LTTranslationEngine *)v10 setAsrModelURLs:asrModelURLs];

        v34 = _LTOSLogTranslationEngine(v32, v33);
        v35 = os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);
        if (v35)
        {
          v37 = v34;
          localePair4 = [contextCopy localePair];
          [(_LTTranslationEngine *)v10 taskHint];
          v39 = _LTTranslationTaskHintString();
          *buf = 138543618;
          v62 = localePair4;
          v63 = 2114;
          v64 = v39;
          _os_log_impl(&dword_232E53000, v37, OS_LOG_TYPE_DEFAULT, "Created new offline engine for locales: %{public}@, with taskHint: %{public}@", buf, 0x16u);
        }

        v40 = _LTOSLogTranslationEngine(v35, v36);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
        {
          [_LTTranslationServer _offlineEngineForContext:v40 error:?];
        }

        mtModelURL = [contextCopy mtModelURL];
        [(_LTTranslationEngine *)v10 setMtModelURL:mtModelURL];

        [(_LTTranslationEngine *)v10 setTtsCache:self->_ttsCache];
        objc_storeStrong(&self->_offlineCachedEngine, v10);
        [(_LTTranslationServer *)self _updateOfflineEngineIdleTimer];
      }

      else
      {
        v56 = v14;
        if (!v28 || ([v28 domain], v42 = objc_claimAutoreleasedReturnValue(), v42, v42 == @"LTTranslationDaemonErrorDomain"))
        {
          v45 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v46 = MEMORY[0x277CCA9B8];
          v55 = *MEMORY[0x277CE1C58];
          v59[0] = *MEMORY[0x277CCA450];
          v47 = [v45 localizedStringForKey:@"GENERIC_FAILURE_ERROR_DESCRIPTION" value:&stru_284834138 table:0];
          v60[0] = v47;
          v59[1] = *MEMORY[0x277CCA470];
          v48 = [v45 localizedStringForKey:@"OFFLINE_MODELS_UNAVAILABLE_ERROR_DESCRIPTION" value:&stru_284834138 table:0];
          v60[1] = v48;
          v49 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v60 forKeys:v59 count:2];
          v50 = [v46 errorWithDomain:v55 code:16 userInfo:v49];

          v28 = v50;
        }

        v51 = _LTOSLogAssets(v43, v44);
        if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
        {
          [_LTTranslationServer _offlineEngineForContext:v51 error:contextCopy];
        }

        v14 = v56;
        if (error)
        {
          v52 = v28;
          *error = v28;
        }

        offlineCachedEngine = self->_offlineCachedEngine;
        self->_offlineCachedEngine = 0;

        [(_LTTranslationServer *)self _cancelOfflineEngineIdleTimer];
        v10 = 0;
      }
    }
  }

  return v10;
}

- (id)_onlineEngineForContext:(id)context error:(id *)error
{
  contextCopy = context;
  dispatch_assert_queue_V2(self->_queue);
  IsDisabled = _LTPreferencesTranslationIsDisabled();
  if (!IsDisabled)
  {
    v11 = _LTPreferencesSupportedLocalePairsForTask([contextCopy taskHint]);
    localePair = [contextCopy localePair];
    if ([v11 containsObject:localePair])
    {
    }

    else
    {
      localePair2 = [contextCopy localePair];
      isPassthrough = [localePair2 isPassthrough];

      if ((isPassthrough & 1) == 0)
      {
        v20 = _LTOSLogTranslationEngine(v15, v16);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          [_LTTranslationServer _onlineEngineForContext:error:];
        }

        v21 = MEMORY[0x277CCA9B8];
        localePair3 = [contextCopy localePair];
        v23 = [v21 lt_unsupporedLocalePairError:localePair3];

        if (error)
        {
          v24 = v23;
          *error = v23;
        }

        v10 = 0;
        goto LABEL_16;
      }
    }

    onlineCachedEngine = self->_onlineCachedEngine;
    if (!onlineCachedEngine)
    {
      v18 = [[_LTOnlineTranslationEngine alloc] initWithSelfLoggingManager:self->_selfLoggingManager];
      [(_LTOnlineTranslationEngine *)v18 setTtsCache:self->_ttsCache];
      [(_LTOnlineTranslationEngine *)v18 setServerQueue:self->_queue];
      v19 = self->_onlineCachedEngine;
      self->_onlineCachedEngine = v18;

      onlineCachedEngine = self->_onlineCachedEngine;
    }

    v10 = onlineCachedEngine;
LABEL_16:

    goto LABEL_17;
  }

  v9 = _LTOSLogTranslationEngine(IsDisabled, v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [_LTTranslationServer _onlineEngineForContext:error:];
  }

  [MEMORY[0x277CCA9B8] lt_translationNotWorking];
  *error = v10 = 0;
LABEL_17:

  return v10;
}

- (id)_engineForContext:(id)context error:(id *)error
{
  contextCopy = context;
  if ([contextCopy route] == 3)
  {
    v28 = 0;
    v7 = [(_LTTranslationServer *)self _offlineEngineForContext:contextCopy error:&v28];
    v8 = v28;
    v10 = v8;
    if (v7)
    {
      v11 = v7;
    }

    else
    {
      v18 = _LTOSLogTranslationEngine(v8, v9);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *v27 = 0;
        _os_log_impl(&dword_232E53000, v18, OS_LOG_TYPE_DEFAULT, "Preferred offline engine not available, using online", v27, 2u);
      }

      v11 = [(_LTTranslationServer *)self _onlineEngineForContext:contextCopy error:error];
    }

    v17 = v11;

    goto LABEL_17;
  }

  if ([contextCopy route] == 1)
  {
    v13 = _LTOSLogTranslationEngine(1, v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *v27 = 0;
      _os_log_impl(&dword_232E53000, v13, OS_LOG_TYPE_INFO, "Creating offline engine", v27, 2u);
    }

    v14 = [(_LTTranslationServer *)self _offlineEngineForContext:contextCopy error:error];
LABEL_12:
    v17 = v14;
    goto LABEL_17;
  }

  if ([contextCopy route] == 2)
  {
    v16 = _LTOSLogTranslationEngine(2, v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *v27 = 0;
      _os_log_impl(&dword_232E53000, v16, OS_LOG_TYPE_INFO, "Creating online engine", v27, 2u);
    }

    v14 = [(_LTTranslationServer *)self _onlineEngineForContext:contextCopy error:error];
    goto LABEL_12;
  }

  v21 = [(_LTTranslationServer *)self _onlineEngineForContext:contextCopy error:error];
  if (v21)
  {
    v22 = [(_LTTranslationServer *)self _offlineEngineForContext:contextCopy error:error];
    v24 = _LTOSLogTranslationEngine(v22, v23);
    v25 = v24;
    if (v22)
    {
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        *v27 = 0;
        _os_log_impl(&dword_232E53000, v25, OS_LOG_TYPE_INFO, "Creating combined engine", v27, 2u);
      }

      v17 = objc_alloc_init(_LTCombinedEngine);
      [(_LTCombinedEngine *)v17 setOfflineEngine:v22];
      [(_LTCombinedEngine *)v17 setOnlineEngine:v21];
    }

    else
    {
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [_LTTranslationServer _engineForContext:error:];
      }

      v17 = v21;
    }
  }

  else
  {
    v26 = _LTOSLogTranslationEngine(0, v20);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [_LTTranslationServer _engineForContext:error:];
    }

    v17 = 0;
  }

LABEL_17:

  return v17;
}

- (void)preheatWithContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  translationEngineScheduler = self->_translationEngineScheduler;
  sessionID = [contextCopy sessionID];
  route = [contextCopy route];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __54___LTTranslationServer_preheatWithContext_completion___block_invoke;
  v15[3] = &unk_2789B7E48;
  v16 = contextCopy;
  selfCopy = self;
  v18 = completionCopy;
  v19 = a2;
  v12 = completionCopy;
  v13 = contextCopy;
  v14 = [(_LTDTranslationOperationScheduler *)translationEngineScheduler scheduleOperationWithGroupID:sessionID route:route block:v15];
}

- (void)cancelExistingSessions
{
  v17 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  v5 = _LTOSLogTranslationEngine(v3, v4);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (v6)
  {
    LOWORD(v15) = 0;
    _os_log_impl(&dword_232E53000, v5, OS_LOG_TYPE_INFO, "Attempting to cancel any existing ASR or TTS sessions", &v15, 2u);
  }

  if (self->_speechSession)
  {
    v8 = _LTOSLogTranslationEngine(v6, v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      speechSession = self->_speechSession;
      v10 = v8;
      sessionID = [(_LTServerSpeechSession *)speechSession sessionID];
      v15 = 138543362;
      v16 = sessionID;
      _os_log_impl(&dword_232E53000, v10, OS_LOG_TYPE_INFO, "Cancel ongoing speech session: %{public}@", &v15, 0xCu);
    }

    [(_LTServerSpeechSession *)self->_speechSession cancel];
    v12 = self->_speechSession;
    self->_speechSession = 0;
  }

  if (self->_speakSession)
  {
    v13 = _LTOSLogTranslationEngine(v6, v7);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&dword_232E53000, v13, OS_LOG_TYPE_INFO, "Cancel ongoing speak session", &v15, 2u);
    }

    [(_LTServerSpeakSession *)self->_speakSession cancel];
    speakSession = self->_speakSession;
    self->_speakSession = 0;
  }
}

- (void)_cancelPendingSpeechOperations
{
  v23 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  allObjects = [(NSMutableSet *)self->_pendingSpeechSessionIDs allObjects];
  v4 = [allObjects count];
  v6 = _LTOSLogSpeech(v4, v5);
  v7 = v6;
  if (v4)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
      *buf = 134218242;
      v20 = [allObjects count];
      v21 = 2114;
      v22 = allObjects;
      _os_log_impl(&dword_232E53000, v8, OS_LOG_TYPE_DEFAULT, "Cancelling %zu sessionIDs for potentially pending speech requests: %{public}@", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_232E53000, v7, OS_LOG_TYPE_INFO, "No potentially pending speech requests sessionIDs were saved, so no need to cancel those requests", buf, 2u);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v9 = allObjects;
  v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [(_LTDTranslationOperationScheduler *)self->_translationEngineScheduler cancelOperationsWithGroupID:*(*(&v14 + 1) + 8 * v13++), v14];
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }

  [(NSMutableSet *)self->_pendingSpeechSessionIDs removeAllObjects];
}

- (void)translateSentence:(id)sentence withContext:(id)context completion:(id)completion
{
  sentenceCopy = sentence;
  contextCopy = context;
  completionCopy = completion;
  objc_initWeak(&location, self);
  [(_LTTranslationServer *)self _cleanUpForContextIfNeeded:contextCopy];
  translationEngineScheduler = self->_translationEngineScheduler;
  sessionID = [contextCopy sessionID];
  route = [contextCopy route];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __65___LTTranslationServer_translateSentence_withContext_completion___block_invoke;
  v19[3] = &unk_2789B7E98;
  v19[4] = self;
  v15 = contextCopy;
  v20 = v15;
  v23[1] = a2;
  v16 = completionCopy;
  v22 = v16;
  v17 = sentenceCopy;
  v21 = v17;
  objc_copyWeak(v23, &location);
  v18 = [(_LTDTranslationOperationScheduler *)translationEngineScheduler scheduleOperationWithGroupID:sessionID route:route block:v19];

  objc_destroyWeak(v23);
  objc_destroyWeak(&location);
}

- (void)translateParagraphs:(id)paragraphs withContext:(id)context paragraphResult:(id)result completion:(id)completion
{
  paragraphsCopy = paragraphs;
  contextCopy = context;
  resultCopy = result;
  completionCopy = completion;
  objc_initWeak(&location, self);
  [(_LTTranslationServer *)self _cleanUpForContextIfNeeded:contextCopy];
  translationEngineScheduler = self->_translationEngineScheduler;
  sessionID = [contextCopy sessionID];
  route = [contextCopy route];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __83___LTTranslationServer_translateParagraphs_withContext_paragraphResult_completion___block_invoke;
  v23[3] = &unk_2789B7EE8;
  v18 = paragraphsCopy;
  v24 = v18;
  v19 = contextCopy;
  v25 = v19;
  selfCopy = self;
  v29[1] = a2;
  v20 = completionCopy;
  v27 = v20;
  v21 = resultCopy;
  v28 = v21;
  objc_copyWeak(v29, &location);
  v22 = [(_LTDTranslationOperationScheduler *)translationEngineScheduler scheduleOperationWithGroupID:sessionID route:route block:v23];

  objc_destroyWeak(v29);
  objc_destroyWeak(&location);
}

- (void)translateStreamingInput:(id)input withContext:(id)context completion:(id)completion
{
  inputCopy = input;
  contextCopy = context;
  completionCopy = completion;
  objc_initWeak(&location, self);
  queue = self->_queue;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __71___LTTranslationServer_translateStreamingInput_withContext_completion___block_invoke;
  v16[3] = &unk_2789B7F60;
  objc_copyWeak(v20, &location);
  v20[1] = a2;
  v18 = inputCopy;
  v19 = completionCopy;
  v17 = contextCopy;
  v13 = inputCopy;
  v14 = completionCopy;
  v15 = contextCopy;
  dispatch_async(queue, v16);

  objc_destroyWeak(v20);
  objc_destroyWeak(&location);
}

- (id)_prepareStabilizerForContext:(id)context
{
  contextCopy = context;
  dispatch_assert_queue_V2(self->_queue);
  sessionID = [contextCopy sessionID];
  if (!sessionID)
  {
    v8 = _LTOSLogSpeech(0, v5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [_LTTranslationServer _prepareStabilizerForContext:];
    }

    goto LABEL_7;
  }

  if (![contextCopy enableOfflineStreamStabilizer])
  {
LABEL_7:
    v7 = 0;
    goto LABEL_8;
  }

  v7 = [(NSMutableDictionary *)self->_stabilizerMap objectForKeyedSubscript:sessionID];
  if (!v7)
  {
    v7 = objc_alloc_init(_LTDStreamStabilizer);
    [(NSMutableDictionary *)self->_stabilizerMap setObject:v7 forKeyedSubscript:sessionID];
  }

LABEL_8:

  return v7;
}

- (void)textStreamingConfigurationWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65___LTTranslationServer_textStreamingConfigurationWithCompletion___block_invoke;
  block[3] = &unk_2789B5418;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(queue, block);
}

- (id)startTextToSpeechTranslationWithContext:(id)context text:(id)text delegate:(id)delegate
{
  contextCopy = context;
  textCopy = text;
  delegateCopy = delegate;
  uUID = [MEMORY[0x277CCAD78] UUID];
  objc_initWeak(&location, self);
  [(_LTTranslationServer *)self _cleanUpForContextIfNeeded:contextCopy];
  v13 = [(_LTTranslationServer *)self _effectiveGroupIDForContext:contextCopy];
  [(_LTTranslationServer *)self _markPendingSpeechSessionIfNeededWithContext:contextCopy effectiveSessionID:v13];
  translationEngineScheduler = self->_translationEngineScheduler;
  route = [contextCopy route];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __78___LTTranslationServer_startTextToSpeechTranslationWithContext_text_delegate___block_invoke;
  v25[3] = &unk_2789B7FB0;
  objc_copyWeak(v32, &location);
  v16 = v13;
  v26 = v16;
  v17 = contextCopy;
  v27 = v17;
  selfCopy = self;
  v32[1] = a2;
  v18 = delegateCopy;
  v29 = v18;
  v19 = uUID;
  v30 = v19;
  v20 = textCopy;
  v31 = v20;
  v21 = [(_LTDTranslationOperationScheduler *)translationEngineScheduler scheduleOperationWithGroupID:v16 route:route block:v25];
  v22 = v31;
  v23 = v19;

  objc_destroyWeak(v32);
  objc_destroyWeak(&location);

  return v23;
}

- (void)speak:(id)speak withContext:(id)context delegate:(id)delegate completion:(id)completion
{
  speakCopy = speak;
  contextCopy = context;
  delegateCopy = delegate;
  completionCopy = completion;
  objc_initWeak(&location, self);
  [(_LTTranslationServer *)self _cleanUpForContextIfNeeded:contextCopy];
  v15 = [(_LTTranslationServer *)self _effectiveGroupIDForContext:contextCopy];
  [(_LTTranslationServer *)self _markPendingSpeechSessionIfNeededWithContext:contextCopy effectiveSessionID:v15];
  translationEngineScheduler = self->_translationEngineScheduler;
  route = [contextCopy route];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __62___LTTranslationServer_speak_withContext_delegate_completion___block_invoke;
  v24[3] = &unk_2789B8028;
  objc_copyWeak(v31, &location);
  v18 = v15;
  v25 = v18;
  v19 = contextCopy;
  v26 = v19;
  selfCopy = self;
  v31[1] = a2;
  v20 = completionCopy;
  v30 = v20;
  v21 = speakCopy;
  v28 = v21;
  v22 = delegateCopy;
  v29 = v22;
  v23 = [(_LTDTranslationOperationScheduler *)translationEngineScheduler scheduleOperationWithGroupID:v18 route:route block:v24];

  objc_destroyWeak(v31);
  objc_destroyWeak(&location);
}

- (id)startSpeechTranslationWithContext:(id)context delegate:(id)delegate
{
  contextCopy = context;
  delegateCopy = delegate;
  uUID = [MEMORY[0x277CCAD78] UUID];
  objc_initWeak(&location, self);
  [(_LTTranslationServer *)self _cleanUpForContextIfNeeded:contextCopy];
  v10 = [(_LTTranslationServer *)self _effectiveGroupIDForContext:contextCopy];
  [(_LTTranslationServer *)self _markPendingSpeechSessionIfNeededWithContext:contextCopy effectiveSessionID:v10];
  translationEngineScheduler = self->_translationEngineScheduler;
  route = [contextCopy route];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __67___LTTranslationServer_startSpeechTranslationWithContext_delegate___block_invoke;
  v21[3] = &unk_2789B8050;
  objc_copyWeak(v27, &location);
  v13 = v10;
  v22 = v13;
  v14 = contextCopy;
  v23 = v14;
  selfCopy = self;
  v15 = delegateCopy;
  v25 = v15;
  v27[1] = a2;
  v16 = uUID;
  v26 = v16;
  v17 = [(_LTDTranslationOperationScheduler *)translationEngineScheduler scheduleOperationWithGroupID:v13 route:route block:v21];
  v18 = v26;
  v19 = v16;

  objc_destroyWeak(v27);
  objc_destroyWeak(&location);

  return v19;
}

- (void)cancelSpeechSession
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __43___LTTranslationServer_cancelSpeechSession__block_invoke;
  v4[3] = &unk_2789B53F0;
  objc_copyWeak(&v5, &location);
  dispatch_async(queue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)cancelSpeechSessionWithID:(id)d
{
  dCopy = d;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50___LTTranslationServer_cancelSpeechSessionWithID___block_invoke;
  block[3] = &unk_2789B5288;
  objc_copyWeak(&v9, &location);
  v8 = dCopy;
  v6 = dCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)_speechSessionCompleted
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __47___LTTranslationServer__speechSessionCompleted__block_invoke;
  v4[3] = &unk_2789B53F0;
  objc_copyWeak(&v5, &location);
  dispatch_async(queue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)addSpeechAudioData:(id)data
{
  dataCopy = data;
  if (dataCopy)
  {
    objc_initWeak(&location, self);
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __43___LTTranslationServer_addSpeechAudioData___block_invoke;
    block[3] = &unk_2789B5288;
    objc_copyWeak(&v8, &location);
    v7 = dataCopy;
    dispatch_async(queue, block);

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

- (void)endAudio
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __32___LTTranslationServer_endAudio__block_invoke;
  v4[3] = &unk_2789B53F0;
  objc_copyWeak(&v5, &location);
  dispatch_async(queue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)autoDetectSpeechUnsupportedPairsWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71___LTTranslationServer_autoDetectSpeechUnsupportedPairsWithCompletion___block_invoke;
  block[3] = &unk_2789B5418;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(queue, block);
}

- (id)_modalitiesPerLocale
{
  v2 = _LTPreferencesSupportedLocales(1);
  v15 = 0;
  v3 = [_LTDConfigurationService asrConfigurationWithError:&v15];
  v4 = v15;
  v5 = v2;
  v7 = v5;
  if (v4)
  {
    v8 = _LTOSLogAssets(v5, v6);
    locales = v7;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [_LTTranslationServer _modalitiesPerLocale];
      locales = v7;
    }
  }

  else
  {
    locales = [v3 locales];
  }

  v10 = v7;
  v11 = [objc_alloc(MEMORY[0x277CE1B30]) initWithSupportedLocales:v10 asrLocales:locales ttsLocales:v10];
  v13 = _LTOSLogAssets(v11, v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [(_LTTranslationServer *)v13 _modalitiesPerLocale];
  }

  return v11;
}

- (void)modalitiesPerLocaleWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58___LTTranslationServer_modalitiesPerLocaleWithCompletion___block_invoke;
  v7[3] = &unk_2789B6D38;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(queue, v7);
}

- (id)_effectiveGroupIDForContext:(id)context
{
  contextCopy = context;
  sessionID = [contextCopy sessionID];
  if (sessionID || ![contextCopy cancelOnCleanup])
  {
    uUIDString = sessionID;
  }

  else
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
  }

  return uUIDString;
}

- (void)_markPendingSpeechSessionIfNeededWithContext:(id)context effectiveSessionID:(id)d
{
  contextCopy = context;
  dCopy = d;
  if (dCopy)
  {
    cancelOnCleanup = [contextCopy cancelOnCleanup];
    if (cancelOnCleanup)
    {
      v10 = _LTOSLogSpeech(cancelOnCleanup, v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [_LTTranslationServer _markPendingSpeechSessionIfNeededWithContext:effectiveSessionID:];
      }

      queue = self->_queue;
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __88___LTTranslationServer__markPendingSpeechSessionIfNeededWithContext_effectiveSessionID___block_invoke;
      v12[3] = &unk_2789B5990;
      v13 = dCopy;
      selfCopy = self;
      dispatch_async(queue, v12);
    }
  }
}

- (void)_removePendingSpeechSessionID:(id)d
{
  v10 = *MEMORY[0x277D85DE8];
  dCopy = d;
  dispatch_assert_queue_V2(self->_queue);
  if (dCopy)
  {
    v7 = _LTOSLogSpeech(v5, v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = 138543362;
      v9 = dCopy;
      _os_log_impl(&dword_232E53000, v7, OS_LOG_TYPE_INFO, "Removing a pending speech sessionID since it's starting: %{public}@", &v8, 0xCu);
    }

    [(NSMutableSet *)self->_pendingSpeechSessionIDs removeObject:dCopy];
  }
}

- (void)_cleanUpForContextIfNeeded:(id)needed
{
  cleanUpExistingSpeechSession = [needed cleanUpExistingSpeechSession];
  if (cleanUpExistingSpeechSession)
  {
    v6 = _LTOSLogSpeech(cleanUpExistingSpeechSession, v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_232E53000, v6, OS_LOG_TYPE_INFO, "Client requested performing a speech cleanup before translation", v7, 2u);
    }

    [(_LTTranslationServer *)self cleanup];
  }
}

- (void)_logStateSoon
{
  objc_initWeak(&location, self);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __37___LTTranslationServer__logStateSoon__block_invoke;
  v13[3] = &unk_2789B53F0;
  objc_copyWeak(&v14, &location);
  v3 = MEMORY[0x238398770](v13);
  v4 = dispatch_time(0, 5000000000);
  dispatch_after(v4, self->_queue, v3);
  v5 = self->_queue;
  v6 = MEMORY[0x277CBEBB8];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __37___LTTranslationServer__logStateSoon__block_invoke_47;
  v10[3] = &unk_2789B8078;
  v7 = v5;
  v11 = v7;
  v8 = v3;
  v12 = v8;
  v9 = [v6 scheduledTimerWithTimeInterval:1 repeats:v10 block:10800.0];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)startLoggingRequest:(id)request
{
  requestCopy = request;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44___LTTranslationServer_startLoggingRequest___block_invoke;
  block[3] = &unk_2789B5288;
  objc_copyWeak(&v9, &location);
  v8 = requestCopy;
  v6 = requestCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)cleanupOfflineEngine
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __44___LTTranslationServer_cleanupOfflineEngine__block_invoke;
  v4[3] = &unk_2789B53F0;
  objc_copyWeak(&v5, &location);
  dispatch_async(queue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)cleanup
{
  v3 = _LTOSLogSpeech(self, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_232E53000, v3, OS_LOG_TYPE_INFO, "Client requested scheduling of a cleanup of ongoing speech sessions", buf, 2u);
  }

  objc_initWeak(buf, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31___LTTranslationServer_cleanup__block_invoke;
  block[3] = &unk_2789B53F0;
  objc_copyWeak(&v6, buf);
  dispatch_async(queue, block);
  objc_destroyWeak(&v6);
  objc_destroyWeak(buf);
}

- (void)attemptToCancelRequestsWithSessionID:(id)d
{
  dCopy = d;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61___LTTranslationServer_attemptToCancelRequestsWithSessionID___block_invoke;
  block[3] = &unk_2789B5288;
  objc_copyWeak(&v9, &location);
  v8 = dCopy;
  v6 = dCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)shouldPresentSystemFirstUseConsent:(id)consent
{
  consentCopy = consent;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59___LTTranslationServer_shouldPresentSystemFirstUseConsent___block_invoke;
  block[3] = &unk_2789B5418;
  v8 = consentCopy;
  v6 = consentCopy;
  dispatch_async(queue, block);
}

- (void)languageForText:(id)text completion:(id)completion
{
  textCopy = text;
  completionCopy = completion;
  queue = self->_queue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __51___LTTranslationServer_languageForText_completion___block_invoke;
  v11[3] = &unk_2789B6B60;
  v12 = textCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = textCopy;
  dispatch_async(queue, v11);
}

- (void)languagesForText:(id)text usingModel:(unint64_t)model strategy:(unint64_t)strategy completion:(id)completion
{
  textCopy = text;
  completionCopy = completion;
  queue = self->_queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __72___LTTranslationServer_languagesForText_usingModel_strategy_completion___block_invoke;
  v15[3] = &unk_2789B5818;
  modelCopy = model;
  strategyCopy = strategy;
  v16 = textCopy;
  v17 = completionCopy;
  v13 = completionCopy;
  v14 = textCopy;
  dispatch_async(queue, v15);
}

- (void)languageAssetsWithOptions:(unint64_t)options completion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __61___LTTranslationServer_languageAssetsWithOptions_completion___block_invoke;
  v9[3] = &unk_2789B5E78;
  v10 = completionCopy;
  optionsCopy = options;
  v8 = completionCopy;
  dispatch_async(queue, v9);
}

- (void)setLanguageAssets:(id)assets options:(unint64_t)options progress:(id)progress completion:(id)completion
{
  assetsCopy = assets;
  progressCopy = progress;
  completionCopy = completion;
  queue = self->_queue;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __70___LTTranslationServer_setLanguageAssets_options_progress_completion___block_invoke;
  v17[3] = &unk_2789B80A0;
  v18 = assetsCopy;
  v19 = progressCopy;
  v20 = completionCopy;
  optionsCopy = options;
  v14 = completionCopy;
  v15 = progressCopy;
  v16 = assetsCopy;
  dispatch_async(queue, v17);
}

- (void)_offlineLanguageStatus:(id)status
{
  statusCopy = status;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47___LTTranslationServer__offlineLanguageStatus___block_invoke;
  block[3] = &unk_2789B5418;
  v8 = statusCopy;
  v6 = statusCopy;
  dispatch_async(queue, block);
}

- (void)_downloadAssetForLanguagePair:(id)pair userInitiated:(BOOL)initiated completion:(id)completion
{
  pairCopy = pair;
  completionCopy = completion;
  queue = self->_queue;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __79___LTTranslationServer__downloadAssetForLanguagePair_userInitiated_completion___block_invoke;
  v14[3] = &unk_2789B80F0;
  initiatedCopy = initiated;
  v16 = completionCopy;
  v17 = a2;
  v15 = pairCopy;
  v12 = completionCopy;
  v13 = pairCopy;
  dispatch_async(queue, v14);
}

- (void)_purgeAssetForLanguagePair:(id)pair userInitiated:(BOOL)initiated completion:(id)completion
{
  pairCopy = pair;
  completionCopy = completion;
  queue = self->_queue;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __76___LTTranslationServer__purgeAssetForLanguagePair_userInitiated_completion___block_invoke;
  v14[3] = &unk_2789B80F0;
  initiatedCopy = initiated;
  v16 = completionCopy;
  v17 = a2;
  v15 = pairCopy;
  v12 = completionCopy;
  v13 = pairCopy;
  dispatch_async(queue, v14);
}

- (void)_purgeAllAssetsExcludingConfig:(BOOL)config completion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66___LTTranslationServer__purgeAllAssetsExcludingConfig_completion___block_invoke;
  block[3] = &unk_2789B8118;
  configCopy = config;
  v11 = completionCopy;
  v12 = a2;
  v9 = completionCopy;
  dispatch_async(queue, block);
}

- (void)_updateAllAssets:(id)assets
{
  assetsCopy = assets;
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __41___LTTranslationServer__updateAllAssets___block_invoke;
  v8[3] = &unk_2789B5E78;
  v9 = assetsCopy;
  v10 = a2;
  v7 = assetsCopy;
  dispatch_async(queue, v8);
}

- (void)installedLocales:(id)locales
{
  localesCopy = locales;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41___LTTranslationServer_installedLocales___block_invoke;
  block[3] = &unk_2789B5418;
  v8 = localesCopy;
  v6 = localesCopy;
  dispatch_async(queue, block);
}

- (void)ensureSelectedLocalesDownload
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __53___LTTranslationServer_ensureSelectedLocalesDownload__block_invoke;
  v4[3] = &unk_2789B53F0;
  objc_copyWeak(&v5, &location);
  dispatch_async(queue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)installedLocalesForTask:(int64_t)task completion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59___LTTranslationServer_installedLocalesForTask_completion___block_invoke;
  block[3] = &unk_2789B5F18;
  objc_copyWeak(&v10, &location);
  v9 = completionCopy;
  v7 = completionCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)startInstallRequest:(id)request delegate:(id)delegate
{
  requestCopy = request;
  delegateCopy = delegate;
  queue = self->_queue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __53___LTTranslationServer_startInstallRequest_delegate___block_invoke;
  v11[3] = &unk_2789B5990;
  v12 = requestCopy;
  v13 = delegateCopy;
  v9 = delegateCopy;
  v10 = requestCopy;
  dispatch_async(queue, v11);
}

- (void)_getAssetSize:(id)size
{
  sizeCopy = size;
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __38___LTTranslationServer__getAssetSize___block_invoke;
  v8[3] = &unk_2789B5E78;
  v9 = sizeCopy;
  v10 = a2;
  v7 = sizeCopy;
  dispatch_async(queue, v8);
}

- (void)availableLocalePairsForTask:(int64_t)task completion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __63___LTTranslationServer_availableLocalePairsForTask_completion___block_invoke;
  v9[3] = &unk_2789B5E78;
  v10 = completionCopy;
  taskCopy = task;
  v8 = completionCopy;
  dispatch_async(queue, v9);
}

- (void)additionalLikelyPreferredLocalesForLocale:(id)locale completion:(id)completion
{
  localeCopy = locale;
  completionCopy = completion;
  queue = self->_queue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __77___LTTranslationServer_additionalLikelyPreferredLocalesForLocale_completion___block_invoke;
  v11[3] = &unk_2789B6D38;
  v12 = localeCopy;
  v13 = completionCopy;
  v9 = localeCopy;
  v10 = completionCopy;
  dispatch_async(queue, v11);
}

- (void)configInfoForLocale:(id)locale otherLocale:(id)otherLocale completion:(id)completion
{
  localeCopy = locale;
  otherLocaleCopy = otherLocale;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67___LTTranslationServer_configInfoForLocale_otherLocale_completion___block_invoke;
  block[3] = &unk_2789B81B0;
  v17 = otherLocaleCopy;
  v18 = completionCopy;
  v16 = localeCopy;
  v12 = otherLocaleCopy;
  v13 = localeCopy;
  v14 = completionCopy;
  dispatch_async(queue, block);
}

- (void)task:(int64_t)task isSupportedInCountry:(id)country completion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61___LTTranslationServer_task_isSupportedInCountry_completion___block_invoke;
  block[3] = &unk_2789B5418;
  v10 = completionCopy;
  v8 = completionCopy;
  dispatch_async(queue, block);
}

- (void)_updateHotfix:(id)hotfix
{
  hotfixCopy = hotfix;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38___LTTranslationServer__updateHotfix___block_invoke;
  block[3] = &unk_2789B5418;
  v8 = hotfixCopy;
  v6 = hotfixCopy;
  dispatch_async(queue, block);
}

- (void)_deleteHotfix:(id)hotfix
{
  hotfixCopy = hotfix;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38___LTTranslationServer__deleteHotfix___block_invoke;
  block[3] = &unk_2789B5418;
  v8 = hotfixCopy;
  v6 = hotfixCopy;
  dispatch_async(queue, block);
}

- (void)onDeviceModeEnabled:(id)enabled
{
  enabledCopy = enabled;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44___LTTranslationServer_onDeviceModeEnabled___block_invoke;
  block[3] = &unk_2789B5418;
  v8 = enabledCopy;
  v6 = enabledCopy;
  dispatch_async(queue, block);
}

- (void)onDeviceModeSupported:(id)supported
{
  supportedCopy = supported;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46___LTTranslationServer_onDeviceModeSupported___block_invoke;
  block[3] = &unk_2789B5418;
  v8 = supportedCopy;
  v6 = supportedCopy;
  dispatch_async(queue, block);
}

- (void)selfLoggingEventWithData:(id)data
{
  dataCopy = data;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49___LTTranslationServer_selfLoggingEventWithData___block_invoke;
  block[3] = &unk_2789B5288;
  objc_copyWeak(&v9, &location);
  v8 = dataCopy;
  v6 = dataCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)selfLoggingLanguageIdentificationCompletedWithLIDData:(id)data
{
  dataCopy = data;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78___LTTranslationServer_selfLoggingLanguageIdentificationCompletedWithLIDData___block_invoke;
  block[3] = &unk_2789B5288;
  objc_copyWeak(&v9, &location);
  v8 = dataCopy;
  v6 = dataCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)selfLoggingInvocationCancelledForIDs:(id)ds
{
  dsCopy = ds;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61___LTTranslationServer_selfLoggingInvocationCancelledForIDs___block_invoke;
  block[3] = &unk_2789B5288;
  objc_copyWeak(&v9, &location);
  v8 = dsCopy;
  v6 = dsCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)selfLoggingInvocationDidError:(id)error invocationId:(id)id
{
  errorCopy = error;
  idCopy = id;
  objc_initWeak(&location, self);
  queue = self->_queue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __67___LTTranslationServer_selfLoggingInvocationDidError_invocationId___block_invoke;
  v11[3] = &unk_2789B6C78;
  objc_copyWeak(&v14, &location);
  v12 = idCopy;
  v13 = errorCopy;
  v9 = errorCopy;
  v10 = idCopy;
  dispatch_async(queue, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)updateOVADStreamingState:(id)state
{
  stateCopy = state;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49___LTTranslationServer_updateOVADStreamingState___block_invoke;
  block[3] = &unk_2789B5288;
  objc_copyWeak(&v9, &location);
  v8 = stateCopy;
  v6 = stateCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)scheduleAssetCleanupWork:(id)work
{
  workCopy = work;
  objc_initWeak(&location, self);
  translationEngineScheduler = self->_translationEngineScheduler;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __49___LTTranslationServer_scheduleAssetCleanupWork___block_invoke;
  v8[3] = &unk_2789B8228;
  v6 = workCopy;
  v9 = v6;
  objc_copyWeak(&v10, &location);
  v7 = [(_LTDTranslationOperationScheduler *)translationEngineScheduler scheduleOperationWithGroupID:0 route:1 block:v8];
  objc_destroyWeak(&v10);

  objc_destroyWeak(&location);
}

- (void)_offlineEngineForContext:(void *)a1 error:.cold.1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_7() mtModelURL];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_11();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0xCu);
}

- (void)_offlineEngineForContext:(void *)a1 error:(void *)a2 .cold.2(void *a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a1;
  v5 = [OUTLINED_FUNCTION_7() localePair];
  v6 = [v5 identifier];
  [a2 taskHint];
  v7 = _LTTranslationTaskHintString();
  v8 = 138543618;
  v9 = v6;
  v10 = 2114;
  v11 = v7;
  _os_log_error_impl(&dword_232E53000, v2, OS_LOG_TYPE_ERROR, "No asset info found for pair %{public}@, taskHint: %{public}@", &v8, 0x16u);
}

- (void)_offlineEngineForContext:error:.cold.3()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_onlineEngineForContext:error:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_onlineEngineForContext:error:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_prepareStabilizerForContext:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_modalitiesPerLocale
{
  selfCopy = self;
  v3 = [OUTLINED_FUNCTION_7() debugDescription];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_11();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0xCu);
}

- (void)_markPendingSpeechSessionIfNeededWithContext:effectiveSessionID:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_11();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end