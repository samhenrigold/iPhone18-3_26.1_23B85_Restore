@interface MapsSuggestionsDefaultLocationUpdater
- (MapsSuggestionsDefaultLocationUpdater)init;
- (void)locationManager:(id)manager didFailWithError:(id)error;
- (void)locationManager:(id)manager didUpdateLocations:(id)locations;
- (void)locationManagerDidChangeAuthorization:(id)authorization;
- (void)onStartImplementation;
- (void)onStopImplementation;
@end

@implementation MapsSuggestionsDefaultLocationUpdater

- (MapsSuggestionsDefaultLocationUpdater)init
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_create("MapsSuggestionsDefaultLocationUpdaterWorkerQueue", v3);
  v7.receiver = self;
  v7.super_class = MapsSuggestionsDefaultLocationUpdater;
  v5 = [(MapsSuggestionsBaseLocationUpdater *)&v7 initWithName:@"MapsSuggestionsDefaultLocationUpdater" queue:v4];

  return v5;
}

- (void)onStartImplementation
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v12 = 136315138;
    v13 = "[MapsSuggestionsDefaultLocationUpdater onStartImplementation]";
    _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_DEBUG, "%s", &v12, 0xCu);
  }

  dispatchQueue = [(MapsSuggestionsBaseLocationUpdater *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  if (self->_locationManager)
  {
    location = GEOFindOrCreateLog();
    if (os_log_type_enabled(location, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_1C5126000, location, OS_LOG_TYPE_ERROR, "Already running", &v12, 2u);
    }
  }

  else
  {
    v6 = objc_alloc(MEMORY[0x1E695FBE8]);
    v7 = *MEMORY[0x1E69A1A78];
    dispatchQueue2 = [(MapsSuggestionsBaseLocationUpdater *)self dispatchQueue];
    v9 = [v6 initWithEffectiveBundleIdentifier:v7 delegate:self onQueue:dispatchQueue2];
    locationManager = self->_locationManager;
    self->_locationManager = v9;

    GEOConfigGetDouble();
    [(CLLocationManager *)self->_locationManager setDistanceFilter:?];
    [(CLLocationManager *)self->_locationManager setDesiredAccuracy:*MEMORY[0x1E6985C88]];
    [(CLLocationManager *)self->_locationManager startUpdatingLocation];
    _limitsPrecision = [(CLLocationManager *)self->_locationManager _limitsPrecision];
    [(MapsSuggestionsBaseLocationUpdater *)self considerMyAllowanceAsLimited:_limitsPrecision];
    if (_limitsPrecision)
    {
      return;
    }

    location = [(CLLocationManager *)self->_locationManager location];
    [(MapsSuggestionsBaseLocationUpdater *)self considerMyNewLocation:location];
  }
}

- (void)onStopImplementation
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v7 = 136315138;
    v8 = "[MapsSuggestionsDefaultLocationUpdater onStopImplementation]";
    _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_DEBUG, "%s", &v7, 0xCu);
  }

  dispatchQueue = [(MapsSuggestionsBaseLocationUpdater *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  locationManager = self->_locationManager;
  if (locationManager)
  {
    [(CLLocationManager *)locationManager stopUpdatingLocation];
    v6 = self->_locationManager;
    self->_locationManager = 0;
  }
}

- (void)locationManager:(id)manager didUpdateLocations:(id)locations
{
  managerCopy = manager;
  locationsCopy = locations;
  if (MapsSuggestionsLoggingIsVerbose(locationsCopy, v8))
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_DEBUG, "DualLocationUpdater update", buf, 2u);
    }
  }

  if ([locationsCopy count])
  {
    objc_initWeak(buf, self);
    dispatchQueue = [(MapsSuggestionsBaseLocationUpdater *)self dispatchQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __76__MapsSuggestionsDefaultLocationUpdater_locationManager_didUpdateLocations___block_invoke;
    block[3] = &unk_1E81F5410;
    objc_copyWeak(&v14, buf);
    v12 = managerCopy;
    v13 = locationsCopy;
    dispatch_async(dispatchQueue, block);

    objc_destroyWeak(&v14);
    objc_destroyWeak(buf);
  }
}

void __76__MapsSuggestionsDefaultLocationUpdater_locationManager_didUpdateLocations___block_invoke(id *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    [WeakRetained considerMyAllowanceAsLimited:{objc_msgSend(a1[4], "_limitsPrecision")}];
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v3 = a1[5];
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v6 = v4;
      v7 = *v13;
      do
      {
        v8 = 0;
        do
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v3);
          }

          v9 = *(*(&v12 + 1) + 8 * v8);
          if (MapsSuggestionsLoggingIsVerbose(v4, v5))
          {
            v10 = GEOFindOrCreateLog();
            if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v18 = v9;
              _os_log_impl(&dword_1C5126000, v10, OS_LOG_TYPE_DEBUG, "Considering new location: %@", buf, 0xCu);
            }
          }

          if (MapsSuggestionsIsValidLocation(v9))
          {
            v4 = [WeakRetained considerMyNewLocation:v9];
          }

          else
          {
            v11 = GEOFindOrCreateLog();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v18 = v9;
              _os_log_impl(&dword_1C5126000, v11, OS_LOG_TYPE_ERROR, "Dropping invalid location: %@", buf, 0xCu);
            }
          }

          ++v8;
        }

        while (v6 != v8);
        v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
        v6 = v4;
      }

      while (v4);
    }
  }

  else
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v18 = "MapsSuggestionsDefaultLocationUpdater.m";
      v19 = 1026;
      v20 = 93;
      v21 = 2082;
      v22 = "[MapsSuggestionsDefaultLocationUpdater locationManager:didUpdateLocations:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

- (void)locationManager:(id)manager didFailWithError:(id)error
{
  v14 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  code = [errorCopy code];
  if (code != 3)
  {
    if (code)
    {
      v7 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v12 = 138412290;
        v13 = errorCopy;
        v8 = "Location error: %@";
        v9 = v7;
        v10 = OS_LOG_TYPE_ERROR;
        v11 = 12;
        goto LABEL_8;
      }

LABEL_9:

      goto LABEL_10;
    }

    if (MapsSuggestionsLoggingIsVerbose(0, v6))
    {
      v7 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v12) = 0;
        v8 = "Location unknown";
        v9 = v7;
        v10 = OS_LOG_TYPE_DEBUG;
        v11 = 2;
LABEL_8:
        _os_log_impl(&dword_1C5126000, v9, v10, v8, &v12, v11);
        goto LABEL_9;
      }

      goto LABEL_9;
    }
  }

LABEL_10:
}

- (void)locationManagerDidChangeAuthorization:(id)authorization
{
  _limitsPrecision = [authorization _limitsPrecision];

  [(MapsSuggestionsBaseLocationUpdater *)self considerMyAllowanceAsLimited:_limitsPrecision];
}

@end