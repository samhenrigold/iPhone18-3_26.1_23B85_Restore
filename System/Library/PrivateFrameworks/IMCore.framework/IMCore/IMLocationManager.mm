@interface IMLocationManager
+ (Class)__CLInUseAssertionClass;
+ (Class)__CLLocationManagerClass;
+ (id)locationShifter;
+ (id)sharedInstance;
- (BOOL)_shouldSendLocation:(id)location timeIntervalSinceStart:(double)start;
- (BOOL)preciseLocationAuthorized;
- (CLLocation)currentLocation;
- (IMLocationManager)init;
- (void)_errorHappend:(id)happend;
- (void)_fireCompletionHandlers;
- (void)_locationManagerTimedOut;
- (void)_locationUpdateTimerFired:(id)fired;
- (void)_startLocationUpdateTimerWithAuthorizedHandler:(id)handler updateHandler:(id)updateHandler;
- (void)locationManager:(id)manager didFailWithError:(id)error;
- (void)locationManager:(id)manager didUpdateLocations:(id)locations;
- (void)locationManagerDidChangeAuthorization:(id)authorization;
- (void)shiftedLocationWithLocation:(id)location completion:(id)completion;
- (void)startUpdatingCurrentLocationWithForegroundAssertionForBundleIdentifier:(id)identifier withAuthorizedHandler:(id)handler updateHandler:(id)updateHandler;
@end

@implementation IMLocationManager

- (IMLocationManager)init
{
  v9.receiver = self;
  v9.super_class = IMLocationManager;
  v2 = [(IMLocationManager *)&v9 init];
  if (v2)
  {
    if (qword_1EB2EA460 != -1)
    {
      sub_1A84E2BC0();
    }

    v3 = objc_alloc_init([objc_opt_class() __CLLocationManagerClass]);
    [(CLLocationManager *)v3 setDelegate:v2];
    [(CLLocationManager *)v3 setDesiredAccuracy:*&qword_1EB2EA458];
    locationManager = v2->_locationManager;
    v2->_locationManager = v3;
    v5 = v3;

    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    handlers = v2->_handlers;
    v2->_handlers = v6;
  }

  return v2;
}

+ (id)sharedInstance
{
  if (qword_1ED767960 != -1)
  {
    sub_1A84E2BE8();
  }

  v3 = qword_1ED767900;

  return v3;
}

- (void)startUpdatingCurrentLocationWithForegroundAssertionForBundleIdentifier:(id)identifier withAuthorizedHandler:(id)handler updateHandler:(id)updateHandler
{
  v55 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  handlerCopy = handler;
  updateHandlerCopy = updateHandler;
  v11 = updateHandlerCopy;
  if (!handlerCopy || !updateHandlerCopy)
  {
    goto LABEL_40;
  }

  if ([(__CFString *)identifierCopy length])
  {
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v54 = identifierCopy;
        _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_INFO, "IMLocationManager taking CLInUseAssertion for %@", buf, 0xCu);
      }
    }

    __CLInUseAssertionClass = [objc_opt_class() __CLInUseAssertionClass];
    identifierCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Treating %@ as a foreground process for location sending.", identifierCopy];
    v15 = [__CLInUseAssertionClass newAssertionForBundleIdentifier:identifierCopy withReason:identifierCopy level:1];

    [(IMLocationManager *)self setInUseAssertion:v15];
  }

  authorizationStatus = [(IMLocationManager *)self authorizationStatus];
  if (authorizationStatus)
  {
    v17 = (authorizationStatus - 3) < 2;
    v18 = IMOSLoggingEnabled();
    if (v17)
    {
      if (v18)
      {
        v19 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          locationManager = [(IMLocationManager *)self locationManager];
          _limitsPrecision = [locationManager _limitsPrecision];
          v22 = @"NO";
          if (_limitsPrecision)
          {
            v22 = @"YES";
          }

          *buf = 138412290;
          v54 = v22;
          _os_log_impl(&dword_1A823F000, v19, OS_LOG_TYPE_INFO, "Starting with _limitsPrecision %@", buf, 0xCu);
        }
      }

      locationUpdateTimer = [(IMLocationManager *)self locationUpdateTimer];
      v24 = locationUpdateTimer == 0;

      if (!v24)
      {
        locationUpdateTimer2 = [(IMLocationManager *)self locationUpdateTimer];
        [locationUpdateTimer2 invalidate];

        [(IMLocationManager *)self setLocationUpdateTimer:0];
      }

      if (![(IMLocationManager *)self firstAuthorizationCallbackArrived])
      {
        v31 = [handlerCopy copy];

        v30 = [v11 copy];
        handlers = [(IMLocationManager *)self handlers];
        v44 = _Block_copy(v31);
        v51[0] = v44;
        v45 = _Block_copy(v30);
        v51[1] = v45;
        v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:2];
        [handlers addObject:v46];

        goto LABEL_41;
      }

      locationManager2 = [(IMLocationManager *)self locationManager];
      if ([locationManager2 _limitsPrecision])
      {
        inRequestPreciseLocation = [(IMLocationManager *)self inRequestPreciseLocation];

        if (!inRequestPreciseLocation)
        {
          if (IMOSLoggingEnabled())
          {
            v28 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_1A823F000, v28, OS_LOG_TYPE_INFO, "Requesting temporary full precision.", buf, 2u);
            }
          }

          [(IMLocationManager *)self setInRequestPreciseLocation:1];
          objc_initWeak(buf, self);
          locationManager3 = [(IMLocationManager *)self locationManager];
          v47[0] = MEMORY[0x1E69E9820];
          v47[1] = 3221225472;
          v47[2] = sub_1A83AAA34;
          v47[3] = &unk_1E7814220;
          objc_copyWeak(&v50, buf);
          v30 = v11;
          v48 = v30;
          v31 = handlerCopy;
          v49 = v31;
          [locationManager3 requestTemporaryFullAccuracyAuthorizationWithPurposeKey:@"SendLocationDescription" completion:v47];

          objc_destroyWeak(&v50);
          objc_destroyWeak(buf);
          goto LABEL_41;
        }
      }

      else
      {
      }

      [(IMLocationManager *)self setInRequestPreciseLocation:0];
      [(IMLocationManager *)self _startLocationUpdateTimerWithAuthorizedHandler:handlerCopy updateHandler:v11];
    }

    else
    {
      if (v18)
      {
        v38 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1A823F000, v38, OS_LOG_TYPE_INFO, "IMLocationManager denied when in use location authorization", buf, 2u);
        }
      }

      v39 = objc_alloc(MEMORY[0x1E695DF20]);
      v40 = [v39 initWithObjectsAndKeys:{@"IMLocationManager does not have location access", *MEMORY[0x1E696A578], 0}];
      v41 = objc_alloc(MEMORY[0x1E696ABC0]);
      v42 = [v41 initWithDomain:*MEMORY[0x1E69A5F40] code:42 userInfo:v40];
      (v11)[2](v11, 0, v42);
    }

LABEL_40:
    v30 = v11;
    v31 = handlerCopy;
    goto LABEL_41;
  }

  if (IMOSLoggingEnabled())
  {
    v32 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v32, OS_LOG_TYPE_INFO, "IMLocationManager location authorization not determined, requesting when in use authorization", buf, 2u);
    }
  }

  locationManager4 = [(IMLocationManager *)self locationManager];
  [locationManager4 requestWhenInUseAuthorization];

  v31 = [handlerCopy copy];
  v30 = [v11 copy];

  handlers2 = [(IMLocationManager *)self handlers];
  v35 = _Block_copy(v31);
  v52[0] = v35;
  v36 = _Block_copy(v30);
  v52[1] = v36;
  v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:2];
  [handlers2 addObject:v37];

LABEL_41:
}

- (void)_startLocationUpdateTimerWithAuthorizedHandler:(id)handler updateHandler:(id)updateHandler
{
  v22[2] = *MEMORY[0x1E69E9840];
  v6 = *(handler + 2);
  updateHandlerCopy = updateHandler;
  handlerCopy = handler;
  v6();
  v9 = [handlerCopy copy];

  v10 = [updateHandlerCopy copy];
  handlers = [(IMLocationManager *)self handlers];
  v12 = _Block_copy(v9);
  v22[0] = v12;
  v13 = _Block_copy(v10);
  v22[1] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
  [handlers addObject:v14];

  locationUpdateTimer = [(IMLocationManager *)self locationUpdateTimer];
  LOBYTE(handlers) = locationUpdateTimer == 0;

  if ((handlers & 1) == 0)
  {
    locationUpdateTimer2 = [(IMLocationManager *)self locationUpdateTimer];
    [locationUpdateTimer2 invalidate];

    [(IMLocationManager *)self setLocationUpdateTimer:0];
  }

  date = [MEMORY[0x1E695DF00] date];
  [(IMLocationManager *)self setLocateStartTime:date];

  v18 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel__locationUpdateTimerFired_ selector:0 userInfo:1 repeats:1.0];
  [(IMLocationManager *)self setLocationUpdateTimer:v18];
  locationManager = [(IMLocationManager *)self locationManager];
  [locationManager startUpdatingLocation];

  if (IMOSLoggingEnabled())
  {
    v20 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *v21 = 0;
      _os_log_impl(&dword_1A823F000, v20, OS_LOG_TYPE_INFO, "Started location update", v21, 2u);
    }
  }
}

- (BOOL)preciseLocationAuthorized
{
  locationManager = [(IMLocationManager *)self locationManager];
  v3 = [locationManager accuracyAuthorization] == 0;

  return v3;
}

- (CLLocation)currentLocation
{
  locationManager = [(IMLocationManager *)self locationManager];
  location = [locationManager location];

  return location;
}

- (void)locationManager:(id)manager didUpdateLocations:(id)locations
{
  managerCopy = manager;
  locationsCopy = locations;
  lastObject = [locationsCopy lastObject];
  if (lastObject)
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *v10 = 0;
        _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "Location manager got updated location", v10, 2u);
      }
    }

    [(IMLocationManager *)self setLocation:lastObject];
    [(IMLocationManager *)self setError:0];
  }
}

- (void)locationManager:(id)manager didFailWithError:(id)error
{
  v11 = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  errorCopy = error;
  if ([errorCopy code])
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = 138412290;
        v10 = errorCopy;
        _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "Location manager failed with error %@", &v9, 0xCu);
      }
    }

    [(IMLocationManager *)self _errorHappend:errorCopy];
  }
}

- (void)_errorHappend:(id)happend
{
  happendCopy = happend;
  [(IMLocationManager *)self setLocation:0];
  [(IMLocationManager *)self setError:happendCopy];

  [(IMLocationManager *)self _fireCompletionHandlers];
  locationManager = [(IMLocationManager *)self locationManager];
  [locationManager stopUpdatingLocation];
}

- (void)locationManagerDidChangeAuthorization:(id)authorization
{
  v30 = *MEMORY[0x1E69E9840];
  authorizationCopy = authorization;
  authorizationStatus = [authorizationCopy authorizationStatus];
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      _limitsPrecision = [authorizationCopy _limitsPrecision];
      v8 = @"NO";
      if (_limitsPrecision)
      {
        v8 = @"YES";
      }

      *buf = 67109378;
      v27 = authorizationStatus;
      v28 = 2112;
      v29 = v8;
      _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "authorization status did change %u, received Coarse Location %@", buf, 0x12u);
    }
  }

  [(IMLocationManager *)self setFirstAuthorizationCallbackArrived:1];
  [(IMLocationManager *)self setAuthorizationStatus:authorizationStatus];
  handlers = [(IMLocationManager *)self handlers];
  v10 = [handlers count] == 0;

  if (!v10)
  {
    if ((authorizationStatus - 3) > 1)
    {
      if ((authorizationStatus - 1) <= 1)
      {
        [(IMLocationManager *)self _locationManagerTimedOut];
      }
    }

    else
    {
      handlers2 = [(IMLocationManager *)self handlers];
      v12 = [handlers2 copy];

      handlers3 = [(IMLocationManager *)self handlers];
      [handlers3 removeAllObjects];

      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v14 = v12;
      v15 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v15)
      {
        v16 = *v22;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v22 != v16)
            {
              objc_enumerationMutation(v14);
            }

            v18 = *(*(&v21 + 1) + 8 * i);
            v19 = [v18 objectAtIndexedSubscript:{0, v21}];
            v20 = [v18 objectAtIndexedSubscript:1];
            [(IMLocationManager *)self startUpdatingCurrentLocationWithAuthorizedHandler:v19 updateHandler:v20];
          }

          v15 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v15);
      }
    }
  }
}

- (BOOL)_shouldSendLocation:(id)location timeIntervalSinceStart:(double)start
{
  locationCopy = location;
  [locationCopy horizontalAccuracy];
  if (start <= 0.0)
  {
    startCopy = 15.0;
  }

  else
  {
    startCopy = start;
  }

  if (locationCopy)
  {
    v8 = v6 < 25.0 || v6 < 200.0 && v6 < startCopy / 15.0 * 175.0 + 25.0;
    timestamp = [locationCopy timestamp];
    [timestamp timeIntervalSinceNow];
    v11 = v10;

    if (v11 < 0.0)
    {
      v8 &= -v11 - startCopy <= 300.0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_locationUpdateTimerFired:(id)fired
{
  firedCopy = fired;
  locationManager = [(IMLocationManager *)self locationManager];
  location = [(IMLocationManager *)self location];
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v8 = v7;
  locateStartTime = [(IMLocationManager *)self locateStartTime];
  [locateStartTime timeIntervalSinceReferenceDate];
  v11 = v8 - v10;

  if ([(IMLocationManager *)self _shouldSendLocation:location timeIntervalSinceStart:v11])
  {
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_INFO, "Location update timer fired, got location with desired accuracy", buf, 2u);
      }
    }

    [(IMLocationManager *)self _fireCompletionHandlers];
    [locationManager stopUpdatingLocation];
  }

  else
  {
    v13 = IMOSLoggingEnabled();
    if (v11 >= 15.0)
    {
      if (v13)
      {
        v15 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          *v17 = 0;
          _os_log_impl(&dword_1A823F000, v15, OS_LOG_TYPE_INFO, "Location update timer fired, did not get desired accuracy before timeout. Firing completion handlers", v17, 2u);
        }
      }

      [(IMLocationManager *)self _locationManagerTimedOut];
    }

    else if (v13)
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *v16 = 0;
        _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_INFO, "Location update timer fired, desired accuracy not obtained but we have time left", v16, 2u);
      }
    }
  }
}

- (void)_locationManagerTimedOut
{
  v15 = *MEMORY[0x1E69E9840];
  locationAuthorizationDenied = [(IMLocationManager *)self locationAuthorizationDenied];
  v4 = @"IMLocationManager Timed Out";
  if (locationAuthorizationDenied)
  {
    v4 = @"IMLocationManager does not have location authorization";
  }

  v5 = v4;
  if ([(IMLocationManager *)self locationAuthorizationDenied])
  {
    v6 = 42;
  }

  else
  {
    v6 = 41;
  }

  v7 = objc_alloc(MEMORY[0x1E695DF20]);
  v8 = [v7 initWithObjectsAndKeys:{v5, *MEMORY[0x1E696A578], 0}];
  v9 = objc_alloc(MEMORY[0x1E696ABC0]);
  v10 = [v9 initWithDomain:*MEMORY[0x1E69A5F40] code:v6 userInfo:v8];
  [(IMLocationManager *)self setLocation:0];
  [(IMLocationManager *)self setError:v10];
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v14 = v5;
      _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_INFO, "Location manager timed out. Reason: %@", buf, 0xCu);
    }
  }

  [(IMLocationManager *)self _fireCompletionHandlers];
  locationManager = [(IMLocationManager *)self locationManager];
  [locationManager stopUpdatingLocation];
}

- (void)_fireCompletionHandlers
{
  v26 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      location = [(IMLocationManager *)self location];
      error = [(IMLocationManager *)self error];
      v6 = error;
      v7 = @"YES";
      if (!location)
      {
        v7 = @"NO";
      }

      *buf = 138412546;
      v23 = v7;
      v24 = 2112;
      v25 = error;
      _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "Location manager firing completion handlers. Has valid location %@ error %@", buf, 0x16u);
    }
  }

  inUseAssertion = [(IMLocationManager *)self inUseAssertion];

  if (inUseAssertion)
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "Invalidating CLInUseAssertion.", buf, 2u);
      }
    }

    inUseAssertion2 = [(IMLocationManager *)self inUseAssertion];
    [inUseAssertion2 invalidate];

    [(IMLocationManager *)self setInUseAssertion:0];
  }

  location2 = [(IMLocationManager *)self location];
  if (location2)
  {
  }

  else
  {
    error2 = [(IMLocationManager *)self error];
    v13 = error2 == 0;

    if (v13)
    {
      return;
    }
  }

  locationUpdateTimer = [(IMLocationManager *)self locationUpdateTimer];
  v15 = locationUpdateTimer == 0;

  if (!v15)
  {
    locationUpdateTimer2 = [(IMLocationManager *)self locationUpdateTimer];
    [locationUpdateTimer2 invalidate];

    [(IMLocationManager *)self setLocationUpdateTimer:0];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1A83ABD60;
  aBlock[3] = &unk_1E7814248;
  aBlock[4] = self;
  v17 = _Block_copy(aBlock);
  location3 = [(IMLocationManager *)self location];
  v19 = location3 == 0;

  if (v19)
  {
    v17[2](v17, 0);
  }

  else
  {
    location4 = [(IMLocationManager *)self location];
    [(IMLocationManager *)self shiftedLocationWithLocation:location4 completion:v17];
  }
}

+ (id)locationShifter
{
  if (qword_1EB2EA470 != -1)
  {
    sub_1A84E2BFC();
  }

  v3 = qword_1EB2EA468;

  return v3;
}

- (void)shiftedLocationWithLocation:(id)location completion:(id)completion
{
  locationCopy = location;
  completionCopy = completion;
  locationShifter = [objc_opt_class() locationShifter];
  if (locationShifter && (v9 = locationShifter, [objc_opt_class() locationShifter], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(objc_opt_class(), "isLocationShiftRequiredForLocation:", locationCopy), v10, v9, v11))
  {
    v12 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A83AC0B0;
    block[3] = &unk_1E7810190;
    block[4] = self;
    v14 = locationCopy;
    v15 = completionCopy;
    dispatch_async(v12, block);
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, locationCopy);
  }
}

+ (Class)__CLLocationManagerClass
{
  if (qword_1EB2EA480 != -1)
  {
    sub_1A84E2C10();
  }

  v3 = qword_1EB2EA478;

  return v3;
}

+ (Class)__CLInUseAssertionClass
{
  if (qword_1EB2EA490 != -1)
  {
    sub_1A84E2C24();
  }

  v3 = qword_1EB2EA488;

  return v3;
}

@end