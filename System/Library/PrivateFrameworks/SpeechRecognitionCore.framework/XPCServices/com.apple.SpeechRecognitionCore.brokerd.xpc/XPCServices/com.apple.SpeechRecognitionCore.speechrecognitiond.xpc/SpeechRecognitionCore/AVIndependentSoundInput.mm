@interface AVIndependentSoundInput
- (AVIndependentSoundInput)initWithExpectedFormat:(id)format deliverSamples:(id)samples;
- (BOOL)isRecording;
- (BOOL)setupAudioSession;
- (BOOL)startRecording:(int)recording;
- (BOOL)startRunningAudioEngine;
- (void)_addRecordedSpeechSampleData:(signed __int16 *)data length:(unsigned int)length;
- (void)_appendPCMBuffer:(id)buffer;
- (void)_convertAndFeedPCMBufferAVAudioPCMBuffer:(id)buffer;
- (void)_drainAndClearAudioConverter;
- (void)_handleConfigurationChangeNotification:(id)notification;
- (void)activateNotifications;
- (void)deactivateNotifications;
- (void)dealloc;
- (void)stopRecording;
- (void)stopRunningAudioEngine;
@end

@implementation AVIndependentSoundInput

- (AVIndependentSoundInput)initWithExpectedFormat:(id)format deliverSamples:(id)samples
{
  formatCopy = format;
  samplesCopy = samples;
  v21.receiver = self;
  v21.super_class = AVIndependentSoundInput;
  v9 = [(AVIndependentSoundInput *)&v21 init];
  if (v9 && (v10 = dispatch_queue_create("RDAudioBufferQueue", 0), v11 = *(v9 + 2), *(v9 + 2) = v10, v11, dispatch_queue_set_specific(*(v9 + 2), v9, v9, 0), objc_storeStrong(v9 + 6, format), v12 = objc_retainBlock(samplesCopy), v13 = *(v9 + 5), *(v9 + 5) = v12, v13, v14 = objc_alloc_init(AVAudioEngine), v15 = *(v9 + 4), *(v9 + 4) = v14, v15, v16 = [v9 setupAudioSession], *(v9 + 24) = v16, (v16 & 1) == 0))
  {
    v18 = RXOSLog(v16);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "AVI:ERROR in setting up the audio session", v20, 2u);
    }

    v17 = 0;
  }

  else
  {
    v17 = v9;
  }

  return v17;
}

- (BOOL)setupAudioSession
{
  v2 = objc_alloc_init(AVAudioSessionRouteControl);
  [v2 setRouteControlOptions:1];
  v3 = +[AVAudioSession sharedInstance];
  v23 = 0;
  [v3 setPreferredRouteControlConfig:v2 error:&v23];
  v4 = v23;

  if (v4)
  {
    preferredRouteControlConfig = RXOSLog(v5);
    if (os_log_type_enabled(preferredRouteControlConfig, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v25 = v4;
      v7 = "AVI:Error setting preffered route: %@";
LABEL_7:
      _os_log_impl(&_mh_execute_header, preferredRouteControlConfig, OS_LOG_TYPE_ERROR, v7, buf, 0xCu);
      goto LABEL_17;
    }

    goto LABEL_17;
  }

  v8 = +[AVAudioSession sharedInstance];
  v22 = 0;
  [v8 setCategory:AVAudioSessionCategoryRecord withOptions:131073 error:&v22];
  v4 = v22;

  if (!v4)
  {
    v10 = +[AVAudioSession sharedInstance];
    preferredRouteControlConfig = [v10 preferredRouteControlConfig];

    routeControlOptions = [v2 routeControlOptions];
    if (routeControlOptions != 1)
    {
      v14 = RXOSLog(routeControlOptions);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "AVI:no independent route", buf, 2u);
      }

      v4 = 0;
      goto LABEL_16;
    }

    v12 = +[AVAudioSession sharedInstance];
    v21 = 0;
    [v12 setAllowHapticsAndSystemSoundsDuringRecording:1 error:&v21];
    v4 = v21;

    if (v4)
    {
      v14 = RXOSLog(v13);
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
LABEL_16:

        goto LABEL_17;
      }

      *buf = 138412290;
      v25 = v4;
      v15 = "AVI:Error setting haptics and sounds during recording: %@";
LABEL_12:
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, v15, buf, 0xCu);
      goto LABEL_16;
    }

    if (_os_feature_enabled_impl())
    {
      v18 = +[AVAudioSession sharedInstance];
      v20 = 0;
      [v18 setMXSessionProperty:kMXSessionProperty_PrefersNoInterruptionsDuringRemoteDeviceControl value:&__kCFBooleanTrue error:&v20];
      v4 = v20;

      if (v4)
      {
        v14 = RXOSLog(v19);
        if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_16;
        }

        *buf = 138412290;
        v25 = v4;
        v15 = "AVI:Error setting MX property for non-interruption: %@";
        goto LABEL_12;
      }
    }

    else
    {
      v4 = 0;
    }

    v16 = 1;
    goto LABEL_18;
  }

  preferredRouteControlConfig = RXOSLog(v9);
  if (os_log_type_enabled(preferredRouteControlConfig, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v25 = v4;
    v7 = "AVI:Error setting audio session category: %@";
    goto LABEL_7;
  }

LABEL_17:
  v16 = 0;
LABEL_18:

  return v16;
}

- (void)activateNotifications
{
  v3 = RXOSLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "AVI:AV activateNotifications", v5, 2u);
  }

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"_handleConfigurationChangeNotification:" name:AVAudioEngineConfigurationChangeNotification object:self->_audioEngine];
}

- (void)deactivateNotifications
{
  v3 = RXOSLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "AVI:AV deactivateNotifications", v5, 2u);
  }

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:AVAudioEngineConfigurationChangeNotification object:self->_audioEngine];
}

- (void)_handleConfigurationChangeNotification:(id)notification
{
  notificationCopy = notification;
  v5 = RXOSLog(notificationCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v8 = notificationCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "AVI::Audio configuration changed = %@", buf, 0xCu);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100007F4C;
  block[3] = &unk_1000FE108;
  block[4] = self;
  dispatch_async(gRDServerQueue, block);
}

- (BOOL)startRecording:(int)recording
{
  v4 = RXOSLog(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "AVI:startRecording", buf, 2u);
  }

  v5 = +[RDSoundInputImpl_iOS_Shared isSystemSleeping];
  if (v5)
  {
    v6 = RXOSLog(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "AVI:System is sleeping, so don't start recording", buf, 2u);
    }

    v7 = 0;
    goto LABEL_33;
  }

  isRunning = [(AVAudioEngine *)self->_audioEngine isRunning];
  if (!isRunning)
  {
    [(AVIndependentSoundInput *)self stopRunningAudioEngine];
    if ([(AVIndependentSoundInput *)self audioSessionSetupCompleted])
    {
      v6 = 0;
    }

    else
    {
      v9 = +[AVAudioSession sharedInstance];
      v26 = 0;
      v10 = [v9 setActive:1 error:&v26];
      v6 = v26;

      v12 = RXOSLog(v11);
      v13 = v12;
      if ((v10 & 1) == 0)
      {
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          localizedDescription = [v6 localizedDescription];
          *buf = 138412546;
          v28 = v6;
          v29 = 2112;
          v30 = localizedDescription;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "AVI:AVAudioSession set active failed with error code:{%@}, error message: {%@}", buf, 0x16u);
        }

        v7 = 0;
        goto LABEL_32;
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "AVI:Audio Session already active", buf, 2u);
      }
    }

    [(AVIndependentSoundInput *)self activateNotifications];
    startRunningAudioEngine = [(AVIndependentSoundInput *)self startRunningAudioEngine];
    v15 = startRunningAudioEngine;
    v16 = RXOSLog(startRunningAudioEngine);
    v13 = v16;
    if (v15)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "AVI:Started Recording from AV", buf, 2u);
      }

      v7 = 1;
    }

    else
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "AVI:Could not start recording from AV, deactivating the audio session", buf, 2u);
      }

      v17 = +[AVAudioSession sharedInstance];
      v25 = v6;
      v18 = [v17 setActive:0 withOptions:1 error:&v25];
      v19 = v25;

      v21 = RXOSLog(v20);
      v13 = v21;
      if (v18)
      {
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "AVI:Could not start recording from AV, Audio Session deactivated", buf, 2u);
        }
      }

      else if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        localizedDescription2 = [v19 localizedDescription];
        *buf = 138412546;
        v28 = v19;
        v29 = 2112;
        v30 = localizedDescription2;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "AVI:AVAudioSession could not deactivate, error code:{%@}, error message: {%@}", buf, 0x16u);
      }

      v7 = 0;
      v6 = v19;
    }

LABEL_32:

    goto LABEL_33;
  }

  v6 = RXOSLog(isRunning);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "AVI:AV is already running", buf, 2u);
  }

  v7 = 1;
LABEL_33:

  return v7;
}

- (BOOL)startRunningAudioEngine
{
  inputNode = [(AVAudioEngine *)self->_audioEngine inputNode];
  v4 = [inputNode inputFormatForBus:0];
  channelCount = [v4 channelCount];
  if (channelCount)
  {
    v6 = +[AVAudioSession sharedInstance];
    availableInputs = [v6 availableInputs];

    [inputNode removeTapOnBus:0];
    objc_initWeak(&location, self);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100008604;
    v15[3] = &unk_1000FE158;
    objc_copyWeak(&v16, &location);
    [inputNode installTapOnBus:0 bufferSize:1024 format:v4 block:v15];
    objc_destroyWeak(&v16);
    audioEngine = self->_audioEngine;
    v14 = 0;
    v9 = [(AVAudioEngine *)audioEngine startAndReturnError:&v14];
    v10 = v14;
    v11 = v10;
    if ((v9 & 1) == 0)
    {
      v12 = RXOSLog(v10);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v19 = v11;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "AVI:Error Starting engine: %@", buf, 0xCu);
      }
    }

    objc_destroyWeak(&location);
  }

  else
  {
    availableInputs = RXOSLog(channelCount);
    if (os_log_type_enabled(availableInputs, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, availableInputs, OS_LOG_TYPE_ERROR, "AVI:No audio input available, channel count 0", buf, 2u);
    }

    v9 = 0;
  }

  return v9;
}

- (void)stopRunningAudioEngine
{
  v3 = RXOSLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "AVI:stopRunningAudioEngine", v5, 2u);
  }

  inputNode = [(AVAudioEngine *)self->_audioEngine inputNode];
  [inputNode removeTapOnBus:0];

  [(AVAudioEngine *)self->_audioEngine stop];
}

- (void)stopRecording
{
  v3 = RXOSLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "AVI:StopRecording from AV", buf, 2u);
  }

  [(AVIndependentSoundInput *)self deactivateNotifications];
  [(AVIndependentSoundInput *)self stopRunningAudioEngine];
  if (dispatch_get_specific(self) == self)
  {
    [(AVIndependentSoundInput *)self _drainAndClearAudioConverter];
  }

  else
  {
    avAudioBufferQueue = self->_avAudioBufferQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000895C;
    block[3] = &unk_1000FE108;
    block[4] = self;
    dispatch_async(avAudioBufferQueue, block);
  }

  v5 = +[AVAudioSession sharedInstance];
  v9 = 0;
  [v5 setActive:0 withOptions:1 error:&v9];
  v6 = v9;

  if (v6)
  {
    v8 = RXOSLog(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "AVI:stopRecording : error stopping AVAudioSession: %@", buf, 0xCu);
    }
  }
}

- (BOOL)isRecording
{
  audioEngine = [(AVIndependentSoundInput *)self audioEngine];
  isRunning = [audioEngine isRunning];

  return isRunning;
}

- (void)dealloc
{
  v3 = RXOSLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "AVI:Deallocating RDSoundInputImpl_iOS_Independent_AV", buf, 2u);
  }

  if ([(AVIndependentSoundInput *)self isRecording])
  {
    [(AVIndependentSoundInput *)self stopRecording];
  }

  deliverSamples = self->_deliverSamples;
  if (deliverSamples)
  {
    self->_deliverSamples = 0;
  }

  if (dispatch_get_specific(self) != self)
  {
    dispatch_sync(self->_avAudioBufferQueue, &stru_1000FE178);
  }

  dispatch_queue_set_specific(self->_avAudioBufferQueue, self, 0, 0);
  v5.receiver = self;
  v5.super_class = AVIndependentSoundInput;
  [(AVIndependentSoundInput *)&v5 dealloc];
}

- (void)_appendPCMBuffer:(id)buffer
{
  bufferCopy = buffer;
  format = [bufferCopy format];
  v6 = [format isEqual:self->_expectedFormat];

  if (v6)
  {
    [(AVIndependentSoundInput *)self _drainAndClearAudioConverter];
    int16ChannelData = [bufferCopy int16ChannelData];
    if (!int16ChannelData)
    {
      sub_1000C8EE8(a2, self);
    }

    -[AVIndependentSoundInput _addRecordedSpeechSampleData:length:](self, "_addRecordedSpeechSampleData:length:", *int16ChannelData, [bufferCopy frameLength]);
  }

  else
  {
    [(AVIndependentSoundInput *)self _convertAndFeedPCMBufferAVAudioPCMBuffer:bufferCopy];
  }
}

- (void)_convertAndFeedPCMBufferAVAudioPCMBuffer:(id)buffer
{
  bufferCopy = buffer;
  format = [bufferCopy format];
  v19 = self->_expectedFormat;
  inputFormat = [(AVAudioConverter *)self->_converter inputFormat];
  v6 = [inputFormat isEqual:format];

  if ((v6 & 1) == 0)
  {
    [(AVIndependentSoundInput *)self _drainAndClearAudioConverter];
    v7 = [[AVAudioConverter alloc] initFromFormat:format toFormat:v19];
    converter = self->_converter;
    self->_converter = v7;

    [(AVAudioConverter *)self->_converter setSampleRateConverterQuality:127];
  }

  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x2020000000;
  v26 = 0;
  v9 = [[AVAudioPCMBuffer alloc] initWithPCMFormat:self->_expectedFormat frameCapacity:8000];
  [v9 setFrameLength:8000];
  while (1)
  {
    v10 = self->_converter;
    v23 = v25;
    v24 = 0;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100008E40;
    v21[3] = &unk_1000FE1A0;
    v11 = bufferCopy;
    v22 = v11;
    v12 = [(AVAudioConverter *)v10 convertToBuffer:v9 error:&v24 withInputFromBlock:v21];
    v13 = v24;
    v14 = v13;
    if (v12 == 2)
    {
      break;
    }

    if (v12 == 3)
    {
      v16 = RXOSLog(v13);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v28 = v14;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "AVI:Could not run audio converter %@", buf, 0xCu);
      }

      break;
    }

    int16ChannelData = [v9 int16ChannelData];
    if (!int16ChannelData)
    {
      v17 = +[NSAssertionHandler currentHandler];
      [v17 handleFailureInMethod:a2 object:self file:@"RDSoundInputImpl_iOS_Independent_AV.m" lineNumber:308 description:@"Invalid audio format"];
    }

    -[AVIndependentSoundInput _addRecordedSpeechSampleData:length:](self, "_addRecordedSpeechSampleData:length:", *int16ChannelData, [v9 frameLength]);
    if (v12 == 1)
    {
      break;
    }
  }

  _Block_object_dispose(v25, 8);
}

- (void)_addRecordedSpeechSampleData:(signed __int16 *)data length:(unsigned int)length
{
  deliverSamples = self->_deliverSamples;
  if (deliverSamples)
  {
    deliverSamples[2](deliverSamples, data, length);
  }
}

- (void)_drainAndClearAudioConverter
{
  if (self->_converter)
  {
    v4 = [[AVAudioPCMBuffer alloc] initWithPCMFormat:self->_expectedFormat frameCapacity:8000];
    [v4 setFrameLength:8000];
    while (1)
    {
      converter = self->_converter;
      v12 = 0;
      v6 = [(AVAudioConverter *)converter convertToBuffer:v4 error:&v12 withInputFromBlock:&stru_1000FE1E0];
      v7 = v12;
      v8 = v7;
      if (v6 == 2)
      {
        break;
      }

      if (v6 == 3)
      {
        v10 = RXOSLog(v7);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v14 = v8;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "AVI:Could not drain converter %@", buf, 0xCu);
        }

        break;
      }

      int16ChannelData = [v4 int16ChannelData];
      if (!int16ChannelData)
      {
        sub_1000C8F5C(a2, self);
      }

      -[AVIndependentSoundInput _addRecordedSpeechSampleData:length:](self, "_addRecordedSpeechSampleData:length:", *int16ChannelData, [v4 frameLength]);
      if (v6 == 1)
      {
        break;
      }
    }

    v11 = self->_converter;
    self->_converter = 0;
  }
}

@end