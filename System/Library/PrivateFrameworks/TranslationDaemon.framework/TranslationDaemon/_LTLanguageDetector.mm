@interface _LTLanguageDetector
- (BOOL)forceLanguageDetectionResult;
- (BOOL)haveAtLeastOneFinalASRResult;
- (BOOL)haveFinalASRResults;
- (BOOL)isLowConfidencePair;
- (_LTLanguageDetector)initWithSelfLoggingManager:(id)manager;
- (void)addSpeechAudioData:(id)data;
- (void)addSpeechRecognitionResult:(id)result;
- (void)endAudio;
- (void)languageDetectorDidDetectLanguageWithConfidence:(id)confidence confidence:(id)a4 isConfident:(BOOL)confident;
- (void)sendFinalLanguageDetectionResult:(BOOL)result;
- (void)sendLIDResult:(id)result;
- (void)startLanguageDetectionWithContext:(id)context delegate:(id)delegate;
@end

@implementation _LTLanguageDetector

- (_LTLanguageDetector)initWithSelfLoggingManager:(id)manager
{
  managerCopy = manager;
  v44.receiver = self;
  v44.super_class = _LTLanguageDetector;
  v6 = [(_LTLanguageDetector *)&v44 init];
  v7 = v6;
  if (v6)
  {
    v6->_samplingRate = 16000.0;
    v6->_audioBitDepth = 2;
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    acousticResults = v7->_acousticResults;
    v7->_acousticResults = v8;

    lastResult = v7->_lastResult;
    v7->_lastResult = 0;

    v7->_havePartialASRConfidences = 0;
    *&v7->_endAudioCalled = 0;
    partialSpeechResultConfidences = v7->_partialSpeechResultConfidences;
    v7->_partialSpeechResultConfidences = 0;

    finalSpeechResults = v7->_finalSpeechResults;
    v7->_finalSpeechResults = 0;

    modelVersions = v7->_modelVersions;
    v7->_modelVersions = 0;

    v7->_minimumAcousticLanguageDetectorResults = _LTPreferencesMinimumAcousticLanguageDetectionResults();
    v14 = _LTPreferencesMaximumAcousticLanguageDetectionResults();
    v7->_maximumAcousticLanguageDetectorResults = v14;
    v16 = _LTOSLogLID(v14, v15);
    v7->_lidSignpostID = os_signpost_id_generate(v16);
    v17 = dispatch_queue_create("com.apple.translation.lid.result", 0);
    resultQueue = v7->_resultQueue;
    v7->_resultQueue = v17;

    v19 = dispatch_queue_create("com.apple.translation.lid.finalResult", 0);
    finalResultWaitQueue = v7->_finalResultWaitQueue;
    v7->_finalResultWaitQueue = v19;

    v21 = objc_alloc_init(_LTOfflineAssetManager);
    v43 = 0;
    v22 = [(_LTOfflineAssetManager *)v21 languageDetectorAssetWithError:&v43];
    v23 = v43;
    v25 = v23;
    if (v23)
    {
      v26 = _LTOSLogLID(v23, v24);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        [_LTLanguageDetector initWithSelfLoggingManager:];
      }

      v27 = 0;
    }

    else
    {
      v46 = 0;
      v47 = &v46;
      v48 = 0x2050000000;
      v28 = getCSLanguageDetectorClass_softClass;
      v49 = getCSLanguageDetectorClass_softClass;
      if (!getCSLanguageDetectorClass_softClass)
      {
        v45[0] = MEMORY[0x277D85DD0];
        v45[1] = 3221225472;
        v45[2] = __getCSLanguageDetectorClass_block_invoke;
        v45[3] = &unk_2789B57C0;
        v45[4] = &v46;
        __getCSLanguageDetectorClass_block_invoke(v45);
        v28 = v47[3];
      }

      v29 = v28;
      _Block_object_dispose(&v46, 8);
      v30 = [v28 alloc];
      languageDetectorModelURL = [v22 languageDetectorModelURL];
      v32 = [v30 initWithModelURL:languageDetectorModelURL];
      csLanguageDetector = v7->_csLanguageDetector;
      v7->_csLanguageDetector = v32;

      [(CSLanguageDetector *)v7->_csLanguageDetector setDelegate:v7];
      v34 = [_LTLanguageDetectorFeatureCombinationModel alloc];
      featureCombinationConfigUrl = [v22 featureCombinationConfigUrl];
      v36 = [(_LTLanguageDetectorFeatureCombinationModel *)v34 initWithConfig:featureCombinationConfigUrl];
      featureCombinationModel = v7->_featureCombinationModel;
      v7->_featureCombinationModel = v36;

      v7->_featureCombinationModelSupported = 0;
      objc_storeStrong(&v7->_selfLoggingManager, manager);
      v38 = objc_alloc(MEMORY[0x277CBEB98]);
      v39 = _LTPreferencesGetLanguageDetectorUnsupportedPairs();
      v40 = [v38 initWithArray:v39];
      lowConfidenceLanguagePairs = v7->_lowConfidenceLanguagePairs;
      v7->_lowConfidenceLanguagePairs = v40;

      v27 = v7;
    }
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

- (void)startLanguageDetectionWithContext:(id)context delegate:(id)delegate
{
  v66 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  delegateCopy = delegate;
  objc_storeStrong(&self->_context, context);
  objc_storeWeak(&self->_delegate, delegateCopy);
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  acousticResults = self->_acousticResults;
  self->_acousticResults = v9;

  lastResult = self->_lastResult;
  self->_lastResult = 0;

  self->_havePartialASRConfidences = 0;
  *&self->_endAudioCalled = 0;
  v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
  partialSpeechResultConfidences = self->_partialSpeechResultConfidences;
  self->_partialSpeechResultConfidences = v12;

  v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v15 = self->_partialSpeechResultConfidences;
  localePair = [contextCopy localePair];
  sourceLocale = [localePair sourceLocale];
  [(NSMutableDictionary *)v15 setObject:v14 forKeyedSubscript:sourceLocale];

  v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v19 = self->_partialSpeechResultConfidences;
  localePair2 = [contextCopy localePair];
  targetLocale = [localePair2 targetLocale];
  [(NSMutableDictionary *)v19 setObject:v18 forKeyedSubscript:targetLocale];

  v22 = objc_alloc_init(MEMORY[0x277CBEB38]);
  finalSpeechResults = self->_finalSpeechResults;
  self->_finalSpeechResults = v22;

  v24 = objc_alloc_init(MEMORY[0x277CBEB38]);
  modelVersions = self->_modelVersions;
  self->_modelVersions = v24;

  autodetectLanguage = [contextCopy autodetectLanguage];
  if (autodetectLanguage)
  {
    v28 = _LTOSLogLID(autodetectLanguage, v27);
    v29 = v28;
    lidSignpostID = self->_lidSignpostID;
    if (lidSignpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_232E53000, v29, OS_SIGNPOST_INTERVAL_BEGIN, lidSignpostID, "LID", "Start", buf, 2u);
    }

    lidThreshold = [contextCopy lidThreshold];
    if (lidThreshold < 0)
    {
      localePair3 = [contextCopy localePair];
      self->_sourceLocaleConfidenceThreshold = _LTPreferencesLanguageDetectorThresholdsForLocale(localePair3);

      localePair4 = [contextCopy localePair];
      reversedPair = [localePair4 reversedPair];
      self->_targetLocaleConfidenceThreshold = _LTPreferencesLanguageDetectorThresholdsForLocale(reversedPair);

      v41 = _LTOSLogLID(v39, v40);
      v42 = os_log_type_enabled(v41, OS_LOG_TYPE_INFO);
      if (v42)
      {
        sourceLocaleConfidenceThreshold = self->_sourceLocaleConfidenceThreshold;
        targetLocaleConfidenceThreshold = self->_targetLocaleConfidenceThreshold;
        *buf = 134218240;
        *&buf[4] = sourceLocaleConfidenceThreshold;
        *&buf[12] = 2048;
        *&buf[14] = targetLocaleConfidenceThreshold;
        _os_log_impl(&dword_232E53000, v41, OS_LOG_TYPE_INFO, "Confidence thresholds for source %f and target %f", buf, 0x16u);
      }

      if ((self->_sourceLocaleConfidenceThreshold + self->_targetLocaleConfidenceThreshold) <= 1.0)
      {
        v46 = _LTOSLogLID(v42, v43);
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          [_LTLanguageDetector startLanguageDetectionWithContext:delegate:];
        }
      }
    }

    else
    {
      v33 = _LTOSLogLID(lidThreshold, v32);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        v34 = v33;
        lidThreshold2 = [contextCopy lidThreshold];
        *buf = 134217984;
        *&buf[4] = lidThreshold2;
        _os_log_impl(&dword_232E53000, v34, OS_LOG_TYPE_INFO, "Overriding confidence thresholds, setting to %ld", buf, 0xCu);
      }

      self->_sourceLocaleConfidenceThreshold = [contextCopy lidThreshold] / 1000.0;
      self->_targetLocaleConfidenceThreshold = [contextCopy lidThreshold] / 1000.0;
    }

    localePair5 = [contextCopy localePair];
    sourceLocale2 = [localePair5 sourceLocale];
    _ltCsLocaleIdentifier = [sourceLocale2 _ltCsLocaleIdentifier];

    localePair6 = [contextCopy localePair];
    targetLocale2 = [localePair6 targetLocale];
    _ltCsLocaleIdentifier2 = [targetLocale2 _ltCsLocaleIdentifier];

    v59 = 0;
    v60 = &v59;
    v61 = 0x2050000000;
    v53 = getCSLanguageDetectorOptionClass_softClass;
    v62 = getCSLanguageDetectorOptionClass_softClass;
    if (!getCSLanguageDetectorOptionClass_softClass)
    {
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __getCSLanguageDetectorOptionClass_block_invoke;
      v64 = &unk_2789B57C0;
      v65 = &v59;
      __getCSLanguageDetectorOptionClass_block_invoke(buf);
      v53 = v60[3];
    }

    v54 = v53;
    _Block_object_dispose(&v59, 8);
    v55 = objc_alloc_init(v53);
    samplingRate = self->_samplingRate;
    *&samplingRate = samplingRate;
    [v55 setSamplingRate:samplingRate];
    v57 = [MEMORY[0x277CBEB98] setWithObjects:{_ltCsLocaleIdentifier, _ltCsLocaleIdentifier2, 0, v59}];
    [v55 setDictationLanguages:v57];

    [(CSLanguageDetector *)self->_csLanguageDetector resetForNewRequest:v55];
    if (self->_featureCombinationModel)
    {
      localePair7 = [contextCopy localePair];
      self->_featureCombinationModelSupported = _LTPreferencesLanguageDetectorFeatureCombinationModelSupportedForLocale(localePair7);
    }

    else
    {
      self->_featureCombinationModelSupported = 0;
    }
  }
}

- (void)sendLIDResult:(id)result
{
  v21 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  dispatch_assert_queue_V2(self->_resultQueue);
  if (!self->_finalLIDResultSent)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      isFinal = [resultCopy isFinal];
      self->_finalLIDResultSent = isFinal;
      v9 = _LTOSLogLID(isFinal, v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = v9;
        if ([resultCopy isFinal])
        {
          v11 = @"final";
        }

        else
        {
          v11 = @"intermediate";
        }

        dominantLanguage = [resultCopy dominantLanguage];
        _ltLocaleIdentifier = [dominantLanguage _ltLocaleIdentifier];
        v15 = 138543874;
        v16 = v11;
        v17 = 2114;
        v18 = _ltLocaleIdentifier;
        v19 = 1024;
        isConfident = [resultCopy isConfident];
        _os_log_impl(&dword_232E53000, v10, OS_LOG_TYPE_INFO, "Sending out new %{public}@ LID result, detected %{public}@, confident %{BOOL}i", &v15, 0x1Cu);
      }

      v14 = objc_loadWeakRetained(&self->_delegate);
      [v14 languageDetectionResult:resultCopy];
    }
  }
}

- (BOOL)haveFinalASRResults
{
  dispatch_assert_queue_V2(self->_resultQueue);
  finalSpeechResults = self->_finalSpeechResults;
  localePair = [(_LTTranslationContext *)self->_context localePair];
  sourceLocale = [localePair sourceLocale];
  v6 = [(NSMutableDictionary *)finalSpeechResults objectForKey:sourceLocale];

  v7 = self->_finalSpeechResults;
  localePair2 = [(_LTTranslationContext *)self->_context localePair];
  targetLocale = [localePair2 targetLocale];
  v10 = [(NSMutableDictionary *)v7 objectForKey:targetLocale];

  if (v6)
  {
    v11 = v10 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = !v11;

  return v12;
}

- (BOOL)haveAtLeastOneFinalASRResult
{
  dispatch_assert_queue_V2(self->_resultQueue);
  finalSpeechResults = self->_finalSpeechResults;
  localePair = [(_LTTranslationContext *)self->_context localePair];
  sourceLocale = [localePair sourceLocale];
  v6 = [(NSMutableDictionary *)finalSpeechResults objectForKey:sourceLocale];

  v7 = self->_finalSpeechResults;
  localePair2 = [(_LTTranslationContext *)self->_context localePair];
  targetLocale = [localePair2 targetLocale];
  v10 = [(NSMutableDictionary *)v7 objectForKey:targetLocale];

  return (v6 | v10) != 0;
}

- (void)sendFinalLanguageDetectionResult:(BOOL)result
{
  resultCopy = result;
  v37 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_resultQueue);
  if (self->_finalLIDResultSent)
  {
    return;
  }

  lastResult = self->_lastResult;
  self->_lastResult = 0;

  haveFinalASRResults = [(_LTLanguageDetector *)self haveFinalASRResults];
  haveAtLeastOneFinalASRResult = [(_LTLanguageDetector *)self haveAtLeastOneFinalASRResult];
  if (self->_havePartialASRConfidences)
  {
    v8 = haveAtLeastOneFinalASRResult;
    v9 = [(NSMutableArray *)self->_acousticResults count]>= self->_minimumAcousticLanguageDetectorResults || v8;
    if ((((haveFinalASRResults || self->_endAudioCalled) | v9) & 1) == 0)
    {
      return;
    }
  }

  else if (!haveFinalASRResults)
  {
    return;
  }

  v10 = [(NSMutableArray *)self->_acousticResults count];
  self->_useFinalThresholds |= haveFinalASRResults || resultCopy || v10 >= self->_maximumAcousticLanguageDetectorResults;
  v12 = _LTOSLogLID(v10, v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    acousticResults = self->_acousticResults;
    v14 = v12;
    v15 = [(NSMutableArray *)acousticResults count];
    v16 = &stru_284834138;
    if (self->_havePartialASRConfidences)
    {
      v17 = @", partial ASR confidences";
    }

    else
    {
      v17 = &stru_284834138;
    }

    *buf = 134218498;
    v32 = v15;
    v33 = 2114;
    v34 = v17;
    if (haveFinalASRResults)
    {
      v16 = @", final ASR results";
    }

    v35 = 2114;
    v36 = v16;
    _os_log_impl(&dword_232E53000, v14, OS_LOG_TYPE_INFO, "Computing new LID result, with %zu acoustic results%{public}@%{public}@", buf, 0x20u);
  }

  featureCombinationModel = self->_featureCombinationModel;
  context = self->_context;
  v20 = self->_acousticResults;
  partialSpeechResultConfidences = self->_partialSpeechResultConfidences;
  finalSpeechResults = self->_finalSpeechResults;
  modelVersions = self->_modelVersions;
  useFinalThresholds = self->_useFinalThresholds;
  LOBYTE(v30) = [(_LTLanguageDetector *)self isLowConfidencePair];
  v25 = [(_LTLanguageDetectorFeatureCombinationModel *)featureCombinationModel estimateLanguage:context languageDetectionResults:v20 partialSpeechResultConfidences:partialSpeechResultConfidences finalSpeechResults:finalSpeechResults modelVersions:modelVersions useFinalThresholds:useFinalThresholds isLowConfidencePair:v30];
  v26 = self->_lastResult;
  self->_lastResult = v25;

  v27 = self->_lastResult;
  if (v27)
  {
    if (!self->_havePartialASRConfidences)
    {
      if (!haveFinalASRResults)
      {
        return;
      }

LABEL_26:
      [(_LTLanguageDetectionResult *)v27 setIsFinal:1];
      [(_LTLanguageDetector *)self sendLIDResult:self->_lastResult];
      [(_LTLanguageDetector *)self endAudio];
      return;
    }

    isConfident = [(_LTLanguageDetectionResult *)v27 isConfident];
    if ([(NSMutableArray *)self->_acousticResults count]>= self->_maximumAcousticLanguageDetectorResults)
    {
      v29 = 1;
    }

    else
    {
      v29 = isConfident;
    }

    if (((haveFinalASRResults | v29) & 1) != 0 || resultCopy)
    {
      v27 = self->_lastResult;
      goto LABEL_26;
    }
  }
}

- (void)addSpeechRecognitionResult:(id)result
{
  resultCopy = result;
  if ([(_LTTranslationContext *)self->_context autodetectLanguage])
  {
    objc_initWeak(&location, self);
    resultQueue = self->_resultQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50___LTLanguageDetector_addSpeechRecognitionResult___block_invoke;
    block[3] = &unk_2789B5288;
    objc_copyWeak(&v8, &location);
    v7 = resultCopy;
    dispatch_async(resultQueue, block);

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

- (void)addSpeechAudioData:(id)data
{
  v14 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  if (dataCopy)
  {
    autodetectLanguage = [(_LTTranslationContext *)self->_context autodetectLanguage];
    if (autodetectLanguage)
    {
      if (self->_finalLIDResultSent)
      {
        v7 = _LTOSLogLID(autodetectLanguage, v6);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          [_LTLanguageDetector addSpeechAudioData:];
        }
      }

      else
      {
        v8 = [dataCopy length];
        v9 = v8 / self->_audioBitDepth;
        v11 = _LTOSLogLID(v8, v10);
        if (os_signpost_enabled(v11))
        {
          v12 = 134217984;
          v13 = v9;
          _os_signpost_emit_with_name_impl(&dword_232E53000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "LID Audio Data", "NumSamples: %ld", &v12, 0xCu);
        }

        [(CSLanguageDetector *)self->_csLanguageDetector addSamples:dataCopy numSamples:v9];
      }
    }
  }
}

- (void)endAudio
{
  if (!self->_endAudioCalled)
  {
    if ([(_LTTranslationContext *)self->_context autodetectLanguage])
    {
      [(CSLanguageDetector *)self->_csLanguageDetector endAudio];
    }

    objc_initWeak(&location, self);
    resultQueue = self->_resultQueue;
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __31___LTLanguageDetector_endAudio__block_invoke;
    v4[3] = &unk_2789B53F0;
    objc_copyWeak(&v5, &location);
    dispatch_async(resultQueue, v4);
    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

- (BOOL)forceLanguageDetectionResult
{
  selfCopy = self;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  objc_initWeak(&location, self);
  resultQueue = selfCopy->_resultQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __51___LTLanguageDetector_forceLanguageDetectionResult__block_invoke;
  v5[3] = &unk_2789B64C0;
  objc_copyWeak(&v6, &location);
  v5[4] = selfCopy;
  v5[5] = &v8;
  dispatch_sync(resultQueue, v5);
  LOBYTE(selfCopy) = *(v9 + 24);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v8, 8);
  return selfCopy;
}

- (BOOL)isLowConfidencePair
{
  if (_LTPreferencesDebugForceLowConfidenceLID())
  {
    return 1;
  }

  lowConfidenceLanguagePairs = self->_lowConfidenceLanguagePairs;
  localePair = [(_LTTranslationContext *)self->_context localePair];
  canonicalLocalePair = [localePair canonicalLocalePair];
  LOBYTE(lowConfidenceLanguagePairs) = [(NSSet *)lowConfidenceLanguagePairs containsObject:canonicalLocalePair];

  return lowConfidenceLanguagePairs;
}

- (void)languageDetectorDidDetectLanguageWithConfidence:(id)confidence confidence:(id)a4 isConfident:(BOOL)confident
{
  v64 = *MEMORY[0x277D85DE8];
  confidenceCopy = confidence;
  v7 = a4;
  v9 = _LTOSLogLID(v7, v8);
  if (os_signpost_enabled(v9))
  {
    *buf = 138412290;
    v59 = v7;
    _os_signpost_emit_with_name_impl(&dword_232E53000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CS-LID Result", "confidence: %@", buf, 0xCu);
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  localePair = [(_LTTranslationContext *)self->_context localePair];
  sourceLocale = [localePair sourceLocale];
  _ltCsLocaleIdentifier = [sourceLocale _ltCsLocaleIdentifier];
  v14 = [v7 objectForKeyedSubscript:_ltCsLocaleIdentifier];

  if (!v14 || (-[_LTTranslationContext localePair](self->_context, "localePair"), v15 = objc_claimAutoreleasedReturnValue(), [v15 sourceLocale], v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(dictionary, "setObject:forKeyedSubscript:", v14, v16), v16, v15, objc_msgSend(v14, "floatValue"), v17 < self->_sourceLocaleConfidenceThreshold) || (objc_msgSend(v14, "floatValue"), v18 == 0.5))
  {
    sourceLocale2 = 0;
    v24 = 0;
  }

  else
  {
    localePair2 = [(_LTTranslationContext *)self->_context localePair];
    sourceLocale2 = [localePair2 sourceLocale];

    v23 = _LTOSLogLID(v21, v22);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      [_LTLanguageDetector languageDetectorDidDetectLanguageWithConfidence:v23 confidence:v14 isConfident:?];
    }

    v24 = 1;
  }

  localePair3 = [(_LTTranslationContext *)self->_context localePair];
  targetLocale = [localePair3 targetLocale];
  _ltCsLocaleIdentifier2 = [targetLocale _ltCsLocaleIdentifier];
  v28 = [v7 objectForKeyedSubscript:_ltCsLocaleIdentifier2];

  if (!v28 || (-[_LTTranslationContext localePair](self->_context, "localePair"), v31 = objc_claimAutoreleasedReturnValue(), [v31 targetLocale], v32 = objc_claimAutoreleasedReturnValue(), objc_msgSend(dictionary, "setObject:forKeyedSubscript:", v28, v32), v32, v31, isLowConfidencePair = objc_msgSend(v28, "floatValue"), v33 < self->_targetLocaleConfidenceThreshold) || (isLowConfidencePair = objc_msgSend(v28, "floatValue"), v34 == 0.5))
  {
    if (!v24)
    {
      goto LABEL_18;
    }

    targetLocale2 = sourceLocale2;
  }

  else
  {
    localePair4 = [(_LTTranslationContext *)self->_context localePair];
    targetLocale2 = [localePair4 targetLocale];

    v39 = _LTOSLogLID(v37, v38);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
    {
      [_LTLanguageDetector languageDetectorDidDetectLanguageWithConfidence:v39 confidence:v28 isConfident:?];
    }
  }

  isLowConfidencePair = [(_LTLanguageDetector *)self isLowConfidencePair];
  v24 = isLowConfidencePair ^ 1;
  sourceLocale2 = targetLocale2;
LABEL_18:
  v40 = _LTOSLogLID(isLowConfidencePair, v30);
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
  {
    v49 = v40;
    localeIdentifier = [sourceLocale2 localeIdentifier];
    *buf = 138543874;
    v59 = localeIdentifier;
    v60 = 1024;
    v61 = v24;
    v62 = 2114;
    v63 = v7;
    _os_log_debug_impl(&dword_232E53000, v49, OS_LOG_TYPE_DEBUG, "Acoustic LID detected %{public}@ (confident: %{BOOL}i): %{public}@", buf, 0x1Cu);
  }

  objc_initWeak(buf, self);
  resultQueue = self->_resultQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __94___LTLanguageDetector_languageDetectorDidDetectLanguageWithConfidence_confidence_isConfident___block_invoke;
  block[3] = &unk_2789B64E8;
  objc_copyWeak(&v56, buf);
  v42 = dictionary;
  v54 = v42;
  v57 = v24;
  v43 = sourceLocale2;
  v55 = v43;
  dispatch_async(resultQueue, block);
  v46 = _LTOSLogLID(v44, v45);
  v47 = v46;
  lidSignpostID = self->_lidSignpostID;
  if (lidSignpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v46))
  {
    *v52 = 0;
    _os_signpost_emit_with_name_impl(&dword_232E53000, v47, OS_SIGNPOST_INTERVAL_BEGIN, lidSignpostID, "LID", "End", v52, 2u);
  }

  objc_destroyWeak(&v56);
  objc_destroyWeak(buf);
}

- (void)languageDetectorDidDetectLanguageWithConfidence:(void *)a1 confidence:(void *)a2 isConfident:.cold.1(void *a1, void *a2)
{
  v3 = a1;
  [a2 floatValue];
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_4_0(&dword_232E53000, v4, v5, "Confident in source language (%lf) with threshold %lf", v6, v7, v8, v9);
}

- (void)languageDetectorDidDetectLanguageWithConfidence:(void *)a1 confidence:(void *)a2 isConfident:.cold.2(void *a1, void *a2)
{
  v3 = a1;
  [a2 floatValue];
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_4_0(&dword_232E53000, v4, v5, "Confident in target language (%lf) with threshold %lf", v6, v7, v8, v9);
}

@end