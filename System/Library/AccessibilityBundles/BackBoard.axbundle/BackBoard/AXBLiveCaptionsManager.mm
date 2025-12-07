@interface AXBLiveCaptionsManager
+ (void)initializeMonitor;
- (AXBLiveCaptionsManager)init;
- (void)_setLiveCaptionsEnabled:(BOOL)enabled;
- (void)dealloc;
- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)notification userInfo:(id)info;
- (void)updateSettings;
@end

@implementation AXBLiveCaptionsManager

- (AXBLiveCaptionsManager)init
{
  v3.receiver = self;
  v3.super_class = AXBLiveCaptionsManager;
  result = [(AXBLiveCaptionsManager *)&v3 init];
  if (result)
  {
    result->_isManagedConfigurationOverridingLiveCaptions = 0;
  }

  return result;
}

+ (void)initializeMonitor
{
  if (initializeMonitor_onceToken_6 != -1)
  {
    +[AXBLiveCaptionsManager initializeMonitor];
  }
}

void __43__AXBLiveCaptionsManager_initializeMonitor__block_invoke()
{
  v0 = objc_alloc_init(AXBLiveCaptionsManager);
  v1 = _SharedManager_3;
  _SharedManager_3 = v0;

  v2 = [MEMORY[0x29EDBDFA0] sharedInstance];
  [v2 clearLiveCaptionsFullscreenState];

  v3 = [MEMORY[0x29EDBA068] defaultCenter];
  v4 = *MEMORY[0x29EDC8490];
  v5 = [MEMORY[0x29EDBA088] mainQueue];
  v6 = [v3 addObserverForName:v4 object:0 queue:v5 usingBlock:&__block_literal_global_286_0];

  v7 = dispatch_get_global_queue(0, 0);
  dispatch_async(v7, &__block_literal_global_288_0);

  v8 = dispatch_time(0, 6000000000);
  v9 = MEMORY[0x29EDCA578];

  dispatch_after(v8, v9, &__block_literal_global_291_0);
}

void __43__AXBLiveCaptionsManager_initializeMonitor__block_invoke_3()
{
  v0 = [MEMORY[0x29EDC58E0] sharedConnection];
  [v0 registerObserver:_SharedManager_3];
}

- (void)updateSettings
{
  if ([(AXBLiveCaptionsManager *)self isManagedConfigurationOverridingLiveCaptions])
  {
    v2 = AXLogLiveTranscription();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_29BBBD000, v2, OS_LOG_TYPE_INFO, "Managed configuration overriding Live Captions, disabling feature", v4, 2u);
    }

    v3 = 0;
  }

  else
  {
    v3 = _AXSLiveTranscriptionEnabled() != 0;
  }

  [_SharedManager_3 setLiveCaptionsEnabled:v3];
}

- (void)dealloc
{
  [(AXBLiveCaptionsManager *)self setIsManagedConfigurationOverridingLiveCaptions:0];
  mEMORY[0x29EDC58E0] = [MEMORY[0x29EDC58E0] sharedConnection];
  [mEMORY[0x29EDC58E0] unregisterObserver:self];

  v4.receiver = self;
  v4.super_class = AXBLiveCaptionsManager;
  [(AXBLiveCaptionsManager *)&v4 dealloc];
}

- (void)_setLiveCaptionsEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v16 = *MEMORY[0x29EDCA608];
  v4 = _os_feature_enabled_impl();
  v5 = AXLogLiveTranscription();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [MEMORY[0x29EDBA070] numberWithBool:enabledCopy];
      *buf = 138412290;
      v15 = v7;
      _os_log_impl(&dword_29BBBD000, v6, OS_LOG_TYPE_DEFAULT, "LiveCaptions monitor asked to enable LiveCaptions: %@", buf, 0xCu);
    }

    v8 = AXHasCapability();
    LiveCaptionsServicesClass = getLiveCaptionsServicesClass();
    if (enabledCopy && v8)
    {
      v13 = 0;
      v10 = &v13;
      [LiveCaptionsServicesClass startLiveCaptionsAndReturnError:&v13];
    }

    else
    {
      v12 = 0;
      v10 = &v12;
      [LiveCaptionsServicesClass stopLiveCaptionsAndReturnError:&v12];
    }

    v6 = *v10;
    if (v6)
    {
      v11 = AXLogLiveTranscription();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [(AXBLiveCaptionsManager *)v6 _setLiveCaptionsEnabled:v11];
      }
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_29BBBD000, v6, OS_LOG_TYPE_INFO, "Asked to enable/disable LiveCaptions integrated with LiveSpeech but feature flag is off, so no", buf, 2u);
  }
}

- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)notification userInfo:(id)info
{
  v12 = *MEMORY[0x29EDCA608];
  mEMORY[0x29EDC58E0] = [MEMORY[0x29EDC58E0] sharedConnection];
  v6 = [mEMORY[0x29EDC58E0] effectiveBoolValueForSetting:*MEMORY[0x29EDC5870]];

  v7 = AXLogLiveTranscription();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [MEMORY[0x29EDBA070] numberWithBool:v6 != 2];
    v10 = 138412290;
    v11 = v8;
    _os_log_impl(&dword_29BBBD000, v7, OS_LOG_TYPE_INFO, "Managed configuration settings changed, Live Captions allowed: %@", &v10, 0xCu);
  }

  if (v6 == 2)
  {
    v9 = AXLogLiveTranscription();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_29BBBD000, v9, OS_LOG_TYPE_DEFAULT, "Managed Configuration is requesting Live Captions to be turned off", &v10, 2u);
    }
  }

  [(AXBLiveCaptionsManager *)self setIsManagedConfigurationOverridingLiveCaptions:v6 == 2];
  [(AXBLiveCaptionsManager *)self updateSettings];
}

- (void)_setLiveCaptionsEnabled:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x29EDCA608];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_29BBBD000, a2, OS_LOG_TYPE_ERROR, "Error toggling LiveCaptions: %@", &v2, 0xCu);
}

@end