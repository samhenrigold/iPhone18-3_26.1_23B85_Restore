@interface VSDurationEstimationTask
+ (id)shortTermCachedEngineForVoice:(id)voice voiceResource:(id)resource;
+ (id)shortTermCachedEngines;
- (VSDurationEstimationTask)init;
- (VSDurationEstimationTask)initWithRequest:(id)request;
- (void)cancel;
- (void)main;
@end

@implementation VSDurationEstimationTask

- (void)cancel
{
  deviceCore = [(VSDurationEstimationTask *)self deviceCore];
  [deviceCore cancel];

  v4 = [MEMORY[0x277CCA9B8] errorWithDomain:? code:? userInfo:?];
  [(VSDurationEstimationTask *)self setError:?];
}

- (void)main
{
  v55 = *MEMORY[0x277D85DE8];
  deviceCore = [(VSDurationEstimationTask *)self deviceCore];
  selectedVoice = [deviceCore selectedVoice];
  deviceCore2 = [(VSDurationEstimationTask *)self deviceCore];
  selectedVoiceResource = [deviceCore2 selectedVoiceResource];
  v7 = [VSDurationEstimationTask shortTermCachedEngineForVoice:"shortTermCachedEngineForVoice:voiceResource:" voiceResource:?];
  deviceCore3 = [(VSDurationEstimationTask *)self deviceCore];
  [deviceCore3 setEngine:?];

  deviceCore4 = [(VSDurationEstimationTask *)self deviceCore];
  engine = [deviceCore4 engine];

  if (!engine)
  {
    mEMORY[0x277D79950] = [MEMORY[0x277D79950] sharedManager];
    request = [(VSDurationEstimationTask *)self request];
    languageCode = [request languageCode];
    request2 = [(VSDurationEstimationTask *)self request];
    voiceName = [request2 voiceName];
    v16 = [mEMORY[0x277D79950] selectVoiceForLang:? name:? type:? gender:? footprint:?];

    v17 = objc_alloc(MEMORY[0x277D79990]);
    voicePath = [v16 voicePath];
    v19 = [v17 initWithVoicePath:? resourcePath:?];
    deviceCore5 = [(VSDurationEstimationTask *)self deviceCore];
    [deviceCore5 setEngine:?];
  }

  deviceCore6 = [(VSDurationEstimationTask *)self deviceCore];
  engine2 = [deviceCore6 engine];

  if (!engine2)
  {
    v27 = VSGetLogDefault();
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
LABEL_10:

      return;
    }

    request3 = [(VSDurationEstimationTask *)self request];
    *buf = 138412290;
    v52 = *&request3;
    _os_log_error_impl(&dword_2727E4000, v27, OS_LOG_TYPE_ERROR, "Unable to create engine for request %@", buf, 0xCu);
LABEL_20:

    goto LABEL_10;
  }

  deviceCore7 = [(VSDurationEstimationTask *)self deviceCore];
  [deviceCore7 start];

  if (([(VSDurationEstimationTask *)self isCancelled]& 1) != 0)
  {
    return;
  }

  deviceCore8 = [(VSDurationEstimationTask *)self deviceCore];
  error = [deviceCore8 error];

  if (!error)
  {
    deviceCore9 = [(VSDurationEstimationTask *)self deviceCore];
    engine3 = [deviceCore9 engine];

    if (engine3)
    {
      v30 = MEMORY[0x277CCACA8];
      deviceCore10 = [(VSDurationEstimationTask *)self deviceCore];
      selectedVoice2 = [deviceCore10 selectedVoice];
      v33 = [selectedVoice2 key];
      deviceCore11 = [(VSDurationEstimationTask *)self deviceCore];
      selectedVoiceResource2 = [deviceCore11 selectedVoiceResource];
      v36 = [selectedVoiceResource2 key];
      v37 = [v30 stringWithFormat:v33, v36];

      v38 = +[VSDurationEstimationTask shortTermCachedEngines];
      deviceCore12 = [(VSDurationEstimationTask *)self deviceCore];
      engine4 = [deviceCore12 engine];
      [v38 setObject:? forKey:? timeToLive:?];
    }

    deviceCore13 = [(VSDurationEstimationTask *)self deviceCore];
    streamAudio = [deviceCore13 streamAudio];
    deviceCore14 = [(VSDurationEstimationTask *)self deviceCore];
    v44 = deviceCore14;
    if (streamAudio)
    {
      [deviceCore14 streamAudio];
    }

    else
    {
      [deviceCore14 compressedAudio];
    }
    v45 = ;
    [v45 duration];
    self->_estimatedDuration = v46;

    v27 = VSGetLogDefault();
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      goto LABEL_10;
    }

    estimatedDuration = self->_estimatedDuration;
    request3 = [(VSDurationEstimationTask *)self request];
    utterance = [request3 utterance];
    *buf = 134218242;
    v52 = estimatedDuration;
    v53 = 2112;
    v54 = utterance;
    _os_log_impl(&dword_2727E4000, v27, OS_LOG_TYPE_INFO, "Estimated duration: %.2f, for utterance: %@", buf, 0x16u);

    goto LABEL_20;
  }

  self->_estimatedDuration = 0.0;
  deviceCore15 = [(VSDurationEstimationTask *)self deviceCore];
  error2 = [deviceCore15 error];
  [(VSDurationEstimationTask *)self setError:?];
}

- (VSDurationEstimationTask)initWithRequest:(id)request
{
  v20 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v17.receiver = self;
  v17.super_class = VSDurationEstimationTask;
  v6 = [(VSDurationEstimationTask *)&v17 init];
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
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_2727E4000, v10, OS_LOG_TYPE_INFO, "Using timestamp inside voiced for Estimation task", buf, 2u);
      }

      mach_absolute_time();
    }

    [(VSInstrumentMetrics *)v7->_instrumentMetrics setRequestCreatedTimestamp:?];
    v11 = VSGetLogDefault();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      instrumentMetrics = [(VSDurationEstimationTask *)v7 instrumentMetrics];
      requestCreatedTimestamp = [instrumentMetrics requestCreatedTimestamp];
      *buf = 134217984;
      v19 = requestCreatedTimestamp;
      _os_log_impl(&dword_2727E4000, v11, OS_LOG_TYPE_INFO, "Created Estimation task %llu", buf, 0xCu);
    }

    v14 = [[VSDeviceTTSCore alloc] initWithRequest:?];
    deviceCore = v7->_deviceCore;
    v7->_deviceCore = v14;
  }

  return v7;
}

- (VSDurationEstimationTask)init
{
  v2 = [MEMORY[0x277CBEAD8] exceptionWithName:? reason:? userInfo:?];
  objc_exception_throw(v2);
}

+ (id)shortTermCachedEngineForVoice:(id)voice voiceResource:(id)resource
{
  resourceCopy = resource;
  voiceCopy = voice;
  v7 = +[VSDurationEstimationTask shortTermCachedEngines];
  v8 = MEMORY[0x277CCACA8];
  v9 = [voiceCopy key];

  v10 = [resourceCopy key];

  v11 = [v8 stringWithFormat:v9, v10];

  v12 = [v7 objectForKey:?];

  return v12;
}

+ (id)shortTermCachedEngines
{
  if (shortTermCachedEngines_onceToken != -1)
  {
    dispatch_once(&shortTermCachedEngines_onceToken, &__block_literal_global_135);
  }

  v3 = shortTermCachedEngines_shortTermCachedEngines;

  return v3;
}

uint64_t __50__VSDurationEstimationTask_shortTermCachedEngines__block_invoke()
{
  shortTermCachedEngines_shortTermCachedEngines = objc_alloc_init(VSShortTermCache);

  return MEMORY[0x2821F96F8]();
}

@end