@interface ARGeoTrackingLocationRequestHandler
- (ARGeoTrackingLocationRequestHandler)init;
- (int)waitForAuthorizationStatus;
- (void)locationManager:(id)manager didFailWithError:(id)error;
- (void)locationManager:(id)manager didUpdateLocations:(id)locations;
- (void)locationManagerDidChangeAuthorization:(id)authorization;
- (void)requestLocationWithCompletionHandler:(id)handler;
- (void)setLocationManager:(id)manager;
@end

@implementation ARGeoTrackingLocationRequestHandler

- (ARGeoTrackingLocationRequestHandler)init
{
  v7.receiver = self;
  v7.super_class = ARGeoTrackingLocationRequestHandler;
  v2 = [(ARGeoTrackingLocationRequestHandler *)&v7 init];
  if (v2)
  {
    v3 = objc_opt_new();
    authorizationCondition = v2->_authorizationCondition;
    v2->_authorizationCondition = v3;

    v2->_authorizationStatus = 0;
    locationCompletionHandler = v2->_locationCompletionHandler;
    v2->_locationCompletionHandler = 0;
  }

  return v2;
}

- (void)setLocationManager:(id)manager
{
  managerCopy = manager;
  objc_storeWeak(&self->_locationManager, managerCopy);
}

- (void)locationManager:(id)manager didUpdateLocations:(id)locations
{
  v18 = *MEMORY[0x1E69E9840];
  locationsCopy = locations;
  managerCopy = manager;
  v8 = _ARLogGeneral_24(managerCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v14 = 138543618;
    v15 = v10;
    v16 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1C241C000, v8, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Received location", &v14, 0x16u);
  }

  [managerCopy stopUpdatingLocation];
  lastObject = [locationsCopy lastObject];

  locationCompletionHandler = self->_locationCompletionHandler;
  if (locationCompletionHandler)
  {
    locationCompletionHandler[2](locationCompletionHandler, lastObject, 0);
    v13 = self->_locationCompletionHandler;
    self->_locationCompletionHandler = 0;
  }
}

- (void)locationManager:(id)manager didFailWithError:(id)error
{
  v26 = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  errorCopy = error;
  v8 = errorCopy;
  if (ARShouldUseLogTypeError_onceToken_33 != -1)
  {
    [ARGeoTrackingLocationRequestHandler locationManager:didFailWithError:];
  }

  v9 = ARShouldUseLogTypeError_internalOSVersion_33;
  v10 = _ARLogGeneral_24(errorCopy);
  v11 = v10;
  if (v9 == 1)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v20 = 138543874;
      v21 = v13;
      v22 = 2048;
      selfCopy2 = self;
      v24 = 2112;
      v25 = v8;
      v14 = "%{public}@ <%p>: Location request handler failed: %@";
      v15 = v11;
      v16 = OS_LOG_TYPE_ERROR;
LABEL_8:
      _os_log_impl(&dword_1C241C000, v15, v16, v14, &v20, 0x20u);
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v17 = objc_opt_class();
    v13 = NSStringFromClass(v17);
    v20 = 138543874;
    v21 = v13;
    v22 = 2048;
    selfCopy2 = self;
    v24 = 2112;
    v25 = v8;
    v14 = "Error: %{public}@ <%p>: Location request handler failed: %@";
    v15 = v11;
    v16 = OS_LOG_TYPE_INFO;
    goto LABEL_8;
  }

  if ([v8 code])
  {
    locationCompletionHandler = self->_locationCompletionHandler;
    if (locationCompletionHandler)
    {
      locationCompletionHandler[2](locationCompletionHandler, 0, v8);
      v19 = self->_locationCompletionHandler;
      self->_locationCompletionHandler = 0;
    }
  }
}

- (void)locationManagerDidChangeAuthorization:(id)authorization
{
  v16 = *MEMORY[0x1E69E9840];
  authorizationCondition = self->_authorizationCondition;
  authorizationCopy = authorization;
  [(NSCondition *)authorizationCondition lock];
  authorizationStatus = [authorizationCopy authorizationStatus];

  self->_authorizationStatus = authorizationStatus;
  [(NSCondition *)self->_authorizationCondition broadcast];
  v7 = _ARLogGeneral_24([(NSCondition *)self->_authorizationCondition unlock]);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = 138543874;
    v11 = v9;
    v12 = 2048;
    selfCopy = self;
    v14 = 1024;
    v15 = authorizationStatus;
    _os_log_impl(&dword_1C241C000, v7, OS_LOG_TYPE_INFO, "%{public}@ <%p>: User has set location authorization status: %d", &v10, 0x1Cu);
  }
}

- (int)waitForAuthorizationStatus
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = _ARLogGeneral_24(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v8 = 138543618;
    v9 = v5;
    v10 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1C241C000, v3, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Waiting for location authorization from user", &v8, 0x16u);
  }

  [(NSCondition *)self->_authorizationCondition lock];
  while (1)
  {
    authorizationStatus = self->_authorizationStatus;
    if (authorizationStatus)
    {
      break;
    }

    [(NSCondition *)self->_authorizationCondition wait];
  }

  [(NSCondition *)self->_authorizationCondition unlock];
  return authorizationStatus;
}

- (void)requestLocationWithCompletionHandler:(id)handler
{
  v13 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v5 = _ARLogGeneral_24(handlerCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = 138543618;
    v10 = v7;
    v11 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1C241C000, v5, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Waiting for location for availability check", &v9, 0x16u);
  }

  [(ARGeoTrackingLocationRequestHandler *)self setLocationCompletionHandler:handlerCopy];
  WeakRetained = objc_loadWeakRetained(&self->_locationManager);
  [WeakRetained startUpdatingLocation];
}

@end