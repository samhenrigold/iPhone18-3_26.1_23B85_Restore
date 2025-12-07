@interface ParkedCarWaypointComplicationDataSource
- (ParkedCarWaypointComplicationDataSource)initWithComplication:(id)complication family:(int64_t)family forDevice:(id)device;
- (id)_newTemplateWithAlwaysOn:(BOOL)on;
- (id)alwaysOnTemplate;
- (id)sampleTemplate;
- (void)_monitorParkedCarEvents;
- (void)_startMonitoringVehicleEvents;
- (void)_stopMonitoringVehicleEvents;
- (void)_updateParkedCarWaypointWith:(id)with withError:(id)error;
- (void)becomeActive;
- (void)becomeInactive;
- (void)dealloc;
- (void)getLaunchURLForTimelineEntryDate:(id)date timeTravelDate:(id)travelDate withHandler:(id)handler;
@end

@implementation ParkedCarWaypointComplicationDataSource

- (ParkedCarWaypointComplicationDataSource)initWithComplication:(id)complication family:(int64_t)family forDevice:(id)device
{
  v20.receiver = self;
  v20.super_class = ParkedCarWaypointComplicationDataSource;
  v5 = [(SmartWaypointComplicationDataSource *)&v20 initWithComplication:complication family:family forDevice:device];
  v6 = objc_alloc_init(MEMORY[0x277D01280]);
  routineManager = v5->_routineManager;
  v5->_routineManager = v6;

  objc_msgSend__startMonitoringVehicleEvents(v5, v8, v9);
  v12 = objc_msgSend_idealizedLocation(NCLocation, v10, v11);
  v15 = objc_msgSend_rawLocation(v12, v13, v14);
  v17 = objc_msgSend_sampleParkedCarWaypointWithLocation_(NCWaypoint, v16, v15);
  objc_msgSend_setWaypoint_(v5, v18, v17);

  return v5;
}

- (void)dealloc
{
  objc_msgSend__stopMonitoringVehicleEvents(self, a2, v2);
  routineManager = self->_routineManager;
  self->_routineManager = 0;

  v5.receiver = self;
  v5.super_class = ParkedCarWaypointComplicationDataSource;
  [(SmartWaypointComplicationDataSource *)&v5 dealloc];
}

- (void)becomeActive
{
  objc_msgSend__startMonitoringVehicleEvents(self, a2, v2);
  v4.receiver = self;
  v4.super_class = ParkedCarWaypointComplicationDataSource;
  [(SmartWaypointComplicationDataSource *)&v4 becomeActive];
}

- (void)becomeInactive
{
  objc_msgSend__stopMonitoringVehicleEvents(self, a2, v2);
  v4.receiver = self;
  v4.super_class = ParkedCarWaypointComplicationDataSource;
  [(SmartWaypointComplicationDataSource *)&v4 becomeInactive];
}

- (void)getLaunchURLForTimelineEntryDate:(id)date timeTravelDate:(id)travelDate withHandler:(id)handler
{
  v36 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v9 = objc_msgSend_sharedComplicationManager(NCWaypointManager, v7, v8);
  v12 = objc_msgSend_parkedCarWaypoint(v9, v10, v11);
  if (v12)
  {
    hasVehicleEvents = self->_hasVehicleEvents;

    if (hasVehicleEvents)
    {
      v16 = MEMORY[0x277CCACA8];
      v17 = objc_msgSend_sharedComplicationManager(NCWaypointManager, v14, v15);
      v20 = objc_msgSend_parkedCarWaypoint(v17, v18, v19);
      v23 = objc_msgSend_uuid(v20, v21, v22);
      v26 = objc_msgSend_UUIDString(v23, v24, v25);
      v28 = objc_msgSend_stringWithFormat_(v16, v27, @"nanocompass://launch?uuid=%@", v26);

      v30 = objc_msgSend_URLWithString_(MEMORY[0x277CBEBC0], v29, v28);

      goto LABEL_6;
    }
  }

  else
  {
  }

  v30 = objc_msgSend_URLWithString_(MEMORY[0x277CBEBC0], v14, @"nanocompass://launch");
LABEL_6:
  v31 = NCLogForCategory(7uLL);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v33 = "[ParkedCarWaypointComplicationDataSource getLaunchURLForTimelineEntryDate:timeTravelDate:withHandler:]";
    v34 = 2112;
    v35 = v30;
    _os_log_impl(&dword_23BD26000, v31, OS_LOG_TYPE_DEFAULT, "%s: launch url is %@", buf, 0x16u);
  }

  handlerCopy[2](handlerCopy, v30);
}

- (void)_monitorParkedCarEvents
{
  objc_initWeak(&location, self);
  routineManager = self->_routineManager;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_23BD56870;
  v9[3] = &unk_278B94A00;
  objc_copyWeak(&v10, &location);
  objc_msgSend_fetchLastVehicleEventsWithHandler_(routineManager, v4, v9);
  v5 = self->_routineManager;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_23BD56958;
  v7[3] = &unk_278B94A00;
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

- (void)_updateParkedCarWaypointWith:(id)with withError:(id)error
{
  v43 = *MEMORY[0x277D85DE8];
  withCopy = with;
  errorCopy = error;
  v10 = errorCopy;
  if (withCopy && !errorCopy && objc_msgSend_count(withCopy, v8, v9))
  {
    self->_hasVehicleEvents = 1;
    v13 = objc_msgSend_firstObject(withCopy, v11, v12);
    v14 = objc_alloc(MEMORY[0x277CE41F8]);
    v17 = objc_msgSend_location(v13, v15, v16);
    objc_msgSend_latitude(v17, v18, v19);
    v21 = v20;
    v24 = objc_msgSend_location(v13, v22, v23);
    objc_msgSend_longitude(v24, v25, v26);
    v30 = objc_msgSend_initWithLatitude_longitude_(v14, v27, v28, v21, v29);

    v31 = NCLogForCategory(7uLL);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v41 = 138412290;
      v42 = v30;
      _os_log_impl(&dword_23BD26000, v31, OS_LOG_TYPE_DEFAULT, "RTVehicleEvent has parked car location at %@", &v41, 0xCu);
    }

    v34 = objc_msgSend_sharedComplicationManager(NCWaypointManager, v32, v33);
    objc_msgSend_updateParkedCarWaypointWithLocation_(v34, v35, v30);
  }

  else
  {
    v36 = NCLogForCategory(7uLL);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v41) = 0;
      _os_log_impl(&dword_23BD26000, v36, OS_LOG_TYPE_DEFAULT, "RTVehicleEvent has error or empty parked car location, resetting parked car waypoint", &v41, 2u);
    }

    objc_msgSend_setWaypoint_(self, v37, 0);
    self->_hasVehicleEvents = 0;
    v13 = objc_msgSend_sharedComplicationManager(NCWaypointManager, v38, v39);
    objc_msgSend_updateParkedCarWaypointWithLocation_(v13, v40, 0);
  }
}

- (id)sampleTemplate
{
  v4 = objc_msgSend_parkedCarLabel(NCWaypoint, a2, v2);
  v7 = objc_msgSend_parkedCarSymbolColor(NCWaypoint, v5, v6);
  v9 = objc_msgSend__templateWithSampleWaypointLabel_symbol_color_(self, v8, v4, @"car.fill", v7);

  return v9;
}

- (id)alwaysOnTemplate
{
  v2 = objc_msgSend__newTemplateWithAlwaysOn_(self, a2, 1);

  return v2;
}

- (id)_newTemplateWithAlwaysOn:(BOOL)on
{
  if ((objc_msgSend__complicationTargetingIsActive(self, a2, on) & 1) == 0)
  {
    v7 = 1;
    if (!self->_hasVehicleEvents)
    {
      goto LABEL_3;
    }

LABEL_5:
    v8 = objc_msgSend_sharedComplicationManager(NCWaypointManager, v5, v6);
    v11 = objc_msgSend_parkedCarWaypoint(v8, v14, v15);
    v13 = objc_msgSend_copy(v11, v16, v17);
    goto LABEL_6;
  }

  v7 = !self->_hasVehicleEvents;
  if (self->_hasVehicleEvents)
  {
    goto LABEL_5;
  }

LABEL_3:
  v8 = objc_msgSend_idealizedLocation(NCLocation, v5, v6);
  v11 = objc_msgSend_rawLocation(v8, v9, v10);
  v13 = objc_msgSend_sampleParkedCarWaypointWithLocation_(NCWaypoint, v12, v11);
LABEL_6:
  v18 = v13;

  v21 = objc_msgSend_location(self, v19, v20);
  v24 = objc_msgSend_copy(v21, v22, v23);
  v27 = objc_msgSend_heading(self, v25, v26);
  v30 = objc_msgSend_copy(v27, v28, v29);
  v33 = objc_msgSend_altitude(self, v31, v32);
  v36 = objc_msgSend_copy(v33, v34, v35);
  v39 = objc_msgSend_calibrated(self, v37, v38);
  BYTE2(v43) = 0;
  BYTE1(v43) = on;
  LOBYTE(v43) = v7;
  v41 = objc_msgSend__templateWithWaypoint_location_heading_altitude_deviceCalibrated_showNoData_showInactiveState_showAlwaysOnState_showPrivacyOnState_(self, v40, v18, v24, v30, v36, v39, 0, v43);

  return v41;
}

@end