@interface _LTOnlineTranslationEngine
+ (id)blazarServiceWithBundleID:(id)d;
+ (void)initialize;
- (BOOL)_hasOngoingSpeechSession;
- (_LTOnlineTranslationEngine)initWithSelfLoggingManager:(id)manager;
- (id)_blazarService;
- (id)_serviceForTask:(int64_t)task;
- (id)_siriService;
- (id)_systemService;
- (id)_tokenizeString:(id)string inLocale:(id)locale;
- (id)_webTaskService;
- (void)_createOrUpdateBatchTranslationRequestWithParagraph:(id)paragraph index:(int64_t)index context:(id)context completion:(id)completion;
- (void)_speechSessionCompletedWithError:(id)error;
- (void)cancelServerTimeout;
- (void)cancelSpeechTranslation:(BOOL)translation;
- (void)sendBatchTranslationRequestWithDelegate:(id)delegate;
- (void)serverTimeoutFired;
- (void)speak:(id)speak withContext:(id)context completion:(id)completion;
- (void)startServerTimeoutTimer;
- (void)startSpeechTranslationWithContext:(id)context delegate:(id)delegate;
- (void)startTextToSpeechTranslationWithContext:(id)context text:(id)text delegate:(id)delegate;
- (void)translate:(id)translate withContext:(id)context paragraphResult:(id)result completion:(id)completion;
- (void)translateSentence:(id)sentence withContext:(id)context completion:(id)completion;
- (void)updateServerTimeout;
@end

@implementation _LTOnlineTranslationEngine

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    completionGroup = dispatch_group_create();

    MEMORY[0x2821F96F8]();
  }
}

- (_LTOnlineTranslationEngine)initWithSelfLoggingManager:(id)manager
{
  managerCopy = manager;
  v13.receiver = self;
  v13.super_class = _LTOnlineTranslationEngine;
  v6 = [(_LTOnlineTranslationEngine *)&v13 init];
  if (v6)
  {
    v7 = dispatch_queue_create("com.apple.translation.online-queue", 0);
    translationQueue = v6->_translationQueue;
    v6->_translationQueue = v7;

    v9 = dispatch_queue_create("com.apple.translation.server-timer", 0);
    timerQueue = v6->_timerQueue;
    v6->_timerQueue = v9;

    objc_storeStrong(&v6->_selfLoggingManager, manager);
    v11 = v6;
  }

  return v6;
}

+ (id)blazarServiceWithBundleID:(id)d
{
  v17 = *MEMORY[0x277D85DE8];
  dCopy = d;
  defaultSessionConfiguration = [MEMORY[0x277CCAD38] defaultSessionConfiguration];
  [defaultSessionConfiguration set_sourceApplicationBundleIdentifier:dCopy];
  [defaultSessionConfiguration set_allowsTLSFalseStart:1];
  [defaultSessionConfiguration setTLSMinimumSupportedProtocolVersion:771];
  [defaultSessionConfiguration setURLCache:0];
  mEMORY[0x277CCACD8] = [MEMORY[0x277CCACD8] sharedURLCache];
  removeAllCachedResponses = [mEMORY[0x277CCACD8] removeAllCachedResponses];
  v8 = _LTPreferencesOspreyEndpointURL(removeAllCachedResponses, v7);
  v10 = _LTOSLogTranslationEngine(v8, v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v13 = 138543618;
    v14 = v8;
    v15 = 2114;
    v16 = dCopy;
    _os_log_impl(&dword_232E53000, v10, OS_LOG_TYPE_INFO, "Creating service with URL: %{public}@, bundleID: %{public}@", &v13, 0x16u);
  }

  v11 = [(OspreyChannel *)[FTBlazarService alloc] initWithURL:v8 configuration:defaultSessionConfiguration];
  [(OspreyChannel *)v11 setUseCompression:1];

  return v11;
}

- (id)_blazarService
{
  blazarService = self->_blazarService;
  if (!blazarService)
  {
    v4 = [_LTOnlineTranslationEngine blazarServiceWithBundleID:@"com.apple.Translate"];
    v5 = self->_blazarService;
    self->_blazarService = v4;

    blazarService = self->_blazarService;
  }

  return blazarService;
}

- (id)_siriService
{
  siriService = self->_siriService;
  if (!siriService)
  {
    v4 = [_LTOnlineTranslationEngine blazarServiceWithBundleID:@"com.apple.siri"];
    v5 = self->_siriService;
    self->_siriService = v4;

    siriService = self->_siriService;
  }

  return siriService;
}

- (id)_systemService
{
  systemService = self->_systemService;
  if (!systemService)
  {
    v4 = [_LTOnlineTranslationEngine blazarServiceWithBundleID:@"com.apple.TranslationUIServices.TranslationUIService"];
    v5 = self->_systemService;
    self->_systemService = v4;

    systemService = self->_systemService;
  }

  return systemService;
}

- (id)_webTaskService
{
  webTaskService = self->_webTaskService;
  if (!webTaskService)
  {
    v4 = [_LTOnlineTranslationEngine blazarServiceWithBundleID:@"com.apple.mobilesafari"];
    v5 = self->_webTaskService;
    self->_webTaskService = v4;

    webTaskService = self->_webTaskService;
  }

  return webTaskService;
}

- (id)_serviceForTask:(int64_t)task
{
  if (task <= 0xB)
  {
    if (((1 << task) & 0x7C8) != 0)
    {
      goto LABEL_9;
    }

    if (((1 << task) & 0x820) != 0)
    {
      _systemService = [(_LTOnlineTranslationEngine *)self _systemService];
      goto LABEL_10;
    }

    if (task == 4)
    {
      _systemService = [(_LTOnlineTranslationEngine *)self _siriService];
      goto LABEL_10;
    }
  }

  if (task == 2)
  {
    _systemService = [(_LTOnlineTranslationEngine *)self _webTaskService];
    goto LABEL_10;
  }

LABEL_9:
  _systemService = [(_LTOnlineTranslationEngine *)self _blazarService];
LABEL_10:

  return _systemService;
}

- (void)startServerTimeoutTimer
{
  objc_initWeak(&location, self);
  timerQueue = self->_timerQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __53___LTOnlineTranslationEngine_startServerTimeoutTimer__block_invoke;
  v4[3] = &unk_2789B72E0;
  objc_copyWeak(&v5, &location);
  dispatch_async(timerQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)updateServerTimeout
{
  objc_initWeak(&location, self);
  timerQueue = self->_timerQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __49___LTOnlineTranslationEngine_updateServerTimeout__block_invoke;
  v4[3] = &unk_2789B72E0;
  objc_copyWeak(&v5, &location);
  dispatch_async(timerQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)cancelServerTimeout
{
  v3 = _LTOSLogTranslationEngine(self, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_232E53000, v3, OS_LOG_TYPE_INFO, "cancelServerTimeout", buf, 2u);
  }

  objc_initWeak(buf, self);
  timerQueue = self->_timerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49___LTOnlineTranslationEngine_cancelServerTimeout__block_invoke;
  block[3] = &unk_2789B72E0;
  objc_copyWeak(&v6, buf);
  dispatch_async(timerQueue, block);
  objc_destroyWeak(&v6);
  objc_destroyWeak(buf);
}

- (void)serverTimeoutFired
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = _LTOSLogTranslationEngine(self, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    LOWORD(v10) = 0;
    _os_log_impl(&dword_232E53000, v3, OS_LOG_TYPE_INFO, "batch timeout triggered", &v10, 2u);
  }

  if (self->batchTranslationResponseHandler)
  {
    date = [MEMORY[0x277CBEAA8] date];
    [date timeIntervalSinceDate:self->_startTime];
    v6 = v5;

    v9 = _LTOSLogTranslationEngine(v7, v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = 134217984;
      v11 = v6;
      _os_log_impl(&dword_232E53000, v9, OS_LOG_TYPE_INFO, "serverTimeoutFired Sending batch request after %.2fs", &v10, 0xCu);
    }

    [(_LTOnlineTranslationEngine *)self sendBatchTranslationRequestWithDelegate:self->batchTranslationResponseHandler];
  }
}

- (id)_tokenizeString:(id)string inLocale:(id)locale
{
  stringCopy = string;
  localeCopy = locale;
  v7 = objc_alloc_init(_LTTokenizer);
  v8 = [(_LTTokenizer *)v7 tokenize:stringCopy forLocale:localeCopy];

  return v8;
}

- (void)speak:(id)speak withContext:(id)context completion:(id)completion
{
  v40 = *MEMORY[0x277D85DE8];
  speakCopy = speak;
  contextCopy = context;
  completionCopy = completion;
  ttsCache = [(_LTOnlineTranslationEngine *)self ttsCache];
  v12 = MEMORY[0x277CCACA8];
  localePair = [contextCopy localePair];
  targetLocale = [localePair targetLocale];
  localeIdentifier = [targetLocale localeIdentifier];
  speakCopy = [v12 stringWithFormat:@"%@-%@", localeIdentifier, speakCopy];

  v17 = [ttsCache audioDataForKey:speakCopy];
  v19 = v17;
  if (v17)
  {
    v20 = _LTOSLogTranslationEngine(v17, v18);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_232E53000, v20, OS_LOG_TYPE_INFO, "Found cached TTS data", buf, 2u);
    }

    completionCopy[2](completionCopy, v19, 0);
  }

  else
  {
    v21 = [contextCopy _ospreyTTSRequestWithText:speakCopy];
    v23 = _LTOSLogTranslationEngine(v21, v22);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v28 = v21;
      language = [v21 language];
      gender = [v21 gender];
      *buf = 138543618;
      v37 = language;
      v38 = 2114;
      v39 = gender;
      _os_log_impl(&dword_232E53000, v23, OS_LOG_TYPE_INFO, "Start TTS request: %{public}@ / %{public}@", buf, 0x16u);

      v21 = v28;
    }

    v26 = -[_LTOnlineTranslationEngine _serviceForTask:](self, "_serviceForTask:", [contextCopy taskHint]);
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __59___LTOnlineTranslationEngine_speak_withContext_completion___block_invoke;
    v34[3] = &unk_2789B7658;
    v27 = v21;
    v35 = v27;
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __59___LTOnlineTranslationEngine_speak_withContext_completion___block_invoke_2;
    v29[3] = &unk_2789B7680;
    v33 = completionCopy;
    v30 = speakCopy;
    v31 = ttsCache;
    v32 = speakCopy;
    [v26 performTextToSpeechRouter:v27 requestBuilder:v34 completion:v29];
  }
}

- (void)_createOrUpdateBatchTranslationRequestWithParagraph:(id)paragraph index:(int64_t)index context:(id)context completion:(id)completion
{
  v86 = *MEMORY[0x277D85DE8];
  paragraphCopy = paragraph;
  contextCopy = context;
  completionCopy = completion;
  text = [paragraphCopy text];
  whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v15 = [text stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

  if (![v15 length])
  {
    v27 = MEMORY[0x277CE1C18];
    localePair = [contextCopy localePair];
    targetLocale = [localePair targetLocale];
    v30 = [v27 resultWithLocale:targetLocale translations:MEMORY[0x277CBEBF8]];

    [v30 setRoute:2];
    identifier = [paragraphCopy identifier];
    [v30 setIdentifier:identifier];

    completionCopy[2](completionCopy, v30, 0);
    goto LABEL_24;
  }

  localePair2 = [contextCopy localePair];
  sourceLocale = [localePair2 sourceLocale];

  localePair3 = [contextCopy localePair];
  targetLocale2 = [localePair3 targetLocale];

  batchTranslationResponseHandler = self->batchTranslationResponseHandler;
  if (!batchTranslationResponseHandler)
  {
    goto LABEL_16;
  }

  bufferSize = [(_LTBatchTranslationResponseHandler *)batchTranslationResponseHandler bufferSize];
  v72 = _LTPreferencesBatchingMaxParagraphBufferSize();
  batchedParagraphs = [(_LTBatchTranslationResponseHandler *)self->batchTranslationResponseHandler batchedParagraphs];
  v71 = [batchedParagraphs count];
  v70 = _LTPreferencesBatchingMaxParagraphs();

  sourceLocale2 = [(_LTBatchTranslationResponseHandler *)self->batchTranslationResponseHandler sourceLocale];
  if (![sourceLocale2 isEqual:sourceLocale])
  {
    goto LABEL_11;
  }

  targetLocale3 = [(_LTBatchTranslationResponseHandler *)self->batchTranslationResponseHandler targetLocale];
  v69 = completionCopy;
  if (([targetLocale3 isEqual:targetLocale2] & 1) == 0)
  {

LABEL_11:
    v24 = v15;

    v25 = 1;
    goto LABEL_12;
  }

  taskHint = [(_LTBatchTranslationResponseHandler *)self->batchTranslationResponseHandler taskHint];
  taskHint2 = [contextCopy taskHint];
  v24 = v15;
  v25 = taskHint != taskHint2;

  if (bufferSize >= v72 || v71 >= v70)
  {
    completionCopy = v69;
  }

  else
  {
    v26 = taskHint == taskHint2;
    completionCopy = v69;
    if (v26)
    {
      goto LABEL_15;
    }
  }

LABEL_12:
  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSinceDate:self->_startTime];
  v34 = v33;

  v37 = _LTOSLogTranslationEngine(v35, v36);
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109888;
    v79 = bufferSize >= v72;
    v80 = 1024;
    v81 = v71 >= v70;
    v82 = 1024;
    v83 = v25;
    v84 = 2048;
    v85 = v34;
    _os_log_debug_impl(&dword_232E53000, v37, OS_LOG_TYPE_DEBUG, "Sending batch request: bufferSizeExceeded: %{BOOL}i; maxParagraphsExceeded: %{BOOL}i; taskChanged: %{BOOL}i; after %.2fs", buf, 0x1Eu);
  }

  [(_LTOnlineTranslationEngine *)self sendBatchTranslationRequestWithDelegate:self->batchTranslationResponseHandler];
LABEL_15:
  v15 = v24;
  if (!self->batchTranslationResponseHandler)
  {
LABEL_16:
    v38 = objc_alloc_init(_LTBatchTranslationResponseHandler);
    v39 = self->batchTranslationResponseHandler;
    self->batchTranslationResponseHandler = v38;

    v40 = MEMORY[0x277CCACA8];
    sessionID = [contextCopy sessionID];
    index = [v40 stringWithFormat:@"%@/%08zd", sessionID, index];

    v43 = objc_alloc_init(_LTBatchedParagraphsHolder);
    [(_LTBatchTranslationResponseHandler *)self->batchTranslationResponseHandler setBatchedParagraphs:v43];

    v44 = _LTPreferencesRequestIDOverride(index);
    [(_LTBatchTranslationResponseHandler *)self->batchTranslationResponseHandler setRequestID:v44];

    sessionID2 = [contextCopy sessionID];
    v46 = _LTPreferencesSessionIDOverride(sessionID2);
    [(_LTBatchTranslationResponseHandler *)self->batchTranslationResponseHandler setSessionID:v46];

    [(_LTBatchTranslationResponseHandler *)self->batchTranslationResponseHandler setSourceLocale:sourceLocale];
    [(_LTBatchTranslationResponseHandler *)self->batchTranslationResponseHandler setTargetLocale:targetLocale2];
    -[_LTBatchTranslationResponseHandler setTaskHint:](self->batchTranslationResponseHandler, "setTaskHint:", [contextCopy taskHint]);
    clientIdentifier = [contextCopy clientIdentifier];
    [(_LTBatchTranslationResponseHandler *)self->batchTranslationResponseHandler setClientIdentifier:clientIdentifier];

    sourceURL = [contextCopy sourceURL];
    [(_LTBatchTranslationResponseHandler *)self->batchTranslationResponseHandler setSourceURL:sourceURL];

    sequoiaClientHeaderValue = [contextCopy sequoiaClientHeaderValue];
    [(_LTBatchTranslationResponseHandler *)self->batchTranslationResponseHandler setClientHeader:sequoiaClientHeaderValue];

    logIdentifier = [contextCopy logIdentifier];
    [(_LTBatchTranslationResponseHandler *)self->batchTranslationResponseHandler setLogIdentifier:logIdentifier];

    -[_LTBatchTranslationResponseHandler setSupportsGenderDisambiguation:](self->batchTranslationResponseHandler, "setSupportsGenderDisambiguation:", [contextCopy supportsGenderDisambiguation]);
    [contextCopy setSourceURL:0];
    [(_LTOnlineTranslationEngine *)self startServerTimeoutTimer];
  }

  v51 = objc_alloc_init(FTMutableBatchTranslationRequest_Paragraph);
  identifier2 = [paragraphCopy identifier];
  [(FTMutableBatchTranslationRequest_Paragraph *)v51 setParagraph_id:identifier2];

  text2 = [paragraphCopy text];
  [(FTMutableBatchTranslationRequest_Paragraph *)v51 setText:text2];

  v54 = objc_alloc_init(_FTParagraphBatchInfo);
  [(_FTParagraphBatchInfo *)v54 setParagraph:paragraphCopy];
  [(_FTParagraphBatchInfo *)v54 setRequestParagraph:v51];
  [(_FTParagraphBatchInfo *)v54 setCompletion:completionCopy];
  spans = [paragraphCopy spans];
  v56 = [spans count] == 0;

  if (!v56)
  {
    spans2 = [paragraphCopy spans];
    v76[0] = MEMORY[0x277D85DD0];
    v76[1] = 3221225472;
    v76[2] = __107___LTOnlineTranslationEngine__createOrUpdateBatchTranslationRequestWithParagraph_index_context_completion___block_invoke;
    v76[3] = &unk_2789B76A8;
    v77 = paragraphCopy;
    v60 = [spans2 _ltCompactMap:v76];
    [(FTMutableBatchTranslationRequest_Paragraph *)v51 setSpan:v60];
  }

  v61 = _LTOSLogTranslationEngine(v57, v58);
  if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
  {
    [(FTMutableBatchTranslationRequest_Paragraph *)v51 text];
    objc_claimAutoreleasedReturnValue();
    [(_LTBatchTranslationResponseHandler *)self->batchTranslationResponseHandler requestID];
    objc_claimAutoreleasedReturnValue();
    [_LTOnlineTranslationEngine _createOrUpdateBatchTranslationRequestWithParagraph:index:context:completion:];
  }

  v64 = _LTOSLogTranslationEngine(v62, v63);
  if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
  {
    [(FTMutableBatchTranslationRequest_Paragraph *)v51 span];
    objc_claimAutoreleasedReturnValue();
    [_LTOnlineTranslationEngine _createOrUpdateBatchTranslationRequestWithParagraph:index:context:completion:];
  }

  v65 = self->batchTranslationResponseHandler;
  text3 = [(FTMutableBatchTranslationRequest_Paragraph *)v51 text];
  -[_LTBatchTranslationResponseHandler setBufferSize:](v65, "setBufferSize:", -[_LTBatchTranslationResponseHandler bufferSize](v65, "bufferSize") + [text3 length]);

  batchedParagraphs2 = [(_LTBatchTranslationResponseHandler *)self->batchTranslationResponseHandler batchedParagraphs];
  paragraph_id = [(FTMutableBatchTranslationRequest_Paragraph *)v51 paragraph_id];
  [batchedParagraphs2 insertParagraph:v54 withId:paragraph_id];

LABEL_24:
}

- (void)sendBatchTranslationRequestWithDelegate:(id)delegate
{
  v98 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  v72 = delegateCopy;
  [(_LTOnlineTranslationEngine *)self cancelServerTimeout];
  v73 = objc_alloc_init(FTMutableBatchTranslationRequest);
  requestID = [(_LTBatchTranslationResponseHandler *)self->batchTranslationResponseHandler requestID];
  [(FTMutableBatchTranslationRequest *)v73 setRequest_id:requestID];

  [(_LTBatchTranslationResponseHandler *)self->batchTranslationResponseHandler taskHint];
  v6 = _LTTranslationModelTaskString();
  [(FTMutableBatchTranslationRequest *)v73 setTask:v6];

  clientIdentifier = [(_LTBatchTranslationResponseHandler *)self->batchTranslationResponseHandler clientIdentifier];
  [(FTMutableBatchTranslationRequest *)v73 setApp_id:clientIdentifier];

  sessionID = [(_LTBatchTranslationResponseHandler *)self->batchTranslationResponseHandler sessionID];
  [(FTMutableBatchTranslationRequest *)v73 setSession_id:sessionID];

  sourceURL = [delegateCopy sourceURL];

  if (sourceURL)
  {
    sourceURL2 = [delegateCopy sourceURL];
    absoluteString = [sourceURL2 absoluteString];
    [(FTMutableBatchTranslationRequest *)v73 setUrl:absoluteString];
  }

  batchedParagraphs = [delegateCopy batchedParagraphs];
  paragraphs = [batchedParagraphs paragraphs];
  [(FTMutableBatchTranslationRequest *)v73 setParagraphs:paragraphs];

  paragraph = [delegateCopy paragraph];
  -[FTMutableBatchTranslationRequest setIs_partial:](v73, "setIs_partial:", [paragraph isFinal] ^ 1);

  sourceLocale = [delegateCopy sourceLocale];
  _ltLocaleIdentifier = [sourceLocale _ltLocaleIdentifier];
  [(FTMutableBatchTranslationRequest *)v73 setSource_language:_ltLocaleIdentifier];

  targetLocale = [delegateCopy targetLocale];
  _ltLocaleIdentifier2 = [targetLocale _ltLocaleIdentifier];
  [(FTMutableBatchTranslationRequest *)v73 setTarget_language:_ltLocaleIdentifier2];

  mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
  siriDataSharingOptInStatus = [mEMORY[0x277CEF368] siriDataSharingOptInStatus];
  if ((siriDataSharingOptInStatus - 1) > 2)
  {
    v21 = 0;
  }

  else
  {
    v21 = qword_233005D28[siriDataSharingOptInStatus - 1];
  }

  [(FTMutableBatchTranslationRequest *)v73 setOpt_in_status:LTDOspreyDataSharingStatus(v21)];
  v68 = objc_alloc_init(FTMutableTranslationOptions);
  -[FTMutableTranslationOptions setEnable_disambiguation_alternatives:](v68, "setEnable_disambiguation_alternatives:", [delegateCopy supportsGenderDisambiguation]);
  [(FTMutableTranslationOptions *)v68 setDisable_payload_logging:LTDDisablePayloadLogging(v21, v22)];
  v23 = [(FTMutableBatchTranslationRequest *)v73 setOptions:v68];
  v25 = _LTOSLogTranslationEngine(v23, v24);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    [(_LTOnlineTranslationEngine *)[(FTMutableTranslationOptions *)v68 enable_disambiguation_alternatives] sendBatchTranslationRequestWithDelegate:v97, v25];
  }

  v28 = _LTOSLogTranslationEngine(v26, v27);
  v29 = os_signpost_id_generate(v28);
  v30 = v28;
  v31 = v30;
  spid = v29;
  log = v30;
  if (v29 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v30))
  {
    requestID2 = [v72 requestID];
    *buf = 138543362;
    v90 = requestID2;
    _os_signpost_emit_with_name_impl(&dword_232E53000, log, OS_SIGNPOST_INTERVAL_BEGIN, v29, "TranslateParagraph", "Online: Translating paragraph: %{public}@", buf, 0xCu);

    v31 = log;
  }

  v70 = _LTPreferencesOspreyEndpointURL(v33, v34);
  v36 = _LTOSLogTranslationEngine(v70, v35);
  if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
  {
    requestID3 = [v72 requestID];
    task = [(FTMutableBatchTranslationRequest *)v73 task];
    sessionID2 = [v72 sessionID];
    *buf = 138544130;
    v90 = requestID3;
    v91 = 2114;
    v92 = task;
    v93 = 2114;
    v94 = sessionID2;
    v95 = 2114;
    v96 = v70;
    _os_log_impl(&dword_232E53000, v36, OS_LOG_TYPE_INFO, "Sending batch for requestID: %{public}@, task: %{public}@, sessionID: %{public}@, URL: %{public}@", buf, 0x2Au);
  }

  v71 = objc_alloc_init(FTMutableBatchTranslationStreamingRequest);
  [(FTMutableBatchTranslationStreamingRequest *)v71 setContentAsFTBatchTranslationRequest:v73];
  [(FTMutableBatchTranslationStreamingRequest *)v71 setContent_type:1];
  v40 = [v72 setRequest:v73];
  v42 = _LTOSLogTranslationEngine(v40, v41);
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
  {
    batchedParagraphs2 = [v72 batchedParagraphs];
    v65 = [batchedParagraphs2 count];
    *buf = 134217984;
    v90 = v65;
    _os_log_debug_impl(&dword_232E53000, v42, OS_LOG_TYPE_DEBUG, "Translating with online engine: %zu batched paragraph(s)", buf, 0xCu);
  }

  selfLoggingManager = self->_selfLoggingManager;
  logIdentifier = [v72 logIdentifier];
  requestID4 = [v72 requestID];
  v66 = -[_LTDSELFLoggingManager sendFrameworkRequestWithInvocationId:qssSessionId:requestType:requestRoute:requestSize:](selfLoggingManager, "sendFrameworkRequestWithInvocationId:qssSessionId:requestType:requestRoute:requestSize:", logIdentifier, requestID4, 1, 1, [v72 bufferSize]);

  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  paragraphs2 = [(FTMutableBatchTranslationRequest *)v73 paragraphs];
  v47 = 0;
  v48 = [paragraphs2 countByEnumeratingWithState:&v84 objects:v88 count:16];
  if (v48)
  {
    v49 = *v85;
    do
    {
      for (i = 0; i != v48; ++i)
      {
        if (*v85 != v49)
        {
          objc_enumerationMutation(paragraphs2);
        }

        v51 = *(*(&v84 + 1) + 8 * i);
        v52 = objc_alloc(MEMORY[0x277CCA898]);
        text = [v51 text];
        v54 = [v52 initWithString:text];

        lt_sentences = [v54 lt_sentences];
        v56 = [lt_sentences count];

        v47 += v56;
      }

      v48 = [paragraphs2 countByEnumeratingWithState:&v84 objects:v88 count:16];
    }

    while (v48);
  }

  v57 = -[_LTOnlineTranslationEngine _serviceForTask:](self, "_serviceForTask:", [v72 taskHint]);
  v81[0] = MEMORY[0x277D85DD0];
  v81[1] = 3221225472;
  v81[2] = __70___LTOnlineTranslationEngine_sendBatchTranslationRequestWithDelegate___block_invoke;
  v81[3] = &unk_2789B76D0;
  v82 = v73;
  v83 = v72;
  v74[0] = MEMORY[0x277D85DD0];
  v74[1] = 3221225472;
  v74[2] = __70___LTOnlineTranslationEngine_sendBatchTranslationRequestWithDelegate___block_invoke_2;
  v74[3] = &unk_2789B7720;
  v74[4] = self;
  v58 = log;
  v75 = v58;
  v79 = spid;
  v59 = v82;
  v76 = v59;
  v60 = v66;
  v77 = v60;
  v80 = v47;
  v61 = v83;
  v78 = v61;
  v62 = [v57 performBatchTranslationWithDelegate:v61 requestBuilder:v81 completion:v74];

  if (v62)
  {
    [v62 sendBatchTranslationStreamingRequest:v71];
    [v62 closeStream];
  }

  batchTranslationResponseHandler = self->batchTranslationResponseHandler;
  self->batchTranslationResponseHandler = 0;
}

- (void)translateSentence:(id)sentence withContext:(id)context completion:(id)completion
{
  sentenceCopy = sentence;
  contextCopy = context;
  completionCopy = completion;
  v12 = _LTOSLogTranslationEngine(completionCopy, v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_232E53000, v12, OS_LOG_TYPE_INFO, "Start translating sentence with online engine", buf, 2u);
  }

  v13 = [_LTAnalyticsEvent timedEventWithName:@"OnlineTextTranslation"];
  localePair = [contextCopy localePair];
  sourceLocale = [localePair sourceLocale];
  [v13 setSourceLocale:sourceLocale];

  localePair2 = [contextCopy localePair];
  targetLocale = [localePair2 targetLocale];
  [v13 setTargetLocale:targetLocale];

  [v13 addFieldsFromDictionary:&unk_2848681F8];
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];

  v20 = [objc_alloc(MEMORY[0x277CE1C10]) initWithIdentifier:uUIDString text:sentenceCopy spans:0 isFinal:1];
  v22 = _LTOSLogTranslationEngine(v20, v21);
  v23 = os_signpost_id_generate(v22);
  v24 = v22;
  v25 = v24;
  if ((v23 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
  {
    LOWORD(buf[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_232E53000, v25, OS_SIGNPOST_INTERVAL_BEGIN, v23, "TranslateSentence", "Online: Translating sentence", buf, 2u);
  }

  objc_initWeak(buf, self);
  translationQueue = self->_translationQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71___LTOnlineTranslationEngine_translateSentence_withContext_completion___block_invoke;
  block[3] = &unk_2789B7770;
  objc_copyWeak(v38, buf);
  v33 = v20;
  v34 = contextCopy;
  v35 = v25;
  v36 = v13;
  v38[1] = v23;
  v37 = completionCopy;
  v27 = completionCopy;
  v28 = v13;
  v29 = v25;
  v30 = contextCopy;
  v31 = v20;
  dispatch_async(translationQueue, block);

  objc_destroyWeak(v38);
  objc_destroyWeak(buf);
}

- (void)translate:(id)translate withContext:(id)context paragraphResult:(id)result completion:(id)completion
{
  v38[2] = *MEMORY[0x277D85DE8];
  translateCopy = translate;
  contextCopy = context;
  resultCopy = result;
  completionCopy = completion;
  v14 = [translateCopy count];
  if (v14)
  {
    v16 = _LTOSLogTranslationEngine(v14, v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v36 = [translateCopy count];
      _os_log_impl(&dword_232E53000, v16, OS_LOG_TYPE_INFO, "Start translating %zu paragraphs with online engine", buf, 0xCu);
    }

    v17 = [_LTAnalyticsEvent timedEventWithName:@"OnlineTextTranslation"];
    localePair = [contextCopy localePair];
    sourceLocale = [localePair sourceLocale];
    [v17 setSourceLocale:sourceLocale];

    localePair2 = [contextCopy localePair];
    targetLocale = [localePair2 targetLocale];
    [v17 setTargetLocale:targetLocale];

    objc_initWeak(buf, self);
    translationQueue = self->_translationQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __79___LTOnlineTranslationEngine_translate_withContext_paragraphResult_completion___block_invoke;
    block[3] = &unk_2789B7810;
    objc_copyWeak(&v34, buf);
    v30 = translateCopy;
    v31 = contextCopy;
    v32 = resultCopy;
    v33 = completionCopy;
    dispatch_async(translationQueue, block);

    objc_destroyWeak(&v34);
    objc_destroyWeak(buf);
  }

  else
  {
    v23 = _LTOSLogTranslationEngine(0, v15);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [_LTOnlineTranslationEngine translate:withContext:paragraphResult:completion:];
    }

    v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v24 = MEMORY[0x277CCA9B8];
    v37[0] = *MEMORY[0x277CCA450];
    v25 = [v17 localizedStringForKey:@"GENERIC_FAILURE_ERROR_DESCRIPTION" value:&stru_284834138 table:0];
    v38[0] = v25;
    v37[1] = *MEMORY[0x277CCA470];
    v26 = [v17 localizedStringForKey:@"INPUT_EMPTY_ERROR_DESCRIPTION" value:&stru_284834138 table:0];
    v38[1] = v26;
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:2];
    v28 = [v24 errorWithDomain:*MEMORY[0x277CE1C58] code:3 userInfo:v27];

    (*(completionCopy + 2))(completionCopy, v28);
  }
}

- (void)startTextToSpeechTranslationWithContext:(id)context text:(id)text delegate:(id)delegate
{
  v35 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  textCopy = text;
  delegateCopy = delegate;
  if (![(_LTOnlineTranslationEngine *)self _hasOngoingSpeechSession])
  {
LABEL_6:
    mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
    v16 = [mEMORY[0x277CEF368] siriDataSharingOptInStatus] - 1;
    if (v16 > 2)
    {
      v17 = 0;
    }

    else
    {
      v17 = qword_233005D28[v16];
    }

    [contextCopy setDataSharingOptInStatus:v17];

    v18 = [_LTOspreySpeechTranslationSession alloc];
    v19 = -[_LTOnlineTranslationEngine _serviceForTask:](self, "_serviceForTask:", [contextCopy taskHint]);
    v20 = [(_LTOspreySpeechTranslationSession *)v18 initWithService:v19 context:contextCopy text:textCopy delegate:delegateCopy selfLoggingManager:self->_selfLoggingManager];

    selfLoggingManager = self->_selfLoggingManager;
    logIdentifier = [contextCopy logIdentifier];
    uniqueID = [contextCopy uniqueID];
    v24 = -[_LTDSELFLoggingManager sendFrameworkRequestWithInvocationId:qssSessionId:requestType:requestRoute:requestSize:](selfLoggingManager, "sendFrameworkRequestWithInvocationId:qssSessionId:requestType:requestRoute:requestSize:", logIdentifier, uniqueID, 2, 1, [textCopy length]);

    objc_initWeak(buf, self);
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __84___LTOnlineTranslationEngine_startTextToSpeechTranslationWithContext_text_delegate___block_invoke;
    v30[3] = &unk_2789B7860;
    objc_copyWeak(&v32, buf);
    v31 = v24;
    v25 = v24;
    [(_LTOspreySpeechTranslationSession *)v20 setCompletionBlock:v30];
    speechSession = self->_speechSession;
    self->_speechSession = v20;
    v27 = v20;

    objc_destroyWeak(&v32);
    objc_destroyWeak(buf);
    goto LABEL_10;
  }

  overrideOngoingSessionIfNeeded = [contextCopy overrideOngoingSessionIfNeeded];
  if (overrideOngoingSessionIfNeeded)
  {
    v13 = _LTOSLogTranslationEngine(overrideOngoingSessionIfNeeded, v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = self->_speechSession;
      *buf = 134217984;
      v34 = v14;
      _os_log_impl(&dword_232E53000, v13, OS_LOG_TYPE_INFO, "Context allows overriding ongoing speech session %p; cancelling existing session and creating a new one for TTS", buf, 0xCu);
    }

    [(_LTOspreySpeechTranslationSession *)self->_speechSession cancel];
    goto LABEL_6;
  }

  v28 = _LTOSLogTranslationEngine(overrideOngoingSessionIfNeeded, v12);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    [_LTOnlineTranslationEngine startTextToSpeechTranslationWithContext:text:delegate:];
  }

  if (objc_opt_respondsToSelector())
  {
    lt_speechTranslationOngoing = [MEMORY[0x277CCA9B8] lt_speechTranslationOngoing];
    [delegateCopy translationDidFinishWithError:lt_speechTranslationOngoing];
  }

LABEL_10:
}

- (BOOL)_hasOngoingSpeechSession
{
  speechSession = self->_speechSession;
  if (speechSession)
  {
    isCancelled = [(_LTOspreySpeechTranslationSession *)speechSession isCancelled];
    v5 = isCancelled;
    if (isCancelled)
    {
      v6 = _LTOSLogTranslationEngine(isCancelled, v4);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [_LTOnlineTranslationEngine _hasOngoingSpeechSession];
      }
    }

    LOBYTE(speechSession) = v5 ^ 1;
  }

  return speechSession;
}

- (void)startSpeechTranslationWithContext:(id)context delegate:(id)delegate
{
  v24 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  delegateCopy = delegate;
  if (![(_LTOnlineTranslationEngine *)self _hasOngoingSpeechSession])
  {
LABEL_6:
    mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
    v13 = [mEMORY[0x277CEF368] siriDataSharingOptInStatus] - 1;
    if (v13 > 2)
    {
      v14 = 0;
    }

    else
    {
      v14 = qword_233005D28[v13];
    }

    [contextCopy setDataSharingOptInStatus:v14];

    lt_speechTranslationOngoing = -[_LTOnlineTranslationEngine _serviceForTask:](self, "_serviceForTask:", [contextCopy taskHint]);
    v16 = [[_LTOspreySpeechTranslationSession alloc] initWithService:lt_speechTranslationOngoing context:contextCopy delegate:delegateCopy selfLoggingManager:self->_selfLoggingManager];
    ttsCache = [(_LTOnlineTranslationEngine *)self ttsCache];
    [(_LTOspreySpeechTranslationSession *)v16 setTtsCache:ttsCache];

    objc_initWeak(buf, self);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __73___LTOnlineTranslationEngine_startSpeechTranslationWithContext_delegate___block_invoke;
    v20[3] = &unk_2789B7888;
    objc_copyWeak(&v21, buf);
    [(_LTOspreySpeechTranslationSession *)v16 setCompletionBlock:v20];
    speechSession = self->_speechSession;
    self->_speechSession = v16;

    objc_destroyWeak(&v21);
    objc_destroyWeak(buf);
    goto LABEL_10;
  }

  overrideOngoingSessionIfNeeded = [contextCopy overrideOngoingSessionIfNeeded];
  if (overrideOngoingSessionIfNeeded)
  {
    v10 = _LTOSLogTranslationEngine(overrideOngoingSessionIfNeeded, v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = self->_speechSession;
      *buf = 134217984;
      v23 = v11;
      _os_log_impl(&dword_232E53000, v10, OS_LOG_TYPE_INFO, "Context allows overriding ongoing speech session %p; cancelling existing session and creating a new one", buf, 0xCu);
    }

    [(_LTOspreySpeechTranslationSession *)self->_speechSession cancel];
    goto LABEL_6;
  }

  v19 = _LTOSLogTranslationEngine(overrideOngoingSessionIfNeeded, v9);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    [_LTOnlineTranslationEngine startSpeechTranslationWithContext:delegate:];
  }

  if (objc_opt_respondsToSelector())
  {
    lt_speechTranslationOngoing = [MEMORY[0x277CCA9B8] lt_speechTranslationOngoing];
    [delegateCopy translationDidFinishWithError:lt_speechTranslationOngoing];
LABEL_10:
  }
}

- (void)_speechSessionCompletedWithError:(id)error
{
  errorCopy = error;
  dispatch_assert_queue_V2(self->_serverQueue);
  if (errorCopy)
  {
    v7 = _LTOSLogTranslationEngine(v5, v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [_LTOnlineTranslationEngine _speechSessionCompletedWithError:];
    }
  }

  else
  {
    v8 = _LTOSLogTranslationEngine(v5, v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&dword_232E53000, v8, OS_LOG_TYPE_INFO, "Completed current speech session successfully", v10, 2u);
    }
  }

  speechSession = self->_speechSession;
  self->_speechSession = 0;
}

- (void)cancelSpeechTranslation:(BOOL)translation
{
  objc_initWeak(&location, self);
  serverQueue = self->_serverQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54___LTOnlineTranslationEngine_cancelSpeechTranslation___block_invoke;
  block[3] = &unk_2789B7290;
  objc_copyWeak(&v7, &location);
  translationCopy = translation;
  dispatch_async(serverQueue, block);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)_createOrUpdateBatchTranslationRequestWithParagraph:index:context:completion:.cold.1()
{
  OUTLINED_FUNCTION_7_1();
  *v2 = 138740227;
  *(v2 + 4) = v3;
  *(v2 + 12) = 2114;
  *(v2 + 14) = v4;
  _os_log_debug_impl(&dword_232E53000, v6, OS_LOG_TYPE_DEBUG, "Translating: %{sensitive}@ request_id %{public}@", v5, 0x16u);
}

- (void)_createOrUpdateBatchTranslationRequestWithParagraph:index:context:completion:.cold.2()
{
  OUTLINED_FUNCTION_6_0();
  *v1 = 138739971;
  *(v1 + 4) = v2;
  _os_log_debug_impl(&dword_232E53000, v3, OS_LOG_TYPE_DEBUG, "Spans: %{sensitive}@", v4, 0xCu);
}

- (void)sendBatchTranslationRequestWithDelegate:(os_log_t)log .cold.1(char a1, uint8_t *buf, os_log_t log)
{
  *buf = 67109120;
  *(buf + 1) = a1 & 1;
  _os_log_debug_impl(&dword_232E53000, log, OS_LOG_TYPE_DEBUG, "Disambiguation: Creating online batch request, setting option for enable_disambiguation_alternatives: %{BOOL}i", buf, 8u);
}

- (void)translate:withContext:paragraphResult:completion:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end