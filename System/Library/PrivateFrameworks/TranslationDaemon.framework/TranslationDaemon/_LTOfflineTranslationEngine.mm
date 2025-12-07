@interface _LTOfflineTranslationEngine
+ (BOOL)_needToWaitForBothFinalTranslationResultsWithContext:(id)context lidResult:(id)result;
- (BOOL)translatesPair:(id)pair;
- (_LTOfflineTranslationEngine)initWithLocalePair:(id)pair taskHint:(int64_t)hint assetInfo:(id)info selfLoggingManager:(id)manager;
- (id)_concatenatedAlignmentsFromSentences:(id)sentences;
- (id)_getBestRecognitionResult:(id)result context:(id)context;
- (id)_handleTranslationResults:(id)results withContext:(id)context sourceString:(id)string sourceSpans:(id)spans stabilizer:(id)stabilizer;
- (id)_paragraphResultFromSentences:(id)sentences;
- (void)_loadEtiquetteSanitizersForTaskHint:(int64_t)hint;
- (void)_loadRecognizersWithContext:(id)context;
- (void)_loadTranslatorForTask:(id)task;
- (void)_performCancelRecognition:(BOOL)recognition;
- (void)_translate:(id)_translate withContext:(id)context isFinal:(BOOL)final completion:(id)completion;
- (void)_translate:(id)_translate withContext:(id)context toLocale:(id)locale paragraphResult:(id)result completion:(id)completion;
- (void)_translateParagraph:(id)paragraph withContext:(id)context toLocale:(id)locale completion:(id)completion;
- (void)_translatePrepare:(id)prepare;
- (void)_translateString:(id)string isFinal:(BOOL)final withContext:(id)context toLocale:(id)locale withSpans:(id)spans stabilizer:(id)stabilizer completion:(id)completion;
- (void)_waitForLIDWithContext:(id)context completion:(id)completion;
- (void)addSpeechAudioData:(id)data;
- (void)cancelRecognition:(BOOL)recognition;
- (void)cancelSpeechTranslation:(BOOL)translation;
- (void)endAudio;
- (void)endpoint;
- (void)preheatAsynchronously:(BOOL)asynchronously withContext:(id)context;
- (void)setLanguagesRecognized:(id)recognized context:(id)context;
- (void)speak:(id)speak withContext:(id)context completion:(id)completion;
- (void)startSpeechTranslationWithContext:(id)context delegate:(id)delegate;
- (void)startTextToSpeechTranslationWithContext:(id)context text:(id)text delegate:(id)delegate;
- (void)translate:(id)translate withContext:(id)context paragraphResult:(id)result completion:(id)completion;
- (void)translateSentence:(id)sentence withContext:(id)context completion:(id)completion;
- (void)translateStreamingInput:(id)input context:(id)context stabilizer:(id)stabilizer completion:(id)completion;
@end

@implementation _LTOfflineTranslationEngine

- (_LTOfflineTranslationEngine)initWithLocalePair:(id)pair taskHint:(int64_t)hint assetInfo:(id)info selfLoggingManager:(id)manager
{
  pairCopy = pair;
  infoCopy = info;
  managerCopy = manager;
  v20.receiver = self;
  v20.super_class = _LTOfflineTranslationEngine;
  v14 = [(_LTOfflineTranslationEngine *)&v20 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_assetInfo, info);
    v16 = dispatch_queue_create("com.apple.siri.translation.offline", 0);
    queue = v15->_queue;
    v15->_queue = v16;

    objc_storeStrong(&v15->_callbackQueue, MEMORY[0x277D85CD0]);
    objc_storeStrong(&v15->_localePair, pair);
    v15->_taskHint = hint;
    v15->_isSpeechTranslationCancelled = 0;
    v15->_didEndpointSpeech = 0;
    objc_storeStrong(&v15->_selfLoggingManager, manager);
    v18 = v15;
  }

  return v15;
}

- (BOOL)translatesPair:(id)pair
{
  pairCopy = pair;
  if (([(_LTLocalePair *)self->_localePair isEqual:pairCopy]& 1) != 0)
  {
    v5 = 1;
  }

  else
  {
    localePair = self->_localePair;
    reversedPair = [pairCopy reversedPair];
    if (([(_LTLocalePair *)localePair isEqual:reversedPair]& 1) != 0)
    {
      v5 = 1;
    }

    else if ([pairCopy isPassthrough])
    {
      sourceLocale = [(_LTLocalePair *)self->_localePair sourceLocale];
      sourceLocale2 = [pairCopy sourceLocale];
      if ([sourceLocale isEqual:sourceLocale2])
      {
        v5 = 1;
      }

      else
      {
        targetLocale = [(_LTLocalePair *)self->_localePair targetLocale];
        sourceLocale3 = [pairCopy sourceLocale];
        v5 = [targetLocale isEqual:sourceLocale3];
      }
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (void)_loadRecognizersWithContext:(id)context
{
  v65 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  dispatch_assert_queue_V2(self->_queue);
  if (!self->_earError && !self->_recognizer)
  {
    v7 = _LTOSLogTranslationEngine(v5, v6);
    v8 = os_signpost_id_generate(v7);
    v9 = v7;
    v10 = v9;
    v53 = v8 - 1;
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_232E53000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "LoadOfflineRecognizers", "Loading recognizers", buf, 2u);
    }

    spid = v8;
    v54 = v10;

    asrModelURLs = [(_LTOfflineTranslationEngine *)self asrModelURLs];
    v12 = asrModelURLs == 0;

    if (!v12)
    {
      v15 = _LTOSLogTranslationEngine(v13, v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        asrModelURLs2 = [(_LTOfflineTranslationEngine *)self asrModelURLs];
        [(_LTOfflineTranslationEngine *)asrModelURLs2 _loadRecognizersWithContext:v64];
      }
    }

    asrModelURLs3 = [(_LTOfflineTranslationEngine *)self asrModelURLs];
    if ([asrModelURLs3 count])
    {
      asrModelURLs4 = [(_LTOfflineTranslationEngine *)self asrModelURLs];
      [asrModelURLs4 objectAtIndexedSubscript:0];
    }

    else
    {
      assetInfo = self->_assetInfo;
      asrModelURLs4 = [(_LTLocalePair *)self->_localePair sourceLocale];
      -[_LTSpeechTranslationAssetInfo speechModelURLForLocale:taskHint:](assetInfo, "speechModelURLForLocale:taskHint:", asrModelURLs4, [contextCopy taskHint]);
    }
    v55 = ;

    asrModelURLs5 = [(_LTOfflineTranslationEngine *)self asrModelURLs];
    if ([asrModelURLs5 count] < 2)
    {
      v22 = self->_assetInfo;
      targetLocale = [(_LTLocalePair *)self->_localePair targetLocale];
      -[_LTSpeechTranslationAssetInfo speechModelURLForLocale:taskHint:](v22, "speechModelURLForLocale:taskHint:", targetLocale, [contextCopy taskHint]);
    }

    else
    {
      targetLocale = [(_LTOfflineTranslationEngine *)self asrModelURLs];
      [targetLocale objectAtIndexedSubscript:1];
    }
    v23 = ;

    v26 = _LTOSLogTranslationEngine(v24, v25);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      [contextCopy taskHint];
      v27 = _LTTranslationTaskHintString();
      *buf = 67110147;
      *v57 = v55 != 0;
      *&v57[4] = 1024;
      *&v57[6] = v23 != 0;
      v58 = 2113;
      v59 = v55;
      v60 = 2113;
      v61 = v23;
      v62 = 2114;
      v63 = v27;
      _os_log_impl(&dword_232E53000, v26, OS_LOG_TYPE_DEFAULT, "Creating multi recognizer: got sourceModelURL %{BOOL}i got targetModelURL %{BOOL}i %{private}@, %{private}@, %{public}@", buf, 0x2Cu);
    }

    v28 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:MEMORY[0x277CBEC10]];
    v29 = objc_alloc_init(MEMORY[0x277CBEB38]);
    if (v55)
    {
      sourceLocale = [(_LTLocalePair *)self->_localePair sourceLocale];
      [v28 setObject:v55 forKeyedSubscript:sourceLocale];

      v31 = self->_assetInfo;
      sourceLocale2 = [(_LTLocalePair *)self->_localePair sourceLocale];
      v33 = [(_LTSpeechTranslationAssetInfo *)v31 speechModelVersionForLocale:sourceLocale2];
      sourceLocale3 = [(_LTLocalePair *)self->_localePair sourceLocale];
      [v29 setObject:v33 forKeyedSubscript:sourceLocale3];
    }

    [contextCopy taskHint];
    v35 = _LTASRModelTaskString();
    v37 = _LTOSLogTranslationEngine(v35, v36);
    isPassthrough = os_log_type_enabled(v37, OS_LOG_TYPE_INFO);
    if (isPassthrough)
    {
      *buf = 138477827;
      *v57 = v35;
      _os_log_impl(&dword_232E53000, v37, OS_LOG_TYPE_INFO, "Using model task name %{private}@", buf, 0xCu);
    }

    if (v23)
    {
      isPassthrough = [(_LTLocalePair *)self->_localePair isPassthrough];
      if ((isPassthrough & 1) == 0)
      {
        [contextCopy autodetectLanguage];
        targetLocale2 = [(_LTLocalePair *)self->_localePair targetLocale];
        [v28 setObject:v23 forKeyedSubscript:targetLocale2];

        v41 = self->_assetInfo;
        targetLocale3 = [(_LTLocalePair *)self->_localePair targetLocale];
        v43 = [(_LTSpeechTranslationAssetInfo *)v41 speechModelVersionForLocale:targetLocale3];
        targetLocale4 = [(_LTLocalePair *)self->_localePair targetLocale];
        [v29 setObject:v43 forKeyedSubscript:targetLocale4];
      }
    }

    v45 = _LTOSLogTranslationEngine(isPassthrough, v39);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      allValues = [v29 allValues];
      *buf = 138543362;
      *v57 = allValues;
      _os_log_impl(&dword_232E53000, v45, OS_LOG_TYPE_DEFAULT, "Offline modelVersions %{public}@", buf, 0xCu);
    }

    v47 = -[_LTMultilingualSpeechRecognizer initWithModelURLs:modelVersions:taskHint:]([_LTMultilingualSpeechRecognizer alloc], "initWithModelURLs:modelVersions:taskHint:", v28, v29, [contextCopy taskHint]);
    recognizer = self->_recognizer;
    self->_recognizer = v47;

    v49 = v54;
    v50 = v49;
    if (v53 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v49))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_232E53000, v50, OS_SIGNPOST_INTERVAL_END, spida, "LoadOfflineRecognizers", "Finished loading recognizers", buf, 2u);
    }
  }
}

- (void)_loadEtiquetteSanitizersForTaskHint:(int64_t)hint
{
  v52 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  if (self->_etiquetteSanitizers)
  {
    return;
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  etiquetteSanitizers = self->_etiquetteSanitizers;
  self->_etiquetteSanitizers = dictionary;

  v9 = _LTOSLogEtiquetteSanitizer(v7, v8);
  v10 = os_signpost_id_generate(v9);
  v11 = v9;
  v12 = v11;
  spid = v10;
  v13 = v10 - 1;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_232E53000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "LoadOfflineSanitizers", "Loading etiquette sanitizers", buf, 2u);
  }

  asrModelURLs = [(_LTOfflineTranslationEngine *)self asrModelURLs];
  if ([asrModelURLs count])
  {
    asrModelURLs2 = [(_LTOfflineTranslationEngine *)self asrModelURLs];
    [asrModelURLs2 objectAtIndexedSubscript:0];
  }

  else
  {
    assetInfo = self->_assetInfo;
    asrModelURLs2 = [(_LTLocalePair *)self->_localePair sourceLocale];
    [(_LTSpeechTranslationAssetInfo *)assetInfo speechModelURLForLocale:asrModelURLs2 taskHint:hint];
  }
  v17 = ;

  asrModelURLs3 = [(_LTOfflineTranslationEngine *)self asrModelURLs];
  if ([asrModelURLs3 count] < 2)
  {
    v20 = self->_assetInfo;
    targetLocale = [(_LTLocalePair *)self->_localePair targetLocale];
    [(_LTSpeechTranslationAssetInfo *)v20 speechModelURLForLocale:targetLocale taskHint:hint];
  }

  else
  {
    targetLocale = [(_LTOfflineTranslationEngine *)self asrModelURLs];
    [targetLocale objectAtIndexedSubscript:1];
  }
  v21 = ;

  if (v17)
  {
    v24 = [_LTEtiquetteSanitizer alloc];
    sourceLocale = [(_LTLocalePair *)self->_localePair sourceLocale];
    v26 = [(_LTEtiquetteSanitizer *)v24 initWithModelURL:v17 language:sourceLocale];

    if (v21)
    {
      goto LABEL_13;
    }

LABEL_18:
    v29 = 0;
    if (v26)
    {
      goto LABEL_14;
    }

LABEL_19:
    localePair = _LTOSLogEtiquetteSanitizer(v22, v23);
    if (os_log_type_enabled(localePair, OS_LOG_TYPE_ERROR))
    {
      [(_LTLocalePair *)self->_localePair sourceLocale];
      [objc_claimAutoreleasedReturnValue() localeIdentifier];
      objc_claimAutoreleasedReturnValue();
      [_LTOfflineTranslationEngine _loadEtiquetteSanitizersForTaskHint:];
    }

    goto LABEL_21;
  }

  v26 = 0;
  if (!v21)
  {
    goto LABEL_18;
  }

LABEL_13:
  v27 = [_LTEtiquetteSanitizer alloc];
  targetLocale2 = [(_LTLocalePair *)self->_localePair targetLocale];
  v29 = [(_LTEtiquetteSanitizer *)v27 initWithModelURL:v21 language:targetLocale2];

  if (!v26)
  {
    goto LABEL_19;
  }

LABEL_14:
  v30 = _LTOSLogEtiquetteSanitizer(v22, v23);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
  {
    sourceLocale2 = [(_LTLocalePair *)self->_localePair sourceLocale];
    localeIdentifier = [sourceLocale2 localeIdentifier];
    *buf = 138543362;
    v51 = localeIdentifier;
    _os_log_impl(&dword_232E53000, v30, OS_LOG_TYPE_INFO, "loaded etiquette sanitizer for: %{public}@", buf, 0xCu);
  }

  v33 = self->_etiquetteSanitizers;
  localePair = [(_LTOfflineTranslationEngine *)self localePair];
  sourceLocale3 = [localePair sourceLocale];
  [(NSMutableDictionary *)v33 setObject:v26 forKeyedSubscript:sourceLocale3];

LABEL_21:
  if (v29)
  {
    v38 = _LTOSLogEtiquetteSanitizer(v36, v37);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
      targetLocale3 = [(_LTLocalePair *)self->_localePair targetLocale];
      localeIdentifier2 = [targetLocale3 localeIdentifier];
      *v48 = 138543362;
      v49 = localeIdentifier2;
      _os_log_impl(&dword_232E53000, v38, OS_LOG_TYPE_INFO, "loaded etiquette sanitizer for: %{public}@", v48, 0xCu);
    }

    v41 = self->_etiquetteSanitizers;
    localePair2 = [(_LTOfflineTranslationEngine *)self localePair];
    targetLocale4 = [localePair2 targetLocale];
    [(NSMutableDictionary *)v41 setObject:v29 forKeyedSubscript:targetLocale4];
  }

  else
  {
    localePair2 = _LTOSLogEtiquetteSanitizer(v36, v37);
    if (os_log_type_enabled(localePair2, OS_LOG_TYPE_ERROR))
    {
      [(_LTLocalePair *)self->_localePair targetLocale];
      [objc_claimAutoreleasedReturnValue() localeIdentifier];
      objc_claimAutoreleasedReturnValue();
      [_LTOfflineTranslationEngine _loadEtiquetteSanitizersForTaskHint:];
    }
  }

  v44 = v12;
  v45 = v44;
  if (v13 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v44))
  {
    *v47 = 0;
    _os_signpost_emit_with_name_impl(&dword_232E53000, v45, OS_SIGNPOST_INTERVAL_END, spid, "LoadOfflineSanitizers", "Finished loading etiquette sanitizers", v47, 2u);
  }
}

- (void)_loadTranslatorForTask:(id)task
{
  v47[1] = *MEMORY[0x277D85DE8];
  taskCopy = task;
  dispatch_assert_queue_V2(self->_queue);
  p_localePair = &self->_localePair;
  isPassthrough = [(_LTLocalePair *)self->_localePair isPassthrough];
  if (isPassthrough)
  {
    v8 = _LTOSLogTranslationEngine(isPassthrough, v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_232E53000, v8, OS_LOG_TYPE_INFO, "Offline translation is a passthrough, skip translator load", buf, 2u);
    }

    goto LABEL_26;
  }

  if (self->_earError || self->_translator)
  {
    goto LABEL_26;
  }

  v9 = _LTOSLogTranslationEngine(isPassthrough, v7);
  v10 = os_signpost_id_generate(v9);
  v11 = v9;
  v12 = v11;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_232E53000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "LoadOfflineTranslator", "Loading translator", buf, 2u);
  }

  v39 = v12;

  lt_appGroupDefaults = [MEMORY[0x277CBEBD0] lt_appGroupDefaults];
  lt_mtCustomModel = [lt_appGroupDefaults lt_mtCustomModel];

  if (lt_mtCustomModel)
  {
    v14 = [MEMORY[0x277CBEBC0] fileURLWithPath:lt_mtCustomModel];
    v15 = v14;
    if (v14)
    {
      v47[0] = v14;
      translationModelURLs = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:1];
      v17 = _LTOSLogTranslationEngine(translationModelURLs, v16);
      v18 = os_log_type_enabled(v17, OS_LOG_TYPE_INFO);
      if (v18)
      {
        *buf = 138543362;
        v43 = translationModelURLs;
        _os_log_impl(&dword_232E53000, v17, OS_LOG_TYPE_INFO, "Offline translation using custom model URLs: %{public}@", buf, 0xCu);
      }

      goto LABEL_20;
    }
  }

  mtModelURL = [(_LTOfflineTranslationEngine *)self mtModelURL];
  v21 = mtModelURL == 0;

  if (v21)
  {
    translationModelURLs = [(_LTSpeechTranslationAssetInfo *)self->_assetInfo translationModelURLs];
    v25 = _LTOSLogTranslationEngine(translationModelURLs, v27);
    v18 = os_log_type_enabled(v25, OS_LOG_TYPE_INFO);
    if (v18)
    {
      *buf = 138543362;
      v43 = translationModelURLs;
      v26 = "Offline translation using asset info model URLs: %{public}@";
      goto LABEL_18;
    }
  }

  else
  {
    mtModelURL2 = [(_LTOfflineTranslationEngine *)self mtModelURL];
    v46 = mtModelURL2;
    translationModelURLs = [MEMORY[0x277CBEA60] arrayWithObjects:&v46 count:1];

    v25 = _LTOSLogTranslationEngine(v23, v24);
    v18 = os_log_type_enabled(v25, OS_LOG_TYPE_INFO);
    if (v18)
    {
      *buf = 138543362;
      v43 = translationModelURLs;
      v26 = "Offline translation using context model URLs: %{public}@";
LABEL_18:
      _os_log_impl(&dword_232E53000, v25, OS_LOG_TYPE_INFO, v26, buf, 0xCu);
    }
  }

  v15 = 0;
LABEL_20:
  v28 = _LTOSLogTranslationEngine(v18, v19);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
  {
    *buf = 138543619;
    v43 = taskCopy;
    v44 = 2113;
    v45 = translationModelURLs;
    _os_log_impl(&dword_232E53000, v28, OS_LOG_TYPE_INFO, "Creating translator with task %{public}@ model URL: %{private}@", buf, 0x16u);
  }

  v29 = [objc_alloc(MEMORY[0x277D07210]) initWithModelURLs:translationModelURLs task:taskCopy skipNonFinalToCatchup:1 translatorCacheSize:_LTPreferencesTranslationEngineCacheSize()];
  translator = self->_translator;
  self->_translator = v29;

  v31 = self->_translator;
  targetLocale = [(_LTLocalePair *)self->_localePair targetLocale];
  sourceLocale = [(_LTLocalePair *)*p_localePair sourceLocale];
  [(EMTTranslator *)v31 loadTranslatorFrom:targetLocale to:sourceLocale];

  v34 = self->_translator;
  sourceLocale2 = [(_LTLocalePair *)self->_localePair sourceLocale];
  targetLocale2 = [(_LTLocalePair *)*p_localePair targetLocale];
  [(EMTTranslator *)v34 loadTranslatorFrom:sourceLocale2 to:targetLocale2];

  v37 = v39;
  v38 = v37;
  if (v10 - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v37))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_232E53000, v38, OS_SIGNPOST_INTERVAL_END, v10, "LoadOfflineTranslator", "Finished loading translator", buf, 2u);
  }

LABEL_26:
}

- (void)preheatAsynchronously:(BOOL)asynchronously withContext:(id)context
{
  asynchronouslyCopy = asynchronously;
  contextCopy = context;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __65___LTOfflineTranslationEngine_preheatAsynchronously_withContext___block_invoke;
  v10[3] = &unk_2789B7018;
  v10[4] = self;
  v7 = contextCopy;
  v11 = v7;
  v8 = MEMORY[0x238398770](v10);
  queue = self->_queue;
  if (asynchronouslyCopy)
  {
    dispatch_async(queue, v8);
  }

  else
  {
    dispatch_sync(queue, v8);
  }
}

- (id)_handleTranslationResults:(id)results withContext:(id)context sourceString:(id)string sourceSpans:(id)spans stabilizer:(id)stabilizer
{
  v63[1] = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  contextCopy = context;
  stringCopy = string;
  spansCopy = spans;
  stabilizerCopy = stabilizer;
  dispatch_assert_queue_V2(self->_queue);
  firstObject = [resultsCopy firstObject];
  locale = [firstObject locale];

  if (locale)
  {
    array = [MEMORY[0x277CBEB18] array];
    objc_initWeak(&location, self);
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __105___LTOfflineTranslationEngine__handleTranslationResults_withContext_sourceString_sourceSpans_stabilizer___block_invoke;
    v52[3] = &unk_2789B7040;
    objc_copyWeak(&v57, &location);
    v18 = contextCopy;
    v53 = v18;
    v19 = locale;
    v54 = v19;
    v20 = stringCopy;
    v55 = v20;
    v49 = array;
    v56 = v49;
    v21 = [resultsCopy _ltCompactMap:v52];
    v22 = [MEMORY[0x277CE1C18] resultWithLocale:v19 translations:v21];
    v23 = [v22 setRoute:1];
    if (stabilizerCopy)
    {
      v25 = _LTOSLogSpeech(v23, v24);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_232E53000, v25, OS_LOG_TYPE_INFO, "Retaining stabilization info for streaming", buf, 2u);
      }

      firstObject2 = [resultsCopy firstObject];
      stableSegments = [firstObject2 stableSegments];
      [stabilizerCopy setStableSegments:stableSegments];
    }

    if ([spansCopy count])
    {
      firstObject3 = [resultsCopy firstObject];
      if (objc_opt_respondsToSelector())
      {
        targetProjections = [firstObject3 targetProjections];
        [v22 updateAlignmentWithSourceSpans:spansCopy offlineTargetSpans:targetProjections];
      }
    }

    isGenderDisambiguationEnabled = [MEMORY[0x277CE1AE0] isGenderDisambiguationEnabled];
    if (isGenderDisambiguationEnabled)
    {
      supportsGenderDisambiguation = [v18 supportsGenderDisambiguation];
      if (supportsGenderDisambiguation)
      {
        v34 = [v49 count];
        v35 = [v21 count];
        if (v34 == v35)
        {
          v37 = [objc_alloc(MEMORY[0x277CE1AE8]) initWithSourceText:v20 targetPhrases:v49 selectedPhraseIndex:0];
          v38 = objc_alloc(MEMORY[0x277CE1AE0]);
          v63[0] = v37;
          v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v63 count:1];
          v40 = [v38 initWithSentences:v39];

          v43 = _LTOSLogDisambiguation(v41, v42);
          if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
          {
            *buf = 138543362;
            v60 = v40;
            _os_log_impl(&dword_232E53000, v43, OS_LOG_TYPE_INFO, "Created disambiguableResult from EMT result: %{public}@", buf, 0xCu);
          }

          [v22 setDisambiguableResult:v40];
        }

        else
        {
          v37 = _LTOSLogDisambiguation(v35, v36);
          if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
          {
            v46 = [v49 count];
            v47 = [v21 count];
            *buf = 134218240;
            v60 = v46;
            v61 = 2048;
            v62 = v47;
            _os_log_impl(&dword_232E53000, v37, OS_LOG_TYPE_INFO, "Not creating combined disambiguation result because only %zu out of %zu candidates could create disambiguation nodes", buf, 0x16u);
          }
        }
      }

      else
      {
        v45 = _LTOSLogDisambiguation(supportsGenderDisambiguation, v33);
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
        {
          [_LTOfflineTranslationEngine _handleTranslationResults:withContext:sourceString:sourceSpans:stabilizer:];
        }
      }
    }

    else
    {
      v44 = _LTOSLogDisambiguation(isGenderDisambiguationEnabled, v31);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_232E53000, v44, OS_LOG_TYPE_INFO, "Not creating combined disambiguation result because the feature flag is off", buf, 2u);
      }
    }

    objc_destroyWeak(&v57);
    objc_destroyWeak(&location);
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (void)_translateString:(id)string isFinal:(BOOL)final withContext:(id)context toLocale:(id)locale withSpans:(id)spans stabilizer:(id)stabilizer completion:(id)completion
{
  finalCopy = final;
  v86[1] = *MEMORY[0x277D85DE8];
  stringCopy = string;
  contextCopy = context;
  localeCopy = locale;
  spansCopy = spans;
  stabilizerCopy = stabilizer;
  completionCopy = completion;
  val = self;
  v58 = stringCopy;
  v59 = contextCopy;
  v61 = completionCopy;
  dispatch_assert_queue_V2(self->_queue);
  whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v18 = [stringCopy stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

  v57 = v18;
  if ([v18 length])
  {
    [contextCopy taskHint];
    v56 = _LTTranslationModelTaskString();
    [(_LTOfflineTranslationEngine *)self _loadTranslatorForTask:v56];
    if ([contextCopy censorSpeech])
    {
      -[_LTOfflineTranslationEngine _loadEtiquetteSanitizersForTaskHint:](self, "_loadEtiquetteSanitizersForTaskHint:", [contextCopy taskHint]);
    }

    if (self->_earError)
    {
      (*(completionCopy + 2))(completionCopy, 0);
    }

    else
    {
      localePair = [(_LTOfflineTranslationEngine *)self localePair];
      v54 = [localePair oppositeToLocale:localeCopy];

      v52 = [_LTAnalyticsEvent timedEventWithName:@"OfflineTextTranslation"];
      [v52 setSourceLocale:v54];
      [v52 setTargetLocale:localeCopy];
      v85 = @"sourceSentence";
      v86[0] = stringCopy;
      v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v86 forKeys:&v85 count:1];
      [v52 addFieldsFromDictionary:v21 internalOnly:1];

      v24 = _LTOSLogTranslationEngine(v22, v23);
      v25 = os_signpost_id_generate(v24);
      v26 = v24;
      v27 = v26;
      if ((v25 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
      {
        LOWORD(buf[0]) = 0;
        _os_signpost_emit_with_name_impl(&dword_232E53000, v27, OS_SIGNPOST_INTERVAL_BEGIN, v25, "TranslateTokens", "Offline: Translating string", buf, 2u);
      }

      v53 = v27;

      if (spansCopy)
      {
        v65 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v79 = 0u;
        v80 = 0u;
        v77 = 0u;
        v78 = 0u;
        v28 = spansCopy;
        v29 = [v28 countByEnumeratingWithState:&v77 objects:v84 count:16];
        if (v29)
        {
          v30 = *v78;
          do
          {
            for (i = 0; i != v29; ++i)
            {
              if (*v78 != v30)
              {
                objc_enumerationMutation(v28);
              }

              v32 = *(*(&v77 + 1) + 8 * i);
              v33 = objc_alloc(MEMORY[0x277D071F8]);
              identifier = [v32 identifier];
              range = [v32 range];
              v37 = [v33 initWithIdentifier:identifier range:range doNotTranslate:{v36, objc_msgSend(v32, "shouldTranslate") ^ 1}];
              [v65 addObject:v37];
            }

            v29 = [v28 countByEnumeratingWithState:&v77 objects:v84 count:16];
          }

          while (v29);
        }
      }

      else
      {
        v65 = 0;
      }

      objc_initWeak(buf, val);
      [(EMTTranslator *)val->_translator prepareFor:v54 to:localeCopy];
      v66[0] = MEMORY[0x277D85DD0];
      v66[1] = 3221225472;
      v66[2] = __109___LTOfflineTranslationEngine__translateString_isFinal_withContext_toLocale_withSpans_stabilizer_completion___block_invoke;
      v66[3] = &unk_2789B7090;
      objc_copyWeak(v75, buf);
      v38 = v53;
      v67 = v38;
      v75[1] = v25;
      v39 = v59;
      v68 = v39;
      v40 = v58;
      v69 = v40;
      v70 = spansCopy;
      v41 = stabilizerCopy;
      v71 = v41;
      v72 = localeCopy;
      v42 = v52;
      v73 = v42;
      v74 = v61;
      v43 = MEMORY[0x238398770](v66);
      v44 = objc_alloc_init(MEMORY[0x277D07208]);
      v45 = [v44 setEnableDisambiguationAlternatives:{objc_msgSend(v39, "supportsGenderDisambiguation")}];
      v47 = _LTOSLogTranslationEngine(v45, v46);
      if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
      {
        supportsGenderDisambiguation = [v39 supportsGenderDisambiguation];
        *v82 = 67109120;
        v83 = supportsGenderDisambiguation;
        _os_log_impl(&dword_232E53000, v47, OS_LOG_TYPE_INFO, "Disambiguation: Offline engine is translating with enableDisambiguationAlternatives: %{BOOL}i", v82, 8u);
      }

      if (v41)
      {
        stabilizationState = [v41 stabilizationState];
        [v44 setStablePrefixState:stabilizationState];
      }

      translator = val->_translator;
      v81 = v40;
      v51 = [MEMORY[0x277CBEA60] arrayWithObjects:&v81 count:1];
      [(EMTTranslator *)translator translateTokens:v51 isFinal:finalCopy spans:v65 options:v44 completion:v43];

      objc_destroyWeak(v75);
      objc_destroyWeak(buf);
    }
  }

  else
  {
    v19 = [MEMORY[0x277CE1C18] resultWithLocale:localeCopy translations:MEMORY[0x277CBEBF8]];
    [v19 setRoute:1];
    (*(completionCopy + 2))(completionCopy, v19, 0);
  }
}

- (id)_paragraphResultFromSentences:(id)sentences
{
  v26[1] = *MEMORY[0x277D85DE8];
  sentencesCopy = sentences;
  firstObject = [sentencesCopy firstObject];
  locale = [firstObject locale];

  v6 = [sentencesCopy _ltCompactMap:&__block_literal_global_23];
  v19 = v6;
  v7 = [sentencesCopy _ltCompactMap:&__block_literal_global_45_0];
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __61___LTOfflineTranslationEngine__paragraphResultFromSentences___block_invoke_3;
  v21[3] = &unk_2789B70D8;
  v21[4] = &v22;
  v8 = [sentencesCopy _ltCompactMap:v21];
  if (![v8 count])
  {

    v8 = 0;
  }

  v9 = [v6 componentsJoinedByString:@" "];
  if (*(v23 + 24) == 1)
  {
    v10 = [v8 componentsJoinedByString:@" "];
  }

  else
  {
    v10 = 0;
  }

  v11 = [v7 componentsJoinedByString:@" "];
  v12 = [objc_alloc(MEMORY[0x277CE1BF8]) initWithFormattedString:v9 sanitizedFormattedString:v10 confidence:0 lowConfidence:v11 romanization:0 tokens:0 preToPostITN:1.0];
  v13 = MEMORY[0x277CE1C18];
  v26[0] = v12;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
  v15 = [v13 resultWithLocale:locale translations:v14];

  v16 = [MEMORY[0x277CE1AE0] combinedDisambiguableResultFromTranslationResults:sentencesCopy joinedWithString:@" "];
  [v15 setDisambiguableResult:v16];

  [v15 setRoute:1];
  v17 = [(_LTOfflineTranslationEngine *)self _concatenatedAlignmentsFromSentences:sentencesCopy];
  [v15 setAlignments:v17];

  _Block_object_dispose(&v22, 8);

  return v15;
}

- (id)_concatenatedAlignmentsFromSentences:(id)sentences
{
  v35 = *MEMORY[0x277D85DE8];
  sentencesCopy = sentences;
  v23 = [sentencesCopy _ltCompactMap:&__block_literal_global_47];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = [sentencesCopy count];
  if (v4 == [v23 count])
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    obj = sentencesCopy;
    v5 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v5)
    {
      v6 = 0;
      v7 = 0;
      v22 = *v30;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v30 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v29 + 1) + 8 * i);
          v24 = [v23 objectAtIndexedSubscript:v6];
          alignments = [v9 alignments];
          v27 = 0u;
          v28 = 0u;
          v25 = 0u;
          v26 = 0u;
          v11 = alignments;
          v12 = [v11 countByEnumeratingWithState:&v25 objects:v33 count:16];
          if (v12)
          {
            v13 = *v26;
            do
            {
              for (j = 0; j != v12; ++j)
              {
                if (*v26 != v13)
                {
                  objc_enumerationMutation(v11);
                }

                v15 = *(*(&v25 + 1) + 8 * j);
                targetRange = [v15 targetRange];
                [v15 setTargetRange:{targetRange + v7, v17}];
                [v3 addObject:v15];
              }

              v12 = [v11 countByEnumeratingWithState:&v25 objects:v33 count:16];
            }

            while (v12);
          }

          v18 = [v24 length];
          v7 += v18 + 1;
          ++v6;
        }

        v5 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v5);
    }
  }

  return v3;
}

- (void)_translateParagraph:(id)paragraph withContext:(id)context toLocale:(id)locale completion:(id)completion
{
  v38[2] = *MEMORY[0x277D85DE8];
  paragraphCopy = paragraph;
  contextCopy = context;
  localeCopy = locale;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_queue);
  [contextCopy taskHint];
  v13 = _LTTranslationModelTaskString();
  [(_LTOfflineTranslationEngine *)self _loadTranslatorForTask:v13];
  if ([contextCopy censorSpeech])
  {
    -[_LTOfflineTranslationEngine _loadEtiquetteSanitizersForTaskHint:](self, "_loadEtiquetteSanitizersForTaskHint:", [contextCopy taskHint]);
  }

  splitIntoSentences = [paragraphCopy splitIntoSentences];
  if ([splitIntoSentences count])
  {
    objc_initWeak(&location, self);
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __83___LTOfflineTranslationEngine__translateParagraph_withContext_toLocale_completion___block_invoke;
    v31[3] = &unk_2789B7128;
    objc_copyWeak(&v35, &location);
    v16 = paragraphCopy;
    v32 = v16;
    v17 = contextCopy;
    v33 = v17;
    v34 = localeCopy;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __83___LTOfflineTranslationEngine__translateParagraph_withContext_toLocale_completion___block_invoke_2;
    v26[3] = &unk_2789B7150;
    objc_copyWeak(&v30, &location);
    v29 = completionCopy;
    v27 = v16;
    v28 = v17;
    [splitIntoSentences _ltSequentialMap:v31 completion:v26];

    objc_destroyWeak(&v30);
    objc_destroyWeak(&v35);
    objc_destroyWeak(&location);
  }

  else
  {
    v18 = _LTOSLogTranslationEngine(0, v15);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [_LTOfflineTranslationEngine _translateParagraph:withContext:toLocale:completion:];
    }

    v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v20 = MEMORY[0x277CCA9B8];
    v37[0] = *MEMORY[0x277CCA450];
    v21 = [v19 localizedStringForKey:@"GENERIC_FAILURE_ERROR_DESCRIPTION" value:&stru_284834138 table:0];
    v38[0] = v21;
    v37[1] = *MEMORY[0x277CCA470];
    v22 = [v19 localizedStringForKey:@"INPUT_EMPTY_ERROR_DESCRIPTION" value:&stru_284834138 table:0];
    v38[1] = v22;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:2];
    v24 = [v20 errorWithDomain:*MEMORY[0x277CE1C58] code:3 userInfo:v23];

    (*(completionCopy + 2))(completionCopy, 0, v24);
  }
}

- (void)_translate:(id)_translate withContext:(id)context toLocale:(id)locale paragraphResult:(id)result completion:(id)completion
{
  _translateCopy = _translate;
  contextCopy = context;
  localeCopy = locale;
  resultCopy = result;
  completionCopy = completion;
  v25 = _translateCopy;
  dispatch_assert_queue_V2(self->_queue);
  v17 = [_LTAnalyticsEvent timedEventWithName:@"OfflineBatchTextTranslation"];
  localePair = [(_LTOfflineTranslationEngine *)self localePair];
  v19 = [localePair oppositeToLocale:localeCopy];
  [v17 setSourceLocale:v19];

  [v17 setTargetLocale:localeCopy];
  objc_initWeak(location, self);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __90___LTOfflineTranslationEngine__translate_withContext_toLocale_paragraphResult_completion___block_invoke;
  v29[3] = &unk_2789B71A0;
  objc_copyWeak(&v33, location);
  v20 = contextCopy;
  v30 = v20;
  v21 = localeCopy;
  v31 = v21;
  v22 = resultCopy;
  v32 = v22;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __90___LTOfflineTranslationEngine__translate_withContext_toLocale_paragraphResult_completion___block_invoke_60;
  v26[3] = &unk_2789B71C8;
  v23 = v17;
  v27 = v23;
  v24 = completionCopy;
  v28 = v24;
  [v25 _ltSequentialMap:v29 completion:{v26, resultCopy}];

  objc_destroyWeak(&v33);
  objc_destroyWeak(location);
}

- (void)translateStreamingInput:(id)input context:(id)context stabilizer:(id)stabilizer completion:(id)completion
{
  inputCopy = input;
  contextCopy = context;
  stabilizerCopy = stabilizer;
  completionCopy = completion;
  objc_initWeak(&location, self);
  queue = self->_queue;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __85___LTOfflineTranslationEngine_translateStreamingInput_context_stabilizer_completion___block_invoke;
  v19[3] = &unk_2789B7218;
  objc_copyWeak(&v24, &location);
  v20 = inputCopy;
  v21 = contextCopy;
  v22 = stabilizerCopy;
  v23 = completionCopy;
  v15 = completionCopy;
  v16 = stabilizerCopy;
  v17 = contextCopy;
  v18 = inputCopy;
  dispatch_async(queue, v19);

  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
}

- (void)translateSentence:(id)sentence withContext:(id)context completion:(id)completion
{
  sentenceCopy = sentence;
  contextCopy = context;
  completionCopy = completion;
  objc_initWeak(&location, self);
  queue = self->_queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __72___LTOfflineTranslationEngine_translateSentence_withContext_completion___block_invoke;
  v15[3] = &unk_2789B7218;
  objc_copyWeak(&v20, &location);
  v16 = contextCopy;
  selfCopy = self;
  v18 = sentenceCopy;
  v19 = completionCopy;
  v12 = completionCopy;
  v13 = sentenceCopy;
  v14 = contextCopy;
  dispatch_async(queue, v15);

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

- (void)translate:(id)translate withContext:(id)context paragraphResult:(id)result completion:(id)completion
{
  v38[2] = *MEMORY[0x277D85DE8];
  translateCopy = translate;
  contextCopy = context;
  resultCopy = result;
  completionCopy = completion;
  v15 = _LTOSLogTranslationEngine(completionCopy, v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_232E53000, v15, OS_LOG_TYPE_INFO, "Translate text paragraphs (block completion handler) with offline engine", &buf, 2u);
  }

  v16 = [translateCopy count];
  if (!v16 || ([translateCopy firstObject], v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "text"), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "length") == 0, v19, v18, v20))
  {
    v22 = _LTOSLogTranslationEngine(v16, v17);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [_LTOfflineTranslationEngine translate:withContext:paragraphResult:completion:];
    }

    v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v24 = MEMORY[0x277CCA9B8];
    v37[0] = *MEMORY[0x277CCA450];
    v25 = [v23 localizedStringForKey:@"GENERIC_FAILURE_ERROR_DESCRIPTION" value:&stru_284834138 table:0];
    v38[0] = v25;
    v37[1] = *MEMORY[0x277CCA470];
    v26 = [v23 localizedStringForKey:@"INPUT_EMPTY_ERROR_DESCRIPTION" value:&stru_284834138 table:0];
    v38[1] = v26;
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:2];
    v28 = [v24 errorWithDomain:*MEMORY[0x277CE1C58] code:3 userInfo:v27];

    completionCopy[2](completionCopy, v28);
  }

  else
  {
    objc_initWeak(&buf, self);
    queue = self->_queue;
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __80___LTOfflineTranslationEngine_translate_withContext_paragraphResult_completion___block_invoke;
    v29[3] = &unk_2789B7268;
    objc_copyWeak(&v35, &buf);
    v30 = contextCopy;
    selfCopy = self;
    v32 = translateCopy;
    v33 = resultCopy;
    v34 = completionCopy;
    dispatch_async(queue, v29);

    objc_destroyWeak(&v35);
    objc_destroyWeak(&buf);
  }
}

- (void)cancelSpeechTranslation:(BOOL)translation
{
  v5 = _LTOSLogTranslationEngine(self, a2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_232E53000, v5, OS_LOG_TYPE_INFO, "Cancel speech translation with offline engine", buf, 2u);
  }

  objc_initWeak(buf, self);
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55___LTOfflineTranslationEngine_cancelSpeechTranslation___block_invoke;
  v7[3] = &unk_2789B7290;
  objc_copyWeak(&v8, buf);
  translationCopy = translation;
  dispatch_async(queue, v7);
  objc_destroyWeak(&v8);
  objc_destroyWeak(buf);
}

- (void)addSpeechAudioData:(id)data
{
  dataCopy = data;
  v6 = dataCopy;
  if (!self->_didEndpointSpeech)
  {
    v7 = _LTOSLogSpeech(dataCopy, v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_232E53000, v7, OS_LOG_TYPE_INFO, "Add audio to offline engine", buf, 2u);
    }

    objc_initWeak(buf, self);
    queue = self->_queue;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __50___LTOfflineTranslationEngine_addSpeechAudioData___block_invoke;
    v9[3] = &unk_2789B72B8;
    objc_copyWeak(&v11, buf);
    v10 = v6;
    dispatch_async(queue, v9);

    objc_destroyWeak(&v11);
    objc_destroyWeak(buf);
  }
}

- (void)endpoint
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __39___LTOfflineTranslationEngine_endpoint__block_invoke;
  v4[3] = &unk_2789B72E0;
  objc_copyWeak(&v5, &location);
  dispatch_async(queue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

+ (BOOL)_needToWaitForBothFinalTranslationResultsWithContext:(id)context lidResult:(id)result
{
  contextCopy = context;
  resultCopy = result;
  if (([contextCopy autodetectLanguage] & 1) == 0)
  {
    goto LABEL_6;
  }

  if (!resultCopy || ![resultCopy isConfident])
  {
    v12 = 1;
    goto LABEL_8;
  }

  if ([contextCopy forceSourceLocale])
  {
    dominantLanguage = [resultCopy dominantLanguage];
    _ltLocaleIdentifier = [dominantLanguage _ltLocaleIdentifier];
    localePair = [contextCopy localePair];
    sourceLocale = [localePair sourceLocale];
    _ltLocaleIdentifier2 = [sourceLocale _ltLocaleIdentifier];
    v12 = _ltLocaleIdentifier != _ltLocaleIdentifier2;
  }

  else
  {
LABEL_6:
    v12 = 0;
  }

LABEL_8:

  return v12;
}

- (void)setLanguagesRecognized:(id)recognized context:(id)context
{
  v24 = *MEMORY[0x277D85DE8];
  recognizedCopy = recognized;
  contextCopy = context;
  dominantLanguage = [recognizedCopy dominantLanguage];
  v10 = _LTOSLogTranslationEngine(dominantLanguage, v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    v21 = dominantLanguage;
    v22 = 1024;
    isConfident = [recognizedCopy isConfident];
    _os_log_impl(&dword_232E53000, v10, OS_LOG_TYPE_INFO, "Notified of LID result: %{public}@ is confident: %{BOOL}i", buf, 0x12u);
  }

  objc_initWeak(buf, self);
  queue = self->_queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __62___LTOfflineTranslationEngine_setLanguagesRecognized_context___block_invoke;
  v15[3] = &unk_2789B7308;
  objc_copyWeak(&v19, buf);
  v16 = dominantLanguage;
  v17 = contextCopy;
  v18 = recognizedCopy;
  v12 = recognizedCopy;
  v13 = contextCopy;
  v14 = dominantLanguage;
  dispatch_async(queue, v15);

  objc_destroyWeak(&v19);
  objc_destroyWeak(buf);
}

- (id)_getBestRecognitionResult:(id)result context:(id)context
{
  resultCopy = result;
  contextCopy = context;
  localePair = [contextCopy localePair];
  if ([contextCopy autodetectLanguage] && !objc_msgSend(contextCopy, "forceSourceLocale"))
  {
    lidResult = self->_lidResult;
    if (lidResult && -[_LTLanguageDetectionResult isFinal](lidResult, "isFinal") && ([resultCopy objectForKeyedSubscript:self->_lidBestResult], v12 = objc_claimAutoreleasedReturnValue(), v12, v12))
    {
      v10 = [resultCopy objectForKeyedSubscript:self->_lidBestResult];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    sourceLocale = [localePair sourceLocale];
    v10 = [resultCopy objectForKeyedSubscript:sourceLocale];
  }

  return v10;
}

- (void)_waitForLIDWithContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  objc_initWeak(&location, self);
  queue = self->_queue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __65___LTOfflineTranslationEngine__waitForLIDWithContext_completion___block_invoke;
  v11[3] = &unk_2789B7358;
  objc_copyWeak(&v14, &location);
  v12 = contextCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = contextCopy;
  dispatch_async(queue, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)speak:(id)speak withContext:(id)context completion:(id)completion
{
  speakCopy = speak;
  contextCopy = context;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v11 = [_LTOfflineSpeechSynthesizer alloc];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __60___LTOfflineTranslationEngine_speak_withContext_completion___block_invoke;
  v15[3] = &unk_2789B73A8;
  objc_copyWeak(&v17, &location);
  v12 = completionCopy;
  v16 = v12;
  v13 = [(_LTOfflineSpeechSynthesizer *)v11 initWithCompletion:v15];
  synthesizer = self->_synthesizer;
  self->_synthesizer = v13;

  [(_LTOfflineSpeechSynthesizer *)self->_synthesizer speak:speakCopy withContext:contextCopy];
  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

- (void)_translate:(id)_translate withContext:(id)context isFinal:(BOOL)final completion:(id)completion
{
  finalCopy = final;
  v68 = *MEMORY[0x277D85DE8];
  _translateCopy = _translate;
  contextCopy = context;
  completionCopy = completion;
  locale = [_translateCopy locale];
  if (!locale)
  {
    v13 = _LTOSLogTranslationEngine(0, v11);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [_LTOfflineTranslationEngine _translate:withContext:isFinal:completion:];
    }

    autodetectLanguage = [contextCopy autodetectLanguage];
    if (autodetectLanguage && !finalCopy)
    {
      v16 = _LTOSLogTranslationEngine(autodetectLanguage, v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [_LTOfflineTranslationEngine _translate:withContext:isFinal:completion:];
      }

      goto LABEL_30;
    }

    v17 = _LTOSLogTranslationEngine(autodetectLanguage, v15);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [_LTOfflineTranslationEngine _translate:withContext:isFinal:completion:];
    }

    localePair = [contextCopy localePair];
    locale = [localePair sourceLocale];
  }

  dispatch_assert_queue_V2(self->_queue);
  v21 = _LTOSLogTranslationEngine(v19, v20);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_232E53000, v21, OS_LOG_TYPE_INFO, "Starting speech translation with offline engine", buf, 2u);
  }

  bestTranscription = [_translateCopy bestTranscription];
  localePair2 = [(_LTOfflineTranslationEngine *)self localePair];
  isPassthrough = [localePair2 isPassthrough];

  if (isPassthrough)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __73___LTOfflineTranslationEngine__translate_withContext_isFinal_completion___block_invoke;
    block[3] = &unk_2789B73D0;
    v61 = bestTranscription;
    v62 = locale;
    v63 = contextCopy;
    v64 = completionCopy;
    dispatch_async(queue, block);
  }

  else
  {
    objc_initWeak(&location, self);
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = __73___LTOfflineTranslationEngine__translate_withContext_isFinal_completion___block_invoke_2;
    v53[3] = &unk_2789B7420;
    objc_copyWeak(&v57, &location);
    v54 = _translateCopy;
    v25 = contextCopy;
    v55 = v25;
    v58 = finalCopy;
    v56 = completionCopy;
    v49 = MEMORY[0x238398770](v53);
    [(_LTOfflineTranslationEngine *)self _translatePrepare:locale];
    if ([v25 enableTranslationSemanticSegmentation])
    {
      speechRequestStablePrefixState = self->_speechRequestStablePrefixState;
      if (!speechRequestStablePrefixState)
      {
        stablePrefixState = [MEMORY[0x277D07200] stablePrefixState];
        v28 = self->_speechRequestStablePrefixState;
        self->_speechRequestStablePrefixState = stablePrefixState;

        v31 = _LTOSLogTranslationEngine(v29, v30);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          v32 = self->_speechRequestStablePrefixState;
          *buf = 134349056;
          v67 = v32;
          _os_log_impl(&dword_232E53000, v31, OS_LOG_TYPE_INFO, "Created a new EMTStablePrefixState %{public}p", buf, 0xCu);
        }

        speechRequestStablePrefixState = self->_speechRequestStablePrefixState;
      }

      v33 = speechRequestStablePrefixState;
    }

    else
    {
      v33 = 0;
    }

    v34 = objc_alloc_init(MEMORY[0x277D07208]);
    [v34 setEnableDisambiguationAlternatives:{objc_msgSend(v25, "supportsGenderDisambiguation")}];
    v35 = [v34 setStablePrefixState:v33];
    v37 = _LTOSLogTranslationEngine(v35, v36);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      supportsGenderDisambiguation = [v25 supportsGenderDisambiguation];
      *buf = 67109120;
      LODWORD(v67) = supportsGenderDisambiguation;
      _os_log_impl(&dword_232E53000, v37, OS_LOG_TYPE_INFO, "Disambiguation: Offline engine is translating with speech input and options enableDisambiguationAlternatives: %{BOOL}i", buf, 8u);
    }

    translator = self->_translator;
    formattedString = [bestTranscription formattedString];
    v65 = formattedString;
    v41 = [MEMORY[0x277CBEA60] arrayWithObjects:&v65 count:1];
    [(EMTTranslator *)translator translateTokens:v41 isFinal:finalCopy spans:0 options:v34 completion:v49];

    enableTranslationSemanticSegmentation = [v25 enableTranslationSemanticSegmentation];
    if (enableTranslationSemanticSegmentation & finalCopy)
    {
      v44 = _LTOSLogTranslationEngine(enableTranslationSemanticSegmentation, v43);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
      {
        v45 = self->_speechRequestStablePrefixState;
        *buf = 134349056;
        v67 = v45;
        _os_log_impl(&dword_232E53000, v44, OS_LOG_TYPE_INFO, "Reseting current EMTStablePrefixState %{public}p", buf, 0xCu);
      }

      v46 = self->_speechRequestStablePrefixState;
      self->_speechRequestStablePrefixState = 0;
    }

    selfLoggingManager = self->_selfLoggingManager;
    logIdentifier = [v25 logIdentifier];
    [(_LTDSELFLoggingManager *)selfLoggingManager sendSpeechTranslationFrameworkRequestSentWithInvocationId:logIdentifier qssSessionId:0 requestRoute:2 payloadSizeInBytes:0];

    objc_destroyWeak(&v57);
    objc_destroyWeak(&location);
  }

LABEL_30:
}

- (void)_translatePrepare:(id)prepare
{
  prepareCopy = prepare;
  dispatch_assert_queue_V2(self->_queue);
  v7 = _LTOSLogTranslationEngine(v5, v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *v10 = 0;
    _os_log_impl(&dword_232E53000, v7, OS_LOG_TYPE_INFO, "Initialize translation with offline engine", v10, 2u);
  }

  translator = self->_translator;
  v9 = [(_LTLocalePair *)self->_localePair oppositeToLocale:prepareCopy];
  [(EMTTranslator *)translator prepareFor:prepareCopy to:v9];
}

- (void)startTextToSpeechTranslationWithContext:(id)context text:(id)text delegate:(id)delegate
{
  contextCopy = context;
  textCopy = text;
  delegateCopy = delegate;
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];

  v13 = [_LTAnalyticsEvent timedEventWithName:@"OfflineTextToSpeechTranslation"];
  localePair = [contextCopy localePair];
  sourceLocale = [localePair sourceLocale];
  [v13 setSourceLocale:sourceLocale];

  localePair2 = [contextCopy localePair];
  targetLocale = [localePair2 targetLocale];
  [v13 setTargetLocale:targetLocale];

  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __85___LTOfflineTranslationEngine_startTextToSpeechTranslationWithContext_text_delegate___block_invoke;
  v37[3] = &unk_2789B7448;
  v18 = delegateCopy;
  v38 = v18;
  v19 = v13;
  v39 = v19;
  v20 = MEMORY[0x238398770](v37);
  objc_initWeak(&location, self);
  queue = self->_queue;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __85___LTOfflineTranslationEngine_startTextToSpeechTranslationWithContext_text_delegate___block_invoke_2;
  v28[3] = &unk_2789B7498;
  objc_copyWeak(&v35, &location);
  v29 = contextCopy;
  v30 = textCopy;
  v31 = v19;
  v32 = uUIDString;
  v33 = v18;
  v34 = v20;
  v22 = v18;
  v23 = uUIDString;
  v24 = v19;
  v25 = textCopy;
  v26 = v20;
  v27 = contextCopy;
  dispatch_async(queue, v28);

  objc_destroyWeak(&v35);
  objc_destroyWeak(&location);
}

- (void)startSpeechTranslationWithContext:(id)context delegate:(id)delegate
{
  v99[1] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  delegateCopy = delegate;
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];

  v12 = _LTOSLogTranslationEngine(v10, v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    *&buf[4] = [contextCopy autodetectLanguage];
    LOWORD(v94) = 2114;
    *(&v94 + 2) = uUIDString;
    _os_log_impl(&dword_232E53000, v12, OS_LOG_TYPE_INFO, "Starting offline speech translation (auto detect language: %{BOOL}i, id: %{public}@)", buf, 0x12u);
  }

  v13 = [_LTAnalyticsEvent timedEventWithName:@"OfflineSpeechTranslation"];
  localePair = [contextCopy localePair];
  sourceLocale = [localePair sourceLocale];
  [v13 setSourceLocale:sourceLocale];

  localePair2 = [contextCopy localePair];
  targetLocale = [localePair2 targetLocale];
  [v13 setTargetLocale:targetLocale];

  v98 = @"autodetect";
  v18 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(contextCopy, "autodetectLanguage")}];
  v99[0] = v18;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v99 forKeys:&v98 count:1];
  [v13 addFieldsFromDictionary:v19];

  *buf = 0;
  *&v94 = buf;
  *(&v94 + 1) = 0x3032000000;
  v95 = __Block_byref_object_copy__10;
  v96 = __Block_byref_object_dispose__10;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v91[0] = 0;
  v91[1] = v91;
  v91[2] = 0x3032000000;
  v91[3] = __Block_byref_object_copy__10;
  v91[4] = __Block_byref_object_dispose__10;
  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  v89[0] = 0;
  v89[1] = v89;
  v89[2] = 0x3032000000;
  v89[3] = __Block_byref_object_copy__10;
  v89[4] = __Block_byref_object_dispose__10;
  v90 = [MEMORY[0x277CBEB58] set];
  v87[0] = 0;
  v87[1] = v87;
  v87[2] = 0x2020000000;
  v88 = 0;
  v85[0] = 0;
  v85[1] = v85;
  v85[2] = 0x2020000000;
  v86 = 0;
  objc_initWeak(&location, self);
  v75[0] = MEMORY[0x277D85DD0];
  v75[1] = 3221225472;
  v75[2] = __74___LTOfflineTranslationEngine_startSpeechTranslationWithContext_delegate___block_invoke;
  v75[3] = &unk_2789B74C0;
  objc_copyWeak(&v83, &location);
  v80 = v91;
  v20 = contextCopy;
  v76 = v20;
  selfCopy = self;
  v81 = v87;
  v82 = v85;
  v21 = delegateCopy;
  v78 = v21;
  v22 = v13;
  v79 = v22;
  v23 = MEMORY[0x238398770](v75);
  v66[0] = MEMORY[0x277D85DD0];
  v66[1] = 3221225472;
  v66[2] = __74___LTOfflineTranslationEngine_startSpeechTranslationWithContext_delegate___block_invoke_2;
  v66[3] = &unk_2789B7538;
  objc_copyWeak(&v74, &location);
  v67 = uUIDString;
  v24 = v22;
  v68 = v24;
  v25 = v20;
  v69 = v25;
  v26 = v21;
  v70 = v26;
  v72 = v91;
  v73 = v87;
  v27 = v23;
  v71 = v27;
  v43 = uUIDString;
  v28 = MEMORY[0x238398770](v66);
  v62[0] = MEMORY[0x277D85DD0];
  v62[1] = 3221225472;
  v62[2] = __74___LTOfflineTranslationEngine_startSpeechTranslationWithContext_delegate___block_invoke_2_96;
  v62[3] = &unk_2789B7588;
  objc_copyWeak(&v65, &location);
  v29 = v25;
  v63 = v29;
  v30 = v26;
  v64 = v30;
  v31 = MEMORY[0x238398770](v62);
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __74___LTOfflineTranslationEngine_startSpeechTranslationWithContext_delegate___block_invoke_99;
  v51[3] = &unk_2789B75D8;
  objc_copyWeak(&v61, &location);
  v32 = v29;
  v52 = v32;
  v33 = v30;
  v56 = v31;
  v59 = buf;
  v53 = v33;
  selfCopy2 = self;
  v34 = v24;
  v55 = v34;
  v57 = v28;
  v58 = v27;
  v60 = v89;
  v44 = v27;
  v35 = v28;
  v36 = v31;
  v37 = MEMORY[0x238398770](v51);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74___LTOfflineTranslationEngine_startSpeechTranslationWithContext_delegate___block_invoke_116;
  block[3] = &unk_2789B7218;
  objc_copyWeak(&v50, &location);
  v46 = v32;
  v47 = v33;
  v48 = v34;
  v49 = v37;
  v39 = v37;
  v40 = v34;
  v41 = v33;
  v42 = v32;
  dispatch_async(queue, block);

  objc_destroyWeak(&v50);
  objc_destroyWeak(&v61);

  objc_destroyWeak(&v65);
  objc_destroyWeak(&v74);

  objc_destroyWeak(&v83);
  objc_destroyWeak(&location);
  _Block_object_dispose(v85, 8);
  _Block_object_dispose(v87, 8);
  _Block_object_dispose(v89, 8);

  _Block_object_dispose(v91, 8);
  _Block_object_dispose(buf, 8);
}

- (void)endAudio
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __39___LTOfflineTranslationEngine_endAudio__block_invoke;
  v4[3] = &unk_2789B72E0;
  objc_copyWeak(&v5, &location);
  dispatch_async(queue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)cancelRecognition:(BOOL)recognition
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49___LTOfflineTranslationEngine_cancelRecognition___block_invoke;
  block[3] = &unk_2789B7290;
  objc_copyWeak(&v7, &location);
  recognitionCopy = recognition;
  dispatch_async(queue, block);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)_performCancelRecognition:(BOOL)recognition
{
  v5 = _LTOSLogTranslationEngine(self, a2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_232E53000, v5, OS_LOG_TYPE_DEFAULT, "Canceling recognition in offline translation engine", v6, 2u);
  }

  self->_isSpeechTranslationCancelled = 1;
  self->_notifyDelegateOnSuccessfullCancellation = recognition;
  [(_LTMultilingualSpeechRecognizer *)self->_recognizer cancelRecognition];
}

- (void)_loadRecognizersWithContext:(void *)a1 .cold.1(void *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_1(a1, a2, 5.808e-34);
  _os_log_debug_impl(&dword_232E53000, v3, OS_LOG_TYPE_DEBUG, "Using model overrides as specified: %{private}@", v4, 0xCu);
}

- (void)_loadRecognizersWithContext:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_loadEtiquetteSanitizersForTaskHint:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_4_1(v2, v3, 5.8381e-34);
  _os_log_error_impl(&dword_232E53000, v4, OS_LOG_TYPE_ERROR, "No etiquette sanitizer available for: %{public}@", v5, 0xCu);
}

- (void)_loadTranslatorForTask:.cold.2()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  v3 = 2114;
  v4 = v0;
  _os_log_error_impl(&dword_232E53000, v1, OS_LOG_TYPE_ERROR, "Failed to create translator for task %{public}@: %{public}@", v2, 0x16u);
}

- (void)_translateParagraph:withContext:toLocale:completion:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)translate:withContext:paragraphResult:completion:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_translate:withContext:isFinal:completion:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_translate:withContext:isFinal:completion:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_translate:withContext:isFinal:completion:.cold.3()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end