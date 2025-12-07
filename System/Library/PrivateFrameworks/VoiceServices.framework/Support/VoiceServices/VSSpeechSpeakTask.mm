@interface VSSpeechSpeakTask
- (OS_dispatch_queue)taskAuxiliaryQueue;
- (VSSpeechServiceDelegate)delegate;
- (VSSpeechSpeakTask)init;
- (VSSpeechSpeakTask)initWithRequest:(id)request;
- (id)_fetchVoiceAsset_NoRetry;
- (id)audioPowerProvider;
- (id)taskHash;
- (void)cancel;
- (void)enqueueCache;
- (void)fetchVoiceAsset;
- (void)fetchVoiceResource;
- (void)logFinish;
- (void)main;
- (void)pausePlayback;
- (void)prepareForSynthesis;
- (void)reportFinish;
- (void)reportInstrumentMetrics;
- (void)reportSpeechStart;
- (void)reportTimingInfo;
- (void)resumePlayback;
- (void)setObserverForWordTimings:(id)timings;
- (void)speakCachedAudio;
- (void)startPlaybackServiceWithAudioSessionID:(unsigned int)d;
- (void)synthesizeAndSpeak;
- (void)waitUntilAudioFinished;
@end

@implementation VSSpeechSpeakTask

- (VSSpeechServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)audioPowerProvider
{
  playbackService = [(VSSpeechSpeakTask *)self playbackService];
  audioPowerProvider = [playbackService audioPowerProvider];

  return audioPowerProvider;
}

- (void)reportTimingInfo
{
  v12 = *MEMORY[0x277D85DE8];
  delegate = [(VSSpeechSpeakTask *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(VSSpeechSpeakTask *)self delegate];
    request = [(VSSpeechSpeakTask *)self request];
    timingInfos = [(VSSpeechSpeakTask *)self timingInfos];
    [delegate2 speechRequest:? didReceiveTimingInfo:?];

    v8 = VSGetLogDefault();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      instrumentMetrics = [(VSSpeechSpeakTask *)self instrumentMetrics];
      v10 = 134217984;
      requestCreatedTimestamp = [instrumentMetrics requestCreatedTimestamp];
      _os_log_debug_impl(&dword_2727E4000, v8, OS_LOG_TYPE_DEBUG, "Task %llu reported word time info", &v10, 0xCu);
    }
  }
}

- (void)setObserverForWordTimings:(id)timings
{
  timingsCopy = timings;
  delegate = [(VSSpeechSpeakTask *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    objc_initWeak(&location, self);
    playbackService = [(VSSpeechSpeakTask *)self playbackService];
    v8 = MEMORY[0x277D85DD0];
    objc_copyWeak(&v9, &location);
    [playbackService setBoundaryTimeObserverForTimingInfos:v8 usingBlock:{3221225472, __47__VSSpeechSpeakTask_setObserverForWordTimings___block_invoke, &unk_279E4B9C0}];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

void __47__VSSpeechSpeakTask_setObserverForWordTimings___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained delegate];
    v6 = [v4 request];
    [v7 textRange];
    [v5 speechRequest:? didStartWithMark:? forRange:?];
  }
}

- (void)reportSpeechStart
{
  v29 = *MEMORY[0x277D85DE8];
  instrumentMetrics = [(VSSpeechSpeakTask *)self instrumentMetrics];
  speechBeginTimestamp = [instrumentMetrics speechBeginTimestamp];

  if (!speechBeginTimestamp)
  {
    kdebug_trace();
    mach_absolute_time();
    instrumentMetrics2 = [(VSSpeechSpeakTask *)self instrumentMetrics];
    [instrumentMetrics2 setSpeechBeginTimestamp:?];

    delegate = [(VSSpeechSpeakTask *)self delegate];
    LOBYTE(instrumentMetrics2) = objc_opt_respondsToSelector();

    if (instrumentMetrics2)
    {
      delegate2 = [(VSSpeechSpeakTask *)self delegate];
      request = [(VSSpeechSpeakTask *)self request];
      [delegate2 speechRequestDidStart:?];

      v9 = VSGetLogDefault();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        instrumentMetrics3 = [(VSSpeechSpeakTask *)self instrumentMetrics];
        *buf = 134217984;
        requestCreatedTimestamp = [instrumentMetrics3 requestCreatedTimestamp];
        _os_log_debug_impl(&dword_2727E4000, v9, OS_LOG_TYPE_DEBUG, "Task %llu started speaking", buf, 0xCu);
      }
    }

    siriInstrumentation = [(VSSpeechSpeakTask *)self siriInstrumentation];
    instrumentMetrics4 = [(VSSpeechSpeakTask *)self instrumentMetrics];
    [instrumentMetrics4 sourceOfTTS];
    instrumentMetrics5 = [(VSSpeechSpeakTask *)self instrumentMetrics];
    [instrumentMetrics5 timeToSpeakLatency];
    playbackService = [(VSSpeechSpeakTask *)self playbackService];
    outputRouteInfo = [playbackService outputRouteInfo];
    voiceSelection = [(VSSpeechSpeakTask *)self voiceSelection];
    voiceData = [voiceSelection voiceData];
    [voiceData type];
    voiceSelection2 = [(VSSpeechSpeakTask *)self voiceSelection];
    voiceData2 = [voiceSelection2 voiceData];
    [voiceData2 footprint];
    voiceSelection3 = [(VSSpeechSpeakTask *)self voiceSelection];
    voiceData3 = [voiceSelection3 voiceData];
    contentVersion = [voiceData3 contentVersion];
    [contentVersion unsignedIntegerValue];
    voiceResource = [(VSSpeechSpeakTask *)self voiceResource];
    contentVersion2 = [voiceResource contentVersion];
    [contentVersion2 unsignedIntegerValue];
    request2 = [(VSSpeechSpeakTask *)self request];
    LOBYTE(v18) = [request2 shouldWhisper];
    [siriInstrumentation instrumentSpeechStartedWithSource:v18 customerPerceivedLatency:? audioOutputRoute:? voiceType:? voiceFootprint:? voiceVersion:? resourceVersion:? isWhisper:?];
  }
}

- (void)reportFinish
{
  v53 = *MEMORY[0x277D85DE8];
  delegate = [(VSSpeechSpeakTask *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(VSSpeechSpeakTask *)self delegate];
    request = [(VSSpeechSpeakTask *)self request];
    [(VSSpeechSpeakTask *)self isCancelled];
    phonemes = [(VSSpeechSpeakTask *)self phonemes];
    v8 = [phonemes componentsJoinedByString:?];
    error = [(VSSpeechSpeakTask *)self error];
    [delegate2 speechRequest:? didStopWithSuccess:? phonemesSpoken:? error:?];

    v10 = VSGetLogDefault();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      instrumentMetrics = [(VSSpeechSpeakTask *)self instrumentMetrics];
      requestCreatedTimestamp = [instrumentMetrics requestCreatedTimestamp];
      error2 = [(VSSpeechSpeakTask *)self error];
      *buf = 134218242;
      v50 = requestCreatedTimestamp;
      v51 = 2112;
      v52 = error2;
      _os_log_debug_impl(&dword_2727E4000, v10, OS_LOG_TYPE_DEBUG, "Task %llu reported finish, error: %@", buf, 0x16u);
    }
  }

  v11 = MEMORY[0x277D79918];
  instrumentMetrics2 = [(VSSpeechSpeakTask *)self instrumentMetrics];
  [v11 reportInstrumentMetrics:?];

  error3 = [(VSSpeechSpeakTask *)self error];
  if (error3)
  {
    v14 = error3;
    error4 = [(VSSpeechSpeakTask *)self error];
    if ([error4 code] == 400)
    {
    }

    else
    {
      error5 = [(VSSpeechSpeakTask *)self error];
      code = [error5 code];

      if (code != 501)
      {
        siriInstrumentation = [(VSSpeechSpeakTask *)self siriInstrumentation];
        v37 = MEMORY[0x277CCABB0];
        error6 = [(VSSpeechSpeakTask *)self error];
        [error6 code];
        v48 = [v37 numberWithInteger:?];
        v39 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
        [siriInstrumentation instrumentSpeechFailedWithErrorCodes:?];

        goto LABEL_21;
      }
    }
  }

  voiceSelection = [(VSSpeechSpeakTask *)self voiceSelection];
  voiceData = [voiceSelection voiceData];
  languages = [voiceData languages];
  firstObject = [languages firstObject];
  request2 = [(VSSpeechSpeakTask *)self request];
  languageCode = [request2 languageCode];
  if (![firstObject isEqualToString:?])
  {

    goto LABEL_14;
  }

  request3 = [(VSSpeechSpeakTask *)self request];
  voiceName = [request3 voiceName];
  if (!voiceName)
  {

    goto LABEL_16;
  }

  v46 = voiceName;
  request4 = [(VSSpeechSpeakTask *)self request];
  voiceName2 = [request4 voiceName];
  voiceSelection2 = [(VSSpeechSpeakTask *)self voiceSelection];
  [voiceSelection2 voiceData];
  v27 = v44 = request3;
  name = [v27 name];
  v47 = [voiceName2 isEqualToString:?];

  if ((v47 & 1) == 0)
  {
LABEL_14:
    voiceSelection = [(VSSpeechSpeakTask *)self siriInstrumentation];
    voiceData = [(VSSpeechSpeakTask *)self voiceSelection];
    languages = [voiceData voiceData];
    firstObject = [(VSSpeechSpeakTask *)self voiceResource];
    [voiceSelection instrumentVoiceFallbackOccurredWithVoice:? resource:?];
LABEL_16:
  }

  isCancelled = [(VSSpeechSpeakTask *)self isCancelled];
  siriInstrumentation2 = [(VSSpeechSpeakTask *)self siriInstrumentation];
  siriInstrumentation = siriInstrumentation2;
  if (isCancelled)
  {
    [siriInstrumentation2 instrumentSpeechCancelled];
  }

  else
  {
    instrumentMetrics3 = [(VSSpeechSpeakTask *)self instrumentMetrics];
    [instrumentMetrics3 audioDuration];
    instrumentMetrics4 = [(VSSpeechSpeakTask *)self instrumentMetrics];
    [instrumentMetrics4 ttsSynthesisLatency];
    instrumentMetrics5 = [(VSSpeechSpeakTask *)self instrumentMetrics];
    [instrumentMetrics5 cappedRealTimeFactor];
    instrumentMetrics6 = [(VSSpeechSpeakTask *)self instrumentMetrics];
    [instrumentMetrics6 promptCount];
    instrumentMetrics7 = [(VSSpeechSpeakTask *)self instrumentMetrics];
    [instrumentMetrics7 errorCode];
    [siriInstrumentation instrumentSpeechEndedWithAudioDuration:? synthesisLatency:? realTimeFactor:? promptCount:? errorCode:?];
  }

LABEL_21:
}

- (void)reportInstrumentMetrics
{
  v20 = *MEMORY[0x277D85DE8];
  delegate = [(VSSpeechSpeakTask *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = VSGetLogDefault();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      instrumentMetrics = [(VSSpeechSpeakTask *)self instrumentMetrics];
      requestCreatedTimestamp = [instrumentMetrics requestCreatedTimestamp];
      instrumentMetrics2 = [(VSSpeechSpeakTask *)self instrumentMetrics];
      v16 = 134218242;
      v17 = requestCreatedTimestamp;
      v18 = 2112;
      v19 = instrumentMetrics2;
      _os_log_impl(&dword_2727E4000, v5, OS_LOG_TYPE_DEFAULT, "Device task %llu: Instrument metric: %@", &v16, 0x16u);
    }

    delegate2 = [(VSSpeechSpeakTask *)self delegate];
    request = [(VSSpeechSpeakTask *)self request];
    instrumentMetrics3 = [(VSSpeechSpeakTask *)self instrumentMetrics];
    [delegate2 speechRequest:? didReportInstrumentMetrics:?];

    v12 = +[VSDiagnosticService defaultService];
    instrumentMetrics4 = [(VSSpeechSpeakTask *)self instrumentMetrics];
    dictionaryMetrics = [instrumentMetrics4 dictionaryMetrics];
    instrumentMetrics5 = [(VSSpeechSpeakTask *)self instrumentMetrics];
    [instrumentMetrics5 requestCreatedTimestamp];
    [v12 dumpInstrumentMetrics:? withTimestamp:?];
  }
}

- (void)synthesizeAndSpeak
{
  v58 = *MEMORY[0x277D85DE8];
  [(VSSpeechSpeakTask *)self prepareForSynthesis];
  error = [(VSSpeechSpeakTask *)self error];

  if (!error)
  {
    request = [(VSSpeechSpeakTask *)self request];
    [request audioSessionID];
    [(VSSpeechSpeakTask *)self startPlaybackServiceWithAudioSessionID:?];

    v51[0] = 0;
    v51[1] = v51;
    v51[2] = 0x2020000000;
    v51[3] = mach_absolute_time();
    voiceSelection = [(VSSpeechSpeakTask *)self voiceSelection];
    voiceData = [voiceSelection voiceData];
    v7 = [voiceData type] == 4;

    if (v7)
    {
      v8 = dispatch_semaphore_create(0);
      [(VSSpeechSpeakTask *)self setNeuralPlaybackSemaphore:?];

      taskAuxiliaryQueue = [(VSSpeechSpeakTask *)self taskAuxiliaryQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __39__VSSpeechSpeakTask_synthesizeAndSpeak__block_invoke;
      block[3] = &unk_279E4BAC8;
      block[4] = self;
      dispatch_async(taskAuxiliaryQueue, block);
    }

    error2 = [(VSSpeechSpeakTask *)self error];

    if (!error2 && ([(VSSpeechSpeakTask *)self isCancelled]& 1) == 0)
    {
      mach_absolute_time();
      instrumentMetrics = [(VSSpeechSpeakTask *)self instrumentMetrics];
      [instrumentMetrics setSynthesisBeginTimestamp:?];

      array = [MEMORY[0x277CBEB18] array];
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      request2 = [(VSSpeechSpeakTask *)self request];
      customResourceURLs = [request2 customResourceURLs];

      v15 = [customResourceURLs countByEnumeratingWithState:? objects:? count:?];
      if (v15)
      {
        v16 = *v47;
        do
        {
          for (i = 0; i != v15; i = (i + 1))
          {
            if (*v47 != v16)
            {
              objc_enumerationMutation(customResourceURLs);
            }

            engine = [(VSSpeechSpeakTask *)self engine];
            v19 = [engine loadResource:? error:?];

            if (v19)
            {
              [array addObject:?];
            }
          }

          v15 = [customResourceURLs countByEnumeratingWithState:? objects:? count:?];
        }

        while (v15);
      }

      engine2 = [(VSSpeechSpeakTask *)self engine];
      if (engine2)
      {
        [v44 asbd];
      }

      else
      {
        v45 = 0;
        memset(v44, 0, sizeof(v44));
      }

      engine3 = [(VSSpeechSpeakTask *)self engine];
      if (engine3)
      {
        [v42 asbd];
      }

      else
      {
        v43 = 0;
        memset(v42, 0, sizeof(v42));
      }

      kdebug_trace();
      engine4 = [(VSSpeechSpeakTask *)self engine];
      request3 = [(VSSpeechSpeakTask *)self request];
      utterance = [request3 utterance];
      request4 = [(VSSpeechSpeakTask *)self request];
      [request4 canLogRequestText];
      v26 = [engine4 synthesizeText:? loggable:? callback:?];

      if (v26)
      {
        [(VSSpeechSpeakTask *)self setError:?];
      }

      neuralPlaybackSemaphore = [(VSSpeechSpeakTask *)self neuralPlaybackSemaphore];

      if (neuralPlaybackSemaphore)
      {
        neuralPlaybackSemaphore2 = [(VSSpeechSpeakTask *)self neuralPlaybackSemaphore];
        dispatch_semaphore_signal(neuralPlaybackSemaphore2);
      }

      v29 = VSGetLogDefault();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        request5 = [(VSSpeechSpeakTask *)self request];
        utterance2 = [request5 utterance];
        v32 = [utterance2 length];
        streamAudio = [(VSSpeechSpeakTask *)self streamAudio];
        [streamAudio duration];
        v35 = v34;
        error3 = [(VSSpeechSpeakTask *)self error];
        *buf = 134218498;
        v53 = v32;
        v54 = 2048;
        v55 = v35;
        v56 = 2112;
        v57 = error3;
        _os_log_impl(&dword_2727E4000, v29, OS_LOG_TYPE_INFO, "SpeakTask done synthesize %lu characters, audio duration %f, error %@", buf, 0x20u);
      }

      notify_post([*MEMORY[0x277D79A18] UTF8String]);
      v37 = array;
      v38 = [v37 countByEnumeratingWithState:0 objects:? count:?];
      if (v38)
      {
        v39 = MEMORY[0];
        do
        {
          for (j = 0; j != v38; j = (j + 1))
          {
            if (MEMORY[0] != v39)
            {
              objc_enumerationMutation(v37);
            }

            engine5 = [(VSSpeechSpeakTask *)self engine];
            [engine5 unloadResource:?];
          }

          v38 = [v37 countByEnumeratingWithState:? objects:? count:?];
        }

        while (v38);
      }

      [(VSSpeechSpeakTask *)self waitUntilAudioFinished];
    }

    _Block_object_dispose(v51, 8);
  }
}

void __39__VSSpeechSpeakTask_synthesizeAndSpeak__block_invoke(uint64_t a1)
{
  v2 = VSGetLogDefault();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_2727E4000, v2, OS_LOG_TYPE_INFO, "Holding audio playback before we get fast synthesis.", v6, 2u);
  }

  v3 = [*(a1 + 32) neuralPlaybackSemaphore];

  if (v3)
  {
    v4 = [*(a1 + 32) neuralPlaybackSemaphore];
    v5 = dispatch_time(0, 5000000000);
    dispatch_semaphore_wait(v4, v5);
  }
}

id __39__VSSpeechSpeakTask_synthesizeAndSpeak__block_invoke_45(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 state];
  if (v4 == 3)
  {
    mach_absolute_time();
    v7 = [*(a1 + 32) instrumentMetrics];
    [v7 setSynthesisEndTimestamp:?];

    if (([v3 neuralDidFallback] & 1) == 0)
    {
      [v3 hasAudioClick];
    }

    [*(a1 + 32) setSynthesisHasIssue:?];
    [v3 numOfPromptsTriggered];
    v8 = [*(a1 + 32) instrumentMetrics];
    [v8 setPromptCount:?];

    kdebug_trace();
    v9 = [*(a1 + 32) timingInfos];

    if (!v9)
    {
      v10 = [v3 wordTimingInfos];
      [*(a1 + 32) setTimingInfos:?];

      v11 = MEMORY[0x277D799B8];
      v12 = [*(a1 + 32) timingInfos];
      v13 = [*(a1 + 32) request];
      v14 = [v13 contextInfo];
      [v11 adjustWordTimingInfo:? forContext:?];
    }

    v15 = *(a1 + 32);
    v16 = [v15 timingInfos];
    [v15 setObserverForWordTimings:?];

    v17 = [v3 phonemes];
    [*(a1 + 32) setPhonemes:?];

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

    goto LABEL_10;
  }

  if (v4 != 2)
  {
LABEL_10:
    v6 = 0;
    goto LABEL_14;
  }

  v5 = [*(a1 + 32) error];
  if (!v5)
  {
    v21 = objc_autoreleasePoolPush();
    v22 = [v3 mutablePCMData];
    v23 = [*(a1 + 32) voiceBooster];
    v24 = [v23 processData:?];

    if (v24)
    {
      v6 = v24;

      objc_autoreleasePoolPop(v21);
      goto LABEL_13;
    }

    v26 = [*(a1 + 32) neuralPlaybackSemaphore];

    if (v26)
    {
      v27 = mach_absolute_time();
      v28 = [v22 length] / *(a1 + 48);
      VSAbsoluteTimeToSecond();
      *(*(*(a1 + 40) + 8) + 24) = v27;
      if (v28 / v29 > 1.2)
      {
        v30 = [*(a1 + 32) neuralPlaybackSemaphore];
        dispatch_semaphore_signal(v30);
      }
    }

    v31 = [*(a1 + 32) streamAudio];
    [v31 appendAudioData:? packetCount:? packetDescriptions:?];

    v32 = [*(a1 + 32) taskAuxiliaryQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __39__VSSpeechSpeakTask_synthesizeAndSpeak__block_invoke_2;
    block[3] = &unk_279E4BC28;
    block[4] = *(a1 + 32);
    v43 = v22;
    v33 = v22;
    dispatch_async(v32, block);

    objc_autoreleasePoolPop(v21);
    v34 = [*(a1 + 32) taskAuxiliaryQueue];
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __39__VSSpeechSpeakTask_synthesizeAndSpeak__block_invoke_3;
    v41[3] = &unk_279E4BAC8;
    v41[4] = *(a1 + 32);
    dispatch_async(v34, v41);

    v35 = [*(a1 + 32) timingInfos];
    if (!v35)
    {
      v36 = objc_alloc(MEMORY[0x277CBEA60]);
      v37 = [v3 wordTimingInfos];
      v35 = [v36 initWithArray:? copyItems:?];

      v38 = MEMORY[0x277D799B8];
      v39 = [*(a1 + 32) request];
      v40 = [v39 contextInfo];
      [v38 adjustWordTimingInfo:? forContext:?];
    }

    [*(a1 + 32) setObserverForWordTimings:?];

    goto LABEL_10;
  }

  v6 = v5;
LABEL_13:

LABEL_14:

  return v6;
}

void __39__VSSpeechSpeakTask_synthesizeAndSpeak__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) playbackService];
  [v1 enqueue:? packetCount:? packetDescriptions:?];
}

- (void)cancel
{
  v3 = [MEMORY[0x277CCA9B8] errorWithDomain:? code:? userInfo:?];
  [(VSSpeechSpeakTask *)self setError:?];

  if (([(VSSpeechSpeakTask *)self isExecuting]& 1) != 0 || ([(VSSpeechSpeakTask *)self isCancelled]& 1) != 0 || ([(VSSpeechSpeakTask *)self isFinished]& 1) != 0)
  {
    v9.receiver = self;
    v9.super_class = VSSpeechSpeakTask;
    [(VSSpeechSpeakTask *)&v9 cancel];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = VSSpeechSpeakTask;
    [(VSSpeechSpeakTask *)&v10 cancel];
    [(VSSpeechSpeakTask *)self reportFinish];
  }

  engine = [(VSSpeechSpeakTask *)self engine];
  [engine stopAtMarker:?];

  neuralPlaybackSemaphore = [(VSSpeechSpeakTask *)self neuralPlaybackSemaphore];

  if (neuralPlaybackSemaphore)
  {
    neuralPlaybackSemaphore2 = [(VSSpeechSpeakTask *)self neuralPlaybackSemaphore];
    dispatch_semaphore_signal(neuralPlaybackSemaphore2);
  }

  taskAuxiliaryQueue = [(VSSpeechSpeakTask *)self taskAuxiliaryQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __27__VSSpeechSpeakTask_cancel__block_invoke;
  block[3] = &unk_279E4BAC8;
  block[4] = self;
  dispatch_async(taskAuxiliaryQueue, block);
}

void __27__VSSpeechSpeakTask_cancel__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) playbackService];
  [v1 stop];
}

- (void)main
{
  v72 = *MEMORY[0x277D85DE8];
  kdebug_trace();
  kdebug_trace();
  v3 = VSGetLogDefault();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    instrumentMetrics = [(VSSpeechSpeakTask *)self instrumentMetrics];
    *buf = 134217984;
    requestCreatedTimestamp = [instrumentMetrics requestCreatedTimestamp];
    _os_log_debug_impl(&dword_2727E4000, v3, OS_LOG_TYPE_DEBUG, "Starting speech task %llu", buf, 0xCu);
  }

  cachingService = [(VSSpeechSpeakTask *)self cachingService];
  request = [(VSSpeechSpeakTask *)self request];
  text = [request text];
  v7 = [cachingService popShortTermCacheForHash:?];

  if (v7)
  {
    v8 = VSGetLogDefault();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      request2 = [(VSSpeechSpeakTask *)self request];
      logText = [request2 logText];
      *buf = 138412290;
      requestCreatedTimestamp = logText;
      _os_log_impl(&dword_2727E4000, v8, OS_LOG_TYPE_DEFAULT, "Short-term cached synthesis is found for text '%@'", buf, 0xCu);
    }

    instrumentMetrics2 = [(VSSpeechSpeakTask *)self instrumentMetrics];
    [instrumentMetrics2 setIsServerTTS:?];

    instrumentMetrics3 = [(VSSpeechSpeakTask *)self instrumentMetrics];
    [instrumentMetrics3 setIsCacheHitFromMemory:?];

    instrumentMetrics4 = [(VSSpeechSpeakTask *)self instrumentMetrics];
    [instrumentMetrics4 setSourceOfTTS:?];

    voiceKey = [v7 voiceKey];
    instrumentMetrics5 = [(VSSpeechSpeakTask *)self instrumentMetrics];
    [instrumentMetrics5 setVoiceAssetKey:?];

    voiceResourceKey = [v7 voiceResourceKey];
    instrumentMetrics6 = [(VSSpeechSpeakTask *)self instrumentMetrics];
    [instrumentMetrics6 setVoiceResourceAssetKey:?];

    timingInfos = [v7 timingInfos];
    [(VSSpeechSpeakTask *)self setTimingInfos:?];

    audio = [v7 audio];
    [audio duration];
    instrumentMetrics7 = [(VSSpeechSpeakTask *)self instrumentMetrics];
    [instrumentMetrics7 setAudioDuration:?];

    [(VSSpeechSpeakTask *)self setSpeechCache:?];
  }

  else
  {
    v21 = objc_opt_new();
    request3 = [(VSSpeechSpeakTask *)self request];
    text2 = [request3 text];
    request4 = [(VSSpeechSpeakTask *)self request];
    languageCode = [request4 languageCode];
    request5 = [(VSSpeechSpeakTask *)self request];
    voiceName = [request5 voiceName];
    v28 = [v21 estimatedTTSWordTimingForText:? withLanguage:? voiceName:?];
    [(VSSpeechSpeakTask *)self setTimingInfos:?];

    v29 = MEMORY[0x277D799B8];
    timingInfos2 = [(VSSpeechSpeakTask *)self timingInfos];
    request6 = [(VSSpeechSpeakTask *)self request];
    contextInfo = [request6 contextInfo];
    [v29 adjustWordTimingInfo:? forContext:?];

    [(VSSpeechSpeakTask *)self fetchVoiceResource];
    [(VSSpeechSpeakTask *)self fetchVoiceAsset];
    error = [(VSSpeechSpeakTask *)self error];

    if (!error)
    {
      cachingService2 = [(VSSpeechSpeakTask *)self cachingService];
      [cachingService2 fetchCacheForTask:?];
    }
  }

  error2 = [(VSSpeechSpeakTask *)self error];

  if (!error2)
  {
    speechCache = [(VSSpeechSpeakTask *)self speechCache];

    if (speechCache)
    {
      [(VSSpeechSpeakTask *)self reportTimingInfo];
      [(VSSpeechSpeakTask *)self speakCachedAudio];
    }

    else
    {
      [(VSSpeechSpeakTask *)self synthesizeAndSpeak];
      error3 = [(VSSpeechSpeakTask *)self error];

      if (!error3)
      {
        streamAudio = [(VSSpeechSpeakTask *)self streamAudio];
        [streamAudio duration];
        instrumentMetrics8 = [(VSSpeechSpeakTask *)self instrumentMetrics];
        [instrumentMetrics8 setAudioDuration:?];
      }
    }

    mach_absolute_time();
    instrumentMetrics9 = [(VSSpeechSpeakTask *)self instrumentMetrics];
    [instrumentMetrics9 setSpeechEndTimestamp:?];

    playbackService = [(VSSpeechSpeakTask *)self playbackService];
    LODWORD(instrumentMetrics9) = [playbackService discontinuedDuringPlayback];

    if (instrumentMetrics9)
    {
      instrumentMetrics10 = [(VSSpeechSpeakTask *)self instrumentMetrics];
      [instrumentMetrics10 setErrorCode:?];
    }

    instrumentMetrics11 = [(VSSpeechSpeakTask *)self instrumentMetrics];
    [instrumentMetrics11 setIsSpeechRequest:?];
  }

  if ([(VSSpeechSpeakTask *)self isCancelled])
  {
    v44 = MEMORY[0x277CCA9B8];
    v45 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
    v46 = [v44 errorWithDomain:? code:? userInfo:?];
    [(VSSpeechSpeakTask *)self setError:?];
  }

  error4 = [(VSSpeechSpeakTask *)self error];

  if (!error4)
  {
    [(VSSpeechSpeakTask *)self reportInstrumentMetrics];
    streamAudio2 = [(VSSpeechSpeakTask *)self streamAudio];

    if (streamAudio2)
    {
      v49 = +[VSDiagnosticService defaultService];
      streamAudio3 = [(VSSpeechSpeakTask *)self streamAudio];
      request7 = [(VSSpeechSpeakTask *)self request];
      [v49 dumpStreamAudio:? forRequest:?];
    }

    else
    {
      compressedAudio = [(VSSpeechSpeakTask *)self compressedAudio];

      if (!compressedAudio)
      {
LABEL_25:
        speechCache2 = [(VSSpeechSpeakTask *)self speechCache];
        if (speechCache2)
        {
        }

        else
        {
          request8 = [(VSSpeechSpeakTask *)self request];
          if ([request8 shouldCache])
          {
            synthesisHasIssue = [(VSSpeechSpeakTask *)self synthesisHasIssue];

            if ((synthesisHasIssue & 1) == 0)
            {
              [(VSSpeechSpeakTask *)self enqueueCache];
            }
          }

          else
          {
          }
        }

        request9 = [(VSSpeechSpeakTask *)self request];
        outputPath = [request9 outputPath];
        path = [outputPath path];

        if (path)
        {
          streamAudio4 = [(VSSpeechSpeakTask *)self streamAudio];
          v60 = [streamAudio4 writeWaveToFilePath:?];

          if ((v60 & 1) == 0)
          {
            v61 = MEMORY[0x277CCA9B8];
            v62 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:*MEMORY[0x277CCA460] forKeys:@"writeWaveToFilePath failed." count:?];
            v63 = [v61 errorWithDomain:? code:? userInfo:?];
            [(VSSpeechSpeakTask *)self setError:?];
          }
        }

        instrumentMetrics12 = [(VSSpeechSpeakTask *)self instrumentMetrics];
        errorCode = [instrumentMetrics12 errorCode];
        v66 = VSSpeakTaskTailSpinDumpInProgress;

        if (errorCode == 452 && (v66 & 1) == 0)
        {
          v67 = VSGetLogDefault();
          if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_2727E4000, v67, OS_LOG_TYPE_INFO, "Detected synthesis stall, starting tailspin", buf, 2u);
          }

          VSSpeakTaskTailSpinDumpInProgress = 1;
          v68 = +[VSDiagnosticService defaultService];
          [v68 collectTailspin:?];
        }

        goto LABEL_40;
      }

      v49 = +[VSDiagnosticService defaultService];
      streamAudio3 = [(VSSpeechSpeakTask *)self compressedAudio];
      request7 = [(VSSpeechSpeakTask *)self request];
      [v49 dumpCompressedAudio:? forRequest:?];
    }

    goto LABEL_25;
  }

LABEL_40:
  [(VSSpeechSpeakTask *)self reportFinish];
  [(VSSpeechSpeakTask *)self logFinish];
  kdebug_trace();
}

void __25__VSSpeechSpeakTask_main__block_invoke(uint64_t a1, int a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  VSSpeakTaskTailSpinDumpInProgress = 0;
  v5 = VSGetLogDefault();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6[0] = 67109378;
    v6[1] = a2;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&dword_2727E4000, v5, OS_LOG_TYPE_INFO, "Finished tail spin, success:%d, file: %@", v6, 0x12u);
  }
}

- (id)taskHash
{
  v22 = MEMORY[0x277CCACA8];
  request = [(VSSpeechSpeakTask *)self request];
  utterance = [request utterance];
  voiceSelection = [(VSSpeechSpeakTask *)self voiceSelection];
  v3 = [voiceSelection key];
  voiceResource = [(VSSpeechSpeakTask *)self voiceResource];
  v4 = [voiceResource key];
  request2 = [(VSSpeechSpeakTask *)self request];
  [request2 rate];
  v6 = v5;
  request3 = [(VSSpeechSpeakTask *)self request];
  [request3 pitch];
  v9 = v8;
  request4 = [(VSSpeechSpeakTask *)self request];
  [request4 volume];
  v12 = v11;
  request5 = [(VSSpeechSpeakTask *)self request];
  contextInfo = [request5 contextInfo];
  request6 = [(VSSpeechSpeakTask *)self request];
  customResourceURLs = [request6 customResourceURLs];
  v17 = [v22 stringWithFormat:@"2", utterance, v3, v4, v6, v9, v12, contextInfo, customResourceURLs];

  sha256hex = [v17 sha256hex];

  return sha256hex;
}

- (OS_dispatch_queue)taskAuxiliaryQueue
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_taskAuxiliaryQueue)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v4 = dispatch_queue_create(0, v3);
    taskAuxiliaryQueue = selfCopy->_taskAuxiliaryQueue;
    selfCopy->_taskAuxiliaryQueue = v4;
  }

  objc_sync_exit(selfCopy);

  v6 = selfCopy->_taskAuxiliaryQueue;

  return v6;
}

- (VSSpeechSpeakTask)initWithRequest:(id)request
{
  v25 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v20.receiver = self;
  v20.super_class = VSSpeechSpeakTask;
  v6 = [(VSSpeechSpeakTask *)&v20 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_request, request);
    v8 = objc_alloc_init(MEMORY[0x277D79938]);
    instrumentMetrics = v7->_instrumentMetrics;
    v7->_instrumentMetrics = v8;

    if ([requestCopy requestCreatedTimestamp])
    {
      [requestCopy requestCreatedTimestamp];
    }

    else
    {
      v10 = VSGetLogDefault();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2727E4000, v10, OS_LOG_TYPE_ERROR, "Using timestamp inside voiced for task", buf, 2u);
      }

      mach_absolute_time();
    }

    [(VSInstrumentMetrics *)v7->_instrumentMetrics setRequestCreatedTimestamp:?];
    v11 = VSGetLogDefault();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      requestCreatedTimestamp = [(VSInstrumentMetrics *)v7->_instrumentMetrics requestCreatedTimestamp];
      *buf = 134218240;
      v22 = requestCreatedTimestamp;
      v23 = 2048;
      v24 = v7;
      _os_log_impl(&dword_2727E4000, v11, OS_LOG_TYPE_INFO, "Created Task %llu (%p)", buf, 0x16u);
    }

    kdebug_trace();
    text = [requestCopy text];
    [(VSInstrumentMetrics *)v7->_instrumentMetrics setUtterance:?];

    [requestCopy canUseServerTTS];
    [(VSInstrumentMetrics *)v7->_instrumentMetrics setCanUseServerTTS:?];
    clientBundleIdentifier = [requestCopy clientBundleIdentifier];
    [(VSInstrumentMetrics *)v7->_instrumentMetrics setClientBundleIdentifier:?];

    [(VSInstrumentMetrics *)v7->_instrumentMetrics setSourceOfTTS:?];
    v15 = +[VSCachingService standardService];
    cachingService = v7->_cachingService;
    v7->_cachingService = v15;

    v17 = +[VSPrewarmService sharedService];
    prewarmService = v7->_prewarmService;
    v7->_prewarmService = v17;
  }

  return v7;
}

- (VSSpeechSpeakTask)init
{
  v2 = [MEMORY[0x277CBEAD8] exceptionWithName:? reason:? userInfo:?];
  objc_exception_throw(v2);
}

- (void)enqueueCache
{
  v25 = *MEMORY[0x277D85DE8];
  taskHash = [(VSSpeechSpeakTask *)self taskHash];
  streamAudio = [(VSSpeechSpeakTask *)self streamAudio];

  cachingService = [(VSSpeechSpeakTask *)self cachingService];
  if (streamAudio)
  {
    streamAudio2 = [(VSSpeechSpeakTask *)self streamAudio];
    timingInfos = [(VSSpeechSpeakTask *)self timingInfos];
    instrumentMetrics = [(VSSpeechSpeakTask *)self instrumentMetrics];
    voiceAssetKey = [instrumentMetrics voiceAssetKey];
    instrumentMetrics2 = [(VSSpeechSpeakTask *)self instrumentMetrics];
    voiceResourceAssetKey = [instrumentMetrics2 voiceResourceAssetKey];
    [cachingService enqueueCacheWithHash:? streamAudio:? timingInfo:? voiceKey:? voiceResourceKey:? completion:?];

    v12 = VSGetLogDefault();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      instrumentMetrics3 = [(VSSpeechSpeakTask *)self instrumentMetrics];
      v21 = 134218242;
      requestCreatedTimestamp = [instrumentMetrics3 requestCreatedTimestamp];
      v23 = 2112;
      v24 = taskHash;
      v14 = "Cached streamAudio in task %llu with hash %@ in memory";
LABEL_6:
      _os_log_impl(&dword_2727E4000, v12, OS_LOG_TYPE_INFO, v14, &v21, 0x16u);
    }
  }

  else
  {
    compressedAudio = [(VSSpeechSpeakTask *)self compressedAudio];
    timingInfos2 = [(VSSpeechSpeakTask *)self timingInfos];
    instrumentMetrics4 = [(VSSpeechSpeakTask *)self instrumentMetrics];
    voiceAssetKey2 = [instrumentMetrics4 voiceAssetKey];
    instrumentMetrics5 = [(VSSpeechSpeakTask *)self instrumentMetrics];
    voiceResourceAssetKey2 = [instrumentMetrics5 voiceResourceAssetKey];
    [cachingService enqueueCacheWithHash:? audio:? timingInfo:? voiceKey:? voiceResourceKey:? completion:?];

    v12 = VSGetLogDefault();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      instrumentMetrics3 = [(VSSpeechSpeakTask *)self instrumentMetrics];
      v21 = 134218242;
      requestCreatedTimestamp = [instrumentMetrics3 requestCreatedTimestamp];
      v23 = 2112;
      v24 = taskHash;
      v14 = "Cached audio in task %llu with hash %@ in memory";
      goto LABEL_6;
    }
  }
}

- (void)logFinish
{
  v63 = *MEMORY[0x277D85DE8];
  error = [(VSSpeechSpeakTask *)self error];
  if (error && (v4 = error, -[VSSpeechSpeakTask error](self, "error"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 code], v5, v4, v6 != 400))
  {
    voiceData = VSGetLogDefault();
    if (os_log_type_enabled(voiceData, OS_LOG_TYPE_ERROR))
    {
      instrumentMetrics = [(VSSpeechSpeakTask *)self instrumentMetrics];
      requestCreatedTimestamp = [instrumentMetrics requestCreatedTimestamp];
      error2 = [(VSSpeechSpeakTask *)self error];
      *buf = 134218242;
      v54 = requestCreatedTimestamp;
      v55 = 2112;
      v56 = error2;
      _os_log_error_impl(&dword_2727E4000, voiceData, OS_LOG_TYPE_ERROR, "Error in device task %llu, error: %@", buf, 0x16u);
    }
  }

  else
  {
    voiceSelection = [(VSSpeechSpeakTask *)self voiceSelection];
    voiceData = [voiceSelection voiceData];

    voiceResource = [(VSSpeechSpeakTask *)self voiceResource];
    v10 = VSGetLogDefault();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      instrumentMetrics2 = [(VSSpeechSpeakTask *)self instrumentMetrics];
      requestCreatedTimestamp2 = [instrumentMetrics2 requestCreatedTimestamp];
      isCancelled = [(VSSpeechSpeakTask *)self isCancelled];
      v12 = @"Finished";
      if (isCancelled)
      {
        v12 = @"Cancelled";
      }

      v41 = v12;
      isSpeaking = [(VSSpeechSpeakTask *)self isSpeaking];
      v14 = @"synthesizing";
      if (isSpeaking)
      {
        v14 = @"speaking";
      }

      v40 = v14;
      request = [(VSSpeechSpeakTask *)self request];
      logUtterance = [request logUtterance];
      instrumentMetrics3 = [(VSSpeechSpeakTask *)self instrumentMetrics];
      voiceAssetKey = [instrumentMetrics3 voiceAssetKey];
      if (!voiceAssetKey)
      {
        voiceKey = [voiceData voiceKey];
      }

      v45 = [voiceResource key];
      v15 = MEMORY[0x277CCABB0];
      speechCache = [(VSSpeechSpeakTask *)self speechCache];
      if (speechCache)
      {
        [(VSSpeechSpeakTask *)self request];
      }

      else
      {
        [(VSSpeechSpeakTask *)self engine];
      }
      v43 = ;
      [v43 rate];
      v39 = [v15 numberWithDouble:?];
      v19 = MEMORY[0x277CCABB0];
      speechCache2 = [(VSSpeechSpeakTask *)self speechCache];
      if (speechCache2)
      {
        [(VSSpeechSpeakTask *)self request];
      }

      else
      {
        [(VSSpeechSpeakTask *)self engine];
      }
      v37 = ;
      [v37 pitch];
      v36 = [v19 numberWithDouble:?];
      v20 = MEMORY[0x277CCABB0];
      speechCache3 = [(VSSpeechSpeakTask *)self speechCache];
      v50 = voiceResource;
      if (speechCache3)
      {
        [(VSSpeechSpeakTask *)self request];
      }

      else
      {
        [(VSSpeechSpeakTask *)self engine];
      }
      v34 = ;
      [v34 volume];
      v21 = [v20 numberWithDouble:?];
      v22 = MEMORY[0x277CCABB0];
      isSpeaking2 = [(VSSpeechSpeakTask *)self isSpeaking];
      if (isSpeaking2)
      {
        instrumentMetrics4 = [(VSSpeechSpeakTask *)self instrumentMetrics];
        [instrumentMetrics4 eagerRequestCreatedTimestampDiffs];
      }

      v24 = [v22 numberWithInt:?];
      v25 = MEMORY[0x277CCABB0];
      instrumentMetrics5 = [(VSSpeechSpeakTask *)self instrumentMetrics];
      neuralAlignmentStall = [instrumentMetrics5 neuralAlignmentStall];
      if (neuralAlignmentStall)
      {
        v28 = 0;
      }

      else
      {
        instrumentMetrics6 = [(VSSpeechSpeakTask *)self instrumentMetrics];
        if ([instrumentMetrics6 neuralAudioClick])
        {
          v28 = 0;
        }

        else
        {
          instrumentMetrics7 = [(VSSpeechSpeakTask *)self instrumentMetrics];
          [instrumentMetrics7 neuralFallback];
          v28 = 1;
        }
      }

      v52 = [v25 numberWithInt:?];
      v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
      *buf = 134219010;
      v54 = requestCreatedTimestamp2;
      v55 = 2112;
      v56 = v41;
      v57 = 2112;
      v58 = v40;
      v59 = 2112;
      v60 = logUtterance;
      v61 = 2114;
      v62 = v29;
      _os_log_impl(&dword_2727E4000, v10, OS_LOG_TYPE_DEFAULT, "Device task %llu: %@ %@ utterance: '%@', %{public}@", buf, 0x34u);

      if (v28)
      {
      }

      if ((neuralAlignmentStall & 1) == 0)
      {
      }

      if (isSpeaking2)
      {
      }

      voiceResource = v50;
      if (!voiceAssetKey)
      {
      }
    }
  }
}

- (id)_fetchVoiceAsset_NoRetry
{
  v38 = *MEMORY[0x277D85DE8];
  mEMORY[0x277D79950] = [MEMORY[0x277D79950] sharedManager];
  request = [(VSSpeechSpeakTask *)self request];
  languageCode = [request languageCode];
  request2 = [(VSSpeechSpeakTask *)self request];
  voiceName = [request2 voiceName];
  request3 = [(VSSpeechSpeakTask *)self request];
  [request3 voiceType];
  request4 = [(VSSpeechSpeakTask *)self request];
  [request4 gender];
  request5 = [(VSSpeechSpeakTask *)self request];
  [request5 footprint];
  v10 = [mEMORY[0x277D79950] selectVoiceForLang:? name:? type:? gender:? footprint:?];

  if (!v10)
  {
    v17 = VSGetLogDefault();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2727E4000, v17, OS_LOG_TYPE_ERROR, "No voice available", buf, 2u);
    }

    v15 = MEMORY[0x277CCA9B8];
    v36 = *MEMORY[0x277CCA450];
    v37 = @"No voice available";
    v16 = MEMORY[0x277CBEAC0];
    goto LABEL_10;
  }

  request6 = [(VSSpeechSpeakTask *)self request];
  if ([request6 disableCompactVoiceFallback])
  {
    voiceData = [v10 voiceData];
    footprint = [voiceData footprint];

    if (footprint == 1)
    {
      v14 = VSGetLogDefault();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2727E4000, v14, OS_LOG_TYPE_ERROR, "Compact voice is explicitly disabled.", buf, 2u);
      }

      v15 = MEMORY[0x277CCA9B8];
      v34 = *MEMORY[0x277CCA450];
      v35 = @"Compact voice is explicitly disabled.";
      v16 = MEMORY[0x277CBEAC0];
LABEL_10:
      v18 = [v16 dictionaryWithObjects:? forKeys:? count:?];
      v19 = v15;
      goto LABEL_17;
    }
  }

  else
  {
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  voicePath = [v10 voicePath];
  v22 = [defaultManager fileExistsAtPath:?];

  if (v22)
  {
    [(VSSpeechSpeakTask *)self setVoiceSelection:?];
    voiceSelection = [(VSSpeechSpeakTask *)self voiceSelection];
    v24 = [voiceSelection key];
    instrumentMetrics = [(VSSpeechSpeakTask *)self instrumentMetrics];
    [instrumentMetrics setVoiceAssetKey:?];

    v26 = 0;
    goto LABEL_18;
  }

  v27 = VSGetLogDefault();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    voicePath2 = [v10 voicePath];
    *buf = 138412290;
    v33 = voicePath2;
    _os_log_error_impl(&dword_2727E4000, v27, OS_LOG_TYPE_ERROR, "Voice is deleted at path '%@'", buf, 0xCu);
  }

  v28 = MEMORY[0x277CCA9B8];
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
  v19 = v28;
LABEL_17:
  v26 = [v19 errorWithDomain:? code:? userInfo:?];

LABEL_18:

  return v26;
}

- (void)fetchVoiceAsset
{
  v20 = *MEMORY[0x277D85DE8];
  _fetchVoiceAsset_NoRetry = [(VSSpeechSpeakTask *)self _fetchVoiceAsset_NoRetry];
  [(VSSpeechSpeakTask *)self setError:?];

  error = [(VSSpeechSpeakTask *)self error];
  if (error)
  {
    v5 = error;
    error2 = [(VSSpeechSpeakTask *)self error];
    code = [error2 code];

    if (code == 402)
    {
      notify_post([@"com.apple.voiceservices.notification.voice-update" UTF8String]);
      v8 = VSGetLogDefault();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        LOWORD(v16) = 0;
        _os_log_impl(&dword_2727E4000, v8, OS_LOG_TYPE_INFO, "Reset MobileAsset query cache and retry selecting voice", &v16, 2u);
      }

      mEMORY[0x277D79950] = [MEMORY[0x277D79950] sharedManager];
      [mEMORY[0x277D79950] resetCache];

      _fetchVoiceAsset_NoRetry2 = [(VSSpeechSpeakTask *)self _fetchVoiceAsset_NoRetry];
      [(VSSpeechSpeakTask *)self setError:?];
    }
  }

  v11 = VSGetLogDefault();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    instrumentMetrics = [(VSSpeechSpeakTask *)self instrumentMetrics];
    requestCreatedTimestamp = [instrumentMetrics requestCreatedTimestamp];
    voiceSelection = [(VSSpeechSpeakTask *)self voiceSelection];
    voiceData = [voiceSelection voiceData];
    v16 = 134218242;
    v17 = requestCreatedTimestamp;
    v18 = 2112;
    v19 = voiceData;
    _os_log_impl(&dword_2727E4000, v11, OS_LOG_TYPE_INFO, "Task %llu fetched voice %@", &v16, 0x16u);
  }
}

- (void)fetchVoiceResource
{
  mEMORY[0x277D79950] = [MEMORY[0x277D79950] sharedManager];
  request = [(VSSpeechSpeakTask *)self request];
  languageCode = [request languageCode];
  v6 = [mEMORY[0x277D79950] selectVoiceResourceAssetForLanguage:?];
  [(VSSpeechSpeakTask *)self setVoiceResource:?];

  voiceResource = [(VSSpeechSpeakTask *)self voiceResource];
  v7 = [voiceResource key];
  instrumentMetrics = [(VSSpeechSpeakTask *)self instrumentMetrics];
  [instrumentMetrics setVoiceResourceAssetKey:?];
}

- (void)resumePlayback
{
  taskAuxiliaryQueue = [(VSSpeechSpeakTask *)self taskAuxiliaryQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__VSSpeechSpeakTask_Utilities__resumePlayback__block_invoke;
  block[3] = &unk_279E4BAC8;
  block[4] = self;
  dispatch_sync(taskAuxiliaryQueue, block);
}

void __46__VSSpeechSpeakTask_Utilities__resumePlayback__block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) isCancelled] & 1) == 0)
  {
    v2 = [*(a1 + 32) playbackService];
    v3 = [v2 start];

    if ([*(a1 + 32) isCancelled])
    {
      v4 = [*(a1 + 32) playbackService];
      [v4 stop];
    }
  }
}

- (void)pausePlayback
{
  taskAuxiliaryQueue = [(VSSpeechSpeakTask *)self taskAuxiliaryQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__VSSpeechSpeakTask_Utilities__pausePlayback__block_invoke;
  block[3] = &unk_279E4BAC8;
  block[4] = self;
  dispatch_sync(taskAuxiliaryQueue, block);
}

void __45__VSSpeechSpeakTask_Utilities__pausePlayback__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) playbackService];
  [v1 pause];
}

- (void)waitUntilAudioFinished
{
  taskAuxiliaryQueue = [(VSSpeechSpeakTask *)self taskAuxiliaryQueue];
  dispatch_sync(taskAuxiliaryQueue, &__block_literal_global_35);

  playbackService = [(VSSpeechSpeakTask *)self playbackService];
  [playbackService flushAndStop];

  error = [(VSSpeechSpeakTask *)self error];

  if (!error)
  {
    playbackService2 = [(VSSpeechSpeakTask *)self playbackService];
    error2 = [playbackService2 error];
    [(VSSpeechSpeakTask *)self setError:?];
  }
}

- (void)startPlaybackServiceWithAudioSessionID:(unsigned int)d
{
  v36 = *MEMORY[0x277D85DE8];
  playbackService = [(VSSpeechSpeakTask *)self playbackService];

  if (playbackService)
  {
    v5 = VSGetLogDefault();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_2727E4000, v5, OS_LOG_TYPE_DEBUG, "playbackService is initialized already.", buf, 2u);
    }
  }

  else
  {
    kdebug_trace();
    v6 = [VSAudioPlaybackService alloc];
    streamAudio = [(VSSpeechSpeakTask *)self streamAudio];
    if (streamAudio)
    {
      [(VSSpeechSpeakTask *)self streamAudio];
    }

    else
    {
      [(VSSpeechSpeakTask *)self compressedAudio];
    }
    v8 = ;
    if (v8)
    {
      [(uint8_t *)buf asbd];
    }

    else
    {
      v33 = 0;
      v32 = 0u;
      *buf = 0u;
    }

    request = [(VSSpeechSpeakTask *)self request];
    accessoryID = [request accessoryID];
    v11 = [VSAudioPlaybackService initWithAudioSessionID:v6 asbd:"initWithAudioSessionID:asbd:useAVSBAR:" useAVSBAR:?];
    [(VSSpeechSpeakTask *)self setPlaybackService:?];

    playbackService2 = [(VSSpeechSpeakTask *)self playbackService];
    outputRouteInfo = [playbackService2 outputRouteInfo];
    audioRouteName = [outputRouteInfo audioRouteName];
    instrumentMetrics = [(VSSpeechSpeakTask *)self instrumentMetrics];
    [instrumentMetrics setAudioOutputRoute:?];

    playbackService3 = [(VSSpeechSpeakTask *)self playbackService];

    if (playbackService3)
    {
      taskAuxiliaryQueue = [(VSSpeechSpeakTask *)self taskAuxiliaryQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __71__VSSpeechSpeakTask_Utilities__startPlaybackServiceWithAudioSessionID___block_invoke;
      block[3] = &unk_279E4BAC8;
      block[4] = self;
      dispatch_async(taskAuxiliaryQueue, block);

      streamAudio2 = [(VSSpeechSpeakTask *)self streamAudio];
      [streamAudio2 duration];
      v20 = v19;

      if (v20 <= 0.0)
      {
        compressedAudio = [(VSSpeechSpeakTask *)self compressedAudio];
        [compressedAudio duration];
        v28 = v27;

        if (v28 <= 0.0)
        {
          return;
        }

        taskAuxiliaryQueue2 = [(VSSpeechSpeakTask *)self taskAuxiliaryQueue];
        v29[0] = MEMORY[0x277D85DD0];
        v29[1] = 3221225472;
        v29[2] = __71__VSSpeechSpeakTask_Utilities__startPlaybackServiceWithAudioSessionID___block_invoke_3;
        v29[3] = &unk_279E4BAC8;
        v29[4] = self;
        dispatch_async(taskAuxiliaryQueue2, v29);
      }

      else
      {
        taskAuxiliaryQueue2 = [(VSSpeechSpeakTask *)self streamAudio];
        v29[5] = MEMORY[0x277D85DD0];
        v29[6] = 3221225472;
        v29[7] = __71__VSSpeechSpeakTask_Utilities__startPlaybackServiceWithAudioSessionID___block_invoke_32;
        v29[8] = &unk_279E4BB18;
        v29[9] = self;
        [taskAuxiliaryQueue2 enumerateAudioWithBlock:?];
      }
    }

    else
    {
      v22 = VSGetLogDefault();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2727E4000, v22, OS_LOG_TYPE_ERROR, "Can't create VSAudioPlaybackService", buf, 2u);
      }

      v23 = MEMORY[0x277CCA9B8];
      v34 = *MEMORY[0x277CCA470];
      v35 = @"Can't create VSAudioPlaybackService";
      v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
      v25 = [v23 errorWithDomain:? code:? userInfo:?];
      [(VSSpeechSpeakTask *)self setError:?];
    }
  }
}

void __71__VSSpeechSpeakTask_Utilities__startPlaybackServiceWithAudioSessionID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) instrumentMetrics];
  v3 = [v2 audioStartTimestampDiffs];

  if (!v3)
  {
    if ([*(a1 + 32) isCancelled])
    {

      kdebug_trace();
    }

    else
    {
      v4 = VSGetLogDefault();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        *v9 = 0;
        _os_log_debug_impl(&dword_2727E4000, v4, OS_LOG_TYPE_DEBUG, "Starting AudioQueue", v9, 2u);
      }

      mach_absolute_time();
      v5 = [*(a1 + 32) playbackService];
      v6 = [v5 start];
      [*(a1 + 32) setError:?];

      mach_absolute_time();
      v7 = [*(a1 + 32) instrumentMetrics];
      [v7 setAudioStartTimestampDiffs:?];

      kdebug_trace();
      if ([*(a1 + 32) isCancelled])
      {
        v8 = [*(a1 + 32) playbackService];
        [v8 stop];
      }
    }
  }
}

void __71__VSSpeechSpeakTask_Utilities__startPlaybackServiceWithAudioSessionID___block_invoke_32(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v9 = [*(a1 + 32) taskAuxiliaryQueue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __71__VSSpeechSpeakTask_Utilities__startPlaybackServiceWithAudioSessionID___block_invoke_2;
  v12[3] = &unk_279E4BAF0;
  v12[4] = *(a1 + 32);
  v13 = v7;
  v14 = v8;
  v15 = a3;
  v10 = v8;
  v11 = v7;
  dispatch_async(v9, v12);
}

void __71__VSSpeechSpeakTask_Utilities__startPlaybackServiceWithAudioSessionID___block_invoke_3(uint64_t a1)
{
  v7 = [*(a1 + 32) playbackService];
  v2 = [*(a1 + 32) compressedAudio];
  v3 = [v2 audioData];
  v4 = [*(a1 + 32) compressedAudio];
  [v4 packetCount];
  v5 = [*(a1 + 32) compressedAudio];
  v6 = [v5 packetDescriptions];
  [v7 enqueue:? packetCount:? packetDescriptions:?];
}

void __71__VSSpeechSpeakTask_Utilities__startPlaybackServiceWithAudioSessionID___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) playbackService];
  [v1 enqueue:? packetCount:? packetDescriptions:?];
}

- (void)speakCachedAudio
{
  mach_absolute_time();
  instrumentMetrics = [(VSSpeechSpeakTask *)self instrumentMetrics];
  [instrumentMetrics setSynthesisBeginTimestamp:?];

  instrumentMetrics2 = [(VSSpeechSpeakTask *)self instrumentMetrics];
  [instrumentMetrics2 synthesisBeginTimestamp];
  instrumentMetrics3 = [(VSSpeechSpeakTask *)self instrumentMetrics];
  [instrumentMetrics3 setSynthesisEndTimestamp:?];

  speechCache = [(VSSpeechSpeakTask *)self speechCache];
  audio = [speechCache audio];
  [(VSSpeechSpeakTask *)self setCompressedAudio:?];

  timingInfos = [speechCache timingInfos];
  [(VSSpeechSpeakTask *)self setTimingInfos:?];

  request = [(VSSpeechSpeakTask *)self request];
  [request audioSessionID];
  [(VSSpeechSpeakTask *)self startPlaybackServiceWithAudioSessionID:?];

  taskAuxiliaryQueue = [(VSSpeechSpeakTask *)self taskAuxiliaryQueue];
  dispatch_sync(taskAuxiliaryQueue, &__block_literal_global_3375);

  if (([(VSSpeechSpeakTask *)self isCancelled]& 1) == 0)
  {
    error = [(VSSpeechSpeakTask *)self error];

    if (!error)
    {
      [(VSSpeechSpeakTask *)self reportSpeechStart];
      timingInfos2 = [speechCache timingInfos];
      [(VSSpeechSpeakTask *)self setObserverForWordTimings:?];

      playbackService = [(VSSpeechSpeakTask *)self playbackService];
      [playbackService flushAndStop];

      playbackService2 = [(VSSpeechSpeakTask *)self playbackService];
      error2 = [playbackService2 error];
      [(VSSpeechSpeakTask *)self setError:?];
    }
  }
}

- (void)prepareForSynthesis
{
  v51 = *MEMORY[0x277D85DE8];
  instrumentMetrics = [(VSSpeechSpeakTask *)self instrumentMetrics];
  [instrumentMetrics setSourceOfTTS:?];

  v4 = +[VSSiriServerConfiguration defaultConfig];
  experimentIdentifier = [v4 experimentIdentifier];
  instrumentMetrics2 = [(VSSpeechSpeakTask *)self instrumentMetrics];
  [instrumentMetrics2 setExperimentIdentifier:?];

  prewarmService = [(VSSpeechSpeakTask *)self prewarmService];
  voiceSelection = [(VSSpeechSpeakTask *)self voiceSelection];
  voiceResource = [(VSSpeechSpeakTask *)self voiceResource];
  v10 = [prewarmService cachedEngineForVoice:? resources:?];

  if (v10)
  {
    v11 = v10;
  }

  else
  {
    prewarmService2 = [(VSSpeechSpeakTask *)self prewarmService];
    voiceSelection2 = [(VSSpeechSpeakTask *)self voiceSelection];
    voiceResource2 = [(VSSpeechSpeakTask *)self voiceResource];
    v11 = [prewarmService2 loadEngineForVoice:? resources:?];

    if (!v11)
    {
      v35 = MEMORY[0x277CCA9B8];
      v49 = *MEMORY[0x277CCA470];
      v50 = @"Can't create VSSpeechEngine";
      v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
      v37 = [v35 errorWithDomain:? code:? userInfo:?];
      [(VSSpeechSpeakTask *)self setError:?];

      v11 = 0;
      goto LABEL_28;
    }
  }

  instrumentMetrics3 = [(VSSpeechSpeakTask *)self instrumentMetrics];
  [instrumentMetrics3 setIsWarmStart:?];

  v16 = [VSStreamAudioData alloc];
  [(uint8_t *)buf asbd];
  v17 = [(VSStreamAudioData *)v16 initWithASBD:?];
  [(VSSpeechSpeakTask *)self setStreamAudio:?];

  request = [(VSSpeechSpeakTask *)self request];
  [request volume];
  if (v19 == 0.0)
  {
    voiceResource3 = [(VSSpeechSpeakTask *)self voiceResource];
    [voiceResource3 volume];
    if (v21 == 0.0)
    {
      [v11 volume];
    }

    [v11 setVolume:?];
  }

  else
  {
    [v11 setVolume:?];
  }

  request2 = [(VSSpeechSpeakTask *)self request];
  [request2 pitch];
  if (v23 == 0.0)
  {
    voiceResource4 = [(VSSpeechSpeakTask *)self voiceResource];
    [voiceResource4 pitch];
    if (v25 == 0.0)
    {
      [v11 pitch];
    }

    [v11 setPitch:?];
  }

  else
  {
    [v11 setPitch:?];
  }

  request3 = [(VSSpeechSpeakTask *)self request];
  [request3 rate];
  if (v27 == 0.0)
  {
    voiceResource5 = [(VSSpeechSpeakTask *)self voiceResource];
    [voiceResource5 rate];
    if (v29 == 0.0)
    {
      [v11 rate];
    }

    [v11 setRate:?];
  }

  else
  {
    [v11 setRate:?];
  }

  request4 = [(VSSpeechSpeakTask *)self request];
  powerProfile = [request4 powerProfile];

  if (!powerProfile)
  {
    v32 = objc_alloc_init(MEMORY[0x277CEF350]);
    v46 = 0;
    v33 = [v32 currentPowerPolicyWithError:?];
    v34 = 0;
    if (v33)
    {
      [v45 ttsPolicy];
    }

    else
    {
      v38 = VSGetLogDefault();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v48 = v34;
        _os_log_error_impl(&dword_2727E4000, v38, OS_LOG_TYPE_ERROR, "Unable to get power policy from Siri, error: %@", buf, 0xCu);
      }
    }
  }

  [v11 setPowerProfile:?];
  v39 = [VSVoiceBooster alloc];
  [(uint8_t *)buf asbd];
  [v11 pcmBufferSize];
  v40 = [VSVoiceBooster initWithStreamDescription:v39 pcmBufferSize:"initWithStreamDescription:pcmBufferSize:"];
  [(VSSpeechSpeakTask *)self setVoiceBooster:?];

  voiceSelection3 = [(VSSpeechSpeakTask *)self voiceSelection];
  voiceData = [voiceSelection3 voiceData];
  request5 = [(VSSpeechSpeakTask *)self request];
  [request5 volume];
  [voiceData gainDecibelWithVolume:?];
  voiceBooster = [(VSSpeechSpeakTask *)self voiceBooster];
  [voiceBooster setVoiceBoostGainDecibels:?];

  [(VSSpeechSpeakTask *)self setEngine:?];
LABEL_28:
}

@end