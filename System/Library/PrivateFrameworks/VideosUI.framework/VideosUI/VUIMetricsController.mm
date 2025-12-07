@interface VUIMetricsController
+ (id)_baseToVPAFMapping;
+ (id)sharedInstance;
- (BOOL)arePageEventsIdentical:(id)identical previousPage:(id)page;
- (NSDictionary)baseFields;
- (NSDictionary)baseFieldsForVPAF;
- (NSDictionary)profileSelectorPageMetrics;
- (NSDictionary)sidebarPageMetrics;
- (NSDictionary)tabBarPageMetrics;
- (VUIMetricsController)init;
- (VUIScopedBackgroundTask)backgroundTask;
- (id)_createDataAddingBaseAndPageFieldsToEventData:(id)data forEventType:(id)type;
- (id)_getCurrentMetricsTopic;
- (id)_getLocationAuthorizationStatus;
- (id)_processPageFields:(id)fields forEventType:(id)type;
- (id)createEventTime;
- (id)extractPageMetricsFromEventData:(id)data;
- (id)getBasePerfData:(BOOL)data;
- (id)getMetricsEnhancedBuyParams:(id)params;
- (id)getMetricsOverlayForBundleOffer;
- (id)getMetricsOverlayForWebContainer;
- (id)getRecentEventsForDebuggerUI;
- (id)iTunesLibraryPlaybackMediaMetricsForAdamID:(id)d mediaType:(id)type;
- (void)_handleGroupActivitiesSessionStateChange:(id)change;
- (void)_handleLocationChange:(id)change;
- (void)_handleServerConfigChange:(id)change;
- (void)_handleTabBarChange:(id)change;
- (void)_handleWLKAppLibChange:(id)change;
- (void)_handleWLKSettingsDidChange:(id)change;
- (void)_initializeBaseFields;
- (void)_recordAccount;
- (void)_recordEnter:(id)enter;
- (void)_recordEvent:(id)event withEventData:(id)data pageData:(id)pageData;
- (void)_recordEventWithJet:(id)jet withEventData:(id)data pageData:(id)pageData;
- (void)_recordExit:(id)exit;
- (void)_removeBaseFieldsForKeys:(id)keys;
- (void)_saveRecentEvents:(id)events;
- (void)_setGDPRConsentStatus:(BOOL)status;
- (void)_updateBaseFieldsWithData:(id)data;
- (void)flushMetrics;
- (void)forceGDPRConsentStatus:(BOOL)status;
- (void)recordAppBecameActive;
- (void)recordAppLaunched;
- (void)recordAppWillBackground;
- (void)recordAppWillTerminate;
- (void)recordDialog:(id)dialog;
- (void)recordImpressions:(id)impressions pageData:(id)data;
- (void)recordLog:(id)log;
- (void)recordMedia:(id)media;
- (void)recordOpenUrlLaunchWithExtURL:(id)l andOptions:(id)options;
- (void)recordPage:(id)page;
- (void)recordPageChange:(id)change;
- (void)recordPerfEvent:(id)event;
- (void)recordRawEvent:(id)event;
- (void)registerForBaseFieldChanges;
- (void)setBackgroundTask:(id)task;
- (void)setBaseFields:(id)fields;
- (void)setLastRecordedPageEventData:(id)data;
- (void)setupMetricsController;
- (void)updateGDPRConsentStatus;
@end

@implementation VUIMetricsController

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__VUIMetricsController_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_once_500 != -1)
  {
    dispatch_once(&sharedInstance_once_500, block);
  }

  v2 = sharedInstance_sharedInstance_501;

  return v2;
}

- (void)setupMetricsController
{
  v25 = *MEMORY[0x1E69E9840];
  self->_isAppJustLaunched = 1;
  *&self->_shouldRecordEnter = 1;
  self->_shouldRecordCachedAccount = 0;
  v3 = VUIMetrics_serialQueueLabel;
  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v5 = dispatch_queue_create(v3, v4);
  metricsDataDispatchSQ = self->_metricsDataDispatchSQ;
  self->_metricsDataDispatchSQ = v5;

  self->_isInternalBuild = os_variant_has_internal_content();
  v7 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:0 capacity:30];
  savedRecentEvents = self->_savedRecentEvents;
  self->_savedRecentEvents = v7;

  v9 = [VUIMetricsLocalRecorder alloc];
  v10 = +[VUIMetricsDiskManager sharedInstance];
  v11 = [(VUIMetricsLocalRecorder *)v9 initWithStorageManager:v10];
  localMetricsRecorder = self->_localMetricsRecorder;
  self->_localMetricsRecorder = v11;

  activeOrLocalAccount = [MEMORY[0x1E69D5920] activeOrLocalAccount];
  v14 = [MEMORY[0x1E698C790] acknowledgementNeededForPrivacyIdentifier:@"com.apple.onboarding.tvapp" account:activeOrLocalAccount];
  self->_isGDPRConsented = v14 ^ 1;
  v15 = VUIDefaultLogObject(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    isGDPRConsented = self->_isGDPRConsented;
    *buf = 67109120;
    v24 = isGDPRConsented;
    _os_log_impl(&dword_1E323F000, v15, OS_LOG_TYPE_INFO, "VUIMetricsController: setupMetricsController; GDPR Consented=%d", buf, 8u);
  }

  dispatch_async(self->_metricsDataDispatchSQ, &__block_literal_global_127);
  array = [MEMORY[0x1E695DF70] array];
  cachedGroupEvents = self->_cachedGroupEvents;
  self->_cachedGroupEvents = array;

  v19 = objc_opt_new();
  cachedUnifiedMessagingImpressions = self->_cachedUnifiedMessagingImpressions;
  self->_cachedUnifiedMessagingImpressions = v19;

  v21 = self->_metricsDataDispatchSQ;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__VUIMetricsController_setupMetricsController__block_invoke_2;
  block[3] = &unk_1E872D768;
  block[4] = self;
  dispatch_async(v21, block);
  [(VUIMetricsController *)self registerForBaseFieldChanges];
}

void __38__VUIMetricsController_sharedInstance__block_invoke(uint64_t a1)
{
  v2 = VUISignpostLogObject(a1);
  if (os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1E323F000, v2, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "MetricsController.Init", "", buf, 2u);
  }

  v3 = objc_alloc_init(*(a1 + 32));
  v4 = sharedInstance_sharedInstance_501;
  sharedInstance_sharedInstance_501 = v3;

  v6 = VUISignpostLogObject(v5);
  if (os_signpost_enabled(v6))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&dword_1E323F000, v6, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "MetricsController.Init", "", v7, 2u);
  }
}

- (VUIMetricsController)init
{
  v5.receiver = self;
  v5.super_class = VUIMetricsController;
  v2 = [(VUIMetricsController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(VUIMetricsController *)v2 setupMetricsController];
  }

  return v3;
}

- (void)registerForBaseFieldChanges
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__handleTabBarChange_ name:@"TVAppRootViewControllerCurrentNavigationControllerDidChangeNotification" object:0];

  v4 = _os_feature_enabled_impl();
  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  v6 = defaultCenter2;
  if (v4)
  {
    v7 = +[_TtC8VideosUI40VUIUTSConfigurationProxyNotificationName configurationDidChange];
    [v6 addObserver:self selector:sel__handleServerConfigChange_ name:v7 object:0];
  }

  else
  {
    [defaultCenter2 addObserver:self selector:sel__handleServerConfigChange_ name:*MEMORY[0x1E69E1690] object:0];
  }

  defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter3 addObserver:self selector:sel__handleWLKSettingsDidChange_ name:*MEMORY[0x1E69E1728] object:0];

  defaultCenter4 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter4 addObserver:self selector:sel__handleWLKAppLibChange_ name:*MEMORY[0x1E69E1668] object:0];

  if (_os_feature_enabled_impl())
  {
    v10 = +[_TtC8VideosUI43VUILocationServiceProxyObjCNotificationName locationDidChange];
  }

  else
  {
    v10 = *MEMORY[0x1E69E16D0];
  }

  v13 = v10;
  defaultCenter5 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter5 addObserver:self selector:sel__handleLocationChange_ name:v13 object:0];

  defaultCenter6 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter6 addObserver:self selector:sel__handleGroupActivitiesSessionStateChange_ name:@"GroupActivitiesSessionStateDidChangeNotification" object:0];
}

- (void)_initializeBaseFields
{
  mEMORY[0x1E69E15D0] = [MEMORY[0x1E69E15D0] sharedSettings];
  currentEnvironment = [MEMORY[0x1E69E1620] currentEnvironment];
  entitlements = [currentEnvironment entitlements];
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__25;
  v28 = __Block_byref_object_dispose__25;
  v29 = @"unknown";
  v7 = dispatch_semaphore_create(0);
  v8 = +[VUIFeaturesConfiguration sharedInstance];
  launchConfig = [v8 launchConfig];
  useConfigCacheIgnoreExpiry = [launchConfig useConfigCacheIgnoreExpiry];

  if (useConfigCacheIgnoreExpiry)
  {
    v11 = 5;
  }

  else
  {
    v11 = 0;
  }

  if (_os_feature_enabled_impl())
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __45__VUIMetricsController__initializeBaseFields__block_invoke;
    v22[3] = &unk_1E8735240;
    v23[1] = &v24;
    v23[0] = v7;
    [_TtC8VideosUI25VUIUTSNetworkManagerProxy fetchConfiguration:useConfigCacheIgnoreExpiry ^ 1u completion:v22];
    v12 = v23;
  }

  else
  {
    mEMORY[0x1E69E1508] = [MEMORY[0x1E69E1508] sharedInstance];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __45__VUIMetricsController__initializeBaseFields__block_invoke_545;
    v20[3] = &unk_1E8735268;
    v21[1] = &v24;
    v21[0] = v7;
    [mEMORY[0x1E69E1508] fetchConfigurationWithOptions:0 cachePolicy:v11 queryParameters:0 completion:v20];
    v12 = v21;
  }

  consentedBrands = [mEMORY[0x1E69E15D0] consentedBrands];
  [v6 vui_setObjectIfNotNil:consentedBrands forKey:@"cbids"];

  deniedBrands = [mEMORY[0x1E69E15D0] deniedBrands];
  [v6 vui_setObjectIfNotNil:deniedBrands forKey:@"dbids"];

  v16 = [entitlements objectForKey:@"Installed"];
  [v6 vui_setObjectIfNotNil:v16 forKey:@"ibids"];

  v17 = [entitlements objectForKey:@"Subscribed"];
  [v6 vui_setObjectIfNotNil:v17 forKey:@"sbids"];

  _getLocationAuthorizationStatus = [(VUIMetricsController *)self _getLocationAuthorizationStatus];
  [v6 setObject:_getLocationAuthorizationStatus forKey:@"locationAuthorization"];

  v19 = dispatch_time(0, 60000000000);
  dispatch_semaphore_wait(v7, v19);
  [v6 vui_setObjectIfNotNil:v25[5] forKey:@"vppaState"];
  [v6 setObject:MEMORY[0x1E695E110] forKey:@"sharedActivity"];
  [(VUIMetricsController *)self setBaseFields:v6];

  _Block_object_dispose(&v24, 8);
}

- (id)_getLocationAuthorizationStatus
{
  if (_os_feature_enabled_impl())
  {
    authorizationStatus = +[_TtC8VideosUI27VUILocationServiceProxyObjC authorizationStatus];
    v3 = @"approved";
    v4 = @"denied";
  }

  else
  {
    defaultLocationManager = [MEMORY[0x1E69E1540] defaultLocationManager];
    authorizationStatus = [defaultLocationManager authorizationStatus];

    v3 = @"denied";
    v4 = @"approved";
  }

  if (authorizationStatus != 1)
  {
    v4 = @"undetermined";
  }

  if (authorizationStatus)
  {
    return v4;
  }

  else
  {
    return v3;
  }
}

- (NSDictionary)baseFields
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_baseFields;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)recordAppBecameActive
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = VUIDefaultLogObject(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    isAppJustLaunched = self->_isAppJustLaunched;
    *buf = 67109120;
    v12 = isAppJustLaunched;
    _os_log_impl(&dword_1E323F000, v3, OS_LOG_TYPE_INFO, "VUIMetricsController: recordAppBecameActive _isAppJustLaunched=%hhd", buf, 8u);
  }

  if (self->_isAppJustDeepLinkOpened)
  {
    self->_isAppJustDeepLinkOpened = 0;
  }

  else
  {
    if (self->_isAppJustLaunched)
    {
      v5 = @"launch";
    }

    else
    {
      v5 = @"taskSwitch";
    }

    v9 = @"type";
    v10 = v5;
    v6 = MEMORY[0x1E695DF20];
    v7 = v5;
    v8 = [v6 dictionaryWithObjects:&v10 forKeys:&v9 count:1];

    [(VUIMetricsController *)self _recordEnter:v8, v9, v10];
  }
}

- (id)iTunesLibraryPlaybackMediaMetricsForAdamID:(id)d mediaType:(id)type
{
  v15[2] = *MEMORY[0x1E69E9840];
  dCopy = d;
  typeCopy = type;
  v7 = +[VUIFeaturesConfiguration sharedInstance];
  nowPlayingConfig = [v7 nowPlayingConfig];
  allowQOSReportingForiTunesLibraryPlayback = [nowPlayingConfig allowQOSReportingForiTunesLibraryPlayback];

  v10 = 0;
  if (dCopy && allowQOSReportingForiTunesLibraryPlayback)
  {
    if (([dCopy isEqualToNumber:&unk_1F5E5D8D8] & 1) == 0 && objc_msgSend(typeCopy, "length"))
    {
      if ([typeCopy isEqualToString:*MEMORY[0x1E69D5EB8]] & 1) != 0 || (objc_msgSend(typeCopy, "isEqualToString:", *MEMORY[0x1E69D5EC8]))
      {
        v11 = @"movie";
LABEL_8:
        v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"a=%@:s=%@:e=%@", dCopy, *MEMORY[0x1E69E1688], v11];
        v14[0] = @"MediaIdentifier";
        v14[1] = @"iTunesServiceMonitoringKey";
        v15[0] = v12;
        v15[1] = MEMORY[0x1E695E118];
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];

        goto LABEL_12;
      }

      if ([typeCopy isEqualToString:*MEMORY[0x1E69D5ED0]])
      {
        v11 = @"episode";
        goto LABEL_8;
      }
    }

    v10 = 0;
  }

LABEL_12:

  return v10;
}

- (id)_getCurrentMetricsTopic
{
  if (self->_isGDPRConsented)
  {
    return @"xp_amp_tv_main";
  }

  else
  {
    return @"xp_amp_tv_unidentified";
  }
}

- (void)recordAppLaunched
{
  v7[1] = *MEMORY[0x1E69E9840];
  v3 = VUIDefaultLogObject(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_1E323F000, v3, OS_LOG_TYPE_INFO, "VUIMetricsController: recordAppLaunched", v5, 2u);
  }

  v6 = @"type";
  v7[0] = @"launch";
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [(VUIMetricsController *)self _recordEnter:v4];
}

- (void)recordOpenUrlLaunchWithExtURL:(id)l andOptions:(id)options
{
  v31[3] = *MEMORY[0x1E69E9840];
  lCopy = l;
  optionsCopy = options;
  self->_isAppJustDeepLinkOpened = 1;
  if (self->_isAppJustLaunched)
  {
    v8 = @"linkedLaunch";
  }

  else
  {
    v8 = @"linkedTaskSwitch";
  }

  v9 = v8;
  v10 = [optionsCopy objectForKey:*MEMORY[0x1E69DDB68]];
  if (!v10)
  {
    v11 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:lCopy];
    v12 = +[VUIInterfaceFactory sharedInstance];
    openURLHandler = [v12 openURLHandler];
    v10 = [openURLHandler queryParameterStringfromURL:v11 parameter:@"refApp"];

    if (v10)
    {
      v14 = v10;
    }
  }

  v15 = [optionsCopy vui_dictionaryForKey:*MEMORY[0x1E69DDB58]];
  v16 = [v15 vui_stringForKey:*MEMORY[0x1E6963598]];
  v17 = @"navigate";
  if (!lCopy)
  {
    v17 = @"default";
  }

  v18 = v17;
  if (([(__CFString *)lCopy containsString:@"?play"]& 1) != 0 || [(__CFString *)lCopy containsString:@"action=play"])
  {

    v18 = @"play";
  }

  if (v10)
  {
    v19 = v10;
  }

  else
  {
    v19 = &stru_1F5DB25C0;
  }

  v30[0] = @"refApp";
  v30[1] = @"extRefUrl";
  if (v16)
  {
    v20 = v16;
  }

  else
  {
    v20 = &stru_1F5DB25C0;
  }

  v31[0] = v19;
  v31[1] = v20;
  v30[2] = @"openUrl";
  if (lCopy)
  {
    v21 = lCopy;
  }

  else
  {
    v21 = &stru_1F5DB25C0;
  }

  v31[2] = v21;
  v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:3];
  [(VUIMetricsController *)self setCachedOpenUrlData:v22];

  v23 = MEMORY[0x1E695DF90];
  v28[0] = @"type";
  v28[1] = @"actionType";
  v29[0] = v9;
  v29[1] = v18;
  v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:2];
  v25 = [v23 dictionaryWithDictionary:v24];

  cachedOpenUrlData = [(VUIMetricsController *)self cachedOpenUrlData];
  [v25 addEntriesFromDictionary:cachedOpenUrlData];

  v27 = [v25 copy];
  [(VUIMetricsController *)self _recordEnter:v27];
}

- (void)_recordEnter:(id)enter
{
  if (self->_shouldRecordEnter)
  {
    [(VUIMetricsController *)self _recordEvent:@"enter" withEventData:enter];
    *&self->_shouldRecordEnter = 256;
    self->_isAppJustLaunched = 0;
  }
}

- (void)recordAppWillTerminate
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = @"type";
  v5[0] = @"quit";
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  [(VUIMetricsController *)self _recordExit:v3];
}

- (void)recordAppWillBackground
{
  v8[2] = *MEMORY[0x1E69E9840];
  v7[0] = @"type";
  v7[1] = @"destinationUrl";
  v8[0] = @"taskSwitch";
  exitEventDestinationUrl = [(VUIMetricsController *)self exitEventDestinationUrl];
  v4 = exitEventDestinationUrl;
  v5 = &stru_1F5DB25C0;
  if (exitEventDestinationUrl)
  {
    v5 = exitEventDestinationUrl;
  }

  v8[1] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];
  [(VUIMetricsController *)self _recordExit:v6];

  [(VUIMetricsController *)self setExitEventDestinationUrl:0];
}

- (void)_recordExit:(id)exit
{
  shouldRecordExit = self->_shouldRecordExit;
  if (shouldRecordExit)
  {
    *&self->_shouldRecordEnter = shouldRecordExit;
    exitCopy = exit;
    [(VUIMetricsController *)self setShouldFlushMetrics:1];
    [(VUIMetricsController *)self _recordEvent:@"exit" withEventData:exitCopy];
  }
}

- (void)recordPage:(id)page
{
  v23 = *MEMORY[0x1E69E9840];
  pageCopy = page;
  if (self->_isGDPRConsented || (v5 = [(VUIMetricsController *)self _isSiri], (v5 & 1) != 0))
  {
    lastEventType = [(VUIMetricsController *)self lastEventType];
    v7 = [lastEventType isEqualToString:@"page"];

    if (v7 && ([pageCopy generateMetricsDataDictionary], v8 = objc_claimAutoreleasedReturnValue(), -[VUIMetricsController lastEventData](self, "lastEventData"), v9 = objc_claimAutoreleasedReturnValue(), v10 = -[VUIMetricsController arePageEventsIdentical:previousPage:](self, "arePageEventsIdentical:previousPage:", v8, v9), v9, v8, v10))
    {
      lastEventData = [(VUIMetricsController *)self lastEventData];
      generateMetricsDataDictionary = [lastEventData objectForKey:@"pageId"];

      lastEventData2 = [(VUIMetricsController *)self lastEventData];
      v14 = [lastEventData2 objectForKey:@"pageType"];

      v16 = VUIDefaultLogObject(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v19 = 138412546;
        v20 = generateMetricsDataDictionary;
        v21 = 2112;
        v22 = v14;
        _os_log_impl(&dword_1E323F000, v16, OS_LOG_TYPE_INFO, "VUIMetricsController: Discarding duplicate page event pageId=%@ pageType=%@", &v19, 0x16u);
      }
    }

    else
    {
      generateMetricsDataDictionary = [pageCopy generateMetricsDataDictionary];
      [(VUIMetricsController *)self _recordEvent:@"page" withEventData:generateMetricsDataDictionary pageData:generateMetricsDataDictionary];
    }
  }

  else
  {
    v17 = VUIDefaultLogObject(v5);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      pageId = [pageCopy pageId];
      v19 = 138412290;
      v20 = pageId;
      _os_log_impl(&dword_1E323F000, v17, OS_LOG_TYPE_INFO, "VUIMetricsController: caching page event until GDPR acceptance pageType:%@", &v19, 0xCu);
    }

    [(VUIMetricsController *)self setGdprCachedPageEvent:pageCopy];
  }
}

- (void)recordPageChange:(id)change
{
  generateMetricsDataDictionary = [change generateMetricsDataDictionary];
  [(VUIMetricsController *)self _recordEvent:@"pageChange" withEventData:generateMetricsDataDictionary];
}

- (void)recordDialog:(id)dialog
{
  v19 = *MEMORY[0x1E69E9840];
  dialogCopy = dialog;
  lastEventType = [(VUIMetricsController *)self lastEventType];
  v6 = [lastEventType isEqualToString:@"dialog"];

  if (!v6)
  {
    goto LABEL_8;
  }

  v7 = [dialogCopy objectForKey:@"dialogId"];
  v8 = [dialogCopy objectForKey:@"dialogType"];
  lastEventData = [(VUIMetricsController *)self lastEventData];
  v10 = [lastEventData objectForKey:@"dialogId"];

  lastEventData2 = [(VUIMetricsController *)self lastEventData];
  v12 = [lastEventData2 objectForKey:@"dialogType"];

  if (![v7 isEqualToString:v10] || (v13 = objc_msgSend(v8, "isEqualToString:", v12), !v13))
  {

LABEL_8:
    [(VUIMetricsController *)self _recordEvent:@"dialog" withEventData:dialogCopy];
    goto LABEL_9;
  }

  v14 = VUIDefaultLogObject(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = 138412546;
    v16 = v10;
    v17 = 2112;
    v18 = v12;
    _os_log_impl(&dword_1E323F000, v14, OS_LOG_TYPE_INFO, "VUIMetricsController: Discarding duplicate dialog event dialogId=%@ dialogType=%@", &v15, 0x16u);
  }

LABEL_9:
}

- (void)recordImpressions:(id)impressions pageData:(id)data
{
  impressionsCopy = impressions;
  dataCopy = data;
  if (self->_isGDPRConsented)
  {
    [(VUIMetricsController *)self setShouldFlushMetrics:0];
    v8 = [impressionsCopy vui_arrayForKey:@"impressions"];
    v9 = v8;
    if (v8 && (v8 = [v8 count]) != 0)
    {
      cachedUnifiedMessagingImpressions = [(VUIMetricsController *)self cachedUnifiedMessagingImpressions];
      v11 = [cachedUnifiedMessagingImpressions copy];

      if (v11 && [v11 count])
      {
        v12 = objc_opt_new();
        [v12 addObjectsFromArray:v9];
        [v12 addObjectsFromArray:v11];
        v13 = VUIDefaultLogObject([(NSMutableArray *)self->_cachedUnifiedMessagingImpressions removeAllObjects]);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          *v17 = 0;
          _os_log_impl(&dword_1E323F000, v13, OS_LOG_TYPE_INFO, "VUIMetricsController: adding cached Unified Messaging impressions to impressions event", v17, 2u);
        }

        v14 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:impressionsCopy];
        v15 = [v12 copy];
        [v14 setValue:v15 forKey:@"impressions"];

        v16 = [v14 copy];
        [(VUIMetricsController *)self _recordEvent:@"impressions" withEventData:v16 pageData:dataCopy];
      }

      else
      {
        [(VUIMetricsController *)self _recordEvent:@"impressions" withEventData:impressionsCopy pageData:dataCopy];
      }
    }

    else
    {
      v11 = VUIDefaultLogObject(v8);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1E323F000, v11, OS_LOG_TYPE_INFO, "VUIMetricsController: no impressions found for recordImpressions", buf, 2u);
      }
    }
  }
}

- (void)recordMedia:(id)media
{
  if (self->_isGDPRConsented)
  {
    [(VUIMetricsController *)self _recordEvent:@"media" withEventData:media];
  }
}

- (void)_recordAccount
{
  v10[3] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF90];
  v9[0] = @"eventType";
  v9[1] = @"type";
  v10[0] = @"account";
  v10[1] = @"consentGranted";
  v9[2] = @"consentType";
  v10[2] = @"GDPR";
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:3];
  v5 = [v3 dictionaryWithDictionary:v4];

  cachedOpenUrlData = [(VUIMetricsController *)self cachedOpenUrlData];
  if (cachedOpenUrlData)
  {

LABEL_4:
    cachedOpenUrlData2 = [(VUIMetricsController *)self cachedOpenUrlData];
    [v5 addEntriesFromDictionary:cachedOpenUrlData2];

    [(VUIMetricsController *)self setCachedOpenUrlData:0];
    self->_shouldRecordCachedAccount = 0;
    goto LABEL_5;
  }

  if (self->_shouldRecordCachedAccount)
  {
    goto LABEL_4;
  }

LABEL_5:
  v8 = [v5 copy];
  [(VUIMetricsController *)self _recordEvent:@"account" withEventData:v8];
}

- (void)recordRawEvent:(id)event
{
  v9 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  v5 = [eventCopy objectForKeyedSubscript:@"eventType"];
  v6 = VUIDefaultLogObject(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_INFO, "VUIMetricsController: received raw event type:[%@]", &v7, 0xCu);
  }

  [(VUIMetricsController *)self _recordEvent:v5 withEventData:eventCopy];
}

- (void)_recordEvent:(id)event withEventData:(id)data pageData:(id)pageData
{
  v34 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  dataCopy = data;
  pageDataCopy = pageData;
  if (![(VUIMetricsController *)self isInDebugMode])
  {
    baseFields = [(VUIMetricsController *)self baseFields];
    v12 = [baseFields vui_BOOLForKey:@"sharedActivity" defaultValue:0];

    baseFields2 = [(VUIMetricsController *)self baseFields];
    v14 = [baseFields2 vui_numberForKey:@"sharedActivityDevicesCurrent"];
    integerValue = [v14 integerValue];

    if (integerValue)
    {
      v16 = 0;
    }

    else
    {
      v16 = v12;
    }

    if (v16 == 1)
    {
      v17 = [dataCopy mutableCopy];
      createEventTime = [(VUIMetricsController *)self createEventTime];
      v19 = VUIDefaultLogObject([(VUIScopedBackgroundTask *)v17 setValue:createEventTime forKey:@"eventTime"]);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v31 = eventCopy;
        v32 = 2112;
        v33 = createEventTime;
        _os_log_impl(&dword_1E323F000, v19, OS_LOG_TYPE_INFO, "VUIMetricsController: caching %@ event with timestamp %@  until shared activity data is available", buf, 0x16u);
      }

      selfCopy = self;
      objc_sync_enter(selfCopy);
      v21 = [[VUICachedMetricsEvent alloc] initWithEventType:eventCopy eventData:dataCopy];
      cachedGroupEvents = [(VUIMetricsController *)selfCopy cachedGroupEvents];
      [cachedGroupEvents addObject:v21];

      objc_sync_exit(selfCopy);
    }

    else
    {
      if (([eventCopy isEqualToString:@"pageRender"] & 1) == 0 && (objc_msgSend(eventCopy, "isEqualToString:", @"log") & 1) == 0)
      {
        [(VUIMetricsController *)self setLastEventType:eventCopy];
        [(VUIMetricsController *)self setLastEventData:dataCopy];
      }

      currentTabIdentifier = [(VUIMetricsController *)self currentTabIdentifier];
      [(VUIMetricsController *)self setLastTabIdentifier:currentTabIdentifier];

      v17 = [[VUIScopedBackgroundTask alloc] initWithIdentifier:@"VUIMetricsBackgroundTask" expirationHandler:0];
      [(VUIMetricsController *)self setBackgroundTask:v17];
      metricsDataDispatchSQ = self->_metricsDataDispatchSQ;
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __60__VUIMetricsController__recordEvent_withEventData_pageData___block_invoke;
      v25[3] = &unk_1E872E5D8;
      v26 = eventCopy;
      v27 = dataCopy;
      selfCopy2 = self;
      v29 = pageDataCopy;
      dispatch_async(metricsDataDispatchSQ, v25);

      createEventTime = v26;
    }
  }
}

void __60__VUIMetricsController__recordEvent_withEventData_pageData___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isEqualToString:@"page"])
  {
    v2 = [*(a1 + 40) vui_stringForKey:@"pageContext"];
    if (([v2 isEqualToString:@"tab"] & 1) == 0)
    {
      v3 = [*(a1 + 40) vui_stringForKey:@"pageContext"];
      if (([v3 isEqualToString:@"tabBar"] & 1) == 0)
      {
        v4 = [*(a1 + 40) vui_stringForKey:@"pageType"];
        v5 = [v4 isEqualToString:@"PreRoll"];

        if (v5)
        {
          goto LABEL_11;
        }

        v6 = [*(a1 + 40) vui_stringForKey:@"pageContext"];
        v7 = v6;
        if (v6)
        {
          v8 = v6;
        }

        else
        {
          v8 = [*(a1 + 48) currentTabIdentifier];
        }

        v2 = v8;

        v3 = [VUIMetricsPageEventData createWithMetricsData:*(a1 + 40) pageContext:v2];
        [*(a1 + 48) setLastRecordedPageEventData:v3];
      }
    }
  }

LABEL_11:
  v11 = [*(a1 + 48) _createDataAddingBaseAndPageFieldsToEventData:*(a1 + 40) forEventType:*(a1 + 32)];
  if ([*(a1 + 32) isEqualToString:@"pageRender"])
  {
    v9 = [MEMORY[0x1E69DF6E0] sharedInstance];
    v10 = [v9 pagePerformanceEnabled];

    if (v10)
    {
      [*(*(a1 + 48) + 136) recordPagePerfRenderEventWithVuiDictionary:v11];
    }
  }

  else
  {
    [*(a1 + 48) _recordEventWithJet:*(a1 + 32) withEventData:v11 pageData:*(a1 + 56)];
  }
}

- (void)_recordEventWithJet:(id)jet withEventData:(id)data pageData:(id)pageData
{
  jetCopy = jet;
  dataCopy = data;
  pageDataCopy = pageData;
  if (!self->_isGDPRConsented)
  {
    v13 = @"xp_amp_tv_unidentified";
    goto LABEL_9;
  }

  v11 = [jetCopy isEqualToString:@"pageRender"];
  if (!v11)
  {
    if ([jetCopy isEqualToString:@"log"])
    {
      v13 = @"xp_amp_tv_log";
    }

    else
    {
      v13 = @"xp_amp_tv_main";
    }

LABEL_9:
    lastRecordedPageEventData = [(VUIMetricsController *)self lastRecordedPageEventData];
    if (pageDataCopy)
    {
      sidebarPageMetrics = pageDataCopy;
      goto LABEL_15;
    }

    v15 = [dataCopy vui_stringForKey:@"pageType"];
    if ([v15 isEqualToString:@"PreRoll"])
    {
    }

    else
    {
      v16 = [dataCopy vui_stringForKey:@"pageType"];
      v17 = [v16 isEqualToString:@"MediaPlayer"];

      if (!v17)
      {
        v21 = [dataCopy vui_stringForKey:@"pageType"];
        v22 = [v21 isEqualToString:@"Tab"];

        if (v22)
        {
          sidebarPageMetrics = [(VUIMetricsController *)self sidebarPageMetrics];
        }

        else
        {
          v23 = [dataCopy vui_stringForKey:@"pageType"];
          v24 = [v23 isEqualToString:@"TabBar"];

          if (v24)
          {
            sidebarPageMetrics = [(VUIMetricsController *)self tabBarPageMetrics];
          }

          else
          {
            v25 = [dataCopy vui_stringForKey:@"pageType"];
            v26 = [v25 isEqualToString:@"ProfileSelector"];

            if (!v26)
            {
              if (lastRecordedPageEventData)
              {
                v27 = [dataCopy vui_stringForKey:@"pageId"];
                if (v27 && (-[NSObject pageId](lastRecordedPageEventData, "pageId"), v28 = objc_claimAutoreleasedReturnValue(), v29 = [v27 isEqualToString:v28], v28, (v29 & 1) == 0))
                {
                  v32 = VUIDefaultLogObject(v30);
                  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_1E323F000, v32, OS_LOG_TYPE_DEFAULT, "VUIMetricsController: mismatch of lastPageEvent data and page data embedded in event. extracting embedded data ", buf, 2u);
                  }

                  generateMetricsDataDictionary = [(VUIMetricsController *)self extractPageMetricsFromEventData:dataCopy];
                }

                else
                {
                  generateMetricsDataDictionary = [lastRecordedPageEventData generateMetricsDataDictionary];
                }

                v33 = generateMetricsDataDictionary;
                v18 = [(VUIMetricsController *)self _processPageFields:generateMetricsDataDictionary forEventType:jetCopy];
              }

              else
              {
                v18 = MEMORY[0x1E695E0F8];
              }

              goto LABEL_16;
            }

            sidebarPageMetrics = [(VUIMetricsController *)self profileSelectorPageMetrics];
          }
        }

LABEL_15:
        v18 = sidebarPageMetrics;
LABEL_16:
        v19 = +[VUIMetricsJetEngine sharedInstance];
        v20 = [v19 recordEventWithTopic:v13 eventType:jetCopy eventData:dataCopy pageData:v18];

        v34[0] = MEMORY[0x1E69E9820];
        v34[1] = 3221225472;
        v34[2] = __67__VUIMetricsController__recordEventWithJet_withEventData_pageData___block_invoke;
        v34[3] = &unk_1E87321A0;
        v34[4] = self;
        [v20 addFinishBlock:v34];

        goto LABEL_17;
      }
    }

    sidebarPageMetrics = [(VUIMetricsController *)self extractPageMetricsFromEventData:dataCopy];
    goto LABEL_15;
  }

  lastRecordedPageEventData = VUIDefaultLogObject(v11);
  if (os_log_type_enabled(lastRecordedPageEventData, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1E323F000, lastRecordedPageEventData, OS_LOG_TYPE_INFO, "Tried to publish render event to Jet which should be handled by PageRenderMetricsPresenter. Ignoring.", buf, 2u);
  }

LABEL_17:
}

void __67__VUIMetricsController__recordEventWithJet_withEventData_pageData___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = VUIDefaultLogObject(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __67__VUIMetricsController__recordEventWithJet_withEventData_pageData___block_invoke_cold_1(v7, v8);
    }
  }

  else
  {
    v9 = *(*(a1 + 32) + 72);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __67__VUIMetricsController__recordEventWithJet_withEventData_pageData___block_invoke_529;
    v12[3] = &unk_1E872D990;
    v10 = v5;
    v11 = *(a1 + 32);
    v13 = v10;
    v14 = v11;
    dispatch_async(v9, v12);
    v8 = v13;
  }
}

uint64_t __67__VUIMetricsController__recordEventWithJet_withEventData_pageData___block_invoke_529(uint64_t a1)
{
  if (*(a1 + 32))
  {
    [*(a1 + 40) _saveRecentEvents:?];
  }

  v2 = *(a1 + 40);

  return [v2 setBackgroundTask:0];
}

- (void)setLastRecordedPageEventData:(id)data
{
  dataCopy = data;
  pageId = [dataCopy pageId];
  pageType = [dataCopy pageType];
  if ([(__CFString *)pageId length]|| [(__CFString *)pageType length])
  {
    eventData = [dataCopy eventData];
    if (pageId)
    {
      v7 = pageId;
    }

    else
    {
      v7 = &stru_1F5DB25C0;
    }

    if (pageType)
    {
      v8 = pageType;
    }

    else
    {
      v8 = &stru_1F5DB25C0;
    }

    v9 = [VUIMetricsPageEventData createWithPageId:v7 andPageType:v8 andEventData:eventData];
    lastRecordedPageEventData = self->_lastRecordedPageEventData;
    self->_lastRecordedPageEventData = v9;
  }
}

- (void)recordPerfEvent:(id)event
{
  eventCopy = event;
  metricsDataDispatchSQ = self->_metricsDataDispatchSQ;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__VUIMetricsController_recordPerfEvent___block_invoke;
  v7[3] = &unk_1E872D990;
  v7[4] = self;
  v8 = eventCopy;
  v6 = eventCopy;
  dispatch_async(metricsDataDispatchSQ, v7);
}

void __40__VUIMetricsController_recordPerfEvent___block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 11) == 1)
  {
    v7 = [*(a1 + 40) mutableCopy];
    v2 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(*(a1 + 32), "shouldPostAppLaunchData")}];
    [v7 setValue:v2 forKey:@"isAppLaunch"];

    if ([*(a1 + 32) shouldPostAppLaunchData])
    {
      [*(a1 + 32) setShouldPostAppLaunchData:0];
      v3 = *(a1 + 32);
      objc_sync_enter(v3);
      v4 = +[VUIPerfMetricsAppLaunchController sharedInstance];
      v5 = [v4 appLaunchData];
      [v7 addEntriesFromDictionary:v5];

      objc_sync_exit(v3);
    }

    [*(a1 + 32) _recordEvent:@"pageRender" withEventData:v7];
  }

  else
  {
    v6 = VUIDefaultLogObject(a1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_INFO, "No perf event - GDPR not consented", buf, 2u);
    }
  }
}

- (id)getBasePerfData:(BOOL)data
{
  dataCopy = data;
  if (data)
  {
    v5 = +[VUIPerfMetricsAppLaunchController sharedInstance];
    appLaunchData = [v5 appLaunchData];
    v7 = [appLaunchData mutableCopy];
  }

  else
  {
    v7 = objc_opt_new();
  }

  v8 = [MEMORY[0x1E696AD98] numberWithBool:dataCopy];
  [v7 setValue:v8 forKey:@"isAppLaunch"];

  v9 = [(VUIMetricsController *)self _createDataAddingBaseAndPageFieldsToEventData:v7 forEventType:@"pageRender"];

  return v9;
}

- (void)recordLog:(id)log
{
  logCopy = log;
  metricsDataDispatchSQ = self->_metricsDataDispatchSQ;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __34__VUIMetricsController_recordLog___block_invoke;
  v7[3] = &unk_1E872D990;
  v7[4] = self;
  v8 = logCopy;
  v6 = logCopy;
  dispatch_async(metricsDataDispatchSQ, v7);
}

void __34__VUIMetricsController_recordLog___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[11] == 1)
  {
    v6 = [v2 _createDataAddingBaseAndPageFieldsToEventData:*(a1 + 40) forEventType:@"log"];
    v3 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v6];
    [v3 setObject:@"log" forKey:@"eventType"];
    [v3 removeObjectForKey:@"cbids"];
    [v3 removeObjectForKey:@"dbids"];
    [v3 removeObjectForKey:@"ibids"];
    [v3 removeObjectForKey:@"sbids"];
    v4 = [v3 copy];
    [*(a1 + 32) _recordEventWithJet:@"log" withEventData:v4 pageData:0];
  }

  else
  {
    v5 = VUIDefaultLogObject(v2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_INFO, "No log event - GDPR not consented", buf, 2u);
    }
  }
}

void __45__VUIMetricsController__initializeBaseFields__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = VUIDefaultLogObject(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v14 = 138412290;
      v15 = v6;
      _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_INFO, "TVAS fetch error %@", &v14, 0xCu);
    }
  }

  else
  {
    v7 = [a2 data];
    if (a2)
    {
      a2 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v7 options:0 error:0];
    }

    v8 = objc_alloc(MEMORY[0x1E69E15C0]);
    v9 = [a2 vui_dictionaryForKey:@"data"];
    v10 = [v8 initWithServerResponseDictionary:v9 expirationDate:0 environmentHash:0];

    v11 = [v10 vppaStatusString];
    v12 = *(*(a1 + 40) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void __45__VUIMetricsController__initializeBaseFields__block_invoke_545(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = VUIDefaultLogObject(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v11 = 138412290;
      v12 = v6;
      _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_INFO, "WLK fetch error %@", &v11, 0xCu);
    }
  }

  else
  {
    v8 = [a2 vppaStatusString];
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)_processPageFields:(id)fields forEventType:(id)type
{
  fieldsCopy = fields;
  typeCopy = type;
  if (([typeCopy isEqualToString:@"enter"] & 1) != 0 || objc_msgSend(typeCopy, "isEqualToString:", @"exit"))
  {
    v7 = [fieldsCopy objectForKey:@"sharedContent"];

    if (v7)
    {
      v8 = [fieldsCopy mutableCopy];
      [v8 removeObjectForKey:@"sharedContent"];
      v9 = [v8 copy];

      fieldsCopy = v9;
    }
  }

  return fieldsCopy;
}

- (id)_createDataAddingBaseAndPageFieldsToEventData:(id)data forEventType:(id)type
{
  dataCopy = data;
  v6 = objc_opt_new();
  v7 = v6;
  if (dataCopy)
  {
    [v6 addEntriesFromDictionary:dataCopy];
  }

  baseFields = [(VUIMetricsController *)self baseFields];

  if (baseFields)
  {
    baseFields2 = [(VUIMetricsController *)self baseFields];
    [v7 addEntriesFromDictionary:baseFields2];
  }

  v10 = [dataCopy vui_stringForKey:@"pageContext"];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    eventData = [(VUIMetricsPageEventData *)self->_lastRecordedPageEventData eventData];
    v12 = [eventData vui_stringForKey:@"pageContext"];
  }

  if (![v12 length])
  {
    if ([(VUIMetricsController *)self _isSiri])
    {
      v14 = @"siri";
    }

    else
    {
      baseFields3 = [(VUIMetricsController *)self baseFields];
      v16 = [baseFields3 objectForKey:@"pageContext"];

      v17 = &stru_1F5DB25C0;
      if (v16)
      {
        v17 = v16;
      }

      v14 = v17;

      v12 = v16;
    }

    v12 = v14;
  }

  [v7 setObject:v12 forKey:@"pageContext"];
  v18 = [dataCopy vui_dictionaryForKey:@"pageDetails"];
  if ([v18 count])
  {
    [v7 setObject:v18 forKey:@"pageDetails"];
  }

  v19 = [v7 objectForKey:@"resourceRevNum"];

  if (!v19)
  {
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v21 = [standardUserDefaults stringForKey:@"jsVersion"];

    [v7 vui_setObjectIfNotNil:v21 forKey:@"resourceRevNum"];
  }

  return v7;
}

- (id)createEventTime
{
  date = [MEMORY[0x1E695DF00] date];
  [date timeIntervalSince1970];
  v4 = v3 * 1000.0;

  v5 = MEMORY[0x1E696AD98];

  return [v5 numberWithLong:v4];
}

- (NSDictionary)sidebarPageMetrics
{
  v5[3] = *MEMORY[0x1E69E9840];
  v4[0] = @"pageId";
  v4[1] = @"pageType";
  v5[0] = @"Tab";
  v5[1] = @"Tab";
  v4[2] = @"pageContext";
  v5[2] = @"tab";
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:3];

  return v2;
}

- (NSDictionary)tabBarPageMetrics
{
  v5[3] = *MEMORY[0x1E69E9840];
  v4[0] = @"pageId";
  v4[1] = @"pageType";
  v5[0] = @"TabBar";
  v5[1] = @"TabBar";
  v4[2] = @"pageContext";
  v5[2] = @"tabBar";
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:3];

  return v2;
}

- (NSDictionary)profileSelectorPageMetrics
{
  v5[3] = *MEMORY[0x1E69E9840];
  v4[0] = @"pageId";
  v4[1] = @"pageType";
  v5[0] = @"ProfileSelector";
  v5[1] = @"ProfileSelector";
  v4[2] = @"pageContext";
  v5[2] = @"tab";
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:3];

  return v2;
}

- (id)extractPageMetricsFromEventData:(id)data
{
  v18[3] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v4 = [dataCopy vui_stringForKey:@"pageId"];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = &stru_1F5DB25C0;
  }

  v7 = v6;

  v8 = [dataCopy vui_stringForKey:@"pageType"];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = &stru_1F5DB25C0;
  }

  v11 = v10;

  v12 = [dataCopy vui_stringForKey:@"pageContext"];

  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = &stru_1F5DB25C0;
  }

  v14 = v13;

  v17[0] = @"pageId";
  v17[1] = @"pageType";
  v18[0] = v7;
  v18[1] = v11;
  v17[2] = @"pageContext";
  v18[2] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:3];

  return v15;
}

- (void)forceGDPRConsentStatus:(BOOL)status
{
  statusCopy = status;
  v7 = *MEMORY[0x1E69E9840];
  v5 = VUIDefaultLogObject(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6[0] = 67109120;
    v6[1] = statusCopy;
    _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_INFO, "GDPR forced status: %d", v6, 8u);
  }

  [(VUIMetricsController *)self _setGDPRConsentStatus:statusCopy];
}

- (void)updateGDPRConsentStatus
{
  v8 = *MEMORY[0x1E69E9840];
  activeOrLocalAccount = [MEMORY[0x1E69D5920] activeOrLocalAccount];
  v4 = [MEMORY[0x1E698C790] acknowledgementNeededForPrivacyIdentifier:@"com.apple.onboarding.tvapp" account:activeOrLocalAccount];
  v5 = v4 ^ 1;
  v6 = VUIDefaultLogObject(v4);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7[0] = 67109120;
    v7[1] = v5;
    _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_INFO, "GDPR update: consented %d", v7, 8u);
  }

  [(VUIMetricsController *)self _setGDPRConsentStatus:v5];
}

- (void)_setGDPRConsentStatus:(BOOL)status
{
  metricsDataDispatchSQ = self->_metricsDataDispatchSQ;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __46__VUIMetricsController__setGDPRConsentStatus___block_invoke;
  v4[3] = &unk_1E872ECA0;
  v4[4] = self;
  statusCopy = status;
  dispatch_async(metricsDataDispatchSQ, v4);
}

void __46__VUIMetricsController__setGDPRConsentStatus___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 11);
  *(v2 + 11) = *(a1 + 40);
  v4 = [MEMORY[0x1E69DF6D0] isTVApp];
  v5 = *(a1 + 32);
  if (v5[11] == 1 && (v3 & 1) == 0 && v4)
  {
    [v5 _recordAccount];
    v6 = [*(a1 + 32) gdprCachedPageEvent];
    v7 = v6;
    if (v6)
    {
      v8 = VUIDefaultLogObject(v6);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_DEFAULT, "VUIMetricsController: recording cachedPageEvent after GDPR consent", v13, 2u);
      }

      [*(a1 + 32) recordPage:v7];
      [*(a1 + 32) setGdprCachedPageEvent:0];
    }

    v5 = *(a1 + 32);
  }

  v9 = [v5 baseFields];
  v10 = [v9 mutableCopy];

  v11 = *(a1 + 32);
  v12 = [v10 copy];
  [v11 setBaseFields:v12];

  [*(a1 + 32) _updateBaseFieldsWithData:0];
}

- (void)flushMetrics
{
  v2 = +[VUIMetricsJetEngine sharedInstance];
  [v2 flushMetrics];
}

- (void)setBaseFields:(id)fields
{
  fieldsCopy = fields;
  obj = self;
  objc_sync_enter(obj);
  baseFields = obj->_baseFields;
  obj->_baseFields = fieldsCopy;

  objc_sync_exit(obj);
}

- (void)_updateBaseFieldsWithData:(id)data
{
  dataCopy = data;
  baseFields = [(VUIMetricsController *)self baseFields];

  if (!baseFields)
  {
    [(VUIMetricsController *)self _initializeBaseFields];
  }

  baseFields2 = [(VUIMetricsController *)self baseFields];
  v6 = [baseFields2 mutableCopy];

  if (dataCopy)
  {
    [v6 addEntriesFromDictionary:dataCopy];
  }

  v7 = [v6 copy];
  [(VUIMetricsController *)self setBaseFields:v7];
}

- (void)_removeBaseFieldsForKeys:(id)keys
{
  keysCopy = keys;
  baseFields = [(VUIMetricsController *)self baseFields];
  v5 = [baseFields mutableCopy];

  if (keysCopy)
  {
    [v5 removeObjectsForKeys:keysCopy];
  }

  v6 = [v5 copy];
  [(VUIMetricsController *)self setBaseFields:v6];
}

- (void)_handleTabBarChange:(id)change
{
  userInfo = [change userInfo];
  v5 = [userInfo objectForKey:@"VUIMetricsTabBarItemNotificationKey"];

  if ([v5 length])
  {
    objc_storeStrong(&self->_currentTabIdentifier, v5);
    metricsDataDispatchSQ = self->_metricsDataDispatchSQ;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __44__VUIMetricsController__handleTabBarChange___block_invoke;
    v7[3] = &unk_1E872D990;
    v7[4] = self;
    v8 = v5;
    dispatch_async(metricsDataDispatchSQ, v7);
  }
}

void __44__VUIMetricsController__handleTabBarChange___block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v4 = @"pageContext";
  v5[0] = v1;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  [v2 _updateBaseFieldsWithData:v3];
}

- (void)_handleServerConfigChange:(id)change
{
  object = [change object];
  v5 = [object vui_dictionaryForKey:@"data"];
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v7 = [v5 objectForKey:@"vppaState"];
  [v6 vui_setObjectIfNotNil:v7 forKey:@"vppaState"];

  metricsDataDispatchSQ = self->_metricsDataDispatchSQ;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __50__VUIMetricsController__handleServerConfigChange___block_invoke;
  v10[3] = &unk_1E872D990;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  dispatch_async(metricsDataDispatchSQ, v10);
}

- (void)_handleWLKSettingsDidChange:(id)change
{
  v13[2] = *MEMORY[0x1E69E9840];
  mEMORY[0x1E69E15D0] = [MEMORY[0x1E69E15D0] sharedSettings];
  v12[0] = @"cbids";
  consentedBrands = [mEMORY[0x1E69E15D0] consentedBrands];
  v13[0] = consentedBrands;
  v12[1] = @"dbids";
  deniedBrands = [mEMORY[0x1E69E15D0] deniedBrands];
  v13[1] = deniedBrands;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];

  metricsDataDispatchSQ = self->_metricsDataDispatchSQ;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__VUIMetricsController__handleWLKSettingsDidChange___block_invoke;
  block[3] = &unk_1E872D990;
  block[4] = self;
  v11 = v7;
  v9 = v7;
  dispatch_async(metricsDataDispatchSQ, block);
}

- (void)_handleWLKAppLibChange:(id)change
{
  currentEnvironment = [MEMORY[0x1E69E1620] currentEnvironment];
  entitlements = [currentEnvironment entitlements];
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v7 = [entitlements objectForKey:@"Installed"];
  [v6 vui_setObjectIfNotNil:v7 forKey:@"ibids"];

  v8 = [entitlements objectForKey:@"Subscribed"];
  [v6 vui_setObjectIfNotNil:v8 forKey:@"sbids"];

  metricsDataDispatchSQ = self->_metricsDataDispatchSQ;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __47__VUIMetricsController__handleWLKAppLibChange___block_invoke;
  v11[3] = &unk_1E872D990;
  v11[4] = self;
  v12 = v6;
  v10 = v6;
  dispatch_async(metricsDataDispatchSQ, v11);
}

- (void)_handleLocationChange:(id)change
{
  objc_initWeak(&location, self);
  metricsDataDispatchSQ = self->_metricsDataDispatchSQ;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __46__VUIMetricsController__handleLocationChange___block_invoke;
  v5[3] = &unk_1E872E4B8;
  objc_copyWeak(&v6, &location);
  dispatch_async(metricsDataDispatchSQ, v5);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __46__VUIMetricsController__handleLocationChange___block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = @"locationAuthorization";
  v2 = [WeakRetained _getLocationAuthorizationStatus];
  v5[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  [WeakRetained _updateBaseFieldsWithData:v3];
}

- (void)_handleGroupActivitiesSessionStateChange:(id)change
{
  changeCopy = change;
  metricsDataDispatchSQ = self->_metricsDataDispatchSQ;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__VUIMetricsController__handleGroupActivitiesSessionStateChange___block_invoke;
  v7[3] = &unk_1E872D990;
  v8 = changeCopy;
  selfCopy = self;
  v6 = changeCopy;
  dispatch_async(metricsDataDispatchSQ, v7);
}

void __65__VUIMetricsController__handleGroupActivitiesSessionStateChange___block_invoke(uint64_t a1)
{
  v27[3] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) userInfo];
  v3 = *(a1 + 40);
  v27[0] = @"sharedActivity";
  v27[1] = @"sharedActivityDevicesCurrent";
  v27[2] = @"sharedActivityDevicesMax";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:3];
  [v3 _removeBaseFieldsForKeys:v4];

  v19 = v2;
  [*(a1 + 40) _updateBaseFieldsWithData:v2];
  v5 = [*(a1 + 40) cachedGroupEvents];
  v6 = [v5 copy];

  v7 = [*(a1 + 40) cachedGroupEvents];
  [v7 removeAllObjects];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      v12 = 0;
      do
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v20 + 1) + 8 * v12);
        v14 = VUIDefaultLogObject(v9);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v15 = [v13 eventType];
          *buf = 138412290;
          v25 = v15;
          _os_log_impl(&dword_1E323F000, v14, OS_LOG_TYPE_INFO, "VUIMetricsController: recording cached %@ event", buf, 0xCu);
        }

        v16 = *(a1 + 40);
        v17 = [v13 eventType];
        v18 = [v13 eventData];
        [v16 _recordEvent:v17 withEventData:v18];

        ++v12;
      }

      while (v10 != v12);
      v9 = [v8 countByEnumeratingWithState:&v20 objects:v26 count:16];
      v10 = v9;
    }

    while (v9);
  }
}

- (VUIScopedBackgroundTask)backgroundTask
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_backgroundTask;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setBackgroundTask:(id)task
{
  taskCopy = task;
  obj = self;
  objc_sync_enter(obj);
  backgroundTask = obj->_backgroundTask;
  obj->_backgroundTask = taskCopy;

  objc_sync_exit(obj);
}

- (void)_saveRecentEvents:(id)events
{
  v106[55] = *MEMORY[0x1E69E9840];
  eventsCopy = events;
  v5 = eventsCopy;
  if (self && eventsCopy && self->_isInternalBuild)
  {
    v6 = [eventsCopy objectForKey:@"eventType"];
    if ([v6 isEqualToString:@"pageRender"])
    {
      mEMORY[0x1E69DF6E0] = [MEMORY[0x1E69DF6E0] sharedInstance];
      metricsPageRenderLoggingEnabled = [mEMORY[0x1E69DF6E0] metricsPageRenderLoggingEnabled];

      if (!metricsPageRenderLoggingEnabled)
      {
        goto LABEL_73;
      }
    }

    else
    {
    }

    mEMORY[0x1E69DF6E0]2 = [MEMORY[0x1E69DF6E0] sharedInstance];
    metricsLoggingEnabled = [mEMORY[0x1E69DF6E0]2 metricsLoggingEnabled];

    if (metricsLoggingEnabled)
    {
      [(NSHashTable *)self->_savedRecentEvents addObject:v5];
      mEMORY[0x1E69DF6E0]3 = [MEMORY[0x1E69DF6E0] sharedInstance];
      metricsExpandedLoggingEnabled = [mEMORY[0x1E69DF6E0]3 metricsExpandedLoggingEnabled];

      if (metricsExpandedLoggingEnabled)
      {
        v91 = 0;
        v13 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v5 options:1 error:&v91];
        v14 = v91;
        v15 = v14;
        if (v13)
        {
          v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v13 encoding:4];
          v17 = VUIDefaultLogObject(v16);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            v18 = [v5 objectForKeyedSubscript:@"eventType"];
            uppercaseString = [v18 uppercaseString];
            *buf = 138412546;
            v93 = uppercaseString;
            v94 = 2112;
            v95 = v16;
            _os_log_impl(&dword_1E323F000, v17, OS_LOG_TYPE_INFO, "========== %@ Metrics Event ========== (all fields):%@", buf, 0x16u);
          }
        }

        else
        {
          v16 = VUIDefaultLogObject(v14);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v93 = v5;
            v94 = 2112;
            v95 = v15;
            _os_log_impl(&dword_1E323F000, v16, OS_LOG_TYPE_INFO, "VUIMetricsController: Unserializable event data: [%@] error:[%@]", buf, 0x16u);
          }
        }
      }

      else
      {
        v15 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v5];
        v13 = [v15 objectForKeyedSubscript:@"eventType"];
        v106[0] = @"eventType";
        v106[1] = @"dbids";
        v106[2] = @"storeFront";
        v106[3] = @"capacityDataAvailable";
        v106[4] = @"osVersion";
        v106[5] = @"clientCorrelationKey";
        v106[6] = @"connection";
        v106[7] = @"capacityDisk";
        v106[8] = @"clientId";
        v106[9] = @"eventTime";
        v106[10] = @"capacitySystem";
        v106[11] = @"baseVersion";
        v106[12] = @"platformName";
        v106[13] = @"xpPostFrequency";
        v106[14] = @"ibids";
        v106[15] = @"hardwareFamily";
        v106[16] = @"hardwareModel";
        v106[17] = @"os";
        v106[18] = @"app";
        v106[19] = @"pixelRatio";
        v106[20] = @"windowOuterHeight";
        v106[21] = @"timezoneOffset";
        v106[22] = @"environment";
        v106[23] = @"isSignedIn";
        v106[24] = @"screenWidth";
        v106[25] = @"resourceRevNum";
        v106[26] = @"capacityData";
        v106[27] = @"screenHeight";
        v106[28] = @"environmentBuild";
        v106[29] = @"xpSendMethod";
        v106[30] = @"eventVersion";
        v106[31] = @"appVersion";
        v106[32] = @"sbids";
        v106[33] = @"capacitySystemAvailable";
        v106[34] = @"windowOuterWidth";
        v106[35] = @"utsc";
        v106[36] = @"clientEventId";
        v106[37] = @"osBuildNumber";
        v106[38] = @"environmentDataCenter";
        v106[39] = @"storeFrontHeader";
        v106[40] = @"userType";
        v106[41] = @"xpDelegatesInfo";
        v106[42] = @"userAgent";
        v106[43] = @"platformId";
        v106[44] = @"language";
        v106[45] = @"cbids";
        v106[46] = @"osLanguages";
        v106[47] = @"xpViewableThreshold";
        v106[48] = @"xpViewablePercentage";
        v106[49] = @"dsId";
        v106[50] = @"locationAuthorization";
        v106[51] = @"vppaState";
        v106[52] = @"page";
        v106[53] = @"pageHistory";
        v106[54] = @"topic";
        v76 = [MEMORY[0x1E695DEC8] arrayWithObjects:v106 count:55];
        if (([v13 isEqualToString:@"click"] & 1) != 0 || objc_msgSend(v13, "isEqualToString:", @"impressions") && (objc_msgSend(MEMORY[0x1E69DF6E0], "sharedInstance"), v38 = objc_claimAutoreleasedReturnValue(), v39 = objc_msgSend(v38, "metricsLogLocationAndImpressions"), v38, (v39 & 1) == 0))
        {
          v72 = v5;
          v20 = [v15 objectForKeyedSubscript:@"impressions"];
          v74 = v13;
          v75 = v15;
          v73 = v20;
          if ([v20 count])
          {
            v81 = objc_opt_new();
            v87 = 0u;
            v88 = 0u;
            v89 = 0u;
            v90 = 0u;
            obj = v20;
            v21 = [obj countByEnumeratingWithState:&v87 objects:v105 count:16];
            if (v21)
            {
              v22 = v21;
              v79 = *v88;
              do
              {
                for (i = 0; i != v22; ++i)
                {
                  if (*v88 != v79)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v24 = *(*(&v87 + 1) + 8 * i);
                  v103[0] = @"id";
                  v25 = [v24 objectForKey:?];
                  v26 = v25;
                  if (v25)
                  {
                    v27 = v25;
                  }

                  else
                  {
                    v27 = &stru_1F5DB25C0;
                  }

                  v104[0] = v27;
                  v103[1] = @"name";
                  v28 = [v24 objectForKey:?];
                  v29 = v28;
                  if (v28)
                  {
                    v30 = v28;
                  }

                  else
                  {
                    v30 = &stru_1F5DB25C0;
                  }

                  v104[1] = v30;
                  v103[2] = @"impressionType";
                  v31 = [v24 objectForKey:@"impressionType"];
                  v32 = v31;
                  if (v31)
                  {
                    v33 = v31;
                  }

                  else
                  {
                    v33 = &stru_1F5DB25C0;
                  }

                  v104[2] = v33;
                  v103[3] = @"impressionIndex";
                  v34 = [v24 objectForKey:@"impressionIndex"];
                  v35 = v34;
                  if (v34)
                  {
                    v36 = v34;
                  }

                  else
                  {
                    v36 = &stru_1F5DB25C0;
                  }

                  v104[3] = v36;
                  v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v104 forKeys:v103 count:4];

                  [v81 addObject:v37];
                }

                v22 = [obj countByEnumeratingWithState:&v87 objects:v105 count:16];
              }

              while (v22);
            }

            [v15 removeObjectsForKeys:&unk_1F5E5EAA8];
            [v15 setObject:v81 forKey:@"impressions (ABRIDGED)"];
            obja = [MEMORY[0x1E696AEC0] stringWithFormat:@"<<Impressions count: %lu>>", objc_msgSend(obj, "count")];

            v20 = v73;
            v13 = v74;
          }

          else
          {
            obja = &stru_1F5DB25C0;
          }

          v40 = [v15 objectForKeyedSubscript:@"location"];
          [v15 removeObjectsForKeys:&unk_1F5E5EAC0];
          if ([v40 count])
          {
            v41 = objc_opt_new();
            v83 = 0u;
            v84 = 0u;
            v85 = 0u;
            v86 = 0u;
            v80 = v40;
            v42 = [v80 countByEnumeratingWithState:&v83 objects:v102 count:16];
            if (v42)
            {
              v43 = v42;
              v82 = *v84;
              do
              {
                for (j = 0; j != v43; ++j)
                {
                  if (*v84 != v82)
                  {
                    objc_enumerationMutation(v80);
                  }

                  v45 = *(*(&v83 + 1) + 8 * j);
                  v100[0] = @"id";
                  v46 = [v45 objectForKey:?];
                  v47 = v46;
                  if (v46)
                  {
                    v48 = v46;
                  }

                  else
                  {
                    v48 = &stru_1F5DB25C0;
                  }

                  v101[0] = v48;
                  v100[1] = @"name";
                  v49 = [v45 objectForKey:?];
                  v50 = v49;
                  if (v49)
                  {
                    v51 = v49;
                  }

                  else
                  {
                    v51 = &stru_1F5DB25C0;
                  }

                  v101[1] = v51;
                  v100[2] = @"locationType";
                  v52 = [v45 objectForKey:?];
                  v53 = v52;
                  if (v52)
                  {
                    v54 = v52;
                  }

                  else
                  {
                    v54 = &stru_1F5DB25C0;
                  }

                  v101[2] = v54;
                  v100[3] = @"locationPosition";
                  v55 = [v45 objectForKey:@"locationPosition"];
                  v56 = v55;
                  if (v55)
                  {
                    v57 = v55;
                  }

                  else
                  {
                    v57 = &stru_1F5DB25C0;
                  }

                  v101[3] = v57;
                  v58 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v101 forKeys:v100 count:4];

                  [v41 addObject:v58];
                }

                v43 = [v80 countByEnumeratingWithState:&v83 objects:v102 count:16];
              }

              while (v43);
            }

            v13 = v74;
            v15 = v75;
            if ([v74 isEqualToString:@"click"] && objc_msgSend(v41, "count"))
            {
              [v75 setObject:v41 forKey:@"location (ABRIDGED)"];
            }

            v20 = v73;
          }

          v5 = v72;
        }

        else
        {
          obja = &stru_1F5DB25C0;
        }

        v59 = [v15 objectForKey:@"sharedActivity"];
        bOOLValue = [v59 BOOLValue];

        if ((bOOLValue & 1) == 0)
        {
          [v15 removeObjectsForKeys:&unk_1F5E5EAD8];
        }

        allKeys = [v5 allKeys];
        allKeys2 = [v5 allKeys];
        v63 = [allKeys2 indexesOfObjectsPassingTest:&__block_literal_global_735];
        v64 = [allKeys objectsAtIndexes:v63];

        allKeys3 = [v5 allKeys];
        allKeys4 = [v5 allKeys];
        v67 = [allKeys4 indexesOfObjectsPassingTest:&__block_literal_global_746];
        v68 = [allKeys3 objectsAtIndexes:v67];

        v16 = v76;
        [v15 removeObjectsForKeys:v76];
        [v15 removeObjectsForKeys:v68];
        v69 = [v5 dictionaryWithValuesForKeys:v68];
        v70 = VUIDefaultLogObject([v15 removeObjectsForKeys:v64]);
        if (os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
        {
          uppercaseString2 = [v13 uppercaseString];
          *buf = 138413058;
          v93 = uppercaseString2;
          v94 = 2112;
          v95 = v15;
          v96 = 2112;
          v97 = v69;
          v98 = 2112;
          v99 = obja;
          _os_log_impl(&dword_1E323F000, v70, OS_LOG_TYPE_INFO, "========== %@ Metrics Event ========== (limited fields):%@ %@ %@", buf, 0x2Au);

          v16 = v76;
        }
      }
    }
  }

LABEL_73:
}

uint64_t __42__VUIMetricsController__saveRecentEvents___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 hasPrefix:@"data.uts"] & 1) != 0 || (objc_msgSend(v2, "hasPrefix:", @"data.search"))
  {
    v3 = 1;
  }

  else
  {
    v3 = [v2 hasPrefix:@"reco_"];
  }

  return v3;
}

uint64_t __42__VUIMetricsController__saveRecentEvents___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if (![v2 hasPrefix:@"page"] || (objc_msgSend(v2, "isEqualToString:", @"page") & 1) != 0 || objc_msgSend(v2, "isEqualToString:", @"pageHistory"))
  {
    v3 = [v2 isEqualToString:@"searchTerm"];
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

- (id)getRecentEventsForDebuggerUI
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__25;
  v10 = __Block_byref_object_dispose__25;
  v11 = 0;
  metricsDataDispatchSQ = self->_metricsDataDispatchSQ;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__VUIMetricsController_getRecentEventsForDebuggerUI__block_invoke;
  v5[3] = &unk_1E872E5B0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(metricsDataDispatchSQ, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __52__VUIMetricsController_getRecentEventsForDebuggerUI__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 104) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (BOOL)arePageEventsIdentical:(id)identical previousPage:(id)page
{
  pageCopy = page;
  identicalCopy = identical;
  v8 = [identicalCopy objectForKey:@"pageId"];
  v9 = [identicalCopy objectForKey:@"pageType"];
  currentTabIdentifier = [(VUIMetricsController *)self currentTabIdentifier];
  v11 = [pageCopy objectForKey:@"pageId"];
  v12 = [pageCopy objectForKey:@"pageType"];
  lastTabIdentifier = [(VUIMetricsController *)self lastTabIdentifier];
  v14 = [pageCopy objectForKey:@"searchTerm"];

  v15 = [identicalCopy objectForKey:@"searchTerm"];

  if (v15 | v14)
  {
    v16 = [v15 isEqualToString:v14];
  }

  else
  {
    v16 = 1;
  }

  v17 = [v8 isEqualToString:v11] && (objc_msgSend(v9, "isEqualToString:", v12) & v16) == 1 && (objc_msgSend(lastTabIdentifier, "isEqualToString:", currentTabIdentifier) & 1) != 0;

  return v17;
}

- (id)getMetricsEnhancedBuyParams:(id)params
{
  v4 = MEMORY[0x1E696AD60];
  paramsCopy = params;
  v6 = [[v4 alloc] initWithString:paramsCopy];

  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  [v6 appendFormat:@"&mtApp=%@", bundleIdentifier];

  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  systemVersion = [currentDevice systemVersion];
  [v6 appendFormat:@"&mtOsVersion=%@", systemVersion];

  lastRecordedPageEventData = self->_lastRecordedPageEventData;
  if (lastRecordedPageEventData)
  {
    pageId = [(VUIMetricsPageEventData *)lastRecordedPageEventData pageId];
    [v6 appendFormat:@"&mtPageId=%@", pageId];

    pageType = [(VUIMetricsPageEventData *)self->_lastRecordedPageEventData pageType];
    [v6 appendFormat:@"&mtPageType=%@", pageType];
  }

  baseFields = [(VUIMetricsController *)self baseFields];
  v15 = [baseFields objectForKey:@"pageContext"];

  if (v15)
  {
    [v6 appendFormat:@"&mtPageContext=%@", v15];
  }

  v16 = [MEMORY[0x1E69DF748] stringValueForKey:@"BuildVersion"];
  v17 = v16;
  if (v16)
  {
    [v6 appendFormat:@"&mtOsBuildNumber=%@", v16];
  }

  _getCurrentMetricsTopic = [(VUIMetricsController *)self _getCurrentMetricsTopic];
  [v6 appendFormat:@"&mtTopic=%@", _getCurrentMetricsTopic];

  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  [v6 appendFormat:@"&mtRequestId=%@", uUIDString];

  date = [MEMORY[0x1E695DF00] date];
  [date timeIntervalSince1970];
  [v6 appendFormat:@"&mtEventTime=%lf", v22 * 1000.0];

  v23 = [v6 copy];

  return v23;
}

- (id)getMetricsOverlayForBundleOffer
{
  v12[3] = *MEMORY[0x1E69E9840];
  _getCurrentMetricsTopic = [(VUIMetricsController *)self _getCurrentMetricsTopic];
  v4 = +[VUIAuthenticationManager DSID];
  baseFields = [(VUIMetricsController *)self baseFields];
  v6 = [baseFields objectForKey:@"pageContext"];

  v7 = &stru_1F5DB25C0;
  v11[0] = @"pageContext";
  v11[1] = @"dsId";
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = &stru_1F5DB25C0;
  }

  if (v4)
  {
    v7 = v4;
  }

  v12[0] = v8;
  v12[1] = v7;
  v11[2] = @"topic";
  v12[2] = _getCurrentMetricsTopic;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];

  return v9;
}

- (id)getMetricsOverlayForWebContainer
{
  v16[4] = *MEMORY[0x1E69E9840];
  _getCurrentMetricsTopic = [(VUIMetricsController *)self _getCurrentMetricsTopic];
  v3 = +[VUIAuthenticationManager DSID];
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];

  mainBundle2 = [MEMORY[0x1E696AAE8] mainBundle];
  infoDictionary = [mainBundle2 infoDictionary];

  v8 = [infoDictionary objectForKey:@"CFBundleShortVersionString"];
  v9 = v8;
  v10 = &stru_1F5DB25C0;
  if (bundleIdentifier)
  {
    v11 = bundleIdentifier;
  }

  else
  {
    v11 = &stru_1F5DB25C0;
  }

  v15[0] = @"app";
  v15[1] = @"appVersion";
  if (v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = &stru_1F5DB25C0;
  }

  v16[0] = v11;
  v16[1] = v12;
  if (v3)
  {
    v10 = v3;
  }

  v15[2] = @"dsId";
  v15[3] = @"topic";
  v16[2] = v10;
  v16[3] = _getCurrentMetricsTopic;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:4];

  return v13;
}

+ (id)_baseToVPAFMapping
{
  if (_baseToVPAFMapping_onceToken != -1)
  {
    +[VUIMetricsController(VPAF) _baseToVPAFMapping];
  }

  v3 = _baseToVPAFMapping__map;

  return v3;
}

void __48__VUIMetricsController_VPAF___baseToVPAFMapping__block_invoke()
{
  v3[6] = *MEMORY[0x1E69E9840];
  v2[0] = @"mvpdMonthsActive";
  v2[1] = @"mvpdPartner";
  v3[0] = @"mvpdMonthsActive";
  v3[1] = @"mvpdPartner";
  v2[2] = @"pageContext";
  v2[3] = @"sharedActivity";
  v3[2] = @"tabId";
  v3[3] = @"sharedActivity";
  v2[4] = @"sharedActivityDevicesCurrent";
  v2[5] = @"sharedActivityDevicesMax";
  v3[4] = @"sharedActivityDevicesCurrent";
  v3[5] = @"sharedActivityDevicesMax";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:6];
  v1 = _baseToVPAFMapping__map;
  _baseToVPAFMapping__map = v0;
}

- (NSDictionary)baseFieldsForVPAF
{
  baseFields = [(VUIMetricsController *)self baseFields];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  _baseToVPAFMapping = [objc_opt_class() _baseToVPAFMapping];
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __47__VUIMetricsController_VPAF__baseFieldsForVPAF__block_invoke;
  v12 = &unk_1E87367E0;
  v13 = _baseToVPAFMapping;
  v5 = v3;
  v14 = v5;
  v6 = _baseToVPAFMapping;
  [baseFields enumerateKeysAndObjectsUsingBlock:&v9];
  if ([v5 count])
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __47__VUIMetricsController_VPAF__baseFieldsForVPAF__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v5 = [*(a1 + 32) objectForKey:a2];
  if (v5)
  {
    [*(a1 + 40) setObject:v6 forKey:v5];
  }
}

void __67__VUIMetricsController__recordEventWithJet_withEventData_pageData___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1E323F000, a2, OS_LOG_TYPE_ERROR, "VUIMetricsController: Metrics error: %@", &v2, 0xCu);
}

@end