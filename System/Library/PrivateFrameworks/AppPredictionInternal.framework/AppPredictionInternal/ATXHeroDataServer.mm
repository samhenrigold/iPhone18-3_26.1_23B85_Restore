@interface ATXHeroDataServer
- (ATXHeroDataServer)init;
- (ATXHeroDataServer)initWithHeroClipManager:(id)manager heroAppManager:(id)appManager heroPoiManager:(id)poiManager tracker:(id)tracker predictionsTracker:(id)predictionsTracker locationManager:(id)locationManager;
- (ATXHeroDataServer)initWithHeroClipManager:(id)manager heroAppManager:(id)appManager tracker:(id)tracker;
- (BOOL)_didPredictionsChange:(id)change;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (id)_filterPredictions:(id)predictions currentLocation:(id)location;
- (id)_heroAppPredictionsFromPredictions:(id)predictions;
- (id)_heroClipPredictionsFromPredictions:(id)predictions;
- (id)_heroPoiPredictionsFromPredictions:(id)predictions;
- (id)processPredictions:(id)predictions;
- (void)_addBundleIdsToPredictions:(id)predictions;
- (void)_donateAppClipsToHeroClipManager:(id)manager;
- (void)_donateHeroAppsToHeroAppManager:(id)manager;
- (void)_donatePoiCategoriesToHeroPoiManager:(id)manager;
- (void)_setExpiry;
- (void)_setPredictionsInDefaults:(id)defaults;
- (void)addConfirmForAppClipWithHeroAppPrediction:(id)prediction completion:(id)completion;
- (void)addHardRejectForAppClipWithHeroAppPrediction:(id)prediction completion:(id)completion;
- (void)addSoftRejectForAppClipWithHeroAppPrediction:(id)prediction completion:(id)completion;
- (void)dealloc;
- (void)donateHeroAppPredictions:(id)predictions completion:(id)completion;
- (void)donatePredictions:(id)predictions shouldOnlyDonateHeroPoiPredictions:(BOOL)poiPredictions;
- (void)feedbackScoreForAppClipWithHeroAppPrediction:(id)prediction completion:(id)completion;
- (void)getCurrentHeroPoiCategoryWithCompletion:(id)completion;
- (void)updateHeroAppManagerAndHeroClipManagerWithPredictions:(id)predictions;
@end

@implementation ATXHeroDataServer

- (ATXHeroDataServer)init
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  v6 = [(ATXHeroDataServer *)self initWithHeroClipManager:v3 heroAppManager:v4 tracker:v5];

  return v6;
}

- (ATXHeroDataServer)initWithHeroClipManager:(id)manager heroAppManager:(id)appManager tracker:(id)tracker
{
  trackerCopy = tracker;
  appManagerCopy = appManager;
  managerCopy = manager;
  v11 = objc_alloc_init(ATXHeroPoiManager);
  v12 = objc_opt_new();
  mEMORY[0x277D41BF8] = [MEMORY[0x277D41BF8] sharedInstance];
  v14 = [(ATXHeroDataServer *)self initWithHeroClipManager:managerCopy heroAppManager:appManagerCopy heroPoiManager:v11 tracker:trackerCopy predictionsTracker:v12 locationManager:mEMORY[0x277D41BF8]];

  return v14;
}

- (ATXHeroDataServer)initWithHeroClipManager:(id)manager heroAppManager:(id)appManager heroPoiManager:(id)poiManager tracker:(id)tracker predictionsTracker:(id)predictionsTracker locationManager:(id)locationManager
{
  managerCopy = manager;
  appManagerCopy = appManager;
  poiManagerCopy = poiManager;
  obj = tracker;
  trackerCopy = tracker;
  predictionsTrackerCopy = predictionsTracker;
  predictionsTrackerCopy2 = predictionsTracker;
  locationManagerCopy = locationManager;
  v37.receiver = self;
  v37.super_class = ATXHeroDataServer;
  v20 = [(ATXHeroDataServer *)&v37 init];
  if (v20)
  {
    dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    locationManagerCopy2 = locationManager;
    v21 = predictionsTrackerCopy2;
    v22 = trackerCopy;
    v23 = poiManagerCopy;
    v24 = appManagerCopy;
    v26 = v25 = managerCopy;
    v27 = dispatch_queue_create("ATXHeroServerQueue", v26);
    queue = v20->_queue;
    v20->_queue = v27;

    managerCopy = v25;
    appManagerCopy = v24;
    poiManagerCopy = v23;
    trackerCopy = v22;
    predictionsTrackerCopy2 = v21;
    objc_storeStrong(&v20->_heroClipManager, manager);
    objc_storeStrong(&v20->_heroAppManager, appManager);
    objc_storeStrong(&v20->_heroPoiManager, poiManager);
    objc_storeStrong(&v20->_tracker, obj);
    objc_storeStrong(&v20->_predictionsTracker, predictionsTrackerCopy);
    objc_storeStrong(&v20->_locationManager, locationManagerCopy2);
    v29 = objc_alloc(MEMORY[0x277CCAE98]);
    v30 = [v29 initWithMachServiceName:*MEMORY[0x277D13200]];
    listener = v20->_listener;
    v20->_listener = v30;

    [(NSXPCListener *)v20->_listener setDelegate:v20];
    [(NSXPCListener *)v20->_listener resume];
  }

  return v20;
}

- (void)dealloc
{
  [(NSXPCListener *)self->_listener invalidate];
  v3.receiver = self;
  v3.super_class = ATXHeroDataServer;
  [(ATXHeroDataServer *)&v3 dealloc];
}

- (void)donateHeroAppPredictions:(id)predictions completion:(id)completion
{
  v27 = *MEMORY[0x277D85DE8];
  predictionsCopy = predictions;
  completionCopy = completion;
  v8 = __atxlog_handle_xpc(completionCopy);
  v9 = os_signpost_id_generate(v8);

  v11 = __atxlog_handle_xpc(v10);
  v12 = v11;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2263AA000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v9, "donateHeroAppPredictions", " enableTelemetry=YES ", buf, 2u);
  }

  v14 = __atxlog_handle_hero(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [predictionsCopy count];
    *buf = 136315394;
    v24 = "[ATXHeroDataServer donateHeroAppPredictions:completion:]";
    v25 = 2048;
    v26 = v15;
    _os_log_impl(&dword_2263AA000, v14, OS_LOG_TYPE_DEFAULT, "%s Received %lu hero app predictions", buf, 0x16u);
  }

  queue = self->_queue;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __57__ATXHeroDataServer_donateHeroAppPredictions_completion___block_invoke;
  v21[3] = &unk_278596C10;
  v21[4] = self;
  v22 = predictionsCopy;
  v17 = predictionsCopy;
  dispatch_sync(queue, v21);
  if (completionCopy)
  {
    v18 = completionCopy[2](completionCopy, 0);
  }

  v19 = __atxlog_handle_xpc(v18);
  v20 = v19;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2263AA000, v20, OS_SIGNPOST_INTERVAL_END, v9, "donateHeroAppPredictions", " enableTelemetry=YES ", buf, 2u);
  }
}

- (void)addConfirmForAppClipWithHeroAppPrediction:(id)prediction completion:(id)completion
{
  completionCopy = completion;
  predictionCopy = prediction;
  v8 = __atxlog_handle_xpc(predictionCopy);
  v9 = os_signpost_id_generate(v8);

  v11 = __atxlog_handle_xpc(v10);
  v12 = v11;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2263AA000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v9, "addConfirmForAppClip", " enableTelemetry=YES ", buf, 2u);
  }

  feedback = [(ATXHeroClipManager *)self->_heroClipManager feedback];
  LODWORD(v14) = 1.0;
  [feedback addConfirmForAppClipWithHeroAppPrediction:predictionCopy weight:v14];

  if (completionCopy)
  {
    v15 = completionCopy[2](completionCopy, 0);
  }

  v16 = __atxlog_handle_xpc(v15);
  v17 = v16;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    *v18 = 0;
    _os_signpost_emit_with_name_impl(&dword_2263AA000, v17, OS_SIGNPOST_INTERVAL_END, v9, "addConfirmForAppClip", " enableTelemetry=YES ", v18, 2u);
  }
}

- (void)addSoftRejectForAppClipWithHeroAppPrediction:(id)prediction completion:(id)completion
{
  completionCopy = completion;
  predictionCopy = prediction;
  v8 = __atxlog_handle_xpc(predictionCopy);
  v9 = os_signpost_id_generate(v8);

  v11 = __atxlog_handle_xpc(v10);
  v12 = v11;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2263AA000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v9, "addSoftRejectForAppClip", " enableTelemetry=YES ", buf, 2u);
  }

  feedback = [(ATXHeroClipManager *)self->_heroClipManager feedback];
  LODWORD(v14) = 1.0;
  [feedback addRejectForAppClipWithHeroAppPrediction:predictionCopy weight:v14];

  if (completionCopy)
  {
    v15 = completionCopy[2](completionCopy, 0);
  }

  v16 = __atxlog_handle_xpc(v15);
  v17 = v16;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    *v18 = 0;
    _os_signpost_emit_with_name_impl(&dword_2263AA000, v17, OS_SIGNPOST_INTERVAL_END, v9, "addSoftRejectForAppClip", " enableTelemetry=YES ", v18, 2u);
  }
}

- (void)addHardRejectForAppClipWithHeroAppPrediction:(id)prediction completion:(id)completion
{
  completionCopy = completion;
  predictionCopy = prediction;
  v8 = __atxlog_handle_xpc(predictionCopy);
  v9 = os_signpost_id_generate(v8);

  v11 = __atxlog_handle_xpc(v10);
  v12 = v11;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2263AA000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v9, "addHardRejectForAppClip", " enableTelemetry=YES ", buf, 2u);
  }

  feedback = [(ATXHeroClipManager *)self->_heroClipManager feedback];
  LODWORD(v14) = 1.0;
  [feedback addRejectForAppClipWithHeroAppPrediction:predictionCopy weight:v14];

  if (completionCopy)
  {
    v15 = completionCopy[2](completionCopy, 0);
  }

  v16 = __atxlog_handle_xpc(v15);
  v17 = v16;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    *v18 = 0;
    _os_signpost_emit_with_name_impl(&dword_2263AA000, v17, OS_SIGNPOST_INTERVAL_END, v9, "addHardRejectForAppClip", " enableTelemetry=YES ", v18, 2u);
  }
}

- (void)feedbackScoreForAppClipWithHeroAppPrediction:(id)prediction completion:(id)completion
{
  completionCopy = completion;
  predictionCopy = prediction;
  v8 = __atxlog_handle_xpc(predictionCopy);
  v9 = os_signpost_id_generate(v8);

  v11 = __atxlog_handle_xpc(v10);
  v12 = v11;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2263AA000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v9, "feedbackScoreForAppClip", " enableTelemetry=YES ", buf, 2u);
  }

  feedback = [(ATXHeroClipManager *)self->_heroClipManager feedback];
  [feedback feedbackScoreForAppClipWithHeroAppPrediction:predictionCopy];
  v15 = v14;

  if (completionCopy)
  {
    v16 = completionCopy[2](completionCopy, 0, v15);
  }

  v17 = __atxlog_handle_xpc(v16);
  v18 = v17;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    *v19 = 0;
    _os_signpost_emit_with_name_impl(&dword_2263AA000, v18, OS_SIGNPOST_INTERVAL_END, v9, "feedbackScoreForAppClip", " enableTelemetry=YES ", v19, 2u);
  }
}

- (void)getCurrentHeroPoiCategoryWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = __atxlog_handle_xpc(completionCopy);
  v6 = os_signpost_id_generate(v5);

  v8 = __atxlog_handle_xpc(v7);
  v9 = v8;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2263AA000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v6, "getCurrentPoiCategory", " enableTelemetry=YES ", buf, 2u);
  }

  currentPoiCategory = [(ATXHeroPoiManager *)self->_heroPoiManager currentPoiCategory];
  completionCopy[2](completionCopy, currentPoiCategory, 0);

  v12 = __atxlog_handle_xpc(v11);
  v13 = v12;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *v14 = 0;
    _os_signpost_emit_with_name_impl(&dword_2263AA000, v13, OS_SIGNPOST_INTERVAL_END, v6, "getCurrentPoiCategory", " enableTelemetry=YES ", v14, 2u);
  }
}

- (id)processPredictions:(id)predictions
{
  predictionsCopy = predictions;
  getCurrentLocation = [(ATXLocationManagerProtocol *)self->_locationManager getCurrentLocation];
  if (getCurrentLocation)
  {
    v6 = [(ATXHeroDataServer *)self _filterPredictions:predictionsCopy currentLocation:getCurrentLocation];

    v7 = [ATXHeroDataServerHelper heroAppPredictionsSortedByDistance:v6 currentLocation:getCurrentLocation];

    [(ATXHeroDataServer *)self _addBundleIdsToPredictions:v7];
    predictionsCopy = v7;
    v8 = predictionsCopy;
  }

  else
  {
    v9 = __atxlog_handle_hero(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [ATXHeroDataServer processPredictions:v9];
    }

    v8 = MEMORY[0x277CBEBF8];
  }

  return v8;
}

- (void)donatePredictions:(id)predictions shouldOnlyDonateHeroPoiPredictions:(BOOL)poiPredictions
{
  poiPredictionsCopy = poiPredictions;
  predictionsCopy = predictions;
  v7 = [(ATXHeroDataServer *)self _heroPoiPredictionsFromPredictions:predictionsCopy];
  v8 = v7;
  if (!poiPredictionsCopy)
  {
    v11 = [(ATXHeroDataServer *)self _heroAppPredictionsFromPredictions:predictionsCopy];
    v12 = [(ATXHeroDataServer *)self _heroClipPredictionsFromPredictions:predictionsCopy];
    v13 = [predictionsCopy count];
    v14 = [(ATXHeroDataServer *)self _didPredictionsChange:predictionsCopy];
    v15 = v14;
    if ((v14 & 1) != 0 || !v13)
    {
      [(ATXHeroDataServer *)self _donateAppClipsToHeroClipManager:v12];
      if ([v12 count])
      {
        v19 = MEMORY[0x277CBEBF8];
        selfCopy2 = self;
      }

      else
      {
        selfCopy2 = self;
        v19 = v11;
      }

      [(ATXHeroDataServer *)selfCopy2 _donateHeroAppsToHeroAppManager:v19];
      _setExpiry = [(ATXHeroDataServer *)self _setPredictionsInDefaults:predictionsCopy];
      if (v13)
      {
        _setExpiry = [(ATXHeroDataServer *)self _setExpiry];
      }

      if (v15)
      {
        [(ATXHeroDataServer *)self _donatePoiCategoriesToHeroPoiManager:v8];
LABEL_25:

LABEL_26:
        goto LABEL_27;
      }

      v16 = __atxlog_handle_hero(_setExpiry);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *v23 = 0;
        v17 = "Not sending POI categories to blending, since nil predictions were recently donated.";
        v18 = v23;
        goto LABEL_23;
      }
    }

    else
    {
      v16 = __atxlog_handle_hero(v14);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v22 = 0;
        v17 = "Not sending predictions to blending, since same predictions were recently donated.";
        v18 = &v22;
LABEL_23:
        _os_log_impl(&dword_2263AA000, v16, OS_LOG_TYPE_DEFAULT, v17, v18, 2u);
      }
    }

    goto LABEL_25;
  }

  v9 = __atxlog_handle_hero(v7);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_DEFAULT, "The user is in a location where we only donate POI category predictions.", buf, 2u);
  }

  v10 = [(ATXHeroDataServer *)self _didPredictionsChange:v8];
  if (!v10)
  {
    v11 = __atxlog_handle_hero(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v24 = 0;
      _os_log_impl(&dword_2263AA000, v11, OS_LOG_TYPE_DEFAULT, "The same POI category prediction already donated. Not donating another prediction of the same category", v24, 2u);
    }

    goto LABEL_26;
  }

  [(ATXHeroDataServer *)self _setPredictionsInDefaults:v8];
  if ([v8 count])
  {
    [(ATXHeroDataServer *)self _setExpiry];
  }

  [(ATXHeroDataServer *)self _donatePoiCategoriesToHeroPoiManager:v8];
LABEL_27:
}

- (void)updateHeroAppManagerAndHeroClipManagerWithPredictions:(id)predictions
{
  v36 = *MEMORY[0x277D85DE8];
  predictionsCopy = predictions;
  dispatch_assert_queue_V2(self->_queue);
  locationOfInterestAtCurrentLocation = [(ATXLocationManagerProtocol *)self->_locationManager locationOfInterestAtCurrentLocation];
  v6 = __atxlog_handle_hero(locationOfInterestAtCurrentLocation);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v34 = 136315394;
    *&v34[4] = "[ATXHeroDataServer updateHeroAppManagerAndHeroClipManagerWithPredictions:]";
    *&v34[12] = 2112;
    *&v34[14] = locationOfInterestAtCurrentLocation;
    _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_DEFAULT, "%s Location of Interest: %@", v34, 0x16u);
  }

  if (!locationOfInterestAtCurrentLocation || [locationOfInterestAtCurrentLocation type] == -1)
  {
    v8 = 0;
    v7 = 0;
  }

  else
  {
    v7 = [locationOfInterestAtCurrentLocation type] != 3;
    v8 = 1;
  }

  isNearFrequentLocationOfInterest = [(ATXLocationManagerProtocol *)self->_locationManager isNearFrequentLocationOfInterest];
  v10 = +[ATXHeroDataServerHelper canPredictClipsGivenRecentMotion];
  v11 = [(ATXHeroDataServer *)self heroAppAndClipPredictionsAreEligibleGivenIsMoving:!v10 isNearKnownTypeLOI:v8 isNearFrequentLOI:isNearFrequentLocationOfInterest];
  v12 = [(ATXHeroDataServer *)self heroPoiPredictionsAreEligibleGivenIsMoving:!v10 isNearKnownTypeLOIExcludingGym:v7 isNearFrequentLOI:isNearFrequentLocationOfInterest];
  AppBooleanValue = [MEMORY[0x277D42590] isInternalBuild];
  if (AppBooleanValue)
  {
    v14 = *MEMORY[0x277CEBDC8];
    v34[0] = 0;
    AppBooleanValue = CFPreferencesGetAppBooleanValue(v14, *MEMORY[0x277CEBD00], v34);
    if (AppBooleanValue)
    {
      v15 = __atxlog_handle_hero(AppBooleanValue);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *v34 = 0;
        _os_log_impl(&dword_2263AA000, v15, OS_LOG_TYPE_DEFAULT, "Defaults for OverrideHeroAppPredictionEligibility set to True: Overriding hero app and clip predictions location eligibility and setting to True", v34, 2u);
      }

      goto LABEL_14;
    }
  }

  if (v11)
  {
    if (v12)
    {
LABEL_14:
      v16 = 0;
LABEL_27:
      v23 = 1;
LABEL_39:
      v30 = [(ATXHeroDataServer *)self processPredictions:predictionsCopy, *v34, *&v34[8]];

      [(ATXHeroDataServer *)self donatePredictions:v30 shouldOnlyDonateHeroPoiPredictions:v23 & v16];
      predictionsCopy = v30;
      goto LABEL_40;
    }
  }

  else
  {
    v17 = __atxlog_handle_hero(AppBooleanValue);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = @"YES";
      if (v10)
      {
        v19 = @"NO";
      }

      else
      {
        v19 = @"YES";
      }

      if (v8)
      {
        v20 = @"YES";
      }

      else
      {
        v20 = @"NO";
      }

      *v34 = 138412802;
      *&v34[4] = v19;
      *&v34[12] = 2112;
      *&v34[14] = v20;
      if (!isNearFrequentLocationOfInterest)
      {
        v18 = @"NO";
      }

      *&v34[22] = 2112;
      v35 = v18;
      _os_log_impl(&dword_2263AA000, v17, OS_LOG_TYPE_DEFAULT, "Clearing Hero App and Clip Predictions because the person is moving, or is near a known LOI, or is near a frequently visited LOI. isMoving: %@, isNearKnownTypeLOI: %@, isNearFrequentLOI: %@", v34, 0x20u);
    }

    v21 = objc_opt_new();
    [(ATXHeroDataServer *)self _donateHeroAppsToHeroAppManager:v21];

    v22 = objc_opt_new();
    [(ATXHeroDataServer *)self _donateAppClipsToHeroClipManager:v22];

    if (v12)
    {
      v16 = 1;
      goto LABEL_27;
    }
  }

  v24 = __atxlog_handle_hero(AppBooleanValue);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = @"YES";
    if (v10)
    {
      v26 = @"NO";
    }

    else
    {
      v26 = @"YES";
    }

    if (!v7)
    {
      v25 = @"NO";
    }

    *v34 = 138412546;
    *&v34[4] = v26;
    *&v34[12] = 2112;
    *&v34[14] = v25;
    _os_log_impl(&dword_2263AA000, v24, OS_LOG_TYPE_DEFAULT, "Clearing Hero POI Predictions because the person is moving, or is near a known LOI excluding gym. isMoving: %@, isNearKnownTypeLOIExcludingGym: %@", v34, 0x16u);
  }

  v27 = objc_opt_new();
  v28 = [(ATXHeroDataServer *)self _didPredictionsChange:v27];

  if (v28)
  {
    v29 = objc_opt_new();
    [(ATXHeroDataServer *)self _donatePoiCategoriesToHeroPoiManager:v29];
  }

  if (v11)
  {
    v16 = 0;
    v23 = 0;
    goto LABEL_39;
  }

  v31 = objc_opt_new();
  v32 = [(ATXHeroDataServer *)self _didPredictionsChange:v31];

  if (v32)
  {
    v33 = objc_opt_new();
    [(ATXHeroDataServer *)self _setPredictionsInDefaults:v33];
  }

LABEL_40:
}

- (void)_donateAppClipsToHeroClipManager:(id)manager
{
  v10 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  dispatch_assert_queue_V2(self->_queue);
  v6 = __atxlog_handle_hero(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [managerCopy description];
    v8 = 138412290;
    v9 = v7;
    _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_DEFAULT, "Sending app clip predictions to App Clips manager. Predictions: %@", &v8, 0xCu);
  }

  [(ATXHeroClipManager *)self->_heroClipManager donateAppClipsWithHeroAppPredictions:managerCopy];
}

- (void)_donateHeroAppsToHeroAppManager:(id)manager
{
  v10 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  dispatch_assert_queue_V2(self->_queue);
  v6 = __atxlog_handle_hero(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [managerCopy description];
    v8 = 138412290;
    v9 = v7;
    _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_DEFAULT, "Sending hero app predictions to Hero App Manager. Predictions: %@", &v8, 0xCu);
  }

  [(ATXHeroAppManager *)self->_heroAppManager donateHeroAppPredictions:managerCopy];
}

- (void)_donatePoiCategoriesToHeroPoiManager:(id)manager
{
  v10 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  dispatch_assert_queue_V2(self->_queue);
  v6 = __atxlog_handle_hero(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [managerCopy description];
    v8 = 138412290;
    v9 = v7;
    _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_DEFAULT, "Sending hero poi predictions to Hero POI Manager. Predictions: %@", &v8, 0xCu);
  }

  [(ATXHeroPoiManager *)self->_heroPoiManager donateHeroPoiPredictions:managerCopy];
}

- (id)_filterPredictions:(id)predictions currentLocation:(id)location
{
  v17 = *MEMORY[0x277D85DE8];
  predictionsCopy = predictions;
  locationCopy = location;
  dispatch_assert_queue_V2(self->_queue);
  if (locationCopy)
  {
    v9 = [ATXHeroDataServerHelper inRadiusPredictionsFrom:predictionsCopy currentLocation:locationCopy];

    v11 = __atxlog_handle_hero(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 134217984;
      v16 = [v9 count];
      _os_log_impl(&dword_2263AA000, v11, OS_LOG_TYPE_DEFAULT, "Left with %lu hero app predictions after removing out of radius predictions.", &v15, 0xCu);
    }

    predictionsCopy = v9;
    v12 = predictionsCopy;
  }

  else
  {
    v13 = __atxlog_handle_hero(v8);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&dword_2263AA000, v13, OS_LOG_TYPE_DEFAULT, "Empty location received while applying radius filter. Clearing predictions.", &v15, 2u);
    }

    v12 = MEMORY[0x277CBEBF8];
  }

  return v12;
}

- (void)_addBundleIdsToPredictions:(id)predictions
{
  v17 = *MEMORY[0x277D85DE8];
  predictionsCopy = predictions;
  dispatch_assert_queue_V2(self->_queue);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = predictionsCopy;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        v11 = [ATXHeroDataServerHelper bundleIdForPrediction:v10, v12];
        [v10 setBundleId:v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (id)_heroAppPredictionsFromPredictions:(id)predictions
{
  v21 = *MEMORY[0x277D85DE8];
  predictionsCopy = predictions;
  dispatch_assert_queue_V2(self->_queue);
  v5 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = predictionsCopy;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    v10 = *MEMORY[0x277D131F8];
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        bundleId = [v12 bundleId];
        v14 = [bundleId isEqualToString:v10];

        if ((v14 & 1) == 0)
        {
          [v5 addObject:v12];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)_heroClipPredictionsFromPredictions:(id)predictions
{
  v21 = *MEMORY[0x277D85DE8];
  predictionsCopy = predictions;
  dispatch_assert_queue_V2(self->_queue);
  v5 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = predictionsCopy;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    v10 = *MEMORY[0x277D131F8];
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        bundleId = [v12 bundleId];
        if ([bundleId isEqualToString:v10])
        {
          urlHash = [v12 urlHash];

          if (urlHash)
          {
            [v5 addObject:v12];
          }
        }

        else
        {
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)_heroPoiPredictionsFromPredictions:(id)predictions
{
  v22 = *MEMORY[0x277D85DE8];
  predictionsCopy = predictions;
  dispatch_assert_queue_V2(self->_queue);
  v5 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = predictionsCopy;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        poiCategory = [v11 poiCategory];
        if (poiCategory)
        {
          v13 = poiCategory;
          poiCategory2 = [v11 poiCategory];
          v15 = [poiCategory2 isEqualToString:&stru_2839A6058];

          if ((v15 & 1) == 0)
          {
            [v5 addObject:v11];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  return v5;
}

- (BOOL)_didPredictionsChange:(id)change
{
  selfCopy = self;
  queue = self->_queue;
  changeCopy = change;
  dispatch_assert_queue_V2(queue);
  LOBYTE(selfCopy) = [(ATXHeroPredictionsTracker *)selfCopy->_predictionsTracker didPredictionsChange:changeCopy];

  return selfCopy;
}

- (void)_setPredictionsInDefaults:(id)defaults
{
  queue = self->_queue;
  defaultsCopy = defaults;
  dispatch_assert_queue_V2(queue);
  [(ATXHeroPredictionsTracker *)self->_predictionsTracker setPredictionsInDefaults:defaultsCopy];
}

- (void)_setExpiry
{
  v3 = __atxlog_handle_hero(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, v3, OS_LOG_TYPE_DEFAULT, "Setting hero expiry", buf, 2u);
  }

  v4 = +[ATXHeroAndClipConstants sharedInstance];
  v5 = xpc_dictionary_create(0, 0, 0);
  v6 = *MEMORY[0x277D86250];
  [v4 heroAppPredictionExpirationInterval];
  xpc_dictionary_set_int64(v5, v6, v7);
  xpc_dictionary_set_int64(v5, *MEMORY[0x277D86270], 60);
  xpc_dictionary_set_BOOL(v5, *MEMORY[0x277D86230], 1);
  xpc_dictionary_set_BOOL(v5, *MEMORY[0x277D86360], 0);
  xpc_dictionary_set_string(v5, *MEMORY[0x277D86340], *MEMORY[0x277D86350]);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __31__ATXHeroDataServer__setExpiry__block_invoke;
  handler[3] = &unk_278598500;
  handler[4] = self;
  xpc_activity_register("com.apple.duetexpertd.expire-hero", v5, handler);
}

void __31__ATXHeroDataServer__setExpiry__block_invoke(uint64_t a1, xpc_activity_t activity)
{
  if (xpc_activity_get_state(activity) == 2)
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 64);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __31__ATXHeroDataServer__setExpiry__block_invoke_2;
    block[3] = &unk_278596BB8;
    block[4] = v3;
    dispatch_sync(v4, block);
  }
}

void __31__ATXHeroDataServer__setExpiry__block_invoke_2(uint64_t a1)
{
  v2 = __atxlog_handle_hero(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, v2, OS_LOG_TYPE_DEFAULT, "Expiring hero apps since time interval has passed", buf, 2u);
  }

  v3 = *(a1 + 32);
  v4 = objc_opt_new();
  [v3 _donateHeroAppsToHeroAppManager:v4];

  v5 = *(a1 + 32);
  v6 = objc_opt_new();
  [v5 _donateAppClipsToHeroClipManager:v6];

  v7 = *(a1 + 32);
  v8 = objc_opt_new();
  LODWORD(v7) = [v7 _didPredictionsChange:v8];

  if (v7)
  {
    v10 = *(a1 + 32);
    v11 = objc_opt_new();
    [v10 _setPredictionsInDefaults:v11];

    v12 = *(a1 + 32);
    v13 = objc_opt_new();
    [v12 _donatePoiCategoriesToHeroPoiManager:v13];
  }

  else
  {
    v13 = __atxlog_handle_hero(v9);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&dword_2263AA000, v13, OS_LOG_TYPE_DEFAULT, "Not sending POI categories to blending, since nil predictions were recently donated.", v14, 2u);
    }
  }
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = *MEMORY[0x277D13200];
  v7 = [connectionCopy valueForEntitlement:*MEMORY[0x277D13200]];
  v8 = v7;
  if (v7 && (v7 = objc_opt_respondsToSelector(), (v7 & 1) != 0) && (v7 = [v8 BOOLValue], (v7 & 1) != 0))
  {
    v9 = ATXHeroDataXPCInterface();
    [connectionCopy setExportedInterface:v9];

    [connectionCopy setExportedObject:self];
    [connectionCopy setInterruptionHandler:&__block_literal_global_171];
    [connectionCopy setInvalidationHandler:&__block_literal_global_49_3];
    [connectionCopy resume];
    v10 = 1;
  }

  else
  {
    v11 = __atxlog_handle_hero(v7);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(ATXNotificationDigestRankerServer *)connectionCopy listener:v6 shouldAcceptNewConnection:v11];
    }

    v10 = 0;
  }

  return v10;
}

void __56__ATXHeroDataServer_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v1 = __atxlog_handle_hero(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_2263AA000, v1, OS_LOG_TYPE_DEFAULT, "Unexpected interruption on App Prediction ATXServer XPC interface", v2, 2u);
  }
}

void __56__ATXHeroDataServer_listener_shouldAcceptNewConnection___block_invoke_47(uint64_t a1)
{
  v1 = __atxlog_handle_hero(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_2263AA000, v1, OS_LOG_TYPE_DEFAULT, "Connection invalidated on App Prediction ATXServer XPC interface. Client went away.", v2, 2u);
  }
}

@end