@interface MSPNavigationListener
- (BOOL)_currentlyArrivedAtWaypoint;
- (BOOL)_isCompatibleTransportType:(int)type;
- (BOOL)_updateArrivalTimeAndDistance:(id)distance;
- (BOOL)_updateLocation:(id)location withRouteMatchedCoordinate:(id)coordinate;
- (BOOL)_updateTraffic:(id)traffic;
- (BOOL)_updateWaypointsIfNeeded:(id)needed;
- (BOOL)isCompatibleNavigationType;
- (BOOL)isCompatibleTransportType;
- (MSPNavigationListener)init;
- (MSPNavigationListenerDelegate)delegate;
- (NSString)description;
- (NSString)navigationSessionIdentifier;
- (int)_analyticsPipelineTransportModeForGEOTransportType:(int)type;
- (int)_currentTransportType;
- (int)_referenceFrameForDestination:(id)destination;
- (void)_checkStateIsReady;
- (void)_clearArrivedState;
- (void)_initPendingStateIfNeeded;
- (void)_initPendingStateIfNeededWithTransportType:(int)type isResumingMultipointRoute:(BOOL)route;
- (void)_performDelegateNotificationBlockIfReady:(id)ready;
- (void)_updateCurrentWaypointIndexFromArrivalTimeInfo:(id)info;
- (void)_updateRoute:(id)route;
- (void)_updateTransaction;
- (void)_updateTransportTypeFromCurrentState;
- (void)dealloc;
- (void)navigationListener:(id)listener didArriveAtWaypoint:(id)waypoint endOfLegIndex:(unint64_t)index;
- (void)navigationListener:(id)listener didChangeNavigationState:(unint64_t)state transportType:(int)type;
- (void)navigationListener:(id)listener didResumeNavigatingFromWaypoint:(id)waypoint endOfLegIndex:(unint64_t)index;
- (void)navigationListener:(id)listener didUpdateETA:(id)a;
- (void)navigationListener:(id)listener didUpdateGuidanceState:(id)state;
- (void)navigationListener:(id)listener didUpdateLocation:(id)location routeMatchedCoordinate:(id)coordinate;
- (void)navigationListener:(id)listener didUpdateRoute:(id)route;
- (void)navigationListener:(id)listener didUpdateTrafficForCurrentRoute:(id)route;
- (void)setDelegate:(id)delegate;
@end

@implementation MSPNavigationListener

- (MSPNavigationListener)init
{
  v12 = *MEMORY[0x277D85DE8];
  v9.receiver = self;
  v9.super_class = MSPNavigationListener;
  v2 = [(MSPNavigationListener *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v4 = MSPGetSharedTripLog(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136380675;
      v11 = "[MSPNavigationListener init]";
      _os_log_impl(&dword_25813A000, v4, OS_LOG_TYPE_DEBUG, "[NavListener] %{private}s", buf, 0xCu);
    }

    v5 = objc_alloc(MEMORY[0x277D0EBF0]);
    v6 = [v5 initWithQueue:MEMORY[0x277D85CD0] wantsRoutes:1];
    navigationListener = v3->_navigationListener;
    v3->_navigationListener = v6;

    [(GEONavigationListener *)v3->_navigationListener setDelegate:v3];
  }

  return v3;
}

- (void)_initPendingStateIfNeeded
{
  _currentTransportType = [(MSPNavigationListener *)self _currentTransportType];
  isResumingMultipointRoute = [(GEONavigationListener *)self->_navigationListener isResumingMultipointRoute];

  [(MSPNavigationListener *)self _initPendingStateIfNeededWithTransportType:_currentTransportType isResumingMultipointRoute:isResumingMultipointRoute];
}

- (void)_initPendingStateIfNeededWithTransportType:(int)type isResumingMultipointRoute:(BOOL)route
{
  routeCopy = route;
  v5 = *&type;
  v24 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = WeakRetained;
  if (!WeakRetained)
  {
    v9 = MSPGetSharedTripLog(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v10 = "MSPNavigationListener not creating state, no delegate";
      goto LABEL_16;
    }

LABEL_17:

    goto LABEL_18;
  }

  if (self->_state)
  {
    v9 = MSPGetSharedTripLog(WeakRetained);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v10 = "MSPNavigationListener not creating state, we already have one";
LABEL_16:
      _os_log_impl(&dword_25813A000, v9, OS_LOG_TYPE_INFO, v10, buf, 2u);
      goto LABEL_17;
    }

    goto LABEL_17;
  }

  isInNavigatingState = [(MSPNavigationListener *)self isInNavigatingState];
  if ((isInNavigatingState & 1) == 0)
  {
    v9 = MSPGetSharedTripLog(isInNavigatingState);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v10 = "MSPNavigationListener not creating state, not navigating";
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  if (v5 == 4 || (isInNavigatingState = [(MSPNavigationListener *)self _isCompatibleTransportType:v5], (isInNavigatingState & 1) == 0))
  {
    v9 = MSPGetSharedTripLog(isInNavigatingState);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      if (v5 >= 7)
      {
        v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v5];
      }

      else
      {
        v17 = off_2798684E0[v5];
      }

      *buf = 138412290;
      v21 = v17;
      _os_log_impl(&dword_25813A000, v9, OS_LOG_TYPE_INFO, "MSPNavigationListener not creating state, unknown or incompatible transport type: %@", buf, 0xCu);
    }

    goto LABEL_17;
  }

  v12 = objc_alloc_init(MEMORY[0x277D0ED30]);
  state = self->_state;
  self->_state = v12;

  navigationSessionIdentifier = [(MSPNavigationListener *)self navigationSessionIdentifier];
  [(GEOSharedNavState *)self->_state setGroupIdentifier:navigationSessionIdentifier];

  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v15 = MSPGetSharedTripLog([(GEOSharedNavState *)self->_state setUpdatedTimestamp:?]);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    if (v5 < 7 && ((0x6Fu >> v5) & 1) != 0)
    {
      v16 = off_2798684A8[v5];
    }

    else
    {
      v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v5];
    }

    *buf = 138412546;
    v21 = v16;
    v22 = 1024;
    v23 = routeCopy;
    _os_log_impl(&dword_25813A000, v15, OS_LOG_TYPE_DEFAULT, "MSPNavigationListener create state for transport type: %@ isResumingMultipointRoute: %d", buf, 0x12u);
  }

  [(GEOSharedNavState *)self->_state setTransportType:v5];
  [(GEOSharedNavState *)self->_state setProtocolVersion:1];
  [(GEOSharedNavState *)self->_state setClosed:0];
  [(GEOSharedNavState *)self->_state setArrived:[(MSPNavigationListener *)self _currentlyArrivedAtWaypoint]];
  v18 = [(GEOSharedNavState *)self->_state setResumed:routeCopy];
  self->_postedStateIsReady = 0;
  v19 = MSPGetSharedTripLog(v18);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25813A000, v19, OS_LOG_TYPE_INFO, "MSPNavigationListener requesting current guidance, route, ETA and current step...", buf, 2u);
  }

  [(GEONavigationListener *)self->_navigationListener requestGuidanceState];
  [(GEONavigationListener *)self->_navigationListener requestRoute];
  [(GEONavigationListener *)self->_navigationListener requestETAUpdate];
  [(GEONavigationListener *)self->_navigationListener requestStepIndex];
LABEL_18:
}

- (void)_checkStateIsReady
{
  v27 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = WeakRetained;
  if (self->_state && !self->_postedStateIsReady && WeakRetained)
  {
    v5 = MSPGetSharedTripLog(WeakRetained);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25813A000, v5, OS_LOG_TYPE_DEFAULT, "MSPNavigationListener checking state...", buf, 2u);
    }

    destinationInfo = [(GEOSharedNavState *)self->_state destinationInfo];
    if (!destinationInfo || ![(GEOSharedNavState *)self->_state waypointInfosCount])
    {
      goto LABEL_15;
    }

    etaInfo = [(GEOSharedNavState *)self->_state etaInfo];
    if (![etaInfo hasEtaTimestamp] || (-[GEOSharedNavState hasTransportType](self->_state, "hasTransportType") & 1) == 0)
    {

LABEL_15:
      goto LABEL_16;
    }

    hasCurrentWaypointIndex = [(GEOSharedNavState *)self->_state hasCurrentWaypointIndex];

    if (hasCurrentWaypointIndex)
    {
      destinationInfo = [(GEONavigationListener *)self->_navigationListener lastLocation];
      v9 = MSPGetSharedTripLog([(MSPNavigationListener *)self _updateLocation:destinationInfo withRouteMatchedCoordinate:*MEMORY[0x277D0E9F8]]);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        transportType = [(GEOSharedNavState *)self->_state transportType];
        if (transportType >= 7)
        {
          v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", transportType];
        }

        else
        {
          v11 = off_2798684E0[transportType];
        }

        state = self->_state;
        v13 = v11;
        etaInfos = [(GEOSharedNavState *)state etaInfos];
        destinationName = [(GEOSharedNavState *)self->_state destinationName];
        waypointInfosCount = [(GEOSharedNavState *)self->_state waypointInfosCount];

        *buf = 138413314;
        v18 = v11;
        v19 = 2112;
        v20 = etaInfos;
        v21 = 2112;
        v22 = destinationName;
        v23 = 2048;
        v24 = waypointInfosCount;
        v25 = 2112;
        v26 = destinationInfo;
        _os_log_impl(&dword_25813A000, v9, OS_LOG_TYPE_DEFAULT, "MSPNavigationListener has required info (transportType: %@, ETAs: %@, destination: %@, %lu waypoints), optional (location: %@)", buf, 0x34u);
      }

      self->_postedStateIsReady = 1;
      [v4 navigationListenerIsReady:self];
      goto LABEL_15;
    }
  }

LABEL_16:
}

- (NSString)navigationSessionIdentifier
{
  navigationSessionIdentifier = self->_navigationSessionIdentifier;
  if (!navigationSessionIdentifier)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    v6 = self->_navigationSessionIdentifier;
    self->_navigationSessionIdentifier = uUIDString;

    navigationSessionIdentifier = self->_navigationSessionIdentifier;
  }

  return navigationSessionIdentifier;
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    state = self->_state;
    self->_state = 0;

    self->_postedStateIsReady = 0;
  }

  objc_storeWeak(&self->_delegate, obj);
  [(MSPNavigationListener *)self _updateTransaction];
  [(MSPNavigationListener *)self _initPendingStateIfNeeded];
}

- (void)dealloc
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = MSPGetSharedTripLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136380675;
    v6 = "[MSPNavigationListener dealloc]";
    _os_log_impl(&dword_25813A000, v3, OS_LOG_TYPE_DEBUG, "[NavListener] %{private}s", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = MSPNavigationListener;
  [(MSPNavigationListener *)&v4 dealloc];
}

- (BOOL)isCompatibleNavigationType
{
  if ([(GEONavigationListener *)self->_navigationListener navigationState]== 2)
  {
    hasNavigationType = [(GEONavigationGuidanceState *)self->_guidanceState hasNavigationType];
    if (hasNavigationType)
    {
      LOBYTE(hasNavigationType) = [(GEONavigationGuidanceState *)self->_guidanceState navigationType]== 1;
    }
  }

  else
  {
    LOBYTE(hasNavigationType) = 0;
  }

  return hasNavigationType;
}

- (BOOL)isCompatibleTransportType
{
  _currentTransportType = [(MSPNavigationListener *)self _currentTransportType];

  return [(MSPNavigationListener *)self _isCompatibleTransportType:_currentTransportType];
}

- (BOOL)_isCompatibleTransportType:(int)type
{
  if ([(GEONavigationListener *)self->_navigationListener navigationState]!= 2)
  {
    return 0;
  }

  if ((type - 1) > 5)
  {
    v4 = 1;
  }

  else
  {
    v4 = qword_2581C4878[type - 1];
  }

  return MSPSharedTripSharingSupportedForTransportType(v4);
}

- (int)_currentTransportType
{
  if (![(GEONavigationGuidanceState *)self->_guidanceState hasTrackedTransportType])
  {
    return 4;
  }

  guidanceState = self->_guidanceState;

  return [(GEONavigationGuidanceState *)guidanceState trackedTransportType];
}

- (BOOL)_currentlyArrivedAtWaypoint
{
  hasNavigationState = [(GEONavigationGuidanceState *)self->_guidanceState hasNavigationState];
  if (hasNavigationState)
  {
    LOBYTE(hasNavigationState) = ([(GEONavigationGuidanceState *)self->_guidanceState navigationState]& 0xFFFFFFFE) == 6;
  }

  return hasNavigationState;
}

- (void)_updateRoute:(id)route
{
  v11 = *MEMORY[0x277D85DE8];
  routeCopy = route;
  state = self->_state;
  if (state)
  {
    if (([(GEOSharedNavState *)state hasReferenceFrame]& 1) == 0)
    {
      destination = [routeCopy destination];
      [(GEOSharedNavState *)self->_state setReferenceFrame:[(MSPNavigationListener *)self _referenceFrameForDestination:destination]];
    }

    v7 = MSPGetSharedTripNavEventsLog([(GEOSharedNavState *)self->_state updateRouteInfoFromComposedRoute:routeCopy]);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      mspDescription = [(GEOSharedNavState *)self->_state mspDescription];
      v9 = 138412290;
      v10 = mspDescription;
      _os_log_impl(&dword_25813A000, v7, OS_LOG_TYPE_DEBUG, "_updateRoute %@", &v9, 0xCu);
    }

    [(MSPNavigationListener *)self _checkStateIsReady];
  }
}

- (BOOL)_updateTraffic:(id)traffic
{
  v11 = *MEMORY[0x277D85DE8];
  if (!self->_state)
  {
    return 0;
  }

  trafficCopy = traffic;
  v5 = MSPGetSharedTripNavEventsLog(trafficCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    mspDescription = [(GEOSharedNavState *)self->_state mspDescription];
    v9 = 138412290;
    v10 = mspDescription;
    _os_log_impl(&dword_25813A000, v5, OS_LOG_TYPE_DEBUG, "_updateTraffic %@", &v9, 0xCu);
  }

  v7 = [(GEOSharedNavState *)self->_state updateFromTraffic:trafficCopy];
  return v7;
}

- (BOOL)_updateLocation:(id)location withRouteMatchedCoordinate:(id)coordinate
{
  v23 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  v7 = locationCopy;
  if (self->_state)
  {
    latLng = [locationCopy latLng];

    if (latLng)
    {
      lastLocation = [(GEOSharedNavState *)self->_state lastLocation];
      lastLocation2 = [(GEOSharedNavState *)self->_state lastLocation];
      coordinate = [lastLocation2 coordinate];

      latLng2 = [v7 latLng];
      if ([coordinate isEqual:latLng2])
      {
        [lastLocation matchedCoordinate];
        v13 = GEOPolylineCoordinateEqual();

        if (v13)
        {
          v14 = 0;
LABEL_13:

          goto LABEL_14;
        }
      }

      else
      {
      }

      v15 = objc_alloc_init(MEMORY[0x277D0ED18]);
      latLng3 = [v7 latLng];
      [v15 setCoordinate:latLng3];

      if (GEOPolylineCoordinateIsValid())
      {
        [v15 setMatchedCoordinateIndex:coordinate];
        *&v17 = coordinate.var1;
        [v15 setMatchedCoordinateOffset:v17];
      }

      [(GEOSharedNavState *)self->_state setLastLocation:v15];
      [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
      v18 = MSPGetSharedTripNavEventsLog([(GEOSharedNavState *)self->_state setUpdatedTimestamp:?]);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        mspDescription = [(GEOSharedNavState *)self->_state mspDescription];
        v21 = 138412290;
        v22 = mspDescription;
        _os_log_impl(&dword_25813A000, v18, OS_LOG_TYPE_DEBUG, "_updateLocation %@", &v21, 0xCu);
      }

      v14 = 1;
      goto LABEL_13;
    }
  }

  v14 = 0;
LABEL_14:

  return v14;
}

- (BOOL)_updateWaypointsIfNeeded:(id)needed
{
  v14 = *MEMORY[0x277D85DE8];
  neededCopy = needed;
  v5 = 0;
  if (neededCopy)
  {
    state = self->_state;
    if (state)
    {
      v7 = [(GEOSharedNavState *)state updateWaypointsFromComposedRoute:neededCopy];
      if (v7)
      {
        v8 = MSPGetSharedTripNavEventsLog(v7);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          waypoints = [neededCopy waypoints];
          v10 = [waypoints valueForKey:@"name"];
          v12 = 138477827;
          v13 = v10;
          _os_log_impl(&dword_25813A000, v8, OS_LOG_TYPE_DEFAULT, "MSPNavigationListener waypoints updated %{private}@", &v12, 0xCu);
        }

        [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
        [(GEOSharedNavState *)self->_state setUpdatedTimestamp:?];
        v5 = 1;
      }

      else
      {
        v5 = 0;
      }
    }
  }

  return v5;
}

- (void)_updateCurrentWaypointIndexFromArrivalTimeInfo:(id)info
{
  v14 = *MEMORY[0x277D85DE8];
  if (info && self->_state)
  {
    legIndex = [info legIndex];
    hasCurrentWaypointIndex = [(GEOSharedNavState *)self->_state hasCurrentWaypointIndex];
    if (hasCurrentWaypointIndex)
    {
      currentWaypointIndex = [(GEOSharedNavState *)self->_state currentWaypointIndex];
      if (currentWaypointIndex != legIndex)
      {
        v7 = MSPGetSharedTripNavEventsLog(currentWaypointIndex);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          currentWaypointIndex2 = [(GEOSharedNavState *)self->_state currentWaypointIndex];
          v10 = 134218240;
          v11 = currentWaypointIndex2;
          v12 = 2048;
          v13 = legIndex;
          _os_log_impl(&dword_25813A000, v7, OS_LOG_TYPE_DEFAULT, "_updateETA: update current waypoint %lu -> %lu", &v10, 0x16u);
        }

        [(GEOSharedNavState *)self->_state setCurrentWaypointIndex:legIndex];
        [(GEOSharedNavState *)self->_state setArrived:0];
        [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
        [(GEOSharedNavState *)self->_state setUpdatedTimestamp:?];
        [(MSPNavigationListener *)self _performDelegateNotificationBlockIfReady:&__block_literal_global_17];
      }
    }

    else
    {
      v9 = MSPGetSharedTripNavEventsLog(hasCurrentWaypointIndex);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 134217984;
        v11 = legIndex;
        _os_log_impl(&dword_25813A000, v9, OS_LOG_TYPE_DEFAULT, "_updateETA: setting initial waypoint index: %lu", &v10, 0xCu);
      }

      [(GEOSharedNavState *)self->_state setCurrentWaypointIndex:legIndex];
      [(MSPNavigationListener *)self _checkStateIsReady];
    }
  }
}

- (BOOL)_updateArrivalTimeAndDistance:(id)distance
{
  v36 = *MEMORY[0x277D85DE8];
  distanceCopy = distance;
  state = self->_state;
  if (state)
  {
    if ([(GEOSharedNavState *)state etaInfosCount])
    {
      v6 = objc_alloc(MEMORY[0x277CBEAC0]);
      arrivalTimeInfo = [distanceCopy arrivalTimeInfo];
      arrivalTimeInfo2 = [distanceCopy arrivalTimeInfo];
      v9 = MapsMap(arrivalTimeInfo2, &__block_literal_global_17);
      v10 = [v6 initWithObjects:arrivalTimeInfo forKeys:v9];

      *v30 = 0;
      v31 = v30;
      v32 = 0x2020000000;
      v33 = 0;
      etaInfos = [(GEOSharedNavState *)self->_state etaInfos];
      v12 = [etaInfos copy];

      v22 = MEMORY[0x277D85DD0];
      v23 = 3221225472;
      v24 = __55__MSPNavigationListener__updateArrivalTimeAndDistance___block_invoke_2;
      v25 = &unk_279868468;
      v13 = v10;
      v29 = v30;
      v26 = v13;
      selfCopy = self;
      v28 = distanceCopy;
      [v12 enumerateObjectsUsingBlock:&v22];
      if (v31[24] == 1)
      {
        [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
        v14 = MSPGetSharedTripNavEventsLog([(GEOSharedNavState *)self->_state setUpdatedTimestamp:?]);
        v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG);

        if (v15)
        {
          v17 = MSPGetSharedTripNavEventsLog(v16);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            etaInfos2 = [(GEOSharedNavState *)self->_state etaInfos];
            v19 = MapsMap(etaInfos2, &__block_literal_global_24);
            *buf = 138412290;
            v35 = v19;
            _os_log_impl(&dword_25813A000, v17, OS_LOG_TYPE_DEBUG, "_updateETA complete: %@", buf, 0xCu);
          }
        }
      }

      v20 = v31[24];

      _Block_object_dispose(v30, 8);
    }

    else
    {
      v13 = MSPGetSharedTripNavEventsLog(0);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *v30 = 0;
        _os_log_impl(&dword_25813A000, v13, OS_LOG_TYPE_DEBUG, "_updateETA: we don't have ETAs to fill out, waiting for route update", v30, 2u);
      }

      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  return v20 & 1;
}

uint64_t __55__MSPNavigationListener__updateArrivalTimeAndDistance___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 legIndex];

  return [v2 numberWithUnsignedInteger:v3];
}

void __55__MSPNavigationListener__updateArrivalTimeAndDistance___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v8 = [v6 objectForKeyedSubscript:v7];

  if (v8 || (v9 = [v5 hasEtaTimestamp], !v9))
  {
    [v5 remainingTime];
    v14 = v13;
    v15 = [v8 remainingTime];
    if (vabdd_f64(v14, v16) >= 0.00999999978)
    {
      *(*(*(a1 + 56) + 8) + 24) = 1;
      [v8 remainingTime];
      MNDisplayETAAndRemainingMinutes();
      v11 = 0;
      [v11 timeIntervalSinceReferenceDate];
      v17 = MSPGetSharedTripNavEventsLog([v5 setEtaTimestamp:?]);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        [v5 remainingTime];
        v19 = v18;
        [v8 remainingTime];
        *buf = 134218496;
        v22 = a3;
        v23 = 2048;
        v24 = v19;
        v25 = 2048;
        v26 = v20;
        _os_log_impl(&dword_25813A000, v17, OS_LOG_TYPE_INFO, "_updateETA: updating waypoint %lu remaining time: %#.1lfs -> %#.1lfs", buf, 0x20u);
      }

      [v8 remainingTime];
      [v5 setRemainingTime:?];
      if ([*(*(a1 + 40) + 32) hasCurrentWaypointIndex] && objc_msgSend(*(*(a1 + 40) + 32), "currentWaypointIndex") == a3)
      {
        [*(a1 + 48) distanceRemainingToEndOfLeg];
        [v5 setRemainingDistance:?];
      }

      else
      {
        [v5 setRemainingDistance:0.0];
        [v5 setHasRemainingDistance:0];
      }
    }

    else
    {
      v11 = MSPGetSharedTripNavEventsLog(v15);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        v22 = a3;
        _os_log_impl(&dword_25813A000, v11, OS_LOG_TYPE_DEBUG, "_updateETA: skipping unchanged waypoint %lu eta", buf, 0xCu);
      }
    }
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
    v10 = MSPGetSharedTripNavEventsLog(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v22 = a3;
      _os_log_impl(&dword_25813A000, v10, OS_LOG_TYPE_DEBUG, "_updateETA: clearing passed waypoint %lu etaInfo", buf, 0xCu);
    }

    v11 = [*(*(a1 + 40) + 32) etaInfos];
    v12 = objc_alloc_init(MEMORY[0x277D0ED10]);
    [v11 replaceObjectAtIndex:a3 withObject:v12];
  }
}

- (void)_updateTransportTypeFromCurrentState
{
  v16 = *MEMORY[0x277D85DE8];
  guidanceState = self->_guidanceState;
  if (guidanceState)
  {
    if ([(GEONavigationGuidanceState *)guidanceState hasTrackedTransportType])
    {
      hasTransportType = [(GEOSharedNavState *)self->_state hasTransportType];
      if (!hasTransportType || (v5 = [(GEOSharedNavState *)self->_state transportType], hasTransportType = [(GEONavigationGuidanceState *)self->_guidanceState trackedTransportType], v5 != hasTransportType))
      {
        v6 = MSPGetSharedTripNavEventsLog(hasTransportType);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          transportType = [(GEOSharedNavState *)self->_state transportType];
          if (transportType >= 7)
          {
            v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", transportType];
          }

          else
          {
            v8 = off_2798684E0[transportType];
          }

          v9 = v8;
          trackedTransportType = [(GEONavigationGuidanceState *)self->_guidanceState trackedTransportType];
          if (trackedTransportType >= 7)
          {
            v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", trackedTransportType];
          }

          else
          {
            v11 = off_2798684E0[trackedTransportType];
          }

          *buf = 138412546;
          v13 = v9;
          v14 = 2112;
          v15 = v11;
          _os_log_impl(&dword_25813A000, v6, OS_LOG_TYPE_DEBUG, "_updateTransportType %@ -> %@", buf, 0x16u);
        }

        [(GEOSharedNavState *)self->_state setTransportType:[(GEONavigationGuidanceState *)self->_guidanceState trackedTransportType]];
      }
    }
  }
}

- (int)_referenceFrameForDestination:(id)destination
{
  destinationCopy = destination;
  if ([destinationCopy hasMapItemStorage])
  {
    mapItemStorage = [destinationCopy mapItemStorage];
    if ([mapItemStorage referenceFrame])
    {
      referenceFrame = [mapItemStorage referenceFrame];
    }

    else
    {
      v11 = MEMORY[0x277D0EB88];
      [mapItemStorage coordinate];
      if ([v11 isLocationShiftRequiredForCoordinate:?])
      {
        referenceFrame = 2;
      }

      else
      {
        referenceFrame = 1;
      }
    }

    goto LABEL_10;
  }

  if ([destinationCopy hasWaypoint])
  {
    mapItemStorage = [destinationCopy waypoint];
    waypointLocation = [mapItemStorage waypointLocation];
    location = [waypointLocation location];
    hasReferenceFrame = [location hasReferenceFrame];

    if (hasReferenceFrame)
    {
      waypointLocation2 = [mapItemStorage waypointLocation];
      location2 = [waypointLocation2 location];
      referenceFrame = [location2 referenceFrame];

LABEL_10:
      goto LABEL_17;
    }
  }

  if ([destinationCopy hasLatLng])
  {
    latLng = [destinationCopy latLng];
    [latLng lat];
    v14 = v13;
    latLng2 = [destinationCopy latLng];
    [latLng2 lng];
    v17 = v16;

    if ([MEMORY[0x277D0EB88] isLocationShiftRequiredForCoordinate:{v14, v17}])
    {
      referenceFrame = 2;
    }

    else
    {
      referenceFrame = 1;
    }
  }

  else
  {
    referenceFrame = 0;
  }

LABEL_17:

  return referenceFrame;
}

- (void)_updateTransaction
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = WeakRetained;
  transaction = self->_transaction;
  if (transaction)
  {
    v6 = 1;
  }

  else
  {
    v6 = WeakRetained == 0;
  }

  if (v6)
  {
    if (transaction)
    {
      v7 = WeakRetained == 0;
    }

    else
    {
      v7 = 0;
    }

    if (v7)
    {
      isInNavigatingState = [(MSPNavigationListener *)self isInNavigatingState];
      if ((isInNavigatingState & 1) == 0)
      {
        v9 = MSPGetSharedTripLog(isInNavigatingState);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          *v14 = 0;
          _os_log_impl(&dword_25813A000, v9, OS_LOG_TYPE_INFO, "MSPNavigationListener not navigating or no delegate, stopping transaction", v14, 2u);
        }

        v10 = 0;
        goto LABEL_19;
      }
    }
  }

  else
  {
    isInNavigatingState2 = [(MSPNavigationListener *)self isInNavigatingState];
    if (isInNavigatingState2)
    {
      v12 = MSPGetSharedTripLog(isInNavigatingState2);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_25813A000, v12, OS_LOG_TYPE_INFO, "MSPNavigationListener now navigating with delegate, starting transaction", buf, 2u);
      }

      v10 = os_transaction_create();
LABEL_19:
      v13 = self->_transaction;
      self->_transaction = v10;
    }
  }
}

- (void)navigationListener:(id)listener didChangeNavigationState:(unint64_t)state transportType:(int)type
{
  v5 = *&type;
  v24 = *MEMORY[0x277D85DE8];
  listenerCopy = listener;
  v9 = MSPGetSharedTripNavEventsLog(listenerCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = GEONavigationListenerStateAsString();
    if (v5 >= 7)
    {
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v5];
    }

    else
    {
      v11 = off_2798684E0[v5];
    }

    *buf = 138412546;
    v21 = v10;
    v22 = 2112;
    v23 = v11;
    _os_log_impl(&dword_25813A000, v9, OS_LOG_TYPE_DEFAULT, "MSPNavigationListener state change (navigation: %@, transport type: %@)", buf, 0x16u);
  }

  if (state == 2)
  {
    [(MSPNavigationListener *)self _updateTransaction];
    [(GEONavigationListener *)self->_navigationListener requestGuidanceState];
    -[MSPNavigationListener _initPendingStateIfNeededWithTransportType:isResumingMultipointRoute:](self, "_initPendingStateIfNeededWithTransportType:isResumingMultipointRoute:", v5, [listenerCopy isResumingMultipointRoute]);
    v12 = [(MSPNavigationListener *)self _analyticsPipelineTransportModeForGEOTransportType:v5];
    mEMORY[0x277D0E790] = [MEMORY[0x277D0E790] sharedData];
    [mEMORY[0x277D0E790] setMapUiShownActiveNavMode:v12];
  }

  else
  {
    navigationSessionIdentifier = self->_navigationSessionIdentifier;
    self->_navigationSessionIdentifier = 0;

    state = self->_state;
    if (state)
    {
      [(GEOSharedNavState *)state setClosed:1];
      [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
      v17 = v16;
      [(GEOSharedNavState *)self->_state setClosedTimestamp:?];
      [(GEOSharedNavState *)self->_state setUpdatedTimestamp:v17];
      [(MSPNavigationListener *)self _performDelegateNotificationBlockIfReady:&__block_literal_global_29];
    }

    mEMORY[0x277D0E790]2 = [MEMORY[0x277D0E790] sharedData];
    [mEMORY[0x277D0E790]2 setMapUiShownActiveNavMode:0];

    mEMORY[0x277D0E790]3 = [MEMORY[0x277D0E790] sharedData];
    [mEMORY[0x277D0E790]3 setHasMapUiShownActiveNavMode:0];

    [(MSPNavigationListener *)self _updateTransaction];
  }
}

- (void)navigationListener:(id)listener didUpdateGuidanceState:(id)state
{
  v10 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  v6 = MSPGetSharedTripNavEventsLog(stateCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = stateCopy;
    _os_log_impl(&dword_25813A000, v6, OS_LOG_TYPE_DEFAULT, "MSPNavigationListener guidance state change: %@", &v8, 0xCu);
  }

  if ([(GEONavigationListener *)self->_navigationListener navigationState]== 2)
  {
    v7 = stateCopy;
  }

  else
  {
    v7 = 0;
  }

  objc_storeStrong(&self->_guidanceState, v7);
  if (self->_state)
  {
    [(MSPNavigationListener *)self _updateTransportTypeFromCurrentState];
    [(GEOSharedNavState *)self->_state setArrived:[(MSPNavigationListener *)self _currentlyArrivedAtWaypoint]];
    [(MSPNavigationListener *)self _checkStateIsReady];
  }

  else
  {
    [(MSPNavigationListener *)self _initPendingStateIfNeeded];
  }
}

- (void)navigationListener:(id)listener didUpdateETA:(id)a
{
  v11 = *MEMORY[0x277D85DE8];
  aCopy = a;
  v6 = MSPGetSharedTripNavEventsLog(aCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = aCopy;
    _os_log_impl(&dword_25813A000, v6, OS_LOG_TYPE_DEFAULT, "MSPNavigationListener ETA update: %{public}@", &v9, 0xCu);
  }

  arrivalTimeInfo = [aCopy arrivalTimeInfo];
  firstObject = [arrivalTimeInfo firstObject];
  [(MSPNavigationListener *)self _updateCurrentWaypointIndexFromArrivalTimeInfo:firstObject];

  if ([(MSPNavigationListener *)self _updateArrivalTimeAndDistance:aCopy])
  {
    [(MSPNavigationListener *)self _performDelegateNotificationBlockIfReady:&__block_literal_global_31];
  }
}

- (void)navigationListener:(id)listener didUpdateLocation:(id)location routeMatchedCoordinate:(id)coordinate
{
  v11 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  v8 = MSPGetSharedTripNavEventsLog(locationCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = locationCopy;
    _os_log_impl(&dword_25813A000, v8, OS_LOG_TYPE_DEBUG, "MSPNavigationListener location update: %@", &v9, 0xCu);
  }

  if ([(MSPNavigationListener *)self _updateLocation:locationCopy withRouteMatchedCoordinate:coordinate])
  {
    [(MSPNavigationListener *)self _performDelegateNotificationBlockIfReady:&__block_literal_global_33];
  }
}

- (void)navigationListener:(id)listener didUpdateRoute:(id)route
{
  v11 = *MEMORY[0x277D85DE8];
  routeCopy = route;
  v6 = MSPGetSharedTripNavEventsLog(routeCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    uniqueRouteID = [routeCopy uniqueRouteID];
    v9 = 138543362;
    v10 = uniqueRouteID;
    _os_log_impl(&dword_25813A000, v6, OS_LOG_TYPE_DEFAULT, "MSPNavigationListener route update: %{public}@", &v9, 0xCu);
  }

  if ([(MSPNavigationListener *)self _updateWaypointsIfNeeded:routeCopy])
  {
    [(MSPNavigationListener *)self _clearArrivedState];
    [(GEOSharedNavState *)self->_state setResumed:0];
    [(MSPNavigationListener *)self _performDelegateNotificationBlockIfReady:&__block_literal_global_35_0];
  }

  [(MSPNavigationListener *)self _updateRoute:routeCopy];
  traffic = [routeCopy traffic];
  [(MSPNavigationListener *)self _updateTraffic:traffic];

  [(MSPNavigationListener *)self _performDelegateNotificationBlockIfReady:&__block_literal_global_37];
}

- (void)navigationListener:(id)listener didUpdateTrafficForCurrentRoute:(id)route
{
  routeCopy = route;
  v6 = MSPGetSharedTripNavEventsLog(routeCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_25813A000, v6, OS_LOG_TYPE_DEFAULT, "MSPNavigationListener traffic update", v8, 2u);
  }

  v7 = [(MSPNavigationListener *)self _updateTraffic:routeCopy];
  if (v7)
  {
    [(MSPNavigationListener *)self _performDelegateNotificationBlockIfReady:&__block_literal_global_39];
  }
}

- (void)navigationListener:(id)listener didArriveAtWaypoint:(id)waypoint endOfLegIndex:(unint64_t)index
{
  v16 = *MEMORY[0x277D85DE8];
  waypointCopy = waypoint;
  v8 = MSPGetSharedTripNavEventsLog(waypointCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    shortDescription = [waypointCopy shortDescription];
    v12 = 138412546;
    v13 = shortDescription;
    v14 = 2048;
    indexCopy = index;
    _os_log_impl(&dword_25813A000, v8, OS_LOG_TYPE_DEFAULT, "MSPNavigationListener did arrive at waypoint: %@ legIndex: %lu", &v12, 0x16u);
  }

  [(GEOSharedNavState *)self->_state setArrived:1];
  [(GEOSharedNavState *)self->_state setResumed:0];
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v11 = v10;
  [(GEOSharedNavState *)self->_state setArrivedTimestamp:?];
  [(GEOSharedNavState *)self->_state setUpdatedTimestamp:v11];
  [(MSPNavigationListener *)self _performDelegateNotificationBlockIfReady:&__block_literal_global_41];
}

- (void)navigationListener:(id)listener didResumeNavigatingFromWaypoint:(id)waypoint endOfLegIndex:(unint64_t)index
{
  v13 = *MEMORY[0x277D85DE8];
  waypointCopy = waypoint;
  v8 = MSPGetSharedTripNavEventsLog(waypointCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = waypointCopy;
    v11 = 2048;
    indexCopy = index;
    _os_log_impl(&dword_25813A000, v8, OS_LOG_TYPE_DEFAULT, "MSPNavigationListener did resume navigating from waypoint: %@ legIndex: %lu", &v9, 0x16u);
  }

  [(MSPNavigationListener *)self _clearArrivedState];
  [(GEOSharedNavState *)self->_state setResumed:1];
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  [(GEOSharedNavState *)self->_state setUpdatedTimestamp:?];
  [(MSPNavigationListener *)self _performDelegateNotificationBlockIfReady:&__block_literal_global_43];
}

- (void)_clearArrivedState
{
  [(GEOSharedNavState *)self->_state setArrived:0];
  [(GEOSharedNavState *)self->_state setArrivedTimestamp:0.0];
  state = self->_state;

  [(GEOSharedNavState *)state setHasArrivedTimestamp:0];
}

- (int)_analyticsPipelineTransportModeForGEOTransportType:(int)type
{
  if (type > 6)
  {
    return 0;
  }

  else
  {
    return dword_2581C48A8[type];
  }
}

- (void)_performDelegateNotificationBlockIfReady:(id)ready
{
  readyCopy = ready;
  if (self->_postedStateIsReady || ([(MSPNavigationListener *)self _checkStateIsReady], self->_postedStateIsReady))
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    readyCopy[2](readyCopy, self, WeakRetained);
  }
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MSPNavigationListener;
  v4 = [(MSPNavigationListener *)&v8 description];
  v5 = [(GEONavigationListener *)self->_navigationListener description];
  v6 = [v3 stringWithFormat:@"%@, %@", v4, v5];

  return v6;
}

- (MSPNavigationListenerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end