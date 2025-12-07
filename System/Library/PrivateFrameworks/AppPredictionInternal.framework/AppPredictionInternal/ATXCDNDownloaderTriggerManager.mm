@interface ATXCDNDownloaderTriggerManager
+ (BOOL)_locationIsStaleOrNotAccurateEnough:(id)enough now:(id)now;
- (ATXCDNDownloaderTriggerManager)init;
- (ATXCDNDownloaderTriggerManager)initWithCDNDownloader:(id)downloader heroAppServer:(id)server heroClipManager:(id)manager heroAppManager:(id)appManager predictionContextBuilder:(id)builder nudgeRegistrar:(Class)registrar locationManager:(id)locationManager;
- (ATXCDNDownloaderTriggerManager)initWithCDNDownloader:(id)downloader predictionContextBuilder:(id)builder nudgeRegistrar:(Class)registrar;
- (id)requestHighQualityLocationWithHundredMeterAccuracy;
- (void)_registerForRestrictionChangedNotifications;
- (void)_registerForSiriSettingsChangedNotifications;
- (void)forwardLocationToCDNDownloaderAndHandleReply;
- (void)handleProfileChangedNotification;
- (void)handleSiriSettingsChangedNotification;
- (void)queryAndHandlePredictionsFromCDNDownloader;
@end

@implementation ATXCDNDownloaderTriggerManager

- (void)handleSiriSettingsChangedNotification
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = CFPreferencesCopyAppValue(@"SuggestionsSuggestAppClips", @"com.apple.suggestions");
  v4 = v3;
  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  v7 = __atxlog_handle_default(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v12 = 138412546;
    v13 = v9;
    v14 = 1024;
    v15 = bOOLValue;
    _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_DEFAULT, "%@ - got siri settings notification, canSuggestAppClips is: %{BOOL}d", &v12, 0x12u);
  }

  if ((bOOLValue & 1) == 0)
  {
    heroClipManager = self->_heroClipManager;
    v11 = objc_opt_new();
    [(ATXHeroClipManager *)heroClipManager donateAppClipsWithHeroAppPredictions:v11];
  }
}

- (void)queryAndHandlePredictionsFromCDNDownloader
{
  v3 = +[_ATXGlobals sharedInstance];
  cdnDownloaderIsEnabled = [v3 cdnDownloaderIsEnabled];

  if (cdnDownloaderIsEnabled)
  {
    cdnDownloader = self->_cdnDownloader;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __76__ATXCDNDownloaderTriggerManager_queryAndHandlePredictionsFromCDNDownloader__block_invoke;
    v8[3] = &unk_278599D18;
    v8[4] = self;
    [(ATXProactiveCDNDownloaderProtocol *)cdnDownloader highConfidenceHeroDatasForCurrentLocationWithCompletion:v8];
  }

  else
  {
    v7 = __atxlog_handle_hero(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_DEFAULT, "Skipping CDN download since it's disabled", buf, 2u);
    }
  }
}

- (ATXCDNDownloaderTriggerManager)initWithCDNDownloader:(id)downloader predictionContextBuilder:(id)builder nudgeRegistrar:(Class)registrar
{
  builderCopy = builder;
  downloaderCopy = downloader;
  v10 = objc_opt_new();
  v11 = objc_opt_new();
  v12 = [ATXHeroDataServer alloc];
  v13 = objc_opt_new();
  v14 = [(ATXHeroDataServer *)v12 initWithHeroClipManager:v10 heroAppManager:v11 tracker:v13];

  mEMORY[0x277D41BF8] = [MEMORY[0x277D41BF8] sharedInstance];
  v16 = [(ATXCDNDownloaderTriggerManager *)self initWithCDNDownloader:downloaderCopy heroAppServer:v14 heroClipManager:v10 heroAppManager:v11 predictionContextBuilder:builderCopy nudgeRegistrar:registrar locationManager:mEMORY[0x277D41BF8]];

  return v16;
}

- (ATXCDNDownloaderTriggerManager)initWithCDNDownloader:(id)downloader heroAppServer:(id)server heroClipManager:(id)manager heroAppManager:(id)appManager predictionContextBuilder:(id)builder nudgeRegistrar:(Class)registrar locationManager:(id)locationManager
{
  downloaderCopy = downloader;
  serverCopy = server;
  managerCopy = manager;
  appManagerCopy = appManager;
  builderCopy = builder;
  locationManagerCopy = locationManager;
  v34.receiver = self;
  v34.super_class = ATXCDNDownloaderTriggerManager;
  v18 = [(ATXCDNDownloaderTriggerManager *)&v34 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_heroClipManager, manager);
    objc_storeStrong(&v19->_heroAppManager, appManager);
    objc_storeStrong(&v19->_server, server);
    objc_storeStrong(&v19->_cdnDownloader, downloader);
    objc_storeStrong(&v19->_locationManager, locationManager);
    objc_storeStrong(&v19->_predictionContextBuilder, builder);
    v20 = objc_opt_class();
    Name = class_getName(v20);
    v22 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v23 = dispatch_queue_create(Name, v22);
    queue = v19->_queue;
    v19->_queue = v23;

    v25 = [[ATXTimeBucketedRateLimiter alloc] initWithMaxCount:2 perPeriod:15.0];
    rateLimiter = v19->_rateLimiter;
    v19->_rateLimiter = v25;

    [(ATXCDNDownloaderTriggerManager *)v19 _registerForRestrictionChangedNotifications];
    [(ATXCDNDownloaderTriggerManager *)v19 _registerForSiriSettingsChangedNotifications];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __157__ATXCDNDownloaderTriggerManager_initWithCDNDownloader_heroAppServer_heroClipManager_heroAppManager_predictionContextBuilder_nudgeRegistrar_locationManager___block_invoke;
    v32[3] = &unk_278596BB8;
    v33 = v19;
    [(objc_class *)registrar registerForNearbyAppNudgeWithBlock:v32];
  }

  return v19;
}

uint64_t __157__ATXCDNDownloaderTriggerManager_initWithCDNDownloader_heroAppServer_heroClipManager_heroAppManager_predictionContextBuilder_nudgeRegistrar_locationManager___block_invoke(uint64_t a1)
{
  v2 = __atxlog_handle_hero(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2263AA000, v2, OS_LOG_TYPE_DEFAULT, "Trigger received", v4, 2u);
  }

  return [*(a1 + 32) queryAndHandlePredictionsFromCDNDownloader];
}

- (ATXCDNDownloaderTriggerManager)init
{
  v3 = objc_alloc_init(MEMORY[0x277D41BA0]);
  v4 = objc_alloc_init(ATXPredictionContextBuilder);
  v5 = [(ATXCDNDownloaderTriggerManager *)self initWithCDNDownloader:v3 predictionContextBuilder:v4 nudgeRegistrar:objc_opt_class()];

  return v5;
}

void __76__ATXCDNDownloaderTriggerManager_queryAndHandlePredictionsFromCDNDownloader__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = __atxlog_handle_hero(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __76__ATXCDNDownloaderTriggerManager_queryAndHandlePredictionsFromCDNDownloader__block_invoke_cold_1(v7, v8);
    }

    goto LABEL_5;
  }

  v9 = [v5 count];
  if (!v9)
  {
LABEL_5:
    v10 = __atxlog_handle_hero(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315138;
      v13 = "[ATXCDNDownloaderTriggerManager queryAndHandlePredictionsFromCDNDownloader]_block_invoke";
      _os_log_impl(&dword_2263AA000, v10, OS_LOG_TYPE_DEFAULT, "%s No high confidence hero app predictions received for current location. Forwarding location to CDNDownloader ", &v12, 0xCu);
    }

    [*(a1 + 32) forwardLocationToCDNDownloaderAndHandleReply];
    goto LABEL_12;
  }

  v11 = __atxlog_handle_hero(v9);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315138;
    v13 = "[ATXCDNDownloaderTriggerManager queryAndHandlePredictionsFromCDNDownloader]_block_invoke";
    _os_log_impl(&dword_2263AA000, v11, OS_LOG_TYPE_DEFAULT, "%s Received high confidence hero app predictions for current location. Forwarding predictions to ATXHeroDataServer", &v12, 0xCu);
  }

  [*(a1 + 32) _forwardHeroAppPredictionsToHeroAppPredictionsServer:v5];
LABEL_12:
}

- (void)forwardLocationToCDNDownloaderAndHandleReply
{
  sel_getName(a2);
  v3 = os_transaction_create();
  rateLimiter = [(ATXCDNDownloaderTriggerManager *)self rateLimiter];
  tryToIncrementCountAndReturnSuccess = [rateLimiter tryToIncrementCountAndReturnSuccess];

  if (tryToIncrementCountAndReturnSuccess)
  {
    requestHighQualityLocationWithHundredMeterAccuracy = [(ATXCDNDownloaderTriggerManager *)self requestHighQualityLocationWithHundredMeterAccuracy];
    if (requestHighQualityLocationWithHundredMeterAccuracy)
    {
      cdnDownloader = self->_cdnDownloader;
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __78__ATXCDNDownloaderTriggerManager_forwardLocationToCDNDownloaderAndHandleReply__block_invoke;
      v11[3] = &unk_278599D18;
      v11[4] = self;
      [(ATXProactiveCDNDownloaderProtocol *)cdnDownloader heroDatasForLocation:requestHighQualityLocationWithHundredMeterAccuracy completion:v11];
    }

    else
    {
      v9 = __atxlog_handle_hero(0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_DEFAULT, "Clearing hero app predictions since nil or bad quality location received.", buf, 2u);
      }

      v10 = objc_opt_new();
      [(ATXCDNDownloaderTriggerManager *)self _forwardHeroAppPredictionsToHeroAppPredictionsServer:v10];
    }
  }

  else
  {
    requestHighQualityLocationWithHundredMeterAccuracy = __atxlog_handle_hero(v6);
    if (os_log_type_enabled(requestHighQualityLocationWithHundredMeterAccuracy, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2263AA000, requestHighQualityLocationWithHundredMeterAccuracy, OS_LOG_TYPE_DEFAULT, "Skipping CDN download since rate limit exceeded", buf, 2u);
    }
  }
}

void __78__ATXCDNDownloaderTriggerManager_forwardLocationToCDNDownloaderAndHandleReply__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = __atxlog_handle_hero(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __76__ATXCDNDownloaderTriggerManager_queryAndHandlePredictionsFromCDNDownloader__block_invoke_cold_1(v6, v7);
    }
  }

  else
  {
    [*(a1 + 32) _forwardHeroAppPredictionsToHeroAppPredictionsServer:a2];
  }
}

- (id)requestHighQualityLocationWithHundredMeterAccuracy
{
  v23 = *MEMORY[0x277D85DE8];
  predictionContextForCurrentContext = [(ATXPredictionContextBuilderProtocol *)self->_predictionContextBuilder predictionContextForCurrentContext];
  getCurrentLocation = [(ATXLocationManager *)self->_locationManager getCurrentLocation];
  timeContext = [predictionContextForCurrentContext timeContext];
  date = [timeContext date];

  v8 = __atxlog_handle_hero(v7);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (!getCurrentLocation)
  {
    if (v9)
    {
      LOWORD(v19) = 0;
      _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_DEFAULT, "Nil location received. Ignoring trigger.", &v19, 2u);
    }

    goto LABEL_11;
  }

  if (v9)
  {
    [getCurrentLocation coordinate];
    v11 = v10;
    [getCurrentLocation coordinate];
    v19 = 134545921;
    v20 = v11;
    v21 = 2053;
    v22 = v12;
    _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_DEFAULT, "Received location, %{sensitive}f, %{sensitive}f", &v19, 0x16u);
  }

  v13 = [objc_opt_class() _locationIsStaleOrNotAccurateEnough:getCurrentLocation now:date];
  v14 = v13;
  v15 = __atxlog_handle_hero(v13);
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
  if (v14)
  {
    if (v16)
    {
      LOWORD(v19) = 0;
      _os_log_impl(&dword_2263AA000, v15, OS_LOG_TYPE_DEFAULT, "Stale or inaccurate location received. Ignoring trigger.", &v19, 2u);
    }

LABEL_11:
    v17 = 0;
    goto LABEL_15;
  }

  if (v16)
  {
    LOWORD(v19) = 0;
    _os_log_impl(&dword_2263AA000, v15, OS_LOG_TYPE_DEFAULT, "Location passed quality checks. Forwarding to CDN Downloader.", &v19, 2u);
  }

  v17 = getCurrentLocation;
LABEL_15:

  return v17;
}

+ (BOOL)_locationIsStaleOrNotAccurateEnough:(id)enough now:(id)now
{
  v20 = *MEMORY[0x277D85DE8];
  enoughCopy = enough;
  nowCopy = now;
  timestamp = [enoughCopy timestamp];
  [nowCopy timeIntervalSinceDate:timestamp];
  v9 = v8;

  if (v9 <= 60.0)
  {
    horizontalAccuracy = [enoughCopy horizontalAccuracy];
    if (v14 <= 100.0)
    {
      v16 = 0;
      goto LABEL_10;
    }

    v11 = __atxlog_handle_hero(horizontalAccuracy);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      [enoughCopy horizontalAccuracy];
      v18 = 134217984;
      v19 = v15;
      v12 = "Location uncertainty too large, horizontalAccuracy, %f. Ignoring trigger.";
      goto LABEL_7;
    }
  }

  else
  {
    v11 = __atxlog_handle_hero(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 134217984;
      v19 = v9;
      v12 = "Location is stale. Age: %f. Ignoring trigger.";
LABEL_7:
      _os_log_impl(&dword_2263AA000, v11, OS_LOG_TYPE_DEFAULT, v12, &v18, 0xCu);
    }
  }

  v16 = 1;
LABEL_10:

  return v16;
}

void __87__ATXCDNDownloaderTriggerManager__forwardHeroAppPredictionsToHeroAppPredictionsServer___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = __atxlog_handle_hero(v2);
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __87__ATXCDNDownloaderTriggerManager__forwardHeroAppPredictionsToHeroAppPredictionsServer___block_invoke_cold_1(v2, v4);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[ATXCDNDownloaderTriggerManager _forwardHeroAppPredictionsToHeroAppPredictionsServer:]_block_invoke";
    _os_log_impl(&dword_2263AA000, v4, OS_LOG_TYPE_DEFAULT, "%s Successfully donated predictions.", &v5, 0xCu);
  }
}

- (void)_registerForRestrictionChangedNotifications
{
  if (!self->_restrictionChangedNotificationToken)
  {
    v9[7] = v2;
    v9[8] = v3;
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v6 = *MEMORY[0x277D26178];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __77__ATXCDNDownloaderTriggerManager__registerForRestrictionChangedNotifications__block_invoke;
    v9[3] = &unk_278599D40;
    v9[4] = self;
    v7 = [defaultCenter addObserverForName:v6 object:0 queue:0 usingBlock:v9];
    restrictionChangedNotificationToken = self->_restrictionChangedNotificationToken;
    self->_restrictionChangedNotificationToken = v7;
  }
}

- (void)handleProfileChangedNotification
{
  v13 = *MEMORY[0x277D85DE8];
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  isAppClipsAllowed = [mEMORY[0x277D262A0] isAppClipsAllowed];

  if ((isAppClipsAllowed & 1) == 0)
  {
    v6 = __atxlog_handle_hero(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v11 = 138412290;
      v12 = v8;
      _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_DEFAULT, "%@ - MCProfileConnection status changed, App clips no longer allowed. Clearing predictions", &v11, 0xCu);
    }

    heroClipManager = self->_heroClipManager;
    v10 = objc_opt_new();
    [(ATXHeroClipManager *)heroClipManager donateAppClipsWithHeroAppPredictions:v10];
  }
}

- (void)_registerForSiriSettingsChangedNotifications
{
  if (!self->_siriSettingsChangedNotificationToken)
  {
    handler[5] = v2;
    handler[6] = v3;
    queue = self->_queue;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __78__ATXCDNDownloaderTriggerManager__registerForSiriSettingsChangedNotifications__block_invoke;
    handler[3] = &unk_278597800;
    handler[4] = self;
    notify_register_dispatch("com.apple.suggestions.settingsChanged", &self->_siriSettingsChangedNotificationToken, queue, handler);
  }
}

void __76__ATXCDNDownloaderTriggerManager_queryAndHandlePredictionsFromCDNDownloader__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "Error while querying data from GeoServices. Error: %@.", &v2, 0xCu);
}

void __87__ATXCDNDownloaderTriggerManager__forwardHeroAppPredictionsToHeroAppPredictionsServer___block_invoke_cold_1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 description];
  v4 = 136446210;
  v5 = [v3 UTF8String];
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "Error while donating predictions, %{public}s", &v4, 0xCu);
}

@end