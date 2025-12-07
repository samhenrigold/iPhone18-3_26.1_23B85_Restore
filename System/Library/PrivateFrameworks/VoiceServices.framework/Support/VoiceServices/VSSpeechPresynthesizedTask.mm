@interface VSSpeechPresynthesizedTask
- (AudioStreamBasicDescription)asbd;
- (NSString)description;
- (VSSpeechPresynthesizedTask)init;
- (VSSpeechPresynthesizedTask)initWithRequest:(id)request;
- (VSSpeechServiceDelegate)delegate;
- (id)audioPowerProvider;
- (void)cancel;
- (void)main;
- (void)reportFinish;
- (void)reportSpeechStart;
- (void)resume;
- (void)setAsbd:(AudioStreamBasicDescription *)asbd;
- (void)suspend;
@end

@implementation VSSpeechPresynthesizedTask

- (void)setAsbd:(AudioStreamBasicDescription *)asbd
{
  v3 = *&asbd->mBitsPerChannel;
  v4 = *&asbd->mBytesPerPacket;
  *&self->_asbd.mSampleRate = *&asbd->mSampleRate;
  *&self->_asbd.mBytesPerPacket = v4;
  *&self->_asbd.mBitsPerChannel = v3;
}

- (AudioStreamBasicDescription)asbd
{
  v3 = *&self[8].mSampleRate;
  *&retstr->mSampleRate = *&self[7].mBytesPerFrame;
  *&retstr->mBytesPerPacket = v3;
  *&retstr->mBitsPerChannel = *&self[8].mBytesPerPacket;
  return self;
}

- (VSSpeechServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)audioPowerProvider
{
  playbackService = [(VSSpeechPresynthesizedTask *)self playbackService];
  audioPowerProvider = [playbackService audioPowerProvider];

  return audioPowerProvider;
}

- (void)reportFinish
{
  v57 = *MEMORY[0x277D85DE8];
  delegate = [(VSSpeechPresynthesizedTask *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(VSSpeechPresynthesizedTask *)self delegate];
    request = [(VSSpeechPresynthesizedTask *)self request];
    instrumentMetrics = [(VSSpeechPresynthesizedTask *)self instrumentMetrics];
    error = [(VSSpeechPresynthesizedTask *)self error];
    [delegate2 audioRequest:? didReportInstrumentMetrics:? error:?];
  }

  delegate3 = [(VSSpeechPresynthesizedTask *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    delegate4 = [(VSSpeechPresynthesizedTask *)self delegate];
    request2 = [(VSSpeechPresynthesizedTask *)self request];
    error2 = [(VSSpeechPresynthesizedTask *)self error];
    error3 = [(VSSpeechPresynthesizedTask *)self error];
    [delegate4 audioRequest:? didStopAtEnd:? error:?];
  }

  error4 = [(VSSpeechPresynthesizedTask *)self error];
  if (!error4)
  {
    goto LABEL_9;
  }

  v16 = error4;
  error5 = [(VSSpeechPresynthesizedTask *)self error];
  if ([error5 code] == 400)
  {

LABEL_9:
    v20 = VSGetLogDefault();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      instrumentMetrics2 = [(VSSpeechPresynthesizedTask *)self instrumentMetrics];
      requestCreatedTimestamp = [instrumentMetrics2 requestCreatedTimestamp];
      if ([(VSSpeechPresynthesizedTask *)self isCancelled])
      {
        v22 = @"Cancelled";
      }

      else
      {
        v22 = @"Finished";
      }

      request3 = [(VSSpeechPresynthesizedTask *)self request];
      text = [request3 text];
      v25 = text;
      if (text)
      {
        v26 = text;
      }

      else
      {
        v26 = &stru_2881CBD18;
      }

      v27 = MEMORY[0x277CCABB0];
      instrumentMetrics3 = [(VSSpeechPresynthesizedTask *)self instrumentMetrics];
      [instrumentMetrics3 audioDuration];
      v47 = [v27 numberWithDouble:?];
      v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
      *buf = 134218754;
      v49 = requestCreatedTimestamp;
      v50 = 2112;
      v51 = v22;
      v52 = 2112;
      v53 = v26;
      v54 = 2114;
      v55 = v29;
      _os_log_impl(&dword_2727E4000, v20, OS_LOG_TYPE_DEFAULT, "Audio task %llu: %@ speaking utterance '%@', %{public}@", buf, 0x2Au);
    }

    isCancelled = [(VSSpeechPresynthesizedTask *)self isCancelled];
    siriInstrumentation = [(VSSpeechPresynthesizedTask *)self siriInstrumentation];
    siriInstrumentation2 = siriInstrumentation;
    if (isCancelled)
    {
      [siriInstrumentation instrumentSpeechCancelled];
    }

    else
    {
      instrumentMetrics4 = [(VSSpeechPresynthesizedTask *)self instrumentMetrics];
      [instrumentMetrics4 audioDuration];
      instrumentMetrics5 = [(VSSpeechPresynthesizedTask *)self instrumentMetrics];
      [instrumentMetrics5 ttsSynthesisLatency];
      instrumentMetrics6 = [(VSSpeechPresynthesizedTask *)self instrumentMetrics];
      [instrumentMetrics6 cappedRealTimeFactor];
      instrumentMetrics7 = [(VSSpeechPresynthesizedTask *)self instrumentMetrics];
      [instrumentMetrics7 promptCount];
      instrumentMetrics8 = [(VSSpeechPresynthesizedTask *)self instrumentMetrics];
      [instrumentMetrics8 errorCode];
      [siriInstrumentation2 instrumentSpeechEndedWithAudioDuration:? synthesisLatency:? realTimeFactor:? promptCount:? errorCode:?];
    }

    goto LABEL_23;
  }

  error6 = [(VSSpeechPresynthesizedTask *)self error];
  code = [error6 code];

  if (code == 501)
  {
    goto LABEL_9;
  }

  v38 = VSGetLogDefault();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
  {
    request4 = [(VSSpeechPresynthesizedTask *)self request];
    requestCreatedTimestamp2 = [request4 requestCreatedTimestamp];
    error7 = [(VSSpeechPresynthesizedTask *)self error];
    *buf = 134218242;
    v49 = requestCreatedTimestamp2;
    v50 = 2112;
    v51 = error7;
    _os_log_error_impl(&dword_2727E4000, v38, OS_LOG_TYPE_ERROR, "Error in audio task %llu, error: %@", buf, 0x16u);
  }

  siriInstrumentation2 = [(VSSpeechPresynthesizedTask *)self siriInstrumentation];
  v39 = MEMORY[0x277CCABB0];
  error8 = [(VSSpeechPresynthesizedTask *)self error];
  [error8 code];
  v41 = [v39 numberWithInteger:?];
  v56 = v41;
  v42 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
  [siriInstrumentation2 instrumentSpeechFailedWithErrorCodes:?];

LABEL_23:
}

- (void)reportSpeechStart
{
  delegate = [(VSSpeechPresynthesizedTask *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(VSSpeechPresynthesizedTask *)self delegate];
    request = [(VSSpeechPresynthesizedTask *)self request];
    [delegate2 audioRequestDidStart:?];
  }

  siriInstrumentation = [(VSSpeechPresynthesizedTask *)self siriInstrumentation];
  instrumentMetrics = [(VSSpeechPresynthesizedTask *)self instrumentMetrics];
  [instrumentMetrics timeToSpeakLatency];
  playbackService = [(VSSpeechPresynthesizedTask *)self playbackService];
  outputRouteInfo = [playbackService outputRouteInfo];
  LOBYTE(v10) = 0;
  [siriInstrumentation instrumentSpeechStartedWithSource:v10 customerPerceivedLatency:? audioOutputRoute:? voiceType:? voiceFootprint:? voiceVersion:? resourceVersion:? isWhisper:?];
}

- (void)resume
{
  playbackService = [(VSSpeechPresynthesizedTask *)self playbackService];
  start = [playbackService start];
}

- (void)suspend
{
  playbackService = [(VSSpeechPresynthesizedTask *)self playbackService];
  [playbackService pause];
}

- (void)cancel
{
  v3 = [MEMORY[0x277CCA9B8] errorWithDomain:? code:? userInfo:?];
  [(VSSpeechPresynthesizedTask *)self setError:?];

  if (([(VSSpeechPresynthesizedTask *)self isExecuting]& 1) != 0 || ([(VSSpeechPresynthesizedTask *)self isCancelled]& 1) != 0 || ([(VSSpeechPresynthesizedTask *)self isFinished]& 1) != 0)
  {
    v7.receiver = self;
    v7.super_class = VSSpeechPresynthesizedTask;
    [(VSSpeechPresynthesizedTask *)&v7 cancel];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = VSSpeechPresynthesizedTask;
    [(VSSpeechPresynthesizedTask *)&v8 cancel];
    [(VSSpeechPresynthesizedTask *)self reportFinish];
  }

  playbackService = [(VSSpeechPresynthesizedTask *)self playbackService];
  [playbackService stop];

  delegate = [(VSSpeechPresynthesizedTask *)self delegate];
  request = [(VSSpeechPresynthesizedTask *)self request];
  [delegate audioRequest:? didStopAtEnd:? error:?];
}

- (void)main
{
  v49 = *MEMORY[0x277D85DE8];
  v3 = VSGetLogDefault();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    request = [(VSSpeechPresynthesizedTask *)self request];
    *buf = 138412290;
    *&buf[4] = request;
    _os_log_impl(&dword_2727E4000, v3, OS_LOG_TYPE_DEFAULT, "Speaking pre-synthesized audio: %@", buf, 0xCu);
  }

  mach_absolute_time();
  instrumentMetrics = [(VSSpeechPresynthesizedTask *)self instrumentMetrics];
  [instrumentMetrics setSynthesisBeginTimestamp:?];

  v6 = +[VSSiriServerConfiguration defaultConfig];
  experimentIdentifier = [v6 experimentIdentifier];
  instrumentMetrics2 = [(VSSpeechPresynthesizedTask *)self instrumentMetrics];
  [instrumentMetrics2 setExperimentIdentifier:?];

  v9 = MEMORY[0x277D79920];
  request2 = [(VSSpeechPresynthesizedTask *)self request];
  v11 = [v9 audioDataFromPresynthesisRequest:?];

  mach_absolute_time();
  instrumentMetrics3 = [(VSSpeechPresynthesizedTask *)self instrumentMetrics];
  [instrumentMetrics3 setSynthesisEndTimestamp:?];

  if (v11)
  {
    [&v39 asbd];
  }

  else
  {
    v41 = 0;
    v39 = 0u;
    v40 = 0u;
  }

  *buf = v39;
  v47 = v40;
  v48 = v41;
  [(VSSpeechPresynthesizedTask *)self setAsbd:v39, v40, v41];
  v13 = [VSAudioPlaybackService alloc];
  request3 = [(VSSpeechPresynthesizedTask *)self request];
  [request3 audioSessionID];
  [(uint8_t *)buf asbd];
  request4 = [(VSSpeechPresynthesizedTask *)self request];
  accessoryID = [request4 accessoryID];
  v17 = [VSAudioPlaybackService initWithAudioSessionID:v13 asbd:"initWithAudioSessionID:asbd:useAVSBAR:" useAVSBAR:?];
  [(VSSpeechPresynthesizedTask *)self setPlaybackService:?];

  playbackService = [(VSSpeechPresynthesizedTask *)self playbackService];
  outputRouteInfo = [playbackService outputRouteInfo];
  audioRouteName = [outputRouteInfo audioRouteName];
  instrumentMetrics4 = [(VSSpeechPresynthesizedTask *)self instrumentMetrics];
  [instrumentMetrics4 setAudioOutputRoute:?];

  playbackService2 = [(VSSpeechPresynthesizedTask *)self playbackService];

  if (!playbackService2)
  {
    v36 = MEMORY[0x277CCA9B8];
    v44 = *MEMORY[0x277CCA470];
    v45 = @"Can't create VSAudioPlaybackService";
    v37 = MEMORY[0x277CBEAC0];
LABEL_13:
    instrumentMetrics8 = [v37 dictionaryWithObjects:? forKeys:? count:?];
    v38 = [v36 errorWithDomain:? code:? userInfo:?];
    [(VSSpeechPresynthesizedTask *)self setError:?];

    goto LABEL_14;
  }

  if (!v11)
  {
    v36 = MEMORY[0x277CCA9B8];
    v42 = *MEMORY[0x277CCA450];
    v43 = @"Can't decode audio data";
    v37 = MEMORY[0x277CBEAC0];
    goto LABEL_13;
  }

  if (([(VSSpeechPresynthesizedTask *)self isCancelled]& 1) == 0)
  {
    error = [(VSSpeechPresynthesizedTask *)self error];

    if (!error)
    {
      mach_absolute_time();
      playbackService3 = [(VSSpeechPresynthesizedTask *)self playbackService];
      start = [playbackService3 start];

      mach_absolute_time();
      instrumentMetrics5 = [(VSSpeechPresynthesizedTask *)self instrumentMetrics];
      [instrumentMetrics5 setAudioStartTimestampDiffs:?];

      playbackService4 = [(VSSpeechPresynthesizedTask *)self playbackService];
      audioData = [v11 audioData];
      [v11 packetCount];
      packetDescriptions = [v11 packetDescriptions];
      [playbackService4 enqueue:? packetCount:? packetDescriptions:?];

      mach_absolute_time();
      instrumentMetrics6 = [(VSSpeechPresynthesizedTask *)self instrumentMetrics];
      [instrumentMetrics6 setSpeechBeginTimestamp:?];

      [(VSSpeechPresynthesizedTask *)self reportSpeechStart];
      playbackService5 = [(VSSpeechPresynthesizedTask *)self playbackService];
      [playbackService5 flushAndStop];

      playbackService6 = [(VSSpeechPresynthesizedTask *)self playbackService];
      error2 = [playbackService6 error];
      [(VSSpeechPresynthesizedTask *)self setError:?];

      mach_absolute_time();
      instrumentMetrics7 = [(VSSpeechPresynthesizedTask *)self instrumentMetrics];
      [instrumentMetrics7 setSpeechEndTimestamp:?];

      [v11 duration];
      instrumentMetrics8 = [(VSSpeechPresynthesizedTask *)self instrumentMetrics];
      [instrumentMetrics8 setAudioDuration:?];
LABEL_14:
    }
  }

  [(VSSpeechPresynthesizedTask *)self reportFinish];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = MEMORY[0x277CCABB0];
  [(VSSpeechPresynthesizedTask *)self isExecuting];
  v5 = [v4 numberWithBool:?];
  v6 = [v3 stringWithFormat:v5, self->_request];

  return v6;
}

- (VSSpeechPresynthesizedTask)initWithRequest:(id)request
{
  v19 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v16.receiver = self;
  v16.super_class = VSSpeechPresynthesizedTask;
  v6 = [(VSSpeechPresynthesizedTask *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_request, request);
    v8 = objc_alloc_init(MEMORY[0x277D79938]);
    instrumentMetrics = v7->_instrumentMetrics;
    v7->_instrumentMetrics = v8;

    [(VSInstrumentMetrics *)v7->_instrumentMetrics setSourceOfTTS:?];
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
        _os_log_error_impl(&dword_2727E4000, v10, OS_LOG_TYPE_ERROR, "Using timestamp inside voiced for Presynthesized task", buf, 2u);
      }

      mach_absolute_time();
    }

    [(VSInstrumentMetrics *)v7->_instrumentMetrics setRequestCreatedTimestamp:?];
    v11 = VSGetLogDefault();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      instrumentMetrics = [(VSSpeechPresynthesizedTask *)v7 instrumentMetrics];
      requestCreatedTimestamp = [instrumentMetrics requestCreatedTimestamp];
      *buf = 134217984;
      v18 = requestCreatedTimestamp;
      _os_log_impl(&dword_2727E4000, v11, OS_LOG_TYPE_INFO, "Created Presynthesized Task %llu", buf, 0xCu);
    }

    clientBundleIdentifier = [requestCopy clientBundleIdentifier];
    [(VSInstrumentMetrics *)v7->_instrumentMetrics setClientBundleIdentifier:?];

    kdebug_trace();
  }

  return v7;
}

- (VSSpeechPresynthesizedTask)init
{
  v2 = [MEMORY[0x277CBEAD8] exceptionWithName:? reason:? userInfo:?];
  objc_exception_throw(v2);
}

@end