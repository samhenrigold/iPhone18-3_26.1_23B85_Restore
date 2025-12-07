@interface AVKitGlobalSettings
+ (BOOL)_hapticsIsEnabled;
+ (BOOL)_isDisplayingCaptionsOnSkipBack;
+ (BOOL)_overVideoScrubbingGestureEnabled;
+ (id)_mostRecentAudioLanguageCode;
+ (id)_mostRecentLegibleLanguageCode;
+ (id)shared;
+ (uint64_t)_isAVKitTester;
+ (uint64_t)_isQuickTimePlayerX;
+ (uint64_t)_isTVApp;
+ (uint64_t)_thirdGenerationControlsEnabled;
+ (unint64_t)_subtitleAutomaticallyEnabledState;
- (AVKitGlobalSettings)init;
- (BOOL)extendedVisualAnalysisEnabled;
- (BOOL)isIntegratedTimelineEnabled;
- (BOOL)subtitlesOnMuteEnabled;
- (BOOL)timelineDiagnosticsEnabled;
- (BOOL)visualAnalysisEnabled;
- (BOOL)visualAnalysisSupported;
- (void)setDisplayingCaptionsOnSkipBack:(BOOL)back;
- (void)setMostRecentAudioLanguageCode:(id)code;
- (void)setMostRecentLegibleLanguageCode:(id)code;
- (void)setPlayerGeneration:(int64_t)generation;
- (void)setSharedSetting:(id)setting toString:(id)string;
- (void)setSubtitleAutomaticallyEnabledState:(unint64_t)state;
@end

@implementation AVKitGlobalSettings

+ (id)shared
{
  if (shared_createAVKitGlobalSettingsOnce != -1)
  {
    dispatch_once(&shared_createAVKitGlobalSettingsOnce, &__block_literal_global);
  }

  v3 = shared_AVKitSharedGlobalSettings;

  return v3;
}

- (void)setSharedSetting:(id)setting toString:(id)string
{
  settingCopy = setting;
  stringCopy = string;
  v7 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithServiceName:@"com.apple.avkit.SharedPreferences"];
  v8 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1EFF88AB0];
  [v7 setRemoteObjectInterface:v8];

  [v7 resume];
  remoteObjectProxy = [v7 remoteObjectProxy];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __49__AVKitGlobalSettings_setSharedSetting_toString___block_invoke;
  v13[3] = &unk_1E72093C0;
  v14 = settingCopy;
  v15 = stringCopy;
  v16 = v7;
  v10 = v7;
  v11 = stringCopy;
  v12 = settingCopy;
  [remoteObjectProxy setString:v11 forKey:v12 completion:v13];
}

uint64_t __49__AVKitGlobalSettings_setSharedSetting_toString___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = _AVLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = 138543618;
    v7 = v3;
    v8 = 2114;
    v9 = v4;
    _os_log_impl(&dword_18B49C000, v2, OS_LOG_TYPE_DEFAULT, "setSharedSetting: set %{public}@ to %{public}@", &v6, 0x16u);
  }

  return [*(a1 + 48) invalidate];
}

- (BOOL)subtitlesOnMuteEnabled
{
  v2 = _os_feature_enabled_impl();
  v3 = _os_feature_enabled_impl();
  if ((v2 & 1) != 0 || v3)
  {
    LOBYTE(v3) = _AXSAutomaticSubtitlesShowWhenMuted() != 0;
  }

  return v3;
}

- (BOOL)visualAnalysisEnabled
{
  visualAnalysisEnabled = self->_visualAnalysisEnabled;
  if (visualAnalysisEnabled == -1)
  {
    visualAnalysisEnabled = [(AVKitGlobalSettings *)self visualAnalysisSupported];
    self->_visualAnalysisEnabled = visualAnalysisEnabled;
  }

  return visualAnalysisEnabled == 1;
}

- (BOOL)visualAnalysisSupported
{
  visualAnalysisSupported = self->_visualAnalysisSupported;
  if (visualAnalysisSupported == -1)
  {
    deviceSupportsVisualAnalysis = self->_deviceSupportsVisualAnalysis;
    if (deviceSupportsVisualAnalysis == -1)
    {
      deviceSupportsVisualAnalysis = [getVKCImageAnalyzerClass() deviceSupportsImageAnalysis];
      self->_deviceSupportsVisualAnalysis = deviceSupportsVisualAnalysis;
    }

    if (deviceSupportsVisualAnalysis == 1)
    {
      visualAnalysisSupported = dyld_program_sdk_at_least();
      self->_visualAnalysisSupported = visualAnalysisSupported;
    }

    else
    {
      visualAnalysisSupported = self->_visualAnalysisSupported;
    }
  }

  return visualAnalysisSupported == 1;
}

- (BOOL)extendedVisualAnalysisEnabled
{
  extendedVisualAnalysisEnabled = self->_extendedVisualAnalysisEnabled;
  if (extendedVisualAnalysisEnabled == -1)
  {
    deviceSupportsVisualAnalysis = self->_deviceSupportsVisualAnalysis;
    if (deviceSupportsVisualAnalysis == -1)
    {
      deviceSupportsVisualAnalysis = [getVKCImageAnalyzerClass() deviceSupportsImageAnalysis];
      self->_deviceSupportsVisualAnalysis = deviceSupportsVisualAnalysis;
    }

    if (deviceSupportsVisualAnalysis == 1)
    {
      extendedVisualAnalysisEnabled = dyld_program_sdk_at_least();
      self->_extendedVisualAnalysisEnabled = extendedVisualAnalysisEnabled;
    }

    else
    {
      extendedVisualAnalysisEnabled = self->_extendedVisualAnalysisEnabled;
    }
  }

  return extendedVisualAnalysisEnabled == 1;
}

- (BOOL)timelineDiagnosticsEnabled
{
  _platformSupportsIntegratedTimeline = [(AVKitGlobalSettings *)self _platformSupportsIntegratedTimeline];
  if (_platformSupportsIntegratedTimeline)
  {
    v3 = AVKitUserDefaults();
    v4 = [v3 BOOLForKey:@"TimelineDiagnostics"];

    LOBYTE(_platformSupportsIntegratedTimeline) = v4;
  }

  return _platformSupportsIntegratedTimeline;
}

- (BOOL)isIntegratedTimelineEnabled
{
  _platformSupportsIntegratedTimeline = [(AVKitGlobalSettings *)self _platformSupportsIntegratedTimeline];
  if (_platformSupportsIntegratedTimeline)
  {
    if (_os_feature_enabled_impl())
    {
      LOBYTE(_platformSupportsIntegratedTimeline) = 1;
    }

    else
    {
      v3 = +[AVKitGlobalSettings _isTVApp];
      LOBYTE(_platformSupportsIntegratedTimeline) = _os_feature_enabled_impl() & v3;
    }
  }

  return _platformSupportsIntegratedTimeline;
}

+ (uint64_t)_isTVApp
{
  objc_opt_self();
  v1 = AVApplicationIdentifier();
  v2 = [v1 isEqualToString:@"com.apple.tv"];

  return v2;
}

- (void)setDisplayingCaptionsOnSkipBack:(BOOL)back
{
  v11 = *MEMORY[0x1E69E9840];
  if (self->_displayingCaptionsOnSkipBack != back)
  {
    backCopy = back;
    v5 = _AVLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = "NO";
      *v9 = 136315650;
      *&v9[4] = "[AVKitGlobalSettings setDisplayingCaptionsOnSkipBack:]";
      *&v9[14] = "displayingCaptionsOnSkipBack";
      *&v9[12] = 2080;
      if (backCopy)
      {
        v6 = "YES";
      }

      *&v9[22] = 2080;
      v10 = v6;
      _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %s %s", v9, 0x20u);
    }

    self->_displayingCaptionsOnSkipBack = backCopy;
    if (+[AVKitGlobalSettings _isDisplayingCaptionsOnSkipBack]!= backCopy)
    {
      v7 = _AVLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 136315138;
        *&v9[4] = "[AVKitGlobalSettings setDisplayingCaptionsOnSkipBack:]";
        _os_log_impl(&dword_18B49C000, v7, OS_LOG_TYPE_DEFAULT, "%s updating the shared setting", v9, 0xCu);
      }

      if (backCopy)
      {
        v8 = @"YES";
      }

      else
      {
        v8 = @"NO";
      }

      [(AVKitGlobalSettings *)self setSharedSetting:@"isDisplayingCaptionsOnSkipBack" toString:v8, *v9, *&v9[8]];
    }
  }
}

- (void)setSubtitleAutomaticallyEnabledState:(unint64_t)state
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_subtitleAutomaticallyEnabledState != state)
  {
    v5 = _AVLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = "YES";
      *buf = 136315650;
      v10 = "[AVKitGlobalSettings setSubtitleAutomaticallyEnabledState:]";
      stateCopy = "subtitleAutomaticallyEnabledState";
      v11 = 2080;
      if (!state)
      {
        v6 = "NO";
      }

      v13 = 2080;
      v14 = v6;
      _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %s %s", buf, 0x20u);
    }

    self->_subtitleAutomaticallyEnabledState = state;
    if (+[AVKitGlobalSettings _subtitleAutomaticallyEnabledState]!= state)
    {
      v7 = _AVLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v10 = "[AVKitGlobalSettings setSubtitleAutomaticallyEnabledState:]";
        v11 = 2048;
        stateCopy = state;
        _os_log_impl(&dword_18B49C000, v7, OS_LOG_TYPE_DEFAULT, "%s updating the shared setting: %ld ", buf, 0x16u);
      }

      state = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", state];
      [(AVKitGlobalSettings *)self setSharedSetting:@"subtitleAutomaticallyEnabledState" toString:state];
    }
  }
}

- (void)setMostRecentAudioLanguageCode:(id)code
{
  v16 = *MEMORY[0x1E69E9840];
  codeCopy = code;
  mostRecentAudioLanguageCode = self->_mostRecentAudioLanguageCode;
  if (mostRecentAudioLanguageCode != codeCopy && (!codeCopy || ![(NSString *)mostRecentAudioLanguageCode isEqualToString:codeCopy]))
  {
    v6 = _AVLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315394;
      v13 = "[AVKitGlobalSettings setMostRecentAudioLanguageCode:]";
      v14 = 2114;
      v15 = codeCopy;
      _os_log_impl(&dword_18B49C000, v6, OS_LOG_TYPE_DEFAULT, "%s '%{public}@", &v12, 0x16u);
    }

    v7 = [(NSString *)codeCopy copy];
    v8 = self->_mostRecentAudioLanguageCode;
    self->_mostRecentAudioLanguageCode = v7;

    v9 = +[AVKitGlobalSettings _mostRecentAudioLanguageCode];
    v10 = v9;
    if (v9 != codeCopy && (!codeCopy || !v9 || ![(NSString *)v9 isEqualToString:codeCopy]))
    {
      v11 = _AVLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 136315138;
        v13 = "[AVKitGlobalSettings setMostRecentAudioLanguageCode:]";
        _os_log_impl(&dword_18B49C000, v11, OS_LOG_TYPE_DEFAULT, "%s updating the shared setting", &v12, 0xCu);
      }

      [(AVKitGlobalSettings *)self setSharedSetting:@"RecentAudioLanguageCode" toString:codeCopy];
    }
  }
}

- (void)setMostRecentLegibleLanguageCode:(id)code
{
  v16 = *MEMORY[0x1E69E9840];
  codeCopy = code;
  mostRecentLegibleLanguageCode = self->_mostRecentLegibleLanguageCode;
  if (mostRecentLegibleLanguageCode != codeCopy && (!codeCopy || ![(NSString *)mostRecentLegibleLanguageCode isEqualToString:codeCopy]))
  {
    v6 = _AVLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315394;
      v13 = "[AVKitGlobalSettings setMostRecentLegibleLanguageCode:]";
      v14 = 2114;
      v15 = codeCopy;
      _os_log_impl(&dword_18B49C000, v6, OS_LOG_TYPE_DEFAULT, "%s '%{public}@", &v12, 0x16u);
    }

    v7 = [(NSString *)codeCopy copy];
    v8 = self->_mostRecentLegibleLanguageCode;
    self->_mostRecentLegibleLanguageCode = v7;

    v9 = +[AVKitGlobalSettings _mostRecentLegibleLanguageCode];
    v10 = v9;
    if (v9 != codeCopy && (!codeCopy || !v9 || ![(NSString *)v9 isEqualToString:codeCopy]))
    {
      v11 = _AVLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 136315138;
        v13 = "[AVKitGlobalSettings setMostRecentLegibleLanguageCode:]";
        _os_log_impl(&dword_18B49C000, v11, OS_LOG_TYPE_DEFAULT, "%s updating the shared setting", &v12, 0xCu);
      }

      [(AVKitGlobalSettings *)self setSharedSetting:@"RecentLegibleLanguageCode" toString:codeCopy];
    }
  }
}

- (void)setPlayerGeneration:(int64_t)generation
{
  v11 = *MEMORY[0x1E69E9840];
  if (self)
  {
    generationCopy = generation;
    if (generation == 2)
    {
      if ([(AVKitGlobalSettings *)self thirdGenerationControlsEnabled])
      {
        generationCopy = 2;
      }

      else
      {
        generationCopy = 1;
      }
    }
  }

  else
  {
    generationCopy = 0;
  }

  if (self->_playerGeneration != generationCopy)
  {
    v5 = _AVLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [MEMORY[0x1E696AD98] numberWithInteger:generationCopy];
      v7 = 136315394;
      v8 = "[AVKitGlobalSettings setPlayerGeneration:]";
      v9 = 2112;
      v10 = v6;
      _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %@", &v7, 0x16u);
    }

    self->_playerGeneration = generationCopy;
  }
}

- (AVKitGlobalSettings)init
{
  location[3] = *MEMORY[0x1E69E9840];
  v78.receiver = self;
  v78.super_class = AVKitGlobalSettings;
  v2 = [(AVKitGlobalSettings *)&v78 init];
  if (!v2)
  {
    return v2;
  }

  v3 = objc_opt_self();
  objc_opt_self();
  v4 = AVApplicationIdentifier();
  v5 = [v4 isEqualToString:@"com.apple.Home"];

  if (v5)
  {
    v6 = 0;
  }

  else if (+[(AVKitGlobalSettings *)v3])
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  v7 = AVKitUserDefaults();
  v8 = [v7 integerForKey:@"playerGeneration"];
  v9 = v8;
  if (v8 > 1)
  {
    if (v8 == 3)
    {
      v6 = 2;
      goto LABEL_18;
    }

    if (v8 == 2)
    {
      v6 = 1;
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  if (v8)
  {
    if (v8 == 1)
    {
      v6 = 0;
      goto LABEL_18;
    }

LABEL_14:
    v10 = _AVLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      LODWORD(location[0]) = 134217984;
      *(location + 4) = v9;
      _os_log_error_impl(&dword_18B49C000, v10, OS_LOG_TYPE_ERROR, "Error: Invalid player generation %ld", location, 0xCu);
    }
  }

LABEL_18:

  v2->_playerGeneration = v6;
  objc_opt_self();
  objc_opt_self();
  _CFMZEnabled();
  v11 = dyld_program_sdk_at_least();
  v12 = dyld_program_sdk_at_least();
  if (!(v12 & 1 | ((v11 & 1) == 0)))
  {
    v13 = AVApplicationIdentifier();
    lowercaseString = [v13 lowercaseString];

    v12 = [lowercaseString hasPrefix:@"com.apple."];
  }

  v2->_playbackSpeedControlEnabled = v12;
  v2->_deviceSupportsVisualAnalysis = -1;
  v2->_visualAnalysisSupported = -1;
  v2->_visualAnalysisEnabled = -1;
  objc_opt_self();
  v15 = AVApplicationIdentifier();
  if ([v15 isEqualToString:@"com.apple.quicklook.UIExtension"])
  {
    v16 = 1;
  }

  else
  {
    v16 = [v15 isEqualToString:@"com.apple.quicklook.extension.previewUI"];
  }

  v2->_isQuickLook = v16;
  v2->_isTVApp = +[AVKitGlobalSettings _isTVApp];
  objc_opt_self();
  v17 = AVApplicationIdentifier();
  v18 = [v17 isEqualToString:@"com.apple.applemediaroom"];

  v2->_isArtemisApp = v18;
  objc_opt_self();
  v19 = AVKitUserDefaults();
  v20 = [v19 valueForKey:@"fluidSliderEnabled"];

  if (v20)
  {
    v21 = [v19 BOOLForKey:@"fluidSliderEnabled"];
  }

  else
  {
    v21 = 1;
  }

  v2->_fluidSliderEnabled = v21;
  v2->_showsTVControls = 0;
  objc_opt_self();
  v2->_experienceControllerEnabled = _os_feature_enabled_impl();
  v2->_overVideoScrubbingGestureEnabled = +[AVKitGlobalSettings _overVideoScrubbingGestureEnabled];
  v2->_extendedVisualAnalysisEnabled = -1;
  objc_opt_self();
  v22 = AVKitUserDefaults();
  v23 = [v22 valueForKey:@"subjectLiftGestureEnabled"];
  v24 = v23 == 0;

  if (v24)
  {
    v25 = 1;
  }

  else
  {
    v25 = [v22 BOOLForKey:@"subjectLiftGestureEnabled"];
  }

  v2->_subjectLiftGestureEnabled = v25;
  objc_opt_self();
  v26 = AVApplicationIdentifier();
  v27 = ([v26 isEqualToString:@"com.apple.Fitness"] & 1) != 0 || objc_msgSend(v26, "isEqualToString:", @"com.apple.AVKitTester");

  v2->_attributedContentTitlesSupported = v27;
  objc_opt_self();
  v28 = AVKitUserDefaults();
  v29 = [v28 valueForKey:@"searchBannerEnabled"];

  if (v29)
  {
    LOBYTE(v29) = [v28 BOOLForKey:@"searchBannerEnabled"];
  }

  v2->_searchBannerEnabled = v29;
  objc_opt_self();
  v2->_isAVKitMacPlayer = 0;
  v2->_isAVKitTester = +[AVKitGlobalSettings _isAVKitTester];
  objc_opt_self();
  v2->_isXCTester = 0;
  objc_opt_self();
  v30 = AVApplicationIdentifier();
  if ([v30 isEqualToString:@"com.apple.Photos"] & 1) != 0 || (objc_msgSend(v30, "isEqualToString:", @"com.appleinternal.PhotosPlayground-macOS"))
  {
    v31 = 1;
  }

  else
  {
    v31 = [v30 isEqualToString:@"com.apple.mobileslideshow"];
  }

  v2->_isPhotosApp = v31;
  objc_opt_self();
  v32 = AVApplicationIdentifier();
  v33 = [v32 isEqualToString:@"com.apple.Fitness"];

  v2->_isFitnessApp = v33;
  v2->_isQuickTimePlayerX = +[AVKitGlobalSettings _isQuickTimePlayerX];
  objc_opt_self();
  v34 = AVApplicationIdentifier();
  v35 = [v34 isEqualToString:@"com.apple.Spotlight"];

  v2->_isSpotlight = v35;
  objc_opt_self();
  v2->_backgroundEffectEnabled = 0;
  objc_opt_self();
  v2->_animatedSkipButtonsEnabled = _os_feature_enabled_impl();
  objc_opt_self();
  v2->_prefersTintColorForPlaybackControlsView = _os_feature_enabled_impl();
  objc_opt_self();
  if (_os_feature_enabled_impl() && (+[AVKitGlobalSettings _isTVApp]& 1) != 0)
  {
    isAVKit = 1;
  }

  else
  {
    isAVKit = +[AVKitGlobalSettings _isAVKitTester];
  }

  v2->_playerTipsEnabled = isAVKit;
  objc_opt_self();
  v2->_constrainedHDREnabled = _os_feature_enabled_impl();
  objc_opt_self();
  avkit_mainScreen = [MEMORY[0x1E69DCEB0] avkit_mainScreen];
  traitCollection = [avkit_mainScreen traitCollection];
  v39 = [traitCollection userInterfaceIdiom] == 0;

  if (v39)
  {
    v40 = _os_feature_enabled_impl();
  }

  else
  {
    v40 = 0;
  }

  v2->_unconstrainedHDRForFullscreenEnabled = v40;
  v2->_thirdGenerationControlsEnabled = +[AVKitGlobalSettings _thirdGenerationControlsEnabled];
  objc_opt_self();
  v2->_inputPickerGainControlEnabled = _os_feature_enabled_impl();
  objc_opt_self();
  v2->_cameraControlWithAirPodsEnabled = _os_feature_enabled_impl();
  v41 = v2->_isTVApp || v2->_isAVKitTester;
  v2->_supportsContentTabs = v41 & 1;
  objc_opt_self();
  v2->_vibrancyEnabled = 1;
  objc_opt_self();
  v42 = AVKitUserDefaults();
  v43 = [v42 BOOLForKey:@"gradientDimmingLayerEnabled"];

  v2->_gradientDimmingLayerEnabled = v43;
  objc_opt_self();
  v2->_shouldUseQTPXSpecificZooming = +[AVKitGlobalSettings _isQuickTimePlayerX];
  objc_opt_self();
  v44 = AVKitUserDefaults();
  [v44 floatForKey:@"extendedDynamicRangeGain"];
  v46 = v45;

  v2->_extendedDynamicRangeGain = v46;
  objc_opt_self();
  v47 = AVKitUserDefaults();
  v48 = [v47 BOOLForKey:@"cornerPanGestureForContentTabsEnabled"];

  v2->_cornerPanGestureForContentTabsEnabled = v48;
  objc_opt_self();
  v49 = AVKitUserDefaults();
  v50 = [v49 objectForKey:@"visualAnalysisEnabled"];
  if (v50 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v51 = v50;
  }

  else
  {
    v51 = 0;
  }

  if (v51)
  {
    v2->_visualAnalysisEnabled = [v51 BOOLValue];
  }

  v52 = +[AVKitGlobalSettings _mostRecentAudioLanguageCode];
  mostRecentAudioLanguageCode = v2->_mostRecentAudioLanguageCode;
  v2->_mostRecentAudioLanguageCode = v52;

  v54 = _ObservationForSharedAVKitSetting(v2, @"RecentAudioLanguageCode", @"mostRecentAudioLanguageCode");
  mostRecentAudioLanguageCodeObservation = v2->_mostRecentAudioLanguageCodeObservation;
  v2->_mostRecentAudioLanguageCodeObservation = v54;

  v56 = +[AVKitGlobalSettings _mostRecentLegibleLanguageCode];
  mostRecentLegibleLanguageCode = v2->_mostRecentLegibleLanguageCode;
  v2->_mostRecentLegibleLanguageCode = v56;

  v58 = _ObservationForSharedAVKitSetting(v2, @"RecentLegibleLanguageCode", @"mostRecentLegibleLanguageCode");
  mostRecentLegibleLanguageCodeObservation = v2->_mostRecentLegibleLanguageCodeObservation;
  v2->_mostRecentLegibleLanguageCodeObservation = v58;

  v2->_displayingCaptionsOnSkipBack = +[AVKitGlobalSettings _isDisplayingCaptionsOnSkipBack];
  objc_initWeak(location, v2);
  v60 = MEMORY[0x1E696ADA8];
  v61 = AVKitUserDefaults();
  v62 = [v60 keyPathWithRootObject:v61 path:{objc_msgSend(@"isDisplayingCaptionsOnSkipBack", "UTF8String")}];
  v76[0] = MEMORY[0x1E69E9820];
  v76[1] = 3221225472;
  v76[2] = __27__AVKitGlobalSettings_init__block_invoke;
  v76[3] = &unk_1E7207158;
  objc_copyWeak(&v77, location);
  v63 = [v62 addObserverBlock:v76];
  displayingCaptionsOnSkipBackObservation = v2->_displayingCaptionsOnSkipBackObservation;
  v2->_displayingCaptionsOnSkipBackObservation = v63;

  v2->_enhanceDialogueEnabled = +[AVKitGlobalSettings _enhanceDialogueEnabled];
  v2->_customMediaSelectionSchemeEnabled = +[AVKitGlobalSettings _customMediaSelectionSchemeEnabled];
  v2->_subtitleAutomaticallyEnabledState = +[AVKitGlobalSettings _subtitleAutomaticallyEnabledState];
  v65 = MEMORY[0x1E696ADA8];
  v66 = AVKitUserDefaults();
  v67 = [v65 keyPathWithRootObject:v66 path:{objc_msgSend(@"subtitleAutomaticallyEnabledState", "UTF8String")}];
  v71 = MEMORY[0x1E69E9820];
  v72 = 3221225472;
  v73 = __27__AVKitGlobalSettings_init__block_invoke_3;
  v74 = &unk_1E7207158;
  objc_copyWeak(&v75, location);
  v68 = [v67 addObserverBlock:&v71];
  subtitleEnabledFromAutoStateCodeObservation = v2->_subtitleEnabledFromAutoStateCodeObservation;
  v2->_subtitleEnabledFromAutoStateCodeObservation = v68;

  v2->_hapticsEnabled = [AVKitGlobalSettings _hapticsIsEnabled:v71];
  objc_destroyWeak(&v75);
  objc_destroyWeak(&v77);
  objc_destroyWeak(location);

  return v2;
}

+ (uint64_t)_isAVKitTester
{
  objc_opt_self();
  v1 = AVApplicationIdentifier();
  v2 = [v1 isEqualToString:@"com.apple.AVKitTester"];

  return v2;
}

+ (uint64_t)_isQuickTimePlayerX
{
  objc_opt_self();
  v1 = AVApplicationIdentifier();
  v2 = [v1 isEqualToString:@"com.apple.QuickTimePlayerX"];

  return v2;
}

+ (uint64_t)_thirdGenerationControlsEnabled
{
  objc_opt_self();
  if (!dyld_program_sdk_at_least() || !_UISolariumEnabled())
  {
    return 0;
  }

  return _os_feature_enabled_impl();
}

void __27__AVKitGlobalSettings_init__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __27__AVKitGlobalSettings_init__block_invoke_2;
  block[3] = &unk_1E7209EA8;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v2);
}

void __27__AVKitGlobalSettings_init__block_invoke_3(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __27__AVKitGlobalSettings_init__block_invoke_4;
  block[3] = &unk_1E7209EA8;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v2);
}

void __27__AVKitGlobalSettings_init__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setSubtitleAutomaticallyEnabledState:{+[AVKitGlobalSettings _subtitleAutomaticallyEnabledState](AVKitGlobalSettings, "_subtitleAutomaticallyEnabledState")}];
}

void __27__AVKitGlobalSettings_init__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setDisplayingCaptionsOnSkipBack:{+[AVKitGlobalSettings _isDisplayingCaptionsOnSkipBack](AVKitGlobalSettings, "_isDisplayingCaptionsOnSkipBack")}];
}

+ (BOOL)_hapticsIsEnabled
{
  v2 = MGGetBoolAnswer();
  v3 = _os_feature_enabled_impl();
  avkit_mainScreen = [MEMORY[0x1E69DCEB0] avkit_mainScreen];
  traitCollection = [avkit_mainScreen traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (!v3)
  {
    return 0;
  }

  if (userInterfaceIdiom)
  {
    return 0;
  }

  return v2;
}

+ (unint64_t)_subtitleAutomaticallyEnabledState
{
  v2 = AVKitUserDefaults();
  v3 = [v2 integerForKey:@"subtitleAutomaticallyEnabledState"];

  return v3;
}

+ (BOOL)_isDisplayingCaptionsOnSkipBack
{
  v2 = AVKitUserDefaults();
  v3 = [v2 BOOLForKey:@"isDisplayingCaptionsOnSkipBack"];

  return v3;
}

+ (id)_mostRecentAudioLanguageCode
{
  v2 = AVKitUserDefaults();
  v3 = [v2 stringForKey:@"RecentAudioLanguageCode"];

  return v3;
}

+ (id)_mostRecentLegibleLanguageCode
{
  v2 = AVKitUserDefaults();
  v3 = [v2 stringForKey:@"RecentLegibleLanguageCode"];

  return v3;
}

+ (BOOL)_overVideoScrubbingGestureEnabled
{
  v2 = AVKitUserDefaults();
  v3 = [v2 valueForKey:@"overVideoScrubbingGestureEnabled"];

  if (v3)
  {
    LOBYTE(v3) = [v2 BOOLForKey:@"overVideoScrubbingGestureEnabled"];
  }

  return v3;
}

uint64_t __29__AVKitGlobalSettings_shared__block_invoke()
{
  v0 = dispatch_get_global_queue(0, 0);
  dispatch_async(v0, &__block_literal_global_124);

  v1 = objc_alloc_init(AVKitGlobalSettings);
  v2 = shared_AVKitSharedGlobalSettings;
  shared_AVKitSharedGlobalSettings = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

uint64_t __29__AVKitGlobalSettings_shared__block_invoke_2()
{
  VKCImageAnalyzerClass = getVKCImageAnalyzerClass();

  return [VKCImageAnalyzerClass deviceSupportsImageAnalysis];
}

@end