@interface ARLocationSensor
- (ARLocationSensor)init;
- (ARLocationSensor)initWithBundleIdentifier:(id)identifier;
- (ARSensorDelegate)delegate;
- (CLLocationManagerDelegate)locationManagerDelegate;
- (id)_createLocationManager;
- (id)_validateLocationAuthorization;
- (id)updateFromLocationData:(id)data;
- (void)_attemptAltitudeLookupAtCoordinate:(CLLocationCoordinate2D)coordinate attemptCount:(unsigned int)count lookupStartDate:(id)date completionHandler:(id)handler;
- (void)_start;
- (void)configureForReplay;
- (void)dealloc;
- (void)locationManager:(id)manager didFailWithError:(id)error;
- (void)locationManager:(id)manager didUpdateLocations:(id)locations;
- (void)locationManagerDidChangeAuthorization:(id)authorization;
- (void)lookupAltitudeAtCoordinate:(CLLocationCoordinate2D)coordinate completionHandler:(id)handler;
- (void)start;
- (void)stop;
- (void)updateARSessionState:(unint64_t)state;
- (void)updateEstimationFromVIOPose:(id)pose imageData:(id)data;
- (void)updateFromVisualLocalizationResult:(id)result;
- (void)waitForOutstandingCallbacks;
@end

@implementation ARLocationSensor

- (ARLocationSensor)init
{
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v5 = [(ARLocationSensor *)self initWithBundleIdentifier:bundleIdentifier];

  return v5;
}

- (ARLocationSensor)initWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v20.receiver = self;
  v20.super_class = ARLocationSensor;
  v5 = [(ARLocationSensor *)&v20 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v6;

    __asm { FMOV            V0.2D, #-1.0 }

    *&v5->_lastVIOUpdateTimestamp = _Q0;
    v5->_lastLocationUpdateTimestamp = -1.0;
    *&v5->_isLiveSensor = 1;
    v5->_startTimestamp = 0.0;
    v13 = ARCreateFixedPriorityDispatchQueue("com.apple.arkit.locationSensor.locationManager", 0);
    locationManagerQueue = v5->_locationManagerQueue;
    v5->_locationManagerQueue = v13;

    v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
    altitudeSkipTiles = v5->_altitudeSkipTiles;
    v5->_altitudeSkipTiles = v15;

    v17 = objc_opt_new();
    localizer = v5->_localizer;
    v5->_localizer = v17;
  }

  return v5;
}

- (void)configureForReplay
{
  v16 = *MEMORY[0x1E69E9840];
  self->_isLiveSensor = 0;
  v3 = objc_opt_new();
  locationPlayer = self->_locationPlayer;
  self->_locationPlayer = v3;

  v6 = _ARLogSensor_2(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = self->_locationPlayer;
    v10 = 138543874;
    v11 = v8;
    v12 = 2048;
    selfCopy = self;
    v14 = 2048;
    v15 = v9;
    _os_log_impl(&dword_1C241C000, v6, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Created _CLLocationPlayer: %p", &v10, 0x20u);
  }

  [(_CLLocationPlayer *)self->_locationPlayer setSimulationEnabled:0];
  [(_CLLocationPlayer *)self->_locationPlayer start];
}

- (void)start
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = _ARLogSensor_2(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 138543618;
    v10 = v5;
    v11 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1C241C000, v3, OS_LOG_TYPE_INFO, "%{public}@ <%p>: start", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  locationManagerQueue = self->_locationManagerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __25__ARLocationSensor_start__block_invoke;
  block[3] = &unk_1E817BD88;
  objc_copyWeak(&v8, buf);
  dispatch_async(locationManagerQueue, block);
  objc_destroyWeak(&v8);
  objc_destroyWeak(buf);
}

void __25__ARLocationSensor_start__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _start];
}

- (void)_start
{
  v18 = *MEMORY[0x1E69E9840];
  if (!self->_isRunning)
  {
    kdebug_trace();
    locationManager = self->_locationManager;
    if (!locationManager)
    {
      _createLocationManager = [(ARLocationSensor *)self _createLocationManager];
      v5 = self->_locationManager;
      self->_locationManager = _createLocationManager;

      locationManager = self->_locationManager;
    }

    if ([(CLLocationManager *)locationManager authorizationStatus]== kCLAuthorizationStatusNotDetermined)
    {
      [(CLLocationManager *)self->_locationManager requestWhenInUseAuthorization];
LABEL_14:
      kdebug_trace();
      return;
    }

    _validateLocationAuthorization = [(ARLocationSensor *)self _validateLocationAuthorization];
    if (_validateLocationAuthorization)
    {
      delegate = [(ARLocationSensor *)self delegate];
      [delegate sensor:self didFailWithError:_validateLocationAuthorization];
    }

    else
    {
      [(CLLocationManager *)self->_locationManager startUpdatingLocation];
      kdebug_trace();
      self->_startTimestamp = ARGetSystemUpTime();
      self->_isRunning = 1;
      v9 = _ARLogSensor_2(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        v14 = 138543618;
        v15 = v11;
        v16 = 2048;
        selfCopy = self;
        _os_log_impl(&dword_1C241C000, v9, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Started location updates", &v14, 0x16u);
      }

      delegate2 = [(ARLocationSensor *)self delegate];
      v13 = objc_opt_respondsToSelector();

      if ((v13 & 1) == 0)
      {
        goto LABEL_13;
      }

      delegate = [(ARLocationSensor *)self delegate];
      [delegate sensorDidStart:self];
    }

LABEL_13:
    goto LABEL_14;
  }
}

- (id)_createLocationManager
{
  v14 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_locationManagerQueue);
  v3 = [objc_alloc(MEMORY[0x1E695FBE8]) initWithEffectiveBundleIdentifier:self->_bundleIdentifier delegate:self onQueue:self->_locationManagerQueue];
  [v3 setActivityType:4];
  [v3 setDesiredAccuracy:*MEMORY[0x1E6985C78]];
  [v3 setDistanceFilter:*MEMORY[0x1E6985C70]];
  [v3 _setGroundAltitudeEnabled:1];
  v4 = _ARLogSensor_2([v3 _setFusionInfoEnabled:1]);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v8 = 138543875;
    v9 = v6;
    v10 = 2048;
    selfCopy = self;
    v12 = 2113;
    v13 = v3;
    _os_log_impl(&dword_1C241C000, v4, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Location manager created: %{private}@", &v8, 0x20u);
  }

  return v3;
}

- (id)_validateLocationAuthorization
{
  v19[1] = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_locationManagerQueue);
  locationServicesEnabled = [MEMORY[0x1E695FBE8] locationServicesEnabled];
  if ((locationServicesEnabled & 1) == 0)
  {
    v18 = *MEMORY[0x1E696A588];
    v6 = ARKitCoreBundle(locationServicesEnabled);
    v7 = [v6 localizedStringForKey:@"Location use is restricted on this device." value:&stru_1F4208A80 table:@"Localizable"];
    v19[0] = v7;
    v8 = MEMORY[0x1E695DF20];
    v9 = v19;
    v10 = &v18;
    goto LABEL_7;
  }

  if ([(CLLocationManager *)self->_locationManager authorizationStatus]!= kCLAuthorizationStatusAuthorizedAlways)
  {
    authorizationStatus = [(CLLocationManager *)self->_locationManager authorizationStatus];
    if (authorizationStatus != 4)
    {
      v16 = *MEMORY[0x1E696A588];
      v6 = ARKitCoreBundle(authorizationStatus);
      v7 = [v6 localizedStringForKey:@"Location authorization denied by the user." value:&stru_1F4208A80 table:@"Localizable"];
      v17 = v7;
      v8 = MEMORY[0x1E695DF20];
      v9 = &v17;
      v10 = &v16;
      goto LABEL_7;
    }
  }

  accuracyAuthorization = [(CLLocationManager *)self->_locationManager accuracyAuthorization];
  if (accuracyAuthorization)
  {
    v14 = *MEMORY[0x1E696A588];
    v6 = ARKitCoreBundle(accuracyAuthorization);
    v7 = [v6 localizedStringForKey:@"Usage of precise location denied by user." value:&stru_1F4208A80 table:@"Localizable"];
    v15 = v7;
    v8 = MEMORY[0x1E695DF20];
    v9 = &v15;
    v10 = &v14;
LABEL_7:
    v11 = [v8 dictionaryWithObjects:v9 forKeys:v10 count:1];

    v12 = ARErrorWithCodeAndUserInfo(101, v11);

    goto LABEL_8;
  }

  v12 = 0;
LABEL_8:

  return v12;
}

- (void)stop
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = _ARLogSensor_2(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 138543618;
    v13 = v5;
    v14 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1C241C000, v3, OS_LOG_TYPE_INFO, "%{public}@ <%p>: stop", buf, 0x16u);
  }

  kdebug_trace();
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ARLocationSensor(%p):", self];
  if (!self->_isLiveSensor)
  {
    v7 = _ARLogSensor_2([(_CLLocationPlayer *)self->_locationPlayer stop]);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v13 = v6;
      _os_log_impl(&dword_1C241C000, v7, OS_LOG_TYPE_INFO, "%@ stopped location player.", buf, 0xCu);
    }
  }

  if (self->_locationManager)
  {
    objc_initWeak(buf, self);
    locationManagerQueue = self->_locationManagerQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __24__ARLocationSensor_stop__block_invoke;
    block[3] = &unk_1E817BDB0;
    objc_copyWeak(&v11, buf);
    v10 = v6;
    dispatch_async(locationManagerQueue, block);

    objc_destroyWeak(&v11);
    objc_destroyWeak(buf);
  }

  else
  {
    kdebug_trace();
  }
}

void __24__ARLocationSensor_stop__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained && (*(WeakRetained + 41) & 1) != 0)
  {
    [WeakRetained[2] stopUpdatingLocation];
    *(v3 + 41) = 0;
    v3[6] = 0;
    v4 = kdebug_trace();
    v5 = _ARLogSensor_2(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 32);
      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&dword_1C241C000, v5, OS_LOG_TYPE_INFO, "%@ Stopped location updates", &v7, 0xCu);
    }
  }

  else
  {
    kdebug_trace();
  }
}

- (void)waitForOutstandingCallbacks
{
  dispatch_assert_queue_not_V2(self->_locationManagerQueue);
  locationManagerQueue = self->_locationManagerQueue;

  dispatch_sync(locationManagerQueue, &__block_literal_global_4);
}

- (void)dealloc
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = _ARLogSensor_2(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 138543618;
    v10 = v5;
    v11 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1C241C000, v3, OS_LOG_TYPE_INFO, "%{public}@ <%p>: dealloc", buf, 0x16u);
  }

  kdebug_trace();
  [(_CLLocationPlayer *)self->_locationPlayer stop];
  [(CLLocationManager *)self->_locationManager stopUpdatingLocation];
  v6 = kdebug_trace();
  v7 = _ARLogSensor_2(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C241C000, v7, OS_LOG_TYPE_INFO, "Stopped location updates", buf, 2u);
  }

  v8.receiver = self;
  v8.super_class = ARLocationSensor;
  [(ARLocationSensor *)&v8 dealloc];
}

- (void)updateARSessionState:(unint64_t)state
{
  v26 = *MEMORY[0x1E69E9840];
  switch(state)
  {
    case 2uLL:
      v5 = _ARLogSensor_2(self);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        v10 = objc_opt_class();
        v7 = NSStringFromClass(v10);
        *buf = 138543618;
        v23 = v7;
        v24 = 2048;
        selfCopy5 = self;
        v8 = "%{public}@ <%p>: ARSessionStateInterrupted";
        goto LABEL_10;
      }

      goto LABEL_11;
    case 1uLL:
      v5 = _ARLogSensor_2(self);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        v9 = objc_opt_class();
        v7 = NSStringFromClass(v9);
        *buf = 138543618;
        v23 = v7;
        v24 = 2048;
        selfCopy5 = self;
        v8 = "%{public}@ <%p>: ARSessionStateRunning";
        goto LABEL_10;
      }

LABEL_11:

      locationManagerQueue = self->_locationManagerQueue;
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __41__ARLocationSensor_updateARSessionState___block_invoke;
      v21[3] = &unk_1E817BDD8;
      v21[4] = self;
      v21[5] = state;
      dispatch_async(locationManagerQueue, v21);
      return;
    case 0uLL:
      v5 = _ARLogSensor_2(self);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        v6 = objc_opt_class();
        v7 = NSStringFromClass(v6);
        *buf = 138543618;
        v23 = v7;
        v24 = 2048;
        selfCopy5 = self;
        v8 = "%{public}@ <%p>: ARSessionStatePaused";
LABEL_10:
        _os_log_impl(&dword_1C241C000, v5, OS_LOG_TYPE_DEBUG, v8, buf, 0x16u);

        goto LABEL_11;
      }

      goto LABEL_11;
  }

  if (ARShouldUseLogTypeError_onceToken_1 != -1)
  {
    [ARLocationSensor updateARSessionState:];
  }

  v12 = ARShouldUseLogTypeError_internalOSVersion_1;
  v13 = _ARLogSensor_2(self);
  v14 = v13;
  if (v12 == 1)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      *buf = 138543618;
      v23 = v16;
      v24 = 2048;
      selfCopy5 = self;
      v17 = "%{public}@ <%p>: Unknown ARSessionState received";
      v18 = v14;
      v19 = OS_LOG_TYPE_ERROR;
LABEL_19:
      _os_log_impl(&dword_1C241C000, v18, v19, v17, buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v20 = objc_opt_class();
    v16 = NSStringFromClass(v20);
    *buf = 138543618;
    v23 = v16;
    v24 = 2048;
    selfCopy5 = self;
    v17 = "Error: %{public}@ <%p>: Unknown ARSessionState received";
    v18 = v14;
    v19 = OS_LOG_TYPE_INFO;
    goto LABEL_19;
  }
}

uint64_t __41__ARLocationSensor_updateARSessionState___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = 24;
  if (*(v1 + 40))
  {
    v2 = 16;
  }

  return [*(v1 + v2) _updateARSessionState:*(a1 + 40)];
}

- (void)updateEstimationFromVIOPose:(id)pose imageData:(id)data
{
  v52 = *MEMORY[0x1E69E9840];
  poseCopy = pose;
  dataCopy = data;
  worldTrackingState = [poseCopy worldTrackingState];
  [worldTrackingState poseTimestamp];
  v10 = v9;

  if (v10 > self->_lastVIOUpdateTimestamp)
  {
    worldTrackingState2 = [poseCopy worldTrackingState];
    inertialState = [worldTrackingState2 inertialState];

    if (inertialState)
    {
      self->_lastVIOUpdateTimestamp = v10;
      [dataCopy cameraIntrinsics];
      v29 = v14;
      v30 = v15;
      v31 = v16;
      [dataCopy imageResolution];
      locationManagerQueue = self->_locationManagerQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __58__ARLocationSensor_updateEstimationFromVIOPose_imageData___block_invoke;
      block[3] = &unk_1E817BE00;
      v43 = v10;
      v33 = DWORD2(v29);
      v36 = DWORD2(v30);
      block[4] = v29;
      v34 = 0;
      v35 = v30;
      v37 = 0;
      v39 = DWORD2(v31);
      v38 = v31;
      v40 = 0;
      v44 = v18;
      v45 = v19;
      v41 = poseCopy;
      selfCopy = self;
      dispatch_async(locationManagerQueue, block);
      v20 = v41;
LABEL_12:

      goto LABEL_13;
    }

    if (ARShouldUseLogTypeError_onceToken_1 != -1)
    {
      [ARLocationSensor updateARSessionState:];
    }

    v21 = ARShouldUseLogTypeError_internalOSVersion_1;
    v22 = _ARLogSensor_2(v13);
    v20 = v22;
    if (v21 == 1)
    {
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_12;
      }

      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      *buf = 138543874;
      v47 = v24;
      v48 = 2048;
      selfCopy3 = self;
      v50 = 2048;
      v51 = v10;
      v25 = "%{public}@ <%p>: World tracking state is missing inertial state: %f";
      v26 = v20;
      v27 = OS_LOG_TYPE_ERROR;
    }

    else
    {
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        goto LABEL_12;
      }

      v28 = objc_opt_class();
      v24 = NSStringFromClass(v28);
      *buf = 138543874;
      v47 = v24;
      v48 = 2048;
      selfCopy3 = self;
      v50 = 2048;
      v51 = v10;
      v25 = "Error: %{public}@ <%p>: World tracking state is missing inertial state: %f";
      v26 = v20;
      v27 = OS_LOG_TYPE_INFO;
    }

    _os_log_impl(&dword_1C241C000, v26, v27, v25, buf, 0x20u);

    goto LABEL_12;
  }

LABEL_13:
}

void __58__ARLocationSensor_updateEstimationFromVIOPose_imageData___block_invoke(uint64_t a1)
{
  v72 = *MEMORY[0x1E69E9840];
  kdebug_trace();
  v2 = objc_opt_new();
  v3 = [*(a1 + 80) worldTrackingState];
  [v2 setTrackingState:{objc_msgSend(v3, "vioTrackingState")}];

  v4 = [*(a1 + 80) worldTrackingState];
  [v4 originTimestamp];
  [v2 setOriginTimestamp:?];

  [v2 setTimestamp:*(a1 + 96)];
  v5 = [*(a1 + 80) worldTrackingState];
  v6 = [v5 inertialState];
  v56 = ARGetInertialStateInfo_kCV3DVIOInertialStateInfo;
  v57.i64[0] = 201219;
  [v2 setInertialStateInfo:&v56];

  v47 = [*(a1 + 80) worldTrackingState];
  v7 = [v47 inertialState];
  v8 = v7;
  v9 = 0uLL;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  if (v7)
  {
    objc_msgSend_orientation(v7);
    v11 = v56;
    v10 = v57;
    v13 = v58;
    v12 = v59;
    v9 = v60;
    v14 = v61;
  }

  else
  {
    v14 = 0;
    v13 = 0uLL;
    v12 = 0uLL;
    v11 = 0uLL;
    v10 = 0uLL;
  }

  v15 = vzip1q_s64(v11, v13);
  v16 = vzip2q_s64(v13, v9);
  v9.i64[1] = v11.i64[1];
  v70[0] = v15;
  v70[1] = v9;
  v70[2] = v16;
  v70[3] = vzip1q_s64(v10, v12);
  v71 = v14;
  v17 = [MEMORY[0x1E695DEF0] dataWithBytes:v70 length:72];
  v18 = 0;
  if (v8)
  {
    objc_msgSend_gyroscopeBias(v8);
    v19 = v54;
    v20 = vextq_s8(v19, v19, 8uLL).u64[0];
    v21 = v55;
  }

  else
  {
    v19.i64[0] = 0;
    v20 = 0;
    v21 = 0;
  }

  v19.i64[1] = v20;
  v68 = v19;
  v69 = v21;
  v22 = [MEMORY[0x1E695DEF0] dataWithBytes:&v68 length:24];
  if (v8)
  {
    objc_msgSend_velocity(v8);
    v23 = v52;
    v24 = vextq_s8(v23, v23, 8uLL).u64[0];
    v18 = v53;
  }

  else
  {
    v23.i64[0] = 0;
    v24 = 0;
  }

  v23.i64[1] = v24;
  v66 = v23;
  v67 = v18;
  v25 = [MEMORY[0x1E695DEF0] dataWithBytes:&v66 length:24];
  v26 = 0;
  if (v8)
  {
    objc_msgSend_accelerometerBias(v8);
    v27 = v50;
    v28 = vextq_s8(v27, v27, 8uLL).u64[0];
    v29 = v51;
  }

  else
  {
    v27.i64[0] = 0;
    v28 = 0;
    v29 = 0;
  }

  v27.i64[1] = v28;
  v64 = v27;
  v65 = v29;
  v30 = [MEMORY[0x1E695DEF0] dataWithBytes:&v64 length:24];
  if (v8)
  {
    objc_msgSend_position(v8);
    v31 = v48;
    v32 = vextq_s8(v31, v31, 8uLL).u64[0];
    v26 = v49;
  }

  else
  {
    v31.i64[0] = 0;
    v32 = 0;
  }

  v31.i64[1] = v32;
  v62 = v31;
  v63 = v26;
  v33 = [MEMORY[0x1E695DEF0] dataWithBytes:&v62 length:24];
  v34 = [v17 length];
  v35 = [v22 length] + v34;
  v36 = [v25 length];
  v37 = v35 + v36 + [v30 length];
  v38 = [v33 length];
  v39 = [MEMORY[0x1E695DF88] dataWithCapacity:v37 + v38];
  [v39 appendData:v17];
  [v39 appendData:v22];
  [v39 appendData:v25];
  [v39 appendData:v30];
  [v39 appendData:v33];

  [v2 setInertialState:v39];
  v40 = [*(a1 + 80) worldTrackingState];
  v41 = [v40 inertialState];
  v56 = ARGetInertialCovarianceInfo_kCV3DVIOInertialCovarianceInfo;
  v57.i64[0] = 199683;
  [v2 setInertialCovarianceInfo:&v56];

  v42 = [*(a1 + 80) worldTrackingState];
  v43 = [v42 inertialState];
  v44 = [MEMORY[0x1E695DEF0] dataWithBytes:objc_msgSend(v43 length:{"covarianceMatrix"), 1800}];
  [v2 setInertialCovariance:v44];

  [*(a1 + 80) visionCameraTransform];
  [v2 setCameraPose:?];
  [v2 setCameraIntrinsics:{*(a1 + 32), *(a1 + 48), *(a1 + 64)}];
  [v2 setCameraImageResolution:{*(a1 + 104), *(a1 + 112)}];
  v45 = *(a1 + 88);
  v46 = 16;
  if (!*(v45 + 40))
  {
    v46 = 24;
  }

  [*(v45 + v46) _updateVIOEstimation:v2];
  kdebug_trace();
}

- (void)_attemptAltitudeLookupAtCoordinate:(CLLocationCoordinate2D)coordinate attemptCount:(unsigned int)count lookupStartDate:(id)date completionHandler:(id)handler
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  v149 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  handlerCopy = handler;
  dispatch_assert_queue_V2(self->_locationManagerQueue);
  if (self->_locationManager)
  {
    if (dateCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    _createLocationManager = [(ARLocationSensor *)self _createLocationManager];
    locationManager = self->_locationManager;
    self->_locationManager = _createLocationManager;

    if (dateCopy)
    {
      goto LABEL_3;
    }
  }

  dateCopy = [MEMORY[0x1E695DF00] date];
LABEL_3:
  locationServicesEnabled = [MEMORY[0x1E695FBE8] locationServicesEnabled];
  if (!locationServicesEnabled || [(CLLocationManager *)self->_locationManager authorizationStatus]!= kCLAuthorizationStatusAuthorizedAlways && (locationServicesEnabled = [(CLLocationManager *)self->_locationManager authorizationStatus], locationServicesEnabled != 4) || (locationServicesEnabled = [(CLLocationManager *)self->_locationManager accuracyAuthorization]) != CLAccuracyAuthorizationFullAccuracy)
  {
    if (ARShouldUseLogTypeError_onceToken_1 != -1)
    {
      [ARLocationSensor updateARSessionState:];
    }

    v14 = ARShouldUseLogTypeError_internalOSVersion_1;
    v15 = _ARLogSensor_2(locationServicesEnabled);
    v16 = v15;
    if (v14 == 1)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v17 = objc_opt_class();
        v18 = NSStringFromClass(v17);
        *buf = 138543618;
        v144 = v18;
        v145 = 2048;
        selfCopy17 = self;
        v19 = "%{public}@ <%p>: Precise location permissions must be enabled to use geo tracking features.";
        v20 = v16;
        v21 = OS_LOG_TYPE_ERROR;
LABEL_14:
        _os_log_impl(&dword_1C241C000, v20, v21, v19, buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v22 = objc_opt_class();
      v18 = NSStringFromClass(v22);
      *buf = 138543618;
      v144 = v18;
      v145 = 2048;
      selfCopy17 = self;
      v19 = "Error: %{public}@ <%p>: Precise location permissions must be enabled to use geo tracking features.";
      v20 = v16;
      v21 = OS_LOG_TYPE_INFO;
      goto LABEL_14;
    }

    v23 = @"FailedDueToMissingPermissions";
    v24 = 0.0;
LABEL_16:
    [ARSessionMetrics recordAltitudeLookupAttemptWithDuration:v23 andResult:v24];
LABEL_17:
    handlerCopy[2](handlerCopy, 0);
    goto LABEL_18;
  }

  currentLocation = self->_currentLocation;
  if (currentLocation)
  {
    v28 = objc_msgSend_location(currentLocation);
    [v28 coordinate];
    v31 = ARLInfinityAngularDistance(latitude, longitude, v29, v30);

    v33 = _ARLogSensor_2(v32);
    v34 = os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG);
    if (v31 > 0.05)
    {
      if (v34)
      {
        v35 = objc_opt_class();
        v36 = NSStringFromClass(v35);
        *buf = 138543875;
        v144 = v36;
        v145 = 2048;
        selfCopy17 = self;
        v147 = 2049;
        *v148 = 0x3FA999999999999ALL;
        _os_log_impl(&dword_1C241C000, v33, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Lookup coordinate too far away (>%{private}f degrees) from current location to perform CL altitude lookup", buf, 0x20u);
      }

      goto LABEL_17;
    }

    if (v34)
    {
      v44 = objc_opt_class();
      v45 = NSStringFromClass(v44);
      *buf = 138544387;
      v144 = v45;
      v145 = 2048;
      selfCopy17 = self;
      v147 = 1024;
      *v148 = count + 1;
      *&v148[4] = 2049;
      *&v148[6] = latitude;
      *&v148[14] = 2049;
      *&v148[16] = longitude;
      _os_log_impl(&dword_1C241C000, v33, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Performing CL altitude look up attempt #%d at coordinate: %{private}f, %{private}f", buf, 0x30u);
    }

    v134 = 0u;
    v135 = 0u;
    v132 = 0u;
    v133 = 0u;
    v46 = self->_altitudeSkipTiles;
    v47 = [(NSMutableArray *)v46 countByEnumeratingWithState:&v132 objects:v142 count:16];
    if (v47)
    {
      v48 = v47;
      v49 = *v133;
      while (2)
      {
        for (i = 0; i != v48; ++i)
        {
          if (*v133 != v49)
          {
            objc_enumerationMutation(v46);
          }

          v51 = [*(*(&v132 + 1) + 8 * i) isInside:{latitude, longitude}];
          if (v51)
          {
            v70 = _ARLogSensor_2(v51);
            if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
            {
              v71 = objc_opt_class();
              v72 = NSStringFromClass(v71);
              *buf = 138543618;
              v144 = v72;
              v145 = 2048;
              selfCopy17 = self;
              _os_log_impl(&dword_1C241C000, v70, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Tile hasn't been loaded. Skipping look up.", buf, 0x16u);
            }

            v55 = 0;
            goto LABEL_57;
          }
        }

        v48 = [(NSMutableArray *)v46 countByEnumeratingWithState:&v132 objects:v142 count:16];
        if (v48)
        {
          continue;
        }

        break;
      }
    }

    v52 = 0;
    do
    {
      v53 = self->_locationManager;
      v54 = [objc_alloc(MEMORY[0x1E6985C40]) initWithLatitude:latitude longitude:longitude];
      v55 = [(CLLocationManager *)v53 _groundAltitudeAtLocation:v54];

      if (v55)
      {
        v56 = 1;
      }

      else
      {
        v56 = v52 >= 7;
      }

      ++v52;
    }

    while (!v56);
    if (v55)
    {
      isAltitudeWgs84Available = [v55 isAltitudeWgs84Available];
      if (isAltitudeWgs84Available)
      {
        v58 = _ARLogSensor_2(isAltitudeWgs84Available);
        if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
        {
          v59 = objc_opt_class();
          v60 = NSStringFromClass(v59);
          *buf = 138544131;
          v144 = v60;
          v145 = 2048;
          selfCopy17 = self;
          v147 = 2049;
          *v148 = latitude;
          *&v148[8] = 2049;
          *&v148[10] = longitude;
          _os_log_impl(&dword_1C241C000, v58, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Look up succeeded at coordinate: %{private}f, %{private}f", buf, 0x2Au);
        }

        [dateCopy timeIntervalSinceNow];
        [ARSessionMetrics recordAltitudeLookupAttemptWithDuration:@"Success" andResult:fabs(v61)];
        v62 = objc_msgSend_location(self->_currentLocation);
        [v62 coordinate];
        v65 = ARLInfinityDistance(latitude, longitude, v63, v64);

        if (v65 > 60.0)
        {
          v67 = _ARLogSensor_2(v66);
          if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
          {
            v68 = objc_opt_class();
            v69 = NSStringFromClass(v68);
            *buf = 138543875;
            v144 = v69;
            v145 = 2048;
            selfCopy17 = self;
            v147 = 2049;
            *v148 = 0x404E000000000000;
            _os_log_impl(&dword_1C241C000, v67, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Look up coordinate too far away (>%{private}f meters) from current location to perform VL altitude look up", buf, 0x20u);
          }

          (handlerCopy)[2](handlerCopy, v55);
          goto LABEL_96;
        }

        localizer = self->_localizer;
        v117 = [objc_alloc(MEMORY[0x1E6985C40]) initWithLatitude:latitude longitude:longitude];
        locationManagerQueue = self->_locationManagerQueue;
        v121[0] = MEMORY[0x1E69E9820];
        v121[1] = 3221225472;
        v121[2] = __102__ARLocationSensor__attemptAltitudeLookupAtCoordinate_attemptCount_lookupStartDate_completionHandler___block_invoke_65;
        v121[3] = &unk_1E817BE78;
        v121[4] = self;
        v122 = v55;
        v123 = handlerCopy;
        v55 = v55;
        [(VLLocalizer *)localizer determineAltitudesAtLocation:v117 callbackQueue:locationManagerQueue callback:v121];

        v85 = v123;
        goto LABEL_65;
      }

      if (ARShouldUseLogTypeError_onceToken_1 != -1)
      {
        [ARLocationSensor _attemptAltitudeLookupAtCoordinate:attemptCount:lookupStartDate:completionHandler:];
      }

      v108 = ARShouldUseLogTypeError_internalOSVersion_1;
      v109 = _ARLogSensor_2(isAltitudeWgs84Available);
      v110 = v109;
      if (v108 == 1)
      {
        if (os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
        {
          v111 = objc_opt_class();
          v112 = NSStringFromClass(v111);
          *buf = 138543618;
          v144 = v112;
          v145 = 2048;
          selfCopy17 = self;
          v113 = "%{public}@ <%p>: Altitude value is not available. Giving up.";
          v114 = v110;
          v115 = OS_LOG_TYPE_ERROR;
LABEL_93:
          _os_log_impl(&dword_1C241C000, v114, v115, v113, buf, 0x16u);
        }
      }

      else if (os_log_type_enabled(v109, OS_LOG_TYPE_INFO))
      {
        v119 = objc_opt_class();
        v112 = NSStringFromClass(v119);
        *buf = 138543618;
        v144 = v112;
        v145 = 2048;
        selfCopy17 = self;
        v113 = "Error: %{public}@ <%p>: Altitude value is not available. Giving up.";
        v114 = v110;
        v115 = OS_LOG_TYPE_INFO;
        goto LABEL_93;
      }

      [dateCopy timeIntervalSinceNow];
      v106 = fabs(v120);
      v107 = @"FailedDueToUnavailableAltitude";
      goto LABEL_95;
    }

    longitude = [[ARSkipTileBounds alloc] initWithCoordinate:latitude, longitude];
    v55 = longitude;
LABEL_57:
    v74 = count + 1;
    if (count + 1 <= 5)
    {
      v75 = _attemptAltitudeLookupAtCoordinate_attemptCount_lookupStartDate_completionHandler__kDelayTimes[v74];
      v76 = _ARLogSensor_2(longitude);
      if (os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG))
      {
        v77 = objc_opt_class();
        v78 = NSStringFromClass(v77);
        *buf = 138543874;
        v144 = v78;
        v145 = 2048;
        selfCopy17 = self;
        v147 = 2048;
        *v148 = v75;
        _os_log_impl(&dword_1C241C000, v76, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: CL Look up failed. Scheduling another attempt in %f seconds.", buf, 0x20u);
      }

      if (v55)
      {
        v80 = _ARLogSensor_2(v79);
        if (os_log_type_enabled(v80, OS_LOG_TYPE_DEBUG))
        {
          v81 = objc_opt_class();
          v82 = NSStringFromClass(v81);
          *buf = 138543618;
          v144 = v82;
          v145 = 2048;
          selfCopy17 = self;
          _os_log_impl(&dword_1C241C000, v80, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Storing DEM bounds.", buf, 0x16u);
        }

        [(NSMutableArray *)self->_altitudeSkipTiles addObject:v55];
      }

      v83 = dispatch_time(0, (v75 * 1000000000.0));
      v84 = self->_locationManagerQueue;
      v124[0] = MEMORY[0x1E69E9820];
      v124[1] = 3221225472;
      v124[2] = __102__ARLocationSensor__attemptAltitudeLookupAtCoordinate_attemptCount_lookupStartDate_completionHandler___block_invoke_55;
      v124[3] = &unk_1E817BE50;
      v125 = v55;
      selfCopy12 = self;
      v129 = latitude;
      v130 = longitude;
      v131 = v74;
      v127 = dateCopy;
      v128 = handlerCopy;
      v55 = v55;
      dispatch_after(v83, v84, v124);

      v85 = v125;
LABEL_65:

LABEL_96:
      goto LABEL_18;
    }

    if (ARShouldUseLogTypeError_onceToken_1 != -1)
    {
      [ARLocationSensor _attemptAltitudeLookupAtCoordinate:attemptCount:lookupStartDate:completionHandler:];
    }

    v94 = ARShouldUseLogTypeError_internalOSVersion_1;
    v95 = _ARLogSensor_2(longitude);
    v96 = v95;
    if (v94 == 1)
    {
      if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
      {
        v97 = objc_opt_class();
        v98 = NSStringFromClass(v97);
        *buf = 138543618;
        v144 = v98;
        v145 = 2048;
        selfCopy17 = self;
        v99 = "%{public}@ <%p>: All CL altitude look up attempts have failed. Giving up.";
        v100 = v96;
        v101 = OS_LOG_TYPE_ERROR;
LABEL_82:
        _os_log_impl(&dword_1C241C000, v100, v101, v99, buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v95, OS_LOG_TYPE_INFO))
    {
      v104 = objc_opt_class();
      v98 = NSStringFromClass(v104);
      *buf = 138543618;
      v144 = v98;
      v145 = 2048;
      selfCopy17 = self;
      v99 = "Error: %{public}@ <%p>: All CL altitude look up attempts have failed. Giving up.";
      v100 = v96;
      v101 = OS_LOG_TYPE_INFO;
      goto LABEL_82;
    }

    [dateCopy timeIntervalSinceNow];
    v106 = fabs(v105);
    v107 = @"FailedDueToTimeout";
LABEL_95:
    [ARSessionMetrics recordAltitudeLookupAttemptWithDuration:v107 andResult:v106];
    handlerCopy[2](handlerCopy, 0);
    goto LABEL_96;
  }

  v37 = count + 1;
  if (count + 1 > 5)
  {
    if (ARShouldUseLogTypeError_onceToken_1 != -1)
    {
      [ARLocationSensor updateARSessionState:];
    }

    v86 = ARShouldUseLogTypeError_internalOSVersion_1;
    v87 = _ARLogSensor_2(currentLocation);
    v88 = v87;
    if (v86 == 1)
    {
      if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
      {
        v89 = objc_opt_class();
        v90 = NSStringFromClass(v89);
        *buf = 138543618;
        v144 = v90;
        v145 = 2048;
        selfCopy17 = self;
        v91 = "%{public}@ <%p>: All CL altitude look up attempts have failed (no current location). Giving up.";
        v92 = v88;
        v93 = OS_LOG_TYPE_ERROR;
LABEL_78:
        _os_log_impl(&dword_1C241C000, v92, v93, v91, buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v87, OS_LOG_TYPE_INFO))
    {
      v102 = objc_opt_class();
      v90 = NSStringFromClass(v102);
      *buf = 138543618;
      v144 = v90;
      v145 = 2048;
      selfCopy17 = self;
      v91 = "Error: %{public}@ <%p>: All CL altitude look up attempts have failed (no current location). Giving up.";
      v92 = v88;
      v93 = OS_LOG_TYPE_INFO;
      goto LABEL_78;
    }

    [dateCopy timeIntervalSinceNow];
    v24 = fabs(v103);
    v23 = @"FailedDueToNoLocation";
    goto LABEL_16;
  }

  v38 = _attemptAltitudeLookupAtCoordinate_attemptCount_lookupStartDate_completionHandler__kDelayTimes[v37];
  v39 = _ARLogSensor_2(0);
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
  {
    v40 = objc_opt_class();
    v41 = NSStringFromClass(v40);
    *buf = 138543874;
    v144 = v41;
    v145 = 2048;
    selfCopy17 = self;
    v147 = 2048;
    *v148 = v38;
    _os_log_impl(&dword_1C241C000, v39, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Anchor altitude lookup is too soon; current location hasn't been set yet. Trying again in %f seconds.", buf, 0x20u);
  }

  v42 = dispatch_time(0, (v38 * 1000000000.0));
  v43 = self->_locationManagerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __102__ARLocationSensor__attemptAltitudeLookupAtCoordinate_attemptCount_lookupStartDate_completionHandler___block_invoke;
  block[3] = &unk_1E817BE28;
  block[4] = self;
  v139 = latitude;
  v140 = longitude;
  v141 = v37;
  v137 = dateCopy;
  v138 = handlerCopy;
  dispatch_after(v42, v43, block);

LABEL_18:
}

uint64_t __102__ARLocationSensor__attemptAltitudeLookupAtCoordinate_attemptCount_lookupStartDate_completionHandler___block_invoke_55(uint64_t a1)
{
  if (*(a1 + 32))
  {
    [*(*(a1 + 40) + 88) removeObject:?];
  }

  v2 = *(a1 + 80);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = *(a1 + 72);

  return [v3 _attemptAltitudeLookupAtCoordinate:v2 attemptCount:v4 lookupStartDate:v5 completionHandler:{v6, v7}];
}

void __102__ARLocationSensor__attemptAltitudeLookupAtCoordinate_attemptCount_lookupStartDate_completionHandler___block_invoke_65(uint64_t a1, void *a2, void *a3)
{
  v59 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6 || (v6 = [v5 count]) == 0)
  {
    if (ARShouldUseLogTypeError_onceToken_1 != -1)
    {
      [ARLocationSensor updateARSessionState:];
    }

    v38 = ARShouldUseLogTypeError_internalOSVersion_1;
    v39 = _ARLogSensor_2(v6);
    v40 = v39;
    if (v38 == 1)
    {
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        v41 = objc_opt_class();
        v42 = NSStringFromClass(v41);
        v43 = *(a1 + 32);
        v51 = 138543874;
        v52 = v42;
        v53 = 2048;
        v54 = v43;
        v55 = 2112;
        v56 = v7;
        v44 = "%{public}@ <%p>: High resolution (VL) altitude lookup failed, error=%@";
        v45 = v40;
        v46 = OS_LOG_TYPE_ERROR;
LABEL_19:
        _os_log_impl(&dword_1C241C000, v45, v46, v44, &v51, 0x20u);
      }
    }

    else if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      v47 = objc_opt_class();
      v42 = NSStringFromClass(v47);
      v48 = *(a1 + 32);
      v51 = 138543874;
      v52 = v42;
      v53 = 2048;
      v54 = v48;
      v55 = 2112;
      v56 = v7;
      v44 = "Error: %{public}@ <%p>: High resolution (VL) altitude lookup failed, error=%@";
      v45 = v40;
      v46 = OS_LOG_TYPE_INFO;
      goto LABEL_19;
    }

    (*(*(a1 + 48) + 16))(*(a1 + 48), *(a1 + 40), v49, v50);
    goto LABEL_21;
  }

  v8 = [v5 objectAtIndexedSubscript:0];
  [v8 doubleValue];
  v10 = v9;
  [*(a1 + 40) altitudeWgs84];
  v12 = v11;

  v13 = [v5 count];
  v14 = 0;
  if (v13 >= 2)
  {
    v14 = 0;
    v15 = vabdd_f64(v10, v12);
    for (i = 1; i < v13; ++i)
    {
      v17 = [v5 objectAtIndexedSubscript:i];
      [v17 doubleValue];
      v19 = v18;
      [*(a1 + 40) altitudeWgs84];
      v21 = vabdd_f64(v19, v20);

      if (v21 < v15)
      {
        v15 = v21;
        v14 = i;
      }

      v13 = [v5 count];
    }
  }

  v22 = _ARLogSensor_2(v13);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    v23 = objc_opt_class();
    v24 = NSStringFromClass(v23);
    v25 = *(a1 + 32);
    [*(a1 + 40) altitude];
    v27 = v26;
    v28 = [v5 objectAtIndexedSubscript:v14];
    [v28 doubleValue];
    v51 = 138544131;
    v52 = v24;
    v53 = 2048;
    v54 = v25;
    v55 = 2049;
    v56 = v27;
    v57 = 2049;
    v58 = v29;
    _os_log_impl(&dword_1C241C000, v22, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: High Resolution Altitude Lookup: SUCCESS (%{private}f :> %{private}f)", &v51, 0x2Au);
  }

  v30 = objc_alloc(MEMORY[0x1E6985C58]);
  v31 = [v5 objectAtIndexedSubscript:v14];
  [v31 doubleValue];
  v33 = v32;
  [*(a1 + 40) undulation];
  v35 = ARWGS84ToMSLAltitude(v33, v34);
  [*(a1 + 40) undulation];
  v37 = [v30 initWithEstimate:objc_msgSend(*(a1 + 40) uncertainty:"undulationModel") undulation:v35 undulationModel:{-1.0, v36}];

  (*(*(a1 + 48) + 16))();
LABEL_21:
}

- (void)lookupAltitudeAtCoordinate:(CLLocationCoordinate2D)coordinate completionHandler:(id)handler
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  handlerCopy = handler;
  locationManagerQueue = self->_locationManagerQueue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __65__ARLocationSensor_lookupAltitudeAtCoordinate_completionHandler___block_invoke;
  v10[3] = &unk_1E817BEA0;
  v12 = latitude;
  v13 = longitude;
  v10[4] = self;
  v11 = handlerCopy;
  v9 = handlerCopy;
  dispatch_async(locationManagerQueue, v10);
}

- (void)updateFromVisualLocalizationResult:(id)result
{
  v19 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  v5 = resultCopy;
  if (self->_isLiveSensor && (v6 = [resultCopy isSecure], (v6 & 1) == 0))
  {
    v10 = _ARLogSensor_2(v6);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      *buf = 138543618;
      v16 = v12;
      v17 = 2048;
      selfCopy = self;
      _os_log_impl(&dword_1C241C000, v10, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Skipping update due to insecure location data.", buf, 0x16u);
    }
  }

  else
  {
    objc_msgSend_timestamp(v5);
    if (v7 > self->_lastVLUpdateTimestamp)
    {
      objc_msgSend_timestamp(v5);
      self->_lastVLUpdateTimestamp = v8;
      locationManagerQueue = self->_locationManagerQueue;
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __55__ARLocationSensor_updateFromVisualLocalizationResult___block_invoke;
      v13[3] = &unk_1E817BEC8;
      v13[4] = self;
      v14 = v5;
      dispatch_async(locationManagerQueue, v13);
    }
  }
}

void __55__ARLocationSensor_updateFromVisualLocalizationResult___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = _ARLogSensor_2(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v5 = *(a1 + 32);
    v6 = [*(a1 + 40) localizationResult];
    v7 = v6;
    if (v6)
    {
      objc_msgSend_location(v6);
      v8 = v27;
      v9 = v28;
    }

    else
    {
      v8 = 0uLL;
      v28 = 0u;
      v29 = 0u;
      v27 = 0u;
      v9 = 0uLL;
    }

    v10 = ARVector3Description(vcvt_hight_f32_f64(vcvt_f32_f64(v8), v9));
    v11 = [*(a1 + 40) localizationResult];
    v12 = v11;
    if (v11)
    {
      objc_msgSend_transform(v11);
    }

    else
    {
      memset(v26, 0, sizeof(v26));
    }

    v13.n128_f64[0] = ARMatrix4x4DoubleToFloat(v26);
    v17 = ARMatrix4x4Description(1, v13, v14, v15, v16);
    objc_msgSend_timestamp(*(a1 + 40));
    LODWORD(v26[0].f64[0]) = 138544387;
    *(v26[0].f64 + 4) = v4;
    WORD2(v26[0].f64[1]) = 2048;
    *(&v26[0].f64[1] + 6) = v5;
    HIWORD(v26[1].f64[0]) = 2113;
    *&v26[1].f64[1] = v10;
    LOWORD(v26[2].f64[0]) = 2113;
    *(v26[2].f64 + 2) = v17;
    WORD1(v26[2].f64[1]) = 2048;
    *(&v26[2].f64[1] + 4) = v18;
    _os_log_impl(&dword_1C241C000, v2, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: updateFromVisualLocalizationResult: location = %{private}@, transform = %{private}@, time = %f", v26, 0x34u);
  }

  v19 = objc_alloc(MEMORY[0x1E695FC58]);
  objc_msgSend_timestamp(*(a1 + 40));
  v21 = v20;
  v22 = [*(a1 + 40) localizationResult];
  v23 = [v19 initWithTimestamp:v22 localizationResult:v21];

  v24 = *(a1 + 32);
  v25 = 24;
  if (*(v24 + 40))
  {
    v25 = 16;
  }

  [*(v24 + v25) _updateVLLocalizationResult:v23];
}

- (id)updateFromLocationData:(id)data
{
  v50 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v5 = dataCopy;
  if (self->_isLiveSensor)
  {
    v6 = _ARLogSensor_2(dataCopy);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
LABEL_5:

LABEL_6:
      v12 = v5;
      goto LABEL_7;
    }

    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v44 = 138543618;
    v45 = v8;
    v46 = 2048;
    selfCopy7 = self;
    v9 = "%{public}@ <%p>: updateFromLocationData is only intended for use during replay; skipping.";
    v10 = v6;
    v11 = OS_LOG_TYPE_DEBUG;
LABEL_4:
    _os_log_impl(&dword_1C241C000, v10, v11, v9, &v44, 0x16u);

    goto LABEL_5;
  }

  isSecure = [dataCopy isSecure];
  if (isSecure)
  {
    if (ARShouldUseLogTypeError_onceToken_1 != -1)
    {
      [ARLocationSensor updateARSessionState:];
    }

    v15 = ARShouldUseLogTypeError_internalOSVersion_1;
    v16 = _ARLogSensor_2(isSecure);
    v6 = v16;
    if (v15 == 1)
    {
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_5;
      }

      v17 = objc_opt_class();
      v8 = NSStringFromClass(v17);
      v44 = 138543618;
      v45 = v8;
      v46 = 2048;
      selfCopy7 = self;
      v9 = "%{public}@ <%p>: updateFromLocationData expects insecure data.";
      v10 = v6;
      v11 = OS_LOG_TYPE_ERROR;
    }

    else
    {
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        goto LABEL_5;
      }

      v34 = objc_opt_class();
      v8 = NSStringFromClass(v34);
      v44 = 138543618;
      v45 = v8;
      v46 = 2048;
      selfCopy7 = self;
      v9 = "Error: %{public}@ <%p>: updateFromLocationData expects insecure data.";
      v10 = v6;
      v11 = OS_LOG_TYPE_INFO;
    }

    goto LABEL_4;
  }

  objc_msgSend_timestamp(v5);
  if (v18 <= self->_lastLocationUpdateTimestamp)
  {
    goto LABEL_6;
  }

  objc_msgSend_timestamp(v5);
  self->_lastLocationUpdateTimestamp = v19;
  locationPlayer = self->_locationPlayer;
  v21 = objc_msgSend_location(v5);
  objc_msgSend_timestamp(v5);
  v22 = [(_CLLocationPlayer *)locationPlayer _getFusedLocationFrom:v21 machAbsTime:?];

  v23 = v5;
  v24 = v23;
  if (!v22)
  {
    if (ARShouldUseLogTypeError_onceToken_1 != -1)
    {
      [ARLocationSensor updateARSessionState:];
    }

    v35 = ARShouldUseLogTypeError_internalOSVersion_1;
    v36 = _ARLogSensor_2(v23);
    v27 = v36;
    if (v35 == 1)
    {
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        v37 = objc_opt_class();
        v38 = NSStringFromClass(v37);
        v44 = 138543618;
        v45 = v38;
        v46 = 2048;
        selfCopy7 = self;
        v39 = "%{public}@ <%p>: Location fusion failed.";
        v40 = v27;
        v41 = OS_LOG_TYPE_ERROR;
LABEL_33:
        _os_log_impl(&dword_1C241C000, v40, v41, v39, &v44, 0x16u);
      }
    }

    else if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      v43 = objc_opt_class();
      v38 = NSStringFromClass(v43);
      v44 = 138543618;
      v45 = v38;
      v46 = 2048;
      selfCopy7 = self;
      v39 = "Error: %{public}@ <%p>: Location fusion failed.";
      v40 = v27;
      v41 = OS_LOG_TYPE_INFO;
      goto LABEL_33;
    }

    v12 = v24;
    goto LABEL_35;
  }

  v12 = [v23 copy];

  [v12 setLocation:v22];
  isCoordinateFused = [v22 isCoordinateFused];
  v26 = isCoordinateFused;
  v27 = _ARLogSensor_2(isCoordinateFused);
  v28 = os_log_type_enabled(v27, OS_LOG_TYPE_INFO);
  if (v26)
  {
    if (v28)
    {
      v29 = objc_opt_class();
      v30 = NSStringFromClass(v29);
      v44 = 138543875;
      v45 = v30;
      v46 = 2048;
      selfCopy7 = self;
      v48 = 2113;
      v49 = v12;
      v31 = "%{public}@ <%p>: Updated to fused location: %{private}@.";
      v32 = v27;
      v33 = 32;
LABEL_30:
      _os_log_impl(&dword_1C241C000, v32, OS_LOG_TYPE_INFO, v31, &v44, v33);
    }
  }

  else if (v28)
  {
    v42 = objc_opt_class();
    v30 = NSStringFromClass(v42);
    v44 = 138543618;
    v45 = v30;
    v46 = 2048;
    selfCopy7 = self;
    v31 = "%{public}@ <%p>: Fusion did not produce fused location.";
    v32 = v27;
    v33 = 22;
    goto LABEL_30;
  }

LABEL_35:

  [(ARLocationSensor *)self setCurrentLocation:v12];
LABEL_7:

  return v12;
}

- (void)locationManagerDidChangeAuthorization:(id)authorization
{
  v22 = *MEMORY[0x1E69E9840];
  authorizationCopy = authorization;
  dispatch_assert_queue_V2(self->_locationManagerQueue);
  v6 = _ARLogSensor_2(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    authorizationStatus = [authorizationCopy authorizationStatus];
    accuracyAuthorization = [authorizationCopy accuracyAuthorization];
    v11 = @"No";
    *v17 = 138544130;
    *&v17[12] = 2048;
    *&v17[4] = v8;
    if (!accuracyAuthorization)
    {
      v11 = @"Yes";
    }

    *&v17[14] = self;
    v18 = 1024;
    v19 = authorizationStatus;
    v20 = 2112;
    v21 = v11;
    _os_log_impl(&dword_1C241C000, v6, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: authorization status changed: %i with precise location: %@", v17, 0x26u);
  }

  locationManagerDelegate = [(ARLocationSensor *)self locationManagerDelegate];
  v13 = objc_opt_respondsToSelector();

  if (v13)
  {
    locationManagerDelegate2 = [(ARLocationSensor *)self locationManagerDelegate];
    [locationManagerDelegate2 locationManagerDidChangeAuthorization:authorizationCopy];
  }

  v15 = [(ARLocationSensor *)self _validateLocationAuthorization:*v17];
  if (v15)
  {
    delegate = [(ARLocationSensor *)self delegate];
    [delegate sensor:self didFailWithError:v15];
  }
}

- (void)locationManager:(id)manager didUpdateLocations:(id)locations
{
  v34 = *MEMORY[0x1E69E9840];
  locationsCopy = locations;
  dispatch_assert_queue_V2(self->_locationManagerQueue);
  if (self->_startTimestamp > 0.0)
  {
    v7 = ARGetSystemUpTime();
    startTimestamp = self->_startTimestamp;
    v9 = kdebug_trace();
    self->_startTimestamp = 0.0;
    v10 = _ARLogSensor_2(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v28 = 138543874;
      v29 = v12;
      v30 = 2048;
      selfCopy3 = self;
      v32 = 2048;
      v33 = v7 - startTimestamp;
      _os_log_impl(&dword_1C241C000, v10, OS_LOG_TYPE_INFO, "%{public}@ <%p>: first location update received after %f seconds", &v28, 0x20u);
    }
  }

  if (self->_isRunning)
  {
    [locationsCopy count];
    kdebug_trace();
    v13 = [ARLocationData alloc];
    lastObject = [locationsCopy lastObject];
    v15 = [(ARLocationData *)v13 initWithLocation:lastObject];

    v17 = _ARLogSensor_2(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      v20 = [v15 description];
      v28 = 138543874;
      v29 = v19;
      v30 = 2048;
      selfCopy3 = self;
      v32 = 2112;
      v33 = *&v20;
      _os_log_impl(&dword_1C241C000, v17, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: location update received: %@", &v28, 0x20u);
    }

    [(ARLocationSensor *)self setCurrentLocation:v15];
    objc_msgSend_timestamp(v15);
    v21 = objc_msgSend_location(v15);
    [v21 coordinate];
    v22 = objc_msgSend_location(v15);
    [v22 coordinate];
    v23 = objc_msgSend_location(v15);
    [v23 horizontalAccuracy];
    kdebug_trace();

    delegate = [(ARLocationSensor *)self delegate];
    LOBYTE(v21) = objc_opt_respondsToSelector();

    if (v21)
    {
      delegate2 = [(ARLocationSensor *)self delegate];
      [delegate2 sensor:self didOutputSensorData:v15];
    }

    kdebug_trace();
    kdebug_trace();
  }

  else
  {
    v15 = _ARLogSensor_2(v6);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v26 = objc_opt_class();
      v27 = NSStringFromClass(v26);
      v28 = 138543618;
      v29 = v27;
      v30 = 2048;
      selfCopy3 = self;
      _os_log_impl(&dword_1C241C000, v15, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Ignoring location update for stopped sensor", &v28, 0x16u);
    }
  }
}

- (void)locationManager:(id)manager didFailWithError:(id)error
{
  managerCopy = manager;
  errorCopy = error;
  dispatch_assert_queue_V2(self->_locationManagerQueue);
  if ([errorCopy code])
  {
    delegate = [(ARLocationSensor *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      delegate2 = [(ARLocationSensor *)self delegate];
      [delegate2 sensor:self didFailWithError:errorCopy];
    }
  }

  locationManagerDelegate = [(ARLocationSensor *)self locationManagerDelegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    locationManagerDelegate2 = [(ARLocationSensor *)self locationManagerDelegate];
    [locationManagerDelegate2 locationManager:managerCopy didFailWithError:errorCopy];
  }
}

- (ARSensorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CLLocationManagerDelegate)locationManagerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_locationManagerDelegate);

  return WeakRetained;
}

@end