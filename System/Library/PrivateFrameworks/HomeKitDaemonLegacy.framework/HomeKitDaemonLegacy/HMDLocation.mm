@interface HMDLocation
+ (BOOL)isAccurateLocation:(id)location;
+ (HMDLocation)sharedManager;
+ (id)_getAlmanacWithLocation:(id)location;
+ (id)_getAlmanacWithLocation:(id)location date:(id)date;
+ (id)findEvent:(id)event withGeo:(id)geo;
+ (id)logCategory;
+ (id)nextSunriseTimeForLocation:(id)location date:(id)date;
+ (id)nextSunsetTimeForLocation:(id)location date:(id)date;
+ (id)sunriseTimeForLocation:(id)location;
+ (id)sunsetTimeForLocation:(id)location;
+ (void)timeZoneISOCountryCodeForCLLocationAsync:(id)async withCompletion:(id)completion;
- (BOOL)_canLocationBeExtracted;
- (BOOL)isCurrentLocationSimulated;
- (HMDLocation)initWithQueue:(id)queue dataSource:(id)source;
- (id)_delegateforRegion:(id)region;
- (id)getCurrentLocation;
- (void)_extractSingleLocationForDelegate:(id)delegate;
- (void)_handleDeterminedState:(int64_t)state forRegion:(id)region;
- (void)_notifySingleLocationDelegate:(id)delegate withLocation:(id)location;
- (void)_notifySingleLocationDelegatesWithLocation:(id)location;
- (void)_updateEntryForRegion:(id)region;
- (void)_updateExitForRegion:(id)region;
- (void)_updateRegionState:(int64_t)state forRegion:(id)region;
- (void)_updateWithLocationAuthorizationStatus:(int)status;
- (void)beingConfigured:(BOOL)configured completionHandler:(id)handler;
- (void)dealloc;
- (void)deregisterForRegionUpdate:(id)update completionHandler:(id)handler;
- (void)getCoreRoutineLOIForCurrentLocationWithCompletionHandler:(id)handler;
- (void)locationManager:(id)manager didDetermineState:(int64_t)state forRegion:(id)region;
- (void)locationManager:(id)manager didEnterRegion:(id)region;
- (void)locationManager:(id)manager didExitRegion:(id)region;
- (void)locationManager:(id)manager didFailWithError:(id)error;
- (void)locationManager:(id)manager didStartMonitoringForRegion:(id)region;
- (void)locationManager:(id)manager didUpdateLocations:(id)locations;
- (void)locationManagerDidChangeAuthorization:(id)authorization;
- (void)registerForRegionUpdate:(id)update withDelegate:(id)delegate completionHandler:(id)handler;
- (void)sessionDidConnect:(id)connect;
- (void)sessionDidDisconnect:(id)disconnect;
- (void)startExtractingSingleLocationForDelegate:(id)delegate;
- (void)startUpdatingLocation;
- (void)stopUpdatingLocation;
@end

@implementation HMDLocation

- (void)sessionDidDisconnect:(id)disconnect
{
  v13 = *MEMORY[0x277D85DE8];
  disconnectCopy = disconnect;
  self->_carPlayConnected = 0;
  v5 = [MEMORY[0x277CBEAA8] now];
  lastCarPlaySessionDisconnectionTimeStamp = self->_lastCarPlaySessionDisconnectionTimeStamp;
  self->_lastCarPlaySessionDisconnectionTimeStamp = v5;

  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v10;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@CarPlay session disconnected", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v7);
}

- (void)sessionDidConnect:(id)connect
{
  v12 = *MEMORY[0x277D85DE8];
  connectCopy = connect;
  self->_carPlayConnected = 1;
  lastCarPlaySessionDisconnectionTimeStamp = self->_lastCarPlaySessionDisconnectionTimeStamp;
  self->_lastCarPlaySessionDisconnectionTimeStamp = 0;

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v9;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@New CarPlay session connected", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
}

- (void)getCoreRoutineLOIForCurrentLocationWithCompletionHandler:(id)handler
{
  v20 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (!handlerCopy)
  {
    _HMFPreconditionFailure();
  }

  v5 = handlerCopy;
  locationManager = [(HMDLocation *)self locationManager];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = locationManager;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  v12 = v11;
  if (v8)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543362;
      v19 = v13;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Asking Core Routine for LOI at current location", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __72__HMDLocation_getCoreRoutineLOIForCurrentLocationWithCompletionHandler___block_invoke;
    v16[3] = &unk_279734A00;
    v16[4] = selfCopy;
    v17 = v5;
    [v8 _fetchPlaceInferencesWithFidelityPolicy:5 handler:v16];
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543362;
      v19 = v14;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@looks like we do not have valid location manager instance.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    (v5)[2](v5, 0, 0, v15);
  }
}

void __72__HMDLocation_getCoreRoutineLOIForCurrentLocationWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v40 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 && !v6)
  {
    v8 = [v5 firstObject];
    v9 = [v8 referenceLocation];

    if (v9)
    {
      if ([HMDLocation isAccurateLocation:v9])
      {
        v10 = [v5 firstObject];
        v11 = [v10 _loiIdentifier];

        if (!v11)
        {
          v12 = objc_autoreleasePoolPush();
          v13 = *(a1 + 32);
          v14 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            v15 = HMFGetLogIdentifier();
            v36 = 138543362;
            v37 = v15;
            _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@LOI Identifier is nil. Returning fallback location.", &v36, 0xCu);
          }

          objc_autoreleasePoolPop(v12);
          (*(*(a1 + 40) + 16))();
        }

        v16 = objc_autoreleasePoolPush();
        v17 = *(a1 + 32);
        v18 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v19 = HMFGetLogIdentifier();
          v36 = 138543618;
          v37 = v19;
          v38 = 2112;
          v39 = v9;
          _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@CR LOI Location : %@", &v36, 0x16u);
        }

        objc_autoreleasePoolPop(v16);
        (*(*(a1 + 40) + 16))();
        goto LABEL_22;
      }

      v31 = objc_autoreleasePoolPush();
      v32 = *(a1 + 32);
      v33 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v34 = HMFGetLogIdentifier();
        v36 = 138543618;
        v37 = v34;
        v38 = 2112;
        v39 = v9;
        _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_ERROR, "%{public}@Not using CR location with low accuracy : %@", &v36, 0x16u);
      }

      objc_autoreleasePoolPop(v31);
      v28 = *(a1 + 40);
      v29 = MEMORY[0x277CCA9B8];
      v30 = 2;
    }

    else
    {
      v24 = objc_autoreleasePoolPush();
      v25 = *(a1 + 32);
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = HMFGetLogIdentifier();
        v36 = 138543362;
        v37 = v27;
        _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_ERROR, "%{public}@Reference location is nil.", &v36, 0xCu);
      }

      objc_autoreleasePoolPop(v24);
      v28 = *(a1 + 40);
      v29 = MEMORY[0x277CCA9B8];
      v30 = 20;
    }

    v35 = [v29 hmErrorWithCode:v30];
    (*(v28 + 16))(v28, 0, 0, v35);

LABEL_22:
    goto LABEL_23;
  }

  v20 = objc_autoreleasePoolPush();
  v21 = *(a1 + 32);
  v22 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    v23 = HMFGetLogIdentifier();
    v36 = 138543618;
    v37 = v23;
    v38 = 2112;
    v39 = v7;
    _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_ERROR, "%{public}@Got an error or place inferences are nil while fetching location of interest. %@", &v36, 0x16u);
  }

  objc_autoreleasePoolPop(v20);
  (*(*(a1 + 40) + 16))();
LABEL_23:
}

- (void)locationManager:(id)manager didStartMonitoringForRegion:(id)region
{
  regionCopy = region;
  handlerQueue = [(HMDLocation *)self handlerQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59__HMDLocation_locationManager_didStartMonitoringForRegion___block_invoke;
  v8[3] = &unk_2797359B0;
  v8[4] = self;
  v9 = regionCopy;
  v7 = regionCopy;
  dispatch_async(handlerQueue, v8);
}

void __59__HMDLocation_locationManager_didStartMonitoringForRegion___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = HMFGetLogIdentifier();
    v6 = regionAsString(*(a1 + 40));
    v8 = 138543618;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@did start monitoring for region: %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = [*(a1 + 32) locationManager];
  [v7 requestStateForRegion:*(a1 + 40)];
}

- (void)locationManager:(id)manager didExitRegion:(id)region
{
  v17 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  regionCopy = region;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = regionAsString(regionCopy);
    v13 = 138543618;
    v14 = v11;
    v15 = 2112;
    v16 = v12;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@LocationManager did exit the region %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  [(HMDLocation *)selfCopy _handleDeterminedState:2 forRegion:regionCopy];
}

- (void)locationManager:(id)manager didEnterRegion:(id)region
{
  v17 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  regionCopy = region;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = regionAsString(regionCopy);
    v13 = 138543618;
    v14 = v11;
    v15 = 2112;
    v16 = v12;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@LocationManager did enter the region %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  [(HMDLocation *)selfCopy _handleDeterminedState:1 forRegion:regionCopy];
}

- (void)locationManager:(id)manager didDetermineState:(int64_t)state forRegion:(id)region
{
  v22 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  regionCopy = region;
  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    v14 = HMCLRegionStateAsString();
    [regionCopy radius];
    v16 = 138543874;
    v17 = v13;
    v18 = 2112;
    v19 = v14;
    v20 = 2048;
    v21 = v15;
    _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@LocationManager did determine region state: %@, radius : %f", &v16, 0x20u);
  }

  objc_autoreleasePoolPop(v10);
  [(HMDLocation *)selfCopy _handleDeterminedState:state forRegion:regionCopy];
}

- (void)locationManagerDidChangeAuthorization:(id)authorization
{
  v18 = *MEMORY[0x277D85DE8];
  authorizationCopy = authorization;
  authorizationStatus = [authorizationCopy authorizationStatus];
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = HMFGetLogIdentifier();
    v10 = HMCLAuthorizationStatusAsString();
    *buf = 138543618;
    v15 = v9;
    v16 = 2112;
    v17 = v10;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Received updated authorization status %@ for location", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  handlerQueue = [(HMDLocation *)selfCopy handlerQueue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __53__HMDLocation_locationManagerDidChangeAuthorization___block_invoke;
  v12[3] = &unk_279734550;
  v12[4] = selfCopy;
  v13 = authorizationStatus;
  dispatch_async(handlerQueue, v12);
}

void __53__HMDLocation_locationManagerDidChangeAuthorization___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) authStatus];
  [*(a1 + 32) setAuthStatus:*(a1 + 40)];
  if (([MEMORY[0x277CBFC10] hm_isLocationAllowedForAuthorizationStatus:*(a1 + 40)] & 1) == 0)
  {
    [*(a1 + 32) _notifySingleLocationDelegatesWithLocation:0];
  }

  [*(a1 + 32) _updateWithLocationAuthorizationStatus:*(a1 + 40)];
  if (!v2)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = *(a1 + 32);
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = HMFGetLogIdentifier();
      v7 = HMCLAuthorizationStatusAsString();
      [*(a1 + 32) locationAuthorized];
      v8 = HMLocationAuthorizationAsString();
      v9 = 138543874;
      v10 = v6;
      v11 = 2112;
      v12 = v7;
      v13 = 2112;
      v14 = v8;
      _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Initial location auth status for homed: %@, %@", &v9, 0x20u);
    }

    objc_autoreleasePoolPop(v3);
  }
}

- (void)locationManager:(id)manager didFailWithError:(id)error
{
  v18 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  errorCopy = error;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v15 = v11;
    v16 = 2112;
    v17 = errorCopy;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Received error for the location update: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  handlerQueue = [(HMDLocation *)selfCopy handlerQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__HMDLocation_locationManager_didFailWithError___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = selfCopy;
  dispatch_async(handlerQueue, block);
}

- (void)locationManager:(id)manager didUpdateLocations:(id)locations
{
  v21 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  locationsCopy = locations;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v18 = v11;
    v19 = 2112;
    v20 = locationsCopy;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Location manager updated locations: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  handlerQueue = [(HMDLocation *)selfCopy handlerQueue];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __50__HMDLocation_locationManager_didUpdateLocations___block_invoke;
  v14[3] = &unk_2797359B0;
  v15 = locationsCopy;
  v16 = selfCopy;
  v13 = locationsCopy;
  dispatch_async(handlerQueue, v14);
}

void __50__HMDLocation_locationManager_didUpdateLocations___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) lastObject];
  if (v2 && [HMDLocation isAccurateLocation:v2])
  {
    v3 = *(a1 + 40);
    v4 = v2;
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 40);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v9 = 138543618;
      v10 = v8;
      v11 = 2112;
      v12 = v2;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Ignoring inaccurate single location: %@", &v9, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v3 = *(a1 + 40);
    v4 = 0;
  }

  [v3 _notifySingleLocationDelegatesWithLocation:v4];
}

- (void)_handleDeterminedState:(int64_t)state forRegion:(id)region
{
  v28 = *MEMORY[0x277D85DE8];
  regionCopy = region;
  v7 = [MEMORY[0x277CBFC10] hm_regionStateFromCLRegionState:state];
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = HMRegionStateString();
    identifier = [regionCopy identifier];
    v14 = regionAsString(regionCopy);
    *buf = 138544130;
    v21 = v11;
    v22 = 2112;
    v23 = v12;
    v24 = 2112;
    v25 = identifier;
    v26 = 2112;
    v27 = v14;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Region state is %@ for region %@ %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v8);
  if (v7)
  {
    handlerQueue = [(HMDLocation *)selfCopy handlerQueue];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __48__HMDLocation__handleDeterminedState_forRegion___block_invoke;
    v16[3] = &unk_279731540;
    v16[4] = selfCopy;
    v17 = regionCopy;
    v18 = v7;
    stateCopy = state;
    dispatch_async(handlerQueue, v16);
  }
}

void __48__HMDLocation__handleDeterminedState_forRegion___block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) regionStates];
  v3 = [v2 objectForKey:*(a1 + 40)];

  if (v3)
  {
    v4 = [v3 unsignedIntegerValue];
    v5 = *(a1 + 48);
    if (v4 != v5)
    {
      if (v4)
      {
        v6 = objc_autoreleasePoolPush();
        v7 = *(a1 + 32);
        v8 = HMFGetOSLogHandle();
        v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
        if (v5 == 2)
        {
          if (v9)
          {
            v10 = HMFGetLogIdentifier();
            v11 = [*(a1 + 40) identifier];
            v12 = regionAsString(*(a1 + 40));
            v29 = 138543874;
            v30 = v10;
            v31 = 2112;
            v32 = v11;
            v33 = 2112;
            v34 = v12;
            _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Received exit for region %@ %@", &v29, 0x20u);
          }

          objc_autoreleasePoolPop(v6);
          [*(a1 + 32) _updateExitForRegion:*(a1 + 40)];
        }

        else
        {
          if (v9)
          {
            v19 = HMFGetLogIdentifier();
            v20 = [*(a1 + 40) identifier];
            v21 = regionAsString(*(a1 + 40));
            v29 = 138543874;
            v30 = v19;
            v31 = 2112;
            v32 = v20;
            v33 = 2112;
            v34 = v21;
            _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Received entry for region %@ %@", &v29, 0x20u);
          }

          objc_autoreleasePoolPop(v6);
          [*(a1 + 32) _updateEntryForRegion:*(a1 + 40)];
        }
      }

      goto LABEL_15;
    }
  }

  else if (*(a1 + 48))
  {
LABEL_15:
    v22 = objc_autoreleasePoolPush();
    v23 = *(a1 + 32);
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = HMFGetLogIdentifier();
      v26 = HMRegionStateString();
      v27 = HMRegionStateString();
      v28 = [*(a1 + 40) identifier];
      v29 = 138544130;
      v30 = v25;
      v31 = 2114;
      v32 = v26;
      v33 = 2114;
      v34 = v27;
      v35 = 2114;
      v36 = v28;
      _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_INFO, "%{public}@Updating region state from %{public}@ to %{public}@ %{public}@", &v29, 0x2Au);
    }

    objc_autoreleasePoolPop(v22);
    [*(a1 + 32) _updateRegionState:*(a1 + 56) forRegion:*(a1 + 40)];
    goto LABEL_18;
  }

  v13 = objc_autoreleasePoolPush();
  v14 = *(a1 + 32);
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    v17 = HMRegionStateString();
    v18 = [*(a1 + 40) identifier];
    v29 = 138543874;
    v30 = v16;
    v31 = 2112;
    v32 = v17;
    v33 = 2112;
    v34 = v18;
    _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Ignoring because region state did not change %@ %@", &v29, 0x20u);
  }

  objc_autoreleasePoolPop(v13);
LABEL_18:
}

- (void)beingConfigured:(BOOL)configured completionHandler:(id)handler
{
  handlerCopy = handler;
  handlerQueue = [(HMDLocation *)self handlerQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__HMDLocation_beingConfigured_completionHandler___block_invoke;
  block[3] = &unk_279733DB0;
  configuredCopy = configured;
  block[4] = self;
  v10 = handlerCopy;
  v8 = handlerCopy;
  dispatch_async(handlerQueue, block);
}

void __49__HMDLocation_beingConfigured_completionHandler___block_invoke(uint64_t a1)
{
  v104 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v82 = a1;
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = HMFBooleanToString();
    *buf = 138543618;
    v97 = v5;
    v98 = 2112;
    v99 = v6;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Being configured is changing to %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  if (*(a1 + 48) == [*(a1 + 32) beingConfigured])
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      [*(a1 + 32) beingConfigured];
      v11 = HMFBooleanToString();
      *buf = 138543618;
      v97 = v10;
      v98 = 2112;
      v99 = v11;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Being configured is not changing from %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    goto LABEL_8;
  }

  [*(a1 + 32) setBeingConfigured:?];
  if (*(a1 + 48) == 1)
  {
LABEL_8:
    v12 = *(a1 + 40);
    if (v12)
    {
      (*(v12 + 16))();
    }

    return;
  }

  v13 = objc_autoreleasePoolPush();
  v14 = *(a1 + 32);
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    *buf = 138543362;
    v97 = v16;
    _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Being configured is changing to NO, submitting the pending monitor requests", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v13);
  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  obj = [*(a1 + 32) pendingRegionMonitoringRequests];
  v17 = [obj countByEnumeratingWithState:&v91 objects:v103 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v92;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v92 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v91 + 1) + 8 * i);
        v22 = [*(v82 + 32) pendingRegionMonitoringRequests];
        v23 = [v22 objectForKey:v21];

        if (v23)
        {
          v24 = [*(v82 + 32) regionStateDelegatesByRegionIdentifier];
          v25 = [v21 identifier];
          [v24 setObject:v23 forKey:v25];

          v26 = objc_autoreleasePoolPush();
          v27 = *(v82 + 32);
          v28 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
          {
            v29 = HMFGetLogIdentifier();
            regionAsString(v21);
            v30 = v18;
            v32 = v31 = v19;
            *buf = 138543618;
            v97 = v29;
            v98 = 2112;
            v99 = v32;
            _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_INFO, "%{public}@After configured, submitting start monitor request for region: %@", buf, 0x16u);

            v19 = v31;
            v18 = v30;
          }

          objc_autoreleasePoolPop(v26);
          v33 = [*(v82 + 32) locationManager];
          [v33 startMonitoringForRegion:v21];
        }
      }

      v18 = [obj countByEnumeratingWithState:&v91 objects:v103 count:16];
    }

    while (v18);
  }

  v34 = [*(v82 + 32) pendingRegionMonitoringRequests];
  [v34 removeAllObjects];

  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  obja = [*(v82 + 32) pendingRegionCallbacks];
  v35 = [obja countByEnumeratingWithState:&v87 objects:v102 count:16];
  if (v35)
  {
    v37 = v35;
    v38 = *v88;
    *&v36 = 138543874;
    v78 = v36;
    do
    {
      for (j = 0; j != v37; ++j)
      {
        if (*v88 != v38)
        {
          objc_enumerationMutation(obja);
        }

        v40 = *(*(&v87 + 1) + 8 * j);
        v41 = [*(v82 + 32) pendingRegionCallbacks];
        v42 = [v41 objectForKey:v40];

        v43 = [v42 unsignedIntegerValue];
        if (v43)
        {
          if (v43 == 1)
          {
            v48 = objc_autoreleasePoolPush();
            v49 = *(v82 + 32);
            v50 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
            {
              v51 = HMFGetLogIdentifier();
              *buf = 138543618;
              v97 = v51;
              v98 = 2112;
              v99 = v40;
              _os_log_impl(&dword_2531F8000, v50, OS_LOG_TYPE_INFO, "%{public}@Calling pending entry callback for region %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v48);
            [*(v82 + 32) _updateEntryForRegion:v40];
          }

          else if (v43 == 2)
          {
            v44 = objc_autoreleasePoolPush();
            v45 = *(v82 + 32);
            v46 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
            {
              v47 = HMFGetLogIdentifier();
              *buf = 138543618;
              v97 = v47;
              v98 = 2112;
              v99 = v40;
              _os_log_impl(&dword_2531F8000, v46, OS_LOG_TYPE_INFO, "%{public}@Calling pending exit callback for region %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v44);
            [*(v82 + 32) _updateExitForRegion:v40];
          }
        }

        else
        {
          v52 = objc_autoreleasePoolPush();
          v53 = *(v82 + 32);
          v54 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
          {
            v55 = HMFGetLogIdentifier();
            *buf = v78;
            v97 = v55;
            v98 = 2112;
            v99 = v42;
            v100 = 2112;
            v101 = v40;
            _os_log_impl(&dword_2531F8000, v54, OS_LOG_TYPE_INFO, "%{public}@Unknown region state %@ for region %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v52);
        }
      }

      v37 = [obja countByEnumeratingWithState:&v87 objects:v102 count:16];
    }

    while (v37);
  }

  v56 = [*(v82 + 32) pendingRegionCallbacks];
  [v56 removeAllObjects];

  v57 = [*(v82 + 32) locationManager];
  v58 = [v57 monitoredRegions];

  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v59 = v58;
  v60 = [v59 countByEnumeratingWithState:&v83 objects:v95 count:16];
  if (v60)
  {
    v61 = v60;
    v62 = *v84;
    do
    {
      v63 = 0;
      objb = v61;
      do
      {
        if (*v84 != v62)
        {
          objc_enumerationMutation(v59);
        }

        v64 = *(*(&v83 + 1) + 8 * v63);
        v65 = [*(v82 + 32) regionStateDelegatesByRegionIdentifier];
        v66 = [v64 identifier];
        v67 = [v65 objectForKey:v66];

        if (!v67)
        {
          v68 = objc_autoreleasePoolPush();
          v69 = *(v82 + 32);
          v70 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
          {
            v71 = HMFGetLogIdentifier();
            regionAsString(v64);
            v72 = v62;
            v74 = v73 = v59;
            *buf = 138543618;
            v97 = v71;
            v98 = 2112;
            v99 = v74;
            _os_log_impl(&dword_2531F8000, v70, OS_LOG_TYPE_ERROR, "%{public}@Region %@ was not found in the region state monitor map, stopping monitoring", buf, 0x16u);

            v59 = v73;
            v62 = v72;
          }

          objc_autoreleasePoolPop(v68);
          v75 = [*(v82 + 32) regionStates];
          [v75 removeObjectForKey:v64];

          v76 = [*(v82 + 32) locationManager];
          [v76 stopMonitoringForRegion:v64];

          v61 = objb;
        }

        ++v63;
      }

      while (v61 != v63);
      v61 = [v59 countByEnumeratingWithState:&v83 objects:v95 count:16];
    }

    while (v61);
  }

  v77 = *(v82 + 40);
  if (v77)
  {
    (*(v77 + 16))();
  }
}

- (void)_updateExitForRegion:(id)region
{
  v20 = *MEMORY[0x277D85DE8];
  regionCopy = region;
  handlerQueue = [(HMDLocation *)self handlerQueue];
  dispatch_assert_queue_V2(handlerQueue);

  if ([(HMDLocation *)self beingConfigured])
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v10 = regionAsString(regionCopy);
      v16 = 138543618;
      v17 = v9;
      v18 = 2112;
      v19 = v10;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@The system is being configured, pending the exit for region %@", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    pendingRegionCallbacks = [(HMDLocation *)selfCopy pendingRegionCallbacks];
    [pendingRegionCallbacks setObject:&unk_286628ED0 forKey:regionCopy];
  }

  else
  {
    pendingRegionCallbacks = [(HMDLocation *)self _delegateforRegion:regionCopy];
    if (pendingRegionCallbacks)
    {
      if ([regionCopy notifyOnExit])
      {
        pendingRegionCallbacks = pendingRegionCallbacks;
        if (objc_opt_respondsToSelector())
        {
          [pendingRegionCallbacks didExitRegion:regionCopy];
        }
      }

      else
      {
        v12 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v14 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v15 = HMFGetLogIdentifier();
          v16 = 138543362;
          v17 = v15;
          _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Not calling the didExitRegion delegate as this event was not subscribed for", &v16, 0xCu);
        }

        objc_autoreleasePoolPop(v12);
      }
    }
  }
}

- (void)_updateEntryForRegion:(id)region
{
  v20 = *MEMORY[0x277D85DE8];
  regionCopy = region;
  handlerQueue = [(HMDLocation *)self handlerQueue];
  dispatch_assert_queue_V2(handlerQueue);

  if ([(HMDLocation *)self beingConfigured])
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v10 = regionAsString(regionCopy);
      v16 = 138543618;
      v17 = v9;
      v18 = 2112;
      v19 = v10;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@The system is being configured, pending the entry for region %@", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    pendingRegionCallbacks = [(HMDLocation *)selfCopy pendingRegionCallbacks];
    [pendingRegionCallbacks setObject:&unk_286628EB8 forKey:regionCopy];
  }

  else
  {
    pendingRegionCallbacks = [(HMDLocation *)self _delegateforRegion:regionCopy];
    if (pendingRegionCallbacks)
    {
      if ([regionCopy notifyOnEntry])
      {
        pendingRegionCallbacks = pendingRegionCallbacks;
        if (objc_opt_respondsToSelector())
        {
          [pendingRegionCallbacks didEnterRegion:regionCopy];
        }
      }

      else
      {
        v12 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v14 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v15 = HMFGetLogIdentifier();
          v16 = 138543362;
          v17 = v15;
          _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Not calling the didEnterRegion delegate as this event was not subscribed for", &v16, 0xCu);
        }

        objc_autoreleasePoolPop(v12);
      }
    }
  }
}

- (void)_updateRegionState:(int64_t)state forRegion:(id)region
{
  v28 = *MEMORY[0x277D85DE8];
  regionCopy = region;
  handlerQueue = [(HMDLocation *)self handlerQueue];
  dispatch_assert_queue_V2(handlerQueue);

  if (![(HMDLocation *)self beingConfigured])
  {
    v13 = [MEMORY[0x277CBFC10] hm_regionStateFromCLRegionState:state];
    regionStates = [(HMDLocation *)self regionStates];
    v15 = [MEMORY[0x277CCABB0] numberWithInteger:v13];
    [regionStates setObject:v15 forKey:regionCopy];

    v16 = [(HMDLocation *)self _delegateforRegion:regionCopy];
    if (!v16)
    {
LABEL_16:

      goto LABEL_17;
    }

    if (state == 2)
    {
      if ([regionCopy notifyOnExit])
      {
LABEL_9:
        v17 = v16;
        if (objc_opt_respondsToSelector())
        {
          [v17 didDetermineState:state forRegion:regionCopy];
        }

        goto LABEL_16;
      }
    }

    else if (state == 1 && ([regionCopy notifyOnEntry] & 1) != 0)
    {
      goto LABEL_9;
    }

    v18 = objc_autoreleasePoolPush();
    selfCopy = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      v22 = 138543362;
      v23 = v21;
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_INFO, "%{public}@Not calling the location delegate as this event was not subscribed for", &v22, 0xCu);
    }

    objc_autoreleasePoolPop(v18);
    goto LABEL_16;
  }

  v8 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = regionAsString(regionCopy);
    v22 = 138543874;
    v23 = v11;
    v24 = 2048;
    stateCopy = state;
    v26 = 2112;
    v27 = v12;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@The system is being configured, not updating region state %tu for region %@", &v22, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
LABEL_17:
}

- (id)_delegateforRegion:(id)region
{
  v21 = *MEMORY[0x277D85DE8];
  regionCopy = region;
  handlerQueue = [(HMDLocation *)self handlerQueue];
  dispatch_assert_queue_V2(handlerQueue);

  regionStateDelegatesByRegionIdentifier = [(HMDLocation *)self regionStateDelegatesByRegionIdentifier];
  identifier = [regionCopy identifier];
  v8 = [regionStateDelegatesByRegionIdentifier objectForKey:identifier];

  if (!v8)
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v13 = regionAsString(regionCopy);
      v17 = 138543618;
      v18 = v12;
      v19 = 2112;
      v20 = v13;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Update received for a region %@ that was not found in the region state monitor map, stopping monitoring", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    regionStates = [(HMDLocation *)selfCopy regionStates];
    [regionStates removeObjectForKey:regionCopy];

    locationManager = [(HMDLocation *)selfCopy locationManager];
    [locationManager stopMonitoringForRegion:regionCopy];
  }

  return v8;
}

- (void)_updateWithLocationAuthorizationStatus:(int)status
{
  v3 = *&status;
  v20 = *MEMORY[0x277D85DE8];
  handlerQueue = [(HMDLocation *)self handlerQueue];
  dispatch_assert_queue_V2(handlerQueue);

  -[HMDLocation setLocationAuthorized:](self, "setLocationAuthorized:", [MEMORY[0x277CBFC10] hm_locationAuthorizationFromCLAuthorizationStatus:v3]);
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    [(HMDLocation *)selfCopy locationAuthorized];
    v10 = HMLocationAuthorizationAsString();
    *buf = 138543618;
    v17 = v9;
    v18 = 2112;
    v19 = v10;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Location Authorization Status Updated : %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v12 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDLocation locationAuthorized](selfCopy, "locationAuthorized", @"HMLocationAuthorizationKey"}];
  v15 = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  [defaultCenter postNotificationName:@"HMLocationAuthorizationChangedNotification" object:selfCopy userInfo:v13];
}

- (void)_notifySingleLocationDelegate:(id)delegate withLocation:(id)location
{
  delegateCopy = delegate;
  locationCopy = location;
  handlerQueue = [(HMDLocation *)self handlerQueue];
  dispatch_assert_queue_V2(handlerQueue);

  v9 = delegateCopy;
  if (objc_opt_respondsToSelector())
  {
    [v9 didDetermineLocation:locationCopy];
  }
}

- (void)_notifySingleLocationDelegatesWithLocation:(id)location
{
  v17 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  handlerQueue = [(HMDLocation *)self handlerQueue];
  dispatch_assert_queue_V2(handlerQueue);

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  singleLocationDelegates = [(HMDLocation *)self singleLocationDelegates];
  v7 = [singleLocationDelegates countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(singleLocationDelegates);
        }

        [(HMDLocation *)self _notifySingleLocationDelegate:*(*(&v12 + 1) + 8 * v10++) withLocation:locationCopy];
      }

      while (v8 != v10);
      v8 = [singleLocationDelegates countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  singleLocationDelegates2 = [(HMDLocation *)self singleLocationDelegates];
  [singleLocationDelegates2 removeAllObjects];
}

- (void)deregisterForRegionUpdate:(id)update completionHandler:(id)handler
{
  updateCopy = update;
  handlerCopy = handler;
  handlerQueue = [(HMDLocation *)self handlerQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__HMDLocation_deregisterForRegionUpdate_completionHandler___block_invoke;
  block[3] = &unk_2797355D0;
  v12 = updateCopy;
  v13 = handlerCopy;
  block[4] = self;
  v9 = updateCopy;
  v10 = handlerCopy;
  dispatch_async(handlerQueue, block);
}

void __59__HMDLocation_deregisterForRegionUpdate_completionHandler___block_invoke(uint64_t a1)
{
  v48 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 48))
  {
    v31 = objc_autoreleasePoolPush();
    v32 = *(a1 + 32);
    v33 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = HMFGetLogIdentifier();
      *buf = 138543362;
      v44 = v34;
      _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_ERROR, "%{public}@Completion handler is invalid", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v31);
    v35 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"You must provide a completion handler" userInfo:0];
    objc_exception_throw(v35);
  }

  v2 = *(a1 + 40);
  if (!v2)
  {
    v24 = objc_autoreleasePoolPush();
    v25 = *(a1 + 32);
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543362;
      v44 = v27;
      v28 = "%{public}@Monitored regions are nil";
LABEL_23:
      _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_ERROR, v28, buf, 0xCu);
    }

LABEL_24:

    objc_autoreleasePoolPop(v24);
    v29 = *(a1 + 48);
    v30 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:3 userInfo:0];
    (*(v29 + 16))(v29, v30);

    return;
  }

  if (![v2 count])
  {
    v24 = objc_autoreleasePoolPush();
    v25 = *(a1 + 32);
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543362;
      v44 = v27;
      v28 = "%{public}@Monitored regions are empty";
      goto LABEL_23;
    }

    goto LABEL_24;
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = *(a1 + 40);
  v3 = [obj countByEnumeratingWithState:&v39 objects:v47 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v40;
    *&v4 = 138543618;
    v36 = v4;
    v37 = *v40;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v40 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v39 + 1) + 8 * i);
        v9 = [*(a1 + 32) regionStates];
        [v9 removeObjectForKey:v8];

        v10 = [*(a1 + 32) regionStateDelegatesByRegionIdentifier];
        v11 = [v8 identifier];
        v12 = [v10 objectForKey:v11];

        v13 = objc_autoreleasePoolPush();
        v14 = *(a1 + 32);
        v15 = HMFGetOSLogHandle();
        v16 = v15;
        if (v12)
        {
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            v17 = HMFGetLogIdentifier();
            v18 = regionAsString(v8);
            *buf = v36;
            v44 = v17;
            v45 = 2112;
            v46 = v18;
            _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@Submitting stop monitor request for region: %@", buf, 0x16u);

            v6 = v37;
          }

          objc_autoreleasePoolPop(v13);
          v19 = [*(a1 + 32) locationManager];
          [v19 stopMonitoringForRegion:v8];

          v20 = [*(a1 + 32) regionStateDelegatesByRegionIdentifier];
          v21 = [v8 identifier];
          [v20 removeObjectForKey:v21];
        }

        else
        {
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            v22 = HMFGetLogIdentifier();
            v23 = regionAsString(v8);
            *buf = v36;
            v44 = v22;
            v45 = 2112;
            v46 = v23;
            _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@Region %@ was not found in the region state monitor map, cannot deregister", buf, 0x16u);

            v6 = v37;
          }

          objc_autoreleasePoolPop(v13);
        }
      }

      v5 = [obj countByEnumeratingWithState:&v39 objects:v47 count:16];
    }

    while (v5);
  }

  (*(*(a1 + 48) + 16))();
}

- (void)registerForRegionUpdate:(id)update withDelegate:(id)delegate completionHandler:(id)handler
{
  updateCopy = update;
  delegateCopy = delegate;
  handlerCopy = handler;
  handlerQueue = [(HMDLocation *)self handlerQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __70__HMDLocation_registerForRegionUpdate_withDelegate_completionHandler___block_invoke;
  v15[3] = &unk_279734578;
  v15[4] = self;
  v16 = updateCopy;
  v17 = delegateCopy;
  v18 = handlerCopy;
  v12 = delegateCopy;
  v13 = updateCopy;
  v14 = handlerCopy;
  dispatch_async(handlerQueue, v15);
}

void __70__HMDLocation_registerForRegionUpdate_withDelegate_completionHandler___block_invoke(uint64_t a1)
{
  v69 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 56))
  {
    v48 = objc_autoreleasePoolPush();
    v49 = *(a1 + 32);
    v50 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      v51 = HMFGetLogIdentifier();
      *buf = 138543362;
      v65 = v51;
      _os_log_impl(&dword_2531F8000, v50, OS_LOG_TYPE_ERROR, "%{public}@Completion handler is invalid", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v48);
    v52 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"You must provide a completion handler" userInfo:0];
    objc_exception_throw(v52);
  }

  v2 = *(a1 + 40);
  if (!v2)
  {
    v16 = objc_autoreleasePoolPush();
    v17 = *(a1 + 32);
    v18 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    v19 = HMFGetLogIdentifier();
    *buf = 138543362;
    v65 = v19;
    v20 = "%{public}@Monitored regions are nil";
LABEL_24:
    _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, v20, buf, 0xCu);

    goto LABEL_25;
  }

  if (![v2 count])
  {
    v16 = objc_autoreleasePoolPush();
    v17 = *(a1 + 32);
    v18 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    v19 = HMFGetLogIdentifier();
    *buf = 138543362;
    v65 = v19;
    v20 = "%{public}@Monitored regions are empty";
    goto LABEL_24;
  }

  if (!*(a1 + 48))
  {
    v16 = objc_autoreleasePoolPush();
    v17 = *(a1 + 32);
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543362;
      v65 = v19;
      v20 = "%{public}@Delegate is nil";
      goto LABEL_24;
    }

LABEL_25:

    objc_autoreleasePoolPop(v16);
    v21 = *(a1 + 56);
    v22 = MEMORY[0x277CCA9B8];
    v23 = *MEMORY[0x277CCFD28];
    v24 = 3;
LABEL_26:
    v25 = [v22 errorWithDomain:v23 code:v24 userInfo:0];
    (*(v21 + 16))(v21, v25);

    return;
  }

  v3 = [*(a1 + 32) locationManager];
  v4 = [objc_opt_class() locationServicesEnabled];

  if ((v4 & 1) == 0)
  {
    v26 = objc_autoreleasePoolPush();
    v27 = *(a1 + 32);
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      v29 = HMFGetLogIdentifier();
      *buf = 138543362;
      v65 = v29;
      v30 = "%{public}@Location services are not enabled, cannot submit region monitoring";
      v31 = v28;
      v32 = OS_LOG_TYPE_INFO;
LABEL_31:
      _os_log_impl(&dword_2531F8000, v31, v32, v30, buf, 0xCu);
    }

LABEL_32:

    objc_autoreleasePoolPop(v26);
    v21 = *(a1 + 56);
    v22 = MEMORY[0x277CCA9B8];
    v23 = *MEMORY[0x277CCFD28];
    v24 = 84;
    goto LABEL_26;
  }

  if (([MEMORY[0x277CBFC10] hm_isLocationAllowedForAuthorizationStatus:{objc_msgSend(*(a1 + 32), "authStatus")}] & 1) == 0)
  {
    v26 = objc_autoreleasePoolPush();
    v27 = *(a1 + 32);
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = HMFGetLogIdentifier();
      *buf = 138543362;
      v65 = v29;
      v30 = "%{public}@Location is not authorized for homed, cannot submit region monitoring";
      v31 = v28;
      v32 = OS_LOG_TYPE_ERROR;
      goto LABEL_31;
    }

    goto LABEL_32;
  }

  if ([*(a1 + 32) beingConfigured])
  {
    v61 = 0uLL;
    v62 = 0uLL;
    v59 = 0uLL;
    v60 = 0uLL;
    obj = *(a1 + 40);
    v5 = [obj countByEnumeratingWithState:&v59 objects:v68 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v60;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v60 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v59 + 1) + 8 * i);
          v10 = objc_autoreleasePoolPush();
          v11 = *(a1 + 32);
          v12 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            v13 = HMFGetLogIdentifier();
            v14 = regionAsString(v9);
            *buf = 138543618;
            v65 = v13;
            v66 = 2112;
            v67 = v14;
            _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@The system is being configured, holding onto region %@ monitoring requests until complete", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v10);
          v15 = [*(a1 + 32) pendingRegionMonitoringRequests];
          [v15 setObject:*(a1 + 48) forKey:v9];
        }

        v6 = [obj countByEnumeratingWithState:&v59 objects:v68 count:16];
      }

      while (v6);
    }
  }

  else
  {
    v57 = 0uLL;
    v58 = 0uLL;
    v55 = 0uLL;
    v56 = 0uLL;
    obj = *(a1 + 40);
    v33 = [obj countByEnumeratingWithState:&v55 objects:v63 count:16];
    if (v33)
    {
      v35 = v33;
      v36 = *v56;
      *&v34 = 138543618;
      v53 = v34;
      do
      {
        for (j = 0; j != v35; ++j)
        {
          if (*v56 != v36)
          {
            objc_enumerationMutation(obj);
          }

          v38 = *(*(&v55 + 1) + 8 * j);
          v39 = [*(a1 + 32) regionStateDelegatesByRegionIdentifier];
          v40 = *(a1 + 48);
          v41 = [v38 identifier];
          [v39 setObject:v40 forKey:v41];

          v42 = objc_autoreleasePoolPush();
          v43 = *(a1 + 32);
          v44 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
          {
            v45 = HMFGetLogIdentifier();
            v46 = regionAsString(v38);
            *buf = v53;
            v65 = v45;
            v66 = 2112;
            v67 = v46;
            _os_log_impl(&dword_2531F8000, v44, OS_LOG_TYPE_INFO, "%{public}@Submitting start monitor request for region: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v42);
          v47 = [*(a1 + 32) locationManager];
          [v47 startMonitoringForRegion:v38];
        }

        v35 = [obj countByEnumeratingWithState:&v55 objects:v63 count:16];
      }

      while (v35);
    }
  }

  (*(*(a1 + 56) + 16))();
}

- (id)getCurrentLocation
{
  locationManager = [(HMDLocation *)self locationManager];
  location = [locationManager location];

  return location;
}

- (void)_extractSingleLocationForDelegate:(id)delegate
{
  v32 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  handlerQueue = [(HMDLocation *)self handlerQueue];
  dispatch_assert_queue_V2(handlerQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v28 = 138543618;
    v29 = v9;
    v30 = 2112;
    v31 = delegateCopy;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Extracting single location for delegate: %@", &v28, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  if ([(HMDLocation *)selfCopy _canLocationBeExtracted])
  {
    singleLocationDelegates = [(HMDLocation *)selfCopy singleLocationDelegates];
    v11 = [singleLocationDelegates count];

    if (!v11)
    {
      v12 = objc_autoreleasePoolPush();
      v13 = selfCopy;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = HMFGetLogIdentifier();
        v28 = 138543362;
        v29 = v15;
        _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Requesting single location", &v28, 0xCu);
      }

      objc_autoreleasePoolPop(v12);
      locationManager = [(HMDLocation *)v13 locationManager];
      [locationManager requestLocation];
    }

    singleLocationDelegates2 = [(HMDLocation *)selfCopy singleLocationDelegates];
    [singleLocationDelegates2 addObject:delegateCopy];

    v18 = objc_autoreleasePoolPush();
    v19 = selfCopy;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      singleLocationDelegates3 = [(HMDLocation *)v19 singleLocationDelegates];
      v23 = [singleLocationDelegates3 count];
      v28 = 138543618;
      v29 = v21;
      v30 = 2048;
      v31 = v23;
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_INFO, "%{public}@Current single location delegate count is now %ld", &v28, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
  }

  else
  {
    v24 = objc_autoreleasePoolPush();
    v25 = selfCopy;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = HMFGetLogIdentifier();
      v28 = 138543362;
      v29 = v27;
      _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_INFO, "%{public}@Passing back nil location because locations can't be extracted", &v28, 0xCu);
    }

    objc_autoreleasePoolPop(v24);
    [(HMDLocation *)v25 _notifySingleLocationDelegate:delegateCopy withLocation:0];
  }
}

- (BOOL)_canLocationBeExtracted
{
  v16 = *MEMORY[0x277D85DE8];
  handlerQueue = [(HMDLocation *)self handlerQueue];
  dispatch_assert_queue_V2(handlerQueue);

  locationManager = [(HMDLocation *)self locationManager];
  locationServicesEnabled = [objc_opt_class() locationServicesEnabled];

  if ((locationServicesEnabled & 1) == 0)
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      goto LABEL_12;
    }

    v10 = HMFGetLogIdentifier();
    v14 = 138543362;
    v15 = v10;
    v11 = "%{public}@Can't extract location because Location Services are not enabled";
LABEL_11:
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, v11, &v14, 0xCu);

    goto LABEL_12;
  }

  if (![(HMDLocation *)self authStatus])
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v9 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      goto LABEL_12;
    }

    v10 = HMFGetLogIdentifier();
    v14 = 138543362;
    v15 = v10;
    v11 = "%{public}@Waiting for initial location auth.";
    goto LABEL_11;
  }

  if ([MEMORY[0x277CBFC10] hm_isLocationAllowedForAuthorizationStatus:{-[HMDLocation authStatus](self, "authStatus")}])
  {
    return 1;
  }

  v7 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v14 = 138543362;
    v15 = v10;
    v11 = "%{public}@Can't extract location because Location Services are not enabled for homed";
    goto LABEL_11;
  }

LABEL_12:

  objc_autoreleasePoolPop(v7);
  return 0;
}

- (void)startExtractingSingleLocationForDelegate:(id)delegate
{
  delegateCopy = delegate;
  handlerQueue = [(HMDLocation *)self handlerQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__HMDLocation_startExtractingSingleLocationForDelegate___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = delegateCopy;
  v6 = delegateCopy;
  dispatch_async(handlerQueue, v7);
}

- (void)stopUpdatingLocation
{
  handlerQueue = [(HMDLocation *)self handlerQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__HMDLocation_stopUpdatingLocation__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(handlerQueue, block);
}

void __35__HMDLocation_stopUpdatingLocation__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(*(a1 + 32), "totalLocationObservingClients")}];
    v14 = 138543618;
    v15 = v5;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Processing stop updating location request: totalClients: %@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = *(a1 + 32);
  v8 = [v7 totalLocationObservingClients] - 1;
  [v7 setTotalLocationObservingClients:v8];
  [*(a1 + 32) setTotalLocationObservingClients:v8 & ~(v8 >> 63)];
  if (![*(a1 + 32) totalLocationObservingClients])
  {
    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 32);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v12;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Requesting CLLocationManager to stop updating location", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    v13 = [*(a1 + 32) locationManager];
    [v13 stopUpdatingLocation];
  }
}

- (void)startUpdatingLocation
{
  handlerQueue = [(HMDLocation *)self handlerQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__HMDLocation_startUpdatingLocation__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(handlerQueue, block);
}

uint64_t __36__HMDLocation_startUpdatingLocation__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(*(a1 + 32), "totalLocationObservingClients")}];
    v13 = 138543618;
    v14 = v5;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Processing start updating location request: totalClients: %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  if (![*(a1 + 32) totalLocationObservingClients])
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v10;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Requesting CLLocationManager to start updating location", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    v11 = [*(a1 + 32) locationManager];
    [v11 startUpdatingLocation];
  }

  return [*(a1 + 32) setTotalLocationObservingClients:{objc_msgSend(*(a1 + 32), "totalLocationObservingClients") + 1}];
}

- (BOOL)isCurrentLocationSimulated
{
  getCurrentLocation = [(HMDLocation *)self getCurrentLocation];
  isSimulated = [getCurrentLocation isSimulated];

  return isSimulated;
}

- (void)dealloc
{
  locationManager = [(HMDLocation *)self locationManager];
  [locationManager stopUpdatingLocation];

  v4.receiver = self;
  v4.super_class = HMDLocation;
  [(HMDLocation *)&v4 dealloc];
}

- (HMDLocation)initWithQueue:(id)queue dataSource:(id)source
{
  queueCopy = queue;
  sourceCopy = source;
  dispatch_assert_queue_V2(queueCopy);
  v27.receiver = self;
  v27.super_class = HMDLocation;
  v9 = [(HMDLocation *)&v27 init];
  v10 = v9;
  if (v9)
  {
    v9->_beingConfigured = 1;
    objc_storeStrong(&v9->_handlerQueue, queue);
    bundleForLocationManager = [objc_opt_class() bundleForLocationManager];
    v12 = [sourceCopy makeLocationManagerWithEffectiveBundle:bundleForLocationManager delegate:v10 onQueue:queueCopy];
    locationManager = v10->_locationManager;
    v10->_locationManager = v12;

    [(HMDCLLocationManager *)v10->_locationManager setDesiredAccuracy:*MEMORY[0x277CE4210]];
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    singleLocationDelegates = v10->_singleLocationDelegates;
    v10->_singleLocationDelegates = weakObjectsHashTable;

    strongToWeakObjectsMapTable = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
    regionStateDelegatesByRegionIdentifier = v10->_regionStateDelegatesByRegionIdentifier;
    v10->_regionStateDelegatesByRegionIdentifier = strongToWeakObjectsMapTable;

    strongToWeakObjectsMapTable2 = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
    pendingRegionMonitoringRequests = v10->_pendingRegionMonitoringRequests;
    v10->_pendingRegionMonitoringRequests = strongToWeakObjectsMapTable2;

    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    pendingRegionCallbacks = v10->_pendingRegionCallbacks;
    v10->_pendingRegionCallbacks = strongToStrongObjectsMapTable;

    strongToStrongObjectsMapTable2 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    regionStates = v10->_regionStates;
    v10->_regionStates = strongToStrongObjectsMapTable2;

    v24 = objc_alloc_init(MEMORY[0x277CF89F8]);
    [(HMDLocation *)v10 setCarPlaySessionStatus:v24];

    carPlaySessionStatus = [(HMDLocation *)v10 carPlaySessionStatus];
    [carPlaySessionStatus addSessionObserver:v10];
  }

  return v10;
}

+ (void)timeZoneISOCountryCodeForCLLocationAsync:(id)async withCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  if (v4)
  {
    v8 = v4;
    localTimeZone = [MEMORY[0x277CBEBB0] localTimeZone];
    autoupdatingCurrentLocale = [MEMORY[0x277CBEAF8] autoupdatingCurrentLocale];
    countryCode = [autoupdatingCurrentLocale countryCode];
    v8[2](v8, localTimeZone, countryCode);

    v4 = v8;
  }
}

+ (BOOL)isAccurateLocation:(id)location
{
  locationCopy = location;
  [locationCopy horizontalAccuracy];
  if (v4 >= 0.0)
  {
    [locationCopy horizontalAccuracy];
    v5 = v6 <= 500.0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)nextSunsetTimeForLocation:(id)location date:(id)date
{
  v10[3] = *MEMORY[0x277D85DE8];
  date = [HMDLocation _getAlmanacWithLocation:location, date];
  previousSunset = [date previousSunset];
  sunset = [date sunset];
  v10[1] = sunset;
  nextSunset = [date nextSunset];
  v10[2] = nextSunset;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:3];

  return v8;
}

+ (id)sunsetTimeForLocation:(id)location
{
  v10[3] = *MEMORY[0x277D85DE8];
  v3 = [HMDLocation _getAlmanacWithLocation:location];
  previousSunrise = [v3 previousSunrise];
  sunrise = [v3 sunrise];
  v10[1] = sunrise;
  nextSunrise = [v3 nextSunrise];
  v10[2] = nextSunrise;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:3];
  v8 = [HMDLocation findEvent:v7 withGeo:v3];

  return v8;
}

+ (id)nextSunriseTimeForLocation:(id)location date:(id)date
{
  v10[3] = *MEMORY[0x277D85DE8];
  date = [HMDLocation _getAlmanacWithLocation:location, date];
  previousSunrise = [date previousSunrise];
  sunrise = [date sunrise];
  v10[1] = sunrise;
  nextSunrise = [date nextSunrise];
  v10[2] = nextSunrise;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:3];

  return v8;
}

+ (id)sunriseTimeForLocation:(id)location
{
  v10[3] = *MEMORY[0x277D85DE8];
  v3 = [HMDLocation _getAlmanacWithLocation:location];
  previousSunset = [v3 previousSunset];
  sunset = [v3 sunset];
  v10[1] = sunset;
  nextSunset = [v3 nextSunset];
  v10[2] = nextSunset;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:3];
  v8 = [HMDLocation findEvent:v7 withGeo:v3];

  return v8;
}

+ (id)findEvent:(id)event withGeo:(id)geo
{
  v26[7] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  geoCopy = geo;
  v6 = [MEMORY[0x277CBEAA8] now];
  hmf_dateComponents = [v6 hmf_dateComponents];

  [hmf_dateComponents setHour:12];
  [hmf_dateComponents setMinute:0];
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v9 = [currentCalendar dateFromComponents:hmf_dateComponents];

  previousSunrise = [geoCopy previousSunrise];
  v26[0] = previousSunrise;
  previousSunset = [geoCopy previousSunset];
  v26[1] = previousSunset;
  sunrise = [geoCopy sunrise];
  v26[2] = sunrise;
  sunset = [geoCopy sunset];
  v26[3] = sunset;
  nextSunrise = [geoCopy nextSunrise];
  v26[4] = nextSunrise;
  nextSunset = [geoCopy nextSunset];
  v26[5] = nextSunset;
  v26[6] = v9;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:7];

  v17 = [v16 sortedArrayUsingComparator:&__block_literal_global_191];
  v18 = 0;
  if ([v17 count])
  {
    v19 = eventCopy;
    while (1)
    {
      v20 = [v17 objectAtIndex:v18];

      if (v20 == v9)
      {
        break;
      }

      if (++v18 >= [v17 count])
      {
        v18 = 0;
        goto LABEL_11;
      }
    }

    v21 = [v17 objectAtIndex:v18 - 1];
    v22 = [eventCopy containsObject:v21];

    if (v22)
    {
      v23 = v18 + 1;
    }

    else
    {
      v23 = v18 - 1;
    }

    v18 = [v17 objectAtIndex:v23];
  }

  else
  {
    v19 = eventCopy;
  }

LABEL_11:

  return v18;
}

+ (id)_getAlmanacWithLocation:(id)location date:(id)date
{
  v4 = MEMORY[0x277D0EAB0];
  locationCopy = location;
  v6 = objc_alloc_init(v4);
  [locationCopy coordinate];
  v8 = v7;
  [locationCopy coordinate];
  v10 = v9;

  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  [v6 calculateAstronomicalTimeForLocation:v8 time:v10 altitudeInDegrees:{v11, *MEMORY[0x277D0E7C0]}];

  return v6;
}

+ (id)_getAlmanacWithLocation:(id)location
{
  v3 = MEMORY[0x277D0EAB0];
  locationCopy = location;
  v5 = objc_alloc_init(v3);
  [locationCopy coordinate];
  v7 = v6;
  [locationCopy coordinate];
  v9 = v8;

  [v5 calculateAstronomicalTimeForLocation:v7 altitudeInDegrees:{v9, *MEMORY[0x277D0E7C0]}];

  return v5;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t25_121363 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t25_121363, &__block_literal_global_121364);
  }

  v3 = logCategory__hmf_once_v26_121365;

  return v3;
}

uint64_t __26__HMDLocation_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v26_121365;
  logCategory__hmf_once_v26_121365 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (HMDLocation)sharedManager
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __28__HMDLocation_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedManager_onceToken_121374 != -1)
  {
    dispatch_once(&sharedManager_onceToken_121374, block);
  }

  v2 = sharedManager_sharedLocation;

  return v2;
}

void __28__HMDLocation_sharedManager__block_invoke(uint64_t a1)
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v3 = dispatch_queue_create("com.apple.homed.location", v2);

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __28__HMDLocation_sharedManager__block_invoke_2;
  v6[3] = &unk_279734BB8;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_sync(v5, v6);
}

void __28__HMDLocation_sharedManager__block_invoke_2(uint64_t a1)
{
  v2 = objc_alloc(*(a1 + 40));
  v3 = *(a1 + 32);
  v6 = objc_alloc_init(HMDLocationDefaultDataSource);
  v4 = [v2 initWithQueue:v3 dataSource:v6];
  v5 = sharedManager_sharedLocation;
  sharedManager_sharedLocation = v4;
}

@end