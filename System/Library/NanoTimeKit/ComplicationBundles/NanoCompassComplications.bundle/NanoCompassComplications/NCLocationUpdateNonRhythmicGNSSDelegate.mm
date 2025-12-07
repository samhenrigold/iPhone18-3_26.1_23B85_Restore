@interface NCLocationUpdateNonRhythmicGNSSDelegate
- (void)_cancelLocationAssertion;
- (void)_idleTimerFired:(id)fired;
- (void)_invalidateIdleTimer;
- (void)_invalidateLocationTimersAndAssertion;
- (void)_invalidateQueryDurationTimer;
- (void)_startIdleTimer;
- (void)_startLocationQueryDurationTimer;
- (void)_takeLocationAssertion;
- (void)stopLocationUpdates;
@end

@implementation NCLocationUpdateNonRhythmicGNSSDelegate

- (void)stopLocationUpdates
{
  v5.receiver = self;
  v5.super_class = NCLocationUpdateNonRhythmicGNSSDelegate;
  [(NCLocationUpdateBaseDelegate *)&v5 stopLocationUpdates];
  objc_msgSend__invalidateLocationTimersAndAssertion(self, v3, v4);
}

- (void)_startLocationQueryDurationTimer
{
  if (self->_locationQueryDurationTimer)
  {
    objc_msgSend__invalidateQueryDurationTimer(self, a2, v2);
  }

  objc_initWeak(&location, self);
  v4 = MEMORY[0x277CBEBB8];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = sub_23BD2B9A8;
  v17 = &unk_278B93FD8;
  objc_copyWeak(&v18, &location);
  v6 = objc_msgSend_timerWithTimeInterval_repeats_block_(v4, v5, 0, &v14, 18.0);
  locationQueryDurationTimer = self->_locationQueryDurationTimer;
  self->_locationQueryDurationTimer = v6;

  v10 = objc_msgSend_currentRunLoop(MEMORY[0x277CBEB88], v8, v9, v14, v15, v16, v17);
  objc_msgSend_addTimer_forMode_(v10, v11, self->_locationQueryDurationTimer, *MEMORY[0x277CBE738]);

  objc_msgSend__takeLocationAssertion(self, v12, v13);
  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

- (void)_startIdleTimer
{
  v17 = *MEMORY[0x277D85DE8];
  if (self->_locationUpdateIdleTimer)
  {
    objc_msgSend__invalidateIdleTimer(self, a2, v2);
  }

  if (objc_msgSend_shouldStartLocationUpdate(self, a2, v2))
  {
    v4 = objc_alloc(MEMORY[0x277D3A180]);
    v6 = objc_msgSend_initWithTimeInterval_serviceIdentifier_target_selector_userInfo_(v4, v5, @"com.apple.NanoCompass.location.nonRhythmicGNSSWake", self, sel__idleTimerFired_, 0, 180.0);
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
    v14 = NCLogForCategory(1uLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 136315138;
      v16 = "[NCLocationUpdateNonRhythmicGNSSDelegate _startIdleTimer]";
      _os_log_impl(&dword_23BD26000, v14, OS_LOG_TYPE_DEFAULT, "%s location update should not start as the app is in the background", &v15, 0xCu);
    }
  }
}

- (void)_idleTimerFired:(id)fired
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = NCLogForCategory(1uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315138;
    v12 = "[NCLocationUpdateNonRhythmicGNSSDelegate _idleTimerFired:]";
    _os_log_impl(&dword_23BD26000, v4, OS_LOG_TYPE_DEFAULT, "%s idle timer fired and restart location update", &v11, 0xCu);
  }

  v7 = objc_msgSend_expectedInterest(self, v5, v6);
  objc_msgSend__startLocationUpdatesWithInterest_(self, v8, v7);
  objc_msgSend__startLocationQueryDurationTimer(self, v9, v10);
}

- (void)_invalidateQueryDurationTimer
{
  locationQueryDurationTimer = self->_locationQueryDurationTimer;
  if (locationQueryDurationTimer)
  {
    objc_msgSend_invalidate(locationQueryDurationTimer, a2, v2);
    v5 = self->_locationQueryDurationTimer;
    self->_locationQueryDurationTimer = 0;
  }
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

- (void)_invalidateLocationTimersAndAssertion
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = NCLogForCategory(1uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315138;
    v11 = "[NCLocationUpdateNonRhythmicGNSSDelegate _invalidateLocationTimersAndAssertion]";
    _os_log_impl(&dword_23BD26000, v3, OS_LOG_TYPE_DEFAULT, "%s invalidate location timers and assertion", &v10, 0xCu);
  }

  objc_msgSend__invalidateIdleTimer(self, v4, v5);
  objc_msgSend__invalidateQueryDurationTimer(self, v6, v7);
  objc_msgSend__cancelLocationAssertion(self, v8, v9);
}

- (void)_takeLocationAssertion
{
  v40[2] = *MEMORY[0x277D85DE8];
  objc_msgSend__cancelLocationAssertion(self, a2, v2);
  v5 = objc_msgSend_attributeWithDuration_warningDuration_startPolicy_endPolicy_(MEMORY[0x277D46E48], v4, 1, 1, 20.0, 1.0);
  v40[0] = v5;
  v7 = objc_msgSend_attributeWithDomain_name_(MEMORY[0x277D46E38], v6, @"com.apple.compass", @"Location");
  v40[1] = v7;
  v9 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v8, v40, 2);

  v10 = objc_alloc(MEMORY[0x277D46DB8]);
  v13 = objc_msgSend_currentProcess(MEMORY[0x277D47008], v11, v12);
  v15 = objc_msgSend_initWithExplanation_target_attributes_(v10, v14, @"Periodic runtime to keep location fresh", v13, v9);
  locationQueryAssertion = self->_locationQueryAssertion;
  self->_locationQueryAssertion = v15;

  objc_initWeak(&location, self);
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = sub_23BD2C1AC;
  v33[3] = &unk_278B94000;
  objc_copyWeak(&v34, &location);
  v17 = MEMORY[0x23EEBBDF0](v33);
  v18 = self->_locationQueryAssertion;
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = sub_23BD2C2C0;
  v31[3] = &unk_278B94028;
  v19 = v17;
  v32 = v19;
  objc_msgSend_setExpirationWarningHandler_(v18, v20, v31);
  v21 = self->_locationQueryAssertion;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = sub_23BD2C380;
  v29[3] = &unk_278B94050;
  v22 = v19;
  v30 = v22;
  objc_msgSend_setInvalidationHandler_(v21, v23, v29);
  v24 = self->_locationQueryAssertion;
  v28 = 0;
  LODWORD(v21) = objc_msgSend_acquireWithError_(v24, v25, &v28);
  v26 = v28;
  if (v21)
  {
    v27 = NCLogForCategory(1uLL);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v37 = "[NCLocationUpdateNonRhythmicGNSSDelegate _takeLocationAssertion]";
      v38 = 2048;
      v39 = 0x4034000000000000;
      _os_log_impl(&dword_23BD26000, v27, OS_LOG_TYPE_DEFAULT, "%s taking runtime assertion for updating location for %.0fs", buf, 0x16u);
    }
  }

  else
  {
    v27 = NCLogForCategory(1uLL);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_23BD655D4(v26, v27);
    }
  }

  objc_destroyWeak(&v34);
  objc_destroyWeak(&location);
}

- (void)_cancelLocationAssertion
{
  v9 = *MEMORY[0x277D85DE8];
  if (self->_locationQueryAssertion)
  {
    v3 = NCLogForCategory(1uLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315138;
      v8 = "[NCLocationUpdateNonRhythmicGNSSDelegate _cancelLocationAssertion]";
      _os_log_impl(&dword_23BD26000, v3, OS_LOG_TYPE_DEFAULT, "%s cancelling runtime assertion", &v7, 0xCu);
    }

    objc_msgSend_invalidate(self->_locationQueryAssertion, v4, v5);
    locationQueryAssertion = self->_locationQueryAssertion;
    self->_locationQueryAssertion = 0;
  }
}

@end