@interface __MNDepartureTimeSpentCondition
- (__MNDepartureTimeSpentCondition)initWithUpdater:(id)updater timeThreshold:(double)threshold;
- (double)scoreForLocation:(id)location;
@end

@implementation __MNDepartureTimeSpentCondition

- (double)scoreForLocation:(id)location
{
  v29 = *MEMORY[0x1E69E9840];
  locationCopy = location;
  WeakRetained = objc_loadWeakRetained(&self->_updater);

  v6 = -1.0;
  if (WeakRetained)
  {
    initialDate = self->_initialDate;
    if (initialDate)
    {
      [(NSDate *)initialDate timeIntervalSinceNow];
      v9 = v8;
      v10 = objc_loadWeakRetained(&self->_updater);
      route = [v10 route];
      routeMatch = [locationCopy routeMatch];
      v13 = [route segmentIndexForPointIndex:{objc_msgSend(routeMatch, "routeCoordinate")}];

      if ([locationCopy state] == 1)
      {
        v14 = objc_loadWeakRetained(&self->_updater);
        arrivalWaypointLegIndex = [v14 arrivalWaypointLegIndex];

        if (v13 > arrivalWaypointLegIndex)
        {
          threshold = self->_threshold;
          if (threshold <= -v9)
          {
            v20 = MNGetMNDepartureUpdaterLog();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              v21 = objc_loadWeakRetained(&self->_updater);
              arrivalWaypointLegIndex2 = [v21 arrivalWaypointLegIndex];
              v23 = self->_threshold;
              v24[0] = 67109632;
              v24[1] = arrivalWaypointLegIndex2;
              v25 = 2048;
              v26 = -v9;
              v27 = 2048;
              v28 = v23;
              _os_log_impl(&dword_1D311E000, v20, OS_LOG_TYPE_DEFAULT, "Minimum time spent at intermediary waypoint arrival point completed. Leg: %d. Time (%0.1fm) > Required time (%0.1fm).", v24, 0x1Cu);
            }

            v6 = 1.0;
          }

          else
          {
            v6 = -v9 / threshold;
          }
        }
      }
    }

    else
    {
      v17 = [MEMORY[0x1E695DF00] now];
      v18 = self->_initialDate;
      self->_initialDate = v17;
    }
  }

  return v6;
}

- (__MNDepartureTimeSpentCondition)initWithUpdater:(id)updater timeThreshold:(double)threshold
{
  updaterCopy = updater;
  v11.receiver = self;
  v11.super_class = __MNDepartureTimeSpentCondition;
  v7 = [(__MNDepartureTimeSpentCondition *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_updater, updaterCopy);
    v8->_threshold = fmin(threshold, 1.0);
    v9 = v8;
  }

  return v8;
}

@end