@interface NCLocationUpdateAppDelegate
- (NCLocationUpdateAppDelegate)init;
- (int64_t)expectedInterest;
- (void)_cancelLocationAuthRequestAssertion;
- (void)_takeLocationAuthRequestAssertion;
- (void)activateWaypointComplication;
- (void)updateLocationManagerWithCurrentAuthorizationStatus;
@end

@implementation NCLocationUpdateAppDelegate

- (NCLocationUpdateAppDelegate)init
{
  v6.receiver = self;
  v6.super_class = NCLocationUpdateAppDelegate;
  v2 = [(NCLocationUpdateBaseDelegate *)&v6 init];
  v3 = NCLogForCategory(1uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_23BD26000, v3, OS_LOG_TYPE_DEFAULT, "init NCLocationUpdateAppDelegate", v5, 2u);
  }

  return v2;
}

- (int64_t)expectedInterest
{
  if (objc_msgSend_shouldForce1Hz(self, a2, v2))
  {
    return 1;
  }

  v6 = objc_msgSend_location(self, v4, v5);

  if (!v6)
  {
    return 1;
  }

  if (objc_msgSend_isStationary(self, v7, v8))
  {
    return -1;
  }

  objc_msgSend_getNearestWaypointDistance(self, v9, v10);
  v14 = v13;
  if (v13 < 15.0)
  {
    return -1;
  }

  objc_msgSend__getRangeToStart1HzLocationUpdate(self, v11, v12);
  if (v14 <= v16)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

- (void)updateLocationManagerWithCurrentAuthorizationStatus
{
  if (objc_msgSend_locationAuthorizationStatus(self, a2, v2))
  {
    objc_msgSend__cancelLocationAuthRequestAssertion(self, v4, v5);
  }

  else
  {
    objc_msgSend__takeLocationAuthRequestAssertion(self, v4, v5);
  }

  v6.receiver = self;
  v6.super_class = NCLocationUpdateAppDelegate;
  [(NCLocationUpdateBaseDelegate *)&v6 updateLocationManagerWithCurrentAuthorizationStatus];
}

- (void)activateWaypointComplication
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = objc_msgSend_now(MEMORY[0x277CBEAA8], a2, v2);
  v4 = NCLogForCategory(7uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[NCLocationUpdateAppDelegate activateWaypointComplication]";
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_23BD26000, v4, OS_LOG_TYPE_DEFAULT, "%s %@ is the last timestamp user tapped targeted view in the app", &v9, 0x16u);
  }

  v5 = objc_alloc(MEMORY[0x277CBEBD0]);
  v7 = objc_msgSend_initWithSuiteName_(v5, v6, @"com.apple.compass");
  objc_msgSend_setObject_forKey_(v7, v8, v3, @"TargetedViewUsageTimestamp");
}

- (void)_takeLocationAuthRequestAssertion
{
  v30[2] = *MEMORY[0x277D85DE8];
  if (self->_locationAuthQueryAssertion)
  {
    v2 = NCLogForCategory(1uLL);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23BD26000, v2, OS_LOG_TYPE_DEFAULT, "Runtime assertion is acquired already. Don't create a new one.", buf, 2u);
    }
  }

  else
  {
    v2 = objc_msgSend_attributeWithDuration_warningDuration_startPolicy_endPolicy_(MEMORY[0x277D46E48], a2, 1, 1, 30.0, 1.0);
    v30[0] = v2;
    v5 = objc_msgSend_attributeWithDomain_name_(MEMORY[0x277D46E38], v4, @"com.apple.compass", @"Location");
    v30[1] = v5;
    v7 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v6, v30, 2);

    v8 = objc_alloc(MEMORY[0x277D46DB8]);
    v11 = objc_msgSend_currentProcess(MEMORY[0x277D47008], v9, v10);
    v13 = objc_msgSend_initWithExplanation_target_attributes_(v8, v12, @"One time assertion for request location authorization", v11, v7);
    locationAuthQueryAssertion = self->_locationAuthQueryAssertion;
    self->_locationAuthQueryAssertion = v13;

    objc_initWeak(&location, self);
    v15 = self->_locationAuthQueryAssertion;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = sub_23BD4561C;
    v23[3] = &unk_278B94698;
    objc_copyWeak(&v24, &location);
    objc_msgSend_setInvalidationHandler_(v15, v16, v23);
    v17 = self->_locationAuthQueryAssertion;
    v22 = 0;
    LODWORD(v8) = objc_msgSend_acquireWithError_(v17, v18, &v22);
    v19 = v22;
    if (v8)
    {
      v20 = NCLogForCategory(1uLL);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v27 = "[NCLocationUpdateAppDelegate _takeLocationAuthRequestAssertion]";
        v28 = 2048;
        v29 = 0x403E000000000000;
        _os_log_impl(&dword_23BD26000, v20, OS_LOG_TYPE_DEFAULT, "%s taking runtime assertion for requesting location authorization for %.0fs", buf, 0x16u);
      }
    }

    else
    {
      v21 = NCLogForCategory(1uLL);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_23BD66BF4(v19, v21);
      }

      v20 = self->_locationAuthQueryAssertion;
      self->_locationAuthQueryAssertion = 0;
    }

    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
  }
}

- (void)_cancelLocationAuthRequestAssertion
{
  v9 = *MEMORY[0x277D85DE8];
  if (self->_locationAuthQueryAssertion)
  {
    v3 = NCLogForCategory(1uLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315138;
      v8 = "[NCLocationUpdateAppDelegate _cancelLocationAuthRequestAssertion]";
      _os_log_impl(&dword_23BD26000, v3, OS_LOG_TYPE_DEFAULT, "%s cancelling runtime assertion for requesting location authorization.", &v7, 0xCu);
    }

    objc_msgSend_invalidate(self->_locationAuthQueryAssertion, v4, v5);
    locationAuthQueryAssertion = self->_locationAuthQueryAssertion;
    self->_locationAuthQueryAssertion = 0;
  }
}

@end