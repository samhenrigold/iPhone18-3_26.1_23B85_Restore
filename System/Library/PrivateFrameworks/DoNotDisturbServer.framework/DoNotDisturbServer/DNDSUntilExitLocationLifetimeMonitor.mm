@interface DNDSUntilExitLocationLifetimeMonitor
- (BOOL)_saveDataToBackingStoreWithError:(id *)error;
- (DNDSAggregateLocationLifetimeMonitor)aggregateMonitor;
- (DNDSLifetimeMonitorDataSource)dataSource;
- (DNDSLifetimeMonitorDelegate)delegate;
- (DNDSUntilExitLocationLifetimeMonitor)initWithAggregateMonitor:(id)monitor;
- (id)sysdiagnoseDataRedacted:(BOOL)redacted;
- (void)_loadDataFromBackingStore;
- (void)_queue_beginMonitoringCurrentLocation;
- (void)_queue_geofenceLocation:(id)location;
- (void)_queue_geofenceRegion:(id)region;
- (void)_queue_refreshMonitor;
- (void)_queue_sendExpiryEventForAllLocationAssertions;
- (void)_queue_stopMonitoringCurrentLocation;
- (void)locationManager:(id)manager didDetermineState:(int64_t)state forRegion:(id)region;
- (void)locationManager:(id)manager didFailWithError:(id)error;
- (void)locationManager:(id)manager didUpdateLocations:(id)locations;
- (void)locationManager:(id)manager monitoringDidFailForRegion:(id)region withError:(id)error;
@end

@implementation DNDSUntilExitLocationLifetimeMonitor

- (DNDSUntilExitLocationLifetimeMonitor)initWithAggregateMonitor:(id)monitor
{
  monitorCopy = monitor;
  v14.receiver = self;
  v14.super_class = DNDSUntilExitLocationLifetimeMonitor;
  v5 = [(DNDSUntilExitLocationLifetimeMonitor *)&v14 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_aggregateMonitor, monitorCopy);
    activeLifetimeAssertionUUIDs = v6->_activeLifetimeAssertionUUIDs;
    v6->_activeLifetimeAssertionUUIDs = MEMORY[0x277CBEBF8];

    v8 = [DNDSJSONBackingStore alloc];
    v9 = objc_opt_class();
    dnds_locationAssertionUntilExitRegionFileURL = [MEMORY[0x277CBEBC0] dnds_locationAssertionUntilExitRegionFileURL];
    v11 = [(DNDSJSONBackingStore *)v8 initWithRecordClass:v9 fileURL:dnds_locationAssertionUntilExitRegionFileURL versionNumber:0];
    backingStore = v6->_backingStore;
    v6->_backingStore = v11;

    [(DNDSUntilExitLocationLifetimeMonitor *)v6 _loadDataFromBackingStore];
  }

  return v6;
}

- (void)locationManager:(id)manager monitoringDidFailForRegion:(id)region withError:(id)error
{
  v18 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  regionCopy = region;
  errorCopy = error;
  if ([(CLRegion *)self->_currentRegion isEqual:regionCopy])
  {
    v11 = DNDSLogLocationLifetimeMonitor;
    if (os_log_type_enabled(DNDSLogLocationLifetimeMonitor, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 134218498;
      v13 = managerCopy;
      v14 = 2112;
      v15 = regionCopy;
      v16 = 2114;
      v17 = errorCopy;
      _os_log_impl(&dword_24912E000, v11, OS_LOG_TYPE_DEFAULT, "Until I leave location monitoring failed for region, will stop monitor and invalidate all assertions; manager=%p, region=%@, error=%{public}@", &v12, 0x20u);
    }

    [(DNDSUntilExitLocationLifetimeMonitor *)self _queue_stopMonitoringCurrentLocation];
    [(DNDSUntilExitLocationLifetimeMonitor *)self _queue_sendExpiryEventForAllLocationAssertions];
  }
}

- (void)locationManager:(id)manager didDetermineState:(int64_t)state forRegion:(id)region
{
  v29 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  regionCopy = region;
  identifier = [(CLRegion *)self->_currentRegion identifier];
  identifier2 = [regionCopy identifier];
  v12 = [identifier isEqualToString:identifier2];

  if (v12)
  {
    v13 = DNDSLogLocationLifetimeMonitor;
    if (os_log_type_enabled(DNDSLogLocationLifetimeMonitor, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v13;
      v15 = DNDStringFromRegionState(state);
      v23 = 134218498;
      v24 = managerCopy;
      v25 = 2114;
      v26 = v15;
      v27 = 2112;
      v28 = regionCopy;
      _os_log_impl(&dword_24912E000, v14, OS_LOG_TYPE_DEFAULT, "Until I leave location region state was determined; manager=%p, state=%{public}@, region=%@", &v23, 0x20u);
    }

    if (state == 2)
    {
      regionEntered = self->_regionEntered;
      v18 = DNDSLogLocationLifetimeMonitor;
      v19 = os_log_type_enabled(DNDSLogLocationLifetimeMonitor, OS_LOG_TYPE_DEFAULT);
      if (regionEntered)
      {
        if (v19)
        {
          LOWORD(v23) = 0;
          _os_log_impl(&dword_24912E000, v18, OS_LOG_TYPE_DEFAULT, "Confirmed until I leave region exit, will invalidate all assertions", &v23, 2u);
        }

        [(DNDSUntilExitLocationLifetimeMonitor *)self _queue_sendExpiryEventForAllLocationAssertions];
      }

      else
      {
        if (v19)
        {
          LOWORD(v23) = 0;
          _os_log_impl(&dword_24912E000, v18, OS_LOG_TYPE_DEFAULT, "Received unexpected until I leave region exit, will start region monitoring again", &v23, 2u);
        }

        [(DNDSUntilExitLocationLifetimeMonitor *)self _queue_stopMonitoringCurrentLocation];
        [(DNDSUntilExitLocationLifetimeMonitor *)self _queue_beginMonitoringCurrentLocation];
      }
    }

    else if (state == 1)
    {
      if (!self->_regionEntered)
      {
        v16 = DNDSLogLocationLifetimeMonitor;
        if (os_log_type_enabled(DNDSLogLocationLifetimeMonitor, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v23) = 0;
          _os_log_impl(&dword_24912E000, v16, OS_LOG_TYPE_DEFAULT, "Confirmed until I leave region entry", &v23, 2u);
        }

        self->_regionEntered = 1;
        [(DNDSUntilExitLocationLifetimeMonitor *)self _saveDataToBackingStoreWithError:0];
      }
    }

    else
    {
      v20 = DNDSLogLocationLifetimeMonitor;
      if (os_log_type_enabled(DNDSLogLocationLifetimeMonitor, OS_LOG_TYPE_DEFAULT))
      {
        v21 = v20;
        v22 = DNDStringFromRegionState(state);
        v23 = 138543362;
        v24 = v22;
        _os_log_impl(&dword_24912E000, v21, OS_LOG_TYPE_DEFAULT, "Did not handle until I leave region state %{public}@", &v23, 0xCu);
      }
    }
  }
}

- (void)locationManager:(id)manager didUpdateLocations:(id)locations
{
  v14 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  locationsCopy = locations;
  v8 = DNDSLogLocationLifetimeMonitor;
  if (os_log_type_enabled(DNDSLogLocationLifetimeMonitor, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134218242;
    v11 = managerCopy;
    v12 = 2112;
    v13 = locationsCopy;
    _os_log_impl(&dword_24912E000, v8, OS_LOG_TYPE_DEFAULT, "Until I leave location monitoring found location, will update geofence; manager=%p, locations=%@", &v10, 0x16u);
  }

  lastObject = [locationsCopy lastObject];
  [(DNDSUntilExitLocationLifetimeMonitor *)self _queue_geofenceLocation:lastObject];
}

- (void)locationManager:(id)manager didFailWithError:(id)error
{
  v13 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  errorCopy = error;
  v8 = DNDSLogLocationLifetimeMonitor;
  if (os_log_type_enabled(DNDSLogLocationLifetimeMonitor, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134218242;
    v10 = managerCopy;
    v11 = 2114;
    v12 = errorCopy;
    _os_log_impl(&dword_24912E000, v8, OS_LOG_TYPE_DEFAULT, "Until I leave location monitoring failed, will stop monitor and invalidate all assertions; manager=%p, error=%{public}@", &v9, 0x16u);
  }

  [(DNDSUntilExitLocationLifetimeMonitor *)self _queue_stopMonitoringCurrentLocation];
  [(DNDSUntilExitLocationLifetimeMonitor *)self _queue_sendExpiryEventForAllLocationAssertions];
}

- (void)_queue_refreshMonitor
{
  aggregateMonitor = [(DNDSUntilExitLocationLifetimeMonitor *)self aggregateMonitor];
  queue = [aggregateMonitor queue];
  dispatch_assert_queue_V2(queue);

  v5 = DNDSLogLocationLifetimeMonitor;
  if (os_log_type_enabled(DNDSLogLocationLifetimeMonitor, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_24912E000, v5, OS_LOG_TYPE_DEFAULT, "Refreshing until I leave monitor", v11, 2u);
  }

  dataSource = [aggregateMonitor dataSource];
  v7 = [dataSource lifetimeMonitor:aggregateMonitor modeAssertionsWithLifetimeClass:objc_opt_class()];

  v8 = [v7 bs_mapNoNulls:&__block_literal_global_5];
  if (![(NSArray *)self->_activeLifetimeAssertionUUIDs isEqualToArray:v8])
  {
    v9 = [v8 copy];
    activeLifetimeAssertionUUIDs = self->_activeLifetimeAssertionUUIDs;
    self->_activeLifetimeAssertionUUIDs = v9;
  }

  if ([(NSArray *)self->_activeLifetimeAssertionUUIDs count]&& !self->_hasActiveLifetimes)
  {
    self->_hasActiveLifetimes = 1;
    [(DNDSUntilExitLocationLifetimeMonitor *)self _queue_beginMonitoringCurrentLocation];
  }

  else if (![(NSArray *)self->_activeLifetimeAssertionUUIDs count]&& self->_hasActiveLifetimes)
  {
    [(DNDSUntilExitLocationLifetimeMonitor *)self _queue_stopMonitoringCurrentLocation];
    self->_hasActiveLifetimes = 0;
  }
}

- (void)_queue_beginMonitoringCurrentLocation
{
  aggregateMonitor = [(DNDSUntilExitLocationLifetimeMonitor *)self aggregateMonitor];
  queue = [aggregateMonitor queue];
  dispatch_assert_queue_V2(queue);

  v4 = DNDSLogLocationLifetimeMonitor;
  if (os_log_type_enabled(DNDSLogLocationLifetimeMonitor, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_24912E000, v4, OS_LOG_TYPE_DEFAULT, "Requesting current location to begin monitoring until I leave", v6, 2u);
  }

  locationManager = [aggregateMonitor locationManager];
  [locationManager requestLocation];
}

- (void)_queue_stopMonitoringCurrentLocation
{
  v11 = *MEMORY[0x277D85DE8];
  aggregateMonitor = [(DNDSUntilExitLocationLifetimeMonitor *)self aggregateMonitor];
  queue = [aggregateMonitor queue];
  dispatch_assert_queue_V2(queue);

  if (self->_currentRegion)
  {
    v5 = DNDSLogLocationLifetimeMonitor;
    if (os_log_type_enabled(DNDSLogLocationLifetimeMonitor, OS_LOG_TYPE_DEFAULT))
    {
      currentRegion = self->_currentRegion;
      v9 = 138412290;
      v10 = currentRegion;
      _os_log_impl(&dword_24912E000, v5, OS_LOG_TYPE_DEFAULT, "Until I leave location monitoring stopping for geofence; region=%@", &v9, 0xCu);
    }

    locationManager = [aggregateMonitor locationManager];
    [locationManager stopMonitoringForRegion:self->_currentRegion];

    v8 = self->_currentRegion;
    self->_currentRegion = 0;

    self->_regionEntered = 0;
    [(DNDSUntilExitLocationLifetimeMonitor *)self _saveDataToBackingStoreWithError:0];
  }
}

- (void)_queue_geofenceLocation:(id)location
{
  locationCopy = location;
  WeakRetained = objc_loadWeakRetained(&self->_aggregateMonitor);
  queue = [WeakRetained queue];
  dispatch_assert_queue_V2(queue);

  if (self->_hasActiveLifetimes)
  {
    v6 = objc_alloc(MEMORY[0x277CBFBC8]);
    [locationCopy coordinate];
    v7 = [v6 initWithCenter:@"com.apple.donotdisturb.server.until-i-leave" radius:? identifier:?];
    currentRegion = self->_currentRegion;
    self->_currentRegion = v7;

    [(CLRegion *)self->_currentRegion setNotifyOnExit:1];
    [(CLRegion *)self->_currentRegion setNotifyOnEntry:0];
    self->_regionEntered = 0;
    [(DNDSUntilExitLocationLifetimeMonitor *)self _queue_geofenceRegion:self->_currentRegion];
  }
}

- (void)_queue_geofenceRegion:(id)region
{
  v11 = *MEMORY[0x277D85DE8];
  aggregateMonitor = [(DNDSUntilExitLocationLifetimeMonitor *)self aggregateMonitor];
  queue = [aggregateMonitor queue];
  dispatch_assert_queue_V2(queue);

  if (self->_hasActiveLifetimes)
  {
    locationManager = [aggregateMonitor locationManager];
    [locationManager startMonitoringForRegion:self->_currentRegion];

    [(DNDSUntilExitLocationLifetimeMonitor *)self _saveDataToBackingStoreWithError:0];
    v7 = DNDSLogLocationLifetimeMonitor;
    if (os_log_type_enabled(DNDSLogLocationLifetimeMonitor, OS_LOG_TYPE_DEFAULT))
    {
      currentRegion = self->_currentRegion;
      v9 = 138412290;
      v10 = currentRegion;
      _os_log_impl(&dword_24912E000, v7, OS_LOG_TYPE_DEFAULT, "Until I leave location monitoring started for geofence; region=%@", &v9, 0xCu);
    }
  }
}

- (void)_queue_sendExpiryEventForAllLocationAssertions
{
  aggregateMonitor = [(DNDSUntilExitLocationLifetimeMonitor *)self aggregateMonitor];
  queue = [aggregateMonitor queue];
  dispatch_assert_queue_V2(queue);

  if ([(NSArray *)self->_activeLifetimeAssertionUUIDs count])
  {
    activeLifetimeAssertionUUIDs = self->_activeLifetimeAssertionUUIDs;
    self->_activeLifetimeAssertionUUIDs = MEMORY[0x277CBEBF8];
    v5 = activeLifetimeAssertionUUIDs;

    delegate = [aggregateMonitor delegate];
    date = [MEMORY[0x277CBEAA8] date];
    [delegate lifetimeMonitor:aggregateMonitor lifetimeDidExpireForAssertionUUIDs:v5 expirationDate:date];
  }
}

- (void)_loadDataFromBackingStore
{
  backingStore = self->_backingStore;
  v19 = 0;
  v4 = [(DNDSBackingStore *)backingStore readRecordWithError:&v19];
  v5 = v19;
  store = self->_store;
  self->_store = v4;

  v7 = self->_store;
  if (!v7)
  {
    if (v5)
    {
      if (os_log_type_enabled(DNDSLogLocationLifetimeMonitor, OS_LOG_TYPE_ERROR))
      {
        [DNDSUntilExitLocationLifetimeMonitor _loadDataFromBackingStore];
      }

      _DNDSRequestRadar(@"Failed to load current region database", v5, 0, @"/Library/Caches/com.apple.xbs/Sources/DoNotDisturbServer/DoNotDisturbServer/DNDSLocationLifetimeMonitor.m", 971);
    }

    v8 = objc_alloc_init(DNDSUntilExitRegionStore);
    v9 = self->_store;
    self->_store = v8;

    v7 = self->_store;
  }

  activeLifetimeAssertionUUIDs = [(DNDSUntilExitRegionStore *)v7 activeLifetimeAssertionUUIDs];
  activeLifetimeAssertionUUIDs = self->_activeLifetimeAssertionUUIDs;
  self->_activeLifetimeAssertionUUIDs = activeLifetimeAssertionUUIDs;

  hasActiveLifetimes = [(DNDSUntilExitRegionStore *)self->_store hasActiveLifetimes];
  self->_hasActiveLifetimes = [hasActiveLifetimes BOOLValue];

  currentRegion = [(DNDSUntilExitRegionStore *)self->_store currentRegion];
  currentRegion = self->_currentRegion;
  self->_currentRegion = currentRegion;

  regionEntered = [(DNDSUntilExitRegionStore *)self->_store regionEntered];
  self->_regionEntered = [regionEntered BOOLValue];

  if (self->_hasActiveLifetimes && self->_currentRegion)
  {
    WeakRetained = objc_loadWeakRetained(&self->_aggregateMonitor);
    queue = [WeakRetained queue];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __65__DNDSUntilExitLocationLifetimeMonitor__loadDataFromBackingStore__block_invoke;
    v18[3] = &unk_278F89ED0;
    v18[4] = self;
    dispatch_sync(queue, v18);
  }
}

uint64_t __65__DNDSUntilExitLocationLifetimeMonitor__loadDataFromBackingStore__block_invoke(uint64_t a1)
{
  v2 = DNDSLogLocationLifetimeMonitor;
  if (os_log_type_enabled(DNDSLogLocationLifetimeMonitor, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_24912E000, v2, OS_LOG_TYPE_DEFAULT, "Found existing until I leave region to begin monitoring", v4, 2u);
  }

  return [*(a1 + 32) _queue_geofenceRegion:*(*(a1 + 32) + 8)];
}

- (BOOL)_saveDataToBackingStoreWithError:(id *)error
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = [(DNDSUntilExitRegionStore *)self->_store mutableCopy];
  [v5 setActiveLifetimeAssertionUUIDs:self->_activeLifetimeAssertionUUIDs];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_hasActiveLifetimes];
  [v5 setHasActiveLifetimes:v6];

  [v5 setCurrentRegion:self->_currentRegion];
  v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_regionEntered];
  [v5 setRegionEntered:v7];

  backingStore = self->_backingStore;
  v18 = 0;
  v9 = [(DNDSBackingStore *)backingStore writeRecord:v5 error:&v18];
  v10 = v18;
  if (v9)
  {
    if (v9 == 1)
    {
      v15 = DNDSLogLocationLifetimeMonitor;
      if (!os_log_type_enabled(DNDSLogLocationLifetimeMonitor, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_9;
      }

      *buf = 138543362;
      v20 = v10;
      v12 = "Failed to write until I leave store, but error can be ignored; error=%{public}@";
      v13 = v15;
      v14 = 12;
    }

    else
    {
      if (v9 != 2 || (v11 = DNDSLogLocationLifetimeMonitor, !os_log_type_enabled(DNDSLogLocationLifetimeMonitor, OS_LOG_TYPE_DEFAULT)))
      {
LABEL_9:
        if (!error)
        {
          goto LABEL_12;
        }

        goto LABEL_10;
      }

      *buf = 0;
      v12 = "Wrote out until I leave store to file";
      v13 = v11;
      v14 = 2;
    }

    _os_log_impl(&dword_24912E000, v13, OS_LOG_TYPE_DEFAULT, v12, buf, v14);
    goto LABEL_9;
  }

  if (os_log_type_enabled(DNDSLogLocationLifetimeMonitor, OS_LOG_TYPE_ERROR))
  {
    [DNDSUntilExitLocationLifetimeMonitor _saveDataToBackingStoreWithError:];
  }

  _DNDSRequestRadar(@"Failed to write store", v10, 0, @"/Library/Caches/com.apple.xbs/Sources/DoNotDisturbServer/DoNotDisturbServer/DNDSLocationLifetimeMonitor.m", 1011);
  if (error)
  {
LABEL_10:
    if (v10)
    {
      v16 = v10;
      *error = v10;
    }
  }

LABEL_12:

  return v9 == 2;
}

- (id)sysdiagnoseDataRedacted:(BOOL)redacted
{
  redactedCopy = redacted;
  v5 = [[DNDSBackingStoreDictionaryContext alloc] initWithDestination:1 partitionType:3 redactSensitiveData:redacted contactProvider:0 applicationIdentifierMapper:0];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  currentRegion = self->_currentRegion;
  if (currentRegion)
  {
    v8 = !redactedCopy;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    identifier = [(CLRegion *)currentRegion identifier];
    [dictionary setObject:identifier forKeyedSubscript:@"currentRegion"];
  }

  else
  {
    [dictionary setObject:@"<redacted>" forKeyedSubscript:@"currentRegion"];
  }

  v10 = [MEMORY[0x277CCABB0] numberWithBool:self->_regionEntered];
  [dictionary setObject:v10 forKeyedSubscript:@"regionEntered"];

  v11 = [MEMORY[0x277CCABB0] numberWithBool:self->_hasActiveLifetimes];
  [dictionary setObject:v11 forKeyedSubscript:@"hasActiveLifetimes"];

  v12 = [(NSArray *)self->_activeLifetimeAssertionUUIDs valueForKey:@"UUIDString"];
  [dictionary setObject:v12 forKeyedSubscript:@"activeLifetimeAssertionUUIDs"];

  v13 = [(DNDSBackingStore *)self->_backingStore readRecordWithError:0];
  v14 = [v13 dictionaryRepresentationWithContext:v5];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = @"<read error>";
  }

  [dictionary setObject:v16 forKeyedSubscript:@"stored"];

  return dictionary;
}

- (DNDSAggregateLocationLifetimeMonitor)aggregateMonitor
{
  WeakRetained = objc_loadWeakRetained(&self->_aggregateMonitor);

  return WeakRetained;
}

- (DNDSLifetimeMonitorDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (DNDSLifetimeMonitorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end