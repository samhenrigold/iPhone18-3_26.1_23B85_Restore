@interface SOSStatusManager
+ (SOSStatusManager)sharedInstance;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (SOSStatusManager)init;
- (void)_cancelCurrentDeviceClearStatusTimer;
- (void)_cancelHandoffFallbackTimer;
- (void)_cancelPairedDeviceClearStatusTimer;
- (void)_reportSOSEvent:(id)event callDuration:(int64_t)duration;
- (void)_startCurrentDeviceClearStatusTimer;
- (void)_startHandoffFallbackTimer;
- (void)_startPairedDeviceClearStatusTimer;
- (void)cancelCurrentDeviceClearStatusTimer;
- (void)cancelHandoffFallbackTimer;
- (void)cancelPairedDeviceClearStatusTimer;
- (void)checkHandoffFallback;
- (void)checkSOSStatusOnLaunch;
- (void)clearHandoffFallbackState;
- (void)endAudioSession;
- (void)flowEnded;
- (void)flowEndedOnBothDevices;
- (void)flowEndedOnCurrentDevice;
- (void)flowStarted;
- (void)handleLostStatusReporterConnection;
- (void)handleSOSCallStatusChange:(id)change;
- (void)pairedDeviceSOSStatusDidUpdate:(id)update progression:(int64_t)progression shouldHandleThirdParty:(BOOL)party;
- (void)sosTriggerDisabledWithUUID:(id)d trigger:(int64_t)trigger;
- (void)sosTriggerPushedToPairedDeviceWithUUID:(id)d trigger:(int64_t)trigger;
- (void)sosTriggeredOnPairedDevice:(id)device;
- (void)sosTriggeredWithUUID:(id)d trigger:(int64_t)trigger source:(int64_t)source;
- (void)startAudioSessionForFlowOnCurrentDevice:(BOOL)device;
- (void)startCurrentDeviceClearStatusTimer;
- (void)startHandoffFallbackTimer;
- (void)startPairedDeviceClearStatusTimer;
- (void)triggerHandoffFallback;
- (void)updatePairedDeviceSOSStatus:(id)status;
- (void)updateSOSFlowState:(int64_t)state;
@end

@implementation SOSStatusManager

+ (SOSStatusManager)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__SOSStatusManager_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken_7 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_7, block);
  }

  v2 = sharedInstance_inst_1;

  return v2;
}

uint64_t __34__SOSStatusManager_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance_inst_1 = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (SOSStatusManager)init
{
  v9.receiver = self;
  v9.super_class = SOSStatusManager;
  v2 = [(SOSStatusManager *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v4 = sos_default_log(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_264323000, v4, OS_LOG_TYPE_DEFAULT, "SOSStatusManager, init", v8, 2u);
    }

    v5 = +[SOSCoreAnalyticsReporter sharedInstance];
    coreAnalyticsReporter = v3->_coreAnalyticsReporter;
    v3->_coreAnalyticsReporter = v5;
  }

  return v3;
}

- (void)sosTriggeredWithUUID:(id)d trigger:(int64_t)trigger source:(int64_t)source
{
  v18 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v9 = [SOSStatus alloc];
  date = [MEMORY[0x277CBEAA8] date];
  v11 = [(SOSStatus *)v9 initWithUUID:dCopy trigger:trigger timeOfDetection:date];

  [(SOSStatus *)v11 setFlowState:14];
  [SOSUtilities setCurrentDeviceSOSStatus:v11];
  v12 = sos_default_log([(SOSStatusManager *)self setMostRecentTriggerSource:source]);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412290;
    v17 = v11;
    _os_log_impl(&dword_264323000, v12, OS_LOG_TYPE_DEFAULT, "SOSStatusManager, sosTriggeredWithUUID: %@", &v16, 0xCu);
  }

  [(SOSStatusManager *)self flowStarted];
  v13 = +[SOSCoordinator sharedInstance];
  v14 = +[SOSUtilities currentDeviceSOSStatus];
  [v13 syncProgressionWithPairedDevice:1 sosStatus:v14];

  v15 = +[SOSEngine sharedInstance];
  [v15 broadcastUpdatedSOSStatus:v11];

  [(SOSStatusManager *)self startCurrentDeviceClearStatusTimer];
}

- (void)sosTriggerDisabledWithUUID:(id)d trigger:(int64_t)trigger
{
  v15 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v7 = [SOSStatus alloc];
  date = [MEMORY[0x277CBEAA8] date];
  date2 = [MEMORY[0x277CBEAA8] date];
  v10 = [(SOSStatus *)v7 initWithUUID:dCopy trigger:trigger timeOfDetection:date timeOfResolution:date2 resolution:4];

  v11 = sos_default_log([SOSUtilities setCurrentDeviceSOSStatus:v10]);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = v10;
    _os_log_impl(&dword_264323000, v11, OS_LOG_TYPE_DEFAULT, "SOSStatusManager, sosTriggerDisabledWithUUID: %@", &v13, 0xCu);
  }

  if (trigger == 7)
  {
    v12 = +[SOSEngine sharedInstance];
    [v12 handleNotifyThirdPartyClientsWithSOSStatus:v10];
  }

  [(SOSStatusManager *)self _reportSOSEvent:v10 callDuration:0];
}

- (void)updateSOSFlowState:(int64_t)state
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = +[SOSUtilities currentDeviceSOSStatus];
  v6 = sos_default_log(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 67109120;
    LODWORD(v22) = [v5 flowState];
    _os_log_impl(&dword_264323000, v6, OS_LOG_TYPE_DEFAULT, "SOSStatusManager, previousState: %d", &v21, 8u);
  }

  v8 = sos_default_log(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 67109120;
    LODWORD(v22) = state;
    _os_log_impl(&dword_264323000, v8, OS_LOG_TYPE_DEFAULT, "SOSStatusManager, updateSOSFlowState: %d", &v21, 8u);
  }

  v9 = [v5 copy];
  [v9 setFlowState:state];
  if ([v9 isFlowActive] && !-[SOSStatusManager hasActiveSOSCall](self, "hasActiveSOSCall"))
  {
    [(SOSStatusManager *)self startCurrentDeviceClearStatusTimer];
  }

  else
  {
    [(SOSStatusManager *)self cancelCurrentDeviceClearStatusTimer];
  }

  resolution = [v9 resolution];
  if (!resolution)
  {
    if (state != 6)
    {
      if (state != 4)
      {
        if (state == 3 || (v11 = [v5 isFlowActive], state == 10) && (v11 & 1) != 0)
        {
          v12 = 2;
LABEL_19:
          [v9 setResolution:v12];
          date = [MEMORY[0x277CBEAA8] date];
          [v9 setTimeOfResolution:date];

LABEL_20:
          resolution = [v9 resolution];
          if (resolution == 3)
          {
            resolution = [(SOSStatusManager *)self _reportSOSEvent:v9 callDuration:0];
          }

          goto LABEL_22;
        }

        if (state)
        {
          goto LABEL_20;
        }
      }

      v12 = 1;
      goto LABEL_19;
    }

    v12 = 3;
    goto LABEL_19;
  }

LABEL_22:
  v14 = sos_default_log(resolution);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138412290;
    v22 = v9;
    _os_log_impl(&dword_264323000, v14, OS_LOG_TYPE_DEFAULT, "SOSStatusManager, updating currentDeviceSOSStatus to %@", &v21, 0xCu);
  }

  [SOSUtilities setCurrentDeviceSOSStatus:v9];
  if ([v9 isFlowActive] && !-[SOSStatusManager inSOSFlowOnCurrentDevice](self, "inSOSFlowOnCurrentDevice"))
  {
    [(SOSStatusManager *)self flowStarted];
  }

  else if (([v9 isFlowActive] & 1) == 0 && -[SOSStatusManager inSOSFlowOnCurrentDevice](self, "inSOSFlowOnCurrentDevice"))
  {
    [(SOSStatusManager *)self flowEnded];
  }

  v15 = +[SOSCoordinator sharedInstance];
  v16 = +[SOSUtilities currentDeviceSOSStatus];
  [v15 syncProgressionWithPairedDevice:3 sosStatus:v16];

  v17 = +[SOSEngine sharedInstance];
  v18 = +[SOSUtilities currentDeviceSOSStatus];
  [v17 broadcastUpdatedSOSStatus:v18];

  if ([v9 trigger] == 7 && objc_msgSend(v5, "isFlowActiveAndNotResting") && (objc_msgSend(v9, "isFlowActiveAndNotResting") & 1) == 0)
  {
    v19 = +[SOSEngine sharedInstance];
    v20 = +[SOSUtilities currentDeviceSOSStatus];
    [v19 handleNotifyThirdPartyClientsWithSOSStatus:v20];
  }
}

- (void)handleSOSCallStatusChange:(id)change
{
  changeCopy = change;
  hasActiveSOSCall = [(SOSStatusManager *)self hasActiveSOSCall];
  if (!changeCopy || (hasActiveSOSCall & 1) != 0)
  {
    hasActiveSOSCall2 = [(SOSStatusManager *)self hasActiveSOSCall];
    if (!changeCopy && hasActiveSOSCall2)
    {
      v8 = +[SOSUtilities currentDeviceSOSStatus];
      activeSOSCall = [(SOSStatusManager *)self activeSOSCall];
      [activeSOSCall callDuration];
      [(SOSStatusManager *)self _reportSOSEvent:v8 callDuration:v10];

      v12 = sos_default_log(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&dword_264323000, v12, OS_LOG_TYPE_DEFAULT, "SOSStatusManager,SOS call ended", v13, 2u);
      }

      [(SOSStatusManager *)self setHasActiveSOSCall:0];
      [(SOSStatusManager *)self startCurrentDeviceClearStatusTimer];
      [(SOSStatusManager *)self startPairedDeviceClearStatusTimer];
    }
  }

  else
  {
    v6 = sos_default_log(hasActiveSOSCall);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_264323000, v6, OS_LOG_TYPE_DEFAULT, "SOSStatusManager,SOS call started", buf, 2u);
    }

    [(SOSStatusManager *)self setHasActiveSOSCall:1];
    [(SOSStatusManager *)self cancelCurrentDeviceClearStatusTimer];
    [(SOSStatusManager *)self cancelPairedDeviceClearStatusTimer];
  }

  [(SOSStatusManager *)self setActiveSOSCall:changeCopy];
}

- (void)checkSOSStatusOnLaunch
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = +[SOSUtilities pairedDeviceSOSStatus];
  v4 = v3;
  if (v3 && (v3 = [v3 isFlowActive], v3))
  {
    v5 = sos_default_log(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = v4;
      _os_log_impl(&dword_264323000, v5, OS_LOG_TYPE_DEFAULT, "SOSStatusManager,found active paired device flow on launch: %@", &v17, 0xCu);
    }

    [(SOSStatusManager *)self updatePairedDeviceSOSStatus:v4];
  }

  else
  {
    v6 = sos_default_log(v3);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&dword_264323000, v6, OS_LOG_TYPE_DEFAULT, "SOSStatusManager,paired device status not active on launch", &v17, 2u);
    }
  }

  v7 = +[SOSUtilities currentDeviceSOSStatus];
  v8 = v7;
  if (!v7)
  {
    v11 = sos_default_log(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&dword_264323000, v11, OS_LOG_TYPE_DEFAULT, "SOSStatusManager,current device status was nil on launch", &v17, 2u);
    }

    goto LABEL_16;
  }

  shouldRetriggerSOS = [v7 shouldRetriggerSOS];
  if (shouldRetriggerSOS)
  {
    v10 = sos_default_log(shouldRetriggerSOS);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = v8;
      _os_log_impl(&dword_264323000, v10, OS_LOG_TYPE_DEFAULT, "SOSStatusManager,retriggering unresolved SOS event on launch: %@", &v17, 0xCu);
    }

    v11 = +[SOSEngine sharedInstance];
    uuid = [v8 uuid];
    -[NSObject retriggerSOSWithUUID:trigger:](v11, "retriggerSOSWithUUID:trigger:", uuid, [v8 trigger]);

LABEL_16:
    goto LABEL_17;
  }

  isFlowActive = [v8 isFlowActive];
  v14 = isFlowActive;
  v15 = sos_default_log(isFlowActive);
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
  if (v14)
  {
    if (v16)
    {
      v17 = 138412290;
      v18 = v8;
      _os_log_impl(&dword_264323000, v15, OS_LOG_TYPE_DEFAULT, "SOSStatusManager,found active current device flow on launch: %@", &v17, 0xCu);
    }

    -[SOSStatusManager updateSOSFlowState:](self, "updateSOSFlowState:", [v8 flowState]);
  }

  else
  {
    if (v16)
    {
      LOWORD(v17) = 0;
      _os_log_impl(&dword_264323000, v15, OS_LOG_TYPE_DEFAULT, "SOSStatusManager,current device status not active on launch", &v17, 2u);
    }
  }

LABEL_17:
}

- (void)handleLostStatusReporterConnection
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = +[SOSUtilities currentDeviceSOSStatus];
  v4 = v3;
  if (v3)
  {
    shouldRetriggerSOS = [v3 shouldRetriggerSOS];
    v6 = shouldRetriggerSOS;
    v7 = sos_default_log(shouldRetriggerSOS);
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (v8)
      {
        *buf = 138412290;
        v14 = v4;
        _os_log_impl(&dword_264323000, v7, OS_LOG_TYPE_DEFAULT, "SOSStatusManager,retriggering unresolved SOS event due to lost status reporter connection: %@", buf, 0xCu);
      }

      v9 = dispatch_time(0, 1000000000);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __54__SOSStatusManager_handleLostStatusReporterConnection__block_invoke;
      block[3] = &unk_279B532A0;
      v12 = v4;
      dispatch_after(v9, MEMORY[0x277D85CD0], block);
    }

    else
    {
      if (v8)
      {
        *buf = 138412290;
        v14 = v4;
        _os_log_impl(&dword_264323000, v7, OS_LOG_TYPE_DEFAULT, "SOSStatusManager,no need to retrigger SOS event due to lost status reporter connection: %@", buf, 0xCu);
      }

      [(SOSStatusManager *)self updateSOSFlowState:0];
    }
  }

  else
  {
    v10 = sos_default_log(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_264323000, v10, OS_LOG_TYPE_DEFAULT, "SOSStatusManager,nil status on lost status reporter connection", buf, 2u);
    }
  }
}

void __54__SOSStatusManager_handleLostStatusReporterConnection__block_invoke(uint64_t a1)
{
  v3 = +[SOSEngine sharedInstance];
  v2 = [*(a1 + 32) uuid];
  [v3 retriggerSOSWithUUID:v2 trigger:{objc_msgSend(*(a1 + 32), "trigger")}];
}

- (void)startCurrentDeviceClearStatusTimer
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__SOSStatusManager_startCurrentDeviceClearStatusTimer__block_invoke;
  block[3] = &unk_279B532A0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)_startCurrentDeviceClearStatusTimer
{
  v13 = *MEMORY[0x277D85DE8];
  [(SOSStatusManager *)self _cancelCurrentDeviceClearStatusTimer];
  v3 = +[SOSUtilities currentDeviceSOSStatus];
  v4 = v3;
  if (v3 && (v3 = [v3 isFlowActive], v3) && (v3 = -[SOSStatusManager hasActiveSOSCall](self, "hasActiveSOSCall"), !v3))
  {
    v6 = sos_default_log(v3);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v12 = 0x4044000000000000;
      _os_log_impl(&dword_264323000, v6, OS_LOG_TYPE_DEFAULT, "SOSStatusManager,starting current device clear status timer: %.1f s", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    v7 = MEMORY[0x277CBEBB8];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __55__SOSStatusManager__startCurrentDeviceClearStatusTimer__block_invoke;
    v9[3] = &unk_279B53798;
    objc_copyWeak(&v10, buf);
    v8 = [v7 scheduledTimerWithTimeInterval:0 repeats:v9 block:40.0];
    [(SOSStatusManager *)self setCurrentDeviceStatusClearTimer:v8];

    objc_destroyWeak(&v10);
    objc_destroyWeak(buf);
  }

  else
  {
    v5 = sos_default_log(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_264323000, v5, OS_LOG_TYPE_DEFAULT, "SOSStatusManager,not starting current device clear status timer", buf, 2u);
    }
  }
}

void __55__SOSStatusManager__startCurrentDeviceClearStatusTimer__block_invoke(uint64_t a1)
{
  v2 = sos_default_log(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __55__SOSStatusManager__startCurrentDeviceClearStatusTimer__block_invoke_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateSOSFlowState:0];
}

- (void)cancelCurrentDeviceClearStatusTimer
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__SOSStatusManager_cancelCurrentDeviceClearStatusTimer__block_invoke;
  block[3] = &unk_279B532A0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)_cancelCurrentDeviceClearStatusTimer
{
  currentDeviceStatusClearTimer = [(SOSStatusManager *)self currentDeviceStatusClearTimer];

  if (currentDeviceStatusClearTimer)
  {
    v5 = sos_default_log(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_264323000, v5, OS_LOG_TYPE_DEFAULT, "SOSStatusManager,canceling current device clear status timer", v7, 2u);
    }

    currentDeviceStatusClearTimer2 = [(SOSStatusManager *)self currentDeviceStatusClearTimer];
    [currentDeviceStatusClearTimer2 invalidate];

    [(SOSStatusManager *)self setCurrentDeviceStatusClearTimer:0];
  }
}

- (void)flowStarted
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = +[SOSUtilities currentDeviceSOSStatus];
  v4 = +[SOSUtilities pairedDeviceSOSStatus];
  if (([v3 isFlowActive] & 1) != 0 || objc_msgSend(v4, "isFlowActive"))
  {
    if (![(SOSStatusManager *)self inSOSFlow])
    {
      v5 = sos_default_log([(SOSStatusManager *)self setInSOSFlow:1]);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&dword_264323000, v5, OS_LOG_TYPE_DEFAULT, "SOSStatusManager,flowStartedOnEitherDevice", v9, 2u);
      }

      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      v10 = @"SOSHasActiveTriggerValueKey";
      v11[0] = MEMORY[0x277CBEC38];
      v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
      [defaultCenter postNotificationName:@"SOSHasActiveTriggerChangedNotification" object:0 userInfo:v7];

      [MEMORY[0x277D7A8D8] requestPhraseSpotterBypassing:1 timeout:20.0];
      -[SOSStatusManager startAudioSessionForFlowOnCurrentDevice:](self, "startAudioSessionForFlowOnCurrentDevice:", [v3 isFlowActive]);
    }

    if ([v3 isFlowActive] && !-[SOSStatusManager inSOSFlowOnCurrentDevice](self, "inSOSFlowOnCurrentDevice"))
    {
      v8 = sos_default_log([(SOSStatusManager *)self setInSOSFlowOnCurrentDevice:1]);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&dword_264323000, v8, OS_LOG_TYPE_DEFAULT, "SOSStatusManager,flowStartedOnCurrentDevice", v9, 2u);
      }
    }
  }
}

- (void)flowEnded
{
  v4 = +[SOSUtilities currentDeviceSOSStatus];
  v3 = +[SOSUtilities pairedDeviceSOSStatus];
  if (([v4 isFlowActive] & 1) == 0)
  {
    [(SOSStatusManager *)self flowEndedOnCurrentDevice];
  }

  if (([v4 isFlowActive] & 1) == 0 && (objc_msgSend(v3, "isFlowActive") & 1) == 0)
  {
    [(SOSStatusManager *)self flowEndedOnBothDevices];
  }
}

- (void)flowEndedOnBothDevices
{
  v8[1] = *MEMORY[0x277D85DE8];
  if ([(SOSStatusManager *)self inSOSFlow])
  {
    v3 = sos_default_log([(SOSStatusManager *)self setInSOSFlow:0]);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_264323000, v3, OS_LOG_TYPE_DEFAULT, "SOSStatusManager,flowEndedOnBothDevices", v6, 2u);
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v7 = @"SOSHasActiveTriggerValueKey";
    v8[0] = MEMORY[0x277CBEC28];
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    [defaultCenter postNotificationName:@"SOSHasActiveTriggerChangedNotification" object:0 userInfo:v5];

    [MEMORY[0x277D7A8D8] requestPhraseSpotterBypassing:0 timeout:0.0];
    [(SOSStatusManager *)self endAudioSession];
  }
}

- (void)flowEndedOnCurrentDevice
{
  if ([(SOSStatusManager *)self inSOSFlowOnCurrentDevice])
  {
    v3 = sos_default_log([(SOSStatusManager *)self setInSOSFlowOnCurrentDevice:0]);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_264323000, v3, OS_LOG_TYPE_DEFAULT, "SOSStatusManager,flowEndedOnCurrentDevice", v4, 2u);
    }
  }
}

- (void)startAudioSessionForFlowOnCurrentDevice:(BOOL)device
{
  mEMORY[0x277CB83F8] = [MEMORY[0x277CB83F8] sharedInstance];
  v4 = *MEMORY[0x277CB8030];
  v11 = 0;
  [mEMORY[0x277CB83F8] setCategory:v4 error:&v11];
  v5 = v11;
  if (v5)
  {
    v6 = v5;
    v7 = sos_default_log(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SOSStatusManager startAudioSessionForFlowOnCurrentDevice:];
    }

LABEL_7:

    goto LABEL_8;
  }

  v10 = 0;
  [mEMORY[0x277CB83F8] setActive:1 error:&v10];
  v6 = v10;
  v8 = sos_default_log(v6);
  v7 = v8;
  if (v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [SOSStatusManager startAudioSessionForFlowOnCurrentDevice:];
    }

    goto LABEL_7;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 0;
    _os_log_impl(&dword_264323000, v7, OS_LOG_TYPE_DEFAULT, "SOSStatusManager,activated audio session", v9, 2u);
  }

  v6 = v7;
LABEL_8:
}

- (void)endAudioSession
{
  mEMORY[0x277CB83F8] = [MEMORY[0x277CB83F8] sharedInstance];
  v7 = 0;
  [mEMORY[0x277CB83F8] setActive:0 withOptions:1 error:&v7];
  v3 = v7;
  v4 = sos_default_log(v3);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [SOSStatusManager endAudioSession];
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_264323000, v5, OS_LOG_TYPE_DEFAULT, "SOSStatusManager,deactivated audio session", v6, 2u);
  }
}

- (void)_reportSOSEvent:(id)event callDuration:(int64_t)duration
{
  eventCopy = event;
  v7 = [(SOSStatusManager *)self mostRecentTriggerSource]== 1;
  coreAnalyticsReporter = [(SOSStatusManager *)self coreAnalyticsReporter];
  [coreAnalyticsReporter reportSOSEvent:eventCopy callDuration:duration isHandoffTrigger:v7 onWristState:0];
}

- (void)pairedDeviceSOSStatusDidUpdate:(id)update progression:(int64_t)progression shouldHandleThirdParty:(BOOL)party
{
  partyCopy = party;
  v16 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  v9 = sos_default_log(updateCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v15[0]) = 0;
    _os_log_impl(&dword_264323000, v9, OS_LOG_TYPE_DEFAULT, "SOSStatusManager, pairedDeviceSOSStatusDidUpdate", v15, 2u);
  }

  if (!updateCopy)
  {
    v14 = sos_default_log(v10);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [SOSStatusManager pairedDeviceSOSStatusDidUpdate:progression:shouldHandleThirdParty:];
    }

LABEL_12:

    goto LABEL_17;
  }

  v11 = [updateCopy setIsPairedDeviceStatus:1];
  switch(progression)
  {
    case 3:
      [(SOSStatusManager *)self updatePairedDeviceSOSStatus:updateCopy];
      break;
    case 2:
      if (partyCopy)
      {
        if ([updateCopy trigger] != 7)
        {
          break;
        }

        v14 = +[SOSEngine sharedInstance];
        [v14 handleNotifyThirdPartyClientsWithSOSStatus:updateCopy];
      }

      else
      {
        v14 = sos_default_log(v11);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v15[0]) = 0;
          _os_log_impl(&dword_264323000, v14, OS_LOG_TYPE_DEFAULT, "SOSStatusManager, third party handoff message missing info, notify failed", v15, 2u);
        }
      }

      goto LABEL_12;
    case 1:
      v12 = sos_default_log(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        trigger = [updateCopy trigger];
        v15[0] = 67109120;
        v15[1] = trigger;
        _os_log_impl(&dword_264323000, v12, OS_LOG_TYPE_DEFAULT, "SOSStatusManager, received message with SOSProgressionSOSTriggered, trigger: %d", v15, 8u);
      }

      [(SOSStatusManager *)self sosTriggeredOnPairedDevice:updateCopy];
      break;
  }

LABEL_17:
}

- (void)sosTriggeredOnPairedDevice:(id)device
{
  v10 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v5 = deviceCopy;
  if (deviceCopy)
  {
    v6 = sos_default_log(deviceCopy);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&dword_264323000, v6, OS_LOG_TYPE_DEFAULT, "SOSStatusManager,sosTriggeredOnPairedDevice: %@", &v8, 0xCu);
    }

    [SOSUtilities setPairedDeviceSOSStatus:v5];
    [(SOSStatusManager *)self checkHandoffFallback];
    [(SOSStatusManager *)self flowStarted];
    v7 = +[SOSEngine sharedInstance];
    [v7 broadcastUpdatedSOSStatus:v5];

    [(SOSStatusManager *)self startPairedDeviceClearStatusTimer];
  }
}

- (void)updatePairedDeviceSOSStatus:(id)status
{
  v10 = *MEMORY[0x277D85DE8];
  statusCopy = status;
  v5 = statusCopy;
  if (statusCopy)
  {
    v6 = sos_default_log(statusCopy);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&dword_264323000, v6, OS_LOG_TYPE_DEFAULT, "SOSStatusManager,updatePairedDeviceSOSStatus: %@", &v8, 0xCu);
    }

    [SOSUtilities setPairedDeviceSOSStatus:v5];
    [(SOSStatusManager *)self checkHandoffFallback];
    if ([v5 isFlowActive] && !-[SOSStatusManager hasActiveSOSCall](self, "hasActiveSOSCall"))
    {
      [(SOSStatusManager *)self startPairedDeviceClearStatusTimer];
    }

    else
    {
      [(SOSStatusManager *)self cancelPairedDeviceClearStatusTimer];
    }

    if ([v5 isFlowActive] && !-[SOSStatusManager inSOSFlow](self, "inSOSFlow"))
    {
      [(SOSStatusManager *)self flowStarted];
    }

    else if (([v5 isFlowActive] & 1) == 0 && -[SOSStatusManager inSOSFlow](self, "inSOSFlow"))
    {
      [(SOSStatusManager *)self flowEnded];
    }

    v7 = +[SOSEngine sharedInstance];
    [v7 broadcastUpdatedSOSStatus:v5];
  }
}

- (void)startPairedDeviceClearStatusTimer
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__SOSStatusManager_startPairedDeviceClearStatusTimer__block_invoke;
  block[3] = &unk_279B532A0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)_startPairedDeviceClearStatusTimer
{
  v13 = *MEMORY[0x277D85DE8];
  [(SOSStatusManager *)self _cancelPairedDeviceClearStatusTimer];
  v3 = +[SOSUtilities pairedDeviceSOSStatus];
  v4 = v3;
  if (v3 && (v3 = [v3 isFlowActive], v3) && (v3 = -[SOSStatusManager hasActiveSOSCall](self, "hasActiveSOSCall"), !v3))
  {
    v6 = sos_default_log(v3);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v12 = 0x4044000000000000;
      _os_log_impl(&dword_264323000, v6, OS_LOG_TYPE_DEFAULT, "SOSStatusManager,starting paired device clear status timer: %.1f s", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    v7 = MEMORY[0x277CBEBB8];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __54__SOSStatusManager__startPairedDeviceClearStatusTimer__block_invoke;
    v9[3] = &unk_279B53798;
    objc_copyWeak(&v10, buf);
    v8 = [v7 scheduledTimerWithTimeInterval:0 repeats:v9 block:40.0];
    [(SOSStatusManager *)self setPairedDeviceStatusClearTimer:v8];

    objc_destroyWeak(&v10);
    objc_destroyWeak(buf);
  }

  else
  {
    v5 = sos_default_log(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_264323000, v5, OS_LOG_TYPE_DEFAULT, "SOSStatusManager,not starting paired device clear status timer", buf, 2u);
    }
  }
}

void __54__SOSStatusManager__startPairedDeviceClearStatusTimer__block_invoke(uint64_t a1)
{
  v2 = sos_default_log(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __54__SOSStatusManager__startPairedDeviceClearStatusTimer__block_invoke_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = +[SOSUtilities pairedDeviceSOSStatus];
  [v4 setFlowState:0];
  [WeakRetained updatePairedDeviceSOSStatus:v4];
}

- (void)cancelPairedDeviceClearStatusTimer
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__SOSStatusManager_cancelPairedDeviceClearStatusTimer__block_invoke;
  block[3] = &unk_279B532A0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)_cancelPairedDeviceClearStatusTimer
{
  pairedDeviceStatusClearTimer = [(SOSStatusManager *)self pairedDeviceStatusClearTimer];

  if (pairedDeviceStatusClearTimer)
  {
    v5 = sos_default_log(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_264323000, v5, OS_LOG_TYPE_DEFAULT, "SOSStatusManager,canceling paired device clear status timer", v7, 2u);
    }

    pairedDeviceStatusClearTimer2 = [(SOSStatusManager *)self pairedDeviceStatusClearTimer];
    [pairedDeviceStatusClearTimer2 invalidate];

    [(SOSStatusManager *)self setPairedDeviceStatusClearTimer:0];
  }
}

- (void)sosTriggerPushedToPairedDeviceWithUUID:(id)d trigger:(int64_t)trigger
{
  if (d)
  {
    [(SOSStatusManager *)self setHandoffTriggerUUID:?];
    [(SOSStatusManager *)self setHandoffTrigger:trigger];
    [(SOSStatusManager *)self startHandoffFallbackTimer];

    [(SOSStatusManager *)self checkHandoffFallback];
  }

  else
  {
    v6 = sos_default_log(self);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SOSStatusManager sosTriggerPushedToPairedDeviceWithUUID:trigger:];
    }
  }
}

- (void)startHandoffFallbackTimer
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__SOSStatusManager_startHandoffFallbackTimer__block_invoke;
  block[3] = &unk_279B532A0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)_startHandoffFallbackTimer
{
  v14 = *MEMORY[0x277D85DE8];
  [(SOSStatusManager *)self _cancelHandoffFallbackTimer];
  handoffTriggerUUID = [(SOSStatusManager *)self handoffTriggerUUID];
  v4 = handoffTriggerUUID == 0;

  v6 = sos_default_log(v5);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&dword_264323000, v6, OS_LOG_TYPE_DEFAULT, "SOSStatusManager,not starting handoff fallback timer", buf, 2u);
    }
  }

  else
  {
    if (v7)
    {
      *buf = 134217984;
      v13 = 0x4024000000000000;
      _os_log_impl(&dword_264323000, v6, OS_LOG_TYPE_DEFAULT, "SOSStatusManager,starting handoff fallback timer: %.1f s", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    v8 = MEMORY[0x277CBEBB8];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __46__SOSStatusManager__startHandoffFallbackTimer__block_invoke;
    v10[3] = &unk_279B53798;
    objc_copyWeak(&v11, buf);
    v9 = [v8 scheduledTimerWithTimeInterval:0 repeats:v10 block:10.0];
    [(SOSStatusManager *)self setHandoffFallbackTimer:v9];

    objc_destroyWeak(&v11);
    objc_destroyWeak(buf);
  }
}

void __46__SOSStatusManager__startHandoffFallbackTimer__block_invoke(uint64_t a1)
{
  v2 = sos_default_log(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __46__SOSStatusManager__startHandoffFallbackTimer__block_invoke_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained triggerHandoffFallback];
}

- (void)cancelHandoffFallbackTimer
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__SOSStatusManager_cancelHandoffFallbackTimer__block_invoke;
  block[3] = &unk_279B532A0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)_cancelHandoffFallbackTimer
{
  handoffFallbackTimer = [(SOSStatusManager *)self handoffFallbackTimer];

  if (handoffFallbackTimer)
  {
    v5 = sos_default_log(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_264323000, v5, OS_LOG_TYPE_DEFAULT, "SOSStatusManager,canceling handoff fallback timer", v7, 2u);
    }

    handoffFallbackTimer2 = [(SOSStatusManager *)self handoffFallbackTimer];
    [handoffFallbackTimer2 invalidate];

    [(SOSStatusManager *)self setHandoffFallbackTimer:0];
  }
}

- (void)triggerHandoffFallback
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)checkHandoffFallback
{
  handoffTriggerUUID = [(SOSStatusManager *)self handoffTriggerUUID];

  if (handoffTriggerUUID)
  {
    v5 = +[SOSUtilities pairedDeviceSOSStatus];
    v6 = v5;
    if (!v5 || ([v5 uuid], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "UUIDString"), v8 = objc_claimAutoreleasedReturnValue(), -[SOSStatusManager handoffTriggerUUID](self, "handoffTriggerUUID"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "UUIDString"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v8, "isEqualToString:", v10), v10, v9, v8, v7, !v11))
    {
      v16 = sos_default_log(v5);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_264323000, v16, OS_LOG_TYPE_DEFAULT, "SOSStatusManager,checkHandoffFallback,handoff flow not yet active", buf, 2u);
      }

      goto LABEL_25;
    }

    isFlowActive = [v6 isFlowActive];
    if (isFlowActive)
    {
      v13 = sos_default_log(isFlowActive);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_264323000, v13, OS_LOG_TYPE_DEFAULT, "SOSStatusManager,checkHandoffFallback,handoff flow is active", buf, 2u);
      }

      [(SOSStatusManager *)self cancelHandoffFallbackTimer];
      isPreCall = [v6 isPreCall];
      if (isPreCall)
      {
        goto LABEL_25;
      }

      v15 = sos_default_log(isPreCall);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_264323000, v15, OS_LOG_TYPE_DEFAULT, "SOSStatusManager,checkHandoffFallback,handoff flow progressed to call", buf, 2u);
      }
    }

    else
    {
      flowState = [v6 flowState];
      v19 = sos_default_log(flowState);
      v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
      if (!flowState)
      {
        if (v20)
        {
          *buf = 0;
          _os_log_impl(&dword_264323000, v19, OS_LOG_TYPE_DEFAULT, "SOSStatusManager,checkHandoffFallback,handoff flow not running", buf, 2u);
        }

        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __40__SOSStatusManager_checkHandoffFallback__block_invoke;
        block[3] = &unk_279B532A0;
        block[4] = self;
        dispatch_async(MEMORY[0x277D85CD0], block);
        goto LABEL_25;
      }

      if (v20)
      {
        *buf = 0;
        _os_log_impl(&dword_264323000, v19, OS_LOG_TYPE_DEFAULT, "SOSStatusManager,checkHandoffFallback,handoff flow ended", buf, 2u);
      }

      [(SOSStatusManager *)self cancelHandoffFallbackTimer];
    }

    [(SOSStatusManager *)self clearHandoffFallbackState];
LABEL_25:

    return;
  }

  v17 = sos_default_log(v4);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_264323000, v17, OS_LOG_TYPE_DEFAULT, "SOSStatusManager,checkHandoffFallback,no handoff trigger UUID", buf, 2u);
  }

  [(SOSStatusManager *)self cancelHandoffFallbackTimer];
}

void __40__SOSStatusManager_checkHandoffFallback__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) handoffFallbackTimer];

  if (!v2)
  {
    v3 = *(a1 + 32);

    [v3 _startHandoffFallbackTimer];
  }
}

- (void)clearHandoffFallbackState
{
  [(SOSStatusManager *)self setHandoffTriggerUUID:0];

  [(SOSStatusManager *)self setHandoffTrigger:0];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v25 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  v6 = sos_default_log(connectionCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_264323000, v6, OS_LOG_TYPE_DEFAULT, "SOSStatusManager, shouldAcceptNewConnection", buf, 2u);
  }

  v7 = [connectionCopy valueForEntitlement:@"com.apple.sos.trigger"];
  bOOLValue = [v7 BOOLValue];

  if ((bOOLValue & 1) == 0)
  {
    v12 = sos_default_log(v9);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *v24 = connectionCopy;
      *&v24[8] = 2112;
      *&v24[10] = @"com.apple.sos.trigger";
      v13 = "[WARN] SOSStatusManager,New connection %@ missing entitlement: %@";
      v14 = v12;
      v15 = 22;
      goto LABEL_9;
    }

LABEL_10:

    v16 = 0;
    goto LABEL_11;
  }

  clientConnection = [(SOSStatusManager *)self clientConnection];

  if (clientConnection)
  {
    v12 = sos_default_log(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *v24 = connectionCopy;
      v13 = "[WARN] SOSStatusManager,Cannot accept new connection %@ because of existing client connection";
      v14 = v12;
      v15 = 12;
LABEL_9:
      _os_log_impl(&dword_264323000, v14, OS_LOG_TYPE_DEFAULT, v13, buf, v15);
      goto LABEL_10;
    }

    goto LABEL_10;
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __55__SOSStatusManager_listener_shouldAcceptNewConnection___block_invoke;
  v21[3] = &unk_279B53BA0;
  v21[4] = self;
  v18 = connectionCopy;
  v22 = v18;
  dispatch_async(MEMORY[0x277D85CD0], v21);
  v20 = sos_default_log(v19);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    *v24 = 1;
    *&v24[4] = 2112;
    *&v24[6] = v18;
    _os_log_impl(&dword_264323000, v20, OS_LOG_TYPE_DEFAULT, "SOSStatusManager,shouldAcceptNewConnection: %d for connection: %@", buf, 0x12u);
  }

  v16 = 1;
LABEL_11:

  return v16;
}

void __55__SOSStatusManager_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setClientConnection:*(a1 + 40)];
  v2 = SOSStatusManagerClientInterface();
  [*(a1 + 40) setRemoteObjectInterface:v2];

  v3 = SOSStatusManagerServerInterface();
  [*(a1 + 40) setExportedInterface:v3];

  [*(a1 + 40) setExportedObject:*(a1 + 32)];
  objc_initWeak(&location, *(a1 + 40));
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__SOSStatusManager_listener_shouldAcceptNewConnection___block_invoke_2;
  v8[3] = &unk_279B53930;
  objc_copyWeak(&v9, &location);
  [*(a1 + 40) setInterruptionHandler:v8];
  objc_initWeak(&from, *(a1 + 32));
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __55__SOSStatusManager_listener_shouldAcceptNewConnection___block_invoke_310;
  v4[3] = &unk_279B53B78;
  objc_copyWeak(&v5, &location);
  objc_copyWeak(&v6, &from);
  [*(a1 + 40) setInvalidationHandler:v4];
  [*(a1 + 40) resume];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&from);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __55__SOSStatusManager_listener_shouldAcceptNewConnection___block_invoke_2(uint64_t a1)
{
  v2 = sos_default_log(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_264323000, v2, OS_LOG_TYPE_DEFAULT, "SOSStatusManager,SOS client connection interrupted", buf, 2u);
  }

  objc_copyWeak(&to, (a1 + 32));
  v3 = objc_loadWeakRetained(&to);
  [v3 invalidate];

  objc_destroyWeak(&to);
}

void __55__SOSStatusManager_listener_shouldAcceptNewConnection___block_invoke_310(uint64_t a1)
{
  objc_copyWeak(&to, (a1 + 32));
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = objc_loadWeakRetained(&to);

  if (v3)
  {
    v4 = [WeakRetained setClientConnection:0];
  }

  v5 = sos_default_log(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_264323000, v5, OS_LOG_TYPE_DEFAULT, "SOSStatusManager,SOS client connection invalidated", v7, 2u);
  }

  v6 = +[SOSEngine sharedInstance];
  [v6 updateCurrentSOSInitiationState:0];

  [WeakRetained handleLostStatusReporterConnection];
  objc_destroyWeak(&to);
}

void __55__SOSStatusManager__startCurrentDeviceClearStatusTimer__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)pairedDeviceSOSStatusDidUpdate:progression:shouldHandleThirdParty:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __54__SOSStatusManager__startPairedDeviceClearStatusTimer__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)sosTriggerPushedToPairedDeviceWithUUID:trigger:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __46__SOSStatusManager__startHandoffFallbackTimer__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end