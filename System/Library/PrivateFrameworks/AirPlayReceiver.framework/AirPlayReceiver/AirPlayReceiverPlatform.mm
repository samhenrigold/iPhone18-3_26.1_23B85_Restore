@interface AirPlayReceiverPlatform
+ (void)_setMediaAVAudioSessionActiveSync:(unsigned __int8)sync;
- (int)_updateVolume:(float)volume andMute:(unsigned __int8)mute becauseVolumeChanged:(unsigned __int8)changed;
- (void)_avSystemControllerActiveAudioRouteChanged:(id)changed;
- (void)_avSystemControllerConnectionDied:(id)died;
- (void)_avSystemControllerMuteChanged:(id)changed;
- (void)_avSystemControllerVolumeChanged:(id)changed;
- (void)_avSystemControllerVolumeConfigChanged:(id)changed;
- (void)_fetchInitialStates;
- (void)_handleAVAudioSessionInterruption:(id)interruption;
- (void)_handleAVAudioSessionServicesLost:(id)lost;
- (void)_handleAVAudioSessionServicesReset:(id)reset;
- (void)_handleNowPlayingAppStartedPlaying:(id)playing;
- (void)_handleVolumeControlTypeChange;
- (void)_registerAVSystemControllerNotifications;
- (void)_setMediaAVAudioSessionActive:(unsigned __int8)active;
- (void)_startNowPlayingSessionAsync:(OpaqueAPReceiverRequestProcessor *)async;
- (void)_unregisterAVSystemControllerNotifications;
- (void)_updateMediaSessionActivationStateBasedOnMediaAudioActiveState:(unsigned __int8)state andVideoActiveState:(unsigned __int8)activeState;
- (void)handleMRCommand:(unsigned int)command translatedAPCommand:(unsigned int)pCommand withOptions:(__CFDictionary *)options;
- (void)setIsAmbientAudioActive:(unsigned __int8)active;
- (void)setIsMediaAudioActive:(unsigned __int8)active;
- (void)setIsScreenActive:(unsigned __int8)active;
- (void)setIsVideoActive:(unsigned __int8)active;
- (void)setMainMediaReceiverSession:(OpaqueAPReceiverRequestProcessor *)session;
- (void)setReceiverSessionCountAndUpdateStateIfNeeded:(unint64_t)needed;
- (void)setShouldHandleMRCommands:(unsigned __int8)commands;
- (void)updateActiveSessionRegistration:(AirPlayReceiverSessionPrivate *)registration regType:(int)type regOp:(int)op;
- (void)updateMRNowPlayingAppStateForSinglePrimary;
@end

@implementation AirPlayReceiverPlatform

- (void)_updateMediaSessionActivationStateBasedOnMediaAudioActiveState:(unsigned __int8)state andVideoActiveState:(unsigned __int8)activeState
{
  if (self->_state.isMediaAudioActive)
  {
    v5 = 1;
  }

  else
  {
    v5 = self->_state.isVideoActive != 0;
  }

  v6 = (activeState | state) != 0;
  if (v5 != v6)
  {
    if (gLogCategory_AirPlayReceiverPlatform <= 50 && (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize()))
    {
      if (self->_server->var41)
      {
        v7 = "yes";
      }

      else
      {
        v7 = "no";
      }

      LogPrintF(&gLogCategory_AirPlayReceiverPlatform, "[AirPlayReceiverPlatform _updateMediaSessionActivationStateBasedOnMediaAudioActiveState:andVideoActiveState:]", 33554482, "isAnyMediaActive %d -> %d (audioMixing: %s)\n", v5, v6, v7);
    }

    if (!self->_server->var41)
    {

      [(AirPlayReceiverPlatform *)self _setMediaAVAudioSessionActive:v6];
    }
  }
}

- (void)_handleAVAudioSessionServicesLost:(id)lost
{
  if (gLogCategory_AirPlayReceiverPlatform <= 60 && (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_AirPlayReceiverPlatform, "[AirPlayReceiverPlatform _handleAVAudioSessionServicesLost:]", 33554492, "### AudioSession lost - platform level\n");
  }

  server = self->_server;

  AirPlayReceiverServerControl(server, 0, @"partnerProcessDeath", @"MediaServices", 0, 0);
}

- (void)_handleAVAudioSessionServicesReset:(id)reset
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  if (gLogCategory_AirPlayReceiverPlatform <= 60 && (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_AirPlayReceiverPlatform, "[AirPlayReceiverPlatform _handleAVAudioSessionServicesReset:]", 33554492, "### AudioSession reset - platform level\n");
  }

  AirPlayReceiverServerControl(self->_server, 0, @"partnerProcessDeath", @"MediaServices", 0, 0);
  [+[APAVAudioSessionManager mediaSessionManager](APAVAudioSessionManager resetSession];
  [+[APAVAudioSessionManager mediaSessionManager](APAVAudioSessionManager setUpSessionWithIsMixable:"setUpSessionWithIsMixable:", self->_server->var41 != 0];
  v5 = *MEMORY[0x277CB8068];
  [defaultCenter removeObserver:self name:*MEMORY[0x277CB8068] object:{-[APAVAudioSessionManager session](+[APAVAudioSessionManager ambientSessionManager](APAVAudioSessionManager, "ambientSessionManager"), "session")}];
  [+[APAVAudioSessionManager ambientSessionManager](APAVAudioSessionManager resetSession];
  [+[APAVAudioSessionManager ambientSessionManager](APAVAudioSessionManager setUpSessionWithIsMixable:"setUpSessionWithIsMixable:", 1];
  session = [+[APAVAudioSessionManager ambientSessionManager](APAVAudioSessionManager session];

  [defaultCenter addObserver:self selector:sel__handleAVAudioSessionInterruption_ name:v5 object:session];
}

- (void)_handleAVAudioSessionInterruption:(id)interruption
{
  keys[1] = *MEMORY[0x277D85DE8];
  userInfo = [interruption userInfo];
  v6 = [objc_msgSend(userInfo objectForKeyedSubscript:{*MEMORY[0x277CB8080]), "unsignedIntegerValue"}];
  userInfo2 = [interruption userInfo];
  v8 = [objc_msgSend(userInfo2 objectForKeyedSubscript:{*MEMORY[0x277CB8070]), "unsignedIntegerValue"}];
  if (v6 == 1)
  {
    v9 = 0;
    v10 = @"audioInterruptionBegan";
    goto LABEL_5;
  }

  if (!v6)
  {
    v9 = 0;
    v10 = @"audioInterruptionEnded";
LABEL_5:
    v11 = v10;
    goto LABEL_7;
  }

  v11 = 0;
  v9 = 1;
  v10 = @"UnknownEvent";
LABEL_7:
  if ([objc_msgSend(interruption "object")])
  {
    v12 = 0;
    v13 = @"Media";
LABEL_11:
    v14 = v13;
    goto LABEL_13;
  }

  if ([objc_msgSend(interruption "object")])
  {
    v12 = 0;
    v13 = @"Ambient";
    goto LABEL_11;
  }

  v14 = 0;
  v12 = 1;
  v13 = @"UnknownInterruptee";
LABEL_13:
  if (v6)
  {
    v15 = 1;
  }

  else
  {
    v15 = (v8 & 1) == 0;
  }

  if (v15)
  {
    v16 = 0;
  }

  else
  {
    values = *MEMORY[0x277CBED28];
    keys[0] = @"canResume";
    v16 = CFDictionaryCreate(*MEMORY[0x277CBECE8], keys, &values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  }

  if (gLogCategory_AirPlayReceiverPlatform <= 50 && (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_AirPlayReceiverPlatform, "[AirPlayReceiverPlatform _handleAVAudioSessionInterruption:]", 33554482, "Audio Interruption: %@-%@\n", v13, v10);
  }

  if (v9 || v12)
  {
    APSLogErrorAt();
    if (!v16)
    {
      return;
    }
  }

  else
  {
    AirPlayReceiverServerControl(self->_server, 0, v11, v14, v16, 0);
    if (!v16)
    {
      return;
    }
  }

  CFRelease(v16);
}

- (void)updateMRNowPlayingAppStateForSinglePrimary
{
  if (!APSMultiPrimariesEnabled())
  {
    if (self->_state.receiverSessionCount)
    {
      if (IsAppleTV() && self->_state.isScreenActive)
      {
        value = 0;
        APReceiverSessionManagerCopyAirPlaySessionWithAttribute(self->_server->var34, 2, 0, &value);
        if (value)
        {
          v3 = APSIsMemberOfHTGroup();
          v4 = value;
          if (!v3 || *(value + 124) == 2)
          {
            v5 = CFSetContainsValue(self->_state.mediaAudioSessions, value) != 0;
            v6 = 1;
            goto LABEL_17;
          }

          if (gLogCategory_AirPlayReceiverPlatform <= 50)
          {
            if (gLogCategory_AirPlayReceiverPlatform == -1)
            {
              if (!_LogCategory_Initialize())
              {
                goto LABEL_16;
              }

              v4 = value;
            }

            LogPrintF(&gLogCategory_AirPlayReceiverPlatform, "[AirPlayReceiverPlatform updateMRNowPlayingAppStateForSinglePrimary]", 33554482, "Not becoming now playing app because screen session [%{ptr}] sender is HT-unaware.\n", v4);
          }

LABEL_16:
          v6 = 0;
          v5 = 0;
LABEL_17:
          if (value)
          {
            CFRelease(value);
          }

          goto LABEL_19;
        }

        v5 = 1;
        v6 = 1;
      }

      else
      {
        v6 = 1;
        v5 = 1;
      }
    }

    else
    {
      v6 = 0;
      v5 = 0;
    }

LABEL_19:
    if (self->_state.nowPlaying.singlePrimary.isAirPlayReceiverMRNowPlayingApp != v6)
    {
      v7 = gLogCategory_AirPlayReceiverPlatform;
      if (!(self->_useMediaRemotePerPlayerAPI | v6))
      {
        if (gLogCategory_AirPlayReceiverPlatform <= 50 && (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_AirPlayReceiverPlatform, "[AirPlayReceiverPlatform updateMRNowPlayingAppStateForSinglePrimary]", 33554482, "Setting MR playback state to Stopped when retiring from now playing app role\n");
        }

        [(AirPlayReceiverMediaRemoteHelper *)self->_mediaRemoteHelper setMRPlaybackState:3];
        v7 = gLogCategory_AirPlayReceiverPlatform;
      }

      if (v7 <= 50 && (v7 != -1 || _LogCategory_Initialize()))
      {
        v8 = "yes";
        if (!v6)
        {
          v8 = "no";
        }

        LogPrintF(&gLogCategory_AirPlayReceiverPlatform, "[AirPlayReceiverPlatform updateMRNowPlayingAppStateForSinglePrimary]", 33554482, "Set isAirPlayReceiverMRNowPlayingApp to %s\n", v8);
      }

      [(AirPlayReceiverMediaRemoteHelper *)self->_mediaRemoteHelper setIsNowPlaying:v6];
      self->_state.nowPlaying.singlePrimary.isAirPlayReceiverMRNowPlayingApp = v6;
      if (v6 && !self->_useMediaRemotePerPlayerAPI && self->_server->var44)
      {
        [(AirPlayReceiverMediaRemoteHelper *)self->_mediaRemoteHelper broadcastPauseCommand];
      }
    }

    if (!self->_useMediaRemotePerPlayerAPI)
    {
      [(AirPlayReceiverPlatform *)self setShouldHandleMRCommands:v5];
    }

    return;
  }

  APSLogErrorAt();
  if (gLogCategory_AirPlayReceiverPlatform <= 90 && (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize()))
  {

    LogPrintF(&gLogCategory_AirPlayReceiverPlatform, "[AirPlayReceiverPlatform updateMRNowPlayingAppStateForSinglePrimary]", 33554522, "updateMRNowPlayingAppStateForSinglePrimary should only be called on a single-primary device");
  }
}

- (void)setShouldHandleMRCommands:(unsigned __int8)commands
{
  commandsCopy = commands;
  if (self->_state.isHandlingMRCommands != commands && !self->_useMediaRemotePerPlayerAPI)
  {
    if (gLogCategory_AirPlayReceiverPlatform <= 50 && (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize()))
    {
      v5 = "in to";
      if (!commandsCopy)
      {
        v5 = "out of";
      }

      LogPrintF(&gLogCategory_AirPlayReceiverPlatform, "[AirPlayReceiverPlatform setShouldHandleMRCommands:]", 33554482, "Opt %s MR command handling.\n", v5);
    }

    if (commandsCopy)
    {
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }

    [(AirPlayReceiverMediaRemoteHelper *)self->_mediaRemoteHelper setDelegate:selfCopy];
  }

  self->_state.isHandlingMRCommands = commandsCopy;
}

- (void)setIsScreenActive:(unsigned __int8)active
{
  isScreenActive = self->_state.isScreenActive;
  if (isScreenActive == active)
  {
    return;
  }

  activeCopy = active;
  if (gLogCategory_AirPlayReceiverPlatform <= 50)
  {
    if (gLogCategory_AirPlayReceiverPlatform != -1)
    {
LABEL_4:
      LogPrintF(&gLogCategory_AirPlayReceiverPlatform, "[AirPlayReceiverPlatform setIsScreenActive:]", 33554482, "isScreenActive %d -> %d\n", isScreenActive, activeCopy);
      goto LABEL_6;
    }

    if (_LogCategory_Initialize())
    {
      isScreenActive = self->_state.isScreenActive;
      goto LABEL_4;
    }
  }

LABEL_6:
  self->_state.isScreenActive = activeCopy;
  if (!APSMultiPrimariesEnabled())
  {

    [(AirPlayReceiverPlatform *)self updateMRNowPlayingAppStateForSinglePrimary];
  }
}

- (void)setIsVideoActive:(unsigned __int8)active
{
  isVideoActive = self->_state.isVideoActive;
  if (isVideoActive == active)
  {
    return;
  }

  activeCopy = active;
  if (gLogCategory_AirPlayReceiverPlatform <= 50)
  {
    if (gLogCategory_AirPlayReceiverPlatform == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_6;
      }

      isVideoActive = self->_state.isVideoActive;
    }

    LogPrintF(&gLogCategory_AirPlayReceiverPlatform, "[AirPlayReceiverPlatform setIsVideoActive:]", 33554482, "isVideoActive %d -> %d\n", isVideoActive, activeCopy);
  }

LABEL_6:
  if (activeCopy)
  {
    APSEnsureCanInitiatePlayback();
  }

  [(AirPlayReceiverPlatform *)self _updateMediaSessionActivationStateBasedOnMediaAudioActiveState:self->_state.isMediaAudioActive andVideoActiveState:activeCopy];
  self->_state.isVideoActive = activeCopy;
}

- (void)setIsMediaAudioActive:(unsigned __int8)active
{
  isMediaAudioActive = self->_state.isMediaAudioActive;
  if (isMediaAudioActive == active)
  {
    return;
  }

  activeCopy = active;
  if (gLogCategory_AirPlayReceiverPlatform <= 50)
  {
    if (gLogCategory_AirPlayReceiverPlatform != -1)
    {
LABEL_4:
      LogPrintF(&gLogCategory_AirPlayReceiverPlatform, "[AirPlayReceiverPlatform setIsMediaAudioActive:]", 33554482, "isMediaAudioActive %d -> %d\n", isMediaAudioActive, activeCopy);
      goto LABEL_6;
    }

    if (_LogCategory_Initialize())
    {
      isMediaAudioActive = self->_state.isMediaAudioActive;
      goto LABEL_4;
    }
  }

LABEL_6:
  [(AirPlayReceiverPlatform *)self _updateMediaSessionActivationStateBasedOnMediaAudioActiveState:activeCopy andVideoActiveState:self->_state.isVideoActive];
  self->_state.isMediaAudioActive = activeCopy;
  if (!APSMultiPrimariesEnabled())
  {

    [(AirPlayReceiverPlatform *)self updateMRNowPlayingAppStateForSinglePrimary];
  }
}

- (void)setIsAmbientAudioActive:(unsigned __int8)active
{
  isAmbientAudioActive = self->_state.isAmbientAudioActive;
  if (isAmbientAudioActive == active)
  {
    return;
  }

  v9[5] = v3;
  v9[6] = v4;
  activeCopy = active;
  if (gLogCategory_AirPlayReceiverPlatform <= 50)
  {
    if (gLogCategory_AirPlayReceiverPlatform == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_6;
      }

      isAmbientAudioActive = self->_state.isAmbientAudioActive;
    }

    LogPrintF(&gLogCategory_AirPlayReceiverPlatform, "[AirPlayReceiverPlatform setIsAmbientAudioActive:]", 33554482, "isAmbientAudioActive %d -> %d\n", isAmbientAudioActive, activeCopy);
  }

LABEL_6:
  v9[0] = 0;
  if ([+[APAVAudioSessionManager setActive:"setActive:error:"]
  {
    if (gLogCategory_AirPlayReceiverPlatform <= 50 && (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_AirPlayReceiverPlatform, "[AirPlayReceiverPlatform setIsAmbientAudioActive:]", 33554482, "Set ambient AVAudioSession to [%s]\n");
    }
  }

  else if (gLogCategory_AirPlayReceiverPlatform <= 90 && (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize()))
  {
    v8 = "ACTIVE";
    if (!activeCopy)
    {
      v8 = "INACTIVE";
    }

    LogPrintF(&gLogCategory_AirPlayReceiverPlatform, "[AirPlayReceiverPlatform setIsAmbientAudioActive:]", 33554522, "### Setting ambient AVAudioSession to [%s] failed with error %@\n", v8, v9[0]);
  }

  _NotifyIsPlayingAmbientAudio(activeCopy);
  self->_state.isAmbientAudioActive = activeCopy;
}

- (void)setMainMediaReceiverSession:(OpaqueAPReceiverRequestProcessor *)session
{
  if (!APSMultiPrimariesEnabled())
  {
    APSLogErrorAt();
    if (gLogCategory_AirPlayReceiverPlatform <= 90 && (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_AirPlayReceiverPlatform, "[AirPlayReceiverPlatform setMainMediaReceiverSession:]", 33554522, "setMainMediaReceiverSession should only be called on a multi-primaries device");
    }

    goto LABEL_36;
  }

  p_mainMediaReceiverSession = &self->_state.nowPlaying.multiPrimaries.mainMediaReceiverSession;
  mainMediaReceiverSession = self->_state.nowPlaying.multiPrimaries.mainMediaReceiverSession;
  if (mainMediaReceiverSession == session)
  {
    goto LABEL_36;
  }

  if (gLogCategory_AirPlayReceiverPlatform <= 50)
  {
    if (gLogCategory_AirPlayReceiverPlatform != -1)
    {
LABEL_5:
      LogPrintF(&gLogCategory_AirPlayReceiverPlatform, "[AirPlayReceiverPlatform setMainMediaReceiverSession:]", 33554482, "Main media receiver session changing: [%{ptr}] -> [%{ptr}]", mainMediaReceiverSession, session);
      goto LABEL_7;
    }

    if (_LogCategory_Initialize())
    {
      mainMediaReceiverSession = *p_mainMediaReceiverSession;
      goto LABEL_5;
    }
  }

LABEL_7:
  if (!self->_useMediaRemotePerPlayerAPI)
  {
    if (*p_mainMediaReceiverSession && self->_state.nowPlaying.singlePrimary.isAirPlayReceiverMRNowPlayingApp)
    {
      [(AirPlayReceiverMediaRemoteHelper *)self->_mediaRemoteHelper stopNowPlayingSession];
      [(AirPlayReceiverPlatform *)self setShouldHandleMRCommands:0];
      self->_state.nowPlaying.singlePrimary.isAirPlayReceiverMRNowPlayingApp = 0;
    }

    if (!session)
    {
      v7 = *p_mainMediaReceiverSession;
      goto LABEL_27;
    }

    if (!self->_state.nowPlaying.singlePrimary.isAirPlayReceiverMRNowPlayingApp)
    {
      self->_state.nowPlaying.singlePrimary.isAirPlayReceiverMRNowPlayingApp = 1;
      if (APSIsWHAParallelSetupProcessingEnabled())
      {
        [(AirPlayReceiverPlatform *)self _startNowPlayingSessionAsync:session];
      }

      else
      {
        if (gLogCategory_AirPlayReceiverPlatform <= 50 && (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_AirPlayReceiverPlatform, "[AirPlayReceiverPlatform setMainMediaReceiverSession:]", 33554482, "Starting NowPlayingSession synchronously");
        }

        mach_absolute_time();
        mach_absolute_time();
        UpTicksToMilliseconds();
        Int64 = CFNumberCreateInt64();
        v9 = *(*(CMBaseObjectGetVTable() + 16) + 72);
        if (v9)
        {
          v9(session, @"nowPlayingSessionStartDurationMs", Int64);
        }

        [(AirPlayReceiverMediaRemoteHelper *)self->_mediaRemoteHelper startNowPlayingSession];
        mach_absolute_time();
        UpTicksToMilliseconds();
        v10 = CFNumberCreateInt64();
        v11 = *(*(CMBaseObjectGetVTable() + 16) + 72);
        if (v11)
        {
          v11(session, @"nowPlayingSessionStartDurationMs", v10);
        }

        [(AirPlayReceiverMediaRemoteHelper *)self->_mediaRemoteHelper associateNowPlayingSessionWithAudioSession:self->_state.mediaAVAudioSessionID];
        [(AirPlayReceiverPlatform *)self setShouldHandleMRCommands:1];
      }
    }

    v7 = *p_mainMediaReceiverSession;
    goto LABEL_26;
  }

LABEL_36:
  v7 = self->_state.nowPlaying.multiPrimaries.mainMediaReceiverSession;
  p_mainMediaReceiverSession = &self->_state.nowPlaying.multiPrimaries.mainMediaReceiverSession;
  if (session)
  {
LABEL_26:
    CFRetain(session);
  }

LABEL_27:
  *p_mainMediaReceiverSession = session;
  if (v7)
  {

    CFRelease(v7);
  }
}

- (void)_startNowPlayingSessionAsync:(OpaqueAPReceiverRequestProcessor *)async
{
  mediaRemoteHelper = self->_mediaRemoteHelper;
  mediaAVAudioSessionID = self->_state.mediaAVAudioSessionID;
  v5 = APReceiverRequestProcessorCopyReceiverSession(async);
  if (v5)
  {
    v6 = v5;
    if (gLogCategory_AirPlayReceiverPlatform <= 50 && (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_AirPlayReceiverPlatform, "[AirPlayReceiverPlatform _startNowPlayingSessionAsync:]", 33554482, "Starting NowPlayingSession for [%{ptr}] asynchronously", v6);
    }

    startNowPlayingSessionTask = [v6[6] startNowPlayingSessionTask];
    [startNowPlayingSessionTask setNotCompleted];
    CFRetain(v6);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __56__AirPlayReceiverPlatform__startNowPlayingSessionAsync___block_invoke;
    v8[3] = &unk_278C5FC20;
    v8[5] = mediaRemoteHelper;
    v8[6] = v6;
    v8[4] = startNowPlayingSessionTask;
    v9 = mediaAVAudioSessionID;
    [(AirPlayReceiverMediaRemoteHelper *)mediaRemoteHelper startNowPlayingSessionWithCompletion:v8];
    CFRelease(v6);
  }

  else
  {

    APSLogErrorAt();
  }
}

void __56__AirPlayReceiverPlatform__startNowPlayingSessionAsync___block_invoke(uint64_t a1, uint64_t a2)
{
  if (gLogCategory_AirPlayReceiverPlatform <= 50 && (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_AirPlayReceiverPlatform, "[AirPlayReceiverPlatform _startNowPlayingSessionAsync:]_block_invoke", 33554482, "Started NowPlayingSession for [%{ptr}] with err: %#m", *(a1 + 48), a2);
  }

  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:a2 userInfo:0];
  }

  else
  {
    v5 = 0;
  }

  [v4 setResult:v5];
  [*(a1 + 40) associateNowPlayingSessionWithAudioSession:*(a1 + 56)];
  CFRetain(*(a1 + 48));
  v6 = *(a1 + 48);
  v7 = *(*(v6 + 24) + 88);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__AirPlayReceiverPlatform__startNowPlayingSessionAsync___block_invoke_2;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = v6;
  dispatch_async(v7, block);
  CFRelease(*(a1 + 48));
}

void __56__AirPlayReceiverPlatform__startNowPlayingSessionAsync___block_invoke_2(uint64_t a1)
{
  cf = 0;
  APReceiverSessionManagerCopyAirPlaySessionWithAttribute(*(*(*(a1 + 32) + 24) + 216), 5, 0, &cf);
  v2 = *(a1 + 32);
  v3 = v2;
  v4 = cf;
  if (gLogCategory_AirPlayReceiverPlatform <= 30)
  {
    v5 = cf;
    if (gLogCategory_AirPlayReceiverPlatform == -1)
    {
      v7 = _LogCategory_Initialize();
      v3 = *(a1 + 32);
      if (!v7)
      {
        goto LABEL_7;
      }

      v5 = cf;
    }

    v6 = "no";
    if (v2 == v4)
    {
      v6 = "yes";
    }

    LogPrintF(&gLogCategory_AirPlayReceiverPlatform, "[AirPlayReceiverPlatform _startNowPlayingSessionAsync:]_block_invoke_2", 33554462, "Session: [%{ptr}], currentMainMediaSession: [%{ptr}], shouldHandleMRCommands? %s\n", v3, v5, v6);
    v3 = *(a1 + 32);
  }

LABEL_7:
  if (v2 == v4)
  {
    [*(v3[3] + 16) setShouldHandleMRCommands:1];
    v3 = *(a1 + 32);
  }

  CFRelease(v3);
  if (cf)
  {
    CFRelease(cf);
  }
}

- (void)setReceiverSessionCountAndUpdateStateIfNeeded:(unint64_t)needed
{
  receiverSessionCount = self->_state.receiverSessionCount;
  if (receiverSessionCount != needed)
  {
    cf[5] = v3;
    cf[6] = v4;
    if (gLogCategory_AirPlayReceiverPlatform <= 50)
    {
      if (gLogCategory_AirPlayReceiverPlatform != -1 || (v8 = _LogCategory_Initialize(), receiverSessionCount = self->_state.receiverSessionCount, v8))
      {
        LogPrintF(&gLogCategory_AirPlayReceiverPlatform, "[AirPlayReceiverPlatform setReceiverSessionCountAndUpdateStateIfNeeded:]", 33554482, "receiverSessionCount: %d -> %d\n", receiverSessionCount, needed);
        receiverSessionCount = self->_state.receiverSessionCount;
      }
    }

    if (!needed || !receiverSessionCount)
    {
      if (needed)
      {
        if (gLogCategory_AirPlayReceiverPlatform <= 50 && (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_AirPlayReceiverPlatform, "[AirPlayReceiverPlatform setReceiverSessionCountAndUpdateStateIfNeeded:]", 33554482, "Interrupting any audio played in other processes by activating the media AVAudioSession\n");
        }

        APSEnsureCanInitiatePlayback();
      }

      [(AirPlayReceiverPlatform *)self _setMediaAVAudioSessionActive:needed != 0];
    }

    if (APSIsAPMSpeaker() && (APSIsMemberOfHTGroup() || APSIsMemberOfStereoPair()) && needed && self->_state.receiverSessionCount > needed && !self->_useMediaRemotePerPlayerAPI)
    {
      cf[0] = 0;
      APReceiverSessionManagerCopyAirPlaySessionWithAttribute(self->_server->var34, 4, 0, cf);
      v9 = cf[0];
      if (cf[0])
      {
        goto LABEL_27;
      }

      if (gLogCategory_AirPlayReceiverPlatform <= 50 && (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_AirPlayReceiverPlatform, "[AirPlayReceiverPlatform setReceiverSessionCountAndUpdateStateIfNeeded:]", 33554482, "Setting playback state to stopped due to non-persistent session going away");
      }

      [(AirPlayReceiverMediaRemoteHelper *)self->_mediaRemoteHelper setMRPlaybackState:3];
      v9 = cf[0];
      if (cf[0])
      {
LABEL_27:
        CFRelease(v9);
      }
    }

    self->_state.receiverSessionCount = needed;
    if (!APSMultiPrimariesEnabled())
    {
      [(AirPlayReceiverPlatform *)self updateMRNowPlayingAppStateForSinglePrimary];
    }
  }
}

- (void)_setMediaAVAudioSessionActive:(unsigned __int8)active
{
  activeCopy = active;
  v5 = APSIsWHAParallelSetupProcessingEnabled();
  if (gLogCategory_AirPlayReceiverPlatform <= 50 && (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize()))
  {
    v6 = "Activate";
    if (!activeCopy)
    {
      v6 = "Deactivate";
    }

    v7 = "asynchronously";
    if (!v5)
    {
      v7 = "synchronously";
    }

    LogPrintF(&gLogCategory_AirPlayReceiverPlatform, "[AirPlayReceiverPlatform _setMediaAVAudioSessionActive:]", 33554482, "%s AVAudioSession %s", v6, v7);
  }

  if (v5)
  {
    mediaAVAudioSessionActivationQueue = self->_mediaAVAudioSessionActivationQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__AirPlayReceiverPlatform__setMediaAVAudioSessionActive___block_invoke;
    block[3] = &unk_278C5FB50;
    block[4] = self;
    v11 = activeCopy;
    dispatch_async(mediaAVAudioSessionActivationQueue, block);
  }

  else
  {
    v9 = objc_opt_class();

    [v9 _setMediaAVAudioSessionActiveSync:activeCopy];
  }
}

uint64_t __57__AirPlayReceiverPlatform__setMediaAVAudioSessionActive___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = objc_opt_class();
  v4 = *(a1 + 40);

  return [v3 _setMediaAVAudioSessionActiveSync:v4];
}

- (void)updateActiveSessionRegistration:(AirPlayReceiverSessionPrivate *)registration regType:(int)type regOp:(int)op
{
  if (type <= 3 && (v6 = (&self->super.isa + (8 * type)), (v7 = v6[2]) != 0))
  {
    Count = CFSetGetCount(v6[2]);
    if (op)
    {
      CFSetRemoveValue(v7, registration);
    }

    else
    {
      CFSetAddValue(v7, registration);
    }

    [(AirPlayReceiverPlatform *)self setIsAmbientAudioActive:CFSetGetCount(self->_state.auxAudioSessions) > 0];
    [(AirPlayReceiverPlatform *)self setIsMediaAudioActive:CFSetGetCount(self->_state.mediaAudioSessions) > 0];
    [(AirPlayReceiverPlatform *)self setIsVideoActive:CFSetGetCount(self->_state.mediaVideoSessions) > 0];
    [(AirPlayReceiverPlatform *)self setIsScreenActive:CFSetGetCount(self->_state.screenSessions) > 0];
    if (Count != CFSetGetCount(v7) && registration->var11 == 128)
    {
      if (op)
      {
        if (op != 1)
        {
          return;
        }

        v11 = self->_state.activeNANLinkRetainCount - 1;
        self->_state.activeNANLinkRetainCount = v11;
        if (v11)
        {
          return;
        }

        var4 = self->_server->var4;
        v13 = 0;
      }

      else
      {
        activeNANLinkRetainCount = self->_state.activeNANLinkRetainCount;
        self->_state.activeNANLinkRetainCount = activeNANLinkRetainCount + 1;
        if (activeNANLinkRetainCount)
        {
          return;
        }

        var4 = self->_server->var4;
        v13 = 1;
      }

      APAdvertiserUpdateNANLinkStatus(var4, v13);
    }
  }

  else
  {

    APSLogErrorAt();
  }
}

- (void)_handleVolumeControlTypeChange
{
  v2 = IsAppleTV() != 0;
  if ([objc_msgSend(MEMORY[0x277D26E58] "sharedAVSystemController")])
  {
    v3 = 4;
  }

  else
  {
    v3 = (8 * v2);
  }

  if (gLogCategory_AirPlayReceiverPlatform <= 50 && (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_AirPlayReceiverPlatform, "void _SetVolumeControlTypeEx(AirPlayReceiverPlatform *, APVolumeControlTypeEx)", 33554482, "[AirPlayVolume] volumeControlType = %#{flags}\n", v3, &unk_23EAA1981);
  }

  CFObjectSetPropertyInt64();
}

- (void)_unregisterAVSystemControllerNotifications
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  if (gLogCategory_AirPlayReceiverPlatform <= 50 && (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_AirPlayReceiverPlatform, "[AirPlayReceiverPlatform _unregisterAVSystemControllerNotifications]", 33554482, "[%{ptr}] <AirPlayVolume> Unregistering for AVSC notifications\n", self);
  }

  [defaultCenter removeObserver:self name:*MEMORY[0x277D26B00] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D26D40] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D26DE8] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D26BF0] object:0];
  v4 = *MEMORY[0x277D26B88];

  [defaultCenter removeObserver:self name:v4 object:0];
}

- (void)_registerAVSystemControllerNotifications
{
  v15[2] = *MEMORY[0x277D85DE8];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  mEMORY[0x277D26E58] = [MEMORY[0x277D26E58] sharedAVSystemController];
  if (gLogCategory_AirPlayReceiverPlatform <= 50 && (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_AirPlayReceiverPlatform, "[AirPlayReceiverPlatform _registerAVSystemControllerNotifications]", 33554482, "[%{ptr}] <AirPlayVolume> Registering for AVSC notifications\n", self);
  }

  array = [MEMORY[0x277CBEB18] array];
  v6 = MEMORY[0x277D26B00];
  v7 = MEMORY[0x277D26D40];
  v8 = *MEMORY[0x277D26D40];
  v15[0] = *MEMORY[0x277D26B00];
  v15[1] = v8;
  [array addObjectsFromArray:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v15, 2)}];
  [defaultCenter addObserver:self selector:sel__avSystemControllerActiveAudioRouteChanged_ name:*v6 object:mEMORY[0x277D26E58]];
  [defaultCenter addObserver:self selector:sel__avSystemControllerConnectionDied_ name:*v7 object:mEMORY[0x277D26E58]];
  if (APSIsAPMSpeaker())
  {
    if (gLogCategory_AirPlayReceiverPlatform <= 50 && (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_AirPlayReceiverPlatform, "[AirPlayReceiverPlatform _registerAVSystemControllerNotifications]", 33554482, "Registering for volume notifications from AVSystemController\n");
    }

    v9 = MEMORY[0x277D26DE8];
    v10 = MEMORY[0x277D26BF0];
    v11 = *MEMORY[0x277D26BF0];
    v14[0] = *MEMORY[0x277D26DE8];
    v14[1] = v11;
    [array addObjectsFromArray:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v14, 2)}];
    [defaultCenter addObserver:self selector:sel__avSystemControllerVolumeChanged_ name:*v9 object:mEMORY[0x277D26E58]];
    [defaultCenter addObserver:self selector:sel__avSystemControllerMuteChanged_ name:*v10 object:mEMORY[0x277D26E58]];
  }

  if ([mEMORY[0x277D26E58] currentRouteHasVolumeControl])
  {
    if (gLogCategory_AirPlayReceiverPlatform <= 50 && (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_AirPlayReceiverPlatform, "[AirPlayReceiverPlatform _registerAVSystemControllerNotifications]", 33554482, "Registering for volume control notifications from AVSystemController\n");
    }

    v12 = MEMORY[0x277D26B88];
    v13 = *MEMORY[0x277D26B88];
    [array addObjectsFromArray:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", &v13, 1)}];
    [defaultCenter addObserver:self selector:sel__avSystemControllerVolumeConfigChanged_ name:*v12 object:mEMORY[0x277D26E58]];
  }

  [mEMORY[0x277D26E58] setAttribute:array forKey:*MEMORY[0x277D26DD0] error:0];
}

- (void)_fetchInitialStates
{
  if (gLogCategory_AirPlayReceiverPlatform <= 50 && (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_AirPlayReceiverPlatform, "[AirPlayReceiverPlatform _fetchInitialStates]", 33554482, "[%{ptr}] <AirPlayVolume> Fetching initial state\n", self);
  }

  [(AirPlayReceiverPlatform *)self _handleVolumeControlTypeChange];
  if (APSIsAPMSpeaker())
  {
    self->_state.volumeSliderValue = _GetHWVolumeSliderValue();
    APSVolumeConvertSliderValueToDB();
    CFObjectSetPropertyDouble();
    mEMORY[0x277D26E58] = [MEMORY[0x277D26E58] sharedAVSystemController];
    self->_state.isMuted = [objc_msgSend(mEMORY[0x277D26E58] attributeForKey:{*MEMORY[0x277D26BE8]), "BOOLValue"}];
    CFObjectSetProperty();
    if (gLogCategory_AirPlayReceiverPlatform <= 50 && (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize()))
    {
      if (self->_state.isMuted)
      {
        v4 = "yes";
      }

      else
      {
        v4 = "no";
      }

      LogPrintF(&gLogCategory_AirPlayReceiverPlatform, "[AirPlayReceiverPlatform _fetchInitialStates]", 33554482, "<AirPlayVolume> Retrieved Initial volume: %f and mute: %s\n", self->_state.volumeSliderValue, v4);
    }
  }
}

- (void)_avSystemControllerActiveAudioRouteChanged:(id)changed
{
  userInfo = [changed userInfo];
  v5 = [objc_msgSend(userInfo objectForKeyedSubscript:{*MEMORY[0x277D26B08]), "BOOLValue"}];
  if (gLogCategory_AirPlayReceiverPlatform <= 50 && (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize()))
  {
    v6 = "no";
    if (v5)
    {
      v6 = "yes";
    }

    LogPrintF(&gLogCategory_AirPlayReceiverPlatform, "[AirPlayReceiverPlatform _avSystemControllerActiveAudioRouteChanged:]", 33554482, "[%{ptr}] AVSystemController active audio route changed. Should pause = %s\n", self, v6);
  }

  if (v5)
  {
    var15 = self->_server->var15;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __70__AirPlayReceiverPlatform__avSystemControllerActiveAudioRouteChanged___block_invoke;
    block[3] = &unk_278C608C8;
    block[4] = self;
    dispatch_async(var15, block);
  }
}

void __70__AirPlayReceiverPlatform__avSystemControllerActiveAudioRouteChanged___block_invoke(uint64_t a1)
{
  cf = 0;
  APReceiverSessionManagerCopyAirPlaySessionWithAttribute(*(*(*(a1 + 32) + 8) + 216), 0, 0, &cf);
  v2 = cf;
  if (cf)
  {
    if (gLogCategory_AirPlayReceiverPlatform <= 50)
    {
      if (gLogCategory_AirPlayReceiverPlatform != -1 || (v3 = _LogCategory_Initialize(), v2 = cf, v3))
      {
        LogPrintF(&gLogCategory_AirPlayReceiverPlatform, "[AirPlayReceiverPlatform _avSystemControllerActiveAudioRouteChanged:]_block_invoke", 33554482, "[%{ptr}] Sending pause command to session [%{ptr}]\n", *(a1 + 32), v2);
        v2 = cf;
      }
    }

    AirPlayReceiverSessionSendMediaRemoteCommand(v2, -1, 1885435251, 0);
    if (cf)
    {
      CFRelease(cf);
    }
  }
}

- (void)_avSystemControllerConnectionDied:(id)died
{
  if (gLogCategory_AirPlayReceiverPlatform <= 90 && (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_AirPlayReceiverPlatform, "[AirPlayReceiverPlatform _avSystemControllerConnectionDied:]", 33554522, "[%{ptr}] AVSystemController connection died\n", self);
  }

  [(AirPlayReceiverPlatform *)self _unregisterAVSystemControllerNotifications];
  [(AirPlayReceiverPlatform *)self _registerAVSystemControllerNotifications];
  var15 = self->_server->var15;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__AirPlayReceiverPlatform__avSystemControllerConnectionDied___block_invoke;
  block[3] = &unk_278C608C8;
  block[4] = self;
  dispatch_sync(var15, block);
}

- (void)_avSystemControllerMuteChanged:(id)changed
{
  HWVolumeSliderValue = _GetHWVolumeSliderValue();
  mEMORY[0x277D26E58] = [MEMORY[0x277D26E58] sharedAVSystemController];
  v6 = [objc_msgSend(mEMORY[0x277D26E58] attributeForKey:{*MEMORY[0x277D26BE8]), "BOOLValue"}];
  *&v7 = HWVolumeSliderValue;
  [(AirPlayReceiverPlatform *)self _updateVolume:v6 andMute:0 becauseVolumeChanged:v7];
  var15 = self->_server->var15;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __58__AirPlayReceiverPlatform__avSystemControllerMuteChanged___block_invoke;
  v9[3] = &unk_278C5FB50;
  v9[4] = self;
  v10 = v6;
  dispatch_async(var15, v9);
  CFObjectSetProperty();
}

- (void)_avSystemControllerVolumeChanged:(id)changed
{
  userInfo = [changed userInfo];
  if ([objc_msgSend(userInfo objectForKeyedSubscript:{*MEMORY[0x277D26B30]), "isEqual:", @"Audio/Video"}])
  {
    HWVolumeSliderValue = _GetHWVolumeSliderValue();
    mEMORY[0x277D26E58] = [MEMORY[0x277D26E58] sharedAVSystemController];
    v7 = [objc_msgSend(mEMORY[0x277D26E58] attributeForKey:{*MEMORY[0x277D26BE8]), "BOOLValue"}];
    *&v8 = HWVolumeSliderValue;
    [(AirPlayReceiverPlatform *)self _updateVolume:v7 andMute:1 becauseVolumeChanged:v8];
    var15 = self->_server->var15;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __60__AirPlayReceiverPlatform__avSystemControllerVolumeChanged___block_invoke;
    v10[3] = &unk_278C5FB28;
    v10[4] = self;
    v11 = HWVolumeSliderValue;
    dispatch_async(var15, v10);
    APSVolumeConvertSliderValueToDB();
    CFObjectSetPropertyDouble();
  }
}

float __60__AirPlayReceiverPlatform__avSystemControllerVolumeChanged___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(a1 + 32) + 84) = result;
  return result;
}

- (int)_updateVolume:(float)volume andMute:(unsigned __int8)mute becauseVolumeChanged:(unsigned __int8)changed
{
  changedCopy = changed;
  muteCopy = mute;
  if (gLogCategory_AirPlayReceiverPlatform <= 50 && (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize()))
  {
    v9 = "volume";
    if (!changedCopy)
    {
      v9 = "mute";
    }

    v10 = "yes";
    if (!muteCopy)
    {
      v10 = "no";
    }

    LogPrintF(&gLogCategory_AirPlayReceiverPlatform, "[AirPlayReceiverPlatform _updateVolume:andMute:becauseVolumeChanged:]", 33554482, "[AirPlayVolume] received AVSC %s change, newVolume = %f, newMute = %s)\n", v9, volume, v10);
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v12 = Mutable;
    v13 = CFDictionarySetDouble();
    if (v13)
    {
      v18 = v13;
    }

    else
    {
      v14 = *MEMORY[0x277CBED28];
      v15 = *MEMORY[0x277CBED10];
      if (muteCopy)
      {
        v16 = *MEMORY[0x277CBED28];
      }

      else
      {
        v16 = *MEMORY[0x277CBED10];
      }

      CFDictionarySetValue(v12, @"isMuted", v16);
      if (changedCopy)
      {
        v17 = v14;
      }

      else
      {
        v17 = v15;
      }

      CFDictionarySetValue(v12, @"isVolumeUpdate", v17);
      v18 = AirPlayReceiverServerControl(self->_server, 1, @"sendVolumeUpdate", 0, v12, 0);
      if (!v18)
      {
        CFRelease(v12);
        return v18;
      }
    }

    APSLogErrorAt();
    CFRelease(v12);
  }

  else
  {
    APSLogErrorAt();
    v18 = -6728;
  }

  if (gLogCategory_AirPlayReceiverPlatform <= 50 && (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_AirPlayReceiverPlatform, "[AirPlayReceiverPlatform _updateVolume:andMute:becauseVolumeChanged:]", 33554482, "Could not send volume update to sender. Error: %d\n", v18);
  }

  return v18;
}

- (void)_avSystemControllerVolumeConfigChanged:(id)changed
{
  userInfo = [changed userInfo];
  v5 = [objc_msgSend(userInfo objectForKeyedSubscript:{*MEMORY[0x277D26B30]), "BOOLValue"}];
  if (gLogCategory_AirPlayReceiverPlatform <= 50)
  {
    v6 = v5;
    if (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize())
    {
      v7 = "no";
      if (v6)
      {
        v7 = "yes";
      }

      LogPrintF(&gLogCategory_AirPlayReceiverPlatform, "[AirPlayReceiverPlatform _avSystemControllerVolumeConfigChanged:]", 33554482, "AVSystemController CurrentRouteHasVolumeControl changed to %s\n", v7);
    }
  }

  [(AirPlayReceiverPlatform *)self _handleVolumeControlTypeChange];
}

- (void)_handleNowPlayingAppStartedPlaying:(id)playing
{
  v5 = [objc_msgSend(objc_msgSend(playing "userInfo")];
  v6 = [objc_msgSend(playing "userInfo")];
  v7 = [objc_msgSend(objc_msgSend(playing "userInfo")];
  if (v5 != getpid() && v7 && !self->_server->var41)
  {
    selfCopy = self;
    v9 = v6;
    var15 = self->_server->var15;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __62__AirPlayReceiverPlatform__handleNowPlayingAppStartedPlaying___block_invoke;
    block[3] = &unk_278C5FB00;
    block[4] = self;
    block[5] = v6;
    v12 = v5;
    dispatch_async(var15, block);
  }

  CFObjectSetProperty();
}

void __62__AirPlayReceiverPlatform__handleNowPlayingAppStartedPlaying___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!*(v2 + 49))
  {
    if (gLogCategory_AirPlayReceiverPlatform <= 60 && (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_AirPlayReceiverPlatform, "[AirPlayReceiverPlatform _handleNowPlayingAppStartedPlaying:]_block_invoke", 33554492, "### Process '%@-%d' started playing.\n", *(a1 + 40), *(a1 + 48));
    }

    AirPlayReceiverServerControl(*(*(a1 + 32) + 8), 1, @"otherProcessStartedPlaying", 0, 0, 0);
    v2 = *(a1 + 32);
  }

  v3 = *(a1 + 40);
}

- (void)handleMRCommand:(unsigned int)command translatedAPCommand:(unsigned int)pCommand withOptions:(__CFDictionary *)options
{
  CFRetain(self->_server);
  if (options)
  {
    CFRetain(options);
  }

  var15 = self->_server->var15;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__AirPlayReceiverPlatform_handleMRCommand_translatedAPCommand_withOptions___block_invoke;
  block[3] = &unk_278C5FAD8;
  commandCopy = command;
  pCommandCopy = pCommand;
  block[4] = self;
  block[5] = options;
  dispatch_async(var15, block);
}

void __75__AirPlayReceiverPlatform_handleMRCommand_translatedAPCommand_withOptions___block_invoke(uint64_t a1)
{
  cf = 0;
  APReceiverSessionManagerCopyAirPlaySessionWithAttribute(*(*(*(a1 + 32) + 8) + 216), 0, 0, &cf);
  v2 = cf;
  if (cf)
  {
    if (gLogCategory_AirPlayReceiverPlatform <= 50)
    {
      if (gLogCategory_AirPlayReceiverPlatform != -1 || (v3 = _LogCategory_Initialize(), v2 = cf, v3))
      {
        LogPrintF(&gLogCategory_AirPlayReceiverPlatform, "[AirPlayReceiverPlatform handleMRCommand:translatedAPCommand:withOptions:]_block_invoke", 33554482, "[%{ptr}] Handle MR command '%d', AP command '%C'\n", v2, *(a1 + 48), *(a1 + 52));
        v2 = cf;
      }
    }

    AirPlayReceiverSessionSendMediaRemoteCommand(v2, *(a1 + 48), *(a1 + 52), *(a1 + 40));
  }

  CFRelease(*(*(a1 + 32) + 8));
  v4 = *(a1 + 40);
  if (v4)
  {
    CFRelease(v4);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

+ (void)_setMediaAVAudioSessionActiveSync:(unsigned __int8)sync
{
  syncCopy = sync;
  v6 = 0;
  if (gLogCategory_AirPlayReceiverPlatform <= 50 && (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize()))
  {
    v4 = "";
    if (!syncCopy)
    {
      v4 = "de";
    }

    LogPrintF(&gLogCategory_AirPlayReceiverPlatform, "+[AirPlayReceiverPlatform _setMediaAVAudioSessionActiveSync:]", 33554482, "Media AVAudioSession %sactivating\n", v4);
  }

  if ([+[APAVAudioSessionManager setActive:"setActive:error:"]
  {
    if (gLogCategory_AirPlayReceiverPlatform <= 50 && (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_AirPlayReceiverPlatform, "+[AirPlayReceiverPlatform _setMediaAVAudioSessionActiveSync:]", 33554482, "Media AVAudioSession %sactivated\n");
    }
  }

  else if (gLogCategory_AirPlayReceiverPlatform <= 90 && (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize()))
  {
    v5 = "";
    if (!syncCopy)
    {
      v5 = "de";
    }

    LogPrintF(&gLogCategory_AirPlayReceiverPlatform, "+[AirPlayReceiverPlatform _setMediaAVAudioSessionActiveSync:]", 33554522, "### Failed to %sactivate media AVAudioSession due to error: %@\n", v5, v6);
  }
}

@end