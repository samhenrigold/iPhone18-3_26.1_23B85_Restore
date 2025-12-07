@interface _MNLocationSimulationState_ProceedingToWaypoint
- (id)nextSimulatedLocationWithElapsedTime:(double)time;
@end

@implementation _MNLocationSimulationState_ProceedingToWaypoint

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
    v56 = 0;
  }

  else
  {
    legs2 = [routeToFollow legs];
    data3 = [(_MNLocationSimulationState *)self data];
    v13 = [legs2 objectAtIndexedSubscript:{objc_msgSend(data3, "currentLegIndex")}];

    destination = [v13 destination];
    [destination coordinate];
    v16 = v15;
    v18 = v17;
    v20 = v19;

    v58 = 0.0;
    v59 = -1.0;
    data4 = [(_MNLocationSimulationState *)self data];
    lastLocation = [data4 lastLocation];

    if (lastLocation)
    {
      data5 = [(_MNLocationSimulationState *)self data];
      lastLocation2 = [data5 lastLocation];
      [lastLocation2 _navigation_geoCoordinate3D];
      v26 = v25;
      v28 = v27;
      v30 = v29;

      time = [(_MNLocationSimulationState *)self _projectedCoordinateOffRouteFrom:&v59 toCoordinate:&v58 overTimeDelta:v26 outCourse:v28 outSpeed:v30, v16, v18, v20, time];
      v36 = v35;
      v38 = v37;
      v40 = v39;
    }

    else
    {
      [routeToFollow pointAt:{objc_msgSend(v13, "endPointIndex")}];
      v36 = v41;
      v38 = v42;
      v40 = v43;
      time = [routeToFollow courseAtRouteCoordinateIndex:{objc_msgSend(v13, "endPointIndex")}];
      v59 = v44;
    }

    v61.var0 = v36;
    v61.var1 = v38;
    v61.var2 = v16;
    v45 = v18;
    if (GEOCalculateDistance(time, v32, v61, *(&v33 - 1)) < 0.000001)
    {
      data6 = [(_MNLocationSimulationState *)self data];
      currentLegIndex2 = [data6 currentLegIndex];
      legs3 = [routeToFollow legs];
      v49 = [legs3 count] - 1;

      if (currentLegIndex2 >= v49 && (-[_MNLocationSimulationState data](self, "data"), v50 = objc_claimAutoreleasedReturnValue(), v51 = [v50 endAtFinalDestination], v50, v51))
      {
        v52 = objc_alloc_init(_MNLocationSimulationState_End);
      }

      else
      {
        v53 = [_MNLocationSimulationState_WaitingAtWaypoint alloc];
        data7 = [(_MNLocationSimulationState *)self data];
        [data7 currentTime];
        v52 = [_MNLocationSimulationState_WaitingAtWaypoint initWithStartTime:v53 waitDuration:"initWithStartTime:waitDuration:"];
      }

      delegate = [(_MNLocationSimulationState *)self delegate];
      [delegate changeState:v52];
    }

    v56 = [(_MNLocationSimulationState *)self _locationWithCoordinate:v36 course:v38 speed:v40, v59, v58];
  }

  return v56;
}

@end