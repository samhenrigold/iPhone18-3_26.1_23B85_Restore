@interface VSDeviceTTSCore
- (VSDeviceTTSCore)initWithRequest:(id)request;
- (VSDeviceTTSCoreDelegate)delegate;
- (VSInstrumentMetrics)instrumentMetrics;
- (VSVoiceAssetSelection)selectedVoice;
- (VSVoiceResourceAsset)selectedVoiceResource;
- (id)getCacheForHash:(id)hash;
- (id)prepareForSynthesis;
- (id)taskHash;
- (id)voiceSelectionWithRequest:(id)request error:(id *)error;
- (id)voiceSelection_noRetry_WithRequest:(id)request error:(id *)error;
- (void)cancel;
- (void)main;
- (void)reportAudio:(id)audio;
- (void)reportProcessingWordTimingInfo:(id)info;
- (void)reportWordTimingInfo:(id)info;
- (void)setEngine:(id)engine;
@end

@implementation VSDeviceTTSCore

- (VSInstrumentMetrics)instrumentMetrics
{
  WeakRetained = objc_loadWeakRetained(&self->_instrumentMetrics);

  return WeakRetained;
}

- (VSDeviceTTSCoreDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)reportAudio:(id)audio
{
  audioCopy = audio;
  delegate = [(VSDeviceTTSCore *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(VSDeviceTTSCore *)self delegate];
    [delegate2 synthesisCore:? didReceiveAudio:?];
  }
}

- (void)reportWordTimingInfo:(id)info
{
  infoCopy = info;
  delegate = [(VSDeviceTTSCore *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(VSDeviceTTSCore *)self delegate];
    [delegate2 synthesisCore:? didReceiveWordTimingInfo:?];
  }
}

- (void)reportProcessingWordTimingInfo:(id)info
{
  infoCopy = info;
  delegate = [(VSDeviceTTSCore *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(VSDeviceTTSCore *)self delegate];
    [delegate2 synthesisCore:? didReceiveProcessingWordTimingInfo:?];
  }
}

- (id)prepareForSynthesis
{
  v44 = *MEMORY[0x277D85DE8];
  if (!self->_engine)
  {
    prewarmService = self->_prewarmService;
    selectedVoice = [(VSDeviceTTSCore *)self selectedVoice];
    selectedVoiceResource = [(VSDeviceTTSCore *)self selectedVoiceResource];
    v6 = [VSPrewarmService cachedEngineForVoice:"cachedEngineForVoice:resources:" resources:?];
    engine = self->_engine;
    self->_engine = v6;

    if (!self->_engine)
    {
      v34 = self->_prewarmService;
      selectedVoice2 = [(VSDeviceTTSCore *)self selectedVoice];
      selectedVoiceResource2 = [(VSDeviceTTSCore *)self selectedVoiceResource];
      v37 = [VSPrewarmService loadEngineForVoice:v34 resources:"loadEngineForVoice:resources:"];
      v38 = self->_engine;
      self->_engine = v37;
    }
  }

  instrumentMetrics = [(VSDeviceTTSCore *)self instrumentMetrics];
  [instrumentMetrics setIsWarmStart:?];

  if (self->_engine)
  {
    v9 = [VSStreamAudioData alloc];
    if (self->_engine)
    {
      [&v39 asbd];
    }

    else
    {
      v41 = 0;
      v39 = 0u;
      v40 = 0u;
    }

    v13 = [(VSStreamAudioData *)v9 initWithASBD:v39, v40, v41];
    streamAudio = self->_streamAudio;
    self->_streamAudio = v13;

    request = [(VSDeviceTTSCore *)self request];
    [request volume];
    if (v16 == 0.0)
    {
      selectedVoiceResource3 = [(VSDeviceTTSCore *)self selectedVoiceResource];
      [selectedVoiceResource3 volume];
      if (v18 == 0.0)
      {
        [(VSSpeechEngine *)self->_engine volume];
      }

      [(VSSpeechEngine *)self->_engine setVolume:?];
    }

    else
    {
      [(VSSpeechEngine *)self->_engine setVolume:?];
    }

    request2 = [(VSDeviceTTSCore *)self request];
    [request2 pitch];
    if (v20 == 0.0)
    {
      selectedVoiceResource4 = [(VSDeviceTTSCore *)self selectedVoiceResource];
      [selectedVoiceResource4 pitch];
      if (v22 == 0.0)
      {
        [(VSSpeechEngine *)self->_engine pitch];
      }

      [(VSSpeechEngine *)self->_engine setPitch:?];
    }

    else
    {
      [(VSSpeechEngine *)self->_engine setPitch:?];
    }

    request3 = [(VSDeviceTTSCore *)self request];
    [request3 rate];
    if (v24 == 0.0)
    {
      selectedVoiceResource5 = [(VSDeviceTTSCore *)self selectedVoiceResource];
      [selectedVoiceResource5 rate];
      if (v26 == 0.0)
      {
        [(VSSpeechEngine *)self->_engine rate];
      }

      [(VSSpeechEngine *)self->_engine setRate:?];
    }

    else
    {
      [(VSSpeechEngine *)self->_engine setRate:?];
    }

    v27 = [VSVoiceBooster alloc];
    v28 = self->_engine;
    if (v28)
    {
      [&v39 asbd];
      v28 = self->_engine;
    }

    else
    {
      v41 = 0;
      v39 = 0u;
      v40 = 0u;
    }

    [(VSSpeechEngine *)v28 pcmBufferSize:v39];
    v29 = [VSVoiceBooster initWithStreamDescription:v27 pcmBufferSize:"initWithStreamDescription:pcmBufferSize:"];
    [(VSDeviceTTSCore *)self setVoiceBooster:?];

    selectedVoice3 = [(VSDeviceTTSCore *)self selectedVoice];
    voiceData = [selectedVoice3 voiceData];
    request4 = [(VSDeviceTTSCore *)self request];
    [request4 volume];
    [voiceData gainDecibelWithVolume:?];
    voiceBooster = [(VSDeviceTTSCore *)self voiceBooster];
    [voiceBooster setVoiceBoostGainDecibels:?];

    v12 = 0;
  }

  else
  {
    v10 = MEMORY[0x277CCA9B8];
    v42 = *MEMORY[0x277CCA470];
    v43 = @"Can't create VSSpeechEngine";
    selectedVoice3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
    v12 = [v10 errorWithDomain:? code:? userInfo:?];
  }

  return v12;
}

- (id)voiceSelection_noRetry_WithRequest:(id)request error:(id *)error
{
  v31 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  mEMORY[0x277D79950] = [MEMORY[0x277D79950] sharedManager];
  languageCode = [requestCopy languageCode];
  voiceName = [requestCopy voiceName];
  [requestCopy voiceType];
  [requestCopy gender];
  [requestCopy footprint];
  v9 = [mEMORY[0x277D79950] selectVoiceForLang:? name:? type:? gender:? footprint:?];

  if (v9)
  {
    if ([requestCopy disableCompactVoiceFallback] && (objc_msgSend(v9, "voiceData"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "footprint"), v10, v11 == 1))
    {
      v12 = VSGetLogDefault();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2727E4000, v12, OS_LOG_TYPE_ERROR, "Compact voice is explicitly disabled.", buf, 2u);
      }

      if (error)
      {
        v13 = MEMORY[0x277CCA9B8];
        v27 = *MEMORY[0x277CCA450];
        v28 = @"Compact voice is explicitly disabled.";
        v14 = MEMORY[0x277CBEAC0];
LABEL_14:
        v19 = [v14 dictionaryWithObjects:? forKeys:? count:?];
        v20 = v13;
LABEL_19:
        *error = [v20 errorWithDomain:? code:? userInfo:?];

        error = 0;
      }
    }

    else
    {
      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      voicePath = [v9 voicePath];
      v17 = [defaultManager fileExistsAtPath:?];

      if (v17)
      {
        error = v9;
        goto LABEL_20;
      }

      v21 = VSGetLogDefault();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        voicePath2 = [v9 voicePath];
        *buf = 138412290;
        v26 = voicePath2;
        _os_log_error_impl(&dword_2727E4000, v21, OS_LOG_TYPE_ERROR, "Voice is deleted at path '%@'", buf, 0xCu);
      }

      if (error)
      {
        v22 = MEMORY[0x277CCA9B8];
        v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:*MEMORY[0x277CCA450] forKeys:@"Voice is deleted already." count:?];
        v20 = v22;
        goto LABEL_19;
      }
    }
  }

  else
  {
    v18 = VSGetLogDefault();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2727E4000, v18, OS_LOG_TYPE_ERROR, "No voice available", buf, 2u);
    }

    if (error)
    {
      v13 = MEMORY[0x277CCA9B8];
      v29 = *MEMORY[0x277CCA450];
      v30 = @"No voice available";
      v14 = MEMORY[0x277CBEAC0];
      goto LABEL_14;
    }
  }

LABEL_20:

  return error;
}

- (id)voiceSelectionWithRequest:(id)request error:(id *)error
{
  requestCopy = request;
  v17 = 0;
  v7 = [VSDeviceTTSCore voiceSelection_noRetry_WithRequest:"voiceSelection_noRetry_WithRequest:error:" error:?];
  v8 = 0;
  v9 = v8;
  if (v8 && [v8 code] == 402)
  {
    notify_post([@"com.apple.voiceservices.notification.voice-update" UTF8String]);
    v10 = VSGetLogDefault();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2727E4000, v10, OS_LOG_TYPE_INFO, "Reset MobileAsset query cache and retry selecting voice", buf, 2u);
    }

    mEMORY[0x277D79950] = [MEMORY[0x277D79950] sharedManager];
    [mEMORY[0x277D79950] resetCache];

    v12 = [VSDeviceTTSCore voiceSelection_noRetry_WithRequest:"voiceSelection_noRetry_WithRequest:error:" error:?];
    v13 = v9;

    v7 = v12;
    v9 = v13;
  }

  if (error)
  {
    v14 = v9;
    *error = v9;
  }

  return v7;
}

- (id)getCacheForHash:(id)hash
{
  v16 = *MEMORY[0x277D85DE8];
  hashCopy = hash;
  cachingService = [(VSDeviceTTSCore *)self cachingService];
  v6 = [cachingService inMemoryCacheForHash:?];

  if (v6)
  {
    v7 = VSGetLogDefault();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v6 key];
      v14 = 138412290;
      v15 = v8;
      _os_log_impl(&dword_2727E4000, v7, OS_LOG_TYPE_DEFAULT, "In-memory cached synthesis %@ is found.", &v14, 0xCu);
    }

    instrumentMetrics = [(VSDeviceTTSCore *)self instrumentMetrics];
    [instrumentMetrics setIsCacheHitFromMemory:?];
  }

  else
  {
    cachingService2 = [(VSDeviceTTSCore *)self cachingService];
    v6 = [cachingService2 onDiskCacheForHash:?];

    if (!v6)
    {
      goto LABEL_10;
    }

    v11 = VSGetLogDefault();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v6 key];
      v14 = 138412290;
      v15 = v12;
      _os_log_impl(&dword_2727E4000, v11, OS_LOG_TYPE_DEFAULT, "On-disk cached synthesis %@ is found.", &v14, 0xCu);
    }

    instrumentMetrics = [(VSDeviceTTSCore *)self instrumentMetrics];
    [instrumentMetrics setIsCacheHitFromDisk:?];
  }

LABEL_10:

  return v6;
}

- (void)setEngine:(id)engine
{
  engineCopy = engine;
  if (([(VSDeviceTTSCore *)self isExecuting]& 1) == 0)
  {
    objc_storeStrong(&self->_engine, engine);
  }
}

- (VSVoiceResourceAsset)selectedVoiceResource
{
  selectedVoiceResource = self->_selectedVoiceResource;
  if (!selectedVoiceResource)
  {
    mEMORY[0x277D79950] = [MEMORY[0x277D79950] sharedManager];
    request = [(VSDeviceTTSCore *)self request];
    languageCode = [request languageCode];
    v7 = [mEMORY[0x277D79950] selectVoiceResourceAssetForLanguage:?];
    v8 = self->_selectedVoiceResource;
    self->_selectedVoiceResource = v7;

    selectedVoiceResource = self->_selectedVoiceResource;
  }

  return selectedVoiceResource;
}

- (VSVoiceAssetSelection)selectedVoice
{
  selectedVoice = self->_selectedVoice;
  if (!selectedVoice)
  {
    request = [(VSDeviceTTSCore *)self request];
    v5 = [VSDeviceTTSCore voiceSelectionWithRequest:"voiceSelectionWithRequest:error:" error:?];
    v6 = self->_selectedVoice;
    self->_selectedVoice = v5;

    selectedVoice = self->_selectedVoice;
  }

  return selectedVoice;
}

- (void)cancel
{
  v8 = *MEMORY[0x277D85DE8];
  v5.receiver = self;
  v5.super_class = VSDeviceTTSCore;
  [(VSDeviceTTSCore *)&v5 cancel];
  v3 = VSGetLogDefault();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_2727E4000, v3, OS_LOG_TYPE_INFO, "Device core %p is cancelled", buf, 0xCu);
  }

  engine = [(VSDeviceTTSCore *)self engine];
  [engine stopAtMarker:?];
}

- (void)main
{
  v74 = *MEMORY[0x277D85DE8];
  request = [(VSDeviceTTSCore *)self request];
  utterance = [request utterance];
  v5 = [utterance length];

  if (!v5)
  {
    v15 = MEMORY[0x277CCA9B8];
    v72 = *MEMORY[0x277CCA450];
    v73 = @"Missing utterance in the request (preprocessing missing?).";
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
    v16 = [v15 errorWithDomain:? code:? userInfo:?];
    [(VSDeviceTTSCore *)self setError:?];

    goto LABEL_35;
  }

  selectedVoiceResource = [(VSDeviceTTSCore *)self selectedVoiceResource];
  selectedVoice = [(VSDeviceTTSCore *)self selectedVoice];
  selectedVoice2 = [(VSDeviceTTSCore *)self selectedVoice];

  if (!selectedVoice2)
  {
    request2 = [(VSDeviceTTSCore *)self request];
    v71 = 0;
    v18 = [VSDeviceTTSCore voiceSelectionWithRequest:"voiceSelectionWithRequest:error:" error:?];
    v10 = 0;

    [(VSDeviceTTSCore *)self setError:?];
    goto LABEL_35;
  }

  if (([(VSDeviceTTSCore *)self isCancelled]& 1) != 0)
  {
    return;
  }

  taskHash = [(VSDeviceTTSCore *)self taskHash];
  v10 = [(VSDeviceTTSCore *)self getCacheForHash:?];

  if (!v10)
  {
    if (([(VSDeviceTTSCore *)self isCancelled]& 1) != 0)
    {
LABEL_34:
      v10 = 0;
      goto LABEL_35;
    }

    prepareForSynthesis = [(VSDeviceTTSCore *)self prepareForSynthesis];
    if (prepareForSynthesis)
    {
      [(VSDeviceTTSCore *)self setError:?];

      goto LABEL_34;
    }

    v65 = 0;
    v66 = &v65;
    v67 = 0x3032000000;
    v68 = __Block_byref_object_copy__1808;
    v69 = __Block_byref_object_dispose__1809;
    v70 = 0;
    v20 = objc_opt_new();
    request3 = [(VSDeviceTTSCore *)self request];
    text = [request3 text];
    request4 = [(VSDeviceTTSCore *)self request];
    languageCode = [request4 languageCode];
    request5 = [(VSDeviceTTSCore *)self request];
    voiceName = [request5 voiceName];
    v27 = [v20 estimatedTTSWordTimingForText:? withLanguage:? voiceName:?];
    v28 = v66[5];
    v66[5] = v27;

    v29 = MEMORY[0x277D799B8];
    request6 = [(VSDeviceTTSCore *)self request];
    contextInfo = [request6 contextInfo];
    [v29 adjustWordTimingInfo:? forContext:?];

    array = [MEMORY[0x277CBEB18] array];
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    request7 = [(VSDeviceTTSCore *)self request];
    customResourceURLs = [request7 customResourceURLs];

    v35 = [customResourceURLs countByEnumeratingWithState:? objects:? count:?];
    if (v35)
    {
      v36 = *v62;
      do
      {
        for (i = 0; i != v35; i = (i + 1))
        {
          if (*v62 != v36)
          {
            objc_enumerationMutation(customResourceURLs);
          }

          engine = [(VSDeviceTTSCore *)self engine];
          v39 = [engine loadResource:? error:?];

          if (v39)
          {
            [array addObject:?];
          }
        }

        v35 = [customResourceURLs countByEnumeratingWithState:? objects:? count:?];
      }

      while (v35);
    }

    v57 = 0;
    v58 = &v57;
    v59 = 0x2020000000;
    v60 = 0;
    engine2 = [(VSDeviceTTSCore *)self engine];
    request8 = [(VSDeviceTTSCore *)self request];
    utterance2 = [request8 utterance];
    request9 = [(VSDeviceTTSCore *)self request];
    [request9 canLogRequestText];
    v44 = [engine2 synthesizeText:? loggable:? callback:?];

    v45 = array;
    v46 = [v45 countByEnumeratingWithState:? objects:? count:?];
    if (v46)
    {
      v47 = MEMORY[0];
      do
      {
        for (j = 0; j != v46; j = (j + 1))
        {
          if (MEMORY[0] != v47)
          {
            objc_enumerationMutation(v45);
          }

          engine3 = [(VSDeviceTTSCore *)self engine];
          [engine3 unloadResource:?];
        }

        v46 = [v45 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v46);
    }

    if (!v44 && ([(VSDeviceTTSCore *)self isCancelled]& 1) == 0)
    {
      request10 = [(VSDeviceTTSCore *)self request];
      if (![request10 shouldCache])
      {
LABEL_32:

        goto LABEL_33;
      }

      v51 = *(v58 + 24);

      if ((v51 & 1) == 0)
      {
        request10 = [(VSDeviceTTSCore *)self taskHash];
        cachingService = [(VSDeviceTTSCore *)self cachingService];
        selectedVoice3 = [(VSDeviceTTSCore *)self selectedVoice];
        v53 = [selectedVoice3 key];
        selectedVoiceResource2 = [(VSDeviceTTSCore *)self selectedVoiceResource];
        v55 = [selectedVoiceResource2 key];
        [cachingService enqueueCacheWithHash:? streamAudio:? timingInfo:? voiceKey:? voiceResourceKey:? completion:?];

        goto LABEL_32;
      }
    }

LABEL_33:
    [(VSDeviceTTSCore *)self setError:?];
    _Block_object_dispose(&v57, 8);

    _Block_object_dispose(&v65, 8);
    goto LABEL_34;
  }

  audio = [v10 audio];
  compressedAudio = self->_compressedAudio;
  self->_compressedAudio = audio;

  timingInfos = [v10 timingInfos];
  [(VSDeviceTTSCore *)self reportWordTimingInfo:?];

  audio2 = [v10 audio];
  [(VSDeviceTTSCore *)self reportAudio:?];

LABEL_35:
}

id __23__VSDeviceTTSCore_main__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 state];
  if (v4 == 3)
  {
    if ([v3 neuralDidFallback])
    {
      v9 = 1;
    }

    else
    {
      v9 = [v3 hasAudioClick];
    }

    *(*(*(a1 + 48) + 8) + 24) = v9;
    [v3 numOfPromptsTriggered];
    v10 = [*(a1 + 32) instrumentMetrics];
    [v10 setPromptCount:?];

    if (!*(*(*(a1 + 40) + 8) + 40))
    {
      v11 = [v3 wordTimingInfos];
      v12 = *(*(a1 + 40) + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = v11;

      v14 = MEMORY[0x277D799B8];
      v15 = [*(a1 + 32) request];
      v16 = [v15 contextInfo];
      [v14 adjustWordTimingInfo:? forContext:?];
    }

    [*(a1 + 32) reportWordTimingInfo:?];
    [v3 hasAlignmentStall];
    v17 = [*(a1 + 32) instrumentMetrics];
    [v17 setNeuralAlignmentStall:?];

    [v3 hasAudioClick];
    v18 = [*(a1 + 32) instrumentMetrics];
    [v18 setNeuralAudioClick:?];

    [v3 neuralDidFallback];
    v19 = [*(a1 + 32) instrumentMetrics];
    [v19 setNeuralFallback:?];
  }

  else if (v4 == 2)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = [v3 mutablePCMData];
    v7 = [*(a1 + 32) voiceBooster];
    v8 = [v7 processData:?];

    if (v8)
    {

      objc_autoreleasePoolPop(v5);
      goto LABEL_18;
    }

    v20 = [*(a1 + 32) streamAudio];
    [v20 appendAudioData:? packetCount:? packetDescriptions:?];

    v21 = objc_alloc_init(MEMORY[0x277D79920]);
    v22 = [*(a1 + 32) engine];
    if (v22)
    {
      [&v30 asbd];
    }

    else
    {
      v32 = 0;
      v30 = 0u;
      v31 = 0u;
    }

    [v21 setAsbd:{v30, v31, v32}];

    [v21 setAudioData:?];
    [v21 setPacketCount:?];
    [v21 setPacketDescriptions:?];
    [*(a1 + 32) reportAudio:?];
    v23 = *(*(*(a1 + 40) + 8) + 40);
    if (!v23)
    {
      v24 = objc_alloc(MEMORY[0x277CBEA60]);
      v25 = [v3 wordTimingInfos];
      v23 = [v24 initWithArray:? copyItems:?];

      v26 = MEMORY[0x277D799B8];
      v27 = [*(a1 + 32) request];
      v28 = [v27 contextInfo];
      [v26 adjustWordTimingInfo:? forContext:?];
    }

    [*(a1 + 32) reportProcessingWordTimingInfo:?];

    objc_autoreleasePoolPop(v5);
  }

  v8 = 0;
LABEL_18:

  return v8;
}

- (id)taskHash
{
  v22 = MEMORY[0x277CCACA8];
  request = [(VSDeviceTTSCore *)self request];
  utterance = [request utterance];
  selectedVoice = [(VSDeviceTTSCore *)self selectedVoice];
  v3 = [selectedVoice key];
  selectedVoiceResource = [(VSDeviceTTSCore *)self selectedVoiceResource];
  v4 = [selectedVoiceResource key];
  request2 = [(VSDeviceTTSCore *)self request];
  [request2 rate];
  v6 = v5;
  request3 = [(VSDeviceTTSCore *)self request];
  [request3 pitch];
  v9 = v8;
  request4 = [(VSDeviceTTSCore *)self request];
  [request4 volume];
  v12 = v11;
  request5 = [(VSDeviceTTSCore *)self request];
  contextInfo = [request5 contextInfo];
  request6 = [(VSDeviceTTSCore *)self request];
  customResourceURLs = [request6 customResourceURLs];
  v17 = [v22 stringWithFormat:@"2", utterance, v3, v4, v6, v9, v12, contextInfo, customResourceURLs];

  sha256hex = [v17 sha256hex];

  return sha256hex;
}

- (VSDeviceTTSCore)initWithRequest:(id)request
{
  requestCopy = request;
  v13.receiver = self;
  v13.super_class = VSDeviceTTSCore;
  v6 = [(VSDeviceTTSCore *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_request, request);
    v8 = +[VSCachingService standardService];
    cachingService = v7->_cachingService;
    v7->_cachingService = v8;

    v10 = +[VSPrewarmService sharedService];
    prewarmService = v7->_prewarmService;
    v7->_prewarmService = v10;
  }

  return v7;
}

@end