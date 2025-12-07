@interface SmartWaypointComplicationDataSource
+ (BOOL)acceptsComplicationFamily:(int64_t)family forDevice:(id)device;
- (BOOL)_complicationTargetingIsActive;
- (BOOL)_needsInvalidation;
- (SmartWaypointComplicationDataSource)initWithComplication:(id)complication family:(int64_t)family forDevice:(id)device;
- (id)_templateWithSampleWaypointLabel:(id)label symbol:(id)symbol color:(id)color;
- (id)_templateWithWaypoint:(id)waypoint location:(id)location heading:(id)heading altitude:(id)altitude deviceCalibrated:(BOOL)calibrated showNoData:(BOOL)data showInactiveState:(BOOL)state showAlwaysOnState:(BOOL)self0 showPrivacyOnState:(BOOL)self1;
- (id)alwaysOnTemplate;
- (id)noDataTemplate;
- (id)privacyTemplate;
- (id)randomizedTemplate;
- (id)redactionTextProvider;
- (id)sampleTemplate;
- (void)_fetchTargetedWaypoint;
- (void)_handleDeviceLockChange;
- (void)becomeActive;
- (void)becomeInactive;
- (void)dealloc;
- (void)getLaunchURLForTimelineEntryDate:(id)date timeTravelDate:(id)travelDate withHandler:(id)handler;
- (void)resume;
@end

@implementation SmartWaypointComplicationDataSource

+ (BOOL)acceptsComplicationFamily:(int64_t)family forDevice:(id)device
{
  deviceCopy = device;
  if (objc_msgSend_supportsUrsa(deviceCopy, v6, v7))
  {
    v8 = objc_alloc(MEMORY[0x277CCAD78]);
    v10 = objc_msgSend_initWithUUIDString_(v8, v9, @"4AF61239-2126-4FD6-8E7A-CDA2D7A0BFE9");
    v12 = objc_msgSend_supportsCapability_(deviceCopy, v11, v10);

    if (v12)
    {
      if ((objc_msgSend_isTinker(deviceCopy, v13, v14) & 1) == 0)
      {
        if (!objc_msgSend_showingIdealizedData(NCManager, v15, v16))
        {
          v18 = (family - 8) < 5;
          goto LABEL_9;
        }

        v17 = NCLogForCategory(1uLL);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *v20 = 0;
          _os_log_impl(&dword_23BD26000, v17, OS_LOG_TYPE_DEFAULT, "running fixture demo mode. disable the waypoint complication in complication picker.", v20, 2u);
        }
      }
    }
  }

  v18 = 0;
LABEL_9:

  return v18;
}

- (SmartWaypointComplicationDataSource)initWithComplication:(id)complication family:(int64_t)family forDevice:(id)device
{
  v17.receiver = self;
  v17.super_class = SmartWaypointComplicationDataSource;
  v5 = [NanoCompassBaseComplicationDataSource initWithComplication:sel_initWithComplication_family_forDevice_mode_ family:complication forDevice:? mode:?];
  v8 = objc_msgSend_idealizedWaypoint(NCWaypoint, v6, v7);
  objc_msgSend_setWaypoint_(v5, v9, v8);

  v10 = objc_alloc(MEMORY[0x277CBEBD0]);
  v12 = objc_msgSend_initWithSuiteName_(v10, v11, @"com.apple.compass");
  defaults = v5->_defaults;
  v5->_defaults = v12;

  objc_msgSend_addObserver_forKeyPath_options_context_(v5->_defaults, v14, v5, @"TargetedWaypointUUID", 5, &off_278B94978);
  objc_msgSend_addObserver_forKeyPath_options_context_(v5->_defaults, v15, v5, @"TargetedViewUsageTimestamp", 5, &off_278B94980);
  return v5;
}

- (void)dealloc
{
  objc_msgSend_removeObserver_forKeyPath_context_(self->_defaults, a2, self, @"TargetedWaypointUUID", &off_278B94978);
  objc_msgSend_removeObserver_forKeyPath_context_(self->_defaults, v3, self, @"TargetedViewUsageTimestamp", &off_278B94980);
  v4.receiver = self;
  v4.super_class = SmartWaypointComplicationDataSource;
  [(NanoCompassBaseComplicationDataSource *)&v4 dealloc];
}

- (void)resume
{
  v14.receiver = self;
  v14.super_class = SmartWaypointComplicationDataSource;
  [(CLKCComplicationDataSource *)&v14 resume];
  objc_msgSend__fetchTargetedWaypoint(self, v3, v4);
  if ((objc_msgSend__complicationTargetingIsActive(self, v5, v6) & 1) == 0)
  {
    v9 = objc_msgSend_manager(self, v7, v8);
    v12 = objc_msgSend_motionToken(self, v10, v11);
    objc_msgSend_pauseMotionUpdatesForToken_(v9, v13, v12);
  }
}

- (BOOL)_needsInvalidation
{
  if (objc_msgSend_paused(self, a2, v2))
  {
    return 0;
  }

  return objc_msgSend__complicationTargetingIsActive(self, v4, v5);
}

- (void)getLaunchURLForTimelineEntryDate:(id)date timeTravelDate:(id)travelDate withHandler:(id)handler
{
  v32 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v9 = objc_msgSend_targetedWaypoint(self, v7, v8);
  if (v9 && (v12 = v9, IsActive = objc_msgSend__complicationTargetingIsActive(self, v10, v11), v12, IsActive))
  {
    v15 = MEMORY[0x277CCACA8];
    v16 = objc_msgSend_targetedWaypoint(self, v10, v14);
    v19 = objc_msgSend_uuid(v16, v17, v18);
    v22 = objc_msgSend_UUIDString(v19, v20, v21);
    v24 = objc_msgSend_stringWithFormat_(v15, v23, @"nanocompass://launch?uuid=%@", v22);

    v26 = objc_msgSend_URLWithString_(MEMORY[0x277CBEBC0], v25, v24);
  }

  else
  {
    v26 = objc_msgSend_URLWithString_(MEMORY[0x277CBEBC0], v10, @"nanocompass://launch?showPicker");
  }

  v27 = NCLogForCategory(7uLL);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v29 = "[SmartWaypointComplicationDataSource getLaunchURLForTimelineEntryDate:timeTravelDate:withHandler:]";
    v30 = 2112;
    v31 = v26;
    _os_log_impl(&dword_23BD26000, v27, OS_LOG_TYPE_DEFAULT, "%s: launch url is %@", buf, 0x16u);
  }

  handlerCopy[2](handlerCopy, v26);
}

- (void)becomeActive
{
  v26 = *MEMORY[0x277D85DE8];
  if (!self->_isActive)
  {
    self->_isActive = 1;
    v3 = NCLogForCategory(7uLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 136315138;
      v25 = "[SmartWaypointComplicationDataSource becomeActive]";
      _os_log_impl(&dword_23BD26000, v3, OS_LOG_TYPE_DEFAULT, "%s face is set as current", &v24, 0xCu);
    }

    v6 = objc_msgSend_device(self, v4, v5);
    isLocked = objc_msgSend_isLocked(v6, v7, v8);

    if ((isLocked & 1) == 0)
    {
      v12 = NCLogForCategory(7uLL);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v24) = 0;
        _os_log_impl(&dword_23BD26000, v12, OS_LOG_TYPE_DEFAULT, "device is unlocked. activate waypoint complication", &v24, 2u);
      }

      v15 = objc_msgSend_manager(self, v13, v14);
      objc_msgSend_setWaypointComplicationIsActive_(v15, v16, 1);

      v19 = objc_msgSend_manager(self, v17, v18);
      objc_msgSend_activateWaypointComplication(v19, v20, v21);
    }

    v22 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v10, v11);
    objc_msgSend_addObserver_selector_name_object_(v22, v23, self, sel__handleDeviceLockChange, *MEMORY[0x277CBB690], 0);
  }
}

- (void)becomeInactive
{
  v19 = *MEMORY[0x277D85DE8];
  if (self->_isActive)
  {
    v3 = NCLogForCategory(7uLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 136315138;
      v18 = "[SmartWaypointComplicationDataSource becomeInactive]";
      _os_log_impl(&dword_23BD26000, v3, OS_LOG_TYPE_DEFAULT, "%s face is not set as current, deactivate waypoint complication", &v17, 0xCu);
    }

    v6 = objc_msgSend_manager(self, v4, v5);
    objc_msgSend_setWaypointComplicationIsActive_(v6, v7, 0);

    v10 = objc_msgSend_manager(self, v8, v9);
    objc_msgSend_deactivateWaypointComplication(v10, v11, v12);

    self->_isActive = 0;
    v15 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v13, v14);
    objc_msgSend_removeObserver_name_object_(v15, v16, self, *MEMORY[0x277CBB690], 0);
  }
}

- (void)_fetchTargetedWaypoint
{
  v11 = objc_msgSend_sharedManager(NCGuidesManager, a2, v2);
  v6 = objc_msgSend_fetchTargetedWaypoint(v11, v4, v5);
  v9 = objc_msgSend_copy(v6, v7, v8);
  objc_msgSend_setTargetedWaypoint_(self, v10, v9);
}

- (void)_handleDeviceLockChange
{
  v59 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_device(self, a2, v2);
  isLocked = objc_msgSend_isLocked(v4, v5, v6);

  v8 = NCLogForCategory(7uLL);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (isLocked)
  {
    if (v9)
    {
      *v57 = 136315138;
      *&v57[4] = "[SmartWaypointComplicationDataSource _handleDeviceLockChange]";
      _os_log_impl(&dword_23BD26000, v8, OS_LOG_TYPE_DEFAULT, "%s device is locked, deactivate waypoint complication", v57, 0xCu);
    }

    v12 = objc_msgSend_manager(self, v10, v11);
    objc_msgSend_setWaypointComplicationIsActive_(v12, v13, 0);

    v16 = objc_msgSend_manager(self, v14, v15);
    objc_msgSend_deactivateWaypointComplication(v16, v17, v18);
LABEL_5:

    goto LABEL_18;
  }

  if (v9)
  {
    v21 = !self->_isActive;
    if (self->_isActive)
    {
      v22 = &stru_284E80A60;
    }

    else
    {
      v22 = @"not ";
    }

    *v57 = 136315650;
    *&v57[4] = "[SmartWaypointComplicationDataSource _handleDeviceLockChange]";
    v23 = @"don't ";
    *&v57[14] = v22;
    *&v57[12] = 2112;
    if (!v21)
    {
      v23 = &stru_284E80A60;
    }

    *&v57[22] = 2112;
    v58 = v23;
    _os_log_impl(&dword_23BD26000, v8, OS_LOG_TYPE_DEFAULT, "%s device is unlocked, face is %@active. %@activate waypoint complication", v57, 0x20u);
  }

  if (self->_isActive)
  {
    v26 = objc_msgSend_manager(self, v24, v25);
    objc_msgSend_setWaypointComplicationIsActive_(v26, v27, 1);

    v30 = objc_msgSend_manager(self, v28, v29);
    objc_msgSend_activateWaypointComplication(v30, v31, v32);
  }

  objc_msgSend__fetchTargetedWaypoint(self, v24, v25, *v57, *&v57[8]);
  if ((objc_msgSend_isSmartComplication(self, v33, v34) & 1) == 0 && (objc_msgSend_isParkedCarComplication(self, v19, v20) & 1) == 0)
  {
    v35 = objc_msgSend_waypoint(self, v19, v20);
    v38 = objc_msgSend_type(v35, v36, v37);

    if (v38 != 2)
    {
      v39 = NCLogForCategory(7uLL);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        v42 = objc_msgSend_waypoint(self, v40, v41);
        v45 = objc_msgSend_label(v42, v43, v44);
        *v57 = 136315394;
        *&v57[4] = "[SmartWaypointComplicationDataSource _handleDeviceLockChange]";
        *&v57[12] = 2112;
        *&v57[14] = v45;
        _os_log_impl(&dword_23BD26000, v39, OS_LOG_TYPE_DEFAULT, "%s device unlocked, re-reading in waypoint %@", v57, 0x16u);
      }

      v16 = objc_msgSend_sharedComplicationManager(NCWaypointManager, v46, v47);
      v50 = objc_msgSend_waypoint(self, v48, v49);
      v53 = objc_msgSend_uuid(v50, v51, v52);
      v55 = objc_msgSend_waypointWithUUID_(v16, v54, v53);
      objc_msgSend_setWaypoint_(self, v56, v55);

      goto LABEL_5;
    }
  }

LABEL_18:
  objc_msgSend__invalidate(self, v19, v20);
}

- (BOOL)_complicationTargetingIsActive
{
  v6 = objc_msgSend_targetedViewUsageTimestamp(self, a2, v2);
  if (v6)
  {
    v7 = objc_msgSend_targetedViewUsageTimestamp(self, v4, v5);
    v10 = objc_msgSend_now(MEMORY[0x277CBEAA8], v8, v9);
    IsSameDay = NanoCompassIsSameDay(v7, v10);
  }

  else
  {
    IsSameDay = 0;
  }

  return IsSameDay;
}

- (id)sampleTemplate
{
  v4 = objc_msgSend_idealizedSmartWaypoint(NCWaypoint, a2, v2);
  v7 = objc_msgSend_label(v4, v5, v6);
  v10 = objc_msgSend_symbol(v4, v8, v9);
  v13 = objc_msgSend_labelColor(v4, v11, v12);
  v15 = objc_msgSend__templateWithSampleWaypointLabel_symbol_color_(self, v14, v7, v10, v13);

  return v15;
}

- (id)noDataTemplate
{
  BYTE2(v3) = 0;
  LOWORD(v3) = 0;
  return objc_msgSend__templateWithWaypoint_location_heading_altitude_deviceCalibrated_showNoData_showInactiveState_showAlwaysOnState_showPrivacyOnState_(self, a2, 0, 0, 0, 0, 0, 1, v3);
}

- (id)randomizedTemplate
{
  v4 = objc_msgSend_randomizedWaypoint(NCWaypoint, a2, v2);
  v7 = objc_msgSend_randomizedLocation(NCLocation, v5, v6);
  v10 = objc_msgSend_randomizedHeading(NCHeading, v8, v9);
  v13 = objc_msgSend_randomizedAltitude(NCAltitude, v11, v12);
  BYTE2(v17) = 0;
  LOWORD(v17) = 0;
  v15 = objc_msgSend__templateWithWaypoint_location_heading_altitude_deviceCalibrated_showNoData_showInactiveState_showAlwaysOnState_showPrivacyOnState_(self, v14, v4, v7, v10, v13, 1, 0, v17);

  return v15;
}

- (id)alwaysOnTemplate
{
  v6 = objc_msgSend_targetedWaypoint(self, a2, v2);
  if (v6)
  {
    IsActive = objc_msgSend__complicationTargetingIsActive(self, v4, v5);

    if (IsActive)
    {
      v8 = objc_msgSend_targetedWaypoint(self, v4, v5);
      v6 = objc_msgSend_copy(v8, v9, v10);

      v11 = 0;
      goto LABEL_6;
    }

    v6 = 0;
  }

  v11 = 1;
LABEL_6:
  v12 = objc_msgSend_location(self, v4, v5);
  v15 = objc_msgSend_copy(v12, v13, v14);
  v18 = objc_msgSend_heading(self, v16, v17);
  v21 = objc_msgSend_copy(v18, v19, v20);
  v24 = objc_msgSend_altitude(self, v22, v23);
  v27 = objc_msgSend_copy(v24, v25, v26);
  v30 = objc_msgSend_calibrated(self, v28, v29);
  *(&v34 + 1) = 1;
  LOBYTE(v34) = v11;
  v32 = objc_msgSend__templateWithWaypoint_location_heading_altitude_deviceCalibrated_showNoData_showInactiveState_showAlwaysOnState_showPrivacyOnState_(self, v31, v6, v15, v21, v27, v30, 0, v34);

  return v32;
}

- (id)privacyTemplate
{
  BYTE2(v3) = 1;
  LOWORD(v3) = 0;
  return objc_msgSend__templateWithWaypoint_location_heading_altitude_deviceCalibrated_showNoData_showInactiveState_showAlwaysOnState_showPrivacyOnState_(self, a2, 0, 0, 0, 0, 0, 1, v3);
}

- (id)_templateWithSampleWaypointLabel:(id)label symbol:(id)symbol color:(id)color
{
  v55[4] = *MEMORY[0x277D85DE8];
  labelCopy = label;
  symbolCopy = symbol;
  colorCopy = color;
  v54[0] = @"showSampleData";
  v54[1] = @"label";
  v55[0] = &unk_284E8AF98;
  v55[1] = labelCopy;
  v54[2] = @"symbol";
  v54[3] = @"color";
  v55[2] = symbolCopy;
  v55[3] = colorCopy;
  v12 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v11, v55, v54, 4);
  v15 = objc_msgSend_family(self, v13, v14);
  if (v15 > 9)
  {
    switch(v15)
    {
      case 10:
        v32 = MEMORY[0x277CBBB10];
        v33 = objc_opt_class();
        v19 = objc_msgSend_fullColorImageProviderWithImageViewClass_(v32, v34, v33);
        objc_msgSend_setMetadata_(v19, v35, v12);
        objc_msgSend_templateWithImageProvider_(MEMORY[0x277CBB850], v36, v19);
        goto LABEL_10;
      case 11:
        v38 = MEMORY[0x277CBBB10];
        v39 = objc_opt_class();
        v19 = objc_msgSend_fullColorImageProviderWithImageViewClass_(v38, v40, v39);
        objc_msgSend_setMetadata_(v19, v41, v12);
        v42 = objc_alloc(MEMORY[0x277CBB998]);
        v37 = objc_msgSend_initWithImageProvider_(v42, v43, v19);
        goto LABEL_12;
      case 12:
        v16 = MEMORY[0x277CBBB10];
        v17 = objc_opt_class();
        v19 = objc_msgSend_fullColorImageProviderWithImageViewClass_(v16, v18, v17);
        objc_msgSend_setMetadata_(v19, v20, v12);
        objc_msgSend_templateWithImageProvider_(MEMORY[0x277CBB938], v21, v19);
        v37 = LABEL_10:;
LABEL_12:
        v31 = v37;
        goto LABEL_18;
    }

    goto LABEL_15;
  }

  if (v15 == 8)
  {
    v19 = NanoCompassSampleWaypointCornerComplicationTextProvider(labelCopy, colorCopy);
    v44 = MEMORY[0x277CBBB10];
    v45 = objc_opt_class();
    v25 = objc_msgSend_fullColorImageProviderWithImageViewClass_(v44, v46, v45);
    objc_msgSend_setMetadata_(v25, v47, v12);
    v31 = objc_msgSend_templateWithTextProvider_imageProvider_(MEMORY[0x277CBB908], v48, v19, v25);
    goto LABEL_14;
  }

  if (v15 == 9)
  {
    v19 = NanoCompassSampleWaypointCornerComplicationTextProvider(labelCopy, colorCopy);
    v22 = MEMORY[0x277CBBB10];
    v23 = objc_opt_class();
    v25 = objc_msgSend_fullColorImageProviderWithImageViewClass_(v22, v24, v23);
    objc_msgSend_setMetadata_(v25, v26, v12);
    v27 = MEMORY[0x277CBB810];
    v29 = objc_msgSend_templateWithImageProvider_(MEMORY[0x277CBB850], v28, v25);
    v31 = objc_msgSend_templateWithCircularTemplate_textProvider_(v27, v30, v29, v19);

LABEL_14:
    goto LABEL_18;
  }

LABEL_15:
  v19 = NCLogForCategory(1uLL);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    sub_23BD673D8(self, v19, v49);
  }

  v31 = 0;
LABEL_18:

  v51 = NanoCompassAppTintColor(v50);
  objc_msgSend_setTintColor_(v31, v52, v51);

  return v31;
}

- (id)_templateWithWaypoint:(id)waypoint location:(id)location heading:(id)heading altitude:(id)altitude deviceCalibrated:(BOOL)calibrated showNoData:(BOOL)data showInactiveState:(BOOL)state showAlwaysOnState:(BOOL)self0 showPrivacyOnState:(BOOL)self1
{
  dataCopy = data;
  calibratedCopy = calibrated;
  v99[9] = *MEMORY[0x277D85DE8];
  waypointCopy = waypoint;
  locationCopy = location;
  headingCopy = heading;
  altitudeCopy = altitude;
  v22 = !calibratedCopy | dataCopy;
  if (v22 != 1 || onState)
  {
    v98[0] = @"heading";
    if (headingCopy)
    {
      v93 = 0;
      v23 = headingCopy;
      goto LABEL_7;
    }
  }

  else
  {

    locationCopy = 0;
    v98[0] = @"heading";
  }

  v23 = objc_msgSend_null(MEMORY[0x277CBEB68], v19, v20);
  headingCopy = 0;
  v93 = 1;
LABEL_7:
  v92 = v23;
  v99[0] = v23;
  v98[1] = @"location";
  v24 = locationCopy;
  if (!locationCopy)
  {
    v24 = objc_msgSend_null(MEMORY[0x277CBEB68], v19, v20);
  }

  v91 = v24;
  v99[1] = v24;
  v98[2] = @"waypoint";
  v25 = waypointCopy;
  if (!waypointCopy)
  {
    v25 = objc_msgSend_null(MEMORY[0x277CBEB68], v19, v20);
  }

  v95 = headingCopy;
  v96 = locationCopy;
  v94 = waypointCopy;
  v99[2] = v25;
  v98[3] = @"altitude";
  v26 = altitudeCopy;
  v27 = altitudeCopy;
  if (!altitudeCopy)
  {
    v26 = objc_msgSend_null(MEMORY[0x277CBEB68], v19, v20);
  }

  v99[3] = v26;
  v98[4] = @"nodata";
  v28 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v19, v22);
  v99[4] = v28;
  v98[5] = @"inactive";
  v30 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v29, state);
  v99[5] = v30;
  v98[6] = @"alwayson";
  v32 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v31, onState);
  v99[6] = v32;
  v98[7] = @"smart";
  v33 = MEMORY[0x277CCABB0];
  isSmartComplication = objc_msgSend_isSmartComplication(self, v34, v35);
  v38 = objc_msgSend_numberWithBool_(v33, v37, isSmartComplication);
  v99[7] = v38;
  v98[8] = @"showPrivacyRedaction";
  v40 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v39, privacyOnState);
  v99[8] = v40;
  v42 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v41, v99, v98, 9);

  v45 = v27;
  if (!v27)
  {
  }

  if (!v94)
  {
  }

  if (!v96)
  {
  }

  if (v93)
  {
  }

  v46 = objc_msgSend_family(self, v43, v44);
  if (v46 > 9)
  {
    switch(v46)
    {
      case 10:
        v55 = MEMORY[0x277CBBB10];
        v56 = objc_opt_class();
        v52 = objc_msgSend_fullColorImageProviderWithImageViewClass_(v55, v57, v56);
        objc_msgSend_setMetadata_(v52, v58, v42);
        objc_msgSend_templateWithImageProvider_(MEMORY[0x277CBB850], v59, v52);
        goto LABEL_31;
      case 11:
        v61 = MEMORY[0x277CBBB10];
        v62 = objc_opt_class();
        v52 = objc_msgSend_fullColorImageProviderWithImageViewClass_(v61, v63, v62);
        objc_msgSend_setMetadata_(v52, v64, v42);
        v65 = objc_alloc(MEMORY[0x277CBB998]);
        v60 = objc_msgSend_initWithImageProvider_(v65, v66, v52);
        goto LABEL_33;
      case 12:
        v49 = MEMORY[0x277CBBB10];
        v50 = objc_opt_class();
        v52 = objc_msgSend_fullColorImageProviderWithImageViewClass_(v49, v51, v50);
        objc_msgSend_setMetadata_(v52, v53, v42);
        objc_msgSend_templateWithImageProvider_(MEMORY[0x277CBB938], v54, v52);
        v60 = LABEL_31:;
LABEL_33:
        v67 = v60;
        goto LABEL_44;
    }

    goto LABEL_36;
  }

  if (v46 == 8)
  {
    if (privacyOnState)
    {
      objc_msgSend_redactionTextProvider(self, v47, v48);
    }

    else
    {
      v69 = objc_msgSend_isSmartComplication(self, v47, v48);
      v72 = objc_msgSend_isSmartComplication(self, v70, v71);
      NanoCompassWaypointCornerAndBezelComplicationTextProvider(v96, v95, v94, state, onState, v69 ^ 1, v72);
    }
    v52 = ;
    v73 = MEMORY[0x277CBBB10];
    v74 = objc_opt_class();
    v76 = objc_msgSend_fullColorImageProviderWithImageViewClass_(v73, v75, v74);
    objc_msgSend_setMetadata_(v76, v77, v42);
    v67 = objc_msgSend_templateWithTextProvider_imageProvider_(MEMORY[0x277CBB908], v78, v52, v76);
    goto LABEL_43;
  }

  if (v46 == 9)
  {
    if ((v22 | privacyOnState) == 1)
    {
      objc_msgSend_redactionTextProvider(self, v47, v48);
    }

    else
    {
      NanoCompassWaypointCornerAndBezelComplicationTextProvider(v96, v95, v94, state, onState, 0, 0);
    }
    v52 = ;
    v79 = MEMORY[0x277CBBB10];
    v80 = objc_opt_class();
    v76 = objc_msgSend_fullColorImageProviderWithImageViewClass_(v79, v81, v80);
    objc_msgSend_setMetadata_(v76, v82, v42);
    v83 = MEMORY[0x277CBB810];
    v85 = objc_msgSend_templateWithImageProvider_(MEMORY[0x277CBB850], v84, v76);
    v67 = objc_msgSend_templateWithCircularTemplate_textProvider_(v83, v86, v85, v52);

LABEL_43:
    goto LABEL_44;
  }

LABEL_36:
  v52 = NCLogForCategory(1uLL);
  if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
  {
    sub_23BD67454(self, v52, v68);
  }

  v67 = 0;
LABEL_44:

  v88 = NanoCompassAppTintColor(v87);
  objc_msgSend_setTintColor_(v67, v89, v88);

  return v67;
}

- (id)redactionTextProvider
{
  if (qword_27E1C5290 != -1)
  {
    sub_23BD674D0();
  }

  v3 = qword_27E1C5288;

  return v3;
}

@end