@interface WaypointsComplicationDataSource
+ (id)_descriptorUserInfoForWaypoint:(id)waypoint;
+ (id)complicationDescriptors;
- (WaypointsComplicationDataSource)initWithComplication:(id)complication family:(int64_t)family forDevice:(id)device;
- (id)_getWaypointFromDescriptor:(id)descriptor;
- (id)_getWaypointUUIDFromDescriptor:(id)descriptor;
- (id)_guidesWaypointWithUUID:(id)d;
- (id)alwaysOnTemplate;
- (id)sampleTemplate;
- (void)dealloc;
- (void)getLaunchURLForTimelineEntryDate:(id)date timeTravelDate:(id)travelDate withHandler:(id)handler;
@end

@implementation WaypointsComplicationDataSource

+ (id)complicationDescriptors
{
  v51 = *MEMORY[0x277D85DE8];
  v3 = objc_msgSend_sharedManager(NCGuidesManager, a2, v2);
  v6 = objc_msgSend_allEnabledWaypoints(v3, v4, v5);

  v41 = v6;
  v8 = objc_msgSend_sortedArrayUsingComparator_(v6, v7, &unk_284E80200);
  v9 = objc_alloc_init(MEMORY[0x277CBEB40]);
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v10 = v8;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v42, v50, 16);
  if (v12)
  {
    v15 = v12;
    v16 = *v43;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v43 != v16)
        {
          objc_enumerationMutation(v10);
        }

        v18 = *(*(&v42 + 1) + 8 * i);
        v19 = objc_msgSend_uuid(v18, v13, v14);

        if (v19)
        {
          v20 = objc_alloc(MEMORY[0x277CBB718]);
          v23 = objc_msgSend_uuid(v18, v21, v22);
          v26 = objc_msgSend_UUIDString(v23, v24, v25);
          v29 = objc_msgSend_label(v18, v27, v28);
          v31 = objc_msgSend__descriptorUserInfoForWaypoint_(WaypointsComplicationDataSource, v30, v18);
          v33 = objc_msgSend_initWithIdentifier_displayName_supportedFamilies_userInfo_(v20, v32, v26, v29, &unk_284E8B118, v31);

          objc_msgSend_addObject_(v9, v34, v33);
        }

        else
        {
          v33 = NCLogForCategory(7uLL);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            v37 = objc_msgSend_label(v18, v35, v36);
            v38 = v37;
            *buf = 136315394;
            v39 = @"also nil";
            if (v37)
            {
              v39 = v37;
            }

            v47 = "+[WaypointsComplicationDataSource complicationDescriptors]";
            v48 = 2112;
            v49 = v39;
            _os_log_impl(&dword_23BD26000, v33, OS_LOG_TYPE_DEFAULT, "%s: We have a waypoint without a UUID, skipping.  Label is %@", buf, 0x16u);
          }
        }
      }

      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, &v42, v50, 16);
    }

    while (v15);
  }

  return v9;
}

- (WaypointsComplicationDataSource)initWithComplication:(id)complication family:(int64_t)family forDevice:(id)device
{
  v31 = *MEMORY[0x277D85DE8];
  v24.receiver = self;
  v24.super_class = WaypointsComplicationDataSource;
  v5 = [(SmartWaypointComplicationDataSource *)&v24 initWithComplication:complication family:family forDevice:device];
  v8 = v5;
  if (v5)
  {
    v9 = objc_msgSend_complicationDescriptor(v5, v6, v7);
    v11 = objc_msgSend__getWaypointFromDescriptor_(v8, v10, v9);
    objc_msgSend_setWaypoint_(v8, v12, v11);

    v15 = objc_msgSend_waypoint(v8, v13, v14);

    if (v15)
    {
      v16 = NCLogForCategory(7uLL);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v19 = objc_msgSend_identifier(v9, v17, v18);
        v22 = objc_msgSend_waypoint(v8, v20, v21);
        *buf = 136315650;
        v26 = "[WaypointsComplicationDataSource initWithComplication:family:forDevice:]";
        v27 = 2112;
        v28 = v19;
        v29 = 2112;
        v30 = v22;
        _os_log_impl(&dword_23BD26000, v16, OS_LOG_TYPE_DEFAULT, "%s descriptor identifier: %@ init waypoint complication %@", buf, 0x20u);
      }
    }
  }

  return v8;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = WaypointsComplicationDataSource;
  [(SmartWaypointComplicationDataSource *)&v2 dealloc];
}

- (void)getLaunchURLForTimelineEntryDate:(id)date timeTravelDate:(id)travelDate withHandler:(id)handler
{
  v37 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v9 = objc_msgSend_waypoint(self, v7, v8);

  if (v9)
  {
    v12 = MEMORY[0x277CCACA8];
    v13 = objc_msgSend_waypoint(self, v10, v11);
    v16 = objc_msgSend_uuid(v13, v14, v15);
    v19 = objc_msgSend_UUIDString(v16, v17, v18);
    v21 = objc_msgSend_stringWithFormat_(v12, v20, @"nanocompass://launch?uuid=%@", v19);

    v23 = objc_msgSend_URLWithString_(MEMORY[0x277CBEBC0], v22, v21);
  }

  else
  {
    v23 = objc_msgSend_URLWithString_(MEMORY[0x277CBEBC0], v10, @"nanocompass://launch");
  }

  v24 = NCLogForCategory(7uLL);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v27 = objc_msgSend_waypoint(self, v25, v26);
    v30 = objc_msgSend_label(v27, v28, v29);
    *buf = 136315650;
    v32 = "[WaypointsComplicationDataSource getLaunchURLForTimelineEntryDate:timeTravelDate:withHandler:]";
    v33 = 2112;
    v34 = v23;
    v35 = 2112;
    v36 = v30;
    _os_log_impl(&dword_23BD26000, v24, OS_LOG_TYPE_DEFAULT, "%s: launch url is %@, launching to waypoint %@", buf, 0x20u);
  }

  handlerCopy[2](handlerCopy, v23);
}

- (id)sampleTemplate
{
  v6 = objc_msgSend_waypoint(self, a2, v2);
  if (v6)
  {
    objc_msgSend_waypoint(self, v4, v5);
  }

  else
  {
    objc_msgSend_idealizedWaypoint(NCWaypoint, v4, v5);
  }
  v7 = ;

  v10 = objc_msgSend_label(v7, v8, v9);
  v13 = objc_msgSend_symbol(v7, v11, v12);
  v16 = objc_msgSend_labelColor(v7, v14, v15);
  v18 = objc_msgSend__templateWithSampleWaypointLabel_symbol_color_(self, v17, v10, v13, v16);

  return v18;
}

- (id)alwaysOnTemplate
{
  v6 = objc_msgSend_waypoint(self, a2, v2);
  if (v6)
  {
    v42 = objc_msgSend__complicationTargetingIsActive(self, v4, v5) ^ 1;
  }

  else
  {
    LOBYTE(v42) = 0;
  }

  v9 = objc_msgSend_waypoint(self, v7, v8);
  v10 = v9 == 0;

  v13 = objc_msgSend_waypoint(self, v11, v12);
  v16 = objc_msgSend_copy(v13, v14, v15);
  v19 = objc_msgSend_location(self, v17, v18);
  v22 = objc_msgSend_copy(v19, v20, v21);
  v25 = objc_msgSend_heading(self, v23, v24);
  v28 = objc_msgSend_copy(v25, v26, v27);
  v31 = objc_msgSend_altitude(self, v29, v30);
  v34 = objc_msgSend_copy(v31, v32, v33);
  v37 = objc_msgSend_calibrated(self, v35, v36);
  *(&v41 + 1) = 1;
  LOBYTE(v41) = v42;
  v39 = objc_msgSend__templateWithWaypoint_location_heading_altitude_deviceCalibrated_showNoData_showInactiveState_showAlwaysOnState_showPrivacyOnState_(self, v38, v16, v22, v28, v34, v37, v10, v41);

  return v39;
}

+ (id)_descriptorUserInfoForWaypoint:(id)waypoint
{
  v91[8] = *MEMORY[0x277D85DE8];
  waypointCopy = waypoint;
  v87 = 0.0;
  v88 = 0.0;
  v85 = 0.0;
  v86 = 0.0;
  v6 = objc_msgSend_labelColor(waypointCopy, v4, v5);
  objc_msgSend_getRed_green_blue_alpha_(v6, v7, &v88, &v87, &v86, &v85);

  v8 = MEMORY[0x277CCABB0];
  v11 = objc_msgSend_timestampOfCreation(waypointCopy, v9, v10);
  objc_msgSend_timeIntervalSinceReferenceDate(v11, v12, v13);
  v84 = objc_msgSend_numberWithDouble_(v8, v14, v15);

  v18 = objc_msgSend_label(waypointCopy, v16, v17);
  v19 = v18;
  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = NanoCompassLocalizedString(@"WAYPOINT_NAME");
  }

  v21 = v20;

  v24 = objc_msgSend_symbol(waypointCopy, v22, v23);
  v27 = v24;
  if (v24)
  {
    v28 = v24;
  }

  else
  {
    v29 = objc_msgSend_idealizedWaypoint(NCWaypoint, v25, v26);
    v28 = objc_msgSend_symbol(v29, v30, v31);
  }

  v90[0] = @"waypointUuid";
  v83 = objc_msgSend_uuid(waypointCopy, v32, v33);
  v82 = objc_msgSend_UUIDString(v83, v34, v35);
  v91[0] = v82;
  v91[1] = v21;
  v90[1] = @"waypointLabel";
  v90[2] = @"waypointColor";
  HIDWORD(v36) = HIDWORD(v88);
  *&v36 = v88;
  v81 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v37, v38, v36);
  v89[0] = v81;
  HIDWORD(v39) = HIDWORD(v87);
  *&v39 = v87;
  v80 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v40, v41, v39);
  v89[1] = v80;
  HIDWORD(v42) = HIDWORD(v86);
  *&v42 = v86;
  v79 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v43, v44, v42);
  v89[2] = v79;
  HIDWORD(v45) = HIDWORD(v85);
  *&v45 = v85;
  v77 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v46, v47, v45);
  v89[3] = v77;
  v49 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v48, v89, 4);
  v91[2] = v49;
  v90[3] = @"waypointLatitude";
  v78 = v21;
  v50 = MEMORY[0x277CCABB0];
  v53 = objc_msgSend_location(waypointCopy, v51, v52);
  objc_msgSend_coordinate(v53, v54, v55);
  v58 = objc_msgSend_numberWithDouble_(v50, v56, v57);
  v91[3] = v58;
  v90[4] = @"waypointLongitude";
  v59 = MEMORY[0x277CCABB0];
  v62 = objc_msgSend_location(waypointCopy, v60, v61);
  objc_msgSend_coordinate(v62, v63, v64);
  v68 = objc_msgSend_numberWithDouble_(v59, v65, v66, v67);
  v91[4] = v68;
  v91[5] = v28;
  v90[5] = @"waypointSymbol";
  v90[6] = @"waypointEnabled";
  isEnabled = objc_msgSend_isEnabled(waypointCopy, v69, v70);
  v73 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v72, isEnabled);
  v90[7] = @"dateOfCreation";
  v91[6] = v73;
  v91[7] = v84;
  v75 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v74, v91, v90, 8);

  return v75;
}

- (id)_getWaypointUUIDFromDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v6 = descriptorCopy;
  if (descriptorCopy && (objc_msgSend_userInfo(descriptorCopy, v4, v5), v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    v10 = objc_msgSend_userInfo(v6, v8, v9);
    v12 = objc_msgSend_objectForKey_(v10, v11, @"waypointUuid");

    if (v12)
    {
      v13 = objc_alloc(MEMORY[0x277CCAD78]);
      v15 = objc_msgSend_initWithUUIDString_(v13, v14, v12);
    }

    else
    {
      v16 = NCLogForCategory(7uLL);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_23BD674E4(v16);
      }

      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)_getWaypointFromDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v6 = descriptorCopy;
  if (descriptorCopy && (objc_msgSend_userInfo(descriptorCopy, v4, v5), v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    v10 = objc_msgSend_userInfo(v6, v8, v9);
    v12 = objc_msgSend_objectForKey_(v10, v11, @"waypointUuid");

    if (v12)
    {
      v13 = objc_alloc(MEMORY[0x277CCAD78]);
      v101 = objc_msgSend_initWithUUIDString_(v13, v14, v12);
      v17 = objc_msgSend_userInfo(v6, v15, v16);
      v100 = objc_msgSend_objectForKey_(v17, v18, @"waypointLabel");

      v21 = objc_msgSend_userInfo(v6, v19, v20);
      v99 = objc_msgSend_objectForKey_(v21, v22, @"waypointLatitude");

      v25 = objc_msgSend_userInfo(v6, v23, v24);
      v98 = objc_msgSend_objectForKey_(v25, v26, @"waypointLongitude");

      v27 = objc_alloc(MEMORY[0x277CE41F8]);
      objc_msgSend_doubleValue(v99, v28, v29);
      v31 = v30;
      objc_msgSend_doubleValue(v98, v32, v33);
      v97 = objc_msgSend_initWithLatitude_longitude_(v27, v34, v35, v31, v36);
      v39 = objc_msgSend_userInfo(v6, v37, v38);
      v41 = objc_msgSend_objectForKey_(v39, v40, @"waypointSymbol");

      v44 = objc_msgSend_userInfo(v6, v42, v43);
      v96 = objc_msgSend_objectForKey_(v44, v45, @"dateOfCreation");

      v46 = MEMORY[0x277CBEAA8];
      objc_msgSend_doubleValue(v96, v47, v48);
      v51 = objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(v46, v49, v50);
      v54 = objc_msgSend_userInfo(v6, v52, v53);
      v56 = objc_msgSend_objectForKey_(v54, v55, @"waypointColor");

      v57 = objc_alloc(MEMORY[0x277D75348]);
      v59 = objc_msgSend_objectAtIndexedSubscript_(v56, v58, 0);
      objc_msgSend_doubleValue(v59, v60, v61);
      v63 = v62;
      v65 = objc_msgSend_objectAtIndexedSubscript_(v56, v64, 1);
      objc_msgSend_doubleValue(v65, v66, v67);
      v69 = v68;
      v71 = objc_msgSend_objectAtIndexedSubscript_(v56, v70, 2);
      objc_msgSend_doubleValue(v71, v72, v73);
      v75 = v74;
      v77 = objc_msgSend_objectAtIndexedSubscript_(v56, v76, 3);
      objc_msgSend_doubleValue(v77, v78, v79);
      v83 = objc_msgSend_initWithRed_green_blue_alpha_(v57, v80, v81, v63, v69, v75, v82);

      v86 = objc_msgSend_userInfo(v6, v84, v85);
      v88 = objc_msgSend_objectForKey_(v86, v87, @"waypointEnabled");

      v95 = objc_msgSend_intValue(v88, v89, v90) == 1;
      v92 = objc_msgSend_waypointForDescriptorWithUUID_creationTime_label_color_symbol_location_isEnabled_(NCWaypoint, v91, v101, v51, v100, v83, v41, v97, v95);
    }

    else
    {
      v93 = NCLogForCategory(7uLL);
      if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
      {
        sub_23BD67568(v93);
      }

      v92 = 0;
    }
  }

  else
  {
    v92 = 0;
  }

  return v92;
}

- (id)_guidesWaypointWithUUID:(id)d
{
  v35 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v7 = objc_msgSend_sharedManager(NCGuidesManager, v5, v6);
  v10 = objc_msgSend_allEnabledWaypoints(v7, v8, v9);

  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = sub_23BD51BEC;
  v27[3] = &unk_278B949B0;
  v11 = dCopy;
  v28 = v11;
  v13 = objc_msgSend_indexOfObjectPassingTest_(v10, v12, v27);
  if (v13 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = NCLogForCategory(7uLL);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v18 = objc_msgSend_UUIDString(v11, v16, v17);
      *buf = 134218498;
      selfCopy = self;
      v31 = 2080;
      v32 = "[WaypointsComplicationDataSource _guidesWaypointWithUUID:]";
      v33 = 2112;
      v34 = v18;
      _os_log_impl(&dword_23BD26000, v15, OS_LOG_TYPE_DEFAULT, "(%p) %s Did not find waypoint complication with uuid %@ in guide manager.", buf, 0x20u);
    }

    v19 = 0;
  }

  else
  {
    v19 = objc_msgSend_objectAtIndexedSubscript_(v10, v14, v13);
    v15 = NCLogForCategory(7uLL);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v22 = objc_msgSend_label(v19, v20, v21);
      v25 = objc_msgSend_UUIDString(v11, v23, v24);
      *buf = 136315650;
      selfCopy = "[WaypointsComplicationDataSource _guidesWaypointWithUUID:]";
      v31 = 2112;
      v32 = v22;
      v33 = 2112;
      v34 = v25;
      _os_log_impl(&dword_23BD26000, v15, OS_LOG_TYPE_DEFAULT, "%s found waypoint complication %@ with uuid %@ in guide manager.", buf, 0x20u);
    }
  }

  return v19;
}

@end