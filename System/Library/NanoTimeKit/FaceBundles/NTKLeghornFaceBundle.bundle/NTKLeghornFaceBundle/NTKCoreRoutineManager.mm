@interface NTKCoreRoutineManager
+ (id)_filteredWaypointForVehicleEvents:(id)events withQuery:(id)query;
- (NSArray)waypoints;
- (NTKCoreRoutineManager)init;
- (void)_monitorParkedCarEvents;
- (void)_startMonitoringVehicleEvents;
- (void)_stopMonitoringVehicleEvents;
- (void)_updateParkedCarWaypointWith:(id)with withError:(id)error;
- (void)dealloc;
- (void)setQueryCenterLocation:(id)location radius:(double)radius poiFilter:(id)filter completion:(id)completion;
- (void)startUpdatingDelegate:(id)delegate;
- (void)stopUpdating;
@end

@implementation NTKCoreRoutineManager

- (NTKCoreRoutineManager)init
{
  v12.receiver = self;
  v12.super_class = NTKCoreRoutineManager;
  v2 = [(NTKCoreRoutineManager *)&v12 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277D01280]);
    routineManager = v2->_routineManager;
    v2->_routineManager = v3;

    vehicleEvents = v2->_vehicleEvents;
    v2->_vehicleEvents = 0;

    filteredWaypoints = v2->_filteredWaypoints;
    v2->_filteredWaypoints = 0;

    v9 = objc_msgSend_invalidQuery(NTKLeghornWaypointQuery, v7, v8);
    currentQuery = v2->_currentQuery;
    v2->_currentQuery = v9;
  }

  return v2;
}

- (void)dealloc
{
  objc_msgSend__stopMonitoringVehicleEvents(self, a2, v2);
  routineManager = self->_routineManager;
  self->_routineManager = 0;

  v5.receiver = self;
  v5.super_class = NTKCoreRoutineManager;
  [(NTKCoreRoutineManager *)&v5 dealloc];
}

- (void)startUpdatingDelegate:(id)delegate
{
  objc_storeStrong(&self->_delegate, delegate);

  MEMORY[0x2821F9670](self, sel__startMonitoringVehicleEvents, v4);
}

- (void)stopUpdating
{
  objc_msgSend__stopMonitoringVehicleEvents(self, a2, v2);
  delegate = self->_delegate;
  self->_delegate = 0;
}

- (void)_updateParkedCarWaypointWith:(id)with withError:(id)error
{
  withCopy = with;
  errorCopy = error;
  v11 = errorCopy;
  if (errorCopy)
  {
    v12 = NTKFoghornFaceBundleLogObject(errorCopy, v9);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_23BEE6E14();
    }

LABEL_10:

    goto LABEL_11;
  }

  if (!withCopy || (errorCopy = objc_msgSend_count(withCopy, v9, v10)) == 0)
  {
    v12 = NTKFoghornFaceBundleLogObject(errorCopy, v9);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_23BEE6EA0();
    }

    goto LABEL_10;
  }

  objc_storeStrong(&self->_vehicleEvents, with);
  filteredWaypoints = self->_filteredWaypoints;
  self->_filteredWaypoints = 0;

  delegate = self->_delegate;
  if (delegate)
  {
    objc_msgSend_storeDidChangeWithCategories_(delegate, v14, 32);
  }

LABEL_11:
}

- (void)_monitorParkedCarEvents
{
  objc_initWeak(&location, self);
  routineManager = self->_routineManager;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_23BEC3B18;
  v9[3] = &unk_278BA1188;
  objc_copyWeak(&v10, &location);
  objc_msgSend_fetchLastVehicleEventsWithHandler_(routineManager, v4, v9);
  v5 = self->_routineManager;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_23BEC3C00;
  v7[3] = &unk_278BA1188;
  objc_copyWeak(&v8, &location);
  objc_msgSend_startMonitoringVehicleEventsWithHandler_(v5, v6, v7);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)_startMonitoringVehicleEvents
{
  if (!self->_monitoringParkedCarEvents)
  {
    self->_monitoringParkedCarEvents = 1;
    (MEMORY[0x2821F9670])(self, sel__monitorParkedCarEvents);
  }
}

- (void)_stopMonitoringVehicleEvents
{
  if (self->_monitoringParkedCarEvents)
  {
    objc_msgSend_stopMonitoringVehicleEvents(self->_routineManager, a2, v2);
    self->_monitoringParkedCarEvents = 0;
  }
}

+ (id)_filteredWaypointForVehicleEvents:(id)events withQuery:(id)query
{
  v60 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  queryCopy = query;
  v7 = objc_opt_new();
  v10 = objc_msgSend_poiFilter(queryCopy, v8, v9);
  v12 = objc_msgSend_includesCategory_(v10, v11, 32);

  if (v12)
  {
    objc_msgSend_radius(queryCopy, v13, v14);
    if (v17 <= 0.0)
    {
      v19 = *MEMORY[0x277CE4278];
      v21 = *(MEMORY[0x277CE4278] + 8);
    }

    else
    {
      objc_msgSend_centerCoordinate(queryCopy, v15, v16);
      v19 = v18;
      v21 = v20;
    }

    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v22 = eventsCopy;
    v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v23, &v55, v59, 16);
    if (v24)
    {
      v25 = v24;
      v26 = *v56;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v56 != v26)
          {
            objc_enumerationMutation(v22);
          }

          v28 = *(*(&v55 + 1) + 8 * i);
          v62.latitude = v19;
          v62.longitude = v21;
          if (CLLocationCoordinate2DIsValid(v62))
          {
            v31 = objc_msgSend_location(v28, v29, v30, v55);
            objc_msgSend_latitude(v31, v32, v33);
            v35 = v34;

            v38 = objc_msgSend_location(v28, v36, v37);
            objc_msgSend_longitude(v38, v39, v40);
            v42 = v41;

            v43 = CLLocationCoordinate2DMake(v35, v42);
            v44 = ntk_CLLocationCoordinate2DDistanceToCoordinate(v19, v21, v43.latitude, v43.longitude);
            objc_msgSend_radius(queryCopy, v45, v46);
            if (v44 > v48)
            {
              continue;
            }
          }

          v49 = [_VehiclePOI alloc];
          v51 = objc_msgSend_initWithRTVehicleEvent_(v49, v50, v28);
          objc_msgSend_addObject_(v7, v52, v51);
        }

        v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v47, &v55, v59, 16);
      }

      while (v25);
    }
  }

  v53 = objc_msgSend_copy(v7, v13, v14, v55);

  return v53;
}

- (NSArray)waypoints
{
  v18[1] = *MEMORY[0x277D85DE8];
  v3 = self->_filteredWaypoints;
  if (!v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = self->_vehicleEvents;
    if (v5)
    {
      v6 = objc_opt_class();
      v8 = objc_msgSend__filteredWaypointForVehicleEvents_withQuery_(v6, v7, v5, self->_currentQuery);
      v11 = objc_msgSend_firstObject(v8, v9, v10);
      if (v11)
      {
        v13 = v11;
        v18[0] = v11;
        v14 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v12, v18, 1);

        if (v14)
        {
          v15 = v14;
          v3 = v15;
LABEL_8:
          filteredWaypoints = self->_filteredWaypoints;
          self->_filteredWaypoints = v15;

          objc_autoreleasePoolPop(v4);
          goto LABEL_9;
        }
      }

      else
      {
      }
    }

    v3 = 0;
    v15 = MEMORY[0x277CBEBF8];
    goto LABEL_8;
  }

LABEL_9:

  return v3;
}

- (void)setQueryCenterLocation:(id)location radius:(double)radius poiFilter:(id)filter completion:(id)completion
{
  completionCopy = completion;
  locationCopy = location;
  v12 = objc_msgSend_copyIncludingCategories_(filter, v11, 32);
  v13 = self->_currentQuery;
  objc_msgSend_coordinate(locationCopy, v14, v15);
  v17 = v16;
  v19 = v18;

  v21 = objc_msgSend_queryWithCenterCoordinate_radius_poiFilter_(NTKLeghornWaypointQuery, v20, v12, v17, v19, radius);
  if ((objc_msgSend_matchesQuery_(v13, v22, v21) & 1) == 0)
  {
    objc_storeStrong(&self->_currentQuery, v21);
    filteredWaypoints = self->_filteredWaypoints;
    self->_filteredWaypoints = 0;
  }

  if (completionCopy)
  {
    v26 = objc_msgSend_waypoints(self, v23, v24);
    completionCopy[2](completionCopy, self->_filteredWaypoints != 0);
  }
}

@end