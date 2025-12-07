@interface TLAlertSystemSoundController
+ (id)_descriptionForAlertComponentsSuppressionFlags:(unsigned int)flags;
+ (id)_optionsForSystemSoundAlert:(id)alert withSound:(id)sound vibrationIdentifier:(id)identifier isDeemphasized:(BOOL)deemphasized;
+ (id)_soundForAlert:(id)alert toneIdentifierForDeemphasizingAlert:(id)deemphasizingAlert;
+ (id)_toneIdentifierForDeemphasizingAlert:(id)alert;
+ (id)_vibrationIdentifierForDeemphasizingAlert:(id)alert correspondingToneIdentifierForDeemphasizingAlert:(id)deemphasizingAlert;
+ (id)_vibrationPatternForAlert:(id)alert withSound:(id)sound vibrationIdentifier:(id)identifier;
+ (unsigned)_componentSuppressionFlagsForAlert:(id)alert;
+ (unsigned)_soundBehaviorForAlert:(id)alert withSound:(id)sound isDeemphasized:(BOOL)deemphasized;
- ($61DF9F24A7329A1BB61181F7D05C320D)_considerDeferringPlayingAlertForBacklightStatusResolution:(id)resolution alertSystemSoundContext:(id)context;
- (BOOL)stopPlayingAlerts:(id)alerts withOptions:(id)options playbackCompletionType:(int64_t)type;
- (TLAlertSystemSoundController)init;
- (id)_playTaskDescriptorForAlert:(id)alert withSound:(id)sound vibrationIdentifier:(id)identifier alertSystemSoundContext:(id)context;
- (id)_prepareForPreemptingAlertsBeforeBeginningPlaybackOfAlert:(id)alert withSound:(id)sound playbackCompletionType:(int64_t)type;
- (id)_prepareForStoppingAlerts:(id)alerts withOptions:(id)options playbackCompletionType:(int64_t)type;
- (void)_beginRequiringBacklightObservationForAlert:(id)alert alertSystemSoundContext:(id)context;
- (void)_didCompletePlaybackForAlert:(id)alert;
- (void)_endRequiringBacklightObservationForAlert:(id)alert alertSystemSoundContext:(id)context;
- (void)_playAlert:(id)alert alertSystemSoundContext:(id)context toneIdentifierForDeemphasizingAlert:(id)deemphasizingAlert vibrationIdentifierForDeemphasizingAlert:(id)forDeemphasizingAlert backlightStatusResolutionDeferralContext:(id)deferralContext;
- (void)_preheatForAlert:(id)alert backlightStatus:(int64_t)status completionHandler:(id)handler;
- (void)_processDeemphasizableAlertChangesForBackglightStatus:(int64_t)status stopTasksDescriptorForDeemphasizedAlerts:(id)alerts deemphasizableAlertBeginPlayingContexts:(id)contexts;
- (void)_processPlayTaskDescriptors:(id)descriptors;
- (void)_processPlaybackCompletionContexts:(id)contexts;
- (void)_processStopTasksDescriptor:(id)descriptor;
- (void)_removeAlert:(id)alert alertSystemSoundContext:(id)context didFailToPrepareSound:(BOOL)sound appendingPlaybackCompletionContextToArray:(id)array;
- (void)backlightStatusDidChange:(int64_t)change;
- (void)dealloc;
- (void)playAlert:(id)alert withCompletionHandler:(id)handler;
- (void)preheatForAlert:(id)alert completionHandler:(id)handler;
@end

@implementation TLAlertSystemSoundController

- (TLAlertSystemSoundController)init
{
  v8.receiver = self;
  v8.super_class = TLAlertSystemSoundController;
  v2 = [(TLAlertSystemSoundController *)&v8 init];
  if (v2)
  {
    v3 = +[TLAudioQueue sharedAudioQueue];
    audioQueue = v2->_audioQueue;
    v2->_audioQueue = v3;

    v2->_lock._os_unfair_lock_opaque = 0;
    v5 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:0 valueOptions:0 capacity:1];
    alertSystemSoundContexts = v2->_alertSystemSoundContexts;
    v2->_alertSystemSoundContexts = v5;

    v2->_backlightStatus = -1;
  }

  return v2;
}

- (void)dealloc
{
  v23 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_not_owner(&self->_lock);
  v3 = self->_audioQueue;
  audioQueue = self->_audioQueue;
  self->_audioQueue = 0;

  [(TLAudioQueue *)v3 assertNotRunningOnAudioQueue];
  os_unfair_lock_lock(&self->_lock);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = self->_alertSystemSoundContexts;
  v6 = [(NSMapTable *)v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        if (!v8)
        {
          v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
        }

        [v8 addObject:v11];
      }

      v7 = [(NSMapTable *)v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  if ([v8 count])
  {
    v12 = [(TLAlertSystemSoundController *)self _prepareForStoppingAlerts:v8 withOptions:0 playbackCompletionType:4];
  }

  else
  {
    v12 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __39__TLAlertSystemSoundController_dealloc__block_invoke;
  v15[3] = &unk_1E8578900;
  v16 = v12;
  selfCopy = self;
  v13 = v12;
  [(TLAudioQueue *)v3 performSynchronousTaskWithBlock:v15];

  v14.receiver = self;
  v14.super_class = TLAlertSystemSoundController;
  [(TLAlertSystemSoundController *)&v14 dealloc];
}

id *__39__TLAlertSystemSoundController_dealloc__block_invoke(id *result)
{
  if (result[4])
  {
    return [result[5] _processStopTasksDescriptor:?];
  }

  return result;
}

- (void)playAlert:(id)alert withCompletionHandler:(id)handler
{
  alertCopy = alert;
  handlerCopy = handler;
  os_unfair_lock_assert_not_owner(&self->_lock);
  v8 = objc_alloc_init(TLAlertPlaybackCompletionContext);
  [(TLAlertPlaybackCompletionContext *)v8 setCompletionHandler:handlerCopy];

  [(TLAlertPlaybackCompletionContext *)v8 setPlaybackCompletionType:0];
  os_unfair_lock_lock(&self->_lock);
  playbackObserver = [alertCopy playbackObserver];
  v10 = [objc_opt_class() _toneIdentifierForDeemphasizingAlert:alertCopy];
  v11 = [objc_opt_class() _vibrationIdentifierForDeemphasizingAlert:alertCopy correspondingToneIdentifierForDeemphasizingAlert:v10];
  v12 = objc_alloc_init(TLAlertSystemSoundContext);
  [(TLAlertSystemSoundContext *)v12 setToneIdentifierForDeemphasizingAlert:v10];
  [(TLAlertSystemSoundContext *)v12 setVibrationIdentifierForDeemphasizingAlert:v11];
  [(TLAlertSystemSoundContext *)v12 setPlaybackCompletionContext:v8];
  [(TLAlertSystemSoundContext *)v12 setPlaybackObserver:playbackObserver];
  v13 = [(TLAlertSystemSoundController *)self _considerDeferringPlayingAlertForBacklightStatusResolution:alertCopy alertSystemSoundContext:v12];
  v15 = v14;
  if ((v14 & 0x100) != 0)
  {
    [(NSMapTable *)self->_alertSystemSoundContexts setObject:v12 forKey:alertCopy];

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v16 = v13;
    [(TLAlertSystemSoundContext *)v12 setLoadingSound:1];
    [(NSMapTable *)self->_alertSystemSoundContexts setObject:v12 forKey:alertCopy];

    os_unfair_lock_unlock(&self->_lock);
    audioQueue = self->_audioQueue;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __64__TLAlertSystemSoundController_playAlert_withCompletionHandler___block_invoke;
    v18[3] = &unk_1E8579710;
    v18[4] = self;
    v19 = alertCopy;
    v20 = v12;
    v21 = v10;
    v22 = v11;
    v23 = v16;
    v24 = v15;
    [(TLAudioQueue *)audioQueue performTaskWithBlock:v18];
  }
}

- (void)_playAlert:(id)alert alertSystemSoundContext:(id)context toneIdentifierForDeemphasizingAlert:(id)deemphasizingAlert vibrationIdentifierForDeemphasizingAlert:(id)forDeemphasizingAlert backlightStatusResolutionDeferralContext:(id)deferralContext
{
  var1 = deferralContext.var1;
  var0 = deferralContext.var0;
  v42 = *MEMORY[0x1E69E9840];
  alertCopy = alert;
  contextCopy = context;
  forDeemphasizingAlertCopy = forDeemphasizingAlert;
  deemphasizingAlertCopy = deemphasizingAlert;
  os_unfair_lock_assert_not_owner(&self->_lock);
  [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  v17 = objc_opt_class();
  v18 = var1 && var0 == 1;
  if (var1 && var0 == 1)
  {
    v19 = deemphasizingAlertCopy;
  }

  else
  {
    v19 = 0;
  }

  v20 = [v17 _soundForAlert:alertCopy toneIdentifierForDeemphasizingAlert:v19];

  if (v18 == 1)
  {
    vibrationIdentifier = forDeemphasizingAlertCopy;
  }

  else
  {
    vibrationIdentifier = [alertCopy vibrationIdentifier];
  }

  v22 = vibrationIdentifier;
  isValid = [v20 isValid];
  v24 = isValid;
  v26 = TLLogPlayback(isValid, v25);
  v27 = v26;
  if (!v24)
  {
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      selfCopy3 = self;
      v38 = 2114;
      v39 = alertCopy;
      v40 = 2114;
      v41 = v20;
      _os_log_error_impl(&dword_1D9356000, v27, OS_LOG_TYPE_ERROR, "%{public}@: _playAlert:(%{public}@) […]. Failed to begin playback with invalid sound: %{public}@.", buf, 0x20u);
    }

    os_unfair_lock_lock(&self->_lock);
    v31 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(TLAlertSystemSoundController *)self _removeAlert:alertCopy alertSystemSoundContext:contextCopy didFailToPrepareSound:1 appendingPlaybackCompletionContextToArray:v31];
    [contextCopy setLoadingSound:0];
    v33 = 0;
    v32 = 0;
    goto LABEL_20;
  }

  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    selfCopy3 = self;
    v38 = 2114;
    v39 = alertCopy;
    v40 = 2114;
    v41 = v20;
    _os_log_impl(&dword_1D9356000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@: _playAlert:(%{public}@) […]. Sound: %{public}@.", buf, 0x20u);
  }

  os_unfair_lock_lock(&self->_lock);
  if (([contextCopy isBeingInterrupted] & 1) == 0)
  {
    [contextCopy setSound:v20];
    [contextCopy setVibrationIdentifier:v22];
    [contextCopy setDeemphasized:v18 & 1];
    [contextCopy setLoadingSound:0];
    if (var1)
    {
      [(TLAlertSystemSoundController *)self _beginRequiringBacklightObservationForAlert:alertCopy alertSystemSoundContext:contextCopy];
    }

    v33 = [(TLAlertSystemSoundController *)self _prepareForPreemptingAlertsBeforeBeginningPlaybackOfAlert:alertCopy withSound:v20 playbackCompletionType:4];
    v32 = [(TLAlertSystemSoundController *)self _playTaskDescriptorForAlert:alertCopy withSound:v20 vibrationIdentifier:v22 alertSystemSoundContext:contextCopy];
    v31 = 0;
LABEL_20:
    os_unfair_lock_unlock(&self->_lock);
    goto LABEL_21;
  }

  [contextCopy setLoadingSound:0];
  os_unfair_lock_unlock(&self->_lock);
  v30 = TLLogPlayback(v28, v29);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy3 = self;
    v38 = 2114;
    v39 = alertCopy;
    _os_log_impl(&dword_1D9356000, v30, OS_LOG_TYPE_DEFAULT, "%{public}@: _playAlert:(%{public}@) […]. Aborting playback because this alert is already being interrupted.", buf, 0x16u);
  }

  v31 = 0;
  v32 = 0;
  v33 = 0;
LABEL_21:
  if ([v31 count])
  {
    [(TLAlertSystemSoundController *)self _processPlaybackCompletionContexts:v31];
  }

  if (v33)
  {
    [(TLAlertSystemSoundController *)self _processStopTasksDescriptor:v33];
  }

  if (v32)
  {
    v35 = v32;
    v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1];
    [(TLAlertSystemSoundController *)self _processPlayTaskDescriptors:v34];
  }
}

- ($61DF9F24A7329A1BB61181F7D05C320D)_considerDeferringPlayingAlertForBacklightStatusResolution:(id)resolution alertSystemSoundContext:(id)context
{
  v22 = *MEMORY[0x1E69E9840];
  resolutionCopy = resolution;
  contextCopy = context;
  os_unfair_lock_assert_owner(&self->_lock);
  backlightStatus = self->_backlightStatus;
  toneIdentifierForDeemphasizingAlert = [contextCopy toneIdentifierForDeemphasizingAlert];
  v10 = [toneIdentifierForDeemphasizingAlert length];

  v13 = 0;
  if (v10 && backlightStatus == -1)
  {
    v14 = TLLogPlayback(v11, v12);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138543618;
      selfCopy = self;
      v20 = 2114;
      v21 = resolutionCopy;
      _os_log_impl(&dword_1D9356000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: _considerDeferringPlayingAlertForBacklightStatusResolution:(%{public}@) […]. Deemphasizing this alert is allowed but the backlight status is unknown. Deferring until the backlight status is known.", &v18, 0x16u);
    }

    [(TLAlertSystemSoundController *)self _beginRequiringBacklightObservationForAlert:resolutionCopy alertSystemSoundContext:contextCopy];
    v13 = 256;
  }

  if (v10)
  {
    v15 = v13 + 1;
  }

  else
  {
    v15 = v13;
  }

  v16 = backlightStatus;
  v17 = v15;
  result.var1 = v17;
  result.var2 = BYTE1(v17);
  result.var0 = v16;
  return result;
}

- (id)_playTaskDescriptorForAlert:(id)alert withSound:(id)sound vibrationIdentifier:(id)identifier alertSystemSoundContext:(id)context
{
  contextCopy = context;
  identifierCopy = identifier;
  soundCopy = sound;
  alertCopy = alert;
  os_unfair_lock_assert_owner(&self->_lock);
  v14 = contextCopy;
  if ([contextCopy hasPlaybackStarted])
  {
    if ([contextCopy isDeemphasized])
    {
      if ([contextCopy hasDeemphasizedPlaybackStarted])
      {
        v14 = 0;
      }

      else
      {
        v14 = contextCopy;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  v15 = -[TLAlertSystemSoundPlayTaskDescriptor initWithAlert:sound:vibrationIdentifier:isDeemphasized:alertSystemSoundContext:]([TLAlertSystemSoundPlayTaskDescriptor alloc], "initWithAlert:sound:vibrationIdentifier:isDeemphasized:alertSystemSoundContext:", alertCopy, soundCopy, identifierCopy, [contextCopy isDeemphasized], v14);

  return v15;
}

- (void)_processPlayTaskDescriptors:(id)descriptors
{
  v77 = *MEMORY[0x1E69E9840];
  descriptorsCopy = descriptors;
  os_unfair_lock_assert_not_owner(&self->_lock);
  selfCopy = self;
  [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  obj = descriptorsCopy;
  v5 = [obj countByEnumeratingWithState:&v64 objects:v76 count:16];
  if (v5)
  {
    v7 = v5;
    v48 = 0;
    v45 = *v65;
    *&v6 = 138543874;
    v43 = v6;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v65 != v45)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v64 + 1) + 8 * i);
        alert = [v9 alert];
        sound = [v9 sound];
        vibrationIdentifier = [v9 vibrationIdentifier];
        isDeemphasized = [v9 isDeemphasized];
        [sound beginRequiringUnderlyingSoundLoaded];
        alertSystemSoundContext = [v9 alertSystemSoundContext];
        if (alertSystemSoundContext)
        {
          v15 = v48;
          if (!v48)
          {
            v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
          }

          v48 = v15;
          [v15 addObject:v9];
        }

        soundID = [sound soundID];
        v17 = [objc_opt_class() _optionsForSystemSoundAlert:alert withSound:sound vibrationIdentifier:vibrationIdentifier isDeemphasized:isDeemphasized];
        v19 = TLLogPlayback(v17, v18);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v43;
          selfCopy2 = self;
          v72 = 2114;
          v73 = alert;
          v74 = 2048;
          v75 = soundID;
          _os_log_impl(&dword_1D9356000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@: _processPlayTaskDescriptors:(%{public}@). Calling AudioServicesPlaySystemSoundWithOptions for soundID: %lu.", buf, 0x20u);
        }

        v57 = MEMORY[0x1E69E9820];
        v58 = 3221225472;
        v59 = __60__TLAlertSystemSoundController__processPlayTaskDescriptors___block_invoke;
        v60 = &unk_1E8579738;
        selfCopy3 = self;
        v62 = alert;
        v63 = soundID;
        v20 = alert;
        AudioServicesPlaySystemSoundWithOptions();
      }

      v7 = [obj countByEnumeratingWithState:&v64 objects:v76 count:16];
    }

    while (v7);
  }

  else
  {
    v48 = 0;
  }

  v21 = v48;
  if ([v48 count])
  {
    os_unfair_lock_lock(&self->_lock);
    v56 = 0u;
    v54 = 0u;
    v55 = 0u;
    v53 = 0u;
    v22 = v48;
    v23 = [v22 countByEnumeratingWithState:&v53 objects:v69 count:16];
    if (v23)
    {
      v24 = v23;
      v46 = 0;
      v25 = 0;
      v26 = *v54;
      do
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v54 != v26)
          {
            objc_enumerationMutation(v22);
          }

          v28 = *(*(&v53 + 1) + 8 * j);
          alertSystemSoundContext2 = [v28 alertSystemSoundContext];
          if (([alertSystemSoundContext2 hasPlaybackStarted] & 1) == 0)
          {
            [alertSystemSoundContext2 setHasPlaybackStarted:1];
            playbackObserver = [alertSystemSoundContext2 playbackObserver];
            if (playbackObserver)
            {
              if (!v25)
              {
                v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
              }

              [v25 addObject:v28];
            }
          }

          if ([alertSystemSoundContext2 isDeemphasized])
          {
            if (([alertSystemSoundContext2 hasDeemphasizedPlaybackStarted] & 1) == 0)
            {
              [alertSystemSoundContext2 setHasDeemphasizedPlaybackStarted:1];
              if ([alertSystemSoundContext2 shouldBeInterruptedAfterDeemphasizedPlaybackStarts])
              {
                v31 = v25;
                alert2 = [v28 alert];
                v34 = TLLogPlayback(alert2, v33);
                if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543618;
                  selfCopy2 = selfCopy;
                  v72 = 2114;
                  v73 = alert2;
                  _os_log_impl(&dword_1D9356000, v34, OS_LOG_TYPE_DEFAULT, "%{public}@: _processPlayTaskDescriptors:. Preparing for deferred interruption of %{public}@.", buf, 0x16u);
                }

                playbackCompletionContext = [alertSystemSoundContext2 playbackCompletionContext];
                playbackCompletionType = [playbackCompletionContext playbackCompletionType];

                stoppingOptionsForDeferredInterruption = [alertSystemSoundContext2 stoppingOptionsForDeferredInterruption];
                v68 = alert2;
                v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v68 count:1];
                v39 = [(TLAlertSystemSoundController *)selfCopy _prepareForStoppingAlerts:v38 withOptions:stoppingOptionsForDeferredInterruption playbackCompletionType:playbackCompletionType];

                v25 = v31;
                if (v39)
                {
                  v40 = v46;
                  if (!v46)
                  {
                    v40 = objc_alloc_init(MEMORY[0x1E695DF70]);
                  }

                  v46 = v40;
                  [v40 addObject:v39];
                }

                [alertSystemSoundContext2 setStoppingOptionsForDeferredInterruption:0];
                [alertSystemSoundContext2 setShouldBeInterruptedAfterDeemphasizedPlaybackStarts:0];
              }
            }
          }
        }

        v24 = [v22 countByEnumeratingWithState:&v53 objects:v69 count:16];
      }

      while (v24);
    }

    else
    {
      v46 = 0;
      v25 = 0;
    }

    os_unfair_lock_unlock(&selfCopy->_lock);
    if ([v25 count])
    {
      v41 = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __60__TLAlertSystemSoundController__processPlayTaskDescriptors___block_invoke_9;
      block[3] = &unk_1E85789A0;
      v52 = v25;
      dispatch_async(v41, block);
    }

    if ([v46 count])
    {
      audioQueue = selfCopy->_audioQueue;
      v49[0] = MEMORY[0x1E69E9820];
      v49[1] = 3221225472;
      v49[2] = __60__TLAlertSystemSoundController__processPlayTaskDescriptors___block_invoke_2;
      v49[3] = &unk_1E8578900;
      v49[4] = selfCopy;
      v50 = v46;
      [(TLAudioQueue *)audioQueue performSynchronousTaskWithOptions:1 block:v49];
    }

    v21 = v48;
  }
}

uint64_t __60__TLAlertSystemSoundController__processPlayTaskDescriptors___block_invoke(uint64_t a1, uint64_t a2)
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
    v12 = 2048;
    v13 = v6;
    _os_log_impl(&dword_1D9356000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: _processPlayTaskDescriptors:(%{public}@). Running completion block for AudioServicesPlaySystemSoundWithOptions for soundID: %lu.", &v8, 0x20u);
  }

  return [*(a1 + 32) _didCompletePlaybackForAlert:*(a1 + 40)];
}

void __60__TLAlertSystemSoundController__processPlayTaskDescriptors___block_invoke_9(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v12;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v12 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v11 + 1) + 8 * i);
        v7 = [v6 alert];
        v8 = [v6 alertSystemSoundContext];
        v9 = [v8 playbackObserver];
        if (objc_opt_respondsToSelector())
        {
          v10 = [[TLAlertPlaybackBeginEvent alloc] _initWithAudioSessionReporterID:0 isForMusicPlayback:0];
          [v9 alert:v7 didBeginPlayingWithEvent:v10];
        }

        else if (objc_opt_respondsToSelector())
        {
          [v9 alertDidBeginPlaying:v7];
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v3);
  }
}

void __60__TLAlertSystemSoundController__processPlayTaskDescriptors___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = TLLogPlayback(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    *buf = 138543362;
    v16 = v4;
    _os_log_impl(&dword_1D9356000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: _processPlayTaskDescriptors:. Processing deferred interruptions.", buf, 0xCu);
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = *(a1 + 40);
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(a1 + 32) _processStopTasksDescriptor:{*(*(&v10 + 1) + 8 * v9++), v10}];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (BOOL)stopPlayingAlerts:(id)alerts withOptions:(id)options playbackCompletionType:(int64_t)type
{
  optionsCopy = options;
  alertsCopy = alerts;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v10 = [(TLAlertSystemSoundController *)self _prepareForStoppingAlerts:alertsCopy withOptions:optionsCopy playbackCompletionType:type];

  os_unfair_lock_unlock(&self->_lock);
  interruptedAlertsToSound = [v10 interruptedAlertsToSound];
  v12 = [interruptedAlertsToSound count];

  if (v10)
  {
    audioQueue = self->_audioQueue;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __85__TLAlertSystemSoundController_stopPlayingAlerts_withOptions_playbackCompletionType___block_invoke;
    v15[3] = &unk_1E8578900;
    v15[4] = self;
    v16 = v10;
    [(TLAudioQueue *)audioQueue performTaskWithBlock:v15];
  }

  return v12 != 0;
}

- (id)_prepareForStoppingAlerts:(id)alerts withOptions:(id)options playbackCompletionType:(int64_t)type
{
  v57 = *MEMORY[0x1E69E9840];
  alertsCopy = alerts;
  optionsCopy = options;
  os_unfair_lock_assert_owner(&self->_lock);
  v9 = [alertsCopy count];
  v11 = TLLogPlayback(v9, v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    if (v9 == 1)
    {
      v12 = "";
    }

    else
    {
      v12 = "s";
    }

    v13 = NSStringFromTLAlertPlaybackCompletionType(type);
    *buf = 138544386;
    selfCopy5 = self;
    v49 = 2048;
    v50 = v9;
    v51 = 2082;
    v52 = v12;
    v53 = 2114;
    v54 = optionsCopy;
    v55 = 2112;
    v56 = v13;
    _os_log_impl(&dword_1D9356000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: _prepareForStoppingAlerts:([%lu alert%{public}s]) withOptions:(%{public}@) playbackCompletionType:(%@)", buf, 0x34u);
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = alertsCopy;
  v14 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (v14)
  {
    v15 = v14;
    v39 = 0;
    v40 = 0;
    v16 = *v43;
    v17 = optionsCopy;
    while (1)
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v43 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v42 + 1) + 8 * i);
        optionsCopy = [(NSMapTable *)self->_alertSystemSoundContexts objectForKey:v19, optionsCopy];
        v22 = optionsCopy;
        if (optionsCopy)
        {
          if ([optionsCopy isDeemphasized] && !objc_msgSend(v22, "hasDeemphasizedPlaybackStarted"))
          {
            playbackCompletionContext = [v22 playbackCompletionContext];
            [playbackCompletionContext setPlaybackCompletionType:type];
            [v22 setStoppingOptionsForDeferredInterruption:v17];
            v30 = [v22 setShouldBeInterruptedAfterDeemphasizedPlaybackStarts:1];
            sound = TLLogPlayback(v30, v31);
            if (os_log_type_enabled(sound, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543874;
              selfCopy5 = self;
              v49 = 2114;
              v50 = v19;
              v51 = 2114;
              v52 = v22;
              _os_log_impl(&dword_1D9356000, sound, OS_LOG_TYPE_DEFAULT, "%{public}@: _prepareForStoppingAlerts…: Deferring stop request for %{public}@ with system sound context: %{public}@. Will process stop request after deemphasized playback starts.", buf, 0x20u);
            }

            goto LABEL_34;
          }

          if (![v22 isBeingInterrupted])
          {
            goto LABEL_17;
          }

          optionsCopy = [v22 isBeingDeemphasized];
          if (optionsCopy)
          {
            [v22 setBeingDeemphasized:0];
LABEL_17:
            playbackCompletionContext = [v22 playbackCompletionContext];
            [playbackCompletionContext setPlaybackCompletionType:type];
            v24 = [v22 setBeingInterrupted:1];
            v26 = TLLogPlayback(v24, v25);
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543874;
              selfCopy5 = self;
              v49 = 2114;
              v50 = v19;
              v51 = 2114;
              v52 = v22;
              _os_log_impl(&dword_1D9356000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@: _prepareForStoppingAlerts…: Beginning interruption of %{public}@ with system sound context: %{public}@.", buf, 0x20u);
            }

            sound = [v22 sound];
            if (sound)
            {
              v29 = v40;
              if (!v40)
              {
                v29 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:0 valueOptions:0 capacity:1];
              }

              v40 = v29;
              [v29 setObject:sound forKey:v19];
            }

            else
            {
              typeCopy = type;
              v33 = TLLogPlayback(0, v27);
              if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543874;
                selfCopy5 = self;
                v49 = 2114;
                v50 = v19;
                v51 = 2114;
                v52 = playbackCompletionContext;
                _os_log_impl(&dword_1D9356000, v33, OS_LOG_TYPE_DEFAULT, "%{public}@: _prepareForStoppingAlerts…: %{public}@ didn't even get a chance to begin playing. Merely processing playback completion context: %{public}@.", buf, 0x20u);
              }

              type = typeCopy;
              if (playbackCompletionContext)
              {
                v34 = v39;
                if (!v39)
                {
                  v34 = objc_alloc_init(MEMORY[0x1E695DF70]);
                }

                v39 = v34;
                [(TLAlertSystemSoundController *)self _removeAlert:v19 alertSystemSoundContext:v22 didFailToPrepareSound:0 appendingPlaybackCompletionContextToArray:v34];
              }

              v17 = optionsCopy;
            }

LABEL_34:

            goto LABEL_35;
          }
        }

        playbackCompletionContext = TLLogPlayback(optionsCopy, v21);
        if (os_log_type_enabled(playbackCompletionContext, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543874;
          selfCopy5 = self;
          v49 = 2114;
          v50 = v19;
          v51 = 2114;
          v52 = v22;
          _os_log_impl(&dword_1D9356000, playbackCompletionContext, OS_LOG_TYPE_DEFAULT, "%{public}@: _prepareForStoppingAlerts…: Ignoring stop request for %{public}@ with system sound context: %{public}@.", buf, 0x20u);
        }

LABEL_35:
      }

      v15 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
      if (!v15)
      {
        goto LABEL_39;
      }
    }
  }

  v39 = 0;
  v40 = 0;
  v17 = optionsCopy;
LABEL_39:

  if ([v40 count] || objc_msgSend(v39, "count"))
  {
    v35 = objc_alloc_init(TLAlertSystemSoundStopTasksDescriptor);
    [(TLAlertSystemSoundStopTasksDescriptor *)v35 setInterruptedAlertsToSound:v40];
    v36 = v39;
    [(TLAlertSystemSoundStopTasksDescriptor *)v35 setPlaybackCompletionContextsToProcess:v39];
    [(TLAlertSystemSoundStopTasksDescriptor *)v35 setOptions:v17];
    [(TLAlertSystemSoundStopTasksDescriptor *)v35 setPlaybackCompletionType:type];
  }

  else
  {
    v35 = 0;
    v36 = v39;
  }

  return v35;
}

- (void)_processStopTasksDescriptor:(id)descriptor
{
  v42 = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  os_unfair_lock_assert_not_owner(&self->_lock);
  selfCopy = self;
  [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  options = [descriptorCopy options];
  playbackCompletionType = [descriptorCopy playbackCompletionType];
  v23 = descriptorCopy;
  interruptedAlertsToSound = [descriptorCopy interruptedAlertsToSound];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v7 = [interruptedAlertsToSound countByEnumeratingWithState:&v27 objects:v41 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v28;
    v24 = interruptedAlertsToSound;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(interruptedAlertsToSound);
        }

        v11 = *(*(&v27 + 1) + 8 * i);
        v12 = [interruptedAlertsToSound objectForKey:v11];
        soundID = [v12 soundID];
        v15 = soundID;
        if (options)
        {
          soundID = [options shouldWaitUntilEndOfCurrentRepetition];
          v16 = soundID ^ 1;
        }

        else
        {
          v16 = 1;
        }

        v17 = TLLogPlayback(soundID, v14);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          NSStringFromTLAlertPlaybackCompletionType(playbackCompletionType);
          v18 = options;
          v19 = v8;
          v21 = v20 = v9;
          *buf = 138544386;
          v32 = selfCopy;
          v33 = 2114;
          v34 = v21;
          v35 = 2048;
          v36 = v15;
          v37 = 1024;
          v38 = v16;
          v39 = 2114;
          v40 = v11;
          _os_log_impl(&dword_1D9356000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@: _processStopTasksDescriptor:. playbackCompletionType: %{public}@. Calling AudioServicesStopSystemSound for soundID: %lu with inStopNow = %{BOOL}d for alert %{public}@.", buf, 0x30u);

          v9 = v20;
          v8 = v19;
          options = v18;
          interruptedAlertsToSound = v24;
        }

        AudioServicesStopSystemSound();
      }

      v8 = [interruptedAlertsToSound countByEnumeratingWithState:&v27 objects:v41 count:16];
    }

    while (v8);
  }

  playbackCompletionContextsToProcess = [v23 playbackCompletionContextsToProcess];
  [(TLAlertSystemSoundController *)selfCopy _processPlaybackCompletionContexts:playbackCompletionContextsToProcess];
}

- (id)_prepareForPreemptingAlertsBeforeBeginningPlaybackOfAlert:(id)alert withSound:(id)sound playbackCompletionType:(int64_t)type
{
  v39 = *MEMORY[0x1E69E9840];
  alertCopy = alert;
  soundCopy = sound;
  os_unfair_lock_assert_owner(&self->_lock);
  configuration = [alertCopy configuration];
  shouldRepeat = [configuration shouldRepeat];
  v27 = configuration;
  isForPreview = [configuration isForPreview];
  v28 = soundCopy;
  soundID = [soundCopy soundID];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  selfCopy = self;
  obj = self->_alertSystemSoundContexts;
  v12 = [(NSMapTable *)obj countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (!v12)
  {
    v14 = 0;
    goto LABEL_21;
  }

  v13 = v12;
  v14 = 0;
  v15 = *v35;
  v31 = shouldRepeat ^ 1;
  v16 = isForPreview ^ 1;
  do
  {
    for (i = 0; i != v13; ++i)
    {
      if (*v35 != v15)
      {
        objc_enumerationMutation(obj);
      }

      v18 = *(*(&v34 + 1) + 8 * i);
      if (v18 != alertCopy)
      {
        v19 = [(NSMapTable *)selfCopy->_alertSystemSoundContexts objectForKey:*(*(&v34 + 1) + 8 * i)];
        sound = [v19 sound];
        shouldRepeat2 = [sound soundID] == soundID;

        if (((shouldRepeat2 | v31) & 1) == 0)
        {
          configuration2 = [v18 configuration];
          shouldRepeat2 = [configuration2 shouldRepeat];
        }

        if ((shouldRepeat2 | v16))
        {
          if (!shouldRepeat2)
          {
            goto LABEL_16;
          }
        }

        else
        {
          configuration3 = [v18 configuration];
          isForPreview2 = [configuration3 isForPreview];

          if ((isForPreview2 & 1) == 0)
          {
LABEL_16:

            continue;
          }
        }

        if (!v14)
        {
          v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
        }

        [v14 addObject:v18];
        goto LABEL_16;
      }
    }

    v13 = [(NSMapTable *)obj countByEnumeratingWithState:&v34 objects:v38 count:16];
  }

  while (v13);
LABEL_21:

  v25 = [(TLAlertSystemSoundController *)selfCopy _prepareForStoppingAlerts:v14 withOptions:0 playbackCompletionType:type];

  return v25;
}

- (void)preheatForAlert:(id)alert completionHandler:(id)handler
{
  alertCopy = alert;
  handlerCopy = handler;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  backlightStatus = self->_backlightStatus;
  os_unfair_lock_unlock(&self->_lock);
  audioQueue = self->_audioQueue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __66__TLAlertSystemSoundController_preheatForAlert_completionHandler___block_invoke;
  v12[3] = &unk_1E8579760;
  v12[4] = self;
  v13 = alertCopy;
  v14 = handlerCopy;
  v15 = backlightStatus;
  v10 = handlerCopy;
  v11 = alertCopy;
  [(TLAudioQueue *)audioQueue performTaskWithBlock:v12];
}

- (void)_preheatForAlert:(id)alert backlightStatus:(int64_t)status completionHandler:(id)handler
{
  v36 = *MEMORY[0x1E69E9840];
  alertCopy = alert;
  handlerCopy = handler;
  os_unfair_lock_assert_not_owner(&self->_lock);
  [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  v10 = [objc_opt_class() _toneIdentifierForDeemphasizingAlert:alertCopy];
  v11 = [v10 length];
  v12 = objc_opt_class();
  if (v11)
  {
    v13 = status == 1;
  }

  else
  {
    v13 = 0;
  }

  if (v13)
  {
    v14 = v10;
  }

  else
  {
    v14 = 0;
  }

  v15 = [v12 _soundForAlert:alertCopy toneIdentifierForDeemphasizingAlert:v14];
  soundID = [v15 soundID];
  isValid = [v15 isValid];
  v18 = isValid;
  v20 = TLLogPlayback(isValid, v19);
  v21 = v20;
  if (v18)
  {
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138544130;
      selfCopy2 = self;
      v30 = 2114;
      v31 = alertCopy;
      v32 = 2114;
      v33 = v15;
      v34 = 2048;
      v35 = soundID;
      _os_log_impl(&dword_1D9356000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@: _preheatForAlert:(%{public}@). Pre-heating succeeded with sound: %{public}@ and soundID: %lu.", buf, 0x2Au);
    }

    v22 = 0;
    if (!handlerCopy)
    {
      goto LABEL_16;
    }

LABEL_15:
    v23 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __83__TLAlertSystemSoundController__preheatForAlert_backlightStatus_completionHandler___block_invoke;
    block[3] = &unk_1E8579788;
    v26 = handlerCopy;
    v27 = v22 == 0;
    v25 = v22;
    dispatch_async(v23, block);

    goto LABEL_16;
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    *buf = 138544130;
    selfCopy2 = self;
    v30 = 2114;
    v31 = alertCopy;
    v32 = 2114;
    v33 = v15;
    v34 = 2048;
    v35 = soundID;
    _os_log_error_impl(&dword_1D9356000, v21, OS_LOG_TYPE_ERROR, "%{public}@: _preheatForAlert:(%{public}@). Pre-heating failed with sound: %{public}@ and soundID: %lu.", buf, 0x2Au);
  }

  v22 = [MEMORY[0x1E696ABC0] tl_errorWithDomain:@"TLAlertErrorDomain" description:{@"Failed to pre-heat alert %@.", alertCopy}];
  if (handlerCopy)
  {
    goto LABEL_15;
  }

LABEL_16:
}

+ (id)_soundForAlert:(id)alert toneIdentifierForDeemphasizingAlert:(id)deemphasizingAlert
{
  alertCopy = alert;
  deemphasizingAlertCopy = deemphasizingAlert;
  configuration = [alertCopy configuration];
  externalToneFileURL = [configuration externalToneFileURL];
  if (externalToneFileURL)
  {
    v9 = [TLSystemSound alloc];
    v10 = [(TLSystemSound *)v9 initWithSoundFileURL:externalToneFileURL soundID:kSystemSoundID_InvalidTone requiresLongFormPlayback:0];
    goto LABEL_16;
  }

  toneIdentifier = [alertCopy toneIdentifier];
  if ([deemphasizingAlertCopy length])
  {
    v12 = deemphasizingAlertCopy;

    toneIdentifier = v12;
  }

  isForPreview = [configuration isForPreview];
  v14 = +[TLToneManager sharedToneManager];
  v15 = v14;
  if (isForPreview)
  {
    [v14 _previewSoundForToneIdentifier:toneIdentifier];
  }

  else
  {
    [v14 _soundForToneIdentifier:toneIdentifier];
  }
  v10 = ;

  if (!v10 || (v16 = [(TLSystemSound *)v10 soundID], v16 == kSystemSoundID_NoneTone))
  {
    v17 = +[TLCapabilitiesManager sharedCapabilitiesManager];
    hasVibratorCapability = [v17 hasVibratorCapability];

    if (hasVibratorCapability)
    {
      externalVibrationPattern = [configuration externalVibrationPattern];
      if (externalVibrationPattern || ([configuration externalVibrationPatternFileURL], (externalVibrationPattern = objc_claimAutoreleasedReturnValue()) != 0))
      {
      }

      else
      {
        vibrationIdentifier = [alertCopy vibrationIdentifier];
        v23 = [vibrationIdentifier isEqualToString:@"<none>"];

        if (v23)
        {
          goto LABEL_15;
        }
      }

      v20 = [[TLSystemSound alloc] initWithSoundFileURL:0 soundID:4095 requiresLongFormPlayback:0];

      v10 = v20;
    }
  }

LABEL_15:

LABEL_16:

  return v10;
}

+ (id)_toneIdentifierForDeemphasizingAlert:(id)alert
{
  alertCopy = alert;
  configuration = [alertCopy configuration];
  if ([configuration isForPreview])
  {
    v5 = 0;
  }

  else
  {
    v6 = +[TLToneManager sharedToneManager];
    type = [alertCopy type];
    topic = [configuration topic];
    toneIdentifier = [alertCopy toneIdentifier];
    v5 = [v6 _toneIdentifierForDeemphasizingAlertWithType:type topic:topic regularToneIdentifier:toneIdentifier];
  }

  return v5;
}

+ (id)_vibrationIdentifierForDeemphasizingAlert:(id)alert correspondingToneIdentifierForDeemphasizingAlert:(id)deemphasizingAlert
{
  if (deemphasizingAlert)
  {
    deemphasizingAlertCopy = deemphasizingAlert;
    alertCopy = alert;
    configuration = [alertCopy configuration];
    v8 = +[TLVibrationManager sharedVibrationManager];
    vibrationIdentifier = [alertCopy vibrationIdentifier];
    type = [alertCopy type];

    topic = [configuration topic];
    v12 = [v8 _sanitizeVibrationIdentifier:vibrationIdentifier forAlertType:type topic:topic targetDevice:objc_msgSend(configuration correspondingToneIdentifier:"targetDevice") didFallbackToCurrentVibrationIdentifier:{deemphasizingAlertCopy, 0}];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (unsigned)_soundBehaviorForAlert:(id)alert withSound:(id)sound isDeemphasized:(BOOL)deemphasized
{
  soundCopy = sound;
  configuration = [alert configuration];
  type = [configuration type];
  if ([configuration isForPreview])
  {
    if ((type - 4) < 9)
    {
      v9 = dword_1D93A5B28[type - 4];
      goto LABEL_22;
    }

    v10 = 1307;
    goto LABEL_11;
  }

  v9 = 0;
  v10 = 1;
  if (type <= 7)
  {
    if (type <= 4)
    {
      if (type == 1)
      {
        goto LABEL_22;
      }

      if (type != 2)
      {
        if (type == 3)
        {
          v9 = 1003;
          goto LABEL_22;
        }

        goto LABEL_11;
      }

      topic = [configuration topic];
      v13 = [topic isEqualToString:@"TLAlertTopicTextMessageInConversation"];

      if (v13)
      {
        v9 = 1003;
      }

      else
      {
        v9 = 1007;
      }

      goto LABEL_22;
    }

    if (type == 5)
    {
      v9 = 1000;
      goto LABEL_22;
    }

LABEL_21:
    v9 = 1001;
    goto LABEL_22;
  }

  if (type <= 10)
  {
    if (type != 8 && type != 9)
    {
      v9 = 1005;
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if (type == 11)
  {
    v9 = 1017;
    goto LABEL_22;
  }

  if (type == 12)
  {
    v9 = 1007;
    goto LABEL_22;
  }

  if (type != 28)
  {
LABEL_11:
    if (type == 13)
    {
      if ([soundCopy requiresLongFormPlayback])
      {
        v9 = 1403;
      }

      else
      {
        v9 = v10;
      }
    }

    else
    {
      v9 = v10;
    }
  }

LABEL_22:

  return v9;
}

+ (id)_vibrationPatternForAlert:(id)alert withSound:(id)sound vibrationIdentifier:(id)identifier
{
  alertCopy = alert;
  identifierCopy = identifier;
  v8 = +[TLCapabilitiesManager sharedCapabilitiesManager];
  hasVibratorCapability = [v8 hasVibratorCapability];

  if (hasVibratorCapability)
  {
    configuration = [alertCopy configuration];
    externalVibrationPattern = [configuration externalVibrationPattern];
    if (!externalVibrationPattern)
    {
      externalVibrationPatternFileURL = [configuration externalVibrationPatternFileURL];
      if (externalVibrationPatternFileURL)
      {
        externalVibrationPattern = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:externalVibrationPatternFileURL];
      }

      else
      {
        externalVibrationPattern = 0;
      }
    }

    v13 = [TLAlertPlaybackPolicy shouldRepeatVibrationForAlert:alertCopy withPlaybackBackend:1];
    if (v13 && externalVibrationPattern)
    {
      v14 = [[TLVibrationPattern alloc] initWithPropertyListRepresentation:externalVibrationPattern];
      _artificiallyRepeatingPropertyListRepresentation = [(TLVibrationPattern *)v14 _artificiallyRepeatingPropertyListRepresentation];

      externalVibrationPattern = _artificiallyRepeatingPropertyListRepresentation;
    }

    if (!externalVibrationPattern)
    {
      if ([identifierCopy isEqualToString:@"Built-In-System-Sound-ID-Vibration"])
      {
        externalVibrationPattern = 0;
      }

      else
      {
        v16 = +[TLVibrationManager sharedVibrationManager];
        externalVibrationPattern = [v16 patternForVibrationWithIdentifier:identifierCopy repeating:v13];
      }
    }
  }

  else
  {
    externalVibrationPattern = 0;
  }

  return externalVibrationPattern;
}

+ (unsigned)_componentSuppressionFlagsForAlert:(id)alert
{
  alertCopy = alert;
  toneIdentifier = [alertCopy toneIdentifier];
  v5 = [toneIdentifier isEqualToString:@"<none>"];

  vibrationIdentifier = [alertCopy vibrationIdentifier];

  LODWORD(alertCopy) = [vibrationIdentifier isEqualToString:@"<none>"];
  if (alertCopy)
  {
    return v5 | 2;
  }

  else
  {
    return v5;
  }
}

+ (id)_descriptionForAlertComponentsSuppressionFlags:(unsigned int)flags
{
  if (flags)
  {
    v5 = @"kAudioServicesFlag_SuppressAudio";
    if ((flags & 2) != 0)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ | %@", @"kAudioServicesFlag_SuppressAudio", @"kAudioServicesFlag_SuppressVibe", v3];
    }
  }

  else if ((flags & 2) != 0)
  {
    v5 = @"kAudioServicesFlag_SuppressVibe";
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)_optionsForSystemSoundAlert:(id)alert withSound:(id)sound vibrationIdentifier:(id)identifier isDeemphasized:(BOOL)deemphasized
{
  deemphasizedCopy = deemphasized;
  v62 = *MEMORY[0x1E69E9840];
  alertCopy = alert;
  soundCopy = sound;
  identifierCopy = identifier;
  v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
  configuration = [alertCopy configuration];
  v15 = [objc_opt_class() _soundBehaviorForAlert:alertCopy withSound:soundCopy isDeemphasized:deemphasizedCopy];
  if (v15)
  {
    v17 = v15;
    v18 = TLLogPlayback(v15, v16);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v54 = 138544130;
      selfCopy8 = self;
      v56 = 2114;
      v57 = alertCopy;
      v58 = 2114;
      v59 = soundCopy;
      v60 = 2048;
      *&v61 = v17;
      _os_log_impl(&dword_1D9356000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@: +_optionsForSystemSoundAlert:(%{public}@) withSound:(%{public}@). kAudioServicesPlaySystemSoundOptionBehaviorKey => %lu.", &v54, 0x2Au);
    }

    v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v17];
    [v13 setObject:v19 forKey:*MEMORY[0x1E695A8B0]];
  }

  v20 = [objc_opt_class() _componentSuppressionFlagsForAlert:alertCopy];
  if (!v20)
  {
    goto LABEL_9;
  }

  v22 = v20;
  v23 = TLLogPlayback(v20, v21);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    [self _descriptionForAlertComponentsSuppressionFlags:v22];
    v24 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    v54 = 138544130;
    selfCopy8 = self;
    v56 = 2114;
    v57 = alertCopy;
    v58 = 2114;
    v59 = soundCopy;
    v60 = 2114;
    v61 = v24;
    _os_log_impl(&dword_1D9356000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@: +_optionsForSystemSoundAlert:(%{public}@) withSound:(%{public}@). kAudioServicesPlaySystemSoundOptionFlagsKey => %{public}@.", &v54, 0x2Au);
  }

  v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v22];
  [v13 setObject:v25 forKey:*MEMORY[0x1E695A8B8]];

  if ((v22 & 2) == 0)
  {
LABEL_9:
    v26 = [objc_opt_class() _vibrationPatternForAlert:alertCopy withSound:soundCopy vibrationIdentifier:identifierCopy];
    if (v26)
    {
      v28 = v26;
      v29 = TLLogPlayback(v26, v27);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v54 = 138543874;
        selfCopy8 = self;
        v56 = 2114;
        v57 = alertCopy;
        v58 = 2114;
        v59 = soundCopy;
        _os_log_impl(&dword_1D9356000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@: +_optionsForSystemSoundAlert:(%{public}@) withSound:(%{public}@). kAudioServicesPlaySystemSoundOptionVibrationPatternKey => non-nil.", &v54, 0x20u);
      }

      [v13 setObject:v28 forKey:*MEMORY[0x1E695A8E0]];
    }
  }

  shouldRepeat = [configuration shouldRepeat];
  if (shouldRepeat)
  {
    v32 = TLLogPlayback(shouldRepeat, v31);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v54 = 138543874;
      selfCopy8 = self;
      v56 = 2114;
      v57 = alertCopy;
      v58 = 2114;
      v59 = soundCopy;
      _os_log_impl(&dword_1D9356000, v32, OS_LOG_TYPE_DEFAULT, "%{public}@: +_optionsForSystemSoundAlert:(%{public}@) withSound:(%{public}@). kAudioServicesPlaySystemSoundOptionLoopKey => true.", &v54, 0x20u);
    }

    [v13 setObject:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E695A8C8]];
  }

  v33 = +[TLToneManager sharedToneManager];
  toneIdentifier = [alertCopy toneIdentifier];
  [v33 _unduckTimeForToneIdentifier:toneIdentifier];
  v36 = v35;

  if (llround(v36 * 8388608.0) != llround(0.0))
  {
    v39 = TLLogPlayback(v37, v38);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      v54 = 138544130;
      selfCopy8 = self;
      v56 = 2114;
      v57 = alertCopy;
      v58 = 2114;
      v59 = soundCopy;
      v60 = 2048;
      v61 = v36;
      _os_log_impl(&dword_1D9356000, v39, OS_LOG_TYPE_DEFAULT, "%{public}@: +_optionsForSystemSoundAlert:(%{public}@) withSound:(%{public}@). kAudioServicesPlaySystemSoundOptionUnduckTimeKey => %.3f.", &v54, 0x2Au);
    }

    v40 = [MEMORY[0x1E696AD98] numberWithDouble:v36];
    [v13 setObject:v40 forKey:*MEMORY[0x1E695A8D8]];
  }

  _hasCustomAudioVolume = [configuration _hasCustomAudioVolume];
  if (_hasCustomAudioVolume)
  {
    v43 = TLLogPlayback(_hasCustomAudioVolume, v42);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      [configuration audioVolume];
      v54 = 138544130;
      selfCopy8 = self;
      v56 = 2114;
      v57 = alertCopy;
      v58 = 2114;
      v59 = soundCopy;
      v60 = 2048;
      v61 = v44;
      _os_log_impl(&dword_1D9356000, v43, OS_LOG_TYPE_DEFAULT, "%{public}@: +_optionsForSystemSoundAlert:(%{public}@) withSound:(%{public}@). kAudioServicesPlaySystemSoundOptionVolumeKey => %f.", &v54, 0x2Au);
    }

    v45 = MEMORY[0x1E696AD98];
    [configuration audioVolume];
    v46 = [v45 numberWithFloat:?];
    [v13 setObject:v46 forKey:*MEMORY[0x1E695A8E8]];
  }

  shouldIgnoreRingerSwitch = [configuration shouldIgnoreRingerSwitch];
  if ((shouldIgnoreRingerSwitch & 1) != 0 || (shouldIgnoreRingerSwitch = [configuration isForPreview], shouldIgnoreRingerSwitch))
  {
    v49 = TLLogPlayback(shouldIgnoreRingerSwitch, v48);
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      v54 = 138543874;
      selfCopy8 = self;
      v56 = 2114;
      v57 = alertCopy;
      v58 = 2114;
      v59 = soundCopy;
      _os_log_impl(&dword_1D9356000, v49, OS_LOG_TYPE_DEFAULT, "%{public}@: +_optionsForSystemSoundAlert:(%{public}@) withSound:(%{public}@). kAudioServicesPlaySystemSoundOptionIgnoreRingerSwitchKey => true.", &v54, 0x20u);
    }

    [v13 setObject:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E695A8C0]];
  }

  prefersToDisallowExternalPlayback = [configuration prefersToDisallowExternalPlayback];
  if (prefersToDisallowExternalPlayback)
  {
    v52 = TLLogPlayback(prefersToDisallowExternalPlayback, v51);
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
    {
      v54 = 138543874;
      selfCopy8 = self;
      v56 = 2114;
      v57 = alertCopy;
      v58 = 2114;
      v59 = soundCopy;
      _os_log_impl(&dword_1D9356000, v52, OS_LOG_TYPE_DEFAULT, "%{public}@: +_optionsForSystemSoundAlert:(%{public}@) withSound:(%{public}@). kAudioServicesPlaySystemSoundOptionPrefersToDisallowExternalPlaybackKey => true.", &v54, 0x20u);
    }

    [v13 setObject:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E695A8D0]];
  }

  return v13;
}

- (void)_didCompletePlaybackForAlert:(id)alert
{
  v56 = *MEMORY[0x1E69E9840];
  alertCopy = alert;
  os_unfair_lock_assert_not_owner(&self->_lock);
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  os_unfair_lock_lock(&self->_lock);
  v6 = [(NSMapTable *)self->_alertSystemSoundContexts objectForKey:alertCopy];
  sound = [v6 sound];
  [v6 setSound:0];
  v8 = [v6 setVibrationIdentifier:0];
  v10 = TLLogPlayback(v8, v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [alertCopy debugDescription];
    *buf = 138544130;
    *&buf[4] = self;
    *&buf[12] = 2114;
    *&buf[14] = v11;
    *&buf[22] = 2114;
    v54 = sound;
    LOWORD(v55) = 2114;
    *(&v55 + 2) = v6;
    _os_log_impl(&dword_1D9356000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: _didCompletePlaybackForAlert:(%{public}@). Removed sound %{public}@ from %{public}@.", buf, 0x2Au);
  }

  playbackCompletionContext = [v6 playbackCompletionContext];
  if (playbackCompletionContext)
  {
    toneIdentifierForDeemphasizingAlert = [v6 toneIdentifierForDeemphasizingAlert];
    vibrationIdentifierForDeemphasizingAlert = [v6 vibrationIdentifierForDeemphasizingAlert];
    if ([toneIdentifierForDeemphasizingAlert length] && objc_msgSend(v6, "isBeingDeemphasized"))
    {
      [v6 setLoadingSound:1];
      v15 = 1;
      goto LABEL_10;
    }

    [(TLAlertSystemSoundController *)self _removeAlert:alertCopy alertSystemSoundContext:v6 didFailToPrepareSound:0 appendingPlaybackCompletionContextToArray:v5];
  }

  else
  {
    vibrationIdentifierForDeemphasizingAlert = 0;
    toneIdentifierForDeemphasizingAlert = 0;
  }

  v15 = 0;
LABEL_10:

  os_unfair_lock_unlock(&self->_lock);
  if (!v15)
  {
    v21 = 0;
    goto LABEL_21;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v54 = __Block_byref_object_copy__3;
  *&v55 = __Block_byref_object_dispose__3;
  *(&v55 + 1) = 0;
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = 0;
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__3;
  v43 = __Block_byref_object_dispose__3;
  v44 = 0;
  audioQueue = self->_audioQueue;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __61__TLAlertSystemSoundController__didCompletePlaybackForAlert___block_invoke;
  v32[3] = &unk_1E85797B0;
  v36 = buf;
  v32[4] = self;
  v17 = alertCopy;
  v33 = v17;
  v34 = toneIdentifierForDeemphasizingAlert;
  v37 = &v45;
  v38 = &v39;
  v35 = vibrationIdentifierForDeemphasizingAlert;
  [(TLAudioQueue *)audioQueue performSynchronousTaskWithOptions:1 block:v32];
  os_unfair_lock_lock(&self->_lock);
  v18 = [(NSMapTable *)self->_alertSystemSoundContexts objectForKey:v17];
  v20 = v18;
  if (!v18)
  {
    v22 = TLLogPlayback(0, v19);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [v17 debugDescription];
      *v49 = 138543618;
      selfCopy = self;
      v51 = 2114;
      v52 = v23;
      _os_log_impl(&dword_1D9356000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@: _didCompletePlaybackForAlert:(%{public}@). System sound context for this alert has already been removed. This likely indicates that the alert was stopped programmatically around the time we were trying to load the deemphasized sound. Aborting deemphasizing process immediately.", v49, 0x16u);
    }

    goto LABEL_19;
  }

  if ((v46[3] & 1) == 0)
  {
    [(TLAlertSystemSoundController *)self _removeAlert:v17 alertSystemSoundContext:v18 didFailToPrepareSound:1 appendingPlaybackCompletionContextToArray:v5];
    [v20 setLoadingSound:0];
LABEL_19:
    v21 = 0;
    goto LABEL_20;
  }

  [v18 setSound:*(*&buf[8] + 40)];
  [v20 setVibrationIdentifier:v40[5]];
  [v20 setLoadingSound:0];
  [v20 setBeingDeemphasized:0];
  [v20 setBeingInterrupted:0];
  [v20 setDeemphasized:1];
  v21 = [(TLAlertSystemSoundController *)self _playTaskDescriptorForAlert:v17 withSound:*(*&buf[8] + 40) vibrationIdentifier:v40[5] alertSystemSoundContext:v20];
LABEL_20:

  os_unfair_lock_unlock(&self->_lock);
  _Block_object_dispose(&v39, 8);

  _Block_object_dispose(&v45, 8);
  _Block_object_dispose(buf, 8);

LABEL_21:
  if (sound | v21)
  {
    v24 = self->_audioQueue;
    v25 = MEMORY[0x1E69E9820];
    v26 = 3221225472;
    v27 = __61__TLAlertSystemSoundController__didCompletePlaybackForAlert___block_invoke_42;
    v28 = &unk_1E8579038;
    v29 = sound;
    v30 = v21;
    selfCopy2 = self;
    [(TLAudioQueue *)v24 performSynchronousTaskWithOptions:1 block:&v25];
  }

  if ([v5 count])
  {
    [(TLAlertSystemSoundController *)self _processPlaybackCompletionContexts:v5];
  }
}

void __61__TLAlertSystemSoundController__didCompletePlaybackForAlert___block_invoke(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [objc_opt_class() _soundForAlert:*(a1 + 40) toneIdentifierForDeemphasizingAlert:*(a1 + 48)];
  v4 = *(*(a1 + 64) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  *(*(*(a1 + 72) + 8) + 24) = [*(*(*(a1 + 64) + 8) + 40) isValid];
  objc_storeStrong((*(*(a1 + 80) + 8) + 40), *(a1 + 56));
  v8 = TLLogPlayback(v6, v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v10 = [*(a1 + 40) debugDescription];
    v11 = *(*(*(a1 + 64) + 8) + 40);
    v12 = *(*(*(a1 + 80) + 8) + 40);
    v13 = 138544130;
    v14 = v9;
    v15 = 2114;
    v16 = v10;
    v17 = 2114;
    v18 = v11;
    v19 = 2114;
    v20 = v12;
    _os_log_impl(&dword_1D9356000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: _didCompletePlaybackForAlert:(%{public}@). About to begin playing deemphasized sound: %{public}@ and vibration identifier: %{public}@.", &v13, 0x2Au);
  }
}

void __61__TLAlertSystemSoundController__didCompletePlaybackForAlert___block_invoke_42(void *a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  if (v2)
  {
    [v2 endRequiringUnderlyingSoundLoaded];
  }

  v3 = a1[5];
  if (v3)
  {
    v4 = a1[6];
    v6[0] = v3;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
    [v4 _processPlayTaskDescriptors:v5];
  }
}

- (void)_processPlaybackCompletionContexts:(id)contexts
{
  contextsCopy = contexts;
  os_unfair_lock_assert_not_owner(&self->_lock);
  if ([contextsCopy count])
  {
    v5 = [(TLAlertSystemSoundController *)self description];
    v6 = dispatch_get_global_queue(0, 0);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __67__TLAlertSystemSoundController__processPlaybackCompletionContexts___block_invoke;
    v8[3] = &unk_1E8578900;
    v9 = contextsCopy;
    v10 = v5;
    v7 = v5;
    dispatch_async(v6, v8);
  }
}

void __67__TLAlertSystemSoundController__processPlaybackCompletionContexts___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) count])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v2 = *(a1 + 32);
    v3 = [v2 countByEnumeratingWithState:&v14 objects:v22 count:16];
    if (v3)
    {
      v5 = v3;
      v6 = *v15;
      do
      {
        v7 = 0;
        do
        {
          if (*v15 != v6)
          {
            objc_enumerationMutation(v2);
          }

          v8 = *(*(&v14 + 1) + 8 * v7);
          v9 = TLLogPlayback(v3, v4);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            v10 = *(a1 + 40);
            *buf = 138543618;
            v19 = v10;
            v20 = 2114;
            v21 = v8;
            _os_log_impl(&dword_1D9356000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: -_processPlaybackCompletionContexts: […]: Processing %{public}@.", buf, 0x16u);
          }

          v11 = [v8 playbackCompletionType];
          v12 = [v8 error];
          v13 = [v8 completionHandler];
          if (v13)
          {
            [v8 setCompletionHandler:0];
            (v13)[2](v13, v11, v12);
          }

          ++v7;
        }

        while (v5 != v7);
        v3 = [v2 countByEnumeratingWithState:&v14 objects:v22 count:16];
        v5 = v3;
      }

      while (v3);
    }
  }
}

- (void)_removeAlert:(id)alert alertSystemSoundContext:(id)context didFailToPrepareSound:(BOOL)sound appendingPlaybackCompletionContextToArray:(id)array
{
  soundCopy = sound;
  v26 = *MEMORY[0x1E69E9840];
  alertCopy = alert;
  contextCopy = context;
  arrayCopy = array;
  os_unfair_lock_assert_owner(&self->_lock);
  playbackCompletionContext = [contextCopy playbackCompletionContext];
  v15 = playbackCompletionContext;
  if (soundCopy)
  {
    [playbackCompletionContext setPlaybackCompletionType:5];
    v16 = [MEMORY[0x1E696ABC0] tl_errorWithDomain:@"TLAlertErrorDomain" description:@"Failed to prepare tone sound ID for playback."];
    [v15 setError:v16];
  }

  v17 = TLLogPlayback(playbackCompletionContext, v14);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138544130;
    selfCopy = self;
    v20 = 2114;
    v21 = alertCopy;
    v22 = 2114;
    v23 = contextCopy;
    v24 = 1024;
    v25 = soundCopy;
    _os_log_impl(&dword_1D9356000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@: _removeAlert:(%{public}@) alertSystemSoundContext:(%{public}@) didFailToPrepareSound:(%{BOOL}u)…", &v18, 0x26u);
  }

  [(TLAlertSystemSoundController *)self _endRequiringBacklightObservationForAlert:alertCopy alertSystemSoundContext:contextCopy];
  [(NSMapTable *)self->_alertSystemSoundContexts removeObjectForKey:alertCopy];
  if (v15)
  {
    [contextCopy setPlaybackCompletionContext:0];
    [arrayCopy addObject:v15];
  }
}

- (void)_beginRequiringBacklightObservationForAlert:(id)alert alertSystemSoundContext:(id)context
{
  v45 = *MEMORY[0x1E69E9840];
  alertCopy = alert;
  contextCopy = context;
  os_unfair_lock_assert_owner(&self->_lock);
  isRequiringBacklightObservation = [contextCopy isRequiringBacklightObservation];
  if (isRequiringBacklightObservation)
  {
    v10 = TLLogGeneral(isRequiringBacklightObservation, v9);
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);

    if (v11)
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ToneLibrary/Library/Playback/BackEnds/SystemSound/TLAlertSystemSoundController.m"];
      v16 = TLLogGeneral(v14, v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        lastPathComponent = [v14 lastPathComponent];
        callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
        v35 = 136381443;
        selfCopy = "[TLAlertSystemSoundController _beginRequiringBacklightObservationForAlert:alertSystemSoundContext:]";
        v37 = 2113;
        v38 = lastPathComponent;
        v39 = 2049;
        v40 = 1243;
        v41 = 2113;
        v42 = callStackSymbols;
        _os_log_impl(&dword_1D9356000, v16, OS_LOG_TYPE_DEFAULT, "*** Assertion failure in %{private}s, %{private}@:%{private}lu.\n%{private}@", &v35, 0x2Au);
      }
    }

    else
    {
      v14 = TLLogGeneral(v12, v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [(TLToneManager *)v14 _migrateLegacyToneSettings:v19];
      }
    }

    v28 = TLLogGeneral(v26, v27);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      [(TLAlertSystemSoundController *)alertCopy _beginRequiringBacklightObservationForAlert:contextCopy alertSystemSoundContext:v28];
    }
  }

  v29 = [contextCopy setRequiringBacklightObservation:1];
  backlightObservationRequestsCount = self->_backlightObservationRequestsCount;
  self->_backlightObservationRequestsCount = backlightObservationRequestsCount + 1;
  v32 = TLLogPlayback(v29, v31);
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    v33 = self->_backlightObservationRequestsCount;
    v35 = 138544386;
    selfCopy = self;
    v37 = 2114;
    v38 = alertCopy;
    v39 = 2114;
    v40 = contextCopy;
    v41 = 2048;
    v42 = backlightObservationRequestsCount;
    v43 = 2048;
    v44 = v33;
    _os_log_impl(&dword_1D9356000, v32, OS_LOG_TYPE_DEFAULT, "%{public}@: -_beginRequiringBacklightObservationForAlert:(%{public}@) alertSystemSoundContext:(%{public}@); requests count incremented from %lu to %lu.", &v35, 0x34u);
  }

  if (self->_backlightObservationRequestsCount == 1)
  {
    v34 = +[TLBacklight sharedBacklight];
    [v34 addObserver:self];
  }
}

- (void)_endRequiringBacklightObservationForAlert:(id)alert alertSystemSoundContext:(id)context
{
  v50 = *MEMORY[0x1E69E9840];
  alertCopy = alert;
  contextCopy = context;
  os_unfair_lock_assert_owner(&self->_lock);
  if ([contextCopy isRequiringBacklightObservation])
  {
    v8 = [contextCopy setRequiringBacklightObservation:0];
    backlightObservationRequestsCount = self->_backlightObservationRequestsCount;
    if (!backlightObservationRequestsCount)
    {
      v11 = TLLogGeneral(v8, v9);
      v12 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);

      if (v12)
      {
        v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ToneLibrary/Library/Playback/BackEnds/SystemSound/TLAlertSystemSoundController.m"];
        v17 = TLLogGeneral(v15, v16);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          lastPathComponent = [v15 lastPathComponent];
          callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
          v40 = 136381443;
          selfCopy = "[TLAlertSystemSoundController _endRequiringBacklightObservationForAlert:alertSystemSoundContext:]";
          v42 = 2113;
          v43 = lastPathComponent;
          v44 = 2049;
          v45 = 1261;
          v46 = 2113;
          v47 = callStackSymbols;
          _os_log_impl(&dword_1D9356000, v17, OS_LOG_TYPE_DEFAULT, "*** Assertion failure in %{private}s, %{private}@:%{private}lu.\n%{private}@", &v40, 0x2Au);
        }
      }

      else
      {
        v15 = TLLogGeneral(v13, v14);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          [(TLToneManager *)v15 _migrateLegacyToneSettings:v20];
        }
      }

      v29 = TLLogGeneral(v27, v28);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        [(TLAlertSystemSoundController *)v29 _endRequiringBacklightObservationForAlert:v30 alertSystemSoundContext:v31, v32, v33, v34, v35, v36];
      }

      backlightObservationRequestsCount = self->_backlightObservationRequestsCount;
    }

    self->_backlightObservationRequestsCount = backlightObservationRequestsCount - 1;
    v37 = TLLogPlayback(v8, v9);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v38 = self->_backlightObservationRequestsCount;
      v40 = 138544386;
      selfCopy = self;
      v42 = 2114;
      v43 = alertCopy;
      v44 = 2114;
      v45 = contextCopy;
      v46 = 2048;
      v47 = backlightObservationRequestsCount;
      v48 = 2048;
      v49 = v38;
      _os_log_impl(&dword_1D9356000, v37, OS_LOG_TYPE_DEFAULT, "%{public}@: -_endRequiringBacklightObservationForAlert:(%{public}@) alertSystemSoundContext:(%{public}@); requests count incremented from %lu to %lu.", &v40, 0x34u);
    }

    if (!self->_backlightObservationRequestsCount)
    {
      v39 = +[TLBacklight sharedBacklight];
      [v39 removeObserver:self];

      self->_backlightStatus = -1;
    }
  }
}

- (void)backlightStatusDidChange:(int64_t)change
{
  v72 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  backlightStatus = self->_backlightStatus;
  changeCopy = change;
  if (backlightStatus == change || (self->_backlightStatus = change, change == -1))
  {
    os_unfair_lock_unlock(&self->_lock);
    v36 = 0;
    v35 = 0;
    goto LABEL_41;
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v6 = self->_alertSystemSoundContexts;
  v7 = [(NSMapTable *)v6 countByEnumeratingWithState:&v58 objects:v71 count:16];
  if (v7)
  {
    v8 = v7;
    v42 = backlightStatus;
    v44 = 0;
    v46 = 0;
    v47 = 0;
    v9 = *v59;
    if (changeCopy == 1)
    {
      v10 = @"on";
    }

    else
    {
      v10 = @"off";
    }

    v45 = v10;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v59 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v58 + 1) + 8 * i);
        v13 = [(NSMapTable *)self->_alertSystemSoundContexts objectForKey:v12];
        toneIdentifierForDeemphasizingAlert = [v13 toneIdentifierForDeemphasizingAlert];
        vibrationIdentifierForDeemphasizingAlert = [v13 vibrationIdentifierForDeemphasizingAlert];
        if ([toneIdentifierForDeemphasizingAlert length])
        {
          sound = [v13 sound];

          if (sound)
          {
            if (changeCopy == 1 && ([v13 isBeingDeemphasized] & 1) == 0 && (objc_msgSend(v13, "isDeemphasized") & 1) == 0)
            {
              isBeingInterrupted = [v13 isBeingInterrupted];
              if ((isBeingInterrupted & 1) == 0)
              {
                v19 = TLLogPlayback(isBeingInterrupted, v18);
                if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
                {
                  v43 = [v12 debugDescription];
                  *buf = 138543874;
                  selfCopy2 = self;
                  v65 = 2114;
                  v66 = @"on";
                  v67 = 2114;
                  v68 = v43;
                  _os_log_impl(&dword_1D9356000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@: backlightStatusDidChange:(%{public}@). Backlight was turned on. Deemphasizing: %{public}@.", buf, 0x20u);
                }

                [v13 setBeingDeemphasized:1];
                v20 = v44;
                if (!v44)
                {
                  v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
                }

                v44 = v20;
                [v20 addObject:v12];
              }
            }
          }

          else
          {
            isLoadingSound = [v13 isLoadingSound];
            if (isLoadingSound)
            {
              v23 = TLLogPlayback(isLoadingSound, v22);
              if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
              {
                v24 = [v12 debugDescription];
                *buf = 138544130;
                selfCopy2 = self;
                v65 = 2114;
                v66 = v45;
                v67 = 2114;
                v68 = v24;
                v69 = 2114;
                v70 = v13;
                _os_log_impl(&dword_1D9356000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@: backlightStatusDidChange:(%{public}@). Backlight was turned on, but we are still loading the regular sound for %{public}@ with context %{public}@. Deferring application of updated backlight status.", buf, 0x2Au);
              }

              v46 = 1;
            }

            else
            {
              [v13 setLoadingSound:1];
              v25 = [[TLDeemphasizableAlertSystemSoundBeginPlayingContext alloc] initWithAlert:v12 alertSystemSoundContext:v13 toneIdentifierForDeemphasizingAlert:toneIdentifierForDeemphasizingAlert vibrationIdentifierForDeemphasizingAlert:vibrationIdentifierForDeemphasizingAlert];
              v26 = v47;
              if (!v47)
              {
                v26 = objc_alloc_init(MEMORY[0x1E695DF70]);
              }

              v47 = v26;
              [v26 addObject:v25];
            }
          }
        }
      }

      v8 = [(NSMapTable *)v6 countByEnumeratingWithState:&v58 objects:v71 count:16];
    }

    while (v8);

    if (v46)
    {
      self->_backlightStatus = v42;
      v54 = 0u;
      v55 = 0u;
      v56 = 0u;
      v57 = 0u;
      v27 = v44;
      v28 = [(TLAlertStoppingOptions *)v27 countByEnumeratingWithState:&v54 objects:v62 count:16];
      if (v28)
      {
        v29 = v28;
        v30 = *v55;
        do
        {
          for (j = 0; j != v29; ++j)
          {
            if (*v55 != v30)
            {
              objc_enumerationMutation(v27);
            }

            v32 = [(NSMapTable *)self->_alertSystemSoundContexts objectForKey:*(*(&v54 + 1) + 8 * j)];
            [v32 setBeingDeemphasized:0];
          }

          v29 = [(TLAlertStoppingOptions *)v27 countByEnumeratingWithState:&v54 objects:v62 count:16];
        }

        while (v29);
      }

      [(TLAlertStoppingOptions *)v27 removeAllObjects];
      v33 = 0;
      v34 = 0;
      v35 = 1;
      goto LABEL_49;
    }

    v38 = v44;
  }

  else
  {

    v47 = 0;
    v38 = 0;
  }

  if ([v38 count])
  {
    v27 = objc_alloc_init(TLAlertStoppingOptions);
    [(TLAlertStoppingOptions *)v27 setShouldWaitUntilEndOfCurrentRepetition:1];
    v33 = v38;
    v34 = [(TLAlertSystemSoundController *)self _prepareForStoppingAlerts:v38 withOptions:v27 playbackCompletionType:0];
    v35 = 0;
LABEL_49:

    goto LABEL_51;
  }

  v33 = v38;
  v35 = 0;
  v34 = 0;
LABEL_51:

  os_unfair_lock_unlock(&self->_lock);
  v36 = v47;
  if (v34)
  {
    goto LABEL_52;
  }

LABEL_41:
  v37 = v36;
  v34 = 0;
  if ([v36 count])
  {
    v36 = v37;
LABEL_52:
    audioQueue = self->_audioQueue;
    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = __57__TLAlertSystemSoundController_backlightStatusDidChange___block_invoke;
    v49[3] = &unk_1E85797D8;
    v49[4] = self;
    v52 = changeCopy;
    v40 = v36;
    v34 = v34;
    v50 = v34;
    v41 = v40;
    v51 = v41;
    v53 = v35;
    [(TLAudioQueue *)audioQueue performTaskWithBlock:v49];

    v36 = v41;
    goto LABEL_53;
  }

  v36 = v37;
  if (v35)
  {
    goto LABEL_52;
  }

LABEL_53:
}

void *__57__TLAlertSystemSoundController_backlightStatusDidChange___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  result = [*(a1 + 32) _processDeemphasizableAlertChangesForBackglightStatus:*(a1 + 56) stopTasksDescriptorForDeemphasizedAlerts:*(a1 + 40) deemphasizableAlertBeginPlayingContexts:*(a1 + 48)];
  if (*(a1 + 64) == 1)
  {
    v4 = TLLogPlayback(result, v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = @"off";
      if (*(a1 + 56) == 1)
      {
        v6 = @"on";
      }

      v7 = 138543618;
      v8 = v5;
      v9 = 2114;
      v10 = v6;
      _os_log_impl(&dword_1D9356000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: backlightStatusDidChange:(%{public}@). Triggering delayed application of updated backlight status.", &v7, 0x16u);
    }

    return [*(a1 + 32) backlightStatusDidChange:*(a1 + 56)];
  }

  return result;
}

- (void)_processDeemphasizableAlertChangesForBackglightStatus:(int64_t)status stopTasksDescriptorForDeemphasizedAlerts:(id)alerts deemphasizableAlertBeginPlayingContexts:(id)contexts
{
  v88 = *MEMORY[0x1E69E9840];
  alertsCopy = alerts;
  contextsCopy = contexts;
  os_unfair_lock_assert_not_owner(&self->_lock);
  [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (alertsCopy)
  {
    playbackCompletionContextsToProcess = [alertsCopy playbackCompletionContextsToProcess];
    if ([playbackCompletionContextsToProcess count])
    {
      [v9 addObjectsFromArray:playbackCompletionContextsToProcess];
      [alertsCopy setPlaybackCompletionContextsToProcess:0];
    }

    [(TLAlertSystemSoundController *)self _processStopTasksDescriptor:alertsCopy];
  }

  v11 = [contextsCopy count];
  if (!v11)
  {
    v59 = 0;
    goto LABEL_52;
  }

  v56 = v9;
  v53 = contextsCopy;
  v54 = alertsCopy;
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  obj = contextsCopy;
  v12 = [obj countByEnumeratingWithState:&v71 objects:v87 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v72;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v72 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v71 + 1) + 8 * i);
        alert = [v16 alert];
        toneIdentifierForDeemphasizingAlert = [v16 toneIdentifierForDeemphasizingAlert];
        vibrationIdentifierForDeemphasizingAlert = [v16 vibrationIdentifierForDeemphasizingAlert];
        v20 = objc_opt_class();
        if (status == 1)
        {
          v21 = toneIdentifierForDeemphasizingAlert;
        }

        else
        {
          v21 = 0;
        }

        v22 = [v20 _soundForAlert:alert toneIdentifierForDeemphasizingAlert:v21];
        if (status == 1)
        {
          vibrationIdentifier = vibrationIdentifierForDeemphasizingAlert;
        }

        else
        {
          vibrationIdentifier = [alert vibrationIdentifier];
        }

        v24 = vibrationIdentifier;
        if ([v22 isValid])
        {
          [v16 setSound:v22];
          [v16 setVibrationIdentifier:v24];
        }
      }

      v13 = [obj countByEnumeratingWithState:&v71 objects:v87 count:16];
    }

    while (v13);
  }

  os_unfair_lock_lock(&self->_lock);
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v57 = obj;
  v25 = [v57 countByEnumeratingWithState:&v67 objects:v86 count:16];
  if (!v25)
  {
    v59 = 0;
    v55 = 0;
    goto LABEL_51;
  }

  v26 = v25;
  v55 = 0;
  v59 = 0;
  obja = *v68;
  v27 = @"off";
  if (status == 1)
  {
    v27 = @"on";
  }

  v58 = v27;
  do
  {
    for (j = 0; j != v26; ++j)
    {
      if (*v68 != obja)
      {
        objc_enumerationMutation(v57);
      }

      v29 = *(*(&v67 + 1) + 8 * j);
      alert2 = [v29 alert];
      alertSystemSoundContext = [v29 alertSystemSoundContext];
      sound = [v29 sound];
      vibrationIdentifier2 = [v29 vibrationIdentifier];
      v35 = TLLogPlayback(vibrationIdentifier2, v34);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        v36 = [alert2 debugDescription];
        *buf = 138544386;
        selfCopy2 = self;
        v78 = 2114;
        v79 = v58;
        v80 = 2114;
        v81 = v36;
        v82 = 2114;
        v83 = sound;
        v84 = 2114;
        v85 = vibrationIdentifier2;
        _os_log_impl(&dword_1D9356000, v35, OS_LOG_TYPE_DEFAULT, "%{public}@: _processDeemphasizableAlertChanges…:(%{public}@). About to begin playing alert %{public}@ with sound: %{public}@ and vibration identifier: %{public}@.", buf, 0x34u);
      }

      if (!sound)
      {
        [(TLAlertSystemSoundController *)self _removeAlert:alert2 alertSystemSoundContext:alertSystemSoundContext didFailToPrepareSound:1 appendingPlaybackCompletionContextToArray:v56];
LABEL_45:
        [alertSystemSoundContext setLoadingSound:0];
        goto LABEL_46;
      }

      v37 = [(NSMapTable *)self->_alertSystemSoundContexts objectForKey:alert2];

      if (!v37)
      {
        v46 = TLLogPlayback(v38, v39);
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138544130;
          selfCopy2 = self;
          v78 = 2114;
          v79 = v58;
          v80 = 2114;
          v81 = alert2;
          v82 = 2114;
          v83 = alertSystemSoundContext;
          _os_log_impl(&dword_1D9356000, v46, OS_LOG_TYPE_DEFAULT, "%{public}@: _processDeemphasizableAlertChanges…:(%{public}@). Alert %{public}@ for %{public}@ has already been removed. Aborting.", buf, 0x2Au);
        }

        goto LABEL_45;
      }

      [alertSystemSoundContext setSound:sound];
      [alertSystemSoundContext setVibrationIdentifier:vibrationIdentifier2];
      [alertSystemSoundContext setLoadingSound:0];
      [alertSystemSoundContext setDeemphasized:status == 1];
      v40 = [(TLAlertSystemSoundController *)self _prepareForPreemptingAlertsBeforeBeginningPlaybackOfAlert:alert2 withSound:sound playbackCompletionType:4];
      v41 = v40;
      if (v40)
      {
        playbackCompletionContextsToProcess2 = [v40 playbackCompletionContextsToProcess];
        if ([playbackCompletionContextsToProcess2 count])
        {
          [v56 addObjectsFromArray:playbackCompletionContextsToProcess2];
          [v41 setPlaybackCompletionContextsToProcess:0];
        }

        v43 = v55;
        if (!v55)
        {
          v43 = objc_alloc_init(MEMORY[0x1E695DF70]);
        }

        v55 = v43;
        [v43 addObject:v41];
      }

      v44 = [(TLAlertSystemSoundController *)self _playTaskDescriptorForAlert:alert2 withSound:sound vibrationIdentifier:vibrationIdentifier2 alertSystemSoundContext:alertSystemSoundContext];
      v45 = v59;
      if (!v59)
      {
        v45 = objc_alloc_init(MEMORY[0x1E695DF70]);
      }

      v59 = v45;
      [v45 addObject:v44];

LABEL_46:
    }

    v26 = [v57 countByEnumeratingWithState:&v67 objects:v86 count:16];
  }

  while (v26);
LABEL_51:

  os_unfair_lock_unlock(&self->_lock);
  contextsCopy = v53;
  alertsCopy = v54;
  v11 = v55;
  v9 = v56;
LABEL_52:
  v47 = v11;
  if ([v11 count])
  {
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v48 = v47;
    v49 = [v48 countByEnumeratingWithState:&v63 objects:v75 count:16];
    if (v49)
    {
      v50 = v49;
      v51 = *v64;
      do
      {
        for (k = 0; k != v50; ++k)
        {
          if (*v64 != v51)
          {
            objc_enumerationMutation(v48);
          }

          [(TLAlertSystemSoundController *)self _processStopTasksDescriptor:*(*(&v63 + 1) + 8 * k)];
        }

        v50 = [v48 countByEnumeratingWithState:&v63 objects:v75 count:16];
      }

      while (v50);
    }
  }

  if ([v9 count])
  {
    [(TLAlertSystemSoundController *)self _processPlaybackCompletionContexts:v9];
  }

  if ([v59 count])
  {
    [(TLAlertSystemSoundController *)self _processPlayTaskDescriptors:v59];
  }
}

- (void)_beginRequiringBacklightObservationForAlert:(os_log_t)log alertSystemSoundContext:.cold.2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&dword_1D9356000, log, OS_LOG_TYPE_ERROR, "Already requiring backlight observation for %{public}@ with context %{public}@.", &v3, 0x16u);
}

@end