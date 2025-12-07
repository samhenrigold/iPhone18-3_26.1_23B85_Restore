@interface _LTHybridEndpointer
- (BOOL)didEndpointWithFeatures:(id)features silenceFeatures:(id)silenceFeatures endpointer:(id)endpointer;
- (_LTHybridEndpointer)init;
- (void)addSpeechAudioData:(id)data;
- (void)clientSilenceFeaturesAvailable:(id)available;
- (void)endAudio;
- (void)setServerEndpointerFeatures:(id)features withLocale:(id)locale;
- (void)startEndpointingWithContext:(id)context delegate:(id)delegate;
@end

@implementation _LTHybridEndpointer

- (_LTHybridEndpointer)init
{
  v30 = *MEMORY[0x277D85DE8];
  v23.receiver = self;
  v23.super_class = _LTHybridEndpointer;
  v2 = [(_LTHybridEndpointer *)&v23 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_samplingRate = xmmword_233005CC0;
    v2->_clientLagThresholdMs = _LTPreferencesHybridEndpointerClientLagThreshold();
    v3->_clampedSFLatencyMsForClientLag = _LTPreferencesHybridEndpointerClientLagClampedLatency();
    v4 = _LTPreferencesHybridEndpointerUseDefaultFeaturesOnClientLagThreshold();
    v3->_useDefaultServerFeaturesOnClientLag = v4;
    v6 = _LTOSLogSpeech(v4, v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      clientLagThresholdMs = v3->_clientLagThresholdMs;
      clampedSFLatencyMsForClientLag = v3->_clampedSFLatencyMsForClientLag;
      useDefaultServerFeaturesOnClientLag = v3->_useDefaultServerFeaturesOnClientLag;
      *buf = 134218496;
      v25 = clientLagThresholdMs;
      v26 = 2048;
      v27 = clampedSFLatencyMsForClientLag;
      v28 = 1024;
      v29 = useDefaultServerFeaturesOnClientLag;
      _os_log_impl(&dword_232E53000, v6, OS_LOG_TYPE_INFO, "Client lag configuration is %f, %f, %{BOOL}i", buf, 0x1Cu);
    }

    v10 = dispatch_queue_create("com.apple.siri.translation.HEP", 0);
    queue = v3->_queue;
    v3->_queue = v10;

    v12 = dispatch_queue_create("com.apple.siri.translation.HEP.features", 0);
    featureQueue = v3->_featureQueue;
    v3->_featureQueue = v12;

    v16 = _LTOSLogSpeech(v14, v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_232E53000, v16, OS_LOG_TYPE_INFO, "Init of HEP", buf, 2u);
    }

    v3->_didEndpoint = 0;
    sourceEndpointer = v3->_sourceEndpointer;
    v3->_sourceEndpointer = 0;

    sourceEndpointerFeatures = v3->_sourceEndpointerFeatures;
    v3->_sourceEndpointerFeatures = 0;

    targetEndpointer = v3->_targetEndpointer;
    v3->_targetEndpointer = 0;

    targetEndpointerFeatures = v3->_targetEndpointerFeatures;
    v3->_targetEndpointerFeatures = 0;

    v21 = v3;
  }

  return v3;
}

- (void)startEndpointingWithContext:(id)context delegate:(id)delegate
{
  *&v111[5] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  delegateCopy = delegate;
  autoEndpoint = [contextCopy autoEndpoint];
  v10 = autoEndpoint;
  v12 = _LTOSLogSpeech(autoEndpoint, v11);
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
  if (v10)
  {
    if (v13)
    {
      *buf = 0;
      _os_log_impl(&dword_232E53000, v12, OS_LOG_TYPE_INFO, "Start new HEP request", buf, 2u);
    }

    self->_didEndpoint = 0;
    objc_storeStrong(&self->_context, context);
    objc_storeWeak(&self->_delegate, delegateCopy);
    sourceEndpointer = self->_sourceEndpointer;
    self->_sourceEndpointer = 0;

    sourceEndpointerFeatures = self->_sourceEndpointerFeatures;
    self->_sourceEndpointerFeatures = 0;

    targetEndpointer = self->_targetEndpointer;
    self->_targetEndpointer = 0;

    targetEndpointerFeatures = self->_targetEndpointerFeatures;
    self->_targetEndpointerFeatures = 0;

    v18 = objc_alloc_init(_LTOfflineAssetManager);
    v109 = 0;
    v19 = [(_LTOfflineAssetManager *)v18 endpointAssetInfoWithContext:contextCopy error:&v109];
    v20 = v109;
    asset = self->_asset;
    self->_asset = v19;

    if (v20 || (v22 = self->_asset) == 0)
    {
      v24 = _LTOSLogSpeech(v22, v23);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [_LTHybridEndpointer startEndpointingWithContext:v20 delegate:v24];
      }

      goto LABEL_46;
    }

    caesuraModelURL = [(_LTHybridEndpointerAssetInfo *)v22 caesuraModelURL];
    if (!caesuraModelURL)
    {
      v63 = _LTOSLogSpeech(0, v25);
      if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_232E53000, v63, OS_LOG_TYPE_INFO, "Could not obtain SPG (silence posterior generator) asset", buf, 2u);
      }

      goto LABEL_45;
    }

    v27 = objc_alloc(MEMORY[0x277D071D8]);
    path = [caesuraModelURL path];
    v29 = [v27 initWithConfigFile:path samplingRate:self->_samplingRate];
    spg = self->_spg;
    self->_spg = v29;

    [(EARCaesuraSilencePosteriorGenerator *)self->_spg setDelegate:self];
    v31 = self->_asset;
    localePair = [contextCopy localePair];
    sourceLocale = [localePair sourceLocale];
    v34 = [(_LTHybridEndpointerAssetInfo *)v31 endpointerModelURL:sourceLocale];

    v108 = v34;
    if (v34)
    {
      v107 = caesuraModelURL;
      v35 = objc_alloc(MEMORY[0x277D07230]);
      v36 = self->_asset;
      localePair2 = [contextCopy localePair];
      sourceLocale2 = [localePair2 sourceLocale];
      v39 = [(_LTHybridEndpointerAssetInfo *)v36 endpointerModelURL:sourceLocale2];
      path2 = [v39 path];
      v41 = [v35 initWithConfiguration:path2];
      v42 = self->_sourceEndpointer;
      self->_sourceEndpointer = v41;

      v43 = [MEMORY[0x277CE1B70] featuresForEndpointer:self->_sourceEndpointer];
      v44 = self->_sourceEndpointerFeatures;
      self->_sourceEndpointerFeatures = v43;

      v45 = [(_EAREndpointer *)self->_sourceEndpointer requestSupportedWithSamplingRate:self->_samplingRate];
      if (v45)
      {
        localePair3 = [contextCopy localePair];
        sourceLocale3 = [localePair3 sourceLocale];
        v49 = _LTPreferencesHybridEndpointerThresholdForLocale(sourceLocale3);
        sourceEndpointerThreshold = self->_sourceEndpointerThreshold;
        self->_sourceEndpointerThreshold = v49;

        localePair4 = [contextCopy localePair];
        sourceLocale4 = [localePair4 sourceLocale];
        v53 = _LTPreferencesDisconnectedHybridEndpointerThresholdForLocale(sourceLocale4);
        sourceDisconnectedEndpointerThreshold = self->_sourceDisconnectedEndpointerThreshold;
        self->_sourceDisconnectedEndpointerThreshold = v53;

        if (self->_sourceDisconnectedEndpointerThreshold)
        {
          v57 = _LTOSLogSpeech(v55, v56);
          caesuraModelURL = v107;
          if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
          {
            v58 = self->_sourceDisconnectedEndpointerThreshold;
            v59 = v57;
            [(NSNumber *)v58 floatValue];
            *buf = 134217984;
            *v111 = v60;
            _os_log_impl(&dword_232E53000, v59, OS_LOG_TYPE_INFO, "Updating disconnected source endpointer threshold to %f", buf, 0xCu);
          }

          v61 = self->_sourceEndpointer;
          v62 = self->_sourceDisconnectedEndpointerThreshold;
LABEL_26:
          [(NSNumber *)v62 floatValue];
          [(_EAREndpointer *)v61 updateEndpointerThresholdWithValue:?];
          goto LABEL_27;
        }

        caesuraModelURL = v107;
        if (self->_sourceEndpointerThreshold)
        {
          v66 = _LTOSLogSpeech(v55, v56);
          if (os_log_type_enabled(v66, OS_LOG_TYPE_INFO))
          {
            v67 = self->_sourceEndpointerThreshold;
            v68 = v66;
            [(NSNumber *)v67 floatValue];
            *buf = 134217984;
            *v111 = v69;
            _os_log_impl(&dword_232E53000, v68, OS_LOG_TYPE_INFO, "Updating source endpointer threshold to %f", buf, 0xCu);
          }

          v61 = self->_sourceEndpointer;
          v62 = self->_sourceEndpointerThreshold;
          goto LABEL_26;
        }
      }

      else
      {
        v64 = _LTOSLogSpeech(v45, v46);
        if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_232E53000, v64, OS_LOG_TYPE_INFO, "Request for sampling rate failed for source locale", buf, 2u);
        }

        v65 = self->_sourceEndpointer;
        self->_sourceEndpointer = 0;

        caesuraModelURL = v107;
      }
    }

LABEL_27:
    v70 = self->_asset;
    localePair5 = [contextCopy localePair];
    targetLocale = [localePair5 targetLocale];
    v73 = [(_LTHybridEndpointerAssetInfo *)v70 endpointerModelURL:targetLocale];

    if (!v73)
    {
      goto LABEL_42;
    }

    autodetectLanguage = [contextCopy autodetectLanguage];
    if (!autodetectLanguage)
    {
      goto LABEL_42;
    }

    v76 = objc_alloc(MEMORY[0x277D07230]);
    path3 = [v73 path];
    v78 = [v76 initWithConfiguration:path3];
    v79 = self->_targetEndpointer;
    self->_targetEndpointer = v78;

    v80 = [MEMORY[0x277CE1B70] featuresForEndpointer:self->_targetEndpointer];
    v81 = self->_targetEndpointerFeatures;
    self->_targetEndpointerFeatures = v80;

    v82 = [(_EAREndpointer *)self->_targetEndpointer requestSupportedWithSamplingRate:self->_samplingRate];
    if ((v82 & 1) == 0)
    {
      v98 = _LTOSLogSpeech(v82, v83);
      if (os_log_type_enabled(v98, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_232E53000, v98, OS_LOG_TYPE_INFO, "Request for sampling rate failed for source locale", buf, 2u);
      }

      v99 = self->_targetEndpointer;
      self->_targetEndpointer = 0;

      goto LABEL_42;
    }

    localePair6 = [contextCopy localePair];
    targetLocale2 = [localePair6 targetLocale];
    v86 = _LTPreferencesHybridEndpointerThresholdForLocale(targetLocale2);
    targetEndpointerThreshold = self->_targetEndpointerThreshold;
    self->_targetEndpointerThreshold = v86;

    localePair7 = [contextCopy localePair];
    targetLocale3 = [localePair7 targetLocale];
    v90 = _LTPreferencesDisconnectedHybridEndpointerThresholdForLocale(targetLocale3);
    targetDisconnectedEndpointerThreshold = self->_targetDisconnectedEndpointerThreshold;
    self->_targetDisconnectedEndpointerThreshold = v90;

    if (self->_targetDisconnectedEndpointerThreshold)
    {
      v92 = _LTOSLogSpeech(autodetectLanguage, v75);
      if (os_log_type_enabled(v92, OS_LOG_TYPE_INFO))
      {
        v93 = self->_targetDisconnectedEndpointerThreshold;
        v94 = v92;
        [(NSNumber *)v93 floatValue];
        *buf = 134217984;
        *v111 = v95;
        _os_log_impl(&dword_232E53000, v94, OS_LOG_TYPE_INFO, "Updating disconnected target endpointer threshold to %f", buf, 0xCu);
      }

      v96 = self->_targetEndpointer;
      v97 = self->_targetDisconnectedEndpointerThreshold;
    }

    else
    {
      if (!self->_targetEndpointerThreshold)
      {
LABEL_42:
        v104 = _LTOSLogSpeech(autodetectLanguage, v75);
        if (os_log_type_enabled(v104, OS_LOG_TYPE_INFO))
        {
          v105 = self->_sourceEndpointer != 0;
          v106 = self->_targetEndpointer != 0;
          *buf = 67109376;
          v111[0] = v105;
          LOWORD(v111[1]) = 1024;
          *(&v111[1] + 2) = v106;
          _os_log_impl(&dword_232E53000, v104, OS_LOG_TYPE_INFO, "Have hybrid endpointer for source %{BOOL}i, for target %{BOOL}i", buf, 0xEu);
        }

LABEL_45:
LABEL_46:

        goto LABEL_47;
      }

      v100 = _LTOSLogSpeech(autodetectLanguage, v75);
      if (os_log_type_enabled(v100, OS_LOG_TYPE_INFO))
      {
        v101 = self->_targetEndpointerThreshold;
        v102 = v100;
        [(NSNumber *)v101 floatValue];
        *buf = 134217984;
        *v111 = v103;
        _os_log_impl(&dword_232E53000, v102, OS_LOG_TYPE_INFO, "Updating target endpointer threshold to %f", buf, 0xCu);
      }

      v96 = self->_targetEndpointer;
      v97 = self->_targetEndpointerThreshold;
    }

    [(NSNumber *)v97 floatValue];
    autodetectLanguage = [(_EAREndpointer *)v96 updateEndpointerThresholdWithValue:?];
    goto LABEL_42;
  }

  if (v13)
  {
    *buf = 0;
    _os_log_impl(&dword_232E53000, v12, OS_LOG_TYPE_INFO, "Auto endpointing is turned off", buf, 2u);
  }

LABEL_47:
}

- (void)setServerEndpointerFeatures:(id)features withLocale:(id)locale
{
  featuresCopy = features;
  localeCopy = locale;
  objc_initWeak(&location, self);
  featureQueue = self->_featureQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __62___LTHybridEndpointer_setServerEndpointerFeatures_withLocale___block_invoke;
  v11[3] = &unk_2789B6C78;
  objc_copyWeak(&v14, &location);
  v12 = localeCopy;
  v13 = featuresCopy;
  v9 = featuresCopy;
  v10 = localeCopy;
  dispatch_async(featureQueue, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)addSpeechAudioData:(id)data
{
  dataCopy = data;
  if (!self->_didEndpoint && (self->_sourceEndpointer || self->_targetEndpointer))
  {
    objc_initWeak(&location, self);
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __42___LTHybridEndpointer_addSpeechAudioData___block_invoke;
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
  v4[2] = __31___LTHybridEndpointer_endAudio__block_invoke;
  v4[3] = &unk_2789B53F0;
  objc_copyWeak(&v5, &location);
  dispatch_async(queue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (BOOL)didEndpointWithFeatures:(id)features silenceFeatures:(id)silenceFeatures endpointer:(id)endpointer
{
  v139 = *MEMORY[0x277D85DE8];
  featuresCopy = features;
  silenceFeaturesCopy = silenceFeatures;
  endpointerCopy = endpointer;
  [silenceFeaturesCopy processedAudioMs];
  v12 = v11;
  processedAudioDurationInMilliseconds = [featuresCopy processedAudioDurationInMilliseconds];
  if (v12 >= processedAudioDurationInMilliseconds)
  {
    [silenceFeaturesCopy processedAudioMs];
    v51 = v50 - [featuresCopy processedAudioDurationInMilliseconds];
    v52 = objc_alloc(MEMORY[0x277D07220]);
    wordCount = [featuresCopy wordCount];
    trailingSilenceDuration = [featuresCopy trailingSilenceDuration];
    [featuresCopy eosLikelihood];
    v56 = v55;
    pauseCounts = [featuresCopy pauseCounts];
    [featuresCopy silencePosterior];
    v59 = v58;
    [silenceFeaturesCopy silenceFramesCountMs];
    v61 = v60;
    [silenceFeaturesCopy silenceProbability];
    v63 = v62;
    [silenceFeaturesCopy silenceDurationMs];
    *&v65 = v64;
    *&v66 = v51;
    v47 = [v52 initWithWordCount:wordCount trailingSilenceDuration:trailingSilenceDuration endOfSentenceLikelihood:pauseCounts pauseCounts:v56 silencePosterior:v59 clientSilenceFramesCountMs:v61 clientSilenceProbability:v63 silencePosteriorNF:v65 serverFeaturesLatency:v66];

    if (!v47)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v15 = _LTOSLogSpeech(processedAudioDurationInMilliseconds, v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = v15;
      *&v17 = COERCE_DOUBLE([featuresCopy processedAudioDurationInMilliseconds]);
      [silenceFeaturesCopy processedAudioMs];
      *buf = 134349312;
      v116 = *&v17;
      v117 = 2050;
      v118 = v18;
      _os_log_impl(&dword_232E53000, v16, OS_LOG_TYPE_INFO, "ClientLag: serverProcessedAudioMs(%{public}ld) > effectiveClientProcessedAudioMs(%{public}f)", buf, 0x16u);
    }

    [silenceFeaturesCopy processedAudioMs];
    v20 = v19;
    processedAudioDurationInMilliseconds2 = [featuresCopy processedAudioDurationInMilliseconds];
    v23 = v20 - processedAudioDurationInMilliseconds2;
    if (v23 > self->_clientLagThresholdMs)
    {
      v89 = _LTOSLogSpeech(processedAudioDurationInMilliseconds2, v22);
      if (os_log_type_enabled(v89, OS_LOG_TYPE_INFO))
      {
        clientLagThresholdMs = self->_clientLagThresholdMs;
        *buf = 134349312;
        v116 = v23;
        v117 = 2050;
        v118 = clientLagThresholdMs;
        v91 = "ClientLag: Not invoking HybridClassifier: sfLatency > clientLagThreshold: %{public}f > %{public}f";
        v92 = v89;
        v93 = 22;
LABEL_21:
        _os_log_impl(&dword_232E53000, v92, OS_LOG_TYPE_INFO, v91, buf, v93);
      }

LABEL_22:
      LOBYTE(v67) = 0;
      goto LABEL_23;
    }

    useDefaultServerFeaturesOnClientLag = self->_useDefaultServerFeaturesOnClientLag;
    v25 = _LTOSLogSpeech(processedAudioDurationInMilliseconds2, v22);
    v26 = os_log_type_enabled(v25, OS_LOG_TYPE_INFO);
    if (useDefaultServerFeaturesOnClientLag)
    {
      if (v26)
      {
        v27 = v25;
        [silenceFeaturesCopy processedAudioMs];
        *buf = 134349056;
        v116 = v28;
        _os_log_impl(&dword_232E53000, v27, OS_LOG_TYPE_INFO, "ClientLag: Using DefaultServerFeatures with disconnected-state sfLatency: %{public}f", buf, 0xCu);
      }

      v29 = [MEMORY[0x277CE1B70] featuresForEndpointer:endpointerCopy];
      v30 = objc_alloc(MEMORY[0x277D07220]);
      wordCount2 = [v29 wordCount];
      trailingSilenceDuration2 = [v29 trailingSilenceDuration];
      [v29 eosLikelihood];
      v34 = v33;
      pauseCounts2 = [v29 pauseCounts];
      [v29 silencePosterior];
      v37 = v36;
      [silenceFeaturesCopy silenceFramesCountMs];
      v39 = v38;
      [silenceFeaturesCopy silenceProbability];
      v41 = v40;
      [silenceFeaturesCopy silenceDurationMs];
      v43 = v42;
      [silenceFeaturesCopy processedAudioMs];
      *&v45 = v44;
      *&v46 = v43;
      v47 = [v30 initWithWordCount:wordCount2 trailingSilenceDuration:trailingSilenceDuration2 endOfSentenceLikelihood:pauseCounts2 pauseCounts:v34 silencePosterior:v37 clientSilenceFramesCountMs:v39 clientSilenceProbability:v41 silencePosteriorNF:v46 serverFeaturesLatency:v45];

      if (!v47)
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (v26)
      {
        clampedSFLatencyMsForClientLag = self->_clampedSFLatencyMsForClientLag;
        *buf = 134349056;
        v116 = clampedSFLatencyMsForClientLag;
        _os_log_impl(&dword_232E53000, v25, OS_LOG_TYPE_INFO, "ClientLag: Using ServerFeatures with ClampedSFLatency: %{public}f", buf, 0xCu);
      }

      v95 = objc_alloc(MEMORY[0x277D07220]);
      wordCount3 = [featuresCopy wordCount];
      trailingSilenceDuration3 = [featuresCopy trailingSilenceDuration];
      [featuresCopy eosLikelihood];
      v99 = v98;
      pauseCounts3 = [featuresCopy pauseCounts];
      [featuresCopy silencePosterior];
      v102 = v101;
      [silenceFeaturesCopy silenceFramesCountMs];
      v104 = v103;
      [silenceFeaturesCopy silenceProbability];
      v106 = v105;
      [silenceFeaturesCopy silenceDurationMs];
      *&v108 = v107;
      *&v109 = self->_clampedSFLatencyMsForClientLag;
      v47 = [v95 initWithWordCount:wordCount3 trailingSilenceDuration:trailingSilenceDuration3 endOfSentenceLikelihood:pauseCounts3 pauseCounts:v99 silencePosterior:v102 clientSilenceFramesCountMs:v104 clientSilenceProbability:v106 silencePosteriorNF:v108 serverFeaturesLatency:v109];

      if (!v47)
      {
LABEL_19:
        v110 = _LTOSLogSpeech(v48, v49);
        if (os_log_type_enabled(v110, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          v91 = "ClientLag: Not Invoking HybridClassifier as serverProcessedAudioMs > effectiveClientProcessedAudioMs";
          v92 = v110;
          v93 = 2;
          goto LABEL_21;
        }

        goto LABEL_22;
      }
    }
  }

  v114 = 0;
  [silenceFeaturesCopy processedAudioMs];
  v113 = 0;
  v67 = [endpointerCopy didEndpointWithFeatures:v47 audioTimestamp:&v113 featuresToLog:&v114 + 4 endpointPosterior:&v114 extraDelayMs:?];
  v68 = v113;
  v70 = _LTOSLogSpeech(v68, v69);
  if (os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
  {
    v71 = v70;
    *&v72 = COERCE_DOUBLE([v47 trailingSilenceDuration]);
    [v47 clientSilenceFramesCountMs];
    v74 = v73;
    [v47 endOfSentenceLikelihood];
    v76 = v75;
    wordCount4 = [v47 wordCount];
    [v47 serverFeaturesLatency];
    v79 = v78;
    [v47 clientSilenceProbability];
    v81 = v80;
    pauseCounts4 = [v47 pauseCounts];
    [pauseCounts4 componentsJoinedByString:{@", "}];
    v83 = v112 = endpointerCopy;
    [v47 silencePosterior];
    v85 = v84;
    [silenceFeaturesCopy silencePosterior];
    v87 = v86;
    [silenceFeaturesCopy processedAudioMs];
    *buf = 134351874;
    v116 = *&v72;
    v117 = 2050;
    v118 = v74;
    v119 = 2050;
    v120 = v76;
    v121 = 2050;
    v122 = wordCount4;
    v123 = 2050;
    v124 = v79;
    v125 = 2050;
    v126 = v81;
    v127 = 2114;
    v128 = v83;
    v129 = 2050;
    v130 = v85;
    v131 = 2050;
    v132 = v87;
    v133 = 2050;
    v134 = v88;
    v135 = 2050;
    v136 = *(&v114 + 1);
    v137 = 1026;
    v138 = v67;
    _os_log_impl(&dword_232E53000, v71, OS_LOG_TYPE_INFO, "HEP.feats: [%{public}ld,%{public}f,%{public}f,%{public}ld,%{public}f,%{public}f] & [(%{public}@),%{public}f,%{public}f] @ %{public}lu [%{public}f, %{public}d]", buf, 0x76u);

    endpointerCopy = v112;
  }

LABEL_23:
  return v67;
}

- (void)clientSilenceFeaturesAvailable:(id)available
{
  availableCopy = available;
  v6 = _LTOSLogSpeech(availableCopy, v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [_LTHybridEndpointer clientSilenceFeaturesAvailable:v6];
  }

  if (!self->_didEndpoint)
  {
    objc_initWeak(&location, self);
    featureQueue = self->_featureQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54___LTHybridEndpointer_clientSilenceFeaturesAvailable___block_invoke;
    block[3] = &unk_2789B5288;
    objc_copyWeak(&v10, &location);
    v9 = availableCopy;
    dispatch_async(featureQueue, block);

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

- (void)startEndpointingWithContext:(uint64_t)a1 delegate:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_232E53000, a2, OS_LOG_TYPE_ERROR, "Could not get appropriate endpointer assets: %@", &v2, 0xCu);
}

@end