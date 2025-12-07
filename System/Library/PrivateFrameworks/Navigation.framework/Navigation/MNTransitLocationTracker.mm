@interface MNTransitLocationTracker
- (MNTransitLocationTracker)initWithNavigationSession:(id)session;
- (double)_timeToDisplayStaleGPSLocation;
- (id)_clRegionWithCenter:(id)center identifier:(id)identifier signalStrength:(int)strength;
- (id)_correctedLocationForLocation:(id)location;
- (id)_locationForInaccurateLocation:(id)location;
- (id)_matchedLocationForLocation:(id)location;
- (id)_roadMatchForOffRouteLocation:(id)location routeMatch:(id)match;
- (id)_stepForRegionAlert:(id)alert;
- (void)_initRegionAlertsForRoute:(id)route;
- (void)_startMonitoringTransitAlerts;
- (void)_stopMonitoringAllRegions;
- (void)_stopMonitoringForRegionWithIdentifier:(id)identifier;
- (void)_triggerAlertForRegionId:(id)id;
- (void)locationManager:(id)manager didEnterRegion:(id)region;
- (void)locationManager:(id)manager didExitRegion:(id)region;
- (void)locationManager:(id)manager monitoringDidFailForRegionIdentifier:(id)identifier withError:(id)error;
- (void)reroute:(id)reroute reason:(unint64_t)reason;
- (void)startTrackingWithInitialLocation:(id)location targetLegIndex:(unint64_t)index;
- (void)stopTracking;
@end

@implementation MNTransitLocationTracker

- (void)locationManager:(id)manager monitoringDidFailForRegionIdentifier:(id)identifier withError:(id)error
{
  v17 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  errorCopy = error;
  v9 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v10 = [(NSMutableDictionary *)self->_monitoredRegions valueForKey:identifierCopy];
    v11 = 138412802;
    v12 = v10;
    v13 = 2112;
    v14 = identifierCopy;
    v15 = 2112;
    v16 = errorCopy;
    _os_log_impl(&dword_1D311E000, v9, OS_LOG_TYPE_ERROR, "Failed to track region %@ with region identifier=%@ error=%@", &v11, 0x20u);
  }

  [(MNTransitLocationTracker *)self _stopMonitoringForRegionWithIdentifier:identifierCopy];
}

- (void)locationManager:(id)manager didExitRegion:(id)region
{
  v15 = *MEMORY[0x1E69E9840];
  regionCopy = region;
  v6 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v13 = 136315138;
    v14 = "[MNTransitLocationTracker locationManager:didExitRegion:]";
    _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_DEBUG, "%s", &v13, 0xCu);
  }

  identifier = [regionCopy identifier];
  v8 = [@"Maps_Transit" copy];
  v9 = [identifier hasPrefix:v8];

  if (v9)
  {
    v10 = [(NSMutableDictionary *)self->_transitRegions valueForKey:identifier];
    if (!v10)
    {
      v11 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v13 = 138412290;
        v14 = regionCopy;
        _os_log_impl(&dword_1D311E000, v11, OS_LOG_TYPE_ERROR, "No transit trigger region found for region: %@", &v13, 0xCu);
      }

      v12 = +[MNLocationManager shared];
      [v12 stopMonitoringFor:regionCopy];
    }

    if (![v10 transition] || objc_msgSend(v10, "transition") == 2)
    {
      [(MNTransitLocationTracker *)self _triggerAlertForRegionId:identifier];
    }
  }
}

- (void)locationManager:(id)manager didEnterRegion:(id)region
{
  v15 = *MEMORY[0x1E69E9840];
  regionCopy = region;
  v6 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v13 = 136315138;
    v14 = "[MNTransitLocationTracker locationManager:didEnterRegion:]";
    _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_DEBUG, "%s", &v13, 0xCu);
  }

  identifier = [regionCopy identifier];
  v8 = [@"Maps_Transit" copy];
  v9 = [identifier hasPrefix:v8];

  if (v9)
  {
    v10 = [(NSMutableDictionary *)self->_transitRegions valueForKey:identifier];
    if (!v10)
    {
      v11 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v13 = 138412290;
        v14 = regionCopy;
        _os_log_impl(&dword_1D311E000, v11, OS_LOG_TYPE_ERROR, "No transit trigger region found for region: %@", &v13, 0xCu);
      }

      v12 = +[MNLocationManager shared];
      [v12 stopMonitoringFor:regionCopy];
    }

    if (![v10 transition] || objc_msgSend(v10, "transition") == 1)
    {
      [(MNTransitLocationTracker *)self _triggerAlertForRegionId:identifier];
    }
  }
}

- (void)_triggerAlertForRegionId:(id)id
{
  v25 = *MEMORY[0x1E69E9840];
  idCopy = id;
  v5 = [(NSMutableDictionary *)self->_transitAlerts valueForKey:idCopy];
  v6 = [(MNTransitLocationTracker *)self _stepForRegionAlert:v5];
  v7 = [(NSMutableDictionary *)self->_transitRegions valueForKey:idCopy];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = [(NSMutableDictionary *)self->_transitAlerts allKeysForObject:v5];
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v9)
  {
    v10 = *v20;
    do
    {
      v11 = 0;
      do
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v8);
        }

        [(MNTransitLocationTracker *)self _stopMonitoringForRegionWithIdentifier:*(*(&v19 + 1) + 8 * v11++)];
      }

      while (v9 != v11);
      v9 = [v8 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v9);
  }

  if (v6)
  {
    objc_initWeak(location, self);
    hasDelaySeconds = [v7 hasDelaySeconds];
    if (hasDelaySeconds)
    {
      hasDelaySeconds = [v7 delaySeconds];
    }

    v13 = dispatch_time(0, (hasDelaySeconds * 1000000000.0));
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __53__MNTransitLocationTracker__triggerAlertForRegionId___block_invoke;
    block[3] = &unk_1E8430DF8;
    objc_copyWeak(&v18, location);
    v16 = v5;
    v17 = v6;
    dispatch_after(v13, MEMORY[0x1E69E96A0], block);

    objc_destroyWeak(&v18);
    objc_destroyWeak(location);
  }

  else
  {
    v14 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      LODWORD(location[0]) = 138412290;
      *(location + 4) = v5;
      _os_log_impl(&dword_1D311E000, v14, OS_LOG_TYPE_ERROR, "No transit step found for transit alert: %@", location, 0xCu);
    }
  }
}

void __53__MNTransitLocationTracker__triggerAlertForRegionId___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained delegate];
  v3 = objc_loadWeakRetained((a1 + 48));
  v4 = [MNTransitAlert alloc];
  v5 = [*(a1 + 32) banner];
  v6 = *(a1 + 40);
  v7 = objc_loadWeakRetained((a1 + 48));
  v8 = [v7 navigationSession];
  v9 = [v8 routeManager];
  v10 = [v9 currentRouteInfo];
  v11 = [(MNTransitAlert *)v4 initWithTransitBanner:v5 transitStep:v6 activeRoute:v10];
  [v2 locationTracker:v3 didReceiveTransitAlert:v11];
}

- (id)_stepForRegionAlert:(id)alert
{
  alertCopy = alert;
  navigationSession = [(MNLocationTracker *)self navigationSession];
  routeManager = [navigationSession routeManager];
  currentRoute = [routeManager currentRoute];
  steps = [currentRoute steps];
  firstObject = [steps firstObject];

  if (firstObject)
  {
    do
    {
      if ([firstObject transportType] == 1)
      {
        getNextStep = firstObject;
        regionAlerts = [getNextStep regionAlerts];
        v12 = [regionAlerts containsObject:alertCopy];

        if (v12)
        {
          break;
        }
      }

      getNextStep = [firstObject getNextStep];

      firstObject = getNextStep;
    }

    while (getNextStep);
  }

  else
  {
    getNextStep = 0;
  }

  return getNextStep;
}

- (void)_stopMonitoringForRegionWithIdentifier:(id)identifier
{
  v10 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v8 = 136315138;
    v9 = "[MNTransitLocationTracker _stopMonitoringForRegionWithIdentifier:]";
    _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_DEBUG, "%s", &v8, 0xCu);
  }

  v6 = +[MNLocationManager shared];
  v7 = [(NSMutableDictionary *)self->_monitoredRegions valueForKey:identifierCopy];
  [v6 stopMonitoringFor:v7];

  [(NSMutableDictionary *)self->_monitoredRegions removeObjectForKey:identifierCopy];
}

- (void)_stopMonitoringAllRegions
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  allKeys = [(NSMutableDictionary *)self->_monitoredRegions allKeys];
  v4 = [allKeys countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(allKeys);
        }

        [(MNTransitLocationTracker *)self _stopMonitoringForRegionWithIdentifier:*(*(&v9 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [allKeys countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  monitoredRegions = self->_monitoredRegions;
  self->_monitoredRegions = 0;
}

- (id)_clRegionWithCenter:(id)center identifier:(id)identifier signalStrength:(int)strength
{
  centerCopy = center;
  v7 = MEMORY[0x1E695FBB0];
  identifierCopy = identifier;
  v9 = [v7 alloc];
  [centerCopy lat];
  v11 = v10;
  [centerCopy lng];
  v13 = CLLocationCoordinate2DMake(v11, v12);
  GEOConfigGetDouble();
  v15 = [v9 initWithCenter:identifierCopy radius:v13.latitude identifier:{v13.longitude, v14}];

  v16 = MEMORY[0x1E69A1E80];
  [centerCopy lat];
  v18 = v17;
  [centerCopy lng];
  if ([v16 isLocationShiftRequiredForCoordinate:{v18, v19}])
  {
    [v15 setGeoReferenceFrame:2];
  }

  return v15;
}

- (void)_startMonitoringTransitAlerts
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v27 = "[MNTransitLocationTracker _startMonitoringTransitAlerts]";
    _os_log_impl(&dword_1D311E000, v3, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
  }

  if (self->_monitoredRegions)
  {
    [(MNTransitLocationTracker *)self _stopMonitoringAllRegions];
  }

  v4 = objc_opt_new();
  monitoredRegions = self->_monitoredRegions;
  self->_monitoredRegions = v4;

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = [(NSMutableDictionary *)self->_transitRegions allKeys];
  v6 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v20 = *v22;
    v8 = 1;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v22 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        v11 = [(NSMutableDictionary *)self->_transitRegions valueForKey:v10];
        location = [v11 location];
        v13 = -[MNTransitLocationTracker _clRegionWithCenter:identifier:signalStrength:](self, "_clRegionWithCenter:identifier:signalStrength:", location, v10, [v11 signalStrength]);

        v14 = +[MNLocationManager shared];
        [v14 startMonitoringFor:v13];

        [(NSMutableDictionary *)self->_monitoredRegions setValue:v13 forKey:v10];
        v15 = +[MNLocationManager shared];
        [v15 startMonitoringFor:v13];

        [(NSMutableDictionary *)self->_monitoredRegions setValue:v13 forKey:v10];
        if ([v11 signalStrength] == 2 || v8 == 2)
        {
          v8 = 2;
        }

        else if (![v11 signalStrength])
        {
          v8 = 0;
        }
      }

      v7 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 1;
  }

  delegate = [(MNLocationTracker *)self delegate];
  [delegate locationTracker:self didReceiveRouteSignalStrength:v8];
}

- (double)_timeToDisplayStaleGPSLocation
{
  v2 = +[MNLocationManager shared];
  [v2 timeScale];
  v4 = 15.0 / v3;

  return v4;
}

- (id)_roadMatchForOffRouteLocation:(id)location routeMatch:(id)match
{
  locationCopy = location;
  matchCopy = match;
  v8 = [(GEORoadMatcher *)self->_roadMatcher matchLocation:locationCopy forTransportType:0];
  if (v8 && (![matchCopy isGoodMatch] || (objc_msgSend(matchCopy, "distanceFromRoute"), v10 = v9, objc_msgSend(v8, "distanceFromRoad"), v12 = v11, objc_msgSend(locationCopy, "horizontalAccuracy"), v10 > v13 + v12) || objc_msgSend(locationCopy, "hasAccurateCourse") && (objc_msgSend(locationCopy, "speedAccuracy"), v15 >= 0.0) && (objc_msgSend(locationCopy, "speed"), v16 > 3.0) && (objc_msgSend(locationCopy, "course"), objc_msgSend(matchCopy, "matchedCourse"), GEOAngleDifferenceDegrees(), v18 = fabs(v17), objc_msgSend(locationCopy, "course"), objc_msgSend(v8, "courseOnRoad"), GEOAngleDifferenceDegrees(), v20 = fabs(v19), objc_msgSend(locationCopy, "courseAccuracy"), v18 > v20 + v21)))
  {
    v14 = v8;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)_locationForInaccurateLocation:(id)location
{
  v41 = *MEMORY[0x1E69E9840];
  locationCopy = location;
  v5 = MNGetPuckTrackingLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    uuid = [locationCopy uuid];
    *buf = 138412290;
    *&buf[4] = uuid;
    _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_INFO, "[MN] [%@] - Processing - in _locationForInaccurateLocation:", buf, 0xCu);
  }

  v7 = locationCopy;
  routeMatch = [(MNLocation *)self->_lastMatchedLocation routeMatch];
  navigationSession = [(MNLocationTracker *)self navigationSession];
  routeManager = [navigationSession routeManager];
  currentRoute = [routeManager currentRoute];

  v12 = v7;
  if ([routeMatch isGoodMatch])
  {
    route = [routeMatch route];

    v12 = v7;
    if (route == currentRoute)
    {
      v14 = objc_alloc(MEMORY[0x1E69A2548]);
      navigationSession2 = [(MNLocationTracker *)self navigationSession];
      auditToken = [navigationSession2 auditToken];
      v17 = [v14 initWithRoute:currentRoute auditToken:auditToken];

      v18 = [objc_alloc(MEMORY[0x1E69A1E70]) initWithCLLocation:v7];
      v19 = [v17 matchToRouteWithLocation:v18];
      v20 = v19;
      v12 = v7;
      if (v19)
      {
        [v19 distanceFromRoute];
        v22 = v21;
        [(MNLocation *)v7 horizontalAccuracy];
        v12 = v7;
        if (v22 < v23)
        {
          v24 = [currentRoute segmentForPointIndex:{objc_msgSend(v20, "routeCoordinate")}];
          v12 = v7;
          if ([v24 type] == 6)
          {
            v39 = 0u;
            memset(v40, 0, 28);
            v37 = 0u;
            v38 = 0u;
            v35 = 0u;
            v36 = 0u;
            v34 = 0u;
            memset(buf, 0, sizeof(buf));
            if (v7)
            {
              objc_msgSend_clientLocation(v7);
            }

            [v20 locationCoordinate];
            v26 = v25;
            [v20 locationCoordinate];
            *&buf[4] = v26;
            *&buf[12] = v27;
            v28 = [MNLocation alloc];
            v31[6] = v38;
            v31[7] = v39;
            v32[0] = v40[0];
            *(v32 + 12) = *(v40 + 12);
            v31[2] = v34;
            v31[3] = v35;
            v31[4] = v36;
            v31[5] = v37;
            v31[0] = *buf;
            v31[1] = *&buf[16];
            v12 = [(MNLocation *)v28 initWithClientLocation:v31];

            if (GEOConfigGetBOOL())
            {
              uuid2 = [(MNLocation *)v7 uuid];
              [(MNLocation *)v12 setUuid:uuid2];
            }
          }
        }
      }
    }
  }

  return v12;
}

- (id)_correctedLocationForLocation:(id)location
{
  locationCopy = location;
  routeMatch = [(MNLocation *)self->_lastMatchedLocation routeMatch];
  v6 = [(GEOTransitRouteMatcher *)self->_transitRouteMatcher matchToRouteWithLocation:locationCopy previousRouteMatch:routeMatch];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = routeMatch;
  }

  v9 = v8;

  [locationCopy coordinate];
  v57 = v10;
  [locationCopy coordinate];
  v12 = v11;
  v13 = -1.0;
  if ([locationCopy hasCourse])
  {
    [locationCopy course];
    v13 = v14;
  }

  v15 = 0;
  if ([locationCopy hasSpeed])
  {
    [locationCopy speed];
    v15 = v16;
  }

  [locationCopy horizontalAccuracy];
  v56 = v17;
  v18 = -1.0;
  v19 = -1.0;
  if ([locationCopy hasCourseAccuracy])
  {
    [locationCopy courseAccuracy];
    v19 = v20;
  }

  if ([locationCopy hasSpeedAccuracy])
  {
    [locationCopy speedAccuracy];
    v18 = v21;
  }

  [locationCopy timestamp];
  v54 = v22;
  if (self->_debugSnapToTransitLines)
  {
    transitTripStep = [v9 transitTripStep];
    v24 = transitTripStep;
    v55 = 0;
    v52 = v19;
    v53 = v15;
    if (!transitTripStep)
    {
      v33 = 0;
      goto LABEL_21;
    }

    if ([transitTripStep maneuver] != 4 && objc_msgSend(v24, "maneuver") != 5)
    {
      goto LABEL_25;
    }

    if ([v24 isRail] && objc_msgSend(v9, "isGoodMatch"))
    {
      [v9 locationCoordinate3D];
      v26 = v25;
      v28 = v27;
      v30 = v29;
      [v9 matchedCourse];
      v32 = v30;
LABEL_30:
      v33 = 0;
      if (fabs(v28) <= 180.0 && v26 >= -90.0)
      {
        v34 = v13;
        v35 = v12;
        v36 = v57;
        if (v26 <= 90.0)
        {
          v33 = 1;
          v34 = v31;
          v55 = v32;
          v35 = v28;
          v36 = v26;
        }

        goto LABEL_34;
      }

LABEL_21:
      v34 = v13;
      v35 = v12;
      v36 = v57;
LABEL_34:

      v19 = v52;
      v15 = v53;
      goto LABEL_35;
    }

    if (![v24 isBus])
    {
LABEL_25:
      v31 = -1.0;
      v28 = -180.0;
      v32 = 0x7FEFFFFFFFFFFFFFLL;
      v26 = -180.0;
      goto LABEL_30;
    }

    v37 = [(MNTransitLocationTracker *)self _roadMatchForOffRouteLocation:locationCopy routeMatch:v9];
    v38 = v37;
    if (v37)
    {
      [v37 coordinateOnRoad];
      v26 = v39;
      v28 = v40;
      v42 = v41;
      [v38 courseOnRoad];
    }

    else
    {
      if (![v9 isGoodMatch])
      {
        v47 = -1.0;
        v28 = -180.0;
        v42 = 0x7FEFFFFFFFFFFFFFLL;
        v26 = -180.0;
        goto LABEL_29;
      }

      [v9 locationCoordinate3D];
      v26 = v44;
      v28 = v45;
      v42 = v46;
      [v9 matchedCourse];
    }

    v47 = v43;
LABEL_29:

    v32 = v42;
    v31 = v47;
    goto LABEL_30;
  }

  v33 = 0;
  v55 = 0;
  v34 = v13;
  v35 = v12;
  v36 = v57;
LABEL_35:
  if ([v9 transitID] && objc_msgSend(locationCopy, "hasTransitID"))
  {
    [v9 modifiedHorizontalAccuracy];
    v56 = v48;
  }

  v58 = 0;
  v59 = v36;
  v60 = v35;
  v61 = v56;
  v62 = v55;
  v63 = 0;
  v64 = v15;
  v65 = v18;
  v66 = v34;
  v67 = v19;
  v68 = v54;
  v69 = 0;
  v70 = 0;
  v71 = v57;
  v72 = v12;
  v73 = v13;
  v74 = 0u;
  v75 = 0u;
  v49 = [objc_alloc(MEMORY[0x1E6985C40]) initWithClientLocation:&v58];
  if (v9 && [v9 isGoodMatch])
  {
    v50 = [[MNLocation alloc] initWithRouteMatch:v9 rawLocation:v49 locationFixType:0];
  }

  else
  {
    v50 = [[MNLocation alloc] initWithRawLocation:v49];
    [(MNLocation *)v50 setRouteMatch:v9];
  }

  [(MNLocation *)v50 setIsDirectional:v33];
  objc_storeStrong(&self->_lastMatchedLocation, v50);

  return v50;
}

- (id)_matchedLocationForLocation:(id)location
{
  v38 = *MEMORY[0x1E69E9840];
  locationCopy = location;
  v5 = MNGetPuckTrackingLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    uuid = [locationCopy uuid];
    v34 = 138412290;
    v35 = uuid;
    _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_INFO, "[MN] [%@] - Processing - in MNTransitLocationTracker::_matchedLocationForLocation:", &v34, 0xCu);
  }

  lastLocationTimestamp = self->_lastLocationTimestamp;
  if (lastLocationTimestamp)
  {
    timestamp = [locationCopy timestamp];
    v9 = [(NSDate *)lastLocationTimestamp compare:timestamp];

    if (v9 == 1)
    {
      v10 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v34) = 0;
        _os_log_impl(&dword_1D311E000, v10, OS_LOG_TYPE_DEBUG, "Dropping location because it has an older timestamp.", &v34, 2u);
      }

      goto LABEL_11;
    }
  }

  timestamp2 = [locationCopy timestamp];
  v12 = self->_lastLocationTimestamp;
  self->_lastLocationTimestamp = timestamp2;

  if ([(MNTransitLocationTracker *)self _isInaccurateLocation:locationCopy])
  {
    if (self->_lastAccurateLocationDate)
    {
      timestamp3 = [locationCopy timestamp];
      [timestamp3 timeIntervalSinceDate:self->_lastAccurateLocationDate];
      v15 = v14;

      if (v15 < 60.0)
      {
LABEL_11:
        v16 = 0;
        goto LABEL_27;
      }
    }

    v27 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v34) = 0;
      _os_log_impl(&dword_1D311E000, v27, OS_LOG_TYPE_DEBUG, "Using an inaccurate location.", &v34, 2u);
    }

    v21 = [(MNTransitLocationTracker *)self _locationForInaccurateLocation:locationCopy];

    timestamp4 = [v21 timestamp];
    v29 = timestamp4;
    if (timestamp4)
    {
      date = timestamp4;
    }

    else
    {
      date = [MEMORY[0x1E695DF00] date];
    }

    v17 = date;

    [(MNTransitLocationTracker *)self _timeToDisplayStaleGPSLocation];
    uuid3 = [v17 dateByAddingTimeInterval:?];
    [v21 setExpirationDate:uuid3];
  }

  else
  {
    v17 = [objc_alloc(MEMORY[0x1E69A1E70]) initWithCLLocation:locationCopy];
    v18 = MNGetPuckTrackingLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      uuid2 = [locationCopy uuid];
      v34 = 138412290;
      v35 = uuid2;
      _os_log_impl(&dword_1D311E000, v18, OS_LOG_TYPE_INFO, "[MN] [%@] - Processing - calling _correctedLocationForLocation:", &v34, 0xCu);
    }

    uuid3 = [locationCopy uuid];
    v21 = [(MNTransitLocationTracker *)self _correctedLocationForLocation:v17];

    v22 = MNGetPuckTrackingLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      uuid4 = [v21 uuid];
      v34 = 138412546;
      v35 = uuid3;
      v36 = 2112;
      v37 = uuid4;
      _os_log_impl(&dword_1D311E000, v22, OS_LOG_TYPE_INFO, "[MN] [%@] - Processing - MUTATED to corrected location => %@", &v34, 0x16u);
    }

    objc_storeStrong(&self->_lastAccurateLocationDate, self->_lastLocationTimestamp);
    timestamp5 = [v21 timestamp];
    v25 = timestamp5;
    if (timestamp5)
    {
      date2 = timestamp5;
    }

    else
    {
      date2 = [MEMORY[0x1E695DF00] date];
    }

    v31 = date2;

    [(MNTransitLocationTracker *)self _timeToDisplayStaleGPSLocation];
    v32 = [v31 dateByAddingTimeInterval:?];
    [v21 setExpirationDate:v32];
  }

  locationCopy = v21;
  v16 = locationCopy;
LABEL_27:

  return v16;
}

- (void)_initRegionAlertsForRoute:(id)route
{
  v68 = *MEMORY[0x1E69E9840];
  routeCopy = route;
  v5 = objc_opt_new();
  transitRegions = self->_transitRegions;
  self->_transitRegions = v5;

  v7 = objc_opt_new();
  transitAlerts = self->_transitAlerts;
  self->_transitAlerts = v7;

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v41 = routeCopy;
  steps = [routeCopy steps];
  v10 = [steps countByEnumeratingWithState:&v59 objects:v67 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v60;
    v42 = *v60;
    v43 = steps;
    do
    {
      v13 = 0;
      v44 = v11;
      do
      {
        if (*v60 != v12)
        {
          objc_enumerationMutation(steps);
        }

        v14 = *(*(&v59 + 1) + 8 * v13);
        if ([v14 transportType] == 1)
        {
          v15 = v14;
          regionAlerts = [v15 regionAlerts];
          if (regionAlerts)
          {
            v17 = regionAlerts;
            regionAlerts2 = [v15 regionAlerts];
            v19 = [regionAlerts2 count];

            if (v19)
            {
              v45 = v15;
              v46 = v13;
              v57 = 0u;
              v58 = 0u;
              v55 = 0u;
              v56 = 0u;
              regionAlerts3 = [v15 regionAlerts];
              v21 = [regionAlerts3 countByEnumeratingWithState:&v55 objects:v66 count:16];
              if (v21)
              {
                v22 = v21;
                v23 = *v56;
                v47 = *v56;
                v48 = regionAlerts3;
                do
                {
                  v24 = 0;
                  v49 = v22;
                  do
                  {
                    if (*v56 != v23)
                    {
                      objc_enumerationMutation(regionAlerts3);
                    }

                    v50 = v24;
                    v25 = *(*(&v55 + 1) + 8 * v24);
                    triggerRegions = [v25 triggerRegions];
                    if (triggerRegions && (v27 = triggerRegions, [v25 triggerRegions], v28 = objc_claimAutoreleasedReturnValue(), v29 = objc_msgSend(v28, "count"), v28, v27, v29))
                    {
                      v53 = 0u;
                      v54 = 0u;
                      v51 = 0u;
                      v52 = 0u;
                      triggerRegions2 = [v25 triggerRegions];
                      v31 = [triggerRegions2 countByEnumeratingWithState:&v51 objects:v65 count:16];
                      if (v31)
                      {
                        v32 = v31;
                        v33 = *v52;
                        do
                        {
                          for (i = 0; i != v32; ++i)
                          {
                            if (*v52 != v33)
                            {
                              objc_enumerationMutation(triggerRegions2);
                            }

                            v35 = *(*(&v51 + 1) + 8 * i);
                            v36 = MEMORY[0x1E696AEC0];
                            v37 = objc_opt_new();
                            uUIDString = [v37 UUIDString];
                            v39 = [v36 stringWithFormat:@"%@_%@", @"Maps_Transit", uUIDString];

                            [(NSMutableDictionary *)self->_transitAlerts setValue:v25 forKey:v39];
                            [(NSMutableDictionary *)self->_transitRegions setValue:v35 forKey:v39];
                          }

                          v32 = [triggerRegions2 countByEnumeratingWithState:&v51 objects:v65 count:16];
                        }

                        while (v32);
                        v23 = v47;
                        regionAlerts3 = v48;
                        v22 = v49;
                      }
                    }

                    else
                    {
                      triggerRegions2 = GEOFindOrCreateLog();
                      if (os_log_type_enabled(triggerRegions2, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 138412290;
                        v64 = v25;
                        _os_log_impl(&dword_1D311E000, triggerRegions2, OS_LOG_TYPE_ERROR, "Found a transit alert with no corresponding region: %@", buf, 0xCu);
                      }
                    }

                    v24 = v50 + 1;
                  }

                  while (v50 + 1 != v22);
                  v22 = [regionAlerts3 countByEnumeratingWithState:&v55 objects:v66 count:16];
                }

                while (v22);
              }

              v12 = v42;
              steps = v43;
              v11 = v44;
              v15 = v45;
              v13 = v46;
            }
          }
        }

        ++v13;
      }

      while (v13 != v11);
      v11 = [steps countByEnumeratingWithState:&v59 objects:v67 count:16];
    }

    while (v11);
  }

  if (![(NSMutableDictionary *)self->_transitAlerts count])
  {
    v40 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1D311E000, v40, OS_LOG_TYPE_INFO, "No region alerts found for route.", buf, 2u);
    }
  }
}

- (void)reroute:(id)reroute reason:(unint64_t)reason
{
  v17 = *MEMORY[0x1E69E9840];
  rerouteCopy = reroute;
  if (reason != 15)
  {
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315906;
      v10 = "[MNTransitLocationTracker reroute:reason:]";
      v11 = 2080;
      v12 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Location/LocationTracking/MNTransitLocationTracker.m";
      v13 = 1024;
      v14 = 121;
      v15 = 2080;
      v16 = "rerouteReason == MNRerouteReason_UserSwitchedRideIndex";
      _os_log_impl(&dword_1D311E000, v8, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s)", &v9, 0x26u);
    }
  }

  route = [rerouteCopy route];
  [(MNTransitLocationTracker *)self _initRegionAlertsForRoute:route];

  [(MNTransitLocationTracker *)self _startMonitoringTransitAlerts];
}

- (void)stopTracking
{
  [(MNTransitLocationTracker *)self _stopMonitoringAllRegions];
  v3 = +[MNLocationManager shared];
  [v3 unregisterObserver:self];

  v4.receiver = self;
  v4.super_class = MNTransitLocationTracker;
  [(MNSteppingLocationTracker *)&v4 stopTracking];
}

- (void)startTrackingWithInitialLocation:(id)location targetLegIndex:(unint64_t)index
{
  v7.receiver = self;
  v7.super_class = MNTransitLocationTracker;
  [(MNSteppingLocationTracker *)&v7 startTrackingWithInitialLocation:location targetLegIndex:index];
  v5 = +[MNLocationManager shared];
  [v5 registerObserver:self];

  [(MNTransitLocationTracker *)self _startMonitoringTransitAlerts];
  if (GEOConfigGetBOOL())
  {
    delegate = [(MNLocationTracker *)self delegate];
    [delegate locationTracker:self didReceiveRouteSignalStrength:2];
  }
}

- (MNTransitLocationTracker)initWithNavigationSession:(id)session
{
  v43 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  v41.receiver = self;
  v41.super_class = MNTransitLocationTracker;
  v5 = [(MNSteppingLocationTracker *)&v41 initWithNavigationSession:sessionCopy];
  if (v5)
  {
    routeManager = [sessionCopy routeManager];
    currentRoute = [routeManager currentRoute];

    motionContext = [sessionCopy motionContext];
    v9 = objc_alloc(MEMORY[0x1E69A2678]);
    auditToken = [sessionCopy auditToken];
    v34 = motionContext;
    v11 = [v9 initWithRoute:currentRoute motionContext:motionContext auditToken:auditToken];
    transitRouteMatcher = v5->_transitRouteMatcher;
    v5->_transitRouteMatcher = v11;

    date = [MEMORY[0x1E695DF00] date];
    startDate = v5->_startDate;
    v5->_startDate = date;

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = currentRoute;
    steps = [currentRoute steps];
    v16 = [steps countByEnumeratingWithState:&v37 objects:v42 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v38;
      v19 = &OBJC_IVAR____MNJunctionViewPreloadEvent__needsPreload;
      v36 = sessionCopy;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v38 != v18)
          {
            objc_enumerationMutation(steps);
          }

          v21 = *(*(&v37 + 1) + 8 * i);
          if ([v21 transportType] == 1)
          {
            v22 = v21;
            v23 = v22;
            v24 = v19[392];
            if (!*(&v5->super.super.super.isa + v24) && [v22 routeSegmentType] == 6)
            {
              v25 = v23;
              if ([v25 isBus])
              {
                v26 = v5;
                v27 = objc_alloc(MEMORY[0x1E69A24F8]);
                auditToken2 = [sessionCopy auditToken];
                v29 = v27;
                v5 = v26;
                v19 = &OBJC_IVAR____MNJunctionViewPreloadEvent__needsPreload;
                v30 = [v29 initWithAuditToken:auditToken2];
                v31 = *(&v5->super.super.super.isa + v24);
                *(&v5->super.super.super.isa + v24) = v30;

                sessionCopy = v36;
              }
            }
          }
        }

        v17 = [steps countByEnumeratingWithState:&v37 objects:v42 count:16];
      }

      while (v17);
    }

    [(MNTransitLocationTracker *)v5 _initRegionAlertsForRoute:v35];
    v32 = v5;
  }

  return v5;
}

@end