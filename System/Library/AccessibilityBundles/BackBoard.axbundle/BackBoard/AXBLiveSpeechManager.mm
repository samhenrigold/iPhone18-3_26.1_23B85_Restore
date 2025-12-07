@interface AXBLiveSpeechManager
+ (void)initializeMonitor;
- (void)setLiveSpeechEnabled:(BOOL)enabled;
- (void)updateSettings;
@end

@implementation AXBLiveSpeechManager

+ (void)initializeMonitor
{
  if (initializeMonitor_onceToken_3 != -1)
  {
    +[AXBLiveSpeechManager initializeMonitor];
  }
}

void __41__AXBLiveSpeechManager_initializeMonitor__block_invoke()
{
  v0 = objc_alloc_init(AXBLiveSpeechManager);
  v1 = _SharedManager_0;
  _SharedManager_0 = v0;

  if (_AXSLiveSpeechEnabled())
  {
    _AXSLiveSpeechSetEnabled();
  }

  v5 = [MEMORY[0x29EDBA068] defaultCenter];
  v2 = *MEMORY[0x29EDC8488];
  v3 = [MEMORY[0x29EDBA088] mainQueue];
  v4 = [v5 addObserverForName:v2 object:0 queue:v3 usingBlock:&__block_literal_global_285_1];
}

- (void)setLiveSpeechEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v16 = *MEMORY[0x29EDCA608];
  v5 = _os_feature_enabled_impl();
  v6 = LiveSpeechLogCommon();
  v7 = v6;
  if ((v5 & 1) == 0)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_29BBBD000, v7, OS_LOG_TYPE_INFO, "Asked to enable/disable LiveSpeech but feature flag is off, so no", buf, 2u);
    }

    goto LABEL_14;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [MEMORY[0x29EDBA070] numberWithBool:self->_wasEverEnabled];
    *buf = 134218242;
    v13 = enabledCopy;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&dword_29BBBD000, v7, OS_LOG_TYPE_DEFAULT, "LiveSpeech monitor asked to enable LiveSpeech: %ld (was ever enabled: %@)", buf, 0x16u);
  }

  if (enabledCopy)
  {
    v11 = 0;
    [getLiveSpeechServicesObjcClass() startLiveSpeechAndReturnError:&v11];
    v7 = v11;
    self->_wasEverEnabled = 1;
    if (!v7)
    {
      return;
    }

    goto LABEL_11;
  }

  if (self->_wasEverEnabled)
  {
    v10 = 0;
    [getLiveSpeechServicesObjcClass() stopLiveSpeechAndReturnError:&v10];
    v7 = v10;
    self->_wasEverEnabled = 0;
    if (v7)
    {
LABEL_11:
      v9 = LiveSpeechLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [(AXBLiveSpeechManager *)v7 setLiveSpeechEnabled:v9];
      }

LABEL_14:
    }
  }
}

- (void)updateSettings
{
  v2 = _SharedManager_0;
  v3 = _AXSLiveSpeechEnabled() != 0;

  [v2 setLiveSpeechEnabled:v3];
}

- (void)setLiveSpeechEnabled:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x29EDCA608];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_29BBBD000, a2, OS_LOG_TYPE_ERROR, "Error toggling LiveSpeech: %@", &v2, 0xCu);
}

@end