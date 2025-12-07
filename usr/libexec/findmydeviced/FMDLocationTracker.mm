@interface FMDLocationTracker
+ (id)stringForLocationTrackerType:(unsigned __int8)type;
- (FMDLocationTracker)initWithType:(unsigned __int8)type;
- (FMDLocationTrackerDelegate)delegate;
- (id)newLocationManager;
- (void)_loadTrackingInfo;
- (void)_startLocateCycleWithLocatorPublishingBlock:(id)block andStoppedLocatingBlock:(id)locatingBlock;
- (void)_startTracking;
- (void)_stopFallbackRetryTimer;
- (void)_stopTracking;
- (void)_storeTrackingInfo;
- (void)_updateFallbackRetryTimer;
- (void)_updateFallbackRetryTimerUsingLocation:(id)location;
- (void)actOnTrackedLocationsUsingBlock:(id)block;
- (void)dealloc;
- (void)deleteLocationTrackingInfoAndStopTracking;
- (void)deregisterDelegate:(id)delegate;
- (void)didAddNewTrackedLocation:(id)location;
- (void)locationManager:(id)manager didFailWithError:(id)error;
- (void)locationManager:(id)manager didUpdateLocations:(id)locations;
- (void)recordLocation:(id)location ofType:(unsigned __int8)type;
- (void)registerDelegate:(id)delegate;
- (void)updateLocationTrackingInfoWithTrackingStatus:(int64_t)status minSLCAccuracyThreshold:(double)threshold locateParams:(id)params trackNotifyEnabled:(BOOL)enabled maxLocations:(int64_t)locations keepAlive:(double)alive periodicCheckInterval:(double)interval minDistanceBetweenLocations:(double)self0 minTimeBetweenLocations:(double)self1 minTimeBetweenServerCalls:(double)self2;
@end

@implementation FMDLocationTracker

+ (id)stringForLocationTrackerType:(unsigned __int8)type
{
  if (type)
  {
    v3 = 0;
  }

  else
  {
    v4 = +[NSBundle mainBundle];
    bundleIdentifier = [v4 bundleIdentifier];
    v3 = [NSString stringWithFormat:@"%@.%@", bundleIdentifier, @"lostmodetracks"];
  }

  return v3;
}

- (FMDLocationTracker)initWithType:(unsigned __int8)type
{
  typeCopy = type;
  v8.receiver = self;
  v8.super_class = FMDLocationTracker;
  v4 = [(FMDLocationTracker *)&v8 init];
  v5 = v4;
  if (v4)
  {
    [(FMDLocationTracker *)v4 setLocationTrackerType:typeCopy];
    [(FMDLocationTracker *)v5 _loadTrackingInfo];
    v6 = [[FMDTrackedLocationsStore alloc] initWithLocationTracker:v5];
    [(FMDLocationTracker *)v5 setTrackedLocationsStore:v6];
  }

  return v5;
}

- (void)dealloc
{
  v3 = sub_100002880(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_10022C990(self);
  }

  locator = [(FMDLocationTracker *)self locator];
  [locator stopLocator];

  [(FMDLocationTracker *)self _stopFallbackRetryTimer];
  locManager = [(FMDLocationTracker *)self locManager];
  [locManager setDelegate:0];

  v6.receiver = self;
  v6.super_class = FMDLocationTracker;
  [(FMDLocationTracker *)&v6 dealloc];
}

- (void)registerDelegate:(id)delegate
{
  [(FMDLocationTracker *)self setDelegate:delegate];
  if ([(FMDLocationTracker *)self isTrackingOn])
  {

    [(FMDLocationTracker *)self _startTracking];
  }
}

- (void)deregisterDelegate:(id)delegate
{
  delegateCopy = delegate;
  delegate = [(FMDLocationTracker *)self delegate];

  if (!delegate || delegate == delegateCopy)
  {
    [(FMDLocationTracker *)self _stopTracking];
  }

  [(FMDLocationTracker *)self setDelegate:0];
}

- (void)updateLocationTrackingInfoWithTrackingStatus:(int64_t)status minSLCAccuracyThreshold:(double)threshold locateParams:(id)params trackNotifyEnabled:(BOOL)enabled maxLocations:(int64_t)locations keepAlive:(double)alive periodicCheckInterval:(double)interval minDistanceBetweenLocations:(double)self0 minTimeBetweenLocations:(double)self1 minTimeBetweenServerCalls:(double)self2
{
  enabledCopy = enabled;
  paramsCopy = params;
  [(FMDLocationTracker *)self setMinSLCAccuracyThreshold:threshold];
  [(FMDLocationTracker *)self setLocateParams:paramsCopy];

  [(FMDLocationTracker *)self setTrackingStatus:status];
  [(FMDLocationTracker *)self setTrackNotifyEnabled:enabledCopy];
  [(FMDLocationTracker *)self setMaxLocations:locations];
  [(FMDLocationTracker *)self setKeepAlive:alive];
  [(FMDLocationTracker *)self setPeriodicCheckInterval:interval];
  [(FMDLocationTracker *)self setMinDistanceBetweenLocations:betweenLocations];
  [(FMDLocationTracker *)self setMinTimeBetweenLocations:timeBetweenLocations];
  [(FMDLocationTracker *)self setMinTimeBetweenServerCalls:calls];
  if (![(FMDLocationTracker *)self trackingStatus])
  {
    [(FMDLocationTracker *)self setTrackingStatus:400];
  }

  [(FMDLocationTracker *)self _storeTrackingInfo];
  delegate = [(FMDLocationTracker *)self delegate];

  if (delegate)
  {
    if ([(FMDLocationTracker *)self isTrackingOn])
    {

      [(FMDLocationTracker *)self _startTracking];
    }

    else
    {

      [(FMDLocationTracker *)self _stopTracking];
    }
  }
}

- (void)deleteLocationTrackingInfoAndStopTracking
{
  [(FMDLocationTracker *)self _stopTracking];
  [(FMDLocationTracker *)self setTrackingStatus:400];
  [(FMDLocationTracker *)self _storeTrackingInfo];

  [(FMDLocationTracker *)self _loadTrackingInfo];
}

- (void)didAddNewTrackedLocation:(id)location
{
  locationCopy = location;
  [(FMDLocationTracker *)self _updateFallbackRetryTimer];
  delegate = [(FMDLocationTracker *)self delegate];
  [delegate didAddNewTrackedLocation:locationCopy];
}

- (void)actOnTrackedLocationsUsingBlock:(id)block
{
  blockCopy = block;
  if ([(FMDLocationTracker *)self isTrackingOn])
  {
    trackedLocationsStore = [(FMDLocationTracker *)self trackedLocationsStore];
    [trackedLocationsStore actOnTrackedLocationsUsingBlock:blockCopy];
  }
}

- (void)recordLocation:(id)location ofType:(unsigned __int8)type
{
  typeCopy = type;
  locationCopy = location;
  if ([(FMDLocationTracker *)self isTrackingOn])
  {
    trackedLocationsStore = [(FMDLocationTracker *)self trackedLocationsStore];
    [trackedLocationsStore recordLocation:locationCopy ofType:typeCopy];
  }
}

- (void)locationManager:(id)manager didUpdateLocations:(id)locations
{
  managerCopy = manager;
  locationsCopy = locations;
  if ([locationsCopy count])
  {
    lastObject = [locationsCopy lastObject];
    isTrackingOn = [(FMDLocationTracker *)self isTrackingOn];
    if ((isTrackingOn & 1) == 0)
    {
      delegate = [(FMDLocationTracker *)self delegate];
      fm_logID = [delegate fm_logID];

      v18 = sub_100002880(v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        sub_10022EFBC();
      }

      [(FMDLocationTracker *)self _stopTracking];
      goto LABEL_12;
    }

    v10 = sub_100002880(isTrackingOn);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_10022F030(lastObject);
    }

    locator = [(FMDLocationTracker *)self locator];
    v12 = locator == 0;

    if (v12)
    {
      v19 = sub_10017D9A8(v13);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        type = [lastObject type];
        [lastObject horizontalAccuracy];
        v22 = v21;
        [lastObject coordinate];
        v24 = v23;
        [lastObject coordinate];
        *buf = 67109889;
        *v59 = type;
        *&v59[4] = 2049;
        *&v59[6] = v22;
        v60 = 2049;
        v61 = v24;
        v62 = 2049;
        v63 = v25;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Processing SLC location with Position Type = %u, Accuracy = %{private}f, Latitude = %{private}f, Longitude = %{private}f", buf, 0x26u);
      }

      horizontalAccuracy = [lastObject horizontalAccuracy];
      if (v27 >= 0.0)
      {
        locateParams = [(FMDLocationTracker *)self locateParams];
        v31 = [locateParams objectForKeyedSubscript:@"validityDuration"];
        [v31 doubleValue];
        v33 = v32;

        v34 = +[NSDate date];
        [v34 timeIntervalSinceReferenceDate];
        v36 = v35;

        timestamp = [lastObject timestamp];
        [timestamp timeIntervalSinceReferenceDate];
        v39 = v38;

        if (v36 - v39 <= v33)
        {
          [lastObject horizontalAccuracy];
          v42 = v41;
          minSLCAccuracyThreshold = [(FMDLocationTracker *)self minSLCAccuracyThreshold];
          if (v42 <= v44)
          {
            [(FMDLocationTracker *)self setLastLocation:lastObject];
            v51 = [[CLLocationFMGeoLocatableAdapter alloc] initWithLocation:lastObject];
            trackedLocationsStore = [(FMDLocationTracker *)self trackedLocationsStore];
            [trackedLocationsStore recordLocation:v51 ofType:1];
          }

          else
          {
            v45 = sub_100002880(minSLCAccuracyThreshold);
            if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
            {
              sub_10022F0FC(v45);
            }

            objc_initWeak(&location, self);
            v55[0] = _NSConcreteStackBlock;
            v55[1] = 3221225472;
            v55[2] = sub_1001D98C4;
            v55[3] = &unk_1002D1230;
            objc_copyWeak(&v56, &location);
            v46 = objc_retainBlock(v55);
            v53[0] = _NSConcreteStackBlock;
            v53[1] = 3221225472;
            v53[2] = sub_1001D99BC;
            v53[3] = &unk_1002CD518;
            objc_copyWeak(&v54, &location);
            v47 = objc_retainBlock(v53);
            v48 = sub_100002880([(FMDLocationTracker *)self _startLocateCycleWithLocatorPublishingBlock:v46 andStoppedLocatingBlock:v47]);
            if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
            {
              locator2 = [(FMDLocationTracker *)self locator];
              fm_logID2 = [locator2 fm_logID];
              sub_10022F140(fm_logID2, buf, v48, locator2);
            }

            objc_destroyWeak(&v54);
            objc_destroyWeak(&v56);
            objc_destroyWeak(&location);
          }

          goto LABEL_12;
        }

        v28 = sub_100002880(v40);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          *v59 = v33;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "SLC location is older than %.0f seconds. Ignoring this", buf, 0xCu);
        }
      }

      else
      {
        v28 = sub_100002880(horizontalAccuracy);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          [lastObject horizontalAccuracy];
          *buf = 134217984;
          *v59 = v29;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Invalid SLC location found with horizontalAccuracy of %f", buf, 0xCu);
        }
      }
    }

    else
    {
      v14 = sub_100002880(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        sub_10022F0B8(v14);
      }
    }

LABEL_12:
  }
}

- (void)locationManager:(id)manager didFailWithError:(id)error
{
  errorCopy = error;
  v5 = sub_100002880(errorCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_10022F2D8();
  }
}

- (id)newLocationManager
{
  if ([(FMDLocationTracker *)self locationTrackerType])
  {
    return 0;
  }

  v3 = +[FMDLocationManagerFactory sharedInstance];
  newLocationManager = [v3 newLocationManager];

  return newLocationManager;
}

- (void)_startTracking
{
  v3 = +[FMDPreferencesMgr dontUseSLC];
  if (v3)
  {
    delegate = sub_100002880(v3);
    if (os_log_type_enabled(delegate, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&_mh_execute_header, delegate, OS_LOG_TYPE_DEFAULT, "SLC has been forcibly disabled. Not starting tracking.", &v14, 2u);
    }
  }

  else
  {
    newLocationManager = [(FMDLocationTracker *)self newLocationManager];
    [(FMDLocationTracker *)self setLocManager:newLocationManager];

    locManager = [(FMDLocationTracker *)self locManager];
    [locManager setDelegate:self];

    locManager2 = [(FMDLocationTracker *)self locManager];
    [locManager2 setDistanceFilter:kCLDistanceFilterNone];

    locManager3 = [(FMDLocationTracker *)self locManager];
    [locManager3 startMonitoringSignificantLocationChanges];

    delegate = [(FMDLocationTracker *)self delegate];
    v9 = sub_100002880(delegate);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      fm_logID = [delegate fm_logID];
      v14 = 138412290;
      v15 = fm_logID;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Enabling SLC for %@", &v14, 0xCu);
    }

    v11 = +[NSDate date];
    [(FMDLocationTracker *)self setLastFallbackRetryTime:v11];

    v12 = sub_100002880([(FMDLocationTracker *)self _updateFallbackRetryTimer]);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      fm_logID2 = [delegate fm_logID];
      v14 = 138412290;
      v15 = fm_logID2;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Tracking is now active for %@", &v14, 0xCu);
    }
  }
}

- (void)_stopTracking
{
  delegate = [(FMDLocationTracker *)self delegate];
  locManager = [(FMDLocationTracker *)self locManager];

  if (locManager)
  {
    v6 = sub_100002880(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      fm_logID = [delegate fm_logID];
      v15 = 138412290;
      v16 = fm_logID;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Disabling SLC for %@, if it was previously enabled", &v15, 0xCu);
    }

    locManager2 = [(FMDLocationTracker *)self locManager];
    [locManager2 stopMonitoringSignificantLocationChanges];

    locManager3 = [(FMDLocationTracker *)self locManager];
    [locManager3 setDelegate:0];

    v5 = [(FMDLocationTracker *)self setLocManager:0];
  }

  v10 = sub_100002880(v5);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    fm_logID2 = [delegate fm_logID];
    v15 = 138412290;
    v16 = fm_logID2;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Tracking is now inactive for %@", &v15, 0xCu);
  }

  [(FMDLocationTracker *)self _stopFallbackRetryTimer];
  [(FMDLocationTracker *)self setLastFallbackRetryTime:0];
  trackedLocationsStore = [(FMDLocationTracker *)self trackedLocationsStore];
  [trackedLocationsStore deleteAllTrackedLocations];

  locator = [(FMDLocationTracker *)self locator];

  if (locator)
  {
    locator2 = [(FMDLocationTracker *)self locator];
    [locator2 stopLocator];

    [(FMDLocationTracker *)self setLocator:0];
  }

  [(FMDLocationTracker *)self setLastLocation:0];
}

- (void)_startLocateCycleWithLocatorPublishingBlock:(id)block andStoppedLocatingBlock:(id)locatingBlock
{
  blockCopy = block;
  locatingBlockCopy = locatingBlock;
  objc_initWeak(&location, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001D9FF8;
  block[3] = &unk_1002D1280;
  objc_copyWeak(&v13, &location);
  block[4] = self;
  v11 = blockCopy;
  v12 = locatingBlockCopy;
  v8 = locatingBlockCopy;
  v9 = blockCopy;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)_stopFallbackRetryTimer
{
  fallbackRetryTimer = [(FMDLocationTracker *)self fallbackRetryTimer];

  if (fallbackRetryTimer)
  {
    fallbackRetryTimer2 = [(FMDLocationTracker *)self fallbackRetryTimer];
    [(FMDLocationTracker *)self setFallbackRetryTimer:0];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001DA740;
    block[3] = &unk_1002CD4C8;
    v9 = fallbackRetryTimer2;
    v5 = fallbackRetryTimer2;
    dispatch_async(&_dispatch_main_q, block);
    v6 = +[FMXPCTransactionManager sharedInstance];
    fallbackTimerXPCTransactionName = [(FMDLocationTracker *)self fallbackTimerXPCTransactionName];
    [v6 endTransaction:fallbackTimerXPCTransactionName];
  }
}

- (void)_updateFallbackRetryTimer
{
  fallbackRetryTimer = [(FMDLocationTracker *)self fallbackRetryTimer];

  trackedLocationsStore = [(FMDLocationTracker *)self trackedLocationsStore];
  lastLocation = [trackedLocationsStore lastLocation];

  [(FMDLocationTracker *)self _updateFallbackRetryTimerUsingLocation:lastLocation];
  fallbackRetryTimer2 = [(FMDLocationTracker *)self fallbackRetryTimer];

  if (fallbackRetryTimer2)
  {
    if (fallbackRetryTimer)
    {
      goto LABEL_7;
    }

    v6 = +[FMXPCTransactionManager sharedInstance];
    fallbackTimerXPCTransactionName = [(FMDLocationTracker *)self fallbackTimerXPCTransactionName];
    [v6 beginTransaction:fallbackTimerXPCTransactionName];
  }

  else
  {
    if (!fallbackRetryTimer)
    {
      goto LABEL_7;
    }

    v6 = +[FMXPCTransactionManager sharedInstance];
    fallbackTimerXPCTransactionName = [(FMDLocationTracker *)self fallbackTimerXPCTransactionName];
    [v6 endTransaction:fallbackTimerXPCTransactionName];
  }

LABEL_7:
}

- (void)_updateFallbackRetryTimerUsingLocation:(id)location
{
  locationCopy = location;
  fallbackRetryTimer = [(FMDLocationTracker *)self fallbackRetryTimer];
  if (fallbackRetryTimer)
  {
    [(FMDLocationTracker *)self setFallbackRetryTimer:0];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001DAE88;
    block[3] = &unk_1002CD4C8;
    v44 = fallbackRetryTimer;
    dispatch_async(&_dispatch_main_q, block);
  }

  periodicCheckInterval = [(FMDLocationTracker *)self periodicCheckInterval];
  v8 = v7 > 0.0;
  timeStamp = sub_100002880(periodicCheckInterval);
  v10 = os_log_type_enabled(timeStamp, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v10)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, timeStamp, OS_LOG_TYPE_DEFAULT, "Checking whether I need to start a SLC fallback for tracked locations", buf, 2u);
    }

    locator = [(FMDLocationTracker *)self locator];
    if (locator)
    {
      locator2 = [(FMDLocationTracker *)self locator];
      locatorRunning = [locator2 locatorRunning];

      if (locatorRunning)
      {
        timeStamp = sub_100002880(v14);
        if (os_log_type_enabled(timeStamp, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v15 = "A locate cycle is already in progress. Not starting the fallback now.";
          v16 = timeStamp;
          v17 = 2;
LABEL_12:
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v15, buf, v17);
          goto LABEL_31;
        }

        goto LABEL_31;
      }
    }

    timeStamp = [locationCopy timeStamp];
    lastFallbackRetryTime = [(FMDLocationTracker *)self lastFallbackRetryTime];
    if (timeStamp)
    {
      if (lastFallbackRetryTime)
      {
        v19 = [timeStamp laterDate:?];
        v34 = v19;
LABEL_19:
        v20 = sub_100002880(v19);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          [(FMDLocationTracker *)self periodicCheckInterval];
          *buf = 138413058;
          v46 = lastFallbackRetryTime;
          v47 = 2112;
          v48 = timeStamp;
          v49 = 2112;
          v50 = v34;
          v51 = 2048;
          v52 = v33;
          _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "lastFallbackRetryTime:%@ lastLocationTime:%@ latestRetryTime:%@ periodicCheckInterval:%f", buf, 0x2Au);
        }

        [(FMDLocationTracker *)self periodicCheckInterval];
        v21 = [v34 dateByAddingTimeInterval:?];
        v22 = +[NSDate date];
        v23 = [v22 compare:v21];
        v24 = v23 == -1;
        v25 = sub_100002880(v23);
        v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
        if (v24)
        {
          if (v26)
          {
            *buf = 138412290;
            v46 = v21;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Scheduling SLC fallback of tracked locations for %@", buf, 0xCu);
          }

          v36[0] = _NSConcreteStackBlock;
          v36[1] = 3221225472;
          v36[2] = sub_1001DAFF4;
          v36[3] = &unk_1002CD4C8;
          v37 = [[PCPersistentTimer alloc] initWithFireDate:v21 serviceIdentifier:@"com.apple.icloud.findmydeviced.trackingFallbackRetry" target:self selector:"_updateFallbackRetryTimer" userInfo:0];
          v32 = v37;
          dispatch_async(&_dispatch_main_q, v36);
          [(FMDLocationTracker *)self setFallbackRetryTimer:v32];
        }

        else
        {
          if (v26)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Time to do a SLC fallback for tracked locations", buf, 2u);
          }

          [(FMDLocationTracker *)self setLastFallbackRetryTime:v22];
          objc_initWeak(&location, self);
          v40[0] = _NSConcreteStackBlock;
          v40[1] = 3221225472;
          v40[2] = sub_1001DAE90;
          v40[3] = &unk_1002D1230;
          objc_copyWeak(&v41, &location);
          v27 = objc_retainBlock(v40);
          v38[0] = _NSConcreteStackBlock;
          v38[1] = 3221225472;
          v38[2] = sub_1001DAF88;
          v38[3] = &unk_1002CD518;
          objc_copyWeak(&v39, &location);
          v28 = objc_retainBlock(v38);
          v29 = sub_100002880([(FMDLocationTracker *)self _startLocateCycleWithLocatorPublishingBlock:v27 andStoppedLocatingBlock:v28]);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
          {
            locator3 = [(FMDLocationTracker *)self locator];
            fm_logID = [locator3 fm_logID];
            sub_10022F34C(fm_logID, buf, v29, locator3);
          }

          objc_destroyWeak(&v39);
          objc_destroyWeak(&v41);
          objc_destroyWeak(&location);
        }

        goto LABEL_31;
      }

      v19 = timeStamp;
    }

    else
    {
      v19 = lastFallbackRetryTime;
    }

    v34 = v19;
    goto LABEL_19;
  }

  if (v10)
  {
    [(FMDLocationTracker *)self periodicCheckInterval];
    *buf = 134217984;
    v46 = v18;
    v15 = "SLC fallback is disabled (interval is %f)";
    v16 = timeStamp;
    v17 = 12;
    goto LABEL_12;
  }

LABEL_31:
}

- (void)_storeTrackingInfo
{
  if ([(FMDLocationTracker *)self trackingStatus]== 400)
  {
    v3 = 0;
  }

  else
  {
    v17[0] = @"minSLCAccuracyThreshold";
    [(FMDLocationTracker *)self minSLCAccuracyThreshold];
    v16 = [NSNumber numberWithDouble:?];
    v18[0] = v16;
    v17[1] = @"locateParams";
    locateParams = [(FMDLocationTracker *)self locateParams];
    v15 = locateParams;
    v5 = &__NSDictionary0__struct;
    if (locateParams)
    {
      v5 = locateParams;
    }

    v18[1] = v5;
    v17[2] = @"trackingStatus";
    v14 = [NSNumber numberWithInteger:[(FMDLocationTracker *)self trackingStatus]];
    v18[2] = v14;
    v17[3] = @"trackNotifyEnabled";
    v6 = [NSNumber numberWithBool:[(FMDLocationTracker *)self trackNotifyEnabled]];
    v18[3] = v6;
    v17[4] = @"maxLocations";
    v7 = [NSNumber numberWithInteger:[(FMDLocationTracker *)self maxLocations]];
    v18[4] = v7;
    v17[5] = @"keepAlive";
    [(FMDLocationTracker *)self keepAlive];
    v8 = [NSNumber numberWithDouble:?];
    v18[5] = v8;
    v17[6] = @"periodicCheckInterval";
    [(FMDLocationTracker *)self periodicCheckInterval];
    v9 = [NSNumber numberWithDouble:?];
    v18[6] = v9;
    v17[7] = @"minDistanceBetweenLocations";
    [(FMDLocationTracker *)self minDistanceBetweenLocations];
    v10 = [NSNumber numberWithDouble:?];
    v18[7] = v10;
    v17[8] = @"minTimeBetweenLocations";
    [(FMDLocationTracker *)self minTimeBetweenLocations];
    v11 = [NSNumber numberWithDouble:?];
    v18[8] = v11;
    v17[9] = @"minTimeBetweenServerCalls";
    [(FMDLocationTracker *)self minTimeBetweenServerCalls];
    v12 = [NSNumber numberWithDouble:?];
    v18[9] = v12;
    v3 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:10];
  }

  v13 = [FMDLocationTracker stringForLocationTrackerType:[(FMDLocationTracker *)self locationTrackerType]];
  [FMDPreferencesMgr setTrackingInfo:v3 forType:v13];
}

- (void)_loadTrackingInfo
{
  v3 = [FMDLocationTracker stringForLocationTrackerType:[(FMDLocationTracker *)self locationTrackerType]];
  v14 = [FMDPreferencesMgr trackingInfoForType:v3];

  v4 = [v14 objectForKeyedSubscript:@"minSLCAccuracyThreshold"];
  [v4 doubleValue];
  [(FMDLocationTracker *)self setMinSLCAccuracyThreshold:?];

  v5 = [v14 objectForKeyedSubscript:@"locateParams"];
  [(FMDLocationTracker *)self setLocateParams:v5];

  v6 = [v14 objectForKeyedSubscript:@"trackingStatus"];
  -[FMDLocationTracker setTrackingStatus:](self, "setTrackingStatus:", [v6 integerValue]);

  v7 = [v14 objectForKeyedSubscript:@"trackNotifyEnabled"];
  -[FMDLocationTracker setTrackNotifyEnabled:](self, "setTrackNotifyEnabled:", [v7 BOOLValue]);

  v8 = [v14 objectForKeyedSubscript:@"maxLocations"];
  -[FMDLocationTracker setMaxLocations:](self, "setMaxLocations:", [v8 integerValue]);

  v9 = [v14 objectForKeyedSubscript:@"keepAlive"];
  [v9 doubleValue];
  [(FMDLocationTracker *)self setKeepAlive:?];

  v10 = [v14 objectForKeyedSubscript:@"periodicCheckInterval"];
  [v10 doubleValue];
  [(FMDLocationTracker *)self setPeriodicCheckInterval:?];

  v11 = [v14 objectForKeyedSubscript:@"minDistanceBetweenLocations"];
  [v11 doubleValue];
  [(FMDLocationTracker *)self setMinDistanceBetweenLocations:?];

  v12 = [v14 objectForKeyedSubscript:@"minTimeBetweenLocations"];
  [v12 doubleValue];
  [(FMDLocationTracker *)self setMinTimeBetweenLocations:?];

  v13 = [v14 objectForKeyedSubscript:@"minTimeBetweenServerCalls"];
  [v13 doubleValue];
  [(FMDLocationTracker *)self setMinTimeBetweenServerCalls:?];

  if (![(FMDLocationTracker *)self trackingStatus])
  {
    [(FMDLocationTracker *)self setTrackingStatus:400];
  }
}

- (FMDLocationTrackerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end