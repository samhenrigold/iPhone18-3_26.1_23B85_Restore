@interface AAConversationDetectSessionManager
+ ($4C8C32D6F3DD873D8F91D6C082C6C785)defaultAudioTunings;
+ (id)sharedCDSessionManager;
- (AAConversationDetectSessionManager)init;
- (BOOL)_getCDTunings:(id *)tunings FromData:(id)data;
- (BOOL)getCdSignalAudioInterrupted;
- (id)descriptionWithLevel:(int)level;
- (id)getCurrentCDDeviceIdentifier;
- (void)_aaControllerEnsureStarted;
- (void)_aaControllerEnsureStopped;
- (void)_activateCDSession;
- (void)_asyncAudioSessionDuckWithLevel:(id)level completion:(id)completion;
- (void)_audioSessionEnsureStarted;
- (void)_audioSessionEnsureStopped;
- (void)_audioSessionReset;
- (void)_calibrateDuckingLevelForVolumeLevel:(float)level;
- (void)_cdMsgNotificationReceivedHandler:(id)handler;
- (void)_cdSessionEnsureActivated:(BOOL)activated;
- (void)_cdSessionEnsureDeactivated:(unsigned __int8)deactivated;
- (void)_cdSessionSignalUpdate;
- (void)_conversationDetectMessageReceived:(id)received fromDeviceIdentifier:(id)identifier;
- (void)_deregisterFromAVAudioSessionSpeechDetectionStyleChanges;
- (void)_deregisterFromAudioSessionResetNotifications;
- (void)_deregisterFromWirelessSplitterStateChanges;
- (void)_deviceFound:(id)found;
- (void)_deviceLost:(id)lost;
- (void)_getSignalTypeFromData:(id)data signal:(int *)signal;
- (void)_invalidate;
- (void)_invalidateCDSession;
- (void)_prefsChanged;
- (void)_registerForAVAudioSessionSpeechDetectionStyleChanges;
- (void)_registerForAudioSessionResetNotifications;
- (void)_registerForWirelessSplitterStateChanges;
- (void)_requestSiriAnnounce;
- (void)_sendConversationDetectMessage:(id)message destinationIdentifier:(id)identifier completion:(id)completion;
- (void)_setCDSignalAudioTunings:(id *)tunings;
- (void)_setPedestrianFenceWithHandler:(id)handler;
- (void)_speechDetectionStyleChanged:(unint64_t)changed;
- (void)_speechDetectionUserVolumeChanged:(unint64_t)changed;
- (void)_startHeadGestureManager;
- (void)_startPedestrianFenceSession;
- (void)_startQueuedRampForDuration:(id)duration startLevel:(id)level endLevel:(id)endLevel;
- (void)_stopHeadGestureManager;
- (void)_stopPedestrianFenceSession;
- (void)_updateAccessoriesWithMotionState:(unsigned int)state;
- (void)_updateAccessoriesWithPauseState;
- (void)_updateAccessoriesWithResetState:(unsigned __int8)state;
- (void)_updateConversationDetectSignal:(int)signal;
- (void)_updatePauseState;
- (void)activate;
- (void)activateCDSession;
- (void)didDetectedWithHeadGesture:(id)gesture;
- (void)didStartStreamingWithIsStreaming:(BOOL)streaming;
- (void)invalidate;
- (void)invalidateCDSession;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setCDTunings:(id *)tunings;
- (void)setCdSignalAudioInterrupted:(BOOL)interrupted;
- (void)setConversationDetectSignal:(int)signal;
- (void)setCurrentCDDeviceIdentifier:(id)identifier;
@end

@implementation AAConversationDetectSessionManager

+ ($4C8C32D6F3DD873D8F91D6C082C6C785)defaultAudioTunings
{
  *&retstr->var0.var0 = xmmword_100225D70;
  *&retstr->var2.var0 = xmmword_100225D80;
  *&retstr->var4.var0 = xmmword_100225D90;
  *&retstr->var6.var0 = vdupq_n_s64(0x3E99999A3F800000uLL);
  return result;
}

+ (id)sharedCDSessionManager
{
  if (qword_1002FA058 != -1)
  {
    sub_1001D3AA4();
  }

  v3 = qword_1002FA050;

  return v3;
}

- (AAConversationDetectSessionManager)init
{
  v20.receiver = self;
  v20.super_class = AAConversationDetectSessionManager;
  v2 = [(AAConversationDetectSessionManager *)&v20 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("AACDSessionManager", v3);
    v5 = *(v2 + 18);
    *(v2 + 18) = v4;

    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("AACDChunkedRampQueue", v6);
    v8 = *(v2 + 19);
    *(v2 + 19) = v7;

    v9 = objc_alloc_init(NSMutableDictionary);
    v10 = *(v2 + 11);
    *(v2 + 11) = v9;

    *(v2 + 57) = -1;
    objc_msgSend_defaultAudioTunings(AAConversationDetectSessionManager);
    v12 = v18;
    v11 = v19;
    v13 = v17;
    *(v2 + 24) = v16;
    *(v2 + 40) = v13;
    *(v2 + 56) = v12;
    *(v2 + 72) = v11;
    *(v2 + 48) = -1;
    v14 = v2;
  }

  return v2;
}

- (void)activate
{
  selfCopy = self;
  if (dword_1002F61A0 <= 30)
  {
    if (dword_1002F61A0 != -1 || (self = _LogCategory_Initialize(), self))
    {
      sub_1001D3AB8(self, a2, v2);
    }
  }

  if (selfCopy->_prefsChangedNotifyToken == -1)
  {
    dispatchQueue = selfCopy->_dispatchQueue;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100014E60;
    handler[3] = &unk_1002B6DF0;
    handler[4] = selfCopy;
    notify_register_dispatch("com.apple.AudioAccessory.prefsChanged", &selfCopy->_prefsChangedNotifyToken, dispatchQueue, handler);
  }

  [(AAConversationDetectSessionManager *)selfCopy _prefsChanged];
  v5 = selfCopy->_connectedDeviceDiscovery;
  if (!v5)
  {
    v6 = objc_alloc_init(CBDiscovery);
    [v6 setDispatchQueue:selfCopy->_dispatchQueue];
    objc_storeStrong(&selfCopy->_connectedDeviceDiscovery, v6);
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_100014EC8;
    v26[3] = &unk_1002B6DA8;
    v7 = v6;
    v27 = v7;
    v28 = selfCopy;
    [v7 setDeviceFoundHandler:v26];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100014EE4;
    v23[3] = &unk_1002B6DA8;
    v8 = v7;
    v24 = v8;
    v25 = selfCopy;
    [v8 setDeviceLostHandler:v23];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100014F00;
    v20[3] = &unk_1002B6D18;
    v9 = v8;
    v21 = v9;
    v22 = selfCopy;
    [v9 setInterruptionHandler:v20];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100014F94;
    v18[3] = &unk_1002B6880;
    v10 = v9;
    v19 = v10;
    [v10 setInvalidationHandler:v18];
    [v10 setDiscoveryFlags:{objc_msgSend(v10, "discoveryFlags") | 0x80000200000}];
    v12 = _NSConcreteStackBlock;
    v13 = 3221225472;
    v14 = sub_100014FF0;
    v15 = &unk_1002B68A8;
    v5 = v10;
    v16 = v5;
    v17 = selfCopy;
    [(CBDiscovery *)v5 activateWithCompletion:&v12];
  }

  [(AAConversationDetectSessionManager *)selfCopy _aaControllerEnsureStarted:v12];
  if (!selfCopy->_cdMsgReceivedObserving && IsAppleInternalBuild())
  {
    if (dword_1002F61A0 <= 30 && (dword_1002F61A0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D3AD4();
    }

    v11 = +[NSDistributedNotificationCenter defaultCenter];
    [v11 addObserver:selfCopy selector:"_cdMsgNotificationReceivedHandler:" name:@"com.apple.AudioAccessory.cdMsgNotification" object:0];
    selfCopy->_cdMsgReceivedObserving = 1;
  }

  [(AAConversationDetectSessionManager *)selfCopy _registerForWirelessSplitterStateChanges];
}

- (void)_aaControllerEnsureStarted
{
  p_aaController = &self->_aaController;
  v4 = self->_aaController;
  if (!v4)
  {
    v5 = objc_alloc_init(AAController);
    [(AAController *)v5 setDispatchQueue:self->_dispatchQueue];
    objc_storeStrong(p_aaController, v5);
    [(AAController *)v5 setInvalidationHandler:&stru_1002B6E10];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000152F0;
    v10[3] = &unk_1002B6E38;
    v6 = v5;
    v11 = v6;
    selfCopy = self;
    [(AAController *)v6 setConversationDetectMessageHandler:v10];
    if (dword_1002F61A0 <= 30 && (dword_1002F61A0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D3B68(v6);
    }

    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10001530C;
    v7[3] = &unk_1002B68A8;
    v4 = v6;
    v8 = v4;
    selfCopy2 = self;
    [(AAController *)v4 activateWithCompletion:v7];
  }
}

- (void)_aaControllerEnsureStopped
{
  aaController = self->_aaController;
  if (aaController)
  {
    [(AAController *)aaController invalidate];
    v4 = self->_aaController;
    self->_aaController = 0;
  }
}

- (void)activateCDSession
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000154B4;
  block[3] = &unk_1002B6880;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_activateCDSession
{
  if (!self->_activateCDSessionCalled)
  {
    v8 = v3;
    selfCopy = self;
    self->_activateCDSessionCalled = 1;
    if (dword_1002F61A0 <= 30)
    {
      if (dword_1002F61A0 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_1001D3C20(self, a2, v2);
      }
    }

    [(AAConversationDetectSessionManager *)selfCopy _registerForAudioSessionResetNotifications:v4];

    [(AAConversationDetectSessionManager *)selfCopy _registerForAVAudioSessionSpeechDetectionStyleChanges];
  }
}

- (void)_conversationDetectMessageReceived:(id)received fromDeviceIdentifier:(id)identifier
{
  receivedCopy = received;
  identifierCopy = identifier;
  v10 = identifierCopy;
  if (identifierCopy)
  {
    v11 = [(NSMutableDictionary *)self->_cdSupportedAccessories objectForKeyedSubscript:identifierCopy];

    if (v11)
    {
      v28 = 0;
      v26 = 0u;
      memset(v27, 0, sizeof(v27));
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v19 = 0u;
      v12 = [(NSMutableDictionary *)self->_cdSupportedAccessories objectForKeyedSubscript:v10];
      btAddressData = [v12 btAddressData];
      v14 = CUPrintNSDataAddress();
      [(AAConversationDetectSessionManager *)self setCurrentCDDeviceIdentifier:v14];

      if (!receivedCopy)
      {
        v16 = 0;
        LOBYTE(v15) = 0;
LABEL_19:
        if (dword_1002F61A0 <= 90 && (dword_1002F61A0 != -1 || _LogCategory_Initialize()))
        {
          sub_1001D3CD8(v15, v16);
        }

        goto LABEL_28;
      }

      v15 = *[receivedCopy bytes];
      if (dword_1002F61A0 <= 30 && (dword_1002F61A0 != -1 || _LogCategory_Initialize()))
      {
        sub_1001D3C3C(v15);
      }

      if (v15 != 2)
      {
        v16 = v15;
        if (v15 == 1)
        {
          [(AAConversationDetectSessionManager *)self _getSignalTypeFromData:receivedCopy signal:&v28];
          [(AAConversationDetectSessionManager *)self _updateConversationDetectSignal:v28];
          goto LABEL_28;
        }

        goto LABEL_19;
      }

      if ([(AAConversationDetectSessionManager *)self _getCDTunings:&v19 FromData:receivedCopy])
      {
        if (dword_1002F61A0 <= 30 && (dword_1002F61A0 != -1 || _LogCategory_Initialize()))
        {
          sub_1001D3CA4();
        }

        v17[6] = v25;
        v17[7] = v26;
        v18[0] = *v27;
        *(v18 + 15) = *&v27[15];
        v17[2] = v21;
        v17[3] = v22;
        v17[4] = v23;
        v17[5] = v24;
        v17[0] = v19;
        v17[1] = v20;
        [(AAConversationDetectSessionManager *)self setCDTunings:v17];
      }
    }

    else if (dword_1002F61A0 <= 30 && (dword_1002F61A0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D3D40(v10);
    }
  }

  else if (dword_1002F61A0 <= 30)
  {
    if (dword_1002F61A0 != -1 || (identifierCopy = _LogCategory_Initialize(), identifierCopy))
    {
      sub_1001D3D80(identifierCopy, v8, v9);
    }
  }

LABEL_28:
}

- (void)_cdMsgNotificationReceivedHandler:(id)handler
{
  handlerCopy = handler;
  v7 = handlerCopy;
  if (dword_1002F61A0 <= 30)
  {
    if (dword_1002F61A0 != -1 || (handlerCopy = _LogCategory_Initialize(), handlerCopy))
    {
      sub_1001D3D9C(handlerCopy, v5, v6);
    }
  }

  dispatchQueue = self->_dispatchQueue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000158A8;
  v10[3] = &unk_1002B6D18;
  v11 = v7;
  selfCopy = self;
  v9 = v7;
  dispatch_async(dispatchQueue, v10);
}

- (id)descriptionWithLevel:(int)level
{
  v11 = 0;
  cdSignal = self->_cdSignal;
  if (cdSignal > 0xB)
  {
    v4 = "?";
  }

  else
  {
    v4 = (&off_1002B7018)[cdSignal];
  }

  v5 = "no";
  if (self->_audioSessionActivated)
  {
    v5 = "yes";
  }

  NSAppendPrintF_safe(&v11, "-- AAConversationDetectSessionManager: CDSignal %s, CDActivated: %s, duckLevel: %@, unduckLevel: %@, ramp duration: %@ --\n", *&level, v4, v5, self->_duckLevel, self->_unduckLevel, self->_rampDuration);
  v6 = v11;
  v10 = v6;
  NSAppendPrintF(&v10, "\n");
  v7 = v10;
  v8 = v10;

  return v7;
}

- (void)invalidateCDSession
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100015AC4;
  block[3] = &unk_1002B6880;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidateCDSession
{
  selfCopy = self;
  if (dword_1002F61A0 <= 30)
  {
    if (dword_1002F61A0 != -1 || (self = _LogCategory_Initialize(), self))
    {
      sub_1001D3DD8(self, a2, v2);
    }
  }

  selfCopy->_cdSignal = 0;
  [(AAConversationDetectSessionManager *)selfCopy _cdSessionEnsureDeactivated:0];
  v4 = selfCopy;
  objc_sync_enter(v4);
  v4->_audioSessionActivated = 0;
  objc_sync_exit(v4);

  v5 = [(AAConversationDetectSessionManager *)v4 setCdSignalAudioInterrupted:0];
  if (dword_1002F61A0 <= 30)
  {
    if (dword_1002F61A0 != -1 || (v5 = _LogCategory_Initialize(), v5))
    {
      sub_1001D3DF4(v5, v6, v7);
    }
  }

  v8 = +[NSNotificationCenter defaultCenter];
  [v8 postNotificationName:@"CdSignalAudioInterruptedChanged" object:v4];

  if ([(NSMutableDictionary *)v4->_cdSupportedAccessories count])
  {
    if (dword_1002F61A0 <= 90 && (dword_1002F61A0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D3E10(&v4->_cdSupportedAccessories);
    }
  }

  else
  {
    [(AAConversationDetectSessionManager *)v4 _deregisterFromAudioSessionResetNotifications];
    [(AAConversationDetectSessionManager *)v4 _deregisterFromAVAudioSessionSpeechDetectionStyleChanges];
    v4->_activateCDSessionCalled = 0;
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100015C84;
  block[3] = &unk_1002B6880;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  selfCopy = self;
  if (dword_1002F61A0 <= 30)
  {
    if (dword_1002F61A0 != -1 || (self = _LogCategory_Initialize(), self))
    {
      sub_1001D3E58(self, a2, v2);
    }
  }

  [(AAConversationDetectSessionManager *)selfCopy _invalidateCDSession];
  [(AAConversationDetectSessionManager *)selfCopy _aaControllerEnsureStopped];
  [(CBDiscovery *)selfCopy->_connectedDeviceDiscovery invalidate];
  connectedDeviceDiscovery = selfCopy->_connectedDeviceDiscovery;
  selfCopy->_connectedDeviceDiscovery = 0;

  [(NSMutableDictionary *)selfCopy->_cdSupportedAccessories removeAllObjects];
  cdSupportedAccessories = selfCopy->_cdSupportedAccessories;
  selfCopy->_cdSupportedAccessories = 0;

  if (selfCopy->_cdMsgReceivedObserving)
  {
    v6 = +[NSDistributedNotificationCenter defaultCenter];
    [v6 removeObserver:selfCopy name:@"com.apple.AudioAccessory.cdMsgNotification" object:0];
    selfCopy->_cdMsgReceivedObserving = 0;
  }

  prefsChangedNotifyToken = selfCopy->_prefsChangedNotifyToken;
  if (prefsChangedNotifyToken != -1)
  {
    notify_cancel(prefsChangedNotifyToken);
    selfCopy->_prefsChangedNotifyToken = -1;
  }

  notify_cancel(selfCopy->_conversationAwarenessNotificationDispatchToken);

  [(AAConversationDetectSessionManager *)selfCopy _deregisterFromWirelessSplitterStateChanges];
}

- (void)_getSignalTypeFromData:(id)data signal:(int *)signal
{
  dataCopy = data;
  v6 = dataCopy;
  if (dataCopy)
  {
    v12 = dataCopy;
    v7 = dataCopy;
    bytes = [v12 bytes];
    dataCopy = [v12 length];
    if (dataCopy > 1)
    {
      v9 = bytes[1];
      *signal = v9;
      v6 = v12;
      if (dword_1002F61A0 > 30)
      {
        goto LABEL_16;
      }

      if (dword_1002F61A0 == -1)
      {
        dataCopy = _LogCategory_Initialize();
        v6 = v12;
        if (!dataCopy)
        {
          goto LABEL_16;
        }

        v9 = *signal;
      }

      if (v9 > 0xB)
      {
        v10 = "?";
      }

      else
      {
        v10 = (&off_1002B7018)[v9];
      }

      dataCopy = LogPrintF(&dword_1002F61A0, "[AAConversationDetectSessionManager _getSignalTypeFromData:signal:]", 30, "_getSignalFromData returning signal - %s", v10);
      goto LABEL_15;
    }

    v6 = v12;
    if (dword_1002F61A0 <= 30)
    {
      v11 = dataCopy;
      if (dword_1002F61A0 != -1 || (dataCopy = _LogCategory_Initialize(), v6 = v12, dataCopy))
      {
        dataCopy = sub_1001D3E74(v11);
LABEL_15:
        v6 = v12;
      }
    }
  }

LABEL_16:

  _objc_release_x1(dataCopy, v6);
}

- (BOOL)_getCDTunings:(id *)tunings FromData:(id)data
{
  dataCopy = data;
  v6 = dataCopy;
  if (!dataCopy)
  {
LABEL_12:
    v19 = 0;
    goto LABEL_13;
  }

  bytes = [dataCopy bytes];
  v8 = [v6 length];
  if (v8 <= 0x93)
  {
    if (dword_1002F61A0 <= 30)
    {
      v11 = v8;
      if (dword_1002F61A0 != -1 || _LogCategory_Initialize())
      {
        sub_1001D3ED0(v11);
      }
    }

    goto LABEL_12;
  }

  if (!tunings)
  {
    if (dword_1002F61A0 <= 30)
    {
      if (dword_1002F61A0 != -1 || (v8 = _LogCategory_Initialize(), v8))
      {
        sub_1001D3EB4(v8, v9, v10);
      }
    }

    goto LABEL_12;
  }

  v12 = *(bytes + 17);
  *&tunings->var0.var0 = *(bytes + 1);
  *&tunings->var0.var4 = v12;
  v13 = *(bytes + 33);
  v14 = *(bytes + 49);
  v15 = *(bytes + 81);
  *&tunings->var0.var16 = *(bytes + 65);
  *&tunings->var0.var21 = v15;
  *&tunings->var0.var8 = v13;
  *&tunings->var0.var12 = v14;
  v16 = *(bytes + 97);
  v17 = *(bytes + 113);
  v18 = *(bytes + 129);
  *(&tunings->var2.var6.var0 + 3) = *(bytes + 36);
  *&tunings->var2.var2.var1 = v17;
  *&tunings->var2.var4.var1 = v18;
  *&tunings->var2.var0.var1 = v16;
  v19 = 1;
LABEL_13:

  return v19;
}

- (BOOL)getCdSignalAudioInterrupted
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  cdSignalAudioInterrupted = selfCopy->_cdSignalAudioInterrupted;
  objc_sync_exit(selfCopy);

  return cdSignalAudioInterrupted;
}

- (id)getCurrentCDDeviceIdentifier
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_currentCDDeviceIdentifier;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)_prefsChanged
{
  CFPrefs_GetDouble();
  if (v3 >= 0.0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 3.0;
  }

  signalRampDurationSecs = self->_cdSignalAudioTunings.unlatchSignalTunables.signalRampDurationSecs;
  if (v4 == signalRampDurationSecs)
  {
    goto LABEL_10;
  }

  if (dword_1002F61A0 <= 30)
  {
    if (dword_1002F61A0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_9;
      }

      signalRampDurationSecs = self->_cdSignalAudioTunings.unlatchSignalTunables.signalRampDurationSecs;
    }

    LogPrintF(&dword_1002F61A0, "[AAConversationDetectSessionManager _prefsChanged]", 30, "Unlatch signal ramp duration: %0.2f --> %0.2f", signalRampDurationSecs, v4);
  }

LABEL_9:
  v6 = v4;
  self->_cdSignalAudioTunings.unlatchSignalTunables.signalRampDurationSecs = v6;
LABEL_10:
  CFPrefs_GetDouble();
  if (v7 >= 0.0)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0.1;
  }

  prefCDRampChunkDuration = self->_prefCDRampChunkDuration;
  if (v8 != prefCDRampChunkDuration)
  {
    if (dword_1002F61A0 <= 30)
    {
      if (dword_1002F61A0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_18;
        }

        prefCDRampChunkDuration = self->_prefCDRampChunkDuration;
      }

      LogPrintF(&dword_1002F61A0, "[AAConversationDetectSessionManager _prefsChanged]", 30, "Ramp chunk duration: %0.2f --> %0.2f", prefCDRampChunkDuration, v8);
    }

LABEL_18:
    self->_prefCDRampChunkDuration = v8;
  }

  v10 = CFPrefs_GetInt64() != 0;
  if (self->_prefCDShouldDisableCustomDuckingCurve != v10)
  {
    if (dword_1002F61A0 <= 30 && (dword_1002F61A0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D3F10(v10);
    }

    self->_prefCDShouldDisableCustomDuckingCurve = v10;
  }

  v11 = CFPrefs_GetInt64() != 0;
  if (self->_prefCDSiriDidAnnounce != v11)
  {
    if (dword_1002F61A0 <= 30 && (dword_1002F61A0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D3F6C(v11);
    }

    self->_prefCDSiriDidAnnounce = v11;
  }
}

- (void)_sendConversationDetectMessage:(id)message destinationIdentifier:(id)identifier completion:(id)completion
{
  messageCopy = message;
  identifierCopy = identifier;
  completionCopy = completion;
  [(AAConversationDetectSessionManager *)self _aaControllerEnsureStarted];
  aaController = self->_aaController;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000163E8;
  v15[3] = &unk_1002B6E60;
  v16 = messageCopy;
  v17 = identifierCopy;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = identifierCopy;
  v14 = messageCopy;
  [(AAController *)aaController sendConversationDetectMessage:v14 destinationIdentifier:v13 completionHandler:v15];
}

- (void)setConversationDetectSignal:(int)signal
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100016558;
  v4[3] = &unk_1002B68F8;
  v4[4] = self;
  signalCopy = signal;
  dispatch_async(dispatchQueue, v4);
}

- (void)setCDTunings:(id *)tunings
{
  dispatchQueue = self->_dispatchQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v4 = *&tunings->var2.var2.var1;
  v15 = *&tunings->var2.var0.var1;
  v16 = v4;
  *v17 = *&tunings->var2.var4.var1;
  v5 = *&tunings->var0.var12;
  v11 = *&tunings->var0.var8;
  v12 = v5;
  v6 = *&tunings->var0.var21;
  v13 = *&tunings->var0.var16;
  v14 = v6;
  v7 = *&tunings->var0.var4;
  v9 = *&tunings->var0.var0;
  v8[2] = sub_10001661C;
  v8[3] = &unk_1002B6E88;
  *&v17[15] = *(&tunings->var2.var6.var0 + 3);
  v10 = v7;
  v8[4] = self;
  dispatch_async(dispatchQueue, v8);
}

- (void)setCdSignalAudioInterrupted:(BOOL)interrupted
{
  obj = self;
  objc_sync_enter(obj);
  obj->_cdSignalAudioInterrupted = interrupted;
  objc_sync_exit(obj);
}

- (void)_setCDSignalAudioTunings:(id *)tunings
{
  v4 = 0;
  v5 = *&tunings->var2.var0;
  v44[0] = *&tunings->var0.var0;
  v44[1] = v5;
  p_cdSignalAudioTunings = &self->_cdSignalAudioTunings;
  v7 = *&tunings->var6.var0;
  v44[2] = *&tunings->var4.var0;
  v44[3] = v7;
  do
  {
    v8 = *(v44 + v4);
    if (v8 >= 0.0)
    {
      v9 = flt_100225DC8[v4];
      if (v8 <= v9)
      {
        v9 = *(v44 + v4);
      }

      else if (dword_1002F61A0 <= 30 && (dword_1002F61A0 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&dword_1002F61A0, "[AAConversationDetectSessionManager _setCDSignalAudioTunings:]", 30, "Invalid audio tunings %f, Audio tunings %f set at index %d", v8, v9, v4);
      }
    }

    else
    {
      v9 = 0.0;
      if (dword_1002F61A0 <= 30 && (dword_1002F61A0 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&dword_1002F61A0, "[AAConversationDetectSessionManager _setCDSignalAudioTunings:]", 30, "Invalid audio tunings %f, Audio tunings %f set at index %d", v8, 0.0, v4);
      }
    }

    *(&p_cdSignalAudioTunings->startSignalTunables.signalDuckingLevel + v4++) = v9;
  }

  while (v4 != 16);
  if (dword_1002F61A0 < 31 && (dword_1002F61A0 != -1 || _LogCategory_Initialize()))
  {
    signalDuckingLevel = self->_cdSignalAudioTunings.startSignalTunables.signalDuckingLevel;
    signalRampDurationSecs = self->_cdSignalAudioTunings.startSignalTunables.signalRampDurationSecs;
    v13 = self->_cdSignalAudioTunings.latch1SignalTunables.signalDuckingLevel;
    v12 = self->_cdSignalAudioTunings.latch1SignalTunables.signalRampDurationSecs;
    v15 = self->_cdSignalAudioTunings.latch2SignalTunables.signalDuckingLevel;
    v14 = self->_cdSignalAudioTunings.latch2SignalTunables.signalRampDurationSecs;
    v17 = self->_cdSignalAudioTunings.unlatchSignalTunables.signalDuckingLevel;
    v16 = self->_cdSignalAudioTunings.unlatchSignalTunables.signalRampDurationSecs;
    v36 = self->_cdSignalAudioTunings.end1SignalTunables.signalDuckingLevel;
    v37 = self->_cdSignalAudioTunings.end1SignalTunables.signalRampDurationSecs;
    v38 = self->_cdSignalAudioTunings.end2SignalTunables.signalDuckingLevel;
    v39 = self->_cdSignalAudioTunings.end2SignalTunables.signalRampDurationSecs;
    v40 = self->_cdSignalAudioTunings.resetSignalTunables.signalDuckingLevel;
    v41 = self->_cdSignalAudioTunings.resetSignalTunables.signalRampDurationSecs;
    v42 = self->_cdSignalAudioTunings.pauseSignalTunables.signalDuckingLevel;
    v43 = self->_cdSignalAudioTunings.pauseSignalTunables.signalRampDurationSecs;
    v62 = 0;
    NSAppendPrintF(&v62, "\n-- CD Audio Tunings Begin --\n");
    v18 = v62;
    v61 = v18;
    NSAppendPrintF(&v61, "    Start signal duck level: %0.2f\n", signalDuckingLevel);
    v19 = v61;

    v60 = v19;
    NSAppendPrintF(&v60, "    Start signal ramp duration: %0.2f s\n", signalRampDurationSecs);
    v20 = v60;

    v59 = v20;
    NSAppendPrintF(&v59, "    Latch1 signal duck level: %0.2f\n", v13);
    v21 = v59;

    v58 = v21;
    NSAppendPrintF(&v58, "    Latch1 signal ramp duration: %0.2f s\n", v12);
    v22 = v58;

    v57 = v22;
    NSAppendPrintF(&v57, "    Latch2 signal duck level: %0.2f\n", v15);
    v23 = v57;

    v56 = v23;
    NSAppendPrintF(&v56, "    Latch2 signal ramp duration: %0.2f s\n", v14);
    v24 = v56;

    v55 = v24;
    NSAppendPrintF(&v55, "    Unlatch signal duck level: %0.2f\n", v17);
    v25 = v55;

    v54 = v25;
    NSAppendPrintF(&v54, "    Unlatch signal ramp duration: %0.2f s\n", v16);
    v26 = v54;

    v53 = v26;
    NSAppendPrintF(&v53, "    End1 signal duck level: %0.2f\n", v36);
    v27 = v53;

    v52 = v27;
    NSAppendPrintF(&v52, "    End1 signal ramp duration: %0.2f s\n", v37);
    v28 = v52;

    v51 = v28;
    NSAppendPrintF(&v51, "    End2 signal duck level: %0.2f\n", v38);
    v29 = v51;

    v50 = v29;
    NSAppendPrintF(&v50, "    End2 signal ramp duration: %0.2f s\n", v39);
    v30 = v50;

    v49 = v30;
    NSAppendPrintF(&v49, "    Reset signal duck level: %0.2f\n", v40);
    v31 = v49;

    v48 = v31;
    NSAppendPrintF(&v48, "    Reset signal ramp duration: %0.2f s\n", v41);
    v32 = v48;

    v47 = v32;
    NSAppendPrintF(&v47, "    Pause signal duck level: %0.2f\n", v42);
    v33 = v47;

    v46 = v33;
    NSAppendPrintF(&v46, "    Pause signal ramp duration: %0.2f s\n", v43);
    v34 = v46;

    v45 = v34;
    NSAppendPrintF(&v45, "-- CD Audio Tunings End --\n");
    v35 = v45;

    LogPrintF(&dword_1002F61A0, "[AAConversationDetectSessionManager _setCDSignalAudioTunings:]", 30, "%@", v35);
  }
}

- (void)setCurrentCDDeviceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  obj = self;
  objc_sync_enter(obj);
  currentCDDeviceIdentifier = obj->_currentCDDeviceIdentifier;
  obj->_currentCDDeviceIdentifier = identifierCopy;

  objc_sync_exit(obj);
}

- (void)_updateAccessoriesWithMotionState:(unsigned int)state
{
  v5 = [(NSMutableDictionary *)self->_cdSupportedAccessories count];
  if (v5)
  {
    v13 = 4;
    stateCopy = state;
    v8 = [NSData dataWithBytes:&v13 length:5];
    cdSupportedAccessories = self->_cdSupportedAccessories;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100017280;
    v11[3] = &unk_1002B6EB0;
    v11[4] = self;
    v12 = v8;
    v10 = v8;
    [(NSMutableDictionary *)cdSupportedAccessories enumerateKeysAndObjectsUsingBlock:v11];
  }

  else if (dword_1002F61A0 <= 30)
  {
    if (dword_1002F61A0 != -1 || (v5 = _LogCategory_Initialize(), v5))
    {
      sub_1001D400C(v5, v6, v7);
    }
  }
}

- (void)_updateAccessoriesWithPauseState
{
  v3 = [(NSMutableDictionary *)self->_cdSupportedAccessories count];
  if (v3)
  {
    _getPauseMessage = [(AAConversationDetectSessionManager *)self _getPauseMessage];
    v12 = _getPauseMessage;
    v13 = BYTE2(_getPauseMessage);
    v7 = [NSData dataWithBytes:&v12 length:3];
    cdSupportedAccessories = self->_cdSupportedAccessories;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000173E4;
    v10[3] = &unk_1002B6EB0;
    v10[4] = self;
    v11 = v7;
    v9 = v7;
    [(NSMutableDictionary *)cdSupportedAccessories enumerateKeysAndObjectsUsingBlock:v10];
  }

  else if (dword_1002F61A0 <= 30)
  {
    if (dword_1002F61A0 != -1 || (v3 = _LogCategory_Initialize(), v3))
    {
      sub_1001D4028(v3, v4, v5);
    }
  }
}

- (void)_updateAccessoriesWithResetState:(unsigned __int8)state
{
  stateCopy = state;
  v5 = [(NSMutableDictionary *)self->_cdSupportedAccessories count];
  if (v5)
  {
    v13 = [(AAConversationDetectSessionManager *)self _getResetMessage:stateCopy];
    v8 = [NSData dataWithBytes:&v13 length:2];
    cdSupportedAccessories = self->_cdSupportedAccessories;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100017548;
    v11[3] = &unk_1002B6EB0;
    v11[4] = self;
    v12 = v8;
    v10 = v8;
    [(NSMutableDictionary *)cdSupportedAccessories enumerateKeysAndObjectsUsingBlock:v11];
  }

  else if (dword_1002F61A0 <= 30)
  {
    if (dword_1002F61A0 != -1 || (v5 = _LogCategory_Initialize(), v5))
    {
      sub_1001D4044(v5, v6, v7);
    }
  }
}

- (void)_updateConversationDetectSignal:(int)signal
{
  cdSignal = self->_cdSignal;
  if (cdSignal == signal)
  {
    return;
  }

  if (dword_1002F61A0 <= 30)
  {
    if (dword_1002F61A0 != -1)
    {
LABEL_4:
      if (cdSignal > 0xB)
      {
        v7 = "?";
      }

      else
      {
        v7 = (&off_1002B7018)[cdSignal];
      }

      if (signal > 0xB)
      {
        v8 = "?";
      }

      else
      {
        v8 = (&off_1002B7018)[signal];
      }

      LogPrintF(&dword_1002F61A0, "[AAConversationDetectSessionManager _updateConversationDetectSignal:]", 30, "Conversation detect signal updated %s -> %s", v7, v8);
      goto LABEL_13;
    }

    if (_LogCategory_Initialize())
    {
      cdSignal = self->_cdSignal;
      goto LABEL_4;
    }
  }

LABEL_13:
  self->_cdSignal = signal;

  [(AAConversationDetectSessionManager *)self _cdSessionSignalUpdate];
}

- (void)_updatePauseState
{
  currentSpeechDetectionStyle = self->_currentSpeechDetectionStyle;
  isWirelessSplitterOn = self->_isWirelessSplitterOn;
  pauseConversationDetect = currentSpeechDetectionStyle == 4 || self->_isWirelessSplitterOn;
  self->_pauseConversationDetect = pauseConversationDetect;
  if (dword_1002F61A0 <= 30)
  {
    if (dword_1002F61A0 == -1)
    {
      v9 = _LogCategory_Initialize();
      pauseConversationDetect = self->_pauseConversationDetect;
      if (!v9)
      {
        goto LABEL_16;
      }

      isWirelessSplitterOn = self->_isWirelessSplitterOn;
    }

    v6 = "no";
    if (pauseConversationDetect)
    {
      v7 = "yes";
    }

    else
    {
      v7 = "no";
    }

    if (isWirelessSplitterOn)
    {
      v8 = "yes";
    }

    else
    {
      v8 = "no";
    }

    if (currentSpeechDetectionStyle == 4)
    {
      v6 = "yes";
    }

    LogPrintF(&dword_1002F61A0, "[AAConversationDetectSessionManager _updatePauseState]", 30, "Updated pause conversation state to: %s, isWirelessSplitterOn: %s, isSpeechDetectionStyleDisallowed: %s", v7, v8, v6);
    pauseConversationDetect = self->_pauseConversationDetect;
  }

LABEL_16:
  if (!pauseConversationDetect)
  {
    self->_currentPauseReason = 0;
  }

  [(AAConversationDetectSessionManager *)self _updateAccessoriesWithPauseState];
  if (self->_pauseConversationDetect)
  {

    [(AAConversationDetectSessionManager *)self _cdSessionEnsureDeactivated:0];
  }
}

- (void)_audioSessionEnsureStarted
{
  if (!self->_audioSessionActivated)
  {
    v3 = +[AVAudioSession sharedInstance];
    v4 = kMXSessionProperty_InterruptionStyle;
    v5 = [NSNumber numberWithInt:32];
    v11 = 0;
    [v3 setMXSessionProperty:v4 value:v5 error:&v11];
    v6 = v11;

    if (dword_1002F61A0 <= 30 && (dword_1002F61A0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D4060();
    }

    v7 = +[AVAudioSession sharedInstance];
    v10 = v6;
    [v7 setActive:1 error:&v10];
    v8 = v10;

    if (v8)
    {
      if (dword_1002F61A0 <= 90 && (dword_1002F61A0 != -1 || _LogCategory_Initialize()))
      {
        sub_1001D4094(v8);
      }
    }

    else
    {
      selfCopy = self;
      objc_sync_enter(selfCopy);
      self->_audioSessionActivated = 1;
      objc_sync_exit(selfCopy);
    }
  }
}

- (void)_audioSessionEnsureStopped
{
  obj = self;
  objc_sync_enter(obj);
  if (obj->_audioSessionActivated)
  {
    if (dword_1002F61A0 <= 30 && (dword_1002F61A0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1002F61A0, "[AAConversationDetectSessionManager _audioSessionEnsureStopped]", 30, "Deactivating AVAudioSession");
    }

    v2 = +[AVAudioSession sharedInstance];
    v9 = 0;
    [v2 setDuckingFadeOutDuration:0 fadeInDuration:0 error:&v9];
    v3 = v9;

    if (v3 && dword_1002F61A0 <= 90 && (dword_1002F61A0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1002F61A0, "[AAConversationDetectSessionManager _audioSessionEnsureStopped]", 90, "Failed to reset AVAudioSession ramp duration");
    }

    v4 = +[AVAudioSession sharedInstance];
    v8 = v3;
    [v4 setActive:0 withOptions:1 error:&v8];
    v5 = v8;

    if (v5 && dword_1002F61A0 <= 90 && (dword_1002F61A0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1002F61A0, "[AAConversationDetectSessionManager _audioSessionEnsureStopped]", 90, "Failed to invalidate AVAudioSession");
    }

    obj->_audioSessionActivated = 0;

    objc_sync_exit(obj);
    [(AAConversationDetectSessionManager *)obj setCdSignalAudioInterrupted:0];
    if (dword_1002F61A0 <= 30 && (dword_1002F61A0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D40D4();
    }

    v6 = +[NSNotificationCenter defaultCenter];
    [v6 postNotificationName:@"CdSignalAudioInterruptedChanged" object:obj];
  }

  else
  {
    objc_sync_exit(obj);
  }
}

- (void)_calibrateDuckingLevelForVolumeLevel:(float)level
{
  LODWORD(v8) = 0.5;
  LODWORD(v3) = -1.0;
  LODWORD(v4) = 0.75;
  *&v5 = level;
  [(AAConversationDetectSessionManager *)self _duckingLevelForCoefficients:v8 volume:v3, v4, v5];
  v10 = v9;
  LODWORD(v11) = 1052069016;
  LODWORD(v12) = -1088373234;
  LODWORD(v13) = 1049629609;
  *&v14 = level;
  [(AAConversationDetectSessionManager *)self _duckingLevelForCoefficients:v11 volume:v12, v13, v14];
  v16 = v15;
  LODWORD(v17) = 1054847323;
  LODWORD(v18) = -1085663714;
  LODWORD(v19) = 1058727893;
  *&v20 = level;
  [(AAConversationDetectSessionManager *)self _duckingLevelForCoefficients:v17 volume:v18, v19, v20];
  v22 = v21;
  if (dword_1002F61A0 <= 30 && (dword_1002F61A0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1002F61A0, "[AAConversationDetectSessionManager _calibrateDuckingLevelForVolumeLevel:]", 30, "Calibrated levels for custom ducking curve, start: %0.2f, latch: %0.2f, unlatch: %0.2f", v10, v16, v22);
  }

  self->_cdSignalAudioTunings.startSignalTunables.signalDuckingLevel = v10;
  self->_cdSignalAudioTunings.latch1SignalTunables.signalDuckingLevel = v16;
  self->_cdSignalAudioTunings.latch2SignalTunables.signalDuckingLevel = v16;
  self->_cdSignalAudioTunings.unlatchSignalTunables.signalDuckingLevel = v22;
}

- (void)_cdSessionSignalUpdate
{
  p_duckLevel = &self->_duckLevel;
  v4 = self->_duckLevel;
  v5 = *p_duckLevel;
  *p_duckLevel = 0;

  p_rampDuration = &self->_rampDuration;
  rampDuration = self->_rampDuration;
  self->_rampDuration = 0;

  selfCopy = self;
  objc_sync_enter(selfCopy);
  selfCopy->_shouldQueueRamp = 0;
  objc_sync_exit(selfCopy);

  unduckLevel = selfCopy->_unduckLevel;
  selfCopy->_unduckLevel = 0;

  cdSignal = selfCopy->_cdSignal;
  if (cdSignal > 5)
  {
    if (cdSignal <= 8)
    {
      if (cdSignal == 6)
      {
        *&v13 = selfCopy->_cdSignalAudioTunings.end2SignalTunables.signalRampDurationSecs;
        v46 = [NSNumber numberWithFloat:v13];
        v47 = *p_rampDuration;
        *p_rampDuration = v46;

        *&v17 = selfCopy->_cdSignalAudioTunings.end2SignalTunables.signalDuckingLevel;
      }

      else if (cdSignal == 7)
      {
        *&v13 = selfCopy->_cdSignalAudioTunings.resetSignalTunables.signalRampDurationSecs;
        v38 = [NSNumber numberWithFloat:v13];
        v39 = *p_rampDuration;
        *p_rampDuration = v38;

        *&v17 = selfCopy->_cdSignalAudioTunings.resetSignalTunables.signalDuckingLevel;
      }

      else
      {
        *&v13 = selfCopy->_cdSignalAudioTunings.pauseSignalTunables.signalRampDurationSecs;
        v15 = [NSNumber numberWithFloat:v13];
        v16 = *p_rampDuration;
        *p_rampDuration = v15;

        *&v17 = selfCopy->_cdSignalAudioTunings.pauseSignalTunables.signalDuckingLevel;
      }

      goto LABEL_33;
    }

    switch(cdSignal)
    {
      case 9:
        v49 = *p_rampDuration;
        *p_rampDuration = &off_1002CB608;
        goto LABEL_34;
      case 10:
        if (dword_1002F61A0 <= 30)
        {
          if (dword_1002F61A0 != -1 || (v10 = _LogCategory_Initialize(), v10))
          {
            sub_1001D4108(v10, v11, v12);
          }
        }

        goto LABEL_69;
      case 11:
        [(AAConversationDetectSessionManager *)selfCopy _audioSessionEnsureStopped];
LABEL_31:
        v18 = 0;
        v26 = 0;
        v27 = 1;
        goto LABEL_45;
    }

LABEL_36:
    if (dword_1002F61A0 <= 30)
    {
      if (dword_1002F61A0 != -1 || (v10 = _LogCategory_Initialize(), v10))
      {
        sub_1001D4270(v10, v11, v12);
      }
    }

    goto LABEL_69;
  }

  if (cdSignal <= 2)
  {
    if (cdSignal != 1)
    {
      if (cdSignal == 2)
      {
        *&v13 = selfCopy->_cdSignalAudioTunings.latch1SignalTunables.signalRampDurationSecs;
        v21 = [NSNumber numberWithFloat:v13];
        v22 = *p_rampDuration;
        *p_rampDuration = v21;

        *&v23 = selfCopy->_cdSignalAudioTunings.latch1SignalTunables.signalDuckingLevel;
        v24 = [NSNumber numberWithFloat:v23];
        v25 = *p_duckLevel;
        *p_duckLevel = v24;

        v26 = 0;
        v27 = 1;
        v18 = 1;
        goto LABEL_45;
      }

      goto LABEL_36;
    }

    v18 = 0;
    v19 = 28;
    v20 = 24;
  }

  else
  {
    if (cdSignal == 3)
    {
      *&v13 = selfCopy->_cdSignalAudioTunings.unlatchSignalTunables.signalRampDurationSecs;
      v40 = [NSNumber numberWithFloat:v13];
      v41 = *p_rampDuration;
      *p_rampDuration = v40;

      *&v42 = selfCopy->_cdSignalAudioTunings.unlatchSignalTunables.signalDuckingLevel;
      v43 = [NSNumber numberWithFloat:v42];
      v44 = selfCopy->_unduckLevel;
      selfCopy->_unduckLevel = v43;

      v45 = selfCopy;
      objc_sync_enter(v45);
      selfCopy->_shouldQueueRamp = _os_feature_enabled_impl() ^ 1;
      objc_sync_exit(v45);

      goto LABEL_31;
    }

    if (cdSignal == 4)
    {
      *&v13 = selfCopy->_cdSignalAudioTunings.end1SignalTunables.signalRampDurationSecs;
      v36 = [NSNumber numberWithFloat:v13];
      v37 = *p_rampDuration;
      *p_rampDuration = v36;

      *&v17 = selfCopy->_cdSignalAudioTunings.end1SignalTunables.signalDuckingLevel;
LABEL_33:
      v48 = [NSNumber numberWithFloat:v17];
      v49 = selfCopy->_unduckLevel;
      selfCopy->_unduckLevel = v48;
LABEL_34:

      v27 = 0;
      v18 = 0;
      v26 = 0;
      goto LABEL_45;
    }

    v18 = 1;
    v19 = 44;
    v20 = 40;
  }

  LODWORD(v13) = *(&selfCopy->super.isa + v19);
  v28 = [NSNumber numberWithFloat:v13];
  v29 = *p_rampDuration;
  *p_rampDuration = v28;

  LODWORD(v30) = *(&selfCopy->super.isa + v20);
  v31 = [NSNumber numberWithFloat:v30];
  v32 = *p_duckLevel;
  *p_duckLevel = v31;

  if (!selfCopy->_audioSessionActivated)
  {
    if (selfCopy->_prefCDShouldDisableCustomDuckingCurve)
    {
      if (dword_1002F61A0 <= 30)
      {
        if (dword_1002F61A0 != -1 || (v33 = _LogCategory_Initialize(), v33))
        {
          sub_1001D416C(v33, v34, v35);
        }
      }
    }

    else
    {
      v50 = +[AVSystemController sharedInstance];
      [v50 getActiveCategoryVolume:&selfCopy->_currentVolume andName:0];

      if (dword_1002F61A0 <= 30 && (dword_1002F61A0 != -1 || _LogCategory_Initialize()))
      {
        sub_1001D4124(&selfCopy->_currentVolume);
      }

      *&v51 = selfCopy->_currentVolume;
      [(AAConversationDetectSessionManager *)selfCopy _calibrateDuckingLevelForVolumeLevel:v51];
    }
  }

  v27 = 1;
  v26 = 1;
LABEL_45:
  v52 = 0;
  currentSpeechDetectionStyle = selfCopy->_currentSpeechDetectionStyle;
  if (currentSpeechDetectionStyle < 2)
  {
    v54 = 0;
    goto LABEL_61;
  }

  if (currentSpeechDetectionStyle != 3)
  {
    if (currentSpeechDetectionStyle != 2)
    {
      if (dword_1002F61A0 <= 30)
      {
        if (dword_1002F61A0 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_83;
          }

          currentSpeechDetectionStyle = selfCopy->_currentSpeechDetectionStyle;
        }

        if (currentSpeechDetectionStyle > 6)
        {
          v55 = "?";
        }

        else
        {
          v55 = (&off_1002B70A0)[currentSpeechDetectionStyle];
        }

        LogPrintF(&dword_1002F61A0, "[AAConversationDetectSessionManager _cdSessionSignalUpdate]", 30, "AVAudioSessionSpeechDetectionStyle: %s, stop CD session", v55);
      }

LABEL_83:
      v59 = 0;
      goto LABEL_84;
    }

    if (v18)
    {
      v54 = selfCopy->_cdSignal == 5;
      v52 = 1;
      goto LABEL_57;
    }

    v52 = 0;
  }

  v54 = 1;
LABEL_57:
  if (v27 & v54)
  {
    if (selfCopy->_shouldQueueRamp)
    {
      [(AAConversationDetectSessionManager *)selfCopy _startQueuedRampForDuration:*p_rampDuration startLevel:v4 endLevel:selfCopy->_unduckLevel];
LABEL_60:
      v54 = 1;
      goto LABEL_62;
    }

    if (dword_1002F61A0 <= 30 && (dword_1002F61A0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D4188(&selfCopy->_cdSignal, p_duckLevel, &selfCopy->_unduckLevel, p_rampDuration);
    }

    v61 = +[AVAudioSession sharedInstance];
    v62 = *p_rampDuration;
    v68 = 0;
    [v61 setDuckingFadeOutDuration:v62 fadeInDuration:v62 error:&v68];
    v59 = v68;

    if (!v59)
    {
      v63 = +[AVAudioSession sharedInstance];
      v64 = *p_duckLevel;
      v65 = selfCopy->_unduckLevel;
      v67 = 0;
      [v63 setDuckToLevelScalar:v64 unduckToLevelScalar:v65 error:&v67];
      v59 = v67;

      if (!v59)
      {
        goto LABEL_60;
      }
    }

    if (dword_1002F61A0 <= 90 && (dword_1002F61A0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D41FC(v59);
    }

LABEL_84:
    [(AAConversationDetectSessionManager *)selfCopy _cdSessionEnsureDeactivated:0];
    goto LABEL_85;
  }

LABEL_61:
  if ((v27 & 1) == 0)
  {
    goto LABEL_83;
  }

LABEL_62:
  if (v26)
  {
    [(AAConversationDetectSessionManager *)selfCopy _cdSessionEnsureActivated:v54];
  }

  if (!v52)
  {
LABEL_69:
    v59 = 0;
    goto LABEL_85;
  }

  v56 = +[AVAudioSession sharedInstance];
  v57 = kMXSessionProperty_InterruptionStyle;
  v58 = [NSNumber numberWithInt:4];
  v66 = 0;
  [v56 setMXSessionProperty:v57 value:v58 error:&v66];
  v59 = v66;

  [(AAConversationDetectSessionManager *)selfCopy setCdSignalAudioInterrupted:1];
  if (dword_1002F61A0 <= 30 && (dword_1002F61A0 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D423C();
  }

  v60 = +[NSNotificationCenter defaultCenter];
  [v60 postNotificationName:@"CdSignalAudioInterruptedChanged" object:selfCopy];

LABEL_85:
}

- (void)_cdSessionEnsureActivated:(BOOL)activated
{
  if (self->_pauseConversationDetect)
  {
    if (dword_1002F61A0 <= 30)
    {
      if (dword_1002F61A0 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_1001D428C(self, a2, activated);
      }
    }
  }

  else
  {
    selfCopy = self;
    if (activated)
    {
      [(AAConversationDetectSessionManager *)self _audioSessionEnsureStarted];
    }

    [(AAConversationDetectSessionManager *)selfCopy _startPedestrianFenceSession];

    [(AAConversationDetectSessionManager *)selfCopy _startHeadGestureManager];
  }
}

- (void)_cdSessionEnsureDeactivated:(unsigned __int8)deactivated
{
  deactivatedCopy = deactivated;
  DeviceClass = GestaltGetDeviceClass();
  if (DeviceClass == 1)
  {
    if (self->_audioSessionActivated && (self->_cdSignal | 2) == 6 && !self->_prefCDSiriDidAnnounce && !self->_isSiriAnnouncePending)
    {
      if (dword_1002F61A0 <= 30)
      {
        v8 = "no";
        if (dword_1002F61A0 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_24;
          }

          if (self->_audioSessionActivated)
          {
            v10 = "yes";
          }

          else
          {
            v10 = "no";
          }

          if (self->_prefCDSiriDidAnnounce)
          {
            v9 = "yes";
          }

          else
          {
            v9 = "no";
          }

          if (self->_isSiriAnnouncePending)
          {
            v8 = "yes";
          }
        }

        else
        {
          v9 = "no";
          v10 = "yes";
        }

        LogPrintF(&dword_1002F61A0, "[AAConversationDetectSessionManager _cdSessionEnsureDeactivated:]", 30, "Attempting Siri announce: isAudioSessionActive: %s, didCASessionComplete: %s, prefCDSiriDidAnnounce: %s, isSiriAnnouncePending: %s", v10, "yes", v9, v8);
      }

LABEL_24:
      self->_isSiriAnnouncePending = 1;

      [(AAConversationDetectSessionManager *)self _requestSiriAnnounce];
      return;
    }
  }

  else if (dword_1002F61A0 <= 10)
  {
    if (dword_1002F61A0 != -1 || (DeviceClass = _LogCategory_Initialize(), DeviceClass))
    {
      sub_1001D42A8(DeviceClass, v6, v7);
    }
  }

  [(AAConversationDetectSessionManager *)self _audioSessionEnsureStopped];
  [(AAConversationDetectSessionManager *)self _stopPedestrianFenceSession];
  [(AAConversationDetectSessionManager *)self _stopHeadGestureManager];
  if (deactivatedCopy)
  {
    if (dword_1002F61A0 <= 30 && (dword_1002F61A0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D42C4(deactivatedCopy);
    }

    [(AAConversationDetectSessionManager *)self _updateAccessoriesWithResetState:?];
  }
}

- (void)_requestSiriAnnounce
{
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = sub_1000038E8;
  v37 = sub_100003820;
  v38 = 0;
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_100018BCC;
  v32[3] = &unk_1002B6ED8;
  v32[4] = self;
  v32[5] = &v33;
  v3 = objc_retainBlock(v32);
  v4 = [NSString stringWithFormat:@"/System/Library/UserNotifications/Bundles/%@.bundle", @"com.apple.BTUserNotifications"];
  v5 = [NSBundle bundleWithPath:v4];
  v6 = +[AFPreferences sharedPreferences];
  assistantIsEnabled = [v6 assistantIsEnabled];

  if (assistantIsEnabled)
  {
    v8 = +[AFPreferences sharedPreferences];
    outputVoice = [v8 outputVoice];
    languageCode = [outputVoice languageCode];

    if (dword_1002F61A0 <= 30 && (dword_1002F61A0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1002F61A0, "[AAConversationDetectSessionManager _requestSiriAnnounce]", 30, "using Siri Preferred language: %@", languageCode);
    }

    if (languageCode)
    {
      v12 = objc_alloc_init(UNMutableNotificationContent);
      [v12 setCategoryIdentifier:@"BTUserNotifications"];
      localizations = [v5 localizations];
      v39 = languageCode;
      v14 = [NSArray arrayWithObjects:&v39 count:1];
      v15 = [NSBundle preferredLocalizationsFromArray:localizations forPreferences:v14];

      if ([v15 count])
      {
        firstObject = [v15 firstObject];
        v17 = [v5 localizedStringForKey:@"CA_FIRST_TRIGGER_TITLE" value:0 table:0 localization:firstObject];
        [v12 setTitle:v17];

        firstObject2 = [v15 firstObject];
        v19 = [v5 localizedStringForKey:@"CA_FIRST_TRIGGER_SUBTITLE" value:0 table:0 localization:firstObject2];
        [v12 setSubtitle:v19];
      }

      title = [v12 title];
      if (!title || ([v12 subtitle], v21 = objc_claimAutoreleasedReturnValue(), v22 = v21 == 0, v21, title, v22))
      {
        v28 = NSErrorF(NSOSStatusErrorDomain, 4294960591, "announce notification content invalid");
        uUIDString = v34[5];
        v34[5] = v28;
      }

      else
      {
        v23 = +[NSUUID UUID];
        uUIDString = [v23 UUIDString];

        v30 = [UNNotificationRequest requestWithIdentifier:uUIDString content:v12 trigger:0];
        v25 = +[NSDate date];
        v26 = [UNNotification notificationWithRequest:v30 date:v25 sourceIdentifier:@"com.apple.BTUserNotifications" intentIdentifiers:&__NSArray0__struct];

        v27 = [[AFSiriUserNotificationRequest alloc] initWithUserNotification:v26 sourceAppId:@"com.apple.BTUserNotifications" platform:1];
        v31[0] = _NSConcreteStackBlock;
        v31[1] = 3221225472;
        v31[2] = sub_100018C94;
        v31[3] = &unk_1002B6F00;
        v31[4] = self;
        [v27 performRequestWithCompletion:v31];
      }
    }

    else
    {
      v29 = NSErrorF(NSOSStatusErrorDomain, 4294960591, "siri returned invalid language code");
      v12 = v34[5];
      v34[5] = v29;
    }
  }

  else
  {
    v11 = NSErrorF(NSOSStatusErrorDomain, 4294960591, "Assistant not enabled");
    languageCode = v34[5];
    v34[5] = v11;
  }

  (v3[2])(v3);
  _Block_object_dispose(&v33, 8);
}

- (void)_asyncAudioSessionDuckWithLevel:(id)level completion:(id)completion
{
  levelCopy = level;
  completionCopy = completion;
  chunkedRampingQueue = self->_chunkedRampingQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100018E1C;
  block[3] = &unk_1002B6BB0;
  block[4] = self;
  v12 = levelCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = levelCopy;
  dispatch_async(chunkedRampingQueue, block);
}

- (void)_audioSessionReset
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100019120;
  block[3] = &unk_1002B6880;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_deregisterFromAudioSessionResetNotifications
{
  if (self->_avAudioSessionResetNotificationRegistered)
  {
    v9 = v3;
    selfCopy = self;
    if (dword_1002F61A0 <= 30)
    {
      if (dword_1002F61A0 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_1001D43F4(self, a2, v2);
      }
    }

    v8 = [NSNotificationCenter defaultCenter:v4];
    [v8 removeObserver:selfCopy name:AVAudioSessionMediaServicesWereResetNotification object:0];

    selfCopy->_avAudioSessionResetNotificationRegistered = 0;
  }
}

- (void)_deregisterFromAVAudioSessionSpeechDetectionStyleChanges
{
  if (self->_cdStyleChangeNotificationRegistered)
  {
    v9 = v3;
    selfCopy = self;
    if (dword_1002F61A0 <= 30)
    {
      if (dword_1002F61A0 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_1001D4410(self, a2, v2);
      }
    }

    v8 = [AVAudioSession sharedInstance:v4];
    [v8 removeObserver:selfCopy forKeyPath:@"speechDetectionStyle"];

    selfCopy->_cdStyleChangeNotificationRegistered = 0;
  }
}

- (void)_startQueuedRampForDuration:(id)duration startLevel:(id)level endLevel:(id)endLevel
{
  durationCopy = duration;
  levelCopy = level;
  endLevelCopy = endLevel;
  v11 = endLevelCopy;
  if (levelCopy && endLevelCopy && ([levelCopy floatValue], v13 = v12, objc_msgSend(v11, "floatValue"), v13 < v14))
  {
    if (dword_1002F61A0 <= 30 && (dword_1002F61A0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1002F61A0, "[AAConversationDetectSessionManager _startQueuedRampForDuration:startLevel:endLevel:]", 30, "Queued Ramp: startLevel: %@, endLevel: %@, rampDuration: %@", levelCopy, v11, durationCopy);
    }

    [durationCopy floatValue];
    v16 = (v15 / self->_prefCDRampChunkDuration);
    v44 = 0;
    v45 = &v44;
    v46 = 0x2020000000;
    [v11 floatValue];
    v18 = v17;
    [levelCopy floatValue];
    v47 = (v18 - v19) / v16;
    v40 = 0;
    v41 = &v40;
    v42 = 0x2020000000;
    [levelCopy floatValue];
    v43 = v20 + v45[6];
    v21 = v41[6];
    [v11 floatValue];
    if (v21 > v22)
    {
      [v11 floatValue];
      *(v41 + 6) = v23;
    }

    if (dword_1002F61A0 <= 30 && (dword_1002F61A0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1002F61A0, "[AAConversationDetectSessionManager _startQueuedRampForDuration:startLevel:endLevel:]", 30, "Queued Ramp: number of ramps: %d, Delta duck Level: %f", v16, v45[6]);
    }

    v34 = 0;
    v35 = &v34;
    v36 = 0x3032000000;
    v37 = sub_100019654;
    v38 = sub_100019680;
    v39 = 0;
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_100019688;
    v28[3] = &unk_1002B6F28;
    v31 = &v40;
    v29 = v11;
    selfCopy = self;
    v32 = &v44;
    v33 = &v34;
    v24 = objc_retainBlock(v28);
    v25 = v35[5];
    v35[5] = v24;

    *&v26 = v41[6];
    v27 = [NSNumber numberWithFloat:v26];
    [(AAConversationDetectSessionManager *)self _asyncAudioSessionDuckWithLevel:v27 completion:v35[5]];

    _Block_object_dispose(&v34, 8);
    _Block_object_dispose(&v40, 8);
    _Block_object_dispose(&v44, 8);
  }

  else if (dword_1002F61A0 <= 30 && (dword_1002F61A0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1002F61A0, "[AAConversationDetectSessionManager _startQueuedRampForDuration:startLevel:endLevel:]", 30, "Queued Ramp: only supported during an unduck, startLevel: %@, endLevel: %@", levelCopy, v11);
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  changeCopy = change;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100019894;
  block[3] = &unk_1002B6CF0;
  v14 = pathCopy;
  v15 = changeCopy;
  selfCopy = self;
  v11 = changeCopy;
  v12 = pathCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)_registerForAudioSessionResetNotifications
{
  if (!self->_avAudioSessionResetNotificationRegistered)
  {
    selfCopy = self;
    if (dword_1002F61A0 <= 30)
    {
      if (dword_1002F61A0 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_1001D4480(self, a2, v2);
      }
    }

    v4 = +[NSNotificationCenter defaultCenter];
    v5 = +[AVAudioSession sharedInstance];
    [v4 addObserver:selfCopy selector:"_audioSessionReset" name:AVAudioSessionMediaServicesWereResetNotification object:v5];

    selfCopy->_avAudioSessionResetNotificationRegistered = 1;
  }
}

- (void)_registerForAVAudioSessionSpeechDetectionStyleChanges
{
  v3 = +[AVAudioSession sharedInstance];
  v7 = 0;
  [v3 setCategory:AVAudioSessionCategorySpeechDetection withOptions:2 error:&v7];
  v4 = v7;

  if (v4 && dword_1002F61A0 <= 90 && (dword_1002F61A0 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D449C(v4);
  }

  if (!self->_cdStyleChangeNotificationRegistered)
  {
    if (dword_1002F61A0 <= 30 && (dword_1002F61A0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D44DC();
    }

    v5 = +[AVAudioSession sharedInstance];
    [v5 addObserver:self forKeyPath:@"speechDetectionStyle" options:5 context:0];

    self->_cdStyleChangeNotificationRegistered = 1;
  }

  v6 = +[AVAudioSession sharedInstance];
  self->_currentSpeechDetectionStyle = [v6 speechDetectionStyle];

  if (dword_1002F61A0 <= 30 && (dword_1002F61A0 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D4510(&self->_currentSpeechDetectionStyle);
  }

  if (self->_currentSpeechDetectionStyle == 4)
  {
    self->_currentPauseReason = 2;
  }

  [(AAConversationDetectSessionManager *)self _updatePauseState];
}

- (void)_speechDetectionStyleChanged:(unint64_t)changed
{
  if (changed - 5 <= 1)
  {

    [(AAConversationDetectSessionManager *)self _speechDetectionUserVolumeChanged:?];
    return;
  }

  currentSpeechDetectionStyle = self->_currentSpeechDetectionStyle;
  if (currentSpeechDetectionStyle == changed)
  {
    return;
  }

  if (dword_1002F61A0 <= 30)
  {
    v6 = self->_currentSpeechDetectionStyle;
    if (dword_1002F61A0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_18;
      }

      v6 = self->_currentSpeechDetectionStyle;
    }

    if (v6 > 6)
    {
      v7 = "?";
    }

    else
    {
      v7 = (&off_1002B70A0)[v6];
    }

    if (changed > 4)
    {
      v8 = "?";
    }

    else
    {
      v8 = (&off_1002B7078)[changed];
    }

    LogPrintF(&dword_1002F61A0, "[AAConversationDetectSessionManager _speechDetectionStyleChanged:]", 30, "AVAudioSessionSpeechDetectionStyle changed from %s -> %s", v7, v8);
  }

LABEL_18:
  self->_currentSpeechDetectionStyle = changed;
  cdSignalAudioInterrupted = [(AAConversationDetectSessionManager *)self cdSignalAudioInterrupted];
  v12 = self->_currentSpeechDetectionStyle;
  if (cdSignalAudioInterrupted && v12 == 1)
  {
    if (dword_1002F61A0 <= 30)
    {
      if (dword_1002F61A0 != -1 || (cdSignalAudioInterrupted = _LogCategory_Initialize(), cdSignalAudioInterrupted))
      {
        sub_1001D45AC(cdSignalAudioInterrupted, v10, v11);
      }
    }

    return;
  }

  if (currentSpeechDetectionStyle == 1 && (v12 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    if (self->_cdSignal == 11)
    {
      if (dword_1002F61A0 <= 30)
      {
        if (dword_1002F61A0 != -1 || (cdSignalAudioInterrupted = _LogCategory_Initialize(), cdSignalAudioInterrupted))
        {
          sub_1001D4590(cdSignalAudioInterrupted, v10, v11);
        }
      }

      goto LABEL_37;
    }

    if (dword_1002F61A0 <= 30)
    {
      if (dword_1002F61A0 != -1 || (cdSignalAudioInterrupted = _LogCategory_Initialize(), cdSignalAudioInterrupted))
      {
        sub_1001D4574(cdSignalAudioInterrupted, v10, v11);
      }
    }

    selfCopy2 = self;
    v14 = 1;
  }

  else
  {
    selfCopy2 = self;
    v14 = 0;
  }

  [(AAConversationDetectSessionManager *)selfCopy2 _cdSessionEnsureDeactivated:v14];
LABEL_37:
  if (self->_currentSpeechDetectionStyle == 4)
  {
    self->_currentPauseReason = 2;
  }

  [(AAConversationDetectSessionManager *)self _updatePauseState];
}

- (void)_speechDetectionUserVolumeChanged:(unint64_t)changed
{
  if (dword_1002F61A0 <= 30 && (dword_1002F61A0 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D45C8(changed);
  }

  if (changed == 5 && self->_audioSessionActivated && !self->_cdSignalAudioInterrupted)
  {

    [(AAConversationDetectSessionManager *)self _cdSessionEnsureDeactivated:2];
  }
}

- (void)_deviceFound:(id)found
{
  foundCopy = found;
  identifier = [foundCopy identifier];
  if (identifier)
  {
    if ([foundCopy conversationDetectCapability] == 1)
    {
      v5 = [(NSMutableDictionary *)self->_cdSupportedAccessories objectForKeyedSubscript:identifier];
      cdSupportedAccessories = self->_cdSupportedAccessories;
      if (!cdSupportedAccessories)
      {
        v7 = objc_alloc_init(NSMutableDictionary);
        v8 = self->_cdSupportedAccessories;
        self->_cdSupportedAccessories = v7;

        cdSupportedAccessories = self->_cdSupportedAccessories;
      }

      if (![(NSMutableDictionary *)cdSupportedAccessories count])
      {
        [(AAConversationDetectSessionManager *)self _activateCDSession];
      }

      [(NSMutableDictionary *)self->_cdSupportedAccessories setObject:foundCopy forKeyedSubscript:identifier];
      if (v5)
      {
        if (dword_1002F61A0 <= 10 && (dword_1002F61A0 != -1 || _LogCategory_Initialize()))
        {
          sub_1001D46A4(foundCopy);
        }
      }

      else
      {
        if (dword_1002F61A0 <= 30 && (dword_1002F61A0 != -1 || _LogCategory_Initialize()))
        {
          sub_1001D46E4(foundCopy);
        }

        [(AAConversationDetectSessionManager *)self _updatePauseState];
      }
    }

    else
    {
      sub_1001D4628(foundCopy);
    }
  }

  else
  {
    sub_1001D4724(foundCopy);
  }
}

- (void)_deviceLost:(id)lost
{
  lostCopy = lost;
  identifier = [lostCopy identifier];
  if (identifier)
  {
    v5 = [(NSMutableDictionary *)self->_cdSupportedAccessories objectForKeyedSubscript:identifier];
    if (v5)
    {
      [(NSMutableDictionary *)self->_cdSupportedAccessories setObject:0 forKeyedSubscript:identifier];
      if (dword_1002F61A0 <= 30 && (dword_1002F61A0 != -1 || _LogCategory_Initialize()))
      {
        sub_1001D47A0(lostCopy);
      }

      if (![(NSMutableDictionary *)self->_cdSupportedAccessories count])
      {
        [(AAConversationDetectSessionManager *)self _invalidateCDSession];
      }
    }
  }

  else
  {
    sub_1001D47E0(lostCopy);
  }
}

- (void)_setPedestrianFenceWithHandler:(id)handler
{
  handlerCopy = handler;
  v5 = handlerCopy;
  pedestrianFenceManager = self->_pedestrianFenceManager;
  if (pedestrianFenceManager)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10001A14C;
    v9[3] = &unk_1002B6F50;
    v9[4] = pedestrianFenceManager;
    v9[5] = self;
    v10 = handlerCopy;
    v7 = pedestrianFenceManager;
    LODWORD(v8) = 4.0;
    [(CMPedestrianFenceManager *)v7 setFence:@"com.apple.audioaccessoryd.cdFence" withRadius:v9 withCompletion:v8];
  }
}

- (void)_startPedestrianFenceSession
{
  DeviceClass = +[CMPedestrianFenceManager isAvailable];
  if ((DeviceClass & 1) == 0)
  {
    if (dword_1002F61A0 > 10)
    {
      return;
    }

    if (dword_1002F61A0 == -1)
    {
      DeviceClass = _LogCategory_Initialize();
      if (!DeviceClass)
      {
        return;
      }
    }

LABEL_11:
    sub_1001D48A0(DeviceClass, v4, v5);
    return;
  }

  DeviceClass = GestaltGetDeviceClass();
  if (DeviceClass != 1)
  {
    if (dword_1002F61A0 > 10)
    {
      return;
    }

    if (dword_1002F61A0 == -1)
    {
      DeviceClass = _LogCategory_Initialize();
      if (!DeviceClass)
      {
        return;
      }
    }

    goto LABEL_11;
  }

  if (self->_pedestrianFenceManager)
  {
    if (dword_1002F61A0 <= 10)
    {
      if (dword_1002F61A0 != -1 || (DeviceClass = _LogCategory_Initialize(), DeviceClass))
      {
        sub_1001D48BC(DeviceClass, v4, v5);
      }
    }
  }

  else
  {
    v6 = objc_alloc_init(CMPedestrianFenceManager);
    pedestrianFenceManager = self->_pedestrianFenceManager;
    self->_pedestrianFenceManager = v6;

    [(CMPedestrianFenceManager *)self->_pedestrianFenceManager startSession];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10001A3B8;
    v9[3] = &unk_1002B6F78;
    v9[4] = self;
    v8 = objc_retainBlock(v9);
    if (dword_1002F61A0 <= 30 && (dword_1002F61A0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D48D8();
    }

    [(AAConversationDetectSessionManager *)self _setPedestrianFenceWithHandler:v8];
  }
}

- (void)_stopPedestrianFenceSession
{
  if (self->_pedestrianFenceManager)
  {
    selfCopy = self;
    if (dword_1002F61A0 <= 30)
    {
      if (dword_1002F61A0 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_1001D49A8(self, a2, v2);
      }
    }

    [(CMPedestrianFenceManager *)selfCopy->_pedestrianFenceManager clearFence:@"com.apple.audioaccessoryd.cdFence"];
    [(CMPedestrianFenceManager *)selfCopy->_pedestrianFenceManager endSession];
    pedestrianFenceManager = selfCopy->_pedestrianFenceManager;
    selfCopy->_pedestrianFenceManager = 0;
  }
}

- (void)_startHeadGestureManager
{
  v3 = _os_feature_enabled_impl();
  if (v3)
  {
    if (self->_headGestureManager)
    {
      if (dword_1002F61A0 <= 10)
      {
        if (dword_1002F61A0 != -1 || (v3 = _LogCategory_Initialize(), v3))
        {
          sub_1001D49C4(v3, v4, v5);
        }
      }
    }

    else
    {
      v15 = objc_alloc_init(HGConfiguration);
      v6 = objc_alloc_init(HGAudioFeedbackConfiguration);
      [v15 setAudioFeedbackConfig:v6];

      v7 = +[AVAudioSession sharedInstance];
      opaqueSessionID = [v7 opaqueSessionID];
      audioFeedbackConfig = [v15 audioFeedbackConfig];
      [audioFeedbackConfig setAudioSessionID:opaqueSessionID];

      v10 = [[HGManager alloc] initWithDelegate:self config:v15];
      headGestureManager = self->_headGestureManager;
      self->_headGestureManager = v10;

      if (dword_1002F61A0 <= 30)
      {
        if (dword_1002F61A0 != -1 || (v12 = _LogCategory_Initialize(), v12))
        {
          sub_1001D49E0(v12, v13, v14);
        }
      }

      [(HGManager *)self->_headGestureManager start];
    }
  }
}

- (void)_stopHeadGestureManager
{
  if (self->_headGestureManager)
  {
    selfCopy = self;
    if (dword_1002F61A0 <= 30)
    {
      if (dword_1002F61A0 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_1001D49FC(self, a2, v2);
      }
    }

    [(HGManager *)selfCopy->_headGestureManager stop];
    headGestureManager = selfCopy->_headGestureManager;
    selfCopy->_headGestureManager = 0;
  }
}

- (void)didDetectedWithHeadGesture:(id)gesture
{
  gestureCopy = gesture;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001A7B0;
  v7[3] = &unk_1002B6D18;
  v8 = gestureCopy;
  selfCopy = self;
  v6 = gestureCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)didStartStreamingWithIsStreaming:(BOOL)streaming
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001A8AC;
  block[3] = &unk_1002B6F98;
  streamingCopy = streaming;
  dispatch_async(dispatchQueue, block);
}

- (void)_registerForWirelessSplitterStateChanges
{
  p_splitterStateOnToken = &self->_splitterStateOnToken;
  if (self->_splitterStateOnToken == -1)
  {
    selfCopy = self;
    if (dword_1002F61A0 <= 30)
    {
      if (dword_1002F61A0 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_1001D4B0C(self, a2, v2);
      }
    }

    dispatchQueue = selfCopy->_dispatchQueue;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10001A9D4;
    handler[3] = &unk_1002B6DF0;
    handler[4] = selfCopy;
    notify_register_dispatch("com.apple.bluetooth.WirelessSplitterOn", p_splitterStateOnToken, dispatchQueue, handler);
  }
}

- (void)_deregisterFromWirelessSplitterStateChanges
{
  splitterStateOnToken = self->_splitterStateOnToken;
  if (splitterStateOnToken != -1)
  {
    if (dword_1002F61A0 > 30)
    {
      goto LABEL_6;
    }

    if (dword_1002F61A0 != -1 || (splitterStateOnToken = _LogCategory_Initialize(), splitterStateOnToken))
    {
      sub_1001D4B84(splitterStateOnToken, a2, v2);
    }

    LODWORD(splitterStateOnToken) = self->_splitterStateOnToken;
    if (splitterStateOnToken != -1)
    {
LABEL_6:
      notify_cancel(splitterStateOnToken);
      self->_splitterStateOnToken = -1;
    }
  }

  self->_isWirelessSplitterOn = 0;

  [(AAConversationDetectSessionManager *)self _updatePauseState];
}

@end