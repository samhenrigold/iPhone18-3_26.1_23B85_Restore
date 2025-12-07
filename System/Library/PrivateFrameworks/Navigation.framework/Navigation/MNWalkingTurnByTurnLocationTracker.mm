@interface MNWalkingTurnByTurnLocationTracker
- (BOOL)_allowRerouteForLocation:(id)location;
- (BOOL)_allowSwitchToTransportType:(int)type forLocation:(id)location;
- (MNWalkingTurnByTurnLocationTracker)initWithNavigationSession:(id)session;
- (id)_newMapMatcherForRoute:(id)route;
- (int)_detectedMotionForLocation:(id)location;
- (void)_updateForReroute:(id)reroute rerouteReason:(unint64_t)reason request:(id)request response:(id)response;
- (void)startTrackingWithInitialLocation:(id)location targetLegIndex:(unint64_t)index;
@end

@implementation MNWalkingTurnByTurnLocationTracker

- (BOOL)_allowSwitchToTransportType:(int)type forLocation:(id)location
{
  v21 = *MEMORY[0x1E69E9840];
  locationCopy = location;
  v7 = locationCopy;
  if (type || ([locationCopy speed], v8 < 5.36) || (objc_msgSend(v7, "rawLocation"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "coordinate"), v11 = v10, v13 = v12, v9, v22.var2 = self->_detectedTransportTypeOrigin.latitude, v23.var0 = self->_detectedTransportTypeOrigin.longitude, v22.var0 = v11, v22.var1 = v13, GEOCalculateDistance(v14, v15, v22, v23) < 100.0))
  {
    v17 = 0;
  }

  else
  {
    v16 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v19 = 138477827;
      v20 = @"AUTOMOBILE";
      _os_log_impl(&dword_1D311E000, v16, OS_LOG_TYPE_DEBUG, "Allow switching to transport type: %{private}@", &v19, 0xCu);
    }

    v17 = 1;
  }

  return v17;
}

- (int)_detectedMotionForLocation:(id)location
{
  locationCopy = location;
  navigationSession = [(MNLocationTracker *)self navigationSession];
  motionContext = [navigationSession motionContext];

  [motionContext confidence];
  if ([motionContext isWalking] & 1) != 0 || (objc_msgSend(motionContext, "isRunning"))
  {
    detectedTransportType = 2;
  }

  else
  {
    if (([motionContext isDriving] & 1) == 0)
    {
      detectedTransportType = self->_detectedTransportType;
      goto LABEL_9;
    }

    detectedTransportType = 0;
  }

  if (self->_detectedTransportType != detectedTransportType)
  {
    rawLocation = [locationCopy rawLocation];
    [rawLocation coordinate];
    v10 = v9;
    v12 = v11;

    self->_detectedTransportType = detectedTransportType;
    self->_detectedTransportTypeOrigin.latitude = v10;
    self->_detectedTransportTypeOrigin.longitude = v12;
  }

LABEL_9:

  return detectedTransportType;
}

- (BOOL)_allowRerouteForLocation:(id)location
{
  locationCopy = location;
  navigationSessionState = [(MNLocationTracker *)self navigationSessionState];
  initialRouteSource = [navigationSessionState initialRouteSource];

  if ((initialRouteSource & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    navigationSessionState2 = [(MNLocationTracker *)self navigationSessionState];
    hasBeenOnRouteOnce = [navigationSessionState2 hasBeenOnRouteOnce];

    GEOConfigGetDouble();
    v10 = v9;
    if (hasBeenOnRouteOnce)
    {
      lastKnownGoodLocationOnRoute = [(MNTurnByTurnLocationTracker *)self lastKnownGoodLocationOnRoute];
      routeMatch = [lastKnownGoodLocationOnRoute routeMatch];
      [routeMatch locationCoordinate3D];
      v14 = v13;
      v16 = v15;

      _navigation_geoCoordinate3D = [locationCopy _navigation_geoCoordinate3D];
      v24.var2 = v14;
      v25.var0 = v16;
      v19 = GEOCalculateDistance(_navigation_geoCoordinate3D, v18, v24, v25);
    }

    else
    {
      routeMatch2 = [locationCopy routeMatch];
      [routeMatch2 distanceFromRoute];
      v19 = v22;
    }

    v20 = v19 > v10;
  }

  else
  {
    v20 = 1;
  }

  return v20;
}

- (void)_updateForReroute:(id)reroute rerouteReason:(unint64_t)reason request:(id)request response:(id)response
{
  rerouteCopy = reroute;
  v12.receiver = self;
  v12.super_class = MNWalkingTurnByTurnLocationTracker;
  [(MNTurnByTurnLocationTracker *)&v12 _updateForReroute:rerouteCopy rerouteReason:reason request:request response:response];
  if (reason != 11)
  {
    v11 = [MNTrafficIncidentAlert validTrafficIncidentAlertsForNewRoute:rerouteCopy alternateRouteInfo:0];
    [(MNTurnByTurnLocationTracker *)self _updateForNewTrafficIncidentAlerts:v11];
  }
}

- (id)_newMapMatcherForRoute:(id)route
{
  v4 = MEMORY[0x1E69A22A0];
  routeCopy = route;
  v6 = [v4 alloc];
  _auditToken = [(MNLocationTracker *)self _auditToken];
  v8 = [v6 initWithRoute:routeCopy auditToken:_auditToken];

  return v8;
}

- (void)startTrackingWithInitialLocation:(id)location targetLegIndex:(unint64_t)index
{
  v4.receiver = self;
  v4.super_class = MNWalkingTurnByTurnLocationTracker;
  [(MNTurnByTurnLocationTracker *)&v4 startTrackingWithInitialLocation:location targetLegIndex:index];
}

- (MNWalkingTurnByTurnLocationTracker)initWithNavigationSession:(id)session
{
  v7.receiver = self;
  v7.super_class = MNWalkingTurnByTurnLocationTracker;
  v3 = [(MNTurnByTurnLocationTracker *)&v7 initWithNavigationSession:session];
  v4 = v3;
  if (v3)
  {
    v3->_detectedTransportType = 4;
    v5 = v3;
  }

  return v4;
}

@end