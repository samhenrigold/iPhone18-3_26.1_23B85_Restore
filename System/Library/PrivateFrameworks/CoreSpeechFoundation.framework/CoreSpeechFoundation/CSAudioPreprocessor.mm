@interface CSAudioPreprocessor
- (CSAudioPreprocessor)initWithSampleRate:(float)rate withNumberOfChannels:(int)channels recordType:(int64_t)type;
- (CSAudioPreprocessorDelegate)delegate;
- (id)_fetchCurrentMetrics;
- (void)_reportMetrics;
- (void)beepCancellerDidCancelSamples:(id)samples buffer:(id)buffer timestamp:(unint64_t)timestamp;
- (void)flush;
- (void)processBuffer:(id)buffer atTime:(unint64_t)time arrivalTimestampToAudioRecorder:(unint64_t)recorder;
- (void)reportMetricsForSiriRequestWithUUID:(id)d;
- (void)resetWithSampleRate:(float)rate containsVoiceTrigger:(BOOL)trigger voiceTriggerInfo:(id)info;
- (void)willBeepWithRecordRoute:(id)route playbackRoute:(id)playbackRoute;
- (void)zeroFilter:(id)filter zeroFilteredBufferAvailable:(id)available atHostTime:(unint64_t)time;
@end

@implementation CSAudioPreprocessor

- (CSAudioPreprocessorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)flush
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[CSAudioPreprocessor flush]";
    _os_log_impl(&dword_1DDA4B000, v3, OS_LOG_TYPE_DEFAULT, "%s Flushing audio preprocessor", &v8, 0xCu);
  }

  zeroFilter = [(CSAudioPreprocessor *)self zeroFilter];
  [zeroFilter flush];

  beepCanceller = [(CSAudioPreprocessor *)self beepCanceller];
  [beepCanceller flush];

  zeroCounter = self->_zeroCounter;
  v7 = +[CSVoiceTriggerStatAggregator sharedAggregator];
  [(CSAudioZeroCounter *)zeroCounter stopCountingZeroStatisticsWithReporter:v7];

  [(CSAudioPreprocessor *)self _reportMetrics];
}

- (void)_reportMetrics
{
  _fetchCurrentMetrics = [(CSAudioPreprocessor *)self _fetchCurrentMetrics];
  if (_fetchCurrentMetrics)
  {
    v4 = _fetchCurrentMetrics;
    mEMORY[0x1E698D0C0] = [MEMORY[0x1E698D0C0] sharedAnalytics];
    [mEMORY[0x1E698D0C0] logEventWithType:241 context:v4];

    _fetchCurrentMetrics = v4;
  }
}

- (id)_fetchCurrentMetrics
{
  v14 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  metrics = [(CSVoiceTriggerAwareZeroFilter *)self->_zeroFilter metrics];
  if (metrics)
  {
    [dictionary setObject:metrics forKey:@"ZeroFilterMetrics"];
    v5 = CSLogCategoryAudio;
    if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315394;
      v11 = "[CSAudioPreprocessor _fetchCurrentMetrics]";
      v12 = 2114;
      v13 = metrics;
      _os_log_impl(&dword_1DDA4B000, v5, OS_LOG_TYPE_DEFAULT, "%s Zero Filter Metrics: %{public}@", &v10, 0x16u);
    }
  }

  metrics2 = [(CSBeepCanceller *)self->_beepCanceller metrics];
  if (metrics2)
  {
    [dictionary setObject:metrics2 forKey:@"BeepCancellerMetrics"];
    v7 = CSLogCategoryAudio;
    if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315394;
      v11 = "[CSAudioPreprocessor _fetchCurrentMetrics]";
      v12 = 2114;
      v13 = metrics2;
      _os_log_impl(&dword_1DDA4B000, v7, OS_LOG_TYPE_DEFAULT, "%s Beep Canceller Metrics : %{public}@", &v10, 0x16u);
    }
  }

  v8 = [dictionary mutableCopy];

  return v8;
}

- (void)beepCancellerDidCancelSamples:(id)samples buffer:(id)buffer timestamp:(unint64_t)timestamp
{
  bufferCopy = buffer;
  delegate = [(CSAudioPreprocessor *)self delegate];
  [delegate audioPreprocessor:self hasAvailableBuffer:bufferCopy atTime:timestamp arrivalTimestampToAudioRecorder:0 numberOfChannels:self->_numChannels];
}

- (void)zeroFilter:(id)filter zeroFilteredBufferAvailable:(id)available atHostTime:(unint64_t)time
{
  availableCopy = available;
  beepCanceller = [(CSAudioPreprocessor *)self beepCanceller];

  if (beepCanceller)
  {
    beepCanceller2 = [(CSAudioPreprocessor *)self beepCanceller];
    [beepCanceller2 cancelBeepFromSamples:availableCopy timestamp:time];
  }

  else
  {
    beepCanceller2 = [(CSAudioPreprocessor *)self delegate];
    [beepCanceller2 audioPreprocessor:self hasAvailableBuffer:availableCopy atTime:time arrivalTimestampToAudioRecorder:0 numberOfChannels:self->_numChannels];
  }
}

- (void)reportMetricsForSiriRequestWithUUID:(id)d
{
  v4 = MEMORY[0x1E696AFB0];
  dCopy = d;
  v8 = [[v4 alloc] initWithUUIDString:dCopy];

  if (v8)
  {
    _fetchCurrentMetrics = [(CSAudioPreprocessor *)self _fetchCurrentMetrics];
    if (_fetchCurrentMetrics)
    {
      v7 = +[CSFAudioMetricsSelfLogger sharedLogger];
      [v7 logCoreSpeechPreprocessorCompletedWithMHUUID:v8 withMetricsDictionary:_fetchCurrentMetrics];
    }
  }
}

- (void)willBeepWithRecordRoute:(id)route playbackRoute:(id)playbackRoute
{
  if (![CSUtils isHeadphoneDeviceWithRecordRoute:route playbackRoute:playbackRoute])
  {
    beepCanceller = [(CSAudioPreprocessor *)self beepCanceller];
    [beepCanceller willBeep];
  }
}

- (void)processBuffer:(id)buffer atTime:(unint64_t)time arrivalTimestampToAudioRecorder:(unint64_t)recorder
{
  bufferCopy = buffer;
  v14 = bufferCopy;
  if (self->_numChannels > 1)
  {
    delegate = [(CSAudioPreprocessor *)self delegate];
    [delegate audioPreprocessor:self hasAvailableBuffer:v14 atTime:time arrivalTimestampToAudioRecorder:recorder numberOfChannels:self->_numChannels];
    v10 = v14;
  }

  else
  {
    -[CSAudioZeroCounter getZeroStatisticsFromBuffer:entireSamples:](self->_zeroCounter, "getZeroStatisticsFromBuffer:entireSamples:", bufferCopy, ([bufferCopy length] >> 1) / +[CSConfig inputRecordingNumberOfChannels](CSConfig, "inputRecordingNumberOfChannels"));
    upsampler = [(CSAudioPreprocessor *)self upsampler];

    v10 = v14;
    if (upsampler)
    {
      v10 = [(CSAudioSampleRateConverter *)self->_upsampler convertSampleRateOfBuffer:v14];
    }

    zeroFilter = [(CSAudioPreprocessor *)self zeroFilter];

    if (zeroFilter)
    {
      delegate = [(CSAudioPreprocessor *)self zeroFilter];
      [delegate processBuffer:v10 atTime:time];
    }

    else
    {
      beepCanceller = [(CSAudioPreprocessor *)self beepCanceller];

      if (beepCanceller)
      {
        delegate = [(CSAudioPreprocessor *)self beepCanceller];
        [delegate cancelBeepFromSamples:v10 timestamp:time];
      }

      else
      {
        delegate = [(CSAudioPreprocessor *)self delegate];
        [delegate audioPreprocessor:self hasAvailableBuffer:v10 atTime:time arrivalTimestampToAudioRecorder:recorder numberOfChannels:self->_numChannels];
      }
    }
  }
}

- (void)resetWithSampleRate:(float)rate containsVoiceTrigger:(BOOL)trigger voiceTriggerInfo:(id)info
{
  triggerCopy = trigger;
  v29 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  v9 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 136315650;
    v24 = "[CSAudioPreprocessor resetWithSampleRate:containsVoiceTrigger:voiceTriggerInfo:]";
    v25 = 2050;
    rateCopy = rate;
    v27 = 1026;
    v28 = triggerCopy;
    _os_log_impl(&dword_1DDA4B000, v9, OS_LOG_TYPE_DEFAULT, "%s Resetting audio preprocessor : %{public}f, containsVoiceTrigger:%{public}d", &v23, 0x1Cu);
  }

  if (CSIsInternalBuild_onceToken != -1)
  {
    dispatch_once(&CSIsInternalBuild_onceToken, &__block_literal_global_53);
  }

  if (CSIsInternalBuild_isInternal == 1)
  {
    zeroCounter = self->_zeroCounter;
    if (zeroCounter)
    {
      *&v10 = rate;
      [(CSAudioZeroCounter *)zeroCounter resetWithSampleRate:v10];
    }

    else
    {
      v12 = [CSAudioZeroCounter alloc];
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      *&v15 = rate;
      v16 = [(CSAudioZeroCounter *)v12 initWithToken:v14 sampleRate:1 numChannels:v15];
      v17 = self->_zeroCounter;
      self->_zeroCounter = v16;
    }
  }

  *&v10 = rate;
  [(CSAudioPreprocessor *)self setSampleRate:v10];
  *&v18 = rate;
  if ([(CSAudioPreprocessor *)self _isNarrowBand:v18])
  {
    v19 = +[CSAudioSampleRateConverter upsampler];
    [(CSAudioPreprocessor *)self setUpsampler:v19];
  }

  else
  {
    [(CSAudioPreprocessor *)self setUpsampler:0];
  }

  zeroFilter = [(CSAudioPreprocessor *)self zeroFilter];
  *&v21 = rate;
  [zeroFilter resetWithSampleRate:triggerCopy containsVoiceTrigger:infoCopy voiceTriggerInfo:v21];

  beepCanceller = [(CSAudioPreprocessor *)self beepCanceller];
  [beepCanceller reset];
}

- (CSAudioPreprocessor)initWithSampleRate:(float)rate withNumberOfChannels:(int)channels recordType:(int64_t)type
{
  v6 = *&channels;
  v15.receiver = self;
  v15.super_class = CSAudioPreprocessor;
  v8 = [(CSAudioPreprocessor *)&v15 init];
  if (v8)
  {
    if (+[CSUtils supportZeroFilter:](CSUtils, "supportZeroFilter:", +[CSConfig inputRecordingNumberOfChannels]))
    {
      v9 = objc_alloc_init(CSVoiceTriggerAwareZeroFilter);
      zeroFilter = v8->_zeroFilter;
      v8->_zeroFilter = v9;

      [(CSVoiceTriggerAwareZeroFilter *)v8->_zeroFilter setDelegate:v8];
    }

    if (+[CSUtils supportBeepCanceller:recordType:](CSUtils, "supportBeepCanceller:recordType:", +[CSConfig inputRecordingNumberOfChannels], type))
    {
      v11 = objc_alloc_init(CSBeepCanceller);
      beepCanceller = v8->_beepCanceller;
      v8->_beepCanceller = v11;

      [(CSBeepCanceller *)v8->_beepCanceller setDelegate:v8];
    }

    [(CSAudioPreprocessor *)v8 setNumChannels:v6];
    *&v13 = rate;
    [(CSAudioPreprocessor *)v8 resetWithSampleRate:0 containsVoiceTrigger:0 voiceTriggerInfo:v13];
  }

  return v8;
}

@end