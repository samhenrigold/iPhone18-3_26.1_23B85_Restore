@interface PTPCPassiveCollectionService
- (BOOL)_connectionIsEntitled:(id)entitled toEntitlement:(id)entitlement;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (PTPCPassiveCollectionService)init;
- (void)_collectAndClearCurrentSettingWithTraceNamePrefix:(id)prefix triggerUserNotification:(BOOL)notification callback:(id)callback;
- (void)_collectionQueue_collectWithStartDate:(id)date endDate:(id)endDate traceNamePrefix:(id)prefix collectionType:(unsigned __int8)type triggerUserNotification:(BOOL)notification collectionConfig:(id)config clearPresetSettings:(BOOL)settings callback:(id)self0;
- (void)_confirmTraceDirectoryExists;
- (void)_generateCollectionErrorCoreAnalyticsTelemetry:(unsigned __int8)telemetry traceWindowStartDate:(id)date traceWindowEndDate:(id)endDate collectionType:(unsigned __int8)type;
- (void)_generateCoreAnalyticsTelemetry:(id)telemetry collectionEndDate:(id)date traceWindowStartDate:(id)startDate traceWindowEndDate:(id)endDate traceCount:(unint64_t)count totalTraceSizeBytes:(unint64_t)bytes archiveSizeBytes:(id)sizeBytes collectionType:(unsigned __int8)self0;
- (void)_initCollectionConfig;
- (void)_initInstrumentationConfig;
- (void)_registerForMetricMonitorTimeout;
- (void)applyPresetSettings:(unint64_t)settings callback:(id)callback;
- (void)clearCurrentPresetSettings:(id)settings;
- (void)collectLookbackIntervalWithTraceNamePrefix:(id)prefix triggerUserNotification:(BOOL)notification callback:(id)callback;
- (void)collectWithStartDate:(id)date endDate:(id)endDate traceNamePrefix:(id)prefix triggerUserNotification:(BOOL)notification callback:(id)callback;
- (void)getCollectAppInFocus:(id)focus;
- (void)getCollectLoggingAppLaunch:(id)launch;
- (void)getCollectLoggingHangs:(id)hangs;
- (void)getCollectLoggingMetalFramePacing:(id)pacing;
- (void)getCollectLoggingPerfPowerMetrics:(id)metrics;
- (void)getCollectLoggingScrolling:(id)scrolling;
- (void)getCollectLoggingUserInteraction:(id)interaction;
- (void)getCollectLookbackInterval:(id)interval;
- (void)getCollectMSS:(id)s;
- (void)getCurrentPresetSettings:(id)settings;
- (void)getImitationRecordStartDate:(id)date;
- (void)getInstrumentationConfigIsLocked:(id)locked;
- (void)getMetalPerDrawableSignpostsEnabled:(id)enabled;
- (void)getMetricMonitoredAppProcessNames:(id)names;
- (void)getMetricMonitoringEnabled:(id)enabled;
- (void)getMssPmiCycleInterval:(id)interval;
- (void)resetCollectAppInFocus:(id)focus;
- (void)resetCollectLoggingAppLaunch:(id)launch;
- (void)resetCollectLoggingHangs:(id)hangs;
- (void)resetCollectLoggingMetalFramePacing:(id)pacing;
- (void)resetCollectLoggingPerfPowerMetrics:(id)metrics;
- (void)resetCollectLoggingScrolling:(id)scrolling;
- (void)resetCollectLoggingUserInteraction:(id)interaction;
- (void)resetCollectLookbackInterval:(id)interval;
- (void)resetCollectMSS:(id)s;
- (void)resetSettings:(id)settings;
- (void)setCollectAppInFocus:(BOOL)focus callback:(id)callback;
- (void)setCollectLoggingAppLaunch:(BOOL)launch callback:(id)callback;
- (void)setCollectLoggingHangs:(BOOL)hangs callback:(id)callback;
- (void)setCollectLoggingMetalFramePacing:(BOOL)pacing callback:(id)callback;
- (void)setCollectLoggingPerfPowerMetrics:(BOOL)metrics callback:(id)callback;
- (void)setCollectLoggingScrolling:(BOOL)scrolling callback:(id)callback;
- (void)setCollectLoggingUserInteraction:(BOOL)interaction callback:(id)callback;
- (void)setCollectLookbackInterval:(double)interval callback:(id)callback;
- (void)setCollectMSS:(BOOL)s callback:(id)callback;
- (void)setImitationRecordStartDate:(id)date callback:(id)callback;
- (void)setMetalPerDrawableSignpostsEnabled:(id)enabled callback:(id)callback;
- (void)setMetricMonitoredAppProcessNames:(id)names callback:(id)callback;
- (void)setMetricMonitoringEnabled:(id)enabled callback:(id)callback;
- (void)setMssPmiCycleInterval:(id)interval callback:(id)callback;
@end

@implementation PTPCPassiveCollectionService

- (BOOL)_connectionIsEntitled:(id)entitled toEntitlement:(id)entitlement
{
  v4 = [entitled valueForEntitlement:entitlement];
  if (objc_opt_respondsToSelector())
  {
    bOOLValue = [v4 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  processIdentifier = [connectionCopy processIdentifier];
  proc_name(processIdentifier, buffer, 0x20u);
  v9 = [NSString stringWithUTF8String:buffer];
  v10 = [(PTPCPassiveCollectionService *)self _connectionIsEntitled:connectionCopy toEntitlement:@"com.apple.PerformanceTrace.PassiveConfigurationAccess"];
  if ((v10 & 1) == 0)
  {
    v18 = sub_10000B5D4(v10);
    if (os_signpost_enabled(v18))
    {
      *buf = 138543618;
      v45 = v9;
      v46 = 1024;
      v47 = processIdentifier;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v18, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ClientLacksEntitlement", "Client '%{public}@ [%u]' is missing required entitlement", buf, 0x12u);
    }

    goto LABEL_9;
  }

  pidToConnection = [(PTPCPassiveCollectionService *)self pidToConnection];
  v12 = [NSNumber numberWithInt:processIdentifier];
  v13 = [pidToConnection objectForKeyedSubscript:v12];
  v14 = v13 == 0;

  if (!v14)
  {
    v16 = sub_10000B5D4(v15);
    if (os_signpost_enabled(v16))
    {
      pidToConnection2 = [(PTPCPassiveCollectionService *)self pidToConnection];
      *buf = 138543874;
      v45 = v9;
      v46 = 1024;
      v47 = processIdentifier;
      v48 = 1024;
      v49 = [pidToConnection2 count];
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "PreExistingClientProcessConnection", "Client '%{public}@ [%u]' already has a connection. %u concurrent client(s) at this time.", buf, 0x18u);
    }

LABEL_9:
    v19 = 0;
    goto LABEL_10;
  }

  objc_initWeak(&location, self);
  v21 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___PTPCPassiveCollectionConfigurationInterface];
  [connectionCopy setExportedInterface:v21];

  [connectionCopy setExportedObject:self];
  v22 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___PTPCPassiveCollectionClientDelegate];
  [connectionCopy setRemoteObjectInterface:v22];

  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_10000B618;
  v39[3] = &unk_100020B00;
  objc_copyWeak(&v41, &location);
  v42 = processIdentifier;
  v23 = v9;
  v40 = v23;
  [connectionCopy setInvalidationHandler:v39];
  v31 = _NSConcreteStackBlock;
  v32 = 3221225472;
  v33 = sub_10000B79C;
  v34 = &unk_100020B28;
  objc_copyWeak(&v37, &location);
  v38 = processIdentifier;
  v24 = v23;
  v35 = v24;
  selfCopy = self;
  [connectionCopy setInterruptionHandler:&v31];
  v25 = [(PTPCPassiveCollectionService *)self pidToConnection:v31];
  v26 = [NSNumber numberWithInt:processIdentifier];
  [v25 setObject:connectionCopy forKeyedSubscript:v26];

  v28 = sub_10000B758(v27);
  if (os_signpost_enabled(v28))
  {
    pidToConnection3 = [(PTPCPassiveCollectionService *)self pidToConnection];
    v30 = [pidToConnection3 count];
    *buf = 138543874;
    v45 = v24;
    v46 = 1024;
    v47 = processIdentifier;
    v48 = 1024;
    v49 = v30;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v28, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "NewCollectionClientConnection", "Opened new connection for client '%{public}@ [%u]'. %u concurrent client(s) at this time.", buf, 0x18u);
  }

  [connectionCopy resume];
  objc_destroyWeak(&v37);

  objc_destroyWeak(&v41);
  objc_destroyWeak(&location);
  v19 = 1;
LABEL_10:

  return v19;
}

- (void)_initCollectionConfig
{
  v23 = 0;
  v3 = [PTPCMutablePassiveCollectionConfig currentPersistedSettings:0 errorOut:&v23];
  v4 = v23;
  passiveCollectionConfig = self->_passiveCollectionConfig;
  self->_passiveCollectionConfig = v3;

  passiveCollectionConfig = [(PTPCPassiveCollectionService *)self passiveCollectionConfig];

  if (!passiveCollectionConfig || v4)
  {
    v8 = sub_10000B5D4(v7);
    if (os_signpost_enabled(v8))
    {
      localizedDescription = [v4 localizedDescription];
      v10 = localizedDescription;
      v11 = @"Unknown";
      if (localizedDescription)
      {
        v11 = localizedDescription;
      }

      *buf = 138543362;
      v25 = v11;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "InvalidPersistedSettings", "Forced to clear due to error: %{public}@", buf, 0xCu);
    }

    v22 = 0;
    v12 = [PTPCMutablePassiveCollectionConfig resetPersistedDefaults:0 errorOut:&v22];
    v13 = v22;
    v14 = v13;
    if (v12)
    {
      v21 = v4;
      v15 = [PTPCMutablePassiveCollectionConfig currentPersistedSettings:0 errorOut:&v21];
      v16 = v21;

      v17 = self->_passiveCollectionConfig;
      self->_passiveCollectionConfig = v15;

      passiveCollectionConfig2 = [(PTPCPassiveCollectionService *)self passiveCollectionConfig];

      if (passiveCollectionConfig2)
      {

        return;
      }

      v20 = sub_10000B5D4(v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        sub_100013264(v16);
      }
    }

    else
    {
      v20 = sub_10000B5D4(v13);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        sub_100013264(v14);
      }
    }

    exit(1);
  }
}

- (void)_initInstrumentationConfig
{
  v9 = 0;
  v3 = [PTPCPassiveInstrumentationConfig currentPersistedSettings:0 errorOut:&v9];
  v4 = v9;
  instrumentationConfig = self->_instrumentationConfig;
  self->_instrumentationConfig = v3;

  instrumentationConfig = [(PTPCPassiveCollectionService *)self instrumentationConfig];

  if (!instrumentationConfig)
  {
    v8 = sub_10000B5D4(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_1000132FC(v4);
    }

    exit(1);
  }
}

- (void)_confirmTraceDirectoryExists
{
  v2 = sub_100002090(@"/var/mobile/Library/Logs/CrashReporter/DiagnosticLogs/PerformanceTraces/");
  if (v2)
  {
    v4 = v2;
    v3 = sub_10000B5D4(v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_100013394(v4, v3);
    }

    exit(1);
  }
}

- (void)_registerForMetricMonitorTimeout
{
  objc_initWeak(&location, self);
  connectionQueue = [(PTPCPassiveCollectionService *)self connectionQueue];
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10000BD40;
  handler[3] = &unk_100020B50;
  objc_copyWeak(&v8, &location);
  xpc_set_event_stream_handler("com.apple.notifyd.matching", connectionQueue, handler);

  v5 = sub_10000B758(v4);
  if (os_signpost_enabled(v5))
  {
    *v6 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "RegisteredForMetricMonitorTimeoutNotification", "", v6, 2u);
  }

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (PTPCPassiveCollectionService)init
{
  v18.receiver = self;
  v18.super_class = PTPCPassiveCollectionService;
  v2 = [(PTPCPassiveCollectionService *)&v18 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    pidToConnection = v2->_pidToConnection;
    v2->_pidToConnection = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = qos_class_main();
    v7 = dispatch_queue_attr_make_with_qos_class(v5, v6, 0);

    v8 = dispatch_queue_create("com.apple.PerformanceTrace.ptpassivecollectiond.NSXPCListener", v7);
    connectionQueue = v2->_connectionQueue;
    v2->_connectionQueue = v8;

    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = qos_class_main();
    v12 = dispatch_queue_attr_make_with_qos_class(v10, v11, 0);

    v13 = dispatch_queue_create("com.apple.PerformanceTrace.ptpassivecollectiond.tracecollection", v12);
    collectionQueue = v2->_collectionQueue;
    v2->_collectionQueue = v13;

    [(PTPCPassiveCollectionService *)v2 _initCollectionConfig];
    [(PTPCPassiveCollectionService *)v2 _initInstrumentationConfig];
    [(PTPCPassiveCollectionService *)v2 _registerForMetricMonitorTimeout];
    v15 = sub_10000B758([(PTPCPassiveCollectionService *)v2 _confirmTraceDirectoryExists]);
    if (os_signpost_enabled(v15))
    {
      *v17 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "PTPassiveCollectionServiceCreated", "", v17, 2u);
    }
  }

  return v2;
}

- (void)getCollectMSS:(id)s
{
  sCopy = s;
  passiveCollectionConfig = [(PTPCPassiveCollectionService *)self passiveCollectionConfig];
  (*(s + 2))(sCopy, [passiveCollectionConfig collectMSS]);
}

- (void)setCollectMSS:(BOOL)s callback:(id)callback
{
  sCopy = s;
  callbackCopy = callback;
  passiveCollectionConfig = [(PTPCPassiveCollectionService *)self passiveCollectionConfig];
  [passiveCollectionConfig setCollectMSS:sCopy];

  callbackCopy[2](callbackCopy, 0);
}

- (void)resetCollectMSS:(id)s
{
  sCopy = s;
  passiveCollectionConfig = [(PTPCPassiveCollectionService *)self passiveCollectionConfig];
  [passiveCollectionConfig resetCollectMSS];

  sCopy[2](sCopy, 0);
}

- (void)getCollectAppInFocus:(id)focus
{
  focusCopy = focus;
  passiveCollectionConfig = [(PTPCPassiveCollectionService *)self passiveCollectionConfig];
  (*(focus + 2))(focusCopy, [passiveCollectionConfig collectAppInFocus]);
}

- (void)setCollectAppInFocus:(BOOL)focus callback:(id)callback
{
  focusCopy = focus;
  callbackCopy = callback;
  passiveCollectionConfig = [(PTPCPassiveCollectionService *)self passiveCollectionConfig];
  [passiveCollectionConfig setCollectAppInFocus:focusCopy];

  callbackCopy[2](callbackCopy, 0);
}

- (void)resetCollectAppInFocus:(id)focus
{
  focusCopy = focus;
  passiveCollectionConfig = [(PTPCPassiveCollectionService *)self passiveCollectionConfig];
  [passiveCollectionConfig resetCollectAppInFocus];

  focusCopy[2](focusCopy, 0);
}

- (void)getCollectLoggingPerfPowerMetrics:(id)metrics
{
  metricsCopy = metrics;
  passiveCollectionConfig = [(PTPCPassiveCollectionService *)self passiveCollectionConfig];
  (*(metrics + 2))(metricsCopy, [passiveCollectionConfig collectLoggingPerfPowerMetrics]);
}

- (void)setCollectLoggingPerfPowerMetrics:(BOOL)metrics callback:(id)callback
{
  metricsCopy = metrics;
  callbackCopy = callback;
  passiveCollectionConfig = [(PTPCPassiveCollectionService *)self passiveCollectionConfig];
  [passiveCollectionConfig setCollectLoggingPerfPowerMetrics:metricsCopy];

  callbackCopy[2](callbackCopy, 0);
}

- (void)resetCollectLoggingPerfPowerMetrics:(id)metrics
{
  metricsCopy = metrics;
  passiveCollectionConfig = [(PTPCPassiveCollectionService *)self passiveCollectionConfig];
  [passiveCollectionConfig resetCollectLoggingPerfPowerMetrics];

  metricsCopy[2](metricsCopy, 0);
}

- (void)getCollectLoggingHangs:(id)hangs
{
  hangsCopy = hangs;
  passiveCollectionConfig = [(PTPCPassiveCollectionService *)self passiveCollectionConfig];
  (*(hangs + 2))(hangsCopy, [passiveCollectionConfig collectLoggingHangs]);
}

- (void)setCollectLoggingHangs:(BOOL)hangs callback:(id)callback
{
  hangsCopy = hangs;
  callbackCopy = callback;
  passiveCollectionConfig = [(PTPCPassiveCollectionService *)self passiveCollectionConfig];
  [passiveCollectionConfig setCollectLoggingHangs:hangsCopy];

  callbackCopy[2](callbackCopy, 0);
}

- (void)resetCollectLoggingHangs:(id)hangs
{
  hangsCopy = hangs;
  passiveCollectionConfig = [(PTPCPassiveCollectionService *)self passiveCollectionConfig];
  [passiveCollectionConfig resetCollectLoggingHangs];

  hangsCopy[2](hangsCopy, 0);
}

- (void)getCollectLoggingUserInteraction:(id)interaction
{
  interactionCopy = interaction;
  passiveCollectionConfig = [(PTPCPassiveCollectionService *)self passiveCollectionConfig];
  (*(interaction + 2))(interactionCopy, [passiveCollectionConfig collectLoggingUserInteraction]);
}

- (void)setCollectLoggingUserInteraction:(BOOL)interaction callback:(id)callback
{
  interactionCopy = interaction;
  callbackCopy = callback;
  passiveCollectionConfig = [(PTPCPassiveCollectionService *)self passiveCollectionConfig];
  [passiveCollectionConfig setCollectLoggingUserInteraction:interactionCopy];

  callbackCopy[2](callbackCopy, 0);
}

- (void)resetCollectLoggingUserInteraction:(id)interaction
{
  interactionCopy = interaction;
  passiveCollectionConfig = [(PTPCPassiveCollectionService *)self passiveCollectionConfig];
  [passiveCollectionConfig resetCollectLoggingUserInteraction];

  interactionCopy[2](interactionCopy, 0);
}

- (void)getCollectLoggingMetalFramePacing:(id)pacing
{
  pacingCopy = pacing;
  passiveCollectionConfig = [(PTPCPassiveCollectionService *)self passiveCollectionConfig];
  (*(pacing + 2))(pacingCopy, [passiveCollectionConfig collectLoggingMetalFramePacing]);
}

- (void)setCollectLoggingMetalFramePacing:(BOOL)pacing callback:(id)callback
{
  pacingCopy = pacing;
  callbackCopy = callback;
  passiveCollectionConfig = [(PTPCPassiveCollectionService *)self passiveCollectionConfig];
  [passiveCollectionConfig setCollectLoggingMetalFramePacing:pacingCopy];

  callbackCopy[2](callbackCopy, 0);
}

- (void)resetCollectLoggingMetalFramePacing:(id)pacing
{
  pacingCopy = pacing;
  passiveCollectionConfig = [(PTPCPassiveCollectionService *)self passiveCollectionConfig];
  [passiveCollectionConfig resetCollectLoggingMetalFramePacing];

  pacingCopy[2](pacingCopy, 0);
}

- (void)getCollectLoggingScrolling:(id)scrolling
{
  scrollingCopy = scrolling;
  passiveCollectionConfig = [(PTPCPassiveCollectionService *)self passiveCollectionConfig];
  (*(scrolling + 2))(scrollingCopy, [passiveCollectionConfig collectLoggingScrolling]);
}

- (void)setCollectLoggingScrolling:(BOOL)scrolling callback:(id)callback
{
  scrollingCopy = scrolling;
  callbackCopy = callback;
  passiveCollectionConfig = [(PTPCPassiveCollectionService *)self passiveCollectionConfig];
  [passiveCollectionConfig setCollectLoggingScrolling:scrollingCopy];

  callbackCopy[2](callbackCopy, 0);
}

- (void)resetCollectLoggingScrolling:(id)scrolling
{
  scrollingCopy = scrolling;
  passiveCollectionConfig = [(PTPCPassiveCollectionService *)self passiveCollectionConfig];
  [passiveCollectionConfig resetCollectLoggingScrolling];

  scrollingCopy[2](scrollingCopy, 0);
}

- (void)getCollectLoggingAppLaunch:(id)launch
{
  launchCopy = launch;
  passiveCollectionConfig = [(PTPCPassiveCollectionService *)self passiveCollectionConfig];
  (*(launch + 2))(launchCopy, [passiveCollectionConfig collectLoggingAppLaunch]);
}

- (void)setCollectLoggingAppLaunch:(BOOL)launch callback:(id)callback
{
  launchCopy = launch;
  callbackCopy = callback;
  passiveCollectionConfig = [(PTPCPassiveCollectionService *)self passiveCollectionConfig];
  [passiveCollectionConfig setCollectLoggingAppLaunch:launchCopy];

  callbackCopy[2](callbackCopy, 0);
}

- (void)resetCollectLoggingAppLaunch:(id)launch
{
  launchCopy = launch;
  passiveCollectionConfig = [(PTPCPassiveCollectionService *)self passiveCollectionConfig];
  [passiveCollectionConfig resetCollectLoggingAppLaunch];

  launchCopy[2](launchCopy, 0);
}

- (void)resetSettings:(id)settings
{
  settingsCopy = settings;
  passiveCollectionConfig = [(PTPCPassiveCollectionService *)self passiveCollectionConfig];
  [passiveCollectionConfig resetSettings];

  instrumentationConfig = [(PTPCPassiveCollectionService *)self instrumentationConfig];
  resetPersistedDefaultsAndRestoreDefaultInstrumentationSettings = [instrumentationConfig resetPersistedDefaultsAndRestoreDefaultInstrumentationSettings];

  settingsCopy[2](settingsCopy, 0);
}

- (void)_generateCoreAnalyticsTelemetry:(id)telemetry collectionEndDate:(id)date traceWindowStartDate:(id)startDate traceWindowEndDate:(id)endDate traceCount:(unint64_t)count totalTraceSizeBytes:(unint64_t)bytes archiveSizeBytes:(id)sizeBytes collectionType:(unsigned __int8)self0
{
  sizeBytesCopy = sizeBytes;
  endDateCopy = endDate;
  startDateCopy = startDate;
  [date timeIntervalSinceDate:telemetry];
  v21 = v20;
  [endDateCopy timeIntervalSinceDate:startDateCopy];
  v23 = v22;

  v50[0] = @"TimeToCollectSeconds";
  v24 = [NSNumber numberWithDouble:v21];
  v51[0] = v24;
  v50[1] = @"CollectionWindowSeconds";
  v25 = [NSNumber numberWithDouble:v23];
  v51[1] = v25;
  v50[2] = @"TraceCount";
  v26 = [NSNumber numberWithUnsignedLongLong:count];
  v51[2] = v26;
  v50[3] = @"TotalTraceBytes";
  v27 = [NSNumber numberWithUnsignedLongLong:bytes];
  v51[3] = v27;
  v50[4] = @"CollectionType";
  v28 = [NSNumber numberWithUnsignedChar:type];
  v51[4] = v28;
  v29 = [NSDictionary dictionaryWithObjects:v51 forKeys:v50 count:5];
  v30 = [v29 mutableCopy];

  if (sizeBytesCopy)
  {
    [v30 setObject:sizeBytesCopy forKeyedSubscript:@"ArchiveSizeBytes"];
  }

  instrumentationConfig = [(PTPCPassiveCollectionService *)self instrumentationConfig];
  v43 = 0;
  v32 = [instrumentationConfig perDrawableEnabled:&v43];
  v33 = v43;

  if (v32)
  {
    [v30 setObject:v32 forKeyedSubscript:@"MetalPerDrawableEnabled"];
  }

  instrumentationConfig2 = [(PTPCPassiveCollectionService *)self instrumentationConfig];
  v42 = 0;
  v35 = [instrumentationConfig2 mssPMICycleInterval:&v42];
  v36 = v42;

  if (v35)
  {
    [v30 setObject:v35 forKeyedSubscript:@"MSSPMIInterval"];
  }

  v38 = sub_10000CFA4(v37);
  if (os_signpost_enabled(v38))
  {
    generateCoreAnalyticsTelemetry = [(PTPCPassiveCollectionService *)self generateCoreAnalyticsTelemetry];
    v40 = @"NO";
    if (generateCoreAnalyticsTelemetry)
    {
      v40 = @"YES";
    }

    if ((type - 1) > 3u)
    {
      v41 = @"Unknown";
    }

    else
    {
      v41 = *(&off_100020C40 + (type - 1));
    }

    *buf = 138543874;
    v45 = v40;
    v46 = 2114;
    v47 = v41;
    v48 = 2114;
    v49 = v30;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v38, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TraceCollectionCoreAnalytics", "Will submit payload: %{public}@, collection type: %{public}@\nPayload:\n%{public}@", buf, 0x20u);
  }

  if ([(PTPCPassiveCollectionService *)self generateCoreAnalyticsTelemetry])
  {
    AnalyticsSendEvent();
  }
}

- (void)_generateCollectionErrorCoreAnalyticsTelemetry:(unsigned __int8)telemetry traceWindowStartDate:(id)date traceWindowEndDate:(id)endDate collectionType:(unsigned __int8)type
{
  if (telemetry != 1)
  {
    typeCopy = type;
    telemetryCopy = telemetry;
    [endDate timeIntervalSinceDate:date];
    v27[0] = @"CollectionWindowDuration";
    v9 = [NSNumber numberWithDouble:?];
    v28[0] = v9;
    v27[1] = @"CollectionType";
    v10 = [NSNumber numberWithUnsignedChar:typeCopy];
    v28[1] = v10;
    v27[2] = @"ErrorType";
    v11 = [NSNumber numberWithUnsignedChar:telemetryCopy];
    v28[2] = v11;
    v12 = [NSDictionary dictionaryWithObjects:v28 forKeys:v27 count:3];

    v14 = sub_10000CFA4(v13);
    if (os_signpost_enabled(v14))
    {
      generateCoreAnalyticsTelemetry = [(PTPCPassiveCollectionService *)self generateCoreAnalyticsTelemetry];
      v16 = @"NO";
      if (generateCoreAnalyticsTelemetry)
      {
        v16 = @"YES";
      }

      if ((typeCopy - 1) > 3u)
      {
        v17 = @"Unknown";
      }

      else
      {
        v17 = *(&off_100020C40 + (typeCopy - 1));
      }

      if ((telemetryCopy - 2) > 3u)
      {
        v18 = @"Unknown";
      }

      else
      {
        v18 = *(&off_100020C60 + (telemetryCopy - 2));
      }

      v19 = 138544130;
      v20 = v16;
      v21 = 2114;
      v22 = v17;
      v23 = 2114;
      v24 = v18;
      v25 = 2114;
      v26 = v12;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TraceCollectionErrorCoreAnalytics", "Will submit payload: %{public}@, collection type: %{public}@, error type: %{public}@\nPayload:\n%{public}@", &v19, 0x2Au);
    }

    if ([(PTPCPassiveCollectionService *)self generateCoreAnalyticsTelemetry])
    {
      AnalyticsSendEvent();
    }
  }
}

- (void)_collectionQueue_collectWithStartDate:(id)date endDate:(id)endDate traceNamePrefix:(id)prefix collectionType:(unsigned __int8)type triggerUserNotification:(BOOL)notification collectionConfig:(id)config clearPresetSettings:(BOOL)settings callback:(id)self0
{
  notificationCopy = notification;
  typeCopy = type;
  dateCopy = date;
  endDateCopy = endDate;
  prefixCopy = prefix;
  configCopy = config;
  callbackCopy = callback;
  v162 = os_transaction_create();
  if (!prefixCopy)
  {
    prefixCopy = [configCopy name];
  }

  selfCopy = self;
  [(PTPCPassiveCollectionService *)self _confirmTraceDirectoryExists];
  v18 = sub_10000AB30(dateCopy);
  v19 = sub_10000AB30(endDateCopy);
  v165 = prefixCopy;
  v20 = [NSString stringWithFormat:@"%@_%@_to_%@", prefixCopy, v18, v19];

  v22 = sub_10000B758(v21);
  v23 = v22;
  v24 = qword_100025A60;
  if ((qword_100025A60 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
  {
    if (notificationCopy)
    {
      v25 = @"Notification";
    }

    else
    {
      v25 = @"Handle";
    }

    v26 = [configCopy debugDescription];
    *buf = 138544386;
    v184 = v20;
    v185 = 2114;
    v186 = dateCopy;
    v187 = 2114;
    v188 = endDateCopy;
    v189 = 2114;
    v190 = v25;
    v191 = 2114;
    v192 = v26;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v23, OS_SIGNPOST_INTERVAL_BEGIN, v24, "CollectingTrace", "Collecting trace with prefix '%{public}@', interval: %{public}@ -> %{public}@, Exposing result via %{public}@\n%{public}@", buf, 0x34u);
  }

  v27 = qword_100025A60++;
  v166 = +[NSDate date];
  v28 = NSTemporaryDirectory();
  v29 = [v28 stringByAppendingPathComponent:v20];

  [NSURL fileURLWithPath:v29];
  v164 = v161 = v20;
  v30 = [[_TtC20ptpassivecollectiond20PTPCPassiveCollector alloc] initWithConfig:configCopy traceNamePrefix:v20 outputDirectory:v164];
  v180 = 0;
  v31 = dateCopy;
  v32 = [(PTPCPassiveCollector *)v30 collectWithStartDate:dateCopy endDate:endDateCopy error:&v180];
  v33 = v180;
  v34 = endDateCopy;
  v163 = callbackCopy;
  v159 = v32;
  v160 = v30;
  if (v33)
  {
    v35 = v33;
    v36 = v165;
    if (settings)
    {
      instrumentationConfig = [(PTPCPassiveCollectionService *)selfCopy instrumentationConfig];
      clearPresetSettings = [instrumentationConfig clearPresetSettings];
    }

    v39 = v31;
    v40 = [(PTPCPassiveCollectionService *)selfCopy _generateCollectionErrorCoreAnalyticsTelemetry:2 traceWindowStartDate:v31 traceWindowEndDate:v34 collectionType:typeCopy];
    if (callbackCopy)
    {
      v40 = (callbackCopy[2])(callbackCopy, 0, 0, v35);
    }

    v41 = sub_10000B758(v40);
    v42 = v41;
    v43 = qword_100025A60;
    v44 = v166;
    if ((qword_100025A60 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v41))
    {
      localizedDescription = [(__CFString *)v35 localizedDescription];
      v46 = localizedDescription;
      v47 = @"Unknown";
      if (localizedDescription)
      {
        v47 = localizedDescription;
      }

      *buf = 138543362;
      v184 = v47;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v42, OS_SIGNPOST_INTERVAL_END, v43, "CollectingTrace", "Failed due to error: %{public}@", buf, 0xCu);

      v44 = v166;
    }

    goto LABEL_122;
  }

  v153 = v27;
  if ([v32 count])
  {
    v155 = v29;
    v154 = endDateCopy;
    v152 = v31;
    v178 = 0u;
    v179 = 0u;
    v176 = 0u;
    v177 = 0u;
    obj = v32;
    v48 = [obj countByEnumeratingWithState:&v176 objects:v182 count:16];
    v49 = &AnalyticsSendEvent_ptr;
    if (v48)
    {
      v50 = v48;
      v51 = 0;
      v52 = *v177;
      do
      {
        for (i = 0; i != v50; i = i + 1)
        {
          if (*v177 != v52)
          {
            objc_enumerationMutation(obj);
          }

          v54 = *(*(&v176 + 1) + 8 * i);
          defaultManager = [v49[192] defaultManager];
          v175 = 0;
          v56 = [defaultManager attributesOfItemAtPath:v54 error:&v175];
          v57 = v175;
          fileSize = [v56 fileSize];

          v60 = sub_10000B758(v59);
          if (os_signpost_enabled(v60))
          {
            *buf = 138543874;
            v184 = v54;
            v185 = 2050;
            v186 = fileSize;
            v187 = 2114;
            v188 = v57;
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v60, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CollectedTrace", "Collected trace: '%{public}@', %{public}llu bytes (size error: %{public}@", buf, 0x20u);
          }

          v51 += fileSize;
          v49 = &AnalyticsSendEvent_ptr;
        }

        v50 = [obj countByEnumeratingWithState:&v176 objects:v182 count:16];
      }

      while (v50);
    }

    else
    {
      v51 = 0;
    }

    if (notificationCopy)
    {
      v70 = @"/var/mobile/Library/Logs/CrashReporter/DiagnosticLogs/PerformanceTraces/";
    }

    else
    {
      v70 = NSTemporaryDirectory();
    }

    v36 = v165;
    v71 = v155;
    v35 = v70;
    lastPathComponent = [v71 lastPathComponent];
    v73 = [NSString stringWithFormat:@"%@.aar", lastPathComponent];
    v74 = [(__CFString *)v35 stringByAppendingPathComponent:v73];

    v181 = 0;
    v169 = v71;
    LODWORD(v71) = sub_10000F6F8(v71, v74, &v181);
    v75 = v181;
    v76 = v75;
    if (!v71 || v75)
    {
      v77 = sub_10000B5D4(v75);
      if (os_signpost_enabled(v77))
      {
        localizedDescription2 = [v76 localizedDescription];
        v79 = localizedDescription2;
        v80 = @"Unknown";
        *buf = 138543874;
        v184 = v169;
        if (localizedDescription2)
        {
          v80 = localizedDescription2;
        }

        v185 = 2114;
        v186 = v74;
        v187 = 2112;
        v188 = v80;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v77, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ArchivingFailure", "Failed to archive '%{public}@' to '%{public}@' due to error: %@", buf, 0x20u);
      }

      v42 = 0;
    }

    else
    {
      v42 = v74;
    }

    defaultManager2 = [v49[192] defaultManager];
    v174 = 0;
    v82 = [defaultManager2 removeItemAtURL:v164 error:&v174];
    v83 = v174;

    if (v82)
    {
      v85 = sub_10000B758(v84);
      v39 = v152;
      if (!os_signpost_enabled(v85))
      {
        goto LABEL_60;
      }

      path = [v164 path];
      *buf = 138543362;
      v184 = path;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v85, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TraceFileCleanup", "Cleaned up '%{public}@'", buf, 0xCu);
    }

    else
    {
      v85 = sub_10000B5D4(v84);
      v39 = v152;
      if (!os_signpost_enabled(v85))
      {
        goto LABEL_60;
      }

      path = [v164 path];
      localizedDescription3 = [v83 localizedDescription];
      v88 = localizedDescription3;
      v89 = @"Unknown";
      if (localizedDescription3)
      {
        v89 = localizedDescription3;
      }

      *buf = 138543618;
      v184 = path;
      v185 = 2112;
      v186 = v89;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v85, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TraceFileCleanupFailure", "Failed to cleanup '%{public}@' due to error: %@", buf, 0x16u);
    }

LABEL_60:
    v29 = v155;

    v90 = sub_100001644(v42);
    v44 = v166;
    if ((v90 & 1) == 0)
    {
      v91 = sub_10000B5D4(v90);
      if (os_signpost_enabled(v91))
      {
        *buf = 138543362;
        v184 = v42;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v91, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "FailedToMarkPurgeable", "Failed to mark '%{public}@' medium urgency purgeable", buf, 0xCu);
      }
    }

    v92 = sub_1000021A8(v42);
    v93 = v92;
    if (v92)
    {
      v94 = sub_10000B5D4(v92);
      if (os_signpost_enabled(v94))
      {
        *buf = 138543362;
        v184 = v42;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v94, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "FailedToUpdatePermissions", "Failed to update POSIX permissions of file '%{public}@'", buf, 0xCu);
      }

      v29 = v155;
    }

    if (notificationCopy)
    {
      v173 = 0;
      v96 = sub_10000175C(v42, &v173);
      v97 = v173;
      v98 = v97;
      if (v96)
      {
        v99 = 0;
        v100 = 0;
        v170 = 0;
        settingsCopy2 = settings;
        v102 = v153;
        v103 = &AnalyticsSendEvent_ptr;
LABEL_112:

        date = [v103[204] date];
        LOBYTE(v151) = typeCopy;
        -[PTPCPassiveCollectionService _generateCoreAnalyticsTelemetry:collectionEndDate:traceWindowStartDate:traceWindowEndDate:traceCount:totalTraceSizeBytes:archiveSizeBytes:collectionType:](selfCopy, "_generateCoreAnalyticsTelemetry:collectionEndDate:traceWindowStartDate:traceWindowEndDate:traceCount:totalTraceSizeBytes:archiveSizeBytes:collectionType:", v166, date, v39, v154, [obj count], v51, v99, v151);
        if (settingsCopy2)
        {
          instrumentationConfig2 = [(PTPCPassiveCollectionService *)selfCopy instrumentationConfig];
          clearPresetSettings2 = [instrumentationConfig2 clearPresetSettings];
        }

        v146 = v163;
        if (v163)
        {
          v146 = v163[2]();
        }

        v147 = sub_10000B758(v146);
        v148 = v147;
        v34 = v154;
        if (v102 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v147))
        {
          *buf = 138543362;
          v184 = v42;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v148, OS_SIGNPOST_INTERVAL_END, v102, "CollectingTrace", "Successfully collected to path '%{public}@. Scheduling eager exit to mitigate fragmentation/leaks.", buf, 0xCu);
        }

        sub_100002698();
        v149 = dispatch_time(0, 10000000000);
        connectionQueue = [(PTPCPassiveCollectionService *)selfCopy connectionQueue];
        dispatch_after(v149, connectionQueue, &stru_100020B70);

        v36 = v165;
        v44 = v166;
LABEL_120:
        v29 = v155;
LABEL_121:

LABEL_122:
        v69 = v162;
        goto LABEL_123;
      }

      v111 = sub_10000B5D4(v97);
      v103 = &AnalyticsSendEvent_ptr;
      if (os_signpost_enabled(v111))
      {
        localizedDescription4 = [v98 localizedDescription];
        v113 = localizedDescription4;
        v114 = @"Unknown";
        if (localizedDescription4)
        {
          v114 = localizedDescription4;
        }

        *buf = 138543618;
        v184 = v42;
        v185 = 2114;
        v186 = v114;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v111, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "FailedToPostUserNotification", "Non-fatal error: Failed to post user notification for '%{public}@' due to error: %{public}@", buf, 0x16u);
      }

      v99 = 0;
      v100 = 0;
      v170 = 0;
    }

    else
    {
      if (!v42)
      {
        v115 = sub_10000B5D4(v95);
        if (os_signpost_enabled(v115))
        {
          *buf = 138543618;
          v184 = v169;
          v185 = 2114;
          v186 = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v115, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ArchivingFailure", "Failed to archive '%{public}@ to '%{public}@'", buf, 0x16u);
        }

        v170 = [NSError passiveTraceError:2 description:@"Archiving collected trace files failed"];
        v34 = v154;
        if (settings)
        {
          instrumentationConfig3 = [(PTPCPassiveCollectionService *)selfCopy instrumentationConfig];
          clearPresetSettings3 = [instrumentationConfig3 clearPresetSettings];
        }

        [(PTPCPassiveCollectionService *)selfCopy _generateCollectionErrorCoreAnalyticsTelemetry:4 traceWindowStartDate:v39 traceWindowEndDate:v154 collectionType:typeCopy];
        v118 = v163;
        if (v163)
        {
          v118 = v163[2]();
        }

        v119 = sub_10000B758(v118);
        v100 = v119;
        v120 = qword_100025A60;
        if ((qword_100025A60 - 1) > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v119))
        {
          goto LABEL_121;
        }

        localizedDescription5 = [v170 localizedDescription];
        v122 = localizedDescription5;
        v123 = @"Unknown";
        if (localizedDescription5)
        {
          v123 = localizedDescription5;
        }

        *buf = 138543362;
        v184 = v123;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v100, OS_SIGNPOST_INTERVAL_END, v120, "CollectingTrace", "Failed due to error: %{public}@", buf, 0xCu);

        goto LABEL_120;
      }

      v104 = v42;
      v105 = +[NSFileManager defaultManager];
      v106 = [v105 attributesOfItemAtPath:v104 error:0];
      v157 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v106 fileSize]);

      v170 = v104;
      [v104 UTF8String];
      v107 = sandbox_extension_issue_file();
      v103 = &AnalyticsSendEvent_ptr;
      if (!v107)
      {
        v124 = sub_10000B5D4(0);
        v34 = v154;
        if (os_signpost_enabled(v124))
        {
          *buf = 138543362;
          v184 = v170;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v124, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SandboxExtensionFailure", "Failed to issue RW extension for '%{public}@", buf, 0xCu);
        }

        v125 = +[NSFileManager defaultManager];
        v172 = 0;
        v126 = [v125 removeItemAtPath:v170 error:&v172];
        v127 = v172;

        if ((v126 & 1) == 0)
        {
          v129 = sub_10000B5D4(v128);
          if (os_signpost_enabled(v129))
          {
            localizedDescription6 = [v127 localizedDescription];
            v131 = localizedDescription6;
            v132 = @"Unknown";
            if (localizedDescription6)
            {
              v132 = localizedDescription6;
            }

            *buf = 138543618;
            v184 = v170;
            v185 = 2112;
            v186 = v132;
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v129, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ArchiveCleanupFailure", "Failed to cleanup '%{public}@' due to error: %@", buf, 0x16u);
          }
        }

        v133 = [NSError passiveTraceError:2 description:@"Failed to issue sandbox extension"];
        if (settings)
        {
          instrumentationConfig4 = [(PTPCPassiveCollectionService *)selfCopy instrumentationConfig];
          clearPresetSettings4 = [instrumentationConfig4 clearPresetSettings];
        }

        [(PTPCPassiveCollectionService *)selfCopy _generateCollectionErrorCoreAnalyticsTelemetry:5 traceWindowStartDate:v39 traceWindowEndDate:v154 collectionType:typeCopy];
        v136 = v163;
        if (v163)
        {
          v136 = v163[2]();
        }

        v137 = sub_10000B758(v136);
        v138 = v137;
        v139 = qword_100025A60;
        if ((qword_100025A60 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v137))
        {
          localizedDescription7 = [v133 localizedDescription];
          v141 = localizedDescription7;
          v142 = @"Unknown";
          if (localizedDescription7)
          {
            v142 = localizedDescription7;
          }

          *buf = 138543362;
          v184 = v142;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v138, OS_SIGNPOST_INTERVAL_END, v139, "CollectingTrace", "Failed due to error: %{public}@", buf, 0xCu);

          v34 = v154;
        }

        v36 = v165;
        v44 = v166;
        v29 = v155;
        v100 = v157;
        goto LABEL_121;
      }

      v108 = v107;
      v109 = [NSString stringWithUTF8String:v107];
      free(v108);
      v98 = sub_10000B758(v110);
      if (os_signpost_enabled(v98))
      {
        *buf = 138543362;
        v100 = v170;
        v184 = v170;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v98, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CollectionSuccess", "Successfully archived to '%{public}@'", buf, 0xCu);
        v99 = v157;
      }

      else
      {
        v99 = v157;
        v100 = v170;
      }

      v170 = v109;
    }

    settingsCopy2 = settings;
    v102 = v153;
    goto LABEL_112;
  }

  v35 = [NSError passiveTraceError:2 description:@"Failed to collect any trace files due to unknown error"];
  v39 = v31;
  if (settings)
  {
    instrumentationConfig5 = [(PTPCPassiveCollectionService *)selfCopy instrumentationConfig];
    clearPresetSettings5 = [instrumentationConfig5 clearPresetSettings];
  }

  v63 = [(PTPCPassiveCollectionService *)selfCopy _generateCollectionErrorCoreAnalyticsTelemetry:3 traceWindowStartDate:v31 traceWindowEndDate:v34 collectionType:typeCopy];
  v36 = v165;
  if (callbackCopy)
  {
    v63 = (callbackCopy[2])(callbackCopy, 0, 0, v35);
  }

  v64 = sub_10000B758(v63);
  v42 = v64;
  v65 = qword_100025A60;
  if ((qword_100025A60 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v64))
  {
    localizedDescription8 = [(__CFString *)v35 localizedDescription];
    v67 = localizedDescription8;
    v68 = @"Unknown";
    if (localizedDescription8)
    {
      v68 = localizedDescription8;
    }

    *buf = 138543362;
    v184 = v68;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v42, OS_SIGNPOST_INTERVAL_END, v65, "CollectingTrace", "Failed due to error: %{public}@", buf, 0xCu);

    v36 = v165;
  }

  v69 = v162;
  v44 = v166;
LABEL_123:
}

- (void)collectWithStartDate:(id)date endDate:(id)endDate traceNamePrefix:(id)prefix triggerUserNotification:(BOOL)notification callback:(id)callback
{
  dateCopy = date;
  endDateCopy = endDate;
  prefixCopy = prefix;
  callbackCopy = callback;
  collectionQueue = [(PTPCPassiveCollectionService *)self collectionQueue];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10000E5F8;
  v21[3] = &unk_100020B98;
  v21[4] = self;
  v22 = dateCopy;
  v23 = endDateCopy;
  v24 = prefixCopy;
  notificationCopy = notification;
  v25 = callbackCopy;
  v17 = callbackCopy;
  v18 = prefixCopy;
  v19 = endDateCopy;
  v20 = dateCopy;
  dispatch_async(collectionQueue, v21);
}

- (void)collectLookbackIntervalWithTraceNamePrefix:(id)prefix triggerUserNotification:(BOOL)notification callback:(id)callback
{
  prefixCopy = prefix;
  callbackCopy = callback;
  passiveCollectionConfig = [(PTPCPassiveCollectionService *)self passiveCollectionConfig];
  [passiveCollectionConfig collectionLookbackInterval];
  v12 = v11;

  v13 = [NSDate dateWithTimeIntervalSinceNow:-v12];
  v14 = +[NSDate date];
  collectionQueue = [(PTPCPassiveCollectionService *)self collectionQueue];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10000E7F4;
  v20[3] = &unk_100020B98;
  v20[4] = self;
  v21 = v13;
  v22 = v14;
  v23 = prefixCopy;
  notificationCopy = notification;
  v24 = callbackCopy;
  v16 = callbackCopy;
  v17 = prefixCopy;
  v18 = v14;
  v19 = v13;
  dispatch_async(collectionQueue, v20);
}

- (void)_collectAndClearCurrentSettingWithTraceNamePrefix:(id)prefix triggerUserNotification:(BOOL)notification callback:(id)callback
{
  prefixCopy = prefix;
  callbackCopy = callback;
  passiveCollectionConfig = [(PTPCPassiveCollectionService *)self passiveCollectionConfig];
  imitationRecordStartDate = [passiveCollectionConfig imitationRecordStartDate];

  passiveCollectionConfig2 = [(PTPCPassiveCollectionService *)self passiveCollectionConfig];
  [passiveCollectionConfig2 setImitationRecordStartDate:0];

  instrumentationConfig = [(PTPCPassiveCollectionService *)self instrumentationConfig];
  currentPresetSetting = [instrumentationConfig currentPresetSetting];

  if (currentPresetSetting)
  {
    v15 = sub_1000041C0(currentPresetSetting);
    v16 = v15;
    if (v15 && imitationRecordStartDate)
    {
      if (currentPresetSetting == 1)
      {
        v17 = 3;
      }

      else
      {
        v17 = 0;
      }

      v18 = +[NSDate date];
      collectionQueue = [(PTPCPassiveCollectionService *)self collectionQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10000EB00;
      block[3] = &unk_100020BC0;
      block[4] = self;
      v26 = imitationRecordStartDate;
      v27 = v18;
      v31 = v17;
      notificationCopy = notification;
      v28 = prefixCopy;
      v29 = v16;
      v30 = callbackCopy;
      v20 = v16;
      v21 = v18;
      dispatch_async(collectionQueue, block);
    }

    else
    {
      v22 = sub_10000B5D4(v15);
      if (os_signpost_enabled(v22))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v22, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TraceCollectionFromRecordingSessionFailed", "", buf, 2u);
      }

      instrumentationConfig2 = [(PTPCPassiveCollectionService *)self instrumentationConfig];
      clearPresetSettings = [instrumentationConfig2 clearPresetSettings];

      v21 = [NSError passiveTraceError:0 description:@"Collection failed due to unknown internal error"];
      (*(callbackCopy + 2))(callbackCopy, 0, 0, v21);
    }
  }
}

- (void)getCollectLookbackInterval:(id)interval
{
  intervalCopy = interval;
  passiveCollectionConfig = [(PTPCPassiveCollectionService *)self passiveCollectionConfig];
  [passiveCollectionConfig collectionLookbackInterval];
  (*(interval + 2))(intervalCopy);
}

- (void)setCollectLookbackInterval:(double)interval callback:(id)callback
{
  if (interval <= 0.0)
  {
    callbackCopy = callback;
    callbackCopy2 = [[NSString alloc] initWithFormat:@"Invalid lookback interval: %f seconds. Must be > 0", *&interval];
    v8 = [NSError passiveTraceError:5 description:?];
    callbackCopy[2](callbackCopy, v8);
  }

  else
  {
    callbackCopy2 = callback;
    passiveCollectionConfig = [(PTPCPassiveCollectionService *)self passiveCollectionConfig];
    [passiveCollectionConfig setCollectionLookbackInterval:interval];

    callbackCopy2[2](callbackCopy2, 0);
  }
}

- (void)resetCollectLookbackInterval:(id)interval
{
  intervalCopy = interval;
  passiveCollectionConfig = [(PTPCPassiveCollectionService *)self passiveCollectionConfig];
  [passiveCollectionConfig resetCollectionLookbackInterval];

  intervalCopy[2](intervalCopy, 0);
}

- (void)getImitationRecordStartDate:(id)date
{
  dateCopy = date;
  passiveCollectionConfig = [(PTPCPassiveCollectionService *)self passiveCollectionConfig];
  imitationRecordStartDate = [passiveCollectionConfig imitationRecordStartDate];
  (*(date + 2))(dateCopy, imitationRecordStartDate);
}

- (void)setImitationRecordStartDate:(id)date callback:(id)callback
{
  callbackCopy = callback;
  dateCopy = date;
  passiveCollectionConfig = [(PTPCPassiveCollectionService *)self passiveCollectionConfig];
  [passiveCollectionConfig setImitationRecordStartDate:dateCopy];

  callbackCopy[2](callbackCopy, 0);
}

- (void)getCurrentPresetSettings:(id)settings
{
  settingsCopy = settings;
  instrumentationConfig = [(PTPCPassiveCollectionService *)self instrumentationConfig];
  currentPresetSetting = [instrumentationConfig currentPresetSetting];

  if (currentPresetSetting)
  {
    currentPresetSetting = [NSNumber numberWithUnsignedInteger:currentPresetSetting];
  }

  settingsCopy[2](settingsCopy, currentPresetSetting, 0);
}

- (void)getInstrumentationConfigIsLocked:(id)locked
{
  lockedCopy = locked;
  instrumentationConfig = [(PTPCPassiveCollectionService *)self instrumentationConfig];
  v6 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [instrumentationConfig instrumentationSettingsAreLocked]);
  (*(locked + 2))(lockedCopy, v6, 0);
}

- (void)applyPresetSettings:(unint64_t)settings callback:(id)callback
{
  callbackCopy = callback;
  instrumentationConfig = [(PTPCPassiveCollectionService *)self instrumentationConfig];
  v7 = [instrumentationConfig applyPresetSettings:settings];

  if (!v7)
  {
    v8 = +[NSDate date];
    passiveCollectionConfig = [(PTPCPassiveCollectionService *)self passiveCollectionConfig];
    [passiveCollectionConfig setImitationRecordStartDate:v8];
  }

  callbackCopy[2](callbackCopy, v7);
}

- (void)clearCurrentPresetSettings:(id)settings
{
  settingsCopy = settings;
  passiveCollectionConfig = [(PTPCPassiveCollectionService *)self passiveCollectionConfig];
  [passiveCollectionConfig setImitationRecordStartDate:0];

  instrumentationConfig = [(PTPCPassiveCollectionService *)self instrumentationConfig];
  clearPresetSettings = [instrumentationConfig clearPresetSettings];
  settingsCopy[2](settingsCopy, clearPresetSettings);
}

- (void)getMssPmiCycleInterval:(id)interval
{
  intervalCopy = interval;
  instrumentationConfig = [(PTPCPassiveCollectionService *)self instrumentationConfig];
  v8 = 0;
  v6 = [instrumentationConfig mssPMICycleInterval:&v8];
  v7 = v8;

  intervalCopy[2](intervalCopy, v6, v7);
}

- (void)setMssPmiCycleInterval:(id)interval callback:(id)callback
{
  callbackCopy = callback;
  intervalCopy = interval;
  instrumentationConfig = [(PTPCPassiveCollectionService *)self instrumentationConfig];
  v9 = [instrumentationConfig setMssPMICycleInterval:intervalCopy];

  (*(callback + 2))(callbackCopy, v9);
}

- (void)getMetalPerDrawableSignpostsEnabled:(id)enabled
{
  enabledCopy = enabled;
  instrumentationConfig = [(PTPCPassiveCollectionService *)self instrumentationConfig];
  v8 = 0;
  v6 = [instrumentationConfig perDrawableEnabled:&v8];
  v7 = v8;

  enabledCopy[2](enabledCopy, v6, v7);
}

- (void)setMetalPerDrawableSignpostsEnabled:(id)enabled callback:(id)callback
{
  callbackCopy = callback;
  enabledCopy = enabled;
  instrumentationConfig = [(PTPCPassiveCollectionService *)self instrumentationConfig];
  v9 = [instrumentationConfig setPerDrawableEnabled:enabledCopy];

  (*(callback + 2))(callbackCopy, v9);
}

- (void)getMetricMonitoredAppProcessNames:(id)names
{
  namesCopy = names;
  instrumentationConfig = [(PTPCPassiveCollectionService *)self instrumentationConfig];
  v8 = 0;
  v6 = [instrumentationConfig metricMonitoredAppProcessNames:&v8];
  v7 = v8;

  namesCopy[2](namesCopy, v6, v7);
}

- (void)setMetricMonitoredAppProcessNames:(id)names callback:(id)callback
{
  callbackCopy = callback;
  namesCopy = names;
  instrumentationConfig = [(PTPCPassiveCollectionService *)self instrumentationConfig];
  v9 = [instrumentationConfig setMetricMonitoredAppProcessNames:namesCopy];

  (*(callback + 2))(callbackCopy, v9);
}

- (void)getMetricMonitoringEnabled:(id)enabled
{
  enabledCopy = enabled;
  instrumentationConfig = [(PTPCPassiveCollectionService *)self instrumentationConfig];
  v8 = 0;
  v6 = [instrumentationConfig metricMonitoringEnabled:&v8];
  v7 = v8;

  enabledCopy[2](enabledCopy, v6, v7);
}

- (void)setMetricMonitoringEnabled:(id)enabled callback:(id)callback
{
  callbackCopy = callback;
  if (enabled)
  {
    enabled = [enabled BOOLValue];
  }

  instrumentationConfig = [(PTPCPassiveCollectionService *)self instrumentationConfig];
  v7 = [instrumentationConfig setMetricMonitoringEnabled:enabled];
  callbackCopy[2](callbackCopy, v7);
}

@end