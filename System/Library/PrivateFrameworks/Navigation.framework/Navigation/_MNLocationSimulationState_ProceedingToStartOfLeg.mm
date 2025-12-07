@interface _MNLocationSimulationState_ProceedingToStartOfLeg
- (id)nextSimulatedLocationWithElapsedTime:(double)time;
- (void)onEnterState;
@end

@implementation _MNLocationSimulationState_ProceedingToStartOfLeg

- (id)nextSimulatedLocationWithElapsedTime:(double)time
{
  data = [(_MNLocationSimulationState *)self data];
  routeToFollow = [data routeToFollow];

  data2 = [(_MNLocationSimulationState *)self data];
  currentLegIndex = [data2 currentLegIndex];
  legs = [routeToFollow legs];
  v10 = [legs count];

  if (currentLegIndex >= v10)
  {
    v38 = 0;
  }

  else
  {
    legs2 = [routeToFollow legs];
    data3 = [(_MNLocationSimulationState *)self data];
    v13 = [legs2 objectAtIndexedSubscript:{objc_msgSend(data3, "currentLegIndex")}];

    [routeToFollow pointAt:{objc_msgSend(v13, "startPointIndex")}];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v40 = 0.0;
    v41 = -1.0;
    data4 = [(_MNLocationSimulationState *)self data];
    lastLocation = [data4 lastLocation];
    [lastLocation _navigation_geoCoordinate3D];
    v23 = v22;
    v25 = v24;

    data5 = [(_MNLocationSimulationState *)self data];
    lastLocation2 = [data5 lastLocation];
    [lastLocation2 altitude];
    v29 = v28;

    time = [(_MNLocationSimulationState *)self _projectedCoordinateOffRouteFrom:&v41 toCoordinate:&v40 overTimeDelta:v23 outCourse:v25 outSpeed:v29, v15, v17, v19, time];
    var0 = v43.var0;
    var1 = v43.var1;
    v34 = v33;
    v43.var2 = v15;
    v44.var0 = v17;
    if (GEOCalculateDistance(time, v35, v43, v44) < 0.000001)
    {
      delegate = [(_MNLocationSimulationState *)self delegate];
      v37 = -[_MNLocationSimulationState _followRouteStateWithStartRouteCoordinate:](self, "_followRouteStateWithStartRouteCoordinate:", [v13 startRouteCoordinate]);
      [delegate changeState:v37];
    }

    v38 = [(_MNLocationSimulationState *)self _locationWithCoordinate:var0 course:var1 speed:v34, v41, v40];
  }

  return v38;
}

- (void)onEnterState
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = MNGetMNNavigationSimulationLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    data = [(_MNLocationSimulationState *)self data];
    v9 = 67109120;
    LODWORD(v10) = [data currentLegIndex];
  }

  data2 = [(_MNLocationSimulationState *)self data];
  lastLocation = [data2 lastLocation];

  if (!lastLocation)
  {
    v7 = MNGetMNNavigationSimulationLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v9) = 0;
    }

    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315650;
      v10 = "[_MNLocationSimulationState_ProceedingToStartOfLeg onEnterState]";
      v11 = 2080;
      v12 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Simulation/MNSimulatedLocationGenerator.m";
      v13 = 1024;
      v14 = 539;
      _os_log_impl(&dword_1D311E000, v8, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: Hit an unreachable code path", &v9, 0x1Cu);
    }
  }
}

@end