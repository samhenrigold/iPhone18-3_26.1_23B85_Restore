@interface MXSystemController
+ (BOOL)allowBluetoothAccessoryToRequestAudioRoute;
+ (BOOL)getCanBeNowPlayingAppForPID:(int)d;
+ (BOOL)isAppAllowedToInitiatePlayback:(id)playback;
+ (id)copyMXSystemControllerList:(BOOL)list;
+ (int)getPIDForAnyAppThatWantsVolumeChanges;
+ (int)getPIDToInheritAppStateFromForPID:(int)d;
+ (void)dumpInfoOfMXSystemControllers;
+ (void)initialize;
+ (void)mxSystemControllerListAddInstance:(id)instance isSidekick:(BOOL)sidekick;
+ (void)notifyAll:(id)all payload:(id)payload dontPostIfSuspended:(BOOL)suspended remoteDeviceID:(id)d;
+ (void)sendPreferHeadphonesOverCarsAndSpeakersSettingsUpdateToAudioStatistics:(BOOL)statistics;
+ (void)setPreferHeadphonesOverCarsAndSpeakersEnabled:(BOOL)enabled;
+ (void)updateMXSystemControllerList;
- (BOOL)isAppAllowedToInitiatePlayback:(id)playback;
- (BOOL)isSomeoneRecording;
- (BOOL)phoneCallExists;
- (BOOL)someLongFormVideoClientIsActiveOverAirPlayVideo;
- (BOOL)someLongFormVideoClientIsPlaying;
- (BOOL)someLongFormVideoClientIsPlayingOverAirPlayVideo;
- (BOOL)someSharePlayCapableCallSessionIsActive;
- (MXSystemController)initWithPID:(int)d remoteDeviceID:(id)iD;
- (id)info;
- (int)_performVolumeOperation:(unsigned int)operation volume:(float)volume category:(id)category mode:(id)mode routeName:(id)name routeDeviceIdentifier:(id)identifier routeSubtype:(id)subtype outVolume:(float *)self0 outSequenceNumber:(int64_t *)self1 outMuted:(BOOL *)self2 outCategoryCopy:(id *)self3 outModeCopy:(id *)self4;
- (int)_performVolumeOperation:(unsigned int)operation volume:(float)volume category:(id)category mode:(id)mode routeName:(id)name routeDeviceIdentifier:(id)identifier routeSubtype:(id)subtype rampUpDuration:(float)self0 rampDownDuration:(float)self1 outVolume:(float *)self2 outSequenceNumber:(int64_t *)self3 outMuted:(BOOL *)self4 outCategoryCopy:(id *)self5 outModeCopy:(id *)self6;
- (int)_performVolumeOperation:(unsigned int)operation volume:(float)volume category:(id)category mode:(id)mode routeName:(id)name routeDeviceIdentifier:(id)identifier routeSubtype:(id)subtype rampUpDuration:(float)self0 rampDownDuration:(float)self1 outVolume:(float *)self2 outSequenceNumber:(int64_t *)self3 outMuted:(BOOL *)self4 outCategoryCopy:(id *)self5 outModeCopy:(id *)self6 retainFullMute:(BOOL)self7;
- (int)_performVolumeOperation:(unsigned int)operation volume:(float)volume category:(id)category mode:(id)mode routeName:(id)name routeDeviceIdentifier:(id)identifier routeSubtype:(id)subtype rampUpwardDuration:(id)self0 rampDownwardDuration:(id)self1 outVolume:(float *)self2 outSequenceNumber:(int64_t *)self3 outMuted:(BOOL *)self4 outCategoryCopy:(id *)self5 outModeCopy:(id *)self6;
- (int)allowAppsToInitiatePlayback:(id)playback clientType:(id)type isTemporary:(BOOL)temporary;
- (int)applyPIDToInheritAppStateFrom:(const void *)from;
- (int)clearUplinkMutedCache;
- (int)copyAttributeForKey:(id)key withValueOut:(void *)out;
- (int)copyAttributeForKeyInternal:(id)internal withValueOut:(void *)out;
- (int)copySessionIDsWithMuteValue:(id *)value muteValue:(BOOL *)muteValue;
- (int)getAudioSessionID:(unsigned int *)d forAttributedPID:(int)iD;
- (int)getInputMute:(id *)mute outMuteValue:(BOOL *)value;
- (int)getVolumeButtonDelta:(id)delta outVolumeDelta:(float *)volumeDelta;
- (int)grantMediaEndowmentWithEnvironmentID:(id)d endowmentPayload:(id)payload;
- (int)performVolumeOperation:(unsigned int)operation volume:(float)volume category:(id)category mode:(id)mode routeName:(id)name routeDeviceIdentifier:(id)identifier routeSubtype:(id)subtype outVolume:(float *)self0 outSequenceNumber:(int64_t *)self1 outMuted:(BOOL *)self2 outCategoryCopy:(id *)self3 outModeCopy:(id *)self4;
- (int)performVolumeOperation:(unsigned int)operation volume:(float)volume category:(id)category mode:(id)mode routeName:(id)name routeDeviceIdentifier:(id)identifier routeSubtype:(id)subtype rampUpDuration:(float)self0 rampDownDuration:(float)self1 outVolume:(float *)self2 outSequenceNumber:(int64_t *)self3 outMuted:(BOOL *)self4 outCategoryCopy:(id *)self5 outModeCopy:(id *)self6;
- (int)performVolumeOperation:(unsigned int)operation volume:(float)volume category:(id)category mode:(id)mode routeName:(id)name routeDeviceIdentifier:(id)identifier routeSubtype:(id)subtype rampUpDuration:(float)self0 rampDownDuration:(float)self1 outVolume:(float *)self2 outSequenceNumber:(int64_t *)self3 outMuted:(BOOL *)self4 outCategoryCopy:(id *)self5 outModeCopy:(id *)self6 retainFullMute:(BOOL)self7;
- (int)performVolumeOperation:(unsigned int)operation volume:(float)volume category:(id)category mode:(id)mode routeName:(id)name routeDeviceIdentifier:(id)identifier routeSubtype:(id)subtype rampUpwardDuration:(id)self0 rampDownwardDuration:(id)self1 outVolume:(float *)self2 outSequenceNumber:(int64_t *)self3 outMuted:(BOOL *)self4 outCategoryCopy:(id *)self5 outModeCopy:(id *)self6;
- (int)revokeMediaEndowmentWithEnvironmentID:(id)d;
- (int)setAttributeForKey:(id)key andValue:(const void *)value;
- (int)setAttributeForKeyInternal:(id)internal andValue:(const void *)value;
- (int)setInputMute:(id *)mute muteValue:(BOOL)value;
- (int)setSilentMode:(BOOL)mode untilTime:(id)time reason:(id)reason clientType:(unsigned int)type;
- (int)toggleInputMute;
- (void)applyCanBeNowPlayingApp:(const void *)app;
- (void)dealloc;
- (void)volumeCategoryAndMode:(id)mode mode:(id)a4 outCategoryCopy:(id *)copy outModeCopy:(id *)modeCopy;
@end

@implementation MXSystemController

- (id)info
{
  if ([(MXSystemController *)self remoteDeviceID])
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"<MXSystemController: %@ PID=%d RemoteDeviceID=%@, listOfNotificationSubscriptions=%@>", -[MXSystemController displayID](self, "displayID"), -[MXSystemController clientPID](self, "clientPID"), -[MXSystemController remoteDeviceID](self, "remoteDeviceID"), -[MXSystemController notificationsSubscribedTo](self, "notificationsSubscribedTo"), v11, v12];
  }

  if (MX_FeatureFlags_IsAirPlayDaemonEnabled(0, v3) && [(MXSystemController *)self remoteDeviceIDs])
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"<MXSystemController: %@ PID=%d RemoteDeviceIDs=%@, listOfNotificationSubscriptions=%@>", -[MXSystemController displayID](self, "displayID"), -[MXSystemController clientPID](self, "clientPID"), -[MXSystemController remoteDeviceIDs](self, "remoteDeviceIDs"), -[MXSystemController notificationsSubscribedTo](self, "notificationsSubscribedTo"), v11, v12];
  }

  v5 = MEMORY[0x1E696AEC0];
  displayID = [(MXSystemController *)self displayID];
  clientPID = [(MXSystemController *)self clientPID];
  pidToInheritAppStateFrom = [(MXSystemController *)self pidToInheritAppStateFrom];
  if ([(MXSystemController *)self appWantsVolumeChanges])
  {
    v9 = "YES";
  }

  else
  {
    v9 = "NO";
  }

  if ([(MXSystemController *)self hasEntitlementToEnableWombat])
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  return [v5 stringWithFormat:@"<MXSystemController: %@ PID=%d InheritingFrom=%d wantsVolumeChanges=%s hasEntitlementToEnableWombat=%@, listOfNotificationSubscriptions=%@>", displayID, clientPID, pidToInheritAppStateFrom, v9, v10, -[MXSystemController notificationsSubscribedTo](self, "notificationsSubscribedTo")];
}

+ (int)getPIDForAnyAppThatWantsVolumeChanges
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [MXSystemController copyMXSystemControllerList:0];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        if (v6 && [*(*(&v8 + 1) + 8 * i) appWantsVolumeChanges])
        {
          LODWORD(v3) = [v6 clientPID];
          goto LABEL_12;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v3;
}

- (BOOL)someLongFormVideoClientIsActiveOverAirPlayVideo
{
  v2 = objc_autoreleasePoolPush();
  v3 = CMSMUtility_IsAnyLongFormVideoSessionActiveOverAirPlayVideo() != 0;
  objc_autoreleasePoolPop(v2);
  return v3;
}

- (BOOL)someLongFormVideoClientIsPlaying
{
  v2 = objc_autoreleasePoolPush();
  v3 = CMSMUtility_IsAnyLongFormVideoSessionPlaying() != 0;
  objc_autoreleasePoolPop(v2);
  return v3;
}

+ (void)initialize
{
  if (objc_opt_self() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work();
    fig_note_initialize_category_with_default_work();
    if (byte_1EB75DE81)
    {
      unk_1EB75DE80 = 0;
    }

    MXSystemControllerSetup();
    gMXSystemControllerNonSerializedCopyProperties = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"ActiveNeroVisualStreamInfo", @"ActivePhoneCallInfo", @"AirPlayScreenSuspended", @"AppWantsVolumeChanges", @"CanBeNowPlayingApp", @"CarPlayAuxStreamSupport", @"CarPlayIsConnected", @"CarPlayIsPlayingLongerDurationSession", @"CarPlaySupportsMixableSiri", @"ExternalScreenType", @"CurrentlyActiveCategory", @"CurrentlyActiveMode", @"CurrentVideoStreams", @"DeviceSupportsPiP", @"HeadphoneJackHasInput", @"HeadphoneJackIsConnected", @"HighestArbitrationPriorityForTipi", @"iOSWillRequestToBorrowStarkMainAudio", @"iOSWillRequestToTakeStarkMainAudio", @"IsSomeoneRecording", @"LongFormVideoApps", @"IsMaximumSpeakerVolumeLimitEnabled", @"MaximumSpeakerVolumeLimit", @"DefaultMaximumSpeakerVolumeLimit", @"PreferHeadphonesOverCarsAndSpeakersEnabled", @"AllowBluetoothAccessoryToRequestAudioRoute", @"NowPlayingAppDisplayID", @"NowPlayingAppIsInterrupted", @"NowPlayingAppIsPlaying", @"NowPlayingAppPID", @"NowPlayingAppShouldResumeForCarPlay", @"PhoneCallExists", @"PIDToInheritApplicationStateFrom", @"PlayingSessionsDescription", @"RecordingClientPIDs", @"RecordingSessionsDescription", @"ShouldIgnorePlayCommandsFromAccessory", @"SilentModeEnabled", @"SomeClientIsPlaying", @"SomeClientIsPlayingLongFormAudio", @"SomeLongFormVideoClientIsActiveOverAirPlayVideo", @"SomeLongFormVideoClientIsPlaying", @"SomeLongFormVideoClientIsPlayingOverAirPlayVideo", @"SomeRecordingSessionPresentThatDisallowsSystemSounds", @"SomeSessionIsActiveThatPrefersNoInterruptionsByRingtonesAndAlerts", @"StarkMainAudioIsOwnedByiOSButBorrowedByCar", @"SystemHasAudioInputDevice", @"SystemHasAudioInputDeviceExcludingBluetooth", @"SystemIsAnAppleTV", @"UplinkMute", @"VibeIntensity", @"VoicePromptStyle", @"WombatEnabled", @"RemoteDeviceIDs", 0}];
    gMXSystemControllerNonSerializedSetProperties = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"AirPlayScreenSuspended", @"AllowAppToFadeInTemporarily", @"AllowAppToInitiatePlaybackTemporarily", @"AllowAppToInitiateRecordingTemporarily", @"AppWantsVolumeChanges", @"CarSpeechStateChanged", @"ClientAuditToken", @"NowPlayingAppShouldResumeForCarPlay", @"PostInterruptionEndedNotification", @"StarkMainAudioIsOwnedByiOSButBorrowedByCar", @"SubscribeToNotifications", @"VibeIntensity", @"RemoteDeviceIDs", 0}];
    gPreferHeadphonesOverCarsAndSpeakersEnabled = MXCFPreferencesGetBooleanWithDefault(@"PreferHeadphonesOverCarsAndSpeakersEnabled", 0) != 0;
  }
}

+ (void)setPreferHeadphonesOverCarsAndSpeakersEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v6 = *MEMORY[0x1E69E9840];
  if (unk_1EB75DE80)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (gPreferHeadphonesOverCarsAndSpeakersEnabled != enabledCopy)
  {
    [self sendPreferHeadphonesOverCarsAndSpeakersSettingsUpdateToAudioStatistics:enabledCopy];
  }

  gPreferHeadphonesOverCarsAndSpeakersEnabled = enabledCopy;
  CMSMNotificationUtility_PostAllowBluetoothAccessoryToRequestAudioRouteDidChangeNotificationIfNeeded();
  CMSMNotificationUtility_PostPreferHeadphonesOverCarsAndSpeakersDidChange(gPreferHeadphonesOverCarsAndSpeakersEnabled);
}

+ (BOOL)allowBluetoothAccessoryToRequestAudioRoute
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = [+[MXSessionManager sharedInstance](MXSessionManager isCurrentRouteHeadphoneAndInEar:"isCurrentRouteHeadphoneAndInEar:", 0];
  v3 = v2 & +[MXSystemController preferHeadphonesOverCarsAndSpeakersEnabled]^ 1;
  if (unk_1EB75DE80)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return v3;
}

- (MXSystemController)initWithPID:(int)d remoteDeviceID:(id)iD
{
  v15.receiver = self;
  v15.super_class = MXSystemController;
  v6 = [(MXSystemController *)&v15 init];
  v7 = v6;
  if (v6)
  {
    v6->_clientPID = d;
    v6->_hasEntitlementForPIDInheritance = 0;
    v6->_auditToken = 0;
    v6->_bundleID = 0;
    v6->_hasEntitlementToEnableWombat = getpid() == d;
    v7->_hasEntitlementToSetSilentMode = getpid() == d;
    v7->_hasEntitlementForSilentModeNotifications = getpid() == d;
    v7->_hasEntitlementToInitiateRecordingTemporarily = getpid() == d;
    v7->_notificationsSubscribedTo = objc_alloc_init(MEMORY[0x1E695DF90]);
    objc_initWeak(&location, v7);
    if (iD)
    {
      v7->_remoteDeviceID = iD;
    }

    v8 = [MXSystemController mxSystemControllerListAddInstance:objc_loadWeak(&location) isSidekick:iD != 0];
    v10 = MXGetSerialQueue(v8, v9);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __49__MXSystemController_initWithPID_remoteDeviceID___block_invoke;
    v12[3] = &unk_1E7AEA958;
    objc_copyWeak(&v13, &location);
    MXDispatchAsync("[MXSystemController initWithPID:remoteDeviceID:]", "MXSystemController_Embedded.m", 336, 0, 0, v10, v12);
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  return v7;
}

void __49__MXSystemController_initWithPID_remoteDeviceID___block_invoke(uint64_t a1)
{
  Weak = objc_loadWeak((a1 + 32));
  if (Weak)
  {
    v2 = Weak;
    v3 = MX_RunningBoardServices_CopyDisplayIDForPID([Weak clientPID]);
    [v2 setDisplayID:v3];
  }
}

- (void)dealloc
{
  v3 = objc_autoreleasePoolPush();
  clientPID = self->_clientPID;
  +[MXSystemController updateMXSystemControllerList];

  self->_appsAllowedToInitiatePlayback = 0;
  self->_appsAllowedToInitiatePlaybackClientType = 0;

  self->_appsAllowedToInitiatePlaybackTimestamp = 0;
  self->_auditToken = 0;

  self->_bundleID = 0;
  self->_displayID = 0;

  self->_notificationsSubscribedTo = 0;
  self->_remoteDeviceID = 0;

  self->_remoteDeviceID = 0;
  v7 = MXGetSerialQueue(v5, v6);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __29__MXSystemController_dealloc__block_invoke;
  v9[3] = &__block_descriptor_36_e5_v8__0l;
  v10 = clientPID;
  MXDispatchAsync("[MXSystemController dealloc]", "MXSystemController_Embedded.m", 402, 0, 0, v7, v9);
  v8.receiver = self;
  v8.super_class = MXSystemController;
  [(MXSystemController *)&v8 dealloc];
  objc_autoreleasePoolPop(v3);
}

uint64_t __29__MXSystemController_dealloc__block_invoke(uint64_t a1)
{
  v2 = +[MXNowPlayingAppManager sharedInstance];
  v3 = *(a1 + 32);

  return [(MXNowPlayingAppManager *)v2 updateNowPlayingApp:v3 session:0 reasonForUpdate:0];
}

- (BOOL)phoneCallExists
{
  v2 = objc_autoreleasePoolPush();
  v3 = CMSMUtility_IsPhoneCallActive();
  objc_autoreleasePoolPop(v2);
  return v3;
}

- (BOOL)isSomeoneRecording
{
  v2 = objc_autoreleasePoolPush();
  v3 = CMSMUtility_IsSomeClientRecording() != 0;
  objc_autoreleasePoolPop(v2);
  return v3;
}

- (BOOL)someLongFormVideoClientIsPlayingOverAirPlayVideo
{
  v2 = objc_autoreleasePoolPush();
  v3 = CMSMUtility_IsAnyLongFormVideoSessionPlayingOverAirPlayVideo() != 0;
  objc_autoreleasePoolPop(v2);
  return v3;
}

- (void)volumeCategoryAndMode:(id)mode mode:(id)a4 outCategoryCopy:(id *)copy outModeCopy:(id *)modeCopy
{
  +[MXInitialization waitUntilMXIsFullyInitialized];
  mode = [+[MXSessionManager sharedInstance](MXSessionManager getUncustomizedCategory:"getUncustomizedCategory:", mode];

  PVMCopyVolumeCategoryAndMode(mode, a4, copy, modeCopy);
}

- (int)toggleInputMute
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = +[MXInitialization waitUntilMXIsFullyInitialized];
  IsSessionBasedMutingEnabled = MX_FeatureFlags_IsSessionBasedMutingEnabled(v2, v3);
  if (IsSessionBasedMutingEnabled)
  {
    if (unk_1EB75DE80)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    MXSimulateCrash("This is unexpected. Please file a radar to MediaExperience (New Bugs) | All.");
    return -15685;
  }

  else
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 0;
    v7 = MX_FeatureFlags_IsCallManagementMuteControlEnabled(IsSessionBasedMutingEnabled, v5);
    if (v7)
    {
      v9 = MXGetSerialQueue(v7, v8);
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __37__MXSystemController_toggleInputMute__block_invoke;
      v13[3] = &unk_1E7AE73A0;
      v13[4] = &v16;
      MXDispatchAsyncAndWait("[MXSystemController toggleInputMute]", "MXSystemController_Embedded.m", 497, 0, 0, v9, v13);
    }

    else
    {
      *(v17 + 6) = -15685;
      *type = 0;
      v14 = OS_LOG_TYPE_DEFAULT;
      v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v10 = *(v17 + 6);
    _Block_object_dispose(&v16, 8);
  }

  return v10;
}

void *__37__MXSystemController_toggleInputMute__block_invoke(uint64_t a1)
{
  v2 = +[MXSessionManager sharedInstance];
  *&v3 = -1;
  *(&v3 + 1) = -1;
  v5[0] = v3;
  v5[1] = v3;
  result = [(MXSessionManager *)v2 updateMuteState:v5 muteValue:0];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (int)setInputMute:(id *)mute muteValue:(BOOL)value
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = +[MXInitialization waitUntilMXIsFullyInitialized];
  IsSessionBasedMutingEnabled = MX_FeatureFlags_IsSessionBasedMutingEnabled(v6, v7);
  if (IsSessionBasedMutingEnabled)
  {
    if (unk_1EB75DE80)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    MXSimulateCrash("This is unexpected. Please file a radar to MediaExperience (New Bugs) | All.");
    return -15685;
  }

  else
  {
    v24 = 0;
    v25 = &v24;
    v26 = 0x2020000000;
    v27 = 0;
    v11 = MX_FeatureFlags_IsCallManagementMuteControlEnabled(IsSessionBasedMutingEnabled, v9);
    if (v11)
    {
      v13 = MXGetSerialQueue(v11, v12);
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v14 = *&mute->var0[4];
      v19 = *mute->var0;
      v18[2] = __45__MXSystemController_setInputMute_muteValue___block_invoke;
      v18[3] = &unk_1E7AEA980;
      v18[4] = &v24;
      v20 = v14;
      valueCopy = value;
      MXDispatchAsyncAndWait("[MXSystemController setInputMute:muteValue:]", "MXSystemController_Embedded.m", 526, 0, 0, v13, v18);
    }

    else
    {
      *(v25 + 6) = -15685;
      *type = 0;
      v22 = OS_LOG_TYPE_DEFAULT;
      v16 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v15 = *(v25 + 6);
    _Block_object_dispose(&v24, 8);
  }

  return v15;
}

void *__45__MXSystemController_setInputMute_muteValue___block_invoke(uint64_t a1)
{
  v2 = +[MXSessionManager sharedInstance];
  v3 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 72)];
  v4 = *(a1 + 56);
  v6[0] = *(a1 + 40);
  v6[1] = v4;
  result = [(MXSessionManager *)v2 updateMuteState:v6 muteValue:v3];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (int)getInputMute:(id *)mute outMuteValue:(BOOL *)value
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = +[MXInitialization waitUntilMXIsFullyInitialized];
  IsSessionBasedMutingEnabled = MX_FeatureFlags_IsSessionBasedMutingEnabled(v6, v7);
  if (IsSessionBasedMutingEnabled)
  {
    if (unk_1EB75DE80)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    MXSimulateCrash("This is unexpected. Please file a radar to MediaExperience (New Bugs) | All.");
    return -15685;
  }

  else
  {
    v23 = 0;
    v24 = &v23;
    v25 = 0x2020000000;
    v26 = 0;
    v11 = MX_FeatureFlags_IsCallManagementMuteControlEnabled(IsSessionBasedMutingEnabled, v9);
    if (v11)
    {
      v13 = MXGetSerialQueue(v11, v12);
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __48__MXSystemController_getInputMute_outMuteValue___block_invoke;
      v18[3] = &unk_1E7AEA9A8;
      v14 = *&mute->var0[4];
      v19 = *mute->var0;
      v20 = v14;
      v18[4] = &v23;
      v18[5] = value;
      MXDispatchAsyncAndWait("[MXSystemController getInputMute:outMuteValue:]", "MXSystemController_Embedded.m", 554, 0, 0, v13, v18);
    }

    else
    {
      *(v24 + 6) = -15685;
      *value = 0;
      *type = 0;
      v21 = OS_LOG_TYPE_DEFAULT;
      v16 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v15 = *(v24 + 6);
    _Block_object_dispose(&v23, 8);
  }

  return v15;
}

void *__48__MXSystemController_getInputMute_outMuteValue___block_invoke(uint64_t a1)
{
  v2 = +[MXSessionManager sharedInstance];
  v3 = *(a1 + 40);
  v4 = *(a1 + 64);
  v6[0] = *(a1 + 48);
  v6[1] = v4;
  result = [(MXSessionManager *)v2 getMuteState:v6 outMuteValue:v3];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (int)clearUplinkMutedCache
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = +[MXInitialization waitUntilMXIsFullyInitialized];
  IsSessionBasedMutingEnabled = MX_FeatureFlags_IsSessionBasedMutingEnabled(v3, v4);
  if (IsSessionBasedMutingEnabled)
  {
    if (unk_1EB75DE80)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    MXSimulateCrash("This is unexpected. Please file a radar to MediaExperience (New Bugs) | All.");
    return -15685;
  }

  else
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 0;
    if (MX_FeatureFlags_IsCallManagementMuteControlEnabled(IsSessionBasedMutingEnabled, v6) && (v8 = [(MXSystemController *)self hasEntitlementToClearCacheForFirstPartyPhoneCalls], (v8 & 1) != 0))
    {
      v10 = MXGetSerialQueue(v8, v9);
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __43__MXSystemController_clearUplinkMutedCache__block_invoke;
      v14[3] = &unk_1E7AE73A0;
      v14[4] = &v17;
      MXDispatchAsyncAndWait("[MXSystemController clearUplinkMutedCache]", "MXSystemController_Embedded.m", 582, 0, 0, v10, v14);
    }

    else
    {
      *(v18 + 6) = -15685;
      *type = 0;
      v15 = OS_LOG_TYPE_DEFAULT;
      v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v12 = *(v18 + 6);
    _Block_object_dispose(&v17, 8);
  }

  return v12;
}

uint64_t __43__MXSystemController_clearUplinkMutedCache__block_invoke(uint64_t a1)
{
  result = [+[MXSessionManager sharedInstance](MXSessionManager clearUplinkMutedCache];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (int)copySessionIDsWithMuteValue:(id *)value muteValue:(BOOL *)muteValue
{
  v51 = *MEMORY[0x1E69E9840];
  if (MX_FeatureFlags_IsSessionBasedMutingEnabled(self, a2))
  {
    v30 = objc_alloc_init(MEMORY[0x1E695DF70]);
    *muteValue = 0;
    copyPhoneCallBehaviorRecordingSession = [+[MXSessionManager sharedInstance](MXSessionManager copyPhoneCallBehaviorRecordingSession];
    if ([copyPhoneCallBehaviorRecordingSession prefersBluetoothAccessoryMuting])
    {
      *muteValue = [copyPhoneCallBehaviorRecordingSession isRecordingMuted] ^ 1;
      v7 = +[MXSessionManager sharedInstance];
      if (copyPhoneCallBehaviorRecordingSession)
      {
        objc_msgSend_auditToken(copyPhoneCallBehaviorRecordingSession);
      }

      else
      {
        memset(v50, 0, 32);
      }

      valueCopy = value;
      obj = [(MXSessionManager *)v7 copySessionsWithAuditToken:v50];
      if (![obj count] && unk_1EB75DE80)
      {
        v38 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v29 = copyPhoneCallBehaviorRecordingSession;
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v12 = [obj countByEnumeratingWithState:&v33 objects:v49 count:16];
      v13 = v30;
      if (v12)
      {
        v14 = v12;
        v32 = *v34;
        v15 = &qword_1EB75D000;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v34 != v32)
            {
              objc_enumerationMutation(obj);
            }

            v17 = *(*(&v33 + 1) + 8 * i);
            [v13 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", objc_msgSend(v17, "audioSessionID"))}];
            if (unk_1EB75DE80)
            {
              v38 = 0;
              type = OS_LOG_TYPE_DEFAULT;
              v18 = v15;
              v19 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v20 = v38;
              v21 = type;
              if (os_log_type_enabled(v19, type))
              {
                v22 = v20;
              }

              else
              {
                v22 = v20 & 0xFFFFFFFE;
              }

              if (v22)
              {
                info = [v17 info];
                v24 = *muteValue;
                audioSessionID = [v17 audioSessionID];
                v39 = 136316162;
                v40 = "[MXSystemController copySessionIDsWithMuteValue:muteValue:]";
                v41 = 2048;
                v42 = v17;
                v43 = 2114;
                v44 = info;
                v45 = 1024;
                v46 = v24;
                v13 = v30;
                v47 = 1024;
                v48 = audioSessionID;
                LODWORD(v27) = 44;
                _os_log_send_and_compose_impl(v22, 0, v50, 128, &dword_1B17A2000, v19, v21, "-MXSystemController- %s: Found session %p to be toggled: %{public}@, new mute state = %{BOOL}u, audioSessionID = %d", &v39, v27);
              }

              v15 = v18;
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }
          }

          v14 = [obj countByEnumeratingWithState:&v33 objects:v49 count:16];
        }

        while (v14);
      }

      *valueCopy = v13;

      v11 = 0;
      copyPhoneCallBehaviorRecordingSession = v29;
    }

    else
    {
      [+[MXSessionManager sharedInstance](MXSessionManager updateBluetoothFrameworkToPlayMuteChime:"updateBluetoothFrameworkToPlayMuteChime:playRejectTone:" playRejectTone:copyPhoneCallBehaviorRecordingSession, 1];
      if (unk_1EB75DE80)
      {
        v38 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v11 = -15687;
    }
  }

  else
  {
    if (unk_1EB75DE80)
    {
      v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    return -15685;
  }

  return v11;
}

- (int)_performVolumeOperation:(unsigned int)operation volume:(float)volume category:(id)category mode:(id)mode routeName:(id)name routeDeviceIdentifier:(id)identifier routeSubtype:(id)subtype rampUpwardDuration:(id)self0 rampDownwardDuration:(id)self1 outVolume:(float *)self2 outSequenceNumber:(int64_t *)self3 outMuted:(BOOL *)self4 outCategoryCopy:(id *)self5 outModeCopy:(id *)self6
{
  [MXInitialization waitUntilMXIsFullyInitialized:*&operation];
  [duration floatValue];
  v21 = v20;
  [downwardDuration floatValue];
  v23 = v22;
  [duration floatValue];
  if (v24 <= 0.0)
  {
    v26 = 0;
  }

  else
  {
    [downwardDuration floatValue];
    v26 = v25 > 0.0;
  }

  result = MXSMPerformVolumeOperation(operation, category, name, identifier, subtype, v26, [(MXSystemController *)self clientPID], outVolume, volume, v21, v23, muted, copy, number, 0);
  if (modeCopy)
  {
    *modeCopy = 0;
  }

  return result;
}

- (int)performVolumeOperation:(unsigned int)operation volume:(float)volume category:(id)category mode:(id)mode routeName:(id)name routeDeviceIdentifier:(id)identifier routeSubtype:(id)subtype rampUpwardDuration:(id)self0 rampDownwardDuration:(id)self1 outVolume:(float *)self2 outSequenceNumber:(int64_t *)self3 outMuted:(BOOL *)self4 outCategoryCopy:(id *)self5 outModeCopy:(id *)self6
{
  v24 = +[MXInitialization waitUntilMXIsFullyInitialized];
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v26 = MXGetSerialQueue(v24, v25);
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __216__MXSystemController_performVolumeOperation_volume_category_mode_routeName_routeDeviceIdentifier_routeSubtype_rampUpwardDuration_rampDownwardDuration_outVolume_outSequenceNumber_outMuted_outCategoryCopy_outModeCopy___block_invoke;
  v28[3] = &unk_1E7AEA9D0;
  operationCopy = operation;
  volumeCopy = volume;
  v28[4] = self;
  v28[5] = category;
  v28[6] = mode;
  v28[7] = name;
  v28[8] = identifier;
  v28[9] = subtype;
  v28[10] = duration;
  v28[11] = downwardDuration;
  v28[12] = &v31;
  v28[13] = outVolume;
  v28[14] = number;
  v28[15] = muted;
  v28[16] = copy;
  v28[17] = modeCopy;
  MXDispatchAsyncAndWait("[MXSystemController performVolumeOperation:volume:category:mode:routeName:routeDeviceIdentifier:routeSubtype:rampUpwardDuration:rampDownwardDuration:outVolume:outSequenceNumber:outMuted:outCategoryCopy:outModeCopy:]", "MXSystemController_Embedded.m", 715, 0, 0, v26, v28);
  LODWORD(subtype) = *(v32 + 6);
  _Block_object_dispose(&v31, 8);
  return subtype;
}

void *__216__MXSystemController_performVolumeOperation_volume_category_mode_routeName_routeDeviceIdentifier_routeSubtype_rampUpwardDuration_rampDownwardDuration_outVolume_outSequenceNumber_outMuted_outCategoryCopy_outModeCopy___block_invoke(uint64_t a1, double a2)
{
  LODWORD(a2) = *(a1 + 148);
  result = [*(a1 + 32) _performVolumeOperation:*(a1 + 144) volume:*(a1 + 40) category:*(a1 + 48) mode:*(a1 + 56) routeName:*(a1 + 64) routeDeviceIdentifier:*(a1 + 72) routeSubtype:a2 rampUpwardDuration:*(a1 + 80) rampDownwardDuration:*(a1 + 88) outVolume:*(a1 + 104) outSequenceNumber:*(a1 + 112) outMuted:*(a1 + 120) outCategoryCopy:*(a1 + 128) outModeCopy:*(a1 + 136)];
  *(*(*(a1 + 96) + 8) + 24) = result;
  return result;
}

- (int)_performVolumeOperation:(unsigned int)operation volume:(float)volume category:(id)category mode:(id)mode routeName:(id)name routeDeviceIdentifier:(id)identifier routeSubtype:(id)subtype rampUpDuration:(float)self0 rampDownDuration:(float)self1 outVolume:(float *)self2 outSequenceNumber:(int64_t *)self3 outMuted:(BOOL *)self4 outCategoryCopy:(id *)self5 outModeCopy:(id *)self6 retainFullMute:(BOOL)self7
{
  [MXInitialization waitUntilMXIsFullyInitialized:*&operation];
  if (duration < 0.0 || downDuration < 0.0)
  {
    return -12981;
  }

  v27 = downDuration > 0.0 && duration > 0.0;
  v30 = v27;
  clientPID = [(MXSystemController *)self clientPID];
  LOBYTE(v34) = 0;
  HIBYTE(v34) = mute;

  return MXSMPerformVolumeOperation(operation, category, name, identifier, subtype, v30, clientPID, outVolume, volume, duration, downDuration, muted, copy, number, v34);
}

- (int)performVolumeOperation:(unsigned int)operation volume:(float)volume category:(id)category mode:(id)mode routeName:(id)name routeDeviceIdentifier:(id)identifier routeSubtype:(id)subtype rampUpDuration:(float)self0 rampDownDuration:(float)self1 outVolume:(float *)self2 outSequenceNumber:(int64_t *)self3 outMuted:(BOOL *)self4 outCategoryCopy:(id *)self5 outModeCopy:(id *)self6 retainFullMute:(BOOL)self7
{
  v27 = +[MXInitialization waitUntilMXIsFullyInitialized];
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  v29 = MXGetSerialQueue(v27, v28);
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __223__MXSystemController_performVolumeOperation_volume_category_mode_routeName_routeDeviceIdentifier_routeSubtype_rampUpDuration_rampDownDuration_outVolume_outSequenceNumber_outMuted_outCategoryCopy_outModeCopy_retainFullMute___block_invoke;
  v31[3] = &unk_1E7AEA9F8;
  operationCopy = operation;
  v31[4] = self;
  v31[5] = category;
  v31[6] = mode;
  v31[7] = name;
  v31[8] = identifier;
  v31[9] = subtype;
  volumeCopy = volume;
  durationCopy = duration;
  downDurationCopy = downDuration;
  v31[10] = &v37;
  v31[11] = outVolume;
  v31[12] = number;
  v31[13] = muted;
  v31[14] = copy;
  v31[15] = modeCopy;
  muteCopy = mute;
  MXDispatchAsyncAndWait("[MXSystemController performVolumeOperation:volume:category:mode:routeName:routeDeviceIdentifier:routeSubtype:rampUpDuration:rampDownDuration:outVolume:outSequenceNumber:outMuted:outCategoryCopy:outModeCopy:retainFullMute:]", "MXSystemController_Embedded.m", 801, 0, 0, v29, v31);
  LODWORD(subtype) = *(v38 + 6);
  _Block_object_dispose(&v37, 8);
  return subtype;
}

void *__223__MXSystemController_performVolumeOperation_volume_category_mode_routeName_routeDeviceIdentifier_routeSubtype_rampUpDuration_rampDownDuration_outVolume_outSequenceNumber_outMuted_outCategoryCopy_outModeCopy_retainFullMute___block_invoke(uint64_t a1, double a2, double a3, double a4)
{
  LODWORD(a2) = *(a1 + 132);
  LODWORD(a3) = *(a1 + 136);
  LODWORD(a4) = *(a1 + 140);
  LOBYTE(v6) = *(a1 + 144);
  result = [*(a1 + 32) _performVolumeOperation:*(a1 + 128) volume:*(a1 + 40) category:*(a1 + 48) mode:*(a1 + 56) routeName:*(a1 + 64) routeDeviceIdentifier:*(a1 + 72) routeSubtype:a2 rampUpDuration:a3 rampDownDuration:a4 outVolume:*(a1 + 88) outSequenceNumber:*(a1 + 96) outMuted:*(a1 + 104) outCategoryCopy:*(a1 + 112) outModeCopy:*(a1 + 120) retainFullMute:v6];
  *(*(*(a1 + 80) + 8) + 24) = result;
  return result;
}

- (int)_performVolumeOperation:(unsigned int)operation volume:(float)volume category:(id)category mode:(id)mode routeName:(id)name routeDeviceIdentifier:(id)identifier routeSubtype:(id)subtype rampUpDuration:(float)self0 rampDownDuration:(float)self1 outVolume:(float *)self2 outSequenceNumber:(int64_t *)self3 outMuted:(BOOL *)self4 outCategoryCopy:(id *)self5 outModeCopy:(id *)self6
{
  v24 = *&operation;
  +[MXInitialization waitUntilMXIsFullyInitialized];
  if (duration < 0.0 || downDuration < 0.0)
  {
    return -12981;
  }

  if (duration == 0.0)
  {
    v29 = 0;
  }

  else
  {
    v27 = objc_alloc(MEMORY[0x1E696AD98]);
    *&v28 = duration;
    v29 = [v27 initWithFloat:v28];
  }

  if (downDuration == 0.0)
  {
    v33 = 0;
  }

  else
  {
    v31 = objc_alloc(MEMORY[0x1E696AD98]);
    *&v32 = downDuration;
    v33 = [v31 initWithFloat:v32];
  }

  *&v26 = volume;
  v34 = [(MXSystemController *)self _performVolumeOperation:v24 volume:category category:mode mode:name routeName:identifier routeDeviceIdentifier:subtype routeSubtype:v26 rampUpwardDuration:v29 rampDownwardDuration:v33 outVolume:outVolume outSequenceNumber:number outMuted:muted outCategoryCopy:copy outModeCopy:modeCopy];

  return v34;
}

- (int)performVolumeOperation:(unsigned int)operation volume:(float)volume category:(id)category mode:(id)mode routeName:(id)name routeDeviceIdentifier:(id)identifier routeSubtype:(id)subtype rampUpDuration:(float)self0 rampDownDuration:(float)self1 outVolume:(float *)self2 outSequenceNumber:(int64_t *)self3 outMuted:(BOOL *)self4 outCategoryCopy:(id *)self5 outModeCopy:(id *)self6
{
  v26 = +[MXInitialization waitUntilMXIsFullyInitialized];
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  v28 = MXGetSerialQueue(v26, v27);
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __208__MXSystemController_performVolumeOperation_volume_category_mode_routeName_routeDeviceIdentifier_routeSubtype_rampUpDuration_rampDownDuration_outVolume_outSequenceNumber_outMuted_outCategoryCopy_outModeCopy___block_invoke;
  v30[3] = &unk_1E7AEAA20;
  operationCopy = operation;
  v30[4] = self;
  v30[5] = category;
  v30[6] = mode;
  v30[7] = name;
  v30[8] = identifier;
  v30[9] = subtype;
  volumeCopy = volume;
  durationCopy = duration;
  downDurationCopy = downDuration;
  v30[10] = &v35;
  v30[11] = outVolume;
  v30[12] = number;
  v30[13] = muted;
  v30[14] = copy;
  v30[15] = modeCopy;
  MXDispatchAsyncAndWait("[MXSystemController performVolumeOperation:volume:category:mode:routeName:routeDeviceIdentifier:routeSubtype:rampUpDuration:rampDownDuration:outVolume:outSequenceNumber:outMuted:outCategoryCopy:outModeCopy:]", "MXSystemController_Embedded.m", 900, 0, 0, v28, v30);
  LODWORD(subtype) = *(v36 + 6);
  _Block_object_dispose(&v35, 8);
  return subtype;
}

void *__208__MXSystemController_performVolumeOperation_volume_category_mode_routeName_routeDeviceIdentifier_routeSubtype_rampUpDuration_rampDownDuration_outVolume_outSequenceNumber_outMuted_outCategoryCopy_outModeCopy___block_invoke(uint64_t a1, double a2, double a3, double a4)
{
  LODWORD(a2) = *(a1 + 132);
  LODWORD(a3) = *(a1 + 136);
  LODWORD(a4) = *(a1 + 140);
  result = [*(a1 + 32) _performVolumeOperation:*(a1 + 128) volume:*(a1 + 40) category:*(a1 + 48) mode:*(a1 + 56) routeName:*(a1 + 64) routeDeviceIdentifier:*(a1 + 72) routeSubtype:a2 rampUpDuration:a3 rampDownDuration:a4 outVolume:*(a1 + 88) outSequenceNumber:*(a1 + 96) outMuted:*(a1 + 104) outCategoryCopy:*(a1 + 112) outModeCopy:*(a1 + 120)];
  *(*(*(a1 + 80) + 8) + 24) = result;
  return result;
}

- (int)_performVolumeOperation:(unsigned int)operation volume:(float)volume category:(id)category mode:(id)mode routeName:(id)name routeDeviceIdentifier:(id)identifier routeSubtype:(id)subtype outVolume:(float *)self0 outSequenceNumber:(int64_t *)self1 outMuted:(BOOL *)self2 outCategoryCopy:(id *)self3 outModeCopy:(id *)self4
{
  [MXInitialization waitUntilMXIsFullyInitialized:*&operation];
  result = MXSMPerformVolumeOperation(operation, category, name, identifier, subtype, 0, [(MXSystemController *)self clientPID], outVolume, volume, 0.0, 0.0, muted, copy, number, 0);
  if (modeCopy)
  {
    *modeCopy = 0;
  }

  return result;
}

- (int)performVolumeOperation:(unsigned int)operation volume:(float)volume category:(id)category mode:(id)mode routeName:(id)name routeDeviceIdentifier:(id)identifier routeSubtype:(id)subtype outVolume:(float *)self0 outSequenceNumber:(int64_t *)self1 outMuted:(BOOL *)self2 outCategoryCopy:(id *)self3 outModeCopy:(id *)self4
{
  v22 = +[MXInitialization waitUntilMXIsFullyInitialized];
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v24 = MXGetSerialQueue(v22, v23);
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __176__MXSystemController_performVolumeOperation_volume_category_mode_routeName_routeDeviceIdentifier_routeSubtype_outVolume_outSequenceNumber_outMuted_outCategoryCopy_outModeCopy___block_invoke;
  v26[3] = &unk_1E7AEAA48;
  operationCopy = operation;
  volumeCopy = volume;
  v26[4] = self;
  v26[5] = category;
  v26[6] = mode;
  v26[7] = name;
  v26[8] = identifier;
  v26[9] = subtype;
  v26[10] = &v29;
  v26[11] = outVolume;
  v26[12] = number;
  v26[13] = muted;
  v26[14] = copy;
  v26[15] = modeCopy;
  MXDispatchAsyncAndWait("[MXSystemController performVolumeOperation:volume:category:mode:routeName:routeDeviceIdentifier:routeSubtype:outVolume:outSequenceNumber:outMuted:outCategoryCopy:outModeCopy:]", "MXSystemController_Embedded.m", 989, 0, 0, v24, v26);
  LODWORD(subtype) = *(v30 + 6);
  _Block_object_dispose(&v29, 8);
  return subtype;
}

void *__176__MXSystemController_performVolumeOperation_volume_category_mode_routeName_routeDeviceIdentifier_routeSubtype_outVolume_outSequenceNumber_outMuted_outCategoryCopy_outModeCopy___block_invoke(uint64_t a1, double a2)
{
  LODWORD(a2) = *(a1 + 132);
  result = [*(a1 + 32) _performVolumeOperation:*(a1 + 128) volume:*(a1 + 40) category:*(a1 + 48) mode:*(a1 + 56) routeName:*(a1 + 64) routeDeviceIdentifier:*(a1 + 72) routeSubtype:a2 outVolume:*(a1 + 88) outSequenceNumber:*(a1 + 96) outMuted:*(a1 + 104) outCategoryCopy:*(a1 + 112) outModeCopy:*(a1 + 120)];
  *(*(*(a1 + 80) + 8) + 24) = result;
  return result;
}

- (BOOL)someSharePlayCapableCallSessionIsActive
{
  v2 = objc_autoreleasePoolPush();
  v4 = CMSMUtility_IsSharePlayCapableCallSessionActive(v2, v3) != 0;
  objc_autoreleasePoolPop(v2);
  return v4;
}

- (int)applyPIDToInheritAppStateFrom:(const void *)from
{
  v23 = *MEMORY[0x1E69E9840];
  if (from)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MXSystemController applyPIDToInheritAppStateFrom:?];
      return v21;
    }
  }

  clientPID = [(MXSystemController *)self clientPID];
  if (clientPID < 1)
  {
    goto LABEL_26;
  }

  v6 = MX_RunningBoardServices_CopyBundleInfoValueForKeyAndPID(@"CanInheritApplicationStateFromOtherProcesses", clientPID);
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    goto LABEL_26;
  }

  bOOLValue = [v6 BOOLValue];

  if ((bOOLValue & 1) == 0)
  {
LABEL_26:
    [MXSystemController applyPIDToInheritAppStateFrom:?];
    return v21;
  }

  if ([(MXSystemController *)self hasEntitlementForPIDInheritance])
  {
    -[MXSystemController setPidToInheritAppStateFrom:](self, "setPidToInheritAppStateFrom:", [from intValue]);
    v8 = [MXSystemController copyMXSystemControllerList:0];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v17 + 1) + 8 * i);
          if (v13)
          {
            clientPID2 = [*(*(&v17 + 1) + 8 * i) clientPID];
            if (clientPID2 == [(MXSystemController *)self pidToInheritAppStateFrom])
            {
              if ([v13 pidToInheritAppStateFrom])
              {
                -[MXSystemController setPidToInheritAppStateFrom:](self, "setPidToInheritAppStateFrom:", [v13 pidToInheritAppStateFrom]);
              }
            }
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v10);
    }

    CMSMUtility_ApplyPIDToInheritAppStateFrom([(MXSystemController *)self clientPID], [(MXSystemController *)self pidToInheritAppStateFrom]);
    return 0;
  }

  else
  {
    v16 = qword_1EB75DE78;

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v16, 4294954308, "-MXSystemController-", 1066);
  }
}

- (void)applyCanBeNowPlayingApp:(const void *)app
{
  v7 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && !CMSMUtility_FetchUIShouldIgnoreRemoteControlEvents([(MXSystemController *)self clientPID]))
  {
    canBeNowPlayingApp = [(MXSystemController *)self canBeNowPlayingApp];
    if (canBeNowPlayingApp != [app BOOLValue])
    {
      -[MXSystemController setCanBeNowPlayingApp:](self, "setCanBeNowPlayingApp:", [app BOOLValue]);
      if (unk_1EB75DE80)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      [+[MXNowPlayingAppManager sharedInstance](MXNowPlayingAppManager updateNowPlayingApp:"updateNowPlayingApp:session:reasonForUpdate:" session:[(MXSystemController *)self clientPID] reasonForUpdate:0, 4];
      CMSMUtility_UpdateRoutingContextForSessionsWithPID([(MXSystemController *)self clientPID]);
      [+[MXSessionManager sharedInstance](MXSessionManager updateSupportedOutputChannelLayouts];
    }
  }
}

- (int)setSilentMode:(BOOL)mode untilTime:(id)time reason:(id)reason clientType:(unsigned int)type
{
  v6 = *&type;
  v26 = *MEMORY[0x1E69E9840];
  +[MXInitialization waitUntilMXIsFullyInitialized];
  hasEntitlementToSetSilentMode = [(MXSystemController *)self hasEntitlementToSetSilentMode];
  if (hasEntitlementToSetSilentMode)
  {
    if (v6 >= 0xA || CMSMDeviceState_DeviceHasHardwareRingerSwitch(hasEntitlementToSetSilentMode, v12) && [+[MXSessionManager clientTypeOverridesHardwareSwitch:"clientTypeOverridesHardwareSwitch:"]
    {
      v25 = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      return -12981;
    }

    else
    {
      if (unk_1EB75DE80)
      {
        v25 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      timeCopy = time;
      reasonCopy = reason;
      v19 = MXGetSerialQueue(reasonCopy, v18);
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __64__MXSystemController_setSilentMode_untilTime_reason_clientType___block_invoke;
      v21[3] = &unk_1E7AE7348;
      modeCopy = mode;
      v21[4] = time;
      v21[5] = reason;
      v22 = v6;
      MXDispatchAsyncAndWait("[MXSystemController setSilentMode:untilTime:reason:clientType:]", "MXSystemController_Embedded.m", 1162, 0, 0, v19, v21);
      return 0;
    }
  }

  else
  {
    v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return -12988;
  }
}

void __64__MXSystemController_setSilentMode_untilTime_reason_clientType___block_invoke(uint64_t a1)
{
  [+[MXSessionManager sharedInstance](MXSessionManager updateSilentModeState:"updateSilentModeState:untilTime:withReason:forClientType:updateForStartup:" untilTime:*(a1 + 52) withReason:*(a1 + 32) forClientType:*(a1 + 40) updateForStartup:*(a1 + 48), 0];

  v2 = *(a1 + 40);
}

- (int)grantMediaEndowmentWithEnvironmentID:(id)d endowmentPayload:(id)payload
{
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v8 = objc_msgSend_auditToken(self);
  bundleID = [(MXSystemController *)self bundleID];
  v10 = [payload objectForKey:@"RecordingWebsite"];
  if (v8)
  {
    [v7 setObject:v8 forKey:@"AuditToken"];
  }

  if (bundleID)
  {
    [v7 setObject:bundleID forKey:@"BundleID"];
  }

  if (v10)
  {
    [v7 setObject:v10 forKey:@"RecordingWebsite"];
  }

  v11 = [+[MXMediaEndowmentManager sharedInstance](MXMediaEndowmentManager grantMediaEndowment:"grantMediaEndowment:environmentID:endowmentPayload:" environmentID:[(MXSystemController *)self clientPID] endowmentPayload:d, v7];

  return v11;
}

- (int)revokeMediaEndowmentWithEnvironmentID:(id)d
{
  v5 = +[MXMediaEndowmentManager sharedInstance];
  clientPID = [(MXSystemController *)self clientPID];

  return [(MXMediaEndowmentManager *)v5 revokeMediaEndowment:clientPID environmentID:d];
}

- (int)allowAppsToInitiatePlayback:(id)playback clientType:(id)type isTemporary:(BOOL)temporary
{
  temporaryCopy = temporary;
  v16 = *MEMORY[0x1E69E9840];
  hasEntitlementToAllowAppsToInitiatePlayback = [(MXSystemController *)self hasEntitlementToAllowAppsToInitiatePlayback];
  if (hasEntitlementToAllowAppsToInitiatePlayback)
  {
    if (MX_FeatureFlags_IsAllowBackgroundPlaybackEnabled(hasEntitlementToAllowAppsToInitiatePlayback, v10))
    {
      [(MXSystemController *)self setAppsAllowedToInitiatePlayback:playback];
      [(MXSystemController *)self setAppsAllowedToInitiatePlaybackClientType:type];
      if (temporaryCopy)
      {
        v11 = [MEMORY[0x1E695DF00] now];
      }

      else
      {
        v11 = 0;
      }

      [(MXSystemController *)self setAppsAllowedToInitiatePlaybackTimestamp:v11];
      if (unk_1EB75DE80)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      return 0;
    }

    else
    {
      v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      return -15687;
    }
  }

  else
  {
    v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return -12988;
  }
}

- (int)getAudioSessionID:(unsigned int *)d forAttributedPID:(int)iD
{
  v25 = *MEMORY[0x1E69E9840];
  if (d && iD)
  {
    copyMXCoreSessionList = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v6 = [copyMXCoreSessionList countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v20;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v20 != v8)
          {
            objc_enumerationMutation(copyMXCoreSessionList);
          }

          v10 = *(*(&v19 + 1) + 8 * i);
          *&v11 = -1;
          *(&v11 + 1) = -1;
          *v18.val = v11;
          *&v18.val[4] = v11;
          v12 = [-[MXMediaEndowmentManager getHostProcessAttributions:](+[MXMediaEndowmentManager sharedInstance](MXMediaEndowmentManager "sharedInstance")];
          if (!v12)
          {
            v12 = [objc_msgSend(v10 "hostProcessAttribution")];
          }

          v13 = [v12 valueForKey:@"AuditToken"];
          if (v13)
          {
            [v13 getBytes:&v18 length:32];
            atoken = v18;
            if (audit_token_to_pid(&atoken) == iD)
            {
              if (unk_1EB75DE80)
              {
                os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              *d = [v10 audioSessionID];
              goto LABEL_20;
            }
          }
        }

        v7 = [copyMXCoreSessionList countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_20:

    return 0;
  }

  else
  {
    v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return -12980;
  }
}

- (int)getVolumeButtonDelta:(id)delta outVolumeDelta:(float *)volumeDelta
{
  v6 = +[MXSessionManager sharedInstance];

  return [(MXSessionManager *)v6 getVolumeButtonDelta:delta outVolumeDelta:volumeDelta];
}

- (int)copyAttributeForKey:(id)key withValueOut:(void *)out
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  +[MXInitialization waitUntilMXIsFullyInitialized];
  v8 = [MXSystemController isNonSerializedCopyProperty:key];
  if (v8)
  {
    v10 = [(MXSystemController *)self copyAttributeForKeyInternal:key withValueOut:out];
    *(v16 + 6) = v10;
  }

  else
  {
    v11 = MXGetSerialQueue(v8, v9);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __55__MXSystemController_copyAttributeForKey_withValueOut___block_invoke;
    v14[3] = &unk_1E7AE70D0;
    v14[4] = self;
    v14[5] = key;
    v14[6] = &v15;
    v14[7] = out;
    MXDispatchAsyncAndWait("[MXSystemController copyAttributeForKey:withValueOut:]", "MXSystemController_Embedded.m", 1341, 0, 0, v11, v14);
  }

  [+[MXAudioStatistics sharedInstance](MXAudioStatistics sendSinglePerformanceMessageForRoutine:"sendSinglePerformanceMessageForRoutine:operationTime:details:" operationTime:"[MXSystemController copyAttributeForKey:withValueOut:]" details:FigGetUpTimeNanoseconds() - UpTimeNanoseconds, key];
  v12 = *(v16 + 6);
  _Block_object_dispose(&v15, 8);
  return v12;
}

void *__55__MXSystemController_copyAttributeForKey_withValueOut___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) copyAttributeForKeyInternal:*(a1 + 40) withValueOut:*(a1 + 56)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (int)setAttributeForKey:(id)key andValue:(const void *)value
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  +[MXInitialization waitUntilMXIsFullyInitialized];
  v8 = [MXSystemController isNonSerializedSetProperty:key];
  if (v8)
  {
    v10 = [(MXSystemController *)self setAttributeForKeyInternal:key andValue:value];
    *(v16 + 6) = v10;
  }

  else
  {
    v11 = MXGetSerialQueue(v8, v9);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __50__MXSystemController_setAttributeForKey_andValue___block_invoke;
    v14[3] = &unk_1E7AE70D0;
    v14[4] = self;
    v14[5] = key;
    v14[6] = &v15;
    v14[7] = value;
    MXDispatchAsyncAndWait("[MXSystemController setAttributeForKey:andValue:]", "MXSystemController_Embedded.m", 1371, 0, 0, v11, v14);
  }

  [+[MXAudioStatistics sharedInstance](MXAudioStatistics sendSinglePerformanceMessageForRoutine:"sendSinglePerformanceMessageForRoutine:operationTime:details:" operationTime:"[MXSystemController setAttributeForKey:andValue:]" details:FigGetUpTimeNanoseconds() - UpTimeNanoseconds, key];
  v12 = *(v16 + 6);
  _Block_object_dispose(&v15, 8);
  return v12;
}

void *__50__MXSystemController_setAttributeForKey_andValue___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) setAttributeForKeyInternal:*(a1 + 40) andValue:*(a1 + 56)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (int)copyAttributeForKeyInternal:(id)internal withValueOut:(void *)out
{
  v71 = *MEMORY[0x1E69E9840];
  if ([internal isEqualToString:@"ActiveNeroVisualStreamInfo"])
  {
    PlayingSessionsDescription = FigRoutingManagerCopyActiveNeroVisualStreamInfo([+[MXSessionManager systemMirroringRoutingContextUUID] sharedInstance];
LABEL_18:
    v20 = PlayingSessionsDescription;
    result = 0;
    *out = v20;
    return result;
  }

  if ([internal isEqualToString:@"ActivePhoneCallInfo"])
  {
    v8 = CMSMUtility_CopyActivePhoneCallInfo();
    CurrentlyAirPlayingVideoStreamsDictionary = v8;
    if (!v8)
    {
LABEL_7:

      return 0;
    }

    v10 = [objc_msgSend(v8 objectForKey:{@"ClientPriority", "intValue"}] == 10;
    v11 = [CurrentlyAirPlayingVideoStreamsDictionary objectForKey:@"AudioSessionID"];
    v12 = objc_alloc(MEMORY[0x1E695DF20]);
    firstObject = [v12 initWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", v10), @"CallIsHighPriority", v11, @"AudioSessionID", 0}];
LABEL_6:
    *out = firstObject;
    goto LABEL_7;
  }

  if ([internal isEqualToString:@"AirPlayScreenSuspended"])
  {
    v15 = objc_alloc(MEMORY[0x1E696AD98]);
    IsSuspended = CMScreenIsSuspended();
LABEL_10:
    v17 = IsSuspended != 0;
LABEL_16:
    v19 = v15;
LABEL_17:
    PlayingSessionsDescription = [v19 initWithBool:v17];
    goto LABEL_18;
  }

  if ([internal isEqualToString:@"AppWantsVolumeChanges"])
  {
    v15 = objc_alloc(MEMORY[0x1E696AD98]);
    appWantsVolumeChanges = [(MXSystemController *)self appWantsVolumeChanges];
LABEL_15:
    v17 = appWantsVolumeChanges;
    goto LABEL_16;
  }

  if ([internal isEqualToString:@"CanBeNowPlayingApp"])
  {
    v15 = objc_alloc(MEMORY[0x1E696AD98]);
    appWantsVolumeChanges = [(MXSystemController *)self canBeNowPlayingApp];
    goto LABEL_15;
  }

  if ([internal isEqualToString:@"CarPlayAuxStreamSupport"])
  {
    v15 = objc_alloc(MEMORY[0x1E696AD98]);
    IsSuspended = FigRoutingManager_iOSIsCarPlayAuxStreamSupported();
    goto LABEL_10;
  }

  if ([internal isEqualToString:@"CarPlayIsConnected"])
  {
    v15 = objc_alloc(MEMORY[0x1E696AD98]);
    appWantsVolumeChanges = [+[MXSessionManager sharedInstance](MXSessionManager carPlayIsConnected];
    goto LABEL_15;
  }

  if ([internal isEqualToString:@"CarPlayIsPlayingLongerDurationSession"])
  {
    v15 = objc_alloc(MEMORY[0x1E696AD98]);
    IsSuspended = CMSMUtility_CarPlayIsPlayingLongerDurationSession();
    goto LABEL_10;
  }

  if ([internal isEqualToString:@"CarPlaySupportsMixableSiri"])
  {
    v15 = objc_alloc(MEMORY[0x1E696AD98]);
    IsSuspended = CMSMUtility_DoesCarPlaySupportMixableSiri();
    goto LABEL_10;
  }

  if ([internal isEqualToString:@"ExternalScreenType"])
  {
    ScreenType = CMScreenGetScreenType();
LABEL_29:
    PlayingSessionsDescription = ScreenType;
    goto LABEL_18;
  }

  if ([internal isEqualToString:@"CurrentlyActiveCategory"])
  {
    PlayingSessionsDescription = CMSMUtility_CopyCurrentlyActiveCategory();
    goto LABEL_18;
  }

  if ([internal isEqualToString:@"CurrentlyActiveMode"])
  {
    PlayingSessionsDescription = CMSMUtility_CopyCurrentlyActiveMode();
    goto LABEL_18;
  }

  if ([internal isEqualToString:@"CurrentVideoStreams"])
  {
    CurrentlyAirPlayingVideoStreamsDictionary = CMSMUtility_CreateCurrentlyAirPlayingVideoStreamsDictionary(@"CurrentVideoStreams_BundleID", @"CurrentVideoStreams_VideoRoutes");
    firstObject = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{CurrentlyAirPlayingVideoStreamsDictionary, 0}];
    goto LABEL_6;
  }

  if ([internal isEqualToString:@"DeviceSupportsPiP"])
  {
    v15 = objc_alloc(MEMORY[0x1E696AD98]);
    IsSuspended = CMSMDeviceState_SupportsPiP();
    goto LABEL_10;
  }

  if ([internal isEqualToString:@"HeadphoneJackHasInput"])
  {
    v15 = objc_alloc(MEMORY[0x1E696AD98]);
    IsSuspended = vaemHeadphoneJackHasInput(1);
    goto LABEL_10;
  }

  if ([internal isEqualToString:@"HeadphoneJackIsConnected"])
  {
    v15 = objc_alloc(MEMORY[0x1E696AD98]);
    IsSuspended = vaemHeadphoneJackIsConnected(1);
    goto LABEL_10;
  }

  v22 = [internal isEqualToString:@"HighestArbitrationPriorityForTipi"];
  if (v22)
  {
    if (MX_FeatureFlags_IsSmartRoutingOnActivationEnabled(v22, v23))
    {
      v24 = [+[MXSessionManager sharedInstance](MXSessionManager copyHighestPriorityActiveSession:"copyHighestPriorityActiveSession:deviceIdentifier:" deviceIdentifier:0x1F2893B50, 0];
    }

    else
    {
      v24 = CMSM_CopyHighestPriorityLocalPlayingSession(1);
    }

    CurrentlyAirPlayingVideoStreamsDictionary = v24;
    LocalSessionPriority = CMSM_GetLocalSessionPriority(v24, 1);
    v27 = objc_alloc(MEMORY[0x1E695DF20]);
    v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:LocalSessionPriority];
    if ([CurrentlyAirPlayingVideoStreamsDictionary displayID])
    {
      displayID = [CurrentlyAirPlayingVideoStreamsDictionary displayID];
    }

    else
    {
      displayID = @"Unknown";
    }

    firstObject = [v27 initWithObjectsAndKeys:{v28, @"HighestArbitrationPriorityForTipi_AudioScore", displayID, @"HighestArbitrationPriorityForTipi_BundleID", 0}];
    goto LABEL_6;
  }

  if ([internal isEqualToString:@"iOSWillRequestToBorrowStarkMainAudio"])
  {
    v15 = objc_alloc(MEMORY[0x1E696AD98]);
    v25 = 1;
LABEL_49:
    IsSuspended = CMSMUtility_iOSWillRequestCarMainAudio(v25);
    goto LABEL_10;
  }

  if ([internal isEqualToString:@"iOSWillRequestToTakeStarkMainAudio"])
  {
    v15 = objc_alloc(MEMORY[0x1E696AD98]);
    v25 = 0;
    goto LABEL_49;
  }

  if ([internal isEqualToString:@"IsSomeoneRecording"])
  {
    IsSomeClientRecording = CMSMUtility_IsSomeClientRecording();
    v31 = objc_alloc(MEMORY[0x1E696AD98]);
    pidToInheritAppStateFrom = IsSomeClientRecording;
LABEL_57:
    PlayingSessionsDescription = [v31 initWithUnsignedInt:pidToInheritAppStateFrom];
    goto LABEL_18;
  }

  if ([internal isEqualToString:@"LongFormVideoApps"])
  {
    ScreenType = [+[MXSessionManager sharedInstance](MXSessionManager longFormVideoApps];
    goto LABEL_29;
  }

  if ([internal isEqualToString:@"NowPlayingAppDisplayID"])
  {
    ScreenType = [+[MXNowPlayingAppManager sharedInstance](MXNowPlayingAppManager nowPlayingAppDisplayID];
    goto LABEL_29;
  }

  if ([internal isEqualToString:@"NowPlayingAppIsInterrupted"])
  {
    v15 = objc_alloc(MEMORY[0x1E696AD98]);
    IsSuspended = CMSMNP_GetNowPlayingAppIsInterrupted();
    goto LABEL_10;
  }

  if ([internal isEqualToString:@"NowPlayingAppIsPlaying"])
  {
    IsPlaying = CMSMNP_GetNowPlayingAppIsPlaying();
LABEL_66:
    ShouldResumeForCarPlay = IsPlaying;
LABEL_67:
    v19 = objc_alloc(MEMORY[0x1E696AD98]);
    v17 = ShouldResumeForCarPlay != 0;
    goto LABEL_17;
  }

  if ([internal isEqualToString:@"NowPlayingAppPID"])
  {
    PlayingSessionsDescription = [objc_alloc(MEMORY[0x1E696AD98]) initWithLong:{-[MXNowPlayingAppManager nowPlayingAppPID](+[MXNowPlayingAppManager sharedInstance](MXNowPlayingAppManager, "sharedInstance"), "nowPlayingAppPID")}];
    goto LABEL_18;
  }

  if ([internal isEqualToString:@"NowPlayingAppShouldResumeForCarPlay"])
  {
    ShouldResumeForCarPlay = CMSMNP_GetNowPlayingAppShouldResumeForCarPlay();
    if (unk_1EB75DE80)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    goto LABEL_67;
  }

  v36 = [internal isEqualToString:@"IsMaximumSpeakerVolumeLimitEnabled"];
  if (v36)
  {
    if (MX_FeatureFlags_IsMaxSpeakerVolumeLimitEnabled(v36, v37))
    {
      IsPlaying = PVMIsMaxVolumeLimitForBuiltInSpeakerEnabled();
      goto LABEL_66;
    }

    return -15687;
  }

  v38 = [internal isEqualToString:@"MaximumSpeakerVolumeLimit"];
  if (v38)
  {
    if (MX_FeatureFlags_IsMaxSpeakerVolumeLimitEnabled(v38, v39))
    {
      v40 = PVMGetCurrentMaxVolumeLimitForBuiltInSpeaker();
LABEL_79:
      v41 = v40;
LABEL_94:
      v51 = objc_alloc(MEMORY[0x1E696AD98]);
      *&v52 = v41;
LABEL_95:
      PlayingSessionsDescription = [v51 initWithFloat:v52];
      goto LABEL_18;
    }

LABEL_84:
    v45 = objc_alloc(MEMORY[0x1E696AD98]);
    LODWORD(v46) = -1.0;
    *out = [v45 initWithFloat:v46];
    return -15687;
  }

  v42 = [internal isEqualToString:@"DefaultMaximumSpeakerVolumeLimit"];
  if (v42)
  {
    if (MX_FeatureFlags_IsMaxSpeakerVolumeLimitEnabled(v42, v43))
    {
      v41 = PVMGetDefaultMaxVolumeLimitForBuiltInSpeaker();
      if (unk_1EB75DE80)
      {
        v44 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      goto LABEL_94;
    }

    goto LABEL_84;
  }

  v47 = [internal isEqualToString:@"PreferHeadphonesOverCarsAndSpeakersEnabled"];
  if (v47)
  {
    if (MX_FeatureFlags_IsAirPodsInEarRoutingWithCarsAndSpeakersEnabled(v47, v48))
    {
      v15 = objc_alloc(MEMORY[0x1E696AD98]);
      appWantsVolumeChanges = +[MXSystemController preferHeadphonesOverCarsAndSpeakersEnabled];
      goto LABEL_15;
    }

    [MXSystemController(InternalUse) copyAttributeForKeyInternal:v70 withValueOut:?];
    return v70[0];
  }

  v49 = [internal isEqualToString:@"AllowBluetoothAccessoryToRequestAudioRoute"];
  if (v49)
  {
    if (MX_FeatureFlags_IsAirPodsInEarRoutingWithCarsAndSpeakersEnabled(v49, v50))
    {
      v15 = objc_alloc(MEMORY[0x1E696AD98]);
      appWantsVolumeChanges = +[MXSystemController allowBluetoothAccessoryToRequestAudioRoute];
      goto LABEL_15;
    }

    [MXSystemController(InternalUse) copyAttributeForKeyInternal:v70 withValueOut:?];
    return v70[0];
  }

  if ([internal isEqualToString:@"PhoneCallExists"])
  {
    v15 = objc_alloc(MEMORY[0x1E696AD98]);
    IsSuspended = CMSMUtility_IsPhoneCallActive();
    goto LABEL_10;
  }

  if ([internal isEqualToString:@"PIDToInheritApplicationStateFrom"])
  {
    v53 = objc_alloc(MEMORY[0x1E696AD98]);
    pidToInheritAppStateFrom = [(MXSystemController *)self pidToInheritAppStateFrom];
    v31 = v53;
    goto LABEL_57;
  }

  if ([internal isEqualToString:@"PlayingSessionsDescription"])
  {
    PlayingSessionsDescription = CMSMNotificationUtility_CreatePlayingSessionsDescription();
    goto LABEL_18;
  }

  v54 = [internal isEqualToString:@"DuckScalarForVoiceOver"];
  if (v54)
  {
    if (!MX_FeatureFlags_IsRelativeVoiceOverVolumeEnabled(v54, v55))
    {
      return -12981;
    }

    if ([(MXSystemController *)self hasEntitlementToSetRelativeVoiceOverVolume])
    {
      v56 = objc_alloc(MEMORY[0x1E696AD98]);
      [+[MXSessionManager sharedInstance](MXSessionManager duckScalarForVoiceOver];
      v51 = v56;
      goto LABEL_95;
    }

    return -12988;
  }

  if ([internal isEqualToString:@"RecordingClientPIDs"])
  {
    ScreenType = [+[MXSessionManager sharedInstance](MXSessionManager recordingClientPIDs];
    goto LABEL_29;
  }

  if ([internal isEqualToString:@"RecordingSessionsDescription"])
  {
    PlayingSessionsDescription = CMSMNotificationUtility_CreateRecordingSessionsDescription();
    goto LABEL_18;
  }

  if ([internal isEqualToString:@"ShouldIgnorePlayCommandsFromAccessory"])
  {
    v15 = objc_alloc(MEMORY[0x1E696AD98]);
    IsSuspended = CMSMUtility_ShouldIgnorePlayCommandsFromAccessory();
    goto LABEL_10;
  }

  if ([internal isEqualToString:@"SilentModeEnabled"])
  {
    if ([(MXSystemController *)self hasEntitlementForSilentModeNotifications]|| [(MXSystemController *)self hasEntitlementToSetSilentMode])
    {
      v15 = objc_alloc(MEMORY[0x1E696AD98]);
      appWantsVolumeChanges = [+[MXSessionManager sharedInstance](MXSessionManager silentModeEnabled];
      goto LABEL_15;
    }

    v57 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return -12988;
  }

  if ([internal isEqualToString:@"SomeClientIsPlaying"])
  {
    v15 = objc_alloc(MEMORY[0x1E696AD98]);
    IsSuspended = CMSMUtility_SomeClientIsPlaying();
    goto LABEL_10;
  }

  if ([internal isEqualToString:@"SomeClientIsPlayingLongFormAudio"])
  {
    v15 = objc_alloc(MEMORY[0x1E696AD98]);
    IsSuspended = CMSMUtility_SomeClientIsPlayingLongFormAudio();
    goto LABEL_10;
  }

  if ([internal isEqualToString:@"SomeLongFormVideoClientIsActiveOverAirPlayVideo"])
  {
    v15 = objc_alloc(MEMORY[0x1E696AD98]);
    IsSuspended = CMSMUtility_IsAnyLongFormVideoSessionActiveOverAirPlayVideo();
    goto LABEL_10;
  }

  if ([internal isEqualToString:@"SomeLongFormVideoClientIsPlaying"])
  {
    v15 = objc_alloc(MEMORY[0x1E696AD98]);
    IsSuspended = CMSMUtility_IsAnyLongFormVideoSessionPlaying();
    goto LABEL_10;
  }

  if ([internal isEqualToString:@"SomeLongFormVideoClientIsPlayingOverAirPlayVideo"])
  {
    v15 = objc_alloc(MEMORY[0x1E696AD98]);
    IsSuspended = CMSMUtility_IsAnyLongFormVideoSessionPlayingOverAirPlayVideo();
    goto LABEL_10;
  }

  if ([internal isEqualToString:@"SomeRecordingSessionPresentThatDisallowsSystemSounds"])
  {
    v15 = objc_alloc(MEMORY[0x1E696AD98]);
    IsSuspended = CMSMUtility_IsSomeRecordingSessionPresentThatDisallowsSystemSounds();
    goto LABEL_10;
  }

  if ([internal isEqualToString:@"SomeSessionIsActiveThatPrefersNoInterruptionsByRingtonesAndAlerts"])
  {
    v15 = objc_alloc(MEMORY[0x1E696AD98]);
    IsSuspended = CMSMUtility_SomeSessionIsActiveThatPrefersNoInterruptionsByRingtonesAndAlerts();
    goto LABEL_10;
  }

  if ([internal isEqualToString:@"StarkMainAudioIsOwnedByiOSButBorrowedByCar"])
  {
    v15 = objc_alloc(MEMORY[0x1E696AD98]);
    appWantsVolumeChanges = [+[MXSessionManager sharedInstance](MXSessionManager starkMainAudioIsOwnedByiOSButBorrowedByCar];
    goto LABEL_15;
  }

  if ([internal isEqualToString:@"SystemHasAudioInputDevice"])
  {
    v15 = objc_alloc(MEMORY[0x1E696AD98]);
    IsSuspended = vaemSystemHasAudioInputDevice();
    goto LABEL_10;
  }

  if ([internal isEqualToString:@"SystemHasAudioInputDeviceExcludingBluetooth"])
  {
    v15 = objc_alloc(MEMORY[0x1E696AD98]);
    IsSuspended = vaemSystemHasAudioInputDeviceExcludingBluetooth();
    goto LABEL_10;
  }

  if ([internal isEqualToString:@"SystemIsAnAppleTV"])
  {
    v15 = objc_alloc(MEMORY[0x1E696AD98]);
    IsSuspended = CMSMDeviceState_ItsAnAppleTV();
    goto LABEL_10;
  }

  v58 = [internal isEqualToString:@"UplinkMute"];
  if (v58)
  {
    IsSessionBasedMutingEnabled = MX_FeatureFlags_IsSessionBasedMutingEnabled(v58, v59);
    if (!IsSessionBasedMutingEnabled)
    {
      v63 = MX_FeatureFlags_IsCallManagementMuteControlEnabled(IsSessionBasedMutingEnabled, v61);
      v15 = objc_alloc(MEMORY[0x1E696AD98]);
      v64 = +[MXSessionManager sharedInstance];
      if (v63)
      {
        appWantsVolumeChanges = [(MXSessionManager *)v64 uplinkMuteSetByClient];
      }

      else
      {
        appWantsVolumeChanges = [(MXSessionManager *)v64 uplinkMute];
      }

      goto LABEL_15;
    }

    v62 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    MXSimulateCrash("This is unexpected. Please file a radar to MediaExperience (New Bugs) | All.");
  }

  else
  {
    if ([internal isEqualToString:@"VibeIntensity"])
    {
      v40 = PVMGetVibeIntensityPreference();
      goto LABEL_79;
    }

    if ([internal isEqualToString:@"VoicePromptStyle"])
    {
      ScreenType = CMSMUtility_GetVoicePromptStyle();
      goto LABEL_29;
    }

    if ([internal isEqualToString:@"RemoteDeviceIDs"])
    {
      ScreenType = [(NSSet *)[(MXSystemController *)self remoteDeviceIDs] allObjects];
      goto LABEL_29;
    }

    if ([internal isEqualToString:@"WombatEnabled"])
    {
      v15 = objc_alloc(MEMORY[0x1E696AD98]);
      appWantsVolumeChanges = [+[MXSessionManager sharedInstance](MXSessionManager wombatEnabled];
      goto LABEL_15;
    }

    if (([internal isEqualToString:@"ActiveAudioRoute"] & 1) != 0 || objc_msgSend(internal, "isEqualToString:", @"CurrentlyActiveRoute"))
    {
      cmsmUpdateCurrentActiveRoutesInfo();
      ScreenType = CMSMUtility_GetCurrentRouteTypeAtIndex(0);
      goto LABEL_29;
    }

    if ([internal isEqualToString:@"ActiveClientPIDsThatHideTheSpeechDetectionDevice"])
    {
      PlayingSessionsDescription = CMSMUtility_CopyActiveClientPIDsThatHideTheSpeechDetectionDevice();
      goto LABEL_18;
    }

    if ([internal isEqualToString:@"ActiveInputRouteForPlayAndRecordNoBluetooth"])
    {
      CurrentlyAirPlayingVideoStreamsDictionary = vaemCopyActiveInputRouteNamesForRouteConfiguration(@"PlayAndRecord", @"Default", 0, 0);
      firstObject = [CurrentlyAirPlayingVideoStreamsDictionary firstObject];
      goto LABEL_6;
    }

    if ([internal isEqualToString:@"AvailableVirtualAudioDevices"])
    {
      PlayingSessionsDescription = vaemCopyAvailableVADUIDs();
      goto LABEL_18;
    }

    if ([internal isEqualToString:@"CallScreeningStatus"])
    {
      v15 = objc_alloc(MEMORY[0x1E696AD98]);
      IsSuspended = vaemGetCallScreeningStatus();
      goto LABEL_10;
    }

    v65 = [internal isEqualToString:@"ContinuityScreenOutputPortAvailable"];
    if (v65)
    {
      IsOnenessEnabled = MX_FeatureFlags_IsOnenessEnabled(v65, v66);
      if (IsOnenessEnabled)
      {
        IsContinuityScreenOutputPortPresentInConnectedOutputPorts = vaemIsContinuityScreenOutputPortPresentInConnectedOutputPorts(IsOnenessEnabled, v68);
      }

      else
      {
        IsContinuityScreenOutputPortPresentInConnectedOutputPorts = 0;
      }

      v19 = objc_alloc(MEMORY[0x1E696AD98]);
      v17 = IsContinuityScreenOutputPortPresentInConnectedOutputPorts;
      goto LABEL_17;
    }

    if ([internal isEqualToString:@"CurrentPhoneCallIsRoutedViaCarBT"])
    {
      PlayingSessionsDescription = CMSMUtility_CopyCurrentPhoneCallIsRoutedViaCarBT();
      goto LABEL_18;
    }

    if ([internal isEqualToString:@"CurrentPlayingSessionIsRoutedViaCarBT"])
    {
      PlayingSessionsDescription = CMSMUtility_CopyCurrentPlayingSessionIsRoutedViaCarBT();
      goto LABEL_18;
    }

    if ([internal isEqualToString:@"CurrentPrimaryAppDisplayID"])
    {
      PlayingSessionsDescription = [+[MXFrontBoardServices sharedInstance](MXFrontBoardServices copyPrimaryAppDisplayID];
      goto LABEL_18;
    }

    if ([internal isEqualToString:@"CurrentRouteHasVolumeControl"])
    {
      PlayingSessionsDescription = CMSMUtility_CopyCurrentRouteHasVolumeControl();
      goto LABEL_18;
    }

    if ([internal isEqualToString:@"DownlinkMute"])
    {
      v15 = objc_alloc(MEMORY[0x1E696AD98]);
      IsSuspended = vaemGetDownlinkMute();
      goto LABEL_10;
    }

    if ([internal isEqualToString:@"FullMute"])
    {
      v15 = objc_alloc(MEMORY[0x1E696AD98]);
      IsSuspended = vaemGetFullMute();
      goto LABEL_10;
    }

    if ([internal isEqualToString:@"HeadphoneVolumeLimit"])
    {
      v40 = PVMGetVolumeLimit();
      goto LABEL_79;
    }

    if ([internal isEqualToString:@"PickableRoutes"])
    {
      CurrentlyAirPlayingVideoStreamsDictionary = CMSMUtility_CopyPickableRoutes();
      firstObject = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:CurrentlyAirPlayingVideoStreamsDictionary copyItems:1];
      goto LABEL_6;
    }

    if ([internal isEqualToString:@"PickedRoute"])
    {
      PlayingSessionsDescription = cmsmDeepCopyPickedRoute();
      goto LABEL_18;
    }

    if ([internal isEqualToString:@"SpeechDetectionDevicePresent"])
    {
      v15 = objc_alloc(MEMORY[0x1E696AD98]);
      IsSuspended = vaemSpeechDetectionVADExists();
      goto LABEL_10;
    }

    if ([internal isEqualToString:@"ThermalControlInfo"])
    {
      PlayingSessionsDescription = vaemCopyThermalControlInfo();
      goto LABEL_18;
    }

    if ([internal isEqualToString:@"ThermalGainAdjustment_Haptics"])
    {
      PlayingSessionsDescription = vaemCopyThermalGainAdjustment_Haptics();
      goto LABEL_18;
    }

    if ([internal isEqualToString:@"ThermalGainAdjustment_Speaker"])
    {
      PlayingSessionsDescription = vaemCopyThermalGainAdjustment_Speaker();
      goto LABEL_18;
    }

    if ([internal isEqualToString:@"TopOfNowPlayingAppStackDisplayID"])
    {
      PlayingSessionsDescription = [+[MXNowPlayingAppManager sharedInstance](MXNowPlayingAppManager copyTopOfNowPlayingAppStack];
      goto LABEL_18;
    }
  }

  return -12984;
}

- (int)setAttributeForKeyInternal:(id)internal andValue:(const void *)value
{
  v115 = *MEMORY[0x1E69E9840];
  if ([internal isEqualToString:@"AirPlayScreenSuspended"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      refreshed = [value BOOLValue];
      systemMirroringRoutingContextUUID = [+[MXSessionManager sharedInstance](MXSessionManager systemMirroringRoutingContextUUID];
      if (refreshed)
      {
        FigRoutingManagerSuspendCurrentEndpointScreen(systemMirroringRoutingContextUUID);
        return 0;
      }

      FigRoutingManagerResumeCurrentEndpointScreen(systemMirroringRoutingContextUUID);
      return refreshed;
    }

    v10 = qword_1EB75DE78;
    v11 = v4;
    v12 = 4294954315;
    v13 = 2224;
    goto LABEL_21;
  }

  if ([internal isEqualToString:@"AllowAppToFadeInTemporarily"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (MX_FeatureFlags_IsHandoffEnabled())
      {
        [+[MXSessionManager sharedInstance](MXSessionManager setAppAllowedToFadeInTemporarily:"setAppAllowedToFadeInTemporarily:", value];
        cmsmStartAllowedToFadeInTemporarilyTimer();
      }

      return 0;
    }

    v10 = qword_1EB75DE78;
    v11 = v4;
    v12 = 4294954315;
    v13 = 2240;
LABEL_21:

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v10, v12, "-MXSystemController-", v13, v11);
  }

  if ([internal isEqualToString:@"AllowAppToInitiatePlaybackTemporarily"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [+[MXSessionManager sharedInstance](MXSessionManager setAppAllowedToInitiatePlaybackTemporarily:"setAppAllowedToInitiatePlaybackTemporarily:", value];
      cmsmStartAllowedToInitiatePlaybackTemporarilyTimer();
      return 0;
    }

    v10 = qword_1EB75DE78;
    v11 = v4;
    v12 = 4294954315;
    v13 = 2255;
    goto LABEL_21;
  }

  if ([internal isEqualToString:@"AllowAppToInitiateRecordingTemporarily"])
  {
    if ([(MXSystemController *)self hasEntitlementToInitiateRecordingTemporarily])
    {
      if (!value || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        [+[MXSessionManager sharedInstance](MXSessionManager setAppAllowedToInitiateRecordingTemporarily:"setAppAllowedToInitiateRecordingTemporarily:", value];
        return 0;
      }

      [MXSystemController(InternalUse) setAttributeForKeyInternal:? andValue:?];
    }

    else
    {
      [MXSystemController(InternalUse) setAttributeForKeyInternal:? andValue:?];
    }

    return valuePtr[0].val[0];
  }

  if ([internal isEqualToString:@"AppWantsVolumeChanges"])
  {
    -[MXSystemController setAppWantsVolumeChanges:](self, "setAppWantsVolumeChanges:", [value BOOLValue]);
    return 0;
  }

  if ([internal isEqualToString:@"CarSpeechStateChanged"])
  {
    if (!value || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      if ([value BOOLValue])
      {
        CMSMNotificationUtility_PostVoicePromptStyleDidChange();
      }

      return 0;
    }

    v10 = qword_1EB75DE78;
    v11 = v4;
    v12 = 4294954315;
    v13 = 2281;
    goto LABEL_21;
  }

  if ([internal isEqualToString:@"ClientAuditToken"])
  {
    if (value)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(MXSystemController *)self setAuditToken:value];
        *&v15 = -1;
        *(&v15 + 1) = -1;
        *valuePtr[0].val = v15;
        *&valuePtr[0].val[4] = v15;
        [value getBytes:valuePtr length:32];
        v16 = *MEMORY[0x1E695E480];
        token = valuePtr[0];
        v17 = SecTaskCreateWithAuditToken(v16, &token);
        v18 = SecTaskCopySigningIdentifier(v17, 0);
        [(MXSystemController *)self setBundleID:v18];
        [(MXSystemController *)self setHasEntitlementForPIDInheritance:0];
        v19 = SecTaskCopyValueForEntitlement(v17, @"com.apple.UIKit.vends-view-services", 0);
        if (([v19 BOOLValue] & 1) != 0 || (v19, v19 = SecTaskCopyValueForEntitlement(v17, @"com.apple.private.coremedia.pidinheritance.allow", 0), objc_msgSend(v19, "BOOLValue")))
        {
          [(MXSystemController *)self setHasEntitlementForPIDInheritance:1];
        }

        clientPID = [(MXSystemController *)self clientPID];
        if (clientPID != getpid())
        {
          v21 = SecTaskCopyValueForEntitlement(v17, @"com.apple.private.mediaexperience.allowwombatenabled", 0);
          -[MXSystemController setHasEntitlementToEnableWombat:](self, "setHasEntitlementToEnableWombat:", [v21 BOOLValue]);

          v22 = SecTaskCopyValueForEntitlement(v17, @"com.apple.private.mediaexperience.setsilentmode.allow", 0);
          -[MXSystemController setHasEntitlementToSetSilentMode:](self, "setHasEntitlementToSetSilentMode:", [v22 BOOLValue]);

          v23 = SecTaskCopyValueForEntitlement(v17, @"com.apple.private.mediaexperience.silentmodenotifications.allow", 0);
          -[MXSystemController setHasEntitlementForSilentModeNotifications:](self, "setHasEntitlementForSilentModeNotifications:", [v23 BOOLValue]);

          v24 = SecTaskCopyValueForEntitlement(v17, @"com.apple.private.mediaexperience.allowvoiprecording", 0);
          -[MXSystemController setHasEntitlementToInitiateRecordingTemporarily:](self, "setHasEntitlementToInitiateRecordingTemporarily:", [v24 BOOLValue]);

          if (![(MXSystemController *)self hasEntitlementToInitiateRecordingTemporarily])
          {
            v25 = SecTaskCopyValueForEntitlement(v17, @"com.apple.private.mediaexperience.allowrecordingtemporarily", 0);
            -[MXSystemController setHasEntitlementToInitiateRecordingTemporarily:](self, "setHasEntitlementToInitiateRecordingTemporarily:", [v25 BOOLValue]);
          }

          v26 = SecTaskCopyValueForEntitlement(v17, @"com.apple.private.mediaexperience.clearmutestatecache.allow", 0);
          -[MXSystemController setHasEntitlementToClearCacheForFirstPartyPhoneCalls:](self, "setHasEntitlementToClearCacheForFirstPartyPhoneCalls:", [v26 BOOLValue]);

          if (MX_FeatureFlags_IsRelativeVoiceOverVolumeEnabled(v27, v28))
          {
            v29 = SecTaskCopyValueForEntitlement(v17, @"com.apple.private.mediaexperience.relativevoiceovervolume.allow", 0);
            [(MXSystemController *)self setHasEntitlementToSetRelativeVoiceOverVolume:v29 != 0];
          }

          v30 = SecTaskCopyValueForEntitlement(v17, @"com.apple.private.mediaexperience.systemcontroller.allowappstoinitiateplayback", 0);
          -[MXSystemController setHasEntitlementToAllowAppsToInitiatePlayback:](self, "setHasEntitlementToAllowAppsToInitiatePlayback:", [v30 BOOLValue]);
        }

        if (v17)
        {
          CFRelease(v17);
        }

        if (v18)
        {
          CFRelease(v18);
        }

        return 0;
      }
    }

    [MXSystemController(InternalUse) setAttributeForKeyInternal:? andValue:?];
    return valuePtr[0].val[0];
  }

  if ([internal isEqualToString:@"NowPlayingAppShouldResumeForCarPlay"])
  {
    if (!value || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      -[MXSessionManager updateNowPlayingAppShouldResumeForCarPlay:](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "updateNowPlayingAppShouldResumeForCarPlay:", [value BOOLValue]);
      return 0;
    }

    v10 = qword_1EB75DE78;
    v11 = v4;
    v12 = 4294954315;
    v13 = 2377;
    goto LABEL_21;
  }

  if ([internal isEqualToString:@"PostInterruptionEndedNotification"])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v10 = qword_1EB75DE78;
      v11 = v4;
      v12 = 4294954315;
      v13 = 2393;
      goto LABEL_21;
    }

    v31 = [objc_msgSend(value objectForKey:{@"AudioSessionID", "unsignedIntValue"}];
    v32 = [objc_msgSend(value objectForKey:{@"IsResumable", "BOOLValue"}];
    if (unk_1EB75DE80)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    return CMSMUtility_PostInterruptionEndedNotificationForAudioSessionID(v31, v32);
  }

  if ([internal isEqualToString:@"StarkMainAudioIsOwnedByiOSButBorrowedByCar"])
  {
    if (!value || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      -[MXSessionManager setStarkMainAudioIsOwnedByiOSButBorrowedByCar:](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "setStarkMainAudioIsOwnedByiOSButBorrowedByCar:", [value BOOLValue]);
      return 0;
    }

    v10 = qword_1EB75DE78;
    v11 = v4;
    v12 = 4294954315;
    v13 = 2405;
    goto LABEL_21;
  }

  if ([internal isEqualToString:@"SubscribeToNotifications"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v34 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:{-[MXSystemController notificationsSubscribedTo](self, "notificationsSubscribedTo")}];
      v106 = 0u;
      v107 = 0u;
      v108 = 0u;
      v109 = 0u;
      v35 = [value countByEnumeratingWithState:&v106 objects:v113 count:16];
      if (!v35)
      {
        goto LABEL_85;
      }

      v36 = v35;
      v37 = *v107;
      v104 = *v107;
      while (1)
      {
        for (i = 0; i != v36; ++i)
        {
          if (*v107 != v37)
          {
            objc_enumerationMutation(value);
          }

          v39 = *(*(&v106 + 1) + 8 * i);
          if (![v39 isEqualToString:@"SilentModeEnabledDidChange"])
          {
            goto LABEL_75;
          }

          if ([(MXSystemController *)self hasEntitlementForSilentModeNotifications]|| [(MXSystemController *)self hasEntitlementToSetSilentMode])
          {
            [v34 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", 1), v39}];
LABEL_75:
            [v34 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", 1), v39}];
            if ([v39 isEqualToString:@"EffectiveVolumeDidChange"])
            {
              [v34 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", 1), @"SystemVolumeDidChange"}];
              [v34 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", 1), @"UserFullMuteDidChange"}];
            }

            continue;
          }

          v111 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          v40 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v41 = v111;
          v42 = type;
          if (os_log_type_enabled(v40, type))
          {
            v43 = v41;
          }

          else
          {
            v43 = v41 & 0xFFFFFFFE;
          }

          if (v43)
          {
            displayID = [(MXSystemController *)self displayID];
            token.val[0] = 136315394;
            *&token.val[1] = "[MXSystemController(InternalUse) setAttributeForKeyInternal:andValue:]";
            LOWORD(token.val[3]) = 2114;
            *(&token.val[3] + 2) = displayID;
            LODWORD(v102) = 22;
            _os_log_send_and_compose_impl(v43, 0, valuePtr, 128, &dword_1B17A2000, v40, v42, "-MXSystemController- %s: Client %{public}@ does not have entitlement to subscribe to silent mode did change notification", &token, v102);
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v37 = v104;
        }

        v36 = [value countByEnumeratingWithState:&v106 objects:v113 count:16];
        if (!v36)
        {
LABEL_85:
          [(MXSystemController *)self setNotificationsSubscribedTo:v34];

          return 0;
        }
      }
    }

    refreshed = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v101, v102, v103);
    if (!unk_1EB75DE80)
    {
      return refreshed;
    }

    goto LABEL_182;
  }

  if ([internal isEqualToString:@"VibeIntensity"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [value floatValue];
      v46 = v45;
      if (v45 != PVMGetVibeIntensityPreference())
      {
        if (unk_1EB75DE80)
        {
          v47 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        refreshed = PVMSetVibeIntensityPreference(v46);
        if (!refreshed)
        {
          FigRoutingContextUtilities_LogCurrentState();
        }

        return refreshed;
      }

      return 0;
    }

    v10 = qword_1EB75DE78;
    v11 = v4;
    v12 = 4294954315;
    v13 = 2481;
    goto LABEL_21;
  }

  v48 = [internal isEqualToString:@"RemoteDeviceIDs"];
  if (v48)
  {
    if (MX_FeatureFlags_IsAirPlayDaemonEnabled(v48, v49))
    {
      if (!value || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        if (unk_1EB75DE80)
        {
          v111 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          v50 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v56 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:value];
        [(MXSystemController *)self setRemoteDeviceIDs:v56];

        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __71__MXSystemController_InternalUse__setAttributeForKeyInternal_andValue___block_invoke;
        block[3] = &unk_1E7AE7CE0;
        block[4] = self;
        if (setAttributeForKeyInternal_andValue__onceToken == -1)
        {
          return 0;
        }

        dispatch_once(&setAttributeForKeyInternal_andValue__onceToken, block);
        return 0;
      }

      v10 = qword_1EB75DE78;
      v11 = v4;
      v12 = 4294954315;
      v13 = 2507;
    }

    else
    {
      v10 = qword_1EB75DE78;
      v11 = v4;
      v12 = 4294954315;
      v13 = 2512;
    }

    goto LABEL_21;
  }

  if ([internal isEqualToString:@"AppToInterruptCurrentNowPlayingSession"])
  {
    if (!value || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      if (unk_1EB75DE80)
      {
        v52 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      [+[MXSessionManager sharedInstance](MXSessionManager appToInterruptCurrentNowPlayingSession:"appToInterruptCurrentNowPlayingSession:", value];
      return 0;
    }

    v10 = qword_1EB75DE78;
    v11 = v4;
    v12 = 4294954315;
    v13 = 2526;
    goto LABEL_21;
  }

  if ([internal isEqualToString:@"AvailableForVoicePrompts"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      Value = CFDictionaryGetValue(value, @"PortNumber");
      if (Value)
      {
        valuePtr[0].val[0] = 0;
        CFNumberGetValue(Value, kCFNumberSInt32Type, valuePtr);
        v54 = CFDictionaryGetValue(value, @"BTDetails_IsAvailableForVoicePrompts") == *MEMORY[0x1E695E4D0];
        refreshed = vaeSetPortAvailableForVoicePrompts(valuePtr[0].val[0], v54);
        cmsmUpdatePickableRouteDescriptionLists(1);
        return refreshed;
      }

      return 0;
    }

    v10 = qword_1EB75DE78;
    v11 = v4;
    v12 = 4294954315;
    v13 = 2549;
    goto LABEL_21;
  }

  if ([internal isEqualToString:@"CallScreeningStatus"])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v10 = qword_1EB75DE78;
      v11 = v4;
      v12 = 4294954315;
      v13 = 2560;
      goto LABEL_21;
    }

    bOOLValue = [value BOOLValue];

    return vaemSetCallScreeningStatus(bOOLValue);
  }

  if ([internal isEqualToString:@"CanBeNowPlayingApp"])
  {
    [(MXSystemController *)self applyCanBeNowPlayingApp:value];
    return 0;
  }

  isKindOfClass = [internal isEqualToString:@"DownlinkMute"];
  if (isKindOfClass)
  {
    if (value)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if ((isKindOfClass & 1) == 0)
      {
        v10 = qword_1EB75DE78;
        v11 = v4;
        v12 = 4294954315;
        v13 = 2590;
        goto LABEL_21;
      }
    }

    if (MX_FeatureFlags_IsCallManagementMuteControlEnabled(isKindOfClass, v58))
    {
      v59 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v59 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", 1), @"MuteCmd"}];
      [v59 setObject:value forKey:@"MuteValue"];
      refreshed = CMSMUtility_AudioToolboxServerRefreshMuteState();

      return refreshed;
    }

    bOOLValue2 = [value BOOLValue];

    return vaemSetDownlinkMute(bOOLValue2);
  }

  v60 = [internal isEqualToString:@"DuckScalarForVoiceOver"];
  if (v60)
  {
    if (!MX_FeatureFlags_IsRelativeVoiceOverVolumeEnabled(v60, v61))
    {
      v10 = qword_1EB75DE78;
      v11 = v4;
      v12 = 4294954315;
      v13 = 2616;
      goto LABEL_21;
    }

    if (![(MXSystemController *)self hasEntitlementToSetRelativeVoiceOverVolume])
    {
      v10 = qword_1EB75DE78;
      v11 = v4;
      v12 = 4294954308;
      v13 = 2611;
      goto LABEL_21;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v10 = qword_1EB75DE78;
      v11 = v4;
      v12 = 4294954315;
      v13 = 2606;
      goto LABEL_21;
    }

    [value floatValue];
    v63 = v62;
    v64 = +[MXSessionManager sharedInstance];
    LODWORD(v65) = v63;
    [(MXSessionManager *)v64 setDuckScalarForVoiceOver:v65];
    return 0;
  }

  if ([internal isEqualToString:@"FullMute"])
  {
    if (value)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v10 = qword_1EB75DE78;
        v11 = v4;
        v12 = 4294954315;
        v13 = 2633;
        goto LABEL_21;
      }
    }

    bOOLValue3 = [value BOOLValue];
    if (vaemGetFullMute() != bOOLValue3)
    {
      if (unk_1EB75DE80)
      {
        v67 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      return vaemSetFullMute(bOOLValue3);
    }

    return 0;
  }

  if ([internal isEqualToString:@"HeadphoneVolumeLimit"])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v10 = qword_1EB75DE78;
      v11 = v4;
      v12 = 4294954315;
      v13 = 2646;
      goto LABEL_21;
    }

    [value floatValue];
    v70 = v69;
    VolumeSequenceNumber = CMSMUtility_GetVolumeSequenceNumber();
    PVMSetVolumeLimit(VolumeSequenceNumber, v70);
    return 0;
  }

  if ([internal isEqualToString:@"InterruptAudioSessionIDForHandoff"])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v10 = qword_1EB75DE78;
      v11 = v4;
      v12 = 4294954315;
      v13 = 2658;
      goto LABEL_21;
    }

    unsignedIntValue = [value unsignedIntValue];

    return CMSMUtility_InterruptAudioSessionIDForHandoff(unsignedIntValue);
  }

  if ([internal isEqualToString:@"MakeStarkPortRoutableForPhoneCall"])
  {
    if (value)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v10 = qword_1EB75DE78;
        v11 = v4;
        v12 = 4294954315;
        v13 = 2669;
        goto LABEL_21;
      }
    }

    -[MXSessionManager makeStarkPortRoutableForPhoneCall:](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "makeStarkPortRoutableForPhoneCall:", [value BOOLValue]);
    return 0;
  }

  if ([internal isEqualToString:@"MakeStarkPortRoutableForPlayingSession"])
  {
    if (value)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v10 = qword_1EB75DE78;
        v11 = v4;
        v12 = 4294954315;
        v13 = 2680;
        goto LABEL_21;
      }
    }

    -[MXSessionManager makeStarkPortRoutableForPlayingSession:](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "makeStarkPortRoutableForPlayingSession:", [value BOOLValue]);
    return 0;
  }

  v73 = [internal isEqualToString:@"IsMaximumSpeakerVolumeLimitEnabled"];
  if (v73)
  {
    if (!MX_FeatureFlags_IsMaxSpeakerVolumeLimitEnabled(v73, v74))
    {
      [MXSystemController(InternalUse) setAttributeForKeyInternal:? andValue:?];
      return valuePtr[0].val[0];
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MXSystemController(InternalUse) setAttributeForKeyInternal:? andValue:?];
      return valuePtr[0].val[0];
    }

    bOOLValue4 = [value BOOLValue];
    if (PVMIsMaxVolumeLimitForBuiltInSpeakerEnabled() == bOOLValue4)
    {
      return 0;
    }

    refreshed = PVMToggleMaxVolumeLimitForBuiltInSpeaker(bOOLValue4, v76);
    if (refreshed)
    {
LABEL_182:
      v111 = 0;
      v77 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT);
LABEL_112:
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      return refreshed;
    }

    v85 = PVMGetCurrentMaxVolumeLimitForBuiltInSpeaker();
    v86 = bOOLValue4;
LABEL_200:
    CMSMNotificationUtility_PostMaximumVolumeLimitForBuiltInSpeakerDidChangeIfNeeded(v86, v85);
    return refreshed;
  }

  v78 = [internal isEqualToString:@"MaximumSpeakerVolumeLimit"];
  if (v78)
  {
    if (!MX_FeatureFlags_IsMaxSpeakerVolumeLimitEnabled(v78, v79))
    {
      [MXSystemController(InternalUse) setAttributeForKeyInternal:? andValue:?];
      return valuePtr[0].val[0];
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MXSystemController(InternalUse) setAttributeForKeyInternal:? andValue:?];
      return valuePtr[0].val[0];
    }

    [value floatValue];
    v81 = v80;
    refreshed = PVMSetMaxVolumeLimitForBuiltInSpeaker(v80);
    if (refreshed)
    {
      v111 = 0;
      v82 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT);
      goto LABEL_112;
    }

    v86 = PVMIsMaxVolumeLimitForBuiltInSpeakerEnabled() != 0;
    v85 = v81;
    goto LABEL_200;
  }

  if ([internal isEqualToString:@"PreferHeadphonesOverCarsAndSpeakersEnabled"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      bOOLValue5 = [value BOOLValue];
      if (bOOLValue5 != +[MXSystemController preferHeadphonesOverCarsAndSpeakersEnabled])
      {
        [MXSystemController setPreferHeadphonesOverCarsAndSpeakersEnabled:bOOLValue5];
        MXCFPreferencesSetAndSynchronizeUserPreference(@"PreferHeadphonesOverCarsAndSpeakersEnabled", value);
        CMSMNotificationUtility_PostPreferHeadphonesOverCarsAndSpeakersDidChange(bOOLValue5);
      }

      return 0;
    }

    [MXSystemController(InternalUse) setAttributeForKeyInternal:? andValue:?];
    return valuePtr[0].val[0];
  }

  if ([internal isEqualToString:@"OverrideToPartnerRoute"])
  {
    if (unk_1EB75DE80)
    {
      v84 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    return CMSMVAUtility_OverrideToPartnerPort();
  }

  if ([internal isEqualToString:@"PickedRoute"])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v10 = qword_1EB75DE78;
      v11 = v4;
      v12 = 4294954315;
      v13 = 2746;
      goto LABEL_21;
    }

    [(MXSystemController *)self displayID];

    return cmsmActivateEndpointFromRouteDescription(value);
  }

  if ([internal isEqualToString:@"PickedRouteWithPassword"])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v10 = qword_1EB75DE78;
      v11 = v4;
      v12 = 4294954315;
      v13 = 2767;
      goto LABEL_21;
    }

    [value valueForKey:@"RouteName"];
    if (unk_1EB75DE80)
    {
      v87 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [objc_msgSend(value valueForKey:{@"AVAudioRouteName", "isEqualToString:", @"AirTunes"}];
    [(MXSystemController *)self displayID];
    return cmsmActivateEndpointFromRouteDescription(value);
  }

  if ([internal isEqualToString:@"PIDToInheritApplicationStateFrom"])
  {
    [(MXSystemController *)self applyPIDToInheritAppStateFrom:value];
    return 0;
  }

  v88 = [internal isEqualToString:@"PopNowPlayingAppStack"];
  if (v88)
  {
    if (!MX_FeatureFlags_IsNowPlayingAppStackEnabled(v88, v89))
    {
      [MXSystemController(InternalUse) setAttributeForKeyInternal:? andValue:?];
      return valuePtr[0].val[0];
    }

    +[MXNowPlayingAppManager processNowPlayingAppPIDChangeIfNeeded:](MXNowPlayingAppManager, "processNowPlayingAppPIDChangeIfNeeded:", [+[MXNowPlayingAppManager resetNowPlayingAppIfNeeded:"resetNowPlayingAppIfNeeded:allowedToBeNowPlaying:canBeNowPlayingApp:"];
    return 0;
  }

  if ([internal isEqualToString:@"RouteAwayFromAirPlay"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (unk_1EB75DE80)
      {
        v90 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      CMSMAP_DisconnectAllAirPlaySessions(1);
      return 0;
    }

    v10 = qword_1EB75DE78;
    v11 = v4;
    v12 = 4294954315;
    v13 = 2791;
    goto LABEL_21;
  }

  if ([internal isEqualToString:@"ThermalControlInfo"])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v10 = qword_1EB75DE78;
      v11 = v4;
      v12 = 4294954315;
      v13 = 2802;
      goto LABEL_21;
    }

    return vaemSetThermalControlInfo(value);
  }

  if ([internal isEqualToString:@"ThermalGainAdjustment_Haptics"])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v10 = qword_1EB75DE78;
      v11 = v4;
      v12 = 4294954315;
      v13 = 2814;
      goto LABEL_21;
    }

    [internal floatValue];
    vaemUpdateHapticsThermalGainAdjustment(v91);
    return 0;
  }

  if ([internal isEqualToString:@"ThermalGainAdjustment_Speaker"])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v10 = qword_1EB75DE78;
      v11 = v4;
      v12 = 4294954315;
      v13 = 2826;
      goto LABEL_21;
    }

    [internal floatValue];
    vaemUpdateSpeakerThermalGainAdjustment(v92);
    return 0;
  }

  if (![internal isEqualToString:@"UplinkMute"])
  {
    if ([internal isEqualToString:@"WombatEnabled"])
    {
      if (![(MXSystemController *)self hasEntitlementToEnableWombat])
      {
        v10 = qword_1EB75DE78;
        v11 = v4;
        v12 = 4294954308;
        v13 = 2867;
        goto LABEL_21;
      }

      -[MXSessionManager setWombatEnabled:](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "setWombatEnabled:", [value BOOLValue]);
    }

    return 0;
  }

  objc_opt_class();
  v93 = objc_opt_isKindOfClass();
  if ((v93 & 1) == 0)
  {
    v10 = qword_1EB75DE78;
    v11 = v4;
    v12 = 4294954315;
    v13 = 2855;
    goto LABEL_21;
  }

  IsSessionBasedMutingEnabled = MX_FeatureFlags_IsSessionBasedMutingEnabled(v93, v94);
  if (IsSessionBasedMutingEnabled)
  {
    v97 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    MXSimulateCrash("This is unexpected. Please file a radar to MediaExperience (New Bugs) | All.");
    return -12984;
  }

  if (MX_FeatureFlags_IsCallManagementMuteControlEnabled(IsSessionBasedMutingEnabled, v96))
  {
    v98 = +[MXSessionManager sharedInstance];
    *&v99 = -1;
    *(&v99 + 1) = -1;
    *valuePtr[0].val = v99;
    *&valuePtr[0].val[4] = v99;
    return [(MXSessionManager *)v98 updateMuteState:valuePtr muteValue:value];
  }

  bOOLValue6 = [value BOOLValue];

  return vaemSetUplinkMute(bOOLValue6);
}

void __71__MXSystemController_InternalUse__setAttributeForKeyInternal_andValue___block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  [MXSystemController mxSystemControllerListAddInstance:objc_loadWeak(&location) isSidekick:1];
  objc_destroyWeak(&location);
}

+ (void)notifyAll:(id)all payload:(id)payload dontPostIfSuspended:(BOOL)suspended remoteDeviceID:(id)d
{
  allCopy = all;
  payloadCopy = payload;
  v13 = MXGetNotificationSenderQueue(payloadCopy, v12);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __88__MXSystemController_InternalUse__notifyAll_payload_dontPostIfSuspended_remoteDeviceID___block_invoke;
  v14[3] = &unk_1E7AEAA70;
  v14[4] = d;
  v14[5] = all;
  suspendedCopy = suspended;
  v14[6] = payload;
  MXDispatchAsync("+[MXSystemController(InternalUse) notifyAll:payload:dontPostIfSuspended:remoteDeviceID:]", "MXSystemController_Embedded.m", 3312, 0, 0, v13, v14);
}

void __88__MXSystemController_InternalUse__notifyAll_payload_dontPostIfSuspended_remoteDeviceID___block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = [MXSystemController copyMXSystemControllerList:*(a1 + 32) != 0];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v29;
    v20 = v3;
    do
    {
      v7 = 0;
      do
      {
        if (*v29 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v28 + 1) + 8 * v7);
        if (v8)
        {
          if ([*(a1 + 40) isEqualToString:@"ActiveAudioRouteDidChange"])
          {
            cf = 0;
            FigRoutingManagerContextUtilities_CopySystemMusicContextUUID(&cf);
            if (!FigRoutingContextUtilities_IsFollowingAnotherContext(cf) && (([objc_msgSend(v8 "displayID")] & 1) != 0 || objc_msgSend(objc_msgSend(v8, "displayID"), "isEqualToString:", @"com.apple.TVMusic")))
            {
              if (unk_1EB75DE80)
              {
                v26 = 0;
                type = OS_LOG_TYPE_DEFAULT;
                os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                v3 = v20;
                v9 = 1;
                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              else
              {
                v9 = 1;
              }
            }

            else
            {
              v9 = 0;
            }

            if (cf)
            {
              CFRelease(cf);
            }
          }

          else
          {
            v9 = 0;
          }

          v10 = [objc_msgSend(v8 "notificationsSubscribedTo")];
          v11 = *(a1 + 56) == 1 && MX_RunningBoardServices_GetApplicationStateForPID([v8 clientPID], 0) - 1 < 2;
          if (!((v9 | v11) & 1 | (v10 == 0)))
          {
            if (!*(a1 + 32) || (v12 = [v8 remoteDeviceID]) != 0 && (v12 = objc_msgSend(*(a1 + 32), "isEqualToString:", objc_msgSend(v8, "remoteDeviceID")), (v12 & 1) != 0) || MX_FeatureFlags_IsAirPlayDaemonEnabled(v12, v13) && *(a1 + 32) && objc_msgSend(v8, "remoteDeviceIDs") && objc_msgSend(objc_msgSend(v8, "remoteDeviceIDs"), "containsObject:", *(a1 + 32)))
            {
              [v2 addObject:v8];
            }
          }
        }

        ++v7;
      }

      while (v5 != v7);
      v15 = [v3 countByEnumeratingWithState:&v28 objects:v33 count:16];
      v5 = v15;
    }

    while (v15);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v16 = [v2 countByEnumeratingWithState:&v21 objects:v32 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v22;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v22 != v18)
        {
          objc_enumerationMutation(v2);
        }

        [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
      }

      v17 = [v2 countByEnumeratingWithState:&v21 objects:v32 count:16];
    }

    while (v17);
  }
}

- (BOOL)isAppAllowedToInitiatePlayback:(id)playback
{
  v10 = *MEMORY[0x1E69E9840];
  if (playback)
  {
    appsAllowedToInitiatePlaybackTimestamp = [(MXSystemController *)self appsAllowedToInitiatePlaybackTimestamp];
    if (appsAllowedToInitiatePlaybackTimestamp)
    {
      [objc_msgSend(MEMORY[0x1E695DF00] "date")];
      if (v6 > 10.0)
      {
        if (unk_1EB75DE80)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        [(MXSystemController *)self setAppsAllowedToInitiatePlayback:0];
        [(MXSystemController *)self setAppsAllowedToInitiatePlaybackClientType:0];
        [(MXSystemController *)self setAppsAllowedToInitiatePlaybackTimestamp:0];
      }
    }

    return [(NSSet *)[(MXSystemController *)self appsAllowedToInitiatePlayback] containsObject:playback];
  }

  else
  {
    v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return 0;
  }
}

+ (BOOL)isAppAllowedToInitiatePlayback:(id)playback
{
  v17 = *MEMORY[0x1E69E9840];
  if (playback)
  {
    v4 = [MXSystemController copyMXSystemControllerList:0];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v4);
          }

          if ([*(*(&v12 + 1) + 8 * i) isAppAllowedToInitiatePlayback:playback])
          {
            v9 = 1;
            goto LABEL_12;
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v9 = 0;
LABEL_12:
  }

  else
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return 0;
  }

  return v9;
}

+ (void)dumpInfoOfMXSystemControllers
{
  v50 = *MEMORY[0x1E69E9840];
  v2 = &qword_1EB75D000;
  if (unk_1EB75DE80)
  {
    v42 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v4 = [MXSystemController copyMXSystemControllerList:0];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v37 objects:v48 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v38;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v38 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v37 + 1) + 8 * i);
        if (v9)
        {
          v10 = unk_1EB75DE80 == 0;
        }

        else
        {
          v10 = 1;
        }

        if (!v10)
        {
          v42 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v12 = v42;
          v13 = type;
          if (os_log_type_enabled(v11, type))
          {
            v14 = v12;
          }

          else
          {
            v14 = v12 & 0xFFFFFFFE;
          }

          if (v14)
          {
            info = [v9 info];
            v44 = 136315394;
            v45 = "+[MXSystemController(InternalUse) dumpInfoOfMXSystemControllers]";
            v46 = 2114;
            v47 = info;
            LODWORD(v32) = 22;
            _os_log_send_and_compose_impl(v14, 0, v49, 128, &dword_1B17A2000, v11, v13, "-MXSystemController- %s: %{public}@", &v44, v32);
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v2 = &qword_1EB75D000;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v37 objects:v48 count:16];
    }

    while (v6);
  }

  v16 = [MXSystemController copyMXSystemControllerList:1];
  if (unk_1EB75DE80)
  {
    v42 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v17 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v18 = v42;
    v19 = type;
    if (os_log_type_enabled(v17, type))
    {
      v20 = v18;
    }

    else
    {
      v20 = v18 & 0xFFFFFFFE;
    }

    if (v20)
    {
      v44 = 136315138;
      v45 = "+[MXSystemController(InternalUse) dumpInfoOfMXSystemControllers]";
      _os_log_send_and_compose_impl(v20, 0, v49, 128, &dword_1B17A2000, v17, v19, "-MXSystemController- %s: --------------------- Sidekick MXSystemControllers -------------------------------", &v44);
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v21 = [v16 countByEnumeratingWithState:&v33 objects:v43 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v34;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v34 != v23)
        {
          objc_enumerationMutation(v16);
        }

        v25 = *(*(&v33 + 1) + 8 * j);
        if (v25)
        {
          v26 = *(v2 + 928) == 0;
        }

        else
        {
          v26 = 1;
        }

        if (!v26)
        {
          v42 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          v27 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v28 = v42;
          v29 = type;
          if (os_log_type_enabled(v27, type))
          {
            v30 = v28;
          }

          else
          {
            v30 = v28 & 0xFFFFFFFE;
          }

          if (v30)
          {
            info2 = [v25 info];
            v44 = 136315394;
            v45 = "+[MXSystemController(InternalUse) dumpInfoOfMXSystemControllers]";
            v46 = 2114;
            v47 = info2;
            LODWORD(v32) = 22;
            _os_log_send_and_compose_impl(v30, 0, v49, 128, &dword_1B17A2000, v27, v29, "-MXSystemController- %s: %{public}@", &v44, v32);
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v2 = &qword_1EB75D000;
        }
      }

      v22 = [v16 countByEnumeratingWithState:&v33 objects:v43 count:16];
    }

    while (v22);
  }
}

+ (int)getPIDToInheritAppStateFromForPID:(int)d
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = [MXSystemController copyMXSystemControllerList:0];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if (v9 && [*(*(&v12 + 1) + 8 * i) clientPID] == d && objc_msgSend(v9, "pidToInheritAppStateFrom"))
        {
          pidToInheritAppStateFrom = [v9 pidToInheritAppStateFrom];
          goto LABEL_13;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  pidToInheritAppStateFrom = 0;
LABEL_13:

  return pidToInheritAppStateFrom;
}

+ (BOOL)getCanBeNowPlayingAppForPID:(int)d
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = [MXSystemController copyMXSystemControllerList:0];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if (v9 && [*(*(&v12 + 1) + 8 * i) clientPID] == d)
        {
          canBeNowPlayingApp = [v9 canBeNowPlayingApp];
          goto LABEL_12;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  canBeNowPlayingApp = 0;
LABEL_12:

  return canBeNowPlayingApp;
}

+ (void)sendPreferHeadphonesOverCarsAndSpeakersSettingsUpdateToAudioStatistics:(BOOL)statistics
{
  statisticsCopy = statistics;
  v6[2] = *MEMORY[0x1E69E9840];
  v4 = +[MXAudioStatistics sharedInstance];
  v5[0] = 0x1F2898850;
  v5[1] = 0x1F28988D0;
  v6[0] = 0x1F2898870;
  v6[1] = [MEMORY[0x1E696AD98] numberWithBool:statisticsCopy];
  -[MXAudioStatistics sendSingleMessageWithDictionary:eventCategory:eventType:](v4, "sendSingleMessageWithDictionary:eventCategory:eventType:", [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:2], 25, 23);
}

+ (void)mxSystemControllerListAddInstance:(id)instance isSidekick:(BOOL)sidekick
{
  sidekickCopy = sidekick;
  objc_initWeak(&location, instance);
  [gMXSystemControllerListLock lock];
  if (sidekickCopy)
  {
    v5 = &gSidekickMXSystemControllerList;
    [gSidekickMXSystemControllerList addPointer:objc_loadWeak(&location)];
  }

  else
  {
    v5 = &gMXSystemControllerList;
    [gMXSystemControllerList addPointer:objc_loadWeak(&location)];
  }

  [*v5 compact];
  [gMXSystemControllerListLock unlock];
  objc_destroyWeak(&location);
}

+ (void)updateMXSystemControllerList
{
  [gMXSystemControllerListLock lock];
  [gMXSystemControllerList addPointer:0];
  [gMXSystemControllerList compact];
  [gMXSystemControllerList addPointer:0];
  [gMXSystemControllerList compact];
  v2 = gMXSystemControllerListLock;

  [v2 unlock];
}

+ (id)copyMXSystemControllerList:(BOOL)list
{
  listCopy = list;
  v4 = objc_autoreleasePoolPush();
  [gMXSystemControllerListLock lock];
  v5 = &gSidekickMXSystemControllerList;
  if (!listCopy)
  {
    v5 = &gMXSystemControllerList;
  }

  allObjects = [*v5 allObjects];
  [gMXSystemControllerListLock unlock];
  objc_autoreleasePoolPop(v4);
  return allObjects;
}

- (uint64_t)applyPIDToInheritAppStateFrom:(_DWORD *)a1 .cold.1(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

- (uint64_t)applyPIDToInheritAppStateFrom:(_DWORD *)a1 .cold.2(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

@end