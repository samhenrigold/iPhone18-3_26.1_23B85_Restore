@interface _MNLocationSimulationState_SearchingForParkingBeforeArrival
- (double)_scoreForRoad:(id)road coordinate:(id)coordinate;
- (id)nextSimulatedLocationWithElapsedTime:(double)time;
- (void)_findParkingLocation:(id)location;
- (void)_findRouteToParkingDestination;
- (void)_findRouteToParkingLocation:(id)location finishedHandler:(id)handler;
- (void)_handleReachedParkingLocation;
@end

@implementation _MNLocationSimulationState_SearchingForParkingBeforeArrival

- (void)_handleReachedParkingLocation
{
  delegate = [(_MNLocationSimulationState *)self delegate];
  v2 = objc_alloc_init(_MNLocationSimulationState_WaitingForParkingSignal);
  [delegate changeState:v2];
}

- (void)_findRouteToParkingLocation:(id)location finishedHandler:(id)handler
{
  v31[2] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v7 = MEMORY[0x1E69A1E70];
  locationCopy = location;
  v9 = [v7 alloc];
  data = [(_MNLocationSimulationState *)self data];
  lastLocation = [data lastLocation];
  v12 = [v9 initWithCLLocation:lastLocation];

  v13 = [objc_alloc(MEMORY[0x1E69A1CC8]) initWithLocation:v12 isCurrentLocation:1];
  v14 = [objc_alloc(MEMORY[0x1E69A1CC8]) initWithLocation:locationCopy isCurrentLocation:0];
  v15 = objc_alloc_init(MEMORY[0x1E69A1D30]);
  v16 = MNNavigationQueue();
  [v15 setCallbackQueue:v16];

  [v15 setRequestType:1];
  [v15 setCurrentLocation:locationCopy];

  v31[0] = v13;
  v31[1] = v14;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:2];
  [v15 setWaypoints:v17];

  [v15 setTransportType:0];
  data2 = [(_MNLocationSimulationState *)self data];
  routeInfo = [data2 routeInfo];
  route = [routeInfo route];
  routeAttributes = [route routeAttributes];
  [v15 setRouteAttributes:routeAttributes];

  [v15 setMaxRouteCount:1];
  data3 = [(_MNLocationSimulationState *)self data];
  auditToken = [data3 auditToken];
  [v15 setAuditToken:auditToken];

  data4 = [(_MNLocationSimulationState *)self data];
  requestingAppIdentifier = [data4 requestingAppIdentifier];
  [v15 setRequestingAppIdentifier:requestingAppIdentifier];

  mEMORY[0x1E69A1D18] = [MEMORY[0x1E69A1D18] sharedService];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __107___MNLocationSimulationState_SearchingForParkingBeforeArrival__findRouteToParkingLocation_finishedHandler___block_invoke;
  v29[3] = &unk_1E842EF50;
  v30 = handlerCopy;
  v27 = handlerCopy;
  v28 = [mEMORY[0x1E69A1D18] requestRoutes:v15 handler:v29];
}

- (double)_scoreForRoad:(id)road coordinate:(id)coordinate
{
  var1 = coordinate.var1;
  var0 = coordinate.var0;
  roadCopy = road;
  internalRoadName = [roadCopy internalRoadName];

  v9 = 0.0;
  if (internalRoadName)
  {
    if ([roadCopy roadClass] != 9)
    {
      coordinates3d = [roadCopy coordinates3d];
      v11 = coordinates3d + 24 * [roadCopy coordinateCount];
      v12 = *(v11 - 24);
      v13 = *(v11 - 16);
      travelDirection = [roadCopy travelDirection];
      if (travelDirection != 1 || (v38.var0 = var0, v38.var1 = var1, v38.var2 = v12, v18 = v13, v19 = GEOCalculateDistance(travelDirection, v15, v38, *(&v16 - 1)), v20 = [roadCopy coordinates3d], *&v39.var2 = v20->super.isa, v41.var0 = v20->_toleranceMeters, v39.var0 = var0, v39.var1 = var1, GEOCalculateDistance(v20, v21, v39, v41) < v19))
      {
        v22 = objc_alloc(MEMORY[0x1E69A2548]);
        data = [(_MNLocationSimulationState *)self data];
        routeInfo = [data routeInfo];
        route = [routeInfo route];
        data2 = [(_MNLocationSimulationState *)self data];
        auditToken = [data2 auditToken];
        v28 = [v22 initWithRoute:route auditToken:auditToken];

        [v28 distanceToRouteFrom:{v12, v13}];
        if (v29 >= 50.0 && v29 <= 75.0)
        {
          data3 = [(_MNLocationSimulationState *)self data];
          routeInfo2 = [data3 routeInfo];
          route2 = [routeInfo2 route];

          v33 = [route2 pointAt:{objc_msgSend(route2, "pointCount") - 1}];
          v40.var2 = v34;
          v42.var0 = v35;
          v40.var0 = v12;
          v40.var1 = v13;
          v9 = GEOCalculateDistance(v33, v36, v40, v42);
        }
      }
    }
  }

  return v9;
}

- (void)_findParkingLocation:(id)location
{
  locationCopy = location;
  v5 = objc_alloc(MEMORY[0x1E69A2198]);
  v6 = [v5 initWithQueue:MEMORY[0x1E69E96A0]];
  data = [(_MNLocationSimulationState *)self data];
  auditToken = [data auditToken];
  [v6 setAuditToken:auditToken];

  [v6 setAllowNetworkTileLoad:1];
  [v6 setFlipNegativeTravelDirectionRoads:1];
  [v6 setVisitDoubleTravelDirectionRoadsTwice:0];
  data2 = [(_MNLocationSimulationState *)self data];
  lastLocation = [data2 lastLocation];
  [lastLocation _navigation_geoCoordinate];
  v12 = v11;
  v14 = v13;

  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x3032000000;
  v32[3] = __Block_byref_object_copy__8092;
  v32[4] = __Block_byref_object_dispose__8093;
  v33 = 0;
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x2020000000;
  v31[3] = 0;
  data3 = [(_MNLocationSimulationState *)self data];
  routeInfo = [data3 routeInfo];
  route = [routeInfo route];
  data4 = [(_MNLocationSimulationState *)self data];
  routeInfo2 = [data4 routeInfo];
  route2 = [routeInfo2 route];
  [route pointAt:{objc_msgSend(route2, "pointCount") - 1}];
  v22 = v21;
  v24 = v23;

  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __84___MNLocationSimulationState_SearchingForParkingBeforeArrival__findParkingLocation___block_invoke;
  v30[3] = &unk_1E842BD50;
  v30[7] = v12;
  v30[8] = v14;
  v30[4] = self;
  v30[5] = v31;
  v30[6] = v32;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __84___MNLocationSimulationState_SearchingForParkingBeforeArrival__findParkingLocation___block_invoke_2;
  v27[3] = &unk_1E842BD78;
  v29 = v32;
  v25 = locationCopy;
  v28 = v25;
  v26 = [v6 findRoadsNear:v30 radius:v27 handler:v22 completionHandler:{v24, 200.0}];

  _Block_object_dispose(v31, 8);
  _Block_object_dispose(v32, 8);
}

- (void)_findRouteToParkingDestination
{
  v3 = [MNSequence alloc];
  v4 = dispatch_queue_create("MNNavigationSimulation_SearchingForParking", 0);
  v5 = [(MNSequence *)v3 initWithQueue:v4];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __93___MNLocationSimulationState_SearchingForParkingBeforeArrival__findRouteToParkingDestination__block_invoke;
  v8[3] = &unk_1E842F1D8;
  v8[4] = self;
  [(MNSequence *)v5 addStep:v8];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __93___MNLocationSimulationState_SearchingForParkingBeforeArrival__findRouteToParkingDestination__block_invoke_2;
  v7[3] = &unk_1E842BC60;
  v7[4] = self;
  [(MNSequence *)v5 addStep:v7];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __93___MNLocationSimulationState_SearchingForParkingBeforeArrival__findRouteToParkingDestination__block_invoke_3;
  v6[3] = &unk_1E842BD28;
  v6[4] = self;
  [(MNSequence *)v5 addStep:v6];
  [(MNSequence *)v5 start];
}

- (id)nextSimulatedLocationWithElapsedTime:(double)time
{
  if (!self->_routeToParkingDestination)
  {
    data = [(_MNLocationSimulationState *)self data];
    lastLocation = [data lastLocation];
    [lastLocation _navigation_geoCoordinate3D];
    v24 = v23;
    v26 = v25;
    v28 = v27;

    data2 = [(_MNLocationSimulationState *)self data];
    lastLocation2 = [data2 lastLocation];
    [lastLocation2 course];
    v20 = [(_MNLocationSimulationState *)self _locationWithCoordinate:v24 course:v26 speed:v28, v30, 0.0];

LABEL_7:
    goto LABEL_8;
  }

  v32 = 0.0;
  data3 = [(_MNLocationSimulationState *)self data];
  v6 = -[_MNLocationSimulationState_FollowingRoute _projectedCoordinateOnRouteFrom:overTimeDelta:outSpeed:](self, "_projectedCoordinateOnRouteFrom:overTimeDelta:outSpeed:", [data3 lastRouteCoordinate], &v32, time);

  if (GEOPolylineCoordinateIsValid())
  {
    data2 = [(_MNLocationSimulationState_SearchingForParkingBeforeArrival *)self _routeToFollow];
    [data2 pointAtRouteCoordinate:v6];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    [data2 courseAtRouteCoordinateIndex:v6];
    v15 = v14;
    data4 = [(_MNLocationSimulationState *)self data];
    [data4 setLastRouteCoordinate:v6];

    legs = [data2 legs];
    data5 = [(_MNLocationSimulationState *)self data];
    v19 = [legs objectAtIndexedSubscript:{objc_msgSend(data5, "currentLegIndex")}];

    if ([(_MNLocationSimulationState_FollowingRoute *)self _isCoordinate:v6 atEndOfLeg:v19])
    {
      [(_MNLocationSimulationState_SearchingForParkingBeforeArrival *)self _handleReachedParkingLocation];
    }

    v20 = [(_MNLocationSimulationState *)self _locationWithCoordinate:v9 course:v11 speed:v13, v15, v32];

    goto LABEL_7;
  }

  v20 = 0;
LABEL_8:

  return v20;
}

@end