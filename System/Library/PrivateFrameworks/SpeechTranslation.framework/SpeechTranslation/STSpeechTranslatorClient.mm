@interface STSpeechTranslatorClient
+ (id)_newPeerContextWithConfiguration:(id)configuration;
+ (id)_newPeerContextWithTranslatorIdentifier:(id)identifier;
- (AVAudioFormat)preferredTranslatedAudioFormat;
- (BOOL)_setUpPeerProviderWhileLocked:(id)locked withContext:(id)context;
- (NSString)description;
- (STSpeechTranslatorClient)initWithConfiguration:(id)configuration delegate:(id)delegate delegateQueue:(id)queue;
- (STSpeechTranslatorClient)initWithTranslatorIdentifier:(id)identifier delegate:(id)delegate delegateQueue:(id)queue;
- (id)_descriptionWhileLocked;
- (id)_initWithPeerContext:(id)context delegate:(id)delegate delegateQueue:(id)queue;
- (id)_initWithPeerProvider:(id)provider peerContext:(id)context delegate:(id)delegate delegateQueue:(id)queue;
- (void)_invalidateWhileLocked;
- (void)_notifyClientOfStartWithError:(id)error;
- (void)_notifyCompletionHandlers:(id)handlers withSourceFormat:(id)format currentlyHoldingLock:(BOOL)lock;
- (void)_prefetchPreferredSourceAudioFormat;
- (void)_processPreferredSourceFormatResponse:(id)response currentlyHoldingLock:(BOOL)lock;
- (void)_setUpDelegateQueue:(id)queue;
- (void)audioGenerationDidFinish;
- (void)clientShouldDisconnect;
- (void)didGenerateTranslatedAudio:(id)audio;
- (void)invalidate;
- (void)lookUpPreferredInputAudioFormatWithCompletionHandler:(id)handler;
- (void)pauseTranslationWithReason:(id)reason;
- (void)producedTranscription:(id)transcription;
- (void)producedTranslation:(id)translation;
- (void)resumeTranslation;
- (void)setPreferredTranslatedAudioFormat:(id)format;
- (void)setProduceAudio:(BOOL)audio;
- (void)setProduceTranscripts:(BOOL)transcripts;
- (void)setProduceTranslatedText:(BOOL)text;
- (void)startTranslationWithCompletionHandler:(id)handler;
- (void)stopTranslation;
- (void)translateAudioSamples:(id)samples;
- (void)translationDidPauseWithReason:(id)reason;
- (void)translationDidResume;
- (void)translationDidStart;
- (void)translationDidStopWithError:(id)error;
- (void)willStartTranslatedAudioWithMetadata:(id)metadata;
@end

@implementation STSpeechTranslatorClient

- (void)setProduceTranscripts:(BOOL)transcripts
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __50__STSpeechTranslatorClient_setProduceTranscripts___block_invoke;
  v4[3] = &unk_279CF7BF8;
  v4[4] = self;
  transcriptsCopy = transcripts;
  os_unfair_lock_assert_not_owner(&self->_stateLock);
  os_unfair_lock_lock(&self->_stateLock);
  __50__STSpeechTranslatorClient_setProduceTranscripts___block_invoke(v4);
  os_unfair_lock_unlock(&self->_stateLock);
}

void __50__STSpeechTranslatorClient_setProduceTranscripts___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if ((*(v1 + 12) & 1) == 0 && *(v1 + 80) != *(a1 + 40))
  {
    WeakRetained = objc_loadWeakRetained((v1 + 16));
    if (objc_opt_respondsToSelector())
    {
      *(*(a1 + 32) + 80) = *(a1 + 40);
      v4 = [*(*(a1 + 32) + 24) translatorPeer];
      [v4 setProduceTranscripts:*(a1 + 40)];

      v7 = _LTOSLogSTMultiprocess(v5, v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = *(a1 + 32);
        v9 = v7;
        v10 = [v8 _descriptionWhileLocked];
        v11 = *(a1 + 40);
        v12 = 138543618;
        v13 = v10;
        v14 = 1024;
        v15 = v11;
        _os_log_impl(&dword_26B5BC000, v9, OS_LOG_TYPE_INFO, "client: %{public}@ setting produceTranscripts: %{BOOL}d", &v12, 0x12u);
      }
    }
  }
}

- (void)setProduceTranslatedText:(BOOL)text
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __53__STSpeechTranslatorClient_setProduceTranslatedText___block_invoke;
  v4[3] = &unk_279CF7BF8;
  v4[4] = self;
  textCopy = text;
  os_unfair_lock_assert_not_owner(&self->_stateLock);
  os_unfair_lock_lock(&self->_stateLock);
  __53__STSpeechTranslatorClient_setProduceTranslatedText___block_invoke(v4);
  os_unfair_lock_unlock(&self->_stateLock);
}

void __53__STSpeechTranslatorClient_setProduceTranslatedText___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if ((*(v1 + 12) & 1) == 0 && *(v1 + 81) != *(a1 + 40))
  {
    WeakRetained = objc_loadWeakRetained((v1 + 16));
    if (objc_opt_respondsToSelector())
    {
      *(*(a1 + 32) + 81) = *(a1 + 40);
      v4 = [*(*(a1 + 32) + 24) translatorPeer];
      [v4 setProduceTranslatedText:*(a1 + 40)];

      v7 = _LTOSLogSTMultiprocess(v5, v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = *(a1 + 32);
        v9 = v7;
        v10 = [v8 _descriptionWhileLocked];
        v11 = *(a1 + 40);
        v12 = 138543618;
        v13 = v10;
        v14 = 1024;
        v15 = v11;
        _os_log_impl(&dword_26B5BC000, v9, OS_LOG_TYPE_INFO, "client: %{public}@ setting produceTranslatedText: %{BOOL}d", &v12, 0x12u);
      }
    }
  }
}

- (void)setProduceAudio:(BOOL)audio
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __44__STSpeechTranslatorClient_setProduceAudio___block_invoke;
  v4[3] = &unk_279CF7BF8;
  v4[4] = self;
  audioCopy = audio;
  os_unfair_lock_assert_not_owner(&self->_stateLock);
  os_unfair_lock_lock(&self->_stateLock);
  __44__STSpeechTranslatorClient_setProduceAudio___block_invoke(v4);
  os_unfair_lock_unlock(&self->_stateLock);
}

void __44__STSpeechTranslatorClient_setProduceAudio___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if ((*(v1 + 12) & 1) == 0 && *(v1 + 82) != *(a1 + 40))
  {
    WeakRetained = objc_loadWeakRetained((v1 + 16));
    if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
    {
      *(*(a1 + 32) + 82) = *(a1 + 40);
      v4 = [*(*(a1 + 32) + 24) translatorPeer];
      [v4 setProduceAudio:*(a1 + 40)];

      v7 = _LTOSLogSTMultiprocess(v5, v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = *(a1 + 32);
        v9 = v7;
        v10 = [v8 _descriptionWhileLocked];
        v11 = *(a1 + 40);
        v12 = 138543618;
        v13 = v10;
        v14 = 1024;
        v15 = v11;
        _os_log_impl(&dword_26B5BC000, v9, OS_LOG_TYPE_INFO, "client: %{public}@ setting produceAudio: %{BOOL}d", &v12, 0x12u);
      }
    }
  }
}

- (STSpeechTranslatorClient)initWithConfiguration:(id)configuration delegate:(id)delegate delegateQueue:(id)queue
{
  v24 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  delegateCopy = delegate;
  queueCopy = queue;
  v12 = [STSpeechTranslatorClient _newPeerContextWithConfiguration:configurationCopy];
  if (v12)
  {
    v13 = [(STSpeechTranslatorClient *)self _initWithPeerContext:v12 delegate:delegateCopy delegateQueue:queueCopy];
    v14 = v13;
  }

  else
  {
    v15 = _LTOSLogSTMultiprocess(0, v11);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v19 = configurationCopy;
      v20 = 2048;
      v21 = delegateCopy;
      v22 = 2114;
      v23 = queueCopy;
      _os_log_error_impl(&dword_26B5BC000, v15, OS_LOG_TYPE_ERROR, "Failed to initialize peerProviderContext for STSpeechTranslatorClient configuration: %{public}@ delegate: %p delegateQueue: %{public}@", buf, 0x20u);
    }

    v17.receiver = self;
    v17.super_class = STSpeechTranslatorClient;
    v13 = [(STSpeechTranslatorClient *)&v17 init];
    v14 = 0;
  }

  return v14;
}

- (STSpeechTranslatorClient)initWithTranslatorIdentifier:(id)identifier delegate:(id)delegate delegateQueue:(id)queue
{
  v24 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  delegateCopy = delegate;
  queueCopy = queue;
  v12 = [STSpeechTranslatorClient _newPeerContextWithTranslatorIdentifier:identifierCopy];
  if (v12)
  {
    v13 = [(STSpeechTranslatorClient *)self _initWithPeerContext:v12 delegate:delegateCopy delegateQueue:queueCopy];
    v14 = v13;
  }

  else
  {
    v15 = _LTOSLogSTMultiprocess(0, v11);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v19 = identifierCopy;
      v20 = 2048;
      v21 = delegateCopy;
      v22 = 2114;
      v23 = queueCopy;
      _os_log_error_impl(&dword_26B5BC000, v15, OS_LOG_TYPE_ERROR, "Failed to initialize peerProviderContext for STSpeechTranslatorClient translatorIdentifier: %{public}@ delegate: %p delegateQueue: %{public}@", buf, 0x20u);
    }

    v17.receiver = self;
    v17.super_class = STSpeechTranslatorClient;
    v13 = [(STSpeechTranslatorClient *)&v17 init];
    v14 = 0;
  }

  return v14;
}

- (void)invalidate
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __38__STSpeechTranslatorClient_invalidate__block_invoke;
  v3[3] = &unk_279CF7C20;
  v3[4] = self;
  os_unfair_lock_assert_not_owner(&self->_stateLock);
  os_unfair_lock_lock(&self->_stateLock);
  __38__STSpeechTranslatorClient_invalidate__block_invoke(v3);
  os_unfair_lock_unlock(&self->_stateLock);
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = STSpeechTranslatorClient;
  v4 = [(STSpeechTranslatorClient *)&v8 description];
  translatorIdentifier = [(STSpeechTranslatorClient *)self translatorIdentifier];
  v6 = [v3 stringWithFormat:@"%@ identifier: %@", v4, translatorIdentifier];

  return v6;
}

- (void)startTranslationWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v8 = __66__STSpeechTranslatorClient_startTranslationWithCompletionHandler___block_invoke;
  v9 = &unk_279CF7C70;
  selfCopy = self;
  v12 = &v13;
  v5 = handlerCopy;
  v11 = v5;
  v6 = v7;
  os_unfair_lock_assert_not_owner(&self->_stateLock);
  os_unfair_lock_lock(&self->_stateLock);
  v8(v6);

  os_unfair_lock_unlock(&self->_stateLock);
  if (v14[5])
  {
    v5[2](v5);
  }

  _Block_object_dispose(&v13, 8);
}

void __66__STSpeechTranslatorClient_startTranslationWithCompletionHandler___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (*(v2 + 12) == 1)
  {
    v3 = [MEMORY[0x277CCA9B8] st_errorForCode:7];
LABEL_5:
    *(*(*(a1 + 48) + 8) + 40) = v3;

    MEMORY[0x2821F96F8]();
    return;
  }

  if (*(v2 + 40))
  {
    v3 = [MEMORY[0x277CCA9B8] st_errorForCode:8];
    goto LABEL_5;
  }

  v4 = _Block_copy(*(a1 + 40));
  v5 = *(a1 + 32);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v9 = _LTOSLogSTMultiprocess(v7, v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = *(a1 + 32);
    v11 = v9;
    v12 = [v10 _descriptionWhileLocked];
    *buf = 138543362;
    v17 = v12;
    _os_log_impl(&dword_26B5BC000, v11, OS_LOG_TYPE_INFO, "Client: %{public}@ requesting startTranslation", buf, 0xCu);
  }

  objc_initWeak(buf, *(a1 + 32));
  v13 = [*(*(a1 + 32) + 24) translatorPeer];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __66__STSpeechTranslatorClient_startTranslationWithCompletionHandler___block_invoke_16;
  v14[3] = &unk_279CF7C48;
  objc_copyWeak(&v15, buf);
  [v13 startTranslationWithReply:v14];

  objc_destroyWeak(&v15);
  objc_destroyWeak(buf);
}

void __66__STSpeechTranslatorClient_startTranslationWithCompletionHandler___block_invoke_16(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _notifyClientOfStartWithError:v5];
  }
}

- (void)stopTranslation
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __43__STSpeechTranslatorClient_stopTranslation__block_invoke;
  v3[3] = &unk_279CF7C20;
  v3[4] = self;
  os_unfair_lock_assert_not_owner(&self->_stateLock);
  os_unfair_lock_lock(&self->_stateLock);
  (__43__STSpeechTranslatorClient_stopTranslation__block_invoke)(v3);
  os_unfair_lock_unlock(&self->_stateLock);
}

void __43__STSpeechTranslatorClient_stopTranslation__block_invoke(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if ((*(*(a1 + 32) + 12) & 1) == 0)
  {
    v3 = _LTOSLogSTMultiprocess(a1, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 32);
      v5 = v3;
      v6 = [v4 _descriptionWhileLocked];
      v8 = 138543362;
      v9 = v6;
      _os_log_impl(&dword_26B5BC000, v5, OS_LOG_TYPE_INFO, "Client: %{public}@ requesting stopTranslation", &v8, 0xCu);
    }

    v7 = [*(*(a1 + 32) + 24) translatorPeer];
    [v7 stopTranslation];
  }
}

- (id)_descriptionWhileLocked
{
  os_unfair_lock_assert_owner(&self->_stateLock);
  if (self->_preferredSourceAudioFormat)
  {
    v3 = &stru_287C19BE0;
  }

  else
  {
    if (self->_preferredSourceAudioFormatLookedUp)
    {
      v4 = "YES";
    }

    else
    {
      v4 = "NO";
    }

    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@" cached: %s", v4];
  }

  v5 = MEMORY[0x277CCACA8];
  v6 = [(STSpeechTranslatorClient *)self description];
  v7 = [v5 stringWithFormat:@"{ %@ inputFormat: %@%@ outputFormat: %@ }", v6, self->_preferredSourceAudioFormat, v3, self->_preferredTranslatedAudioFormat];

  return v7;
}

+ (id)_newPeerContextWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v4 = [[_STPeerProviderContext alloc] initWithConfiguration:configurationCopy];

  return v4;
}

+ (id)_newPeerContextWithTranslatorIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [[_STPeerProviderContext alloc] initWithIdentifier:identifierCopy];

  return v4;
}

- (void)_setUpDelegateQueue:(id)queue
{
  queueCopy = queue;
  v7 = queueCopy;
  if (!queueCopy)
  {
    v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    queueCopy = dispatch_queue_create("com.apple.speechtranslation.STSpeechTranslatorClient.delegate", v5);
  }

  delegateQueue = self->_delegateQueue;
  self->_delegateQueue = queueCopy;
}

- (BOOL)_setUpPeerProviderWhileLocked:(id)locked withContext:(id)context
{
  lockedCopy = locked;
  contextCopy = context;
  os_unfair_lock_assert_owner(&self->_stateLock);
  v9 = [lockedCopy setUpPeerForDelegate:self context:contextCopy];
  if (v9)
  {
    synchronousTranslatorPeer = [lockedCopy synchronousTranslatorPeer];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __70__STSpeechTranslatorClient__setUpPeerProviderWhileLocked_withContext___block_invoke;
    v19[3] = &unk_279CF7C98;
    v19[4] = self;
    [synchronousTranslatorPeer obtainIdentifierInReply:v19];

    translatorIdentifier = [(STSpeechTranslatorClient *)self translatorIdentifier];
    v13 = translatorIdentifier != 0;

    if (translatorIdentifier)
    {
      objc_storeStrong(&self->_peerProvider, locked);
    }

    else
    {
      v17 = _LTOSLogSTMultiprocess(v14, v15);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [STSpeechTranslatorClient _setUpPeerProviderWhileLocked:withContext:];
      }
    }
  }

  else
  {
    v16 = _LTOSLogSTMultiprocess(v9, v10);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [STSpeechTranslatorClient _setUpPeerProviderWhileLocked:withContext:];
    }

    v13 = 0;
  }

  return v13;
}

- (id)_initWithPeerProvider:(id)provider peerContext:(id)context delegate:(id)delegate delegateQueue:(id)queue
{
  v55 = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  contextCopy = context;
  delegateCopy = delegate;
  queueCopy = queue;
  v48.receiver = self;
  v48.super_class = STSpeechTranslatorClient;
  v14 = [(STSpeechTranslatorClient *)&v48 init];
  v16 = v14;
  if (v14)
  {
    v14->_stateLock._os_unfair_lock_opaque = 0;
    v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
    formatHandlers = v16->_formatHandlers;
    v16->_formatHandlers = v17;

    objc_storeWeak(&v16->_delegate, delegateCopy);
    [(STSpeechTranslatorClient *)v16 _setUpDelegateQueue:queueCopy];
    v44 = 0;
    v45 = &v44;
    v46 = 0x2020000000;
    v47 = 0;
    v38 = 0;
    v39 = &v38;
    v40 = 0x3032000000;
    v41 = __Block_byref_object_copy_;
    v42 = __Block_byref_object_dispose_;
    v43 = 0;
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v31 = __85__STSpeechTranslatorClient__initWithPeerProvider_peerContext_delegate_delegateQueue___block_invoke;
    v32 = &unk_279CF7CC0;
    v36 = &v44;
    v19 = v16;
    v33 = v19;
    v34 = providerCopy;
    v20 = contextCopy;
    v35 = v20;
    v37 = &v38;
    v21 = v30;
    os_unfair_lock_assert_not_owner(&v16->_stateLock);
    os_unfair_lock_lock(&v16->_stateLock);
    v31(v21);

    os_unfair_lock_unlock(&v16->_stateLock);
    if (v45[3])
    {
      v24 = _LTOSLogSTMultiprocess(v22, v23);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = v39[5];
        *buf = 138543874;
        v50 = v25;
        v51 = 2114;
        v52 = v20;
        v53 = 2048;
        v54 = delegateCopy;
        _os_log_impl(&dword_26B5BC000, v24, OS_LOG_TYPE_DEFAULT, "Created instance: %{public}@ peerContext: %{public}@ delegate: %p", buf, 0x20u);
      }

      v26 = v19;
    }

    else
    {
      v28 = _LTOSLogSTMultiprocess(v22, v23);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        [STSpeechTranslatorClient _initWithPeerProvider:peerContext:delegate:delegateQueue:];
      }

      v26 = 0;
    }

    _Block_object_dispose(&v38, 8);
    _Block_object_dispose(&v44, 8);
  }

  else
  {
    v27 = _LTOSLogSTMultiprocess(0, v15);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [STSpeechTranslatorClient _initWithPeerProvider:peerContext:delegate:delegateQueue:];
    }

    v26 = 0;
  }

  return v26;
}

void *__85__STSpeechTranslatorClient__initWithPeerProvider_peerContext_delegate_delegateQueue___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _setUpPeerProviderWhileLocked:*(a1 + 40) withContext:*(a1 + 48)];
  *(*(*(a1 + 56) + 8) + 24) = result;
  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    [*(a1 + 32) _prefetchPreferredSourceAudioFormat];
    *(*(*(a1 + 64) + 8) + 40) = [*(a1 + 32) _descriptionWhileLocked];

    return MEMORY[0x2821F96F8]();
  }

  return result;
}

- (id)_initWithPeerContext:(id)context delegate:(id)delegate delegateQueue:(id)queue
{
  v24 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  delegateCopy = delegate;
  queueCopy = queue;
  v12 = objc_alloc_init(_STXPCClient);
  if (v12)
  {
    v13 = [(STSpeechTranslatorClient *)self _initWithPeerProvider:v12 peerContext:contextCopy delegate:delegateCopy delegateQueue:queueCopy];
    v14 = v13;
  }

  else
  {
    v15 = _LTOSLogSTMultiprocess(0, v11);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v19 = contextCopy;
      v20 = 2048;
      v21 = delegateCopy;
      v22 = 2114;
      v23 = queueCopy;
      _os_log_error_impl(&dword_26B5BC000, v15, OS_LOG_TYPE_ERROR, "Failed to initialize peerProvider for STSpeechTranslatorClient peerContext: %{public}@ delegate: %p delegateQueue: %{public}@", buf, 0x20u);
    }

    v17.receiver = self;
    v17.super_class = STSpeechTranslatorClient;
    v13 = [(STSpeechTranslatorClient *)&v17 init];
    v14 = 0;
  }

  return v14;
}

- (void)_invalidateWhileLocked
{
  v16 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(&self->_stateLock);
  v5 = _LTOSLogSTMultiprocess(v3, v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    _descriptionWhileLocked = [(STSpeechTranslatorClient *)self _descriptionWhileLocked];
    *buf = 138543362;
    v15 = _descriptionWhileLocked;
    _os_log_impl(&dword_26B5BC000, v6, OS_LOG_TYPE_DEFAULT, "client: %{public}@ invalidating", buf, 0xCu);
  }

  v8 = _Block_copy(self->_startHandler);
  startHandler = self->_startHandler;
  self->_startHandler = 0;

  if (v8)
  {
    delegateQueue = self->_delegateQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50__STSpeechTranslatorClient__invalidateWhileLocked__block_invoke;
    block[3] = &unk_279CF7CE8;
    v13 = v8;
    dispatch_async(delegateQueue, block);
  }

  [(STSpeechTranslatorClient *)self _notifyCompletionHandlers:self->_formatHandlers withSourceFormat:0 currentlyHoldingLock:1];
  [(NSMutableArray *)self->_formatHandlers removeAllObjects];
  [(_STPeerProviding *)self->_peerProvider invalidate];
  peerProvider = self->_peerProvider;
  self->_peerProvider = 0;

  objc_storeWeak(&self->_delegate, 0);
  self->_invalidated = 1;
}

void __50__STSpeechTranslatorClient__invalidateWhileLocked__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] st_errorForCode:7];
  (*(v1 + 16))(v1, v2);
}

- (void)_notifyClientOfStartWithError:(id)error
{
  errorCopy = error;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __58__STSpeechTranslatorClient__notifyClientOfStartWithError___block_invoke;
  v6[3] = &unk_279CF7D38;
  v6[4] = self;
  v7 = errorCopy;
  v5 = errorCopy;
  os_unfair_lock_assert_not_owner(&self->_stateLock);
  os_unfair_lock_lock(&self->_stateLock);
  __58__STSpeechTranslatorClient__notifyClientOfStartWithError___block_invoke(v6);
  os_unfair_lock_unlock(&self->_stateLock);
}

void __58__STSpeechTranslatorClient__notifyClientOfStartWithError___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if ((*(v1 + 12) & 1) == 0)
  {
    v3 = *(v1 + 40);
    if (v3)
    {
      v4 = _Block_copy(v3);
      v5 = *(a1 + 32);
      v6 = *(v5 + 40);
      *(v5 + 40) = 0;

      v9 = _LTOSLogSTMultiprocess(v7, v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = *(a1 + 32);
        v11 = v9;
        v12 = [v10 _descriptionWhileLocked];
        v13 = _Block_copy(v4);
        v14 = *(a1 + 40);
        *buf = 138543874;
        v21 = v12;
        v22 = 2114;
        v23 = v13;
        v24 = 2112;
        v25 = v14;
        _os_log_impl(&dword_26B5BC000, v11, OS_LOG_TYPE_INFO, "client: %{public}@ invoking startHandler: %{public}@ with error: %@", buf, 0x20u);
      }

      v15 = *(*(a1 + 32) + 32);
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __58__STSpeechTranslatorClient__notifyClientOfStartWithError___block_invoke_34;
      v17[3] = &unk_279CF7D10;
      v19 = v4;
      v18 = *(a1 + 40);
      v16 = v4;
      dispatch_async(v15, v17);
    }
  }
}

- (void)_prefetchPreferredSourceAudioFormat
{
  os_unfair_lock_assert_owner(&self->_stateLock);
  objc_initWeak(&location, self);
  synchronousTranslatorPeer = [(_STPeerProviding *)self->_peerProvider synchronousTranslatorPeer];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__STSpeechTranslatorClient__prefetchPreferredSourceAudioFormat__block_invoke;
  v7[3] = &unk_279CF7D60;
  objc_copyWeak(&v8, &location);
  [synchronousTranslatorPeer obtainCachedPreferredSourceAudioFormat:1 inReply:v7];

  if (!self->_preferredSourceAudioFormat)
  {
    self->_preferredSourceAudioFormatLookedUp = 0;
    translatorPeer = [(_STPeerProviding *)self->_peerProvider translatorPeer];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __63__STSpeechTranslatorClient__prefetchPreferredSourceAudioFormat__block_invoke_2;
    v5[3] = &unk_279CF7D60;
    objc_copyWeak(&v6, &location);
    [translatorPeer obtainCachedPreferredSourceAudioFormat:0 inReply:v5];

    objc_destroyWeak(&v6);
  }

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __63__STSpeechTranslatorClient__prefetchPreferredSourceAudioFormat__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _processPreferredSourceFormatResponse:v5 currentlyHoldingLock:1];
  }
}

void __63__STSpeechTranslatorClient__prefetchPreferredSourceAudioFormat__block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _processPreferredSourceFormatResponse:v5 currentlyHoldingLock:0];
  }
}

- (void)_notifyCompletionHandlers:(id)handlers withSourceFormat:(id)format currentlyHoldingLock:(BOOL)lock
{
  lockCopy = lock;
  handlersCopy = handlers;
  formatCopy = format;
  p_stateLock = &self->_stateLock;
  if (lockCopy)
  {
    os_unfair_lock_assert_owner(p_stateLock);
  }

  else
  {
    os_unfair_lock_assert_not_owner(p_stateLock);
  }

  if ([handlersCopy count])
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __92__STSpeechTranslatorClient__notifyCompletionHandlers_withSourceFormat_currentlyHoldingLock___block_invoke;
    v13[3] = &unk_279CF7D38;
    v14 = handlersCopy;
    v15 = formatCopy;
    v11 = _Block_copy(v13);
    v12 = v11;
    if (lockCopy)
    {
      dispatch_async(self->_delegateQueue, v11);
    }

    else
    {
      v11[2](v11);
    }
  }
}

void __92__STSpeechTranslatorClient__notifyCompletionHandlers_withSourceFormat_currentlyHoldingLock___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        (*(*(*(&v6 + 1) + 8 * v5) + 16))(*(*(&v6 + 1) + 8 * v5));
        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

- (void)_processPreferredSourceFormatResponse:(id)response currentlyHoldingLock:(BOOL)lock
{
  lockCopy = lock;
  responseCopy = response;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy_;
  v23 = __Block_byref_object_dispose_;
  v24 = 0;
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __87__STSpeechTranslatorClient__processPreferredSourceFormatResponse_currentlyHoldingLock___block_invoke;
  v14 = &unk_279CF7D88;
  selfCopy = self;
  v7 = responseCopy;
  v18 = lockCopy;
  v16 = v7;
  v17 = &v19;
  v8 = _Block_copy(&v11);
  v9 = v8;
  if (lockCopy)
  {
    v8[2](v8);
  }

  else
  {
    v10 = v8;
    os_unfair_lock_assert_not_owner(&self->_stateLock);
    os_unfair_lock_lock(&self->_stateLock);
    v10[2](v10);

    os_unfair_lock_unlock(&self->_stateLock);
  }

  [(STSpeechTranslatorClient *)self _notifyCompletionHandlers:v20[5] withSourceFormat:v7 currentlyHoldingLock:lockCopy, v11, v12, v13, v14, selfCopy];

  _Block_object_dispose(&v19, 8);
}

void __87__STSpeechTranslatorClient__processPreferredSourceFormatResponse_currentlyHoldingLock___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner((*(a1 + 32) + 8));
  if ((*(*(a1 + 32) + 12) & 1) == 0)
  {
    v4 = _LTOSLogSTMultiprocess(v2, v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 32);
      v6 = v4;
      v7 = [v5 _descriptionWhileLocked];
      v8 = *(a1 + 40);
      v9 = *(a1 + 56);
      v13 = 138543874;
      v14 = v7;
      v15 = 2114;
      v16 = v8;
      v17 = 1024;
      v18 = v9;
      _os_log_impl(&dword_26B5BC000, v6, OS_LOG_TYPE_INFO, "client: %{public}@ caching format: %{public}@ fastPath: %{BOOL}d", &v13, 0x1Cu);
    }

    objc_storeStrong((*(a1 + 32) + 56), *(a1 + 40));
    *(*(a1 + 32) + 64) = 1;
    v10 = [*(*(a1 + 32) + 72) copy];
    v11 = *(*(a1 + 48) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    [*(*(a1 + 32) + 72) removeAllObjects];
  }
}

- (void)translationDidStart
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __47__STSpeechTranslatorClient_translationDidStart__block_invoke;
  v3[3] = &unk_279CF7C20;
  v3[4] = self;
  os_unfair_lock_assert_not_owner(&self->_stateLock);
  os_unfair_lock_lock(&self->_stateLock);
  __47__STSpeechTranslatorClient_translationDidStart__block_invoke(v3);
  os_unfair_lock_unlock(&self->_stateLock);
}

void __47__STSpeechTranslatorClient_translationDidStart__block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if ((*(v1 + 12) & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((v1 + 16));
    v4 = objc_opt_respondsToSelector();
    v5 = v4;
    v7 = _LTOSLogSTMultiprocess(v4, v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      v9 = v7;
      v10 = [v8 _descriptionWhileLocked];
      *buf = 138543874;
      v18 = v10;
      v19 = 2048;
      v20 = WeakRetained;
      v21 = 1024;
      v22 = v5 & 1;
      _os_log_impl(&dword_26B5BC000, v9, OS_LOG_TYPE_INFO, "client: %{public}@ received translationDidStart, delegate: %p responds: %{BOOL}d", buf, 0x1Cu);
    }

    if (v5)
    {
      v11 = *(*(a1 + 32) + 32);
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __47__STSpeechTranslatorClient_translationDidStart__block_invoke_38;
      v14[3] = &unk_279CF7D38;
      v12 = WeakRetained;
      v13 = *(a1 + 32);
      v15 = v12;
      v16 = v13;
      dispatch_async(v11, v14);
    }
  }
}

- (void)translationDidStopWithError:(id)error
{
  errorCopy = error;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__STSpeechTranslatorClient_translationDidStopWithError___block_invoke;
  v6[3] = &unk_279CF7D38;
  v6[4] = self;
  v7 = errorCopy;
  v5 = errorCopy;
  os_unfair_lock_assert_not_owner(&self->_stateLock);
  os_unfair_lock_lock(&self->_stateLock);
  __56__STSpeechTranslatorClient_translationDidStopWithError___block_invoke(v6);
  os_unfair_lock_unlock(&self->_stateLock);
}

void __56__STSpeechTranslatorClient_translationDidStopWithError___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if ((*(v1 + 12) & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((v1 + 16));
    v5 = _LTOSLogSTMultiprocess(WeakRetained, v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 32);
      v7 = v5;
      v8 = [v6 _descriptionWhileLocked];
      v9 = *(a1 + 40);
      *buf = 138543874;
      v19 = v8;
      v20 = 2112;
      v21 = v9;
      v22 = 2048;
      v23 = WeakRetained;
      _os_log_impl(&dword_26B5BC000, v7, OS_LOG_TYPE_INFO, "client: %{public}@ received translationDidStopWithError: %@, delegate: %p", buf, 0x20u);
    }

    if (WeakRetained)
    {
      v10 = *(*(a1 + 32) + 32);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __56__STSpeechTranslatorClient_translationDidStopWithError___block_invoke_39;
      block[3] = &unk_279CF7DB0;
      v11 = WeakRetained;
      v12 = *(a1 + 32);
      v13 = *(a1 + 40);
      v15 = v11;
      v16 = v12;
      v17 = v13;
      dispatch_async(v10, block);
    }
  }
}

- (void)clientShouldDisconnect
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __50__STSpeechTranslatorClient_clientShouldDisconnect__block_invoke;
  v3[3] = &unk_279CF7C20;
  v3[4] = self;
  os_unfair_lock_assert_not_owner(&self->_stateLock);
  os_unfair_lock_lock(&self->_stateLock);
  __50__STSpeechTranslatorClient_clientShouldDisconnect__block_invoke(v3);
  os_unfair_lock_unlock(&self->_stateLock);
}

void __50__STSpeechTranslatorClient_clientShouldDisconnect__block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if ((*(v1 + 12) & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((v1 + 16));
    v5 = _LTOSLogSTMultiprocess(WeakRetained, v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 32);
      v7 = v5;
      v8 = [v6 _descriptionWhileLocked];
      *buf = 138543618;
      v16 = v8;
      v17 = 2048;
      v18 = WeakRetained;
      _os_log_impl(&dword_26B5BC000, v7, OS_LOG_TYPE_INFO, "client: %{public}@ received disconnect, delegate: %p", buf, 0x16u);
    }

    [*(a1 + 32) _invalidateWhileLocked];
    if (WeakRetained)
    {
      v9 = *(*(a1 + 32) + 32);
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __50__STSpeechTranslatorClient_clientShouldDisconnect__block_invoke_40;
      v12[3] = &unk_279CF7D38;
      v10 = WeakRetained;
      v11 = *(a1 + 32);
      v13 = v10;
      v14 = v11;
      dispatch_async(v9, v12);
    }
  }
}

- (void)translationDidPauseWithReason:(id)reason
{
  reasonCopy = reason;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __58__STSpeechTranslatorClient_translationDidPauseWithReason___block_invoke;
  v6[3] = &unk_279CF7D38;
  v6[4] = self;
  v7 = reasonCopy;
  v5 = reasonCopy;
  os_unfair_lock_assert_not_owner(&self->_stateLock);
  os_unfair_lock_lock(&self->_stateLock);
  __58__STSpeechTranslatorClient_translationDidPauseWithReason___block_invoke(v6);
  os_unfair_lock_unlock(&self->_stateLock);
}

void __58__STSpeechTranslatorClient_translationDidPauseWithReason___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if ((*(v1 + 12) & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((v1 + 16));
    v4 = objc_opt_respondsToSelector();
    v5 = v4;
    v7 = _LTOSLogSTMultiprocess(v4, v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      v9 = v7;
      v10 = [v8 _descriptionWhileLocked];
      v11 = *(a1 + 40);
      *buf = 138544130;
      v21 = v10;
      v22 = 2114;
      v23 = v11;
      v24 = 2048;
      v25 = WeakRetained;
      v26 = 1024;
      v27 = v5 & 1;
      _os_log_impl(&dword_26B5BC000, v9, OS_LOG_TYPE_INFO, "client: %{public}@ received didPauseWithReason: %{public}@, delegate: %p responds: %{BOOL}d", buf, 0x26u);
    }

    if (v5)
    {
      v12 = *(*(a1 + 32) + 32);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __58__STSpeechTranslatorClient_translationDidPauseWithReason___block_invoke_43;
      block[3] = &unk_279CF7DB0;
      v13 = WeakRetained;
      v14 = *(a1 + 32);
      v15 = *(a1 + 40);
      v17 = v13;
      v18 = v14;
      v19 = v15;
      dispatch_async(v12, block);
    }
  }
}

- (void)translationDidResume
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __48__STSpeechTranslatorClient_translationDidResume__block_invoke;
  v3[3] = &unk_279CF7C20;
  v3[4] = self;
  os_unfair_lock_assert_not_owner(&self->_stateLock);
  os_unfair_lock_lock(&self->_stateLock);
  __48__STSpeechTranslatorClient_translationDidResume__block_invoke(v3);
  os_unfair_lock_unlock(&self->_stateLock);
}

void __48__STSpeechTranslatorClient_translationDidResume__block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if ((*(v1 + 12) & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((v1 + 16));
    v4 = objc_opt_respondsToSelector();
    v5 = v4;
    v7 = _LTOSLogSTMultiprocess(v4, v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      v9 = v7;
      v10 = [v8 _descriptionWhileLocked];
      *buf = 138543874;
      v18 = v10;
      v19 = 2048;
      v20 = WeakRetained;
      v21 = 1024;
      v22 = v5 & 1;
      _os_log_impl(&dword_26B5BC000, v9, OS_LOG_TYPE_INFO, "client: %{public}@ received didResume, delegate: %p responds: %{BOOL}d", buf, 0x1Cu);
    }

    if (v5)
    {
      v11 = *(*(a1 + 32) + 32);
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __48__STSpeechTranslatorClient_translationDidResume__block_invoke_46;
      v14[3] = &unk_279CF7D38;
      v12 = WeakRetained;
      v13 = *(a1 + 32);
      v15 = v12;
      v16 = v13;
      dispatch_async(v11, v14);
    }
  }
}

- (void)willStartTranslatedAudioWithMetadata:(id)metadata
{
  metadataCopy = metadata;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __65__STSpeechTranslatorClient_willStartTranslatedAudioWithMetadata___block_invoke;
  v6[3] = &unk_279CF7D38;
  v6[4] = self;
  v7 = metadataCopy;
  v5 = metadataCopy;
  os_unfair_lock_assert_not_owner(&self->_stateLock);
  os_unfair_lock_lock(&self->_stateLock);
  __65__STSpeechTranslatorClient_willStartTranslatedAudioWithMetadata___block_invoke(v6);
  os_unfair_lock_unlock(&self->_stateLock);
}

void __65__STSpeechTranslatorClient_willStartTranslatedAudioWithMetadata___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if ((*(v1 + 12) & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((v1 + 16));
    v4 = objc_opt_respondsToSelector();
    v5 = v4;
    v7 = _LTOSLogSTMultiprocess(v4, v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      v9 = v7;
      v10 = [v8 _descriptionWhileLocked];
      v11 = *(a1 + 40);
      *buf = 138544130;
      v21 = v10;
      v22 = 2114;
      v23 = v11;
      v24 = 2048;
      v25 = WeakRetained;
      v26 = 1024;
      v27 = v5 & 1;
      _os_log_impl(&dword_26B5BC000, v9, OS_LOG_TYPE_INFO, "client: %{public}@ received willStartTranslatedAudioWithMetadata: %{public}@, delegate: %p responds: %{BOOL}d", buf, 0x26u);
    }

    if (v5)
    {
      v12 = *(*(a1 + 32) + 32);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __65__STSpeechTranslatorClient_willStartTranslatedAudioWithMetadata___block_invoke_47;
      block[3] = &unk_279CF7DB0;
      v13 = WeakRetained;
      v14 = *(a1 + 32);
      v15 = *(a1 + 40);
      v17 = v13;
      v18 = v14;
      v19 = v15;
      dispatch_async(v12, block);
    }
  }
}

- (void)didGenerateTranslatedAudio:(id)audio
{
  audioCopy = audio;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__STSpeechTranslatorClient_didGenerateTranslatedAudio___block_invoke;
  v6[3] = &unk_279CF7D38;
  v6[4] = self;
  v7 = audioCopy;
  v5 = audioCopy;
  os_unfair_lock_assert_not_owner(&self->_stateLock);
  os_unfair_lock_lock(&self->_stateLock);
  __55__STSpeechTranslatorClient_didGenerateTranslatedAudio___block_invoke(v6);
  os_unfair_lock_unlock(&self->_stateLock);
}

void __55__STSpeechTranslatorClient_didGenerateTranslatedAudio___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if ((*(v1 + 12) & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((v1 + 16));
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
LABEL_7:

      return;
    }

    v4 = [MEMORY[0x277CB83C8] st_deserializeData:*(a1 + 40) withBufferAllocator:*MEMORY[0x277CBECE8]];
    v6 = _LTOSLogSTMultiprocess(v4, v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v10 = *(a1 + 32);
      v11 = v6;
      v12 = [v10 _descriptionWhileLocked];
      v13 = *(a1 + 40);
      *buf = 138544130;
      v19 = v12;
      v20 = 2114;
      v21 = v13;
      v22 = 2114;
      v23 = v4;
      v24 = 2048;
      v25 = WeakRetained;
      _os_log_debug_impl(&dword_26B5BC000, v11, OS_LOG_TYPE_DEBUG, "client: %{public}@ received didGenerateTranslatedAudio: %{public}@, deserialized: %{public}@ delegate: %p", buf, 0x2Au);

      if (!v4)
      {
        goto LABEL_6;
      }
    }

    else if (!v4)
    {
LABEL_6:

      goto LABEL_7;
    }

    v7 = *(*(a1 + 32) + 32);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__STSpeechTranslatorClient_didGenerateTranslatedAudio___block_invoke_49;
    block[3] = &unk_279CF7DB0;
    v8 = WeakRetained;
    v9 = *(a1 + 32);
    v15 = v8;
    v16 = v9;
    v17 = v4;
    dispatch_async(v7, block);

    goto LABEL_6;
  }
}

- (void)audioGenerationDidFinish
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __52__STSpeechTranslatorClient_audioGenerationDidFinish__block_invoke;
  v3[3] = &unk_279CF7C20;
  v3[4] = self;
  os_unfair_lock_assert_not_owner(&self->_stateLock);
  os_unfair_lock_lock(&self->_stateLock);
  __52__STSpeechTranslatorClient_audioGenerationDidFinish__block_invoke(v3);
  os_unfair_lock_unlock(&self->_stateLock);
}

void __52__STSpeechTranslatorClient_audioGenerationDidFinish__block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if ((*(v1 + 12) & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((v1 + 16));
    v4 = objc_opt_respondsToSelector();
    v5 = v4;
    v7 = _LTOSLogSTMultiprocess(v4, v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      v9 = v7;
      v10 = [v8 _descriptionWhileLocked];
      *buf = 138543874;
      v18 = v10;
      v19 = 2048;
      v20 = WeakRetained;
      v21 = 1024;
      v22 = v5 & 1;
      _os_log_impl(&dword_26B5BC000, v9, OS_LOG_TYPE_INFO, "client: %{public}@ received audioGenerationDidFinish, delegate: %p responds: %{BOOL}d", buf, 0x1Cu);
    }

    if (v5)
    {
      v11 = *(*(a1 + 32) + 32);
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __52__STSpeechTranslatorClient_audioGenerationDidFinish__block_invoke_50;
      v14[3] = &unk_279CF7D38;
      v12 = WeakRetained;
      v13 = *(a1 + 32);
      v15 = v12;
      v16 = v13;
      dispatch_async(v11, v14);
    }
  }
}

- (void)producedTranscription:(id)transcription
{
  transcriptionCopy = transcription;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50__STSpeechTranslatorClient_producedTranscription___block_invoke;
  v6[3] = &unk_279CF7D38;
  v6[4] = self;
  v7 = transcriptionCopy;
  v5 = transcriptionCopy;
  os_unfair_lock_assert_not_owner(&self->_stateLock);
  os_unfair_lock_lock(&self->_stateLock);
  __50__STSpeechTranslatorClient_producedTranscription___block_invoke(v6);
  os_unfair_lock_unlock(&self->_stateLock);
}

void __50__STSpeechTranslatorClient_producedTranscription___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if ((*(v1 + 12) & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((v1 + 16));
    v4 = objc_opt_respondsToSelector();
    v5 = v4;
    v7 = _LTOSLogSTMultiprocess(v4, v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      v9 = v7;
      v10 = [v8 _descriptionWhileLocked];
      v11 = *(a1 + 40);
      *buf = 138544130;
      v21 = v10;
      v22 = 2114;
      v23 = v11;
      v24 = 2048;
      v25 = WeakRetained;
      v26 = 1024;
      v27 = v5 & 1;
      _os_log_impl(&dword_26B5BC000, v9, OS_LOG_TYPE_INFO, "client: %{public}@ received producedTranscription: %{public}@, delegate: %p responds: %{BOOL}d", buf, 0x26u);
    }

    if (v5)
    {
      v12 = *(*(a1 + 32) + 32);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __50__STSpeechTranslatorClient_producedTranscription___block_invoke_51;
      block[3] = &unk_279CF7DB0;
      v13 = WeakRetained;
      v14 = *(a1 + 32);
      v15 = *(a1 + 40);
      v17 = v13;
      v18 = v14;
      v19 = v15;
      dispatch_async(v12, block);
    }
  }
}

- (void)producedTranslation:(id)translation
{
  translationCopy = translation;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__STSpeechTranslatorClient_producedTranslation___block_invoke;
  v6[3] = &unk_279CF7D38;
  v6[4] = self;
  v7 = translationCopy;
  v5 = translationCopy;
  os_unfair_lock_assert_not_owner(&self->_stateLock);
  os_unfair_lock_lock(&self->_stateLock);
  __48__STSpeechTranslatorClient_producedTranslation___block_invoke(v6);
  os_unfair_lock_unlock(&self->_stateLock);
}

void __48__STSpeechTranslatorClient_producedTranslation___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if ((*(v1 + 12) & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((v1 + 16));
    v4 = objc_opt_respondsToSelector();
    v5 = v4;
    v7 = _LTOSLogSTMultiprocess(v4, v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      v9 = v7;
      v10 = [v8 _descriptionWhileLocked];
      v11 = *(a1 + 40);
      *buf = 138544130;
      v21 = v10;
      v22 = 2114;
      v23 = v11;
      v24 = 2048;
      v25 = WeakRetained;
      v26 = 1024;
      v27 = v5 & 1;
      _os_log_impl(&dword_26B5BC000, v9, OS_LOG_TYPE_INFO, "client: %{public}@ received producedTranslation: %{public}@, delegate: %p responds: %{BOOL}d", buf, 0x26u);
    }

    if (v5)
    {
      v12 = *(*(a1 + 32) + 32);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __48__STSpeechTranslatorClient_producedTranslation___block_invoke_52;
      block[3] = &unk_279CF7DB0;
      v13 = WeakRetained;
      v14 = *(a1 + 32);
      v15 = *(a1 + 40);
      v17 = v13;
      v18 = v14;
      v19 = v15;
      dispatch_async(v12, block);
    }
  }
}

- (AVAudioFormat)preferredTranslatedAudioFormat
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy_;
  v15 = __Block_byref_object_dispose_;
  v16 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v7 = __65__STSpeechTranslatorClient_Audio__preferredTranslatedAudioFormat__block_invoke;
  v8 = &unk_279CF7DD8;
  selfCopy = self;
  v10 = &v11;
  v3 = v6;
  os_unfair_lock_assert_not_owner(&self->_stateLock);
  os_unfair_lock_lock(&self->_stateLock);
  v7(v3);

  os_unfair_lock_unlock(&self->_stateLock);
  v4 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v4;
}

uint64_t __65__STSpeechTranslatorClient_Audio__preferredTranslatedAudioFormat__block_invoke(uint64_t result)
{
  v2 = *(result + 32);
  if ((*(v2 + 12) & 1) == 0)
  {
    v3 = *(v2 + 48);
    if (!v3)
    {
      if (*(v2 + 64) != 1)
      {
        return result;
      }

      v3 = *(v2 + 56);
    }

    v4 = *(*(result + 40) + 8);
    *(v4 + 40) = v3;

    return MEMORY[0x2821F96F8]();
  }

  return result;
}

- (void)setPreferredTranslatedAudioFormat:(id)format
{
  formatCopy = format;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __69__STSpeechTranslatorClient_Audio__setPreferredTranslatedAudioFormat___block_invoke;
  v6[3] = &unk_279CF7D38;
  v6[4] = self;
  v7 = formatCopy;
  v5 = formatCopy;
  os_unfair_lock_assert_not_owner(&self->_stateLock);
  os_unfair_lock_lock(&self->_stateLock);
  __69__STSpeechTranslatorClient_Audio__setPreferredTranslatedAudioFormat___block_invoke(v6);
  os_unfair_lock_unlock(&self->_stateLock);
}

void __69__STSpeechTranslatorClient_Audio__setPreferredTranslatedAudioFormat___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if (*(v1 + 12))
  {
    return;
  }

  v3 = (a1 + 40);
  if ([*(v1 + 48) isEqual:*(a1 + 40)])
  {
    return;
  }

  if (!*v3)
  {
    v6 = 0;
    goto LABEL_8;
  }

  v4 = [*v3 streamDescription];
  if (v4)
  {
    if (*(v4 + 8) == 1819304813)
    {
      v6 = *v3;
LABEL_8:
      objc_storeStrong((*(a1 + 32) + 48), v6);
      v9 = _LTOSLogSTMultiprocess(v7, v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = *(a1 + 32);
        v11 = *(a1 + 40);
        v27 = 138543618;
        v28 = v10;
        v29 = 2114;
        v30 = v11;
        _os_log_impl(&dword_26B5BC000, v9, OS_LOG_TYPE_INFO, "client: %{public}@ applying preferredTranslatedAudioFormat: %{public}@", &v27, 0x16u);
      }

      v12 = [*(*(a1 + 32) + 24) translatorPeer];
      [v12 setPreferredTranslatedAudioFormat:*(a1 + 40)];

      return;
    }

    v20 = _LTOSLogSTMultiprocess(v4, v5);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      __69__STSpeechTranslatorClient_Audio__setPreferredTranslatedAudioFormat___block_invoke_cold_1(v3, v20, v21, v22, v23, v24, v25, v26);
    }
  }

  else
  {
    v13 = _LTOSLogSTMultiprocess(0, v5);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __69__STSpeechTranslatorClient_Audio__setPreferredTranslatedAudioFormat___block_invoke_cold_2(v3, v13, v14, v15, v16, v17, v18, v19);
    }
  }
}

- (void)lookUpPreferredInputAudioFormatWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 1;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v8 = __88__STSpeechTranslatorClient_Audio__lookUpPreferredInputAudioFormatWithCompletionHandler___block_invoke;
  v9 = &unk_279CF7E00;
  selfCopy = self;
  v12 = &v14;
  v5 = handlerCopy;
  v11 = v5;
  v13 = &v20;
  v6 = v7;
  os_unfair_lock_assert_not_owner(&self->_stateLock);
  os_unfair_lock_lock(&self->_stateLock);
  v8(v6);

  os_unfair_lock_unlock(&self->_stateLock);
  if (*(v21 + 24) == 1)
  {
    (*(v5 + 2))(v5, v15[5]);
  }

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);
}

void __88__STSpeechTranslatorClient_Audio__lookUpPreferredInputAudioFormatWithCompletionHandler___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if ((*(v1 + 12) & 1) == 0)
  {
    if (*(v1 + 64) == 1)
    {
      objc_storeStrong((*(*(a1 + 48) + 8) + 40), *(v1 + 56));
    }

    else
    {
      v3 = *(v1 + 72);
      v4 = _Block_copy(*(a1 + 40));
      [v3 addObject:v4];

      *(*(*(a1 + 56) + 8) + 24) = 0;
      v7 = _LTOSLogSTMultiprocess(v5, v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = *(a1 + 32);
        v9 = v7;
        v10 = [v8 _descriptionWhileLocked];
        v11 = _Block_copy(*(a1 + 40));
        v12 = 138543618;
        v13 = v10;
        v14 = 2114;
        v15 = v11;
        _os_log_impl(&dword_26B5BC000, v9, OS_LOG_TYPE_INFO, "Client: %{public}@ requested to look up preferred input audio format but pre-fetch is NOT yet completed. Enqueuing handler: %{public}@", &v12, 0x16u);
      }
    }
  }
}

- (void)pauseTranslationWithReason:(id)reason
{
  reasonCopy = reason;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __62__STSpeechTranslatorClient_Audio__pauseTranslationWithReason___block_invoke;
  v6[3] = &unk_279CF7D38;
  v6[4] = self;
  v7 = reasonCopy;
  v5 = reasonCopy;
  os_unfair_lock_assert_not_owner(&self->_stateLock);
  os_unfair_lock_lock(&self->_stateLock);
  (__62__STSpeechTranslatorClient_Audio__pauseTranslationWithReason___block_invoke)(v6);
  os_unfair_lock_unlock(&self->_stateLock);
}

void __62__STSpeechTranslatorClient_Audio__pauseTranslationWithReason___block_invoke(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  if ((*(*(a1 + 32) + 12) & 1) == 0)
  {
    v3 = _LTOSLogSTMultiprocess(a1, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 32);
      v5 = v3;
      v6 = [v4 _descriptionWhileLocked];
      v7 = *(a1 + 40);
      v9 = 138543618;
      v10 = v6;
      v11 = 2114;
      v12 = v7;
      _os_log_impl(&dword_26B5BC000, v5, OS_LOG_TYPE_INFO, "client: %{public}@ requesting to pauseWithReason: %{public}@", &v9, 0x16u);
    }

    v8 = [*(*(a1 + 32) + 24) translatorPeer];
    [v8 pauseTranslationWithReason:*(a1 + 40)];
  }
}

- (void)resumeTranslation
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __52__STSpeechTranslatorClient_Audio__resumeTranslation__block_invoke;
  v3[3] = &unk_279CF7C20;
  v3[4] = self;
  os_unfair_lock_assert_not_owner(&self->_stateLock);
  os_unfair_lock_lock(&self->_stateLock);
  (__52__STSpeechTranslatorClient_Audio__resumeTranslation__block_invoke)(v3);
  os_unfair_lock_unlock(&self->_stateLock);
}

void __52__STSpeechTranslatorClient_Audio__resumeTranslation__block_invoke(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if ((*(*(a1 + 32) + 12) & 1) == 0)
  {
    v3 = _LTOSLogSTMultiprocess(a1, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 32);
      v5 = v3;
      v6 = [v4 _descriptionWhileLocked];
      v8 = 138543362;
      v9 = v6;
      _os_log_impl(&dword_26B5BC000, v5, OS_LOG_TYPE_INFO, "client: %{public}@ requesting to resume", &v8, 0xCu);
    }

    v7 = [*(*(a1 + 32) + 24) translatorPeer];
    [v7 resumeTranslation];
  }
}

- (void)translateAudioSamples:(id)samples
{
  samplesCopy = samples;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57__STSpeechTranslatorClient_Audio__translateAudioSamples___block_invoke;
  v6[3] = &unk_279CF7D38;
  v6[4] = self;
  v7 = samplesCopy;
  v5 = samplesCopy;
  os_unfair_lock_assert_not_owner(&self->_stateLock);
  os_unfair_lock_lock(&self->_stateLock);
  __57__STSpeechTranslatorClient_Audio__translateAudioSamples___block_invoke(v6);
  os_unfair_lock_unlock(&self->_stateLock);
}

void __57__STSpeechTranslatorClient_Audio__translateAudioSamples___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  if ((*(*(a1 + 32) + 12) & 1) == 0)
  {
    v2 = [*(a1 + 40) st_serializeWithBufferAllocator:*MEMORY[0x277CBECE8]];
    v4 = _LTOSLogSTMultiprocess(v2, v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v6 = *(a1 + 32);
      v7 = v4;
      v8 = [v6 _descriptionWhileLocked];
      v9 = *(a1 + 40);
      v10 = [v9 format];
      v11 = [*(a1 + 40) frameLength];
      v12 = 138544386;
      v13 = v8;
      v14 = 2114;
      v15 = v9;
      v16 = 2114;
      v17 = v10;
      v18 = 1024;
      v19 = v11;
      v20 = 2114;
      v21 = v2;
      _os_log_debug_impl(&dword_26B5BC000, v7, OS_LOG_TYPE_DEBUG, "client: %{public}@ sent buffer: %{public}@ with format: %{public}@ samples: %u, serialized: %{public}@", &v12, 0x30u);

      if (!v2)
      {
        goto LABEL_5;
      }
    }

    else if (!v2)
    {
LABEL_5:

      return;
    }

    v5 = [*(*(a1 + 32) + 24) translatorPeer];
    [v5 translateAudioBuffer:v2];

    goto LABEL_5;
  }
}

void __69__STSpeechTranslatorClient_Audio__setPreferredTranslatedAudioFormat___block_invoke_cold_1(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138543362;
  *(&v8 + 4) = *a1;
  OUTLINED_FUNCTION_0_1(&dword_26B5BC000, a2, a3, "Provided format is NOT linear PCM preferredTranslatedAudioFormat: %{public}@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __69__STSpeechTranslatorClient_Audio__setPreferredTranslatedAudioFormat___block_invoke_cold_2(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138543362;
  *(&v8 + 4) = *a1;
  OUTLINED_FUNCTION_0_1(&dword_26B5BC000, a2, a3, "Failed to fetch description for preferredTranslatedAudioFormat: %{public}@", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end