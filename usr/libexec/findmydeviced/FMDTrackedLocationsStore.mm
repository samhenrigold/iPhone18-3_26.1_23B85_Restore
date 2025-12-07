@interface FMDTrackedLocationsStore
- (FMDLocationTracker)locationTracker;
- (FMDTrackedLocationsStore)initWithLocationTracker:(id)tracker;
- (id)_locationCacheFileName;
- (id)_serialQueue_readTrackedLocationsCache;
- (id)_trackedLocationsCacheFileURL;
- (id)lastLocation;
- (void)_serialQueue_addTrackedLocationNow:(id)now;
- (void)_serialQueue_deleteTrackedLocationsCache;
- (void)_serialQueue_purgeOldTrackedLocationsNow;
- (void)_serialQueue_scheduleLocationPurgeTimer;
- (void)_serialQueue_scheduleLocationPurgeTimer_internal;
- (void)_serialQueue_updateTrackedLocationsCache:(id)cache;
- (void)actOnTrackedLocationsUsingBlock:(id)block;
- (void)dealloc;
- (void)deleteAllTrackedLocations;
- (void)logLocation:(id)location;
- (void)recordLocation:(id)location ofType:(unsigned __int8)type;
@end

@implementation FMDTrackedLocationsStore

- (void)dealloc
{
  v3 = sub_100002880(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_10022C990(self);
  }

  locationPurgeTimer = [(FMDTrackedLocationsStore *)self locationPurgeTimer];

  if (locationPurgeTimer)
  {
    locationPurgeTimer2 = [(FMDTrackedLocationsStore *)self locationPurgeTimer];
    [(FMDTrackedLocationsStore *)self setLocationPurgeTimer:0];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001A8DC4;
    block[3] = &unk_1002CD4C8;
    v11 = locationPurgeTimer2;
    v6 = locationPurgeTimer2;
    dispatch_async(&_dispatch_main_q, block);
    v7 = +[FMXPCTransactionManager sharedInstance];
    locationPurgeTimerXPCTransactionName = [(FMDTrackedLocationsStore *)self locationPurgeTimerXPCTransactionName];
    [v7 endTransaction:locationPurgeTimerXPCTransactionName];
  }

  v9.receiver = self;
  v9.super_class = FMDTrackedLocationsStore;
  [(FMDTrackedLocationsStore *)&v9 dealloc];
}

- (FMDTrackedLocationsStore)initWithLocationTracker:(id)tracker
{
  trackerCopy = tracker;
  v20.receiver = self;
  v20.super_class = FMDTrackedLocationsStore;
  v5 = [(FMDTrackedLocationsStore *)&v20 init];
  if (v5)
  {
    v6 = [FMDataArchiver alloc];
    _trackedLocationsCacheFileURL = [(FMDTrackedLocationsStore *)v5 _trackedLocationsCacheFileURL];
    v8 = [v6 initWithFileURL:_trackedLocationsCacheFileURL];
    [(FMDTrackedLocationsStore *)v5 setDataArchiver:v8];

    dataArchiver = [(FMDTrackedLocationsStore *)v5 dataArchiver];
    [dataArchiver setDataProtectionClass:4];

    dataArchiver2 = [(FMDTrackedLocationsStore *)v5 dataArchiver];
    [dataArchiver2 setBackedUp:0];

    dataArchiver3 = [(FMDTrackedLocationsStore *)v5 dataArchiver];
    [dataArchiver3 setCreateDirectories:1];

    [(FMDTrackedLocationsStore *)v5 setLocationTracker:trackerCopy];
    v12 = +[NSMutableArray array];
    [(FMDTrackedLocationsStore *)v5 setTrackedLocations:v12];

    _serialQueue_readTrackedLocationsCache = [(FMDTrackedLocationsStore *)v5 _serialQueue_readTrackedLocationsCache];
    if (_serialQueue_readTrackedLocationsCache)
    {
      trackedLocations = [(FMDTrackedLocationsStore *)v5 trackedLocations];
      [trackedLocations addObjectsFromArray:_serialQueue_readTrackedLocationsCache];
    }

    v15 = off_100313390;
    v16 = +[FMDLocationTracker stringForLocationTrackerType:](FMDLocationTracker, "stringForLocationTrackerType:", [trackerCopy locationTrackerType]);
    v17 = [NSString stringWithFormat:@"%@-%@", v15, v16];

    v18 = dispatch_queue_create([v17 cStringUsingEncoding:4], 0);
    [(FMDTrackedLocationsStore *)v5 setStore_ops_queue:v18];

    [(FMDTrackedLocationsStore *)v5 _serialQueue_scheduleLocationPurgeTimer];
  }

  return v5;
}

- (void)_serialQueue_updateTrackedLocationsCache:(id)cache
{
  cacheCopy = cache;
  dataArchiver = [(FMDTrackedLocationsStore *)self dataArchiver];
  v6 = [dataArchiver saveArray:cacheCopy];

  if (v6)
  {
    v8 = sub_100002880(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10022CA14();
    }
  }
}

- (id)_trackedLocationsCacheFileURL
{
  v3 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
  if ([v3 count])
  {
    v4 = [v3 objectAtIndexedSubscript:0];
    v5 = [v4 stringByAppendingPathComponent:@"Preferences"];
    v6 = [NSURL fileURLWithPath:v5 isDirectory:1 relativeToURL:0];
  }

  else
  {
    v7 = sub_100002880(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_10022CA88();
    }

    v6 = 0;
  }

  _locationCacheFileName = [(FMDTrackedLocationsStore *)self _locationCacheFileName];
  v9 = [v6 URLByAppendingPathComponent:_locationCacheFileName isDirectory:0];

  v11 = sub_100002880(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_10022CAC8();
  }

  return v9;
}

- (id)_serialQueue_readTrackedLocationsCache
{
  dataArchiver = [(FMDTrackedLocationsStore *)self dataArchiver];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = [NSSet setWithObjects:v3, v4, objc_opt_class(), 0];
  v16 = 0;
  v6 = [dataArchiver readArrayAndClasses:v5 error:&v16];
  v7 = v16;

  fm_isFileNotFoundError = [v7 fm_isFileNotFoundError];
  if (fm_isFileNotFoundError)
  {
    goto LABEL_9;
  }

  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 0;
  }

  if (!v9)
  {
    v10 = sub_100002880(fm_isFileNotFoundError);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10022CB38();
    }

    v11 = +[FMDEventLoggerGeneral sharedInstance];
    [v11 sendError:v7 forEventName:@"FMDTrackedLocationsStoreFailedReadEventName"];

LABEL_9:
    if (!v6)
    {
      goto LABEL_15;
    }
  }

  v12 = sub_100002880(fm_isFileNotFoundError);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    sub_10022CBAC(v6);
  }

  v14 = sub_100002880(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    sub_10022CC24(v6);
  }

LABEL_15:

  return v6;
}

- (void)_serialQueue_deleteTrackedLocationsCache
{
  _trackedLocationsCacheFileURL = [(FMDTrackedLocationsStore *)self _trackedLocationsCacheFileURL];
  v4 = +[NSFileManager defaultManager];
  path = [_trackedLocationsCacheFileURL path];
  v6 = [v4 fileExistsAtPath:path];

  if (v6)
  {
    v8 = sub_100002880(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_10022CCA8(self);
    }

    v9 = +[NSFileManager defaultManager];
    v13 = 0;
    [v9 removeItemAtURL:_trackedLocationsCacheFileURL error:&v13];
    v10 = v13;

    if (v10)
    {
      fm_isFileNotFoundError = [v10 fm_isFileNotFoundError];
      if ((fm_isFileNotFoundError & 1) == 0)
      {
        v12 = sub_100002880(fm_isFileNotFoundError);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v15 = _trackedLocationsCacheFileURL;
          v16 = 2112;
          v17 = v10;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Failed to delete tracked locations file (%@): %@", buf, 0x16u);
        }
      }
    }
  }
}

- (id)_locationCacheFileName
{
  locationTracker = [(FMDTrackedLocationsStore *)self locationTracker];
  v3 = +[FMDLocationTracker stringForLocationTrackerType:](FMDLocationTracker, "stringForLocationTrackerType:", [locationTracker locationTrackerType]);
  off_100313388 = [NSString stringWithFormat:@"%@.%@", v3, off_100313388];

  return off_100313388;
}

- (void)recordLocation:(id)location ofType:(unsigned __int8)type
{
  typeCopy = type;
  locationCopy = location;
  v7 = [[FMDLocation alloc] initWithLocation:locationCopy eventType:5 positionType:typeCopy];
  [(FMDTrackedLocationsStore *)self logLocation:v7];
  horizontalAccuracy = [locationCopy horizontalAccuracy];
  [horizontalAccuracy doubleValue];
  v10 = v9;
  locationTracker = [(FMDTrackedLocationsStore *)self locationTracker];
  [locationTracker minSLCAccuracyThreshold];
  v13 = v12;

  if (v10 <= v13)
  {
    v14 = +[NSMutableDictionary dictionary];
    [v14 fm_safelySetObject:v7 forKey:@"kFMDTrackedLocationsStoreTrackFMDLocation"];
    v15 = objc_alloc_init(FMDBatteryInfo);
    metaDataRecord = [(FMDLocation *)v7 metaDataRecord];
    v26 = @"kFMDTrackedLocationsStoreTrackFMDBatteryInfo";
    dictionaryValue = [(FMDBatteryInfo *)v15 dictionaryValue];
    v27 = dictionaryValue;
    v18 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    [metaDataRecord appendMetaData:v18];

    [v14 fm_safelySetObject:v15 forKey:@"kFMDTrackedLocationsStoreTrackFMDBatteryInfo"];
    objc_initWeak(&location, self);
    store_ops_queue = [(FMDTrackedLocationsStore *)self store_ops_queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001A97C0;
    block[3] = &unk_1002CE3B8;
    objc_copyWeak(&v24, &location);
    v22 = v14;
    v23 = locationCopy;
    v20 = v14;
    dispatch_async(store_ops_queue, block);

    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
  }
}

- (void)logLocation:(id)location
{
  locationCopy = location;
  v4 = [[FMDEventLoggerEventLocate alloc] initWithEventName:@"FMDLocatorLocateEvent"];
  [(FMDEventLoggerEventLocate *)v4 setLocation:locationCopy reason:&stru_1002DCE08];

  v5 = +[FMDEventLogger sharedLogger];
  v6 = +[FMDEventLoggerFacilityOnDiskStats facilityName];
  v9[0] = v6;
  v7 = +[FMDEventLoggerFacilityOnDisk facilityName];
  v9[1] = v7;
  v8 = [NSArray arrayWithObjects:v9 count:2];
  [v5 logEvent:v4 toFacilitiesNamed:v8];
}

- (void)deleteAllTrackedLocations
{
  objc_initWeak(&location, self);
  store_ops_queue = [(FMDTrackedLocationsStore *)self store_ops_queue];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001A9AEC;
  v4[3] = &unk_1002CD518;
  objc_copyWeak(&v5, &location);
  dispatch_async(store_ops_queue, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)actOnTrackedLocationsUsingBlock:(id)block
{
  blockCopy = block;
  trackedLocations = [(FMDTrackedLocationsStore *)self trackedLocations];
  v4 = [trackedLocations copy];

  v5 = +[NSMutableArray array];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v26;
    do
    {
      v9 = 0;
      do
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v25 + 1) + 8 * v9);
        v11 = +[NSMutableDictionary dictionary];
        v12 = [v10 objectForKeyedSubscript:@"kFMDTrackedLocationsStoreTrackFMDLocation"];
        v13 = [v10 objectForKeyedSubscript:@"kFMDTrackedLocationsStoreTrackFMDBatteryInfo"];
        dictionaryValue = [v12 dictionaryValue];
        [v11 addEntriesFromDictionary:dictionaryValue];

        dictionaryValue2 = [v13 dictionaryValue];
        [v11 addEntriesFromDictionary:dictionaryValue2];

        [v5 fm_safeAddObject:v11];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v7);
  }

  store_ops_queue = [(FMDTrackedLocationsStore *)self store_ops_queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001A9DC4;
  block[3] = &unk_1002CD8B0;
  v23 = v5;
  v24 = blockCopy;
  v17 = v5;
  v18 = blockCopy;
  dispatch_async(store_ops_queue, block);
}

- (id)lastLocation
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_10000AAF4;
  v11 = sub_100002B44;
  v12 = 0;
  store_ops_queue = [(FMDTrackedLocationsStore *)self store_ops_queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001A9EF4;
  v6[3] = &unk_1002CE5F0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(store_ops_queue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)_serialQueue_scheduleLocationPurgeTimer
{
  locationPurgeTimer = [(FMDTrackedLocationsStore *)self locationPurgeTimer];

  [(FMDTrackedLocationsStore *)self _serialQueue_scheduleLocationPurgeTimer_internal];
  locationPurgeTimer2 = [(FMDTrackedLocationsStore *)self locationPurgeTimer];

  if (locationPurgeTimer2)
  {
    if (locationPurgeTimer)
    {
      return;
    }

    v6 = +[FMXPCTransactionManager sharedInstance];
    locationPurgeTimerXPCTransactionName = [(FMDTrackedLocationsStore *)self locationPurgeTimerXPCTransactionName];
    [v6 beginTransaction:locationPurgeTimerXPCTransactionName];
  }

  else
  {
    if (!locationPurgeTimer)
    {
      return;
    }

    v6 = +[FMXPCTransactionManager sharedInstance];
    locationPurgeTimerXPCTransactionName = [(FMDTrackedLocationsStore *)self locationPurgeTimerXPCTransactionName];
    [v6 endTransaction:locationPurgeTimerXPCTransactionName];
  }
}

- (void)_serialQueue_scheduleLocationPurgeTimer_internal
{
  v2 = sub_100002880(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_10022CD2C();
  }

  locationPurgeTimer = [(FMDTrackedLocationsStore *)self locationPurgeTimer];

  if (locationPurgeTimer)
  {
    locationPurgeTimer2 = [(FMDTrackedLocationsStore *)self locationPurgeTimer];
    [(FMDTrackedLocationsStore *)self setLocationPurgeTimer:0];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001AA4D0;
    block[3] = &unk_1002CD4C8;
    v40 = locationPurgeTimer2;
    v5 = locationPurgeTimer2;
    dispatch_async(&_dispatch_main_q, block);
  }

  trackedLocations = [(FMDTrackedLocationsStore *)self trackedLocations];
  v7 = [trackedLocations count] == 0;

  if (v7)
  {
    v13 = sub_100002880(v8);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      sub_10022CE14();
    }
  }

  else
  {
    locationTracker = [vala locationTracker];
    [locationTracker keepAlive];
    v11 = v10;

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    trackedLocations2 = [vala trackedLocations];
    v13 = 0;
    v14 = [trackedLocations2 countByEnumeratingWithState:&v35 objects:v41 count:16];
    if (v14)
    {
      v15 = *v36;
      do
      {
        v16 = 0;
        do
        {
          if (*v36 != v15)
          {
            objc_enumerationMutation(trackedLocations2);
          }

          v17 = [*(*(&v35 + 1) + 8 * v16) objectForKeyedSubscript:@"kFMDTrackedLocationsStoreTrackFMDLocation"];
          timeStamp = [v17 timeStamp];
          v19 = [timeStamp dateByAddingTimeInterval:v11];
          v20 = v19;
          if (v13)
          {
            v21 = [v19 earlierDate:v13];

            v13 = v21;
          }

          else
          {
            v13 = v19;
          }

          v16 = v16 + 1;
        }

        while (v14 != v16);
        v14 = [trackedLocations2 countByEnumeratingWithState:&v35 objects:v41 count:16];
      }

      while (v14);
    }

    v22 = +[NSDate date];
    v23 = [v13 compare:v22]== -1;

    v25 = sub_100002880(v24);
    v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG);
    if (v23)
    {
      if (v26)
      {
        sub_10022CDD8();
      }

      objc_initWeak(&location, vala);
      store_ops_queue = [vala store_ops_queue];
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_1001AA4D8;
      v32[3] = &unk_1002CD518;
      objc_copyWeak(&v33, &location);
      dispatch_async(store_ops_queue, v32);

      objc_destroyWeak(&v33);
      objc_destroyWeak(&location);
    }

    else
    {
      if (v26)
      {
        sub_10022CD68();
      }

      v27 = [[PCPersistentTimer alloc] initWithFireDate:v13 serviceIdentifier:@"com.apple.icloud.findmydeviced.trackedLocationsPurgeTimer" target:vala selector:"_serialQueue_purgeOldTrackedLocationsNow" userInfo:0];
      [vala setLocationPurgeTimer:v27];

      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = sub_1001AA540;
      v31[3] = &unk_1002CD4C8;
      v31[4] = vala;
      dispatch_async(&_dispatch_main_q, v31);
    }
  }
}

- (void)_serialQueue_purgeOldTrackedLocationsNow
{
  v3 = sub_100002880(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_10022CE50();
  }

  locationTracker = [(FMDTrackedLocationsStore *)self locationTracker];
  [locationTracker keepAlive];
  v6 = v5;
  v24 = locationTracker;
  maxLocations = [locationTracker maxLocations];
  v26 = +[NSMutableArray array];
  v7 = +[NSDate date];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  selfCopy = self;
  trackedLocations = [(FMDTrackedLocationsStore *)self trackedLocations];
  v9 = [trackedLocations countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v28;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v28 != v11)
        {
          objc_enumerationMutation(trackedLocations);
        }

        v13 = *(*(&v27 + 1) + 8 * i);
        v14 = [v13 objectForKeyedSubscript:@"kFMDTrackedLocationsStoreTrackFMDLocation"];
        timeStamp = [v14 timeStamp];
        v16 = [timeStamp dateByAddingTimeInterval:v6];
        v17 = [v16 compare:v7];
        if (v17 == 1)
        {
          [v26 addObject:v13];
        }

        else
        {
          v18 = sub_100002880(v17);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v32 = timeStamp;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Purging location with timestamp %@ since it was very old", buf, 0xCu);
          }
        }
      }

      v10 = [trackedLocations countByEnumeratingWithState:&v27 objects:v33 count:16];
    }

    while (v10);
  }

  while ([v26 count] > maxLocations)
  {
    v19 = [v26 objectAtIndexedSubscript:0];
    v20 = [v19 objectForKeyedSubscript:@"kFMDTrackedLocationsStoreTrackFMDLocation"];
    timeStamp2 = [v20 timeStamp];
    v22 = sub_100002880(timeStamp2);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v32 = timeStamp2;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Purging location with timestamp %@ since there were too many locations", buf, 0xCu);
    }

    [v26 removeObjectAtIndex:0];
  }

  [(FMDTrackedLocationsStore *)selfCopy setTrackedLocations:v26];
  [(FMDTrackedLocationsStore *)selfCopy _serialQueue_scheduleLocationPurgeTimer];
}

- (void)_serialQueue_addTrackedLocationNow:(id)now
{
  nowCopy = now;
  trackedLocations = [(FMDTrackedLocationsStore *)self trackedLocations];
  lastObject = [trackedLocations lastObject];
  v7 = [lastObject objectForKeyedSubscript:@"kFMDTrackedLocationsStoreTrackFMDLocation"];

  v8 = [nowCopy objectForKeyedSubscript:@"kFMDTrackedLocationsStoreTrackFMDLocation"];
  location = [v7 location];
  location2 = [v8 location];

  v12 = sub_100002880(v11);
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (location == location2)
  {
    if (v13)
    {
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "New location does not have a better accuracy. Copying the new timestamp to the last location...", v22, 2u);
    }

    v15 = [FMDLocation alloc];
    location3 = [v7 location];
    trackedLocations5 = -[FMDLocation initWithLocation:eventType:positionType:](v15, "initWithLocation:eventType:positionType:", location3, [v7 eventType], objc_msgSend(v7, "positionType"));

    trackedLocations2 = [(FMDTrackedLocationsStore *)self trackedLocations];
    lastObject2 = [trackedLocations2 lastObject];
    v19 = [lastObject2 mutableCopy];

    [v19 setObject:trackedLocations5 forKeyedSubscript:@"kFMDTrackedLocationsStoreTrackFMDLocation"];
    trackedLocations3 = [(FMDTrackedLocationsStore *)self trackedLocations];
    [trackedLocations3 removeLastObject];

    trackedLocations4 = [(FMDTrackedLocationsStore *)self trackedLocations];
    [trackedLocations4 addObject:v19];
  }

  else
  {
    if (v13)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "New location. Recording this location...", buf, 2u);
    }

    trackedLocations5 = [(FMDTrackedLocationsStore *)self trackedLocations];
    [(FMDLocation *)trackedLocations5 addObject:nowCopy];
  }
}

- (FMDLocationTracker)locationTracker
{
  WeakRetained = objc_loadWeakRetained(&self->_locationTracker);

  return WeakRetained;
}

@end