@interface MXCoreSession
- (BOOL)allowsAirPlayBuffered;
- (BOOL)allowsAirPlayVideo;
- (BOOL)doesSessionConfigurationChangeRequireOutputUnmute:(id)unmute oldAudioMode:(id)mode;
- (BOOL)getIsPlayingVideoOutput;
- (BOOL)hasAudioTrack;
- (BOOL)isAirPlayCapableVideo;
- (BOOL)isEligibleForOutputMuting;
- (BOOL)isLongFormVideo;
- (BOOL)isMediaSession;
- (BOOL)requiresExclaveSensor;
- (BOOL)shouldAllowEnhancedDialogue;
- (BOOL)shouldAttemptSmartRoutingHijackForMusicApp;
- (BOOL)shouldSendSessionConfigurationInfoToVA;
- (BOOL)userPreferredInputPortIsBluetoothManagedAndHighQuality;
- (BOOL)willRouteToOnDemandVADOnActivation;
- (MXCoreSession)init;
- (NSSet)notificationsSubscribedTo;
- (NSString)badgeType;
- (id)additiveRoutingInfo;
- (id)copyCurrentActiveRoutes;
- (id)copyDetailedRouteDescription;
- (id)copyDetailedRouteDescriptionForContinuityScreenOutput:(id)output;
- (id)copyMXSessionList;
- (id)copyPreferredAvailableInputPortFromCache;
- (id)copyPreferredInputPortFromConnectedPorts:(id)ports;
- (id)copyUserPreferredInputPort;
- (int)sendSessionConfigurationInfoToVA;
- (int)setInterruptionStyleAtClientRequest:(unsigned int)request;
- (int)setUpDefaultBehavioursForCategoryAtClientRequest;
- (int)setUpDefaultInterruptionStyleForCategoryAndMode;
- (int)updateInterruptionStyle:(unsigned int)style;
- (unint64_t)mxSessionListAddSession:(id)session;
- (void)dealloc;
- (void)reapplyDeviceSampleRateAndBufferSizeOnVADIfNeeded;
- (void)resetInterruptionFlags;
- (void)restoreSavedHWControlFlagsForClientThatDoesActuallyPlayAudio;
- (void)setBadgeType:(id)type;
- (void)setNotificationsSubscribedTo:(id)to;
- (void)subscribeToNotifications:(id)notifications;
- (void)updateAllowEnhancedDialogue;
- (void)updateApplicationStateAndPIDToInheritAppStateFrom;
- (void)updateCameraExtensionFlagsIfNeeded;
- (void)updatePreferredIOBufferDuration:(float)duration;
- (void)updatePreferredIOBufferFrames:(int)frames;
- (void)updateRouteSharingPolicy:(int)policy setByClient:(BOOL)client;
@end

@implementation MXCoreSession

- (id)copyMXSessionList
{
  v3 = objc_autoreleasePoolPush();
  [(NSLock *)[(MXCoreSession *)self mxSessionListLock] lock];
  allObjects = [(NSPointerArray *)[(MXCoreSession *)self mxSessionList] allObjects];
  [(NSLock *)[(MXCoreSession *)self mxSessionListLock] unlock];
  objc_autoreleasePoolPop(v3);
  return allObjects;
}

- (MXCoreSession)init
{
  v5.receiver = self;
  v5.super_class = MXCoreSession;
  v2 = [(MXCoreSessionBase *)&v5 init];
  if (v2)
  {
    v2->_mxSessionList = [objc_alloc(MEMORY[0x1E696AE08]) initWithOptions:5];
    v2->_mxSessionListLock = objc_alloc_init(MEMORY[0x1E696AD10]);
    v2->_sessionPropertiesLock = objc_alloc_init(MEMORY[0x1E696AD10]);
    objc_initWeak(&location, v2);
    [+[MXSessionManager sharedInstance](MXSessionManager mxCoreSessionListAddSession:"mxCoreSessionListAddSession:", objc_loadWeak(&location)];
    v2->_doesInterAppAudio = 0;
    v2->_notificationsSubscribedTo = objc_alloc_init(MEMORY[0x1E695DFD8]);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (int)setUpDefaultInterruptionStyleForCategoryAndMode
{
  [(MXCoreSessionBase *)self setMixesWithEveryone:0];
  [(MXCoreSessionBase *)self setInterruptionStyleSetByClient:0];
  if (![(MXCoreSessionBase *)self audioCategory])
  {
    goto LABEL_11;
  }

  if (CFEqual([(MXCoreSessionBase *)self audioCategory], @"UserInterfaceSoundEffects") || CFEqual([(MXCoreSessionBase *)self audioCategory], @"AmbientSound") || [+[MXSessionManager isSpeechDetectCategory:"isSpeechDetectCategory:"]
  {
    goto LABEL_5;
  }

  if (CFEqual([(MXCoreSessionBase *)self audioCategory], @"MediaPlayback") || CFEqual([(MXCoreSessionBase *)self audioCategory], @"MediaPlaybackNoSpeaker") || CFEqual([(MXCoreSessionBase *)self audioCategory], @"LiveAudio") || CFEqual([(MXCoreSessionBase *)self audioCategory], @"AudioProcessing") || CFEqual([(MXCoreSessionBase *)self audioCategory], @"SoloAmbientSound"))
  {
    goto LABEL_11;
  }

  if (CFEqual([(MXCoreSessionBase *)self audioCategory], @"Notice") || CFEqual([(MXCoreSessionBase *)self audioCategory], @"VoiceOver"))
  {
LABEL_15:
    [(MXCoreSessionBase *)self setMixesWithEveryone:1];
    v3 = 32;
    goto LABEL_12;
  }

  if (CFEqual([(MXCoreSessionBase *)self audioCategory], @"VoiceCommand") || CFEqual([(MXCoreSessionBase *)self audioCategory], @"VoiceCommand_WithBluetooth"))
  {
    goto LABEL_18;
  }

  if (CFEqual([(MXCoreSessionBase *)self audioCategory], @"VoiceCommandThatMixes") || CFEqual([(MXCoreSessionBase *)self audioCategory], @"VoiceCommandThatMixes_WithBluetooth"))
  {
    goto LABEL_15;
  }

  if (CFEqual([(MXCoreSessionBase *)self audioCategory], @"Record") || CFEqual([(MXCoreSessionBase *)self audioCategory], @"Record_WithBluetooth") || CFEqual([(MXCoreSessionBase *)self audioCategory], @"PlayAndRecord") || CFEqual([(MXCoreSessionBase *)self audioCategory], @"PlayAndRecord_WithBluetooth") || CFEqual([(MXCoreSessionBase *)self audioCategory], @"PlayAndRecord_NoBluetooth_DefaultToSpeaker") || CFEqual([(MXCoreSessionBase *)self audioCategory], @"PlayAndRecord_WithBluetooth_DefaultToSpeaker") || CFEqual([(MXCoreSessionBase *)self audioCategory], @"Multi") || CMSUtility_HasPhoneCallBehaviour(self))
  {
    goto LABEL_11;
  }

  if (CFEqual([(MXCoreSessionBase *)self audioCategory], @"Ringtone"))
  {
LABEL_18:
    v3 = 4;
    goto LABEL_12;
  }

  if (!CFEqual([(MXCoreSessionBase *)self audioCategory], @"Alarm"))
  {
    if (!CFEqual([(MXCoreSessionBase *)self audioCategory], @"RingtonePreview") && !CFEqual([(MXCoreSessionBase *)self audioCategory], @"FindMyPhone") && !CFEqual([(MXCoreSessionBase *)self audioCategory], @"WaterEjection") && !CFEqual([(MXCoreSessionBase *)self audioCategory], @"EmergencyAlert") && !CFEqual([(MXCoreSessionBase *)self audioCategory], @"EmergencyAlert_Muteable"))
    {
      if (CFEqual([(MXCoreSessionBase *)self audioCategory], @"Voicemail") || CFEqual([(MXCoreSessionBase *)self audioCategory], @"VoicemailGreeting"))
      {
        goto LABEL_11;
      }

      if (!CFEqual([(MXCoreSessionBase *)self audioCategory], @"FindMyAudioDevice"))
      {
        if (CFEqual([(MXCoreSessionBase *)self audioCategory], @"SystemSoundsAndHaptics"))
        {
LABEL_5:
          [(MXCoreSessionBase *)self setMixesWithEveryone:1];
          v3 = 16;
          goto LABEL_12;
        }

        if (!CFEqual([(MXCoreSessionBase *)self audioCategory], @"eARC"))
        {
          CFEqual([(MXCoreSessionBase *)self audioCategory], @"HearingTest");
        }

LABEL_11:
        v3 = 8;
        goto LABEL_12;
      }
    }

    goto LABEL_18;
  }

  if (CFEqual([(MXCoreSessionBase *)self audioMode], @"Sleep"))
  {
    v3 = 8;
  }

  else
  {
    v3 = 4;
  }

LABEL_12:
  [(MXCoreSession *)self updateInterruptionStyle:v3];
  return 0;
}

- (void)updateCameraExtensionFlagsIfNeeded
{
  v3 = MX_RunningBoardServices_CopyBundleExtensionPointID(self);
  -[MXCoreSession setIsCameraRecordingExtension:](self, "setIsCameraRecordingExtension:", [v3 isEqualToString:@"com.apple.securecapture"]);
}

- (void)updateApplicationStateAndPIDToInheritAppStateFrom
{
  v7 = *MEMORY[0x1E69E9840];
  [(MXCoreSessionBase *)self setApplicationState:0];
  v3 = [MXSystemController getPIDToInheritAppStateFromForPID:[(NSNumber *)[(MXCoreSessionBase *)self clientPID] intValue]];
  if (v3 != [(MXCoreSession *)self pidToInheritAppStateFrom])
  {
    pidToInheritAppStateFrom = [(MXCoreSession *)self pidToInheritAppStateFrom];
    [(MXCoreSession *)self setPidToInheritAppStateFrom:v3];
    if ([(MXCoreSession *)self pidToInheritAppStateFrom]>= 1)
    {
      MX_RunningBoardServices_StartMonitoringForPID([(MXCoreSession *)self pidToInheritAppStateFrom]);
    }

    if (pidToInheritAppStateFrom >= 1)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  if ([(MXCoreSession *)self pidToInheritAppStateFrom]< 1)
  {
    intValue = [(NSNumber *)[(MXCoreSessionBase *)self clientPID] intValue];
  }

  else
  {
    intValue = [(MXCoreSession *)self pidToInheritAppStateFrom];
  }

  [(MXCoreSessionBase *)self setApplicationState:MX_RunningBoardServices_GetApplicationStateForPID(intValue, 0)];
}

- (int)setUpDefaultBehavioursForCategoryAtClientRequest
{
  LocalSessionPriority = CMSM_GetLocalSessionPriority(self, 1);
  mixesWithEveryone = [(MXCoreSessionBase *)self mixesWithEveryone];
  setUpDefaultInterruptionStyleForCategoryAndMode = [(MXCoreSession *)self setUpDefaultInterruptionStyleForCategoryAndMode];
  if (!setUpDefaultInterruptionStyleForCategoryAndMode && objc_msgSend_isActive(self))
  {
    mixesWithEveryone2 = [(MXCoreSessionBase *)self mixesWithEveryone];
    if (!mixesWithEveryone || mixesWithEveryone2)
    {
      cmsTryToTakeControl(self);
    }

    else
    {
      cmsBeginInterruptionGuts(self, 0, 2);
    }

    CMSUtility_RouteToPreferredRouteIfRequired(self, LocalSessionPriority, 5);
  }

  return setUpDefaultInterruptionStyleForCategoryAndMode;
}

- (id)additiveRoutingInfo
{
  v5.receiver = self;
  v5.super_class = MXCoreSession;
  v3 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:{-[MXCoreSessionBase additiveRoutingInfo](&v5, sel_additiveRoutingInfo)}];
  if ([(MXCoreSession *)self activationContext])
  {
    [v3 setObject:-[MXCoreSession activationContext](self forKey:{"activationContext"), 0x1F2897550}];
  }

  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", -[MXCoreSession clientPriority](self, "clientPriority")), 0x1F2897530}];
  [(MXCoreSessionBase *)self populateAdditiveRoutingInfoWithRouteControlFeatures:v3];
  [(MXCoreSessionBase *)self populateAdditiveRoutingInfoWithEchoCancelledInput:v3];
  [(MXCoreSessionBase *)self populateAdditiveRoutingInfoWithBTRecordingCustomizations:v3];
  [(MXCoreSessionBase *)self populateAdditiveRoutingInfoWithDefaultBuiltInRouteCustomization:v3];
  if ([(MXCoreSession *)self allowedPortTypes])
  {
    [v3 setObject:-[MXCoreSession allowedPortTypes](self forKey:{"allowedPortTypes"), 0x1F28972B0}];
  }

  [(MXCoreSessionBase *)self populateAdditiveRoutingInfoWithFollowingVADInformation:v3 inputOnly:CMSMUtility_IsCategoryInputOnly([(MXCoreSessionBase *)self audioCategory])];
  return v3;
}

- (int)sendSessionConfigurationInfoToVA
{
  v6 = *MEMORY[0x1E69E9840];
  if (MX_FeatureFlags_IsInputAudioCoexistenceSupportEnabled(self, a2) && ![(MXCoreSession *)self shouldSendSessionConfigurationInfoToVA])
  {
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    return 0;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = MXCoreSession;
    return [(MXCoreSessionBase *)&v5 sendSessionConfigurationInfoToVA:[(MXCoreSession *)self additiveRoutingInfo]];
  }
}

- (BOOL)willRouteToOnDemandVADOnActivation
{
  v3.receiver = self;
  v3.super_class = MXCoreSession;
  return [(MXCoreSessionBase *)&v3 willRouteToOnDemandVADOnActivation:[(MXCoreSession *)self additiveRoutingInfo]];
}

- (BOOL)shouldSendSessionConfigurationInfoToVA
{
  v5.receiver = self;
  v5.super_class = MXCoreSession;
  shouldSendSessionConfigurationInfoToVA = [(MXCoreSessionBase *)&v5 shouldSendSessionConfigurationInfoToVA];
  if (shouldSendSessionConfigurationInfoToVA)
  {
    LOBYTE(shouldSendSessionConfigurationInfoToVA) = [(MXCoreSession *)self willRouteToOnDemandVADOnActivation];
  }

  return shouldSendSessionConfigurationInfoToVA;
}

- (BOOL)shouldAttemptSmartRoutingHijackForMusicApp
{
  isSharedAVAudioSessionInstance = [(NSString *)[(MXCoreSessionBase *)self displayID] isEqualToString:@"com.apple.Music"];
  if (isSharedAVAudioSessionInstance)
  {
    isSharedAVAudioSessionInstance = [(MXCoreSession *)self isSharedAVAudioSessionInstance];
    if (isSharedAVAudioSessionInstance)
    {
      if ([(MXCoreSessionBase *)self hasAudioCategory:@"MediaPlayback"])
      {
        LOBYTE(isSharedAVAudioSessionInstance) = 1;
      }

      else
      {

        LOBYTE(isSharedAVAudioSessionInstance) = [(MXCoreSessionBase *)self hasAudioCategory:@"MediaPlaybackNoSpeaker"];
      }
    }
  }

  return isSharedAVAudioSessionInstance;
}

- (void)reapplyDeviceSampleRateAndBufferSizeOnVADIfNeeded
{
  v15 = *MEMORY[0x1E69E9840];
  if (![(MXCoreSession *)self preferredOutputSampleRateSetByClient])
  {
    [(MXCoreSession *)self preferredOutputSampleRate];
    if (v4 != 0.0)
    {
      PreferredIOBufferDuration = CMSUtility_GetPreferredIOBufferDuration(self, v3);
      if (*&PreferredIOBufferDuration == 0.0)
      {
        if ([(MXCoreSession *)self preferredIOBufferFrames])
        {
          if (dword_1EB75DE40)
          {
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          [(MXCoreSession *)self preferredOutputSampleRate];
          v8 = v7;
          PreferredIOBufferFrames = CMSUtility_GetPreferredIOBufferFrames(self, v9);
          v12 = CMSUtility_GetPreferredIOBufferDuration(self, v11);
          v13 = *&v12;
          IsCategoryInputOnly = CMSMUtility_IsCategoryInputOnly([(MXCoreSessionBase *)self audioCategory]);
          cmsSetDeviceSampleRateAndBufferSize(self, PreferredIOBufferFrames, IsCategoryInputOnly, v8, v13);
        }
      }
    }
  }
}

- (BOOL)isMediaSession
{
  v3 = [(MXCoreSessionBase *)self hasAudioCategory:@"MediaPlayback"]|| [(MXCoreSessionBase *)self hasAudioCategory:@"MediaPlaybackNoSpeaker"]|| [(MXCoreSessionBase *)self hasAudioCategory:@"Audio/Video"]|| [(MXCoreSessionBase *)self hasAudioCategory:@"SoloAmbientSound"]|| [(MXCoreSessionBase *)self hasAudioCategory:@"AmbientSound"];
  if ([(MXCoreSessionBase *)self hasAudioMode:@"VoicePrompt"]|| [(MXCoreSessionBase *)self hasAudioMode:@"Measurement"]|| [(MXCoreSessionBase *)self hasAudioMode:@"Raw"])
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = ![(MXCoreSessionBase *)self hasAudioMode:@"LowLatency"];
  }

  return v3 & v4;
}

- (id)copyDetailedRouteDescription
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = [+[MXAdditiveRoutingManager sharedInstance](MXAdditiveRoutingManager copyDetailedRouteDescription:"copyDetailedRouteDescription:", CMSUtility_GetCurrentOutputVADID(self)];
  v4 = [v3 mutableCopy];

  hasInput = [(MXCoreSessionBase *)self hasInput];
  if (hasInput)
  {
    v7 = [+[MXAdditiveRoutingManager sharedInstance](MXAdditiveRoutingManager copyDetailedRouteDescription:"copyDetailedRouteDescription:", CMSUtility_GetCurrentInputVADID(self)];
    v8 = [v7 objectForKey:@"RouteDetailedDescription_Inputs"];
    if (v8)
    {
      [v4 setObject:v8 forKey:@"RouteDetailedDescription_Inputs"];
    }

    if (!v7)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  if (vaemIsContinuityScreenOutputPortPresentInConnectedOutputPorts(hasInput, v6))
  {
    v10 = [(MXCoreSession *)self copyDetailedRouteDescriptionForContinuityScreenOutput:v4];

    return v10;
  }

  return v4;
}

- (NSString)badgeType
{
  [(NSLock *)[(MXCoreSession *)self sessionPropertiesLock] lock];
  v3 = self->_badgeType;
  [(NSLock *)[(MXCoreSession *)self sessionPropertiesLock] unlock];
  return v3;
}

- (void)dealloc
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  [+[MXSessionManager sharedInstance](MXSessionManager mxCoreSessionListAddSession:"mxCoreSessionListAddSession:", 0];

  self->_mxSessionList = 0;
  self->_mxSessionListLock = 0;

  self->_sessionPropertiesLock = 0;
  self->_vibrationData = 0;

  self->_defaultVPChatMode = 0;
  self->_overridePortsList = 0;

  self->_subPortPreferences = 0;
  self->_supportedOutputChannelLayouts = 0;

  self->_activeRoutesWhenInterrupted = 0;
  self->_allowedRouteTypes = 0;

  self->_allowedPortTypes = 0;
  self->_aggregateDeviceClockUID = 0;
  if (self->_extendBackgroundAppAssertionTimer)
  {
    v6 = MXGetAssertionLog(v4, v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      if ([(MXCoreSessionBase *)self playbackAssertionRef])
      {
        v7 = @"YES";
      }

      else
      {
        v7 = @"NO";
      }

      v8 = [(NSDictionary *)self->_hostProcessPlaybackAssertions count];
      v20 = "-MXCoreSession_Embedded-";
      v21 = 2082;
      *buf = 136447234;
      v22 = "[MXCoreSession dealloc]";
      v23 = 1024;
      v24 = 138;
      v25 = 2114;
      v26 = v7;
      v27 = 2048;
      v28 = v8;
      _os_log_impl(&dword_1B17A2000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s:%i Extend background app assertion timer is running playbackAssertion exists: %{public}@, host process playbackassertion count: %lu", buf, 0x30u);
    }

    dispatch_source_cancel(self->_extendBackgroundAppAssertionTimer);

    self->_extendBackgroundAppAssertionTimer = 0;
  }

  interruptSessionWithoutValidAssertionsTimer = self->_interruptSessionWithoutValidAssertionsTimer;
  if (interruptSessionWithoutValidAssertionsTimer)
  {
    dispatch_source_cancel(interruptSessionWithoutValidAssertionsTimer);

    self->_interruptSessionWithoutValidAssertionsTimer = 0;
  }

  self->_activationContext = 0;
  self->_vpBlockConfiguration = 0;
  sessionDeactivateTimer = self->_sessionDeactivateTimer;
  if (sessionDeactivateTimer)
  {
    dispatch_source_cancel(sessionDeactivateTimer);

    self->_sessionDeactivateTimer = 0;
    if (dword_1EB75DE40)
    {
      v18 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  sessionAssertionAuditTimer = self->_sessionAssertionAuditTimer;
  if (sessionAssertionAuditTimer)
  {
    dispatch_source_cancel(sessionAssertionAuditTimer);

    self->_sessionAssertionAuditTimer = 0;
  }

  self->_excludedPortsList = 0;
  self->_cameraParameters = 0;

  self->_duckingSourceList = 0;
  self->_preferredHardwareFormat = 0;

  self->_waitingForRemoteInterruptionDoneIdentifier = 0;
  self->_siriInputDeviceUUID = 0;

  self->_desiredInputGainScalar = 0;
  self->_parentProcessAuditTokens = 0;

  self->_hostProcessPlaybackAssertions = 0;
  self->_hostProcessAttribution = 0;

  self->_powerProfile = 0;
  self->_preferredPersistentRoute = 0;

  self->_notificationsSubscribedTo = 0;
  self->_badgeType = 0;
  v15 = MXGetSerialQueue(v13, v14);
  MXDispatchAsync("[MXCoreSession dealloc]", "MXCoreSession.m", 253, 0, 0, v15, &__block_literal_global_13);
  v16.receiver = self;
  v16.super_class = MXCoreSession;
  [(MXCoreSessionBase *)&v16 dealloc];
  objc_autoreleasePoolPop(v3);
}

uint64_t __24__MXCoreSession_dealloc__block_invoke()
{
  v0 = +[MXSessionManager sharedInstance];

  return [(MXSessionManager *)v0 updateNeroScreenState:0 suspendScreen:1];
}

- (id)copyDetailedRouteDescriptionForContinuityScreenOutput:(id)output
{
  v18 = *MEMORY[0x1E69E9840];
  v11 = [output mutableCopy];
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  obj = [output objectForKey:?];
  v5 = [obj countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = [*(*(&v13 + 1) + 8 * i) mutableCopy];
        if (vaeGetPortTypeFromPortID([objc_msgSend(v9 objectForKey:{@"RouteDetailedDescription_ID", "unsignedIntValue"}]) == 1885565807)
        {
          [v9 setObject:@"Speaker" forKey:@"RouteDetailedDescription_Name"];
          [v9 setObject:@"Speaker" forKey:@"RouteDetailedDescription_UID"];
        }

        [v4 addObject:v9];
      }

      v6 = [obj countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  [v11 setObject:v4 forKey:@"RouteDetailedDescription_Outputs"];

  return v11;
}

- (BOOL)shouldAllowEnhancedDialogue
{
  if (CMSMDeviceState_ItsAnAppleTV())
  {
    if (![(MXCoreSessionBase *)self hasAudioMode:@"MoviePlayback"])
    {
      LOBYTE(prefersEnhancedDialogue) = 0;
      return prefersEnhancedDialogue;
    }

LABEL_6:
    LOBYTE(prefersEnhancedDialogue) = ![(MXCoreSession *)self isAnyPlayingContentIneligibleForEnhancedDialogue];
    return prefersEnhancedDialogue;
  }

  prefersEnhancedDialogue = [(MXCoreSession *)self prefersEnhancedDialogue];
  if (prefersEnhancedDialogue)
  {
    prefersEnhancedDialogue = [(MXCoreSessionBase *)self hasAudioMode:@"MoviePlayback"];
    if (prefersEnhancedDialogue)
    {
      goto LABEL_6;
    }
  }

  return prefersEnhancedDialogue;
}

- (void)updateAllowEnhancedDialogue
{
  v5 = *MEMORY[0x1E69E9840];
  if (![(MXCoreSession *)self allowEnhancedDialogueWasSetByClient])
  {
    allowEnhancedDialogue = [(MXCoreSession *)self allowEnhancedDialogue];
    [(MXCoreSession *)self setAllowEnhancedDialogue:[(MXCoreSession *)self shouldAllowEnhancedDialogue]];
    if (allowEnhancedDialogue != [(MXCoreSession *)self allowEnhancedDialogue])
    {
      if (dword_1EB75DE40)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      CMSMNotificationUtility_PostAllowEnhancedDialogueDidChange(self);
    }
  }
}

- (void)updateRouteSharingPolicy:(int)policy setByClient:(BOOL)client
{
  clientCopy = client;
  v5 = *&policy;
  [(MXCoreSession *)self setRouteSharingPolicy:?];
  if (clientCopy)
  {
    [(MXCoreSession *)self setLastRouteSharingPolicySetByClient:v5];
  }

  v7 = +[MXSessionManager sharedInstance];

  [(MXSessionManager *)v7 updateSomeAirPlayCapableVideoClientIsActive];
}

- (void)updatePreferredIOBufferDuration:(float)duration
{
  [(MXCoreSession *)self preferredIOBufferDuration];
  if (*&v5 != duration)
  {
    *&v5 = duration;

    [(MXCoreSession *)self setPreferredIOBufferDuration:v5];
  }
}

- (void)updatePreferredIOBufferFrames:(int)frames
{
  v3 = *&frames;
  if ([(MXCoreSession *)self preferredIOBufferFrames]!= frames)
  {

    [(MXCoreSession *)self setPreferredIOBufferFrames:v3];
  }
}

- (void)setNotificationsSubscribedTo:(id)to
{
  [(NSLock *)[(MXCoreSession *)self sessionPropertiesLock] lock];

  self->_notificationsSubscribedTo = to;
  sessionPropertiesLock = [(MXCoreSession *)self sessionPropertiesLock];

  [(NSLock *)sessionPropertiesLock unlock];
}

- (NSSet)notificationsSubscribedTo
{
  [(NSLock *)[(MXCoreSession *)self sessionPropertiesLock] lock];
  v3 = self->_notificationsSubscribedTo;
  [(NSLock *)[(MXCoreSession *)self sessionPropertiesLock] unlock];
  return v3;
}

- (void)subscribeToNotifications:(id)notifications
{
  v16 = *MEMORY[0x1E69E9840];
  [(NSLock *)[(MXCoreSession *)self sessionPropertiesLock] lock];
  v5 = [MEMORY[0x1E695DFA8] setWithSet:self->_notificationsSubscribedTo];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [notifications countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(notifications);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v5 addObject:v10];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [notifications countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  self->_notificationsSubscribedTo = [objc_alloc(MEMORY[0x1E695DFD8]) initWithSet:v5];
  [(NSLock *)[(MXCoreSession *)self sessionPropertiesLock] unlock];
}

- (void)setBadgeType:(id)type
{
  v8 = *MEMORY[0x1E69E9840];
  [(NSLock *)[(MXCoreSession *)self sessionPropertiesLock] lock];
  if ([(NSString *)self->_badgeType isEqualToString:type])
  {
    sessionPropertiesLock = [(MXCoreSession *)self sessionPropertiesLock];

    [(NSLock *)sessionPropertiesLock unlock];
  }

  else
  {
    badgeType = self->_badgeType;

    self->_badgeType = type;
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [(NSLock *)[(MXCoreSession *)self sessionPropertiesLock] unlock];
    if (badgeType)
    {
      CMSMNotificationUtility_PostBadgeTypeDidChange(self);
    }
  }
}

- (unint64_t)mxSessionListAddSession:(id)session
{
  objc_initWeak(&location, session);
  [(NSLock *)[(MXCoreSession *)self mxSessionListLock] lock];
  [(NSPointerArray *)[(MXCoreSession *)self mxSessionList] addPointer:objc_loadWeak(&location)];
  [(NSPointerArray *)[(MXCoreSession *)self mxSessionList] compact];
  v4 = [(NSPointerArray *)[(MXCoreSession *)self mxSessionList] count];
  [(NSLock *)[(MXCoreSession *)self mxSessionListLock] unlock];
  objc_destroyWeak(&location);
  return v4;
}

- (int)updateInterruptionStyle:(unsigned int)style
{
  if (style == 2)
  {
    styleCopy = 8;
  }

  else
  {
    styleCopy = style;
  }

  v5 = -12981;
  if (styleCopy <= 0x20)
  {
    if (((1 << styleCopy) & 0x10112) == 0)
    {
      if (styleCopy != 32)
      {
        goto LABEL_7;
      }

      if (![(MXCoreSession *)self duckToLevelScalarSetByClient])
      {
        LODWORD(v11) = 1045220557;
        [(MXCoreSession *)self setDuckToLevelScalar:v11];
      }

      if (![(MXCoreSession *)self duckToLevelDBSetByClient])
      {
        LODWORD(v12) = -1038090240;
        [(MXCoreSession *)self setDuckToLevelDB:v12];
      }

      if (![(MXCoreSession *)self unduckToLevelScalarSetByClient])
      {
        LODWORD(v13) = 1045220557;
        [(MXCoreSession *)self setUnduckToLevelScalar:v13];
      }

      if (![(MXCoreSession *)self duckFadeDurationSetByClient])
      {
        LODWORD(v14) = 0.5;
        [(MXCoreSession *)self setDuckFadeDuration:v14];
      }

      if (![(MXCoreSession *)self unduckFadeDurationSetByClient])
      {
        LODWORD(v15) = 0.5;
        [(MXCoreSession *)self setUnduckFadeDuration:v15];
      }

      if ([(MXCoreSessionBase *)self audioCategory]&& CFEqual([(MXCoreSessionBase *)self audioCategory], @"VoiceOver"))
      {
        *&v16 = CMSMUtility_GetVoiceOverDuckFadeDuration();
        [(MXCoreSession *)self setDuckFadeDuration:v16];
        *&v17 = CMSMUtility_GetVoiceOverDuckFadeDuration();
        [(MXCoreSession *)self setUnduckFadeDuration:v17];
      }
    }

    [(MXCoreSessionBase *)self setInterruptionStyle:styleCopy];
    [(MXCoreSessionBase *)self setMixesWithEveryone:((style - 16) & 0xFFFFFFEF) == 0];
    v5 = 0;
  }

LABEL_7:
  CMSMNP_UpdateNowPlayingAppForNewInterruptionStyle(self);
  selfCopy = self;
  v9 = MXGetNotificationSenderQueue(selfCopy, v8);
  MXDispatchAsyncFunction("[MXCoreSession updateInterruptionStyle:]", "MXCoreSession.m", 1143, 0, 0, v9, self, CMSMNotificationUtility_PostSessionAudioBehaviourDidChange_f);
  return v5;
}

- (int)setInterruptionStyleAtClientRequest:(unsigned int)request
{
  v43 = *MEMORY[0x1E69E9840];
  if (request)
  {
    v4 = *&request;
    if ([(MXCoreSessionBase *)self interruptionStyle]== request)
    {
      [(MXCoreSessionBase *)self setInterruptionStyleSetByClient:1];
      return 0;
    }

    if ([(MXCoreSessionBase *)self audioCategory])
    {
      v7 = [+[MXSessionManager sharedInstance](MXSessionManager getUncustomizedCategory:"getUncustomizedCategory:", [(MXCoreSessionBase *)self audioCategory]];
    }

    else
    {
      v7 = @"Audio/Video";
    }

    mixesWithEveryone = [(MXCoreSessionBase *)self mixesWithEveryone];
    interruptionStyle = [(MXCoreSessionBase *)self interruptionStyle];
    interruptionStyleSetByClient = [(MXCoreSessionBase *)self interruptionStyleSetByClient];
    interruptionStyle2 = [(MXCoreSessionBase *)self interruptionStyle];
    LocalSessionPriority = CMSM_GetLocalSessionPriority(self, 1);
    if (v4 == 32 || v4 == 16)
    {
      if (!FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual())
      {
LABEL_27:
        if (!FigCFEqual() && !CMSMUtility_IsEmergencyAlertCategory(v7) && !FigCFEqual() && (!CMSMDeviceState_ItsAHomePod() || !FigCFEqual()) && ![+[MXSessionManager isSpeechDetectCategory:"isSpeechDetectCategory:"]
        {
          return 0;
        }
      }
    }

    else if (!FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual())
    {
      goto LABEL_27;
    }

    v5 = [(MXCoreSession *)self updateInterruptionStyle:v4];
    if (v5)
    {
      return v5;
    }

    [(MXCoreSessionBase *)self setInterruptionStyleSetByClient:1];
    interruptionStyle3 = [(MXCoreSessionBase *)self interruptionStyle];
    if (objc_msgSend_isActive(self))
    {
      mixesWithEveryone2 = [(MXCoreSessionBase *)self mixesWithEveryone];
      if (!mixesWithEveryone || mixesWithEveryone2)
      {
        cmsTryToTakeControl(self);
      }

      else if (cmsBeginInterruptionGuts(self, 0, 2))
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v5 = [(MXCoreSession *)self updateInterruptionStyle:interruptionStyle2];
        [(MXCoreSessionBase *)self setInterruptionStyleSetByClient:interruptionStyleSetByClient];
        return v5;
      }

      copyMXCoreSessionList = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v17 = [copyMXCoreSessionList countByEnumeratingWithState:&v29 objects:v35 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v30;
        while (2)
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v30 != v19)
            {
              objc_enumerationMutation(copyMXCoreSessionList);
            }

            v21 = *(*(&v29 + 1) + 8 * i);
            if (v21 != self && (objc_msgSend_isActive(v21) & 1) != 0)
            {
              v22 = interruptionStyle == 32;

              if (v22 == (interruptionStyle3 == 32) || ![+[MXSessionManager voiceOverSessionWantsRelativeDucking:"voiceOverSessionWantsRelativeDucking:"]
              {
                v27 = interruptionStyle != 32;
                if (interruptionStyle == 32 || interruptionStyle3 != 32)
                {
                  if (interruptionStyle3 == 32)
                  {
                    v27 = 1;
                  }

                  if (!v27)
                  {
                    [+[MXSessionManager sharedInstance](MXSessionManager unduckSessionsForDucker:"unduckSessionsForDucker:", self];
                  }
                }

                else
                {
                  v28 = CMSUtility_CopySessionsToDuck(1, 0, self);
                  [+[MXSessionManager sharedInstance](MXSessionManager duckSessionsForDucker:"duckSessionsForDucker:sessionsToDuck:" sessionsToDuck:self, v28];
                  if (v28)
                  {
                    [(MXCoreSession *)self setNeedToEndInterruption:1];
                  }
                }
              }

              else
              {
                if (dword_1EB75DE40)
                {
                  v34 = 0;
                  type = OS_LOG_TYPE_DEFAULT;
                  v23 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                  v24 = v34;
                  v25 = type;
                  if (os_log_type_enabled(v23, type))
                  {
                    v26 = v24;
                  }

                  else
                  {
                    v26 = v24 & 0xFFFFFFFE;
                  }

                  if (v26)
                  {
                    v36 = 136315650;
                    v37 = "[MXCoreSession setInterruptionStyleAtClientRequest:]";
                    v38 = 1024;
                    v39 = v22;
                    v40 = 1024;
                    v41 = interruptionStyle3 == 32;
                    _os_log_send_and_compose_impl(v26, 0, v42, 128, &dword_1B17A2000, v23, v25, "-MXCoreSession_Embedded- %s: VoiceOver's interruption style changed: didDuck = %{BOOL}u -> doesDuck = %{BOOL}u, updating ducked sessions for VoiceOver.", &v36, 24);
                  }

                  fig_log_call_emit_and_clean_up_after_send_and_compose();
                }

                [+[MXSessionManager sharedInstance](MXSessionManager startAsyncDuckingOperation];
                [+[MXSessionManager sharedInstance](MXSessionManager updateDuckedSessionsForVoiceOver:"updateDuckedSessionsForVoiceOver:", self];
                [+[MXSessionManager sharedInstance](MXSessionManager endAsyncDuckingOperation];
              }

              goto LABEL_67;
            }
          }

          v18 = [copyMXCoreSessionList countByEnumeratingWithState:&v29 objects:v35 count:16];
          if (v18)
          {
            continue;
          }

          break;
        }
      }

LABEL_67:
      CMSUtility_RouteToPreferredRouteIfRequired(self, LocalSessionPriority, 4);
    }

    return 0;
  }

  [(MXCoreSessionBase *)self setInterruptionStyleSetByClient:?];

  return [(MXCoreSession *)self setUpDefaultBehavioursForCategoryAtClientRequest];
}

- (void)resetInterruptionFlags
{
  [(MXCoreSession *)self setWaitingToResumeWhenDeviceUnlocksOrInForeground:0];

  [(MXCoreSession *)self setWaitingForEndInterruptionWhenDeviceUnlocksOrInForeground:0];
}

- (BOOL)isEligibleForOutputMuting
{
  v3 = +[MXSessionManager sharedInstance];
  audioCategory = [(MXCoreSessionBase *)self audioCategory];
  audioMode = [(MXCoreSessionBase *)self audioMode];

  return [(MXSessionManager *)v3 isSessionConfigurationEligibleForOutputMuting:audioCategory audioMode:audioMode];
}

- (BOOL)hasAudioTrack
{
  v16 = *MEMORY[0x1E69E9840];
  copyMXSessionList = [(MXCoreSession *)self copyMXSessionList];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [copyMXSessionList countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(copyMXSessionList);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if ([v8 getClientType] == 3)
        {
          if (dword_1EB75DE40)
          {
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          if ([v8 getAudioTrackStatus] == 2)
          {
            goto LABEL_15;
          }

          v5 = 1;
        }
      }

      v4 = [copyMXSessionList countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);

    if (v5)
    {
      return 0;
    }
  }

  else
  {
LABEL_15:
  }

  return 1;
}

- (BOOL)doesSessionConfigurationChangeRequireOutputUnmute:(id)unmute oldAudioMode:(id)mode
{
  isOutputMuted = CMSMDeviceState_SupportsShortFormOutputMutingAudioPolicy(self, a2);
  if (isOutputMuted)
  {
    isOutputMuted = [(MXCoreSession *)self isOutputMuted];
    if (isOutputMuted)
    {
      isOutputMuted = [+[MXSessionManager sharedInstance](MXSessionManager isSessionConfigurationEligibleForOutputMuting:"isSessionConfigurationEligibleForOutputMuting:audioMode:" audioMode:unmute, mode];
      if (isOutputMuted)
      {
        LOBYTE(isOutputMuted) = ![+[MXSessionManager sharedInstance](MXSessionManager isSessionConfigurationEligibleForOutputMuting:"isSessionConfigurationEligibleForOutputMuting:audioMode:" audioMode:[(MXCoreSessionBase *)self audioCategory], [(MXCoreSessionBase *)self audioMode]];
      }
    }
  }

  return isOutputMuted;
}

- (BOOL)requiresExclaveSensor
{
  if ([(MXCoreSessionBase *)self isTheAssistant]&& [(MXCoreSessionBase *)self isUsingBuiltInMicForRecording])
  {
    LOBYTE(isRecording) = 1;
  }

  else
  {
    isRecording = [(MXCoreSessionBase *)self isRecording];
    if (isRecording)
    {
      if ([(MXCoreSessionBase *)self isRecordingMuted])
      {
        LOBYTE(isRecording) = 0;
      }

      else
      {

        LOBYTE(isRecording) = [(MXCoreSessionBase *)self isUsingBuiltInMic];
      }
    }
  }

  return isRecording;
}

- (id)copyCurrentActiveRoutes
{
  v8 = 0;
  CurrentAudioDestination = CMSUtility_GetCurrentAudioDestination(self);
  VADCategoryFromFigCategoryName = CMSMVAUtility_GetVADCategoryFromFigCategoryName([(MXCoreSessionBase *)self audioCategory]);
  VADModeFromFigModeName = CMSMVAUtility_GetVADModeFromFigModeName([(MXCoreSessionBase *)self audioMode]);
  v6 = vaemCopyActivePortsListForRouteConfigurationScopeAndDevice(VADCategoryFromFigCategoryName, VADModeFromFigModeName, [(MXCoreSession *)self activationContext], [(MXCoreSession *)self allowedPortTypes], [(MXCoreSession *)self prefersBluetoothHighQualityContentCapture], 0, CurrentAudioDestination);
  if ([(__CFArray *)v6 count])
  {
    CMSMVAUtility_CopyRoutesInfoFromInputAndOutputPorts(v6, 0, &v8, 0, 0, 0);
  }

  return v8;
}

- (BOOL)allowsAirPlayVideo
{
  [(MXCoreSessionBase *)self audioCategory];
  [(MXCoreSessionBase *)self audioMode];
  v3 = FigCFEqual();
  if (v3)
  {
    if (FigCFEqual() || FigCFEqual() || (v3 = FigCFEqual()) != 0)
    {
      LOBYTE(v3) = 1;
    }
  }

  return v3;
}

- (BOOL)allowsAirPlayBuffered
{
  [(MXCoreSessionBase *)self audioCategory];
  [(MXCoreSessionBase *)self displayID];
  return ![(MXCoreSessionBase *)self mixesWithEveryone]&& ![(MXCoreSession *)self prefersConcurrentAirPlayAudio]&& !FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual();
}

- (id)copyPreferredInputPortFromConnectedPorts:(id)ports
{
  v21 = *MEMORY[0x1E69E9840];
  if (![ports objectForKey:@"RouteUID"])
  {
    return 0;
  }

  VADCategoryFromFigCategoryName = CMSMVAUtility_GetVADCategoryFromFigCategoryName([(MXCoreSessionBase *)self audioCategory]);
  VADModeFromFigModeName = CMSMVAUtility_GetVADModeFromFigModeName([(MXCoreSessionBase *)self audioMode]);
  v6 = vaemCopyConnectedInputPortsForDefaultVADFromDeviceListWithRouteConfiguration(VADCategoryFromFigCategoryName, VADModeFromFigModeName, [(MXCoreSession *)self allowedPortTypes], [(MXCoreSession *)self prefersBluetoothHighQualityContentCapture]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = vaeCopyDeviceIdentifierFromVADPort([v11 unsignedIntValue]);
        if (FigCFEqual())
        {
          if (dword_1EB75DE40)
          {
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          v13 = v11;

          goto LABEL_15;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_15:

  return v13;
}

- (id)copyPreferredAvailableInputPortFromCache
{
  v11 = *MEMORY[0x1E69E9840];
  if (CMSMUtility_IsInputAllowedForCategory([(MXCoreSessionBase *)self audioCategory]))
  {
    v3 = CMSUtility_CopyBundleID(self);
    v4 = [+[MXUserPreferredInputRouteCache sharedInstance](MXUserPreferredInputRouteCache copyUserPreferredRoute:"copyUserPreferredRoute:", v3];
    if (v4)
    {
      if (dword_1EB75DE40)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v6 = [(MXCoreSession *)self copyPreferredInputPortFromConnectedPorts:v4];
      if (v6)
      {
        goto LABEL_15;
      }
    }

    if (dword_1EB75DE40)
    {
      v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v8 = [+[MXUserPreferredInputRouteCache sharedInstance](MXUserPreferredInputRouteCache copyUserPreferredRoute:"copyUserPreferredRoute:", 0];
    if (v8)
    {
      v6 = [(MXCoreSession *)self copyPreferredInputPortFromConnectedPorts:v8];
      if (v6 || !dword_1EB75DE40)
      {
        goto LABEL_14;
      }

      v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v6 = 0;
LABEL_14:

LABEL_15:
    return v6;
  }

  return 0;
}

- (id)copyUserPreferredInputPort
{
  v9 = *MEMORY[0x1E69E9840];
  copyPreferredAvailableInputPortFromCache = [(MXCoreSession *)self copyPreferredAvailableInputPortFromCache];
  v3 = copyPreferredAvailableInputPortFromCache;
  if (!copyPreferredAvailableInputPortFromCache)
  {
LABEL_7:
    v6 = 0;
    goto LABEL_8;
  }

  unsignedIntValue = [copyPreferredAvailableInputPortFromCache unsignedIntValue];
  v5 = unsignedIntValue;
  if (CMSMVAUtility_IsInputPortBluetoothMicrophone(unsignedIntValue) && !CMSMVAUtility_ShouldBTPortBeTreatedAsInEar(v5))
  {
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    goto LABEL_7;
  }

  v6 = v3;
LABEL_8:

  return v6;
}

- (BOOL)userPreferredInputPortIsBluetoothManagedAndHighQuality
{
  prefersBluetoothHighQualityContentCapture = [(MXCoreSession *)self prefersBluetoothHighQualityContentCapture];
  if (prefersBluetoothHighQualityContentCapture)
  {
    copyPreferredAvailableInputPortFromCache = [(MXCoreSession *)self copyPreferredAvailableInputPortFromCache];
    v5 = -[MXAudioAccessoryServices isPortManaged:](+[MXAudioAccessoryServices sharedInstance](MXAudioAccessoryServices, "sharedInstance"), "isPortManaged:", [copyPreferredAvailableInputPortFromCache unsignedIntValue]);

    LOBYTE(prefersBluetoothHighQualityContentCapture) = v5;
  }

  return prefersBluetoothHighQualityContentCapture;
}

- (BOOL)getIsPlayingVideoOutput
{
  v12 = *MEMORY[0x1E69E9840];
  copyMXSessionList = [(MXCoreSession *)self copyMXSessionList];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = [copyMXSessionList countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(copyMXSessionList);
        }

        if ([*(*(&v7 + 1) + 8 * i) getIsPlayingVideoOutput])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [copyMXSessionList countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (BOOL)isLongFormVideo
{
  if ([(MXCoreSession *)self routeSharingPolicy]== 3 || (v3 = [+[MXSessionManager isLongFormVideoApp:"isLongFormVideoApp:"])
  {
    LOBYTE(v3) = 1;
  }

  return v3;
}

- (BOOL)isAirPlayCapableVideo
{
  if (![(MXCoreSession *)self isLongFormVideo]&& ![(MXCoreSessionBase *)self hasAudioMode:@"MoviePlayback"])
  {
    if ([(MXCoreSession *)self routeSharingPolicy]!= 1)
    {
      LOBYTE(getIsPlayingVideoOutput) = 0;
      return getIsPlayingVideoOutput;
    }

    getIsPlayingVideoOutput = [(MXCoreSession *)self getIsPlayingVideoOutput];
    if (!getIsPlayingVideoOutput)
    {
      return getIsPlayingVideoOutput;
    }
  }

  LOBYTE(getIsPlayingVideoOutput) = 1;
  return getIsPlayingVideoOutput;
}

- (void)restoreSavedHWControlFlagsForClientThatDoesActuallyPlayAudio
{
  v4 = *MEMORY[0x1E69E9840];
  if (![(MXCoreSession *)self hwControlFlags])
  {
    [(MXCoreSession *)self setHwControlFlags:[(MXCoreSession *)self savedHWControlFlagsForClientThatDoesNotActuallyPlayAudio]];
    [(MXCoreSession *)self setSavedHWControlFlagsForClientThatDoesNotActuallyPlayAudio:0];
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }
}

@end