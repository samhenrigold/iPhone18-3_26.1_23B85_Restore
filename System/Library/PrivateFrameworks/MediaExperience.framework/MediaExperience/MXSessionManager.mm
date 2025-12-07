@interface MXSessionManager
+ (BOOL)getSilentModeStateFromDisk;
+ (id)copyDefaultMusicAppFromPlist;
+ (id)sharedInstance;
- (BOOL)areBothBudsInEarForA2DPPort;
- (BOOL)areDuckerAndDuckeePlayingOnDifferentVADs:(id)ds duckerSession:(id)session;
- (BOOL)areSessionsWithAudioModesActive:(id)active;
- (BOOL)canSessionsCoexistDueToIndependentRecording:(id)recording victim:(id)victim;
- (BOOL)canSessionsCoexistDueToMediaMultitasking:(id)multitasking victim:(id)victim;
- (BOOL)canSessionsCoexistDueToOutputMuting:(id)muting victim:(id)victim;
- (BOOL)doesActiveSessionHaveInput;
- (BOOL)doesAnyActiveSessionExistWhichPrefersToBeInterruptedByNextRecordingClient:(id)client;
- (BOOL)doesSessionPreferInterruptionOnRouteDisconnect:(id)disconnect;
- (BOOL)duckSessionForVoiceOverIfNeeded:(id)needed voiceOverSession:(id)session;
- (BOOL)getQuiesceableWiredPortAutoRouteOnConnectPreference:(unsigned int)preference;
- (BOOL)isAirPlaySession:(id)session;
- (BOOL)isAnExistingDuckingSource:(id)source;
- (BOOL)isAnyOtherUnduckedPlayingSessionMatchingVolumeRampCategory:(id)category;
- (BOOL)isAnySessionWithMappedVolumeCategoryPlaying:(id)playing;
- (BOOL)isAtleastOneBudNotInEarForA2DPPort;
- (BOOL)isAudioCategoryMuteable:(id)muteable;
- (BOOL)isAuditTokenEqual:(id *)equal compareTo:(id *)to;
- (BOOL)isAuditTokenValid:(id *)valid;
- (BOOL)isBTRouteSameDeviceWithDifferentProfile:(unsigned int)profile newNumRoutes:(unsigned int)routes oldRouteTypes:(id)types newRouteTypes:(id)routeTypes oldRouteIdentifiers:(id)identifiers newRouteIdentifiers:(id)routeIdentifiers;
- (BOOL)isCurrentPortTypeMuteable:(unsigned int)muteable;
- (BOOL)isCurrentRouteHeadphoneAndInEar:(unsigned int *)ear;
- (BOOL)isLongFormVideoApp:(id)app;
- (BOOL)isMixableSessionBeingInterruptedByNextRecordingClient:(id)client victim:(id)victim;
- (BOOL)isPIDAllowedToBeNowPlayingApp:(int)app;
- (BOOL)isPotentialSharePlayMediaSessionActive;
- (BOOL)isSessionAllowedToStartRecordingTemporarily:(id)temporarily;
- (BOOL)isSessionConfigurationEligibleForOutputMuting:(id)muting audioMode:(id)mode;
- (BOOL)isSessionDucked:(id)ducked duckingSource:(id)source;
- (BOOL)isSessionWithAudioCategoryActive:(id)active;
- (BOOL)isSessionWithAudioModeActive:(id)active;
- (BOOL)isSessionWithAudioModePlaying:(id)playing;
- (BOOL)isSessionWithAudioModeRecording:(id)recording;
- (BOOL)isSiriSessionActive:(BOOL *)active andMixable:(BOOL *)mixable;
- (BOOL)isSiriSessionActiveAndRoutedToSiriOutputVAD;
- (BOOL)isSmartRoutingEligibleSessionAvailable;
- (BOOL)isSpeechDetectCategory:(id)category;
- (BOOL)isVADIDRoutedToOutputPortType:(unsigned int)type portType:(unsigned int)portType;
- (BOOL)isVoiceOverDuckingActive:(id)active outDuckScalar:(float *)scalar outDuckFadeDuration:(float *)duration;
- (BOOL)sessionCanBecomeSharePlayMedia:(id)media;
- (BOOL)sessionUtilizesIndependentRecordingOnly:(id)only;
- (BOOL)shouldAllowBluetoothAccessoryToRequestAudioRoute;
- (BOOL)shouldDuckSessionForSpeakerVolumeLimit:(id)limit;
- (BOOL)shouldDuckSessionForVoiceOver:(id)over;
- (BOOL)shouldSetDeviceFormatAndSampleRate:(id)rate;
- (BOOL)shouldSkipDuckingForVoiceOver:(id)over inActiveVoiceOverSession:(id)session;
- (BOOL)updateDuckVolumeForDucker:(id)ducker duckVolume:(float)volume duckFadeDuration:(float)duration;
- (BOOL)updateUnduckVolume:(id)volume duckerSession:(id)session unduckVolume:(float)unduckVolume unduckFadeDuration:(float)duration;
- (BOOL)updateUnduckVolumeForDucker:(id)ducker unduckVolume:(float)volume unduckFadeDuration:(float)duration;
- (BOOL)voiceOverSessionWantsRelativeDucking:(id)ducking;
- (BOOL)wombatEnabled;
- (MXSessionManager)init;
- (NSArray)longFormVideoApps;
- (NSArray)recordingClientPIDs;
- (NSDictionary)devicesSampleRates;
- (NSString)appAllowedToInitiateRecordingTemporarily;
- (NSString)systemMirroringRoutingContextUUID;
- (float)duckScalarForVoiceOver;
- (float)getDuckVolumeForBlurEffect:(id)effect duckeeSession:(id)session;
- (float)getSleepDurationForDuckFadeDuration:(float)duration;
- (id)copyActiveCoreSessionControllingRouting;
- (id)copyActiveSessionWithAudioCategory:(id)category andAudioMode:(id)mode;
- (id)copyActiveSessionsInfoForAdditiveRouting;
- (id)copyActiveVoiceOverSession;
- (id)copyAudioBehaviorForCategory:(id)category mode:(id)mode;
- (id)copyCoreSessionsShadowingAudioSession:(unsigned int)session withOptions:(unsigned int)options;
- (id)copyDisplayIDForActiveCarPlayVideoSession;
- (id)copyEvaluatedBadgeType:(id)type;
- (id)copyHighestPriorityActiveSession:(id)session deviceIdentifier:(id)identifier;
- (id)copyInterruptedSessions:(id)sessions;
- (id)copyMXCoreSessionList;
- (id)copyPhoneCallBehaviorRecordingSession;
- (id)copyPotentialActiveSharePlayMediaSession;
- (id)copySessionEligibleForNowPlayingAppConsideration:(int)consideration;
- (id)copySessionToBeMuted:(id *)muted;
- (id)copySessionWithAudioSessionID:(unsigned int)d;
- (id)copySessionWithDisplayID:(id)d;
- (id)copySessionWithPID:(int)d;
- (id)copySessionsThatUserIntendsToUnmute:(unsigned int)unmute;
- (id)copySessionsWithAuditToken:(id *)token;
- (id)copySpeechDetectSession;
- (id)copyVoiceOverSession;
- (id)getAvailableAudioDestination:(id)destination;
- (id)getBluetoothCustomizedAlternateCategory:(id)category enableBluetooth:(BOOL)bluetooth;
- (id)getCleanupSessionAssertionReasonString:(int64_t)string;
- (id)getClientPriorityAsString:(unsigned int)string;
- (id)getDefaultBuiltInCustomizedAlternateCategory:(id)category defaultBuiltInRoute:(id)route;
- (id)getDisallowedRecordingReasonString:(unint64_t)string;
- (id)getDuckingSource:(id)source duckerSession:(id)session;
- (id)getProjectedAudioDestinationForCategory:(id)category mode:(id)mode;
- (id)getRouteSharingPolicyAsString:(int)string;
- (id)getShadowingAudioSessionOptionsAsString:(unsigned int)string;
- (id)getSilentModeClientTypeAsString:(unsigned int)string;
- (id)getUncustomizedCategory:(id)category;
- (int)clearUplinkMutedCache;
- (int)getMuteState:(id *)state outMuteValue:(BOOL *)value;
- (int)getSessionPriority:(MXSessionPlayingInfo *)priority forTipi:(BOOL)tipi;
- (int)getVolumeButtonDelta:(id)delta outVolumeDelta:(float *)volumeDelta;
- (int)prepareSessionActivationBeforeACQDispatch:(id)dispatch;
- (int)updateDuckToLevelScalarSetByClient:(BOOL)client session:(id)session newLevel:(float)level newLevelSetByClient:(BOOL)byClient currentLevel:(float)currentLevel currentLevelSetByClient:(BOOL)setByClient;
- (int)updateMuteState:(id *)state muteValue:(id)value;
- (unint64_t)addSessionThatWantsToSuspendNeroScreenMirroring:(id)mirroring;
- (unint64_t)mxCoreSessionListAddSession:(id)session;
- (unint64_t)mxCoreSessionListRemoveSession:(id)session;
- (unint64_t)removeSessionThatWantsToSuspendNeroScreenMirroring:(id)mirroring;
- (unsigned)actuatorVADID;
- (unsigned)currentSpeechDetectStyle:(id)style;
- (unsigned)decoupledInputVADID;
- (unsigned)defaultVADID;
- (unsigned)getCurrentOutputPort;
- (unsigned)getSpeechDetectStyleForSessionConfiguration:(id)configuration;
- (unsigned)lowLatencyVADID;
- (unsigned)musicVADID;
- (unsigned)perAppAirPlayVADID;
- (unsigned)siriOutputVADID;
- (unsigned)speakerAlertVADID;
- (unsigned)speechDetectionVADID;
- (unsigned)systemSoundLocalVADID;
- (unsigned)systemSoundRemoteVADID;
- (void)addDuckerToSession:(id)session duckerSession:(id)duckerSession duckingSource:(id)source;
- (void)appToInterruptCurrentNowPlayingSession:(id)session;
- (void)applyUplinkMute:(id)mute;
- (void)cancelAnyInProgressRampIfNeeded:(id)needed reason:(unsigned __int16)reason;
- (void)cleanupSessionAssertionsIfNeeded:(id)needed cleanupReason:(int64_t)reason;
- (void)dealloc;
- (void)duckSessionIfDuckerIsActive:(id)active;
- (void)duckSessionsForDucker:(id)ducker sessionsToDuck:(id)duck;
- (void)duckVolume:(id)volume duckerSession:(id)session duckingSource:(id)source;
- (void)dumpDebugInfo;
- (void)endAsyncDuckingOperation;
- (void)endAsyncDuckingOperationForSession:(id)session;
- (void)getAndResetAsyncDuckingParameters:(BOOL *)parameters mostRecentDuckFadeDuration:(float *)duration;
- (void)getUpdatedDuckVolume:(id)volume outDuckVolume:(float *)duckVolume;
- (void)handleSilentModeTimerDidFire;
- (void)handleUserIntentToUnmute:(unsigned int)unmute;
- (void)interruptActiveSessionsNotOptedIntoWombat;
- (void)interruptAllIndependentInputAudioResourceSessionsIfNeeded:(id)needed;
- (void)interruptAllSessionsAndSystemSounds:(id)sounds;
- (void)interruptEligibleSessionsOnContinuityScreenOutputPortAvailableDidChange;
- (void)interruptRecordingSessionsOnContinuityScreenOutputPortAvailableDidChange;
- (void)interruptSessionsForCategoryNoLongerRoutable;
- (void)interruptSessionsOnRouteDisconnect:(id)disconnect;
- (void)makeStarkPortRoutableForPhoneCall:(BOOL)call;
- (void)makeStarkPortRoutableForPlayingSession:(BOOL)session;
- (void)muteOutputForSession:(id)session;
- (void)postDisallowedActivationDueToContinuityCaptureNotification:(BOOL)notification videoPlaybackWasIntended:(BOOL)intended;
- (void)postDisallowedRecordingNotification:(unint64_t)notification;
- (void)postStopCommandToSessionsWithAudioMode:(id)mode;
- (void)postStopCommandToShadowingSessionsForSession:(id)session withShadowingOptions:(unsigned int)options;
- (void)processContinuityScreenOutputPortAvailableDidChange:(BOOL)change;
- (void)pvmStateDidChangeCallback:(id)callback;
- (void)refreshDeviceSampleRateCache;
- (void)remoteDeviceControlIsAllowed:(unsigned int *)allowed;
- (void)removeDuckerForSession:(id)session sessionCausingUnduck:(id)unduck duckingSource:(id)source outLastDuckingSourceWasRemoved:(BOOL *)removed;
- (void)removeEntryFromMutedBundleIDCache:(int)cache bundleID:(id)d;
- (void)removeSilentModeTimer;
- (void)replaceMutedBundleIDwithHostID;
- (void)resetDefaultMusicApp;
- (void)resetWaitingToResume:(id)resume;
- (void)resumeInterruptedIndependentInputAudioResourceSessionsIfNeeded:(id)needed;
- (void)resumeNowPlayingAppForCarPlay;
- (void)ringerIsOnChanged:(BOOL)changed;
- (void)setAppAllowedToInitiateRecordingTemporarily:(id)temporarily;
- (void)setDevicesSampleRates:(id)rates;
- (void)setDuckScalarForVoiceOver:(float)over;
- (void)setLongFormVideoApps:(id)apps;
- (void)setQuiesceableWiredPortPreference:(unsigned int)preference autoRouteOnConnect:(BOOL)connect;
- (void)setRecordingClientPIDs:(id)ds;
- (void)setSystemMirroringRoutingContextUUID:(id)d;
- (void)setUpStringConversionDictionaries;
- (void)setVADID:(unsigned int)d forVADName:(id)name;
- (void)setWombatEnabled:(BOOL)enabled;
- (void)sleepForAsyncDucking:(BOOL)ducking duration:(float)duration;
- (void)synchronizeSessionVolumeWithMediaVolumeIfNeeded:(id)needed;
- (void)unduckSessionsForDucker:(id)ducker;
- (void)unduckSessionsForDuckingSource:(id)source;
- (void)unduckSessionsForVoiceOverDuckingSource;
- (void)unduckVolume:(id)volume sessionCausingUnduck:(id)unduck duckingSource:(id)source;
- (void)unmuteOutputForSession:(id)session;
- (void)updateActiveSessionsOnDeviceRelinquished;
- (void)updateBadgeType:(id)type matchingPID:(int)d;
- (void)updateBluetoothFrameworkToPlayMuteChime:(id)chime playRejectTone:(BOOL)tone;
- (void)updateCachedContinuityScreenOutputPortID;
- (void)updateDeviceSampleRate:(unsigned int)rate;
- (void)updateDuckVolume:(id)volume duckerSession:(id)session duckVolume:(float)duckVolume duckFadeDuration:(float)duration;
- (void)updateDuckedSessionsForVoiceOver:(id)over;
- (void)updateDuckedSessionsForVoiceOverIfNeededOnRouteChange;
- (void)updateDuckingSourceInfoForSession:(id)session duckerSession:(id)duckerSession duckVolume:(float)volume duckFadeDuration:(float)duration;
- (void)updateExclaveSensorStatusIfNeeded;
- (void)updateForRecordingStateDidChange;
- (void)updateMostRecentDuckFadeDuration:(float)duration duckOperation:(BOOL)operation duckerSession:(id)session sessionToDuck:(id)duck;
- (void)updateMutedBundleIDs:(id)ds muteValue:(BOOL)value;
- (void)updateNeroScreenState:(id)state suspendScreen:(BOOL)screen;
- (void)updateNowPlayingAppShouldResumeForCarPlay:(BOOL)play;
- (void)updateSilentModeState:(BOOL)state untilTime:(id)time withReason:(id)reason forClientType:(unsigned int)type updateForStartup:(BOOL)startup;
- (void)updateSilentModeTimer:(BOOL)timer untilTime:(id)time clientType:(unsigned int)type;
- (void)updateSomeAirPlayCapableVideoClientIsActive;
- (void)updateSupportedOutputChannelLayouts;
- (void)updateSupportedOutputChannelLayouts:(id)layouts matchingPID:(int)d;
- (void)volumePreferenceDidChangeCallback:(id)callback;
@end

@implementation MXSessionManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_4 != -1)
  {
    +[MXSessionManager sharedInstance];
  }

  return sharedInstance_sSharedInstance_4;
}

- (id)copyMXCoreSessionList
{
  v3 = objc_autoreleasePoolPush();
  [(NSLock *)[(MXSessionManager *)self mxCoreSessionListLock] lock];
  allObjects = [(NSPointerArray *)[(MXSessionManager *)self mxCoreSessionList] allObjects];
  [(NSLock *)[(MXSessionManager *)self mxCoreSessionListLock] unlock];
  objc_autoreleasePoolPop(v3);
  return allObjects;
}

- (id)copyActiveCoreSessionControllingRouting
{
  v13 = *MEMORY[0x1E69E9840];
  copyMXCoreSessionList = [(MXSessionManager *)self copyMXCoreSessionList];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [copyMXCoreSessionList countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(copyMXCoreSessionList);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        if (objc_msgSend_isActive(v6) && ([v6 currentlyControllingFlags] & 2) != 0)
        {
          v3 = v6;
          goto LABEL_12;
        }
      }

      v3 = [copyMXCoreSessionList countByEnumeratingWithState:&v8 objects:v12 count:16];
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

- (unsigned)defaultVADID
{
  v2 = [(NSDictionary *)[(MXSessionManager *)self audioDeviceInfo] objectForKey:0x1F2893B50];

  return [v2 unsignedIntValue];
}

- (unsigned)systemSoundLocalVADID
{
  v2 = [(NSDictionary *)[(MXSessionManager *)self audioDeviceInfo] objectForKey:0x1F2893B70];

  return [v2 unsignedIntValue];
}

- (unsigned)decoupledInputVADID
{
  v2 = [(NSDictionary *)[(MXSessionManager *)self audioDeviceInfo] objectForKey:0x1F28978F0];

  return [v2 unsignedIntValue];
}

- (id)copySpeechDetectSession
{
  v15 = *MEMORY[0x1E69E9840];
  copyMXCoreSessionList = [(MXSessionManager *)self copyMXCoreSessionList];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [copyMXCoreSessionList countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(copyMXCoreSessionList);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        if ([v7 hasAudioCategory:@"SpeechDetect"])
        {
          v8 = v7;
          goto LABEL_11;
        }
      }

      v4 = [copyMXCoreSessionList countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v7 = 0;
LABEL_11:

  return v7;
}

- (BOOL)wombatEnabled
{
  [(NSRecursiveLock *)[(MXSessionManager *)self propertiesLock] lock];
  wombatEnabled = self->_wombatEnabled;
  [(NSRecursiveLock *)[(MXSessionManager *)self propertiesLock] unlock];
  return wombatEnabled;
}

- (void)updateSupportedOutputChannelLayouts
{
  v17 = *MEMORY[0x1E69E9840];
  copyMXCoreSessionList = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [copyMXCoreSessionList countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(copyMXCoreSessionList);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        if (objc_msgSend_isActive(v7) && CMSUtility_SessionCanBeAndAllowedToBeNowPlayingApp(v7))
        {
          cf = 0;
          FigRoutingManagerContextUtilities_CopySystemMusicContextUUID(&cf);
          v8 = FigRoutingManagerContextUtilities_CopySupportedOutputChannelLayouts(cf);
          [v7 supportedOutputChannelLayouts];
          if (FigCFEqual())
          {
            if (dword_1EB75DE40)
            {
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }
          }

          else
          {
            if (dword_1EB75DE40)
            {
              v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            [v7 setSupportedOutputChannelLayouts:v8];
            CMSMNotificationUtility_PostSupportedBufferedAudioCapabilitiesDidChange(v7);
          }

          if (cf)
          {
            CFRelease(cf);
            cf = 0;
          }

          if (v8)
          {
            CFRelease(v8);
          }
        }
      }

      v4 = [copyMXCoreSessionList countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }
}

- (unsigned)systemSoundRemoteVADID
{
  v2 = [(NSDictionary *)[(MXSessionManager *)self audioDeviceInfo] objectForKey:0x1F2893B90];

  return [v2 unsignedIntValue];
}

- (BOOL)areBothBudsInEarForA2DPPort
{
  CurrentOutputPortAtIndex = CMSMUtility_GetCurrentOutputPortAtIndex(0);
  if (vaeGetPortTypeFromPortID(CurrentOutputPortAtIndex) != 1885892674)
  {
    goto LABEL_5;
  }

  DoesBTPortSupportInEarDetection = vaeDoesBTPortSupportInEarDetection(CurrentOutputPortAtIndex);
  if (DoesBTPortSupportInEarDetection)
  {
    if (vaeGetBTPortPrimaryBudInEarStatus(CurrentOutputPortAtIndex) == 1)
    {
      LOBYTE(DoesBTPortSupportInEarDetection) = vaeGetBTPortSecondaryBudInEarStatus(CurrentOutputPortAtIndex) == 1;
      return DoesBTPortSupportInEarDetection;
    }

LABEL_5:
    LOBYTE(DoesBTPortSupportInEarDetection) = 0;
  }

  return DoesBTPortSupportInEarDetection;
}

- (unsigned)siriOutputVADID
{
  v2 = [(NSDictionary *)[(MXSessionManager *)self audioDeviceInfo] objectForKey:0x1F2897930];

  return [v2 unsignedIntValue];
}

- (unsigned)musicVADID
{
  v2 = [(NSDictionary *)[(MXSessionManager *)self audioDeviceInfo] objectForKey:0x1F2897950];

  return [v2 unsignedIntValue];
}

- (unsigned)speechDetectionVADID
{
  v2 = [(NSDictionary *)[(MXSessionManager *)self audioDeviceInfo] objectForKey:0x1F28978D0];

  return [v2 unsignedIntValue];
}

- (NSDictionary)devicesSampleRates
{
  [(NSRecursiveLock *)[(MXSessionManager *)self propertiesLock] lock];
  v3 = self->_devicesSampleRates;
  [(NSRecursiveLock *)[(MXSessionManager *)self propertiesLock] unlock];
  return v3;
}

- (id)copyActiveVoiceOverSession
{
  v15 = *MEMORY[0x1E69E9840];
  copyMXCoreSessionList = [(MXSessionManager *)self copyMXCoreSessionList];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [copyMXCoreSessionList countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(copyMXCoreSessionList);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        if (objc_msgSend_isActive(v7) && [v7 hasAudioCategory:@"VoiceOver"])
        {
          v8 = v7;
          goto LABEL_12;
        }
      }

      v4 = [copyMXCoreSessionList countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v7 = 0;
LABEL_12:

  return v7;
}

- (float)duckScalarForVoiceOver
{
  [(NSRecursiveLock *)[(MXSessionManager *)self propertiesLock] lock];
  duckScalarForVoiceOver = self->_duckScalarForVoiceOver;
  [(NSRecursiveLock *)[(MXSessionManager *)self propertiesLock] unlock];
  return duckScalarForVoiceOver;
}

- (void)endAsyncDuckingOperation
{
  mostRecentDuckOperation = [(MXSessionManager *)self mostRecentDuckOperation];
  [(MXSessionManager *)self mostRecentDuckFadeDuration];
  [(MXSessionManager *)self sleepForAsyncDucking:mostRecentDuckOperation duration:?];
  [(MXSessionManager *)self setMostRecentDuckFadeDuration:0.0];

  [(MXSessionManager *)self setMostRecentDuckOperation:0];
}

- (BOOL)isSmartRoutingEligibleSessionAvailable
{
  v15 = *MEMORY[0x1E69E9840];
  copyMXCoreSessionList = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [copyMXCoreSessionList countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v11 != v5)
      {
        objc_enumerationMutation(copyMXCoreSessionList);
      }

      v7 = *(*(&v10 + 1) + 8 * v6);
      if ([v7 isPlaying])
      {
        if (CMSUtility_GetIsEligibleForBTSmartRoutingConsideration(v7))
        {
          v8 = 1;
          if (CMSM_GetLocalSessionPriority(v7, 1) > 0x64)
          {
            break;
          }
        }
      }

      if (v4 == ++v6)
      {
        v4 = [copyMXCoreSessionList countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_11:
    v8 = 0;
  }

  return v8;
}

- (unsigned)perAppAirPlayVADID
{
  v2 = [(NSDictionary *)[(MXSessionManager *)self audioDeviceInfo] objectForKey:0x1F2897970];

  return [v2 unsignedIntValue];
}

- (unsigned)actuatorVADID
{
  v2 = [(NSDictionary *)[(MXSessionManager *)self audioDeviceInfo] objectForKey:0x1F2897910];

  return [v2 unsignedIntValue];
}

- (unsigned)speakerAlertVADID
{
  v2 = [(NSDictionary *)[(MXSessionManager *)self audioDeviceInfo] objectForKey:0x1F2893BB0];

  return [v2 unsignedIntValue];
}

- (unsigned)lowLatencyVADID
{
  v2 = [(NSDictionary *)[(MXSessionManager *)self audioDeviceInfo] objectForKey:0x1F2897990];

  return [v2 unsignedIntValue];
}

- (void)updateCachedContinuityScreenOutputPortID
{
  if (MX_FeatureFlags_IsOnenessEnabled(self, a2))
  {
    CachedContinuityScreenOutputPortID = vaemGetCachedContinuityScreenOutputPortID();
    v4 = CachedContinuityScreenOutputPortID;
    v6 = vaemContinuityScreenOutputIsConnected(CachedContinuityScreenOutputPortID, v5) ? vaemGetVADPortIDFromVADPortType(1885565807) : 0;
    if (v4 != v6)
    {
      vaemSetCachedContinuityScreenOutputPortID(v6);

      [(MXSessionManager *)self processContinuityScreenOutputPortAvailableDidChange:v6 != 0];
    }
  }
}

- (id)copyVoiceOverSession
{
  v15 = *MEMORY[0x1E69E9840];
  copyMXCoreSessionList = [(MXSessionManager *)self copyMXCoreSessionList];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [copyMXCoreSessionList countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(copyMXCoreSessionList);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        if ([v7 hasAudioCategory:@"VoiceOver"])
        {
          v8 = v7;
          goto LABEL_11;
        }
      }

      v4 = [copyMXCoreSessionList countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v7 = 0;
LABEL_11:

  return v7;
}

- (NSString)systemMirroringRoutingContextUUID
{
  [(NSRecursiveLock *)[(MXSessionManager *)self propertiesLock] lock];
  v3 = self->_systemMirroringRoutingContextUUID;
  v5 = v3;
  [(NSRecursiveLock *)[(MXSessionManager *)self propertiesLock] unlock];
  if (!v3)
  {
    FigRoutingManagerContextUtilities_CopySystemMirroringContextUUID(&v5);
    [(NSRecursiveLock *)[(MXSessionManager *)self propertiesLock] lock];

    self->_systemMirroringRoutingContextUUID = v5;
    [(NSRecursiveLock *)[(MXSessionManager *)self propertiesLock] unlock];
    v3 = v5;
  }

  return v3;
}

- (NSArray)recordingClientPIDs
{
  [(NSRecursiveLock *)[(MXSessionManager *)self propertiesLock] lock];
  if ([(NSArray *)self->_recordingClientPIDs count])
  {
    v3 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_recordingClientPIDs copyItems:1];
  }

  else
  {
    v3 = 0;
  }

  [(NSRecursiveLock *)[(MXSessionManager *)self propertiesLock] unlock];
  return v3;
}

- (void)refreshDeviceSampleRateCache
{
  v34 = *MEMORY[0x1E69E9840];
  [(NSRecursiveLock *)[(MXSessionManager *)self propertiesLock] lock];
  if (dword_1EB75DE40)
  {
    v28 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  -[MXSessionManager setDevicesSampleRates:](self, "setDevicesSampleRates:", [MEMORY[0x1E695DF20] dictionary]);
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  audioDeviceInfo = [(MXSessionManager *)self audioDeviceInfo];
  v5 = [(NSDictionary *)audioDeviceInfo countByEnumeratingWithState:&v23 objects:v30 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v24;
    do
    {
      v9 = 0;
      do
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(audioDeviceInfo);
        }

        -[MXSessionManager updateDeviceSampleRate:](self, "updateDeviceSampleRate:", [-[NSDictionary objectForKey:](-[MXSessionManager audioDeviceInfo](self "audioDeviceInfo")]);
      }

      while (v7 != v9);
      v5 = [(NSDictionary *)audioDeviceInfo countByEnumeratingWithState:&v23 objects:v30 count:16];
      v7 = v5;
    }

    while (v5);
  }

  if (CMSMVAUtility_IsAdditiveRoutingEnabled(v5, v6))
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    vadNameToID = [+[MXAdditiveRoutingManager sharedInstance](MXAdditiveRoutingManager vadNameToID];
    v11 = [(NSDictionary *)vadNameToID countByEnumeratingWithState:&v19 objects:v29 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v20;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(vadNameToID);
          }

          -[MXSessionManager updateDeviceSampleRate:](self, "updateDeviceSampleRate:", [-[NSDictionary objectForKey:](-[MXAdditiveRoutingManager vadNameToID](+[MXAdditiveRoutingManager sharedInstance](MXAdditiveRoutingManager "sharedInstance")]);
        }

        v12 = [(NSDictionary *)vadNameToID countByEnumeratingWithState:&v19 objects:v29 count:16];
      }

      while (v12);
    }
  }

  if (dword_1EB75DE40)
  {
    v28 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v16 = v28;
    v17 = type;
    if (os_log_type_enabled(v15, type))
    {
      v18 = v16;
    }

    else
    {
      v18 = v16 & 0xFFFFFFFE;
    }

    if (v18)
    {
      v31 = 136315138;
      v32 = "[MXSessionManager refreshDeviceSampleRateCache]";
      _os_log_send_and_compose_impl(v18, 0, v33, 128, &dword_1B17A2000, v15, v17, "-MXSessionManager- %s: Devices sample rates cache is updated", &v31);
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [(NSRecursiveLock *)[(MXSessionManager *)self propertiesLock] unlock];
}

- (unsigned)getCurrentOutputPort
{
  v9 = *MEMORY[0x1E69E9840];
  valuePtr = 0;
  v2 = CMSMUtility_CopyCurrentOutputPorts();
  v3 = v2;
  if (v2 && CFArrayGetCount(v2))
  {
    ValueAtIndex = FigCFArrayGetValueAtIndex();
    CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, &valuePtr);
    if (!valuePtr)
    {
      if (dword_1EB75DE40)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    CFRelease(v3);
    return valuePtr;
  }

  else
  {
    if (dword_1EB75DE40)
    {
      v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (v3)
    {
      CFRelease(v3);
    }

    return 0;
  }
}

- (void)updateDuckedSessionsForVoiceOverIfNeededOnRouteChange
{
  v4 = *MEMORY[0x1E69E9840];
  if (MX_FeatureFlags_IsRelativeVoiceOverVolumeEnabled(self, a2))
  {
    if (CMSMDeviceState_IsVoiceOverOn())
    {
      [+[MXSessionManager sharedInstance](MXSessionManager duckScalarForVoiceOver];
      if (v2 < 1.0)
      {
        if (dword_1EB75DE40)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        [+[MXSessionManager sharedInstance](MXSessionManager startAsyncDuckingOperation];
        [+[MXSessionManager sharedInstance](MXSessionManager updateDuckedSessionsForVoiceOver:"updateDuckedSessionsForVoiceOver:", 0];
        [+[MXSessionManager sharedInstance](MXSessionManager endAsyncDuckingOperation];
      }
    }
  }
}

- (void)updateExclaveSensorStatusIfNeeded
{
  v18 = *MEMORY[0x1E69E9840];
  if (CMSMDeviceState_DeviceHasExclaveCapability(self, a2))
  {
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    obj = [(MXSessionManager *)self copyMXCoreSessionList];
    v3 = [obj countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v14;
      v6 = &qword_1EB75D000;
      v11 = *v14;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v14 != v5)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v13 + 1) + 8 * i);
          if ((([v8 isRecording] & 1) != 0 || objc_msgSend(v8, "isUsingBuiltInMicForRecording")) && -[MXExclaves updateSensorStatus:reason:](+[MXExclaves sharedInstance](MXExclaves, "sharedInstance"), "updateSensorStatus:reason:", v8, @"route has changed"))
          {
            if (dword_1EB75DE40)
            {
              v9 = v6;
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
              v6 = v9;
              fig_log_call_emit_and_clean_up_after_send_and_compose();
              v5 = v11;
            }

            CMSUtilityApplier_PostNotification_StopCommand(v8, 0);
          }
        }

        v4 = [obj countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v4);
    }
  }
}

- (BOOL)doesActiveSessionHaveInput
{
  v13 = *MEMORY[0x1E69E9840];
  copyMXCoreSessionList = [(MXSessionManager *)self copyMXCoreSessionList];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [copyMXCoreSessionList countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(copyMXCoreSessionList);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        if (objc_msgSend_isActive(v6) && [v6 hasInput] && (objc_msgSend(v6, "currentlyControllingFlags") & 2) != 0)
        {
          LOBYTE(v3) = 1;
          goto LABEL_13;
        }
      }

      v3 = [copyMXCoreSessionList countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  return v3;
}

- (void)updateForRecordingStateDidChange
{
  v2 = CMSMUtility_PostRecordingStateDidChangeNotificationIfNeeded();

  CMSMNotificationUtility_PostHighestArbitrationPriorityForTipiDidChangeIfNeeded(v2, v3);
}

- (int)getSessionPriority:(MXSessionPlayingInfo *)priority forTipi:(BOOL)tipi
{
  tipiCopy = tipi;
  v35 = *MEMORY[0x1E69E9840];
  if (mxsmInteruptionActionMapper_setUpInterruptionPriorityDictionaries_onceToken != -1)
  {
    [MXSessionManager(InterruptionActionMapper) getSessionPriority:forTipi:];
  }

  if (!priority->var8)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return 100;
  }

  if (tipiCopy)
  {
    v6 = [sCategoryToCategoryMapForTipi objectForKey:?];
    if (v6)
    {
      v7 = v6;
      v8 = &sCategoryToPriorityMapForTipi;
      goto LABEL_10;
    }

LABEL_30:
    v28 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_31;
  }

  v10 = [sCategoryToCategoryMapForTriangle objectForKey:?];
  if (!v10)
  {
    goto LABEL_30;
  }

  v7 = v10;
  v8 = &sCategoryToPriorityMapForTriangle;
LABEL_10:
  v11 = [*v8 objectForKey:v7];
  if (!v11)
  {
    goto LABEL_30;
  }

  v12 = v11;
  v13 = [v11 count];
  if (v13 < 1)
  {
LABEL_31:
    v31 = 100;
    goto LABEL_32;
  }

  v14 = v13;
  v15 = 0;
  while (1)
  {
    v16 = [v12 objectAtIndex:v15];
    v17 = [v16 objectForKey:@"AudioMode"];
    v18 = [v16 objectForKey:@"Priority"];
    v19 = [v16 objectForKey:@"InterruptionStyle"];
    if (v19)
    {
      v20 = v19;
      var2 = priority->var2;
      if ([v19 isEqualToString:@"NonMixable"])
      {
        v22 = 15;
      }

      else if ([v20 isEqualToString:@"Mixable"])
      {
        v22 = 48;
      }

      else
      {
        v22 = 0;
      }

      v23 = (v22 & var2) == 0;
      if (!v17)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v23 = 0;
      if (!v17)
      {
        goto LABEL_27;
      }
    }

    var9 = priority->var9;
    v25 = [v17 count];
    if (v25 >= 1)
    {
      v26 = v25;
      v27 = 0;
      while (![objc_msgSend(v17 objectAtIndex:{v27), "isEqualToString:", var9}])
      {
        if (v26 == ++v27)
        {
          goto LABEL_28;
        }
      }
    }

LABEL_27:
    if (!v23)
    {
      break;
    }

LABEL_28:
    if (++v15 == v14)
    {
      goto LABEL_31;
    }
  }

  unsignedIntValue = [v18 unsignedIntValue];
  v31 = unsignedIntValue;
  if (priority->var3 == 10 && unsignedIntValue != 100 && ([priority->var8 isEqualToString:@"Ringtone"] & 1) == 0)
  {
    if (dword_1EB75DE40)
    {
      v33 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);
LABEL_47:
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    return 501;
  }

LABEL_32:
  if (priority->var6 && priority->var5 && priority->var4)
  {
    if (dword_1EB75DE40)
    {
      v29 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
      goto LABEL_47;
    }

    return 501;
  }

  else if (priority->var7 && v31 <= 0xC7)
  {
    if (dword_1EB75DE40)
    {
      v30 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    return 200;
  }

  return v31;
}

uint64_t __34__MXSessionManager_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(MXSessionManager);
  sharedInstance_sSharedInstance_4 = v0;

  return [(MXSessionManager *)v0 setUpStringConversionDictionaries];
}

+ (id)copyDefaultMusicAppFromPlist
{
  CelestialGetModelSpecificName();
  v2 = CelestialCFCreatePropertyListForModelAndBundleIdentifier();
  if (v2)
  {
    v3 = v2;
    Value = CFDictionaryGetValue(v2, @"DefaultMusicApp");
    if (Value)
    {
      v5 = Value;
    }

    else
    {
      v5 = @"com.apple.Music";
    }

    v6 = v5;
    CFRelease(v3);
  }

  else
  {
    v5 = @"com.apple.Music";
    v7 = @"com.apple.Music";
  }

  return v5;
}

+ (BOOL)getSilentModeStateFromDisk
{
  v2 = CFPreferencesCopyValue(@"silentModeEnabled", @"com.apple.mediaexperience", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (MXSessionManager)init
{
  v17 = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = MXSessionManager;
  v2 = [(MXSessionManager *)&v16 init];
  if (v2)
  {
    v2->_audioCategoriesWithInput = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"Multi", @"Record", 0x1F2891810, @"PlayAndRecord", 0x1F2891830, 0x1F2891850, 0x1F2891870, @"VoiceCommand", @"VoiceCommand_WithBluetooth", @"VoiceCommandThatMixes", @"VoiceCommandThatMixes_WithBluetooth", @"PhoneCall", @"TTYCall", 0}];
    v2->_audioModesWithShortVoicePromptStyle = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"SpeechRecognition", @"VoiceMessages", 0}];
    v2->_currentAllowedPortTypes = 0;
    v2->_currentAudioCategory = 0;
    v2->_currentAudioMode = 0;
    v2->_defaultMusicApp = +[MXSessionManager copyDefaultMusicAppFromPlist];
    v2->_devicesSampleRates = objc_alloc_init(MEMORY[0x1E695DF20]);
    [objc_msgSend(MEMORY[0x1E696AE30] "processInfo")];
    if (v3 <= 45.0)
    {
      if (dword_1EB75DE40)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      MXCFPreferencesSetAndSynchronizeUserPreference(@"mutedSessionBundleIDs", 0);
    }

    v5 = MXCFPreferencesCopyPreference(@"mutedSessionBundleIDs");
    v2->_mutedSessionBundleIDs = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v5];

    v2->_propertiesLock = objc_alloc_init(MEMORY[0x1E696AE68]);
    v2->_mxCoreSessionList = [objc_alloc(MEMORY[0x1E696AE08]) initWithOptions:5];
    v2->_mxCoreSessionListLock = objc_alloc_init(MEMORY[0x1E696AD10]);
    v2->_sessionsThatWantToSuspendNeroScreenMirroring = [objc_alloc(MEMORY[0x1E696AE08]) initWithOptions:5];
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v2->_pickableRoutesDescriptions = v6;
    if (MX_FeatureFlags_IsQuiesceableWiredConnectionEnabled(v6, v7))
    {
      v8 = MXCFPreferencesCopyPreference(@"quiesceableWiredPortsAutoRouteOnConnectPreference");
      v2->_quiesceableWiredPortsAutoRouteOnConnectPreference = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v8];
    }

    else
    {
      v2->_quiesceableWiredPortsAutoRouteOnConnectPreference = 0;
    }

    v2->_silentModeEnabled = +[MXSessionManager getSilentModeStateFromDisk];
    v2->_silentModeEnabledUntilTime = +[MXSessionManager copySilentModeUntilTimeFromDisk];
    v9 = MXCFPreferencesCopyPreference(@"silentModeClientType");
    v2->_silentModeClient = [v9 unsignedIntValue];
    v2->_silentModeReason = MXCFPreferencesCopyPreference(@"silentModeReason");

    if (MX_FeatureFlags_IsRelativeVoiceOverVolumeEnabled(v10, v11))
    {
      v12 = MXCFPreferencesCopyPreference(@"duckScalarForVoiceOver");
      v13 = v12;
      if (v12)
      {
        [v12 floatValue];
      }

      else
      {
        v14 = 1.0;
      }

      v2->_duckScalarForVoiceOver = v14;
    }

    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
    dword_1EB75E0E4 = 0;
    v2->_isVoiceAssistantPlayingToPersonalAudioDeviceOverMedia = 0;
  }

  return v2;
}

- (void)dealloc
{
  self->_audioCategoriesWithInput = 0;

  self->_audioDeviceInfo = 0;
  self->_audioModesWithShortVoicePromptStyle = 0;

  self->_appAllowedToFadeInTemporarily = 0;
  self->_appAllowedToInitiatePlaybackTemporarily = 0;

  self->_appAllowedToInitiateRecordingTemporarily = 0;
  self->_appAllowedToInitiateRecordingTemporarilyTimestamp = 0;

  self->_applyUplinkMuteToPhoneCallBehaviorSession = 0;
  self->_currentAllowedPortTypes = 0;

  self->_currentAudioCategory = 0;
  self->_currentAudioMode = 0;

  self->_defaultMusicApp = 0;
  self->_devicesSampleRates = 0;

  self->_propertiesLock = 0;
  self->_longFormVideoApps = 0;

  self->_mxCoreSessionList = 0;
  self->_mxCoreSessionListLock = 0;

  self->_pickableRoutesDescriptions = 0;
  self->_recordingClientPIDs = 0;

  self->_quiesceableWiredPortsAutoRouteOnConnectPreference = 0;
  self->_mutedSessionBundleIDs = 0;

  self->_silentModeEnabledUntilTime = 0;
  self->_silentModeReason = 0;

  self->_systemMirroringRoutingContextUUID = 0;
  self->_figUncustomizedCategory_Dict = 0;

  self->_figCustomizedCategoryWithBluetooth_Dict = 0;
  self->_figCustomizedCategoryWithoutBluetooth_Dict = 0;

  self->_figCustomizedCategoryWithDefaultBuiltIn_Speaker_Dict = 0;
  self->_figCustomizedCategoryWithDefaultBuiltIn_Receiver_Dict = 0;

  self->_figCustomizedCategoryWithDefaultBuiltIn_Default_Dict = 0;
  self->_figCategoryToMuteabilityDict = 0;

  self->_figCategoryToOutputOverridabilityDict = 0;
  self->_figCategoryToVADCategoryDict = 0;

  self->_figRouteToVADOutputPortTypeDict = 0;
  self->_figRouteToVADInputPortTypeDict = 0;

  self->_vadOutputPortTypeToFigOutputDeviceNameDict = 0;
  self->_vadOutputPortTypeToMuteabilityDict = 0;

  self->_vadInputPortTypeToFigInputDeviceNameDict = 0;
  self->_figModeTypeToVADModeType = 0;

  self->_uplinkMutedBundleID = 0;
  self->_sessionsThatWantToSuspendNeroScreenMirroring = 0;
  v3.receiver = self;
  v3.super_class = MXSessionManager;
  [(MXSessionManager *)&v3 dealloc];
}

- (NSArray)longFormVideoApps
{
  [(NSRecursiveLock *)[(MXSessionManager *)self propertiesLock] lock];
  if ([+[MXNowPlayingAppManager nowPlayingAppDisplayID] sharedInstance]
  {
    v3 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_longFormVideoApps copyItems:1];
  }

  else
  {
    v3 = 0;
  }

  [(NSRecursiveLock *)[(MXSessionManager *)self propertiesLock] unlock];
  return v3;
}

- (void)setLongFormVideoApps:(id)apps
{
  v6 = *MEMORY[0x1E69E9840];
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [(NSRecursiveLock *)[(MXSessionManager *)self propertiesLock] lock];

  self->_longFormVideoApps = apps;
  [(NSRecursiveLock *)[(MXSessionManager *)self propertiesLock] unlock];
}

- (void)setRecordingClientPIDs:(id)ds
{
  [(NSRecursiveLock *)[(MXSessionManager *)self propertiesLock] lock];

  self->_recordingClientPIDs = ds;
  propertiesLock = [(MXSessionManager *)self propertiesLock];

  [(NSRecursiveLock *)propertiesLock unlock];
}

- (void)setSystemMirroringRoutingContextUUID:(id)d
{
  [(NSRecursiveLock *)[(MXSessionManager *)self propertiesLock] lock];

  self->_systemMirroringRoutingContextUUID = d;
  propertiesLock = [(MXSessionManager *)self propertiesLock];

  [(NSRecursiveLock *)propertiesLock unlock];
}

- (void)setWombatEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v7 = *MEMORY[0x1E69E9840];
  [(NSRecursiveLock *)[(MXSessionManager *)self propertiesLock] lock];
  wombatEnabled = self->_wombatEnabled;
  [(NSRecursiveLock *)[(MXSessionManager *)self propertiesLock] unlock];
  if (wombatEnabled != enabledCopy)
  {
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [(NSRecursiveLock *)[(MXSessionManager *)self propertiesLock] lock];
    self->_wombatEnabled = enabledCopy;
    [(NSRecursiveLock *)[(MXSessionManager *)self propertiesLock] unlock];
    if (enabledCopy)
    {
      [(MXSessionManager *)self interruptActiveSessionsNotOptedIntoWombat];
    }

    CMSMNotificationUtility_PostWombatEnabledDidChange(enabledCopy);
    CMSMNotificationUtility_PostSpeechDetectStyleDidChangeIfNeeded(0, 0);
  }
}

- (void)setDuckScalarForVoiceOver:(float)over
{
  v13 = *MEMORY[0x1E69E9840];
  if (MX_FeatureFlags_IsRelativeVoiceOverVolumeEnabled(self, a2))
  {
    v5 = fminf(over, 1.0);
    if (v5 >= 0.0)
    {
      v6 = v5;
    }

    else
    {
      v6 = 0.0;
    }

    [(NSRecursiveLock *)[(MXSessionManager *)self propertiesLock] lock];
    duckScalarForVoiceOver = self->_duckScalarForVoiceOver;
    self->_duckScalarForVoiceOver = v6;
    [(NSRecursiveLock *)[(MXSessionManager *)self propertiesLock] unlock];
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (vabds_f32(duckScalarForVoiceOver, v6) > 0.01)
    {
      if (CMSMDeviceState_IsVoiceOverOn())
      {
        [+[MXSessionManager sharedInstance](MXSessionManager startAsyncDuckingOperation];
        [+[MXSessionManager sharedInstance](MXSessionManager updateDuckedSessionsForVoiceOver:"updateDuckedSessionsForVoiceOver:", 0];
        [+[MXSessionManager sharedInstance](MXSessionManager endAsyncDuckingOperation];
      }

      v10 = objc_alloc(MEMORY[0x1E696AD98]);
      *&v11 = v6;
      v12 = [v10 initWithFloat:v11];
      MXCFPreferencesSetAndSynchronizeUserPreference(@"duckScalarForVoiceOver", v12);
    }
  }

  else if (dword_1EB75DE40)
  {
    v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

- (NSString)appAllowedToInitiateRecordingTemporarily
{
  v8 = *MEMORY[0x1E69E9840];
  [(NSRecursiveLock *)[(MXSessionManager *)self propertiesLock] lock];
  if (!self->_appAllowedToInitiateRecordingTemporarilyTimestamp)
  {
LABEL_7:
    v6 = 0;
    goto LABEL_9;
  }

  [objc_msgSend(MEMORY[0x1E695DF00] "date")];
  if (v3 > 5.0)
  {

    self->_appAllowedToInitiateRecordingTemporarily = 0;
    self->_appAllowedToInitiateRecordingTemporarilyTimestamp = 0;
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    goto LABEL_7;
  }

  if (dword_1EB75DE40)
  {
    v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v6 = self->_appAllowedToInitiateRecordingTemporarily;
LABEL_9:
  [(NSRecursiveLock *)[(MXSessionManager *)self propertiesLock] unlock];
  return v6;
}

- (void)setAppAllowedToInitiateRecordingTemporarily:(id)temporarily
{
  v6 = *MEMORY[0x1E69E9840];
  [(NSRecursiveLock *)[(MXSessionManager *)self propertiesLock] lock];

  self->_appAllowedToInitiateRecordingTemporarily = 0;
  self->_appAllowedToInitiateRecordingTemporarilyTimestamp = 0;
  if ([temporarily length])
  {
    self->_appAllowedToInitiateRecordingTemporarily = temporarily;
    self->_appAllowedToInitiateRecordingTemporarilyTimestamp = objc_alloc_init(MEMORY[0x1E695DF00]);
    if (dword_1EB75DE40)
    {
      goto LABEL_5;
    }
  }

  else if (dword_1EB75DE40)
  {
LABEL_5:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [(NSRecursiveLock *)[(MXSessionManager *)self propertiesLock] unlock];
}

- (void)appToInterruptCurrentNowPlayingSession:(id)session
{
  v3 = session == 0;
  if (session)
  {
    v6 = CMSMUtility_CopyActiveMXCoreSessionEligibleForNowPlayingAppConsideration(session);
  }

  else
  {
    v6 = 0;
  }

  v4 = CMSMNP_CopyNowPlayingAppSession();
  v5 = v4;
  if (v4)
  {
    if ([v4 audioSessionID])
    {
      CMSMUtility_PostStopCommandToShadowingSessionsForSession(v5, v3);
    }

    CMSMNotificationUtility_PostStopCommandToActiveClientWithDisplayID([v5 displayID], 0);
  }

  if (v6)
  {
    CMSUtility_UpdateRoutingContextForSession(v6);
    -[MXNowPlayingAppManager updateNowPlayingApp:session:reasonForUpdate:](+[MXNowPlayingAppManager sharedInstance](MXNowPlayingAppManager, "sharedInstance"), "updateNowPlayingApp:session:reasonForUpdate:", [objc_msgSend(v6 "clientPID")], 0, 4);
  }
}

- (void)interruptActiveSessionsNotOptedIntoWombat
{
  v14 = *MEMORY[0x1E69E9840];
  copyMXCoreSessionList = [(MXSessionManager *)self copyMXCoreSessionList];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [copyMXCoreSessionList countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(copyMXCoreSessionList);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        if (objc_msgSend_isActive(v7) && ([v7 prefersToPlayDuringWombat] & 1) == 0)
        {
          if (dword_1EB75DE40)
          {
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          CMSUtilityApplier_PostNotification_StopCommand(v7, 0);
        }
      }

      v4 = [copyMXCoreSessionList countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

- (BOOL)isLongFormVideoApp:(id)app
{
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"DisableLongFormVideoApp", @"com.apple.coremedia", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v6 = AppBooleanValue == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    goto LABEL_12;
  }

  if (!CMSMDeviceState_ItsAHomePod())
  {
    FigMobileAsset_UpdateCatalogIfTimeIntervalElapsed();
  }

  if (app)
  {
    if (![app length])
    {
LABEL_12:
      LOBYTE(app) = 0;
      return app;
    }

    [(NSRecursiveLock *)[(MXSessionManager *)self propertiesLock] lock];
    longFormVideoApps = self->_longFormVideoApps;
    if (longFormVideoApps)
    {
      LOBYTE(app) = [(NSArray *)longFormVideoApps containsObject:app];
    }

    else
    {
      LOBYTE(app) = 0;
    }

    [(NSRecursiveLock *)[(MXSessionManager *)self propertiesLock] unlock];
  }

  return app;
}

- (void)makeStarkPortRoutableForPhoneCall:(BOOL)call
{
  callCopy = call;
  v4 = CMSMUtility_CopyCurrentRouteTypes();
  if (!callCopy || FigCFArrayContainsValue())
  {
    if (!v4)
    {
      return;
    }

    goto LABEL_4;
  }

  v5 = CMSMUtility_CopyMostImportantPlayingSession();
  v6 = v5;
  if (v5 && (([(__CFArray *)v5 hasPhoneCallBehavior]& 1) != 0 || CMSUtility_IsAudioCategoryRingtone(v6)))
  {
    PortOfTypeInConnectedPortsList = CMSMVAUtility_GetPortOfTypeInConnectedPortsList(1886614639);
    if (cmsmRequestCarMainAudioForSession(v6))
    {
      if (PortOfTypeInConnectedPortsList)
      {
        CMSMVAUtility_MakeConnectedPortRoutable(PortOfTypeInConnectedPortsList, 1);
      }
    }
  }

  if (v4)
  {
LABEL_4:

    CFRelease(v4);
  }
}

- (void)makeStarkPortRoutableForPlayingSession:(BOOL)session
{
  v7 = *MEMORY[0x1E69E9840];
  if (session)
  {
    PortOfTypeInConnectedPortsList = CMSMVAUtility_GetPortOfTypeInConnectedPortsList(1886614639);
    v4 = CMSMUtility_CopyMostImportantPlayingSession();
    v5 = cmsmRequestCarMainAudioForSession(v4);

    if (v5 && PortOfTypeInConnectedPortsList)
    {
      CMSMVAUtility_MakeConnectedPortRoutable(PortOfTypeInConnectedPortsList, 1);
    }

    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }
}

- (unint64_t)mxCoreSessionListAddSession:(id)session
{
  objc_initWeak(&location, session);
  [(NSLock *)[(MXSessionManager *)self mxCoreSessionListLock] lock];
  [(NSPointerArray *)[(MXSessionManager *)self mxCoreSessionList] addPointer:objc_loadWeak(&location)];
  [(NSPointerArray *)[(MXSessionManager *)self mxCoreSessionList] compact];
  v4 = [(NSPointerArray *)[(MXSessionManager *)self mxCoreSessionList] count];
  [(NSLock *)[(MXSessionManager *)self mxCoreSessionListLock] unlock];
  objc_destroyWeak(&location);
  return v4;
}

- (unint64_t)mxCoreSessionListRemoveSession:(id)session
{
  objc_initWeak(&location, session);
  [(NSLock *)[(MXSessionManager *)self mxCoreSessionListLock] lock];
  for (i = 0; i < [(NSPointerArray *)[(MXSessionManager *)self mxCoreSessionList] count]; ++i)
  {
    if ([-[NSPointerArray pointerAtIndex:](-[MXSessionManager mxCoreSessionList](self "mxCoreSessionList")])
    {
      [(NSPointerArray *)[(MXSessionManager *)self mxCoreSessionList] removePointerAtIndex:i];
      [(NSPointerArray *)[(MXSessionManager *)self mxCoreSessionList] compact];
      break;
    }
  }

  v5 = [(NSPointerArray *)[(MXSessionManager *)self mxCoreSessionList] count];
  [(NSLock *)[(MXSessionManager *)self mxCoreSessionListLock] unlock];
  objc_destroyWeak(&location);
  return v5;
}

- (unint64_t)addSessionThatWantsToSuspendNeroScreenMirroring:(id)mirroring
{
  objc_initWeak(&location, mirroring);
  [(NSRecursiveLock *)[(MXSessionManager *)self propertiesLock] lock];
  [(NSPointerArray *)[(MXSessionManager *)self sessionsThatWantToSuspendNeroScreenMirroring] addPointer:objc_loadWeak(&location)];
  [(NSPointerArray *)[(MXSessionManager *)self sessionsThatWantToSuspendNeroScreenMirroring] compact];
  v4 = objc_autoreleasePoolPush();
  v5 = [(NSArray *)[(NSPointerArray *)[(MXSessionManager *)self sessionsThatWantToSuspendNeroScreenMirroring] allObjects] count];
  objc_autoreleasePoolPop(v4);
  [(NSRecursiveLock *)[(MXSessionManager *)self propertiesLock] unlock];
  objc_destroyWeak(&location);
  return v5;
}

- (unint64_t)removeSessionThatWantsToSuspendNeroScreenMirroring:(id)mirroring
{
  objc_initWeak(&location, mirroring);
  [(NSRecursiveLock *)[(MXSessionManager *)self propertiesLock] lock];
  for (i = 0; i < [(NSPointerArray *)[(MXSessionManager *)self sessionsThatWantToSuspendNeroScreenMirroring] count]; ++i)
  {
    if ([-[NSPointerArray pointerAtIndex:](-[MXSessionManager sessionsThatWantToSuspendNeroScreenMirroring](self "sessionsThatWantToSuspendNeroScreenMirroring")])
    {
      [(NSPointerArray *)[(MXSessionManager *)self sessionsThatWantToSuspendNeroScreenMirroring] removePointerAtIndex:i];
      [(NSPointerArray *)[(MXSessionManager *)self sessionsThatWantToSuspendNeroScreenMirroring] compact];
      break;
    }
  }

  v5 = objc_autoreleasePoolPush();
  v6 = [(NSArray *)[(NSPointerArray *)[(MXSessionManager *)self sessionsThatWantToSuspendNeroScreenMirroring] allObjects] count];
  objc_autoreleasePoolPop(v5);
  [(NSRecursiveLock *)[(MXSessionManager *)self propertiesLock] unlock];
  objc_destroyWeak(&location);
  return v6;
}

- (void)updateNeroScreenState:(id)state suspendScreen:(BOOL)screen
{
  screenCopy = screen;
  v6 = +[MXSessionManager sharedInstance];
  if (screenCopy)
  {
    v7 = [(MXSessionManager *)v6 addSessionThatWantsToSuspendNeroScreenMirroring:state];
  }

  else
  {
    v7 = [(MXSessionManager *)v6 removeSessionThatWantsToSuspendNeroScreenMirroring:state];
  }

  v8 = v7;
  if (v7)
  {
    v9 = updateNeroScreenState_suspendScreen__sCurrentCount == 0;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    FigRoutingManagerSuspendCurrentEndpointScreen([+[MXSessionManager systemMirroringRoutingContextUUID] sharedInstance];
  }

  else
  {
    if (v7)
    {
      v10 = 1;
    }

    else
    {
      v10 = updateNeroScreenState_suspendScreen__sCurrentCount == 0;
    }

    if (!v10)
    {
      FigRoutingManagerResumeCurrentEndpointScreen([+[MXSessionManager systemMirroringRoutingContextUUID] sharedInstance];
    }
  }

  updateNeroScreenState_suspendScreen__sCurrentCount = v8;
}

- (void)updateNowPlayingAppShouldResumeForCarPlay:(BOOL)play
{
  playCopy = play;
  v10 = *MEMORY[0x1E69E9840];
  CMSMNP_SetNowPlayingAppShouldResumeForCarPlay(play);
  v4 = CMSMNP_CopyNowPlayingAppWasPlayingUponCarPlayDisconnectFromDisk();
  v5 = v4;
  if (playCopy)
  {
    v6 = FigCFEqual();
    if (v5)
    {
      CFRelease(v5);
    }

    if (v6)
    {
      IsCurrentlyActive = vaemStarkAudioPortIsCurrentlyActive();
      v8 = +[MXSessionManager sharedInstance];
      if (IsCurrentlyActive)
      {
        [(MXSessionManager *)v8 resumeNowPlayingAppForCarPlay];
      }

      else
      {
        [(MXSessionManager *)v8 setShouldResumeNowPlayingAppOnDelayedCarPlayPortPublication:1];
      }

      goto LABEL_12;
    }
  }

  else if (v4)
  {
    CFRelease(v4);
  }

  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_12:
  CMSMNP_WriteNowPlayingAppWasPlayingUponCarPlayDisconnectToDisk(0);
}

- (void)resumeNowPlayingAppForCarPlay
{
  v7 = *MEMORY[0x1E69E9840];
  if ([+[MXNowPlayingAppManager nowPlayingAppStopTime] sharedInstance]
  {
    [objc_msgSend(MEMORY[0x1E695DF00] "now")];
    if (v2 >= 480.0)
    {
      nowPlayingAppDisplayID = CMSMNP_CopyNowPlayingAppDisplayIDUponCarPlayDisconnectFromDisk();
      if (!dword_1EB75DE40)
      {
        goto LABEL_10;
      }
    }

    else
    {
      nowPlayingAppDisplayID = [+[MXNowPlayingAppManager sharedInstance](MXNowPlayingAppManager nowPlayingAppDisplayID];
      if (!dword_1EB75DE40)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
    nowPlayingAppDisplayID = CMSMNP_CopyNowPlayingAppDisplayIDUponCarPlayDisconnectFromDisk();
    if (!dword_1EB75DE40)
    {
      goto LABEL_10;
    }
  }

  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  if (dword_1EB75DE40)
  {
    v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_10:
  CMSMNP_ResumeNowPlayingAppOverCarPlay(nowPlayingAppDisplayID, v3);
}

- (void)resetDefaultMusicApp
{
  v3 = +[MXSessionManager copyDefaultMusicAppFromPlist];
  [(NSRecursiveLock *)[(MXSessionManager *)self propertiesLock] lock];

  self->_defaultMusicApp = v3;
  propertiesLock = [(MXSessionManager *)self propertiesLock];

  [(NSRecursiveLock *)propertiesLock unlock];
}

- (void)handleSilentModeTimerDidFire
{
  v3 = MXGetSerialQueue(self, a2);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __48__MXSessionManager_handleSilentModeTimerDidFire__block_invoke;
  v4[3] = &unk_1E7AE7CE0;
  v4[4] = self;
  MXDispatchAsync("[MXSessionManager handleSilentModeTimerDidFire]", "MXSessionManager.m", 1239, 0, 0, v3, v4);
}

uint64_t __48__MXSessionManager_handleSilentModeTimerDidFire__block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [*(a1 + 32) setSilentModeEnabled:{objc_msgSend(*(a1 + 32), "silentModeEnabled") ^ 1}];
  [*(a1 + 32) setSilentModeEnabledUntilTime:0];
  [+[MXAlarmEvents sharedInstance](MXAlarmEvents resetAlarmEvent:"resetAlarmEvent:", @"com.apple.mediaexperience.silentmode.timer"];
  MXCFPreferencesSetAndSynchronizeUserPreference(@"silentModeEnabled", [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(*(a1 + 32), "silentModeEnabled")}]);
  MXCFPreferencesSetAndSynchronizeUserPreference(@"silentModeEnabledUntilTime", 0);
  CMSMDeviceState_UpdateRingerStateForSilentMode([*(a1 + 32) silentModeEnabled]);
  CMSMNotificationUtility_PostSilentModeEnabledDidChange([*(a1 + 32) silentModeEnabled]);
  return -[MXBiomeStreams updateBiomeSilentMode:clientType:untilTime:reason:](+[MXBiomeStreams sharedInstance](MXBiomeStreams, "sharedInstance"), "updateBiomeSilentMode:clientType:untilTime:reason:", [*(a1 + 32) silentModeEnabled], objc_msgSend(*(a1 + 32), "silentModeClient"), 0, objc_msgSend(*(a1 + 32), "silentModeReason"));
}

- (void)updateSilentModeTimer:(BOOL)timer untilTime:(id)time clientType:(unsigned int)type
{
  timerCopy = timer;
  v13 = *MEMORY[0x1E69E9840];
  [time timeIntervalSinceNow];
  if (v9 <= 0.0)
  {
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [(MXSessionManager *)self removeSilentModeTimer];
  }

  else
  {
    v10 = v9;
    if (type == 5 && [(MXSessionManager *)self silentModeEnabled]== timerCopy && ![(MXSessionManager *)self silentModeEnabledUntilTime])
    {
      if (dword_1EB75DE40)
      {
        v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    else
    {
      [+[MXAlarmEvents sharedInstance](MXAlarmEvents setAlarmEvent:"setAlarmEvent:eventName:" eventName:@"com.apple.mediaexperience.silentmode.timer", v10];
      [(MXSessionManager *)self setSilentModeEnabledUntilTime:time];

      MXCFPreferencesSetAndSynchronizeUserPreference(@"silentModeEnabledUntilTime", time);
    }
  }
}

- (void)updateSilentModeState:(BOOL)state untilTime:(id)time withReason:(id)reason forClientType:(unsigned int)type updateForStartup:(BOOL)startup
{
  startupCopy = startup;
  v8 = *&type;
  stateCopy = state;
  v22 = *MEMORY[0x1E69E9840];
  silentModeEnabled = [(MXSessionManager *)self silentModeEnabled];
  v14 = silentModeEnabled;
  if (startupCopy)
  {
    if (dword_1EB75DE40)
    {
      v21 = silentModeEnabled;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v14 = v21;
    }

    silentModeEnabledUntilTime = [+[MXSessionManager sharedInstance](MXSessionManager silentModeEnabledUntilTime];
    if (silentModeEnabledUntilTime)
    {
      [(NSDate *)silentModeEnabledUntilTime timeIntervalSinceNow];
      if (v17 > 0.0)
      {
        stateCopy = stateCopy;
      }

      else
      {
        time = 0;
        stateCopy = v14 ^ 1u;
      }
    }
  }

  [+[MXSessionManager sharedInstance](MXSessionManager setSilentModeClient:"setSilentModeClient:", v8];
  [+[MXSessionManager sharedInstance](MXSessionManager setSilentModeReason:"setSilentModeReason:", reason];
  MXCFPreferencesSetAndSynchronizeUserPreference(@"silentModeClientType", [MEMORY[0x1E696AD98] numberWithUnsignedInt:v8]);
  MXCFPreferencesSetAndSynchronizeUserPreference(@"silentModeReason", reason);
  if (dword_1EB75DE40)
  {
    v18 = v14;
    v19 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v14 = v18;
  }

  [(MXSessionManager *)self updateSilentModeTimer:stateCopy untilTime:time clientType:v8];
  if (v14 != stateCopy)
  {
    [(MXSessionManager *)self setSilentModeEnabled:stateCopy];
    v20 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:stateCopy];
    MXCFPreferencesSetAndSynchronizeUserPreference(@"silentModeEnabled", v20);

LABEL_13:
    CMSMDeviceState_UpdateRingerStateForSilentMode(stateCopy);
    CMSMNotificationUtility_PostSilentModeEnabledDidChange(stateCopy);
    goto LABEL_14;
  }

  if (startupCopy)
  {
    goto LABEL_13;
  }

LABEL_14:
  [+[MXBiomeStreams sharedInstance](MXBiomeStreams updateBiomeSilentMode:"updateBiomeSilentMode:clientType:untilTime:reason:" clientType:stateCopy untilTime:v8 reason:time, reason];
}

- (void)removeSilentModeTimer
{
  [+[MXAlarmEvents sharedInstance](MXAlarmEvents resetAlarmEvent:"resetAlarmEvent:", @"com.apple.mediaexperience.silentmode.timer"];
  [(MXSessionManager *)self setSilentModeEnabledUntilTime:0];

  MXCFPreferencesSetAndSynchronizeUserPreference(@"silentModeEnabledUntilTime", 0);
}

- (void)ringerIsOnChanged:(BOOL)changed
{
  changedCopy = changed;
  cmsmUpdateEnableSharedAudioRouteSyntheticMute(1, 0, 0, 0, 0, 0);
  cmsUpdateMuteStatus(0);
  if (changedCopy)
  {

    vaemUnmuteFullMuteIfMuted();
  }
}

- (void)updateDeviceSampleRate:(unsigned int)rate
{
  if (rate)
  {
    v3 = *&rate;
    [(NSRecursiveLock *)[(MXSessionManager *)self propertiesLock] lock];
    v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:{-[MXSessionManager devicesSampleRates](self, "devicesSampleRates")}];
    [v5 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithDouble:", vaemGetSampleRateForDevice(v3)), objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v3)}];
    -[MXSessionManager setDevicesSampleRates:](self, "setDevicesSampleRates:", [MEMORY[0x1E695DF20] dictionaryWithDictionary:v5]);
    [(NSRecursiveLock *)[(MXSessionManager *)self propertiesLock] unlock];
  }
}

- (void)setDevicesSampleRates:(id)rates
{
  [(NSRecursiveLock *)[(MXSessionManager *)self propertiesLock] lock];

  self->_devicesSampleRates = rates;
  propertiesLock = [(MXSessionManager *)self propertiesLock];

  [(NSRecursiveLock *)propertiesLock unlock];
}

- (void)volumePreferenceDidChangeCallback:(id)callback
{
  v79 = *MEMORY[0x1E69E9840];
  userInfo = [callback userInfo];
  v60 = [userInfo objectForKey:0x1F2891210];
  v58 = [userInfo objectForKey:0x1F2891270];
  v5 = [userInfo objectForKey:0x1F28939B0];
  [userInfo objectForKey:0x1F2892D30];
  v6 = [userInfo objectForKey:0x1F2899190];
  v7 = [userInfo objectForKey:0x1F288EC70];
  v61 = [userInfo objectForKey:0x1F289F730];
  [objc_msgSend(userInfo objectForKey:{0x1F28A37B0), "floatValue"}];
  v9 = v8;
  [objc_msgSend(userInfo objectForKey:{0x1F28A37D0), "floatValue"}];
  v11 = v10;
  v62 = [v5 isEqualToString:@"ImplicitVolumeChange"];
  if (v6)
  {
    [v6 floatValue];
    v13 = v12;
  }

  else
  {
    v13 = PVMGetCurrentPreferredVolume();
    [userInfo setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithFloat:"), @"Volume"}];
  }

  [userInfo removeObjectForKey:0x1F28A37B0];
  [userInfo removeObjectForKey:0x1F28A37D0];
  v14 = FigSimpleMutexLock();
  v63 = userInfo;
  if (CMSMVAUtility_IsAdditiveRoutingEnabled(v14, v15) && [(MXSessionManager *)self voiceOverVADVolumeNeedsUpdate])
  {
    copyActiveVoiceOverSessionPlayingToOnDemandVAD = [+[MXAdditiveRoutingManager sharedInstance](MXAdditiveRoutingManager copyActiveVoiceOverSessionPlayingToOnDemandVAD];
    v59 = copyActiveVoiceOverSessionPlayingToOnDemandVAD == 0;
    if (copyActiveVoiceOverSessionPlayingToOnDemandVAD)
    {
      if (dword_1EB75DE40)
      {
        v70 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      CMSUtility_UpdatePlaybackVolume(copyActiveVoiceOverSessionPlayingToOnDemandVAD, 0.0, 0.0);
    }

    [(MXSessionManager *)self setVoiceOverVADVolumeNeedsUpdate:0];
  }

  else
  {
    copyActiveVoiceOverSessionPlayingToOnDemandVAD = 0;
    v59 = 1;
  }

  copyMXCoreSessionList = [(MXSessionManager *)self copyMXCoreSessionList];
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v19 = [copyMXCoreSessionList countByEnumeratingWithState:&v65 objects:v77 count:16];
  if (!v19)
  {

    v20 = 0;
    v30 = userInfo;
LABEL_34:
    if (vaemSystemSoundLocalVADExists())
    {
      if (objc_msgSend_isActive(v20) && (CurrentOutputVADID = CMSUtility_GetCurrentOutputVADID(v20), CurrentOutputVADID == [+[MXSessionManager systemSoundLocalVADID] sharedInstance])
      {
        CMSUtility_UpdatePlaybackVolume(v20, 0.0, 0.0);
      }

      else
      {
        CurrentRouteTypeForSystemSoundAtIndex = CMSMUtility_GetCurrentRouteTypeForSystemSoundAtIndex(0);
        if (dword_1EB75DE40)
        {
          v70 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          v33 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v34 = v70;
          v35 = type;
          if (os_log_type_enabled(v33, type))
          {
            v36 = v34;
          }

          else
          {
            v36 = v34 & 0xFFFFFFFE;
          }

          if (v36)
          {
            VADNameForVADID = CMSMUtility_GetVADNameForVADID([+[MXSessionManager systemSoundLocalVADID] sharedInstance];
            v71 = 136315650;
            v72 = "[MXSessionManager volumePreferenceDidChangeCallback:]";
            v73 = 2114;
            v74 = VADNameForVADID;
            v75 = 2114;
            v76 = CurrentRouteTypeForSystemSoundAtIndex;
            _os_log_send_and_compose_impl(v36, 0, v78, 128, &dword_1B17A2000, v33, v35, "-MXSessionManager- %s: Setting volume on VAD: %{public}@ route: %{public}@ as no session is controlling system sound VAD volume", &v71, 32);
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        vaemSetDeviceVolumeIfNotSet([[MXSessionManager systemSoundLocalVADID] sharedInstance:CurrentRouteTypeForSystemSoundAtIndex];
      }
    }

    goto LABEL_46;
  }

  v57 = v7;
  v64 = 0;
  v20 = 0;
  v21 = *v66;
  do
  {
    for (i = 0; i != v19; ++i)
    {
      if (*v66 != v21)
      {
        objc_enumerationMutation(copyMXCoreSessionList);
      }

      v23 = *(*(&v65 + 1) + 8 * i);
      if (objc_msgSend_isActive(v23))
      {
        v24 = [v23 hasAudioCategory:@"VoiceOver"];
        if (v24)
        {
          v20 = v23;
        }

        if ((!CMSMVAUtility_IsAdditiveRoutingEnabled(v24, v25) || ([v23 isEqual:copyActiveVoiceOverSessionPlayingToOnDemandVAD] & 1) == 0) && (objc_msgSend(v23, "currentlyControllingFlags") & 0x10) != 0)
        {
          CurrentAudioDestination = CMSUtility_GetCurrentAudioDestination(v23);
          if ([CurrentAudioDestination isEqualToString:0x1F2893B50])
          {
            if ([objc_msgSend(v23 "audioCategory")])
            {
              v27 = 0.0;
              v28 = 0.0;
              v29 = v23;
            }

            else
            {
              v29 = v23;
              v27 = v9;
              v28 = v11;
            }

            CMSUtility_UpdatePlaybackVolume(v29, v27, v28);
            LOBYTE(v64) = 1;
          }

          else
          {
            CMSUtility_UpdatePlaybackVolume(v23, v9, v11);
            HIDWORD(v64) |= [CurrentAudioDestination isEqualToString:0x1F2893B70];
          }
        }
      }
    }

    v19 = [copyMXCoreSessionList countByEnumeratingWithState:&v65 objects:v77 count:16];
  }

  while (v19);

  v30 = v63;
  v7 = v57;
  LOBYTE(v19) = v64;
  if ((v64 & 0x100000000) == 0)
  {
    goto LABEL_34;
  }

LABEL_46:
  v38 = [v7 isEqualToString:@"AirTunes"];
  v39 = [v61 isEqualToString:@"Audio/Video"];
  if ((v19 & 1) == 0 && v38 && v39)
  {
    CurrentRouteTypeAtIndex = CMSMUtility_GetCurrentRouteTypeAtIndex(0);
    if (dword_1EB75DE40)
    {
      v70 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v41 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v42 = v70;
      v43 = type;
      if (os_log_type_enabled(v41, type))
      {
        v44 = v42;
      }

      else
      {
        v44 = v42 & 0xFFFFFFFE;
      }

      if (v44)
      {
        v45 = CMSMUtility_GetVADNameForVADID([+[MXSessionManager defaultVADID] sharedInstance];
        v71 = 136315650;
        v72 = "[MXSessionManager volumePreferenceDidChangeCallback:]";
        v73 = 2114;
        v74 = v45;
        v75 = 2114;
        v76 = CurrentRouteTypeAtIndex;
        LODWORD(v56) = 32;
        _os_log_send_and_compose_impl(v44, 0, v78, 128, &dword_1B17A2000, v41, v43, "-MXSessionManager- %s: Setting volume on VAD: %{public}@ route: %{public}@ as no session is controlling default VAD and current route is AirTunes", &v71, v56);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    vaemSetDeviceVolumeIfNotSet([[MXSessionManager defaultVADID] sharedInstance:CurrentRouteTypeAtIndex];
  }

  if ((v19 & 1) == 0)
  {
    IsVoiceOverOn = CMSMDeviceState_IsVoiceOverOn();
    if (IsVoiceOverOn)
    {
      if ((CMSMVAUtility_IsAdditiveRoutingEnabled(IsVoiceOverOn, v47) & ~v59) == 0)
      {
        v48 = CMSMUtility_GetCurrentRouteTypeAtIndex(0);
        if (dword_1EB75DE40)
        {
          v70 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          v49 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v50 = v70;
          v51 = type;
          if (os_log_type_enabled(v49, type))
          {
            v52 = v50;
          }

          else
          {
            v52 = v50 & 0xFFFFFFFE;
          }

          if (v52)
          {
            v53 = CMSMUtility_GetVADNameForVADID([+[MXSessionManager defaultVADID] sharedInstance];
            v71 = 136315650;
            v72 = "[MXSessionManager volumePreferenceDidChangeCallback:]";
            v73 = 2114;
            v74 = v53;
            v75 = 2114;
            v76 = v48;
            LODWORD(v56) = 32;
            _os_log_send_and_compose_impl(v52, 0, v78, 128, &dword_1B17A2000, v49, v51, "-MXSessionManager- %s: Setting volume on VAD: %{public}@ route: %{public}@ as no session is controlling VAD and VoiceOver is ON", &v71, v56);
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        vaemSetDeviceVolumeIfNotSet([[MXSessionManager defaultVADID] sharedInstance:v48];
      }
    }
  }

  FigSimpleMutexUnlock();
  if ((v62 & 1) == 0 && (![v60 isEqualToString:@"EmergencyAlert"] || (objc_msgSend(v58, "isEqualToString:", @"CustomVolume") & 1) == 0))
  {
    FigSimpleMutexLock();
    v54 = *&dword_1EB75E0E4;
    FigSimpleMutexUnlock();
    if (v54 != v13)
    {
      FigSimpleMutexLock();
      dword_1EB75E0E4 = LODWORD(v13);
      FigSimpleMutexUnlock();
      CMSMNotificationUtility_PostVolumeDidChangeToVolumeButtonClientsWithPayload(v30, v55);
    }

    CMSMNotificationUtility_PostVolumeDidChangeToAVSystemControllersWithPayload(v30);
  }
}

- (void)pvmStateDidChangeCallback:(id)callback
{
  v25 = *MEMORY[0x1E69E9840];
  copyMXCoreSessionList = [(MXSessionManager *)self copyMXCoreSessionList];
  [+[MXSessionManager sharedInstance](MXSessionManager duckVolumeForSpeakerVolumeLimit];
  v6 = v5;
  v7 = [MXDuckingSource alloc];
  LODWORD(v8) = 0.5;
  LODWORD(v9) = v6;
  v10 = [(MXDuckingSource *)v7 initWithType:7 ID:0 duckVolume:v9 duckFadeDuration:v8];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = copyMXCoreSessionList;
  v11 = [copyMXCoreSessionList countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v21;
    do
    {
      v14 = 0;
      do
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v20 + 1) + 8 * v14);
        if ([(MXSessionManager *)self isSessionDucked:v15 duckingSource:v10])
        {
          [(MXSessionManager *)self startAsyncDuckingOperation];
          if (dword_1EB75DE40)
          {
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          [(MXSessionManager *)self unduckVolume:v15 sessionCausingUnduck:0 duckingSource:v10];
LABEL_14:
          [(MXSessionManager *)self endAsyncDuckingOperationForSession:v15];
          goto LABEL_15;
        }

        if (objc_msgSend_isActive(v15) && [(MXSessionManager *)self shouldDuckSessionForSpeakerVolumeLimit:v15])
        {
          [(MXSessionManager *)self startAsyncDuckingOperation];
          if (dword_1EB75DE40)
          {
            v17 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          [(MXSessionManager *)self duckVolume:v15 duckerSession:0 duckingSource:v10];
          goto LABEL_14;
        }

LABEL_15:
        ++v14;
      }

      while (v12 != v14);
      v18 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
      v12 = v18;
    }

    while (v18);
  }
}

- (id)copySessionWithAudioSessionID:(unsigned int)d
{
  v17 = *MEMORY[0x1E69E9840];
  copyMXCoreSessionList = [(MXSessionManager *)self copyMXCoreSessionList];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [copyMXCoreSessionList countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(copyMXCoreSessionList);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 audioSessionID] == d)
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [copyMXCoreSessionList countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  return v9;
}

- (id)copyActiveSessionsInfoForAdditiveRouting
{
  v18 = *MEMORY[0x1E69E9840];
  v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
  copyMXCoreSessionList = [(MXSessionManager *)self copyMXCoreSessionList];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [copyMXCoreSessionList countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(copyMXCoreSessionList);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        if (objc_msgSend_isActive(v8) && !-[MXSessionManager isSpeechDetectCategory:](self, "isSpeechDetectCategory:", [v8 audioCategory]) && (objc_msgSend(v8, "isIDSMXCoreSession") & 1) == 0 && (objc_msgSend(v8, "isHardwareSafetySession") & 1) == 0)
        {
          additiveRoutingInfo = [v8 additiveRoutingInfo];
          if (additiveRoutingInfo)
          {
            [v12 addObject:additiveRoutingInfo];
          }

          else
          {
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }
        }
      }

      v5 = [copyMXCoreSessionList countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  return v12;
}

- (id)copySessionsThatUserIntendsToUnmute:(unsigned int)unmute
{
  v3 = *&unmute;
  v36 = *MEMORY[0x1E69E9840];
  v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
  VolumeButtonClient = CMSessionMgrFindVolumeButtonClient(v3, v5);
  if (VolumeButtonClient && (v7 = VolumeButtonClient, objc_msgSend_isActive(VolumeButtonClient)))
  {
    isOutputMuted = [v7 isOutputMuted];
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (isOutputMuted)
    {
      [v23 addObject:v7];
    }
  }

  else
  {
    copyMXCoreSessionList = [(MXSessionManager *)self copyMXCoreSessionList];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v11 = [copyMXCoreSessionList countByEnumeratingWithState:&v24 objects:v30 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v25;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v25 != v13)
          {
            objc_enumerationMutation(copyMXCoreSessionList);
          }

          v15 = *(*(&v24 + 1) + 8 * i);
          if ([v15 isOutputMuted])
          {
            if (dword_1EB75DE40)
            {
              v29 = 0;
              type = OS_LOG_TYPE_DEFAULT;
              v16 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v17 = v29;
              v18 = type;
              if (os_log_type_enabled(v16, type))
              {
                v19 = v17;
              }

              else
              {
                v19 = v17 & 0xFFFFFFFE;
              }

              if (v19)
              {
                clientName = [v15 clientName];
                v31 = 136315394;
                v32 = "[MXSessionManager copySessionsThatUserIntendsToUnmute:]";
                v33 = 2114;
                v34 = clientName;
                LODWORD(v22) = 22;
                _os_log_send_and_compose_impl(v19, 0, v35, 128, &dword_1B17A2000, v16, v18, "-MXSessionManager- %s: Found outputMuted session '%{public}@'", &v31, v22);
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            [v23 addObject:v15];
          }
        }

        v12 = [copyMXCoreSessionList countByEnumeratingWithState:&v24 objects:v30 count:16];
      }

      while (v12);
    }
  }

  return v23;
}

- (void)handleUserIntentToUnmute:(unsigned int)unmute
{
  v3 = *&unmute;
  v20 = *MEMORY[0x1E69E9840];
  if (CMSMDeviceState_SupportsShortFormOutputMutingAudioPolicy(self, a2))
  {
    v4 = [+[MXSessionManager sharedInstance](MXSessionManager copySessionsThatUserIntendsToUnmute:"copySessionsThatUserIntendsToUnmute:", v3];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v16;
      v8 = &qword_1EB75D000;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v16 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v10 = *(*(&v15 + 1) + 8 * i);
          if (objc_msgSend_isActive(v10) && [v10 hasAudioMode:@"ShortFormVideo"])
          {
            if (dword_1EB75DE40)
            {
              v11 = v4;
              v12 = v8;
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
              v8 = v12;
              fig_log_call_emit_and_clean_up_after_send_and_compose();
              v4 = v11;
            }

            [v10 setIsOutputMuted:0];
            cmsBeginInterruptionGuts(v10, 0, 2);
            [+[MXSessionManager sharedInstance](MXSessionManager unmuteOutputForSession:"unmuteOutputForSession:", v10];
            CMSMNotificationUtility_PostIsOutputMutedDidChange(v10, v14);
          }

          CMSMNotificationUtility_PostUserIntentToUnmuteDidChange(v10, 1);
        }

        v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v6);
    }
  }
}

- (void)dumpDebugInfo
{
  v45 = *MEMORY[0x1E69E9840];
  v3 = &qword_1EB75D000;
  if (dword_1EB75DE40)
  {
    v36 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [(NSRecursiveLock *)[(MXSessionManager *)self propertiesLock] lock];
  if (dword_1EB75DE40)
  {
    v36 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if ([(NSMutableDictionary *)[(MXSessionManager *)self pickableRoutesDescriptions] count])
  {
    CFDictionaryApplyFunction([(MXSessionManager *)self pickableRoutesDescriptions], CMSMUtility_PrintRouteDescriptions, 0);
  }

  if (dword_1EB75DE40)
  {
    v36 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [(NSRecursiveLock *)[(MXSessionManager *)self propertiesLock] unlock];
  if (dword_1EB75DE40)
  {
    v36 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  devicesSampleRates = [(MXSessionManager *)self devicesSampleRates];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v9 = [(NSDictionary *)devicesSampleRates countByEnumeratingWithState:&v31 objects:v43 count:16];
  if (v9)
  {
    v10 = v9;
    v30 = *v32;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v32 != v30)
        {
          objc_enumerationMutation(devicesSampleRates);
        }

        v12 = *(*(&v31 + 1) + 8 * i);
        v13 = [(NSDictionary *)devicesSampleRates objectForKey:v12];
        if (dword_1EB75DE40)
        {
          v14 = v13;
          v36 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          v15 = v3;
          v16 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v17 = v36;
          v18 = type;
          if (os_log_type_enabled(v16, type))
          {
            v19 = v17;
          }

          else
          {
            v19 = v17 & 0xFFFFFFFE;
          }

          if (v19)
          {
            VADNameForVADID = CMSMUtility_GetVADNameForVADID([v12 unsignedIntValue]);
            v37 = 136315650;
            v38 = "[MXSessionManager dumpDebugInfo]";
            v39 = 2114;
            v40 = VADNameForVADID;
            v41 = 2114;
            v42 = v14;
            LODWORD(v29) = 32;
            _os_log_send_and_compose_impl(v19, 0, v44, 128, &dword_1B17A2000, v16, v18, "-MXSessionManager- %s: '%{public}@' sample rate=%{public}@", &v37, v29);
          }

          v3 = v15;
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }

      v10 = [(NSDictionary *)devicesSampleRates countByEnumeratingWithState:&v31 objects:v43 count:16];
    }

    while (v10);
  }

  if (dword_1EB75DE40)
  {
    v36 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v21 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v22 = v36;
    v23 = type;
    if (os_log_type_enabled(v21, type))
    {
      v24 = v22;
    }

    else
    {
      v24 = v22 & 0xFFFFFFFE;
    }

    if (v24)
    {
      v37 = 136315138;
      v38 = "[MXSessionManager dumpDebugInfo]";
      _os_log_send_and_compose_impl(v24, 0, v44, 128, &dword_1B17A2000, v21, v23, "-MXSessionManager- %s: #######################################################################################################################################", &v37);
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    if (dword_1EB75DE40)
    {
      v36 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v25 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v26 = v36;
      v27 = type;
      if (os_log_type_enabled(v25, type))
      {
        v28 = v26;
      }

      else
      {
        v28 = v26 & 0xFFFFFFFE;
      }

      if (v28)
      {
        v37 = 136315138;
        v38 = "[MXSessionManager dumpDebugInfo]";
        _os_log_send_and_compose_impl(v28, 0, v44, 128, &dword_1B17A2000, v25, v27, "-MXSessionManager- %s: =======================================================================================================================================", &v37);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }
}

- (void)getUpdatedDuckVolume:(id)volume outDuckVolume:(float *)duckVolume
{
  if (volume)
  {
    [volume duckToLevelDB];
    v7 = v6;
    if (v6 == -40.0)
    {
      if ([volume duckToLevelScalarSetByClient])
      {
        v8 = 0;
        v7 = -40.0;
      }

      else
      {
        CurrentOutputPortAtIndex = CMSMUtility_GetCurrentOutputPortAtIndex(0);
        DoesPortSupportDoAP = vaeDoesPortSupportDoAP(CurrentOutputPortAtIndex);
        v8 = DoesPortSupportDoAP != 0;
        if (DoesPortSupportDoAP)
        {
          v7 = -68.0;
        }

        else
        {
          v7 = -40.0;
        }
      }
    }

    else
    {
      v8 = 0;
    }

    duckToLevelDBSetByClient = [volume duckToLevelDBSetByClient];
    v12 = CMSMUtility_GetCurrentOutputPortAtIndex(0);
    if (vaeDoesPortSupportSoftwareVolume(v12))
    {
      if (v8 | duckToLevelDBSetByClient)
      {
        *duckVolume = vaeGetDestinationVolumeScalarFactor(v7, *duckVolume);
      }
    }
  }
}

- (void)addDuckerToSession:(id)session duckerSession:(id)duckerSession duckingSource:(id)source
{
  v24 = *MEMORY[0x1E69E9840];
  type = [source type];
  [source ID];
  isSingleton = [source isSingleton];
  if (duckerSession || type != 2)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    duckingSourceList = [session duckingSourceList];
    v11 = [duckingSourceList countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v20;
LABEL_5:
      v14 = 0;
      while (1)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(duckingSourceList);
        }

        v15 = *(*(&v19 + 1) + 8 * v14);
        if (isSingleton)
        {
          type2 = [source type];
          if (type2 == [v15 type])
          {
            break;
          }
        }

        type3 = [source type];
        if (type3 == [v15 type])
        {
          v18 = [source ID];
          if (v18 == [v15 ID] && objc_msgSend(source, "type") == 2)
          {
            break;
          }
        }

        if (v12 == ++v14)
        {
          v12 = [duckingSourceList countByEnumeratingWithState:&v19 objects:v23 count:16];
          if (v12)
          {
            goto LABEL_5;
          }

          goto LABEL_15;
        }
      }
    }

    else
    {
LABEL_15:
      [objc_msgSend(session "duckingSourceList")];
    }
  }
}

- (void)removeDuckerForSession:(id)session sessionCausingUnduck:(id)unduck duckingSource:(id)source outLastDuckingSourceWasRemoved:(BOOL *)removed
{
  v33 = *MEMORY[0x1E69E9840];
  if ([source type] == 3)
  {
    [objc_msgSend(session "duckingSourceList")];
LABEL_32:
    *removed = 1;
    return;
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  duckingSourceList = [session duckingSourceList];
  v10 = [duckingSourceList countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v28;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v28 != v12)
        {
          objc_enumerationMutation(duckingSourceList);
        }

        v14 = *(*(&v27 + 1) + 8 * i);
        type = [source type];
        if (type != 1 || (type = [v14 type], type != 1))
        {
          if ((!MX_FeatureFlags_IsRelativeVoiceOverVolumeEnabled(type, v16) || [source type] != 6 || objc_msgSend(v14, "type") != 6) && (objc_msgSend(source, "type") != 7 || objc_msgSend(v14, "type") != 7) && (objc_msgSend(source, "type") != 8 || objc_msgSend(v14, "type") != 8))
          {
            type2 = [source type];
            if (type2 != [v14 type])
            {
              continue;
            }

            v18 = [source ID];
            if (v18 != [v14 ID])
            {
              continue;
            }
          }
        }

        if (v14)
        {
          [objc_msgSend(session "duckingSourceList")];
        }

        goto LABEL_24;
      }

      v11 = [duckingSourceList countByEnumeratingWithState:&v27 objects:v32 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_24:
  if (![objc_msgSend(session "duckingSourceList")])
  {
    goto LABEL_32;
  }

  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  duckingSourceList2 = [session duckingSourceList];
  v20 = [duckingSourceList2 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v24;
    while (1)
    {
      if (*v24 != v22)
      {
        objc_enumerationMutation(duckingSourceList2);
      }

      if (!--v21)
      {
        v21 = [duckingSourceList2 countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (!v21)
        {
          break;
        }
      }
    }
  }
}

- (float)getDuckVolumeForBlurEffect:(id)effect duckeeSession:(id)session
{
  v28 = *MEMORY[0x1E69E9840];
  v25 = 0;
  *cf = 0u;
  *v24 = 0u;
  CurrentAudioDestination = CMSUtility_GetCurrentAudioDestination(session);
  cmsmCopyCurrentActiveRouteInfoAtIndexForVADUID(CurrentAudioDestination, 0, &cf[1], &v24[1], v24);
  v8 = -[MXSessionManager getUncustomizedCategory:](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "getUncustomizedCategory:", [session audioCategory]);
  audioMode = [session audioMode];
  v26[0] = *cf;
  v26[1] = *v24;
  v27 = v25;
  v10 = PVMGetVolumePreference(v8, audioMode, v26);
  if (cf[1])
  {
    CFRelease(cf[1]);
  }

  if (v24[1])
  {
    CFRelease(v24[1]);
  }

  if (cf[1])
  {
    CFRelease(cf[1]);
  }

  outData = v10;
  CurrentOutputVADID = CMSUtility_GetCurrentOutputVADID(session);
  if (vaemConvertToDecibelInVAD(CurrentOutputVADID, &outData))
  {
    outData = 0.0;
  }

  if (effect)
  {
    [effect duckToLevelDB];
    v13 = *&v12;
  }

  else
  {
    v13 = -40.0;
  }

  v14 = 1.0;
  if (outData > v13)
  {
    *&v12 = v13;
    [(MXSessionManager *)self getScalarVolume:v12];
    v16 = v15;
    *&v17 = outData;
    [(MXSessionManager *)self getScalarVolume:v17];
    v14 = v16 / v18;
  }

  if (v14 <= 1.0)
  {
    v19 = v14;
  }

  else
  {
    v19 = 1.0;
  }

  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return v19;
}

- (BOOL)areDuckerAndDuckeePlayingOnDifferentVADs:(id)ds duckerSession:(id)session
{
  v10 = *MEMORY[0x1E69E9840];
  CurrentOutputVADID = CMSUtility_GetCurrentOutputVADID(ds);
  if (session)
  {
    VADIDForVADName = CMSUtility_GetCurrentOutputVADID(session);
  }

  else
  {
    VADIDForVADName = CMSMUtility_GetVADIDForVADName(0x1F2893B70);
  }

  v7 = VADIDForVADName;
  if (CurrentOutputVADID != VADIDForVADName && dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return CurrentOutputVADID != v7;
}

- (void)duckVolume:(id)volume duckerSession:(id)session duckingSource:(id)source
{
  v33 = *MEMORY[0x1E69E9840];
  if (session && CMSUtility_SessionDucksOthers(volume))
  {
    if (!dword_1EB75DE40)
    {
      return;
    }

    v32 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
LABEL_23:
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return;
  }

  type = [source type];
  v11 = [source ID];
  [source duckVolume];
  v32 = v12;
  [source duckFadeDuration];
  v14 = v13;
  if (type)
  {
    v15 = 0;
  }

  else
  {
    v15 = CMSystemSoundMgr_SystemSoundMustBeHeard(v11) != 0;
  }

  PrefersNoDucking = CMSUtility_GetPrefersNoDucking(volume);
  if (PrefersNoDucking && type != 1 && !v15 && (!MX_FeatureFlags_IsRelativeVoiceOverVolumeEnabled(PrefersNoDucking, v17) || type != 6))
  {
    if (!dword_1EB75DE40)
    {
      return;
    }

    v22 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
    goto LABEL_23;
  }

  [(MXSessionManager *)self addDuckerToSession:volume duckerSession:session duckingSource:source];
  isDucked = [volume isDucked];
  if (isDucked)
  {
    return;
  }

  if (CMSMDeviceState_SupportsShortFormOutputMutingAudioPolicy(isDucked, v19) && [volume isOutputMuted])
  {
    if (!dword_1EB75DE40)
    {
      return;
    }

    v20 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
    goto LABEL_23;
  }

  [+[MXSessionManager sharedInstance](MXSessionManager cancelAnyInProgressRampIfNeeded:"cancelAnyInProgressRampIfNeeded:reason:" reason:volume, 1];
  [(MXSessionManager *)self getUpdatedDuckVolume:session outDuckVolume:&v32];
  if (session)
  {
    if (dword_1EB75DE40)
    {
      goto LABEL_25;
    }
  }

  else if (dword_1EB75DE40)
  {
LABEL_25:
    v23 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  LODWORD(v21) = v32;
  v24 = [MEMORY[0x1E696AD98] numberWithFloat:v21];
  LODWORD(v25) = v14;
  v26 = [MEMORY[0x1E696AD98] numberWithFloat:v25];
  CurrentOutputVADID = CMSUtility_GetCurrentOutputVADID(volume);
  vaemSetToolboxDuckingEnabled(CurrentOutputVADID, 1);
  CMSUtility_PostInterruptionCommandNotification(volume, 2u, [volume clientName], 0, v24, v26, 0, 0);
  LODWORD(v28) = v14;
  [(MXSessionManager *)self updateMostRecentDuckFadeDuration:1 duckOperation:session duckerSession:volume sessionToDuck:v28];
  [volume setIsDucked:1];
  LODWORD(v29) = v14;
  [volume setAudioQueueFadeDuration:v29];
  LODWORD(v30) = v32;
  [volume setAudioQueueDuckVolume:v30];
  LODWORD(v31) = v32;
  [session setLastDuckVolumeApplied:v31];
}

- (void)unduckVolume:(id)volume sessionCausingUnduck:(id)unduck duckingSource:(id)source
{
  v20 = *MEMORY[0x1E69E9840];
  if ([volume isDucked])
  {
    v9 = unduck ? unduck : volume;
    [v9 unduckFadeDuration];
    v11 = v10 <= 0.0 ? 0.5 : v10;
    v19 = 0;
    [(MXSessionManager *)self removeDuckerForSession:volume sessionCausingUnduck:unduck duckingSource:source outLastDuckingSourceWasRemoved:&v19];
    if (v19 == 1)
    {
      [volume setIsDucked:0];
      if (![volume interruptingSession])
      {
        *&v12 = v11;
        v13 = [MEMORY[0x1E696AD98] numberWithFloat:v12];
        LODWORD(v14) = 1.0;
        v15 = [MEMORY[0x1E696AD98] numberWithFloat:v14];
        if (dword_1EB75DE40)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        CMSUtility_PostInterruptionCommandNotification(volume, 3u, [volume clientName], 0, v15, v13, 0, 0);
        CurrentOutputVADID = CMSUtility_GetCurrentOutputVADID(volume);
        vaemSetToolboxDuckingEnabled(CurrentOutputVADID, 0);
        *&v18 = v11;
        [(MXSessionManager *)self updateMostRecentDuckFadeDuration:0 duckOperation:unduck duckerSession:volume sessionToDuck:v18];
      }
    }
  }
}

- (BOOL)isSessionDucked:(id)ducked duckingSource:(id)source
{
  v20 = *MEMORY[0x1E69E9840];
  LODWORD(v6) = [ducked isDucked];
  if (v6)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    duckingSourceList = [ducked duckingSourceList];
    v6 = [duckingSourceList countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v8 = v6;
      v9 = *v16;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(duckingSourceList);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          type = [v11 type];
          if (type == [source type])
          {
            v13 = [v11 ID];
            if (v13 == [source ID])
            {
              LOBYTE(v6) = 1;
              return v6;
            }
          }
        }

        v8 = [duckingSourceList countByEnumeratingWithState:&v15 objects:v19 count:16];
        LOBYTE(v6) = 0;
        if (v8)
        {
          continue;
        }

        break;
      }
    }
  }

  return v6;
}

- (id)getDuckingSource:(id)source duckerSession:(id)session
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  duckingSourceList = [source duckingSourceList];
  v6 = [duckingSourceList countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = *v14;
LABEL_3:
  v9 = 0;
  while (1)
  {
    if (*v14 != v8)
    {
      objc_enumerationMutation(duckingSourceList);
    }

    v10 = *(*(&v13 + 1) + 8 * v9);
    if ([v10 type] == 2)
    {
      v11 = [v10 ID];
      if (v11 == [objc_msgSend(session "ID")])
      {
        return v10;
      }
    }

    if (v7 == ++v9)
    {
      v7 = [duckingSourceList countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (void)duckSessionIfDuckerIsActive:(id)active
{
  v5 = CMSMUtility_CopyCurrentRouteTypes();
  v6 = CMSUtility_CopyActiveDuckerForSession(active);
  startAsyncDuckingOperation = [(MXSessionManager *)self startAsyncDuckingOperation];
  if (MX_FeatureFlags_IsRelativeVoiceOverVolumeEnabled(startAsyncDuckingOperation, v8))
  {
    if (v6)
    {
      v9 = [v6 hasAudioCategory:@"VoiceOver"];
      v10 = +[MXSessionManager sharedInstance];
      if (v9)
      {
        v11 = v6;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v10 = +[MXSessionManager sharedInstance];
      v9 = 0;
      v11 = 0;
    }

    v12 = v9 & [(MXSessionManager *)v10 duckSessionForVoiceOverIfNeeded:active voiceOverSession:v11];
  }

  else
  {
    LOBYTE(v12) = 0;
  }

  v21 = 0;
  if (v6 && (v12 & 1) == 0)
  {
    v13 = [MXDuckingSource alloc];
    v14 = [objc_msgSend(v6 "ID")];
    [v6 duckToLevelScalar];
    v21 = [MXDuckingSource initWithType:v13 ID:"initWithType:ID:duckVolume:duckFadeDuration:" duckVolume:2 duckFadeDuration:v14];
    [(MXSessionManager *)self duckVolume:active duckerSession:v6 duckingSource:?];
    [v6 setNeedToEndInterruption:1];
  }

  if ([(MXSessionManager *)self shouldDuckSessionForSpeakerVolumeLimit:active])
  {
    [+[MXSessionManager sharedInstance](MXSessionManager duckVolumeForSpeakerVolumeLimit];
    v16 = v15;
    v17 = [MXDuckingSource alloc];
    LODWORD(v18) = 0.5;
    LODWORD(v19) = v16;
    v20 = [(MXDuckingSource *)v17 initWithType:7 ID:0 duckVolume:v19 duckFadeDuration:v18];
    [(MXSessionManager *)self duckVolume:active duckerSession:0 duckingSource:v20];
  }

  [(MXSessionManager *)self endAsyncDuckingOperationForSession:active];
}

- (void)duckSessionsForDucker:(id)ducker sessionsToDuck:(id)duck
{
  v25 = *MEMORY[0x1E69E9840];
  if (duck)
  {
    [(MXSessionManager *)self startAsyncDuckingOperation];
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v6 = [duck countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v21;
      do
      {
        v9 = 0;
        do
        {
          if (*v21 != v8)
          {
            objc_enumerationMutation(duck);
          }

          v10 = *(*(&v20 + 1) + 8 * v9);
          v11 = [MXDuckingSource alloc];
          v12 = [objc_msgSend(ducker "ID")];
          [ducker duckToLevelScalar];
          v14 = v13;
          [ducker duckFadeDuration];
          LODWORD(v16) = v15;
          LODWORD(v17) = v14;
          v18 = [(MXDuckingSource *)v11 initWithType:2 ID:v12 duckVolume:v17 duckFadeDuration:v16];
          [+[MXSessionManager sharedInstance](MXSessionManager duckVolume:"duckVolume:duckerSession:duckingSource:" duckerSession:v10 duckingSource:ducker, v18];

          if ([v10 isCarSession])
          {
            [ducker setDuckCommandSentToCarSession:1];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [duck countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v7);
    }

    [(MXSessionManager *)self endAsyncDuckingOperationForSession:ducker];
  }
}

- (void)unduckSessionsForDucker:(id)ducker
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = -[MXDuckingSource initWithType:ID:duckVolume:duckFadeDuration:]([MXDuckingSource alloc], "initWithType:ID:duckVolume:duckFadeDuration:", 2, [objc_msgSend(ducker "ID")], 0.0, 0.0);
  copyMXCoreSessionList = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = [copyMXCoreSessionList countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(copyMXCoreSessionList);
        }

        v12 = *(*(&v22 + 1) + 8 * i);
        if ([v12 isDucked] && -[MXSessionManager isSessionDucked:duckingSource:](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "isSessionDucked:duckingSource:", v12, v6))
        {
          [v5 addObject:v12];
        }
      }

      v9 = [copyMXCoreSessionList countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v9);
  }

  [(MXSessionManager *)self startAsyncDuckingOperation];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v13 = [v5 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v19;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(v5);
        }

        v17 = *(*(&v18 + 1) + 8 * j);
        [+[MXSessionManager sharedInstance](MXSessionManager unduckVolume:"unduckVolume:sessionCausingUnduck:duckingSource:" sessionCausingUnduck:v17 duckingSource:ducker, v6];
        if ([v17 duckCommandSentToCarSession])
        {
          [v17 setDuckCommandSentToCarSession:0];
        }
      }

      v14 = [v5 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v14);
  }

  [(MXSessionManager *)self endAsyncDuckingOperationForSession:ducker];
}

- (void)unduckSessionsForDuckingSource:(id)source
{
  v16 = *MEMORY[0x1E69E9840];
  [(MXSessionManager *)self startAsyncDuckingOperation];
  copyMXCoreSessionList = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [copyMXCoreSessionList countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(copyMXCoreSessionList);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if ([+[MXSessionManager isSessionDucked:"isSessionDucked:duckingSource:"]
        {
          [+[MXSessionManager sharedInstance](MXSessionManager unduckVolume:"unduckVolume:sessionCausingUnduck:duckingSource:" sessionCausingUnduck:v10 duckingSource:0, source];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [copyMXCoreSessionList countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  [(MXSessionManager *)self endAsyncDuckingOperation];
}

- (void)updateDuckingSourceInfoForSession:(id)session duckerSession:(id)duckerSession duckVolume:(float)volume duckFadeDuration:(float)duration
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = [MXSessionManager getDuckingSource:"getDuckingSource:duckerSession:" duckerSession:?];
  if (v8)
  {
    v10 = v8;
    *&v9 = volume;
    [v8 setDuckVolume:v9];
    *&v11 = duration;

    [v10 setDuckFadeDuration:v11];
  }

  else
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

- (BOOL)isAnExistingDuckingSource:(id)source
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = CMSUtility_CopySessionsToDuck(1, 0, source);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [(__CFArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if ([(MXSessionManager *)self getDuckingSource:*(*(&v12 + 1) + 8 * i) duckerSession:source])
        {
          v10 = 1;
          goto LABEL_11;
        }
      }

      v7 = [(__CFArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (void)updateDuckVolume:(id)volume duckerSession:(id)session duckVolume:(float)duckVolume duckFadeDuration:(float)duration
{
  v20 = *MEMORY[0x1E69E9840];
  duckVolumeCopy = duckVolume;
  if (!CMSMDeviceState_SupportsShortFormOutputMutingAudioPolicy(self, a2) || ([volume isOutputMuted] & 1) == 0)
  {
    [+[MXSessionManager sharedInstance](MXSessionManager cancelAnyInProgressRampIfNeeded:"cancelAnyInProgressRampIfNeeded:reason:" reason:volume, 1];
    [(MXSessionManager *)self getUpdatedDuckVolume:session outDuckVolume:&duckVolumeCopy];
    *&v10 = duckVolumeCopy;
    v11 = [MEMORY[0x1E696AD98] numberWithFloat:v10];
    *&v12 = duration;
    v13 = [MEMORY[0x1E696AD98] numberWithFloat:v12];
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    CMSUtility_PostInterruptionCommandNotification(volume, 2u, [volume clientName], 0, v11, v13, 0, 0);
    *&v15 = duration;
    [(MXSessionManager *)self updateMostRecentDuckFadeDuration:1 duckOperation:session duckerSession:volume sessionToDuck:v15];
    *&v16 = duration;
    [volume setAudioQueueFadeDuration:v16];
    *&v17 = duckVolumeCopy;
    [volume setAudioQueueDuckVolume:v17];
    *&v18 = duckVolumeCopy;
    [session setLastDuckVolumeApplied:v18];
  }
}

- (BOOL)updateUnduckVolume:(id)volume duckerSession:(id)session unduckVolume:(float)unduckVolume unduckFadeDuration:(float)duration
{
  v23 = *MEMORY[0x1E69E9840];
  unduckVolumeCopy = unduckVolume;
  [+[MXSessionManager sharedInstance](MXSessionManager cancelAnyInProgressRampIfNeeded:"cancelAnyInProgressRampIfNeeded:reason:" reason:volume, 1];
  [(MXSessionManager *)self getUpdatedDuckVolume:session outDuckVolume:&unduckVolumeCopy];
  *&v10 = unduckVolumeCopy;
  v11 = [MEMORY[0x1E696AD98] numberWithFloat:v10];
  *&v12 = duration;
  v13 = [MEMORY[0x1E696AD98] numberWithFloat:v12];
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v15 = unduckVolumeCopy;
  if (unduckVolumeCopy == 1.0)
  {
    v20 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  else
  {
    CMSUtility_PostInterruptionCommandNotification(volume, 3u, [volume clientName], 0, v11, v13, 0, 0);
    *&v16 = duration;
    [(MXSessionManager *)self updateMostRecentDuckFadeDuration:0 duckOperation:session duckerSession:volume sessionToDuck:v16];
    *&v17 = duration;
    [volume setAudioQueueFadeDuration:v17];
    *&v18 = unduckVolumeCopy;
    [volume setAudioQueueDuckVolume:v18];
    *&v19 = unduckVolumeCopy;
    [session setLastDuckVolumeApplied:v19];
  }

  return v15 != 1.0;
}

- (BOOL)updateDuckVolumeForDucker:(id)ducker duckVolume:(float)volume duckFadeDuration:(float)duration
{
  v27 = *MEMORY[0x1E69E9840];
  v9 = 1;
  v10 = CMSUtility_CopySessionsToDuck(1, 0, ducker);
  [(MXSessionManager *)self startAsyncDuckingOperation];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v11 = [(__CFArray *)v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v23;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v22 + 1) + 8 * i);
        if (([v15 isDucked] & 1) == 0)
        {
          if (dword_1EB75DE40)
          {
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          v9 = 0;
          goto LABEL_13;
        }

        *&v16 = volume;
        *&v17 = duration;
        [(MXSessionManager *)self updateDuckingSourceInfoForSession:v15 duckerSession:ducker duckVolume:v16 duckFadeDuration:v17];
        *&v18 = volume;
        *&v19 = duration;
        [(MXSessionManager *)self updateDuckVolume:v15 duckerSession:ducker duckVolume:v18 duckFadeDuration:v19];
      }

      v12 = [(__CFArray *)v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }

    v9 = 1;
  }

LABEL_13:
  [(MXSessionManager *)self endAsyncDuckingOperation];

  return v9;
}

- (BOOL)updateUnduckVolumeForDucker:(id)ducker unduckVolume:(float)volume unduckFadeDuration:(float)duration
{
  v38 = *MEMORY[0x1E69E9840];
  v9 = CMSUtility_CopySessionsToDuck(1, 0, ducker);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v10 = [(__CFArray *)v9 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v33;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v33 != v12)
        {
          objc_enumerationMutation(v9);
        }

        if (([*(*(&v32 + 1) + 8 * i) isDucked] & 1) == 0)
        {
          if (dword_1EB75DE40)
          {
            v31 = 0;
            type = OS_LOG_TYPE_DEFAULT;
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          v23 = 0;
          goto LABEL_20;
        }
      }

      v11 = [(__CFArray *)v9 countByEnumeratingWithState:&v32 objects:v37 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  [(MXSessionManager *)self startAsyncDuckingOperation];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v14 = [(__CFArray *)v9 countByEnumeratingWithState:&v26 objects:v36 count:16];
  if (v14)
  {
    v17 = v14;
    v18 = *v27;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v27 != v18)
        {
          objc_enumerationMutation(v9);
        }

        v20 = *(*(&v26 + 1) + 8 * j);
        *&v15 = volume;
        *&v16 = duration;
        [(MXSessionManager *)self updateDuckingSourceInfoForSession:v20 duckerSession:ducker duckVolume:v15 duckFadeDuration:v16];
        *&v21 = volume;
        *&v22 = duration;
        [(MXSessionManager *)self updateUnduckVolume:v20 duckerSession:ducker unduckVolume:v21 unduckFadeDuration:v22];
      }

      v17 = [(__CFArray *)v9 countByEnumeratingWithState:&v26 objects:v36 count:16];
    }

    while (v17);
  }

  [(MXSessionManager *)self endAsyncDuckingOperation];
  v23 = 1;
LABEL_20:

  return v23;
}

- (int)updateDuckToLevelScalarSetByClient:(BOOL)client session:(id)session newLevel:(float)level newLevelSetByClient:(BOOL)byClient currentLevel:(float)currentLevel currentLevelSetByClient:(BOOL)setByClient
{
  setByClientCopy = setByClient;
  byClientCopy = byClient;
  clientCopy = client;
  v38 = *MEMORY[0x1E69E9840];
  session = [+[MXSessionManager sharedInstance](MXSessionManager isAnExistingDuckingSource:"isAnExistingDuckingSource:", session];
  [session lastDuckVolumeApplied];
  v16 = *&v17;
  *&v17 = level;
  if (clientCopy)
  {
    [session setDuckToLevelScalar:v17];
    [session setDuckToLevelScalarSetByClient:byClientCopy];
  }

  else
  {
    [session setUnduckToLevelScalar:v17];
    [session setUnduckToLevelScalarSetByClient:byClientCopy];
  }

  result = objc_msgSend_isActive(session);
  if (result)
  {
    if ([session interruptionStyle] != 32)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      return -15685;
    }

    if ([+[MXSessionManager voiceOverSessionWantsRelativeDucking:"voiceOverSessionWantsRelativeDucking:"]
    {
      if (dword_1EB75DE40)
      {
        v19 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      [(MXSessionManager *)self startAsyncDuckingOperation];
      [+[MXSessionManager sharedInstance](MXSessionManager updateDuckedSessionsForVoiceOver:"updateDuckedSessionsForVoiceOver:", session];
      [(MXSessionManager *)self endAsyncDuckingOperation];
      return 0;
    }

    if (clientCopy)
    {
      if (session)
      {
        if (v16 > level)
        {
          v21 = +[MXSessionManager sharedInstance];
          [session duckToLevelScalar];
          v23 = v22;
          [session duckFadeDuration];
          LODWORD(v25) = v24;
          LODWORD(v26) = v23;
          if (![(MXSessionManager *)v21 updateDuckVolumeForDucker:session duckVolume:v26 duckFadeDuration:v25])
          {
            v27 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
            *&v36 = currentLevel;
            [session setDuckToLevelScalar:v36];
            [session setDuckToLevelScalarSetByClient:setByClientCopy];
            return -15685;
          }

          return 0;
        }

        if (!dword_1EB75DE40)
        {
          return 0;
        }
      }

      else if (!dword_1EB75DE40)
      {
        return 0;
      }
    }

    else if (session)
    {
      if (level == 1.0)
      {
        [+[MXSessionManager sharedInstance](MXSessionManager unduckSessionsForDucker:"unduckSessionsForDucker:", session];
        return 0;
      }

      if (v16 < level)
      {
        v28 = +[MXSessionManager sharedInstance];
        [session unduckToLevelScalar];
        v30 = v29;
        [session unduckFadeDuration];
        LODWORD(v32) = v31;
        LODWORD(v33) = v30;
        if (![(MXSessionManager *)v28 updateUnduckVolumeForDucker:session unduckVolume:v33 unduckFadeDuration:v32])
        {
          v34 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          *&v37 = currentLevel;
          [session setUnduckToLevelScalar:v37];
          [session setUnduckToLevelScalarSetByClient:setByClientCopy];
          return -15685;
        }

        return 0;
      }

      if (!dword_1EB75DE40)
      {
        return 0;
      }
    }

    else if (!dword_1EB75DE40)
    {
      return 0;
    }

    v35 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return 0;
  }

  return result;
}

- (BOOL)shouldDuckSessionForVoiceOver:(id)over
{
  v9[16] = *MEMORY[0x1E69E9840];
  if (!over)
  {
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    return 0;
  }

  if ([over hasAudioCategory:@"VoiceOver"])
  {
    return 0;
  }

  v9[0] = 0;
  PVMCopyVolumeCategoryAndMode(-[MXSessionManager getUncustomizedCategory:](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "getUncustomizedCategory:", [over audioCategory]), objc_msgSend(over, "audioMode"), v9, 0);
  if ([over clientPriority] <= 0xA)
  {
    v6 = [v9[0] isEqualToString:@"Alert"];
    v4 = (v6 & 1) == 0 && (v6 = [v9[0] isEqualToString:@"Alarm"], (v6 & 1) == 0) && (v6 = objc_msgSend(over, "isTheAssistant"), !v6) || MX_FeatureFlags_IsAlertsRelativeVoiceOverVolumeEnabled(v6, v7) != 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)shouldSkipDuckingForVoiceOver:(id)over inActiveVoiceOverSession:(id)session
{
  v14 = *MEMORY[0x1E69E9840];
  if (session)
  {
    sessionCopy = session;
  }

  else
  {
    sessionCopy = 0;
  }

  [+[MXSessionManager sharedInstance](MXSessionManager duckScalarForVoiceOver];
  if (v7 >= 1.0)
  {
    if (sessionCopy && CMSUtility_SessionDucksOthers(sessionCopy) && !CMSUtility_AreSessionsRoutedToTheSamePhysicalDevice(over, sessionCopy))
    {
      if (dword_1EB75DE40)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        v13 = 1;
        goto LABEL_19;
      }

      goto LABEL_15;
    }

    goto LABEL_17;
  }

  if (sessionCopy || (sessionCopy = [(MXSessionManager *)self copyVoiceOverSession]) != 0)
  {
    if (!CMSUtility_AreSessionsRoutedToTheSamePhysicalDevice(over, sessionCopy))
    {
      goto LABEL_8;
    }

LABEL_17:
    v13 = 0;
    goto LABEL_18;
  }

  v10 = [+[MXSessionManager sharedInstance](MXSessionManager getProjectedAudioDestinationForCategory:"getProjectedAudioDestinationForCategory:mode:" mode:@"VoiceOver", @"Default"];
  CurrentAudioDestination = CMSUtility_GetCurrentAudioDestination(over);
  if (CMSMUtility_AreVADsRoutedToTheSamePhysicalDevice(v10, CurrentAudioDestination))
  {
    goto LABEL_17;
  }

LABEL_8:
  if (dword_1EB75DE40)
  {
    v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    v13 = 1;
LABEL_19:
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_18;
  }

LABEL_15:
  v13 = 1;
LABEL_18:

  return v13;
}

- (BOOL)isVoiceOverDuckingActive:(id)active outDuckScalar:(float *)scalar outDuckFadeDuration:(float *)duration
{
  activeCopy = active;
  if ((active || (activeCopy = [+[MXSessionManager copyActiveVoiceOverSession] sharedInstance]!= 0) && objc_msgSend_isActive(activeCopy, a2) && CMSUtility_SessionDucksOthers(activeCopy))
  {
    [activeCopy duckToLevelScalar];
    v10 = v9;
    [activeCopy duckFadeDuration];
    v12 = v11;
    v13 = 1;
    if (active)
    {
      goto LABEL_9;
    }
  }

  else
  {
    [+[MXSessionManager sharedInstance](MXSessionManager duckScalarForVoiceOver];
    v10 = v14;
    v13 = CMSMDeviceState_IsVoiceOverOn() != 0;
    v12 = 1050253722;
    if (active)
    {
      goto LABEL_9;
    }
  }

LABEL_9:
  *scalar = v10;
  *duration = v12;
  return v10 < 1.0 && v13;
}

- (BOOL)duckSessionForVoiceOverIfNeeded:(id)needed voiceOverSession:(id)session
{
  v16[24] = *MEMORY[0x1E69E9840];
  needed = [+[MXSessionManager sharedInstance](MXSessionManager shouldDuckSessionForVoiceOver:"shouldDuckSessionForVoiceOver:", needed];
  if (needed)
  {
    v16[0] = 0;
    needed = [+[MXSessionManager sharedInstance](MXSessionManager isVoiceOverDuckingActive:"isVoiceOverDuckingActive:outDuckScalar:outDuckFadeDuration:" outDuckScalar:session outDuckFadeDuration:v16 + 4, v16];
    if (needed)
    {
      copyActiveVoiceOverSession = [+[MXSessionManager sharedInstance](MXSessionManager copyActiveVoiceOverSession];
      v9 = [(MXSessionManager *)self shouldSkipDuckingForVoiceOver:needed inActiveVoiceOverSession:copyActiveVoiceOverSession];

      if (v9)
      {
        LOBYTE(needed) = 0;
      }

      else
      {
        v10 = [MXDuckingSource alloc];
        LODWORD(v11) = HIDWORD(v16[0]);
        LODWORD(v12) = v16[0];
        v13 = [(MXDuckingSource *)v10 initWithType:6 ID:0 duckVolume:v11 duckFadeDuration:v12];
        if (dword_1EB75DE40)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        [+[MXSessionManager sharedInstance](MXSessionManager duckVolume:"duckVolume:duckerSession:duckingSource:" duckerSession:needed duckingSource:0, v13];

        LOBYTE(needed) = 1;
      }
    }
  }

  return needed;
}

- (void)unduckSessionsForVoiceOverDuckingSource
{
  v2 = [MXDuckingSource alloc];
  LODWORD(v3) = 1050253722;
  v4 = [(MXDuckingSource *)v2 initWithType:6 ID:0 duckVolume:0.0 duckFadeDuration:v3];
  [+[MXSessionManager sharedInstance](MXSessionManager unduckSessionsForDuckingSource:"unduckSessionsForDuckingSource:", v4];
}

- (BOOL)voiceOverSessionWantsRelativeDucking:(id)ducking
{
  IsRelativeVoiceOverVolumeEnabled = MX_FeatureFlags_IsRelativeVoiceOverVolumeEnabled(self, a2);
  LOBYTE(v5) = 0;
  if (ducking)
  {
    if (IsRelativeVoiceOverVolumeEnabled)
    {
      v5 = [ducking hasAudioCategory:@"VoiceOver"];
      if (v5)
      {
        LOBYTE(v5) = CMSUtility_SessionDucksOthers(ducking);
      }
    }
  }

  return v5;
}

- (void)updateDuckedSessionsForVoiceOver:(id)over
{
  selfCopy = self;
  v43 = *MEMORY[0x1E69E9840];
  if (MX_FeatureFlags_IsRelativeVoiceOverVolumeEnabled(self, a2))
  {
    v36 = 0;
    v5 = [+[MXSessionManager sharedInstance](MXSessionManager isVoiceOverDuckingActive:"isVoiceOverDuckingActive:outDuckScalar:outDuckFadeDuration:" outDuckScalar:over outDuckFadeDuration:&v36 + 4, &v36];
    if (dword_1EB75DE40)
    {
      v35 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (v5)
    {
      copyMXCoreSessionList = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
      copyActiveVoiceOverSession = [+[MXSessionManager sharedInstance](MXSessionManager copyActiveVoiceOverSession];
      v9 = [MXDuckingSource alloc];
      LODWORD(v10) = HIDWORD(v36);
      LODWORD(v11) = v36;
      v12 = [(MXDuckingSource *)v9 initWithType:6 ID:0 duckVolume:v10 duckFadeDuration:v11];
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v13 = [copyMXCoreSessionList countByEnumeratingWithState:&v30 objects:v37 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v31;
        v28 = copyActiveVoiceOverSession;
        v29 = selfCopy;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v31 != v15)
            {
              objc_enumerationMutation(copyMXCoreSessionList);
            }

            v17 = *(*(&v30 + 1) + 8 * i);
            if (objc_msgSend_isActive(v17))
            {
              v18 = [(MXSessionManager *)selfCopy shouldSkipDuckingForVoiceOver:v17 inActiveVoiceOverSession:copyActiveVoiceOverSession];
              if ([+[MXSessionManager isSessionDucked:"isSessionDucked:duckingSource:"]
              {
                if (v18)
                {
                  if (dword_1EB75DE40)
                  {
                    v35 = 0;
                    type = OS_LOG_TYPE_DEFAULT;
                    v19 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                    v20 = v35;
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
                      clientName = [v17 clientName];
                      v38 = 136315394;
                      v39 = "[MXSessionManager(DuckingUtilities) updateDuckedSessionsForVoiceOver:]";
                      v40 = 2114;
                      v41 = clientName;
                      LODWORD(v27) = 22;
                      _os_log_send_and_compose_impl(v22, 0, v42, 128, &dword_1B17A2000, v19, v21, "-MXSessionManagerDuckingUtilities- %s: Unducking %{public}@ because it is playing to a different physical location than VoiceOver.", &v38, v27);
                    }

                    fig_log_call_emit_and_clean_up_after_send_and_compose();
                    copyActiveVoiceOverSession = v28;
                    selfCopy = v29;
                  }

                  [+[MXSessionManager sharedInstance](MXSessionManager unduckVolume:"unduckVolume:sessionCausingUnduck:duckingSource:" sessionCausingUnduck:v17 duckingSource:0, v12];
                }

                else
                {
                  v24 = +[MXSessionManager sharedInstance];
                  LODWORD(v25) = HIDWORD(v36);
                  LODWORD(v26) = v36;
                  [(MXSessionManager *)v24 updateDuckVolume:v17 duckerSession:0 duckVolume:v25 duckFadeDuration:v26];
                }
              }

              else if (!v18 && [+[MXSessionManager shouldDuckSessionForVoiceOver:"shouldDuckSessionForVoiceOver:"]
              {
                [+[MXSessionManager sharedInstance](MXSessionManager duckVolume:"duckVolume:duckerSession:duckingSource:" duckerSession:v17 duckingSource:0, v12];
              }
            }
          }

          v14 = [copyMXCoreSessionList countByEnumeratingWithState:&v30 objects:v37 count:16];
        }

        while (v14);
      }
    }

    else
    {
      [(MXSessionManager *)selfCopy unduckSessionsForVoiceOverDuckingSource];
    }
  }
}

- (void)muteOutputForSession:(id)session
{
  v18 = *MEMORY[0x1E69E9840];
  if (CMSMDeviceState_SupportsShortFormOutputMutingAudioPolicy(self, a2) && !CMSMUtility_IsCategoryInputOnly([session audioCategory]))
  {
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v6 = objc_alloc(MEMORY[0x1E696AD98]);
    LODWORD(v7) = 1036831949;
    v8 = [v6 initWithFloat:v7];
    v9 = [objc_alloc(MEMORY[0x1E696AD98]) initWithFloat:0.0];
    v10 = [MXDuckingSource alloc];
    [v9 floatValue];
    v12 = v11;
    [v8 floatValue];
    LODWORD(v14) = v13;
    LODWORD(v15) = v12;
    v16 = [(MXDuckingSource *)v10 initWithType:8 ID:0 duckVolume:v15 duckFadeDuration:v14];
    [(MXSessionManager *)self addDuckerToSession:session duckerSession:0 duckingSource:v16];
    [+[MXSessionManager sharedInstance](MXSessionManager cancelAnyInProgressRampIfNeeded:"cancelAnyInProgressRampIfNeeded:reason:" reason:session, 1];
    CurrentOutputVADID = CMSUtility_GetCurrentOutputVADID(session);
    vaemSetToolboxDuckingEnabled(CurrentOutputVADID, 1);
    CMSUtility_PostInterruptionCommandNotification(session, 2u, [session clientName], 0, v9, v8, 0, 0);
    [session setIsDucked:1];
    [session setNeedToEndInterruption:1];
    [v8 floatValue];
    [session setAudioQueueFadeDuration:?];
    [v9 floatValue];
    [session setAudioQueueDuckVolume:?];
  }
}

- (void)unmuteOutputForSession:(id)session
{
  v21 = *MEMORY[0x1E69E9840];
  if (CMSMDeviceState_SupportsShortFormOutputMutingAudioPolicy(self, a2) && !CMSMUtility_IsCategoryInputOnly([session audioCategory]))
  {
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v6 = objc_alloc(MEMORY[0x1E696AD98]);
    LODWORD(v7) = 1036831949;
    v8 = [v6 initWithFloat:v7];
    v9 = objc_alloc(MEMORY[0x1E696AD98]);
    LODWORD(v10) = 1.0;
    v11 = [v9 initWithFloat:v10];
    v12 = [MXDuckingSource alloc];
    [v11 floatValue];
    v14 = v13;
    [v8 floatValue];
    LODWORD(v16) = v15;
    LODWORD(v17) = v14;
    v18 = [(MXDuckingSource *)v12 initWithType:8 ID:0 duckVolume:v17 duckFadeDuration:v16];
    v20[0] = 0;
    [(MXSessionManager *)self removeDuckerForSession:session sessionCausingUnduck:0 duckingSource:v18 outLastDuckingSourceWasRemoved:v20];
    if (v20[0] == 1)
    {
      CurrentOutputVADID = CMSUtility_GetCurrentOutputVADID(session);
      vaemSetToolboxDuckingEnabled(CurrentOutputVADID, 0);
      CMSUtility_PostInterruptionCommandNotification(session, 3u, [session clientName], 0, v11, v8, 0, 0);
      [session setIsDucked:0];
    }
  }
}

- (float)getSleepDurationForDuckFadeDuration:(float)duration
{
  if (duration >= 0.5)
  {
    duration = duration * 0.6;
  }

  else if (duration >= 0.3 && duration < 0.5)
  {
    duration = 0.3;
  }

  return fminf(duration, 5.0);
}

- (void)updateMostRecentDuckFadeDuration:(float)duration duckOperation:(BOOL)operation duckerSession:(id)session sessionToDuck:(id)duck
{
  operationCopy = operation;
  if ([duck isPlayingOutput] && !-[MXSessionManager isSpeechDetectCategory:](self, "isSpeechDetectCategory:", objc_msgSend(session, "audioCategory")))
  {
    [(MXSessionManager *)self mostRecentDuckFadeDuration];
    if (*&v10 > duration)
    {
      [(MXSessionManager *)self mostRecentDuckFadeDuration];
      duration = *&v10;
    }

    *&v10 = duration;
    [(MXSessionManager *)self setMostRecentDuckFadeDuration:v10];

    [(MXSessionManager *)self setMostRecentDuckOperation:operationCopy];
  }
}

- (void)endAsyncDuckingOperationForSession:(id)session
{
  v7 = *MEMORY[0x1E69E9840];
  IsOffloadActivationOffACQEnabled = MX_FeatureFlags_IsOffloadActivationOffACQEnabled(self, a2);
  if (session && IsOffloadActivationOffACQEnabled && ([session isInterruptionCalledOffAudioControlQueue] & 1) != 0)
  {
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  else
  {

    [(MXSessionManager *)self endAsyncDuckingOperation];
  }
}

- (void)getAndResetAsyncDuckingParameters:(BOOL *)parameters mostRecentDuckFadeDuration:(float *)duration
{
  if (MX_FeatureFlags_IsOffloadActivationOffACQEnabled(self, a2))
  {
    *parameters = [(MXSessionManager *)self mostRecentDuckOperation];
    [(MXSessionManager *)self mostRecentDuckFadeDuration];
    *duration = v7;
    [(MXSessionManager *)self setMostRecentDuckFadeDuration:0.0];

    [(MXSessionManager *)self setMostRecentDuckOperation:0];
  }
}

- (void)sleepForAsyncDucking:(BOOL)ducking duration:(float)duration
{
  v10 = *MEMORY[0x1E69E9840];
  if (MX_FeatureFlags_IsAsyncDuckingEnabled(self, a2))
  {
    *&v6 = duration;
    [(MXSessionManager *)self getSleepDurationForDuckFadeDuration:v6];
    if (v7 > 0.0)
    {
      v8 = v7;
      if (dword_1EB75DE40)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      [MEMORY[0x1E696AF00] sleepForTimeInterval:v8];
    }
  }
}

- (BOOL)shouldDuckSessionForSpeakerVolumeLimit:(id)limit
{
  v14[22] = *MEMORY[0x1E69E9840];
  if (([limit isSharePlayCallSession] & 1) != 0 || (objc_msgSend(limit, "isSharePlayMediaSession") & 1) != 0 || !PVMIsMaxVolumeLimitForBuiltInSpeakerEnabled())
  {
    return 0;
  }

  v13 = 0;
  v14[0] = 0;
  v11 = 0;
  v12 = 0;
  v9 = 0;
  v10 = 0;
  v8 = 0;
  PVMCopyCurrentState(0, v14, &v13, &v12, &v11, &v10);
  if ([v12 isEqualToString:@"Speaker"] && objc_msgSend(v11, "isEqualToString:", @"Speaker") && (v4 = objc_msgSend(v14[0], "isEqualToString:", @"Audio/Video"), PVMCopyVolumeCategoryAndMode(objc_msgSend(limit, "audioCategory"), objc_msgSend(limit, "audioMode"), &v9, &v8), objc_msgSend(v9, "isEqualToString:", @"Audio/Video")))
  {
    v5 = v4 ^ 1;
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)interruptEligibleSessionsOnContinuityScreenOutputPortAvailableDidChange
{
  v15 = *MEMORY[0x1E69E9840];
  if (MX_FeatureFlags_IsInterruptingPlayingSessionsInOnenessEnabled(self, a2))
  {
    copyMXCoreSessionList = [(MXSessionManager *)self copyMXCoreSessionList];
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = [copyMXCoreSessionList countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v11;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(copyMXCoreSessionList);
          }

          v8 = *(*(&v10 + 1) + 8 * i);
          if (objc_msgSend_isActive(v8) && ([v8 isTheAssistant] & 1) == 0 && (objc_msgSend(v8, "prefersNoInterruptionsDuringRemoteDeviceControl") & 1) == 0 && (objc_msgSend(v8, "hasPhoneCallBehavior") & 1) == 0 && !CMSMUtility_IsEmergencyAlertCategory(objc_msgSend(v8, "audioCategory")))
          {
            if (dword_1EB75DE40)
            {
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            CMSUtilityApplier_PostNotification_StopCommand(v8, 0);
          }
        }

        v5 = [copyMXCoreSessionList countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v5);
    }
  }
}

- (void)interruptRecordingSessionsOnContinuityScreenOutputPortAvailableDidChange
{
  v15 = *MEMORY[0x1E69E9840];
  if (MX_FeatureFlags_IsOnenessEnabled(self, a2))
  {
    copyMXCoreSessionList = [(MXSessionManager *)self copyMXCoreSessionList];
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = [copyMXCoreSessionList countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v11;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(copyMXCoreSessionList);
          }

          v8 = *(*(&v10 + 1) + 8 * i);
          if (objc_msgSend_isActive(v8) && [v8 isRecordingMutedForRemoteDevice] && (objc_msgSend(v8, "prefersNoInterruptionsDuringRemoteDeviceControl") & 1) == 0)
          {
            if (dword_1EB75DE40)
            {
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            CMSUtilityApplier_PostNotification_StopCommand(v8, 0);
          }
        }

        v5 = [copyMXCoreSessionList countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v5);
    }
  }
}

- (void)processContinuityScreenOutputPortAvailableDidChange:(BOOL)change
{
  changeCopy = change;
  v5 = *MEMORY[0x1E69E9840];
  if (!change)
  {
    [(MXSessionManager *)self interruptRecordingSessionsOnContinuityScreenOutputPortAvailableDidChange];
  }

  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  +[MXSystemController notifyAll:payload:dontPostIfSuspended:](MXSystemController, "notifyAll:payload:dontPostIfSuspended:", @"ContinuityScreenOutputPortAvailableDidChange", [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", changeCopy), @"ContinuityScreenOutputPortAvailableDidChange_IsPortAvailable", 0}], 0);
}

- (id)getBluetoothCustomizedAlternateCategory:(id)category enableBluetooth:(BOOL)bluetooth
{
  if (bluetooth)
  {
    figCustomizedCategoryWithBluetooth_Dict = [(MXSessionManager *)self figCustomizedCategoryWithBluetooth_Dict];
  }

  else
  {
    figCustomizedCategoryWithBluetooth_Dict = [(MXSessionManager *)self figCustomizedCategoryWithoutBluetooth_Dict];
  }

  result = [(NSDictionary *)figCustomizedCategoryWithBluetooth_Dict objectForKey:category];
  if (!result)
  {
    return category;
  }

  return result;
}

- (BOOL)getQuiesceableWiredPortAutoRouteOnConnectPreference:(unsigned int)preference
{
  v3 = *&preference;
  v12 = *MEMORY[0x1E69E9840];
  if (!MX_FeatureFlags_IsQuiesceableWiredConnectionEnabled(self, a2))
  {
    return 0;
  }

  if (!v3)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return 0;
  }

  v5 = vaeCopyPersistentUID(v3);
  v6 = [(NSMutableDictionary *)[(MXSessionManager *)self quiesceableWiredPortsAutoRouteOnConnectPreference] objectForKey:v5];
  if (v6)
  {
    bOOLValue = [v6 BOOLValue];
    if (dword_1EB75DE40)
    {
      v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  else
  {
    if (dword_1EB75DE40)
    {
      v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    bOOLValue = 1;
    [(MXSessionManager *)self setQuiesceableWiredPortPreference:v3 autoRouteOnConnect:1];
  }

  return bOOLValue;
}

- (void)setQuiesceableWiredPortPreference:(unsigned int)preference autoRouteOnConnect:(BOOL)connect
{
  connectCopy = connect;
  v11 = *MEMORY[0x1E69E9840];
  if (MX_FeatureFlags_IsQuiesceableWiredConnectionEnabled(self, a2))
  {
    if (preference)
    {
      v7 = vaeCopyPersistentUID(preference);
      quiesceableWiredPortsAutoRouteOnConnectPreference = [(MXSessionManager *)self quiesceableWiredPortsAutoRouteOnConnectPreference];
      -[NSMutableDictionary setObject:forKey:](quiesceableWiredPortsAutoRouteOnConnectPreference, "setObject:forKey:", [MEMORY[0x1E696AD98] numberWithBool:connectCopy], v7);
      if (dword_1EB75DE40)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      MXCFPreferencesSetAndSynchronizeUserPreference(@"quiesceableWiredPortsAutoRouteOnConnectPreference", [(MXSessionManager *)self quiesceableWiredPortsAutoRouteOnConnectPreference]);
    }

    else
    {
      v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }
}

- (void)setVADID:(unsigned int)d forVADName:(id)name
{
  v5 = *&d;
  v7 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:{-[MXSessionManager audioDeviceInfo](self, "audioDeviceInfo")}];
  [v7 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", v5), name}];
  [(MXSessionManager *)self updateDeviceSampleRate:v5];
  -[MXSessionManager setAudioDeviceInfo:](self, "setAudioDeviceInfo:", [MEMORY[0x1E695DF20] dictionaryWithDictionary:v7]);
}

- (BOOL)isVADIDRoutedToOutputPortType:(unsigned int)type portType:(unsigned int)portType
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = [+[MXAdditiveRoutingManager sharedInstance](MXAdditiveRoutingManager copyDetailedRouteDescription:"copyDetailedRouteDescription:", *&type];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [objc_msgSend(v5 objectForKey:{@"RouteDetailedDescription_Outputs", 0), "allObjects"}];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        if (vaeGetPortTypeFromPortID([objc_msgSend(*(*(&v13 + 1) + 8 * i) objectForKey:{@"RouteDetailedDescription_ID", "unsignedIntValue"}]) == portType)
        {
          v11 = 1;
          goto LABEL_11;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  return v11;
}

- (BOOL)isSessionWithAudioCategoryActive:(id)active
{
  v17 = *MEMORY[0x1E69E9840];
  copyMXCoreSessionList = [(MXSessionManager *)self copyMXCoreSessionList];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [copyMXCoreSessionList countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(copyMXCoreSessionList);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if (objc_msgSend_isActive(v9) && ([v9 hasAudioCategory:active] & 1) != 0)
        {
          v10 = 1;
          goto LABEL_12;
        }
      }

      v6 = [copyMXCoreSessionList countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_12:

  return v10;
}

- (BOOL)isSessionWithAudioModeActive:(id)active
{
  v17 = *MEMORY[0x1E69E9840];
  copyMXCoreSessionList = [(MXSessionManager *)self copyMXCoreSessionList];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [copyMXCoreSessionList countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(copyMXCoreSessionList);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if (objc_msgSend_isActive(v9) && ([v9 hasAudioMode:active] & 1) != 0)
        {
          v10 = 1;
          goto LABEL_12;
        }
      }

      v6 = [copyMXCoreSessionList countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_12:

  return v10;
}

- (BOOL)isSessionWithAudioModePlaying:(id)playing
{
  v17 = *MEMORY[0x1E69E9840];
  copyMXCoreSessionList = [(MXSessionManager *)self copyMXCoreSessionList];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [copyMXCoreSessionList countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(copyMXCoreSessionList);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if (objc_msgSend_isActive(v9) && [v9 isPlaying] && (objc_msgSend(v9, "hasAudioMode:", playing) & 1) != 0)
        {
          v10 = 1;
          goto LABEL_13;
        }
      }

      v6 = [copyMXCoreSessionList countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_13:

  return v10;
}

- (BOOL)areSessionsWithAudioModesActive:(id)active
{
  v17 = *MEMORY[0x1E69E9840];
  copyMXCoreSessionList = [(MXSessionManager *)self copyMXCoreSessionList];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [copyMXCoreSessionList countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(copyMXCoreSessionList);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if (objc_msgSend_isActive(v9) && ([active containsObject:{objc_msgSend(v9, "audioMode")}] & 1) != 0)
        {
          v10 = 1;
          goto LABEL_12;
        }
      }

      v6 = [copyMXCoreSessionList countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_12:

  return v10;
}

- (BOOL)isSessionWithAudioModeRecording:(id)recording
{
  v17 = *MEMORY[0x1E69E9840];
  copyMXCoreSessionList = [(MXSessionManager *)self copyMXCoreSessionList];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [copyMXCoreSessionList countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(copyMXCoreSessionList);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if (objc_msgSend_isActive(v9) && [v9 isRecording] && (objc_msgSend(v9, "hasAudioMode:", recording) & 1) != 0)
        {
          v10 = 1;
          goto LABEL_13;
        }
      }

      v6 = [copyMXCoreSessionList countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_13:

  return v10;
}

- (id)copyInterruptedSessions:(id)sessions
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  copyMXCoreSessionList = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [copyMXCoreSessionList countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(copyMXCoreSessionList);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if ([v10 waitingToResume] && objc_msgSend(v10, "interruptingSession") == sessions)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [copyMXCoreSessionList countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)copyDisplayIDForActiveCarPlayVideoSession
{
  v13 = *MEMORY[0x1E69E9840];
  copyMXCoreSessionList = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  displayID = [copyMXCoreSessionList countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (displayID)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != displayID; i = i + 1)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(copyMXCoreSessionList);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        if ([v6 isActiveOverAirPlayVideo] && CMSMUtility_IsCarPlayVideoActive())
        {
          displayID = [v6 displayID];
          goto LABEL_12;
        }
      }

      displayID = [copyMXCoreSessionList countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (displayID)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return displayID;
}

- (void)updateSomeAirPlayCapableVideoClientIsActive
{
  v15 = *MEMORY[0x1E69E9840];
  someAirPlayCapableVideoClientIsActive = [(MXSessionManager *)self someAirPlayCapableVideoClientIsActive];
  copyMXCoreSessionList = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [copyMXCoreSessionList countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(copyMXCoreSessionList);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if ([v8 isAirPlayCapableVideo] && ((objc_msgSend_isActive(v8) & 1) != 0 || (objc_msgSend(v8, "isPlaying") & 1) != 0))
        {
          v5 = 1;
          goto LABEL_13;
        }
      }

      v5 = [copyMXCoreSessionList countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  [(MXSessionManager *)self setSomeAirPlayCapableVideoClientIsActive:v5];
  if (someAirPlayCapableVideoClientIsActive != v5)
  {
    FigRoutingManagerUtilities_PostEndpointNotification(@"SomeAirPlayCapableVideoClientIsActiveDidChange");
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }
}

- (id)copyHighestPriorityActiveSession:(id)session deviceIdentifier:(id)identifier
{
  v26 = *MEMORY[0x1E69E9840];
  if (session && identifier)
  {
    v24 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  copyMXCoreSessionList = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = [copyMXCoreSessionList countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v20;
    v12 = 100;
    while (1)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(copyMXCoreSessionList);
        }

        v14 = *(*(&v19 + 1) + 8 * i);
        LocalSessionPriority = CMSM_GetLocalSessionPriority(v14, 1);
        if (objc_msgSend_isActive(v14))
        {
          v17 = LocalSessionPriority > v12;
        }

        else
        {
          v17 = 0;
        }

        if (v17 && CMSUtility_IsSessionPlayStateEligibleForTipi(v14, v16))
        {
          if (identifier)
          {
            if (CMSUtility_DoPickedEndpointsForSessionContainDeviceIdentifier(v14, identifier))
            {
              goto LABEL_20;
            }
          }

          else if (session && [CMSUtility_GetCurrentAudioDestination(v14) isEqualToString:session])
          {
LABEL_20:

            v10 = v14;
            v12 = LocalSessionPriority;
            continue;
          }
        }
      }

      v9 = [copyMXCoreSessionList countByEnumeratingWithState:&v19 objects:v25 count:16];
      if (!v9)
      {
        goto LABEL_25;
      }
    }
  }

  v10 = 0;
LABEL_25:

  return v10;
}

- (void)resetWaitingToResume:(id)resume
{
  v15 = *MEMORY[0x1E69E9840];
  copyMXCoreSessionList = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [copyMXCoreSessionList countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(copyMXCoreSessionList);
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        if ([v9 interruptingSession] == resume && objc_msgSend(v9, "waitingToResume"))
        {
          [v9 setWaitingToResume:0];
        }
      }

      v6 = [copyMXCoreSessionList countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (id)copySessionWithPID:(int)d
{
  v17 = *MEMORY[0x1E69E9840];
  copyMXCoreSessionList = [(MXSessionManager *)self copyMXCoreSessionList];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [copyMXCoreSessionList countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(copyMXCoreSessionList);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([objc_msgSend(v9 "clientPID")] == d)
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [copyMXCoreSessionList countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  return v9;
}

- (id)copySessionToBeMuted:(id *)muted
{
  v85 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = *&muted->var0[4];
  v83 = *muted->var0;
  v84 = v6;
  if (![(MXSessionManager *)self isAuditTokenValid:&v83])
  {
    v77 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
LABEL_28:
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    firstObject = 0;
    goto LABEL_29;
  }

  copyMXCoreSessionList = [(MXSessionManager *)self copyMXCoreSessionList];
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v8 = [copyMXCoreSessionList countByEnumeratingWithState:&v72 objects:v82 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v73;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v73 != v10)
        {
          objc_enumerationMutation(copyMXCoreSessionList);
        }

        v12 = *(*(&v72 + 1) + 8 * i);
        if (v12)
        {
          objc_msgSend_auditToken(*(*(&v72 + 1) + 8 * i));
        }

        else
        {
          v83 = 0u;
          v84 = 0u;
        }

        v13 = *&muted->var0[4];
        v81[0] = *muted->var0;
        v81[1] = v13;
        if ([(MXSessionManager *)self isAuditTokenEqual:&v83 compareTo:v81])
        {
          [v5 addObject:v12];
        }
      }

      v9 = [copyMXCoreSessionList countByEnumeratingWithState:&v72 objects:v82 count:16];
    }

    while (v9);
  }

  if (![v5 count])
  {
    v77 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v20 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v21 = v77;
    v22 = type;
    if (os_log_type_enabled(v20, type))
    {
      v23 = v21;
    }

    else
    {
      v23 = v21 & 0xFFFFFFFE;
    }

    if (v23)
    {
      LODWORD(v81[0]) = 136315138;
      *(v81 + 4) = "[MXSessionManager(Utilities) copySessionToBeMuted:]";
      _os_log_send_and_compose_impl(v23, 0, &v83, 128, &dword_1B17A2000, v20, v22, "-MXSessionManagerUtilities- %s: No sessions found", v81);
    }

    goto LABEL_28;
  }

  if ([v5 count] == 1)
  {
    firstObject = [v5 firstObject];
    if (dword_1EB75DE40)
    {
      v77 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v16 = v77;
      v17 = type;
      if (os_log_type_enabled(v15, type))
      {
        v18 = v16;
      }

      else
      {
        v18 = v16 & 0xFFFFFFFE;
      }

      if (v18)
      {
        LODWORD(v81[0]) = 136315138;
        *(v81 + 4) = "[MXSessionManager(Utilities) copySessionToBeMuted:]";
        _os_log_send_and_compose_impl(v18, 0, &v83, 128, &dword_1B17A2000, v15, v17, "-MXSessionManagerUtilities- %s: Only 1 session exists, returning this.", v81);
      }

LABEL_96:
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  else
  {
    if (dword_1EB75DE40)
    {
      v77 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v25 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v26 = v77;
      v27 = type;
      if (os_log_type_enabled(v25, type))
      {
        v28 = v26;
      }

      else
      {
        v28 = v26 & 0xFFFFFFFE;
      }

      if (v28)
      {
        LODWORD(v81[0]) = 136315138;
        *(v81 + 4) = "[MXSessionManager(Utilities) copySessionToBeMuted:]";
        _os_log_send_and_compose_impl(v28, 0, &v83, 128, &dword_1B17A2000, v25, v27, "-MXSessionManagerUtilities- %s: Looking for the candidate session.", v81);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v29 = [v5 countByEnumeratingWithState:&v68 objects:v80 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v69;
LABEL_39:
      v32 = 0;
      while (1)
      {
        if (*v69 != v31)
        {
          objc_enumerationMutation(v5);
        }

        v33 = *(*(&v68 + 1) + 8 * v32);
        if (objc_msgSend_isActive(v33))
        {
          if ([v33 isRecording] && objc_msgSend(v33, "hasPhoneCallBehavior"))
          {
            break;
          }
        }

        if (v30 == ++v32)
        {
          v30 = [v5 countByEnumeratingWithState:&v68 objects:v80 count:16];
          if (v30)
          {
            goto LABEL_39;
          }

          goto LABEL_56;
        }
      }

      firstObject = v33;
      if (dword_1EB75DE40)
      {
        v77 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v34 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v35 = v77;
        v36 = type;
        if (os_log_type_enabled(v34, type))
        {
          v37 = v35;
        }

        else
        {
          v37 = v35 & 0xFFFFFFFE;
        }

        if (v37)
        {
          LODWORD(v81[0]) = 136315138;
          *(v81 + 4) = "[MXSessionManager(Utilities) copySessionToBeMuted:]";
          _os_log_send_and_compose_impl(v37, 0, &v83, 128, &dword_1B17A2000, v34, v36, "-MXSessionManagerUtilities- %s: Found the active call session.", v81);
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      if (firstObject)
      {
        goto LABEL_29;
      }
    }

LABEL_56:
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v38 = [v5 countByEnumeratingWithState:&v64 objects:v79 count:16];
    if (v38)
    {
      v39 = v38;
      v40 = *v65;
LABEL_58:
      v41 = 0;
      while (1)
      {
        if (*v65 != v40)
        {
          objc_enumerationMutation(v5);
        }

        v42 = *(*(&v64 + 1) + 8 * v41);
        if ([v42 hasPhoneCallBehavior])
        {
          break;
        }

        if (v39 == ++v41)
        {
          v39 = [v5 countByEnumeratingWithState:&v64 objects:v79 count:16];
          if (v39)
          {
            goto LABEL_58;
          }

          goto LABEL_73;
        }
      }

      firstObject = v42;
      if (dword_1EB75DE40)
      {
        v77 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v43 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v44 = v77;
        v45 = type;
        if (os_log_type_enabled(v43, type))
        {
          v46 = v44;
        }

        else
        {
          v46 = v44 & 0xFFFFFFFE;
        }

        if (v46)
        {
          LODWORD(v81[0]) = 136315138;
          *(v81 + 4) = "[MXSessionManager(Utilities) copySessionToBeMuted:]";
          _os_log_send_and_compose_impl(v46, 0, &v83, 128, &dword_1B17A2000, v43, v45, "-MXSessionManagerUtilities- %s: Found the phoneCall behavior session.", v81);
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      if (firstObject)
      {
        goto LABEL_29;
      }
    }

LABEL_73:
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v47 = [v5 countByEnumeratingWithState:&v60 objects:v78 count:16];
    if (v47)
    {
      v48 = v47;
      v49 = *v61;
LABEL_75:
      v50 = 0;
      while (1)
      {
        if (*v61 != v49)
        {
          objc_enumerationMutation(v5);
        }

        v51 = *(*(&v60 + 1) + 8 * v50);
        if ([v51 hostProcessAttribution])
        {
          break;
        }

        if (v48 == ++v50)
        {
          v48 = [v5 countByEnumeratingWithState:&v60 objects:v78 count:16];
          if (v48)
          {
            goto LABEL_75;
          }

          goto LABEL_90;
        }
      }

      firstObject = v51;
      if (dword_1EB75DE40)
      {
        v77 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v52 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v53 = v77;
        v54 = type;
        if (os_log_type_enabled(v52, type))
        {
          v55 = v53;
        }

        else
        {
          v55 = v53 & 0xFFFFFFFE;
        }

        if (v55)
        {
          LODWORD(v81[0]) = 136315138;
          *(v81 + 4) = "[MXSessionManager(Utilities) copySessionToBeMuted:]";
          _os_log_send_and_compose_impl(v55, 0, &v83, 128, &dword_1B17A2000, v52, v54, "-MXSessionManagerUtilities- %s: Found the session with host info.", v81);
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      if (firstObject)
      {
        goto LABEL_29;
      }
    }

LABEL_90:
    firstObject = [v5 firstObject];
    if (dword_1EB75DE40)
    {
      v77 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v56 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v57 = v77;
      v58 = type;
      if (os_log_type_enabled(v56, type))
      {
        v59 = v57;
      }

      else
      {
        v59 = v57 & 0xFFFFFFFE;
      }

      if (v59)
      {
        LODWORD(v81[0]) = 136315138;
        *(v81 + 4) = "[MXSessionManager(Utilities) copySessionToBeMuted:]";
        _os_log_send_and_compose_impl(v59, 0, &v83, 128, &dword_1B17A2000, v56, v58, "-MXSessionManagerUtilities- %s: Returning bundleID for any session for this client.", v81);
      }

      goto LABEL_96;
    }
  }

LABEL_29:

  return firstObject;
}

- (BOOL)isAuditTokenValid:(id *)valid
{
  if (valid->var0[0] != -1)
  {
    return 1;
  }

  v4 = 0;
  do
  {
    v5 = v4;
    if (v4 == 7)
    {
      break;
    }

    v6 = valid->var0[++v4];
  }

  while (v6 == -1);
  return v5 < 7;
}

- (BOOL)isAuditTokenEqual:(id *)equal compareTo:(id *)to
{
  v6 = *&equal->var0[4];
  *v16.val = *equal->var0;
  *&v16.val[4] = v6;
  v7 = audit_token_to_pid(&v16);
  v8 = *&to->var0[4];
  *v16.val = *to->var0;
  *&v16.val[4] = v8;
  v9 = audit_token_to_pid(&v16);
  v10 = *&equal->var0[4];
  *v16.val = *equal->var0;
  *&v16.val[4] = v10;
  v11 = audit_token_to_pidversion(&v16);
  v12 = *&to->var0[4];
  *v16.val = *to->var0;
  *&v16.val[4] = v12;
  v13 = audit_token_to_pidversion(&v16);
  return v7 == v9 && v11 == v13;
}

- (void)applyUplinkMute:(id)mute
{
  v13 = *MEMORY[0x1E69E9840];
  if (MX_FeatureFlags_IsSessionBasedMutingEnabled(self, a2))
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  else
  {
    v6 = CMSUtility_CopyBundleID(mute);
    if ([mute hasPhoneCallBehavior] && -[NSNumber BOOLValue](-[MXSessionManager applyUplinkMuteToPhoneCallBehaviorSession](self, "applyUplinkMuteToPhoneCallBehaviorSession"), "BOOLValue"))
    {
      [(MXSessionManager *)self updateMutedBundleIDs:v6 muteValue:1];
      if (dword_1EB75DE40)
      {
        v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      [(MXSessionManager *)self setApplyUplinkMuteToPhoneCallBehaviorSession:0];
    }

    if (objc_msgSend_isActive(mute) && [mute isRecording] && (objc_msgSend(mute, "isRecordingMuted") & 1) == 0 && -[NSSet containsObject:](-[MXSessionManager mutedSessionBundleIDs](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "mutedSessionBundleIDs"), "containsObject:", v6))
    {
      if (dword_1EB75DE40)
      {
        v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v9 = +[MXSessionManager sharedInstance];
      v10 = [MEMORY[0x1E696AD98] numberWithBool:1];
      *&v11 = -1;
      *(&v11 + 1) = -1;
      v12[0] = v11;
      v12[1] = v11;
      [(MXSessionManager *)v9 updateMuteState:v12 muteValue:v10];
    }
  }
}

- (void)replaceMutedBundleIDwithHostID
{
  v59 = *MEMORY[0x1E69E9840];
  if (MX_FeatureFlags_IsSessionBasedMutingEnabled(self, a2))
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  else
  {
    v4 = [MEMORY[0x1E695DFA8] setWithSet:{-[MXSessionManager mutedSessionBundleIDs](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "mutedSessionBundleIDs")}];
    v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    obj = v4;
    v6 = [v4 countByEnumeratingWithState:&v43 objects:v57 count:16];
    if (v6)
    {
      v7 = v6;
      v33 = *v44;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v44 != v33)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v43 + 1) + 8 * i);
          copyMXCoreSessionList = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
          v39 = 0u;
          v40 = 0u;
          v41 = 0u;
          v42 = 0u;
          v11 = [copyMXCoreSessionList countByEnumeratingWithState:&v39 objects:v56 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v40;
            do
            {
              for (j = 0; j != v12; ++j)
              {
                if (*v40 != v13)
                {
                  objc_enumerationMutation(copyMXCoreSessionList);
                }

                v15 = *(*(&v39 + 1) + 8 * j);
                if ([objc_msgSend(v15 "displayID")] && objc_msgSend(v15, "hasPhoneCallBehavior"))
                {
                  [v5 addObject:v15];
                }
              }

              v12 = [copyMXCoreSessionList countByEnumeratingWithState:&v39 objects:v56 count:16];
            }

            while (v12);
          }
        }

        v7 = [obj countByEnumeratingWithState:&v43 objects:v57 count:16];
      }

      while (v7);
    }

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v16 = [v5 countByEnumeratingWithState:&v35 objects:v55 count:16];
    if (v16)
    {
      v17 = v16;
      v34 = *v36;
      do
      {
        for (k = 0; k != v17; ++k)
        {
          if (*v36 != v34)
          {
            objc_enumerationMutation(v5);
          }

          v19 = *(*(&v35 + 1) + 8 * k);
          -[MXSessionManager updateMutedBundleIDs:muteValue:](self, "updateMutedBundleIDs:muteValue:", [v19 displayID], 0);
          v20 = CMSUtility_CopyBundleID(v19);
          [(MXSessionManager *)self updateMutedBundleIDs:v20 muteValue:1];
          if ([objc_msgSend(v19 "displayID")])
          {
            if (dword_1EB75DE40)
            {
              v48 = 0;
              type = OS_LOG_TYPE_DEFAULT;
              v21 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v22 = v48;
              v23 = type;
              if (os_log_type_enabled(v21, type))
              {
                v24 = v22;
              }

              else
              {
                v24 = v22 & 0xFFFFFFFE;
              }

              if (v24)
              {
                displayID = [v19 displayID];
                v49 = 136315651;
                v50 = "[MXSessionManager(Utilities) replaceMutedBundleIDwithHostID]";
                v51 = 2113;
                v52 = displayID;
                v53 = 2113;
                v54 = v20;
                LODWORD(v31) = 32;
                _os_log_send_and_compose_impl(v24, 0, v58, 128, &dword_1B17A2000, v21, v23, "-MXSessionManagerUtilities- %s: Updating muted bundleID for uplink mute from %{private}@ to %{private}@", &v49, v31);
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            [(MXSessionManager *)self setUplinkMutedBundleID:v20];
          }

          if (dword_1EB75DE40)
          {
            v48 = 0;
            type = OS_LOG_TYPE_DEFAULT;
            v26 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v27 = v48;
            v28 = type;
            if (os_log_type_enabled(v26, type))
            {
              v29 = v27;
            }

            else
            {
              v29 = v27 & 0xFFFFFFFE;
            }

            if (v29)
            {
              displayID2 = [v19 displayID];
              v49 = 136315651;
              v50 = "[MXSessionManager(Utilities) replaceMutedBundleIDwithHostID]";
              v51 = 2113;
              v52 = displayID2;
              v53 = 2113;
              v54 = v20;
              LODWORD(v31) = 32;
              _os_log_send_and_compose_impl(v29, 0, v58, 128, &dword_1B17A2000, v26, v28, "-MXSessionManagerUtilities- %s: Updating muted set for %{private}@ with %{private}@", &v49, v31);
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }
        }

        v17 = [v5 countByEnumeratingWithState:&v35 objects:v55 count:16];
      }

      while (v17);
    }
  }
}

- (void)updateMutedBundleIDs:(id)ds muteValue:(BOOL)value
{
  valueCopy = value;
  v7 = [MEMORY[0x1E695DFA8] setWithSet:{-[MXSessionManager mutedSessionBundleIDs](self, "mutedSessionBundleIDs")}];
  if (MX_FeatureFlags_IsSessionBasedMutingEnabled(v7, v8))
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
LABEL_13:
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return;
  }

  v10 = [ds isEqualToString:@"com.apple.mobilephone"];
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = [ds isEqualToString:@"com.apple.facetime"];
  }

  v12 = v10 | v11;
  if (valueCopy)
  {
    [v7 addObject:ds];
    if (v12)
    {
      [v7 addObject:@"com.apple.mobilephone"];
      [v7 addObject:@"com.apple.facetime"];
    }
  }

  else
  {
    [v7 removeObject:ds];
    if (v12)
    {
      [v7 removeObject:@"com.apple.mobilephone"];
      [v7 removeObject:@"com.apple.facetime"];
    }
  }

  [(MXSessionManager *)self setMutedSessionBundleIDs:v7];
  MXCFPreferencesSetAndSynchronizeUserPreference(@"mutedSessionBundleIDs", [(NSSet *)[(MXSessionManager *)self mutedSessionBundleIDs] allObjects]);
  if (dword_1EB75DE40)
  {
    v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    goto LABEL_13;
  }
}

- (int)clearUplinkMutedCache
{
  v29 = *MEMORY[0x1E69E9840];
  if (MX_FeatureFlags_IsSessionBasedMutingEnabled(self, a2))
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return -15685;
  }

  if (CMSMUtility_PhoneCallOrRingtoneExists())
  {
    return -15685;
  }

  v4 = [MEMORY[0x1E695DFA8] setWithSet:{-[MXSessionManager mutedSessionBundleIDs](self, "mutedSessionBundleIDs")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  mutedSessionBundleIDs = [(MXSessionManager *)self mutedSessionBundleIDs];
  v6 = [(NSSet *)mutedSessionBundleIDs countByEnumeratingWithState:&v17 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(mutedSessionBundleIDs);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        if ([v10 hasPrefix:@"com.apple"])
        {
          [v4 removeObject:v10];
        }
      }

      v7 = [(NSSet *)mutedSessionBundleIDs countByEnumeratingWithState:&v17 objects:v27 count:16];
    }

    while (v7);
  }

  [(MXSessionManager *)self setMutedSessionBundleIDs:v4];
  MXCFPreferencesSetAndSynchronizeUserPreference(@"mutedSessionBundleIDs", [(NSSet *)[(MXSessionManager *)self mutedSessionBundleIDs] allObjects]);
  if (dword_1EB75DE40)
  {
    v22 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v12 = v22;
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
      mutedSessionBundleIDs2 = [(MXSessionManager *)self mutedSessionBundleIDs];
      v23 = 136315395;
      v24 = "[MXSessionManager(Utilities) clearUplinkMutedCache]";
      v25 = 2113;
      v26 = mutedSessionBundleIDs2;
      _os_log_send_and_compose_impl(v14, 0, v28, 128, &dword_1B17A2000, v11, v13, "-MXSessionManagerUtilities- %s: Updated muted session bundle IDs list after clear mute state: %{private}@", &v23, 22);
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return 0;
}

- (int)updateMuteState:(id *)state muteValue:(id)value
{
  v104 = *MEMORY[0x1E69E9840];
  v94 = 0;
  v95 = &v94;
  v96 = 0x2020000000;
  v97 = 3;
  v7 = *&state->var0[4];
  *atoken.val = *state->var0;
  *&atoken.val[4] = v7;
  v8 = audit_token_to_pid(&atoken);
  v88 = v8;
  if (MX_FeatureFlags_IsSessionBasedMutingEnabled(v8, v9))
  {
    v98 = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v11 = v98;
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
    }

    else
    {
      v12 = v11 & 0xFFFFFFFE;
    }

    if (v12)
    {
      *v99 = 136315138;
      *&v99[4] = "[MXSessionManager(Utilities) updateMuteState:muteValue:]";
      _os_log_send_and_compose_impl(v12, 0, &atoken, 128, &dword_1B17A2000, os_log_and_send_and_compose_flags_and_os_log_type, 0, "-MXSessionManagerUtilities- %s: SessionBasedMuting is enabled, not updating mute using legacy behavior.", v99);
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    copyPhoneCallBehaviorRecordingSession = 0;
LABEL_17:
    v19 = 0;
    refreshed = -15685;
    goto LABEL_18;
  }

  if (value)
  {
    v13 = *&state->var0[4];
    *atoken.val = *state->var0;
    *&atoken.val[4] = v13;
    if ([(MXSessionManager *)self isAuditTokenValid:&atoken])
    {
      v14 = *&state->var0[4];
      *atoken.val = *state->var0;
      *&atoken.val[4] = v14;
      if ([(MXSessionManager *)self isAuditTokenValid:&atoken])
      {
        if (dword_1EB75DE40)
        {
          v98 = 0;
          type[0] = OS_LOG_TYPE_DEFAULT;
          v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v16 = v98;
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v17 = v16;
          }

          else
          {
            v17 = v16 & 0xFFFFFFFE;
          }

          if (v17)
          {
            *v99 = 136315138;
            *&v99[4] = "[MXSessionManager(Utilities) updateMuteState:muteValue:]";
            _os_log_send_and_compose_impl(v17, 0, &atoken, 128, &dword_1B17A2000, v15, 0, "-MXSessionManagerUtilities- %s: Trying to change the mute state via user action on banner or the app UI.", v99);
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v45 = *&state->var0[4];
        *atoken.val = *state->var0;
        *&atoken.val[4] = v45;
        copyPhoneCallBehaviorRecordingSession = [(MXSessionManager *)self copySessionToBeMuted:&atoken];
        if (copyPhoneCallBehaviorRecordingSession)
        {
LABEL_62:
          v23 = 0;
LABEL_82:
          refreshed = 0;
          goto LABEL_83;
        }

        if (dword_1EB75DE40)
        {
          v98 = 0;
          type[0] = OS_LOG_TYPE_DEFAULT;
          v46 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v47 = v98;
          if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
          {
            v48 = v47;
          }

          else
          {
            v48 = v47 & 0xFFFFFFFE;
          }

          if (v48)
          {
            *v99 = 136315138;
            *&v99[4] = "[MXSessionManager(Utilities) updateMuteState:muteValue:]";
            _os_log_send_and_compose_impl(v48, 0, &atoken, 128, &dword_1B17A2000, v46, 0, "-MXSessionManagerUtilities- %s: No active recording phone call behavior session found matching audit token.", v99);
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v19 = MX_RunningBoardServices_CopyDisplayIDForPID(v88);
        if (v19)
        {
          -[MXSessionManager updateMutedBundleIDs:muteValue:](self, "updateMutedBundleIDs:muteValue:", v19, [value BOOLValue]);
          if (dword_1EB75DE40)
          {
            v98 = 0;
            type[0] = OS_LOG_TYPE_DEFAULT;
            v50 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v51 = v98;
            if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
            {
              v52 = v51;
            }

            else
            {
              v52 = v51 & 0xFFFFFFFE;
            }

            if (v52)
            {
              bOOLValue = [value BOOLValue];
              v54 = "UnMuted";
              *&v99[4] = "[MXSessionManager(Utilities) updateMuteState:muteValue:]";
              *v99 = 136315650;
              if (bOOLValue)
              {
                v54 = "Muted";
              }

              *&v99[12] = 2114;
              *&v99[14] = v19;
              *&v99[22] = 2082;
              v100 = v54;
              _os_log_send_and_compose_impl(v52, 0, &atoken, 128, &dword_1B17A2000, v50, 0, "-MXSessionManagerUtilities- %s: Session with bundleID: %{public}@ was successfully: %{public}s", v99, 32);
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          copyPhoneCallBehaviorRecordingSession = 0;
          refreshed = 0;
          goto LABEL_18;
        }
      }

      v23 = 0;
      copyPhoneCallBehaviorRecordingSession = 0;
      goto LABEL_82;
    }

    if (dword_1EB75DE40)
    {
      v98 = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      v24 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v25 = v98;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v26 = v25;
      }

      else
      {
        v26 = v25 & 0xFFFFFFFE;
      }

      if (v26)
      {
        *v99 = 136315138;
        *&v99[4] = "[MXSessionManager(Utilities) updateMuteState:muteValue:]";
        _os_log_send_and_compose_impl(v26, 0, &atoken, 128, &dword_1B17A2000, v24, 0, "-MXSessionManagerUtilities- %s: Trying to change the mute state via uplink.", v99);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    -[MXSessionManager setUplinkMuteSetByClient:](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "setUplinkMuteSetByClient:", [value BOOLValue]);
    copyPhoneCallBehaviorRecordingSession = [+[MXSessionManager sharedInstance](MXSessionManager copyPhoneCallBehaviorRecordingSession];
    if (copyPhoneCallBehaviorRecordingSession)
    {
      goto LABEL_62;
    }

    v98 = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v30 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v31 = v98;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v32 = v31;
    }

    else
    {
      v32 = v31 & 0xFFFFFFFE;
    }

    if (v32)
    {
      bOOLValue2 = [value BOOLValue];
      v34 = "UnMute";
      if (bOOLValue2)
      {
        v34 = "Mute";
      }

      *v99 = 136315394;
      *&v99[4] = "[MXSessionManager(Utilities) updateMuteState:muteValue:]";
      *&v99[12] = 2082;
      *&v99[14] = v34;
      _os_log_send_and_compose_impl(v32, 0, &atoken, 128, &dword_1B17A2000, v30, 0, "-MXSessionManagerUtilities- %s: No active recording phone call behavior session found. Will cache and apply %{public}s when phone call behavior session starts.", v99, 22);
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    if ([value BOOLValue])
    {
      v39 = [MEMORY[0x1E696AD98] numberWithBool:1];
    }

    else
    {
      v39 = 0;
    }

    [(MXSessionManager *)self setApplyUplinkMuteToPhoneCallBehaviorSession:v39];
    if (([value BOOLValue] & 1) == 0)
    {
      if (dword_1EB75DE40)
      {
        v98 = 0;
        type[0] = OS_LOG_TYPE_DEFAULT;
        v40 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v41 = v98;
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          v42 = v41;
        }

        else
        {
          v42 = v41 & 0xFFFFFFFE;
        }

        if (v42)
        {
          uplinkMutedBundleID = [(MXSessionManager *)self uplinkMutedBundleID];
          bOOLValue3 = [value BOOLValue];
          *v99 = 136315651;
          *&v99[4] = "[MXSessionManager(Utilities) updateMuteState:muteValue:]";
          *&v99[12] = 2113;
          *&v99[14] = uplinkMutedBundleID;
          *&v99[22] = 1024;
          LODWORD(v100) = bOOLValue3;
          LODWORD(v87) = 28;
          _os_log_send_and_compose_impl(v42, 0, &atoken, 128, &dword_1B17A2000, v40, 0, "-MXSessionManagerUtilities- %s: Removing UplinkMuted bundleID = %{private}@, muteValue = %{BOOL}u", v99, v87);
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      [(MXSessionManager *)self removeEntryFromMutedBundleIDCache:0 bundleID:[(MXSessionManager *)self uplinkMutedBundleID]];
      [(MXSessionManager *)self setUplinkMutedBundleID:0];
    }

    CMSMNotificationUtility_PostUplinkMuteDidChange([value BOOLValue]);
    v23 = 0;
    copyPhoneCallBehaviorRecordingSession = 0;
    refreshed = -15685;
  }

  else
  {
    v22 = *&state->var0[4];
    *atoken.val = *state->var0;
    *&atoken.val[4] = v22;
    if ([(MXSessionManager *)self isAuditTokenValid:&atoken])
    {
      v23 = 0;
      copyPhoneCallBehaviorRecordingSession = 0;
      refreshed = 0;
      value = 0;
    }

    else
    {
      if (dword_1EB75DE40)
      {
        v98 = 0;
        type[0] = OS_LOG_TYPE_DEFAULT;
        v27 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v28 = v98;
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v29 = v28;
        }

        else
        {
          v29 = v28 & 0xFFFFFFFE;
        }

        if (v29)
        {
          *v99 = 136315138;
          *&v99[4] = "[MXSessionManager(Utilities) updateMuteState:muteValue:]";
          _os_log_send_and_compose_impl(v29, 0, &atoken, 128, &dword_1B17A2000, v27, 0, "-MXSessionManagerUtilities- %s: Trying to toggle the mute state.", v99);
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      copyPhoneCallBehaviorRecordingSession = [+[MXSessionManager sharedInstance](MXSessionManager copyPhoneCallBehaviorRecordingSession];
      prefersBluetoothAccessoryMuting = [copyPhoneCallBehaviorRecordingSession prefersBluetoothAccessoryMuting];
      if (prefersBluetoothAccessoryMuting)
      {
        refreshed = 0;
      }

      else
      {
        v98 = 0;
        type[0] = OS_LOG_TYPE_DEFAULT;
        v36 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v37 = v98;
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          v38 = v37;
        }

        else
        {
          v38 = v37 & 0xFFFFFFFE;
        }

        if (v38)
        {
          *v99 = 136315138;
          *&v99[4] = "[MXSessionManager(Utilities) updateMuteState:muteValue:]";
          _os_log_send_and_compose_impl(v38, 0, &atoken, 128, &dword_1B17A2000, v36, 0, "-MXSessionManagerUtilities- %s: No active recording phone call behavior session or bluetooth opted-in session found.", v99);
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
        refreshed = -15685;
      }

      isRecordingMuted = [copyPhoneCallBehaviorRecordingSession isRecordingMuted];
      value = [MEMORY[0x1E696AD98] numberWithBool:isRecordingMuted ^ 1u];
      v23 = prefersBluetoothAccessoryMuting ^ 1;
    }
  }

LABEL_83:
  v19 = CMSUtility_CopyBundleID(copyPhoneCallBehaviorRecordingSession);
  if (!v19)
  {
    if (dword_1EB75DE40)
    {
      v98 = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      v55 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v56 = v98;
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        v57 = v56;
      }

      else
      {
        v57 = v56 & 0xFFFFFFFE;
      }

      if (v57)
      {
        *v99 = 136315394;
        *&v99[4] = "[MXSessionManager(Utilities) updateMuteState:muteValue:]";
        *&v99[12] = 1024;
        *&v99[14] = v88;
        _os_log_send_and_compose_impl(v57, 0, &atoken, 128, &dword_1B17A2000, v55, 0, "-MXSessionManagerUtilities- %s: Fetching bundle ID from RBS for given pid %d", v99, 18);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v19 = MX_RunningBoardServices_CopyDisplayIDForPID(v88);
    if (!v19)
    {
      v98 = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      v67 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v68 = v98;
      if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
      {
        v69 = v68;
      }

      else
      {
        v69 = v68 & 0xFFFFFFFE;
      }

      if (v69)
      {
        bOOLValue4 = [value BOOLValue];
        v71 = "UnMute";
        if (bOOLValue4)
        {
          v71 = "Mute";
        }

        *v99 = 136315394;
        *&v99[4] = "[MXSessionManager(Utilities) updateMuteState:muteValue:]";
        *&v99[12] = 2082;
        *&v99[14] = v71;
        LODWORD(v87) = 22;
        _os_log_send_and_compose_impl(v69, 0, &atoken, 128, &dword_1B17A2000, v67, 0, "-MXSessionManagerUtilities- %s: We could not find the bundleID to %{public}s", v99, v87);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      goto LABEL_17;
    }
  }

  bOOLValue5 = [value BOOLValue];
  if (((v23 | bOOLValue5 ^ [(NSSet *)[(MXSessionManager *)self mutedSessionBundleIDs] containsObject:v19]) & 1) == 0)
  {
    if (dword_1EB75DE40)
    {
      v98 = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      v59 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v60 = v98;
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
      {
        v61 = v60;
      }

      else
      {
        v61 = v60 & 0xFFFFFFFE;
      }

      if (v61)
      {
        bOOLValue6 = [value BOOLValue];
        v63 = "UnMuted";
        *&v99[4] = "[MXSessionManager(Utilities) updateMuteState:muteValue:]";
        *v99 = 136315650;
        if (bOOLValue6)
        {
          v63 = "Muted";
        }

        *&v99[12] = 2114;
        *&v99[14] = v19;
        *&v99[22] = 2082;
        v100 = v63;
        LODWORD(v87) = 32;
        _os_log_send_and_compose_impl(v61, 0, &atoken, 128, &dword_1B17A2000, v59, 0, "-MXSessionManagerUtilities- %s: Redundant call, Session with bundleID %{public}@ already %{public}s", v99, v87);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    goto LABEL_18;
  }

  if ([copyPhoneCallBehaviorRecordingSession hasPhoneCallBehavior])
  {
    if (((v23 | [copyPhoneCallBehaviorRecordingSession isRecording]) & 1) == 0)
    {
      v23 = 0;
      goto LABEL_122;
    }
  }

  else if (!v23)
  {
    goto LABEL_122;
  }

  if (dword_1EB75DE40)
  {
    v98 = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v64 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v65 = v98;
    if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
    {
      v66 = v65;
    }

    else
    {
      v66 = v65 & 0xFFFFFFFE;
    }

    if (v66)
    {
      *v99 = 136315394;
      *&v99[4] = "[MXSessionManager(Utilities) updateMuteState:muteValue:]";
      *&v99[12] = 1024;
      *&v99[14] = v23;
      LODWORD(v87) = 18;
      _os_log_send_and_compose_impl(v66, 0, &atoken, 128, &dword_1B17A2000, v64, 0, "-MXSessionManagerUtilities- %s: We need to play the chime for muting. Reject = %{BOOL}u", v99, v87);
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v23 = 1;
LABEL_122:
  if (copyPhoneCallBehaviorRecordingSession)
  {
    objc_msgSend_auditToken(copyPhoneCallBehaviorRecordingSession);
    v72 = *&atoken.val[4];
    *state->var0 = *atoken.val;
    *&state->var0[4] = v72;
  }

  if (refreshed)
  {
    if (!v23)
    {
      goto LABEL_18;
    }

    goto LABEL_126;
  }

  -[MXSessionManager updateMutedBundleIDs:muteValue:](self, "updateMutedBundleIDs:muteValue:", v19, [value BOOLValue]);
  if ([value BOOLValue])
  {
    [(MXSessionManager *)self setUplinkMutedBundleID:v19];
  }

  else
  {
    [(MXSessionManager *)self setUplinkMutedBundleID:0];
  }

  if ([value BOOLValue])
  {
    v74 = 1;
  }

  else
  {
    v74 = 2;
  }

  *(v95 + 6) = v74;
  refreshed = CMSMUtility_AudioToolboxServerRefreshMuteState();
  if (refreshed)
  {
    v98 = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v75 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v76 = v98;
    if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
    {
      v77 = v76;
    }

    else
    {
      v77 = v76 & 0xFFFFFFFE;
    }

    if (v77)
    {
      bOOLValue7 = [value BOOLValue];
      v79 = "UnMuting";
      *&v99[4] = "[MXSessionManager(Utilities) updateMuteState:muteValue:]";
      *v99 = 136315650;
      if (bOOLValue7)
      {
        v79 = "Muting";
      }

      *&v99[12] = 2082;
      *&v99[14] = v79;
      *&v99[22] = 2114;
      v100 = v19;
      LODWORD(v87) = 32;
      _os_log_send_and_compose_impl(v77, 0, &atoken, 128, &dword_1B17A2000, v75, 0, "-MXSessionManagerUtilities- %s: There was a problem %{public}s the recording session with bundleID: %{public}@.", v99, v87);
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    *(v95 + 6) = 3;
    if (v23)
    {
LABEL_126:
      *v99 = 0;
      *&v99[8] = v99;
      *&v99[16] = 0x3052000000;
      v100 = __Block_byref_object_copy__15;
      v101 = __Block_byref_object_dispose__15;
      v102 = objc_alloc_init(getAAAudioSessionControlClass());
      if (updateMuteState_muteValue__onceToken != -1)
      {
        [MXSessionManager(Utilities) updateMuteState:muteValue:];
      }

      [*(*&v99[8] + 40) setDispatchQueue:updateMuteState_muteValue__sBluetoothMuteActionQueue];
      if (dword_1EB75DE40)
      {
        *type = 0;
        v92 = OS_LOG_TYPE_DEFAULT;
        v73 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      UpTimeNanoseconds = FigGetUpTimeNanoseconds();
      v89[0] = MEMORY[0x1E69E9820];
      v89[1] = 3221225472;
      v89[2] = __57__MXSessionManager_Utilities__updateMuteState_muteValue___block_invoke_27;
      v89[3] = &unk_1E7AECC28;
      v86 = *&state->var0[4];
      v90 = *state->var0;
      v91 = v86;
      v89[4] = v19;
      v89[5] = v99;
      v89[6] = &v94;
      v89[7] = UpTimeNanoseconds;
      MXDispatchAsync("[MXSessionManager(Utilities) updateMuteState:muteValue:]", "MXSessionManagerUtilities.m", 922, 0, 0, updateMuteState_muteValue__sBluetoothMuteActionQueue, v89);
      _Block_object_dispose(v99, 8);
    }
  }

  else
  {
    if (dword_1EB75DE40)
    {
      v98 = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      v80 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v81 = v98;
      if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
      {
        v82 = v81;
      }

      else
      {
        v82 = v81 & 0xFFFFFFFE;
      }

      if (v82)
      {
        bOOLValue8 = [value BOOLValue];
        v84 = "UnMuted";
        *&v99[4] = "[MXSessionManager(Utilities) updateMuteState:muteValue:]";
        *v99 = 136315650;
        if (bOOLValue8)
        {
          v84 = "Muted";
        }

        *&v99[12] = 2114;
        *&v99[14] = v19;
        *&v99[22] = 2082;
        v100 = v84;
        LODWORD(v87) = 32;
        _os_log_send_and_compose_impl(v82, 0, &atoken, 128, &dword_1B17A2000, v80, 0, "-MXSessionManagerUtilities- %s: Session with bundleID: %{public}@ was successfully: %{public}s", v99, v87);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    -[MXSessionManager setUplinkMuteSetByClient:](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "setUplinkMuteSetByClient:", [value BOOLValue]);
    CMSMNotificationUtility_PostUplinkMuteDidChange([value BOOLValue]);
    refreshed = 0;
    if (v23)
    {
      goto LABEL_126;
    }
  }

LABEL_18:

  _Block_object_dispose(&v94, 8);
  return refreshed;
}

dispatch_queue_t __57__MXSessionManager_Utilities__updateMuteState_muteValue___block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  result = dispatch_queue_create("com.apple.mediaexperience.BluetoothMuteActionQueue", v0);
  updateMuteState_muteValue__sBluetoothMuteActionQueue = result;
  return result;
}

uint64_t __57__MXSessionManager_Utilities__updateMuteState_muteValue___block_invoke_27(uint64_t a1)
{
  v5[0] = MEMORY[0x1E69E9820];
  v1 = *(a1 + 40);
  v2 = *(*(*(a1 + 40) + 8) + 40);
  v5[1] = 3221225472;
  v5[2] = __57__MXSessionManager_Utilities__updateMuteState_muteValue___block_invoke_2;
  v5[3] = &unk_1E7AECC00;
  v6 = v1;
  v3 = *(a1 + 80);
  v8 = *(a1 + 64);
  v9 = v3;
  v5[4] = *(a1 + 32);
  v7 = *(a1 + 56);
  return [v2 activateWithCompletion:v5];
}

void __57__MXSessionManager_Utilities__updateMuteState_muteValue___block_invoke_2(uint64_t a1, unint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = *(*(*(a1 + 40) + 8) + 40);
    v6 = *(*(*(a1 + 48) + 8) + 24);
    v7 = *(a1 + 80);
    v9[0] = *(a1 + 64);
    v9[1] = v7;
    [v5 setMuteAction:v6 auditToken:v9 bundleIdentifier:v4];
  }

  if (dword_1EB75DE40)
  {
    v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [*(*(*(a1 + 40) + 8) + 40) invalidate];
}

- (int)getMuteState:(id *)state outMuteValue:(BOOL *)value
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = *&state->var0[4];
  *atoken.val = *state->var0;
  *&atoken.val[4] = v7;
  v8 = audit_token_to_pid(&atoken);
  *value = 0;
  if (!MX_FeatureFlags_IsSessionBasedMutingEnabled(v8, v9))
  {
    v11 = *&state->var0[4];
    *atoken.val = *state->var0;
    *&atoken.val[4] = v11;
    if (![(MXSessionManager *)self isAuditTokenValid:&atoken])
    {
      return -15685;
    }

    v12 = [(MXSessionManager *)self copySessionWithPID:v8];
    v13 = CMSUtility_CopyBundleID(v12);
    if (v13)
    {
      v14 = v13;
    }

    else
    {
      v14 = MX_RunningBoardServices_CopyDisplayIDForPID(v8);
      if (!v14)
      {
        v15 = -15685;
        goto LABEL_10;
      }
    }

    v17 = [(NSSet *)[(MXSessionManager *)self mutedSessionBundleIDs] containsObject:v14];
    v15 = 0;
    *value = v17;
LABEL_10:

    return v15;
  }

  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  return -15685;
}

- (id)copyPhoneCallBehaviorRecordingSession
{
  v15 = *MEMORY[0x1E69E9840];
  copyMXCoreSessionList = [(MXSessionManager *)self copyMXCoreSessionList];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [copyMXCoreSessionList countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(copyMXCoreSessionList);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        if (objc_msgSend_isActive(v7) && [v7 isRecording] && objc_msgSend(v7, "hasPhoneCallBehavior"))
        {
          v8 = v7;
          goto LABEL_13;
        }
      }

      v4 = [copyMXCoreSessionList countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v7 = 0;
LABEL_13:

  return v7;
}

- (void)removeEntryFromMutedBundleIDCache:(int)cache bundleID:(id)d
{
  v5 = *&cache;
  v14 = *MEMORY[0x1E69E9840];
  IsSessionBasedMutingEnabled = MX_FeatureFlags_IsSessionBasedMutingEnabled(self, a2);
  if (!IsSessionBasedMutingEnabled)
  {
    if (!MX_FeatureFlags_IsCallManagementMuteControlEnabled(IsSessionBasedMutingEnabled, v8))
    {
      return;
    }

    if (v5 || d)
    {
      if (v5)
      {
        v10 = [(MXSessionManager *)self copySessionWithPID:v5];
        v11 = CMSUtility_CopyBundleID(v10);
        if (v11)
        {
          dCopy = v11;
          goto LABEL_13;
        }

        dCopy = MX_RunningBoardServices_CopyDisplayIDForPID(v5);
        if (dCopy)
        {
LABEL_13:
          if ([objc_msgSend(MEMORY[0x1E695DFA8] setWithSet:{-[MXSessionManager mutedSessionBundleIDs](self, "mutedSessionBundleIDs")), "containsObject:", dCopy}])
          {
            [(MXSessionManager *)self updateMutedBundleIDs:dCopy muteValue:0];
            if (dword_1EB75DE40)
            {
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }
          }
        }
      }

      else
      {
        dCopy = d;
        v10 = 0;
        if (dCopy)
        {
          goto LABEL_13;
        }
      }

      return;
    }
  }

  v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
}

- (id)copyActiveSessionWithAudioCategory:(id)category andAudioMode:(id)mode
{
  v40 = *MEMORY[0x1E69E9840];
  if (category | mode)
  {
    copyMXCoreSessionList = [(MXSessionManager *)self copyMXCoreSessionList];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v7 = [copyMXCoreSessionList countByEnumeratingWithState:&v24 objects:v38 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v25;
      if (category)
      {
        v10 = mode == 0;
      }

      else
      {
        v10 = 1;
      }

      v11 = !v10;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v25 != v9)
          {
            objc_enumerationMutation(copyMXCoreSessionList);
          }

          v13 = *(*(&v24 + 1) + 8 * i);
          if (objc_msgSend_isActive(v13))
          {
            if (v11)
            {
              if (([v13 hasAudioMode:mode] & 1) != 0 && objc_msgSend(v13, "hasAudioCategory:", category))
              {
                goto LABEL_26;
              }
            }

            else if (category)
            {
              if ([v13 hasAudioCategory:category])
              {
                goto LABEL_26;
              }
            }

            else if (mode && ([v13 hasAudioMode:mode] & 1) != 0)
            {
LABEL_26:
              if (dword_1EB75DE40)
              {
                v29 = 0;
                type = OS_LOG_TYPE_DEFAULT;
                os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v17 = v29;
                v18 = type;
                if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
                {
                  v19 = v17;
                }

                else
                {
                  v19 = v17 & 0xFFFFFFFE;
                }

                if (v19)
                {
                  clientName = [v13 clientName];
                  audioCategory = [v13 audioCategory];
                  audioMode = [v13 audioMode];
                  v30 = 136315906;
                  v31 = "[MXSessionManager(Utilities) copyActiveSessionWithAudioCategory:andAudioMode:]";
                  v32 = 2114;
                  v33 = clientName;
                  v34 = 2114;
                  v35 = audioCategory;
                  v36 = 2114;
                  v37 = audioMode;
                  _os_log_send_and_compose_impl(v19, 0, v39, 128, &dword_1B17A2000, os_log_and_send_and_compose_flags_and_os_log_type, v18, "-MXSessionManagerUtilities- %s: Active session found %{public}@ with audio category %{public}@ and mode %{public}@", &v30, 42);
                }

                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              v14 = v13;
              goto LABEL_34;
            }
          }
        }

        v8 = [copyMXCoreSessionList countByEnumeratingWithState:&v24 objects:v38 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v14 = 0;
LABEL_34:
  }

  else
  {
    v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return 0;
  }

  return v14;
}

- (id)copySessionsWithAuditToken:(id *)token
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  copyMXCoreSessionList = [(MXSessionManager *)self copyMXCoreSessionList];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [copyMXCoreSessionList countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      v10 = 0;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(copyMXCoreSessionList);
        }

        v11 = *(*(&v16 + 1) + 8 * v10);
        if (v11)
        {
          objc_msgSend_auditToken(*(*(&v16 + 1) + 8 * v10));
        }

        else
        {
          memset(v15, 0, sizeof(v15));
        }

        v12 = *&token->var0[4];
        v14[0] = *token->var0;
        v14[1] = v12;
        if ([(MXSessionManager *)self isAuditTokenEqual:v15 compareTo:v14])
        {
          [v5 addObject:v11];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [copyMXCoreSessionList countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)copySessionWithDisplayID:(id)d
{
  v18 = *MEMORY[0x1E69E9840];
  if (d)
  {
    copyMXCoreSessionList = [(MXSessionManager *)self copyMXCoreSessionList];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = [copyMXCoreSessionList countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(copyMXCoreSessionList);
          }

          v9 = *(*(&v13 + 1) + 8 * i);
          if ([v9 displayID] && objc_msgSend(objc_msgSend(v9, "displayID"), "isEqualToString:", d))
          {
            v10 = v9;
            goto LABEL_14;
          }
        }

        v6 = [copyMXCoreSessionList countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v10 = 0;
LABEL_14:
  }

  else
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return 0;
  }

  return v10;
}

- (id)copyCoreSessionsShadowingAudioSession:(unsigned int)session withOptions:(unsigned int)options
{
  v4 = *&options;
  v5 = *&session;
  copyMXCoreSessionList = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v7 = [MXSessionManagerBase copySessionsShadowingAudioSessionID:v5 withShadowingOptions:v4 fromSessionList:copyMXCoreSessionList];

  return v7;
}

- (void)postStopCommandToShadowingSessionsForSession:(id)session withShadowingOptions:(unsigned int)options
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = -[MXSessionManager copyCoreSessionsShadowingAudioSession:withOptions:](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "copyCoreSessionsShadowingAudioSession:withOptions:", [session audioSessionID], *&options);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      v11 = v6;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        if (objc_msgSend_isActive(v9))
        {
          if (dword_1EB75DE40)
          {
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
            v6 = v11;
          }

          CMSUtilityApplier_PostNotification_StopCommand(v9, 0);
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

- (void)updateBluetoothFrameworkToPlayMuteChime:(id)chime playRejectTone:(BOOL)tone
{
  v21 = *MEMORY[0x1E69E9840];
  if (([chime isRecording] & 1) == 0 && !tone)
  {
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    return;
  }

  v7 = objc_alloc_init(getAAAudioSessionControlClass());
  v8 = CMSUtility_CopyBundleID(chime);
  v19 = 0u;
  v20 = 0u;
  if (chime)
  {
    objc_msgSend_auditToken(chime);
  }

  if (updateBluetoothFrameworkToPlayMuteChime_playRejectTone__onceToken == -1)
  {
    if (!v8)
    {
      goto LABEL_9;
    }
  }

  else
  {
    [MXSessionManager(Utilities) updateBluetoothFrameworkToPlayMuteChime:playRejectTone:];
    if (!v8)
    {
LABEL_9:
      v8 = MX_RunningBoardServices_CopyDisplayIDForPID([objc_msgSend(chime "clientPID")]);
      if (!v8)
      {
        *type = 0;
        v17 = OS_LOG_TYPE_DEFAULT;
        v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v8 = 0;
      }
    }
  }

  [v7 setDispatchQueue:updateBluetoothFrameworkToPlayMuteChime_playRejectTone__sBluetoothMuteActionQueue];
  if (tone)
  {
    v10 = 3;
  }

  else if ([chime isRecordingMuted])
  {
    v10 = 1;
  }

  else if ([chime isRecordingMuted])
  {
    v10 = 3;
  }

  else
  {
    v10 = 2;
  }

  if (dword_1EB75DE40)
  {
    *type = 0;
    v17 = OS_LOG_TYPE_DEFAULT;
    v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v15 = v19;
  v13[2] = __86__MXSessionManager_Utilities__updateBluetoothFrameworkToPlayMuteChime_playRejectTone___block_invoke_46;
  v13[3] = &unk_1E7AECC78;
  v14 = v10;
  v16 = v20;
  v13[4] = v7;
  v13[5] = v8;
  v13[6] = UpTimeNanoseconds;
  MXDispatchAsync("[MXSessionManager(Utilities) updateBluetoothFrameworkToPlayMuteChime:playRejectTone:]", "MXSessionManagerUtilities.m", 1235, 0, 0, updateBluetoothFrameworkToPlayMuteChime_playRejectTone__sBluetoothMuteActionQueue, v13);
}

dispatch_queue_t __86__MXSessionManager_Utilities__updateBluetoothFrameworkToPlayMuteChime_playRejectTone___block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  result = dispatch_queue_create("com.apple.mediaexperience.MuteActionQueue", v0);
  updateBluetoothFrameworkToPlayMuteChime_playRejectTone__sBluetoothMuteActionQueue = result;
  return result;
}

uint64_t __86__MXSessionManager_Utilities__updateBluetoothFrameworkToPlayMuteChime_playRejectTone___block_invoke_46(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __86__MXSessionManager_Utilities__updateBluetoothFrameworkToPlayMuteChime_playRejectTone___block_invoke_2;
  v2[3] = &unk_1E7AECC50;
  v5 = *(a1 + 56);
  v6 = *(a1 + 60);
  v7 = *(a1 + 76);
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  return [v3 activateWithCompletion:v2];
}

void __86__MXSessionManager_Utilities__updateBluetoothFrameworkToPlayMuteChime_playRejectTone___block_invoke_2(uint64_t a1, unint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v15 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  else
  {
    v4 = *(a1 + 56);
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = *(a1 + 76);
    v20[0] = *(a1 + 60);
    v20[1] = v7;
    [v5 setMuteAction:v4 auditToken:v20 bundleIdentifier:v6];
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __86__MXSessionManager_Utilities__updateBluetoothFrameworkToPlayMuteChime_playRejectTone___block_invoke_2_47;
  v13[3] = &unk_1E7AE7CE0;
  v13[4] = *(a1 + 32);
  MXDispatchAsync("[MXSessionManager(Utilities) updateBluetoothFrameworkToPlayMuteChime:playRejectTone:]_block_invoke", "MXSessionManagerUtilities.m", 1247, 0, 0, updateBluetoothFrameworkToPlayMuteChime_playRejectTone__sBluetoothMuteActionQueue, v13);
  if (dword_1EB75DE40)
  {
    v15 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v9 = v15;
    v10 = type;
    if (os_log_type_enabled(v8, type))
    {
      v11 = v9;
    }

    else
    {
      v11 = v9 & 0xFFFFFFFE;
    }

    if (v11)
    {
      v12 = (FigGetUpTimeNanoseconds() - *(a1 + 48)) / 0xF4240uLL;
      v16 = 136315394;
      v17 = "[MXSessionManager(Utilities) updateBluetoothFrameworkToPlayMuteChime:playRejectTone:]_block_invoke";
      v18 = 2048;
      v19 = v12;
      _os_log_send_and_compose_impl(v11, 0, v20, 128, &dword_1B17A2000, v8, v10, "-MXSessionManagerUtilities- %s: Bluetooth session control activateWithCompletion ended - Elapsed time=%llu milliseconds", &v16, 22);
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

void __86__MXSessionManager_Utilities__updateBluetoothFrameworkToPlayMuteChime_playRejectTone___block_invoke_2_47(uint64_t a1)
{
  [*(a1 + 32) invalidate];
  v2 = *(a1 + 32);
}

- (id)getUncustomizedCategory:(id)category
{
  result = [(NSDictionary *)[(MXSessionManager *)self figUncustomizedCategory_Dict] objectForKey:category];
  if (!result)
  {
    return category;
  }

  return result;
}

- (id)getDefaultBuiltInCustomizedAlternateCategory:(id)category defaultBuiltInRoute:(id)route
{
  if (!category)
  {
    return 0;
  }

  if ([route isEqualToString:@"Speaker"])
  {
    figCustomizedCategoryWithDefaultBuiltIn_Speaker_Dict = [(MXSessionManager *)self figCustomizedCategoryWithDefaultBuiltIn_Speaker_Dict];
  }

  else if ([route isEqualToString:@"Receiver"])
  {
    figCustomizedCategoryWithDefaultBuiltIn_Speaker_Dict = [(MXSessionManager *)self figCustomizedCategoryWithDefaultBuiltIn_Receiver_Dict];
  }

  else
  {
    if (route)
    {
      result = 0;
      goto LABEL_11;
    }

    figCustomizedCategoryWithDefaultBuiltIn_Speaker_Dict = [(MXSessionManager *)self figCustomizedCategoryWithDefaultBuiltIn_Default_Dict];
  }

  result = [(NSDictionary *)figCustomizedCategoryWithDefaultBuiltIn_Speaker_Dict objectForKey:category];
LABEL_11:
  if (!result)
  {
    return category;
  }

  return result;
}

- (id)getSilentModeClientTypeAsString:(unsigned int)string
{
  if (string >= 0xA)
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown(%d)", *&string];
  }

  else
  {
    return off_1E7AECCF8[string];
  }
}

- (id)getClientPriorityAsString:(unsigned int)string
{
  switch(string)
  {
    case 0u:
      return @"Default";
    case 0x14u:
      return @"EmergencyAlert";
    case 0xAu:
      return @"PhoneCall";
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown(%d)", *&string];
}

- (id)getRouteSharingPolicyAsString:(int)string
{
  if (string >= 4)
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown(%d)", *&string];
  }

  else
  {
    return off_1E7AECD48[string];
  }
}

- (id)getShadowingAudioSessionOptionsAsString:(unsigned int)string
{
  stringCopy = string;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = v4;
  if ((stringCopy & 8) == 0)
  {
    if ((stringCopy & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    [v5 addObject:@"SessionInterruption"];
    if ((stringCopy & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  [v4 addObject:@"HardwareRouteConfiguration"];
  if ((stringCopy & 2) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((stringCopy & 4) != 0)
  {
LABEL_4:
    [v5 addObject:@"MirrorActivationLifeCycle"];
  }

LABEL_5:
  v6 = [v5 componentsJoinedByString:{@", "}];

  return v6;
}

- (BOOL)isAudioCategoryMuteable:(id)muteable
{
  if (!muteable)
  {
    return 0;
  }

  v3 = [(NSDictionary *)[(MXSessionManager *)self figCategoryToMuteabilityDict] objectForKey:muteable];

  return [v3 isEqualToString:0x1F2891890];
}

- (BOOL)isCurrentPortTypeMuteable:(unsigned int)muteable
{
  if (muteable)
  {
    v4 = [(NSDictionary *)[(MXSessionManager *)self vadOutputPortTypeToMuteabilityDict] objectForKey:muteable];
    v3 = vars8;
  }

  else
  {
    v4 = 0;
  }

  return [v4 isEqualToString:0x1F2891890];
}

- (BOOL)isAnyOtherUnduckedPlayingSessionMatchingVolumeRampCategory:(id)category
{
  v19 = *MEMORY[0x1E69E9840];
  LastVolumeRampCategory = vaemVolumeStateGetLastVolumeRampCategory();
  CurrentOutputVADID = CMSUtility_GetCurrentOutputVADID(category);
  copyMXCoreSessionList = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [copyMXCoreSessionList countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(copyMXCoreSessionList);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if (v11 != category && [*(*(&v14 + 1) + 8 * i) isPlaying] && (objc_msgSend(v11, "isDucked") & 1) == 0 && CurrentOutputVADID == CMSUtility_GetCurrentOutputVADID(v11) && PVMCategoriesAreEquivalent(-[MXSessionManager getUncustomizedCategory:](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "getUncustomizedCategory:", objc_msgSend(category, "audioCategory")), objc_msgSend(category, "audioMode"), LastVolumeRampCategory, 0))
        {
          v12 = 1;
          goto LABEL_15;
        }
      }

      v8 = [copyMXCoreSessionList countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_15:

  return v12;
}

- (void)cancelAnyInProgressRampIfNeeded:(id)needed reason:(unsigned __int16)reason
{
  v9 = *MEMORY[0x1E69E9840];
  CurrentOutputVADID = CMSUtility_GetCurrentOutputVADID(needed);
  if (vaemIsVolumeRampInProgress(CurrentOutputVADID, v7) && ![+[MXSessionManager isAnyOtherUnduckedPlayingSessionMatchingVolumeRampCategory:"isAnyOtherUnduckedPlayingSessionMatchingVolumeRampCategory:"]
  {
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    vaemDeviceCancelVolumeRamp(CurrentOutputVADID, reason);
  }
}

- (BOOL)doesSessionPreferInterruptionOnRouteDisconnect:(id)disconnect
{
  v4 = [disconnect hasAudioCategory:@"MediaPlayback"];
  if ([disconnect prefersInterruptionOnRouteDisconnectSetByClient])
  {

    return [disconnect prefersInterruptionOnRouteDisconnect];
  }

  else if ((-[NSString isEqualToString:](-[MXNowPlayingAppManager nowPlayingAppDisplayID](+[MXNowPlayingAppManager sharedInstance](MXNowPlayingAppManager, "sharedInstance"), "nowPlayingAppDisplayID"), "isEqualToString:", [disconnect displayID]) & v4) == 1)
  {
    return [disconnect isAirPlayReceiverSession] ^ 1;
  }

  else
  {
    return 0;
  }
}

- (void)interruptSessionsOnRouteDisconnect:(id)disconnect
{
  v53 = *MEMORY[0x1E69E9840];
  IsInterruptOnRouteDisconnectEnabled = MX_FeatureFlags_IsInterruptOnRouteDisconnectEnabled(self, a2);
  IsContextSystemAudio = FigRoutingManagerContextUtilities_IsContextSystemAudio(disconnect);
  v6 = IsContextSystemAudio;
  v8 = CMSMUtility_IsSharePlayCallSessionActive(IsContextSystemAudio, v7);
  if (IsInterruptOnRouteDisconnectEnabled && v6 && !v8)
  {
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    obj = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
    v9 = [obj countByEnumeratingWithState:&v35 objects:v51 count:16];
    selfCopy2 = self;
    if (v9)
    {
      v11 = v9;
      v12 = *v36;
      v32 = *v36;
      do
      {
        v13 = 0;
        v33 = v11;
        do
        {
          if (*v36 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v35 + 1) + 8 * v13);
          if (objc_msgSend_isActive(v14))
          {
            v15 = [(MXSessionManager *)selfCopy2 doesSessionPreferInterruptionOnRouteDisconnect:v14];
            v16 = CMSUtility_AreRoutingContextsEquivalent(disconnect, [v14 routingContextUUID]);
            if (dword_1EB75DE40)
            {
              v40 = 0;
              type = OS_LOG_TYPE_DEFAULT;
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v18 = v40;
              v19 = type;
              if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
              {
                v20 = v18;
              }

              else
              {
                v20 = v18 & 0xFFFFFFFE;
              }

              if (v20)
              {
                clientName = [v14 clientName];
                audioCategory = [v14 audioCategory];
                v41 = 136316162;
                v42 = "[MXSessionManager(Utilities) interruptSessionsOnRouteDisconnect:]";
                v43 = 2114;
                v44 = clientName;
                v45 = 2114;
                v46 = audioCategory;
                v47 = 1024;
                v48 = v15;
                v49 = 1024;
                v50 = v16;
                selfCopy2 = self;
                LODWORD(v30) = 44;
                _os_log_send_and_compose_impl(v20, 0, v52, 128, &dword_1B17A2000, os_log_and_send_and_compose_flags_and_os_log_type, v19, "-MXSessionManagerUtilities- %s: Session: %{public}@ with audioCategory %{public}@ interruptOnRouteDisconnect = %{BOOL}u, routingContextsAreEquivalent = %{BOOL}u", &v41, v30);
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
              v12 = v32;
              v11 = v33;
            }

            if (v16 && v15)
            {
              if (dword_1EB75DE40)
              {
                v40 = 0;
                type = OS_LOG_TYPE_DEFAULT;
                v24 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v25 = v40;
                v26 = type;
                if (os_log_type_enabled(v24, type))
                {
                  v27 = v25;
                }

                else
                {
                  v27 = v25 & 0xFFFFFFFE;
                }

                if (v27)
                {
                  clientName2 = [v14 clientName];
                  v41 = 136315394;
                  v42 = "[MXSessionManager(Utilities) interruptSessionsOnRouteDisconnect:]";
                  v43 = 2114;
                  v44 = clientName2;
                  LODWORD(v30) = 22;
                  _os_log_send_and_compose_impl(v27, 0, v52, 128, &dword_1B17A2000, v24, v26, "-MXSessionManagerUtilities- %s: INTERRUPTING '%{public}@' for route disconnect", &v41, v30);
                }

                fig_log_call_emit_and_clean_up_after_send_and_compose();
                v12 = v32;
                v11 = v33;
              }

              CMSUtilityApplier_PostNotification_StopCommandWithReason(v14, 0, [MEMORY[0x1E696AD98] numberWithInt:4]);
            }
          }

          ++v13;
        }

        while (v11 != v13);
        v11 = [obj countByEnumeratingWithState:&v35 objects:v51 count:16];
      }

      while (v11);
    }
  }

  else if (dword_1EB75DE40)
  {
    v29 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

- (void)interruptSessionsForCategoryNoLongerRoutable
{
  v14 = *MEMORY[0x1E69E9840];
  copyMXCoreSessionList = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [copyMXCoreSessionList countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(copyMXCoreSessionList);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        if (objc_msgSend_isActive(v7) && [v7 hasInput] && !CMSMVAUtility_IsInputDeviceAvailableForSession(v7))
        {
          if (dword_1EB75DE40)
          {
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          CMSUtilityApplier_PostNotification_StopCommandWithReason(v7, 0, [MEMORY[0x1E696AD98] numberWithInt:4]);
        }
      }

      v4 = [copyMXCoreSessionList countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

- (void)postStopCommandToSessionsWithAudioMode:(id)mode
{
  v34 = *MEMORY[0x1E69E9840];
  if (mode)
  {
    copyMXCoreSessionList = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v5 = [copyMXCoreSessionList countByEnumeratingWithState:&v20 objects:v32 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v21;
      v8 = &qword_1EB75D000;
      v19 = copyMXCoreSessionList;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v21 != v7)
          {
            objc_enumerationMutation(copyMXCoreSessionList);
          }

          v10 = *(*(&v20 + 1) + 8 * i);
          if (objc_msgSend_isActive(v10) && [v10 hasAudioMode:mode])
          {
            if (dword_1EB75DE40)
            {
              v25 = 0;
              type = OS_LOG_TYPE_DEFAULT;
              v11 = v8;
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v13 = v25;
              v14 = type;
              if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
              {
                v15 = v13;
              }

              else
              {
                v15 = v13 & 0xFFFFFFFE;
              }

              if (v15)
              {
                clientName = [v10 clientName];
                v26 = 136315650;
                v27 = "[MXSessionManager(Utilities) postStopCommandToSessionsWithAudioMode:]";
                v28 = 2114;
                v29 = clientName;
                v30 = 2114;
                modeCopy = mode;
                LODWORD(v18) = 32;
                _os_log_send_and_compose_impl(v15, 0, v33, 128, &dword_1B17A2000, os_log_and_send_and_compose_flags_and_os_log_type, v14, "-MXSessionManagerUtilities- %s: INTERRUPTING session '%{public}@' with audioMode '%{public}@'", &v26, v18);
              }

              v8 = v11;
              fig_log_call_emit_and_clean_up_after_send_and_compose();
              copyMXCoreSessionList = v19;
            }

            CMSUtilityApplier_PostNotification_StopCommand(v10, 0);
          }
        }

        v6 = [copyMXCoreSessionList countByEnumeratingWithState:&v20 objects:v32 count:16];
      }

      while (v6);
    }
  }

  else
  {
    v17 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

- (BOOL)isSpeechDetectCategory:(id)category
{
  IsSpeechDetectEnabled = MX_FeatureFlags_IsSpeechDetectEnabled(self, a2);
  if (IsSpeechDetectEnabled)
  {

    LOBYTE(IsSpeechDetectEnabled) = [category isEqualToString:@"SpeechDetect"];
  }

  return IsSpeechDetectEnabled;
}

- (BOOL)isAtleastOneBudNotInEarForA2DPPort
{
  CurrentOutputPortAtIndex = CMSMUtility_GetCurrentOutputPortAtIndex(0);
  if (vaeGetPortTypeFromPortID(CurrentOutputPortAtIndex) == 1885892674)
  {
    DoesBTPortSupportInEarDetection = vaeDoesBTPortSupportInEarDetection(CurrentOutputPortAtIndex);
    if (DoesBTPortSupportInEarDetection)
    {
      LOBYTE(DoesBTPortSupportInEarDetection) = vaeGetBTPortPrimaryBudInEarStatus(CurrentOutputPortAtIndex) != 1 || vaeGetBTPortSecondaryBudInEarStatus(CurrentOutputPortAtIndex) != 1;
    }
  }

  else
  {
    LOBYTE(DoesBTPortSupportInEarDetection) = 0;
  }

  return DoesBTPortSupportInEarDetection;
}

- (void)interruptAllSessionsAndSystemSounds:(id)sounds
{
  v15 = *MEMORY[0x1E69E9840];
  copyMXCoreSessionList = [(MXSessionManager *)self copyMXCoreSessionList];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [copyMXCoreSessionList countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(copyMXCoreSessionList);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if (objc_msgSend_isActive(v8))
        {
          if (dword_1EB75DE40)
          {
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          CMSUtilityApplier_PostNotification_StopCommand(v8, 0);
        }

        [objc_msgSend(v8 "clientPID")];
        CMSystemSoundMgr_StopSystemSoundsforPID();
      }

      v5 = [copyMXCoreSessionList countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (unsigned)getSpeechDetectStyleForSessionConfiguration:(id)configuration
{
  if ([configuration prefersBluetoothHighQualityContentCapture])
  {
    prefersBluetoothFarFieldCapture = 1;
  }

  else
  {
    prefersBluetoothFarFieldCapture = [configuration prefersBluetoothFarFieldCapture];
  }

  if (![configuration prefersSpeechDetectEnabled] || objc_msgSend(configuration, "clientPriority") == 10 || (*&prefersBluetoothFarFieldCapture & ((objc_msgSend(configuration, "currentlyControllingFlags") & 2) >> 1) & 1) != 0)
  {
    return 4;
  }

  if ([configuration hasAudioMode:@"SpokenAudio"])
  {
    return 2;
  }

  v6 = [configuration hasAudioCategory:@"MediaPlayback"];
  if (v6 & 1) != 0 || (v6 = [configuration hasAudioCategory:@"MediaPlaybackNoSpeaker"], (v6) || (v6 = objc_msgSend(configuration, "hasAudioCategory:", @"Audio/Video"), (v6) || (v6 = objc_msgSend(configuration, "hasAudioCategory:", @"AmbientSound"), (v6) || (v6 = objc_msgSend(configuration, "hasAudioCategory:", @"SoloAmbientSound"), (v6) || (v6 = objc_msgSend(configuration, "hasAudioCategory:", @"UserInterfaceSoundEffects"), (v6) || (v6 = objc_msgSend(configuration, "hasAudioCategory:", @"AudioProcessing"), (v6) || (v6 = objc_msgSend(configuration, "hasAudioCategory:", @"LiveAudio"), (v6) || (v6 = objc_msgSend(configuration, "hasAudioCategory:", @"Notice"), (v6) || objc_msgSend(configuration, "isPlayingOutput") && CMSMUtility_IsPlayAndRecordCategory(objc_msgSend(configuration, "audioCategory")) && (v6 = objc_msgSend(configuration, "hasAudioMode:", @"Default"), v6))
  {
    if (!MX_FeatureFlags_IsInterruptLongFormVideoOnSpeechDetectEnabled(v6, v7) || ([configuration hasAudioMode:@"MoviePlayback"] & 1) == 0 && (objc_msgSend(configuration, "isLongFormVideo") & 1) == 0)
    {
      return 3;
    }

    return 2;
  }

  if (-[MXSessionManager sessionUtilizesIndependentRecordingOnly:](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "sessionUtilizesIndependentRecordingOnly:", configuration) || ([configuration hasAudioMode:@"LivePhoto"] & 1) != 0)
  {
    return 1;
  }

  if ([configuration hasAudioCategory:@"SystemSoundsAndHaptics"])
  {
    return 1;
  }

  return 4;
}

- (unsigned)currentSpeechDetectStyle:(id)style
{
  v27 = *MEMORY[0x1E69E9840];
  CurrentOutputPortAtIndex = CMSMUtility_GetCurrentOutputPortAtIndex(0);
  v5 = vaeDoesBluetoothSupportFeature(CurrentOutputPortAtIndex, @"kBluetoothAudioDeviceFeatureConversationDetect") == 0;
  wombatEnabled = [+[MXSessionManager sharedInstance](MXSessionManager wombatEnabled];
  v7 = wombatEnabled;
  if (wombatEnabled)
  {
    v8 = 4;
  }

  else
  {
    v8 = 0;
  }

  if (!wombatEnabled && !v5)
  {
    v8 = [style hasAudioCategory:@"SpeechDetect"];
  }

  copyMXCoreSessionList = [(MXSessionManager *)self copyMXCoreSessionList];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = [copyMXCoreSessionList countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v23;
LABEL_9:
    v13 = 0;
    while (1)
    {
      if (*v23 != v12)
      {
        objc_enumerationMutation(copyMXCoreSessionList);
      }

      v14 = v8 ? v7 : 1;
      if ((v14 | v5))
      {
        break;
      }

      v15 = *(*(&v22 + 1) + 8 * v13);
      if (([v15 hasAudioCategory:@"SpeechDetect"] & 1) == 0 && objc_msgSend_isActive(v15) && !CMSUtility_DoesSessionRemainActiveAfterStoppingPlaying(v15, v16))
      {
        v17 = [(MXSessionManager *)self getSpeechDetectStyleForSessionConfiguration:v15];
        if (v17 == 2)
        {
          v8 = 2;
        }

        else
        {
          if (v17 == 4)
          {
            v8 = 4;
            break;
          }

          if (v17 == 3 && v8 - 4 < 0xFFFFFFFE)
          {
            v8 = 3;
          }
        }
      }

      if (v11 == ++v13)
      {
        v11 = [copyMXCoreSessionList countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v11)
        {
          goto LABEL_9;
        }

        break;
      }
    }
  }

  if (v8 != currentSpeechDetectStyle__sPreviousSpeechDetectStyle && dword_1EB75DE40 != 0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  currentSpeechDetectStyle__sPreviousSpeechDetectStyle = v8;
  return v8;
}

- (BOOL)shouldSetDeviceFormatAndSampleRate:(id)rate
{
  if (rate)
  {
    return ([rate currentlyControllingFlags] >> 1) & 1;
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (BOOL)isAnySessionWithMappedVolumeCategoryPlaying:(id)playing
{
  v18 = *MEMORY[0x1E69E9840];
  copyMXCoreSessionList = [(MXSessionManager *)self copyMXCoreSessionList];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [copyMXCoreSessionList countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(copyMXCoreSessionList);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = PVMGetMappedCategory([v9 audioCategory]);
        if (objc_msgSend_isActive(v9) && [v9 isPlaying] && (objc_msgSend(v9, "doesntActuallyPlayAudio") & 1) == 0 && objc_msgSend(v9, "isPlayingOutput") && (objc_msgSend(v10, "isEqualToString:", playing) & 1) != 0)
        {
          v11 = 1;
          goto LABEL_15;
        }
      }

      v6 = [copyMXCoreSessionList countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_15:

  return v11;
}

- (BOOL)isPotentialSharePlayMediaSessionActive
{
  copyPotentialActiveSharePlayMediaSession = [(MXSessionManager *)self copyPotentialActiveSharePlayMediaSession];
  v3 = copyPotentialActiveSharePlayMediaSession != 0;

  return v3;
}

- (BOOL)sessionCanBecomeSharePlayMedia:(id)media
{
  if (!-[MXSessionManager isAudioCategoryAllowedForSharePlayMedia:](self, "isAudioCategoryAllowedForSharePlayMedia:", [media audioCategory]) || !objc_msgSend(media, "isEligibleForNowPlayingAppConsideration"))
  {
    return 0;
  }

  return [media allowedToBeNowPlayingApp];
}

- (id)copyPotentialActiveSharePlayMediaSession
{
  v19 = *MEMORY[0x1E69E9840];
  IsSharePlayEnabled = MX_FeatureFlags_IsSharePlayEnabled(self, a2);
  if (!IsSharePlayEnabled)
  {
    return 0;
  }

  SharePlayMediaSession = CMSMUtility_GetSharePlayMediaSession(IsSharePlayEnabled, v4);
  if (!objc_msgSend_isActive(SharePlayMediaSession))
  {
    copyMXCoreSessionList = [(MXSessionManager *)self copyMXCoreSessionList];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = [copyMXCoreSessionList countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(copyMXCoreSessionList);
          }

          v12 = *(*(&v14 + 1) + 8 * i);
          if (objc_msgSend_isActive(v12) && [(MXSessionManager *)self sessionCanBecomeSharePlayMedia:v12])
          {
            v6 = v12;
            goto LABEL_18;
          }
        }

        v9 = [copyMXCoreSessionList countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v6 = 0;
LABEL_18:

    return v6;
  }

  return SharePlayMediaSession;
}

- (BOOL)isSessionAllowedToStartRecordingTemporarily:(id)temporarily
{
  displayID = [temporarily displayID];
  appAllowedToInitiateRecordingTemporarily = [(MXSessionManager *)self appAllowedToInitiateRecordingTemporarily];
  if (!displayID || !appAllowedToInitiateRecordingTemporarily)
  {
    return 0;
  }

  return [displayID isEqualToString:appAllowedToInitiateRecordingTemporarily];
}

- (void)postDisallowedActivationDueToContinuityCaptureNotification:(BOOL)notification videoPlaybackWasIntended:(BOOL)intended
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = CMSMDeviceState_ItsAniPad();
  if (v6)
  {
    v8 = MXGetNotificationSenderQueue(v6, v7);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __115__MXSessionManager_Utilities__postDisallowedActivationDueToContinuityCaptureNotification_videoPlaybackWasIntended___block_invoke;
    v10[3] = &__block_descriptor_34_e5_v8__0l;
    notificationCopy = notification;
    intendedCopy = intended;
    MXDispatchAsync("[MXSessionManager(Utilities) postDisallowedActivationDueToContinuityCaptureNotification:videoPlaybackWasIntended:]", "MXSessionManagerUtilities.m", 2149, 0, 0, v8, v10);
  }

  else
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

uint64_t __115__MXSessionManager_Utilities__postDisallowedActivationDueToContinuityCaptureNotification_videoPlaybackWasIntended___block_invoke(uint64_t a1)
{
  if (_block_invoke_registrationStatus && (_block_invoke_registrationStatus = notify_register_check("com.apple.MediaExperience.DisallowedActivationDueToContinuityCapture", &_block_invoke_notificationToken)) != 0 || (!*(a1 + 33) ? (v2 = *(a1 + 32)) : (v2 = *(a1 + 32) | 2), notify_set_state(_block_invoke_notificationToken, v2) || (result = notify_post("com.apple.MediaExperience.DisallowedActivationDueToContinuityCapture"), result)))
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (dword_1EB75DE40)
  {
    v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

- (void)postDisallowedRecordingNotification:(unint64_t)notification
{
  v5 = MXGetNotificationSenderQueue(self, a2);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __67__MXSessionManager_Utilities__postDisallowedRecordingNotification___block_invoke;
  v6[3] = &unk_1E7AEBCA0;
  v6[4] = self;
  v6[5] = notification;
  MXDispatchAsync("[MXSessionManager(Utilities) postDisallowedRecordingNotification:]", "MXSessionManagerUtilities.m", 2198, 0, 0, v5, v6);
}

uint64_t __67__MXSessionManager_Utilities__postDisallowedRecordingNotification___block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (_block_invoke_2_registrationStatus && (_block_invoke_2_registrationStatus = notify_register_check("com.apple.MediaExperience.DisallowedRecording", &_block_invoke_2_notificationToken)) != 0 || notify_set_state(_block_invoke_2_notificationToken, *(a1 + 40)) || (result = notify_post("com.apple.MediaExperience.DisallowedRecording"), result))
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (dword_1EB75DE40)
  {
    v4 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

- (id)getDisallowedRecordingReasonString:(unint64_t)string
{
  if (string == 1)
  {
    return @"OnenessIsActive";
  }

  else
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"UNKNOWN(%llu)", string];
  }
}

- (void)updateActiveSessionsOnDeviceRelinquished
{
  v12 = *MEMORY[0x1E69E9840];
  copyMXCoreSessionList = [(MXSessionManager *)self copyMXCoreSessionList];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = [copyMXCoreSessionList countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(copyMXCoreSessionList);
        }

        [*(*(&v7 + 1) + 8 * v6) setWasActiveWhenDeviceOwnershipRelinquished:objc_msgSend_isActive(*(*(&v7 + 1) + 8 * v6))];
        ++v6;
      }

      while (v4 != v6);
      v4 = [copyMXCoreSessionList countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (id)getCleanupSessionAssertionReasonString:(int64_t)string
{
  if (string >= 3)
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"UNKNOWN reason = %d", string];
  }

  else
  {
    return off_1E7AECD68[string];
  }
}

- (void)cleanupSessionAssertionsIfNeeded:(id)needed cleanupReason:(int64_t)reason
{
  if (needed && [needed audioSessionID])
  {
    objc_initWeak(&location, needed);
    audioSessionID = [needed audioSessionID];
    if ([needed clientName])
    {
      clientName = [needed clientName];
    }

    else
    {
      clientName = [MEMORY[0x1E696AEC0] stringWithFormat:@"UNKNOWN-client-%u", audioSessionID];
    }

    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithString:clientName];
    v10 = MXGetSerialQueue(v8, v9);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __78__MXSessionManager_Utilities__cleanupSessionAssertionsIfNeeded_cleanupReason___block_invoke;
    v11[3] = &unk_1E7AECCC0;
    objc_copyWeak(v12, &location);
    v13 = audioSessionID;
    v12[1] = reason;
    v11[4] = v8;
    MXDispatchAsync("[MXSessionManager(Utilities) cleanupSessionAssertionsIfNeeded:cleanupReason:]", "MXSessionManagerUtilities.m", 2302, 0, 0, v10, v11);
    objc_destroyWeak(v12);
    objc_destroyWeak(&location);
  }
}

void __78__MXSessionManager_Utilities__cleanupSessionAssertionsIfNeeded_cleanupReason___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  Weak = objc_loadWeak((a1 + 40));
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  if ([Weak playbackAssertionRef])
  {
    [v3 addObject:{objc_msgSend(Weak, "playbackAssertionRef")}];
  }

  if ([Weak resumeAssertionRef])
  {
    [v3 addObject:{objc_msgSend(Weak, "resumeAssertionRef")}];
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [Weak hostProcessPlaybackAssertions];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [v3 addObject:{objc_msgSend(objc_msgSend(Weak, "hostProcessPlaybackAssertions"), "objectForKey:", *(*(&v10 + 1) + 8 * v8++))}];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"0x%x", *(a1 + 56)];
  MX_RunningBoardServices_InvalidatePlaybackAssertionsContainingSessionID(v9, v3, *(a1 + 48));
}

- (id)copyEvaluatedBadgeType:(id)type
{
  EvaluatedBadgeType = FigRoutingManagerUtilities_GetEvaluatedBadgeType(type);

  return EvaluatedBadgeType;
}

- (void)updateBadgeType:(id)type matchingPID:(int)d
{
  v17 = *MEMORY[0x1E69E9840];
  copyMXCoreSessionList = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [copyMXCoreSessionList countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(copyMXCoreSessionList);
        }

        v11 = *(*(&v12 + 1) + 8 * i);
        if ([objc_msgSend(v11 "clientPID")] == d)
        {
          [v11 setBadgeType:type];
        }
      }

      v8 = [copyMXCoreSessionList countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)updateSupportedOutputChannelLayouts:(id)layouts matchingPID:(int)d
{
  v17 = *MEMORY[0x1E69E9840];
  copyMXCoreSessionList = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [copyMXCoreSessionList countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(copyMXCoreSessionList);
        }

        v11 = *(*(&v12 + 1) + 8 * i);
        if ([objc_msgSend(v11 "clientPID")] == d)
        {
          [v11 setSupportedOutputChannelLayouts:layouts];
        }
      }

      v8 = [copyMXCoreSessionList countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (BOOL)isPIDAllowedToBeNowPlayingApp:(int)app
{
  v18 = *MEMORY[0x1E69E9840];
  copyMXCoreSessionList = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [copyMXCoreSessionList countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(copyMXCoreSessionList);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([objc_msgSend(v10 "clientPID")] == app)
        {
          if (CMSUtility_GetIsEligibleForNowPlayingAppConsideration(v10))
          {
            ++v7;
            if (![v10 allowedToBeNowPlayingApp])
            {
              v11 = 0;
              goto LABEL_15;
            }
          }
        }
      }

      v6 = [copyMXCoreSessionList countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v7 = 0;
  }

  v11 = 1;
LABEL_15:

  return v7 && v11;
}

- (id)copySessionEligibleForNowPlayingAppConsideration:(int)consideration
{
  v17 = *MEMORY[0x1E69E9840];
  copyMXCoreSessionList = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [copyMXCoreSessionList countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(copyMXCoreSessionList);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([objc_msgSend(v9 "clientPID")] == consideration && objc_msgSend(v9, "isEligibleForNowPlayingAppConsideration"))
        {
          v10 = v9;
          goto LABEL_12;
        }
      }

      v6 = [copyMXCoreSessionList countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_12:

  return v10;
}

- (BOOL)isBTRouteSameDeviceWithDifferentProfile:(unsigned int)profile newNumRoutes:(unsigned int)routes oldRouteTypes:(id)types newRouteTypes:(id)routeTypes oldRouteIdentifiers:(id)identifiers newRouteIdentifiers:(id)routeIdentifiers
{
  LOBYTE(v8) = 0;
  if (profile == 1 && routes == 1)
  {
    if ([types containsObject:@"HeadphonesBT"])
    {
      v13 = 0;
    }

    else
    {
      v13 = [types containsObject:@"HeadsetBT"] ^ 1;
    }

    if ([routeTypes containsObject:@"HeadphonesBT"])
    {
      v14 = 0;
    }

    else
    {
      v14 = [routeTypes containsObject:@"HeadsetBT"] ^ 1;
    }

    if ((v13 | v14))
    {
      LOBYTE(v8) = 0;
    }

    else
    {
      v18 = 0;
      v19 = 0;
      v16 = 0;
      v17 = 0;
      CMSMUtility_CreateTokensFromDeviceUID([identifiers objectAtIndex:0], &v19, &v17);
      CMSMUtility_CreateTokensFromDeviceUID([routeIdentifiers objectAtIndex:0], &v18, &v16);
      LOBYTE(v8) = 0;
      if (v19 && v18 && v17 && v16)
      {
        if ([v19 isEqualToString:?])
        {
          v8 = [v17 isEqualToString:v16] ^ 1;
        }

        else
        {
          LOBYTE(v8) = 0;
        }
      }
    }
  }

  return v8;
}

- (BOOL)sessionUtilizesIndependentRecordingOnly:(id)only
{
  IsAdditiveRoutingEnabled = CMSMVAUtility_IsAdditiveRoutingEnabled(self, a2);
  if (IsAdditiveRoutingEnabled)
  {
    if (([only isRoutedToOnDemandVAD] & 1) != 0 || (IsAdditiveRoutingEnabled = objc_msgSend(only, "willRouteToOnDemandVADOnActivation")) != 0)
    {
      if ([only hasAudioMode:@"SoundRecognition"])
      {
        LOBYTE(IsAdditiveRoutingEnabled) = 1;
      }

      else
      {
        IsAdditiveRoutingEnabled = [only mixesWithEveryone];
        if (IsAdditiveRoutingEnabled)
        {
          LOBYTE(IsAdditiveRoutingEnabled) = CMSMUtility_IsCategoryInputOnly([only audioCategory]);
        }
      }
    }
  }

  return IsAdditiveRoutingEnabled;
}

- (BOOL)canSessionsCoexistDueToIndependentRecording:(id)recording victim:(id)victim
{
  v11 = *MEMORY[0x1E69E9840];
  if (!CMSMVAUtility_IsAdditiveRoutingEnabled(self, a2) || (v6 = victim, v7 = recording, ![+[MXSessionManager sharedInstance](MXSessionManager sessionUtilizesIndependentRecordingOnly:"sessionUtilizesIndependentRecordingOnly:", recording]) && (v6 = recording, v7 = victim, ![+[MXSessionManager sessionUtilizesIndependentRecordingOnly:"sessionUtilizesIndependentRecordingOnly:"])
  {
LABEL_16:
    LOBYTE(v7) = 0;
    return v7;
  }

  if (v7)
  {
    if ((-[NSObject prefersEchoCancelledInput](v7, "prefersEchoCancelledInput") & 1) == 0 && [v6 isTheAssistant])
    {
      if (dword_1EB75DE40)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      goto LABEL_16;
    }

    if ([v7 hasAudioMode:@"SoundRecognition"])
    {
      if (dword_1EB75DE40)
      {
        v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
        LOBYTE(v7) = 1;
LABEL_18:
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        return v7;
      }

      goto LABEL_15;
    }

    if (![v6 hasPhoneCallBehavior])
    {
LABEL_15:
      LOBYTE(v7) = 1;
      return v7;
    }

    LOBYTE(v7) = [v7 hasEntitlementToRecordDuringCall];
    if (dword_1EB75DE40)
    {
      v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
      goto LABEL_18;
    }
  }

  return v7;
}

- (BOOL)canSessionsCoexistDueToMediaMultitasking:(id)multitasking victim:(id)victim
{
  v10 = *MEMORY[0x1E69E9840];
  if (!CMSMDeviceState_SupportsMediaMultitasking(self, a2) || ![multitasking isMediaSession] || !objc_msgSend(victim, "isMediaSession"))
  {
    return 0;
  }

  v6 = CMSUtility_SessionCanBeAndAllowedToBeNowPlayingApp(multitasking);
  if (v6 != CMSUtility_SessionCanBeAndAllowedToBeNowPlayingApp(victim))
  {
    if (!dword_1EB75DE40)
    {
      return 1;
    }

LABEL_10:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    v7 = 1;
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return v7;
  }

  if (![multitasking hasAudioTrack] || (objc_msgSend(victim, "hasAudioTrack") & 1) == 0)
  {
    if (!dword_1EB75DE40)
    {
      return 1;
    }

    goto LABEL_10;
  }

  return 0;
}

- (BOOL)canSessionsCoexistDueToOutputMuting:(id)muting victim:(id)victim
{
  v9 = *MEMORY[0x1E69E9840];
  if (!CMSMDeviceState_SupportsShortFormOutputMutingAudioPolicy(self, a2) || ![muting isEligibleForOutputMuting] || !objc_msgSend(victim, "isEligibleForOutputMuting") || (!objc_msgSend(muting, "isOutputMuted") || (objc_msgSend(muting, "hasAudioMode:", @"ShortFormVideo") & 1) == 0) && (!objc_msgSend(victim, "isOutputMuted") || !objc_msgSend(victim, "hasAudioMode:", @"ShortFormVideo")))
  {
    return 0;
  }

  if (!dword_1EB75DE40)
  {
    return 1;
  }

  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  v8 = 1;
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  return v8;
}

- (BOOL)isAirPlaySession:(id)session
{
  if ([objc_msgSend(session "displayID")] & 1) != 0 || (objc_msgSend(objc_msgSend(session, "displayID"), "containsString:", @"TVAirPlay"))
  {
    return 1;
  }

  return [session isAirPlayReceiverSession];
}

- (BOOL)isSiriSessionActiveAndRoutedToSiriOutputVAD
{
  v14 = *MEMORY[0x1E69E9840];
  copyMXCoreSessionList = [(MXSessionManager *)self copyMXCoreSessionList];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [copyMXCoreSessionList countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(copyMXCoreSessionList);
        }

        v6 = *(*(&v9 + 1) + 8 * i);
        if (objc_msgSend_isActive(v6))
        {
          if ([v6 isTheAssistant])
          {
            CurrentOutputVADID = CMSUtility_GetCurrentOutputVADID(v6);
            if (CurrentOutputVADID == [+[MXSessionManager siriOutputVADID] sharedInstance]
            {
              LOBYTE(v3) = 1;
              goto LABEL_13;
            }
          }
        }
      }

      v3 = [copyMXCoreSessionList countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  return v3;
}

- (BOOL)isSiriSessionActive:(BOOL *)active andMixable:(BOOL *)mixable
{
  v19 = *MEMORY[0x1E69E9840];
  copyMXCoreSessionList = [(MXSessionManager *)self copyMXCoreSessionList];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [copyMXCoreSessionList countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(copyMXCoreSessionList);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if ([v11 isTheAssistant])
        {
          if (active)
          {
            *active = [v11 isRecording];
          }

          if (mixable)
          {
            *mixable = [v11 mixesWithEveryone];
          }

          isActive = objc_msgSend_isActive(v11);
          goto LABEL_15;
        }
      }

      v8 = [copyMXCoreSessionList countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  isActive = 0;
LABEL_15:

  return isActive;
}

- (BOOL)isMixableSessionBeingInterruptedByNextRecordingClient:(id)client victim:(id)victim
{
  if ([victim mixesWithEveryone])
  {
    clientPriority = [victim clientPriority];
    v7 = clientPriority == [client clientPriority];
  }

  else
  {
    v7 = 0;
  }

  v8 = [victim prefersBeingInterruptedByNextActiveRecordingClient] && CMSMUtility_IsRecordingCategory(objc_msgSend(client, "audioCategory")) || objc_msgSend(client, "prefersToInterruptActiveRecordingSessions") && (objc_msgSend(victim, "isTheAssistant") & 1) == 0 && CMSMUtility_IsRecordingCategory(objc_msgSend(victim, "audioCategory"));
  return v7 && v8;
}

- (BOOL)doesAnyActiveSessionExistWhichPrefersToBeInterruptedByNextRecordingClient:(id)client
{
  v18 = *MEMORY[0x1E69E9840];
  copyMXCoreSessionList = [(MXSessionManager *)self copyMXCoreSessionList];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [copyMXCoreSessionList countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(copyMXCoreSessionList);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if (v9 != client && objc_msgSend_isActive(*(*(&v13 + 1) + 8 * i)) && [v9 prefersBeingInterruptedByNextActiveRecordingClient])
        {
          if (dword_1EB75DE40)
          {
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            v10 = 1;
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          else
          {
            v10 = 1;
          }

          goto LABEL_15;
        }
      }

      v6 = [copyMXCoreSessionList countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_15:

  return v10;
}

- (void)remoteDeviceControlIsAllowed:(unsigned int *)allowed
{
  v20 = *MEMORY[0x1E69E9840];
  if (!MX_FeatureFlags_IsOnenessEnabled(self, a2))
  {
    if (!allowed)
    {
      return;
    }

    v11 = 1;
    goto LABEL_30;
  }

  copyMXCoreSessionList = [(MXSessionManager *)self copyMXCoreSessionList];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [copyMXCoreSessionList countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(copyMXCoreSessionList);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        if (objc_msgSend_isActive(v10) && [v10 hasPhoneCallBehavior] && objc_msgSend(v10, "isRecording"))
        {
          if (dword_1EB75DE40)
          {
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          v11 = 3;
          goto LABEL_29;
        }

        if ([v10 isTheAssistant] && objc_msgSend(v10, "isRecording"))
        {
          if (dword_1EB75DE40)
          {
            v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          v11 = 4;
          goto LABEL_29;
        }

        if (objc_msgSend_isActive(v10) && [v10 isRecording] && (objc_msgSend(v10, "prefersNoInterruptionsDuringRemoteDeviceControl") & 1) == 0)
        {
          if (dword_1EB75DE40)
          {
            v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          v11 = 2;
          goto LABEL_29;
        }
      }

      v7 = [copyMXCoreSessionList countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_29:

  if (allowed)
  {
LABEL_30:
    *allowed = v11;
  }
}

- (id)getAvailableAudioDestination:(id)destination
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = @"VirtualAudioDevice_Default";
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [destination countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(destination);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if (vaemIsAudioDestinationAvailable(v9))
        {
          return v9;
        }
      }

      v6 = [destination countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  return v4;
}

- (id)copyAudioBehaviorForCategory:(id)category mode:(id)mode
{
  v12 = *MEMORY[0x1E69E9840];
  if (!qword_1EB75E0E8)
  {
    return 0;
  }

  if (!category || !mode)
  {
    if (!dword_1EB75DE40)
    {
      return 0;
    }

LABEL_14:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return 0;
  }

  CategoryStringWithModeAppended = CMSMUtility_CreateCategoryStringWithModeAppended([+[MXSessionManager getUncustomizedCategory:"getUncustomizedCategory:"];
  if (!CategoryStringWithModeAppended)
  {
    goto LABEL_14;
  }

  v6 = CategoryStringWithModeAppended;
  v7 = CMSMUtility_CopyCurrentRouteTypes();
  if ([category isEqualToString:@"VoiceOver"] && -[__CFArray containsObject:](v7, "containsObject:", @"BluetoothLEOutput"))
  {
    v8 = CMSMUtility_CopyVoiceOverOverBTLEAudioDictionary();
  }

  else
  {
    v9 = [qword_1EB75E0E8 objectForKey:v6];
    if (v9)
    {
      goto LABEL_13;
    }

    v8 = [qword_1EB75E0E8 objectForKey:@"Default"];
  }

  v9 = v8;
LABEL_13:

  if (!v9)
  {
    goto LABEL_14;
  }

  return v9;
}

- (id)getProjectedAudioDestinationForCategory:(id)category mode:(id)mode
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = @"VirtualAudioDevice_Default";
  if (category && mode)
  {
    mode = [+[MXSessionManager sharedInstance](MXSessionManager copyAudioBehaviorForCategory:"copyAudioBehaviorForCategory:mode:" mode:category, mode];
    v6 = [mode objectForKey:@"AudioBehaviour_Destination"];
    if (v6)
    {
      v4 = [+[MXSessionManager sharedInstance](MXSessionManager getAvailableAudioDestination:"getAvailableAudioDestination:", v6];
    }
  }

  else if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return v4;
}

- (int)getVolumeButtonDelta:(id)delta outVolumeDelta:(float *)volumeDelta
{
  cf[16] = *MEMORY[0x1E69E9840];
  VolumeButtonClient = CMSessionMgrFindVolumeButtonClient(1, a2);
  v7 = VolumeButtonClient;
  if (VolumeButtonClient)
  {
    if (!objc_msgSend_isActive(VolumeButtonClient))
    {
      VolumeDeltaIfRoutedToThirdPartyTV = 0.0625;
      goto LABEL_33;
    }

    VolumeDeltaIfRoutedToThirdPartyTV = CMSUtility_GetVolumeDeltaIfRoutedToThirdPartyTV(v7, 0.0625);
  }

  else
  {
    cf[0] = 0;
    v19 = 0;
    *v20 = 0;
    theArray = 0;
    PVMCopyCurrentDeviceRoute(cf, v20, &v19);
    v9 = CMSMUtility_CopySystemAudioRoutingContextUUID();
    FigRoutingManagerContextUtilities_CopyPickedEndpoints(v9, &theArray);
    if (theArray && CFArrayGetCount(theArray) && (CFArrayGetValueAtIndex(theArray, 0), FigEndpointUtility_IsEndpointThirdPartyTVFamily()) && FigCFEqual())
    {
      if (CMSMDeviceState_ButtonsCanChangeRingerVolume())
      {
        VolumeDeltaIfRoutedToThirdPartyTV = 0.0625;
      }

      else
      {
        VolumeDeltaIfRoutedToThirdPartyTV = 0.01;
      }
    }

    else
    {
      VolumeDeltaIfRoutedToThirdPartyTV = 0.0625;
    }

    if (cf[0])
    {
      CFRelease(cf[0]);
      cf[0] = 0;
    }

    if (*v20)
    {
      CFRelease(*v20);
      *v20 = 0;
    }

    if (v19)
    {
      CFRelease(v19);
      v19 = 0;
    }

    if (v9)
    {
      CFRelease(v9);
    }

    if (theArray)
    {
      CFRelease(theArray);
    }
  }

  if (VolumeDeltaIfRoutedToThirdPartyTV != 0.0625 && dword_1EB75DE40 != 0)
  {
    LODWORD(v19) = 0;
    LOBYTE(theArray) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v12 = v19;
    v13 = theArray;
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, theArray))
    {
      v14 = v12;
    }

    else
    {
      v14 = v12 & 0xFFFFFFFE;
    }

    if (v14)
    {
      clientName = [v7 clientName];
      isActive = objc_msgSend_isActive(v7);
      *v20 = 136316162;
      *&v20[4] = "[MXSessionManager(Utilities) getVolumeButtonDelta:outVolumeDelta:]";
      v21 = 2114;
      v22 = clientName;
      v23 = 2114;
      deltaCopy = delta;
      v25 = 1024;
      v26 = isActive;
      v27 = 2048;
      v28 = VolumeDeltaIfRoutedToThirdPartyTV;
      _os_log_send_and_compose_impl(v14, 0, cf, 128, &dword_1B17A2000, os_log_and_send_and_compose_flags_and_os_log_type, v13, "-MXSessionManagerUtilities- %s: Volume button client session: %{public}@, category: %{public}@, isActive: %{BOOL}u, outVolumeDelta = %1.4f", v20, 48);
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_33:
  *volumeDelta = VolumeDeltaIfRoutedToThirdPartyTV;
  return 0;
}

- (void)interruptAllIndependentInputAudioResourceSessionsIfNeeded:(id)needed
{
  if ([needed isTheAssistant] && objc_msgSend(needed, "isHardwareSafetySession"))
  {
    v4 = +[MXSessionManagerIndependentAudioResource sharedInstance];
    displayID = [needed displayID];
    clientName = [needed clientName];

    [(MXSessionManagerIndependentAudioResource *)v4 interruptAllIndependentInputAudioResourceSessions:displayID interruptorName:clientName];
  }
}

- (void)resumeInterruptedIndependentInputAudioResourceSessionsIfNeeded:(id)needed
{
  if ([needed isTheAssistant] && objc_msgSend(needed, "isHardwareSafetySession"))
  {
    v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@.%@", @"resumable", objc_msgSend(needed, "audioCategory")];
    -[MXSessionManagerIndependentAudioResource resumeAllIndependentInputAudioResourceSessions:interruptorBundleID:interruptorName:](+[MXSessionManagerIndependentAudioResource sharedInstance](MXSessionManagerIndependentAudioResource, "sharedInstance"), "resumeAllIndependentInputAudioResourceSessions:interruptorBundleID:interruptorName:", v4, [needed displayID], objc_msgSend(needed, "clientName"));
  }
}

- (BOOL)isSessionConfigurationEligibleForOutputMuting:(id)muting audioMode:(id)mode
{
  IsPlayAndRecordCategory = CMSMDeviceState_SupportsShortFormOutputMutingAudioPolicy(self, a2);
  if (IsPlayAndRecordCategory)
  {
    if (FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual() || CMSMUtility_IsCategoryInputOnly(muting))
    {
      LOBYTE(IsPlayAndRecordCategory) = 1;
    }

    else
    {
      IsPlayAndRecordCategory = CMSMUtility_IsPlayAndRecordCategory(muting);
      if (IsPlayAndRecordCategory)
      {
        LOBYTE(IsPlayAndRecordCategory) = CMSMUtility_DoCategoryAndModeHavePhoneCallBehaviour(muting, mode) == 0;
      }
    }
  }

  return IsPlayAndRecordCategory;
}

- (void)synchronizeSessionVolumeWithMediaVolumeIfNeeded:(id)needed
{
  v28 = *MEMORY[0x1E69E9840];
  if (MX_FeatureFlags_IsSynchronizeSiriAlarmVolumesToMediaVolumeEnabled(self, a2))
  {
    if (([needed isTheAssistant] & 1) != 0 || (objc_msgSend(needed, "audioCategory"), FigCFEqual()))
    {
      [+[MXSessionManager sharedInstance](MXSessionManager setIsVoiceAssistantPlayingToPersonalAudioDeviceOverMedia:"setIsVoiceAssistantPlayingToPersonalAudioDeviceOverMedia:", 0];
      if ([+[MXSessionManager isAnySessionWithMappedVolumeCategoryPlaying:"isAnySessionWithMappedVolumeCategoryPlaying:"]
      {
        v24 = 0;
        *cf = 0u;
        *v23 = 0u;
        PVMCopyCurrentDeviceRoute(&cf[1], &v23[1], v23);
        v25 = *cf;
        v26 = *v23;
        v27 = v24;
        cf[0] = PVMGetMappedEndpointType(&v25);
        v25 = *cf;
        v26 = *v23;
        v27 = v24;
        if (PVMIsRoutedToAPersonalAudioDevice(&v25))
        {
          if ([needed isTheAssistant])
          {
            UpTimeNanoseconds = FigGetUpTimeNanoseconds();
            v25 = *cf;
            v26 = *v23;
            v27 = v24;
            v5 = ((UpTimeNanoseconds - PVMGetMostRecentSynchronizedVolumeActivityTimestamp(&v25)) / 0x3B9ACA00uLL);
            if (PVMGetSynchronizedVolumeResetTimerDuration() <= v5)
            {
              v25 = *cf;
              v26 = *v23;
              v27 = v24;
              v13 = PVMGetVolumePreference(@"Audio/Video", 0, &v25);
              v14 = PVMGetRawVolumeForCurrentRouteFromVolume(@"Audio/Video", 0, v13);
              v15 = PVMComputeSynchronizedVolume(v14);
              v25 = *cf;
              v26 = *v23;
              v27 = v24;
              *&v16 = PVMGetVolumePreference(@"VoiceCommand", 0, &v25);
              v17 = PVMGetVolumeToBeAppliedOnHardware(v16, v15);
              if (v17)
              {
                v18 = v17;
                if (dword_1EB75DE40)
                {
                  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                  fig_log_call_emit_and_clean_up_after_send_and_compose();
                }

                [v18 floatValue];
                v25 = *cf;
                v26 = *v23;
                v27 = v24;
                PVMSetVolumePreference(@"VoiceCommand", 0, 1, &v25, 0, 0, v21, 0.0, 0.0);
              }
            }

            else
            {
              v25 = *cf;
              v26 = *v23;
              v27 = v24;
              PVMSetMostRecentSynchronizedVolumeActivityTimestamp(&v25, UpTimeNanoseconds);
            }

            [+[MXSessionManager sharedInstance](MXSessionManager setIsVoiceAssistantPlayingToPersonalAudioDeviceOverMedia:"setIsVoiceAssistantPlayingToPersonalAudioDeviceOverMedia:", 1];
          }

          else
          {
            v25 = *cf;
            v26 = *v23;
            v27 = v24;
            v6 = PVMGetVolumePreference(@"Audio/Video", 0, &v25);
            v7 = PVMGetRawVolumeForCurrentRouteFromVolume(@"Audio/Video", 0, v6);
            v8 = PVMComputeSynchronizedVolume(v7);
            *&v25 = 0;
            *(&v25 + 1) = @"broadcast";
            v27 = 0;
            v26 = 0uLL;
            *&v9 = PVMGetVolumePreference(@"Alarm", 0, &v25);
            v10 = PVMGetVolumeToBeAppliedOnHardware(v9, v8);
            if (v10)
            {
              v11 = v10;
              if (dword_1EB75DE40)
              {
                v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              [v11 floatValue];
              *&v25 = 0;
              *(&v25 + 1) = @"broadcast";
              v27 = 0;
              v26 = 0uLL;
              PVMSetVolumePreference(@"Alarm", 0, 1, &v25, 0, 0, v20, 0.0, 0.0);
            }
          }
        }

        if (cf[1])
        {
          CFRelease(cf[1]);
          cf[1] = 0;
        }

        if (v23[1])
        {
          CFRelease(v23[1]);
          v23[1] = 0;
        }

        if (v23[0])
        {
          CFRelease(v23[0]);
        }
      }
    }
  }
}

- (BOOL)isCurrentRouteHeadphoneAndInEar:(unsigned int *)ear
{
  getCurrentOutputPort = [(MXSessionManager *)self getCurrentOutputPort];
  v6 = getCurrentOutputPort;
  if (ear)
  {
    *ear = getCurrentOutputPort;
  }

  if (getCurrentOutputPort)
  {
    v7 = [(MXSessionManager *)self isPortHeadphoneWithInEarDetectionSupported:getCurrentOutputPort];
    if (v7)
    {
      LOBYTE(v7) = vaeIsInEarStatusTrueForBTPort(v6) != 0;
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (BOOL)shouldAllowBluetoothAccessoryToRequestAudioRoute
{
  v6 = *MEMORY[0x1E69E9840];
  if (!+[MXSystemController preferHeadphonesOverCarsAndSpeakersEnabled])
  {
    if (!dword_1EB75DE40)
    {
      return 1;
    }

LABEL_6:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    v4 = 1;
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return v4;
  }

  if (![+[MXSessionManager isCurrentRouteHeadphoneAndInEar:"isCurrentRouteHeadphoneAndInEar:"]
  {
    if (!dword_1EB75DE40)
    {
      return 1;
    }

    goto LABEL_6;
  }

  if (dword_1EB75DE40)
  {
    v2 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return 0;
}

- (int)prepareSessionActivationBeforeACQDispatch:(id)dispatch
{
  v4 = MXGetPerformanceLog(self, a2);
  v5 = os_signpost_id_make_with_pointer(v4, dispatch);
  v7 = MXGetPerformanceLog(v5, v6);
  if (v5 - 1 > 0xFFFFFFFFFFFFFFFDLL)
  {
    MXGetPerformanceLog(v7, v8);
  }

  else
  {
    v9 = v7;
    v10 = os_signpost_enabled(v7);
    if (v10)
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1B17A2000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v5, "Prepare session activation", &unk_1B19E5B76, buf, 2u);
    }

    v12 = MXGetPerformanceLog(v10, v11);
    if (os_signpost_enabled(v12))
    {
      *v14 = 0;
      _os_signpost_emit_with_name_impl(&dword_1B17A2000, v12, OS_SIGNPOST_INTERVAL_END, v5, "Prepare session activation", &unk_1B19E5B76, v14, 2u);
    }
  }

  return 0;
}

- (void)setUpStringConversionDictionaries
{
  v51[10] = *MEMORY[0x1E69E9840];
  v3 = 1650811758;
  v51[0] = @"Record";
  v51[1] = @"Record_WithBluetooth";
  v51[2] = @"PlayAndRecord";
  v51[3] = @"PlayAndRecord_WithBluetooth";
  v51[4] = @"PlayAndRecord_NoBluetooth_DefaultToSpeaker";
  v51[5] = @"PlayAndRecord_WithBluetooth_DefaultToSpeaker";
  v51[6] = @"VoiceCommand";
  v51[7] = @"VoiceCommand_WithBluetooth";
  v51[8] = @"VoiceCommandThatMixes";
  v51[9] = @"VoiceCommandThatMixes_WithBluetooth";
  v50[0] = @"Record_WithBluetooth";
  v50[1] = @"Record_WithBluetooth";
  v50[2] = @"PlayAndRecord_WithBluetooth";
  v50[3] = @"PlayAndRecord_WithBluetooth";
  v50[4] = @"PlayAndRecord_WithBluetooth_DefaultToSpeaker";
  v50[5] = @"PlayAndRecord_WithBluetooth_DefaultToSpeaker";
  v50[6] = @"VoiceCommand_WithBluetooth";
  v50[7] = @"VoiceCommand_WithBluetooth";
  v50[8] = @"VoiceCommandThatMixes_WithBluetooth";
  v50[9] = @"VoiceCommandThatMixes_WithBluetooth";
  v49[0] = @"Record";
  v49[1] = @"Record";
  v49[2] = @"PlayAndRecord";
  v49[3] = @"PlayAndRecord";
  v49[4] = @"PlayAndRecord_NoBluetooth_DefaultToSpeaker";
  v49[5] = @"PlayAndRecord_NoBluetooth_DefaultToSpeaker";
  v49[6] = @"VoiceCommand";
  v49[7] = @"VoiceCommand";
  v49[8] = @"VoiceCommandThatMixes";
  v49[9] = @"VoiceCommandThatMixes";
  v48[0] = @"Record";
  v48[1] = @"Record";
  v48[2] = @"PlayAndRecord";
  v48[3] = @"PlayAndRecord";
  v48[4] = @"PlayAndRecord";
  v48[5] = @"PlayAndRecord";
  v48[6] = @"VoiceCommand";
  v48[7] = @"VoiceCommand";
  v48[8] = @"VoiceCommandThatMixes";
  v48[9] = @"VoiceCommandThatMixes";
  v47[0] = @"Record";
  v47[1] = @"Record_WithBluetooth";
  v47[2] = @"PlayAndRecord_NoBluetooth_DefaultToSpeaker";
  v47[3] = @"PlayAndRecord_WithBluetooth_DefaultToSpeaker";
  v47[4] = @"PlayAndRecord_NoBluetooth_DefaultToSpeaker";
  v47[5] = @"PlayAndRecord_WithBluetooth_DefaultToSpeaker";
  v47[6] = @"VoiceCommand";
  v47[7] = @"VoiceCommand_WithBluetooth";
  v47[8] = @"VoiceCommandThatMixes";
  v47[9] = @"VoiceCommandThatMixes_WithBluetooth";
  v46[0] = @"Record";
  v46[1] = @"Record_WithBluetooth";
  v46[2] = @"PlayAndRecord";
  v46[3] = @"PlayAndRecord_WithBluetooth";
  v46[4] = @"PlayAndRecord";
  v46[5] = @"PlayAndRecord_WithBluetooth";
  v46[6] = @"VoiceCommand";
  v46[7] = @"VoiceCommand_WithBluetooth";
  v46[8] = @"VoiceCommandThatMixes";
  v46[9] = @"VoiceCommandThatMixes_WithBluetooth";
  v45[0] = @"Record";
  v45[1] = @"Record_WithBluetooth";
  v45[2] = @"PlayAndRecord";
  v45[3] = @"PlayAndRecord_WithBluetooth";
  v45[4] = @"PlayAndRecord";
  v45[5] = @"PlayAndRecord_WithBluetooth";
  v45[6] = @"VoiceCommand";
  v45[7] = @"VoiceCommand_WithBluetooth";
  v45[8] = @"VoiceCommandThatMixes";
  v45[9] = @"VoiceCommandThatMixes_WithBluetooth";
  keys[0] = @"Audio/Video";
  keys[1] = @"Ringtone";
  keys[2] = @"Voicemail";
  keys[3] = @"VoicemailGreeting";
  keys[4] = @"PhoneCall";
  keys[5] = @"TTYCall";
  keys[6] = @"RingtonePreview";
  keys[7] = @"Alarm";
  keys[8] = @"Record";
  keys[9] = @"Record_WithBluetooth";
  keys[10] = @"PlayAndRecord";
  keys[11] = @"PlayAndRecord_WithBluetooth";
  keys[12] = @"PlayAndRecord_NoBluetooth_DefaultToSpeaker";
  keys[13] = @"PlayAndRecord_WithBluetooth_DefaultToSpeaker";
  keys[14] = @"UserInterfaceSoundEffects";
  keys[15] = @"AmbientSound";
  keys[16] = @"SoloAmbientSound";
  keys[17] = @"MediaPlayback";
  keys[18] = @"AudioProcessing";
  keys[19] = @"LiveAudio";
  keys[20] = @"Notice";
  keys[21] = @"VoiceCommand";
  keys[22] = @"VoiceCommand_WithBluetooth";
  keys[23] = @"VoiceCommandThatMixes";
  keys[24] = @"VoiceCommandThatMixes_WithBluetooth";
  keys[25] = @"VoiceOver";
  keys[26] = @"FindMyPhone";
  keys[27] = @"EmergencyAlert";
  keys[28] = @"EmergencyAlert_Muteable";
  keys[29] = @"Multi";
  keys[30] = @"MediaPlaybackNoSpeaker";
  keys[31] = @"WaterEjection";
  keys[32] = @"FindMyAudioDevice";
  keys[33] = @"SystemSoundsAndHaptics";
  keys[34] = @"eARC";
  keys[35] = @"SpeechDetect";
  keys[36] = @"HearingTest";
  values[0] = @"NonMuteable";
  values[1] = @"NonMuteable";
  values[2] = @"NonMuteable";
  values[3] = @"NonMuteable";
  values[4] = @"NonMuteable";
  values[5] = @"NonMuteable";
  values[6] = @"NonMuteable";
  values[7] = @"NonMuteable";
  values[8] = @"NonMuteable";
  values[9] = @"NonMuteable";
  values[10] = @"NonMuteable";
  values[11] = @"NonMuteable";
  values[12] = @"NonMuteable";
  values[13] = @"NonMuteable";
  values[14] = @"Muteable";
  values[15] = @"Muteable";
  values[16] = @"Muteable";
  values[17] = @"NonMuteable";
  values[18] = @"NonMuteable";
  values[19] = @"NonMuteable";
  values[20] = @"NonMuteable";
  values[21] = @"NonMuteable";
  values[22] = @"NonMuteable";
  values[23] = @"NonMuteable";
  values[24] = @"NonMuteable";
  values[25] = @"NonMuteable";
  values[26] = @"NonMuteable";
  values[27] = @"NonMuteable";
  values[28] = @"Muteable";
  values[29] = @"NonMuteable";
  values[30] = @"NonMuteable";
  values[31] = @"NonMuteable";
  values[32] = @"NonMuteable";
  values[33] = @"Muteable";
  values[34] = @"Muteable";
  values[35] = @"Muteable";
  values[36] = @"NonMuteable";
  v42[0] = @"CannotOverride";
  v42[1] = @"CannotOverride";
  v42[2] = @"CanOverride";
  v42[3] = @"CanOverride";
  v42[4] = @"CanOverride";
  v42[5] = @"CanOverride";
  v42[6] = @"CannotOverride";
  v42[7] = @"CannotOverride";
  v42[8] = @"CannotOverride";
  v42[9] = @"CannotOverride";
  v42[10] = @"CanOverride";
  v42[11] = @"CanOverride";
  v42[12] = @"CanOverride";
  v42[13] = @"CanOverride";
  v42[14] = @"CannotOverride";
  v42[15] = @"CannotOverride";
  v42[16] = @"CannotOverride";
  v42[17] = @"CannotOverride";
  v42[18] = @"CannotOverride";
  v42[19] = @"CannotOverride";
  v42[20] = @"CannotOverride";
  v42[21] = @"CanOverride";
  v42[22] = @"CanOverride";
  v42[23] = @"CanOverride";
  v42[24] = @"CanOverride";
  v42[25] = @"CannotOverride";
  v42[26] = @"CanOverride";
  v42[27] = @"CannotOverride";
  v42[28] = @"CannotOverride";
  v42[29] = @"CanOverride";
  v42[30] = @"CannotOverride";
  v42[31] = @"CannotOverride";
  v42[32] = @"CannotOverride";
  v42[33] = @"CannotOverride";
  v42[34] = @"CannotOverride";
  v42[35] = @"CannotOverride";
  v42[36] = @"CannotOverride";
  v41[0] = @"Muteable";
  v41[1] = @"NonMuteable";
  v41[2] = @"NonMuteable";
  v41[3] = @"NonMuteable";
  v41[4] = @"NonMuteable";
  v41[5] = @"Muteable";
  v41[6] = @"NonMuteable";
  v41[7] = @"Muteable";
  v41[8] = @"Muteable";
  v41[9] = @"Muteable";
  v41[10] = @"NonMuteable";
  v41[11] = @"NonMuteable";
  v41[12] = @"NonMuteable";
  v41[13] = @"Muteable";
  v41[14] = @"Muteable";
  v41[15] = @"Muteable";
  v41[16] = @"Muteable";
  v41[17] = @"Muteable";
  v41[18] = @"Muteable";
  v41[19] = @"Muteable";
  v41[20] = @"NonMuteable";
  v40[0] = @"Default";
  v40[1] = @"VoiceChat";
  v40[2] = @"VideoChat";
  v40[3] = @"VideoRecording";
  v40[4] = @"SpeechRecognition";
  v40[5] = @"Measurement";
  v40[6] = @"Raw";
  v40[7] = @"GameChat";
  v40[8] = @"MoviePlayback";
  v40[9] = @"SpokenAudio";
  v40[10] = @"VoicePrompt";
  v40[11] = @"RemoteVoiceChat";
  v40[12] = @"VoiceMessages";
  v40[13] = @"LivePhoto";
  v40[14] = @"HearingAccessibility";
  v40[15] = @"SOSNotification";
  v40[16] = @"SpatialRecording";
  v40[17] = @"Ibis";
  v40[18] = @"VideoChatForMedia";
  v40[19] = @"MultiCam";
  v40[20] = @"Skeuomorphic";
  v40[21] = @"LowLatency";
  v40[22] = @"CustomVolume";
  v40[23] = @"SpatialCapture";
  v40[24] = @"Beacon";
  v40[25] = @"WebCam";
  v40[26] = @"WebCam_MultiMic";
  v40[27] = @"Sleep";
  v40[28] = @"SoundRecognition";
  v40[29] = @"ShortFormVideo";
  IsMandrakeEverywhereEnabled = MX_FeatureFlags_IsMandrakeEverywhereEnabled();
  if (IsMandrakeEverywhereEnabled)
  {
    IsMandrakeEverywhereEnabled = CMSMDeviceState_SupportsBeacon(IsMandrakeEverywhereEnabled, v5);
    if (!IsMandrakeEverywhereEnabled)
    {
      v3 = 1768776806;
    }
  }

  v33[0] = xmmword_1B19D8C10;
  v33[1] = xmmword_1B19D8C20;
  v33[2] = xmmword_1B19D8C30;
  v33[3] = xmmword_1B19D8C40;
  v33[4] = xmmword_1B19D8C50;
  v33[5] = xmmword_1B19D8C60;
  v33[6] = xmmword_1B19D8C70;
  v33[7] = xmmword_1B19D8C80;
  v33[8] = xmmword_1B19D8C90;
  v33[9] = xmmword_1B19D8CA0;
  v34 = vdupq_n_s64(0x696D6466uLL);
  v35 = xmmword_1B19D8CB0;
  v37 = xmmword_1B19D8CC0;
  v38 = v34;
  v36 = v3;
  v39 = 1768776806;
  v7 = *MEMORY[0x1E695E480];
  v8 = OUTLINED_FUNCTION_1_12(IsMandrakeEverywhereEnabled, v51, v50, v6, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  [OUTLINED_FUNCTION_7() setFigCustomizedCategoryWithBluetooth_Dict:{1768776806, 1768779619, 1768781411, 1768781426, 1987208039, 1836281204, 1918990112, 1735222132, 1836021360, 1936747374, 1987080813, 1919776355, 1986884455, 1768778864, 1751212899, 1936683886, 1936749157, 1768057203, 1768781411, 1835229549}];
  figCustomizedCategoryWithBluetooth_Dict = [(MXSessionManager *)self figCustomizedCategoryWithBluetooth_Dict];
  if (figCustomizedCategoryWithBluetooth_Dict)
  {
    v11 = OUTLINED_FUNCTION_1_12(figCustomizedCategoryWithBluetooth_Dict, v51, v49, v10, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    [OUTLINED_FUNCTION_7() setFigCustomizedCategoryWithoutBluetooth_Dict:?];
    figCustomizedCategoryWithoutBluetooth_Dict = [(MXSessionManager *)self figCustomizedCategoryWithoutBluetooth_Dict];
    if (figCustomizedCategoryWithoutBluetooth_Dict)
    {
      v14 = OUTLINED_FUNCTION_1_12(figCustomizedCategoryWithoutBluetooth_Dict, v51, v48, v13, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      [OUTLINED_FUNCTION_7() setFigUncustomizedCategory_Dict:?];
      figUncustomizedCategory_Dict = [(MXSessionManager *)self figUncustomizedCategory_Dict];
      if (figUncustomizedCategory_Dict)
      {
        v17 = OUTLINED_FUNCTION_1_12(figUncustomizedCategory_Dict, v51, v47, v16, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        [OUTLINED_FUNCTION_7() setFigCustomizedCategoryWithDefaultBuiltIn_Speaker_Dict:?];
        figCustomizedCategoryWithDefaultBuiltIn_Speaker_Dict = [(MXSessionManager *)self figCustomizedCategoryWithDefaultBuiltIn_Speaker_Dict];
        if (figCustomizedCategoryWithDefaultBuiltIn_Speaker_Dict)
        {
          v20 = OUTLINED_FUNCTION_1_12(figCustomizedCategoryWithDefaultBuiltIn_Speaker_Dict, v51, v46, v19, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          [OUTLINED_FUNCTION_7() setFigCustomizedCategoryWithDefaultBuiltIn_Receiver_Dict:?];
          figCustomizedCategoryWithDefaultBuiltIn_Receiver_Dict = [(MXSessionManager *)self figCustomizedCategoryWithDefaultBuiltIn_Receiver_Dict];
          if (figCustomizedCategoryWithDefaultBuiltIn_Receiver_Dict)
          {
            v23 = OUTLINED_FUNCTION_1_12(figCustomizedCategoryWithDefaultBuiltIn_Receiver_Dict, v51, v45, v22, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            [OUTLINED_FUNCTION_7() setFigCustomizedCategoryWithDefaultBuiltIn_Default_Dict:?];
            if ([(MXSessionManager *)self figCustomizedCategoryWithDefaultBuiltIn_Default_Dict])
            {
              v24 = CFDictionaryCreate(v7, keys, values, 37, MEMORY[0x1E695E9D8], 0);
              [OUTLINED_FUNCTION_7() setFigCategoryToMuteabilityDict:?];
              if ([(MXSessionManager *)self figCategoryToMuteabilityDict])
              {
                v25 = CFDictionaryCreate(v7, keys, v42, 37, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                [OUTLINED_FUNCTION_7() setFigCategoryToOutputOverridabilityDict:?];
                if ([(MXSessionManager *)self figCategoryToOutputOverridabilityDict])
                {
                  v26 = CFDictionaryCreate(v7, keys, "vasc", 37, MEMORY[0x1E695E9D8], 0);
                  [OUTLINED_FUNCTION_7() setFigCategoryToVADCategoryDict:?];
                  if ([(MXSessionManager *)self figCategoryToVADCategoryDict])
                  {
                    v27 = CFDictionaryCreate(v7, setUpStringConversionDictionaries_figRouteNames, "wphp", 25, MEMORY[0x1E695E9D8], 0);
                    [OUTLINED_FUNCTION_7() setFigRouteToVADOutputPortTypeDict:?];
                    if ([(MXSessionManager *)self figRouteToVADOutputPortTypeDict])
                    {
                      v28 = CFDictionaryCreate(v7, setUpStringConversionDictionaries_figRouteNames, "iwmp", 25, MEMORY[0x1E695E9D8], 0);
                      [OUTLINED_FUNCTION_7() setFigRouteToVADInputPortTypeDict:?];
                      if ([(MXSessionManager *)self figRouteToVADInputPortTypeDict])
                      {
                        v29 = CFDictionaryCreate(v7, "uolp", setUpStringConversionDictionaries_figOutputDeviceNamesForVADOutputPortTypes, 21, 0, MEMORY[0x1E695E9E8]);
                        [OUTLINED_FUNCTION_7() setVadOutputPortTypeToFigOutputDeviceNameDict:?];
                        if ([(MXSessionManager *)self vadOutputPortTypeToFigOutputDeviceNameDict])
                        {
                          v30 = CFDictionaryCreate(v7, "uolp", v41, 21, 0, MEMORY[0x1E695E9E8]);
                          [OUTLINED_FUNCTION_7() setVadOutputPortTypeToMuteabilityDict:?];
                          if ([(MXSessionManager *)self vadOutputPortTypeToMuteabilityDict])
                          {
                            v31 = CFDictionaryCreate(v7, "nilp", setUpStringConversionDictionaries_figInputDeviceNamesForVADInputPortTypes, 9, 0, MEMORY[0x1E695E9E8]);
                            [OUTLINED_FUNCTION_7() setVadInputPortTypeToFigInputDeviceNameDict:?];
                            if ([(MXSessionManager *)self vadInputPortTypeToFigInputDeviceNameDict])
                            {
                              v32 = CFDictionaryCreate(v7, v40, v33, 30, MEMORY[0x1E695E9D8], 0);
                              [OUTLINED_FUNCTION_7() setFigModeTypeToVADModeType:?];
                              [(MXSessionManager *)self figModeTypeToVADModeType];
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

@end