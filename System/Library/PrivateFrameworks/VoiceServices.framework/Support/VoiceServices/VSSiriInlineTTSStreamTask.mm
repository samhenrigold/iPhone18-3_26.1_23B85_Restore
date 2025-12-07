@interface VSSiriInlineTTSStreamTask
- (BOOL)waitForNewData:(double)data;
- (VSSiriInlineTTSStreamTask)init;
- (VSSiriInlineTTSStreamTask)initWithRequest:(id)request withStreamID:(id)d;
- (VSSpeechServiceDelegate)delegate;
- (id)audioPowerProvider;
- (id)voiceKey;
- (void)cancel;
- (void)dealloc;
- (void)handleBegin:(id)begin;
- (void)handleChunk:(id)chunk;
- (void)handleEnd:(id)end;
- (void)handleStreamNotification:(id)notification;
- (void)main;
- (void)reportFinish;
- (void)reportInstrumentMetrics;
- (void)reportSpeechStart;
- (void)reportTimingInfo;
- (void)resume;
- (void)signalNewDataWithError:(id)error;
- (void)startPlayback;
- (void)suspend;
- (void)synthesisCore:(id)core didReceiveAudio:(id)audio;
- (void)synthesisCore:(id)core didReceiveProcessingWordTimingInfo:(id)info;
- (void)synthesisCore:(id)core didReceiveWordTimingInfo:(id)info;
@end

@implementation VSSiriInlineTTSStreamTask

- (VSSpeechServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)synthesisCore:(id)core didReceiveWordTimingInfo:(id)info
{
  infoCopy = info;
  finalTimingInfo = [(VSSiriInlineTTSStreamTask *)self finalTimingInfo];
  [finalTimingInfo addObjectsFromArray:?];
}

- (void)synthesisCore:(id)core didReceiveProcessingWordTimingInfo:(id)info
{
  coreCopy = core;
  infoCopy = info;
  delegate = [(VSSiriInlineTTSStreamTask *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    objc_initWeak(&location, self);
    playbackServices = [(VSSiriInlineTTSStreamTask *)self playbackServices];
    v11 = MEMORY[0x277D85DD0];
    objc_copyWeak(&v12, &location);
    [playbackServices setBoundaryTimeObserverForTimingInfos:v11 usingBlock:{3221225472, __78__VSSiriInlineTTSStreamTask_synthesisCore_didReceiveProcessingWordTimingInfo___block_invoke, &unk_279E4B9C0}];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

void __78__VSSiriInlineTTSStreamTask_synthesisCore_didReceiveProcessingWordTimingInfo___block_invoke(uint64_t a1, void *a2)
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

- (void)synthesisCore:(id)core didReceiveAudio:(id)audio
{
  v36 = *MEMORY[0x277D85DE8];
  audioCopy = audio;
  error = [(VSSiriInlineTTSStreamTask *)self error];

  if (!error)
  {
    playbackServices = [(VSSiriInlineTTSStreamTask *)self playbackServices];

    if (!playbackServices)
    {
      v8 = VSGetLogDefault();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v31) = 0;
        _os_log_impl(&dword_2727E4000, v8, OS_LOG_TYPE_DEFAULT, "Initializing fallback playback service", &v31, 2u);
      }

      v9 = [VSAudioPlaybackService alloc];
      request = [(VSSiriInlineTTSStreamTask *)self request];
      [request audioSessionID];
      if (audioCopy)
      {
        [&v31 asbd];
      }

      else
      {
        v33 = 0;
        v31 = 0u;
        v32 = 0u;
      }

      v11 = [(VSSiriInlineTTSStreamTask *)self request:v31];
      accessoryID = [v11 accessoryID];
      v13 = [VSAudioPlaybackService initWithAudioSessionID:v9 asbd:"initWithAudioSessionID:asbd:useAVSBAR:" useAVSBAR:?];
      [(VSSiriInlineTTSStreamTask *)self setPlaybackServices:?];

      playbackServices2 = [(VSSiriInlineTTSStreamTask *)self playbackServices];
      outputRouteInfo = [playbackServices2 outputRouteInfo];
      audioRouteName = [outputRouteInfo audioRouteName];
      instrumentMetrics = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
      [instrumentMetrics setAudioOutputRoute:?];

      playbackServices3 = [(VSSiriInlineTTSStreamTask *)self playbackServices];

      if (!playbackServices3)
      {
        v29 = MEMORY[0x277CCA9B8];
        v34 = *MEMORY[0x277CCA450];
        v35 = @"Unable to create playback service";
        instrumentMetrics5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
        v30 = [v29 errorWithDomain:? code:? userInfo:?];
        [(VSSiriInlineTTSStreamTask *)self setError:?];

LABEL_15:
        goto LABEL_16;
      }

      mach_absolute_time();
      playbackServices4 = [(VSSiriInlineTTSStreamTask *)self playbackServices];
      start = [playbackServices4 start];

      if (start)
      {
        [(VSSiriInlineTTSStreamTask *)self setError:?];
      }

      mach_absolute_time();
      instrumentMetrics2 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
      [instrumentMetrics2 setAudioStartTimestampDiffs:?];
    }

    instrumentMetrics3 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
    speechBeginTimestamp = [instrumentMetrics3 speechBeginTimestamp];

    if (!speechBeginTimestamp)
    {
      mach_absolute_time();
      instrumentMetrics4 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
      [instrumentMetrics4 setSpeechBeginTimestamp:?];

      [(VSSiriInlineTTSStreamTask *)self reportSpeechStart];
    }

    playbackServices5 = [(VSSiriInlineTTSStreamTask *)self playbackServices];
    audioData = [audioCopy audioData];
    [audioCopy packetCount];
    packetDescriptions = [audioCopy packetDescriptions];
    [playbackServices5 enqueue:? packetCount:? packetDescriptions:?];

    instrumentMetrics5 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
    [audioCopy duration];
    [instrumentMetrics5 audioDuration];
    [instrumentMetrics5 setAudioDuration:?];
    goto LABEL_15;
  }

LABEL_16:
}

- (id)audioPowerProvider
{
  playbackServices = [(VSSiriInlineTTSStreamTask *)self playbackServices];
  audioPowerProvider = [playbackServices audioPowerProvider];

  return audioPowerProvider;
}

- (void)reportInstrumentMetrics
{
  v18 = *MEMORY[0x277D85DE8];
  delegate = [(VSSiriInlineTTSStreamTask *)self delegate];
  request = [(VSSiriInlineTTSStreamTask *)self request];
  instrumentMetrics = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
  [delegate speechRequest:? didReportInstrumentMetrics:?];

  v6 = VSGetLogDefault();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    instrumentMetrics2 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
    requestCreatedTimestamp = [instrumentMetrics2 requestCreatedTimestamp];
    instrumentMetrics3 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
    v14 = 134218242;
    v15 = requestCreatedTimestamp;
    v16 = 2112;
    v17 = instrumentMetrics3;
    _os_log_impl(&dword_2727E4000, v6, OS_LOG_TYPE_DEFAULT, "Stream task %llu: Instrument metric: %@", &v14, 0x16u);
  }

  v10 = +[VSDiagnosticService defaultService];
  instrumentMetrics4 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
  dictionaryMetrics = [instrumentMetrics4 dictionaryMetrics];
  instrumentMetrics5 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
  [instrumentMetrics5 requestCreatedTimestamp];
  [v10 dumpInstrumentMetrics:? withTimestamp:?];
}

- (void)reportTimingInfo
{
  delegate = [(VSSiriInlineTTSStreamTask *)self delegate];
  request = [(VSSiriInlineTTSStreamTask *)self request];
  finalTimingInfo = [(VSSiriInlineTTSStreamTask *)self finalTimingInfo];
  [delegate speechRequest:? didReceiveTimingInfo:?];
}

- (void)reportFinish
{
  v47 = *MEMORY[0x277D85DE8];
  delegate = [(VSSiriInlineTTSStreamTask *)self delegate];
  request = [(VSSiriInlineTTSStreamTask *)self request];
  [(VSSiriInlineTTSStreamTask *)self isCancelled];
  error = [(VSSiriInlineTTSStreamTask *)self error];
  [delegate speechRequest:? didStopWithSuccess:? phonemesSpoken:? error:?];

  error2 = [(VSSiriInlineTTSStreamTask *)self error];
  if (!error2)
  {
    goto LABEL_5;
  }

  v7 = error2;
  error3 = [(VSSiriInlineTTSStreamTask *)self error];
  if ([error3 code] == 400)
  {

LABEL_5:
    voiceKey = [(VSSiriInlineTTSStreamTask *)self voiceKey];
    v12 = VSGetLogDefault();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      instrumentMetrics = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
      requestCreatedTimestamp = [instrumentMetrics requestCreatedTimestamp];
      if ([(VSSiriInlineTTSStreamTask *)self isCancelled])
      {
        v14 = @"Cancelled";
      }

      else
      {
        v14 = @"Finished";
      }

      request2 = [(VSSiriInlineTTSStreamTask *)self request];
      logText = [request2 logText];
      instrumentMetrics2 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
      voiceResourceAssetKey = [instrumentMetrics2 voiceResourceAssetKey];
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
      *buf = 134218754;
      v39 = requestCreatedTimestamp;
      v40 = 2112;
      v41 = v14;
      v42 = 2112;
      v43 = logText;
      v44 = 2114;
      v45 = v19;
      _os_log_impl(&dword_2727E4000, v12, OS_LOG_TYPE_DEFAULT, "Stream task %llu: %@ speaking text: '%@', %{public}@", buf, 0x2Au);
    }

    isCancelled = [(VSSiriInlineTTSStreamTask *)self isCancelled];
    siriInstrumentation = [(VSSiriInlineTTSStreamTask *)self siriInstrumentation];
    v22 = siriInstrumentation;
    if (isCancelled)
    {
      [siriInstrumentation instrumentSpeechCancelled];
    }

    else
    {
      instrumentMetrics3 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
      [instrumentMetrics3 audioDuration];
      instrumentMetrics4 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
      [instrumentMetrics4 ttsSynthesisLatency];
      instrumentMetrics5 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
      [instrumentMetrics5 cappedRealTimeFactor];
      instrumentMetrics6 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
      [instrumentMetrics6 promptCount];
      instrumentMetrics7 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
      [instrumentMetrics7 errorCode];
      [v22 instrumentSpeechEndedWithAudioDuration:? synthesisLatency:? realTimeFactor:? promptCount:? errorCode:?];
    }

    v28 = MEMORY[0x277D79918];
    instrumentMetrics8 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
    [v28 reportInstrumentMetrics:?];
    goto LABEL_14;
  }

  error4 = [(VSSiriInlineTTSStreamTask *)self error];
  code = [error4 code];

  if (code == 501)
  {
    goto LABEL_5;
  }

  v30 = VSGetLogDefault();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    instrumentMetrics9 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
    requestCreatedTimestamp2 = [instrumentMetrics9 requestCreatedTimestamp];
    error5 = [(VSSiriInlineTTSStreamTask *)self error];
    *buf = 134218242;
    v39 = requestCreatedTimestamp2;
    v40 = 2112;
    v41 = error5;
    _os_log_error_impl(&dword_2727E4000, v30, OS_LOG_TYPE_ERROR, "Error in stream task %llu, error: %@", buf, 0x16u);
  }

  voiceKey = [(VSSiriInlineTTSStreamTask *)self siriInstrumentation];
  v31 = MEMORY[0x277CCABB0];
  instrumentMetrics8 = [(VSSiriInlineTTSStreamTask *)self error];
  [instrumentMetrics8 code];
  v32 = [v31 numberWithInteger:?];
  v46 = v32;
  v33 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
  [voiceKey instrumentSpeechFailedWithErrorCodes:?];

LABEL_14:
}

- (id)voiceKey
{
  instrumentMetrics = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
  isServerTimeout = [instrumentMetrics isServerTimeout];

  if (isServerTimeout)
  {
    deviceTTSCore = [(VSSiriInlineTTSStreamTask *)self deviceTTSCore];
    selectedVoice = [deviceTTSCore selectedVoice];
    voiceData = [selectedVoice voiceData];
    descriptiveKey = [voiceData descriptiveKey];
  }

  else
  {
    deviceTTSCore = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
    descriptiveKey = [deviceTTSCore voiceAssetKey];
  }

  return descriptiveKey;
}

- (void)reportSpeechStart
{
  v25 = *MEMORY[0x277D85DE8];
  delegate = [(VSSiriInlineTTSStreamTask *)self delegate];
  request = [(VSSiriInlineTTSStreamTask *)self request];
  [delegate speechRequestDidStart:?];

  v5 = VSGetLogDefault();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    instrumentMetrics = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
    *buf = 134217984;
    requestCreatedTimestamp = [instrumentMetrics requestCreatedTimestamp];
    _os_log_impl(&dword_2727E4000, v5, OS_LOG_TYPE_INFO, "Task %llu started speaking", buf, 0xCu);
  }

  siriInstrumentation = [(VSSiriInlineTTSStreamTask *)self siriInstrumentation];
  instrumentMetrics2 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
  [instrumentMetrics2 sourceOfTTS];
  instrumentMetrics3 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
  [instrumentMetrics3 timeToSpeakLatency];
  playbackServices = [(VSSiriInlineTTSStreamTask *)self playbackServices];
  outputRouteInfo = [playbackServices outputRouteInfo];
  v8 = MEMORY[0x277D799C8];
  streamingVoice = [(VSSiriInlineTTSStreamTask *)self streamingVoice];
  type = [streamingVoice type];
  [v8 typeFromString:?];
  v9 = MEMORY[0x277D799C8];
  streamingVoice2 = [(VSSiriInlineTTSStreamTask *)self streamingVoice];
  quality = [streamingVoice2 quality];
  [v9 footprintFromString:?];
  streamingVoice3 = [(VSSiriInlineTTSStreamTask *)self streamingVoice];
  contentVersion = [streamingVoice3 contentVersion];
  [contentVersion integerValue];
  streamingResource = [(VSSiriInlineTTSStreamTask *)self streamingResource];
  resourceVersion = [streamingResource resourceVersion];
  [resourceVersion integerValue];
  LOBYTE(v16) = 0;
  [siriInstrumentation instrumentSpeechStartedWithSource:v16 customerPerceivedLatency:? audioOutputRoute:? voiceType:? voiceFootprint:? voiceVersion:? resourceVersion:? isWhisper:?];
}

- (void)suspend
{
  playbackServices = [(VSSiriInlineTTSStreamTask *)self playbackServices];
  [playbackServices pause];
}

- (void)resume
{
  playbackServices = [(VSSiriInlineTTSStreamTask *)self playbackServices];
  start = [playbackServices start];
}

- (void)cancel
{
  v3 = [MEMORY[0x277CCA9B8] errorWithDomain:? code:? userInfo:?];
  [(VSSiriInlineTTSStreamTask *)self setError:?];

  if (([(VSSiriInlineTTSStreamTask *)self isExecuting]& 1) != 0 || ([(VSSiriInlineTTSStreamTask *)self isCancelled]& 1) != 0 || ([(VSSiriInlineTTSStreamTask *)self isFinished]& 1) != 0)
  {
    v6.receiver = self;
    v6.super_class = VSSiriInlineTTSStreamTask;
    [(VSSiriInlineTTSStreamTask *)&v6 cancel];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = VSSiriInlineTTSStreamTask;
    [(VSSiriInlineTTSStreamTask *)&v7 cancel];
    [(VSSiriInlineTTSStreamTask *)self reportFinish];
  }

  playbackServices = [(VSSiriInlineTTSStreamTask *)self playbackServices];
  [playbackServices stop];

  v5 = [MEMORY[0x277CCA9B8] errorWithDomain:? code:? userInfo:?];
  [(VSSiriInlineTTSStreamTask *)self signalNewDataWithError:?];
}

- (void)main
{
  v102 = *MEMORY[0x277D85DE8];
  kdebug_trace();
  mach_absolute_time();
  instrumentMetrics = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
  [instrumentMetrics setSynthesisBeginTimestamp:?];

  v4 = +[VSSiriServerConfiguration defaultConfig];
  experimentIdentifier = [v4 experimentIdentifier];
  instrumentMetrics2 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
  [instrumentMetrics2 setExperimentIdentifier:?];

  kdebug_trace();
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  streamID = [(VSSiriInlineTTSStreamTask *)self streamID];
  [defaultCenter addObserver:? selector:? name:? object:?];

  v9 = +[VSInlineStreamService sharedService];
  streamID2 = [(VSSiriInlineTTSStreamTask *)self streamID];
  [v9 startStreamingWithId:?];

  do
  {
    [(VSSiriInlineTTSStreamTask *)self timeoutValue];
    v11 = [(VSSiriInlineTTSStreamTask *)self waitForNewData:?];
    error = [(VSSiriInlineTTSStreamTask *)self error];

    if (error)
    {
      break;
    }

    if ((v11 & 1) == 0)
    {
      instrumentMetrics3 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
      synthesisEndTimestamp = [instrumentMetrics3 synthesisEndTimestamp];

      if (!synthesisEndTimestamp)
      {
        instrumentMetrics4 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
        speechBeginTimestamp = [instrumentMetrics4 speechBeginTimestamp];

        v19 = VSGetLogDefault();
        v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
        if (speechBeginTimestamp)
        {
          if (v20)
          {
            *buf = 0;
            _os_log_error_impl(&dword_2727E4000, v19, OS_LOG_TYPE_ERROR, "Stream TTS network stall.", buf, 2u);
          }
        }

        else if (v20)
        {
          *buf = 0;
          _os_log_error_impl(&dword_2727E4000, v19, OS_LOG_TYPE_ERROR, "Inline streaming TTS timeout.", buf, 2u);
        }

        v21 = [MEMORY[0x277CCA9B8] errorWithDomain:? code:? userInfo:?];
        [(VSSiriInlineTTSStreamTask *)self setError:?];

        error2 = [(VSSiriInlineTTSStreamTask *)self error];
        [error2 code];
        instrumentMetrics5 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
        [instrumentMetrics5 setErrorCode:?];

        instrumentMetrics6 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
        [instrumentMetrics6 setIsServerTimeout:?];

        mach_absolute_time();
        instrumentMetrics7 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
        [instrumentMetrics7 setSynthesisEndTimestamp:?];

        kdebug_trace();
        notify_post([*MEMORY[0x277D79A18] UTF8String]);
        break;
      }
    }

    instrumentMetrics8 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
    synthesisEndTimestamp2 = [instrumentMetrics8 synthesisEndTimestamp];
  }

  while (!synthesisEndTimestamp2);
  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 removeObserver:?];

  if (([(VSSiriInlineTTSStreamTask *)self isCancelled]& 1) != 0)
  {
    retryDeviceOnNetworkStall = 0;
  }

  else
  {
    instrumentMetrics9 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
    if ([instrumentMetrics9 errorCode] == 701)
    {
      request = [(VSSiriInlineTTSStreamTask *)self request];
      retryDeviceOnNetworkStall = [request retryDeviceOnNetworkStall];
    }

    else
    {
      retryDeviceOnNetworkStall = 0;
    }
  }

  if (([(VSSiriInlineTTSStreamTask *)self isCancelled]& 1) != 0 || ([(VSSiriInlineTTSStreamTask *)self error], v30 = objc_claimAutoreleasedReturnValue(), v30, !v30))
  {
    if (!retryDeviceOnNetworkStall)
    {
      goto LABEL_35;
    }
  }

  else
  {
    deviceTTSCore = [(VSSiriInlineTTSStreamTask *)self deviceTTSCore];
    request2 = [deviceTTSCore request];
    utterance = [request2 utterance];
    v34 = [utterance length];

    if (!v34)
    {
      v35 = MEMORY[0x277CCA9B8];
      v100 = *MEMORY[0x277CCA450];
      v101 = @"Missing utterance in the request (preprocessing missing?). Can't fallback to device TTS.";
      v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
      v37 = [v35 errorWithDomain:? code:? userInfo:?];
      [(VSSiriInlineTTSStreamTask *)self setError:?];

      if ((retryDeviceOnNetworkStall & 1) == 0)
      {
        goto LABEL_35;
      }
    }
  }

  v38 = VSGetLogDefault();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
  {
    error3 = [(VSSiriInlineTTSStreamTask *)self error];
    instrumentMetrics10 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
    errorCode = [instrumentMetrics10 errorCode];
    *buf = 138412546;
    v97 = error3;
    v98 = 1024;
    v99 = errorCode;
    _os_log_error_impl(&dword_2727E4000, v38, OS_LOG_TYPE_ERROR, "Streaming error: %@, error_code: %d", buf, 0x12u);
  }

  [(VSSiriInlineTTSStreamTask *)self setServerAudio:?];
  finalTimingInfo = [(VSSiriInlineTTSStreamTask *)self finalTimingInfo];
  [finalTimingInfo removeAllObjects];

  [(VSSiriInlineTTSStreamTask *)self setError:?];
  playbackServices = [(VSSiriInlineTTSStreamTask *)self playbackServices];
  [playbackServices stop];

  [(VSSiriInlineTTSStreamTask *)self setPlaybackServices:?];
  if ((retryDeviceOnNetworkStall & 1) != 0 || (-[VSSiriInlineTTSStreamTask instrumentMetrics](self, "instrumentMetrics"), v41 = objc_claimAutoreleasedReturnValue(), v42 = [v41 speechBeginTimestamp], v41, v42))
  {
    v43 = MEMORY[0x277D79940];
    request3 = [(VSSiriInlineTTSStreamTask *)self request];
    languageCode = [request3 languageCode];
    v46 = [v43 localizedInterstitialStringForKey:? language:?];

    v47 = MEMORY[0x277CCACA8];
    if (v46)
    {
      v48 = v46;
    }

    else
    {
      v48 = &stru_2881CBD18;
    }

    deviceTTSCore2 = [(VSSiriInlineTTSStreamTask *)self deviceTTSCore];
    request4 = [deviceTTSCore2 request];
    utterance2 = [request4 utterance];
    v52 = [v47 stringWithFormat:v48, utterance2];
    deviceTTSCore3 = [(VSSiriInlineTTSStreamTask *)self deviceTTSCore];
    request5 = [deviceTTSCore3 request];
    [request5 setUtterance:?];

    v55 = MEMORY[0x277CCACA8];
    deviceTTSCore4 = [(VSSiriInlineTTSStreamTask *)self deviceTTSCore];
    request6 = [deviceTTSCore4 request];
    text = [request6 text];
    v59 = [v55 stringWithFormat:v48, text];
    deviceTTSCore5 = [(VSSiriInlineTTSStreamTask *)self deviceTTSCore];
    request7 = [deviceTTSCore5 request];
    [request7 setText:?];
  }

  deviceTTSCore6 = [(VSSiriInlineTTSStreamTask *)self deviceTTSCore];
  [deviceTTSCore6 start];

  deviceTTSCore7 = [(VSSiriInlineTTSStreamTask *)self deviceTTSCore];
  error4 = [deviceTTSCore7 error];
  [(VSSiriInlineTTSStreamTask *)self setError:?];

  instrumentMetrics11 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
  [instrumentMetrics11 setIsServerStreamTTS:?];

  instrumentMetrics12 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
  [instrumentMetrics12 setIsServerTTS:?];

  instrumentMetrics13 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
  [instrumentMetrics13 setIsServerTimeout:?];

  instrumentMetrics14 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
  [instrumentMetrics14 setSourceOfTTS:?];

  deviceTTSCore8 = [(VSSiriInlineTTSStreamTask *)self deviceTTSCore];
  selectedVoice = [deviceTTSCore8 selectedVoice];
  v71 = [selectedVoice key];
  instrumentMetrics15 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
  [instrumentMetrics15 setVoiceAssetKey:?];

  deviceTTSCore9 = [(VSSiriInlineTTSStreamTask *)self deviceTTSCore];
  selectedVoiceResource = [deviceTTSCore9 selectedVoiceResource];
  v75 = [selectedVoiceResource key];
  instrumentMetrics16 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
  [instrumentMetrics16 setVoiceResourceAssetKey:?];

LABEL_35:
  error5 = [(VSSiriInlineTTSStreamTask *)self error];

  if (error5)
  {
    error6 = [(VSSiriInlineTTSStreamTask *)self error];
    [error6 code];
    instrumentMetrics17 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
    [instrumentMetrics17 setErrorCode:?];
  }

  else
  {
    playbackServices2 = [(VSSiriInlineTTSStreamTask *)self playbackServices];
    [playbackServices2 flushAndStop];

    error6 = [(VSSiriInlineTTSStreamTask *)self playbackServices];
    instrumentMetrics17 = [error6 error];
    [(VSSiriInlineTTSStreamTask *)self setError:?];
  }

  mach_absolute_time();
  instrumentMetrics18 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
  [instrumentMetrics18 setSpeechEndTimestamp:?];

  error7 = [(VSSiriInlineTTSStreamTask *)self error];

  if (!error7)
  {
    [(VSSiriInlineTTSStreamTask *)self reportInstrumentMetrics];
    [(VSSiriInlineTTSStreamTask *)self reportTimingInfo];
    instrumentMetrics19 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
    sourceOfTTS = [instrumentMetrics19 sourceOfTTS];

    if (sourceOfTTS == 3)
    {
      v85 = +[VSDiagnosticService defaultService];
      serverAudio = [(VSSiriInlineTTSStreamTask *)self serverAudio];
      request8 = [(VSSiriInlineTTSStreamTask *)self request];
      [v85 dumpCompressedAudio:? forRequest:?];
LABEL_46:

      goto LABEL_47;
    }

    deviceTTSCore10 = [(VSSiriInlineTTSStreamTask *)self deviceTTSCore];
    streamAudio = [deviceTTSCore10 streamAudio];

    if (streamAudio)
    {
      v85 = +[VSDiagnosticService defaultService];
      serverAudio = [(VSSiriInlineTTSStreamTask *)self deviceTTSCore];
      request8 = [serverAudio streamAudio];
      request9 = [(VSSiriInlineTTSStreamTask *)self request];
      [v85 dumpStreamAudio:? forRequest:?];
LABEL_45:

      goto LABEL_46;
    }

    deviceTTSCore11 = [(VSSiriInlineTTSStreamTask *)self deviceTTSCore];
    compressedAudio = [deviceTTSCore11 compressedAudio];

    if (compressedAudio)
    {
      v85 = +[VSDiagnosticService defaultService];
      serverAudio = [(VSSiriInlineTTSStreamTask *)self deviceTTSCore];
      request8 = [serverAudio compressedAudio];
      request9 = [(VSSiriInlineTTSStreamTask *)self request];
      [v85 dumpCompressedAudio:? forRequest:?];
      goto LABEL_45;
    }
  }

LABEL_47:
  [(VSSiriInlineTTSStreamTask *)self reportFinish];
  kdebug_trace();
}

- (void)signalNewDataWithError:(id)error
{
  errorCopy = error;
  refreshTimeoutCondition = [(VSSiriInlineTTSStreamTask *)self refreshTimeoutCondition];
  [refreshTimeoutCondition lock];

  error = [(VSSiriInlineTTSStreamTask *)self error];

  if (!error)
  {
    [(VSSiriInlineTTSStreamTask *)self setError:?];
  }

  refreshTimeoutCondition2 = [(VSSiriInlineTTSStreamTask *)self refreshTimeoutCondition];
  [refreshTimeoutCondition2 signal];

  refreshTimeoutCondition3 = [(VSSiriInlineTTSStreamTask *)self refreshTimeoutCondition];
  [refreshTimeoutCondition3 unlock];
}

- (BOOL)waitForNewData:(double)data
{
  refreshTimeoutCondition = [(VSSiriInlineTTSStreamTask *)self refreshTimeoutCondition];
  [refreshTimeoutCondition lock];

  refreshTimeoutCondition2 = [(VSSiriInlineTTSStreamTask *)self refreshTimeoutCondition];
  v6 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:?];
  v7 = [refreshTimeoutCondition2 waitUntilDate:?];

  refreshTimeoutCondition3 = [(VSSiriInlineTTSStreamTask *)self refreshTimeoutCondition];
  [refreshTimeoutCondition3 unlock];

  return v7;
}

- (void)startPlayback
{
  mach_absolute_time();
  playbackServices = [(VSSiriInlineTTSStreamTask *)self playbackServices];
  start = [playbackServices start];

  mach_absolute_time();
  instrumentMetrics = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
  [instrumentMetrics setAudioStartTimestampDiffs:?];

  if (start)
  {
    [(VSSiriInlineTTSStreamTask *)self signalNewDataWithError:?];
  }

  else
  {
    mach_absolute_time();
    instrumentMetrics2 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
    [instrumentMetrics2 setSpeechBeginTimestamp:?];

    [(VSSiriInlineTTSStreamTask *)self reportSpeechStart];
  }
}

- (void)handleEnd:(id)end
{
  v29 = *MEMORY[0x277D85DE8];
  endCopy = end;
  v5 = VSGetLogDefault();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    streamId = [endCopy streamId];
    v7 = MEMORY[0x277CCABB0];
    [endCopy count];
    v8 = [v7 numberWithInteger:?];
    *buf = 138412546;
    v26 = streamId;
    v27 = 2112;
    v28 = v8;
    _os_log_impl(&dword_2727E4000, v5, OS_LOG_TYPE_INFO, "Handle stream end with streamId: %@, count: %@", buf, 0x16u);
  }

  instrumentMetrics = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
  synthesisEndTimestamp = [instrumentMetrics synthesisEndTimestamp];

  if (!synthesisEndTimestamp)
  {
    mach_absolute_time();
    instrumentMetrics2 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
    [instrumentMetrics2 setSynthesisEndTimestamp:?];

    kdebug_trace();
  }

  if ([endCopy errorCode] && objc_msgSend(endCopy, "errorCode") != 200)
  {
    v13 = MEMORY[0x277CCA9B8];
    v14 = MEMORY[0x277CCACA8];
    errorCode = [endCopy errorCode];
    errorMessage = [endCopy errorMessage];
    v24 = [v14 stringWithFormat:errorCode, errorMessage];
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
    v18 = [v13 errorWithDomain:? code:? userInfo:?];

    [(VSSiriInlineTTSStreamTask *)self signalNewDataWithError:?];
  }

  else
  {
    instrumentMetrics3 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
    if ([instrumentMetrics3 speechBeginTimestamp])
    {
    }

    else
    {
      instrumentMetrics4 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
      [instrumentMetrics4 audioDuration];
      v21 = v20;
      [(VSSiriInlineTTSStreamTask *)self bufferDurationLimit];
      v23 = v22;

      if (v21 < v23)
      {
        [(VSSiriInlineTTSStreamTask *)self startPlayback];
      }
    }

    [(VSSiriInlineTTSStreamTask *)self signalNewDataWithError:?];
  }
}

- (void)handleChunk:(id)chunk
{
  v53 = *MEMORY[0x277D85DE8];
  chunkCopy = chunk;
  v5 = VSGetLogDefault();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    streamId = [chunkCopy streamId];
    *buf = 138412290;
    *&buf[4] = streamId;
    _os_log_impl(&dword_2727E4000, v5, OS_LOG_TYPE_INFO, "Handle stream chunk with streamId: %@", buf, 0xCu);
  }

  instrumentMetrics = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
  serverFirstPacketTimestamp = [instrumentMetrics serverFirstPacketTimestamp];

  if (!serverFirstPacketTimestamp)
  {
    mach_absolute_time();
    instrumentMetrics2 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
    [instrumentMetrics2 setServerFirstPacketTimestamp:?];
  }

  mach_absolute_time();
  instrumentMetrics3 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
  [instrumentMetrics3 setServerLastPacketTimestamp:?];

  v11 = objc_alloc_init(MEMORY[0x277D79920]);
  playbackServices = [(VSSiriInlineTTSStreamTask *)self playbackServices];
  if (playbackServices)
  {
    v13 = playbackServices;
    [v48 asbd];
    v14 = DWORD2(v48[0]);

    if (v14 == 1819304813)
    {
      audioData = [chunkCopy audioData];
      [v11 populateWithPCMData:?];
      goto LABEL_12;
    }
  }

  else
  {
    v49 = 0;
    memset(v48, 0, sizeof(v48));
  }

  playbackServices2 = [(VSSiriInlineTTSStreamTask *)self playbackServices];
  if (!playbackServices2)
  {
    v47 = 0;
    memset(v46, 0, sizeof(v46));
    goto LABEL_15;
  }

  v17 = playbackServices2;
  [v46 asbd];
  v18 = DWORD2(v46[0]);

  if (v18 != 1869641075)
  {
LABEL_15:
    serverAudio = [MEMORY[0x277CCA9B8] errorWithDomain:? code:? userInfo:?];
    [(VSSiriInlineTTSStreamTask *)self signalNewDataWithError:?];
LABEL_27:

    goto LABEL_28;
  }

  audioData = [chunkCopy audioData];
  [v11 populateWithOpusData:?];
LABEL_12:

  playbackServices3 = [(VSSiriInlineTTSStreamTask *)self playbackServices];
  if (playbackServices3)
  {
    [&v43 asbd];
  }

  else
  {
    v45 = 0;
    v43 = 0u;
    v44 = 0u;
  }

  *buf = v43;
  v51 = v44;
  v52 = v45;
  [v11 setAsbd:{v43, v44, v45}];

  playbackServices4 = [(VSSiriInlineTTSStreamTask *)self playbackServices];
  audioData2 = [v11 audioData];
  [v11 packetCount];
  packetDescriptions = [v11 packetDescriptions];
  [playbackServices4 enqueue:? packetCount:? packetDescriptions:?];

  instrumentMetrics4 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
  [v11 duration];
  [instrumentMetrics4 audioDuration];
  [instrumentMetrics4 setAudioDuration:?];

  instrumentMetrics5 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
  [instrumentMetrics5 audioDuration];
  instrumentMetrics6 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
  [instrumentMetrics6 setServerStreamedAudioDuration:?];

  instrumentMetrics7 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
  [instrumentMetrics7 audioDuration];
  v29 = v28;
  [(VSSiriInlineTTSStreamTask *)self bufferDurationLimit];
  if (v29 < v30)
  {

    goto LABEL_20;
  }

  instrumentMetrics8 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
  speechBeginTimestamp = [instrumentMetrics8 speechBeginTimestamp];

  if (speechBeginTimestamp)
  {
LABEL_20:
    instrumentMetrics9 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
    speechBeginTimestamp2 = [instrumentMetrics9 speechBeginTimestamp];

    if (speechBeginTimestamp2)
    {
      date = [MEMORY[0x277CBEAA8] date];
      playbackBeginDate = [(VSSiriInlineTTSStreamTask *)self playbackBeginDate];
      [date timeIntervalSinceDate:?];

      instrumentMetrics10 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
      [instrumentMetrics10 audioDuration];

      [(VSSiriInlineTTSStreamTask *)self setTimeoutValue:?];
    }

    goto LABEL_25;
  }

  v38 = VSGetLogDefault();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_2727E4000, v38, OS_LOG_TYPE_INFO, "Reached buffer threshold. Start playing audio.", buf, 2u);
  }

  [(VSSiriInlineTTSStreamTask *)self startPlayback];
  date2 = [MEMORY[0x277CBEAA8] date];
  [(VSSiriInlineTTSStreamTask *)self setPlaybackBeginDate:?];

  instrumentMetrics11 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
  [instrumentMetrics11 audioDuration];
  [(VSSiriInlineTTSStreamTask *)self setTimeoutValue:?];

LABEL_25:
  [(VSSiriInlineTTSStreamTask *)self signalNewDataWithError:?];
  standardInstance = [MEMORY[0x277D79998] standardInstance];
  enableAudioDump = [standardInstance enableAudioDump];

  if (enableAudioDump)
  {
    serverAudio = [(VSSiriInlineTTSStreamTask *)self serverAudio];
    [serverAudio concatenateWithAudio:?];
    goto LABEL_27;
  }

LABEL_28:
}

- (void)handleBegin:(id)begin
{
  v53 = *MEMORY[0x277D85DE8];
  beginCopy = begin;
  speechSynthesisVoice = [beginCopy speechSynthesisVoice];
  [(VSSiriInlineTTSStreamTask *)self setStreamingVoice:?];

  speechSynthesisResource = [beginCopy speechSynthesisResource];
  [(VSSiriInlineTTSStreamTask *)self setStreamingResource:?];

  v7 = VSGetLogDefault();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    streamId = [beginCopy streamId];
    text = [beginCopy text];
    decoderStreamDescription = [v10 decoderStreamDescription];
    vsDescription = [decoderStreamDescription vsDescription];
    *buf = 138412802;
    *&buf[4] = streamId;
    *&buf[12] = 2112;
    *&buf[14] = text;
    *&buf[22] = 2112;
    *&buf[24] = vsDescription;
    _os_log_impl(&dword_2727E4000, v7, OS_LOG_TYPE_INFO, "Handle stream begin with streamId: %@, text: %@, decoder: %@", buf, 0x20u);
  }

  standardInstance = [MEMORY[0x277D79998] standardInstance];
  [standardInstance streamBufferDuration];
  if (v14 == 0.0)
  {
    [beginCopy streamingPlaybackBufferSize];
  }

  [(VSSiriInlineTTSStreamTask *)self setBufferDurationLimit:?];

  v15 = objc_alloc_init(MEMORY[0x277D79920]);
  [(VSSiriInlineTTSStreamTask *)self setServerAudio:?];

  decoderStreamDescription2 = [v16 decoderStreamDescription];
  [v47 asbdFromDescription:?];
  serverAudio = [(VSSiriInlineTTSStreamTask *)self serverAudio];
  *buf = v47[0];
  *&buf[16] = v47[1];
  v52 = v48;
  [serverAudio setAsbd:?];

  v19 = [VSAudioPlaybackService alloc];
  request = [(VSSiriInlineTTSStreamTask *)self request];
  [request audioSessionID];
  serverAudio2 = [(VSSiriInlineTTSStreamTask *)self serverAudio];
  if (serverAudio2)
  {
    [(uint8_t *)buf asbd];
  }

  else
  {
    v52 = 0;
    memset(buf, 0, sizeof(buf));
  }

  request2 = [(VSSiriInlineTTSStreamTask *)self request];
  accessoryID = [request2 accessoryID];
  v24 = [VSAudioPlaybackService initWithAudioSessionID:v19 asbd:"initWithAudioSessionID:asbd:useAVSBAR:" useAVSBAR:?];

  error = [(VSSiriInlineTTSStreamTask *)self error];
  if (error)
  {
  }

  else
  {
    instrumentMetrics = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
    errorCode = [instrumentMetrics errorCode];

    if (!errorCode)
    {
      [(VSSiriInlineTTSStreamTask *)self setPlaybackServices:?];
      text2 = [beginCopy text];
      instrumentMetrics2 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
      [instrumentMetrics2 setUtterance:?];

      speechSynthesisVoice2 = [beginCopy speechSynthesisVoice];
      vsDescription2 = [speechSynthesisVoice2 vsDescription];
      instrumentMetrics3 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
      [instrumentMetrics3 setVoiceAssetKey:?];

      speechSynthesisResource2 = [beginCopy speechSynthesisResource];
      vsDescription3 = [speechSynthesisResource2 vsDescription];
      instrumentMetrics4 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
      [instrumentMetrics4 setVoiceResourceAssetKey:?];

      playbackServices = [(VSSiriInlineTTSStreamTask *)self playbackServices];
      outputRouteInfo = [playbackServices outputRouteInfo];
      audioRouteName = [outputRouteInfo audioRouteName];
      instrumentMetrics5 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
      [instrumentMetrics5 setAudioOutputRoute:?];

      playbackServices2 = [(VSSiriInlineTTSStreamTask *)self playbackServices];

      if (playbackServices2)
      {
        goto LABEL_13;
      }

      v42 = MEMORY[0x277CCA9B8];
      v49 = *MEMORY[0x277CCA450];
      v50 = @"Unable to create playback service";
      v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
      error2 = [v42 errorWithDomain:? code:? userInfo:?];
      [(VSSiriInlineTTSStreamTask *)self signalNewDataWithError:?];
      goto LABEL_19;
    }
  }

  v28 = VSGetLogDefault();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    error2 = [(VSSiriInlineTTSStreamTask *)self error];
    code = [error2 code];
    if (code)
    {
      *buf = 134217984;
      *&buf[4] = code;
      _os_log_error_impl(&dword_2727E4000, v28, OS_LOG_TYPE_ERROR, "Ignoring stream begin: error already occurred: %ld", buf, 0xCu);
    }

    else
    {
      instrumentMetrics6 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
      errorCode2 = [instrumentMetrics6 errorCode];
      *buf = 134217984;
      *&buf[4] = errorCode2;
      _os_log_error_impl(&dword_2727E4000, v28, OS_LOG_TYPE_ERROR, "Ignoring stream begin: error already occurred: %ld", buf, 0xCu);
    }

LABEL_19:
  }

LABEL_13:
}

- (void)handleStreamNotification:(id)notification
{
  v18 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  instrumentMetrics = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
  [instrumentMetrics audioDuration];
  if (v6 <= 0.8)
  {
  }

  else
  {
    standardInstance = [MEMORY[0x277D79998] standardInstance];
    simulateNetworkStall = [standardInstance simulateNetworkStall];

    if (simulateNetworkStall)
    {
      v9 = VSGetLogDefault();
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
LABEL_15:

        goto LABEL_16;
      }

      object = [notificationCopy object];
      v16 = 138412290;
      v17 = object;
      _os_log_impl(&dword_2727E4000, v9, OS_LOG_TYPE_INFO, "Simulate network stall is on, ignore object %@", &v16, 0xCu);
LABEL_5:

      goto LABEL_15;
    }
  }

  object2 = [notificationCopy object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  object3 = [notificationCopy object];
  if (isKindOfClass)
  {
    [(VSSiriInlineTTSStreamTask *)self handleBegin:?];
  }

  else
  {
    objc_opt_class();
    v14 = objc_opt_isKindOfClass();

    object3 = [notificationCopy object];
    if (v14)
    {
      [(VSSiriInlineTTSStreamTask *)self handleChunk:?];
    }

    else
    {
      objc_opt_class();
      v15 = objc_opt_isKindOfClass();

      if ((v15 & 1) == 0)
      {
        v9 = VSGetLogDefault();
        if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_15;
        }

        object = [notificationCopy object];
        v16 = 138412290;
        v17 = object;
        _os_log_error_impl(&dword_2727E4000, v9, OS_LOG_TYPE_ERROR, "Unknown streaming object: %@", &v16, 0xCu);
        goto LABEL_5;
      }

      object3 = [notificationCopy object];
      [(VSSiriInlineTTSStreamTask *)self handleEnd:?];
    }
  }

LABEL_16:
}

- (void)dealloc
{
  v3 = +[VSInlineStreamService sharedService];
  streamID = [(VSSiriInlineTTSStreamTask *)self streamID];
  [v3 removeStreamId:?];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:?];

  v6.receiver = self;
  v6.super_class = VSSiriInlineTTSStreamTask;
  [(VSSiriInlineTTSStreamTask *)&v6 dealloc];
}

- (VSSiriInlineTTSStreamTask)initWithRequest:(id)request withStreamID:(id)d
{
  v36 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  dCopy = d;
  v31.receiver = self;
  v31.super_class = VSSiriInlineTTSStreamTask;
  v9 = [(VSSiriInlineTTSStreamTask *)&v31 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_request, request);
    objc_storeStrong(&v10->_streamID, d);
    v11 = objc_alloc_init(MEMORY[0x277D79938]);
    instrumentMetrics = v10->_instrumentMetrics;
    v10->_instrumentMetrics = v11;

    if ([requestCopy requestCreatedTimestamp])
    {
      [requestCopy requestCreatedTimestamp];
    }

    else
    {
      v13 = VSGetLogDefault();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2727E4000, v13, OS_LOG_TYPE_ERROR, "Using timestamp inside voiced for Stream task", buf, 2u);
      }

      mach_absolute_time();
    }

    [(VSInstrumentMetrics *)v10->_instrumentMetrics setRequestCreatedTimestamp:?];
    v14 = VSGetLogDefault();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      instrumentMetrics = [(VSSiriInlineTTSStreamTask *)v10 instrumentMetrics];
      requestCreatedTimestamp = [instrumentMetrics requestCreatedTimestamp];
      streamID = v10->_streamID;
      *buf = 134218242;
      v33 = requestCreatedTimestamp;
      v34 = 2112;
      v35 = streamID;
      _os_log_impl(&dword_2727E4000, v14, OS_LOG_TYPE_INFO, "Created Stream task %llu: streamID %@", buf, 0x16u);
    }

    array = [MEMORY[0x277CBEB18] array];
    finalTimingInfo = v10->_finalTimingInfo;
    v10->_finalTimingInfo = array;

    v20 = objc_alloc_init(MEMORY[0x277CCA928]);
    refreshTimeoutCondition = v10->_refreshTimeoutCondition;
    v10->_refreshTimeoutCondition = v20;

    standardInstance = [MEMORY[0x277D79998] standardInstance];
    [standardInstance serverTTSTimeout];
    if (v23 == 0.0)
    {
      v24 = +[VSSiriServerConfiguration defaultConfig];
      clientBundleIdentifier = [requestCopy clientBundleIdentifier];
      [v24 timeoutForAppId:?];
      v10->_timeoutValue = v26;
    }

    else
    {
      v10->_timeoutValue = v23;
    }

    [requestCopy canUseServerTTS];
    [(VSInstrumentMetrics *)v10->_instrumentMetrics setCanUseServerTTS:?];
    [(VSInstrumentMetrics *)v10->_instrumentMetrics setIsServerStreamTTS:?];
    [(VSInstrumentMetrics *)v10->_instrumentMetrics setIsServerTTS:?];
    [(VSInstrumentMetrics *)v10->_instrumentMetrics setIsSpeechRequest:?];
    [(VSInstrumentMetrics *)v10->_instrumentMetrics setSourceOfTTS:?];
    clientBundleIdentifier2 = [requestCopy clientBundleIdentifier];
    [(VSInstrumentMetrics *)v10->_instrumentMetrics setClientBundleIdentifier:?];

    v28 = [[VSDeviceTTSCore alloc] initWithRequest:?];
    deviceTTSCore = v10->_deviceTTSCore;
    v10->_deviceTTSCore = v28;

    [(VSDeviceTTSCore *)v10->_deviceTTSCore setDelegate:?];
    [(VSDeviceTTSCore *)v10->_deviceTTSCore setInstrumentMetrics:?];
  }

  return v10;
}

- (VSSiriInlineTTSStreamTask)init
{
  v2 = [MEMORY[0x277CBEAD8] exceptionWithName:? reason:? userInfo:?];
  objc_exception_throw(v2);
}

@end