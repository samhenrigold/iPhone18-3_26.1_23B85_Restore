@interface NCManager
+ (BOOL)_showsElevationAccuracy;
+ (BOOL)showingIdealizedData;
+ (NCManager)sharedAppManager;
+ (NCManager)sharedComplicationManager;
- (BOOL)isTrueNorthError:(id)error;
- (NCAltitude)altitude;
- (id)_newAltimeter;
- (id)init:(BOOL)init;
- (id)startAltimeterUpdateWithHandler:(id)handler;
- (id)startMotionUpdatesWithUpdateRate:(int64_t)rate updateHandler:(id)handler calibrationHandler:(id)calibrationHandler;
- (void)_initLocationDelegate;
- (void)_queue_altimeterError:(id)error;
- (void)_queue_altimeterUpdate;
- (void)_queue_altimeterUpdate:(id)update;
- (void)_startAbsoluteAltimeterUpdate;
- (void)_updateAltimeterRunning;
- (void)_updateRunning;
- (void)dealloc;
- (void)end1HzMode:(id)mode;
- (void)fetchGroundAltitudeNearCurrentLocationWithCompletion:(id)completion;
- (void)fetchGroundAltitudeNearLocation:(id)location completion:(id)completion;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setPaused:(BOOL)paused;
- (void)setPaused:(BOOL)paused forAltimeterToken:(id)token;
- (void)setWaypointComplicationIsActive:(BOOL)active;
- (void)start1HzMode:(id)mode;
- (void)startMotionActivityUpdatesWithHandler:(id)handler;
- (void)stopAltimeterUpdateForToken:(id)token;
- (void)stopMotionActivityUpdates;
@end

@implementation NCManager

- (id)startMotionUpdatesWithUpdateRate:(int64_t)rate updateHandler:(id)handler calibrationHandler:(id)calibrationHandler
{
  calibrationHandlerCopy = calibrationHandler;
  handlerCopy = handler;
  v10 = objc_msgSend_idealizedHeading(NCHeading, v8, v9);
  v13 = objc_msgSend_idealizedIncline(NCIncline, v11, v12);
  (*(handler + 2))(handlerCopy, v10, v13);

  if (calibrationHandlerCopy)
  {
    calibrationHandlerCopy[2](calibrationHandlerCopy, 1, 0);
  }

  return 0;
}

- (void)startMotionActivityUpdatesWithHandler:(id)handler
{
  handlerCopy = handler;
  v8 = objc_msgSend_locationDelegate(self, v5, v6);
  objc_msgSend_startMotionActivityUpdatesWithHandler_(v8, v7, handlerCopy);
}

- (void)stopMotionActivityUpdates
{
  v5 = objc_msgSend_locationDelegate(self, a2, v2);
  objc_msgSend_stopMotionActivityUpdates(v5, v3, v4);
}

+ (NCManager)sharedAppManager
{
  if (qword_27E1C5020 != -1)
  {
    sub_23BD65C90();
  }

  v3 = qword_27E1C5018;

  return v3;
}

+ (NCManager)sharedComplicationManager
{
  if (qword_27E1C5030 != -1)
  {
    sub_23BD65CA4();
  }

  v3 = qword_27E1C5028;

  return v3;
}

+ (BOOL)showingIdealizedData
{
  if (qword_27E1C5040 != -1)
  {
    sub_23BD65CB8();
  }

  return byte_27E1C5038;
}

- (id)init:(BOOL)init
{
  v47.receiver = self;
  v47.super_class = NCManager;
  v4 = [(NCManager *)&v47 init];
  v5 = v4;
  if (v4)
  {
    v4->_complicationStyle = init;
    v4->_externallyPaused = 1;
    v6 = objc_alloc(MEMORY[0x277CBEBD0]);
    v8 = objc_msgSend_initWithSuiteName_(v6, v7, @"com.apple.compass");
    v9 = *(v5 + 56);
    *(v5 + 56) = v8;

    objc_msgSend_addObserver_forKeyPath_options_context_(*(v5 + 56), v10, v5, @"Bearing", 5, &off_278B94378);
    objc_msgSend_addObserver_forKeyPath_options_context_(*(v5 + 56), v11, v5, @"TargetedWaypointUUID", 5, &off_278B94380);
    objc_msgSend_addObserver_forKeyPath_options_context_(*(v5 + 56), v12, v5, @"TargetedViewUsageTimestamp", 5, &off_278B94388);
    v15 = objc_msgSend_idealizedHeading(NCHeading, v13, v14);
    v16 = *(v5 + 80);
    *(v5 + 80) = v15;

    v19 = objc_msgSend_idealizedIncline(NCIncline, v17, v18);
    v20 = *(v5 + 88);
    *(v5 + 88) = v19;

    *(v5 + 72) = 1;
    if (supportAbsoluteAltimeterFeatures(v21, v22))
    {
      v25 = objc_msgSend__newAltimeter(v5, v23, v24);
      v26 = *(v5 + 16);
      *(v5 + 16) = v25;

      if (objc_msgSend_showingIdealizedData(NCManager, v27, v28))
      {
        v31 = objc_msgSend_idealizedAltitude(NCAltitude, v29, v30);
        objc_msgSend_setAltitude_(v5, v32, v31);
      }

      v33 = objc_opt_new();
      v34 = *(v5 + 32);
      *(v5 + 32) = v33;

      v35 = objc_opt_new();
      v36 = *(v5 + 40);
      *(v5 + 40) = v35;
    }

    objc_msgSend__initLocationDelegate(v5, v23, v24);
    v37 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v38 = *(v5 + 64);
    *(v5 + 64) = v37;

    if ((*(v5 + 8) & 1) == 0 && objc_msgSend_isRunningInStoreDemoMode(MEMORY[0x277D75128], v39, v40))
    {
      v43 = objc_msgSend_sharedAppManager(NCWaypointManager, v41, v42);
      objc_msgSend_resetCompassWaypointsInDemoMode(v43, v44, v45);
    }
  }

  return v5;
}

- (void)_initLocationDelegate
{
  v3 = objc_alloc_init(NCLocationUpdateDemoDelegate);
  locationDelegate = self->_locationDelegate;
  self->_locationDelegate = &v3->super;

  MEMORY[0x2821F96F8](v3, locationDelegate);
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = NCManager;
  [(NCManager *)&v2 dealloc];
}

- (id)startAltimeterUpdateWithHandler:(id)handler
{
  handlerCopy = handler;
  if ((objc_msgSend_isAbsoluteAltimeterAvailable(self, v5, v6) & 1) == 0)
  {
    v15 = NCLogForCategory(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_23BD65CCC();
    }

    v17 = objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x277CBEAD8], v16, @"altimeterNotAvailable", @"CMAltimeter is not initialized", 0);
    objc_exception_throw(v17);
  }

  v8 = objc_msgSend_tokenWithValue_(NCManagerAltimeterToken, v7, self->_altimeterToken);
  ++self->_altimeterToken;
  v9 = MEMORY[0x23EEBBDF0](handlerCopy);
  objc_msgSend_setObject_forKeyedSubscript_(self->_altimeterUpdateHandlers, v10, v9, v8);

  objc_msgSend__updateAltimeterRunning(self, v11, v12);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_23BD3B3C0;
  v18[3] = &unk_278B94398;
  v18[4] = self;
  v19 = handlerCopy;
  v13 = handlerCopy;
  dispatch_async(MEMORY[0x277D85CD0], v18);

  return v8;
}

- (void)stopAltimeterUpdateForToken:(id)token
{
  altimeterUpdateHandlers = self->_altimeterUpdateHandlers;
  tokenCopy = token;
  objc_msgSend_removeObjectForKey_(altimeterUpdateHandlers, v6, tokenCopy);
  objc_msgSend_removeObject_(self->_altimeterPausedTokens, v7, tokenCopy);

  objc_msgSend__updateAltimeterRunning(self, v8, v9);
}

- (NCAltitude)altitude
{
  if (supportAbsoluteAltimeterFeatures(self, a2))
  {
    v5 = self->_altitude;
  }

  else
  {
    v5 = objc_msgSend_altitude(self->_locationDelegate, v3, v4);
  }

  return v5;
}

- (void)setPaused:(BOOL)paused
{
  v9 = *MEMORY[0x277D85DE8];
  if (self->_externallyPaused != paused)
  {
    pausedCopy = paused;
    v5 = NCLogForCategory(1uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8[0] = 67109120;
      v8[1] = pausedCopy;
      _os_log_impl(&dword_23BD26000, v5, OS_LOG_TYPE_DEFAULT, "paused changed to: %d", v8, 8u);
    }

    self->_externallyPaused = pausedCopy;
    objc_msgSend__updateRunning(self, v6, v7);
  }
}

- (void)setWaypointComplicationIsActive:(BOOL)active
{
  if (self->_complicationStyle)
  {
    activeCopy = active;
    if ((objc_msgSend_isRunningInStoreDemoMode(MEMORY[0x277D75128], a2, active) & 1) == 0)
    {
      locationDelegate = self->_locationDelegate;

      MEMORY[0x2821F9670](locationDelegate, sel_setWaypointComplicationActive_, activeCopy);
    }
  }
}

- (void)setPaused:(BOOL)paused forAltimeterToken:(id)token
{
  pausedCopy = paused;
  tokenCopy = token;
  altimeterPausedTokens = self->_altimeterPausedTokens;
  v15 = tokenCopy;
  if (pausedCopy)
  {
    objc_msgSend_addObject_(altimeterPausedTokens, tokenCopy, tokenCopy);
  }

  else if (objc_msgSend_containsObject_(altimeterPausedTokens, tokenCopy, tokenCopy))
  {
    objc_msgSend_removeObject_(self->_altimeterPausedTokens, v8, v15);
    v11 = objc_msgSend_objectForKeyedSubscript_(self->_altimeterUpdateHandlers, v10, v15);
    v14 = objc_msgSend_altitude(self, v12, v13);
    (v11)[2](v11, v14);
  }

  objc_msgSend__updateAltimeterRunning(self, v8, v9);
}

- (void)_updateRunning
{
  if (supportAbsoluteAltimeterFeatures(self, a2))
  {

    objc_msgSend__updateAltimeterRunning(self, v3, v4);
  }
}

- (id)_newAltimeter
{
  if (!objc_msgSend_isAbsoluteAltitudeAvailable(MEMORY[0x277CC1C18], a2, v2) || objc_msgSend_authorizationStatus(MEMORY[0x277CC1C18], v3, v4) != 3)
  {
    if (objc_msgSend_isAbsoluteAltitudeAvailable(MEMORY[0x277CC1C18], v3, v4))
    {
      if (objc_msgSend_authorizationStatus(MEMORY[0x277CC1C18], v7, v8) == 3)
      {
        return 0;
      }

      v9 = NCLogForCategory(0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_23BD65D34(v9, v10, v11);
      }
    }

    else
    {
      v9 = NCLogForCategory(0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_23BD65D00();
      }
    }

    return 0;
  }

  v5 = NCLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_23BD65DC4();
  }

  return objc_alloc_init(MEMORY[0x277CC1C18]);
}

- (void)_updateAltimeterRunning
{
  v29 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_showingIdealizedData(NCManager, a2, v2))
  {

    objc_msgSend__queue_altimeterUpdate(self, v4, v5);
  }

  else
  {
    v23 = 0;
    v24[0] = &v23;
    v24[1] = 0x2020000000;
    v24[2] = 0;
    v6 = objc_msgSend_allKeys(self->_altimeterUpdateHandlers, v4, v5);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = sub_23BD3BAC0;
    v22[3] = &unk_278B943C0;
    v22[4] = self;
    v22[5] = &v23;
    objc_msgSend_enumerateObjectsUsingBlock_(v6, v7, v22);

    v8 = NCLogForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_23BD65E04(v24, v8, v9, v10, v11, v12, v13, v14);
    }

    if (self->_runningAltimeter)
    {
      if (self->_externallyPaused || !*(v24[0] + 24))
      {
        v17 = NCLogForCategory(0);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          externallyPaused = self->_externallyPaused;
          v19 = *(v24[0] + 24);
          *buf = 134218240;
          v26 = externallyPaused;
          v27 = 2048;
          v28 = v19;
          _os_log_impl(&dword_23BD26000, v17, OS_LOG_TYPE_INFO, "stopping absolute altimeter updates. _externallyPaused: %lu, currentNumberOfClients: %lu", buf, 0x16u);
        }

        self->_runningAltimeter = 0;
        objc_msgSend_stopAbsoluteAltitudeUpdates(self->_altimeterManager, v20, v21);
      }
    }

    else if (!self->_externallyPaused && *(v24[0] + 24))
    {
      self->_runningAltimeter = 1;
      objc_msgSend__startAbsoluteAltimeterUpdate(self, v15, v16);
    }

    _Block_object_dispose(&v23, 8);
  }
}

- (void)_startAbsoluteAltimeterUpdate
{
  objc_initWeak(&location, self);
  v3 = NCLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23BD26000, v3, OS_LOG_TYPE_DEFAULT, "starting absolute altimeter updates", buf, 2u);
  }

  altimeterManager = self->_altimeterManager;
  v7 = objc_msgSend_mainQueue(MEMORY[0x277CCABD8], v5, v6);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_23BD3BC44;
  v9[3] = &unk_278B943E8;
  objc_copyWeak(&v10, &location);
  v9[4] = self;
  objc_msgSend_startAbsoluteAltitudeUpdatesToQueue_withHandler_(altimeterManager, v8, v7, v9);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)_queue_altimeterUpdate:(id)update
{
  updateCopy = update;
  v7 = objc_msgSend_altitude(self, v5, v6);
  objc_msgSend_accuracy(updateCopy, v8, v9);
  if (v11 <= 490.0)
  {
    v13 = objc_msgSend_initAltitude_(NCAltitude, v10, updateCopy);
    objc_msgSend_setAltitude_(self, v17, v13);
  }

  else
  {
    v12 = NCLogForCategory(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *v26 = 0;
      _os_log_impl(&dword_23BD26000, v12, OS_LOG_TYPE_INFO, "altitude data is not available. reset the altitude and display dash in UI.", v26, 2u);
    }

    v13 = 0;
    objc_msgSend_setAltitude_(self, v14, 0);
  }

  if (v13 | v7)
  {
    v18 = !v7 && v13 != 0;
    v19 = v7 && v13 == 0;
    if (v19 || v18)
    {
      goto LABEL_18;
    }

    objc_msgSend_altitude(v7, v15, v16);
    v21 = v20;
    objc_msgSend_altitude(v13, v22, v23);
    v25 = v21 - v24;
    if (v25 < 0.0)
    {
      v25 = -v25;
    }

    if (v25 > 2.22044605e-16)
    {
LABEL_18:
      objc_msgSend__queue_altimeterUpdate(self, v15, v16);
    }
  }
}

- (void)_queue_altimeterUpdate
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23BD3BE90;
  block[3] = &unk_278B93FB0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)_queue_altimeterError:(id)error
{
  errorCopy = error;
  v4 = NCLogForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_23BD65E78();
  }

  v7 = objc_msgSend_domain(errorCopy, v5, v6);
  v8 = *MEMORY[0x277CC1BC0];

  if (v7 == v8 && (objc_msgSend_code(errorCopy, v9, v10) == 109 || objc_msgSend_code(errorCopy, v11, v12) == 110 || objc_msgSend_code(errorCopy, v13, v14) == 111 || objc_msgSend_code(errorCopy, v15, v16) == 104 || objc_msgSend_code(errorCopy, v17, v18) == 106 || objc_msgSend_code(errorCopy, v19, v20) == 105))
  {
    v21 = NCLogForCategory(0);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_23BD65EEC();
    }
  }
}

- (BOOL)isTrueNorthError:(id)error
{
  errorCopy = error;
  if (errorCopy)
  {
    if (self->_usesTrueNorth)
    {
      isLocationServiceOff = objc_msgSend_isLocationServiceOff(self->_locationDelegate, v4, v5);
    }

    else
    {
      isLocationServiceOff = 0;
    }

    v8 = (objc_msgSend_code(errorCopy, v4, v5) == 102) & isLocationServiceOff;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  isEqualToString = change;
  v10 = isEqualToString;
  if (context == &off_278B94378)
  {
    v25 = isEqualToString;
    isEqualToString = objc_msgSend_isEqualToString_(path, isEqualToString, @"Bearing");
    v10 = v25;
    if (isEqualToString)
    {
      v11 = objc_msgSend_objectForKeyedSubscript_(v25, v25, *MEMORY[0x277CCA2F0]);
      v14 = objc_msgSend_null(MEMORY[0x277CBEB68], v12, v13);
      isEqual = objc_msgSend_isEqual_(v11, v15, v14);

      if (isEqual)
      {
        v18 = 0;
        objc_msgSend_setBearing_(self, v17, 0);
      }

      else
      {
        v19 = [NCBearing alloc];
        objc_msgSend_doubleValue(v11, v20, v21);
        v18 = objc_msgSend_initWithBearing_(v19, v22, v23);
        objc_msgSend_setBearing_(self, v24, v18);
      }

      v10 = v25;
    }
  }

  MEMORY[0x2821F96F8](isEqualToString, v10);
}

+ (BOOL)_showsElevationAccuracy
{
  if (qword_27E1C5050 != -1)
  {
    sub_23BD65F20();
  }

  return byte_27E1C5048;
}

- (void)start1HzMode:(id)mode
{
  v23 = *MEMORY[0x277D85DE8];
  modeCopy = mode;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v6 = objc_msgSend_containsObject_(self->_current1HzModes, v5, modeCopy);
  v7 = NCLogForCategory(3uLL);
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_23BD65F34();
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = objc_msgSend_allObjects(self->_current1HzModes, v9, v10);
      v13 = objc_msgSend_componentsJoinedByString_(v11, v12, @", ");
      v19 = 138543618;
      v20 = modeCopy;
      v21 = 2114;
      v22 = v13;
      _os_log_impl(&dword_23BD26000, v8, OS_LOG_TYPE_DEFAULT, "Requesting 1Hz location updates for %{public}@. 1Hz update modes before adding incoming mode: [%{public}@].", &v19, 0x16u);
    }

    objc_msgSend_addObject_(self->_current1HzModes, v14, modeCopy);
    v17 = objc_msgSend_count(self->_current1HzModes, v15, v16) != 0;
    objc_msgSend_setForce1Hz_(self->_locationDelegate, v18, v17);
  }
}

- (void)end1HzMode:(id)mode
{
  v22 = *MEMORY[0x277D85DE8];
  modeCopy = mode;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  if (objc_msgSend_containsObject_(self->_current1HzModes, v5, modeCopy))
  {
    objc_msgSend_removeObject_(self->_current1HzModes, v6, modeCopy);
    v7 = NCLogForCategory(3uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_msgSend_allObjects(self->_current1HzModes, v8, v9);
      v12 = objc_msgSend_componentsJoinedByString_(v10, v11, @", ");
      v18 = 138543618;
      v19 = modeCopy;
      v20 = 2114;
      v21 = v12;
      _os_log_impl(&dword_23BD26000, v7, OS_LOG_TYPE_DEFAULT, "Dropping 1Hz location updates for %{public}@. 1Hz update modes after dropping incoming mode: [%{public}@].", &v18, 0x16u);
    }

    v15 = objc_msgSend_count(self->_current1HzModes, v13, v14) != 0;
    objc_msgSend_setForce1Hz_(self->_locationDelegate, v16, v15);
  }

  else
  {
    v17 = NCLogForCategory(3uLL);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      sub_23BD65F9C();
    }
  }
}

- (void)fetchGroundAltitudeNearCurrentLocationWithCompletion:(id)completion
{
  v49 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v7 = objc_msgSend_altitude(self, v5, v6);

  if (v7)
  {
    v10 = NCLogForCategory(7uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = objc_msgSend_altitude(self, v11, v12);
      objc_msgSend_altitudeInMeters(v13, v14, v15);
      v47 = 134217984;
      v48 = v16;
      _os_log_impl(&dword_23BD26000, v10, OS_LOG_TYPE_DEFAULT, "Use altimeter altitude of %f meters for current location.", &v47, 0xCu);
    }

    v17 = MEMORY[0x277CCABB0];
    v20 = objc_msgSend_altitude(self, v18, v19);
    objc_msgSend_altitudeInMeters(v20, v21, v22);
    v25 = objc_msgSend_numberWithDouble_(v17, v23, v24);
    completionCopy[2](completionCopy, v25);
  }

  else
  {
    v26 = objc_msgSend_location(self, v8, v9);
    v29 = objc_msgSend_rawLocation(v26, v27, v28);

    v30 = NCLogForCategory(7uLL);
    v31 = v30;
    if (v29)
    {
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        v34 = objc_msgSend_location(self, v32, v33);
        v37 = objc_msgSend_rawLocation(v34, v35, v36);
        v47 = 134217984;
        v48 = objc_msgSend_hash(v37, v38, v39);
        _os_log_impl(&dword_23BD26000, v31, OS_LOG_TYPE_INFO, "Fetching altitude for current location (%lu).", &v47, 0xCu);
      }

      v42 = objc_msgSend_location(self, v40, v41);
      v45 = objc_msgSend_rawLocation(v42, v43, v44);
      objc_msgSend_fetchGroundAltitudeNearLocation_completion_(self, v46, v45, completionCopy);
    }

    else
    {
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v47) = 0;
        _os_log_impl(&dword_23BD26000, v31, OS_LOG_TYPE_DEFAULT, "Asked to fetch altitude for current location, but we do not have a reading from the altimeter, nor do we have a location fix.", &v47, 2u);
      }

      completionCopy[2](completionCopy, 0);
    }
  }
}

- (void)fetchGroundAltitudeNearLocation:(id)location completion:(id)completion
{
  v33 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  completionCopy = completion;
  objc_msgSend_verticalAccuracy(locationCopy, v8, v9);
  v11 = v10;
  v12 = NCLogForCategory(7uLL);
  v13 = v12;
  if (v11 <= 0.0)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v29 = 134217984;
      v30 = objc_msgSend_hash(locationCopy, v26, v27);
      _os_log_impl(&dword_23BD26000, v13, OS_LOG_TYPE_INFO, "Fetching altitude for waypoint (%lu).", &v29, 0xCu);
    }

    objc_msgSend_fetchGroundAltitudeNearLocation_completion_(self->_locationDelegate, v28, locationCopy, completionCopy);
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v16 = objc_msgSend_hash(locationCopy, v14, v15);
      objc_msgSend_altitude(locationCopy, v17, v18);
      v29 = 134218240;
      v30 = v16;
      v31 = 2048;
      v32 = v19;
      _os_log_impl(&dword_23BD26000, v13, OS_LOG_TYPE_DEFAULT, "CLLocation instance for waypoint (%lu) already contains altitude of %f meters.", &v29, 0x16u);
    }

    v20 = MEMORY[0x277CCABB0];
    objc_msgSend_altitude(locationCopy, v21, v22);
    v25 = objc_msgSend_numberWithDouble_(v20, v23, v24);
    completionCopy[2](completionCopy, v25);

    completionCopy = v25;
  }
}

@end