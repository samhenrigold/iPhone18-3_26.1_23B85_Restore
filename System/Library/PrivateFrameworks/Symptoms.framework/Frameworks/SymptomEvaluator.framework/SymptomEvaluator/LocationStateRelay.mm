@interface LocationStateRelay
+ (LocationStateRelay)sharedInstance;
- (BOOL)authorizedToUseCoreRoutine;
- (BOOL)loadCoreLocation;
- (BOOL)loadCoreRoutine;
- (LocationStateRelay)init;
- (id)mobileWiFiLocationManager;
- (id)rtLOITypeToString:(int64_t)string;
- (int64_t)preflightFrameworks;
- (unint64_t)addPendingLOIBlocks:(id)blocks;
- (void)callPendingLOIBlocksWithCLLocation:(id)location LOI:(id)i andError:(id)error;
- (void)cleanUpPendingLOIBlocks;
- (void)dealloc;
- (void)determineIfLocationOfInterestIsKnownOfType:(int64_t)type queue:(id)queue reply:(id)reply;
- (void)fetchCurrentLocationLOIOnQueue:(id)queue desiredAccuracy:(double)accuracy reply:(id)reply;
- (void)getLocationTechnologyStateForInitialState:(BOOL)state;
- (void)locationManager:(id)manager didFailWithError:(id)error;
- (void)locationManager:(id)manager didUpdateLocations:(id)locations;
- (void)locationManagerDidChangeAuthorization:(id)authorization;
- (void)setGpsInUse:(BOOL)use;
- (void)setLOIUseAuthorized:(BOOL)authorized;
- (void)showLocationArrow;
- (void)unloadFrameworks;
@end

@implementation LocationStateRelay

- (BOOL)loadCoreLocation
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__LocationStateRelay_loadCoreLocation__block_invoke;
  block[3] = &unk_27898A0C8;
  block[4] = self;
  if (loadCoreLocation_pred != -1)
  {
    dispatch_once(&loadCoreLocation_pred, block);
  }

  return loadCoreLocation_loadedCL;
}

+ (LocationStateRelay)sharedInstance
{
  if (sharedInstance_instancePred_0 != -1)
  {
    +[LocationStateRelay sharedInstance];
  }

  v3 = sharedInstance_6;

  return v3;
}

uint64_t __36__LocationStateRelay_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(LocationStateRelay);
  v1 = sharedInstance_6;
  sharedInstance_6 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (LocationStateRelay)init
{
  v11.receiver = self;
  v11.super_class = LocationStateRelay;
  v2 = [(LocationStateRelay *)&v11 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/PrivateFrameworks/MobileWiFi.framework"];
    mobileWiFiBundle = v2->mobileWiFiBundle;
    v2->mobileWiFiBundle = v3;

    locationRequestTimer = v2->locationRequestTimer;
    v2->locationRequestTimer = 0;

    v6 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v7 = dispatch_queue_create("com.apple.symptoms.location.queue", v6);
    internalQueue = v2->_internalQueue;
    v2->_internalQueue = v7;

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, locationTechStatusChanged, @"com.apple.locationd.techstatus", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    [(LocationStateRelay *)v2 getLocationTechnologyStateForInitialState:1];
  }

  return v2;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.locationd.techstatus", 0);
  mobileWiFiLocationManager = self->mobileWiFiLocationManager;
  if (mobileWiFiLocationManager)
  {
    [(CLLocationManager *)mobileWiFiLocationManager setDelegate:0];
  }

  [(LocationStateRelay *)self unloadFrameworks];
  v5.receiver = self;
  v5.super_class = LocationStateRelay;
  [(LocationStateRelay *)&v5 dealloc];
}

- (BOOL)loadCoreRoutine
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__LocationStateRelay_loadCoreRoutine__block_invoke;
  block[3] = &unk_27898A0C8;
  block[4] = self;
  if (loadCoreRoutine_symbolLoadOnce != -1)
  {
    dispatch_once(&loadCoreRoutine_symbolLoadOnce, block);
  }

  return loadCoreRoutine_loadedCR;
}

void __37__LocationStateRelay_loadCoreRoutine__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  *(*(a1 + 32) + 16) = dlopen("/System/Library/PrivateFrameworks/CoreRoutine.framework/CoreRoutine", 6);
  if (*(*(a1 + 32) + 16))
  {
    v2 = objc_alloc_init(objc_getClass("RTRoutineManager"));
    v3 = *(a1 + 32);
    v4 = *(v3 + 24);
    *(v3 + 24) = v2;

    v5 = *(*(a1 + 32) + 24);
    loadCoreRoutine_loadedCR = v5 != 0;
    if (!v5)
    {
      v6 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v9) = 0;
        _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_ERROR, "CoreRoutine routineManager is null.", &v9, 2u);
      }
    }
  }

  else
  {
    v7 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      v8 = v7;
      v9 = 136315138;
      v10 = dlerror();
      _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_ERROR, "CoreRoutine failed to load due to %s\n", &v9, 0xCu);
    }
  }
}

void __38__LocationStateRelay_loadCoreLocation__block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  *(*(a1 + 32) + 8) = dlopen("/System/Library/Frameworks/CoreLocation.framework/CoreLocation", 6);
  if (*(*(a1 + 32) + 8))
  {
    *(*(a1 + 32) + 48) = objc_getClass("CLLocationManager");
    v2 = [MEMORY[0x277CBEB38] dictionary];
    v3 = *(a1 + 32);
    v4 = *(v3 + 56);
    *(v3 + 56) = v2;

    *(*(a1 + 32) + 72) = dlsym(*(*(a1 + 32) + 8), "CLCopyTechnologiesInUse");
    v5 = *(a1 + 32);
    if (*(v5 + 48))
    {
      v6 = *(v5 + 72);
      loadCoreLocation_loadedCL = v6 != 0;
      if (v6)
      {
        v7 = netepochsLogHandle;
        if (!os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }

        LOWORD(v18) = 0;
        v8 = "Successfully loaded CoreLocation";
        v9 = v7;
        v10 = OS_LOG_TYPE_DEFAULT;
        v11 = 2;
LABEL_11:
        _os_log_impl(&dword_23255B000, v9, v10, v8, &v18, v11);
        return;
      }
    }

    else
    {
      loadCoreLocation_loadedCL = 0;
    }

    v14 = netepochsLogHandle;
    if (!os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v15 = *(a1 + 32);
    v16 = *(v15 + 48);
    v17 = *(v15 + 72);
    v18 = 134218240;
    v19 = v16;
    v20 = 2048;
    v21 = v17;
    v8 = "LocationManager (%p) or CopyTechnologiesInUse (%p) is NULL.";
    v9 = v14;
    v10 = OS_LOG_TYPE_ERROR;
    v11 = 22;
    goto LABEL_11;
  }

  v12 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
  {
    v13 = v12;
    v18 = 136315138;
    v19 = dlerror();
    _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_ERROR, "CoreLocation failed to load due to %s\n", &v18, 0xCu);
  }
}

- (id)mobileWiFiLocationManager
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__LocationStateRelay_mobileWiFiLocationManager__block_invoke;
  block[3] = &unk_27898A0C8;
  block[4] = self;
  if (mobileWiFiLocationManager_pred != -1)
  {
    dispatch_once(&mobileWiFiLocationManager_pred, block);
  }

  return self->mobileWiFiLocationManager;
}

void __47__LocationStateRelay_mobileWiFiLocationManager__block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(*(*(a1 + 32) + 48)) initWithEffectiveBundle:*(*(a1 + 32) + 32) delegate:*(a1 + 32) onQueue:*(*(a1 + 32) + 80)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(a1 + 32) + 40))
  {
    v5 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_ERROR, "CoreLocation mobileWiFiLocationManager is nil.", v6, 2u);
    }
  }
}

- (void)unloadFrameworks
{
  coreRoutineDyLibHandle = self->coreRoutineDyLibHandle;
  if (coreRoutineDyLibHandle)
  {
    dlclose(coreRoutineDyLibHandle);
    self->coreRoutineDyLibHandle = 0;
  }

  coreLocationDyLibHandle = self->coreLocationDyLibHandle;
  if (coreLocationDyLibHandle)
  {
    dlclose(coreLocationDyLibHandle);
    self->coreLocationDyLibHandle = 0;
  }
}

- (int64_t)preflightFrameworks
{
  if (![(LocationStateRelay *)self loadCoreLocation])
  {
    v4 = netepochsLogHandle;
    if (!os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      return 45;
    }

    *buf = 0;
    v5 = "loadCoreLocation failed";
LABEL_10:
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_ERROR, v5, buf, 2u);
    return 45;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__LocationStateRelay_preflightFrameworks__block_invoke;
  block[3] = &unk_27898A0C8;
  block[4] = self;
  if (preflightFrameworks_pred != -1)
  {
    dispatch_once(&preflightFrameworks_pred, block);
  }

  if (([(objc_class *)self->CLLocationManagerClassRef locationServicesEnabled]& 1) != 0)
  {
    if ([(LocationStateRelay *)self authorizedToUseCoreRoutine])
    {
      if ([(LocationStateRelay *)self loadCoreRoutine])
      {
        [(LocationStateRelay *)self showLocationArrow];
        [(LocationStateRelay *)self setLOIUseAuthorized:1];
        return 0;
      }

      v4 = netepochsLogHandle;
      if (!os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
      {
        return 45;
      }

      *buf = 0;
      v5 = "loadCoreRoutine failed";
      goto LABEL_10;
    }

    v6 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v7 = "authorizedToUseCoreRoutine is FALSE";
      goto LABEL_16;
    }
  }

  else
  {
    v6 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v7 = "locationServicesEnabled is FALSE";
LABEL_16:
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, v7, buf, 2u);
    }
  }

  [(LocationStateRelay *)self setLOIUseAuthorized:0];
  return 1;
}

void __41__LocationStateRelay_preflightFrameworks__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) mobileWiFiLocationManager];
  [v2 setDelegate:*(a1 + 32)];
}

- (void)locationManagerDidChangeAuthorization:(id)authorization
{
  v7 = *MEMORY[0x277D85DE8];
  preflightFrameworks = [(LocationStateRelay *)self preflightFrameworks];
  v4 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134217984;
    v6 = preflightFrameworks;
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "LOI: locationManagerDidChangeAuthorization err = %ld", &v5, 0xCu);
  }
}

- (void)fetchCurrentLocationLOIOnQueue:(id)queue desiredAccuracy:(double)accuracy reply:(id)reply
{
  queueCopy = queue;
  replyCopy = reply;
  internalQueue = self->_internalQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __75__LocationStateRelay_fetchCurrentLocationLOIOnQueue_desiredAccuracy_reply___block_invoke;
  v13[3] = &unk_27898E808;
  v13[4] = self;
  v14 = queueCopy;
  v15 = replyCopy;
  accuracyCopy = accuracy;
  v11 = replyCopy;
  v12 = queueCopy;
  dispatch_async(internalQueue, v13);
}

void __75__LocationStateRelay_fetchCurrentLocationLOIOnQueue_desiredAccuracy_reply___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) preflightFrameworks];
  if (v2)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __75__LocationStateRelay_fetchCurrentLocationLOIOnQueue_desiredAccuracy_reply___block_invoke_2;
    block[3] = &unk_27898C440;
    v28[1] = v2;
    v3 = v28;
    v4 = *(a1 + 40);
    v28[0] = *(a1 + 48);
    dispatch_async(v4, block);
  }

  else
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __75__LocationStateRelay_fetchCurrentLocationLOIOnQueue_desiredAccuracy_reply___block_invoke_3;
    aBlock[3] = &unk_27898E9F0;
    v25 = *(a1 + 40);
    v26 = *(a1 + 48);
    v5 = _Block_copy(aBlock);
    v6 = [*(a1 + 32) addPendingLOIBlocks:v5];
    v7 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 56);
      *buf = 134218240;
      v30 = v6;
      v31 = 2048;
      v32 = v8;
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_INFO, "Number of pendingLOIBlocks = %lu, desiredAccuracy = %f", buf, 0x16u);
    }

    v3 = &v25;
    v9 = *(*(a1 + 32) + 64);
    v10 = netepochsLogHandle;
    v11 = os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      if (v11)
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEFAULT, "Already has a pending location request.  Resetting location timeout and removing expired requests.", buf, 2u);
      }

      dispatch_source_cancel(*(*(a1 + 32) + 64));
      v12 = *(a1 + 32);
      v13 = *(v12 + 64);
      *(v12 + 64) = 0;

      [*(a1 + 32) cleanUpPendingLOIBlocks];
    }

    else
    {
      if (v11)
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEFAULT, "Requesting location from MobileWiFiLocationManager", buf, 2u);
      }

      v14 = [*(a1 + 32) mobileWiFiLocationManager];
      [v14 setDesiredAccuracy:*(a1 + 56)];

      v15 = [*(a1 + 32) mobileWiFiLocationManager];
      [v15 requestLocation];
    }

    v16 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(*(a1 + 32) + 80));
    v17 = *(a1 + 32);
    v18 = *(v17 + 64);
    *(v17 + 64) = v16;

    v19 = *(*(a1 + 32) + 64);
    v20 = dispatch_time(0, 60000000000);
    dispatch_source_set_timer(v19, v20, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
    v21 = *(a1 + 32);
    v22 = *(v21 + 64);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __75__LocationStateRelay_fetchCurrentLocationLOIOnQueue_desiredAccuracy_reply___block_invoke_18;
    handler[3] = &unk_27898A0C8;
    handler[4] = v21;
    dispatch_source_set_event_handler(v22, handler);
    dispatch_resume(*(*(a1 + 32) + 64));
  }
}

void __75__LocationStateRelay_fetchCurrentLocationLOIOnQueue_desiredAccuracy_reply___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:*(a1 + 40) userInfo:0];
  (*(*(a1 + 32) + 16))();
}

void __75__LocationStateRelay_fetchCurrentLocationLOIOnQueue_desiredAccuracy_reply___block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4)
{
  v32 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = netepochsLogHandle;
  v11 = os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v11)
    {
      v12 = v10;
      [v7 latitude];
      v14 = v13;
      [v7 longitude];
      *buf = 134546177;
      v27 = v14;
      v28 = 2053;
      v29 = v15;
      v30 = 2053;
      v31 = [v7 type];
      _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_DEFAULT, "LOI: location = <%{sensitive}f, %{sensitive}f>, type (as received from CoreRoutine) = %{sensitive}ld", buf, 0x20u);
    }
  }

  else if (v11)
  {
    *buf = 138412290;
    v27 = v9;
    _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEFAULT, "LOI: loi is null with error = %@", buf, 0xCu);
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __75__LocationStateRelay_fetchCurrentLocationLOIOnQueue_desiredAccuracy_reply___block_invoke_16;
  v21[3] = &unk_27898CA50;
  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  v22 = v7;
  v23 = v8;
  v24 = v9;
  v25 = v17;
  v18 = v9;
  v19 = v8;
  v20 = v7;
  dispatch_async(v16, v21);
}

void __75__LocationStateRelay_fetchCurrentLocationLOIOnQueue_desiredAccuracy_reply___block_invoke_18(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = 60;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEFAULT, "Did not receive location from MobileWiFiLocationManager after %d seconds, clearing pending block.", v8, 8u);
  }

  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:60 userInfo:0];
  [v3 callPendingLOIBlocksWithCLLocation:0 LOI:0 andError:v4];

  v5 = *(*(a1 + 32) + 64);
  if (v5)
  {
    dispatch_source_cancel(v5);
    v6 = *(a1 + 32);
    v7 = *(v6 + 64);
    *(v6 + 64) = 0;
  }
}

- (void)determineIfLocationOfInterestIsKnownOfType:(int64_t)type queue:(id)queue reply:(id)reply
{
  queueCopy = queue;
  replyCopy = reply;
  internalQueue = self->_internalQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __77__LocationStateRelay_determineIfLocationOfInterestIsKnownOfType_queue_reply___block_invoke;
  v13[3] = &unk_27898E808;
  v13[4] = self;
  v14 = queueCopy;
  v15 = replyCopy;
  typeCopy = type;
  v11 = replyCopy;
  v12 = queueCopy;
  dispatch_async(internalQueue, v13);
}

void __77__LocationStateRelay_determineIfLocationOfInterestIsKnownOfType_queue_reply___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) preflightFrameworks];
  if (v2)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __77__LocationStateRelay_determineIfLocationOfInterestIsKnownOfType_queue_reply___block_invoke_2;
    block[3] = &unk_27898C440;
    v12 = v2;
    v3 = *(a1 + 40);
    v11 = *(a1 + 48);
    dispatch_async(v3, block);
  }

  v4 = *(a1 + 32);
  v5 = *(v4 + 24);
  v6 = *(a1 + 56);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __77__LocationStateRelay_determineIfLocationOfInterestIsKnownOfType_queue_reply___block_invoke_19;
  v7[3] = &unk_27898EA18;
  v7[4] = v4;
  v9 = v6;
  v8 = *(a1 + 48);
  [v5 fetchLocationsOfInterestOfType:v6 withHandler:v7];
}

uint64_t __77__LocationStateRelay_determineIfLocationOfInterestIsKnownOfType_queue_reply___block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
  {
    v3 = MEMORY[0x277CCA9B8];
    v4 = *MEMORY[0x277CCA5B8];
    v5 = *(a1 + 40);
    v6 = v2;
    v7 = [v3 errorWithDomain:v4 code:v5 userInfo:0];
    v9 = 138412290;
    v10 = v7;
    _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_ERROR, "determineIfLocationOfInterestIsKnownOfType failed with error: %@", &v9, 0xCu);
  }

  return (*(*(a1 + 32) + 16))();
}

void __77__LocationStateRelay_determineIfLocationOfInterestIsKnownOfType_queue_reply___block_invoke_19(void *a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = [v5 count] != 0;
  }

  v8 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v9 = a1[4];
    v10 = a1[6];
    v11 = v8;
    v12 = [v9 rtLOITypeToString:v10];
    v13 = v12;
    v14 = "not known";
    if (v7)
    {
      v14 = "known";
    }

    v15 = 138412546;
    v16 = v12;
    v17 = 2080;
    v18 = v14;
    _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEFAULT, "LOI type %@ is %s", &v15, 0x16u);
  }

  (*(a1[5] + 16))();
}

- (id)rtLOITypeToString:(int64_t)string
{
  if (string > 3)
  {
    return @"<UNKNOWN>";
  }

  else
  {
    return off_27898EAB0[string];
  }
}

- (BOOL)authorizedToUseCoreRoutine
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [(objc_class *)self->CLLocationManagerClassRef authorizationStatusForBundle:self->mobileWiFiBundle];
  v3 = netepochsLogHandle;
  v4 = os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT);
  if (v2 > 1)
  {
    switch(v2)
    {
      case 2:
        if (v4)
        {
          LOWORD(v9[0]) = 0;
          v5 = "CoreLocation Authorization Status for MobileWiFi is kCLAuthorizationStatusDenied";
          goto LABEL_18;
        }

        return v4;
      case 3:
        if (v4)
        {
          LOWORD(v9[0]) = 0;
          _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEFAULT, "CoreLocation Authorization Status for MobileWiFi is kCLAuthorizationStatusAuthorizedAlways", v9, 2u);
        }

        LOBYTE(v4) = 1;
        return v4;
      case 4:
        if (v4)
        {
          LOWORD(v9[0]) = 0;
          v5 = "CoreLocation Authorization Status for MobileWiFi is kCLAuthorizationStatusAuthorizedWhenInUse";
LABEL_18:
          v6 = v3;
          v7 = 2;
LABEL_19:
          _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, v5, v9, v7);
          LOBYTE(v4) = 0;
          return v4;
        }

        return v4;
    }

LABEL_21:
    if (!v4)
    {
      return v4;
    }

    v9[0] = 67109120;
    v9[1] = v2;
    v5 = "CoreLocation Authorization Status for MobileWiFi is unknown status %d";
    v6 = v3;
    v7 = 8;
    goto LABEL_19;
  }

  if (!v2)
  {
    if (v4)
    {
      LOWORD(v9[0]) = 0;
      v5 = "CoreLocation Authorization Status for MobileWiFi is kCLAuthorizationStatusNotDetermined";
      goto LABEL_18;
    }

    return v4;
  }

  if (v2 != 1)
  {
    goto LABEL_21;
  }

  if (v4)
  {
    LOWORD(v9[0]) = 0;
    v5 = "CoreLocation Authorization Status for MobileWiFi is kCLAuthorizationStatusRestricted";
    goto LABEL_18;
  }

  return v4;
}

- (void)showLocationArrow
{
  mobileWiFiLocationManager = [(LocationStateRelay *)self mobileWiFiLocationManager];
  [mobileWiFiLocationManager markAsHavingReceivedLocation];
}

- (unint64_t)addPendingLOIBlocks:(id)blocks
{
  blocksCopy = blocks;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  date = [MEMORY[0x277CBEAA8] date];
  v7 = [blocksCopy copy];
  v8 = _Block_copy(v7);
  [(NSMutableDictionary *)selfCopy->pendingLOIBlocks setObject:v8 forKeyedSubscript:date];

  v9 = [(NSMutableDictionary *)selfCopy->pendingLOIBlocks count];
  objc_sync_exit(selfCopy);

  return v9;
}

- (void)callPendingLOIBlocksWithCLLocation:(id)location LOI:(id)i andError:(id)error
{
  locationCopy = location;
  iCopy = i;
  errorCopy = error;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  pendingLOIBlocks = selfCopy->pendingLOIBlocks;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __70__LocationStateRelay_callPendingLOIBlocksWithCLLocation_LOI_andError___block_invoke;
  v16[3] = &unk_27898EA40;
  v13 = locationCopy;
  v17 = v13;
  v14 = iCopy;
  v18 = v14;
  v15 = errorCopy;
  v19 = v15;
  [(NSMutableDictionary *)pendingLOIBlocks enumerateKeysAndObjectsUsingBlock:v16];
  [(NSMutableDictionary *)selfCopy->pendingLOIBlocks removeAllObjects];

  objc_sync_exit(selfCopy);
}

void __70__LocationStateRelay_callPendingLOIBlocksWithCLLocation_LOI_andError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = [v7 timestamp];
    [v8 timeIntervalSinceDate:v5];
    v10 = v9;

    v11 = netepochsLogHandle;
    v12 = os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT);
    if (v10 >= 60.0)
    {
      if (v12)
      {
        v16 = *(a1 + 32);
        v17 = v11;
        v18 = [v16 timestamp];
        v19 = [*(a1 + 32) timestamp];
        [v19 timeIntervalSinceDate:v5];
        v22 = 138413058;
        v23 = v5;
        v24 = 2112;
        v25 = v18;
        v26 = 2048;
        v27 = v20;
        v28 = 1024;
        v29 = 60;
        _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_DEFAULT, "Location requested at %@ but the received location was determined at %@ (%.4f > %d limit).", &v22, 0x26u);
      }

      v21 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:60 userInfo:0];
      (*(v6 + 2))(v6, 0, 0, v21);
    }

    else
    {
      if (v12)
      {
        v13 = *(a1 + 32);
        v14 = v11;
        v15 = [v13 timestamp];
        v22 = 138412546;
        v23 = v5;
        v24 = 2112;
        v25 = v15;
        _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_DEFAULT, "Replying LOI for location requested at %@ (location determined at %@)", &v22, 0x16u);
      }

      (*(v6 + 2))(v6, *(a1 + 40), *(a1 + 32), *(a1 + 48));
    }
  }

  else
  {
    (*(v6 + 2))(v6, 0, 0, *(a1 + 48));
  }
}

- (void)cleanUpPendingLOIBlocks
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  date = [MEMORY[0x277CBEAA8] date];
  array = [MEMORY[0x277CBEB18] array];
  pendingLOIBlocks = selfCopy->pendingLOIBlocks;
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __45__LocationStateRelay_cleanUpPendingLOIBlocks__block_invoke;
  v11 = &unk_27898EA68;
  v6 = date;
  v12 = v6;
  v7 = array;
  v13 = v7;
  [(NSMutableDictionary *)pendingLOIBlocks enumerateKeysAndObjectsUsingBlock:&v8];
  [(NSMutableDictionary *)selfCopy->pendingLOIBlocks removeObjectsForKeys:v7, v8, v9, v10, v11];

  objc_sync_exit(selfCopy);
}

void __45__LocationStateRelay_cleanUpPendingLOIBlocks__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) timeIntervalSinceDate:v5];
  if (v7 > 60.0)
  {
    v8 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v11 = 138412802;
      v12 = v5;
      v13 = 2112;
      v14 = v9;
      v15 = 1024;
      v16 = 60;
      _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEFAULT, "Location requested at %@ but LocationStateRelay has not received a location at %@ (> %d seconds limit).", &v11, 0x1Cu);
    }

    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:60 userInfo:0];
    (*(v6 + 2))(v6, 0, 0, v10);

    [*(a1 + 40) addObject:v5];
  }
}

- (void)locationManager:(id)manager didUpdateLocations:(id)locations
{
  managerCopy = manager;
  locationsCopy = locations;
  locationRequestTimer = self->locationRequestTimer;
  if (locationRequestTimer)
  {
    dispatch_source_cancel(locationRequestTimer);
    v9 = self->locationRequestTimer;
    self->locationRequestTimer = 0;
  }

  if (locationsCopy && [locationsCopy count])
  {
    v10 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEFAULT, "Just marked MobileWiFi as having received location", buf, 2u);
    }

    lastObject = [locationsCopy lastObject];
    [lastObject horizontalAccuracy];
    if (v12 <= 250.0)
    {
      routineManager = self->routineManager;
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __57__LocationStateRelay_locationManager_didUpdateLocations___block_invoke;
      v14[3] = &unk_27898EA90;
      v14[4] = self;
      v15 = lastObject;
      [(RTRoutineManager *)routineManager fetchLocationOfInterestAtLocation:v15 withHandler:v14];
    }

    else
    {
      [(LocationStateRelay *)self callPendingLOIBlocksWithCLLocation:lastObject LOI:0 andError:0];
    }
  }
}

- (void)locationManager:(id)manager didFailWithError:(id)error
{
  v13 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  errorCopy = error;
  v8 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
  {
    v11 = 138412290;
    v12 = errorCopy;
    _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_ERROR, "Location request failed with error: %@", &v11, 0xCu);
  }

  locationRequestTimer = self->locationRequestTimer;
  if (locationRequestTimer)
  {
    dispatch_source_cancel(locationRequestTimer);
    v10 = self->locationRequestTimer;
    self->locationRequestTimer = 0;
  }

  [(LocationStateRelay *)self callPendingLOIBlocksWithCLLocation:0 LOI:0 andError:errorCopy];
}

- (void)getLocationTechnologyStateForInitialState:(BOOL)state
{
  if ([(LocationStateRelay *)self loadCoreLocation]&& self->clCopyTechnologiesInUseFunc)
  {
    internalQueue = self->_internalQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64__LocationStateRelay_getLocationTechnologyStateForInitialState___block_invoke;
    block[3] = &unk_27898A3A0;
    block[4] = self;
    stateCopy = state;
    dispatch_async(internalQueue, block);
  }

  else
  {
    v6 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_ERROR, "GPS CLCopyTechnologiesInUse is not loaded", v7, 2u);
    }

    [(LocationStateRelay *)self setGpsInUse:0];
  }
}

void __64__LocationStateRelay_getLocationTechnologyStateForInitialState___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = (*(*(a1 + 32) + 72))();
  if (v2)
  {
    v3 = v2;
    v4 = ([v2 containsObject:&unk_2847EFB48] & 1) != 0 || objc_msgSend(v3, "containsObject:", &unk_2847EFB60);
  }

  else
  {
    v5 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v8) = 0;
      _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_ERROR, "Unable to get GPS cfTechnologiesInUse", &v8, 2u);
    }

    v4 = 0;
  }

  [*(a1 + 32) setGpsInUse:v4];
  if (*(a1 + 40) == 1)
  {
    v6 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v7 = " NOT";
      if (v4)
      {
        v7 = "";
      }

      v8 = 136315138;
      v9 = v7;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, "GPS (baseline) is initially%s in use", &v8, 0xCu);
    }
  }
}

- (void)setGpsInUse:(BOOL)use
{
  v11 = *MEMORY[0x277D85DE8];
  if (self->_gpsInUse != use)
  {
    [(LocationStateRelay *)self willChangeValueForKey:@"gpsInUse"];
    self->_gpsInUse = use;
    [(LocationStateRelay *)self didChangeValueForKey:@"gpsInUse"];
    v5 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_INFO))
    {
      v6 = v5;
      gpsInUse = [(LocationStateRelay *)self gpsInUse];
      v8 = " NOT";
      if (gpsInUse)
      {
        v8 = "";
      }

      v9 = 136315138;
      v10 = v8;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_INFO, "GPS is%s in use", &v9, 0xCu);
    }
  }
}

- (void)setLOIUseAuthorized:(BOOL)authorized
{
  if (self->_LOIUseAuthorized != authorized)
  {
    [(LocationStateRelay *)self willChangeValueForKey:@"LOIUseAuthorized"];
    self->_LOIUseAuthorized = authorized;

    [(LocationStateRelay *)self didChangeValueForKey:@"LOIUseAuthorized"];
  }
}

@end