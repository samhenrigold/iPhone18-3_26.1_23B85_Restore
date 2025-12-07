@interface MXSession
+ (BOOL)isCoreSessionFormatValidForMaxOutputChannels:(id)channels;
+ (BOOL)isSessionMuted:(unint64_t)muted;
+ (id)copyMXSessionForID:(unint64_t)d;
+ (id)getAudioTrackStatusAsString:(unsigned __int8)string;
+ (int)updateAudioTrackStatus:(id)status;
+ (int)updateDoesntActuallyPlayAudio:(id)audio;
+ (int)updateIsPlaying:(id)playing;
+ (int)updateIsPlayingOutput:(id)output;
+ (int)updateIsRecording:(id)recording;
+ (int)updatePreferredAudioHardwareFormat:(id)format withMaxOutputChannels:(unsigned int)channels andCalledFromDealloc:(BOOL)dealloc;
+ (int)updatePreferredNumberOfOutputChannels:(id)channels;
+ (int)updatePreferredOutputSampleRate:(id)rate;
+ (unsigned)getResolvedPreferredNumberOfOutputChannels:(id)channels;
+ (void)initialize;
+ (void)updateIsAnyPlayingContentIneligibleForEnhancedDialogue:(id)dialogue;
- (MXSession)initWithSession:(opaqueCMSession *)session;
- (id)copyCurrentlyPlayingBufferedAudioSourceFormatInfo;
- (id)copyProperties:(id)properties outPropertyErrors:(id *)errors;
- (id)copyPropertiesInternal:(id)internal outPropertyErrors:(id *)errors;
- (id)getBestAvailableContentType;
- (id)getClientTypeAsString;
- (id)getCurrentlyPlayingSourceFormatInfo;
- (id)getMutePriority;
- (id)getPreferredAudioHardwareFormat;
- (id)getSourceFormatInfo;
- (id)info;
- (int)copyPropertyForKey:(id)key valueOut:(id *)out;
- (int)copyPropertyForKeyInternal:(id)internal valueOut:(id *)out;
- (int)resetIsPlayingStates;
- (int)setAudioTrackStatus:(unsigned __int8)status;
- (int)setBestAvailableContentType:(id)type;
- (int)setClientType:(int)type;
- (int)setContentIsEligibleForEnhancedDialogue:(BOOL)dialogue;
- (int)setCurrentlyPlayingBufferedAudioFormatInfo:(id)info;
- (int)setCurrentlyPlayingContentIsEligibleForSpatialization:(BOOL)spatialization;
- (int)setCurrentlyPlayingSourceFormatInfo:(id)info;
- (int)setDoesntActuallyPlayAudio:(BOOL)audio;
- (int)setIAmPiP:(BOOL)p;
- (int)setIsMuted:(BOOL)muted;
- (int)setIsPlayerMuted:(BOOL)muted;
- (int)setIsPlaying:(BOOL)playing;
- (int)setIsPlayingOutput:(BOOL)output;
- (int)setIsPlayingVideoOutput:(BOOL)output;
- (int)setIsRecording:(BOOL)recording;
- (int)setMutePriority:(id)priority;
- (int)setOrderedProperties:(id)properties usingErrorHandlingStrategy:(unsigned __int8)strategy outPropertiesErrors:(id *)errors;
- (int)setOrderedPropertiesInternal:(id)internal usingErrorHandlingStrategy:(unsigned __int8)strategy outPropertiesErrors:(id *)errors;
- (int)setPreferredAudioHardwareFormat:(id)format;
- (int)setPreferredOutputSampleRate:(double)rate;
- (int)setProperties:(id)properties usingErrorHandlingStrategy:(unsigned __int8)strategy outPropertiesErrors:(id *)errors;
- (int)setPropertiesInternal:(id)internal usingErrorHandlingStrategy:(unsigned __int8)strategy outPropertiesErrors:(id *)errors;
- (int)setPropertyForKey:(id)key value:(id)value;
- (int)setPropertyForKeyInternal:(id)internal value:(id)value fromPropertiesBatch:(id)batch;
- (int)setSourceFormatInfo:(id)info;
- (void)_dealloc;
- (void)dealloc;
- (void)dumpInfo;
- (void)mute;
- (void)postIsMutedDidChange;
- (void)setInterruptionCalledOffAudioControlQueue:(BOOL)queue;
- (void)unmute;
- (void)updateBadgeType;
@end

@implementation MXSession

- (id)getClientTypeAsString
{
  v2 = self->mClientType - 1;
  if (v2 > 3)
  {
    return @"Invalid";
  }

  else
  {
    return off_1E7AEC728[v2];
  }
}

- (id)info
{
  mID = self->mID;
  mCoreSessionID = self->mCoreSessionID;
  v5 = MEMORY[0x1E696AEC0];
  clientName = [(MXCoreSessionBase *)self->mCoreSession clientName];
  if (self->mIsMuted)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  if (self->mClientIsPlaying)
  {
    v8 = @"PLAYING";
  }

  else
  {
    v8 = @"STOPPED";
  }

  if (self->mAudioToolboxIsPlaying)
  {
    v9 = @"PLAYING";
  }

  else
  {
    v9 = @"STOPPED";
  }

  getMutePriority = [(MXSession *)self getMutePriority];
  if (self->mIAmPiP)
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  if (self->mDoesntActuallyPlayAudio)
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  if (self->mIsPlayingOutput)
  {
    v13 = @"YES";
  }

  else
  {
    v13 = @"NO";
  }

  if (self->mIsPlayingVideoOutput)
  {
    v14 = @"YES";
  }

  else
  {
    v14 = @"NO";
  }

  return [v5 stringWithFormat:@"<ID: %llx, CoreSessionID = %lld Name = %@, Muted = %@, ClientIsPlaying = %@, AudioToolboxIsPlaying = %@, MutePriority = %@, PiP = %@, DoesntActuallyPlayAudio = %@, clientType = %x, IsPlayingOutput = %@, IsPlayingVideoOutput = %@", mID, mCoreSessionID, clientName, v7, v8, v9, getMutePriority, v11, v12, self->mClientType, v13, v14];
}

- (id)getMutePriority
{
  [(NSRecursiveLock *)self->mRecursiveLock lock];
  v3 = self->mMutePriority;
  [(NSRecursiveLock *)self->mRecursiveLock unlock];
  return v3;
}

- (void)updateBadgeType
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = CMSUtility_SessionCanBeAndAllowedToBeNowPlayingApp(self->mCoreSession);
  mCoreSession = self->mCoreSession;
  if (v3)
  {
    copyMXSessionList = [(MXCoreSession *)mCoreSession copyMXSessionList];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v6 = [copyMXSessionList countByEnumeratingWithState:&v19 objects:v31 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v20;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(copyMXSessionList);
          }

          if ([*(*(&v19 + 1) + 8 * i) getIsPlaying])
          {
            if (![(MXSession *)self getIsMuted])
            {
              [(NSRecursiveLock *)self->mRecursiveLock lock];
              v11 = [(NSDictionary *)self->mCurrentlyPlayingBufferedAudioFormatInfo objectForKey:@"ContentType"];
              [(NSRecursiveLock *)self->mRecursiveLock unlock];
              if (v11)
              {
                v8 = v11;
              }
            }
          }
        }

        v7 = [copyMXSessionList countByEnumeratingWithState:&v19 objects:v31 count:16];
      }

      while (v7);
    }

    else
    {
      v8 = 0;
    }

    v13 = [+[MXSessionManager sharedInstance](MXSessionManager copyEvaluatedBadgeType:"copyEvaluatedBadgeType:", v8];
    if (dword_1EB75DE40)
    {
      v24 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v15 = v24;
      v16 = type;
      if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
      {
        v17 = v15;
      }

      else
      {
        v17 = v15 & 0xFFFFFFFE;
      }

      if (v17)
      {
        info = [(MXCoreSessionBase *)self->mCoreSession info];
        v25 = 136315650;
        v26 = "[MXSession(InternalUse) updateBadgeType]";
        v27 = 2114;
        v28 = v13;
        v29 = 2114;
        v30 = info;
        _os_log_send_and_compose_impl(v17, 0, v32, 128, &dword_1B17A2000, os_log_and_send_and_compose_flags_and_os_log_type, v16, "-MXSession- %s: Applying badgeType %{public}@ to session %{public}@ ", &v25, 32);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [(MXCoreSession *)self->mCoreSession setBadgeType:v13];
  }

  else
  {
    [(MXCoreSession *)mCoreSession setBadgeType:@"NotApplicable"];
    if (dword_1EB75DE40)
    {
      v24 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }
}

- (id)getPreferredAudioHardwareFormat
{
  [(NSRecursiveLock *)self->mRecursiveLock lock];
  v3 = self->mPreferredAudioHardwareFormat;
  [(NSRecursiveLock *)self->mRecursiveLock unlock];
  return v3;
}

- (id)getBestAvailableContentType
{
  [(NSRecursiveLock *)self->mRecursiveLock lock];
  v3 = self->mBestAvailableContentType;
  [(NSRecursiveLock *)self->mRecursiveLock unlock];
  return v3;
}

- (id)getCurrentlyPlayingSourceFormatInfo
{
  [(NSRecursiveLock *)self->mRecursiveLock lock];
  v3 = self->mCurrentlyPlayingSourceFormatInfo;
  [(NSRecursiveLock *)self->mRecursiveLock unlock];
  return v3;
}

+ (void)initialize
{
  if (objc_opt_self() == self)
  {
    sNonSerializedCopyProperties_0 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"ActivationContext", @"AirPlayVideoIsActive", @"AllowedRouteTypes", @"AllowedToUseHardwareAudioCodec", @"AllowEnhancedDialogue", @"AllowMixableAudioWhileRecording", @"AllowsAirPlayBuffered", @"AllowsAirPlayVideo", @"AllowSystemSoundsWhileRecording", @"AudioBehaviour", @"AudioCategory", @"AudioHardwareControlFlags", @"AudioMode", @"AudioOnlyAirPlayVideoIsActive", @"AudioToolboxIsPlaying", @"AudioTrackStatus", @"BestAvailableContentType", @"BadgeType", @"DoesGameAudioNeedToBeSpatialized", @"CanBeginInterruption", @"DefaultBuiltInRoute", @"EnableBluetoothRecording", @"ClientName", @"ClientPID", @"ClientPriority", @"ConstantOutputVolumeLeveldB", @"ControlsRoute", @"ContentIsEligibleForEnhancedDialogue", @"AudioSessionID", @"CurrentAudioHardwareSampleRate", @"CurrentInputSampleRate", @"CurrentlyPlayingContentIsEligibleForSpatialization", @"CurrentlyPlayingSourceFormatInfo", @"CurrentlyPlayingBufferedAudioFormatInfo", @"CurrentOutputSampleRate", @"CurrentSpeechDetectionDeviceSampleRate", @"DefaultVPChatMode", @"DetailedActiveAudioRoute", @"DoesntActuallyPlayAudio", @"DoNotNotifyOtherSessionsOnNextInactive", @"DoNotResetAudioCategoryOnNextInactive", @"DuckFadeDuration", @"DuckToLevelDB", @"DuckToLevelScalar", @"ForceSoundCheck", @"HapticEngineIsPlaying", @"HandsOverInterruptionsToInterruptor", @"HasExternalMuteNotificationContext", @"HostApplicationDisplayID", @"HostProcessAttribution", @"IAmTheAssistant", @"MXSessionID", @"InterruptionFadeDuration", @"InterruptionStyle", @"IsActive", @"IsAirPlayReceiverSession", @"BypassSystemSpatialAudioForGame", @"IsAudioSession", @"IsEligibleForBTSmartRoutingConsideration", @"IsEligibleForNowPlayingAppConsideration", @"IsEligibleForBTTriangleConsideration"}];
    sNonSerializedSetProperties_0 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"AirPlayVideoIsActive", @"AllowMixableAudioWhileRecording", @"AudioOnlyAirPlayVideoIsActive", @"AuditToken", @"AllowEnhancedDialogue", @"AllowSystemSoundsWhileRecording", @"BestAvailableContentType", @"ClientName", @"ClientPID", @"ClientSecTask", @"ClientType", @"ContentIsEligibleForEnhancedDialogue", @"AudioSessionID", @"CurrentlyPlayingContentIsEligibleForSpatialization", @"CurrentlyPlayingSourceFormatInfo", @"DisallowAudioFormatChanges", @"DoesInterAppAudio", @"DoNotNotifyOtherSessionsOnNextInactive", @"DoNotResetAudioCategoryOnNextInactive", @"DuckFadeDuration", @"DuckToLevelDB", @"ForceSoundCheck", @"HandsOverInterruptionsToInterruptor", @"HasExternalMuteNotificationContext", @"HostProcessAttribution", @"IAmIDSMXCoreSession", @"IAmHardwareSafetySession", @"IAmPiP", @"IAmCar", @"IAmWiredCar", @"InterruptionFadeDuration", @"IsAirPlayReceiverSession", @"IsAudioSession", @"IsEligibleForNowPlayingAppConsideration", @"IsFigInstantiatedAudioSession", @"IsLongFormAudio", @"IsSharedAVAudioSessionInstance", @"IsSharePlayCapableCallSession", @"IsUsingBuiltInMicForRecording", @"IsRecordingMutedForRemoteDevice", @"IsUsingCamera", @"NeroSuspended", @"OptOutOfMutePriority", @"PrefersBeingInterruptedByNextActiveRecordingClient", @"PrefersBluetoothAccessoryMuting", @"PrefersConcurrentAirPlayAudio", @"PrefersEnhancedDialogue", @"PrefersNoDucking", @"PrefersNoInterruptions", @"PrefersNoInterruptionsByMixableSessions", @"PrefersNoInterruptionsDuringRemoteDeviceControl", @"PrefersSpeechDetectEnabled", @"PrefersToOptOutOfHardwareSafetyInterruptions", @"PrefersToPlayDuringWombat", @"PrefersToTakeHWControlFlagsFromAnotherSession", @"PrefersToVibeWhenVibrationsAreDisabled", @"ProcessAssertionAuditTokens", @"ReporterIDs", @"SourceFormatInfo", @"SubscribeToNotifications", @"TemporaryAssertionEnabled"}];
    sNonSerializedSetPropertiesWhenSessionIsInactive_0 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"AllowedRouteTypes", @"AudioClockDevice", @"AudioCategory", @"AudioMode", @"AudioHardwareControlFlags", @"CameraParameters", @"CaptureOrientationOverride", @"DefaultBuiltInRoute", @"EnableBluetoothRecording", @"ClientPriority", @"ConstantOutputVolumeLeveldB", @"CreateSpeakerDevice", @"DefaultVPChatMode", @"DeselectedInputs", @"DuckToLevelScalar", @"ExcludedRoutes", @"IAmTheAssistant", @"IgnoreRingerSwitch", @"InputGainScalar", @"InterruptionStyle", @"IsEligibleForBTSmartRoutingConsideration", @"IsEligibleForBTTriangleConsideration", @"MutesAudioBasedOnRingerSwitchState", @"OrientationOverride", @"PreferredAudioHardwareFormat", @"PreferredAudioHardwareIOBufferFrameDuration", @"PreferredAudioHardwareIOBufferFrames", @"PreferredDecoupledInputOutput", @"PreferredInputs", @"PreferredInputSampleRate", @"PreferredPersistentRoute", @"PreferredStereoInputOrientation", @"PrefersBluetoothFarFieldCapture", @"PrefersBluetoothHighQualityContentCapture", @"PrefersEchoCancelledInput", @"PrefersInterruptionOnRouteDisconnect", @"PrefersNoInterruptionsByRingtonesAndAlerts", @"PreferredRouteControlFeatures", @"RequiresAggregatedInputOutput", @"SelectedInputs", @"SelectedOutputs", @"UnduckToLevelScalar", @"VPBlockConfiguration", 0}];
    sOrderedMXSessionProperties = [objc_alloc(MEMORY[0x1E695DFB8]) initWithObjects:{@"ClientType", @"ClientName", @"IsAudioSession", @"AudioSessionID", @"ClientPID", @"ClientSecTask", @"AuditToken", @"IAmTheAssistant", @"IAmCar", @"IAmIDSMXCoreSession", @"IAmHardwareSafetySession", @"AudioCategory", @"AudioMode", @"EnableBluetoothRecording", @"DefaultBuiltInRoute", @"ClientPriority", @"InterruptionStyle", @"RouteSharingPolicy", @"ActivationContext", @"DoesntActuallyPlayAudio", @"IsSharePlayCapableCallSession", @"IsExpanseCallSession", @"IsExpanseMediaSession", @"IsEligibleForBTTriangleConsideration", @"IsEligibleForBTSmartRoutingConsideration", @"VibrationData", @"VibratorOn", 0}];
  }
}

+ (unsigned)getResolvedPreferredNumberOfOutputChannels:(id)channels
{
  v16 = *MEMORY[0x1E69E9840];
  copyMXSessionList = [channels copyMXSessionList];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [copyMXSessionList countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(copyMXSessionList);
        }

        getPreferredNumberOfOutputChannels = [*(*(&v11 + 1) + 8 * i) getPreferredNumberOfOutputChannels];
        if (getPreferredNumberOfOutputChannels > v6)
        {
          v6 = getPreferredNumberOfOutputChannels;
        }
      }

      v5 = [copyMXSessionList countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)getSourceFormatInfo
{
  [(NSRecursiveLock *)self->mRecursiveLock lock];
  v3 = self->mSourceFormatInfo;
  [(NSRecursiveLock *)self->mRecursiveLock unlock];
  return v3;
}

- (id)copyCurrentlyPlayingBufferedAudioSourceFormatInfo
{
  [(NSRecursiveLock *)self->mRecursiveLock lock];
  v3 = self->mCurrentlyPlayingBufferedAudioFormatInfo;
  [(NSRecursiveLock *)self->mRecursiveLock unlock];
  return v3;
}

- (int)setIAmPiP:(BOOL)p
{
  v5 = *MEMORY[0x1E69E9840];
  if (self->mIAmPiP != p)
  {
    self->mIAmPiP = p;
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  return 0;
}

- (int)setIsRecording:(BOOL)recording
{
  v9 = *MEMORY[0x1E69E9840];
  mIsRecording = self->mIsRecording;
  if (mIsRecording == recording)
  {
    return 0;
  }

  if ([+[MXSessionManager isSpeechDetectCategory:"isSpeechDetectCategory:"]
  {
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    return -15685;
  }

  else
  {
    self->mIsRecording = recording;
    if (dword_1EB75DE40)
    {
      v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    result = [MXSession updateIsRecording:self->mCoreSession];
    if (result)
    {
      self->mIsRecording = mIsRecording;
    }
  }

  return result;
}

- (int)resetIsPlayingStates
{
  self->mIsPlaying = 0;
  self->mClientIsPlaying = 0;
  self->mAudioToolboxIsPlaying = 0;
  self->mIsPlayingOutput = 0;
  return 0;
}

- (int)setPreferredAudioHardwareFormat:(id)format
{
  if ([format isEqualToString:{-[MXSession getPreferredAudioHardwareFormat](self, "getPreferredAudioHardwareFormat")}])
  {
    return 0;
  }

  [(NSRecursiveLock *)self->mRecursiveLock lock];

  self->mPreferredAudioHardwareFormat = format;
  [(NSRecursiveLock *)self->mRecursiveLock unlock];
  mCoreSession = self->mCoreSession;

  return [MXSession updatePreferredAudioHardwareFormat:mCoreSession withMaxOutputChannels:0 andCalledFromDealloc:0];
}

- (int)setPreferredOutputSampleRate:(double)rate
{
  if (self->mPreferredOutputSampleRate == rate)
  {
    return 0;
  }

  self->mPreferredOutputSampleRate = rate;
  return [MXSession updatePreferredOutputSampleRate:self->mCoreSession];
}

- (int)setIsMuted:(BOOL)muted
{
  v12 = *MEMORY[0x1E69E9840];
  if (self->mIsMuted != muted)
  {
    self->mIsMuted = muted;
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (CMSUtility_IsAudioCategoryPrimary(self->mCoreSession, a2, muted, v3, v4, v5, v6, v7))
    {
      CMSMNotificationUtility_PostSomePrimaryAudioCategoryIsPlayingDidChange(self->mCoreSession);
      CMSMNotificationUtility_PostSomeOtherPrimaryAudioCategoryIsPlayingDidChange(self->mCoreSession, v10);
    }

    [(MXSession *)self updateBadgeType];
  }

  return 0;
}

- (int)setIsPlayerMuted:(BOOL)muted
{
  v5 = *MEMORY[0x1E69E9840];
  if (self->mIsPlayerMuted != muted)
  {
    self->mIsPlayerMuted = muted;
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  return 0;
}

- (int)setAudioTrackStatus:(unsigned __int8)status
{
  v6 = *MEMORY[0x1E69E9840];
  if (self->mAudioTrackStatus != status)
  {
    self->mAudioTrackStatus = status;
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [MXSession updateAudioTrackStatus:self->mCoreSession];
  }

  return 0;
}

- (int)setIsPlayingOutput:(BOOL)output
{
  v6 = *MEMORY[0x1E69E9840];
  if (self->mIsPlayingOutput == output)
  {
    return 0;
  }

  self->mIsPlayingOutput = output;
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return [MXSession updateIsPlayingOutput:self->mCoreSession];
}

- (int)setIsPlayingVideoOutput:(BOOL)output
{
  v5 = *MEMORY[0x1E69E9840];
  if (self->mIsPlayingVideoOutput != output)
  {
    self->mIsPlayingVideoOutput = output;
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [+[MXSessionManager sharedInstance](MXSessionManager updateSomeAirPlayCapableVideoClientIsActive];
  }

  return 0;
}

- (int)setSourceFormatInfo:(id)info
{
  v7 = *MEMORY[0x1E69E9840];
  [(NSRecursiveLock *)self->mRecursiveLock lock];

  self->mSourceFormatInfo = info;
  [(NSRecursiveLock *)self->mRecursiveLock unlock];
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if ([(MXSession *)self getIsPlaying])
  {
    CMSMNotificationUtility_PostSourceFormatInfoDidChange();
  }

  return 0;
}

- (int)setBestAvailableContentType:(id)type
{
  v7 = *MEMORY[0x1E69E9840];
  if (([type isEqualToString:{-[MXSession getBestAvailableContentType](self, "getBestAvailableContentType")}] & 1) == 0)
  {
    [(NSRecursiveLock *)self->mRecursiveLock lock];

    self->mBestAvailableContentType = type;
    [(NSRecursiveLock *)self->mRecursiveLock unlock];
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if ([(MXSession *)self getIsPlaying]|| [(MXSession *)self getClientType]== 2)
    {
      CMSMNotificationUtility_PostSourceFormatInfoDidChange();
    }
  }

  return 0;
}

- (int)setCurrentlyPlayingSourceFormatInfo:(id)info
{
  v7 = *MEMORY[0x1E69E9840];
  [(NSRecursiveLock *)self->mRecursiveLock lock];

  self->mCurrentlyPlayingSourceFormatInfo = info;
  [(NSRecursiveLock *)self->mRecursiveLock unlock];
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if ([(MXSession *)self getIsPlaying])
  {
    CMSMNotificationUtility_PostSourceFormatInfoDidChange();
  }

  return 0;
}

- (int)setCurrentlyPlayingBufferedAudioFormatInfo:(id)info
{
  v7 = *MEMORY[0x1E69E9840];
  [(NSRecursiveLock *)self->mRecursiveLock lock];

  self->mCurrentlyPlayingBufferedAudioFormatInfo = info;
  [(NSRecursiveLock *)self->mRecursiveLock unlock];
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [(MXSession *)self updateBadgeType];
  return 0;
}

- (int)setCurrentlyPlayingContentIsEligibleForSpatialization:(BOOL)spatialization
{
  v6 = *MEMORY[0x1E69E9840];
  if (self->mCurrentlyPlayingContentIsEligibleForSpatialization != spatialization)
  {
    self->mCurrentlyPlayingContentIsEligibleForSpatialization = spatialization;
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if ([(MXSession *)self getIsPlaying])
    {
      CMSMNotificationUtility_PostSourceFormatInfoDidChange();
    }
  }

  return 0;
}

- (int)setContentIsEligibleForEnhancedDialogue:(BOOL)dialogue
{
  v6 = *MEMORY[0x1E69E9840];
  if (self->mContentIsEligibleForEnhancedDialogue != dialogue)
  {
    self->mContentIsEligibleForEnhancedDialogue = dialogue;
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [MXSession updateIsAnyPlayingContentIneligibleForEnhancedDialogue:self->mCoreSession];
  }

  return 0;
}

- (int)setClientType:(int)type
{
  v5 = *MEMORY[0x1E69E9840];
  self->mClientType = type;
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return 0;
}

- (void)setInterruptionCalledOffAudioControlQueue:(BOOL)queue
{
  queueCopy = queue;
  v6 = *MEMORY[0x1E69E9840];
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [(MXCoreSession *)self->mCoreSession setIsInterruptionCalledOffAudioControlQueue:queueCopy];
}

+ (int)updateIsRecording:(id)recording
{
  v17 = *MEMORY[0x1E69E9840];
  recordingCopy = recording;
  copyMXSessionList = [recording copyMXSessionList];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [copyMXSessionList countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(copyMXSessionList);
        }

        [*(*(&v12 + 1) + 8 * i) getIsRecording];
      }

      v5 = [copyMXSessionList countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v9 = MXCoreSessionSetProperty(recordingCopy, @"IsRecording");

  return v9;
}

+ (int)updatePreferredNumberOfOutputChannels:(id)channels
{
  v7 = *MEMORY[0x1E69E9840];
  result = +[MXSession isCoreSessionFormatValidForMaxOutputChannels:](MXSession, "isCoreSessionFormatValidForMaxOutputChannels:", [channels preferredHardwareFormat]);
  if (result)
  {
    v5 = [MXSession getResolvedPreferredNumberOfOutputChannels:channels];
    if ([channels preferredNumberOfOutputChannels] == v5)
    {
      return 0;
    }

    else
    {
      [MEMORY[0x1E696AD98] numberWithInt:v5];
      if (dword_1EB75DE40)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      return MXCoreSessionSetProperty(channels, @"PreferredNumberOfOutputChannels");
    }
  }

  return result;
}

+ (int)updatePreferredAudioHardwareFormat:(id)format withMaxOutputChannels:(unsigned int)channels andCalledFromDealloc:(BOOL)dealloc
{
  deallocCopy = dealloc;
  v24 = *MEMORY[0x1E69E9840];
  copyMXSessionList = [format copyMXSessionList];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = [copyMXSessionList countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (!v7)
  {
    v10 = @"LPCM";
    if (!deallocCopy)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  v8 = v7;
  v9 = *v20;
  v10 = @"LPCM";
  while (2)
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v20 != v9)
      {
        objc_enumerationMutation(copyMXSessionList);
      }

      getPreferredAudioHardwareFormat = [*(*(&v19 + 1) + 8 * i) getPreferredAudioHardwareFormat];
      if ([getPreferredAudioHardwareFormat isEqualToString:@"MATAtmos"])
      {
        v10 = @"MATAtmos";
        goto LABEL_14;
      }

      if ([getPreferredAudioHardwareFormat isEqualToString:@"AC-3"] && -[__CFString isEqualToString:](v10, "isEqualToString:", @"LPCM"))
      {
        v10 = @"AC-3";
      }
    }

    v8 = [copyMXSessionList countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v8)
    {
      continue;
    }

    break;
  }

LABEL_14:
  if (deallocCopy)
  {
LABEL_15:
    UpdatedHardwareFormatBasedOnPreferredNumberOfOutputChannelsAndPreferredHardwareFormat = CMSessionMgrGetUpdatedHardwareFormatBasedOnPreferredNumberOfOutputChannelsAndPreferredHardwareFormat(channels, v10);
    if (!FigCFEqual())
    {
      v10 = UpdatedHardwareFormatBasedOnPreferredNumberOfOutputChannelsAndPreferredHardwareFormat;
    }
  }

LABEL_17:
  if ([objc_msgSend(format "preferredHardwareFormat")])
  {
    v14 = 0;
  }

  else
  {
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v14 = MXCoreSessionSetProperty(format, @"PreferredAudioHardwareFormat");
  }

  return v14;
}

+ (int)updatePreferredOutputSampleRate:(id)rate
{
  rateCopy = rate;
  v20 = *MEMORY[0x1E69E9840];
  copyMXSessionList = [rate copyMXSessionList];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [copyMXSessionList countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    v8 = 0.0;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(copyMXSessionList);
        }

        [*(*(&v15 + 1) + 8 * i) getPreferredOutputSampleRate];
        if (v10 > v8)
        {
          v8 = v10;
        }
      }

      v6 = [copyMXSessionList countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
    *&v11 = v8;
  }

  else
  {
    v11 = 0.0;
  }

  [MEMORY[0x1E696AD98] numberWithFloat:v11];
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v13 = MXCoreSessionSetProperty(rateCopy, @"PreferredOutputSampleRate");

  return v13;
}

+ (int)updateDoesntActuallyPlayAudio:(id)audio
{
  v20 = *MEMORY[0x1E69E9840];
  copyMXSessionList = [audio copyMXSessionList];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [copyMXSessionList countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v16;
    v9 = 1;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(copyMXSessionList);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if ([v11 getIsPlaying])
        {
          v9 &= [v11 getDoesntActuallyPlayAudio];
          v7 = 1;
        }
      }

      v6 = [copyMXSessionList countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
    if ((v7 & v9 & 1) != [audio doesntActuallyPlayAudio])
    {
      goto LABEL_11;
    }

LABEL_14:
    v13 = 0;
    goto LABEL_16;
  }

  if (([audio doesntActuallyPlayAudio] & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_11:
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v13 = MXCoreSessionSetProperty(audio, @"DoesntActuallyPlayAudio");
LABEL_16:

  return v13;
}

+ (int)updateIsPlayingOutput:(id)output
{
  v18 = *MEMORY[0x1E69E9840];
  copyMXSessionList = [output copyMXSessionList];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [copyMXSessionList countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v14 != v7)
      {
        objc_enumerationMutation(copyMXSessionList);
      }

      if ([*(*(&v13 + 1) + 8 * v8) getIsPlayingOutput])
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [copyMXSessionList countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    if (([output isPlayingOutput] & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_9:
  if (([output isPlayingOutput] & 1) == 0)
  {
LABEL_12:
    v9 = 0;
    goto LABEL_17;
  }

LABEL_13:
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v9 = MXCoreSessionSetProperty(output, @"IsPlayingOutput");
  if (v9)
  {
    v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_17:

  return v9;
}

+ (int)updateAudioTrackStatus:(id)status
{
  v7 = *MEMORY[0x1E69E9840];
  result = CMSMDeviceState_SupportsMediaMultitasking(self, a2);
  if (result)
  {
    hasAudioTrack = [status hasAudioTrack];
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (hasAudioTrack)
    {
      return cmsBeginInterruptionGuts(status, 0, 2);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

+ (void)updateIsAnyPlayingContentIneligibleForEnhancedDialogue:(id)dialogue
{
  v14 = *MEMORY[0x1E69E9840];
  copyMXSessionList = [dialogue copyMXSessionList];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [copyMXSessionList countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(copyMXSessionList);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        if ([v8 getIsPlaying] && (objc_msgSend(v8, "getDoesntActuallyPlayAudio") & 1) == 0 && !objc_msgSend(v8, "getContentIsEligibleForEnhancedDialogue"))
        {
          v5 = 1;
          goto LABEL_13;
        }
      }

      v5 = [copyMXSessionList countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  if (v5 != [dialogue isAnyPlayingContentIneligibleForEnhancedDialogue])
  {
    [dialogue setIsAnyPlayingContentIneligibleForEnhancedDialogue:v5];
    [dialogue updateAllowEnhancedDialogue];
  }
}

- (void)mute
{
  if (!self->mIsMuted)
  {
    CMSMUtility_AudioToolboxHandleInterruptionCommandWithMXSessionID(self->mCoreSession, self->mID, 8);
    [(MXSession *)self setIsMuted:1];

    [(MXSession *)self postIsMutedDidChange];
  }
}

- (void)unmute
{
  if (self->mIsMuted)
  {
    CMSMUtility_AudioToolboxHandleInterruptionCommandWithMXSessionID(self->mCoreSession, self->mID, 9);
    [(MXSession *)self setIsMuted:0];

    [(MXSession *)self postIsMutedDidChange];
  }
}

- (void)postIsMutedDidChange
{
  if (self)
  {
    selfCopy = self;
    v5 = MXGetNotificationSenderQueue(selfCopy, v4);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __46__MXSession_InternalUse__postIsMutedDidChange__block_invoke;
    v6[3] = &unk_1E7AE7CE0;
    v6[4] = self;
    MXDispatchAsync("[MXSession(InternalUse) postIsMutedDidChange]", "MXSession_Impl_Embedded.m", 1579, 0, 0, v5, v6);
  }
}

void __46__MXSession_InternalUse__postIsMutedDidChange__block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E695DF20]);
  v3 = [v2 initWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", objc_msgSend(*(a1 + 32), "getIsMuted")), @"Muted", 0}];
  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];

  v4 = *(a1 + 32);
}

+ (id)copyMXSessionForID:(unint64_t)d
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = objc_autoreleasePoolPush();
  copyMXCoreSessionList = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = [copyMXCoreSessionList countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v18 = v4;
    v8 = *v24;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(copyMXCoreSessionList);
        }

        copyMXSessionList = [*(*(&v23 + 1) + 8 * i) copyMXSessionList];
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v11 = [copyMXSessionList countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v20;
LABEL_8:
          v14 = 0;
          while (1)
          {
            if (*v20 != v13)
            {
              objc_enumerationMutation(copyMXSessionList);
            }

            v15 = *(*(&v19 + 1) + 8 * v14);
            if ([v15 getID] == d)
            {
              break;
            }

            if (v12 == ++v14)
            {
              v12 = [copyMXSessionList countByEnumeratingWithState:&v19 objects:v27 count:16];
              if (v12)
              {
                goto LABEL_8;
              }

              goto LABEL_14;
            }
          }

          v16 = v15;

          if (v16)
          {
            goto LABEL_19;
          }
        }

        else
        {
LABEL_14:
        }
      }

      v7 = [copyMXCoreSessionList countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v7);
    v16 = 0;
LABEL_19:
    v4 = v18;
  }

  else
  {
    v16 = 0;
  }

  objc_autoreleasePoolPop(v4);
  return v16;
}

+ (BOOL)isCoreSessionFormatValidForMaxOutputChannels:(id)channels
{
  if ([channels isEqualToString:@"AC-3"])
  {
    return 0;
  }

  else
  {
    return [channels isEqualToString:@"MATAtmos"] ^ 1;
  }
}

+ (id)getAudioTrackStatusAsString:(unsigned __int8)string
{
  if ((string - 1) >= 3)
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown(%u)", string];
  }

  else
  {
    return off_1E7AEC748[(string - 1)];
  }
}

- (void)dumpInfo
{
  v4 = *MEMORY[0x1E69E9840];
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    if (dword_1EB75DE40)
    {
      v3 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }
}

- (MXSession)initWithSession:(opaqueCMSession *)session
{
  location[16] = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = MXSession;
  v4 = [(MXSession *)&v8 init];
  if (v4)
  {
    if (session)
    {
      v4->mRecursiveLock = objc_alloc_init(MEMORY[0x1E696AE68]);
      v4->mCoreSession = session->var1;
      v4->mPreferredOutputSampleRate = 0.0;
      v4->mPreferredAudioHardwareFormat = @"LPCM";
      v4->mIsPlaying = 0;
      v4->mClientIsPlaying = 0;
      v4->mAudioToolboxIsPlaying = 0;
      v4->mPreferredNumberOfOutputChannels = 0;
      v4->mMutePriority = @"MutePriority_Two";
      v4->mIAmPiP = 0;
      v4->mIsMuted = 0;
      v4->mDoesntActuallyPlayAudio = 0;
      v4->mIsPlayingOutput = 0;
      v4->mClientType = 1;
      v4->mCoreSessionID = [(NSNumber *)[(MXCoreSessionBase *)v4->mCoreSession ID] unsignedLongLongValue];
      v4->mID = FigAtomicIncrement64();
      v4->mSourceFormatInfo = 0;
      v4->mBestAvailableContentType = 0;
      v4->mCurrentlyPlayingSourceFormatInfo = 0;
      v4->mCurrentlyPlayingBufferedAudioFormatInfo = 0;
      v4->mCurrentlyPlayingContentIsEligibleForSpatialization = 0;
      v4->mContentIsEligibleForEnhancedDialogue = 1;
      v4->mIsPlayerMuted = 0;
      v4->mAudioTrackStatus = 1;
      if (dword_1EB75DE40)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v4->mDescription = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"<MXSessionID = %llx, CoreSessionID = %lld>", v4->mID, v4->mCoreSessionID];
      objc_initWeak(location, v4);
      [(MXCoreSession *)v4->mCoreSession mxSessionListAddSession:objc_loadWeak(location)];
      objc_destroyWeak(location);
    }

    else
    {
      v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();

      return 0;
    }
  }

  return v4;
}

- (void)_dealloc
{
  v27[16] = *MEMORY[0x1E69E9840];
  v3 = [(MXCoreSession *)self->mCoreSession mxSessionListAddSession:0];
  mID = self->mID;
  v5 = MEMORY[0x1E696AEC0];
  mCoreSessionID = self->mCoreSessionID;
  clientName = [(MXCoreSessionBase *)self->mCoreSession clientName];
  v8 = @"NO";
  if (self->mIsMuted)
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  if (self->mIsPlaying)
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  if (self->mIAmPiP)
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  if (self->mDoesntActuallyPlayAudio)
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  if (self->mIsPlayingOutput)
  {
    v8 = @"YES";
  }

  [v5 stringWithFormat:@"<MXSessionID: %llx, CoreSessionID = %lld Name = %@, Muted = %@, Playing = %@, MutePriority = %@, PiP = %@, DoesntActuallyPlayAudio = %@, clientType = %x, IsPlayingOutput = %@", mID, mCoreSessionID, clientName, v9, v10, self->mMutePriority, v11, v12, self->mClientType, v8];
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v13 = [(NSString *)self->mMutePriority isEqualToString:@"MutePriority_One"];
  if (v3)
  {
    v15 = 0;
  }

  else
  {
    v15 = v13;
  }

  if (v15 == 1)
  {
    if (dword_1EB75DE40)
    {
      v22 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      v13 = fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    *(v24 + 24) = 1;
  }

  else if (dword_1EB75DE40)
  {
    v22 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v17 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    v13 = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x3052000000;
  v27[3] = __Block_byref_object_copy__9;
  mCoreSession = self->mCoreSession;
  v27[4] = __Block_byref_object_dispose__9;
  v27[5] = mCoreSession;
  v19 = MXGetSerialQueue(v13, v14);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __36__MXSession_InterfaceImpl___dealloc__block_invoke;
  v20[3] = &unk_1E7AEB4F8;
  v20[4] = v27;
  v20[5] = &v23;
  v20[6] = v3;
  MXDispatchAsync("[MXSession(InterfaceImpl) _dealloc]", "MXSession_Impl_Embedded.m", 1812, 0, 0, v19, v20);

  self->mDescription = 0;
  self->mPreferredAudioHardwareFormat = 0;

  self->mMutePriority = 0;
  self->mSourceFormatInfo = 0;

  self->mCurrentlyPlayingSourceFormatInfo = 0;
  self->mCurrentlyPlayingBufferedAudioFormatInfo = 0;

  self->mBestAvailableContentType = 0;
  self->mRecursiveLock = 0;
  _Block_object_dispose(v27, 8);
  _Block_object_dispose(&v23, 8);
}

void __36__MXSession_InterfaceImpl___dealloc__block_invoke(void *a1)
{
  v2 = *(*(a1[4] + 8) + 40);
  if (a1[6])
  {
    [MXSession updateIsPlaying:v2];
    [MXSession updateIsRecording:v2];
    [MXSession updatePreferredAudioHardwareFormat:v2 withMaxOutputChannels:[MXSession getResolvedPreferredNumberOfOutputChannels:v2] andCalledFromDealloc:1];
    if (+[MXSession isCoreSessionFormatValidForMaxOutputChannels:](MXSession, "isCoreSessionFormatValidForMaxOutputChannels:", [v2 preferredHardwareFormat]))
    {
      [MXSession updatePreferredNumberOfOutputChannels:v2];
    }

    [MXSession updatePreferredOutputSampleRate:v2];
    [MXSession updateDoesntActuallyPlayAudio:v2];
    [MXSession updateAudioTrackStatus:v2];
    [MXSession updateIsAnyPlayingContentIneligibleForEnhancedDialogue:v2];
  }

  else
  {
    MXCoreSessionTeardown(*(*(a1[4] + 8) + 40));
  }

  if (*(*(a1[5] + 8) + 24) == 1)
  {

    MX_FeatureFlags_IsMandrakeEverywhereEnabled();
  }
}

- (int)setPropertyForKeyInternal:(id)internal value:(id)value fromPropertiesBatch:(id)batch
{
  v43 = *MEMORY[0x1E69E9840];
  if ([internal isEqualToString:@"BestAvailableContentType"])
  {
    if (!value || (v8 = CFGetTypeID(value), v8 == CFStringGetTypeID()))
    {
      value = [(MXSession *)self setBestAvailableContentType:value];
      goto LABEL_63;
    }

    [MXSession(InterfaceImpl) setPropertyForKeyInternal:v42 value:? fromPropertiesBatch:?];
LABEL_75:
    v19 = v42[0];
    if (!v42[0])
    {
      return v19;
    }

    goto LABEL_64;
  }

  if ([internal isEqualToString:@"ClientType"])
  {
    v10 = CFGetTypeID(value);
    if (v10 != CFNumberGetTypeID())
    {
      [MXSession(InterfaceImpl) setPropertyForKeyInternal:v42 value:? fromPropertiesBatch:?];
      goto LABEL_75;
    }

    valuePtr = 1;
    CFNumberGetValue(value, kCFNumberSInt32Type, &valuePtr);
    if ((valuePtr - 5) <= 0xFFFFFFFB)
    {
      [MXSession(InterfaceImpl) setPropertyForKeyInternal:v42 value:? fromPropertiesBatch:?];
      goto LABEL_75;
    }

    value = [(MXSession *)self setClientType:?];
    goto LABEL_63;
  }

  if ([internal isEqualToString:@"ContentIsEligibleForEnhancedDialogue"])
  {
    if (!value || (v11 = CFGetTypeID(value), v11 != CFBooleanGetTypeID()))
    {
      [MXSession(InterfaceImpl) setPropertyForKeyInternal:v42 value:? fromPropertiesBatch:?];
      goto LABEL_75;
    }

    value = [(MXSession *)self setContentIsEligibleForEnhancedDialogue:FigCFEqual() != 0];
    goto LABEL_63;
  }

  if ([internal isEqualToString:@"CurrentlyPlayingContentIsEligibleForSpatialization"])
  {
    if (!value || (v12 = CFGetTypeID(value), v12 != CFBooleanGetTypeID()))
    {
      [MXSession(InterfaceImpl) setPropertyForKeyInternal:v42 value:? fromPropertiesBatch:?];
      goto LABEL_75;
    }

    value = [(MXSession *)self setCurrentlyPlayingContentIsEligibleForSpatialization:*MEMORY[0x1E695E4D0] == value];
    goto LABEL_63;
  }

  if ([internal isEqualToString:@"CurrentlyPlayingSourceFormatInfo"])
  {
    if (value)
    {
      v13 = CFGetTypeID(value);
      if (v13 != CFDictionaryGetTypeID())
      {
        [MXSession(InterfaceImpl) setPropertyForKeyInternal:v42 value:? fromPropertiesBatch:?];
        goto LABEL_75;
      }
    }

    value = [(MXSession *)self setCurrentlyPlayingSourceFormatInfo:value];
    goto LABEL_63;
  }

  if ([internal isEqualToString:@"CurrentlyPlayingBufferedAudioFormatInfo"])
  {
    if (value)
    {
      v14 = CFGetTypeID(value);
      if (v14 != CFDictionaryGetTypeID())
      {
        [MXSession(InterfaceImpl) setPropertyForKeyInternal:v42 value:? fromPropertiesBatch:?];
        goto LABEL_75;
      }
    }

    value = [(MXSession *)self setCurrentlyPlayingBufferedAudioFormatInfo:value];
    goto LABEL_63;
  }

  if ([internal isEqualToString:@"IAmPiP"])
  {
    if (!value || (v15 = CFGetTypeID(value), v15 != CFBooleanGetTypeID()))
    {
      [MXSession(InterfaceImpl) setPropertyForKeyInternal:v42 value:? fromPropertiesBatch:?];
      goto LABEL_75;
    }

    value = [(MXSession *)self setIAmPiP:*MEMORY[0x1E695E4D0] == value];
    goto LABEL_63;
  }

  if ([internal isEqualToString:@"SourceFormatInfo"])
  {
    if (value)
    {
      v16 = CFGetTypeID(value);
      if (v16 != CFDictionaryGetTypeID())
      {
        [MXSession(InterfaceImpl) setPropertyForKeyInternal:v42 value:? fromPropertiesBatch:?];
        goto LABEL_75;
      }
    }

    value = [(MXSession *)self setSourceFormatInfo:value];
    goto LABEL_63;
  }

  if ([internal isEqualToString:@"AudioToolboxIsPlaying"])
  {
    if (!value || (v17 = CFGetTypeID(value), v17 != CFBooleanGetTypeID()))
    {
      [MXSession(InterfaceImpl) setPropertyForKeyInternal:v42 value:? fromPropertiesBatch:?];
      goto LABEL_75;
    }

    v18 = *MEMORY[0x1E695E4D0] == value;
    if (self->mAudioToolboxIsPlaying == v18)
    {
      return 0;
    }

    self->mAudioToolboxIsPlaying = v18;
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v28 = self->mClientIsPlaying || self->mAudioToolboxIsPlaying;
    v29 = v28;
LABEL_62:
    value = [(MXSession *)self setIsPlaying:v29];
    goto LABEL_63;
  }

  if ([internal isEqualToString:@"DoesntActuallyPlayAudio"])
  {
    if (!value || (v20 = CFGetTypeID(value), v20 != CFBooleanGetTypeID()))
    {
      [MXSession(InterfaceImpl) setPropertyForKeyInternal:v42 value:? fromPropertiesBatch:?];
      goto LABEL_75;
    }

    value = [(MXSession *)self setDoesntActuallyPlayAudio:*MEMORY[0x1E695E4D0] == value];
    goto LABEL_63;
  }

  if ([internal isEqualToString:@"IsPlayerMuted"])
  {
    if (!value || (v21 = CFGetTypeID(value), v21 != CFBooleanGetTypeID()))
    {
      [MXSession(InterfaceImpl) setPropertyForKeyInternal:v42 value:? fromPropertiesBatch:?];
      goto LABEL_75;
    }

    value = [(MXSession *)self setIsPlayerMuted:CFBooleanGetValue(value) != 0];
    goto LABEL_63;
  }

  if ([internal isEqualToString:@"AudioTrackStatus"])
  {
    if (!value || (v23 = CFGetTypeID(value), v23 != CFNumberGetTypeID()))
    {
      [MXSession(InterfaceImpl) setPropertyForKeyInternal:v42 value:? fromPropertiesBatch:?];
      goto LABEL_75;
    }

    value = -[MXSession setAudioTrackStatus:](self, "setAudioTrackStatus:", [value unsignedIntValue]);
    goto LABEL_63;
  }

  if ([internal isEqualToString:@"IsPlaying"])
  {
    if (!value || (v24 = CFGetTypeID(value), v24 != CFBooleanGetTypeID()))
    {
      [MXSession(InterfaceImpl) setPropertyForKeyInternal:v42 value:? fromPropertiesBatch:?];
      goto LABEL_75;
    }

    v25 = *MEMORY[0x1E695E4D0];
    v26 = *MEMORY[0x1E695E4D0] == value;
    if (self->mClientIsPlaying != v26)
    {
      self->mClientIsPlaying = v26;
      if (dword_1EB75DE40)
      {
        v27 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
        mAudioToolboxIsPlaying = 1;
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        if (self->mClientIsPlaying)
        {
          goto LABEL_97;
        }
      }

      else if (v25 == value)
      {
        mAudioToolboxIsPlaying = 1;
LABEL_97:
        v29 = mAudioToolboxIsPlaying;
        goto LABEL_62;
      }

      mAudioToolboxIsPlaying = self->mAudioToolboxIsPlaying;
      goto LABEL_97;
    }

    return 0;
  }

  if ([internal isEqualToString:@"IsPlayingOutput"])
  {
    if (!value || (v32 = CFGetTypeID(value), v32 != CFBooleanGetTypeID()))
    {
      [MXSession(InterfaceImpl) setPropertyForKeyInternal:v42 value:? fromPropertiesBatch:?];
      goto LABEL_75;
    }

    value = -[MXSession setIsPlayingOutput:](self, "setIsPlayingOutput:", [value BOOLValue]);
  }

  else if ([internal isEqualToString:@"IsPlayingVideoOutput"])
  {
    if (!value || (v33 = CFGetTypeID(value), v33 != CFBooleanGetTypeID()))
    {
      [MXSession(InterfaceImpl) setPropertyForKeyInternal:v42 value:? fromPropertiesBatch:?];
      goto LABEL_75;
    }

    value = -[MXSession setIsPlayingVideoOutput:](self, "setIsPlayingVideoOutput:", [value BOOLValue]);
  }

  else
  {
    if ([internal isEqualToString:@"IsRecording"])
    {
      if (!value || (v34 = CFGetTypeID(value), v34 != CFBooleanGetTypeID()))
      {
        [MXSession(InterfaceImpl) setPropertyForKeyInternal:v42 value:? fromPropertiesBatch:?];
        goto LABEL_75;
      }

      v35 = *MEMORY[0x1E695E4D0];
      v36 = *MEMORY[0x1E695E4D0] == value;
      if (v36 != [(MXSession *)self getIsRecording])
      {
        value = [(MXSession *)self setIsRecording:v35 == value];
        goto LABEL_63;
      }

      return 0;
    }

    if ([internal isEqualToString:@"MutePriority"])
    {
      if (!value)
      {
        [MXSession(InterfaceImpl) setPropertyForKeyInternal:v42 value:? fromPropertiesBatch:?];
        goto LABEL_75;
      }

      if (!CFEqual(value, @"MutePriority_One") && !CFEqual(value, @"MutePriority_Two") && !CFEqual(value, @"MutePriority_Three") && !CFEqual(value, @"MutePriority_Four"))
      {
        [MXSession(InterfaceImpl) setPropertyForKeyInternal:v42 value:? fromPropertiesBatch:?];
        goto LABEL_75;
      }

      value = [(MXSession *)self setMutePriority:value];
    }

    else if ([internal isEqualToString:@"PreferredAudioHardwareFormat"])
    {
      if (!value)
      {
        [MXSession(InterfaceImpl) setPropertyForKeyInternal:v42 value:? fromPropertiesBatch:?];
        goto LABEL_75;
      }

      if (!CFEqual(value, @"LPCM") && !CFEqual(value, @"AC-3") && !CFEqual(value, @"MATAtmos"))
      {
        [MXSession(InterfaceImpl) setPropertyForKeyInternal:v42 value:? fromPropertiesBatch:?];
        goto LABEL_75;
      }

      value = [(MXSession *)self setPreferredAudioHardwareFormat:value];
    }

    else if ([internal isEqualToString:@"PreferredNumberOfOutputChannels"])
    {
      if (value)
      {
        v38 = CFGetTypeID(value);
        if (v38 != CFNumberGetTypeID())
        {
          [MXSession(InterfaceImpl) setPropertyForKeyInternal:v42 value:? fromPropertiesBatch:?];
          goto LABEL_75;
        }
      }

      v42[0] = 0;
      CFNumberGetValue(value, kCFNumberSInt32Type, v42);
      value = [(MXSession *)self setPreferredNumberOfOutputChannels:v42[0]];
    }

    else if (([internal isEqualToString:@"PreferredOutputSampleRate"] & 1) != 0 || objc_msgSend(internal, "isEqualToString:", @"PreferredAudioHardwareSampleRate"))
    {
      if (!value || (v39 = CFGetTypeID(value), v39 != CFNumberGetTypeID()))
      {
        [MXSession(InterfaceImpl) setPropertyForKeyInternal:v42 value:? fromPropertiesBatch:?];
        goto LABEL_75;
      }

      [value floatValue];
      value = [(MXSession *)self setPreferredOutputSampleRate:v40];
    }

    else
    {
      value = MXCoreSessionSetProperty(self->mCoreSession, internal);
    }
  }

LABEL_63:
  v19 = value;
  if (value)
  {
LABEL_64:
    v30 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return v19;
}

- (int)setPropertiesInternal:(id)internal usingErrorHandlingStrategy:(unsigned __int8)strategy outPropertiesErrors:(id *)errors
{
  strategyCopy = strategy;
  v63 = *MEMORY[0x1E69E9840];
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v38 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (internal)
  {
    if (dword_1EB75DE40)
    {
      v52 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    CMSMDebugUtility_PrintDictionary(internal);
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v10 = sOrderedMXSessionProperties;
    v11 = [sOrderedMXSessionProperties countByEnumeratingWithState:&v47 objects:v61 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v48;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v48 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v47 + 1) + 8 * i);
          v16 = [internal objectForKey:v15];
          if (v16)
          {
            v59 = v15;
            v60 = v16;
            [v8 addObject:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v60, &v59, 1)}];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v47 objects:v61 count:16];
      }

      while (v12);
    }

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v17 = [internal countByEnumeratingWithState:&v43 objects:v58 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v44;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v44 != v19)
          {
            objc_enumerationMutation(internal);
          }

          v21 = *(*(&v43 + 1) + 8 * j);
          if (([sOrderedMXSessionProperties containsObject:v21] & 1) == 0)
          {
            v56 = v21;
            v57 = [internal objectForKey:v21];
            [v8 addObject:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v57, &v56, 1)}];
          }
        }

        v18 = [internal countByEnumeratingWithState:&v43 objects:v58 count:16];
      }

      while (v18);
    }

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v22 = [v8 countByEnumeratingWithState:&v39 objects:v55 count:16];
    if (v22)
    {
      v23 = v22;
      v36 = 0;
      v24 = *v40;
      do
      {
        for (k = 0; k != v23; ++k)
        {
          if (*v40 != v24)
          {
            objc_enumerationMutation(v8);
          }

          v26 = *(*(&v39 + 1) + 8 * k);
          v27 = objc_autoreleasePoolPush();
          v28 = [objc_msgSend(v26 "allKeys")];
          v29 = [v26 objectForKey:v28];
          if (v29 == [MEMORY[0x1E695DFB0] null])
          {
            v30 = 0;
          }

          else
          {
            v30 = v29;
          }

          v31 = [(MXSession *)self setPropertyForKeyInternal:v28 value:v30 fromPropertiesBatch:internal];
          v53 = v28;
          v54 = [MEMORY[0x1E696AD98] numberWithInt:v31];
          [v38 addObject:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v54, &v53, 1)}];
          if (strategyCopy == 2)
          {
            if (v31)
            {
              v36 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v33, v34, v35);
            }
          }

          else if (strategyCopy == 1 && v31)
          {
            [MXSession(InterfaceImpl) setPropertiesInternal:v27 usingErrorHandlingStrategy:v62 outPropertiesErrors:?];
            goto LABEL_44;
          }

          objc_autoreleasePoolPop(v27);
        }

        v23 = [v8 countByEnumeratingWithState:&v39 objects:v55 count:16];
      }

      while (v23);
    }

    else
    {
      v36 = 0;
    }
  }

  else
  {
    [MXSession(InterfaceImpl) setPropertiesInternal:v62 usingErrorHandlingStrategy:? outPropertiesErrors:?];
LABEL_44:
    v36 = v62[0];
  }

  if (errors)
  {
    *errors = v38;
  }

  else
  {
  }

  return v36;
}

- (int)setOrderedPropertiesInternal:(id)internal usingErrorHandlingStrategy:(unsigned __int8)strategy outPropertiesErrors:(id *)errors
{
  strategyCopy = strategy;
  v37 = *MEMORY[0x1E69E9840];
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  obj = internal;
  errorsCopy = errors;
  if (internal)
  {
    if (dword_1EB75DE40)
    {
      v32 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    CMSMDebugUtility_PrintCollection(obj);
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v11 = [obj countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v11)
    {
      v12 = v11;
      v25 = 0;
      v13 = *v28;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v28 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v27 + 1) + 8 * i);
          v16 = objc_autoreleasePoolPush();
          v17 = [objc_msgSend(v15 "allKeys")];
          v18 = [v15 objectForKey:v17];
          if (v18 == [MEMORY[0x1E695DFB0] null])
          {
            v19 = 0;
          }

          else
          {
            v19 = v18;
          }

          v20 = [(MXSession *)self setPropertyForKeyInternal:v17 value:v19 fromPropertiesBatch:0];
          v33 = v17;
          v34 = [MEMORY[0x1E696AD98] numberWithInt:v20];
          [v9 addObject:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v34, &v33, 1)}];
          if (strategyCopy == 2)
          {
            if (v20)
            {
              v25 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v22, v23, errorsCopy);
            }
          }

          else if (strategyCopy == 1 && v20)
          {
            [MXSession(InterfaceImpl) setOrderedPropertiesInternal:v16 usingErrorHandlingStrategy:v36 outPropertiesErrors:?];
            goto LABEL_26;
          }

          objc_autoreleasePoolPop(v16);
        }

        v12 = [obj countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v12);
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    [MXSession(InterfaceImpl) setOrderedPropertiesInternal:v36 usingErrorHandlingStrategy:? outPropertiesErrors:?];
LABEL_26:
    v25 = v36[0];
  }

  if (errorsCopy)
  {
    *errorsCopy = v9;
  }

  else
  {
  }

  return v25;
}

- (id)copyPropertiesInternal:(id)internal outPropertyErrors:(id *)errors
{
  v24 = *MEMORY[0x1E69E9840];
  v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = [internal countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(internal);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        v12 = objc_autoreleasePoolPush();
        v18 = 0;
        v13 = [(MXSession *)self copyPropertyForKeyInternal:v11 valueOut:&v18];
        if (v13)
        {
          v14 = 1;
        }

        else
        {
          v14 = v18 == 0;
        }

        if (!v14)
        {
          [v17 setObject:? forKey:?];
        }

        [v6 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInt:", v13), v11}];

        objc_autoreleasePoolPop(v12);
      }

      v8 = [internal countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  if (errors)
  {
    *errors = v6;
  }

  else
  {
  }

  return v17;
}

- (int)copyPropertyForKeyInternal:(id)internal valueOut:(id *)out
{
  if (internal)
  {
    if ([internal isEqualToString:@"AudioToolboxIsPlaying"])
    {
      v7 = &OBJC_IVAR___MXSession_mAudioToolboxIsPlaying;
      goto LABEL_4;
    }

    if ([internal isEqualToString:@"BestAvailableContentType"])
    {
      getBestAvailableContentType = [(MXSession *)self getBestAvailableContentType];
      goto LABEL_10;
    }

    if ([internal isEqualToString:@"ContentIsEligibleForEnhancedDialogue"])
    {
      getContentIsEligibleForEnhancedDialogue = [(MXSession *)self getContentIsEligibleForEnhancedDialogue];
      goto LABEL_16;
    }

    if ([internal isEqualToString:@"CurrentlyPlayingContentIsEligibleForSpatialization"])
    {
      getContentIsEligibleForEnhancedDialogue = [(MXSession *)self getCurrentlyPlayingContentIsEligibleForSpatialization];
      goto LABEL_16;
    }

    if ([internal isEqualToString:@"CurrentlyPlayingSourceFormatInfo"])
    {
      getBestAvailableContentType = [(MXSession *)self getCurrentlyPlayingSourceFormatInfo];
      goto LABEL_10;
    }

    if ([internal isEqualToString:@"CurrentlyPlayingBufferedAudioFormatInfo"])
    {
      getBestAvailableContentType = [(MXSession *)self copyCurrentlyPlayingBufferedAudioSourceFormatInfo];
LABEL_25:
      v11 = getBestAvailableContentType;
      LODWORD(getBestAvailableContentType) = 0;
LABEL_26:
      *out = v11;
      return getBestAvailableContentType;
    }

    if ([internal isEqualToString:@"DoesntActuallyPlayAudio"])
    {
      getContentIsEligibleForEnhancedDialogue = [(MXSession *)self getDoesntActuallyPlayAudio];
      goto LABEL_16;
    }

    if ([internal isEqualToString:@"IsPlayerMuted"])
    {
      getContentIsEligibleForEnhancedDialogue = [(MXSession *)self getIsPlayerMuted];
      goto LABEL_16;
    }

    if ([internal isEqualToString:@"AudioTrackStatus"])
    {
      getBestAvailableContentType = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:{-[MXSession getAudioTrackStatus](self, "getAudioTrackStatus")}];
      goto LABEL_25;
    }

    if ([internal isEqualToString:@"MXSessionID"])
    {
      valuePtr = [(MXSession *)self getID];
      v12 = *MEMORY[0x1E695E480];
      v13 = kCFNumberSInt64Type;
LABEL_35:
      getBestAvailableContentType = CFNumberCreate(v12, v13, &valuePtr);
      goto LABEL_25;
    }

    if ([internal isEqualToString:@"IsMuted"])
    {
      getContentIsEligibleForEnhancedDialogue = [(MXSession *)self getIsMuted];
LABEL_16:
      v8 = MEMORY[0x1E695E4D0];
      if (!getContentIsEligibleForEnhancedDialogue)
      {
        v8 = MEMORY[0x1E695E4C0];
      }

      goto LABEL_18;
    }

    if ([internal isEqualToString:@"IsPlaying"])
    {
      v7 = &OBJC_IVAR___MXSession_mClientIsPlaying;
      goto LABEL_4;
    }

    if ([internal isEqualToString:@"IsPlayingOutput"])
    {
      v7 = &OBJC_IVAR___MXSession_mIsPlayingOutput;
      goto LABEL_4;
    }

    if ([internal isEqualToString:@"IsPlayingVideoOutput"])
    {
      v7 = &OBJC_IVAR___MXSession_mIsPlayingVideoOutput;
      goto LABEL_4;
    }

    if ([internal isEqualToString:@"IsRecording"])
    {
      v7 = &OBJC_IVAR___MXSession_mIsRecording;
LABEL_4:
      if (*(&self->super.isa + *v7))
      {
        v8 = MEMORY[0x1E695E4D0];
      }

      else
      {
        v8 = MEMORY[0x1E695E4C0];
      }

LABEL_18:
      getBestAvailableContentType = *v8;
LABEL_19:
      *out = getBestAvailableContentType;
LABEL_20:
      CFRetain(getBestAvailableContentType);
      LODWORD(getBestAvailableContentType) = 0;
      return getBestAvailableContentType;
    }

    if ([internal isEqualToString:@"PreferredAudioHardwareFormat"])
    {
      getBestAvailableContentType = [(MXSession *)self getPreferredAudioHardwareFormat];
      goto LABEL_19;
    }

    if ([internal isEqualToString:@"PreferredNumberOfOutputChannels"])
    {
      getPreferredNumberOfOutputChannels = [(MXSession *)self getPreferredNumberOfOutputChannels];
LABEL_50:
      LODWORD(valuePtr) = getPreferredNumberOfOutputChannels;
      v12 = *MEMORY[0x1E695E480];
      v13 = kCFNumberSInt32Type;
      goto LABEL_35;
    }

    if (([internal isEqualToString:@"PreferredOutputSampleRate"] & 1) != 0 || objc_msgSend(internal, "isEqualToString:", @"PreferredAudioHardwareSampleRate"))
    {
      [(MXSession *)self getPreferredOutputSampleRate];
      valuePtr = v15;
      v12 = *MEMORY[0x1E695E480];
      v13 = kCFNumberFloat64Type;
      goto LABEL_35;
    }

    if ([internal isEqualToString:@"SourceFormatInfo"])
    {
      getBestAvailableContentType = [(MXSession *)self getSourceFormatInfo];
LABEL_10:
      *out = getBestAvailableContentType;
      if (!getBestAvailableContentType)
      {
        return getBestAvailableContentType;
      }

      goto LABEL_20;
    }

    if ([internal isEqualToString:@"AudioQueueOptions"])
    {
      valuePtr = 0;
      LODWORD(getBestAvailableContentType) = MXCoreSessionCopyProperty(self->mCoreSession, internal, *MEMORY[0x1E695E480], &valuePtr);
      v11 = valuePtr;
      goto LABEL_26;
    }

    if ([internal isEqualToString:@"ConsolidatedSourceFormatInfo"])
    {
      getBestAvailableContentType = CMSUtility_CopyConsolidatedSourceFormatInfo(self->mCoreSession);
      goto LABEL_25;
    }

    if ([internal isEqualToString:@"TestOnly_ClientType"])
    {
      getPreferredNumberOfOutputChannels = [(MXSession *)self getClientType];
      goto LABEL_50;
    }

    mCoreSession = self->mCoreSession;
    v17 = *MEMORY[0x1E695E480];

    LODWORD(getBestAvailableContentType) = MXCoreSessionCopyProperty(mCoreSession, internal, v17, out);
  }

  else
  {
    LODWORD(getBestAvailableContentType) = -15682;
  }

  return getBestAvailableContentType;
}

+ (BOOL)isSessionMuted:(unint64_t)muted
{
  v8 = *MEMORY[0x1E69E9840];
  +[MXInitialization waitUntilMXIsFullyInitialized];
  v4 = [MXSession copyMXSessionForID:muted];
  getIsMuted = [v4 getIsMuted];
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return getIsMuted;
}

- (int)setProperties:(id)properties usingErrorHandlingStrategy:(unsigned __int8)strategy outPropertiesErrors:(id *)errors
{
  strategyCopy = strategy;
  v31 = *MEMORY[0x1E69E9840];
  +[MXInitialization waitUntilMXIsFullyInitialized];
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = [properties countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v9)
  {
    v10 = *v23;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(properties);
        }

        v12 = *(*(&v22 + 1) + 8 * i);
        if (![MXSession isNonSerializedSetProperty:v12])
        {
          isActive = [MXSession isNonSerializedSetPropertyWhenSessionIsInactive:v12];
          if (!isActive || (isActive = objc_msgSend_isActive([(MXSession *)self getCoreSession]), (isActive & 1) != 0))
          {
            v16 = MXGetSerialQueue(isActive, v14);
            v20[0] = MEMORY[0x1E69E9820];
            v20[1] = 3221225472;
            v20[2] = __74__MXSession_setProperties_usingErrorHandlingStrategy_outPropertiesErrors___block_invoke;
            v20[3] = &unk_1E7AE70F8;
            v20[4] = self;
            v20[5] = properties;
            v21 = strategyCopy;
            v20[6] = &v26;
            v20[7] = errors;
            MXDispatchAsyncAndWait("[MXSession setProperties:usingErrorHandlingStrategy:outPropertiesErrors:]", "MXSession_ObjCInterface.m", 78, 0, 0, v16, v20);
            if (errors)
            {
              v17 = *errors;
            }

            goto LABEL_14;
          }
        }
      }

      v9 = [properties countByEnumeratingWithState:&v22 objects:v30 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v15 = [(MXSession *)self setPropertiesInternal:properties usingErrorHandlingStrategy:strategyCopy outPropertiesErrors:errors];
  *(v27 + 6) = v15;
LABEL_14:
  v18 = *(v27 + 6);
  _Block_object_dispose(&v26, 8);
  return v18;
}

id __74__MXSession_setProperties_usingErrorHandlingStrategy_outPropertiesErrors___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _setProperties:*(a1 + 40) usingErrorHandlingStrategy:*(a1 + 64) outPropertiesErrors:*(a1 + 56)];
  v3 = *(a1 + 56);
  *(*(*(a1 + 48) + 8) + 24) = result;
  if (v3)
  {
    v4 = *v3;

    return v4;
  }

  return result;
}

- (int)setOrderedProperties:(id)properties usingErrorHandlingStrategy:(unsigned __int8)strategy outPropertiesErrors:(id *)errors
{
  strategyCopy = strategy;
  v31 = *MEMORY[0x1E69E9840];
  +[MXInitialization waitUntilMXIsFullyInitialized];
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = [properties countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v9)
  {
    v10 = *v23;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(properties);
        }

        v12 = [objc_msgSend(*(*(&v22 + 1) + 8 * i) "allKeys")];
        if (![MXSession isNonSerializedSetProperty:v12])
        {
          isActive = [MXSession isNonSerializedSetPropertyWhenSessionIsInactive:v12];
          if (!isActive || (isActive = objc_msgSend_isActive([(MXSession *)self getCoreSession]), (isActive & 1) != 0))
          {
            v16 = MXGetSerialQueue(isActive, v14);
            v20[0] = MEMORY[0x1E69E9820];
            v20[1] = 3221225472;
            v20[2] = __81__MXSession_setOrderedProperties_usingErrorHandlingStrategy_outPropertiesErrors___block_invoke;
            v20[3] = &unk_1E7AE70F8;
            v20[4] = self;
            v20[5] = properties;
            v21 = strategyCopy;
            v20[6] = &v26;
            v20[7] = errors;
            MXDispatchAsyncAndWait("[MXSession setOrderedProperties:usingErrorHandlingStrategy:outPropertiesErrors:]", "MXSession_ObjCInterface.m", 120, 0, 0, v16, v20);
            if (errors)
            {
              v17 = *errors;
            }

            goto LABEL_14;
          }
        }
      }

      v9 = [properties countByEnumeratingWithState:&v22 objects:v30 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v15 = [(MXSession *)self setOrderedPropertiesInternal:properties usingErrorHandlingStrategy:strategyCopy outPropertiesErrors:errors];
  *(v27 + 6) = v15;
LABEL_14:
  v18 = *(v27 + 6);
  _Block_object_dispose(&v26, 8);
  return v18;
}

id __81__MXSession_setOrderedProperties_usingErrorHandlingStrategy_outPropertiesErrors___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _setOrderedProperties:*(a1 + 40) usingErrorHandlingStrategy:*(a1 + 64) outPropertiesErrors:*(a1 + 56)];
  v3 = *(a1 + 56);
  *(*(*(a1 + 48) + 8) + 24) = result;
  if (v3)
  {
    v4 = *v3;

    return v4;
  }

  return result;
}

- (id)copyProperties:(id)properties outPropertyErrors:(id *)errors
{
  v29 = *MEMORY[0x1E69E9840];
  +[MXInitialization waitUntilMXIsFullyInitialized];
  v22 = 0;
  v23 = &v22;
  v24 = 0x3052000000;
  v25 = __Block_byref_object_copy__12;
  v26 = __Block_byref_object_dispose__12;
  v27 = 0;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = [properties countByEnumeratingWithState:&v18 objects:v28 count:16];
  if (v7)
  {
    v8 = *v19;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(properties);
        }

        v10 = [MXSession isNonSerializedCopyProperty:*(*(&v18 + 1) + 8 * v9)];
        if ((v10 & 1) == 0)
        {
          v13 = MXGetSerialQueue(v10, v11);
          v17[0] = MEMORY[0x1E69E9820];
          v17[1] = 3221225472;
          v17[2] = __46__MXSession_copyProperties_outPropertyErrors___block_invoke;
          v17[3] = &unk_1E7AE70D0;
          v17[4] = self;
          v17[5] = properties;
          v17[6] = &v22;
          v17[7] = errors;
          MXDispatchAsyncAndWait("[MXSession copyProperties:outPropertyErrors:]", "MXSession_ObjCInterface.m", 160, 0, 0, v13, v17);
          if (errors)
          {
            v14 = *errors;
          }

          goto LABEL_12;
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [properties countByEnumeratingWithState:&v18 objects:v28 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v12 = [(MXSession *)self copyPropertiesInternal:properties outPropertyErrors:errors];
  v23[5] = v12;
LABEL_12:
  v15 = v23[5];
  _Block_object_dispose(&v22, 8);
  return v15;
}

id __46__MXSession_copyProperties_outPropertyErrors___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _copyProperties:*(a1 + 40) outPropertyErrors:*(a1 + 56)];
  *(*(*(a1 + 48) + 8) + 40) = result;
  v3 = *(a1 + 56);
  if (v3)
  {
    v4 = *v3;

    return v4;
  }

  return result;
}

- (int)setPropertyForKey:(id)key value:(id)value
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  if (+[MXSession isNonSerializedSetProperty:](MXSession, "isNonSerializedSetProperty:") || (isActive = +[MXSession isNonSerializedSetPropertyWhenSessionIsInactive:](MXSession, "isNonSerializedSetPropertyWhenSessionIsInactive:", key), isActive) && (isActive = objc_msgSend_isActive(-[MXSession getCoreSession](self, "getCoreSession")), (isActive & 1) == 0) || (IsSessionBasedMutingEnabled = MX_FeatureFlags_IsSessionBasedMutingEnabled(isActive, v9), IsSessionBasedMutingEnabled) && (IsSessionBasedMutingEnabled = [key isEqualToString:@"IsRecordingMuted"], IsSessionBasedMutingEnabled))
  {
    v7 = [(MXSession *)self setPropertyForKeyInternal:key value:value fromPropertiesBatch:0];
    *(v16 + 6) = v7;
  }

  else
  {
    v12 = MXGetSerialQueue(IsSessionBasedMutingEnabled, v11);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __37__MXSession_setPropertyForKey_value___block_invoke;
    v14[3] = &unk_1E7AE70A8;
    v14[4] = self;
    v14[5] = key;
    v14[6] = value;
    v14[7] = &v15;
    MXDispatchAsyncAndWait("[MXSession setPropertyForKey:value:]", "MXSession_ObjCInterface.m", 268, 0, 0, v12, v14);
    v7 = *(v16 + 6);
  }

  _Block_object_dispose(&v15, 8);
  return v7;
}

void *__37__MXSession_setPropertyForKey_value___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _setPropertyForKey:*(a1 + 40) value:*(a1 + 48)];
  *(*(*(a1 + 56) + 8) + 24) = result;
  return result;
}

- (int)copyPropertyForKey:(id)key valueOut:(id *)out
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v7 = [MXSession isNonSerializedCopyProperty:?];
  if (v7)
  {
    v9 = [(MXSession *)self copyPropertyForKeyInternal:key valueOut:out];
    *(v14 + 6) = v9;
  }

  else
  {
    v10 = MXGetSerialQueue(v7, v8);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __41__MXSession_copyPropertyForKey_valueOut___block_invoke;
    v12[3] = &unk_1E7AE70D0;
    v12[4] = self;
    v12[5] = key;
    v12[6] = &v13;
    v12[7] = out;
    MXDispatchAsyncAndWait("[MXSession copyPropertyForKey:valueOut:]", "MXSession_ObjCInterface.m", 297, 0, 0, v10, v12);
    v9 = *(v14 + 6);
  }

  _Block_object_dispose(&v13, 8);
  return v9;
}

void *__41__MXSession_copyPropertyForKey_valueOut___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _copyPropertyForKey:*(a1 + 40) valueOut:*(a1 + 56)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (void)dealloc
{
  v3 = objc_autoreleasePoolPush();
  [(MXSession *)self _dealloc];
  v4.receiver = self;
  v4.super_class = MXSession;
  [(MXSession *)&v4 dealloc];
  objc_autoreleasePoolPop(v3);
}

- (int)setMutePriority:(id)priority
{
  v35 = *MEMORY[0x1E69E9840];
  getMutePriority = [(MXSession *)self getMutePriority];
  if ([priority isEqualToString:getMutePriority])
  {
    return 0;
  }

  IsAnyMXSessionPlayingWithEachMutePriority = CMSMUtility_IsAnyMXSessionPlayingWithEachMutePriority();
  if (IsAnyMXSessionPlayingWithEachMutePriority && [priority isEqualToString:@"MutePriority_One"])
  {
    OUTLINED_FUNCTION_4_12();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, BYTE3(v31)))
    {
      v9 = HIDWORD(v31);
    }

    else
    {
      v9 = HIDWORD(v31) & 0xFFFFFFFE;
    }

    if (v9)
    {
      OUTLINED_FUNCTION_1_5();
      OUTLINED_FUNCTION_8_6(v10, v11, v34, v12, &dword_1B17A2000, v13, v14, "-MXSession- %s: ERROR! MXSession with ID %lld trying to set MutePriority to MutePriority_One while there is another MXSession present with MutePriority_One.");
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [(NSRecursiveLock *)self->mRecursiveLock lock];

  self->mMutePriority = priority;
  [(NSRecursiveLock *)self->mRecursiveLock unlock];
  if (dword_1EB75DE40)
  {
    OUTLINED_FUNCTION_4_12();
    v22 = OUTLINED_FUNCTION_2_15(qword_1EB75DE38, v15, v16, v17, v18, v19, v20, v21, v28, v29, v30, v31, SBYTE2(v31), SBYTE3(v31), SBYTE4(v31));
    if (os_log_type_enabled(v22, type))
    {
      v23 = v33;
    }

    else
    {
      v23 = v33 & 0xFFFFFFFE;
    }

    if (v23)
    {
      [(MXSession *)self info];
      OUTLINED_FUNCTION_1_5();
      OUTLINED_FUNCTION_8_6(v23, v24, v34, v25, &dword_1B17A2000, v26, v27, "-MXSession- %s: %{public}@ setting mutePriority to %{public}@ from existing mutePriority %{public}@");
    }

    OUTLINED_FUNCTION_0_0();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (([getMutePriority isEqualToString:@"MutePriority_One"] & 1) == 0 && !objc_msgSend(getMutePriority, "isEqualToString:", @"MutePriority_Three"))
  {
    return MX_FeatureFlags_IsMandrakeEverywhereEnabled();
  }

  if (![priority isEqualToString:@"MutePriority_Two"])
  {
    return MX_FeatureFlags_IsMandrakeEverywhereEnabled();
  }

  if ((IsAnyMXSessionPlayingWithEachMutePriority & 0xFF00) == 0)
  {
    return MX_FeatureFlags_IsMandrakeEverywhereEnabled();
  }

  if (!self->mIsPlaying)
  {
    return MX_FeatureFlags_IsMandrakeEverywhereEnabled();
  }

  result = cmsBeginInterruptionGuts(self->mCoreSession, 0, 2);
  if (!result)
  {
    return MX_FeatureFlags_IsMandrakeEverywhereEnabled();
  }

  return result;
}

- (int)setIsPlaying:(BOOL)playing
{
  v54 = *MEMORY[0x1E69E9840];
  if (self->mIsPlaying == playing)
  {
    return 0;
  }

  playingCopy = playing;
  if (![+[MXSessionManager isSpeechDetectCategory:"isSpeechDetectCategory:"]
  {
    self->mIsPlaying = playingCopy;
    if (dword_1EB75DE40)
    {
      OUTLINED_FUNCTION_4_12();
      v26 = OUTLINED_FUNCTION_2_15(qword_1EB75DE38, v19, v20, v21, v22, v23, v24, v25, v40, v42, v44, *v46, v46[2], v46[3], v46[4]);
      if (OUTLINED_FUNCTION_7_7(v26, v27, v28, v29, v30, v31, v32, v33, v41, v43, v45, v47, v48, typea, v52))
      {
        v34 = v3;
      }

      else
      {
        v34 = v3 & 0xFFFFFFFE;
      }

      if (v34)
      {
        [(MXSession *)self getClientTypeAsString];
        [(MXCoreSessionBase *)self->mCoreSession clientName];
        OUTLINED_FUNCTION_1_5();
        OUTLINED_FUNCTION_12(v34, v35, v53, v36, &dword_1B17A2000, v37, v38, "-MXSession- %s: Setting mIsPlaying to %{public}@ for MXSession(%llx) of type %{public}@ belonging to CoreSession(%{public}@).");
      }

      OUTLINED_FUNCTION_0_0();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      if (self->mIsPlaying)
      {
        goto LABEL_22;
      }
    }

    else if (playingCopy)
    {
LABEL_22:
      result = [OUTLINED_FUNCTION_5_9() updateDoesntActuallyPlayAudio:?];
      if (result)
      {
        return result;
      }

      result = [OUTLINED_FUNCTION_5_9() updateIsPlaying:?];
      if (result)
      {
        return result;
      }

      [(MXSession *)self updateBadgeType];
LABEL_25:
      [OUTLINED_FUNCTION_5_9() updateIsAnyPlayingContentIneligibleForEnhancedDialogue:?];
      CMSMNotificationUtility_PostSourceFormatInfoDidChange();
      return 0;
    }

    result = [OUTLINED_FUNCTION_5_9() updateIsPlaying:?];
    if (result)
    {
      return result;
    }

    result = [OUTLINED_FUNCTION_5_9() updateDoesntActuallyPlayAudio:?];
    if (result)
    {
      return result;
    }

    -[MXSession setCurrentlyPlayingBufferedAudioFormatInfo:](self, "setCurrentlyPlayingBufferedAudioFormatInfo:", [MEMORY[0x1E695DF20] dictionary]);
    goto LABEL_25;
  }

  if (dword_1EB75DE40)
  {
    OUTLINED_FUNCTION_4_12();
    v13 = OUTLINED_FUNCTION_2_15(qword_1EB75DE38, v6, v7, v8, v9, v10, v11, v12, v40, v42, v44, *v46, v46[2], v46[3], v46[4]);
    if (os_log_type_enabled(v13, type))
    {
      v14 = v51;
    }

    else
    {
      v14 = v51 & 0xFFFFFFFE;
    }

    if (v14)
    {
      [(MXCoreSessionBase *)self->mCoreSession clientName];
      OUTLINED_FUNCTION_1_5();
      OUTLINED_FUNCTION_12(v14, v15, v53, v16, &dword_1B17A2000, v17, v18, "-MXSession- %s: Client %{public}@ is not allowed to play because it has SpeechDetect audio category");
    }

    OUTLINED_FUNCTION_0_0();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return -15685;
}

- (int)setDoesntActuallyPlayAudio:(BOOL)audio
{
  v40 = *MEMORY[0x1E69E9840];
  if (self->mDoesntActuallyPlayAudio == audio)
  {
    return 0;
  }

  self->mDoesntActuallyPlayAudio = audio;
  if (dword_1EB75DE40)
  {
    OUTLINED_FUNCTION_4_12();
    v13 = OUTLINED_FUNCTION_2_15(qword_1EB75DE38, v6, v7, v8, v9, v10, v11, v12, v28, v30, v32, *v34, v34[2], v34[3], v34[4]);
    if (OUTLINED_FUNCTION_7_7(v13, v14, v15, v16, v17, v18, v19, v20, v29, v31, v33, v35, v36, v37, v38))
    {
      v21 = v3;
    }

    else
    {
      v21 = v3 & 0xFFFFFFFE;
    }

    if (v21)
    {
      [(MXSession *)self getClientTypeAsString];
      [(MXCoreSessionBase *)self->mCoreSession clientName];
      OUTLINED_FUNCTION_1_5();
      OUTLINED_FUNCTION_12(v21, v22, v39, v23, &dword_1B17A2000, v24, v25, "-MXSession- %s: MXSession(%llx) of type %{public}@ for CoreSession %{public}@ setting DoesntActuallyPlayAudio = %{public}@");
    }

    OUTLINED_FUNCTION_0_0();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v26 = [MXSession updateDoesntActuallyPlayAudio:self->mCoreSession];
  if (v26)
  {
    return v26;
  }

  if (self->mDoesntActuallyPlayAudio || !self->mIsPlaying)
  {
    IsMandrakeEverywhereEnabled = 0;
  }

  else
  {
    IsMandrakeEverywhereEnabled = MX_FeatureFlags_IsMandrakeEverywhereEnabled();
  }

  [MXSession updateIsAnyPlayingContentIneligibleForEnhancedDialogue:self->mCoreSession];
  return IsMandrakeEverywhereEnabled;
}

+ (int)updateIsPlaying:(id)playing
{
  v65 = *MEMORY[0x1E69E9840];
  copyMXSessionList = [playing copyMXSessionList];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v8 = [copyMXSessionList countByEnumeratingWithState:&v47 objects:v64 count:16];
  if (v8)
  {
    v9 = v8;
    OUTLINED_FUNCTION_6_10();
    v10 = *v48;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v48 != v10)
        {
          objc_enumerationMutation(copyMXSessionList);
        }

        v12 = *(*(&v47 + 1) + 8 * i);
        if ([v12 getIsPlaying])
        {
          v13 = v12[10];
          switch(v13)
          {
            case 2:
              v6 = 1;
              break;
            case 4:
              v4 = 1;
              break;
            case 3:
              v5 = 1;
              break;
          }

          v3 = 1;
        }
      }

      v9 = [copyMXSessionList countByEnumeratingWithState:&v47 objects:v64 count:16];
    }

    while (v9);
  }

  else
  {
    OUTLINED_FUNCTION_6_10();
  }

  playingCopy = playing;
  if (dword_1EB75DE40)
  {
    OUTLINED_FUNCTION_4_12();
    v22 = OUTLINED_FUNCTION_2_15(qword_1EB75DE38, v15, v16, v17, v18, v19, v20, v21, v40, v41, playing, *v44, v44[2], v44[3], v44[4]);
    if (os_log_type_enabled(v22, type))
    {
      v23 = v46;
    }

    else
    {
      v23 = v46 & 0xFFFFFFFE;
    }

    if (v23)
    {
      clientName = [playingCopy clientName];
      v25 = @"NO";
      v51 = 136316418;
      v52 = "+[MXSession(InternalUse) updateIsPlaying:]";
      if (v3)
      {
        v26 = @"YES";
      }

      else
      {
        v26 = @"NO";
      }

      v54 = clientName;
      v53 = 2114;
      if (v6)
      {
        v27 = @"YES";
      }

      else
      {
        v27 = @"NO";
      }

      v55 = 2114;
      v56 = v26;
      if (v5)
      {
        v28 = @"YES";
      }

      else
      {
        v28 = @"NO";
      }

      v57 = 2114;
      if (v4)
      {
        v25 = @"YES";
      }

      v58 = v27;
      v59 = 2114;
      v60 = v28;
      v61 = 2114;
      v62 = v25;
      LODWORD(v42) = 62;
      _os_log_send_and_compose_impl(v23, 0, v63, 128, &dword_1B17A2000, v22, type, "-MXSession- %s: Setting SomeMXSessionIsPlaying on CoreSession[%{public}@] to: %{public}@; AudioSessionPlaying : %{public}@, FigPlayerPlaying: %{public}@, FigSBARPlaying : %{public}@", &v51, v42);
    }

    OUTLINED_FUNCTION_0_0();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  IsMandrakeEverywhereEnabled = MXCoreSessionSetProperty(playingCopy, @"SomeMXSessionIsPlaying");
  if (IsMandrakeEverywhereEnabled || (v3 & 1) != 0 && (IsMandrakeEverywhereEnabled = MX_FeatureFlags_IsMandrakeEverywhereEnabled()) != 0)
  {
    v38 = IsMandrakeEverywhereEnabled;
  }

  else
  {
    CMSMNotificationUtility_PostSomeSessionIsPlayingDidChange();
    if (CMSUtility_IsAudioCategoryPrimary(playingCopy, v30, v31, v32, v33, v34, v35, v36))
    {
      CMSMNotificationUtility_PostSomePrimaryAudioCategoryIsPlayingDidChange(playingCopy);
      CMSMNotificationUtility_PostSomeOtherPrimaryAudioCategoryIsPlayingDidChange(playingCopy, v37);
    }

    v38 = 0;
  }

  return v38;
}

@end