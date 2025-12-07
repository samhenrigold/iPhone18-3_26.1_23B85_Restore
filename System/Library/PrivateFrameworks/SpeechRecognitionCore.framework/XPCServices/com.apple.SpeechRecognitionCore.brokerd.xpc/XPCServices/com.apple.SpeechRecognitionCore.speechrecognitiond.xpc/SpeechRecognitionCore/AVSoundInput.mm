@interface AVSoundInput
- (AVSoundInput)initWithExpectedFormat:(id)format deliverSamples:(id)samples;
- (BOOL)isRecording;
- (BOOL)setupAudioSession;
- (BOOL)setupDefaultAudioSession:(unint64_t)session;
- (BOOL)startRecording:(int)recording;
- (BOOL)startRunningAudioEngine;
- (void)_addRecordedSpeechSampleData:(signed __int16 *)data length:(unsigned int)length;
- (void)_appendPCMBuffer:(id)buffer;
- (void)_convertAndFeedPCMBufferAVAudioPCMBuffer:(id)buffer;
- (void)_didReceiveSiriSettingChanged:(BOOL)changed;
- (void)_drainAndClearAudioConverter;
- (void)_handleAudioSessionInterruption:(id)interruption;
- (void)_handleConfigurationChangeNotification:(id)notification;
- (void)_handleRouteChange:(id)change;
- (void)_recordingStateChanged:(id)changed;
- (void)activateNotifications;
- (void)deactivateNotifications;
- (void)dealloc;
- (void)stopRecording;
@end

@implementation AVSoundInput

- (AVSoundInput)initWithExpectedFormat:(id)format deliverSamples:(id)samples
{
  formatCopy = format;
  samplesCopy = samples;
  v27.receiver = self;
  v27.super_class = AVSoundInput;
  v9 = [(AVSoundInput *)&v27 init];
  if (v9)
  {
    v10 = dispatch_queue_create("RDAudioBufferQueue", 0);
    v11 = *(v9 + 2);
    *(v9 + 2) = v10;

    dispatch_queue_set_specific(*(v9 + 2), v9, v9, 0);
    objc_storeStrong(v9 + 6, format);
    v12 = objc_retainBlock(samplesCopy);
    v13 = *(v9 + 5);
    *(v9 + 5) = v12;

    *(v9 + 25) = +[RDSoundInputImpl isHearstConnected];
    *(v9 + 24) = AFPreferencesAssistantEnabled() != 0;
    *(v9 + 26) = 0;
    v14 = objc_alloc_init(AVAudioEngine);
    v15 = *(v9 + 4);
    *(v9 + 4) = v14;

    v16 = +[AVSystemController sharedAVSystemController];
    v30 = AVSystemController_SomeClientIsActiveDidChangeNotification;
    v17 = [NSArray arrayWithObjects:&v30 count:1];
    v26 = 0;
    [v16 setAttribute:v17 forKey:AVSystemController_SubscribeToNotificationsAttribute error:&v26];
    v18 = v26;

    if (v18)
    {
      v19 = [v18 description];
      v20 = RXOSLog(v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = v19;
        uTF8String = [v19 UTF8String];
        *buf = 136315138;
        v29 = uTF8String;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "AVSystemController_SubscribeToNotificationsAttribute Failed, Error = %s", buf, 0xCu);
      }
    }

    setupAudioSession = [v9 setupAudioSession];
    if ((setupAudioSession & 1) == 0)
    {
      v24 = RXOSLog(setupAudioSession);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "ERROR in setting up the audio session", buf, 2u);
      }
    }
  }

  return v9;
}

- (BOOL)setupAudioSession
{
  v3 = +[AVAudioSession sharedInstance];
  v27 = 0;
  [v3 setPrefersNoMicrophoneUsageIndicator:1 error:&v27];
  v4 = v27;

  if (v4)
  {
    v6 = RXOSLog(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "SRC:Failed to suppress mic indicator", buf, 2u);
    }
  }

  v7 = +[AVAudioSession sharedInstance];
  v26 = 0;
  [v7 setCategory:AVAudioSessionCategoryPlayAndRecord withOptions:41 error:&v26];
  v8 = v26;

  if (v8)
  {
    v10 = RXOSLog(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v29 = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "startRecording error setting AVAudioSession category: %@", buf, 0xCu);
    }
  }

  else
  {
    self->_isUsingTelephonyVAD = 0;
    v12 = [(AVSoundInput *)self setupDefaultAudioSession:41];
    if (v12)
    {
      v13 = +[AVAudioSession sharedInstance];
      v25 = 0;
      [v13 setAllowHapticsAndSystemSoundsDuringRecording:1 error:&v25];
      v14 = v25;

      if (v14)
      {
        v16 = RXOSLog(v15);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v29 = v14;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "startRecording error setting haptics: %@", buf, 0xCu);
        }
      }

      v17 = +[AVAudioSession sharedInstance];
      v24 = 0;
      [v17 preferDecoupledIO:1 error:&v24];
      v8 = v24;

      if (v8)
      {
        v19 = RXOSLog(v18);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v29 = v8;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "startRecording error setting AVAudioSession DecoupledIO: %@", buf, 0xCu);
        }
      }

      else
      {
        if (!_os_feature_enabled_impl())
        {
          return 1;
        }

        v20 = +[AVAudioSession sharedInstance];
        v23 = 0;
        [v20 setMXSessionProperty:kMXSessionProperty_PrefersNoInterruptionsDuringRemoteDeviceControl value:&__kCFBooleanTrue error:&v23];
        v8 = v23;

        if (!v8)
        {
          return 1;
        }

        v22 = RXOSLog(v21);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v29 = v8;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "AV:Error setting MX property for non-interruption: %@", buf, 0xCu);
        }
      }
    }

    else
    {
      v8 = RXOSLog(v12);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "failed to setupDefaultAudioSession", buf, 2u);
      }
    }
  }

  return 0;
}

- (BOOL)setupDefaultAudioSession:(unint64_t)session
{
  v5 = +[AVAudioSession sharedInstance];
  v23 = 0;
  [v5 setCategory:AVAudioSessionCategoryPlayAndRecord withOptions:session error:&v23];
  v6 = v23;

  if (v6)
  {
    v8 = RXOSLog(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v25 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "startRecording error setting AVAudioSession category: %@", buf, 0xCu);
    }
  }

  else
  {
    v9 = +[RDSoundInputImpl isCallActive];
    if (v9 && (v9 = +[RDSoundInputImpl isHearstConnected], v9))
    {
      v10 = RXOSLog(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Another call is active and AirPods connected", buf, 2u);
      }

      v11 = +[AVAudioSession sharedInstance];
      v22 = 0;
      [v11 setAudioHardwareControlFlags:0 error:&v22];
      v12 = v22;

      if (!v12)
      {
        result = 1;
        self->_isUsingTelephonyVAD = 1;
        return result;
      }

      v14 = RXOSLog(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v25 = v12;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "startRecording error setting AVAudioSession hardware control flags to 0: %@", buf, 0xCu);
      }
    }

    else
    {
      v15 = RXOSLog(v9);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "No other call is active or AirpPods are not connected", buf, 2u);
      }

      v16 = +[AVAudioSession sharedInstance];
      v21 = 0;
      [v16 setAudioHardwareControlFlags:18 error:&v21];
      v17 = v21;

      if (!v17)
      {
        self->_isUsingTelephonyVAD = 0;
        return 1;
      }

      v19 = RXOSLog(v18);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v25 = v17;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "startRecording error setting AVAudioSession hardware control flags: %@", buf, 0xCu);
      }
    }
  }

  return 0;
}

- (BOOL)startRecording:(int)recording
{
  v5 = +[RDSoundInputImpl_iOS_Shared isSystemSleeping];
  if (v5)
  {
    v6 = RXOSLog(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v7 = "System is sleeping, so don't start recording";
      v8 = v6;
      v9 = OS_LOG_TYPE_DEFAULT;
LABEL_26:
      _os_log_impl(&_mh_execute_header, v8, v9, v7, buf, 2u);
      goto LABEL_27;
    }

    goto LABEL_27;
  }

  isRunning = [(AVAudioEngine *)self->_audioEngine isRunning];
  if (isRunning)
  {
    if (recording == 1 && self->_isUsingTelephonyVAD)
    {
      v6 = RXOSLog(isRunning);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v11 = "AV is already running using Telephony VAD";
LABEL_13:
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v11, buf, 2u);
        goto LABEL_23;
      }

      goto LABEL_23;
    }

    if (recording != 1 && !self->_isUsingTelephonyVAD)
    {
      v6 = RXOSLog(isRunning);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v11 = "AV is already running";
        goto LABEL_13;
      }

LABEL_23:
      v22 = 1;
      goto LABEL_28;
    }

    [(AVSoundInput *)self stopRecording];
    [(AVSoundInput *)self activateNotifications];
  }

  setupAudioSession = [(AVSoundInput *)self setupAudioSession];
  v13 = setupAudioSession;
  v14 = RXOSLog(setupAudioSession);
  v6 = v14;
  if ((v13 & 1) == 0)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v7 = "AVAudioSession setup failed";
      v8 = v6;
      v9 = OS_LOG_TYPE_ERROR;
      goto LABEL_26;
    }

LABEL_27:
    v22 = 0;
    goto LABEL_28;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    isUsingTelephonyVAD = self->_isUsingTelephonyVAD;
    *buf = 67109120;
    LODWORD(v36) = isUsingTelephonyVAD;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Starting to record from AV and isUsingTelephonyVAD = %d", buf, 8u);
  }

  v16 = +[AVAudioSession sharedInstance];
  v34 = 0;
  v17 = [v16 setActive:1 error:&v34];
  v6 = v34;

  if ((v17 & 1) == 0)
  {
    v24 = RXOSLog(v18);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      localizedDescription = [v6 localizedDescription];
      *buf = 138412546;
      v36 = v6;
      v37 = 2112;
      v38 = localizedDescription;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "AVAudioSession set active failed with error code:{%@}, error message: {%@}", buf, 0x16u);
    }

    goto LABEL_27;
  }

  startRunningAudioEngine = [(AVSoundInput *)self startRunningAudioEngine];
  if (startRunningAudioEngine)
  {
    v20 = RXOSLog(startRunningAudioEngine);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = self->_isUsingTelephonyVAD;
      *buf = 67109120;
      LODWORD(v36) = v21;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Started Recording from AV and isUsingTelephonyVAD = %d", buf, 8u);
    }

    goto LABEL_23;
  }

  v26 = RXOSLog(startRunningAudioEngine);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Could not start recording from AV, deactivating the audio session", buf, 2u);
  }

  v27 = +[AVAudioSession sharedInstance];
  v33 = v6;
  v28 = [v27 setActive:0 withOptions:1 error:&v33];
  v29 = v33;

  if (v28)
  {
    v31 = RXOSLog(v30);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Could not start recording from AV, Audio Session deactivated", buf, 2u);
    }
  }

  else
  {
    v31 = RXOSLog(v30);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      localizedDescription2 = [v29 localizedDescription];
      *buf = 138412546;
      v36 = v29;
      v37 = 2112;
      v38 = localizedDescription2;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "AVAudioSession could not deactivate, error code:{%@}, error message: {%@}", buf, 0x16u);
    }
  }

  v22 = 0;
  v6 = v29;
LABEL_28:

  return v22;
}

- (BOOL)startRunningAudioEngine
{
  inputNode = [(AVAudioEngine *)self->_audioEngine inputNode];
  v4 = [inputNode inputFormatForBus:0];
  channelCount = [v4 channelCount];
  if (channelCount)
  {
    [inputNode removeTapOnBus:0];
    objc_initWeak(&location, self);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10000A280;
    v14[3] = &unk_1000FE230;
    objc_copyWeak(&v15, &location);
    [inputNode installTapOnBus:0 bufferSize:1024 format:v4 block:v14];
    objc_destroyWeak(&v15);
    audioEngine = self->_audioEngine;
    v13 = 0;
    v7 = [(AVAudioEngine *)audioEngine startAndReturnError:&v13];
    v8 = v13;
    v9 = v8;
    if ((v7 & 1) == 0)
    {
      v10 = RXOSLog(v8);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v18 = v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Error Starting engine: %@", buf, 0xCu);
      }
    }

    objc_destroyWeak(&location);
  }

  else
  {
    v11 = RXOSLog(channelCount);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "No audio input available, channel count 0", buf, 2u);
    }

    v7 = 0;
  }

  return v7;
}

- (void)stopRecording
{
  v3 = RXOSLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "StopRecording from AV", buf, 2u);
  }

  inputNode = [(AVAudioEngine *)self->_audioEngine inputNode];
  [inputNode removeTapOnBus:0];

  [(AVAudioEngine *)self->_audioEngine stop];
  if (dispatch_get_specific(self) == self)
  {
    [(AVSoundInput *)self _drainAndClearAudioConverter];
  }

  else
  {
    avAudioBufferQueue = self->_avAudioBufferQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000A5A0;
    block[3] = &unk_1000FDD28;
    block[4] = self;
    dispatch_async(avAudioBufferQueue, block);
  }

  v6 = +[AVAudioSession sharedInstance];
  v10 = 0;
  [v6 setActive:0 withOptions:1 error:&v10];
  v7 = v10;

  if (v7)
  {
    v9 = RXOSLog(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "stopRecording : error stopping AVAudioSession: %@", buf, 0xCu);
    }
  }
}

- (BOOL)isRecording
{
  audioEngine = [(AVSoundInput *)self audioEngine];
  isRunning = [audioEngine isRunning];

  return isRunning;
}

- (void)dealloc
{
  v3 = RXOSLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Deallocating RDSoundInputImpl_iOS_AV", buf, 2u);
  }

  [(AVSoundInput *)self stopRecording];
  [(AVSoundInput *)self deactivateNotifications];
  deliverSamples = self->_deliverSamples;
  if (deliverSamples)
  {
    self->_deliverSamples = 0;
  }

  if (dispatch_get_specific(self) != self)
  {
    dispatch_sync(self->_avAudioBufferQueue, &stru_1000FE250);
  }

  dispatch_queue_set_specific(self->_avAudioBufferQueue, self, 0, 0);
  v6 = RXOSLog(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "released RDAudioBufferQueue", buf, 2u);
  }

  v7.receiver = self;
  v7.super_class = AVSoundInput;
  [(AVSoundInput *)&v7 dealloc];
}

- (void)_appendPCMBuffer:(id)buffer
{
  bufferCopy = buffer;
  format = [bufferCopy format];
  v6 = [format isEqual:self->_expectedFormat];

  if (v6)
  {
    [(AVSoundInput *)self _drainAndClearAudioConverter];
    int16ChannelData = [bufferCopy int16ChannelData];
    if (!int16ChannelData)
    {
      v8 = +[NSAssertionHandler currentHandler];
      [v8 handleFailureInMethod:a2 object:self file:@"RDSoundInputImpl_iOS_AV.m" lineNumber:309 description:@"Invalid audio format"];
    }

    -[AVSoundInput _addRecordedSpeechSampleData:length:](self, "_addRecordedSpeechSampleData:length:", *int16ChannelData, [bufferCopy frameLength]);
  }

  else
  {
    [(AVSoundInput *)self _convertAndFeedPCMBufferAVAudioPCMBuffer:bufferCopy];
  }
}

- (void)_convertAndFeedPCMBufferAVAudioPCMBuffer:(id)buffer
{
  bufferCopy = buffer;
  format = [bufferCopy format];
  v5 = self->_expectedFormat;
  inputFormat = [(AVAudioConverter *)self->_converter inputFormat];
  v7 = [inputFormat isEqual:format];

  if ((v7 & 1) == 0)
  {
    [(AVSoundInput *)self _drainAndClearAudioConverter];
    v8 = [[AVAudioConverter alloc] initFromFormat:format toFormat:v5];
    converter = self->_converter;
    self->_converter = v8;

    [(AVAudioConverter *)self->_converter setSampleRateConverterQuality:127];
  }

  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x2020000000;
  v26 = 0;
  v10 = [[AVAudioPCMBuffer alloc] initWithPCMFormat:self->_expectedFormat frameCapacity:8000];
  [v10 setFrameLength:8000];
  while (1)
  {
    v11 = self->_converter;
    v23 = v25;
    v24 = 0;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10000AC3C;
    v21[3] = &unk_1000FE278;
    v12 = bufferCopy;
    v22 = v12;
    v13 = [(AVAudioConverter *)v11 convertToBuffer:v10 error:&v24 withInputFromBlock:v21];
    v14 = v24;
    v15 = v14;
    if (v13 == 2)
    {
      break;
    }

    if (v13 == 3)
    {
      v17 = RXOSLog(v14);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v28 = v15;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Could not run audio converter %@", buf, 0xCu);
      }

      break;
    }

    int16ChannelData = [v10 int16ChannelData];
    if (!int16ChannelData)
    {
      v18 = +[NSAssertionHandler currentHandler];
      [v18 handleFailureInMethod:a2 object:self file:@"RDSoundInputImpl_iOS_AV.m" lineNumber:356 description:@"Invalid audio format"];
    }

    -[AVSoundInput _addRecordedSpeechSampleData:length:](self, "_addRecordedSpeechSampleData:length:", *int16ChannelData, [v10 frameLength]);
    if (v13 == 1)
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
      v13 = 0;
      v6 = [(AVAudioConverter *)converter convertToBuffer:v4 error:&v13 withInputFromBlock:&stru_1000FE298];
      v7 = v13;
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
          v15 = v8;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Could not drain converter %@", buf, 0xCu);
        }

        break;
      }

      int16ChannelData = [v4 int16ChannelData];
      if (!int16ChannelData)
      {
        v12 = +[NSAssertionHandler currentHandler];
        [v12 handleFailureInMethod:a2 object:self file:@"RDSoundInputImpl_iOS_AV.m" lineNumber:401 description:@"Invalid audio format"];
      }

      -[AVSoundInput _addRecordedSpeechSampleData:length:](self, "_addRecordedSpeechSampleData:length:", *int16ChannelData, [v4 frameLength]);
      if (v6 == 1)
      {
        break;
      }
    }

    v11 = self->_converter;
    self->_converter = 0;
  }
}

- (void)activateNotifications
{
  objc_initWeak(&location, self);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v4 = objc_loadWeakRetained(&location);
  CFNotificationCenterAddObserver(DarwinNotifyCenter, v4, sub_10000B1F0, kAFPreferencesDidChangeDarwinNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  if (!self->_isSiriEnabled)
  {
    v14 = RXOSLog(v5);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Activating notifications with Siri disabled", v16, 2u);
    }

    v12 = +[NSNotificationCenter defaultCenter];
    v13 = +[AVAudioSession sharedInstance];
    [v12 addObserver:self selector:"_handleAudioSessionInterruption:" name:AVAudioSessionInterruptionNotification object:v13];
    goto LABEL_9;
  }

  v6 = RXOSLog(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Activating notifications with Siri enabled", buf, 2u);
  }

  v7 = +[NSNotificationCenter defaultCenter];
  v8 = AVSystemController_SomeClientIsActiveDidChangeNotification;
  v9 = +[AVSystemController sharedInstance];
  [v7 addObserver:self selector:"_recordingStateChanged:" name:v8 object:v9];

  v10 = +[NSNotificationCenter defaultCenter];
  v11 = +[AVAudioSession sharedInstance];
  [v10 addObserver:self selector:"_handleRouteChange:" name:AVAudioSessionRouteChangeNotification object:v11];

  if (self->_isHearstConnectedFlag)
  {
    v12 = +[NSNotificationCenter defaultCenter];
    v13 = +[AVAudioSession sharedInstance];
    [v12 addObserver:self selector:"_handleAudioSessionInterruption:" name:AVAudioSessionInterruptionNotification object:v13];
LABEL_9:
  }

  v15 = +[NSNotificationCenter defaultCenter];
  [v15 addObserver:self selector:"_handleConfigurationChangeNotification:" name:AVAudioEngineConfigurationChangeNotification object:self->_audioEngine];

  self->_isNotificationActivated = 1;
  objc_destroyWeak(&location);
}

- (void)deactivateNotifications
{
  if (self->_isNotificationActivated)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, kAFPreferencesDidChangeDarwinNotification, 0);
    isSiriEnabled = self->_isSiriEnabled;
    v6 = RXOSLog(v5);
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (isSiriEnabled)
    {
      if (v7)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Dectivating notifications with Siri enabled", buf, 2u);
      }

      if (self->_isHearstConnectedFlag)
      {
        v8 = +[NSNotificationCenter defaultCenter];
        [v8 removeObserver:self name:AVAudioSessionInterruptionNotification object:0];
      }

      v9 = +[NSNotificationCenter defaultCenter];
      [v9 removeObserver:self name:AVSystemController_SomeClientIsActiveDidChangeNotification object:0];

      v10 = +[NSNotificationCenter defaultCenter];
      [v10 removeObserver:self name:AVAudioSessionRouteChangeNotification object:0];
    }

    else
    {
      if (v7)
      {
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Dectivating notifications with Siri disabled", v12, 2u);
      }

      v10 = +[NSNotificationCenter defaultCenter];
      [v10 removeObserver:self name:AVAudioSessionInterruptionNotification object:0];
    }

    v11 = +[NSNotificationCenter defaultCenter];
    [v11 removeObserver:self name:AVAudioEngineConfigurationChangeNotification object:self->_audioEngine];

    self->_isNotificationActivated = 0;
  }
}

- (void)_didReceiveSiriSettingChanged:(BOOL)changed
{
  if (self->_isSiriEnabled != changed)
  {
    changedCopy = changed;
    self->_isSiriEnabled = changed;
    v5 = +[NSNotificationCenter defaultCenter];
    v12 = v5;
    if (changedCopy)
    {
      [v5 removeObserver:self name:AVAudioSessionInterruptionNotification object:0];

      v13 = +[NSNotificationCenter defaultCenter];
      [v13 removeObserver:self name:AVAudioEngineConfigurationChangeNotification object:0];

      v14 = +[NSNotificationCenter defaultCenter];
      v6 = AVSystemController_SomeClientIsActiveDidChangeNotification;
      v7 = +[AVSystemController sharedInstance];
      [v14 addObserver:self selector:"_recordingStateChanged:" name:v6 object:v7];

      v15 = +[NSNotificationCenter defaultCenter];
      v8 = +[AVAudioSession sharedInstance];
      [v15 addObserver:self selector:"_handleRouteChange:" name:AVAudioSessionRouteChangeNotification object:v8];

      v10 = RXOSLog(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Stopping the AV session for CS to take over as Siri is enabled", buf, 2u);
      }

      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10000B818;
      block[3] = &unk_1000FDD28;
      block[4] = self;
      dispatch_async(gRDServerQueue, block);
    }

    else
    {
      [v5 removeObserver:self name:AVSystemController_SomeClientIsActiveDidChangeNotification object:0];

      v16 = +[NSNotificationCenter defaultCenter];
      [v16 removeObserver:self name:AVAudioSessionRouteChangeNotification object:0];

      v17 = +[NSNotificationCenter defaultCenter];
      v11 = +[AVAudioSession sharedInstance];
      [v17 addObserver:self selector:"_handleAudioSessionInterruption:" name:AVAudioSessionInterruptionNotification object:v11];

      v18 = +[NSNotificationCenter defaultCenter];
      [v18 addObserver:self selector:"_handleConfigurationChangeNotification:" name:AVAudioEngineConfigurationChangeNotification object:self->_audioEngine];
    }
  }
}

- (void)_handleAudioSessionInterruption:(id)interruption
{
  userInfo = [interruption userInfo];
  v5 = [userInfo objectForKey:AVAudioSessionInterruptionTypeKey];
  unsignedIntegerValue = [v5 unsignedIntegerValue];

  v7 = [userInfo objectForKey:AVAudioSessionInterruptionOptionKey];
  unsignedIntegerValue2 = [v7 unsignedIntegerValue];

  if (unsignedIntegerValue)
  {
    if (unsignedIntegerValue == 1)
    {
      v10 = RXOSLog(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Interruption: Audio Interruption started", buf, 2u);
      }

      v11 = gRDServerQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10000BA50;
      block[3] = &unk_1000FDD28;
      block[4] = self;
      v12 = block;
      goto LABEL_6;
    }
  }

  else
  {
    v13 = RXOSLog(v9);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Interruption: Audio Interruption ended", buf, 2u);
    }

    if ((unsignedIntegerValue2 & 1) != 0 && ![(AVSoundInput *)self isRecording])
    {
      v11 = gRDServerQueue;
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_10000BA88;
      v14[3] = &unk_1000FDD28;
      v14[4] = self;
      v12 = v14;
LABEL_6:
      dispatch_async(v11, v12);
    }
  }
}

- (void)_handleRouteChange:(id)change
{
  changeCopy = change;
  userInfo = [changeCopy userInfo];
  v6 = [userInfo valueForKey:AVAudioSessionRouteChangeReasonKey];
  intValue = [v6 intValue];

  if (intValue == 1)
  {
    if (!self->_isHearstConnectedFlag && +[RDSoundInputImpl isHearstConnected])
    {
      self->_isHearstConnectedFlag = 1;
      v11 = +[NSNotificationCenter defaultCenter];
      v12 = +[AVAudioSession sharedInstance];
      [v11 addObserver:self selector:"_handleAudioSessionInterruption:" name:AVAudioSessionInterruptionNotification object:v12];

      v14 = RXOSLog(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "handleRouteChange: AirPods are connected", buf, 2u);
      }
    }
  }

  else if (intValue == 2 && self->_isHearstConnectedFlag && !+[RDSoundInputImpl isHearstConnected])
  {
    self->_isHearstConnectedFlag = 0;
    v8 = +[NSNotificationCenter defaultCenter];
    [v8 removeObserver:self name:AVAudioSessionInterruptionNotification object:0];

    v10 = RXOSLog(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "handleRouteChange: AirPods are disconnected", buf, 2u);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000BD34;
    block[3] = &unk_1000FDD28;
    block[4] = self;
    dispatch_async(gRDServerQueue, block);
  }
}

- (void)_handleConfigurationChangeNotification:(id)notification
{
  notificationCopy = notification;
  v5 = RXOSLog(notificationCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v8 = notificationCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Audio configuration changed = %@", buf, 0xCu);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000BEAC;
  block[3] = &unk_1000FDD28;
  block[4] = self;
  dispatch_async(gRDServerQueue, block);
}

- (void)_recordingStateChanged:(id)changed
{
  v4 = RXOSLog(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Entering _recordingStateChanged", buf, 2u);
  }

  if (self->_isSiriEnabled)
  {
    v5 = +[AVSystemController sharedAVSystemController];
    v6 = [v5 attributeForKey:AVSystemController_ActiveClientPIDsThatHideTheSpeechDetectionDeviceAttribute];

    v8 = RXOSLog(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v25 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "AVSystemController :: Recording state changed. List of recording client PIDs : %@", buf, 0xCu);
    }

    if (!v6)
    {
      goto LABEL_14;
    }

    if (![v6 count])
    {
      goto LABEL_27;
    }

    if ([v6 count] == 1 && (objc_msgSend(v6, "objectAtIndex:", 0), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "intValue"), v11 = v10 == getpid(), v9, v11))
    {
      v12 = +[RDSoundInputImpl isHearstConnected];
      if (v12)
      {
        v13 = RXOSLog(v12);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "AirPods are connected so keep the AV session active", buf, 2u);
        }

        goto LABEL_27;
      }

      v20 = +[RDSoundInputImpl isCSVADPresent];
      if (v20)
      {
        v21 = RXOSLog(v20);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Stopping the AV session for CS to take over", buf, 2u);
        }

        v18 = gRDServerQueue;
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10000C244;
        block[3] = &unk_1000FDD28;
        block[4] = self;
        v19 = block;
        goto LABEL_26;
      }
    }

    else
    {
LABEL_14:
      v14 = +[RDSoundInputImpl isCSVADPresent];
      if (v6)
      {
        v15 = v14;
      }

      else
      {
        v15 = 1;
      }

      if (v15)
      {
        goto LABEL_27;
      }

      v16 = [NSNumber numberWithInt:getpid()];
      if ([v6 containsObject:v16])
      {
      }

      else
      {
        v17 = +[RDSoundInputImpl isCallActive];

        if ((v17 & 1) == 0)
        {
          v18 = gRDServerQueue;
          v22[0] = _NSConcreteStackBlock;
          v22[1] = 3221225472;
          v22[2] = sub_10000C24C;
          v22[3] = &unk_1000FDD28;
          v22[4] = self;
          v19 = v22;
LABEL_26:
          dispatch_async(v18, v19);
        }
      }
    }

LABEL_27:
  }
}

@end