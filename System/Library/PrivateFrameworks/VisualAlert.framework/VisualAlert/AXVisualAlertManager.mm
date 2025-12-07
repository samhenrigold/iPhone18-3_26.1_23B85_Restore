@interface AXVisualAlertManager
+ (void)initialize;
- (AXVisualAlertManager)init;
- (BOOL)_hasVideoConferenceCameraTorchManager;
- (BOOL)_isCameraInUse;
- (BOOL)_isRingerSwitchException:(unint64_t)exception;
- (BOOL)_shouldHandleVisualAlertsForVideoConferenceCallsInConferenceFramework;
- (BOOL)_supportsVisualAlertsForVideoConferenceCalls;
- (NSDictionary)_patterns;
- (NSString)description;
- (id)_normalizedStrobePatternForOriginalPattern:(id)pattern;
- (id)existingBulletinForBulletin:(id)bulletin;
- (void)_beginVisualAlertForType:(unint64_t)type repeat:(BOOL)repeat skipAutomaticStopOnUserInteraction:(BOOL)interaction bundleId:(id)id;
- (void)_endVisualAlert;
- (void)_handleBeginVisualAlertForAlarmWithSound:(BOOL)sound;
- (void)_handleBeginVisualAlertForIncomingCall;
- (void)_handleBeginVisualAlertForIncomingVideoConferenceCall;
- (void)_handleDeviceWasLocked;
- (void)_handleDeviceWasUnlocked;
- (void)_handleEndVisualAlertForAlarm;
- (void)_handleEndVisualAlertForIncomingCall;
- (void)_handleEndVisualAlertForIncomingVideoConferenceCall;
- (void)_handleLockButtonPressed;
- (void)_handleQuietModeWasEnabled;
- (void)_handleRingerSwitchToggled;
- (void)_handleSecondaryVisualAlertManagerDidStart;
- (void)_handleTorchInControlCenterWasEnabled;
- (void)_handleVideoConferenceCallRinging;
- (void)_handleVisualAlertForExternalApplication;
- (void)_handleVisualAlertForIncomingMessage;
- (void)_handleVisualAlertForRegularNotification:(id)notification;
- (void)_handleVolumeChanged;
- (void)_insertCustomLogicForSystemWideServer;
- (void)_processNextVisualAlertComponent;
- (void)_setTorchDeviceOn:(BOOL)on withCompletion:(id)completion;
- (void)_setTorchDeviceOpen:(BOOL)open withCompletion:(id)completion;
- (void)_springBoardLockButtonPress:(id)press;
- (void)_springBoardLockStateChange:(id)change;
- (void)_springBoardVolumeChange:(id)change;
- (void)_startForAlertTypes:(unint64_t)types cameraTorchManager:(id)manager;
- (void)_stop;
- (void)addBulletin:(id)bulletin;
- (void)dealloc;
- (void)handleBulletinWithSectionID:(id)d;
- (void)startForAlertTypes:(unint64_t)types cameraTorchManager:(id)manager;
- (void)stateService:(id)service didReceiveDoNotDisturbStateUpdate:(id)update;
@end

@implementation AXVisualAlertManager

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    _VisualAlertManager = objc_opt_new();

    MEMORY[0x2821F96F8]();
  }
}

- (AXVisualAlertManager)init
{
  v11.receiver = self;
  v11.super_class = AXVisualAlertManager;
  v2 = [(AXVisualAlertManager *)&v11 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277CE6950]);
    v4 = MEMORY[0x277D85CD0];
    v5 = [v3 initWithTargetSerialQueue:MEMORY[0x277D85CD0]];
    timer = v2->_timer;
    v2->_timer = v5;

    [(AXDispatchTimer *)v2->_timer setAutomaticallyCancelPendingBlockUponSchedulingNewBlock:1];
    v7 = [objc_alloc(MEMORY[0x277CE6950]) initWithTargetSerialQueue:v4];
    torchForceShutdownTimer = v2->_torchForceShutdownTimer;
    v2->_torchForceShutdownTimer = v7;

    IsSpringBoard = AXProcessIsSpringBoard();
    AXPrintLine();
    if (AXProcessIsSpringBoard())
    {
      [(AXVisualAlertManager *)v2 _insertCustomLogicForSystemWideServer];
    }
  }

  return v2;
}

- (void)dealloc
{
  [(AXVisualAlertManager *)self _stop];
  v3.receiver = self;
  v3.super_class = AXVisualAlertManager;
  [(AXVisualAlertManager *)&v3 dealloc];
}

- (void)addBulletin:(id)bulletin
{
  bulletinCopy = bulletin;
  bulletins = self->_bulletins;
  v8 = bulletinCopy;
  if (!bulletins)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_bulletins;
    self->_bulletins = v6;

    bulletinCopy = v8;
    bulletins = self->_bulletins;
  }

  [(NSMutableArray *)bulletins axSafelyAddObject:bulletinCopy];
}

- (id)existingBulletinForBulletin:(id)bulletin
{
  v19 = *MEMORY[0x277D85DE8];
  bulletinCopy = bulletin;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_bulletins;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        sectionIdentifier = [v9 sectionIdentifier];
        sectionIdentifier2 = [bulletinCopy sectionIdentifier];
        v12 = [sectionIdentifier isEqualToString:sectionIdentifier2];

        if (v12)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)_setTorchDeviceOpen:(BOOL)open withCompletion:(id)completion
{
  openCopy = open;
  v28 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v7 = completionCopy;
  if (self->_torchDeviceOpen == openCopy)
  {
    if (completionCopy)
    {
      v8 = dispatch_get_global_queue(0, 0);
      dispatch_async(v8, v7);
    }
  }

  else
  {
    self->_torchDeviceOpen = openCopy;
    if (openCopy)
    {
      mEMORY[0x277CE6998] = [MEMORY[0x277CE6998] sharedInstance];
      ignoreLogging = [mEMORY[0x277CE6998] ignoreLogging];

      if ((ignoreLogging & 1) == 0)
      {
        identifier = [MEMORY[0x277CE6998] identifier];
        v12 = AXLoggerForFacility();

        v13 = AXOSLogLevelFromAXLogLevel();
        if (os_log_type_enabled(v12, v13))
        {
          v14 = AXColorizeFormatLog();
          v15 = _AXStringForArgs();
          if (os_log_type_enabled(v12, v13))
          {
            *buf = 138543362;
            v27 = v15;
            _os_log_impl(&dword_27102A000, v12, v13, "%{public}@", buf, 0xCu);
          }
        }
      }

      asyncManagerAdapter = self->_asyncManagerAdapter;
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __59__AXVisualAlertManager__setTorchDeviceOpen_withCompletion___block_invoke;
      v24[3] = &unk_279E2C5D8;
      v25 = v7;
      [(AXCameraTorchManagerBackgroundAdapter *)asyncManagerAdapter openTorchDeviceWithCompletion:v24];
    }

    else
    {
      [(AXCameraTorchManagerBackgroundAdapter *)self->_asyncManagerAdapter closeTorchDeviceWithCompletion:completionCopy];
      mEMORY[0x277CE6998]2 = [MEMORY[0x277CE6998] sharedInstance];
      ignoreLogging2 = [mEMORY[0x277CE6998]2 ignoreLogging];

      if ((ignoreLogging2 & 1) == 0)
      {
        identifier2 = [MEMORY[0x277CE6998] identifier];
        v20 = AXLoggerForFacility();

        v21 = AXOSLogLevelFromAXLogLevel();
        if (os_log_type_enabled(v20, v21))
        {
          v22 = AXColorizeFormatLog();
          v23 = _AXStringForArgs();
          if (os_log_type_enabled(v20, v21))
          {
            *buf = 138543362;
            v27 = v23;
            _os_log_impl(&dword_27102A000, v20, v21, "%{public}@", buf, 0xCu);
          }
        }
      }
    }
  }
}

uint64_t __59__AXVisualAlertManager__setTorchDeviceOpen_withCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_setTorchDeviceOn:(BOOL)on withCompletion:(id)completion
{
  onCopy = on;
  v32 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v7 = completionCopy;
  if (self->_torchDeviceOn == onCopy)
  {
    mEMORY[0x277CE6998] = [MEMORY[0x277CE6998] sharedInstance];
    ignoreLogging = [mEMORY[0x277CE6998] ignoreLogging];

    if ((ignoreLogging & 1) == 0)
    {
      identifier = [MEMORY[0x277CE6998] identifier];
      v11 = AXLoggerForFacility();

      v12 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = AXColorizeFormatLog();
        v14 = _AXStringForArgs();
        if (os_log_type_enabled(v11, v12))
        {
          *buf = 138543362;
          v31 = v14;
          _os_log_impl(&dword_27102A000, v11, v12, "%{public}@", buf, 0xCu);
        }
      }
    }

    if (v7)
    {
      v15 = dispatch_get_global_queue(0, 0);
      dispatch_async(v15, v7);
    }
  }

  else
  {
    self->_torchDeviceOn = onCopy;
    if (onCopy)
    {
      mEMORY[0x277CE6998]2 = [MEMORY[0x277CE6998] sharedInstance];
      ignoreLogging2 = [mEMORY[0x277CE6998]2 ignoreLogging];

      if ((ignoreLogging2 & 1) == 0)
      {
        identifier2 = [MEMORY[0x277CE6998] identifier];
        v19 = AXLoggerForFacility();

        v20 = AXOSLogLevelFromAXLogLevel();
        if (os_log_type_enabled(v19, v20))
        {
          v21 = AXColorizeFormatLog();
          CFAbsoluteTimeGetCurrent();
          v22 = _AXStringForArgs();
          if (os_log_type_enabled(v19, v20))
          {
            *buf = 138543362;
            v31 = v22;
            _os_log_impl(&dword_27102A000, v19, v20, "%{public}@", buf, 0xCu);
          }
        }
      }

      asyncManagerAdapter = self->_asyncManagerAdapter;
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __57__AXVisualAlertManager__setTorchDeviceOn_withCompletion___block_invoke;
      v28[3] = &unk_279E2C588;
      v28[4] = self;
      v29 = v7;
      [(AXCameraTorchManagerBackgroundAdapter *)asyncManagerAdapter turnTorchOnWithCompletion:v28];
      v24 = v29;
    }

    else
    {
      v25 = self->_asyncManagerAdapter;
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __57__AXVisualAlertManager__setTorchDeviceOn_withCompletion___block_invoke_562;
      v26[3] = &unk_279E2C588;
      v26[4] = self;
      v27 = completionCopy;
      [(AXCameraTorchManagerBackgroundAdapter *)v25 turnTorchOffWithCompletion:v26];
      v24 = v27;
    }
  }
}

uint64_t __57__AXVisualAlertManager__setTorchDeviceOn_withCompletion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CE6998] sharedInstance];
  v3 = [v2 ignoreLogging];

  if ((v3 & 1) == 0)
  {
    v5 = [MEMORY[0x277CE6998] identifier];
    v6 = AXLoggerForFacility();

    v7 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = AXColorizeFormatLog();
      CFAbsoluteTimeGetCurrent();
      v9 = _AXStringForArgs();
      if (os_log_type_enabled(v6, v7))
      {
        *buf = 138543362;
        v12 = v9;
        _os_log_impl(&dword_27102A000, v6, v7, "%{public}@", buf, 0xCu);
      }
    }
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, v4);
  }

  return result;
}

uint64_t __57__AXVisualAlertManager__setTorchDeviceOn_withCompletion___block_invoke_562(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CE6998] sharedInstance];
  v3 = [v2 ignoreLogging];

  if ((v3 & 1) == 0)
  {
    v5 = [MEMORY[0x277CE6998] identifier];
    v6 = AXLoggerForFacility();

    v7 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = AXColorizeFormatLog();
      CFAbsoluteTimeGetCurrent();
      v9 = _AXStringForArgs();
      if (os_log_type_enabled(v6, v7))
      {
        *buf = 138543362;
        v12 = v9;
        _os_log_impl(&dword_27102A000, v6, v7, "%{public}@", buf, 0xCu);
      }
    }
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, v4);
  }

  return result;
}

- (NSDictionary)_patterns
{
  patterns = self->_patterns;
  if (!patterns)
  {
    v4 = objc_alloc(MEMORY[0x277CBEAC0]);
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [v5 URLForResource:@"AXVisualAlertPatterns" withExtension:@"plist"];
    v7 = [v4 initWithContentsOfURL:v6];
    v8 = self->_patterns;
    self->_patterns = v7;

    patterns = self->_patterns;
  }

  return patterns;
}

- (NSString)description
{
  synchronousTorchManager = [(AXCameraTorchManagerBackgroundAdapter *)self->_asyncManagerAdapter synchronousTorchManager];
  v4 = MEMORY[0x277CCACA8];
  v10.receiver = self;
  v10.super_class = AXVisualAlertManager;
  v5 = [(AXVisualAlertManager *)&v10 description];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v4 stringWithFormat:@"%@ (camera torch manager: <%@: %p>)", v5, v7, synchronousTorchManager];

  return v8;
}

- (void)_springBoardLockButtonPress:(id)press
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"AXVisualAlertLockButtonPressedNotification" object:0];
}

- (void)_springBoardVolumeChange:(id)change
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"AXVisualAlertVolumeChangeNotification" object:0];
}

- (void)_springBoardLockStateChange:(id)change
{
  v17[1] = *MEMORY[0x277D85DE8];
  changeCopy = change;
  userInfo = [changeCopy userInfo];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v5 = getkSBNotificationKeyDeviceLockStateSymbolLoc_ptr;
  v15 = getkSBNotificationKeyDeviceLockStateSymbolLoc_ptr;
  if (!getkSBNotificationKeyDeviceLockStateSymbolLoc_ptr)
  {
    v6 = SpringBoardUILibrary();
    v13[3] = dlsym(v6, "kSBNotificationKeyDeviceLockState");
    getkSBNotificationKeyDeviceLockStateSymbolLoc_ptr = v13[3];
    v5 = v13[3];
  }

  _Block_object_dispose(&v12, 8);
  if (!v5)
  {
    [AXVisualAlertManager _springBoardLockStateChange:];
  }

  v7 = [userInfo objectForKey:*v5];
  bOOLValue = [v7 BOOLValue];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v16 = @"AXVisualAlertLockStateKey";
  v10 = [MEMORY[0x277CCABB0] numberWithBool:bOOLValue];
  v17[0] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  [defaultCenter postNotificationName:@"AXVisualAlertLockStateChangeNotification" object:0 userInfo:v11];
}

- (void)_startForAlertTypes:(unint64_t)types cameraTorchManager:(id)manager
{
  v94 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  [(AXVisualAlertManager *)self _stop];
  self->_alertTypes = types;
  asyncManagerAdapter = self->_asyncManagerAdapter;
  self->_asyncManagerAdapter = 0;

  if (managerCopy)
  {
    v76 = managerCopy;
    v8 = [[AXCameraTorchManagerBackgroundAdapter alloc] initWithCameraTorchManager:managerCopy];
    v9 = self->_asyncManagerAdapter;
    self->_asyncManagerAdapter = v8;

    v10 = objc_opt_new();
    v85[0] = MEMORY[0x277D85DD0];
    v85[1] = 3221225472;
    v85[2] = __63__AXVisualAlertManager__startForAlertTypes_cameraTorchManager___block_invoke;
    v85[3] = &unk_279E2C628;
    v85[4] = self;
    v80 = MEMORY[0x2743BB9E0](v85);
    alertTypes = self->_alertTypes;
    if (alertTypes)
    {
      v12 = [AXTelephonyNotificationHandler alloc];
      v13 = [(VISAXNotificationHandler *)v12 initWithNotificationName:*MEMORY[0x277D6EFF0] target:self dispatcher:v80];
      [v10 addObject:v13];
      v14 = [AXTelephonyNotificationHandler alloc];
      v15 = [(VISAXNotificationHandler *)v14 initWithNotificationName:*MEMORY[0x277D6EFE8] target:self dispatcher:&__block_literal_global_600];

      [v10 addObject:v15];
      alertTypes = self->_alertTypes;
    }

    if ((alertTypes & 2) != 0)
    {
      v16 = [AXTelephonyNotificationHandler alloc];
      v17 = [(VISAXNotificationHandler *)v16 initWithNotificationName:*MEMORY[0x277D6F038] target:self dispatcher:v80];
      [v10 addObject:v17];
      v18 = [AXTelephonyNotificationHandler alloc];
      v19 = [(VISAXNotificationHandler *)v18 initWithNotificationName:*MEMORY[0x277D6EFE8] target:self dispatcher:&__block_literal_global_600];

      [v10 addObject:v19];
      alertTypes = self->_alertTypes;
    }

    if ((alertTypes & 3) != 0)
    {
      v20 = [AXTelephonyNotificationHandler alloc];
      v21 = [(VISAXNotificationHandler *)v20 initWithNotificationName:*MEMORY[0x277D6F0D8] target:self dispatcher:&__block_literal_global];
      [v10 addObject:v21];

      alertTypes = self->_alertTypes;
    }

    if ((alertTypes & 0x10) != 0)
    {
      v22 = [(VISAXNotificationHandler *)[AXDistributedNotificationHandler alloc] initWithNotificationName:@"AXVisualAlert" target:self handler:sel__handleVisualAlertForExternalApplication];
      [v10 addObject:v22];
    }

    if (AXProcessIsSpringBoard())
    {
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      v86 = 0;
      v87 = &v86;
      v88 = 0x2020000000;
      v24 = getSBLockButtonPressedNotificationSymbolLoc_ptr;
      v89 = getSBLockButtonPressedNotificationSymbolLoc_ptr;
      if (!getSBLockButtonPressedNotificationSymbolLoc_ptr)
      {
        *&buf = MEMORY[0x277D85DD0];
        *(&buf + 1) = 3221225472;
        v91 = __getSBLockButtonPressedNotificationSymbolLoc_block_invoke;
        v92 = &unk_279E2C600;
        v93 = &v86;
        v25 = SpringBoardUILibrary();
        v26 = dlsym(v25, "SBLockButtonPressedNotification");
        *(v93[1] + 24) = v26;
        getSBLockButtonPressedNotificationSymbolLoc_ptr = *(v93[1] + 24);
        v24 = v87[3];
      }

      _Block_object_dispose(&v86, 8);
      if (!v24)
      {
        [AXVisualAlertManager _startForAlertTypes:cameraTorchManager:];
      }

      [defaultCenter addObserver:self selector:sel__springBoardLockButtonPress_ name:*v24 object:0];

      defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
      v86 = 0;
      v87 = &v86;
      v88 = 0x2020000000;
      v28 = getSBVolumeButtonPressedNotificationSymbolLoc_ptr;
      v89 = getSBVolumeButtonPressedNotificationSymbolLoc_ptr;
      if (!getSBVolumeButtonPressedNotificationSymbolLoc_ptr)
      {
        *&buf = MEMORY[0x277D85DD0];
        *(&buf + 1) = 3221225472;
        v91 = __getSBVolumeButtonPressedNotificationSymbolLoc_block_invoke;
        v92 = &unk_279E2C600;
        v93 = &v86;
        v29 = SpringBoardUILibrary();
        v30 = dlsym(v29, "SBVolumeButtonPressedNotification");
        *(v93[1] + 24) = v30;
        getSBVolumeButtonPressedNotificationSymbolLoc_ptr = *(v93[1] + 24);
        v28 = v87[3];
      }

      _Block_object_dispose(&v86, 8);
      if (!v28)
      {
        [AXVisualAlertManager _startForAlertTypes:cameraTorchManager:];
      }

      [defaultCenter2 addObserver:self selector:sel__springBoardVolumeChange_ name:*v28 object:0];

      defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
      v86 = 0;
      v87 = &v86;
      v88 = 0x2020000000;
      v32 = getSBDeviceLockStateChangedNotificationSymbolLoc_ptr;
      v89 = getSBDeviceLockStateChangedNotificationSymbolLoc_ptr;
      if (!getSBDeviceLockStateChangedNotificationSymbolLoc_ptr)
      {
        *&buf = MEMORY[0x277D85DD0];
        *(&buf + 1) = 3221225472;
        v91 = __getSBDeviceLockStateChangedNotificationSymbolLoc_block_invoke;
        v92 = &unk_279E2C600;
        v93 = &v86;
        v33 = SpringBoardUILibrary();
        v34 = dlsym(v33, "SBDeviceLockStateChangedNotification");
        *(v93[1] + 24) = v34;
        getSBDeviceLockStateChangedNotificationSymbolLoc_ptr = *(v93[1] + 24);
        v32 = v87[3];
      }

      _Block_object_dispose(&v86, 8);
      if (!v32)
      {
        [AXVisualAlertManager _startForAlertTypes:cameraTorchManager:];
      }

      [defaultCenter3 addObserver:self selector:sel__springBoardLockStateChange_ name:*v32 object:0];
    }

    v79 = [[AXAutoForwardingLocalNotificationHandler alloc] initWithNotificationName:@"AXVisualAlertLockButtonPressedNotification" target:self handler:sel__handleLockButtonPressed];
    [v10 addObject:v79];
    v78 = [[AXAutoForwardingLocalNotificationHandler alloc] initWithNotificationName:@"AXVisualAlertVolumeChangeNotification" target:self handler:sel__handleVolumeChanged];
    [v10 addObject:v78];
    v35 = [AXAutoForwardingLocalNotificationHandler alloc];
    v83[0] = MEMORY[0x277D85DD0];
    v83[1] = 3221225472;
    v83[2] = __63__AXVisualAlertManager__startForAlertTypes_cameraTorchManager___block_invoke_4;
    v83[3] = &unk_279E2C690;
    v84 = &__block_literal_global_621;
    v36 = [(AXAutoForwardingLocalNotificationHandler *)v35 initWithNotificationName:@"AXVisualAlertLockStateChangeNotification" target:self dispatcher:v83 possibleHandlers:sel__handleDeviceWasLocked, sel__handleDeviceWasUnlocked, 0];
    deviceLockStateChangedNotificationHandler = self->_deviceLockStateChangedNotificationHandler;
    self->_deviceLockStateChangedNotificationHandler = v36;

    [v10 addObject:self->_deviceLockStateChangedNotificationHandler];
    v77 = [[AXAutoForwardingLocalNotificationHandler alloc] initWithNotificationName:@"AXVisualAlertManagerDoNotDisturbStatusChangedNotification" target:self dispatcher:&__block_literal_global_627 possibleHandlers:sel__handleQuietModeWasEnabled, sel__handleQuietModeWasDisabled, 0];
    [v10 addObject:v77];
    v38 = [[AXAutoForwardingLocalNotificationHandler alloc] initWithNotificationName:@"AXVisualAlertManagerControlCenterTorchWasEnabledNotification" target:self handler:sel__handleTorchInControlCenterWasEnabled];
    torchInControlCenterWasEnabledNotificationHandler = self->_torchInControlCenterWasEnabledNotificationHandler;
    self->_torchInControlCenterWasEnabledNotificationHandler = &v38->super.super;

    [v10 addObject:self->_torchInControlCenterWasEnabledNotificationHandler];
    v40 = [[AXAutoForwardingLocalNotificationHandler alloc] initWithNotificationName:@"AXVisualAlertManagerControlCenterTorchWasDisabledNotification" target:self handler:sel__handleTorchInControlCenterWasDisabled];
    [v10 addObject:v40];
    v41 = [AXAutoForwardingLocalNotificationHandler alloc];
    v42 = [(AXAutoForwardingLocalNotificationHandler *)v41 initWithNotificationName:*MEMORY[0x277CE5930] target:self handler:sel__handleCaptureSessionDidStartRunning];
    [v10 addObject:v42];
    v43 = [AXAutoForwardingLocalNotificationHandler alloc];
    v44 = [(AXAutoForwardingLocalNotificationHandler *)v43 initWithNotificationName:*MEMORY[0x277CE5938] target:self handler:sel__handleCaptureSessionDidStopRunning];
    [v10 addObject:v44];
    if ((AXProcessIsSpringBoard() & 1) != 0 || AXProcessIsClarityBoard())
    {
      v45 = [(VISAXNotificationHandler *)[AXDistributedNotificationHandler alloc] initWithNotificationName:@"AXVisualAlertManagerDidStartNotification" target:self handler:sel__handleSecondaryVisualAlertManagerDidStart];
      [v10 addObject:v45];
      v46 = [NSClassFromString(&cfstr_Sblockscreenma.isa) safeValueForKey:@"sharedInstanceIfExists"];
      v47 = [v46 safeBoolForKey:@"isUILocked"];

      if (v47)
      {
        v48 = sel__handleDeviceWasLocked;
      }

      else
      {
        v48 = sel__handleDeviceWasUnlocked;
      }

      [(VISAXNotificationHandler *)self->_deviceLockStateChangedNotificationHandler processHandler:v48];
      v49 = [MEMORY[0x277D05AB0] serviceForClientIdentifier:@"com.apple.accessibility.visual.alerts"];
      [(AXVisualAlertManager *)self setDisturbanceService:v49];

      disturbanceService = [(AXVisualAlertManager *)self disturbanceService];
      [disturbanceService addStateUpdateListener:self withCompletionHandler:&__block_literal_global_660];

      v51 = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __63__AXVisualAlertManager__startForAlertTypes_cameraTorchManager___block_invoke_664;
      block[3] = &unk_279E2C6D8;
      block[4] = self;
      dispatch_async(v51, block);
    }

    else
    {
      mEMORY[0x277CE6998] = [MEMORY[0x277CE6998] sharedInstance];
      ignoreLogging = [mEMORY[0x277CE6998] ignoreLogging];

      if ((ignoreLogging & 1) == 0)
      {
        identifier = [MEMORY[0x277CE6998] identifier];
        v55 = AXLoggerForFacility();

        v56 = AXOSLogLevelFromAXLogLevel();
        if (os_log_type_enabled(v55, v56))
        {
          v57 = AXColorizeFormatLog();
          _hasVideoConferenceCameraTorchManager = [(AXVisualAlertManager *)self _hasVideoConferenceCameraTorchManager];
          v58 = _AXStringForArgs();
          if (os_log_type_enabled(v55, v56))
          {
            LODWORD(buf) = 138543362;
            *(&buf + 4) = v58;
            _os_log_impl(&dword_27102A000, v55, v56, "%{public}@", &buf, 0xCu);
          }
        }
      }

      if ([(AXVisualAlertManager *)self _hasVideoConferenceCameraTorchManager])
      {
        v59 = [(VISAXNotificationHandler *)[AXDistributedNotificationHandler alloc] initWithNotificationName:@"AXVisualAlertManagerVideoConferenceCallRingingNotification" target:self handler:sel__handleVideoConferenceCallRinging];
        [v10 addObject:v59];
        v60 = [(VISAXNotificationHandler *)[AXDistributedNotificationHandler alloc] initWithNotificationName:@"AXVisualAlertManagerVideoConferenceCallHandledNotification" target:self handler:sel__handleEndVisualAlertForIncomingVideoConferenceCall];

        [v10 addObject:v60];
      }

      [AXDistributedNotificationHandler postDistributedNotificationWithName:@"AXVisualAlertManagerDidStartNotification"];
    }

    v61 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:v10];
    notificationHandlers = self->_notificationHandlers;
    self->_notificationHandlers = v61;

    self->_isRingerSwitchSilent = BKSHIDServicesGetRingerState() == 0;
    mEMORY[0x277CE6998]2 = [MEMORY[0x277CE6998] sharedInstance];
    ignoreLogging2 = [mEMORY[0x277CE6998]2 ignoreLogging];

    if ((ignoreLogging2 & 1) == 0)
    {
      identifier2 = [MEMORY[0x277CE6998] identifier];
      v66 = AXLoggerForFacility();

      v67 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v66, v67))
      {
        v68 = AXColorizeFormatLog();
        v69 = _AXStringForArgs();
        if (os_log_type_enabled(v66, v67))
        {
          LODWORD(buf) = 138543362;
          *(&buf + 4) = v69;
          _os_log_impl(&dword_27102A000, v66, v67, "%{public}@", &buf, 0xCu);
        }
      }
    }

    if (AXProcessIsSpringBoard())
    {
      defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
      v86 = 0;
      v87 = &v86;
      v88 = 0x2020000000;
      v71 = getSBRingerChangedNotificationSymbolLoc_ptr;
      v89 = getSBRingerChangedNotificationSymbolLoc_ptr;
      if (!getSBRingerChangedNotificationSymbolLoc_ptr)
      {
        *&buf = MEMORY[0x277D85DD0];
        *(&buf + 1) = 3221225472;
        v91 = __getSBRingerChangedNotificationSymbolLoc_block_invoke;
        v92 = &unk_279E2C600;
        v93 = &v86;
        v72 = SpringBoardUILibrary();
        v73 = dlsym(v72, "SBRingerChangedNotification");
        *(v93[1] + 24) = v73;
        getSBRingerChangedNotificationSymbolLoc_ptr = *(v93[1] + 24);
        v71 = v87[3];
      }

      _Block_object_dispose(&v86, 8);
      if (!v71)
      {
        [AXVisualAlertManager _startForAlertTypes:cameraTorchManager:];
      }

      [defaultCenter4 addObserver:self selector:sel__handleRingerSwitchToggled name:*v71 object:0];
    }

    else
    {
      uTF8String = [@"com.apple.springboard.ringerstate" UTF8String];
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __63__AXVisualAlertManager__startForAlertTypes_cameraTorchManager___block_invoke_680;
      handler[3] = &unk_279E2C700;
      handler[4] = self;
      notify_register_dispatch(uTF8String, &self->_ringerStateNotifyToken, MEMORY[0x277D85CD0], handler);
    }

    managerCopy = v76;
  }
}

char *__63__AXVisualAlertManager__startForAlertTypes_cameraTorchManager___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v42 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a4;
  v9 = a3;
  v10 = [MEMORY[0x277D6EDF8] sharedInstance];
  v11 = [v10 callServicesClientCapabilities];
  [v11 setWantsToScreenCalls:1];

  v12 = [MEMORY[0x277D6EDF8] sharedInstance];
  v13 = [v12 callServicesClientCapabilities];
  [v13 save];

  if (!v9 || ([v9 isOutgoing] & 1) != 0)
  {
    goto LABEL_18;
  }

  v33 = [v9 isVideo];
  v32 = [v9 status];
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy_;
  v38 = __Block_byref_object_dispose_;
  v39 = 0;
  AXPerformBlockSynchronouslyOnMainThread();
  [v35[5] removeObject:v9];
  v14 = [v35[5] count];
  v15 = [MEMORY[0x277CE6998] sharedInstance];
  v16 = [v15 ignoreLogging];

  if ((v16 & 1) == 0)
  {
    v17 = [MEMORY[0x277CE6998] identifier];
    v18 = AXLoggerForFacility();

    v19 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = AXColorizeFormatLog();
      v21 = _AXStringForArgs();
      if (os_log_type_enabled(v18, v19))
      {
        *buf = 138543362;
        v41 = v21;
        _os_log_impl(&dword_27102A000, v18, v19, "%{public}@", buf, 0xCu);
      }
    }
  }

  if (v14)
  {
    v22 = [MEMORY[0x277CE6998] sharedInstance];
    v23 = [v22 ignoreLogging];

    if ((v23 & 1) == 0)
    {
      v24 = [MEMORY[0x277CE6998] identifier];
      v25 = AXLoggerForFacility();

      v26 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = AXColorizeFormatLog();
        v28 = _AXStringForArgs();
        if (os_log_type_enabled(v25, v26))
        {
          *buf = 138543362;
          v41 = v28;
          _os_log_impl(&dword_27102A000, v25, v26, "%{public}@", buf, 0xCu);
        }
      }
    }

    goto LABEL_16;
  }

  if ((v32 - 3) < 2)
  {
    v31 = v33;
  }

  else
  {
    v31 = 0;
  }

  *(*(a1 + 32) + 105) = v31;
  if ((v32 - 3) < 2)
  {
    if (v33)
    {
      v29 = sel__handleBeginVisualAlertForIncomingVideoConferenceCall;
    }

    else
    {
      v29 = sel__handleBeginVisualAlertForIncomingCall;
    }
  }

  else
  {
    if (v32 != 1 && v32 != 6)
    {
LABEL_16:
      v29 = 0;
      goto LABEL_17;
    }

    if (v33)
    {
      v29 = sel__handleEndVisualAlertForIncomingVideoConferenceCall;
    }

    else
    {
      v29 = sel__handleEndVisualAlertForIncomingCall;
    }
  }

LABEL_17:
  _Block_object_dispose(&v34, 8);

  if (v14)
  {
LABEL_18:
    v29 = 0;
  }

  return v29;
}

void __63__AXVisualAlertManager__startForAlertTypes_cameraTorchManager___block_invoke_582(uint64_t a1)
{
  v6 = [MEMORY[0x277D6EDF8] sharedInstance];
  v2 = [v6 currentAudioAndVideoCalls];
  v3 = [v2 mutableCopy];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

char *__63__AXVisualAlertManager__startForAlertTypes_cameraTorchManager___block_invoke_598(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if ([v3 status] == 4 && objc_msgSend(v3, "shouldSuppressRingtone"))
  {
    if ([v3 isVideo])
    {
      v4 = sel__handleEndVisualAlertForIncomingVideoConferenceCall;
    }

    else
    {
      v4 = sel__handleEndVisualAlertForIncomingCall;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

char *__63__AXVisualAlertManager__startForAlertTypes_cameraTorchManager___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if (([v3 isOutgoing] & 1) != 0 || !objc_msgSend(v3, "isConnecting"))
  {
    v4 = 0;
  }

  else if ([v3 isVideo])
  {
    v4 = sel__handleEndVisualAlertForIncomingVideoConferenceCall;
  }

  else
  {
    v4 = sel__handleEndVisualAlertForIncomingCall;
  }

  return v4;
}

char *__63__AXVisualAlertManager__startForAlertTypes_cameraTorchManager___block_invoke_3(uint64_t a1, int a2)
{
  v2 = &selRef__handleDeviceWasLocked;
  if (!a2)
  {
    v2 = &selRef__handleDeviceWasUnlocked;
  }

  return *v2;
}

uint64_t __63__AXVisualAlertManager__startForAlertTypes_cameraTorchManager___block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = [a4 objectForKey:@"AXVisualAlertLockStateKey"];
  [v5 BOOLValue];

  v6 = *(*(a1 + 32) + 16);

  return v6();
}

char *__63__AXVisualAlertManager__startForAlertTypes_cameraTorchManager___block_invoke_5(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = [a4 objectForKeyedSubscript:@"active"];
  v5 = [v4 BOOLValue];
  v6 = &selRef__handleQuietModeWasEnabled;
  if (!v5)
  {
    v6 = &selRef__handleQuietModeWasDisabled;
  }

  v7 = *v6;

  return v7;
}

void __63__AXVisualAlertManager__startForAlertTypes_cameraTorchManager___block_invoke_6(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3)
  {
    v4 = [MEMORY[0x277CE6998] sharedInstance];
    v5 = [v4 ignoreLogging];

    if ((v5 & 1) == 0)
    {
      v6 = [MEMORY[0x277CE6998] identifier];
      v7 = AXLoggerForFacility();

      v8 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = AXColorizeFormatLog();
        v10 = _AXStringForArgs();
        if (os_log_type_enabled(v7, v8))
        {
          *buf = 138543362;
          v12 = v10;
          _os_log_impl(&dword_27102A000, v7, v8, "%{public}@", buf, 0xCu);
        }
      }
    }
  }
}

void __63__AXVisualAlertManager__startForAlertTypes_cameraTorchManager___block_invoke_664(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) disturbanceService];
  v14 = 0;
  v3 = [v2 queryCurrentStateWithError:&v14];
  v4 = v14;
  v5 = [v3 isActive];

  if (v4)
  {
    v6 = [MEMORY[0x277CE6998] sharedInstance];
    v7 = [v6 ignoreLogging];

    if ((v7 & 1) == 0)
    {
      v8 = [MEMORY[0x277CE6998] identifier];
      v9 = AXLoggerForFacility();

      v10 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = AXColorizeFormatLog();
        v12 = _AXStringForArgs();
        if (os_log_type_enabled(v9, v10))
        {
          *buf = 138543362;
          v16 = v12;
          _os_log_impl(&dword_27102A000, v9, v10, "%{public}@", buf, 0xCu);
        }
      }
    }
  }

  if (v5)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__AXVisualAlertManager__startForAlertTypes_cameraTorchManager___block_invoke_668;
    block[3] = &unk_279E2C6D8;
    block[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (void)_stop
{
  v17 = *MEMORY[0x277D85DE8];
  mEMORY[0x277CE6998] = [MEMORY[0x277CE6998] sharedInstance];
  ignoreLogging = [mEMORY[0x277CE6998] ignoreLogging];

  if ((ignoreLogging & 1) == 0)
  {
    identifier = [MEMORY[0x277CE6998] identifier];
    v6 = AXLoggerForFacility();

    v7 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = AXColorizeFormatLog();
      v9 = _AXStringForArgs();
      if (os_log_type_enabled(v6, v7))
      {
        v15 = 138543362;
        v16 = v9;
        _os_log_impl(&dword_27102A000, v6, v7, "%{public}@", &v15, 0xCu);
      }
    }
  }

  if (self->_asyncManagerAdapter)
  {
    if ((AXProcessIsSpringBoard() & 1) != 0 || AXProcessIsClarityBoard())
    {
      [(AXVisualAlertManager *)self setDisturbanceService:0];
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter removeObserver:self];
    }

    else
    {
      notify_cancel([(AXVisualAlertManager *)self ringerStateNotifyToken]);
    }

    [(NSArray *)self->_notificationHandlers makeObjectsPerformSelector:sel_invalidate];
    notificationHandlers = self->_notificationHandlers;
    self->_notificationHandlers = 0;

    [(AXVisualAlertManager *)self _endVisualAlert];
    asyncManagerAdapter = self->_asyncManagerAdapter;
    self->_asyncManagerAdapter = 0;

    deviceLockStateChangedNotificationHandler = self->_deviceLockStateChangedNotificationHandler;
    self->_deviceLockStateChangedNotificationHandler = 0;

    torchInControlCenterWasEnabledNotificationHandler = self->_torchInControlCenterWasEnabledNotificationHandler;
    self->_torchInControlCenterWasEnabledNotificationHandler = 0;

    self->_isDeviceLocked = 0;
  }
}

- (void)startForAlertTypes:(unint64_t)types cameraTorchManager:(id)manager
{
  v15 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  mEMORY[0x277CE6998] = [MEMORY[0x277CE6998] sharedInstance];
  ignoreLogging = [mEMORY[0x277CE6998] ignoreLogging];

  if ((ignoreLogging & 1) == 0)
  {
    identifier = [MEMORY[0x277CE6998] identifier];
    v8 = AXLoggerForFacility();

    v9 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = AXColorizeFormatLog();
      v11 = _AXStringForArgs();
      if (os_log_type_enabled(v8, v9))
      {
        *buf = 138543362;
        v14 = v11;
        _os_log_impl(&dword_27102A000, v8, v9, "%{public}@", buf, 0xCu);
      }
    }
  }

  v12 = managerCopy;
  AXPerformBlockOnMainThread();
}

- (void)stateService:(id)service didReceiveDoNotDisturbStateUpdate:(id)update
{
  v22 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  mEMORY[0x277CE6998] = [MEMORY[0x277CE6998] sharedInstance];
  ignoreLogging = [mEMORY[0x277CE6998] ignoreLogging];

  if ((ignoreLogging & 1) == 0)
  {
    identifier = [MEMORY[0x277CE6998] identifier];
    v8 = AXLoggerForFacility();

    v9 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = AXColorizeFormatLog();
      v17 = updateCopy;
      v11 = _AXStringForArgs();
      if (os_log_type_enabled(v8, v9))
      {
        *buf = 138543362;
        v21 = v11;
        _os_log_impl(&dword_27102A000, v8, v9, "%{public}@", buf, 0xCu);
      }
    }
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v18 = @"active";
  v13 = MEMORY[0x277CCABB0];
  state = [updateCopy state];
  v15 = [v13 numberWithBool:{objc_msgSend(state, "isActive")}];
  v19 = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  [defaultCenter postNotificationName:@"AXVisualAlertManagerDoNotDisturbStatusChangedNotification" object:0 userInfo:v16];
}

- (BOOL)_isCameraInUse
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  nSClassFromString(&cfstr_Uiapplication.isa) = [NSClassFromString(&cfstr_Uiapplication.isa) sharedApplication];
  v3 = [nSClassFromString(&cfstr_Uiapplication.isa) safeValueForKey:@"_sensorActivityDataProvider"];
  v4 = [v3 safeSetForKey:@"activeCameraAndMicrophoneActivityAttributions"];

  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v4);
        }

        if (![*(*(&v11 + 1) + 8 * i) safeIntegerForKey:@"sensor"])
        {
          v9 = 1;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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

- (BOOL)_isRingerSwitchException:(unint64_t)exception
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = exception == 32 && (self->_alertTypes & 0x20) != 0;
  mEMORY[0x277CE6998] = [MEMORY[0x277CE6998] sharedInstance];
  ignoreLogging = [mEMORY[0x277CE6998] ignoreLogging];

  if ((ignoreLogging & 1) == 0)
  {
    identifier = [MEMORY[0x277CE6998] identifier];
    v7 = AXLoggerForFacility();

    v8 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = AXColorizeFormatLog();
      v10 = _AXStringForArgs();
      if (os_log_type_enabled(v7, v8))
      {
        *buf = 138543362;
        v13 = v10;
        _os_log_impl(&dword_27102A000, v7, v8, "%{public}@", buf, 0xCu);
      }
    }
  }

  return v3;
}

- (void)_beginVisualAlertForType:(unint64_t)type repeat:(BOOL)repeat skipAutomaticStopOnUserInteraction:(BOOL)interaction bundleId:(id)id
{
  interactionCopy = interaction;
  repeatCopy = repeat;
  v112 = *MEMORY[0x277D85DE8];
  idCopy = id;
  mEMORY[0x277CE7E20] = [MEMORY[0x277CE7E20] sharedInstance];
  shouldFlashWhileUnlocked = [mEMORY[0x277CE7E20] shouldFlashWhileUnlocked];

  mEMORY[0x277CE6998] = [MEMORY[0x277CE6998] sharedInstance];
  ignoreLogging = [mEMORY[0x277CE6998] ignoreLogging];

  if ((ignoreLogging & 1) == 0)
  {
    identifier = [MEMORY[0x277CE6998] identifier];
    v14 = AXLoggerForFacility();

    v15 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = AXColorizeFormatLog();
      v102 = interactionCopy;
      v103 = shouldFlashWhileUnlocked;
      selfCopy = type;
      v100 = repeatCopy;
      v17 = _AXStringForArgs();
      if (os_log_type_enabled(v14, v15))
      {
        *buf = 138543362;
        v111 = v17;
        _os_log_impl(&dword_27102A000, v14, v15, "%{public}@", buf, 0xCu);
      }
    }
  }

  if (((self->_isDeviceLocked | shouldFlashWhileUnlocked) & 1) == 0)
  {
    mEMORY[0x277CE6998]2 = [MEMORY[0x277CE6998] sharedInstance];
    ignoreLogging2 = [mEMORY[0x277CE6998]2 ignoreLogging];

    if ((ignoreLogging2 & 1) == 0)
    {
      identifier2 = [MEMORY[0x277CE6998] identifier];
      v21 = AXLoggerForFacility();

      v28 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v21, v28))
      {
        v29 = AXColorizeFormatLog();
        v30 = _AXStringForArgs();
        if (os_log_type_enabled(v21, v28))
        {
          *buf = 138543362;
          v111 = v30;
          _os_log_impl(&dword_27102A000, v21, v28, "%{public}@", buf, 0xCu);
        }
      }

      goto LABEL_86;
    }

    goto LABEL_101;
  }

  if ((AXProcessIsSpringBoard() & 1) != 0 || AXProcessIsClarityBoard())
  {
    if (!self->_isDeviceLocked && [(AXVisualAlertManager *)self _isCameraInUse])
    {
      mEMORY[0x277CE6998]3 = [MEMORY[0x277CE6998] sharedInstance];
      ignoreLogging3 = [mEMORY[0x277CE6998]3 ignoreLogging];

      if ((ignoreLogging3 & 1) == 0)
      {
        identifier3 = [MEMORY[0x277CE6998] identifier];
        v21 = AXLoggerForFacility();

        v22 = AXOSLogLevelFromAXLogLevel();
        if (os_log_type_enabled(v21, v22))
        {
          v23 = AXColorizeFormatLog();
          v24 = _AXStringForArgs();
          if (os_log_type_enabled(v21, v22))
          {
            *buf = 138543362;
            v111 = v24;
            _os_log_impl(&dword_27102A000, v21, v22, "%{public}@", buf, 0xCu);
          }
        }

LABEL_86:

        goto LABEL_101;
      }

      goto LABEL_101;
    }

    v31 = 1;
  }

  else
  {
    v31 = 0;
  }

  if (self->_isRingerSwitchSilent)
  {
    mEMORY[0x277CE7E20]2 = [MEMORY[0x277CE7E20] sharedInstance];
    if ([mEMORY[0x277CE7E20]2 shouldFlashForAlertInSilentMode])
    {
    }

    else
    {
      v33 = [(AXVisualAlertManager *)self _isRingerSwitchException:type];

      if (!v33)
      {
        mEMORY[0x277CE6998]4 = [MEMORY[0x277CE6998] sharedInstance];
        ignoreLogging4 = [mEMORY[0x277CE6998]4 ignoreLogging];

        if ((ignoreLogging4 & 1) == 0)
        {
          identifier4 = [MEMORY[0x277CE6998] identifier];
          v21 = AXLoggerForFacility();

          v57 = AXOSLogLevelFromAXLogLevel();
          if (os_log_type_enabled(v21, v57))
          {
            v58 = AXColorizeFormatLog();
            v59 = _AXStringForArgs();
            if (os_log_type_enabled(v21, v57))
            {
              *buf = 138543362;
              v111 = v59;
              _os_log_impl(&dword_27102A000, v21, v57, "%{public}@", buf, 0xCu);
            }
          }

          goto LABEL_86;
        }

        goto LABEL_101;
      }
    }
  }

  if (type - 1 <= 1 && self->_isQuietModeEnabled)
  {
    mEMORY[0x277CE6998]5 = [MEMORY[0x277CE6998] sharedInstance];
    ignoreLogging5 = [mEMORY[0x277CE6998]5 ignoreLogging];

    if ((ignoreLogging5 & 1) == 0)
    {
      identifier5 = [MEMORY[0x277CE6998] identifier];
      v21 = AXLoggerForFacility();

      v37 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v21, v37))
      {
        v38 = AXColorizeFormatLog();
        v39 = _AXStringForArgs();
        if (os_log_type_enabled(v21, v37))
        {
          *buf = 138543362;
          v111 = v39;
          _os_log_impl(&dword_27102A000, v21, v37, "%{public}@", buf, 0xCu);
        }
      }

      goto LABEL_86;
    }
  }

  else if (self->_isTorchEnabledInControlCenter)
  {
    mEMORY[0x277CE6998]6 = [MEMORY[0x277CE6998] sharedInstance];
    ignoreLogging6 = [mEMORY[0x277CE6998]6 ignoreLogging];

    if ((ignoreLogging6 & 1) == 0)
    {
      identifier6 = [MEMORY[0x277CE6998] identifier];
      v21 = AXLoggerForFacility();

      v43 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v21, v43))
      {
        v44 = AXColorizeFormatLog();
        v45 = _AXStringForArgs();
        if (os_log_type_enabled(v21, v43))
        {
          *buf = 138543362;
          v111 = v45;
          _os_log_impl(&dword_27102A000, v21, v43, "%{public}@", buf, 0xCu);
        }
      }

      goto LABEL_86;
    }
  }

  else if (self->_captureSessionRunning)
  {
    mEMORY[0x277CE6998]7 = [MEMORY[0x277CE6998] sharedInstance];
    ignoreLogging7 = [mEMORY[0x277CE6998]7 ignoreLogging];

    if ((ignoreLogging7 & 1) == 0)
    {
      identifier7 = [MEMORY[0x277CE6998] identifier];
      v49 = AXLoggerForFacility();

      v50 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = AXColorizeFormatLog();
        selfCopy = self;
        v52 = _AXStringForArgs();
        if (os_log_type_enabled(v49, v50))
        {
          *buf = 138543362;
          v111 = v52;
          _os_log_impl(&dword_27102A000, v49, v50, "%{public}@", buf, 0xCu);
        }
      }
    }

    if (repeatCopy)
    {
      typeCopy2 = type;
    }

    else
    {
      typeCopy2 = 0;
    }

    [(AXVisualAlertManager *)self _setTypeToUseForVisualAlertAfterCaptureSessionStopsRunning:typeCopy2, selfCopy, v100, v102, v103];
  }

  else if (v31 && (_AXFrontBoardFocusedAppProcesses(), v60 = objc_claimAutoreleasedReturnValue(), [v60 firstObject], v61 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v61, "bundleIdentifier"), v62 = objc_claimAutoreleasedReturnValue(), v63 = objc_msgSend(v62, "isEqualToString:", *MEMORY[0x277CE68E0]), v62, v61, v60, v63))
  {
    mEMORY[0x277CE6998]8 = [MEMORY[0x277CE6998] sharedInstance];
    ignoreLogging8 = [mEMORY[0x277CE6998]8 ignoreLogging];

    if ((ignoreLogging8 & 1) == 0)
    {
      identifier8 = [MEMORY[0x277CE6998] identifier];
      v21 = AXLoggerForFacility();

      v67 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v21, v67))
      {
        v68 = AXColorizeFormatLog();
        v69 = _AXStringForArgs();
        if (os_log_type_enabled(v21, v67))
        {
          *buf = 138543362;
          v111 = v69;
          _os_log_impl(&dword_27102A000, v21, v67, "%{public}@", buf, 0xCu);
        }
      }

      goto LABEL_86;
    }
  }

  else
  {
    mEMORY[0x277CE6998]9 = [MEMORY[0x277CE6998] sharedInstance];
    ignoreLogging9 = [mEMORY[0x277CE6998]9 ignoreLogging];

    if ((ignoreLogging9 & 1) == 0)
    {
      identifier9 = [MEMORY[0x277CE6998] identifier];
      v73 = AXLoggerForFacility();

      v74 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v73, v74))
      {
        v75 = AXColorizeFormatLog();
        v76 = _AXStringForArgs();
        if (os_log_type_enabled(v73, v74))
        {
          *buf = 138543362;
          v111 = v76;
          _os_log_impl(&dword_27102A000, v73, v74, "%{public}@", buf, 0xCu);
        }
      }
    }

    [(AXVisualAlertManager *)self _endVisualAlert];
    if (_AXSVisualAlertEnabled() && (MGGetBoolAnswer() & 1) != 0)
    {
      if (type > 7)
      {
        if (type == 8 || type == 16)
        {
          v77 = @"PushNotification";
        }

        else
        {
          if (type != 32)
          {
            goto LABEL_101;
          }

          v77 = @"Alarm";
        }
      }

      else if (type - 1 >= 2)
      {
        if (type != 4)
        {
          goto LABEL_101;
        }

        v77 = @"IncomingMessage";
      }

      else
      {
        v77 = @"IncomingCall";
      }

      mEMORY[0x277CE6998]10 = [MEMORY[0x277CE6998] sharedInstance];
      ignoreLogging10 = [mEMORY[0x277CE6998]10 ignoreLogging];

      if ((ignoreLogging10 & 1) == 0)
      {
        identifier10 = [MEMORY[0x277CE6998] identifier];
        v87 = AXLoggerForFacility();

        v88 = AXOSLogLevelFromAXLogLevel();
        if (os_log_type_enabled(v87, v88))
        {
          v89 = AXColorizeFormatLog();
          selfCopy2 = self;
          v101 = v77;
          v90 = _AXStringForArgs();
          if (os_log_type_enabled(v87, v88))
          {
            *buf = 138543362;
            v111 = v90;
            _os_log_impl(&dword_27102A000, v87, v88, "%{public}@", buf, 0xCu);
          }
        }
      }

      v91 = [(AXVisualAlertManager *)self _patterns:selfCopy2];
      v92 = [v91 objectForKey:v77];

      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      v108[0] = @"bundleId";
      v108[1] = @"visualAlertType";
      v109[0] = &stru_2880FAB50;
      v94 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
      v109[1] = v94;
      v95 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v109 forKeys:v108 count:2];
      [defaultCenter postNotificationName:@"AXVisualAlertEvent" object:0 userInfo:v95];

      self->_skipAutomaticStopOnUserInteraction = interactionCopy;
      objc_initWeak(buf, self);
      torchForceShutdownTimer = self->_torchForceShutdownTimer;
      v106[0] = MEMORY[0x277D85DD0];
      v106[1] = 3221225472;
      v106[2] = __100__AXVisualAlertManager__beginVisualAlertForType_repeat_skipAutomaticStopOnUserInteraction_bundleId___block_invoke;
      v106[3] = &unk_279E2C750;
      objc_copyWeak(&v107, buf);
      v106[4] = self;
      [(AXDispatchTimer *)torchForceShutdownTimer afterDelay:v106 processBlock:180.0];
      v97 = [(AXVisualAlertManager *)self _normalizedStrobePatternForOriginalPattern:v92];
      [(AXVisualAlertManager *)self _setActivePattern:v97];

      self->_shouldRepeatPattern = repeatCopy;
      self->_activePatternCursor = 0;
      [(AXVisualAlertManager *)self _setTorchDeviceOpen:1 withCompletion:0];
      [(AXVisualAlertManager *)self _processNextVisualAlertComponent];
      objc_destroyWeak(&v107);
      objc_destroyWeak(buf);
    }

    else
    {
      mEMORY[0x277CE6998]11 = [MEMORY[0x277CE6998] sharedInstance];
      ignoreLogging11 = [mEMORY[0x277CE6998]11 ignoreLogging];

      if ((ignoreLogging11 & 1) == 0)
      {
        identifier11 = [MEMORY[0x277CE6998] identifier];
        v21 = AXLoggerForFacility();

        v81 = AXOSLogLevelFromAXLogLevel();
        if (os_log_type_enabled(v21, v81))
        {
          v82 = AXColorizeFormatLog();
          v83 = _AXStringForArgs();
          if (os_log_type_enabled(v21, v81))
          {
            *buf = 138543362;
            v111 = v83;
            _os_log_impl(&dword_27102A000, v21, v81, "%{public}@", buf, 0xCu);
          }
        }

        goto LABEL_86;
      }
    }
  }

LABEL_101:
}

void __100__AXVisualAlertManager__beginVisualAlertForType_repeat_skipAutomaticStopOnUserInteraction_bundleId___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if ([WeakRetained _isTorchDeviceOpen])
  {
    v2 = objc_loadWeakRetained((a1 + 40));
    v3 = [v2 _isTorchDeviceOn];

    if (v3)
    {
      v4 = [MEMORY[0x277CE6998] sharedInstance];
      v5 = [v4 ignoreLogging];

      if ((v5 & 1) == 0)
      {
        v6 = [MEMORY[0x277CE6998] identifier];
        v7 = AXLoggerForFacility();

        v8 = AXOSLogLevelFromAXLogLevel();
        if (os_log_type_enabled(v7, v8))
        {
          v9 = AXColorizeFormatLog();
          v10 = _AXStringForArgs();
          if (os_log_type_enabled(v7, v8))
          {
            *buf = 138543362;
            v14 = v10;
            _os_log_impl(&dword_27102A000, v7, v8, "%{public}@", buf, 0xCu);
          }
        }
      }

      v11 = objc_loadWeakRetained((a1 + 40));
      [v11 _endVisualAlert];
    }
  }

  else
  {
  }
}

- (void)_endVisualAlert
{
  v13 = *MEMORY[0x277D85DE8];
  mEMORY[0x277CE6998] = [MEMORY[0x277CE6998] sharedInstance];
  ignoreLogging = [mEMORY[0x277CE6998] ignoreLogging];

  if ((ignoreLogging & 1) == 0)
  {
    identifier = [MEMORY[0x277CE6998] identifier];
    v6 = AXLoggerForFacility();

    v7 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = AXColorizeFormatLog();
      v9 = _AXStringForArgs();
      if (os_log_type_enabled(v6, v7))
      {
        v11 = 138543362;
        v12 = v9;
        _os_log_impl(&dword_27102A000, v6, v7, "%{public}@", &v11, 0xCu);
      }
    }
  }

  [(AXDispatchTimer *)self->_timer cancel];
  [(AXDispatchTimer *)self->_torchForceShutdownTimer cancel];
  [(AXVisualAlertManager *)self _setTorchDeviceOn:0 withCompletion:0];
  [(AXVisualAlertManager *)self _setTorchDeviceOpen:0 withCompletion:0];
  [(AXVisualAlertManager *)self _setActivePattern:0];
  [(AXVisualAlertManager *)self _setTypeToUseForVisualAlertAfterCaptureSessionStopsRunning:0];
  self->_shouldRepeatPattern = 0;
  self->_activePatternCursor = 0;
  self->_skipAutomaticStopOnUserInteraction = 0;
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"AXVisualAlertEventEnded" object:0 userInfo:0];
}

- (void)_processNextVisualAlertComponent
{
  v32 = *MEMORY[0x277D85DE8];
  _activePattern = [(AXVisualAlertManager *)self _activePattern];
  v4 = [_activePattern objectForKey:@"StrobePattern"];

  if (!v4)
  {
    mEMORY[0x277CE6998] = [MEMORY[0x277CE6998] sharedInstance];
    ignoreLogging = [mEMORY[0x277CE6998] ignoreLogging];

    if ((ignoreLogging & 1) == 0)
    {
      identifier = [MEMORY[0x277CE6998] identifier];
      v12 = AXLoggerForFacility();

      v13 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = AXColorizeFormatLog();
        v15 = _AXStringForArgs();
        if (os_log_type_enabled(v12, v13))
        {
          *buf = 138543362;
          v31 = v15;
          _os_log_impl(&dword_27102A000, v12, v13, "%{public}@", buf, 0xCu);
        }
      }
    }

LABEL_11:
    [(AXVisualAlertManager *)self _endVisualAlert];
    goto LABEL_23;
  }

  activePatternCursor = self->_activePatternCursor;
  if (activePatternCursor >= [v4 count] - 1)
  {
    if (self->_shouldRepeatPattern)
    {
      self->_activePatternCursor = 0;
      [(AXVisualAlertManager *)self _processNextVisualAlertComponent];
      goto LABEL_23;
    }

    mEMORY[0x277CE6998]2 = [MEMORY[0x277CE6998] sharedInstance];
    ignoreLogging2 = [mEMORY[0x277CE6998]2 ignoreLogging];

    if ((ignoreLogging2 & 1) == 0)
    {
      identifier2 = [MEMORY[0x277CE6998] identifier];
      v19 = AXLoggerForFacility();

      v20 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = AXColorizeFormatLog();
        v22 = _AXStringForArgs();
        if (os_log_type_enabled(v19, v20))
        {
          *buf = 138543362;
          v31 = v22;
          _os_log_impl(&dword_27102A000, v19, v20, "%{public}@", buf, 0xCu);
        }
      }
    }

    goto LABEL_11;
  }

  v6 = [v4 objectAtIndex:self->_activePatternCursor];
  v7 = [v4 objectAtIndex:self->_activePatternCursor + 1];
  self->_activePatternCursor += 2;
  if (v6)
  {
    bOOLValue = [v6 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  intValue = [v7 intValue];
  objc_initWeak(buf, self);
  v24 = intValue / 1000.0;
  v25 = self->_timer;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __56__AXVisualAlertManager__processNextVisualAlertComponent__block_invoke;
  v27[3] = &unk_279E2C7A0;
  v26 = v25;
  v28 = v26;
  v29[1] = *&v24;
  objc_copyWeak(v29, buf);
  [(AXVisualAlertManager *)self _setTorchDeviceOn:bOOLValue withCompletion:v27];
  objc_destroyWeak(v29);

  objc_destroyWeak(buf);
LABEL_23:
}

void __56__AXVisualAlertManager__processNextVisualAlertComponent__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __56__AXVisualAlertManager__processNextVisualAlertComponent__block_invoke_2;
  v3[3] = &unk_279E2C778;
  objc_copyWeak(&v4, (a1 + 40));
  [v1 afterDelay:v3 processBlock:v2];
  objc_destroyWeak(&v4);
}

void __56__AXVisualAlertManager__processNextVisualAlertComponent__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _processNextVisualAlertComponent];
}

- (void)handleBulletinWithSectionID:(id)d
{
  v21 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if ([dCopy isEqualToString:@"com.apple.springboard.SBDismissOnlyAlertItem"])
  {
    mEMORY[0x277CE6998] = [MEMORY[0x277CE6998] sharedInstance];
    ignoreLogging = [mEMORY[0x277CE6998] ignoreLogging];

    if ((ignoreLogging & 1) == 0)
    {
      identifier = [MEMORY[0x277CE6998] identifier];
      v8 = AXLoggerForFacility();

      v9 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = AXColorizeFormatLog();
        v11 = _AXStringForArgs();
        if (os_log_type_enabled(v8, v9))
        {
          v19 = 138543362;
          v20 = v11;
          _os_log_impl(&dword_27102A000, v8, v9, "%{public}@", &v19, 0xCu);
        }
      }
    }
  }

  else if ([dCopy isEqualToString:@"com.apple.MobileSMS"])
  {
    [(AXVisualAlertManager *)self _handleVisualAlertForIncomingMessage];
  }

  else if ([dCopy isEqualToString:@"com.apple.mobiletimer"])
  {
    mEMORY[0x277CE6998]2 = [MEMORY[0x277CE6998] sharedInstance];
    ignoreLogging2 = [mEMORY[0x277CE6998]2 ignoreLogging];

    if ((ignoreLogging2 & 1) == 0)
    {
      identifier2 = [MEMORY[0x277CE6998] identifier];
      v15 = AXLoggerForFacility();

      v16 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = AXColorizeFormatLog();
        v18 = _AXStringForArgs();
        if (os_log_type_enabled(v15, v16))
        {
          v19 = 138543362;
          v20 = v18;
          _os_log_impl(&dword_27102A000, v15, v16, "%{public}@", &v19, 0xCu);
        }
      }
    }

    [(AXVisualAlertManager *)self _handleBeginVisualAlertForAlarmWithSound:1];
  }

  else if (([dCopy isEqualToString:@"com.apple.mobilephone"] & 1) == 0 && (objc_msgSend(dCopy, "isEqualToString:", @"com.apple.facetime") & 1) == 0)
  {
    [(AXVisualAlertManager *)self _handleVisualAlertForRegularNotification:dCopy];
  }
}

- (void)_handleBeginVisualAlertForIncomingCall
{
  v12 = *MEMORY[0x277D85DE8];
  if (self->_alertTypes)
  {
    mEMORY[0x277CE6998] = [MEMORY[0x277CE6998] sharedInstance];
    ignoreLogging = [mEMORY[0x277CE6998] ignoreLogging];

    if ((ignoreLogging & 1) == 0)
    {
      identifier = [MEMORY[0x277CE6998] identifier];
      v6 = AXLoggerForFacility();

      v7 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = AXColorizeFormatLog();
        v9 = _AXStringForArgs();
        if (os_log_type_enabled(v6, v7))
        {
          v10 = 138543362;
          v11 = v9;
          _os_log_impl(&dword_27102A000, v6, v7, "%{public}@", &v10, 0xCu);
        }
      }
    }

    [(AXVisualAlertManager *)self _beginVisualAlertForType:1 repeat:1];
  }
}

- (void)_handleEndVisualAlertForIncomingCall
{
  v12 = *MEMORY[0x277D85DE8];
  mEMORY[0x277CE6998] = [MEMORY[0x277CE6998] sharedInstance];
  ignoreLogging = [mEMORY[0x277CE6998] ignoreLogging];

  if ((ignoreLogging & 1) == 0)
  {
    identifier = [MEMORY[0x277CE6998] identifier];
    v6 = AXLoggerForFacility();

    v7 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = AXColorizeFormatLog();
      v9 = _AXStringForArgs();
      if (os_log_type_enabled(v6, v7))
      {
        v10 = 138543362;
        v11 = v9;
        _os_log_impl(&dword_27102A000, v6, v7, "%{public}@", &v10, 0xCu);
      }
    }
  }

  [(AXVisualAlertManager *)self _endVisualAlert];
}

- (void)_handleBeginVisualAlertForIncomingVideoConferenceCall
{
  v29 = *MEMORY[0x277D85DE8];
  if ((self->_alertTypes & 2) != 0)
  {
    mEMORY[0x277CE6998] = [MEMORY[0x277CE6998] sharedInstance];
    ignoreLogging = [mEMORY[0x277CE6998] ignoreLogging];

    if ((ignoreLogging & 1) == 0)
    {
      identifier = [MEMORY[0x277CE6998] identifier];
      v6 = AXLoggerForFacility();

      v7 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = AXColorizeFormatLog();
        IsSpringBoard = AXProcessIsSpringBoard();
        _shouldHandleVisualAlertsForVideoConferenceCallsInConferenceFramework = [(AXVisualAlertManager *)self _shouldHandleVisualAlertsForVideoConferenceCallsInConferenceFramework];
        v9 = _AXStringForArgs();
        if (os_log_type_enabled(v6, v7))
        {
          *buf = 138543362;
          v28 = v9;
          _os_log_impl(&dword_27102A000, v6, v7, "%{public}@", buf, 0xCu);
        }
      }
    }

    if (AXProcessIsSpringBoard() && [(AXVisualAlertManager *)self _shouldHandleVisualAlertsForVideoConferenceCallsInConferenceFramework])
    {
      mEMORY[0x277CE6998]2 = [MEMORY[0x277CE6998] sharedInstance];
      ignoreLogging2 = [mEMORY[0x277CE6998]2 ignoreLogging];

      if ((ignoreLogging2 & 1) == 0)
      {
        identifier2 = [MEMORY[0x277CE6998] identifier];
        v13 = AXLoggerForFacility();

        v14 = AXOSLogLevelFromAXLogLevel();
        if (os_log_type_enabled(v13, v14))
        {
          v15 = AXColorizeFormatLog();
          v16 = _AXStringForArgs();
          if (os_log_type_enabled(v13, v14))
          {
            *buf = 138543362;
            v28 = v16;
            _os_log_impl(&dword_27102A000, v13, v14, "%{public}@", buf, 0xCu);
          }
        }
      }

      [AXDistributedNotificationHandler postDistributedNotificationWithName:@"AXVisualAlertManagerVideoConferenceCallRingingNotification", IsSpringBoard, _shouldHandleVisualAlertsForVideoConferenceCallsInConferenceFramework];
      self->_videoConferenceCallRinging = 1;
    }

    else
    {
      mEMORY[0x277CE6998]3 = [MEMORY[0x277CE6998] sharedInstance];
      ignoreLogging3 = [mEMORY[0x277CE6998]3 ignoreLogging];

      if ((ignoreLogging3 & 1) == 0)
      {
        identifier3 = [MEMORY[0x277CE6998] identifier];
        v20 = AXLoggerForFacility();

        v21 = AXOSLogLevelFromAXLogLevel();
        if (os_log_type_enabled(v20, v21))
        {
          v22 = AXColorizeFormatLog();
          v23 = _AXStringForArgs();
          if (os_log_type_enabled(v20, v21))
          {
            *buf = 138543362;
            v28 = v23;
            _os_log_impl(&dword_27102A000, v20, v21, "%{public}@", buf, 0xCu);
          }
        }
      }

      alertTypes = self->_alertTypes;
      self->_alertTypes = alertTypes | 1;
      [(AXVisualAlertManager *)self _handleBeginVisualAlertForIncomingCall];
      self->_alertTypes = alertTypes;
    }
  }
}

- (void)_handleEndVisualAlertForIncomingVideoConferenceCall
{
  if (AXProcessIsSpringBoard() && [(AXVisualAlertManager *)self _shouldHandleVisualAlertsForVideoConferenceCallsInConferenceFramework])
  {
    [AXDistributedNotificationHandler postDistributedNotificationWithName:@"AXVisualAlertManagerVideoConferenceCallHandledNotification"];
    self->_videoConferenceCallRinging = 0;
  }

  else
  {

    [(AXVisualAlertManager *)self _handleEndVisualAlertForIncomingCall];
  }
}

- (void)_handleBeginVisualAlertForAlarmWithSound:(BOOL)sound
{
  v13 = *MEMORY[0x277D85DE8];
  mEMORY[0x277CE6998] = [MEMORY[0x277CE6998] sharedInstance];
  ignoreLogging = [mEMORY[0x277CE6998] ignoreLogging];

  if ((ignoreLogging & 1) == 0)
  {
    identifier = [MEMORY[0x277CE6998] identifier];
    v7 = AXLoggerForFacility();

    v8 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = AXColorizeFormatLog();
      v10 = _AXStringForArgs();
      if (os_log_type_enabled(v7, v8))
      {
        *buf = 138543362;
        v12 = v10;
        _os_log_impl(&dword_27102A000, v7, v8, "%{public}@", buf, 0xCu);
      }
    }
  }

  if ((self->_alertTypes & 0x20) != 0)
  {
    [(AXVisualAlertManager *)self _beginVisualAlertForType:32 repeat:1 skipAutomaticStopOnUserInteraction:0 bundleId:0];
  }
}

- (void)_handleEndVisualAlertForAlarm
{
  v22 = *MEMORY[0x277D85DE8];
  mEMORY[0x277CE6998] = [MEMORY[0x277CE6998] sharedInstance];
  ignoreLogging = [mEMORY[0x277CE6998] ignoreLogging];

  if ((ignoreLogging & 1) == 0)
  {
    identifier = [MEMORY[0x277CE6998] identifier];
    v7 = AXLoggerForFacility();

    v8 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = AXColorizeFormatLog();
      Name = sel_getName(a2);
      alertTypes = self->_alertTypes;
      v10 = _AXStringForArgs();
      if (os_log_type_enabled(v7, v8))
      {
        *buf = 138543362;
        v21 = v10;
        _os_log_impl(&dword_27102A000, v7, v8, "%{public}@", buf, 0xCu);
      }
    }
  }

  if ((self->_alertTypes & 0x20) != 0)
  {
    mEMORY[0x277CE6998]2 = [MEMORY[0x277CE6998] sharedInstance];
    ignoreLogging2 = [mEMORY[0x277CE6998]2 ignoreLogging];

    if ((ignoreLogging2 & 1) == 0)
    {
      identifier2 = [MEMORY[0x277CE6998] identifier];
      v14 = AXLoggerForFacility();

      v15 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = AXColorizeFormatLog();
        v17 = _AXStringForArgs();
        if (os_log_type_enabled(v14, v15))
        {
          *buf = 138543362;
          v21 = v17;
          _os_log_impl(&dword_27102A000, v14, v15, "%{public}@", buf, 0xCu);
        }
      }
    }

    [(AXVisualAlertManager *)self _endVisualAlert:Name];
  }
}

- (void)_handleVisualAlertForRegularNotification:(id)notification
{
  v14 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  if ((self->_alertTypes & 8) != 0)
  {
    mEMORY[0x277CE6998] = [MEMORY[0x277CE6998] sharedInstance];
    ignoreLogging = [mEMORY[0x277CE6998] ignoreLogging];

    if ((ignoreLogging & 1) == 0)
    {
      identifier = [MEMORY[0x277CE6998] identifier];
      v8 = AXLoggerForFacility();

      v9 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = AXColorizeFormatLog();
        v11 = _AXStringForArgs();
        if (os_log_type_enabled(v8, v9))
        {
          v12 = 138543362;
          v13 = v11;
          _os_log_impl(&dword_27102A000, v8, v9, "%{public}@", &v12, 0xCu);
        }
      }
    }

    [(AXVisualAlertManager *)self _beginVisualAlertForType:8 repeat:0 skipAutomaticStopOnUserInteraction:0 bundleId:notificationCopy];
  }
}

- (void)_handleVisualAlertForExternalApplication
{
  alertTypes = self->_alertTypes;
  if ((alertTypes & 0x10) != 0)
  {
    self->_alertTypes = alertTypes | 8;
    [(AXVisualAlertManager *)self _handleVisualAlertForRegularNotification:0];
    self->_alertTypes = alertTypes;
  }
}

- (void)_handleVisualAlertForIncomingMessage
{
  v12 = *MEMORY[0x277D85DE8];
  if ((self->_alertTypes & 4) != 0)
  {
    mEMORY[0x277CE6998] = [MEMORY[0x277CE6998] sharedInstance];
    ignoreLogging = [mEMORY[0x277CE6998] ignoreLogging];

    if ((ignoreLogging & 1) == 0)
    {
      identifier = [MEMORY[0x277CE6998] identifier];
      v6 = AXLoggerForFacility();

      v7 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = AXColorizeFormatLog();
        v9 = _AXStringForArgs();
        if (os_log_type_enabled(v6, v7))
        {
          v10 = 138543362;
          v11 = v9;
          _os_log_impl(&dword_27102A000, v6, v7, "%{public}@", &v10, 0xCu);
        }
      }
    }

    [(AXVisualAlertManager *)self _beginVisualAlertForType:4 repeat:0];
  }
}

- (void)_handleSecondaryVisualAlertManagerDidStart
{
  v12 = *MEMORY[0x277D85DE8];
  if (self->_isDeviceLocked)
  {
    [(VISAXNotificationHandler *)self->_deviceLockStateChangedNotificationHandler processHandler:sel__handleDeviceWasLocked];
  }

  if (self->_isTorchEnabledInControlCenter)
  {
    [(VISAXNotificationHandler *)self->_torchInControlCenterWasEnabledNotificationHandler processHandler:sel__handleTorchInControlCenterWasEnabled];
  }

  if (self->_videoConferenceCallRinging && self->_videoConferenceCallExists)
  {
    mEMORY[0x277CE6998] = [MEMORY[0x277CE6998] sharedInstance];
    ignoreLogging = [mEMORY[0x277CE6998] ignoreLogging];

    if ((ignoreLogging & 1) == 0)
    {
      identifier = [MEMORY[0x277CE6998] identifier];
      v6 = AXLoggerForFacility();

      v7 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = AXColorizeFormatLog();
        v9 = _AXStringForArgs();
        if (os_log_type_enabled(v6, v7))
        {
          v10 = 138543362;
          v11 = v9;
          _os_log_impl(&dword_27102A000, v6, v7, "%{public}@", &v10, 0xCu);
        }
      }
    }

    [(AXVisualAlertManager *)self _handleBeginVisualAlertForIncomingVideoConferenceCall];
  }
}

- (void)_handleVideoConferenceCallRinging
{
  v12 = *MEMORY[0x277D85DE8];
  if ((self->_alertTypes & 2) != 0 && [(AXVisualAlertManager *)self _hasVideoConferenceCameraTorchManager])
  {
    mEMORY[0x277CE6998] = [MEMORY[0x277CE6998] sharedInstance];
    ignoreLogging = [mEMORY[0x277CE6998] ignoreLogging];

    if ((ignoreLogging & 1) == 0)
    {
      identifier = [MEMORY[0x277CE6998] identifier];
      v6 = AXLoggerForFacility();

      v7 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = AXColorizeFormatLog();
        v9 = _AXStringForArgs();
        if (os_log_type_enabled(v6, v7))
        {
          v10 = 138543362;
          v11 = v9;
          _os_log_impl(&dword_27102A000, v6, v7, "%{public}@", &v10, 0xCu);
        }
      }
    }

    [(AXVisualAlertManager *)self _handleBeginVisualAlertForIncomingVideoConferenceCall];
  }
}

- (void)_handleLockButtonPressed
{
  v12 = *MEMORY[0x277D85DE8];
  mEMORY[0x277CE6998] = [MEMORY[0x277CE6998] sharedInstance];
  ignoreLogging = [mEMORY[0x277CE6998] ignoreLogging];

  if ((ignoreLogging & 1) == 0)
  {
    identifier = [MEMORY[0x277CE6998] identifier];
    v6 = AXLoggerForFacility();

    v7 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = AXColorizeFormatLog();
      v9 = _AXStringForArgs();
      if (os_log_type_enabled(v6, v7))
      {
        *buf = 138543362;
        v11 = v9;
        _os_log_impl(&dword_27102A000, v6, v7, "%{public}@", buf, 0xCu);
      }
    }
  }

  if (!self->_skipAutomaticStopOnUserInteraction)
  {
    [(AXVisualAlertManager *)self _endVisualAlert];
  }
}

- (void)_handleVolumeChanged
{
  v12 = *MEMORY[0x277D85DE8];
  mEMORY[0x277CE6998] = [MEMORY[0x277CE6998] sharedInstance];
  ignoreLogging = [mEMORY[0x277CE6998] ignoreLogging];

  if ((ignoreLogging & 1) == 0)
  {
    identifier = [MEMORY[0x277CE6998] identifier];
    v6 = AXLoggerForFacility();

    v7 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = AXColorizeFormatLog();
      v9 = _AXStringForArgs();
      if (os_log_type_enabled(v6, v7))
      {
        v10 = 138543362;
        v11 = v9;
        _os_log_impl(&dword_27102A000, v6, v7, "%{public}@", &v10, 0xCu);
      }
    }
  }

  [(AXVisualAlertManager *)self _handleLockButtonPressed];
}

- (void)_handleDeviceWasLocked
{
  v12 = *MEMORY[0x277D85DE8];
  mEMORY[0x277CE6998] = [MEMORY[0x277CE6998] sharedInstance];
  ignoreLogging = [mEMORY[0x277CE6998] ignoreLogging];

  if ((ignoreLogging & 1) == 0)
  {
    identifier = [MEMORY[0x277CE6998] identifier];
    v6 = AXLoggerForFacility();

    v7 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = AXColorizeFormatLog();
      v9 = _AXStringForArgs();
      if (os_log_type_enabled(v6, v7))
      {
        *buf = 138543362;
        v11 = v9;
        _os_log_impl(&dword_27102A000, v6, v7, "%{public}@", buf, 0xCu);
      }
    }
  }

  self->_isDeviceLocked = 1;
}

- (void)_handleDeviceWasUnlocked
{
  v12 = *MEMORY[0x277D85DE8];
  self->_isDeviceLocked = 0;
  mEMORY[0x277CE6998] = [MEMORY[0x277CE6998] sharedInstance];
  ignoreLogging = [mEMORY[0x277CE6998] ignoreLogging];

  if ((ignoreLogging & 1) == 0)
  {
    identifier = [MEMORY[0x277CE6998] identifier];
    v6 = AXLoggerForFacility();

    v7 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = AXColorizeFormatLog();
      v9 = _AXStringForArgs();
      if (os_log_type_enabled(v6, v7))
      {
        *buf = 138543362;
        v11 = v9;
        _os_log_impl(&dword_27102A000, v6, v7, "%{public}@", buf, 0xCu);
      }
    }
  }

  if (!self->_skipAutomaticStopOnUserInteraction)
  {
    [(AXVisualAlertManager *)self _endVisualAlert];
  }
}

- (void)_handleRingerSwitchToggled
{
  v22 = *MEMORY[0x277D85DE8];
  self->_isRingerSwitchSilent = BKSHIDServicesGetRingerState() == 0;
  mEMORY[0x277CE6998] = [MEMORY[0x277CE6998] sharedInstance];
  ignoreLogging = [mEMORY[0x277CE6998] ignoreLogging];

  if ((ignoreLogging & 1) == 0)
  {
    identifier = [MEMORY[0x277CE6998] identifier];
    v6 = AXLoggerForFacility();

    v7 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = AXColorizeFormatLog();
      isRingerSwitchSilent = self->_isRingerSwitchSilent;
      v9 = _AXStringForArgs();
      if (os_log_type_enabled(v6, v7))
      {
        *buf = 138543362;
        v21 = v9;
        _os_log_impl(&dword_27102A000, v6, v7, "%{public}@", buf, 0xCu);
      }
    }
  }

  if (self->_isRingerSwitchSilent)
  {
    mEMORY[0x277CE7E20] = [MEMORY[0x277CE7E20] sharedInstance];
    shouldFlashForAlertInSilentMode = [mEMORY[0x277CE7E20] shouldFlashForAlertInSilentMode];

    if ((shouldFlashForAlertInSilentMode & 1) == 0)
    {
      mEMORY[0x277CE6998]2 = [MEMORY[0x277CE6998] sharedInstance];
      ignoreLogging2 = [mEMORY[0x277CE6998]2 ignoreLogging];

      if ((ignoreLogging2 & 1) == 0)
      {
        identifier2 = [MEMORY[0x277CE6998] identifier];
        v15 = AXLoggerForFacility();

        v16 = AXOSLogLevelFromAXLogLevel();
        if (os_log_type_enabled(v15, v16))
        {
          v17 = AXColorizeFormatLog();
          v18 = _AXStringForArgs();
          if (os_log_type_enabled(v15, v16))
          {
            *buf = 138543362;
            v21 = v18;
            _os_log_impl(&dword_27102A000, v15, v16, "%{public}@", buf, 0xCu);
          }
        }
      }

      [(AXVisualAlertManager *)self _endVisualAlert];
    }
  }
}

- (void)_handleQuietModeWasEnabled
{
  v12 = *MEMORY[0x277D85DE8];
  mEMORY[0x277CE6998] = [MEMORY[0x277CE6998] sharedInstance];
  ignoreLogging = [mEMORY[0x277CE6998] ignoreLogging];

  if ((ignoreLogging & 1) == 0)
  {
    identifier = [MEMORY[0x277CE6998] identifier];
    v6 = AXLoggerForFacility();

    v7 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = AXColorizeFormatLog();
      v9 = _AXStringForArgs();
      if (os_log_type_enabled(v6, v7))
      {
        v10 = 138543362;
        v11 = v9;
        _os_log_impl(&dword_27102A000, v6, v7, "%{public}@", &v10, 0xCu);
      }
    }
  }

  self->_isQuietModeEnabled = 1;
  [(AXVisualAlertManager *)self _endVisualAlert];
}

- (void)_handleTorchInControlCenterWasEnabled
{
  v12 = *MEMORY[0x277D85DE8];
  self->_isTorchEnabledInControlCenter = 1;
  mEMORY[0x277CE6998] = [MEMORY[0x277CE6998] sharedInstance];
  ignoreLogging = [mEMORY[0x277CE6998] ignoreLogging];

  if ((ignoreLogging & 1) == 0)
  {
    identifier = [MEMORY[0x277CE6998] identifier];
    v6 = AXLoggerForFacility();

    v7 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = AXColorizeFormatLog();
      v9 = _AXStringForArgs();
      if (os_log_type_enabled(v6, v7))
      {
        v10 = 138543362;
        v11 = v9;
        _os_log_impl(&dword_27102A000, v6, v7, "%{public}@", &v10, 0xCu);
      }
    }
  }

  [(AXVisualAlertManager *)self _endVisualAlert];
}

void *__59__AXVisualAlertManager__handleCaptureSessionDidStopRunning__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  result = [*(a1 + 32) _typeToUseForVisualAlertAfterCaptureSessionStopsRunning];
  if (result)
  {
    v3 = result;
    v4 = [MEMORY[0x277CE6998] sharedInstance];
    v5 = [v4 ignoreLogging];

    if ((v5 & 1) == 0)
    {
      v6 = [MEMORY[0x277CE6998] identifier];
      v7 = AXLoggerForFacility();

      v8 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = AXColorizeFormatLog();
        v10 = _AXStringForArgs();
        if (os_log_type_enabled(v7, v8))
        {
          v11 = 138543362;
          v12 = v10;
          _os_log_impl(&dword_27102A000, v7, v8, "%{public}@", &v11, 0xCu);
        }
      }
    }

    [*(a1 + 32) _beginVisualAlertForType:v3 repeat:1];
    return [*(a1 + 32) _setTypeToUseForVisualAlertAfterCaptureSessionStopsRunning:0];
  }

  return result;
}

- (void)_insertCustomLogicForSystemWideServer
{
  mEMORY[0x277CE69B0] = [MEMORY[0x277CE69B0] sharedInstance];
  [mEMORY[0x277CE69B0] performValidations:&__block_literal_global_838 withPreValidationHandler:&__block_literal_global_870 postValidationHandler:&__block_literal_global_879 safeCategoryInstallationHandler:&__block_literal_global_882];
}

uint64_t __61__AXVisualAlertManager__insertCustomLogicForSystemWideServer__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 validateClass:@"BBSound"];
  [v2 validateClass:@"BBBulletin" hasInstanceMethod:@"sectionID" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBLockScreenManager" hasClassMethod:@"sharedInstanceIfExists" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBLockScreenManager" hasInstanceMethod:@"isUILocked" withFullSignature:{"B", 0}];
  [v2 validateClass:@"SBPrototypeController" hasClassMethod:@"sharedInstance" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBPrototypeController" hasInstanceMethod:@"rootSettings" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SpringBoard" hasInstanceVariable:@"_sensorActivityDataProvider" withType:"SBSensorActivityDataProvider"];
  [v2 validateClass:@"SBSensorActivityDataProvider" hasInstanceMethod:@"activeCameraAndMicrophoneActivityAttributions" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBSensorActivityAttribution" hasInstanceMethod:@"sensor" withFullSignature:{"q", 0}];

  return 1;
}

uint64_t __61__AXVisualAlertManager__insertCustomLogicForSystemWideServer__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"AXVisualAlerts"];
  [v2 setOverrideProcessName:@"Visual Alerts"];
  [v2 setDebugBuild:0];

  return MEMORY[0x282138D58]();
}

void __61__AXVisualAlertManager__insertCustomLogicForSystemWideServer__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"AXVisualAlertSBNCSoundController" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AXVisualAlertSBNCScreenController" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AXVisualAlertSBScheduledAlarmObserver" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AXVisualAlertSBUIFlashlightController" canInteractWithTargetClass:1];
}

- (id)_normalizedStrobePatternForOriginalPattern:(id)pattern
{
  patternCopy = pattern;
  v4 = [patternCopy objectForKey:@"StrobePattern"];

  v5 = patternCopy;
  if (!v4)
  {
    v6 = [patternCopy objectForKey:@"VibePattern"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v7 = [patternCopy objectForKey:@"OnDuration"];
      v8 = [patternCopy objectForKey:@"OffDuration"];
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        [v7 doubleValue];
        v10 = (v9 * 1000.0);
        [v8 doubleValue];
        v20 = (v11 * 1000.0);
        v12 = MEMORY[0x277CBEA60];
        v13 = [MEMORY[0x277CCABB0] numberWithBool:1];
        v14 = [MEMORY[0x277CCABB0] numberWithInt:v10];
        v15 = [MEMORY[0x277CCABB0] numberWithBool:0];
        v16 = [MEMORY[0x277CCABB0] numberWithInt:v20];
        v17 = [v12 arrayWithObjects:{v13, v14, v15, v16, 0}];

        v6 = v13;
      }

      else
      {
        v17 = 0;
      }

      v6 = v17;
    }

    v5 = patternCopy;
    if (v6)
    {
      v18 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:patternCopy];
      [v18 setObject:v6 forKey:@"StrobePattern"];
      [v18 removeObjectForKey:@"VibePattern"];
      [v18 removeObjectForKey:@"OnDuration"];
      [v18 removeObjectForKey:@"OffDuration"];
      v5 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v18];
    }
  }

  return v5;
}

- (BOOL)_hasVideoConferenceCameraTorchManager
{
  asyncManagerAdapter = self->_asyncManagerAdapter;
  if (asyncManagerAdapter)
  {
    v3 = MEMORY[0x277CCA8D8];
    synchronousTorchManager = [(AXCameraTorchManagerBackgroundAdapter *)asyncManagerAdapter synchronousTorchManager];
    v5 = [v3 bundleForClass:objc_opt_class()];
    bundleIdentifier = [v5 bundleIdentifier];
    v7 = [bundleIdentifier isEqualToString:@"com.apple.AVConference"];

    LOBYTE(asyncManagerAdapter) = v7;
  }

  return asyncManagerAdapter;
}

- (BOOL)_supportsVisualAlertsForVideoConferenceCalls
{
  if (_supportsVisualAlertsForVideoConferenceCalls__AXVisualAlertManagerHasLegacySOCOnceToken != -1)
  {
    [AXVisualAlertManager _supportsVisualAlertsForVideoConferenceCalls];
  }

  return (_supportsVisualAlertsForVideoConferenceCalls__AXVisualAlertManagerHasLegacySOC & 1) == 0;
}

uint64_t __68__AXVisualAlertManager__supportsVisualAlertsForVideoConferenceCalls__block_invoke()
{
  v0 = *MEMORY[0x277CD2898];
  v1 = IOServiceMatching("AppleH3CamIn");
  result = IOServiceGetMatchingService(v0, v1);
  if (result)
  {
    _supportsVisualAlertsForVideoConferenceCalls__AXVisualAlertManagerHasLegacySOC = 1;

    return IOObjectRelease(result);
  }

  return result;
}

- (BOOL)_shouldHandleVisualAlertsForVideoConferenceCallsInConferenceFramework
{
  v12 = *MEMORY[0x277D85DE8];
  if (self->_isDeviceLocked || !self->_videoConferenceCallRinging)
  {

    return [(AXVisualAlertManager *)self _supportsVisualAlertsForVideoConferenceCalls];
  }

  else
  {
    mEMORY[0x277CE6998] = [MEMORY[0x277CE6998] sharedInstance];
    ignoreLogging = [mEMORY[0x277CE6998] ignoreLogging];

    if ((ignoreLogging & 1) == 0)
    {
      identifier = [MEMORY[0x277CE6998] identifier];
      v5 = AXLoggerForFacility();

      v6 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = AXColorizeFormatLog();
        v8 = _AXStringForArgs();
        if (os_log_type_enabled(v5, v6))
        {
          v10 = 138543362;
          v11 = v8;
          _os_log_impl(&dword_27102A000, v5, v6, "%{public}@", &v10, 0xCu);
        }
      }
    }

    return 0;
  }
}

- (void)_springBoardLockStateChange:.cold.1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getkSBNotificationKeyDeviceLockState(void)"];
  [v0 handleFailureInFunction:v1 file:@"AXVisualAlertManager.m" lineNumber:87 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)_startForAlertTypes:cameraTorchManager:.cold.1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getSBRingerChangedNotification(void)"];
  [v0 handleFailureInFunction:v1 file:@"AXVisualAlertManager.m" lineNumber:84 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)_startForAlertTypes:cameraTorchManager:.cold.2()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getSBDeviceLockStateChangedNotification(void)"];
  [v0 handleFailureInFunction:v1 file:@"AXVisualAlertManager.m" lineNumber:85 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)_startForAlertTypes:cameraTorchManager:.cold.3()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getSBVolumeButtonPressedNotification(void)"];
  [v0 handleFailureInFunction:v1 file:@"AXVisualAlertManager.m" lineNumber:83 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)_startForAlertTypes:cameraTorchManager:.cold.4()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getSBLockButtonPressedNotification(void)"];
  [v0 handleFailureInFunction:v1 file:@"AXVisualAlertManager.m" lineNumber:86 description:{@"%s", dlerror()}];

  __break(1u);
}

@end