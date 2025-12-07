@interface PowerUIDemoCECManager
+ (id)log;
+ (id)manager;
- (BOOL)evaluateEngagement;
- (BOOL)isEnabled;
- (BOOL)isWithinEngagedSession;
- (BOOL)shouldEngageDemoCEC;
- (BOOL)shouldReevaluateEngagement;
- (PowerUIDemoCECManager)init;
- (PowerUIDemoCECManager)initWithContextStore:(id)store;
- (double)systemLoadEmissionSavings:(int64_t)savings;
- (double)totalWallEnergyOverSession;
- (id)chargeHistoryAnalytics:(BOOL)analytics;
- (id)dateDictionaryFromDefaults:(id)defaults;
- (id)sessionEndCECAnalytics;
- (void)checkPluggedInState;
- (void)clearAnalytics;
- (void)evaluateShouldChargeNow;
- (void)handleCallback:(id)callback;
- (void)handleDisengagement;
- (void)handleEmergencyCharge;
- (void)handleEngagement;
- (void)handleIsEnabledChange;
- (void)handlePauseChargingAboveMaxSOC:(int64_t)c;
- (void)handlePowerUICECStateChange:(unint64_t)change withHandler:(id)handler;
- (void)loadState;
- (void)loadStateFromDefaults;
- (void)monitorBatteryNotifications;
- (void)monitorBatteryStateOfChargeChange;
- (void)monitorDemoCecIsEnabledChange;
- (void)monitorPluggedInChange;
- (void)recordAnalytics;
- (void)recordChargingStateChange:(BOOL)change atBatteryLevel:(int64_t)level duringCleanInterval:(BOOL)interval;
- (void)recordStartWallEnergyAccum;
- (void)recordSystemLoadAccum;
- (void)registerAnalyticsTimer:(id)timer afterTime:(double)time withInterval:(double)interval;
- (void)registerCleanSegmentTimer;
- (void)registerCleanSegmentTimer:(id)timer afterTime:(double)time withInterval:(double)interval;
- (void)registerReevaluateEngagementTimer:(id)timer afterTime:(double)time withInterval:(double)interval;
- (void)registerUnpluggedTimer:(id)timer afterTime:(double)time withInterval:(double)interval;
- (void)resetState;
- (void)setEnabledState:(BOOL)state;
- (void)startSessionTimers;
- (void)startSystemLoadAccumTimer;
- (void)unregisterTimer:(id)timer;
- (void)updatePhaseFrom:(unint64_t)from to:(unint64_t)to;
@end

@implementation PowerUIDemoCECManager

+ (id)log
{
  v2 = log_log_0;
  if (!log_log_0)
  {
    v3 = os_log_create("com.apple.powerui.democec", "");
    v4 = log_log_0;
    log_log_0 = v3;

    v2 = log_log_0;
  }

  return v2;
}

+ (id)manager
{
  if (+[PowerUICECUtilities isDemoCECSupported])
  {
    if (manager_onceToken != -1)
    {
      +[PowerUIDemoCECManager manager];
    }

    v2 = manager_manager;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void __32__PowerUIDemoCECManager_manager__block_invoke()
{
  v0 = [PowerUIDemoCECManager alloc];
  v3 = [MEMORY[0x277CFE318] userContext];
  v1 = [(PowerUIDemoCECManager *)v0 initWithContextStore:v3];
  v2 = manager_manager;
  manager_manager = v1;
}

- (PowerUIDemoCECManager)init
{
  userContext = [MEMORY[0x277CFE318] userContext];
  v4 = [(PowerUIDemoCECManager *)self initWithContextStore:userContext];

  return v4;
}

- (PowerUIDemoCECManager)initWithContextStore:(id)store
{
  v55[4] = *MEMORY[0x277D85DE8];
  storeCopy = store;
  v53.receiver = self;
  v53.super_class = PowerUIDemoCECManager;
  v6 = [(PowerUIDemoCECManager *)&v53 init];
  if (v6)
  {
    v7 = [objc_opt_class() log];
    v8 = *(v6 + 3);
    *(v6 + 3) = v7;

    *(v6 + 10) = +[PowerUISmartChargeUtilities isInternalBuild];
    v54[0] = &unk_282D4E2A8;
    v54[1] = &unk_282D4E2C0;
    v55[0] = @"Not Evaluated";
    v55[1] = @"Evaluated and Not Engaged";
    v54[2] = &unk_282D4E2D8;
    v54[3] = &unk_282D4E2F0;
    v55[2] = @"Engaged";
    v55[3] = @"Emergency Charge";
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v55 forKeys:v54 count:4];
    v10 = *(v6 + 5);
    *(v6 + 5) = v9;

    v11 = +[PowerUIChargingController sharedInstance];
    v12 = *(v6 + 9);
    *(v6 + 9) = v11;

    v13 = +[PowerUICECGridDataManager sharedInstance];
    v14 = *(v6 + 20);
    *(v6 + 20) = v13;

    objc_storeStrong(v6 + 4, store);
    v15 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.powerui.democec"];
    v16 = *(v6 + 8);
    *(v6 + 8) = v15;

    v17 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v18 = dispatch_queue_create("com.apple.powerui.democecmanager.queue", v17);
    v19 = *(v6 + 6);
    *(v6 + 6) = v18;

    v20 = MEMORY[0x277D85D38];
    v21 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(v6 + 6));
    v22 = *(v6 + 10);
    *(v6 + 10) = v21;

    v23 = *(v6 + 10);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __46__PowerUIDemoCECManager_initWithContextStore___block_invoke;
    handler[3] = &unk_2782D3EA8;
    v24 = v6;
    v52 = v24;
    dispatch_source_set_event_handler(v23, handler);
    v25 = dispatch_source_create(v20, 0, 0, *(v6 + 6));
    v26 = v24[11];
    v24[11] = v25;

    v27 = v24[11];
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __46__PowerUIDemoCECManager_initWithContextStore___block_invoke_2;
    v49[3] = &unk_2782D3EA8;
    v28 = v24;
    v50 = v28;
    dispatch_source_set_event_handler(v27, v49);
    v29 = dispatch_source_create(v20, 0, 0, *(v6 + 6));
    v30 = v28[12];
    v28[12] = v29;

    v31 = v28[12];
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __46__PowerUIDemoCECManager_initWithContextStore___block_invoke_3;
    v47[3] = &unk_2782D3EA8;
    v32 = v28;
    v48 = v32;
    dispatch_source_set_event_handler(v31, v47);
    v33 = dispatch_source_create(v20, 0, 0, *(v6 + 6));
    v34 = v32[13];
    v32[13] = v33;

    v35 = v32[13];
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __46__PowerUIDemoCECManager_initWithContextStore___block_invoke_4;
    v45[3] = &unk_2782D3EA8;
    v36 = v32;
    v46 = v36;
    dispatch_source_set_event_handler(v35, v45);
    [v36 loadState];
    [v36 setEnabledState:{objc_msgSend(v36, "isEnabled")}];
    if (v36[2] == 20)
    {
      [v36 startSessionTimers];
    }

    [v36 monitorBatteryNotifications];
    v37 = *(v6 + 6);
    v40 = MEMORY[0x277D85DD0];
    v41 = 3221225472;
    v42 = __46__PowerUIDemoCECManager_initWithContextStore___block_invoke_5;
    v43 = &unk_2782D3EA8;
    v38 = v36;
    v44 = v38;
    dispatch_async(v37, &v40);
    [v38 monitorDemoCecIsEnabledChange];
  }

  return v6;
}

- (void)resetState
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Resetting state", v8, 2u);
  }

  self->_isChargingPaused = 0;
  [(PowerUIDemoCECManager *)self updatePhaseFrom:self->_currentPhase to:0];
  [(NSUserDefaults *)self->_defaults removeObjectForKey:@"lastPauseChargingCheckDate"];
  [(NSUserDefaults *)self->_defaults removeObjectForKey:@"lastEngagementCheckDate"];
  [(NSUserDefaults *)self->_defaults removeObjectForKey:@"disabled"];
  [(NSUserDefaults *)self->_defaults removeObjectForKey:@"currentState"];
  [(NSUserDefaults *)self->_defaults removeObjectForKey:@"deviceWasRestarted"];
  [(PowerUICECGridDataManager *)self->_gridDataManager resetState];
  [(NSUserDefaults *)self->_defaults removeObjectForKey:@"pluggedInDateInterval"];
  [(NSUserDefaults *)self->_defaults removeObjectForKey:@"pluggedInBatteryLevel"];
  [(NSUserDefaults *)self->_defaults removeObjectForKey:@"unpluggedDateInterval"];
  [(NSUserDefaults *)self->_defaults removeObjectForKey:@"requeryForecastTries"];
  pauseChargingCheckDate = self->_pauseChargingCheckDate;
  self->_pauseChargingCheckDate = 0;

  lastPluggedInDate = self->_lastPluggedInDate;
  self->_lastPluggedInDate = 0;

  lastUnpluggedDate = self->_lastUnpluggedDate;
  self->_lastUnpluggedDate = 0;

  lastEngagementCheckDate = self->_lastEngagementCheckDate;
  self->_lastEngagementCheckDate = 0;

  *&self->_pluggedInBatteryLevel = xmmword_21B8483C0;
  [(PowerUIDemoCECManager *)self clearAnalytics];
  [(PowerUIDemoCECManager *)self unregisterTimer:self->_timer];
  [(PowerUIDemoCECManager *)self unregisterTimer:self->_analyticsTimer];
  [(PowerUIDemoCECManager *)self unregisterTimer:self->_unpluggedTimer];
  [(PowerUIDemoCECManager *)self unregisterTimer:self->_queryForecastTimer];
}

- (void)loadStateFromDefaults
{
  v59 = *MEMORY[0x277D85DE8];
  self->_currentPhase = [(NSUserDefaults *)self->_defaults integerForKey:@"currentPhase"];
  v3 = [(NSUserDefaults *)self->_defaults objectForKey:@"pluggedInDateInterval"];
  v4 = v3;
  if (v3)
  {
    v5 = MEMORY[0x277CBEAA8];
    [v3 doubleValue];
    v6 = [v5 dateWithTimeIntervalSinceReferenceDate:?];
    lastPluggedInDate = self->_lastPluggedInDate;
    self->_lastPluggedInDate = v6;
  }

  v8 = [(NSUserDefaults *)self->_defaults objectForKey:@"unpluggedDateInterval"];

  if (v8)
  {
    v9 = MEMORY[0x277CBEAA8];
    [v8 doubleValue];
    v10 = [v9 dateWithTimeIntervalSinceReferenceDate:?];
    lastUnpluggedDate = self->_lastUnpluggedDate;
    self->_lastUnpluggedDate = v10;
  }

  v12 = [(NSUserDefaults *)self->_defaults objectForKey:@"lastPauseChargingCheckDate"];

  if (v12)
  {
    v13 = MEMORY[0x277CBEAA8];
    [v12 doubleValue];
    v14 = [v13 dateWithTimeIntervalSinceReferenceDate:?];
    pauseChargingCheckDate = self->_pauseChargingCheckDate;
    self->_pauseChargingCheckDate = v14;
  }

  v16 = [(NSUserDefaults *)self->_defaults objectForKey:@"lastEngagementCheckDate"];

  if (v16)
  {
    v17 = MEMORY[0x277CBEAA8];
    [v16 doubleValue];
    v18 = [v17 dateWithTimeIntervalSinceReferenceDate:?];
    lastEngagementCheckDate = self->_lastEngagementCheckDate;
    self->_lastEngagementCheckDate = v18;
  }

  v20 = [(NSUserDefaults *)self->_defaults objectForKey:@"pluggedInBatteryLevel"];

  if (v20)
  {
    self->_pluggedInBatteryLevel = [v20 intValue];
  }

  v21 = [(NSUserDefaults *)self->_defaults objectForKey:@"requeryForecastTries"];

  if (v21)
  {
    intValue = [v21 intValue];
  }

  else
  {
    intValue = 0;
  }

  self->_requeryForecastTries = intValue;
  v23 = [(NSUserDefaults *)self->_defaults objectForKey:@"currentState"];

  if (v23)
  {
    unsignedIntegerValue = [v23 unsignedIntegerValue];
    self->_currentState = unsignedIntegerValue;
    self->_isDemoCECEnabled = unsignedIntegerValue == 1;
  }

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v26 = MEMORY[0x277CCABB0];
    currentPhase = self->_currentPhase;
    v38 = log;
    v28 = [v26 numberWithUnsignedInteger:currentPhase];
    v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_currentState];
    v30 = [MEMORY[0x277CCABB0] numberWithBool:self->_isDemoCECEnabled];
    v31 = self->_lastPluggedInDate;
    v32 = self->_lastUnpluggedDate;
    v33 = self->_pauseChargingCheckDate;
    v34 = self->_lastEngagementCheckDate;
    pluggedInBatteryLevel = self->_pluggedInBatteryLevel;
    requeryForecastTries = self->_requeryForecastTries;
    engagementDecisionReason = [(PowerUICECGridDataManager *)self->_gridDataManager engagementDecisionReason];
    *buf = 138414594;
    v40 = v28;
    v41 = 2112;
    v42 = v29;
    v43 = 2112;
    v44 = v30;
    v45 = 2112;
    v46 = v31;
    v47 = 2112;
    v48 = v32;
    v49 = 2112;
    v50 = v33;
    v51 = 2048;
    v52 = pluggedInBatteryLevel;
    v53 = 2112;
    v54 = v34;
    v55 = 2048;
    v56 = requeryForecastTries;
    v57 = 2048;
    v58 = engagementDecisionReason;
    _os_log_impl(&dword_21B766000, v38, OS_LOG_TYPE_DEFAULT, "DemoCECManager Loaded state from defaults. Current phase: %@, current state: %@, isDemoCECEnabled %@, lastPluggedInDate %@, lastUnpluggedDate %@, pauseChargingCheckDate %@, pluggedInBatteryLevel %ld, lastEngagementCheckDate %@, requeryForecastTries %ld, engagementDecisionReason %lu", buf, 0x66u);
  }
}

- (void)loadState
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [PowerUICECUtilities deviceWasRestartedWithDefaults:self->_defaults];
  defaults = self->_defaults;
  v5 = +[PowerUISmartChargeUtilities getCurrentBootSessionUUID];
  [(NSUserDefaults *)defaults setObject:v5 forKey:@"bootUUIDOnLastInit"];

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v7 = MEMORY[0x277CCABB0];
    v8 = log;
    v9 = [v7 numberWithBool:v3];
    v14 = 138412290;
    v15 = v9;
    _os_log_impl(&dword_21B766000, v8, OS_LOG_TYPE_DEFAULT, "DemoCECManager initializing. Was the device restarted: %@", &v14, 0xCu);
  }

  v10 = [(NSUserDefaults *)self->_defaults objectForKey:@"pluggedInDateInterval"];
  v11 = [(NSUserDefaults *)self->_defaults objectForKey:@"lastEngagementCheckDate"];
  v12 = v11;
  if (v10 && v11)
  {
    [(PowerUIDemoCECManager *)self loadStateFromDefaults];
    [(NSUserDefaults *)self->_defaults setBool:v3 forKey:@"deviceWasRestarted"];
  }

  else
  {
    v13 = self->_log;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&dword_21B766000, v13, OS_LOG_TYPE_DEFAULT, "Missing last plugged in date or last engagement check date in defaults. Starting from fresh state to allow for new evaluation.", &v14, 2u);
    }
  }
}

- (void)registerCleanSegmentTimer
{
  v10 = *MEMORY[0x277D85DE8];
  [(PowerUICECGridDataManager *)self->_gridDataManager timeToNextCleanInterval];
  v4 = v3;
  if (v3 <= 0.0)
  {
    log = self->_log;
    v7 = os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT);
    if (v4 == 0.0)
    {
      if (v7)
      {
        LOWORD(v8) = 0;
        _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "No future clean intervals: not registering clean-segment timer.", &v8, 2u);
      }
    }

    else
    {
      if (v7)
      {
        v8 = 134217984;
        v9 = 0x4014000000000000;
        _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Unable to compute time until next clean session. Defaulting to registering %.0f minute timer.", &v8, 0xCu);
      }

      [(PowerUIDemoCECManager *)self registerCleanSegmentTimer:self->_timer afterTime:300.0 withInterval:300.0];
    }
  }

  else
  {
    timer = self->_timer;

    [PowerUIDemoCECManager registerCleanSegmentTimer:"registerCleanSegmentTimer:afterTime:withInterval:" afterTime:timer withInterval:?];
  }
}

- (void)registerCleanSegmentTimer:(id)timer afterTime:(double)time withInterval:(double)interval
{
  timerCopy = timer;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    [PowerUIDemoCECManager registerCleanSegmentTimer:time afterTime:? withInterval:?];
  }

  v10 = interval * 1000000000.0;
  if (interval == 1.84467441e19)
  {
    v10 = 1.84467441e19;
  }

  v11 = v10;
  v12 = dispatch_walltime(0, (time * 1000000000.0));
  dispatch_source_set_timer(timerCopy, v12, v11, 0xDF8475800uLL);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__PowerUIDemoCECManager_registerCleanSegmentTimer_afterTime_withInterval___block_invoke;
  block[3] = &unk_2782D3EA8;
  v16 = timerCopy;
  v13 = registerCleanSegmentTimer_afterTime_withInterval__timerToken;
  v14 = timerCopy;
  if (v13 != -1)
  {
    dispatch_once(&registerCleanSegmentTimer_afterTime_withInterval__timerToken, block);
  }
}

- (void)registerReevaluateEngagementTimer:(id)timer afterTime:(double)time withInterval:(double)interval
{
  v19 = *MEMORY[0x277D85DE8];
  timerCopy = timer;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v16 = time / 60.0;
    v17 = 2048;
    v18 = interval / 60.0;
    _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Registering timer to re-evaluate engagement in the current session for waitTime: %.0f minutes and interval: %.0f minutes", buf, 0x16u);
  }

  v10 = dispatch_walltime(0, (time * 1000000000.0));
  dispatch_source_set_timer(timerCopy, v10, (interval * 1000000000.0), 0xDF8475800uLL);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__PowerUIDemoCECManager_registerReevaluateEngagementTimer_afterTime_withInterval___block_invoke;
  block[3] = &unk_2782D3EA8;
  v14 = timerCopy;
  v11 = registerReevaluateEngagementTimer_afterTime_withInterval__timerToken;
  v12 = timerCopy;
  if (v11 != -1)
  {
    dispatch_once(&registerReevaluateEngagementTimer_afterTime_withInterval__timerToken, block);
  }
}

- (void)registerAnalyticsTimer:(id)timer afterTime:(double)time withInterval:(double)interval
{
  v19 = *MEMORY[0x277D85DE8];
  timerCopy = timer;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v16 = time / 60.0;
    v17 = 2048;
    v18 = interval / 60.0;
    _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Registering analytics timer for waitTime: %.0f minutes and interval: %.0f minutes", buf, 0x16u);
  }

  v10 = dispatch_walltime(0, (time * 1000000000.0));
  dispatch_source_set_timer(timerCopy, v10, (interval * 1000000000.0), 0xDF8475800uLL);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__PowerUIDemoCECManager_registerAnalyticsTimer_afterTime_withInterval___block_invoke;
  block[3] = &unk_2782D3EA8;
  v14 = timerCopy;
  v11 = registerAnalyticsTimer_afterTime_withInterval__timerToken;
  v12 = timerCopy;
  if (v11 != -1)
  {
    dispatch_once(&registerAnalyticsTimer_afterTime_withInterval__timerToken, block);
  }
}

- (void)registerUnpluggedTimer:(id)timer afterTime:(double)time withInterval:(double)interval
{
  v19 = *MEMORY[0x277D85DE8];
  timerCopy = timer;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v16 = time / 60.0;
    v17 = 2048;
    v18 = interval / 60.0;
    _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Registering unplugged check timer for waitTime: %.0f minutes and interval: %.0f minutes", buf, 0x16u);
  }

  v10 = dispatch_walltime(0, (time * 1000000000.0));
  dispatch_source_set_timer(timerCopy, v10, (interval * 1000000000.0), 0xDF8475800uLL);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__PowerUIDemoCECManager_registerUnpluggedTimer_afterTime_withInterval___block_invoke;
  block[3] = &unk_2782D3EA8;
  v14 = timerCopy;
  v11 = registerUnpluggedTimer_afterTime_withInterval__timerToken;
  v12 = timerCopy;
  if (v11 != -1)
  {
    dispatch_once(&registerUnpluggedTimer_afterTime_withInterval__timerToken, block);
  }
}

- (void)unregisterTimer:(id)timer
{
  timerCopy = timer;
  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    [PowerUIDemoCECManager unregisterTimer:];
  }

  dispatch_source_set_timer(timerCopy, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
}

- (BOOL)shouldEngageDemoCEC
{
  v17 = *MEMORY[0x277D85DE8];
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v13) = 0;
    _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Evaluating engagement for current plug-in.", &v13, 2u);
  }

  v4 = [(PowerUICECGridDataManager *)self->_gridDataManager shouldEngageForPluggedInTime:28800.0];
  if (v4)
  {
    if (+[PowerUISmartChargeUtilities isiPhone])
    {
      v5 = 1;
    }

    else
    {
      v5 = 2;
    }

    [(PowerUICECGridDataManager *)self->_gridDataManager setupDemoChargingTimeOverForecastHorizon:v5 withKChargingSegments:28800.0];
  }

  else
  {
    balancingAuthorityName = [(PowerUICECGridDataManager *)self->_gridDataManager balancingAuthorityName];
    engagementDecisionReason = [(PowerUICECGridDataManager *)self->_gridDataManager engagementDecisionReason];
    v8 = self->_log;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 134218242;
      v14 = engagementDecisionReason;
      v15 = 2112;
      v16 = balancingAuthorityName;
      _os_log_impl(&dword_21B766000, v8, OS_LOG_TYPE_DEFAULT, "Evaluated and decided not to engage: no forecast available or not enough variation in grid. (engagementDecisionReason: %lu, balancingAuthority: %@)", &v13, 0x16u);
    }
  }

  date = [MEMORY[0x277CBEAA8] date];
  lastEngagementCheckDate = self->_lastEngagementCheckDate;
  self->_lastEngagementCheckDate = date;

  defaults = self->_defaults;
  [(NSDate *)self->_lastEngagementCheckDate timeIntervalSinceReferenceDate];
  [(NSUserDefaults *)defaults setDouble:@"lastEngagementCheckDate" forKey:?];
  return v4;
}

- (BOOL)shouldReevaluateEngagement
{
  v20 = *MEMORY[0x277D85DE8];
  lastEngagementCheckDate = self->_lastEngagementCheckDate;
  if (!lastEngagementCheckDate)
  {
    goto LABEL_6;
  }

  [(NSDate *)lastEngagementCheckDate timeIntervalSinceNow];
  if (v4 >= -28800.0)
  {
    return 0;
  }

  if (self->_lastEngagementCheckDate)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      v6 = self->_lastEngagementCheckDate;
      v7 = log;
      [(NSDate *)v6 timeIntervalSinceNow];
      v14 = 134218498;
      v8 = self->_lastEngagementCheckDate;
      v15 = v9 / -3600.0;
      v16 = 2112;
      v17 = v8;
      v18 = 2048;
      v19 = 0x4020000000000000;
      _os_log_impl(&dword_21B766000, v7, OS_LOG_TYPE_DEFAULT, "Last evaluated engagement %.0lf hours ago (at: %@). Re-evaluating whether or not to engage for the next %.0lf hours.", &v14, 0x20u);
    }
  }

  else
  {
LABEL_6:
    v10 = self->_log;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 134217984;
      v15 = 8.0;
      _os_log_impl(&dword_21B766000, v10, OS_LOG_TYPE_DEFAULT, "No previous evaluation check date set. Re-evaluating whether or not to engage for the next %.0lf hours.", &v14, 0xCu);
    }
  }

  v11 = [(NSUserDefaults *)self->_defaults objectForKey:@"demoCecEngagement"];
  v12 = v11;
  if (self->_lastEngagementCheckDate)
  {
    if (v11)
    {
      [(PowerUIDemoCECManager *)self recordAnalytics];
    }
  }

  [(PowerUIDemoCECManager *)self resetState];

  return 1;
}

- (BOOL)evaluateEngagement
{
  v7 = *MEMORY[0x277D85DE8];
  shouldEngageDemoCEC = [(PowerUIDemoCECManager *)self shouldEngageDemoCEC];
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = shouldEngageDemoCEC;
    _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Should engage %d", v6, 8u);
  }

  [(PowerUIDemoCECManager *)self recordEngagementEvaluation:shouldEngageDemoCEC];
  [(PowerUIDemoCECManager *)self recordStartWallEnergyAccum];
  if (shouldEngageDemoCEC)
  {
    [(PowerUIDemoCECManager *)self recordSystemLoadAccum];
  }

  return shouldEngageDemoCEC;
}

- (void)updatePhaseFrom:(unint64_t)from to:(unint64_t)to
{
  v30 = *MEMORY[0x277D85DE8];
  v7 = [PowerUISmartChargeUtilities currentBatteryLevelWithContext:self->_context];
  v8 = [PowerUISmartChargeUtilities isPluggedInWithContext:self->_context];
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    phaseDescriptions = self->_phaseDescriptions;
    v11 = MEMORY[0x277CCABB0];
    v12 = log;
    v13 = [v11 numberWithUnsignedInteger:from];
    v14 = [(NSDictionary *)phaseDescriptions objectForKeyedSubscript:v13];
    v15 = self->_phaseDescriptions;
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:to];
    v17 = [(NSDictionary *)v15 objectForKeyedSubscript:v16];
    v18 = 134219266;
    fromCopy = from;
    v20 = 2048;
    toCopy = to;
    v22 = 2112;
    v23 = v14;
    v24 = 2112;
    v25 = v17;
    v26 = 2048;
    v27 = v7;
    v28 = 1024;
    v29 = v8;
    _os_log_impl(&dword_21B766000, v12, OS_LOG_TYPE_DEFAULT, "Demo CEC Phase update from %lu to %lu (%@ --> %@); BatteryLevel %ld, PluggedIn %d", &v18, 0x3Au);
  }

  self->_currentPhase = to;
  [(NSUserDefaults *)self->_defaults setInteger:to forKey:@"currentPhase"];
  if (self->_currentPhase != 20)
  {
    [(PowerUIChargingController *)self->_chargingController clearChargeLimitForLimitType:4];
    self->_isChargingPaused = 0;
  }
}

- (void)startSessionTimers
{
  [(PowerUIDemoCECManager *)self registerCleanSegmentTimer];

  [(PowerUIDemoCECManager *)self startSystemLoadAccumTimer];
}

- (void)handleEngagement
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Engaging for the current session.", v4, 2u);
  }

  [(PowerUIDemoCECManager *)self updatePhaseFrom:self->_currentPhase to:20];
  [(PowerUIDemoCECManager *)self evaluateShouldChargeNow];
}

- (void)handleEmergencyCharge
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Enabling emergency charge.", v4, 2u);
  }

  [(PowerUIDemoCECManager *)self updatePhaseFrom:self->_currentPhase to:30];
  [(PowerUIDemoCECManager *)self recordChargingStateChange:1 atBatteryLevel:[PowerUISmartChargeUtilities duringCleanInterval:"currentBatteryLevelWithContext:" currentBatteryLevelWithContext:?], 0];
  [(PowerUIDemoCECManager *)self unregisterTimer:self->_timer];
}

- (void)handlePauseChargingAboveMaxSOC:(int64_t)c
{
  v18 = *MEMORY[0x277D85DE8];
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 134217984;
    v15 = 90;
    _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Pausing charging while SOC is above %ld.", &v14, 0xCu);
  }

  isChargingPaused = self->_isChargingPaused;
  [(PowerUIChargingController *)self->_chargingController setChargeLimitTo:c forLimitType:4];
  self->_isChargingPaused = 1;
  if (!isChargingPaused)
  {
    v7 = self->_log;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = MEMORY[0x277CCABB0];
      v9 = v7;
      v10 = [v8 numberWithBool:1];
      v11 = [MEMORY[0x277CCABB0] numberWithInt:!self->_isChargingPaused];
      v14 = 138412546;
      v15 = v10;
      v16 = 2112;
      v17 = v11;
      _os_log_impl(&dword_21B766000, v9, OS_LOG_TYPE_DEFAULT, "Demo CEC changed charging states. Previously was charging = %@, now is charging = %@.", &v14, 0x16u);
    }

    v12 = [PowerUISmartChargeUtilities currentBatteryLevelWithContext:self->_context];
    if ([(PowerUIDemoCECManager *)self isEngaged])
    {
      shouldChargeNow = [(PowerUICECGridDataManager *)self->_gridDataManager shouldChargeNow];
    }

    else
    {
      shouldChargeNow = 0;
    }

    [(PowerUIDemoCECManager *)self recordChargingStateChange:!self->_isChargingPaused atBatteryLevel:v12 duringCleanInterval:shouldChargeNow];
  }
}

- (void)handleDisengagement
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Exiting from a session previously engaged/deemed eligible", buf, 2u);
  }

  v4 = [(NSUserDefaults *)self->_defaults objectForKey:@"demoCecEngagement"];
  v5 = v4;
  if (self->_lastEngagementCheckDate)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v7 = self->_log;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_21B766000, v7, OS_LOG_TYPE_DEFAULT, "Sending analytics for session.", v8, 2u);
    }

    [(PowerUIDemoCECManager *)self recordAnalytics];
  }

  [(PowerUIDemoCECManager *)self resetState];
}

- (void)evaluateShouldChargeNow
{
  v3 = MEMORY[0x277CCABB0];
  selfCopy = self;
  v5 = [v3 numberWithBool:a2 & 1];
  LODWORD(v12) = 138412290;
  HIDWORD(v12) = v5;
  OUTLINED_FUNCTION_3_0(&dword_21B766000, v6, v7, "Charging state changed: %@", v8, v9, v10, v11, v12, HIDWORD(v5));
}

- (void)handleCallback:(id)callback
{
  v52 = *MEMORY[0x277D85DE8];
  callbackCopy = callback;
  v5 = [PowerUISmartChargeUtilities currentBatteryLevelWithContext:self->_context];
  v6 = [PowerUISmartChargeUtilities isPluggedInWithContext:self->_context];
  engagementDecisionReason = [(PowerUICECGridDataManager *)self->_gridDataManager engagementDecisionReason];
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    currentPhase = self->_currentPhase;
    *v46 = 138413314;
    *&v46[4] = callbackCopy;
    *&v46[12] = 2048;
    *&v46[14] = currentPhase;
    *&v46[22] = 2048;
    v47 = engagementDecisionReason;
    v48 = 2048;
    v49 = v5;
    v50 = 1024;
    v51 = v6;
    _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Evaluating phase. Trigger: %@ (CurrentPhase %lu engagementDecisionReason %lu batteryLevel %ld, isPluggedIn %d)", v46, 0x30u);
  }

  v10 = [callbackCopy isEqualToString:@"Query forecast timer"];
  v11 = self->_currentPhase;
  if (v11 > 19)
  {
    if (v11 == 20)
    {
      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
      {
        [PowerUIDemoCECManager handleCallback:];
      }

      if (v5 <= 50)
      {
        v30 = self->_log;
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *v46 = 134218240;
          *&v46[4] = v5;
          *&v46[12] = 2048;
          *&v46[14] = 50;
          v31 = "SOC fell below acceptable limit (batteryLevel = %ld <= kEmergencyChargeSocStartThreshold = %ld). Deciding to emergency charge regardless of grid.";
          goto LABEL_47;
        }

LABEL_59:
        [(PowerUIDemoCECManager *)self handleEmergencyCharge:*v46];
        goto LABEL_105;
      }

      if ([(PowerUIDemoCECManager *)self shouldReevaluateEngagement]&& [(PowerUIDemoCECManager *)self evaluateEngagement])
      {
        v25 = self->_log;
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *v46 = 0;
          goto LABEL_78;
        }

        goto LABEL_79;
      }

      if (v5 < 90)
      {
        [(PowerUIDemoCECManager *)self evaluateShouldChargeNow];
        goto LABEL_105;
      }

      v38 = self->_log;
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_71;
      }

      goto LABEL_72;
    }

    if (v11 != 30)
    {
LABEL_32:
      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
      {
        [PowerUIDemoCECManager handleCallback:];
      }

      goto LABEL_105;
    }

    v19 = self->_log;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *v46 = 0;
      _os_log_impl(&dword_21B766000, v19, OS_LOG_TYPE_DEFAULT, "Emergency charging", v46, 2u);
    }

    v20 = self->_log;
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
    if (v5 < 75)
    {
      if (v21)
      {
        *v46 = 134218240;
        *&v46[4] = v5;
        *&v46[12] = 2048;
        *&v46[14] = 75;
        _os_log_impl(&dword_21B766000, v20, OS_LOG_TYPE_DEFAULT, "Still emergency charging. Not yet at acceptable SOC limit (= batteryLevel %ld < kEmergencyChargeSocEndThreshold = %ld).", v46, 0x16u);
      }

      if (![(PowerUIDemoCECManager *)self shouldReevaluateEngagement])
      {
        goto LABEL_105;
      }

      evaluateEngagement = [(PowerUIDemoCECManager *)self evaluateEngagement];
      v25 = self->_log;
      v33 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
      if (evaluateEngagement)
      {
        if (v33)
        {
          *v46 = 0;
          _os_log_impl(&dword_21B766000, v25, OS_LOG_TYPE_DEFAULT, "Evaluated and decided to engage", v46, 2u);
        }

        [(PowerUIDemoCECManager *)self handleEngagement];
        [(PowerUIDemoCECManager *)self startSessionTimers];
        goto LABEL_59;
      }

      if (!v33)
      {
        goto LABEL_104;
      }

      *v46 = 0;
    }

    else
    {
      if (v21)
      {
        *v46 = 134218240;
        *&v46[4] = v5;
        *&v46[12] = 2048;
        *&v46[14] = 75;
        _os_log_impl(&dword_21B766000, v20, OS_LOG_TYPE_DEFAULT, "Charged to acceptable limit (= batteryLevel %ld >= kEmergencyChargeSocEndThreshold = %ld). Ending emergency charge.", v46, 0x16u);
      }

      isWithinEngagedSession = [(PowerUIDemoCECManager *)self isWithinEngagedSession];
      v23 = self->_log;
      if (isWithinEngagedSession)
      {
        if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEFAULT))
        {
          *v46 = 134217984;
          *&v46[4] = 0x4020000000000000;
          _os_log_impl(&dword_21B766000, v23, OS_LOG_TYPE_DEFAULT, "Previously determined engagement opportunity before emergency charging. Checking if we're still within the %.0lf hour session.", v46, 0xCu);
        }

        if (![(PowerUIDemoCECManager *)self shouldReevaluateEngagement])
        {
          [(PowerUIDemoCECManager *)self handleEngagement];
          goto LABEL_105;
        }

        evaluateEngagement2 = [(PowerUIDemoCECManager *)self evaluateEngagement];
        v25 = self->_log;
        v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
        if (evaluateEngagement2)
        {
          if (v26)
          {
            *v46 = 0;
LABEL_78:
            _os_log_impl(&dword_21B766000, v25, OS_LOG_TYPE_DEFAULT, "Evaluated and decided to engage", v46, 2u);
          }

LABEL_79:
          [(PowerUIDemoCECManager *)self handleEngagement];
          [(PowerUIDemoCECManager *)self startSessionTimers];
          goto LABEL_105;
        }

        if (v26)
        {
          *v46 = 0;
          goto LABEL_103;
        }

LABEL_104:
        [(PowerUIDemoCECManager *)self updatePhaseFrom:self->_currentPhase to:10, *v46];
        goto LABEL_105;
      }

      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
      {
        [PowerUIDemoCECManager handleCallback:];
      }

      [(PowerUIDemoCECManager *)self clearAnalytics];
      evaluateEngagement3 = [(PowerUIDemoCECManager *)self evaluateEngagement];
      v25 = self->_log;
      v42 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
      if (evaluateEngagement3)
      {
        if (v42)
        {
          *v46 = 0;
          goto LABEL_78;
        }

        goto LABEL_79;
      }

      if (!v42)
      {
        goto LABEL_104;
      }

      *v46 = 0;
    }

LABEL_103:
    _os_log_impl(&dword_21B766000, v25, OS_LOG_TYPE_DEFAULT, "Evaluated and decided not to engage", v46, 2u);
    goto LABEL_104;
  }

  if (v11)
  {
    if (v11 == 10)
    {
      if (engagementDecisionReason == 1)
      {
        v12 = v10;
      }

      else
      {
        v12 = 0;
      }

      if (v12)
      {
        if (![(PowerUIDemoCECManager *)self evaluateEngagement])
        {
          gridDataManager = self->_gridDataManager;
          ++self->_requeryForecastTries;
          engagementDecisionReason2 = [(PowerUICECGridDataManager *)gridDataManager engagementDecisionReason];
          if (engagementDecisionReason2 != 1)
          {
            goto LABEL_15;
          }

          v15 = self->_log;
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            requeryForecastTries = self->_requeryForecastTries;
            *v46 = 134217984;
            *&v46[4] = requeryForecastTries;
            _os_log_impl(&dword_21B766000, v15, OS_LOG_TYPE_DEFAULT, "Tried to requery forecast for the %ld time, but still missing forecast.", v46, 0xCu);
          }

          if (self->_requeryForecastTries >= 3)
          {
LABEL_15:
            v17 = self->_log;
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              v18 = self->_requeryForecastTries;
              *v46 = 134218240;
              *&v46[4] = v18;
              *&v46[12] = 1024;
              *&v46[14] = engagementDecisionReason2 == 1;
              _os_log_impl(&dword_21B766000, v17, OS_LOG_TYPE_DEFAULT, "No longer re-querying forecast. requeryForecastTries: %ld , stillMissingForecast: %d", v46, 0x12u);
            }

            [(PowerUIDemoCECManager *)self unregisterTimer:self->_queryForecastTimer];
          }

          goto LABEL_105;
        }

LABEL_50:
        v25 = self->_log;
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *v46 = 0;
          goto LABEL_78;
        }

        goto LABEL_79;
      }

      if ([(PowerUIDemoCECManager *)self shouldReevaluateEngagement]&& [(PowerUIDemoCECManager *)self evaluateEngagement])
      {
        goto LABEL_50;
      }

      v36 = self->_log;
      v37 = os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT);
      if (v5 >= 90)
      {
        if (v37)
        {
          goto LABEL_98;
        }

        goto LABEL_99;
      }

      if (!v37)
      {
        goto LABEL_105;
      }

      *v46 = 0;
      v35 = "Remaining in evaluated and not-engaged phase.";
      v43 = v36;
LABEL_83:
      _os_log_impl(&dword_21B766000, v43, OS_LOG_TYPE_DEFAULT, v35, v46, 2u);
      goto LABEL_105;
    }

    goto LABEL_32;
  }

  if (!self->_isDemoCECEnabled)
  {
    v34 = self->_log;
    if (!os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_105;
    }

    *v46 = 0;
    v35 = "Demo CEC is either not supported or disabled. Skipping";
LABEL_82:
    v43 = v34;
    goto LABEL_83;
  }

  if (!v6)
  {
    v34 = self->_log;
    if (!os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_105;
    }

    *v46 = 0;
    v35 = "Device no longer plugged into a power source.";
    goto LABEL_82;
  }

  evaluateEngagement4 = [(PowerUIDemoCECManager *)self evaluateEngagement];
  v28 = self->_log;
  v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
  if (evaluateEngagement4)
  {
    if (v29)
    {
      *v46 = 0;
      _os_log_impl(&dword_21B766000, v28, OS_LOG_TYPE_DEFAULT, "Evaluated and decided to engage", v46, 2u);
    }

    [(PowerUIDemoCECManager *)self handleEngagement];
    [(PowerUIDemoCECManager *)self startSessionTimers];
    if (v5 <= 50)
    {
      v30 = self->_log;
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *v46 = 134218240;
        *&v46[4] = v5;
        *&v46[12] = 2048;
        *&v46[14] = 50;
        v31 = "SOC is below acceptable limit (batteryLevel = %ld <= kEmergencyChargeSocStartThreshold = %ld). Deciding to emergency charge regardless of grid.";
LABEL_47:
        _os_log_impl(&dword_21B766000, v30, OS_LOG_TYPE_DEFAULT, v31, v46, 0x16u);
        goto LABEL_59;
      }

      goto LABEL_59;
    }

    if (v5 < 90)
    {
      goto LABEL_105;
    }

    v38 = self->_log;
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
LABEL_71:
      *v46 = 134218240;
      *&v46[4] = v5;
      *&v46[12] = 2048;
      *&v46[14] = 90;
      _os_log_impl(&dword_21B766000, v38, OS_LOG_TYPE_DEFAULT, "SOC is above upper charge limit (batteryLevel = %ld >= kUpperChargeLimit = %ld). Pausing charging regardless of grid.", v46, 0x16u);
    }

LABEL_72:
    selfCopy2 = self;
    v40 = 50;
LABEL_100:
    [(PowerUIDemoCECManager *)selfCopy2 handlePauseChargingAboveMaxSOC:v40, *v46, *&v46[8]];
    goto LABEL_105;
  }

  if (v29)
  {
    *v46 = 0;
    _os_log_impl(&dword_21B766000, v28, OS_LOG_TYPE_DEFAULT, "Evaluated and decided not to engage", v46, 2u);
  }

  [(PowerUIDemoCECManager *)self updatePhaseFrom:self->_currentPhase to:10];
  if ([(PowerUICECGridDataManager *)self->_gridDataManager engagementDecisionReason]== 1)
  {
    [(PowerUIDemoCECManager *)self registerReevaluateEngagementTimer:self->_queryForecastTimer afterTime:600.0 withInterval:600.0];
  }

  if (v5 >= 90)
  {
    v36 = self->_log;
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
LABEL_98:
      *v46 = 134218240;
      *&v46[4] = v5;
      *&v46[12] = 2048;
      *&v46[14] = 90;
      _os_log_impl(&dword_21B766000, v36, OS_LOG_TYPE_DEFAULT, "SOC is above upper charge limit (batteryLevel = %ld >= kUpperChargeLimit = %ld). Pausing charging regardless of grid.", v46, 0x16u);
    }

LABEL_99:
    selfCopy2 = self;
    v40 = 90;
    goto LABEL_100;
  }

LABEL_105:
  v44 = self->_log;
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
  {
    v45 = self->_currentPhase;
    *v46 = 134217984;
    *&v46[4] = v45;
    _os_log_impl(&dword_21B766000, v44, OS_LOG_TYPE_DEFAULT, "Current Phase is now %lu", v46, 0xCu);
  }
}

- (void)handlePowerUICECStateChange:(unint64_t)change withHandler:(id)handler
{
  v18 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v8 = MEMORY[0x277CCABB0];
    v9 = log;
    v10 = [v8 numberWithUnsignedInteger:change];
    *buf = 138412290;
    v17 = v10;
    _os_log_impl(&dword_21B766000, v9, OS_LOG_TYPE_DEFAULT, "Demo CEC State: %@", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__PowerUIDemoCECManager_handlePowerUICECStateChange_withHandler___block_invoke;
  block[3] = &unk_2782D4378;
  v14 = handlerCopy;
  changeCopy = change;
  block[4] = self;
  v12 = handlerCopy;
  dispatch_async(queue, block);
}

void __65__PowerUIDemoCECManager_handlePowerUICECStateChange_withHandler___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  if (v2 >= 2)
  {
    v4 = *(a1 + 40);
    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"PowerUISmartChargingErrorDomain" code:1 userInfo:0];
    (*(v4 + 16))(v4, 0);
  }

  else
  {
    v3 = *(a1 + 32);
    if (v2 == 1)
    {
      *(v3 + 112) = 1;
      *(*(a1 + 32) + 9) = 1;
      [*(*(a1 + 32) + 64) removeObjectForKey:@"disabled"];
    }

    else
    {
      *(v3 + 112) = 0;
      *(*(a1 + 32) + 9) = 0;
      [*(*(a1 + 32) + 64) setBool:1 forKey:@"disabled"];
    }

    v5 = *(*(a1 + 32) + 24);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = MEMORY[0x277CCABB0];
      v7 = *(*(a1 + 32) + 112);
      v8 = v5;
      v9 = [v6 numberWithUnsignedInteger:v7];
      *buf = 138412290;
      v12 = v9;
      _os_log_impl(&dword_21B766000, v8, OS_LOG_TYPE_DEFAULT, "Demo CEC State set to: %@", buf, 0xCu);
    }

    [*(*(a1 + 32) + 64) setInteger:*(*(a1 + 32) + 112) forKey:@"currentState"];
    (*(*(a1 + 40) + 16))();
    [*(a1 + 32) handleCallback:@"User state setting"];
  }
}

- (void)monitorDemoCecIsEnabledChange
{
  defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
  v4 = *MEMORY[0x277D29548];
  mainQueue = [MEMORY[0x277CCABD8] mainQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__PowerUIDemoCECManager_monitorDemoCecIsEnabledChange__block_invoke;
  v7[3] = &unk_2782D43A0;
  v7[4] = self;
  v6 = [defaultCenter addObserverForName:v4 object:0 queue:mainQueue usingBlock:v7];
}

void __54__PowerUIDemoCECManager_monitorDemoCecIsEnabledChange__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 48);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__PowerUIDemoCECManager_monitorDemoCecIsEnabledChange__block_invoke_2;
  block[3] = &unk_2782D3EA8;
  block[4] = v1;
  dispatch_async(v2, block);
}

- (void)startSystemLoadAccumTimer
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 134217984;
  v2 = 60;
  _os_log_error_impl(&dword_21B766000, log, OS_LOG_TYPE_ERROR, "Unable to get the current interval start time. Setting a default timer starting %ld mins from now", &v1, 0xCu);
}

- (void)monitorBatteryStateOfChargeChange
{
  v24[3] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CFE360];
  keyPathForBatteryLevel = [MEMORY[0x277CFE338] keyPathForBatteryLevel];
  keyPathForBatteryStateDataDictionary = [MEMORY[0x277CFE338] keyPathForBatteryStateDataDictionary];
  keyPathForBatteryLevel2 = [MEMORY[0x277CFE338] keyPathForBatteryLevel];
  v7 = MEMORY[0x277CBEC38];
  v8 = [v3 predicateForKeyPath:keyPathForBatteryLevel withFormat:@"SELF.%@.value.externalConnected = %@ AND SELF.%@.value <= %@", keyPathForBatteryStateDataDictionary, MEMORY[0x277CBEC38], keyPathForBatteryLevel2, &unk_282D4E308];

  v9 = MEMORY[0x277CFE360];
  keyPathForBatteryLevel3 = [MEMORY[0x277CFE338] keyPathForBatteryLevel];
  keyPathForBatteryStateDataDictionary2 = [MEMORY[0x277CFE338] keyPathForBatteryStateDataDictionary];
  keyPathForBatteryLevel4 = [MEMORY[0x277CFE338] keyPathForBatteryLevel];
  v13 = [v9 predicateForKeyPath:keyPathForBatteryLevel3 withFormat:@"SELF.%@.value.externalConnected = %@ AND SELF.%@.value = %@", keyPathForBatteryStateDataDictionary2, v7, keyPathForBatteryLevel4, &unk_282D4E320];

  v14 = MEMORY[0x277CFE360];
  keyPathForBatteryLevel5 = [MEMORY[0x277CFE338] keyPathForBatteryLevel];
  keyPathForBatteryStateDataDictionary3 = [MEMORY[0x277CFE338] keyPathForBatteryStateDataDictionary];
  keyPathForBatteryLevel6 = [MEMORY[0x277CFE338] keyPathForBatteryLevel];
  v18 = [v14 predicateForKeyPath:keyPathForBatteryLevel5 withFormat:@"SELF.%@.value.externalConnected = %@ AND SELF.%@.value >= %@", keyPathForBatteryStateDataDictionary3, v7, keyPathForBatteryLevel6, &unk_282D4E338];

  v19 = MEMORY[0x277CFE360];
  v24[0] = v8;
  v24[1] = v13;
  v24[2] = v18;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:3];
  v21 = [v19 orPredicateWithSubpredicates:v20];

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __58__PowerUIDemoCECManager_monitorBatteryStateOfChargeChange__block_invoke;
  v23[3] = &unk_2782D4138;
  v23[4] = self;
  v22 = [MEMORY[0x277CFE350] localWakingRegistrationWithIdentifier:@"com.apple.powerui.democec.battery" contextualPredicate:v21 clientIdentifier:@"com.apple.powerui.democec.batterySocLevel" callback:v23];
  [(_CDLocalContext *)self->_context registerCallback:v22];
}

void __58__PowerUIDemoCECManager_monitorBatteryStateOfChargeChange__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 48);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__PowerUIDemoCECManager_monitorBatteryStateOfChargeChange__block_invoke_2;
  block[3] = &unk_2782D3EA8;
  block[4] = v1;
  dispatch_async(v2, block);
}

- (void)monitorPluggedInChange
{
  v3 = MEMORY[0x277CFE360];
  keyPathForPluginStatus = [MEMORY[0x277CFE338] keyPathForPluginStatus];
  v5 = [v3 predicateForChangeAtKeyPath:keyPathForPluginStatus];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__PowerUIDemoCECManager_monitorPluggedInChange__block_invoke;
  v7[3] = &unk_2782D4138;
  v7[4] = self;
  v6 = [MEMORY[0x277CFE350] localWakingRegistrationWithIdentifier:@"com.apple.powerui.democec.unplug" contextualPredicate:v5 clientIdentifier:@"com.apple.powerui.democec.pluggedIn" callback:v7];
  [(_CDLocalContext *)self->_context registerCallback:v6];
}

void __47__PowerUIDemoCECManager_monitorPluggedInChange__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 48);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__PowerUIDemoCECManager_monitorPluggedInChange__block_invoke_2;
  block[3] = &unk_2782D3EA8;
  block[4] = v1;
  dispatch_async(v2, block);
}

void __47__PowerUIDemoCECManager_monitorPluggedInChange__block_invoke_2(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = [PowerUISmartChargeUtilities isPluggedInWithContext:*(*(a1 + 32) + 32)];
  v3 = +[PowerUICECUtilities resetStateOnUnplug];
  v4 = *(a1 + 32);
  if (v2)
  {
    v5 = v4[3];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v29) = 1;
      _os_log_impl(&dword_21B766000, v5, OS_LOG_TYPE_DEFAULT, "Plugged In %d", buf, 8u);
    }

    v6 = *(a1 + 32);
    if (v6[15] == 0 || v3)
    {
      v7 = v6[4];
      v8 = [MEMORY[0x277CFE338] keyPathForPluginStatus];
      v9 = [v7 lastModifiedDateForContextualKeyPath:v8];

      v10 = *(*(a1 + 32) + 24);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v29 = v9;
        _os_log_impl(&dword_21B766000, v10, OS_LOG_TYPE_DEFAULT, "Setting lastPluggedIn date to %@", buf, 0xCu);
      }

      objc_storeStrong((*(a1 + 32) + 120), v9);
      v11 = *(a1 + 32);
      v12 = *(v11 + 64);
      [*(v11 + 120) timeIntervalSinceReferenceDate];
      [v12 setDouble:@"pluggedInDateInterval" forKey:?];
      v13 = [PowerUISmartChargeUtilities currentBatteryLevelWithContext:*(*(a1 + 32) + 32)];
      v14 = *(*(a1 + 32) + 24);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v29 = v13;
        _os_log_impl(&dword_21B766000, v14, OS_LOG_TYPE_DEFAULT, "Setting lastPluggedIn battery level to %ld", buf, 0xCu);
      }

      *(*(a1 + 32) + 144) = v13;
      [*(*(a1 + 32) + 64) setInteger:*(*(a1 + 32) + 144) forKey:@"pluggedInBatteryLevel"];
LABEL_17:

      goto LABEL_18;
    }

    v15 = v6[3];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(*(a1 + 32) + 120);
      *buf = 138412290;
      v29 = v16;
      _os_log_impl(&dword_21B766000, v15, OS_LOG_TYPE_DEFAULT, "Plugged in after a temporary unplug. Keeping lastPluggedInDate unchanged (%@).", buf, 0xCu);
    }
  }

  else
  {
    if (!v3)
    {
      v17 = v4[4];
      v18 = [MEMORY[0x277CFE338] keyPathForPluginStatus];
      v19 = [v17 lastModifiedDateForContextualKeyPath:v18];

      v20 = *(*(a1 + 32) + 24);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v29 = v19;
        _os_log_impl(&dword_21B766000, v20, OS_LOG_TYPE_DEFAULT, "Setting lastUnplugged date to %@", buf, 0xCu);
      }

      v21 = *(a1 + 32);
      v22 = *(v21 + 128);
      *(v21 + 128) = v19;
      v9 = v19;

      v23 = *(a1 + 32);
      v24 = *(v23 + 64);
      [*(v23 + 128) timeIntervalSinceReferenceDate];
      [v24 setDouble:@"unpluggedDateInterval" forKey:?];
      [*(a1 + 32) registerUnpluggedTimer:*(*(a1 + 32) + 80) afterTime:1800.0 withInterval:1.84467441e19];
      goto LABEL_17;
    }

    [v4 resetState];
  }

LABEL_18:
  v25 = *(a1 + 32);
  v26 = *(v25 + 48);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__PowerUIDemoCECManager_monitorPluggedInChange__block_invoke_133;
  block[3] = &unk_2782D3EA8;
  block[4] = v25;
  dispatch_async(v26, block);
}

- (void)monitorBatteryNotifications
{
  [(PowerUIDemoCECManager *)self monitorBatteryStateOfChargeChange];

  [(PowerUIDemoCECManager *)self monitorPluggedInChange];
}

- (void)checkPluggedInState
{
  v13 = *MEMORY[0x277D85DE8];
  if (![PowerUISmartChargeUtilities isPluggedInWithContext:self->_context])
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      v4 = MEMORY[0x277CBEAA8];
      v5 = log;
      v6 = [v4 now];
      v7 = 134218498;
      v8 = 0x403E000000000000;
      v9 = 2112;
      v10 = @"pluggedInDateInterval";
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&dword_21B766000, v5, OS_LOG_TYPE_DEFAULT, "Device no longer plugged into a power source after waiting %.0f mins (lastUnpluggedDate: %@,  current time: %@). Disengaging and resetting state.", &v7, 0x20u);
    }

    [(PowerUIDemoCECManager *)self handleDisengagement];
  }
}

- (void)setEnabledState:(BOOL)state
{
  if (state)
  {
    self->_currentState = 1;
    self->_isDemoCECEnabled = 1;
    [(NSUserDefaults *)self->_defaults removeObjectForKey:@"disabled"];
  }

  else
  {
    self->_currentState = 0;
    self->_isDemoCECEnabled = 0;
    [(NSUserDefaults *)self->_defaults setBool:1 forKey:@"disabled"];
  }

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    [(PowerUIDemoCECManager *)&self->_currentState setEnabledState:?];
  }

  [(NSUserDefaults *)self->_defaults setInteger:self->_currentState forKey:@"currentState"];
}

- (BOOL)isEnabled
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = +[PowerUICECUtilities isDemoCecFlagEnabledForStore];
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = v3;
    _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "DemoCEC flag enabled for store: %d", v6, 8u);
  }

  return v3;
}

- (void)handleIsEnabledChange
{
  v14 = *MEMORY[0x277D85DE8];
  isEnabled = [(PowerUIDemoCECManager *)self isEnabled];
  if (self->_isDemoCECEnabled == isEnabled)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      v5 = MEMORY[0x277CCABB0];
      currentState = self->_currentState;
      v7 = log;
      v8 = [v5 numberWithUnsignedInteger:currentState];
      v12 = 138412290;
      v13 = v8;
      _os_log_impl(&dword_21B766000, v7, OS_LOG_TYPE_DEFAULT, "isEnabled check returned same state (%@) as before. Doing nothing.", &v12, 0xCu);
    }
  }

  else
  {
    v9 = isEnabled;
    [(PowerUIDemoCECManager *)self setEnabledState:isEnabled];
    v10 = self->_log;
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      if (v11)
      {
        LOWORD(v12) = 0;
        _os_log_impl(&dword_21B766000, v10, OS_LOG_TYPE_DEFAULT, "Demo CEC now enabled. Triggering callback to evaluate engagement.", &v12, 2u);
      }

      [(PowerUIDemoCECManager *)self handleCallback:@"Feature enabled"];
    }

    else
    {
      if (v11)
      {
        LOWORD(v12) = 0;
        _os_log_impl(&dword_21B766000, v10, OS_LOG_TYPE_DEFAULT, "Demo CEC no longer enabled. Resetting state.", &v12, 2u);
      }

      [(PowerUIDemoCECManager *)self resetState];
    }
  }
}

- (BOOL)isWithinEngagedSession
{
  v3 = [(NSUserDefaults *)self->_defaults objectForKey:@"demoCecEngagement"];
  v4 = v3;
  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    log = self->_log;
    bOOLValue = 0;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Engagement result missing. Assuming device was not in an active engaged session.", v8, 2u);
      bOOLValue = 0;
    }
  }

  return bOOLValue;
}

- (void)recordSystemLoadAccum
{
  v32 = *MEMORY[0x277D85DE8];
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v4 = MEMORY[0x277CBEAA8];
    v5 = log;
    v6 = [v4 now];
    *buf = 138412290;
    v27 = v6;
    _os_log_impl(&dword_21B766000, v5, OS_LOG_TYPE_DEFAULT, "Acknowledged record system load timer at time %@", buf, 0xCu);
  }

  v7 = +[PowerUISmartChargeUtilities batteryProperties];
  v8 = [v7 objectForKeyedSubscript:@"PowerTelemetryData"];
  v9 = [PowerUISmartChargeUtilities numberForKey:@"AccumulatedSystemLoad" fromDict:v8 withDefault:-999];
  if ([v9 isEqual:&unk_282D4E350])
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      [PowerUIDemoCECManager recordSystemLoadAccum];
    }
  }

  else
  {
    v10 = [(NSUserDefaults *)self->_defaults objectForKey:@"demoCecSysLoadTimeline"];
    v11 = v10;
    if (v10)
    {
      dictionary = [v10 mutableCopy];
    }

    else
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
    }

    v13 = dictionary;
    v14 = [(PowerUICECGridDataManager *)self->_gridDataManager startTimeCurrentIntervalWithinForecastHorizon:28800.0];
    if (v14)
    {
      v15 = +[PowerUISmartChargeUtilities dateFormatter];
      v16 = [v15 stringFromDate:v14];

      [v13 setObject:v9 forKeyedSubscript:v16];
      [(NSUserDefaults *)self->_defaults setObject:v13 forKey:@"demoCecSysLoadTimeline"];
      v17 = self->_log;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412802;
        v27 = v9;
        v28 = 2112;
        v29 = v14;
        v30 = 2112;
        v31 = v13;
        _os_log_debug_impl(&dword_21B766000, v17, OS_LOG_TYPE_DEBUG, "Logged new accumulated load value of %@ for interval start date %@. Updated list of all logged values: %@.", buf, 0x20u);
      }
    }

    else
    {
      v24 = v13;
      v25 = v11;
      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
      {
        [PowerUIDemoCECManager recordSystemLoadAccum];
      }

      v16 = [(PowerUICECGridDataManager *)self->_gridDataManager lastIntervalStartTimeOverForecastHorizon:28800.0];
      v18 = [v16 dateByAddingTimeInterval:60.0];
      gridDataManager = self->_gridDataManager;
      v20 = [MEMORY[0x277CBEAA8] now];
      LODWORD(gridDataManager) = [(PowerUICECGridDataManager *)gridDataManager time:v20 isWithinIntervalWithStart:v18];

      if (gridDataManager)
      {
        v21 = +[PowerUISmartChargeUtilities dateFormatter];
        v22 = v18;
        v23 = [v21 stringFromDate:v18];

        v13 = v24;
        [v24 setObject:v9 forKeyedSubscript:v23];
        [(NSUserDefaults *)self->_defaults setObject:v24 forKey:@"demoCecSysLoadTimeline"];

        v11 = v25;
      }

      else
      {
        v22 = v18;
        v11 = v25;
        v13 = v24;
        if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
        {
          [PowerUIDemoCECManager recordSystemLoadAccum];
        }
      }
    }
  }
}

- (void)recordStartWallEnergyAccum
{
  v3 = +[PowerUISmartChargeUtilities batteryProperties];
  v4 = [v3 objectForKeyedSubscript:@"PowerTelemetryData"];
  v5 = [PowerUISmartChargeUtilities numberForKey:@"AccumulatedWallEnergyEstimate" fromDict:v4 withDefault:-999];
  if ([v5 isEqual:&unk_282D4E350])
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      [PowerUIDemoCECManager recordStartWallEnergyAccum];
    }
  }

  else
  {
    [(NSUserDefaults *)self->_defaults setObject:v5 forKey:@"demoCecAccumWallEnergyStart"];
  }
}

- (void)recordChargingStateChange:(BOOL)change atBatteryLevel:(int64_t)level duringCleanInterval:(BOOL)interval
{
  intervalCopy = interval;
  changeCopy = change;
  v21[3] = *MEMORY[0x277D85DE8];
  v9 = [(NSUserDefaults *)self->_defaults objectForKey:@"demoCecChargingStatusTimeline"];
  v10 = v9;
  if (v9)
  {
    dictionary = [v9 mutableCopy];
  }

  else
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
  }

  v12 = dictionary;
  v13 = +[PowerUISmartChargeUtilities dateFormatter];
  date = [MEMORY[0x277CBEAA8] date];
  v15 = [v13 stringFromDate:date];

  v20[0] = @"chargingStateIsCharging";
  v16 = [MEMORY[0x277CCABB0] numberWithBool:changeCopy];
  v21[0] = v16;
  v20[1] = @"battLevel";
  v17 = [MEMORY[0x277CCABB0] numberWithInteger:level];
  v21[1] = v17;
  v20[2] = @"wasCleanInterval";
  v18 = [MEMORY[0x277CCABB0] numberWithBool:intervalCopy];
  v21[2] = v18;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:3];
  [v12 setObject:v19 forKeyedSubscript:v15];

  [(NSUserDefaults *)self->_defaults setObject:v12 forKey:@"demoCecChargingStatusTimeline"];
}

- (double)totalWallEnergyOverSession
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = [(NSUserDefaults *)self->_defaults objectForKey:@"demoCecAccumWallEnergyStart"];
  if (v3)
  {
    v4 = +[PowerUISmartChargeUtilities batteryProperties];
    v5 = [v4 objectForKeyedSubscript:@"PowerTelemetryData"];
    v6 = [PowerUISmartChargeUtilities numberForKey:@"AccumulatedWallEnergyEstimate" fromDict:v5 withDefault:-999];
    if ([v6 isEqual:&unk_282D4E350])
    {
      v7 = -1.0;
      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
      {
        [PowerUIDemoCECManager totalWallEnergyOverSession];
      }
    }

    else
    {
      [v6 doubleValue];
      v9 = v8;
      [v3 doubleValue];
      v7 = (v9 - v10) * 0.000001;
      if (v7 >= 0.0)
      {
        log = self->_log;
        if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
        {
          v17 = 134217984;
          v18 = v7;
          _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Wall energy estimate over session %.2f Wh", &v17, 0xCu);
        }
      }

      else
      {
        v11 = [(NSUserDefaults *)self->_defaults objectForKey:@"deviceWasRestarted"];
        v12 = v11;
        if (v11)
        {
          bOOLValue = [v11 BOOLValue];
        }

        else
        {
          bOOLValue = 0;
        }

        v15 = self->_log;
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v17 = 138413058;
          v18 = *&v3;
          v19 = 2112;
          v20 = v6;
          v21 = 1024;
          v22 = bOOLValue;
          v23 = 2048;
          v24 = -1;
          _os_log_error_impl(&dword_21B766000, v15, OS_LOG_TYPE_ERROR, "Total wall energy computed over the session was negative (start value: %@. end value: %@. The device may have been restarted (deviceWasRestarted: %d), or the accumulator may have exceeded the 64-bit max. Returning %ld.", &v17, 0x26u);
        }

        v7 = -1.0;
      }
    }
  }

  else
  {
    v7 = -1.0;
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      [PowerUIDemoCECManager totalWallEnergyOverSession];
    }
  }

  return v7;
}

- (id)dateDictionaryFromDefaults:(id)defaults
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = [(NSUserDefaults *)self->_defaults objectForKey:defaults];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v20;
    *&v8 = 138412290;
    v18 = v8;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        v13 = [PowerUISmartChargeUtilities dateFormatter:v18];
        v14 = [v13 dateFromString:v12];

        if (v14)
        {
          v15 = [v6 objectForKeyedSubscript:v12];
          [dictionary setObject:v15 forKeyedSubscript:v14];
        }

        else
        {
          log = self->_log;
          if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
          {
            *buf = v18;
            v24 = v12;
            _os_log_debug_impl(&dword_21B766000, log, OS_LOG_TYPE_DEBUG, "Bad date formatting: unable to parse string date: %@ into date.", buf, 0xCu);
          }
        }
      }

      v9 = [v6 countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v9);
  }

  return dictionary;
}

- (double)systemLoadEmissionSavings:(int64_t)savings
{
  v66[1] = *MEMORY[0x277D85DE8];
  v5 = [(PowerUIDemoCECManager *)self dateDictionaryFromDefaults:@"demoCecSysLoadTimeline"];
  v6 = [(PowerUICECGridDataManager *)self->_gridDataManager lastIntervalStartTimeOverForecastHorizon:28800.0];
  v7 = [v6 dateByAddingTimeInterval:60.0];
  v55 = v5;
  v8 = [v5 objectForKey:v7];

  if (!v8)
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
    {
      [PowerUIDemoCECManager systemLoadEmissionSavings:];
    }

    [(PowerUIDemoCECManager *)self recordSystemLoadAccum];
    v9 = [(PowerUIDemoCECManager *)self dateDictionaryFromDefaults:@"demoCecSysLoadTimeline"];

    v55 = v9;
  }

  v10 = [(PowerUICECGridDataManager *)self->_gridDataManager storedForecastForDemoAnalyticsWithForecastHorizon:28800.0];
  v11 = [v10 mutableCopy];

  if (v11 && [v11 count])
  {
    allKeys = [v55 allKeys];
    v13 = [allKeys mutableCopy];

    v14 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"self" ascending:1];
    v66[0] = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v66 count:1];
    [v13 sortUsingDescriptors:v15];

    v16 = [PowerUICECGridDataForecastEntry alloc];
    lastObject = [v13 lastObject];
    v18 = [(PowerUICECGridDataForecastEntry *)v16 initWithDate:lastObject forecastValue:&unk_282D4E368];

    [v11 addObject:v18];
    v19 = 0.0;
    v20 = 0.0;
    if ([v11 count] != 1)
    {
      v48 = v18;
      v49 = v14;
      v50 = v13;
      savingsCopy = savings;
      selfCopy = self;
      v52 = v7;
      v53 = v6;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 1;
      do
      {
        v26 = v24;
        v27 = v23;
        v28 = [v11 objectAtIndexedSubscript:{v21, v48, v49, v50, savingsCopy, v52, v53}];
        v21 = v25;
        v29 = [v11 objectAtIndexedSubscript:v25];
        forecastDate = [v28 forecastDate];
        v24 = [v55 objectForKeyedSubscript:forecastDate];

        forecastDate2 = [v29 forecastDate];
        v23 = [v55 objectForKeyedSubscript:forecastDate2];

        if (v24 && v23)
        {
          [v23 doubleValue];
          v33 = v32;
          [v24 doubleValue];
          v35 = v33 - v34;
          forecastValue = [v28 forecastValue];

          if (v35 >= 0.0)
          {
            [forecastValue doubleValue];
            v20 = v20 + v35 / 3600000000.0 * v45;
            v19 = v19 + v35;
          }

          else
          {
            log = selfCopy->_log;
            if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
            {
              v38 = log;
              forecastDate3 = [v28 forecastDate];
              forecastDate4 = [v29 forecastDate];
              *buf = 138413314;
              v57 = forecastDate3;
              v58 = 2112;
              v59 = forecastDate4;
              v60 = 2112;
              v61 = v24;
              v62 = 2112;
              v63 = v23;
              v64 = 2048;
              v65 = v35;
              _os_log_impl(&dword_21B766000, v38, OS_LOG_TYPE_DEFAULT, "System load computed over the interval from %@ - %@ was negative. Previous accumulated load value: %@, current accumulated load value: %@, delta: %f. The device may have been restarted, or the accumulator may have exceeded the 64-bit max. Not using this hour's (load x emissions) in the savings computation.", buf, 0x34u);
            }
          }

          v22 = forecastValue;
        }

        else
        {
          v41 = selfCopy->_log;
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            v42 = v41;
            forecastDate5 = [v28 forecastDate];
            forecastDate6 = [v29 forecastDate];
            *buf = 138412546;
            v57 = forecastDate5;
            v58 = 2112;
            v59 = forecastDate6;
            _os_log_impl(&dword_21B766000, v42, OS_LOG_TYPE_DEFAULT, "Missing system load values for either the start or end of the interval (%@ - %@). Unable to compute the load over the interval. Not using this hour's (load x emissions) in the savings computation.", buf, 0x16u);
          }
        }

        v25 = v21 + 1;
      }

      while ([v11 count] - 1 > v21);

      v7 = v52;
      v6 = v53;
      v13 = v50;
      savings = savingsCopy;
      v18 = v48;
      v14 = v49;
    }

    v46 = v20 + v19 / -3600000000.0 * savings;
  }

  else
  {
    v46 = -1.0;
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      [PowerUIDemoCECManager systemLoadEmissionSavings:];
    }
  }

  return v46;
}

- (id)chargeHistoryAnalytics:(BOOL)analytics
{
  analyticsCopy = analytics;
  v123 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:&unk_282D4EDB8];
  v6 = +[PowerUICECGridDataManager sharedInstance];
  [v6 averageEmissionsOverForecastHorizon:28800.0];
  v8 = v7;

  if (v8 == -1.0)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      lastEngagementCheckDate = self->_lastEngagementCheckDate;
      *buf = 138412546;
      v120 = lastEngagementCheckDate;
      v121 = 2048;
      v122 = -1;
      _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Missing average emissions for session starting %@. Defaulting to %ld.", buf, 0x16u);
    }
  }

  v11 = [MEMORY[0x277CCABB0] numberWithDouble:v8];
  [v5 setObject:v11 forKeyedSubscript:@"avgEmissions"];

  [(PowerUIDemoCECManager *)self totalWallEnergyOverSession];
  v13 = v12;
  if (v12 == -1.0)
  {
    v14 = self->_log;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v120 = -1;
      _os_log_impl(&dword_21B766000, v14, OS_LOG_TYPE_DEFAULT, "Unable to compute total wall energy used over session. Defaulting to %ld.", buf, 0xCu);
    }
  }

  v15 = [MEMORY[0x277CCABB0] numberWithDouble:v13];
  [v5 setObject:v15 forKeyedSubscript:@"totalWallEnergy"];

  if (!analyticsCopy)
  {
    goto LABEL_76;
  }

  v88 = v5;
  v16 = [(NSUserDefaults *)self->_defaults objectForKey:@"demoCecChargingStatusTimeline"];
  selfCopy = self;
  v17 = self->_log;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v120 = v16;
    _os_log_impl(&dword_21B766000, v17, OS_LOG_TYPE_DEFAULT, "Charging history timeline %@", buf, 0xCu);
  }

  allKeys = [v16 allKeys];
  array = [MEMORY[0x277CBEB18] array];
  v110 = 0u;
  v111 = 0u;
  v112 = 0u;
  v113 = 0u;
  v20 = allKeys;
  v21 = [v20 countByEnumeratingWithState:&v110 objects:v118 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v111;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v111 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v110 + 1) + 8 * i);
        v26 = +[PowerUISmartChargeUtilities dateFormatter];
        v27 = [v26 dateFromString:v25];

        if (v27)
        {
          [array addObject:v27];
        }

        else
        {
          v28 = selfCopy->_log;
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
          {
            [(PowerUIDemoCECManager *)&v108 chargeHistoryAnalytics:v109, v28];
          }
        }
      }

      v22 = [v20 countByEnumeratingWithState:&v110 objects:v118 count:16];
    }

    while (v22);
  }

  v86 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"self" ascending:1];
  v117 = v86;
  v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v117 count:1];
  v30 = [array sortedArrayUsingDescriptors:v29];

  array2 = [MEMORY[0x277CBEB18] array];
  v104 = 0u;
  v105 = 0u;
  v106 = 0u;
  v107 = 0u;
  v32 = v30;
  v33 = [v32 countByEnumeratingWithState:&v104 objects:v116 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v105;
    do
    {
      for (j = 0; j != v34; ++j)
      {
        if (*v105 != v35)
        {
          objc_enumerationMutation(v32);
        }

        v37 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(array, "indexOfObject:", *(*(&v104 + 1) + 8 * j))}];
        [array2 addObject:v37];
      }

      v34 = [v32 countByEnumeratingWithState:&v104 objects:v116 count:16];
    }

    while (v34);
  }

  array3 = [MEMORY[0x277CBEB18] array];
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  v39 = array2;
  v40 = [v39 countByEnumeratingWithState:&v100 objects:v115 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = *v101;
    do
    {
      for (k = 0; k != v41; ++k)
      {
        if (*v101 != v42)
        {
          objc_enumerationMutation(v39);
        }

        v44 = [v20 objectAtIndex:{objc_msgSend(*(*(&v100 + 1) + 8 * k), "integerValue")}];
        [array3 addObject:v44];
      }

      v41 = [v39 countByEnumeratingWithState:&v100 objects:v115 count:16];
    }

    while (v41);
  }

  v91 = v32;

  array4 = [MEMORY[0x277CBEB18] array];
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  v46 = array3;
  v47 = [v46 countByEnumeratingWithState:&v96 objects:v114 count:16];
  if (v47)
  {
    v48 = v47;
    v49 = *v97;
    do
    {
      for (m = 0; m != v48; ++m)
      {
        if (*v97 != v49)
        {
          objc_enumerationMutation(v46);
        }

        v51 = [v16 objectForKey:*(*(&v96 + 1) + 8 * m)];
        [array4 addObject:v51];
      }

      v48 = [v46 countByEnumeratingWithState:&v96 objects:v114 count:16];
    }

    while (v48);
  }

  v53 = 0;
  if (![v91 count])
  {
    v89 = 0;
    v54 = 0;
    v55 = 0;
    v57 = 0.0;
    goto LABEL_62;
  }

  v87 = 0;
  v89 = 0;
  v54 = 0;
  v55 = 0;
  v56 = 0.0;
  *&v52 = 138412290;
  v85 = v52;
  v57 = 0.0;
  v58 = v91;
  do
  {
    v59 = v55;
    v60 = v54;
    v61 = v58;
    v62 = v59;
    v63 = [v61 objectAtIndexedSubscript:{v53, v85}];

    v94 = [array4 objectAtIndexedSubscript:v53];

    if (!v60)
    {
      goto LABEL_53;
    }

    v92 = v63;
    [v63 timeIntervalSinceDate:v60];
    v65 = v64;
    v93 = v62;
    v66 = [v62 objectForKey:@"chargingStateIsCharging"];
    if (([v66 BOOLValue] & 1) == 0)
    {

      goto LABEL_52;
    }

    v67 = [v94 objectForKey:@"chargingStateIsCharging"];
    bOOLValue = [v67 BOOLValue];

    if (bOOLValue)
    {
      goto LABEL_52;
    }

    v56 = v56 + v65;
    v68 = [v93 objectForKey:@"wasCleanInterval"];
    bOOLValue2 = [v68 BOOLValue];

    if (!bOOLValue2)
    {
      v57 = v57 + v65;
    }

    v70 = +[PowerUICECGridDataManager sharedInstance];
    v71 = [v70 emissionsForTime:v60 overForecastHorizon:28800.0];

    if (v71 != -1)
    {
      v87 += v71;
      ++v89;
LABEL_52:
      v63 = v92;
      v62 = v93;
      goto LABEL_53;
    }

    v72 = selfCopy->_log;
    v63 = v92;
    if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
    {
      *buf = v85;
      v120 = v60;
      _os_log_error_impl(&dword_21B766000, v72, OS_LOG_TYPE_ERROR, "Missing emissions for charge time %@", buf, 0xCu);
    }

    v62 = v93;
LABEL_53:
    v54 = v63;

    v55 = v94;
    ++v53;
    v58 = v91;
  }

  while ([v91 count] > v53);
  if (v56 > 0.0)
  {
    v73 = [MEMORY[0x277CCABB0] numberWithDouble:v56 / 60.0];
    [v88 setObject:v73 forKeyedSubscript:@"totalChargeTime"];

    v53 = v87;
    goto LABEL_64;
  }

  v53 = v87;
LABEL_62:
  v74 = selfCopy->_log;
  if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
  {
    [PowerUIDemoCECManager chargeHistoryAnalytics:v74];
  }

LABEL_64:
  v75 = [MEMORY[0x277CCABB0] numberWithDouble:v57 / 60.0];
  [v88 setObject:v75 forKeyedSubscript:@"emergencyChargeTime"];

  if (v89)
  {
    v76 = v53 / v89;
  }

  else
  {
    v77 = selfCopy->_log;
    v76 = -1;
    if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v120 = -1;
      _os_log_impl(&dword_21B766000, v77, OS_LOG_TYPE_DEFAULT, "Unable to compute average emissions over charging periods. Defaulting to %ld.", buf, 0xCu);
    }
  }

  v78 = [MEMORY[0x277CCABB0] numberWithInteger:v76];
  [v88 setObject:v78 forKeyedSubscript:@"chargingEmissions"];

  v79 = MEMORY[0x277CCABB0];
  [(PowerUIDemoCECManager *)selfCopy systemLoadEmissionSavings:v76];
  v80 = [v79 numberWithDouble:?];
  [v88 setObject:v80 forKeyedSubscript:@"emissionsSavingsFromSysLoad"];

  if (v13 == -1.0 || v76 == -1 || v8 == -1.0)
  {
    v83 = selfCopy->_log;
    v82 = v54;
    if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v120 = -1;
      _os_log_impl(&dword_21B766000, v83, OS_LOG_TYPE_DEFAULT, "Unable to compute emissions savings from wall energy over session. Defaulting to %ld.", buf, 0xCu);
    }

    [v88 setObject:&unk_282D4E380 forKeyedSubscript:@"emissionsSavingsFromWallEnergy"];
  }

  else
  {
    v81 = [MEMORY[0x277CCABB0] numberWithDouble:v13 * 0.001 * (v8 - v76)];
    [v88 setObject:v81 forKeyedSubscript:@"emissionsSavingsFromWallEnergy"];

    v82 = v54;
  }

  v5 = v88;
LABEL_76:

  return v5;
}

- (id)sessionEndCECAnalytics
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  isWithinEngagedSession = [(PowerUIDemoCECManager *)self isWithinEngagedSession];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:isWithinEngagedSession];
  [dictionary setObject:v5 forKeyedSubscript:@"engaged"];

  if (!isWithinEngagedSession)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[PowerUICECGridDataManager engagementDecisionReason](self->_gridDataManager, "engagementDecisionReason")}];
    [dictionary setObject:v6 forKeyedSubscript:@"notEngagedReason"];
  }

  balancingAuthorityName = [(PowerUICECGridDataManager *)self->_gridDataManager balancingAuthorityName];
  [dictionary setObject:balancingAuthorityName forKeyedSubscript:@"balancingAuthority"];

  lastEngagementCheckDate = self->_lastEngagementCheckDate;
  if (lastEngagementCheckDate)
  {
    [(NSDate *)lastEngagementCheckDate timeIntervalSinceNow];
    v10 = [MEMORY[0x277CCABB0] numberWithInt:(v9 / -60.0)];
    [dictionary setObject:v10 forKeyedSubscript:@"sessionLength"];
  }

  else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    [PowerUIDemoCECManager sessionEndCECAnalytics];
  }

  v11 = [(NSUserDefaults *)self->_defaults objectForKey:@"deviceWasRestarted"];
  v12 = v11;
  if (v11)
  {
    bOOLValue = [v11 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  v14 = [MEMORY[0x277CCABB0] numberWithBool:bOOLValue];
  [dictionary setObject:v14 forKeyedSubscript:@"deviceWasRestarted"];

  v15 = [(PowerUIDemoCECManager *)self chargeHistoryAnalytics:isWithinEngagedSession];
  [dictionary addEntriesFromDictionary:v15];

  return dictionary;
}

- (void)recordAnalytics
{
  v8 = *MEMORY[0x277D85DE8];
  sessionEndCECAnalytics = [(PowerUIDemoCECManager *)self sessionEndCECAnalytics];
  if ([sessionEndCECAnalytics count])
  {
    v5 = sessionEndCECAnalytics;
    AnalyticsSendEventLazy();
  }

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v7 = sessionEndCECAnalytics;
    _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Reported Demo CEC metrics to CoreAnalytics %@", buf, 0xCu);
  }

  [(PowerUIDemoCECManager *)self clearAnalytics];
}

- (void)clearAnalytics
{
  [(NSUserDefaults *)self->_defaults removeObjectForKey:@"demoCecEngagement"];
  [(NSUserDefaults *)self->_defaults removeObjectForKey:@"demoCecChargingStatusTimeline"];
  [(NSUserDefaults *)self->_defaults removeObjectForKey:@"demoCecAccumWallEnergyStart"];
  defaults = self->_defaults;

  [(NSUserDefaults *)defaults removeObjectForKey:@"demoCecSysLoadTimeline"];
}

- (void)registerCleanSegmentTimer:(os_log_t)log afterTime:(double)a2 withInterval:.cold.1(os_log_t log, double a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = a2 / 60.0;
  _os_log_debug_impl(&dword_21B766000, log, OS_LOG_TYPE_DEBUG, "Registering clean segment timer for waitTime: %.0f minutes", &v2, 0xCu);
}

- (void)setEnabledState:(uint64_t *)a1 .cold.1(uint64_t *a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = *a1;
  v4 = a2;
  v5 = [v2 numberWithUnsignedInteger:v3];
  LODWORD(v12) = 138412290;
  *(&v12 + 4) = v5;
  OUTLINED_FUNCTION_3_0(&dword_21B766000, v6, v7, "Demo CEC State set to: %@", v8, v9, v10, v11, v12, DWORD2(v12));
}

- (void)chargeHistoryAnalytics:(os_log_t)log .cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&dword_21B766000, log, OS_LOG_TYPE_DEBUG, "Bad date formatting: unable to parse string date into date. Not including in analytics.", buf, 2u);
}

- (void)chargeHistoryAnalytics:(os_log_t)log .cold.2(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 134217984;
  v2 = -1;
  _os_log_error_impl(&dword_21B766000, log, OS_LOG_TYPE_ERROR, "Error computing total charge time. Defaulting to %ld.", &v1, 0xCu);
}

@end