@interface _LTTextSession
+ (OS_dispatch_queue)synchronizationQueue;
- (BOOL)_isCancelled;
- (_LTPreflightLocaleResolving)localeResolver;
- (_LTTextSession)initWithSourceLocale:(id)locale targetLocale:(id)targetLocale isHeadless:(BOOL)headless;
- (_LTTextSessionDelegate)delegate;
- (_LTTextSessionTranslating)textTranslator;
- (void)_beginBatchRequest:(id)request;
- (void)_callDelegateOrGiveError:(id)error forConfiguration:(id)configuration completion:(id)completion;
- (void)_checkDownloadStatusForConfiguration:(id)configuration completion:(id)completion;
- (void)_didFinishMultiParagraphRequestWithUUID:(id)d;
- (void)_invocationCancelledSELFLogging;
- (void)_invocationStartedSELFLogging:(id)logging;
- (void)_prepareRequest:(id)request;
- (void)_supportedLocalePairsWithCompletionHandler:(id)handler;
- (void)_translateRequest:(id)request perItemHandler:(id)handler;
- (void)cancel:(BOOL)cancel;
- (void)preflightChecker:(id)checker continueCheckingFromStep:(int64_t)step forConfiguration:(id)configuration completion:(id)completion;
- (void)prepareDownloadsWithCompletion:(id)completion;
- (void)setLocaleResolver:(id)resolver;
- (void)translateBatch:(id)batch itemHandler:(id)handler completionHandler:(id)completionHandler;
- (void)translateRequest:(id)request forSession:(id)session perItemHandler:(id)handler;
- (void)translateString:(id)string completionHandler:(id)handler;
@end

@implementation _LTTextSession

+ (OS_dispatch_queue)synchronizationQueue
{
  if (synchronizationQueue_onceToken != -1)
  {
    +[_LTTextSession synchronizationQueue];
  }

  v3 = synchronizationQueue_synchronizationQueue;

  return v3;
}

- (_LTTextSession)initWithSourceLocale:(id)locale targetLocale:(id)targetLocale isHeadless:(BOOL)headless
{
  localeCopy = locale;
  targetLocaleCopy = targetLocale;
  v27.receiver = self;
  v27.super_class = _LTTextSession;
  v11 = [(_LTTextSession *)&v27 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_sourceLocale, locale);
    objc_storeStrong(&v12->_targetLocale, targetLocale);
    v12->_isHeadless = headless;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    inProgressMultiParagraphRequestByUUID = v12->_inProgressMultiParagraphRequestByUUID;
    v12->_inProgressMultiParagraphRequestByUUID = dictionary;

    v15 = objc_alloc_init(_LTTranslator);
    translator = v12->_translator;
    v12->_translator = v15;

    startTranslationSession = [(_LTTranslator *)v12->_translator startTranslationSession];
    translationSession = v12->_translationSession;
    v12->_translationSession = startTranslationSession;

    v19 = objc_alloc_init(_LTPreflightChecker);
    preflightChecker = v12->_preflightChecker;
    v12->_preflightChecker = v19;

    [(_LTPreflightChecker *)v12->_preflightChecker setDelegate:v12];
    objc_storeWeak(&v12->_textTranslator, v12);
    v21 = objc_alloc_init(_LTLanguageAvailability);
    languageAvailability = v12->_languageAvailability;
    v12->_languageAvailability = v21;

    v23 = [MEMORY[0x277CBEB58] set];
    ongoingRequestInvocationIDs = v12->_ongoingRequestInvocationIDs;
    v12->_ongoingRequestInvocationIDs = v23;

    v25 = v12;
  }

  return v12;
}

- (void)translateString:(id)string completionHandler:(id)handler
{
  v19 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  handlerCopy = handler;
  v9 = _LTOSLogTextAPI(handlerCopy, v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    *buf = 134217984;
    v18 = [stringCopy length];
    _os_log_impl(&dword_23AAF5000, v10, OS_LOG_TYPE_DEFAULT, "Client asked to translate single string: of length %zu", buf, 0xCu);
  }

  v11 = [[_LTTextInput alloc] initWithSourceText:stringCopy clientIdentifier:0];
  v16 = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __52___LTTextSession_translateString_completionHandler___block_invoke;
  v14[3] = &unk_278B6D6E0;
  v15 = handlerCopy;
  v13 = handlerCopy;
  [(_LTTextSession *)self translateBatch:v12 itemHandler:0 completionHandler:v14];
}

- (void)translateBatch:(id)batch itemHandler:(id)handler completionHandler:(id)completionHandler
{
  completionHandlerCopy = completionHandler;
  handlerCopy = handler;
  batchCopy = batch;
  v11 = [[_LTTextSessionRequest alloc] initWithBatch:batchCopy sourceLocale:self->_sourceLocale targetLocale:self->_targetLocale itemHandler:handlerCopy completionHandler:completionHandlerCopy];

  [(_LTTextSessionRequest *)v11 setIsHeadless:[(_LTTextSession *)self isHeadless]];
  [(_LTTextSession *)self _prepareRequest:v11];
}

- (void)prepareDownloadsWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = [[_LTTextSessionRequest alloc] initForDownloadRequestWithSourceLocale:self->_sourceLocale targetLocale:self->_targetLocale completionHandler:completionCopy];

  [v5 setIsHeadless:{-[_LTTextSession isHeadless](self, "isHeadless")}];
  [(_LTTextSession *)self _prepareRequest:v5];
}

- (void)cancel:(BOOL)cancel
{
  objc_initWeak(&location, self);
  synchronizationQueue = [objc_opt_class() synchronizationQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __25___LTTextSession_cancel___block_invoke;
  block[3] = &unk_278B6D708;
  objc_copyWeak(&v6, &location);
  cancelCopy = cancel;
  dispatch_async(synchronizationQueue, block);

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (BOOL)_isCancelled
{
  synchronizationQueue = [objc_opt_class() synchronizationQueue];
  dispatch_assert_queue_V2(synchronizationQueue);

  return self->_cancellationStatus - 1 < 2;
}

- (void)_prepareRequest:(id)request
{
  v19 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  batch = [requestCopy batch];
  v7 = _LTOSLogTextAPI(batch, v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    *buf = 134217984;
    v18 = [batch count];
    _os_log_impl(&dword_23AAF5000, v8, OS_LOG_TYPE_DEFAULT, "Client asked to translate batch of %zu inputs", buf, 0xCu);
  }

  synchronizationQueue = [objc_opt_class() synchronizationQueue];
  objc_initWeak(buf, self);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __34___LTTextSession__prepareRequest___block_invoke;
  v12[3] = &unk_278B6D750;
  objc_copyWeak(&v16, buf);
  v13 = requestCopy;
  v14 = synchronizationQueue;
  selfCopy = self;
  v10 = synchronizationQueue;
  v11 = requestCopy;
  dispatch_async(v10, v12);

  objc_destroyWeak(&v16);
  objc_destroyWeak(buf);
}

- (void)_beginBatchRequest:(id)request
{
  requestCopy = request;
  [requestCopy didStartTranslating];
  synchronizationQueue = [objc_opt_class() synchronizationQueue];
  v6 = dispatch_group_create();
  batch = [requestCopy batch];
  v8 = [batch count];

  if (v8)
  {
    v9 = v8;
    do
    {
      dispatch_group_enter(v6);
      --v9;
    }

    while (v9);
  }

  objc_initWeak(&location, self);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __37___LTTextSession__beginBatchRequest___block_invoke;
  v17[3] = &unk_278B6D7C8;
  objc_copyWeak(&v21, &location);
  v10 = synchronizationQueue;
  v18 = v10;
  v11 = requestCopy;
  v19 = v11;
  v12 = v6;
  v20 = v12;
  [(_LTTextSession *)self _translateRequest:v11 perItemHandler:v17];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __37___LTTextSession__beginBatchRequest___block_invoke_21;
  v14[3] = &unk_278B6D638;
  objc_copyWeak(v16, &location);
  v16[1] = v8;
  v15 = v11;
  v13 = v11;
  dispatch_group_notify(v12, v10, v14);

  objc_destroyWeak(v16);
  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

- (void)translateRequest:(id)request forSession:(id)session perItemHandler:(id)handler
{
  v48 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  sessionCopy = session;
  handlerCopy = handler;
  v10 = [_LTLocalePair alloc];
  resolvedSourceLocale = [requestCopy resolvedSourceLocale];
  resolvedTargetLocale = [requestCopy resolvedTargetLocale];
  v13 = [(_LTLocalePair *)v10 initWithSourceLocale:resolvedSourceLocale targetLocale:resolvedTargetLocale];

  array = [MEMORY[0x277CBEB18] array];
  objc_initWeak(&location, self);
  batch = [requestCopy batch];
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __61___LTTextSession_translateRequest_forSession_perItemHandler___block_invoke;
  v39[3] = &unk_278B6D818;
  objc_copyWeak(&v43, &location);
  v16 = v13;
  v40 = v16;
  v17 = handlerCopy;
  v42 = v17;
  v18 = array;
  v41 = v18;
  [batch enumerateObjectsUsingBlock:v39];

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v19 = v18;
  v20 = [v19 countByEnumeratingWithState:&v35 objects:v47 count:16];
  if (v20)
  {
    v21 = *v36;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v36 != v21)
        {
          objc_enumerationMutation(v19);
        }

        v23 = *(*(&v35 + 1) + 8 * i);
        [v23 setSourceOrigin:3];
        logIdentifier = [requestCopy logIdentifier];
        [v23 setLogIdentifier:logIdentifier];

        [v23 setForcedOfflineTranslation:{-[_LTTextSession allowOnlineTranslation](self, "allowOnlineTranslation") ^ 1}];
      }

      v20 = [v19 countByEnumeratingWithState:&v35 objects:v47 count:16];
    }

    while (v20);
  }

  batch2 = [requestCopy batch];
  v26 = [batch2 count];

  if ([v19 count])
  {
    v28 = +[_LTTranslator interruptionController];
    [v28 addObserver:requestCopy];

    v31 = _LTOSLogTextAPI(v29, v30);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      -[_LTTextSession translateRequest:forSession:perItemHandler:].cold.1(buf, [v19 count], v26, v31);
    }

    logIdentifier2 = [requestCopy logIdentifier];
    [(_LTTranslationSession *)self->_translationSession setLogIdentifier:logIdentifier2];

    [(_LTTranslationSession *)self->_translationSession translate:v19 useDedicatedTextMachPort:1];
  }

  else
  {
    v33 = _LTOSLogTextAPI(0, v27);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v46 = v26;
      _os_log_impl(&dword_23AAF5000, v33, OS_LOG_TYPE_INFO, "Didn't create any paragraph requests from %zu inputs, all inputs were likely whitespace only", buf, 0xCu);
    }
  }

  objc_destroyWeak(&v43);
  objc_destroyWeak(&location);
}

- (void)preflightChecker:(id)checker continueCheckingFromStep:(int64_t)step forConfiguration:(id)configuration completion:(id)completion
{
  checkerCopy = checker;
  configurationCopy = configuration;
  completionCopy = completion;
  synchronizationQueue = [objc_opt_class() synchronizationQueue];
  objc_initWeak(&location, self);
  v14 = [configurationCopy copy];
  v15 = v14;
  if (step)
  {
    if (step != 2)
    {
      goto LABEL_4;
    }

    v16 = MEMORY[0x277CCA9B8];
    effectiveSourceLocale = [v14 effectiveSourceLocale];
    effectiveTargetLocale = [v15 effectiveTargetLocale];
    v19 = [v16 lt_unsupportedPairingErrorWithSource:effectiveSourceLocale target:effectiveTargetLocale];

    if (!v19)
    {
      goto LABEL_4;
    }

LABEL_6:
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __88___LTTextSession_preflightChecker_continueCheckingFromStep_forConfiguration_completion___block_invoke;
    block[3] = &unk_278B6D4B0;
    objc_copyWeak(&v30, &location);
    v27 = v19;
    v28 = v15;
    v29 = completionCopy;
    v20 = v19;
    dispatch_async(synchronizationQueue, block);

    objc_destroyWeak(&v30);
    goto LABEL_7;
  }

  v19 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TranslationErrorDomain" code:20 userInfo:0];
  if (v19)
  {
    goto LABEL_6;
  }

LABEL_4:
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __88___LTTextSession_preflightChecker_continueCheckingFromStep_forConfiguration_completion___block_invoke_29;
  v21[3] = &unk_278B6D868;
  objc_copyWeak(&v25, &location);
  v22 = synchronizationQueue;
  v24 = completionCopy;
  v23 = v15;
  [(_LTTextSession *)self _checkDownloadStatusForConfiguration:v23 completion:v21];

  objc_destroyWeak(&v25);
LABEL_7:

  objc_destroyWeak(&location);
}

- (void)_callDelegateOrGiveError:(id)error forConfiguration:(id)configuration completion:(id)completion
{
  v20 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  configurationCopy = configuration;
  completionCopy = completion;
  synchronizationQueue = [objc_opt_class() synchronizationQueue];
  dispatch_assert_queue_V2(synchronizationQueue);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained needsUserInterventionForTextSession:self configuration:configurationCopy completion:completionCopy];
  }

  else
  {
    isHeadless = [(_LTTextSession *)self isHeadless];
    v14 = isHeadless;
    v16 = _LTOSLogTextAPI(isHeadless, v15);
    v17 = v16;
    if (v14)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v18 = 138412290;
        v19 = errorCopy;
        _os_log_impl(&dword_23AAF5000, v17, OS_LOG_TYPE_INFO, "_LTTextSession is running headless, so can't ask a delegate to complete validation, returning error: %@", &v18, 0xCu);
      }
    }

    else if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [_LTTextSession _callDelegateOrGiveError:forConfiguration:completion:];
    }

    completionCopy[2](completionCopy, 0, errorCopy);
  }
}

- (void)_checkDownloadStatusForConfiguration:(id)configuration completion:(id)completion
{
  configurationCopy = configuration;
  completionCopy = completion;
  objc_initWeak(&location, self);
  synchronizationQueue = [objc_opt_class() synchronizationQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66___LTTextSession__checkDownloadStatusForConfiguration_completion___block_invoke;
  block[3] = &unk_278B6D4B0;
  objc_copyWeak(&v16, &location);
  v13 = configurationCopy;
  v14 = synchronizationQueue;
  v15 = completionCopy;
  v9 = completionCopy;
  v10 = synchronizationQueue;
  v11 = configurationCopy;
  dispatch_async(v10, block);

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (void)_supportedLocalePairsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  synchronizationQueue = [objc_opt_class() synchronizationQueue];
  languageAvailability = self->_languageAvailability;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __61___LTTextSession__supportedLocalePairsWithCompletionHandler___block_invoke;
  v9[3] = &unk_278B6D8E0;
  v10 = synchronizationQueue;
  v11 = handlerCopy;
  v7 = handlerCopy;
  v8 = synchronizationQueue;
  [(_LTLanguageAvailability *)languageAvailability supportedLocalePairsWithCompletion:v9];
}

- (void)_translateRequest:(id)request perItemHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  synchronizationQueue = [objc_opt_class() synchronizationQueue];
  isForDownloadRequest = [requestCopy isForDownloadRequest];
  if (isForDownloadRequest)
  {
    v11 = _LTOSLogTextAPI(isForDownloadRequest, v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_23AAF5000, v11, OS_LOG_TYPE_INFO, "Finished preflight checks for download-only request and everything was installed already", buf, 2u);
    }
  }

  else
  {
    textTranslator = [(_LTTextSession *)self textTranslator];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __51___LTTextSession__translateRequest_perItemHandler___block_invoke;
    v13[3] = &unk_278B6D930;
    v14 = synchronizationQueue;
    v15 = handlerCopy;
    [textTranslator translateRequest:requestCopy forSession:self perItemHandler:v13];
  }
}

- (void)_didFinishMultiParagraphRequestWithUUID:(id)d
{
  dCopy = d;
  objc_initWeak(&location, self);
  synchronizationQueue = [objc_opt_class() synchronizationQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58___LTTextSession__didFinishMultiParagraphRequestWithUUID___block_invoke;
  block[3] = &unk_278B6CD08;
  objc_copyWeak(&v9, &location);
  v8 = dCopy;
  v6 = dCopy;
  dispatch_async(synchronizationQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)setLocaleResolver:(id)resolver
{
  resolverCopy = resolver;
  preflightChecker = [(_LTTextSession *)self preflightChecker];
  [preflightChecker setLocaleResolver:resolverCopy];
}

- (_LTPreflightLocaleResolving)localeResolver
{
  preflightChecker = [(_LTTextSession *)self preflightChecker];
  localeResolver = [preflightChecker localeResolver];

  return localeResolver;
}

- (void)_invocationStartedSELFLogging:(id)logging
{
  v40 = *MEMORY[0x277D85DE8];
  loggingCopy = logging;
  synchronizationQueue = [objc_opt_class() synchronizationQueue];
  dispatch_assert_queue_V2(synchronizationQueue);

  if (([loggingCopy isForDownloadRequest] & 1) == 0)
  {
    resolvedSourceLocale = [loggingCopy resolvedSourceLocale];
    v6 = resolvedSourceLocale;
    if (resolvedSourceLocale)
    {
      v7 = resolvedSourceLocale;
    }

    else
    {
      v7 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:&stru_284DBB9B8];
    }

    v8 = v7;

    resolvedTargetLocale = [loggingCopy resolvedTargetLocale];
    v10 = resolvedTargetLocale;
    if (resolvedTargetLocale)
    {
      v11 = resolvedTargetLocale;
    }

    else
    {
      v11 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:&stru_284DBB9B8];
    }

    v12 = v11;

    v37 = v8;
    v13 = [[_LTLocalePair alloc] initWithSourceLocale:v8 targetLocale:v12];
    v14 = [_LTSELFLoggingEventData alloc];
    logIdentifier = [loggingCopy logIdentifier];
    v16 = [(_LTSELFLoggingEventData *)v14 initWithType:1 invocationId:logIdentifier];

    v17 = [_LTSELFLoggingTranslateAppContext alloc];
    uUID = [MEMORY[0x277CCAD78] UUID];
    LOBYTE(v36) = 0;
    LOBYTE(v35) = 0;
    v19 = [(_LTSELFLoggingTranslateAppContext *)v17 initWithDisplayMode:0 localePair:v13 isGenderAlternativeEnabled:0 tabName:0 tabSessionId:uUID conversationTabView:0 isPlayTranslationsEnabled:v35 autoTranslateSessionId:0 audioChannel:0 languageIdentificationEnabled:v36];

    v20 = [[_LTSELFLoggingInvocationOptions alloc] initWithTask:0 inputMode:1 invocationType:10 translateAppContext:v19];
    [(_LTSELFLoggingEventData *)v16 setStartInvocationOptions:v20];
    v21 = [_LTSELFLoggingEventData alloc];
    logIdentifier2 = [loggingCopy logIdentifier];
    v23 = [(_LTSELFLoggingEventData *)v21 initWithType:10 invocationId:logIdentifier2];

    v24 = [[_LTSELFLoggingInvocationOptions alloc] initWithTask:0 inputMode:1 invocationType:10 translateAppContext:0];
    [(_LTSELFLoggingEventData *)v23 setStartInvocationOptions:v24];
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    processName = [mainBundle objectForInfoDictionaryKey:@"CFBundleIdentifier"];

    if (processName)
    {
      v29 = _LTOSLogXPC(v27, v28);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v39 = processName;
        _os_log_impl(&dword_23AAF5000, v29, OS_LOG_TYPE_INFO, "Got untrusted client identifier from Info.plist: %{public}@", buf, 0xCu);
      }
    }

    else
    {
      processInfo = [MEMORY[0x277CCAC38] processInfo];
      processName = [processInfo processName];

      v33 = _LTOSLogXPC(v31, v32);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        [_LTTextSession _invocationStartedSELFLogging:];
      }
    }

    v34 = processName;

    [(_LTSELFLoggingEventData *)v23 setUntrustedClientIdentifier:v34];
    [_LTTranslator selfLoggingInvocationStartedWithData:v16 invocationStartedTier1Data:v23];
  }
}

- (void)_invocationCancelledSELFLogging
{
  synchronizationQueue = [objc_opt_class() synchronizationQueue];
  dispatch_assert_queue_V2(synchronizationQueue);

  v4 = [(NSMutableSet *)self->_ongoingRequestInvocationIDs copy];
  [_LTTranslator selfLoggingInvocationCancelledForIDs:v4];
}

- (_LTTextSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (_LTTextSessionTranslating)textTranslator
{
  WeakRetained = objc_loadWeakRetained(&self->_textTranslator);

  return WeakRetained;
}

- (void)translateRequest:(uint64_t)a3 forSession:(os_log_t)log perItemHandler:.cold.1(uint8_t *buf, uint64_t a2, uint64_t a3, os_log_t log)
{
  *buf = 134218240;
  *(buf + 4) = a2;
  *(buf + 6) = 2048;
  *(buf + 14) = a3;
  _os_log_debug_impl(&dword_23AAF5000, log, OS_LOG_TYPE_DEBUG, "Translating %zu paragraphs from %zu batch items", buf, 0x16u);
}

@end