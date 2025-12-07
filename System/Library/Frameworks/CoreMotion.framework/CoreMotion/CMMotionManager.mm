@interface CMMotionManager
+ ($27EAB7405FCF4138B96BF1D57C6DB1C9)gyroCalibrationDatabaseGetBiasFit;
+ ($27EAB7405FCF4138B96BF1D57C6DB1C9)gyroCalibrationDatabaseGetBiasFitAndEstimate:(SEL)estimate atTemperature:(id *)temperature;
+ (BOOL)configureM7Activity:(BOOL)activity stepCounting:(BOOL)counting activityForceCodeTransition:(BOOL)transition stepCountingForceCodeTransition:(BOOL)codeTransition threshold:(BOOL)threshold onBodyDetection:(BOOL)detection ispMode:(unsigned __int8)mode predictionInterval:(float)self0 logLevel:(char)self1 proactiveRevisitTime:(unsigned __int16)self2;
+ (BOOL)northAlignedReferenceFrame:(unint64_t)frame;
+ (BOOL)supportsGyroMiniCalibration;
+ (CMAttitudeReferenceFrame)availableAttitudeReferenceFrames;
+ (unint64_t)availableAttitudeReferenceFramesNoSim;
+ (void)dumpDb:(int64_t)db toURL:(id)l onCompletion:(id)completion;
+ (void)initialize;
+ (void)setVirtualAlmondDevice:(id)device;
- (BOOL)isAccelerometerAvailable;
- (BOOL)isAmbientPressureAvailable;
- (BOOL)isMagnetometerAvailable;
- (BOOL)isSidebandSensorFusionAvailable;
- (BOOL)readRawAmbientPressureSamplesFromDB:(id)b toQueue:(id)queue where:(id)where withHandler:(id)handler;
- (BOOL)sendDeviceMotionError:(int)error;
- (BOOL)sendDeviceMotionHostGravityToKeyboard:(id *)keyboard;
- (BOOL)setMotionThreadPriority:(int)priority;
- (BOOL)setSidebandSensorFusionEnable:(BOOL)enable measureLatency:(BOOL)latency withSnoopHandler:(id)handler;
- (BOOL)shouldResetStartingReference;
- (CMAccelerometerData)accelerometerData;
- (CMAmbientPressureData)ambientPressureData;
- (CMAmbientPressureData)compensatedAmbientPressureData;
- (CMDeviceMotion)deviceMotion;
- (CMGyroData)gyroData;
- (CMMagnetometerData)magnetometerData;
- (CMMotionManager)init;
- (id)computeNonlinearPRTTFromDB:(id)b where:(id)where;
- (id)deviceMotionNoSim;
- (id)initPrivate;
- (id)initUsing6AxisSensorFusion;
- (id)initUsingGyroOnlySensorFusion;
- (id)predictedDeviceMotionAtTimestamp:(double)timestamp error:(id *)error;
- (int)gyttNumTemperatures;
- (void)_startDeviceMotionErrorUpdatesToQueue:(id)queue withHandler:(id)handler;
- (void)_stopDeviceMotionErrorUpdates;
- (void)applyInitialReference:(Sample *)reference;
- (void)applyNorthReference:(Sample *)reference;
- (void)connect;
- (void)dealloc;
- (void)deallocPrivate;
- (void)didBecomeActive:(id)active;
- (void)didBecomeActivePrivate:(id)private;
- (void)dismissDeviceMovementDisplay;
- (void)onAccelerometer:(const Sample *)accelerometer;
- (void)onAmbientPressure:(const Sample *)pressure;
- (void)onCompensatedAmbientPressure:(const Sample *)pressure;
- (void)onDeviceMotion:(const Sample *)motion;
- (void)onDeviceMotionForKeyboardMotion:(const Sample *)motion;
- (void)onFactoryGyro:(const Sample *)gyro;
- (void)onFactoryGyroTemperature:(const Temperature *)temperature;
- (void)onGyro:(const Sample *)gyro;
- (void)onMagnetometer:(const Sample *)magnetometer;
- (void)rebuildGytt;
- (void)setAccelerometerDataCallback:(void *)callback info:(void *)info interval:(double)interval;
- (void)setAccelerometerUpdateInterval:(NSTimeInterval)accelerometerUpdateInterval;
- (void)setAccelerometerUpdateIntervalPrivate:(double)private;
- (void)setAmbientPressureUpdateInterval:(double)interval;
- (void)setAmbientPressureUpdateIntervalPrivate:(double)private;
- (void)setCompensatedAmbientPressureUpdateInterval:(double)interval;
- (void)setCompensatedAmbientPressureUpdateIntervalPrivate:(double)private;
- (void)setDeviceMotionCallback:(void *)callback info:(void *)info interval:(double)interval fsync:(BOOL)fsync;
- (void)setDeviceMotionUpdateInterval:(NSTimeInterval)deviceMotionUpdateInterval;
- (void)setDeviceMotionUpdateIntervalNoSim:(double)sim;
- (void)setDeviceMotionUpdateIntervalPrivate:(double)private;
- (void)setDisplayGravityHandler:(id)handler interval:(double)interval;
- (void)setGyroDataCallback:(void *)callback info:(void *)info interval:(double)interval;
- (void)setGyroUpdateInterval:(NSTimeInterval)gyroUpdateInterval;
- (void)setGyroUpdateIntervalPrivate:(double)private;
- (void)setMagnetometerDataCallback:(void *)callback info:(void *)info interval:(double)interval;
- (void)setMagnetometerUpdateInterval:(NSTimeInterval)magnetometerUpdateInterval;
- (void)setMagnetometerUpdateIntervalPrivate:(double)private;
- (void)setNotificationCallback:(void *)callback info:(void *)info;
- (void)setPowerConservationMode:(int)mode;
- (void)setShouldResetStartingReference:(BOOL)reference;
- (void)setShowsDeviceMovementDisplay:(BOOL)showsDeviceMovementDisplay;
- (void)setShowsDeviceMovementDisplayPrivate:(BOOL)private;
- (void)setSidebandTimeSyncHandler:(id)handler;
- (void)showDeviceMovementDisplay;
- (void)startAccelerometerUpdates;
- (void)startAccelerometerUpdatesPrivateToQueue:(id)queue withHandler:(id)handler;
- (void)startAccelerometerUpdatesToQueue:(NSOperationQueue *)queue withHandler:(CMAccelerometerHandler)handler;
- (void)startAmbientPressureUpdates;
- (void)startAmbientPressureUpdatesPrivateToQueue:(id)queue withHandler:(id)handler;
- (void)startAmbientPressureUpdatesToQueue:(id)queue withHandler:(id)handler;
- (void)startCompensatedAmbientPressureUpdates;
- (void)startCompensatedAmbientPressureUpdatesPrivateToQueue:(id)queue withHandler:(id)handler;
- (void)startCompensatedAmbientPressureUpdatesToQueue:(id)queue withHandler:(id)handler;
- (void)startDeviceMotionLiteFusedUpdatesForDeviceID:(id)d toQueue:(id)queue withHandler:(id)handler;
- (void)startDeviceMotionLiteUpdatesForDeviceID:(id)d usingConfiguration:(id)configuration toQueue:(id)queue withFusedHandler:(id)handler;
- (void)startDeviceMotionUpdates;
- (void)startDeviceMotionUpdatesForKeyboardMotionPrivateToQueue:(id)queue withGravityDeltaThreshold:(double)threshold notificationFrequency:(double)frequency andHandler:(id)handler;
- (void)startDeviceMotionUpdatesForKeyboardMotionToQueue:(id)queue withGravityDeltaThreshold:(double)threshold sendFrequency:(double)frequency andHandler:(id)handler;
- (void)startDeviceMotionUpdatesNoSim;
- (void)startDeviceMotionUpdatesNoSimToQueue:(id)queue withHandler:(id)handler;
- (void)startDeviceMotionUpdatesNoSimUsingReferenceFrame:(unint64_t)frame;
- (void)startDeviceMotionUpdatesNoSimUsingReferenceFrame:(unint64_t)frame toQueue:(id)queue withHandler:(id)handler;
- (void)startDeviceMotionUpdatesPrivateUsingReferenceFrame:(unint64_t)frame toQueue:(id)queue withHandler:(id)handler;
- (void)startDeviceMotionUpdatesToQueue:(NSOperationQueue *)queue withHandler:(CMDeviceMotionHandler)handler;
- (void)startDeviceMotionUpdatesUsingReferenceFrame:(CMAttitudeReferenceFrame)referenceFrame;
- (void)startDeviceMotionUpdatesUsingReferenceFrame:(CMAttitudeReferenceFrame)referenceFrame toQueue:(NSOperationQueue *)queue withHandler:(CMDeviceMotionHandler)handler;
- (void)startFactoryGyroUpdatesPrivateToQueue:(id)queue atUpdateInterval:(double)interval withHandler:(id)handler residualHandler:(id)residualHandler;
- (void)startFactoryGyroUpdatesToQueue:(id)queue atUpdateInterval:(double)interval withHandler:(id)handler;
- (void)startFactoryGyroUpdatesToQueue:(id)queue atUpdateInterval:(double)interval withHandler:(id)handler residualHandler:(id)residualHandler;
- (void)startFactoryGyroUpdatesToQueue:(id)queue withHandler:(id)handler;
- (void)startGyroUpdates;
- (void)startGyroUpdatesPrivateToQueue:(id)queue withHandler:(id)handler;
- (void)startGyroUpdatesToQueue:(NSOperationQueue *)queue withHandler:(CMGyroHandler)handler;
- (void)startMagnetometerUpdates;
- (void)startMagnetometerUpdatesPrivateToQueue:(id)queue withHandler:(id)handler;
- (void)startMagnetometerUpdatesToQueue:(NSOperationQueue *)queue withHandler:(CMMagnetometerHandler)handler;
- (void)stopAccelerometerUpdates;
- (void)stopAccelerometerUpdatesPrivate;
- (void)stopAmbientPressureUpdates;
- (void)stopAmbientPressureUpdatesPrivate;
- (void)stopCompensatedAmbientPressureUpdates;
- (void)stopCompensatedAmbientPressureUpdatesPrivate;
- (void)stopDeviceMotionLiteUpdatesForDeviceID:(id)d;
- (void)stopDeviceMotionUpdates;
- (void)stopDeviceMotionUpdatesForKeyboardMotion;
- (void)stopDeviceMotionUpdatesForKeyboardMotionPrivate;
- (void)stopDeviceMotionUpdatesNoSim;
- (void)stopDeviceMotionUpdatesPrivate;
- (void)stopFactoryGyroUpdates;
- (void)stopFactoryGyroUpdatesPrivate;
- (void)stopGyroUpdates;
- (void)stopGyroUpdatesPrivate;
- (void)stopMagnetometerUpdates;
- (void)stopMagnetometerUpdatesPrivate;
- (void)updateDeviceMotionMode;
- (void)willResignActive:(id)active;
- (void)willResignActivePrivate:(id)private;
@end

@implementation CMMotionManager

+ (CMAttitudeReferenceFrame)availableAttitudeReferenceFrames
{
  sub_19B421798();
  if ((sub_19B423E34() & 4) == 0)
  {
    return 0;
  }

  if ((sub_19B42521C() & 1) == 0 && (sub_19B423E34() & 1) == 0)
  {
    return 1;
  }

  sub_19B421798();
  return 15;
}

- (CMMotionManager)init
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = sub_19B428A6C;
  v11 = sub_19B429018;
  v12 = 0;
  v3 = sub_19B420D84();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_19B428C08;
  v6[3] = &unk_1E7533708;
  v6[4] = self;
  v6[5] = &v7;
  sub_19B420C9C(v3, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (id)initPrivate
{
  v9.receiver = self;
  v9.super_class = CMMotionManager;
  v2 = [(CMMotionManager *)&v9 init];
  if (v2)
  {
    v2->_internal = objc_alloc_init(CMMotionManagerInternal);
    v5 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v3, v4);
    objc_msgSend_addObserver_selector_name_object_(v5, v6, v2, sel_willResignActive_, @"UIApplicationWillResignActiveNotification", 0);
    objc_msgSend_addObserver_selector_name_object_(v5, v7, v2, sel_didBecomeActive_, @"UIApplicationDidBecomeActiveNotification", 0);
  }

  return v2;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v5 = objc_msgSend_currentThread(MEMORY[0x1E696AF00], v3, v4);
    if (objc_msgSend_isMainThread(v5, v6, v7) && (objc_msgSend_isMultiThreaded(MEMORY[0x1E696AF00], v8, v9) & 1) == 0)
    {
      objc_msgSend_detachNewThreadSelector_toTarget_withObject_(MEMORY[0x1E696AF00], v10, sel_dummySelector_, self, 0);
    }

    if (!qword_1ED71C900)
    {
      Main = CFRunLoopGetMain();

      sub_19B429D10(Main);
    }
  }
}

- (BOOL)isSidebandSensorFusionAvailable
{
  if (sub_19B4215D8())
  {
    LOBYTE(v2) = 0;
  }

  else
  {
    return (sub_19B421620() >> 30) & 1;
  }

  return v2;
}

- (id)initUsingGyroOnlySensorFusion
{
  result = objc_msgSend_init(self, a2, v2);
  if (result)
  {
    v4 = *(result + 1);
    *(v4 + 536) = 0;
    *(v4 + 538) = 1;
  }

  return result;
}

- (BOOL)isAccelerometerAvailable
{
  if (sub_19B4215D8())
  {
    LOBYTE(v2) = 0;
  }

  else
  {
    return (sub_19B423E34() >> 2) & 1;
  }

  return v2;
}

- (void)dismissDeviceMovementDisplay
{
  v9 = *MEMORY[0x1E69E9840];
  internal = self->_internal;
  if (internal[312] == 1)
  {
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E3A778);
    }

    v3 = off_1ED71C808;
    if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEFAULT, "CM: Dismissing Compass Calibration HUD", buf, 2u);
    }

    v4 = sub_19B420058();
    if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E3A778);
      }

      v7[0] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C808, 0, "CM: Dismissing Compass Calibration HUD", v7, 2);
      v6 = v5;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMotionManager dismissDeviceMovementDisplay]", "CoreLocation: %s\n", v5);
      if (v6 != buf)
      {
        free(v6);
      }
    }

    sub_19B6F3C6C();
    internal[312] = 0;
  }
}

- (CMDeviceMotion)deviceMotion
{
  v46 = *MEMORY[0x1E69E9840];
  internal = self->_internal;
  if (!objc_msgSend_isDeviceMotionActive(self, a2, v2))
  {
    return 0;
  }

  if (!internal[74])
  {
    return 0;
  }

  v5 = sub_19B424AE0();
  *&v7 = sub_19B71FE3C(v5, internal[74], &v26, v6);
  objc_msgSend_applyNorthReference_(self, v8, &v26, v7);
  objc_msgSend_applyInitialReference_(self, v9, &v26);
  if (!objc_msgSend_deviceMotionInitialized_(CMMotionManager, v10, &v26))
  {
    return 0;
  }

  v11 = [CMDeviceMotion alloc];
  v42 = v29;
  v43 = v30;
  v44 = v31;
  v45 = v32;
  *buf = v27;
  *&buf[16] = v28;
  LODWORD(v12) = v35;
  LODWORD(v13) = v36;
  v15 = objc_msgSend_initWithDeviceMotion_internal_timestamp_(v11, v14, buf, COERCE_DOUBLE(__PAIR64__(DWORD1(v27), v33)), COERCE_DOUBLE(__PAIR64__(DWORD1(v28), v34)), v12, v13, v26);
  if (qword_1ED71C800 != -1)
  {
    dispatch_once(&qword_1ED71C800, &unk_1F0E3A778);
  }

  v16 = off_1ED71C808;
  if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEBUG))
  {
    v17 = mach_absolute_time();
    v18 = sub_19B41E070(v17);
    *buf = 138412546;
    *&buf[4] = v15;
    *&buf[12] = 2048;
    *&buf[14] = v18;
    _os_log_impl(&dword_19B41C000, v16, OS_LOG_TYPE_DEBUG, "CMDeviceMotion: %@,now,%f", buf, 0x16u);
  }

  v19 = sub_19B420058();
  if (*(v19 + 160) > 1 || *(v19 + 164) > 1 || *(v19 + 168) > 1 || *(v19 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E3A778);
    }

    v20 = off_1ED71C808;
    v21 = mach_absolute_time();
    v22 = sub_19B41E070(v21);
    v37 = 138412546;
    v38 = v15;
    v39 = 2048;
    v40 = v22;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v20, 2, "CMDeviceMotion: %@,now,%f", &v37, 22);
    v24 = v23;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMotionManager deviceMotion]", "CoreLocation: %s\n", v23);
    if (v24 != buf)
    {
      free(v24);
    }
  }

  return v15;
}

- (void)updateDeviceMotionMode
{
  internal = self->_internal;
  if (*(internal + 536) == 1)
  {
    v3 = internal[38];
    if (v3 == 8)
    {
      v4 = 143;
    }

    else if (v3 == 4)
    {
      v4 = 15;
    }

    else
    {
      v4 = 7;
    }
  }

  else
  {
    v5 = *(internal + 147);
    if (*(internal + 537) == 1)
    {
      if (v5 == 3)
      {
        v4 = 259;
      }

      else if (v5 == 2)
      {
        v4 = 67;
      }

      else
      {
        v4 = 3;
      }
    }

    else if (v5 == 1)
    {
      v4 = 34;
    }

    else
    {
      v4 = 2;
    }
  }

  *(internal + 74) = v4;
}

- (void)stopDeviceMotionUpdates
{
  v3 = sub_19B420D84();
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_19B449534;
  v4[3] = &unk_1E7532988;
  v4[4] = self;
  sub_19B420C9C(v3, v4);
}

- (void)stopDeviceMotionUpdatesPrivate
{
  internal = self->_internal;
  if (internal[538] == 1)
  {
    if ((objc_msgSend_isDeviceMotionAvailableNoSim(self, a2, v2) & 1) == 0)
    {
      return;
    }
  }

  else if (!objc_msgSend_isDeviceMotionAvailable(self, a2, v2))
  {
    return;
  }

  *(internal + 315) = 0;
  if (*(internal + 32))
  {
    v8 = sub_19B424AE0();
    sub_19B425248(v8, *(internal + 32));
    v9 = *(internal + 32);
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }

    *(internal + 32) = 0;
    v10 = *(internal + 81);
    if (v10)
    {
      v7 = sub_19B72A398(v10, 4);
    }
  }

  v11 = *(internal + 35);
  if (v11)
  {

    *(internal + 35) = 0;
  }

  v12 = *(internal + 34);
  if (v12)
  {

    *(internal + 34) = 0;
  }

  objc_msgSend_dismissDeviceMovementDisplay(self, v5, v6, v7);
  internal[314] = 0;
}

+ (void)setVirtualAlmondDevice:(id)device
{
  if (sub_19B5F8F74())
  {
    deviceCopy = device;

    qword_1EAFE38C8 = deviceCopy;
  }
}

- (void)dealloc
{
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x3052000000;
  v6[3] = sub_19B428A6C;
  v6[4] = sub_19B429018;
  v6[5] = self;
  v3 = sub_19B420D84();
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_19B62AE88;
  v5[3] = &unk_1E7533730;
  v5[4] = v6;
  sub_19B420C9C(v3, v5);
  v4.receiver = self;
  v4.super_class = CMMotionManager;
  [(CMMotionManager *)&v4 dealloc];
  _Block_object_dispose(v6, 8);
}

- (void)deallocPrivate
{
  internal = self->_internal;
  v4 = objc_autoreleasePoolPush();

  v7 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v5, v6);
  objc_msgSend_removeObserver_(v7, v8, self);
  objc_msgSend_cancelAllOperations(internal[5], v9, v10);
  objc_msgSend_cancelAllOperations(internal[27], v11, v12);
  objc_msgSend_cancelAllOperations(internal[35], v13, v14);
  objc_msgSend_cancelAllOperations(internal[78], v15, v16);
  objc_msgSend_cancelAllOperations(internal[49], v17, v18);
  objc_msgSend_cancelAllOperations(internal[13], v19, v20);
  objc_msgSend_stopAccelerometerUpdatesPrivate(self, v21, v22);
  objc_msgSend_stopGyroUpdatesPrivate(self, v23, v24);
  objc_msgSend_stopDeviceMotionUpdatesPrivate(self, v25, v26);
  objc_msgSend__stopDeviceMotionErrorUpdates(self, v27, v28);
  objc_msgSend_stopMagnetometerUpdatesPrivate(self, v29, v30);
  objc_msgSend_stopAmbientPressureUpdatesPrivate(self, v31, v32);
  objc_msgSend_teardownPrivate(self->_internal, v33, v34);

  objc_autoreleasePoolPop(v4);
}

- (void)setAccelerometerUpdateInterval:(NSTimeInterval)accelerometerUpdateInterval
{
  v5 = sub_19B420D84();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_19B62B010;
  v6[3] = &unk_1E7533490;
  v6[4] = self;
  *&v6[5] = accelerometerUpdateInterval;
  sub_19B420C9C(v5, v6);
}

- (CMAccelerometerData)accelerometerData
{
  internal = self->_internal;
  os_unfair_lock_lock(internal + 2);
  v3 = *(internal + 7);
  v4 = *(internal + 16);
  v5 = *(internal + 17);
  v6 = *(internal + 18);
  os_unfair_lock_unlock(internal + 2);
  if (v3 <= 0.0)
  {
    return 0;
  }

  v7 = [CMAccelerometerData alloc];
  LODWORD(v8) = v4;
  LODWORD(v9) = v5;
  LODWORD(v10) = v6;
  v13 = objc_msgSend_initWithAcceleration_andTimestamp_(v7, v11, v12, v8, v9, v10, v3);

  return v13;
}

- (void)startAccelerometerUpdates
{
  v3 = sub_19B420D84();
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_19B62B144;
  v4[3] = &unk_1E7532988;
  v4[4] = self;
  sub_19B421668(v3, v4);
}

- (void)startAccelerometerUpdatesToQueue:(NSOperationQueue *)queue withHandler:(CMAccelerometerHandler)handler
{
  v7 = sub_19B420D84();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_19B62B1E4;
  v8[3] = &unk_1E7532C08;
  v8[4] = self;
  v8[5] = queue;
  v8[6] = handler;
  sub_19B421668(v7, v8);
}

- (void)stopAccelerometerUpdates
{
  v3 = sub_19B420D84();
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_19B62B270;
  v4[3] = &unk_1E7532988;
  v4[4] = self;
  sub_19B420C9C(v3, v4);
}

- (void)setAccelerometerUpdateIntervalPrivate:(double)private
{
  internal = self->_internal;
  if (private < 0.01)
  {
    private = 0.01;
  }

  *(internal + 3) = private;
  if (*(internal + 2))
  {
    v4 = sub_19B4249E4();
    v5 = *(internal + 2);

    sub_19B44E2F8(v4, 0, v5, internal + 24);
  }
}

- (void)startAccelerometerUpdatesPrivateToQueue:(id)queue withHandler:(id)handler
{
  internal = self->_internal;
  if (objc_msgSend_isAccelerometerAvailable(self, a2, queue) && internal[3] > 0.0)
  {
    v7 = *(internal + 5);
    if (v7 != queue)
    {

      *(internal + 5) = queue;
    }

    v8 = *(internal + 4);
    if (v8 != handler)
    {

      *(internal + 4) = objc_msgSend_copy(handler, v9, v10);
    }

    if (!*(internal + 2))
    {
      operator new();
    }
  }
}

- (void)stopAccelerometerUpdatesPrivate
{
  internal = self->_internal;
  if (objc_msgSend_isAccelerometerAvailable(self, a2, v2))
  {
    if (internal[2])
    {
      v4 = sub_19B4249E4();
      sub_19B426A14(v4, 0, internal[2]);
      v5 = internal[2];
      if (v5)
      {
        (*(*v5 + 8))(v5);
      }

      internal[2] = 0;
      v6 = internal[81];
      if (v6)
      {
        sub_19B72A398(v6, 1);
      }
    }

    v7 = internal[5];
    if (v7)
    {

      internal[5] = 0;
    }

    v8 = internal[4];
    if (v8)
    {

      internal[4] = 0;
    }
  }
}

- (BOOL)isAmbientPressureAvailable
{
  if (sub_19B4215D8())
  {
    LOBYTE(v2) = 0;
  }

  else
  {
    return (sub_19B423E34() >> 4) & 1;
  }

  return v2;
}

- (void)setAmbientPressureUpdateInterval:(double)interval
{
  v5 = sub_19B420D84();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_19B62B580;
  v6[3] = &unk_1E7533490;
  v6[4] = self;
  *&v6[5] = interval;
  sub_19B420C9C(v5, v6);
}

- (void)startAmbientPressureUpdates
{
  v3 = sub_19B420D84();
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_19B62B62C;
  v4[3] = &unk_1E7532988;
  v4[4] = self;
  sub_19B421668(v3, v4);
}

- (void)startAmbientPressureUpdatesToQueue:(id)queue withHandler:(id)handler
{
  v7 = sub_19B420D84();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_19B62B6CC;
  v8[3] = &unk_1E7532C08;
  v8[4] = self;
  v8[5] = queue;
  v8[6] = handler;
  sub_19B421668(v7, v8);
}

- (void)stopAmbientPressureUpdates
{
  v3 = sub_19B420D84();
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_19B62B758;
  v4[3] = &unk_1E7532988;
  v4[4] = self;
  sub_19B420C9C(v3, v4);
}

- (CMAmbientPressureData)ambientPressureData
{
  internal = self->_internal;
  os_unfair_lock_lock(internal + 2);
  v3 = *(internal + 15);
  v4 = *(internal + 32);
  v5 = *(internal + 33);
  os_unfair_lock_unlock(internal + 2);
  if (v3 <= 0.0)
  {
    return 0;
  }

  v6 = [CMAmbientPressureData alloc];
  LODWORD(v7) = v4;
  LODWORD(v8) = v5;
  v11 = objc_msgSend_initWithPressure_andTimestamp_(v6, v9, v10, v7, v8, v3);

  return v11;
}

- (BOOL)readRawAmbientPressureSamplesFromDB:(id)b toQueue:(id)queue where:(id)where withHandler:(id)handler
{
  v35 = *MEMORY[0x1E69E9840];
  v10 = objc_msgSend_UTF8String(b, a2, b);
  sub_19B428B50(__p, v10);
  v33 = 0uLL;
  v34 = 0;
  v28 = 0uLL;
  v29 = 0;
  sub_19B668A1C(v30, __p, &v33, &v28);
  if (v32 < 0)
  {
    operator delete(*__p);
  }

  if ((v30[0] & 1) == 0)
  {
    if (qword_1EAFE2840 != -1)
    {
      dispatch_once(&qword_1EAFE2840, &unk_1F0E3A758);
    }

    v16 = qword_1EAFE2860;
    if (os_log_type_enabled(qword_1EAFE2860, OS_LOG_TYPE_FAULT))
    {
      *__p = 138412290;
      *&__p[4] = b;
      _os_log_impl(&dword_19B41C000, v16, OS_LOG_TYPE_FAULT, "%@ is invalid", __p, 0xCu);
    }

    v17 = sub_19B420058();
    if ((*(v17 + 160) & 0x80000000) == 0 || (*(v17 + 164) & 0x80000000) == 0 || (*(v17 + 168) & 0x80000000) == 0 || *(v17 + 152))
    {
      bzero(__p, 0x65CuLL);
      if (qword_1EAFE2840 != -1)
      {
        dispatch_once(&qword_1EAFE2840, &unk_1F0E3A758);
      }

      LODWORD(v33) = 138412290;
      *(&v33 + 4) = b;
      _os_log_send_and_compose_impl(2, 0, __p, 1628, &dword_19B41C000, qword_1EAFE2860, 17, "%@ is invalid", &v33, 12);
      v19 = v18;
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMMotionManager readRawAmbientPressureSamplesFromDB:toQueue:where:withHandler:]", "CoreLocation: %s\n", v18);
      if (v19 != __p)
      {
        free(v19);
      }
    }

    goto LABEL_21;
  }

  v13 = objc_msgSend_UTF8String(where, v11, v12);
  sub_19B428B50(__p, v13);
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = sub_19B62BB88;
  v27[3] = &unk_1E7533758;
  v27[4] = queue;
  v27[5] = handler;
  v14 = sub_19B6697FC(v30, __p, v27);
  v15 = v14;
  if (v32 < 0)
  {
    operator delete(*__p);
    if ((v15 & 1) == 0)
    {
LABEL_21:
      v24 = 0;
      goto LABEL_22;
    }
  }

  else if ((v14 & 1) == 0)
  {
    goto LABEL_21;
  }

  v20 = objc_alloc(MEMORY[0x1E696ABC0]);
  v22 = objc_msgSend_initWithDomain_code_userInfo_(v20, v21, @"CMErrorDomain", 109, 0);
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = sub_19B62BC40;
  v26[3] = &unk_1E7532B90;
  v26[4] = v22;
  v26[5] = handler;
  objc_msgSend_addOperationWithBlock_(queue, v23, v26);

  v24 = 1;
LABEL_22:
  sub_19B66882C(v30);
  return v24;
}

- (id)computeNonlinearPRTTFromDB:(id)b where:(id)where
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = objc_msgSend_UTF8String(b, a2, b);
  sub_19B428B50(buf, v6);
  v9 = objc_msgSend_UTF8String(where, v7, v8);
  sub_19B428B50(v22, v9);
  v11 = sub_19B669D40(buf, v22, v17);
  if (v25 < 0)
  {
    operator delete(*v22);
  }

  if (v21 < 0)
  {
    operator delete(*buf);
    if (v11)
    {
      return objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], v10, v17, 222);
    }
  }

  else if (v11)
  {
    return objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], v10, v17, 222);
  }

  if (qword_1EAFE2840 != -1)
  {
    dispatch_once(&qword_1EAFE2840, &unk_1F0E3A758);
  }

  v13 = qword_1EAFE2860;
  if (os_log_type_enabled(qword_1EAFE2860, OS_LOG_TYPE_FAULT))
  {
    *buf = 138412546;
    *&buf[4] = b;
    v19 = 2112;
    whereCopy = where;
    _os_log_impl(&dword_19B41C000, v13, OS_LOG_TYPE_FAULT, "Failed to calculate PRTT for %@ WHERE %@", buf, 0x16u);
  }

  v14 = sub_19B420058();
  if ((*(v14 + 160) & 0x80000000) == 0 || (*(v14 + 164) & 0x80000000) == 0 || (*(v14 + 168) & 0x80000000) == 0 || *(v14 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2840 != -1)
    {
      dispatch_once(&qword_1EAFE2840, &unk_1F0E3A758);
    }

    *v22 = 138412546;
    *&v22[4] = b;
    v23 = 2112;
    whereCopy2 = where;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2860, 17, "Failed to calculate PRTT for %@ WHERE %@", v22, 22);
    v16 = v15;
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CMMotionManager computeNonlinearPRTTFromDB:where:]", "CoreLocation: %s\n", v15);
    if (v16 != buf)
    {
      free(v16);
    }
  }

  return 0;
}

- (void)setCompensatedAmbientPressureUpdateInterval:(double)interval
{
  v5 = sub_19B420D84();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_19B62BF88;
  v6[3] = &unk_1E7533490;
  v6[4] = self;
  *&v6[5] = interval;
  sub_19B420C9C(v5, v6);
}

- (void)startCompensatedAmbientPressureUpdates
{
  v3 = sub_19B420D84();
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_19B62C034;
  v4[3] = &unk_1E7532988;
  v4[4] = self;
  sub_19B421668(v3, v4);
}

- (void)startCompensatedAmbientPressureUpdatesToQueue:(id)queue withHandler:(id)handler
{
  v7 = sub_19B420D84();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_19B62C0D4;
  v8[3] = &unk_1E7532C08;
  v8[4] = self;
  v8[5] = queue;
  v8[6] = handler;
  sub_19B421668(v7, v8);
}

- (void)stopCompensatedAmbientPressureUpdates
{
  v3 = sub_19B420D84();
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_19B62C160;
  v4[3] = &unk_1E7532988;
  v4[4] = self;
  sub_19B420C9C(v3, v4);
}

- (CMAmbientPressureData)compensatedAmbientPressureData
{
  internal = self->_internal;
  os_unfair_lock_lock(internal + 2);
  v3 = *(internal + 22);
  v4 = *(internal + 46);
  v5 = *(internal + 47);
  os_unfair_lock_unlock(internal + 2);
  if (v3 <= 0.0)
  {
    return 0;
  }

  v6 = [CMAmbientPressureData alloc];
  LODWORD(v7) = v4;
  LODWORD(v8) = v5;
  v11 = objc_msgSend_initWithPressure_andTimestamp_(v6, v9, v10, v7, v8, v3);

  return v11;
}

- (void)setAmbientPressureUpdateIntervalPrivate:(double)private
{
  internal = self->_internal;
  if (private < 0.01)
  {
    private = 0.01;
  }

  *(internal + 11) = private;
  if (*(internal + 10))
  {
    v4 = sub_19B61C754();
    v5 = *(internal + 10);

    sub_19B44E2F8(v4, 0, v5, internal + 88);
  }
}

- (void)startAmbientPressureUpdatesPrivateToQueue:(id)queue withHandler:(id)handler
{
  internal = self->_internal;
  if (objc_msgSend_isAmbientPressureAvailable(self, a2, queue) && internal[11] > 0.0)
  {
    v7 = *(internal + 13);
    if (v7 != queue)
    {

      *(internal + 13) = queue;
    }

    v8 = *(internal + 12);
    if (v8 != handler)
    {

      *(internal + 12) = objc_msgSend_copy(handler, v9, v10);
    }

    if (!*(internal + 10))
    {
      operator new();
    }
  }
}

- (void)stopAmbientPressureUpdatesPrivate
{
  internal = self->_internal;
  if (objc_msgSend_isAmbientPressureAvailable(self, a2, v2))
  {
    if (internal[10])
    {
      v4 = sub_19B61C754();
      sub_19B426A14(v4, 0, internal[10]);
      v5 = internal[10];
      if (v5)
      {
        (*(*v5 + 8))(v5);
      }

      internal[10] = 0;
    }

    v6 = internal[13];
    if (v6)
    {

      internal[13] = 0;
    }

    v7 = internal[12];
    if (v7)
    {

      internal[12] = 0;
    }
  }
}

- (void)setCompensatedAmbientPressureUpdateIntervalPrivate:(double)private
{
  internal = self->_internal;
  if (private < 0.01)
  {
    private = 0.01;
  }

  *(internal + 18) = private;
  if (*(internal + 17))
  {
    v4 = sub_19B61C754();
    v5 = *(internal + 17);

    sub_19B44E2F8(v4, 0, v5, internal + 144);
  }
}

- (void)startCompensatedAmbientPressureUpdatesPrivateToQueue:(id)queue withHandler:(id)handler
{
  internal = self->_internal;
  if (objc_msgSend_isAmbientPressureAvailable(self, a2, queue) && internal[18] > 0.0)
  {
    v7 = *(internal + 20);
    if (v7 != queue)
    {

      *(internal + 20) = queue;
    }

    v8 = *(internal + 19);
    if (v8 != handler)
    {

      *(internal + 19) = objc_msgSend_copy(handler, v9, v10);
    }

    if (!*(internal + 17))
    {
      operator new();
    }
  }
}

- (void)stopCompensatedAmbientPressureUpdatesPrivate
{
  internal = self->_internal;
  if (objc_msgSend_isAmbientPressureAvailable(self, a2, v2))
  {
    if (internal[17])
    {
      v4 = sub_19B61C754();
      sub_19B426A14(v4, 1, internal[17]);
      v5 = internal[17];
      if (v5)
      {
        (*(*v5 + 8))(v5);
      }

      internal[17] = 0;
    }

    v6 = internal[20];
    if (v6)
    {

      internal[20] = 0;
    }

    v7 = internal[19];
    if (v7)
    {

      internal[19] = 0;
    }
  }
}

- (void)setGyroUpdateInterval:(NSTimeInterval)gyroUpdateInterval
{
  v5 = sub_19B420D84();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_19B62C73C;
  v6[3] = &unk_1E7533490;
  v6[4] = self;
  *&v6[5] = gyroUpdateInterval;
  sub_19B420C9C(v5, v6);
}

- (CMGyroData)gyroData
{
  internal = self->_internal;
  os_unfair_lock_lock(internal + 2);
  v3 = *(internal + 29);
  v4 = *(internal + 60);
  v5 = *(internal + 61);
  v6 = *(internal + 62);
  os_unfair_lock_unlock(internal + 2);
  if (v3 <= 0.0)
  {
    return 0;
  }

  v7 = [CMGyroData alloc];
  LODWORD(v8) = v4;
  LODWORD(v9) = v5;
  LODWORD(v10) = v6;
  v13 = objc_msgSend_initWithRotationRate_andTimestamp_(v7, v11, v12, v8, v9, v10, v3);

  return v13;
}

- (void)startGyroUpdates
{
  v3 = sub_19B420D84();
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_19B62C870;
  v4[3] = &unk_1E7532988;
  v4[4] = self;
  sub_19B421668(v3, v4);
}

- (void)startGyroUpdatesToQueue:(NSOperationQueue *)queue withHandler:(CMGyroHandler)handler
{
  v7 = sub_19B420D84();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_19B62C910;
  v8[3] = &unk_1E7532C08;
  v8[4] = self;
  v8[5] = queue;
  v8[6] = handler;
  sub_19B421668(v7, v8);
}

- (void)stopGyroUpdates
{
  v3 = sub_19B420D84();
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_19B62C99C;
  v4[3] = &unk_1E7532988;
  v4[4] = self;
  sub_19B420C9C(v3, v4);
}

- (void)setGyroUpdateIntervalPrivate:(double)private
{
  internal = self->_internal;
  if (private < 0.01)
  {
    private = 0.01;
  }

  *(internal + 25) = private;
  if (*(internal + 24))
  {
    v4 = sub_19B42AD98();
    v5 = *(internal + 24);

    sub_19B44E2F8(v4, 0, v5, internal + 200);
  }
}

- (void)startGyroUpdatesPrivateToQueue:(id)queue withHandler:(id)handler
{
  internal = self->_internal;
  if ((sub_19B4215D8() & 1) == 0 && (sub_19B421620() & 0x200000) == 0 && internal[25] > 0.0)
  {
    v7 = *(internal + 27);
    if (v7 != queue)
    {

      *(internal + 27) = queue;
    }

    v8 = *(internal + 26);
    if (v8 != handler)
    {

      *(internal + 26) = objc_msgSend_copy(handler, v9, v10);
    }

    if (!*(internal + 24))
    {
      operator new();
    }
  }
}

- (void)stopGyroUpdatesPrivate
{
  internal = self->_internal;
  if ((sub_19B4215D8() & 1) == 0 && (sub_19B421620() & 0x200000) == 0)
  {
    if (internal[24])
    {
      v3 = sub_19B42AD98();
      sub_19B426A14(v3, 0, internal[24]);
      v4 = internal[24];
      if (v4)
      {
        (*(*v4 + 8))(v4);
      }

      internal[24] = 0;
      v5 = internal[81];
      if (v5)
      {
        sub_19B72A398(v5, 2);
      }
    }

    v6 = internal[27];
    if (v6)
    {

      internal[27] = 0;
    }

    v7 = internal[26];
    if (v7)
    {

      internal[26] = 0;
    }
  }
}

- (void)setDeviceMotionUpdateInterval:(NSTimeInterval)deviceMotionUpdateInterval
{
  v5 = sub_19B420D84();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_19B62CC90;
  v6[3] = &unk_1E7533490;
  v6[4] = self;
  *&v6[5] = deviceMotionUpdateInterval;
  sub_19B420C9C(v5, v6);
}

- (void)startDeviceMotionUpdates
{
  v3 = sub_19B420D84();
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_19B62CD1C;
  v4[3] = &unk_1E7532988;
  v4[4] = self;
  sub_19B421668(v3, v4);
}

- (void)startDeviceMotionUpdatesToQueue:(NSOperationQueue *)queue withHandler:(CMDeviceMotionHandler)handler
{
  v7 = sub_19B420D84();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_19B62CDF4;
  v8[3] = &unk_1E7532C08;
  v8[4] = self;
  v8[5] = queue;
  v8[6] = handler;
  sub_19B421668(v7, v8);
}

- (void)startDeviceMotionUpdatesUsingReferenceFrame:(CMAttitudeReferenceFrame)referenceFrame
{
  v5 = sub_19B420D84();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_19B62CEBC;
  v6[3] = &unk_1E7533490;
  v6[4] = self;
  v6[5] = referenceFrame;
  sub_19B421668(v5, v6);
}

- (void)startDeviceMotionUpdatesUsingReferenceFrame:(CMAttitudeReferenceFrame)referenceFrame toQueue:(NSOperationQueue *)queue withHandler:(CMDeviceMotionHandler)handler
{
  v9 = sub_19B420D84();
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_19B62CF64;
  v10[3] = &unk_1E7533780;
  v10[4] = self;
  v10[5] = queue;
  v10[6] = handler;
  v10[7] = referenceFrame;
  sub_19B421668(v9, v10);
}

+ (unint64_t)availableAttitudeReferenceFramesNoSim
{
  sub_19B421798();
  if ((sub_19B423E34() & 4) == 0)
  {
    return 0;
  }

  if ((sub_19B42521C() & 1) == 0 && (sub_19B423E34() & 1) == 0)
  {
    return 1;
  }

  sub_19B421798();
  return 15;
}

- (void)setDeviceMotionUpdateIntervalNoSim:(double)sim
{
  v5 = sub_19B420D84();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_19B62D084;
  v6[3] = &unk_1E7533490;
  v6[4] = self;
  *&v6[5] = sim;
  sub_19B420C9C(v5, v6);
}

- (id)deviceMotionNoSim
{
  v55 = *MEMORY[0x1E69E9840];
  internal = self->_internal;
  if (!objc_msgSend_isDeviceMotionActiveNoSim(self, a2, v2) || !internal[74])
  {
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E3A778);
    }

    v27 = off_1ED71C808;
    if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_ERROR))
    {
      v28 = internal[74];
      *buf = 67109120;
      *&buf[4] = v28;
      _os_log_impl(&dword_19B41C000, v27, OS_LOG_TYPE_ERROR, "CMDeviceMotion not active or unknown, mode, %u", buf, 8u);
    }

    v29 = sub_19B420058();
    if ((*(v29 + 160) & 0x80000000) != 0 && (*(v29 + 164) & 0x80000000) != 0 && (*(v29 + 168) & 0x80000000) != 0 && !*(v29 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E3A778);
    }

    v30 = internal[74];
    LODWORD(v39) = 67109120;
    HIDWORD(v39) = v30;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C808, 16, "CMDeviceMotion not active or unknown, mode, %u", &v39);
    goto LABEL_37;
  }

  v5 = sub_19B424AE0();
  *&v7 = sub_19B71FE3C(v5, internal[74], &v39, v6);
  objc_msgSend_applyNorthReference_(self, v8, &v39, v7);
  objc_msgSend_applyInitialReference_(self, v9, &v39);
  if (!objc_msgSend_deviceMotionInitialized_(CMMotionManager, v10, &v39))
  {
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E3A778);
    }

    v33 = off_1ED71C808;
    if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v33, OS_LOG_TYPE_ERROR, "deviceMotionInitialized returned nil", buf, 2u);
    }

    v34 = sub_19B420058();
    if ((*(v34 + 160) & 0x80000000) != 0 && (*(v34 + 164) & 0x80000000) != 0 && (*(v34 + 168) & 0x80000000) != 0 && !*(v34 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E3A778);
    }

    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C808, 16, "deviceMotionInitialized returned nil");
    goto LABEL_37;
  }

  v11 = [CMDeviceMotion alloc];
  v51 = v42;
  v52 = v43;
  v53 = v44;
  v54 = v45;
  *buf = v40;
  *&buf[16] = v41;
  LODWORD(v12) = v48;
  LODWORD(v13) = v49;
  v15 = objc_msgSend_initWithDeviceMotion_internal_timestamp_(v11, v14, buf, COERCE_DOUBLE(__PAIR64__(DWORD1(v40), v46)), COERCE_DOUBLE(__PAIR64__(DWORD1(v41), v47)), v12, v13, v39);
  if (qword_1ED71C800 != -1)
  {
    dispatch_once(&qword_1ED71C800, &unk_1F0E3A778);
  }

  v16 = off_1ED71C808;
  if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEBUG))
  {
    v17 = mach_absolute_time();
    v18 = sub_19B41E070(v17);
    *buf = 138412546;
    *&buf[4] = v15;
    *&buf[12] = 2048;
    *&buf[14] = v18;
    _os_log_impl(&dword_19B41C000, v16, OS_LOG_TYPE_DEBUG, "CMDeviceMotion: %@,now,%f", buf, 0x16u);
  }

  v19 = sub_19B420058();
  if (*(v19 + 160) > 1 || *(v19 + 164) > 1 || *(v19 + 168) > 1 || *(v19 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E3A778);
    }

    v20 = off_1ED71C808;
    v21 = mach_absolute_time();
    *v36 = 138412546;
    *&v36[4] = v15;
    v37 = 2048;
    v38 = sub_19B41E070(v21);
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v20, 2, "CMDeviceMotion: %@,now,%f", v36, 22);
    v23 = v22;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMotionManager deviceMotionNoSim]", "CoreLocation: %s\n", v22);
    if (v23 != buf)
    {
      free(v23);
    }
  }

  if (!v15)
  {
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E3A778);
    }

    v24 = off_1ED71C808;
    if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v24, OS_LOG_TYPE_ERROR, "devicemotion object is nil", buf, 2u);
    }

    v25 = sub_19B420058();
    if ((*(v25 + 160) & 0x80000000) != 0 && (*(v25 + 164) & 0x80000000) != 0 && (*(v25 + 168) & 0x80000000) != 0 && !*(v25 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E3A778);
    }

    *v36 = 0;
    LODWORD(v35) = 2;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C808, 16, "devicemotion object is nil", v36, v35, *v36);
LABEL_37:
    v31 = v26;
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CMMotionManager deviceMotionNoSim]", "CoreLocation: %s\n", v26);
    if (v31 != buf)
    {
      free(v31);
    }

    return 0;
  }

  return v15;
}

- (void)startDeviceMotionUpdatesNoSim
{
  v3 = sub_19B420D84();
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_19B62D6F4;
  v4[3] = &unk_1E7532988;
  v4[4] = self;
  sub_19B421668(v3, v4);
}

- (void)startDeviceMotionUpdatesNoSimToQueue:(id)queue withHandler:(id)handler
{
  v7 = sub_19B420D84();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_19B62D7CC;
  v8[3] = &unk_1E7532C08;
  v8[4] = self;
  v8[5] = queue;
  v8[6] = handler;
  sub_19B421668(v7, v8);
}

- (void)startDeviceMotionUpdatesNoSimUsingReferenceFrame:(unint64_t)frame
{
  v5 = sub_19B420D84();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_19B62D894;
  v6[3] = &unk_1E7533490;
  v6[4] = self;
  v6[5] = frame;
  sub_19B421668(v5, v6);
}

- (void)startDeviceMotionUpdatesNoSimUsingReferenceFrame:(unint64_t)frame toQueue:(id)queue withHandler:(id)handler
{
  v9 = sub_19B420D84();
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_19B62D93C;
  v10[3] = &unk_1E7533780;
  v10[4] = self;
  v10[5] = queue;
  v10[6] = handler;
  v10[7] = frame;
  sub_19B421668(v9, v10);
}

- (void)stopDeviceMotionUpdatesNoSim
{
  v3 = sub_19B420D84();
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_19B62D9C8;
  v4[3] = &unk_1E7532988;
  v4[4] = self;
  sub_19B420C9C(v3, v4);
}

- (void)setDeviceMotionUpdateIntervalPrivate:(double)private
{
  internal = self->_internal;
  if (private < 0.01)
  {
    private = 0.01;
  }

  *(internal + 33) = private;
  if (*(internal + 32))
  {
    v4 = sub_19B424AE0();
    v5 = *(internal + 32);
    v6 = *(internal + 33);

    sub_19B44DE40(v4, v5, v6);
  }
}

- (void)startDeviceMotionUpdatesPrivateUsingReferenceFrame:(unint64_t)frame toQueue:(id)queue withHandler:(id)handler
{
  internal = self->_internal;
  if (internal[538] == 1)
  {
    if (!objc_msgSend_isDeviceMotionAvailableNoSim(self, a2, frame) || *(internal + 33) <= 0.0 || (objc_msgSend_availableAttitudeReferenceFramesNoSim(CMMotionManager, v10, v11) & frame) == 0)
    {
      return;
    }

    if (objc_msgSend_isDeviceMotionActiveNoSim(self, v12, v13) && *(internal + 38) != frame)
    {
      objc_msgSend_stopDeviceMotionUpdatesNoSim(self, v14, v15);
    }
  }

  else
  {
    if (!objc_msgSend_isDeviceMotionAvailable(self, a2, frame) || *(internal + 33) <= 0.0 || (objc_msgSend_availableAttitudeReferenceFrames(CMMotionManager, v16, v17) & frame) == 0)
    {
      return;
    }

    if (objc_msgSend_isDeviceMotionActive(self, v18, v19) && *(internal + 38) != frame)
    {
      objc_msgSend_stopDeviceMotionUpdates(self, v20, v21);
    }
  }

  *(internal + 38) = frame;
  internal[360] = 0;
  v22 = mach_absolute_time();
  *(internal + 40) = sub_19B41E070(v22);
  if ((*(internal + 38) - 1) > 1)
  {
    if ((internal[314] & 1) == 0)
    {
      *(internal + 313) = 257;
    }
  }

  else
  {
    objc_msgSend_dismissDeviceMovementDisplay(self, v23, v24);
  }

  v25 = *(internal + 35);
  if (v25 != queue)
  {

    *(internal + 35) = queue;
  }

  v26 = *(internal + 34);
  if (v26 != handler)
  {

    *(internal + 34) = objc_msgSend_copy(handler, v27, v28);
  }

  if (!*(internal + 32))
  {
    v29 = *(internal + 38);
    if (v29 > 3)
    {
      if (v29 == 4)
      {
        v30 = 15;
      }

      else
      {
        if (v29 != 8)
        {
          goto LABEL_36;
        }

        v30 = 143;
      }
    }

    else if (v29 == 1)
    {
      v31 = *(internal + 147);
      if (internal[537] == 1)
      {
        if (v31 == 3)
        {
          v30 = 259;
        }

        else if (v31 == 2)
        {
          v30 = 67;
        }

        else
        {
          v30 = 3;
        }
      }

      else if (v31 == 1)
      {
        v30 = 34;
      }

      else
      {
        v30 = 2;
      }
    }

    else
    {
      if (v29 != 2)
      {
        goto LABEL_36;
      }

      v30 = 7;
    }

    *(internal + 74) = v30;
LABEL_36:
    v32 = [CLDeviceMotionProperties alloc];
    objc_msgSend_initWithMode_(v32, v33, *(internal + 74));
    operator new();
  }
}

+ (void)dumpDb:(int64_t)db toURL:(id)l onCompletion:(id)completion
{
  v13[1] = *MEMORY[0x1E69E9840];
  if (!objc_msgSend_fileHandleForWritingToURL_(CMMotionUtils, a2, l))
  {
    v12 = @"CMReturnCode";
    v13[0] = MEMORY[0x1E695E110];
    v8 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v7, v13, &v12, 1);
    (*(completion + 2))(completion, v8);
  }

  v10 = @"CMDatabaseType";
  v11 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v7, db);
  objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v9, &v11, &v10, 1);
  sub_19B5E2E24();
}

- (void)rebuildGytt
{
  internal = self->_internal;
  if (objc_msgSend_isDeviceMotionAvailable(self, a2, v2))
  {
    objc_msgSend_stopDeviceMotionUpdates(self, v5, v6);
    v7 = sub_19B420D84();
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_19B62E06C;
    v8[3] = &unk_1E7532A00;
    v8[4] = internal;
    v8[5] = self;
    sub_19B421668(v7, v8);
  }
}

- (int)gyttNumTemperatures
{
  v2 = sub_19B43D9C4();
  v5 = objc_msgSend_vendor(v2, v3, v4);
  v7 = objc_msgSend_proxyForService_(v5, v6, @"CLGyroCalibrationDatabase");
  if (!v7)
  {
    return -2;
  }

  return MEMORY[0x1EEE66B58](v7, sel_syncgetNumTemperatures, v8);
}

- (BOOL)isMagnetometerAvailable
{
  if (sub_19B4215D8())
  {
    v2 = 0;
  }

  else
  {
    v2 = sub_19B423E34();
  }

  return v2 & 1;
}

- (void)setMagnetometerUpdateInterval:(NSTimeInterval)magnetometerUpdateInterval
{
  v5 = sub_19B420D84();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_19B62E2E0;
  v6[3] = &unk_1E7533490;
  v6[4] = self;
  *&v6[5] = magnetometerUpdateInterval;
  sub_19B420C9C(v5, v6);
}

- (CMMagnetometerData)magnetometerData
{
  internal = self->_internal;
  os_unfair_lock_lock(internal + 2);
  v3 = *(internal + 51);
  v4 = *(internal + 104);
  v5 = *(internal + 105);
  v6 = *(internal + 106);
  os_unfair_lock_unlock(internal + 2);
  if (v3 <= 0.0)
  {
    return 0;
  }

  v7 = [CMMagnetometerData alloc];
  LODWORD(v8) = v4;
  LODWORD(v9) = v5;
  LODWORD(v10) = v6;
  v13 = objc_msgSend_initWithMagneticField_andTimestamp_(v7, v11, v12, v8, v9, v10, v3);

  return v13;
}

- (void)startMagnetometerUpdates
{
  v3 = sub_19B420D84();
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_19B62E418;
  v4[3] = &unk_1E7532988;
  v4[4] = self;
  sub_19B421668(v3, v4);
}

- (void)startMagnetometerUpdatesToQueue:(NSOperationQueue *)queue withHandler:(CMMagnetometerHandler)handler
{
  v7 = sub_19B420D84();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_19B62E4B8;
  v8[3] = &unk_1E7532C08;
  v8[4] = self;
  v8[5] = queue;
  v8[6] = handler;
  sub_19B421668(v7, v8);
}

- (void)stopMagnetometerUpdates
{
  v3 = sub_19B420D84();
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_19B62E544;
  v4[3] = &unk_1E7532988;
  v4[4] = self;
  sub_19B420C9C(v3, v4);
}

- (void)setMagnetometerUpdateIntervalPrivate:(double)private
{
  internal = self->_internal;
  if (private < 0.01)
  {
    private = 0.01;
  }

  *(internal + 47) = private;
  if (*(internal + 46))
  {
    v4 = sub_19B673618();
    v5 = *(internal + 46);

    sub_19B44E2F8(v4, 0, v5, internal + 376);
  }
}

- (void)startMagnetometerUpdatesPrivateToQueue:(id)queue withHandler:(id)handler
{
  internal = self->_internal;
  if ((sub_19B4215D8() & 1) == 0 && (sub_19B423E34() & 1) != 0 && internal[47] > 0.0)
  {
    v7 = *(internal + 49);
    if (v7 != queue)
    {

      *(internal + 49) = queue;
    }

    v8 = *(internal + 48);
    if (v8 != handler)
    {

      *(internal + 48) = objc_msgSend_copy(handler, v9, v10);
    }

    if (!*(internal + 46))
    {
      operator new();
    }
  }
}

- (void)stopMagnetometerUpdatesPrivate
{
  internal = self->_internal;
  if (sub_19B4215D8() & 1) == 0 && (sub_19B423E34())
  {
    if (internal[46])
    {
      v3 = sub_19B673618();
      sub_19B426A14(v3, 0, internal[46]);
      v4 = internal[46];
      if (v4)
      {
        (*(*v4 + 8))(v4);
      }

      internal[46] = 0;
      v5 = internal[81];
      if (v5)
      {
        sub_19B72A398(v5, 8);
      }
    }

    v6 = internal[49];
    if (v6)
    {

      internal[49] = 0;
    }

    v7 = internal[48];
    if (v7)
    {

      internal[48] = 0;
    }
  }
}

- (void)setShowsDeviceMovementDisplay:(BOOL)showsDeviceMovementDisplay
{
  v5 = sub_19B420D84();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_19B62E82C;
  v6[3] = &unk_1E75337D0;
  v6[4] = self;
  v7 = showsDeviceMovementDisplay;
  sub_19B420C9C(v5, v6);
}

- (void)setShowsDeviceMovementDisplayPrivate:(BOOL)private
{
  *(self->_internal + 432) = private;
  if (!private)
  {
    objc_msgSend_dismissDeviceMovementDisplay(self, a2, private);
  }
}

- (void)showDeviceMovementDisplay
{
  v10 = *MEMORY[0x1E69E9840];
  if ((sub_19B421620() & 0x10) == 0)
  {
    internal = self->_internal;
    if (internal[432] == 1 && internal[632] == 1 && (internal[312] & 1) == 0 && (internal[313] & 1) == 0 && internal[314] == 1)
    {
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E3A778);
      }

      v4 = off_1ED71C808;
      if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_DEFAULT, "CM: Invoking Compass Calibration HUD", buf, 2u);
      }

      v5 = sub_19B420058();
      if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C800 != -1)
        {
          dispatch_once(&qword_1ED71C800, &unk_1F0E3A778);
        }

        v8[0] = 0;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C808, 0, "CM: Invoking Compass Calibration HUD", v8, 2);
        v7 = v6;
        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMotionManager showDeviceMovementDisplay]", "CoreLocation: %s\n", v6);
        if (v7 != buf)
        {
          free(v7);
        }
      }

      if (sub_19B6F395C())
      {
        internal[312] = 1;
      }
    }
  }
}

- (id)initUsing6AxisSensorFusion
{
  result = objc_msgSend_init(self, a2, v2);
  if (result)
  {
    v4 = *(result + 1);
    *(v4 + 536) = 256;
    *(v4 + 538) = 1;
  }

  return result;
}

- (void)setAccelerometerDataCallback:(void *)callback info:(void *)info interval:(double)interval
{
  intervalCopy = interval;
  Current = CFRunLoopGetCurrent();
  sub_19B420D84();
  if (Current == *qword_1ED71C908)
  {
    if (objc_msgSend_isAccelerometerAvailable(self, v10, v11))
    {
      internal = self->_internal;
      internal[56] = callback;
      internal[57] = info;
      v14 = internal[55];
      if (interval <= 0.0)
      {
        if (v14)
        {
          v16 = sub_19B4249E4();
          sub_19B426A14(v16, 0, internal[55]);
          v17 = internal[55];
          if (v17)
          {
            (*(*v17 + 8))(v17);
          }

          internal[55] = 0;
        }
      }

      else
      {
        if (!v14)
        {
          operator new();
        }

        v15 = sub_19B4249E4();
        sub_19B44E2F8(v15, 0, internal[55], &intervalCopy);
      }
    }
  }

  else
  {
    v12 = sub_19B420D84();
    if (interval <= 0.0)
    {
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = sub_19B62ECF8;
      v19[3] = &unk_1E75337F8;
      v19[4] = self;
      v19[5] = callback;
      v19[6] = info;
      *&v19[7] = interval;
      sub_19B420C9C(v12, v19);
    }

    else
    {
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = sub_19B62ED0C;
      v18[3] = &unk_1E75337F8;
      v18[4] = self;
      v18[5] = callback;
      v18[6] = info;
      *&v18[7] = interval;
      sub_19B421668(v12, v18);
    }
  }
}

- (void)setGyroDataCallback:(void *)callback info:(void *)info interval:(double)interval
{
  intervalCopy = interval;
  Current = CFRunLoopGetCurrent();
  sub_19B420D84();
  if (Current == *qword_1ED71C908)
  {
    if ((sub_19B4215D8() & 1) == 0 && (sub_19B421620() & 0x200000) == 0)
    {
      internal = self->_internal;
      internal[59] = callback;
      internal[60] = info;
      v12 = internal[58];
      if (interval <= 0.0)
      {
        if (v12)
        {
          v14 = sub_19B42AD98();
          sub_19B426A14(v14, 0, internal[58]);
          v15 = internal[58];
          if (v15)
          {
            (*(*v15 + 8))(v15);
          }

          internal[58] = 0;
        }
      }

      else
      {
        if (!v12)
        {
          operator new();
        }

        v13 = sub_19B42AD98();
        sub_19B44E2F8(v13, 0, internal[58], &intervalCopy);
      }
    }
  }

  else
  {
    v10 = sub_19B420D84();
    if (interval <= 0.0)
    {
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = sub_19B62EF90;
      v17[3] = &unk_1E75337F8;
      v17[4] = self;
      v17[5] = callback;
      v17[6] = info;
      *&v17[7] = interval;
      sub_19B420C9C(v10, v17);
    }

    else
    {
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = sub_19B62EFA4;
      v16[3] = &unk_1E75337F8;
      v16[4] = self;
      v16[5] = callback;
      v16[6] = info;
      *&v16[7] = interval;
      sub_19B421668(v10, v16);
    }
  }
}

- (void)setMagnetometerDataCallback:(void *)callback info:(void *)info interval:(double)interval
{
  intervalCopy = interval;
  Current = CFRunLoopGetCurrent();
  sub_19B420D84();
  if (Current == *qword_1ED71C908)
  {
    if (sub_19B4215D8() & 1) == 0 && (sub_19B423E34())
    {
      internal = self->_internal;
      internal[62] = callback;
      internal[63] = info;
      v12 = internal[61];
      if (interval <= 0.0)
      {
        if (v12)
        {
          v14 = sub_19B673618();
          sub_19B426A14(v14, 0, internal[61]);
          v15 = internal[61];
          if (v15)
          {
            (*(*v15 + 8))(v15);
          }

          internal[61] = 0;
        }
      }

      else
      {
        if (!v12)
        {
          operator new();
        }

        v13 = sub_19B673618();
        sub_19B44E2F8(v13, 0, internal[61], &intervalCopy);
      }
    }
  }

  else
  {
    v10 = sub_19B420D84();
    if (interval <= 0.0)
    {
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = sub_19B62F228;
      v17[3] = &unk_1E75337F8;
      v17[4] = self;
      v17[5] = callback;
      v17[6] = info;
      *&v17[7] = interval;
      sub_19B420C9C(v10, v17);
    }

    else
    {
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = sub_19B62F23C;
      v16[3] = &unk_1E75337F8;
      v16[4] = self;
      v16[5] = callback;
      v16[6] = info;
      *&v16[7] = interval;
      sub_19B421668(v10, v16);
    }
  }
}

- (void)setDeviceMotionCallback:(void *)callback info:(void *)info interval:(double)interval fsync:(BOOL)fsync
{
  fsyncCopy = fsync;
  v56 = *MEMORY[0x1E69E9840];
  Current = CFRunLoopGetCurrent();
  sub_19B420D84();
  if (Current == *qword_1ED71C908)
  {
    if (objc_msgSend_isDeviceMotionAvailable(self, v12, v13))
    {
      internal = self->_internal;
      internal[65] = callback;
      internal[66] = info;
      v25 = internal[64];
      if (interval <= 0.0)
      {
        if (v25)
        {
          v27 = sub_19B424AE0();
          sub_19B425248(v27, internal[64]);
          v28 = internal[64];
          if (v28)
          {
            (*(*v28 + 8))(v28);
          }

          internal[64] = 0;
        }
      }

      else
      {
        if (!v25)
        {
          objc_msgSend_updateDeviceMotionMode(self, v22, v23);
          v29 = [CLDeviceMotionProperties alloc];
          objc_msgSend_initWithMode_(v29, v30, *(internal + 74));
          operator new();
        }

        v26 = sub_19B424AE0();
        sub_19B44DE40(v26, internal[64], interval);
      }

      v31 = sub_19B42AD98();

      sub_19B42A614(v31, fsyncCopy);
    }
  }

  else
  {
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E3A778);
    }

    v14 = off_1ED71C808;
    if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_INFO))
    {
      sub_19B420D84();
      v15 = *_CFGetProgname();
      *buf = 136447234;
      v47 = v15;
      v48 = 2050;
      callbackCopy = callback;
      v50 = 2050;
      infoCopy = info;
      v52 = 2050;
      intervalCopy = interval;
      v54 = 1026;
      v55 = fsyncCopy;
      _os_log_impl(&dword_19B41C000, v14, OS_LOG_TYPE_INFO, "%{public}s calling setDeviceMotionCallback:%{public}p info:%{public}p interval:%{public}f fsync:%{public}d", buf, 0x30u);
    }

    v16 = sub_19B420058();
    if (*(v16 + 160) > 1 || *(v16 + 164) > 1 || *(v16 + 168) > 1 || *(v16 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E3A778);
      }

      v17 = off_1ED71C808;
      sub_19B420D84();
      v18 = *_CFGetProgname();
      v36 = 136447234;
      v37 = v18;
      v38 = 2050;
      callbackCopy2 = callback;
      v40 = 2050;
      infoCopy2 = info;
      v42 = 2050;
      intervalCopy2 = interval;
      v44 = 1026;
      v45 = fsyncCopy;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v17, 1, "%{public}s calling setDeviceMotionCallback:%{public}p info:%{public}p interval:%{public}f fsync:%{public}d", &v36, 48);
      v20 = v19;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMotionManager setDeviceMotionCallback:info:interval:fsync:]", "CoreLocation: %s\n", v19);
      if (v20 != buf)
      {
        free(v20);
      }
    }

    v21 = sub_19B420D84();
    if (interval <= 0.0)
    {
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = sub_19B62F730;
      v34[3] = &unk_1E7533820;
      v34[4] = self;
      v34[5] = callback;
      v34[6] = info;
      *&v34[7] = interval;
      v35 = fsyncCopy;
      sub_19B420C9C(v21, v34);
    }

    else
    {
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = sub_19B62F748;
      v32[3] = &unk_1E7533820;
      v32[4] = self;
      v32[5] = callback;
      v32[6] = info;
      *&v32[7] = interval;
      v33 = fsyncCopy;
      sub_19B421668(v21, v32);
    }
  }
}

- (void)setDisplayGravityHandler:(id)handler interval:(double)interval
{
  v31 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_isDisplayGravityAvailable(self, a2, handler))
  {
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E3A778);
    }

    v7 = off_1ED71C808;
    if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_INFO))
    {
      sub_19B420D84();
      v8 = *_CFGetProgname();
      *buf = 136446722;
      *v28 = v8;
      *&v28[8] = 2050;
      *&v28[10] = handler;
      v29 = 2050;
      intervalCopy = interval;
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_INFO, "%{public}s calling _setDisplayGravityHandler:%{public}p interval:%{public}f", buf, 0x20u);
    }

    v9 = sub_19B420058();
    if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E3A778);
      }

      v10 = off_1ED71C808;
      sub_19B420D84();
      v11 = *_CFGetProgname();
      *location = 136446722;
      *&location[4] = v11;
      v23 = 2050;
      handlerCopy = handler;
      v25 = 2050;
      intervalCopy2 = interval;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v10, 1, "%{public}s calling _setDisplayGravityHandler:%{public}p interval:%{public}f", location, 32);
      v13 = v12;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMotionManager setDisplayGravityHandler:interval:]", "CoreLocation: %s\n", v12);
      if (v13 != buf)
      {
        free(v13);
      }
    }

    objc_initWeak(location, self);
    if (handler && interval > 0.0)
    {
      objc_msgSend_setFDisplayGravityHandler_(self->_internal, v14, handler);
      v15 = sub_19B420D84();
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3321888768;
      v18[2] = sub_19B62FBBC;
      v18[3] = &unk_1F0E3A728;
      objc_copyWeak(buf, location);
      v16 = v19;
      *&v28[4] = interval;
      objc_copyWeak(v19, buf);
      v19[1] = *&v28[4];
      sub_19B421668(v15, v18);
      objc_destroyWeak(buf);
    }

    else
    {
      v17 = sub_19B420D84();
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3321888768;
      v20[2] = sub_19B62FB1C;
      v20[3] = &unk_1F0E3A6F8;
      objc_copyWeak(buf, location);
      v16 = &v21;
      objc_copyWeak(&v21, buf);
      sub_19B421668(v17, v20);
      objc_destroyWeak(buf);
    }

    objc_destroyWeak(v16);
    objc_destroyWeak(location);
  }
}

- (void)connect
{
  internal = self->_internal;
  if (!internal[68])
  {
    internal[69] = dispatch_queue_create("com.apple.CoreMotion.CMMotionManager", 0);
    operator new();
  }
}

- (BOOL)setSidebandSensorFusionEnable:(BOOL)enable measureLatency:(BOOL)latency withSnoopHandler:(id)handler
{
  latencyCopy = latency;
  enableCopy = enable;
  v37 = *MEMORY[0x1E69E9840];
  Current = CFRunLoopGetCurrent();
  sub_19B420D84();
  if (Current == *qword_1ED71C908)
  {
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E3A778);
    }

    v12 = off_1ED71C808;
    if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67240704;
      *&buf[4] = enableCopy;
      LOWORD(v34) = 1026;
      *(&v34 + 2) = latencyCopy;
      HIWORD(v34) = 1026;
      LODWORD(v35) = handler != 0;
      _os_log_impl(&dword_19B41C000, v12, OS_LOG_TYPE_DEFAULT, "[SidebandSensorFusion] requesting from framework,enabled,%{public}d,measureLatency,%{public}d,snoop,%{public}d", buf, 0x14u);
    }

    v13 = sub_19B420058();
    if (*(v13 + 160) > 1 || *(v13 + 164) > 1 || *(v13 + 168) > 1 || *(v13 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E3A778);
      }

      v28[0] = 67240704;
      v28[1] = enableCopy;
      v29 = 1026;
      v30 = latencyCopy;
      v31 = 1026;
      v32 = handler != 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C808, 0, "[SidebandSensorFusion] requesting from framework,enabled,%{public}d,measureLatency,%{public}d,snoop,%{public}d", v28, 20);
      v17 = v16;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMotionManager setSidebandSensorFusionEnable:measureLatency:withSnoopHandler:]", "CoreLocation: %s\n", v16);
      if (v17 != buf)
      {
        free(v17);
      }
    }

    objc_msgSend_connect(self, v14, v15);
    CFAbsoluteTimeGetCurrent();
    v26[0] = @"CMSidebandSensorFusionEnable";
    v27[0] = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v18, enableCopy);
    v26[1] = @"CMSidebandSensorFusionLatency";
    v27[1] = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v19, latencyCopy);
    v26[2] = @"CMSidebandSensorFusionSnoop";
    v27[2] = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v20, handler != 0);
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v21, v27, v26, 3);
    sub_19B639BD4();
  }

  *buf = 0;
  v34 = buf;
  v35 = 0x2020000000;
  v36 = 0;
  v10 = sub_19B420D84();
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = sub_19B631454;
  v23[3] = &unk_1E7533848;
  v23[5] = handler;
  v23[6] = buf;
  v24 = enableCopy;
  v25 = latencyCopy;
  v23[4] = self;
  sub_19B420C9C(v10, v23);
  v11 = v34[24];
  _Block_object_dispose(buf, 8);
  return v11 & 1;
}

- (void)setSidebandTimeSyncHandler:(id)handler
{
  v54 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_isSidebandSensorFusionAvailable(self, a2, handler))
  {
    internal = self->_internal;
    if (handler)
    {
      v44 = 0;
      v45[0] = &v44;
      v45[1] = 0x2020000000;
      v45[2] = 0;
      v42 = 0;
      v43[0] = &v42;
      v43[1] = 0x2020000000;
      v43[2] = 0;
      if (!*(internal + 136))
      {
        *(internal + 136) = dispatch_semaphore_create(0);
      }

      v6 = sub_19B420D84();
      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = sub_19B631C4C;
      v41[3] = &unk_1E7533898;
      v41[4] = internal;
      v41[5] = &v44;
      v41[6] = &v42;
      sub_19B420C9C(v6, v41);
      v7 = dispatch_queue_create("OscarTimeWait", 0);
      v39 = 0;
      v40[0] = &v39;
      v40[1] = 0x2020000000;
      v40[2] = 0;
      v37 = 0;
      v38[0] = &v37;
      v38[1] = 0x2020000000;
      v38[2] = 0;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_19B631F14;
      block[3] = &unk_1E75338C0;
      block[4] = &v39;
      block[5] = &v37;
      v8 = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, block);
      object = v7;
      dispatch_async(v7, v8);
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E3A778);
      }

      v9 = off_1ED71C808;
      if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_DEFAULT, "[MotionManager] setSidebandTimeSyncHandler: Waiting for time sync", buf, 2u);
      }

      v10 = sub_19B420058();
      if (*(v10 + 160) > 1 || *(v10 + 164) > 1 || *(v10 + 168) > 1 || *(v10 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C800 != -1)
        {
          dispatch_once(&qword_1ED71C800, &unk_1F0E3A778);
        }

        LOWORD(v46) = 0;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C808, 0, "[MotionManager] setSidebandTimeSyncHandler: Waiting for time sync", &v46, 2, object);
        v12 = v11;
        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMotionManager setSidebandTimeSyncHandler:]", "CoreLocation: %s\n", v11);
        if (v12 != buf)
        {
          free(v12);
        }
      }

      v13 = v45;
      v14 = v43;
      while (dispatch_semaphore_wait(*(internal + 136), 0))
      {
        v15 = dispatch_time(0, 250000000);
        if (!dispatch_block_wait(v8, v15))
        {
          if (qword_1ED71C800 != -1)
          {
            dispatch_once(&qword_1ED71C800, &unk_1F0E3A778);
          }

          v24 = off_1ED71C808;
          if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEFAULT))
          {
            v25 = *(v40[0] + 24);
            v26 = *(v38[0] + 24);
            *buf = 134218240;
            v51 = v25;
            v52 = 2048;
            v53 = v26;
            _os_log_impl(&dword_19B41C000, v24, OS_LOG_TYPE_DEFAULT, "[MotionManager] setSidebandTimeSyncHandler: locationd TimeSync machTimestamp,%llu,oscarTimestamp,%llu", buf, 0x16u);
          }

          v27 = sub_19B420058();
          if (*(v27 + 160) > 1 || *(v27 + 164) > 1 || *(v27 + 168) > 1 || *(v27 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1ED71C800 != -1)
            {
              dispatch_once(&qword_1ED71C800, &unk_1F0E3A778);
            }

            v28 = *(v40[0] + 24);
            v29 = *(v38[0] + 24);
            v46 = 134218240;
            v47 = v28;
            v48 = 2048;
            v49 = v29;
            LODWORD(v33) = 22;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C808, 0, "[MotionManager] setSidebandTimeSyncHandler: locationd TimeSync machTimestamp,%llu,oscarTimestamp,%llu", &v46, v33);
            v31 = v30;
            sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMotionManager setSidebandTimeSyncHandler:]", "CoreLocation: %s\n", v30);
            if (v31 != buf)
            {
              free(v31);
            }
          }

          v13 = v40;
          v14 = v38;
          goto LABEL_46;
        }

        usleep(0x2710u);
      }

      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E3A778);
      }

      v16 = off_1ED71C808;
      if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEFAULT))
      {
        v17 = *(v45[0] + 24);
        v18 = *(v43[0] + 24);
        *buf = 134218240;
        v51 = v17;
        v52 = 2048;
        v53 = v18;
        _os_log_impl(&dword_19B41C000, v16, OS_LOG_TYPE_DEFAULT, "[MotionManager] setSidebandTimeSyncHandler: Framework TimeSync machTimestamp,%llu,oscarTimestamp,%llu", buf, 0x16u);
      }

      v19 = sub_19B420058();
      if (*(v19 + 160) > 1 || *(v19 + 164) > 1 || *(v19 + 168) > 1 || *(v19 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C800 != -1)
        {
          dispatch_once(&qword_1ED71C800, &unk_1F0E3A778);
        }

        v20 = *(v45[0] + 24);
        v21 = *(v43[0] + 24);
        v46 = 134218240;
        v47 = v20;
        v48 = 2048;
        v49 = v21;
        LODWORD(v33) = 22;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C808, 0, "[MotionManager] setSidebandTimeSyncHandler: Framework TimeSync machTimestamp,%llu,oscarTimestamp,%llu", &v46, v33);
        v23 = v22;
        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMotionManager setSidebandTimeSyncHandler:]", "CoreLocation: %s\n", v22);
        if (v23 != buf)
        {
          free(v23);
        }
      }

LABEL_46:
      (*(handler + 2))(handler, *(*v13 + 24), *(*v14 + 24));
      dispatch_release(object);
      _Block_release(v8);
      _Block_object_dispose(&v37, 8);
      _Block_object_dispose(&v39, 8);
      _Block_object_dispose(&v42, 8);
      _Block_object_dispose(&v44, 8);
    }

    if (*(internal + 71))
    {
      v32 = sub_19B420D84();
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = sub_19B631F2C;
      v35[3] = &unk_1E7532B68;
      v35[4] = internal;
      v35[5] = handler;
      sub_19B420C9C(v32, v35);
    }
  }
}

- (BOOL)shouldResetStartingReference
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = sub_19B420D84();
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_19B632094;
  v5[3] = &unk_1E75338E8;
  v5[4] = self;
  v5[5] = &v6;
  sub_19B420C9C(v3, v5);
  LOBYTE(self) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return self;
}

- (void)setShouldResetStartingReference:(BOOL)reference
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v5 = sub_19B420D84();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_19B6321A4;
  v7[3] = &unk_1E7533910;
  v7[4] = self;
  v7[5] = &v9;
  referenceCopy = reference;
  sub_19B420C9C(v5, v7);
  if (*(v10 + 24) == 1)
  {
    objc_msgSend_raise_format_(MEMORY[0x1E695DF30], v6, *MEMORY[0x1E695D940], @"Changing starting reference reset policy is only supported when device motion isn't active.");
  }

  _Block_object_dispose(&v9, 8);
}

- (void)setPowerConservationMode:(int)mode
{
  internal = self->_internal;
  v6 = sub_19B420D84();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_19B632288;
  v7[3] = &unk_1E7533938;
  v7[4] = self;
  v7[5] = internal;
  modeCopy = mode;
  sub_19B421668(v6, v7);
}

- (void)setNotificationCallback:(void *)callback info:(void *)info
{
  if ((callback != 0) != (info != 0))
  {
    v14 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, callback);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v14, v15, a2, self, @"CMMotionManager.mm", 2887, @"[CMMotionManager setNotificationCallback:info:] won't take these parameters.");
  }

  if (objc_msgSend_isDeviceMotionAvailable(self, a2, callback))
  {
    Current = CFRunLoopGetCurrent();
    sub_19B420D84();
    if (Current == *qword_1ED71C908)
    {
      internal = self->_internal;
      v10 = internal[74];
      if (v10 != callback || internal[75] != info)
      {
        if (v10 || internal[75])
        {
          v11 = sub_19B424AE0();
          sub_19B426A14(v11, 6, internal[76]);
          v12 = internal[76];
          if (v12)
          {
            (*(*v12 + 8))(v12);
          }

          internal[76] = 0;
        }

        internal[74] = callback;
        internal[75] = info;
        if (callback)
        {
          operator new();
        }
      }
    }

    else
    {
      v8 = sub_19B420D84();
      if (callback)
      {
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = sub_19B6326DC;
        v17[3] = &unk_1E7533448;
        v17[4] = self;
        v17[5] = callback;
        v17[6] = info;
        sub_19B421668(v8, v17);
      }

      else
      {
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = sub_19B6326EC;
        v16[3] = &unk_1E7532988;
        v16[4] = self;
        sub_19B420C9C(v8, v16);
      }
    }
  }
}

- (BOOL)setMotionThreadPriority:(int)priority
{
  v4 = sub_19B420D84();

  return sub_19B6780E0(v4, priority);
}

- (void)_startDeviceMotionErrorUpdatesToQueue:(id)queue withHandler:(id)handler
{
  v8 = sub_19B420D84();
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_19B6327C8;
  v9[3] = &unk_1E7533780;
  v9[4] = queue;
  v9[5] = self;
  v9[6] = handler;
  v9[7] = a2;
  sub_19B420C9C(v8, v9);
}

- (void)_stopDeviceMotionErrorUpdates
{
  v3 = sub_19B420D84();
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_19B632974;
  v4[3] = &unk_1E7532988;
  v4[4] = self;
  sub_19B420C9C(v3, v4);
}

- (id)predictedDeviceMotionAtTimestamp:(double)timestamp error:(id *)error
{
  errorCopy = error;
  v83 = *MEMORY[0x1E69E9840];
  if ((objc_msgSend_isPredictedDeviceMotionAvailable(self, a2, error) & 1) == 0)
  {
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E3A778);
    }

    v55 = off_1ED71C808;
    p_vtable = "";
    internal = "assert";
    if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = "assert";
      *&buf[28] = 2081;
      *&buf[30] = "[self isPredictedDeviceMotionAvailable]";
      _os_log_impl(&dword_19B41C000, v55, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Predicted device motion is not available! Check [CMMotionManager isPredictedDeviceMotionAvailable] before making this call, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E3A778);
      }
    }

    v56 = off_1ED71C808;
    if (os_signpost_enabled(off_1ED71C808))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = "assert";
      *&buf[28] = 2081;
      *&buf[30] = "[self isPredictedDeviceMotionAvailable]";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v56, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Predicted device motion is not available! Check [CMMotionManager isPredictedDeviceMotionAvailable] before making this call", "{msg%{public}.0s:Predicted device motion is not available! Check [CMMotionManager isPredictedDeviceMotionAvailable] before making this call, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E3A778);
      }
    }

    errorCopy = off_1ED71C808;
    if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = "assert";
      *&buf[28] = 2081;
      *&buf[30] = "[self isPredictedDeviceMotionAvailable]";
      _os_log_impl(&dword_19B41C000, errorCopy, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Predicted device motion is not available! Check [CMMotionManager isPredictedDeviceMotionAvailable] before making this call, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Framework/CoreMotion/Sensor/CMMotionManager.mm", 3003, "[CMMotionManager predictedDeviceMotionAtTimestamp:error:]");
    goto LABEL_80;
  }

  internal = self->_internal;
  if (!*(internal + 74))
  {
    errorCopy->isa = objc_msgSend_CMErrorWithCode_(CMErrorUtils, v7, 109);
    p_vtable = CMDeviceOrientationManager.vtable;
    if (qword_1ED71C800 == -1)
    {
LABEL_45:
      v43 = off_1ED71C808;
      if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEBUG))
      {
        v44.isa = errorCopy->isa;
        v45 = *(internal + 74);
        *buf = 138412546;
        *&buf[4] = v44;
        *&buf[12] = 1024;
        *&buf[14] = v45;
        _os_log_impl(&dword_19B41C000, v43, OS_LOG_TYPE_DEBUG, "Predicted CMDeviceMotion: %@,mode,%d", buf, 0x12u);
      }

      v46 = sub_19B420058();
      if (*(v46 + 160) <= 1 && *(v46 + 164) <= 1 && *(v46 + 168) <= 1 && !*(v46 + 152))
      {
        return 0;
      }

      bzero(buf, 0x65CuLL);
      if (p_vtable[256] != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E3A778);
      }

      v47.isa = errorCopy->isa;
      v48 = *(internal + 74);
      *v68 = 138412546;
      *&v68[4] = v47;
      *&v68[12] = 1024;
      *&v68[14] = v48;
      LODWORD(v57) = 18;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C808, 2, "Predicted CMDeviceMotion: %@,mode,%d", v68, v57);
      goto LABEL_65;
    }

LABEL_80:
    dispatch_once(&qword_1ED71C800, &unk_1F0E3A778);
    goto LABEL_45;
  }

  v78 = 0;
  v59 = 100;
  v58 = 0xBFF0000000000000;
  v9 = sub_19B424AE0();
  *v10.i64 = timestamp;
  sub_19B7201A0(v9, *(internal + 74), v68, &v59, &v58, v10);
  objc_msgSend_applyNorthReference_(self, v11, v68);
  if (*(internal + 38) == 8 && *(sub_19B424AE0() + 96) < 0.0)
  {
    errorCopy->isa = objc_msgSend_CMErrorWithCode_(CMErrorUtils, v12, 102);
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E3A778);
    }

    v13 = off_1ED71C808;
    if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEBUG))
    {
      v14.isa = errorCopy->isa;
      *buf = 138412290;
      *&buf[4] = v14;
      _os_log_impl(&dword_19B41C000, v13, OS_LOG_TYPE_DEBUG, "Predicted CMDeviceMotion: %@", buf, 0xCu);
    }

    v15 = sub_19B420058();
    if (*(v15 + 160) <= 1 && *(v15 + 164) <= 1 && *(v15 + 168) <= 1 && !*(v15 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E3A778);
    }

    v16.isa = errorCopy->isa;
    v60 = 138412290;
    isa = v16.isa;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C808, 2, "Predicted CMDeviceMotion: %@", &v60, 12);
LABEL_65:
    v53 = v17;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMotionManager predictedDeviceMotionAtTimestamp:error:]", "CoreLocation: %s\n", v17);
    if (v53 != buf)
    {
      free(v53);
    }

    return 0;
  }

  if ((objc_msgSend_deviceMotionInitialized_(CMMotionManager, v12, v68) & 1) == 0)
  {
    errorCopy->isa = objc_msgSend_CMErrorWithCode_(CMErrorUtils, v18, 109);
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E3A778);
    }

    v49 = off_1ED71C808;
    if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEBUG))
    {
      v50.isa = errorCopy->isa;
      *buf = 138413058;
      *&buf[4] = v50;
      *&buf[12] = 2048;
      *&buf[14] = v58;
      *&buf[22] = 2048;
      *&buf[24] = timestamp;
      *&buf[32] = 1024;
      *&buf[34] = v78;
      _os_log_impl(&dword_19B41C000, v49, OS_LOG_TYPE_DEBUG, "Predicted CMDeviceMotion: %@,lastSampleTimestamp,%f,timestamp,%f,status,%#02x", buf, 0x26u);
    }

    v51 = sub_19B420058();
    if (*(v51 + 160) <= 1 && *(v51 + 164) <= 1 && *(v51 + 168) <= 1 && !*(v51 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E3A778);
    }

    v52.isa = errorCopy->isa;
    v60 = 138413058;
    isa = v52.isa;
    v62 = 2048;
    v63 = v58;
    v64 = 2048;
    timestampCopy = timestamp;
    v66 = 1024;
    v67 = v78;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C808, 2, "Predicted CMDeviceMotion: %@,lastSampleTimestamp,%f,timestamp,%f,status,%#02x", &v60, 38);
    goto LABEL_65;
  }

  if (objc_msgSend_northAlignedReferenceFrame_(CMMotionManager, v18, *(internal + 38)) && DWORD1(v72) != -1 && SDWORD1(v72) <= 0)
  {
    errorCopy->isa = objc_msgSend_CMErrorWithCode_(CMErrorUtils, v19, 101);
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E3A778);
    }

    v20 = off_1ED71C808;
    if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEBUG))
    {
      v21.isa = errorCopy->isa;
      *buf = 138412546;
      *&buf[4] = v21;
      *&buf[12] = 2048;
      *&buf[14] = v58;
      _os_log_impl(&dword_19B41C000, v20, OS_LOG_TYPE_DEBUG, "Predicted CMDeviceMotion: %@,lastSampleTimestamp,%f", buf, 0x16u);
    }

    v22 = sub_19B420058();
    if (*(v22 + 160) > 1 || *(v22 + 164) > 1 || *(v22 + 168) > 1 || *(v22 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E3A778);
      }

      v23.isa = errorCopy->isa;
      v60 = 138412546;
      isa = v23.isa;
      v62 = 2048;
      v63 = v58;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C808, 2, "Predicted CMDeviceMotion: %@,lastSampleTimestamp,%f", &v60, 22);
      v25 = v24;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMotionManager predictedDeviceMotionAtTimestamp:error:]", "CoreLocation: %s\n", v24);
      if (v25 != buf)
      {
        free(v25);
      }
    }
  }

  v26 = [CMDeviceMotion alloc];
  *&buf[32] = v70;
  v80 = v71;
  v81 = v72;
  v82 = v73;
  *buf = *&v68[8];
  *&buf[16] = v69;
  LODWORD(v27) = v76;
  LODWORD(v28) = v77;
  v30 = objc_msgSend_initWithDeviceMotion_internal_timestamp_(v26, v29, buf, COERCE_DOUBLE(__PAIR64__(*&v68[12], v74)), COERCE_DOUBLE(__PAIR64__(DWORD1(v69), v75)), v27, v28, *v68);
  if (qword_1ED71C800 != -1)
  {
    dispatch_once(&qword_1ED71C800, &unk_1F0E3A778);
  }

  v31 = off_1ED71C808;
  if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEBUG))
  {
    v32 = v58;
    v33 = mach_absolute_time();
    v34 = sub_19B41E070(v33);
    *buf = 138412802;
    *&buf[4] = v30;
    *&buf[12] = 2048;
    *&buf[14] = v32;
    *&buf[22] = 2048;
    *&buf[24] = v34;
    _os_log_impl(&dword_19B41C000, v31, OS_LOG_TYPE_DEBUG, "Predicted CMDeviceMotion: %@,lastSampleTimestamp,%f,now,%f", buf, 0x20u);
  }

  v35 = sub_19B420058();
  if (*(v35 + 160) > 1 || *(v35 + 164) > 1 || *(v35 + 168) > 1 || *(v35 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E3A778);
    }

    v36 = off_1ED71C808;
    v37 = v58;
    v38 = mach_absolute_time();
    v39 = sub_19B41E070(v38);
    v60 = 138412802;
    isa = v30;
    v62 = 2048;
    v63 = v37;
    v64 = 2048;
    timestampCopy = v39;
    LODWORD(v57) = 32;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v36, 2, "Predicted CMDeviceMotion: %@,lastSampleTimestamp,%f,now,%f", &v60, v57);
    v41 = v40;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMotionManager predictedDeviceMotionAtTimestamp:error:]", "CoreLocation: %s\n", v40);
    if (v41 != buf)
    {
      free(v41);
    }
  }

  return v30;
}

- (void)onAccelerometer:(const Sample *)accelerometer
{
  v34 = *MEMORY[0x1E69E9840];
  internal = self->_internal;
  os_unfair_lock_lock(internal + 2);
  v5 = *&accelerometer->timestamp;
  *(internal + 9) = *&accelerometer->acceleration.z;
  *(internal + 56) = v5;
  os_unfair_lock_unlock(internal + 2);
  if (*(internal + 5))
  {
    if (*(internal + 4))
    {
      if (accelerometer->timestamp > 0.0)
      {
        v6 = *(internal + 6);
        if (v6 <= 0.0 || accelerometer->timestamp - v6 - *(internal + 3) >= *(internal + 3) * -0.1)
        {
          v7 = objc_autoreleasePoolPush();
          v8 = [CMAccelerometerData alloc];
          *&v9 = accelerometer->acceleration.x;
          *&v10 = accelerometer->acceleration.y;
          *&v11 = accelerometer->acceleration.z;
          v14 = objc_msgSend_initWithAcceleration_andTimestamp_(v8, v12, v13, v9, v10, v11, accelerometer->timestamp);
          v15 = *(internal + 4);
          if (qword_1ED71C800 != -1)
          {
            dispatch_once(&qword_1ED71C800, &unk_1F0E3A778);
          }

          v16 = off_1ED71C808;
          if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEBUG))
          {
            v17 = mach_absolute_time();
            *buf = 138412546;
            v31 = v14;
            v32 = 2048;
            v33 = sub_19B41E070(v17);
            _os_log_impl(&dword_19B41C000, v16, OS_LOG_TYPE_DEBUG, "CMAccelerometerData: %@,now,%f", buf, 0x16u);
          }

          v18 = sub_19B420058();
          if (*(v18 + 160) > 1 || *(v18 + 164) > 1 || *(v18 + 168) > 1 || *(v18 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1ED71C800 != -1)
            {
              dispatch_once(&qword_1ED71C800, &unk_1F0E3A778);
            }

            v20 = off_1ED71C808;
            v21 = mach_absolute_time();
            v26 = 138412546;
            v27 = v14;
            v28 = 2048;
            v29 = sub_19B41E070(v21);
            _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v20, 2, "CMAccelerometerData: %@,now,%f", &v26, 22);
            v23 = v22;
            sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMotionManager onAccelerometer:]", "CoreLocation: %s\n", v22);
            if (v23 != buf)
            {
              free(v23);
            }
          }

          v24 = *(internal + 5);
          v25[0] = MEMORY[0x1E69E9820];
          v25[1] = 3221225472;
          v25[2] = sub_19B6337B0;
          v25[3] = &unk_1E7532B90;
          v25[4] = v14;
          v25[5] = v15;
          objc_msgSend_addOperationWithBlock_(v24, v19, v25);

          objc_autoreleasePoolPop(v7);
          *(internal + 6) = *&accelerometer->timestamp;
        }
      }
    }
  }
}

- (void)onGyro:(const Sample *)gyro
{
  v34 = *MEMORY[0x1E69E9840];
  internal = self->_internal;
  os_unfair_lock_lock(internal + 2);
  v5 = *&gyro->timestamp;
  *(internal + 31) = *&gyro->acceleration.z;
  *(internal + 232) = v5;
  os_unfair_lock_unlock(internal + 2);
  if (*(internal + 27))
  {
    if (*(internal + 26))
    {
      if (gyro->timestamp > 0.0)
      {
        v6 = *(internal + 28);
        if (v6 <= 0.0 || gyro->timestamp - v6 - *(internal + 25) >= *(internal + 25) * -0.1)
        {
          v7 = objc_autoreleasePoolPush();
          v8 = [CMGyroData alloc];
          *&v9 = gyro->acceleration.x;
          *&v10 = gyro->acceleration.y;
          *&v11 = gyro->acceleration.z;
          v14 = objc_msgSend_initWithRotationRate_andTimestamp_(v8, v12, v13, v9, v10, v11, gyro->timestamp);
          v15 = *(internal + 26);
          if (qword_1ED71C800 != -1)
          {
            dispatch_once(&qword_1ED71C800, &unk_1F0E3A778);
          }

          v16 = off_1ED71C808;
          if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEBUG))
          {
            v17 = mach_absolute_time();
            *buf = 138412546;
            v31 = v14;
            v32 = 2048;
            v33 = sub_19B41E070(v17);
            _os_log_impl(&dword_19B41C000, v16, OS_LOG_TYPE_DEBUG, "CMGyroData: %@,now,%f", buf, 0x16u);
          }

          v18 = sub_19B420058();
          if (*(v18 + 160) > 1 || *(v18 + 164) > 1 || *(v18 + 168) > 1 || *(v18 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1ED71C800 != -1)
            {
              dispatch_once(&qword_1ED71C800, &unk_1F0E3A778);
            }

            v20 = off_1ED71C808;
            v21 = mach_absolute_time();
            v26 = 138412546;
            v27 = v14;
            v28 = 2048;
            v29 = sub_19B41E070(v21);
            _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v20, 2, "CMGyroData: %@,now,%f", &v26, 22);
            v23 = v22;
            sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMotionManager onGyro:]", "CoreLocation: %s\n", v22);
            if (v23 != buf)
            {
              free(v23);
            }
          }

          v24 = *(internal + 27);
          v25[0] = MEMORY[0x1E69E9820];
          v25[1] = 3221225472;
          v25[2] = sub_19B633AC8;
          v25[3] = &unk_1E7532B90;
          v25[4] = v14;
          v25[5] = v15;
          objc_msgSend_addOperationWithBlock_(v24, v19, v25);

          objc_autoreleasePoolPop(v7);
          *(internal + 28) = *&gyro->timestamp;
        }
      }
    }
  }
}

- (void)onFactoryGyro:(const Sample *)gyro
{
  v106[1] = *MEMORY[0x1E69E9840];
  internal = self->_internal;
  if (!*(internal + 87))
  {
    return;
  }

  if (!*(internal + 86))
  {
    return;
  }

  if (gyro->timestamp <= 0.0)
  {
    return;
  }

  v5 = *(internal + 88);
  if (v5 > 0.0 && gyro->timestamp - v5 - *(internal + 83) < *(internal + 83) * -0.1)
  {
    return;
  }

  context = objc_autoreleasePoolPush();
  v7 = *(internal + 86);
  v8 = *(internal + 178);
  v9 = v8 < 21475000.0 && v8 > 0.0;
  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v11 = MEMORY[0x1E696ABC0];
    v105 = *MEMORY[0x1E696A578];
    v106[0] = @"Invalid gyro temperature value.";
    v12 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v6, v106, &v105, 1);
    v10 = objc_msgSend_errorWithDomain_code_userInfo_(v11, v13, @"CMErrorDomainFactory", 8, v12);
    if (qword_1ED71C810 != -1)
    {
      dispatch_once(&qword_1ED71C810, &unk_1F0E3A898);
    }

    v14 = qword_1ED71C818;
    if (os_log_type_enabled(qword_1ED71C818, OS_LOG_TYPE_ERROR))
    {
      v15 = *(internal + 178);
      v16 = mach_absolute_time();
      *buf = 134218240;
      v100 = v15;
      v101 = 2048;
      v102 = sub_19B41E070(v16);
      _os_log_impl(&dword_19B41C000, v14, OS_LOG_TYPE_ERROR, "Invalid gyro temperature value: %f,now,%f", buf, 0x16u);
    }

    v17 = sub_19B420058();
    if ((*(v17 + 160) & 0x80000000) == 0 || (*(v17 + 164) & 0x80000000) == 0 || (*(v17 + 168) & 0x80000000) == 0 || *(v17 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C810 != -1)
      {
        dispatch_once(&qword_1ED71C810, &unk_1F0E3A898);
      }

      v18 = qword_1ED71C818;
      v19 = *(internal + 178);
      v20 = mach_absolute_time();
      v93 = 134218240;
      v94 = v19;
      v95 = 2048;
      v96 = sub_19B41E070(v20);
      LODWORD(v87) = 22;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v18, 16, "Invalid gyro temperature value: %f,now,%f", COERCE_DOUBLE(&v93), v87);
      v22 = v21;
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMMotionManager onFactoryGyro:]", "CoreLocation: %s\n", v21);
      if (v22 != buf)
      {
        free(v22);
      }
    }
  }

  if ((internal[716] & 1) == 0)
  {
    if (qword_1ED71C810 != -1)
    {
      dispatch_once(&qword_1ED71C810, &unk_1F0E3A898);
    }

    v23 = qword_1ED71C818;
    if (os_log_type_enabled(qword_1ED71C818, OS_LOG_TYPE_DEBUG))
    {
      v24 = mach_absolute_time();
      v25 = sub_19B41E070(v24);
      *buf = 134217984;
      v100 = v25;
      _os_log_impl(&dword_19B41C000, v23, OS_LOG_TYPE_DEBUG, "Fit not computed,now,%f", buf, 0xCu);
    }

    v26 = sub_19B420058();
    if (*(v26 + 160) > 1 || *(v26 + 164) > 1 || *(v26 + 168) > 1 || *(v26 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C810 != -1)
      {
        dispatch_once(&qword_1ED71C810, &unk_1F0E3A898);
      }

      v27 = qword_1ED71C818;
      v28 = mach_absolute_time();
      v29 = sub_19B41E070(v28);
      v93 = 134217984;
      v94 = v29;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v27, 2, "Fit not computed,now,%f", COERCE_DOUBLE(&v93));
      v31 = v30;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMotionManager onFactoryGyro:]", "CoreLocation: %s\n", v30);
      if (v31 != buf)
      {
        free(v31);
      }
    }
  }

  if ((v9 & internal[716]) != 1)
  {
    goto LABEL_38;
  }

  x = gyro->acceleration.x;
  y = gyro->acceleration.y;
  z = gyro->acceleration.z;
  if ((sub_19B421620() & 0x40000) != 0)
  {
    sub_19B71B784((internal + 717), *(internal + 178));
    v37 = v36 * 57.296;
    v39 = v38 * 57.296;
    v41 = v40 * 57.296;
    *(&v88 + 1) = z;
    if (qword_1ED71C810 != -1)
    {
      dispatch_once(&qword_1ED71C810, &unk_1F0E3A898);
    }

    v42 = qword_1ED71C818;
    if (os_log_type_enabled(qword_1ED71C818, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218496;
      v100 = v37;
      v101 = 2048;
      v102 = v39;
      v103 = 2048;
      v104 = v41;
      _os_log_impl(&dword_19B41C000, v42, OS_LOG_TYPE_DEBUG, "Fit bias: %f,%f,%f deg/s", buf, 0x20u);
    }

    v43 = sub_19B420058();
    if (*(v43 + 160) > 1 || *(v43 + 164) > 1 || *(v43 + 168) > 1 || *(v43 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C810 != -1)
      {
        dispatch_once(&qword_1ED71C810, &unk_1F0E3A898);
      }

      v93 = 134218496;
      v94 = v37;
      v95 = 2048;
      v96 = v39;
      v97 = 2048;
      v98 = v41;
      LODWORD(v87) = 32;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C818, 2, "Fit bias: %f,%f,%f deg/s", COERCE_DOUBLE(&v93), v87, v88);
      v45 = v44;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMotionManager onFactoryGyro:]", "CoreLocation: %s\n", v44);
      if (v45 != buf)
      {
        free(v45);
      }
    }

    v46 = x - v37;
    v47 = y - v39;
    v48 = *(&v88 + 1) - v41;
    goto LABEL_67;
  }

  if ((sub_19B421620() & 0x20000) != 0)
  {
    v49 = *(internal + 178);
    v50 = (internal + 1012);
    for (i = 250; i != 253; ++i)
    {
      v52 = *(v50 - 3);
      v53 = *v50++;
      *&v92[i - 250] = v53 + (v49 * v52);
    }

    v54 = *v92;
    v55 = *&v92[1];
    v56 = *&v92[2];
    if (qword_1ED71C810 != -1)
    {
      dispatch_once(&qword_1ED71C810, &unk_1F0E3A898);
    }

    v57 = qword_1ED71C818;
    *&v88 = v54;
    v58 = v54;
    if (os_log_type_enabled(qword_1ED71C818, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218496;
      v100 = v58;
      v101 = 2048;
      v102 = v55;
      v103 = 2048;
      v104 = v56;
      _os_log_impl(&dword_19B41C000, v57, OS_LOG_TYPE_DEBUG, "Fit bias: %f,%f,%f deg/s", buf, 0x20u);
    }

    v59 = sub_19B420058();
    if (*(v59 + 160) > 1 || *(v59 + 164) > 1 || *(v59 + 168) > 1 || *(v59 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C810 != -1)
      {
        dispatch_once(&qword_1ED71C810, &unk_1F0E3A898);
      }

      v93 = 134218496;
      v94 = v58;
      v95 = 2048;
      v96 = v55;
      v97 = 2048;
      v98 = v56;
      LODWORD(v87) = 32;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C818, 2, "Fit bias: %f,%f,%f deg/s", COERCE_DOUBLE(&v93), v87, v88);
      v61 = v60;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMotionManager onFactoryGyro:]", "CoreLocation: %s\n", v60);
      if (v61 != buf)
      {
        free(v61);
      }
    }

    v46 = x - *&v88;
    v47 = y - v55;
    v48 = z - v56;
LABEL_67:
    v62 = [CMRotationRateData alloc];
    *&v63 = v46;
    *&v64 = v47;
    *&v65 = v48;
    v35 = COERCE_DOUBLE(objc_msgSend_initWithRotationRate_andTimestamp_(v62, v66, v67, v63, v64, v65, gyro->timestamp));
    goto LABEL_68;
  }

LABEL_38:
  v35 = 0.0;
LABEL_68:
  v68 = [CMGyroData alloc];
  *&v69 = gyro->acceleration.x;
  *&v70 = gyro->acceleration.y;
  *&v71 = gyro->acceleration.z;
  v74 = COERCE_DOUBLE(objc_msgSend_initWithRotationRate_andTimestamp_(v68, v72, v73, v69, v70, v71, gyro->timestamp));
  if (qword_1ED71C810 != -1)
  {
    dispatch_once(&qword_1ED71C810, &unk_1F0E3A898);
  }

  v75 = qword_1ED71C818;
  if (os_log_type_enabled(qword_1ED71C818, OS_LOG_TYPE_DEBUG))
  {
    v76 = mach_absolute_time();
    v77 = sub_19B41E070(v76);
    *buf = 138412802;
    v100 = v35;
    v101 = 2112;
    v102 = v74;
    v103 = 2048;
    v104 = v77;
    _os_log_impl(&dword_19B41C000, v75, OS_LOG_TYPE_DEBUG, "CMFactoryGyroData: %@,%@,now,%f", buf, 0x20u);
  }

  v78 = sub_19B420058();
  if (*(v78 + 160) > 1 || *(v78 + 164) > 1 || *(v78 + 168) > 1 || *(v78 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C810 != -1)
    {
      dispatch_once(&qword_1ED71C810, &unk_1F0E3A898);
    }

    v80 = qword_1ED71C818;
    v81 = mach_absolute_time();
    v82 = sub_19B41E070(v81);
    v93 = 138412802;
    v94 = v35;
    v95 = 2112;
    v96 = v74;
    v97 = 2048;
    v98 = v82;
    LODWORD(v87) = 32;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v80, 2, "CMFactoryGyroData: %@,%@,now,%f", &v93, *&v87);
    v84 = v83;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMotionManager onFactoryGyro:]", "CoreLocation: %s\n", v83);
    if (v84 != buf)
    {
      free(v84);
    }
  }

  v85 = *(internal + 178);
  v86 = *(internal + 87);
  v90[0] = MEMORY[0x1E69E9820];
  v90[1] = 3221225472;
  v90[2] = sub_19B634584;
  v90[3] = &unk_1E7533960;
  *&v90[4] = v35;
  *&v90[5] = v74;
  v91 = v85;
  v90[6] = v10;
  v90[7] = v7;
  objc_msgSend_addOperationWithBlock_(v86, v79, v90);

  objc_autoreleasePoolPop(context);
  *(internal + 28) = *&gyro->timestamp;
}

- (void)onFactoryGyroTemperature:(const Temperature *)temperature
{
  v29 = *MEMORY[0x1E69E9840];
  internal = self->_internal;
  os_unfair_lock_lock(internal + 2);
  internal[178]._os_unfair_lock_opaque = LODWORD(temperature->var1);
  os_unfair_lock_unlock(internal + 2);
  if (qword_1ED71C810 != -1)
  {
    dispatch_once(&qword_1ED71C810, &unk_1F0E3A898);
  }

  v5 = qword_1ED71C818;
  if (os_log_type_enabled(qword_1ED71C818, OS_LOG_TYPE_DEBUG))
  {
    var1 = temperature->var1;
    var0 = temperature->var0;
    v8 = mach_absolute_time();
    *buf = 134218496;
    v24 = var1;
    v25 = 2048;
    v26 = var0;
    v27 = 2048;
    v28 = sub_19B41E070(v8);
    _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_DEBUG, "Factory gyro temp sample: %f,timestamp,%f,now,%f", buf, 0x20u);
  }

  v9 = sub_19B420058();
  if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C810 != -1)
    {
      dispatch_once(&qword_1ED71C810, &unk_1F0E3A898);
    }

    v10 = qword_1ED71C818;
    v11 = temperature->var1;
    v12 = temperature->var0;
    v13 = mach_absolute_time();
    v17 = 134218496;
    v18 = v11;
    v19 = 2048;
    v20 = v12;
    v21 = 2048;
    v22 = sub_19B41E070(v13);
    LODWORD(v16) = 32;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v10, 2, "Factory gyro temp sample: %f,timestamp,%f,now,%f", COERCE_DOUBLE(&v17), v16);
    v15 = v14;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMotionManager onFactoryGyroTemperature:]", "CoreLocation: %s\n", v14);
    if (v15 != buf)
    {
      free(v15);
    }
  }
}

- (void)onMagnetometer:(const Sample *)magnetometer
{
  v34 = *MEMORY[0x1E69E9840];
  internal = self->_internal;
  os_unfair_lock_lock(internal + 2);
  v5 = *&magnetometer->timestamp;
  *(internal + 53) = *&magnetometer->acceleration.z;
  *(internal + 408) = v5;
  os_unfair_lock_unlock(internal + 2);
  if (*(internal + 49))
  {
    if (*(internal + 48))
    {
      if (magnetometer->timestamp > 0.0)
      {
        v6 = *(internal + 50);
        if (v6 <= 0.0 || magnetometer->timestamp - v6 - *(internal + 47) >= *(internal + 47) * -0.1)
        {
          v7 = objc_autoreleasePoolPush();
          v8 = [CMMagnetometerData alloc];
          *&v9 = magnetometer->acceleration.x;
          *&v10 = magnetometer->acceleration.y;
          *&v11 = magnetometer->acceleration.z;
          v14 = objc_msgSend_initWithMagneticField_andTimestamp_(v8, v12, v13, v9, v10, v11, magnetometer->timestamp);
          v15 = *(internal + 48);
          if (qword_1ED71C800 != -1)
          {
            dispatch_once(&qword_1ED71C800, &unk_1F0E3A778);
          }

          v16 = off_1ED71C808;
          if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEBUG))
          {
            v17 = mach_absolute_time();
            *buf = 138412546;
            v31 = v14;
            v32 = 2048;
            v33 = sub_19B41E070(v17);
            _os_log_impl(&dword_19B41C000, v16, OS_LOG_TYPE_DEBUG, "CMMagnetometerData: %@,now,%f", buf, 0x16u);
          }

          v18 = sub_19B420058();
          if (*(v18 + 160) > 1 || *(v18 + 164) > 1 || *(v18 + 168) > 1 || *(v18 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1ED71C800 != -1)
            {
              dispatch_once(&qword_1ED71C800, &unk_1F0E3A778);
            }

            v20 = off_1ED71C808;
            v21 = mach_absolute_time();
            v26 = 138412546;
            v27 = v14;
            v28 = 2048;
            v29 = sub_19B41E070(v21);
            _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v20, 2, "CMMagnetometerData: %@,now,%f", &v26, 22);
            v23 = v22;
            sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMotionManager onMagnetometer:]", "CoreLocation: %s\n", v22);
            if (v23 != buf)
            {
              free(v23);
            }
          }

          v24 = *(internal + 49);
          v25[0] = MEMORY[0x1E69E9820];
          v25[1] = 3221225472;
          v25[2] = sub_19B634AE8;
          v25[3] = &unk_1E7532B90;
          v25[4] = v14;
          v25[5] = v15;
          objc_msgSend_addOperationWithBlock_(v24, v19, v25);

          objc_autoreleasePoolPop(v7);
          *(internal + 50) = *&magnetometer->timestamp;
        }
      }
    }
  }
}

- (BOOL)sendDeviceMotionError:(int)error
{
  v3 = *&error;
  v27 = *MEMORY[0x1E69E9840];
  internal = self->_internal;
  v5 = internal[35];
  if (v5)
  {
    LOBYTE(v5) = internal[34] != 0;
  }

  v6 = internal[78];
  if (v6)
  {
    LOBYTE(v6) = internal[77] != 0;
  }

  v7 = v5 | v6;
  if ((v5 | v6))
  {
    v8 = objc_autoreleasePoolPush();
    v10 = objc_msgSend_CMErrorWithCode_(CMErrorUtils, v9, v3);
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E3A778);
    }

    v11 = off_1ED71C808;
    if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v26 = v10;
      _os_log_impl(&dword_19B41C000, v11, OS_LOG_TYPE_DEFAULT, "CMError: %{public}@", buf, 0xCu);
    }

    v12 = sub_19B420058();
    if (*(v12 + 160) > 1 || *(v12 + 164) > 1 || *(v12 + 168) > 1 || *(v12 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E3A778);
      }

      v23 = 138543362;
      v24 = v10;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C808, 0, "CMError: %{public}@", &v23, 12);
      v15 = v14;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMotionManager sendDeviceMotionError:]", "CoreLocation: %s\n", v14);
      if (v15 != buf)
      {
        free(v15);
      }
    }

    v16 = internal[34];
    if (v16)
    {
      v17 = internal[35];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = sub_19B634DDC;
      v22[3] = &unk_1E7532B90;
      v22[4] = v10;
      v22[5] = v16;
      objc_msgSend_addOperationWithBlock_(v17, v13, v22);
    }

    v18 = internal[77];
    if (v18)
    {
      v19 = internal[78];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = sub_19B634DF4;
      v21[3] = &unk_1E7532B90;
      v21[4] = v10;
      v21[5] = v18;
      objc_msgSend_addOperationWithBlock_(v19, v13, v21);
    }

    objc_autoreleasePoolPop(v8);
  }

  return v7 & 1;
}

+ (BOOL)northAlignedReferenceFrame:(unint64_t)frame
{
  LOBYTE(v3) = 1;
  if (frame != 8 && frame != 4)
  {
    if (frame == 2)
    {
      return (sub_19B421620() >> 4) & 1;
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  return v3;
}

- (void)applyNorthReference:(Sample *)reference
{
  internal = self->_internal;
  if (*(internal + 38) == 8 && *(sub_19B424AE0() + 96) < 0.0)
  {
    if ((*(internal + 316) & 1) == 0 && reference->timestamp - internal[40] > 1.0)
    {
      *(internal + 316) = objc_msgSend_sendDeviceMotionError_(self, v6, 102);
    }

    reference->timestamp = -1.0;
  }

  if ((*(internal + 38) - 1) > 1)
  {
    if (reference[3].acceleration.y < 0.0)
    {
      reference[3].acceleration.y = 0.0;
      *&reference[4].timestamp = xmmword_19B7B9BB0;
    }
  }

  else
  {
    reference[3].acceleration.y = -1.0;
    LODWORD(reference[4].timestamp) = -1082130432;
  }
}

- (void)applyInitialReference:(Sample *)reference
{
  internal = self->_internal;
  if ((*&internal[19].f64[0] - 1) <= 1 && LOBYTE(internal[36].f64[1]) == 1 && objc_msgSend_deviceMotionInitialized_(CMMotionManager, a2, reference))
  {
    if ((LOBYTE(internal[22].f64[1]) & 1) == 0)
    {
      sub_19B43F0AC(v6, &reference->acceleration.x);
      internal[21] = vnegq_f64(*&v6[8]);
      internal[22].f64[0] = -*&v6[24];
      internal[20].f64[1] = *v6;
      LOBYTE(internal[22].f64[1]) = 1;
    }

    sub_19B43F1C8(v6, &reference->acceleration.x, &internal[20].f64[1]);
    v5 = *&v6[16];
    *&reference->acceleration.x = *v6;
    *&reference[1].timestamp = v5;
  }
}

- (void)onDeviceMotion:(const Sample *)motion
{
  v45 = *MEMORY[0x1E69E9840];
  internal = self->_internal;
  v6 = *&motion[3].acceleration.x;
  *&v33[64] = *&motion[2].acceleration.z;
  *&v33[80] = v6;
  v7 = *&motion[4].acceleration.z;
  v34 = *&motion[4].timestamp;
  v35 = v7;
  v8 = *&motion->acceleration.z;
  *v33 = *&motion->timestamp;
  *&v33[16] = v8;
  v9 = *&motion[2].timestamp;
  *&v33[32] = *&motion[1].acceleration.x;
  *&v33[48] = v9;
  if (objc_msgSend_northAlignedReferenceFrame_(CMMotionManager, a2, *(internal + 38)))
  {
    if (*&v33[76] < 1)
    {
      if (*&v33[76] != -1)
      {
        *(internal + 313) = 0;
        objc_msgSend_showDeviceMovementDisplay(self, v10, v11);
        if ((*(internal + 315) & 1) == 0)
        {
          *(internal + 315) = objc_msgSend_sendDeviceMotionError_(self, v10, 101);
        }
      }
    }

    else
    {
      *(internal + 315) = 0;
      *(internal + 313) = 1;
      objc_msgSend_dismissDeviceMovementDisplay(self, v10, v11);
    }
  }

  objc_msgSend_applyNorthReference_(self, v10, v33);
  objc_msgSend_applyInitialReference_(self, v12, v33);
  if (*(internal + 35))
  {
    if (*(internal + 34))
    {
      if ((WORD5(v35) & 0x100) != 0 && *v33 > 0.0)
      {
        v13 = *(internal + 36);
        if (v13 <= 0.0 || *v33 - v13 - *(internal + 33) >= *(internal + 33) * -0.1)
        {
          v14 = objc_autoreleasePoolPush();
          v15 = [CMDeviceMotion alloc];
          v41 = *&v33[40];
          v42 = *&v33[56];
          v43 = *&v33[72];
          v44 = *&v33[88];
          *buf = *&v33[8];
          *&buf[16] = *&v33[24];
          LODWORD(v17) = HIDWORD(v34);
          LODWORD(v16) = DWORD2(v34);
          v19 = objc_msgSend_initWithDeviceMotion_internal_timestamp_(v15, v18, buf, COERCE_DOUBLE(__PAIR64__(*&v33[12], v34)), COERCE_DOUBLE(__PAIR64__(*&v33[28], DWORD1(v34))), v16, v17, *v33);
          v20 = *(internal + 34);
          if (qword_1ED71C800 != -1)
          {
            dispatch_once(&qword_1ED71C800, &unk_1F0E3A778);
          }

          v21 = off_1ED71C808;
          if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEBUG))
          {
            v22 = mach_absolute_time();
            v23 = sub_19B41E070(v22);
            *buf = 138412546;
            *&buf[4] = v19;
            *&buf[12] = 2048;
            *&buf[14] = v23;
            _os_log_impl(&dword_19B41C000, v21, OS_LOG_TYPE_DEBUG, "CMDeviceMotion: %@,now,%f", buf, 0x16u);
          }

          v24 = sub_19B420058();
          if (*(v24 + 160) > 1 || *(v24 + 164) > 1 || *(v24 + 168) > 1 || *(v24 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1ED71C800 != -1)
            {
              dispatch_once(&qword_1ED71C800, &unk_1F0E3A778);
            }

            v26 = off_1ED71C808;
            v27 = mach_absolute_time();
            v28 = sub_19B41E070(v27);
            v36 = 138412546;
            v37 = v19;
            v38 = 2048;
            v39 = v28;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v26, 2, "CMDeviceMotion: %@,now,%f", &v36, 22);
            v30 = v29;
            sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMotionManager onDeviceMotion:]", "CoreLocation: %s\n", v29);
            if (v30 != buf)
            {
              free(v30);
            }
          }

          v31 = *(internal + 35);
          v32[0] = MEMORY[0x1E69E9820];
          v32[1] = 3221225472;
          v32[2] = sub_19B63538C;
          v32[3] = &unk_1E7532B90;
          v32[4] = v19;
          v32[5] = v20;
          objc_msgSend_addOperationWithBlock_(v31, v25, v32);

          objc_autoreleasePoolPop(v14);
          *(internal + 36) = *&motion->timestamp;
        }
      }
    }
  }
}

- (void)onAmbientPressure:(const Sample *)pressure
{
  v32 = *MEMORY[0x1E69E9840];
  internal = self->_internal;
  os_unfair_lock_lock(internal + 2);
  *(internal + 120) = *&pressure->timestamp;
  os_unfair_lock_unlock(internal + 2);
  if (*(internal + 13))
  {
    if (*(internal + 12))
    {
      if (pressure->timestamp > 0.0)
      {
        v5 = *(internal + 14);
        if (v5 <= 0.0 || pressure->timestamp - v5 - *(internal + 11) >= *(internal + 11) * -0.1)
        {
          v6 = objc_autoreleasePoolPush();
          v7 = [CMAmbientPressureData alloc];
          *&v8 = pressure->acceleration.x;
          *&v9 = pressure->acceleration.y;
          v12 = objc_msgSend_initWithPressure_andTimestamp_(v7, v10, v11, v8, v9, pressure->timestamp);
          v13 = *(internal + 12);
          if (qword_1ED71C800 != -1)
          {
            dispatch_once(&qword_1ED71C800, &unk_1F0E3A778);
          }

          v14 = off_1ED71C808;
          if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEBUG))
          {
            v15 = mach_absolute_time();
            *buf = 138412546;
            v29 = v12;
            v30 = 2048;
            v31 = sub_19B41E070(v15);
            _os_log_impl(&dword_19B41C000, v14, OS_LOG_TYPE_DEBUG, "CMAmbientPressureData: %@,now,%f", buf, 0x16u);
          }

          v16 = sub_19B420058();
          if (*(v16 + 160) > 1 || *(v16 + 164) > 1 || *(v16 + 168) > 1 || *(v16 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1ED71C800 != -1)
            {
              dispatch_once(&qword_1ED71C800, &unk_1F0E3A778);
            }

            v18 = off_1ED71C808;
            v19 = mach_absolute_time();
            v24 = 138412546;
            v25 = v12;
            v26 = 2048;
            v27 = sub_19B41E070(v19);
            _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v18, 2, "CMAmbientPressureData: %@,now,%f", &v24, 22);
            v21 = v20;
            sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMotionManager onAmbientPressure:]", "CoreLocation: %s\n", v20);
            if (v21 != buf)
            {
              free(v21);
            }
          }

          v22 = *(internal + 13);
          v23[0] = MEMORY[0x1E69E9820];
          v23[1] = 3221225472;
          v23[2] = sub_19B635698;
          v23[3] = &unk_1E7532B90;
          v23[4] = v12;
          v23[5] = v13;
          objc_msgSend_addOperationWithBlock_(v22, v17, v23);

          objc_autoreleasePoolPop(v6);
          *(internal + 14) = *&pressure->timestamp;
        }
      }
    }
  }
}

- (void)onCompensatedAmbientPressure:(const Sample *)pressure
{
  v32 = *MEMORY[0x1E69E9840];
  internal = self->_internal;
  os_unfair_lock_lock(internal + 2);
  *(internal + 11) = *&pressure->timestamp;
  os_unfair_lock_unlock(internal + 2);
  if (*(internal + 20))
  {
    if (*(internal + 19))
    {
      if (pressure->timestamp > 0.0)
      {
        v5 = *(internal + 21);
        if (v5 <= 0.0 || pressure->timestamp - v5 - *(internal + 18) >= *(internal + 18) * -0.1)
        {
          v6 = objc_autoreleasePoolPush();
          v7 = [CMAmbientPressureData alloc];
          *&v8 = pressure->acceleration.x;
          *&v9 = pressure->acceleration.y;
          v12 = objc_msgSend_initWithPressure_andTimestamp_(v7, v10, v11, v8, v9, pressure->timestamp);
          v13 = *(internal + 19);
          if (qword_1ED71C800 != -1)
          {
            dispatch_once(&qword_1ED71C800, &unk_1F0E3A778);
          }

          v14 = off_1ED71C808;
          if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEBUG))
          {
            v15 = mach_absolute_time();
            *buf = 138412546;
            v29 = v12;
            v30 = 2048;
            v31 = sub_19B41E070(v15);
            _os_log_impl(&dword_19B41C000, v14, OS_LOG_TYPE_DEBUG, "CMCompensatedAmbientPressureData: %@,now,%f", buf, 0x16u);
          }

          v16 = sub_19B420058();
          if (*(v16 + 160) > 1 || *(v16 + 164) > 1 || *(v16 + 168) > 1 || *(v16 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1ED71C800 != -1)
            {
              dispatch_once(&qword_1ED71C800, &unk_1F0E3A778);
            }

            v18 = off_1ED71C808;
            v19 = mach_absolute_time();
            v24 = 138412546;
            v25 = v12;
            v26 = 2048;
            v27 = sub_19B41E070(v19);
            _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v18, 2, "CMCompensatedAmbientPressureData: %@,now,%f", &v24, 22);
            v21 = v20;
            sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMotionManager onCompensatedAmbientPressure:]", "CoreLocation: %s\n", v20);
            if (v21 != buf)
            {
              free(v21);
            }
          }

          v22 = *(internal + 20);
          v23[0] = MEMORY[0x1E69E9820];
          v23[1] = 3221225472;
          v23[2] = sub_19B6359A4;
          v23[3] = &unk_1E7532B90;
          v23[4] = v12;
          v23[5] = v13;
          objc_msgSend_addOperationWithBlock_(v22, v17, v23);

          objc_autoreleasePoolPop(v6);
          *(internal + 21) = *&pressure->timestamp;
        }
      }
    }
  }
}

- (void)willResignActive:(id)active
{
  v5 = sub_19B420D84();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_19B635A3C;
  v6[3] = &unk_1E7532A00;
  v6[4] = self;
  v6[5] = active;
  sub_19B421668(v5, v6);
}

- (void)didBecomeActive:(id)active
{
  v5 = sub_19B420D84();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_19B635AC8;
  v6[3] = &unk_1E7532A00;
  v6[4] = self;
  v6[5] = active;
  sub_19B421668(v5, v6);
}

- (void)willResignActivePrivate:(id)private
{
  internal = self->_internal;
  v4 = sub_19B424AE0();
  if (v4)
  {
    sub_19B445ACC(v4, 0);
  }

  v5 = internal[81];
  if (v5)
  {
    *(v5 + 16) = CFAbsoluteTimeGetCurrent();
    sub_19B454944(v5);
    *(v5 + 8) = CFAbsoluteTimeGetCurrent();
  }

  *(internal + 632) = 0;
}

- (void)didBecomeActivePrivate:(id)private
{
  internal = self->_internal;
  v5 = sub_19B424AE0();
  if (v5)
  {
    sub_19B445ACC(v5, 1);
  }

  v8 = internal[81];
  if (v8)
  {
    *(v8 + 8) = CFAbsoluteTimeGetCurrent();
  }

  *(internal + 632) = 1;
  if (*(internal + 314) == 1 && (*(internal + 313) & 1) == 0)
  {

    objc_msgSend_showDeviceMovementDisplay(self, v6, v7);
  }
}

+ (BOOL)supportsGyroMiniCalibration
{
  v2 = sub_19B42AD98();
  if (v2)
  {
    v3 = sub_19B43D9C4();
    v6 = objc_msgSend_vendor(v3, v4, v5);
    v8 = objc_msgSend_proxyForService_(v6, v7, @"CLGyroCalibrationDatabase");

    LOBYTE(v2) = MEMORY[0x1EEE66B58](v8, sel_syncgetSupportsMiniCalibration, v9);
  }

  return v2;
}

+ (BOOL)configureM7Activity:(BOOL)activity stepCounting:(BOOL)counting activityForceCodeTransition:(BOOL)transition stepCountingForceCodeTransition:(BOOL)codeTransition threshold:(BOOL)threshold onBodyDetection:(BOOL)detection ispMode:(unsigned __int8)mode predictionInterval:(float)self0 logLevel:(char)self1 proactiveRevisitTime:(unsigned __int16)self2
{
  v12 = 0x10000000000;
  if (!detection)
  {
    v12 = 0;
  }

  v13 = v12 | (mode << 48);
  v14 = 0x100000000;
  if (!threshold)
  {
    v14 = 0;
  }

  v15 = 0x1000000;
  if (!codeTransition)
  {
    v15 = 0;
  }

  v16 = v14 | v15;
  v17 = 0x10000;
  if (!transition)
  {
    v17 = 0;
  }

  v18 = v16 | v17;
  v19 = 256;
  if (!counting)
  {
    v19 = 0;
  }

  return sub_19B707360(v13 | v18 | v19 | activity, ((level << 32) | (time << 48) | LODWORD(interval)), activity) != 0;
}

+ ($27EAB7405FCF4138B96BF1D57C6DB1C9)gyroCalibrationDatabaseGetBiasFit
{
  v4 = sub_19B43D9C4();
  v7 = objc_msgSend_vendor(v4, v5, v6);
  v9 = objc_msgSend_proxyForService_(v7, v8, @"CLGyroCalibrationDatabase");
  result = objc_msgSend_syncgetBiasFit_(v9, v10, retstr);
  if ((result & 1) == 0)
  {
    bzero(retstr, 0x140uLL);
    retstr->var0 = 1;
    retstr->var1 = -1.79769313e308;
  }

  return result;
}

+ ($27EAB7405FCF4138B96BF1D57C6DB1C9)gyroCalibrationDatabaseGetBiasFitAndEstimate:(SEL)estimate atTemperature:(id *)temperature
{
  *&retstr->var5.var1.var1[255] = 0u;
  *&retstr->var5.var1.var1[271] = 0u;
  *&retstr->var5.var1.var1[223] = 0u;
  *&retstr->var5.var1.var1[239] = 0u;
  *&retstr->var5.var1.var1[191] = 0u;
  *&retstr->var5.var1.var1[207] = 0u;
  *&retstr->var5.var1.var1[159] = 0u;
  *&retstr->var5.var1.var1[175] = 0u;
  *&retstr->var5.var1.var1[127] = 0u;
  *&retstr->var5.var1.var1[143] = 0u;
  *&retstr->var5.var1.var1[95] = 0u;
  *&retstr->var5.var1.var1[111] = 0u;
  *&retstr->var5.var1.var1[63] = 0u;
  *&retstr->var5.var1.var1[79] = 0u;
  *&retstr->var5.var1.var1[31] = 0u;
  *&retstr->var5.var1.var1[47] = 0u;
  *&retstr->var5.var0.var0.var0 = 0u;
  *&retstr->var5.var1.var1[15] = 0u;
  *&retstr->var0 = 0u;
  *&retstr->var2 = 0u;
  result = objc_msgSend_gyroCalibrationDatabaseGetBiasFit(CMMotionManager, estimate, temperature);
  if (temperature)
  {
    if (retstr->var0 == 2)
    {
      memcpy(__dst, &retstr->var5.var0.var0.var0 + 1, sizeof(__dst));
      result = sub_19B71B784(__dst, a5);
      v10.i32[1] = v9;
      *&temperature->var0 = vcvtq_f64_f32(vmul_f32(v10, vdup_n_s32(0x42652EE1u)));
      v8 = v11 * 57.296;
      goto LABEL_6;
    }

    if (retstr->var0 == 1)
    {
      *&temperature->var0 = vcvtq_f64_f32(vmla_n_f32(*&retstr->var5.var1.var1[11], *&retstr->var5.var0.var0.var0, a5));
      v8 = retstr->var5.var0.var1.var2 + (retstr->var5.var0.var0.var2 * a5);
LABEL_6:
      temperature->var2 = v8;
      return result;
    }

    temperature->var0 = 0.0;
    temperature->var1 = 0.0;
    temperature->var2 = 0.0;
  }

  return result;
}

- (void)startDeviceMotionLiteUpdatesForDeviceID:(id)d usingConfiguration:(id)configuration toQueue:(id)queue withFusedHandler:(id)handler
{
  v17 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C800 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v6 = off_1ED71C808;
    if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      v13 = 2082;
      v14 = "assert";
      v15 = 2081;
      v16 = "0";
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Motion manager can not start device motion lite updates, use isDeviceMotionLiteAvailable before using this API, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E3A778);
      }
    }

    v7 = off_1ED71C808;
    if (os_signpost_enabled(off_1ED71C808))
    {
      *buf = 68289539;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      v13 = 2082;
      v14 = "assert";
      v15 = 2081;
      v16 = "0";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Motion manager can not start device motion lite updates, use isDeviceMotionLiteAvailable before using this API", "{msg%{public}.0s:Motion manager can not start device motion lite updates, use isDeviceMotionLiteAvailable before using this API, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E3A778);
      }
    }

    v8 = off_1ED71C808;
    if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      v13 = 2082;
      v14 = "assert";
      v15 = 2081;
      v16 = "0";
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Motion manager can not start device motion lite updates, use isDeviceMotionLiteAvailable before using this API, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Framework/CoreMotion/Sensor/CMMotionManager.mm", 3603, "[CMMotionManager startDeviceMotionLiteUpdatesForDeviceID:usingConfiguration:toQueue:withFusedHandler:]");
LABEL_11:
    dispatch_once(&qword_1ED71C800, &unk_1F0E3A778);
  }
}

- (void)startDeviceMotionLiteFusedUpdatesForDeviceID:(id)d toQueue:(id)queue withHandler:(id)handler
{
  v14 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C800 != -1)
  {
    dispatch_once(&qword_1ED71C800, &unk_1F0E3A778);
  }

  v6 = off_1ED71C808;
  if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    dCopy = d;
    _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_DEFAULT, "Motion manager asked to start device motion lite updates for device id %@", buf, 0xCu);
  }

  v7 = sub_19B420058();
  if (*(v7 + 160) > 1 || *(v7 + 164) > 1 || *(v7 + 168) > 1 || *(v7 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E3A778);
    }

    v10 = 138412290;
    dCopy2 = d;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C808, 0, "Motion manager asked to start device motion lite updates for device id %@", &v10, 12);
    v9 = v8;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMotionManager startDeviceMotionLiteFusedUpdatesForDeviceID:toQueue:withHandler:]", "CoreLocation: %s\n", v8);
    if (v9 != buf)
    {
      free(v9);
    }
  }
}

- (void)stopDeviceMotionLiteUpdatesForDeviceID:(id)d
{
  v12 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C800 != -1)
  {
    dispatch_once(&qword_1ED71C800, &unk_1F0E3A778);
  }

  v4 = off_1ED71C808;
  if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    dCopy = d;
    _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_DEFAULT, "Motion manager asked to stop device motion lite updates for device id %@", buf, 0xCu);
  }

  v5 = sub_19B420058();
  if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E3A778);
    }

    v8 = 138412290;
    dCopy2 = d;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C808, 0, "Motion manager asked to stop device motion lite updates for device id %@", &v8, 12);
    v7 = v6;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMotionManager stopDeviceMotionLiteUpdatesForDeviceID:]", "CoreLocation: %s\n", v6);
    if (v7 != buf)
    {
      free(v7);
    }
  }
}

- (void)startFactoryGyroUpdatesToQueue:(id)queue withHandler:(id)handler
{
  v7 = sub_19B420D84();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_19B6367A8;
  v8[3] = &unk_1E7532C08;
  v8[4] = self;
  v8[5] = queue;
  v8[6] = handler;
  sub_19B421668(v7, v8);
}

- (void)startFactoryGyroUpdatesToQueue:(id)queue atUpdateInterval:(double)interval withHandler:(id)handler
{
  v9 = sub_19B420D84();
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_19B636864;
  v10[3] = &unk_1E7533780;
  v10[4] = self;
  v10[5] = queue;
  *&v10[7] = interval;
  v10[6] = handler;
  sub_19B421668(v9, v10);
}

- (void)startFactoryGyroUpdatesToQueue:(id)queue atUpdateInterval:(double)interval withHandler:(id)handler residualHandler:(id)residualHandler
{
  v11 = sub_19B420D84();
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_19B636920;
  v12[3] = &unk_1E7533988;
  v12[4] = self;
  v12[5] = queue;
  *&v12[8] = interval;
  v12[6] = handler;
  v12[7] = residualHandler;
  sub_19B421668(v11, v12);
}

- (void)stopFactoryGyroUpdates
{
  v3 = sub_19B420D84();
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_19B6369B0;
  v4[3] = &unk_1E7532988;
  v4[4] = self;
  sub_19B420C9C(v3, v4);
}

- (void)startDeviceMotionUpdatesForKeyboardMotionToQueue:(id)queue withGravityDeltaThreshold:(double)threshold sendFrequency:(double)frequency andHandler:(id)handler
{
  v11 = sub_19B420D84();
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_19B636A5C;
  v12[3] = &unk_1E75339B0;
  v12[4] = self;
  v12[5] = queue;
  *&v12[7] = threshold;
  *&v12[8] = frequency;
  v12[6] = handler;
  sub_19B421668(v11, v12);
}

- (void)stopDeviceMotionUpdatesForKeyboardMotion
{
  v3 = sub_19B420D84();
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_19B636AEC;
  v4[3] = &unk_1E7532988;
  v4[4] = self;
  sub_19B421668(v3, v4);
}

- (void)startFactoryGyroUpdatesPrivateToQueue:(id)queue atUpdateInterval:(double)interval withHandler:(id)handler residualHandler:(id)residualHandler
{
  v90 = *MEMORY[0x1E69E9840];
  internal = self->_internal;
  if (qword_1ED71C810 != -1)
  {
    dispatch_once(&qword_1ED71C810, &unk_1F0E3A898);
  }

  v11 = qword_1ED71C818;
  if (os_log_type_enabled(qword_1ED71C818, OS_LOG_TYPE_DEFAULT))
  {
    buf = 134349056;
    buf_4 = interval;
    _os_log_impl(&dword_19B41C000, v11, OS_LOG_TYPE_DEFAULT, "Starting factory gyro updates at rate: %{public}f", &buf, 0xCu);
  }

  v12 = sub_19B420058();
  if (*(v12 + 160) > 1 || *(v12 + 164) > 1 || *(v12 + 168) > 1 || *(v12 + 152))
  {
    bzero(&buf, 0x65CuLL);
    if (qword_1ED71C810 != -1)
    {
      dispatch_once(&qword_1ED71C810, &unk_1F0E3A898);
    }

    v74 = 134349056;
    intervalCopy2 = interval;
    _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B41C000, qword_1ED71C818, 0, "Starting factory gyro updates at rate: %{public}f", &v74, 12);
    v14 = v13;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMotionManager startFactoryGyroUpdatesPrivateToQueue:atUpdateInterval:withHandler:residualHandler:]", "CoreLocation: %s\n", v13);
    if (v14 != &buf)
    {
      free(v14);
    }
  }

  if (interval <= 0.0)
  {
    if (qword_1ED71C810 != -1)
    {
      dispatch_once(&qword_1ED71C810, &unk_1F0E3A898);
    }

    v26 = qword_1ED71C818;
    if (os_log_type_enabled(qword_1ED71C818, OS_LOG_TYPE_ERROR))
    {
      buf = 134349056;
      buf_4 = interval;
      _os_log_impl(&dword_19B41C000, v26, OS_LOG_TYPE_ERROR, "Invalid update interval: %{public}f", &buf, 0xCu);
    }

    v27 = sub_19B420058();
    if ((*(v27 + 160) & 0x80000000) == 0 || (*(v27 + 164) & 0x80000000) == 0 || (*(v27 + 168) & 0x80000000) == 0 || *(v27 + 152))
    {
      bzero(&buf, 0x65CuLL);
      if (qword_1ED71C810 != -1)
      {
        dispatch_once(&qword_1ED71C810, &unk_1F0E3A898);
      }

      v74 = 134349056;
      intervalCopy2 = interval;
      LODWORD(v60) = 12;
      _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B41C000, qword_1ED71C818, 16, "Invalid update interval: %{public}f", &v74, *&v60);
      v29 = v28;
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMMotionManager startFactoryGyroUpdatesPrivateToQueue:atUpdateInterval:withHandler:residualHandler:]", "CoreLocation: %s\n", v28);
      if (v29 != &buf)
      {
        free(v29);
      }
    }
  }

  else
  {
    internal[83] = interval;
    v15 = *(internal + 87);
    if (v15 != queue)
    {

      *(internal + 87) = queue;
    }

    v16 = *(internal + 86);
    if (v16 != handler)
    {

      *(internal + 86) = objc_msgSend_copy(handler, v17, v18);
    }

    v67 = 0;
    v68 = 0;
    v69 = 0;
    v66 = 0.0;
    sub_19B747A9C(&v67, &v66);
    if (v66 == 0.0)
    {
      selfCopy = self;
      v30 = v67;
      v31 = v68;
      if (v67 == v68)
      {
        v32 = 0;
        __src = 0;
      }

      else
      {
        v32 = 0;
        __src = 0;
        do
        {
          v34 = *v30;
          v33 = v30[1];
          v36 = v30[2];
          v35 = v30[3];
          if (qword_1ED71C810 != -1)
          {
            dispatch_once(&qword_1ED71C810, &unk_1F0E3A898);
          }

          v37 = qword_1ED71C818;
          if (os_log_type_enabled(qword_1ED71C818, OS_LOG_TYPE_DEFAULT))
          {
            buf = 134218752;
            buf_4 = v34;
            buf_12 = 2048;
            buf_14 = v33;
            v86 = 2048;
            v87 = v36;
            v88 = 2048;
            v89 = v35;
            _os_log_impl(&dword_19B41C000, v37, OS_LOG_TYPE_DEFAULT, "GYTT temperature,%f,bias.x,%f,bias.y,%f,bias.z,%f", &buf, 0x2Au);
          }

          v38 = sub_19B420058();
          if (*(v38 + 160) > 1 || *(v38 + 164) > 1 || *(v38 + 168) > 1 || *(v38 + 152))
          {
            bzero(&buf, 0x65CuLL);
            if (qword_1ED71C810 != -1)
            {
              dispatch_once(&qword_1ED71C810, &unk_1F0E3A898);
            }

            v74 = 134218752;
            intervalCopy2 = v34;
            v76 = 2048;
            v77 = v33;
            v78 = 2048;
            v79 = v36;
            v80 = 2048;
            v81 = v35;
            LODWORD(v60) = 42;
            _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B41C000, qword_1ED71C818, 0, "GYTT temperature,%f,bias.x,%f,bias.y,%f,bias.z,%f", COERCE_DOUBLE(&v74), v60, v61, *&selfCopy);
            v40 = v39;
            sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMotionManager startFactoryGyroUpdatesPrivateToQueue:atUpdateInterval:withHandler:residualHandler:]", "CoreLocation: %s\n", v39);
            if (v40 != &buf)
            {
              free(v40);
            }
          }

          v41 = v32 - __src;
          v42 = 0xAAAAAAAAAAAAAAABLL * ((v32 - __src) >> 3);
          v43 = v42 + 1;
          if (v42 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            sub_19B5BE690();
          }

          if (0x5555555555555556 * (-__src >> 3) > v43)
          {
            v43 = 0x5555555555555556 * (-__src >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * (-__src >> 3) >= 0x555555555555555)
          {
            v44 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v44 = v43;
          }

          if (v44)
          {
            sub_19B639B7C(v44);
          }

          v45 = 8 * ((v32 - __src) >> 3);
          *v45 = v34;
          *(v45 + 4) = v33;
          *(v45 + 8) = v36;
          *(v45 + 12) = v35;
          *(v45 + 16) = 0;
          v32 = (v45 + 24);
          v46 = 24 * v42 + 24 * (v41 / -24);
          memcpy((v45 + 24 * (v41 / -24)), __src, v41);
          if (__src)
          {
            operator delete(__src);
          }

          __src = v46;
          v30 += 4;
        }

        while (v30 != v31);
      }

      if ((sub_19B421620() & 0x40000) != 0)
      {
        operator new();
      }

      if ((sub_19B421620() & 0x20000) != 0)
      {
        __p[0] = 0;
        __p[1] = 0;
        v73 = 0;
        sub_19B73A8BC(__src, v32, 0, 0, __p);
      }

      v48 = COERCE_DOUBLE(objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v47, @"Missing gyro linearity information. Please file a radar against CoreMotion Factory | All to add support for this device."));
      v49 = objc_alloc(MEMORY[0x1E696ABC0]);
      v70 = *MEMORY[0x1E696A578];
      v71 = v48;
      v51 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v50, &v71, &v70, 1);
      v66 = COERCE_DOUBLE(objc_msgSend_initWithDomain_code_userInfo_(v49, v52, @"CMErrorDomainFactory", 2, v51));
      if (qword_1ED71C810 != -1)
      {
        dispatch_once(&qword_1ED71C810, &unk_1F0E3A898);
      }

      v53 = qword_1ED71C818;
      if (os_log_type_enabled(qword_1ED71C818, OS_LOG_TYPE_ERROR))
      {
        buf = 138543362;
        buf_4 = v48;
        _os_log_impl(&dword_19B41C000, v53, OS_LOG_TYPE_ERROR, "%{public}@", &buf, 0xCu);
      }

      v54 = sub_19B420058();
      if ((*(v54 + 160) & 0x80000000) == 0 || (*(v54 + 164) & 0x80000000) == 0 || (*(v54 + 168) & 0x80000000) == 0 || *(v54 + 152))
      {
        bzero(&buf, 0x65CuLL);
        if (qword_1ED71C810 != -1)
        {
          dispatch_once(&qword_1ED71C810, &unk_1F0E3A898);
        }

        v74 = 138543362;
        intervalCopy2 = v48;
        LODWORD(v60) = 12;
        _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B41C000, qword_1ED71C818, 16, "%{public}@", &v74, *&v60);
        v57 = v56;
        sub_19B6BB7CC("Generic", 1, 0, 0, "[CMMotionManager startFactoryGyroUpdatesPrivateToQueue:atUpdateInterval:withHandler:residualHandler:]", "CoreLocation: %s\n", v56);
        if (v57 != &buf)
        {
          free(v57);
        }
      }

      v58 = *(internal + 87);
      if (v58)
      {
        v59 = *(internal + 86);
        if (v59)
        {
          v64[0] = MEMORY[0x1E69E9820];
          v64[1] = 3221225472;
          v64[2] = sub_19B6386FC;
          v64[3] = &unk_1E7532B90;
          *&v64[4] = v66;
          v64[5] = v59;
          objc_msgSend_addOperationWithBlock_(v58, v55, v64);
        }
      }

      if (__src)
      {
        operator delete(__src);
      }
    }

    else
    {
      if (qword_1ED71C810 != -1)
      {
        dispatch_once(&qword_1ED71C810, &unk_1F0E3A898);
      }

      v19 = qword_1ED71C818;
      if (os_log_type_enabled(qword_1ED71C818, OS_LOG_TYPE_ERROR))
      {
        buf = 138412290;
        buf_4 = v66;
        _os_log_impl(&dword_19B41C000, v19, OS_LOG_TYPE_ERROR, "Error found while reading GYTT: %@", &buf, 0xCu);
      }

      v20 = sub_19B420058();
      if ((*(v20 + 160) & 0x80000000) == 0 || (*(v20 + 164) & 0x80000000) == 0 || (*(v20 + 168) & 0x80000000) == 0 || *(v20 + 152))
      {
        bzero(&buf, 0x65CuLL);
        if (qword_1ED71C810 != -1)
        {
          dispatch_once(&qword_1ED71C810, &unk_1F0E3A898);
        }

        v74 = 138412290;
        intervalCopy2 = v66;
        LODWORD(v60) = 12;
        _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B41C000, qword_1ED71C818, 16, "Error found while reading GYTT: %@", &v74, *&v60);
        v23 = v22;
        sub_19B6BB7CC("Generic", 1, 0, 0, "[CMMotionManager startFactoryGyroUpdatesPrivateToQueue:atUpdateInterval:withHandler:residualHandler:]", "CoreLocation: %s\n", v22);
        if (v23 != &buf)
        {
          free(v23);
        }
      }

      v24 = *(internal + 87);
      if (v24)
      {
        v25 = *(internal + 86);
        if (v25)
        {
          v65[0] = MEMORY[0x1E69E9820];
          v65[1] = 3221225472;
          v65[2] = sub_19B6386DC;
          v65[3] = &unk_1E7532B90;
          *&v65[4] = v66;
          v65[5] = v25;
          objc_msgSend_addOperationWithBlock_(v24, v21, v65);
        }
      }
    }

    if (v67)
    {
      v68 = v67;
      operator delete(v67);
    }
  }
}

- (void)stopFactoryGyroUpdatesPrivate
{
  v16 = *MEMORY[0x1E69E9840];
  internal = self->_internal;
  if (qword_1ED71C810 != -1)
  {
    dispatch_once(&qword_1ED71C810, &unk_1F0E3A898);
  }

  v3 = qword_1ED71C818;
  if (os_log_type_enabled(qword_1ED71C818, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEFAULT, "Stopping factory gyro updates.", buf, 2u);
  }

  v4 = sub_19B420058();
  if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C810 != -1)
    {
      dispatch_once(&qword_1ED71C810, &unk_1F0E3A898);
    }

    v14[0] = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C818, 0, "Stopping factory gyro updates.", v14, 2);
    v6 = v5;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMotionManager stopFactoryGyroUpdatesPrivate]", "CoreLocation: %s\n", v5);
    if (v6 != buf)
    {
      free(v6);
    }
  }

  *(internal + 983) = 0u;
  *(internal + 956) = 0u;
  *(internal + 972) = 0u;
  *(internal + 924) = 0u;
  *(internal + 940) = 0u;
  *(internal + 892) = 0u;
  *(internal + 908) = 0u;
  *(internal + 860) = 0u;
  *(internal + 876) = 0u;
  *(internal + 828) = 0u;
  *(internal + 844) = 0u;
  *(internal + 796) = 0u;
  *(internal + 812) = 0u;
  *(internal + 764) = 0u;
  *(internal + 780) = 0u;
  *(internal + 732) = 0u;
  *(internal + 748) = 0u;
  *(internal + 716) = 0u;
  if (*(internal + 82))
  {
    v7 = sub_19B42AD98();
    sub_19B426A14(v7, 0, *(internal + 82));
    v8 = *(internal + 82);
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }

    *(internal + 82) = 0;
    v9 = *(internal + 81);
    if (v9)
    {
      sub_19B72A398(v9, 2);
    }
  }

  if (*(internal + 84))
  {
    v10 = sub_19B42AD98();
    sub_19B426A14(v10, 1, *(internal + 84));
    v11 = *(internal + 84);
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }

    *(internal + 84) = 0;
  }

  v12 = *(internal + 87);
  if (v12)
  {

    *(internal + 87) = 0;
  }

  v13 = *(internal + 86);
  if (v13)
  {

    *(internal + 86) = 0;
  }
}

- (void)startDeviceMotionUpdatesForKeyboardMotionPrivateToQueue:(id)queue withGravityDeltaThreshold:(double)threshold notificationFrequency:(double)frequency andHandler:(id)handler
{
  v28 = *MEMORY[0x1E69E9840];
  internal = self->_internal;
  if (qword_1ED71C810 != -1)
  {
    dispatch_once(&qword_1ED71C810, &unk_1F0E3A898);
  }

  v11 = qword_1ED71C818;
  if (os_log_type_enabled(qword_1ED71C818, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v11, OS_LOG_TYPE_DEFAULT, "Starting keyboard motion updates.", buf, 2u);
  }

  v12 = sub_19B420058();
  if (*(v12 + 160) > 1 || *(v12 + 164) > 1 || *(v12 + 168) > 1 || *(v12 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C810 != -1)
    {
      dispatch_once(&qword_1ED71C810, &unk_1F0E3A898);
    }

    LOWORD(v26[0]) = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C818, 0, "Starting keyboard motion updates.", v26, 2);
    v14 = v13;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMotionManager startDeviceMotionUpdatesForKeyboardMotionPrivateToQueue:withGravityDeltaThreshold:notificationFrequency:andHandler:]", "CoreLocation: %s\n", v13);
    if (v14 != buf)
    {
      free(v14);
    }
  }

  if (sub_19B4426E4())
  {
    v15 = *(internal + 129);
    if (v15 != queue)
    {

      *(internal + 129) = queue;
    }

    v16 = *(internal + 128);
    if (v16 != handler)
    {

      *(internal + 128) = handler;
    }

    sub_19B4315C8(buf, @"com.apple.CoreMotion", 1);
    v26[0] = 0;
    v17 = sub_19B43D4DC(buf, @"KeyboardMotionGravityThreshold", v26);
    v18 = *v26;
    v26[0] = 0;
    v19 = sub_19B43D4DC(buf, @"KeyboardMotionGravitySendFrequency", v26);
    if (v17)
    {
      thresholdCopy = v18;
    }

    else
    {
      thresholdCopy = threshold;
    }

    frequencyCopy = *v26;
    if (!v19)
    {
      frequencyCopy = frequency;
    }

    v22 = thresholdCopy;
    v23 = frequencyCopy;
    internal[267] = v22;
    internal[268] = v23;
    if (!*(internal + 130))
    {
      v24 = [CLDeviceMotionProperties alloc];
      objc_msgSend_initWithMode_(v24, v25, 3);
      operator new();
    }

    sub_19B421798();
    if (sub_19B4426E4())
    {
      if (!*(internal + 135))
      {
        operator new();
      }
    }

    sub_19B60DA60(buf);
  }
}

- (void)stopDeviceMotionUpdatesForKeyboardMotionPrivate
{
  v15 = *MEMORY[0x1E69E9840];
  internal = self->_internal;
  if (qword_1ED71C810 != -1)
  {
    dispatch_once(&qword_1ED71C810, &unk_1F0E3A898);
  }

  v3 = qword_1ED71C818;
  if (os_log_type_enabled(qword_1ED71C818, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEFAULT, "Stopping keyboard motion updates.", buf, 2u);
  }

  v4 = sub_19B420058();
  if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C810 != -1)
    {
      dispatch_once(&qword_1ED71C810, &unk_1F0E3A898);
    }

    v13[0] = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C818, 0, "Stopping keyboard motion updates.", v13, 2);
    v6 = v5;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMotionManager stopDeviceMotionUpdatesForKeyboardMotionPrivate]", "CoreLocation: %s\n", v5);
    if (v6 != buf)
    {
      free(v6);
    }
  }

  if (sub_19B4426E4())
  {
    if (internal[130])
    {
      v7 = sub_19B424AE0();
      sub_19B425248(v7, internal[130]);
      v8 = internal[130];
      if (v8)
      {
        (*(*v8 + 8))(v8);
      }

      internal[130] = 0;
    }

    if (internal[135])
    {
      v9 = sub_19B677074();
      sub_19B426A14(v9, 0, internal[135]);
      v10 = internal[135];
      if (v10)
      {
        (*(*v10 + 8))(v10);
      }

      internal[135] = 0;
    }

    v11 = internal[129];
    if (v11)
    {

      internal[129] = 0;
    }

    v12 = internal[128];
    if (v12)
    {

      internal[128] = 0;
    }
  }
}

- (BOOL)sendDeviceMotionHostGravityToKeyboard:(id *)keyboard
{
  v4 = *(sub_19B677074() + 48);
  if (v4)
  {
    var2 = keyboard->var2;
    v8 = 114;
    v9 = *keyboard->var0;
    v10 = var2;
    LOBYTE(v4) = objc_msgSend_setReport_payload_length_(v4, v5, 114, &v8, 6);
  }

  return v4;
}

- (void)onDeviceMotionForKeyboardMotion:(const Sample *)motion
{
  internal = self->_internal;
  v5 = sub_19B420740(&motion->acceleration.x);
  v7 = v6;
  v9 = v8;
  v10 = sub_19B639268(v5, v6, v8, *(internal + 264), *(internal + 265), *(internal + 266));
  v11 = *(internal + 267);
  timestamp = motion->timestamp;
  v13 = *(internal + 131);
  if (v13 < 0.0 || ((v11 * 0.017453) > 0.0 ? (v14 = *&v10 <= (v11 * 0.017453)) : (v14 = 1), !v14 || timestamp - v13 > (1.0 / *(internal + 268))))
  {
    v15 = v11 > 0.0;
    v16 = v11 >= 255.0;
    if (v11 < 255.0)
    {
      v15 = 0;
    }

    v17 = *(internal + 268);
    if (v11 <= 0.0)
    {
      v16 = 1;
    }

    v18 = v17 > 0.0;
    v19 = v17 >= 255.0;
    if (v17 < 255.0)
    {
      v18 = 0;
    }

    v20 = vcvts_n_s32_f32(v5 + 1.0, 7uLL);
    v21 = vcvts_n_s32_f32(v7 + 1.0, 7uLL);
    v22 = vcvts_n_s32_f32(v9 + 1.0, 7uLL);
    v23 = *(internal + 128);
    v24 = *(internal + 129);
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    if (v17 <= 0.0)
    {
      v19 = 1;
    }

    v27[2] = sub_19B6394F4;
    v27[3] = &unk_1E75339D8;
    v25 = v18 << 31 >> 31;
    if (!v19)
    {
      LOBYTE(v25) = v17;
    }

    v26 = v15 << 31 >> 31;
    v27[4] = v23;
    v28 = v20;
    v29 = v21;
    v30 = v22;
    if (!v16)
    {
      LOBYTE(v26) = v11;
    }

    v31 = v25;
    v32 = v26;
    objc_msgSend_addOperationWithBlock_(v24, v23, v27, v11);
    *(internal + 264) = v5;
    *(internal + 265) = v7;
    *(internal + 266) = v9;
    *(internal + 131) = timestamp;
  }
}

@end