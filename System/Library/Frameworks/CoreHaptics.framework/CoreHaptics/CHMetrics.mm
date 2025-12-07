@interface CHMetrics
- (BOOL)isEnabled;
- (BOOL)isEventType:(unint64_t)type inList:(vector<unsigned)long;
- (CHMetrics)initWithEngine:(id)engine audioSessionID:(unsigned int)d sessionIsShared:(BOOL)shared isSPI:(BOOL)i;
- (float)getLoopsForAdvancedPlayer:(id)player endTime:(double)time;
- (float)getLoopsForPlayer:(id)player endTime:(double)time;
- (id).cxx_construct;
- (id)continousDictionary:(id)dictionary slot:(unint64_t)slot intensity:(float)intensity;
- (id)getIDForPlayer:(id)player;
- (id)getMetricsForPlayer:(id)player;
- (id)intensityBinKeyFromValue:(float)value;
- (id)legacyTransientDictionary:(id)dictionary eventType:(unint64_t)type intensity:(float)intensity;
- (id)transientDictionary:(id)dictionary index:(unint64_t)index intensity:(float)intensity;
- (void)addPatternLibraryMetric:(id)metric;
- (void)dealloc;
- (void)dispatchOnLocal:(id)local;
- (void)handleActionForPlayer:(id)player action:(int64_t)action time:(double)time isAdvanced:(BOOL)advanced;
- (void)handleEngineStart;
- (void)handleEngineStop;
- (void)handleFinishedForPlayersAtTime:(double)time;
- (void)handleInitForPlayer:(id)player events:(id)events isAdvanced:(BOOL)advanced patternID:(id)d;
- (void)handleParamCurveEncountered;
- (void)handleStartForPlayer:(id)player time:(double)time isAdvanced:(BOOL)advanced patternID:(id)d;
- (void)logMetric:(id)metric value:(id)value;
- (void)logPatternLibraryMetric:(id)metric;
- (void)logPowerLogMetric:(id)metric;
- (void)markAdvancedPlaybackAction:(id)action action:(int64_t)a4 time:(float)time;
- (void)markPlaybackAction:(id)action action:(int64_t)a4 time:(float)time;
- (void)prepareAdvancedPlaybackData:(id)data events:(id)events;
- (void)prepareData:(id)data events:(id)events;
- (void)preparePlaybackData:(id)data events:(id)events;
- (void)removePlaybackData:(id)data;
- (void)resetAdvancedPlaybackData:(id)data;
- (void)resetPlaybackData:(id)data;
- (void)retainData:(id)data forTestingPlayer:(id)player;
- (void)sendDetailedMetricsForPlayerID:(id)d endTime:(float)time;
- (void)sendPatternLibraryMetrics;
- (void)setMetricsTestModeEnabled;
- (void)setReporter;
- (void)startReporter;
- (void)stopReporter;
@end

@implementation CHMetrics

- (id).cxx_construct
{
  *(self + 18) = 0;
  *(self + 7) = 0u;
  *(self + 8) = 0u;
  *(self + 5) = 0u;
  *(self + 6) = 0u;
  *(self + 3) = 0u;
  *(self + 4) = 0u;
  *(self + 38) = 1065353216;
  return self;
}

- (BOOL)isEnabled
{
  v12 = *MEMORY[0x277D85DE8];
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"hapticmetrics_client_disabled", @"com.apple.corehaptics", 0);
  if (AppBooleanValue)
  {
    if (kHMETScope)
    {
      v3 = *kHMETScope;
      if (!v3)
      {
        return AppBooleanValue == 0;
      }
    }

    else
    {
      v3 = MEMORY[0x277D86220];
      v4 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v6 = 136315650;
      v7 = "CHMetrics.mm";
      v8 = 1024;
      v9 = 409;
      v10 = 2080;
      v11 = "[CHMetrics isEnabled]";
      _os_log_impl(&dword_21569A000, v3, OS_LOG_TYPE_INFO, "%25s:%-5d %s: client side metrics DISABLED (defaults write com.apple.corehaptics hapticmetrics_client_disabled == true)", &v6, 0x1Cu);
    }
  }

  return AppBooleanValue == 0;
}

- (void)setReporter
{
  v34[1] = *MEMORY[0x277D85DE8];
  v21 = [MEMORY[0x277CEFC98] retrieveSessionWithID:self->_audioSessionID];
  if (!self->_sessionIsShared)
  {
    self->_reporterID = CAReportingClientCreateReporterID();
    CAReportingClientSetAudioServiceType();
    reporterID = self->_reporterID;
    v22 = 0;
    [v21 setReporterID:reporterID error:&v22];
    v7 = v22;
    v8 = v7;
    if (v7)
    {
      code = [v7 code];
    }

    else
    {
      code = 0;
    }

    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    if (!bundleIdentifier || ([MEMORY[0x277CCA8D8] mainBundle], v2 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v2, "bundleIdentifier"), v3 = objc_claimAutoreleasedReturnValue(), (objc_msgSend(v3, "isEqual:", @"Unknown") & 1) != 0))
    {
      processInfo = [MEMORY[0x277CCAC38] processInfo];
      processName = [processInfo processName];

      if (!bundleIdentifier)
      {
        goto LABEL_17;
      }
    }

    else
    {
      mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
      processName = [mainBundle2 bundleIdentifier];
    }

LABEL_17:
    v33 = @"HostApplicationDisplayID";
    v34[0] = processName;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:&v33 count:1];
    CAReportingClientSetConfiguration();

    if (code)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  self->_reporterID = [v21 reporterID];
  if (!kHMETScope)
  {
    v5 = MEMORY[0x277D86220];
    v10 = MEMORY[0x277D86220];
    goto LABEL_8;
  }

  v5 = *kHMETScope;
  if (v5)
  {
LABEL_8:
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v11 = self->_reporterID;
      *buf = 136315906;
      v24 = "CHMetrics.mm";
      v25 = 1024;
      v26 = 361;
      v27 = 2080;
      v28 = "[CHMetrics setReporter]";
      v29 = 2048;
      v30 = v11;
      _os_log_impl(&dword_21569A000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: updating haptics reporter with audio session reporter id %lld", buf, 0x26u);
    }
  }

LABEL_18:
  if (self->_reporterID > 0)
  {
    goto LABEL_27;
  }

  code = 0;
LABEL_20:
  if (kHMETScope)
  {
    v18 = *kHMETScope;
    if (!v18)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v18 = MEMORY[0x277D86220];
    v19 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    engineID = self->_engineID;
    *buf = 136316162;
    v24 = "CHMetrics.mm";
    v25 = 1024;
    v26 = 378;
    v27 = 2080;
    v28 = "[CHMetrics setReporter]";
    v29 = 2112;
    v30 = engineID;
    v31 = 1024;
    v32 = code;
    _os_log_impl(&dword_21569A000, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: unable to set reporter for engine %@: error %d", buf, 0x2Cu);
  }

LABEL_27:
}

- (void)handleEngineStart
{
  [(CHMetrics *)self startReporter];
  [(CHMetrics *)self logPowerLogMetric:@"EngineOn"];
  if (self->_isSPI)
  {
    v3 = @"startHapticEngine_SPI";
  }

  else
  {
    v3 = @"startHapticEngine";
  }

  [(CHMetrics *)self logMetric:v3 value:&unk_28279D810];
}

- (void)startReporter
{
  v14 = *MEMORY[0x277D85DE8];
  if (!self->_sessionIsShared)
  {
    if (kHMETScope)
    {
      v3 = *kHMETScope;
      if (!v3)
      {
LABEL_9:
        CAReportingClientStartReporter();
        return;
      }
    }

    else
    {
      v3 = MEMORY[0x277D86220];
      v4 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      engineID = self->_engineID;
      v6 = 136315906;
      v7 = "CHMetrics.mm";
      v8 = 1024;
      v9 = 386;
      v10 = 2080;
      v11 = "[CHMetrics startReporter]";
      v12 = 2112;
      v13 = engineID;
      _os_log_impl(&dword_21569A000, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: starting reporter for engine %@", &v6, 0x26u);
    }

    goto LABEL_9;
  }
}

- (void)handleEngineStop
{
  [(CHMetrics *)self logPowerLogMetric:@"EngineOff"];
  [(CHMetrics *)self sendPatternLibraryMetrics];

  [(CHMetrics *)self stopReporter];
}

- (void)sendPatternLibraryMetrics
{
  v30 = *MEMORY[0x277D85DE8];
  if (kHMETScope)
  {
    v3 = *kHMETScope;
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v3 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  v5 = v3;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = [(NSMutableDictionary *)self->_patternLibraryData count];
    *buf = 136315906;
    v23 = "CHMetrics.mm";
    v24 = 1024;
    v25 = 468;
    v26 = 2080;
    v27 = "[CHMetrics sendPatternLibraryMetrics]";
    v28 = 2048;
    v29 = v6;
    _os_log_impl(&dword_21569A000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: sending %lu pattern library metrics", buf, 0x26u);
  }

LABEL_8:
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  obj = self->_patternLibraryData;
  v7 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v7)
  {
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v20[0] = v10;
        v19[0] = @"patternID";
        v19[1] = @"Count";
        v11 = [(NSMutableDictionary *)self->_patternLibraryData objectForKeyedSubscript:v10];
        v20[1] = v11;
        v19[2] = @"SPI";
        v12 = [MEMORY[0x277CCABB0] numberWithBool:self->_isSPI];
        v20[2] = v12;
        v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:3];

        CAReportingClientSendMessage();
      }

      v7 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v7);
  }

  [(NSMutableDictionary *)self->_patternLibraryData removeAllObjects];
}

- (void)stopReporter
{
  v14 = *MEMORY[0x277D85DE8];
  if (!self->_sessionIsShared)
  {
    if (kHMETScope)
    {
      v3 = *kHMETScope;
      if (!v3)
      {
LABEL_9:
        CAReportingClientStopReporter();
        return;
      }
    }

    else
    {
      v3 = MEMORY[0x277D86220];
      v4 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      engineID = self->_engineID;
      v6 = 136315906;
      v7 = "CHMetrics.mm";
      v8 = 1024;
      v9 = 395;
      v10 = 2080;
      v11 = "[CHMetrics stopReporter]";
      v12 = 2112;
      v13 = engineID;
      _os_log_impl(&dword_21569A000, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: stopping reporter for engine %@", &v6, 0x26u);
    }

    goto LABEL_9;
  }
}

- (CHMetrics)initWithEngine:(id)engine audioSessionID:(unsigned int)d sessionIsShared:(BOOL)shared isSPI:(BOOL)i
{
  v89[1] = *MEMORY[0x277D85DE8];
  engineCopy = engine;
  v36.receiver = self;
  v36.super_class = CHMetrics;
  v11 = [(CHMetrics *)&v36 init];
  v12 = v11;
  if (!v11)
  {
LABEL_29:
    v25 = v12;
    goto LABEL_30;
  }

  if (kHMETScope)
  {
    v13 = *kHMETScope;
    if (!v13)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v13 = MEMORY[0x277D86220];
    v14 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    *&buf[4] = "CHMetrics.mm";
    *&buf[12] = 1024;
    *&buf[14] = 123;
    *&buf[18] = 2080;
    *&buf[20] = "[CHMetrics initWithEngine:audioSessionID:sessionIsShared:isSPI:]";
    *&buf[28] = 2112;
    *&buf[30] = engineCopy;
    _os_log_impl(&dword_21569A000, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: initializing metrics for engine %@", buf, 0x26u);
  }

LABEL_9:
  if ([v11 isEnabled])
  {
    v15 = dispatch_queue_create("CHMetricsDispatchQueue", 0);
    v16 = *(v11 + 4);
    *(v11 + 4) = v15;

    engineCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%p", engineCopy];
    v18 = *(v11 + 2);
    *(v11 + 2) = engineCopy;

    *(v11 + 1) = 1;
    *(v11 + 6) = d;
    v11[28] = shared;
    v11[29] = i;
    [v11 setReporter];
    v19 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v20 = *(v11 + 21);
    *(v11 + 21) = v19;

    v21 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v22 = *(v11 + 20);
    *(v11 + 20) = v21;

    *(v11 + 5) = 0x3F3333333ECCCCCDLL;
    serverConfig = [engineCopy serverConfig];
    v24 = serverConfig;
    if (serverConfig)
    {
      objc_msgSend_hapticTransientIDs(serverConfig);
    }

    else
    {
      memset(buf, 0, 24);
    }

    v26 = *(v11 + 6);
    if (v26)
    {
      *(v11 + 7) = v26;
      operator delete(v26);
      *(v11 + 6) = 0;
      *(v11 + 7) = 0;
      *(v11 + 8) = 0;
    }

    *(v11 + 3) = *buf;
    *(v11 + 8) = *&buf[16];
    memset(buf, 0, 24);

    serverConfig2 = [engineCopy serverConfig];
    v28 = serverConfig2;
    if (serverConfig2)
    {
      objc_msgSend_hapticContinuousSustainedIDs(serverConfig2);
    }

    else
    {
      memset(buf, 0, 24);
    }

    v29 = *(v11 + 9);
    if (v29)
    {
      *(v11 + 10) = v29;
      operator delete(v29);
      *(v11 + 9) = 0;
      *(v11 + 10) = 0;
      *(v11 + 11) = 0;
    }

    *(v11 + 72) = *buf;
    *(v11 + 11) = *&buf[16];
    memset(buf, 0, 24);

    serverConfig3 = [engineCopy serverConfig];
    v31 = serverConfig3;
    if (serverConfig3)
    {
      objc_msgSend_hapticContinuousNonsustainedIDs(serverConfig3);
    }

    else
    {
      memset(buf, 0, 24);
    }

    v32 = *(v11 + 12);
    if (v32)
    {
      *(v11 + 13) = v32;
      operator delete(v32);
      *(v11 + 12) = 0;
      *(v11 + 13) = 0;
      *(v11 + 14) = 0;
    }

    *(v11 + 6) = *buf;
    *(v11 + 14) = *&buf[16];
    memset(buf, 0, 24);

    *buf = 8021;
    *&buf[8] = @"MicroTap2";
    *&buf[16] = 11093;
    *&buf[24] = @"MicroTap3";
    *&buf[32] = 14165;
    v38 = @"MicroTap4";
    v39 = 17237;
    v40 = @"MicroTap5";
    v41 = 20309;
    v42 = @"MicroTap6";
    v43 = 23381;
    v44 = @"MicroTap7";
    v45 = 26453;
    v46 = @"MicroTap8";
    v47 = 29525;
    v48 = @"MicroTap9";
    v49 = 8022;
    v50 = @"MiniTap2";
    v51 = 11094;
    v52 = @"MiniTap3";
    v53 = 14166;
    v54 = @"MiniTap4";
    v55 = 17238;
    v56 = @"MiniTap5";
    v57 = 20310;
    v58 = @"MiniTap6";
    v59 = 23382;
    v60 = @"MiniTap7";
    v61 = 26454;
    v62 = @"MiniTap8";
    v63 = 29526;
    v64 = @"MiniTap9";
    v65 = 8023;
    v66 = @"FullTap2";
    v67 = 11095;
    v68 = @"FullTap3";
    v69 = 14167;
    v70 = @"FullTap4";
    v71 = 17239;
    v72 = @"FullTap5";
    v73 = 20311;
    v74 = @"FullTap6";
    v75 = 23383;
    v76 = @"FullTap7";
    v77 = 26455;
    v78 = @"FullTap8";
    v79 = 29527;
    v80 = @"FullTap9";
    v81 = 32512;
    v82 = @"KBKey";
    v83 = 32557;
    v84 = @"KBDown";
    v85 = 29485;
    v86 = @"KBModifier";
    v87 = 32556;
    v88 = @"WoT";
    std::__hash_table<std::__hash_value_type<AVHapticPlayerEventType,NSString * {__strong}>,std::__unordered_map_hasher<AVHapticPlayerEventType,std::__hash_value_type<AVHapticPlayerEventType,NSString * {__strong}>,std::hash<AVHapticPlayerEventType>,std::equal_to<AVHapticPlayerEventType>,true>,std::__unordered_map_equal<AVHapticPlayerEventType,std::__hash_value_type<AVHapticPlayerEventType,NSString * {__strong}>,std::equal_to<AVHapticPlayerEventType>,std::hash<AVHapticPlayerEventType>,true>,std::allocator<std::__hash_value_type<AVHapticPlayerEventType,NSString * {__strong}>>>::__assign_unique<std::pair<AVHapticPlayerEventType const,NSString * {__strong}> const*>(v11 + 15, buf, v89);
    for (i = 440; i != -8; i -= 16)
    {
    }

    v34 = *(v12 + 23);
    *(v12 + 23) = 0;

    *(v12 + 176) = 0;
    goto LABEL_29;
  }

  v25 = 0;
LABEL_30:

  return v25;
}

- (void)dealloc
{
  v15 = *MEMORY[0x277D85DE8];
  if (!self->_sessionIsShared && self->_reporterID >= 2)
  {
    CAReportingClientDestroyReporterID();
  }

  if (kHMETScope)
  {
    v3 = *kHMETScope;
    if (!v3)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v3 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    engineID = self->_engineID;
    *buf = 136315906;
    v8 = "CHMetrics.mm";
    v9 = 1024;
    v10 = 206;
    v11 = 2080;
    v12 = "[CHMetrics dealloc]";
    v13 = 2112;
    v14 = engineID;
    _os_log_impl(&dword_21569A000, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: deallocating metrics for engine %@", buf, 0x26u);
  }

LABEL_11:
  v6.receiver = self;
  v6.super_class = CHMetrics;
  [(CHMetrics *)&v6 dealloc];
}

- (void)handleParamCurveEncountered
{
  if (self->_isSPI)
  {
    v2 = @"initParameterCurve_SPI";
  }

  else
  {
    v2 = @"initParameterCurve";
  }

  [(CHMetrics *)self logMetric:v2 value:&unk_28279D810];
}

- (void)handleInitForPlayer:(id)player events:(id)events isAdvanced:(BOOL)advanced patternID:(id)d
{
  playerCopy = player;
  eventsCopy = events;
  dCopy = d;
  if (self->_isSPI)
  {
    v13 = @"initPatternPlayer_SPI";
  }

  else
  {
    v13 = @"initPatternPlayer";
  }

  [(CHMetrics *)self logMetric:v13 value:&unk_28279D810];
  if (!dCopy)
  {
    v14 = [(CHMetrics *)self getIDForPlayer:playerCopy];
    objc_initWeak(&location, self);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __61__CHMetrics_handleInitForPlayer_events_isAdvanced_patternID___block_invoke;
    v16[3] = &unk_2781C91E8;
    objc_copyWeak(&v19, &location);
    advancedCopy = advanced;
    v17 = v14;
    v18 = eventsCopy;
    v15 = v14;
    [(CHMetrics *)self dispatchOnLocal:v16];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }
}

void __61__CHMetrics_handleInitForPlayer_events_isAdvanced_patternID___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    if (*(a1 + 56) == 1)
    {
      [WeakRetained prepareAdvancedPlaybackData:v2 events:v3];
    }

    else
    {
      [WeakRetained preparePlaybackData:v2 events:v3];
    }
  }
}

- (void)handleStartForPlayer:(id)player time:(double)time isAdvanced:(BOOL)advanced patternID:(id)d
{
  advancedCopy = advanced;
  playerCopy = player;
  dCopy = d;
  if (!dCopy)
  {
    [(CHMetrics *)self handleActionForPlayer:playerCopy action:0 time:advancedCopy isAdvanced:time];
  }

  [(CHMetrics *)self addPatternLibraryMetric:dCopy];
}

- (void)handleActionForPlayer:(id)player action:(int64_t)action time:(double)time isAdvanced:(BOOL)advanced
{
  playerCopy = player;
  v11 = [(CHMetrics *)self getIDForPlayer:playerCopy];
  objc_initWeak(&location, self);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __58__CHMetrics_handleActionForPlayer_action_time_isAdvanced___block_invoke;
  v13[3] = &unk_2781C9210;
  objc_copyWeak(v15, &location);
  advancedCopy = advanced;
  v14 = v11;
  v15[1] = action;
  v15[2] = *&time;
  v12 = v11;
  [(CHMetrics *)self dispatchOnLocal:v13];

  objc_destroyWeak(v15);
  objc_destroyWeak(&location);
}

void __58__CHMetrics_handleActionForPlayer_action_time_isAdvanced___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 48);
    v4 = *(a1 + 56);
    *&v4 = v4;
    if (*(a1 + 64) == 1)
    {
      [WeakRetained markAdvancedPlaybackAction:v2 action:v3 time:v4];
    }

    else
    {
      [WeakRetained markPlaybackAction:v2 action:v3 time:v4];
    }
  }
}

- (void)handleFinishedForPlayersAtTime:(double)time
{
  v18 = *MEMORY[0x277D85DE8];
  if (kHMETScope)
  {
    v5 = *kHMETScope;
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    engineID = self->_engineID;
    *buf = 136315906;
    v11 = "CHMetrics.mm";
    v12 = 1024;
    v13 = 324;
    v14 = 2080;
    v15 = "[CHMetrics handleFinishedForPlayersAtTime:]";
    v16 = 2112;
    v17 = engineID;
    _os_log_impl(&dword_21569A000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: flushing all player data for engine %@", buf, 0x26u);
  }

LABEL_8:
  objc_initWeak(buf, self);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __44__CHMetrics_handleFinishedForPlayersAtTime___block_invoke;
  v8[3] = &unk_2781C9238;
  objc_copyWeak(v9, buf);
  v9[1] = *&time;
  [(CHMetrics *)self dispatchOnLocal:v8];
  objc_destroyWeak(v9);
  objc_destroyWeak(buf);
}

void __44__CHMetrics_handleFinishedForPlayersAtTime___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v4 = WeakRetained[20];
    v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = *v10;
      do
      {
        v7 = 0;
        do
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(a1 + 40);
          *&v8 = v8;
          [v3 sendDetailedMetricsForPlayerID:*(*(&v9 + 1) + 8 * v7++) endTime:{v8, v9}];
        }

        while (v5 != v7);
        v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v5);
    }
  }
}

- (id)getIDForPlayer:(id)player
{
  player = [MEMORY[0x277CCACA8] stringWithFormat:@"%p", player];

  return player;
}

- (void)dispatchOnLocal:(id)local
{
  v20 = *MEMORY[0x277D85DE8];
  localCopy = local;
  if (kHMETScope)
  {
    if (*(kHMETScope + 8))
    {
      v5 = *kHMETScope;
      if (v5)
      {
        v6 = v5;
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
        {
          v7 = MEMORY[0x21606F540](localCopy);
          *buf = 136315906;
          v13 = "CHMetrics.mm";
          v14 = 1024;
          v15 = 423;
          v16 = 2080;
          v17 = "[CHMetrics dispatchOnLocal:]";
          v18 = 2048;
          v19 = v7;
          _os_log_impl(&dword_21569A000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: <Dispatching block %p async...>", buf, 0x26u);
        }
      }
    }
  }

  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__CHMetrics_dispatchOnLocal___block_invoke;
  block[3] = &unk_2781C9260;
  v11 = localCopy;
  v9 = localCopy;
  dispatch_async(dispatchQueue, block);
}

void __29__CHMetrics_dispatchOnLocal___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  (*(*(a1 + 32) + 16))();
  if (kHMETScope)
  {
    if (*(kHMETScope + 8))
    {
      v1 = *kHMETScope;
      if (v1)
      {
        v2 = v1;
        if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
        {
          v3 = 136315650;
          v4 = "CHMetrics.mm";
          v5 = 1024;
          v6 = 426;
          v7 = 2080;
          v8 = "[CHMetrics dispatchOnLocal:]_block_invoke";
          _os_log_impl(&dword_21569A000, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: <Block async dispatch complete>", &v3, 0x1Cu);
        }
      }
    }
  }
}

- (void)logMetric:(id)metric value:(id)value
{
  v18 = *MEMORY[0x277D85DE8];
  metricCopy = metric;
  valueCopy = value;
  if (kHMETScope)
  {
    v7 = *kHMETScope;
    if (!v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = MEMORY[0x277D86220];
    v8 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    v11 = "CHMetrics.mm";
    v12 = 1024;
    v13 = 432;
    v14 = 2080;
    v15 = "[CHMetrics logMetric:value:]";
    v16 = 2112;
    v17 = metricCopy;
    _os_log_impl(&dword_21569A000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: logging metrics for %@", buf, 0x26u);
  }

LABEL_8:
  v9 = [MEMORY[0x277CBEB38] dictionaryWithObjectsAndKeys:{valueCopy, metricCopy, 0}];
  CAReportingClientSendMessage();
}

- (void)logPowerLogMetric:(id)metric
{
  v17 = *MEMORY[0x277D85DE8];
  metricCopy = metric;
  if (kHMETScope)
  {
    v4 = *kHMETScope;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v4 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    v10 = "CHMetrics.mm";
    v11 = 1024;
    v12 = 439;
    v13 = 2080;
    v14 = "[CHMetrics logPowerLogMetric:]";
    v15 = 2112;
    v16 = metricCopy;
    _os_log_impl(&dword_21569A000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: logging PowerLog metrics for %@", buf, 0x26u);
  }

LABEL_8:
  v7 = @"EngineState";
  v8 = metricCopy;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  CAReportingClientSendMessage();
}

- (void)addPatternLibraryMetric:(id)metric
{
  metricCopy = metric;
  if (metricCopy)
  {
    v4 = [(NSMutableDictionary *)self->_patternLibraryData objectForKey:metricCopy];

    if (v4)
    {
      v5 = MEMORY[0x277CCABB0];
      v6 = [(NSMutableDictionary *)self->_patternLibraryData objectForKeyedSubscript:metricCopy];
      v7 = [v5 numberWithInt:{objc_msgSend(v6, "intValue") + 1}];
      [(NSMutableDictionary *)self->_patternLibraryData setObject:v7 forKeyedSubscript:metricCopy];
    }

    else
    {
      [(NSMutableDictionary *)self->_patternLibraryData setObject:&unk_28279D810 forKeyedSubscript:metricCopy];
    }
  }
}

- (void)logPatternLibraryMetric:(id)metric
{
  v20 = *MEMORY[0x277D85DE8];
  metricCopy = metric;
  v5 = metricCopy;
  if (metricCopy && [metricCopy length])
  {
    if (kHMETScope)
    {
      v6 = *kHMETScope;
      if (!v6)
      {
LABEL_10:
        v8 = [MEMORY[0x277CCABB0] numberWithBool:{self->_isSPI, @"patternID", @"Count", @"SPI", v5, &unk_28279D810}];
        v11[2] = v8;
        v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:3];

        CAReportingClientSendMessage();
        goto LABEL_11;
      }
    }

    else
    {
      v6 = MEMORY[0x277D86220];
      v7 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      v13 = "CHMetrics.mm";
      v14 = 1024;
      v15 = 489;
      v16 = 2080;
      v17 = "[CHMetrics logPatternLibraryMetric:]";
      v18 = 2112;
      v19 = v5;
      _os_log_impl(&dword_21569A000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: logging metrics for pattern library %@", buf, 0x26u);
    }

    goto LABEL_10;
  }

LABEL_11:
}

- (void)sendDetailedMetricsForPlayerID:(id)d endTime:(float)time
{
  v101 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v66 = [(NSMutableDictionary *)self->_playerData objectForKeyedSubscript:?];
  v65 = [v66 objectForKeyedSubscript:@"transientData"];
  v64 = [v66 objectForKeyedSubscript:@"continuousData"];
  v6 = [v66 objectForKeyedSubscript:@"isAdvanced"];
  bOOLValue = [v6 BOOLValue];

  if (bOOLValue)
  {
    v72 = [v66 objectForKeyedSubscript:@"advancedPlayback"];
    if (!v72 || ([v72 objectForKeyedSubscript:@"playbackLastAction"], v8 = objc_claimAutoreleasedReturnValue(), v8, !v8))
    {
      if (kHMETScope)
      {
        allValues2 = *kHMETScope;
        if (!allValues2)
        {
          goto LABEL_79;
        }
      }

      else
      {
        allValues2 = MEMORY[0x277D86220];
        v17 = MEMORY[0x277D86220];
      }

      if (!os_log_type_enabled(allValues2, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_78;
      }

      *buf = 136315650;
      v88 = "CHMetrics.mm";
      v89 = 1024;
      v90 = 530;
      v91 = 2080;
      v92 = "[CHMetrics sendDetailedMetricsForPlayerID:endTime:]";
      v18 = "%25s:%-5d %s: skipping metrics - no advanced playback actions recorded";
      goto LABEL_77;
    }

    v9 = [v72 objectForKeyedSubscript:@"firstStartTime"];
    [v9 floatValue];
    v11 = v10;

    if (v11 > time)
    {
      if (kHMETScope)
      {
        allValues2 = *kHMETScope;
        if (!allValues2)
        {
          goto LABEL_79;
        }
      }

      else
      {
        allValues2 = MEMORY[0x277D86220];
        v62 = MEMORY[0x277D86220];
      }

      if (!os_log_type_enabled(allValues2, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_78;
      }

      *buf = 136315650;
      v88 = "CHMetrics.mm";
      v89 = 1024;
      v90 = 534;
      v91 = 2080;
      v92 = "[CHMetrics sendDetailedMetricsForPlayerID:endTime:]";
      v18 = "%25s:%-5d %s: skipping metrics - first start time > end time";
LABEL_77:
      _os_log_impl(&dword_21569A000, allValues2, OS_LOG_TYPE_DEBUG, v18, buf, 0x1Cu);
      goto LABEL_78;
    }

    [(CHMetrics *)self getLoopsForAdvancedPlayer:v66 endTime:time];
    v21 = v20;
    v22 = [v66 objectForKeyedSubscript:@"advancedPlayback"];
    [(CHMetrics *)self resetAdvancedPlaybackData:v22];
  }

  else
  {
    v72 = [v66 objectForKeyedSubscript:@"playback"];
    if (!v72 || ([v72 objectForKeyedSubscript:@"playbackLastAction"], v13 = objc_claimAutoreleasedReturnValue(), v13, !v13))
    {
      if (kHMETScope)
      {
        allValues2 = *kHMETScope;
        if (!allValues2)
        {
          goto LABEL_79;
        }
      }

      else
      {
        allValues2 = MEMORY[0x277D86220];
        v19 = MEMORY[0x277D86220];
      }

      if (!os_log_type_enabled(allValues2, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_78;
      }

      *buf = 136315650;
      v88 = "CHMetrics.mm";
      v89 = 1024;
      v90 = 516;
      v91 = 2080;
      v92 = "[CHMetrics sendDetailedMetricsForPlayerID:endTime:]";
      v18 = "%25s:%-5d %s: skipping metrics - no playback actions recorded";
      goto LABEL_77;
    }

    v14 = [v72 objectForKeyedSubscript:@"firstStartTime"];
    [v14 floatValue];
    v16 = v15;

    if (v16 > time)
    {
      if (kHMETScope)
      {
        allValues2 = *kHMETScope;
        if (!allValues2)
        {
          goto LABEL_79;
        }
      }

      else
      {
        allValues2 = MEMORY[0x277D86220];
        v63 = MEMORY[0x277D86220];
      }

      if (!os_log_type_enabled(allValues2, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_78;
      }

      *buf = 136315650;
      v88 = "CHMetrics.mm";
      v89 = 1024;
      v90 = 520;
      v91 = 2080;
      v92 = "[CHMetrics sendDetailedMetricsForPlayerID:endTime:]";
      v18 = "%25s:%-5d %s: skipping metrics - first start time > end time";
      goto LABEL_77;
    }

    [(CHMetrics *)self getLoopsForPlayer:v66 endTime:time];
    v21 = v23;
    v22 = [v66 objectForKeyedSubscript:@"playback"];
    [(CHMetrics *)self resetPlaybackData:v22];
  }

  if (!kHMETScope)
  {
    v24 = MEMORY[0x277D86220];
    v25 = MEMORY[0x277D86220];
    goto LABEL_32;
  }

  v24 = *kHMETScope;
  if (v24)
  {
LABEL_32:
    v26 = v24;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      engineID = self->_engineID;
      v88 = "CHMetrics.mm";
      v89 = 1024;
      v90 = 541;
      v91 = 2080;
      *buf = 136316674;
      v92 = "[CHMetrics sendDetailedMetricsForPlayerID:endTime:]";
      v93 = 2112;
      v94 = engineID;
      v95 = 2112;
      v96 = dCopy;
      v97 = 2048;
      v98 = [v65 count];
      v99 = 2048;
      v100 = [v64 count];
      _os_log_impl(&dword_21569A000, v26, OS_LOG_TYPE_INFO, "%25s:%-5d %s: sending metrics for engine %@ player %@ - %lu transient, %lu continuous", buf, 0x44u);
    }
  }

  v72 = [MEMORY[0x277CCABB0] numberWithBool:self->_isSPI];
  if (![v65 count])
  {
    goto LABEL_53;
  }

  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  allValues = [v65 allValues];
  obj = allValues;
  v29 = [allValues countByEnumeratingWithState:&v77 objects:v86 count:16];
  if (!v29)
  {
    goto LABEL_52;
  }

  v69 = *v78;
  v30 = fmax(v21, 1.0);
  do
  {
    for (i = 0; i != v29; ++i)
    {
      if (*v78 != v69)
      {
        objc_enumerationMutation(obj);
      }

      v32 = *(*(&v77 + 1) + 8 * i);
      v84[0] = @"EventType";
      v33 = [v32 objectForKeyedSubscript:?];
      v85[0] = v33;
      v84[1] = @"Intensity";
      v34 = [v32 objectForKeyedSubscript:@"Intensity"];
      v85[1] = v34;
      v84[2] = @"EventCount";
      v35 = MEMORY[0x277CCABB0];
      v36 = [v32 objectForKeyedSubscript:@"EventCount"];
      [v36 floatValue];
      v38 = [v35 numberWithInt:(v30 * v37)];
      v84[3] = @"SPI";
      v85[2] = v38;
      v85[3] = v72;
      v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v85 forKeys:v84 count:4];

      if (kHMETScope)
      {
        v40 = *kHMETScope;
        if (!v40)
        {
          goto LABEL_48;
        }
      }

      else
      {
        v40 = MEMORY[0x277D86220];
        v41 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315906;
        v88 = "CHMetrics.mm";
        v89 = 1024;
        v90 = 550;
        v91 = 2080;
        v92 = "[CHMetrics sendDetailedMetricsForPlayerID:endTime:]";
        v93 = 2112;
        v94 = v39;
        _os_log_impl(&dword_21569A000, v40, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: logging metrics data for HapticTransient : %@", buf, 0x26u);
      }

LABEL_48:
      CAReportingClientSendMessage();
      if (self->_retainDataForTesting)
      {
        v42 = [(NSString *)v39 mutableCopy];
        [(CHMetrics *)self retainData:v42 forTestingPlayer:dCopy];
      }
    }

    allValues = obj;
    v29 = [obj countByEnumeratingWithState:&v77 objects:v86 count:16];
  }

  while (v29);
LABEL_52:

LABEL_53:
  if ([v64 count])
  {
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    allValues2 = [v64 allValues];
    obja = allValues2;
    v43 = [allValues2 countByEnumeratingWithState:&v73 objects:v83 count:16];
    if (!v43)
    {
      goto LABEL_78;
    }

    v70 = *v74;
    v44 = fmax(v21, 1.0);
    while (1)
    {
      for (j = 0; j != v43; ++j)
      {
        if (*v74 != v70)
        {
          objc_enumerationMutation(obja);
        }

        v46 = *(*(&v73 + 1) + 8 * j);
        v81[0] = @"EventType";
        v47 = [v46 objectForKeyedSubscript:?];
        v82[0] = v47;
        v81[1] = @"Intensity";
        v48 = [v46 objectForKeyedSubscript:?];
        v82[1] = v48;
        v81[2] = @"EventCount";
        v49 = MEMORY[0x277CCABB0];
        v50 = [v46 objectForKeyedSubscript:?];
        [v50 floatValue];
        v52 = [v49 numberWithInt:(v44 * v51)];
        v82[2] = v52;
        v81[3] = @"Duration";
        v53 = MEMORY[0x277CCABB0];
        v54 = [v46 objectForKeyedSubscript:?];
        [v54 floatValue];
        *&v56 = v21 * v55;
        v57 = [v53 numberWithFloat:v56];
        v81[4] = @"SPI";
        v82[3] = v57;
        v82[4] = v72;
        v58 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v82 forKeys:v81 count:5];

        if (kHMETScope)
        {
          v59 = *kHMETScope;
          if (!v59)
          {
            goto LABEL_66;
          }
        }

        else
        {
          v59 = MEMORY[0x277D86220];
          v60 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315906;
          v88 = "CHMetrics.mm";
          v89 = 1024;
          v90 = 565;
          v91 = 2080;
          v92 = "[CHMetrics sendDetailedMetricsForPlayerID:endTime:]";
          v93 = 2112;
          v94 = v58;
          _os_log_impl(&dword_21569A000, v59, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: logging metrics data for HapticContinuous : %@", buf, 0x26u);
        }

LABEL_66:
        CAReportingClientSendMessage();
        if (self->_retainDataForTesting)
        {
          v61 = [(NSString *)v58 mutableCopy];
          [(CHMetrics *)self retainData:v61 forTestingPlayer:dCopy];
        }
      }

      allValues2 = obja;
      v43 = [obja countByEnumeratingWithState:&v73 objects:v83 count:16];
      if (!v43)
      {
LABEL_78:

        break;
      }
    }
  }

LABEL_79:
}

- (void)markPlaybackAction:(id)action action:(int64_t)a4 time:(float)time
{
  v58 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  if (kHMETScope)
  {
    v9 = *kHMETScope;
    if (!v9)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v9 = MEMORY[0x277D86220];
    v10 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    engineID = self->_engineID;
    v46 = 136316418;
    v47 = "CHMetrics.mm";
    v48 = 1024;
    v49 = 576;
    v50 = 2080;
    v51 = "[CHMetrics markPlaybackAction:action:time:]";
    v52 = 2048;
    timeCopy = *&a4;
    v54 = 2112;
    v55 = *&engineID;
    v56 = 2048;
    v57 = actionCopy;
    _os_log_impl(&dword_21569A000, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: marking action %ld for engine %@ player %p", &v46, 0x3Au);
  }

LABEL_8:
  +[CHMetrics currentTime];
  if (v12 > time)
  {
    +[CHMetrics currentTime];
    time = v13;
  }

  v14 = [(NSMutableDictionary *)self->_playerData objectForKeyedSubscript:actionCopy];
  v15 = [v14 objectForKeyedSubscript:@"playback"];
  v16 = [v15 objectForKeyedSubscript:@"playbackLastAction"];
  v17 = [v15 objectForKeyedSubscript:@"edgeCase"];
  bOOLValue = [v17 BOOLValue];

  if ((bOOLValue & 1) == 0)
  {
    if (*&a4 != 0.0)
    {
      goto LABEL_17;
    }

    v19 = [v15 objectForKeyedSubscript:@"firstStartTime"];
    [v19 floatValue];
    if (v20 < 0.0)
    {
    }

    else
    {
      v21 = [v15 objectForKeyedSubscript:@"firstStartTime"];
      [v21 floatValue];
      v23 = time < v22;

      if (!v23)
      {
LABEL_17:
        if (v16)
        {
          [(PlaybackAction *)v16 time];
          if (time < v26)
          {
            if (kHMETScope)
            {
              v27 = *kHMETScope;
              if (!v27)
              {
                goto LABEL_44;
              }
            }

            else
            {
              v27 = MEMORY[0x277D86220];
              v41 = MEMORY[0x277D86220];
            }

            v42 = v27;
            if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
            {
              [(PlaybackAction *)v16 time];
              v46 = 136316162;
              v47 = "CHMetrics.mm";
              v48 = 1024;
              v49 = 612;
              v50 = 2080;
              v51 = "[CHMetrics markPlaybackAction:action:time:]";
              v52 = 2048;
              timeCopy = time;
              v54 = 2048;
              v55 = v43;
              _os_log_impl(&dword_21569A000, v42, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: edge case: action time out of order %g < %g", &v46, 0x30u);
            }

LABEL_39:
LABEL_44:
            [v15 setObject:&unk_28279D810 forKeyedSubscript:@"edgeCase"];
            goto LABEL_45;
          }

          action = [(PlaybackAction *)v16 action];
          if (a4 == 3 && !action || !([(PlaybackAction *)v16 action]| a4))
          {
            [(PlaybackAction *)v16 time];
            v32 = v31;
            [(PlaybackAction *)v16 setAction:a4];
            *&v33 = time;
            [(PlaybackAction *)v16 setTime:v33];
            v34 = (time - v32) + 0.0;
LABEL_34:
            v36 = MEMORY[0x277CCABB0];
            v37 = [v15 objectForKeyedSubscript:@"playbackDuration"];
            [v37 floatValue];
            *&v39 = v34 + v38;
            v40 = [v36 numberWithFloat:v39];
            [v15 setObject:v40 forKeyedSubscript:@"playbackDuration"];

            goto LABEL_45;
          }

          action2 = [(PlaybackAction *)v16 action];
          if (*&a4 != 0.0 || action2 != 3)
          {
            if (kHMETScope)
            {
              v42 = *kHMETScope;
              if (!v42)
              {
                goto LABEL_44;
              }
            }

            else
            {
              v42 = MEMORY[0x277D86220];
              v45 = MEMORY[0x277D86220];
            }

            if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
            {
              v46 = 136315650;
              v47 = "CHMetrics.mm";
              v48 = 1024;
              v49 = 628;
              v50 = 2080;
              v51 = "[CHMetrics markPlaybackAction:action:time:]";
              _os_log_impl(&dword_21569A000, v42, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: edge case: unknown case", &v46, 0x1Cu);
            }

            goto LABEL_39;
          }
        }

        else
        {
          v16 = objc_alloc_init(PlaybackAction);
          [v15 setObject:v16 forKeyedSubscript:@"playbackLastAction"];
          if (*&a4 != 0.0)
          {
            if (kHMETScope)
            {
              v28 = *kHMETScope;
              if (!v28)
              {
                goto LABEL_44;
              }
            }

            else
            {
              v28 = MEMORY[0x277D86220];
              v44 = MEMORY[0x277D86220];
            }

            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
            {
              v46 = 136315650;
              v47 = "CHMetrics.mm";
              v48 = 1024;
              v49 = 605;
              v50 = 2080;
              v51 = "[CHMetrics markPlaybackAction:action:time:]";
              _os_log_impl(&dword_21569A000, v28, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: edge case: did not see startAtTime as first call", &v46, 0x1Cu);
            }

            goto LABEL_44;
          }
        }

        [(PlaybackAction *)v16 setAction:0];
        v34 = 0.0;
        *&v35 = time;
        [(PlaybackAction *)v16 setTime:v35];
        goto LABEL_34;
      }
    }

    *&v24 = time;
    v25 = [MEMORY[0x277CCABB0] numberWithFloat:v24];
    [v15 setObject:v25 forKeyedSubscript:@"firstStartTime"];

    goto LABEL_17;
  }

LABEL_45:
}

- (void)markAdvancedPlaybackAction:(id)action action:(int64_t)a4 time:(float)time
{
  v58 = *MEMORY[0x277D85DE8];
  v8 = COERCE_DOUBLE(action);
  if (kHMETScope)
  {
    v9 = *kHMETScope;
    if (!v9)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v9 = MEMORY[0x277D86220];
    v10 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    engineID = self->_engineID;
    v46 = 136316418;
    v47 = "CHMetrics.mm";
    v48 = 1024;
    v49 = 639;
    v50 = 2080;
    v51 = "[CHMetrics markAdvancedPlaybackAction:action:time:]";
    v52 = 2048;
    timeCopy = *&a4;
    v54 = 2112;
    timeCopy2 = *&engineID;
    v56 = 2112;
    v57 = v8;
    _os_log_impl(&dword_21569A000, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: marking advanced action %ld for engine %@ player %@", &v46, 0x3Au);
  }

LABEL_8:
  +[CHMetrics currentTime];
  if (v12 > time)
  {
    +[CHMetrics currentTime];
    time = v13;
  }

  v14 = [(NSMutableDictionary *)self->_playerData objectForKeyedSubscript:*&v8];
  v15 = [v14 objectForKeyedSubscript:@"advancedPlayback"];
  v16 = [v15 objectForKeyedSubscript:@"playbackLastAction"];
  v17 = [v15 objectForKeyedSubscript:@"edgeCase"];
  bOOLValue = [v17 BOOLValue];

  if ((bOOLValue & 1) == 0)
  {
    if (*&a4 != 0.0)
    {
      goto LABEL_17;
    }

    v19 = [v15 objectForKeyedSubscript:@"firstStartTime"];
    [v19 floatValue];
    if (v20 < 0.0)
    {
    }

    else
    {
      v21 = [v15 objectForKeyedSubscript:@"firstStartTime"];
      [v21 floatValue];
      v23 = time < v22;

      if (!v23)
      {
LABEL_17:
        if (v16)
        {
          [(PlaybackAction *)v16 time];
          if (time < v26)
          {
            if (kHMETScope)
            {
              v27 = *kHMETScope;
              if (!v27)
              {
LABEL_36:
                [v15 setObject:&unk_28279D810 forKeyedSubscript:@"edgeCase"];
                goto LABEL_46;
              }
            }

            else
            {
              v27 = MEMORY[0x277D86220];
              v33 = MEMORY[0x277D86220];
            }

            v34 = v27;
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
            {
              [(PlaybackAction *)v16 time];
              v46 = 136316162;
              v47 = "CHMetrics.mm";
              v48 = 1024;
              v49 = 675;
              v50 = 2080;
              v51 = "[CHMetrics markAdvancedPlaybackAction:action:time:]";
              v52 = 2048;
              timeCopy = time;
              v54 = 2048;
              timeCopy2 = v35;
              _os_log_impl(&dword_21569A000, v34, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: edge case: action time out of order %g < %g", &v46, 0x30u);
            }

            goto LABEL_36;
          }

          v29 = 0.0;
          if ([(PlaybackAction *)v16 action]== 1 && (a4 | 2) == 2)
          {
            [(PlaybackAction *)v16 time];
            v29 = time - v30;
            if (kHMETScope)
            {
              v31 = *kHMETScope;
              if (!v31)
              {
                goto LABEL_45;
              }
            }

            else
            {
              v31 = MEMORY[0x277D86220];
              v37 = MEMORY[0x277D86220];
            }

            v38 = v31;
            if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
            {
              [(PlaybackAction *)v16 time];
              v46 = 136316418;
              v47 = "CHMetrics.mm";
              v48 = 1024;
              v49 = 683;
              v50 = 2080;
              v51 = "[CHMetrics markAdvancedPlaybackAction:action:time:]";
              v52 = 2048;
              timeCopy = v29;
              v54 = 2048;
              timeCopy2 = time;
              v56 = 2048;
              v57 = v39;
              _os_log_impl(&dword_21569A000, v38, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: paused duration: %g = %g - %g", &v46, 0x3Au);
            }
          }
        }

        else
        {
          v16 = objc_alloc_init(PlaybackAction);
          [v15 setObject:v16 forKeyedSubscript:@"playbackLastAction"];
          if (*&a4 != 0.0)
          {
            if (kHMETScope)
            {
              v28 = *kHMETScope;
              if (!v28)
              {
                goto LABEL_36;
              }
            }

            else
            {
              v28 = MEMORY[0x277D86220];
              v36 = MEMORY[0x277D86220];
            }

            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
            {
              v46 = 136315650;
              v47 = "CHMetrics.mm";
              v48 = 1024;
              v49 = 667;
              v50 = 2080;
              v51 = "[CHMetrics markAdvancedPlaybackAction:action:time:]";
              _os_log_impl(&dword_21569A000, v28, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: edge case: did not see startAtTime as first call", &v46, 0x1Cu);
            }

            goto LABEL_36;
          }

          [(PlaybackAction *)v16 setAction:0];
          v29 = 0.0;
          *&v32 = time;
          [(PlaybackAction *)v16 setTime:v32];
        }

LABEL_45:
        v40 = MEMORY[0x277CCABB0];
        v41 = [v15 objectForKeyedSubscript:@"pausedDuration"];
        [v41 floatValue];
        *&v43 = v29 + v42;
        v44 = [v40 numberWithFloat:v43];
        [v15 setObject:v44 forKeyedSubscript:@"pausedDuration"];

        [(PlaybackAction *)v16 setAction:a4];
        *&v45 = time;
        [(PlaybackAction *)v16 setTime:v45];
        goto LABEL_46;
      }
    }

    *&v24 = time;
    v25 = [MEMORY[0x277CCABB0] numberWithFloat:v24];
    [v15 setObject:v25 forKeyedSubscript:@"firstStartTime"];

    goto LABEL_17;
  }

LABEL_46:
}

- (void)resetPlaybackData:(id)data
{
  dataCopy = data;
  [dataCopy setObject:&unk_28279D7F0 forKeyedSubscript:@"playbackDuration"];
  [dataCopy setObject:0 forKeyedSubscript:@"playbackLastAction"];
  [dataCopy setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"edgeCase"];
  [dataCopy setObject:&unk_28279D800 forKeyedSubscript:@"firstStartTime"];
}

- (void)resetAdvancedPlaybackData:(id)data
{
  dataCopy = data;
  [dataCopy setObject:&unk_28279D7F0 forKeyedSubscript:@"pausedDuration"];
  [dataCopy setObject:0 forKeyedSubscript:@"playbackLastAction"];
  [dataCopy setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"edgeCase"];
  [dataCopy setObject:&unk_28279D800 forKeyedSubscript:@"firstStartTime"];
}

- (void)prepareData:(id)data events:(id)events
{
  v92 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  eventsCopy = events;
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
  v70 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v69 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v7 = eventsCopy;
  v8 = [v7 countByEnumeratingWithState:&v80 objects:v91 count:16];
  if (v8)
  {
    v9 = *v81;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v81 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v80 + 1) + 8 * i);
        if (![v11 eventCategory])
        {
          fixedParamCount = [v11 fixedParamCount];
          if (fixedParamCount < 1)
          {
            v18 = 0.0;
          }

          else
          {
            v13 = fixedParamCount + 1;
            v14 = 16 * fixedParamCount;
            v15 = 0.0;
            do
            {
              v16 = [v11 fixedParams] + v14;
              v17 = *(v16 - 16);
              if (v17 == 2012 || v17 == 1012)
              {
                v15 = pow(1.8204, (*(v16 - 8) * 10.0)) * 0.02;
              }

              --v13;
              v14 -= 16;
            }

            while (v13 > 1);
            v18 = v15;
          }

          [v6 doubleValue];
          v20 = v19;
          [v11 time];
          v22 = v21;
          [v11 duration];
          if (v20 < v22 + v23 + v18)
          {
            v24 = MEMORY[0x277CCABB0];
            [v11 time];
            v26 = v25;
            [v11 duration];
            v28 = [v24 numberWithDouble:v26 + v27 + v18];

            v6 = v28;
          }

          eventType = [v11 eventType];
          v77 = 0;
          v78 = 0;
          v79 = 0;
          std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(&v77, self->_hapticContinuousSustainedIDs.__begin_, self->_hapticContinuousSustainedIDs.__end_, self->_hapticContinuousSustainedIDs.__end_ - self->_hapticContinuousSustainedIDs.__begin_);
          if ([(CHMetrics *)self isEventType:eventType inList:&v77])
          {
            v30 = 1;
          }

          else
          {
            eventType2 = [v11 eventType];
            __p = 0;
            v75 = 0;
            v76 = 0;
            std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(&__p, self->_hapticContinuousNonsustainedIDs.__begin_, self->_hapticContinuousNonsustainedIDs.__end_, self->_hapticContinuousNonsustainedIDs.__end_ - self->_hapticContinuousNonsustainedIDs.__begin_);
            v30 = [(CHMetrics *)self isEventType:eventType2 inList:&__p];
            if (__p)
            {
              v75 = __p;
              operator delete(__p);
            }
          }

          if (v77)
          {
            v78 = v77;
            operator delete(v77);
          }

          if (v30)
          {
            v32 = 0;
            v33 = 0;
            v34 = 0;
            v35 = 0.0;
            while (v33 < [v11 fixedParamCount])
            {
              if (*([v11 fixedParams] + v32) == 2000)
              {
                v35 = *([v11 fixedParams] + v32 + 8);
                v34 = 1;
              }

              ++v33;
              v32 += 16;
            }

            eventType3 = [v11 eventType];
            if (v34)
            {
              *&v43 = v35;
            }

            else
            {
              *&v43 = 1.0;
            }

            v44 = [(CHMetrics *)self continousDictionary:v70 slot:eventType3 >> 8 intensity:v43];
            v45 = MEMORY[0x277CCABB0];
            v46 = [v44 objectForKeyedSubscript:@"Duration"];
            [v46 floatValue];
            v48 = v47;
            [v11 duration];
            v50 = v49 + v48 + v18;
            *&v50 = v50;
            v51 = [v45 numberWithFloat:v50];
            [v44 setObject:v51 forKeyedSubscript:@"Duration"];

            v52 = MEMORY[0x277CCABB0];
            v53 = [v44 objectForKeyedSubscript:@"EventCount"];
            v54 = [v52 numberWithInteger:{(objc_msgSend(v53, "intValue") + 1)}];
            [v44 setObject:v54 forKeyedSubscript:@"EventCount"];
          }

          else
          {
            eventType4 = [v11 eventType];
            v71 = 0;
            v72 = 0;
            v73 = 0;
            std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(&v71, self->_hapticTransientIDs.__begin_, self->_hapticTransientIDs.__end_, self->_hapticTransientIDs.__end_ - self->_hapticTransientIDs.__begin_);
            v37 = [(CHMetrics *)self isEventType:eventType4 inList:&v71];
            if (v71)
            {
              v72 = v71;
              operator delete(v71);
            }

            if (v37)
            {
              v38 = 0;
              v39 = 0;
              v40 = 0;
              v41 = 0.0;
              while (v40 < [v11 fixedParamCount])
              {
                if (*([v11 fixedParams] + v38) == 2000)
                {
                  v41 = *([v11 fixedParams] + v38 + 8);
                  v39 = 1;
                }

                ++v40;
                v38 += 16;
              }

              eventType5 = [v11 eventType];
              if (v39)
              {
                *&v60 = v41;
              }

              else
              {
                *&v60 = 1.0;
              }

              v44 = [(CHMetrics *)self transientDictionary:v69 index:eventType5 >> 8 intensity:v60];
              v61 = MEMORY[0x277CCABB0];
              v53 = [v44 objectForKeyedSubscript:@"EventCount"];
              v54 = [v61 numberWithInteger:{(objc_msgSend(v53, "intValue") + 1)}];
              [v44 setObject:v54 forKeyedSubscript:@"EventCount"];
            }

            else
            {
              *buf = [v11 eventType];
              if (!std::__hash_table<std::__hash_value_type<AVHapticPlayerParameterType,float>,std::__unordered_map_hasher<AVHapticPlayerParameterType,std::__hash_value_type<AVHapticPlayerParameterType,float>,std::hash<AVHapticPlayerParameterType>,std::equal_to<AVHapticPlayerParameterType>,true>,std::__unordered_map_equal<AVHapticPlayerParameterType,std::__hash_value_type<AVHapticPlayerParameterType,float>,std::equal_to<AVHapticPlayerParameterType>,std::hash<AVHapticPlayerParameterType>,true>,std::allocator<std::__hash_value_type<AVHapticPlayerParameterType,float>>>::find<AVHapticPlayerParameterType>(&self->_legacyHapticTransientEventTypeMap.__table_.__bucket_list_.__ptr_, buf))
              {
                continue;
              }

              v55 = 0;
              v56 = 0;
              v57 = 0;
              v58 = 0.0;
              while (v57 < [v11 fixedParamCount])
              {
                if (*([v11 fixedParams] + v55) == 2000)
                {
                  v58 = *([v11 fixedParams] + v55 + 8);
                  v56 = 1;
                }

                ++v57;
                v55 += 16;
              }

              eventType6 = [v11 eventType];
              if (v56)
              {
                *&v63 = v58;
              }

              else
              {
                *&v63 = 1.0;
              }

              v44 = [(CHMetrics *)self legacyTransientDictionary:v69 eventType:eventType6 intensity:v63];
              v64 = MEMORY[0x277CCABB0];
              v53 = [v44 objectForKeyedSubscript:@"EventCount"];
              v54 = [v64 numberWithInteger:{(objc_msgSend(v53, "intValue") + 1)}];
              [v44 setObject:v54 forKeyedSubscript:@"EventCount"];
            }
          }
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v80 objects:v91 count:16];
    }

    while (v8);
  }

  if (kHMETScope)
  {
    v65 = *kHMETScope;
    if (!v65)
    {
      goto LABEL_65;
    }
  }

  else
  {
    v65 = MEMORY[0x277D86220];
    v66 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    *&buf[4] = "CHMetrics.mm";
    v85 = 1024;
    v86 = 795;
    v87 = 2080;
    v88 = "[CHMetrics prepareData:events:]";
    v89 = 2112;
    v90 = v6;
    _os_log_impl(&dword_21569A000, v65, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: calculated pattern duration: %@", buf, 0x26u);
  }

LABEL_65:
  [dataCopy setObject:v70 forKeyedSubscript:@"continuousData"];
  [dataCopy setObject:v69 forKeyedSubscript:@"transientData"];
  [dataCopy setObject:v6 forKeyedSubscript:@"patternDuration"];
}

- (void)preparePlaybackData:(id)data events:(id)events
{
  v23 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  eventsCopy = events;
  if (kHMETScope)
  {
    v8 = *kHMETScope;
    if (!v8)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v8 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    engineID = self->_engineID;
    v13 = 136316162;
    v14 = "CHMetrics.mm";
    v15 = 1024;
    v16 = 805;
    v17 = 2080;
    v18 = "[CHMetrics preparePlaybackData:events:]";
    v19 = 2112;
    v20 = engineID;
    v21 = 2112;
    v22 = dataCopy;
    _os_log_impl(&dword_21569A000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: preparing playback data for engine %@ player %@", &v13, 0x30u);
  }

LABEL_8:
  v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v11 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"isAdvanced"];
  [(CHMetrics *)self prepareData:v11 events:eventsCopy];
  v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v11 setObject:v12 forKeyedSubscript:@"playback"];
  [(CHMetrics *)self resetPlaybackData:v12];
  [(NSMutableDictionary *)self->_playerData setObject:v11 forKeyedSubscript:dataCopy];
}

- (void)prepareAdvancedPlaybackData:(id)data events:(id)events
{
  v23 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  eventsCopy = events;
  if (kHMETScope)
  {
    v8 = *kHMETScope;
    if (!v8)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v8 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    engineID = self->_engineID;
    v13 = 136316162;
    v14 = "CHMetrics.mm";
    v15 = 1024;
    v16 = 817;
    v17 = 2080;
    v18 = "[CHMetrics prepareAdvancedPlaybackData:events:]";
    v19 = 2112;
    v20 = engineID;
    v21 = 2112;
    v22 = dataCopy;
    _os_log_impl(&dword_21569A000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: preparing advanced playback data for engine %@ player %@", &v13, 0x30u);
  }

LABEL_8:
  v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v11 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"isAdvanced"];
  [(CHMetrics *)self prepareData:v11 events:eventsCopy];
  v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v11 setObject:v12 forKeyedSubscript:@"advancedPlayback"];
  [(CHMetrics *)self resetAdvancedPlaybackData:v12];
  [(NSMutableDictionary *)self->_playerData setObject:v11 forKeyedSubscript:dataCopy];
}

- (void)removePlaybackData:(id)data
{
  v18 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  if (kHMETScope)
  {
    v5 = *kHMETScope;
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    engineID = self->_engineID;
    v8 = 136316162;
    v9 = "CHMetrics.mm";
    v10 = 1024;
    v11 = 829;
    v12 = 2080;
    v13 = "[CHMetrics removePlaybackData:]";
    v14 = 2112;
    v15 = engineID;
    v16 = 2112;
    v17 = dataCopy;
    _os_log_impl(&dword_21569A000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: removing playback data for engine %@ player %@", &v8, 0x30u);
  }

LABEL_8:
  [(NSMutableDictionary *)self->_playerData removeObjectForKey:dataCopy];
}

- (float)getLoopsForPlayer:(id)player endTime:(double)time
{
  v32 = *MEMORY[0x277D85DE8];
  playerCopy = player;
  v6 = [playerCopy objectForKeyedSubscript:@"playback"];
  v7 = [v6 objectForKeyedSubscript:@"edgeCase"];
  bOOLValue = [v7 BOOLValue];

  if (!bOOLValue)
  {
    v11 = [v6 objectForKeyedSubscript:@"playbackDuration"];
    [v11 floatValue];
    v13 = v12;

    v14 = [v6 objectForKeyedSubscript:@"firstStartTime"];
    [v14 floatValue];
    v16 = v15;

    v17 = [playerCopy objectForKeyedSubscript:@"patternDuration"];
    [v17 floatValue];
    v19 = v18;

    v20 = [v6 objectForKeyedSubscript:@"playbackLastAction"];
    v9 = v20;
    v21 = time - v16;
    if (v13 == 0.0 && ![v20 action]&& v19 > v21)
    {
      v13 = v21;
LABEL_26:
      v10 = v13 / v19;
LABEL_27:

      goto LABEL_28;
    }

    if (v13 < (v19 + v21) && ![v9 action])
    {
      v13 = v13 + v19;
      goto LABEL_26;
    }

    if (v13 < v21 && [v9 action]== 3 || [v9 action]== 3)
    {
      goto LABEL_26;
    }

    if (kHMETScope)
    {
      v22 = *kHMETScope;
      if (!v22)
      {
LABEL_25:
        v13 = 0.0;
        goto LABEL_26;
      }
    }

    else
    {
      v22 = MEMORY[0x277D86220];
      v24 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v26 = 136315650;
      v27 = "CHMetrics.mm";
      v28 = 1024;
      v29 = 861;
      v30 = 2080;
      v31 = "[CHMetrics getLoopsForPlayer:endTime:]";
      _os_log_impl(&dword_21569A000, v22, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: edge case - no case found", &v26, 0x1Cu);
    }

    goto LABEL_25;
  }

  if (!kHMETScope)
  {
    v9 = MEMORY[0x277D86220];
    v23 = MEMORY[0x277D86220];
LABEL_18:
    v10 = 1.0;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v26 = 136315650;
      v27 = "CHMetrics.mm";
      v28 = 1024;
      v29 = 837;
      v30 = 2080;
      v31 = "[CHMetrics getLoopsForPlayer:endTime:]";
      _os_log_impl(&dword_21569A000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: edge case - no loop multiplier, log once", &v26, 0x1Cu);
    }

    goto LABEL_27;
  }

  v9 = *kHMETScope;
  if (v9)
  {
    goto LABEL_18;
  }

  v10 = 1.0;
LABEL_28:

  return v10;
}

- (float)getLoopsForAdvancedPlayer:(id)player endTime:(double)time
{
  v32 = *MEMORY[0x277D85DE8];
  playerCopy = player;
  v6 = [playerCopy objectForKeyedSubscript:@"advancedPlayback"];
  v7 = [v6 objectForKeyedSubscript:@"edgeCase"];
  bOOLValue = [v7 BOOLValue];

  if (bOOLValue)
  {
    if (kHMETScope)
    {
      v9 = *kHMETScope;
      if (!v9)
      {
LABEL_14:
        v23 = 1.0;
        goto LABEL_15;
      }
    }

    else
    {
      v9 = MEMORY[0x277D86220];
      v24 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v26 = 136315650;
      v27 = "CHMetrics.mm";
      v28 = 1024;
      v29 = 871;
      v30 = 2080;
      v31 = "[CHMetrics getLoopsForAdvancedPlayer:endTime:]";
      _os_log_impl(&dword_21569A000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: edge case - no loop multiplier, log once", &v26, 0x1Cu);
    }

    goto LABEL_14;
  }

  v10 = [v6 objectForKeyedSubscript:@"firstStartTime"];
  [v10 floatValue];
  v12 = v11;

  v13 = [playerCopy objectForKeyedSubscript:@"patternDuration"];
  [v13 floatValue];
  v15 = v14;

  v16 = [v6 objectForKeyedSubscript:@"pausedDuration"];
  [v16 floatValue];
  v18 = v17;

  v19 = [v6 objectForKeyedSubscript:@"playbackLastAction"];
  if ([v19 action] == 3 && (objc_msgSend(v19, "time"), v20 < time))
  {
    [v19 time];
    v22 = (v21 - v12) - v18;
  }

  else
  {
    v22 = time - v12 - v18;
  }

  v23 = v22 / v15;

LABEL_15:
  return v23;
}

- (BOOL)isEventType:(unint64_t)type inList:(vector<unsigned)long
{
  begin = a4->__begin_;
  end = a4->__end_;
  if (a4->__begin_ != end)
  {
    while (*begin != type)
    {
      if (++begin == end)
      {
        begin = a4->__end_;
        return begin != end;
      }
    }
  }

  return begin != end;
}

- (id)continousDictionary:(id)dictionary slot:(unint64_t)slot intensity:(float)intensity
{
  dictionaryCopy = dictionary;
  v9 = [(CHMetrics *)self continuousSharpnessSlotKeyFromSlotValue:slot];
  *&v10 = intensity;
  v11 = [(CHMetrics *)self intensityBinKeyFromValue:v10];
  v12 = [v9 stringByAppendingString:v11];
  v13 = [dictionaryCopy objectForKey:v12];
  if (!v13)
  {
    v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v13 setObject:v9 forKeyedSubscript:@"EventType"];
    [v13 setObject:v11 forKeyedSubscript:@"Intensity"];
    [v13 setObject:&unk_28279D7F0 forKeyedSubscript:@"Duration"];
    [v13 setObject:&unk_28279D828 forKeyedSubscript:@"EventCount"];
    [dictionaryCopy setObject:v13 forKey:v12];
  }

  return v13;
}

- (id)legacyTransientDictionary:(id)dictionary eventType:(unint64_t)type intensity:(float)intensity
{
  dictionaryCopy = dictionary;
  typeCopy = type;
  v9 = std::__hash_table<std::__hash_value_type<AVHapticPlayerParameterType,float>,std::__unordered_map_hasher<AVHapticPlayerParameterType,std::__hash_value_type<AVHapticPlayerParameterType,float>,std::hash<AVHapticPlayerParameterType>,std::equal_to<AVHapticPlayerParameterType>,true>,std::__unordered_map_equal<AVHapticPlayerParameterType,std::__hash_value_type<AVHapticPlayerParameterType,float>,std::equal_to<AVHapticPlayerParameterType>,std::hash<AVHapticPlayerParameterType>,true>,std::allocator<std::__hash_value_type<AVHapticPlayerParameterType,float>>>::find<AVHapticPlayerParameterType>(&self->_legacyHapticTransientEventTypeMap.__table_.__bucket_list_.__ptr_, &typeCopy);
  if (!v9)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v10 = v9[3];
  *&v11 = intensity;
  v12 = [(CHMetrics *)self intensityBinKeyFromValue:v11];
  v13 = [v10 stringByAppendingString:v12];
  v14 = [dictionaryCopy objectForKey:v13];
  if (!v14)
  {
    v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v14 setObject:v10 forKeyedSubscript:@"EventType"];
    [v14 setObject:v12 forKeyedSubscript:@"Intensity"];
    [v14 setObject:&unk_28279D828 forKeyedSubscript:@"EventCount"];
    [dictionaryCopy setObject:v14 forKey:v13];
  }

  return v14;
}

- (id)transientDictionary:(id)dictionary index:(unint64_t)index intensity:(float)intensity
{
  dictionaryCopy = dictionary;
  v9 = [(CHMetrics *)self transientSharpnessIndexKeyFromIndexValue:index];
  *&v10 = intensity;
  v11 = [(CHMetrics *)self intensityBinKeyFromValue:v10];
  v12 = [v9 stringByAppendingString:v11];
  v13 = [dictionaryCopy objectForKey:v12];
  if (!v13)
  {
    v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v13 setObject:v9 forKeyedSubscript:@"EventType"];
    [v13 setObject:v11 forKeyedSubscript:@"Intensity"];
    [v13 setObject:&unk_28279D828 forKeyedSubscript:@"EventCount"];
    [dictionaryCopy setObject:v13 forKey:v12];
  }

  return v13;
}

- (id)intensityBinKeyFromValue:(float)value
{
  if (self->_CHMetricsIntensityBin1To2Value > value)
  {
    return @"IntensityBin1";
  }

  if (self->_CHMetricsIntensityBin2To3Value <= value)
  {
    return @"IntensityBin3";
  }

  return @"IntensityBin2";
}

- (void)setMetricsTestModeEnabled
{
  v13 = *MEMORY[0x277D85DE8];
  if (kHMETScope)
  {
    v3 = *kHMETScope;
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v3 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v7 = 136315650;
    v8 = "CHMetrics.mm";
    v9 = 1024;
    v10 = 992;
    v11 = 2080;
    v12 = "[CHMetrics setMetricsTestModeEnabled]";
    _os_log_impl(&dword_21569A000, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: test mode ENABLED", &v7, 0x1Cu);
  }

LABEL_8:
  self->_retainDataForTesting = 1;
  if (!self->_dataForTesting)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    dataForTesting = self->_dataForTesting;
    self->_dataForTesting = v5;
  }
}

- (id)getMetricsForPlayer:(id)player
{
  v21 = *MEMORY[0x277D85DE8];
  playerCopy = player;
  if (kHMETScope)
  {
    v5 = *kHMETScope;
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    engineID = self->_engineID;
    v11 = 136316162;
    v12 = "CHMetrics.mm";
    v13 = 1024;
    v14 = 1001;
    v15 = 2080;
    v16 = "[CHMetrics getMetricsForPlayer:]";
    v17 = 2112;
    v18 = engineID;
    v19 = 2112;
    v20 = playerCopy;
    _os_log_impl(&dword_21569A000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: retrieving metrics for engine %@ player %@", &v11, 0x30u);
  }

LABEL_8:
  v8 = [(CHMetrics *)self getIDForPlayer:playerCopy];
  v9 = [(NSMutableDictionary *)self->_dataForTesting objectForKeyedSubscript:v8];

  return v9;
}

- (void)retainData:(id)data forTestingPlayer:(id)player
{
  v59 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  playerCopy = player;
  if (kHMETScope)
  {
    v8 = *kHMETScope;
    if (!v8)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v8 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v52 = "CHMetrics.mm";
    v53 = 1024;
    v54 = 1009;
    v55 = 2080;
    v56 = "[CHMetrics retainData:forTestingPlayer:]";
    v57 = 2112;
    v58 = playerCopy;
    _os_log_impl(&dword_21569A000, v8, OS_LOG_TYPE_INFO, "%25s:%-5d %s: adding test player data for player %@", buf, 0x26u);
  }

LABEL_8:
  v10 = [(NSMutableDictionary *)self->_dataForTesting objectForKeyedSubscript:playerCopy];
  v11 = v10 == 0;

  if (v11)
  {
    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(NSMutableDictionary *)self->_dataForTesting setObject:v12 forKeyedSubscript:playerCopy];
  }

  v13 = MEMORY[0x277CCACA8];
  v14 = [dataCopy objectForKeyedSubscript:@"EventType"];
  v15 = [dataCopy objectForKeyedSubscript:@"Intensity"];
  v16 = [v13 stringWithFormat:@"%@%@", v14, v15];

  v17 = [(NSMutableDictionary *)self->_dataForTesting objectForKeyedSubscript:playerCopy];
  v18 = [v17 objectForKeyedSubscript:v16];
  LOBYTE(v15) = v18 == 0;

  if (v15)
  {
    v20 = [(NSMutableDictionary *)self->_dataForTesting objectForKeyedSubscript:playerCopy];
    [v20 setValue:dataCopy forKey:v16];
    goto LABEL_29;
  }

  if (kHMETScope)
  {
    v19 = *kHMETScope;
    if (!v19)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v19 = MEMORY[0x277D86220];
    v21 = MEMORY[0x277D86220];
  }

  v22 = v19;
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    v23 = [(NSMutableDictionary *)self->_dataForTesting objectForKeyedSubscript:playerCopy];
    v24 = [v23 objectForKeyedSubscript:v16];
    *buf = 136315906;
    v52 = "CHMetrics.mm";
    v53 = 1024;
    v54 = 1016;
    v55 = 2080;
    v56 = "[CHMetrics retainData:forTestingPlayer:]";
    v57 = 2112;
    v58 = v24;
    _os_log_impl(&dword_21569A000, v22, OS_LOG_TYPE_INFO, "%25s:%-5d %s: %@", buf, 0x26u);
  }

LABEL_19:
  if (!kHMETScope)
  {
    v25 = MEMORY[0x277D86220];
    v26 = MEMORY[0x277D86220];
    goto LABEL_23;
  }

  v25 = *kHMETScope;
  if (v25)
  {
LABEL_23:
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 136315906;
      v52 = "CHMetrics.mm";
      v53 = 1024;
      v54 = 1017;
      v55 = 2080;
      v56 = "[CHMetrics retainData:forTestingPlayer:]";
      v57 = 2112;
      v58 = dataCopy;
      _os_log_impl(&dword_21569A000, v25, OS_LOG_TYPE_INFO, "%25s:%-5d %s: %@", buf, 0x26u);
    }
  }

  v27 = [(NSMutableDictionary *)self->_dataForTesting objectForKeyedSubscript:playerCopy];
  v28 = [v27 objectForKeyedSubscript:v16];
  v29 = [v28 objectForKeyedSubscript:@"Duration"];
  v30 = v29 == 0;

  if (!v30)
  {
    v31 = MEMORY[0x277CCABB0];
    v50 = [(NSMutableDictionary *)self->_dataForTesting objectForKeyedSubscript:playerCopy];
    v32 = [v50 objectForKeyedSubscript:v16];
    v33 = [v32 objectForKeyedSubscript:@"Duration"];
    [v33 floatValue];
    v35 = v34;
    v36 = [dataCopy objectForKeyedSubscript:@"Duration"];
    [v36 floatValue];
    *&v38 = v35 + v37;
    v39 = [v31 numberWithFloat:v38];
    v40 = [(NSMutableDictionary *)self->_dataForTesting objectForKeyedSubscript:playerCopy];
    v41 = [v40 objectForKeyedSubscript:v16];
    [v41 setObject:v39 forKeyedSubscript:@"Duration"];
  }

  v42 = MEMORY[0x277CCABB0];
  v20 = [(NSMutableDictionary *)self->_dataForTesting objectForKeyedSubscript:playerCopy];
  v43 = [v20 objectForKeyedSubscript:v16];
  v44 = [v43 objectForKeyedSubscript:@"EventCount"];
  intValue = [v44 intValue];
  v46 = [dataCopy objectForKeyedSubscript:@"EventCount"];
  v47 = [v42 numberWithInt:{objc_msgSend(v46, "intValue") + intValue}];
  v48 = [(NSMutableDictionary *)self->_dataForTesting objectForKeyedSubscript:playerCopy];
  v49 = [v48 objectForKeyedSubscript:v16];
  [v49 setObject:v47 forKeyedSubscript:@"EventCount"];

LABEL_29:
}

@end