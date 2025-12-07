@interface AVControlCenterModuleState
+ (id)moduleStateForBundleID:(id)d;
- (AudioValueRange)effectIntensityRangeForVideoEffect:(id)effect;
- (BOOL)backgroundBlurSupported;
- (BOOL)backgroundReplacementSupported;
- (BOOL)centerStageFieldOfViewRestrictedToWide;
- (BOOL)centerStageSupported;
- (BOOL)isActive;
- (BOOL)isAutoMicrophoneModeEnabled;
- (BOOL)isEnabledForVideoEffect:(id)effect;
- (BOOL)manualFramingEnabledForDevice:(id)device;
- (BOOL)manualFramingIsAtDefault;
- (BOOL)reactionEffectsSupported;
- (BOOL)setAutoMicrophoneModeEnabled:(BOOL)enabled;
- (BOOL)setEffectIntensityForVideoEffect:(float)effect forVideoEffect:(id)videoEffect;
- (BOOL)setEnabled:(BOOL)enabled forVideoEffect:(id)effect;
- (BOOL)setMicrophoneMode:(int64_t)mode;
- (BOOL)studioLightingSupported;
- (BOOL)supportsVideoEffect:(id)effect;
- (BOOL)voiceProcessingBypassed;
- (NSURL)backgroundReplacementURL;
- (__CVBuffer)backgroundReplacementPixelBufferFillingWidth:(int)width height:(int)height;
- (double)_defaultOriginalVideoZoomFactor;
- (double)manualFramingOriginalVideoZoomFactor;
- (float)effectIntensityDefaultForVideoEffect:(id)effect;
- (float)effectIntensityForVideoEffect:(id)effect;
- (id)hiddenMicrophoneModes;
- (id)initForBundleID:(id)d;
- (id)supportedMicrophoneModes;
- (int64_t)activeMicrophoneMode;
- (int64_t)controlModeForVideoEffect:(id)effect;
- (int64_t)microphoneMode;
- (unint64_t)unavailableReasonsForVideoEffect:(id)effect;
- (void)_checkManualFramingDefaultStateWithNewOriginalZoomFactor:(double)factor;
- (void)_handleBackPropagatedVideoZoomFactorUpdate:(id)update;
- (void)_handlePanningAnglesUpdate:(id)update;
- (void)_proprietaryDefaultChanged:(id)changed keyPath:(id)path context:(void *)context;
- (void)_updateEligibleEffects:(id)effects;
- (void)cleanUpOrphanedSupportedMicModes;
- (void)dealloc;
- (void)enableBlackenFrames:(BOOL)frames forDeviceUID:(id)d;
- (void)installProprietaryDefaultsHandlers;
- (void)invalidateDeviceBasedModuleStatesIfNeeded;
- (void)panWithTranslation:(CGPoint)translation;
- (void)performReactionEffect:(id)effect forCaptureDeviceWithID:(id)d;
- (void)setBackgroundBlurSupported:(BOOL)supported;
- (void)setBackgroundReplacementSupported:(BOOL)supported;
- (void)setBackgroundReplacementURL:(id)l;
- (void)setCenterStageFieldOfViewRestrictedToWide:(BOOL)wide;
- (void)setCenterStageSupported:(BOOL)supported;
- (void)setManualFramingDeviceType:(int64_t)type;
- (void)setManualFramingOriginalZoomFactor:(double)factor convertedZoomFactor:(double)zoomFactor;
- (void)setReactionEffectsSupported:(BOOL)supported;
- (void)setStudioLightingSupported:(BOOL)supported;
- (void)startPanningAtPoint:(CGPoint)point;
- (void)updateActiveReactions:(id)reactions currentRenderPTS:(id *)s requestedTriggers:(int)triggers forCaptureDeviceWithID:(id)d;
- (void)updateCenterStageSupported:(BOOL)supported backgroundBlurSupported:(BOOL)blurSupported studioLightingSupported:(BOOL)lightingSupported reactionEffectsSupported:(BOOL)effectsSupported backgroundReplacementSupported:(BOOL)replacementSupported;
@end

@implementation AVControlCenterModuleState

+ (id)moduleStateForBundleID:(id)d
{
  v3 = [objc_alloc(objc_opt_class()) initForBundleID:d];

  return v3;
}

- (id)initForBundleID:(id)d
{
  v15.receiver = self;
  v15.super_class = AVControlCenterModuleState;
  v4 = [(AVControlCenterModuleState *)&v15 init];
  if (v4)
  {
    v4->_bundleID = d;
    v4->_stateLock._os_unfair_lock_opaque = 0;
    [d isEqualToString:0x1F1CBF688];
    v5 = AVControlCenterPreferencesDomainForPreferencesDomain(d);
    v4->_eligibleEffectsKey = AVControlCenterVideoEffectsEligibleEffectListPreferenceKey(v5);
    v4->_centerStageControlModeKey = AVControlCenterVideoEffectsCenterStageControlModePreferenceKey(v5);
    v4->_centerStageEnabledKey = AVControlCenterVideoEffectsCenterStageEnabledPreferenceKey(v5);
    v4->_centerStageUnavailableReasonsKey = AVControlCenterVideoEffectsCenterStageUnavailableReasonsPreferenceKey(v5);
    v6 = AVControlCenterVideoEffectsCenterStageMigrationCompletePreferenceKey(v5);
    v12[0] = @"videoeffects-cinematicframing-controlmode";
    v12[1] = @"videoeffects-cinematicframing-enabled";
    v13 = *&v4->_centerStageControlModeKey;
    v12[2] = 0x1F1CC3EC8;
    centerStageUnavailableReasonsKey = v4->_centerStageUnavailableReasonsKey;
    AVControlCenterMigrateDefaultsForKeys(v5, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v13 forKeys:v12 count:3], v6);
    v4->_backgroundBlurControlModeKey = AVControlCenterVideoEffectsPortraitEffectControlModePreferenceKey(v5);
    v4->_backgroundBlurEnabledKey = AVControlCenterVideoEffectsPortraitEffectEnabledPreferenceKey(v5);
    v4->_backgroundBlurUnavailableReasonsKey = AVControlCenterVideoEffectsPortraitEffectUnavailableReasonsPreferenceKey(v5);
    v4->_backgroundBlurApertureKey = AVControlCenterVideoEffectsPortraitEffectAperturePreferenceKey(v5);
    v7 = AVControlCenterVideoEffectsPortraitEffectMigrationCompletePreferenceKey(v5);
    v9[0] = @"videoeffects-backgroundblur-controlmode";
    v9[1] = @"videoeffects-backgroundblur-enabled";
    v10 = *&v4->_backgroundBlurControlModeKey;
    v9[2] = 0x1F1CC3F28;
    backgroundBlurUnavailableReasonsKey = v4->_backgroundBlurUnavailableReasonsKey;
    AVControlCenterMigrateDefaultsForKeys(v5, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v10 forKeys:v9 count:3], v7);
    v4->_studioLightingControlModeKey = AVControlCenterVideoEffectsStudioLightingControlModePreferenceKey(v5);
    v4->_studioLightingEnabledKey = AVControlCenterVideoEffectsStudioLightingEnabledPreferenceKey(v5);
    v4->_studioLightingUnavailableReasonsKey = AVControlCenterVideoEffectsStudioLightingUnavailableReasonsPreferenceKey(v5);
    v4->_studioLightingIntensityKey = AVControlCenterVideoEffectsStudioLightingIntensityPreferenceKey(v5);
    v4->_previousReactionStateByDeviceIdentifier = objc_alloc_init(MEMORY[0x1E695DF90]);
    v4->_reactionsEnabledKey = AVControlCenterVideoEffectsReactionsEnabledPreferenceKey(v5);
    v4->_gesturesEnabledKey = AVControlCenterVideoEffectsGesturesEnabledPreferenceKey(v5);
    v4->_gesturesEnabledDefaultKey = AVControlCenterVideoEffectsGesturesEnabledDefaultPreferenceKey(v5);
    v4->_reactionsUnavailableReasonsKey = AVControlCenterVideoEffectsReactionsUnavailableReasonsPreferenceKey(v5);
    v4->_reactionTriggeredKey = AVControlCenterVideoEffectsReactionsTriggeredPreferenceKey(v5);
    v4->_reactionsInProgressKey = AVControlCenterVideoEffectsReactionsInProgressPreferenceKey(v5);
    v4->_backgroundReplacementEnabledKey = AVControlCenterVideoEffectsBackgroundReplacementEnabledPreferenceKey(v5);
    v4->_backgroundReplacementUnavailableReasonsKey = AVControlCenterVideoEffectsBackgroundReplacementUnavailableReasonsPreferenceKey(v5);
    v4->_backgroundReplacementURLBookmarkKey = AVControlCenterVideoEffectsBackgroundReplacementURLBookmarkPreferenceKey(v5);
    v4->_auVoiceIOBypassVoiceProcessingKey = AVControlCenterAudioVoiceProcessingBypassedPreferenceKey(v5);
    v4->_microphoneModeKey = AVControlCenterAudioPreferredMicrophoneModePreferenceKey(v5);
    v4->_activeMicrophoneModeKey = AVControlCenterAudioActiveMicrophoneModePreferenceKey(v5);
    v4->_supportedMicrophoneModesKey = AVControlCenterAudioSupportedMicrophoneModesPreferenceKey(v5);
    v4->_hiddenMicrophoneModesKey = AVControlCenterAudioHiddenMicrophoneModesPreferenceKey(v5);
    v4->_autoMicModeEnabledKey = AVControlCenterAudioIsAutoMicrophoneModeEnabledPreferenceKey(v5);
    [(AVControlCenterModuleState *)v4 cleanUpOrphanedSupportedMicModes];
    [(AVControlCenterModuleState *)v4 setupDeviceBasedModuleStatesIfNeeded];
  }

  return v4;
}

- (void)cleanUpOrphanedSupportedMicModes
{
  if ([objc_msgSend(MEMORY[0x1E695DFD8] setWithObjects:{@"com.cisco.squared", @"com.webex.meeting", 0), "containsObject:", self->_bundleID}])
  {
    v3 = AVControlCenterPreferencesDomainForPreferencesDomain(self->_bundleID);
    v4 = AVControlCenterDidOverwriteOrphanedSupportedMicrophoneModesPreferenceKey(v3);
    if (([+[AVCaptureProprietaryDefaultsSingleton objectForKey:](AVCaptureProprietaryDefaultsSingleton objectForKey:{v4), "BOOLValue"}] & 1) == 0)
    {
      [AVCaptureProprietaryDefaultsSingleton setObject:MEMORY[0x1E695E0F0] forKey:self->_supportedMicrophoneModesKey];
      [AVCaptureProprietaryDefaultsSingleton setObject:MEMORY[0x1E695E118] forKey:v4];
      if (dword_1ED8068A0)
      {
        v7 = 0;
        v6 = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }
  }
}

- (void)updateCenterStageSupported:(BOOL)supported backgroundBlurSupported:(BOOL)blurSupported studioLightingSupported:(BOOL)lightingSupported reactionEffectsSupported:(BOOL)effectsSupported backgroundReplacementSupported:(BOOL)replacementSupported
{
  replacementSupportedCopy = replacementSupported;
  effectsSupportedCopy = effectsSupported;
  lightingSupportedCopy = lightingSupported;
  blurSupportedCopy = blurSupported;
  [(AVControlCenterModuleState *)self setCenterStageSupported:supported];
  [(AVControlCenterModuleState *)self setBackgroundBlurSupported:blurSupportedCopy];
  [(AVControlCenterModuleState *)self setStudioLightingSupported:lightingSupportedCopy];
  [(AVControlCenterModuleState *)self setReactionEffectsSupported:effectsSupportedCopy];

  [(AVControlCenterModuleState *)self setBackgroundReplacementSupported:replacementSupportedCopy];
}

- (void)installProprietaryDefaultsHandlers
{
  os_unfair_lock_lock(&self->_stateLock);
  self->_holdingStateLock = 1;
  eligibleEffectsKey = self->_eligibleEffectsKey;
  v54[0] = MEMORY[0x1E69E9820];
  v54[1] = 3221225472;
  v54[2] = __64__AVControlCenterModuleState_installProprietaryDefaultsHandlers__block_invoke;
  v54[3] = &unk_1E786EAF0;
  v54[4] = self;
  [AVCaptureProprietaryDefaultsSingleton addObserver:self forKey:eligibleEffectsKey callHandlerForInitialValue:1 defaultChangedHandler:v54];
  centerStageControlModeKey = self->_centerStageControlModeKey;
  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 3221225472;
  v53[2] = __64__AVControlCenterModuleState_installProprietaryDefaultsHandlers__block_invoke_2;
  v53[3] = &unk_1E786EAF0;
  v53[4] = self;
  [AVCaptureProprietaryDefaultsSingleton addObserver:self forKey:centerStageControlModeKey callHandlerForInitialValue:1 defaultChangedHandler:v53];
  centerStageEnabledKey = self->_centerStageEnabledKey;
  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 3221225472;
  v52[2] = __64__AVControlCenterModuleState_installProprietaryDefaultsHandlers__block_invoke_3;
  v52[3] = &unk_1E786EAF0;
  v52[4] = self;
  [AVCaptureProprietaryDefaultsSingleton addObserver:self forKey:centerStageEnabledKey callHandlerForInitialValue:1 defaultChangedHandler:v52];
  centerStageUnavailableReasonsKey = self->_centerStageUnavailableReasonsKey;
  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = __64__AVControlCenterModuleState_installProprietaryDefaultsHandlers__block_invoke_4;
  v51[3] = &unk_1E786EAF0;
  v51[4] = self;
  [AVCaptureProprietaryDefaultsSingleton addObserver:self forKey:centerStageUnavailableReasonsKey callHandlerForInitialValue:1 defaultChangedHandler:v51];
  backgroundBlurControlModeKey = self->_backgroundBlurControlModeKey;
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = __64__AVControlCenterModuleState_installProprietaryDefaultsHandlers__block_invoke_5;
  v50[3] = &unk_1E786EAF0;
  v50[4] = self;
  [AVCaptureProprietaryDefaultsSingleton addObserver:self forKey:backgroundBlurControlModeKey callHandlerForInitialValue:1 defaultChangedHandler:v50];
  backgroundBlurEnabledKey = self->_backgroundBlurEnabledKey;
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __64__AVControlCenterModuleState_installProprietaryDefaultsHandlers__block_invoke_6;
  v49[3] = &unk_1E786EAF0;
  v49[4] = self;
  [AVCaptureProprietaryDefaultsSingleton addObserver:self forKey:backgroundBlurEnabledKey callHandlerForInitialValue:1 defaultChangedHandler:v49];
  backgroundBlurUnavailableReasonsKey = self->_backgroundBlurUnavailableReasonsKey;
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __64__AVControlCenterModuleState_installProprietaryDefaultsHandlers__block_invoke_7;
  v48[3] = &unk_1E786EAF0;
  v48[4] = self;
  [AVCaptureProprietaryDefaultsSingleton addObserver:self forKey:backgroundBlurUnavailableReasonsKey callHandlerForInitialValue:1 defaultChangedHandler:v48];
  backgroundBlurApertureKey = self->_backgroundBlurApertureKey;
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __64__AVControlCenterModuleState_installProprietaryDefaultsHandlers__block_invoke_8;
  v47[3] = &unk_1E786EAF0;
  v47[4] = self;
  [AVCaptureProprietaryDefaultsSingleton addObserver:self forKey:backgroundBlurApertureKey callHandlerForInitialValue:1 defaultChangedHandler:v47];
  studioLightingControlModeKey = self->_studioLightingControlModeKey;
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __64__AVControlCenterModuleState_installProprietaryDefaultsHandlers__block_invoke_9;
  v46[3] = &unk_1E786EAF0;
  v46[4] = self;
  [AVCaptureProprietaryDefaultsSingleton addObserver:self forKey:studioLightingControlModeKey callHandlerForInitialValue:1 defaultChangedHandler:v46];
  studioLightingEnabledKey = self->_studioLightingEnabledKey;
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __64__AVControlCenterModuleState_installProprietaryDefaultsHandlers__block_invoke_10;
  v45[3] = &unk_1E786EAF0;
  v45[4] = self;
  [AVCaptureProprietaryDefaultsSingleton addObserver:self forKey:studioLightingEnabledKey callHandlerForInitialValue:1 defaultChangedHandler:v45];
  studioLightingUnavailableReasonsKey = self->_studioLightingUnavailableReasonsKey;
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __64__AVControlCenterModuleState_installProprietaryDefaultsHandlers__block_invoke_11;
  v44[3] = &unk_1E786EAF0;
  v44[4] = self;
  [AVCaptureProprietaryDefaultsSingleton addObserver:self forKey:studioLightingUnavailableReasonsKey callHandlerForInitialValue:1 defaultChangedHandler:v44];
  studioLightingIntensityKey = self->_studioLightingIntensityKey;
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __64__AVControlCenterModuleState_installProprietaryDefaultsHandlers__block_invoke_12;
  v43[3] = &unk_1E786EAF0;
  v43[4] = self;
  [AVCaptureProprietaryDefaultsSingleton addObserver:self forKey:studioLightingIntensityKey callHandlerForInitialValue:1 defaultChangedHandler:v43];
  reactionsEnabledKey = self->_reactionsEnabledKey;
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __64__AVControlCenterModuleState_installProprietaryDefaultsHandlers__block_invoke_13;
  v42[3] = &unk_1E786EAF0;
  v42[4] = self;
  [AVCaptureProprietaryDefaultsSingleton addObserver:self forKey:reactionsEnabledKey callHandlerForInitialValue:1 defaultChangedHandler:v42];
  gesturesEnabledKey = self->_gesturesEnabledKey;
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __64__AVControlCenterModuleState_installProprietaryDefaultsHandlers__block_invoke_14;
  v41[3] = &unk_1E786EAF0;
  v41[4] = self;
  [AVCaptureProprietaryDefaultsSingleton addObserver:self forKey:gesturesEnabledKey callHandlerForInitialValue:1 defaultChangedHandler:v41];
  gesturesEnabledDefaultKey = self->_gesturesEnabledDefaultKey;
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __64__AVControlCenterModuleState_installProprietaryDefaultsHandlers__block_invoke_15;
  v40[3] = &unk_1E786EAF0;
  v40[4] = self;
  [AVCaptureProprietaryDefaultsSingleton addObserver:self forKey:gesturesEnabledDefaultKey callHandlerForInitialValue:0 defaultChangedHandler:v40];
  reactionTriggeredKey = self->_reactionTriggeredKey;
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __64__AVControlCenterModuleState_installProprietaryDefaultsHandlers__block_invoke_16;
  v39[3] = &unk_1E786EAF0;
  v39[4] = self;
  [AVCaptureProprietaryDefaultsSingleton addObserver:self forKey:reactionTriggeredKey callHandlerForInitialValue:0 defaultChangedHandler:v39];
  reactionsInProgressKey = self->_reactionsInProgressKey;
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __64__AVControlCenterModuleState_installProprietaryDefaultsHandlers__block_invoke_17;
  v38[3] = &unk_1E786EAF0;
  v38[4] = self;
  [AVCaptureProprietaryDefaultsSingleton addObserver:self forKey:reactionsInProgressKey callHandlerForInitialValue:0 defaultChangedHandler:v38];
  backgroundReplacementEnabledKey = self->_backgroundReplacementEnabledKey;
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __64__AVControlCenterModuleState_installProprietaryDefaultsHandlers__block_invoke_18;
  v37[3] = &unk_1E786EAF0;
  v37[4] = self;
  [AVCaptureProprietaryDefaultsSingleton addObserver:self forKey:backgroundReplacementEnabledKey callHandlerForInitialValue:1 defaultChangedHandler:v37];
  backgroundReplacementUnavailableReasonsKey = self->_backgroundReplacementUnavailableReasonsKey;
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __64__AVControlCenterModuleState_installProprietaryDefaultsHandlers__block_invoke_19;
  v36[3] = &unk_1E786EAF0;
  v36[4] = self;
  [AVCaptureProprietaryDefaultsSingleton addObserver:self forKey:backgroundReplacementUnavailableReasonsKey callHandlerForInitialValue:1 defaultChangedHandler:v36];
  backgroundReplacementURLBookmarkKey = self->_backgroundReplacementURLBookmarkKey;
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __64__AVControlCenterModuleState_installProprietaryDefaultsHandlers__block_invoke_20;
  v35[3] = &unk_1E786EAF0;
  v35[4] = self;
  [AVCaptureProprietaryDefaultsSingleton addObserver:self forKey:backgroundReplacementURLBookmarkKey callHandlerForInitialValue:1 defaultChangedHandler:v35];
  auVoiceIOBypassVoiceProcessingKey = self->_auVoiceIOBypassVoiceProcessingKey;
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __64__AVControlCenterModuleState_installProprietaryDefaultsHandlers__block_invoke_21;
  v34[3] = &unk_1E786EAF0;
  v34[4] = self;
  [AVCaptureProprietaryDefaultsSingleton addObserver:self forKey:auVoiceIOBypassVoiceProcessingKey callHandlerForInitialValue:1 defaultChangedHandler:v34];
  microphoneModeKey = self->_microphoneModeKey;
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __64__AVControlCenterModuleState_installProprietaryDefaultsHandlers__block_invoke_22;
  v33[3] = &unk_1E786EAF0;
  v33[4] = self;
  [AVCaptureProprietaryDefaultsSingleton addObserver:self forKey:microphoneModeKey callHandlerForInitialValue:1 defaultChangedHandler:v33];
  activeMicrophoneModeKey = self->_activeMicrophoneModeKey;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __64__AVControlCenterModuleState_installProprietaryDefaultsHandlers__block_invoke_23;
  v32[3] = &unk_1E786EAF0;
  v32[4] = self;
  [AVCaptureProprietaryDefaultsSingleton addObserver:self forKey:activeMicrophoneModeKey callHandlerForInitialValue:1 defaultChangedHandler:v32];
  supportedMicrophoneModesKey = self->_supportedMicrophoneModesKey;
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __64__AVControlCenterModuleState_installProprietaryDefaultsHandlers__block_invoke_24;
  v31[3] = &unk_1E786EAF0;
  v31[4] = self;
  [AVCaptureProprietaryDefaultsSingleton addObserver:self forKey:supportedMicrophoneModesKey callHandlerForInitialValue:1 defaultChangedHandler:v31];
  hiddenMicrophoneModesKey = self->_hiddenMicrophoneModesKey;
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __64__AVControlCenterModuleState_installProprietaryDefaultsHandlers__block_invoke_25;
  v30[3] = &unk_1E786EAF0;
  v30[4] = self;
  [AVCaptureProprietaryDefaultsSingleton addObserver:self forKey:hiddenMicrophoneModesKey callHandlerForInitialValue:1 defaultChangedHandler:v30];
  autoMicModeEnabledKey = self->_autoMicModeEnabledKey;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __64__AVControlCenterModuleState_installProprietaryDefaultsHandlers__block_invoke_26;
  v29[3] = &unk_1E786EAF0;
  v29[4] = self;
  [AVCaptureProprietaryDefaultsSingleton addObserver:self forKey:autoMicModeEnabledKey callHandlerForInitialValue:1 defaultChangedHandler:v29];
  os_unfair_lock_unlock(&self->_stateLock);
  self->_holdingStateLock = 0;
}

id __64__AVControlCenterModuleState_installProprietaryDefaultsHandlers__block_invoke_15(uint64_t a1)
{
  result = [AVCaptureProprietaryDefaultsSingleton objectForKey:*(*(a1 + 32) + 232)];
  if (!result)
  {
    v3 = *(a1 + 32);
    v4 = v3[29];
    v5 = AVCCM_GesturesEnabledChangedContext;

    return [v3 _proprietaryDefaultChanged:0 keyPath:v4 context:v5];
  }

  return result;
}

- (void)dealloc
{
  [AVCaptureProprietaryDefaultsSingleton removeObserver:self forKey:self->_centerStageControlModeKey];
  [AVCaptureProprietaryDefaultsSingleton removeObserver:self forKey:self->_centerStageEnabledKey];
  [AVCaptureProprietaryDefaultsSingleton removeObserver:self forKey:self->_centerStageUnavailableReasonsKey];

  [AVCaptureProprietaryDefaultsSingleton removeObserver:self forKey:self->_backgroundBlurControlModeKey];
  [AVCaptureProprietaryDefaultsSingleton removeObserver:self forKey:self->_backgroundBlurEnabledKey];
  [AVCaptureProprietaryDefaultsSingleton removeObserver:self forKey:self->_backgroundBlurUnavailableReasonsKey];
  [AVCaptureProprietaryDefaultsSingleton removeObserver:self forKey:self->_backgroundBlurApertureKey];

  [AVCaptureProprietaryDefaultsSingleton removeObserver:self forKey:self->_studioLightingControlModeKey];
  [AVCaptureProprietaryDefaultsSingleton removeObserver:self forKey:self->_studioLightingEnabledKey];
  [AVCaptureProprietaryDefaultsSingleton removeObserver:self forKey:self->_studioLightingUnavailableReasonsKey];
  [AVCaptureProprietaryDefaultsSingleton removeObserver:self forKey:self->_studioLightingIntensityKey];

  [AVCaptureProprietaryDefaultsSingleton removeObserver:self forKey:self->_reactionsEnabledKey];
  [AVCaptureProprietaryDefaultsSingleton removeObserver:self forKey:self->_gesturesEnabledKey];
  [AVCaptureProprietaryDefaultsSingleton removeObserver:self forKey:self->_reactionsUnavailableReasonsKey];
  [AVCaptureProprietaryDefaultsSingleton removeObserver:self forKey:self->_reactionTriggeredKey];
  [AVCaptureProprietaryDefaultsSingleton removeObserver:self forKey:self->_reactionsInProgressKey];

  [AVCaptureProprietaryDefaultsSingleton removeObserver:self forKey:self->_backgroundReplacementEnabledKey];
  [AVCaptureProprietaryDefaultsSingleton removeObserver:self forKey:self->_backgroundReplacementUnavailableReasonsKey];
  [AVCaptureProprietaryDefaultsSingleton removeObserver:self forKey:self->_backgroundReplacementURLBookmarkKey];

  backgroundReplacementPixelBuffer = self->_backgroundReplacementPixelBuffer;
  if (backgroundReplacementPixelBuffer)
  {
    CFRelease(backgroundReplacementPixelBuffer);
    self->_backgroundReplacementPixelBuffer = 0;
  }

  [AVCaptureProprietaryDefaultsSingleton removeObserver:self forKey:self->_auVoiceIOBypassVoiceProcessingKey];
  [AVCaptureProprietaryDefaultsSingleton removeObserver:self forKey:self->_microphoneModeKey];
  [AVCaptureProprietaryDefaultsSingleton removeObserver:self forKey:self->_activeMicrophoneModeKey];
  [AVCaptureProprietaryDefaultsSingleton removeObserver:self forKey:self->_supportedMicrophoneModesKey];
  [AVCaptureProprietaryDefaultsSingleton removeObserver:self forKey:self->_hiddenMicrophoneModesKey];
  [(AVControlCenterModuleState *)self invalidateDeviceBasedModuleStatesIfNeeded];

  [AVCaptureProprietaryDefaultsSingleton removeObserver:self forKey:self->_eligibleEffectsKey];
  v4.receiver = self;
  v4.super_class = AVControlCenterModuleState;
  [(AVControlCenterModuleState *)&v4 dealloc];
}

- (void)_updateEligibleEffects:(id)effects
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    holdingStateLock = self->_holdingStateLock;
    if (!holdingStateLock)
    {
      os_unfair_lock_lock(&self->_stateLock);
    }

    v6 = [MEMORY[0x1E695DFD8] setWithArray:effects];
    self->_isOptedInForBackgroundBlur = [v6 containsObject:AVCaptureBundleCameraPortraitEffectEnabledKey];
    self->_isOptedInForStudioLight = [v6 containsObject:AVCaptureBundleCameraStudioLightEnabledKey];
    self->_isOptedInForReactionEffects = [v6 containsObject:AVCaptureBundleCameraReactionEffectsEnabledKey];
    self->_isOptedInForBackgroundReplacement = [v6 containsObject:AVCaptureBundleCameraBackgroundReplacementEnabledKey];
    if (!holdingStateLock)
    {
      os_unfair_lock_unlock(&self->_stateLock);
    }

    centerStageSupported = [sCaptureDeviceWatcher centerStageSupported];
    backgroundBlurSupported = [sCaptureDeviceWatcher backgroundBlurSupported];
    studioLightingSupported = [sCaptureDeviceWatcher studioLightingSupported];
    reactionEffectsSupported = [sCaptureDeviceWatcher reactionEffectsSupported];
    backgroundReplacementSupported = [sCaptureDeviceWatcher backgroundReplacementSupported];

    [(AVControlCenterModuleState *)self updateCenterStageSupported:centerStageSupported backgroundBlurSupported:backgroundBlurSupported studioLightingSupported:studioLightingSupported reactionEffectsSupported:reactionEffectsSupported backgroundReplacementSupported:backgroundReplacementSupported];
  }
}

- (BOOL)isActive
{
  holdingStateLock = self->_holdingStateLock;
  if (!holdingStateLock)
  {
    os_unfair_lock_lock(&self->_stateLock);
  }

  if ([(NSArray *)self->_supportedMicrophoneModes count])
  {
    v4 = !self->_auVoiceIOBypassVoiceProcessing;
  }

  else
  {
    v4 = 0;
  }

  centerStageSupported = self->_centerStageSupported;
  backgroundBlurSupported = self->_backgroundBlurSupported;
  studioLightingSupported = self->_studioLightingSupported;
  reactionEffectsSupported = self->_reactionEffectsSupported;
  backgroundReplacementSupported = self->_backgroundReplacementSupported;
  if (!holdingStateLock)
  {
    os_unfair_lock_unlock(&self->_stateLock);
  }

  return backgroundReplacementSupported || reactionEffectsSupported || studioLightingSupported || backgroundBlurSupported || centerStageSupported || v4;
}

- (BOOL)centerStageSupported
{
  if (self->_holdingStateLock)
  {
    return self->_centerStageSupported;
  }

  os_unfair_lock_lock(&self->_stateLock);
  centerStageSupported = self->_centerStageSupported;
  os_unfair_lock_unlock(&self->_stateLock);
  return centerStageSupported;
}

- (void)setCenterStageSupported:(BOOL)supported
{
  supportedCopy = supported;
  if (!self->_holdingStateLock)
  {
    os_unfair_lock_lock(&self->_stateLock);
    centerStageSupported = self->_centerStageSupported;
    self->_centerStageSupported = supportedCopy;
    os_unfair_lock_unlock(&self->_stateLock);
    if (centerStageSupported == supportedCopy)
    {
      return;
    }

    goto LABEL_5;
  }

  v5 = self->_centerStageSupported;
  self->_centerStageSupported = supported;
  if (v5 != supported)
  {
LABEL_5:
    v9[0] = @"AVControlCenterModulesNotificationVideoEffectKey";
    v9[1] = @"AVControlCenterModulesNotificationBundleIdentifierKey";
    bundleID = self->_bundleID;
    v10[0] = @"AVControlCenterVideoEffectCenterStage";
    v10[1] = bundleID;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  }
}

- (BOOL)backgroundBlurSupported
{
  if (self->_holdingStateLock)
  {
    return self->_backgroundBlurSupported;
  }

  os_unfair_lock_lock(&self->_stateLock);
  backgroundBlurSupported = self->_backgroundBlurSupported;
  os_unfair_lock_unlock(&self->_stateLock);
  return backgroundBlurSupported;
}

- (void)setBackgroundBlurSupported:(BOOL)supported
{
  supportedCopy = supported;
  holdingStateLock = self->_holdingStateLock;
  if (!holdingStateLock)
  {
    os_unfair_lock_lock(&self->_stateLock);
  }

  v6 = supportedCopy && self->_isOptedInForBackgroundBlur;
  v7 = v6;
  backgroundBlurSupported = self->_backgroundBlurSupported;
  self->_backgroundBlurSupported = v6;
  if (!holdingStateLock)
  {
    os_unfair_lock_unlock(&self->_stateLock);
  }

  if (backgroundBlurSupported != v7)
  {
    v11[0] = @"AVControlCenterModulesNotificationVideoEffectKey";
    v11[1] = @"AVControlCenterModulesNotificationBundleIdentifierKey";
    bundleID = self->_bundleID;
    v12[0] = @"AVControlCenterVideoEffectBackgroundBlur";
    v12[1] = bundleID;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  }
}

- (BOOL)studioLightingSupported
{
  if (self->_holdingStateLock)
  {
    return self->_studioLightingSupported;
  }

  os_unfair_lock_lock(&self->_stateLock);
  studioLightingSupported = self->_studioLightingSupported;
  os_unfair_lock_unlock(&self->_stateLock);
  return studioLightingSupported;
}

- (void)setStudioLightingSupported:(BOOL)supported
{
  supportedCopy = supported;
  holdingStateLock = self->_holdingStateLock;
  if (!holdingStateLock)
  {
    os_unfair_lock_lock(&self->_stateLock);
  }

  v6 = supportedCopy && self->_isOptedInForStudioLight;
  v7 = v6;
  studioLightingSupported = self->_studioLightingSupported;
  self->_studioLightingSupported = v6;
  if (!holdingStateLock)
  {
    os_unfair_lock_unlock(&self->_stateLock);
  }

  if (studioLightingSupported != v7)
  {
    v11[0] = @"AVControlCenterModulesNotificationVideoEffectKey";
    v11[1] = @"AVControlCenterModulesNotificationBundleIdentifierKey";
    bundleID = self->_bundleID;
    v12[0] = @"AVControlCenterVideoEffectStudioLighting";
    v12[1] = bundleID;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  }
}

- (BOOL)reactionEffectsSupported
{
  if (self->_holdingStateLock)
  {
    return self->_reactionEffectsSupported;
  }

  os_unfair_lock_lock(&self->_stateLock);
  reactionEffectsSupported = self->_reactionEffectsSupported;
  os_unfair_lock_unlock(&self->_stateLock);
  return reactionEffectsSupported;
}

- (void)setReactionEffectsSupported:(BOOL)supported
{
  supportedCopy = supported;
  holdingStateLock = self->_holdingStateLock;
  if (!holdingStateLock)
  {
    os_unfair_lock_lock(&self->_stateLock);
  }

  v6 = supportedCopy && self->_isOptedInForReactionEffects;
  v7 = v6;
  reactionEffectsSupported = self->_reactionEffectsSupported;
  self->_reactionEffectsSupported = v6;
  if (!holdingStateLock)
  {
    os_unfair_lock_unlock(&self->_stateLock);
  }

  if (reactionEffectsSupported != v7)
  {
    v11[0] = @"AVControlCenterModulesNotificationVideoEffectKey";
    v11[1] = @"AVControlCenterModulesNotificationBundleIdentifierKey";
    bundleID = self->_bundleID;
    v12[0] = @"AVControlCenterVideoEffectReactions";
    v12[1] = bundleID;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  }
}

- (BOOL)backgroundReplacementSupported
{
  if (self->_holdingStateLock)
  {
    return self->_backgroundReplacementSupported;
  }

  os_unfair_lock_lock(&self->_stateLock);
  backgroundReplacementSupported = self->_backgroundReplacementSupported;
  os_unfair_lock_unlock(&self->_stateLock);
  return backgroundReplacementSupported;
}

- (void)setBackgroundReplacementSupported:(BOOL)supported
{
  supportedCopy = supported;
  holdingStateLock = self->_holdingStateLock;
  if (!holdingStateLock)
  {
    os_unfair_lock_lock(&self->_stateLock);
  }

  v6 = supportedCopy && self->_isOptedInForBackgroundReplacement;
  v7 = v6;
  backgroundReplacementSupported = self->_backgroundReplacementSupported;
  self->_backgroundReplacementSupported = v6;
  if (!holdingStateLock)
  {
    os_unfair_lock_unlock(&self->_stateLock);
  }

  if (backgroundReplacementSupported != v7)
  {
    v11[0] = @"AVControlCenterModulesNotificationVideoEffectKey";
    v11[1] = @"AVControlCenterModulesNotificationBundleIdentifierKey";
    bundleID = self->_bundleID;
    v12[0] = @"AVControlCenterVideoEffectBackgroundReplacement";
    v12[1] = bundleID;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  }
}

- (BOOL)supportsVideoEffect:(id)effect
{
  holdingStateLock = self->_holdingStateLock;
  if (!holdingStateLock)
  {
    os_unfair_lock_lock(&self->_stateLock);
  }

  if ([effect isEqualToString:@"AVControlCenterVideoEffectCenterStage"])
  {
    centerStageSupported = self->_centerStageSupported;
  }

  else
  {
    centerStageSupported = 0;
  }

  if ([effect isEqualToString:@"AVControlCenterVideoEffectBackgroundBlur"])
  {
    centerStageSupported = self->_backgroundBlurSupported;
  }

  if ([effect isEqualToString:@"AVControlCenterVideoEffectStudioLighting"])
  {
    centerStageSupported = self->_studioLightingSupported;
  }

  if ([effect isEqualToString:@"AVControlCenterVideoEffectReactions"])
  {
    centerStageSupported = self->_reactionEffectsSupported;
  }

  if ([effect isEqualToString:@"AVControlCenterVideoEffectBackgroundReplacement"])
  {
    centerStageSupported = self->_backgroundReplacementSupported;
  }

  if ([effect isEqualToString:@"AVControlCenterVideoEffectGestures"])
  {
    centerStageSupported = self->_reactionEffectsSupported;
  }

  if (!holdingStateLock)
  {
    os_unfair_lock_unlock(&self->_stateLock);
  }

  return centerStageSupported;
}

- (int64_t)controlModeForVideoEffect:(id)effect
{
  holdingStateLock = self->_holdingStateLock;
  if (!holdingStateLock)
  {
    os_unfair_lock_lock(&self->_stateLock);
  }

  if ([effect isEqualToString:@"AVControlCenterVideoEffectCenterStage"])
  {
    centerStageControlMode = self->_centerStageControlMode;
  }

  else
  {
    centerStageControlMode = 0;
  }

  if ([effect isEqualToString:@"AVControlCenterVideoEffectBackgroundBlur"])
  {
    centerStageControlMode = self->_backgroundBlurControlMode;
  }

  if ([effect isEqualToString:@"AVControlCenterVideoEffectStudioLighting"])
  {
    centerStageControlMode = self->_studioLightingControlMode;
  }

  v7 = [effect isEqualToString:@"AVControlCenterVideoEffectReactions"];
  v8 = [effect isEqualToString:@"AVControlCenterVideoEffectGestures"];
  v9 = [effect isEqualToString:@"AVControlCenterVideoEffectBackgroundReplacement"];
  if (!holdingStateLock)
  {
    os_unfair_lock_unlock(&self->_stateLock);
  }

  if (((v9 | v8) | v7))
  {
    return 2;
  }

  else
  {
    return centerStageControlMode;
  }
}

- (BOOL)isEnabledForVideoEffect:(id)effect
{
  holdingStateLock = self->_holdingStateLock;
  if (!holdingStateLock)
  {
    os_unfair_lock_lock(&self->_stateLock);
  }

  if ([effect isEqualToString:@"AVControlCenterVideoEffectCenterStage"])
  {
    centerStageEnabled = self->_centerStageEnabled;
  }

  else
  {
    centerStageEnabled = 0;
  }

  if ([effect isEqualToString:@"AVControlCenterVideoEffectBackgroundBlur"])
  {
    centerStageEnabled = self->_backgroundBlurEnabled;
  }

  if ([effect isEqualToString:@"AVControlCenterVideoEffectStudioLighting"])
  {
    centerStageEnabled = self->_studioLightingEnabled;
  }

  if ([effect isEqualToString:@"AVControlCenterVideoEffectReactions"])
  {
    centerStageEnabled = self->_reactionsEnabled;
  }

  if ([effect isEqualToString:@"AVControlCenterVideoEffectGestures"])
  {
    centerStageEnabled = self->_gesturesEnabled;
  }

  if ([effect isEqualToString:@"AVControlCenterVideoEffectBackgroundReplacement"])
  {
    centerStageEnabled = self->_backgroundReplacementEnabled;
  }

  if (!holdingStateLock)
  {
    os_unfair_lock_unlock(&self->_stateLock);
  }

  return centerStageEnabled;
}

- (BOOL)setEnabled:(BOOL)enabled forVideoEffect:(id)effect
{
  enabledCopy = enabled;
  holdingStateLock = self->_holdingStateLock;
  if (!holdingStateLock)
  {
    os_unfair_lock_lock(&self->_stateLock);
    self->_holdingStateLock = 1;
  }

  v8 = [effect isEqualToString:@"AVControlCenterVideoEffectCenterStage"];
  if (v8)
  {
    +[AVCaptureProprietaryDefaultsSingleton setObject:forKey:](AVCaptureProprietaryDefaultsSingleton, "setObject:forKey:", [MEMORY[0x1E696AD98] numberWithBool:enabledCopy], self->_centerStageEnabledKey);
  }

  if ([effect isEqualToString:@"AVControlCenterVideoEffectBackgroundBlur"])
  {
    +[AVCaptureProprietaryDefaultsSingleton setObject:forKey:](AVCaptureProprietaryDefaultsSingleton, "setObject:forKey:", [MEMORY[0x1E696AD98] numberWithBool:enabledCopy], self->_backgroundBlurEnabledKey);
    LOBYTE(v8) = 1;
  }

  if ([effect isEqualToString:@"AVControlCenterVideoEffectStudioLighting"])
  {
    +[AVCaptureProprietaryDefaultsSingleton setObject:forKey:](AVCaptureProprietaryDefaultsSingleton, "setObject:forKey:", [MEMORY[0x1E696AD98] numberWithBool:enabledCopy], self->_studioLightingEnabledKey);
    LOBYTE(v8) = 1;
  }

  if ([effect isEqualToString:@"AVControlCenterVideoEffectReactions"])
  {
    +[AVCaptureProprietaryDefaultsSingleton setObject:forKey:](AVCaptureProprietaryDefaultsSingleton, "setObject:forKey:", [MEMORY[0x1E696AD98] numberWithBool:enabledCopy], self->_reactionsEnabledKey);
    LOBYTE(v8) = 1;
  }

  if ([effect isEqualToString:@"AVControlCenterVideoEffectGestures"])
  {
    +[AVCaptureProprietaryDefaultsSingleton setObject:forKey:](AVCaptureProprietaryDefaultsSingleton, "setObject:forKey:", [MEMORY[0x1E696AD98] numberWithBool:enabledCopy], self->_gesturesEnabledKey);
    LOBYTE(v8) = 1;
  }

  if ([effect isEqualToString:@"AVControlCenterVideoEffectBackgroundReplacement"])
  {
    +[AVCaptureProprietaryDefaultsSingleton setObject:forKey:](AVCaptureProprietaryDefaultsSingleton, "setObject:forKey:", [MEMORY[0x1E696AD98] numberWithBool:enabledCopy], self->_backgroundReplacementEnabledKey);
    LOBYTE(v8) = 1;
  }

  if (!holdingStateLock)
  {
    os_unfair_lock_unlock(&self->_stateLock);
    self->_holdingStateLock = 0;
  }

  return v8;
}

- (unint64_t)unavailableReasonsForVideoEffect:(id)effect
{
  if ([effect isEqualToString:@"AVControlCenterVideoEffectCenterStage"])
  {
    v5 = [+[AVCaptureProprietaryDefaultsSingleton objectForKey:](AVCaptureProprietaryDefaultsSingleton objectForKey:{self->_centerStageUnavailableReasonsKey), "unsignedIntegerValue"}];
  }

  else
  {
    v5 = 0;
  }

  if ([effect isEqualToString:@"AVControlCenterVideoEffectBackgroundBlur"])
  {
    v5 = [+[AVCaptureProprietaryDefaultsSingleton objectForKey:](AVCaptureProprietaryDefaultsSingleton objectForKey:{self->_backgroundBlurUnavailableReasonsKey), "unsignedIntegerValue"}];
  }

  if ([effect isEqualToString:@"AVControlCenterVideoEffectStudioLighting"])
  {
    v5 = [+[AVCaptureProprietaryDefaultsSingleton objectForKey:](AVCaptureProprietaryDefaultsSingleton objectForKey:{self->_studioLightingUnavailableReasonsKey), "unsignedIntegerValue"}];
  }

  if ([effect isEqualToString:@"AVControlCenterVideoEffectReactions"])
  {
    v5 = [+[AVCaptureProprietaryDefaultsSingleton objectForKey:](AVCaptureProprietaryDefaultsSingleton objectForKey:{self->_reactionsUnavailableReasonsKey), "unsignedIntegerValue"}];
  }

  if ([effect isEqualToString:@"AVControlCenterVideoEffectGestures"])
  {
    v5 = [+[AVCaptureProprietaryDefaultsSingleton objectForKey:](AVCaptureProprietaryDefaultsSingleton objectForKey:{self->_reactionsUnavailableReasonsKey), "unsignedIntegerValue"}];
  }

  if (![effect isEqualToString:@"AVControlCenterVideoEffectBackgroundReplacement"])
  {
    return v5;
  }

  v6 = [AVCaptureProprietaryDefaultsSingleton objectForKey:self->_backgroundReplacementUnavailableReasonsKey];

  return [v6 unsignedIntegerValue];
}

- (void)performReactionEffect:(id)effect forCaptureDeviceWithID:(id)d
{
  holdingStateLock = self->_holdingStateLock;
  if (!holdingStateLock)
  {
    os_unfair_lock_lock(&self->_stateLock);
  }

  v8 = self->_reactionTriggeredKey;
  bundleID = self->_bundleID;
  v11[0] = @"AVControlCenterModulesNotificationBundleIdentifierKey";
  v11[1] = @"AVControlCenterModulesNotificationDeviceIdentifierKey";
  v12[0] = bundleID;
  v12[1] = d;
  v11[2] = @"AVControlCenterModulesNotificationReactionTypeKey";
  v12[2] = effect;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];
  if (!holdingStateLock)
  {
    os_unfair_lock_unlock(&self->_stateLock);
  }

  [AVCaptureProprietaryDefaultsSingleton setObject:v10 forKey:v8];
}

- (void)updateActiveReactions:(id)reactions currentRenderPTS:(id *)s requestedTriggers:(int)triggers forCaptureDeviceWithID:(id)d
{
  holdingStateLock = self->_holdingStateLock;
  if (!holdingStateLock)
  {
    os_unfair_lock_lock(&self->_stateLock);
  }

  v12 = self->_bundleID;
  v13 = self->_reactionsInProgressKey;
  v14 = objc_msgSend_objectForKeyedSubscript_(self->_previousReactionStateByDeviceIdentifier);
  -[NSMutableDictionary setObject:forKeyedSubscript:](self->_previousReactionStateByDeviceIdentifier, "setObject:forKeyedSubscript:", [reactions mutableCopy], d);
  if (!holdingStateLock)
  {
    os_unfair_lock_unlock(&self->_stateLock);
  }

  if (triggers > 0 || (v15 = [reactions count], v15 != objc_msgSend(v14, "count")))
  {
    v16 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(reactions, "count") + objc_msgSend(v14, "count")}];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __110__AVControlCenterModuleState_updateActiveReactions_currentRenderPTS_requestedTriggers_forCaptureDeviceWithID___block_invoke;
    v22[3] = &unk_1E7876570;
    v22[4] = v14;
    v22[5] = v16;
    [reactions enumerateKeysAndObjectsUsingBlock:v22];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __110__AVControlCenterModuleState_updateActiveReactions_currentRenderPTS_requestedTriggers_forCaptureDeviceWithID___block_invoke_2;
    v19[3] = &unk_1E7876598;
    v20 = *&s->var0;
    var3 = s->var3;
    v19[4] = v16;
    [v14 enumerateKeysAndObjectsUsingBlock:v19];
    [v16 sortUsingComparator:&__block_literal_global_29];
    v17[0] = @"AVControlCenterModulesNotificationBundleIdentifierKey";
    v17[1] = @"AVControlCenterModulesNotificationDeviceIdentifierKey";
    v18[0] = v12;
    v18[1] = d;
    v17[2] = @"AVControlCenterModulesNotificationReactionEffectsInProgressKey";
    v18[2] = v16;
    +[AVCaptureProprietaryDefaultsSingleton setObject:forKey:](AVCaptureProprietaryDefaultsSingleton, "setObject:forKey:", [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:3], v13);
  }
}

void __110__AVControlCenterModuleState_updateActiveReactions_currentRenderPTS_requestedTriggers_forCaptureDeviceWithID___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  [*(a1 + 32) removeObjectForKey:a2];
  AVCaptureReactionTypeForPTEffectReactionType = _AVControlCenterGetAVCaptureReactionTypeForPTEffectReactionType([a3 effectType]);
  if (AVCaptureReactionTypeForPTEffectReactionType)
  {
    v6 = AVCaptureReactionTypeForPTEffectReactionType;
    memset(&v11, 0, sizeof(v11));
    objc_msgSend_startTime(a3);
    CMTimeMakeWithSeconds(&v11, v7, 1000000000);
    v8 = [AVCaptureReactionEffectState alloc];
    v10 = v11;
    v9 = [(AVCaptureReactionEffectState *)v8 initWithReactionType:v6 startTime:&v10];
    [*(a1 + 40) addObject:{-[AVCaptureReactionEffectState dictionaryRepresentation](v9, "dictionaryRepresentation")}];
  }
}

void __110__AVControlCenterModuleState_updateActiveReactions_currentRenderPTS_requestedTriggers_forCaptureDeviceWithID___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  AVCaptureReactionTypeForPTEffectReactionType = _AVControlCenterGetAVCaptureReactionTypeForPTEffectReactionType([a3 effectType]);
  if (AVCaptureReactionTypeForPTEffectReactionType)
  {
    v6 = AVCaptureReactionTypeForPTEffectReactionType;
    memset(&v13, 0, sizeof(v13));
    objc_msgSend_startTime(a3);
    CMTimeMakeWithSeconds(&v13, v7, 1000000000);
    v8 = [AVCaptureReactionEffectState alloc];
    v12 = v13;
    v10 = *(a1 + 40);
    v11 = *(a1 + 56);
    v9 = [(AVCaptureReactionEffectState *)v8 initWithReactionType:v6 startTime:&v12 endTime:&v10];
    [*(a1 + 32) addObject:{-[AVCaptureReactionEffectState dictionaryRepresentation](v9, "dictionaryRepresentation")}];
  }
}

uint64_t __110__AVControlCenterModuleState_updateActiveReactions_currentRenderPTS_requestedTriggers_forCaptureDeviceWithID___block_invoke_3(void x0_0, void *a1, void *a2)
{
  v4 = objc_msgSend_objectForKeyedSubscript_(a1, a1, @"StartTime");
  v5 = objc_msgSend_objectForKeyedSubscript_(a2);

  return [v4 compare:v5];
}

- (NSURL)backgroundReplacementURL
{
  holdingStateLock = self->_holdingStateLock;
  if (!holdingStateLock)
  {
    os_unfair_lock_lock(&self->_stateLock);
  }

  v4 = self->_backgroundReplacementURL;
  if (!holdingStateLock)
  {
    os_unfair_lock_unlock(&self->_stateLock);
  }

  return v4;
}

- (void)setBackgroundReplacementURL:(id)l
{
  if (l)
  {
    v5 = 0;
    v4 = [l bookmarkDataWithOptions:0 includingResourceValuesForKeys:0 relativeToURL:0 error:&v5];
    if (v5)
    {
      return;
    }

    l = v4;
  }

  [AVCaptureProprietaryDefaultsSingleton setObject:l forKey:self->_backgroundReplacementURLBookmarkKey];
}

- (__CVBuffer)backgroundReplacementPixelBufferFillingWidth:(int)width height:(int)height
{
  v4 = *&height;
  v5 = *&width;
  holdingStateLock = self->_holdingStateLock;
  if (!holdingStateLock)
  {
    os_unfair_lock_lock(&self->_stateLock);
  }

  backgroundReplacementPixelBuffer = self->_backgroundReplacementPixelBuffer;
  if (backgroundReplacementPixelBuffer)
  {
    if (self->_backgroundReplacementPixelBufferFillWidth == v5 && self->_backgroundReplacementPixelBufferFillHeight == v4)
    {
      v9 = CFRetain(backgroundReplacementPixelBuffer);
      v10 = CFAutorelease(v9);
      if (holdingStateLock)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    if (!v5 || !v4)
    {
      CFRelease(backgroundReplacementPixelBuffer);
      self->_backgroundReplacementPixelBuffer = 0;
      goto LABEL_15;
    }

LABEL_13:
    v10 = 0;
    if (holdingStateLock)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (v5 && v4)
  {
    goto LABEL_13;
  }

LABEL_15:
  v10 = 0;
  *&self->_backgroundReplacementPixelBufferFillWidth = 0;
  if (!holdingStateLock)
  {
LABEL_16:
    os_unfair_lock_unlock(&self->_stateLock);
  }

LABEL_17:
  if (v4 >= 1 && v5 >= 1 && !v10)
  {
    v11 = [AVCaptureProprietaryDefaultsSingleton imageForKey:self->_backgroundReplacementURLBookmarkKey fillWidth:v5 fillHeight:v4];
    if (v11)
    {
      v10 = v11;
    }

    else
    {
      [(AVControlCenterModuleState *)self setBackgroundReplacementURL:+[AVCaptureDevice backgroundReplacementURLDefault]];
      v10 = [AVCaptureProprietaryDefaultsSingleton imageForKey:self->_backgroundReplacementURLBookmarkKey fillWidth:v5 fillHeight:v4];
      if (!v10)
      {
        return v10;
      }
    }

    if (!holdingStateLock)
    {
      os_unfair_lock_lock(&self->_stateLock);
    }

    v12 = self->_backgroundReplacementPixelBuffer;
    self->_backgroundReplacementPixelBuffer = v10;
    CFRetain(v10);
    if (v12)
    {
      CFRelease(v12);
    }

    self->_backgroundReplacementPixelBufferFillWidth = v5;
    self->_backgroundReplacementPixelBufferFillHeight = v4;
    if (!holdingStateLock)
    {
      os_unfair_lock_unlock(&self->_stateLock);
    }
  }

  return v10;
}

- (float)effectIntensityForVideoEffect:(id)effect
{
  if ([effect isEqualToString:@"AVControlCenterVideoEffectBackgroundBlur"] & 1) != 0 || (objc_msgSend(effect, "isEqualToString:", @"AVControlCenterVideoEffectStudioLighting"))
  {
    holdingStateLock = self->_holdingStateLock;
    if (!holdingStateLock)
    {
      os_unfair_lock_lock(&self->_stateLock);
    }

    if ([effect isEqualToString:@"AVControlCenterVideoEffectBackgroundBlur"])
    {
      v6 = 128;
    }

    else
    {
      v7 = 0.0;
      if (![effect isEqualToString:@"AVControlCenterVideoEffectStudioLighting"])
      {
        goto LABEL_10;
      }

      v6 = 192;
    }

    v7 = *(&self->super.isa + v6);
LABEL_10:
    if (!holdingStateLock)
    {
      os_unfair_lock_unlock(&self->_stateLock);
    }

    return v7;
  }

  v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations(v8, v9))
  {
    objc_exception_throw(v8);
  }

  NSLog(&cfstr_SuppressingExc.isa, v8);
  return 0.0;
}

- (BOOL)setEffectIntensityForVideoEffect:(float)effect forVideoEffect:(id)videoEffect
{
  if (([videoEffect isEqualToString:@"AVControlCenterVideoEffectBackgroundBlur"] & 1) == 0 && (objc_msgSend(videoEffect, "isEqualToString:", @"AVControlCenterVideoEffectStudioLighting") & 1) == 0)
  {
    v14 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations(v14, v15))
    {
      objc_exception_throw(v14);
    }

    NSLog(&cfstr_SuppressingExc.isa, v14);
    return 0;
  }

  holdingStateLock = self->_holdingStateLock;
  if (!holdingStateLock)
  {
    os_unfair_lock_lock(&self->_stateLock);
    self->_holdingStateLock = 1;
  }

  if (![videoEffect isEqualToString:@"AVControlCenterVideoEffectBackgroundBlur"])
  {
    if (![videoEffect isEqualToString:@"AVControlCenterVideoEffectStudioLighting"])
    {
      v16 = 0;
      if (holdingStateLock)
      {
        return v16;
      }

      goto LABEL_25;
    }

    if (effect < 0.0 || effect > 1.0)
    {
      v11 = MEMORY[0x1E695DF30];
      v12 = *MEMORY[0x1E695D940];
      goto LABEL_18;
    }

    v13 = 200;
LABEL_24:
    *&v9 = effect;
    +[AVCaptureProprietaryDefaultsSingleton setObject:forKey:](AVCaptureProprietaryDefaultsSingleton, "setObject:forKey:", [MEMORY[0x1E696AD98] numberWithFloat:v9], *(&self->super.isa + v13));
    v16 = 1;
    if (holdingStateLock)
    {
      return v16;
    }

LABEL_25:
    os_unfair_lock_unlock(&self->_stateLock);
    self->_holdingStateLock = 0;
    return v16;
  }

  +[AVCaptureDevice backgroundBlurApertureRange];
  if (v8 <= effect)
  {
    +[AVCaptureDevice backgroundBlurApertureRange];
    if (v10 >= effect)
    {
      v13 = 136;
      goto LABEL_24;
    }
  }

  v11 = MEMORY[0x1E695DF30];
  v12 = *MEMORY[0x1E695D940];
LABEL_18:
  v17 = [v11 exceptionWithName:v12 reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  v19 = v17;
  if (!holdingStateLock)
  {
    os_unfair_lock_unlock(&self->_stateLock);
    self->_holdingStateLock = 0;
  }

  if (AVCaptureShouldThrowForAPIViolations(v17, v18))
  {
    objc_exception_throw(v19);
  }

  NSLog(&cfstr_SuppressingExc.isa, v19);
  return 0;
}

- (AudioValueRange)effectIntensityRangeForVideoEffect:(id)effect
{
  if ([effect isEqualToString:@"AVControlCenterVideoEffectBackgroundBlur"] & 1) != 0 || (objc_msgSend(effect, "isEqualToString:", @"AVControlCenterVideoEffectStudioLighting"))
  {
    if ([effect isEqualToString:@"AVControlCenterVideoEffectBackgroundBlur"])
    {
      +[AVCaptureDevice backgroundBlurApertureRange];
    }

    else
    {
      v6 = [effect isEqualToString:@"AVControlCenterVideoEffectStudioLighting"];
      v4 = 0.0;
      v5 = 1.0;
      if (!v6)
      {
        v5 = 0.0;
      }
    }
  }

  else
  {
    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations(v7, v8))
    {
      objc_exception_throw(v7);
    }

    NSLog(&cfstr_SuppressingExc.isa, v7);
    v5 = 0.0;
    v4 = 0.0;
  }

  result.mMaximum = v5;
  result.mMinimum = v4;
  return result;
}

- (float)effectIntensityDefaultForVideoEffect:(id)effect
{
  if (([effect isEqualToString:@"AVControlCenterVideoEffectBackgroundBlur"] & 1) == 0 && (objc_msgSend(effect, "isEqualToString:", @"AVControlCenterVideoEffectStudioLighting") & 1) == 0)
  {
    v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations(v5, v6))
    {
      objc_exception_throw(v5);
    }

    NSLog(&cfstr_SuppressingExc.isa, v5);
    return 0.0;
  }

  if ([effect isEqualToString:@"AVControlCenterVideoEffectBackgroundBlur"])
  {

    +[AVCaptureDevice backgroundBlurApertureDefault];
    return result;
  }

  if (![effect isEqualToString:@"AVControlCenterVideoEffectStudioLighting"])
  {
    return 0.0;
  }

  +[AVCaptureDevice studioLightingIntensityDefault];
  return result;
}

- (void)enableBlackenFrames:(BOOL)frames forDeviceUID:(id)d
{
  framesCopy = frames;
  v5 = AVControlCenterBlackenFramesPreferenceKey(self->_bundleID, d);
  if (framesCopy)
  {
    v6 = MEMORY[0x1E695E118];
  }

  else
  {
    v6 = 0;
  }

  [AVCaptureProprietaryDefaultsSingleton setObject:v6 forKey:v5];
}

- (id)supportedMicrophoneModes
{
  holdingStateLock = self->_holdingStateLock;
  if (!holdingStateLock)
  {
    os_unfair_lock_lock(&self->_stateLock);
  }

  if ([(AVControlCenterModuleState *)self micModesSupported])
  {
    v4 = [MEMORY[0x1E695DEC8] arrayWithArray:self->_supportedMicrophoneModes];
    if (holdingStateLock)
    {
      return v4;
    }

    goto LABEL_7;
  }

  v4 = MEMORY[0x1E695E0F0];
  if (!holdingStateLock)
  {
LABEL_7:
    os_unfair_lock_unlock(&self->_stateLock);
  }

  return v4;
}

- (id)hiddenMicrophoneModes
{
  holdingStateLock = self->_holdingStateLock;
  if (!holdingStateLock)
  {
    os_unfair_lock_lock(&self->_stateLock);
  }

  if (!self->_hiddenMicrophoneModes)
  {
    v4 = MEMORY[0x1E695E0F0];
    if (holdingStateLock)
    {
      return v4;
    }

    goto LABEL_5;
  }

  v4 = [MEMORY[0x1E695DEC8] arrayWithArray:?];
  if (!holdingStateLock)
  {
LABEL_5:
    os_unfair_lock_unlock(&self->_stateLock);
  }

  return v4;
}

- (int64_t)microphoneMode
{
  holdingStateLock = self->_holdingStateLock;
  if (!holdingStateLock)
  {
    os_unfair_lock_lock(&self->_stateLock);
  }

  if ([(AVControlCenterModuleState *)self micModesSupported])
  {
    microphoneMode = self->_microphoneMode;
    if (holdingStateLock)
    {
      return microphoneMode;
    }

    goto LABEL_7;
  }

  microphoneMode = 0;
  if (!holdingStateLock)
  {
LABEL_7:
    os_unfair_lock_unlock(&self->_stateLock);
  }

  return microphoneMode;
}

- (BOOL)setMicrophoneMode:(int64_t)mode
{
  holdingStateLock = self->_holdingStateLock;
  if (!holdingStateLock)
  {
    os_unfair_lock_lock(&self->_stateLock);
    self->_holdingStateLock = 1;
  }

  LODWORD(v6) = [(AVControlCenterModuleState *)self micModesSupported];
  if (v6)
  {
    v7 = -[NSArray containsObject:](self->_supportedMicrophoneModes, "containsObject:", [MEMORY[0x1E696AD98] numberWithInteger:mode]);
    if (mode && !v7)
    {
      v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
      v6 = v8;
      if (!holdingStateLock)
      {
        os_unfair_lock_unlock(&self->_stateLock);
        self->_holdingStateLock = 0;
      }

      if (AVCaptureShouldThrowForAPIViolations(v8, v9))
      {
        objc_exception_throw(v6);
      }

      NSLog(&cfstr_SuppressingExc.isa, v6);
      LOBYTE(v6) = 0;
      return v6;
    }

    +[AVCaptureProprietaryDefaultsSingleton setObject:forKey:](AVCaptureProprietaryDefaultsSingleton, "setObject:forKey:", [MEMORY[0x1E696AD98] numberWithInteger:mode], self->_microphoneModeKey);
  }

  if (!holdingStateLock)
  {
    os_unfair_lock_unlock(&self->_stateLock);
    self->_holdingStateLock = 0;
  }

  return v6;
}

- (int64_t)activeMicrophoneMode
{
  holdingStateLock = self->_holdingStateLock;
  if (!holdingStateLock)
  {
    os_unfair_lock_lock(&self->_stateLock);
  }

  activeMicrophoneMode = self->_activeMicrophoneMode;
  if (activeMicrophoneMode <= 0)
  {
    if (activeMicrophoneMode == -1)
    {
      activeMicrophoneMode = self->_microphoneMode;
      if (holdingStateLock)
      {
        return activeMicrophoneMode;
      }

      goto LABEL_7;
    }

    activeMicrophoneMode = 0;
  }

  if (!holdingStateLock)
  {
LABEL_7:
    os_unfair_lock_unlock(&self->_stateLock);
  }

  return activeMicrophoneMode;
}

- (BOOL)voiceProcessingBypassed
{
  holdingStateLock = self->_holdingStateLock;
  if (!holdingStateLock)
  {
    os_unfair_lock_lock(&self->_stateLock);
  }

  if ([(AVControlCenterModuleState *)self micModesSupported])
  {
    auVoiceIOBypassVoiceProcessing = self->_auVoiceIOBypassVoiceProcessing;
    if (holdingStateLock)
    {
      return auVoiceIOBypassVoiceProcessing;
    }

    goto LABEL_7;
  }

  auVoiceIOBypassVoiceProcessing = 0;
  if (!holdingStateLock)
  {
LABEL_7:
    os_unfair_lock_unlock(&self->_stateLock);
  }

  return auVoiceIOBypassVoiceProcessing;
}

- (BOOL)isAutoMicrophoneModeEnabled
{
  holdingStateLock = self->_holdingStateLock;
  if (!holdingStateLock)
  {
    os_unfair_lock_lock(&self->_stateLock);
  }

  if ([(AVControlCenterModuleState *)self isAutoMicrophoneModeSupported])
  {
    autoMicModeEnabled = self->_autoMicModeEnabled;
    if (holdingStateLock)
    {
      return autoMicModeEnabled;
    }

    goto LABEL_7;
  }

  autoMicModeEnabled = 0;
  if (!holdingStateLock)
  {
LABEL_7:
    os_unfair_lock_unlock(&self->_stateLock);
  }

  return autoMicModeEnabled;
}

- (BOOL)setAutoMicrophoneModeEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  holdingStateLock = self->_holdingStateLock;
  if (!holdingStateLock)
  {
    os_unfair_lock_lock(&self->_stateLock);
    self->_holdingStateLock = 1;
  }

  isAutoMicrophoneModeSupported = [(AVControlCenterModuleState *)self isAutoMicrophoneModeSupported];
  if (isAutoMicrophoneModeSupported)
  {
    +[AVCaptureProprietaryDefaultsSingleton setObject:forKey:](AVCaptureProprietaryDefaultsSingleton, "setObject:forKey:", [MEMORY[0x1E696AD98] numberWithBool:enabledCopy], self->_autoMicModeEnabledKey);
  }

  if (!holdingStateLock)
  {
    os_unfair_lock_unlock(&self->_stateLock);
    self->_holdingStateLock = 0;
  }

  return isAutoMicrophoneModeSupported;
}

- (void)startPanningAtPoint:(CGPoint)point
{
  DictionaryRepresentation = CGPointCreateDictionaryRepresentation(point);
  [AVCaptureProprietaryDefaultsSingleton setObject:DictionaryRepresentation forKey:self->_startPanningAtPointKey];

  CFRelease(DictionaryRepresentation);
}

- (void)panWithTranslation:(CGPoint)translation
{
  DictionaryRepresentation = CGPointCreateDictionaryRepresentation(translation);
  [AVCaptureProprietaryDefaultsSingleton setObject:DictionaryRepresentation forKey:self->_panWithTranslationKey];

  CFRelease(DictionaryRepresentation);
}

- (void)setManualFramingOriginalZoomFactor:(double)factor convertedZoomFactor:(double)zoomFactor
{
  v12[0] = AVControlCenterManualFramingOriginalVideoZoomFactor;
  v13[0] = [MEMORY[0x1E696AD98] numberWithDouble:?];
  v12[1] = AVControlCenterManualFramingConvertedVideoZoomFactor;
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:zoomFactor];
  v12[2] = AVControlCenterManualFramingUpdateSettingEntity;
  v13[1] = v7;
  v13[2] = @"ControlCenterModules";
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];
  if (dword_1ED8068A0)
  {
    v11 = 0;
    v10 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [(AVControlCenterModuleState *)self _checkManualFramingDefaultStateWithNewOriginalZoomFactor:factor];
  [AVCaptureProprietaryDefaultsSingleton setObject:v8 forKey:self->_manualFramingVideoZoomFactorKey];
}

- (double)manualFramingOriginalVideoZoomFactor
{
  v3 = [AVCaptureProprietaryDefaultsSingleton objectForKey:self->_manualFramingVideoZoomFactorKey];
  if (v3 && (v4 = v3, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = objc_msgSend_objectForKeyedSubscript_(v4);
    v6 = objc_msgSend_objectForKeyedSubscript_(v4);
    if (v5)
    {
      [v5 floatValue];
      v8 = v7;
    }

    else
    {
      v16 = v6;
      manualFramingDeviceType = [(AVControlCenterModuleState *)self manualFramingDeviceType];
      [v16 floatValue];
      v19 = v18;
      if (manualFramingDeviceType == 2)
      {
        v8 = v19 * 0.5;
      }

      else
      {
        v8 = v19;
      }
    }

    [(AVControlCenterModuleState *)self _defaultOriginalVideoZoomFactor];
    v10 = v20;
    if (vabdd_f64(v8, v20) >= 0.00999999978)
    {
      v10 = v8;
    }

    else
    {
      if (!dword_1ED8068A0)
      {
        return v10;
      }

      v29 = 0;
      v28 = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  else
  {
    [(AVControlCenterModuleState *)self _defaultOriginalVideoZoomFactor];
    v10 = v9;
  }

  if (dword_1ED8068A0)
  {
    v29 = 0;
    v28 = OS_LOG_TYPE_DEFAULT;
    v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v12 = v29;
    v13 = v28;
    if (os_log_type_enabled(v11, v28))
    {
      v14 = v12;
    }

    else
    {
      v14 = v12 & 0xFFFFFFFE;
    }

    if (v14)
    {
      v23 = 136315394;
      v24 = "[AVControlCenterModuleState manualFramingOriginalVideoZoomFactor]";
      v25 = 2048;
      v26 = v10;
      LODWORD(v22) = 22;
      _os_log_send_and_compose_impl(v14, 0, v27, 128, &dword_1A917C000, v11, v13, "<<<< AVControlCenterModules >>>> %s: Manual Framing original video zoom factor: %.6f", &v23, v22);
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return v10;
}

- (BOOL)manualFramingEnabledForDevice:(id)device
{
  holdingStateLock = self->_holdingStateLock;
  if (!holdingStateLock)
  {
    os_unfair_lock_lock(&self->_stateLock);
  }

  if ([device isCenterStageActive])
  {
    centerStageSupported = 0;
    if (holdingStateLock)
    {
      return centerStageSupported;
    }

    goto LABEL_7;
  }

  centerStageSupported = self->_centerStageSupported;
  if (!holdingStateLock)
  {
LABEL_7:
    os_unfair_lock_unlock(&self->_stateLock);
  }

  return centerStageSupported;
}

- (BOOL)manualFramingIsAtDefault
{
  holdingStateLock = self->_holdingStateLock;
  if (!holdingStateLock)
  {
    os_unfair_lock_lock(&self->_stateLock);
    self->_holdingStateLock = 1;
  }

  v4 = [AVCaptureProprietaryDefaultsSingleton objectForKey:self->_panningAnglesKey];
  [(AVControlCenterModuleState *)self manualFramingOriginalVideoZoomFactor];
  v6 = v5;
  [(AVControlCenterModuleState *)self _defaultOriginalVideoZoomFactor];
  v8 = v7;
  if (!holdingStateLock)
  {
    os_unfair_lock_unlock(&self->_stateLock);
    self->_holdingStateLock = 0;
  }

  v11.x = 0.0;
  v11.y = 0.0;
  v9 = CGPointMakeWithDictionaryRepresentation(v4, &v11);
  if (v9)
  {
    LOBYTE(v9) = 0;
    if (fabs(v11.x) < 0.00999999978 && fabs(v11.y) < 0.00999999978)
    {
      LOBYTE(v9) = vabdd_f64(v6, v8) < 0.00999999978;
    }
  }

  return v9;
}

- (void)setCenterStageFieldOfViewRestrictedToWide:(BOOL)wide
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{wide, AVControlCenterCenterStageFieldOfViewRestrictedToWide}];
  v5[1] = AVControlCenterManualFramingUpdateSettingEntity;
  v6[0] = v4;
  v6[1] = @"ControlCenterModules";
  +[AVCaptureProprietaryDefaultsSingleton setObject:forKey:](AVCaptureProprietaryDefaultsSingleton, "setObject:forKey:", [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:2], self->_centerStageFieldOfViewRestrictedToWideKey);
}

- (BOOL)centerStageFieldOfViewRestrictedToWide
{
  v2 = [AVCaptureProprietaryDefaultsSingleton objectForKey:self->_centerStageFieldOfViewRestrictedToWideKey];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v4 = objc_msgSend_objectForKeyedSubscript_(v3);

  return [v4 BOOLValue];
}

- (void)setManualFramingDeviceType:(int64_t)type
{
  if (self->_holdingStateLock)
  {
    +[AVCaptureProprietaryDefaultsSingleton setObject:forKey:](AVCaptureProprietaryDefaultsSingleton, "setObject:forKey:", [MEMORY[0x1E696AD98] numberWithInteger:type], self->_manualFramingDeviceTypeKey);
    self->_manualFramingDeviceType = type;
  }

  else
  {
    os_unfair_lock_lock(&self->_stateLock);
    self->_holdingStateLock = 1;
    +[AVCaptureProprietaryDefaultsSingleton setObject:forKey:](AVCaptureProprietaryDefaultsSingleton, "setObject:forKey:", [MEMORY[0x1E696AD98] numberWithInteger:type], self->_manualFramingDeviceTypeKey);
    self->_manualFramingDeviceType = type;
    os_unfair_lock_unlock(&self->_stateLock);
    self->_holdingStateLock = 0;
  }
}

- (double)_defaultOriginalVideoZoomFactor
{
  manualFramingDeviceType = [(AVControlCenterModuleState *)self manualFramingDeviceType];
  zoomFactorConstantsByManualFramingDeviceType = [(AVControlCenterModuleState *)self zoomFactorConstantsByManualFramingDeviceType];
  [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", manualFramingDeviceType];
  v5 = objc_msgSend_objectForKeyedSubscript_(zoomFactorConstantsByManualFramingDeviceType);
  [objc_msgSend_objectForKeyedSubscript_(v5) floatValue];
  result = v6;
  if (manualFramingDeviceType == 2)
  {
    return result * 0.5;
  }

  return result;
}

- (void)_proprietaryDefaultChanged:(id)changed keyPath:(id)path context:(void *)context
{
  changedCopy = changed;
  if (dword_1ED8068A0)
  {
    v151 = 0;
    v150 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  holdingStateLock = self->_holdingStateLock;
  if (!holdingStateLock)
  {
    os_unfair_lock_lock(&self->_stateLock);
  }

  if (AVCCM_AUVoiceIOBypassVoiceProcessingChangedContext == context)
  {
    v13 = [(AVControlCenterModuleState *)self micModesSupported:changed];
    if (changedCopy)
    {
      LODWORD(changedCopy) = [(NSURL *)changedCopy BOOLValue];
    }

    v11 = 0;
    if (holdingStateLock)
    {
      v12 = 0;
    }

    else
    {
      v14 = !v13;
      v12 = 0;
      if (!v14)
      {
        if (self->_auVoiceIOBypassVoiceProcessing == changedCopy)
        {
          v11 = 0;
          v12 = 0;
        }

        else
        {
          v141 = @"AVControlCenterModulesNotificationBundleIdentifierKey";
          bundleID = self->_bundleID;
          v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&bundleID forKeys:&v141 count:1];
          v12 = @"AVControlCenterMicrophoneModesModuleVoiceProcessingBypassedDidChangeNotification";
        }
      }
    }

    self->_auVoiceIOBypassVoiceProcessing = changedCopy;
    goto LABEL_132;
  }

  if (AVCCM_AUVoiceIOChatFlavorChangedContext == context)
  {
    v15 = [(AVControlCenterModuleState *)self micModesSupported:changed];
    if (changedCopy)
    {
      changedCopy = [(NSURL *)changedCopy integerValue];
    }

    v11 = 0;
    if (holdingStateLock)
    {
      v12 = 0;
    }

    else
    {
      v16 = !v15;
      v12 = 0;
      if (!v16)
      {
        if (changedCopy == self->_microphoneMode)
        {
          v11 = 0;
          v12 = 0;
        }

        else
        {
          v139 = @"AVControlCenterModulesNotificationBundleIdentifierKey";
          v140 = self->_bundleID;
          v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v140 forKeys:&v139 count:1];
          v12 = @"AVControlCenterMicrophoneModesModuleMicrophoneModeDidChangeNotification";
        }
      }
    }

    self->_microphoneMode = changedCopy;
    goto LABEL_132;
  }

  if (AVCCM_AUVoiceIOActiveChatFlavorChangedContext == context)
  {
    v17 = [(AVControlCenterModuleState *)self micModesSupported:changed];
    if (changedCopy)
    {
      integerValue = [(NSURL *)changedCopy integerValue];
    }

    else
    {
      integerValue = -1;
    }

    v11 = 0;
    if (holdingStateLock)
    {
      v12 = 0;
    }

    else
    {
      v25 = !v17;
      v12 = 0;
      if (!v25)
      {
        if (integerValue == self->_activeMicrophoneMode)
        {
          v11 = 0;
          v12 = 0;
        }

        else
        {
          v137 = @"AVControlCenterModulesNotificationBundleIdentifierKey";
          v138 = self->_bundleID;
          v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v138 forKeys:&v137 count:1];
          v12 = @"AVControlCenterMicrophoneModesModuleActiveMicrophoneModeDidChangeNotification";
        }
      }
    }

    self->_activeMicrophoneMode = integerValue;
    goto LABEL_132;
  }

  if (AVCCM_AUVoiceIOSupportedChatFlavorsChangedContext == context)
  {
    if (!changedCopy)
    {
      changedCopy = AVControlCenterAudioDefaultSupportedMicrophoneModesForBundleID(self->_bundleID, a2);
      if (dword_1ED8068A0)
      {
        v151 = 0;
        v150 = OS_LOG_TYPE_DEFAULT;
        v19 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v20 = v151;
        v21 = v150;
        if (os_log_type_enabled(v19, v150))
        {
          v22 = v20;
        }

        else
        {
          v22 = v20 & 0xFFFFFFFE;
        }

        if (v22)
        {
          v23 = self->_bundleID;
          v143 = 136315650;
          v144 = "[AVControlCenterModuleState _proprietaryDefaultChanged:keyPath:context:]";
          v145 = 2112;
          v146 = v23;
          v147 = 2112;
          *v148 = changedCopy;
          _os_log_send_and_compose_impl(v22, 0, v149, 128, &dword_1A917C000, v19, v21, "<<<< AVControlCenterModules >>>> %s: Default %@ supportedMicModes = %@", &v143, 32);
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    v36 = [(AVControlCenterModuleState *)self micModesSupported:changed];
    v11 = 0;
    v12 = 0;
    if (!holdingStateLock && v36)
    {
      if (([(NSURL *)changedCopy isEqual:self->_supportedMicrophoneModes]& 1) != 0)
      {
        v11 = 0;
        v12 = 0;
      }

      else
      {
        v135 = @"AVControlCenterModulesNotificationBundleIdentifierKey";
        v136 = self->_bundleID;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v136 forKeys:&v135 count:1];
        v12 = @"AVControlCenterMicrophoneModesModuleSupportedMicrophoneModesDidChangeNotification";
      }
    }

    self->_supportedMicrophoneModes = changedCopy;
    goto LABEL_132;
  }

  if (AVCCM_AUVoiceIOHiddenChatFlavorsChangedContext == context)
  {
    if (!changedCopy)
    {
      changedCopy = MEMORY[0x1E695E0F0];
    }

    if (holdingStateLock || (hiddenMicrophoneModes = self->_hiddenMicrophoneModes) == 0 || ([(NSURL *)changedCopy isEqual:hiddenMicrophoneModes, path]& 1) != 0)
    {
      v11 = 0;
      v12 = 0;
    }

    else
    {
      v133 = @"AVControlCenterModulesNotificationBundleIdentifierKey";
      v134 = self->_bundleID;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v134 forKeys:&v133 count:1];
      v12 = @"AVControlCenterMicrophoneModesModuleHiddenMicrophoneModesDidChangeNotification";
    }

    self->_hiddenMicrophoneModes = changedCopy;
    goto LABEL_132;
  }

  if (AVCCM_AUVoiceIOAutoEnabledChangedContext == context)
  {
    if (changedCopy)
    {
      IsAutoMicrophoneEnabledForBundleIDAndMicMode = [(NSURL *)changedCopy BOOLValue:changed];
    }

    else
    {
      IsAutoMicrophoneEnabledForBundleIDAndMicMode = AVControlCenterAudioDefaultIsAutoMicrophoneEnabledForBundleIDAndMicMode(self->_bundleID, self->_microphoneMode);
      if (dword_1ED8068A0)
      {
        v151 = 0;
        v150 = OS_LOG_TYPE_DEFAULT;
        v28 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v29 = v151;
        v30 = v150;
        if (os_log_type_enabled(v28, v150))
        {
          v31 = v29;
        }

        else
        {
          v31 = v29 & 0xFFFFFFFE;
        }

        if (v31)
        {
          v32 = self->_bundleID;
          microphoneMode = self->_microphoneMode;
          v34 = "no";
          if (IsAutoMicrophoneEnabledForBundleIDAndMicMode)
          {
            v34 = "yes";
          }

          v143 = 136315906;
          v144 = "[AVControlCenterModuleState _proprietaryDefaultChanged:keyPath:context:]";
          v145 = 2112;
          v146 = v32;
          v147 = 1024;
          *v148 = microphoneMode;
          *&v148[4] = 2080;
          *&v148[6] = v34;
          _os_log_send_and_compose_impl(v31, 0, v149, 128, &dword_1A917C000, v28, v30, "<<<< AVControlCenterModules >>>> %s: Default %@ with micMode:%d autoEnabled = %s", &v143, 38);
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    isAutoMicrophoneModeSupported = [(AVControlCenterModuleState *)self isAutoMicrophoneModeSupported];
    if (holdingStateLock || !isAutoMicrophoneModeSupported || self->_autoMicModeEnabled == IsAutoMicrophoneEnabledForBundleIDAndMicMode)
    {
      v11 = 0;
      v12 = 0;
    }

    else
    {
      v131 = @"AVControlCenterModulesNotificationBundleIdentifierKey";
      v132 = self->_bundleID;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v132 forKeys:&v131 count:1];
      v12 = @"AVControlCenterMicrophoneModesModuleAutoEnabledDidChangeNotification";
    }

    self->_autoMicModeEnabled = IsAutoMicrophoneEnabledForBundleIDAndMicMode;
    goto LABEL_132;
  }

  if (AVCCM_CenterStageControlModeChangedContext == context)
  {
    if (changedCopy)
    {
      changedCopy = [(NSURL *)changedCopy integerValue:changed];
    }

    if (holdingStateLock || changedCopy == self->_centerStageControlMode)
    {
      v11 = 0;
      v12 = 0;
    }

    else
    {
      v129[0] = @"AVControlCenterModulesNotificationVideoEffectKey";
      v129[1] = @"AVControlCenterModulesNotificationBundleIdentifierKey";
      v37 = self->_bundleID;
      v130[0] = @"AVControlCenterVideoEffectCenterStage";
      v130[1] = v37;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v130 forKeys:v129 count:2];
      v12 = @"AVControlCenterVideoEffectsModuleEffectControlModeDidChangeNotification";
    }

    self->_centerStageControlMode = changedCopy;
    goto LABEL_132;
  }

  if (AVCCM_CenterStageEnabledChangedContext == context)
  {
    if (changedCopy)
    {
      path = [(NSURL *)changedCopy BOOLValue:changed];
    }

    else
    {
      path = [AVCaptureDevice defaultCenterStageEnabledForBundleID:self->_bundleID, path];
    }

    v38 = path;
    if (holdingStateLock || self->_centerStageEnabled == path)
    {
      v11 = 0;
      v12 = 0;
    }

    else
    {
      v127[0] = @"AVControlCenterModulesNotificationVideoEffectKey";
      v127[1] = @"AVControlCenterModulesNotificationBundleIdentifierKey";
      v39 = self->_bundleID;
      v128[0] = @"AVControlCenterVideoEffectCenterStage";
      v128[1] = v39;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v128 forKeys:v127 count:2];
      v12 = @"AVControlCenterVideoEffectsModuleEffectEnabledDidChangeNotification";
    }

    self->_centerStageEnabled = v38;
    goto LABEL_132;
  }

  if (AVCCM_CenterStageUnavailableReasonsChangedContext == context)
  {
    if (changedCopy)
    {
      v35 = [(NSURL *)changedCopy unsignedIntegerValue:changed];
    }

    else
    {
      v35 = 0;
    }

    v125[0] = @"AVControlCenterModulesNotificationCenterStageUnavailableReasonsKey";
    v125[1] = @"AVControlCenterModulesNotificationBundleIdentifierKey";
    v126[0] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v35];
    v126[1] = self->_bundleID;
    v40 = MEMORY[0x1E695DF20];
    v41 = v126;
    v42 = v125;
    goto LABEL_124;
  }

  if (AVCCM_BackgroundBlurControlModeChangedContext == context)
  {
    if (changedCopy)
    {
      changedCopy = [(NSURL *)changedCopy integerValue:changed];
    }

    if (holdingStateLock || changedCopy == self->_backgroundBlurControlMode)
    {
      v11 = 0;
      v12 = 0;
    }

    else
    {
      v123[0] = @"AVControlCenterModulesNotificationVideoEffectKey";
      v123[1] = @"AVControlCenterModulesNotificationBundleIdentifierKey";
      v50 = self->_bundleID;
      v124[0] = @"AVControlCenterVideoEffectBackgroundBlur";
      v124[1] = v50;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v124 forKeys:v123 count:2];
      v12 = @"AVControlCenterVideoEffectsModuleEffectControlModeDidChangeNotification";
    }

    self->_backgroundBlurControlMode = changedCopy;
    goto LABEL_132;
  }

  if (AVCCM_BackgroundBlurEnabledChangedContext == context)
  {
    if (changedCopy)
    {
      LODWORD(changedCopy) = [(NSURL *)changedCopy BOOLValue:changed];
    }

    if (holdingStateLock || self->_backgroundBlurEnabled == changedCopy)
    {
      v11 = 0;
      v12 = 0;
    }

    else
    {
      v121[0] = @"AVControlCenterModulesNotificationVideoEffectKey";
      v121[1] = @"AVControlCenterModulesNotificationBundleIdentifierKey";
      v52 = self->_bundleID;
      v122[0] = @"AVControlCenterVideoEffectBackgroundBlur";
      v122[1] = v52;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v122 forKeys:v121 count:2];
      v12 = @"AVControlCenterVideoEffectsModuleEffectEnabledDidChangeNotification";
    }

    self->_backgroundBlurEnabled = changedCopy;
    goto LABEL_132;
  }

  if (AVCCM_BackgroundBlurUnavailableReasonsChangedContext == context)
  {
    if (changedCopy)
    {
      v49 = [(NSURL *)changedCopy unsignedIntegerValue:changed];
    }

    else
    {
      v49 = 0;
    }

    v119[0] = @"AVControlCenterModulesNotificationBackgroundBlurUnavailableReasonsKey";
    v119[1] = @"AVControlCenterModulesNotificationBundleIdentifierKey";
    v120[0] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v49];
    v120[1] = self->_bundleID;
    v40 = MEMORY[0x1E695DF20];
    v41 = v120;
    v42 = v119;
    goto LABEL_124;
  }

  if (AVCCM_BackgroundBlurApertureChangedContext == context)
  {
    if (changedCopy)
    {
      [(NSURL *)changedCopy floatValue:changed];
    }

    else
    {
      [AVCaptureDevice backgroundBlurApertureDefault:changed];
    }

    v53 = v51;
    if (holdingStateLock || v51 == self->_backgroundBlurAperture)
    {
      v11 = 0;
      v12 = 0;
    }

    else
    {
      v117[0] = @"AVControlCenterModulesNotificationVideoEffectKey";
      v117[1] = @"AVControlCenterModulesNotificationBundleIdentifierKey";
      v54 = self->_bundleID;
      v118[0] = @"AVControlCenterVideoEffectBackgroundBlur";
      v118[1] = v54;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v118 forKeys:v117 count:2];
      v12 = @"AVControlCenterVideoEffectsModuleEffectIntensityDidChangeNotification";
    }

    self->_backgroundBlurAperture = v53;
    goto LABEL_132;
  }

  if (AVCCM_StudioLightingControlModeChangedContext == context)
  {
    if (changedCopy)
    {
      changedCopy = [(NSURL *)changedCopy integerValue:changed];
    }

    if (holdingStateLock || changedCopy == self->_studioLightingControlMode)
    {
      v11 = 0;
      v12 = 0;
    }

    else
    {
      v115[0] = @"AVControlCenterModulesNotificationVideoEffectKey";
      v115[1] = @"AVControlCenterModulesNotificationBundleIdentifierKey";
      v56 = self->_bundleID;
      v116[0] = @"AVControlCenterVideoEffectStudioLighting";
      v116[1] = v56;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v116 forKeys:v115 count:2];
      v12 = @"AVControlCenterVideoEffectsModuleEffectControlModeDidChangeNotification";
    }

    self->_studioLightingControlMode = changedCopy;
    goto LABEL_132;
  }

  if (AVCCM_StudioLightingEnabledChangedContext == context)
  {
    if (changedCopy)
    {
      LODWORD(changedCopy) = [(NSURL *)changedCopy BOOLValue:changed];
    }

    if (holdingStateLock || self->_studioLightingEnabled == changedCopy)
    {
      v11 = 0;
      v12 = 0;
    }

    else
    {
      v113[0] = @"AVControlCenterModulesNotificationVideoEffectKey";
      v113[1] = @"AVControlCenterModulesNotificationBundleIdentifierKey";
      v58 = self->_bundleID;
      v114[0] = @"AVControlCenterVideoEffectStudioLighting";
      v114[1] = v58;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v114 forKeys:v113 count:2];
      v12 = @"AVControlCenterVideoEffectsModuleEffectEnabledDidChangeNotification";
    }

    self->_studioLightingEnabled = changedCopy;
    goto LABEL_132;
  }

  if (AVCCM_StudioLightingUnavailableReasonsChangedContext == context)
  {
    if (changedCopy)
    {
      v55 = [(NSURL *)changedCopy unsignedIntegerValue:changed];
    }

    else
    {
      v55 = 0;
    }

    v111[0] = @"AVControlCenterModulesNotificationStudioLightingUnavailableReasonsKey";
    v111[1] = @"AVControlCenterModulesNotificationBundleIdentifierKey";
    v112[0] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v55];
    v112[1] = self->_bundleID;
    v40 = MEMORY[0x1E695DF20];
    v41 = v112;
    v42 = v111;
    goto LABEL_124;
  }

  if (AVCCM_StudioLightingIntensityChangedContext == context)
  {
    if (changedCopy)
    {
      [(NSURL *)changedCopy floatValue:changed];
    }

    else
    {
      [AVCaptureDevice studioLightingIntensityDefault:changed];
    }

    v59 = v57;
    if (holdingStateLock || v57 == self->_studioLightingIntensity)
    {
      v11 = 0;
      v12 = 0;
    }

    else
    {
      v109[0] = @"AVControlCenterModulesNotificationVideoEffectKey";
      v109[1] = @"AVControlCenterModulesNotificationBundleIdentifierKey";
      v60 = self->_bundleID;
      v110[0] = @"AVControlCenterVideoEffectStudioLighting";
      v110[1] = v60;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v110 forKeys:v109 count:2];
      v12 = @"AVControlCenterVideoEffectsModuleEffectIntensityDidChangeNotification";
    }

    self->_studioLightingIntensity = v59;
    goto LABEL_132;
  }

  if (AVCCM_ManualFramingOneShotFramingCompletedContext == context)
  {
    v12 = @"AVControlCenterManualFramingOneShotFramingDidCompleteNotification";
LABEL_183:
    v11 = MEMORY[0x1E695E0F8];
    goto LABEL_132;
  }

  if (AVCCM_ManualFramingResetFramingCompletedContext == context)
  {
    v12 = @"AVControlCenterManualFramingResetFramingDidCompleteNotification";
    goto LABEL_183;
  }

  if (AVCCM_ReactionsEnabledChangedContext == context)
  {
    if (changedCopy)
    {
      isOptedInForReactionEffects = [(NSURL *)changedCopy BOOLValue:changed];
    }

    else
    {
      isOptedInForReactionEffects = self->_isOptedInForReactionEffects;
      v151 = 0;
      v150 = OS_LOG_TYPE_DEFAULT;
      v67 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v68 = v151;
      v69 = v150;
      if (os_log_type_enabled(v67, v150))
      {
        v70 = v68;
      }

      else
      {
        v70 = v68 & 0xFFFFFFFE;
      }

      if (v70)
      {
        v71 = self->_bundleID;
        v143 = 136315650;
        v144 = "[AVControlCenterModuleState _proprietaryDefaultChanged:keyPath:context:]";
        v145 = 2112;
        v146 = v71;
        v147 = 1024;
        *v148 = isOptedInForReactionEffects;
        _os_log_send_and_compose_impl(v70, 0, v149, 128, &dword_1A917C000, v67, v69, "<<<< AVControlCenterModules >>>> %s: Control Center is querying reactions-enabled of %@ before it has initialized, lookup indicates %d (not necessarily a fault, but unexpected)", &v143, 28);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (holdingStateLock || self->_reactionsEnabled == isOptedInForReactionEffects)
    {
      v11 = 0;
      v12 = 0;
    }

    else
    {
      v107[0] = @"AVControlCenterModulesNotificationVideoEffectKey";
      v107[1] = @"AVControlCenterModulesNotificationBundleIdentifierKey";
      v81 = self->_bundleID;
      v108[0] = @"AVControlCenterVideoEffectReactions";
      v108[1] = v81;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v108 forKeys:v107 count:2];
      v12 = @"AVControlCenterVideoEffectsModuleEffectEnabledDidChangeNotification";
    }

    self->_reactionsEnabled = isOptedInForReactionEffects;
    goto LABEL_132;
  }

  if (AVCCM_GesturesEnabledChangedContext == context)
  {
    if (changedCopy)
    {
      if (dword_1ED8068A0)
      {
        v151 = 0;
        v150 = OS_LOG_TYPE_DEFAULT;
        v62 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v63 = v151;
        v64 = v150;
        if (os_log_type_enabled(v62, v150))
        {
          v65 = v63;
        }

        else
        {
          v65 = v63 & 0xFFFFFFFE;
        }

        if (v65)
        {
          v143 = 136315394;
          v144 = "[AVControlCenterModuleState _proprietaryDefaultChanged:keyPath:context:]";
          v145 = 2112;
          v146 = changedCopy;
          _os_log_send_and_compose_impl(v65, 0, v149, 128, &dword_1A917C000, v62, v64, "<<<< AVControlCenterModules >>>> %s: AVCCM Using value from PD %@", &v143, 22);
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      path2 = changedCopy;
LABEL_232:
      bOOLValue = [(NSURL *)path2 BOOLValue];
      if (holdingStateLock)
      {
        goto LABEL_261;
      }

      goto LABEL_233;
    }

    path2 = [AVCaptureProprietaryDefaultsSingleton objectForKey:self->_gesturesEnabledDefaultKey, path];
    if (path2)
    {
      goto LABEL_232;
    }

    v73 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:self->_bundleID allowPlaceholder:1 error:0];
    infoDictionary = [v73 infoDictionary];
    v75 = [infoDictionary objectForKey:AVCaptureBundleCameraReactionEffectGesturesEnabledDefaultKey ofClass:objc_opt_class()];
    if (v75)
    {
      bOOLValue = [v75 BOOLValue];
      if (!dword_1ED8068A0)
      {
        goto LABEL_260;
      }

      v151 = 0;
      v150 = OS_LOG_TYPE_DEFAULT;
      v77 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v78 = v151;
      v79 = v150;
      if (os_log_type_enabled(v77, v150))
      {
        v80 = v78;
      }

      else
      {
        v80 = v78 & 0xFFFFFFFE;
      }

      if (v80)
      {
        v143 = 136315394;
        v144 = "[AVControlCenterModuleState _proprietaryDefaultChanged:keyPath:context:]";
        v145 = 1024;
        LODWORD(v146) = bOOLValue;
        _os_log_send_and_compose_impl(v80, 0, v149, 128, &dword_1A917C000, v77, v79, "<<<< AVControlCenterModules >>>> %s: AVCCM Using default from Info.plist %d", &v143, 18);
      }
    }

    else
    {
      CFPreferenceBooleanWithDefault = FigGetCFPreferenceBooleanWithDefault();
      bOOLValue = CFPreferenceBooleanWithDefault != 0;
      if (!dword_1ED8068A0)
      {
        goto LABEL_260;
      }

      v87 = CFPreferenceBooleanWithDefault;
      v151 = 0;
      v150 = OS_LOG_TYPE_DEFAULT;
      v88 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v89 = v151;
      v90 = v150;
      if (os_log_type_enabled(v88, v150))
      {
        v91 = v89;
      }

      else
      {
        v91 = v89 & 0xFFFFFFFE;
      }

      if (v91)
      {
        v143 = 136315394;
        v144 = "[AVControlCenterModuleState _proprietaryDefaultChanged:keyPath:context:]";
        v145 = 1024;
        LODWORD(v146) = v87 != 0;
        _os_log_send_and_compose_impl(v91, 0, v149, 128, &dword_1A917C000, v88, v90, "<<<< AVControlCenterModules >>>> %s: AVCCM Using default from system %d", &v143, 18);
      }
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_260:

    if (holdingStateLock)
    {
      goto LABEL_261;
    }

LABEL_233:
    if (self->_gesturesEnabled != bOOLValue)
    {
      v105[0] = @"AVControlCenterModulesNotificationVideoEffectKey";
      v105[1] = @"AVControlCenterModulesNotificationBundleIdentifierKey";
      v82 = self->_bundleID;
      v106[0] = @"AVControlCenterVideoEffectGestures";
      v106[1] = v82;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v106 forKeys:v105 count:2];
      v12 = @"AVControlCenterVideoEffectsModuleEffectEnabledDidChangeNotification";
LABEL_262:
      self->_gesturesEnabled = bOOLValue;
      goto LABEL_132;
    }

LABEL_261:
    v11 = 0;
    v12 = 0;
    goto LABEL_262;
  }

  if (AVCCM_ReactionsUnavailableReasonsChangedContext == context)
  {
    if (changedCopy)
    {
      v66 = [(NSURL *)changedCopy unsignedIntegerValue:changed];
    }

    else
    {
      v66 = 0;
    }

    v103[0] = @"AVControlCenterModulesNotificationReactionsUnavailableReasonsKey";
    v103[1] = @"AVControlCenterModulesNotificationBundleIdentifierKey";
    v104[0] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v66];
    v104[1] = self->_bundleID;
    v40 = MEMORY[0x1E695DF20];
    v41 = v104;
    v42 = v103;
    goto LABEL_124;
  }

  contextCopy = context;
  if (AVCCM_ReactionEffectTriggeredContext == context)
  {
    v12 = @"AVControlCenterVideoEffectsReactionWasRequestedNotification";
LABEL_216:
    v11 = changedCopy;
    goto LABEL_132;
  }

  if (AVCCM_ReactionEffectsInProgressChangedContext == context)
  {
    v12 = @"AVControlCenterVideoEffectsReactionsInProgressDidChangeNotification";
    goto LABEL_216;
  }

  if (AVCCM_BackgroundReplacementEnabledChangedContext != context)
  {
    if (AVCCM_BackgroundReplacementUnavailableReasonsChangedContext != context)
    {
      if (AVCCM_BackgroundReplacementURLChangedContext == context)
      {
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if (changedCopy && (isKindOfClass & 1) == 0)
        {
          [AVControlCenterModuleState _proprietaryDefaultChanged:keyPath:context:];
        }

        if (changedCopy)
        {
          v149[0] = 0;
          changedCopy = [MEMORY[0x1E695DFF8] URLByResolvingBookmarkData:changedCopy options:256 relativeToURL:0 bookmarkDataIsStale:0 error:v149];
        }

        if (holdingStateLock || changedCopy == self->_backgroundReplacementURL || ([(NSURL *)changedCopy isEqual:?]& 1) != 0)
        {
          v11 = 0;
          v12 = 0;
        }

        else
        {
          v97[0] = @"AVControlCenterModulesNotificationVideoEffectKey";
          v97[1] = @"AVControlCenterModulesNotificationBundleIdentifierKey";
          v93 = self->_bundleID;
          v98[0] = @"AVControlCenterVideoEffectBackgroundReplacement";
          v98[1] = v93;
          v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v98 forKeys:v97 count:2];
          v12 = @"AVControlCenterVideoEffectsBackgroundReplacementURLDidChangeNotification";
        }

        self->_backgroundReplacementURL = changedCopy;
        backgroundReplacementPixelBuffer = self->_backgroundReplacementPixelBuffer;
        if (backgroundReplacementPixelBuffer)
        {
          CFRelease(backgroundReplacementPixelBuffer);
          self->_backgroundReplacementPixelBuffer = 0;
        }

        *&self->_backgroundReplacementPixelBufferFillWidth = 0;
      }

      else
      {
        v11 = 0;
        if (changedCopy)
        {
          v12 = 0;
          if (AVCCM_DockedTrackingActiveChangedContext == contextCopy)
          {
            v95 = @"dockedTrackingActive";
            v96 = changedCopy;
            v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v96 forKeys:&v95 count:1];
            v12 = @"AVControlCenterDockedTrackingActiveDidChangeNotification";
          }
        }

        else
        {
          v12 = 0;
        }
      }

      goto LABEL_132;
    }

    if (changedCopy)
    {
      v83 = [(NSURL *)changedCopy unsignedIntegerValue:changed];
    }

    else
    {
      v83 = 0;
    }

    v99[0] = @"AVControlCenterModulesNotificationBackgroundReplacementUnavailableReasonsKey";
    v99[1] = @"AVControlCenterModulesNotificationBundleIdentifierKey";
    v100[0] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v83];
    v100[1] = self->_bundleID;
    v40 = MEMORY[0x1E695DF20];
    v41 = v100;
    v42 = v99;
LABEL_124:
    v11 = [v40 dictionaryWithObjects:v41 forKeys:v42 count:2];
    v12 = @"AVControlCenterVideoEffectsUnavailableReasonsDidChangeNotification";
    goto LABEL_132;
  }

  if (changedCopy)
  {
    LODWORD(changedCopy) = [(NSURL *)changedCopy BOOLValue:changed];
  }

  if (holdingStateLock || self->_backgroundReplacementEnabled == changedCopy)
  {
    v11 = 0;
    v12 = 0;
  }

  else
  {
    v101[0] = @"AVControlCenterModulesNotificationVideoEffectKey";
    v101[1] = @"AVControlCenterModulesNotificationBundleIdentifierKey";
    v92 = self->_bundleID;
    v102[0] = @"AVControlCenterVideoEffectBackgroundReplacement";
    v102[1] = v92;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v102 forKeys:v101 count:2];
    v12 = @"AVControlCenterVideoEffectsModuleEffectEnabledDidChangeNotification";
  }

  self->_backgroundReplacementEnabled = changedCopy;
LABEL_132:
  if (!holdingStateLock)
  {
    os_unfair_lock_unlock(&self->_stateLock);
  }

  if (v12 && v11)
  {
    if (dword_1ED8068A0)
    {
      v151 = 0;
      v150 = OS_LOG_TYPE_DEFAULT;
      v44 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v45 = v151;
      v46 = v150;
      if (os_log_type_enabled(v44, v150))
      {
        v47 = v45;
      }

      else
      {
        v47 = v45 & 0xFFFFFFFE;
      }

      if (v47)
      {
        v48 = self->_bundleID;
        v143 = 136315907;
        v144 = "[AVControlCenterModuleState _proprietaryDefaultChanged:keyPath:context:]";
        v145 = 2113;
        v146 = v48;
        v147 = 2112;
        *v148 = v12;
        *&v148[8] = 2112;
        *&v148[10] = v11;
        LODWORD(v94) = 42;
        _os_log_send_and_compose_impl(v47, 0, v149, 128, &dword_1A917C000, v44, v46, "<<<< AVControlCenterModules >>>> %s: %{private}@: sending notification %@ with userInfo %@", &v143, v94);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  }
}

- (void)_handlePanningAnglesUpdate:(id)update
{
  point.x = 0.0;
  point.y = 0.0;
  CGPointMakeWithDictionaryRepresentation(update, &point);
  if (dword_1ED8068A0)
  {
    v43 = 0;
    v42 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  holdingStateLock = self->_holdingStateLock;
  if (!holdingStateLock)
  {
    os_unfair_lock_lock(&self->_stateLock);
  }

  [(AVControlCenterModuleState *)self _defaultOriginalVideoZoomFactor];
  v7 = v6;
  currentOriginalZoomFactor = self->_currentOriginalZoomFactor;
  currentPanningAngleX = self->_currentPanningAngleX;
  currentPanningAngleY = self->_currentPanningAngleY;
  *&self->_currentPanningAngleX = point;
  if (!holdingStateLock)
  {
    os_unfair_lock_unlock(&self->_stateLock);
  }

  v11 = 0;
  v12 = currentOriginalZoomFactor;
  if (fabs(currentPanningAngleX) < 0.00999999978 && fabs(currentPanningAngleY) < 0.00999999978)
  {
    v11 = vabdd_f64(v12, v7) < 0.00999999978;
  }

  v13 = fabs(point.x) >= 0.00999999978;
  if (fabs(point.y) >= 0.00999999978)
  {
    v13 = 1;
  }

  if (v11 && v13)
  {
    if (dword_1ED8068A0)
    {
      v43 = 0;
      v42 = OS_LOG_TYPE_DEFAULT;
      v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v15 = v43;
      v16 = v42;
      if (os_log_type_enabled(v14, v42))
      {
        v17 = v15;
      }

      else
      {
        v17 = v15 & 0xFFFFFFFE;
      }

      if (v17)
      {
        v31 = 136316162;
        v32 = "[AVControlCenterModuleState _handlePanningAnglesUpdate:]";
        v33 = 2048;
        v34 = currentPanningAngleX;
        v35 = 2048;
        v36 = currentPanningAngleY;
        v37 = 2048;
        x = point.x;
        v39 = 2048;
        y = point.y;
        LODWORD(v26) = 52;
        _os_log_send_and_compose_impl(v17, 0, v41, 128, &dword_1A917C000, v14, v16, "<<<< AVControlCenterModules >>>> %s: Manual Framing changes from default to non-default with new panning angles. old (%f, %f) --> new (%f, %f)", &v31, v26, *&v27, v28, *&v29);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v29 = @"isAtDefault";
    v30 = MEMORY[0x1E695E110];
    v22 = MEMORY[0x1E695DF20];
    v23 = &v30;
    v24 = &v29;
LABEL_33:
    v25 = [v22 dictionaryWithObjects:v23 forKeys:v24 count:{1, v12}];
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
    return;
  }

  v12 = vabdd_f64(v12, v7);
  if (v12 >= 0.00999999978)
  {
    v11 = 1;
  }

  if (!v11 && !v13)
  {
    if (dword_1ED8068A0)
    {
      v43 = 0;
      v42 = OS_LOG_TYPE_DEFAULT;
      v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v19 = v43;
      v20 = v42;
      if (os_log_type_enabled(v18, v42))
      {
        v21 = v19;
      }

      else
      {
        v21 = v19 & 0xFFFFFFFE;
      }

      if (v21)
      {
        v31 = 136316162;
        v32 = "[AVControlCenterModuleState _handlePanningAnglesUpdate:]";
        v33 = 2048;
        v34 = currentPanningAngleX;
        v35 = 2048;
        v36 = currentPanningAngleY;
        v37 = 2048;
        x = point.x;
        v39 = 2048;
        y = point.y;
        LODWORD(v26) = 52;
        _os_log_send_and_compose_impl(v21, 0, v41, 128, &dword_1A917C000, v18, v20, "<<<< AVControlCenterModules >>>> %s: Manual Framing changes from non-default to default with new panning angles. old (%f, %f) --> new (%f, %f)", &v31, v26, *&v27, v28, *&v29);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v27 = @"isAtDefault";
    v28 = MEMORY[0x1E695E118];
    v22 = MEMORY[0x1E695DF20];
    v23 = &v28;
    v24 = &v27;
    goto LABEL_33;
  }
}

- (void)_handleBackPropagatedVideoZoomFactorUpdate:(id)update
{
  v4 = objc_msgSend_objectForKeyedSubscript_(update, a2, AVControlCenterManualFramingConvertedVideoZoomFactor);
  manualFramingDeviceType = [(AVControlCenterModuleState *)self manualFramingDeviceType];
  [v4 floatValue];
  v7 = v6;
  if (manualFramingDeviceType == 2)
  {
    v8 = v7 * 0.5;
  }

  else
  {
    v8 = v7;
  }

  [(AVControlCenterModuleState *)self _defaultOriginalVideoZoomFactor];
  *&v9 = v9;
  v10 = *&v9;
  if (vabdd_f64(v8, *&v9) >= 0.00999999978)
  {
    v10 = v8;
  }

  else
  {
    if (!dword_1ED8068A0)
    {
      goto LABEL_17;
    }

    v31 = 0;
    v30 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (dword_1ED8068A0)
  {
    v31 = 0;
    v30 = OS_LOG_TYPE_DEFAULT;
    v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v13 = v31;
    v14 = v30;
    if (os_log_type_enabled(v12, v30))
    {
      v15 = v13;
    }

    else
    {
      v15 = v13 & 0xFFFFFFFE;
    }

    if (v15)
    {
      [v4 floatValue];
      v16 = @"NO";
      v22 = "[AVControlCenterModuleState _handleBackPropagatedVideoZoomFactorUpdate:]";
      v21 = 136315906;
      v25 = 2112;
      v23 = 2048;
      v24 = v17;
      if (manualFramingDeviceType == 2)
      {
        v16 = @"YES";
      }

      v26 = v16;
      v27 = 2048;
      v28 = v10;
      _os_log_send_and_compose_impl(v15, 0, v29, 128, &dword_1A917C000, v12, v14, "<<<< AVControlCenterModules >>>> %s: Received back propagated video zoom factor: %f. Conversion needed: %@. Resulted original video zoom factor: %f", &v21, 42);
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_17:
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v19 = @"videoZoomFactor";
  v20 = [MEMORY[0x1E696AD98] numberWithDouble:v10];
  [defaultCenter postNotificationName:@"AVControlCenterManualFramingVideoZoomFactorDidChangeNotification" object:0 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v20, &v19, 1)}];
  [(AVControlCenterModuleState *)self _checkManualFramingDefaultStateWithNewOriginalZoomFactor:v10];
}

- (void)_checkManualFramingDefaultStateWithNewOriginalZoomFactor:(double)factor
{
  holdingStateLock = self->_holdingStateLock;
  if (!holdingStateLock)
  {
    os_unfair_lock_lock(&self->_stateLock);
  }

  [(AVControlCenterModuleState *)self _defaultOriginalVideoZoomFactor];
  v7 = v6;
  currentPanningAngleX = self->_currentPanningAngleX;
  currentPanningAngleY = self->_currentPanningAngleY;
  currentOriginalZoomFactor = self->_currentOriginalZoomFactor;
  self->_currentOriginalZoomFactor = factor;
  if (!holdingStateLock)
  {
    os_unfair_lock_unlock(&self->_stateLock);
  }

  if (fabs(currentPanningAngleX) < 0.00999999978 && fabs(currentPanningAngleY) < 0.00999999978)
  {
    v11 = vabdd_f64(currentOriginalZoomFactor, v7);
    v12 = vabdd_f64(factor, v7);
    if (v11 < 0.00999999978 && v12 >= 0.00999999978)
    {
      if (dword_1ED8068A0)
      {
        v24 = 0;
        v23 = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v21 = @"isAtDefault";
      v22 = MEMORY[0x1E695E110];
      v15 = MEMORY[0x1E695DF20];
      v16 = &v22;
      v17 = &v21;
LABEL_17:
      v18 = [v15 dictionaryWithObjects:v16 forKeys:v17 count:1];
      [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
      return;
    }

    if (v11 >= 0.00999999978 && v12 < 0.00999999978)
    {
      if (dword_1ED8068A0)
      {
        v24 = 0;
        v23 = 0;
        v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v19 = @"isAtDefault";
      v20 = MEMORY[0x1E695E118];
      v15 = MEMORY[0x1E695DF20];
      v16 = &v20;
      v17 = &v19;
      goto LABEL_17;
    }
  }
}

- (void)invalidateDeviceBasedModuleStatesIfNeeded
{
  if ([(AVControlCenterModuleState *)self isDeviceBasedModuleState])
  {
    if (self->_deviceSupportsManualFraming)
    {
      if (self->_observingManualFramingProprietaryDefaultKeys)
      {
        [AVCaptureProprietaryDefaultsSingleton removeObserver:self forKey:self->_centerStageFieldOfViewRestrictedToWideKey];
        [AVCaptureProprietaryDefaultsSingleton removeObserver:self forKey:self->_dockedTrackingActiveKey];
        [AVCaptureProprietaryDefaultsSingleton removeObserver:self forKey:self->_oneShotFramingCompletedKey];
        [AVCaptureProprietaryDefaultsSingleton removeObserver:self forKey:self->_resetFramingCompletedKey];
        [AVCaptureProprietaryDefaultsSingleton removeObserver:self forKey:self->_panningAnglesKey];
        [AVCaptureProprietaryDefaultsSingleton removeObserver:self forKey:self->_manualFramingVideoZoomFactorKey];
        self->_observingManualFramingProprietaryDefaultKeys = 0;
      }

      self->_startPanningAtPointKey = 0;
      self->_panWithTranslationKey = 0;

      self->_manualFramingVideoZoomFactorKey = 0;
      self->_performOneShotFramingKey = 0;

      self->_resetFramingKey = 0;
      self->_oneShotFramingCompletedKey = 0;

      self->_resetFramingCompletedKey = 0;
      self->_panningAnglesKey = 0;

      self->_manualFramingDeviceTypeKey = 0;
      self->_zoomFactorConstantsByManualFramingDeviceType = 0;

      self->_centerStageFieldOfViewRestrictedToWideKey = 0;
    }

    if (self->_observingDockedTrackingProprietaryDefaultKey)
    {
      [AVCaptureProprietaryDefaultsSingleton removeObserver:self forKey:self->_dockedTrackingActiveKey];

      self->_dockedTrackingActiveKey = 0;
      self->_observingDockedTrackingProprietaryDefaultKey = 0;
    }
  }
}

@end