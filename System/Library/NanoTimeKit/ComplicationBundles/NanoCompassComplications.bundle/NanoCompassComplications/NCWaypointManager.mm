@interface NCWaypointManager
+ (id)sharedAppManager;
+ (id)sharedCompassToolManager;
+ (id)sharedComplicationManager;
- (BOOL)_allowWriteAccess;
- (BOOL)_commitToCoreData;
- (BOOL)_useCloudKitContainer;
- (BOOL)addWaypoints:(id)waypoints;
- (BOOL)saveElevationForDatabaseWaypoints:(id)waypoints;
- (BOOL)updateWaypoints:(id)waypoints;
- (NCWaypointManager)initWithSupportsParkedCarWaypoint:(BOOL)waypoint;
- (NSArray)cellularWaypoints;
- (NSManagedObjectContext)viewContext;
- (NSPersistentContainer)persistentContainer;
- (id)_appBundle;
- (id)_convertToNCWaypointList:(id)list;
- (id)_coreDataWaypointWithUUID:(id)d;
- (id)_excludingDisabledWaypoints:(id)waypoints;
- (id)_fetchCompassWaypointsFromCoreDataIncludingDisabled:(BOOL)disabled;
- (id)_fetchCompassWaypointsIncludingDisabled:(BOOL)disabled;
- (id)_fetchItemsWithRequest:(id)request;
- (id)addWaypointAtLocation:(id)location withAltitude:(id)altitude withLabel:(id)label withColor:(id)color withSymbol:(id)symbol withType:(int64_t)type isEnabled:(BOOL)enabled;
- (id)fetchCompassWaypointsWithAltitude:(BOOL)altitude;
- (id)fetchDatabaseWaypoints;
- (id)fetchDatabaseWaypointsWithElevation;
- (id)fetchTargetedWaypoint;
- (id)fetchWaypointsWithType:(int64_t)type;
- (id)waypointWithUUID:(id)d;
- (int64_t)_fetchCountItemsWithRequest:(id)request;
- (int64_t)numWaypointsInElevationTableOfType:(int64_t)type;
- (int64_t)numWaypointsMissingElevationOfType:(int64_t)type;
- (unint64_t)waypointCountContainingKeyword:(id)keyword;
- (void)_deleteWaypointInViewContext:(id)context;
- (void)_deleteWaypointInViewContextByUUID:(id)d;
- (void)_fetchOrCreateParkedCarWaypoint;
- (void)_logSystemWaypointsAnalytics;
- (void)_printWaypointList:(id)list;
- (void)_publishCellularWaypointsUpdate;
- (void)_saveWaypoint:(id)waypoint;
- (void)_submitSystemWaypointsAnalytics:(unint64_t)analytics;
- (void)_updateWaypointInViewContext:(id)context;
- (void)deleteAllWaypoints;
- (void)deleteWaypoint:(id)waypoint;
- (void)deleteWaypointsByUUIDs:(id)ds;
- (void)resetCompassWaypointsInDemoMode;
- (void)setClosestDataWaypoint:(id)waypoint;
- (void)setClosestSOSWaypoint:(id)waypoint;
- (void)setRecentDataWaypoint:(id)waypoint;
- (void)setRecentSOSWaypoint:(id)waypoint;
- (void)updateParkedCarWaypointWithLocation:(id)location withAltitude:(id)altitude;
- (void)updateWaypoint:(id)waypoint;
- (void)updateWaypointWithUUID:(id)d withLocation:(id)location withAltitude:(id)altitude;
@end

@implementation NCWaypointManager

+ (id)sharedAppManager
{
  if (qword_27E1C5148 != -1)
  {
    sub_23BD66490();
  }

  v3 = qword_27E1C5140;

  return v3;
}

+ (id)sharedComplicationManager
{
  if (qword_27E1C5158 != -1)
  {
    sub_23BD664A4();
  }

  v3 = qword_27E1C5150;

  return v3;
}

+ (id)sharedCompassToolManager
{
  if (qword_27E1C5168 != -1)
  {
    sub_23BD664B8();
  }

  v3 = qword_27E1C5160;

  return v3;
}

- (NCWaypointManager)initWithSupportsParkedCarWaypoint:(BOOL)waypoint
{
  waypointCopy = waypoint;
  v17.receiver = self;
  v17.super_class = NCWaypointManager;
  v4 = [(NCWaypointManager *)&v17 init];
  if (v4)
  {
    v5 = MEMORY[0x277CCA8D8];
    v6 = objc_opt_class();
    v8 = objc_msgSend_bundleForClass_(v5, v7, v6);
    bundle = v4->_bundle;
    v4->_bundle = v8;

    v12 = objc_msgSend_bundleIdentifier(v4->_bundle, v10, v11);
    bundleIdentifier = v4->_bundleIdentifier;
    v4->_bundleIdentifier = v12;

    v4->_lastCellularWaypointCount = -1;
    if (waypointCopy)
    {
      objc_msgSend__fetchOrCreateParkedCarWaypoint(v4, v14, v15);
    }
  }

  return v4;
}

- (void)_fetchOrCreateParkedCarWaypoint
{
  v31 = *MEMORY[0x277D85DE8];
  if (!self->_parkedCarWaypoint)
  {
    v3 = objc_alloc(MEMORY[0x277CBEBD0]);
    v5 = objc_msgSend_initWithSuiteName_(v3, v4, @"com.apple.compass");
    objc_msgSend_synchronize(v5, v6, v7);
    v11 = objc_msgSend_objectForKey_(v5, v8, @"ParkedCarWaypointUUID");
    if (v11)
    {
      v12 = objc_alloc(MEMORY[0x277CCAD78]);
      v14 = objc_msgSend_initWithUUIDString_(v12, v13, v11);
      objc_msgSend_parkedCarWaypointWithUUID_(NCWaypoint, v15, v14);
    }

    else
    {
      v14 = objc_msgSend_UUID(MEMORY[0x277CCAD78], v9, v10);
      v18 = objc_msgSend_UUIDString(v14, v16, v17);
      objc_msgSend_setObject_forKey_(v5, v19, v18, @"ParkedCarWaypointUUID");

      v20 = NCLogForCategory(7uLL);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v23 = objc_msgSend_UUIDString(v14, v21, v22);
        v27 = 136315394;
        v28 = "[NCWaypointManager _fetchOrCreateParkedCarWaypoint]";
        v29 = 2112;
        v30 = v23;
        _os_log_impl(&dword_23BD26000, v20, OS_LOG_TYPE_DEFAULT, "%s: created ParkedCarWaypoint with uuid %@ and saved to defaults.", &v27, 0x16u);
      }

      objc_msgSend_parkedCarWaypointWithUUID_(NCWaypoint, v24, v14);
    }
    v25 = ;
    parkedCarWaypoint = self->_parkedCarWaypoint;
    self->_parkedCarWaypoint = v25;
  }
}

- (void)updateParkedCarWaypointWithLocation:(id)location withAltitude:(id)altitude
{
  v39 = *MEMORY[0x277D85DE8];
  altitudeCopy = altitude;
  locationCopy = location;
  v10 = objc_msgSend_parkedCarWaypoint(self, v8, v9);

  if (!v10)
  {
    objc_msgSend__fetchOrCreateParkedCarWaypoint(self, v11, v12);
  }

  v13 = NCLogForCategory(7uLL);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v37 = 136315138;
    v38 = "[NCWaypointManager updateParkedCarWaypointWithLocation:withAltitude:]";
    _os_log_impl(&dword_23BD26000, v13, OS_LOG_TYPE_DEFAULT, "%s: Updating parked car waypoint. Posting ParkedCarWaypointChangedNotification.", &v37, 0xCu);
  }

  objc_msgSend_setLocation_(self->_parkedCarWaypoint, v14, locationCopy);
  objc_msgSend__postParkedCarWaypointChangedNotification(self, v15, v16);
  if (!locationCopy)
  {
    v20 = objc_msgSend_sharedManager(NCTargetedWaypointManager, v17, v18);
    v23 = objc_msgSend_targetedWaypointUUID(v20, v21, v22);

    if (v23)
    {
      v26 = objc_msgSend_uuid(self->_parkedCarWaypoint, v24, v25);
      isEqual = objc_msgSend_isEqual_(v23, v27, v26);

      if (isEqual)
      {
        v29 = NCLogForCategory(7uLL);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v37 = 136315138;
          v38 = "[NCWaypointManager updateParkedCarWaypointWithLocation:withAltitude:]";
          _os_log_impl(&dword_23BD26000, v29, OS_LOG_TYPE_DEFAULT, "%s: Clearing Targeted Waypoint because it was set to Parked Car and Parked Car location is now nil.", &v37, 0xCu);
        }

        v32 = objc_msgSend_sharedManager(NCTargetedWaypointManager, v30, v31);
        objc_msgSend_setTargetedWaypointUUID_(v32, v33, 0);
      }
    }

    if (altitudeCopy)
    {
      goto LABEL_7;
    }

LABEL_14:
    v19 = 0.0;
    goto LABEL_15;
  }

  if (!altitudeCopy)
  {
    goto LABEL_14;
  }

LABEL_7:
  objc_msgSend_doubleValue(altitudeCopy, v17, v18);
LABEL_15:
  objc_msgSend_setAltitude_(self->_parkedCarWaypoint, v17, v18, v19);
  objc_msgSend_setAltitudePopulated_(self->_parkedCarWaypoint, v34, altitudeCopy != 0);
  objc_msgSend__logSystemWaypointsAnalytics(self, v35, v36);
}

- (id)fetchTargetedWaypoint
{
  v4 = objc_msgSend_sharedManager(NCTargetedWaypointManager, a2, v2);
  v7 = objc_msgSend_fetchTargetedWaypointUUID(v4, v5, v6);
  v10 = objc_msgSend_UUIDString(v7, v8, v9);

  if (!v10)
  {
    goto LABEL_5;
  }

  v11 = objc_alloc(MEMORY[0x277CCAD78]);
  v13 = objc_msgSend_initWithUUIDString_(v11, v12, v10);
  v15 = objc_msgSend_waypointWithUUID_(self, v14, v13);

  if (v15)
  {
    goto LABEL_6;
  }

  v18 = objc_msgSend_parkedCarWaypoint(self, v16, v17);
  v21 = objc_msgSend_uuid(v18, v19, v20);
  v24 = objc_msgSend_UUIDString(v21, v22, v23);
  isEqualToString = objc_msgSend_isEqualToString_(v24, v25, v10);

  if (isEqualToString)
  {
    v15 = objc_msgSend_parkedCarWaypoint(self, v27, v28);
  }

  else
  {
LABEL_5:
    v15 = 0;
  }

LABEL_6:

  return v15;
}

- (id)fetchCompassWaypointsWithAltitude:(BOOL)altitude
{
  v4 = objc_msgSend_fetchRequestForCompassWaypointsWithAltitude_(NCWaypointFetchRequests, a2, altitude);
  v6 = objc_msgSend__fetchItemsWithRequest_(self, v5, v4);
  v8 = objc_msgSend__convertToNCWaypointList_(self, v7, v6);

  return v8;
}

- (id)fetchWaypointsWithType:(int64_t)type
{
  v4 = objc_msgSend_fetchRequestForCountOfWaypointsInElevationTableOfType_(NCWaypointFetchRequests, a2, type);
  v6 = objc_msgSend__fetchItemsWithRequest_(self, v5, v4);
  v8 = objc_msgSend__convertToNCWaypointList_(self, v7, v6);

  return v8;
}

- (unint64_t)waypointCountContainingKeyword:(id)keyword
{
  v4 = objc_msgSend_fetchRequestForWaypointContainingKeyword_(NCWaypointFetchRequests, a2, keyword);
  v6 = objc_msgSend__fetchItemsWithRequest_(self, v5, v4);
  v9 = v6;
  if (v6)
  {
    v10 = objc_msgSend_count(v6, v7, v8);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)deleteWaypoint:(id)waypoint
{
  objc_msgSend__deleteWaypointInViewContext_(self, a2, waypoint);
  objc_msgSend__commitToCoreData(self, v4, v5);

  objc_msgSend__postWaypointListChangedNotification(self, v6, v7);
}

- (void)deleteWaypointsByUUIDs:(id)ds
{
  v23 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  if (objc_msgSend_count(dsCopy, v5, v6))
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = dsCopy;
    v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v18, v22, 16);
    if (v9)
    {
      v11 = v9;
      v12 = *v19;
      do
      {
        v13 = 0;
        do
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v7);
          }

          objc_msgSend__deleteWaypointInViewContextByUUID_(self, v10, *(*(&v18 + 1) + 8 * v13++), v18);
        }

        while (v11 != v13);
        v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v18, v22, 16);
      }

      while (v11);
    }

    objc_msgSend__commitToCoreData(self, v14, v15);
    objc_msgSend__postWaypointListChangedNotification(self, v16, v17);
  }
}

- (void)_deleteWaypointInViewContextByUUID:(id)d
{
  dCopy = d;
  v7 = objc_msgSend_viewContext(self, v5, v6);

  if (v7)
  {
    v11 = objc_msgSend__coreDataWaypointWithUUID_(self, v8, dCopy);
    if (v11)
    {
      v12 = objc_msgSend_viewContext(self, v9, v10);
      objc_msgSend_deleteObject_(v12, v13, v11);

      v16 = objc_msgSend_sharedManager(NCTargetedWaypointManager, v14, v15);
      v19 = objc_msgSend_targetedWaypointUUID(v16, v17, v18);

      if (v19 && objc_msgSend_isEqual_(dCopy, v20, v19))
      {
        v23 = objc_msgSend_sharedManager(NCTargetedWaypointManager, v21, v22);
        objc_msgSend_setTargetedWaypointUUID_(v23, v24, 0);
      }
    }

    else
    {
      v19 = NCLogForCategory(7uLL);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_23BD664CC();
      }
    }
  }

  else
  {
    v11 = NCLogForCategory(7uLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_23BD6654C();
    }
  }
}

- (void)_deleteWaypointInViewContext:(id)context
{
  v23 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v5 = NCLogForCategory(7uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_msgSend_label(contextCopy, v6, v7);
    v11 = objc_msgSend_uuid(contextCopy, v9, v10);
    v14 = objc_msgSend_UUIDString(v11, v12, v13);
    v19 = 138412546;
    v20 = v8;
    v21 = 2114;
    v22 = v14;
    _os_log_impl(&dword_23BD26000, v5, OS_LOG_TYPE_DEFAULT, "Delete waypoint %@ with uuid %{public}@.", &v19, 0x16u);
  }

  v17 = objc_msgSend_uuid(contextCopy, v15, v16);
  objc_msgSend__deleteWaypointInViewContextByUUID_(self, v18, v17);
}

- (void)deleteAllWaypoints
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = NCLogForCategory(7uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23BD26000, v3, OS_LOG_TYPE_DEFAULT, "Delete all waypoints in the database", buf, 2u);
  }

  v6 = objc_msgSend_viewContext(self, v4, v5);

  if (v6)
  {
    v9 = objc_msgSend_fetchRequestForAllWaypoints(NCWaypointFetchRequests, v7, v8);
    v11 = objc_msgSend__fetchItemsWithRequest_(self, v10, v9);
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v28, v33, 16);
    if (v13)
    {
      v16 = v13;
      v17 = *v29;
      do
      {
        v18 = 0;
        do
        {
          if (*v29 != v17)
          {
            objc_enumerationMutation(v11);
          }

          v19 = *(*(&v28 + 1) + 8 * v18);
          v20 = objc_msgSend_viewContext(self, v14, v15);
          objc_msgSend_deleteObject_(v20, v21, v19);

          ++v18;
        }

        while (v16 != v18);
        v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v14, &v28, v33, 16);
      }

      while (v16);
    }

    objc_msgSend__commitToCoreData(self, v14, v15);
    v24 = objc_msgSend_sharedManager(NCTargetedWaypointManager, v22, v23);
    objc_msgSend_setTargetedWaypointUUID_(v24, v25, 0);

    objc_msgSend__postWaypointListChangedNotification(self, v26, v27);
  }

  else
  {
    v9 = NCLogForCategory(7uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_23BD665CC();
    }
  }
}

- (id)addWaypointAtLocation:(id)location withAltitude:(id)altitude withLabel:(id)label withColor:(id)color withSymbol:(id)symbol withType:(int64_t)type isEnabled:(BOOL)enabled
{
  symbolCopy = symbol;
  colorCopy = color;
  labelCopy = label;
  altitudeCopy = altitude;
  locationCopy = location;
  v20 = [NCWaypoint alloc];
  isEnabled = objc_msgSend_initWithLabel_color_symbol_type_location_altitude_isEnabled_(v20, v21, labelCopy, colorCopy, symbolCopy, type, locationCopy, altitudeCopy, enabled);

  objc_msgSend__saveWaypoint_(self, v23, isEnabled);
  objc_msgSend__commitToCoreData(self, v24, v25);
  objc_msgSend__postWaypointListChangedNotification(self, v26, v27);

  return isEnabled;
}

- (BOOL)addWaypoints:(id)waypoints
{
  v25 = *MEMORY[0x277D85DE8];
  waypointsCopy = waypoints;
  if (objc_msgSend_count(waypointsCopy, v5, v6))
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = waypointsCopy;
    v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v20, v24, 16);
    if (v9)
    {
      v11 = v9;
      v12 = *v21;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(v7);
          }

          objc_msgSend__saveWaypoint_(self, v10, *(*(&v20 + 1) + 8 * i), v20);
        }

        v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v20, v24, 16);
      }

      while (v11);
    }

    if (!objc_msgSend__commitToCoreData(self, v14, v15))
    {
      v18 = 0;
      goto LABEL_13;
    }

    objc_msgSend__postWaypointListChangedNotification(self, v16, v17);
  }

  v18 = 1;
LABEL_13:

  return v18;
}

- (void)updateWaypoint:(id)waypoint
{
  objc_msgSend__updateWaypointInViewContext_(self, a2, waypoint);
  objc_msgSend__commitToCoreData(self, v4, v5);

  objc_msgSend__postWaypointListChangedNotification(self, v6, v7);
}

- (BOOL)updateWaypoints:(id)waypoints
{
  v25 = *MEMORY[0x277D85DE8];
  waypointsCopy = waypoints;
  if (objc_msgSend_count(waypointsCopy, v5, v6))
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = waypointsCopy;
    v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v20, v24, 16);
    if (v9)
    {
      v11 = v9;
      v12 = *v21;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(v7);
          }

          objc_msgSend__updateWaypointInViewContext_(self, v10, *(*(&v20 + 1) + 8 * i), v20);
        }

        v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v20, v24, 16);
      }

      while (v11);
    }

    if (!objc_msgSend__commitToCoreData(self, v14, v15))
    {
      v18 = 0;
      goto LABEL_13;
    }

    objc_msgSend__postWaypointListChangedNotification(self, v16, v17);
  }

  v18 = 1;
LABEL_13:

  return v18;
}

- (void)_updateWaypointInViewContext:(id)context
{
  contextCopy = context;
  v7 = objc_msgSend_uuid(contextCopy, v5, v6);
  v9 = objc_msgSend__coreDataWaypointWithUUID_(self, v8, v7);

  if (v9)
  {
    v12 = objc_msgSend_label(contextCopy, v10, v11);
    objc_msgSend_setLabel_(v9, v13, v12);

    v16 = objc_msgSend_labelColor(contextCopy, v14, v15);
    objc_msgSend_setLabelColor_(v9, v17, v16);

    isEnabled = objc_msgSend_isEnabled(contextCopy, v18, v19);
    objc_msgSend_setEnabled_(v9, v21, isEnabled);
    v24 = objc_msgSend_symbol(contextCopy, v22, v23);
    objc_msgSend_setSymbol_(v9, v25, v24);

    v28 = objc_msgSend_timestampOfCreation(contextCopy, v26, v27);
    objc_msgSend_setTimeOfCreation_(v9, v29, v28);

    v32 = objc_msgSend_location(contextCopy, v30, v31);
    objc_msgSend_setCoreLocation_(v9, v33, v32);

    objc_msgSend_altitude(contextCopy, v34, v35);
    objc_msgSend_setAltitude_(v9, v36, v37);
    isAltitudePopulated = objc_msgSend_isAltitudePopulated(contextCopy, v38, v39);
    objc_msgSend_setAltitudePopulated_(v9, v41, isAltitudePopulated);
    v44 = objc_msgSend_type(contextCopy, v42, v43);
    objc_msgSend_setType_(v9, v45, v44);
  }

  else
  {
    v46 = NCLogForCategory(7uLL);
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      sub_23BD6664C(contextCopy, v46, v47);
    }
  }
}

- (void)updateWaypointWithUUID:(id)d withLocation:(id)location withAltitude:(id)altitude
{
  dCopy = d;
  locationCopy = location;
  altitudeCopy = altitude;
  v12 = objc_msgSend__coreDataWaypointWithUUID_(self, v11, dCopy);
  v14 = v12;
  if (v12)
  {
    objc_msgSend_setCoreLocation_(v12, v13, locationCopy);
    if (altitudeCopy)
    {
      objc_msgSend_doubleValue(altitudeCopy, v15, v16);
    }

    else
    {
      v17 = 0.0;
    }

    objc_msgSend_setAltitude_(v14, v15, v16, v17);
    objc_msgSend_setAltitudePopulated_(v14, v19, altitudeCopy != 0);
    objc_msgSend__commitToCoreData(self, v20, v21);
    objc_msgSend__postWaypointListChangedNotification(self, v22, v23);
  }

  else
  {
    v18 = NCLogForCategory(7uLL);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_23BD666E8();
    }
  }
}

- (id)waypointWithUUID:(id)d
{
  dCopy = d;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_23BD42190;
  v19 = sub_23BD421A0;
  v20 = 0;
  v7 = objc_msgSend_fetchCompassWaypoints(self, v5, v6);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_23BD421A8;
  v12[3] = &unk_278B945F8;
  v8 = dCopy;
  v13 = v8;
  v14 = &v15;
  objc_msgSend_enumerateObjectsUsingBlock_(v7, v9, v12);

  v10 = v16[5];
  _Block_object_dispose(&v15, 8);

  return v10;
}

- (BOOL)saveElevationForDatabaseWaypoints:(id)waypoints
{
  v63 = *MEMORY[0x277D85DE8];
  waypointsCopy = waypoints;
  if (objc_msgSend_count(waypointsCopy, v5, v6))
  {
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v49 = waypointsCopy;
    obj = waypointsCopy;
    v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v7, &v52, v62, 16);
    if (v8)
    {
      v11 = v8;
      v12 = *v53;
      v13 = 0x277CCA000uLL;
      v14 = 0x278B93000uLL;
      v50 = *v53;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v53 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v52 + 1) + 8 * i);
          v17 = *(v13 + 2992);
          objc_msgSend_altitude(v16, v9, v10);
          v20 = objc_msgSend_numberWithDouble_(v17, v18, v19);
          v21 = *(v14 + 2544);
          v24 = objc_msgSend_uuid(v16, v22, v23);
          v26 = objc_msgSend_databaseWaypointInDbWithUUID_altitude_(v21, v25, v24, v20);

          v27 = NCLogForCategory(7uLL);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            v30 = objc_msgSend_uuid(v16, v28, v29);
            objc_msgSend_UUIDString(v30, v31, v32);
            v34 = v33 = self;
            objc_msgSend_label(v16, v35, v36);
            v38 = v37 = v11;
            objc_msgSend_altitude(v16, v39, v40);
            *buf = 138412802;
            v57 = v34;
            v58 = 2112;
            v59 = v38;
            v60 = 2048;
            v61 = v41;
            _os_log_impl(&dword_23BD26000, v27, OS_LOG_TYPE_DEFAULT, "Saving elevation for waypoint %@, %@, %f", buf, 0x20u);

            v11 = v37;
            self = v33;
            v13 = 0x277CCA000;
            v14 = 0x278B93000;

            v12 = v50;
          }

          objc_msgSend__saveWaypoint_(self, v42, v26);
        }

        v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v9, &v52, v62, 16);
      }

      while (v11);
    }

    v45 = objc_msgSend__commitToCoreData(self, v43, v44);
    objc_msgSend__postWaypointListChangedNotification(self, v46, v47);
    waypointsCopy = v49;
  }

  else
  {
    v45 = 1;
  }

  return v45;
}

- (id)fetchDatabaseWaypointsWithElevation
{
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_23BD42638;
  v16[3] = &unk_278B94620;
  v16[4] = self;
  v2 = MEMORY[0x23EEBBDF0](v16, a2);
  if (objc_msgSend_isMainThread(MEMORY[0x277CCACC8], v3, v4))
  {
    v5 = v2[2](v2);
  }

  else
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = sub_23BD42190;
    v14 = sub_23BD421A0;
    v15 = 0;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_23BD426C8;
    block[3] = &unk_278B94648;
    v9 = &v10;
    v8 = v2;
    dispatch_sync(MEMORY[0x277D85CD0], block);
    v5 = v11[5];

    _Block_object_dispose(&v10, 8);
  }

  return v5;
}

- (id)fetchDatabaseWaypoints
{
  v4 = objc_msgSend_fetchRequestForDatabaseWaypoints(NCWaypointFetchRequests, a2, v2);
  v6 = objc_msgSend__fetchItemsWithRequest_(self, v5, v4);
  v8 = objc_msgSend__convertToNCWaypointList_(self, v7, v6);

  return v8;
}

- (NSPersistentContainer)persistentContainer
{
  v76[1] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v3 = objc_sync_enter(selfCopy);
  if (!selfCopy->_persistentContainer && isFullyFeaturedApp(v3, v4))
  {
    bundle = selfCopy->_bundle;
    if (bundle)
    {
      v7 = objc_msgSend_URLForResource_withExtension_(bundle, v5, @"CompassModel", @"momd");
      v8 = objc_alloc(MEMORY[0x277CBE450]);
      v10 = objc_msgSend_initWithContentsOfURL_(v8, v9, v7);
      v13 = objc_msgSend__useCloudKitContainer(selfCopy, v11, v12);
      v14 = 0x277CBE470;
      if (!v13)
      {
        v14 = 0x277CBE4A0;
      }

      v15 = objc_alloc(*v14);
      v17 = objc_msgSend_initWithName_managedObjectModel_(v15, v16, @"CompassModel", v10);
      persistentContainer = selfCopy->_persistentContainer;
      selfCopy->_persistentContainer = v17;

      v21 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v19, v20);
      v23 = objc_msgSend_containerURLForSecurityApplicationGroupIdentifier_(v21, v22, @"group.com.apple.nanocompass");

      if (v23)
      {
        v25 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v24, @"%@.sqlite", @"CompassModel");
        v27 = objc_msgSend_URLByAppendingPathComponent_(v23, v26, v25);

        v28 = NCLogForCategory(7uLL);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          v31 = objc_msgSend_description(v27, v29, v30);
          *buf = 138412290;
          v71 = v31;
          _os_log_impl(&dword_23BD26000, v28, OS_LOG_TYPE_DEFAULT, "print store URL %@", buf, 0xCu);
        }

        v35 = objc_msgSend_persistentStoreDescriptionWithURL_(MEMORY[0x277CBE4E0], v32, v27);
        if (v13)
        {
          v36 = objc_msgSend__appBundle(selfCopy, v33, v34);
          v76[0] = v36;
          v38 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v37, v76, 1);
          objc_msgSend_setOption_forKey_(v35, v39, v38, *MEMORY[0x277CBE220]);

          v40 = objc_alloc(MEMORY[0x277CBE498]);
          v42 = objc_msgSend_initWithContainerIdentifier_(v40, v41, @"com.apple.watch.compass");
          objc_msgSend_setUseDeviceToDeviceEncryption_(v42, v43, 1);
          objc_msgSend_setCloudKitContainerOptions_(v35, v44, v42);
        }

        v45 = objc_msgSend__allowWriteAccess(selfCopy, v33, v34);
        v47 = *MEMORY[0x277CBE2B0];
        if (v45)
        {
          objc_msgSend_setOption_forKey_(v35, v46, MEMORY[0x277CBEC28], v47);
          objc_msgSend_setOption_forKey_(v35, v48, MEMORY[0x277CBEC38], *MEMORY[0x277CBE210]);
        }

        else
        {
          objc_msgSend_setOption_forKey_(v35, v46, MEMORY[0x277CBEC38], v47);
          objc_msgSend_setOption_forKey_(v35, v54, MEMORY[0x277CBEC28], *MEMORY[0x277CBE210]);
        }

        v55 = objc_msgSend_arrayWithObject_(MEMORY[0x277CBEA60], v49, v35);
        objc_msgSend_setPersistentStoreDescriptions_(selfCopy->_persistentContainer, v56, v55);

        objc_initWeak(&location, selfCopy);
        v57 = NCLogForCategory(7uLL);
        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
        {
          bundleIdentifier = selfCopy->_bundleIdentifier;
          Only = objc_msgSend_isReadOnly(v35, v58, v59);
          v62 = @"not ";
          if (v13)
          {
            v62 = &stru_284E80A60;
          }

          *buf = 138412802;
          v71 = bundleIdentifier;
          v72 = 2112;
          v73 = v62;
          if (Only)
          {
            v63 = @"read-only";
          }

          else
          {
            v63 = @"read-write";
          }

          v74 = 2112;
          v75 = v63;
          _os_log_impl(&dword_23BD26000, v57, OS_LOG_TYPE_DEFAULT, "Start loading store for %@. It's %@a CloudKit container. It's %@.", buf, 0x20u);
        }

        v64 = selfCopy->_persistentContainer;
        v67[0] = MEMORY[0x277D85DD0];
        v67[1] = 3221225472;
        v67[2] = sub_23BD42D0C;
        v67[3] = &unk_278B94670;
        objc_copyWeak(&v68, &location);
        objc_msgSend_loadPersistentStoresWithCompletionHandler_(v64, v65, v67);
        objc_destroyWeak(&v68);
        objc_destroyWeak(&location);

        goto LABEL_29;
      }

      v51 = NCLogForCategory(7uLL);
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        sub_23BD66768();
      }

      v52 = selfCopy->_persistentContainer;
      selfCopy->_persistentContainer = 0;

      viewContext = selfCopy->_viewContext;
      selfCopy->_viewContext = 0;

      v50 = selfCopy->_persistentContainer;
    }

    else
    {
      v7 = NCLogForCategory(7uLL);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_23BD667A8();
      }

      v50 = 0;
    }

    objc_sync_exit(selfCopy);
    goto LABEL_30;
  }

LABEL_29:
  objc_sync_exit(selfCopy);

  v50 = selfCopy->_persistentContainer;
LABEL_30:

  return v50;
}

- (BOOL)_useCloudKitContainer
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23BD42EF0;
  block[3] = &unk_278B93FB0;
  block[4] = self;
  if (qword_27E1C5178 != -1)
  {
    dispatch_once(&qword_27E1C5178, block);
  }

  return byte_27E1C5170;
}

- (BOOL)_allowWriteAccess
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23BD42FB8;
  block[3] = &unk_278B93FB0;
  block[4] = self;
  if (qword_27E1C5188 != -1)
  {
    dispatch_once(&qword_27E1C5188, block);
  }

  return byte_27E1C5180;
}

- (id)_appBundle
{
  if (qword_27E1C5198 != -1)
  {
    sub_23BD667E8();
  }

  v3 = qword_27E1C5190;

  return v3;
}

- (NSManagedObjectContext)viewContext
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_viewContext)
  {
    v5 = objc_msgSend_persistentContainer(selfCopy, v3, v4);
    v8 = objc_msgSend_viewContext(v5, v6, v7);
    viewContext = selfCopy->_viewContext;
    selfCopy->_viewContext = v8;

    objc_msgSend_setMergePolicy_(selfCopy->_viewContext, v10, *MEMORY[0x277CBE1C8]);
  }

  objc_sync_exit(selfCopy);

  v11 = selfCopy->_viewContext;

  return v11;
}

- (id)_fetchItemsWithRequest:(id)request
{
  v32 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v7 = objc_msgSend_viewContext(self, v5, v6);

  if (v7)
  {
    v10 = objc_msgSend_viewContext(self, v8, v9);
    v29 = 0;
    v12 = objc_msgSend_executeFetchRequest_error_(v10, v11, requestCopy, &v29);
    v13 = v29;
    v16 = objc_msgSend_mutableCopy(v12, v14, v15);

    if (v13)
    {
      v19 = NCLogForCategory(1uLL);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_23BD667FC(v13, v19, v20);
      }
    }

    else
    {
      if (v16 && objc_msgSend_count(v16, v17, v18))
      {
        v23 = v16;
        goto LABEL_6;
      }

      v19 = NCLogForCategory(7uLL);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v31 = "[NCWaypointManager _fetchItemsWithRequest:]";
        _os_log_impl(&dword_23BD26000, v19, OS_LOG_TYPE_DEFAULT, "%s no record is found in the database", buf, 0xCu);
      }
    }

    v23 = objc_msgSend_array(MEMORY[0x277CBEB18], v21, v22);
LABEL_6:
    v24 = v23;

    goto LABEL_10;
  }

  v25 = NCLogForCategory(7uLL);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    sub_23BD6689C();
  }

  v24 = objc_msgSend_array(MEMORY[0x277CBEB18], v26, v27);
LABEL_10:

  return v24;
}

- (int64_t)_fetchCountItemsWithRequest:(id)request
{
  requestCopy = request;
  v7 = objc_msgSend_viewContext(self, v5, v6);

  if (!v7)
  {
    v13 = NCLogForCategory(7uLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_23BD669BC();
    }

    goto LABEL_8;
  }

  v10 = objc_msgSend_viewContext(self, v8, v9);
  v17 = 0;
  Request_error = objc_msgSend_countForFetchRequest_error_(v10, v11, requestCopy, &v17);
  v13 = v17;

  if (v13)
  {
    v14 = NCLogForCategory(1uLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_23BD6691C(v13, v14, v15);
    }

LABEL_8:
    Request_error = -1;
  }

  return Request_error;
}

- (BOOL)_commitToCoreData
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_viewContext(self, a2, v2);

  if (!v4)
  {
    v15 = NCLogForCategory(7uLL);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_23BD66AF4();
    }

    goto LABEL_9;
  }

  v7 = objc_msgSend_viewContext(self, v5, v6);
  if (objc_msgSend_hasChanges(v7, v8, v9))
  {
    v12 = objc_msgSend_viewContext(self, v10, v11);
    v21 = 0;
    v14 = objc_msgSend_save_(v12, v13, &v21);
    v15 = v21;

    if ((v14 & 1) == 0)
    {
      v16 = NCLogForCategory(7uLL);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_23BD66A3C(v15, v16, v17);
      }

LABEL_9:
      v18 = 0;
      goto LABEL_14;
    }
  }

  else
  {

    v15 = 0;
  }

  v19 = NCLogForCategory(7uLL);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v23 = "[NCWaypointManager _commitToCoreData]";
    _os_log_impl(&dword_23BD26000, v19, OS_LOG_TYPE_DEFAULT, "%s Data is saved successfully.", buf, 0xCu);
  }

  v18 = 1;
LABEL_14:

  return v18;
}

- (id)_fetchCompassWaypointsIncludingDisabled:(BOOL)disabled
{
  v3 = objc_opt_new();

  return v3;
}

- (id)_fetchCompassWaypointsFromCoreDataIncludingDisabled:(BOOL)disabled
{
  if (disabled)
  {
    objc_msgSend_fetchRequestForCompassWaypoints(NCWaypointFetchRequests, a2, disabled);
  }

  else
  {
    objc_msgSend_fetchRequestForEnabledCompassWaypoints(NCWaypointFetchRequests, a2, disabled);
  }
  v4 = ;
  v6 = objc_msgSend__fetchItemsWithRequest_(self, v5, v4);
  v8 = objc_msgSend__convertToNCWaypointList_(self, v7, v6);

  return v8;
}

- (id)_coreDataWaypointWithUUID:(id)d
{
  v4 = objc_msgSend_fetchRequestForWaypointWithUUID_(NCWaypointFetchRequests, a2, d);
  v6 = objc_msgSend__fetchItemsWithRequest_(self, v5, v4);
  v9 = v6;
  if (v6 && objc_msgSend_count(v6, v7, v8))
  {
    v11 = objc_msgSend_objectAtIndexedSubscript_(v9, v10, 0);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_excludingDisabledWaypoints:(id)waypoints
{
  v31 = *MEMORY[0x277D85DE8];
  waypointsCopy = waypoints;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = waypointsCopy;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v22, v30, 16);
  if (v7)
  {
    v11 = v7;
    v12 = *v23;
    *&v10 = 136315394;
    v21 = v10;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(v5);
        }

        v14 = *(*(&v22 + 1) + 8 * i);
        if (objc_msgSend_isEnabled(v14, v8, v9, v21, v22))
        {
          v15 = NCLogForCategory(1uLL);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v18 = objc_msgSend_label(v14, v16, v17);
            *buf = v21;
            v27 = "[NCWaypointManager _excludingDisabledWaypoints:]";
            v28 = 2112;
            v29 = v18;
            _os_log_impl(&dword_23BD26000, v15, OS_LOG_TYPE_DEFAULT, "%s waypoint: %@ is enabled.", buf, 0x16u);
          }

          objc_msgSend_addObject_(v4, v19, v14);
        }
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v22, v30, 16);
    }

    while (v11);
  }

  return v4;
}

- (void)_printWaypointList:(id)list
{
  v59 = *MEMORY[0x277D85DE8];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = list;
  v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v3, &v42, v58, 16);
  if (v4)
  {
    v5 = v4;
    v6 = *v43;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v43 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v42 + 1) + 8 * i);
        v9 = NCLogForCategory(1uLL);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v12 = objc_msgSend_label(v8, v10, v11);
          v41 = objc_msgSend_location(v8, v13, v14);
          objc_msgSend_coordinate(v41, v15, v16);
          v18 = v17;
          v21 = objc_msgSend_location(v8, v19, v20);
          objc_msgSend_coordinate(v21, v22, v23);
          v25 = v24;
          v28 = objc_msgSend_uuid(v8, v26, v27);
          objc_msgSend_UUIDString(v28, v29, v30);
          v32 = v31 = v6;
          v35 = objc_msgSend_symbol(v8, v33, v34);
          isEnabled = objc_msgSend_isEnabled(v8, v36, v37);
          *buf = 138413570;
          v47 = v12;
          v48 = 2048;
          v49 = v18;
          v50 = 2048;
          v51 = v25;
          v52 = 2112;
          v53 = v32;
          v54 = 2112;
          v55 = v35;
          v56 = 1024;
          v57 = isEnabled;
          _os_log_impl(&dword_23BD26000, v9, OS_LOG_TYPE_DEFAULT, "waypoint label %@, lat %f, lng %f, UUID %@, symbol name %@, is enabled %d", buf, 0x3Au);

          v6 = v31;
        }
      }

      v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v39, &v42, v58, 16);
    }

    while (v5);
  }
}

- (void)_saveWaypoint:(id)waypoint
{
  waypointCopy = waypoint;
  v7 = objc_msgSend_viewContext(self, v5, v6);

  if (v7)
  {
    v10 = MEMORY[0x277CBE408];
    v11 = objc_msgSend_viewContext(self, v8, v9);
    v13 = objc_msgSend_insertNewObjectForEntityForName_inManagedObjectContext_(v10, v12, @"Waypoint", v11);

    v16 = objc_msgSend_uuid(waypointCopy, v14, v15);
    objc_msgSend_setUuid_(v13, v17, v16);

    v20 = objc_msgSend_label(waypointCopy, v18, v19);
    objc_msgSend_setLabel_(v13, v21, v20);

    v24 = objc_msgSend_labelColor(waypointCopy, v22, v23);
    objc_msgSend_setLabelColor_(v13, v25, v24);

    isEnabled = objc_msgSend_isEnabled(waypointCopy, v26, v27);
    objc_msgSend_setEnabled_(v13, v29, isEnabled);
    v32 = objc_msgSend_symbol(waypointCopy, v30, v31);
    objc_msgSend_setSymbol_(v13, v33, v32);

    v36 = objc_msgSend_timestampOfCreation(waypointCopy, v34, v35);
    objc_msgSend_setTimeOfCreation_(v13, v37, v36);

    v40 = objc_msgSend_location(waypointCopy, v38, v39);
    objc_msgSend_setCoreLocation_(v13, v41, v40);

    objc_msgSend_altitude(waypointCopy, v42, v43);
    objc_msgSend_setAltitude_(v13, v44, v45);
    isAltitudePopulated = objc_msgSend_isAltitudePopulated(waypointCopy, v46, v47);
    objc_msgSend_setAltitudePopulated_(v13, v49, isAltitudePopulated);
    v52 = objc_msgSend_type(waypointCopy, v50, v51);
    objc_msgSend_setType_(v13, v53, v52);
  }

  else
  {
    v13 = NCLogForCategory(7uLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_23BD66B74();
    }
  }
}

- (id)_convertToNCWaypointList:(id)list
{
  v53 = *MEMORY[0x277D85DE8];
  listCopy = list;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v5 = listCopy;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v38, v52, 16);
  if (v7)
  {
    v11 = v7;
    v12 = *v39;
    *&v10 = 136315394;
    v37 = v10;
    v13 = 0x278B93000uLL;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v39 != v12)
        {
          objc_enumerationMutation(v5);
        }

        v15 = *(*(&v38 + 1) + 8 * i);
        v16 = objc_msgSend_uuid(v15, v8, v9, v37);

        v17 = NCLogForCategory(7uLL);
        v18 = v17;
        if (v16)
        {
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            v25 = objc_msgSend_label(v15, v19, v20);
            v28 = objc_msgSend_symbol(v15, v26, v27);
            v31 = objc_msgSend_uuid(v15, v29, v30);
            objc_msgSend_altitude(v15, v32, v33);
            *buf = 136316162;
            v43 = "[NCWaypointManager _convertToNCWaypointList:]";
            v44 = 2112;
            v45 = v25;
            v46 = 2112;
            v47 = v28;
            v48 = 2112;
            v49 = v31;
            v50 = 2048;
            v51 = v34;
            _os_log_debug_impl(&dword_23BD26000, v18, OS_LOG_TYPE_DEBUG, "%s printing core data waypoint label %@, symbol %@, UUID %@, altitude %f", buf, 0x34u);

            v13 = 0x278B93000;
          }

          v18 = objc_msgSend_waypointForCoreDataWaypoint_(*(v13 + 2544), v21, v15);
          objc_msgSend_addObject_(v4, v22, v18);
        }

        else if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v35 = objc_msgSend_label(v15, v23, v24);
          *buf = v37;
          v43 = "[NCWaypointManager _convertToNCWaypointList:]";
          v44 = 2112;
          v45 = v35;
          _os_log_error_impl(&dword_23BD26000, v18, OS_LOG_TYPE_ERROR, "%s Waypoint has no UUID, ignoring (name = %@)", buf, 0x16u);
        }
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v38, v52, 16);
    }

    while (v11);
  }

  return v4;
}

- (void)setClosestDataWaypoint:(id)waypoint
{
  v28 = *MEMORY[0x277D85DE8];
  waypointCopy = waypoint;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  if ((objc_msgSend_isEquivalentCellularWaypoint_(self->_closestDataWaypoint, v6, waypointCopy) & 1) == 0)
  {
    if (waypointCopy)
    {
      v9 = objc_msgSend_uuid(waypointCopy, v7, v8);
      v12 = objc_msgSend_location(waypointCopy, v10, v11);
      objc_msgSend_altitude(v12, v13, v14);
      v16 = v15;
      v17 = NCLogForCategory(8uLL);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v22 = 138543874;
        v23 = v9;
        v24 = 2112;
        v25 = v12;
        v26 = 2048;
        v27 = v16;
        _os_log_impl(&dword_23BD26000, v17, OS_LOG_TYPE_DEFAULT, "Manager receiving update to closest data waypoint (%{public}@ at %@ ^ %.2fm).", &v22, 0x20u);
      }
    }

    else
    {
      v9 = NCLogForCategory(8uLL);
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
LABEL_9:

        objc_storeStrong(&self->_closestDataWaypoint, waypoint);
        objc_msgSend__publishCellularWaypointsUpdate(self, v20, v21);
        goto LABEL_10;
      }

      v12 = objc_msgSend_uuid(self->_closestDataWaypoint, v18, v19);
      v22 = 138543362;
      v23 = v12;
      _os_log_impl(&dword_23BD26000, v9, OS_LOG_TYPE_DEFAULT, "Manager receiving update to clear closest data waypoint (%{public}@).", &v22, 0xCu);
    }

    goto LABEL_9;
  }

LABEL_10:
}

- (void)setClosestSOSWaypoint:(id)waypoint
{
  v28 = *MEMORY[0x277D85DE8];
  waypointCopy = waypoint;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  if ((objc_msgSend_isEquivalentCellularWaypoint_(self->_closestSOSWaypoint, v6, waypointCopy) & 1) == 0)
  {
    if (waypointCopy)
    {
      v9 = objc_msgSend_uuid(waypointCopy, v7, v8);
      v12 = objc_msgSend_location(waypointCopy, v10, v11);
      objc_msgSend_altitude(v12, v13, v14);
      v16 = v15;
      v17 = NCLogForCategory(8uLL);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v22 = 138543874;
        v23 = v9;
        v24 = 2112;
        v25 = v12;
        v26 = 2048;
        v27 = v16;
        _os_log_impl(&dword_23BD26000, v17, OS_LOG_TYPE_DEFAULT, "Manager receiving update to closest sos waypoint (%{public}@ at %@ ^ %.2fm).", &v22, 0x20u);
      }
    }

    else
    {
      v9 = NCLogForCategory(8uLL);
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
LABEL_9:

        objc_storeStrong(&self->_closestSOSWaypoint, waypoint);
        objc_msgSend__publishCellularWaypointsUpdate(self, v20, v21);
        goto LABEL_10;
      }

      v12 = objc_msgSend_uuid(self->_closestSOSWaypoint, v18, v19);
      v22 = 138543362;
      v23 = v12;
      _os_log_impl(&dword_23BD26000, v9, OS_LOG_TYPE_DEFAULT, "Manager receiving update to clear closest sos waypoint (%{public}@).", &v22, 0xCu);
    }

    goto LABEL_9;
  }

LABEL_10:
}

- (void)setRecentDataWaypoint:(id)waypoint
{
  v28 = *MEMORY[0x277D85DE8];
  waypointCopy = waypoint;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  if ((objc_msgSend_isEquivalentCellularWaypoint_(self->_recentDataWaypoint, v6, waypointCopy) & 1) == 0)
  {
    if (waypointCopy)
    {
      v9 = objc_msgSend_uuid(waypointCopy, v7, v8);
      v12 = objc_msgSend_location(waypointCopy, v10, v11);
      objc_msgSend_altitude(v12, v13, v14);
      v16 = v15;
      v17 = NCLogForCategory(8uLL);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v22 = 138543874;
        v23 = v9;
        v24 = 2112;
        v25 = v12;
        v26 = 2048;
        v27 = v16;
        _os_log_impl(&dword_23BD26000, v17, OS_LOG_TYPE_DEFAULT, "Manager receiving update to recent data waypoint (%{public}@ at %@ ^ %.2fm).", &v22, 0x20u);
      }
    }

    else
    {
      v9 = NCLogForCategory(8uLL);
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
LABEL_9:

        objc_storeStrong(&self->_recentDataWaypoint, waypoint);
        objc_msgSend__publishCellularWaypointsUpdate(self, v20, v21);
        goto LABEL_10;
      }

      v12 = objc_msgSend_uuid(self->_recentDataWaypoint, v18, v19);
      v22 = 138543362;
      v23 = v12;
      _os_log_impl(&dword_23BD26000, v9, OS_LOG_TYPE_DEFAULT, "Manager receiving update to clear recent data waypoint (%{public}@).", &v22, 0xCu);
    }

    goto LABEL_9;
  }

LABEL_10:
  objc_msgSend__logSystemWaypointsAnalytics(self, v7, v8);
}

- (void)setRecentSOSWaypoint:(id)waypoint
{
  v28 = *MEMORY[0x277D85DE8];
  waypointCopy = waypoint;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  if ((objc_msgSend_isEquivalentCellularWaypoint_(self->_recentSOSWaypoint, v6, waypointCopy) & 1) == 0)
  {
    if (waypointCopy)
    {
      v9 = objc_msgSend_uuid(waypointCopy, v7, v8);
      v12 = objc_msgSend_location(waypointCopy, v10, v11);
      objc_msgSend_altitude(v12, v13, v14);
      v16 = v15;
      v17 = NCLogForCategory(8uLL);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v22 = 138543874;
        v23 = v9;
        v24 = 2112;
        v25 = v12;
        v26 = 2048;
        v27 = v16;
        _os_log_impl(&dword_23BD26000, v17, OS_LOG_TYPE_DEFAULT, "Manager receiving update to recent sos waypoint (%{public}@ at %@ ^ %.2fm).", &v22, 0x20u);
      }
    }

    else
    {
      v9 = NCLogForCategory(8uLL);
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
LABEL_9:

        objc_storeStrong(&self->_recentSOSWaypoint, waypoint);
        objc_msgSend__publishCellularWaypointsUpdate(self, v20, v21);
        goto LABEL_10;
      }

      v12 = objc_msgSend_uuid(self->_recentSOSWaypoint, v18, v19);
      v22 = 138543362;
      v23 = v12;
      _os_log_impl(&dword_23BD26000, v9, OS_LOG_TYPE_DEFAULT, "Manager receiving update to clear recent sos waypoint. (%{public}@)", &v22, 0xCu);
    }

    goto LABEL_9;
  }

LABEL_10:
  objc_msgSend__logSystemWaypointsAnalytics(self, v7, v8);
}

- (NSArray)cellularWaypoints
{
  v34 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v5 = objc_msgSend_array(MEMORY[0x277CBEB18], v3, v4);
  v6 = self->_recentDataWaypoint;
  objc_msgSend_nc_safeAddObject_(v5, v7, v6);
  v8 = self->_recentSOSWaypoint;
  v10 = v8;
  if (v6)
  {
    v11 = v8 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    if (!v6 && v8)
    {
      goto LABEL_11;
    }

    if (!v8)
    {
      goto LABEL_15;
    }
  }

  else
  {
    isSignificantlyDifferentFrom = objc_msgSend_isSignificantlyDifferentFrom_(v8, v9, v6);
    if (isSignificantlyDifferentFrom)
    {
LABEL_11:
      objc_msgSend_addObject_(v5, v9, v10);
      goto LABEL_15;
    }
  }

  v13 = NCLogForCategory(8uLL);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v32) = 0;
    _os_log_impl(&dword_23BD26000, v13, OS_LOG_TYPE_DEFAULT, "Recent SOS is being excluded.", &v32, 2u);
  }

LABEL_15:
  v14 = self->_closestDataWaypoint;
  v16 = v14;
  if (v6 && v14)
  {
    if (objc_msgSend_isSignificantlyDifferentFrom_(v14, v15, v6))
    {
      objc_msgSend_addObject_(v5, v17, v16);
      goto LABEL_23;
    }
  }

  else if (!v14)
  {
    goto LABEL_23;
  }

  v18 = NCLogForCategory(8uLL);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    LOWORD(v32) = 0;
    _os_log_impl(&dword_23BD26000, v18, OS_LOG_TYPE_INFO, "Closest Data is being excluded.", &v32, 2u);
  }

LABEL_23:
  v19 = self->_closestSOSWaypoint;
  v22 = v19;
  if (v10 && v19)
  {
    if (objc_msgSend_isSignificantlyDifferentFrom_(v19, v20, v10))
    {
      objc_msgSend_addObject_(v5, v23, v22);
      goto LABEL_31;
    }
  }

  else if (!v19)
  {
    goto LABEL_31;
  }

  v24 = NCLogForCategory(8uLL);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    LOWORD(v32) = 0;
    _os_log_impl(&dword_23BD26000, v24, OS_LOG_TYPE_INFO, "Closest SOS is being excluded.", &v32, 2u);
  }

LABEL_31:
  v25 = objc_msgSend_count(v5, v20, v21);
  if (v25 != self->_lastCellularWaypointCount)
  {
    v28 = v25;
    v29 = NCLogForCategory(8uLL);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v32 = 134217984;
      v33 = v28;
      _os_log_impl(&dword_23BD26000, v29, OS_LOG_TYPE_DEFAULT, "Showing %lu cellular waypoints.", &v32, 0xCu);
    }

    self->_lastCellularWaypointCount = v28;
  }

  v30 = objc_msgSend_copy(v5, v26, v27);

  return v30;
}

- (void)_publishCellularWaypointsUpdate
{
  cellularWaypointsUpdatedHandle = self->_cellularWaypointsUpdatedHandle;
  if (cellularWaypointsUpdatedHandle)
  {
    cellularWaypointsUpdatedHandle[2](cellularWaypointsUpdatedHandle, a2);
  }

  objc_msgSend__postWaypointListChangedNotification(self, a2, v2);
}

- (int64_t)numWaypointsMissingElevationOfType:(int64_t)type
{
  v4 = objc_msgSend_fetchRequestForCountOfMissingElevationForWaypointsOfType_(NCWaypointFetchRequests, a2, type);
  CountItemsWithRequest = objc_msgSend__fetchCountItemsWithRequest_(self, v5, v4);

  return CountItemsWithRequest;
}

- (int64_t)numWaypointsInElevationTableOfType:(int64_t)type
{
  v4 = objc_msgSend_fetchRequestForCountOfWaypointsInElevationTableOfType_(NCWaypointFetchRequests, a2, type);
  CountItemsWithRequest = objc_msgSend__fetchCountItemsWithRequest_(self, v5, v4);

  return CountItemsWithRequest;
}

- (void)_logSystemWaypointsAnalytics
{
  if (objc_msgSend_isEqualToString_(@"com.apple.NanoCompass.watchkitapp", a2, self->_bundleIdentifier))
  {
    v5 = objc_msgSend_location(self->_parkedCarWaypoint, v3, v4);

    recentDataWaypoint = self->_recentDataWaypoint;
    recentSOSWaypoint = self->_recentSOSWaypoint;
    v8 = objc_alloc(MEMORY[0x277CBEBD0]);
    v26 = objc_msgSend_initWithSuiteName_(v8, v9, @"com.apple.compass");
    objc_msgSend_synchronize(v26, v10, v11);
    v14 = objc_msgSend_currentCalendar(MEMORY[0x277CBEA80], v12, v13);
    v17 = objc_msgSend_objectForKey_(v26, v15, @"systemWaypointsAnalyticsLastLoggedDate");
    if (!v17 || (objc_msgSend_isDateInToday_(v14, v16, v17) & 1) == 0)
    {
      objc_msgSend__submitSystemWaypointsAnalytics_(self, v16, 0);
    }

    v18 = objc_msgSend_integerForKey_(v26, v16, @"systemWaypointsAnalyticsLastLoggedWaypoints");
    v20 = v5 | v18 & 1;
    v21 = v20 == 0;
    v22 = v20 != 0;
    v23 = 2;
    if (!v21)
    {
      v23 = 3;
    }

    if (recentDataWaypoint | v18 & 2)
    {
      v24 = v23;
    }

    else
    {
      v24 = v22;
    }

    if (recentSOSWaypoint | v18 & 4)
    {
      v25 = v24 | 4;
    }

    else
    {
      v25 = v24;
    }

    if (v18 != v25)
    {
      objc_msgSend__submitSystemWaypointsAnalytics_(self, v19, v25);
    }
  }
}

- (void)_submitSystemWaypointsAnalytics:(unint64_t)analytics
{
  v4 = analytics >> 2;
  v5 = analytics >> 1;
  v11 = objc_msgSend_now(MEMORY[0x277CBEAA8], a2, analytics);
  v6 = objc_alloc(MEMORY[0x277CBEBD0]);
  v8 = objc_msgSend_initWithSuiteName_(v6, v7, @"com.apple.compass");
  objc_msgSend_setInteger_forKey_(v8, v9, analytics, @"systemWaypointsAnalyticsLastLoggedWaypoints");
  objc_msgSend_setObject_forKey_(v8, v10, v11, @"systemWaypointsAnalyticsLastLoggedDate");
  SendSystemWaypointAvailability(analytics & 1 | ((v5 & 1) << 8) | ((v4 & 1) << 16));
}

- (void)resetCompassWaypointsInDemoMode
{
  v50[3] = *MEMORY[0x277D85DE8];
  objc_msgSend_deleteAllWaypoints(self, a2, v2);
  v3 = objc_alloc(MEMORY[0x277CE41F8]);
  v6 = objc_msgSend_initWithLatitude_longitude_(v3, v4, v5, 37.336425, -122.011737);
  v7 = objc_alloc(MEMORY[0x277D75348]);
  v10 = objc_msgSend_initWithRed_green_blue_alpha_(v7, v8, v9, 0.0156862745, 0.870588235, 0.443137255, 1.0);
  v11 = [NCWaypoint alloc];
  v46 = v10;
  v47 = v6;
  isEnabled = objc_msgSend_initWithLabel_color_symbol_type_location_altitude_isEnabled_(v11, v12, @"Campsite", v10, @"tent.2.fill", 4, v6, &unk_284E8ABC8, 1);
  v14 = objc_alloc(MEMORY[0x277CE41F8]);
  v17 = objc_msgSend_initWithLatitude_longitude_(v14, v15, v16, 37.4163442, -121.913333);
  v18 = objc_alloc(MEMORY[0x277D75348]);
  v21 = objc_msgSend_initWithRed_green_blue_alpha_(v18, v19, v20, 1.0, 0.584313725, 0.0, 1.0);
  v22 = [NCWaypoint alloc];
  LOBYTE(v43) = 1;
  v24 = objc_msgSend_initWithLabel_color_symbol_type_location_altitude_isEnabled_(v22, v23, @"Lodge", v21, @"house.lodge.fill", 4, v17, &unk_284E8ABC8, v43);
  v25 = objc_alloc(MEMORY[0x277CE41F8]);
  v28 = objc_msgSend_initWithLatitude_longitude_(v25, v26, v27, 37.3131798, -122.016657);
  v29 = objc_alloc(MEMORY[0x277D75348]);
  v32 = objc_msgSend_initWithRed_green_blue_alpha_(v29, v30, v31, 1.0, 0.349019608, 0.392156863, 1.0);
  v33 = isEnabled;
  v34 = [NCWaypoint alloc];
  LOBYTE(v44) = 1;
  v36 = objc_msgSend_initWithLabel_color_symbol_type_location_altitude_isEnabled_(v34, v35, @"Bike Trail", v32, @"bicycle", 4, v28, &unk_284E8ABC8, v44);
  v50[0] = isEnabled;
  v50[1] = v24;
  v50[2] = v36;
  v38 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v37, v50, 3);
  v40 = objc_msgSend_addWaypoints_(self, v39, v38);
  v41 = NCLogForCategory(7uLL);
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    v42 = @"not ";
    if (v40)
    {
      v42 = &stru_284E80A60;
    }

    *buf = 138412290;
    v49 = v42;
    _os_log_impl(&dword_23BD26000, v41, OS_LOG_TYPE_DEFAULT, "Database is reset in demo mode and demo data is %@inserted successfully.", buf, 0xCu);
  }
}

@end