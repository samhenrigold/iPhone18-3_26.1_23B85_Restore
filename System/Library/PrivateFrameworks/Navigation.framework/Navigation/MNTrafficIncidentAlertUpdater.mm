@interface MNTrafficIncidentAlertUpdater
- (MNTrafficIncidentAlertUpdater)init;
- (MNTrafficIncidentAlertUpdaterDelegate)delegate;
- (id)_nextAlert;
- (void)_activateAlert:(id)alert forLocation:(id)location;
- (void)_removeActiveAlert;
- (void)_updateActiveAlertForLocation:(id)location;
- (void)_updateAlertDistanceAndETAForLocation:(id)location;
- (void)_updateForAlertsFromResponseUsingDistancePoints:(id)points;
- (void)_updateForLocationUsingDistancePoints:(id)points;
- (void)clearAlerts;
- (void)dealloc;
- (void)setActiveAlert:(id)alert;
- (void)setUseTriggerPointRangeBannerQueuing:(BOOL)queuing;
- (void)updateForAlertsFromResponse:(id)response updatedLocation:(id)location;
- (void)updateForLocation:(id)location;
- (void)updateForReroute:(id)reroute;
- (void)updateIncidentResultForETARequest:(id)request;
- (void)updateIncidentResultForRerouteRequest:(id)request;
@end

@implementation MNTrafficIncidentAlertUpdater

- (MNTrafficIncidentAlertUpdaterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_updateAlertDistanceAndETAForLocation:(id)location
{
  activeAlert = self->_activeAlert;
  if (activeAlert)
  {
    [(MNTrafficIncidentAlert *)activeAlert updateLocation:location];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained trafficIncidentAlertUpdater:self updatedAlert:self->_activeAlert];
  }
}

- (void)_updateActiveAlertForLocation:(id)location
{
  v47 = *MEMORY[0x1E69E9840];
  locationCopy = location;
  v5 = locationCopy;
  if (self->_activeAlert)
  {
    routeMatch = [locationCopy routeMatch];
    route = [routeMatch route];

    originalRoute = [(MNTrafficIncidentAlert *)self->_activeAlert originalRoute];
    v9 = originalRoute;
    if (originalRoute == route)
    {
    }

    else
    {
      alternateRoute = [(MNTrafficIncidentAlert *)self->_activeAlert alternateRoute];

      if (alternateRoute != route)
      {
        v11 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          name = [route name];
          uniqueRouteID = [route uniqueRouteID];
          originalRoute2 = [(MNTrafficIncidentAlert *)self->_activeAlert originalRoute];
          name2 = [originalRoute2 name];
          originalRoute3 = [(MNTrafficIncidentAlert *)self->_activeAlert originalRoute];
          uniqueRouteID2 = [originalRoute3 uniqueRouteID];
          alternateRoute2 = [(MNTrafficIncidentAlert *)self->_activeAlert alternateRoute];
          name3 = [alternateRoute2 name];
          alternateRoute3 = [(MNTrafficIncidentAlert *)self->_activeAlert alternateRoute];
          uniqueRouteID3 = [alternateRoute3 uniqueRouteID];
          *buf = 138479107;
          v36 = name;
          v37 = 2112;
          v38 = uniqueRouteID;
          v39 = 2113;
          v40 = name2;
          v41 = 2112;
          v42 = uniqueRouteID2;
          v43 = 2113;
          v44 = name3;
          v45 = 2112;
          v46 = uniqueRouteID3;
          _os_log_impl(&dword_1D311E000, v11, OS_LOG_TYPE_ERROR, "Location was matched to a route that matches neither of the alert's routes! Invalidating alert.\nRoute for location: %{private}@ - %@\nAlert original route: %{private}@ - %@\nAlert new route: %{private}@ - %@", buf, 0x3Eu);
        }

        [(MNTrafficIncidentAlertUpdater *)self _removeActiveAlert];
        goto LABEL_32;
      }
    }

    progressBarTriggerRange = [(MNTrafficIncidentAlert *)self->_activeAlert progressBarTriggerRange];
    showTriggerPoint = [progressBarTriggerRange showTriggerPoint];

    if (showTriggerPoint && !-[MNTrafficIncidentAlert shouldShowTimer](self->_activeAlert, "shouldShowTimer") && [showTriggerPoint shouldActivateForLocation:v5])
    {
      [(MNTrafficIncidentAlert *)self->_activeAlert setShouldShowTimer:1];
      progressBarTriggerRange2 = [(MNTrafficIncidentAlert *)self->_activeAlert progressBarTriggerRange];
      [progressBarTriggerRange2 displayTime];
      [(MNTrafficIncidentAlert *)self->_activeAlert setAlertDisplayDuration:?];
    }

    else
    {
      if ([(MNTrafficIncidentAlert *)self->_activeAlert shouldShowTimer])
      {
LABEL_31:
        [(MNTrafficIncidentAlertUpdater *)self _updateAlertDistanceAndETAForLocation:v5];

LABEL_32:
        goto LABEL_33;
      }

      triggerRange = [(MNTrafficIncidentAlert *)self->_activeAlert triggerRange];
      progressBarTriggerRange2 = [triggerRange hideTriggerPoint];

      if (progressBarTriggerRange2)
      {
        v21 = [progressBarTriggerRange2 shouldActivateForLocation:v5];
      }

      else
      {
        v21 = 0;
      }

      [(NSDate *)self->_activeAlertDisplayedTime timeIntervalSinceNow];
      v23 = -v22;
      triggerRange2 = [(MNTrafficIncidentAlert *)self->_activeAlert triggerRange];
      [triggerRange2 displayTime];
      v26 = v25;

      if ((v21 & 1) != 0 || v26 < v23)
      {
        if (v21)
        {
          v27 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1D311E000, v27, OS_LOG_TYPE_DEFAULT, "Active incident alert's hide trigger point has been passed.", buf, 2u);
          }
        }

        if (v26 < v23)
        {
          v28 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1D311E000, v28, OS_LOG_TYPE_DEFAULT, "Active incident alert has timed out.", buf, 2u);
          }
        }

        if ([(MNTrafficIncidentAlert *)self->_activeAlert isReroute])
        {
          v29 = 2;
        }

        else
        {
          v29 = 0;
        }

        self->_trafficIncidentStatus = v29;
        [(MNTrafficIncidentAlertUpdater *)self _removeActiveAlert];
      }
    }

    goto LABEL_31;
  }

LABEL_33:
}

- (void)_removeActiveAlert
{
  activeAlert = self->_activeAlert;
  if (!activeAlert)
  {
    return;
  }

  v4 = activeAlert;
  if (![(MNTrafficIncidentAlert *)v4 isReroute])
  {
    v5 = 0;
    goto LABEL_7;
  }

  if (self->_trafficIncidentStatus == 1)
  {
    v5 = 2;
LABEL_7:
    self->_trafficIncidentStatus = v5;
  }

  [(MNTrafficIncidentAlertUpdater *)self setActiveAlert:0];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained trafficIncidentAlertUpdater:self invalidatedAlert:v4];
}

- (void)_activateAlert:(id)alert forLocation:(id)location
{
  v48 = *MEMORY[0x1E69E9840];
  alertCopy = alert;
  locationCopy = location;
  [(NSDate *)self->_nextAlertDisplayTime timeIntervalSinceNow];
  if (v8 > 0.0)
  {
    goto LABEL_25;
  }

  bannerID = [alertCopy bannerID];

  if (bannerID)
  {
    displayedBannerIds = self->_displayedBannerIds;
    bannerID2 = [alertCopy bannerID];
    [(NSMutableSet *)displayedBannerIds addObject:bannerID2];
  }

  if (![(MNTrafficIncidentAlertUpdater *)self useTriggerPointRangeBannerQueuing])
  {
    bannerID3 = [alertCopy bannerID];
    previousBannerID = self->_previousBannerID;
    self->_previousBannerID = bannerID3;
  }

  [alertCopy updateLocation:locationCopy];
  alternateRoute = [alertCopy alternateRoute];

  v15 = alternateRoute == 0;
  v16 = GEOFindOrCreateLog();
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
  if (v15)
  {
    if (v17)
    {
      bannerID4 = [alertCopy bannerID];
      *buf = 138412290;
      v45 = bannerID4;
      _os_log_impl(&dword_1D311E000, v16, OS_LOG_TYPE_DEFAULT, "Activating alert: %@", buf, 0xCu);
    }
  }

  else if (v17)
  {
    bannerID5 = [alertCopy bannerID];
    alternateRoute2 = [alertCopy alternateRoute];
    uniqueRouteID = [alternateRoute2 uniqueRouteID];
    *buf = 138412546;
    v45 = bannerID5;
    v46 = 2112;
    v47 = uniqueRouteID;
    _os_log_impl(&dword_1D311E000, v16, OS_LOG_TYPE_DEFAULT, "Activating alert: %@ | Alternate route: %@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  alertType = [alertCopy alertType];
  if (alertType <= 7)
  {
    if (((1 << alertType) & 0x64) != 0)
    {
      [(NSMutableSet *)self->_pendingAlerts removeObject:alertCopy];
      [(MNTrafficIncidentAlertUpdater *)self setActiveAlert:alertCopy];
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __60__MNTrafficIncidentAlertUpdater__activateAlert_forLocation___block_invoke_4;
      v35[3] = &unk_1E842B7D0;
      v23 = &v37;
      objc_copyWeak(&v37, buf);
      v36 = alertCopy;
      [WeakRetained trafficIncidentAlertUpdater:self receivedAlert:v36 responseCallback:v35];

      v27 = &v36;
      goto LABEL_21;
    }

    if (((1 << alertType) & 0x18) != 0)
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __60__MNTrafficIncidentAlertUpdater__activateAlert_forLocation___block_invoke_3;
      aBlock[3] = &unk_1E842B7D0;
      v23 = &v40;
      objc_copyWeak(&v40, buf);
      v24 = alertCopy;
      v39 = v24;
      v25 = _Block_copy(aBlock);
      [(NSMutableSet *)self->_pendingAlerts removeObject:v24];
      [(MNTrafficIncidentAlertUpdater *)self setActiveAlert:v24];
      self->_trafficIncidentStatus = 1;
      v26 = objc_loadWeakRetained(&self->_delegate);
      [v26 trafficIncidentAlertUpdater:self receivedAlert:self->_activeAlert responseCallback:v25];

      v27 = &v39;
LABEL_21:

      objc_destroyWeak(v23);
      goto LABEL_22;
    }

    if (alertType == 7)
    {
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __60__MNTrafficIncidentAlertUpdater__activateAlert_forLocation___block_invoke_5;
      v32[3] = &unk_1E8430100;
      v23 = &v34;
      objc_copyWeak(&v34, buf);
      v27 = &v33;
      v33 = alertCopy;
      v29 = MEMORY[0x1E69E96A0];
      v30 = v32;
LABEL_20:
      dispatch_async(v29, v30);
      goto LABEL_21;
    }
  }

  if (alertType == 1)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __60__MNTrafficIncidentAlertUpdater__activateAlert_forLocation___block_invoke;
    block[3] = &unk_1E8430100;
    v23 = &v43;
    objc_copyWeak(&v43, buf);
    v27 = &v42;
    v42 = alertCopy;
    v29 = MEMORY[0x1E69E96A0];
    v30 = block;
    goto LABEL_20;
  }

LABEL_22:
  if (self->_activeAlert)
  {
    v31 = objc_loadWeakRetained(&self->_delegate);
    [v31 trafficIncidentAlertUpdater:self updatedAlert:self->_activeAlert];
  }

  objc_destroyWeak(buf);
LABEL_25:
}

void __60__MNTrafficIncidentAlertUpdater__activateAlert_forLocation___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[3] removeObject:*(a1 + 32)];
    [v3 setActiveAlert:*(a1 + 32)];
    v4 = objc_loadWeakRetained(v3 + 1);
    v5 = *(a1 + 32);
    v8 = MEMORY[0x1E69E9820];
    v9 = 3221225472;
    v10 = __60__MNTrafficIncidentAlertUpdater__activateAlert_forLocation___block_invoke_2;
    v11 = &unk_1E842B7A8;
    v12 = v3;
    v13 = v5;
    [v4 trafficIncidentAlertUpdater:v3 receivedAlert:v13 responseCallback:&v8];

    v6 = [*(a1 + 32) alternateRoute];
    if (v6)
    {
      v7 = objc_loadWeakRetained(v3 + 1);
      [v7 trafficIncidentAlertUpdater:v3 didSwitchToNewRoute:v6 forAlert:*(a1 + 32)];
    }
  }
}

void __60__MNTrafficIncidentAlertUpdater__activateAlert_forLocation___block_invoke_3(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v21 = WeakRetained;
    v5 = [WeakRetained activeAlert];

    WeakRetained = v21;
    if (v5)
    {
      v6 = [v21 activeAlert];
      v7 = [v6 defaultToNewRoute];

      if (v7)
      {
        if (a2)
        {
          *(v21 + 14) = 4;
          v8 = [v21 activeAlert];
          v9 = [v8 alternateRoute];

          if (v9)
          {
            v10 = objc_loadWeakRetained(v21 + 1);
            [v10 trafficIncidentAlertUpdater:v21 didSwitchToNewRoute:v9 forAlert:*(a1 + 32)];
          }

          v11 = v21;
        }

        else
        {
          v11 = v21;
          *(v21 + 14) = 3;
        }

        [v11 setActiveAlert:0];
        v13 = objc_loadWeakRetained(v21 + 1);
        v14 = v13;
        v15 = *(a1 + 32);
        v16 = v21;
        v17 = a2;
      }

      else
      {
        if (a2)
        {
          v12 = v21;
          *(v21 + 14) = 4;
        }

        else
        {
          *(v21 + 14) = 3;
          v18 = [v21 activeAlert];
          v19 = [v18 alternateRoute];

          if (v19)
          {
            v20 = objc_loadWeakRetained(v21 + 1);
            [v20 trafficIncidentAlertUpdater:v21 didSwitchToNewRoute:v19 forAlert:*(a1 + 32)];
          }

          v12 = v21;
        }

        [v12 setActiveAlert:0];
        v13 = objc_loadWeakRetained(v21 + 1);
        v14 = v13;
        v15 = *(a1 + 32);
        v17 = a2 ^ 1;
        v16 = v21;
      }

      [v13 trafficIncidentAlertUpdater:v16 didDismissAlert:v15 withReroute:v17];

      WeakRetained = v21;
    }
  }
}

void __60__MNTrafficIncidentAlertUpdater__activateAlert_forLocation___block_invoke_4(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    [WeakRetained setActiveAlert:0];
    v5 = objc_loadWeakRetained(v6 + 1);
    [v5 trafficIncidentAlertUpdater:v6 didDismissAlert:*(a1 + 32) withReroute:a2];

    WeakRetained = v6;
  }
}

void __60__MNTrafficIncidentAlertUpdater__activateAlert_forLocation___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    [WeakRetained[3] removeObject:*(a1 + 32)];
    v2 = [*(a1 + 32) alternateRoute];
    if (v2)
    {
      v3 = objc_loadWeakRetained(WeakRetained + 1);
      [v3 trafficIncidentAlertUpdater:WeakRetained didSwitchToNewRoute:v2 forAlert:*(a1 + 32)];
    }

    [WeakRetained setActiveAlert:0];
  }
}

void __60__MNTrafficIncidentAlertUpdater__activateAlert_forLocation___block_invoke_2(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setActiveAlert:0];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained trafficIncidentAlertUpdater:*(a1 + 32) didDismissAlert:*(a1 + 40) withReroute:a2];
}

- (void)_updateForLocationUsingDistancePoints:(id)points
{
  v29 = *MEMORY[0x1E69E9840];
  pointsCopy = points;
  pendingAlerts = self->_pendingAlerts;
  if (pendingAlerts && [(NSMutableSet *)pendingAlerts count])
  {
    anyObject = [(NSMutableSet *)self->_pendingAlerts anyObject];
  }

  else
  {
    anyObject = 0;
  }

  routeMatch = [pointsCopy routeMatch];
  [routeMatch routeCoordinate];

  if (anyObject)
  {
    if (!self->_activeAlert)
    {
      [anyObject startValidCoordinateRange];
      [anyObject endValidCoordinateRange];
      if (GEOPolylineCoordinateWithinRange())
      {
        [(MNTrafficIncidentAlertUpdater *)self _activateAlert:anyObject forLocation:pointsCopy];
      }
    }
  }

  if (self->_activeAlert)
  {
    routeMatch2 = [pointsCopy routeMatch];
    route = [routeMatch2 route];

    alternateRoute = [(MNTrafficIncidentAlert *)self->_activeAlert alternateRoute];

    activeAlert = self->_activeAlert;
    if (route == alternateRoute)
    {
      [(MNTrafficIncidentAlert *)activeAlert alternateEndValidCoordinateRange];
    }

    else
    {
      originalRoute = [(MNTrafficIncidentAlert *)activeAlert originalRoute];

      if (route != originalRoute)
      {
        v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unexpected route from route match."];
        v14 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v19 = 136316162;
          v20 = "[MNTrafficIncidentAlertUpdater _updateForLocationUsingDistancePoints:]";
          v21 = 2080;
          v22 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Location/LocationTracking/MNTrafficIncidentAlertUpdater.m";
          v23 = 1024;
          v24 = 560;
          v25 = 2080;
          v26 = "NO";
          v27 = 2112;
          v28 = v13;
          _os_log_impl(&dword_1D311E000, v14, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s) %@", &v19, 0x30u);
        }

        [(MNTrafficIncidentAlertUpdater *)self _removeActiveAlert];
LABEL_25:

        goto LABEL_26;
      }

      [(MNTrafficIncidentAlert *)self->_activeAlert endValidCoordinateRange];
    }

    if (GEOPolylineCoordinateCompare() == 1)
    {
      if ([(MNTrafficIncidentAlert *)self->_activeAlert isReroute])
      {
        v15 = 2;
      }

      else
      {
        v15 = 0;
      }

      self->_trafficIncidentStatus = v15;
      v16 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = GEOPolylineCoordinateAsShortString();
        v18 = GEOPolylineCoordinateAsShortString();
        v19 = 138412546;
        v20 = v17;
        v21 = 2112;
        v22 = v18;
        _os_log_impl(&dword_1D311E000, v16, OS_LOG_TYPE_DEFAULT, "Removing traffic incident alert because the route coordinate %@ is past the valid end coordinate %@", &v19, 0x16u);
      }

      [(MNTrafficIncidentAlertUpdater *)self _removeActiveAlert];
    }

    [(MNTrafficIncidentAlertUpdater *)self _updateAlertDistanceAndETAForLocation:pointsCopy];
    goto LABEL_25;
  }

LABEL_26:
}

- (void)_updateForAlertsFromResponseUsingDistancePoints:(id)points
{
  pointsCopy = points;
  v20 = pointsCopy;
  if (pointsCopy && [pointsCopy count])
  {
    v5 = [v20 objectAtIndexedSubscript:0];
  }

  else
  {
    v5 = 0;
  }

  if ([(NSMutableSet *)self->_pendingAlerts count])
  {
    v6 = 1;
  }

  else
  {
    v6 = self->_activeAlert != 0;
  }

  bannerID = [v5 bannerID];
  if ([bannerID length] && -[NSString length](self->_previousBannerID, "length"))
  {
    bannerID2 = [v5 bannerID];
    v9 = [bannerID2 isEqualToString:self->_previousBannerID];
  }

  else
  {
    v9 = 0;
  }

  if (v5 == 0 && !v6 || (v9 & 1) != 0)
  {
    goto LABEL_24;
  }

  previousBannerID = self->_previousBannerID;
  self->_previousBannerID = 0;

  previousBannerChange = [v5 previousBannerChange];
  if (previousBannerChange == 3)
  {

LABEL_23:
    [(NSMutableSet *)self->_pendingAlerts removeAllObjects];
    v5 = 0;
    goto LABEL_24;
  }

  if (!v5)
  {
    goto LABEL_23;
  }

  v12 = previousBannerChange;
  if (![(NSMutableSet *)self->_pendingAlerts count]&& !self->_activeAlert)
  {
    goto LABEL_22;
  }

  if (v12 != 2)
  {
    if (v12 == 1)
    {
      v15 = [MEMORY[0x1E695DFA8] setWithObject:v5];
      pendingAlerts = self->_pendingAlerts;
      self->_pendingAlerts = v15;

      [(MNTrafficIncidentAlertUpdater *)self _removeActiveAlert];
      goto LABEL_28;
    }

    if (v12)
    {
      goto LABEL_24;
    }

LABEL_22:
    v13 = [MEMORY[0x1E695DFA8] setWithObject:v5];
    v14 = self->_pendingAlerts;
    self->_pendingAlerts = v13;

LABEL_28:
    self->_trafficIncidentStatus = 0;
    goto LABEL_34;
  }

  if (self->_pendingAlerts)
  {
    v17 = [MEMORY[0x1E695DFA8] setWithObject:v5];
    activeAlert = self->_pendingAlerts;
    self->_pendingAlerts = v17;
  }

  else
  {
    if (!self->_activeAlert)
    {
      goto LABEL_34;
    }

    [v5 updateAlertIDWithAlert:?];
    v19 = v5;
    activeAlert = self->_activeAlert;
    self->_activeAlert = v19;
  }

LABEL_34:
  if (self->_lastLocation)
  {
    [(MNTrafficIncidentAlertUpdater *)self _updateForLocationUsingDistancePoints:?];
  }

LABEL_24:
}

- (id)_nextAlert
{
  v79 = *MEMORY[0x1E69E9840];
  routeMatch = [(MNLocation *)self->_lastLocation routeMatch];
  routeCoordinate = [routeMatch routeCoordinate];

  pendingAlerts = self->_pendingAlerts;
  v76[0] = MEMORY[0x1E69E9820];
  v76[1] = 3221225472;
  v76[2] = __43__MNTrafficIncidentAlertUpdater__nextAlert__block_invoke;
  v76[3] = &unk_1E842B738;
  v76[4] = self;
  v76[5] = routeCoordinate;
  v6 = [(NSMutableSet *)pendingAlerts _geo_filtered:v76];
  allObjects = [v6 allObjects];
  v8 = [allObjects sortedArrayUsingComparator:&__block_literal_global_6738];
  firstObject = [v8 firstObject];

  if ([(NSMutableSet *)self->_pendingAlerts count]< 2)
  {
    goto LABEL_33;
  }

  v60 = v6;
  v10 = objc_opt_new();
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __43__MNTrafficIncidentAlertUpdater__nextAlert__block_invoke_3;
  aBlock[3] = &unk_1E842B780;
  aBlock[4] = self;
  v11 = _Block_copy(aBlock);
  v12 = v11[2](v11, firstObject);
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  selfCopy = self;
  v13 = self->_pendingAlerts;
  v14 = [(NSMutableSet *)v13 countByEnumeratingWithState:&v71 objects:v78 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v72;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v72 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v71 + 1) + 8 * i);
        if (v18 != firstObject)
        {
          v11[2](v11, *(*(&v71 + 1) + 8 * i));
          if (GEOPolylineCoordinateRangeIntersectsRange())
          {
            [v10 addObject:v18];
          }
        }
      }

      v15 = [(NSMutableSet *)v13 countByEnumeratingWithState:&v71 objects:v78 count:16];
    }

    while (v15);
  }

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  obj = v10;
  v66 = [obj countByEnumeratingWithState:&v67 objects:v77 count:16];
  if (!v66)
  {
    goto LABEL_32;
  }

  v65 = *v68;
  while (2)
  {
    for (j = 0; j != v66; ++j)
    {
      if (*v68 != v65)
      {
        objc_enumerationMutation(obj);
      }

      v20 = *(*(&v67 + 1) + 8 * j);
      priority = [v20 priority];
      if (priority > [firstObject priority])
      {
        v22 = v11[2](v11, v20);
        v61 = v23;
        [firstObject minDisplayTime];
        v25 = v24;
        [firstObject overlapDelayTime];
        v27 = v26 + v25;
        routeMatch2 = [(MNLocation *)selfCopy->_lastLocation routeMatch];
        route = [routeMatch2 route];
        mainRouteInfo = [v20 mainRouteInfo];
        [mainRouteInfo etaRoute];
        v31 = v64 = v20;
        [route coordinateAtTimeInterval:v12 afterCoordinate:v31 etaRoute:v27];

        if (GEOPolylineCoordinateIsABeforeB())
        {
          triggerRange = [firstObject triggerRange];
          showTriggerPoint = [triggerRange showTriggerPoint];
          allowsShifting = [showTriggerPoint allowsShifting];

          triggerRange2 = [firstObject triggerRange];
          hideTriggerPoint = [triggerRange2 hideTriggerPoint];
          v37 = hideTriggerPoint;
          if (allowsShifting)
          {
            if (hideTriggerPoint)
            {
              triggerRange3 = [firstObject triggerRange];
              hideTriggerPoint2 = [triggerRange3 hideTriggerPoint];
              allowsShifting2 = [hideTriggerPoint2 allowsShifting];

              if (allowsShifting2)
              {
                triggerRange4 = [firstObject triggerRange];
                showTriggerPoint2 = [triggerRange4 showTriggerPoint];
                [showTriggerPoint2 setReferenceCoordinate:v61];

                routeMatch3 = [(MNLocation *)selfCopy->_lastLocation routeMatch];
                route2 = [routeMatch3 route];
                mainRouteInfo2 = [v64 mainRouteInfo];
                etaRoute = [mainRouteInfo2 etaRoute];
                v55 = route2;
                v56 = v27;
                v57 = v61;
LABEL_34:
                v58 = [v55 coordinateAtTimeInterval:v57 afterCoordinate:etaRoute etaRoute:v56];

                v6 = v60;
                if (!GEOPolylineCoordinateIsABeforeB())
                {
LABEL_37:

                  v46 = 0;
                  goto LABEL_38;
                }

                triggerRange5 = [firstObject triggerRange];
                hideTriggerPoint3 = [triggerRange5 hideTriggerPoint];
                [hideTriggerPoint3 setReferenceCoordinate:v58];
LABEL_36:

                goto LABEL_37;
              }
            }

            else
            {
            }

            triggerRange6 = [firstObject triggerRange];
            hideTriggerPoint4 = [triggerRange6 hideTriggerPoint];

            if (!hideTriggerPoint4)
            {
              triggerRange5 = [firstObject triggerRange];
              hideTriggerPoint3 = [triggerRange5 showTriggerPoint];
              [hideTriggerPoint3 setReferenceCoordinate:v22];
              v6 = v60;
              goto LABEL_36;
            }
          }

          else if (hideTriggerPoint)
          {
            triggerRange7 = [firstObject triggerRange];
            hideTriggerPoint5 = [triggerRange7 hideTriggerPoint];
            allowsShifting3 = [hideTriggerPoint5 allowsShifting];

            if (allowsShifting3)
            {
              routeMatch3 = [(MNLocation *)selfCopy->_lastLocation routeMatch];
              route2 = [routeMatch3 route];
              mainRouteInfo2 = [v64 mainRouteInfo];
              etaRoute = [mainRouteInfo2 etaRoute];
              v55 = route2;
              v56 = v27;
              v57 = v61;
              goto LABEL_34;
            }
          }

          else
          {
          }
        }
      }
    }

    v66 = [obj countByEnumeratingWithState:&v67 objects:v77 count:16];
    if (v66)
    {
      continue;
    }

    break;
  }

LABEL_32:

  v6 = v60;
LABEL_33:
  v46 = firstObject;
LABEL_38:

  return v46;
}

uint64_t __43__MNTrafficIncidentAlertUpdater__nextAlert__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(*(a1 + 32) + 16) routeMatch];
  v5 = [v4 route];

  v6 = [v3 triggerRange];
  v7 = [v6 showTriggerPoint];

  [v7 referenceCoordinate];
  if (GEOPolylineCoordinateIsABeforeOrEqualToB())
  {
    v8 = 1;
  }

  else
  {
    [v5 distanceFromPoint:*(a1 + 40) toPoint:{objc_msgSend(v7, "referenceCoordinate")}];
    v8 = v9 < 50.0;
  }

  v10 = [v3 triggerRange];
  v11 = [v10 hideTriggerPoint];

  if (v11)
  {
    [v3 minDisplayTime];
    v13 = v12;
    v14 = [*(*(a1 + 32) + 16) routeMatch];
    v15 = [v14 routeCoordinate];
    v16 = [v3 mainRouteInfo];
    v17 = [v16 etaRoute];
    [v5 coordinateAtTimeInterval:v15 afterCoordinate:v17 etaRoute:v13];

    [v11 referenceCoordinate];
    v8 = v8 & GEOPolylineCoordinateIsABeforeOrEqualToB();
  }

  return v8;
}

unint64_t __43__MNTrafficIncidentAlertUpdater__nextAlert__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 triggerRange];
  v5 = [v4 showTriggerPoint];
  v6 = [v5 referenceCoordinate];

  v7 = [v4 hideTriggerPoint];

  if (v7)
  {
    v8 = [v4 hideTriggerPoint];
    [v8 referenceCoordinate];
  }

  else
  {
    v8 = [*(*(a1 + 32) + 16) routeMatch];
    v9 = [v8 route];
    [v4 displayTime];
    v11 = v10;
    v12 = [v3 mainRouteInfo];
    v13 = [v12 etaRoute];
    [v9 coordinateAtTimeInterval:v6 afterCoordinate:v13 etaRoute:v11];
  }

  if (GEOPolylineCoordinateIsInvalid())
  {
    v14 = *MEMORY[0x1E69A1918];
    v15 = *(MEMORY[0x1E69A1918] + 4);
  }

  else
  {
    v15 = *(&v6 + 1) - floorf(*(&v6 + 1));
    v14 = vcvtms_u32_f32(*(&v6 + 1)) + v6;
  }

  GEOPolylineCoordinateIsInvalid();

  return v14 | (LODWORD(v15) << 32);
}

uint64_t __43__MNTrafficIncidentAlertUpdater__nextAlert__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 priority];
  if (v6 > [v5 priority])
  {
    goto LABEL_2;
  }

  v8 = [v4 priority];
  if (v8 < [v5 priority])
  {
LABEL_4:
    v7 = 1;
    goto LABEL_21;
  }

  v9 = [v4 triggerRange];
  v10 = [v9 hideTriggerPoint];
  if (v10)
  {
    v11 = v10;
    v12 = [v5 triggerRange];
    v13 = [v12 hideTriggerPoint];

    if (v13)
    {
      v14 = [v4 triggerRange];
      v15 = [v14 hideTriggerPoint];
      [v15 referenceCoordinate];

      v16 = [v5 triggerRange];
      v17 = [v16 hideTriggerPoint];
      [v17 referenceCoordinate];

      if (GEOPolylineCoordinateIsABeforeOrEqualToB())
      {
        v7 = -1;
      }

      else
      {
        v7 = 1;
      }

      goto LABEL_21;
    }
  }

  else
  {
  }

  v18 = [v4 triggerRange];
  v19 = [v18 hideTriggerPoint];
  if (v19)
  {
    v20 = v19;
    v21 = [v5 triggerRange];
    v22 = [v21 hideTriggerPoint];

    if (!v22)
    {
LABEL_2:
      v7 = -1;
      goto LABEL_21;
    }
  }

  else
  {
  }

  v23 = [v4 triggerRange];
  v24 = [v23 hideTriggerPoint];
  if (v24)
  {
  }

  else
  {
    v31 = [v5 triggerRange];
    v32 = [v31 hideTriggerPoint];

    if (v32)
    {
      goto LABEL_4;
    }
  }

  v25 = [v4 triggerRange];
  [v25 displayTime];
  v27 = v26;
  v28 = [v4 triggerRange];
  [v28 displayTime];
  if (v27 > v29)
  {
    v7 = 1;
  }

  else
  {
    v7 = -1;
  }

LABEL_21:
  return v7;
}

- (void)clearAlerts
{
  [(MNTrafficIncidentAlertUpdater *)self _removeActiveAlert];
  pendingAlerts = self->_pendingAlerts;

  [(NSMutableSet *)pendingAlerts removeAllObjects];
}

- (void)updateForAlertsFromResponse:(id)response updatedLocation:(id)location
{
  v51 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  locationCopy = location;
  if ([responseCopy count])
  {
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v50 = responseCopy;
      _os_log_impl(&dword_1D311E000, v8, OS_LOG_TYPE_DEFAULT, "MNTrafficIncidentAlertUpdater received alerts: %@", buf, 0xCu);
    }
  }

  if (self->_dodgeballEnabled)
  {
    if (self->_useTriggerPointRangeBannerQueuing)
    {
      v37 = locationCopy;
      v9 = objc_opt_new();
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v10 = self->_pendingAlerts;
      v11 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v43 objects:v48 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v44;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v44 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v43 + 1) + 8 * i);
            if ([v15 persistAcrossUpdates])
            {
              bannerID = [v15 bannerID];
              [v9 setObject:v15 forKeyedSubscript:bannerID];
            }
          }

          v12 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v43 objects:v48 count:16];
        }

        while (v12);
      }

      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v38 = responseCopy;
      v17 = responseCopy;
      v18 = [v17 countByEnumeratingWithState:&v39 objects:v47 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v40;
        do
        {
          for (j = 0; j != v19; ++j)
          {
            if (*v40 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v39 + 1) + 8 * j);
            activeAlert = self->_activeAlert;
            if (activeAlert)
            {
              bannerID2 = [(MNTrafficIncidentAlert *)activeAlert bannerID];
              bannerID3 = [v22 bannerID];
              v26 = [bannerID2 isEqualToString:bannerID3];

              if (v26)
              {
                continue;
              }
            }

            displayedBannerIds = self->_displayedBannerIds;
            bannerID4 = [v22 bannerID];
            LODWORD(displayedBannerIds) = [(NSMutableSet *)displayedBannerIds containsObject:bannerID4];

            if (displayedBannerIds)
            {
              bannerID6 = GEOFindOrCreateLog();
              if (os_log_type_enabled(bannerID6, OS_LOG_TYPE_ERROR))
              {
                bannerID5 = [v22 bannerID];
                *buf = 138412290;
                v50 = bannerID5;
                _os_log_impl(&dword_1D311E000, bannerID6, OS_LOG_TYPE_ERROR, "Banner with ID %@ was already displayed. Ignoring.", buf, 0xCu);
              }
            }

            else
            {
              bannerID6 = [v22 bannerID];
              [v9 setObject:v22 forKeyedSubscript:bannerID6];
            }
          }

          v19 = [v17 countByEnumeratingWithState:&v39 objects:v47 count:16];
        }

        while (v19);
      }

      v31 = MEMORY[0x1E695DFA8];
      allValues = [v9 allValues];
      v33 = [v31 setWithArray:allValues];
      pendingAlerts = self->_pendingAlerts;
      self->_pendingAlerts = v33;

      locationCopy = v37;
      lastLocation = v37;
      if (!v37)
      {
        lastLocation = self->_lastLocation;
      }

      [(MNTrafficIncidentAlertUpdater *)self updateForLocation:lastLocation, v37];

      responseCopy = v38;
    }

    else
    {
      [(MNTrafficIncidentAlertUpdater *)self _updateForAlertsFromResponseUsingDistancePoints:responseCopy];
    }
  }

  else
  {
    v36 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v50 = responseCopy;
      _os_log_impl(&dword_1D311E000, v36, OS_LOG_TYPE_DEFAULT, "Dodgeball alert was found in response but EnableDodgeball is off. Ignoring %@", buf, 0xCu);
    }
  }
}

- (void)updateIncidentResultForRerouteRequest:(id)request
{
  displayedBannerIds = self->_displayedBannerIds;
  requestCopy = request;
  allObjects = [(NSMutableSet *)displayedBannerIds allObjects];
  v5 = [allObjects copy];
  [requestCopy setDisplayedBannerIds:v5];
}

- (void)updateIncidentResultForETARequest:(id)request
{
  [request setRerouteStatus:self->_trafficIncidentStatus];
  if ((self->_trafficIncidentStatus - 2) <= 2)
  {
    self->_trafficIncidentStatus = 0;
  }
}

- (void)updateForReroute:(id)reroute
{
  v15 = *MEMORY[0x1E69E9840];
  rerouteCopy = reroute;
  [(NSMutableSet *)self->_pendingAlerts removeAllObjects];
  activeAlert = self->_activeAlert;
  if (!activeAlert)
  {
    self->_trafficIncidentStatus = 0;
  }

  alternateRoute = [(MNTrafficIncidentAlert *)activeAlert alternateRoute];

  if (!alternateRoute || ([rerouteCopy uniqueRouteID], v7 = objc_claimAutoreleasedReturnValue(), -[MNTrafficIncidentAlert alternateRoute](self->_activeAlert, "alternateRoute"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "uniqueRouteID"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v7, "isEqual:", v9), v9, v8, v7, (v10 & 1) == 0))
  {
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      uniqueRouteID = [rerouteCopy uniqueRouteID];
      v13 = 138412290;
      v14 = uniqueRouteID;
      _os_log_impl(&dword_1D311E000, v11, OS_LOG_TYPE_DEFAULT, "Clearing traffic incident alerts because of a reroute to route %@.", &v13, 0xCu);
    }

    [(MNTrafficIncidentAlertUpdater *)self clearAlerts];
  }
}

- (void)updateForLocation:(id)location
{
  v43 = *MEMORY[0x1E69E9840];
  locationCopy = location;
  if ([locationCopy state] == 1)
  {
    objc_storeStrong(&self->_lastLocation, location);
    if (self->_useTriggerPointRangeBannerQueuing)
    {
      _nextAlert = [(MNTrafficIncidentAlertUpdater *)self _nextAlert];
      v7 = _nextAlert;
      if (!_nextAlert)
      {
LABEL_31:
        [(MNTrafficIncidentAlertUpdater *)self _updateActiveAlertForLocation:locationCopy];

        goto LABEL_32;
      }

      previousBannerChange = [_nextAlert previousBannerChange];
      activeAlert = [(MNTrafficIncidentAlertUpdater *)self activeAlert];

      if (activeAlert)
      {
        v10 = previousBannerChange;
      }

      else
      {
        v10 = 0;
      }

      activeAlert2 = [(MNTrafficIncidentAlertUpdater *)self activeAlert];
      priority = [activeAlert2 priority];
      priority2 = [v7 priority];

      [(NSDate *)self->_activeAlertDisplayedTime timeIntervalSinceNow];
      v15 = v14;
      activeAlert3 = [(MNTrafficIncidentAlertUpdater *)self activeAlert];
      [activeAlert3 minDisplayTime];
      v18 = v17;

      if (v10 > 1)
      {
        if (v10 == 2)
        {
          activeAlert4 = [(MNTrafficIncidentAlertUpdater *)self activeAlert];

          if (activeAlert4)
          {
            activeAlert5 = [(MNTrafficIncidentAlertUpdater *)self activeAlert];
            [v7 updateAlertIDWithAlert:activeAlert5];

            [(MNTrafficIncidentAlertUpdater *)self setActiveAlert:v7];
          }
        }

        else if (v10 == 3)
        {
          [(MNTrafficIncidentAlertUpdater *)self _removeActiveAlert];
        }

        goto LABEL_31;
      }

      if (v10)
      {
        if (v10 != 1)
        {
          goto LABEL_31;
        }

        if (priority >= priority2)
        {
          goto LABEL_31;
        }

        triggerRange = [v7 triggerRange];
        showTriggerPoint = [triggerRange showTriggerPoint];

        LOBYTE(triggerRange) = [showTriggerPoint shouldActivateForLocation:locationCopy];
        if ((triggerRange & 1) == 0)
        {
          goto LABEL_31;
        }
      }

      else
      {
        activeAlert6 = [(MNTrafficIncidentAlertUpdater *)self activeAlert];
        if (activeAlert6)
        {

          if (priority >= priority2 || v18 >= -v15)
          {
            goto LABEL_31;
          }
        }

        triggerRange2 = [v7 triggerRange];
        showTriggerPoint2 = [triggerRange2 showTriggerPoint];

        LODWORD(triggerRange2) = [showTriggerPoint2 shouldActivateForLocation:locationCopy];
        if (!triggerRange2)
        {
          goto LABEL_31;
        }
      }

      incident = [v7 incident];

      if (incident)
      {
        routeMatch = [(MNLocation *)self->_lastLocation routeMatch];
        route = [routeMatch route];
        triggerRange3 = [v7 triggerRange];
        showTriggerPoint3 = [triggerRange3 showTriggerPoint];
        referenceCoordinate = [showTriggerPoint3 referenceCoordinate];

        [route distanceBetweenRouteCoordinate:referenceCoordinate andRouteCoordinate:{objc_msgSend(routeMatch, "routeCoordinate")}];
        v31 = v30;
        [route distanceBetweenRouteCoordinate:referenceCoordinate andRouteCoordinate:{objc_msgSend(v7, "incidentCoordinate")}];
        v33 = v32;
        if (v32 <= 2.22044605e-16)
        {
        }

        else
        {
          GEOConfigGetDouble();
          v35 = v34;

          if (v31 / v33 <= v35)
          {
            goto LABEL_24;
          }
        }

        v38 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          v39 = 134218240;
          v40 = v31;
          v41 = 2048;
          v42 = v33;
          _os_log_impl(&dword_1D311E000, v38, OS_LOG_TYPE_DEFAULT, "Dropping dodgeball since user is too close to the incident. distanceFromAlertStartToCurrentLocation: %0.1fm | distanceFromAlertStartToIncident: %0.1fm", &v39, 0x16u);
        }

        [(NSMutableSet *)self->_pendingAlerts removeObject:v7];
        goto LABEL_31;
      }

LABEL_24:
      self->_trafficIncidentStatus = 0;
      [(MNTrafficIncidentAlertUpdater *)self _removeActiveAlert];
      [(MNTrafficIncidentAlertUpdater *)self _activateAlert:v7 forLocation:locationCopy];
      goto LABEL_31;
    }

    [(MNTrafficIncidentAlertUpdater *)self _updateForLocationUsingDistancePoints:locationCopy];
  }

LABEL_32:
}

- (void)setActiveAlert:(id)alert
{
  alertCopy = alert;
  if (self->_activeAlert != alertCopy)
  {
    v10 = alertCopy;
    v6 = [MEMORY[0x1E695DF00] now];
    if (!v10)
    {
      [(MNTrafficIncidentAlert *)self->_activeAlert overlapDelayTime];
      v7 = [(NSDate *)v6 dateByAddingTimeInterval:?];
      nextAlertDisplayTime = self->_nextAlertDisplayTime;
      self->_nextAlertDisplayTime = v7;

      v6 = 0;
    }

    activeAlertDisplayedTime = self->_activeAlertDisplayedTime;
    self->_activeAlertDisplayedTime = v6;

    objc_storeStrong(&self->_activeAlert, alert);
    alertCopy = v10;
  }
}

- (void)setUseTriggerPointRangeBannerQueuing:(BOOL)queuing
{
  if (self->_useTriggerPointRangeBannerQueuing != queuing)
  {
    self->_useTriggerPointRangeBannerQueuing = queuing;
    [(MNTrafficIncidentAlertUpdater *)self clearAlerts];
  }
}

- (void)dealloc
{
  [(MNTrafficIncidentAlertUpdater *)self clearAlerts];
  GEOConfigRemoveBlockListener();
  v3.receiver = self;
  v3.super_class = MNTrafficIncidentAlertUpdater;
  [(MNTrafficIncidentAlertUpdater *)&v3 dealloc];
}

- (MNTrafficIncidentAlertUpdater)init
{
  v16.receiver = self;
  v16.super_class = MNTrafficIncidentAlertUpdater;
  v2 = [(MNTrafficIncidentAlertUpdater *)&v16 init];
  if (v2)
  {
    v3 = objc_opt_new();
    pendingAlerts = v2->_pendingAlerts;
    v2->_pendingAlerts = v3;

    v5 = [MEMORY[0x1E695DF00] now];
    nextAlertDisplayTime = v2->_nextAlertDisplayTime;
    v2->_nextAlertDisplayTime = v5;

    v7 = objc_opt_new();
    displayedBannerIds = v2->_displayedBannerIds;
    v2->_displayedBannerIds = v7;

    objc_initWeak(&location, v2);
    v2->_dodgeballEnabled = GEOConfigGetBOOL();
    global_queue = geo_get_global_queue();
    objc_copyWeak(&v14, &location);
    v10 = _GEOConfigAddBlockListenerForKey();
    dodgeballEnabledListener = v2->_dodgeballEnabledListener;
    v2->_dodgeballEnabledListener = v10;

    v12 = v2;
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __37__MNTrafficIncidentAlertUpdater_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    WeakRetained[80] = GEOConfigGetBOOL();
    WeakRetained = v2;
  }
}

@end