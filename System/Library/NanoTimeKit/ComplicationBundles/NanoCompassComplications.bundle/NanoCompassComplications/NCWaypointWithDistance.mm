@interface NCWaypointWithDistance
- (NCWaypointWithDistance)initWithWaypoint:(id)waypoint distance:(double)distance;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)compare:(id)compare;
@end

@implementation NCWaypointWithDistance

- (NCWaypointWithDistance)initWithWaypoint:(id)waypoint distance:(double)distance
{
  waypointCopy = waypoint;
  v11.receiver = self;
  v11.super_class = NCWaypointWithDistance;
  v8 = [(NCWaypointWithDistance *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_waypoint, waypoint);
    v9->_distance = distance;
  }

  return v9;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  objc_msgSend_distance(self, v5, v6);
  v8 = v7;
  objc_msgSend_distance(compareCopy, v9, v10);
  if (v8 == v13)
  {
    v14 = objc_msgSend_waypoint(self, v11, v12);
    v17 = objc_msgSend_uuid(v14, v15, v16);
    v20 = objc_msgSend_waypoint(compareCopy, v18, v19);
    v23 = objc_msgSend_uuid(v20, v21, v22);
    v25 = objc_msgSend_compare_(v17, v24, v23);
  }

  else
  {
    objc_msgSend_distance(self, v11, v12);
    v27 = v26;
    objc_msgSend_distance(compareCopy, v28, v29);
    if (v27 >= v30)
    {
      v25 = 1;
    }

    else
    {
      v25 = -1;
    }
  }

  return v25;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_msgSend_waypoint(self, a2, zone);
  isAltitudePopulated = objc_msgSend_isAltitudePopulated(v4, v5, v6);

  if (isAltitudePopulated)
  {
    v10 = MEMORY[0x277CCABB0];
    v11 = objc_msgSend_waypoint(self, v8, v9);
    objc_msgSend_altitude(v11, v12, v13);
    v91 = objc_msgSend_numberWithDouble_(v10, v14, v15);
  }

  else
  {
    v91 = 0;
  }

  v16 = [NCWaypoint alloc];
  v88 = objc_msgSend_waypoint(self, v17, v18);
  v90 = objc_msgSend_uuid(v88, v19, v20);
  v87 = objc_msgSend_waypoint(self, v21, v22);
  v89 = objc_msgSend_timestampOfCreation(v87, v23, v24);
  v86 = objc_msgSend_waypoint(self, v25, v26);
  v29 = objc_msgSend_label(v86, v27, v28);
  v85 = objc_msgSend_waypoint(self, v30, v31);
  v80 = objc_msgSend_shortLabel(v85, v32, v33);
  v84 = objc_msgSend_waypoint(self, v34, v35);
  v79 = objc_msgSend_explanatoryDescription(v84, v36, v37);
  v83 = objc_msgSend_waypoint(self, v38, v39);
  v77 = objc_msgSend_labelColor(v83, v40, v41);
  v81 = objc_msgSend_waypoint(self, v42, v43);
  v76 = objc_msgSend_highlightColor(v81, v44, v45);
  v78 = objc_msgSend_waypoint(self, v46, v47);
  v50 = objc_msgSend_symbol(v78, v48, v49);
  v53 = objc_msgSend_waypoint(self, v51, v52);
  v56 = objc_msgSend_type(v53, v54, v55);
  v59 = objc_msgSend_waypoint(self, v57, v58);
  v62 = objc_msgSend_location(v59, v60, v61);
  v65 = objc_msgSend_waypoint(self, v63, v64);
  isEnabled = objc_msgSend_isEnabled(v65, v66, v67);
  v82 = objc_msgSend_initWithUUID_creationTime_label_shortLabel_explanatoryDescription_color_highlightColor_symbol_type_location_altitude_isEnabled_(v16, v68, v90, v89, v29, v80, v79, v77, v76, v50, v56, v62, v91, isEnabled);

  v69 = [NCWaypointWithDistance alloc];
  objc_msgSend_distance(self, v70, v71);
  v73 = objc_msgSend_initWithWaypoint_distance_(v69, v72, v82);

  return v73;
}

@end