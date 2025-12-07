@interface AVVCSessionManager
- (AVVCSessionManager)initWithSession:(id)session;
- (BOOL)activateAudioSessionWithPrewarm:(BOOL)prewarm error:(id *)error;
- (BOOL)clearInputPreferences:(id *)preferences;
- (BOOL)deactivateAudioSessionWithOptions:(unsigned int)options error:(id *)error;
- (BOOL)getClientRequestsRecording;
- (BOOL)getForceGetSessionProperties;
- (BOOL)getSiriInputSource:(unint64_t *)source withIdentifier:(id *)identifier withIsMicrophoneCheck:(BOOL *)check forActivationMode:(int64_t)mode;
- (BOOL)isAirplayOneOfTheOutputRoutes:(id)routes;
- (BOOL)isBTDeviceInEar;
- (BOOL)isCurrentInputBuiltInMic;
- (BOOL)isInputAvailable;
- (BOOL)isMiniDuckingEnabled;
- (BOOL)isPickedRouteW1;
- (BOOL)isSWVolumeSupportedOnPickedRoute;
- (BOOL)isSessionActive;
- (BOOL)isSessionInSiriCategory;
- (BOOL)isSessionInSiriCategoryModeAndOptions:(unsigned int)options;
- (BOOL)isSessionOutputInWirelessSplitterMode;
- (BOOL)predictIfMicrophoneShouldBeUsedForActivationMode:(int64_t)mode;
- (BOOL)setActivationContext:(id)context error:(id *)error;
- (BOOL)setActive:(BOOL)active withOptions:(unint64_t)options error:(id *)error;
- (BOOL)setAudioHardwareControlFlags:(unint64_t)flags error:(id *)error;
- (BOOL)setCategory:(id)category mode:(id)mode options:(unint64_t)options error:(id *)error;
- (BOOL)setCategory:(id)category mode:(id)mode routeSharingPolicy:(unint64_t)policy options:(unint64_t)options error:(id *)error;
- (BOOL)setDuckOthers:(id)others mixWithOthers:(id)withOthers error:(id *)error;
- (BOOL)setDuckToLevelDB:(id)b error:(id *)error;
- (BOOL)setDuckToLevelScalar:(id)scalar error:(id *)error;
- (BOOL)setDuckingFadeOutDuration:(id)duration fadeInDuration:(id)inDuration error:(id *)error;
- (BOOL)setEnableBTTriangleMode:(BOOL)mode error:(id *)error;
- (BOOL)setIAmTheAssistant:(BOOL)assistant error:(id *)error;
- (BOOL)setIsUsingBuiltInMicForRecording:(BOOL)recording error:(id *)error;
- (BOOL)setMicrophoneAttribution:(BOOL)attribution error:(id *)error;
- (BOOL)setPreferredSampleRate:(double)rate error:(id *)error;
- (BOOL)setPrefersBeingInterruptedByNextActiveRecordingClient:(BOOL)client error:(id *)error;
- (BOOL)setRecordingFromRemoteInput:(BOOL)input error:(id *)error;
- (double)inputLatency;
- (double)inputSafetyOffset;
- (double)outputLatency;
- (double)outputSafetyOffset;
- (double)outputVolume;
- (double)speechDetectionDeviceSampleRate;
- (float)getDeviceGain;
- (id)currentRoute;
- (id)getActiveSessionDisplayIDsAsString;
- (id)getPlaybackRoute;
- (id)pickedRoute;
- (id)sessionCurrentInputRoutes;
- (id)sessionCurrentOutputRoutes;
- (id)siriRemoteInputIdentifier;
- (int)enableSmartRoutingConsideration:(BOOL)consideration;
- (int)sessionState;
- (int)setSessionActivationContext:(id)context;
- (int)setSessionAudioHWControlFlagsForActivationMode:(int64_t)mode withOptions:(unint64_t)options;
- (int)setSessionBufferSize:(int)size;
- (int)setSessionCategoryModeOptionsForActivationMode:(int64_t)mode withOptions:(unint64_t)options;
- (int)setSessionSampleRateForActivationMode:(int64_t)mode;
- (int)setupOneTimeSessionSettingsForClient:(int64_t)client;
- (int64_t)inputNumberOfChannels;
- (int64_t)reporterID;
- (unint64_t)siriInputSource;
- (unsigned)getOpaqueSessionID;
- (unsigned)getSessionActivationOptions;
- (void)changeDuckOthersOption:(BOOL)option;
- (void)dealloc;
- (void)getHypotheticalRouteAndUpdateStates;
- (void)removeSessionNotifications:(id)notifications;
- (void)setClientRequestsRecording:(BOOL)recording;
- (void)setDeviceGain:(float)gain;
- (void)setForceGetSessionProperties:(BOOL)properties;
- (void)setPlaybackRoute:(id)route;
- (void)setSessionActivationOptions:(unsigned int)options;
- (void)setSessionState:(int)state;
- (void)setSessionStateWithoutLock:(int)lock;
- (void)setupSessionNotifications:(id)notifications;
- (void)shouldEnableMiniDucking:(BOOL)ducking withOptions:(unint64_t)options;
@end

@implementation AVVCSessionManager

- (double)inputLatency
{
  v17 = *MEMORY[0x1E69E9840];
  if (isAudioSessionAvailable(void)::onceToken != -1)
  {
    dispatch_once(&isAudioSessionAvailable(void)::onceToken, &__block_literal_global_44);
  }

  if ((isAudioSessionAvailable(void)::audioSessionAvailable & 1) == 0)
  {
    if (kAVVCScope)
    {
      v6 = *kAVVCScope;
      if (!v6)
      {
        return 0.0;
      }
    }

    else
    {
      v6 = MEMORY[0x1E69E9C10];
      v7 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v9 = 136315906;
      v10 = "AVVCSessionManager.mm";
      v11 = 1024;
      v12 = 1482;
      v13 = 2080;
      v14 = "inputLatency";
      v15 = 1024;
      v16 = 0;
      _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d logAndReturnIfAudioSessionIsNotAvailable-%s returning : %d", &v9, 0x22u);
    }

    return 0.0;
  }

  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  v3 = IsSerializationEnabled(void)::enable;
  if (IsSerializationEnabled(void)::enable == 1)
  {
    std::recursive_mutex::lock(&self->mSessionManagerLock);
  }

  [(AVAudioSession *)self->_audioSession inputLatency];
  v5 = v4;
  self->_inputLatency = v4;
  if (v3)
  {
    std::recursive_mutex::unlock(&self->mSessionManagerLock);
  }

  return v5;
}

- (BOOL)isSWVolumeSupportedOnPickedRoute
{
  v22 = *MEMORY[0x1E69E9840];
  if (isAudioSessionAvailable(void)::onceToken != -1)
  {
    dispatch_once(&isAudioSessionAvailable(void)::onceToken, &__block_literal_global_44);
  }

  if ((isAudioSessionAvailable(void)::audioSessionAvailable & 1) == 0)
  {
    if (kAVVCScope)
    {
      v8 = *kAVVCScope;
      if (!v8)
      {
LABEL_17:
        LOBYTE(v7) = 0;
        return v7;
      }
    }

    else
    {
      v8 = MEMORY[0x1E69E9C10];
      v9 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v14 = 136315906;
      v15 = "AVVCSessionManager.mm";
      v16 = 1024;
      v17 = 2051;
      v18 = 2080;
      v19 = "isSWVolumeSupportedOnPickedRoute";
      v20 = 1024;
      v21 = 0;
      _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d logAndReturnIfAudioSessionIsNotAvailable-%s returning : %d", &v14, 0x22u);
    }

    goto LABEL_17;
  }

  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  v3 = IsSerializationEnabled(void)::enable;
  if (IsSerializationEnabled(void)::enable == 1)
  {
    std::recursive_mutex::lock(&self->mSessionManagerLock);
  }

  pickedRoute = [(AVAudioSession *)self->_audioSession pickedRoute];
  v5 = pickedRoute;
  if (pickedRoute)
  {
    v6 = [pickedRoute objectForKey:@"SoftwareVolumeEnabled"];
    LODWORD(v7) = [v6 BOOLValue];

    goto LABEL_25;
  }

  if (kAVVCScope)
  {
    v7 = *kAVVCScope;
    if (!v7)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v7 = MEMORY[0x1E69E9C10];
    v10 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v14 = 136315394;
    v15 = "AVVCSessionManager.mm";
    v16 = 1024;
    v17 = 2059;
    _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d isSWVolumeSupportedOnPickedRoute: Picked Route is nil", &v14, 0x12u);
  }

  LODWORD(v7) = 0;
LABEL_25:
  if (!kAVVCScope)
  {
    v11 = MEMORY[0x1E69E9C10];
    v12 = MEMORY[0x1E69E9C10];
    goto LABEL_29;
  }

  v11 = *kAVVCScope;
  if (v11)
  {
LABEL_29:
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 136315650;
      v15 = "AVVCSessionManager.mm";
      v16 = 1024;
      v17 = 2062;
      v18 = 1024;
      LODWORD(v19) = v7;
      _os_log_impl(&dword_1BA5AC000, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d isSWVolumeSupportedOnPickedRoute: %d", &v14, 0x18u);
    }
  }

  if (v3)
  {
    std::recursive_mutex::unlock(&self->mSessionManagerLock);
  }

  return v7;
}

- (BOOL)isCurrentInputBuiltInMic
{
  v17 = *MEMORY[0x1E69E9840];
  if (isAudioSessionAvailable(void)::onceToken != -1)
  {
    dispatch_once(&isAudioSessionAvailable(void)::onceToken, &__block_literal_global_44);
  }

  if ((isAudioSessionAvailable(void)::audioSessionAvailable & 1) == 0)
  {
    if (kAVVCScope)
    {
      v7 = *kAVVCScope;
      if (!v7)
      {
        return 0;
      }
    }

    else
    {
      v7 = MEMORY[0x1E69E9C10];
      v8 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *v10 = 136315906;
      *&v10[4] = "AVVCSessionManager.mm";
      v11 = 1024;
      v12 = 2142;
      v13 = 2080;
      v14 = "isCurrentInputBuiltInMic";
      v15 = 1024;
      v16 = 0;
      _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d logAndReturnIfAudioSessionIsNotAvailable-%s returning : %d", v10, 0x22u);
    }

    return 0;
  }

  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  v3 = IsSerializationEnabled(void)::enable;
  if (IsSerializationEnabled(void)::enable == 1)
  {
    std::recursive_mutex::lock(&self->mSessionManagerLock);
  }

  currentRoute = [(AVAudioSession *)self->_audioSession currentRoute];
  extractFirstInputPortTypeFromRouteDescription(currentRoute, v10);
  v5 = *v10;
  v6 = areNSStringsEqualOrBothNil(*v10, *MEMORY[0x1E698D660]);

  if (v3)
  {
    std::recursive_mutex::unlock(&self->mSessionManagerLock);
  }

  return v6;
}

- (int64_t)reporterID
{
  v16 = *MEMORY[0x1E69E9840];
  ElapsedTime::ElapsedTime(v15, "[AVVCSessionManager reporterID]", "reporterID", 0);
  if (isAudioSessionAvailable(void)::onceToken != -1)
  {
    dispatch_once(&isAudioSessionAvailable(void)::onceToken, &__block_literal_global_44);
  }

  if ((isAudioSessionAvailable(void)::audioSessionAvailable & 1) == 0)
  {
    if (kAVVCScope)
    {
      v4 = *kAVVCScope;
      if (!v4)
      {
LABEL_16:
        reporterID = 0;
        goto LABEL_17;
      }
    }

    else
    {
      v4 = MEMORY[0x1E69E9C10];
      v5 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v7 = 136315906;
      v8 = "AVVCSessionManager.mm";
      v9 = 1024;
      v10 = 1606;
      v11 = 2080;
      v12 = "reporterID";
      v13 = 1024;
      v14 = 0;
      _os_log_impl(&dword_1BA5AC000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d logAndReturnIfAudioSessionIsNotAvailable-%s returning : %d", &v7, 0x22u);
    }

    goto LABEL_16;
  }

  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  if (IsSerializationEnabled(void)::enable == 1)
  {
    std::recursive_mutex::lock(&self->mSessionManagerLock);
    reporterID = self->_reporterID;
    std::recursive_mutex::unlock(&self->mSessionManagerLock);
  }

  else
  {
    reporterID = self->_reporterID;
  }

LABEL_17:
  ElapsedTime::~ElapsedTime(v15);
  return reporterID;
}

- (id)currentRoute
{
  if (isAudioSessionAvailable(void)::onceToken != -1)
  {
    dispatch_once(&isAudioSessionAvailable(void)::onceToken, &__block_literal_global_44);
  }

  if (isAudioSessionAvailable(void)::audioSessionAvailable == 1)
  {
    if (IsSerializationEnabled(void)::onceToken != -1)
    {
      dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
    }

    v3 = IsSerializationEnabled(void)::enable;
    if (IsSerializationEnabled(void)::enable == 1)
    {
      std::recursive_mutex::lock(&self->mSessionManagerLock);
    }

    currentRoute = [(AVAudioSession *)self->_audioSession currentRoute];
    if (v3)
    {
      std::recursive_mutex::unlock(&self->mSessionManagerLock);
    }
  }

  else
  {
    currentRoute = 0;
  }

  return currentRoute;
}

- (void)getHypotheticalRouteAndUpdateStates
{
  v24 = *MEMORY[0x1E69E9840];
  if (isAudioSessionAvailable(void)::onceToken != -1)
  {
    dispatch_once(&isAudioSessionAvailable(void)::onceToken, &__block_literal_global_44);
  }

  if (isAudioSessionAvailable(void)::audioSessionAvailable == 1)
  {
    ElapsedTime::ElapsedTime(v23, "[AVVCSessionManager getHypotheticalRouteAndUpdateStates]", "getHypotheticalRouteAndUpdateStates", 0);
    pickedRoute = [(AVVCSessionManager *)self pickedRoute];
    if (kAVVCScope)
    {
      v4 = *kAVVCScope;
      if (!v4)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v4 = MEMORY[0x1E69E9C10];
      v5 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 136315650;
      v18 = "AVVCSessionManager.mm";
      v19 = 1024;
      v20 = 524;
      v21 = 2112;
      v22[0] = pickedRoute;
      _os_log_impl(&dword_1BA5AC000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d pickedRoute from AudioSession: %@", &v17, 0x1Cu);
    }

LABEL_11:
    self->mIsOtherAudioPlaying = [(AVAudioSession *)self->_audioSession isOtherAudioPlaying];
    if (kAVVCScope)
    {
      v6 = *kAVVCScope;
      if (!v6)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v6 = MEMORY[0x1E69E9C10];
      v7 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      mIsOtherAudioPlaying = self->mIsOtherAudioPlaying;
      v17 = 136315650;
      v18 = "AVVCSessionManager.mm";
      v19 = 1024;
      v20 = 527;
      v21 = 1024;
      LODWORD(v22[0]) = mIsOtherAudioPlaying;
      _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d isSomeOtherAudioPlaying: %d", &v17, 0x18u);
    }

LABEL_18:
    v9 = [pickedRoute objectForKey:@"BTDetails_SupportsDoAP"];
    self->mRouteHasDoAPSupport = [v9 BOOLValue];

    v10 = [pickedRoute objectForKey:@"SoftwareVolumeEnabled"];
    self->mOutputSupportsSWVolume = [v10 BOOLValue];

    if (self->mIsOtherAudioPlaying)
    {
      if (self->mRouteHasDoAPSupport && self->mShouldEnableMiniDucking)
      {
        self->mShouldDuckOthers = 1;
        mOutputSupportsSWVolume = self->mOutputSupportsSWVolume;
        goto LABEL_26;
      }
    }

    else if (self->_sessionState == 7)
    {
      v12 = (LOBYTE(self->mPreviousSessionCategoryOptions) >> 1) & 1;
LABEL_25:
      self->mShouldDuckOthers = v12;
      mOutputSupportsSWVolume = 1;
LABEL_26:
      self->mSessionNeedsVolumeControl = mOutputSupportsSWVolume;
      if (kAVVCScope)
      {
        v13 = *kAVVCScope;
        if (!v13)
        {
LABEL_33:

          ElapsedTime::~ElapsedTime(v23);
          return;
        }
      }

      else
      {
        v13 = MEMORY[0x1E69E9C10];
        v14 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        mShouldDuckOthers = self->mShouldDuckOthers;
        mSessionNeedsVolumeControl = self->mSessionNeedsVolumeControl;
        v17 = 136315906;
        v18 = "AVVCSessionManager.mm";
        v19 = 1024;
        v20 = 583;
        v21 = 1024;
        LODWORD(v22[0]) = mShouldDuckOthers;
        WORD2(v22[0]) = 1024;
        *(v22 + 6) = mSessionNeedsVolumeControl;
        _os_log_impl(&dword_1BA5AC000, v13, OS_LOG_TYPE_DEFAULT, "%25s:%-5d shouldDuckOthers(%d), sessionNeedsVolumeControl(%d)", &v17, 0x1Eu);
      }

      goto LABEL_33;
    }

    LOBYTE(v12) = self->mOutputSupportsSWVolume;
    goto LABEL_25;
  }
}

- (id)pickedRoute
{
  v7 = *MEMORY[0x1E69E9840];
  if (isAudioSessionAvailable(void)::onceToken != -1)
  {
    dispatch_once(&isAudioSessionAvailable(void)::onceToken, &__block_literal_global_44);
  }

  if (isAudioSessionAvailable(void)::audioSessionAvailable == 1)
  {
    if (IsSerializationEnabled(void)::onceToken != -1)
    {
      dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
    }

    v3 = IsSerializationEnabled(void)::enable;
    if (IsSerializationEnabled(void)::enable == 1)
    {
      std::recursive_mutex::lock(&self->mSessionManagerLock);
    }

    ElapsedTime::ElapsedTime(v6, "[AVVCSessionManager pickedRoute]", "pickedRoute", 0);
    pickedRoute = [(AVAudioSession *)self->_audioSession pickedRoute];
    ElapsedTime::~ElapsedTime(v6);
    if (v3)
    {
      std::recursive_mutex::unlock(&self->mSessionManagerLock);
    }
  }

  else
  {
    pickedRoute = 0;
  }

  return pickedRoute;
}

- (int)sessionState
{
  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  if ((IsSerializationEnabled(void)::enable & 1) == 0)
  {
    return self->_sessionState;
  }

  std::recursive_mutex::lock(&self->mSessionManagerLock);
  sessionState = self->_sessionState;
  std::recursive_mutex::unlock(&self->mSessionManagerLock);
  return sessionState;
}

- (double)outputLatency
{
  v17 = *MEMORY[0x1E69E9840];
  if (isAudioSessionAvailable(void)::onceToken != -1)
  {
    dispatch_once(&isAudioSessionAvailable(void)::onceToken, &__block_literal_global_44);
  }

  if ((isAudioSessionAvailable(void)::audioSessionAvailable & 1) == 0)
  {
    if (kAVVCScope)
    {
      v6 = *kAVVCScope;
      if (!v6)
      {
        return 0.0;
      }
    }

    else
    {
      v6 = MEMORY[0x1E69E9C10];
      v7 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v9 = 136315906;
      v10 = "AVVCSessionManager.mm";
      v11 = 1024;
      v12 = 1490;
      v13 = 2080;
      v14 = "outputLatency";
      v15 = 1024;
      v16 = 0;
      _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d logAndReturnIfAudioSessionIsNotAvailable-%s returning : %d", &v9, 0x22u);
    }

    return 0.0;
  }

  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  v3 = IsSerializationEnabled(void)::enable;
  if (IsSerializationEnabled(void)::enable == 1)
  {
    std::recursive_mutex::lock(&self->mSessionManagerLock);
  }

  [(AVAudioSession *)self->_audioSession outputLatency];
  v5 = v4;
  self->_outputLatency = v4;
  if (v3)
  {
    std::recursive_mutex::unlock(&self->mSessionManagerLock);
  }

  return v5;
}

- (BOOL)isSessionOutputInWirelessSplitterMode
{
  v45 = *MEMORY[0x1E69E9840];
  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  v3 = IsSerializationEnabled(void)::enable;
  if (IsSerializationEnabled(void)::enable == 1)
  {
    std::recursive_mutex::lock(&self->mSessionManagerLock);
  }

  if (self->mDeviceIsIOSAccessory)
  {
    LOBYTE(v4) = 0;
    if (!v3)
    {
      return v4;
    }

LABEL_7:
    std::recursive_mutex::unlock(&self->mSessionManagerLock);
    return v4;
  }

  selfCopy = self;
  v25 = v3;
  ElapsedTime::ElapsedTime(v30, "[AVVCSessionManager isSessionOutputInWirelessSplitterMode]", "isSessionOutputInWirelessSplitterMode", 0);
  if (isAVOutputContextAvailable(void)::onceToken1 != -1)
  {
    dispatch_once(&isAVOutputContextAvailable(void)::onceToken1, &__block_literal_global);
  }

  if ((isAVOutputContextAvailable(void)::wirelessSplitterModeAPIAvailable & 1) == 0)
  {
    if (kAVVCScope)
    {
      sharedSystemAudioContext = *kAVVCScope;
      if (!sharedSystemAudioContext)
      {
        LOBYTE(v4) = 0;
        goto LABEL_51;
      }
    }

    else
    {
      sharedSystemAudioContext = MEMORY[0x1E69E9C10];
      v9 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(sharedSystemAudioContext, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v40 = "AVVCCarplayRuntimeAvailability.mm";
      v41 = 1024;
      v42 = 70;
      _os_log_impl(&dword_1BA5AC000, sharedSystemAudioContext, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AVOutputContext API not available", buf, 0x12u);
    }

    goto LABEL_29;
  }

  sharedSystemAudioContext = [getAVOutputContextClass() sharedSystemAudioContext];
  v23 = sharedSystemAudioContext;
  supportsMultipleBluetoothOutputDevices = [sharedSystemAudioContext supportsMultipleBluetoothOutputDevices];
  if (kAVVCScope)
  {
    v8 = *kAVVCScope;
    if (!v8)
    {
      if (supportsMultipleBluetoothOutputDevices)
      {
        goto LABEL_26;
      }

LABEL_29:
      LOBYTE(v4) = 0;
      goto LABEL_50;
    }
  }

  else
  {
    v8 = MEMORY[0x1E69E9C10];
    v10 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v40 = "AVVCCarplayRuntimeAvailability.mm";
    v41 = 1024;
    v42 = 78;
    v43 = 1024;
    LODWORD(v44) = supportsMultipleBluetoothOutputDevices;
    _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d supportsMultipleBTDevices: %d", buf, 0x18u);
  }

  if (!supportsMultipleBluetoothOutputDevices)
  {
    goto LABEL_29;
  }

LABEL_26:
  outputDevices = [sharedSystemAudioContext outputDevices];
  if (!kAVVCScope)
  {
    v12 = MEMORY[0x1E69E9C10];
    v13 = MEMORY[0x1E69E9C10];
    goto LABEL_31;
  }

  v12 = *kAVVCScope;
  if (v12)
  {
LABEL_31:
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v40 = "AVVCCarplayRuntimeAvailability.mm";
      v41 = 1024;
      v42 = 82;
      v43 = 2112;
      v44 = outputDevices;
      _os_log_impl(&dword_1BA5AC000, v12, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Wireless Output Devices: %@", buf, 0x1Cu);
    }
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v14 = outputDevices;
  v4 = [v14 countByEnumeratingWithState:&v26 objects:buf count:16];
  if (!v4)
  {
    goto LABEL_49;
  }

  v15 = 0;
  v16 = MEMORY[0x1E69E9C10];
  v17 = *v27;
  do
  {
    for (i = 0; i != v4; ++i)
    {
      if (*v27 != v17)
      {
        objc_enumerationMutation(v14);
      }

      v19 = *(*(&v26 + 1) + 8 * i);
      supportsBluetoothSharing = [v19 supportsBluetoothSharing];
      if (kAVVCScope)
      {
        v21 = *kAVVCScope;
        if (!v21)
        {
          goto LABEL_46;
        }
      }

      else
      {
        v22 = v16;
        v21 = v16;
      }

      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *v31 = 136315906;
        v32 = "AVVCCarplayRuntimeAvailability.mm";
        v33 = 1024;
        v34 = 86;
        v35 = 2048;
        v36 = v19;
        v37 = 1024;
        v38 = supportsBluetoothSharing;
        _os_log_impl(&dword_1BA5AC000, v21, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AVOutputDevice %p supports BT sharing: %d", v31, 0x22u);
      }

LABEL_46:
      v15 += supportsBluetoothSharing;
    }

    v4 = [v14 countByEnumeratingWithState:&v26 objects:buf count:16];
  }

  while (v4);
  LOBYTE(v4) = v15 > 1;
LABEL_49:

  sharedSystemAudioContext = v23;
LABEL_50:

  self = selfCopy;
  v3 = v25;
LABEL_51:
  self->mSessionOutputIsWirelessSplitter = v4;
  ElapsedTime::~ElapsedTime(v30);
  if (v3)
  {
    goto LABEL_7;
  }

  return v4;
}

- (double)speechDetectionDeviceSampleRate
{
  v17 = *MEMORY[0x1E69E9840];
  if (isAudioSessionAvailable(void)::onceToken != -1)
  {
    dispatch_once(&isAudioSessionAvailable(void)::onceToken, &__block_literal_global_44);
  }

  if ((isAudioSessionAvailable(void)::audioSessionAvailable & 1) == 0)
  {
    if (kAVVCScope)
    {
      v6 = *kAVVCScope;
      if (!v6)
      {
        return 16000.0;
      }
    }

    else
    {
      v6 = MEMORY[0x1E69E9C10];
      v7 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v9 = 136315906;
      v10 = "AVVCSessionManager.mm";
      v11 = 1024;
      v12 = 1522;
      v13 = 2080;
      v14 = "speechDetectionDeviceSampleRate";
      v15 = 1024;
      v16 = 16000;
      _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d logAndReturnIfAudioSessionIsNotAvailable-%s returning : %d", &v9, 0x22u);
    }

    return 16000.0;
  }

  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  v3 = IsSerializationEnabled(void)::enable;
  if (IsSerializationEnabled(void)::enable == 1)
  {
    std::recursive_mutex::lock(&self->mSessionManagerLock);
  }

  [(AVAudioSession *)self->_audioSession speechDetectionDeviceSampleRate];
  v5 = v4;
  if (v3)
  {
    std::recursive_mutex::unlock(&self->mSessionManagerLock);
  }

  return v5;
}

- (unint64_t)siriInputSource
{
  v17 = *MEMORY[0x1E69E9840];
  if (isAudioSessionAvailable(void)::onceToken != -1)
  {
    dispatch_once(&isAudioSessionAvailable(void)::onceToken, &__block_literal_global_44);
  }

  if (isAudioSessionAvailable(void)::audioSessionAvailable)
  {
    if (IsSerializationEnabled(void)::onceToken != -1)
    {
      dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
    }

    v3 = IsSerializationEnabled(void)::enable;
    if (IsSerializationEnabled(void)::enable == 1)
    {
      std::recursive_mutex::lock(&self->mSessionManagerLock);
    }

    currentRoute = [(AVAudioSession *)self->_audioSession currentRoute];
    siriInputSource = [currentRoute siriInputSource];

    if (v3)
    {
      std::recursive_mutex::unlock(&self->mSessionManagerLock);
    }
  }

  else
  {
    siriInputSource = 1936289391;
    if (kAVVCScope)
    {
      v6 = *kAVVCScope;
      if (!v6)
      {
        return siriInputSource;
      }
    }

    else
    {
      v6 = MEMORY[0x1E69E9C10];
      v7 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v9 = 136315906;
      v10 = "AVVCSessionManager.mm";
      v11 = 1024;
      v12 = 1683;
      v13 = 2080;
      v14 = "siriInputSource";
      v15 = 1024;
      v16 = 1936289391;
      _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d logAndReturnIfAudioSessionIsNotAvailable-%s returning : %d", &v9, 0x22u);
    }
  }

  return siriInputSource;
}

- (BOOL)isSessionActive
{
  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  if (IsSerializationEnabled(void)::enable)
  {
    std::recursive_mutex::lock(&self->mSessionManagerLock);
    sessionState = self->_sessionState;
    std::recursive_mutex::unlock(&self->mSessionManagerLock);
  }

  else
  {
    sessionState = self->_sessionState;
  }

  return sessionState > 4;
}

- (BOOL)setIsUsingBuiltInMicForRecording:(BOOL)recording error:(id *)error
{
  recordingCopy = recording;
  v32 = *MEMORY[0x1E69E9840];
  if (isAudioSessionAvailable(void)::onceToken != -1)
  {
    dispatch_once(&isAudioSessionAvailable(void)::onceToken, &__block_literal_global_44);
  }

  if ((isAudioSessionAvailable(void)::audioSessionAvailable & 1) == 0)
  {
    if (kAVVCScope)
    {
      v12 = *kAVVCScope;
      if (!v12)
      {
LABEL_20:
        LOBYTE(v10) = 0;
        return v10;
      }
    }

    else
    {
      v12 = MEMORY[0x1E69E9C10];
      v13 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      v26 = "AVVCSessionManager.mm";
      v27 = 1024;
      v28 = 2124;
      v29 = 2080;
      *v30 = "setIsUsingBuiltInMicForRecording";
      *&v30[8] = 1024;
      v31 = 0;
      _os_log_impl(&dword_1BA5AC000, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d logAndReturnIfAudioSessionIsNotAvailable-%s returning : %d", buf, 0x22u);
    }

    goto LABEL_20;
  }

  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  v7 = IsSerializationEnabled(void)::enable;
  if (IsSerializationEnabled(void)::enable == 1)
  {
    std::recursive_mutex::lock(&self->mSessionManagerLock);
  }

  ElapsedTime::ElapsedTime(buf, "[AVVCSessionManager setIsUsingBuiltInMicForRecording:error:]", "setIsUsingBuiltInMicForRecording", 0);
  audioSession = self->_audioSession;
  v9 = [MEMORY[0x1E696AD98] numberWithBool:recordingCopy];
  v10 = [(AVAudioSession *)audioSession setMXSessionProperty:*MEMORY[0x1E69B00E8] value:v9 error:error];

  if ((v10 & 1) == 0 && *error)
  {
    if (kAVVCScope)
    {
      v11 = *kAVVCScope;
      if (!v11)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v11 = MEMORY[0x1E69E9C10];
      v14 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v15 = *error;
      v19 = 136315650;
      v20 = "AVVCSessionManager.mm";
      v21 = 1024;
      v22 = 2131;
      v23 = 2112;
      v24 = v15;
      _os_log_impl(&dword_1BA5AC000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d ERROR: setIsUsingBuiltInMicForRecording failed with error: %@", &v19, 0x1Cu);
    }
  }

LABEL_25:
  ElapsedTime::~ElapsedTime(buf);
  if (!kAVVCScope)
  {
    v16 = MEMORY[0x1E69E9C10];
    v17 = MEMORY[0x1E69E9C10];
    goto LABEL_29;
  }

  v16 = *kAVVCScope;
  if (v16)
  {
LABEL_29:
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v26 = "AVVCSessionManager.mm";
      v27 = 1024;
      v28 = 2135;
      v29 = 1024;
      *v30 = recordingCopy;
      *&v30[4] = 1024;
      *&v30[6] = v10;
      _os_log_impl(&dword_1BA5AC000, v16, OS_LOG_TYPE_DEFAULT, "%25s:%-5d setIsUsingBuiltInMicForRecording : %d (bSet = %d)", buf, 0x1Eu);
    }
  }

  if (v7)
  {
    std::recursive_mutex::unlock(&self->mSessionManagerLock);
  }

  return v10;
}

- (BOOL)setPrefersBeingInterruptedByNextActiveRecordingClient:(BOOL)client error:(id *)error
{
  clientCopy = client;
  v32 = *MEMORY[0x1E69E9840];
  if (isAudioSessionAvailable(void)::onceToken != -1)
  {
    dispatch_once(&isAudioSessionAvailable(void)::onceToken, &__block_literal_global_44);
  }

  if ((isAudioSessionAvailable(void)::audioSessionAvailable & 1) == 0)
  {
    if (kAVVCScope)
    {
      v12 = *kAVVCScope;
      if (!v12)
      {
LABEL_20:
        LOBYTE(v10) = 0;
        return v10;
      }
    }

    else
    {
      v12 = MEMORY[0x1E69E9C10];
      v13 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      v26 = "AVVCSessionManager.mm";
      v27 = 1024;
      v28 = 2102;
      v29 = 2080;
      *v30 = "setPrefersBeingInterruptedByNextActiveRecordingClient";
      *&v30[8] = 1024;
      v31 = 0;
      _os_log_impl(&dword_1BA5AC000, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d logAndReturnIfAudioSessionIsNotAvailable-%s returning : %d", buf, 0x22u);
    }

    goto LABEL_20;
  }

  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  v7 = IsSerializationEnabled(void)::enable;
  if (IsSerializationEnabled(void)::enable == 1)
  {
    std::recursive_mutex::lock(&self->mSessionManagerLock);
  }

  ElapsedTime::ElapsedTime(buf, "[AVVCSessionManager setPrefersBeingInterruptedByNextActiveRecordingClient:error:]", "setPrefersBeingInterruptedByNextActiveRecordingClient", 0);
  audioSession = self->_audioSession;
  v9 = [MEMORY[0x1E696AD98] numberWithBool:clientCopy];
  v10 = [(AVAudioSession *)audioSession setMXSessionProperty:*MEMORY[0x1E69B02A0] value:v9 error:error];

  if ((v10 & 1) == 0 && *error)
  {
    if (kAVVCScope)
    {
      v11 = *kAVVCScope;
      if (!v11)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v11 = MEMORY[0x1E69E9C10];
      v14 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v15 = *error;
      v19 = 136315650;
      v20 = "AVVCSessionManager.mm";
      v21 = 1024;
      v22 = 2110;
      v23 = 2112;
      v24 = v15;
      _os_log_impl(&dword_1BA5AC000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d ERROR: setPrefersBeingInterruptedByNextActiveRecordingClient failed with error: %@", &v19, 0x1Cu);
    }
  }

LABEL_25:
  ElapsedTime::~ElapsedTime(buf);
  if (!kAVVCScope)
  {
    v16 = MEMORY[0x1E69E9C10];
    v17 = MEMORY[0x1E69E9C10];
    goto LABEL_29;
  }

  v16 = *kAVVCScope;
  if (v16)
  {
LABEL_29:
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v26 = "AVVCSessionManager.mm";
      v27 = 1024;
      v28 = 2115;
      v29 = 1024;
      *v30 = clientCopy;
      *&v30[4] = 1024;
      *&v30[6] = v10;
      _os_log_impl(&dword_1BA5AC000, v16, OS_LOG_TYPE_DEFAULT, "%25s:%-5d setPrefersBeingInterruptedByNextActiveRecordingClient : %d (bSet = %d)", buf, 0x1Eu);
    }
  }

  if (v7)
  {
    std::recursive_mutex::unlock(&self->mSessionManagerLock);
  }

  return v10;
}

- (BOOL)setMicrophoneAttribution:(BOOL)attribution error:(id *)error
{
  attributionCopy = attribution;
  v32 = *MEMORY[0x1E69E9840];
  if (isAudioSessionAvailable(void)::onceToken != -1)
  {
    dispatch_once(&isAudioSessionAvailable(void)::onceToken, &__block_literal_global_44);
  }

  if ((isAudioSessionAvailable(void)::audioSessionAvailable & 1) == 0)
  {
    if (kAVVCScope)
    {
      v12 = *kAVVCScope;
      if (!v12)
      {
LABEL_20:
        LOBYTE(v10) = 0;
        return v10;
      }
    }

    else
    {
      v12 = MEMORY[0x1E69E9C10];
      v13 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      v26 = "AVVCSessionManager.mm";
      v27 = 1024;
      v28 = 2085;
      v29 = 2080;
      *v30 = "setMicrophoneAttribution";
      *&v30[8] = 1024;
      v31 = 0;
      _os_log_impl(&dword_1BA5AC000, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d logAndReturnIfAudioSessionIsNotAvailable-%s returning : %d", buf, 0x22u);
    }

    goto LABEL_20;
  }

  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  v7 = IsSerializationEnabled(void)::enable;
  if (IsSerializationEnabled(void)::enable == 1)
  {
    std::recursive_mutex::lock(&self->mSessionManagerLock);
  }

  ElapsedTime::ElapsedTime(buf, "[AVVCSessionManager setMicrophoneAttribution:error:]", "setMicrophoneAttribution", 0);
  audioSession = self->_audioSession;
  v9 = [MEMORY[0x1E696AD98] numberWithBool:attributionCopy];
  v10 = [(AVAudioSession *)audioSession setMXSessionProperty:@"MicrophoneAttribution" value:v9 error:error];

  if ((v10 & 1) == 0 && *error)
  {
    if (kAVVCScope)
    {
      v11 = *kAVVCScope;
      if (!v11)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v11 = MEMORY[0x1E69E9C10];
      v14 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v15 = *error;
      v19 = 136315650;
      v20 = "AVVCSessionManager.mm";
      v21 = 1024;
      v22 = 2092;
      v23 = 2112;
      v24 = v15;
      _os_log_impl(&dword_1BA5AC000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d ERROR: setMicrophoneAttribution failed with error: %@", &v19, 0x1Cu);
    }
  }

LABEL_25:
  ElapsedTime::~ElapsedTime(buf);
  if (!kAVVCScope)
  {
    v16 = MEMORY[0x1E69E9C10];
    v17 = MEMORY[0x1E69E9C10];
    goto LABEL_29;
  }

  v16 = *kAVVCScope;
  if (v16)
  {
LABEL_29:
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v26 = "AVVCSessionManager.mm";
      v27 = 1024;
      v28 = 2096;
      v29 = 1024;
      *v30 = attributionCopy;
      *&v30[4] = 1024;
      *&v30[6] = v10;
      _os_log_impl(&dword_1BA5AC000, v16, OS_LOG_TYPE_DEFAULT, "%25s:%-5d setting microphone attribution : %d (bSet = %d)", buf, 0x1Eu);
    }
  }

  if (v7)
  {
    std::recursive_mutex::unlock(&self->mSessionManagerLock);
  }

  return v10;
}

- (BOOL)isInputAvailable
{
  v18 = *MEMORY[0x1E69E9840];
  if (isAudioSessionAvailable(void)::onceToken != -1)
  {
    dispatch_once(&isAudioSessionAvailable(void)::onceToken, &__block_literal_global_44);
  }

  if ((isAudioSessionAvailable(void)::audioSessionAvailable & 1) == 0)
  {
    if (kAVVCScope)
    {
      v6 = *kAVVCScope;
      if (!v6)
      {
LABEL_18:
        LOBYTE(isInputAvailable) = 0;
        return isInputAvailable;
      }
    }

    else
    {
      v6 = MEMORY[0x1E69E9C10];
      v7 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v10 = 136315906;
      v11 = "AVVCSessionManager.mm";
      v12 = 1024;
      v13 = 2070;
      v14 = 2080;
      v15 = "isInputAvailable";
      v16 = 1024;
      v17 = 0;
      _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d logAndReturnIfAudioSessionIsNotAvailable-%s returning : %d", &v10, 0x22u);
    }

    goto LABEL_18;
  }

  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  v3 = IsSerializationEnabled(void)::enable;
  if (IsSerializationEnabled(void)::enable == 1)
  {
    std::recursive_mutex::lock(&self->mSessionManagerLock);
  }

  ElapsedTime::ElapsedTime(&v10, "[AVVCSessionManager isInputAvailable]", "isInputAvailable", 0);
  isInputAvailable = [(AVAudioSession *)self->_audioSession isInputAvailable];
  ElapsedTime::~ElapsedTime(&v10);
  if (!kAVVCScope)
  {
    v5 = MEMORY[0x1E69E9C10];
    v8 = MEMORY[0x1E69E9C10];
    goto LABEL_20;
  }

  v5 = *kAVVCScope;
  if (v5)
  {
LABEL_20:
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315650;
      v11 = "AVVCSessionManager.mm";
      v12 = 1024;
      v13 = 2078;
      v14 = 1024;
      LODWORD(v15) = isInputAvailable;
      _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d input available %d", &v10, 0x18u);
    }
  }

  if (v3)
  {
    std::recursive_mutex::unlock(&self->mSessionManagerLock);
  }

  return isInputAvailable;
}

- (BOOL)setDuckToLevelScalar:(id)scalar error:(id *)error
{
  v19 = *MEMORY[0x1E69E9840];
  scalarCopy = scalar;
  if (isAudioSessionAvailable(void)::onceToken != -1)
  {
    dispatch_once(&isAudioSessionAvailable(void)::onceToken, &__block_literal_global_44);
  }

  if ((isAudioSessionAvailable(void)::audioSessionAvailable & 1) == 0)
  {
    if (kAVVCScope)
    {
      v8 = *kAVVCScope;
      if (!v8)
      {
LABEL_12:
        v7 = 1;
        goto LABEL_13;
      }
    }

    else
    {
      v8 = MEMORY[0x1E69E9C10];
      v9 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v11 = 136315906;
      v12 = "AVVCSessionManager.mm";
      v13 = 1024;
      v14 = 2043;
      v15 = 2080;
      v16 = "setDuckToLevelScalar";
      v17 = 1024;
      v18 = 1;
      _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d logAndReturnIfAudioSessionIsNotAvailable-%s returning : %d", &v11, 0x22u);
    }

    goto LABEL_12;
  }

  v7 = [(AVAudioSession *)self->_audioSession setDuckToLevelScalar:scalarCopy error:error];
LABEL_13:

  return v7;
}

- (BOOL)setDuckToLevelDB:(id)b error:(id *)error
{
  v19 = *MEMORY[0x1E69E9840];
  bCopy = b;
  if (isAudioSessionAvailable(void)::onceToken != -1)
  {
    dispatch_once(&isAudioSessionAvailable(void)::onceToken, &__block_literal_global_44);
  }

  if ((isAudioSessionAvailable(void)::audioSessionAvailable & 1) == 0)
  {
    if (kAVVCScope)
    {
      v8 = *kAVVCScope;
      if (!v8)
      {
LABEL_12:
        v7 = 1;
        goto LABEL_13;
      }
    }

    else
    {
      v8 = MEMORY[0x1E69E9C10];
      v9 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v11 = 136315906;
      v12 = "AVVCSessionManager.mm";
      v13 = 1024;
      v14 = 2036;
      v15 = 2080;
      v16 = "setDuckToLevelDB";
      v17 = 1024;
      v18 = 1;
      _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d logAndReturnIfAudioSessionIsNotAvailable-%s returning : %d", &v11, 0x22u);
    }

    goto LABEL_12;
  }

  v7 = [(AVAudioSession *)self->_audioSession setDuckToLevelDB:bCopy error:error];
LABEL_13:

  return v7;
}

- (int64_t)inputNumberOfChannels
{
  v16 = *MEMORY[0x1E69E9840];
  if (isAudioSessionAvailable(void)::onceToken != -1)
  {
    dispatch_once(&isAudioSessionAvailable(void)::onceToken, &__block_literal_global_44);
  }

  if ((isAudioSessionAvailable(void)::audioSessionAvailable & 1) == 0)
  {
    if (kAVVCScope)
    {
      v5 = *kAVVCScope;
      if (!v5)
      {
        return 1;
      }
    }

    else
    {
      v5 = MEMORY[0x1E69E9C10];
      v6 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v8 = 136315906;
      v9 = "AVVCSessionManager.mm";
      v10 = 1024;
      v11 = 2028;
      v12 = 2080;
      v13 = "inputNumberOfChannels";
      v14 = 1024;
      v15 = 1;
      _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d logAndReturnIfAudioSessionIsNotAvailable-%s returning : %d", &v8, 0x22u);
    }

    return 1;
  }

  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  v3 = IsSerializationEnabled(void)::enable;
  if (IsSerializationEnabled(void)::enable == 1)
  {
    std::recursive_mutex::lock(&self->mSessionManagerLock);
  }

  inputNumberOfChannels = [(AVAudioSession *)self->_audioSession inputNumberOfChannels];
  if (v3)
  {
    std::recursive_mutex::unlock(&self->mSessionManagerLock);
  }

  return inputNumberOfChannels;
}

- (BOOL)setRecordingFromRemoteInput:(BOOL)input error:(id *)error
{
  inputCopy = input;
  v25 = *MEMORY[0x1E69E9840];
  if (isAudioSessionAvailable(void)::onceToken != -1)
  {
    dispatch_once(&isAudioSessionAvailable(void)::onceToken, &__block_literal_global_44);
  }

  if ((isAudioSessionAvailable(void)::audioSessionAvailable & 1) == 0)
  {
    if (kAVVCScope)
    {
      v9 = *kAVVCScope;
      if (!v9)
      {
        return 1;
      }
    }

    else
    {
      v9 = MEMORY[0x1E69E9C10];
      v13 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v19 = 136315906;
      v20 = "AVVCSessionManager.mm";
      v21 = 1024;
      v22 = 2010;
      v23 = 2080;
      *v24 = "setRecordingFromRemoteInput";
      *&v24[8] = 1024;
      *&v24[10] = 1;
      _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d logAndReturnIfAudioSessionIsNotAvailable-%s returning : %d", &v19, 0x22u);
    }

    return 1;
  }

  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  v7 = IsSerializationEnabled(void)::enable;
  if (IsSerializationEnabled(void)::enable == 1)
  {
    std::recursive_mutex::lock(&self->mSessionManagerLock);
  }

  if (kAVVCScope)
  {
    v8 = *kAVVCScope;
    if (!v8)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v8 = MEMORY[0x1E69E9C10];
    v10 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 136315650;
    v20 = "AVVCSessionManager.mm";
    v21 = 1024;
    v22 = 2013;
    v23 = 1024;
    *v24 = inputCopy;
    _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d setRecordingFromRemoteInput: %d", &v19, 0x18u);
  }

LABEL_18:
  ElapsedTime::ElapsedTime(&v19, "[AVVCSessionManager setRecordingFromRemoteInput:error:]", "setRecordingFromRemoteInput", 0);
  v11 = [(AVAudioSession *)self->_audioSession setRecordingFromRemoteInput:inputCopy error:error];
  ElapsedTime::~ElapsedTime(&v19);
  if ((v11 & 1) == 0 && *error)
  {
    if (kAVVCScope)
    {
      v12 = *kAVVCScope;
      if (!v12)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v12 = MEMORY[0x1E69E9C10];
      v14 = MEMORY[0x1E69E9C10];
    }

    v15 = v12;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      code = [*error code];
      v17 = [*error description];
      v19 = 136315906;
      v20 = "AVVCSessionManager.mm";
      v21 = 1024;
      v22 = 2020;
      v23 = 1024;
      *v24 = code;
      *&v24[4] = 2112;
      *&v24[6] = v17;
      _os_log_impl(&dword_1BA5AC000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d Error setting recording from remote input %d, %@", &v19, 0x22u);
    }
  }

LABEL_32:
  if (v7)
  {
    std::recursive_mutex::unlock(&self->mSessionManagerLock);
  }

  return v11;
}

- (void)removeSessionNotifications:(id)notifications
{
  notificationsCopy = notifications;
  if (isAudioSessionAvailable(void)::onceToken != -1)
  {
    dispatch_once(&isAudioSessionAvailable(void)::onceToken, &__block_literal_global_44);
  }

  if (isAudioSessionAvailable(void)::audioSessionAvailable == 1)
  {
    if (IsSerializationEnabled(void)::onceToken != -1)
    {
      dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
    }

    v4 = IsSerializationEnabled(void)::enable;
    if (IsSerializationEnabled(void)::enable == 1)
    {
      std::recursive_mutex::lock(&self->mSessionManagerLock);
    }

    if (notificationsCopy && self->_audioSession)
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter removeObserver:notificationsCopy name:*MEMORY[0x1E698D550] object:self->_audioSession];

      defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter2 removeObserver:notificationsCopy name:*MEMORY[0x1E698D6C8] object:self->_audioSession];
    }

    if (v4)
    {
      std::recursive_mutex::unlock(&self->mSessionManagerLock);
    }
  }
}

- (void)setupSessionNotifications:(id)notifications
{
  notificationsCopy = notifications;
  if (isAudioSessionAvailable(void)::onceToken != -1)
  {
    dispatch_once(&isAudioSessionAvailable(void)::onceToken, &__block_literal_global_44);
  }

  if (isAudioSessionAvailable(void)::audioSessionAvailable == 1)
  {
    if (IsSerializationEnabled(void)::onceToken != -1)
    {
      dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
    }

    v4 = IsSerializationEnabled(void)::enable;
    if (IsSerializationEnabled(void)::enable == 1)
    {
      std::recursive_mutex::lock(&self->mSessionManagerLock);
    }

    if (notificationsCopy && self->_audioSession)
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter addObserver:notificationsCopy selector:NSSelectorFromString(&cfstr_Handleinterrup_0.isa) name:*MEMORY[0x1E698D550] object:self->_audioSession];

      defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter2 addObserver:notificationsCopy selector:NSSelectorFromString(&cfstr_Handleroutecha_0.isa) name:*MEMORY[0x1E698D6C8] object:self->_audioSession];
    }

    if (v4)
    {
      std::recursive_mutex::unlock(&self->mSessionManagerLock);
    }
  }
}

- (id)getActiveSessionDisplayIDsAsString
{
  if (isAudioSessionAvailable(void)::onceToken != -1)
  {
    dispatch_once(&isAudioSessionAvailable(void)::onceToken, &__block_literal_global_44);
  }

  if (isAudioSessionAvailable(void)::audioSessionAvailable == 1)
  {
    if (IsSerializationEnabled(void)::onceToken != -1)
    {
      dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
    }

    v3 = IsSerializationEnabled(void)::enable;
    if (IsSerializationEnabled(void)::enable == 1)
    {
      std::recursive_mutex::lock(&self->mSessionManagerLock);
    }

    activeSessionDisplayIDs = [(AVAudioSession *)self->_audioSession activeSessionDisplayIDs];
    v5 = [activeSessionDisplayIDs componentsJoinedByString:{@", "}];

    v6 = v5;
    if (v3)
    {
      std::recursive_mutex::unlock(&self->mSessionManagerLock);
    }
  }

  else
  {
    v6 = &stru_1F384E730;
  }

  return v6;
}

- (unsigned)getOpaqueSessionID
{
  v16 = *MEMORY[0x1E69E9840];
  if (isAudioSessionAvailable(void)::onceToken != -1)
  {
    dispatch_once(&isAudioSessionAvailable(void)::onceToken, &__block_literal_global_44);
  }

  if ((isAudioSessionAvailable(void)::audioSessionAvailable & 1) == 0)
  {
    if (kAVVCScope)
    {
      v5 = *kAVVCScope;
      if (!v5)
      {
        return 0;
      }
    }

    else
    {
      v5 = MEMORY[0x1E69E9C10];
      v6 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v8 = 136315906;
      v9 = "AVVCSessionManager.mm";
      v10 = 1024;
      v11 = 1951;
      v12 = 2080;
      v13 = "getOpaqueSessionID";
      v14 = 1024;
      v15 = 0;
      _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d logAndReturnIfAudioSessionIsNotAvailable-%s returning : %d", &v8, 0x22u);
    }

    return 0;
  }

  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  v3 = IsSerializationEnabled(void)::enable;
  if (IsSerializationEnabled(void)::enable == 1)
  {
    std::recursive_mutex::lock(&self->mSessionManagerLock);
  }

  opaqueSessionID = [(AVAudioSession *)self->_audioSession opaqueSessionID];
  if (v3)
  {
    std::recursive_mutex::unlock(&self->mSessionManagerLock);
  }

  return opaqueSessionID;
}

- (BOOL)setActive:(BOOL)active withOptions:(unint64_t)options error:(id *)error
{
  activeCopy = active;
  v22 = *MEMORY[0x1E69E9840];
  if (isAudioSessionAvailable(void)::onceToken != -1)
  {
    dispatch_once(&isAudioSessionAvailable(void)::onceToken, &__block_literal_global_44);
  }

  if ((isAudioSessionAvailable(void)::audioSessionAvailable & 1) == 0)
  {
    if (kAVVCScope)
    {
      v11 = *kAVVCScope;
      if (!v11)
      {
        return 1;
      }
    }

    else
    {
      v11 = MEMORY[0x1E69E9C10];
      v12 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v14 = 136315906;
      v15 = "AVVCSessionManager.mm";
      v16 = 1024;
      v17 = 1940;
      v18 = 2080;
      v19 = "setActive";
      v20 = 1024;
      v21 = 1;
      _os_log_impl(&dword_1BA5AC000, v11, OS_LOG_TYPE_DEBUG, "%25s:%-5d logAndReturnIfAudioSessionIsNotAvailable-%s returning : %d", &v14, 0x22u);
    }

    return 1;
  }

  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  v9 = IsSerializationEnabled(void)::enable;
  if (IsSerializationEnabled(void)::enable == 1)
  {
    std::recursive_mutex::lock(&self->mSessionManagerLock);
  }

  v10 = [(AVAudioSession *)self->_audioSession setActive:activeCopy withOptions:options error:error];
  if (v9)
  {
    std::recursive_mutex::unlock(&self->mSessionManagerLock);
  }

  return v10;
}

- (BOOL)setActivationContext:(id)context error:(id *)error
{
  v20 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  if (isAudioSessionAvailable(void)::onceToken != -1)
  {
    dispatch_once(&isAudioSessionAvailable(void)::onceToken, &__block_literal_global_44);
  }

  if ((isAudioSessionAvailable(void)::audioSessionAvailable & 1) == 0)
  {
    if (kAVVCScope)
    {
      v9 = *kAVVCScope;
      if (!v9)
      {
LABEL_17:
        v8 = 0;
        goto LABEL_18;
      }
    }

    else
    {
      v9 = MEMORY[0x1E69E9C10];
      v10 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v12 = 136315906;
      v13 = "AVVCSessionManager.mm";
      v14 = 1024;
      v15 = 1929;
      v16 = 2080;
      v17 = "setActivationContext";
      v18 = 1024;
      v19 = 0;
      _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d logAndReturnIfAudioSessionIsNotAvailable-%s returning : %d", &v12, 0x22u);
    }

    goto LABEL_17;
  }

  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  v7 = IsSerializationEnabled(void)::enable;
  if (IsSerializationEnabled(void)::enable == 1)
  {
    std::recursive_mutex::lock(&self->mSessionManagerLock);
  }

  v8 = [(AVAudioSession *)self->_audioSession setActivationContext:contextCopy error:error];
  if (v7)
  {
    std::recursive_mutex::unlock(&self->mSessionManagerLock);
  }

LABEL_18:

  return v8;
}

- (BOOL)getSiriInputSource:(unint64_t *)source withIdentifier:(id *)identifier withIsMicrophoneCheck:(BOOL *)check forActivationMode:(int64_t)mode
{
  if (isAudioSessionAvailable(void)::onceToken != -1)
  {
    dispatch_once(&isAudioSessionAvailable(void)::onceToken, &__block_literal_global_44);
  }

  if ((isAudioSessionAvailable(void)::audioSessionAvailable & 1) == 0)
  {
    *source = 1936289391;
    return 1;
  }

  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  v11 = IsSerializationEnabled(void)::enable;
  if (IsSerializationEnabled(void)::enable == 1)
  {
    std::recursive_mutex::lock(&self->mSessionManagerLock);
  }

  currentRoute = [(AVAudioSession *)self->_audioSession currentRoute];
  siriInputSource = [currentRoute siriInputSource];
  v14 = 0;
  siriRemoteInputIdentifier = 0;
  *source = siriInputSource;
  if (siriInputSource > 1936290659)
  {
    if (siriInputSource == 1936290660)
    {
LABEL_23:
      v14 = [(AVVCSessionManager *)self predictIfMicrophoneShouldBeUsedForActivationMode:mode];
      siriRemoteInputIdentifier = 0;
      if (!identifier)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    if (siriInputSource != 1936679529)
    {
      goto LABEL_16;
    }

LABEL_15:
    siriRemoteInputIdentifier = [currentRoute siriRemoteInputIdentifier];
    v14 = 0;
    goto LABEL_16;
  }

  if (siriInputSource == 1936024681)
  {
    goto LABEL_15;
  }

  if (siriInputSource == 1936286822)
  {
    goto LABEL_23;
  }

LABEL_16:
  if (identifier)
  {
LABEL_17:
    v16 = siriRemoteInputIdentifier;
    *identifier = siriRemoteInputIdentifier;
  }

LABEL_18:
  if (check)
  {
    *check = v14;
  }

  if (v11)
  {
    std::recursive_mutex::unlock(&self->mSessionManagerLock);
  }

  return 1;
}

- (BOOL)predictIfMicrophoneShouldBeUsedForActivationMode:(int64_t)mode
{
  v84 = *MEMORY[0x1E69E9840];
  if (isAudioSessionAvailable(void)::onceToken != -1)
  {
    dispatch_once(&isAudioSessionAvailable(void)::onceToken, &__block_literal_global_44);
  }

  if ((isAudioSessionAvailable(void)::audioSessionAvailable & 1) == 0)
  {
    if (kAVVCScope)
    {
      v6 = *kAVVCScope;
      if (!v6)
      {
LABEL_20:
        LOBYTE(v7) = 0;
        return v7 & 1;
      }
    }

    else
    {
      v6 = MEMORY[0x1E69E9C10];
      v8 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      v67 = "AVVCSessionManager.mm";
      v68 = 1024;
      v69 = 1762;
      v70 = 2080;
      v71 = "predictIfMicrophoneShouldBeUsedForActivationMode";
      v72 = 1024;
      LODWORD(v73) = 0;
      _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d logAndReturnIfAudioSessionIsNotAvailable-%s returning : %d", buf, 0x22u);
    }

    goto LABEL_20;
  }

  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  v49 = IsSerializationEnabled(void)::enable;
  if (IsSerializationEnabled(void)::enable == 1)
  {
    std::recursive_mutex::lock(&self->mSessionManagerLock);
  }

  if ((isHACProduct() & 1) == 0)
  {
    LOBYTE(v7) = 0;
    goto LABEL_100;
  }

  availableInputs = [(AVAudioSession *)self->_audioSession availableInputs];
  if (kAVVCScope)
  {
    v5 = *kAVVCScope;
    if (!v5)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v9 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v67 = "AVVCSessionManager.mm";
    v68 = 1024;
    v69 = 1771;
    v70 = 2112;
    v71 = availableInputs;
    _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d availableInputs: %@", buf, 0x1Cu);
  }

LABEL_25:
  v65 = 0;
  currentRoute = [(AVAudioSession *)self->_audioSession currentRoute];
  extractFirstInputPortTypeFromRouteDescription(currentRoute, &v65);
  if (![availableInputs count])
  {
    if (kAVVCScope)
    {
      v13 = *kAVVCScope;
      if (!v13)
      {
        goto LABEL_49;
      }
    }

    else
    {
      v13 = MEMORY[0x1E69E9C10];
      v23 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v67 = "AVVCSessionManager.mm";
      v68 = 1024;
      v69 = 1778;
      _os_log_impl(&dword_1BA5AC000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d predictIfMicrophoneShouldBeUsedForActivationMode: No available inputs.", buf, 0x12u);
    }

    goto LABEL_86;
  }

  if ([availableInputs count] == 1)
  {
    v10 = [availableInputs objectAtIndexedSubscript:0];
    portType = [v10 portType];

    if (kAVVCScope)
    {
      v12 = *kAVVCScope;
      v13 = portType;
      if (!v12)
      {
LABEL_57:
        if (v13 == *MEMORY[0x1E698D660])
        {
          LOBYTE(v7) = 1;
          goto LABEL_91;
        }

        if (kAVVCScope)
        {
          v25 = *kAVVCScope;
          if (!v25)
          {
            goto LABEL_86;
          }
        }

        else
        {
          v25 = MEMORY[0x1E69E9C10];
          v43 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v67 = "AVVCSessionManager.mm";
          v68 = 1024;
          v69 = 1786;
          _os_log_impl(&dword_1BA5AC000, v25, OS_LOG_TYPE_ERROR, "%25s:%-5d predictIfMicrophoneShouldBeUsedForActivationMode: Only one input available: Not Builtin Mic.", buf, 0x12u);
        }

        LOBYTE(v7) = 0;
        v13 = portType;
        goto LABEL_91;
      }
    }

    else
    {
      v12 = MEMORY[0x1E69E9C10];
      v24 = MEMORY[0x1E69E9C10];
      v13 = portType;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v67 = "AVVCSessionManager.mm";
      v68 = 1024;
      v69 = 1782;
      v70 = 2112;
      v71 = v13;
      _os_log_impl(&dword_1BA5AC000, v12, OS_LOG_TYPE_DEFAULT, "%25s:%-5d predictIfMicrophoneShouldBeUsedForActivationMode: Only one input available: %@", buf, 0x1Cu);
    }

    v13 = portType;
    goto LABEL_57;
  }

  if (mode == 1752132965)
  {
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v13 = availableInputs;
    obj = v13;
    v26 = [v13 countByEnumeratingWithState:&v57 objects:v82 count:16];
    if (!v26)
    {
      goto LABEL_86;
    }

    v7 = 0;
    v27 = *v58;
    v55 = *MEMORY[0x1E698D658];
    v54 = *MEMORY[0x1E698D6A8];
    v53 = *MEMORY[0x1E698D690];
    v50 = v65;
LABEL_64:
    v56 = v26;
    v28 = 0;
    while (1)
    {
      if (*v58 != v27)
      {
        objc_enumerationMutation(obj);
      }

      v29 = *(*(&v57 + 1) + 8 * v28);
      portType2 = [v29 portType];
      if (kAVVCScope)
      {
        v31 = *kAVVCScope;
        if (!v31)
        {
          goto LABEL_74;
        }
      }

      else
      {
        v32 = MEMORY[0x1E69E9C10];
        v33 = MEMORY[0x1E69E9C10];
        v31 = v32;
      }

      v34 = v31;
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v35 = v7;
        [v29 portName];
        v37 = v36 = v27;
        v38 = [v29 UID];
        portSubType = [v29 portSubType];
        v40 = Get4CCFromInt([v29 endpointType]);
        isHeadphones = [v29 isHeadphones];
        *buf = 136316930;
        v67 = "AVVCSessionManager.mm";
        v68 = 1024;
        v69 = 1833;
        v70 = 2112;
        v71 = portType2;
        v72 = 2112;
        v73 = v37;
        v74 = 2112;
        v75 = v38;
        v76 = 2048;
        v77 = portSubType;
        v78 = 2112;
        v79 = v40;
        v80 = 1024;
        v81 = isHeadphones;
        _os_log_impl(&dword_1BA5AC000, v34, OS_LOG_TYPE_DEFAULT, "%25s:%-5d predictIfMicrophoneShouldBeUsedForActivationMode: Available input: [ portType(%@), portName(%@), portUID(%@), portSubType(%ld), endpointType(%@) isHeadphones(%d) ]", buf, 0x4Au);

        v27 = v36;
        v7 = v35;
      }

LABEL_74:
      if (portType2 == v55)
      {
        if (![v29 isHeadphones])
        {
          v7 = 1;
          goto LABEL_83;
        }

        isBTDeviceInEar = [(AVVCSessionManager *)self isBTDeviceInEar];
        goto LABEL_80;
      }

      if (portType2 == v54)
      {
        v7 = 0;
        goto LABEL_83;
      }

      if (portType2 == v53)
      {
        isBTDeviceInEar = areNSStringsEqualOrBothNil(v50, v53);
LABEL_80:
        v7 = isBTDeviceInEar ^ 1u;
      }

LABEL_83:

      if (v56 == ++v28)
      {
        v13 = obj;
        v26 = [obj countByEnumeratingWithState:&v57 objects:v82 count:16];
        if (!v26)
        {
          goto LABEL_91;
        }

        goto LABEL_64;
      }
    }
  }

  if (mode != 1684628340)
  {
LABEL_49:
    LOBYTE(v7) = 0;
    goto LABEL_92;
  }

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v13 = availableInputs;
  v14 = v13;
  v15 = [v13 countByEnumeratingWithState:&v61 objects:v83 count:16];
  if (!v15)
  {
LABEL_86:
    LOBYTE(v7) = 0;
    goto LABEL_91;
  }

  LOBYTE(v7) = 0;
  v16 = *v62;
  v17 = *MEMORY[0x1E698D658];
  v18 = *MEMORY[0x1E698D660];
  do
  {
    for (i = 0; i != v15; ++i)
    {
      if (*v62 != v16)
      {
        objc_enumerationMutation(v14);
      }

      v20 = *(*(&v61 + 1) + 8 * i);
      portType3 = [v20 portType];
      v22 = portType3;
      if (portType3 == v17)
      {
        if ([v20 isHeadphones])
        {
          LOBYTE(v7) = ![(AVVCSessionManager *)self isBTDeviceInEar];
        }

        else
        {
          LOBYTE(v7) = 1;
        }
      }

      else if (portType3 != v18)
      {
        LOBYTE(v7) = 0;
      }
    }

    v13 = v14;
    v15 = [v14 countByEnumeratingWithState:&v61 objects:v83 count:16];
  }

  while (v15);
LABEL_91:

LABEL_92:
  if (!kAVVCScope)
  {
    v44 = MEMORY[0x1E69E9C10];
    v45 = MEMORY[0x1E69E9C10];
    goto LABEL_96;
  }

  v44 = *kAVVCScope;
  if (v44)
  {
LABEL_96:
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v67 = "AVVCSessionManager.mm";
      v68 = 1024;
      v69 = 1873;
      v70 = 1024;
      LODWORD(v71) = v7 & 1;
      _os_log_impl(&dword_1BA5AC000, v44, OS_LOG_TYPE_DEFAULT, "%25s:%-5d predictIfMicrophoneShouldBeUsedForActivationMode: isMicrophoneBuiltin(%d)", buf, 0x18u);
    }
  }

LABEL_100:
  if (v49)
  {
    std::recursive_mutex::unlock(&self->mSessionManagerLock);
  }

  return v7 & 1;
}

- (BOOL)isBTDeviceInEar
{
  v24 = *MEMORY[0x1E69E9840];
  pickedRoute = [(AVVCSessionManager *)self pickedRoute];
  if (kAVVCScope)
  {
    v3 = *kAVVCScope;
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v3 = MEMORY[0x1E69E9C10];
    v4 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 136315650;
    v19 = "AVVCSessionManager.mm";
    v20 = 1024;
    v21 = 1730;
    v22 = 2112;
    v23 = pickedRoute;
    _os_log_impl(&dword_1BA5AC000, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d isBTDeviceInEar: pickedRoute from AudioSession: %@", &v18, 0x1Cu);
  }

LABEL_8:
  if (pickedRoute)
  {
    v5 = [pickedRoute objectForKey:@"IsBTRoute"];
    bOOLValue = [v5 BOOLValue];

    if (bOOLValue)
    {
      v7 = [pickedRoute objectForKey:@"PreferredExternalRouteDetails_InEarDetectSupported"];
      bOOLValue2 = [v7 BOOLValue];

      v9 = [pickedRoute objectForKey:@"PreferredExternalRouteDetails_InEarDetectEnabled"];
      LOBYTE(v7) = [v9 BOOLValue];

      v10 = [pickedRoute objectForKey:@"PreferredExternalRouteDetails_IsActive"];
      bOOLValue3 = [v10 BOOLValue];

      v12 = bOOLValue2 & v7 ^ 1 | bOOLValue3;
      goto LABEL_19;
    }

    if (kAVVCScope)
    {
      v13 = *kAVVCScope;
      if (!v13)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v13 = MEMORY[0x1E69E9C10];
      v14 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v18 = 136315394;
      v19 = "AVVCSessionManager.mm";
      v20 = 1024;
      v21 = 1750;
      _os_log_impl(&dword_1BA5AC000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d isBTDeviceInEar: pickedRoute is not a BT device", &v18, 0x12u);
    }
  }

LABEL_18:
  v12 = 0;
LABEL_19:
  if (kAVVCScope)
  {
    v15 = *kAVVCScope;
    if (!v15)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v15 = MEMORY[0x1E69E9C10];
    v16 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 136315650;
    v19 = "AVVCSessionManager.mm";
    v20 = 1024;
    v21 = 1754;
    v22 = 1024;
    LODWORD(v23) = v12 & 1;
    _os_log_impl(&dword_1BA5AC000, v15, OS_LOG_TYPE_DEFAULT, "%25s:%-5d isBTDeviceInEar: (%d)", &v18, 0x18u);
  }

LABEL_26:
  return v12 & 1;
}

- (BOOL)isPickedRouteW1
{
  v20 = *MEMORY[0x1E69E9840];
  pickedRoute = [(AVVCSessionManager *)self pickedRoute];
  v3 = pickedRoute;
  if (pickedRoute)
  {
    v4 = [pickedRoute objectForKey:@"BTDetails_ProductID"];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 hasSuffix:@"76, 8194"];
    }

    else
    {
      v6 = 0;
    }

    if (kAVVCScope)
    {
      v7 = *kAVVCScope;
      if (!v7)
      {
LABEL_21:

        goto LABEL_22;
      }
    }

    else
    {
      v7 = MEMORY[0x1E69E9C10];
      v8 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = "NO";
      v13 = "AVVCSessionManager.mm";
      v14 = 1024;
      v15 = 1715;
      v12 = 136315906;
      if (v6)
      {
        v9 = "YES";
      }

      v16 = 2080;
      v17 = v9;
      v18 = 2112;
      v19 = v5;
      _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d isPickedRouteW1: %s, id: %@", &v12, 0x26u);
    }

    goto LABEL_21;
  }

  if (!kAVVCScope)
  {
    v5 = MEMORY[0x1E69E9C10];
    v10 = MEMORY[0x1E69E9C10];
    goto LABEL_18;
  }

  v5 = *kAVVCScope;
  if (v5)
  {
LABEL_18:
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315394;
      v13 = "AVVCSessionManager.mm";
      v14 = 1024;
      v15 = 1718;
      _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d isPickedRouteW1: NO. pickedRoute is nil", &v12, 0x12u);
    }

    LOBYTE(v6) = 0;
    goto LABEL_21;
  }

  LOBYTE(v6) = 0;
LABEL_22:

  return v6;
}

- (id)siriRemoteInputIdentifier
{
  if (isAudioSessionAvailable(void)::onceToken != -1)
  {
    dispatch_once(&isAudioSessionAvailable(void)::onceToken, &__block_literal_global_44);
  }

  if (isAudioSessionAvailable(void)::audioSessionAvailable == 1)
  {
    if (IsSerializationEnabled(void)::onceToken != -1)
    {
      dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
    }

    v3 = IsSerializationEnabled(void)::enable;
    if (IsSerializationEnabled(void)::enable == 1)
    {
      std::recursive_mutex::lock(&self->mSessionManagerLock);
    }

    currentRoute = [(AVAudioSession *)self->_audioSession currentRoute];
    siriRemoteInputIdentifier = [currentRoute siriRemoteInputIdentifier];

    v6 = siriRemoteInputIdentifier;
    if (v3)
    {
      std::recursive_mutex::unlock(&self->mSessionManagerLock);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)sessionCurrentInputRoutes
{
  if (isAudioSessionAvailable(void)::onceToken != -1)
  {
    dispatch_once(&isAudioSessionAvailable(void)::onceToken, &__block_literal_global_44);
  }

  if (isAudioSessionAvailable(void)::audioSessionAvailable == 1)
  {
    if (IsSerializationEnabled(void)::onceToken != -1)
    {
      dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
    }

    v3 = IsSerializationEnabled(void)::enable;
    if (IsSerializationEnabled(void)::enable == 1)
    {
      std::recursive_mutex::lock(&self->mSessionManagerLock);
    }

    currentRoute = [(AVAudioSession *)self->_audioSession currentRoute];
    inputs = [currentRoute inputs];

    v6 = inputs;
    if (v3)
    {
      std::recursive_mutex::unlock(&self->mSessionManagerLock);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)sessionCurrentOutputRoutes
{
  if (isAudioSessionAvailable(void)::onceToken != -1)
  {
    dispatch_once(&isAudioSessionAvailable(void)::onceToken, &__block_literal_global_44);
  }

  if (isAudioSessionAvailable(void)::audioSessionAvailable == 1)
  {
    if (IsSerializationEnabled(void)::onceToken != -1)
    {
      dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
    }

    v3 = IsSerializationEnabled(void)::enable;
    if (IsSerializationEnabled(void)::enable == 1)
    {
      std::recursive_mutex::lock(&self->mSessionManagerLock);
    }

    currentRoute = [(AVAudioSession *)self->_audioSession currentRoute];
    outputs = [currentRoute outputs];

    v6 = outputs;
    if (v3)
    {
      std::recursive_mutex::unlock(&self->mSessionManagerLock);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)setPreferredSampleRate:(double)rate error:(id *)error
{
  v20 = *MEMORY[0x1E69E9840];
  if (isAudioSessionAvailable(void)::onceToken != -1)
  {
    dispatch_once(&isAudioSessionAvailable(void)::onceToken, &__block_literal_global_44);
  }

  if ((isAudioSessionAvailable(void)::audioSessionAvailable & 1) == 0)
  {
    if (kAVVCScope)
    {
      v9 = *kAVVCScope;
      if (!v9)
      {
        return 1;
      }
    }

    else
    {
      v9 = MEMORY[0x1E69E9C10];
      v10 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v12 = 136315906;
      v13 = "AVVCSessionManager.mm";
      v14 = 1024;
      v15 = 1625;
      v16 = 2080;
      v17 = "setPreferredSampleRate:error";
      v18 = 1024;
      v19 = 1;
      _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d logAndReturnIfAudioSessionIsNotAvailable-%s returning : %d", &v12, 0x22u);
    }

    return 1;
  }

  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  v7 = IsSerializationEnabled(void)::enable;
  if (IsSerializationEnabled(void)::enable == 1)
  {
    std::recursive_mutex::lock(&self->mSessionManagerLock);
  }

  v8 = [(AVAudioSession *)self->_audioSession setPreferredSampleRate:error error:rate];
  if (v7)
  {
    std::recursive_mutex::unlock(&self->mSessionManagerLock);
  }

  return v8;
}

- (BOOL)setIAmTheAssistant:(BOOL)assistant error:(id *)error
{
  assistantCopy = assistant;
  v20 = *MEMORY[0x1E69E9840];
  if (isAudioSessionAvailable(void)::onceToken != -1)
  {
    dispatch_once(&isAudioSessionAvailable(void)::onceToken, &__block_literal_global_44);
  }

  if ((isAudioSessionAvailable(void)::audioSessionAvailable & 1) == 0)
  {
    if (kAVVCScope)
    {
      v9 = *kAVVCScope;
      if (!v9)
      {
        return 1;
      }
    }

    else
    {
      v9 = MEMORY[0x1E69E9C10];
      v10 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v12 = 136315906;
      v13 = "AVVCSessionManager.mm";
      v14 = 1024;
      v15 = 1615;
      v16 = 2080;
      v17 = "setIAmTheAssistant";
      v18 = 1024;
      v19 = 1;
      _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d logAndReturnIfAudioSessionIsNotAvailable-%s returning : %d", &v12, 0x22u);
    }

    return 1;
  }

  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  v7 = IsSerializationEnabled(void)::enable;
  if (IsSerializationEnabled(void)::enable == 1)
  {
    std::recursive_mutex::lock(&self->mSessionManagerLock);
  }

  v8 = [(AVAudioSession *)self->_audioSession setIAmTheAssistant:assistantCopy error:error];
  if (v7)
  {
    std::recursive_mutex::unlock(&self->mSessionManagerLock);
  }

  return v8;
}

- (BOOL)setAudioHardwareControlFlags:(unint64_t)flags error:(id *)error
{
  v20 = *MEMORY[0x1E69E9840];
  if (isAudioSessionAvailable(void)::onceToken != -1)
  {
    dispatch_once(&isAudioSessionAvailable(void)::onceToken, &__block_literal_global_44);
  }

  if ((isAudioSessionAvailable(void)::audioSessionAvailable & 1) == 0)
  {
    if (kAVVCScope)
    {
      v9 = *kAVVCScope;
      if (!v9)
      {
        return 0;
      }
    }

    else
    {
      v9 = MEMORY[0x1E69E9C10];
      v10 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v12 = 136315906;
      v13 = "AVVCSessionManager.mm";
      v14 = 1024;
      v15 = 1592;
      v16 = 2080;
      v17 = "setAudioHardwareControlFlags";
      v18 = 1024;
      v19 = 0;
      _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d logAndReturnIfAudioSessionIsNotAvailable-%s returning : %d", &v12, 0x22u);
    }

    return 0;
  }

  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  v7 = IsSerializationEnabled(void)::enable;
  if (IsSerializationEnabled(void)::enable == 1)
  {
    std::recursive_mutex::lock(&self->mSessionManagerLock);
  }

  v8 = [(AVAudioSession *)self->_audioSession setAudioHardwareControlFlags:flags error:error];
  if (v7)
  {
    std::recursive_mutex::unlock(&self->mSessionManagerLock);
  }

  return v8;
}

- (BOOL)isSessionInSiriCategory
{
  v16 = *MEMORY[0x1E69E9840];
  if (isAudioSessionAvailable(void)::onceToken != -1)
  {
    dispatch_once(&isAudioSessionAvailable(void)::onceToken, &__block_literal_global_44);
  }

  if ((isAudioSessionAvailable(void)::audioSessionAvailable & 1) == 0)
  {
    if (kAVVCScope)
    {
      v5 = *kAVVCScope;
      if (!v5)
      {
        return 0;
      }
    }

    else
    {
      v5 = MEMORY[0x1E69E9C10];
      v6 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v8 = 136315906;
      v9 = "AVVCSessionManager.mm";
      v10 = 1024;
      v11 = 1579;
      v12 = 2080;
      v13 = "isSessionInSiriCategory";
      v14 = 1024;
      v15 = 0;
      _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d logAndReturnIfAudioSessionIsNotAvailable-%s returning : %d", &v8, 0x22u);
    }

    return 0;
  }

  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  v3 = IsSerializationEnabled(void)::enable;
  if (IsSerializationEnabled(void)::enable == 1)
  {
    std::recursive_mutex::lock(&self->mSessionManagerLock);
  }

  v4 = [(NSString *)self->mPreviousSessionCategory isEqualToString:*MEMORY[0x1E698D518]];
  if (v3)
  {
    std::recursive_mutex::unlock(&self->mSessionManagerLock);
  }

  return v4;
}

- (BOOL)isSessionInSiriCategoryModeAndOptions:(unsigned int)options
{
  v26 = *MEMORY[0x1E69E9840];
  if (isAudioSessionAvailable(void)::onceToken != -1)
  {
    dispatch_once(&isAudioSessionAvailable(void)::onceToken, &__block_literal_global_44);
  }

  if ((isAudioSessionAvailable(void)::audioSessionAvailable & 1) == 0)
  {
    if (kAVVCScope)
    {
      v10 = *kAVVCScope;
      if (!v10)
      {
        return 0;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E9C10];
      v14 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v16 = 136315906;
      v17 = "AVVCSessionManager.mm";
      v18 = 1024;
      v19 = 1559;
      v20 = 2080;
      v21 = "speechDetectionDeviceSampleRate";
      v22 = 1024;
      LODWORD(v23) = 0;
      _os_log_impl(&dword_1BA5AC000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d logAndReturnIfAudioSessionIsNotAvailable-%s returning : %d", &v16, 0x22u);
    }

    return 0;
  }

  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  v5 = IsSerializationEnabled(void)::enable;
  if (IsSerializationEnabled(void)::enable == 1)
  {
    std::recursive_mutex::lock(&self->mSessionManagerLock);
  }

  v6 = self->mPreviousSessionCategory;
  v7 = self->mPreviousSessionMode;
  mPreviousSessionCategoryOptions = self->mPreviousSessionCategoryOptions;
  if (!kAVVCScope)
  {
    v9 = MEMORY[0x1E69E9C10];
    v11 = MEMORY[0x1E69E9C10];
    goto LABEL_15;
  }

  v9 = *kAVVCScope;
  if (v9)
  {
LABEL_15:
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v16 = 136316162;
      v17 = "AVVCSessionManager.mm";
      v18 = 1024;
      v19 = 1565;
      v20 = 2112;
      v21 = v6;
      v22 = 2112;
      v23 = v7;
      v24 = 1024;
      v25 = mPreviousSessionCategoryOptions;
      _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d isSessionInSiriCategoryModeAndOptions: about to set Play&Record category, speech recognition/assistant mode. Current category: %@, mode: %@, options: 0x%x", &v16, 0x2Cu);
    }
  }

  if ([(NSString *)v6 isEqualToString:*MEMORY[0x1E698D518]])
  {
    v12 = [(NSString *)v7 isEqualToString:*MEMORY[0x1E698D600]];
    v13 = mPreviousSessionCategoryOptions == options && v12;
  }

  else
  {
    v13 = 0;
  }

  if (v5)
  {
    std::recursive_mutex::unlock(&self->mSessionManagerLock);
  }

  return v13;
}

- (BOOL)clearInputPreferences:(id *)preferences
{
  v18 = *MEMORY[0x1E69E9840];
  if (isAudioSessionAvailable(void)::onceToken != -1)
  {
    dispatch_once(&isAudioSessionAvailable(void)::onceToken, &__block_literal_global_44);
  }

  if ((isAudioSessionAvailable(void)::audioSessionAvailable & 1) == 0)
  {
    if (kAVVCScope)
    {
      v7 = *kAVVCScope;
      if (!v7)
      {
        return 0;
      }
    }

    else
    {
      v7 = MEMORY[0x1E69E9C10];
      v8 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v10 = 136315906;
      v11 = "AVVCSessionManager.mm";
      v12 = 1024;
      v13 = 1548;
      v14 = 2080;
      v15 = "clearInputPreferences";
      v16 = 1024;
      v17 = 0;
      _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d logAndReturnIfAudioSessionIsNotAvailable-%s returning : %d", &v10, 0x22u);
    }

    return 0;
  }

  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  v5 = IsSerializationEnabled(void)::enable;
  if (IsSerializationEnabled(void)::enable == 1)
  {
    std::recursive_mutex::lock(&self->mSessionManagerLock);
  }

  v6 = [(AVAudioSession *)self->_audioSession clearInputPreferences:preferences];
  if (v5)
  {
    std::recursive_mutex::unlock(&self->mSessionManagerLock);
  }

  return v6;
}

- (BOOL)setCategory:(id)category mode:(id)mode routeSharingPolicy:(unint64_t)policy options:(unint64_t)options error:(id *)error
{
  v27 = *MEMORY[0x1E69E9840];
  categoryCopy = category;
  modeCopy = mode;
  if (isAudioSessionAvailable(void)::onceToken != -1)
  {
    dispatch_once(&isAudioSessionAvailable(void)::onceToken, &__block_literal_global_44);
  }

  if ((isAudioSessionAvailable(void)::audioSessionAvailable & 1) == 0)
  {
    if (kAVVCScope)
    {
      v16 = *kAVVCScope;
      if (!v16)
      {
LABEL_17:
        v15 = 0;
        goto LABEL_18;
      }
    }

    else
    {
      v16 = MEMORY[0x1E69E9C10];
      v17 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v19 = 136315906;
      v20 = "AVVCSessionManager.mm";
      v21 = 1024;
      v22 = 1540;
      v23 = 2080;
      v24 = "setCategory:mode:routeSharingPolicy:options";
      v25 = 1024;
      v26 = 0;
      _os_log_impl(&dword_1BA5AC000, v16, OS_LOG_TYPE_DEBUG, "%25s:%-5d logAndReturnIfAudioSessionIsNotAvailable-%s returning : %d", &v19, 0x22u);
    }

    goto LABEL_17;
  }

  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  v14 = IsSerializationEnabled(void)::enable;
  if (IsSerializationEnabled(void)::enable == 1)
  {
    std::recursive_mutex::lock(&self->mSessionManagerLock);
  }

  v15 = [(AVAudioSession *)self->_audioSession setCategory:categoryCopy mode:modeCopy routeSharingPolicy:policy options:options error:error];
  if (v14)
  {
    std::recursive_mutex::unlock(&self->mSessionManagerLock);
  }

LABEL_18:

  return v15;
}

- (BOOL)setCategory:(id)category mode:(id)mode options:(unint64_t)options error:(id *)error
{
  v25 = *MEMORY[0x1E69E9840];
  categoryCopy = category;
  modeCopy = mode;
  if (isAudioSessionAvailable(void)::onceToken != -1)
  {
    dispatch_once(&isAudioSessionAvailable(void)::onceToken, &__block_literal_global_44);
  }

  if ((isAudioSessionAvailable(void)::audioSessionAvailable & 1) == 0)
  {
    if (kAVVCScope)
    {
      v14 = *kAVVCScope;
      if (!v14)
      {
LABEL_17:
        v13 = 0;
        goto LABEL_18;
      }
    }

    else
    {
      v14 = MEMORY[0x1E69E9C10];
      v15 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v17 = 136315906;
      v18 = "AVVCSessionManager.mm";
      v19 = 1024;
      v20 = 1531;
      v21 = 2080;
      v22 = "setCategory:mode:options";
      v23 = 1024;
      v24 = 0;
      _os_log_impl(&dword_1BA5AC000, v14, OS_LOG_TYPE_DEBUG, "%25s:%-5d logAndReturnIfAudioSessionIsNotAvailable-%s returning : %d", &v17, 0x22u);
    }

    goto LABEL_17;
  }

  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  v12 = IsSerializationEnabled(void)::enable;
  if (IsSerializationEnabled(void)::enable == 1)
  {
    std::recursive_mutex::lock(&self->mSessionManagerLock);
  }

  v13 = [(AVAudioSession *)self->_audioSession setCategory:categoryCopy mode:modeCopy options:options error:error];
  if (v12)
  {
    std::recursive_mutex::unlock(&self->mSessionManagerLock);
  }

LABEL_18:

  return v13;
}

- (double)outputVolume
{
  v17 = *MEMORY[0x1E69E9840];
  if (isAudioSessionAvailable(void)::onceToken != -1)
  {
    dispatch_once(&isAudioSessionAvailable(void)::onceToken, &__block_literal_global_44);
  }

  if ((isAudioSessionAvailable(void)::audioSessionAvailable & 1) == 0)
  {
    if (kAVVCScope)
    {
      v6 = *kAVVCScope;
      if (!v6)
      {
        return 0.0;
      }
    }

    else
    {
      v6 = MEMORY[0x1E69E9C10];
      v7 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v9 = 136315906;
      v10 = "AVVCSessionManager.mm";
      v11 = 1024;
      v12 = 1514;
      v13 = 2080;
      v14 = "outputVolume";
      v15 = 1024;
      v16 = 0;
      _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d logAndReturnIfAudioSessionIsNotAvailable-%s returning : %d", &v9, 0x22u);
    }

    return 0.0;
  }

  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  v3 = IsSerializationEnabled(void)::enable;
  if (IsSerializationEnabled(void)::enable == 1)
  {
    std::recursive_mutex::lock(&self->mSessionManagerLock);
  }

  [(AVAudioSession *)self->_audioSession outputVolume];
  v5 = v4;
  self->_outputVolume = v4;
  if (v3)
  {
    std::recursive_mutex::unlock(&self->mSessionManagerLock);
  }

  return v5;
}

- (double)inputSafetyOffset
{
  v17 = *MEMORY[0x1E69E9840];
  if (isAudioSessionAvailable(void)::onceToken != -1)
  {
    dispatch_once(&isAudioSessionAvailable(void)::onceToken, &__block_literal_global_44);
  }

  if ((isAudioSessionAvailable(void)::audioSessionAvailable & 1) == 0)
  {
    if (kAVVCScope)
    {
      v6 = *kAVVCScope;
      if (!v6)
      {
        return 0.0;
      }
    }

    else
    {
      v6 = MEMORY[0x1E69E9C10];
      v7 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v9 = 136315906;
      v10 = "AVVCSessionManager.mm";
      v11 = 1024;
      v12 = 1506;
      v13 = 2080;
      v14 = "inputSafetyOffset";
      v15 = 1024;
      v16 = 0;
      _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d logAndReturnIfAudioSessionIsNotAvailable-%s returning : %d", &v9, 0x22u);
    }

    return 0.0;
  }

  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  v3 = IsSerializationEnabled(void)::enable;
  if (IsSerializationEnabled(void)::enable == 1)
  {
    std::recursive_mutex::lock(&self->mSessionManagerLock);
  }

  [(AVAudioSession *)self->_audioSession inputSafetyOffset];
  v5 = v4;
  self->_inputSafetyOffset = v4;
  if (v3)
  {
    std::recursive_mutex::unlock(&self->mSessionManagerLock);
  }

  return v5;
}

- (double)outputSafetyOffset
{
  v17 = *MEMORY[0x1E69E9840];
  if (isAudioSessionAvailable(void)::onceToken != -1)
  {
    dispatch_once(&isAudioSessionAvailable(void)::onceToken, &__block_literal_global_44);
  }

  if ((isAudioSessionAvailable(void)::audioSessionAvailable & 1) == 0)
  {
    if (kAVVCScope)
    {
      v6 = *kAVVCScope;
      if (!v6)
      {
        return 0.0;
      }
    }

    else
    {
      v6 = MEMORY[0x1E69E9C10];
      v7 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v9 = 136315906;
      v10 = "AVVCSessionManager.mm";
      v11 = 1024;
      v12 = 1498;
      v13 = 2080;
      v14 = "outputSafetyOffset";
      v15 = 1024;
      v16 = 0;
      _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d logAndReturnIfAudioSessionIsNotAvailable-%s returning : %d", &v9, 0x22u);
    }

    return 0.0;
  }

  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  v3 = IsSerializationEnabled(void)::enable;
  if (IsSerializationEnabled(void)::enable == 1)
  {
    std::recursive_mutex::lock(&self->mSessionManagerLock);
  }

  [(AVAudioSession *)self->_audioSession outputSafetyOffset];
  v5 = v4;
  self->_outputSafetyOffset = v4;
  if (v3)
  {
    std::recursive_mutex::unlock(&self->mSessionManagerLock);
  }

  return v5;
}

- (BOOL)setEnableBTTriangleMode:(BOOL)mode error:(id *)error
{
  modeCopy = mode;
  v20 = *MEMORY[0x1E69E9840];
  if (isAudioSessionAvailable(void)::onceToken != -1)
  {
    dispatch_once(&isAudioSessionAvailable(void)::onceToken, &__block_literal_global_44);
  }

  if ((isAudioSessionAvailable(void)::audioSessionAvailable & 1) == 0)
  {
    if (kAVVCScope)
    {
      v9 = *kAVVCScope;
      if (!v9)
      {
        return 0;
      }
    }

    else
    {
      v9 = MEMORY[0x1E69E9C10];
      v10 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v12 = 136315906;
      v13 = "AVVCSessionManager.mm";
      v14 = 1024;
      v15 = 1468;
      v16 = 2080;
      v17 = "setEnableBTTriangleMode";
      v18 = 1024;
      v19 = 0;
      _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d logAndReturnIfAudioSessionIsNotAvailable-%s returning : %d", &v12, 0x22u);
    }

    return 0;
  }

  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  v7 = IsSerializationEnabled(void)::enable;
  if (IsSerializationEnabled(void)::enable == 1)
  {
    std::recursive_mutex::lock(&self->mSessionManagerLock);
  }

  v8 = [(AVAudioSession *)self->_audioSession setEligibleForBTTriangleConsideration:modeCopy error:error];
  if (v7)
  {
    std::recursive_mutex::unlock(&self->mSessionManagerLock);
  }

  return v8;
}

- (BOOL)getForceGetSessionProperties
{
  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  if (IsSerializationEnabled(void)::enable)
  {
    std::recursive_mutex::lock(&self->mSessionManagerLock);
    forceGetSessionProperties = self->_forceGetSessionProperties;
    std::recursive_mutex::unlock(&self->mSessionManagerLock);
  }

  else
  {
    return self->_forceGetSessionProperties;
  }

  return forceGetSessionProperties;
}

- (void)setForceGetSessionProperties:(BOOL)properties
{
  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  if (IsSerializationEnabled(void)::enable)
  {
    std::recursive_mutex::lock(&self->mSessionManagerLock);
    self->_forceGetSessionProperties = properties;

    std::recursive_mutex::unlock(&self->mSessionManagerLock);
  }

  else
  {
    self->_forceGetSessionProperties = properties;
  }
}

- (id)getPlaybackRoute
{
  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  if (IsSerializationEnabled(void)::enable)
  {
    std::recursive_mutex::lock(&self->mSessionManagerLock);
    v3 = self->_playbackRoute;
    std::recursive_mutex::unlock(&self->mSessionManagerLock);
  }

  else
  {
    v3 = self->_playbackRoute;
  }

  return v3;
}

- (void)setPlaybackRoute:(id)route
{
  routeCopy = route;
  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  if (IsSerializationEnabled(void)::enable == 1)
  {
    std::recursive_mutex::lock(&self->mSessionManagerLock);
    playbackRoute = self->_playbackRoute;
    self->_playbackRoute = routeCopy;

    std::recursive_mutex::unlock(&self->mSessionManagerLock);
  }

  else
  {
    v6 = self->_playbackRoute;
    self->_playbackRoute = routeCopy;
  }
}

- (float)getDeviceGain
{
  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  if ((IsSerializationEnabled(void)::enable & 1) == 0)
  {
    return self->_deviceGain;
  }

  std::recursive_mutex::lock(&self->mSessionManagerLock);
  deviceGain = self->_deviceGain;
  std::recursive_mutex::unlock(&self->mSessionManagerLock);
  return deviceGain;
}

- (void)setDeviceGain:(float)gain
{
  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  if (IsSerializationEnabled(void)::enable)
  {
    std::recursive_mutex::lock(&self->mSessionManagerLock);
    self->_deviceGain = gain;

    std::recursive_mutex::unlock(&self->mSessionManagerLock);
  }

  else
  {
    self->_deviceGain = gain;
  }
}

- (BOOL)getClientRequestsRecording
{
  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  if (IsSerializationEnabled(void)::enable)
  {
    std::recursive_mutex::lock(&self->mSessionManagerLock);
    clientRequestsRecording = self->_clientRequestsRecording;
    std::recursive_mutex::unlock(&self->mSessionManagerLock);
  }

  else
  {
    return self->_clientRequestsRecording;
  }

  return clientRequestsRecording;
}

- (void)setClientRequestsRecording:(BOOL)recording
{
  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  if (IsSerializationEnabled(void)::enable)
  {
    std::recursive_mutex::lock(&self->mSessionManagerLock);
    self->_clientRequestsRecording = recording;

    std::recursive_mutex::unlock(&self->mSessionManagerLock);
  }

  else
  {
    self->_clientRequestsRecording = recording;
  }
}

- (void)setSessionStateWithoutLock:(int)lock
{
  v21 = *MEMORY[0x1E69E9840];
  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  v5 = IsSerializationEnabled(void)::enable;
  if (IsSerializationEnabled(void)::enable == 1)
  {
    std::recursive_mutex::lock(&self->mSessionManagerLock);
  }

  if (kAVVCScope)
  {
    v6 = *kAVVCScope;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v6 = MEMORY[0x1E69E9C10];
    v7 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    sessionState = self->_sessionState;
    if (sessionState > 7)
    {
      v9 = "ILLEGAL";
    }

    else
    {
      v9 = off_1E7EF63F8[sessionState];
    }

    if (lock > 7)
    {
      v10 = "ILLEGAL";
    }

    else
    {
      v10 = off_1E7EF63F8[lock];
    }

    v11 = 136316162;
    v12 = "AVVCSessionManager.mm";
    v13 = 1024;
    v14 = 1396;
    v15 = 2048;
    selfCopy = self;
    v17 = 2080;
    v18 = v9;
    v19 = 2080;
    v20 = v10;
    _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d session(%p) state %s => %s", &v11, 0x30u);
  }

LABEL_18:
  self->_sessionState = lock;
  if (v5)
  {
    std::recursive_mutex::unlock(&self->mSessionManagerLock);
  }
}

- (void)setSessionState:(int)state
{
  v21 = *MEMORY[0x1E69E9840];
  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  v5 = IsSerializationEnabled(void)::enable;
  if (IsSerializationEnabled(void)::enable == 1)
  {
    std::recursive_mutex::lock(&self->mSessionManagerLock);
  }

  if (kAVVCScope)
  {
    v6 = *kAVVCScope;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v6 = MEMORY[0x1E69E9C10];
    v7 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    sessionState = self->_sessionState;
    if (sessionState > 7)
    {
      v9 = "ILLEGAL";
    }

    else
    {
      v9 = off_1E7EF63F8[sessionState];
    }

    if (state > 7)
    {
      v10 = "ILLEGAL";
    }

    else
    {
      v10 = off_1E7EF63F8[state];
    }

    v11 = 136316162;
    v12 = "AVVCSessionManager.mm";
    v13 = 1024;
    v14 = 1390;
    v15 = 2048;
    selfCopy = self;
    v17 = 2080;
    v18 = v9;
    v19 = 2080;
    v20 = v10;
    _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d session(%p) state %s => %s", &v11, 0x30u);
  }

LABEL_18:
  self->_sessionState = state;
  if (v5)
  {
    std::recursive_mutex::unlock(&self->mSessionManagerLock);
  }
}

- (BOOL)deactivateAudioSessionWithOptions:(unsigned int)options error:(id *)error
{
  v37 = *MEMORY[0x1E69E9840];
  if (isAudioSessionAvailable(void)::onceToken != -1)
  {
    dispatch_once(&isAudioSessionAvailable(void)::onceToken, &__block_literal_global_44);
  }

  if ((isAudioSessionAvailable(void)::audioSessionAvailable & 1) == 0)
  {
    if (kAVVCScope)
    {
      v10 = *kAVVCScope;
      if (!v10)
      {
LABEL_18:
        LOBYTE(v12) = 1;
        return v12;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E9C10];
      v11 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      v30 = "AVVCSessionManager.mm";
      v31 = 1024;
      v32 = 1357;
      v33 = 2080;
      v34 = "deactivateAudioSessionWithOptions";
      v35 = 1024;
      v36 = 1;
      _os_log_impl(&dword_1BA5AC000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d logAndReturnIfAudioSessionIsNotAvailable-%s returning : %d", buf, 0x22u);
    }

    goto LABEL_18;
  }

  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  v7 = IsSerializationEnabled(void)::enable;
  if (IsSerializationEnabled(void)::enable == 1)
  {
    std::recursive_mutex::lock(&self->mSessionManagerLock);
  }

  audioSession = [(AVVCSessionManager *)self audioSession];
  [(AVVCSessionManager *)self setSessionStateWithoutLock:4];
  if (kAVVCScope)
  {
    v9 = *kAVVCScope;
    if (!v9)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v9 = MEMORY[0x1E69E9C10];
    v13 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v30 = "AVVCSessionManager.mm";
    v31 = 1024;
    v32 = 1365;
    v33 = 1024;
    LODWORD(v34) = options;
    _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d deactivateAudioSession: session options : %d", buf, 0x18u);
  }

LABEL_23:
  v27 = 0;
  v12 = [audioSession setActive:0 withOptions:options error:&v27];
  v14 = v27;
  code = [v14 code];
  if (!v12)
  {
    if (kAVVCScope)
    {
      v17 = *kAVVCScope;
      if (!v17)
      {
LABEL_39:
        v21 = code != 1836282486;
        goto LABEL_40;
      }
    }

    else
    {
      v17 = MEMORY[0x1E69E9C10];
      v22 = MEMORY[0x1E69E9C10];
    }

    v23 = v17;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      CAX4CCString::CAX4CCString(v28, code);
      opaqueSessionID = [(AVAudioSession *)self->_audioSession opaqueSessionID];
      *buf = 136315906;
      v30 = "AVVCSessionManager.mm";
      v31 = 1024;
      v32 = 1375;
      v33 = 2080;
      v34 = v28;
      v35 = 1024;
      v36 = opaqueSessionID;
      _os_log_impl(&dword_1BA5AC000, v23, OS_LOG_TYPE_ERROR, "%25s:%-5d deactivateAudioSession failed with error: %s, session id:0x%x", buf, 0x22u);
    }

    goto LABEL_39;
  }

  if (!kAVVCScope)
  {
    v16 = MEMORY[0x1E69E9C10];
    v18 = MEMORY[0x1E69E9C10];
    goto LABEL_31;
  }

  v16 = *kAVVCScope;
  if (v16)
  {
LABEL_31:
    v19 = v16;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      CAX4CCString::CAX4CCString(v28, code);
      opaqueSessionID2 = [(AVAudioSession *)self->_audioSession opaqueSessionID];
      *buf = 136315906;
      v30 = "AVVCSessionManager.mm";
      v31 = 1024;
      v32 = 1371;
      v33 = 2080;
      v34 = v28;
      v35 = 1024;
      v36 = opaqueSessionID2;
      _os_log_impl(&dword_1BA5AC000, v19, OS_LOG_TYPE_DEFAULT, "%25s:%-5d deactivateAudioSession succeeded error: %s, session id:0x%x", buf, 0x22u);
    }
  }

  v21 = 1;
LABEL_40:
  [(AVVCSessionManager *)self setSessionStateWithoutLock:v21];
  if (error)
  {
    v25 = v14;
    *error = v14;
  }

  if (v7)
  {
    std::recursive_mutex::unlock(&self->mSessionManagerLock);
  }

  return v12;
}

- (BOOL)activateAudioSessionWithPrewarm:(BOOL)prewarm error:(id *)error
{
  prewarmCopy = prewarm;
  v52 = *MEMORY[0x1E69E9840];
  if (isAudioSessionAvailable(void)::onceToken != -1)
  {
    dispatch_once(&isAudioSessionAvailable(void)::onceToken, &__block_literal_global_44);
  }

  if ((isAudioSessionAvailable(void)::audioSessionAvailable & 1) == 0)
  {
    if (kAVVCScope)
    {
      v9 = *kAVVCScope;
      if (!v9)
      {
LABEL_21:
        LOBYTE(v12) = 1;
        return v12;
      }
    }

    else
    {
      v9 = MEMORY[0x1E69E9C10];
      v11 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      v43 = "AVVCSessionManager.mm";
      v44 = 1024;
      v45 = 1301;
      v46 = 2080;
      v47 = "activateAudioSessionWithPrewarm";
      v48 = 1024;
      LODWORD(v49) = 1;
      _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d logAndReturnIfAudioSessionIsNotAvailable-%s returning : %d", buf, 0x22u);
    }

    goto LABEL_21;
  }

  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  v29 = IsSerializationEnabled(void)::enable;
  if (IsSerializationEnabled(void)::enable == 1)
  {
    std::recursive_mutex::lock(&self->mSessionManagerLock);
  }

  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__6402;
  v39 = __Block_byref_object_dispose__6403;
  v40 = 0;
  audioSession = [(AVVCSessionManager *)self audioSession];
  if (prewarmCopy)
  {
    [(AVVCSessionManager *)self setSessionStateWithoutLock:5];
    mSessionActivationOptions = 0x2000;
    v8 = @"prewarmAudioSession";
  }

  else
  {
    [(AVVCSessionManager *)self setSessionStateWithoutLock:6];
    mSessionActivationOptions = self->mSessionActivationOptions;
    v8 = @"activateAudioSession";
  }

  if (kAVVCScope)
  {
    v10 = *kAVVCScope;
    if (!v10)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v10 = MEMORY[0x1E69E9C10];
    v13 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v43 = "AVVCSessionManager.mm";
    v44 = 1024;
    v45 = 1320;
    v46 = 2112;
    v47 = v8;
    v48 = 1024;
    LODWORD(v49) = mSessionActivationOptions;
    _os_log_impl(&dword_1BA5AC000, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %@: session options : %d", buf, 0x22u);
  }

LABEL_26:
  ProfileMetrics(&cfstr_AvvcProfilePro_6.isa);
  kdebug_trace();
  ElapsedTime::ElapsedTime(buf, "[AVVCSessionManager activateAudioSessionWithPrewarm:error:]", "AVAudioSessionSetActive", 0);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __60__AVVCSessionManager_activateAudioSessionWithPrewarm_error___block_invoke;
  aBlock[3] = &unk_1E7EF63D0;
  v14 = audioSession;
  v34 = mSessionActivationOptions;
  v32 = v14;
  v33 = &v35;
  v15 = _Block_copy(aBlock);
  v16 = objc_autoreleasePoolPush();
  v17 = +[AVVCMetricsManager sharedManager];
  v12 = [v17 measureElapseTimeForMetric:@"SetSessionActiveTime" block:v15];

  objc_autoreleasePoolPop(v16);
  ElapsedTime::~ElapsedTime(buf);
  kdebug_trace();
  ProfileMetrics(&cfstr_AvvcProfilePro_7.isa);
  code = [v36[5] code];
  if (!v12)
  {
    if (kAVVCScope)
    {
      v20 = *kAVVCScope;
      if (!v20)
      {
LABEL_42:
        v24 = code != 1836282486;
        goto LABEL_43;
      }
    }

    else
    {
      v20 = MEMORY[0x1E69E9C10];
      v25 = MEMORY[0x1E69E9C10];
    }

    v26 = v20;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      CAX4CCString::CAX4CCString(v41, code);
      opaqueSessionID = [(AVAudioSession *)self->_audioSession opaqueSessionID];
      *buf = 136316162;
      v43 = "AVVCSessionManager.mm";
      v44 = 1024;
      v45 = 1344;
      v46 = 2112;
      v47 = v8;
      v48 = 2080;
      v49 = v41;
      v50 = 1024;
      v51 = opaqueSessionID;
      _os_log_impl(&dword_1BA5AC000, v26, OS_LOG_TYPE_ERROR, "%25s:%-5d %@ failed with error: %s, session id:0x%x", buf, 0x2Cu);
    }

    goto LABEL_42;
  }

  if (!kAVVCScope)
  {
    v19 = MEMORY[0x1E69E9C10];
    v21 = MEMORY[0x1E69E9C10];
    goto LABEL_34;
  }

  v19 = *kAVVCScope;
  if (v19)
  {
LABEL_34:
    v22 = v19;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      CAX4CCString::CAX4CCString(v41, code);
      opaqueSessionID2 = [(AVAudioSession *)self->_audioSession opaqueSessionID];
      *buf = 136316162;
      v43 = "AVVCSessionManager.mm";
      v44 = 1024;
      v45 = 1340;
      v46 = 2112;
      v47 = v8;
      v48 = 2080;
      v49 = v41;
      v50 = 1024;
      v51 = opaqueSessionID2;
      _os_log_impl(&dword_1BA5AC000, v22, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %@ succeeded error: %s, session id:0x%x", buf, 0x2Cu);
    }
  }

  v24 = 7;
LABEL_43:
  [(AVVCSessionManager *)self setSessionStateWithoutLock:v24];
  if (error)
  {
    *error = v36[5];
  }

  _Block_object_dispose(&v35, 8);
  if (v29)
  {
    std::recursive_mutex::unlock(&self->mSessionManagerLock);
  }

  return v12;
}

uint64_t __60__AVVCSessionManager_activateAudioSessionWithPrewarm_error___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 8);
  obj = *(v3 + 40);
  v4 = [v2 setActive:1 withOptions:v1 error:&obj];
  objc_storeStrong((v3 + 40), obj);
  return v4;
}

- (BOOL)isAirplayOneOfTheOutputRoutes:(id)routes
{
  v32 = *MEMORY[0x1E69E9840];
  routesCopy = routes;
  v15 = [routesCopy count];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = routesCopy;
  v3 = [obj countByEnumeratingWithState:&v17 objects:v31 count:16];
  if (v3)
  {
    v4 = 0;
    v5 = 0;
    v6 = *v18;
    v7 = *MEMORY[0x1E698D648];
    while (1)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(obj);
        }

        portType = [*(*(&v17 + 1) + 8 * i) portType];
        if (kAVVCScope)
        {
          v10 = *kAVVCScope;
          if (!v10)
          {
            goto LABEL_13;
          }
        }

        else
        {
          v10 = MEMORY[0x1E69E9C10];
          v11 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          v22 = "AVVCSessionManager.mm";
          v23 = 1024;
          v24 = 1286;
          v25 = 1024;
          v26 = v4 + 1;
          v27 = 1024;
          v28 = v15;
          v29 = 2112;
          v30 = portType;
          _os_log_impl(&dword_1BA5AC000, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Output Port[%d / %d] : %@", buf, 0x28u);
        }

LABEL_13:
        v12 = [portType isEqualToString:v7];

        v5 |= v12;
        ++v4;
      }

      v3 = [obj countByEnumeratingWithState:&v17 objects:v31 count:16];
      if (!v3)
      {
        goto LABEL_17;
      }
    }
  }

  v5 = 0;
LABEL_17:

  return v5 & 1;
}

- (int)enableSmartRoutingConsideration:(BOOL)consideration
{
  considerationCopy = consideration;
  v35 = *MEMORY[0x1E69E9840];
  if (isAudioSessionAvailable(void)::onceToken != -1)
  {
    dispatch_once(&isAudioSessionAvailable(void)::onceToken, &__block_literal_global_44);
  }

  if ((isAudioSessionAvailable(void)::audioSessionAvailable & 1) == 0)
  {
    if (kAVVCScope)
    {
      v8 = *kAVVCScope;
      if (!v8)
      {
        return 0;
      }
    }

    else
    {
      v8 = MEMORY[0x1E69E9C10];
      v13 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      v28 = "AVVCSessionManager.mm";
      v29 = 1024;
      v30 = 1248;
      v31 = 2080;
      v32 = "enableSmartRoutingConsideration";
      v33 = 1024;
      v34 = 0;
      _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d logAndReturnIfAudioSessionIsNotAvailable-%s returning : %d", buf, 0x22u);
    }

    return 0;
  }

  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  v5 = IsSerializationEnabled(void)::enable;
  if (IsSerializationEnabled(void)::enable == 1)
  {
    std::recursive_mutex::lock(&self->mSessionManagerLock);
  }

  ElapsedTime::ElapsedTime(buf, "[AVVCSessionManager enableSmartRoutingConsideration:]", "enableSmartRoutingConsideration", 0);
  if (self->mEnableSmartRoutingConsideration == considerationCopy)
  {
    if (kAVVCScope)
    {
      v6 = *kAVVCScope;
      if (!v6)
      {
        code = 0;
        goto LABEL_37;
      }
    }

    else
    {
      v6 = MEMORY[0x1E69E9C10];
      v15 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v21 = 136315394;
      v22 = "AVVCSessionManager.mm";
      v23 = 1024;
      v24 = 1260;
      _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AVVCSessionManager::enableSmartRoutingConsideration No-op", v21, 0x12u);
    }

    code = 0;
  }

  else
  {
    audioSession = self->_audioSession;
    v20 = 0;
    v10 = [(AVAudioSession *)audioSession setEligibleForBTSmartRoutingConsideration:considerationCopy error:&v20];
    v11 = v20;
    v6 = v11;
    if (v11)
    {
      v12 = v10;
    }

    else
    {
      v12 = 1;
    }

    if ((v12 & 1) == 0)
    {
      code = [v11 code];
      if (kAVVCScope)
      {
        v14 = *kAVVCScope;
        if (!v14)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v14 = MEMORY[0x1E69E9C10];
        v16 = MEMORY[0x1E69E9C10];
      }

      v17 = v14;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = [v6 description];
        *v21 = 136315650;
        v22 = "AVVCSessionManager.mm";
        v23 = 1024;
        v24 = 1268;
        v25 = 2112;
        v26 = v18;
        _os_log_impl(&dword_1BA5AC000, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d ERROR: AVVCSessionManager::enableSmartRoutingConsideration failed: %@", v21, 0x1Cu);
      }

      goto LABEL_36;
    }

    code = 0;
    self->mEnableSmartRoutingConsideration = considerationCopy;
  }

LABEL_36:

LABEL_37:
  ElapsedTime::~ElapsedTime(buf);
  if (v5)
  {
    std::recursive_mutex::unlock(&self->mSessionManagerLock);
  }

  return code;
}

- (void)setSessionActivationOptions:(unsigned int)options
{
  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  if (IsSerializationEnabled(void)::enable)
  {
    std::recursive_mutex::lock(&self->mSessionManagerLock);
    self->mSessionActivationOptions = options;

    std::recursive_mutex::unlock(&self->mSessionManagerLock);
  }

  else
  {
    self->mSessionActivationOptions = options;
  }
}

- (unsigned)getSessionActivationOptions
{
  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  if ((IsSerializationEnabled(void)::enable & 1) == 0)
  {
    return self->mSessionActivationOptions;
  }

  std::recursive_mutex::lock(&self->mSessionManagerLock);
  mSessionActivationOptions = self->mSessionActivationOptions;
  std::recursive_mutex::unlock(&self->mSessionManagerLock);
  return mSessionActivationOptions;
}

- (BOOL)setDuckingFadeOutDuration:(id)duration fadeInDuration:(id)inDuration error:(id *)error
{
  v27 = *MEMORY[0x1E69E9840];
  durationCopy = duration;
  inDurationCopy = inDuration;
  ElapsedTime::ElapsedTime(v26, "[AVVCSessionManager setDuckingFadeOutDuration:fadeInDuration:error:]", "setDuckingFadeDuration", 0);
  if (isAudioSessionAvailable(void)::onceToken != -1)
  {
    dispatch_once(&isAudioSessionAvailable(void)::onceToken, &__block_literal_global_44);
  }

  if ((isAudioSessionAvailable(void)::audioSessionAvailable & 1) == 0)
  {
    if (kAVVCScope)
    {
      v13 = *kAVVCScope;
      if (!v13)
      {
LABEL_20:
        v11 = 0;
        goto LABEL_27;
      }
    }

    else
    {
      v13 = MEMORY[0x1E69E9C10];
      v14 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v20 = 136315906;
      v21 = "AVVCSessionManager.mm";
      v22 = 1024;
      v23 = 1190;
      v24 = 2080;
      *v25 = "setDuckingFadeDuration";
      *&v25[8] = 1024;
      *&v25[10] = 0;
      _os_log_impl(&dword_1BA5AC000, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d logAndReturnIfAudioSessionIsNotAvailable-%s returning : %d", &v20, 0x22u);
    }

    goto LABEL_20;
  }

  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  v10 = IsSerializationEnabled(void)::enable;
  if (IsSerializationEnabled(void)::enable == 1)
  {
    std::recursive_mutex::lock(&self->mSessionManagerLock);
  }

  v11 = [(AVAudioSession *)self->_audioSession setDuckingFadeOutDuration:durationCopy fadeInDuration:inDurationCopy error:error];
  if ((v11 & 1) != 0 || !*error)
  {
    goto LABEL_25;
  }

  if (!kAVVCScope)
  {
    v12 = MEMORY[0x1E69E9C10];
    v15 = MEMORY[0x1E69E9C10];
    goto LABEL_22;
  }

  v12 = *kAVVCScope;
  if (v12)
  {
LABEL_22:
    v16 = v12;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      code = [*error code];
      v18 = [*error description];
      v20 = 136315906;
      v21 = "AVVCSessionManager.mm";
      v22 = 1024;
      v23 = 1195;
      v24 = 1024;
      *v25 = code;
      *&v25[4] = 2112;
      *&v25[6] = v18;
      _os_log_impl(&dword_1BA5AC000, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d Error in setDuckingFadeDuration %d, %@", &v20, 0x22u);
    }
  }

LABEL_25:
  if (v10)
  {
    std::recursive_mutex::unlock(&self->mSessionManagerLock);
  }

LABEL_27:
  ElapsedTime::~ElapsedTime(v26);

  return v11;
}

- (BOOL)setDuckOthers:(id)others mixWithOthers:(id)withOthers error:(id *)error
{
  v36 = *MEMORY[0x1E69E9840];
  othersCopy = others;
  withOthersCopy = withOthers;
  ElapsedTime::ElapsedTime(v35, "[AVVCSessionManager setDuckOthers:mixWithOthers:error:]", "setDuckOthersMixWithOthers", 0);
  if (isAudioSessionAvailable(void)::onceToken != -1)
  {
    dispatch_once(&isAudioSessionAvailable(void)::onceToken, &__block_literal_global_44);
  }

  if ((isAudioSessionAvailable(void)::audioSessionAvailable & 1) == 0)
  {
    if (kAVVCScope)
    {
      v13 = *kAVVCScope;
      if (!v13)
      {
LABEL_20:
        v15 = 0;
        goto LABEL_49;
      }
    }

    else
    {
      v13 = MEMORY[0x1E69E9C10];
      v14 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v29 = 136315906;
      v30 = "AVVCSessionManager.mm";
      v31 = 1024;
      v32 = 1139;
      v33 = 2080;
      *v34 = "setDuckOthers:mixWithOthers";
      *&v34[8] = 1024;
      *&v34[10] = 0;
      _os_log_impl(&dword_1BA5AC000, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d logAndReturnIfAudioSessionIsNotAvailable-%s returning : %d", &v29, 0x22u);
    }

    goto LABEL_20;
  }

  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  v10 = IsSerializationEnabled(void)::enable;
  if (IsSerializationEnabled(void)::enable == 1)
  {
    std::recursive_mutex::lock(&self->mSessionManagerLock);
  }

  mPreviousSessionCategoryOptions = self->mPreviousSessionCategoryOptions;
  v12 = mPreviousSessionCategoryOptions;
  if (!othersCopy)
  {
LABEL_11:
    if (!withOthersCopy)
    {
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  if ([othersCopy BOOLValue])
  {
    v12 = mPreviousSessionCategoryOptions | 2;
    goto LABEL_11;
  }

  v12 = mPreviousSessionCategoryOptions & 0xFFFFFFFFFFFFFFFDLL;
  if (!withOthersCopy)
  {
    goto LABEL_25;
  }

LABEL_22:
  bOOLValue = [withOthersCopy BOOLValue];
  v17 = 17;
  if (!bOOLValue)
  {
    v17 = 0;
  }

  v12 = v17 | v12 & 0xFFFFFFFFFFFFFFEELL;
LABEL_25:
  if (mPreviousSessionCategoryOptions == v12)
  {
    if (kAVVCScope)
    {
      v18 = *kAVVCScope;
      if (!v18)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v18 = MEMORY[0x1E69E9C10];
      v20 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v21 = self->mPreviousSessionCategoryOptions;
      v29 = 136315650;
      v30 = "AVVCSessionManager.mm";
      v31 = 1024;
      v32 = 1177;
      v33 = 1024;
      *v34 = v21;
      _os_log_impl(&dword_1BA5AC000, v18, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AVVCSessionManager: No change - options are the same. No op. Current options: 0x%x.", &v29, 0x18u);
    }

LABEL_36:
    v15 = 1;
    if (!v10)
    {
      goto LABEL_49;
    }

    goto LABEL_48;
  }

  if (!kAVVCScope)
  {
    v19 = MEMORY[0x1E69E9C10];
    v22 = MEMORY[0x1E69E9C10];
    goto LABEL_39;
  }

  v19 = *kAVVCScope;
  if (v19)
  {
LABEL_39:
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v29 = 136315906;
      v30 = "AVVCSessionManager.mm";
      v31 = 1024;
      v32 = 1166;
      v33 = 1024;
      *v34 = v12;
      *&v34[4] = 1024;
      *&v34[6] = mPreviousSessionCategoryOptions;
      _os_log_impl(&dword_1BA5AC000, v19, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AVVCSessionManager: Setting new options: 0x%x. Previous options: 0x%x", &v29, 0x1Eu);
    }
  }

  v15 = [(AVAudioSession *)self->_audioSession setCategoryOptions:v12 error:error];
  if ((v15 & 1) == 0 && *error)
  {
    if (kAVVCScope)
    {
      v23 = *kAVVCScope;
      if (!v23)
      {
        goto LABEL_54;
      }
    }

    else
    {
      v23 = MEMORY[0x1E69E9C10];
      v25 = MEMORY[0x1E69E9C10];
    }

    v26 = v23;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      code = [*error code];
      v28 = [*error description];
      v29 = 136315906;
      v30 = "AVVCSessionManager.mm";
      v31 = 1024;
      v32 = 1170;
      v33 = 1024;
      *v34 = code;
      *&v34[4] = 2112;
      *&v34[6] = v28;
      _os_log_impl(&dword_1BA5AC000, v26, OS_LOG_TYPE_ERROR, "%25s:%-5d ERROR: AVVCSessionManager::setDuckOthers:mixWithOthers failed with error: %d, %@", &v29, 0x22u);
    }

LABEL_54:
    v15 = 0;
    if (!v10)
    {
      goto LABEL_49;
    }

    goto LABEL_48;
  }

  self->mPreviousSessionCategoryOptions = v12;
  if (v10)
  {
LABEL_48:
    std::recursive_mutex::unlock(&self->mSessionManagerLock);
  }

LABEL_49:
  ElapsedTime::~ElapsedTime(v35);

  return v15;
}

- (void)changeDuckOthersOption:(BOOL)option
{
  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  if (IsSerializationEnabled(void)::enable)
  {
    std::recursive_mutex::lock(&self->mSessionManagerLock);
    self->mShouldDuckOthers = option;

    std::recursive_mutex::unlock(&self->mSessionManagerLock);
  }

  else
  {
    self->mShouldDuckOthers = option;
  }
}

- (int)setSessionBufferSize:(int)size
{
  v37 = *MEMORY[0x1E69E9840];
  if (isAudioSessionAvailable(void)::onceToken != -1)
  {
    dispatch_once(&isAudioSessionAvailable(void)::onceToken, &__block_literal_global_44);
  }

  if ((isAudioSessionAvailable(void)::audioSessionAvailable & 1) == 0)
  {
    if (kAVVCScope)
    {
      v7 = *kAVVCScope;
      if (!v7)
      {
        return 0;
      }
    }

    else
    {
      v7 = MEMORY[0x1E69E9C10];
      v12 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      v30 = "AVVCSessionManager.mm";
      v31 = 1024;
      v32 = 1099;
      v33 = 2080;
      v34 = "setSessionBufferSize";
      v35 = 1024;
      v36 = 0;
      _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d logAndReturnIfAudioSessionIsNotAvailable-%s returning : %d", buf, 0x22u);
    }

    return 0;
  }

  ElapsedTime::ElapsedTime(buf, "[AVVCSessionManager setSessionBufferSize:]", "setSessionBufferSize", 0);
  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  v5 = IsSerializationEnabled(void)::enable;
  if (IsSerializationEnabled(void)::enable == 1)
  {
    std::recursive_mutex::lock(&self->mSessionManagerLock);
  }

  if (self->mPreviousIOBufferFrameSize == size)
  {
    if (kAVVCScope)
    {
      v6 = *kAVVCScope;
      if (!v6)
      {
LABEL_29:
        code = 0;
        goto LABEL_34;
      }
    }

    else
    {
      v6 = MEMORY[0x1E69E9C10];
      v14 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v23 = 136315394;
      v24 = "AVVCSessionManager.mm";
      v25 = 1024;
      v26 = 1116;
      _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AVVCSessionManager::setSessionBufferSize: No change - not setting preferred IO buffer size. No op.", v23, 0x12u);
    }

    v6 = 0;
    goto LABEL_29;
  }

  audioSession = self->_audioSession;
  v22 = 0;
  v9 = [(AVAudioSession *)audioSession setPreferredIOBufferFrameSize:size error:&v22];
  v10 = v22;
  v6 = v10;
  if (v9)
  {
    code = 0;
    self->mPreviousIOBufferFrameSize = size;
    goto LABEL_34;
  }

  code = [v10 code];
  if (kAVVCScope)
  {
    v13 = *kAVVCScope;
    if (!v13)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v13 = MEMORY[0x1E69E9C10];
    v15 = MEMORY[0x1E69E9C10];
  }

  v16 = v13;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v17 = [v6 description];
    *v23 = 136315650;
    v24 = "AVVCSessionManager.mm";
    v25 = 1024;
    v26 = 1109;
    v27 = 2112;
    v28 = v17;
    _os_log_impl(&dword_1BA5AC000, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d ERROR: AVVCSessionManager::setSessionBufferSize failed: %@", v23, 0x1Cu);
  }

LABEL_34:
  if (!kAVVCScope)
  {
    v18 = MEMORY[0x1E69E9C10];
    v19 = MEMORY[0x1E69E9C10];
    goto LABEL_38;
  }

  v18 = *kAVVCScope;
  if (v18)
  {
LABEL_38:
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      mPreviousIOBufferFrameSize = self->mPreviousIOBufferFrameSize;
      *v23 = 136315650;
      v24 = "AVVCSessionManager.mm";
      v25 = 1024;
      v26 = 1119;
      v27 = 1024;
      LODWORD(v28) = mPreviousIOBufferFrameSize;
      _os_log_impl(&dword_1BA5AC000, v18, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AVVCSessionManager::setSessionBufferSize: Previous IO buffer size: %d", v23, 0x18u);
    }
  }

  if (v5)
  {
    std::recursive_mutex::unlock(&self->mSessionManagerLock);
  }

  ElapsedTime::~ElapsedTime(buf);
  return code;
}

- (int)setSessionSampleRateForActivationMode:(int64_t)mode
{
  v52 = *MEMORY[0x1E69E9840];
  if (isAudioSessionAvailable(void)::onceToken != -1)
  {
    dispatch_once(&isAudioSessionAvailable(void)::onceToken, &__block_literal_global_44);
  }

  if ((isAudioSessionAvailable(void)::audioSessionAvailable & 1) == 0)
  {
    if (kAVVCScope)
    {
      v10 = *kAVVCScope;
      if (!v10)
      {
        return 0;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E9C10];
      v11 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      v45 = "AVVCSessionManager.mm";
      v46 = 1024;
      v47 = 1051;
      v48 = 2080;
      v49 = "setSessionSampleRateForActivationMode";
      v50 = 1024;
      v51 = 0;
      _os_log_impl(&dword_1BA5AC000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d logAndReturnIfAudioSessionIsNotAvailable-%s returning : %d", buf, 0x22u);
    }

    return 0;
  }

  ElapsedTime::ElapsedTime(buf, "[AVVCSessionManager setSessionSampleRateForActivationMode:]", "setSessionSampleRateForActivationMode", 0);
  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  v5 = IsSerializationEnabled(void)::enable;
  if (IsSerializationEnabled(void)::enable == 1)
  {
    std::recursive_mutex::lock(&self->mSessionManagerLock);
  }

  code = 0;
  if ((IsPluginActivationContext(mode) & 1) != 0 || mode == 1684108899)
  {
    goto LABEL_61;
  }

  [(AVAudioSession *)self->_audioSession sampleRate];
  v8 = *&v7;
  if (mode == 1986357346)
  {
    if (v7 != 24000.0)
    {
      if (kAVVCScope)
      {
        v9 = *kAVVCScope;
        if (!v9)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v9 = MEMORY[0x1E69E9C10];
        v15 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *v36 = 136315394;
        v37 = "AVVCSessionManager.mm";
        v38 = 1024;
        v39 = 1065;
        _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d AVVCSessionManager::setSessionSampleRateForActivationMode: forcing 22050k audio for car audio", v36, 0x12u);
      }

LABEL_37:
      audioSession = self->_audioSession;
      v35 = 0;
      v17 = [(AVAudioSession *)audioSession setPreferredSampleRate:&v35 error:24000.0];
      v18 = v35;
      v14 = v18;
      if (!v17)
      {
        code = [v18 code];
        v19 = CALog::LogObjIfEnabled(1, kAVVCScope);
        v13 = v19;
        if (!v19 || !os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_59;
        }

        *v36 = 136315650;
        v37 = "AVVCSessionManager.mm";
        v38 = 1024;
        v39 = 1068;
        v40 = 2112;
        v41 = v14;
        v20 = "%25s:%-5d ERROR: AVVCSessionManager::setPreferredSampleRate for VehicleButtonPress : %@";
        v21 = v13;
        v22 = 28;
        goto LABEL_50;
      }

      goto LABEL_46;
    }

    if (kAVVCScope)
    {
      v13 = *kAVVCScope;
      if (!v13)
      {
LABEL_32:
        v14 = 0;
        goto LABEL_46;
      }
    }

    else
    {
      v13 = MEMORY[0x1E69E9C10];
      v32 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v36 = 136315394;
      v37 = "AVVCSessionManager.mm";
      v38 = 1024;
      v39 = 1072;
      v29 = "%25s:%-5d AVVCSessionManager::setSessionSampleRateForActivationMode: No change - not setting preferred sample rate. No op.";
      v30 = v13;
      v31 = 18;
      goto LABEL_57;
    }

    goto LABEL_58;
  }

  if (v7 >= 22050.0)
  {
    if (kAVVCScope)
    {
      v13 = *kAVVCScope;
      if (!v13)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v13 = MEMORY[0x1E69E9C10];
      v28 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v36 = 136315650;
      v37 = "AVVCSessionManager.mm";
      v38 = 1024;
      v39 = 1086;
      v40 = 2048;
      v41 = v8;
      v29 = "%25s:%-5d AVVCSessionManager::setSessionSampleRateForActivationMode: SR remains at %f";
      v30 = v13;
      v31 = 28;
LABEL_57:
      _os_log_impl(&dword_1BA5AC000, v30, OS_LOG_TYPE_DEFAULT, v29, v36, v31);
    }

LABEL_58:
    v14 = 0;
    code = 0;
    goto LABEL_59;
  }

  if (kAVVCScope)
  {
    v12 = *kAVVCScope;
    if (!v12)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v12 = MEMORY[0x1E69E9C10];
    v23 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *v36 = 136315906;
    v37 = "AVVCSessionManager.mm";
    v38 = 1024;
    v39 = 1078;
    v40 = 2048;
    v41 = v8;
    v42 = 2048;
    v43 = 0x40D5888000000000;
    _os_log_impl(&dword_1BA5AC000, v12, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AVVCSessionManager::setSessionSampleRateForActivationMode: SR changes from %f to %f", v36, 0x26u);
  }

LABEL_45:
  v24 = self->_audioSession;
  v34 = 0;
  v25 = [(AVAudioSession *)v24 setPreferredSampleRate:&v34 error:22050.0];
  v26 = v34;
  v14 = v26;
  if (!v25)
  {
    code = [v26 code];
    v27 = CALog::LogObjIfEnabled(1, kAVVCScope);
    v13 = v27;
    if (!v27 || !os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_59;
    }

    *v36 = 136315906;
    v37 = "AVVCSessionManager.mm";
    v38 = 1024;
    v39 = 1082;
    v40 = 2048;
    v41 = 0x40D5888000000000;
    v42 = 2112;
    v43 = v14;
    v20 = "%25s:%-5d ERROR: AVVCSessionManager::setPreferredSampleRate to %f : %@";
    v21 = v13;
    v22 = 38;
LABEL_50:
    _os_log_impl(&dword_1BA5AC000, v21, OS_LOG_TYPE_ERROR, v20, v36, v22);
LABEL_59:

    goto LABEL_60;
  }

LABEL_46:
  code = 0;
LABEL_60:

LABEL_61:
  if (v5)
  {
    std::recursive_mutex::unlock(&self->mSessionManagerLock);
  }

  ElapsedTime::~ElapsedTime(buf);
  return code;
}

- (int)setSessionAudioHWControlFlagsForActivationMode:(int64_t)mode withOptions:(unint64_t)options
{
  optionsCopy = options;
  v107 = *MEMORY[0x1E69E9840];
  if (isAudioSessionAvailable(void)::onceToken != -1)
  {
    dispatch_once(&isAudioSessionAvailable(void)::onceToken, &__block_literal_global_44);
  }

  if ((isAudioSessionAvailable(void)::audioSessionAvailable & 1) == 0)
  {
    if (kAVVCScope)
    {
      v10 = *kAVVCScope;
      if (!v10)
      {
LABEL_21:
        LODWORD(v12) = 0;
        return v12;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E9C10];
      v11 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      v100 = "AVVCSessionManager.mm";
      v101 = 1024;
      v102 = 821;
      v103 = 2080;
      v104 = "setSessionAudioHWControlFlagsForActivationMode";
      v105 = 1024;
      v106 = 0;
      _os_log_impl(&dword_1BA5AC000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d logAndReturnIfAudioSessionIsNotAvailable-%s returning : %d", buf, 0x22u);
    }

    goto LABEL_21;
  }

  ElapsedTime::ElapsedTime(buf, "[AVVCSessionManager setSessionAudioHWControlFlagsForActivationMode:withOptions:]", "setSessionAudioHWControlFlagsFromActivationMode", 0);
  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  v8 = IsSerializationEnabled(void)::enable;
  if (IsSerializationEnabled(void)::enable == 1)
  {
    std::recursive_mutex::lock(&self->mSessionManagerLock);
  }

  self->mSessionActivationOptions &= ~0x4000u;
  if (caulk::product::get_device_class(v7) == 4 && (MGGetBoolAnswer() & 1) == 0)
  {
    if (IsPluginActivationContext(mode))
    {
      if (self->mPreviousHardwareControlFlags != 0x100000)
      {
        audioSession = self->_audioSession;
        v91 = 0;
        v15 = [(AVAudioSession *)audioSession setAudioHardwareControlFlags:0x100000 error:&v91];
        v16 = v91;
        v17 = v16;
        if (v15)
        {
          LODWORD(v12) = 0;
          self->mPreviousHardwareControlFlags = 0x100000;
        }

        else
        {
          LODWORD(v12) = [(uint8_t *)v16 code];
          v45 = CALog::LogObjIfEnabled(1, kAVVCScope);
          v46 = v45;
          if (v45 && os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
          {
            *v93 = 136315650;
            v94 = "AVVCSessionManager.mm";
            v95 = 1024;
            v96 = 843;
            v97 = 2112;
            v98 = v17;
            _os_log_impl(&dword_1BA5AC000, v46, OS_LOG_TYPE_ERROR, "%25s:%-5d ERROR: AVVCSessionManager::setAudioHardwareControlFlags (ATV + Plugin) : %@", v93, 0x1Cu);
          }
        }

        goto LABEL_100;
      }

      goto LABEL_99;
    }

    if (kAVVCScope)
    {
      v12 = *kAVVCScope;
      if (!v12)
      {
        goto LABEL_100;
      }
    }

    else
    {
      v12 = MEMORY[0x1E69E9C10];
      v38 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v93 = 136315394;
      v94 = "AVVCSessionManager.mm";
      v95 = 1024;
      v96 = 849;
      _os_log_impl(&dword_1BA5AC000, v12, OS_LOG_TYPE_DEFAULT, "%25s:%-5d setSessionAudioHWControlFlags: Take Audio HW control on tvOS", v93, 0x12u);
    }

    goto LABEL_74;
  }

  if (self->mDeviceIsIOSAccessory)
  {
    if (kAVVCScope)
    {
      v9 = *kAVVCScope;
      if (!v9)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v9 = MEMORY[0x1E69E9C10];
      v19 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v93 = 136315394;
      v94 = "AVVCSessionManager.mm";
      v95 = 1024;
      v96 = 856;
      _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d setSessionAudioHWControlFlags: iOS Audio Accessory Product (HomePod), setting volume desired HW control flag.", v93, 0x12u);
    }

LABEL_38:
    if (self->mPreviousHardwareControlFlags == 0x100000)
    {
LABEL_99:
      LODWORD(v12) = 0;
      goto LABEL_100;
    }

    v20 = self->_audioSession;
    v90 = 0;
    v21 = [(AVAudioSession *)v20 setAudioHardwareControlFlags:0x100000 error:&v90];
    v22 = v90;
    v23 = v22;
    if (v21)
    {
      self->mPreviousHardwareControlFlags = 0x100000;

      goto LABEL_99;
    }

    LODWORD(v12) = [v22 code];
    if (kAVVCScope)
    {
      v30 = *kAVVCScope;
      if (!v30)
      {
LABEL_86:

        goto LABEL_100;
      }
    }

    else
    {
      v30 = MEMORY[0x1E69E9C10];
      v44 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *v93 = 136315650;
      v94 = "AVVCSessionManager.mm";
      v95 = 1024;
      v96 = 862;
      v97 = 2112;
      v98 = v23;
      _os_log_impl(&dword_1BA5AC000, v30, OS_LOG_TYPE_ERROR, "%25s:%-5d ERROR: AVVCSessionManager::setAudioHardwareControlFlags (HomePod) : %@", v93, 0x1Cu);
    }

    goto LABEL_86;
  }

  if (!self->mDeviceIsOlderWatch)
  {
    if (self->mSessionOutputIsWirelessSplitter)
    {
      if (kAVVCScope)
      {
        v18 = *kAVVCScope;
        if (!v18)
        {
          goto LABEL_79;
        }
      }

      else
      {
        v18 = MEMORY[0x1E69E9C10];
        v39 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *v93 = 136315394;
        v94 = "AVVCSessionManager.mm";
        v95 = 1024;
        v96 = 882;
        _os_log_impl(&dword_1BA5AC000, v18, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AVVCSessionManager::setSessionAudioHWControlFlags: wireless splitter mode, no volume control, yes routing control.", v93, 0x12u);
      }

LABEL_79:
      if (self->mPreviousHardwareControlFlags != 2)
      {
        v40 = self->_audioSession;
        v89 = 0;
        v41 = [(AVAudioSession *)v40 setAudioHardwareControlFlags:2 error:&v89];
        v42 = v89;
        v43 = v42;
        if ((v41 & 1) == 0)
        {
          LODWORD(v12) = [(uint8_t *)v42 code];
          v54 = CALog::LogObjIfEnabled(1, kAVVCScope);
          v55 = v54;
          if (v54 && os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
          {
            *v93 = 136315650;
            v94 = "AVVCSessionManager.mm";
            v95 = 1024;
            v96 = 888;
            v97 = 2112;
            v98 = v43;
            _os_log_impl(&dword_1BA5AC000, v55, OS_LOG_TYPE_ERROR, "%25s:%-5d ERROR: AVVCSessionManager::setAudioHardwareControlFlags (wireless splitter) : %@", v93, 0x1Cu);
          }

          goto LABEL_100;
        }

        self->mPreviousHardwareControlFlags = 2;
      }

      goto LABEL_99;
    }

    v25 = mode == 1987012963 || mode == 1751414371;
    if ((optionsCopy & 1) != 0 && v25)
    {
      if (self->mPreviousHardwareControlFlags)
      {
        v26 = self->_audioSession;
        v88 = 0;
        v27 = [(AVAudioSession *)v26 setAudioHardwareControlFlags:0 error:&v88];
        v28 = v88;
        v29 = v28;
        if (v27)
        {
          LODWORD(v12) = 0;
          self->mPreviousHardwareControlFlags = 0;
        }

        else
        {
          LODWORD(v12) = [(uint8_t *)v28 code];
          v56 = CALog::LogObjIfEnabled(1, kAVVCScope);
          v57 = v56;
          if (v56 && os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
          {
            *v93 = 136315650;
            v94 = "AVVCSessionManager.mm";
            v95 = 1024;
            v96 = 907;
            v97 = 2112;
            v98 = v29;
            _os_log_impl(&dword_1BA5AC000, v57, OS_LOG_TYPE_ERROR, "%25s:%-5d ERROR: AVVCSessionManager::setAudioHardwareControlFlags : %@", v93, 0x1Cu);
          }
        }
      }

      else
      {
        v29 = 0;
        LODWORD(v12) = 0;
      }

      if (kAVVCScope)
      {
        v58 = *kAVVCScope;
        if (!v58)
        {
LABEL_120:

          goto LABEL_100;
        }
      }

      else
      {
        v58 = MEMORY[0x1E69E9C10];
        v59 = MEMORY[0x1E69E9C10];
      }

      v60 = v58;
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
      {
        CAX4CCString::CAX4CCString(v92, mode);
        *v93 = 136315650;
        v94 = "AVVCSessionManager.mm";
        v95 = 1024;
        v96 = 912;
        v97 = 2080;
        v98 = v92;
        _os_log_impl(&dword_1BA5AC000, v60, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AVVCSessionManager::setAudioHardwareControlFlags: announce mode for %s context - set HW control flags to 0", v93, 0x1Cu);
      }

      goto LABEL_120;
    }

    if (self->mShouldEnableMiniDucking)
    {
      v32 = CALog::LogObjIfEnabled(3, kAVVCScope);
      v33 = v32;
      if (v32 && os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *v93 = 136315394;
        v94 = "AVVCSessionManager.mm";
        v95 = 1024;
        v96 = 917;
        _os_log_impl(&dword_1BA5AC000, v33, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AVVCSessionManager::setSessionAudioHWControlFlags: mini-ducking enabled. Not setting volume control flag", v93, 0x12u);
      }

      if (self->mPreviousHardwareControlFlags != 2)
      {
        v34 = self->_audioSession;
        v87 = 0;
        v35 = [(AVAudioSession *)v34 setAudioHardwareControlFlags:2 error:&v87];
        v36 = v87;
        v37 = v36;
        if ((v35 & 1) == 0)
        {
          LODWORD(v12) = [(uint8_t *)v36 code];
          v68 = CALog::LogObjIfEnabled(1, kAVVCScope);
          v69 = v68;
          if (v68 && os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
          {
            *v93 = 136315650;
            v94 = "AVVCSessionManager.mm";
            v95 = 1024;
            v96 = 923;
            v97 = 2112;
            v98 = v37;
            _os_log_impl(&dword_1BA5AC000, v69, OS_LOG_TYPE_ERROR, "%25s:%-5d ERROR: AVVCSessionManager::setAudioHardwareControlFlags (enable mini-ducking) : %@", v93, 0x1Cu);
          }

          goto LABEL_100;
        }

        self->mPreviousHardwareControlFlags = 2;
      }

      goto LABEL_99;
    }

    if (self->mShouldDisableMiniDucking)
    {
      v47 = CALog::LogObjIfEnabled(3, kAVVCScope);
      v48 = v47;
      if (v47 && os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        *v93 = 136315394;
        v94 = "AVVCSessionManager.mm";
        v95 = 1024;
        v96 = 932;
        _os_log_impl(&dword_1BA5AC000, v48, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AVVCSessionManager::setSessionAudioHWControlFlags: disable mini-ducking. Set all HW control flags", v93, 0x12u);
      }

      if (self->mPreviousHardwareControlFlags != 18)
      {
        v49 = self->_audioSession;
        v86 = 0;
        v50 = [(AVAudioSession *)v49 setAudioHardwareControlFlags:18 error:&v86];
        v51 = v86;
        v52 = v51;
        if ((v50 & 1) == 0)
        {
          LODWORD(v12) = [(uint8_t *)v51 code];
          v73 = CALog::LogObjIfEnabled(1, kAVVCScope);
          v74 = v73;
          if (v73 && os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
          {
            *v93 = 136315650;
            v94 = "AVVCSessionManager.mm";
            v95 = 1024;
            v96 = 939;
            v97 = 2112;
            v98 = v52;
            _os_log_impl(&dword_1BA5AC000, v74, OS_LOG_TYPE_ERROR, "%25s:%-5d ERROR: AVVCSessionManager::setAudioHardwareControlFlags (disable mini-ducking) : %@", v93, 0x1Cu);
          }

          goto LABEL_100;
        }

        self->mPreviousHardwareControlFlags = 18;
      }

      goto LABEL_99;
    }

    mSessionNeedsVolumeControl = self->mSessionNeedsVolumeControl;
    if (mode == 1651795060)
    {
      if (mSessionNeedsVolumeControl)
      {
        goto LABEL_165;
      }

      goto LABEL_154;
    }

    if (mode == 1987012963)
    {
      currentRoute = [(AVAudioSession *)self->_audioSession currentRoute];
      outputs = [currentRoute outputs];
      v64 = [(AVVCSessionManager *)self isAirplayOneOfTheOutputRoutes:outputs];

      if (v64)
      {
        self->mSessionActivationOptions |= 0x4000u;
        v65 = CALog::LogObjIfEnabled(3, kAVVCScope);
        v66 = v65;
        if (v65 && os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
        {
          *v93 = 136315394;
          v94 = "AVVCSessionManager.mm";
          v95 = 1024;
          v96 = 973;
          _os_log_impl(&dword_1BA5AC000, v66, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AVVCSessionManager::setSessionAudioHWControlFlags: will not take control of hardware upon activation for AirPlay output (voic/rais)", v93, 0x12u);
        }

        v67 = 0;
        goto LABEL_166;
      }

      v75 = CALog::LogObjIfEnabled(3, kAVVCScope);
      v71 = v75;
      if (!v75 || !os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_164;
      }

      *v93 = 136315394;
      v94 = "AVVCSessionManager.mm";
      v95 = 1024;
      v96 = 981;
      v72 = "%25s:%-5d AVVCSessionManager::setSessionAudioHWControlFlags: setting volume/routing required hardware control flag for 'voic' activation mode (output is not Airplay)";
      goto LABEL_163;
    }

    if (IsPluginActivationContext(mode))
    {
LABEL_135:
      v70 = CALog::LogObjIfEnabled(3, kAVVCScope);
      v71 = v70;
      if (mSessionNeedsVolumeControl)
      {
        if (!v70 || !os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_164;
        }

        *v93 = 136315394;
        v94 = "AVVCSessionManager.mm";
        v95 = 1024;
        v96 = 998;
        v72 = "%25s:%-5d AVVCSessionManager::setSessionAudioHWControlFlags: (plugin activation context / (post->hdvc) : set all hw control flags";
LABEL_163:
        _os_log_impl(&dword_1BA5AC000, v71, OS_LOG_TYPE_DEFAULT, v72, v93, 0x12u);
LABEL_164:

LABEL_165:
        v67 = 18;
        goto LABEL_166;
      }

      if (v70 && os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
      {
        *v93 = 136315394;
        v94 = "AVVCSessionManager.mm";
        v95 = 1024;
        v96 = 1001;
        _os_log_impl(&dword_1BA5AC000, v71, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AVVCSessionManager::setSessionAudioHWControlFlags: (plugin activation context / (post->hdvc) : not setting volume control flag", v93, 0x12u);
      }

LABEL_154:
      v67 = 2;
LABEL_166:
      if (v67 == self->mPreviousHardwareControlFlags)
      {
        v78 = CALog::LogObjIfEnabled(3, kAVVCScope);
        v79 = v78;
        if (v78 && os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
        {
          *v93 = 136315394;
          v94 = "AVVCSessionManager.mm";
          v95 = 1024;
          v96 = 1036;
          _os_log_impl(&dword_1BA5AC000, v79, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AVVCSessionManager::setSessionAudioHWControlFlags: No change - not setting hardware control flags. No op.", v93, 0x12u);
        }

        LODWORD(v12) = 0;
      }

      else
      {
        v80 = self->_audioSession;
        v85 = 0;
        v81 = [(AVAudioSession *)v80 setAudioHardwareControlFlags:v67 error:&v85];
        v82 = v85;
        v79 = v82;
        if (v81)
        {
          LODWORD(v12) = 0;
          self->mPreviousHardwareControlFlags = v67;
        }

        else
        {
          LODWORD(v12) = [v82 code];
          v83 = CALog::LogObjIfEnabled(1, kAVVCScope);
          v84 = v83;
          if (v83 && os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
          {
            *v93 = 136315650;
            v94 = "AVVCSessionManager.mm";
            v95 = 1024;
            v96 = 1030;
            v97 = 2112;
            v98 = v79;
            _os_log_impl(&dword_1BA5AC000, v84, OS_LOG_TYPE_ERROR, "%25s:%-5d ERROR: AVVCSessionManager::setAudioHardwareControlFlags : %@", v93, 0x1Cu);
          }
        }
      }

      goto LABEL_100;
    }

    if (mode != 1635087471)
    {
      if (mode == 1886352244 && self->mPreviousActivationMode == 1751414371)
      {
        goto LABEL_135;
      }

LABEL_160:
      v77 = CALog::LogObjIfEnabled(3, kAVVCScope);
      v71 = v77;
      if (!v77 || !os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_164;
      }

      *v93 = 136315394;
      v94 = "AVVCSessionManager.mm";
      v95 = 1024;
      v96 = 1012;
      v72 = "%25s:%-5d AVVCSessionManager::setSessionAudioHWControlFlags: default mode - set all HW control flags";
      goto LABEL_163;
    }

    if (!self->mIsMiniDuckingEnabled)
    {
      goto LABEL_160;
    }

    v76 = CALog::LogObjIfEnabled(3, kAVVCScope);
    v12 = v76;
    if (v76 && os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
    {
      *v93 = 136315394;
      v94 = "AVVCSessionManager.mm";
      v95 = 1024;
      v96 = 1006;
      _os_log_impl(&dword_1BA5AC000, v12, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AVVCSessionManager::setSessionAudioHWControlFlags: post followed by BluetoothVoiceTrigger (or auto context) should not control volume, so not setting any hw control flags.", v93, 0x12u);
    }

LABEL_74:

    goto LABEL_99;
  }

  if (!kAVVCScope)
  {
    v13 = MEMORY[0x1E69E9C10];
    v31 = MEMORY[0x1E69E9C10];
    goto LABEL_59;
  }

  v13 = *kAVVCScope;
  if (v13)
  {
LABEL_59:
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v93 = 136315394;
      v94 = "AVVCSessionManager.mm";
      v95 = 1024;
      v96 = 874;
      _os_log_impl(&dword_1BA5AC000, v13, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AVVCSessionManager::setSessionAudioHWControlFlags on older watch hardware: will never take control of HW on activation", v93, 0x12u);
    }
  }

  if (mode == 1768780647)
  {
    goto LABEL_99;
  }

  LODWORD(v12) = 0;
  self->mSessionActivationOptions |= 0x4000u;
LABEL_100:
  if (v8)
  {
    std::recursive_mutex::unlock(&self->mSessionManagerLock);
  }

  ElapsedTime::~ElapsedTime(buf);
  return v12;
}

- (int)setSessionCategoryModeOptionsForActivationMode:(int64_t)mode withOptions:(unint64_t)options
{
  optionsCopy = options;
  v98 = *MEMORY[0x1E69E9840];
  if (isAudioSessionAvailable(void)::onceToken != -1)
  {
    dispatch_once(&isAudioSessionAvailable(void)::onceToken, &__block_literal_global_44);
  }

  if ((isAudioSessionAvailable(void)::audioSessionAvailable & 1) == 0)
  {
    if (kAVVCScope)
    {
      v8 = *kAVVCScope;
      if (!v8)
      {
        return 0;
      }
    }

    else
    {
      v8 = MEMORY[0x1E69E9C10];
      v9 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      v91 = "AVVCSessionManager.mm";
      v92 = 1024;
      v93 = 597;
      v94 = 2080;
      v95 = "setSessionCategoryModeOptionsForActivationMode";
      v96 = 1024;
      v97 = 0;
      _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d logAndReturnIfAudioSessionIsNotAvailable-%s returning : %d", buf, 0x22u);
    }

    return 0;
  }

  ElapsedTime::ElapsedTime(buf, "[AVVCSessionManager setSessionCategoryModeOptionsForActivationMode:withOptions:]", "setSessionCategoryModeOptionsFromActivationMode", 0);
  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  v70 = IsSerializationEnabled(void)::enable;
  if (IsSerializationEnabled(void)::enable == 1)
  {
    std::recursive_mutex::lock(&self->mSessionManagerLock);
  }

  if (self->mDeviceIsIOSAccessory)
  {
    self->mShouldDuckOthers = 1;
    if (kAVVCScope)
    {
      v7 = *kAVVCScope;
      if (!v7)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v7 = MEMORY[0x1E69E9C10];
      v11 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v74 = 136315394;
      v75 = "AVVCSessionManager.mm";
      v76 = 1024;
      v77 = 608;
      v12 = "%25s:%-5d AVVCSessionManager::setSessionCategoryModeOptions: on 'audioOS'. Duck others.";
LABEL_38:
      _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_DEFAULT, v12, v74, 0x12u);
      goto LABEL_39;
    }

    goto LABEL_39;
  }

  if (self->mDeviceIsOlderWatch)
  {
    self->mShouldDuckOthers = 0;
    if (kAVVCScope)
    {
      v7 = *kAVVCScope;
      if (!v7)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v7 = MEMORY[0x1E69E9C10];
      v13 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v74 = 136315394;
      v75 = "AVVCSessionManager.mm";
      v76 = 1024;
      v77 = 612;
      v12 = "%25s:%-5d AVVCSessionManager::setSessionCategoryModeOptions: on older watchOS. Interrupt others.";
      goto LABEL_38;
    }

LABEL_39:

    goto LABEL_40;
  }

  if (![(AVVCSessionManager *)self isSessionOutputInWirelessSplitterMode])
  {
    [(AVVCSessionManager *)self getHypotheticalRouteAndUpdateStates];
    goto LABEL_40;
  }

  self->mShouldDuckOthers = 0;
  if (!kAVVCScope)
  {
    v7 = MEMORY[0x1E69E9C10];
    v14 = MEMORY[0x1E69E9C10];
LABEL_36:
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v74 = 136315394;
      v75 = "AVVCSessionManager.mm";
      v76 = 1024;
      v77 = 617;
      v12 = "%25s:%-5d AVVCSessionManager::setSessionCategoryModeOptions: (wireless splitter mode). Interrupt others.";
      goto LABEL_38;
    }

    goto LABEL_39;
  }

  v7 = *kAVVCScope;
  if (v7)
  {
    goto LABEL_36;
  }

LABEL_40:
  if (mode > 1768764004)
  {
    if (mode != 1768764005 && mode != 1768780647)
    {
LABEL_54:
      LOBYTE(v19) = self->mShouldDuckOthers;
      if (self->mDeviceIsIOSAccessory || self->mDeviceIsOlderWatch)
      {
        goto LABEL_89;
      }

      if (isAVSystemControllerAvailable(void)::onceToken != -1)
      {
        dispatch_once(&isAVSystemControllerAvailable(void)::onceToken, &__block_literal_global_230);
      }

      if (isAVSystemControllerAvailable(void)::isAvailable)
      {
        mEMORY[0x1E69AED08] = [MEMORY[0x1E69AED08] sharedAVSystemController];
        v21 = [mEMORY[0x1E69AED08] attributeForKey:*MEMORY[0x1E69AEA70]];
        bOOLValue = [v21 BOOLValue];

        if (!bOOLValue)
        {
LABEL_89:
          v15 = *MEMORY[0x1E698D518];
          v16 = *MEMORY[0x1E698D600];
          v25 = 0;
          goto LABEL_90;
        }

        v23 = CALog::LogObjIfEnabled(3, kAVVCScope);
        v24 = v23;
        if (v23 && os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *v74 = 136315394;
          v75 = "AVVCSessionManager.mm";
          v76 = 1024;
          v77 = 699;
          _os_log_impl(&dword_1BA5AC000, v24, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AVVCSessionManager::setSessionCategoryModeOptions: Carplay Supports Mixable Siri", v74, 0x12u);
        }

        LOBYTE(v19) = 1;
      }

      else
      {
        if (kAVVCScope)
        {
          v24 = *kAVVCScope;
          if (!v24)
          {
            goto LABEL_89;
          }
        }

        else
        {
          v24 = MEMORY[0x1E69E9C10];
          v29 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          *v74 = 136315394;
          v75 = "AVVCCarplayRuntimeAvailability.mm";
          v76 = 1024;
          v77 = 21;
          _os_log_impl(&dword_1BA5AC000, v24, OS_LOG_TYPE_DEBUG, "%25s:%-5d CarPlay API not available", v74, 0x12u);
        }
      }

      goto LABEL_89;
    }

    v15 = *MEMORY[0x1E698D518];
    v16 = *MEMORY[0x1E698D630];
    if (_os_feature_enabled_impl())
    {
      v18 = 524300;
    }

    else
    {
      v18 = 12;
    }

    if (kAVVCScope)
    {
      v19 = *kAVVCScope;
      if (!v19)
      {
LABEL_71:
        v25 = 1;
        goto LABEL_91;
      }
    }

    else
    {
      v19 = MEMORY[0x1E69E9C10];
      v26 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      *v74 = 136315394;
      v75 = "AVVCSessionManager.mm";
      v76 = 1024;
      v77 = 691;
      _os_log_impl(&dword_1BA5AC000, v19, OS_LOG_TYPE_DEBUG, "%25s:%-5d AVVCSessionManager::setSessionCategoryModeOptions: iMessage -- setting P&R category, clearing preferred input, etc.", v74, 0x12u);
    }

    LOBYTE(v19) = 0;
    goto LABEL_71;
  }

  if (mode == 1651797093)
  {
    v15 = *MEMORY[0x1E698D520];
    v16 = *MEMORY[0x1E698D5C8];
    if (kAVVCScope)
    {
      v18 = *kAVVCScope;
      if (!v18)
      {
        v25 = 0;
LABEL_81:
        LOBYTE(v19) = 1;
        goto LABEL_91;
      }
    }

    else
    {
      v18 = MEMORY[0x1E69E9C10];
      v28 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *v74 = 136315394;
      v75 = "AVVCSessionManager.mm";
      v76 = 1024;
      v77 = 677;
      _os_log_impl(&dword_1BA5AC000, v18, OS_LOG_TYPE_DEBUG, "%25s:%-5d AVVCSessionManager::setSessionCategoryModeOptions: ATV Activation  -- setting Playback category and Duck/Mix Options.", v74, 0x12u);
    }

    v25 = 0;
    v18 = 0;
    goto LABEL_81;
  }

  if (mode != 1752396914)
  {
    goto LABEL_54;
  }

  v15 = *MEMORY[0x1E698D518];
  v16 = *MEMORY[0x1E698D600];
  if (!kAVVCScope)
  {
    v17 = MEMORY[0x1E69E9C10];
    v27 = MEMORY[0x1E69E9C10];
    goto LABEL_73;
  }

  v17 = *kAVVCScope;
  if (v17)
  {
LABEL_73:
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *v74 = 136315394;
      v75 = "AVVCSessionManager.mm";
      v76 = 1024;
      v77 = 657;
      _os_log_impl(&dword_1BA5AC000, v17, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AVVCSessionManager::setSessionCategoryModeOptions: Interrupt other audio during Siri Training", v74, 0x12u);
    }
  }

  v25 = 0;
  LOBYTE(v19) = 0;
LABEL_90:
  v18 = 4;
LABEL_91:
  v31 = mode == 1987012963 || mode == 1751414371;
  if ((optionsCopy & 1) != 0 && v31)
  {
    if (kAVVCScope)
    {
      v32 = *kAVVCScope;
      if (!v32)
      {
        goto LABEL_108;
      }
    }

    else
    {
      v32 = MEMORY[0x1E69E9C10];
      v33 = MEMORY[0x1E69E9C10];
    }

    v34 = v32;
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      CAX4CCString::CAX4CCString(v89, mode);
      *v74 = 136315650;
      v75 = "AVVCSessionManager.mm";
      v76 = 1024;
      v77 = 724;
      v78 = 2080;
      *v79 = v89;
      _os_log_impl(&dword_1BA5AC000, v34, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AVVCSessionManager::setSessionCategoryModeOptions: announce mode for %s context - duck others", v74, 0x1Cu);
    }

    goto LABEL_108;
  }

  if (v19)
  {
LABEL_108:
    v18 |= 0x13uLL;
  }

  v35 = [(NSString *)self->mPreviousSessionCategory isEqualToString:v15];
  if ((v35 & [(NSString *)self->mPreviousSessionMode isEqualToString:v16]& 1) == 0)
  {
    if (kAVVCScope)
    {
      v37 = *kAVVCScope;
      if (!v37)
      {
LABEL_124:
        audioSession = self->_audioSession;
        v73 = 0;
        v45 = [(AVAudioSession *)audioSession setCategory:v15 mode:v16 routeSharingPolicy:0 options:v18 error:&v73];
        v46 = v73;
        v36 = v46;
        if (v45)
        {
          objc_storeStrong(&self->mPreviousSessionCategory, v15);
          objc_storeStrong(&self->mPreviousSessionMode, v16);
LABEL_139:
          code = 0;
          self->mPreviousSessionCategoryOptions = v18;
          goto LABEL_151;
        }

        code = [v46 code];
        if (kAVVCScope)
        {
          v47 = *kAVVCScope;
          if (!v47)
          {
            goto LABEL_151;
          }
        }

        else
        {
          v47 = MEMORY[0x1E69E9C10];
          v62 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          *v74 = 136315650;
          v75 = "AVVCSessionManager.mm";
          v76 = 1024;
          v77 = 754;
          v78 = 2112;
          *v79 = v36;
          _os_log_impl(&dword_1BA5AC000, v47, OS_LOG_TYPE_ERROR, "%25s:%-5d ERROR: AVVCSessionManager::setSessionCategoryModeOptions: setCategoryModeRouteSharingPolicyOptions failed with error: %@", v74, 0x1Cu);
        }

        goto LABEL_151;
      }
    }

    else
    {
      v37 = MEMORY[0x1E69E9C10];
      v39 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      mPreviousSessionCategory = self->mPreviousSessionCategory;
      mPreviousSessionMode = self->mPreviousSessionMode;
      mPreviousSessionCategoryOptions = self->mPreviousSessionCategoryOptions;
      mPreviousActivationMode = self->mPreviousActivationMode;
      *v74 = 136317442;
      v75 = "AVVCSessionManager.mm";
      v76 = 1024;
      v77 = 745;
      v78 = 2112;
      *v79 = v15;
      *&v79[8] = 2112;
      *&v79[10] = v16;
      *&v79[18] = 1024;
      *&v79[20] = v18;
      v80 = 2112;
      *v81 = mPreviousSessionCategory;
      *&v81[8] = 2112;
      v82 = mPreviousSessionMode;
      v83 = 1024;
      v84 = mPreviousSessionCategoryOptions;
      v85 = 1024;
      modeCopy = mode;
      v87 = 1024;
      v88 = mPreviousActivationMode;
      _os_log_impl(&dword_1BA5AC000, v37, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AVVCSessionManager::setSessionCategoryModeOptions: Setting new category: %@, mode: %@, options: 0x%x. Previous category: %@, mode: %@, options: 0x%x. (Current activation: %d, Previous activation: %d)", v74, 0x52u);
    }

    goto LABEL_124;
  }

  if (self->mPreviousSessionCategoryOptions == v18)
  {
    if (kAVVCScope)
    {
      v36 = *kAVVCScope;
      if (!v36)
      {
LABEL_133:
        code = 0;
        goto LABEL_151;
      }
    }

    else
    {
      v36 = MEMORY[0x1E69E9C10];
      v48 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v49 = self->mPreviousSessionCategory;
      v50 = self->mPreviousSessionMode;
      v51 = self->mPreviousSessionCategoryOptions;
      v52 = self->mPreviousActivationMode;
      *v74 = 136316674;
      v75 = "AVVCSessionManager.mm";
      v76 = 1024;
      v77 = 775;
      v78 = 2112;
      *v79 = v49;
      *&v79[8] = 2112;
      *&v79[10] = v50;
      *&v79[18] = 1024;
      *&v79[20] = v51;
      v80 = 1024;
      *v81 = mode;
      *&v81[4] = 1024;
      *&v81[6] = v52;
      _os_log_impl(&dword_1BA5AC000, v36, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AVVCSessionManager::setSessionCategoryModeOptions: No change - category, mode and options are the same. No op. Current category: %@, mode: %@, options: 0x%x. (Current activation: %d, Previous activation: %d)", v74, 0x38u);
    }

    v36 = 0;
    goto LABEL_133;
  }

  if (!kAVVCScope)
  {
    v38 = MEMORY[0x1E69E9C10];
    v53 = MEMORY[0x1E69E9C10];
    goto LABEL_135;
  }

  v38 = *kAVVCScope;
  if (v38)
  {
LABEL_135:
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      v54 = self->mPreviousSessionCategory;
      v55 = self->mPreviousSessionMode;
      v56 = self->mPreviousSessionCategoryOptions;
      v57 = self->mPreviousActivationMode;
      *v74 = 136316930;
      v75 = "AVVCSessionManager.mm";
      v76 = 1024;
      v77 = 765;
      v78 = 1024;
      *v79 = v18;
      *&v79[4] = 2112;
      *&v79[6] = v54;
      *&v79[14] = 2112;
      *&v79[16] = v55;
      v80 = 1024;
      *v81 = v56;
      *&v81[4] = 1024;
      *&v81[6] = mode;
      LOWORD(v82) = 1024;
      *(&v82 + 2) = v57;
      _os_log_impl(&dword_1BA5AC000, v38, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AVVCSessionManager::setSessionCategoryModeOptions: Setting new options: 0x%x. Previous category: %@, mode: %@, options: 0x%x. (Current activation: %d, Previous activation: %d)", v74, 0x3Eu);
    }
  }

  v58 = self->_audioSession;
  v72 = 0;
  v59 = [(AVAudioSession *)v58 setCategoryOptions:v18 error:&v72];
  v60 = v72;
  v36 = v60;
  if (v59)
  {
    goto LABEL_139;
  }

  code = [v60 code];
  if (kAVVCScope)
  {
    v61 = *kAVVCScope;
    if (!v61)
    {
      goto LABEL_151;
    }
  }

  else
  {
    v61 = MEMORY[0x1E69E9C10];
    v63 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
  {
    *v74 = 136315650;
    v75 = "AVVCSessionManager.mm";
    v76 = 1024;
    v77 = 768;
    v78 = 2112;
    *v79 = v36;
    _os_log_impl(&dword_1BA5AC000, v61, OS_LOG_TYPE_ERROR, "%25s:%-5d ERROR: AVVCSessionManager::setSessionCategoryModeOptions: setCategoryOptions failed with error: %@", v74, 0x1Cu);
  }

LABEL_151:
  if (v25)
  {
    v64 = self->_audioSession;
    v71 = v36;
    v65 = [(AVAudioSession *)v64 clearInputPreferences:&v71];
    v66 = v71;

    if ((v65 & 1) == 0)
    {
      code = [v66 code];
      if (kAVVCScope)
      {
        v67 = *kAVVCScope;
        if (!v67)
        {
          goto LABEL_161;
        }
      }

      else
      {
        v67 = MEMORY[0x1E69E9C10];
        v68 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
      {
        *v74 = 136315650;
        v75 = "AVVCSessionManager.mm";
        v76 = 1024;
        v77 = 781;
        v78 = 2112;
        *v79 = v66;
        _os_log_impl(&dword_1BA5AC000, v67, OS_LOG_TYPE_ERROR, "%25s:%-5d ERROR: AVVCSessionManager::clearInputPreferences failed with error: %@", v74, 0x1Cu);
      }
    }
  }

  else
  {
    v66 = v36;
  }

LABEL_161:

  if (v70)
  {
    std::recursive_mutex::unlock(&self->mSessionManagerLock);
  }

  ElapsedTime::~ElapsedTime(buf);
  return code;
}

- (BOOL)isMiniDuckingEnabled
{
  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  if (IsSerializationEnabled(void)::enable)
  {
    std::recursive_mutex::lock(&self->mSessionManagerLock);
    mIsMiniDuckingEnabled = self->mIsMiniDuckingEnabled;
    std::recursive_mutex::unlock(&self->mSessionManagerLock);
  }

  else
  {
    return self->mIsMiniDuckingEnabled;
  }

  return mIsMiniDuckingEnabled;
}

- (void)shouldEnableMiniDucking:(BOOL)ducking withOptions:(unint64_t)options
{
  optionsCopy = options;
  duckingCopy = ducking;
  v27 = *MEMORY[0x1E69E9840];
  if (isAudioSessionAvailable(void)::onceToken != -1)
  {
    dispatch_once(&isAudioSessionAvailable(void)::onceToken, &__block_literal_global_44);
  }

  if (isAudioSessionAvailable(void)::audioSessionAvailable != 1)
  {
    return;
  }

  if (caulk::product::get_device_class(self) != 4 && !self->mDeviceIsIOSAccessory)
  {
    ElapsedTime::ElapsedTime(buf, "[AVVCSessionManager shouldEnableMiniDucking:withOptions:]", "shouldEnableMiniDucking", 0);
    if (IsSerializationEnabled(void)::onceToken != -1)
    {
      dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
    }

    v9 = IsSerializationEnabled(void)::enable;
    if (IsSerializationEnabled(void)::enable == 1)
    {
      std::recursive_mutex::lock(&self->mSessionManagerLock);
    }

    if (self->mIsMiniDuckingEnabled == duckingCopy)
    {
      if (kAVVCScope)
      {
        v10 = *kAVVCScope;
        if (!v10)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v10 = MEMORY[0x1E69E9C10];
        v18 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 136315394;
        v20 = "AVVCSessionManager.mm";
        v21 = 1024;
        v22 = 473;
        _os_log_impl(&dword_1BA5AC000, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d shouldEnableMiniDucking: No change, no-op", &v19, 0x12u);
      }

      goto LABEL_45;
    }

    if (duckingCopy)
    {
      v11 = 1;
      self->mShouldEnableMiniDucking = 1;
      p_mShouldDisableMiniDucking = &self->mShouldDisableMiniDucking;
    }

    else
    {
      if (!self->mShouldEnableMiniDucking)
      {
        v11 = 0;
LABEL_44:
        self->mIsMiniDuckingEnabled = v11;
LABEL_45:
        if (v9)
        {
          std::recursive_mutex::unlock(&self->mSessionManagerLock);
        }

        ElapsedTime::~ElapsedTime(buf);
        return;
      }

      *&self->mShouldEnableMiniDucking = 256;
      p_mShouldDisableMiniDucking = &self->mShouldDisableMiniDucking;
      mPreviousActivationMode = self->mPreviousActivationMode;
      v15 = mPreviousActivationMode == 1987012963 || mPreviousActivationMode == 1751414371;
      if ((optionsCopy & 1) != 0 && v15)
      {
        v16 = CALog::LogObjIfEnabled(3, kAVVCScope);
        v17 = v16;
        if (v16 && os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v19 = 136315394;
          v20 = "AVVCSessionManager.mm";
          v21 = 1024;
          v22 = 491;
          _os_log_impl(&dword_1BA5AC000, v17, OS_LOG_TYPE_DEFAULT, "%25s:%-5d shouldEnableMiniDucking: Announce calls enabled. Will not set session properties while disabling miniDucking", &v19, 0x12u);
        }
      }

      else
      {
        [AVVCSessionManager setSessionCategoryModeOptionsForActivationMode:"setSessionCategoryModeOptionsForActivationMode:withOptions:" withOptions:?];
        [(AVVCSessionManager *)self setSessionAudioHWControlFlagsForActivationMode:self->mPreviousActivationMode withOptions:0];
      }

      v11 = 0;
    }

    *p_mShouldDisableMiniDucking = 0;
    goto LABEL_44;
  }

  if (kAVVCScope)
  {
    v7 = *kAVVCScope;
    if (!v7)
    {
      return;
    }
  }

  else
  {
    v7 = MEMORY[0x1E69E9C10];
    v8 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v24 = "AVVCSessionManager.mm";
    v25 = 1024;
    v26 = 464;
    _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d shouldEnableMiniDucking not available on this device", buf, 0x12u);
  }
}

- (int)setSessionActivationContext:(id)context
{
  v51 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  if (isAudioSessionAvailable(void)::onceToken != -1)
  {
    dispatch_once(&isAudioSessionAvailable(void)::onceToken, &__block_literal_global_44);
  }

  if ((isAudioSessionAvailable(void)::audioSessionAvailable & 1) == 0)
  {
    if (kAVVCScope)
    {
      v7 = *kAVVCScope;
      if (!v7)
      {
LABEL_19:
        code = 0;
        goto LABEL_55;
      }
    }

    else
    {
      v7 = MEMORY[0x1E69E9C10];
      v8 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      v44 = "AVVCSessionManager.mm";
      v45 = 1024;
      v46 = 418;
      v47 = 2080;
      v48 = "setSessionActivationContext";
      v49 = 1024;
      v50 = 0;
      _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d logAndReturnIfAudioSessionIsNotAvailable-%s returning : %d", buf, 0x22u);
    }

    goto LABEL_19;
  }

  ElapsedTime::ElapsedTime(buf, "[AVVCSessionManager setSessionActivationContext:]", "setSessionActivationContext", 0);
  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  v5 = IsSerializationEnabled(void)::enable;
  if (IsSerializationEnabled(void)::enable == 1)
  {
    std::recursive_mutex::lock(&self->mSessionManagerLock);
  }

  if (!contextCopy)
  {
    if (kAVVCScope)
    {
      v6 = *kAVVCScope;
      if (!v6)
      {
LABEL_24:
        contextCopy = objc_alloc_init(MEMORY[0x1E695DF20]);
        goto LABEL_25;
      }
    }

    else
    {
      v6 = MEMORY[0x1E69E9C10];
      v10 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v33 = 136315394;
      v34 = "AVVCSessionManager.mm";
      v35 = 1024;
      v36 = 424;
      _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AVVCSessionManager::setSessionActivationContext : passed 'nil' dictionary, creating empty one.", v33, 0x12u);
    }

    goto LABEL_24;
  }

LABEL_25:
  v11 = [contextCopy objectForKey:@"activation trigger"];
  intValue = [v11 intValue];

  v13 = [contextCopy objectForKey:@"activation device uid"];
  p_mPreviousActivationDeviceUID = &self->mPreviousActivationDeviceUID;
  mPreviousActivationMode = self->mPreviousActivationMode;
  if (((mPreviousActivationMode == intValue) & areDeviceUIDsSame(v13, self->mPreviousActivationDeviceUID)) == 0)
  {
    audioSession = self->_audioSession;
    v30 = 0;
    v18 = [(AVAudioSession *)audioSession setActivationContext:contextCopy error:&v30];
    v19 = v30;
    if (v18)
    {
      if (kAVVCScope)
      {
        v20 = *kAVVCScope;
        if (!v20)
        {
LABEL_44:
          self->mPreviousActivationMode = intValue;
          objc_storeStrong(&self->mPreviousActivationDeviceUID, v13);
LABEL_45:
          code = 0;
LABEL_51:

          goto LABEL_52;
        }
      }

      else
      {
        v20 = MEMORY[0x1E69E9C10];
        v25 = MEMORY[0x1E69E9C10];
      }

      v26 = v20;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        CAX4CCString::CAX4CCString(v32, intValue);
        CAX4CCString::CAX4CCString(v31, self->mPreviousActivationMode);
        v27 = *p_mPreviousActivationDeviceUID;
        *v33 = 136316418;
        v34 = "AVVCSessionManager.mm";
        v35 = 1024;
        v36 = 442;
        v37 = 2080;
        *v38 = v32;
        *&v38[8] = 2112;
        *&v38[10] = v13;
        v39 = 2080;
        v40 = v31;
        v41 = 2112;
        v42 = v27;
        _os_log_impl(&dword_1BA5AC000, v26, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AVVCSessionManager::setSessionActivationContext : Setting new activation context. Current: { activationMode(%s), deviceUID(%@) }. Previous: { activationMode(%s), deviceUID(%@) }.", v33, 0x3Au);
      }

      goto LABEL_44;
    }

    opaqueSessionID = [(AVAudioSession *)self->_audioSession opaqueSessionID];
    if (kAVVCScope)
    {
      v22 = *kAVVCScope;
      if (!v22)
      {
LABEL_50:
        code = [v19 code];
        goto LABEL_51;
      }
    }

    else
    {
      v22 = MEMORY[0x1E69E9C10];
      v28 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *v33 = 136315906;
      v34 = "AVVCSessionManager.mm";
      v35 = 1024;
      v36 = 438;
      v37 = 1024;
      *v38 = opaqueSessionID;
      *&v38[4] = 2112;
      *&v38[6] = v19;
      _os_log_impl(&dword_1BA5AC000, v22, OS_LOG_TYPE_ERROR, "%25s:%-5d ERROR: AVVCSessionManager::setActivationContext of sessionID(0x%x) failed with error: %@", v33, 0x22u);
    }

    goto LABEL_50;
  }

  if (!kAVVCScope)
  {
    v16 = MEMORY[0x1E69E9C10];
    v23 = MEMORY[0x1E69E9C10];
    goto LABEL_37;
  }

  v16 = *kAVVCScope;
  if (v16)
  {
LABEL_37:
    v19 = v16;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      CAX4CCString::CAX4CCString(v32, intValue);
      CAX4CCString::CAX4CCString(v31, self->mPreviousActivationMode);
      v24 = *p_mPreviousActivationDeviceUID;
      *v33 = 136316418;
      v34 = "AVVCSessionManager.mm";
      v35 = 1024;
      v36 = 448;
      v37 = 2080;
      *v38 = v32;
      *&v38[8] = 2112;
      *&v38[10] = v13;
      v39 = 2080;
      v40 = v31;
      v41 = 2112;
      v42 = v24;
      _os_log_impl(&dword_1BA5AC000, v19, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AVVCSessionManager::setSessionActivationContext : No change - not setting activationMode and deviceUID. Current: { activationMode(%s), deviceUID(%@) }. Previous: { activationMode(%s), deviceUID(%@) }. No op.", v33, 0x3Au);
    }

    goto LABEL_45;
  }

  code = 0;
LABEL_52:

  if (v5)
  {
    std::recursive_mutex::unlock(&self->mSessionManagerLock);
  }

  ElapsedTime::~ElapsedTime(buf);
LABEL_55:

  return code;
}

- (int)setupOneTimeSessionSettingsForClient:(int64_t)client
{
  v88 = *MEMORY[0x1E69E9840];
  if (isAudioSessionAvailable(void)::onceToken != -1)
  {
    dispatch_once(&isAudioSessionAvailable(void)::onceToken, &__block_literal_global_44);
  }

  if ((isAudioSessionAvailable(void)::audioSessionAvailable & 1) == 0)
  {
    if (kAVVCScope)
    {
      v12 = *kAVVCScope;
      if (!v12)
      {
        return 0;
      }
    }

    else
    {
      v12 = MEMORY[0x1E69E9C10];
      v13 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      v81 = "AVVCSessionManager.mm";
      v82 = 1024;
      v83 = 216;
      v84 = 2080;
      v85 = "setupOneTimeSessionSettingsForClient";
      v86 = 1024;
      v87 = 0;
      _os_log_impl(&dword_1BA5AC000, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d logAndReturnIfAudioSessionIsNotAvailable-%s returning : %d", buf, 0x22u);
    }

    return 0;
  }

  ElapsedTime::ElapsedTime(buf, "[AVVCSessionManager setupOneTimeSessionSettingsForClient:]", "setupOneTimeSessionSettingsForClient", 0);
  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  v5 = IsSerializationEnabled(void)::enable;
  if (IsSerializationEnabled(void)::enable == 1)
  {
    std::recursive_mutex::lock(&self->mSessionManagerLock);
  }

  if (IsMetricsOwnedByAVVC(void)::onceToken != -1)
  {
    dispatch_once(&IsMetricsOwnedByAVVC(void)::onceToken, &__block_literal_global_209);
  }

  if (IsMetricsOwnedByAVVC(void)::owned != 1)
  {
    v10 = 0;
    self->_reporterID = [(AVAudioSession *)self->_audioSession reporterID];
    goto LABEL_43;
  }

  v6 = +[AVVCMetricsManager sharedManager];
  reporterID = [v6 reporterID];

  if (reporterID)
  {
    audioSession = self->_audioSession;
    v71 = 0;
    v9 = [(AVAudioSession *)audioSession setReporterID:reporterID error:&v71];
    v10 = v71;
    if (v9)
    {
      if (kAVVCScope)
      {
        v11 = *kAVVCScope;
        if (!v11)
        {
          goto LABEL_43;
        }
      }

      else
      {
        v11 = MEMORY[0x1E69E9C10];
        v17 = MEMORY[0x1E69E9C10];
      }

      v18 = v11;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        opaqueSessionID = [(AVAudioSession *)self->_audioSession opaqueSessionID];
        *v72 = 136315906;
        v73 = "AVVCSessionManager.mm";
        v74 = 1024;
        v75 = 235;
        v76 = 2048;
        v77 = reporterID;
        v78 = 1024;
        v79 = opaqueSessionID;
        _os_log_impl(&dword_1BA5AC000, v18, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Set reporterID(%lld) on session(0x%x)", v72, 0x22u);
      }
    }

    else
    {
      if (kAVVCScope)
      {
        v15 = *kAVVCScope;
        if (!v15)
        {
          goto LABEL_43;
        }
      }

      else
      {
        v15 = MEMORY[0x1E69E9C10];
        v20 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *v72 = 136315650;
        v73 = "AVVCSessionManager.mm";
        v74 = 1024;
        v75 = 232;
        v76 = 2112;
        v77 = v10;
        _os_log_impl(&dword_1BA5AC000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d ERROR: setReporterID failed with error: %@", v72, 0x1Cu);
      }
    }
  }

  else
  {
    if (kAVVCScope)
    {
      v10 = *kAVVCScope;
      if (!v10)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E9C10];
      v16 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *v72 = 136315394;
      v73 = "AVVCSessionManager.mm";
      v74 = 1024;
      v75 = 239;
      _os_log_impl(&dword_1BA5AC000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d ERROR: AVVCMetricsManager returned invalid reporterID", v72, 0x12u);
    }

    v10 = 0;
  }

LABEL_43:
  v21 = *MEMORY[0x1E698D5C8];
  v22 = *MEMORY[0x1E698D5C8];
  v23 = v22;
  if (client == 4)
  {
    goto LABEL_46;
  }

  if (client == 3)
  {
    v32 = *MEMORY[0x1E698D518];
    v25 = *MEMORY[0x1E698D518];
    v33 = *MEMORY[0x1E698D630];
    v34 = *MEMORY[0x1E698D630];

    v23 = v34;
    v35 = self->_audioSession;
    v65 = v10;
    LOBYTE(v34) = [(AVAudioSession *)v35 setCategory:v25 mode:v34 routeSharingPolicy:0 options:12 error:&v65];
    v36 = v65;

    v10 = v36;
    if (v34)
    {
      objc_storeStrong(&self->mPreviousSessionCategory, v32);
      objc_storeStrong(&self->mPreviousSessionMode, v33);
      self->mPreviousSessionCategoryOptions = 12;
      goto LABEL_112;
    }

    if (kAVVCScope)
    {
      v42 = *kAVVCScope;
      if (!v42)
      {
LABEL_74:
        code = [v36 code];
        goto LABEL_111;
      }
    }

    else
    {
      v42 = MEMORY[0x1E69E9C10];
      v45 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      *v72 = 136315650;
      v73 = "AVVCSessionManager.mm";
      v74 = 1024;
      v75 = 390;
      v76 = 2112;
      v77 = v36;
      _os_log_impl(&dword_1BA5AC000, v42, OS_LOG_TYPE_ERROR, "%25s:%-5d ERROR: AVVCSessionManager::setupOneTimeSessionSettings setCategoryModeRouteSharingPolicyOptions failed with error: %@", v72, 0x1Cu);
    }

    goto LABEL_74;
  }

  if (client != 1)
  {
    v25 = &stru_1F384E730;
    goto LABEL_112;
  }

LABEL_46:
  if (caulk::product::get_device_class(v22) != 4 || (MGGetBoolAnswer() & 1) != 0)
  {
    v24 = *MEMORY[0x1E698D518];
    v25 = *MEMORY[0x1E698D518];
    v26 = *MEMORY[0x1E698D600];
    v27 = *MEMORY[0x1E698D600];

    v23 = v27;
    v28 = self->_audioSession;
    v69 = v10;
    LOBYTE(v27) = [(AVAudioSession *)v28 setCategory:v25 mode:v27 routeSharingPolicy:0 options:4 error:&v69];
    v29 = v69;

    v30 = v29;
    if (v27)
    {
      objc_storeStrong(&self->mPreviousSessionCategory, v24);
      objc_storeStrong(&self->mPreviousSessionMode, v26);
      code2 = 0;
      v31 = 4;
LABEL_58:
      self->mPreviousSessionCategoryOptions = v31;
      goto LABEL_80;
    }

    if (kAVVCScope)
    {
      v37 = *kAVVCScope;
      if (!v37)
      {
LABEL_66:
        code2 = [v29 code];
        goto LABEL_80;
      }
    }

    else
    {
      v37 = MEMORY[0x1E69E9C10];
      v43 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      *v72 = 136315650;
      v73 = "AVVCSessionManager.mm";
      v74 = 1024;
      v75 = 328;
      v76 = 2112;
      v77 = v29;
      _os_log_impl(&dword_1BA5AC000, v37, OS_LOG_TYPE_ERROR, "%25s:%-5d ERROR: AVVCSessionManager::setupOneTimeSessionSettings setCategoryModeOptions failed with error: %@", v72, 0x1Cu);
    }

    goto LABEL_66;
  }

  v38 = *MEMORY[0x1E698D520];
  v25 = *MEMORY[0x1E698D520];
  v39 = self->_audioSession;
  v70 = v10;
  v40 = [(AVAudioSession *)v39 setCategory:v25 withOptions:19 error:&v70];
  v41 = v70;

  v30 = v41;
  if (v40)
  {
    objc_storeStrong(&self->mPreviousSessionCategory, v38);
    objc_storeStrong(&self->mPreviousSessionMode, v21);
    code2 = 0;
    v31 = 19;
    goto LABEL_58;
  }

  if (!kAVVCScope)
  {
    v44 = MEMORY[0x1E69E9C10];
    v47 = MEMORY[0x1E69E9C10];
    goto LABEL_76;
  }

  v44 = *kAVVCScope;
  if (v44)
  {
LABEL_76:
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      *v72 = 136315650;
      v73 = "AVVCSessionManager.mm";
      v74 = 1024;
      v75 = 266;
      v76 = 2112;
      v77 = v41;
      _os_log_impl(&dword_1BA5AC000, v44, OS_LOG_TYPE_ERROR, "%25s:%-5d ERROR: AVVCSessionManager::setupOneTimeSessionSettings setCategoryModeOptions failed with error: %@", v72, 0x1Cu);
    }
  }

  code2 = [v41 code];
LABEL_80:
  v48 = self->_audioSession;
  v68 = v30;
  v49 = [(AVAudioSession *)v48 setIAmTheAssistant:1 error:&v68];
  v50 = v68;

  v51 = v50;
  if (v49)
  {
    goto LABEL_89;
  }

  if (!kAVVCScope)
  {
    v52 = MEMORY[0x1E69E9C10];
    v53 = MEMORY[0x1E69E9C10];
    goto LABEL_85;
  }

  v52 = *kAVVCScope;
  if (v52)
  {
LABEL_85:
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      *v72 = 136315650;
      v73 = "AVVCSessionManager.mm";
      v74 = 1024;
      v75 = 340;
      v76 = 2112;
      v77 = v50;
      _os_log_impl(&dword_1BA5AC000, v52, OS_LOG_TYPE_ERROR, "%25s:%-5d ERROR: AVVCSessionManager::setIAmTheAssistant failed with error: %@", v72, 0x1Cu);
    }
  }

  code2 = [v50 code];
LABEL_89:
  v54 = self->_audioSession;
  v67 = v50;
  v55 = [(AVAudioSession *)v54 setAllowHapticsAndSystemSoundsDuringRecording:1 error:&v67];
  v56 = v67;

  v10 = v56;
  if (v55)
  {
    goto LABEL_98;
  }

  if (!kAVVCScope)
  {
    v57 = MEMORY[0x1E69E9C10];
    v58 = MEMORY[0x1E69E9C10];
    goto LABEL_94;
  }

  v57 = *kAVVCScope;
  if (v57)
  {
LABEL_94:
    if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
    {
      *v72 = 136315650;
      v73 = "AVVCSessionManager.mm";
      v74 = 1024;
      v75 = 347;
      v76 = 2112;
      v77 = v56;
      _os_log_impl(&dword_1BA5AC000, v57, OS_LOG_TYPE_ERROR, "%25s:%-5d ERROR: AVVCSessionManager::setAllowHapticsAndSystemSoundsDuringRecording failed with error: %@", v72, 0x1Cu);
    }
  }

  code2 = [v56 code];
LABEL_98:
  if (client != 1)
  {
    goto LABEL_101;
  }

  v59 = self->_audioSession;
  v66 = v56;
  v60 = [(AVAudioSession *)v59 setEligibleForBTSmartRoutingConsideration:0 error:&v66];
  v61 = v66;

  v10 = v61;
  if ((v60 & 1) == 0)
  {
    if (kAVVCScope)
    {
      v62 = *kAVVCScope;
      if (!v62)
      {
LABEL_110:
        code = [v61 code];
LABEL_111:
        code2 = code;
        if (code)
        {
          goto LABEL_113;
        }

LABEL_112:
        [(AVVCSessionManager *)self setSessionStateWithoutLock:1];
        code2 = 0;
        goto LABEL_113;
      }
    }

    else
    {
      v62 = MEMORY[0x1E69E9C10];
      v63 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
    {
      *v72 = 136315650;
      v73 = "AVVCSessionManager.mm";
      v74 = 1024;
      v75 = 354;
      v76 = 2112;
      v77 = v61;
      _os_log_impl(&dword_1BA5AC000, v62, OS_LOG_TYPE_DEFAULT, "%25s:%-5d ERROR: AVVCSessionManager::setEligibleForBTSmartRoutingConsideration failed with error: %@", v72, 0x1Cu);
    }

    goto LABEL_110;
  }

  self->mEnableSmartRoutingConsideration = 0;
LABEL_101:
  if (!code2)
  {
    goto LABEL_112;
  }

LABEL_113:

  if (v5)
  {
    std::recursive_mutex::unlock(&self->mSessionManagerLock);
  }

  ElapsedTime::~ElapsedTime(buf);
  return code2;
}

- (void)dealloc
{
  audioSession = self->_audioSession;
  self->_audioSession = 0;

  playbackRoute = self->_playbackRoute;
  self->_playbackRoute = 0;

  v5.receiver = self;
  v5.super_class = AVVCSessionManager;
  [(AVVCSessionManager *)&v5 dealloc];
}

- (AVVCSessionManager)initWithSession:(id)session
{
  sessionCopy = session;
  v19.receiver = self;
  v19.super_class = AVVCSessionManager;
  v6 = [(AVVCSessionManager *)&v19 init];
  if (v6)
  {
    if (isAudioSessionAvailable(void)::onceToken != -1)
    {
      dispatch_once(&isAudioSessionAvailable(void)::onceToken, &__block_literal_global_44);
    }

    if (isAudioSessionAvailable(void)::audioSessionAvailable == 1)
    {
      objc_storeStrong(v6 + 25, session);
      v6[8] = 0;
      *(v6 + 10) = 0;
      *(v6 + 9) = 0;
      *(v6 + 5) = 1;
      *(v6 + 36) = 0;
      mEMORY[0x1E698D708] = [MEMORY[0x1E698D708] sharedInstance];
      v6[141] = mEMORY[0x1E698D708] == sessionCopy;

      v6[142] = 0;
      *(v6 + 37) = 1065353216;
      v8 = *(v6 + 26);
      *(v6 + 26) = 0;

      v6[143] = 0;
      *(v6 + 152) = 0u;
      *(v6 + 168) = 0u;
      *(v6 + 184) = 0u;
      *(v6 + 88) = xmmword_1BA6CF4A0;
      v9 = *(v6 + 14);
      *(v6 + 14) = &stru_1F384E730;

      v10 = *(v6 + 15);
      *(v6 + 15) = &stru_1F384E730;

      *(v6 + 16) = -1;
      *(v6 + 34) = 0;
      v6[140] = [*(v6 + 25) eligibleForBTSmartRoutingConsideration];
      v11 = MGGetSInt32Answer();
      v12 = MGGetBoolAnswer();
      if (v11 == 7)
      {
        v13 = 1;
      }

      else
      {
        v13 = v12;
      }

      v6[18] = v13;
      ProductType = PlatformUtilities_iOS::GetProductType(v12);
      v17 = ProductType == 123 || (v15 = PlatformUtilities_iOS::GetProductType(ProductType), v15 == 124) || (v16 = PlatformUtilities_iOS::GetProductType(v15), v16 == 108) || PlatformUtilities_iOS::GetProductType(v16) == 109;
      v6[19] = v17;
    }
  }

  return v6;
}

@end