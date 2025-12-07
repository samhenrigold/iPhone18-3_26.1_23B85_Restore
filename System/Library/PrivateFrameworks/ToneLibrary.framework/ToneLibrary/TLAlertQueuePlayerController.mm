@interface TLAlertQueuePlayerController
+ ($96EE1C12479E9B303E9C2794B92A11A2)_externalEnvironmentValuesForAlert:(id)alert;
+ (BOOL)_shouldApplyAttentionAwarenessEffectsForAlert:(id)alert;
+ (BOOL)_shouldApplyStandardDelayAndAudioVolumeRampForAlert:(id)alert externalEnvironmentValues:(id)values;
+ (BOOL)_shouldBypassRingerSwitchPolicyForAlert:(id)alert;
+ (BOOL)_shouldEnsureActiveAudioSessionWhenStartingPlaybackForAlert:(id)alert;
+ (BOOL)_shouldHandleAudioSessionActivationForAlert:(id)alert;
+ (BOOL)_shouldRepeatVibrationForAlert:(id)alert externalEnvironmentValues:(id)values;
+ (BOOL)_shouldVibrateForAlert:(id)alert;
+ (double)_audioPlaybackInitiationDelayForAlert:(id)alert externalEnvironmentValues:(id)values;
+ (double)_audioVolumeRampingDurationForAlert:(id)alert externalEnvironmentValues:(id)values toneAssetDuration:(double)duration;
+ (id)_audioCategoryForAlert:(id)alert externalEnvironmentValues:(id)values;
+ (id)_audioModeForAlert:(id)alert audioCategory:(id)category;
+ (id)_clientNameForAlert:(id)alert;
+ (id)_mediaExperienceAudioCategoryForAudioSessionCategory:(id)category;
+ (int64_t)_audioVolumeApplicationPolicyForAlert:(id)alert externalEnvironmentValues:(id)values;
+ (int64_t)_clientPriorityForAlert:(id)alert;
+ (unint64_t)_audioCategoryOptionsForAlert:(id)alert externalEnvironmentValues:(id)values;
- (BOOL)_canPlayToneAsset:(id)asset;
- (BOOL)_isPreventingAudioSessionDeactivation;
- (BOOL)stopPlayingAlerts:(id)alerts withOptions:(id)options playbackCompletionType:(int64_t)type;
- (NSString)description;
- (TLAlertQueuePlayerController)init;
- (float)_audioVolumeForAlert:(id)alert audioCategory:(id)category;
- (id)_fallbackToneIdentifierForStateDescriptor:(id)descriptor;
- (id)_vibrationPatternDictionaryForStateDescriptor:(id)descriptor allowsArtificiallyRepeatingPropertyListRepresentation:(BOOL)representation;
- (void)_activateAudioSessionIfNeededForStateDescriptor:(id)descriptor;
- (void)_applyAudioVolume:(float)volume forAlert:(id)alert isForMusicPlayback:(BOOL)playback phase:(int64_t)phase;
- (void)_beginPreventingAudioSessionDeactivation;
- (void)_createQueuePlayerIfNecessaryForStateDescriptor:(id)descriptor;
- (void)_deactivateAudioSessionIfNeededForStateDescriptor:(id)descriptor;
- (void)_destroyQueuePlayerForStateDescriptor:(id)descriptor;
- (void)_didEndPlayingAlertForStateDescriptor:(id)descriptor isForMusicPlayback:(BOOL)playback;
- (void)_didPrepareToPlayMusicForStateDescriptor:(id)descriptor withError:(id)error;
- (void)_didReceiveAttentionPollingEventOfType:(int64_t)type stateDescriptor:(id)descriptor;
- (void)_endPreventingAudioSessionDeactivationForStateDescriptor:(id)descriptor;
- (void)_ensureMusicPlaybackStartedForStateDescriptor:(id)descriptor;
- (void)_handleActivationAssertionStatusChangeForAlert:(id)alert updatedStatus:(BOOL)status previousStateDescriptor:(id)descriptor updatedStateDescriptor:(id)stateDescriptor;
- (void)_handleAudioSessionInterruptionNotification:(id)notification;
- (void)_handleAudioSessionInterruptionOfType:(unint64_t)type withOptions:(unint64_t)options;
- (void)_initiateAudioPlaybackForStateDescriptor:(id)descriptor audioVolumeRampingDuration:(double)duration;
- (void)_notifyPlaybackObserverForStateDescriptor:(id)descriptor isForMusicPlayback:(BOOL)playback;
- (void)_performDelayedAudioPlaybackInitiationForStateDescriptor:(id)descriptor audioVolumeRampingDuration:(double)duration;
- (void)_playAlertForStateDescriptor:(id)descriptor previousStateDescriptor:(id)stateDescriptor;
- (void)_prepareAudioEnvironmentForStateDescriptor:(id)descriptor isForMusicPlayback:(BOOL)playback;
- (void)_queuePlayer:(id)player currentItemStatusWasUpdatedToValue:(int64_t)value;
- (void)_queuePlayer:(id)player currentItemWasUpdatedFromValue:(id)value;
- (void)_reloadPlaybackForStateDescriptor:(id)descriptor withToneIdentifier:(id)identifier;
- (void)_reportAudioStartEventForStateDescriptor:(id)descriptor;
- (void)_resetClientPriorityForStateDescriptor:(id)descriptor;
- (void)_resetFlagsForSwitchingAuxiliaryAudioSession;
- (void)_restoreAudioEnvironmentForStateDescriptor:(id)descriptor isForMusicPlayback:(BOOL)playback;
- (void)_startMusicPlaybackForStateDescriptor:(id)descriptor mediaItem:(id)item;
- (void)_startObservingAudioSessionInterruptionNotificationsForStateDescriptor:(id)descriptor;
- (void)_startObservingQueuePlayer;
- (void)_startPlaybackForStateDescriptor:(id)descriptor usingAssetWithLoadedProperties:(id)properties shouldConfirmAlertStillPlaying:(BOOL)playing;
- (void)_startPlaybackForStateDescriptor:(id)descriptor usingConfirmedPlayableAsset:(id)asset;
- (void)_startPlaybackForStateDescriptor:(id)descriptor usingConfirmedPlayableAsset:(id)asset hasAlreadyDetectedUserAttention:(BOOL)attention;
- (void)_stopMusicPlayback;
- (void)_stopObservingAudioSessionInterruptionNotificationsForStateDescriptor:(id)descriptor;
- (void)_stopObservingQueuePlayer;
- (void)_stopPlaybackForStateDescriptor:(id)descriptor;
- (void)_stopPlaybackForStateDescriptor:(id)descriptor withOptions:(id)options playerWasAlreadyPausedExternally:(BOOL)externally;
- (void)_stopPlayingAlertForStateDescriptor:(id)descriptor withOptions:(id)options playbackCompletionType:(int64_t)type;
- (void)_willBeginPlayingAlertForStateDescriptor:(id)descriptor isForMusicPlayback:(BOOL)playback;
- (void)dealloc;
- (void)handleActivationAssertionStatusChangeForAlert:(id)alert updatedStatus:(BOOL)status;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)playAlert:(id)alert withCompletionHandler:(id)handler;
- (void)updateAudioVolumeDynamicallyForAlert:(id)alert toValue:(float)value;
@end

@implementation TLAlertQueuePlayerController

- (TLAlertQueuePlayerController)init
{
  v6.receiver = self;
  v6.super_class = TLAlertQueuePlayerController;
  v2 = [(TLAlertQueuePlayerController *)&v6 init];
  if (v2)
  {
    v3 = +[TLAudioQueue sharedAudioQueue];
    audioQueue = v2->_audioQueue;
    v2->_audioQueue = v3;

    v2->_lock._os_unfair_lock_opaque = 0;
  }

  return v2;
}

- (void)dealloc
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  audioQueue = self->_audioQueue;
  self->_audioQueue = 0;
  v4 = audioQueue;

  [(TLAudioQueue *)v4 assertNotRunningOnAudioQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __39__TLAlertQueuePlayerController_dealloc__block_invoke;
  v6[3] = &unk_1E85789A0;
  v6[4] = self;
  [(TLAudioQueue *)v4 performSynchronousTaskWithBlock:v6];

  v5.receiver = self;
  v5.super_class = TLAlertQueuePlayerController;
  [(TLAlertQueuePlayerController *)&v5 dealloc];
}

void __39__TLAlertQueuePlayerController_dealloc__block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 16));
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  os_unfair_lock_unlock((v2 + 16));
  [*(a1 + 32) _destroyQueuePlayerForStateDescriptor:v3];
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"<%@: %p", v5, self];

  stateDescriptor = self->_stateDescriptor;
  if (stateDescriptor)
  {
    v8 = MEMORY[0x1E696AEC0];
    v9 = stateDescriptor;
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = [v8 stringWithFormat:@"<%@: %p>", v11, v9];
  }

  else
  {
    v12 = 0;
  }

  [v6 appendFormat:@"; stateDescriptor = %@", v12];
  [v6 appendString:@">"];

  return v6;
}

- (void)playAlert:(id)alert withCompletionHandler:(id)handler
{
  v27 = *MEMORY[0x1E69E9840];
  alertCopy = alert;
  handlerCopy = handler;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  playingAlert = [(TLAlertQueuePlayerStateDescriptor *)self->_stateDescriptor playingAlert];

  if (playingAlert == alertCopy)
  {
    os_unfair_lock_unlock(&self->_lock);
    v17 = 0;
    v9 = 0;
  }

  else
  {
    v9 = self->_stateDescriptor;
    v10 = [[TLAlertQueuePlayerStateDescriptor alloc] initWithPlayingAlert:alertCopy completionHandler:handlerCopy previousStateDescriptor:v9];
    stateDescriptor = self->_stateDescriptor;
    self->_stateDescriptor = v10;

    v14 = TLLogPlayback(v12, v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = self->_stateDescriptor;
      *buf = 138543874;
      selfCopy = self;
      v23 = 2114;
      v24 = alertCopy;
      v25 = 2114;
      v26 = v15;
      _os_log_impl(&dword_1D9356000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: -playAlert:(%{public}@) …: Updated _stateDescriptor to %{public}@.", buf, 0x20u);
    }

    os_unfair_lock_unlock(&self->_lock);
    if (v10)
    {
      audioQueue = self->_audioQueue;
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __64__TLAlertQueuePlayerController_playAlert_withCompletionHandler___block_invoke;
      v18[3] = &unk_1E8579038;
      v18[4] = self;
      v17 = v10;
      v19 = v17;
      v9 = v9;
      v20 = v9;
      [(TLAudioQueue *)audioQueue performTaskWithBlock:v18];
    }

    else
    {
      v17 = 0;
    }
  }
}

- (BOOL)stopPlayingAlerts:(id)alerts withOptions:(id)options playbackCompletionType:(int64_t)type
{
  v66 = *MEMORY[0x1E69E9840];
  alertsCopy = alerts;
  optionsCopy = options;
  os_unfair_lock_assert_not_owner(&self->_lock);
  if (type == 5)
  {
    v12 = TLLogGeneral(v10, v11);
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);

    if (v13)
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ToneLibrary/Library/Playback/BackEnds/QueuePlayer/TLAlertQueuePlayerController.m"];
      v18 = TLLogGeneral(v16, v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        lastPathComponent = [v16 lastPathComponent];
        callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
        *buf = 136381443;
        selfCopy4 = "[TLAlertQueuePlayerController stopPlayingAlerts:withOptions:playbackCompletionType:]";
        v60 = 2113;
        v61 = lastPathComponent;
        v62 = 2049;
        v63 = 260;
        v64 = 2113;
        v65 = callStackSymbols;
        _os_log_impl(&dword_1D9356000, v18, OS_LOG_TYPE_DEFAULT, "*** Assertion failure in %{private}s, %{private}@:%{private}lu.\n%{private}@", buf, 0x2Au);
      }
    }

    else
    {
      v16 = TLLogGeneral(v14, v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        __85__TLVibrationPersistenceUtilities__objectIsValidUserGeneratedVibrationPattern_error___block_invoke_cold_1();
      }
    }

    v23 = TLLogGeneral(v21, v22);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [TLAlertQueuePlayerController stopPlayingAlerts:withOptions:playbackCompletionType:];
    }
  }

  v24 = TLLogPlayback(v10, v11);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = [alertsCopy count];
    v26 = NSStringFromTLAlertPlaybackCompletionType(type);
    *buf = 138544130;
    selfCopy4 = self;
    v60 = 2048;
    v61 = v25;
    v62 = 2114;
    v63 = optionsCopy;
    v64 = 2114;
    v65 = v26;
    _os_log_impl(&dword_1D9356000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@: -stopPlayingAlerts:(<%lu alerts>) options:(%{public}@) playbackCompletionType:(%{public}@).", buf, 0x2Au);
  }

  typeCopy = type;
  v48 = optionsCopy;

  os_unfair_lock_lock(&self->_lock);
  playingAlert = [(TLAlertQueuePlayerStateDescriptor *)self->_stateDescriptor playingAlert];
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v28 = alertsCopy;
  v29 = [v28 countByEnumeratingWithState:&v53 objects:v57 count:16];
  if (v29)
  {
    v31 = v29;
    v32 = 0;
    v33 = *v54;
    do
    {
      v34 = 0;
      do
      {
        if (*v54 != v33)
        {
          objc_enumerationMutation(v28);
        }

        v35 = *(*(&v53 + 1) + 8 * v34);
        p_super = TLLogPlayback(v29, v30);
        v37 = os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT);
        if (v35 == playingAlert)
        {
          if (v37)
          {
            *buf = 138543618;
            selfCopy4 = self;
            v60 = 2114;
            v61 = playingAlert;
            _os_log_impl(&dword_1D9356000, p_super, OS_LOG_TYPE_DEFAULT, "%{public}@: -stopPlayingAlerts…: %{public}@ is playing. Interrupting it.", buf, 0x16u);
          }

          p_super = &v32->super;
          v32 = self->_stateDescriptor;
        }

        else if (v37)
        {
          *buf = 138543618;
          selfCopy4 = self;
          v60 = 2114;
          v61 = v35;
          _os_log_impl(&dword_1D9356000, p_super, OS_LOG_TYPE_DEFAULT, "%{public}@: -stopPlayingAlerts…: %{public}@ is NOT playing. Skipping it.", buf, 0x16u);
        }

        ++v34;
      }

      while (v31 != v34);
      v29 = [v28 countByEnumeratingWithState:&v53 objects:v57 count:16];
      v31 = v29;
    }

    while (v29);
  }

  else
  {
    v32 = 0;
  }

  stateDescriptor = self->_stateDescriptor;
  if (v32 == stateDescriptor)
  {
    stateDescriptorForCompletedPlayback = [(TLAlertQueuePlayerStateDescriptor *)stateDescriptor stateDescriptorForCompletedPlayback];
    v40 = self->_stateDescriptor;
    self->_stateDescriptor = stateDescriptorForCompletedPlayback;

    v43 = TLLogPlayback(v41, v42);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      v44 = [(TLAlertQueuePlayerStateDescriptor *)self->_stateDescriptor debugDescription];
      *buf = 138543618;
      selfCopy4 = self;
      v60 = 2114;
      v61 = v44;
      _os_log_impl(&dword_1D9356000, v43, OS_LOG_TYPE_DEFAULT, "%{public}@: -stopPlayingAlerts…: Updated _stateDescriptor to %{public}@.", buf, 0x16u);
    }
  }

  os_unfair_lock_unlock(&self->_lock);
  if (v32)
  {
    audioQueue = self->_audioQueue;
    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = __85__TLAlertQueuePlayerController_stopPlayingAlerts_withOptions_playbackCompletionType___block_invoke;
    v49[3] = &unk_1E8579878;
    v49[4] = self;
    v50 = v32;
    v51 = v48;
    v52 = typeCopy;
    [(TLAudioQueue *)audioQueue performTaskWithBlock:v49];
  }

  return v32 != 0;
}

- (void)updateAudioVolumeDynamicallyForAlert:(id)alert toValue:(float)value
{
  alertCopy = alert;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  playingAlert = [(TLAlertQueuePlayerStateDescriptor *)self->_stateDescriptor playingAlert];

  os_unfair_lock_unlock(&self->_lock);
  if (playingAlert == alertCopy)
  {
    audioQueue = self->_audioQueue;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __77__TLAlertQueuePlayerController_updateAudioVolumeDynamicallyForAlert_toValue___block_invoke;
    v9[3] = &unk_1E8579738;
    v9[4] = self;
    v10 = alertCopy;
    valueCopy = value;
    [(TLAudioQueue *)audioQueue performTaskWithBlock:v9];
  }
}

uint64_t __77__TLAlertQueuePlayerController_updateAudioVolumeDynamicallyForAlert_toValue___block_invoke(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = TLLogPlayback(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v9 = 138543874;
    v10 = v4;
    v11 = 2114;
    v12 = v5;
    v13 = 2048;
    v14 = v6;
    _os_log_impl(&dword_1D9356000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: -updateAudioVolumeDynamicallyForAlert:(%{public}@) toValue:(%f)", &v9, 0x20u);
  }

  LODWORD(v7) = *(a1 + 48);
  return [*(a1 + 32) _applyAudioVolume:*(a1 + 40) forAlert:0 isForMusicPlayback:1 phase:v7];
}

- (void)handleActivationAssertionStatusChangeForAlert:(id)alert updatedStatus:(BOOL)status
{
  statusCopy = status;
  v36 = *MEMORY[0x1E69E9840];
  alertCopy = alert;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v7 = self->_stateDescriptor;
  v8 = v7;
  if (statusCopy)
  {
    stateDescriptorByRelinquishingActivationAssertion = [[TLAlertQueuePlayerStateDescriptor alloc] initForAcquiringActivationAssertionWithAlertForAudioEnvironmentSetup:alertCopy previousStateDescriptor:v7];
LABEL_3:
    v10 = stateDescriptorByRelinquishingActivationAssertion;
    goto LABEL_9;
  }

  alertForAudioEnvironmentSetup = [(TLAlertQueuePlayerStateDescriptor *)v7 alertForAudioEnvironmentSetup];
  v12 = alertForAudioEnvironmentSetup;
  if (alertForAudioEnvironmentSetup == alertCopy)
  {
    isAlertActivationAssertionAcquired = [(TLAlertQueuePlayerStateDescriptor *)v8 isAlertActivationAssertionAcquired];

    if (isAlertActivationAssertionAcquired)
    {
      stateDescriptorByRelinquishingActivationAssertion = [(TLAlertQueuePlayerStateDescriptor *)v8 stateDescriptorByRelinquishingActivationAssertion];
      goto LABEL_3;
    }
  }

  else
  {
  }

  v10 = 0;
LABEL_9:
  objc_storeStrong(&self->_stateDescriptor, v10);
  v16 = TLLogPlayback(v14, v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [alertCopy debugDescription];
    stateDescriptor = self->_stateDescriptor;
    *buf = 138544130;
    selfCopy = self;
    v30 = 2114;
    v31 = v17;
    v32 = 1024;
    v33 = statusCopy;
    v34 = 2114;
    v35 = stateDescriptor;
    _os_log_impl(&dword_1D9356000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@: -handleActivationAssertionStatusChangeForAlert:(%{public}@) updatedStatus:(%{BOOL}d): Updated _stateDescriptor to %{public}@.", buf, 0x26u);
  }

  os_unfair_lock_unlock(&self->_lock);
  audioQueue = self->_audioQueue;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __92__TLAlertQueuePlayerController_handleActivationAssertionStatusChangeForAlert_updatedStatus___block_invoke;
  v23[3] = &unk_1E8579D68;
  v23[4] = self;
  v24 = alertCopy;
  v27 = statusCopy;
  v25 = v8;
  v26 = v10;
  v20 = v10;
  v21 = v8;
  v22 = alertCopy;
  [(TLAudioQueue *)audioQueue performTaskWithBlock:v23];
}

- (void)_playAlertForStateDescriptor:(id)descriptor previousStateDescriptor:(id)stateDescriptor
{
  v27 = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  stateDescriptorCopy = stateDescriptor;
  os_unfair_lock_assert_not_owner(&self->_lock);
  [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  playingAlert = [descriptorCopy playingAlert];
  v10 = TLLogPlayback(playingAlert, v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v20 = 138543874;
    *&v20[4] = self;
    v21 = 2114;
    v22 = descriptorCopy;
    v23 = 2114;
    v24 = stateDescriptorCopy;
    _os_log_impl(&dword_1D9356000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: -_playAlertForStateDescriptor:(%{public}@) previousStateDescriptor:(%{public}@).", v20, 0x20u);
  }

  if (!self->_audioSession)
  {
    goto LABEL_11;
  }

  alertForAudioEnvironmentSetup = [descriptorCopy alertForAudioEnvironmentSetup];
  v12 = [objc_opt_class() _shouldUseAuxiliaryAudioSessionForAlert:alertForAudioEnvironmentSetup];
  isUsingAuxiliaryAudioSession = self->_isUsingAuxiliaryAudioSession;
  if (isUsingAuxiliaryAudioSession != v12)
  {
    v16 = TLLogPlayback(v12, v13);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = "shared";
      audioSession = self->_audioSession;
      *v20 = 138544130;
      if (isUsingAuxiliaryAudioSession)
      {
        v17 = "auxiliary";
      }

      *&v20[4] = self;
      v21 = 2114;
      v22 = alertForAudioEnvironmentSetup;
      v23 = 2082;
      v24 = v17;
      v25 = 2114;
      v26 = audioSession;
      _os_log_impl(&dword_1D9356000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@: -_playAlert: Policy for picking between auxiliary and shared audio session for %{public}@ doesn't match current state. Allowing deactivation of %{public}s audio session %{public}@.", v20, 0x2Au);
    }

LABEL_11:
    [(TLAlertQueuePlayerController *)self _stopPlaybackForStateDescriptor:stateDescriptorCopy, *v20];
    [stateDescriptorCopy invokePlayingAlertCompletionHandlerWithPlaybackCompletionType:4 error:0];
    toneIdentifier = [playingAlert toneIdentifier];
    [(TLAlertQueuePlayerController *)self _reloadPlaybackForStateDescriptor:descriptorCopy withToneIdentifier:toneIdentifier];

    goto LABEL_12;
  }

  [(TLAlertQueuePlayerController *)self _beginPreventingAudioSessionDeactivation];

  [(TLAlertQueuePlayerController *)self _stopPlaybackForStateDescriptor:stateDescriptorCopy];
  [stateDescriptorCopy invokePlayingAlertCompletionHandlerWithPlaybackCompletionType:4 error:0];
  toneIdentifier2 = [playingAlert toneIdentifier];
  [(TLAlertQueuePlayerController *)self _reloadPlaybackForStateDescriptor:descriptorCopy withToneIdentifier:toneIdentifier2];

  [(TLAlertQueuePlayerController *)self _endPreventingAudioSessionDeactivationForStateDescriptor:descriptorCopy];
LABEL_12:
}

- (void)_stopPlayingAlertForStateDescriptor:(id)descriptor withOptions:(id)options playbackCompletionType:(int64_t)type
{
  v37 = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  optionsCopy = options;
  os_unfair_lock_assert_not_owner(&self->_lock);
  assertRunningOnAudioQueue = [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  v12 = TLLogPlayback(assertRunningOnAudioQueue, v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = NSStringFromTLAlertPlaybackCompletionType(type);
    *buf = 138544130;
    *&buf[4] = self;
    *&buf[12] = 2114;
    *&buf[14] = descriptorCopy;
    *&buf[22] = 2114;
    UIBackgroundTaskInvalid = optionsCopy;
    LOWORD(v34[0]) = 2114;
    *(v34 + 2) = v13;
    _os_log_impl(&dword_1D9356000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: -_stopPlayingAlertForStateDescriptor:(%{public}@) withOptions:(%{public}@) playbackCompletionType:(%{public}@).", buf, 0x2Au);
  }

  *v35 = 0;
  *&v35[8] = v35;
  *&v35[16] = 0x2050000000;
  v14 = getUIApplicationClass_softClass_0;
  v36 = getUIApplicationClass_softClass_0;
  if (!getUIApplicationClass_softClass_0)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getUIApplicationClass_block_invoke_0;
    UIBackgroundTaskInvalid = &unk_1E8578D30;
    v34[0] = v35;
    __getUIApplicationClass_block_invoke_0(buf);
    v14 = *(*&v35[8] + 24);
  }

  v15 = v14;
  _Block_object_dispose(v35, 8);
  sharedApplication = [v14 sharedApplication];
  if (sharedApplication)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    UIBackgroundTaskInvalid = getUIBackgroundTaskInvalid();
    v17 = MEMORY[0x1E696AEC0];
    playingAlert = [descriptorCopy playingAlert];
    v19 = [v17 stringWithFormat:@"Stopping playing alert: %@", playingAlert];

    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __103__TLAlertQueuePlayerController__stopPlayingAlertForStateDescriptor_withOptions_playbackCompletionType___block_invoke_2;
    v27[3] = &unk_1E8579D90;
    v31 = buf;
    v20 = sharedApplication;
    v28 = v20;
    selfCopy = self;
    v21 = v19;
    v30 = v21;
    v22 = MEMORY[0x1DA730160](v27);
    v23 = [v20 beginBackgroundTaskWithName:v21 expirationHandler:v22];
    *(*&buf[8] + 24) = v23;
    v25 = TLLogPlayback(v23, v24);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = *(*&buf[8] + 24);
      *v35 = 138543874;
      *&v35[4] = self;
      *&v35[12] = 2114;
      *&v35[14] = v21;
      *&v35[22] = 2048;
      v36 = v26;
      _os_log_impl(&dword_1D9356000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@: -_stopPlayingAlertFor…: Began background task with name: %{public}@; identifier: %lu.", v35, 0x20u);
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v22 = &__block_literal_global_16;
  }

  [(TLAlertQueuePlayerController *)self _stopPlaybackForStateDescriptor:descriptorCopy withOptions:optionsCopy playerWasAlreadyPausedExternally:0];
  [descriptorCopy invokePlayingAlertCompletionHandlerWithPlaybackCompletionType:type error:0];
  dispatch_async(MEMORY[0x1E69E96A0], v22);
}

void __103__TLAlertQueuePlayerController__stopPlayingAlertForStateDescriptor_withOptions_playbackCompletionType___block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *(*(*(a1 + 56) + 8) + 24);
  if (v2 != getUIBackgroundTaskInvalid())
  {
    v3 = *(*(*(a1 + 56) + 8) + 24);
    *(*(*(a1 + 56) + 8) + 24) = getUIBackgroundTaskInvalid();
    v4 = [*(a1 + 32) endBackgroundTask:v3];
    v6 = TLLogPlayback(v4, v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 40);
      v8 = *(a1 + 48);
      v9 = 138543874;
      v10 = v7;
      v11 = 2114;
      v12 = v8;
      v13 = 2048;
      v14 = v3;
      _os_log_impl(&dword_1D9356000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: -_stopPlayingAlertFor…: Ended background task with name: %{public}@; identifier: %lu.", &v9, 0x20u);
    }
  }
}

- (void)_handleActivationAssertionStatusChangeForAlert:(id)alert updatedStatus:(BOOL)status previousStateDescriptor:(id)descriptor updatedStateDescriptor:(id)stateDescriptor
{
  statusCopy = status;
  v37 = *MEMORY[0x1E69E9840];
  alertCopy = alert;
  descriptorCopy = descriptor;
  stateDescriptorCopy = stateDescriptor;
  os_unfair_lock_assert_not_owner(&self->_lock);
  assertRunningOnAudioQueue = [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  if (!stateDescriptorCopy && statusCopy)
  {
    v15 = TLLogGeneral(assertRunningOnAudioQueue, v14);
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_INFO);

    if (v16)
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ToneLibrary/Library/Playback/BackEnds/QueuePlayer/TLAlertQueuePlayerController.m"];
      v21 = TLLogGeneral(v19, v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        lastPathComponent = [v19 lastPathComponent];
        callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
        v31 = 136381443;
        selfCopy = "[TLAlertQueuePlayerController _handleActivationAssertionStatusChangeForAlert:updatedStatus:previousStateDescriptor:updatedStateDescriptor:]";
        v33 = 2113;
        v34 = lastPathComponent;
        v35 = 2049;
        *v36 = 407;
        *&v36[8] = 2113;
        *&v36[10] = callStackSymbols;
        _os_log_impl(&dword_1D9356000, v21, OS_LOG_TYPE_DEFAULT, "*** Assertion failure in %{private}s, %{private}@:%{private}lu.\n%{private}@", &v31, 0x2Au);
      }
    }

    else
    {
      v19 = TLLogGeneral(v17, v18);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        __85__TLVibrationPersistenceUtilities__objectIsValidUserGeneratedVibrationPattern_error___block_invoke_cold_1();
      }
    }

    v26 = TLLogGeneral(v24, v25);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [TLAlertQueuePlayerController _handleActivationAssertionStatusChangeForAlert:updatedStatus:previousStateDescriptor:updatedStateDescriptor:];
    }
  }

  v27 = TLLogPlayback(assertRunningOnAudioQueue, v14);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v31 = 138544386;
    selfCopy = self;
    v33 = 2114;
    v34 = alertCopy;
    v35 = 1024;
    *v36 = statusCopy;
    *&v36[4] = 2114;
    *&v36[6] = descriptorCopy;
    *&v36[14] = 2114;
    *&v36[16] = stateDescriptorCopy;
    _os_log_impl(&dword_1D9356000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@: -_handleActivationAssertionStatusChangeForAlert:(%{public}@) updatedStatus:(%{BOOL}d) previousStateDescriptor:(%{public}@) updatedStateDescriptor:(%{public}@).", &v31, 0x30u);
  }

  if (statusCopy)
  {
    if (self->_isAudioEnvironmentSetup)
    {
      [(TLAlertQueuePlayerController *)self _restoreAudioEnvironmentForStateDescriptor:descriptorCopy isForMusicPlayback:0];
    }

    [(TLAlertQueuePlayerController *)self _prepareAudioEnvironmentForStateDescriptor:stateDescriptorCopy isForMusicPlayback:0];
  }

  else
  {
    alertForAudioEnvironmentSetup = [descriptorCopy alertForAudioEnvironmentSetup];
    v29 = alertForAudioEnvironmentSetup;
    if (alertForAudioEnvironmentSetup == alertCopy)
    {
      isAlertActivationAssertionAcquired = [descriptorCopy isAlertActivationAssertionAcquired];

      if (isAlertActivationAssertionAcquired)
      {
        [(TLAlertQueuePlayerController *)self _restoreAudioEnvironmentForStateDescriptor:descriptorCopy isForMusicPlayback:0];
      }
    }

    else
    {
    }
  }
}

- (BOOL)_canPlayToneAsset:(id)asset
{
  v42 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  [objc_opt_class() _propertyKeysOfInterestForToneAssets];
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v5 = v32 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v31 objects:v38 count:16];
  if (v6)
  {
    v7 = *v32;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v32 != v7)
      {
        objc_enumerationMutation(v5);
      }

      v9 = *(*(&v31 + 1) + 8 * v8);
      v10 = [assetCopy statusOfValueForKey:v9 error:0];
      if (v10 != 2)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [v5 countByEnumeratingWithState:&v31 objects:v38 count:16];
        if (!v6)
        {
          goto LABEL_9;
        }

        goto LABEL_3;
      }
    }

    v22 = TLLogPlayback(v10, v11);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      *&buf[4] = self;
      *&buf[12] = 2114;
      *&buf[14] = assetCopy;
      *&buf[22] = 2114;
      v40 = v9;
      _os_log_error_impl(&dword_1D9356000, v22, OS_LOG_TYPE_ERROR, "%{public}@: -_canPlayToneAsset:(%{public}@). Can't play tone asset because property %{public}@ is not loaded.", buf, 0x20u);
    }

    goto LABEL_24;
  }

LABEL_9:

  v29 = 0uLL;
  v30 = 0;
  if (assetCopy)
  {
    objc_msgSend_duration(assetCopy);
  }

  *&v35 = 0;
  *(&v35 + 1) = &v35;
  v36 = 0x2020000000;
  v12 = getCMTimeMakeSymbolLoc_ptr;
  v37 = getCMTimeMakeSymbolLoc_ptr;
  if (!getCMTimeMakeSymbolLoc_ptr)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getCMTimeMakeSymbolLoc_block_invoke;
    v40 = &unk_1E8578D30;
    v41 = &v35;
    v13 = CoreMediaLibrary();
    v14 = dlsym(v13, "CMTimeMake");
    *(*(v41 + 1) + 24) = v14;
    getCMTimeMakeSymbolLoc_ptr = *(*(v41 + 1) + 24);
    v12 = *(*(&v35 + 1) + 24);
  }

  _Block_object_dispose(&v35, 8);
  if (!v12)
  {
    __73__TLToneManager__ensureTCCAccessPreflightAndCheckForFileExistenceAtPath___block_invoke_cold_2();
    goto LABEL_31;
  }

  v12(&v27, 1, 100);
  v25 = v29;
  v26 = v30;
  *&v35 = 0;
  *(&v35 + 1) = &v35;
  v36 = 0x2020000000;
  v15 = getCMTimeCompareSymbolLoc_ptr;
  v37 = getCMTimeCompareSymbolLoc_ptr;
  if (!getCMTimeCompareSymbolLoc_ptr)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getCMTimeCompareSymbolLoc_block_invoke;
    v40 = &unk_1E8578D30;
    v41 = &v35;
    v16 = CoreMediaLibrary();
    v17 = dlsym(v16, "CMTimeCompare");
    *(*(v41 + 1) + 24) = v17;
    getCMTimeCompareSymbolLoc_ptr = *(*(v41 + 1) + 24);
    v15 = *(*(&v35 + 1) + 24);
  }

  _Block_object_dispose(&v35, 8);
  if (!v15)
  {
    __73__TLToneManager__ensureTCCAccessPreflightAndCheckForFileExistenceAtPath___block_invoke_cold_2();
LABEL_31:
    __break(1u);
  }

  *buf = v25;
  *&buf[16] = v26;
  v35 = v27;
  v36 = v28;
  v18 = v15(buf, &v35);
  if ((v18 & 0x80000000) != 0)
  {
    v24 = TLLogPlayback(v18, v19);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      *&buf[4] = self;
      *&buf[12] = 2114;
      *&buf[14] = assetCopy;
      _os_log_impl(&dword_1D9356000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@: -_canPlayToneAsset:(%{public}@). Can't play tone asset because its duration is too short.", buf, 0x16u);
    }

LABEL_24:
    v21 = 0;
    goto LABEL_25;
  }

  v20 = TLLogPlayback(v18, v19);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    *&buf[4] = self;
    *&buf[12] = 2114;
    *&buf[14] = assetCopy;
    _os_log_impl(&dword_1D9356000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@: -_canPlayToneAsset:(%{public}@). Can play!", buf, 0x16u);
  }

  v21 = 1;
LABEL_25:

  return v21;
}

- (void)_reloadPlaybackForStateDescriptor:(id)descriptor withToneIdentifier:(id)identifier
{
  v66[2] = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  identifierCopy = identifier;
  os_unfair_lock_assert_not_owner(&self->_lock);
  assertRunningOnAudioQueue = [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  v10 = TLLogPlayback(assertRunningOnAudioQueue, v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    *&buf[4] = self;
    *&buf[12] = 2114;
    *&buf[14] = descriptorCopy;
    *&buf[22] = 2114;
    v65 = identifierCopy;
    _os_log_impl(&dword_1D9356000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: -_reloadPlaybackForStateDescriptor:(%{public}@) withToneIdentifier:(%{public}@).", buf, 0x20u);
  }

  playingAlert = [(TLAlertQueuePlayerStateDescriptor *)descriptorCopy playingAlert];
  v13 = playingAlert;
  if (playingAlert)
  {
    playingAlert = [identifierCopy length];
    if (playingAlert)
    {
      v14 = [identifierCopy copy];
      playingToneIdentifier = self->_playingToneIdentifier;
      self->_playingToneIdentifier = v14;

      if ([(AVQueuePlayer *)self->_queuePlayer status]== 2)
      {
        v17 = TLLogPlayback(2, v16);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          [TLAlertQueuePlayerController _reloadPlaybackForStateDescriptor:withToneIdentifier:];
        }

        [(TLAlertQueuePlayerController *)self _destroyQueuePlayerForStateDescriptor:descriptorCopy];
      }

      [(TLAlertQueuePlayerController *)self _createQueuePlayerIfNecessaryForStateDescriptor:descriptorCopy];
      toneIdentifier = [v13 toneIdentifier];
      v19 = [toneIdentifier isEqualToString:self->_playingToneIdentifier];

      if (v19)
      {
        configuration = [v13 configuration];
        externalToneFileURL = [configuration externalToneFileURL];
        if (externalToneFileURL || (v34 = [configuration externalToneMediaLibraryItemIdentifier]) == 0)
        {
          v24 = 0;
          lastObject = 0;
        }

        else
        {
          v60 = 0;
          v61 = &v60;
          v62 = 0x2050000000;
          v35 = getMPMediaPropertyPredicateClass_softClass;
          v63 = getMPMediaPropertyPredicateClass_softClass;
          if (!getMPMediaPropertyPredicateClass_softClass)
          {
            *buf = MEMORY[0x1E69E9820];
            *&buf[8] = 3221225472;
            *&buf[16] = __getMPMediaPropertyPredicateClass_block_invoke;
            v65 = &unk_1E8578D30;
            v66[0] = &v60;
            __getMPMediaPropertyPredicateClass_block_invoke(buf);
            v35 = v61[3];
          }

          v36 = v35;
          _Block_object_dispose(&v60, 8);
          v37 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v34];
          v60 = 0;
          v61 = &v60;
          v62 = 0x2020000000;
          v38 = getMPMediaItemPropertyPersistentIDSymbolLoc_ptr;
          v63 = getMPMediaItemPropertyPersistentIDSymbolLoc_ptr;
          if (!getMPMediaItemPropertyPersistentIDSymbolLoc_ptr)
          {
            *buf = MEMORY[0x1E69E9820];
            *&buf[8] = 3221225472;
            *&buf[16] = __getMPMediaItemPropertyPersistentIDSymbolLoc_block_invoke;
            v65 = &unk_1E8578D30;
            v66[0] = &v60;
            v39 = MediaPlayerLibrary();
            v40 = dlsym(v39, "MPMediaItemPropertyPersistentID");
            *(*(v66[0] + 8) + 24) = v40;
            getMPMediaItemPropertyPersistentIDSymbolLoc_ptr = *(*(v66[0] + 8) + 24);
            v38 = v61[3];
          }

          _Block_object_dispose(&v60, 8);
          if (!v38)
          {
            __73__TLToneManager__ensureTCCAccessPreflightAndCheckForFileExistenceAtPath___block_invoke_cold_2();
            __break(1u);
          }

          v41 = [v35 predicateWithValue:v37 forProperty:*v38];

          v60 = 0;
          v61 = &v60;
          v62 = 0x2050000000;
          v42 = getMPMediaQueryClass_softClass;
          v63 = getMPMediaQueryClass_softClass;
          if (!getMPMediaQueryClass_softClass)
          {
            *buf = MEMORY[0x1E69E9820];
            *&buf[8] = 3221225472;
            *&buf[16] = __getMPMediaQueryClass_block_invoke;
            v65 = &unk_1E8578D30;
            v66[0] = &v60;
            __getMPMediaQueryClass_block_invoke(buf);
            v42 = v61[3];
          }

          v43 = v42;
          _Block_object_dispose(&v60, 8);
          songsQuery = [v42 songsQuery];
          [songsQuery addFilterPredicate:v41];
          items = [songsQuery items];
          lastObject = [items lastObject];

          v24 = lastObject != 0;
        }
      }

      else
      {
        v24 = 0;
        lastObject = 0;
        externalToneFileURL = 0;
      }

      if (!externalToneFileURL && !v24)
      {
        if ([(NSString *)self->_playingToneIdentifier isEqualToString:@"<none>"])
        {
          [(TLAlertQueuePlayerController *)self _startPlaybackForStateDescriptor:descriptorCopy usingAssetWithLoadedProperties:0 shouldConfirmAlertStillPlaying:0];
          externalToneFileURL = 0;
LABEL_47:

          goto LABEL_48;
        }

        v46 = +[TLToneManager sharedToneManager];
        v47 = [v46 filePathForToneIdentifier:self->_playingToneIdentifier];

        externalToneFileURL = [MEMORY[0x1E695DFF8] fileURLWithPath:v47 isDirectory:0];
      }

      if (externalToneFileURL && ([MEMORY[0x1E6988168] assetWithURL:externalToneFileURL], v20 = objc_claimAutoreleasedReturnValue(), (v48 = v20) != 0))
      {
        v49 = TLLogPlayback(v20, v21);
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          *&buf[4] = self;
          *&buf[12] = 2114;
          *&buf[14] = v48;
          _os_log_impl(&dword_1D9356000, v49, OS_LOG_TYPE_DEFAULT, "%{public}@: -_reloadPlayback…: [toneAsset loadValuesAsynchronouslyForKeys:…] for %{public}@.", buf, 0x16u);
        }

        self->_isWaitingToCompleteReloadPlaybackRequest = 1;
        _propertyKeysOfInterestForToneAssets = [objc_opt_class() _propertyKeysOfInterestForToneAssets];
        v57[0] = MEMORY[0x1E69E9820];
        v57[1] = 3221225472;
        v57[2] = __85__TLAlertQueuePlayerController__reloadPlaybackForStateDescriptor_withToneIdentifier___block_invoke;
        v57[3] = &unk_1E8579038;
        v57[4] = self;
        v58 = v48;
        v59 = descriptorCopy;
        v51 = v48;
        [v51 loadValuesAsynchronouslyForKeys:_propertyKeysOfInterestForToneAssets completionHandler:v57];
      }

      else
      {
        v52 = TLLogPlayback(v20, v21);
        v53 = v52;
        if (lastObject)
        {
          if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
          {
            title = [lastObject title];
            artist = [lastObject artist];
            *buf = 138544130;
            *&buf[4] = self;
            *&buf[12] = 2114;
            *&buf[14] = lastObject;
            *&buf[22] = 2114;
            v65 = title;
            LOWORD(v66[0]) = 2114;
            *(v66 + 2) = artist;
            _os_log_impl(&dword_1D9356000, v53, OS_LOG_TYPE_DEFAULT, "%{public}@: -_reloadPlayback…: Found a media item for the specified external tone information: %{public}@ (“%{public}@” from “%{public}@”).", buf, 0x2Au);
          }

          [(TLAlertQueuePlayerController *)self _startMusicPlaybackForStateDescriptor:descriptorCopy mediaItem:lastObject];
        }

        else
        {
          if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
          {
            [TLAlertQueuePlayerController _reloadPlaybackForStateDescriptor:withToneIdentifier:];
          }

          v56 = [(TLAlertQueuePlayerController *)self _fallbackToneIdentifierForStateDescriptor:descriptorCopy];
          [(TLAlertQueuePlayerController *)self _reloadPlaybackForStateDescriptor:descriptorCopy withToneIdentifier:v56];
        }
      }

      goto LABEL_47;
    }
  }

  v26 = TLLogPlayback(playingAlert, v12);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    [TLAlertQueuePlayerController _reloadPlaybackForStateDescriptor:withToneIdentifier:];
  }

  os_unfair_lock_lock(&self->_lock);
  stateDescriptor = self->_stateDescriptor;
  if (stateDescriptor == descriptorCopy)
  {
    stateDescriptorForCompletedPlayback = [(TLAlertQueuePlayerStateDescriptor *)stateDescriptor stateDescriptorForCompletedPlayback];
    v29 = self->_stateDescriptor;
    self->_stateDescriptor = stateDescriptorForCompletedPlayback;

    v32 = TLLogPlayback(v30, v31);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v33 = [(TLAlertQueuePlayerStateDescriptor *)self->_stateDescriptor debugDescription];
      *buf = 138543618;
      *&buf[4] = self;
      *&buf[12] = 2114;
      *&buf[14] = v33;
      _os_log_impl(&dword_1D9356000, v32, OS_LOG_TYPE_DEFAULT, "%{public}@: -_reloadPlayback…: Updated _stateDescriptor to %{public}@.", buf, 0x16u);
    }
  }

  os_unfair_lock_unlock(&self->_lock);
  [(TLAlertQueuePlayerController *)self _stopPlaybackForStateDescriptor:descriptorCopy];
  externalToneFileURL = [MEMORY[0x1E696ABC0] tl_errorWithDomain:@"TLAlertErrorDomain" description:@"Failed to prepare tone asset for playback."];
  [(TLAlertQueuePlayerStateDescriptor *)descriptorCopy invokePlayingAlertCompletionHandlerWithPlaybackCompletionType:5 error:externalToneFileURL];
LABEL_48:
}

void __85__TLAlertQueuePlayerController__reloadPlaybackForStateDescriptor_withToneIdentifier___block_invoke(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = TLLogPlayback(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    *buf = 138543618;
    v12 = v4;
    v13 = 2114;
    v14 = v5;
    _os_log_impl(&dword_1D9356000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: -_reloadPlayback…: did finish loading values asynchronously for %{public}@.", buf, 0x16u);
  }

  v6 = *(a1 + 32);
  v7 = *(v6 + 8);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __85__TLAlertQueuePlayerController__reloadPlaybackForStateDescriptor_withToneIdentifier___block_invoke_39;
  v8[3] = &unk_1E8579038;
  v8[4] = v6;
  v9 = *(a1 + 48);
  v10 = *(a1 + 40);
  [v7 performTaskWithBlock:v8];
}

- (void)_startPlaybackForStateDescriptor:(id)descriptor usingAssetWithLoadedProperties:(id)properties shouldConfirmAlertStillPlaying:(BOOL)playing
{
  playingCopy = playing;
  v26 = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  propertiesCopy = properties;
  os_unfair_lock_assert_not_owner(&self->_lock);
  assertRunningOnAudioQueue = [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  v12 = TLLogPlayback(assertRunningOnAudioQueue, v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138544130;
    selfCopy2 = self;
    v20 = 2114;
    v21 = descriptorCopy;
    v22 = 2114;
    v23 = propertiesCopy;
    v24 = 1024;
    v25 = playingCopy;
    _os_log_impl(&dword_1D9356000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: -_startPlaybackForStateDescriptor:(%{public}@) usingAssetWithLoadedProperties:(%{public}@) shouldConfirmAlertStillPlaying:(%{BOOL}d).", &v18, 0x26u);
  }

  self->_isWaitingToCompleteReloadPlaybackRequest = 0;
  if (playingCopy)
  {
    os_unfair_lock_lock(&self->_lock);
    playingAlert = [(TLAlertQueuePlayerStateDescriptor *)self->_stateDescriptor playingAlert];
    playingAlert2 = [descriptorCopy playingAlert];

    os_unfair_lock_unlock(&self->_lock);
    if (playingAlert != playingAlert2)
    {
      v17 = TLLogPlayback(v15, v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 138543618;
        selfCopy2 = self;
        v20 = 2114;
        v21 = descriptorCopy;
        _os_log_impl(&dword_1D9356000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@: -_startPlayback… usingAssetWithLoadedProperties…: Playing alert for %{public}@ is no longer actually playing; aborting playback initiation.", &v18, 0x16u);
      }

      goto LABEL_11;
    }
  }

  if (propertiesCopy && ![(TLAlertQueuePlayerController *)self _canPlayToneAsset:propertiesCopy])
  {
    v17 = [(TLAlertQueuePlayerController *)self _fallbackToneIdentifierForStateDescriptor:descriptorCopy];
    [(TLAlertQueuePlayerController *)self _reloadPlaybackForStateDescriptor:descriptorCopy withToneIdentifier:v17];
LABEL_11:

    goto LABEL_12;
  }

  [(TLAlertQueuePlayerController *)self _startPlaybackForStateDescriptor:descriptorCopy usingConfirmedPlayableAsset:propertiesCopy];
LABEL_12:
}

- (void)_startPlaybackForStateDescriptor:(id)descriptor usingConfirmedPlayableAsset:(id)asset
{
  v26 = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  assetCopy = asset;
  os_unfair_lock_assert_not_owner(&self->_lock);
  assertRunningOnAudioQueue = [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  v10 = TLLogPlayback(assertRunningOnAudioQueue, v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138543874;
    selfCopy3 = self;
    v22 = 2114;
    v23 = descriptorCopy;
    v24 = 2114;
    v25 = assetCopy;
    _os_log_impl(&dword_1D9356000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: -_startPlaybackForStateDescriptor:(%{public}@) usingConfirmedPlayableAsset:(%{public}@).", &v20, 0x20u);
  }

  _stopObservingQueuePlayer = [(TLAlertQueuePlayerController *)self _stopObservingQueuePlayer];
  v13 = TLLogPlayback(_stopObservingQueuePlayer, v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    queuePlayer = self->_queuePlayer;
    v20 = 138543618;
    selfCopy3 = self;
    v22 = 2114;
    v23 = queuePlayer;
    _os_log_impl(&dword_1D9356000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: -_startPlayback… usingConfirmedPlayableAsset…: [_queuePlayer removeAllItems] on %{public}@ before initiating playback.", &v20, 0x16u);
  }

  [(AVQueuePlayer *)self->_queuePlayer removeAllItems];
  objc_storeStrong(&self->_toneAssetForPendingPlayingAlert, asset);
  self->_hasToneAssetForPendingPlayingAlert = 1;
  v15 = [(TLAlertQueuePlayerController *)self _willBeginPlayingAlertForStateDescriptor:descriptorCopy isForMusicPlayback:0];
  if (self->_attentionPollingToken && !self->_isAttentionAwarenessSubsystemFullyInitialized)
  {
    v19 = TLLogPlayback(v15, v16);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138543362;
      selfCopy3 = self;
      _os_log_impl(&dword_1D9356000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@: -_startPlayback… usingConfirmedPlayableAsset…: Currently polling for attention, and attention awareness subsystem not initialized yet. Waiting to see if we already have the user's attention.", &v20, 0xCu);
    }
  }

  else
  {
    toneAssetForPendingPlayingAlert = self->_toneAssetForPendingPlayingAlert;
    self->_toneAssetForPendingPlayingAlert = 0;

    v18 = 0;
    self->_hasToneAssetForPendingPlayingAlert = 0;
    if (self->_isAttentionAwarenessSubsystemFullyInitialized)
    {
      v18 = self->_lastAttentionPollingEventType == 1;
    }

    [(TLAlertQueuePlayerController *)self _startPlaybackForStateDescriptor:descriptorCopy usingConfirmedPlayableAsset:assetCopy hasAlreadyDetectedUserAttention:v18];
  }
}

- (void)_startPlaybackForStateDescriptor:(id)descriptor usingConfirmedPlayableAsset:(id)asset hasAlreadyDetectedUserAttention:(BOOL)attention
{
  attentionCopy = attention;
  v123[3] = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  assetCopy = asset;
  os_unfair_lock_assert_not_owner(&self->_lock);
  assertRunningOnAudioQueue = [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  v9 = TLLogPlayback(assertRunningOnAudioQueue, v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544130;
    *&buf[4] = self;
    *&buf[12] = 2114;
    *&buf[14] = descriptorCopy;
    *&buf[22] = 2114;
    v122 = assetCopy;
    LOWORD(v123[0]) = 1024;
    *(v123 + 2) = attentionCopy;
    _os_log_impl(&dword_1D9356000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: -_startPlaybackForStateDescriptor:(%{public}@) usingConfirmedPlayableAsset:(%{public}@) hasAlreadyDetectedUserAttention:(%{BOOL}d).", buf, 0x26u);
  }

  playingAlert = [descriptorCopy playingAlert];
  if ([objc_opt_class() _shouldVibrateForAlert:playingAlert])
  {
    v10 = +[TLCapabilitiesManager sharedCapabilitiesManager];
    hasSynchronizedEmbeddedVibrationsCapability = [v10 hasSynchronizedEmbeddedVibrationsCapability];

    if (hasSynchronizedEmbeddedVibrationsCapability)
    {
      toneIdentifier = [playingAlert toneIdentifier];
      vibrationIdentifier = [playingAlert vibrationIdentifier];
      isKindOfClass = [vibrationIdentifier hasPrefix:@"synchronizedvibration:"];
      if (!isKindOfClass || (isKindOfClass = [playingAlert _hasSynchronizedVibrationUnmatchedWithTone], (isKindOfClass & 1) != 0) || (isKindOfClass = objc_msgSend(toneIdentifier, "hasPrefix:", @"alarmWakeUp:"), (isKindOfClass & 1) != 0))
      {
        v108 = 0;
      }

      else
      {
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if (isKindOfClass)
        {
          v80 = [assetCopy URL];
          pathExtension = [v80 pathExtension];

          lowercaseString = [pathExtension lowercaseString];
          v83 = [lowercaseString isEqualToString:@"caf"];

          if (v83)
          {
            v86 = TLLogPlayback(v84, v85);
            if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              *&buf[4] = self;
              _os_log_impl(&dword_1D9356000, v86, OS_LOG_TYPE_DEFAULT, "%{public}@: -_startPlayback… hasAlreadyDetected…: Vibrating using embedded haptic track is not supported for .caf audio assets.", buf, 0xCu);
            }
          }

          v87 = v83 ^ 1;
        }

        else
        {
          v87 = 1;
        }

        v108 = v87;
      }

      v16 = TLLogPlayback(isKindOfClass, v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        *&buf[4] = self;
        *&buf[12] = 1024;
        *&buf[14] = v108;
        _os_log_impl(&dword_1D9356000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@: -_startPlayback… hasAlreadyDetected…: Should vibrate using embedded haptic track: %{BOOL}d.", buf, 0x12u);
      }

      v17 = v108 ^ 1;
    }

    else
    {
      v108 = 0;
      v17 = 1;
    }

    v102 = v17;
  }

  else
  {
    v108 = 0;
    v102 = 0;
  }

  configuration = [playingAlert configuration];
  if (!assetCopy)
  {
    v23 = 0;
    goto LABEL_59;
  }

  v115 = 0uLL;
  v116 = 0;
  objc_msgSend_duration(assetCopy);
  v113 = 0uLL;
  v114 = 0;
  v117 = 0;
  v118 = &v117;
  v119 = 0x2020000000;
  v18 = getCMTimeGetSecondsSymbolLoc_ptr;
  v120 = getCMTimeGetSecondsSymbolLoc_ptr;
  if (!getCMTimeGetSecondsSymbolLoc_ptr)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getCMTimeGetSecondsSymbolLoc_block_invoke;
    v122 = &unk_1E8578D30;
    v123[0] = &v117;
    v19 = CoreMediaLibrary();
    v20 = dlsym(v19, "CMTimeGetSeconds");
    *(*(v123[0] + 8) + 24) = v20;
    getCMTimeGetSecondsSymbolLoc_ptr = *(*(v123[0] + 8) + 24);
    v18 = v118[3];
  }

  _Block_object_dispose(&v117, 8);
  if (!v18)
  {
    __73__TLToneManager__ensureTCCAccessPreflightAndCheckForFileExistenceAtPath___block_invoke_cold_2();
    __break(1u);
  }

  *buf = v113;
  *&buf[16] = v114;
  v21 = v18(buf);
  [objc_opt_class() _audioVolumeRampingDurationForAlert:playingAlert externalEnvironmentValues:*&self->_externalEnvironmentValues toneAssetDuration:v21];
  v23 = v22;
  shouldRepeat = [configuration shouldRepeat];
  if (shouldRepeat)
  {
    v26 = llround(1.0 / v21) + 2;
  }

  else
  {
    v26 = 1;
  }

  v27 = TLLogPlayback(shouldRepeat, v25);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    queuePlayer = self->_queuePlayer;
    *buf = 138544130;
    *&buf[4] = self;
    *&buf[12] = 2048;
    *&buf[14] = v26;
    *&buf[22] = 2114;
    v122 = queuePlayer;
    LOWORD(v123[0]) = 2114;
    *(v123 + 2) = assetCopy;
    _os_log_impl(&dword_1D9356000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@: -_startPlayback… hasAlreadyDetected…: inserting %lu player items into %{public}@ for tone asset: %{public}@.", buf, 0x2Au);
  }

  if (self->_attentionPollingToken)
  {
    v30 = [(TLAttentionAwarenessEffectCoordinator *)self->_effectCoordinator audioMixForAsset:assetCopy];
    if (!v26)
    {
      goto LABEL_58;
    }

    goto LABEL_29;
  }

  v30 = 0;
  if (v26)
  {
LABEL_29:
    v31 = 0;
    v104 = *MEMORY[0x1E6987A28];
    *&v29 = 138543874;
    v101 = v29;
    while (1)
    {
      v32 = [MEMORY[0x1E69880B0] playerItemWithAsset:{assetCopy, v101}];
      v34 = v32;
      if (!v32)
      {
        v51 = TLLogPlayback(0, v33);
        if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
        {
          *buf = v101;
          *&buf[4] = self;
          *&buf[12] = 2048;
          *&buf[14] = v31;
          *&buf[22] = 2114;
          v122 = assetCopy;
          _os_log_error_impl(&dword_1D9356000, v51, OS_LOG_TYPE_ERROR, "%{public}@: -_startPlayback… hasAlreadyDetected…: (iteration #%lu) failed to create AVPlayerItem for tone asset: %{public}@.", buf, 0x20u);
        }

        goto LABEL_57;
      }

      if (v108)
      {
        break;
      }

LABEL_54:
      if (v30)
      {
        [v34 setAudioMix:v30];
      }

      [v34 setAudioSpatializationAllowed:0];
      [(AVQueuePlayer *)self->_queuePlayer insertItem:v34 afterItem:0];
LABEL_57:

      if (v26 == ++v31)
      {
        goto LABEL_58;
      }
    }

    v35 = TLLogPlayback(v32, v33);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      *&buf[4] = self;
      *&buf[12] = 2114;
      *&buf[14] = v34;
      _os_log_impl(&dword_1D9356000, v35, OS_LOG_TYPE_DEFAULT, "%{public}@: -_startPlayback… hasAlreadyDetected…: [playerItem setPlayHapticTracks:YES] on %{public}@.", buf, 0x16u);
    }

    [v34 setPlayHapticTracks:1];
    v36 = [v34 setHapticPlaybackLocality:v104];
    v38 = TLLogPlayback(v36, v37);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      *&buf[4] = self;
      *&buf[12] = 2114;
      *&buf[14] = v34;
      _os_log_impl(&dword_1D9356000, v38, OS_LOG_TYPE_DEFAULT, "%{public}@: -_startPlayback… hasAlreadyDetected…: [playerItem setHapticPlaybackLocality:AVPlayerItemHapticPlaybackLocalityDefaultWithFullStrength] on %{public}@.", buf, 0x16u);
    }

    tl_hapticTracks = [v34 tl_hapticTracks];
    attenuatedHapticPlayerItemTrack = [tl_hapticTracks attenuatedHapticPlayerItemTrack];
    hapticPlayerItemTrack = [tl_hapticTracks hapticPlayerItemTrack];
    v42 = hapticPlayerItemTrack;
    if (attenuatedHapticPlayerItemTrack)
    {
      if (attentionCopy)
      {
        [hapticPlayerItemTrack setEnabled:0];
        v43 = [v42 setMutesHaptics:1];
        v45 = TLLogPlayback(v43, v44);
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          *&buf[4] = self;
          *&buf[12] = 2114;
          *&buf[14] = v42;
          _os_log_impl(&dword_1D9356000, v45, OS_LOG_TYPE_DEFAULT, "%{public}@: -_startPlayback… hasAlreadyDetected…: [hapticPlayerItemTrack setEnabled:NO] and [hapticPlayerItemTrack setMutesHaptics:YES] on %{public}@.", buf, 0x16u);
        }

        [attenuatedHapticPlayerItemTrack setEnabled:1];
        v46 = [attenuatedHapticPlayerItemTrack setMutesHaptics:0];
        v48 = TLLogPlayback(v46, v47);
        if (!os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_53;
        }

        *buf = 138543618;
        *&buf[4] = self;
        *&buf[12] = 2114;
        *&buf[14] = attenuatedHapticPlayerItemTrack;
        v49 = v48;
        v50 = "%{public}@: -_startPlayback… hasAlreadyDetected…: [attenuatedHapticPlayerItemTrack setEnabled:YES] and [attenuatedHapticPlayerItemTrack setMutesHaptics:NO] on %{public}@.";
      }

      else
      {
        [hapticPlayerItemTrack setEnabled:1];
        v55 = [v42 setMutesHaptics:0];
        v57 = TLLogPlayback(v55, v56);
        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          *&buf[4] = self;
          *&buf[12] = 2114;
          *&buf[14] = v42;
          _os_log_impl(&dword_1D9356000, v57, OS_LOG_TYPE_DEFAULT, "%{public}@: -_startPlayback… hasAlreadyDetected…: [hapticPlayerItemTrack setEnabled:YES] and [hapticPlayerItemTrack setMutesHaptics:NO] on %{public}@.", buf, 0x16u);
        }

        [attenuatedHapticPlayerItemTrack setEnabled:1];
        v58 = [attenuatedHapticPlayerItemTrack setMutesHaptics:1];
        v48 = TLLogPlayback(v58, v59);
        if (!os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_53;
        }

        *buf = 138543618;
        *&buf[4] = self;
        *&buf[12] = 2114;
        *&buf[14] = attenuatedHapticPlayerItemTrack;
        v49 = v48;
        v50 = "%{public}@: -_startPlayback… hasAlreadyDetected…: [attenuatedHapticPlayerItemTrack setEnabled:YES] and [attenuatedHapticPlayerItemTrack setMutesHaptics:YES] on %{public}@.";
      }

      v54 = 22;
    }

    else
    {
      v52 = [hapticPlayerItemTrack setActiveHapticChannelIndex:attentionCopy];
      v48 = TLLogPlayback(v52, v53);
      if (!os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
LABEL_53:

        goto LABEL_54;
      }

      *buf = v101;
      *&buf[4] = self;
      *&buf[12] = 2048;
      *&buf[14] = attentionCopy;
      *&buf[22] = 2114;
      v122 = v42;
      v49 = v48;
      v50 = "%{public}@: -_startPlayback… hasAlreadyDetected…: [hapticPlayerItemTrack setActiveHapticChannelIndex:%ld] on %{public}@.";
      v54 = 32;
    }

    _os_log_impl(&dword_1D9356000, v49, OS_LOG_TYPE_DEFAULT, v50, buf, v54);
    goto LABEL_53;
  }

LABEL_58:

LABEL_59:
  [(TLAlertQueuePlayerController *)self _startObservingQueuePlayer];
  if (v102)
  {
    v60 = [(TLAlertQueuePlayerController *)self _vibrationPatternDictionaryForStateDescriptor:descriptorCopy allowsArtificiallyRepeatingPropertyListRepresentation:1];
    v62 = v60;
    if (v60)
    {
      v63 = TLLogPlayback(v60, v61);
      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
      {
        v64 = self->_queuePlayer;
        *buf = 138543618;
        *&buf[4] = self;
        *&buf[12] = 2114;
        *&buf[14] = v64;
        _os_log_impl(&dword_1D9356000, v63, OS_LOG_TYPE_DEFAULT, "%{public}@: -_startPlayback… hasAlreadyDetected…: [_queuePlayer setVibrationPattern:vibrationPattern] on player %{public}@ with a non-nil pattern.", buf, 0x16u);
      }

      [(AVQueuePlayer *)self->_queuePlayer setVibrationPattern:v62];
    }

    else
    {
      vibrationIdentifier2 = [playingAlert vibrationIdentifier];
      v66 = [vibrationIdentifier2 isEqualToString:@"<none>"];

      if (v66)
      {
        vibrationPattern = [(AVQueuePlayer *)self->_queuePlayer vibrationPattern];
        v68 = vibrationPattern == 0;

        if (!v68)
        {
          v71 = TLLogGeneral(v69, v70);
          v72 = os_log_type_enabled(v71, OS_LOG_TYPE_INFO);

          if (v72)
          {
            v75 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ToneLibrary/Library/Playback/BackEnds/QueuePlayer/TLAlertQueuePlayerController.m"];
            v77 = TLLogGeneral(v75, v76);
            if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
            {
              lastPathComponent = [v75 lastPathComponent];
              callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
              *buf = 136381443;
              *&buf[4] = "[TLAlertQueuePlayerController _startPlaybackForStateDescriptor:usingConfirmedPlayableAsset:hasAlreadyDetectedUserAttention:]";
              *&buf[12] = 2113;
              *&buf[14] = lastPathComponent;
              *&buf[22] = 2049;
              v122 = 721;
              LOWORD(v123[0]) = 2113;
              *(v123 + 2) = callStackSymbols;
              _os_log_impl(&dword_1D9356000, v77, OS_LOG_TYPE_DEFAULT, "*** Assertion failure in %{private}s, %{private}@:%{private}lu.\n%{private}@", buf, 0x2Au);
            }
          }

          else
          {
            v75 = TLLogGeneral(v73, v74);
            if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
            {
              __85__TLVibrationPersistenceUtilities__objectIsValidUserGeneratedVibrationPattern_error___block_invoke_cold_1();
            }
          }

          v90 = TLLogGeneral(v88, v89);
          if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
          {
            [TLAlertQueuePlayerController _startPlaybackForStateDescriptor:usingConfirmedPlayableAsset:hasAlreadyDetectedUserAttention:];
          }
        }

        v91 = TLLogPlayback(v69, v70);
        if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
        {
          v92 = self->_queuePlayer;
          *buf = 138543874;
          *&buf[4] = self;
          *&buf[12] = 2114;
          *&buf[14] = v92;
          *&buf[22] = 2114;
          v122 = @"<none>";
          _os_log_impl(&dword_1D9356000, v91, OS_LOG_TYPE_DEFAULT, "%{public}@: -_startPlayback… hasAlreadyDetected…:. Leaving [_queuePlayer vibrationPattern] as nil on player %{public}@ because the vibration identifier is %{public}@.", buf, 0x20u);
        }
      }
    }
  }

  v93 = [objc_opt_class() _audioPlaybackInitiationDelayForAlert:playingAlert externalEnvironmentValues:*&self->_externalEnvironmentValues];
  v96 = v95;
  if (v95 <= 0.00000011920929)
  {
    [(TLAlertQueuePlayerController *)self _initiateAudioPlaybackForStateDescriptor:descriptorCopy audioVolumeRampingDuration:*&v23];
  }

  else
  {
    v97 = TLLogPlayback(v93, v94);
    if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
    {
      v98 = self->_queuePlayer;
      *buf = 138543874;
      *&buf[4] = self;
      *&buf[12] = 2114;
      *&buf[14] = v98;
      *&buf[22] = 2048;
      v122 = *&v96;
      _os_log_impl(&dword_1D9356000, v97, OS_LOG_TYPE_DEFAULT, "%{public}@: -_startPlayback… hasAlreadyDetected…: Skipping play command on %{public}@ because we need to honor a delay of %f seconds for the initiation of audio playback.", buf, 0x20u);
    }

    objc_initWeak(buf, self);
    v99 = dispatch_time(0, (v96 * 1000000000.0));
    v100 = dispatch_get_global_queue(2, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __125__TLAlertQueuePlayerController__startPlaybackForStateDescriptor_usingConfirmedPlayableAsset_hasAlreadyDetectedUserAttention___block_invoke;
    block[3] = &unk_1E8579DB8;
    objc_copyWeak(v112, buf);
    v111 = descriptorCopy;
    v112[1] = v23;
    dispatch_after(v99, v100, block);

    objc_destroyWeak(v112);
    objc_destroyWeak(buf);
  }

  [(TLAlertQueuePlayerController *)self _notifyPlaybackObserverForStateDescriptor:descriptorCopy isForMusicPlayback:0];
}

void __125__TLAlertQueuePlayerController__startPlaybackForStateDescriptor_usingConfirmedPlayableAsset_hasAlreadyDetectedUserAttention___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(WeakRetained + 1);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __125__TLAlertQueuePlayerController__startPlaybackForStateDescriptor_usingConfirmedPlayableAsset_hasAlreadyDetectedUserAttention___block_invoke_2;
    v5[3] = &unk_1E8578FC0;
    v5[4] = WeakRetained;
    v6 = *(a1 + 32);
    v7 = *(a1 + 48);
    [v4 performTaskWithBlock:v5];
  }
}

- (void)_initiateAudioPlaybackForStateDescriptor:(id)descriptor audioVolumeRampingDuration:(double)duration
{
  v25 = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  os_unfair_lock_assert_not_owner(&self->_lock);
  assertRunningOnAudioQueue = [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  v9 = TLLogPlayback(assertRunningOnAudioQueue, v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138543874;
    selfCopy3 = self;
    v21 = 2114;
    durationCopy2 = *&descriptorCopy;
    v23 = 2050;
    durationCopy = duration;
    _os_log_impl(&dword_1D9356000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: -_initiateAudioPlaybackForStateDescriptor:(%{public}@) audioVolumeRampingDuration:(%{public}f).", &v19, 0x20u);
  }

  v12 = TLLogPlayback(v10, v11);
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (duration <= 0.00000011920929)
  {
    if (v13)
    {
      queuePlayer = self->_queuePlayer;
      v19 = 138543618;
      selfCopy3 = self;
      v21 = 2114;
      durationCopy2 = *&queuePlayer;
      _os_log_impl(&dword_1D9356000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: -_initiateAudioPlayback…: [_queuePlayer play] for %{public}@.", &v19, 0x16u);
    }

    [(AVQueuePlayer *)self->_queuePlayer play];
    [(TLAlertQueuePlayerController *)self _reportAudioStartEventForStateDescriptor:descriptorCopy];
  }

  else
  {
    if (v13)
    {
      v14 = self->_queuePlayer;
      v19 = 138543874;
      selfCopy3 = self;
      v21 = 2050;
      durationCopy2 = duration;
      v23 = 2114;
      durationCopy = *&v14;
      _os_log_impl(&dword_1D9356000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: -_initiateAudioPlayback…: [_queuePlayer setRate:withVolumeRampDuration:] with %{public}f for %{public}@.", &v19, 0x20u);
    }

    v15 = self->_queuePlayer;
    soft_CMTimeMakeWithSeconds(v16, duration);
    LODWORD(v17) = 1.0;
    [(AVQueuePlayer *)v15 setRate:&v19 withVolumeRampDuration:v17];
  }
}

- (void)_performDelayedAudioPlaybackInitiationForStateDescriptor:(id)descriptor audioVolumeRampingDuration:(double)duration
{
  v22 = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  os_unfair_lock_assert_not_owner(&self->_lock);
  assertRunningOnAudioQueue = [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  v9 = TLLogPlayback(assertRunningOnAudioQueue, v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138543874;
    selfCopy2 = self;
    v18 = 2114;
    v19 = descriptorCopy;
    v20 = 2050;
    durationCopy = duration;
    _os_log_impl(&dword_1D9356000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: -_performDelayedAudioPlaybackInitiationForStateDescriptor:(%{public}@) audioVolumeRampingDuration:(%{public}f).", &v16, 0x20u);
  }

  os_unfair_lock_lock(&self->_lock);
  v10 = self->_stateDescriptor;
  os_unfair_lock_unlock(&self->_lock);
  playingAlert = [descriptorCopy playingAlert];
  playingAlert2 = [(TLAlertQueuePlayerStateDescriptor *)v10 playingAlert];
  v14 = playingAlert2;
  if (playingAlert2 == playingAlert)
  {
    [(TLAlertQueuePlayerController *)self _initiateAudioPlaybackForStateDescriptor:v10 audioVolumeRampingDuration:duration];
  }

  else
  {
    v15 = TLLogPlayback(playingAlert2, v13);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138543874;
      selfCopy2 = self;
      v18 = 2114;
      v19 = v14;
      v20 = 2114;
      durationCopy = *&playingAlert;
      _os_log_impl(&dword_1D9356000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: -_performDelayedAudioPlaybackInitiation…: playingAlert (%{public}@) doesn't match with alert with delayed audio playback initiation (%{public}@). Aborting.", &v16, 0x20u);
    }
  }
}

- (void)_notifyPlaybackObserverForStateDescriptor:(id)descriptor isForMusicPlayback:(BOOL)playback
{
  playbackCopy = playback;
  v36 = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  os_unfair_lock_assert_not_owner(&self->_lock);
  assertRunningOnAudioQueue = [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  v9 = TLLogPlayback(assertRunningOnAudioQueue, v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    selfCopy = self;
    v32 = 2114;
    v33 = descriptorCopy;
    v34 = 1024;
    v35 = playbackCopy;
    _os_log_impl(&dword_1D9356000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: -_notifyPlaybackObserverForStateDescriptor:(%{public}@) isForMusicPlayback:(%{BOOL}d).", buf, 0x1Cu);
  }

  playingAlert = [descriptorCopy playingAlert];
  playbackObserver = [playingAlert playbackObserver];
  if (objc_opt_respondsToSelector())
  {
    reporterID = [(AVAudioSession *)self->_audioSession reporterID];
    v13 = [(TLAlertQueuePlayerController *)self description];
    v14 = dispatch_get_global_queue(0, 0);
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __93__TLAlertQueuePlayerController__notifyPlaybackObserverForStateDescriptor_isForMusicPlayback___block_invoke;
    v25[3] = &unk_1E85797D8;
    v29 = playbackCopy;
    v15 = &v26;
    v28[1] = reporterID;
    v26 = v13;
    v16 = &v27;
    v27 = playbackObserver;
    v17 = v28;
    v28[0] = playingAlert;
    v18 = v13;
    v19 = v25;
LABEL_7:
    dispatch_async(v14, v19);

    goto LABEL_8;
  }

  if (objc_opt_respondsToSelector())
  {
    v20 = [(TLAlertQueuePlayerController *)self description];
    v14 = dispatch_get_global_queue(0, 0);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __93__TLAlertQueuePlayerController__notifyPlaybackObserverForStateDescriptor_isForMusicPlayback___block_invoke_57;
    v21[3] = &unk_1E8579038;
    v15 = &v22;
    v22 = v20;
    v16 = &v23;
    v23 = playbackObserver;
    v17 = &v24;
    v24 = playingAlert;
    v18 = v20;
    v19 = v21;
    goto LABEL_7;
  }

LABEL_8:
}

void __93__TLAlertQueuePlayerController__notifyPlaybackObserverForStateDescriptor_isForMusicPlayback___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [[TLAlertPlaybackBeginEvent alloc] _initWithAudioSessionReporterID:*(a1 + 56) isForMusicPlayback:*(a1 + 64)];
  v4 = TLLogPlayback(v2, v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v8 = 138544130;
    v9 = v5;
    v10 = 2114;
    v11 = v6;
    v12 = 2114;
    v13 = v2;
    v14 = 2114;
    v15 = v7;
    _os_log_impl(&dword_1D9356000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: -_notifyPlaybackObserver…: Calling -alert:didBeginPlayingWithEvent: on playback observer %{public}@ with %{public}@ for %{public}@.", &v8, 0x2Au);
  }

  [*(a1 + 40) alert:*(a1 + 48) didBeginPlayingWithEvent:v2];
}

uint64_t __93__TLAlertQueuePlayerController__notifyPlaybackObserverForStateDescriptor_isForMusicPlayback___block_invoke_57(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = TLLogPlayback(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v8 = 138543874;
    v9 = v4;
    v10 = 2114;
    v11 = v5;
    v12 = 2114;
    v13 = v6;
    _os_log_impl(&dword_1D9356000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: -_notifyPlaybackObserver…: Calling -alertDidBeginPlaying: on playback observer %{public}@ for %{public}@.", &v8, 0x20u);
  }

  return [*(a1 + 40) alertDidBeginPlaying:*(a1 + 48)];
}

- (void)_stopPlaybackForStateDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  os_unfair_lock_assert_not_owner(&self->_lock);
  [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  [(TLAlertQueuePlayerController *)self _stopPlaybackForStateDescriptor:descriptorCopy withOptions:0 playerWasAlreadyPausedExternally:0];
}

- (void)_stopPlaybackForStateDescriptor:(id)descriptor withOptions:(id)options playerWasAlreadyPausedExternally:(BOOL)externally
{
  externallyCopy = externally;
  v51 = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  optionsCopy = options;
  os_unfair_lock_assert_not_owner(&self->_lock);
  assertRunningOnAudioQueue = [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  v12 = TLLogPlayback(assertRunningOnAudioQueue, v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v43 = 138544130;
    selfCopy8 = self;
    v45 = 2114;
    v46 = descriptorCopy;
    v47 = 2114;
    v48 = optionsCopy;
    v49 = 1024;
    v50 = externallyCopy;
    _os_log_impl(&dword_1D9356000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: -_stopPlaybackForStateDescriptor:(%{public}@) withOptions:(%{public}@) playerWasAlreadyPausedExternally:(%{BOOL}d).", &v43, 0x26u);
  }

  isStoppingPlayingAlert = self->_isStoppingPlayingAlert;
  self->_isStoppingPlayingAlert = 1;
  if (self->_queuePlayer)
  {
    if (externallyCopy)
    {
      v16 = TLLogPlayback(v13, v14);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        queuePlayer = self->_queuePlayer;
        v43 = 138543618;
        selfCopy8 = self;
        v45 = 2114;
        v46 = queuePlayer;
        _os_log_impl(&dword_1D9356000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@: -_stopPlaybackFor…: playerWasAlreadyPausedExternally = YES for %{public}@.", &v43, 0x16u);
      }
    }

    else if (optionsCopy && (v13 = [(AVQueuePlayer *)optionsCopy fadeOutDuration], v19 = v18, v18 > 0.00000011920929))
    {
      v20 = TLLogPlayback(v13, v14);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = self->_queuePlayer;
        v43 = 138543874;
        selfCopy8 = self;
        v45 = 2048;
        v46 = *&v19;
        v47 = 2114;
        v48 = v21;
        _os_log_impl(&dword_1D9356000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@: -_stopPlaybackFor…: [_queuePlayer setRate:withVolumeRampDuration:] with fadeOutDuration %f for %{public}@.", &v43, 0x20u);
      }

      v22 = self->_queuePlayer;
      soft_CMTimeMakeWithSeconds(v23, v19);
      [(AVQueuePlayer *)v22 setRate:&v43 withVolumeRampDuration:0.0];
    }

    else
    {
      v24 = TLLogPlayback(v13, v14);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = self->_queuePlayer;
        v43 = 138543618;
        selfCopy8 = self;
        v45 = 2114;
        v46 = v25;
        _os_log_impl(&dword_1D9356000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@: -_stopPlaybackFor…: [_queuePlayer pause] for %{public}@.", &v43, 0x16u);
      }

      [(AVQueuePlayer *)self->_queuePlayer pause];
    }

    _stopObservingQueuePlayer = [(TLAlertQueuePlayerController *)self _stopObservingQueuePlayer];
    v28 = TLLogPlayback(_stopObservingQueuePlayer, v27);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = self->_queuePlayer;
      v43 = 138543618;
      selfCopy8 = self;
      v45 = 2114;
      v46 = v29;
      _os_log_impl(&dword_1D9356000, v28, OS_LOG_TYPE_DEFAULT, "%{public}@: -_stopPlaybackFor…: [_queuePlayer removeAllItems] for %{public}@.", &v43, 0x16u);
    }

    [(AVQueuePlayer *)self->_queuePlayer removeAllItems];
    vibrationPattern = [(AVQueuePlayer *)self->_queuePlayer vibrationPattern];

    if (vibrationPattern)
    {
      v33 = TLLogPlayback(v31, v32);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v34 = self->_queuePlayer;
        v43 = 138543618;
        selfCopy8 = self;
        v45 = 2114;
        v46 = v34;
        _os_log_impl(&dword_1D9356000, v33, OS_LOG_TYPE_DEFAULT, "%{public}@: -_stopPlaybackFor…: [_queuePlayer setVibrationPattern:nil] for %{public}@.", &v43, 0x16u);
      }

      [(AVQueuePlayer *)self->_queuePlayer setVibrationPattern:0];
    }
  }

  isPlayingMusic = self->_isPlayingMusic;
  _stopMusicPlayback = [(TLAlertQueuePlayerController *)self _stopMusicPlayback];
  if (isPlayingMusic)
  {
    v38 = TLLogPlayback(_stopMusicPlayback, v37);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      v43 = 138543618;
      selfCopy8 = self;
      v45 = 2048;
      v46 = 0x3FE0000000000000;
      _os_log_impl(&dword_1D9356000, v38, OS_LOG_TYPE_DEFAULT, "%{public}@: -_stopMusicPlayback: Start delay of %.1fs to avoid a perceptible glitch upon restoring previous audio volume for Media Playback.", &v43, 0x16u);
    }

    v39 = [MEMORY[0x1E696AF00] sleepForTimeInterval:0.5];
    v41 = TLLogPlayback(v39, v40);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      v43 = 138543618;
      selfCopy8 = self;
      v45 = 2048;
      v46 = 0x3FE0000000000000;
      _os_log_impl(&dword_1D9356000, v41, OS_LOG_TYPE_DEFAULT, "%{public}@: -_stopMusicPlayback: Ended delay of %.1fs to avoid a perceptible glitch upon restoring previous audio volume for Media Playback.", &v43, 0x16u);
    }
  }

  [(TLAlertQueuePlayerController *)self _didEndPlayingAlertForStateDescriptor:descriptorCopy isForMusicPlayback:isPlayingMusic];
  toneAssetForPendingPlayingAlert = self->_toneAssetForPendingPlayingAlert;
  self->_toneAssetForPendingPlayingAlert = 0;

  self->_hasToneAssetForPendingPlayingAlert = 0;
  self->_isStoppingPlayingAlert = isStoppingPlayingAlert;
}

- (void)_willBeginPlayingAlertForStateDescriptor:(id)descriptor isForMusicPlayback:(BOOL)playback
{
  playbackCopy = playback;
  v21 = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  os_unfair_lock_assert_not_owner(&self->_lock);
  assertRunningOnAudioQueue = [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  v9 = TLLogPlayback(assertRunningOnAudioQueue, v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138543874;
    selfCopy2 = self;
    v17 = 2114;
    v18 = descriptorCopy;
    v19 = 1024;
    LODWORD(v20) = playbackCopy;
    _os_log_impl(&dword_1D9356000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: -_willBeginPlayingAlertForStateDescriptor:(%{public}@) isForMusicPlayback:(%{BOOL}d).", &v15, 0x1Cu);
  }

  isAlertActivationAssertionAcquired = [descriptorCopy isAlertActivationAssertionAcquired];
  if (isAlertActivationAssertionAcquired)
  {
    v12 = TLLogPlayback(isAlertActivationAssertionAcquired, v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      alertForAudioEnvironmentSetup = [descriptorCopy alertForAudioEnvironmentSetup];
      playingAlert = [descriptorCopy playingAlert];
      v15 = 138543874;
      selfCopy2 = self;
      v17 = 2114;
      v18 = alertForAudioEnvironmentSetup;
      v19 = 2114;
      v20 = playingAlert;
      _os_log_impl(&dword_1D9356000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: -_willBeginPlaying…: Alert activation assertion acquired for %{public}@. Skipping audio environment preparation steps for %{public}@.", &v15, 0x20u);
    }
  }

  else
  {
    [(TLAlertQueuePlayerController *)self _prepareAudioEnvironmentForStateDescriptor:descriptorCopy isForMusicPlayback:playbackCopy];
  }
}

- (void)_didEndPlayingAlertForStateDescriptor:(id)descriptor isForMusicPlayback:(BOOL)playback
{
  playbackCopy = playback;
  v21 = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  os_unfair_lock_assert_not_owner(&self->_lock);
  assertRunningOnAudioQueue = [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  v9 = TLLogPlayback(assertRunningOnAudioQueue, v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138543874;
    selfCopy2 = self;
    v17 = 2114;
    v18 = descriptorCopy;
    v19 = 1024;
    LODWORD(v20) = playbackCopy;
    _os_log_impl(&dword_1D9356000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: -_didEndPlayingAlertForStateDescriptor:(%{public}@) isForMusicPlayback:(%{BOOL}d).", &v15, 0x1Cu);
  }

  isAlertActivationAssertionAcquired = [descriptorCopy isAlertActivationAssertionAcquired];
  if (isAlertActivationAssertionAcquired)
  {
    v12 = TLLogPlayback(isAlertActivationAssertionAcquired, v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      alertForAudioEnvironmentSetup = [descriptorCopy alertForAudioEnvironmentSetup];
      playingAlert = [descriptorCopy playingAlert];
      v15 = 138543874;
      selfCopy2 = self;
      v17 = 2114;
      v18 = alertForAudioEnvironmentSetup;
      v19 = 2114;
      v20 = playingAlert;
      _os_log_impl(&dword_1D9356000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: -_didEndPlaying…: Alert activation assertion acquired for %{public}@. Skipping audio environment restoration steps for playing alert: %{public}@.", &v15, 0x20u);
    }
  }

  else
  {
    [(TLAlertQueuePlayerController *)self _restoreAudioEnvironmentForStateDescriptor:descriptorCopy isForMusicPlayback:playbackCopy];
  }
}

- (void)_prepareAudioEnvironmentForStateDescriptor:(id)descriptor isForMusicPlayback:(BOOL)playback
{
  playbackCopy = playback;
  v147 = *MEMORY[0x1E69E9840];
  v6 = COERCE_DOUBLE(descriptor);
  os_unfair_lock_assert_not_owner(&self->_lock);
  [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  v126 = v6;
  [*&v6 alertForAudioEnvironmentSetup];
  v7 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
  v9 = TLLogPlayback(*&v7, v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544130;
    selfCopy18 = self;
    v139 = 2114;
    v140 = v126;
    v141 = 1024;
    *v142 = playbackCopy;
    *&v142[4] = 2114;
    *&v142[6] = v7;
    _os_log_impl(&dword_1D9356000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: -_prepareAudioEnvironmentForStateDescriptor:(%{public}@) isForMusicPlayback:(%{BOOL}d). alertForAudioEnvironmentSetup = %{public}@", buf, 0x26u);
  }

  v10 = [objc_opt_class() _externalEnvironmentValuesForAlert:*&v7];
  self->_externalEnvironmentValues = v10;
  if (playbackCopy)
  {
    v12 = TLLogPlayback(v10, v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy18 = self;
      _os_log_impl(&dword_1D9356000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: -_prepareAudioEnvironment. Skipping setup of audio session as we prepare for music playback.", buf, 0xCu);
    }

LABEL_21:

    goto LABEL_22;
  }

  if (self->_audioSession)
  {
    v13 = TLLogPlayback(v10, v11);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *&v14 = COERCE_DOUBLE("shared");
      audioSession = self->_audioSession;
      if (self->_isUsingAuxiliaryAudioSession)
      {
        *&v14 = COERCE_DOUBLE("auxiliary");
      }

      *buf = 138544130;
      selfCopy18 = self;
      v139 = 2082;
      v140 = *&v14;
      v141 = 2114;
      *v142 = audioSession;
      *&v142[8] = 2114;
      *&v142[10] = v7;
      _os_log_impl(&dword_1D9356000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: -_prepareAudioEnvironment. Using previous %{public}s audio session %{public}@ for %{public}@.", buf, 0x2Au);
    }

    v12 = TLLogPlayback(v16, v17);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy18 = self;
      _os_log_impl(&dword_1D9356000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: -_prepareAudioEnvironment. We are most likely about to being playing an alert which interrupted one that was already playing, and which was stopped while preventing the deactivation of the audio session.", buf, 0xCu);
    }

    goto LABEL_21;
  }

  if (![objc_opt_class() _shouldUseAuxiliaryAudioSessionForAlert:*&v7])
  {
    self->_isUsingAuxiliaryAudioSession = 0;
    mEMORY[0x1E6958460] = [MEMORY[0x1E6958460] sharedInstance];
    v25 = self->_audioSession;
    self->_audioSession = mEMORY[0x1E6958460];

    v12 = TLLogPlayback(v26, v27);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v28 = self->_audioSession;
      *buf = 138543874;
      selfCopy18 = self;
      v139 = 2114;
      v140 = *&v28;
      v141 = 2114;
      *v142 = v7;
      _os_log_impl(&dword_1D9356000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: -_prepareAudioEnvironment…: Using shared audio session %{public}@ for %{public}@.", buf, 0x20u);
    }

    goto LABEL_21;
  }

  self->_isUsingAuxiliaryAudioSession = 1;
  auxiliarySession = [MEMORY[0x1E6958460] auxiliarySession];
  v19 = self->_audioSession;
  self->_audioSession = auxiliarySession;

  v20 = [(AVQueuePlayer *)self->_queuePlayer setAudioSession:self->_audioSession];
  v22 = TLLogPlayback(v20, v21);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = self->_audioSession;
    *buf = 138543874;
    selfCopy18 = self;
    v139 = 2114;
    v140 = *&v23;
    v141 = 2114;
    *v142 = v7;
    _os_log_impl(&dword_1D9356000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@: -_prepareAudioEnvironment…: Using auxiliary audio session %{public}@ for %{public}@.", buf, 0x20u);
  }

  [(TLAlertQueuePlayerController *)self _resetFlagsForSwitchingAuxiliaryAudioSession];
LABEL_22:
  [objc_opt_class() _audioCategoryForAlert:*&v7 externalEnvironmentValues:*&self->_externalEnvironmentValues];
  v29 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
  v30 = [objc_opt_class() _audioCategoryOptionsForAlert:*&v7 externalEnvironmentValues:*&self->_externalEnvironmentValues];
  v125 = [objc_opt_class() _audioModeForAlert:*&v7 audioCategory:*&v29];
  if ([*&v29 length] && !playbackCopy)
  {
    category = [(AVAudioSession *)self->_audioSession category];
    v32 = COERCE_DOUBLE([category copy]);

    categoryOptions = [(AVAudioSession *)self->_audioSession categoryOptions];
    mode = [(AVAudioSession *)self->_audioSession mode];
    v35 = [mode copy];

    v36 = self->_audioSession;
    v136 = 0;
    v37 = [(AVAudioSession *)v36 setCategory:*&v29 mode:v125 options:v30 error:&v136];
    v38 = v136;
    if (v38)
    {
      v40 = 0;
    }

    else
    {
      v40 = v37;
    }

    if (v40)
    {
      objc_storeStrong(&self->_previousAudioCategory, *&v32);
      self->_previousAudioCategoryOptions = categoryOptions;
      objc_storeStrong(&self->_previousAudioMode, v35);
      v43 = TLLogPlayback(v41, v42);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        if ([(__CFString *)v125 length])
        {
          v44 = " with mode ";
        }

        else
        {
          v44 = "";
        }

        v45 = [(__CFString *)v125 length];
        v46 = self->_audioSession;
        v47 = &stru_1F54CFF40;
        if (v45)
        {
          v47 = v125;
        }

        *buf = 138544898;
        selfCopy18 = self;
        v139 = 2114;
        v140 = v29;
        v141 = 2082;
        *v142 = v44;
        *&v142[8] = 2114;
        *&v142[10] = v47;
        *&v142[18] = 1024;
        *&v142[20] = v30;
        *&v142[24] = 2114;
        *&v142[26] = v46;
        v143 = 2114;
        v144 = v7;
        _os_log_impl(&dword_1D9356000, v43, OS_LOG_TYPE_DEFAULT, "%{public}@: -_prepareAudioEnvironment…: Successfully set audio category to %{public}@%{public}s%{public}@ and options 0x%x on audio session %{public}@ for %{public}@.", buf, 0x44u);
      }
    }

    else
    {
      v48 = v38;
      v49 = TLLogPlayback(v38, v39);
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        v109 = [(__CFString *)v125 length];
        v110 = " with mode ";
        if (!v109)
        {
          v110 = "";
        }

        v123 = v110;
        if ([(__CFString *)v125 length])
        {
          v111 = v125;
        }

        else
        {
          v111 = &stru_1F54CFF40;
        }

        tl_nonRedundantDescription = [v48 tl_nonRedundantDescription];
        *buf = 138545154;
        selfCopy18 = self;
        v139 = 2114;
        v140 = v29;
        v141 = 2082;
        *v142 = v123;
        *&v142[8] = 2114;
        *&v142[10] = v121;
        *&v142[18] = 1024;
        *&v142[20] = v30;
        *&v142[24] = 2114;
        *&v142[26] = v122;
        v143 = 2114;
        v144 = v7;
        v145 = 2114;
        v113 = tl_nonRedundantDescription;
        v146 = tl_nonRedundantDescription;
        _os_log_error_impl(&dword_1D9356000, v49, OS_LOG_TYPE_ERROR, "%{public}@: -_prepareAudioEnvironment…: Failed setting audio category to %{public}@%{public}s%{public}@ and options 0x%x on audio session %{public}@ for %{public}@ with error: %{public}@.", buf, 0x4Eu);
      }

      v50 = self->_audioSession;
      v135 = v48;
      v51 = [(AVAudioSession *)v50 setCategory:*&v32 mode:v35 options:categoryOptions error:&v135];
      v43 = v135;

      if (v43)
      {
        v51 = 0;
      }

      v54 = TLLogPlayback(v52, v53);
      v55 = v54;
      if (v51)
      {
        if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
        {
          v56 = self->_audioSession;
          *buf = 138544386;
          selfCopy18 = self;
          v139 = 2114;
          v140 = v32;
          v141 = 2114;
          *v142 = v35;
          *&v142[8] = 1024;
          *&v142[10] = categoryOptions;
          *&v142[14] = 2114;
          *&v142[16] = v56;
          _os_log_impl(&dword_1D9356000, v55, OS_LOG_TYPE_DEFAULT, "%{public}@: -_prepareAudioEnvironment…: Successfully reverted audio category back to %{public}@ with mode %{public}@ and options 0x%x on audio session %{public}@.", buf, 0x30u);
        }

        v43 = v55;
      }

      else
      {
        if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
        {
          v124 = self->_audioSession;
          tl_nonRedundantDescription2 = [v43 tl_nonRedundantDescription];
          *buf = 138544642;
          selfCopy18 = self;
          v139 = 2114;
          v140 = v32;
          v141 = 2114;
          *v142 = v35;
          *&v142[8] = 1024;
          *&v142[10] = categoryOptions;
          *&v142[14] = 2114;
          *&v142[16] = v124;
          *&v142[24] = 2114;
          *&v142[26] = tl_nonRedundantDescription2;
          _os_log_error_impl(&dword_1D9356000, v55, OS_LOG_TYPE_ERROR, "%{public}@: -_prepareAudioEnvironment…: Failed reverting audio category back to %{public}@ with mode %{public}@ and options 0x%x on audio session %{public}@ with error: %{public}@.", buf, 0x3Au);
        }
      }
    }
  }

  if ([objc_opt_class() _shouldBypassRingerSwitchPolicyForAlert:*&v7] && !self->_isBypassingRingerSwitchPolicy && !playbackCopy)
  {
    v57 = self->_audioSession;
    v134 = 0;
    v58 = [(AVAudioSession *)v57 setBypassRingerSwitchPolicy:1 error:&v134];
    v59 = v134;
    v61 = v59;
    if (v59)
    {
      v62 = 0;
    }

    else
    {
      v62 = v58;
    }

    if (v62 == 1)
    {
      self->_isBypassingRingerSwitchPolicy = 1;
      v63 = TLLogPlayback(v59, v60);
      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
      {
        v64 = self->_audioSession;
        *buf = 138543874;
        selfCopy18 = self;
        v139 = 2114;
        v140 = *&v64;
        v141 = 2114;
        *v142 = v7;
        _os_log_impl(&dword_1D9356000, v63, OS_LOG_TYPE_DEFAULT, "%{public}@: -_prepareAudioEnvironment…: Successfully bypassed ringer switch policy on audio session %{public}@ for %{public}@.", buf, 0x20u);
      }
    }

    else
    {
      v63 = TLLogPlayback(v59, v60);
      if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
      {
        v114 = self->_audioSession;
        tl_nonRedundantDescription3 = [v61 tl_nonRedundantDescription];
        *buf = 138544130;
        selfCopy18 = self;
        v139 = 2114;
        v140 = *&v114;
        v141 = 2114;
        *v142 = v7;
        *&v142[8] = 2114;
        *&v142[10] = tl_nonRedundantDescription3;
        _os_log_error_impl(&dword_1D9356000, v63, OS_LOG_TYPE_ERROR, "%{public}@: -_prepareAudioEnvironment…: Failed bypassing ringer switch policy on audio session %{public}@ for %{public}@ with error: %{public}@.", buf, 0x2Au);
      }
    }
  }

  configuration = [*&v7 configuration];
  shouldIgnoreAccessibilityDisabledVibrationSetting = [configuration shouldIgnoreAccessibilityDisabledVibrationSetting];

  if (shouldIgnoreAccessibilityDisabledVibrationSetting && !self->_isIgnoringAccessibilityDisabledVibrationSetting && !playbackCopy)
  {
    v67 = self->_audioSession;
    v133 = 0;
    v68 = [(AVAudioSession *)v67 setPrefersToVibeWhenVibrationsAreDisabled:1 error:&v133];
    v69 = v133;
    v71 = v69;
    if (v69)
    {
      v72 = 0;
    }

    else
    {
      v72 = v68;
    }

    if (v72 == 1)
    {
      self->_isIgnoringAccessibilityDisabledVibrationSetting = 1;
      v73 = TLLogPlayback(v69, v70);
      if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
      {
        v74 = self->_audioSession;
        *buf = 138543874;
        selfCopy18 = self;
        v139 = 2114;
        v140 = *&v74;
        v141 = 2114;
        *v142 = v7;
        _os_log_impl(&dword_1D9356000, v73, OS_LOG_TYPE_DEFAULT, "%{public}@: -_prepareAudioEnvironment…: Successfully set prefersToVibeWhenVibrationsAreDisabled to YES on audio session %{public}@ for %{public}@.", buf, 0x20u);
      }
    }

    else
    {
      v73 = TLLogPlayback(v69, v70);
      if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
      {
        v117 = self->_audioSession;
        tl_nonRedundantDescription4 = [v71 tl_nonRedundantDescription];
        *buf = 138544130;
        selfCopy18 = self;
        v139 = 2114;
        v140 = *&v117;
        v141 = 2114;
        *v142 = v7;
        *&v142[8] = 2114;
        *&v142[10] = tl_nonRedundantDescription4;
        _os_log_error_impl(&dword_1D9356000, v73, OS_LOG_TYPE_ERROR, "%{public}@: -_prepareAudioEnvironment…: Failed setting prefersToVibeWhenVibrationsAreDisabled to YES on audio session %{public}@ for %{public}@ with error: %{public}@.", buf, 0x2Au);
      }
    }
  }

  if ([objc_opt_class() _prefersToPlayDuringWombatForAlert:*&v7] && !self->_prefersToPlayDuringWombat && !playbackCopy)
  {
    v75 = self->_audioSession;
    v76 = *MEMORY[0x1E69B0340];
    v132 = 0;
    v77 = [(AVAudioSession *)v75 setMXSessionProperty:*&v76 value:MEMORY[0x1E695E118] error:&v132];
    v78 = v132;
    v80 = v78;
    if (v78)
    {
      v81 = 0;
    }

    else
    {
      v81 = v77;
    }

    if (v81 == 1)
    {
      self->_prefersToPlayDuringWombat = 1;
      v82 = TLLogPlayback(v78, v79);
      if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
      {
        v83 = self->_audioSession;
        *buf = 138544130;
        selfCopy18 = self;
        v139 = 2114;
        v140 = v76;
        v141 = 2114;
        *v142 = v83;
        *&v142[8] = 2114;
        *&v142[10] = v7;
        _os_log_impl(&dword_1D9356000, v82, OS_LOG_TYPE_DEFAULT, "%{public}@: -_prepareAudioEnvironment…: Successfully set MXSessionProperty %{public}@ to YES on audio session %{public}@ for %{public}@.", buf, 0x2Au);
      }
    }

    else
    {
      v82 = TLLogPlayback(v78, v79);
      if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
      {
        v119 = self->_audioSession;
        tl_nonRedundantDescription5 = [v80 tl_nonRedundantDescription];
        *buf = 138544386;
        selfCopy18 = self;
        v139 = 2114;
        v140 = v76;
        v141 = 2114;
        *v142 = v119;
        *&v142[8] = 2114;
        *&v142[10] = v7;
        *&v142[18] = 2114;
        *&v142[20] = tl_nonRedundantDescription5;
        _os_log_error_impl(&dword_1D9356000, v82, OS_LOG_TYPE_ERROR, "%{public}@: -_prepareAudioEnvironment…: Failed setting MXSessionProperty %{public}@ to YES on audio session %{public}@ for %{public}@ with error: %{public}@.", buf, 0x34u);
      }
    }
  }

  [(TLAlertQueuePlayerController *)self _audioVolumeForAlert:*&v7 audioCategory:*&v29];
  v85 = v84;
  analytics = [*&v126 analytics];
  [analytics setReporterID:{-[AVAudioSession reporterID](self->_audioSession, "reporterID")}];
  LODWORD(v87) = v85;
  [analytics setUserVolume:v87];
  [analytics setWasDeviceChargingOnStart:{+[TLAlertQueuePlayerAnalytics isDeviceCurrentlyCharging](TLAlertQueuePlayerAnalytics, "isDeviceCurrentlyCharging")}];
  v88 = [objc_opt_class() _audioVolumeApplicationPolicyForAlert:*&v7 externalEnvironmentValues:*&self->_externalEnvironmentValues];
  if (v88 != 3)
  {
    LODWORD(v89) = v85;
    [(TLAlertQueuePlayerController *)self _applyAudioVolume:*&v7 forAlert:playbackCopy isForMusicPlayback:0 phase:v89];
  }

  if (!playbackCopy)
  {
    [(TLAlertQueuePlayerController *)self _activateAudioSessionIfNeededForStateDescriptor:*&v126];
  }

  if (v88 == 3)
  {
    LODWORD(v89) = v85;
    [(TLAlertQueuePlayerController *)self _applyAudioVolume:*&v7 forAlert:playbackCopy isForMusicPlayback:0 phase:v89];
  }

  v90 = [objc_opt_class() _shouldApplyAttentionAwarenessEffectsForAlert:*&v7];
  attentionPollingToken = self->_attentionPollingToken;
  if (!v90 || attentionPollingToken || playbackCopy)
  {
    if (!attentionPollingToken)
    {
      v107 = TLLogPlayback(v90, v91);
      if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        selfCopy18 = self;
        v139 = 2114;
        v140 = v7;
        _os_log_impl(&dword_1D9356000, v107, OS_LOG_TYPE_DEFAULT, "%{public}@: -_prepareAudioEnvironment…: Skipping attention awareness effects for %{public}@.", buf, 0x16u);
      }

      date = [MEMORY[0x1E695DF00] date];
      [date timeIntervalSinceReferenceDate];
      [analytics setStartTime:?];
    }
  }

  else
  {
    objc_initWeak(&location, self);
    v93 = +[TLAttentionAwarenessObserver sharedAttentionAwarenessObserver];
    v128[0] = MEMORY[0x1E69E9820];
    v128[1] = 3221225472;
    v128[2] = __94__TLAlertQueuePlayerController__prepareAudioEnvironmentForStateDescriptor_isForMusicPlayback___block_invoke;
    v128[3] = &unk_1E8579DE0;
    objc_copyWeak(&v130, &location);
    v129 = *&v126;
    v94 = [v93 pollForAttentionWithEventHandler:v128];
    v95 = self->_attentionPollingToken;
    self->_attentionPollingToken = v94;

    mEMORY[0x1E69AED10] = [MEMORY[0x1E69AED10] sharedAVSystemController];
    category2 = [(AVAudioSession *)self->_audioSession category];
    v98 = [objc_opt_class() _mediaExperienceAudioCategoryForAudioSessionCategory:category2];
    v127 = 0.0;
    v99 = [mEMORY[0x1E69AED10] getVolume:&v127 forCategory:v98];
    v100 = v99;
    v102 = TLLogPlayback(v99, v101);
    if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138544386;
      selfCopy18 = self;
      v139 = 2048;
      v140 = v127;
      v141 = 2114;
      *v142 = v98;
      *&v142[8] = 2114;
      *&v142[10] = category2;
      *&v142[18] = 1024;
      *&v142[20] = v100;
      _os_log_impl(&dword_1D9356000, v102, OS_LOG_TYPE_DEFAULT, "%{public}@: -_prepareAudioEnvironment…: Retrieved existing audio volume %f for MediaExperience audio category %{public}@ (active audio session category: %{public}@); did succeed: %{BOOL}d.", buf, 0x30u);
    }

    v103 = TLAttentionAwarenessEffectParametersMake(v127);
    v105 = [[TLAttentionAwarenessEffectCoordinator alloc] initWithEffectParameters:v103 audioSession:v104, self->_audioSession];
    effectCoordinator = self->_effectCoordinator;
    self->_effectCoordinator = v105;

    objc_destroyWeak(&v130);
    objc_destroyWeak(&location);
  }

  self->_isAudioEnvironmentSetup = 1;
}

void __94__TLAlertQueuePlayerController__prepareAudioEnvironmentForStateDescriptor_isForMusicPlayback___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = *(WeakRetained + 1);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __94__TLAlertQueuePlayerController__prepareAudioEnvironmentForStateDescriptor_isForMusicPlayback___block_invoke_2;
    v7[3] = &unk_1E8578FC0;
    v7[4] = WeakRetained;
    v9 = a2;
    v8 = *(a1 + 32);
    [v6 performTaskWithBlock:v7];
  }
}

- (void)_restoreAudioEnvironmentForStateDescriptor:(id)descriptor isForMusicPlayback:(BOOL)playback
{
  playbackCopy = playback;
  v101 = *MEMORY[0x1E69E9840];
  v6 = COERCE_DOUBLE(descriptor);
  os_unfair_lock_assert_not_owner(&self->_lock);
  [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  alertForAudioEnvironmentSetup = [*&v6 alertForAudioEnvironmentSetup];
  v9 = TLLogPlayback(alertForAudioEnvironmentSetup, v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    selfCopy14 = self;
    v95 = 2114;
    v96 = v6;
    v97 = 1024;
    LODWORD(v98) = playbackCopy;
    _os_log_impl(&dword_1D9356000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: -_restoreAudioEnvironmentForStateDescriptor:(%{public}@) isForMusicPlayback:(%{BOOL}d).", buf, 0x1Cu);
  }

  self->_isAudioEnvironmentSetup = 0;
  v10 = self->_attentionPollingToken;
  attentionPollingToken = self->_attentionPollingToken;
  self->_attentionPollingToken = 0;

  if (v10)
  {
    v12 = +[TLAttentionAwarenessObserver sharedAttentionAwarenessObserver];
    [v12 cancelPollForAttentionWithToken:v10];
  }

  self->_isAttentionAwarenessSubsystemFullyInitialized = 0;
  self->_lastAttentionPollingEventType = 0;
  effectCoordinator = self->_effectCoordinator;
  self->_effectCoordinator = 0;

  v14 = [objc_opt_class() _audioVolumeApplicationPolicyForAlert:alertForAudioEnvironmentSetup externalEnvironmentValues:*&self->_externalEnvironmentValues];
  previousAudioVolume = 0.0;
  if (v14 != 3)
  {
    if (v14 == 2)
    {
      if (playbackCopy)
      {
        v18 = 0;
        previousAudioVolume = self->_previousAudioVolume;
        v17 = !self->_hasPreviousAudioVolume;
        goto LABEL_17;
      }
    }

    else if (v14 == 1)
    {
      v17 = 0;
      v18 = 0;
      previousAudioVolume = 1.0;
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (!playbackCopy)
  {
LABEL_16:
    v18 = 0;
    v17 = 1;
    goto LABEL_17;
  }

  previousAudioVolume = self->_previousAudioVolume;
  if (self->_hasPreviousAudioVolume)
  {
    v19 = TLLogPlayback(3, v15);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      selfCopy14 = self;
      v95 = 2048;
      v96 = previousAudioVolume;
      v97 = 2114;
      v98 = alertForAudioEnvironmentSetup;
      _os_log_impl(&dword_1D9356000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@: -_restoreAudioEnvironment…: Restoring audio volume to %f before deactivation for %{public}@.", buf, 0x20u);
    }

    v18 = 1;
    *&v20 = previousAudioVolume;
    [(TLAlertQueuePlayerController *)self _applyAudioVolume:alertForAudioEnvironmentSetup forAlert:1 isForMusicPlayback:2 phase:v20];
    v17 = 0;
  }

  else
  {
    v17 = 1;
    v18 = 1;
  }

LABEL_17:
  isAudioSessionActive = self->_isAudioSessionActive;
  v22 = [(TLAlertQueuePlayerController *)self _deactivateAudioSessionIfNeededForStateDescriptor:*&v6];
  v87 = isAudioSessionActive && !self->_isAudioSessionActive;
  if (((v17 | v18) & 1) == 0)
  {
    v24 = TLLogPlayback(v22, v23);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      selfCopy14 = self;
      v95 = 2048;
      v96 = previousAudioVolume;
      v97 = 2114;
      v98 = alertForAudioEnvironmentSetup;
      _os_log_impl(&dword_1D9356000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@: -_restoreAudioEnvironment…: Restoring audio volume to %f after deactivation for %{public}@.", buf, 0x20u);
    }

    *&v25 = previousAudioVolume;
    [(TLAlertQueuePlayerController *)self _applyAudioVolume:alertForAudioEnvironmentSetup forAlert:playbackCopy isForMusicPlayback:0 phase:v25];
  }

  self->_previousAudioVolume = 0.0;
  self->_hasPreviousAudioVolume = 0;
  if (self->_prefersToPlayDuringWombat)
  {
    audioSession = self->_audioSession;
    v27 = *MEMORY[0x1E69B0340];
    v92 = 0;
    v28 = [(AVAudioSession *)audioSession setMXSessionProperty:*&v27 value:MEMORY[0x1E695E110] error:&v92];
    v29 = v92;
    v31 = v29;
    if (!v28 || v29)
    {
      v32 = TLLogPlayback(v29, v30);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v79 = self->_audioSession;
        [v31 tl_nonRedundantDescription];
        v81 = v80 = v10;
        *buf = 138544386;
        selfCopy14 = self;
        v95 = 2114;
        v96 = v27;
        v97 = 2114;
        v98 = v79;
        v99 = 2114;
        *v100 = alertForAudioEnvironmentSetup;
        *&v100[8] = 2114;
        *&v100[10] = v81;
        _os_log_error_impl(&dword_1D9356000, v32, OS_LOG_TYPE_ERROR, "%{public}@: -_restoreAudioEnvironment…: Failed setting MXSessionProperty %{public}@ to YES on audio session %{public}@ for %{public}@ with error: %{public}@.", buf, 0x34u);

        v10 = v80;
      }
    }

    else
    {
      self->_prefersToPlayDuringWombat = 0;
      v32 = TLLogPlayback(0, v30);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v33 = self->_audioSession;
        *buf = 138544130;
        selfCopy14 = self;
        v95 = 2114;
        v96 = v27;
        v97 = 2114;
        v98 = v33;
        v99 = 2114;
        *v100 = alertForAudioEnvironmentSetup;
        _os_log_impl(&dword_1D9356000, v32, OS_LOG_TYPE_DEFAULT, "%{public}@: -_restoreAudioEnvironment…: Successfully set MXSessionProperty %{public}@ to NO on audio session %{public}@ for %{public}@.", buf, 0x2Au);
      }
    }
  }

  if (self->_isIgnoringAccessibilityDisabledVibrationSetting)
  {
    v34 = self->_audioSession;
    v91 = 0;
    v35 = [(AVAudioSession *)v34 setPrefersToVibeWhenVibrationsAreDisabled:0 error:&v91];
    v36 = v91;
    v38 = v36;
    if (!v35 || v36)
    {
      v39 = TLLogPlayback(v36, v37);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        v82 = self->_audioSession;
        tl_nonRedundantDescription = [v38 tl_nonRedundantDescription];
        *buf = 138544130;
        selfCopy14 = self;
        v95 = 2114;
        v96 = *&v82;
        v97 = 2114;
        v98 = alertForAudioEnvironmentSetup;
        v99 = 2114;
        *v100 = tl_nonRedundantDescription;
        _os_log_error_impl(&dword_1D9356000, v39, OS_LOG_TYPE_ERROR, "%{public}@: -_restoreAudioEnvironment…: Failed setting prefersToVibeWhenVibrationsAreDisabled to NO on audio session %{public}@ for %{public}@ with error: %{public}@.", buf, 0x2Au);
      }
    }

    else
    {
      self->_isIgnoringAccessibilityDisabledVibrationSetting = 0;
      v39 = TLLogPlayback(0, v37);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        v40 = self->_audioSession;
        *buf = 138543874;
        selfCopy14 = self;
        v95 = 2114;
        v96 = *&v40;
        v97 = 2114;
        v98 = alertForAudioEnvironmentSetup;
        _os_log_impl(&dword_1D9356000, v39, OS_LOG_TYPE_DEFAULT, "%{public}@: -_restoreAudioEnvironment…: Successfully set prefersToVibeWhenVibrationsAreDisabled to NO on audio session %{public}@ for %{public}@.", buf, 0x20u);
      }
    }
  }

  v88 = alertForAudioEnvironmentSetup;
  v41 = playbackCopy;
  if (self->_isBypassingRingerSwitchPolicy)
  {
    v42 = self->_audioSession;
    v90 = 0;
    v43 = [(AVAudioSession *)v42 setBypassRingerSwitchPolicy:0 error:&v90];
    v44 = v90;
    v46 = v44;
    if (!v43 || v44)
    {
      v47 = TLLogPlayback(v44, v45);
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        v84 = self->_audioSession;
        tl_nonRedundantDescription2 = [v46 tl_nonRedundantDescription];
        *buf = 138544130;
        selfCopy14 = self;
        v95 = 2114;
        v96 = *&v84;
        v97 = 2114;
        v98 = v88;
        v99 = 2114;
        *v100 = tl_nonRedundantDescription2;
        _os_log_error_impl(&dword_1D9356000, v47, OS_LOG_TYPE_ERROR, "%{public}@: -_restoreAudioEnvironment…: Failed to stop bypassing ringer switch policy on audio session %{public}@ for %{public}@ with error: %{public}@.", buf, 0x2Au);
      }
    }

    else
    {
      self->_isBypassingRingerSwitchPolicy = 0;
      v47 = TLLogPlayback(0, v45);
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        v48 = self->_audioSession;
        *buf = 138543874;
        selfCopy14 = self;
        v95 = 2114;
        v96 = *&v48;
        v97 = 2114;
        v98 = v88;
        _os_log_impl(&dword_1D9356000, v47, OS_LOG_TYPE_DEFAULT, "%{public}@: -_restoreAudioEnvironment…: Successfully stopped bypassing ringer switch policy on audio session %{public}@ for %{public}@.", buf, 0x20u);
      }
    }
  }

  v49 = [(NSString *)self->_previousAudioCategory length];
  if (v49)
  {
    v51 = v10;
    *&v52 = COERCE_DOUBLE(self->_previousAudioCategory);
    previousAudioCategoryOptions = self->_previousAudioCategoryOptions;
    v54 = self->_previousAudioMode;
    v55 = self->_audioSession;
    v89 = 0;
    v56 = [(AVAudioSession *)v55 setCategory:v52 mode:v54 options:previousAudioCategoryOptions error:&v89];
    v57 = v89;
    previousAudioCategory = self->_previousAudioCategory;
    self->_previousAudioCategory = 0;

    previousAudioMode = self->_previousAudioMode;
    self->_previousAudioCategoryOptions = 0;
    self->_previousAudioMode = 0;

    v62 = TLLogPlayback(v60, v61);
    v63 = v62;
    if (!v56 || v57)
    {
      if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
      {
        v86 = self->_audioSession;
        tl_nonRedundantDescription3 = [v57 tl_nonRedundantDescription];
        *buf = 138544642;
        selfCopy14 = self;
        v95 = 2114;
        v96 = *&v52;
        v97 = 2114;
        v98 = v54;
        v99 = 1024;
        *v100 = previousAudioCategoryOptions;
        *&v100[4] = 2114;
        *&v100[6] = v86;
        *&v100[14] = 2114;
        *&v100[16] = tl_nonRedundantDescription3;
        _os_log_error_impl(&dword_1D9356000, v63, OS_LOG_TYPE_ERROR, "%{public}@: -_restoreAudioEnvironment…: Failed reverting audio category back to %{public}@ with mode %{public}@ and options 0x%x on audio session %{public}@ with error: %{public}@.", buf, 0x3Au);
      }
    }

    else if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
    {
      v64 = self->_audioSession;
      *buf = 138544386;
      selfCopy14 = self;
      v95 = 2114;
      v96 = *&v52;
      v97 = 2114;
      v98 = v54;
      v99 = 1024;
      *v100 = previousAudioCategoryOptions;
      *&v100[4] = 2114;
      *&v100[6] = v64;
      _os_log_impl(&dword_1D9356000, v63, OS_LOG_TYPE_DEFAULT, "%{public}@: -_restoreAudioEnvironment…: Successfully reverted audio category back to %{public}@ with mode %{public}@ and options 0x%x on audio session %{public}@.", buf, 0x30u);
    }

    v10 = v51;
  }

  if (self->_audioSession && !v41)
  {
    _isPreventingAudioSessionDeactivation = [(TLAlertQueuePlayerController *)self _isPreventingAudioSessionDeactivation];
    if (_isPreventingAudioSessionDeactivation)
    {
      v67 = TLLogPlayback(_isPreventingAudioSessionDeactivation, v66);
      if (os_log_type_enabled(&v67->super, OS_LOG_TYPE_DEFAULT))
      {
        *&v68 = COERCE_DOUBLE("shared");
        v69 = self->_audioSession;
        if (self->_isUsingAuxiliaryAudioSession)
        {
          *&v68 = COERCE_DOUBLE("auxiliary");
        }

        *buf = 138543874;
        selfCopy14 = self;
        v95 = 2082;
        v96 = *&v68;
        v97 = 2114;
        v98 = v69;
        _os_log_impl(&dword_1D9356000, &v67->super, OS_LOG_TYPE_DEFAULT, "%{public}@: -_restoreAudioEnvironment…: Currently preventing audio session deactivation. Hence, not clearing %{public}s audio session %{public}@.", buf, 0x20u);
      }
    }

    else
    {
      isUsingAuxiliaryAudioSession = self->_isUsingAuxiliaryAudioSession;
      v67 = self->_audioSession;
      if (self->_isUsingAuxiliaryAudioSession)
      {
        [(TLAlertQueuePlayerController *)self _resetFlagsForSwitchingAuxiliaryAudioSession];
        [(TLAlertQueuePlayerController *)self _destroyQueuePlayerForStateDescriptor:*&v6];
        self->_isUsingAuxiliaryAudioSession = 0;
      }

      v71 = self->_audioSession;
      self->_audioSession = 0;

      v74 = TLLogPlayback(v72, v73);
      if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
      {
        *&v75 = COERCE_DOUBLE("shared");
        *buf = 138543874;
        selfCopy14 = self;
        if (isUsingAuxiliaryAudioSession)
        {
          *&v75 = COERCE_DOUBLE("auxiliary");
        }

        v95 = 2082;
        v96 = *&v75;
        v97 = 2114;
        v98 = v67;
        _os_log_impl(&dword_1D9356000, v74, OS_LOG_TYPE_DEFAULT, "%{public}@: -_restoreAudioEnvironment…: Cleared %{public}s audio session %{public}@.", buf, 0x20u);
      }
    }
  }

  self->_externalEnvironmentValues = 0;
  if (v87)
  {
    [(TLAlertQueuePlayerController *)self _resetClientPriorityForStateDescriptor:*&v6];
    v76 = v88;
  }

  else
  {
    v77 = TLLogPlayback(v49, v50);
    v76 = v88;
    if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy14 = self;
      _os_log_impl(&dword_1D9356000, v77, OS_LOG_TYPE_DEFAULT, "%{public}@: -_restoreAudioEnvironment…: Skipping reset client priority because the audio session was not just deactivated.", buf, 0xCu);
    }
  }

  [(TLAlertQueuePlayerController *)self _destroyQueuePlayerForStateDescriptor:*&v6];
}

- (void)_resetClientPriorityForStateDescriptor:(id)descriptor
{
  v21 = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  queuePlayer = self->_queuePlayer;
  if (queuePlayer)
  {
    v6 = [(AVQueuePlayer *)queuePlayer _setClientPriority:0];
    v8 = TLLogPlayback(v6, v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = self->_queuePlayer;
      alertForAudioEnvironmentSetup = [descriptorCopy alertForAudioEnvironmentSetup];
      v11 = 138544386;
      selfCopy = self;
      v13 = 2114;
      v14 = descriptorCopy;
      v15 = 2048;
      v16 = 0;
      v17 = 2114;
      v18 = v9;
      v19 = 2114;
      v20 = alertForAudioEnvironmentSetup;
      _os_log_impl(&dword_1D9356000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: -_resetClientPriorityForStateDescriptor:(%{public}@). Reset client priority to %ld on %{public}@ for %{public}@.", &v11, 0x34u);
    }
  }
}

- (void)_resetFlagsForSwitchingAuxiliaryAudioSession
{
  v14 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_not_owner(&self->_lock);
  assertRunningOnAudioQueue = [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  isBypassingRingerSwitchPolicy = self->_isBypassingRingerSwitchPolicy;
  if (isBypassingRingerSwitchPolicy)
  {
    self->_isBypassingRingerSwitchPolicy = 0;
  }

  if (self->_isIgnoringAccessibilityDisabledVibrationSetting)
  {
    p_isAudioSessionActive = &self->_isAudioSessionActive;
    isAudioSessionActive = self->_isAudioSessionActive;
    self->_isIgnoringAccessibilityDisabledVibrationSetting = 0;
    if (!isAudioSessionActive)
    {
      goto LABEL_8;
    }
  }

  else
  {
    p_isAudioSessionActive = &self->_isAudioSessionActive;
    if (!self->_isAudioSessionActive)
    {
      if (!isBypassingRingerSwitchPolicy)
      {
        return;
      }

      goto LABEL_8;
    }
  }

  *p_isAudioSessionActive = 0;
LABEL_8:
  v8 = TLLogPlayback(assertRunningOnAudioQueue, v4);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    audioSession = self->_audioSession;
    v10 = 138543618;
    selfCopy = self;
    v12 = 2114;
    v13 = audioSession;
    _os_log_impl(&dword_1D9356000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: -_resetFlagsForSwitchingAuxiliaryAudioSession. Did reset internal flags related to auxiliary audio session %{public}@.", &v10, 0x16u);
  }
}

- (void)_applyAudioVolume:(float)volume forAlert:(id)alert isForMusicPlayback:(BOOL)playback phase:(int64_t)phase
{
  playbackCopy = playback;
  v58 = *MEMORY[0x1E69E9840];
  v10 = COERCE_DOUBLE(alert);
  [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  v11 = [objc_opt_class() _audioVolumeApplicationPolicyForAlert:*&v10 externalEnvironmentValues:*&self->_externalEnvironmentValues];
  v13 = v11;
  if (v11 > 3)
  {
    v14 = 0;
  }

  else
  {
    v14 = off_1E8579E98[v11];
  }

  if (phase > 2)
  {
    v15 = 0;
  }

  else
  {
    v15 = off_1E8579EB8[phase];
  }

  v16 = TLLogPlayback(v11, v12);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544642;
    selfCopy7 = self;
    v50 = 2048;
    volumeCopy = volume;
    v52 = 2114;
    volumeCopy5 = v10;
    v54 = 1024;
    *v55 = playbackCopy;
    *&v55[4] = 2114;
    *&v55[6] = v15;
    *&v55[14] = 2114;
    *&v55[16] = v14;
    _os_log_impl(&dword_1D9356000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@: -_applyAudioVolume:(%f) forAlert:(%{public}@) isForMusicPlayback:(%{BOOL}d) phase:(%{public}@): Policy for applying audio volume: %{public}@.", buf, 0x3Au);
  }

  if (v13 == 3)
  {
    [MEMORY[0x1E69AED10] sharedAVSystemController];
    *&v24 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    v47 = 0.0;
    v31 = [v24 getActiveCategoryVolume:&v47 andName:0];
    v29 = v31;
    if (v31)
    {
      v17 = v47;
    }

    else
    {
      v17 = 0.0;
    }

    if (v31 && vabds_f32(v47, volume) <= 0.00000011921)
    {
      TLLogPlayback(v31, v32);
      *&v37 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      v17 = 0.0;
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138544130;
        selfCopy7 = self;
        v50 = 2114;
        volumeCopy = *&v24;
        v52 = 2048;
        volumeCopy5 = volume;
        v54 = 2114;
        *v55 = v10;
        _os_log_impl(&dword_1D9356000, v37, OS_LOG_TYPE_DEFAULT, "%{public}@: -_applyAudioVolume…: Existing volume on %{public}@ for active audio category matches requested volume %f for %{public}@.", buf, 0x2Au);
      }

      v29 = 0;
    }

    else
    {
      *&v33 = volume;
      v34 = [v24 setActiveCategoryVolumeTo:v33];
      v35 = v34;
      TLLogPlayback(v34, v36);
      *&v37 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138544386;
        selfCopy7 = self;
        v50 = 2114;
        volumeCopy = *&v24;
        v52 = 2048;
        volumeCopy5 = volume;
        v54 = 2114;
        *v55 = v10;
        *&v55[8] = 1024;
        *&v55[10] = v35;
        _os_log_impl(&dword_1D9356000, v37, OS_LOG_TYPE_DEFAULT, "%{public}@: -_applyAudioVolume…: Adjusted volume on %{public}@ for active audio category to %f for %{public}@; did succeed: %{BOOL}d.", buf, 0x30u);
      }
    }
  }

  else
  {
    if (v13 != 2)
    {
      v17 = 0.0;
      if (v13 != 1 || (queuePlayer = self->_queuePlayer) == 0)
      {
        v29 = 0;
        if (!phase)
        {
          goto LABEL_45;
        }

        goto LABEL_46;
      }

      volume = [(AVQueuePlayer *)queuePlayer volume];
      if (vabds_f32(*&v21, volume) <= 0.00000011921)
      {
        TLLogPlayback(volume, v20);
        *&v24 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v46 = self->_queuePlayer;
          *buf = 138543874;
          selfCopy7 = self;
          v50 = 2114;
          volumeCopy = *&v46;
          v52 = 2048;
          volumeCopy5 = volume;
          v26 = "%{public}@: -_applyAudioVolume…: Existing volume of %{public}@ is already set to %f.";
          v27 = v24;
          v28 = 32;
          goto LABEL_37;
        }
      }

      else
      {
        *&v21 = volume;
        v22 = [(AVQueuePlayer *)self->_queuePlayer setVolume:v21];
        TLLogPlayback(v22, v23);
        *&v24 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v25 = self->_queuePlayer;
          *buf = 138544130;
          selfCopy7 = self;
          v50 = 2114;
          volumeCopy = *&v25;
          v52 = 2048;
          volumeCopy5 = volume;
          v54 = 2114;
          *v55 = v10;
          v26 = "%{public}@: -_applyAudioVolume…: Adjusted volume of %{public}@ to %f for %{public}@.";
          v27 = v24;
          v28 = 42;
LABEL_37:
          _os_log_impl(&dword_1D9356000, v27, OS_LOG_TYPE_DEFAULT, v26, buf, v28);
        }
      }

      v29 = 0;
      goto LABEL_44;
    }

    if (playbackCopy)
    {
      v30 = *MEMORY[0x1E6958068];
    }

    else
    {
      v30 = [objc_opt_class() _audioCategoryForAlert:*&v10 externalEnvironmentValues:*&self->_externalEnvironmentValues];
    }

    v24 = v30;
    [objc_opt_class() _mediaExperienceAudioCategoryForAudioSessionCategory:v30];
    *&v37 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    [MEMORY[0x1E69AED10] sharedAVSystemController];
    v38 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    v47 = 0.0;
    v39 = [*&v38 getVolume:&v47 forCategory:v37];
    v29 = v39;
    if (v39)
    {
      v17 = v47;
    }

    else
    {
      v17 = 0.0;
    }

    if (v39 && vabds_f32(v47, volume) <= 0.00000011921)
    {
      v45 = TLLogPlayback(v39, v40);
      v17 = 0.0;
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138544386;
        selfCopy7 = self;
        v50 = 2114;
        volumeCopy = v38;
        v52 = 2114;
        volumeCopy5 = *&v37;
        v54 = 2048;
        *v55 = volume;
        *&v55[8] = 2114;
        *&v55[10] = v10;
        _os_log_impl(&dword_1D9356000, v45, OS_LOG_TYPE_DEFAULT, "%{public}@: -_applyAudioVolume…: Existing volume on %{public}@ for MediaExperience audio category %{public}@ matches requested volume %f for %{public}@.", buf, 0x34u);
      }

      v29 = 0;
    }

    else
    {
      *&v41 = volume;
      v42 = [*&v38 setVolumeTo:v37 forCategory:v41];
      v43 = v42;
      v45 = TLLogPlayback(v42, v44);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138544898;
        selfCopy7 = self;
        v50 = 2114;
        volumeCopy = v38;
        v52 = 2114;
        volumeCopy5 = *&v37;
        v54 = 2048;
        *v55 = v47;
        *&v55[8] = 2048;
        *&v55[10] = volume;
        *&v55[18] = 2114;
        *&v55[20] = v10;
        v56 = 1024;
        v57 = v43;
        _os_log_impl(&dword_1D9356000, v45, OS_LOG_TYPE_DEFAULT, "%{public}@: -_applyAudioVolume…: Adjusted volume on %{public}@ for MediaExperience audio category %{public}@ from %f to %f for %{public}@; did succeed: %{BOOL}d.", buf, 0x44u);
      }
    }
  }

LABEL_44:
  if (!phase)
  {
LABEL_45:
    self->_previousAudioVolume = v17;
    self->_hasPreviousAudioVolume = v29;
  }

LABEL_46:
}

- (void)_didReceiveAttentionPollingEventOfType:(int64_t)type stateDescriptor:(id)descriptor
{
  v67 = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  os_unfair_lock_assert_not_owner(&self->_lock);
  assertRunningOnAudioQueue = [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  if (type == 1)
  {
    v53 = @"attention detected";
    v9 = 1;
  }

  else
  {
    v9 = 0;
    if (type)
    {
      v53 = 0;
    }

    else
    {
      v53 = @"initialized";
    }
  }

  v10 = TLLogPlayback(assertRunningOnAudioQueue, v8);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    *buf = 138544130;
    selfCopy5 = self;
    v61 = 2114;
    v62 = v53;
    v63 = 2114;
    v64 = v12;
    v65 = 2048;
    v66 = descriptorCopy;
    _os_log_impl(&dword_1D9356000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: -_didReceiveAttentionPollingEventOfType:(%{public}@) stateDescriptor:(<%{public}@: %p>).", buf, 0x2Au);
  }

  self->_isAttentionAwarenessSubsystemFullyInitialized = 1;
  self->_lastAttentionPollingEventType = type;
  v13 = self->_toneAssetForPendingPlayingAlert;
  hasToneAssetForPendingPlayingAlert = self->_hasToneAssetForPendingPlayingAlert;
  toneAssetForPendingPlayingAlert = self->_toneAssetForPendingPlayingAlert;
  self->_toneAssetForPendingPlayingAlert = 0;

  self->_hasToneAssetForPendingPlayingAlert = 0;
  os_unfair_lock_lock(&self->_lock);
  v16 = self->_stateDescriptor;
  os_unfair_lock_unlock(&self->_lock);
  alertForAudioEnvironmentSetup = [(TLAlertQueuePlayerStateDescriptor *)v16 alertForAudioEnvironmentSetup];
  alertForAudioEnvironmentSetup2 = [descriptorCopy alertForAudioEnvironmentSetup];
  v20 = alertForAudioEnvironmentSetup2;
  if (alertForAudioEnvironmentSetup == alertForAudioEnvironmentSetup2)
  {
    if (type != 1)
    {
      if (!type && hasToneAssetForPendingPlayingAlert)
      {
        analytics = [(TLAlertQueuePlayerStateDescriptor *)v16 analytics];
        [analytics setDidAttenuatePlayback:0];
        date = [MEMORY[0x1E695DF00] date];
        [date timeIntervalSinceReferenceDate];
        [analytics setStartTime:?];

        [(TLAlertQueuePlayerController *)self _startPlaybackForStateDescriptor:v16 usingConfirmedPlayableAsset:v13 hasAlreadyDetectedUserAttention:0];
        goto LABEL_11;
      }

      goto LABEL_12;
    }

    v52 = alertForAudioEnvironmentSetup2;
    effectParameters = [(TLAttentionAwarenessEffectCoordinator *)self->_effectCoordinator effectParameters];
    analytics = [(TLAlertQueuePlayerStateDescriptor *)v16 analytics];
    [analytics setDidAttenuatePlayback:1];
    date2 = [MEMORY[0x1E695DF00] date];
    [date2 timeIntervalSinceReferenceDate];
    if (hasToneAssetForPendingPlayingAlert)
    {
      [analytics setStartTime:?];

      [analytics startTime];
      [analytics setAttenuationTime:?];
      [(TLAttentionAwarenessEffectCoordinator *)self->_effectCoordinator setEffectParameters:effectParameters, 1065353216];
      [(TLAlertQueuePlayerController *)self _startPlaybackForStateDescriptor:v16 usingConfirmedPlayableAsset:v13 hasAlreadyDetectedUserAttention:1];
      v20 = v52;
      goto LABEL_11;
    }

    v48 = alertForAudioEnvironmentSetup;
    v49 = v16;
    v50 = v13;
    v51 = v9;
    v47 = analytics;
    [analytics setAttenuationTime:?];

    [(TLAttentionAwarenessEffectCoordinator *)self->_effectCoordinator setEffectParameters:effectParameters effectMixFadeDuration:1065353216, 0.75];
    items = [(AVQueuePlayer *)self->_queuePlayer items];
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v27 = [items countByEnumeratingWithState:&v54 objects:v58 count:16];
    if (!v27)
    {
      goto LABEL_38;
    }

    v28 = v27;
    v29 = *v55;
LABEL_23:
    v30 = 0;
    while (1)
    {
      if (*v55 != v29)
      {
        objc_enumerationMutation(items);
      }

      v31 = *(*(&v54 + 1) + 8 * v30);
      if (![v31 playHapticTracks])
      {
        goto LABEL_36;
      }

      tl_hapticTracks = [v31 tl_hapticTracks];
      attenuatedHapticPlayerItemTrack = [tl_hapticTracks attenuatedHapticPlayerItemTrack];
      hapticPlayerItemTrack = [tl_hapticTracks hapticPlayerItemTrack];
      v35 = hapticPlayerItemTrack;
      if (attenuatedHapticPlayerItemTrack)
      {
        break;
      }

      v45 = [hapticPlayerItemTrack setActiveHapticChannelIndex:1];
      v41 = TLLogPlayback(v45, v46);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138544130;
        selfCopy5 = self;
        v61 = 2114;
        v62 = v53;
        v63 = 2048;
        v64 = 1;
        v65 = 2114;
        v66 = v35;
        v42 = v41;
        v43 = "%{public}@: -_didReceiveAttentionPollingEventOfType:(%{public}@) […]: [hapticPlayerItemTrack setActiveHapticChannelIndex:%ld] on %{public}@.";
        v44 = 42;
LABEL_34:
        _os_log_impl(&dword_1D9356000, v42, OS_LOG_TYPE_DEFAULT, v43, buf, v44);
      }

LABEL_35:

LABEL_36:
      if (v28 == ++v30)
      {
        v28 = [items countByEnumeratingWithState:&v54 objects:v58 count:16];
        if (!v28)
        {
LABEL_38:

          v20 = v52;
          v9 = v51;
          v16 = v49;
          v13 = v50;
          analytics = v47;
          alertForAudioEnvironmentSetup = v48;
          goto LABEL_11;
        }

        goto LABEL_23;
      }
    }

    v36 = [hapticPlayerItemTrack setMutesHaptics:1];
    v38 = TLLogPlayback(v36, v37);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      selfCopy5 = self;
      v61 = 2114;
      v62 = v53;
      v63 = 2114;
      v64 = v35;
      _os_log_impl(&dword_1D9356000, v38, OS_LOG_TYPE_DEFAULT, "%{public}@: -_didReceiveAttentionPollingEventOfType:(%{public}@) […]: [hapticPlayerItemTrack setMutesHaptics:YES] on %{public}@.", buf, 0x20u);
    }

    v39 = [attenuatedHapticPlayerItemTrack setMutesHaptics:0];
    v41 = TLLogPlayback(v39, v40);
    if (!os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_35;
    }

    *buf = 138543874;
    selfCopy5 = self;
    v61 = 2114;
    v62 = v53;
    v63 = 2114;
    v64 = attenuatedHapticPlayerItemTrack;
    v42 = v41;
    v43 = "%{public}@: -_didReceiveAttentionPollingEventOfType:(%{public}@) […]: [attenuatedHapticPlayerItemTrack setMutesHaptics:NO] on %{public}@.";
    v44 = 32;
    goto LABEL_34;
  }

  analytics = TLLogPlayback(alertForAudioEnvironmentSetup2, v19);
  if (os_log_type_enabled(analytics, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    selfCopy5 = self;
    v61 = 2114;
    v62 = v53;
    v63 = 2114;
    v64 = alertForAudioEnvironmentSetup;
    _os_log_impl(&dword_1D9356000, analytics, OS_LOG_TYPE_DEFAULT, "%{public}@: -_didReceiveAttentionPollingEventOfType:(%{public}@) […]: alertForAudioEnvironmentSetup argument doesn't match with activeAlertForAudioEnvironmentSetup: %{public}@. Aborting logic to affect current playback state.", buf, 0x20u);
  }

LABEL_11:

LABEL_12:
  if (v9)
  {
    attentionPollingToken = self->_attentionPollingToken;
    self->_attentionPollingToken = 0;
  }
}

- (void)_createQueuePlayerIfNecessaryForStateDescriptor:(id)descriptor
{
  v49 = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  os_unfair_lock_assert_not_owner(&self->_lock);
  [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  playingAlert = [(AVQueuePlayer *)descriptorCopy playingAlert];
  if (playingAlert)
  {
    v6 = [objc_opt_class() _clientNameForAlert:playingAlert];
    v7 = [objc_opt_class() _clientPriorityForAlert:playingAlert];
    v8 = [objc_opt_class() _shouldEnsureActiveAudioSessionWhenStartingPlaybackForAlert:playingAlert];
    v9 = [objc_opt_class() _shouldUseAuxiliaryAudioSessionForAlert:playingAlert];
    v10 = v9;
    v12 = TLLogPlayback(v9, v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138544642;
      selfCopy6 = self;
      v40 = 2114;
      v41 = descriptorCopy;
      v42 = 2114;
      v43 = v6;
      v44 = 2048;
      *v45 = v7;
      *&v45[8] = 1024;
      v46 = v8;
      v47 = 1024;
      v48 = v10;
      _os_log_impl(&dword_1D9356000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: -_createQueuePlayerIfNecessaryForStateDescriptor:(%{public}@). clientName = %{public}@. clientPriority = %ld. shouldEnsureActiveAudioSessionWhenStartingPlayback = %{BOOL}d. shouldUseAuxiliaryAudioSession = %{BOOL}d.", buf, 0x36u);
    }

    queuePlayer = self->_queuePlayer;
    if (!queuePlayer)
    {
      goto LABEL_21;
    }

    v36 = v8;
    v37 = v7;
    _clientName = [(AVQueuePlayer *)queuePlayer _clientName];
    _clientPriority = [(AVQueuePlayer *)self->_queuePlayer _clientPriority];
    _ensuresActiveAudioSessionWhenStartingPlayback = [(AVQueuePlayer *)self->_queuePlayer _ensuresActiveAudioSessionWhenStartingPlayback];
    audioSession = [(AVQueuePlayer *)self->_queuePlayer audioSession];

    v20 = TLLogPlayback(v18, v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138544386;
      selfCopy6 = self;
      v40 = 2114;
      v41 = _clientName;
      v42 = 2048;
      v43 = _clientPriority;
      v44 = 1024;
      *v45 = _ensuresActiveAudioSessionWhenStartingPlayback;
      *&v45[4] = 1024;
      *&v45[6] = audioSession != 0;
      _os_log_impl(&dword_1D9356000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@: -_createQueuePlayerIfNecessary…: Existing player is configured with clientName = %{public}@. clientPriority = %ld. ensuresActiveAudioSessionWhenStartingPlayback = %{BOOL}d. isUsingAuxiliaryAudioSession = %{BOOL}d.", buf, 0x2Cu);
    }

    v21 = [(AVQueuePlayer *)_clientName isEqualToString:v6];
    if (!v21 || _clientPriority != v37)
    {
      v23 = TLLogPlayback(v21, v22);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v26 = self->_queuePlayer;
        *buf = 138543618;
        selfCopy6 = self;
        v40 = 2114;
        v41 = v26;
        _os_log_impl(&dword_1D9356000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@: -_createQueuePlayerIfNecessary…: Client name or priority don't match those of %{public}@. Destroying it.", buf, 0x16u);
      }

      LOBYTE(v8) = v36;
      goto LABEL_19;
    }

    LOBYTE(v8) = v36;
    if (v36 == _ensuresActiveAudioSessionWhenStartingPlayback)
    {
      if (v10 == (audioSession != 0))
      {
        goto LABEL_20;
      }

      v23 = TLLogPlayback(v21, v22);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v27 = self->_queuePlayer;
        *buf = 138543618;
        selfCopy6 = self;
        v40 = 2114;
        v41 = v27;
        v25 = "%{public}@: -_createQueuePlayerIfNecessary…: Policy for picking between auxiliary and shared audio session doesn't match that of %{public}@. Destroying it.";
        goto LABEL_18;
      }
    }

    else
    {
      v23 = TLLogPlayback(v21, v22);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = self->_queuePlayer;
        *buf = 138543618;
        selfCopy6 = self;
        v40 = 2114;
        v41 = v24;
        v25 = "%{public}@: -_createQueuePlayerIfNecessary…: Policy for ensuring active audio session when starting playback doesn't match that of %{public}@. Destroying it.";
LABEL_18:
        _os_log_impl(&dword_1D9356000, v23, OS_LOG_TYPE_DEFAULT, v25, buf, 0x16u);
      }
    }

LABEL_19:

    [(TLAlertQueuePlayerController *)self _destroyQueuePlayerForStateDescriptor:descriptorCopy];
LABEL_20:

    v7 = v37;
    if (self->_queuePlayer)
    {
LABEL_28:

      goto LABEL_29;
    }

LABEL_21:
    v28 = objc_alloc(MEMORY[0x1E6988100]);
    _underlyingSerialQueue = [(TLAudioQueue *)self->_audioQueue _underlyingSerialQueue];
    v30 = [v28 initWithDispatchQueue:_underlyingSerialQueue];
    v31 = self->_queuePlayer;
    self->_queuePlayer = v30;

    [(AVQueuePlayer *)self->_queuePlayer setAllowsExternalPlayback:0];
    [(AVQueuePlayer *)self->_queuePlayer _setClientPriority:v7];
    v32 = [(AVQueuePlayer *)self->_queuePlayer _setClientName:v6];
    if ((v8 & 1) == 0)
    {
      v32 = [(AVQueuePlayer *)self->_queuePlayer _setEnsuresActiveAudioSessionWhenStartingPlayback:0];
    }

    if (self->_isUsingAuxiliaryAudioSession)
    {
      v32 = [(AVQueuePlayer *)self->_queuePlayer setAudioSession:self->_audioSession];
    }

    v34 = TLLogPlayback(v32, v33);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = self->_queuePlayer;
      *buf = 138543618;
      selfCopy6 = self;
      v40 = 2114;
      v41 = v35;
      _os_log_impl(&dword_1D9356000, v34, OS_LOG_TYPE_DEFAULT, "%{public}@: -_createQueuePlayerIfNecessary…: Created queue player: %{public}@.", buf, 0x16u);
    }

    goto LABEL_28;
  }

LABEL_29:
}

- (void)_destroyQueuePlayerForStateDescriptor:(id)descriptor
{
  v20 = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  os_unfair_lock_assert_not_owner(&self->_lock);
  assertRunningOnAudioQueue = [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  if (self->_queuePlayer)
  {
    v7 = TLLogPlayback(assertRunningOnAudioQueue, v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      queuePlayer = self->_queuePlayer;
      v14 = 138543874;
      selfCopy2 = self;
      v16 = 2114;
      v17 = descriptorCopy;
      v18 = 2114;
      v19 = queuePlayer;
      _os_log_impl(&dword_1D9356000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: -_destroyQueuePlayerForStateDescriptor:(%{public}@). _queuePlayer = %{public}@.", &v14, 0x20u);
    }

    if (!self->_isStoppingPlayingAlert)
    {
      v9 = [(TLAlertQueuePlayerController *)self _stopPlaybackForStateDescriptor:descriptorCopy];
    }

    v11 = TLLogPlayback(v9, v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = self->_queuePlayer;
      v14 = 138543618;
      selfCopy2 = self;
      v16 = 2114;
      v17 = v12;
      _os_log_impl(&dword_1D9356000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: -_destroyQueuePlayer…: Tossing queue player: %{public}@.", &v14, 0x16u);
    }

    v13 = self->_queuePlayer;
    self->_queuePlayer = 0;
  }
}

- (void)_startObservingQueuePlayer
{
  v11 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_not_owner(&self->_lock);
  assertRunningOnAudioQueue = [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  if (!self->_isObservingQueuePlayer && self->_queuePlayer)
  {
    v5 = TLLogPlayback(assertRunningOnAudioQueue, v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      queuePlayer = self->_queuePlayer;
      v7 = 138543618;
      selfCopy = self;
      v9 = 2114;
      v10 = queuePlayer;
      _os_log_impl(&dword_1D9356000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: -_startObservingQueuePlayer: %{public}@.", &v7, 0x16u);
    }

    [(AVQueuePlayer *)self->_queuePlayer addObserver:self forKeyPath:@"currentItem" options:2 context:_TLAlertQueuePlayerCurrentItemObservationContext];
    [(AVQueuePlayer *)self->_queuePlayer addObserver:self forKeyPath:@"currentItem.status" options:1 context:_TLAlertQueuePlayerCurrentItemStatusObservationContext];
    self->_isObservingQueuePlayer = 1;
  }
}

- (void)_stopObservingQueuePlayer
{
  v11 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_not_owner(&self->_lock);
  assertRunningOnAudioQueue = [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  if (self->_isObservingQueuePlayer)
  {
    v5 = TLLogPlayback(assertRunningOnAudioQueue, v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      queuePlayer = self->_queuePlayer;
      v7 = 138543618;
      selfCopy = self;
      v9 = 2114;
      v10 = queuePlayer;
      _os_log_impl(&dword_1D9356000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: -_stopObservingQueuePlayer: %{public}@.", &v7, 0x16u);
    }

    [(AVQueuePlayer *)self->_queuePlayer removeObserver:self forKeyPath:@"currentItem" context:_TLAlertQueuePlayerCurrentItemObservationContext];
    [(AVQueuePlayer *)self->_queuePlayer removeObserver:self forKeyPath:@"currentItem.status" context:_TLAlertQueuePlayerCurrentItemStatusObservationContext];
    self->_isObservingQueuePlayer = 0;
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (_TLAlertQueuePlayerCurrentItemObservationContext == context && [pathCopy isEqualToString:@"currentItem"])
  {
    v13 = [changeCopy objectForKey:*MEMORY[0x1E696A500]];
    audioQueue = self->_audioQueue;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __79__TLAlertQueuePlayerController_observeValueForKeyPath_ofObject_change_context___block_invoke;
    v24[3] = &unk_1E8579038;
    v25 = v13;
    v26 = objectCopy;
    selfCopy = self;
    v15 = v13;
    [(TLAudioQueue *)audioQueue performTaskWithBlock:v24];

    v16 = v25;
  }

  else
  {
    if (_TLAlertQueuePlayerCurrentItemStatusObservationContext != context || ![pathCopy isEqualToString:@"currentItem.status"])
    {
      v19.receiver = self;
      v19.super_class = TLAlertQueuePlayerController;
      [(TLAlertQueuePlayerController *)&v19 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
      goto LABEL_9;
    }

    v17 = [changeCopy objectForKey:*MEMORY[0x1E696A4F0]];
    v18 = self->_audioQueue;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __79__TLAlertQueuePlayerController_observeValueForKeyPath_ofObject_change_context___block_invoke_2;
    v20[3] = &unk_1E8579038;
    v21 = v17;
    v22 = objectCopy;
    selfCopy2 = self;
    v15 = v17;
    [(TLAudioQueue *)v18 performTaskWithBlock:v20];

    v16 = v21;
  }

LABEL_9:
}

void __79__TLAlertQueuePlayerController_observeValueForKeyPath_ofObject_change_context___block_invoke(void *a1, uint64_t a2)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = a1[4];
      v4 = a1[5];
      v5 = a1[6];
      v6 = v3;
      [v5 _queuePlayer:v4 currentItemWasUpdatedFromValue:v6];
    }
  }
}

uint64_t __79__TLAlertQueuePlayerController_observeValueForKeyPath_ofObject_change_context___block_invoke_2(uint64_t a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    objc_opt_class();
    result = objc_opt_isKindOfClass();
    if (result)
    {
      v3 = [*(a1 + 32) integerValue];
      v5 = *(a1 + 40);
      v4 = *(a1 + 48);

      return [v4 _queuePlayer:v5 currentItemStatusWasUpdatedToValue:v3];
    }
  }

  return result;
}

- (void)_queuePlayer:(id)player currentItemWasUpdatedFromValue:(id)value
{
  v49 = *MEMORY[0x1E69E9840];
  playerCopy = player;
  valueCopy = value;
  os_unfair_lock_assert_not_owner(&self->_lock);
  assertRunningOnAudioQueue = [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  if (self->_queuePlayer == playerCopy)
  {
    v10 = TLLogPlayback(assertRunningOnAudioQueue, v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      *&buf[4] = self;
      *&buf[12] = 2114;
      *&buf[14] = valueCopy;
      *&buf[22] = 2114;
      v47 = playerCopy;
      _os_log_impl(&dword_1D9356000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: currentItemWasUpdatedFromValue:(%{public}@) for %{public}@.", buf, 0x20u);
    }

    v13 = TLLogPlayback(v11, v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      *&buf[4] = self;
      *&buf[12] = 2114;
      *&buf[14] = valueCopy;
      _os_log_impl(&dword_1D9356000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: currentItemWasUpdated…: Calling [removedItem seekToTime:kCMTimeZero completionHandler:NULL] on %{public}@.", buf, 0x16u);
    }

    v42 = 0;
    v43 = &v42;
    v44 = 0x2020000000;
    v14 = getkCMTimeZeroSymbolLoc_ptr;
    v45 = getkCMTimeZeroSymbolLoc_ptr;
    if (!getkCMTimeZeroSymbolLoc_ptr)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getkCMTimeZeroSymbolLoc_block_invoke;
      v47 = &unk_1E8578D30;
      v48 = &v42;
      v15 = CoreMediaLibrary();
      v16 = dlsym(v15, "kCMTimeZero");
      *(v48[1] + 24) = v16;
      getkCMTimeZeroSymbolLoc_ptr = *(v48[1] + 24);
      v14 = v43[3];
    }

    _Block_object_dispose(&v42, 8);
    if (!v14)
    {
      __73__TLToneManager__ensureTCCAccessPreflightAndCheckForFileExistenceAtPath___block_invoke_cold_2();
      __break(1u);
    }

    v17 = *v14;
    *&buf[16] = *(v14 + 16);
    *buf = v17;
    [valueCopy seekToTime:buf completionHandler:{0, v42}];
    items = [(AVQueuePlayer *)self->_queuePlayer items];
    v19 = [items count];

    os_unfair_lock_lock(&self->_lock);
    v20 = self->_stateDescriptor;
    playingAlert = [(TLAlertQueuePlayerStateDescriptor *)v20 playingAlert];
    configuration = [playingAlert configuration];
    shouldRepeat = [configuration shouldRepeat];

    if ((v19 != 0) | shouldRepeat & 1)
    {
      os_unfair_lock_unlock(&self->_lock);
      if (v19)
      {
        [(TLAlertQueuePlayerController *)self _stopObservingQueuePlayer];
        status = [(AVQueuePlayer *)self->_queuePlayer status];
        v27 = status == 2;
        v29 = TLLogPlayback(status, v28);
        v30 = v29;
        if (v27)
        {
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            [TLAlertQueuePlayerController _queuePlayer:currentItemWasUpdatedFromValue:];
          }
        }

        else
        {
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            *&buf[4] = self;
            *&buf[12] = 2114;
            *&buf[14] = valueCopy;
            _os_log_impl(&dword_1D9356000, v30, OS_LOG_TYPE_DEFAULT, "%{public}@: currentItemWasUpdated…: Re-inserting that same item again: %{public}@.", buf, 0x16u);
          }

          [(AVQueuePlayer *)self->_queuePlayer insertItem:valueCopy afterItem:0];
        }

        [(TLAlertQueuePlayerController *)self _startObservingQueuePlayer];
LABEL_33:

        goto LABEL_34;
      }
    }

    else
    {
      stateDescriptorForCompletedPlayback = [(TLAlertQueuePlayerStateDescriptor *)self->_stateDescriptor stateDescriptorForCompletedPlayback];
      stateDescriptor = self->_stateDescriptor;
      self->_stateDescriptor = stateDescriptorForCompletedPlayback;

      v35 = TLLogPlayback(v33, v34);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        v36 = [(TLAlertQueuePlayerStateDescriptor *)self->_stateDescriptor debugDescription];
        *buf = 138543618;
        *&buf[4] = self;
        *&buf[12] = 2114;
        *&buf[14] = v36;
        _os_log_impl(&dword_1D9356000, v35, OS_LOG_TYPE_DEFAULT, "%{public}@: currentItemWasUpdated…: Updated _stateDescriptor to %{public}@.", buf, 0x16u);
      }

      os_unfair_lock_unlock(&self->_lock);
    }

    if (shouldRepeat)
    {
      isWaitingToCompleteReloadPlaybackRequest = self->_isWaitingToCompleteReloadPlaybackRequest;
      v38 = TLLogPlayback(v24, v25);
      v39 = os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT);
      if (isWaitingToCompleteReloadPlaybackRequest)
      {
        if (v39)
        {
          *buf = 138543362;
          *&buf[4] = self;
          _os_log_impl(&dword_1D9356000, v38, OS_LOG_TYPE_DEFAULT, "%{public}@: currentItemWasUpdated…: The queue was exhausted prematurely, but we are already waiting for a fallback tone to begin playing. Doing nothing.", buf, 0xCu);
        }
      }

      else
      {
        if (v39)
        {
          *buf = 138543362;
          *&buf[4] = self;
          _os_log_impl(&dword_1D9356000, v38, OS_LOG_TYPE_DEFAULT, "%{public}@: currentItemWasUpdated…: The queue was exhausted prematurely; this can happen if the ringtone asset contains corrupted audio data. Start over with default tone.", buf, 0xCu);
        }

        [(TLAlertQueuePlayerController *)self _stopObservingQueuePlayer];
        v41 = [(TLAlertQueuePlayerController *)self _fallbackToneIdentifierForStateDescriptor:v20];
        [(TLAlertQueuePlayerController *)self _reloadPlaybackForStateDescriptor:v20 withToneIdentifier:v41];
      }
    }

    else
    {
      v40 = TLLogPlayback(v24, v25);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        *&buf[4] = self;
        _os_log_impl(&dword_1D9356000, v40, OS_LOG_TYPE_DEFAULT, "%{public}@: currentItemWasUpdated…: Playback of non repeating tone completed by playing to end.", buf, 0xCu);
      }

      [(TLAlertQueuePlayerController *)self _stopPlaybackForStateDescriptor:v20];
      [(TLAlertQueuePlayerStateDescriptor *)v20 invokePlayingAlertCompletionHandlerWithPlaybackCompletionType:0 error:0];
    }

    goto LABEL_33;
  }

LABEL_34:
}

- (void)_queuePlayer:(id)player currentItemStatusWasUpdatedToValue:(int64_t)value
{
  v27 = *MEMORY[0x1E69E9840];
  playerCopy = player;
  os_unfair_lock_assert_not_owner(&self->_lock);
  [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  if (value == 2 && self->_queuePlayer == playerCopy)
  {
    currentItem = [(AVQueuePlayer *)playerCopy currentItem];
    error = [currentItem error];
    code = [error code];

    v12 = TLLogPlayback(v10, v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v19 = 138544130;
      selfCopy2 = self;
      v21 = 2048;
      v22 = 2;
      v23 = 2114;
      v24 = playerCopy;
      v25 = 2048;
      v26 = code;
      _os_log_error_impl(&dword_1D9356000, v12, OS_LOG_TYPE_ERROR, "%{public}@: currentItemStatusWasUpdatedToValue:(%ld) for %{public}@. itemStatus == AVPlayerItemStatusFailed. currentItemErrorCode: %ld.", &v19, 0x2Au);
    }

    if (code != -11819)
    {
      isWaitingToCompleteReloadPlaybackRequest = self->_isWaitingToCompleteReloadPlaybackRequest;
      v16 = TLLogPlayback(v13, v14);
      v17 = v16;
      if (isWaitingToCompleteReloadPlaybackRequest)
      {
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v19 = 138543874;
          selfCopy2 = self;
          v21 = 2048;
          v22 = 2;
          v23 = 2114;
          v24 = playerCopy;
          _os_log_impl(&dword_1D9356000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@: currentItemStatusWasUpdatedToValue:(%ld) for %{public}@. Tone could not be prepared for playback, but we are already waiting for a fallback tone to begin playing. Doing nothing.", &v19, 0x20u);
        }
      }

      else
      {
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          [TLAlertQueuePlayerController _queuePlayer:currentItemStatusWasUpdatedToValue:];
        }

        [(TLAlertQueuePlayerController *)self _stopObservingQueuePlayer];
        os_unfair_lock_lock(&self->_lock);
        v18 = self->_stateDescriptor;
        os_unfair_lock_unlock(&self->_lock);
        v17 = [(TLAlertQueuePlayerController *)self _fallbackToneIdentifierForStateDescriptor:v18];
        [(TLAlertQueuePlayerController *)self _reloadPlaybackForStateDescriptor:v18 withToneIdentifier:v17];
      }
    }
  }
}

+ (id)_clientNameForAlert:(id)alert
{
  alertCopy = alert;
  configuration = [alertCopy configuration];
  type = [alertCopy type];

  topic = [configuration topic];
  if (([configuration isForPreview] & 1) != 0 || type == 1)
  {
    v7 = @"Phone";
  }

  else if (type == 16 && ([topic isEqualToString:@"TLAlertTopicSystemNotificationFindMyDevice"] & 1) != 0)
  {
    v7 = @"LocatePhone";
  }

  else
  {
    v7 = @"ToneLibrary";
  }

  return v7;
}

+ (int64_t)_clientPriorityForAlert:(id)alert
{
  alertCopy = alert;
  configuration = [alertCopy configuration];
  if ([configuration isForPreview])
  {
    v5 = 0;
  }

  else if ([alertCopy type] == 1)
  {
    v5 = 10;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)_shouldEnsureActiveAudioSessionWhenStartingPlaybackForAlert:(id)alert
{
  alertCopy = alert;
  configuration = [alertCopy configuration];
  if ([configuration isForPreview])
  {
    LOBYTE(v6) = 1;
  }

  else
  {
    v6 = [self _shouldHandleAudioSessionActivationForAlert:alertCopy] ^ 1;
  }

  return v6;
}

+ (id)_audioCategoryForAlert:(id)alert externalEnvironmentValues:(id)values
{
  var0 = values.var0;
  alertCopy = alert;
  configuration = [alertCopy configuration];
  type = [alertCopy type];

  topic = [configuration topic];
  audioCategory = [configuration audioCategory];
  if (![audioCategory length])
  {
    if ([configuration isForPreview])
    {
      v10 = MEMORY[0x1E6958088];
      if (type == 13)
      {
        v10 = MEMORY[0x1E6958030];
      }

LABEL_31:
      v19 = *v10;

      audioCategory = v19;
      goto LABEL_32;
    }

    if (type > 17)
    {
      if (type == 18)
      {
        if ([configuration shouldForcePlayingAtUserSelectedAudioVolume])
        {
          v11 = MEMORY[0x1E6958030];
        }

        else
        {
          if (([topic isEqualToString:@"TLAlertTopicEmergencyNonInterrupting"] & 1) == 0)
          {
            shouldIgnoreRingerSwitch = [configuration shouldIgnoreRingerSwitch];
            v11 = MEMORY[0x1E6958048];
            v12 = MEMORY[0x1E6958040];
            v13 = shouldIgnoreRingerSwitch == 0;
LABEL_26:
            if (!v13)
            {
              v11 = v12;
            }

            goto LABEL_28;
          }

          v11 = MEMORY[0x1E6958068];
        }

LABEL_28:
        v18 = *v11;

        audioCategory = v18;
        goto LABEL_29;
      }

      if (type == 22)
      {
LABEL_22:
        v11 = MEMORY[0x1E6958050];
        goto LABEL_28;
      }

      if (type != 28)
      {
        goto LABEL_29;
      }

LABEL_18:
      v11 = MEMORY[0x1E6958080];
      goto LABEL_28;
    }

    if (type != 1)
    {
      if (type != 16)
      {
        if (type != 17 || ![topic isEqualToString:@"TLAlertTopicAppNotificationCriticalAlert"])
        {
          goto LABEL_29;
        }

        v11 = MEMORY[0x1E6958040];
        v12 = MEMORY[0x1E6958068];
        v13 = !var0;
        goto LABEL_26;
      }

      if (([topic isEqualToString:@"TLAlertTopicSystemNotificationFindMyDevice"] & 1) == 0)
      {
LABEL_29:
        if ([audioCategory length])
        {
          goto LABEL_32;
        }

        v10 = MEMORY[0x1E6958030];
        goto LABEL_31;
      }

      goto LABEL_22;
    }

    if ([topic isEqualToString:@"TLAlertTopicIncomingCallAppNotification"])
    {
      goto LABEL_18;
    }

    processInfo = [MEMORY[0x1E696AE30] processInfo];
    processName = [processInfo processName];
    v16 = [processName isEqualToString:@"tlutil"];

    if (v16)
    {
      goto LABEL_18;
    }
  }

LABEL_32:

  return audioCategory;
}

+ (unint64_t)_audioCategoryOptionsForAlert:(id)alert externalEnvironmentValues:(id)values
{
  v4 = *&values.var0;
  alertCopy = alert;
  type = [alertCopy type];
  configuration = [alertCopy configuration];

  topic = [configuration topic];

  if (type == 18)
  {
    v9 = [topic isEqualToString:@"TLAlertTopicEmergencyNonInterrupting"];
  }

  else if (type == 17)
  {
    v9 = [topic isEqualToString:@"TLAlertTopicAppNotificationCriticalAlert"] & v4;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)_audioModeForAlert:(id)alert audioCategory:(id)category
{
  alertCopy = alert;
  if ([category isEqualToString:*MEMORY[0x1E6958040]] && (objc_msgSend(alertCopy, "configuration"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "_hasCustomAudioVolume"), v6, v7))
  {
    v8 = *MEMORY[0x1E6958138];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)_mediaExperienceAudioCategoryForAudioSessionCategory:(id)category
{
  categoryCopy = category;
  if ([categoryCopy isEqualToString:*MEMORY[0x1E6958030]])
  {
    v4 = @"Alarm";
  }

  else if ([categoryCopy isEqualToString:*MEMORY[0x1E6958080]])
  {
    v4 = @"Ringtone";
  }

  else if ([categoryCopy isEqualToString:*MEMORY[0x1E6958088]])
  {
    v4 = @"RingtonePreview";
  }

  else if ([categoryCopy isEqualToString:*MEMORY[0x1E6958050]])
  {
    v4 = @"FindMyPhone";
  }

  else if ([categoryCopy isEqualToString:*MEMORY[0x1E6958040]])
  {
    v4 = @"EmergencyAlert";
  }

  else if ([categoryCopy isEqualToString:*MEMORY[0x1E6958048]])
  {
    v4 = @"EmergencyAlert_Muteable";
  }

  else if ([categoryCopy isEqualToString:*MEMORY[0x1E6958068]])
  {
    v4 = @"MediaPlayback";
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (float)_audioVolumeForAlert:(id)alert audioCategory:(id)category
{
  v25 = *MEMORY[0x1E69E9840];
  alertCopy = alert;
  categoryCopy = category;
  [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  configuration = [alertCopy configuration];
  [configuration audioVolume];
  v10 = v9;
  if (([configuration _hasCustomAudioVolume] & 1) == 0 && objc_msgSend(categoryCopy, "isEqualToString:", *MEMORY[0x1E6958030]))
  {
    v18 = 1.0;
    mEMORY[0x1E69AED10] = [MEMORY[0x1E69AED10] sharedAVSystemController];
    v12 = [mEMORY[0x1E69AED10] getVolume:&v18 forCategory:@"Ringtone"];
    v13 = v12;
    v15 = TLLogPlayback(v12, v14);
    v16 = v15;
    if (v13)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        selfCopy2 = self;
        v21 = 2114;
        v22 = alertCopy;
        v23 = 2048;
        v24 = v18;
        _os_log_impl(&dword_1D9356000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@: -_audioVolumeFor…: Did retrieve ringer volume successfully for fallback volume value for alert %{public}@: %f.", buf, 0x20u);
      }

      v10 = v18;
    }

    else
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        selfCopy2 = self;
        v21 = 2114;
        v22 = alertCopy;
        v23 = 2048;
        v24 = v10;
        _os_log_error_impl(&dword_1D9356000, v16, OS_LOG_TYPE_ERROR, "%{public}@: -_audioVolumeFor…: Failed to retrieve ringer volume for fallback volume value for alert %{public}@. Using default value instead: %f.", buf, 0x20u);
      }
    }
  }

  return v10;
}

+ (BOOL)_shouldBypassRingerSwitchPolicyForAlert:(id)alert
{
  alertCopy = alert;
  configuration = [alertCopy configuration];
  if (([configuration isForPreview] & 1) != 0 || objc_msgSend(alertCopy, "type") == 18 && !objc_msgSend(configuration, "shouldForcePlayingAtUserSelectedAudioVolume"))
  {
    shouldIgnoreRingerSwitch = 0;
  }

  else
  {
    shouldIgnoreRingerSwitch = [configuration shouldIgnoreRingerSwitch];
  }

  return shouldIgnoreRingerSwitch;
}

+ (BOOL)_shouldHandleAudioSessionActivationForAlert:(id)alert
{
  alertCopy = alert;
  configuration = [alertCopy configuration];
  type = [alertCopy type];
  configuration2 = [alertCopy configuration];

  topic = [configuration2 topic];

  if (type != 1 || ([configuration isForPreview] & 1) != 0 || (objc_msgSend(topic, "isEqualToString:", @"TLAlertTopicIncomingCallAppNotification") & 1) != 0)
  {
    v8 = 1;
  }

  else
  {
    processInfo = [MEMORY[0x1E696AE30] processInfo];
    processName = [processInfo processName];
    v8 = [processName isEqualToString:@"tlutil"];
  }

  return v8 & 1;
}

- (void)_activateAudioSessionIfNeededForStateDescriptor:(id)descriptor
{
  v25 = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  os_unfair_lock_assert_not_owner(&self->_lock);
  [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  alertForAudioEnvironmentSetup = [descriptorCopy alertForAudioEnvironmentSetup];
  if (!self->_isAudioSessionActive && [objc_opt_class() _shouldHandleAudioSessionActivationForAlert:alertForAudioEnvironmentSetup])
  {
    audioSession = self->_audioSession;
    v16 = 0;
    v7 = [(AVAudioSession *)audioSession setActive:1 error:&v16];
    v8 = v16;
    v10 = v8;
    if (!v7 || v8)
    {
      v13 = TLLogPlayback(v8, v9);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = self->_audioSession;
        tl_nonRedundantDescription = [v10 tl_nonRedundantDescription];
        *buf = 138544130;
        selfCopy2 = self;
        v19 = 2114;
        v20 = v14;
        v21 = 2114;
        v22 = alertForAudioEnvironmentSetup;
        v23 = 2114;
        v24 = tl_nonRedundantDescription;
        _os_log_error_impl(&dword_1D9356000, v13, OS_LOG_TYPE_ERROR, "%{public}@: -_activateAudioSession…: Failed activating audio session %{public}@ for %{public}@ with error: %{public}@.", buf, 0x2Au);
      }
    }

    else
    {
      self->_isAudioSessionActive = 1;
      v11 = TLLogPlayback(0, v9);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = self->_audioSession;
        *buf = 138543874;
        selfCopy2 = self;
        v19 = 2114;
        v20 = v12;
        v21 = 2114;
        v22 = alertForAudioEnvironmentSetup;
        _os_log_impl(&dword_1D9356000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: -_activateAudioSession…: Successfully activated audio session %{public}@ for %{public}@.", buf, 0x20u);
      }

      [(TLAlertQueuePlayerController *)self _startObservingAudioSessionInterruptionNotificationsForStateDescriptor:descriptorCopy];
    }
  }
}

- (void)_deactivateAudioSessionIfNeededForStateDescriptor:(id)descriptor
{
  v38 = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  os_unfair_lock_assert_not_owner(&self->_lock);
  assertRunningOnAudioQueue = [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  v7 = TLLogPlayback(assertRunningOnAudioQueue, v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    isAudioSessionActive = self->_isAudioSessionActive;
    *buf = 138543874;
    selfCopy6 = self;
    v32 = 2114;
    v33 = descriptorCopy;
    v34 = 1024;
    LODWORD(v35) = isAudioSessionActive;
    _os_log_impl(&dword_1D9356000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: -_deactivateAudioSessionIfNeededForStateDescriptor:(%{public}@): _isAudioSessionActive = %{BOOL}d.", buf, 0x1Cu);
  }

  alertForAudioEnvironmentSetup = [(AVAudioSession *)descriptorCopy alertForAudioEnvironmentSetup];
  if (self->_isAudioSessionActive)
  {
    _isPreventingAudioSessionDeactivation = [(TLAlertQueuePlayerController *)self _isPreventingAudioSessionDeactivation];
    if (_isPreventingAudioSessionDeactivation)
    {
      v12 = TLLogPlayback(_isPreventingAudioSessionDeactivation, v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        selfCopy6 = self;
        _os_log_impl(&dword_1D9356000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: -_deactivateAudioSession…: Skipping audio session deactivation because it is currently being prevented.", buf, 0xCu);
      }
    }

    else
    {
      v13 = [(TLAlertQueuePlayerController *)self _stopObservingAudioSessionInterruptionNotificationsForStateDescriptor:descriptorCopy];
      v15 = TLLogPlayback(v13, v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        audioSession = self->_audioSession;
        *buf = 138543874;
        selfCopy6 = self;
        v32 = 2114;
        v33 = audioSession;
        v34 = 2114;
        v35 = alertForAudioEnvironmentSetup;
        _os_log_impl(&dword_1D9356000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: -_deactivateAudioSession…: About to deactivate audio session %{public}@ for %{public}@.", buf, 0x20u);
      }

      v17 = self->_audioSession;
      v29 = 0;
      v18 = [(AVAudioSession *)v17 setActive:0 withOptions:1 error:&v29];
      v19 = v29;
      v12 = v19;
      if (!v18 || v19)
      {
        code = [v19 code];
        if (code != 560030580)
        {
          v25 = TLLogPlayback(code, v24);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            v27 = self->_audioSession;
            tl_nonRedundantDescription = [v12 tl_nonRedundantDescription];
            *buf = 138544130;
            selfCopy6 = self;
            v32 = 2114;
            v33 = v27;
            v34 = 2114;
            v35 = alertForAudioEnvironmentSetup;
            v36 = 2114;
            v37 = tl_nonRedundantDescription;
            _os_log_error_impl(&dword_1D9356000, v25, OS_LOG_TYPE_ERROR, "%{public}@: -_deactivateAudioSession…: Failed to deactivate audio session %{public}@ for %{public}@ with error: %{public}@.", buf, 0x2Au);
          }

          [(TLAlertQueuePlayerController *)self _startObservingAudioSessionInterruptionNotificationsForStateDescriptor:descriptorCopy];
          goto LABEL_20;
        }

        self->_isAudioSessionActive = 0;
        v21 = TLLogPlayback(560030580, v24);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v26 = self->_audioSession;
          *buf = 138543874;
          selfCopy6 = self;
          v32 = 2114;
          v33 = v26;
          v34 = 2114;
          v35 = alertForAudioEnvironmentSetup;
          _os_log_error_impl(&dword_1D9356000, v21, OS_LOG_TYPE_ERROR, "%{public}@: -_deactivateAudioSession…: Failed to deactivate audio session %{public}@ for %{public}@ with error code AVAudioSessionErrorCodeIsBusy. Treating that as a successful audio session deactivation.", buf, 0x20u);
        }
      }

      else
      {
        self->_isAudioSessionActive = 0;
        v21 = TLLogPlayback(0, v20);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = self->_audioSession;
          *buf = 138543874;
          selfCopy6 = self;
          v32 = 2114;
          v33 = v22;
          v34 = 2114;
          v35 = alertForAudioEnvironmentSetup;
          _os_log_impl(&dword_1D9356000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@: -_deactivateAudioSession…: Successfully deactivated audio session %{public}@ for %{public}@.", buf, 0x20u);
        }
      }
    }

LABEL_20:
  }
}

- (void)_startObservingAudioSessionInterruptionNotificationsForStateDescriptor:(id)descriptor
{
  v14 = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  os_unfair_lock_assert_not_owner(&self->_lock);
  [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  if (!self->_isObservingAudioSessionInterruptionNotification)
  {
    self->_isObservingAudioSessionInterruptionNotification = 1;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:self selector:sel__handleAudioSessionInterruptionNotification_ name:*MEMORY[0x1E69580D8] object:self->_audioSession];

    v8 = TLLogPlayback(v6, v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      playingAlert = [descriptorCopy playingAlert];
      v10 = 138543618;
      selfCopy = self;
      v12 = 2114;
      v13 = playingAlert;
      _os_log_impl(&dword_1D9356000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: -_startObservingAudioSessionInterruptionNotifications…: Started observing interruptions for %{public}@.", &v10, 0x16u);
    }
  }
}

- (void)_stopObservingAudioSessionInterruptionNotificationsForStateDescriptor:(id)descriptor
{
  v14 = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  os_unfair_lock_assert_not_owner(&self->_lock);
  [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  if (self->_isObservingAudioSessionInterruptionNotification)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self name:*MEMORY[0x1E69580D8] object:self->_audioSession];

    self->_isObservingAudioSessionInterruptionNotification = 0;
    v8 = TLLogPlayback(v6, v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      playingAlert = [descriptorCopy playingAlert];
      v10 = 138543618;
      selfCopy = self;
      v12 = 2114;
      v13 = playingAlert;
      _os_log_impl(&dword_1D9356000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: -_stopObservingAudioSessionInterruptionNotifications…: Stopped observing interruptions for %{public}@.", &v10, 0x16u);
    }
  }
}

- (void)_handleAudioSessionInterruptionNotification:(id)notification
{
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo objectForKey:*MEMORY[0x1E6958100]];
  unsignedIntegerValue = [v6 unsignedIntegerValue];

  userInfo2 = [notificationCopy userInfo];

  v9 = [userInfo2 objectForKey:*MEMORY[0x1E69580E8]];
  unsignedIntegerValue2 = [v9 unsignedIntegerValue];

  audioQueue = self->_audioQueue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __76__TLAlertQueuePlayerController__handleAudioSessionInterruptionNotification___block_invoke;
  v12[3] = &unk_1E8579E08;
  v12[4] = self;
  v12[5] = unsignedIntegerValue;
  v12[6] = unsignedIntegerValue2;
  [(TLAudioQueue *)audioQueue performTaskWithBlock:v12];
}

- (void)_handleAudioSessionInterruptionOfType:(unint64_t)type withOptions:(unint64_t)options
{
  v24 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_not_owner(&self->_lock);
  assertRunningOnAudioQueue = [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  if (type == 1)
  {
    v8 = TLLogPlayback(assertRunningOnAudioQueue, v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138543362;
      selfCopy3 = self;
      _os_log_impl(&dword_1D9356000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: -_handleAudioSessionInterruption…: Handling interruption of type AVAudioSessionInterruptionTypeBegan.", &v20, 0xCu);
    }

    os_unfair_lock_lock(&self->_lock);
    v9 = self->_stateDescriptor;
    stateDescriptorForCompletedPlayback = [(TLAlertQueuePlayerStateDescriptor *)self->_stateDescriptor stateDescriptorForCompletedPlayback];
    stateDescriptor = self->_stateDescriptor;
    self->_stateDescriptor = stateDescriptorForCompletedPlayback;

    v14 = TLLogPlayback(v12, v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [(TLAlertQueuePlayerStateDescriptor *)self->_stateDescriptor debugDescription];
      v20 = 138543618;
      selfCopy3 = self;
      v22 = 2114;
      v23 = v15;
      _os_log_impl(&dword_1D9356000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: -_handleAudioSessionInterruption…: Updated _stateDescriptor to %{public}@.", &v20, 0x16u);
    }

    os_unfair_lock_unlock(&self->_lock);
    v18 = TLLogPlayback(v16, v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      playingAlert = [(TLAlertQueuePlayerStateDescriptor *)v9 playingAlert];
      v20 = 138543618;
      selfCopy3 = self;
      v22 = 2114;
      v23 = playingAlert;
      _os_log_impl(&dword_1D9356000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@: -_handleAudioSessionInterruption…: Resetting state and marking %{public}@ as interrupted by the system.", &v20, 0x16u);
    }

    self->_isAudioSessionActive = 0;
    [(TLAlertQueuePlayerController *)self _stopObservingAudioSessionInterruptionNotificationsForStateDescriptor:v9];
    [(TLAlertQueuePlayerController *)self _stopPlaybackForStateDescriptor:v9 withOptions:0 playerWasAlreadyPausedExternally:1];
    [(TLAlertQueuePlayerStateDescriptor *)v9 invokePlayingAlertCompletionHandlerWithPlaybackCompletionType:4 error:0];
  }
}

- (BOOL)_isPreventingAudioSessionDeactivation
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  return self->_audioSessionDeactivationPreventionRequestsCount != 0;
}

- (void)_beginPreventingAudioSessionDeactivation
{
  v8 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_not_owner(&self->_lock);
  assertRunningOnAudioQueue = [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  ++self->_audioSessionDeactivationPreventionRequestsCount;
  v5 = TLLogPlayback(assertRunningOnAudioQueue, v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1D9356000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: -_beginPreventingAudioSessionDeactivation.", &v6, 0xCu);
  }
}

- (void)_endPreventingAudioSessionDeactivationForStateDescriptor:(id)descriptor
{
  v37 = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  os_unfair_lock_assert_not_owner(&self->_lock);
  assertRunningOnAudioQueue = [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  audioSessionDeactivationPreventionRequestsCount = self->_audioSessionDeactivationPreventionRequestsCount;
  if (!audioSessionDeactivationPreventionRequestsCount)
  {
    v8 = TLLogGeneral(assertRunningOnAudioQueue, v6);
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);

    if (v9)
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ToneLibrary/Library/Playback/BackEnds/QueuePlayer/TLAlertQueuePlayerController.m"];
      v14 = TLLogGeneral(v12, v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        lastPathComponent = [v12 lastPathComponent];
        callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
        v29 = 136381443;
        selfCopy3 = "[TLAlertQueuePlayerController _endPreventingAudioSessionDeactivationForStateDescriptor:]";
        v31 = 2113;
        v32 = lastPathComponent;
        v33 = 2049;
        v34 = 2224;
        v35 = 2113;
        v36 = callStackSymbols;
        _os_log_impl(&dword_1D9356000, v14, OS_LOG_TYPE_DEFAULT, "*** Assertion failure in %{private}s, %{private}@:%{private}lu.\n%{private}@", &v29, 0x2Au);
      }
    }

    else
    {
      v12 = TLLogGeneral(v10, v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        __85__TLVibrationPersistenceUtilities__objectIsValidUserGeneratedVibrationPattern_error___block_invoke_cold_1();
      }
    }

    v19 = TLLogGeneral(v17, v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [TLAlertQueuePlayerController _endPreventingAudioSessionDeactivationForStateDescriptor:];
    }

    audioSessionDeactivationPreventionRequestsCount = self->_audioSessionDeactivationPreventionRequestsCount;
  }

  self->_audioSessionDeactivationPreventionRequestsCount = audioSessionDeactivationPreventionRequestsCount - 1;
  v20 = TLLogPlayback(assertRunningOnAudioQueue, v6);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v29 = 138543618;
    selfCopy3 = self;
    v31 = 2114;
    v32 = descriptorCopy;
    _os_log_impl(&dword_1D9356000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@: -_endPreventingAudioSessionDeactivationForStateDescriptor:(%{public}@).", &v29, 0x16u);
  }

  if (!self->_audioSessionDeactivationPreventionRequestsCount)
  {
    playingAlert = [descriptorCopy playingAlert];

    if (!playingAlert)
    {
      v24 = TLLogPlayback(v22, v23);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v29 = 138543362;
        selfCopy3 = self;
        _os_log_impl(&dword_1D9356000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@: -_endPreventingAudioSessionDeactivation…: No alert was playing, calling -_deactivateAudioSessionIfNeeded…", &v29, 0xCu);
      }

      isAudioSessionActive = self->_isAudioSessionActive;
      v26 = [(TLAlertQueuePlayerController *)self _deactivateAudioSessionIfNeededForStateDescriptor:descriptorCopy];
      if (isAudioSessionActive && !self->_isAudioSessionActive)
      {
        [(TLAlertQueuePlayerController *)self _resetClientPriorityForStateDescriptor:descriptorCopy];
      }

      else
      {
        v28 = TLLogPlayback(v26, v27);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          v29 = 138543362;
          selfCopy3 = self;
          _os_log_impl(&dword_1D9356000, v28, OS_LOG_TYPE_DEFAULT, "%{public}@: -_endPreventingAudioSessionDeactivation…: Skipping reset client priority because the audio session was NOT just deactivated.", &v29, 0xCu);
        }
      }
    }
  }
}

- (void)_reportAudioStartEventForStateDescriptor:(id)descriptor
{
  v21 = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  os_unfair_lock_assert_not_owner(&self->_lock);
  assertRunningOnAudioQueue = [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  v7 = TLLogPlayback(assertRunningOnAudioQueue, v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v19 = 2114;
    v20 = descriptorCopy;
    _os_log_impl(&dword_1D9356000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: -_reportAudioStartEventForStateDescriptor:(%{public}@).", buf, 0x16u);
  }

  playingAlert = [descriptorCopy playingAlert];
  if ([playingAlert type] == 13)
  {
    v9 = +[TLCapabilitiesManager sharedCapabilitiesManager];
    isInternalInstall = [v9 isInternalInstall];

    if (isInternalInstall)
    {
      v11 = [objc_alloc(MEMORY[0x1E69E4FF0]) initWithReporterID:-[AVAudioSession reporterID](self->_audioSession serviceType:{"reporterID"), 4}];
      v12 = NSStringFromTLAlertType(0xDuLL);
      toneIdentifier = [playingAlert toneIdentifier];
      v16[1] = toneIdentifier;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:2];

      [v11 sendMessage:v14 category:8 type:1];
    }
  }
}

- (void)_startMusicPlaybackForStateDescriptor:(id)descriptor mediaItem:(id)item
{
  v52[1] = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  itemCopy = item;
  os_unfair_lock_assert_not_owner(&self->_lock);
  assertRunningOnAudioQueue = [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  v10 = TLLogPlayback(assertRunningOnAudioQueue, v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    *&buf[4] = self;
    *&buf[12] = 2114;
    *&buf[14] = descriptorCopy;
    *&buf[22] = 2114;
    v50 = itemCopy;
    _os_log_impl(&dword_1D9356000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: -_startMusicPlaybackForStateDescriptor:(%{public}@) mediaItem:(%{public}@).", buf, 0x20u);
  }

  if (!self->_musicPlayer)
  {
    v45 = 0;
    v46 = &v45;
    v47 = 0x2050000000;
    v13 = getMPMusicPlayerApplicationControllerClass_softClass;
    v48 = getMPMusicPlayerApplicationControllerClass_softClass;
    if (!getMPMusicPlayerApplicationControllerClass_softClass)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getMPMusicPlayerApplicationControllerClass_block_invoke;
      v50 = &unk_1E8578D30;
      v51[0] = &v45;
      __getMPMusicPlayerApplicationControllerClass_block_invoke(buf);
      v13 = v46[3];
    }

    v14 = v13;
    _Block_object_dispose(&v45, 8);
    v15 = [v13 alloc];
    _underlyingSerialQueue = [(TLAudioQueue *)self->_audioQueue _underlyingSerialQueue];
    v17 = [v15 initWithClientIdentifier:@"ToneLibrary" queue:_underlyingSerialQueue];
    musicPlayer = self->_musicPlayer;
    self->_musicPlayer = v17;

    v21 = TLLogPlayback(v19, v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = self->_musicPlayer;
      *buf = 138543618;
      *&buf[4] = self;
      *&buf[12] = 2114;
      *&buf[14] = v22;
      _os_log_impl(&dword_1D9356000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@: -_startMusicPlayback…: Created music player: %{public}@.", buf, 0x16u);
    }

    v23 = [(MPMusicPlayerApplicationController *)self->_musicPlayer setDisableAutomaticCanBeNowPlaying:1];
    v25 = TLLogPlayback(v23, v24);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = self->_musicPlayer;
      *buf = 138543618;
      *&buf[4] = self;
      *&buf[12] = 2114;
      *&buf[14] = v26;
      _os_log_impl(&dword_1D9356000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@: -_startMusicPlayback…: Disabled automatic plumbing for becoming Now Playing app: %{public}@.", buf, 0x16u);
    }
  }

  v27 = TLLogPlayback(v11, v12);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v28 = self->_musicPlayer;
    *buf = 138543618;
    *&buf[4] = self;
    *&buf[12] = 2114;
    *&buf[14] = v28;
    _os_log_impl(&dword_1D9356000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@: -_startMusicPlayback…: Setting repeat mode to .all on %{public}@.", buf, 0x16u);
  }

  [(MPMusicPlayerApplicationController *)self->_musicPlayer setRepeatMode:3];
  v45 = 0;
  v46 = &v45;
  v47 = 0x2050000000;
  v29 = getMPMediaItemCollectionClass_softClass;
  v48 = getMPMediaItemCollectionClass_softClass;
  if (!getMPMediaItemCollectionClass_softClass)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getMPMediaItemCollectionClass_block_invoke;
    v50 = &unk_1E8578D30;
    v51[0] = &v45;
    __getMPMediaItemCollectionClass_block_invoke(buf);
    v29 = v46[3];
  }

  v30 = v29;
  _Block_object_dispose(&v45, 8);
  v52[0] = itemCopy;
  v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:1];
  v32 = [v29 collectionWithItems:v31];

  v35 = TLLogPlayback(v33, v34);
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    v36 = self->_musicPlayer;
    *buf = 138544130;
    *&buf[4] = self;
    *&buf[12] = 2114;
    *&buf[14] = v32;
    *&buf[22] = 2114;
    v50 = itemCopy;
    LOWORD(v51[0]) = 2114;
    *(v51 + 2) = v36;
    _os_log_impl(&dword_1D9356000, v35, OS_LOG_TYPE_DEFAULT, "%{public}@: -_startMusicPlayback…: Setting queue with collection %{public}@ [%{public}@] on %{public}@.", buf, 0x2Au);
  }

  v37 = [(MPMusicPlayerApplicationController *)self->_musicPlayer setQueueWithItemCollection:v32];
  v39 = TLLogPlayback(v37, v38);
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    v40 = self->_musicPlayer;
    *buf = 138543618;
    *&buf[4] = self;
    *&buf[12] = 2114;
    *&buf[14] = v40;
    _os_log_impl(&dword_1D9356000, v39, OS_LOG_TYPE_DEFAULT, "%{public}@: -_startMusicPlayback…: Preparing to play music with %{public}@.", buf, 0x16u);
  }

  v41 = self->_musicPlayer;
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __80__TLAlertQueuePlayerController__startMusicPlaybackForStateDescriptor_mediaItem___block_invoke;
  v43[3] = &unk_1E8579E30;
  v43[4] = self;
  v44 = descriptorCopy;
  v42 = descriptorCopy;
  [(MPMusicPlayerApplicationController *)v41 prepareToPlayWithCompletionHandler:v43];
}

- (void)_didPrepareToPlayMusicForStateDescriptor:(id)descriptor withError:(id)error
{
  v58 = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  errorCopy = error;
  os_unfair_lock_assert_not_owner(&self->_lock);
  assertRunningOnAudioQueue = [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  v10 = TLLogPlayback(assertRunningOnAudioQueue, v9);
  v11 = v10;
  if (errorCopy)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      selfCopy9 = self;
      v54 = 2114;
      v55 = descriptorCopy;
      v56 = 2114;
      v57 = errorCopy;
      _os_log_error_impl(&dword_1D9356000, v11, OS_LOG_TYPE_ERROR, "%{public}@: -_didPrepareToPlayMusicForStateDescriptor:(%{public}@) withError:(%{public}@).", buf, 0x20u);
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy9 = self;
    v54 = 2114;
    v55 = descriptorCopy;
    _os_log_impl(&dword_1D9356000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: -_didPrepareToPlayMusicForStateDescriptor:(%{public}@)…: Succeeded!", buf, 0x16u);
  }

  os_unfair_lock_lock(&self->_lock);
  playingAlert = [(TLAlertQueuePlayerStateDescriptor *)self->_stateDescriptor playingAlert];
  playingAlert2 = [descriptorCopy playingAlert];

  os_unfair_lock_unlock(&self->_lock);
  if (playingAlert == playingAlert2)
  {
    if (errorCopy)
    {
      playingAlert3 = [(TLAlertQueuePlayerController *)self _fallbackToneIdentifierForStateDescriptor:descriptorCopy];
      [(TLAlertQueuePlayerController *)self _reloadPlaybackForStateDescriptor:descriptorCopy withToneIdentifier:playingAlert3];
    }

    else
    {
      [(TLAlertQueuePlayerController *)self _willBeginPlayingAlertForStateDescriptor:descriptorCopy isForMusicPlayback:1];
      playingAlert3 = [descriptorCopy playingAlert];
      v17 = [objc_opt_class() _shouldVibrateForAlert:playingAlert3];
      v18 = v17;
      v20 = TLLogPlayback(v17, v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        selfCopy9 = self;
        v54 = 1024;
        LODWORD(v55) = v18;
        _os_log_impl(&dword_1D9356000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@: -_didPrepareToPlayMusic…: Should vibrate: %{BOOL}d.", buf, 0x12u);
      }

      if (v18)
      {
        v23 = [(TLAlertQueuePlayerController *)self _vibrationPatternDictionaryForStateDescriptor:descriptorCopy allowsArtificiallyRepeatingPropertyListRepresentation:0];
        if (v23)
        {
          v24 = objc_alloc_init(MEMORY[0x1E695DF90]);
          [v24 setObject:v23 forKey:*MEMORY[0x1E695A8E0]];
          v25 = [v24 setObject:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E695A8C8]];
          self->_musicPlaybackVibrationSoundID = 4095;
          v27 = TLLogPlayback(v25, v26);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            selfCopy9 = self;
            v54 = 2048;
            v55 = 4095;
            _os_log_impl(&dword_1D9356000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@: -_didPrepareToPlayMusic…: Calling AudioServicesPlaySystemSoundWithOptions with a non-nil pattern for soundID: %lu.", buf, 0x16u);
          }

          v46 = MEMORY[0x1E69E9820];
          v47 = 3221225472;
          v48 = __83__TLAlertQueuePlayerController__didPrepareToPlayMusicForStateDescriptor_withError___block_invoke;
          v49 = &unk_1E8579828;
          selfCopy5 = self;
          v51 = 4095;
          AudioServicesPlaySystemSoundWithOptions();
        }
      }

      v28 = TLLogPlayback(v21, v22);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        musicPlayer = self->_musicPlayer;
        *buf = 138543618;
        selfCopy9 = self;
        v54 = 2114;
        v55 = musicPlayer;
        _os_log_impl(&dword_1D9356000, v28, OS_LOG_TYPE_DEFAULT, "%{public}@: -_didPrepareToPlayMusic…: Calling -play on %{public}@.", buf, 0x16u);
      }

      play = [(MPMusicPlayerApplicationController *)self->_musicPlayer play];
      self->_isPlayingMusic = 1;
      v32 = TLLogPlayback(play, v31);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        selfCopy9 = self;
        v54 = 2048;
        v55 = 0x4014000000000000;
        _os_log_impl(&dword_1D9356000, v32, OS_LOG_TYPE_DEFAULT, "%{public}@: -_didPrepareToPlayMusic…: Setting timer for %.1f seconds to check if music playback actually started.", buf, 0x16u);
      }

      _underlyingSerialQueue = [(TLAudioQueue *)self->_audioQueue _underlyingSerialQueue];
      v34 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, _underlyingSerialQueue);
      musicPlaybackCheckTimerSource = self->_musicPlaybackCheckTimerSource;
      self->_musicPlaybackCheckTimerSource = v34;

      v36 = self->_musicPlaybackCheckTimerSource;
      v37 = dispatch_time(0, 5000000000);
      dispatch_source_set_timer(v36, v37, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
      v38 = self->_musicPlaybackCheckTimerSource;
      v40 = MEMORY[0x1E69E9820];
      v41 = 3221225472;
      v42 = __83__TLAlertQueuePlayerController__didPrepareToPlayMusicForStateDescriptor_withError___block_invoke_150;
      v43 = &unk_1E8578900;
      selfCopy8 = self;
      v39 = descriptorCopy;
      v45 = v39;
      dispatch_source_set_event_handler(v38, &v40);
      dispatch_resume(self->_musicPlaybackCheckTimerSource);
      [(TLAlertQueuePlayerController *)self _reportAudioStartEventForStateDescriptor:v39, v40, v41, v42, v43, selfCopy8];
      [(TLAlertQueuePlayerController *)self _notifyPlaybackObserverForStateDescriptor:v39 isForMusicPlayback:1];
    }
  }

  else
  {
    playingAlert3 = TLLogPlayback(v14, v15);
    if (os_log_type_enabled(playingAlert3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy9 = self;
      v54 = 2114;
      v55 = descriptorCopy;
      _os_log_impl(&dword_1D9356000, playingAlert3, OS_LOG_TYPE_DEFAULT, "%{public}@: -_didPrepareToPlayMusic…: Playing alert for %{public}@ is no longer actually playing; aborting playback initiation.", buf, 0x16u);
    }
  }
}

void __83__TLAlertQueuePlayerController__didPrepareToPlayMusicForStateDescriptor_withError___block_invoke(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = TLLogPlayback(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = 138543618;
    v7 = v4;
    v8 = 2048;
    v9 = v5;
    _os_log_impl(&dword_1D9356000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: -_didPrepareToPlayMusic…: Running completion block for AudioServicesPlaySystemSoundWithOptions for soundID: %lu.", &v6, 0x16u);
  }
}

- (void)_ensureMusicPlaybackStartedForStateDescriptor:(id)descriptor
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = COERCE_DOUBLE(descriptor);
  os_unfair_lock_assert_not_owner(&self->_lock);
  assertRunningOnAudioQueue = [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  v7 = TLLogPlayback(assertRunningOnAudioQueue, v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138543618;
    selfCopy3 = self;
    v19 = 2114;
    v20 = v4;
    _os_log_impl(&dword_1D9356000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: -_ensureMusicPlaybackStartedForStateDescriptor:(%{public}@)", &v17, 0x16u);
  }

  currentPlaybackRate = [(MPMusicPlayerApplicationController *)self->_musicPlayer currentPlaybackRate];
  v10 = v9;
  v12 = TLLogPlayback(currentPlaybackRate, v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138543618;
    selfCopy3 = self;
    v19 = 2048;
    v20 = v10;
    _os_log_impl(&dword_1D9356000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: -_ensureMusicPlaybackStarted…: Music playback rate: %.3f.", &v17, 0x16u);
  }

  v15 = TLLogPlayback(v13, v14);
  v16 = v15;
  if (v10 <= 0.00000011921)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [TLAlertQueuePlayerController _ensureMusicPlaybackStartedForStateDescriptor:];
    }

    [(TLAlertQueuePlayerController *)self _stopMusicPlayback];
    [(TLAlertQueuePlayerController *)self _didEndPlayingAlertForStateDescriptor:*&v4 isForMusicPlayback:1];
    v16 = [(TLAlertQueuePlayerController *)self _fallbackToneIdentifierForStateDescriptor:*&v4];
    [(TLAlertQueuePlayerController *)self _reloadPlaybackForStateDescriptor:*&v4 withToneIdentifier:v16];
  }

  else if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138543362;
    selfCopy3 = self;
    _os_log_impl(&dword_1D9356000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@: -_ensureMusicPlaybackStarted…: Music appears to be playing just fine!", &v17, 0xCu);
  }
}

- (void)_stopMusicPlayback
{
  v17 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_not_owner(&self->_lock);
  assertRunningOnAudioQueue = [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  if (self->_isPlayingMusic)
  {
    v5 = TLLogPlayback(assertRunningOnAudioQueue, v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      musicPlayer = self->_musicPlayer;
      v11 = 138543618;
      selfCopy2 = self;
      v13 = 2114;
      v14 = musicPlayer;
      _os_log_impl(&dword_1D9356000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: -_stopMusicPlayback: Calling -stop on %{public}@.", &v11, 0x16u);
    }

    assertRunningOnAudioQueue = [(MPMusicPlayerApplicationController *)self->_musicPlayer stop];
    self->_isPlayingMusic = 0;
  }

  if (self->_musicPlaybackVibrationSoundID != kSystemSoundID_NoneTone)
  {
    v7 = TLLogPlayback(assertRunningOnAudioQueue, v4);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      musicPlaybackVibrationSoundID = self->_musicPlaybackVibrationSoundID;
      v11 = 138543874;
      selfCopy2 = self;
      v13 = 2048;
      v14 = musicPlaybackVibrationSoundID;
      v15 = 1024;
      v16 = 1;
      _os_log_impl(&dword_1D9356000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: -_stopMusicPlayback: Calling AudioServicesStopSystemSound for soundID: %lu with inStopNow = %{BOOL}d.", &v11, 0x1Cu);
    }

    AudioServicesStopSystemSound();
    self->_musicPlaybackVibrationSoundID = kSystemSoundID_NoneTone;
  }

  musicPlaybackCheckTimerSource = self->_musicPlaybackCheckTimerSource;
  if (musicPlaybackCheckTimerSource)
  {
    dispatch_source_cancel(musicPlaybackCheckTimerSource);
    v10 = self->_musicPlaybackCheckTimerSource;
    self->_musicPlaybackCheckTimerSource = 0;
  }
}

- (id)_vibrationPatternDictionaryForStateDescriptor:(id)descriptor allowsArtificiallyRepeatingPropertyListRepresentation:(BOOL)representation
{
  representationCopy = representation;
  v31 = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  v8 = TLLogPlayback(descriptorCopy, v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 138543874;
    selfCopy = self;
    v27 = 2114;
    v28 = descriptorCopy;
    v29 = 1024;
    v30 = representationCopy;
    _os_log_impl(&dword_1D9356000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: -_vibrationPatternDictionaryForStateDescriptor:(%{public}@) allowsArtificiallyRepeatingPropertyListRepresentation:(%{BOOL}d).", &v25, 0x1Cu);
  }

  playingAlert = [descriptorCopy playingAlert];
  configuration = [playingAlert configuration];
  externalVibrationPattern = [configuration externalVibrationPattern];
  if (externalVibrationPattern)
  {
    v12 = externalVibrationPattern;
  }

  else
  {
    externalVibrationPatternFileURL = [configuration externalVibrationPatternFileURL];
    if (!externalVibrationPatternFileURL || (v19 = externalVibrationPatternFileURL, [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:externalVibrationPatternFileURL], v12 = objc_claimAutoreleasedReturnValue(), v19, !v12))
    {
      vibrationIdentifier = [playingAlert vibrationIdentifier];
      if ([vibrationIdentifier isEqualToString:@"<none>"])
      {
        v17 = 0;
      }

      else
      {
        if (representationCopy)
        {
          v21 = [objc_opt_class() _shouldRepeatVibrationForAlert:playingAlert externalEnvironmentValues:*&self->_externalEnvironmentValues];
        }

        else
        {
          v21 = 0;
        }

        v23 = +[TLVibrationManager sharedVibrationManager];
        v17 = [v23 patternForVibrationWithIdentifier:vibrationIdentifier repeating:v21];
      }

      v12 = 0;
      goto LABEL_23;
    }
  }

  if (representationCopy && [configuration shouldRepeat])
  {
    v13 = [[TLVibrationPattern alloc] initWithPropertyListRepresentation:v12];
    v15 = v13;
    if (v13)
    {
      _artificiallyRepeatingPropertyListRepresentation = [(TLVibrationPattern *)v13 _artificiallyRepeatingPropertyListRepresentation];
    }

    else
    {
      v22 = TLLogPlayback(0, v14);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [TLAlertQueuePlayerController _vibrationPatternDictionaryForStateDescriptor:allowsArtificiallyRepeatingPropertyListRepresentation:];
      }

      _artificiallyRepeatingPropertyListRepresentation = v12;
    }

    v17 = _artificiallyRepeatingPropertyListRepresentation;
  }

  else
  {
    v12 = v12;
    v17 = v12;
  }

LABEL_23:

  return v17;
}

+ (BOOL)_shouldVibrateForAlert:(id)alert
{
  alertCopy = alert;
  if ([alertCopy type] == 18 && (objc_msgSend(alertCopy, "configuration"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "shouldIgnoreRingerSwitch"), v4, (v5 & 1) != 0))
  {
    shouldVibrateForCurrentRingerSwitchState = 1;
  }

  else
  {
    v7 = +[TLVibrationManager sharedVibrationManager];
    shouldVibrateForCurrentRingerSwitchState = [v7 shouldVibrateForCurrentRingerSwitchState];
  }

  return shouldVibrateForCurrentRingerSwitchState;
}

+ (BOOL)_shouldRepeatVibrationForAlert:(id)alert externalEnvironmentValues:(id)values
{
  alertCopy = alert;
  if ([TLAlertPlaybackPolicy shouldRepeatVibrationForAlert:alertCopy withPlaybackBackend:0])
  {
    v7 = 1;
  }

  else
  {
    v7 = [self _shouldApplyStandardDelayAndAudioVolumeRampForAlert:alertCopy externalEnvironmentValues:*&values];
  }

  return v7;
}

+ (BOOL)_shouldApplyAttentionAwarenessEffectsForAlert:(id)alert
{
  alertCopy = alert;
  configuration = [alertCopy configuration];
  isForPreview = [configuration isForPreview];

  if (isForPreview)
  {
    v6 = 0;
  }

  else
  {
    type = [alertCopy type];
    v6 = 0;
    if (type <= 0x1C && ((1 << type) & 0x10006002) != 0)
    {
      v6 = +[TLAttentionAwarenessObserver supportsAttenuatingTonesForAttentionDetected];
    }
  }

  return v6;
}

+ (int64_t)_audioVolumeApplicationPolicyForAlert:(id)alert externalEnvironmentValues:(id)values
{
  v4 = *&values.var0;
  alertCopy = alert;
  v7 = [objc_opt_class() _audioCategoryForAlert:alertCopy externalEnvironmentValues:v4];
  if ([v7 isEqualToString:*MEMORY[0x1E6958030]])
  {
    v8 = +[TLCapabilitiesManager sharedCapabilitiesManager];
    isHomePod = [v8 isHomePod];

    if (isHomePod)
    {
      v10 = 1;
    }

    else
    {
      v10 = 2;
    }
  }

  else
  {
    if ([v7 isEqualToString:*MEMORY[0x1E6958040]])
    {
      topic = [self _audioModeForAlert:alertCopy audioCategory:v7];
      if ([topic isEqualToString:*MEMORY[0x1E6958138]])
      {
        v10 = 3;
      }

      else
      {
        v10 = 1;
      }
    }

    else
    {
      type = [alertCopy type];
      configuration = [alertCopy configuration];
      topic = [configuration topic];

      if (type == 17 && [topic isEqualToString:@"TLAlertTopicAppNotificationCriticalAlert"])
      {
        v10 = ~v4 & 1;
      }

      else
      {
        v10 = 1;
      }
    }
  }

  return v10;
}

+ (double)_audioPlaybackInitiationDelayForAlert:(id)alert externalEnvironmentValues:(id)values
{
  alertCopy = alert;
  configuration = [alertCopy configuration];
  [configuration _audioPlaybackInitiationDelay];
  v9 = v8;
  if (v8 <= 0.00000011920929 && [self _shouldApplyStandardDelayAndAudioVolumeRampForAlert:alertCopy externalEnvironmentValues:*&values])
  {
    v9 = 3.0;
  }

  return v9;
}

+ (double)_audioVolumeRampingDurationForAlert:(id)alert externalEnvironmentValues:(id)values toneAssetDuration:(double)duration
{
  alertCopy = alert;
  configuration = [alertCopy configuration];
  [configuration _audioVolumeRampingDuration];
  v11 = v10;
  if (v10 <= 0.00000011920929)
  {
    v12 = [self _shouldApplyStandardDelayAndAudioVolumeRampForAlert:alertCopy externalEnvironmentValues:*&values];
    v13 = fmin(duration * 0.5, 2.0);
    if (v12)
    {
      v11 = v13;
    }
  }

  return v11;
}

+ (BOOL)_shouldApplyStandardDelayAndAudioVolumeRampForAlert:(id)alert externalEnvironmentValues:(id)values
{
  v4 = *&values.var0;
  alertCopy = alert;
  type = [alertCopy type];
  configuration = [alertCopy configuration];

  topic = [configuration topic];

  if (type == 17)
  {
    v9 = [topic isEqualToString:@"TLAlertTopicAppNotificationCriticalAlert"] & (v4 >> 8) & 1;
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (id)_fallbackToneIdentifierForStateDescriptor:(id)descriptor
{
  audioQueue = self->_audioQueue;
  descriptorCopy = descriptor;
  [(TLAudioQueue *)audioQueue assertRunningOnAudioQueue];
  playingAlert = [descriptorCopy playingAlert];

  if (playingAlert)
  {
    type = [playingAlert type];
    v8 = +[TLToneManager sharedToneManager];
    v9 = [v8 defaultToneIdentifierForAlertType:type];
    configuration = [playingAlert configuration];
    topic = [configuration topic];
    v12 = [v8 currentToneIdentifierForAlertType:type topic:topic];

    v13 = [(NSString *)self->_playingToneIdentifier isEqualToString:v9];
    if (v13)
    {
      v15 = TLLogPlayback(v13, v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [(TLAlertQueuePlayerController *)self _fallbackToneIdentifierForStateDescriptor:type, v15];
      }

      v16 = 0;
    }

    else
    {
      if (-[NSString isEqualToString:](self->_playingToneIdentifier, "isEqualToString:", v12) && ([v12 isEqualToString:v9] & 1) == 0)
      {
        v17 = v9;
      }

      else
      {
        v17 = v12;
      }

      v16 = v17;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ ($96EE1C12479E9B303E9C2794B92A11A2)_externalEnvironmentValuesForAlert:(id)alert
{
  v33 = *MEMORY[0x1E69E9840];
  alertCopy = alert;
  type = [alertCopy type];
  configuration = [alertCopy configuration];
  topic = [configuration topic];

  if (type == 17 && (v8 = [topic isEqualToString:@"TLAlertTopicAppNotificationCriticalAlert"], v8))
  {
    v10 = TLLogPlayback(v8, v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v25 = 138543618;
      selfCopy3 = self;
      v27 = 2114;
      v28 = alertCopy;
      _os_log_impl(&dword_1D9356000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: _externalEnvironmentValuesForAlert:(%{public}@).", &v25, 0x16u);
    }

    mEMORY[0x1E69AED10] = [MEMORY[0x1E69AED10] sharedAVSystemController];
    v12 = [mEMORY[0x1E69AED10] attributeForKey:*MEMORY[0x1E69AEA38]];
    bOOLValue = objc_opt_respondsToSelector();
    if ((bOOLValue & 1) != 0 && (bOOLValue = [v12 BOOLValue], bOOLValue))
    {
      bOOLValue = [v12 BOOLValue];
      v15 = bOOLValue;
    }

    else
    {
      v15 = 0;
    }

    v17 = TLLogPlayback(bOOLValue, v14);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v25 = 138543874;
      selfCopy3 = self;
      v27 = 2114;
      v28 = alertCopy;
      v29 = 1024;
      LODWORD(v30) = v15;
      _os_log_impl(&dword_1D9356000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@: _externalEnvironmentValuesForAlert:(%{public}@): isIncomingCallActive = %{BOOL}d.", &v25, 0x1Cu);
    }

    mEMORY[0x1E69587F0] = [MEMORY[0x1E69587F0] sharedSystemAudioContext];
    outputDevice = [mEMORY[0x1E69587F0] outputDevice];
    deviceSubType = [outputDevice deviceSubType];

    v16 = deviceSubType == 4;
    v23 = TLLogPlayback(v21, v22);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v25 = 138544130;
      selfCopy3 = self;
      v27 = 2114;
      v28 = alertCopy;
      v29 = 2048;
      v30 = deviceSubType;
      v31 = 1024;
      v32 = deviceSubType == 4;
      _os_log_impl(&dword_1D9356000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@: _externalEnvironmentValuesForAlert:(%{public}@): outputDeviceSubType = %lld; usesReceiverRoute = %{BOOL}d.", &v25, 0x26u);
    }
  }

  else
  {
    v16 = 0;
    LOWORD(v15) = 0;
  }

  return (v15 | (v16 << 8));
}

- (void)_reloadPlaybackForStateDescriptor:withToneIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_reloadPlaybackForStateDescriptor:withToneIdentifier:.cold.3()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_queuePlayer:currentItemWasUpdatedFromValue:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_queuePlayer:currentItemStatusWasUpdatedToValue:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

- (void)_fallbackToneIdentifierForStateDescriptor:(NSObject *)a3 .cold.1(uint64_t a1, unint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = NSStringFromTLAlertType(a2);
  v6 = 138543618;
  v7 = a1;
  v8 = 2114;
  v9 = v5;
  _os_log_error_impl(&dword_1D9356000, a3, OS_LOG_TYPE_ERROR, "%{public}@: Failed to prepare default tone for alert type %{public}@ for playback. All possible fallback cases have been exhausted. Bailing.", &v6, 0x16u);
}

@end