@interface AXBTwiceRemoteScreenManager
+ (void)initializeMonitor;
- (void)setTwiceRemoteScreenEnabled:(BOOL)enabled;
- (void)updateSettings;
@end

@implementation AXBTwiceRemoteScreenManager

+ (void)initializeMonitor
{
  if (initializeMonitor_onceToken_13 != -1)
  {
    +[AXBTwiceRemoteScreenManager initializeMonitor];
  }
}

void __48__AXBTwiceRemoteScreenManager_initializeMonitor__block_invoke()
{
  v0 = objc_alloc_init(AXBTwiceRemoteScreenManager);
  v1 = _sharedManager;
  _sharedManager = v0;

  [_sharedManager updateSettings];
  v5 = [MEMORY[0x29EDBA068] defaultCenter];
  v2 = *MEMORY[0x29EDC8520];
  v3 = [MEMORY[0x29EDBA088] mainQueue];
  v4 = [v5 addObserverForName:v2 object:0 queue:v3 usingBlock:&__block_literal_global_285_4];
}

- (void)setTwiceRemoteScreenEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v26 = *MEMORY[0x29EDCA608];
  if (([_sharedManager started] & 1) != 0 || enabledCopy)
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v6 = getAXWatchRemoteScreenIsTwiceFeatureOnSymbolLoc_ptr;
    v21 = getAXWatchRemoteScreenIsTwiceFeatureOnSymbolLoc_ptr;
    if (!getAXWatchRemoteScreenIsTwiceFeatureOnSymbolLoc_ptr)
    {
      *&buf = MEMORY[0x29EDCA5F8];
      *(&buf + 1) = 3221225472;
      v23 = __getAXWatchRemoteScreenIsTwiceFeatureOnSymbolLoc_block_invoke;
      v24 = &unk_29F2A4FB0;
      v25 = &v18;
      v7 = AXWatchRemoteScreenServicesLibrary();
      v8 = dlsym(v7, "AXWatchRemoteScreenIsTwiceFeatureOn");
      *(v25[1] + 24) = v8;
      getAXWatchRemoteScreenIsTwiceFeatureOnSymbolLoc_ptr = *(v25[1] + 24);
      v6 = v19[3];
    }

    _Block_object_dispose(&v18, 8);
    if (!v6)
    {
      [AXBTwiceRemoteScreenManager setTwiceRemoteScreenEnabled:];
    }

    v10 = v6(v9);
    v11 = AXLogTwiceRemoteScreen();
    v4 = v11;
    if (v10)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 134217984;
        *(&buf + 4) = enabledCopy;
        _os_log_impl(&dword_29BBBD000, v4, OS_LOG_TYPE_DEFAULT, "[TWICE] Twice monitor - enable: %ld", &buf, 0xCu);
      }

      [_sharedManager setStarted:{1, v18}];
      v18 = 0;
      v19 = &v18;
      v20 = 0x2020000000;
      v12 = getAXTwiceRemoteScreenServiceObjcSymbolLoc_ptr;
      v21 = getAXTwiceRemoteScreenServiceObjcSymbolLoc_ptr;
      if (!getAXTwiceRemoteScreenServiceObjcSymbolLoc_ptr)
      {
        *&buf = MEMORY[0x29EDCA5F8];
        *(&buf + 1) = 3221225472;
        v23 = __getAXTwiceRemoteScreenServiceObjcSymbolLoc_block_invoke;
        v24 = &unk_29F2A4FB0;
        v25 = &v18;
        v13 = AXWatchRemoteScreenServicesLibrary();
        v14 = dlsym(v13, "AXTwiceRemoteScreenServiceObjc");
        *(v25[1] + 24) = v14;
        getAXTwiceRemoteScreenServiceObjcSymbolLoc_ptr = *(v25[1] + 24);
        v12 = v19[3];
      }

      _Block_object_dispose(&v18, 8);
      if (!v12)
      {
        [AXBTwiceRemoteScreenManager setTwiceRemoteScreenEnabled:];
      }

      v4 = v12(v15);
      [v4 npsSetTwiceEnabled:enabledCopy, v18];
      if (enabledCopy)
      {
        startTwiceRemoteScreen = [v4 startTwiceRemoteScreen];
      }

      else
      {
        startTwiceRemoteScreen = [v4 stopTwiceRemoteScreen];
      }

      if ((startTwiceRemoteScreen & 1) == 0)
      {
        v17 = AXLogTwiceRemoteScreen();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          [AXBTwiceRemoteScreenManager setTwiceRemoteScreenEnabled:v17];
        }
      }
    }

    else if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf) = 0;
      v5 = "[TWICE] Feature flag is off";
      goto LABEL_18;
    }
  }

  else
  {
    v4 = AXLogTwiceRemoteScreen();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf) = 0;
      v5 = "[TWICE] Avoid loading AXWatchRemoteScreenServices library";
LABEL_18:
      _os_log_impl(&dword_29BBBD000, v4, OS_LOG_TYPE_INFO, v5, &buf, 2u);
    }
  }
}

- (void)updateSettings
{
  v2 = _sharedManager;
  v3 = _AXSTwiceRemoteScreenEnabled() != 0;

  [v2 setTwiceRemoteScreenEnabled:v3];
}

- (void)setTwiceRemoteScreenEnabled:.cold.2()
{
  v0 = [MEMORY[0x29EDB9F28] currentHandler];
  v1 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:"id<AXWatchRemoteScreenServiceProtocolObjc> AXTwiceRemoteScreenServiceObjc_Soft(void)"];
  [v0 handleFailureInFunction:v1 file:@"AXBTwiceRemoteScreenManager.m" lineNumber:16 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)setTwiceRemoteScreenEnabled:.cold.3()
{
  v0 = [MEMORY[0x29EDB9F28] currentHandler];
  v1 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:"BOOL AXWatchRemoteScreenIsTwiceFeatureOn_Soft(void)"];
  [v0 handleFailureInFunction:v1 file:@"AXBTwiceRemoteScreenManager.m" lineNumber:17 description:{@"%s", dlerror()}];

  __break(1u);
}

@end