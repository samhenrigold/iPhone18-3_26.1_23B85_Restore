@interface MNTurnByTurnLocationTracker
- (BOOL)_allowRerouteForLocation:(id)location outError:(id *)error;
- (BOOL)_isLocation:(id)location nearOrigin:(id)origin;
- (BOOL)_isRoadFeatureInOppositeDirection:(id)direction ofCoordinate:(id)coordinate course:(double)course;
- (BOOL)_shouldAdvanceGuidanceToRouteMatch:(id)match;
- (BOOL)_tryOnlineOfflineSwitchingWithRequestParameters:(id)parameters rerouteReason:(unint64_t)reason error:(id)error errorHandler:(id)handler;
- (BOOL)hasArrivedAtFinalDestination;
- (MNTurnByTurnLocationTracker)initWithNavigationSession:(id)session;
- (id)_matchedLocationForLocation:(id)location;
- (id)_matchedLocationForMatchResult:(id)result originalLocation:(id)location;
- (id)_newMapMatcherForRoute:(id)route;
- (id)_rerouteRequestParametersForLocation:(id)location transportType:(int)type;
- (id)_routeAttributesFromRouteCoordinate:(PolylineCoordinate)coordinate;
- (id)_trafficIncidentAlertUpdater;
- (id)captureStatePlistWithHints:(os_state_hints_s *)hints;
- (id)initForTestingWithRoute:(id)route;
- (int)_routeHintTypeForTransportType:(int)type;
- (unint64_t)_modifiedStepIndexForMatchResult:(id)result matchType:(unint64_t)type;
- (unint64_t)_offRouteRequestType;
- (void)_addDebugIncidentAlertToResponseInfo:(id)info;
- (void)_cancelPendingRerouteRequest;
- (void)_changeOfflineMode:(unsigned __int8)mode reason:(unint64_t)reason requestParameters:(id)parameters errorHandler:(id)handler;
- (void)_handleOffRouteForLocation:(id)location;
- (void)_handleSuccessfulRerouteRequest:(id)request response:(id)response waypoints:(id)waypoints;
- (void)_handleWaypointRerouteForLocation:(id)location;
- (void)_requestRerouteWithReason:(unint64_t)reason requestHandler:(id)handler completionHandler:(id)completionHandler errorHandler:(id)errorHandler;
- (void)_requestRerouteWithReason:(unint64_t)reason requestParameters:(id)parameters completionHandler:(id)handler errorHandler:(id)errorHandler;
- (void)_sendRouteHintForLocation:(id)location;
- (void)_updateForArrivalAtLegIndex:(unint64_t)index;
- (void)_updateForDepartureFromLegIndex:(unint64_t)index withReason:(unint64_t)reason;
- (void)_updateForNewRoute:(id)route rerouteReason:(unint64_t)reason request:(id)request response:(id)response;
- (void)_updateForNewTrafficIncidentAlerts:(id)alerts;
- (void)_updateForNewTransportType:(id)type rerouteReason:(unint64_t)reason request:(id)request response:(id)response;
- (void)_updateForReroute:(id)reroute rerouteReason:(unint64_t)reason request:(id)request response:(id)response;
- (void)_updateStateForLocation:(id)location;
- (void)_updateSwitchTransportTypeForLocation:(id)location;
- (void)advanceToNextLeg;
- (void)arrivalUpdater:(id)updater didArriveAtEndOfLegIndex:(unint64_t)index;
- (void)arrivalUpdater:(id)updater didDepartFromLegIndex:(unint64_t)index withReason:(unint64_t)reason;
- (void)arrivalUpdater:(id)updater didEnterPreArrivalStateForLegIndex:(unint64_t)index;
- (void)arrivalUpdater:(id)updater didTimeoutAtLegIndex:(unint64_t)index withReason:(unint64_t)reason;
- (void)arrivalUpdater:(id)updater isApproachingEndOfLeg:(unint64_t)leg;
- (void)arrivalUpdater:(id)updater shouldShowChargingInfoForWaypoint:(id)waypoint;
- (void)changeOfflineMode:(unsigned __int8)mode;
- (void)changeTransportType:(int)type route:(id)route;
- (void)dealloc;
- (void)forceOnRoute:(id)route atLocation:(id)location;
- (void)forceRerouteWithReason:(unint64_t)reason;
- (void)insertWaypoint:(id)waypoint completionHandler:(id)handler;
- (void)offlineCoordinatorDidDetectOnline:(id)online;
- (void)removeWaypointAtIndex:(unint64_t)index completionHandler:(id)handler;
- (void)reroute:(id)reroute reason:(unint64_t)reason;
- (void)rerouteWithWaypoints:(id)waypoints completionHandler:(id)handler;
- (void)setNavigationSessionState:(id)state;
- (void)startTrackingWithInitialLocation:(id)location targetLegIndex:(unint64_t)index;
- (void)stopTracking;
- (void)switchToDestinationRoute;
- (void)traceJumpedInTime;
- (void)trafficIncidentAlertUpdater:(id)updater didDismissAlert:(id)alert withReroute:(BOOL)reroute;
- (void)trafficIncidentAlertUpdater:(id)updater didSwitchToNewRoute:(id)route forAlert:(id)alert;
- (void)trafficIncidentAlertUpdater:(id)updater invalidatedAlert:(id)alert;
- (void)trafficIncidentAlertUpdater:(id)updater receivedAlert:(id)alert responseCallback:(id)callback;
- (void)trafficIncidentAlertUpdater:(id)updater updatedAlert:(id)alert;
- (void)updateDestination:(id)destination completionHandler:(id)handler;
- (void)updateForETAUResponse:(id)response;
- (void)updateForETAUpdateResponse:(id)response;
- (void)updateLocation:(id)location;
- (void)updateRequestForETAUpdate:(id)update;
@end

@implementation MNTurnByTurnLocationTracker

- (BOOL)hasArrivedAtFinalDestination
{
  v10.receiver = self;
  v10.super_class = MNTurnByTurnLocationTracker;
  if (![(MNLocationTracker *)&v10 hasArrived])
  {
    return 0;
  }

  lastArrivalLegIndex = self->_lastArrivalLegIndex;
  navigationSession = [(MNLocationTracker *)self navigationSession];
  routeManager = [navigationSession routeManager];
  currentRoute = [routeManager currentRoute];
  legs = [currentRoute legs];
  v8 = lastArrivalLegIndex >= [legs count] - 1;

  return v8;
}

- (id)captureStatePlistWithHints:(os_state_hints_s *)hints
{
  v41[6] = *MEMORY[0x1E69E9840];
  lastMatchedLocation = [(MNLocationTracker *)self lastMatchedLocation];
  v5 = MEMORY[0x1E695DF90];
  v40[0] = @"isGoodMatch";
  v6 = MEMORY[0x1E696AD98];
  routeMatch = [lastMatchedLocation routeMatch];
  v33 = [v6 numberWithBool:{objc_msgSend(routeMatch, "isGoodMatch")}];
  v41[0] = v33;
  v40[1] = @"routeCoordinate";
  routeMatch2 = [lastMatchedLocation routeMatch];
  [routeMatch2 routeCoordinate];
  v34 = GEOPolylineCoordinateAsFullString();
  v41[1] = v34;
  v40[2] = @"locationCoordinate";
  v7 = MEMORY[0x1E696AEC0];
  [lastMatchedLocation coordinate];
  v9 = v8;
  [lastMatchedLocation coordinate];
  v11 = [v7 stringWithFormat:@"%f, %f", v9, v10];
  v41[2] = v11;
  v40[3] = @"course";
  v12 = MEMORY[0x1E696AD98];
  [lastMatchedLocation course];
  v13 = [v12 numberWithDouble:?];
  v41[3] = v13;
  v40[4] = @"stepIndex";
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(lastMatchedLocation, "stepIndex")}];
  v41[4] = v14;
  v40[5] = @"distanceFromRoute";
  v15 = MEMORY[0x1E696AD98];
  routeMatch3 = [lastMatchedLocation routeMatch];
  [routeMatch3 distanceFromRoute];
  v17 = [v15 numberWithDouble:?];
  v41[5] = v17;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:v40 count:6];
  v37 = [v5 dictionaryWithDictionary:v18];

  [lastMatchedLocation altitude];
  if (v19 != 1.79769313e308)
  {
    v20 = MEMORY[0x1E696AD98];
    [lastMatchedLocation altitude];
    v21 = [v20 numberWithDouble:?];
    [v37 setObject:v21 forKeyedSubscript:@"altitude"];
  }

  v38[0] = @"navigationState";
  v22 = [MEMORY[0x1E696AD98] numberWithInt:{-[MNLocationTracker state](self, "state")}];
  v39[0] = v22;
  v38[1] = @"targetLegIndex";
  v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[MNLocationTracker targetLegIndex](self, "targetLegIndex")}];
  v39[1] = v23;
  v38[2] = @"mapMatcher.targetLegIndex";
  v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[GEONavigationMapMatcher targetLegIndex](self->_mapMatcher, "targetLegIndex")}];
  v39[2] = v24;
  v38[3] = @"lastArrivalLegIndex";
  lastArrivalLegIndex = self->_lastArrivalLegIndex;
  if (lastArrivalLegIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    v26 = &unk_1F4EE2500;
  }

  else
  {
    v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_lastArrivalLegIndex];
  }

  v39[3] = v26;
  v39[4] = v37;
  v38[4] = @"lastLocation";
  v38[5] = @"sessionState";
  navigationSession = [(MNLocationTracker *)self navigationSession];
  serverSessionStateInfo = [navigationSession serverSessionStateInfo];
  v29 = serverSessionStateInfo;
  v30 = @"(none)";
  if (serverSessionStateInfo)
  {
    v30 = serverSessionStateInfo;
  }

  v39[5] = v30;
  v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:v38 count:6];

  if (lastArrivalLegIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
  }

  return v31;
}

- (void)trafficIncidentAlertUpdater:(id)updater didSwitchToNewRoute:(id)route forAlert:(id)alert
{
  v27 = *MEMORY[0x1E69E9840];
  routeCopy = route;
  alertCopy = alert;
  v9 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    uniqueRouteID = [routeCopy uniqueRouteID];
    name = [routeCopy name];
    *buf = 138412547;
    v24 = uniqueRouteID;
    v25 = 2113;
    v26 = name;
    _os_log_impl(&dword_1D311E000, v9, OS_LOG_TYPE_DEFAULT, "Switching to new route because of Dodgeball alert. New route: %@, %{private}@", buf, 0x16u);
  }

  v12 = [[MNActiveRouteInfo alloc] initWithRoute:routeCopy];
  if ([alertCopy alertType] == 1)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  [(MNTurnByTurnLocationTracker *)self reroute:v12 reason:v13];
  alertType = [alertCopy alertType];
  if (alertType <= 7 && ((1 << alertType) & 0x9A) != 0)
  {
    if ([alertCopy alertType] == 1 || objc_msgSend(alertCopy, "alertType") == 7)
    {
      originalRoute = [alertCopy originalRoute];
    }

    else
    {
      originalRoute = [alertCopy alternateRoute];
    }

    v16 = originalRoute;
    if (originalRoute)
    {
      v17 = [[MNActiveRouteInfo alloc] initWithRoute:originalRoute];
      v22 = v17;
      v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
    }

    else
    {
      v18 = 0;
    }

    navigationSession = [(MNLocationTracker *)self navigationSession];
    routeManager = [navigationSession routeManager];
    currentRouteInfo = [routeManager currentRouteInfo];
    [(MNTurnByTurnLocationTracker *)self _updateForSelectedNewRoute:currentRouteInfo alternateRoutes:v18];
  }
}

- (void)trafficIncidentAlertUpdater:(id)updater updatedAlert:(id)alert
{
  alertCopy = alert;
  delegate = [(MNLocationTracker *)self delegate];
  [delegate locationTracker:self updatedTrafficIncidentAlert:alertCopy];
}

- (void)trafficIncidentAlertUpdater:(id)updater didDismissAlert:(id)alert withReroute:(BOOL)reroute
{
  rerouteCopy = reroute;
  v18[1] = *MEMORY[0x1E69E9840];
  alertCopy = alert;
  alertType = [alertCopy alertType];
  if ((alertType - 3) >= 2)
  {
    if (alertType == 1)
    {
      navigationSession = [(MNLocationTracker *)self navigationSession];
      routeManager = [navigationSession routeManager];
      currentRouteInfo = [routeManager currentRouteInfo];
      [(MNTurnByTurnLocationTracker *)self _updateForSelectedNewRoute:currentRouteInfo alternateRoutes:0];
    }
  }

  else
  {
    if (rerouteCopy)
    {
      [alertCopy mainRouteInfo];
    }

    else
    {
      [alertCopy alternateRouteInfo];
    }
    v12 = ;
    v18[0] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
    navigationSession2 = [(MNLocationTracker *)self navigationSession];
    routeManager2 = [navigationSession2 routeManager];
    currentRouteInfo2 = [routeManager2 currentRouteInfo];
    [(MNTurnByTurnLocationTracker *)self _updateForSelectedNewRoute:currentRouteInfo2 alternateRoutes:v13];
  }

  delegate = [(MNLocationTracker *)self delegate];
  [delegate locationTracker:self dismissedTrafficIncidentAlert:alertCopy];
}

- (void)trafficIncidentAlertUpdater:(id)updater invalidatedAlert:(id)alert
{
  alertCopy = alert;
  delegate = [(MNLocationTracker *)self delegate];
  [delegate locationTracker:self invalidatedTrafficIncidentAlert:alertCopy];
}

- (void)trafficIncidentAlertUpdater:(id)updater receivedAlert:(id)alert responseCallback:(id)callback
{
  alertCopy = alert;
  callbackCopy = callback;
  delegate = [(MNLocationTracker *)self delegate];
  [delegate locationTracker:self receivedTrafficIncidentAlert:alertCopy responseCallback:callbackCopy];
}

- (void)arrivalUpdater:(id)updater shouldShowChargingInfoForWaypoint:(id)waypoint
{
  waypointCopy = waypoint;
  delegate = [(MNLocationTracker *)self delegate];
  [delegate locationTracker:self shouldShowChargingInfoForWaypoint:waypointCopy];
}

- (void)arrivalUpdater:(id)updater didTimeoutAtLegIndex:(unint64_t)index withReason:(unint64_t)reason
{
  indexCopy = index;
  v14 = *MEMORY[0x1E69E9840];
  updaterCopy = updater;
  if (reason == 1)
  {
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 67109120;
      v13 = indexCopy;
      _os_log_impl(&dword_1D311E000, v11, OS_LOG_TYPE_DEFAULT, "Timed out waiting for departure from leg at index: %d", &v12, 8u);
    }

    delegate = [(MNLocationTracker *)self delegate];
    [delegate locationTracker:self didEndNavigatingWithReason:4];
    goto LABEL_9;
  }

  if (!reason)
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 67109120;
      v13 = indexCopy;
      _os_log_impl(&dword_1D311E000, v9, OS_LOG_TYPE_DEFAULT, "Timed out in arrival region based on server parameters at leg index: %d", &v12, 8u);
    }

    delegate = [(MNLocationTracker *)self delegate];
    [delegate locationTracker:self didEndNavigatingWithReason:7];
LABEL_9:
  }
}

- (void)arrivalUpdater:(id)updater didDepartFromLegIndex:(unint64_t)index withReason:(unint64_t)reason
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if (reason - 1 > 5)
    {
      v9 = @"Unknown";
    }

    else
    {
      v9 = off_1E842BC00[reason - 1];
    }

    v10[0] = 67109378;
    v10[1] = index;
    v11 = 2112;
    v12 = v9;
    _os_log_impl(&dword_1D311E000, v8, OS_LOG_TYPE_DEFAULT, "Departure detected from leg: %d, reason: %@", v10, 0x12u);
  }

  [(MNTurnByTurnLocationTracker *)self _updateForDepartureFromLegIndex:index withReason:reason];
}

- (void)arrivalUpdater:(id)updater didEnterPreArrivalStateForLegIndex:(unint64_t)index
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v16[0] = 67109120;
    v16[1] = index;
    _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_DEFAULT, "Pre-arrival detected for leg: %d", v16, 8u);
  }

  navigationSession = [(MNLocationTracker *)self navigationSession];
  routeManager = [navigationSession routeManager];
  currentRoute = [routeManager currentRoute];

  legs = [currentRoute legs];
  LODWORD(navigationSession) = [legs count] > index;

  if (navigationSession)
  {
    legs2 = [currentRoute legs];
    v12 = [legs2 objectAtIndexedSubscript:index];
    destination = [v12 destination];
  }

  else
  {
    destination = 0;
  }

  delegate = [(MNLocationTracker *)self delegate];
  [delegate locationTracker:self didEnterPreArrivalStateForWaypoint:destination endOfLegIndex:index];

  delegate2 = [(MNLocationTracker *)self delegate];
  [delegate2 locationTrackerDidEnterPreArrivalState:self];
}

- (void)arrivalUpdater:(id)updater didArriveAtEndOfLegIndex:(unint64_t)index
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v12[0] = 67109120;
    v12[1] = index;
    _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_DEFAULT, "Arrival detected for leg: %d", v12, 8u);
  }

  self->_lastArrivalLegIndex = index;
  navigationSession = [(MNLocationTracker *)self navigationSession];
  routeManager = [navigationSession routeManager];
  currentRoute = [routeManager currentRoute];

  legs = [currentRoute legs];
  LODWORD(routeManager) = [legs count] - 1 > index;

  if (routeManager)
  {
    v11 = 7;
  }

  else
  {
    v11 = 6;
  }

  [(MNLocationTracker *)self _setState:v11];
  [(MNTurnByTurnLocationTracker *)self _updateForArrivalAtLegIndex:index];
}

- (void)arrivalUpdater:(id)updater isApproachingEndOfLeg:(unint64_t)leg
{
  delegate = [(MNLocationTracker *)self delegate];
  [delegate locationTracker:self isApproachingEndOfLeg:leg];
}

- (void)forceOnRoute:(id)route atLocation:(id)location
{
  routeCopy = route;
  locationCopy = location;
  [(GEONavigationMapMatcher *)self->_mapMatcher setRoute:0];
  v7 = [objc_alloc(MEMORY[0x1E69A1E70]) initWithCLLocation:locationCopy];
  v8 = [(GEONavigationMapMatcher *)self->_mapMatcher updateForReroute:routeCopy location:v7 routeStartsFromLocation:0];
}

- (void)_addDebugIncidentAlertToResponseInfo:(id)info
{
  infoCopy = info;
  Integer = GEOConfigGetInteger();
  if (Integer)
  {
    navigationSessionState = [(MNLocationTracker *)self navigationSessionState];
    currentRouteInfo = [navigationSessionState currentRouteInfo];

    response = [infoCopy response];
    status = [response status];

    if (status)
    {
      route = [currentRouteInfo route];
      geoETAWaypointRoute = [route geoETAWaypointRoute];

      if (geoETAWaypointRoute)
      {
        response2 = [infoCopy response];
        [response2 setWaypointRoute:geoETAWaypointRoute];
      }
    }

    lastMatchedLocation = [(MNLocationTracker *)self lastMatchedLocation];
    routeMatch = [lastMatchedLocation routeMatch];

    if (routeMatch)
    {
      route2 = [currentRouteInfo route];
      [route2 distanceToEndFromRouteCoordinate:{objc_msgSend(routeMatch, "routeCoordinate")}];
      v16 = v15;

      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    response3 = [infoCopy response];
    alternateRoutes = [infoCopy alternateRoutes];
    firstObject = [alternateRoutes firstObject];
    [response3 addFakeTrafficIncidentAlert:Integer mainRouteInfo:currentRouteInfo alternateRouteInfo:firstObject currentDistance:v17];
  }
}

- (void)_updateForNewTrafficIncidentAlerts:(id)alerts
{
  v21 = *MEMORY[0x1E69E9840];
  alertsCopy = alerts;
  if (!self->_trafficIncidentAlertUpdater)
  {
    v5 = objc_alloc_init(MNTrafficIncidentAlertUpdater);
    trafficIncidentAlertUpdater = self->_trafficIncidentAlertUpdater;
    self->_trafficIncidentAlertUpdater = v5;

    [(MNTrafficIncidentAlertUpdater *)self->_trafficIncidentAlertUpdater setDelegate:self];
  }

  BOOL = GEOConfigGetBOOL();
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = alertsCopy;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = *v17;
    do
    {
      v11 = 0;
      do
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v8);
        }

        triggerRange = [*(*(&v16 + 1) + 8 * v11) triggerRange];
        v13 = triggerRange != 0;

        BOOL = BOOL & v13;
        ++v11;
      }

      while (v9 != v11);
      v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  [(MNTrafficIncidentAlertUpdater *)self->_trafficIncidentAlertUpdater setUseTriggerPointRangeBannerQueuing:BOOL];
  v14 = self->_trafficIncidentAlertUpdater;
  lastMatchedLocation = [(MNLocationTracker *)self lastMatchedLocation];
  [(MNTrafficIncidentAlertUpdater *)v14 updateForAlertsFromResponse:v8 updatedLocation:lastMatchedLocation];
}

- (void)_updateForDepartureFromLegIndex:(unint64_t)index withReason:(unint64_t)reason
{
  [(MNTurnByTurnLocationTracker *)self _cancelPendingRerouteRequest];
  if (index == 0x7FFFFFFFFFFFFFFFLL)
  {
    index = [(MNLocationTracker *)self targetLegIndex];
  }

  navigationSession = [(MNLocationTracker *)self navigationSession];
  routeManager = [navigationSession routeManager];
  currentRoute = [routeManager currentRoute];

  legs = [currentRoute legs];
  v11 = [legs count];

  if (index >= v11)
  {
    destination = 0;
  }

  else
  {
    legs2 = [currentRoute legs];
    legs4 = [legs2 objectAtIndexedSubscript:index];
    destination = [legs4 destination];
  }

  if (reason == 6)
  {
    [(MNLocationTracker *)self _setTargetLegIndex:0];
  }

  else
  {
    legs3 = [currentRoute legs];
    v15 = [legs3 count] - 1;
    if (index + 1 >= v15)
    {
      legs4 = [currentRoute legs];
      v16 = [legs4 count] - 1;
    }

    else
    {
      v16 = index + 1;
    }

    [(MNLocationTracker *)self _setTargetLegIndex:v16];
    if (index + 1 >= v15)
    {
    }
  }

  [(GEONavigationMapMatcher *)self->_mapMatcher setTargetLegIndex:[(MNLocationTracker *)self targetLegIndex]];
  [(MNLocationTracker *)self _setState:1];
  self->_lastArrivalLegIndex = 0x7FFFFFFFFFFFFFFFLL;
  delegate = [(MNLocationTracker *)self delegate];
  [delegate locationTracker:self didResumeNavigatingFromWaypoint:destination endOfLegIndex:index reason:reason];
}

- (void)_updateForArrivalAtLegIndex:(unint64_t)index
{
  [(MNTurnByTurnLocationTracker *)self _cancelPendingRerouteRequest];
  [(MNTurnByTurnLocationTracker *)self _sendRouteHintForLocation:0];
  navigationSession = [(MNLocationTracker *)self navigationSession];
  routeManager = [navigationSession routeManager];
  currentRoute = [routeManager currentRoute];

  legs = [currentRoute legs];
  v8 = [legs count];

  if (v8 <= index)
  {
    v10 = 0;
  }

  else
  {
    legs2 = [currentRoute legs];
    v10 = [legs2 objectAtIndexedSubscript:index];
  }

  delegate = [(MNLocationTracker *)self delegate];
  destination = [v10 destination];
  [delegate locationTracker:self didArriveAtWaypoint:destination endOfLegIndex:index];

  delegate2 = [(MNLocationTracker *)self delegate];
  [delegate2 locationTrackerDidArrive:self];
}

- (void)_updateForNewTransportType:(id)type rerouteReason:(unint64_t)reason request:(id)request response:(id)response
{
  typeCopy = type;
  requestCopy = request;
  responseCopy = response;
  delegate = [(MNLocationTracker *)self delegate];
  [delegate locationTracker:self didSwitchToNewTransportTypeWithRoute:typeCopy rerouteReason:reason request:requestCopy response:responseCopy];
}

- (void)_updateForReroute:(id)reroute rerouteReason:(unint64_t)reason request:(id)request response:(id)response
{
  v29 = *MEMORY[0x1E69E9840];
  rerouteCopy = reroute;
  requestCopy = request;
  responseCopy = response;
  route = [rerouteCopy route];
  transportType = [route transportType];
  transportType2 = [(MNLocationTracker *)self transportType];

  if (transportType != transportType2)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unexpected transport type change when calling _updateForReroute:"];
    v18 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = 136316162;
      v20 = "[MNTurnByTurnLocationTracker _updateForReroute:rerouteReason:request:response:]";
      v21 = 2080;
      v22 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Location/LocationTracking/MNTurnByTurnLocationTracker.mm";
      v23 = 1024;
      v24 = 1696;
      v25 = 2080;
      v26 = "routeInfo.route.transportType == self.transportType";
      v27 = 2112;
      v28 = v17;
      _os_log_impl(&dword_1D311E000, v18, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s) %@", &v19, 0x30u);
    }
  }

  delegate = [(MNLocationTracker *)self delegate];
  [delegate locationTracker:self didReroute:rerouteCopy newAlternateRoutes:0 rerouteReason:reason request:requestCopy response:responseCopy];
}

- (id)_trafficIncidentAlertUpdater
{
  trafficIncidentAlertUpdater = self->_trafficIncidentAlertUpdater;
  if (!trafficIncidentAlertUpdater)
  {
    v4 = objc_opt_new();
    v5 = self->_trafficIncidentAlertUpdater;
    self->_trafficIncidentAlertUpdater = v4;

    [(MNTrafficIncidentAlertUpdater *)self->_trafficIncidentAlertUpdater setDelegate:self];
    trafficIncidentAlertUpdater = self->_trafficIncidentAlertUpdater;
  }

  return trafficIncidentAlertUpdater;
}

- (id)_newMapMatcherForRoute:(id)route
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromSelector(a2);
    v8 = 136316162;
    v9 = "[MNTurnByTurnLocationTracker _newMapMatcherForRoute:]";
    v10 = 2080;
    v11 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Location/LocationTracking/MNTurnByTurnLocationTracker.mm";
    v12 = 1024;
    v13 = 1672;
    v14 = 2112;
    v15 = v5;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&dword_1D311E000, v4, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: %@ must implement '%@'", &v8, 0x30u);
  }

  return 0;
}

- (void)traceJumpedInTime
{
  lastKnownGoodLocationOnRoute = self->_lastKnownGoodLocationOnRoute;
  self->_lastKnownGoodLocationOnRoute = 0;

  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&dword_1D311E000, v3, OS_LOG_TYPE_DEBUG, "last known good location on route set to nil", v4, 2u);
  }
}

- (id)_matchedLocationForLocation:(id)location
{
  v30 = *MEMORY[0x1E69E9840];
  locationCopy = location;
  v5 = MNGetPuckTrackingLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    uuid = [locationCopy uuid];
    v26 = 138412290;
    v27 = uuid;
    _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_INFO, "[MN] [%@] - Processing - in MNTurnByTurnLocationTracker::_matchedLocationForLocation:", &v26, 0xCu);
  }

  v7 = MNGetMNLocationTrackerLog();
  v8 = os_signpost_id_generate(v7);
  v9 = v7;
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    LOWORD(v26) = 0;
    _os_signpost_emit_with_name_impl(&dword_1D311E000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "MatchedTBTLocationForLocation", "", &v26, 2u);
  }

  if ([locationCopy type] != 6)
  {
    goto LABEL_15;
  }

  lastMatchedLocation = [(MNLocationTracker *)self lastMatchedLocation];
  if (!lastMatchedLocation)
  {
    v17 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v26) = 0;
      _os_log_impl(&dword_1D311E000, v17, OS_LOG_TYPE_DEFAULT, "Incoming cell location | No previous good location", &v26, 2u);
    }

    goto LABEL_14;
  }

  timestamp = [locationCopy timestamp];
  timestamp2 = [lastMatchedLocation timestamp];
  [timestamp timeIntervalSinceDate:timestamp2];
  v15 = v14;

  GEOConfigGetDouble();
  if (v15 >= v16)
  {
    v17 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [MEMORY[0x1E6985C40] _navigation_stringWithType:{objc_msgSend(lastMatchedLocation, "type")}];
      v26 = 138412546;
      v27 = v18;
      v28 = 2048;
      v29 = v15;
      _os_log_impl(&dword_1D311E000, v17, OS_LOG_TYPE_DEFAULT, "Incoming cell location | Previous location: %@, %0.1fs", &v26, 0x16u);
    }

LABEL_14:
LABEL_15:
    v19 = [objc_alloc(MEMORY[0x1E69A1E70]) initWithCLLocation:locationCopy];
    lastMatchedLocation = [(MNTurnByTurnLocationTracker *)self _overrideLocationForLocation:v19];

    v20 = [(GEONavigationMapMatcher *)self->_mapMatcher matchLocation:lastMatchedLocation transportType:[(MNLocationTracker *)self transportType]];
    v21 = [(MNTurnByTurnLocationTracker *)self _matchedLocationForMatchResult:v20 originalLocation:locationCopy];
    v22 = v10;
    v23 = v22;
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
    {
      LOWORD(v26) = 0;
      _os_signpost_emit_with_name_impl(&dword_1D311E000, v23, OS_SIGNPOST_INTERVAL_END, v8, "MatchedTBTLocationForLocation", "", &v26, 2u);
    }

    goto LABEL_21;
  }

  v23 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = [MEMORY[0x1E6985C40] _navigation_stringWithType:{objc_msgSend(lastMatchedLocation, "type")}];
    v26 = 138412546;
    v27 = v24;
    v28 = 2048;
    v29 = v15;
    _os_log_impl(&dword_1D311E000, v23, OS_LOG_TYPE_DEFAULT, "Ignoring cell location | Previous location: %@, %0.1fs", &v26, 0x16u);
  }

  v21 = 0;
  v20 = v23;
LABEL_21:

  return v21;
}

- (void)updateLocation:(id)location
{
  locationCopy = location;
  v6.receiver = self;
  v6.super_class = MNTurnByTurnLocationTracker;
  [(MNLocationTracker *)&v6 updateLocation:locationCopy];
  lastMatchedLocation = [(MNLocationTracker *)self lastMatchedLocation];
  if ([(MNTurnByTurnLocationTracker *)self hasArrivedAtFinalDestination])
  {
    [(MNArrivalUpdater *)self->_arrivalUpdater updateForLocation:lastMatchedLocation];
  }

  else if (lastMatchedLocation == locationCopy)
  {
    [(MNTurnByTurnLocationTracker *)self _updateStateForLocation:lastMatchedLocation];
    [(MNArrivalUpdater *)self->_arrivalUpdater updateForLocation:lastMatchedLocation];
    if ([(MNLocationTracker *)self state]== 2)
    {
      if (self->_pendingRequest && self->_rerouteReason == 1)
      {
        [(MNTurnByTurnLocationTracker *)self _cancelPendingRerouteRequest];
      }

      else
      {
        [(MNTurnByTurnLocationTracker *)self _handleWaypointRerouteForLocation:lastMatchedLocation];
      }
    }

    else if ([(MNLocationTracker *)self state]== 4)
    {
      [(MNTurnByTurnLocationTracker *)self _handleOffRouteForLocation:lastMatchedLocation];
    }

    [(MNTurnByTurnLocationTracker *)self _updateSwitchTransportTypeForLocation:lastMatchedLocation];
    [(MNTrafficIncidentAlertUpdater *)self->_trafficIncidentAlertUpdater updateForLocation:locationCopy];
    [(MNTurnByTurnLocationTracker *)self _updateForLocation:lastMatchedLocation];
    if (![(MNLocationTracker *)self hasArrived])
    {
      [(MNTurnByTurnLocationTracker *)self _sendRouteHintForLocation:lastMatchedLocation];
    }
  }
}

- (void)stopTracking
{
  [(MNLocationTracker *)self _setState:0];
  [(MNOfflineCoordinator *)self->_offlineCoordinator setDelegate:0];
  [(MNOfflineCoordinator *)self->_offlineCoordinator stop];
  offlineCoordinator = self->_offlineCoordinator;
  self->_offlineCoordinator = 0;

  [(MNTrafficIncidentAlertUpdater *)self->_trafficIncidentAlertUpdater clearAlerts];
  [(MNTrafficIncidentAlertUpdater *)self->_trafficIncidentAlertUpdater setDelegate:0];
  trafficIncidentAlertUpdater = self->_trafficIncidentAlertUpdater;
  self->_trafficIncidentAlertUpdater = 0;

  [(MNArrivalUpdater *)self->_arrivalUpdater setDelegate:0];
  arrivalUpdater = self->_arrivalUpdater;
  self->_arrivalUpdater = 0;

  [(GEODirectionsServiceRequest *)self->_pendingRequest cancel];
  rerouteDates = self->_rerouteDates;
  self->_rerouteDates = 0;

  previousRerouteLocation = self->_previousRerouteLocation;
  self->_previousRerouteLocation = 0;

  [(MNTurnByTurnLocationTracker *)self _sendRouteHintForLocation:0];
}

- (void)startTrackingWithInitialLocation:(id)location targetLegIndex:(unint64_t)index
{
  v41 = *MEMORY[0x1E69E9840];
  locationCopy = location;
  v36.receiver = self;
  v36.super_class = MNTurnByTurnLocationTracker;
  [(MNLocationTracker *)&v36 startTrackingWithInitialLocation:locationCopy targetLegIndex:index];
  navigationSession = [(MNLocationTracker *)self navigationSession];
  routeManager = [navigationSession routeManager];
  currentRoute = [routeManager currentRoute];

  v10 = +[MNTimeManager currentDate];
  startDate = self->_startDate;
  self->_startDate = v10;

  origin = [currentRoute origin];
  latLng = [origin latLng];
  [latLng coordinate];
  self->_originCoordinate.latitude = v14;
  self->_originCoordinate.longitude = v15;

  v16 = objc_alloc_init(MNArrivalUpdater);
  arrivalUpdater = self->_arrivalUpdater;
  self->_arrivalUpdater = v16;

  [(MNArrivalUpdater *)self->_arrivalUpdater setDelegate:self];
  navigationSessionState = [(MNLocationTracker *)self navigationSessionState];
  [(MNArrivalUpdater *)self->_arrivalUpdater setNavigationSessionState:navigationSessionState];

  [(MNArrivalUpdater *)self->_arrivalUpdater start];
  self->_lastArrivalLegIndex = 0x7FFFFFFFFFFFFFFFLL;
  if (index == 0x7FFFFFFFFFFFFFFFLL)
  {
    index = 0;
  }

  uniqueRouteID = [currentRoute uniqueRouteID];
  routeID = [locationCopy routeID];
  v21 = [uniqueRouteID isEqual:routeID];

  if (v21 && [locationCopy state] == 1)
  {
    v22 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      routeMatch = [locationCopy routeMatch];
      [routeMatch routeCoordinate];
      v24 = GEOPolylineCoordinateAsShortString();
      *buf = 138412546;
      v38 = v24;
      v39 = 1024;
      indexCopy = index;
      _os_log_impl(&dword_1D311E000, v22, OS_LOG_TYPE_DEFAULT, "Starting location tracking with a route matched location at [%@], targetLegIndex: %d", buf, 0x12u);
    }

    v25 = 2;
    v26 = v22;
  }

  else
  {
    legs = [currentRoute legs];
    v26 = [legs objectAtIndexedSubscript:index];

    origin2 = [v26 origin];
    v29 = [(MNTurnByTurnLocationTracker *)self _isLocation:locationCopy nearOrigin:origin2];

    if (v29)
    {
      v22 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v38) = index;
        _os_log_impl(&dword_1D311E000, v22, OS_LOG_TYPE_DEFAULT, "Starting location tracking from PROCEEDING_TO_ROUTE. targetLegIndex: %d", buf, 8u);
      }

      v25 = 1;
    }

    else
    {
      v22 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v38) = index;
        _os_log_impl(&dword_1D311E000, v22, OS_LOG_TYPE_DEFAULT, "Starting location tracking from OFF_ROUTE_OFF_ROAD state. targetLegIndex: %d", buf, 8u);
      }

      v25 = 3;
    }
  }

  [(MNLocationTracker *)self _setState:v25];
  [(MNLocationTracker *)self _setTargetLegIndex:index];
  [(GEONavigationMapMatcher *)self->_mapMatcher setTargetLegIndex:index];
  if (([(MNLocationTracker *)self navigationCapabilities]& 0x10) != 0)
  {
    v31 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1D311E000, v31, OS_LOG_TYPE_DEFAULT, "Starting offline coordinator.", buf, 2u);
    }

    v32 = [_TtC10Navigation20MNOfflineCoordinator alloc];
    navigationSessionState2 = [(MNLocationTracker *)self navigationSessionState];
    v34 = [(MNOfflineCoordinator *)v32 initWithNavigationSessionState:navigationSessionState2];
    offlineCoordinator = self->_offlineCoordinator;
    self->_offlineCoordinator = v34;

    [(MNOfflineCoordinator *)self->_offlineCoordinator setDelegate:self];
    [(MNOfflineCoordinator *)self->_offlineCoordinator start];
  }

  else
  {
    v30 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1D311E000, v30, OS_LOG_TYPE_DEFAULT, "Not starting offline coordinator because navigation capability is disabled.", buf, 2u);
    }
  }
}

- (void)setNavigationSessionState:(id)state
{
  stateCopy = state;
  v6.receiver = self;
  v6.super_class = MNTurnByTurnLocationTracker;
  [(MNLocationTracker *)&v6 setNavigationSessionState:stateCopy];
  [(MNArrivalUpdater *)self->_arrivalUpdater setNavigationSessionState:stateCopy];
  navigationSessionState = [(MNLocationTracker *)self navigationSessionState];
  [(MNOfflineCoordinator *)self->_offlineCoordinator setNavigationSessionState:navigationSessionState];
}

- (BOOL)_allowRerouteForLocation:(id)location outError:(id *)error
{
  v53 = *MEMORY[0x1E69E9840];
  locationCopy = location;
  timestamp = [locationCopy timestamp];

  if (!timestamp)
  {
    LOBYTE(error) = 1;
    goto LABEL_22;
  }

  GEOConfigGetDouble();
  v9 = v8;
  coordinate = [locationCopy coordinate];
  v54.var2 = self->_originCoordinate.latitude;
  v56.var0 = self->_originCoordinate.longitude;
  v12 = GEOCalculateDistance(coordinate, v11, v54, v56);
  if (v12 < v9)
  {
    v13 = MNGetMNLocationTrackerLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v52 = v12;
      _os_log_impl(&dword_1D311E000, v13, OS_LOG_TYPE_DEFAULT, "Suppressing reroute because current location is too close to origin (%0.1f meters)", buf, 0xCu);
    }

    goto LABEL_21;
  }

  if (![(NSMutableArray *)self->_rerouteDates count])
  {
    goto LABEL_11;
  }

  GEOConfigGetDouble();
  v15 = v14;
  [locationCopy coordinate];
  v17 = v16;
  v19 = v18;
  coordinate2 = [(MNLocation *)self->_previousRerouteLocation coordinate];
  v55.var2 = v21;
  v57.var0 = v22;
  v55.var0 = v17;
  v55.var1 = v19;
  v24 = GEOCalculateDistance(coordinate2, v23, v55, v57);
  if (v24 < v15)
  {
    if (error)
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Suppressing reroute because the current location is too close to the previous reroute location (%0.1f meters)", *&v24];
      v25 = MEMORY[0x1E696ABC0];
      v49 = *MEMORY[0x1E696A278];
      v50 = v13;
      v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
      *error = [v25 _navigation_errorWithCode:14 userInfo:v26];

LABEL_21:
      LOBYTE(error) = 0;
      goto LABEL_22;
    }

    goto LABEL_22;
  }

  GEOConfigGetDouble();
  v28 = v27;
  timestamp2 = [locationCopy timestamp];
  lastObject = [(NSMutableArray *)self->_rerouteDates lastObject];
  [timestamp2 timeIntervalSinceDate:lastObject];
  v32 = v31;

  if (v32 >= v28)
  {
LABEL_11:
    UInteger = GEOConfigGetUInteger();
    if (UInteger && [(NSMutableArray *)self->_rerouteDates count]>= UInteger && (![(MNArrivalUpdater *)self->_arrivalUpdater isInPreArrivalRegion]|| GEOConfigGetBOOL()))
    {
      v34 = [(NSMutableArray *)self->_rerouteDates count];
      if (v34 - UInteger < [(NSMutableArray *)self->_rerouteDates count])
      {
        v13 = [(NSMutableArray *)self->_rerouteDates objectAtIndexedSubscript:?];
        timestamp3 = [locationCopy timestamp];
        [timestamp3 timeIntervalSinceDate:v13];
        v37 = v36;

        GEOConfigGetDouble();
        if (v37 < v38)
        {
          if (error)
          {
            v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Throttling reroute because too many (%d) have been requested in a short interval (%0.1f seconds)", -[NSMutableArray count](self->_rerouteDates, "count"), *&v37];
            v43 = MEMORY[0x1E696ABC0];
            v45 = *MEMORY[0x1E696A278];
            v46 = v42;
            v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
            *error = [v43 _navigation_errorWithCode:15 userInfo:v44];
          }

          goto LABEL_21;
        }
      }
    }

    LOBYTE(error) = [(MNTurnByTurnLocationTracker *)self _allowRerouteForLocation:locationCopy];
    goto LABEL_22;
  }

  if (error)
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Suppressing reroute because the previous reroute is too recent (%0.1f seconds)", *&v32];
    v39 = MEMORY[0x1E696ABC0];
    v47 = *MEMORY[0x1E696A278];
    v48 = v13;
    v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
    *error = [v39 _navigation_errorWithCode:14 userInfo:v40];

    goto LABEL_21;
  }

LABEL_22:

  return error;
}

- (void)_handleOffRouteForLocation:(id)location
{
  v49 = *MEMORY[0x1E69E9840];
  locationCopy = location;
  if (self->_pendingRequest)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Attempting to reroute while another reroute is in progress"];
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      v40 = "[MNTurnByTurnLocationTracker _handleOffRouteForLocation:]";
      v41 = 2080;
      v42 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Location/LocationTracking/MNTurnByTurnLocationTracker.mm";
      v43 = 1024;
      v44 = 1374;
      v45 = 2080;
      v46 = "NO";
      v47 = 2112;
      v48 = v6;
      _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s) %@", buf, 0x30u);
    }
  }

  else if (-[MNArrivalUpdater isInPreArrivalRegion](self->_arrivalUpdater, "isInPreArrivalRegion") && ([locationCopy horizontalAccuracy], v9 = v8, GEOConfigGetDouble(), v9 >= v10))
  {
    v29 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      [locationCopy horizontalAccuracy];
      v31 = v30;
      GEOConfigGetDouble();
      *buf = 134218240;
      v40 = v31;
      v41 = 2048;
      v42 = v32;
      _os_log_impl(&dword_1D311E000, v29, OS_LOG_TYPE_DEFAULT, "Off route but not rerouting because location is in pre-arrival region and location accuracy (%gm) is worse than the required accuracy (%gm)", buf, 0x16u);
    }
  }

  else if (([(MNLocationTracker *)self navigationCapabilities]& 2) != 0)
  {
    timestamp = [locationCopy timestamp];

    if (!timestamp)
    {
      v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Location has no timestamp."];
      v34 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        v40 = "[MNTurnByTurnLocationTracker _handleOffRouteForLocation:]";
        v41 = 2080;
        v42 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Location/LocationTracking/MNTurnByTurnLocationTracker.mm";
        v43 = 1024;
        v44 = 1389;
        v45 = 2080;
        v46 = "location.timestamp != nil";
        v47 = 2112;
        v48 = v33;
        _os_log_impl(&dword_1D311E000, v34, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s) %@", buf, 0x30u);
      }
    }

    timestamp2 = [locationCopy timestamp];
    v14 = timestamp2 == 0;

    if (!v14)
    {
      rerouteDates = self->_rerouteDates;
      if (!rerouteDates)
      {
        array = [MEMORY[0x1E695DF70] array];
        v17 = self->_rerouteDates;
        self->_rerouteDates = array;

        rerouteDates = self->_rerouteDates;
      }

      timestamp3 = [locationCopy timestamp];
      [(NSMutableArray *)rerouteDates addObject:timestamp3];

      v19 = [(NSMutableArray *)self->_rerouteDates count];
      if (v19 > GEOConfigGetUInteger())
      {
        [(NSMutableArray *)self->_rerouteDates removeObjectAtIndex:0];
      }
    }

    objc_storeStrong(&self->_previousRerouteLocation, location);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __58__MNTurnByTurnLocationTracker__handleOffRouteForLocation___block_invoke;
    aBlock[3] = &unk_1E842BAA8;
    aBlock[4] = self;
    v20 = _Block_copy(aBlock);
    navigationSession = [(MNLocationTracker *)self navigationSession];
    traceManager = [navigationSession traceManager];
    tracePlayer = [traceManager tracePlayer];

    if (tracePlayer && GEOConfigGetBOOL() && ([tracePlayer position], v25 = v24, v36[0] = MEMORY[0x1E69E9820], v36[1] = 3221225472, v36[2] = __58__MNTurnByTurnLocationTracker__handleOffRouteForLocation___block_invoke_95, v36[3] = &unk_1E842BAD0, v36[4] = self, v37 = v20, v26 = objc_msgSend(tracePlayer, "requestDirectionsNearTimestamp:withHandler:", v36, v25), v37, (v26 & 1) != 0))
    {
      v27 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1D311E000, v27, OS_LOG_TYPE_DEFAULT, "Rerouting using a response from the navtrace", buf, 2u);
      }

      self->_rerouteReason = 1;
      delegate = [(MNLocationTracker *)self delegate];
      [delegate locationTrackerWillReroute:self];
    }

    else
    {
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __58__MNTurnByTurnLocationTracker__handleOffRouteForLocation___block_invoke_96;
      v35[3] = &unk_1E842B8F8;
      v35[4] = self;
      [(MNTurnByTurnLocationTracker *)self _requestRerouteWithReason:1 requestHandler:v35 completionHandler:0 errorHandler:v20];
    }

    [(MNLocationTracker *)self _setState:5];
  }

  else
  {
    v11 = MNGetMNLocationTrackerLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1D311E000, v11, OS_LOG_TYPE_DEFAULT, "Rerouting navigation capability is not enabled (you're probably running a test).", buf, 2u);
    }
  }
}

void __58__MNTurnByTurnLocationTracker__handleOffRouteForLocation___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = [*(a1 + 32) delegate];
    [v7 locationTracker:*(a1 + 32) didFailRerouteWithError:v6];
LABEL_7:

    goto LABEL_8;
  }

  if (([v5 isNavigable] & 1) == 0)
  {
    v8 = MEMORY[0x1E696ABC0];
    v9 = GEOErrorDomain();
    v7 = [v8 errorWithDomain:v9 code:-403 userInfo:0];

    v10 = [*(a1 + 32) delegate];
    [v10 locationTracker:*(a1 + 32) didFailRerouteWithError:v7];

    [*(a1 + 32) _setState:8];
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_impl(&dword_1D311E000, v11, OS_LOG_TYPE_ERROR, "No longer inside a navigable area", v12, 2u);
    }

    goto LABEL_7;
  }

LABEL_8:
}

void __58__MNTurnByTurnLocationTracker__handleOffRouteForLocation___block_invoke_95(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v15 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (v13 || [v12 status])
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    [*(a1 + 32) _handleSuccessfulRerouteRequest:v11 response:v12 waypoints:v15];
  }
}

void __58__MNTurnByTurnLocationTracker__handleOffRouteForLocation___block_invoke_96(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setRequestType:{objc_msgSend(*(a1 + 32), "_offRouteRequestType")}];
}

- (void)_handleWaypointRerouteForLocation:(id)location
{
  v41 = *MEMORY[0x1E69E9840];
  locationCopy = location;
  navigationSession = [(MNLocationTracker *)self navigationSession];
  traceManager = [navigationSession traceManager];
  tracePlayer = [traceManager tracePlayer];

  if (tracePlayer && (GEOConfigGetBOOL() & 1) != 0)
  {
    [tracePlayer position];
    v9 = [tracePlayer guidanceEventNearTimestamp:?];
    if ([v9 eventType] == 16 || objc_msgSend(v9, "eventType") == 17)
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __65__MNTurnByTurnLocationTracker__handleWaypointRerouteForLocation___block_invoke;
      aBlock[3] = &unk_1E842BAA8;
      aBlock[4] = self;
      v10 = _Block_copy(aBlock);
      [tracePlayer position];
      v12 = v11;
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __65__MNTurnByTurnLocationTracker__handleWaypointRerouteForLocation___block_invoke_86;
      v28[3] = &unk_1E842BAD0;
      v13 = v10;
      v28[4] = self;
      v29 = v13;
      if ([tracePlayer requestDirectionsNearTimestamp:v28 withHandler:v12])
      {
        [(MNTurnByTurnLocationTracker *)self _cancelPendingRerouteRequest];
        timestamp = [locationCopy timestamp];
        v15 = timestamp == 0;

        if (v15)
        {
          v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Location has no timestamp."];
          v27 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            *buf = 136316162;
            v32 = "[MNTurnByTurnLocationTracker _handleWaypointRerouteForLocation:]";
            v33 = 2080;
            v34 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Location/LocationTracking/MNTurnByTurnLocationTracker.mm";
            v35 = 1024;
            v36 = 1331;
            v37 = 2080;
            v38 = "location.timestamp != nil";
            v39 = 2112;
            v40 = v26;
            _os_log_impl(&dword_1D311E000, v27, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s) %@", buf, 0x30u);
          }
        }

        timestamp2 = [locationCopy timestamp];
        v17 = timestamp2 == 0;

        if (!v17)
        {
          rerouteDates = self->_rerouteDates;
          if (!rerouteDates)
          {
            array = [MEMORY[0x1E695DF70] array];
            v20 = self->_rerouteDates;
            self->_rerouteDates = array;

            rerouteDates = self->_rerouteDates;
          }

          timestamp3 = [locationCopy timestamp];
          [(NSMutableArray *)rerouteDates addObject:timestamp3];

          v22 = [(NSMutableArray *)self->_rerouteDates count];
          if (v22 > GEOConfigGetUInteger())
          {
            [(NSMutableArray *)self->_rerouteDates removeObjectAtIndex:0];
          }
        }

        objc_storeStrong(&self->_previousRerouteLocation, location);
        v23 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1D311E000, v23, OS_LOG_TYPE_DEFAULT, "Rerouting using a response from the navtrace", buf, 2u);
        }

        v24 = [v9 eventType] - 15;
        if (v24 <= 2)
        {
          self->_rerouteReason = qword_1D328D498[v24];
        }

        delegate = [(MNLocationTracker *)self delegate];
        [delegate locationTrackerWillReroute:self];

        [(MNLocationTracker *)self _setState:5];
      }
    }
  }
}

void __65__MNTurnByTurnLocationTracker__handleWaypointRerouteForLocation___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = [*(a1 + 32) delegate];
    [v7 locationTracker:*(a1 + 32) didFailRerouteWithError:v6];
LABEL_7:

    goto LABEL_8;
  }

  if (([v5 isNavigable] & 1) == 0)
  {
    v8 = MEMORY[0x1E696ABC0];
    v9 = GEOErrorDomain();
    v7 = [v8 errorWithDomain:v9 code:-403 userInfo:0];

    v10 = [*(a1 + 32) delegate];
    [v10 locationTracker:*(a1 + 32) didFailRerouteWithError:v7];

    [*(a1 + 32) _setState:8];
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_impl(&dword_1D311E000, v11, OS_LOG_TYPE_ERROR, "No longer inside a navigable area", v12, 2u);
    }

    goto LABEL_7;
  }

LABEL_8:
}

void __65__MNTurnByTurnLocationTracker__handleWaypointRerouteForLocation___block_invoke_86(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v15 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (v13 || [v12 status])
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    [*(a1 + 32) _handleSuccessfulRerouteRequest:v11 response:v12 waypoints:v15];
  }
}

- (unint64_t)_offRouteRequestType
{
  navigationSessionState = [(MNLocationTracker *)self navigationSessionState];
  currentRouteInfo = [navigationSessionState currentRouteInfo];
  route = [currentRouteInfo route];
  source = [route source];

  if ((source & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    return 5;
  }

  else
  {
    return 4;
  }
}

- (void)_cancelPendingRerouteRequest
{
  v10 = *MEMORY[0x1E69E9840];
  if (self->_pendingRequest)
  {
    v3 = MNGetMNLocationTrackerLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = self->_rerouteReason - 1;
      if (v4 > 0xF)
      {
        v5 = @"Unknown";
      }

      else
      {
        v5 = off_1E842BB80[v4];
      }

      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&dword_1D311E000, v3, OS_LOG_TYPE_DEFAULT, "Cancelling pending reroute of type: %@", &v8, 0xCu);
    }

    [(GEODirectionsServiceRequest *)self->_pendingRequest cancel];
    pendingRequest = self->_pendingRequest;
    self->_pendingRequest = 0;

    delegate = [(MNLocationTracker *)self delegate];
    [delegate locationTrackerDidCancelReroute:self];
  }
}

- (void)_updateForNewRoute:(id)route rerouteReason:(unint64_t)reason request:(id)request response:(id)response
{
  v76 = *MEMORY[0x1E69E9840];
  routeCopy = route;
  requestCopy = request;
  responseCopy = response;
  if (routeCopy && ([routeCopy route], v11 = objc_claimAutoreleasedReturnValue(), v11, v11))
  {
    currentRouteInfo = routeCopy;
  }

  else
  {
    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      if (reason - 1 > 0xF)
      {
        v13 = @"Unknown";
      }

      else
      {
        v13 = off_1E842BB80[reason - 1];
      }

      *buf = 138412802;
      v71 = v13;
      v72 = 2112;
      v73 = requestCopy;
      v74 = 2112;
      v75 = responseCopy;
    }

    navigationSession = [(MNLocationTracker *)self navigationSession];
    routeManager = [navigationSession routeManager];
    currentRouteInfo = [routeManager currentRouteInfo];

    v16 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v71 = "[MNTurnByTurnLocationTracker _updateForNewRoute:rerouteReason:request:response:]";
      v72 = 2080;
      v73 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Location/LocationTracking/MNTurnByTurnLocationTracker.mm";
      v74 = 1024;
      LODWORD(v75) = 1174;
      _os_log_impl(&dword_1D311E000, v16, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: Hit an unreachable code path", buf, 0x1Cu);
    }
  }

  navigationSession2 = [(MNLocationTracker *)self navigationSession];
  routeManager2 = [navigationSession2 routeManager];
  currentRoute = [routeManager2 currentRoute];

  route = [currentRouteInfo route];
  lastKnownGoodLocationOnRoute = self->_lastKnownGoodLocationOnRoute;
  self->_lastKnownGoodLocationOnRoute = 0;

  if (reason - 8 <= 2)
  {
    arrivalInfo = [(MNLocationTracker *)self arrivalInfo];
    v21 = [arrivalInfo arrivalState] == 0;

    if (!v21)
    {
      v22 = 5;
LABEL_24:
      [(MNArrivalUpdater *)self->_arrivalUpdater forceDepartureForCurrentLeg:v22];
LABEL_32:
      v23 = 1;
      goto LABEL_33;
    }
  }

  v23 = 1;
  if (reason <= 10)
  {
    if (reason == 1)
    {
      targetLegIndex = [(MNLocationTracker *)self targetLegIndex];
      legs = [currentRoute legs];
      if (targetLegIndex >= [legs count])
      {
        destination = 0;
      }

      else
      {
        legs2 = [currentRoute legs];
        v27 = [legs2 objectAtIndexedSubscript:{-[MNLocationTracker targetLegIndex](self, "targetLegIndex")}];
        destination = [v27 destination];
      }

      legs3 = [route legs];
      firstObject = [legs3 firstObject];
      destination2 = [firstObject destination];

      uniqueWaypointID = [destination uniqueWaypointID];
      uniqueWaypointID2 = [destination2 uniqueWaypointID];
      v34 = uniqueWaypointID;
      v35 = uniqueWaypointID2;
      if (v34 | v35)
      {
        v36 = v35;
        v37 = [v34 isEqual:v35];

        if ((v37 & 1) == 0)
        {
          [(MNArrivalUpdater *)self->_arrivalUpdater forceDepartureForCurrentLeg:4];
        }
      }

      goto LABEL_32;
    }

    if (reason != 3)
    {
      goto LABEL_33;
    }

    goto LABEL_22;
  }

  switch(reason)
  {
    case 0xBuLL:
      goto LABEL_22;
    case 0xDuLL:
      v22 = 6;
      goto LABEL_24;
    case 0x10uLL:
LABEL_22:
      v23 = 0;
      break;
  }

LABEL_33:
  v38 = +[MNLocationManager shared];
  lastLocation = [v38 lastLocation];

  v40 = [MNLocation alloc];
  rawLocation = [lastLocation rawLocation];
  v42 = [(MNLocation *)v40 initWithRawLocation:rawLocation];

  v43 = objc_alloc(MEMORY[0x1E69A1E70]);
  rawLocation2 = [lastLocation rawLocation];
  v45 = [v43 initWithCLLocation:rawLocation2];

  v46 = [(GEONavigationMapMatcher *)self->_mapMatcher updateForReroute:route location:v45 routeStartsFromLocation:v23];
  if ([v46 type])
  {
    [(MNLocationTracker *)self _setState:3];
LABEL_40:
    legIndex = 0;
    goto LABEL_41;
  }

  [(MNLocationTracker *)self _setState:2];
  if (reason != 11)
  {
    goto LABEL_40;
  }

  legs4 = [route legs];
  v48 = [legs4 count] > 1;

  if (!v48)
  {
    goto LABEL_40;
  }

  v49 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1D311E000, v49, OS_LOG_TYPE_DEFAULT, "User selected an alternate multi-waypoint route. Attempting to guess target leg index from route match.", buf, 2u);
  }

  routeMatch = [v46 routeMatch];
  legIndex = [routeMatch legIndex];

LABEL_41:
  [(MNLocationTracker *)self _setTargetLegIndex:legIndex];
  v52 = [(MNTurnByTurnLocationTracker *)self _matchedLocationForMatchResult:v46 originalLocation:v42];
  [(MNLocationTracker *)self _updateMatchedLocation:v52];
  v53 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
  {
    routeMatch2 = [v52 routeMatch];
    [routeMatch2 routeCoordinate];
    v55 = GEOPolylineCoordinateAsShortString();
    [v52 coordinate];
    v57 = v56;
    [v52 coordinate];
    *buf = 138412802;
    v71 = v55;
    v72 = 2048;
    v73 = v57;
    v74 = 2048;
    v75 = v58;
    _os_log_impl(&dword_1D311E000, v53, OS_LOG_TYPE_DEFAULT, "Handling reroute. Location on new route: [%@], %f, %f", buf, 0x20u);
  }

  v59 = objc_alloc(MEMORY[0x1E69A2330]);
  _auditToken = [(MNLocationTracker *)self _auditToken];
  v61 = [v59 initWithRoute:route auditToken:_auditToken];
  pathMatcher = self->_pathMatcher;
  self->_pathMatcher = v61;

  trafficIncidentAlertUpdater = self->_trafficIncidentAlertUpdater;
  route2 = [currentRouteInfo route];
  [(MNTrafficIncidentAlertUpdater *)trafficIncidentAlertUpdater updateForReroute:route2];

  LODWORD(route2) = [route transportType];
  if (route2 == [(MNLocationTracker *)self transportType])
  {
    [(MNTurnByTurnLocationTracker *)self _updateForReroute:currentRouteInfo rerouteReason:reason request:requestCopy response:responseCopy];
  }

  else
  {
    [(MNTurnByTurnLocationTracker *)self _updateForNewTransportType:currentRouteInfo rerouteReason:reason request:requestCopy response:responseCopy];
  }
}

- (void)_handleSuccessfulRerouteRequest:(id)request response:(id)response waypoints:(id)waypoints
{
  requestCopy = request;
  responseCopy = response;
  waypointsCopy = waypoints;
  navigationSessionState = [(MNLocationTracker *)self navigationSessionState];
  currentRouteInfo = [navigationSessionState currentRouteInfo];
  route = [currentRouteInfo route];

  v13 = objc_alloc(MEMORY[0x1E69A2538]);
  navigationSession = [(MNLocationTracker *)self navigationSession];
  routeManager = [navigationSession routeManager];
  routeAttributes = [routeManager routeAttributes];
  v17 = [v13 initWithWaypoints:waypointsCopy routeAttributes:routeAttributes directionsResponse:responseCopy directionsRequest:requestCopy];

  anchorPoints = [route anchorPoints];
  [v17 setAnchorPoints:anchorPoints];

  mainRouteInfo = [v17 mainRouteInfo];
  [(MNTurnByTurnLocationTracker *)self _updateForNewRoute:mainRouteInfo rerouteReason:self->_rerouteReason request:requestCopy response:responseCopy];
}

- (id)_rerouteRequestParametersForLocation:(id)location transportType:(int)type
{
  v4 = *&type;
  v51 = *MEMORY[0x1E69E9840];
  locationCopy = location;
  if (v4 <= 3 && v4 != 1)
  {
    navigationSession = [(MNLocationTracker *)self navigationSession];
    routeManager = [navigationSession routeManager];

    routeMatch = [locationCopy routeMatch];
    v10 = -[MNTurnByTurnLocationTracker _routeAttributesFromRouteCoordinate:](self, "_routeAttributesFromRouteCoordinate:", [routeMatch routeCoordinate]);

    if (v10)
    {
      if ([v10 mainTransportType]== v4)
      {
LABEL_14:
        v15 = objc_alloc_init(MEMORY[0x1E69A1D30]);
        v17 = MNNavigationQueue();
        [v15 setCallbackQueue:v17];

        v18 = [objc_alloc(MEMORY[0x1E69A1E70]) initWithCLLocation:locationCopy];
        [v15 setCurrentLocation:v18];

        currentRoute = [routeManager currentRoute];
        [v15 setCurrentRoute:currentRoute];

        v20 = [MNFamiliarRouteProvider alloc];
        timestamp = [locationCopy timestamp];
        v22 = [(MNFamiliarRouteProvider *)v20 initWithPurpose:0 reason:@"Navigation Rerouting" date:timestamp];
        [v15 setFamiliarRouteProvider:v22];

        routeMatch2 = [locationCopy routeMatch];
        [v15 setRouteCoordinate:{objc_msgSend(routeMatch2, "routeCoordinate")}];

        [v15 setStartingLegIndex:{-[MNLocationTracker targetLegIndex](self, "targetLegIndex")}];
        [v15 setTransportType:v4];
        [v15 setRouteAttributes:v10];
        commonOptions = [routeManager commonOptions];
        [v15 setCommonOptions:commonOptions];

        routeMatch3 = [locationCopy routeMatch];
        pathSegment = [routeMatch3 pathSegment];
        [v15 setPathSegment:pathSegment];

        [v15 setHasVisitedFirstStop:{-[MNLocationTracker hasVisitedFirstStop](self, "hasVisitedFirstStop")}];
        _auditToken = [(MNLocationTracker *)self _auditToken];
        [v15 setAuditToken:_auditToken];

        requestingAppIdentifier = [routeManager requestingAppIdentifier];
        [v15 setRequestingAppIdentifier:requestingAppIdentifier];

        navigationSessionState = [(MNLocationTracker *)self navigationSessionState];
        traits = [navigationSessionState traits];
        v31 = [traits copy];
        [v15 setTraits:v31];

        currentRouteInfo = [routeManager currentRouteInfo];
        displayETAInfo = [currentRouteInfo displayETAInfo];
        [v15 setDisplayRemainingTimeToDestination:{(60 * objc_msgSend(displayETAInfo, "displayRemainingMinutesToEndOfRoute"))}];

        navigationSession2 = [(MNLocationTracker *)self navigationSession];
        recentLocationHistory = [navigationSession2 recentLocationHistory];
        [v15 setRecentLocationHistory:recentLocationHistory];

        objc_initWeak(buf, self);
        v39[0] = MEMORY[0x1E69E9820];
        v39[1] = 3221225472;
        v39[2] = __82__MNTurnByTurnLocationTracker__rerouteRequestParametersForLocation_transportType___block_invoke;
        v39[3] = &unk_1E842BA80;
        objc_copyWeak(&v40, buf);
        [v15 setRequestCallback:v39];
        objc_destroyWeak(&v40);
        objc_destroyWeak(buf);
        goto LABEL_15;
      }
    }

    else
    {
      v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Making a directions request with nil routeAttributes"];
      v38 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        v42 = "[MNTurnByTurnLocationTracker _rerouteRequestParametersForLocation:transportType:]";
        v43 = 2080;
        v44 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Location/LocationTracking/MNTurnByTurnLocationTracker.mm";
        v45 = 1024;
        v46 = 1111;
        v47 = 2080;
        v48 = "routeAttributes != nil";
        v49 = 2112;
        v50 = v37;
        _os_log_impl(&dword_1D311E000, v38, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s) %@", buf, 0x30u);
      }
    }

    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = off_1E842BB28[v4];
      mainTransportType = [v10 mainTransportType];
      if (mainTransportType >= 7)
      {
        v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", mainTransportType];
      }

      else
      {
        v14 = off_1E842BB48[mainTransportType];
      }

      *buf = 138412546;
      v42 = v12;
      v43 = 2112;
      v44 = v14;
      _os_log_impl(&dword_1D311E000, v11, OS_LOG_TYPE_DEFAULT, "Reroute requested for (%@) but previous route's transport type was (%@). Creating new route attributes", buf, 0x16u);
    }

    v16 = [MEMORY[0x1E69A2500] defaultRouteAttributesForTransportType:v4];

    v10 = v16;
    goto LABEL_14;
  }

  routeManager = [MEMORY[0x1E696AEC0] stringWithFormat:@"Reroute in turn by turn only supported for driving, walking, and cycling transport types."];
  v10 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 136316162;
    v42 = "[MNTurnByTurnLocationTracker _rerouteRequestParametersForLocation:transportType:]";
    v43 = 2080;
    v44 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Location/LocationTracking/MNTurnByTurnLocationTracker.mm";
    v45 = 1024;
    v46 = 1104;
    v47 = 2080;
    v48 = "NO";
    v49 = 2112;
    v50 = routeManager;
    _os_log_impl(&dword_1D311E000, v10, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s) %@", buf, 0x30u);
  }

  v15 = 0;
LABEL_15:

  return v15;
}

void __82__MNTurnByTurnLocationTracker__rerouteRequestParametersForLocation_transportType___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained navigationSessionState];
    v7 = [v6 userIncidentReports];
    v8 = [v7 mutableCopy];
    [v3 setUserIncidentReports:v8];

    v9 = [v5 navigationSession];
    v10 = [v9 serverSessionStateInfo];
    v11 = [v10 sessionState];
    [v3 setSessionState:v11];

    v12 = [v5 navigationSession];
    v13 = [v12 serverSessionStateInfo];
    v14 = [v13 displayedTrafficBanners];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __82__MNTurnByTurnLocationTracker__rerouteRequestParametersForLocation_transportType___block_invoke_2;
    v15[3] = &unk_1E842BA58;
    v16 = v3;
    [v14 enumerateKeysAndObjectsUsingBlock:v15];
  }
}

void __82__MNTurnByTurnLocationTracker__rerouteRequestParametersForLocation_transportType___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = [v12 copy];
  [v6 addDisplayedBannerId:v7];

  if ([v5 length])
  {
    v8 = [*(a1 + 32) clientFeedbackInfo];

    if (!v8)
    {
      v9 = objc_opt_new();
      [*(a1 + 32) setClientFeedbackInfo:v9];
    }

    v10 = [*(a1 + 32) clientFeedbackInfo];
    v11 = [v5 copy];
    [v10 addDisplayedBannerEventInfo:v11];
  }
}

- (id)_routeAttributesFromRouteCoordinate:(PolylineCoordinate)coordinate
{
  v28 = *MEMORY[0x1E69E9840];
  navigationSession = [(MNLocationTracker *)self navigationSession];
  routeManager = [navigationSession routeManager];
  routeAttributes = [routeManager routeAttributes];

  if (routeAttributes && ![routeAttributes mainTransportType])
  {
    array = [MEMORY[0x1E695DF70] array];
    lastMatchedLocation = [(MNLocationTracker *)self lastMatchedLocation];
    _navigation_geoLocation = [lastMatchedLocation _navigation_geoLocation];
    latLng = [_navigation_geoLocation latLng];

    if (latLng)
    {
      [array addObject:latLng];
    }

    navigationSession2 = [(MNLocationTracker *)self navigationSession];
    routeManager2 = [navigationSession2 routeManager];
    currentRoute = [routeManager2 currentRoute];
    v15 = [currentRoute waypointsFromRouteCoordinate:coordinate];

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v16 = v15;
    v17 = [v16 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v17)
    {
      v18 = *v24;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v24 != v18)
          {
            objc_enumerationMutation(v16);
          }

          bestLatLng = [*(*(&v23 + 1) + 8 * i) bestLatLng];

          latLng = bestLatLng;
          if (bestLatLng)
          {
            [array addObject:bestLatLng];
          }
        }

        v17 = [v16 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v17);
    }

    v21 = [[MNRouteAttributes alloc] initWithAttributes:routeAttributes latLngs:array];
    routeAttributes = v21;
  }

  return routeAttributes;
}

- (void)_requestRerouteWithReason:(unint64_t)reason requestHandler:(id)handler completionHandler:(id)completionHandler errorHandler:(id)errorHandler
{
  v22 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  errorHandlerCopy = errorHandler;
  if (handlerCopy)
  {
    [(GEODirectionsServiceRequest *)self->_pendingRequest cancel];
    pendingRequest = self->_pendingRequest;
    self->_pendingRequest = 0;

    lastMatchedLocation = [(MNLocationTracker *)self lastMatchedLocation];
    v15 = [(MNTurnByTurnLocationTracker *)self _rerouteRequestParametersForLocation:lastMatchedLocation transportType:[(MNLocationTracker *)self transportType]];

    handlerCopy[2](handlerCopy, v15);
    [(MNTurnByTurnLocationTracker *)self _requestRerouteWithReason:reason requestParameters:v15 completionHandler:completionHandlerCopy errorHandler:errorHandlerCopy];
  }

  else
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"handler must not be nil"];
    v17 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = 136315394;
      v19 = "handler != nil";
      v20 = 2112;
      v21 = v16;
      _os_log_impl(&dword_1D311E000, v17, OS_LOG_TYPE_ERROR, "Assertion failed: (%s) '%@'", &v18, 0x16u);
    }
  }
}

- (void)_requestRerouteWithReason:(unint64_t)reason requestParameters:(id)parameters completionHandler:(id)handler errorHandler:(id)errorHandler
{
  v39 = *MEMORY[0x1E69E9840];
  parametersCopy = parameters;
  handlerCopy = handler;
  errorHandlerCopy = errorHandler;
  [(GEODirectionsServiceRequest *)self->_pendingRequest cancel];
  pendingRequest = self->_pendingRequest;
  self->_pendingRequest = 0;

  if (([(MNLocationTracker *)self navigationCapabilities]& 2) != 0)
  {
    self->_rerouteReason = reason;
    self->_numOfflineAttempts = 0;
    self->_numOnlineAttempts = 0;
    if (reason != 16)
    {
      delegate = [(MNLocationTracker *)self delegate];
      [delegate locationTrackerWillReroute:self];
    }

    [(MNLocationTracker *)self _setState:5, handlerCopy];
    navigationSession = [(MNLocationTracker *)self navigationSession];
    traceManager = [navigationSession traceManager];
    traceRecorder = [traceManager traceRecorder];

    [traceRecorder timeSinceRecordingBegan];
    v19 = v18;
    mEMORY[0x1E69A1D18] = [MEMORY[0x1E69A1D18] sharedService];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __106__MNTurnByTurnLocationTracker__requestRerouteWithReason_requestParameters_completionHandler_errorHandler___block_invoke;
    v28[3] = &unk_1E842BA30;
    v28[4] = self;
    v13 = traceRecorder;
    v29 = v13;
    v33 = v19;
    v30 = parametersCopy;
    reasonCopy = reason;
    v31 = errorHandlerCopy;
    v32 = handlerCopy;
    v21 = [mEMORY[0x1E69A1D18] requestDirections:v30 handler:v28];
    v22 = self->_pendingRequest;
    self->_pendingRequest = v21;

    v23 = MNGetMNLocationTrackerLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = self->_rerouteReason - 1;
      if (v24 > 0xF)
      {
        v25 = @"Unknown";
      }

      else
      {
        v25 = off_1E842BB80[v24];
      }

      v26 = self->_pendingRequest;
      *buf = 138412546;
      v36 = v25;
      v37 = 2048;
      v38 = v26;
      _os_log_impl(&dword_1D311E000, v23, OS_LOG_TYPE_DEFAULT, "Requesting reroute with reason %@. _pendingRequest = %p", buf, 0x16u);
    }
  }

  else
  {
    v13 = MNGetMNLocationTrackerLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1D311E000, v13, OS_LOG_TYPE_DEFAULT, "Rerouting navigation capability is not enabled (you're probably running a test).", buf, 2u);
    }
  }
}

void __106__MNTurnByTurnLocationTracker__requestRerouteWithReason_requestParameters_completionHandler_errorHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v39 = *MEMORY[0x1E69E9840];
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (v14)
  {
    goto LABEL_2;
  }

  v27 = *(a1 + 32);
  if (!v27[18])
  {
LABEL_16:
    v14 = 0;
    v27[19] = 0;
    goto LABEL_25;
  }

  if ([v27 state] != 5)
  {
    v27 = *(a1 + 32);
    if (v27[18])
    {
      v28 = MNGetMNLocationTrackerLog();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = *(*(a1 + 32) + 144);
        v37 = 134217984;
        v38 = v29;
        _os_log_impl(&dword_1D311E000, v28, OS_LOG_TYPE_ERROR, "There appears to be a pending directions request (%p) but we are no longer in the RECALCULATING state. Cancelling pending request to ensure state integrity.", &v37, 0xCu);
      }

      [*(*(a1 + 32) + 144) cancel];
      v30 = *(a1 + 32);
      v31 = *(v30 + 144);
      *(v30 + 144) = 0;

      v27 = *(a1 + 32);
    }

    goto LABEL_16;
  }

LABEL_2:
  v16 = *(a1 + 32);
  v17 = *(v16 + 144);
  *(v16 + 144) = 0;

  if (v14 && v15)
  {
    v18 = MEMORY[0x1E695DF90];
    v19 = [v14 userInfo];
    v20 = [v18 dictionaryWithDictionary:v19];

    v21 = [MEMORY[0x1E69A1CF0] key];
    [v20 setObject:v15 forKeyedSubscript:v21];

    v22 = MEMORY[0x1E696ABC0];
    v23 = [v14 domain];
    v24 = [v22 errorWithDomain:v23 code:objc_msgSend(v14 userInfo:{"code"), v20}];

    v14 = v24;
  }

  [*(a1 + 40) timeSinceRecordingBegan];
  [*(a1 + 40) recordDirectionsRequest:v12 response:v13 error:v14 waypoints:v11 selectedRouteIndex:0 requestTimestamp:*(a1 + 72) responseTimestamp:v25];
  if (v14 || [v13 status])
  {
    if (([*(a1 + 32) _tryOnlineOfflineSwitchingWithRequestParameters:*(a1 + 48) rerouteReason:*(a1 + 80) error:v14 errorHandler:*(a1 + 56)] & 1) == 0)
    {
      v26 = *(a1 + 56);
      if (v26)
      {
        (*(v26 + 16))(v26, v13, v14);
      }

      else
      {
        v32 = [*(a1 + 32) delegate];
        [v32 locationTracker:*(a1 + 32) didFailRerouteWithError:v14];
      }

      *(*(a1 + 32) + 152) = 0;
      v33 = [*(a1 + 32) lastMatchedLocation];
      v34 = [v33 state];

      if (v34 == 1)
      {
        v35 = 2;
      }

      else
      {
        v35 = 1;
      }

      [*(a1 + 32) _setState:v35];
    }
  }

  else
  {
    [*(a1 + 32) _handleSuccessfulRerouteRequest:v12 response:v13 waypoints:v11];
    *(*(a1 + 32) + 152) = 0;
    v36 = *(a1 + 64);
    if (v36)
    {
      (*(v36 + 16))();
    }

    v14 = 0;
  }

LABEL_25:
}

- (BOOL)_tryOnlineOfflineSwitchingWithRequestParameters:(id)parameters rerouteReason:(unint64_t)reason error:(id)error errorHandler:(id)handler
{
  v25 = *MEMORY[0x1E69E9840];
  parametersCopy = parameters;
  errorCopy = error;
  handlerCopy = handler;
  if (([errorCopy _geo_isNetworkError] & 1) == 0)
  {
    goto LABEL_24;
  }

  if ([(MNTurnByTurnLocationTracker *)self _rerouteReasonSupportsDowngradingToOffline:reason])
  {
    numOfflineAttempts = self->_numOfflineAttempts;
    if (numOfflineAttempts >= GEOConfigGetUInteger())
    {
      self->_numOfflineAttempts = 0;
    }

    else if ([MEMORY[0x1E69A22E8] activeStateForCohortId:*MEMORY[0x1E69A1A78]] == 1)
    {
      ++self->_numOfflineAttempts;
      v14 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v23) = 0;
        _os_log_impl(&dword_1D311E000, v14, OS_LOG_TYPE_DEFAULT, "Will try downgrading to Offline state because of network error in the previously requested reroute to Routing.", &v23, 2u);
      }

      [(MNTurnByTurnLocationTracker *)self _changeOfflineMode:2 reason:reason requestParameters:parametersCopy errorHandler:handlerCopy];
      v15 = 1;
      goto LABEL_25;
    }
  }

  if (reason != 16)
  {
    goto LABEL_24;
  }

  numOnlineAttempts = self->_numOnlineAttempts;
  if (numOnlineAttempts >= GEOConfigGetUInteger())
  {
    v15 = 0;
    self->_numOnlineAttempts = 0;
    goto LABEL_25;
  }

  v17 = [MEMORY[0x1E69A22E8] activeStateForCohortId:*MEMORY[0x1E69A1A78]];
  v18 = v17;
  if (v17 < 2u)
  {
    goto LABEL_24;
  }

  if (v17 != 2)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      v23 = 67109120;
      v24 = v18;
      _os_log_fault_impl(&dword_1D311E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Unreachable reached: invalid offline mode value %x", &v23, 8u);
    }

    goto LABEL_24;
  }

  v19 = HIBYTE(v17);
  if (HIBYTE(v17) >= 2u)
  {
    if (HIBYTE(v17) != 2)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
      {
        v23 = 67109120;
        v24 = v19;
        _os_log_fault_impl(&dword_1D311E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Unreachable reached: invalid offline reason value %x", &v23, 8u);
      }

      goto LABEL_18;
    }

LABEL_24:
    v15 = 0;
    goto LABEL_25;
  }

LABEL_18:
  ++self->_numOnlineAttempts;
  v20 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v23) = 0;
    _os_log_impl(&dword_1D311E000, v20, OS_LOG_TYPE_DEFAULT, "Will try another attempt to switch to Online because of network error in the previous request.", &v23, 2u);
  }

  v15 = 1;
  [(MNTurnByTurnLocationTracker *)self _changeOfflineMode:1 reason:16 requestParameters:parametersCopy errorHandler:handlerCopy];
LABEL_25:

  return v15;
}

- (void)_sendRouteHintForLocation:(id)location
{
  v60 = *MEMORY[0x1E69E9840];
  locationCopy = location;
  if (([(MNLocationTracker *)self navigationCapabilities]& 8) != 0)
  {
    selfCopy = self;
    if (locationCopy && [locationCopy state] == 1)
    {
      routeMatch = [locationCopy routeMatch];
      route = [routeMatch route];
      [locationCopy speed];
      v5 = 25.0;
      if (v4 * 20.0 > 25.0)
      {
        [locationCopy speed];
        v5 = v6 * 20.0;
      }

      routeCoordinate = [routeMatch routeCoordinate];
      v46 = -[GEOPathMatcher matchedSegmentsFromStart:toEnd:](self->_pathMatcher, "matchedSegmentsFromStart:toEnd:", routeCoordinate, [route routeCoordinateForDistance:routeCoordinate afterRouteCoordinate:v5]);
      if ([v46 count])
      {
        step = [routeMatch step];
        transportType = [step transportType];

        v10 = GEOFindOrCreateLog();
        v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);

        if (v11)
        {
          v12 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v46, "count") + 1}];
          v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Sending %d route hints: ", objc_msgSend(v46, "count")];
          [v12 addObject:v13];

          v52 = v12;
        }

        else
        {
          v52 = 0;
        }

        v14 = [v46 count];
        if (v14)
        {
          if (v14 <= 0x666666666666666)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<CLMapsRouteHint>>(v14);
          }

          std::vector<CLMapsRouteHint>::__throw_length_error[abi:ne200100]();
        }

        __src = 0;
        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        obj = v46;
        v15 = [obj countByEnumeratingWithState:&v53 objects:v59 count:16];
        v47 = transportType;
        if (v15)
        {
          v16 = *v54;
          v17 = 0;
          do
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v54 != v16)
              {
                objc_enumerationMutation(obj);
              }

              v19 = *(*(&v53 + 1) + 8 * i);
              if ([v19 pointCount])
              {
                [v19 locationCoordinateAt:0];
                v21 = v20;
                v23 = v22;
                [v19 locationCoordinateAt:{objc_msgSend(v19, "pointCount") - 1}];
                v25 = v24;
                v27 = v26;
                road = [v19 road];
                roadID = [road roadID];

                v30 = v17 - __src;
                v31 = 0xCCCCCCCCCCCCCCCDLL * ((v17 - __src) >> 3);
                v32 = v31 + 1;
                if (v31 + 1 > 0x666666666666666)
                {
                  std::vector<CLMapsRouteHint>::__throw_length_error[abi:ne200100]();
                }

                if (0x999999999999999ALL * (-__src >> 3) > v32)
                {
                  v32 = 0x999999999999999ALL * (-__src >> 3);
                }

                if (0xCCCCCCCCCCCCCCCDLL * (-__src >> 3) >= 0x333333333333333)
                {
                  v33 = 0x666666666666666;
                }

                else
                {
                  v33 = v32;
                }

                if (v33)
                {
                  std::__allocate_at_least[abi:ne200100]<std::allocator<CLMapsRouteHint>>(v33);
                }

                v34 = 40 * v31;
                *v34 = roadID;
                *(v34 + 8) = v21;
                *(v34 + 16) = v23;
                *(v34 + 24) = v25;
                *(v34 + 32) = v27;
                v17 = 40 * v31 + 40;
                v35 = v34 - v30;
                memcpy((v34 - v30), __src, v30);
                if (__src)
                {
                  operator delete(__src);
                }

                __src = v35;
                if (v52)
                {
                  v36 = MEMORY[0x1E696AEC0];
                  road2 = [v19 road];
                  roadID2 = [road2 roadID];
                  [v19 startRouteCoordinate];
                  v39 = GEOPolylineCoordinateAsShortString();
                  [v19 endRouteCoordinate];
                  v40 = GEOPolylineCoordinateAsShortString();
                  v41 = [v36 stringWithFormat:@"%llu | [%@] %f, %f to [%@] %f, %f", roadID2, v39, v21, v23, v40, v25, v27];
                  [v52 addObject:v41];
                }
              }
            }

            v15 = [obj countByEnumeratingWithState:&v53 objects:v59 count:16];
          }

          while (v15);
        }

        v42 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
        {
          v43 = [v52 componentsJoinedByString:@"\n\t"];
          *buf = 138477827;
          v58 = v43;
          _os_log_impl(&dword_1D311E000, v42, OS_LOG_TYPE_DEBUG, "%{private}@", buf, 0xCu);
        }
      }

      else
      {
        __src = 0;
        v47 = 4;
      }
    }

    else
    {
      __src = 0;
      v47 = 4;
    }

    [(MNTurnByTurnLocationTracker *)selfCopy _routeHintTypeForTransportType:[(MNLocationTracker *)selfCopy transportType]];
    [(MNTurnByTurnLocationTracker *)selfCopy _routeHintTypeForTransportType:v47];
    CLSetMapMatchingRouteHint();
    if (__src)
    {
      operator delete(__src);
    }
  }
}

- (int)_routeHintTypeForTransportType:(int)type
{
  if ((type - 1) > 5)
  {
    return 1;
  }

  else
  {
    return dword_1D328D47C[type - 1];
  }
}

- (BOOL)_isRoadFeatureInOppositeDirection:(id)direction ofCoordinate:(id)coordinate course:(double)course
{
  directionCopy = direction;
  if (directionCopy)
  {
    GEOMultiSectionFeaturePoints();
  }

  return 0;
}

- (id)_matchedLocationForMatchResult:(id)result originalLocation:(id)location
{
  v63 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  locationCopy = location;
  if (!resultCopy)
  {
    v20 = 0;
    goto LABEL_46;
  }

  v8 = MNGetPuckTrackingLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    uuid = [locationCopy uuid];
    *buf = 138412290;
    *&buf[4] = uuid;
    _os_log_impl(&dword_1D311E000, v8, OS_LOG_TYPE_INFO, "[MN] [%@] - Processing - in MNTurnByTurnLocationTracker::_matchedLocationForMatchResult:originalLocation:", buf, 0xCu);
  }

  type = [resultCopy type];
  routeMatch = [resultCopy routeMatch];
  roadMatch = [resultCopy roadMatch];
  transportType = [(MNLocationTracker *)self transportType];
  if (transportType)
  {
    if (transportType == 2)
    {
      BOOL = GEOConfigGetBOOL();
      goto LABEL_14;
    }

    if (transportType != 3)
    {
      BOOL = 0;
      goto LABEL_14;
    }
  }

  v13 = GEOConfigGetBOOL();
  type2 = [resultCopy type];
  hasArrived = [(MNLocationTracker *)self hasArrived];
  step = [routeMatch step];
  v17 = [step routeSegmentType] == 3;

  v18 = v17 || hasArrived || type2 == 2;
  if (v17 || hasArrived || type2 == 2)
  {
    BOOL = v13;
  }

  else
  {
    BOOL = 2;
  }

  [routeMatch setShouldProjectLocationAlongRoute:!v18];
LABEL_14:
  if ([(MNLocationTracker *)self targetLegIndex]!= 0x7FFFFFFFFFFFFFFFLL && !type)
  {
    legIndex = [routeMatch legIndex];
    if (legIndex <= [(MNLocationTracker *)self targetLegIndex])
    {
      type = 0;
    }

    else if (roadMatch)
    {
      type = 1;
    }

    else
    {
      v22 = objc_alloc(MEMORY[0x1E69A24F0]);
      [routeMatch locationCoordinate3D];
      v24 = v23;
      v26 = v25;
      v28 = v27;
      [routeMatch matchedCourse];
      v30 = [v22 initWithCoordinateOnRoad:v24 courseOnRoad:{v26, v28, v29, 0}];
      type = 1;
      roadMatch = v30;
    }
  }

  [routeMatch setStepIndex:{-[MNTurnByTurnLocationTracker _modifiedStepIndexForMatchResult:matchType:](self, "_modifiedStepIndexForMatchResult:matchType:", resultCopy, type, roadMatch)}];
  switch(type)
  {
    case 2:
      v33 = 0;
      v20 = [[MNLocation alloc] initWithRawLocation:locationCopy locationFixType:BOOL];
      [(MNLocation *)v20 setRouteMatch:routeMatch];
      break;
    case 1:
      roadFeature = [v58 roadFeature];
      v59 = 0;
      [(MNLocationTracker *)self _roadFeaturesForFeature:roadFeature outRoadName:&v59 outShieldText:0 outShieldType:0];
      v33 = v59;
      v20 = [[MNLocation alloc] initWithRoadMatch:v58 rawLocation:locationCopy locationFixType:BOOL];
      [(MNLocation *)v20 setRouteMatch:routeMatch];
      [(MNLocation *)v20 setRoadName:v33];
      if (roadFeature)
      {
        [v58 coordinateOnRoad];
        v43 = v42;
        v45 = v44;
        [v58 courseOnRoad];
        if ([(MNTurnByTurnLocationTracker *)self _isRoadFeatureInOppositeDirection:roadFeature ofCoordinate:v43 course:v45, v46])
        {
          reverseDirectionDisplaySpeedLimit = [roadFeature reverseDirectionDisplaySpeedLimit];
        }

        else
        {
          reverseDirectionDisplaySpeedLimit = [roadFeature displaySpeedLimit];
        }

        [(MNLocation *)v20 setSpeedLimit:reverseDirectionDisplaySpeedLimit];
        -[MNLocation setSpeedLimitIsMPH:](v20, "setSpeedLimitIsMPH:", [roadFeature displaySpeedLimitIsMPH]);
        -[MNLocation setSpeedLimitShieldType:](v20, "setSpeedLimitShieldType:", [roadFeature speedLimitShieldId]);
        v34 = roadFeature;
      }

      else
      {
        [(MNLocation *)v20 setSpeedLimit:0];
        v34 = 0;
      }

LABEL_42:

      break;
    case 0:
      *buf = 0;
      road = [routeMatch road];
      feature = [road feature];

      v60 = 0;
      v61 = 0;
      [(MNLocationTracker *)self _roadFeaturesForFeature:feature outRoadName:&v61 outShieldText:&v60 outShieldType:buf];
      v33 = v61;
      v34 = v60;
      v20 = [[MNLocation alloc] initWithRouteMatch:routeMatch rawLocation:locationCopy locationFixType:BOOL];
      [(MNLocation *)v20 setRoadName:v33];
      [(MNLocation *)v20 setShieldText:v34];
      [(MNLocation *)v20 setShieldType:*buf];
      if (feature)
      {
        [routeMatch locationCoordinate];
        v36 = v35;
        v38 = v37;
        [routeMatch matchedCourse];
        if ([(MNTurnByTurnLocationTracker *)self _isRoadFeatureInOppositeDirection:feature ofCoordinate:v36 course:v38, v39])
        {
          reverseDirectionDisplaySpeedLimit2 = [feature reverseDirectionDisplaySpeedLimit];
        }

        else
        {
          reverseDirectionDisplaySpeedLimit2 = [feature displaySpeedLimit];
        }

        [(MNLocation *)v20 setSpeedLimit:reverseDirectionDisplaySpeedLimit2];
        -[MNLocation setSpeedLimitIsMPH:](v20, "setSpeedLimitIsMPH:", [feature displaySpeedLimitIsMPH]);
        -[MNLocation setSpeedLimitShieldType:](v20, "setSpeedLimitShieldType:", [feature speedLimitShieldId]);
      }

      else
      {
        [(MNLocation *)v20 setSpeedLimit:0];
      }

      routeMatch2 = [(MNLocation *)v20 routeMatch];
      v49 = [(MNTurnByTurnLocationTracker *)self _shouldAdvanceGuidanceToRouteMatch:routeMatch2];

      if (v49)
      {
        objc_storeStrong(&self->_lastKnownGoodLocationOnRoute, v20);
        routeMatch3 = [(MNLocation *)self->_lastKnownGoodLocationOnRoute routeMatch];
        v51 = routeMatch3 == 0;

        if (!v51)
        {
          routeMatch4 = [(MNLocation *)v20 routeMatch];
          routeMatch5 = [(MNLocation *)self->_lastKnownGoodLocationOnRoute routeMatch];
          [routeMatch4 setRouteCoordinate:{objc_msgSend(routeMatch5, "routeCoordinate")}];
        }
      }

      goto LABEL_42;
    default:
      v33 = 0;
      v20 = 0;
      break;
  }

  -[MNLocation setTraceIndex:](v20, "setTraceIndex:", [locationCopy traceIndex]);
  detailedMatchInfo = [resultCopy detailedMatchInfo];
  [(MNLocation *)v20 setDetailedMatchInfo:detailedMatchInfo];

  if (self->_puckLocationTracing)
  {
    uuid2 = [locationCopy uuid];
    [(MNLocation *)v20 setUuid:uuid2];
  }

LABEL_46:

  return v20;
}

- (unint64_t)_modifiedStepIndexForMatchResult:(id)result matchType:(unint64_t)type
{
  routeMatch = [result routeMatch];
  transportType = [(MNLocationTracker *)self transportType];
  if ((!transportType || transportType == 3) && [(MNLocationTracker *)self hasArrived])
  {
    route = [routeMatch route];
    legs = [route legs];
    lastMatchedLocation2 = [legs objectAtIndexedSubscript:self->_lastArrivalLegIndex];

    route2 = [routeMatch route];
    steps = [route2 steps];
    v13 = [steps objectAtIndexedSubscript:{objc_msgSend(lastMatchedLocation2, "endStepIndex")}];

    stepIndex = [v13 stepIndex];
LABEL_16:

    goto LABEL_17;
  }

  if (!type)
  {
    legIndex = [routeMatch legIndex];
    if (legIndex >= [(MNLocationTracker *)self targetLegIndex])
    {
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  route3 = [routeMatch route];
  lastMatchedLocation = [(MNLocationTracker *)self lastMatchedLocation];
  routeMatch2 = [lastMatchedLocation routeMatch];
  route4 = [routeMatch2 route];

  if (route3 == route4)
  {
    lastMatchedLocation2 = [(MNLocationTracker *)self lastMatchedLocation];
    stepIndex2 = [lastMatchedLocation2 stepIndex];
LABEL_15:
    stepIndex = stepIndex2;
    goto LABEL_16;
  }

  lastMatchedLocation3 = [(MNLocationTracker *)self lastMatchedLocation];
  if (!lastMatchedLocation3)
  {
    legIndex2 = [routeMatch legIndex];
    if (legIndex2 == [(MNLocationTracker *)self targetLegIndex])
    {
      goto LABEL_13;
    }

LABEL_14:
    route5 = [routeMatch route];
    legs2 = [route5 legs];
    lastMatchedLocation2 = [legs2 objectAtIndexedSubscript:{-[MNLocationTracker targetLegIndex](self, "targetLegIndex")}];

    stepIndex2 = [lastMatchedLocation2 startStepIndex];
    goto LABEL_15;
  }

LABEL_13:
  stepIndex = [routeMatch stepIndex];
LABEL_17:

  return stepIndex;
}

- (BOOL)_shouldAdvanceGuidanceToRouteMatch:(id)match
{
  matchCopy = match;
  if ([matchCopy isGoodMatch])
  {
    v5 = ![(MNLocationTracker *)self hasArrived];
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  routeMatch = [(MNLocation *)self->_lastKnownGoodLocationOnRoute routeMatch];

  if (routeMatch)
  {
    routeMatch2 = [(MNLocation *)self->_lastKnownGoodLocationOnRoute routeMatch];
    [routeMatch2 routeCoordinate];
    [matchCopy routeCoordinate];
    v8 = GEOPolylineCoordinateCompare();

    if (v8 != -1)
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (void)_updateSwitchTransportTypeForLocation:(id)location
{
  locationCopy = location;
  v5 = +[MNCarPlayConnectionMonitor sharedInstance];
  isConnected = [v5 isConnected];

  if (isConnected)
  {
    v7 = 0;
  }

  else
  {
    v7 = [(MNTurnByTurnLocationTracker *)self _detectedMotionForLocation:locationCopy];
  }

  isRerouting = [(MNTurnByTurnLocationTracker *)self isRerouting];
  v9 = v7 == 4 || isRerouting;
  if ((v9 & 1) == 0 && [(MNLocationTracker *)self transportType]!= v7)
  {
    routeMatch = [locationCopy routeMatch];
    step = [routeMatch step];

    if ([step transportType] != 5)
    {
      routeMatch2 = [locationCopy routeMatch];
      legIndex = [routeMatch2 legIndex];
      routeMatch3 = [locationCopy routeMatch];
      route = [routeMatch3 route];
      legs = [route legs];
      v16 = [legs count] - 1;

      if (legIndex >= v16 && ((isConnected & 1) != 0 || [(MNTurnByTurnLocationTracker *)self _allowSwitchToTransportType:v7 forLocation:locationCopy]))
      {
        if (GEOConfigGetBOOL())
        {
          v18[0] = MEMORY[0x1E69E9820];
          v18[1] = 3221225472;
          v18[2] = __69__MNTurnByTurnLocationTracker__updateSwitchTransportTypeForLocation___block_invoke;
          v18[3] = &__block_descriptor_36_e47_v16__0__GEODirectionsServiceRequestParameters_8l;
          v19 = v7;
          [(MNTurnByTurnLocationTracker *)self _requestRerouteWithReason:6 requestHandler:v18 completionHandler:0 errorHandler:0];
        }
      }
    }
  }
}

void __69__MNTurnByTurnLocationTracker__updateSwitchTransportTypeForLocation___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setRequestType:4];
  [v3 setTransportType:*(a1 + 32)];
}

- (void)_updateStateForLocation:(id)location
{
  v26 = *MEMORY[0x1E69E9840];
  locationCopy = location;
  state = [(MNLocationTracker *)self state];
  state2 = [(MNLocationTracker *)self state];
  if (state2 <= 1)
  {
    if (state2)
    {
      if (state2 == 1)
      {
        state3 = [locationCopy state];
        if (state3)
        {
          if (state3 == 2)
          {
            v19 = 0;
            v15 = [(MNTurnByTurnLocationTracker *)self _allowRerouteForLocation:locationCopy outError:&v19];
            v16 = v19;
            if (v15)
            {
              state = 4;
            }

            else
            {
              delegate = [(MNLocationTracker *)self delegate];
              [delegate locationTracker:self didSuppressReroute:v16];

              state = 1;
            }
          }

          else if (state3 == 1)
          {
            state = 2;
          }

          else
          {
            state = state;
          }
        }

        else
        {
          state = 1;
        }
      }
    }

    else
    {
      v9 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v21 = "[MNTurnByTurnLocationTracker _updateStateForLocation:]";
        v22 = 2080;
        v23 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Location/LocationTracking/MNTurnByTurnLocationTracker.mm";
        v24 = 1024;
        v25 = 457;
        _os_log_impl(&dword_1D311E000, v9, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: Hit an unreachable code path", buf, 0x1Cu);
      }
    }
  }

  else if ((state2 - 2) >= 3)
  {
    if ((state2 == 5 || state2 == 8) && [locationCopy state] == 1)
    {
      if (self->_rerouteReason == 1)
      {
        state = 2;
      }

      else
      {
        state = state;
      }
    }
  }

  else
  {
    state4 = [locationCopy state];
    if (state4)
    {
      if (state4 == 2)
      {
        v18 = 0;
        v10 = [(MNTurnByTurnLocationTracker *)self _allowRerouteForLocation:locationCopy outError:&v18];
        v11 = v18;
        if (v10)
        {
          state = 4;
        }

        else
        {
          delegate2 = [(MNLocationTracker *)self delegate];
          [delegate2 locationTracker:self didSuppressReroute:v11];

          state = 3;
        }
      }

      else if (state4 == 1)
      {
        self->_consecutiveOffRouteCount = 0;
        state = 2;
      }
    }

    else
    {
      v12 = self->_consecutiveOffRouteCount + 1;
      self->_consecutiveOffRouteCount = v12;
      if (v12 < 5 && state == 2)
      {
        state = 2;
      }

      else
      {
        state = 3;
      }
    }
  }

  [(MNLocationTracker *)self _setState:state];
}

- (BOOL)_isLocation:(id)location nearOrigin:(id)origin
{
  locationCopy = location;
  originCopy = origin;
  v7 = originCopy;
  if (locationCopy)
  {
    if (originCopy)
    {
      [locationCopy _navigation_geoCoordinate3D];
      v9 = v8;
      v11 = v10;
      coordinate = [v7 coordinate];
      v20.var2 = v13;
      v21.var0 = v14;
      v20.var0 = v9;
      v20.var1 = v11;
      v16 = GEOCalculateDistance(coordinate, v15, v20, v21);
      GEOConfigGetDouble();
      v18 = v16 < v17;
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 1;
  }

  return v18;
}

- (void)updateForETAUpdateResponse:(id)response
{
  v23 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  [(MNTurnByTurnLocationTracker *)self _addDebugIncidentAlertToResponseInfo:responseCopy];
  navigationSessionState = [(MNLocationTracker *)self navigationSessionState];
  currentRouteInfo = [navigationSessionState currentRouteInfo];

  alternateRoutes = [responseCopy alternateRoutes];
  firstObject = [alternateRoutes firstObject];
  v9 = [MNTrafficIncidentAlert validTrafficIncidentAlertsForETAUpdate:currentRouteInfo alternateRouteInfo:firstObject];

  [(MNTurnByTurnLocationTracker *)self _updateForNewTrafficIncidentAlerts:v9];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (!v11)
  {

LABEL_11:
    alternateRoutes2 = [responseCopy alternateRoutes];
    [(MNTurnByTurnLocationTracker *)self _updateForNewAlternateRoutes:alternateRoutes2];

    goto LABEL_12;
  }

  v12 = 0;
  v13 = *v19;
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v19 != v13)
      {
        objc_enumerationMutation(v10);
      }

      alternateRoute = [*(*(&v18 + 1) + 8 * i) alternateRoute];
      v16 = alternateRoute != 0;

      v12 |= v16;
    }

    v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  }

  while (v11);

  if ((v12 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_12:
}

- (void)updateForETAUResponse:(id)response
{
  responseCopy = response;
  request = [responseCopy request];
  response = [responseCopy response];
  error = [responseCopy error];
  navigationSession = [(MNLocationTracker *)self navigationSession];
  traceManager = [navigationSession traceManager];
  traceRecorder = [traceManager traceRecorder];

  v39 = traceRecorder;
  [traceRecorder timeSinceRecordingBegan];
  v10 = v9;
  [responseCopy responseTime];
  v12 = v11;
  navigationSession2 = [(MNLocationTracker *)self navigationSession];
  destination = [navigationSession2 destination];
  navDisplayName = [destination navDisplayName];
  [traceRecorder recordETAURequest:request response:response error:error destinationName:navDisplayName requestTimestamp:v10 - v12 responseTimestamp:v10];

  Integer = GEOConfigGetInteger();
  if (Integer || !error && ![response status])
  {
    if ([response status] && Integer)
    {
      navigationSession3 = [(MNLocationTracker *)self navigationSession];
      routeManager = [navigationSession3 routeManager];
      currentRoute = [routeManager currentRoute];

      geoETAWaypointRoute = [currentRoute geoETAWaypointRoute];
      if (geoETAWaypointRoute)
      {
        [response setWaypointRoute:geoETAWaypointRoute];
      }
    }

    else if (!Integer)
    {
LABEL_17:
      navigationSession4 = [(MNLocationTracker *)self navigationSession];
      routeManager2 = [navigationSession4 routeManager];
      currentRouteInfo = [routeManager2 currentRouteInfo];

      delegate = [(MNLocationTracker *)self delegate];
      [delegate locationTracker:self didUpdateETAForRoute:currentRouteInfo];

      goto LABEL_18;
    }

    navigationSession5 = [(MNLocationTracker *)self navigationSession];
    routeManager3 = [navigationSession5 routeManager];
    currentRouteInfo2 = [routeManager3 currentRouteInfo];

    lastMatchedLocation = [(MNLocationTracker *)self lastMatchedLocation];
    if (lastMatchedLocation)
    {
      lastMatchedLocation2 = [(MNLocationTracker *)self lastMatchedLocation];
      routeMatch = [lastMatchedLocation2 routeMatch];

      if (routeMatch)
      {
        lastMatchedLocation3 = [(MNLocationTracker *)self lastMatchedLocation];
        routeMatch2 = [lastMatchedLocation3 routeMatch];

        route = [currentRouteInfo2 route];
        [route distanceToEndFromRouteCoordinate:{objc_msgSend(routeMatch2, "routeCoordinate")}];
        lastMatchedLocation = v31;
      }

      else
      {
        lastMatchedLocation = 0;
      }
    }

    navigationSession6 = [(MNLocationTracker *)self navigationSession];
    routeManager4 = [navigationSession6 routeManager];
    alternateRoutes = [routeManager4 alternateRoutes];
    firstObject = [alternateRoutes firstObject];
    [response addFakeTrafficIncidentAlert:Integer mainRouteInfo:currentRouteInfo2 alternateRouteInfo:firstObject currentDistance:lastMatchedLocation];

    goto LABEL_17;
  }

  currentRouteInfo = GEOFindOrCreateLog();
  if (os_log_type_enabled(currentRouteInfo, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_1D311E000, currentRouteInfo, OS_LOG_TYPE_DEBUG, "Return from updateForETAUResponse without updating ETA due to error in response from Routing\n", buf, 2u);
  }

LABEL_18:
}

- (void)updateRequestForETAUpdate:(id)update
{
  updateCopy = update;
  v5.receiver = self;
  v5.super_class = MNTurnByTurnLocationTracker;
  [(MNLocationTracker *)&v5 updateRequestForETAUpdate:updateCopy];
  [(MNTrafficIncidentAlertUpdater *)self->_trafficIncidentAlertUpdater updateIncidentResultForETARequest:updateCopy];
}

- (void)_changeOfflineMode:(unsigned __int8)mode reason:(unint64_t)reason requestParameters:(id)parameters errorHandler:(id)handler
{
  modeCopy = mode;
  v34 = *MEMORY[0x1E69E9840];
  parametersCopy = parameters;
  handlerCopy = handler;
  v10 = [MEMORY[0x1E69A22E8] activeStateForCohortId:*MEMORY[0x1E69A1A78]];
  v11 = MNGetMNLocationTrackerLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = GEOOfflineModeAsString();
    v13 = GEOOfflineStateAsString();
    navigationSessionState = [(MNLocationTracker *)self navigationSessionState];
    handler = [navigationSessionState currentRouteInfo];
    route = [handler route];
    *buf = 138412802;
    v29 = v12;
    v30 = 2112;
    v31 = v13;
    v32 = 1024;
    isOfflineRoute = [route isOfflineRoute];
    _os_log_impl(&dword_1D311E000, v11, OS_LOG_TYPE_DEFAULT, "Requesting changeOfflineMode to '%@'. Current offline state is '%@'. Current route is offline: %d", buf, 0x1Cu);
  }

  if (reason == 16 && (-[MNLocationTracker navigationSessionState](self, "navigationSessionState"), v16 = objc_claimAutoreleasedReturnValue(), [v16 currentRouteInfo], handler = objc_claimAutoreleasedReturnValue(), objc_msgSend(handler, "route"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "isOfflineRoute"), v17, handler, v16, (v18 & 1) == 0))
  {
    v25 = MNGetMNLocationTrackerLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v29 = @"UpgradeOfflineToOnline";
      _os_log_impl(&dword_1D311E000, v25, OS_LOG_TYPE_ERROR, "Attempted to switch to online route with reroute reason %@, but we already have an online route.", buf, 0xCu);
    }
  }

  else
  {
    if (modeCopy == v10)
    {
      handler = MNGetMNLocationTrackerLog();
      if (os_log_type_enabled(handler, OS_LOG_TYPE_ERROR))
      {
        v19 = GEOOfflineStateAsString();
        *buf = 138412290;
        v29 = v19;
        _os_log_impl(&dword_1D311E000, handler, OS_LOG_TYPE_ERROR, "GEOOfflineService reports offline state is already '%@', but proceeding with reroute anyway.", buf, 0xCu);
      }
    }

    traits = [parametersCopy traits];
    defaultTraits = traits;
    if (!traits)
    {
      handler = [MEMORY[0x1E69A2208] sharedService];
      defaultTraits = [handler defaultTraits];
    }

    [parametersCopy setTraits:defaultTraits];
    if (!traits)
    {
    }

    traits2 = [parametersCopy traits];
    v23 = traits2;
    if (modeCopy == 1)
    {
      v24 = 3;
    }

    else
    {
      v24 = 4;
    }

    [traits2 setRequestMode:v24];

    [(MNTurnByTurnLocationTracker *)self _requestRerouteWithReason:reason requestParameters:parametersCopy completionHandler:0 errorHandler:handlerCopy];
  }
}

- (void)changeOfflineMode:(unsigned __int8)mode
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    *v3 = 0;
    _os_log_fault_impl(&dword_1D311E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Unreachable reached: Should not be called anymore. Pending removal.", v3, 2u);
  }
}

- (void)switchToDestinationRoute
{
  navigationSessionState = [(MNLocationTracker *)self navigationSessionState];
  destination = [navigationSessionState destination];
  route = [destination route];

  v6 = MNGetMNLocationTrackerLog();
  v7 = v6;
  if (route)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_DEFAULT, "switchToDestinationRoute", buf, 2u);
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __55__MNTurnByTurnLocationTracker_switchToDestinationRoute__block_invoke;
    aBlock[3] = &unk_1E842B9B8;
    v8 = route;
    v19 = v8;
    selfCopy = self;
    v9 = _Block_copy(aBlock);
    if ([v8 isNavigable])
    {
      v9[2](v9, v8);
    }

    else
    {
      v10 = MNGetMNLocationTrackerLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1D311E000, v10, OS_LOG_TYPE_DEFAULT, "destination route is not navigable, attempting convertToNavigableRoute:.", buf, 2u);
      }

      v11 = objc_opt_new();
      [v11 setCurrentRoute:v8];
      navigationSession = [(MNLocationTracker *)self navigationSession];
      routeManager = [navigationSession routeManager];
      routeAttributes = [routeManager routeAttributes];
      [v11 setRouteAttributes:routeAttributes];

      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __55__MNTurnByTurnLocationTracker_switchToDestinationRoute__block_invoke_31;
      v16[3] = &unk_1E842B9E0;
      v17 = v9;
      v15 = [MNRouteEditor convertToNavigableRoute:v11 finishedHandler:v16];
    }

    v7 = v19;
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_ERROR, "switchToDestinationRoute called but there is no destination route.", buf, 2u);
  }
}

void __55__MNTurnByTurnLocationTracker_switchToDestinationRoute__block_invoke(uint64_t a1)
{
  v6 = [[MNActiveRouteInfo alloc] initWithRoute:*(a1 + 32)];
  v2 = [*(a1 + 32) routeInitializerData];
  v3 = [v2 directionsRequest];

  v4 = [*(a1 + 32) routeInitializerData];
  v5 = [v4 directionsResponse];

  [*(a1 + 40) _updateForNewRoute:v6 rerouteReason:13 request:v3 response:v5];
}

void __55__MNTurnByTurnLocationTracker_switchToDestinationRoute__block_invoke_31(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v8 = MNGetMNLocationTrackerLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&dword_1D311E000, v8, OS_LOG_TYPE_ERROR, "Error converting destination route to navigable route: %@", &v9, 0xCu);
    }
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)changeTransportType:(int)type route:(id)route
{
  v4 = *&type;
  v34 = *MEMORY[0x1E69E9840];
  routeCopy = route;
  if ([(MNLocationTracker *)self transportType]== v4)
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      if (v4 >= 7)
      {
        v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v4];
      }

      else
      {
        v8 = off_1E842BB48[v4];
      }

      *buf = 138412290;
      v31 = *&v8;
      _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_ERROR, "Requested to change transport type to %@, but we are already navigating using that transport type.", buf, 0xCu);
    }

LABEL_25:

    return;
  }

  if (v4 > 3 || v4 == 1)
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      if (v4 < 7 && ((0x73u >> v4) & 1) != 0)
      {
        v23 = off_1E842BAF0[v4];
      }

      else
      {
        v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v4];
      }

      *buf = 138412290;
      v31 = *&v23;
      _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_ERROR, "Requested to change transport type to %@, but only driving, walking, and cycling are supported.", buf, 0xCu);
    }

    goto LABEL_25;
  }

  v9 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = off_1E842BB28[v4];
    uniqueRouteID = [routeCopy uniqueRouteID];
    *buf = 138412546;
    v31 = *&v10;
    v32 = 2112;
    v33 = uniqueRouteID;
    _os_log_impl(&dword_1D311E000, v9, OS_LOG_TYPE_DEFAULT, "Changing to transport type: %@ | %@", buf, 0x16u);
  }

  if (routeCopy)
  {
    if ([routeCopy transportType] == v4)
    {
      v12 = objc_alloc(MEMORY[0x1E69A1E70]);
      lastMatchedLocation = [(MNLocationTracker *)self lastMatchedLocation];
      v14 = [v12 initWithCLLocation:lastMatchedLocation course:-1.0];

      v15 = [objc_alloc(MEMORY[0x1E69A2548]) initWithRoute:routeCopy auditToken:0];
      v16 = [v15 matchToRouteWithLocation:v14];
      [v16 distanceFromRoute];
      v18 = v17;
      v19 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v31 = v18;
        _os_log_impl(&dword_1D311E000, v19, OS_LOG_TYPE_DEFAULT, "Current location distance from provided route is %0.1f meters. Ignoring provided route and requesting new one.", buf, 0xCu);
      }

      GEOConfigGetDouble();
      if (v18 > v20)
      {
        v21 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1D311E000, v21, OS_LOG_TYPE_DEFAULT, "Current location is too far from provided route. Requesting new route.", buf, 2u);
        }

        routeCopy = 0;
      }

      if (routeCopy)
      {
        v22 = [[MNActiveRouteInfo alloc] initWithRoute:routeCopy];
        [(MNTurnByTurnLocationTracker *)self _updateForNewRoute:v22 rerouteReason:6 request:0 response:0];

        return;
      }
    }

    else
    {
      v24 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = off_1E842BB28[v4];
        transportType = [routeCopy transportType];
        if (transportType >= 7)
        {
          v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", transportType];
        }

        else
        {
          v27 = off_1E842BB48[transportType];
        }

        *buf = 138412546;
        v31 = *&v25;
        v32 = 2112;
        v33 = v27;
        _os_log_impl(&dword_1D311E000, v24, OS_LOG_TYPE_ERROR, "Changing transport type to %@, but provided route is of transport type %@. Ignoring route.", buf, 0x16u);
      }
    }
  }

  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __57__MNTurnByTurnLocationTracker_changeTransportType_route___block_invoke;
  v28[3] = &unk_1E842B990;
  v29 = v4;
  v28[4] = self;
  [(MNTurnByTurnLocationTracker *)self _requestRerouteWithReason:6 requestHandler:v28 completionHandler:0 errorHandler:0];
}

void __57__MNTurnByTurnLocationTracker_changeTransportType_route___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  [v5 setRequestType:9];
  [v5 setTransportType:*(a1 + 40)];
  v3 = [*(a1 + 32) navigationSessionState];
  v4 = [v3 arrivalState];

  [v5 setHasArrived:(v4 & 0xFFFFFFFFFFFFFFFDLL) == 4];
}

- (void)reroute:(id)reroute reason:(unint64_t)reason
{
  rerouteCopy = reroute;
  [(MNTurnByTurnLocationTracker *)self _cancelPendingRerouteRequest];
  [(MNTurnByTurnLocationTracker *)self _updateForNewRoute:rerouteCopy rerouteReason:reason request:0 response:0];
}

- (void)forceRerouteWithReason:(unint64_t)reason
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if (reason - 1 > 0xF)
    {
      v6 = @"Unknown";
    }

    else
    {
      v6 = off_1E842BB80[reason - 1];
    }

    *buf = 138412290;
    v9 = v6;
    _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_DEFAULT, "Forcing reroute with reason %@.", buf, 0xCu);
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__MNTurnByTurnLocationTracker_forceRerouteWithReason___block_invoke;
  v7[3] = &unk_1E842B968;
  v7[4] = self;
  v7[5] = reason;
  [(MNTurnByTurnLocationTracker *)self _requestRerouteWithReason:reason requestHandler:v7 completionHandler:0 errorHandler:0];
}

void __54__MNTurnByTurnLocationTracker_forceRerouteWithReason___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (*(a1 + 40) == 12)
  {
    v4 = 11;
  }

  else
  {
    v4 = [*(a1 + 32) _offRouteRequestType];
    v3 = v5;
  }

  [v3 setRequestType:v4];
}

- (void)updateDestination:(id)destination completionHandler:(id)handler
{
  destinationCopy = destination;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __67__MNTurnByTurnLocationTracker_updateDestination_completionHandler___block_invoke;
  v8[3] = &unk_1E842B940;
  v9 = destinationCopy;
  selfCopy = self;
  v7 = destinationCopy;
  [(MNTurnByTurnLocationTracker *)self _requestRerouteWithReason:7 requestHandler:v8 completionHandler:handler errorHandler:0];
}

void __67__MNTurnByTurnLocationTracker_updateDestination_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  [v3 setRequestType:6];
  v9[0] = *(a1 + 32);
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  [v3 setWaypoints:v4];

  v5 = [*(a1 + 40) navigationSession];
  v6 = [v5 routeManager];

  v7 = [v6 originalDestination];
  LODWORD(a1) = v7 == *(a1 + 32);

  if (a1)
  {
    [v6 originalRoute];
  }

  else
  {
    [v6 currentRoute];
  }
  v8 = ;
  [v3 setCurrentRoute:v8];
}

- (void)advanceToNextLeg
{
  if ([(MNLocationTracker *)self hasArrived]|| self->_lastArrivalLegIndex != 0x7FFFFFFFFFFFFFFFLL || [(MNArrivalUpdater *)self->_arrivalUpdater isApproachingWaypoint]|| [(MNArrivalUpdater *)self->_arrivalUpdater isInPreArrivalRegion])
  {
    arrivalUpdater = self->_arrivalUpdater;

    [(MNArrivalUpdater *)arrivalUpdater forceDepartureForCurrentLeg:1];
  }

  else
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_1D311E000, v4, OS_LOG_TYPE_INFO, "Manual advance to next leg ignored since the location tracker has already passed the arrival stage", v5, 2u);
    }
  }
}

- (void)removeWaypointAtIndex:(unint64_t)index completionHandler:(id)handler
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __71__MNTurnByTurnLocationTracker_removeWaypointAtIndex_completionHandler___block_invoke;
  v4[3] = &__block_descriptor_40_e47_v16__0__GEODirectionsServiceRequestParameters_8l;
  v4[4] = index;
  [(MNTurnByTurnLocationTracker *)self _requestRerouteWithReason:9 requestHandler:v4 completionHandler:handler errorHandler:0];
}

void __71__MNTurnByTurnLocationTracker_removeWaypointAtIndex_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setRequestType:7];
  [v3 setWaypointModificationType:1];
  [v3 setWaypointIndexToRemove:*(a1 + 32)];
}

- (void)insertWaypoint:(id)waypoint completionHandler:(id)handler
{
  waypointCopy = waypoint;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __64__MNTurnByTurnLocationTracker_insertWaypoint_completionHandler___block_invoke;
  v8[3] = &unk_1E842B8F8;
  v9 = waypointCopy;
  v7 = waypointCopy;
  [(MNTurnByTurnLocationTracker *)self _requestRerouteWithReason:8 requestHandler:v8 completionHandler:handler errorHandler:0];
}

void __64__MNTurnByTurnLocationTracker_insertWaypoint_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setRequestType:7];
  [v3 setWaypointModificationType:0];
  [v3 setWaypointToInsert:*(a1 + 32)];
}

- (void)rerouteWithWaypoints:(id)waypoints completionHandler:(id)handler
{
  waypointsCopy = waypoints;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __70__MNTurnByTurnLocationTracker_rerouteWithWaypoints_completionHandler___block_invoke;
  v8[3] = &unk_1E842B8F8;
  v9 = waypointsCopy;
  v7 = waypointsCopy;
  [(MNTurnByTurnLocationTracker *)self _requestRerouteWithReason:10 requestHandler:v8 completionHandler:handler errorHandler:0];
}

void __70__MNTurnByTurnLocationTracker_rerouteWithWaypoints_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setRequestType:8];
  [v3 setWaypoints:*(a1 + 32)];
}

- (void)dealloc
{
  [(GEODirectionsServiceRequest *)self->_pendingRequest cancel];
  GEOUnregisterStateCaptureLegacy();
  v3.receiver = self;
  v3.super_class = MNTurnByTurnLocationTracker;
  [(MNLocationTracker *)&v3 dealloc];
}

- (MNTurnByTurnLocationTracker)initWithNavigationSession:(id)session
{
  sessionCopy = session;
  v20.receiver = self;
  v20.super_class = MNTurnByTurnLocationTracker;
  v5 = [(MNLocationTracker *)&v20 initWithNavigationSession:sessionCopy];
  if (v5)
  {
    routeManager = [sessionCopy routeManager];
    currentRoute = [routeManager currentRoute];
    v8 = [(MNTurnByTurnLocationTracker *)v5 _newMapMatcherForRoute:currentRoute];
    mapMatcher = v5->_mapMatcher;
    v5->_mapMatcher = v8;

    [(GEONavigationMapMatcher *)v5->_mapMatcher setTargetLegIndex:0];
    [(GEONavigationMapMatcher *)v5->_mapMatcher setRequiresRoadNetworkData:1];
    traceManager = [sessionCopy traceManager];
    tracePlayer = [traceManager tracePlayer];
    trace = [tracePlayer trace];
    -[GEONavigationMapMatcher setIsSimulation:](v5->_mapMatcher, "setIsSimulation:", [trace isSimulation]);

    v5->_isNavigatingInLowGuidance = 0;
    v13 = objc_alloc(MEMORY[0x1E69A2330]);
    _auditToken = [(MNLocationTracker *)v5 _auditToken];
    v15 = [v13 initWithRoute:currentRoute auditToken:_auditToken];
    pathMatcher = v5->_pathMatcher;
    v5->_pathMatcher = v15;

    v17 = dispatch_get_global_queue(21, 0);
    GEORegisterPListStateCaptureLegacy();

    v5->_numOfflineAttempts = 0;
    v5->_numOnlineAttempts = 0;
    v5->_puckLocationTracing = GEOConfigGetBOOL();
    v18 = v5;
  }

  return v5;
}

- (id)initForTestingWithRoute:(id)route
{
  routeCopy = route;
  v11.receiver = self;
  v11.super_class = MNTurnByTurnLocationTracker;
  v5 = [(MNLocationTracker *)&v11 init];
  v6 = v5;
  if (v5)
  {
    v7 = [(MNTurnByTurnLocationTracker *)v5 _newMapMatcherForRoute:routeCopy];
    mapMatcher = v6->_mapMatcher;
    v6->_mapMatcher = v7;

    [(GEONavigationMapMatcher *)v6->_mapMatcher setRequiresRoadNetworkData:1];
    [(GEONavigationMapMatcher *)v6->_mapMatcher setShouldSnapRouteMatchToRoute:1];
    [(GEONavigationMapMatcher *)v6->_mapMatcher setShouldWaitForSnappedSegments:1];
    v6->_isNavigatingInLowGuidance = 0;
    v6->_puckLocationTracing = GEOConfigGetBOOL();
    v9 = v6;
  }

  return v6;
}

- (void)offlineCoordinatorDidDetectOnline:(id)online
{
  lastMatchedLocation = [(MNLocationTracker *)self lastMatchedLocation];
  v8 = [(MNTurnByTurnLocationTracker *)self _rerouteRequestParametersForLocation:lastMatchedLocation transportType:[(MNLocationTracker *)self transportType]];

  [v8 setRequestType:16];
  traits = [v8 traits];
  defaultTraits = traits;
  if (!traits)
  {
    mEMORY[0x1E69A2208] = [MEMORY[0x1E69A2208] sharedService];
    defaultTraits = [mEMORY[0x1E69A2208] defaultTraits];
  }

  [v8 setTraits:defaultTraits];
  if (!traits)
  {
  }

  [(MNTurnByTurnLocationTracker *)self _changeOfflineMode:1 reason:16 requestParameters:v8 errorHandler:0];
}

@end