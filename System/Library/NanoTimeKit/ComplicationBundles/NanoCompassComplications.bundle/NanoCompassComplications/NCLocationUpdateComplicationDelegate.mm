@interface NCLocationUpdateComplicationDelegate
- (id)_endOfDayForDate:(id)date;
- (id)_getActivationStartDate;
- (id)startLocationUpdatesWithHandler:(id)handler;
- (void)_complicationDeactivationTimerFired:(id)fired;
- (void)_invalidateActivationTimer;
- (void)_setupDeactivationTimerWithStartDate:(id)date;
- (void)activateWaypointComplication;
- (void)deactivateWaypointComplication;
@end

@implementation NCLocationUpdateComplicationDelegate

- (id)startLocationUpdatesWithHandler:(id)handler
{
  v8.receiver = self;
  v8.super_class = NCLocationUpdateComplicationDelegate;
  v4 = [(NCLocationUpdateBaseDelegate *)&v8 startLocationUpdatesWithHandler:handler];
  objc_msgSend_activateWaypointComplication(self, v5, v6);

  return v4;
}

- (void)activateWaypointComplication
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend__getActivationStartDate(self, a2, v2);
  if (v6)
  {
    v7 = objc_msgSend_now(MEMORY[0x277CBEAA8], v4, v5);
    IsSameDay = NanoCompassIsSameDay(v6, v7);
    v11 = objc_msgSend_locationClientCount(self, v9, v10);
    v12 = NCLogForCategory(7uLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      if (IsSameDay)
      {
        v15 = @"YES";
      }

      else
      {
        v15 = @"NO";
      }

      v24 = 136316418;
      v25 = "[NCLocationUpdateComplicationDelegate activateWaypointComplication]";
      if (objc_msgSend_isWaypointComplicationActive(self, v13, v14))
      {
        v16 = @"YES";
      }

      else
      {
        v16 = @"NO";
      }

      v26 = 2112;
      v27 = v6;
      v28 = 2112;
      v29 = v7;
      v30 = 2112;
      v31 = v15;
      v32 = 2048;
      v33 = v11;
      v34 = 2112;
      v35 = v16;
      _os_log_impl(&dword_23BD26000, v12, OS_LOG_TYPE_DEFAULT, "%s activate date is %@, now is %@, on the same date? %@, client count is %lu, waypoint complication is active? %@", &v24, 0x3Eu);
    }

    if (v11)
    {
      v19 = IsSameDay;
    }

    else
    {
      v19 = 0;
    }

    if (v19 && objc_msgSend_isWaypointComplicationActive(self, v17, v18))
    {
      objc_msgSend__setupDeactivationTimerWithStartDate_(self, v20, v6);
      if (!self->_waypointIsActivated)
      {
        objc_msgSend_setStartLocationUpdate_(self, v21, 1);
        v22 = NCLogForCategory(7uLL);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v24) = 0;
          _os_log_impl(&dword_23BD26000, v22, OS_LOG_TYPE_DEFAULT, "Waypoint complication is activated. Power log is started.", &v24, 2u);
        }

        powerLogWaypointComplicationEventStarted();
        self->_waypointIsActivated = 1;
      }

      if (ShouldSendComplicationDailyMetricsEvent())
      {
        SendWaypointComplicationActivatedEvent(v11, v23);
        UpdateComplicationDailyMetricsEventTimestamp();
      }
    }
  }

  else
  {
    v7 = NCLogForCategory(7uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_23BD65B58(v7);
    }
  }
}

- (void)deactivateWaypointComplication
{
  objc_msgSend__invalidateActivationTimer(self, a2, v2);
  if (self->_waypointIsActivated)
  {
    objc_msgSend_setStartLocationUpdate_(self, v4, 0);
    v5 = NCLogForCategory(7uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_23BD26000, v5, OS_LOG_TYPE_DEFAULT, "Waypoint complication is deactivated. Power log is stopped.", v6, 2u);
    }

    self->_waypointIsActivated = 0;
    powerLogWaypointComplicationEventStarted();
  }
}

- (void)_setupDeactivationTimerWithStartDate:(id)date
{
  v22 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  v5 = NCLogForCategory(7uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 136315394;
    v19 = "[NCLocationUpdateComplicationDelegate _setupDeactivationTimerWithStartDate:]";
    v20 = 2112;
    v21 = dateCopy;
    _os_log_impl(&dword_23BD26000, v5, OS_LOG_TYPE_DEFAULT, "%s setting up deactivation timer with activation start date %@", &v18, 0x16u);
  }

  if (self->_waypointComplicationDeactivationTimer)
  {
    objc_msgSend__invalidateActivationTimer(self, v6, v7);
  }

  v8 = objc_alloc(MEMORY[0x277D3A180]);
  v10 = objc_msgSend__endOfDayForDate_(self, v9, dateCopy);
  v12 = objc_msgSend_initWithFireDate_serviceIdentifier_target_selector_userInfo_(v8, v11, v10, @"com.apple.NanoCompass.waypoint.activationTimeout", self, sel__complicationDeactivationTimerFired_, 0);
  waypointComplicationDeactivationTimer = self->_waypointComplicationDeactivationTimer;
  self->_waypointComplicationDeactivationTimer = v12;

  objc_msgSend_setUserVisible_(self->_waypointComplicationDeactivationTimer, v14, 1);
  objc_msgSend_setMinimumEarlyFireProportion_(self->_waypointComplicationDeactivationTimer, v15, v16, 1.0);
  objc_msgSend_scheduleInQueue_(self->_waypointComplicationDeactivationTimer, v17, MEMORY[0x277D85CD0]);
}

- (id)_endOfDayForDate:(id)date
{
  v3 = MEMORY[0x277CBEA80];
  dateCopy = date;
  v7 = objc_msgSend_currentCalendar(v3, v5, v6);
  v9 = objc_msgSend_components_fromDate_(v7, v8, 28, dateCopy);

  objc_msgSend_setHour_(v9, v10, 23);
  objc_msgSend_setMinute_(v9, v11, 59);
  objc_msgSend_setSecond_(v9, v12, 59);
  v14 = objc_msgSend_dateFromComponents_(v7, v13, v9);

  return v14;
}

- (id)_getActivationStartDate
{
  v2 = objc_alloc(MEMORY[0x277CBEBD0]);
  v4 = objc_msgSend_initWithSuiteName_(v2, v3, @"com.apple.compass");
  v6 = objc_msgSend_objectForKey_(v4, v5, @"TargetedViewUsageTimestamp");

  return v6;
}

- (void)_complicationDeactivationTimerFired:(id)fired
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = NCLogForCategory(7uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[NCLocationUpdateComplicationDelegate _complicationDeactivationTimerFired:]";
    _os_log_impl(&dword_23BD26000, v4, OS_LOG_TYPE_DEFAULT, "%s deactivation timer fired and deactivate location update for waypoint complication", &v7, 0xCu);
  }

  objc_msgSend_deactivateWaypointComplication(self, v5, v6);
}

- (void)_invalidateActivationTimer
{
  waypointComplicationDeactivationTimer = self->_waypointComplicationDeactivationTimer;
  if (waypointComplicationDeactivationTimer)
  {
    objc_msgSend_invalidate(waypointComplicationDeactivationTimer, a2, v2);
    v5 = self->_waypointComplicationDeactivationTimer;
    self->_waypointComplicationDeactivationTimer = 0;
  }
}

@end