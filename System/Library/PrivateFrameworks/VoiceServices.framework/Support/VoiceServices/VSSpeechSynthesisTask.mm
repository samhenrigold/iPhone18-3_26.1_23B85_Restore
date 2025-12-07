@interface VSSpeechSynthesisTask
- (BOOL)isSpeaking;
- (VSSpeechSynthesisTask)initWithRequest:(id)request;
- (void)main;
- (void)reportFinish;
- (void)reportInstrumentMetrics;
- (void)reportSpeechStart;
- (void)reportTimingInfo;
- (void)setObserverForWordTimings:(id)timings;
- (void)setSpeakTask:(id)task;
- (void)synthesize;
@end

@implementation VSSpeechSynthesisTask

- (void)reportFinish
{
  v35 = *MEMORY[0x277D85DE8];
  speakTask = [(VSSpeechSynthesisTask *)self speakTask];
  delegate = [speakTask delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    speakTask2 = [(VSSpeechSynthesisTask *)self speakTask];
    delegate2 = [speakTask2 delegate];
    request = [(VSSpeechSpeakTask *)self request];
    [(VSSpeechSynthesisTask *)self isCancelled];
    phonemes = [(VSSpeechSpeakTask *)self phonemes];
    v10 = [phonemes componentsJoinedByString:?];
    error = [(VSSpeechSpeakTask *)self error];
    [delegate2 speechRequest:? didStopWithSuccess:? phonemesSpoken:? error:?];

    v12 = VSGetLogDefault();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      speakTask3 = [(VSSpeechSynthesisTask *)self speakTask];
      instrumentMetrics = [speakTask3 instrumentMetrics];
      requestCreatedTimestamp = [instrumentMetrics requestCreatedTimestamp];
      error2 = [(VSSpeechSpeakTask *)self error];
      v31 = 134218242;
      v32 = requestCreatedTimestamp;
      v33 = 2112;
      v34 = error2;
      _os_log_debug_impl(&dword_2727E4000, v12, OS_LOG_TYPE_DEBUG, "Task %llu reported finish, error: %@", &v31, 0x16u);
    }
  }

  delegate3 = [(VSSpeechSpeakTask *)self delegate];
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    v15 = VSGetLogDefault();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      instrumentMetrics2 = [(VSSpeechSpeakTask *)self instrumentMetrics];
      requestCreatedTimestamp2 = [instrumentMetrics2 requestCreatedTimestamp];
      instrumentMetrics3 = [(VSSpeechSpeakTask *)self instrumentMetrics];
      v31 = 134218242;
      v32 = requestCreatedTimestamp2;
      v33 = 2112;
      v34 = instrumentMetrics3;
      _os_log_impl(&dword_2727E4000, v15, OS_LOG_TYPE_DEFAULT, "Device EagerTask %llu: Instrument metric: %@", &v31, 0x16u);
    }

    delegate4 = [(VSSpeechSpeakTask *)self delegate];
    request2 = [(VSSpeechSpeakTask *)self request];
    instrumentMetrics4 = [(VSSpeechSpeakTask *)self instrumentMetrics];
    error3 = [(VSSpeechSpeakTask *)self error];
    [delegate4 synthesisRequest:? didFinishWithInstrumentMetrics:? error:?];

    v23 = VSGetLogDefault();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      instrumentMetrics5 = [(VSSpeechSpeakTask *)self instrumentMetrics];
      requestCreatedTimestamp3 = [instrumentMetrics5 requestCreatedTimestamp];
      error4 = [(VSSpeechSpeakTask *)self error];
      v31 = 134218242;
      v32 = requestCreatedTimestamp3;
      v33 = 2112;
      v34 = error4;
      _os_log_debug_impl(&dword_2727E4000, v23, OS_LOG_TYPE_DEBUG, "Task %llu reported finish, error: %@", &v31, 0x16u);
    }
  }
}

- (void)reportSpeechStart
{
  v16 = *MEMORY[0x277D85DE8];
  instrumentMetrics = [(VSSpeechSpeakTask *)self instrumentMetrics];
  speechBeginTimestamp = [instrumentMetrics speechBeginTimestamp];

  if (!speechBeginTimestamp)
  {
    kdebug_trace();
    mach_absolute_time();
    instrumentMetrics2 = [(VSSpeechSpeakTask *)self instrumentMetrics];
    [instrumentMetrics2 setSpeechBeginTimestamp:?];

    speakTask = [(VSSpeechSynthesisTask *)self speakTask];
    delegate = [speakTask delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      speakTask2 = [(VSSpeechSynthesisTask *)self speakTask];
      delegate2 = [speakTask2 delegate];
      request = [(VSSpeechSpeakTask *)self request];
      [delegate2 speechRequestDidStart:?];

      v12 = VSGetLogDefault();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        instrumentMetrics3 = [(VSSpeechSpeakTask *)self instrumentMetrics];
        v14 = 134217984;
        requestCreatedTimestamp = [instrumentMetrics3 requestCreatedTimestamp];
        _os_log_debug_impl(&dword_2727E4000, v12, OS_LOG_TYPE_DEBUG, "Task %llu started speaking", &v14, 0xCu);
      }
    }
  }
}

- (void)reportInstrumentMetrics
{
  v72 = *MEMORY[0x277D85DE8];
  speakTask = [(VSSpeechSynthesisTask *)self speakTask];
  delegate = [speakTask delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    instrumentMetrics = [(VSSpeechSpeakTask *)self instrumentMetrics];
    utterance = [instrumentMetrics utterance];
    speakTask2 = [(VSSpeechSynthesisTask *)self speakTask];
    instrumentMetrics2 = [speakTask2 instrumentMetrics];
    [instrumentMetrics2 setUtterance:?];

    instrumentMetrics3 = [(VSSpeechSpeakTask *)self instrumentMetrics];
    voiceAssetKey = [instrumentMetrics3 voiceAssetKey];
    speakTask3 = [(VSSpeechSynthesisTask *)self speakTask];
    instrumentMetrics4 = [speakTask3 instrumentMetrics];
    [instrumentMetrics4 setVoiceAssetKey:?];

    instrumentMetrics5 = [(VSSpeechSpeakTask *)self instrumentMetrics];
    voiceResourceAssetKey = [instrumentMetrics5 voiceResourceAssetKey];
    speakTask4 = [(VSSpeechSynthesisTask *)self speakTask];
    instrumentMetrics6 = [speakTask4 instrumentMetrics];
    [instrumentMetrics6 setVoiceResourceAssetKey:?];

    instrumentMetrics7 = [(VSSpeechSpeakTask *)self instrumentMetrics];
    [instrumentMetrics7 synthesisBeginTimestamp];
    speakTask5 = [(VSSpeechSynthesisTask *)self speakTask];
    instrumentMetrics8 = [speakTask5 instrumentMetrics];
    [instrumentMetrics8 setSynthesisBeginTimestamp:?];

    instrumentMetrics9 = [(VSSpeechSpeakTask *)self instrumentMetrics];
    [instrumentMetrics9 synthesisEndTimestamp];
    speakTask6 = [(VSSpeechSynthesisTask *)self speakTask];
    instrumentMetrics10 = [speakTask6 instrumentMetrics];
    [instrumentMetrics10 setSynthesisEndTimestamp:?];

    instrumentMetrics11 = [(VSSpeechSpeakTask *)self instrumentMetrics];
    [instrumentMetrics11 speechBeginTimestamp];
    speakTask7 = [(VSSpeechSynthesisTask *)self speakTask];
    instrumentMetrics12 = [speakTask7 instrumentMetrics];
    [instrumentMetrics12 setSpeechBeginTimestamp:?];

    instrumentMetrics13 = [(VSSpeechSpeakTask *)self instrumentMetrics];
    [instrumentMetrics13 speechEndTimestamp];
    speakTask8 = [(VSSpeechSynthesisTask *)self speakTask];
    instrumentMetrics14 = [speakTask8 instrumentMetrics];
    [instrumentMetrics14 setSpeechEndTimestamp:?];

    instrumentMetrics15 = [(VSSpeechSpeakTask *)self instrumentMetrics];
    [instrumentMetrics15 audioStartTimestampDiffs];
    speakTask9 = [(VSSpeechSynthesisTask *)self speakTask];
    instrumentMetrics16 = [speakTask9 instrumentMetrics];
    [instrumentMetrics16 setAudioStartTimestampDiffs:?];

    instrumentMetrics17 = [(VSSpeechSpeakTask *)self instrumentMetrics];
    [instrumentMetrics17 audioDuration];
    speakTask10 = [(VSSpeechSynthesisTask *)self speakTask];
    instrumentMetrics18 = [speakTask10 instrumentMetrics];
    [instrumentMetrics18 setAudioDuration:?];

    instrumentMetrics19 = [(VSSpeechSpeakTask *)self instrumentMetrics];
    [instrumentMetrics19 isWarmStart];
    speakTask11 = [(VSSpeechSynthesisTask *)self speakTask];
    instrumentMetrics20 = [speakTask11 instrumentMetrics];
    [instrumentMetrics20 setIsWarmStart:?];

    speakTask12 = [(VSSpeechSynthesisTask *)self speakTask];
    instrumentMetrics21 = [speakTask12 instrumentMetrics];
    [instrumentMetrics21 requestCreatedTimestamp];
    instrumentMetrics22 = [(VSSpeechSpeakTask *)self instrumentMetrics];
    [instrumentMetrics22 requestCreatedTimestamp];
    speakTask13 = [(VSSpeechSynthesisTask *)self speakTask];
    instrumentMetrics23 = [speakTask13 instrumentMetrics];
    [instrumentMetrics23 setEagerRequestCreatedTimestampDiffs:?];

    instrumentMetrics24 = [(VSSpeechSpeakTask *)self instrumentMetrics];
    [instrumentMetrics24 promptCount];
    speakTask14 = [(VSSpeechSynthesisTask *)self speakTask];
    instrumentMetrics25 = [speakTask14 instrumentMetrics];
    [instrumentMetrics25 setPromptCount:?];

    instrumentMetrics26 = [(VSSpeechSpeakTask *)self instrumentMetrics];
    [instrumentMetrics26 errorCode];
    speakTask15 = [(VSSpeechSynthesisTask *)self speakTask];
    instrumentMetrics27 = [speakTask15 instrumentMetrics];
    [instrumentMetrics27 setErrorCode:?];

    v50 = VSGetLogDefault();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      speakTask16 = [(VSSpeechSynthesisTask *)self speakTask];
      instrumentMetrics28 = [speakTask16 instrumentMetrics];
      requestCreatedTimestamp = [instrumentMetrics28 requestCreatedTimestamp];
      speakTask17 = [(VSSpeechSynthesisTask *)self speakTask];
      instrumentMetrics29 = [speakTask17 instrumentMetrics];
      v68 = 134218242;
      v69 = requestCreatedTimestamp;
      v70 = 2112;
      v71 = instrumentMetrics29;
      _os_log_impl(&dword_2727E4000, v50, OS_LOG_TYPE_DEFAULT, "Device SpeakTask %llu: Instrument metric: %@", &v68, 0x16u);
    }

    speakTask18 = [(VSSpeechSynthesisTask *)self speakTask];
    delegate2 = [speakTask18 delegate];
    speakTask19 = [(VSSpeechSynthesisTask *)self speakTask];
    request = [speakTask19 request];
    speakTask20 = [(VSSpeechSynthesisTask *)self speakTask];
    instrumentMetrics30 = [speakTask20 instrumentMetrics];
    [delegate2 speechRequest:? didReportInstrumentMetrics:?];

    v62 = +[VSDiagnosticService defaultService];
    speakTask21 = [(VSSpeechSynthesisTask *)self speakTask];
    instrumentMetrics31 = [speakTask21 instrumentMetrics];
    dictionaryMetrics = [instrumentMetrics31 dictionaryMetrics];
    speakTask22 = [(VSSpeechSynthesisTask *)self speakTask];
    instrumentMetrics32 = [speakTask22 instrumentMetrics];
    [instrumentMetrics32 requestCreatedTimestamp];
    [v62 dumpInstrumentMetrics:? withTimestamp:?];
  }
}

- (void)reportTimingInfo
{
  v24 = *MEMORY[0x277D85DE8];
  delegate = [(VSSpeechSpeakTask *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(VSSpeechSpeakTask *)self delegate];
    request = [(VSSpeechSpeakTask *)self request];
    timingInfos = [(VSSpeechSpeakTask *)self timingInfos];
    [delegate2 synthesisRequest:? didReceiveTimingInfo:?];

    v8 = VSGetLogDefault();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      instrumentMetrics = [(VSSpeechSpeakTask *)self instrumentMetrics];
      v22 = 134217984;
      requestCreatedTimestamp = [instrumentMetrics requestCreatedTimestamp];
      _os_log_debug_impl(&dword_2727E4000, v8, OS_LOG_TYPE_DEBUG, "Task %llu reported word time info", &v22, 0xCu);
    }
  }

  speakTask = [(VSSpeechSynthesisTask *)self speakTask];
  delegate3 = [speakTask delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    speakTask2 = [(VSSpeechSynthesisTask *)self speakTask];
    delegate4 = [speakTask2 delegate];
    speakTask3 = [(VSSpeechSynthesisTask *)self speakTask];
    request2 = [speakTask3 request];
    timingInfos2 = [(VSSpeechSpeakTask *)self timingInfos];
    [delegate4 speechRequest:? didReceiveTimingInfo:?];

    v17 = VSGetLogDefault();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      speakTask4 = [(VSSpeechSynthesisTask *)self speakTask];
      instrumentMetrics2 = [speakTask4 instrumentMetrics];
      requestCreatedTimestamp2 = [instrumentMetrics2 requestCreatedTimestamp];
      v22 = 134217984;
      requestCreatedTimestamp = requestCreatedTimestamp2;
      _os_log_debug_impl(&dword_2727E4000, v17, OS_LOG_TYPE_DEBUG, "Task %llu reported word time info", &v22, 0xCu);
    }
  }
}

- (void)setObserverForWordTimings:(id)timings
{
  timingsCopy = timings;
  speakTask = [(VSSpeechSynthesisTask *)self speakTask];
  delegate = [speakTask delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    objc_initWeak(&location, self);
    playbackService = [(VSSpeechSpeakTask *)self playbackService];
    v9 = MEMORY[0x277D85DD0];
    objc_copyWeak(&v10, &location);
    [playbackService setBoundaryTimeObserverForTimingInfos:v9 usingBlock:{3221225472, __51__VSSpeechSynthesisTask_setObserverForWordTimings___block_invoke, &unk_279E4B9C0}];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

void __51__VSSpeechSynthesisTask_setObserverForWordTimings___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained speakTask];
    v6 = [v5 delegate];
    v7 = [v4 request];
    [v8 textRange];
    [v6 speechRequest:? didStartWithMark:? forRange:?];
  }
}

- (void)setSpeakTask:(id)task
{
  taskCopy = task;
  kdebug_trace();
  kdebug_trace();
  speakTask = self->_speakTask;
  self->_speakTask = taskCopy;
}

- (void)synthesize
{
  v27 = *MEMORY[0x277D85DE8];
  [(VSSpeechSpeakTask *)self prepareForSynthesis];
  error = [(VSSpeechSpeakTask *)self error];

  if (!error && ([(VSSpeechSynthesisTask *)self isCancelled]& 1) == 0)
  {
    speakTask = [(VSSpeechSynthesisTask *)self speakTask];

    if (speakTask)
    {
      speakTask2 = [(VSSpeechSynthesisTask *)self speakTask];
      request = [speakTask2 request];
      [request audioSessionID];
      [(VSSpeechSpeakTask *)self startPlaybackServiceWithAudioSessionID:?];
    }

    mach_absolute_time();
    instrumentMetrics = [(VSSpeechSpeakTask *)self instrumentMetrics];
    [instrumentMetrics setSynthesisBeginTimestamp:?];

    kdebug_trace();
    engine = [(VSSpeechSpeakTask *)self engine];
    request2 = [(VSSpeechSpeakTask *)self request];
    utterance = [request2 utterance];
    request3 = [(VSSpeechSpeakTask *)self request];
    [request3 canLogRequestText];
    v12 = [engine synthesizeText:? loggable:? callback:?];

    if (v12)
    {
      [(VSSpeechSpeakTask *)self setError:?];
    }

    v13 = VSGetLogDefault();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      request4 = [(VSSpeechSpeakTask *)self request];
      utterance2 = [request4 utterance];
      v16 = [utterance2 length];
      streamAudio = [(VSSpeechSpeakTask *)self streamAudio];
      [streamAudio duration];
      v19 = v18;
      error2 = [(VSSpeechSpeakTask *)self error];
      *buf = 134218498;
      v22 = v16;
      v23 = 2048;
      v24 = v19;
      v25 = 2112;
      v26 = error2;
      _os_log_impl(&dword_2727E4000, v13, OS_LOG_TYPE_INFO, "SynthesisTask done synthesize %lu characters, audio duration %f, error %@", buf, 0x20u);
    }

    [(VSSpeechSpeakTask *)self waitUntilAudioFinished];
  }
}

id __35__VSSpeechSynthesisTask_synthesize__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 state];
  if (v4 == 3)
  {
    kdebug_trace();
    mach_absolute_time();
    v10 = [*(a1 + 32) instrumentMetrics];
    [v10 setSynthesisEndTimestamp:?];

    if (([v3 neuralDidFallback] & 1) == 0)
    {
      [v3 hasAudioClick];
    }

    [*(a1 + 32) setSynthesisHasIssue:?];
    [v3 numOfPromptsTriggered];
    v11 = [*(a1 + 32) instrumentMetrics];
    [v11 setPromptCount:?];

    v12 = [*(a1 + 32) timingInfos];

    if (!v12)
    {
      v13 = [v3 wordTimingInfos];
      [*(a1 + 32) setTimingInfos:?];

      v14 = MEMORY[0x277D799B8];
      v15 = [*(a1 + 32) timingInfos];
      v16 = [*(a1 + 32) request];
      v17 = [v16 contextInfo];
      [v14 adjustWordTimingInfo:? forContext:?];
    }

    [*(a1 + 32) reportTimingInfo];
    [v3 hasAlignmentStall];
    v18 = [*(a1 + 32) instrumentMetrics];
    [v18 setNeuralAlignmentStall:?];

    [v3 hasAudioClick];
    v19 = [*(a1 + 32) instrumentMetrics];
    [v19 setNeuralAudioClick:?];

    [v3 neuralDidFallback];
    v20 = [*(a1 + 32) instrumentMetrics];
    [v20 setNeuralFallback:?];
  }

  else if (v4 == 2)
  {
    v5 = [*(a1 + 32) error];
    if (v5)
    {
      goto LABEL_12;
    }

    v6 = objc_autoreleasePoolPush();
    v7 = [v3 mutablePCMData];
    v8 = [*(a1 + 32) voiceBooster];
    v9 = [v8 processData:?];

    if (v9)
    {
      goto LABEL_5;
    }

    v22 = [*(a1 + 32) streamAudio];
    [v22 appendAudioData:? packetCount:? packetDescriptions:?];

    v23 = [*(a1 + 32) request];
    v24 = [v23 shouldStreamAudioData];

    if (v24)
    {
      v25 = objc_alloc_init(MEMORY[0x277D79920]);
      v26 = [*(a1 + 32) engine];
      if (v26)
      {
        [&v46 asbd];
      }

      else
      {
        v48 = 0;
        v46 = 0u;
        v47 = 0u;
      }

      v43 = v46;
      v44 = v47;
      v45 = v48;
      [v25 setAsbd:?];

      [v25 setAudioData:?];
      v27 = [*(a1 + 32) delegate];
      v28 = [*(a1 + 32) request];
      [v27 synthesisRequest:? didGenerateAudioChunk:?];
    }

    v29 = [*(a1 + 32) speakTask];

    if (v29)
    {
      v30 = *(a1 + 32);
      v31 = [v30 speakTask];
      v32 = [v31 request];
      [v32 audioSessionID];
      [v30 startPlaybackServiceWithAudioSessionID:?];

      v33 = [*(a1 + 32) error];
      if (v33)
      {
        v9 = v33;
LABEL_5:
        v5 = v9;

        objc_autoreleasePoolPop(v6);
        goto LABEL_12;
      }

      v34 = [*(a1 + 32) playbackService];
      [v34 enqueue:? packetCount:? packetDescriptions:?];

      v35 = [*(a1 + 32) taskAuxiliaryQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __35__VSSpeechSynthesisTask_synthesize__block_invoke_2;
      block[3] = &unk_279E4BAC8;
      block[4] = *(a1 + 32);
      dispatch_async(v35, block);

      v36 = [*(a1 + 32) timingInfos];
      if (!v36)
      {
        v37 = objc_alloc(MEMORY[0x277CBEA60]);
        v38 = [v3 wordTimingInfos];
        v36 = [v37 initWithArray:? copyItems:?];

        v39 = MEMORY[0x277D799B8];
        v40 = [*(a1 + 32) request];
        v41 = [v40 contextInfo];
        [v39 adjustWordTimingInfo:? forContext:?];
      }

      [*(a1 + 32) setObserverForWordTimings:?];
    }

    objc_autoreleasePoolPop(v6);
  }

  v5 = 0;
LABEL_12:

  return v5;
}

- (void)main
{
  kdebug_trace();
  [(VSSpeechSpeakTask *)self fetchVoiceResource];
  [(VSSpeechSpeakTask *)self fetchVoiceAsset];
  v3 = objc_opt_new();
  request = [(VSSpeechSpeakTask *)self request];
  text = [request text];
  request2 = [(VSSpeechSpeakTask *)self request];
  languageCode = [request2 languageCode];
  request3 = [(VSSpeechSpeakTask *)self request];
  voiceName = [request3 voiceName];
  v10 = [v3 estimatedTTSWordTimingForText:? withLanguage:? voiceName:?];
  [(VSSpeechSpeakTask *)self setTimingInfos:?];

  v11 = MEMORY[0x277D799B8];
  timingInfos = [(VSSpeechSpeakTask *)self timingInfos];
  request4 = [(VSSpeechSpeakTask *)self request];
  contextInfo = [request4 contextInfo];
  [v11 adjustWordTimingInfo:? forContext:?];

  error = [(VSSpeechSpeakTask *)self error];

  if (!error)
  {
    cachingService = [(VSSpeechSpeakTask *)self cachingService];
    [cachingService fetchCacheForTask:?];

    speechCache = [(VSSpeechSpeakTask *)self speechCache];

    if (speechCache)
    {
      [(VSSpeechSynthesisTask *)self reportTimingInfo];
      request5 = [(VSSpeechSpeakTask *)self request];
      shouldStreamAudioData = [request5 shouldStreamAudioData];

      if (shouldStreamAudioData)
      {
        speechCache2 = [(VSSpeechSpeakTask *)self speechCache];
        delegate = [(VSSpeechSpeakTask *)self delegate];
        request6 = [(VSSpeechSpeakTask *)self request];
        audio = [speechCache2 audio];
        [delegate synthesisRequest:? didGenerateAudioChunk:?];
      }

      speakTask = [(VSSpeechSynthesisTask *)self speakTask];

      if (speakTask)
      {
        [(VSSpeechSpeakTask *)self speakCachedAudio];
      }
    }

    else
    {
      [(VSSpeechSynthesisTask *)self synthesize];
      error2 = [(VSSpeechSpeakTask *)self error];

      if (!error2)
      {
        streamAudio = [(VSSpeechSpeakTask *)self streamAudio];
        [streamAudio duration];
        instrumentMetrics = [(VSSpeechSpeakTask *)self instrumentMetrics];
        [instrumentMetrics setAudioDuration:?];
      }
    }

    instrumentMetrics2 = [(VSSpeechSpeakTask *)self instrumentMetrics];
    speechBeginTimestamp = [instrumentMetrics2 speechBeginTimestamp];

    if (speechBeginTimestamp >= 1)
    {
      mach_absolute_time();
      instrumentMetrics3 = [(VSSpeechSpeakTask *)self instrumentMetrics];
      [instrumentMetrics3 setSpeechEndTimestamp:?];

      playbackService = [(VSSpeechSpeakTask *)self playbackService];
      LODWORD(instrumentMetrics3) = [playbackService discontinuedDuringPlayback];

      if (instrumentMetrics3)
      {
        instrumentMetrics4 = [(VSSpeechSpeakTask *)self instrumentMetrics];
        [instrumentMetrics4 setErrorCode:?];
      }
    }
  }

  [(VSSpeechSynthesisTask *)self setReadyForEagerTask:?];
  if ([(VSSpeechSynthesisTask *)self isCancelled])
  {
    v16 = MEMORY[0x277CCA9B8];
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
    v18 = [v16 errorWithDomain:? code:? userInfo:?];
    [(VSSpeechSpeakTask *)self setError:?];
  }

  error3 = [(VSSpeechSpeakTask *)self error];

  if (!error3)
  {
    [(VSSpeechSynthesisTask *)self reportInstrumentMetrics];
  }

  error4 = [(VSSpeechSpeakTask *)self error];
  if (!error4)
  {
    speakTask2 = [(VSSpeechSynthesisTask *)self speakTask];

    if (!speakTask2)
    {
      goto LABEL_10;
    }

    kdebug_trace();
    error4 = +[VSDiagnosticService defaultService];
    streamAudio2 = [(VSSpeechSpeakTask *)self streamAudio];
    request7 = [(VSSpeechSpeakTask *)self request];
    [error4 dumpStreamAudio:? forRequest:?];
  }

LABEL_10:
  error5 = [(VSSpeechSpeakTask *)self error];

  if (!error5)
  {
    request8 = [(VSSpeechSpeakTask *)self request];
    outputPath = [request8 outputPath];
    path = [outputPath path];

    if (path)
    {
      streamAudio3 = [(VSSpeechSpeakTask *)self streamAudio];
      v29 = [streamAudio3 writeWaveToFilePath:?];

      if ((v29 & 1) == 0)
      {
        v30 = MEMORY[0x277CCA9B8];
        v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
        v32 = [v30 errorWithDomain:? code:? userInfo:?];
        [(VSSpeechSpeakTask *)self setError:?];
      }
    }

    if (([(VSSpeechSynthesisTask *)self isCancelled]& 1) != 0)
    {
      goto LABEL_19;
    }

    request9 = [(VSSpeechSpeakTask *)self request];
    if ([request9 shouldCache])
    {
      speechCache3 = [(VSSpeechSpeakTask *)self speechCache];
      if (!speechCache3)
      {
        synthesisHasIssue = [(VSSpeechSpeakTask *)self synthesisHasIssue];

        if ((synthesisHasIssue & 1) == 0)
        {
          [(VSSpeechSpeakTask *)self enqueueCache];
        }

        goto LABEL_19;
      }
    }

LABEL_19:
  }

  [(VSSpeechSynthesisTask *)self reportFinish];
  [(VSSpeechSpeakTask *)self logFinish];
  kdebug_trace();
}

- (BOOL)isSpeaking
{
  speakTask = [(VSSpeechSynthesisTask *)self speakTask];

  return speakTask != 0;
}

- (VSSpeechSynthesisTask)initWithRequest:(id)request
{
  v4.receiver = self;
  v4.super_class = VSSpeechSynthesisTask;
  result = [(VSSpeechSpeakTask *)&v4 initWithRequest:request];
  if (result)
  {
    result->_readyForEagerTask = 1;
  }

  return result;
}

@end