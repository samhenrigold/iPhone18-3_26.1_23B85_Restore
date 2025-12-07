@interface __MNDepartureMinimumArrivalDistanceCondition
- (__MNDepartureMinimumArrivalDistanceCondition)initWithUpdater:(id)updater distanceThreshold:(double)threshold;
- (double)scoreForLocation:(id)location;
@end

@implementation __MNDepartureMinimumArrivalDistanceCondition

- (double)scoreForLocation:(id)location
{
  v40 = *MEMORY[0x1E69E9840];
  locationCopy = location;
  WeakRetained = objc_loadWeakRetained(&self->_updater);

  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained(&self->_updater);
    arrivalLeg = [v6 arrivalLeg];

    [locationCopy coordinate];
    v9 = v8;
    v11 = v10;
    destination = [arrivalLeg destination];
    [destination coordinate];
    v14 = v13;
    v16 = v15;

    v41.var0 = v9;
    v41.var1 = v11;
    v41.var2 = v14;
    v42.var0 = v16;
    v19 = GEOCalculateDistance(v17, v18, v41, v42);
    if (v19 < self->_closestDistanceToWaypoint)
    {
      self->_closestDistanceToWaypoint = v19;
      v20 = MNGetMNDepartureUpdaterLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v36 = 134217984;
        *v37 = v19;
        _os_log_impl(&dword_1D311E000, v20, OS_LOG_TYPE_INFO, "Updating closest distance to waypoint: %g", &v36, 0xCu);
      }
    }

    v21 = objc_loadWeakRetained(&self->_updater);
    route = [v21 route];
    routeMatch = [locationCopy routeMatch];
    v24 = [route segmentIndexForPointIndex:{objc_msgSend(routeMatch, "routeCoordinate")}];

    v25 = -1.0;
    if ([locationCopy state] == 1)
    {
      v26 = objc_loadWeakRetained(&self->_updater);
      arrivalWaypointLegIndex = [v26 arrivalWaypointLegIndex];

      if (v24 > arrivalWaypointLegIndex)
      {
        closestDistanceToWaypoint = self->_closestDistanceToWaypoint;
        threshold = self->_threshold;
        if (closestDistanceToWaypoint <= threshold)
        {
          v30 = MNGetMNDepartureUpdaterLog();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            v31 = objc_loadWeakRetained(&self->_updater);
            arrivalWaypointLegIndex2 = [v31 arrivalWaypointLegIndex];
            v33 = self->_closestDistanceToWaypoint;
            v34 = self->_threshold;
            v36 = 67109632;
            *v37 = arrivalWaypointLegIndex2;
            *&v37[4] = 2048;
            *&v37[6] = v33;
            v38 = 2048;
            v39 = v34;
            _os_log_impl(&dword_1D311E000, v30, OS_LOG_TYPE_DEFAULT, "Minimum distance to intermediary waypoint arrival point completed. Leg: %d. Distance (%0.1fm) < Required distance (%0.1fm).", &v36, 0x1Cu);
          }

          v25 = 1.0;
        }

        else
        {
          v25 = threshold / closestDistanceToWaypoint;
        }
      }
    }
  }

  else
  {
    v25 = -1.0;
  }

  return v25;
}

- (__MNDepartureMinimumArrivalDistanceCondition)initWithUpdater:(id)updater distanceThreshold:(double)threshold
{
  updaterCopy = updater;
  v11.receiver = self;
  v11.super_class = __MNDepartureMinimumArrivalDistanceCondition;
  v7 = [(__MNDepartureMinimumArrivalDistanceCondition *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_updater, updaterCopy);
    v8->_threshold = threshold;
    v8->_closestDistanceToWaypoint = 1.79769313e308;
    v9 = v8;
  }

  return v8;
}

@end