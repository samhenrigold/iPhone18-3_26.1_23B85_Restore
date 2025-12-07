@interface _DKLocationCoordinatesMonitor
+ (id)log;
- (_DKLocationCoordinatesMonitor)init;
- (int)altitudeRangeFrom:(double)from;
- (int)distanceRangeFrom:(double)from;
- (int)locationTypeFrom:(int)from;
- (int)speedRangeFrom:(double)from;
- (void)_fetchAndCacheLOIs;
- (void)dealloc;
- (void)init;
- (void)locationManager:(id)manager didFailWithError:(id)error;
- (void)locationManager:(id)manager didUpdateLocations:(id)locations;
- (void)locationManagerDidChangeAuthorization:(id)authorization;
- (void)start;
- (void)stop;
@end

@implementation _DKLocationCoordinatesMonitor

+ (id)log
{
  if (log_onceToken_1 != -1)
  {
    +[_DKLocationCoordinatesMonitor log];
  }

  v3 = log_log_1;

  return v3;
}

- (_DKLocationCoordinatesMonitor)init
{
  v32.receiver = self;
  v32.super_class = _DKLocationCoordinatesMonitor;
  v2 = [(_DKMonitor *)&v32 init];
  if (v2)
  {
    v3 = +[_DKLocationCoordinatesMonitor log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22595A000, v3, OS_LOG_TYPE_INFO, "Enabling location coordinates monitor", buf, 2u);
    }

    queue = [(_DKMonitor *)v2 queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __37___DKLocationCoordinatesMonitor_init__block_invoke;
    block[3] = &unk_27856F060;
    v5 = v2;
    v31 = v5;
    dispatch_sync(queue, block);

    if (os_variant_has_internal_content())
    {
      if (BiomeLibraryInternalLibraryCore(0))
      {
        v38 = 0;
        v39 = &v38;
        v40 = 0x2020000000;
        v6 = getBiomeLibraryInternalSymbolLoc_ptr;
        v41 = getBiomeLibraryInternalSymbolLoc_ptr;
        if (!getBiomeLibraryInternalSymbolLoc_ptr)
        {
          *buf = MEMORY[0x277D85DD0];
          v34 = 3221225472;
          v35 = __getBiomeLibraryInternalSymbolLoc_block_invoke;
          v36 = &unk_27856F628;
          v37 = &v38;
          v7 = BiomeLibraryInternalLibrary();
          v8 = dlsym(v7, "BiomeLibraryInternal");
          *(v37[1] + 24) = v8;
          getBiomeLibraryInternalSymbolLoc_ptr = *(v37[1] + 24);
          v6 = v39[3];
        }

        _Block_object_dispose(&v38, 8);
        if (!v6)
        {
          [_DKLocationCoordinatesMonitor init];
          v27 = v26;
          _Block_object_dispose(&v38, 8);
          _Unwind_Resume(v27);
        }

        v9 = v6();
        location = [v9 Location];
        coordinates = [location Coordinates];
        locationCoordinatesStream = v5->_locationCoordinatesStream;
        v5->_locationCoordinatesStream = coordinates;

        source = [(BMStream *)v5->_locationCoordinatesStream source];
        locationCoordinatesStreamSource = v5->_locationCoordinatesStreamSource;
        v5->_locationCoordinatesStreamSource = source;
      }

      else
      {
        locationCoordinatesStreamSource = +[_DKLocationCoordinatesMonitor log];
        if (os_log_type_enabled(locationCoordinatesStreamSource, OS_LOG_TYPE_ERROR))
        {
          [_DKLocationCoordinatesMonitor init];
        }
      }
    }

    v15 = BiomeLibrary();
    location2 = [v15 Location];
    hashedCoordinates = [location2 HashedCoordinates];
    locationHashedCoordinatesStream = v5->_locationHashedCoordinatesStream;
    v5->_locationHashedCoordinatesStream = hashedCoordinates;

    source2 = [(BMStream *)v5->_locationHashedCoordinatesStream source];
    locationHashedCoordinatesStreamSource = v5->_locationHashedCoordinatesStreamSource;
    v5->_locationHashedCoordinatesStreamSource = source2;

    queue2 = [(_DKMonitor *)v5 queue];
    v22 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, queue2);
    fetchLoiTimer = v5->_fetchLoiTimer;
    v5->_fetchLoiTimer = v22;

    dispatch_source_set_timer(v5->_fetchLoiTimer, 0, 0x4E94914F0000uLL, 0x7DBA8218000uLL);
    v24 = v5->_fetchLoiTimer;
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __37___DKLocationCoordinatesMonitor_init__block_invoke_16;
    v28[3] = &unk_27856F060;
    v29 = v5;
    dispatch_source_set_event_handler(v24, v28);
  }

  return v2;
}

- (void)_fetchAndCacheLOIs
{
  defaultManager = [MEMORY[0x277D01280] defaultManager];
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51___DKLocationCoordinatesMonitor__fetchAndCacheLOIs__block_invoke;
  v6[3] = &unk_27856F088;
  objc_copyWeak(&v7, &location);
  [defaultManager fetchLocationsOfInterestOfType:0 withHandler:v6];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __51___DKLocationCoordinatesMonitor__fetchAndCacheLOIs__block_invoke_19;
  v4[3] = &unk_27856F088;
  objc_copyWeak(&v5, &location);
  [defaultManager fetchLocationsOfInterestOfType:1 withHandler:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)start
{
  v5.receiver = self;
  v5.super_class = _DKLocationCoordinatesMonitor;
  if ([(_DKMonitor *)&v5 instantMonitorNeedsActivation])
  {
    queue = [(_DKMonitor *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __38___DKLocationCoordinatesMonitor_start__block_invoke;
    block[3] = &unk_27856F060;
    block[4] = self;
    dispatch_sync(queue, block);

    dispatch_resume(self->_fetchLoiTimer);
  }
}

- (void)stop
{
  v5.receiver = self;
  v5.super_class = _DKLocationCoordinatesMonitor;
  if ([(_DKMonitor *)&v5 instantMonitorNeedsDeactivation])
  {
    queue = [(_DKMonitor *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __37___DKLocationCoordinatesMonitor_stop__block_invoke;
    block[3] = &unk_27856F060;
    block[4] = self;
    dispatch_sync(queue, block);
  }
}

- (void)dealloc
{
  [(_DKLocationCoordinatesMonitor *)self deactivate];
  fetchLoiTimer = self->_fetchLoiTimer;
  if (fetchLoiTimer)
  {
    dispatch_source_cancel(fetchLoiTimer);
    v4 = self->_fetchLoiTimer;
    self->_fetchLoiTimer = 0;
  }

  v5.receiver = self;
  v5.super_class = _DKLocationCoordinatesMonitor;
  [(_DKMonitor *)&v5 dealloc];
}

- (void)locationManager:(id)manager didFailWithError:(id)error
{
  errorCopy = error;
  v5 = +[_DKLocationCoordinatesMonitor log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [_DKLocationCoordinatesMonitor locationManager:didFailWithError:];
  }
}

- (void)locationManagerDidChangeAuthorization:(id)authorization
{
  v8 = *MEMORY[0x277D85DE8];
  authorizationCopy = authorization;
  v4 = +[_DKLocationCoordinatesMonitor log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(authorizationCopy, "authorizationStatus")}];
    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&dword_22595A000, v4, OS_LOG_TYPE_INFO, "Authorization status changed %@", &v6, 0xCu);
  }
}

- (void)locationManager:(id)manager didUpdateLocations:(id)locations
{
  managerCopy = manager;
  locationsCopy = locations;
  queue = [(_DKMonitor *)self queue];
  dispatch_assert_queue_V2(queue);

  lastObject = [locationsCopy lastObject];
  v10 = +[_DKLocationCoordinatesMonitor log];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [(_DKLocationCoordinatesMonitor *)lastObject locationManager:v10 didUpdateLocations:?];
  }

  if (self->_lastLocation)
  {
    timestamp = [lastObject timestamp];
    timestamp2 = [(CLLocation *)self->_lastLocation timestamp];
    [timestamp timeIntervalSinceDate:timestamp2];
    if (fabs(v13) < 1.0 && ([lastObject coordinate], v15 = v14, -[CLLocation coordinate](self->_lastLocation, "coordinate"), v15 == v16) && (objc_msgSend(lastObject, "coordinate"), v18 = v17, -[CLLocation coordinate](self->_lastLocation, "coordinate"), v18 == v19) && (objc_msgSend(lastObject, "horizontalAccuracy"), v21 = v20, -[CLLocation horizontalAccuracy](self->_lastLocation, "horizontalAccuracy"), v21 == v22) && (objc_msgSend(lastObject, "altitude"), v24 = v23, -[CLLocation altitude](self->_lastLocation, "altitude"), v24 == v25) && (objc_msgSend(lastObject, "verticalAccuracy"), v27 = v26, -[CLLocation verticalAccuracy](self->_lastLocation, "verticalAccuracy"), v27 == v28) && (objc_msgSend(lastObject, "speed"), v30 = v29, -[CLLocation speed](self->_lastLocation, "speed"), v30 == v31) && (objc_msgSend(lastObject, "course"), v33 = v32, -[CLLocation course](self->_lastLocation, "course"), v33 == v34) && (v35 = objc_msgSend(lastObject, "type"), v35 == -[CLLocation type](self->_lastLocation, "type")))
    {
      floor = [lastObject floor];
      level = [floor level];
      [(CLLocation *)self->_lastLocation floor];
      v38 = v37 = locationsCopy;
      level2 = [v38 level];

      locationsCopy = v37;
      if (level == level2)
      {
        v40 = +[_DKLocationCoordinatesMonitor log];
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
        {
          [_DKLocationCoordinatesMonitor locationManager:lastObject didUpdateLocations:v40];
        }

        goto LABEL_54;
      }
    }

    else
    {
    }
  }

  timestamp3 = [lastObject timestamp];
  timestamp4 = [(CLLocation *)self->_lastLocation timestamp];
  [timestamp3 timeIntervalSinceDate:timestamp4];
  v44 = v43;

  if (self->_lastLocation)
  {
    v45 = fabs(v44);
    if (v45 < 5.0)
    {
      v46 = +[_DKLocationCoordinatesMonitor log];
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
      {
        [(_DKLocationCoordinatesMonitor *)v46 locationManager:v47 didUpdateLocations:v48, v49, v50, v51, v52, v53, v45];
      }

LABEL_33:

      goto LABEL_34;
    }
  }

  objc_storeStrong(&self->_lastLocation, lastObject);
  if (os_variant_has_internal_content() && self->_locationCoordinatesStreamSource)
  {
    v127 = 0;
    v128 = &v127;
    v129 = 0x2050000000;
    v54 = getBMILocationCoordinatesClass_softClass;
    v130 = getBMILocationCoordinatesClass_softClass;
    if (!getBMILocationCoordinatesClass_softClass)
    {
      BiomeLibraryInternalLibraryCore(0);
      v128[3] = objc_getClass("BMILocationCoordinates");
      getBMILocationCoordinatesClass_softClass = v128[3];
      v54 = v128[3];
    }

    v125 = managerCopy;
    v55 = v54;
    _Block_object_dispose(&v127, 8);
    v115 = [v54 alloc];
    v56 = MEMORY[0x277CCABB0];
    [lastObject coordinate];
    v121 = [v56 numberWithDouble:?];
    v57 = MEMORY[0x277CCABB0];
    [lastObject coordinate];
    v118 = [v57 numberWithDouble:v58];
    v59 = MEMORY[0x277CCABB0];
    [lastObject altitude];
    v117 = [v59 numberWithDouble:?];
    v60 = MEMORY[0x277CCABB0];
    [lastObject speed];
    v116 = [v60 numberWithDouble:?];
    v61 = MEMORY[0x277CCABB0];
    [lastObject course];
    v62 = [v61 numberWithDouble:?];
    floor2 = [lastObject floor];
    v123 = locationsCopy;
    if (floor2)
    {
      v64 = MEMORY[0x277CCABB0];
      floor3 = [lastObject floor];
      v65 = [v64 numberWithInteger:{objc_msgSend(floor3, "level")}];
    }

    else
    {
      v65 = 0;
    }

    v66 = -[_DKLocationCoordinatesMonitor locationTypeFrom:](self, "locationTypeFrom:", [lastObject type]);
    v67 = MEMORY[0x277CCABB0];
    [lastObject horizontalAccuracy];
    v68 = [v67 numberWithDouble:?];
    v69 = MEMORY[0x277CCABB0];
    [lastObject verticalAccuracy];
    v70 = [v69 numberWithDouble:?];
    v71 = MEMORY[0x277CCABB0];
    [lastObject speedAccuracy];
    v72 = [v71 numberWithDouble:?];
    v73 = MEMORY[0x277CCABB0];
    [lastObject courseAccuracy];
    v74 = [v73 numberWithDouble:?];
    LODWORD(v113) = v66;
    v46 = [v115 initWithLatitude:v121 longitude:v118 altitude:v117 speed:v116 course:v62 floor:v65 locationType:v113 horizontalAccuracy:v68 verticalAccuracy:v70 speedAccuracy:v72 courseAccuracy:v74];

    if (floor2)
    {
    }

    locationCoordinatesStreamSource = self->_locationCoordinatesStreamSource;
    timestamp5 = [lastObject timestamp];
    [timestamp5 timeIntervalSinceReferenceDate];
    [(BMSource *)locationCoordinatesStreamSource sendEvent:v46 timestamp:?];

    v77 = +[_DKLocationCoordinatesMonitor log];
    locationsCopy = v123;
    if (os_log_type_enabled(v77, OS_LOG_TYPE_DEBUG))
    {
      [_DKLocationCoordinatesMonitor locationManager:v77 didUpdateLocations:?];
    }

    managerCopy = v125;
    goto LABEL_33;
  }

LABEL_34:
  v78 = [lastObject cd_privacyPreservingLocationHashWithLevel:16];
  v79 = v78;
  if (v78 == self->_lastLocationGeoHash300m)
  {
    v40 = +[_DKLocationCoordinatesMonitor log];
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
    {
      [_DKLocationCoordinatesMonitor locationManager:didUpdateLocations:];
    }
  }

  else
  {
    self->_lastLocationGeoHash300m = v78;
    home = [(_DKLocationCoordinatesMonitor *)self home];

    if (home)
    {
      v81 = objc_alloc(MEMORY[0x277CE41F8]);
      home2 = [(_DKLocationCoordinatesMonitor *)self home];
      [home2 latitude];
      v84 = v83;
      home3 = [(_DKLocationCoordinatesMonitor *)self home];
      [home3 longitude];
      v87 = [v81 initWithLatitude:v84 longitude:v86];
      [lastObject distanceFromLocation:v87];
      v89 = v88;

      v122 = [(_DKLocationCoordinatesMonitor *)self distanceRangeFrom:v89];
    }

    else
    {
      v122 = 0;
    }

    work = [(_DKLocationCoordinatesMonitor *)self work];

    v124 = locationsCopy;
    v126 = managerCopy;
    if (work)
    {
      v91 = objc_alloc(MEMORY[0x277CE41F8]);
      work2 = [(_DKLocationCoordinatesMonitor *)self work];
      [work2 latitude];
      v94 = v93;
      work3 = [(_DKLocationCoordinatesMonitor *)self work];
      [work3 longitude];
      v97 = [v91 initWithLatitude:v94 longitude:v96];
      [lastObject distanceFromLocation:v97];
      v99 = v98;

      v119 = [(_DKLocationCoordinatesMonitor *)self distanceRangeFrom:v99];
    }

    else
    {
      v119 = 0;
    }

    floor5 = [lastObject cd_privacyPreservingLocationHashWithLevel:7];
    v101 = [lastObject cd_privacyPreservingLocationHashWithLevel:13];
    v102 = objc_alloc(MEMORY[0x277CF12A0]);
    v103 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v79];
    v104 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v101];
    v105 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:floor5];
    floor4 = [lastObject floor];
    if (floor4)
    {
      v107 = MEMORY[0x277CCABB0];
      floor5 = [lastObject floor];
      v108 = [v107 numberWithInteger:{objc_msgSend(floor5, "level")}];
    }

    else
    {
      v108 = 0;
    }

    [lastObject speed];
    v109 = [(_DKLocationCoordinatesMonitor *)self speedRangeFrom:?];
    [lastObject altitude];
    v40 = [v102 initWithLocationHashAt300Meters:v103 locationHashAt2500Meters:v104 locationHashAt156Kilometers:v105 distanceFromHomeOfCurrentLocationInMeters:0 distanceFromWorkOfCurrentLocationInMeters:0 distanceFromSchoolOfCurrentLocationInMeters:0 distanceFromGymOfCurrentLocationInMeters:0 floor:v108 speedBucket:__PAIR64__(-[_DKLocationCoordinatesMonitor altitudeRangeFrom:](self altitudeBucket:"altitudeRangeFrom:") distanceBucketFromHome:v109) distanceBucketFromWork:__PAIR64__(v119 distanceBucketFromGym:v122) distanceBucketFromSchool:0];
    if (floor4)
    {
    }

    locationHashedCoordinatesStreamSource = self->_locationHashedCoordinatesStreamSource;
    managerCopy = v126;
    if (locationHashedCoordinatesStreamSource)
    {
      timestamp6 = [lastObject timestamp];
      [timestamp6 timeIntervalSinceReferenceDate];
      [(BMSource *)locationHashedCoordinatesStreamSource sendEvent:v40 timestamp:?];

      v112 = +[_DKLocationCoordinatesMonitor log];
      locationsCopy = v124;
      if (os_log_type_enabled(v112, OS_LOG_TYPE_DEBUG))
      {
        [_DKLocationCoordinatesMonitor locationManager:didUpdateLocations:];
      }
    }

    else
    {
      v112 = +[_DKLocationCoordinatesMonitor log];
      locationsCopy = v124;
      if (os_log_type_enabled(v112, OS_LOG_TYPE_ERROR))
      {
        [_DKLocationCoordinatesMonitor locationManager:didUpdateLocations:];
      }
    }
  }

LABEL_54:
}

- (int)locationTypeFrom:(int)from
{
  if (from < 0xE && ((0x3FDFu >> from) & 1) != 0)
  {
    return dword_22598EEE0[from];
  }

  v4 = +[_DKLocationCoordinatesMonitor log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [_DKLocationCoordinatesMonitor locationTypeFrom:];
  }

  return 0;
}

- (int)speedRangeFrom:(double)from
{
  if (from < 0.0)
  {
    return 0;
  }

  if (from <= 2.0)
  {
    return 1;
  }

  if (from <= 4.0)
  {
    return 2;
  }

  if (from <= 6.0)
  {
    return 3;
  }

  if (from <= 8.0)
  {
    return 4;
  }

  if (from <= 10.0)
  {
    return 5;
  }

  if (from <= 12.0)
  {
    return 6;
  }

  if (from <= 16.0)
  {
    return 7;
  }

  if (from <= 20.0)
  {
    return 8;
  }

  if (from <= 24.0)
  {
    v4 = 0;
  }

  else
  {
    v4 = 10;
  }

  if (from > 24.0)
  {
    return v4;
  }

  else
  {
    return 9;
  }
}

- (int)altitudeRangeFrom:(double)from
{
  if (from < 0.0)
  {
    return 0;
  }

  if (from <= 100.0)
  {
    return 1;
  }

  if (from <= 200.0)
  {
    return 2;
  }

  if (from <= 500.0)
  {
    return 3;
  }

  if (from <= 1000.0)
  {
    return 4;
  }

  if (from <= 2000.0)
  {
    return 5;
  }

  if (from <= 3000.0)
  {
    return 6;
  }

  if (from <= 4000.0)
  {
    return 7;
  }

  if (from <= 5000.0)
  {
    return 8;
  }

  return 9;
}

- (int)distanceRangeFrom:(double)from
{
  if (from < 0.0)
  {
    return 0;
  }

  if (from <= 50.0)
  {
    return 1;
  }

  if (from <= 200.0)
  {
    return 2;
  }

  if (from <= 500.0)
  {
    return 3;
  }

  if (from <= 1000.0)
  {
    return 4;
  }

  if (from <= 2000.0)
  {
    return 5;
  }

  if (from <= 3000.0)
  {
    return 6;
  }

  if (from <= 4000.0)
  {
    return 7;
  }

  if (from <= 5000.0)
  {
    return 8;
  }

  return 9;
}

- (void)init
{
  v0 = dlerror();
  abort_report_np("%s", v0);
  [_DKLocationCoordinatesMonitor init];
}

- (void)locationManager:didFailWithError:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)locationManager:(NSObject *)a3 didUpdateLocations:.cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = [a1 timestamp];
  v6 = [*(a2 + 168) timestamp];
  [v5 timeIntervalSinceDate:v6];
  v8 = 134217984;
  v9 = fabs(v7);
  _os_log_debug_impl(&dword_22595A000, a3, OS_LOG_TYPE_DEBUG, "Location manager received location. Time since last location: %f", &v8, 0xCu);
}

- (void)locationManager:(void *)a1 didUpdateLocations:(NSObject *)a2 .cold.2(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = [a1 timestamp];
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(&dword_22595A000, a2, OS_LOG_TYPE_DEBUG, "Dropping duplicate location with timestamp: %@", v4, 0xCu);
}

- (void)locationManager:(uint64_t)a3 didUpdateLocations:(uint64_t)a4 .cold.3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9)
{
  LODWORD(v9) = 134217984;
  *(&v9 + 4) = a9;
  OUTLINED_FUNCTION_1_0(&dword_22595A000, a1, a3, "Skipping internal location since the time interval is less than minimum time : %f", a5, a6, a7, a8, v9, DWORD2(v9));
}

@end