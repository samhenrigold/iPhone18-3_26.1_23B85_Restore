@interface NTKLeghornCircularDataSource
+ (double)_visibleHeadingChangeForDevice:(id)device;
+ (id)_waypointsDataSource;
+ (id)sharedInstance;
+ (id)sharedWaypointsDataSource;
- (NTKLeghornCircularDataSource)init;
- (NTKLeghornCircularDataSource)initWithDevice:(id)device;
- (double)value;
- (id)updateHandler;
- (void)_startClockTimer;
- (void)_stopClockTimer;
- (void)setUpdateMode:(unint64_t)mode;
- (void)start;
- (void)stop;
@end

@implementation NTKLeghornCircularDataSource

+ (double)_visibleHeadingChangeForDevice:(id)device
{
  deviceCopy = device;
  objc_msgSend_screenBounds(deviceCopy, v4, v5);
  v7 = v6;
  objc_msgSend_screenScale(deviceCopy, v8, v9);
  v11 = v10;

  return 1.0 / (v11 + v11) / (v7 * 0.5 * 6.28318531 / 360.0);
}

- (NTKLeghornCircularDataSource)initWithDevice:(id)device
{
  deviceCopy = device;
  v25.receiver = self;
  v25.super_class = NTKLeghornCircularDataSource;
  v5 = [(NTKLeghornCircularDataSource *)&v25 init];
  if (v5)
  {
    v6 = objc_opt_new();
    compass = v5->_compass;
    v5->_compass = v6;

    v8 = objc_opt_new();
    seconds = v5->_seconds;
    v5->_seconds = v8;

    v10 = objc_opt_class();
    v13 = objc_msgSend_sharedWaypointsDataSource(v10, v11, v12);
    waypoints = v5->_waypoints;
    v5->_waypoints = v13;

    v17 = objc_msgSend_sharedInstance(NTKLeghornLocationDataSource, v15, v16);
    location = v5->_location;
    v5->_location = v17;

    clockTimerToken = v5->_clockTimerToken;
    v5->_clockTimerToken = 0;

    objc_msgSend_setUpdateMode_(v5, v20, 2);
    v21 = objc_opt_class();
    objc_msgSend__visibleHeadingChangeForDevice_(v21, v22, deviceCopy);
    v5->_visibleHeadingChange = v23;
  }

  return v5;
}

- (NTKLeghornCircularDataSource)init
{
  v4 = objc_msgSend_currentDevice(MEMORY[0x277CBBAE8], a2, v2);
  v6 = objc_msgSend_initWithDevice_(self, v5, v4);

  return v6;
}

- (void)_stopClockTimer
{
  if (self->_clockTimerToken)
  {
    v4 = objc_msgSend_sharedInstance(MEMORY[0x277CBB700], a2, v2);
    objc_msgSend_stopUpdatesForToken_(v4, v5, self->_clockTimerToken);

    clockTimerToken = self->_clockTimerToken;
    self->_clockTimerToken = 0;
  }
}

- (void)_startClockTimer
{
  updated = objc_msgSend_updateMode(self, a2, v2);
  if (updated > 2)
  {
    v6 = 0;
    v7 = 0;
    v5 = 4;
  }

  else
  {
    v5 = qword_23BEED978[updated];
    v6 = qword_23BEED990[updated];
    v7 = qword_23BEED9A8[updated];
  }

  objc_initWeak(&location, self);
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x2020000000;
  v10 = objc_msgSend_compass(self, v8, v9);
  objc_msgSend_heading(v10, v11, v12);
  v14 = v13;

  v24[3] = v14;
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2020000000;
  v23[3] = 0;
  v17 = objc_msgSend_sharedInstance(MEMORY[0x277CBB700], v15, v16);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_23BEDF204;
  v21[3] = &unk_278BA1B70;
  objc_copyWeak(v22, &location);
  v21[5] = v24;
  v21[6] = v23;
  v22[1] = 2;
  v22[2] = v5;
  v21[4] = self;
  v22[3] = v7;
  v19 = objc_msgSend_startUpdatesWithUpdateFrequency_withHandler_identificationLog_(v17, v18, v6, v21, &unk_284EA8C28);
  clockTimerToken = self->_clockTimerToken;
  self->_clockTimerToken = v19;

  objc_destroyWeak(v22);
  _Block_object_dispose(v23, 8);
  _Block_object_dispose(v24, 8);
  objc_destroyWeak(&location);
}

+ (id)sharedInstance
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  WeakRetained = objc_loadWeakRetained(&qword_27E1DF638);
  if (!WeakRetained)
  {
    WeakRetained = objc_opt_new();
    objc_storeWeak(&qword_27E1DF638, WeakRetained);
  }

  objc_sync_exit(selfCopy);

  return WeakRetained;
}

+ (id)_waypointsDataSource
{
  if (objc_msgSend_isRunningInStoreDemoMode(MEMORY[0x277D75128], a2, v2))
  {
    v5 = [NTKLeghornDemoPOIDataSource alloc];
    v7 = objc_msgSend_initWithDataSet_(v5, v6, NTKLeghornPOIDataSetInStoreDemo);
  }

  else
  {
    v7 = objc_msgSend_sharedInstance(NTKLeghornWaypointDataSource, v3, v4);
  }

  return v7;
}

+ (id)sharedWaypointsDataSource
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  WeakRetained = objc_loadWeakRetained(&qword_27E1DF640);
  if (!WeakRetained)
  {
    WeakRetained = objc_msgSend__waypointsDataSource(selfCopy, v3, v4);
    objc_storeWeak(&qword_27E1DF640, WeakRetained);
  }

  objc_sync_exit(selfCopy);

  return WeakRetained;
}

- (double)value
{
  v3 = objc_msgSend_compass(self, a2, v2);
  objc_msgSend_heading(v3, v4, v5);
  v7 = v6;

  return v7;
}

- (void)stop
{
  v13.receiver = self;
  v13.super_class = NTKLeghornCircularDataSource;
  [(NTKFoghornDataSource *)&v13 stop];
  objc_msgSend__stopClockTimer(self, v3, v4);
  objc_msgSend_stop(self->_compass, v5, v6);
  objc_msgSend_stop(self->_seconds, v7, v8);
  objc_msgSend_stop(self->_waypoints, v9, v10);
  objc_msgSend_stop(self->_location, v11, v12);
}

- (void)start
{
  v13.receiver = self;
  v13.super_class = NTKLeghornCircularDataSource;
  [(NTKFoghornDataSource *)&v13 start];
  objc_msgSend_start(self->_compass, v3, v4);
  objc_msgSend_start(self->_seconds, v5, v6);
  objc_msgSend_start(self->_waypoints, v7, v8);
  objc_msgSend_start(self->_location, v9, v10);
  objc_msgSend__startClockTimer(self, v11, v12);
}

- (id)updateHandler
{
  v4.receiver = self;
  v4.super_class = NTKLeghornCircularDataSource;
  updateHandler = [(NTKFoghornDataSource *)&v4 updateHandler];

  return updateHandler;
}

- (void)setUpdateMode:(unint64_t)mode
{
  updated = objc_msgSend_updateMode(self, a2, mode);
  v13.receiver = self;
  v13.super_class = NTKLeghornCircularDataSource;
  [(NTKFoghornDataSource *)&v13 setUpdateMode:mode];
  objc_msgSend_setUpdateMode_(self->_seconds, v6, 0);
  objc_msgSend_setUpdateMode_(self->_compass, v7, 0);
  if (self->_clockTimerToken)
  {
    v10 = updated == mode;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    objc_msgSend__stopClockTimer(self, v8, v9);
    objc_msgSend__startClockTimer(self, v11, v12);
  }
}

@end