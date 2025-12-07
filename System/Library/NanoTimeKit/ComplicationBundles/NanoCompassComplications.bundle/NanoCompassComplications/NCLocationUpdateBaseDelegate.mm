@interface NCLocationUpdateBaseDelegate
+ (id)CLAuthorizationStatusToString:(int)string;
- (BOOL)isLocationServiceOff;
- (NCLocationUpdateBaseDelegate)init;
- (double)cappedMaxDistanceInMeters;
- (double)getNearestWaypointDistance;
- (id)startLocationServiceUpdateWithHandler:(id)handler;
- (id)startLocationUpdatesWithHandler:(id)handler;
- (void)_adjustLocationUpdateInterest;
- (void)_idleTimerFired:(id)fired;
- (void)_invalidateIdleTimer;
- (void)_logCurrentLocation;
- (void)_notifyLocationUpdateHandlers;
- (void)_populateNearestAndFurthestWaypoints;
- (void)_resetLocationAndAltitude;
- (void)_setFurthestWaypoint:(id)waypoint withDistance:(double)distance;
- (void)_setNearestWaypoint:(id)waypoint withDistance:(double)distance;
- (void)_startIdleTimer;
- (void)_startLocationUpdatesWithInterest:(int64_t)interest;
- (void)_updateMotionType:(int64_t)type isDeviceStationary:(BOOL)stationary;
- (void)dealloc;
- (void)endSession:(id)session;
- (void)fetchGroundAltitudeNearLocation:(id)location completion:(id)completion;
- (void)fetchIsRemote:(id)remote;
- (void)fetchLocationsWithinInterval:(id)interval completionHandler:(id)handler;
- (void)fetchLocationsWithinRadius:(double)radius count:(int64_t)count taskIdentifier:(id)identifier completionHandler:(id)handler;
- (void)fetchSmoothedLocationsWithinInterval:(id)interval completionHandler:(id)handler;
- (void)fetchWillPrompt:(id)prompt;
- (void)locationManager:(id)manager didFailWithError:(id)error;
- (void)locationManager:(id)manager didUpdateLocations:(id)locations;
- (void)locationManagerDidChangeAuthorization:(id)authorization;
- (void)performAfterLocationPromptIsShown:(id)shown;
- (void)setCurrentUpdateInterest:(int64_t)interest;
- (void)setForce1Hz:(BOOL)hz;
- (void)setParkedCarWaypoint:(id)waypoint;
- (void)setStartLocationUpdate:(BOOL)update;
- (void)setWaypoints:(id)waypoints;
- (void)startFurthestWaypointUpdatesWithHandler:(id)handler;
- (void)startLocationUpdateInterestDescriptionUpdatesWithHandler:(id)handler;
- (void)startMotionActivityUpdatesWithHandler:(id)handler;
- (void)startNearestWaypointUpdatesWithHandler:(id)handler;
- (void)startSession:(id)session;
- (void)startSessionWithoutLookback:(id)lookback;
- (void)stopFurthestWaypointUpdates;
- (void)stopLocationUpdateInterestDescriptionUpdates;
- (void)stopLocationUpdates;
- (void)stopLocationUpdatesForToken:(id)token;
- (void)stopMotionActivityUpdates;
- (void)stopNearestWaypointUpdates;
- (void)updateLocation:(id)location error:(id)error;
- (void)updateLocationManagerWithCurrentAuthorizationStatus;
@end

@implementation NCLocationUpdateBaseDelegate

- (NCLocationUpdateBaseDelegate)init
{
  v29.receiver = self;
  v29.super_class = NCLocationUpdateBaseDelegate;
  v2 = [(NCLocationUpdateBaseDelegate *)&v29 init];
  v3 = NCLogForCategory(1uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_23BD26000, v3, OS_LOG_TYPE_DEFAULT, "init NCLocationUpdateBaseDelegate", buf, 2u);
  }

  if (v2)
  {
    v2[225] = 0;
    v4 = objc_opt_new();
    v5 = *(v2 + 7);
    *(v2 + 7) = v4;

    v6 = objc_opt_new();
    v7 = *(v2 + 9);
    *(v2 + 9) = v6;

    *(v2 + 57) = 0;
    v8 = objc_alloc(MEMORY[0x277CBFC10]);
    v10 = objc_msgSend_initWithEffectiveBundleIdentifier_delegate_onQueue_(v8, v9, @"com.apple.NanoCompass.watchkitapp", v2, MEMORY[0x277D85CD0]);
    v11 = *(v2 + 1);
    *(v2 + 1) = v10;

    objc_msgSend__setGroundAltitudeEnabled_(*(v2 + 1), v12, 1);
    v13 = objc_opt_new();
    v14 = *(v2 + 10);
    *(v2 + 10) = v13;

    v2[224] = 0;
    *(v2 + 29) = objc_msgSend_initialInterest(v2, v15, v16);
    v19 = objc_msgSend_array(MEMORY[0x277CBEA60], v17, v18);
    v20 = *(v2 + 13);
    *(v2 + 13) = v19;

    *(v2 + 136) = xmmword_23BD6C7F0;
    *(v2 + 84) = 0;
    objc_initWeak(buf, v2);
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = sub_23BD49560;
    v26[3] = &unk_278B946F0;
    objc_copyWeak(&v27, buf);
    v21 = MEMORY[0x23EEBBDF0](v26);
    v22 = *(v2 + 4);
    *(v2 + 4) = v21;

    v23 = dispatch_queue_create("com.apple.nanocompass.corelocation-fetch-queue", 0);
    v24 = *(v2 + 27);
    *(v2 + 27) = v23;

    objc_destroyWeak(&v27);
    objc_destroyWeak(buf);
  }

  return v2;
}

- (void)dealloc
{
  objc_msgSend_pause(self->_rhythmicLocationUpdater, a2, v2);
  objc_msgSend_invalidate(self->_rhythmicLocationUpdater, v4, v5);
  rhythmicLocationUpdater = self->_rhythmicLocationUpdater;
  self->_rhythmicLocationUpdater = 0;

  objc_msgSend_pause(self->_defaultLocationUpdater, v7, v8);
  objc_msgSend_invalidate(self->_defaultLocationUpdater, v9, v10);
  defaultLocationUpdater = self->_defaultLocationUpdater;
  self->_defaultLocationUpdater = 0;

  locationUpdateHandler = self->_locationUpdateHandler;
  self->_locationUpdateHandler = 0;

  v13.receiver = self;
  v13.super_class = NCLocationUpdateBaseDelegate;
  [(NCLocationUpdateBaseDelegate *)&v13 dealloc];
}

- (void)setForce1Hz:(BOOL)hz
{
  hzCopy = hz;
  v13 = *MEMORY[0x277D85DE8];
  v5 = NCLogForCategory(3uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"Do not force";
    if (hzCopy)
    {
      v6 = @"Force";
    }

    v9 = 136315394;
    v10 = "[NCLocationUpdateBaseDelegate setForce1Hz:]";
    v11 = 2114;
    v12 = v6;
    _os_log_impl(&dword_23BD26000, v5, OS_LOG_TYPE_DEFAULT, "%s %{public}@ 1Hz updates.", &v9, 0x16u);
  }

  if (self->_force1Hz != hzCopy)
  {
    self->_force1Hz = hzCopy;
    objc_msgSend__adjustLocationUpdateInterest(self, v7, v8);
  }
}

- (double)getNearestWaypointDistance
{
  location = self->_location;
  if (!location)
  {
    return INFINITY;
  }

  v5 = objc_msgSend_rawLocation(location, a2, v2);
  if (!v5)
  {
    return INFINITY;
  }

  nearestWaypoint = self->_nearestWaypoint;

  if (!nearestWaypoint)
  {
    return INFINITY;
  }

  v9 = objc_msgSend_rawLocation(self->_location, v7, v8);
  v12 = objc_msgSend_location(self->_nearestWaypoint, v10, v11);
  objc_msgSend_distanceFromLocation_(v9, v13, v12);
  v15 = v14;

  return v15;
}

- (double)cappedMaxDistanceInMeters
{
  if (qword_27E1C5280 != -1)
  {
    sub_23BD66D48();
  }

  v3 = objc_msgSend_shared(_TtC24NanoCompassComplications21UnitLengthPreferences, a2, v2);
  v6 = objc_msgSend_usesMetric(v3, v4, v5);

  result = *&qword_27E1C5278;
  if (v6)
  {
    return 80000.0;
  }

  return result;
}

- (void)_populateNearestAndFurthestWaypoints
{
  v72 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CBEB18]);
  v7 = objc_msgSend_initWithArray_copyItems_(v3, v4, self->_waypoints, 1);
  location = self->_location;
  v9 = 0.0;
  if (!location)
  {
    goto LABEL_8;
  }

  v10 = objc_msgSend_rawLocation(location, v5, v6);
  v13 = v10;
  if (v10)
  {
    v14 = v7 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {

LABEL_8:
    v15 = 0;
    v22 = 0;
LABEL_9:
    v16 = INFINITY;
    goto LABEL_10;
  }

  v22 = objc_msgSend_count(v7, v11, v12);

  if (!v22)
  {
    v15 = 0;
    goto LABEL_9;
  }

  objc_msgSend_cappedMaxDistanceInMeters(self, v5, v6);
  v26 = v25;
  parkedCarWaypoint = self->_parkedCarWaypoint;
  if (parkedCarWaypoint)
  {
    v28 = objc_msgSend_location(parkedCarWaypoint, v23, v24);

    if (v28)
    {
      v31 = objc_msgSend_rawLocation(self->_location, v29, v30);
      v34 = objc_msgSend_location(self->_parkedCarWaypoint, v32, v33);
      objc_msgSend_distanceFromLocation_(v31, v35, v34);
      v37 = v36;

      v38 = [NCWaypointWithDistance alloc];
      v40 = objc_msgSend_initWithWaypoint_distance_(v38, v39, self->_parkedCarWaypoint, v37);
      objc_msgSend_insertObject_atIndex_(v7, v41, v40, 0);
    }
  }

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v42 = v7;
  v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(v42, v43, &v67, v71, 16);
  if (v44)
  {
    v47 = v44;
    v15 = 0;
    v22 = 0;
    v48 = *v68;
    v9 = 0.0;
    v16 = INFINITY;
    do
    {
      for (i = 0; i != v47; ++i)
      {
        if (*v68 != v48)
        {
          objc_enumerationMutation(v42);
        }

        v50 = *(*(&v67 + 1) + 8 * i);
        objc_msgSend_distance(v50, v45, v46, v67);
        if (v51 < v26)
        {
          v52 = v51;
          if (v51 < v16)
          {
            v53 = objc_msgSend_waypoint(v50, v45, v46);

            v22 = v53;
            v16 = v52;
          }

          if (v52 > v9)
          {
            v54 = objc_msgSend_waypoint(v50, v45, v46);

            v15 = v54;
            v9 = v52;
          }
        }
      }

      v47 = objc_msgSend_countByEnumeratingWithState_objects_count_(v42, v45, &v67, v71, 16);
    }

    while (v47);
  }

  else
  {
    v15 = 0;
    v22 = 0;
    v9 = 0.0;
    v16 = INFINITY;
  }

LABEL_10:
  if (self->_nearestNeedsResend)
  {
    goto LABEL_41;
  }

  nearestWaypoint = self->_nearestWaypoint;
  if (!nearestWaypoint)
  {
    if (v22)
    {
      goto LABEL_41;
    }
  }

  if (nearestWaypoint && !v22)
  {
    goto LABEL_41;
  }

  v18 = objc_msgSend_uuid(nearestWaypoint, v5, v6, v67);
  v21 = objc_msgSend_uuid(v22, v19, v20);
  if (v18 != v21)
  {

LABEL_41:
    objc_msgSend__setNearestWaypoint_withDistance_(self, v5, v22, v16, v67);
    v58 = 1;
    goto LABEL_42;
  }

  v55 = self->_shortestDistance - v16;
  if (v55 >= 0.0)
  {
    v56 = self->_shortestDistance - v16;
  }

  else
  {
    v56 = -v55;
  }

  if (v56 > 15.0)
  {
    goto LABEL_41;
  }

  v58 = 0;
LABEL_42:
  if (!self->_furthestNeedsResend)
  {
    furthestWaypoint = self->_furthestWaypoint;
    if ((furthestWaypoint || !v15) && (!furthestWaypoint || v15))
    {
      v60 = objc_msgSend_uuid(furthestWaypoint, v5, v57);
      v63 = objc_msgSend_uuid(v15, v61, v62);
      if (v60 == v63)
      {
        v64 = self->_furthestDistance - v9;
        if (v64 >= 0.0)
        {
          v65 = self->_furthestDistance - v9;
        }

        else
        {
          v65 = -v64;
        }

        if (v65 <= 15.0)
        {
          if (!v58)
          {
            goto LABEL_55;
          }

          goto LABEL_54;
        }
      }

      else
      {
      }
    }
  }

  objc_msgSend__setFurthestWaypoint_withDistance_(self, v5, v15, v9);
LABEL_54:
  objc_msgSend__adjustLocationUpdateInterest(self, v5, v66);
LABEL_55:
}

- (void)_setNearestWaypoint:(id)waypoint withDistance:(double)distance
{
  v20 = *MEMORY[0x277D85DE8];
  waypointCopy = waypoint;
  objc_storeStrong(&self->_nearestWaypoint, waypoint);
  self->_shortestDistance = distance;
  nearestWaypointHandler = self->_nearestWaypointHandler;
  v9 = NCLogForCategory(7uLL);
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (nearestWaypointHandler)
  {
    if (v10)
    {
      nearestWaypoint = self->_nearestWaypoint;
      shortestDistance = self->_shortestDistance;
      *buf = 136315650;
      v15 = "[NCLocationUpdateBaseDelegate _setNearestWaypoint:withDistance:]";
      v16 = 2112;
      v17 = nearestWaypoint;
      v18 = 2048;
      v19 = shortestDistance;
      _os_log_impl(&dword_23BD26000, v9, OS_LOG_TYPE_DEFAULT, "%s nearest waypoint is changed to %@ distance: %f", buf, 0x20u);
    }

    self->_nearestNeedsResend = 0;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_23BD49DE0;
    block[3] = &unk_278B93FB0;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    if (v10)
    {
      *buf = 0;
      _os_log_impl(&dword_23BD26000, v9, OS_LOG_TYPE_DEFAULT, "_nearestWaypointHandler is nil. Can't update UI with nearest waypoint", buf, 2u);
    }

    self->_nearestNeedsResend = 1;
  }
}

- (void)_setFurthestWaypoint:(id)waypoint withDistance:(double)distance
{
  v20 = *MEMORY[0x277D85DE8];
  waypointCopy = waypoint;
  objc_storeStrong(&self->_furthestWaypoint, waypoint);
  self->_furthestDistance = distance;
  furthestWaypointHandler = self->_furthestWaypointHandler;
  v9 = NCLogForCategory(7uLL);
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (furthestWaypointHandler)
  {
    if (v10)
    {
      furthestWaypoint = self->_furthestWaypoint;
      furthestDistance = self->_furthestDistance;
      *buf = 136315650;
      v15 = "[NCLocationUpdateBaseDelegate _setFurthestWaypoint:withDistance:]";
      v16 = 2112;
      v17 = furthestWaypoint;
      v18 = 2048;
      v19 = furthestDistance;
      _os_log_impl(&dword_23BD26000, v9, OS_LOG_TYPE_DEFAULT, "%s furthest waypoint is changed to %@  distance: %f", buf, 0x20u);
    }

    self->_furthestNeedsResend = 0;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_23BD49F9C;
    block[3] = &unk_278B93FB0;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    if (v10)
    {
      *buf = 0;
      _os_log_impl(&dword_23BD26000, v9, OS_LOG_TYPE_DEFAULT, "_furthestWaypointHandler is nil. Can't update UI with furthest waypoint", buf, 2u);
    }

    self->_furthestNeedsResend = 1;
  }
}

- (void)startNearestWaypointUpdatesWithHandler:(id)handler
{
  v19 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v5 = MEMORY[0x23EEBBDF0]();
  nearestWaypointHandler = self->_nearestWaypointHandler;
  self->_nearestWaypointHandler = v5;

  v7 = NCLogForCategory(7uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    nearestWaypoint = self->_nearestWaypoint;
    shortestDistance = self->_shortestDistance;
    *buf = 136315650;
    v14 = "[NCLocationUpdateBaseDelegate startNearestWaypointUpdatesWithHandler:]";
    v15 = 2112;
    v16 = nearestWaypoint;
    v17 = 2048;
    v18 = shortestDistance;
    _os_log_impl(&dword_23BD26000, v7, OS_LOG_TYPE_DEFAULT, "%s nearest waypoint is changed to %@ distance: %f", buf, 0x20u);
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_23BD4A110;
  v11[3] = &unk_278B94398;
  v11[4] = self;
  v12 = handlerCopy;
  v10 = handlerCopy;
  dispatch_async(MEMORY[0x277D85CD0], v11);
}

- (void)stopNearestWaypointUpdates
{
  nearestWaypointHandler = self->_nearestWaypointHandler;
  self->_nearestWaypointHandler = 0;
  MEMORY[0x2821F96F8](self, nearestWaypointHandler);
}

- (void)startFurthestWaypointUpdatesWithHandler:(id)handler
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x23EEBBDF0](handler, a2);
  furthestWaypointHandler = self->_furthestWaypointHandler;
  self->_furthestWaypointHandler = v4;

  v6 = NCLogForCategory(7uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[NCLocationUpdateBaseDelegate startFurthestWaypointUpdatesWithHandler:]";
    _os_log_impl(&dword_23BD26000, v6, OS_LOG_TYPE_DEFAULT, "%s", &v9, 0xCu);
  }

  objc_msgSend__populateNearestAndFurthestWaypoints(self, v7, v8);
}

- (void)stopFurthestWaypointUpdates
{
  furthestWaypointHandler = self->_furthestWaypointHandler;
  self->_furthestWaypointHandler = 0;
  MEMORY[0x2821F96F8](self, furthestWaypointHandler);
}

- (void)setWaypoints:(id)waypoints
{
  v18 = *MEMORY[0x277D85DE8];
  waypointsCopy = waypoints;
  v5 = NCLogForCategory(7uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315394;
    v15 = "[NCLocationUpdateBaseDelegate setWaypoints:]";
    v16 = 2048;
    v17 = objc_msgSend_count(waypointsCopy, v6, v7);
    _os_log_impl(&dword_23BD26000, v5, OS_LOG_TYPE_DEFAULT, "%s %lu waypoints are set", &v14, 0x16u);
  }

  v8 = objc_alloc(MEMORY[0x277CBEB18]);
  v10 = objc_msgSend_initWithArray_copyItems_(v8, v9, waypointsCopy, 1);
  waypoints = self->_waypoints;
  self->_waypoints = v10;

  objc_msgSend__populateNearestAndFurthestWaypoints(self, v12, v13);
}

- (void)setParkedCarWaypoint:(id)waypoint
{
  objc_storeStrong(&self->_parkedCarWaypoint, waypoint);

  objc_msgSend__populateNearestAndFurthestWaypoints(self, v4, v5);
}

- (id)startLocationUpdatesWithHandler:(id)handler
{
  handlerCopy = handler;
  v6 = objc_msgSend_tokenWithValue_(NCManagerLocationToken, v5, self->_locationToken);
  ++self->_locationToken;
  v7 = MEMORY[0x23EEBBDF0](handlerCopy);
  objc_msgSend_setObject_forKeyedSubscript_(self->_locationUpdateHandlers, v8, v7, v6);

  objc_msgSend_updateLocationManagerWithCurrentAuthorizationStatus(self, v9, v10);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_23BD4A454;
  v13[3] = &unk_278B94398;
  v13[4] = self;
  v14 = handlerCopy;
  v11 = handlerCopy;
  dispatch_async(MEMORY[0x277D85CD0], v13);

  return v6;
}

- (void)stopLocationUpdatesForToken:(id)token
{
  v18 = *MEMORY[0x277D85DE8];
  objc_msgSend_removeObjectForKey_(self->_locationUpdateHandlers, a2, token);
  v6 = objc_msgSend_count(self->_locationUpdateHandlers, v4, v5);
  if (!self->_startLocationUpdate || v6 == 0)
  {
    v10 = v6;
    v11 = NCLogForCategory(3uLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 136315394;
      v15 = "[NCLocationUpdateBaseDelegate stopLocationUpdatesForToken:]";
      v16 = 2048;
      v17 = v10;
      _os_log_impl(&dword_23BD26000, v11, OS_LOG_TYPE_DEFAULT, "%s Stopping location update (Number of clients? %lu).", &v14, 0x16u);
    }

    objc_msgSend_stopLocationUpdates(self, v12, v13);
  }

  objc_msgSend__invalidateIdleTimer(self, v7, v8);
}

- (id)startLocationServiceUpdateWithHandler:(id)handler
{
  handlerCopy = handler;
  v6 = objc_msgSend_tokenWithValue_(NCManagerLocationServiceToken, v5, self->_locationServiceToken);
  ++self->_locationServiceToken;
  v7 = MEMORY[0x23EEBBDF0](handlerCopy);
  objc_msgSend_setObject_forKeyedSubscript_(self->_locationServiceUpdateHandlers, v8, v7, v6);

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_23BD4A660;
  v11[3] = &unk_278B94718;
  v11[4] = self;
  v12 = handlerCopy;
  v9 = handlerCopy;
  dispatch_async(MEMORY[0x277D85CD0], v11);

  return v6;
}

- (void)startLocationUpdateInterestDescriptionUpdatesWithHandler:(id)handler
{
  handlerCopy = handler;
  v5 = MEMORY[0x23EEBBDF0]();
  locationInterestDescriptionHandler = self->_locationInterestDescriptionHandler;
  self->_locationInterestDescriptionHandler = v5;

  updated = objc_msgSend_currentUpdateInterest(self, v7, v8);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_23BD4A7A0;
  v11[3] = &unk_278B94740;
  v12 = handlerCopy;
  v13 = updated;
  v10 = handlerCopy;
  dispatch_async(MEMORY[0x277D85CD0], v11);
}

- (void)stopLocationUpdateInterestDescriptionUpdates
{
  locationInterestDescriptionHandler = self->_locationInterestDescriptionHandler;
  self->_locationInterestDescriptionHandler = 0;
  MEMORY[0x2821F96F8](self, locationInterestDescriptionHandler);
}

- (void)startMotionActivityUpdatesWithHandler:(id)handler
{
  handlerCopy = handler;
  v5 = MEMORY[0x23EEBBDF0]();
  motionActivityHandler = self->_motionActivityHandler;
  self->_motionActivityHandler = v5;

  v7 = MEMORY[0x277CC1CC8];
  v10 = objc_msgSend_motionType(self, v8, v9);
  v12 = objc_msgSend_NCMotionTypeToString_(v7, v11, v10);
  objc_initWeak(&location, self);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_23BD4A8FC;
  v15[3] = &unk_278B94768;
  objc_copyWeak(&v18, &location);
  v16 = v12;
  v17 = handlerCopy;
  v13 = v12;
  v14 = handlerCopy;
  dispatch_async(MEMORY[0x277D85CD0], v15);

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

- (void)stopMotionActivityUpdates
{
  motionActivityHandler = self->_motionActivityHandler;
  self->_motionActivityHandler = 0;
  MEMORY[0x2821F96F8](self, motionActivityHandler);
}

- (void)startSession:(id)session
{
  sessionCopy = session;
  v5 = mach_continuous_time();
  v6 = NCLogForCategory(5uLL);
  v7 = os_signpost_id_generate(v6);
  v8 = v6;
  v9 = v8;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23BD26000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "Starting CL/CR Session", &unk_23BD722FF, buf, 2u);
  }

  *buf = 0;
  v28 = buf;
  v29 = 0x2020000000;
  v30 = 0;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_23BD4ABAC;
  v20[3] = &unk_278B94790;
  v24 = buf;
  v25 = v5;
  v10 = v9;
  v26 = v7;
  v21 = v10;
  selfCopy = self;
  v11 = sessionCopy;
  v23 = v11;
  v12 = MEMORY[0x23EEBBDF0](v20);
  v13 = NCLogForCategory(5uLL);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *v19 = 0;
    _os_log_impl(&dword_23BD26000, v13, OS_LOG_TYPE_DEFAULT, "Starting core location session.", v19, 2u);
  }

  locationManager = self->_locationManager;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_23BD4ADDC;
  v17[3] = &unk_278B947B8;
  v15 = v12;
  v18 = v15;
  objc_msgSend_startTranscriptSessionWithCompletion_(locationManager, v16, v17);

  _Block_object_dispose(buf, 8);
}

- (void)startSessionWithoutLookback:(id)lookback
{
  lookbackCopy = lookback;
  v5 = mach_continuous_time();
  v6 = NCLogForCategory(5uLL);
  v7 = os_signpost_id_generate(v6);
  v8 = v6;
  v9 = v8;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23BD26000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "Starting CL/CR Session (without lookback)", &unk_23BD722FF, buf, 2u);
  }

  *buf = 0;
  v28 = buf;
  v29 = 0x2020000000;
  v30 = 0;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_23BD4B024;
  v20[3] = &unk_278B94790;
  v24 = buf;
  v25 = v5;
  v10 = v9;
  v26 = v7;
  v21 = v10;
  selfCopy = self;
  v11 = lookbackCopy;
  v23 = v11;
  v12 = MEMORY[0x23EEBBDF0](v20);
  v13 = NCLogForCategory(5uLL);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *v19 = 0;
    _os_log_impl(&dword_23BD26000, v13, OS_LOG_TYPE_DEFAULT, "Starting core location session (without lookback).", v19, 2u);
  }

  locationManager = self->_locationManager;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_23BD4B254;
  v17[3] = &unk_278B947B8;
  v15 = v12;
  v18 = v15;
  objc_msgSend_startTranscriptSessionInstantlyWithCompletion_(locationManager, v16, v17);

  _Block_object_dispose(buf, 8);
}

- (void)endSession:(id)session
{
  sessionCopy = session;
  v5 = mach_continuous_time();
  v6 = NCLogForCategory(5uLL);
  v7 = os_signpost_id_generate(v6);
  v8 = v6;
  v9 = v8;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23BD26000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "Ending CL/CR session", &unk_23BD722FF, buf, 2u);
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_23BD4B3E0;
  v15[3] = &unk_278B947E0;
  v19 = v5;
  v20 = v7;
  v16 = v9;
  selfCopy = self;
  v18 = sessionCopy;
  v10 = sessionCopy;
  v11 = v9;
  v12 = MEMORY[0x23EEBBDF0](v15);
  v13 = NCLogForCategory(5uLL);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    sub_23BD66FA4();
  }

  objc_msgSend_endTranscriptSessionWithCompletion_(self->_locationManager, v14, v12);
}

- (void)fetchLocationsWithinRadius:(double)radius count:(int64_t)count taskIdentifier:(id)identifier completionHandler:(id)handler
{
  v54 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  handlerCopy = handler;
  v14 = objc_msgSend_rawLocation(self->_location, v12, v13);
  if (v14)
  {
    v15 = mach_continuous_time();
    v16 = NCLogForCategory(5uLL);
    v17 = os_signpost_id_generate(v16);
    v18 = v16;
    v19 = v18;
    if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
    {
      *buf = 138543362;
      *&buf[4] = identifierCopy;
      _os_signpost_emit_with_name_impl(&dword_23BD26000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v17, "Begin CL/CR transcript fetch", "(task: %{public}@)", buf, 0xCu);
    }

    objc_msgSend_coordinate(v14, v20, v21);
    v23 = v22;
    v25 = v24;
    v26 = NCLogForCategory(5uLL);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218498;
      *&buf[4] = count;
      *&buf[12] = 2048;
      *&buf[14] = radius;
      *&buf[22] = 2114;
      v51 = identifierCopy;
      _os_log_impl(&dword_23BD26000, v26, OS_LOG_TYPE_DEFAULT, "Fetching %ld locations within %.0fm of current location (task: %{public}@).", buf, 0x20u);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v51 = sub_23BD4B978;
    v52 = sub_23BD4B988;
    v53 = 0;
    v48[0] = 0;
    v48[1] = v48;
    v48[2] = 0x2020000000;
    v49 = 0;
    v46[0] = 0;
    v46[1] = v46;
    v46[2] = 0x3032000000;
    v46[3] = sub_23BD4B978;
    v46[4] = sub_23BD4B988;
    v47 = objc_opt_new();
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = sub_23BD4B990;
    v37[3] = &unk_278B94808;
    v41 = v46;
    v42 = v48;
    v44 = v15;
    v27 = v19;
    v38 = v27;
    v45 = v17;
    v39 = identifierCopy;
    v40 = handlerCopy;
    v43 = buf;
    v28 = MEMORY[0x23EEBBDF0](v37);
    v30 = objc_msgSend_historicalUpdaterWithCenter_radius_dateInterval_sampleCount_queue_handler_(self->_locationManager, v29, 0, count, self->_clFetchQueue, v28, v23, v25, radius);
    v31 = *(*&buf[8] + 40);
    *(*&buf[8] + 40) = v30;

    objc_msgSend_resume(*(*&buf[8] + 40), v32, v33);
    _Block_object_dispose(v46, 8);

    _Block_object_dispose(v48, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v34 = NCLogForCategory(5uLL);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = identifierCopy;
      _os_log_impl(&dword_23BD26000, v34, OS_LOG_TYPE_DEFAULT, "Asked to fetch locations, but we have no current location (task: %{public}@).", buf, 0xCu);
    }

    v27 = objc_msgSend_nc_currentLocationUnknownError(MEMORY[0x277CCA9B8], v35, v36);
    (*(handlerCopy + 2))(handlerCopy, MEMORY[0x277CBEBF8], v27);
  }
}

- (void)fetchLocationsWithinInterval:(id)interval completionHandler:(id)handler
{
  v39 = *MEMORY[0x277D85DE8];
  intervalCopy = interval;
  handlerCopy = handler;
  v8 = mach_continuous_time();
  v9 = NCLogForCategory(8uLL);
  v10 = os_signpost_id_generate(v9);
  v11 = v9;
  v12 = v11;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_23BD26000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "Begin CL/CR transcript fetch (interval)", &unk_23BD722FF, &buf, 2u);
  }

  v13 = NCLogForCategory(8uLL);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = intervalCopy;
    _os_log_impl(&dword_23BD26000, v13, OS_LOG_TYPE_DEFAULT, "Fetching locations within %{public}@.", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v35 = 0x3032000000;
  v36 = sub_23BD4B978;
  v37 = sub_23BD4B988;
  v38 = 0;
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x2020000000;
  v33 = 0;
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x3032000000;
  v30[3] = sub_23BD4B978;
  v30[4] = sub_23BD4B988;
  v31 = objc_opt_new();
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = sub_23BD4C05C;
  v22[3] = &unk_278B94830;
  v25 = v30;
  v26 = v32;
  v28 = v8;
  v14 = v12;
  v23 = v14;
  v29 = v10;
  v15 = handlerCopy;
  v24 = v15;
  p_buf = &buf;
  v16 = MEMORY[0x23EEBBDF0](v22);
  v18 = objc_msgSend_historicalUpdaterWithDateInterval_sampleCount_queue_handler_(self->_locationManager, v17, intervalCopy, 10, self->_clFetchQueue, v16);
  v19 = *(*(&buf + 1) + 40);
  *(*(&buf + 1) + 40) = v18;

  objc_msgSend_resume(*(*(&buf + 1) + 40), v20, v21);
  _Block_object_dispose(v30, 8);

  _Block_object_dispose(v32, 8);
  _Block_object_dispose(&buf, 8);
}

- (void)fetchSmoothedLocationsWithinInterval:(id)interval completionHandler:(id)handler
{
  v39 = *MEMORY[0x277D85DE8];
  intervalCopy = interval;
  handlerCopy = handler;
  if (objc_msgSend_authorizationStatusForBundlePath_(MEMORY[0x277CBFC10], v8, @"/System/Library/LocationBundles/AppleWatchWorkout.bundle") - 3 >= 2)
  {
    v26 = NCLogForCategory(5uLL);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23BD26000, v26, OS_LOG_TYPE_DEFAULT, "Workouts is not authorized to use location; unable to fetch smoothed locations.", buf, 2u);
    }

    (*(handlerCopy + 2))(handlerCopy, MEMORY[0x277CBEBF8], 0);
  }

  else
  {
    v9 = mach_continuous_time();
    v10 = NCLogForCategory(5uLL);
    v11 = os_signpost_id_generate(v10);
    v12 = v10;
    v13 = v12;
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_23BD26000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "Begin CL/CR smoothed fetch", &unk_23BD722FF, buf, 2u);
    }

    v14 = NCLogForCategory(5uLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v38 = intervalCopy;
      _os_log_impl(&dword_23BD26000, v14, OS_LOG_TYPE_INFO, "Fetching smoothed locations within %{public}@.", buf, 0xCu);
    }

    v27 = MEMORY[0x277D85DD0];
    v28 = 3221225472;
    v29 = sub_23BD4C5B8;
    v30 = &unk_278B94858;
    v34 = v9;
    v15 = v13;
    v31 = v15;
    v35 = v11;
    v16 = intervalCopy;
    v32 = v16;
    v33 = handlerCopy;
    v17 = MEMORY[0x23EEBBDF0](&v27);
    locationSmoother = self->_locationSmoother;
    p_locationSmoother = &self->_locationSmoother;
    v19 = locationSmoother;
    v21 = locationSmoother;
    if (!locationSmoother)
    {
      v21 = objc_opt_new();
    }

    objc_storeStrong(p_locationSmoother, v21);
    v23 = v21;
    if (!v19)
    {
    }

    v36 = v16;
    v24 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v22, &v36, 1, v27, v28, v29, v30);
    objc_msgSend_smoothLocations_workoutActivityType_shouldReconstructRoute_timeIntervalsThatNeedPopulated_handler_(v23, v25, 0, 52, 0, v24, v17);
  }
}

- (void)fetchIsRemote:(id)remote
{
  remoteCopy = remote;
  v5 = objc_alloc(MEMORY[0x277CBEBD0]);
  v7 = objc_msgSend_initWithSuiteName_(v5, v6, @"com.apple.NanoCompass");
  if (objc_msgSend_BOOLForKey_(v7, v8, @"simulateRemoteStatus"))
  {
    v11 = NCLogForCategory(5uLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23BD26000, v11, OS_LOG_TYPE_DEFAULT, "Internal default for simulateRemoteStatus is set to YES; isRemote will return YES.", buf, 2u);
    }

    remoteCopy[2](remoteCopy, 1);
  }

  else if (objc_msgSend_isLocationServiceOff(self, v9, v10))
  {
    v12 = NCLogForCategory(5uLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      sub_23BD670CC();
    }

    remoteCopy[2](remoteCopy, 0);
  }

  else
  {
    v13 = mach_continuous_time();
    v14 = NCLogForCategory(5uLL);
    v15 = os_signpost_id_generate(v14);
    v16 = v14;
    v17 = v16;
    if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_23BD26000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v15, "Begin CL/CR is remote fetch", &unk_23BD722FF, buf, 2u);
    }

    v18 = NCLogForCategory(5uLL);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      sub_23BD67090();
    }

    v22 = MEMORY[0x277D85DD0];
    v23 = 3221225472;
    v24 = sub_23BD4CAB4;
    v25 = &unk_278B94880;
    v28 = v13;
    v29 = v15;
    v26 = v17;
    v27 = remoteCopy;
    v19 = v17;
    v20 = MEMORY[0x23EEBBDF0](&v22);
    objc_msgSend_isConsideredInRemoteAreaWithCompletion_(self->_locationManager, v21, v20, v22, v23, v24, v25);
  }
}

- (void)fetchWillPrompt:(id)prompt
{
  promptCopy = prompt;
  v5 = objc_alloc(MEMORY[0x277CBEBD0]);
  v7 = objc_msgSend_initWithSuiteName_(v5, v6, @"com.apple.NanoCompass");
  if (objc_msgSend_BOOLForKey_(v7, v8, @"simulateRemoteStatus"))
  {
    v11 = NCLogForCategory(5uLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23BD26000, v11, OS_LOG_TYPE_DEFAULT, "Internal default for simulateRemoteStatus is set to YES; willPrompt will return YES.", buf, 2u);
    }

    promptCopy[2](promptCopy, 1);
  }

  else if (objc_msgSend_isLocationServiceOff(self, v9, v10))
  {
    v12 = NCLogForCategory(5uLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      sub_23BD67234();
    }

    promptCopy[2](promptCopy, 0);
  }

  else
  {
    v13 = mach_continuous_time();
    v14 = NCLogForCategory(5uLL);
    v15 = os_signpost_id_generate(v14);
    v16 = v14;
    v17 = v16;
    if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_23BD26000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v15, "Begin CL/CR will prompt fetch", &unk_23BD722FF, buf, 2u);
    }

    v18 = NCLogForCategory(5uLL);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      sub_23BD671F8();
    }

    v22 = MEMORY[0x277D85DD0];
    v23 = 3221225472;
    v24 = sub_23BD4CEC0;
    v25 = &unk_278B94880;
    v28 = v13;
    v29 = v15;
    v26 = v17;
    v27 = promptCopy;
    v19 = v17;
    v20 = MEMORY[0x23EEBBDF0](&v22);
    objc_msgSend_willPromptForTranscriptSessionWithCompletion_(self->_locationManager, v21, v20, v22, v23, v24, v25);
  }
}

- (void)locationManagerDidChangeAuthorization:(id)authorization
{
  v37 = *MEMORY[0x277D85DE8];
  authorizationCopy = authorization;
  v7 = objc_msgSend_authorizationStatus(authorizationCopy, v5, v6);
  v10 = objc_msgSend__limitsPrecision(authorizationCopy, v8, v9);
  self->_locationAuthorizationStatus = v7;
  v11 = NCLogForCategory(3uLL);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = objc_msgSend_CLAuthorizationStatusToString_(NCLocationUpdateBaseDelegate, v12, self->_locationAuthorizationStatus);
    v16 = objc_msgSend__limitsPrecision(authorizationCopy, v14, v15);
    v17 = @"Precise";
    if (v16)
    {
      v17 = @"Coarse";
    }

    v18 = @"NOT determined";
    *buf = 138543874;
    v32 = v13;
    v34 = v17;
    v33 = 2112;
    if (v7)
    {
      v18 = @"determined";
    }

    v35 = 2112;
    v36 = v18;
    _os_log_impl(&dword_23BD26000, v11, OS_LOG_TYPE_DEFAULT, "Received updated auth status of %{public}@. %@ location is used. Authorization status is %@{public}@.", buf, 0x20u);
  }

  v19 = [NCLocationServiceUpdate alloc];
  v21 = objc_msgSend_initWithAuthorizationStatus_coarsePrecision_(v19, v20, v7, v10);
  locationServiceUpdateHandlers = self->_locationServiceUpdateHandlers;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = sub_23BD4D284;
  v29[3] = &unk_278B948A8;
  v23 = v21;
  v30 = v23;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(locationServiceUpdateHandlers, v24, v29);
  locationPromptShownAction = self->_locationPromptShownAction;
  if (locationPromptShownAction)
  {
    LODWORD(v7) = v7 != 0;
    if (self->_authorizationStatusDetermined != v7)
    {
      locationPromptShownAction[2]();
      v28 = self->_locationPromptShownAction;
      self->_locationPromptShownAction = 0;
    }
  }

  else
  {
    LOBYTE(v7) = v7 != 0;
  }

  self->_authorizationStatusDetermined = v7;
  objc_msgSend_updateLocationManagerWithCurrentAuthorizationStatus(self, v25, v26);
}

- (void)performAfterLocationPromptIsShown:(id)shown
{
  if (self->_authorizationStatusDetermined)
  {
    v4 = *(shown + 2);

    v4(shown);
  }

  else
  {
    v6 = MEMORY[0x23EEBBDF0](shown, a2);
    locationPromptShownAction = self->_locationPromptShownAction;
    self->_locationPromptShownAction = v6;

    MEMORY[0x2821F96F8](v6, locationPromptShownAction);
  }
}

- (void)locationManager:(id)manager didFailWithError:(id)error
{
  v10 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v6 = NCLogForCategory(3uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[NCLocationUpdateBaseDelegate locationManager:didFailWithError:]";
    _os_log_impl(&dword_23BD26000, v6, OS_LOG_TYPE_DEFAULT, "%s Unexpected call to CLLocationManagerDelegate.", &v8, 0xCu);
  }

  objc_msgSend_updateLocation_error_(self, v7, 0, errorCopy);
}

- (void)locationManager:(id)manager didUpdateLocations:(id)locations
{
  v13 = *MEMORY[0x277D85DE8];
  locationsCopy = locations;
  v6 = NCLogForCategory(3uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315138;
    v12 = "[NCLocationUpdateBaseDelegate locationManager:didUpdateLocations:]";
    _os_log_impl(&dword_23BD26000, v6, OS_LOG_TYPE_DEFAULT, "%s Unexpected call to CLLocationManagerDelegate.", &v11, 0xCu);
  }

  v9 = objc_msgSend_lastObject(locationsCopy, v7, v8);

  objc_msgSend_updateLocation_error_(self, v10, v9, 0);
}

- (void)updateLocation:(id)location error:(id)error
{
  locationCopy = location;
  errorCopy = error;
  v10 = objc_msgSend_domain(errorCopy, v8, v9);
  v11 = *MEMORY[0x277CBFCF0];

  if (v10 != v11)
  {
    goto LABEL_2;
  }

  if (objc_msgSend_code(errorCopy, v12, v13) == 1)
  {
    v14 = NCLogForCategory(3uLL);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      goto LABEL_27;
    }

    v39 = 0;
    v20 = "CoreLocation has given us a denied error.";
    v21 = &v39;
LABEL_17:
    _os_log_impl(&dword_23BD26000, v14, OS_LOG_TYPE_INFO, v20, v21, 2u);
    goto LABEL_27;
  }

  if (!objc_msgSend_code(errorCopy, v18, v19))
  {
    v14 = NCLogForCategory(3uLL);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      goto LABEL_27;
    }

    *buf = 0;
    v20 = "CoreLocation has given us a location unknown error.";
    v21 = buf;
    goto LABEL_17;
  }

LABEL_2:
  v14 = objc_msgSend_rawLocation(self->_location, v12, v13);
  if (objc_msgSend_isEqual_(locationCopy, v15, v14))
  {
    v17 = NCLogForCategory(3uLL);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *v37 = 0;
      _os_log_impl(&dword_23BD26000, v17, OS_LOG_TYPE_INFO, "Avoid processing previous location again.", v37, 2u);
    }
  }

  else
  {
    v17 = objc_msgSend_locationWithLocation_error_(NCLocation, v16, locationCopy, errorCopy);
    isBetterThan_withStaleTimeThreshold = objc_msgSend_isBetterThan_withStaleTimeThreshold_(v17, v22, self->_location, 180.0);
    v25 = isBetterThan_withStaleTimeThreshold;
    if (isBetterThan_withStaleTimeThreshold)
    {
      v26 = NCLogForCategory(3uLL);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        sub_23BD67360();
      }

      objc_storeStrong(&self->_location, v17);
    }

    if (supportAbsoluteAltimeterFeatures(isBetterThan_withStaleTimeThreshold, v24))
    {
      v29 = 0;
    }

    else
    {
      v30 = objc_msgSend_altitudeWithLocation_error_(NCAltitude, v27, locationCopy, errorCopy);
      v29 = objc_msgSend_isBetterThan_withStaleTimeThreshold_(v30, v31, self->_altitude, 180.0);
      if (v29)
      {
        v32 = NCLogForCategory(3uLL);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
        {
          sub_23BD6739C();
        }

        objc_storeStrong(&self->_altitude, v30);
      }
    }

    if ((v25 | v29) == 1)
    {
      objc_msgSend__notifyLocationUpdateHandlers(self, v27, v28);
    }

    objc_msgSend__populateNearestAndFurthestWaypoints(self, v27, v28);
    objc_msgSend__adjustLocationUpdateInterest(self, v33, v34);
    objc_msgSend__logCurrentLocation(self, v35, v36);
  }

LABEL_27:
}

- (void)_notifyLocationUpdateHandlers
{
  locationUpdateHandlers = self->_locationUpdateHandlers;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_23BD4D7EC;
  v3[3] = &unk_278B948D0;
  v3[4] = self;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(locationUpdateHandlers, a2, v3);
}

- (void)_logCurrentLocation
{
  v16 = *MEMORY[0x277D85DE8];
  if (NanoCompassIsInternalBuild(self, a2))
  {
    location = self->_location;
    if (location)
    {
      if (self->_locationLogTimestamp)
      {
        v6 = objc_msgSend_now(MEMORY[0x277CBEAA8], v3, v4);
        objc_msgSend_timeIntervalSinceDate_(v6, v7, self->_locationLogTimestamp);
        v9 = v8;

        if (v9 <= 30.0)
        {
          return;
        }

        location = self->_location;
      }

      v10 = objc_msgSend_reportedTimestamp(location, v3, v4);
      locationLogTimestamp = self->_locationLogTimestamp;
      self->_locationLogTimestamp = v10;

      v12 = NCLogForCategory(3uLL);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = self->_location;
        v14 = 138412290;
        v15 = v13;
        _os_log_impl(&dword_23BD26000, v12, OS_LOG_TYPE_DEFAULT, "Received updated location: %@.", &v14, 0xCu);
      }
    }
  }
}

- (void)_startLocationUpdatesWithInterest:(int64_t)interest
{
  v27 = *MEMORY[0x277D85DE8];
  if (self->_startLocationUpdate)
  {
    v5 = (interest + 1) & 0xFFFFFFFFFFFFFFFDLL;
    v6 = NCLogForCategory(3uLL);
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (v7)
      {
        if ((interest + 1) > 2)
        {
          v8 = @"Unknown";
        }

        else
        {
          v8 = off_278B94960[interest + 1];
        }

        v23 = 136315394;
        v24 = "[NCLocationUpdateBaseDelegate _startLocationUpdatesWithInterest:]";
        v25 = 2114;
        v26 = v8;
        _os_log_impl(&dword_23BD26000, v6, OS_LOG_TYPE_DEFAULT, "%s Location update will not start due to invalid interest (%{public}@).", &v23, 0x16u);
      }
    }

    else
    {
      if (v7)
      {
        if ((interest + 1) > 2)
        {
          v10 = @"Unknown";
        }

        else
        {
          v10 = off_278B94960[interest + 1];
        }

        v23 = 136315394;
        v24 = "[NCLocationUpdateBaseDelegate _startLocationUpdatesWithInterest:]";
        v25 = 2114;
        v26 = v10;
        _os_log_impl(&dword_23BD26000, v6, OS_LOG_TYPE_DEFAULT, "%s Interest? %{public}@.", &v23, 0x16u);
      }

      v11 = NCLogForCategory(3uLL);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        LOWORD(v23) = 0;
        _os_log_impl(&dword_23BD26000, v11, OS_LOG_TYPE_INFO, "Resume rhythmic configuration live updater.", &v23, 2u);
      }

      if (interest <= 0)
      {
        defaultLocationUpdater = self->_defaultLocationUpdater;
        v19 = NCLogForCategory(3uLL);
        v20 = os_log_type_enabled(v19, OS_LOG_TYPE_INFO);
        if (defaultLocationUpdater)
        {
          if (v20)
          {
            LOWORD(v23) = 0;
            _os_log_impl(&dword_23BD26000, v19, OS_LOG_TYPE_INFO, "Rhythmic configuration live updater is all that is needed; pause default configuration live updater.", &v23, 2u);
          }

          objc_msgSend_pause(self->_defaultLocationUpdater, v21, v22);
        }

        else
        {
          if (v20)
          {
            LOWORD(v23) = 0;
            _os_log_impl(&dword_23BD26000, v19, OS_LOG_TYPE_INFO, "Rhythmic configuration live updater is all that is needed.", &v23, 2u);
          }
        }
      }

      else
      {
        v12 = NCLogForCategory(3uLL);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          LOWORD(v23) = 0;
          _os_log_impl(&dword_23BD26000, v12, OS_LOG_TYPE_INFO, "Resume default configuration live updater.", &v23, 2u);
        }

        v15 = self->_defaultLocationUpdater;
        if (!v15)
        {
          v16 = objc_msgSend_liveUpdaterWithConfiguration_queue_handler_(self->_locationManager, v13, 0, MEMORY[0x277D85CD0], self->_locationUpdateHandler);
          v17 = self->_defaultLocationUpdater;
          self->_defaultLocationUpdater = v16;

          v15 = self->_defaultLocationUpdater;
        }

        objc_msgSend_resume(v15, v13, v14);
      }
    }
  }

  else
  {
    v9 = NCLogForCategory(3uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 136315138;
      v24 = "[NCLocationUpdateBaseDelegate _startLocationUpdatesWithInterest:]";
      _os_log_impl(&dword_23BD26000, v9, OS_LOG_TYPE_DEFAULT, "%s Location update should not start.", &v23, 0xCu);
    }
  }
}

- (void)stopLocationUpdates
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = NCLogForCategory(3uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315138;
    v12 = "[NCLocationUpdateBaseDelegate stopLocationUpdates]";
    _os_log_impl(&dword_23BD26000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v11, 0xCu);
  }

  objc_msgSend__invalidateIdleTimer(self, v4, v5);
  v6 = NCLogForCategory(3uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    LOWORD(v11) = 0;
    _os_log_impl(&dword_23BD26000, v6, OS_LOG_TYPE_INFO, "Pause default and rhythmic configuration live updaters.", &v11, 2u);
  }

  objc_msgSend_pause(self->_defaultLocationUpdater, v7, v8);
  objc_msgSend_pause(self->_rhythmicLocationUpdater, v9, v10);
}

- (void)_adjustLocationUpdateInterest
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  if (objc_msgSend_shouldStartLocationUpdate(self, v3, v4) && self->_location)
  {
    v8 = objc_msgSend_expectedInterest(self, v5, v6);

    objc_msgSend_setCurrentUpdateInterest_(self, v7, v8);
  }
}

- (void)updateLocationManagerWithCurrentAuthorizationStatus
{
  v21 = *MEMORY[0x277D85DE8];
  locationAuthorizationStatus = self->_locationAuthorizationStatus;
  if ((locationAuthorizationStatus - 3) >= 2)
  {
    if (locationAuthorizationStatus)
    {
      v12 = NCLogForCategory(3uLL);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v14 = objc_msgSend_CLAuthorizationStatusToString_(NCLocationUpdateBaseDelegate, v13, self->_locationAuthorizationStatus);
        v19 = 138543362;
        v20 = v14;
        _os_log_impl(&dword_23BD26000, v12, OS_LOG_TYPE_DEFAULT, "Unusable auth: %{public}@.", &v19, 0xCu);
      }

      objc_msgSend_stopLocationUpdates(self, v15, v16);
      objc_msgSend__resetLocationAndAltitude(self, v17, v18);
    }

    else
    {
      v7 = NCLogForCategory(3uLL);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v19) = 0;
        _os_log_impl(&dword_23BD26000, v7, OS_LOG_TYPE_DEFAULT, "Requesting When In Use Auth.", &v19, 2u);
      }

      objc_msgSend__resetLocationAndAltitude(self, v8, v9);
      objc_msgSend_requestWhenInUseAuthorization(self->_locationManager, v10, v11);
    }
  }

  else
  {
    updated = objc_msgSend_currentUpdateInterest(self, a2, v2);

    objc_msgSend__startLocationUpdatesWithInterest_(self, v5, updated);
  }
}

- (void)_resetLocationAndAltitude
{
  location = self->_location;
  self->_location = 0;

  if ((supportAbsoluteAltimeterFeatures(v4, v5) & 1) == 0)
  {
    altitude = self->_altitude;
    self->_altitude = 0;
  }

  objc_msgSend__notifyLocationUpdateHandlers(self, v6, v7);
}

- (BOOL)isLocationServiceOff
{
  v20 = *MEMORY[0x277D85DE8];
  if ((self->_locationAuthorizationStatus - 1) >= 2)
  {
    v4 = objc_msgSend__limitsPrecision(self->_locationManager, a2, v2);
  }

  else
  {
    v4 = 1;
  }

  v5 = NCLogForCategory(3uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_msgSend_CLAuthorizationStatusToString_(NCLocationUpdateBaseDelegate, v6, self->_locationAuthorizationStatus);
    v10 = objc_msgSend__limitsPrecision(self->_locationManager, v8, v9);
    v11 = @"NO";
    if (v10)
    {
      v11 = @"YES";
    }

    v12 = @"On";
    v14 = 138543874;
    v15 = v7;
    v17 = v11;
    v16 = 2114;
    if (v4)
    {
      v12 = @"Off";
    }

    v18 = 2114;
    v19 = v12;
    _os_log_impl(&dword_23BD26000, v5, OS_LOG_TYPE_DEFAULT, "Checking location service. Auth status? %{public}@. Is coarse precision only? %{public}@. Consider location service %{public}@.", &v14, 0x20u);
  }

  return v4;
}

+ (id)CLAuthorizationStatusToString:(int)string
{
  if ((string - 1) > 3)
  {
    return @"kCLAuthorizationStatusNotDetermined";
  }

  else
  {
    return off_278B94940[string - 1];
  }
}

- (void)_updateMotionType:(int64_t)type isDeviceStationary:(BOOL)stationary
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v7 = objc_msgSend_NCMotionTypeToString_(MEMORY[0x277CC1CC8], v6, type);
  motionActivityHandler = self->_motionActivityHandler;
  v12 = v7;
  if (motionActivityHandler)
  {
    isStationary = objc_msgSend_isStationary(self, v8, v9);
    motionActivityHandler[2](motionActivityHandler, v12, isStationary);
  }

  if (self->_location)
  {
    objc_msgSend__adjustLocationUpdateInterest(self, v8, v9);
  }
}

- (void)_startIdleTimer
{
  if (self->_locationUpdateIdleTimer)
  {
    objc_msgSend__invalidateIdleTimer(self, a2, v2);
  }

  if (self->_startLocationUpdate)
  {
    v4 = objc_alloc(MEMORY[0x277D3A180]);
    v6 = objc_msgSend_initWithTimeInterval_serviceIdentifier_target_selector_userInfo_(v4, v5, @"com.apple.NanoCompass.location.wake", self, sel__idleTimerFired_, 0, 3600.0);
    locationUpdateIdleTimer = self->_locationUpdateIdleTimer;
    self->_locationUpdateIdleTimer = v6;

    objc_msgSend_setUserVisible_(self->_locationUpdateIdleTimer, v8, 1);
    objc_msgSend_setMinimumEarlyFireProportion_(self->_locationUpdateIdleTimer, v9, v10, 1.0);
    v12 = self->_locationUpdateIdleTimer;
    v13 = MEMORY[0x277D85CD0];

    objc_msgSend_scheduleInQueue_(v12, v11, v13);
  }

  else
  {
    v14 = NCLogForCategory(3uLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&dword_23BD26000, v14, OS_LOG_TYPE_DEFAULT, "Asked to start idle timer, but location updates should not start.", v15, 2u);
    }
  }
}

- (void)_idleTimerFired:(id)fired
{
  v4 = NCLogForCategory(3uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_23BD26000, v4, OS_LOG_TYPE_DEFAULT, "Idle timer fired; restart location update.", v9, 2u);
  }

  updated = objc_msgSend_currentUpdateInterest(self, v5, v6);
  objc_msgSend__startLocationUpdatesWithInterest_(self, v8, updated);
}

- (void)_invalidateIdleTimer
{
  locationUpdateIdleTimer = self->_locationUpdateIdleTimer;
  if (locationUpdateIdleTimer)
  {
    objc_msgSend_invalidate(locationUpdateIdleTimer, a2, v2);
    v5 = self->_locationUpdateIdleTimer;
    self->_locationUpdateIdleTimer = 0;
  }
}

- (void)setCurrentUpdateInterest:(int64_t)interest
{
  v18 = *MEMORY[0x277D85DE8];
  currentUpdateInterest = self->_currentUpdateInterest;
  if (currentUpdateInterest != interest)
  {
    if (interest == -1)
    {
      objc_msgSend__startIdleTimer(self, a2, -1);
      v6 = @"YES";
    }

    else
    {
      if (currentUpdateInterest == -1)
      {
        objc_msgSend__invalidateIdleTimer(self, a2, interest);
      }

      v6 = @"NO";
    }

    v7 = NCLogForCategory(3uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      if ((interest + 1) > 2)
      {
        v8 = @"Unknown";
      }

      else
      {
        v8 = off_278B94960[interest + 1];
      }

      v12 = 136315650;
      v13 = "[NCLocationUpdateBaseDelegate setCurrentUpdateInterest:]";
      v14 = 2114;
      v15 = v8;
      v16 = 2114;
      v17 = v6;
      _os_log_impl(&dword_23BD26000, v7, OS_LOG_TYPE_DEFAULT, "%s Adjust currentUpdateInterest to %{public}@. Start wakeup timer? %{public}@.", &v12, 0x20u);
    }

    self->_currentUpdateInterest = interest;
    locationInterestDescriptionHandler = self->_locationInterestDescriptionHandler;
    if (locationInterestDescriptionHandler)
    {
      if ((interest + 1) > 2)
      {
        v11 = @"Unknown";
      }

      else
      {
        v11 = off_278B94960[interest + 1];
      }

      locationInterestDescriptionHandler[2](locationInterestDescriptionHandler, v11);
    }

    objc_msgSend__startLocationUpdatesWithInterest_(self, v9, interest);
  }
}

- (void)setStartLocationUpdate:(BOOL)update
{
  updateCopy = update;
  v31 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  if (!self->_transcriptSession || updateCopy)
  {
    self->_startLocationUpdate = updateCopy;
    v7 = NCLogForCategory(1uLL);
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (updateCopy)
    {
      if (v8)
      {
        *buf = 136315138;
        v30 = "[NCLocationUpdateBaseDelegate setStartLocationUpdate:]";
        _os_log_impl(&dword_23BD26000, v7, OS_LOG_TYPE_DEFAULT, "%s Starting location/motion activity updates.", buf, 0xCu);
      }

      updated = objc_msgSend_currentUpdateInterest(self, v9, v10);
      location = self->_location;
      if (!location)
      {
        goto LABEL_13;
      }

      v15 = objc_msgSend_timestamp(location, v11, v12);
      objc_msgSend_timeIntervalSinceNow(v15, v16, v17);
      v19 = v18;

      v20 = -v19;
      if (v19 >= 0.0)
      {
        v20 = v19;
      }

      if (v20 > 300.0)
      {
LABEL_13:
        updated = objc_msgSend_initialInterest(self, v11, v12);
      }

      objc_msgSend__startLocationUpdatesWithInterest_(self, v11, updated);
      objc_initWeak(buf, self);
      motionClassificationManager = self->_motionClassificationManager;
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = sub_23BD4E7E0;
      v27[3] = &unk_278B948F8;
      objc_copyWeak(&v28, buf);
      objc_msgSend_startMotionActivityUpdatesWithHandler_(motionClassificationManager, v22, v27);
      objc_destroyWeak(&v28);
      objc_destroyWeak(buf);
    }

    else
    {
      if (v8)
      {
        *buf = 136315138;
        v30 = "[NCLocationUpdateBaseDelegate setStartLocationUpdate:]";
        _os_log_impl(&dword_23BD26000, v7, OS_LOG_TYPE_DEFAULT, "%s Stopping location/motion activity updates.", buf, 0xCu);
      }

      objc_msgSend_stopLocationUpdates(self, v23, v24);
      objc_msgSend_stopMotionActivityUpdates(self->_motionClassificationManager, v25, v26);
    }
  }

  else
  {
    v5 = NCLogForCategory(3uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v30 = @"Passive Interest";
      _os_log_impl(&dword_23BD26000, v5, OS_LOG_TYPE_DEFAULT, "We were asked to stop location updates during an active transcript session. We will instead attempt to change the interest to %{public}@.", buf, 0xCu);
    }

    objc_msgSend_setCurrentUpdateInterest_(self, v6, -1);
    self->_startLocationUpdate = updateCopy;
  }
}

- (void)fetchGroundAltitudeNearLocation:(id)location completion:(id)completion
{
  locationCopy = location;
  completionCopy = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23BD4E914;
  block[3] = &unk_278B94920;
  block[4] = self;
  v12 = locationCopy;
  v13 = completionCopy;
  v8 = completionCopy;
  v9 = locationCopy;
  v10 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INITIATED, 0, block);
  dispatch_async(self->_clFetchQueue, v10);
}

@end