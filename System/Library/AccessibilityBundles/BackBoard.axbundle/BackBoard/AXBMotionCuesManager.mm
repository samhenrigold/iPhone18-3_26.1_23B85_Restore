@interface AXBMotionCuesManager
+ (void)initializeMonitor;
- (void)setMotionCuesEnabled:(BOOL)enabled;
- (void)updateSettings;
@end

@implementation AXBMotionCuesManager

+ (void)initializeMonitor
{
  if (AXDeviceSupportsMotionCues())
  {
    if (initializeMonitor_onceToken_4 != -1)
    {
      +[AXBMotionCuesManager initializeMonitor];
    }
  }
}

uint64_t __41__AXBMotionCuesManager_initializeMonitor__block_invoke()
{
  v0 = objc_alloc_init(AXBMotionCuesManager);
  v1 = _SharedManager_1;
  _SharedManager_1 = v0;

  v2 = [MEMORY[0x29EDBA068] defaultCenter];
  v3 = *MEMORY[0x29EDC84B0];
  v4 = [MEMORY[0x29EDBA088] mainQueue];
  v5 = [v2 addObserverForName:v3 object:0 queue:v4 usingBlock:&__block_literal_global_285_2];

  return AXPerformBlockAsynchronouslyOnMainThread();
}

- (void)setMotionCuesEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v19 = *MEMORY[0x29EDCA608];
  v4 = AXLogMotionCues();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [MEMORY[0x29EDBA070] numberWithBool:enabledCopy];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v5;
    _os_log_impl(&dword_29BBBD000, v4, OS_LOG_TYPE_DEFAULT, "Motion Cues monitor requested enable/disable with value: %@", &buf, 0xCu);
  }

  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v7 = getAXMotionCuesManagerSymbolLoc_ptr;
  v14 = getAXMotionCuesManagerSymbolLoc_ptr;
  if (!getAXMotionCuesManagerSymbolLoc_ptr)
  {
    *&buf = MEMORY[0x29EDCA5F8];
    *(&buf + 1) = 3221225472;
    v16 = __getAXMotionCuesManagerSymbolLoc_block_invoke;
    v17 = &unk_29F2A4FB0;
    v18 = &v11;
    __getAXMotionCuesManagerSymbolLoc_block_invoke(&buf, v6);
    v7 = v12[3];
  }

  _Block_object_dispose(&v11, 8);
  if (!v7)
  {
    [AXBMotionCuesManager setMotionCuesEnabled:];
  }

  v9 = v7(v8);
  v10 = v9;
  if (enabledCopy)
  {
    [v9 enableWithCompletionBlock:{&__block_literal_global_291, v11}];
  }

  else
  {
    [v9 disable:{&__block_literal_global_294, v11}];
  }
}

void __45__AXBMotionCuesManager_setMotionCuesEnabled___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a2;
  v4 = a3;
  v5 = AXLogMotionCues();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __45__AXBMotionCuesManager_setMotionCuesEnabled___block_invoke_cold_1(v3);
  }
}

void __45__AXBMotionCuesManager_setMotionCuesEnabled___block_invoke_292(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a2;
  v4 = a3;
  v5 = AXLogMotionCues();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __45__AXBMotionCuesManager_setMotionCuesEnabled___block_invoke_292_cold_1(v3);
  }
}

- (void)updateSettings
{
  v21 = *MEMORY[0x29EDCA608];
  if (AXMotionCuesServicesLibraryCore(0))
  {
    if (AXDeviceSupportsMotionCues())
    {
      featureEnabled = self->_featureEnabled;
      currentMode = self->_currentMode;
      self->_featureEnabled = _AXSMotionCuesEnabled() != 0;
      v5 = _AXSMotionCuesMode();
      self->_currentMode = v5;
      v6 = self->_featureEnabled;
      if ((featureEnabled || v6) && (featureEnabled != v6 || currentMode != v5))
      {
        v7 = AXLogMotionCues();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = [MEMORY[0x29EDBA070] numberWithBool:featureEnabled];
          v9 = [MEMORY[0x29EDBA070] numberWithBool:self->_featureEnabled];
          v10 = [MEMORY[0x29EDBA070] numberWithInt:currentMode];
          v11 = [MEMORY[0x29EDBA070] numberWithInt:self->_currentMode];
          v13 = 138413058;
          v14 = v8;
          v15 = 2112;
          v16 = v9;
          v17 = 2112;
          v18 = v10;
          v19 = 2112;
          v20 = v11;
          _os_log_impl(&dword_29BBBD000, v7, OS_LOG_TYPE_DEFAULT, "Motion Cues settings changed (enable: %@ -> %@, mode: %@ -> %@)", &v13, 0x2Au);
        }

        [_SharedManager_1 setMotionCuesEnabled:self->_featureEnabled];
      }
    }

    else
    {
      v12 = AXLogMotionCues();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        LOWORD(v13) = 0;
        _os_log_impl(&dword_29BBBD000, v12, OS_LOG_TYPE_INFO, "Asked for Motion Cues to enable/disable but feature flag is off, so no", &v13, 2u);
      }
    }
  }

  else
  {

    _AXAssert();
  }
}

- (void)setMotionCuesEnabled:.cold.1()
{
  v0 = [MEMORY[0x29EDB9F28] currentHandler];
  v1 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:"id<AXMotionCuesServiceProtocol> AXMotionCuesManager_Soft(void)"];
  [v0 handleFailureInFunction:v1 file:@"AXBMotionCuesManager.m" lineNumber:17 description:{@"%s", dlerror()}];

  __break(1u);
}

void __45__AXBMotionCuesManager_setMotionCuesEnabled___block_invoke_cold_1(char a1)
{
  v1 = [MEMORY[0x29EDBA070] numberWithBool:a1 & 1];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_29BBBD000, v2, v3, "Enable request result for motion cues: %@ %@", v4, v5, v6, v7);
}

void __45__AXBMotionCuesManager_setMotionCuesEnabled___block_invoke_292_cold_1(char a1)
{
  v1 = [MEMORY[0x29EDBA070] numberWithBool:a1 & 1];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_29BBBD000, v2, v3, "Disable request result for motion cues: %@ %@", v4, v5, v6, v7);
}

@end