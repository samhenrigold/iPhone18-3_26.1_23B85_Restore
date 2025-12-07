@interface VSSpeechServerTask
- (BOOL)isSpeaking;
- (BOOL)shouldDeferDeviceTTS;
- (BOOL)shouldRelyOnServerTTS;
- (VSSpeechServerTask)init;
- (VSSpeechServerTask)initWithRequest:(id)request shouldSpeak:(BOOL)speak;
- (VSSpeechServiceDelegate)delegate;
- (_opaque_pthread_cond_t)timeoutCondition;
- (_opaque_pthread_mutex_t)racingMutex;
- (id)audioPowerProvider;
- (id)eagerTaskHashForRequest:(id)request;
- (id)enqueueAudioData:(id)data;
- (id)handleDeviceSynthesis:(id)synthesis timingInfo:(id)info;
- (id)handleServerResponse:(id)response timingInfo:(id)info;
- (id)voiceKey;
- (void)cancel;
- (void)dealloc;
- (void)fallbackToDeviceSynthesis;
- (void)main;
- (void)ospreyCore:(id)core didReceiveAudio:(id)audio wordTimingInfo:(id)info;
- (void)proceedWithServerTTS;
- (void)proceedWithSpeechCache:(id)cache;
- (void)reportFinish;
- (void)reportInstrumentMetrics;
- (void)reportSpeechStart;
- (void)reportTimingInfo;
- (void)resume;
- (void)setObserverForWordTimings:(id)timings;
- (void)setRacingMutex:(_opaque_pthread_mutex_t *)mutex;
- (void)setTimeoutCondition:(_opaque_pthread_cond_t *)condition;
- (void)speakRetryPhrase;
- (void)suspend;
- (void)writeAudioIfNeeded:(id)needed;
@end

@implementation VSSpeechServerTask

- (void)setRacingMutex:(_opaque_pthread_mutex_t *)mutex
{
  v3 = *&mutex->__opaque[40];
  v5 = *&mutex->__sig;
  v4 = *&mutex->__opaque[8];
  *&self->_racingMutex.__opaque[24] = *&mutex->__opaque[24];
  *&self->_racingMutex.__opaque[40] = v3;
  *&self->_racingMutex.__sig = v5;
  *&self->_racingMutex.__opaque[8] = v4;
}

- (_opaque_pthread_mutex_t)racingMutex
{
  v3 = *&self[7].__sig;
  *&retstr->__sig = *&self[6].__opaque[40];
  *&retstr->__opaque[8] = v3;
  v4 = *&self[7].__opaque[24];
  *&retstr->__opaque[24] = *&self[7].__opaque[8];
  *&retstr->__opaque[40] = v4;
  return self;
}

- (void)setTimeoutCondition:(_opaque_pthread_cond_t *)condition
{
  v4 = *&condition->__opaque[8];
  v3 = *&condition->__opaque[24];
  *&self->_timeoutCondition.__sig = *&condition->__sig;
  *&self->_timeoutCondition.__opaque[8] = v4;
  *&self->_timeoutCondition.__opaque[24] = v3;
}

- (_opaque_pthread_cond_t)timeoutCondition
{
  v3 = *&self[8].__opaque[8];
  *&retstr->__sig = *&self[8].__sig;
  *&retstr->__opaque[8] = v3;
  *&retstr->__opaque[24] = *&self[8].__opaque[24];
  return self;
}

- (VSSpeechServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)ospreyCore:(id)core didReceiveAudio:(id)audio wordTimingInfo:(id)info
{
  coreCopy = core;
  audioCopy = audio;
  infoCopy = info;
  instrumentMetrics = [(VSSpeechServerTask *)self instrumentMetrics];
  voiceAssetKey = [instrumentMetrics voiceAssetKey];
  if (voiceAssetKey)
  {
    voiceKey = voiceAssetKey;
  }

  else
  {
    voice = [coreCopy voice];

    if (!voice)
    {
      goto LABEL_6;
    }

    instrumentMetrics = [coreCopy voice];
    voiceKey = [instrumentMetrics voiceKey];
    instrumentMetrics2 = [(VSSpeechServerTask *)self instrumentMetrics];
    [instrumentMetrics2 setVoiceAssetKey:?];
  }

LABEL_6:
  instrumentMetrics3 = [(VSSpeechServerTask *)self instrumentMetrics];
  voiceResourceAssetKey = [instrumentMetrics3 voiceResourceAssetKey];
  if (voiceResourceAssetKey)
  {
    v17 = voiceResourceAssetKey;
  }

  else
  {
    voiceResource = [coreCopy voiceResource];

    if (!voiceResource)
    {
      goto LABEL_11;
    }

    instrumentMetrics3 = [coreCopy voiceResource];
    v17 = [instrumentMetrics3 key];
    instrumentMetrics4 = [(VSSpeechServerTask *)self instrumentMetrics];
    [instrumentMetrics4 setVoiceResourceAssetKey:?];
  }

LABEL_11:
  v20 = [VSSpeechServerTask handleServerResponse:"handleServerResponse:timingInfo:" timingInfo:?];
}

- (id)audioPowerProvider
{
  playbackService = [(VSSpeechServerTask *)self playbackService];
  audioPowerProvider = [playbackService audioPowerProvider];

  return audioPowerProvider;
}

- (void)writeAudioIfNeeded:(id)needed
{
  neededCopy = needed;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = 0;
    v6 = neededCopy;
  }

  else
  {
    objc_opt_class();
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v5 = neededCopy;
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  v9 = neededCopy;
  v7 = v5;
  v8 = v6;
LABEL_5:
  speakTask = [(VSSpeechServerTask *)self speakTask];
  if (speakTask)
  {
  }

  else if (![(VSSpeechServerTask *)self shouldSpeak])
  {
    goto LABEL_13;
  }

  if (v8)
  {
    v11 = +[VSDiagnosticService defaultService];
    request = [(VSSpeechServerTask *)self request];
    [v11 dumpStreamAudio:? forRequest:?];
  }

  else
  {
    if (!v7)
    {
      goto LABEL_13;
    }

    v11 = +[VSDiagnosticService defaultService];
    request = [(VSSpeechServerTask *)self request];
    [v11 dumpCompressedAudio:? forRequest:?];
  }

LABEL_13:
  request2 = [(VSSpeechServerTask *)self request];
  outputPath = [request2 outputPath];
  path = [outputPath path];

  if (!path)
  {
    goto LABEL_22;
  }

  if (v8)
  {
    v16 = [v8 writeWaveToFilePath:?];
  }

  else
  {
    if (!v7)
    {
      v17 = 0;
      goto LABEL_19;
    }

    v16 = [v7 writeToFilePath:?];
  }

  v17 = v16 ^ 1;
LABEL_19:
  error = [(VSSpeechServerTask *)self error];

  if (!error && v17)
  {
    v19 = MEMORY[0x277CCA9B8];
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
    v21 = [v19 errorWithDomain:? code:? userInfo:?];
    [(VSSpeechServerTask *)self setError:?];
  }

LABEL_22:
}

- (void)reportFinish
{
  v83 = *MEMORY[0x277D85DE8];
  shouldSpeak = self->_shouldSpeak;
  delegate = [(VSSpeechServerTask *)self delegate];
  if (shouldSpeak)
  {
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      delegate2 = [(VSSpeechServerTask *)self delegate];
      request = [(VSSpeechServerTask *)self request];
      [(VSSpeechServerTask *)self isCancelled];
      error = [(VSSpeechServerTask *)self error];
      [delegate2 speechRequest:? didStopWithSuccess:? phonemesSpoken:? error:?];
LABEL_6:
    }
  }

  else
  {
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      delegate2 = [(VSSpeechServerTask *)self delegate];
      request = [(VSSpeechServerTask *)self request];
      error = [(VSSpeechServerTask *)self instrumentMetrics];
      error2 = [(VSSpeechServerTask *)self error];
      [delegate2 synthesisRequest:? didFinishWithInstrumentMetrics:? error:?];

      goto LABEL_6;
    }
  }

  speakTask = [(VSSpeechServerTask *)self speakTask];
  if (speakTask)
  {
    v12 = speakTask;
    speakTask2 = [(VSSpeechServerTask *)self speakTask];
    delegate3 = [speakTask2 delegate];
    v15 = objc_opt_respondsToSelector();

    if (v15)
    {
      speakTask3 = [(VSSpeechServerTask *)self speakTask];
      delegate4 = [speakTask3 delegate];
      speakTask4 = [(VSSpeechServerTask *)self speakTask];
      request2 = [speakTask4 request];
      [(VSSpeechServerTask *)self isCancelled];
      error3 = [(VSSpeechServerTask *)self error];
      [delegate4 speechRequest:? didStopWithSuccess:? phonemesSpoken:? error:?];
    }
  }

  error4 = [(VSSpeechServerTask *)self error];
  if (!error4)
  {
    goto LABEL_14;
  }

  v22 = error4;
  error5 = [(VSSpeechServerTask *)self error];
  if ([error5 code] == 400)
  {

LABEL_14:
    speakTask5 = [(VSSpeechServerTask *)self speakTask];
    if (!speakTask5)
    {
      [(VSSpeechServerTask *)self isEagerCache];
    }

    voiceKey = [(VSSpeechServerTask *)self voiceKey];
    v28 = VSGetLogDefault();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      instrumentMetrics = [(VSSpeechServerTask *)self instrumentMetrics];
      requestCreatedTimestamp = [instrumentMetrics requestCreatedTimestamp];
      isCancelled = [(VSSpeechServerTask *)self isCancelled];
      v30 = @"Finished";
      if (isCancelled)
      {
        v30 = @"Cancelled";
      }

      v60 = v30;
      isSpeaking = [(VSSpeechServerTask *)self isSpeaking];
      v32 = @"synthesizing";
      if (isSpeaking)
      {
        v32 = @"speaking";
      }

      v59 = v32;
      request3 = [(VSSpeechServerTask *)self request];
      logUtterance = [request3 logUtterance];
      v64 = [MEMORY[0x277CCABB0] numberWithBool:?];
      v33 = MEMORY[0x277CCABB0];
      instrumentMetrics2 = [(VSSpeechServerTask *)self instrumentMetrics];
      isServerTTS = [instrumentMetrics2 isServerTTS];
      if (isServerTTS)
      {
        instrumentMetrics3 = [(VSSpeechServerTask *)self instrumentMetrics];
        [instrumentMetrics3 isSynthesisCached];
      }

      v68 = [v33 numberWithInt:?];
      v34 = MEMORY[0x277CCABB0];
      instrumentMetrics4 = [(VSSpeechServerTask *)self instrumentMetrics];
      [instrumentMetrics4 isServerTimeout];
      v69 = [v34 numberWithBool:?];
      v36 = MEMORY[0x277CCABB0];
      instrumentMetrics5 = [(VSSpeechServerTask *)self instrumentMetrics];
      [instrumentMetrics5 isServerTTS];
      v70 = [v36 numberWithInt:?];
      v38 = MEMORY[0x277D79938];
      instrumentMetrics6 = [(VSSpeechServerTask *)self instrumentMetrics];
      [instrumentMetrics6 sourceOfTTS];
      v71 = [v38 stringOfSourceOfTTS:?];
      v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
      *buf = 134219010;
      v73 = requestCreatedTimestamp;
      v74 = 2112;
      v75 = v60;
      v76 = 2112;
      v77 = v59;
      v78 = 2112;
      v79 = logUtterance;
      v80 = 2114;
      v81 = v40;
      _os_log_impl(&dword_2727E4000, v28, OS_LOG_TYPE_DEFAULT, "Server task %llu: %@ %@ utterance: '%@', %{public}@", buf, 0x34u);

      if (isServerTTS)
      {
      }
    }

    isCancelled2 = [(VSSpeechServerTask *)self isCancelled];
    siriInstrumentation = [(VSSpeechServerTask *)self siriInstrumentation];
    v43 = siriInstrumentation;
    if (isCancelled2)
    {
      [siriInstrumentation instrumentSpeechCancelled];
    }

    else
    {
      instrumentMetrics7 = [(VSSpeechServerTask *)self instrumentMetrics];
      [instrumentMetrics7 audioDuration];
      instrumentMetrics8 = [(VSSpeechServerTask *)self instrumentMetrics];
      [instrumentMetrics8 ttsSynthesisLatency];
      instrumentMetrics9 = [(VSSpeechServerTask *)self instrumentMetrics];
      [instrumentMetrics9 cappedRealTimeFactor];
      instrumentMetrics10 = [(VSSpeechServerTask *)self instrumentMetrics];
      [instrumentMetrics10 promptCount];
      instrumentMetrics11 = [(VSSpeechServerTask *)self instrumentMetrics];
      [instrumentMetrics11 errorCode];
      [v43 instrumentSpeechEndedWithAudioDuration:? synthesisLatency:? realTimeFactor:? promptCount:? errorCode:?];
    }

    v49 = MEMORY[0x277D79918];
    instrumentMetrics12 = [(VSSpeechServerTask *)self instrumentMetrics];
    [v49 reportInstrumentMetrics:?];
    goto LABEL_30;
  }

  error6 = [(VSSpeechServerTask *)self error];
  code = [error6 code];

  if (code == 501)
  {
    goto LABEL_14;
  }

  v51 = VSGetLogDefault();
  if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
  {
    instrumentMetrics13 = [(VSSpeechServerTask *)self instrumentMetrics];
    requestCreatedTimestamp2 = [instrumentMetrics13 requestCreatedTimestamp];
    error7 = [(VSSpeechServerTask *)self error];
    *buf = 134218242;
    v73 = requestCreatedTimestamp2;
    v74 = 2112;
    v75 = error7;
    _os_log_error_impl(&dword_2727E4000, v51, OS_LOG_TYPE_ERROR, "Error in server task %llu, error: %@", buf, 0x16u);
  }

  voiceKey = [(VSSpeechServerTask *)self siriInstrumentation];
  v52 = MEMORY[0x277CCABB0];
  instrumentMetrics12 = [(VSSpeechServerTask *)self error];
  [instrumentMetrics12 code];
  v53 = [v52 numberWithInteger:?];
  v82 = v53;
  v54 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
  [voiceKey instrumentSpeechFailedWithErrorCodes:?];

LABEL_30:
}

- (id)voiceKey
{
  instrumentMetrics = [(VSSpeechServerTask *)self instrumentMetrics];
  isServerTTS = [instrumentMetrics isServerTTS];

  if ((isServerTTS & 1) == 0)
  {
    synthesisCore = [(VSSpeechServerTask *)self synthesisCore];
    selectedVoice = [synthesisCore selectedVoice];
    voiceData = [selectedVoice voiceData];
    descriptiveKey = [voiceData descriptiveKey];

    goto LABEL_5;
  }

  instrumentMetrics2 = [(VSSpeechServerTask *)self instrumentMetrics];
  sourceOfTTS = [instrumentMetrics2 sourceOfTTS];

  if (sourceOfTTS == 5)
  {
    synthesisCore = [(VSSpeechServerTask *)self ospreyCore];
    selectedVoice = [synthesisCore voice];
    descriptiveKey = [selectedVoice descriptiveKey];
LABEL_5:

    goto LABEL_7;
  }

  synthesisCore = [(VSSpeechServerTask *)self instrumentMetrics];
  descriptiveKey = [synthesisCore voiceAssetKey];
LABEL_7:

  return descriptiveKey;
}

- (void)reportInstrumentMetrics
{
  v44 = *MEMORY[0x277D85DE8];
  if (self->_shouldSpeak)
  {
    delegate = [(VSSpeechServerTask *)self delegate];
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      delegate2 = [(VSSpeechServerTask *)self delegate];
      request = [(VSSpeechServerTask *)self request];
      instrumentMetrics = [(VSSpeechServerTask *)self instrumentMetrics];
      [delegate2 speechRequest:? didReportInstrumentMetrics:?];
    }
  }

  speakTask = [(VSSpeechServerTask *)self speakTask];
  delegate3 = [speakTask delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    speakTask2 = [(VSSpeechServerTask *)self speakTask];
    instrumentMetrics2 = [speakTask2 instrumentMetrics];

    instrumentMetrics3 = [(VSSpeechServerTask *)self instrumentMetrics];
    voiceAssetKey = [instrumentMetrics3 voiceAssetKey];
    [instrumentMetrics2 setVoiceAssetKey:?];

    instrumentMetrics4 = [(VSSpeechServerTask *)self instrumentMetrics];
    voiceResourceAssetKey = [instrumentMetrics4 voiceResourceAssetKey];
    [instrumentMetrics2 setVoiceResourceAssetKey:?];

    instrumentMetrics5 = [(VSSpeechServerTask *)self instrumentMetrics];
    utterance = [instrumentMetrics5 utterance];
    [instrumentMetrics2 setUtterance:?];

    instrumentMetrics6 = [(VSSpeechServerTask *)self instrumentMetrics];
    [instrumentMetrics6 synthesisBeginTimestamp];
    [instrumentMetrics2 setSynthesisBeginTimestamp:?];

    instrumentMetrics7 = [(VSSpeechServerTask *)self instrumentMetrics];
    [instrumentMetrics7 synthesisEndTimestamp];
    [instrumentMetrics2 setSynthesisEndTimestamp:?];

    instrumentMetrics8 = [(VSSpeechServerTask *)self instrumentMetrics];
    [instrumentMetrics8 speechBeginTimestamp];
    [instrumentMetrics2 setSpeechBeginTimestamp:?];

    instrumentMetrics9 = [(VSSpeechServerTask *)self instrumentMetrics];
    [instrumentMetrics9 speechEndTimestamp];
    [instrumentMetrics2 setSpeechEndTimestamp:?];

    instrumentMetrics10 = [(VSSpeechServerTask *)self instrumentMetrics];
    [instrumentMetrics10 audioStartTimestampDiffs];
    [instrumentMetrics2 setAudioStartTimestampDiffs:?];

    instrumentMetrics11 = [(VSSpeechServerTask *)self instrumentMetrics];
    [instrumentMetrics11 audioDuration];
    [instrumentMetrics2 setAudioDuration:?];

    [instrumentMetrics2 requestCreatedTimestamp];
    instrumentMetrics12 = [(VSSpeechServerTask *)self instrumentMetrics];
    [instrumentMetrics12 requestCreatedTimestamp];
    [instrumentMetrics2 setEagerRequestCreatedTimestampDiffs:?];

    instrumentMetrics13 = [(VSSpeechServerTask *)self instrumentMetrics];
    [instrumentMetrics13 isServerTimeout];
    [instrumentMetrics2 setIsServerTimeout:?];

    speakTask3 = [(VSSpeechServerTask *)self speakTask];
    delegate4 = [speakTask3 delegate];
    speakTask4 = [(VSSpeechServerTask *)self speakTask];
    request2 = [speakTask4 request];
    instrumentMetrics14 = [(VSSpeechServerTask *)self instrumentMetrics];
    [delegate4 speechRequest:? didReportInstrumentMetrics:?];
  }

  v32 = VSGetLogDefault();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    instrumentMetrics15 = [(VSSpeechServerTask *)self instrumentMetrics];
    requestCreatedTimestamp = [instrumentMetrics15 requestCreatedTimestamp];
    instrumentMetrics16 = [(VSSpeechServerTask *)self instrumentMetrics];
    v40 = 134218242;
    v41 = requestCreatedTimestamp;
    v42 = 2112;
    v43 = instrumentMetrics16;
    _os_log_impl(&dword_2727E4000, v32, OS_LOG_TYPE_DEFAULT, "Server task %llu: Instrument metric: %@", &v40, 0x16u);
  }

  v36 = +[VSDiagnosticService defaultService];
  instrumentMetrics17 = [(VSSpeechServerTask *)self instrumentMetrics];
  dictionaryMetrics = [instrumentMetrics17 dictionaryMetrics];
  instrumentMetrics18 = [(VSSpeechServerTask *)self instrumentMetrics];
  [instrumentMetrics18 requestCreatedTimestamp];
  [v36 dumpInstrumentMetrics:? withTimestamp:?];
}

- (void)reportSpeechStart
{
  v35 = *MEMORY[0x277D85DE8];
  if (self->_shouldSpeak)
  {
    delegate = [(VSSpeechServerTask *)self delegate];
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      delegate2 = [(VSSpeechServerTask *)self delegate];
      request = [(VSSpeechServerTask *)self request];
      [delegate2 speechRequestDidStart:?];
    }
  }

  speakTask = [(VSSpeechServerTask *)self speakTask];
  if (speakTask)
  {
    v8 = speakTask;
    speakTask2 = [(VSSpeechServerTask *)self speakTask];
    delegate3 = [speakTask2 delegate];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      speakTask3 = [(VSSpeechServerTask *)self speakTask];
      delegate4 = [speakTask3 delegate];
      speakTask4 = [(VSSpeechServerTask *)self speakTask];
      request2 = [speakTask4 request];
      [delegate4 speechRequestDidStart:?];
    }
  }

  if ([(VSSpeechServerTask *)self useServerResponse])
  {
    ospreyCore = [(VSSpeechServerTask *)self ospreyCore];
    voice = [ospreyCore voice];
  }

  else
  {
    ospreyCore = [(VSSpeechServerTask *)self synthesisCore];
    selectedVoice = [ospreyCore selectedVoice];
    voice = [selectedVoice voiceData];
  }

  if ([(VSSpeechServerTask *)self useServerResponse])
  {
    ospreyCore2 = [(VSSpeechServerTask *)self ospreyCore];
    [ospreyCore2 voiceResource];
  }

  else
  {
    ospreyCore2 = [(VSSpeechServerTask *)self synthesisCore];
    [ospreyCore2 selectedVoiceResource];
  }
  v31 = ;

  siriInstrumentation = [(VSSpeechServerTask *)self siriInstrumentation];
  instrumentMetrics = [(VSSpeechServerTask *)self instrumentMetrics];
  [instrumentMetrics sourceOfTTS];
  instrumentMetrics2 = [(VSSpeechServerTask *)self instrumentMetrics];
  [instrumentMetrics2 timeToSpeakLatency];
  playbackService = [(VSSpeechServerTask *)self playbackService];
  outputRouteInfo = [playbackService outputRouteInfo];
  [voice type];
  [voice footprint];
  [voice contentVersion];
  v22 = v32 = voice;
  [v22 unsignedIntegerValue];
  contentVersion = [v31 contentVersion];
  [contentVersion unsignedIntegerValue];
  request3 = [(VSSpeechServerTask *)self request];
  LOBYTE(v27) = [request3 shouldWhisper];
  [siriInstrumentation instrumentSpeechStartedWithSource:v27 customerPerceivedLatency:? audioOutputRoute:? voiceType:? voiceFootprint:? voiceVersion:? resourceVersion:? isWhisper:?];

  v25 = VSGetLogDefault();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    instrumentMetrics3 = [(VSSpeechServerTask *)self instrumentMetrics];
    *buf = 134217984;
    requestCreatedTimestamp = [instrumentMetrics3 requestCreatedTimestamp];
    _os_log_debug_impl(&dword_2727E4000, v25, OS_LOG_TYPE_DEBUG, "Server task %llu started speaking", buf, 0xCu);
  }
}

- (void)reportTimingInfo
{
  shouldSpeak = self->_shouldSpeak;
  delegate = [(VSSpeechServerTask *)self delegate];
  if (shouldSpeak)
  {
    v5 = objc_opt_respondsToSelector();

    if ((v5 & 1) == 0)
    {
      goto LABEL_7;
    }

    delegate2 = [(VSSpeechServerTask *)self delegate];
    request = [(VSSpeechServerTask *)self request];
    wordTimingInfo = [(VSSpeechServerTask *)self wordTimingInfo];
    [delegate2 speechRequest:? didReceiveTimingInfo:?];
  }

  else
  {
    v9 = objc_opt_respondsToSelector();

    if ((v9 & 1) == 0)
    {
      goto LABEL_7;
    }

    delegate2 = [(VSSpeechServerTask *)self delegate];
    request = [(VSSpeechServerTask *)self request];
    wordTimingInfo = [(VSSpeechServerTask *)self wordTimingInfo];
    [delegate2 synthesisRequest:? didReceiveTimingInfo:?];
  }

LABEL_7:
  speakTask = [(VSSpeechServerTask *)self speakTask];
  delegate3 = [speakTask delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    speakTask2 = [(VSSpeechServerTask *)self speakTask];
    delegate4 = [speakTask2 delegate];
    speakTask3 = [(VSSpeechServerTask *)self speakTask];
    request2 = [speakTask3 request];
    wordTimingInfo2 = [(VSSpeechServerTask *)self wordTimingInfo];
    [delegate4 speechRequest:? didReceiveTimingInfo:?];
  }
}

- (void)setObserverForWordTimings:(id)timings
{
  timingsCopy = timings;
  objc_initWeak(&location, self);
  playbackService = [(VSSpeechServerTask *)self playbackService];
  v6 = MEMORY[0x277D85DD0];
  objc_copyWeak(&v7, &location);
  [playbackService setBoundaryTimeObserverForTimingInfos:v6 usingBlock:{3221225472, __48__VSSpeechServerTask_setObserverForWordTimings___block_invoke, &unk_279E4B9C0}];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __48__VSSpeechServerTask_setObserverForWordTimings___block_invoke(uint64_t a1, void *a2)
{
  v17 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    if (WeakRetained[248] == 1)
    {
      v5 = [WeakRetained delegate];
      v6 = objc_opt_respondsToSelector();

      if (v6)
      {
        v7 = [v4 delegate];
        v8 = [v4 request];
        [v17 textRange];
        [v7 speechRequest:? didStartWithMark:? forRange:?];
      }
    }

    v9 = [v4 speakTask];
    if (v9)
    {
      v10 = v9;
      v11 = [v4 speakTask];
      v12 = [v11 delegate];
      v13 = objc_opt_respondsToSelector();

      if (v13)
      {
        v14 = [v4 speakTask];
        v15 = [v14 delegate];
        v16 = [v4 request];
        [v17 textRange];
        [v15 speechRequest:? didStartWithMark:? forRange:?];
      }
    }
  }
}

- (BOOL)isSpeaking
{
  if (self->_shouldSpeak)
  {
    return 1;
  }

  speakTask = [(VSSpeechServerTask *)self speakTask];
  v2 = speakTask != 0;

  return v2;
}

- (void)resume
{
  playbackService = [(VSSpeechServerTask *)self playbackService];
  start = [playbackService start];
}

- (void)suspend
{
  playbackService = [(VSSpeechServerTask *)self playbackService];
  [playbackService pause];
}

- (void)cancel
{
  v3 = [MEMORY[0x277CCA9B8] errorWithDomain:? code:? userInfo:?];
  [(VSSpeechServerTask *)self setError:?];

  if (([(VSSpeechServerTask *)self isExecuting]& 1) != 0 || ([(VSSpeechServerTask *)self isCancelled]& 1) != 0 || ([(VSSpeechServerTask *)self isFinished]& 1) != 0)
  {
    v7.receiver = self;
    v7.super_class = VSSpeechServerTask;
    [(VSSpeechServerTask *)&v7 cancel];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = VSSpeechServerTask;
    [(VSSpeechServerTask *)&v8 cancel];
    [(VSSpeechServerTask *)self reportFinish];
  }

  playbackService = [(VSSpeechServerTask *)self playbackService];
  [playbackService stop];

  synthesisCore = [(VSSpeechServerTask *)self synthesisCore];
  [synthesisCore cancel];

  ospreyCore = [(VSSpeechServerTask *)self ospreyCore];
  [ospreyCore cancel];

  pthread_cond_broadcast(&self->_timeoutCondition);
}

- (void)proceedWithServerTTS
{
  v52 = *MEMORY[0x277D85DE8];
  mach_absolute_time();
  instrumentMetrics = [(VSSpeechServerTask *)self instrumentMetrics];
  [instrumentMetrics setSynthesisBeginTimestamp:?];

  kdebug_trace();
  mEMORY[0x277D79950] = [MEMORY[0x277D79950] sharedManager];
  request = [(VSSpeechServerTask *)self request];
  languageCode = [request languageCode];
  v7 = [mEMORY[0x277D79950] selectVoiceResourceAssetForLanguage:?];

  request2 = [(VSSpeechServerTask *)self request];
  voiceName = [request2 voiceName];
  v10 = [voiceName length];

  if (!v10)
  {
    request3 = [(VSSpeechServerTask *)self request];
    gender = [request3 gender];

    if (!gender)
    {
      [v7 defaultVoiceGender];
      request4 = [(VSSpeechServerTask *)self request];
      [request4 setGender:?];
    }

    request5 = [(VSSpeechServerTask *)self request];
    [request5 gender];
    v15 = [v7 defaultVoiceNameForGender:?];
    request6 = [(VSSpeechServerTask *)self request];
    [request6 setVoiceName:?];
  }

  v17 = objc_opt_new();
  request7 = [(VSSpeechServerTask *)self request];
  text = [request7 text];
  request8 = [(VSSpeechServerTask *)self request];
  languageCode2 = [request8 languageCode];
  request9 = [(VSSpeechServerTask *)self request];
  voiceName2 = [request9 voiceName];
  v24 = [v17 estimatedTTSWordTimingForText:? withLanguage:? voiceName:?];
  [(VSSpeechServerTask *)self setWordTimingInfo:?];

  wordTimingInfo = [(VSSpeechServerTask *)self wordTimingInfo];

  if (wordTimingInfo)
  {
    [(VSSpeechServerTask *)self reportTimingInfo];
  }

  v26 = dispatch_get_global_queue(33, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__VSSpeechServerTask_proceedWithServerTTS__block_invoke;
  block[3] = &unk_279E4BAC8;
  block[4] = self;
  dispatch_async(v26, block);

  request10 = [(VSSpeechServerTask *)self request];
  disableDeviceRacing = [request10 disableDeviceRacing];

  if (disableDeviceRacing)
  {
    v29 = VSGetLogDefault();
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    *buf = 0;
    v30 = "Device TTS will not race";
    v31 = v29;
    v32 = 2;
    goto LABEL_14;
  }

  instrumentMetrics2 = [(VSSpeechServerTask *)self instrumentMetrics];
  [instrumentMetrics2 setIsServerTTSRacing:?];

  v34 = VSGetLogDefault();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2727E4000, v34, OS_LOG_TYPE_DEFAULT, "Device TTS is racing with Server TTS", buf, 2u);
  }

  synthesisCore = [(VSSpeechServerTask *)self synthesisCore];
  [synthesisCore start];

  v29 = VSGetLogDefault();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    [(VSSpeechServerTask *)self deviceTTSWaitTime];
    *buf = 134217984;
    v51 = v36;
    v30 = "Device TTS wait time for server audio: %.2f";
    v31 = v29;
    v32 = 12;
LABEL_14:
    _os_log_impl(&dword_2727E4000, v31, OS_LOG_TYPE_DEFAULT, v30, buf, v32);
  }

LABEL_15:

  shouldRelyOnServerTTS = [(VSSpeechServerTask *)self shouldRelyOnServerTTS];
  if (([(VSSpeechServerTask *)self isCancelled]& 1) == 0)
  {
    if (shouldRelyOnServerTTS)
    {
      ospreyCore = [(VSSpeechServerTask *)self ospreyCore];
      [ospreyCore waitUntilFinished];
    }

    else
    {
      [(VSSpeechServerTask *)self deviceTTSWaitTime];
      if (v39 <= 0.0)
      {
        goto LABEL_27;
      }

      ospreyCore = [(VSSpeechServerTask *)self ospreyCore];
      [(VSSpeechServerTask *)self deviceTTSWaitTime];
      [ospreyCore waitUntilFinishedIfAudioReceivedWithin:?];
    }

    if (([(VSSpeechServerTask *)self isCancelled]& 1) == 0)
    {
      ospreyCore2 = [(VSSpeechServerTask *)self ospreyCore];
      error = [ospreyCore2 error];
      code = [error code];

      if (code != 603)
      {
        ospreyCore3 = [(VSSpeechServerTask *)self ospreyCore];
        error2 = [ospreyCore3 error];
        if (error2)
        {
        }

        else
        {
          error3 = [(VSSpeechServerTask *)self error];
          domain = [error3 domain];
          v48 = [domain isEqualToString:?];

          if (!v48)
          {
            goto LABEL_27;
          }
        }

        [(VSSpeechServerTask *)self fallbackToDeviceSynthesis];
        goto LABEL_27;
      }

      instrumentMetrics3 = [(VSSpeechServerTask *)self instrumentMetrics];
      [instrumentMetrics3 setErrorCode:?];

      [(VSSpeechServerTask *)self speakRetryPhrase];
    }
  }

LABEL_27:
}

void __42__VSSpeechServerTask_proceedWithServerTTS__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) ospreyCore];
  [v1 start];
}

- (void)proceedWithSpeechCache:(id)cache
{
  cacheCopy = cache;
  [(VSSpeechServerTask *)self setUseServerResponse:?];
  voiceKey = [cacheCopy voiceKey];
  instrumentMetrics = [(VSSpeechServerTask *)self instrumentMetrics];
  [instrumentMetrics setVoiceAssetKey:?];

  instrumentMetrics2 = [(VSSpeechServerTask *)self instrumentMetrics];
  [instrumentMetrics2 setIsCacheHitFromMemory:?];

  timingInfos = [cacheCopy timingInfos];
  [(VSSpeechServerTask *)self setWordTimingInfo:?];

  [(VSSpeechServerTask *)self reportTimingInfo];
  audio = [cacheCopy audio];
  v10 = [(VSSpeechServerTask *)self enqueueAudioData:?];

  wordTimingInfo = [(VSSpeechServerTask *)self wordTimingInfo];
  [(VSSpeechServerTask *)self setObserverForWordTimings:?];

  audio2 = [cacheCopy audio];

  [(VSSpeechServerTask *)self setServerAudio:?];
}

- (void)main
{
  kdebug_trace();
  serverTTSConfig = [(VSSpeechServerTask *)self serverTTSConfig];
  experimentIdentifier = [serverTTSConfig experimentIdentifier];
  instrumentMetrics = [(VSSpeechServerTask *)self instrumentMetrics];
  [instrumentMetrics setExperimentIdentifier:?];

  cachingService = [(VSSpeechServerTask *)self cachingService];
  request = [(VSSpeechServerTask *)self request];
  text = [request text];
  v9 = [cachingService popShortTermCacheForHash:?];

  if (v9)
  {
    v10 = VSGetLogDefault();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2727E4000, v10, OS_LOG_TYPE_INFO, "Inline server TTS is previously cached.", buf, 2u);
    }

    instrumentMetrics2 = [(VSSpeechServerTask *)self instrumentMetrics];
    [instrumentMetrics2 setSourceOfTTS:?];
  }

  else
  {
    cachingService2 = [(VSSpeechServerTask *)self cachingService];
    request = [(VSSpeechServerTask *)self request];
    v13 = [(VSSpeechServerTask *)self eagerTaskHashForRequest:?];
    v9 = [cachingService2 popShortTermCacheForHash:?];

    if (!v9)
    {
      [(VSSpeechServerTask *)self proceedWithServerTTS];
      goto LABEL_10;
    }

    v14 = VSGetLogDefault();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *v44 = 0;
      _os_log_impl(&dword_2727E4000, v14, OS_LOG_TYPE_INFO, "Eager server TTS is previously cached.", v44, 2u);
    }

    [(VSSpeechServerTask *)self setIsEagerCache:?];
  }

  [(VSSpeechServerTask *)self proceedWithSpeechCache:?];
LABEL_10:
  notify_post([*MEMORY[0x277D79A18] UTF8String]);
  [(VSSpeechServerTask *)self setReadyForEagerTask:?];
  if ([(VSSpeechServerTask *)self shouldSpeak]|| ([(VSSpeechServerTask *)self speakTask], v15 = objc_claimAutoreleasedReturnValue(), v15, v15))
  {
    playbackService = [(VSSpeechServerTask *)self playbackService];
    [playbackService flushAndStop];

    error = [(VSSpeechServerTask *)self error];

    if (!error)
    {
      playbackService2 = [(VSSpeechServerTask *)self playbackService];
      error2 = [playbackService2 error];
      [(VSSpeechServerTask *)self setError:?];
    }

    request = mach_absolute_time();
    instrumentMetrics3 = [(VSSpeechServerTask *)self instrumentMetrics];
    [instrumentMetrics3 setSpeechEndTimestamp:?];
    goto LABEL_15;
  }

  instrumentMetrics3 = [(VSSpeechServerTask *)self request];
  if (![instrumentMetrics3 shouldCache] || !-[VSSpeechServerTask useServerResponse](self, "useServerResponse") || (-[VSSpeechServerTask isCancelled](self, "isCancelled") & 1) != 0)
  {
LABEL_15:

    goto LABEL_16;
  }

  request = [(VSSpeechServerTask *)self error];

  if (!request)
  {
    instrumentMetrics3 = [(VSSpeechServerTask *)self cachingService];
    request2 = [(VSSpeechServerTask *)self request];
    v33 = [(VSSpeechServerTask *)self eagerTaskHashForRequest:?];
    serverAudio = [(VSSpeechServerTask *)self serverAudio];
    wordTimingInfo = [(VSSpeechServerTask *)self wordTimingInfo];
    instrumentMetrics4 = [(VSSpeechServerTask *)self instrumentMetrics];
    voiceAssetKey = [instrumentMetrics4 voiceAssetKey];
    instrumentMetrics5 = [(VSSpeechServerTask *)self instrumentMetrics];
    request = [instrumentMetrics5 voiceResourceAssetKey];
    [instrumentMetrics3 enqueueShortTermCacheWithHash:? audio:? timingInfo:? voiceKey:? voiceResourceKey:? completion:?];

    goto LABEL_15;
  }

LABEL_16:
  useServerResponse = [(VSSpeechServerTask *)self useServerResponse];
  if (useServerResponse)
  {
    error3 = [(VSSpeechServerTask *)self error];
    if (!error3)
    {
LABEL_24:
      [(VSSpeechServerTask *)self reportInstrumentMetrics];
      goto LABEL_25;
    }

    request = error3;
    if (![(VSSpeechServerTask *)self useDeviceSynthesis])
    {

      goto LABEL_25;
    }
  }

  else if (![(VSSpeechServerTask *)self useDeviceSynthesis])
  {
    goto LABEL_25;
  }

  synthesisCore = [(VSSpeechServerTask *)self synthesisCore];
  error4 = [synthesisCore error];

  if (useServerResponse)
  {
  }

  if (!error4)
  {
    goto LABEL_24;
  }

LABEL_25:
  if (![(VSSpeechServerTask *)self useDeviceSynthesis])
  {
    goto LABEL_28;
  }

  error5 = [(VSSpeechServerTask *)self error];
  ospreyCore = [(VSSpeechServerTask *)self ospreyCore];
  error6 = [ospreyCore error];
  v28 = error6;
  if (error5 == error6)
  {

LABEL_36:
    [(VSSpeechServerTask *)self setError:?];
    if (v9)
    {
      goto LABEL_29;
    }

    goto LABEL_37;
  }

  error7 = [(VSSpeechServerTask *)self error];
  domain = [error7 domain];
  v31 = [domain isEqualToString:?];

  if (v31)
  {
    goto LABEL_36;
  }

LABEL_28:
  if (v9)
  {
LABEL_29:
    audio = [v9 audio];
LABEL_39:
    synthesisCore2 = audio;
    [(VSSpeechServerTask *)self writeAudioIfNeeded:?];
    goto LABEL_40;
  }

LABEL_37:
  if ([(VSSpeechServerTask *)self useServerResponse])
  {
    audio = [(VSSpeechServerTask *)self serverAudio];
    goto LABEL_39;
  }

  if (![(VSSpeechServerTask *)self useDeviceSynthesis])
  {
    goto LABEL_41;
  }

  synthesisCore2 = [(VSSpeechServerTask *)self synthesisCore];
  streamAudio = [synthesisCore2 streamAudio];
  if (streamAudio)
  {
    [(VSSpeechServerTask *)self writeAudioIfNeeded:?];
  }

  else
  {
    synthesisCore3 = [(VSSpeechServerTask *)self synthesisCore];
    compressedAudio = [synthesisCore3 compressedAudio];
    [(VSSpeechServerTask *)self writeAudioIfNeeded:?];
  }

LABEL_40:
LABEL_41:
  [(VSSpeechServerTask *)self reportFinish];
  kdebug_trace();
}

- (id)eagerTaskHashForRequest:(id)request
{
  v21 = MEMORY[0x277CCACA8];
  requestCopy = request;
  languageCode = [requestCopy languageCode];
  v5 = MEMORY[0x277CCABB0];
  [requestCopy gender];
  v6 = [v5 numberWithLong:?];
  v7 = MEMORY[0x277CCABB0];
  [requestCopy voiceType];
  v8 = [v7 numberWithLong:?];
  v9 = MEMORY[0x277CCABB0];
  [requestCopy footprint];
  v10 = [v9 numberWithLong:?];
  text = [requestCopy text];
  v12 = MEMORY[0x277CCABB0];
  [requestCopy rate];
  v13 = [v12 numberWithDouble:?];
  v14 = MEMORY[0x277CCABB0];
  [requestCopy pitch];
  v15 = [v14 numberWithDouble:?];
  v16 = MEMORY[0x277CCABB0];
  [requestCopy volume];
  v17 = [v16 numberWithDouble:?];
  contextInfo = [requestCopy contextInfo];

  v19 = [v21 stringWithFormat:languageCode, v6, v8, v10, text, v13, v15, v17, contextInfo];

  return v19;
}

- (id)enqueueAudioData:(id)data
{
  v38 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  [(VSSpeechServerTask *)self setReadyForEagerTask:?];
  instrumentMetrics = [(VSSpeechServerTask *)self instrumentMetrics];
  [dataCopy duration];
  [instrumentMetrics audioDuration];
  [instrumentMetrics setAudioDuration:?];

  if (![(VSSpeechServerTask *)self shouldSpeak])
  {
    speakTask = [(VSSpeechServerTask *)self speakTask];

    if (!speakTask)
    {
      request = [(VSSpeechServerTask *)self request];
      shouldStreamAudioData = [request shouldStreamAudioData];

      if (shouldStreamAudioData)
      {
        delegate = [(VSSpeechServerTask *)self delegate];
        request2 = [(VSSpeechServerTask *)self request];
        [delegate synthesisRequest:? didGenerateAudioChunk:?];
      }

      goto LABEL_10;
    }
  }

  playbackService = [(VSSpeechServerTask *)self playbackService];

  if (playbackService)
  {
LABEL_4:
    playbackService2 = [(VSSpeechServerTask *)self playbackService];
    audioData = [dataCopy audioData];
    [dataCopy packetCount];
    packetDescriptions = [dataCopy packetDescriptions];
    [playbackService2 enqueue:? packetCount:? packetDescriptions:?];

    if (![(VSSpeechServerTask *)self speechStartReported])
    {
      mach_absolute_time();
      instrumentMetrics2 = [(VSSpeechServerTask *)self instrumentMetrics];
      [instrumentMetrics2 setSpeechBeginTimestamp:?];

      [(VSSpeechServerTask *)self reportSpeechStart];
      [(VSSpeechServerTask *)self setSpeechStartReported:?];
    }

LABEL_10:
    start = 0;
    goto LABEL_11;
  }

  if (self->_shouldSpeak)
  {
    request3 = [(VSSpeechServerTask *)self request];
    [request3 audioSessionID];
  }

  else
  {
    request3 = [(VSSpeechServerTask *)self speakTask];
    v12Request = [request3 request];
    [v12Request audioSessionID];
  }

  v20 = [VSAudioPlaybackService alloc];
  if (dataCopy)
  {
    [&v33 asbd];
  }

  else
  {
    v35 = 0;
    v33 = 0u;
    v34 = 0u;
  }

  v21 = [(VSSpeechServerTask *)self request:v33];
  accessoryID = [v21 accessoryID];
  v23 = [VSAudioPlaybackService initWithAudioSessionID:v20 asbd:"initWithAudioSessionID:asbd:useAVSBAR:" useAVSBAR:?];
  [(VSSpeechServerTask *)self setPlaybackService:?];

  playbackService3 = [(VSSpeechServerTask *)self playbackService];
  outputRouteInfo = [playbackService3 outputRouteInfo];
  audioRouteName = [outputRouteInfo audioRouteName];
  instrumentMetrics3 = [(VSSpeechServerTask *)self instrumentMetrics];
  [instrumentMetrics3 setAudioOutputRoute:?];

  playbackService4 = [(VSSpeechServerTask *)self playbackService];

  if (playbackService4)
  {
    mach_absolute_time();
    playbackService5 = [(VSSpeechServerTask *)self playbackService];
    start = [playbackService5 start];

    if (!start)
    {
      mach_absolute_time();
      instrumentMetrics4 = [(VSSpeechServerTask *)self instrumentMetrics];
      [instrumentMetrics4 setAudioStartTimestampDiffs:?];

      goto LABEL_4;
    }
  }

  else
  {
    v31 = MEMORY[0x277CCA9B8];
    v36 = *MEMORY[0x277CCA450];
    v37 = @"Unable to create playback service";
    v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
    start = [v31 errorWithDomain:? code:? userInfo:?];
  }

LABEL_11:

  return start;
}

- (id)handleDeviceSynthesis:(id)synthesis timingInfo:(id)info
{
  synthesisCopy = synthesis;
  infoCopy = info;
  pthread_mutex_lock(&self->_racingMutex);
  if ([(VSSpeechServerTask *)self useServerResponse])
  {
    v8 = VSGetLogDefault();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2727E4000, v8, OS_LOG_TYPE_INFO, "Received server TTS previously, ignore device TTS", buf, 2u);
    }

LABEL_5:
    v9 = 0;
    goto LABEL_22;
  }

  if (synthesisCopy)
  {
    instrumentMetrics = [(VSSpeechServerTask *)self instrumentMetrics];
    synthesisEndTimestamp = [instrumentMetrics synthesisEndTimestamp];

    if (!synthesisEndTimestamp)
    {
      mach_absolute_time();
      instrumentMetrics2 = [(VSSpeechServerTask *)self instrumentMetrics];
      [instrumentMetrics2 setSynthesisEndTimestamp:?];

      kdebug_trace();
    }
  }

  if (![(VSSpeechServerTask *)self useDeviceSynthesis]&& [(VSSpeechServerTask *)self shouldDeferDeviceTTS])
  {
    v13 = VSGetLogDefault();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *v28 = 0;
      _os_log_impl(&dword_2727E4000, v13, OS_LOG_TYPE_INFO, "Received audio from device synthesis, but it's deferred.", v28, 2u);
    }

    if (infoCopy)
    {
      [(VSSpeechServerTask *)self setDeferredTTSTimingInfo:?];
    }

    goto LABEL_5;
  }

  if (![(VSSpeechServerTask *)self useDeviceSynthesis])
  {
    v14 = VSGetLogDefault();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *v29 = 0;
      _os_log_impl(&dword_2727E4000, v14, OS_LOG_TYPE_INFO, "Received audio from device synthesis. Use device synthesis immediately.", v29, 2u);
    }

    [(VSSpeechServerTask *)self setUseDeviceSynthesis:?];
    ospreyCore = [(VSSpeechServerTask *)self ospreyCore];
    [ospreyCore cancel];

    instrumentMetrics3 = [(VSSpeechServerTask *)self instrumentMetrics];
    [instrumentMetrics3 setIsServerTTS:?];

    instrumentMetrics4 = [(VSSpeechServerTask *)self instrumentMetrics];
    [instrumentMetrics4 setSourceOfTTS:?];
  }

  if (synthesisCopy)
  {
    synthesisCore = [(VSSpeechServerTask *)self synthesisCore];
    selectedVoice = [synthesisCore selectedVoice];
    v20 = [selectedVoice key];
    instrumentMetrics5 = [(VSSpeechServerTask *)self instrumentMetrics];
    [instrumentMetrics5 setVoiceAssetKey:?];

    synthesisCore2 = [(VSSpeechServerTask *)self synthesisCore];
    selectedVoiceResource = [synthesisCore2 selectedVoiceResource];
    v24 = [selectedVoiceResource key];
    instrumentMetrics6 = [(VSSpeechServerTask *)self instrumentMetrics];
    [instrumentMetrics6 setVoiceResourceAssetKey:?];

    v9 = [(VSSpeechServerTask *)self enqueueAudioData:?];
    if (!infoCopy)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v9 = 0;
  if (infoCopy)
  {
LABEL_21:
    [(VSSpeechServerTask *)self setWordTimingInfo:?];
    wordTimingInfo = [(VSSpeechServerTask *)self wordTimingInfo];
    [(VSSpeechServerTask *)self setObserverForWordTimings:?];

    [(VSSpeechServerTask *)self reportTimingInfo];
  }

LABEL_22:
  pthread_mutex_unlock(&self->_racingMutex);

  return v9;
}

- (BOOL)shouldDeferDeviceTTS
{
  if ([(VSSpeechServerTask *)self shouldRelyOnServerTTS])
  {
    return 1;
  }

  [(VSSpeechServerTask *)self deviceTTSWaitTime];
  return v4 > 0.0;
}

- (BOOL)shouldRelyOnServerTTS
{
  request = [(VSSpeechServerTask *)self request];
  if ([request disableDeviceRacing])
  {
    v4 = 1;
  }

  else
  {
    synthesisCore = [(VSSpeechServerTask *)self synthesisCore];
    if ([synthesisCore isCancelled])
    {
      v4 = 1;
    }

    else
    {
      synthesisCore2 = [(VSSpeechServerTask *)self synthesisCore];
      error = [synthesisCore2 error];
      if (error)
      {
        v4 = 1;
      }

      else
      {
        synthesisCore3 = [(VSSpeechServerTask *)self synthesisCore];
        selectedVoice = [synthesisCore3 selectedVoice];
        voiceData = [selectedVoice voiceData];
        if ([voiceData footprint] == 1)
        {
          v4 = 1;
        }

        else
        {
          synthesisCore4 = [(VSSpeechServerTask *)self synthesisCore];
          selectedVoice2 = [synthesisCore4 selectedVoice];
          voiceData2 = [selectedVoice2 voiceData];
          v4 = [voiceData2 type] == 4 && self->_isNeuralFallbackCondition;
        }
      }
    }
  }

  return v4;
}

- (void)fallbackToDeviceSynthesis
{
  v52 = *MEMORY[0x277D85DE8];
  error = [(VSSpeechServerTask *)self error];

  if (error)
  {
    v4 = VSGetLogDefault();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      error2 = [(VSSpeechServerTask *)self error];
      localizedDescription = [error2 localizedDescription];
      *buf = 138412290;
      v51 = localizedDescription;
      _os_log_error_impl(&dword_2727E4000, v4, OS_LOG_TYPE_ERROR, "Server network error: %@", buf, 0xCu);
    }
  }

  ospreyCore = [(VSSpeechServerTask *)self ospreyCore];
  if (([ospreyCore isCancelled] & 1) == 0)
  {

    goto LABEL_9;
  }

  ospreyCore2 = [(VSSpeechServerTask *)self ospreyCore];
  error3 = [ospreyCore2 error];
  code = [error3 code];

  if (code == 602)
  {
LABEL_9:
    instrumentMetrics = [(VSSpeechServerTask *)self instrumentMetrics];
    [instrumentMetrics setIsServerTimeout:?];
  }

  request = [(VSSpeechServerTask *)self request];
  disableDeviceRacing = [request disableDeviceRacing];

  if (disableDeviceRacing)
  {
    v12 = VSGetLogDefault();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2727E4000, v12, OS_LOG_TYPE_DEFAULT, "Start device synthesis fallback.", buf, 2u);
    }

    synthesisCore = [(VSSpeechServerTask *)self synthesisCore];
    [synthesisCore start];
  }

  synthesisCore2 = [(VSSpeechServerTask *)self synthesisCore];
  error4 = [synthesisCore2 error];
  if (error4)
  {

    return;
  }

  synthesisCore3 = [(VSSpeechServerTask *)self synthesisCore];
  streamAudio = [synthesisCore3 streamAudio];
  if (streamAudio)
  {
  }

  else
  {
    synthesisCore4 = [(VSSpeechServerTask *)self synthesisCore];
    compressedAudio = [synthesisCore4 compressedAudio];

    if (!compressedAudio)
    {
      return;
    }
  }

  v20 = VSGetLogDefault();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2727E4000, v20, OS_LOG_TYPE_DEFAULT, "Start playing device synthesis instead.", buf, 2u);
  }

  [(VSSpeechServerTask *)self setUseDeviceSynthesis:?];
  deferredTTSTimingInfo = [(VSSpeechServerTask *)self deferredTTSTimingInfo];
  [(VSSpeechServerTask *)self setWordTimingInfo:?];

  instrumentMetrics2 = [(VSSpeechServerTask *)self instrumentMetrics];
  [instrumentMetrics2 setIsServerTTS:?];

  instrumentMetrics3 = [(VSSpeechServerTask *)self instrumentMetrics];
  [instrumentMetrics3 setSourceOfTTS:?];

  synthesisCore5 = [(VSSpeechServerTask *)self synthesisCore];
  selectedVoice = [synthesisCore5 selectedVoice];
  v26 = [selectedVoice key];
  instrumentMetrics4 = [(VSSpeechServerTask *)self instrumentMetrics];
  [instrumentMetrics4 setVoiceAssetKey:?];

  synthesisCore6 = [(VSSpeechServerTask *)self synthesisCore];
  selectedVoiceResource = [synthesisCore6 selectedVoiceResource];
  domain = [selectedVoiceResource key];
  instrumentMetrics5 = [(VSSpeechServerTask *)self instrumentMetrics];
  [instrumentMetrics5 setVoiceResourceAssetKey:?];

  synthesisCore7 = [(VSSpeechServerTask *)self synthesisCore];
  streamAudio2 = [synthesisCore7 streamAudio];

  synthesisCore8 = [(VSSpeechServerTask *)self synthesisCore];
  synthesisCore9 = synthesisCore8;
  if (streamAudio2)
  {
    streamAudio3 = [synthesisCore8 streamAudio];
    [streamAudio3 enumerateAudioWithBlock:?];
  }

  else
  {
    compressedAudio2 = [synthesisCore8 compressedAudio];

    if (!compressedAudio2)
    {
      goto LABEL_26;
    }

    synthesisCore9 = [(VSSpeechServerTask *)self synthesisCore];
    streamAudio3 = [synthesisCore9 compressedAudio];
    v38 = [(VSSpeechServerTask *)self enqueueAudioData:?];
  }

LABEL_26:
  wordTimingInfo = [(VSSpeechServerTask *)self wordTimingInfo];
  [(VSSpeechServerTask *)self setObserverForWordTimings:?];

  [(VSSpeechServerTask *)self reportTimingInfo];
  ospreyCore3 = [(VSSpeechServerTask *)self ospreyCore];
  error5 = [ospreyCore3 error];
  if (error5)
  {
  }

  else
  {
    error6 = [(VSSpeechServerTask *)self error];
    domain = [error6 domain];
    v43 = [domain isEqualToString:?];

    if (!v43)
    {
      return;
    }
  }

  ospreyCore4 = [(VSSpeechServerTask *)self ospreyCore];
  error7 = [ospreyCore4 error];
  if (error7)
  {
    domain = [(VSSpeechServerTask *)self ospreyCore];
    [domain error];
  }

  else
  {
    [(VSSpeechServerTask *)self error];
  }
  v46 = ;
  [v46 code];
  instrumentMetrics6 = [(VSSpeechServerTask *)self instrumentMetrics];
  [instrumentMetrics6 setErrorCode:?];

  if (error7)
  {

    v46 = domain;
  }

  [(VSSpeechServerTask *)self setError:?];
}

void __47__VSSpeechServerTask_fallbackToDeviceSynthesis__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4, _BYTE *a5)
{
  v8 = MEMORY[0x277D79920];
  v9 = a4;
  v10 = a2;
  v11 = objc_alloc_init(v8);
  v12 = [*(a1 + 32) synthesisCore];
  v13 = [v12 streamAudio];
  if (v13)
  {
    [&v15 asbd];
  }

  else
  {
    v17 = 0;
    v15 = 0u;
    v16 = 0u;
  }

  [v11 setAsbd:{v15, v16, v17}];

  [v11 setPacketCount:?];
  [v11 setPacketDescriptions:?];

  [v11 setAudioData:?];
  v14 = [*(a1 + 32) enqueueAudioData:?];
  if (v14)
  {
    *a5 = 1;
  }
}

- (void)speakRetryPhrase
{
  v3 = VSGetLogDefault();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2727E4000, v3, OS_LOG_TYPE_DEFAULT, "Encountered Osprey streaming network stall. Retry with device TTS.", buf, 2u);
  }

  v4 = MEMORY[0x277D79940];
  request = [(VSSpeechServerTask *)self request];
  languageCode = [request languageCode];
  v7 = [v4 localizedInterstitialStringForKey:? language:?];

  request2 = [(VSSpeechServerTask *)self request];
  v9 = [request2 copy];

  v10 = MEMORY[0x277CCACA8];
  synthesisCore = [(VSSpeechServerTask *)self synthesisCore];
  request3 = [synthesisCore request];
  utterance = [request3 utterance];
  v14 = [v10 stringWithFormat:v7, utterance];
  [v9 setUtterance:?];

  v15 = MEMORY[0x277CCACA8];
  synthesisCore2 = [(VSSpeechServerTask *)self synthesisCore];
  request4 = [synthesisCore2 request];
  text = [request4 text];
  v19 = [v15 stringWithFormat:v7, text];
  [v9 setText:?];

  playbackService = [(VSSpeechServerTask *)self playbackService];
  [playbackService stop];

  [(VSSpeechServerTask *)self setPlaybackService:?];
  [(VSSpeechServerTask *)self setUseServerResponse:?];
  [(VSSpeechServerTask *)self setUseDeviceSynthesis:?];
  v21 = [[VSDeviceTTSCore alloc] initWithRequest:?];
  [(VSDeviceTTSCore *)v21 setDelegate:?];
  [(VSDeviceTTSCore *)v21 start];
}

- (id)handleServerResponse:(id)response timingInfo:(id)info
{
  responseCopy = response;
  infoCopy = info;
  pthread_mutex_lock(&self->_racingMutex);
  if ([(VSSpeechServerTask *)self useDeviceSynthesis])
  {
    synthesisCore = [(VSSpeechServerTask *)self synthesisCore];
    selectedVoice = [synthesisCore selectedVoice];
    voiceData = [selectedVoice voiceData];
    footprint = [voiceData footprint];

    if (footprint != 1)
    {
      synthesisCore3 = VSGetLogDefault();
      if (os_log_type_enabled(synthesisCore3, OS_LOG_TYPE_INFO))
      {
        *v32 = 0;
        _os_log_impl(&dword_2727E4000, synthesisCore3, OS_LOG_TYPE_INFO, "Received device synthesis previously, ignore server TTS.", v32, 2u);
      }

      goto LABEL_16;
    }
  }

  if (![(VSSpeechServerTask *)self useServerResponse])
  {
    v12 = VSGetLogDefault();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2727E4000, v12, OS_LOG_TYPE_DEFAULT, "Received server TTS response. Use Server TTS.", buf, 2u);
    }

    [(VSSpeechServerTask *)self setUseServerResponse:?];
    instrumentMetrics = [(VSSpeechServerTask *)self instrumentMetrics];
    [instrumentMetrics setIsServerTTS:?];
  }

  mach_absolute_time();
  instrumentMetrics2 = [(VSSpeechServerTask *)self instrumentMetrics];
  [instrumentMetrics2 setSynthesisEndTimestamp:?];

  kdebug_trace();
  ospreyCore = [(VSSpeechServerTask *)self ospreyCore];
  voice = [ospreyCore voice];
  voiceKey = [voice voiceKey];
  instrumentMetrics3 = [(VSSpeechServerTask *)self instrumentMetrics];
  [instrumentMetrics3 setVoiceAssetKey:?];

  ospreyCore2 = [(VSSpeechServerTask *)self ospreyCore];
  voiceResource = [ospreyCore2 voiceResource];
  v21 = [voiceResource key];
  instrumentMetrics4 = [(VSSpeechServerTask *)self instrumentMetrics];
  [instrumentMetrics4 setVoiceResourceAssetKey:?];

  wordTimingInfo = [(VSSpeechServerTask *)self wordTimingInfo];

  if (!wordTimingInfo)
  {
    [(VSSpeechServerTask *)self setWordTimingInfo:?];
    [(VSSpeechServerTask *)self reportTimingInfo];
  }

  v24 = [(VSSpeechServerTask *)self enqueueAudioData:?];
  wordTimingInfo2 = [(VSSpeechServerTask *)self wordTimingInfo];
  [(VSSpeechServerTask *)self setObserverForWordTimings:?];

  serverAudio = [(VSSpeechServerTask *)self serverAudio];

  if (serverAudio)
  {
    serverAudio2 = [(VSSpeechServerTask *)self serverAudio];
    [serverAudio2 concatenateWithAudio:?];
  }

  else
  {
    [(VSSpeechServerTask *)self setServerAudio:?];
  }

  synthesisCore2 = [(VSSpeechServerTask *)self synthesisCore];
  isCancelled = [synthesisCore2 isCancelled];

  if ((isCancelled & 1) == 0)
  {
    synthesisCore3 = [(VSSpeechServerTask *)self synthesisCore];
    [synthesisCore3 cancel];
LABEL_16:
  }

  pthread_mutex_unlock(&self->_racingMutex);

  return 0;
}

- (void)dealloc
{
  pthread_cond_destroy(&self->_timeoutCondition);
  v3.receiver = self;
  v3.super_class = VSSpeechServerTask;
  [(VSSpeechServerTask *)&v3 dealloc];
}

- (VSSpeechServerTask)initWithRequest:(id)request shouldSpeak:(BOOL)speak
{
  speakCopy = speak;
  v36 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v31.receiver = self;
  v31.super_class = VSSpeechServerTask;
  v8 = [(VSSpeechServerTask *)&v31 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_request, request);
    v9->_shouldSpeak = speakCopy;
    v9->_isNeuralFallbackCondition = [MEMORY[0x277D79958] isNeuralFallbackCondition];
    v10 = objc_alloc_init(MEMORY[0x277D79938]);
    instrumentMetrics = v9->_instrumentMetrics;
    v9->_instrumentMetrics = v10;

    if ([requestCopy requestCreatedTimestamp])
    {
      [requestCopy requestCreatedTimestamp];
    }

    else
    {
      v12 = VSGetLogDefault();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2727E4000, v12, OS_LOG_TYPE_ERROR, "Using requestCreatedTimestamp inside voiced for Server task", buf, 2u);
      }

      mach_absolute_time();
    }

    [(VSInstrumentMetrics *)v9->_instrumentMetrics setRequestCreatedTimestamp:?];
    v13 = VSGetLogDefault();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      instrumentMetrics = [(VSSpeechServerTask *)v9 instrumentMetrics];
      requestCreatedTimestamp = [instrumentMetrics requestCreatedTimestamp];
      *buf = 134218240;
      v33 = requestCreatedTimestamp;
      v34 = 1024;
      v35 = speakCopy;
      _os_log_impl(&dword_2727E4000, v13, OS_LOG_TYPE_INFO, "Created Server task %llu: shouldSpeak %{BOOL}d", buf, 0x12u);
    }

    v9->_readyForEagerTask = !speakCopy;
    text = [requestCopy text];
    [(VSInstrumentMetrics *)v9->_instrumentMetrics setUtterance:?];

    [(VSInstrumentMetrics *)v9->_instrumentMetrics setIsServerTTS:?];
    [(VSInstrumentMetrics *)v9->_instrumentMetrics setIsSpeechRequest:?];
    [requestCopy canUseServerTTS];
    [(VSInstrumentMetrics *)v9->_instrumentMetrics setCanUseServerTTS:?];
    clientBundleIdentifier = [requestCopy clientBundleIdentifier];
    [(VSInstrumentMetrics *)v9->_instrumentMetrics setClientBundleIdentifier:?];

    v9->_timeoutCondition.__sig = 1018212795;
    *v9->_timeoutCondition.__opaque = 0u;
    *&v9->_timeoutCondition.__opaque[16] = 0u;
    *&v9->_timeoutCondition.__opaque[32] = 0;
    v9->_deviceTTSWaitTime = NAN;
    v18 = [[VSDeviceTTSCore alloc] initWithRequest:?];
    synthesisCore = v9->_synthesisCore;
    v9->_synthesisCore = v18;

    instrumentMetrics2 = [(VSSpeechServerTask *)v9 instrumentMetrics];
    [(VSDeviceTTSCore *)v9->_synthesisCore setInstrumentMetrics:?];

    [(VSDeviceTTSCore *)v9->_synthesisCore setDelegate:?];
    v21 = [[VSOspreyTTSCore alloc] initWithRequest:?];
    ospreyCore = v9->_ospreyCore;
    v9->_ospreyCore = v21;

    instrumentMetrics3 = [(VSSpeechServerTask *)v9 instrumentMetrics];
    [(VSOspreyTTSCore *)v9->_ospreyCore setInstrumentMetrics:?];

    [(VSOspreyTTSCore *)v9->_ospreyCore setDelegate:?];
    standardInstance = [MEMORY[0x277D79998] standardInstance];
    internalSettings = v9->_internalSettings;
    v9->_internalSettings = standardInstance;

    v26 = +[VSCachingService standardService];
    cachingService = v9->_cachingService;
    v9->_cachingService = v26;

    v28 = +[VSSiriServerConfiguration defaultConfig];
    serverTTSConfig = v9->_serverTTSConfig;
    v9->_serverTTSConfig = v28;

    pthread_mutex_init(&v9->_racingMutex, 0);
  }

  return v9;
}

- (VSSpeechServerTask)init
{
  v2 = [MEMORY[0x277CBEAD8] exceptionWithName:? reason:? userInfo:?];
  objc_exception_throw(v2);
}

@end