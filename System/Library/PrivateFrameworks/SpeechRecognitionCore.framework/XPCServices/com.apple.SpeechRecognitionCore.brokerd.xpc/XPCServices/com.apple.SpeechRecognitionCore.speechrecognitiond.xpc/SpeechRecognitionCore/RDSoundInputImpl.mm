@interface RDSoundInputImpl
+ (BOOL)isCSVADHidden;
+ (BOOL)isCSVADPresent;
+ (BOOL)isCallActive;
+ (BOOL)isHearstConnected;
- (BOOL)isRecording;
- (BOOL)startRecording:(int)recording;
- (RDSoundInputImpl)initWithExpectedFormat:(const AudioStreamBasicDescription *)format deliverSamples:(id)samples;
- (void)_callStatusChanged:(id)changed;
- (void)_handleSpeechDetectionVADPresentChange:(id)change;
- (void)_handleSpeechSomeClientActiveDidChange:(id)change;
- (void)_handleSystemControllerDied:(id)died;
- (void)_startObservingSpeechClientsActive;
- (void)_startObservingSpeechDetectionVADPresence;
- (void)_startObservingSystemControllerLifecycle;
- (void)_stopObservingSpeechClientsActive;
- (void)stopRecording;
@end

@implementation RDSoundInputImpl

- (RDSoundInputImpl)initWithExpectedFormat:(const AudioStreamBasicDescription *)format deliverSamples:(id)samples
{
  samplesCopy = samples;
  v19.receiver = self;
  v19.super_class = RDSoundInputImpl;
  v7 = [(RDSoundInputImpl *)&v19 init];
  if (v7)
  {
    v8 = [[AVAudioFormat alloc] initWithStreamDescription:format];
    if (qword_10010E478 != -1)
    {
      sub_1000C8FD4();
    }

    if (RXIsUseIndependentVADEnabled() && byte_10010E471 == 1)
    {
      v9 = [[AVIndependentSoundInput alloc] initWithExpectedFormat:v8 deliverSamples:samplesCopy];
      avIndependenRouteSoundInput = v7->_avIndependenRouteSoundInput;
      v7->_avIndependenRouteSoundInput = v9;
    }

    if (RXIsUseIndependentVADEnabled() && byte_10010E471 == 1)
    {
      if (v7->_avIndependenRouteSoundInput)
      {
        v7->_hasIndependentRouteCapability = 1;
        CFPreferencesSetAppValue(@"RXUsingIndependentVAD", kCFBooleanTrue, @"com.apple.SpeechRecognitionCore.speechrecognitiond");
        v12 = RXOSLog(v11);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *v18 = 0;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Device supports independent route", v18, 2u);
        }
      }
    }

    else
    {
      v7->_hasIndependentRouteCapability = 0;
      CFPreferencesSetAppValue(@"RXUsingIndependentVAD", kCFBooleanFalse, @"com.apple.SpeechRecognitionCore.speechrecognitiond");
      v13 = [[CSSoundInput alloc] initWithDeliverSamples:samplesCopy];
      csSoundInput = v7->_csSoundInput;
      v7->_csSoundInput = v13;

      v15 = [[AVSoundInput alloc] initWithExpectedFormat:v8 deliverSamples:samplesCopy];
      avSoundInput = v7->_avSoundInput;
      v7->_avSoundInput = v15;

      [(RDSoundInputImpl *)v7 _startObservingSystemControllerLifecycle];
      [(RDSoundInputImpl *)v7 _startObservingSpeechDetectionVADPresence];
    }
  }

  return v7;
}

- (void)_startObservingSystemControllerLifecycle
{
  v10 = +[NSNotificationCenter defaultCenter];
  [v10 removeObserver:self name:AVSystemController_ServerConnectionDiedNotification object:0];

  v11 = [NSArray arrayWithObject:AVSystemController_ServerConnectionDiedNotification];
  v3 = +[AVSystemController sharedAVSystemController];
  [v3 setAttribute:v11 forKey:AVSystemController_SubscribeToNotificationsAttribute error:0];

  v4 = +[NSNotificationCenter defaultCenter];
  v5 = AVSystemController_ServerConnectionDiedNotification;
  v6 = +[AVSystemController sharedAVSystemController];
  [v4 addObserver:self selector:"_handleSystemControllerDied:" name:v5 object:v6];

  v7 = +[TUCallCenter sharedInstance];
  v8 = +[NSNotificationCenter defaultCenter];
  [v8 addObserver:self selector:"_callStatusChanged:" name:TUCallCenterCallStatusChangedNotification object:0];

  v9 = +[NSNotificationCenter defaultCenter];
  [v9 addObserver:self selector:"_callStatusChanged:" name:TUCallCenterVideoCallStatusChangedNotification object:0];
}

- (void)_handleSystemControllerDied:(id)died
{
  v4 = RXOSLog(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "RDSoundInput::AVSystemControllerDied", v5, 2u);
  }

  [(RDSoundInputImpl *)self _startObservingSystemControllerLifecycle];
  [(RDSoundInputImpl *)self _startObservingSpeechDetectionVADPresence];
  [(RDSoundInputImpl *)self _handleSpeechDetectionVADPresentChange:0];
}

- (void)_startObservingSpeechDetectionVADPresence
{
  v7 = +[NSNotificationCenter defaultCenter];
  [v7 removeObserver:self name:AVSystemController_SpeechDetectionDevicePresentDidChangeNotification object:0];

  v8 = [NSArray arrayWithObject:AVSystemController_SpeechDetectionDevicePresentDidChangeNotification];
  v3 = +[AVSystemController sharedAVSystemController];
  [v3 setAttribute:v8 forKey:AVSystemController_SubscribeToNotificationsAttribute error:0];

  v4 = +[NSNotificationCenter defaultCenter];
  v5 = AVSystemController_SpeechDetectionDevicePresentDidChangeNotification;
  v6 = +[AVSystemController sharedAVSystemController];
  [v4 addObserver:self selector:"_handleSpeechDetectionVADPresentChange:" name:v5 object:v6];
}

- (void)_startObservingSpeechClientsActive
{
  v7 = +[NSNotificationCenter defaultCenter];
  v3 = AVSystemController_SomeClientIsActiveDidChangeNotification;
  v4 = +[AVSystemController sharedInstance];
  [v7 removeObserver:self name:v3 object:v4];

  v8 = +[NSNotificationCenter defaultCenter];
  v5 = AVSystemController_SomeClientIsActiveDidChangeNotification;
  v6 = +[AVSystemController sharedInstance];
  [v8 addObserver:self selector:"_handleSpeechSomeClientActiveDidChange:" name:v5 object:v6];
}

- (void)_stopObservingSpeechClientsActive
{
  v5 = +[NSNotificationCenter defaultCenter];
  v3 = AVSystemController_SomeClientIsActiveDidChangeNotification;
  v4 = +[AVSystemController sharedInstance];
  [v5 removeObserver:self name:v3 object:v4];
}

- (BOOL)startRecording:(int)recording
{
  v3 = *&recording;
  v5 = RXIsUseIndependentVADEnabled();
  if (!v5 || !self->_hasIndependentRouteCapability)
  {
    v8 = RXOSLog(v5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v31[0] = 67109120;
      v31[1] = v3;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "RDSoundInputImpl_iOS:startingRecording with reason %d", v31, 8u);
    }

    v9 = +[RDSoundInputImpl_iOS_Shared isSystemSleeping];
    if (v9)
    {
      v10 = RXOSLog(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v31[0]) = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "System is sleeping, so don't start recording", v31, 2u);
      }

      return 0;
    }

    v11 = +[RDSoundInputImpl isCSVADPresent];
    v12 = +[RDSoundInputImpl isCSVADHidden];
    if ((v11 & v12) == 1)
    {
      _startObservingSpeechClientsActive = [(RDSoundInputImpl *)self _startObservingSpeechClientsActive];
    }

    else
    {
      _startObservingSpeechClientsActive = [(RDSoundInputImpl *)self _stopObservingSpeechClientsActive];
    }

    v14 = RXOSLog(_startObservingSpeechClientsActive);
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    if ((v11 ^ 1 | v12))
    {
      if (v15)
      {
        LOWORD(v31[0]) = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "RDSoundInputImpl_iOS:CSVAD not present", v31, 2u);
      }

      csSoundInput = [(RDSoundInputImpl *)self csSoundInput];
      v17 = [csSoundInput isRecording] == 0;

      if (!v17)
      {
        csSoundInput2 = [(RDSoundInputImpl *)self csSoundInput];
        [csSoundInput2 stopRecording];
      }

      avSoundInput = [(RDSoundInputImpl *)self avSoundInput];
      [avSoundInput activateNotifications];

      avSoundInput2 = [(RDSoundInputImpl *)self avSoundInput];
      v21 = [avSoundInput2 startRecording:v3];

      if ((v21 & 1) == 0)
      {
LABEL_31:
        [AudioNotification sendLiveRecordingOffNotificationWithInterrupt:1];
        return 0;
      }
    }

    else
    {
      if (v15)
      {
        LOWORD(v31[0]) = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "RDSoundInputImpl_iOS:CSVAD Present", v31, 2u);
      }

      avSoundInput3 = [(RDSoundInputImpl *)self avSoundInput];
      isRecording = [avSoundInput3 isRecording];

      if (isRecording)
      {
        avSoundInput4 = [(RDSoundInputImpl *)self avSoundInput];
        [avSoundInput4 stopRecording];
      }

      avSoundInput5 = [(RDSoundInputImpl *)self avSoundInput];
      [avSoundInput5 deactivateNotifications];

      v28 = 3;
      while (1)
      {
        csSoundInput3 = [(RDSoundInputImpl *)self csSoundInput];
        startRecording = [csSoundInput3 startRecording];

        if (startRecording)
        {
          break;
        }

        usleep(0xC350u);
        if (!--v28)
        {
          goto LABEL_31;
        }
      }
    }

    v22 = RXOSLog(+[AudioNotification sendLiveRecordingOnNotification]);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v31[0]) = 0;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "RDSoundInputImpl_iOS:startedRecording", v31, 2u);
    }

    return 1;
  }

  avIndependenRouteSoundInput = [(RDSoundInputImpl *)self avIndependenRouteSoundInput];
  v7 = [avIndependenRouteSoundInput startRecording:0];

  if (v7)
  {
    +[AudioNotification sendLiveRecordingOnNotification];
    return 1;
  }

  [AudioNotification sendLiveRecordingOffNotificationWithInterrupt:1];
  return 0;
}

- (void)stopRecording
{
  v3 = RXOSLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "RDSoundInputImpl_iOS:stoppingRecording", buf, 2u);
  }

  if (RXIsUseIndependentVADEnabled() && self->_hasIndependentRouteCapability)
  {
    avIndependenRouteSoundInput = [(RDSoundInputImpl *)self avIndependenRouteSoundInput];
    [avIndependenRouteSoundInput stopRecording];
  }

  else
  {
    if (+[RDSoundInputImpl isCSVADPresent])
    {
      [(RDSoundInputImpl *)self csSoundInput];
    }

    else
    {
      [(RDSoundInputImpl *)self avSoundInput];
    }
    avIndependenRouteSoundInput = ;
    [avIndependenRouteSoundInput stopRecording];
  }

  v6 = RXOSLog(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "RDSoundInputImpl_iOS:stoppedRecording", v7, 2u);
  }

  [AudioNotification sendLiveRecordingOffNotificationWithInterrupt:0];
}

- (BOOL)isRecording
{
  if (+[RDSoundInputImpl isCSVADPresent])
  {
    csSoundInput = [(RDSoundInputImpl *)self csSoundInput];
    isRecording = [csSoundInput isRecording] != 0;
  }

  else
  {
    csSoundInput = [(RDSoundInputImpl *)self avSoundInput];
    isRecording = [csSoundInput isRecording];
  }

  return isRecording;
}

- (void)_handleSpeechDetectionVADPresentChange:(id)change
{
  changeCopy = change;
  v5 = +[RDSoundInputImpl_iOS_Shared isCarPlayActive];
  if (!v5 || self->_hasIndependentRouteCapability)
  {
    v6 = RXOSLog(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v9 = changeCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Speech detection VAD status changed = %@", buf, 0xCu);
    }

    if (!self->_hasIndependentRouteCapability)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10000DE38;
      block[3] = &unk_1000FDD28;
      block[4] = self;
      dispatch_async(gRDServerQueue, block);
    }
  }
}

- (void)_handleSpeechSomeClientActiveDidChange:(id)change
{
  changeCopy = change;
  v5 = gRDServerQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000DEE4;
  v7[3] = &unk_1000FE300;
  v8 = changeCopy;
  selfCopy = self;
  v6 = changeCopy;
  dispatch_async(v5, v7);
}

- (void)_callStatusChanged:(id)changed
{
  changedCopy = changed;
  object = [changedCopy object];
  v6 = RXOSLog(object);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    status = [object status];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "RDSoundInputImpl:_callStatusChanged:%d", buf, 8u);
  }

  if (object)
  {
    if ([object status] == 4 || objc_msgSend(object, "status") == 3)
    {
      v7 = gRDServerQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10000E1AC;
      block[3] = &unk_1000FE300;
      v8 = v13;
      v13[0] = object;
      v13[1] = self;
      v9 = block;
    }

    else
    {
      if ([object status] != 6)
      {
        goto LABEL_8;
      }

      v7 = gRDServerQueue;
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_10000E260;
      v10[3] = &unk_1000FE300;
      v8 = v11;
      v11[0] = object;
      v11[1] = self;
      v9 = v10;
    }

    dispatch_async(v7, v9);
  }

LABEL_8:
}

+ (BOOL)isCSVADPresent
{
  if (+[RDSoundInputImpl_iOS_Shared isCarPlayActive])
  {
    return 1;
  }

  v3 = +[AVSystemController sharedAVSystemController];
  v4 = [v3 attributeForKey:AVSystemController_SpeechDetectionDevicePresentAttribute];
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

+ (BOOL)isCSVADHidden
{
  if (+[RDSoundInputImpl_iOS_Shared isCarPlayActive])
  {
    return 0;
  }

  v3 = +[AVSystemController sharedAVSystemController];
  v4 = [v3 attributeForKey:AVSystemController_ActiveClientPIDsThatHideTheSpeechDetectionDeviceAttribute];

  if ([v4 count] == 1)
  {
    firstObject = [v4 firstObject];
    v6 = [NSNumber numberWithInt:getpid()];
    v7 = [firstObject isEqual:v6];

    v8 = v7 ^ 1;
  }

  else
  {
    v8 = 1;
  }

  v2 = ([v4 count] != 0) & v8;

  return v2;
}

+ (BOOL)isCallActive
{
  v2 = +[AVSystemController sharedAVSystemController];
  v3 = [v2 attributeForKey:AVSystemController_CallIsActive];

  v4 = +[AVSystemController sharedAVSystemController];
  v5 = [v4 attributeForKey:AVSystemController_RecordingClientPIDsAttribute];

  [v5 count];
  v6 = +[AVSystemController sharedAVSystemController];
  v7 = [v6 attributeForKey:AVSystemController_CallIsActive];
  bOOLValue = [v7 BOOLValue];

  return bOOLValue;
}

+ (BOOL)isHearstConnected
{
  v2 = +[AVSystemController sharedAVSystemController];
  v3 = [v2 attributeForKey:AVSystemController_PickableRoutesAttribute];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v5)
  {
    v6 = *v19;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        v9 = [v8 objectForKey:{AVSystemController_RouteDescriptionKey_IsPreferredExternalRoute, v18}];
        if (![v9 BOOLValue])
        {
          goto LABEL_12;
        }

        v10 = [v8 objectForKey:AVSystemController_RouteDescriptionKey_PreferredExternalRouteDetails_InEarDetectSupported];
        if (([v10 BOOLValue] & 1) == 0)
        {

LABEL_12:
          continue;
        }

        v11 = [v8 objectForKey:AVSystemController_RouteDescriptionKey_PreferredExternalRouteDetails_IsActive];
        bOOLValue = [v11 BOOLValue];

        if (bOOLValue)
        {
          v13 = [v8 objectForKey:AVSystemController_RouteDescriptionKey_BTDetails_SupportsDoAP];
          bOOLValue2 = [v13 BOOLValue];

          if (bOOLValue2)
          {
            LODWORD(v5) = 1;
            goto LABEL_15;
          }
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v5);
  }

LABEL_15:

  v16 = RXOSLog(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v23 = v5;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Airpods Connected=%d", buf, 8u);
  }

  return v5;
}

@end