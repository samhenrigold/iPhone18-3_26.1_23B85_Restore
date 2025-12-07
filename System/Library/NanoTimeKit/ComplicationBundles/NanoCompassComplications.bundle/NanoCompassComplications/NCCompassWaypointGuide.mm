@interface NCCompassWaypointGuide
- (NCCompassWaypointGuide)initWithName:(id)name;
- (id)systemWaypoints;
@end

@implementation NCCompassWaypointGuide

- (NCCompassWaypointGuide)initWithName:(id)name
{
  v34 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v7 = objc_msgSend_sharedAppManager(NCWaypointManager, v5, v6);
  manager = self->_manager;
  self->_manager = v7;

  v9 = objc_alloc(MEMORY[0x277CBEBD0]);
  v11 = objc_msgSend_initWithSuiteName_(v9, v10, @"com.apple.compass");
  v15 = objc_msgSend_objectForKey_(v11, v12, @"CompassGuideUUID");
  if (v15)
  {
    v16 = objc_alloc(MEMORY[0x277CCAD78]);
    v18 = objc_msgSend_initWithUUIDString_(v16, v17, v15);
  }

  else
  {
    v18 = objc_msgSend_UUID(MEMORY[0x277CCAD78], v13, v14);
    v21 = objc_msgSend_UUIDString(v18, v19, v20);
    objc_msgSend_setObject_forKey_(v11, v22, v21, @"CompassGuideUUID");

    v23 = NCLogForCategory(9uLL);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v26 = objc_msgSend_UUIDString(v18, v24, v25);
      *buf = 136315394;
      v31 = "[NCCompassWaypointGuide initWithName:]";
      v32 = 2112;
      v33 = v26;
      _os_log_impl(&dword_23BD26000, v23, OS_LOG_TYPE_INFO, "%s: created Compass Waypoints guide uuid %@ and saved to defaults.", buf, 0x16u);
    }
  }

  v29.receiver = self;
  v29.super_class = NCCompassWaypointGuide;
  v27 = [(NCWaypointGuide *)&v29 initWithIdentifier:v18 name:nameCopy type:0];

  return v27;
}

- (id)systemWaypoints
{
  v3 = objc_opt_new();
  v6 = objc_msgSend_parkedCarWaypoint(self->_manager, v4, v5);
  v9 = objc_msgSend_location(v6, v7, v8);

  if (v9)
  {
    objc_msgSend_addObject_(v3, v10, v6);
  }

  v12 = objc_msgSend_copy(v3, v10, v11);

  return v12;
}

@end