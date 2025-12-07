@interface MNCoreLocationProvider
- (BOOL)coarseModeEnabled;
- (BOOL)isAuthorized;
- (MNCoreLocationProvider)init;
- (MNCoreLocationProvider)initWithEffectiveBundle:(id)bundle;
- (MNCoreLocationProvider)initWithEffectiveBundleIdentifier:(id)identifier;
- (MNLocationProviderDelegate)delegate;
- (void)_forceUpdateAuthorizationStatusWithCompletionHandler:(id)handler;
- (void)_startUpdatingLocationWithDeterminedAuthorization;
- (void)_updateForCLParameters:(id)parameters;
- (void)dealloc;
- (void)locationManager:(id)manager didEnterRegion:(id)region;
- (void)locationManager:(id)manager didExitRegion:(id)region;
- (void)locationManager:(id)manager didFailWithError:(id)error;
- (void)locationManager:(id)manager didUpdateHeading:(id)heading;
- (void)locationManager:(id)manager didUpdateLocations:(id)locations;
- (void)locationManager:(id)manager didUpdateVehicleHeading:(id)heading;
- (void)locationManager:(id)manager didUpdateVehicleSpeed:(id)speed;
- (void)locationManager:(id)manager monitoringDidFailForRegion:(id)region withError:(id)error;
- (void)locationManagerDidChangeAuthorization:(id)authorization;
- (void)locationManagerDidPauseLocationUpdates:(id)updates;
- (void)locationManagerDidResumeLocationUpdates:(id)updates;
- (void)requestLocation;
- (void)resetForActiveTileGroupChanged;
- (void)setCLParameters:(id)parameters;
- (void)setDesiredAccuracy:(double)accuracy;
- (void)setDistanceFilter:(double)filter;
- (void)setHeadingOrientation:(int)orientation;
- (void)startUpdatingHeading;
- (void)startUpdatingLocation;
- (void)startUpdatingVehicleHeading;
- (void)startUpdatingVehicleSpeed;
- (void)stopUpdatingHeading;
- (void)stopUpdatingLocation;
- (void)stopUpdatingVehicleHeading;
- (void)stopUpdatingVehicleSpeed;
@end

@implementation MNCoreLocationProvider

- (BOOL)coarseModeEnabled
{
  isAuthorized = [(MNCoreLocationProvider *)self isAuthorized];
  v6 = self->_authorizationIsolater;
  _geo_isolate_lock_data();
  v4 = isAuthorized && self->_accuracyAuthorization == 1;
  _geo_isolate_unlock();

  return v4;
}

- (BOOL)isAuthorized
{
  selfCopy = self;
  v4 = self->_authorizationIsolater;
  _geo_isolate_lock();
  LOBYTE(selfCopy) = (selfCopy->_authorizationStatus - 3) < 2;
  _geo_isolate_unlock();

  return selfCopy;
}

- (MNLocationProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)locationManager:(id)manager monitoringDidFailForRegion:(id)region withError:(id)error
{
  regionCopy = region;
  errorCopy = error;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = objc_loadWeakRetained(&self->_delegate);
    [v10 locationProvider:self monitoringDidFailForRegion:regionCopy withError:errorCopy];
  }
}

- (void)locationManager:(id)manager didExitRegion:(id)region
{
  regionCopy = region;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 locationProvider:self didExitRegion:regionCopy];
  }
}

- (void)locationManager:(id)manager didEnterRegion:(id)region
{
  regionCopy = region;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 locationProvider:self didEnterRegion:regionCopy];
  }
}

- (void)locationManagerDidResumeLocationUpdates:(id)updates
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained locationProviderDidResumeLocationUpdates:self];
}

- (void)locationManagerDidPauseLocationUpdates:(id)updates
{
  updatesCopy = updates;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = [WeakRetained locationProviderShouldPauseLocationUpdates:self];

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 locationProviderDidPauseLocationUpdates:self];
  }

  else
  {
    [updatesCopy startUpdatingLocation];
  }
}

- (void)locationManagerDidChangeAuthorization:(id)authorization
{
  v20 = *MEMORY[0x1E69E9840];
  authorizationCopy = authorization;
  coarseModeEnabled = [(MNCoreLocationProvider *)self coarseModeEnabled];
  authorizationStatus = [authorizationCopy authorizationStatus];
  accuracyAuthorization = [authorizationCopy accuracyAuthorization];

  v8 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    identifier = self->_identifier;
    *buf = 138412802;
    v15 = identifier;
    v16 = 1024;
    v17 = authorizationStatus;
    v18 = 1024;
    v19 = accuracyAuthorization;
    _os_log_impl(&dword_1D311E000, v8, OS_LOG_TYPE_DEFAULT, "[%@] CoreLocation changed authorization: %d, accuracy authorization: %d", buf, 0x18u);
  }

  geo_isolate_sync_data();
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained locationProviderDidChangeAuthorizationStatus:self];

  coarseModeEnabled2 = [(MNCoreLocationProvider *)self coarseModeEnabled];
  if (coarseModeEnabled != coarseModeEnabled2)
  {
    v12 = coarseModeEnabled2;
    v13 = objc_loadWeakRetained(&self->_delegate);
    [v13 locationProvider:self didChangeCoarseMode:v12];
  }
}

uint64_t __64__MNCoreLocationProvider_locationManagerDidChangeAuthorization___block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  *(*(result + 32) + 40) = *(result + 48);
  *(*(result + 32) + 48) = v1;
  return result;
}

- (void)locationManager:(id)manager didFailWithError:(id)error
{
  v13 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v6 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    identifier = self->_identifier;
    v9 = 138412547;
    v10 = identifier;
    v11 = 2113;
    v12 = errorCopy;
    _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_ERROR, "[%@] CoreLocation error: %{private}@", &v9, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained locationProvider:self didReceiveError:errorCopy];
}

- (void)locationManager:(id)manager didUpdateHeading:(id)heading
{
  headingCopy = heading;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained locationProvider:self didUpdateHeading:headingCopy];
}

- (void)locationManager:(id)manager didUpdateLocations:(id)locations
{
  v21 = *MEMORY[0x1E69E9840];
  locationsCopy = locations;
  v6 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    identifier = self->_identifier;
    v19 = 138412290;
    v20 = identifier;
    _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_INFO, "[%@] locationManager:didUpdateLocations", &v19, 0xCu);
  }

  v8 = MNGetMNLocationProviderLog();
  v9 = os_signpost_id_generate(v8);
  v10 = v8;
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    LOWORD(v19) = 0;
    _os_signpost_emit_with_name_impl(&dword_1D311E000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "DidUpdateLocations", "", &v19, 2u);
  }

  lastObject = [locationsCopy lastObject];

  v13 = [[MNLocation alloc] initWithCLLocation:lastObject];
  [(CLLocation *)v13 _navigation_setGtLog:1];
  v14 = MNGetPuckTrackingLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    uuid = [(MNLocation *)v13 uuid];
    v19 = 138412290;
    v20 = uuid;
    _os_log_impl(&dword_1D311E000, v14, OS_LOG_TYPE_INFO, "[MN] [%@] - Received - from MNCoreLocationProvider", &v19, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained locationProvider:self didUpdateLocation:v13];

  v17 = v11;
  v18 = v17;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    LOWORD(v19) = 0;
    _os_signpost_emit_with_name_impl(&dword_1D311E000, v18, OS_SIGNPOST_INTERVAL_END, v9, "DidUpdateLocations", "", &v19, 2u);
  }
}

- (void)setHeadingOrientation:(int)orientation
{
  v3 = *&orientation;
  v11 = *MEMORY[0x1E69E9840];
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    identifier = self->_identifier;
    v7 = 138412546;
    v8 = identifier;
    v9 = 1024;
    v10 = v3;
    _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_DEFAULT, "[%@] setHeadingOrientation: %d", &v7, 0x12u);
  }

  [(CLLocationManager *)self->_clLocationManager setHeadingOrientation:v3];
}

- (void)resetForActiveTileGroupChanged
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    identifier = self->_identifier;
    v5 = 138412290;
    v6 = identifier;
    _os_log_impl(&dword_1D311E000, v3, OS_LOG_TYPE_DEFAULT, "[%@] resetForActiveTileGroupChanged", &v5, 0xCu);
  }

  [(CLLocationManager *)self->_clLocationManager requestLocation];
}

- (void)stopUpdatingVehicleHeading
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    identifier = self->_identifier;
    v5 = 138412290;
    v6 = identifier;
    _os_log_impl(&dword_1D311E000, v3, OS_LOG_TYPE_DEFAULT, "[%@] stopUpdatingVehicleHeading", &v5, 0xCu);
  }

  [(CLLocationManager *)self->_clLocationManager stopUpdatingVehicleHeading];
}

- (void)startUpdatingVehicleHeading
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    identifier = self->_identifier;
    v5 = 138412290;
    v6 = identifier;
    _os_log_impl(&dword_1D311E000, v3, OS_LOG_TYPE_DEFAULT, "[%@] startUpdatingVehicleHeading", &v5, 0xCu);
  }

  [(CLLocationManager *)self->_clLocationManager startUpdatingVehicleHeading];
}

- (void)stopUpdatingVehicleSpeed
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    identifier = self->_identifier;
    v5 = 138412290;
    v6 = identifier;
    _os_log_impl(&dword_1D311E000, v3, OS_LOG_TYPE_DEFAULT, "[%@] stopUpdatingVehicleSpeed", &v5, 0xCu);
  }

  [(CLLocationManager *)self->_clLocationManager stopUpdatingVehicleSpeed];
}

- (void)startUpdatingVehicleSpeed
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    identifier = self->_identifier;
    v5 = 138412290;
    v6 = identifier;
    _os_log_impl(&dword_1D311E000, v3, OS_LOG_TYPE_DEFAULT, "[%@] startUpdatingVehicleSpeed", &v5, 0xCu);
  }

  [(CLLocationManager *)self->_clLocationManager startUpdatingVehicleSpeed];
}

- (void)stopUpdatingHeading
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    identifier = self->_identifier;
    v5 = 138412290;
    v6 = identifier;
    _os_log_impl(&dword_1D311E000, v3, OS_LOG_TYPE_DEFAULT, "[%@] stopUpdatingHeading", &v5, 0xCu);
  }

  [(CLLocationManager *)self->_clLocationManager stopUpdatingHeading];
}

- (void)startUpdatingHeading
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    identifier = self->_identifier;
    v5 = 138412290;
    v6 = identifier;
    _os_log_impl(&dword_1D311E000, v3, OS_LOG_TYPE_DEFAULT, "[%@] startUpdatingHeading", &v5, 0xCu);
  }

  [(CLLocationManager *)self->_clLocationManager startUpdatingHeading];
}

- (void)requestLocation
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    identifier = self->_identifier;
    v5 = 138412290;
    v6 = identifier;
    _os_log_impl(&dword_1D311E000, v3, OS_LOG_TYPE_DEFAULT, "[%@] requestLocation", &v5, 0xCu);
  }

  [(CLLocationManager *)self->_clLocationManager requestLocation];
}

- (void)stopUpdatingLocation
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    identifier = self->_identifier;
    v5 = 138412290;
    v6 = identifier;
    _os_log_impl(&dword_1D311E000, v3, OS_LOG_TYPE_DEFAULT, "[%@] stopUpdatingLocation", &v5, 0xCu);
  }

  [(CLLocationManager *)self->_clLocationManager stopUpdatingLocation];
}

- (void)_startUpdatingLocationWithDeterminedAuthorization
{
  v9 = *MEMORY[0x1E69E9840];
  if (![(MNCoreLocationProvider *)self isAuthorized])
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      identifier = self->_identifier;
      v7 = 138412290;
      v8 = identifier;
      _os_log_impl(&dword_1D311E000, v3, OS_LOG_TYPE_ERROR, "[%@] Trying to start Navigation location updates without location authorization", &v7, 0xCu);
    }
  }

  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = self->_identifier;
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_DEFAULT, "[%@] Calling [CLLocationManager startUpdatingLocation]", &v7, 0xCu);
  }

  [(CLLocationManager *)self->_clLocationManager startUpdatingLocation];
}

- (void)startUpdatingLocation
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    identifier = self->_identifier;
    LODWORD(buf) = 138412290;
    *(&buf + 4) = identifier;
    _os_log_impl(&dword_1D311E000, v3, OS_LOG_TYPE_DEFAULT, "[%@] startUpdatingLocation", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v12 = 0x2020000000;
  v13 = 0;
  v8[1] = MEMORY[0x1E69E9820];
  v8[2] = 3221225472;
  v8[3] = __47__MNCoreLocationProvider_startUpdatingLocation__block_invoke;
  v8[4] = &unk_1E8430960;
  v8[5] = self;
  v8[6] = &buf;
  geo_isolate_sync_data();
  if (*(*(&buf + 1) + 24))
  {
    [(MNCoreLocationProvider *)self _startUpdatingLocationWithDeterminedAuthorization];
  }

  else
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = self->_identifier;
      *v9 = 138412290;
      v10 = v6;
      _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_DEBUG, "[%@] Authorization not determined, updating manually.", v9, 0xCu);
    }

    objc_initWeak(v9, self);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __47__MNCoreLocationProvider_startUpdatingLocation__block_invoke_53;
    v7[3] = &unk_1E8430EA0;
    objc_copyWeak(v8, v9);
    [(MNCoreLocationProvider *)self _forceUpdateAuthorizationStatusWithCompletionHandler:v7];
    objc_destroyWeak(v8);
    objc_destroyWeak(v9);
  }

  _Block_object_dispose(&buf, 8);
}

void __47__MNCoreLocationProvider_startUpdatingLocation__block_invoke_53(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _startUpdatingLocationWithDeterminedAuthorization];
}

- (void)setDesiredAccuracy:(double)accuracy
{
  [(MNLocationProviderCLParameters *)self->_clParameters setDesiredAccuracy:?];
  clLocationManager = self->_clLocationManager;

  [(CLLocationManager *)clLocationManager setDesiredAccuracy:accuracy];
}

- (void)setDistanceFilter:(double)filter
{
  [(MNLocationProviderCLParameters *)self->_clParameters setDistanceFilter:?];
  clLocationManager = self->_clLocationManager;

  [(CLLocationManager *)clLocationManager setDistanceFilter:filter];
}

- (void)_forceUpdateAuthorizationStatusWithCompletionHandler:(id)handler
{
  v13 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    identifier = self->_identifier;
    *buf = 138412290;
    v12 = identifier;
    _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_DEFAULT, "[%@] Force updating authorization status.", buf, 0xCu);
  }

  locationsQueue = self->_locationsQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __79__MNCoreLocationProvider__forceUpdateAuthorizationStatusWithCompletionHandler___block_invoke;
  v9[3] = &unk_1E842F580;
  v9[4] = self;
  v10 = handlerCopy;
  v8 = handlerCopy;
  dispatch_async(locationsQueue, v9);
}

uint64_t __79__MNCoreLocationProvider__forceUpdateAuthorizationStatusWithCompletionHandler___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  geo_isolate_sync_data();
  v2 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 32) + 64);
    *buf = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1D311E000, v2, OS_LOG_TYPE_DEFAULT, "[%@] Finished force updating authorization status.", buf, 0xCu);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void *__79__MNCoreLocationProvider__forceUpdateAuthorizationStatusWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  *(*(a1 + 32) + 40) = [*(*(a1 + 32) + 8) authorizationStatus];
  result = [*(*(a1 + 32) + 8) accuracyAuthorization];
  *(*(a1 + 32) + 48) = result;
  return result;
}

- (void)_updateForCLParameters:(id)parameters
{
  v25 = *MEMORY[0x1E69E9840];
  parametersCopy = parameters;
  v5 = parametersCopy;
  if (parametersCopy && self->_clLocationManager)
  {
    -[CLLocationManager setActivityType:](self->_clLocationManager, "setActivityType:", [parametersCopy activityType]);
    [v5 distanceFilter];
    [(CLLocationManager *)self->_clLocationManager setDistanceFilter:?];
    [v5 desiredAccuracy];
    [(CLLocationManager *)self->_clLocationManager setDesiredAccuracy:?];
    -[CLLocationManager setMatchInfoEnabled:](self->_clLocationManager, "setMatchInfoEnabled:", [v5 matchInfoEnabled]);
    -[CLLocationManager _setFusionInfoEnabled:](self->_clLocationManager, "_setFusionInfoEnabled:", [v5 fusionInfoEnabled]);
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      identifier = self->_identifier;
      activityType = [v5 activityType];
      [v5 distanceFilter];
      v10 = v9;
      [v5 desiredAccuracy];
      v13 = 138413570;
      v14 = identifier;
      v15 = 1024;
      v16 = activityType;
      v17 = 2048;
      v18 = v10;
      v19 = 2048;
      v20 = v11;
      v21 = 1024;
      matchInfoEnabled = [v5 matchInfoEnabled];
      v23 = 1024;
      fusionInfoEnabled = [v5 fusionInfoEnabled];
      _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_DEFAULT, "[%@] MNCoreLocationProvider setting CL parameters:\nactivityType:%d, distanceFilter:%g, desiredAccuracy:%g, matchInfoEnabled:%d, fusionInfoEnabled:%d", &v13, 0x32u);
    }

    clParameters = self->_clParameters;
    self->_clParameters = 0;
  }
}

- (void)setCLParameters:(id)parameters
{
  parametersCopy = parameters;
  v6 = parametersCopy;
  if (self->_clLocationManager)
  {
    [(MNCoreLocationProvider *)self _updateForCLParameters:parametersCopy];
  }

  else
  {
    objc_storeStrong(&self->_clParameters, parameters);
  }
}

- (void)dealloc
{
  v8 = *MEMORY[0x1E69E9840];
  [(CLLocationManager *)self->_clLocationManager stopUpdatingLocation];
  [(CLLocationManager *)self->_clLocationManager stopUpdatingHeading];
  [(CLLocationManager *)self->_clLocationManager setDelegate:0];
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    identifier = self->_identifier;
    *buf = 138412290;
    v7 = identifier;
    _os_log_impl(&dword_1D311E000, v3, OS_LOG_TYPE_DEFAULT, "[%@] Deallocated.", buf, 0xCu);
  }

  v5.receiver = self;
  v5.super_class = MNCoreLocationProvider;
  [(MNCoreLocationProvider *)&v5 dealloc];
}

- (MNCoreLocationProvider)initWithEffectiveBundleIdentifier:(id)identifier
{
  v15 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v6 = [(MNCoreLocationProvider *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identifier, identifier);
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = identifierCopy;
      _os_log_impl(&dword_1D311E000, v8, OS_LOG_TYPE_DEFAULT, "[MNCoreLocationProvider initWithEffectiveBundleIdentifier:] - %@", &v13, 0xCu);
    }

    v9 = [objc_alloc(MEMORY[0x1E695FBE8]) initWithEffectiveBundleIdentifier:identifierCopy delegate:v7 onQueue:v7->_locationsQueue];
    clLocationManager = v7->_clLocationManager;
    v7->_clLocationManager = v9;

    [(CLLocationManager *)v7->_clLocationManager setDelegate:v7];
    v11 = v7;
  }

  return v7;
}

- (MNCoreLocationProvider)initWithEffectiveBundle:(id)bundle
{
  v18 = *MEMORY[0x1E69E9840];
  bundleCopy = bundle;
  v5 = [(MNCoreLocationProvider *)self init];
  if (v5)
  {
    bundleIdentifier = [bundleCopy bundleIdentifier];
    identifier = v5->_identifier;
    v5->_identifier = bundleIdentifier;

    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      bundleIdentifier2 = [bundleCopy bundleIdentifier];
      v16 = 138412290;
      v17 = bundleIdentifier2;
      _os_log_impl(&dword_1D311E000, v8, OS_LOG_TYPE_DEFAULT, "[MNCoreLocationProvider initWithEffectiveBundle:] - %@", &v16, 0xCu);
    }

    v10 = objc_alloc(MEMORY[0x1E695FBE8]);
    bundlePath = [bundleCopy bundlePath];
    v12 = [v10 initWithEffectiveBundlePath:bundlePath delegate:v5 onQueue:v5->_locationsQueue];
    clLocationManager = v5->_clLocationManager;
    v5->_clLocationManager = v12;

    [(CLLocationManager *)v5->_clLocationManager setDelegate:v5];
    v14 = v5;
  }

  return v5;
}

- (MNCoreLocationProvider)init
{
  v9.receiver = self;
  v9.super_class = MNCoreLocationProvider;
  v2 = [(MNCoreLocationProvider *)&v9 init];
  if (v2)
  {
    v3 = geo_dispatch_queue_create();
    locationsQueue = v2->_locationsQueue;
    v2->_locationsQueue = v3;

    v2->_authorizationStatus = 0;
    v5 = geo_isolater_create();
    authorizationIsolater = v2->_authorizationIsolater;
    v2->_authorizationIsolater = v5;

    v7 = v2;
  }

  return v2;
}

- (void)locationManager:(id)manager didUpdateVehicleHeading:(id)heading
{
  v21 = *MEMORY[0x1E69E9840];
  headingCopy = heading;
  v6 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    identifier = self->_identifier;
    [headingCopy trueHeading];
    v9 = v8;
    timestamp = [headingCopy timestamp];
    v15 = 138412803;
    v16 = identifier;
    v17 = 2048;
    v18 = v9;
    v19 = 2113;
    v20 = timestamp;
    _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_DEBUG, "[%@] Got vehicle heading: %g | %{private}@", &v15, 0x20u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [headingCopy trueHeading];
  v13 = v12;
  timestamp2 = [headingCopy timestamp];
  [WeakRetained locationProvider:self didUpdateVehicleHeading:timestamp2 timestamp:v13];
}

- (void)locationManager:(id)manager didUpdateVehicleSpeed:(id)speed
{
  v21 = *MEMORY[0x1E69E9840];
  speedCopy = speed;
  v6 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    identifier = self->_identifier;
    [speedCopy speed];
    v9 = v8;
    timestamp = [speedCopy timestamp];
    v15 = 138412803;
    v16 = identifier;
    v17 = 2048;
    v18 = v9;
    v19 = 2113;
    v20 = timestamp;
    _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_DEBUG, "[%@] Got vehicle speed: %g | %{private}@", &v15, 0x20u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [speedCopy speed];
  v13 = v12;
  timestamp2 = [speedCopy timestamp];
  [WeakRetained locationProvider:self didUpdateVehicleSpeed:timestamp2 timestamp:v13];
}

@end