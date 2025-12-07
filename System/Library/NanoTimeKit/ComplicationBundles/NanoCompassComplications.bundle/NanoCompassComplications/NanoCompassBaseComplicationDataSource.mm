@interface NanoCompassBaseComplicationDataSource
+ (BOOL)acceptsComplicationFamily:(int64_t)family forDevice:(id)device;
+ (NSString)appNameLocalizationKey;
+ (NSString)bundleIdentifierSuffix;
+ (NSString)complicationNameLocalizationKey;
+ (id)bundleIdentifier;
+ (id)localizedAppName;
+ (id)localizedComplicationName;
- (CLKComplicationTemplate)alwaysOnTemplate;
- (CLKComplicationTimelineEntry)timelineEntry;
- (NanoCompassBaseComplicationDataSource)initWithComplication:(id)complication family:(int64_t)family forDevice:(id)device mode:(int64_t)mode;
- (id)currentSwitcherTemplate;
- (id)newTemplate;
- (id)noDataTemplate;
- (id)randomizedTemplate;
- (void)_invalidate;
- (void)_startObservingNotifications;
- (void)_stopObservingNotifications;
- (void)dealloc;
- (void)getCurrentTimelineEntryWithHandler:(id)handler;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation NanoCompassBaseComplicationDataSource

+ (id)localizedAppName
{
  v3 = objc_msgSend_appNameLocalizationKey(self, a2, v2);
  v4 = NanoCompassLocalizedString(v3);

  return v4;
}

+ (id)localizedComplicationName
{
  v3 = objc_msgSend_complicationNameLocalizationKey(self, a2, v2);
  v4 = NanoCompassLocalizedString(v3);

  return v4;
}

+ (id)bundleIdentifier
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23BD2DE68;
  block[3] = &unk_278B940E8;
  block[4] = self;
  if (qword_27E1C4B78 != -1)
  {
    dispatch_once(&qword_27E1C4B78, block);
  }

  v4 = qword_27E1C4B70;
  v5 = objc_msgSend_bundleIdentifierSuffix(self, a2, v2);
  v7 = objc_msgSend_stringByAppendingString_(v4, v6, v5);

  return v7;
}

- (NanoCompassBaseComplicationDataSource)initWithComplication:(id)complication family:(int64_t)family forDevice:(id)device mode:(int64_t)mode
{
  modeCopy = mode;
  v50 = *MEMORY[0x277D85DE8];
  complicationCopy = complication;
  deviceCopy = device;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    *buf = 138412546;
    v47 = v13;
    v48 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_23BD26000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[%@<%p> init...]", buf, 0x16u);
  }

  v45.receiver = self;
  v45.super_class = NanoCompassBaseComplicationDataSource;
  v16 = [(CLKCComplicationDataSource *)&v45 initWithComplication:complicationCopy family:family forDevice:deviceCopy];
  if (v16)
  {
    v17 = objc_msgSend_sharedComplicationManager(NCManager, v14, v15);
    objc_msgSend_setManager_(v16, v18, v17);

    v16->_usesMotion = modeCopy & 1;
    v16->_usesBearing = (modeCopy & 2) != 0;
    v16->_usesLocation = (modeCopy & 4) != 0;
    if (supportAbsoluteAltimeterFeatures(v19, v20))
    {
      v16->_useAltimeter = (modeCopy & 8) != 0;
    }

    v23 = objc_msgSend_idealizedHeading(NCHeading, v21, v22);
    objc_msgSend_setHeading_(v16, v24, v23);

    v27 = objc_msgSend_idealizedBearing(NCBearing, v25, v26);
    objc_msgSend_setBearing_(v16, v28, v27);

    v31 = objc_msgSend_idealizedIncline(NCIncline, v29, v30);
    objc_msgSend_setIncline_(v16, v32, v31);

    objc_msgSend_setCalibrated_(v16, v33, 1);
    v36 = objc_msgSend_idealizedLocation(NCLocation, v34, v35);
    objc_msgSend_setLocation_(v16, v37, v36);

    v40 = objc_msgSend_idealizedAltitude(NCAltitude, v38, v39);
    objc_msgSend_setAltitude_(v16, v41, v40);

    objc_msgSend__startObservingNotifications(v16, v42, v43);
  }

  return v16;
}

- (void)dealloc
{
  v19 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 138412546;
    v16 = v5;
    v17 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_23BD26000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[%@<%p> dealloc]", buf, 0x16u);
  }

  motionToken = self->_motionToken;
  if (motionToken)
  {
    objc_msgSend_stopMotionUpdatesForToken_(self->_manager, v3, motionToken);
    objc_msgSend_setMotionToken_(self, v7, 0);
  }

  locationToken = self->_locationToken;
  if (locationToken)
  {
    objc_msgSend_stopLocationUpdatesForToken_(self->_manager, v3, locationToken);
    objc_msgSend_setLocationToken_(self, v9, 0);
  }

  if (objc_msgSend_isAbsoluteAltimeterAvailable(self->_manager, v3, locationToken) && self->_altimeterToken)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23BD26000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "stopping absolute altimeter update.", buf, 2u);
    }

    objc_msgSend_stopAltimeterUpdateForToken_(self->_manager, v12, self->_altimeterToken);
    objc_msgSend_setAltimeterToken_(self, v13, 0);
  }

  objc_msgSend__stopObservingNotifications(self, v10, v11);
  v14.receiver = self;
  v14.super_class = NanoCompassBaseComplicationDataSource;
  [(NanoCompassBaseComplicationDataSource *)&v14 dealloc];
}

- (CLKComplicationTimelineEntry)timelineEntry
{
  timelineEntry = self->_timelineEntry;
  if (!timelineEntry)
  {
    objc_msgSend__invalidate(self, a2, v2);
    timelineEntry = self->_timelineEntry;
  }

  return timelineEntry;
}

- (id)currentSwitcherTemplate
{
  v16 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v12 = 138412546;
    v13 = v6;
    v14 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_23BD26000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[%@<%p> currentSwitcherTemplate]", &v12, 0x16u);
  }

  v7 = objc_msgSend_timelineEntry(self, v3, v4);
  v10 = objc_msgSend_complicationTemplate(v7, v8, v9);

  return v10;
}

- (CLKComplicationTemplate)alwaysOnTemplate
{
  alwaysOnTemplate = self->_alwaysOnTemplate;
  if (!alwaysOnTemplate)
  {
    v5 = objc_msgSend_noDataTemplate(self, a2, v2);
    objc_msgSend_setAlwaysOnTemplate_(self, v6, v5);

    alwaysOnTemplate = self->_alwaysOnTemplate;
  }

  return alwaysOnTemplate;
}

- (void)getCurrentTimelineEntryWithHandler:(id)handler
{
  handlerCopy = handler;
  v8 = objc_msgSend_timelineEntry(self, v6, v7);
  (*(handler + 2))(handlerCopy, v8);
}

- (void)_invalidate
{
  v4 = MEMORY[0x277CBBAC8];
  v5 = objc_msgSend_date(MEMORY[0x277CBEAA8], a2, v2);
  v8 = objc_msgSend_newTemplate(self, v6, v7);
  v10 = objc_msgSend_entryWithDate_complicationTemplate_(v4, v9, v5, v8);
  objc_msgSend_setTimelineEntry_(self, v11, v10);

  v16 = objc_msgSend_delegate(self, v12, v13);
  objc_msgSend_invalidateEntries(v16, v14, v15);
}

- (void)_startObservingNotifications
{
  v5 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], a2, v2);
  objc_msgSend_addObserver_selector_name_object_(v5, v4, self, sel__invalidate, *MEMORY[0x277CBE620], 0);
}

- (void)_stopObservingNotifications
{
  v5 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], a2, v2);
  objc_msgSend_removeObserver_name_object_(v5, v4, self, *MEMORY[0x277CBE620], 0);
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  isEqualToString = change;
  v10 = isEqualToString;
  if (context == &off_278B94108)
  {
    v20 = isEqualToString;
    isEqualToString = objc_msgSend_isEqualToString_(path, isEqualToString, @"bearing");
    v10 = v20;
    if (isEqualToString)
    {
      v11 = objc_msgSend_objectForKeyedSubscript_(v20, v20, *MEMORY[0x277CCA2F0]);
      v14 = objc_msgSend_null(MEMORY[0x277CBEB68], v12, v13);
      isEqual = objc_msgSend_isEqual_(v11, v15, v14);

      if (isEqual)
      {
        objc_msgSend_setBearing_(self, v17, 0);
      }

      else
      {
        objc_msgSend_setBearing_(self, v17, v11);
      }

      if (self->_paused)
      {
        objc_msgSend__invalidate(self, v18, v19);
      }

      v10 = v20;
    }
  }

  MEMORY[0x2821F96F8](isEqualToString, v10);
}

+ (NSString)appNameLocalizationKey
{
  v2 = sub_23BD29238();
  sub_23BD2921C(v2);
  return &stru_284E80A60;
}

+ (NSString)complicationNameLocalizationKey
{
  v2 = sub_23BD29238();
  sub_23BD2921C(v2);
  return &stru_284E80A60;
}

+ (NSString)bundleIdentifierSuffix
{
  v2 = sub_23BD29238();
  sub_23BD2921C(v2);
  return &stru_284E80A60;
}

- (id)newTemplate
{
  v2 = sub_23BD29238();
  sub_23BD2921C(v2);

  return objc_opt_new();
}

- (id)noDataTemplate
{
  v2 = sub_23BD29238();
  sub_23BD2921C(v2);
  v3 = objc_opt_new();

  return v3;
}

- (id)randomizedTemplate
{
  v2 = sub_23BD29238();
  sub_23BD2921C(v2);
  v3 = objc_opt_new();

  return v3;
}

+ (BOOL)acceptsComplicationFamily:(int64_t)family forDevice:(id)device
{
  v4 = sub_23BD29238();
  sub_23BD2921C(v4);
  return 0;
}

@end