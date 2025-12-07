@interface MNSessionUpdateManager
- (BOOL)_hasAtLeastOneActiveSubscriber;
- (MNSessionUpdateManager)init;
- (MNSessionUpdateManagerDelegate)delegate;
- (id)_baseETARequest;
- (id)_updateETARequest:(id)request withRouteInfo:(id)info andUserLocation:(id)location;
- (id)_updateWaypointsForRequest:(id)request routeInfo:(id)info userLocation:(id)location etaRoute:(id)route;
- (int)_purposeForReason:(unint64_t)reason;
- (void)_cancelPendingETARequest;
- (void)_continueETARequests;
- (void)_handleETAResponse:(id)response forRouteInfo:(id)info etaRoute:(id)route reason:(unint64_t)reason;
- (void)_scheduleETATimerWithInterval:(double)interval;
- (void)_sendETARequestWithParameters:(id)parameters;
- (void)_sendETARequestWithReason:(unint64_t)reason;
- (void)_terminateETARequests;
- (void)_updateRouteAttributesFor:(id)for route:(id)route updatedLocation:(id)location completion:(id)completion;
- (void)dealloc;
- (void)pauseUpdateRequestsForSubscriber:(id)subscriber;
- (void)requestImmediateUpdateWithReason:(unint64_t)reason;
- (void)requestUpdateForETAUPosition:(id)position;
- (void)restartUpdateTimer;
- (void)resumeUpdateRequestsForSubscriber:(id)subscriber;
- (void)sendFinalETAURequestWithReason:(unint64_t)reason;
- (void)startUpdateRequestsForRoutes:(id)routes andNavigationType:(int64_t)type;
- (void)stopUpdateRequests;
- (void)transitRouteUpdater:(id)updater didFailUpdateForRouteIDs:(id)ds withError:(id)error;
- (void)transitRouteUpdater:(id)updater didReceiveResponse:(id)response;
- (void)transitRouteUpdater:(id)updater didUpdateTransitRoutes:(id)routes;
- (void)transitRouteUpdater:(id)updater willSendRequests:(id)requests;
- (void)transitRouteUpdater:(id)updater willUpdateTransitForRouteIDs:(id)ds;
@end

@implementation MNSessionUpdateManager

- (MNSessionUpdateManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)_hasAtLeastOneActiveSubscriber
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  subscribers = self->_subscribers;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56__MNSessionUpdateManager__hasAtLeastOneActiveSubscriber__block_invoke;
  v5[3] = &unk_1E8430B98;
  v5[4] = &v6;
  [(NSMutableDictionary *)subscribers enumerateKeysAndObjectsUsingBlock:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void *__56__MNSessionUpdateManager__hasAtLeastOneActiveSubscriber__block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  result = [a3 unsignedIntegerValue];
  if (result == 1)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

- (void)transitRouteUpdater:(id)updater didFailUpdateForRouteIDs:(id)ds withError:(id)error
{
  v22 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v7 = errorCopy;
  if (!self->_isPaused)
  {
    domain = [errorCopy domain];
    v9 = GEOErrorDomain();
    v10 = [domain isEqualToString:v9];

    v11 = GEOFindOrCreateLog();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
    if (v10)
    {
      if (v12)
      {
        [v7 code];
        v13 = GEOStringForError();
        userInfo = [v7 userInfo];
        v15 = GEOErrorReasonKey();
        v16 = [userInfo objectForKeyedSubscript:v15];
        v18 = 138412546;
        v19 = v13;
        v20 = 2112;
        v21 = v16;
        _os_log_impl(&dword_1D311E000, v11, OS_LOG_TYPE_ERROR, "Received error from transit route updater: (%@) %@", &v18, 0x16u);
      }
    }

    else if (v12)
    {
      v18 = 138412290;
      v19 = v7;
      _os_log_impl(&dword_1D311E000, v11, OS_LOG_TYPE_ERROR, "Received error from transit route updater: %@", &v18, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained updateManager:self didReceiveTransitError:v7];
  }
}

- (void)transitRouteUpdater:(id)updater didUpdateTransitRoutes:(id)routes
{
  v21 = *MEMORY[0x1E69E9840];
  routesCopy = routes;
  if (!self->_isPaused)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(routesCopy, "count")}];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = routesCopy;
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        v11 = 0;
        do
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v16 + 1) + 8 * v11);
          v13 = [MNRealtimeTransitUpdate alloc];
          v14 = [(MNRealtimeTransitUpdate *)v13 initWithTransitRouteUpdate:v12, v16];
          [v6 addObject:v14];

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained updateManager:self didReceiveTransitUpdates:v6];
  }
}

- (void)transitRouteUpdater:(id)updater willUpdateTransitForRouteIDs:(id)ds
{
  if (!self->_isPaused)
  {
    dsCopy = ds;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained updateManager:self willSendTransitUpdateRequestForRouteIDs:dsCopy];
  }
}

- (void)transitRouteUpdater:(id)updater didReceiveResponse:(id)response
{
  if (!self->_isPaused)
  {
    responseCopy = response;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained updateManager:self didReceiveTransitUpdateResponse:responseCopy];
  }
}

- (void)transitRouteUpdater:(id)updater willSendRequests:(id)requests
{
  if (!self->_isPaused)
  {
    requestsCopy = requests;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained updateManager:self willSendTransitUpdateRequests:requestsCopy];
  }
}

- (void)_handleETAResponse:(id)response forRouteInfo:(id)info etaRoute:(id)route reason:(unint64_t)reason
{
  v54 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  infoCopy = info;
  routeCopy = route;
  error = [responseCopy error];
  if (error)
  {
    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v47 = error;
      _os_log_impl(&dword_1D311E000, v13, OS_LOG_TYPE_ERROR, "Error in ETATrafficUpdate response: %@", buf, 0xCu);
    }

    if (GEOConfigGetBOOL())
    {
      sfxController = self->_sfxController;
      if (!sfxController)
      {
        v15 = objc_alloc_init(MNSoundEffectResourceController);
        v16 = self->_sfxController;
        self->_sfxController = v15;

        sfxController = self->_sfxController;
      }

      [(MNSoundEffectResourceController *)sfxController playSound:0 andReport:0];
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v18 = [WeakRetained routeInfoForUpdateManager:self reason:reason];
    route = [v18 route];

    v20 = objc_loadWeakRetained(&self->_delegate);
    v21 = [v20 userLocationForUpdateManager:self];

    v22 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      request = [responseCopy request];
      waypointRoute = [request waypointRoute];
      routeLegs = [waypointRoute routeLegs];
      v23 = responseCopy;
      v24 = [routeLegs count];
      routeMatch = [v21 routeMatch];
      [route waypointsFromRouteCoordinate:{objc_msgSend(routeMatch, "routeCoordinate")}];
      v26 = v44 = infoCopy;
      v27 = [v26 count];
      isEVRoute = [route isEVRoute];
      *buf = 138413058;
      v47 = error;
      v48 = 2048;
      v49 = v24;
      responseCopy = v23;
      v50 = 2048;
      v51 = v27;
      v52 = 1024;
      v53 = isEVRoute;
      _os_log_impl(&dword_1D311E000, v22, OS_LOG_TYPE_DEBUG, "ETA Update failed. error: %@ | etaRequestLegsCount: %lu | remainingWaypointsCount: %lu | isEVRoute: %d", buf, 0x26u);

      infoCopy = v44;
    }

    etaRoute = [infoCopy etaRoute];
    [etaRoute invalidateServerDisplayETA];

    goto LABEL_11;
  }

  response = [responseCopy response];
  if ([response status])
  {
    v32 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
LABEL_38:

      goto LABEL_39;
    }

    status = [response status];
    if (status <= 19)
    {
      if (status > 1)
      {
        if (status == 2)
        {
          v34 = @"STATUS_INCOMPLETE";
          goto LABEL_37;
        }

        if (status == 5)
        {
          v34 = @"INVALID_REQUEST";
          goto LABEL_37;
        }
      }

      else
      {
        if (!status)
        {
          v34 = @"STATUS_SUCCESS";
          goto LABEL_37;
        }

        if (status == 1)
        {
          v34 = @"STATUS_FAILED";
          goto LABEL_37;
        }
      }
    }

    else if (status <= 39)
    {
      if (status == 20)
      {
        v34 = @"FAILED_NO_RESULT";
        goto LABEL_37;
      }

      if (status == 30)
      {
        v34 = @"NEEDS_REFINEMENT";
        goto LABEL_37;
      }
    }

    else
    {
      switch(status)
      {
        case '(':
          v34 = @"FAILED_NOT_AUTHORIZED";
          goto LABEL_37;
        case '2':
          v34 = @"STATUS_DEDUPED";
          goto LABEL_37;
        case '<':
          v34 = @"VERSION_MISMATCH";
LABEL_37:
          *buf = 138412290;
          v47 = v34;
          _os_log_impl(&dword_1D311E000, v32, OS_LOG_TYPE_ERROR, "Error in ETATrafficUpdate response but attempting to continue: %@", buf, 0xCu);

          goto LABEL_38;
      }
    }

    v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", status];
    goto LABEL_37;
  }

LABEL_39:
  v35 = objc_loadWeakRetained(&self->_delegate);
  v21 = [v35 routeInfoForUpdateManager:self reason:reason];

  if (v21 == infoCopy)
  {
    route2 = [v21 route];
    route = response;
    v39 = [(__CFString *)routeCopy updateForResponse:response route:route2];

    v40 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138477827;
      v47 = routeCopy;
      _os_log_impl(&dword_1D311E000, v40, OS_LOG_TYPE_DEFAULT, "ETA route: %{private}@", buf, 0xCu);
    }

    if (v39)
    {
      [(MNSessionUpdateManager *)self _updateForETARoute:routeCopy];
      [v21 updateWithETARoute:routeCopy etaResponse:route];
LABEL_11:
      v30 = objc_loadWeakRetained(&self->_delegate);
      [v30 updateManager:self didReceiveETAResponse:responseCopy];
      goto LABEL_12;
    }

    v30 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1D311E000, v30, OS_LOG_TYPE_ERROR, "Error updating GEOComposedETARoute with ETAU response.", buf, 2u);
    }
  }

  else
  {
    v30 = GEOFindOrCreateLog();
    route = response;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      routeID = [infoCopy routeID];
      routeID2 = [v21 routeID];
      *buf = 138412546;
      v47 = routeID;
      v48 = 2112;
      v49 = routeID2;
      _os_log_impl(&dword_1D311E000, v30, OS_LOG_TYPE_DEFAULT, "ETA request was made for route %@, but current route is now %@. Ignoring response.", buf, 0x16u);
    }
  }

LABEL_12:
}

- (int)_purposeForReason:(unint64_t)reason
{
  if (reason - 1 > 5)
  {
    return 0;
  }

  else
  {
    return dword_1D328D528[reason - 1];
  }
}

- (id)_updateWaypointsForRequest:(id)request routeInfo:(id)info userLocation:(id)location etaRoute:(id)route
{
  v53 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  infoCopy = info;
  locationCopy = location;
  array = [MEMORY[0x1E695DF70] array];
  v12 = [objc_alloc(MEMORY[0x1E69A1E70]) initWithCLLocation:locationCopy];
  v13 = [objc_alloc(MEMORY[0x1E69A1CC8]) initWithLocation:v12 isCurrentLocation:1];
  [array addObject:v13];
  if (MapsFeature_IsEnabled_DrivingMultiWaypointRoutes())
  {
    v42 = v12;
    v43 = locationCopy;
    v44 = array;
    [requestCopy clearWaypointTypeds];
    route = [infoCopy route];
    waypoints = [route waypoints];

    v16 = [waypoints count];
    waypointRoute = [requestCopy waypointRoute];
    routeLegs = [waypointRoute routeLegs];
    v19 = v16 - [routeLegs count];

    v41 = waypoints;
    v20 = [waypoints count] - v19;
    v45 = infoCopy;
    route2 = [infoCopy route];
    waypoints2 = [route2 waypoints];
    v23 = [waypoints2 subarrayWithRange:{v19, v20}];

    v24 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{v19, v20}];
      *buf = 138412290;
      v52 = v25;
      _os_log_impl(&dword_1D311E000, v24, OS_LOG_TYPE_DEFAULT, "Creating ETAU request using waypoints from index set: %@.", buf, 0xCu);
    }

    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v26 = v23;
    v27 = [v26 countByEnumeratingWithState:&v46 objects:v50 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v47;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v47 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = *(*(&v46 + 1) + 8 * i);
          geoWaypointTyped = [v31 geoWaypointTyped];
          if (geoWaypointTyped)
          {
            [requestCopy addWaypointTyped:geoWaypointTyped];
          }

          else
          {
            chargingInfo = [v31 chargingInfo];

            if (!chargingInfo)
            {
              v34 = GEOFindOrCreateLog();
              if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
              {
                *buf = 138412290;
                v52 = v31;
                _os_log_impl(&dword_1D311E000, v34, OS_LOG_TYPE_FAULT, "Unable to create GEOWaypointTyped from GEOComposedWaypoint for a non-EV waypoint. %@", buf, 0xCu);
              }
            }
          }
        }

        v28 = [v26 countByEnumeratingWithState:&v46 objects:v50 count:16];
      }

      while (v28);
    }

    array = v44;
    [v44 addObjectsFromArray:v26];

    infoCopy = v45;
    v12 = v42;
    locationCopy = v43;
  }

  else
  {
    [requestCopy clearDestinationWaypointTypeds];
    route3 = [infoCopy route];
    destination = [route3 destination];
    geoWaypointTyped2 = [destination geoWaypointTyped];

    [requestCopy addDestinationWaypointTyped:geoWaypointTyped2];
    route4 = [infoCopy route];
    destination2 = [route4 destination];
    [array addObject:destination2];
  }

  return array;
}

- (id)_updateETARequest:(id)request withRouteInfo:(id)info andUserLocation:(id)location
{
  requestCopy = request;
  infoCopy = info;
  locationCopy = location;
  if (!infoCopy)
  {
    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v39 = 0;
      v18 = "Unable to create ETATrafficUpdateRequest because routeInfo is nil.";
      v19 = &v39;
LABEL_12:
      _os_log_impl(&dword_1D311E000, v12, OS_LOG_TYPE_ERROR, v18, v19, 2u);
    }

LABEL_13:
    v17 = 0;
    goto LABEL_24;
  }

  route = [infoCopy route];

  if (!route)
  {
    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *v38 = 0;
      v18 = "Unable to create ETATrafficUpdateRequest because routeInfo has no route.";
      v19 = v38;
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  v12 = [objc_alloc(MEMORY[0x1E69A1E70]) initWithCLLocation:locationCopy];
  [requestCopy setCurrentUserLocation:v12];
  routeMatch = [locationCopy routeMatch];
  if (!routeMatch)
  {
LABEL_15:
    v34 = locationCopy;
    v16 = objc_alloc_init(MEMORY[0x1E69A1C50]);
    route2 = [infoCopy route];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    targetLegIndex = [WeakRetained targetLegIndex];
    v23 = objc_loadWeakRetained(&self->_delegate);
    v35 = routeMatch;
    LOBYTE(targetLegIndex) = -[NSObject prepareForRequest:route:routeMatch:targetLegIndex:state:](v16, "prepareForRequest:route:routeMatch:targetLegIndex:state:", requestCopy, route2, routeMatch, targetLegIndex, [v23 state]);

    if (targetLegIndex)
    {
      objc_storeStrong(&self->_pendingETARoute, v16);
      route3 = [infoCopy route];
      directionsResponseID = [route3 directionsResponseID];
      [requestCopy setDirectionsResponseID:directionsResponseID];

      [requestCopy setEtauResponseID:0];
      directionsResponseID2 = [requestCopy directionsResponseID];

      if (!directionsResponseID2)
      {
        route4 = [infoCopy route];
        etauResponseID = [route4 etauResponseID];
        [requestCopy setEtauResponseID:etauResponseID];
      }

      displayETAInfo = [infoCopy displayETAInfo];
      displayETAToEndOfLeg = [displayETAInfo displayETAToEndOfLeg];
      [displayETAToEndOfLeg timeIntervalSinceReferenceDate];
      [requestCopy setDisplayedEta:v31];

      v16 = v16;
      v17 = v16;
    }

    else
    {
      v32 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        *v36 = 0;
        _os_log_impl(&dword_1D311E000, v32, OS_LOG_TYPE_ERROR, "Unable to create ETA route for ETATrafficUpdateRequest.", v36, 2u);
      }

      v17 = 0;
    }

    locationCopy = v34;
    routeMatch = v35;
    goto LABEL_23;
  }

  route5 = [infoCopy route];
  route6 = [routeMatch route];

  if (route5 == route6)
  {
    [routeMatch routeCoordinate];
    goto LABEL_15;
  }

  v16 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_1D311E000, v16, OS_LOG_TYPE_ERROR, "Route match's route does not match route parameter.", buf, 2u);
  }

  v17 = 0;
LABEL_23:

LABEL_24:

  return v17;
}

- (id)_baseETARequest
{
  v3 = objc_alloc_init(MEMORY[0x1E69A1D48]);
  mEMORY[0x1E69A2710] = [MEMORY[0x1E69A2710] sharedInstance];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __41__MNSessionUpdateManager__baseETARequest__block_invoke;
  v16[3] = &unk_1E8430B58;
  v5 = v3;
  v17 = v5;
  [mEMORY[0x1E69A2710] shortSessionValues:v16];

  mEMORY[0x1E69A2398] = [MEMORY[0x1E69A2398] sharedPlatform];
  clientCapabilities = [mEMORY[0x1E69A2398] clientCapabilities];
  [v5 setClientCapabilities:clientCapabilities];

  v8 = objc_alloc_init(MEMORY[0x1E69A1C20]);
  [v8 setIncludeTravelTimeAggressive:1];
  [v8 setIncludeTravelTimeConservative:1];
  [v8 setIncludeTravelTimeEstimate:1];
  [v8 setExcludeGuidance:1];
  [v5 setCommonOptions:v8];
  [v5 setRequestingAppId:self->_requestingAppIdentifier];
  [v5 setMaxAlternateRouteCount:LODWORD(self->_maxAlternateRoutesCount)];
  v9 = objc_alloc_init(MEMORY[0x1E69A1E70]);
  [v5 setTripOrigin:v9];

  tripOrigin = self->_tripOrigin;
  tripOrigin = [v5 tripOrigin];
  [tripOrigin setLatLng:tripOrigin];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v13 = [WeakRetained recentLocationHistoryForUpdateManager:self];
  [v5 setRecentLocationHistory:v13];

  v14 = v5;
  return v5;
}

uint64_t __41__MNSessionUpdateManager__baseETARequest__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  [*(a1 + 32) setSessionID:{a2, a3, a4, a5}];
  [*(a1 + 32) setSessionRelativeTimestamp:a6];
  v10 = *(a1 + 32);

  return [v10 setSessionCreateHour:a7];
}

- (void)_sendETARequestWithParameters:(id)parameters
{
  v123 = *MEMORY[0x1E69E9840];
  parametersCopy = parameters;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  wantsETAUpdates = [WeakRetained wantsETAUpdates];

  v7 = GEOFindOrCreateLog();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (wantsETAUpdates)
  {
    if (v8)
    {
      reason = [parametersCopy reason];
      if ((reason - 1) > 6)
      {
        v10 = @"Unknown";
      }

      else
      {
        v10 = off_1E8430BB8[reason - 1];
      }

      *buf = 138412290;
      v114 = v10;
      _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_DEFAULT, "Attempting to make ETATrafficUpdate request for reason: %@", buf, 0xCu);
    }

    if (self->_pendingETARequest)
    {
      v11 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1D311E000, v11, OS_LOG_TYPE_DEFAULT, "Not sending ETAU request because one is already in progress.", buf, 2u);
      }

      goto LABEL_53;
    }

    v107 = 0;
    v108 = &v107;
    v109 = 0x3032000000;
    v110 = __Block_byref_object_copy__21496;
    v111 = __Block_byref_object_dispose__21497;
    v12 = objc_loadWeakRetained(&self->_delegate);
    v112 = [v12 routeInfoForUpdateManager:self reason:{objc_msgSend(parametersCopy, "reason")}];

    if (!v108[5])
    {
      v37 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1D311E000, v37, OS_LOG_TYPE_DEFAULT, "No route provided to ETATrafficUpdate request. Skipping update.", buf, 2u);
      }

      if ([parametersCopy shouldRepeatAfterCompletion])
      {
        [(MNSessionUpdateManager *)self _continueETARequests];
      }

      goto LABEL_52;
    }

    v101 = 0;
    v102 = &v101;
    v103 = 0x3032000000;
    v104 = __Block_byref_object_copy__21496;
    v105 = __Block_byref_object_dispose__21497;
    v13 = objc_loadWeakRetained(&self->_delegate);
    v106 = [v13 userLocationForUpdateManager:self];

    v14 = v102[5];
    if (v14)
    {
      routeMatch = [v14 routeMatch];
      routeCoordinate = [routeMatch routeCoordinate];
      route = [v108[5] route];
      LOBYTE(routeCoordinate) = [route pointCount] > routeCoordinate;

      if (routeCoordinate)
      {
        _baseETARequest = [(MNSessionUpdateManager *)self _baseETARequest];
        routeAttributes = [parametersCopy routeAttributes];
        [_baseETARequest setRouteAttributes:routeAttributes];

        [_baseETARequest setPurpose:{-[MNSessionUpdateManager _purposeForReason:](self, "_purposeForReason:", objc_msgSend(parametersCopy, "reason"))}];
        v95 = 0;
        v96 = &v95;
        v97 = 0x3032000000;
        v98 = __Block_byref_object_copy__21496;
        v99 = __Block_byref_object_dispose__21497;
        v100 = [(MNSessionUpdateManager *)self _updateETARequest:_baseETARequest withRouteInfo:v108[5] andUserLocation:v102[5]];
        if (v96[5])
        {
          if ([parametersCopy shouldTrackPendingRequest])
          {
            objc_storeStrong(&self->_pendingETARequest, _baseETARequest);
          }

          v93[0] = 0;
          v93[1] = v93;
          v93[2] = 0x3032000000;
          v93[3] = __Block_byref_object_copy__21496;
          v93[4] = __Block_byref_object_dispose__21497;
          v94 = [(MNSessionUpdateManager *)self _updateWaypointsForRequest:_baseETARequest routeInfo:v108[5] userLocation:v102[5] etaRoute:v96[5]];
          [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
          v21 = v20;
          objc_initWeak(&location, self);
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 3221225472;
          aBlock[2] = __56__MNSessionUpdateManager__sendETARequestWithParameters___block_invoke;
          aBlock[3] = &unk_1E8430A88;
          v22 = parametersCopy;
          v86 = v22;
          v88 = &v107;
          objc_copyWeak(v91, &location);
          v23 = _baseETARequest;
          v87 = v23;
          v89 = v93;
          v91[1] = v21;
          v90 = &v95;
          v62 = _Block_copy(aBlock);
          v63 = objc_alloc_init(MEMORY[0x1E69A1D50]);
          if ([v22 shouldUseConditionalRequest])
          {
            v70[0] = MEMORY[0x1E69E9820];
            v70[1] = 3221225472;
            v70[2] = __56__MNSessionUpdateManager__sendETARequestWithParameters___block_invoke_2;
            v70[3] = &unk_1E8430B08;
            objc_copyWeak(&v79, &location);
            v61 = v63;
            v71 = v61;
            v24 = v23;
            v72 = v24;
            v75 = &v107;
            v25 = v22;
            v76 = &v101;
            v77 = &v95;
            v78 = v93;
            v73 = v25;
            selfCopy = self;
            v60 = _Block_copy(v70);
            v26 = [MEMORY[0x1E695DF00] now];
            dateOfLastUpdate = self->_dateOfLastUpdate;
            self->_dateOfLastUpdate = v26;

            v28 = GEOFindOrCreateLog();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
            {
              [v102[5] coordinate];
              v30 = v29;
              [v102[5] coordinate];
              v32 = v31;
              routeMatch2 = [v102[5] routeMatch];
              [routeMatch2 routeCoordinate];
              v34 = GEOPolylineCoordinateAsShortString();
              reason2 = [v25 reason];
              if ((reason2 - 1) > 6)
              {
                v36 = @"Unknown";
              }

              else
              {
                v36 = off_1E8430BB8[reason2 - 1];
              }

              routeID = [v108[5] routeID];
              *buf = 134284547;
              v114 = v30;
              v115 = 2049;
              v116 = v32;
              v117 = 2112;
              v118 = v34;
              v119 = 2112;
              v120 = v36;
              v121 = 2112;
              v122 = routeID;
              _os_log_impl(&dword_1D311E000, v28, OS_LOG_TYPE_DEFAULT, "Starting conditional ETATrafficUpdate request from location: %{private}f, %{private}f (%@) | reason: %@ | routeID: %@", buf, 0x34u);
            }

            route2 = [v108[5] route];
            v58 = v102[5];
            v64[0] = MEMORY[0x1E69E9820];
            v64[1] = 3221225472;
            v64[2] = __56__MNSessionUpdateManager__sendETARequestWithParameters___block_invoke_43;
            v64[3] = &unk_1E8430B30;
            objc_copyWeak(&v69, &location);
            v65 = v24;
            v66 = v61;
            v59 = v60;
            v67 = v59;
            v68 = v62;
            [(MNSessionUpdateManager *)self _updateRouteAttributesFor:v65 route:route2 updatedLocation:v58 completion:v64];

            objc_destroyWeak(&v69);
            objc_destroyWeak(&v79);
          }

          else
          {
            v45 = objc_loadWeakRetained(&self->_delegate);
            [v45 updateManager:self willSendETARequest:v23];

            v46 = GEOFindOrCreateLog();
            if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
            {
              [v102[5] coordinate];
              v48 = v47;
              [v102[5] coordinate];
              v50 = v49;
              reason3 = [v22 reason];
              if ((reason3 - 1) > 6)
              {
                v52 = @"Unknown";
              }

              else
              {
                v52 = off_1E8430BB8[reason3 - 1];
              }

              routeID2 = [v108[5] routeID];
              *buf = 134284291;
              v114 = v48;
              v115 = 2049;
              v116 = v50;
              v117 = 2112;
              v118 = v52;
              v119 = 2112;
              v120 = routeID2;
              _os_log_impl(&dword_1D311E000, v46, OS_LOG_TYPE_DEFAULT, "Sending immediate ETATrafficUpdate request from location: %{private}f, %{private}f | reason: %@ | routeID: %@", buf, 0x2Au);
            }

            route3 = [v108[5] route];
            v55 = v102[5];
            v80[0] = MEMORY[0x1E69E9820];
            v80[1] = 3221225472;
            v80[2] = __56__MNSessionUpdateManager__sendETARequestWithParameters___block_invoke_40;
            v80[3] = &unk_1E8430AB0;
            v81 = v23;
            selfCopy2 = self;
            v83 = v63;
            v84 = v62;
            [(MNSessionUpdateManager *)self _updateRouteAttributesFor:v81 route:route3 updatedLocation:v55 completion:v80];
          }

          objc_destroyWeak(v91);
          objc_destroyWeak(&location);
          _Block_object_dispose(v93, 8);
        }

        else
        {
          v44 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_1D311E000, v44, OS_LOG_TYPE_ERROR, "Error creating ETATrafficUpdate request.", buf, 2u);
          }

          if ([parametersCopy shouldRepeatAfterCompletion])
          {
            [(MNSessionUpdateManager *)self _continueETARequests];
          }
        }

        _Block_object_dispose(&v95, 8);

        goto LABEL_51;
      }

      v39 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        routeMatch3 = [v102[5] routeMatch];
        [routeMatch3 routeCoordinate];
        v41 = GEOPolylineCoordinateAsShortString();
        route4 = [v108[5] route];
        pointCount = [route4 pointCount];
        *buf = 138412546;
        v114 = v41;
        v115 = 1024;
        LODWORD(v116) = pointCount;
        _os_log_impl(&dword_1D311E000, v39, OS_LOG_TYPE_DEFAULT, "User location [%@] is at or past end of route (%d). Skipping update.", buf, 0x12u);
      }

      if (![parametersCopy shouldRepeatAfterCompletion])
      {
        goto LABEL_51;
      }
    }

    else
    {
      v38 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1D311E000, v38, OS_LOG_TYPE_ERROR, "Error creating ETATrafficUpdate request because userLocation is nil.", buf, 2u);
      }

      if (([parametersCopy shouldRepeatAfterCompletion] & 1) == 0)
      {
        goto LABEL_51;
      }
    }

    [(MNSessionUpdateManager *)self _continueETARequests];
LABEL_51:
    _Block_object_dispose(&v101, 8);

LABEL_52:
    _Block_object_dispose(&v107, 8);

    goto LABEL_53;
  }

  if (v8)
  {
    *buf = 0;
  }

LABEL_53:
}

void __56__MNSessionUpdateManager__sendETARequestWithParameters___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v35[2] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v8 = v7;
  v9 = GEOFindOrCreateLog();
  v10 = v9;
  if (!v6)
  {
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_34;
    }

    v13 = [*(a1 + 32) reason];
    if ((v13 - 1) > 6)
    {
      v14 = @"Unknown";
    }

    else
    {
      v14 = off_1E8430BB8[v13 - 1];
    }

    v16 = [*(*(*(a1 + 48) + 8) + 40) routeID];
    v17 = [v5 status];
    if (v17 <= 19)
    {
      if (v17 > 1)
      {
        if (v17 == 2)
        {
          v18 = @"STATUS_INCOMPLETE";
          goto LABEL_33;
        }

        if (v17 == 5)
        {
          v18 = @"INVALID_REQUEST";
          goto LABEL_33;
        }
      }

      else
      {
        if (!v17)
        {
          v18 = @"STATUS_SUCCESS";
          goto LABEL_33;
        }

        if (v17 == 1)
        {
          v18 = @"STATUS_FAILED";
          goto LABEL_33;
        }
      }
    }

    else if (v17 <= 39)
    {
      if (v17 == 20)
      {
        v18 = @"FAILED_NO_RESULT";
        goto LABEL_33;
      }

      if (v17 == 30)
      {
        v18 = @"NEEDS_REFINEMENT";
        goto LABEL_33;
      }
    }

    else
    {
      switch(v17)
      {
        case '(':
          v18 = @"FAILED_NOT_AUTHORIZED";
          goto LABEL_33;
        case '2':
          v18 = @"STATUS_DEDUPED";
          goto LABEL_33;
        case '<':
          v18 = @"VERSION_MISMATCH";
LABEL_33:
          *buf = 138412802;
          v31 = v14;
          v32 = 2112;
          v33 = v16;
          v34 = 2112;
          v35[0] = v18;
          _os_log_impl(&dword_1D311E000, v10, OS_LOG_TYPE_DEFAULT, "Received ETATrafficUpdate response for reason: %@ | route: %@ | Status: %@", buf, 0x20u);

          goto LABEL_34;
      }
    }

    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v17];
    goto LABEL_33;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v11 = [*(a1 + 32) reason];
    if ((v11 - 1) > 6)
    {
      v12 = @"Unknown";
    }

    else
    {
      v12 = off_1E8430BB8[v11 - 1];
    }

    v15 = [*(*(*(a1 + 48) + 8) + 40) routeID];
    *buf = 138412802;
    v31 = v12;
    v32 = 2112;
    v33 = v15;
    v34 = 2112;
    v35[0] = v6;
    _os_log_impl(&dword_1D311E000, v10, OS_LOG_TYPE_ERROR, "Received ETATrafficUpdate error for reason: %@ | route: %@ | Error: %@", buf, 0x20u);
  }

LABEL_34:

  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v29 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v31 = "[MNSessionUpdateManager _sendETARequestWithParameters:]_block_invoke";
      v32 = 2080;
      v33 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Session/MNSessionUpdateManager.m";
      v34 = 1024;
      LODWORD(v35[0]) = 484;
      WORD2(v35[0]) = 2080;
      *(v35 + 6) = "[NSThread isMainThread]";
      _os_log_impl(&dword_1D311E000, v29, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s)", buf, 0x26u);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (WeakRetained)
  {
    v20 = [v6 domain];
    v21 = GEOErrorDomain();
    if ([v20 isEqualToString:v21])
    {
      v22 = [v6 code];

      if (v22 == -2)
      {
        if ([*(a1 + 32) shouldRepeatAfterCompletion])
        {
          [WeakRetained _continueETARequests];
        }

        goto LABEL_52;
      }
    }

    else
    {
    }

    if (v6 && [*(a1 + 32) shouldRetryImmediatelyOnError] && (objc_msgSend(*(a1 + 40), "routeAttributes"), v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v23, "shouldRetryForError:", v6), v23, v24))
    {
      [*(a1 + 32) setShouldRetryImmediatelyOnError:0];
      if ([*(a1 + 32) shouldTrackPendingRequest])
      {
        v25 = WeakRetained[16];
        WeakRetained[16] = 0;
      }

      v26 = [*(a1 + 40) routeAttributes];
      [*(a1 + 32) setRouteAttributes:v26];

      [WeakRetained _sendETARequestWithParameters:*(a1 + 32)];
    }

    else
    {
      v27 = objc_alloc_init(MNSessionUpdateResponseInfo);
      [(MNSessionUpdateResponseInfo *)v27 setWaypoints:*(*(*(a1 + 56) + 8) + 40)];
      [(MNSessionUpdateResponseInfo *)v27 setRequest:*(a1 + 40)];
      [(MNSessionUpdateResponseInfo *)v27 setResponse:v5];
      [(MNSessionUpdateResponseInfo *)v27 setError:v6];
      [(MNSessionUpdateResponseInfo *)v27 setResponseTime:v8 - *(a1 + 80)];
      if ([*(a1 + 32) shouldTrackPendingRequest])
      {
        v28 = WeakRetained[16];
        WeakRetained[16] = 0;
      }

      [WeakRetained _handleETAResponse:v27 forRouteInfo:*(*(*(a1 + 48) + 8) + 40) etaRoute:*(*(*(a1 + 64) + 8) + 40) reason:{objc_msgSend(*(a1 + 32), "reason")}];
      if ([*(a1 + 32) shouldRepeatAfterCompletion])
      {
        [WeakRetained _continueETARequests];
      }
    }
  }

LABEL_52:
}

uint64_t __56__MNSessionUpdateManager__sendETARequestWithParameters___block_invoke_40(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setRouteAttributes:a2];
  v3 = [MEMORY[0x1E695DF00] now];
  v4 = *(a1 + 40);
  v5 = *(v4 + 96);
  *(v4 + 96) = v3;

  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(v7 + 24);
  v9 = *(v7 + 32);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);

  return [v10 sendETATrafficUpdateRequest:v6 auditToken:v8 throttleToken:v9 finishedHandler:v11];
}

void __56__MNSessionUpdateManager__sendETARequestWithParameters___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 96));
  v8 = WeakRetained;
  if (!WeakRetained)
  {
    [*(a1 + 32) cancelRequest:*(a1 + 40)];
    goto LABEL_13;
  }

  v9 = objc_loadWeakRetained(WeakRetained + 1);
  v10 = [v9 routeInfoForUpdateManager:v8 reason:{objc_msgSend(*(a1 + 48), "reason")}];
  v11 = *(*(a1 + 64) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  if (!*(*(*(a1 + 64) + 8) + 40))
  {
    v31 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    *buf = 0;
    v32 = "No route provided to ETATrafficUpdate request. Skipping update.";
    v33 = v31;
    v34 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_10;
  }

  v13 = objc_loadWeakRetained(v8 + 1);
  v14 = [v13 userLocationForUpdateManager:v8];
  v15 = *(*(a1 + 72) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v14;

  v17 = [v8 _updateETARequest:*(a1 + 40) withRouteInfo:*(*(*(a1 + 64) + 8) + 40) andUserLocation:*(*(*(a1 + 72) + 8) + 40)];
  v18 = *(*(a1 + 80) + 8);
  v19 = *(v18 + 40);
  *(v18 + 40) = v17;

  if (*(*(*(a1 + 80) + 8) + 40))
  {
    v20 = [*(a1 + 56) _updateWaypointsForRequest:*(a1 + 40) routeInfo:*(*(*(a1 + 64) + 8) + 40) userLocation:*(*(*(a1 + 72) + 8) + 40) etaRoute:?];
    v21 = *(*(a1 + 88) + 8);
    v22 = *(v21 + 40);
    *(v21 + 40) = v20;

    v23 = objc_loadWeakRetained(v8 + 1);
    [v23 updateManager:v8 willSendETARequest:*(a1 + 40)];

    v24 = *(a1 + 40);
    v25 = [*(*(*(a1 + 64) + 8) + 40) route];
    v26 = *(*(*(a1 + 72) + 8) + 40);
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __56__MNSessionUpdateManager__sendETARequestWithParameters___block_invoke_41;
    v35[3] = &unk_1E8430AE0;
    v36 = v5;
    v39 = v6;
    v27 = *(a1 + 40);
    v28 = *(a1 + 72);
    v37 = v27;
    v40 = v28;
    v29 = *(a1 + 48);
    v30 = *(a1 + 64);
    v38 = v29;
    v41 = v30;
    [v8 _updateRouteAttributesFor:v24 route:v25 updatedLocation:v26 completion:v35];

    goto LABEL_13;
  }

  v31 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v32 = "Error creating ETATrafficUpdate request.";
    v33 = v31;
    v34 = OS_LOG_TYPE_ERROR;
LABEL_10:
    _os_log_impl(&dword_1D311E000, v33, v34, v32, buf, 2u);
  }

LABEL_11:

  [*(a1 + 32) cancelRequest:*(a1 + 40)];
  if ([*(a1 + 48) shouldRepeatAfterCompletion])
  {
    [v8 _continueETARequests];
  }

LABEL_13:
}

void __56__MNSessionUpdateManager__sendETARequestWithParameters___block_invoke_43(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    [*(a1 + 32) setRouteAttributes:v4];
    [*(a1 + 40) sendConditionalETATrafficUpdateRequest:*(a1 + 32) timeWindowDuration:*(WeakRetained + 3) auditToken:*(WeakRetained + 4) throttleToken:*(a1 + 48) willSendRequestHandler:*(a1 + 56) finishedHandler:WeakRetained[11]];
  }
}

void __56__MNSessionUpdateManager__sendETARequestWithParameters___block_invoke_41(uint64_t a1, uint64_t a2)
{
  v28 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) setRouteAttributes:a2];
  (*(*(a1 + 56) + 16))();
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 40);
    [*(*(*(a1 + 64) + 8) + 40) coordinate];
    v6 = v5;
    [*(*(*(a1 + 64) + 8) + 40) coordinate];
    v8 = v7;
    v9 = [*(*(*(a1 + 64) + 8) + 40) routeMatch];
    [v9 routeCoordinate];
    v10 = GEOPolylineCoordinateAsShortString();
    v11 = [*(a1 + 48) reason];
    if ((v11 - 1) > 6)
    {
      v12 = @"Unknown";
    }

    else
    {
      v12 = off_1E8430BB8[v11 - 1];
    }

    v13 = [*(*(*(a1 + 72) + 8) + 40) routeID];
    v16 = 134219267;
    v17 = v4;
    v18 = 2049;
    v19 = v6;
    v20 = 2049;
    v21 = v8;
    v22 = 2112;
    v23 = v10;
    v24 = 2112;
    v25 = v12;
    v26 = 2112;
    v27 = v13;
    _os_log_impl(&dword_1D311E000, v3, OS_LOG_TYPE_DEFAULT, "Sending conditional ETATrafficUpdate request %p from location: %{private}f, %{private}f (%@) | reason: %@ | routeID: %@", &v16, 0x3Eu);
  }

  v14 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v15 = [*(a1 + 40) formattedText];
    v16 = 138477827;
    v17 = v15;
    _os_log_impl(&dword_1D311E000, v14, OS_LOG_TYPE_DEBUG, "Full request: %{private}@", &v16, 0xCu);
  }
}

- (void)_sendETARequestWithReason:(unint64_t)reason
{
  v5 = objc_opt_new();
  [v5 setReason:reason];
  [v5 setShouldUseConditionalRequest:self->_opportunisticRequestTimeWindow > 0.0];
  [v5 setShouldRepeatAfterCompletion:1];
  [v5 setShouldRetryImmediatelyOnError:1];
  [v5 setShouldTrackPendingRequest:1];
  [(MNSessionUpdateManager *)self _sendETARequestWithParameters:v5];
}

- (void)_updateRouteAttributesFor:(id)for route:(id)route updatedLocation:(id)location completion:(id)completion
{
  forCopy = for;
  routeCopy = route;
  locationCopy = location;
  completionCopy = completion;
  _navigation_geoLocation = [locationCopy _navigation_geoLocation];
  latLng = [_navigation_geoLocation latLng];

  v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15 = v14;
  if (latLng)
  {
    [v14 addObject:latLng];
  }

  else
  {
    origin = [routeCopy origin];
    latLng2 = [origin latLng];
    [v15 addObject:latLng2];
  }

  routeMatch = [locationCopy routeMatch];
  legIndex = [routeMatch legIndex];

  legs = [routeCopy legs];
  v21 = [legs count];

  if (legIndex < v21)
  {
    do
    {
      legs2 = [routeCopy legs];
      v23 = [legs2 objectAtIndexedSubscript:legIndex];
      destination = [v23 destination];
      latLng3 = [destination latLng];
      [v15 addObject:latLng3];

      ++legIndex;
      legs3 = [routeCopy legs];
      v27 = [legs3 count];
    }

    while (legIndex < v27);
  }

  routeAttributes = [forCopy routeAttributes];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v30 = forCopy;
  }

  else
  {
    routeAttributes2 = [routeCopy routeAttributes];
    objc_opt_class();
    v32 = objc_opt_isKindOfClass();

    if ((v32 & 1) == 0)
    {
      v34 = [MNRouteAttributes alloc];
      routeAttributes3 = [routeCopy routeAttributes];
      routeAttributes4 = [(MNRouteAttributes *)v34 initWithAttributes:routeAttributes3 latLngs:v15];

      goto LABEL_12;
    }

    v30 = routeCopy;
  }

  routeAttributes4 = [v30 routeAttributes];
LABEL_12:
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __85__MNSessionUpdateManager__updateRouteAttributesFor_route_updatedLocation_completion___block_invoke;
  v38[3] = &unk_1E8430A60;
  v39 = completionCopy;
  v36 = completionCopy;
  [(MNRouteAttributes *)routeAttributes4 buildRouteAttributesForETAUpdateRequest:forCopy queue:MEMORY[0x1E69E96A0] result:v38];
}

void __85__MNSessionUpdateManager__updateRouteAttributesFor_route_updatedLocation_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_ERROR, "Error updating route attributes with LPR/Vehicle info: %@. Continuing ETA update anyway", &v8, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)_cancelPendingETARequest
{
  v16 = *MEMORY[0x1E69E9840];
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315906;
      v9 = "[MNSessionUpdateManager _cancelPendingETARequest]";
      v10 = 2080;
      v11 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Session/MNSessionUpdateManager.m";
      v12 = 1024;
      v13 = 366;
      v14 = 2080;
      v15 = "[NSThread isMainThread]";
      _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s)", &v8, 0x26u);
    }
  }

  pendingETARequest = self->_pendingETARequest;
  if (pendingETARequest)
  {
    if ([(GEOETATrafficUpdateRequest *)pendingETARequest hasXpcUuid])
    {
      v4 = objc_alloc_init(MEMORY[0x1E69A1D50]);
      [v4 cancelRequest:self->_pendingETARequest];
    }

    v5 = self->_pendingETARequest;
    self->_pendingETARequest = 0;

    pendingETARoute = self->_pendingETARoute;
    self->_pendingETARoute = 0;
  }
}

- (void)_terminateETARequests
{
  v12 = *MEMORY[0x1E69E9840];
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 136315906;
      v5 = "[MNSessionUpdateManager _terminateETARequests]";
      v6 = 2080;
      v7 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Session/MNSessionUpdateManager.m";
      v8 = 1024;
      v9 = 358;
      v10 = 2080;
      v11 = "[NSThread isMainThread]";
      _os_log_impl(&dword_1D311E000, v3, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s)", &v4, 0x26u);
    }
  }

  [(NSTimer *)self->_etaTimer invalidate];
  [(MNSessionUpdateManager *)self _cancelPendingETARequest];
}

- (void)_continueETARequests
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  wantsETAUpdates = [WeakRetained wantsETAUpdates];

  if (wantsETAUpdates)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __46__MNSessionUpdateManager__continueETARequests__block_invoke;
    block[3] = &unk_1E8430ED8;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
    }
  }
}

- (void)_scheduleETATimerWithInterval:(double)interval
{
  v21 = *MEMORY[0x1E69E9840];
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *location = 136315906;
      *&location[4] = "[MNSessionUpdateManager _scheduleETATimerWithInterval:]";
      v15 = 2080;
      v16 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Session/MNSessionUpdateManager.m";
      v17 = 1024;
      v18 = 323;
      v19 = 2080;
      v20 = "[NSThread isMainThread]";
      _os_log_impl(&dword_1D311E000, v11, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s)", location, 0x26u);
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  wantsETAUpdates = [WeakRetained wantsETAUpdates];

  if (wantsETAUpdates)
  {
    [(NSTimer *)self->_etaTimer invalidate];
    objc_initWeak(location, self);
    v7 = MEMORY[0x1E695DFF0];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __56__MNSessionUpdateManager__scheduleETATimerWithInterval___block_invoke;
    v12[3] = &unk_1E8430A38;
    objc_copyWeak(&v13, location);
    v8 = [v7 scheduledTimerWithTimeInterval:0 repeats:v12 block:interval];
    etaTimer = self->_etaTimer;
    self->_etaTimer = v8;

    objc_destroyWeak(&v13);
    objc_destroyWeak(location);
  }

  else
  {
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *location = 0;
    }
  }
}

void __56__MNSessionUpdateManager__scheduleETATimerWithInterval___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __56__MNSessionUpdateManager__scheduleETATimerWithInterval___block_invoke_2;
    v3[3] = &unk_1E8430ED8;
    v4 = WeakRetained;
    MNRunAsyncOnNavigationQueue(v3);
  }
}

- (void)resumeUpdateRequestsForSubscriber:(id)subscriber
{
  v17 = *MEMORY[0x1E69E9840];
  subscriberCopy = subscriber;
  v5 = subscriberCopy;
  if (subscriberCopy)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __60__MNSessionUpdateManager_resumeUpdateRequestsForSubscriber___block_invoke;
    v7[3] = &unk_1E8430D50;
    v7[4] = self;
    v8 = subscriberCopy;
    MNRunAsyncOnNavigationQueue(v7);
  }

  else
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v10 = "[MNSessionUpdateManager resumeUpdateRequestsForSubscriber:]";
      v11 = 2080;
      v12 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Session/MNSessionUpdateManager.m";
      v13 = 1024;
      v14 = 300;
      v15 = 2080;
      v16 = "subscriber != nil";
      _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s)", buf, 0x26u);
    }
  }
}

void __60__MNSessionUpdateManager_resumeUpdateRequestsForSubscriber___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 56) objectForKeyedSubscript:*(a1 + 40)];
  if ([v2 unsignedIntegerValue] != 1)
  {
    [*(*(a1 + 32) + 56) setObject:&unk_1F4EE2AD0 forKey:*(a1 + 40)];
    *(*(a1 + 32) + 120) = 0;
    [*(*(a1 + 32) + 48) setActive:(*(*(a1 + 32) + 120) & 1) == 0];
  }
}

- (void)pauseUpdateRequestsForSubscriber:(id)subscriber
{
  v17 = *MEMORY[0x1E69E9840];
  subscriberCopy = subscriber;
  v5 = subscriberCopy;
  if (subscriberCopy)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __59__MNSessionUpdateManager_pauseUpdateRequestsForSubscriber___block_invoke;
    v7[3] = &unk_1E8430D50;
    v7[4] = self;
    v8 = subscriberCopy;
    MNRunAsyncOnNavigationQueue(v7);
  }

  else
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v10 = "[MNSessionUpdateManager pauseUpdateRequestsForSubscriber:]";
      v11 = 2080;
      v12 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Session/MNSessionUpdateManager.m";
      v13 = 1024;
      v14 = 277;
      v15 = 2080;
      v16 = "subscriber != nil";
      _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s)", buf, 0x26u);
    }
  }
}

void __59__MNSessionUpdateManager_pauseUpdateRequestsForSubscriber___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 56) objectForKeyedSubscript:*(a1 + 40)];
  v3 = v2;
  if (v2)
  {
    v6 = v2;
    v4 = [v2 unsignedIntegerValue];
    v3 = v6;
    if (v4)
    {
      [*(*(a1 + 32) + 56) setObject:&unk_1F4EE2AB8 forKey:*(a1 + 40)];
      v5 = [*(a1 + 32) _hasAtLeastOneActiveSubscriber];
      v3 = v6;
      if ((v5 & 1) == 0)
      {
        *(*(a1 + 32) + 120) = 1;
        [*(*(a1 + 32) + 48) setActive:(*(*(a1 + 32) + 120) & 1) == 0];
        v3 = v6;
      }
    }
  }
}

- (void)requestUpdateForETAUPosition:(id)position
{
  positionCopy = position;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55__MNSessionUpdateManager_requestUpdateForETAUPosition___block_invoke;
  v6[3] = &unk_1E8430D50;
  v6[4] = self;
  v7 = positionCopy;
  v5 = positionCopy;
  MNRunAsyncOnNavigationQueue(v6);
}

void __55__MNSessionUpdateManager_requestUpdateForETAUPosition___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  if ([*(*(a1 + 32) + 64) isValid])
  {
    if (*(*(a1 + 32) + 104) == 1)
    {
      v2 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v17) = 0;
        _os_log_impl(&dword_1D311E000, v2, OS_LOG_TYPE_DEFAULT, "Last request was server-driven. Skipping server update.", &v17, 2u);
      }
    }

    else
    {
      v3 = [MEMORY[0x1E695DF00] now];
      v2 = v3;
      v4 = *(a1 + 32);
      if (*(v4 + 96))
      {
        [v3 timeIntervalSinceDate:?];
        v6 = v5;
        [*(a1 + 40) timeSinceLastUpdate];
        if (v6 < v7)
        {
          v15 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            [*(a1 + 40) timeSinceLastUpdate];
            v17 = 134218240;
            v18 = v6;
            v19 = 2048;
            v20 = v16;
            _os_log_impl(&dword_1D311E000, v15, OS_LOG_TYPE_DEFAULT, "Time since last update (%f seconds ago) is within minimum (%f seconds). Skipping server update.", &v17, 0x16u);
          }

          goto LABEL_14;
        }

        v4 = *(a1 + 32);
      }

      v8 = [*(v4 + 64) fireDate];
      [v8 timeIntervalSinceDate:v2];
      v10 = v9;

      v11 = *(*(a1 + 32) + 72) + v10;
      v12 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:v11];
      [*(*(a1 + 32) + 64) setFireDate:v12];

      v13 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        [*(a1 + 40) routeCoordinate];
        GEOPolylineCoordinateAsShortString();
        v14 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        v17 = 138412546;
        v18 = v14;
        v19 = 2048;
        v20 = v11;
        _os_log_impl(&dword_1D311E000, v13, OS_LOG_TYPE_DEFAULT, "Request ETA update for server provided position at [%@]. Scheduling the next update for %f seconds from now", &v17, 0x16u);
      }

      [*(a1 + 32) _sendETARequestWithReason:2];
      *(*(a1 + 32) + 104) = 1;
    }

LABEL_14:
  }
}

- (void)requestImmediateUpdateWithReason:(unint64_t)reason
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __59__MNSessionUpdateManager_requestImmediateUpdateWithReason___block_invoke;
  v3[3] = &unk_1E8430A10;
  v3[4] = self;
  v3[5] = reason;
  MNRunAsyncOnNavigationQueue(v3);
}

uint64_t __59__MNSessionUpdateManager_requestImmediateUpdateWithReason___block_invoke(uint64_t a1)
{
  v2 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1D311E000, v2, OS_LOG_TYPE_DEFAULT, "Requesting immediate ETAU update.", v4, 2u);
  }

  *(*(a1 + 32) + 104) = 0;
  [*(a1 + 32) _cancelPendingETARequest];
  return [*(a1 + 32) _sendETARequestWithReason:*(a1 + 40)];
}

- (void)sendFinalETAURequestWithReason:(unint64_t)reason
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  wantsETAUpdates = [WeakRetained wantsETAUpdates];

  if (wantsETAUpdates)
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_DEFAULT, "Sending final ETA update.", v9, 2u);
    }

    v8 = objc_opt_new();
    [v8 setReason:reason];
    [v8 setShouldUseConditionalRequest:0];
    [v8 setShouldRepeatAfterCompletion:0];
    [v8 setShouldRetryImmediatelyOnError:0];
    [v8 setShouldTrackPendingRequest:0];
    [(MNSessionUpdateManager *)self _sendETARequestWithParameters:v8];
  }
}

- (void)restartUpdateTimer
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__MNSessionUpdateManager_restartUpdateTimer__block_invoke;
  block[3] = &unk_1E8430ED8;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void *__44__MNSessionUpdateManager_restartUpdateTimer__block_invoke(void *result)
{
  if (*(result[4] + 64))
  {
    v1 = result;
    v2 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1D311E000, v2, OS_LOG_TYPE_DEFAULT, "restarting ETA updates", v5, 2u);
    }

    [*(v1[4] + 64) invalidate];
    v3 = v1[4];
    v4 = *(v3 + 64);
    *(v3 + 64) = 0;

    return [v1[4] _continueETARequests];
  }

  return result;
}

- (void)stopUpdateRequests
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__MNSessionUpdateManager_stopUpdateRequests__block_invoke;
  block[3] = &unk_1E8430ED8;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __44__MNSessionUpdateManager_stopUpdateRequests__block_invoke(uint64_t a1)
{
  v2 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1D311E000, v2, OS_LOG_TYPE_DEFAULT, "stopping transit/ETA updates", v6, 2u);
  }

  [*(*(a1 + 32) + 48) setActive:0];
  v3 = *(a1 + 32);
  v4 = *(v3 + 48);
  *(v3 + 48) = 0;

  return [*(a1 + 32) _terminateETARequests];
}

- (void)startUpdateRequestsForRoutes:(id)routes andNavigationType:(int64_t)type
{
  routesCopy = routes;
  if ([routesCopy count])
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __73__MNSessionUpdateManager_startUpdateRequestsForRoutes_andNavigationType___block_invoke;
    block[3] = &unk_1E84309E8;
    typeCopy = type;
    block[4] = self;
    v8 = routesCopy;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    [(MNSessionUpdateManager *)self stopUpdateRequests];
  }
}

void __73__MNSessionUpdateManager_startUpdateRequestsForRoutes_andNavigationType___block_invoke(uint64_t a1)
{
  v49 = *MEMORY[0x1E69E9840];
  if (*(a1 + 48) == 3)
  {
    if (*(*(a1 + 32) + 64))
    {
      v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ETA updates already started."];
      v32 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        v40 = "[MNSessionUpdateManager startUpdateRequestsForRoutes:andNavigationType:]_block_invoke";
        v41 = 2080;
        v42 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Session/MNSessionUpdateManager.m";
        v43 = 1024;
        v44 = 157;
        v45 = 2080;
        v46 = "_etaTimer == nil";
        v47 = 2112;
        v48 = v31;
        _os_log_impl(&dword_1D311E000, v32, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s) %@", buf, 0x30u);
      }
    }

    v2 = [MEMORY[0x1E695DF00] now];
    v3 = *(a1 + 32);
    v4 = *(v3 + 96);
    *(v3 + 96) = v2;

    [*(a1 + 32) _scheduleETATimerWithInterval:*(*(a1 + 32) + 80)];
  }

  v5 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(*(a1 + 40), "count")}];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v33 = a1;
  v6 = *(a1 + 40);
  v7 = [v6 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v35;
    v10 = 0.0;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v35 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v34 + 1) + 8 * i);
        v13 = [v12 transitRouteUpdateRequest];
        if (v13)
        {
          v14 = [v12 route];
          v15 = [v14 suggestedRoute];
          v16 = [v15 supportsRouteUpdates];

          if (v16)
          {
            if (fabs(v10) < 0.000001)
            {
              v17 = [v12 route];
              [v17 transitUpdateInitialDelay];
              v10 = v18;
            }

            [v5 addObject:v13];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v8);
  }

  else
  {
    v10 = 0.0;
  }

  v19 = [v5 count];
  v20 = *(*(v33 + 32) + 48);
  if (v19)
  {
    if (!v20)
    {
      v21 = [objc_alloc(MEMORY[0x1E69A2690]) initWithDelegate:*(v33 + 32) andInitialTTL:v10];
      v22 = *(v33 + 32);
      v23 = *(v22 + 48);
      *(v22 + 48) = v21;

      v24 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = *(*(v33 + 32) + 48);
        v26 = [v5 count];
        *buf = 138412546;
        v40 = v25;
        v41 = 2048;
        v42 = v26;
        _os_log_impl(&dword_1D311E000, v24, OS_LOG_TYPE_DEFAULT, "creating transit updater %@ for %lu requests", buf, 0x16u);
      }

      v20 = *(*(v33 + 32) + 48);
    }

    [v20 setRequests:v5];
    [*(*(v33 + 32) + 48) setActive:(*(*(v33 + 32) + 120) & 1) == 0];
  }

  else if (v20)
  {
    v27 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = *(*(v33 + 32) + 48);
      *buf = 138412290;
      v40 = v28;
      _os_log_impl(&dword_1D311E000, v27, OS_LOG_TYPE_DEFAULT, "tearing down transit updater %@ because we have no requests", buf, 0xCu);
    }

    [*(*(v33 + 32) + 48) setActive:0];
    v29 = *(v33 + 32);
    v30 = *(v29 + 48);
    *(v29 + 48) = 0;
  }
}

- (void)dealloc
{
  [(NSTimer *)self->_etaTimer invalidate];
  [(GEOTransitRouteUpdater *)self->_transitUpdater setActive:0];
  pendingETARequest = self->_pendingETARequest;
  if (pendingETARequest && [(GEOETATrafficUpdateRequest *)pendingETARequest hasXpcUuid])
  {
    v4 = objc_alloc_init(MEMORY[0x1E69A1D50]);
    [v4 cancelRequest:self->_pendingETARequest];
  }

  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_DEFAULT, "Deallocated.", buf, 2u);
  }

  v6.receiver = self;
  v6.super_class = MNSessionUpdateManager;
  [(MNSessionUpdateManager *)&v6 dealloc];
}

- (MNSessionUpdateManager)init
{
  v11.receiver = self;
  v11.super_class = MNSessionUpdateManager;
  v2 = [(MNSessionUpdateManager *)&v11 init];
  if (v2)
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v10[0] = 0;
      _os_log_impl(&dword_1D311E000, v3, OS_LOG_TYPE_DEFAULT, "Initializing.", v10, 2u);
    }

    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    subscribers = v2->_subscribers;
    v2->_subscribers = v4;

    v2->_isPaused = 1;
    GEOConfigGetDouble();
    v2->_etaRequestInterval = fmax(v6, 5.0);
    GEOConfigGetDouble();
    if (etaRequestInterval <= 0.0)
    {
      etaRequestInterval = v2->_etaRequestInterval;
    }

    v2->_initialRequestDelay = etaRequestInterval;
    v2->_opportunisticRequestTimeWindow = 150.0;
    v2->_maxAlternateRoutesCount = 2;
    v8 = v2;
  }

  return v2;
}

@end