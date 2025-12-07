@interface _MNLocationSimulationState
- ($1AB5FA073B851C12C2339EC22442E995)_projectedCoordinateOffRouteFrom:(id)from toCoordinate:(id)coordinate overTimeDelta:(double)delta outCourse:(double *)course outSpeed:(double *)speed;
- (_MNLocationSimulationStateDelegate)delegate;
- (double)_courseFromCoordinate:(id)coordinate toCoordinate:(id)toCoordinate;
- (id)_followRouteStateWithStartRouteCoordinate:(id)coordinate;
- (id)_locationWithCoordinate:(id)coordinate course:(double)course speed:(double)speed;
- (id)nextSimulatedLocationWithElapsedTime:(double)time;
- (int64_t)type;
- (void)updateWithRouteInfo:(id)info rerouteReason:(unint64_t)reason;
@end

@implementation _MNLocationSimulationState

- (_MNLocationSimulationStateDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (double)_courseFromCoordinate:(id)coordinate toCoordinate:(id)toCoordinate
{
  GEOBearingFromCoordinateToCoordinate();
    ;
  }

    ;
  }

  return result;
}

- ($1AB5FA073B851C12C2339EC22442E995)_projectedCoordinateOffRouteFrom:(id)from toCoordinate:(id)coordinate overTimeDelta:(double)delta outCourse:(double *)course outSpeed:(double *)speed
{
  var0 = coordinate.var0;
  var2 = from.var2;
  var1 = from.var1;
  v10 = from.var0;
  v11 = -180.0;
  v12 = 1.79769313e308;
  if (fabs(from.var1) > 180.0 || from.var0 < -90.0)
  {
    v13 = -180.0;
    goto LABEL_15;
  }

  v45 = var2;
  v13 = -180.0;
  if (from.var0 <= 90.0)
  {
    v17 = coordinate.var2;
    v18 = coordinate.var1;
    data = [(_MNLocationSimulationState *)self data];
    [data speedOverride];
    v22 = v21;

    v27 = 5.0;
    if (v22 >= 0.0)
    {
      data2 = [(_MNLocationSimulationState *)self data];
      [data2 speedOverride];
      v27 = v29;
    }

    if (speed)
    {
      *speed = v27;
    }

    v30 = v27 * delta;
    v46.var0 = v10;
    v46.var1 = var1;
    v46.var2 = var0;
    v31 = v18;
    v34 = GEOCalculateDistance(v23, v24, v46, *(&v25 - 1));
    if (v30 <= v34)
    {
      v37 = v30 / v34;
      v13 = v10 + v37 * (var0 - v10);
      v11 = var1 + v37 * (v18 - var1);
      if (course)
      {
        v47.var0 = v10;
        v47.var1 = var1;
        v47.var2 = var0;
        v38 = v18;
        if (GEOCalculateDistance(v32, v33, v47, *(&v35 - 1)) >= 0.000001)
        {
          [(_MNLocationSimulationState *)self _courseFromCoordinate:v10 toCoordinate:var1, v45, var0, v18, v17];
          *course = v42;
          v12 = v45;
          goto LABEL_15;
        }

        data3 = [(_MNLocationSimulationState *)self data];
        lastLocation = [data3 lastLocation];
        [lastLocation course];
        *course = v41;
      }

      v12 = v45;
    }

    else
    {
      v12 = v17;
      v11 = v18;
      v13 = var0;
    }
  }

LABEL_15:
  v43 = v13;
  v44 = v11;
  result.var2 = v12;
  result.var1 = v44;
  result.var0 = v43;
  return result;
}

- (id)_followRouteStateWithStartRouteCoordinate:(id)coordinate
{
  data = [(_MNLocationSimulationState *)self data];
  simulationType = [data simulationType];

  v6 = &off_1E8428FF0;
  if (simulationType != 4)
  {
    v6 = off_1E8428FE0;
  }

  v7 = [objc_alloc(*v6) initWithStartRouteCoordinate:coordinate];

  return v7;
}

- (id)_locationWithCoordinate:(id)coordinate course:(double)course speed:(double)speed
{
  var2 = coordinate.var2;
  var1 = coordinate.var1;
  var0 = coordinate.var0;
  data = [(_MNLocationSimulationState *)self data];
  if ([data isChinaShifted])
  {
    v11 = 2;
  }

  else
  {
    v11 = 1;
  }

  v14 = 1;
  v15 = var0;
  v16 = var1;
  v17 = 0x4014000000000000;
  v18 = var2;
  v19 = 0x3FF0000000000000;
  speedCopy = speed;
  v21 = 0;
  courseCopy = course;
  v23 = 0x4024000000000000;
  Current = CFAbsoluteTimeGetCurrent();
  v25 = 0;
  v26 = 0x100000000;
  v27 = var0;
  v28 = var1;
  courseCopy2 = course;
  v30 = 0;
  v31 = v11;
  v32 = v11;
  v34 = 0;
  v33 = 0;
  v12 = [[MNLocation alloc] initWithClientLocation:&v14];

  return v12;
}

- (void)updateWithRouteInfo:(id)info rerouteReason:(unint64_t)reason
{
  v45 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  data = [(_MNLocationSimulationState *)self data];
  if ([data simulationType] == 2)
  {
  }

  else
  {
    data2 = [(_MNLocationSimulationState *)self data];
    simulationType = [data2 simulationType];

    if (simulationType != 4)
    {
      goto LABEL_16;
    }
  }

  lastLocation = [(_MNLocationSimulationData *)self->_data lastLocation];
  [lastLocation coordinate];
  v11 = v10;
  v13 = v12;

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  route = [infoCopy route];
  legs = [route legs];

  v16 = [legs countByEnumeratingWithState:&v38 objects:v44 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v39;
    v19 = 1.79769313e308;
    do
    {
      v20 = 0;
      do
      {
        if (*v39 != v18)
        {
          objc_enumerationMutation(legs);
        }

        v21 = *(*(&v38 + 1) + 8 * v20);
        route2 = [infoCopy route];
        [route2 pointAtRouteCoordinate:{objc_msgSend(v21, "startRouteCoordinate")}];
        v24 = v23;
        v26 = v25;

        v46.var0 = v11;
        v46.var1 = v13;
        v46.var2 = v24;
        v47.var0 = v26;
        v29 = GEOCalculateDistance(v27, v28, v46, v47);
        if (v29 < v19)
        {
          v30 = v29;
          legIndex = [v21 legIndex];
          data3 = [(_MNLocationSimulationState *)self data];
          [data3 setCurrentLegIndex:legIndex];

          v19 = v30;
        }

        ++v20;
      }

      while (v17 != v20);
      v17 = [legs countByEnumeratingWithState:&v38 objects:v44 count:16];
    }

    while (v17);
  }

  v33 = MNGetMNNavigationSimulationLog();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    data4 = [(_MNLocationSimulationState *)self data];
    currentLegIndex = [data4 currentLegIndex];
    *buf = 67109120;
    v43 = currentLegIndex;
    _os_log_impl(&dword_1D311E000, v33, OS_LOG_TYPE_DEFAULT, "Proceeding to start of leg %d of new route.", buf, 8u);
  }

  delegate = [(_MNLocationSimulationState *)self delegate];
  v37 = objc_alloc_init(_MNLocationSimulationState_ProceedingToStartOfLeg);
  [delegate changeState:v37];

LABEL_16:
}

- (id)nextSimulatedLocationWithElapsedTime:(double)time
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    *v4 = 0;
    _os_log_fault_impl(&dword_1D311E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Unreachable reached: Must be implemented by subclasses.", v4, 2u);
  }

  return 0;
}

- (int64_t)type
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    *v3 = 0;
    _os_log_fault_impl(&dword_1D311E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Unreachable reached: Must be implemented by subclasses.", v3, 2u);
  }

  return 0;
}

@end