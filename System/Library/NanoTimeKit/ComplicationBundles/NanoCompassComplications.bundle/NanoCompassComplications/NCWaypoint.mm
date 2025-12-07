@interface NCWaypoint
+ (NCWaypoint)idealizedSmartWaypoint;
+ (NCWaypoint)idealizedWaypoint;
+ (id)databaseWaypointInDbWithUUID:(id)d altitude:(id)altitude;
+ (id)defaultMapGuideWaypointIconColor;
+ (id)idealizedWaypointSymbolColor;
+ (id)parkedCarLabel;
+ (id)parkedCarSymbolColor;
+ (id)parkedCarWaypointWithUUID:(id)d;
+ (id)randomizedWaypoint;
+ (id)sampleParkedCarWaypointWithLocation:(id)location;
+ (id)waypointForCollectionPlaceItem:(id)item inGuide:(id)guide;
+ (id)waypointForCoreDataWaypoint:(id)waypoint;
+ (id)waypointForDescriptorWithUUID:(id)d creationTime:(id)time label:(id)label color:(id)color symbol:(id)symbol location:(id)location isEnabled:(BOOL)enabled;
- (BOOL)_isEqualToNCWaypoint:(id)waypoint;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEquivalentCellularWaypoint:(id)waypoint;
- (BOOL)isSignificantlyDifferentFrom:(id)from;
- (BOOL)isSystemWaypoint;
- (NCWaypoint)initWithCoder:(id)coder;
- (NCWaypoint)initWithLabel:(id)label shortLabel:(id)shortLabel explanatoryDescription:(id)description color:(id)color highlightColor:(id)highlightColor symbol:(id)symbol type:(int64_t)type location:(id)self0 altitude:(id)self1 isEnabled:(BOOL)self2;
- (NCWaypoint)initWithUUID:(id)d creationTime:(id)time label:(id)label shortLabel:(id)shortLabel explanatoryDescription:(id)description color:(id)color highlightColor:(id)highlightColor symbol:(id)self0 styleAttributes:(id)self1 type:(int64_t)self2 location:(id)self3 altitude:(id)self4 isEnabled:(BOOL)self5 mapKitID:(id)self6 muid:(id)self7;
- (NCWaypoint)initWithUUID:(id)d label:(id)label shortLabel:(id)shortLabel explanatoryDescription:(id)description color:(id)color highlightColor:(id)highlightColor symbol:(id)symbol styleAttributes:(id)self0 type:(int64_t)self1 location:(id)self2 altitude:(id)self3 isEnabled:(BOOL)self4 mapKitID:(id)self5 muid:(id)self6;
- (NCWaypoint)initWithUUID:(id)d label:(id)label shortLabel:(id)shortLabel explanatoryDescription:(id)description color:(id)color highlightColor:(id)highlightColor symbol:(id)symbol type:(int64_t)self0 location:(id)self1 altitude:(id)self2 isEnabled:(BOOL)self3;
- (NCWaypoint)initWithUUID:(id)d label:(id)label shortLabel:(id)shortLabel explanatoryDescription:(id)description color:(id)color highlightColor:(id)highlightColor symbol:(id)symbol type:(int64_t)self0 location:(id)self1 altitude:(id)self2 isEnabled:(BOOL)self3 mapKitID:(id)self4 muid:(id)self5;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setLabelColor:(id)color;
@end

@implementation NCWaypoint

- (BOOL)isSignificantlyDifferentFrom:(id)from
{
  fromCopy = from;
  v7 = objc_msgSend_location(self, v5, v6);
  if (v7 && (v10 = v7, objc_msgSend_location(fromCopy, v8, v9), v11 = objc_claimAutoreleasedReturnValue(), v11, v10, v11))
  {
    v14 = objc_msgSend_location(self, v12, v13);
    v17 = objc_msgSend_location(fromCopy, v15, v16);
    objc_msgSend_distanceFromLocation_(v14, v18, v17);
    v20 = v19 >= 160.93;
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

+ (id)parkedCarSymbolColor
{
  if (qword_27E1C5360 != -1)
  {
    sub_23BD6783C();
  }

  v3 = qword_27E1C5358;

  return v3;
}

+ (id)parkedCarLabel
{
  if (qword_27E1C5370 != -1)
  {
    sub_23BD67850();
  }

  v3 = qword_27E1C5368;

  return v3;
}

+ (id)idealizedWaypointSymbolColor
{
  if (qword_27E1C5380 != -1)
  {
    sub_23BD67864();
  }

  v3 = qword_27E1C5378;

  return v3;
}

+ (id)defaultMapGuideWaypointIconColor
{
  if (qword_27E1C5390 != -1)
  {
    sub_23BD67878();
  }

  v3 = qword_27E1C5388;

  return v3;
}

+ (NCWaypoint)idealizedWaypoint
{
  if (qword_27E1C53A0 != -1)
  {
    sub_23BD6788C();
  }

  v3 = qword_27E1C5398;

  return v3;
}

+ (NCWaypoint)idealizedSmartWaypoint
{
  if (qword_27E1C53B0 != -1)
  {
    sub_23BD678A0();
  }

  v3 = qword_27E1C53A8;

  return v3;
}

+ (id)randomizedWaypoint
{
  v2 = objc_alloc(MEMORY[0x277CE41F8]);
  v5 = objc_msgSend_initWithLatitude_longitude_(v2, v3, v4, 37.280737, -121.997956);
  v8 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v6, v7, 275.0);
  v9 = [NCWaypoint alloc];
  v12 = objc_msgSend_orangeColor(MEMORY[0x277D75348], v10, v11);
  v16 = 1;
  isEnabled = objc_msgSend_initWithLabel_color_symbol_type_location_altitude_isEnabled_(v9, v13, @"Tent", v12, @"house.fill", 4, v5, v8, v16);

  return isEnabled;
}

+ (id)parkedCarWaypointWithUUID:(id)d
{
  dCopy = d;
  v5 = [self alloc];
  v8 = objc_msgSend_date(MEMORY[0x277CBEAA8], v6, v7);
  v11 = objc_msgSend_parkedCarLabel(NCWaypoint, v9, v10);
  v14 = objc_msgSend_parkedCarSymbolColor(NCWaypoint, v12, v13);
  v18 = 1;
  isEnabled = objc_msgSend_initWithUUID_creationTime_label_shortLabel_explanatoryDescription_color_highlightColor_symbol_type_location_altitude_isEnabled_(v5, v15, dCopy, v8, v11, 0, 0, v14, 0, @"car.fill", 1, 0, 0, v18);

  return isEnabled;
}

+ (id)sampleParkedCarWaypointWithLocation:(id)location
{
  locationCopy = location;
  v5 = [self alloc];
  v8 = objc_msgSend_parkedCarLabel(NCWaypoint, v6, v7);
  v11 = objc_msgSend_parkedCarSymbolColor(NCWaypoint, v9, v10);
  v15 = 1;
  isEnabled = objc_msgSend_initWithLabel_color_symbol_type_location_altitude_isEnabled_(v5, v12, v8, v11, @"car.fill", 1, locationCopy, 0, v15);

  return isEnabled;
}

- (NCWaypoint)initWithLabel:(id)label shortLabel:(id)shortLabel explanatoryDescription:(id)description color:(id)color highlightColor:(id)highlightColor symbol:(id)symbol type:(int64_t)type location:(id)self0 altitude:(id)self1 isEnabled:(BOOL)self2
{
  v18 = MEMORY[0x277CCAD78];
  altitudeCopy = altitude;
  locationCopy = location;
  symbolCopy = symbol;
  highlightColorCopy = highlightColor;
  colorCopy = color;
  descriptionCopy = description;
  shortLabelCopy = shortLabel;
  labelCopy = label;
  v29 = objc_msgSend_UUID(v18, v27, v28);
  isEnabled_mapKitID_muid = objc_msgSend_initWithUUID_label_shortLabel_explanatoryDescription_color_highlightColor_symbol_type_location_altitude_isEnabled_mapKitID_muid_(self, v30, v29, labelCopy, shortLabelCopy, descriptionCopy, colorCopy, highlightColorCopy, symbolCopy, type, locationCopy, altitudeCopy, enabled, 0, 0);

  return isEnabled_mapKitID_muid;
}

- (NCWaypoint)initWithUUID:(id)d label:(id)label shortLabel:(id)shortLabel explanatoryDescription:(id)description color:(id)color highlightColor:(id)highlightColor symbol:(id)symbol type:(int64_t)self0 location:(id)self1 altitude:(id)self2 isEnabled:(BOOL)self3
{
  v18 = MEMORY[0x277CBEAA8];
  altitudeCopy = altitude;
  locationCopy = location;
  symbolCopy = symbol;
  colorCopy = color;
  descriptionCopy = description;
  shortLabelCopy = shortLabel;
  labelCopy = label;
  dCopy = d;
  v29 = objc_msgSend_date(v18, v27, v28);
  isEnabled_mapKitID_muid = objc_msgSend_initWithUUID_creationTime_label_shortLabel_explanatoryDescription_color_highlightColor_symbol_styleAttributes_type_location_altitude_isEnabled_mapKitID_muid_(self, v30, dCopy, v29, labelCopy, shortLabelCopy, descriptionCopy, colorCopy, 0, symbolCopy, 0, type, locationCopy, altitudeCopy, enabled, 0, 0);

  return isEnabled_mapKitID_muid;
}

- (NCWaypoint)initWithUUID:(id)d label:(id)label shortLabel:(id)shortLabel explanatoryDescription:(id)description color:(id)color highlightColor:(id)highlightColor symbol:(id)symbol type:(int64_t)self0 location:(id)self1 altitude:(id)self2 isEnabled:(BOOL)self3 mapKitID:(id)self4 muid:(id)self5
{
  v34 = MEMORY[0x277CBEAA8];
  muidCopy = muid;
  iDCopy = iD;
  altitudeCopy = altitude;
  locationCopy = location;
  symbolCopy = symbol;
  highlightColorCopy = highlightColor;
  colorCopy = color;
  descriptionCopy = description;
  shortLabelCopy = shortLabel;
  labelCopy = label;
  dCopy = d;
  v38 = objc_msgSend_date(v34, v25, v26);
  isEnabled_mapKitID_muid = objc_msgSend_initWithUUID_creationTime_label_shortLabel_explanatoryDescription_color_highlightColor_symbol_styleAttributes_type_location_altitude_isEnabled_mapKitID_muid_(self, v27, dCopy, v38, labelCopy, shortLabelCopy, descriptionCopy, colorCopy, highlightColorCopy, symbolCopy, 0, type, locationCopy, altitudeCopy, enabled, iDCopy, muidCopy);

  return isEnabled_mapKitID_muid;
}

- (NCWaypoint)initWithUUID:(id)d label:(id)label shortLabel:(id)shortLabel explanatoryDescription:(id)description color:(id)color highlightColor:(id)highlightColor symbol:(id)symbol styleAttributes:(id)self0 type:(int64_t)self1 location:(id)self2 altitude:(id)self3 isEnabled:(BOOL)self4 mapKitID:(id)self5 muid:(id)self6
{
  v35 = MEMORY[0x277CBEAA8];
  muidCopy = muid;
  iDCopy = iD;
  altitudeCopy = altitude;
  locationCopy = location;
  attributesCopy = attributes;
  symbolCopy = symbol;
  highlightColorCopy = highlightColor;
  colorCopy = color;
  descriptionCopy = description;
  shortLabelCopy = shortLabel;
  labelCopy = label;
  dCopy = d;
  v42 = objc_msgSend_date(v35, v23, v24);
  v25 = descriptionCopy;
  isEnabled_mapKitID_muid = objc_msgSend_initWithUUID_creationTime_label_shortLabel_explanatoryDescription_color_highlightColor_symbol_styleAttributes_type_location_altitude_isEnabled_mapKitID_muid_(self, v26, dCopy, v42, labelCopy, shortLabelCopy, descriptionCopy, colorCopy, highlightColorCopy, symbolCopy, attributesCopy, type, locationCopy, altitudeCopy, enabled, iDCopy, muidCopy);

  return isEnabled_mapKitID_muid;
}

- (NCWaypoint)initWithUUID:(id)d creationTime:(id)time label:(id)label shortLabel:(id)shortLabel explanatoryDescription:(id)description color:(id)color highlightColor:(id)highlightColor symbol:(id)self0 styleAttributes:(id)self1 type:(int64_t)self2 location:(id)self3 altitude:(id)self4 isEnabled:(BOOL)self5 mapKitID:(id)self6 muid:(id)self7
{
  dCopy = d;
  timeCopy = time;
  timeCopy2 = time;
  labelCopy = label;
  labelCopy2 = label;
  shortLabelCopy = shortLabel;
  descriptionCopy = description;
  colorCopy = color;
  highlightColorCopy = highlightColor;
  symbolCopy = symbol;
  attributesCopy = attributes;
  locationCopy = location;
  altitudeCopy = altitude;
  iDCopy = iD;
  muidCopy = muid;
  v45.receiver = self;
  v45.super_class = NCWaypoint;
  v28 = [(NCWaypoint *)&v45 init];
  v29 = v28;
  if (v28)
  {
    objc_storeStrong(&v28->_uuid, d);
    objc_storeStrong(&v29->_timestampOfCreation, timeCopy);
    v29->_enabled = enabled;
    objc_storeStrong(&v29->_label, labelCopy);
    objc_storeStrong(&v29->_shortLabel, shortLabel);
    objc_storeStrong(&v29->_explanatoryDescription, description);
    objc_storeStrong(&v29->_labelColor, color);
    objc_storeStrong(&v29->_highlightColor, highlightColor);
    objc_storeStrong(&v29->_symbol, symbol);
    objc_storeStrong(&v29->_styleAttributes, attributes);
    v29->_type = type;
    objc_storeStrong(&v29->_location, location);
    if (altitudeCopy)
    {
      objc_msgSend_doubleValue(altitudeCopy, v30, v31);
      v29->_altitude = v32;
      v29->_altitudePopulated = 1;
    }

    objc_storeStrong(&v29->_mapKitID, iD);
    objc_storeStrong(&v29->_muid, muid);
  }

  return v29;
}

- (id)description
{
  labelColorDescription = self->_labelColorDescription;
  if (!labelColorDescription)
  {
    labelColor = self->_labelColor;
    if (!labelColor)
    {
      goto LABEL_6;
    }

    v14 = 0;
    v15 = 0;
    v13 = 0;
    v12 = 0;
    if (objc_msgSend_getRed_green_blue_alpha_(labelColor, a2, &v15, &v14, &v13, &v12))
    {
      v5 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"(R:%.2f,G:%.2f,B:%.2f,a:%.2f)", v15, v14, v13, v12);
      v6 = self->_labelColorDescription;
      self->_labelColorDescription = v5;
    }

    labelColorDescription = self->_labelColorDescription;
    if (!labelColorDescription)
    {
LABEL_6:
      v7 = self->_labelColorDescription;
      self->_labelColorDescription = @"nil";

      labelColorDescription = self->_labelColorDescription;
    }
  }

  uuid = self->_uuid;
  symbol = self->_symbol;
  if (self->_enabled)
  {
    objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"<NCWaypoint:%@:%@:%@:%@ mapKitID:%@ muid:%@>", uuid, symbol, labelColorDescription, @"Enabled", self->_mapKitID, self->_muid);
  }

  else
  {
    objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"<NCWaypoint:%@:%@:%@:%@ mapKitID:%@ muid:%@>", uuid, symbol, labelColorDescription, @"Disabled", self->_mapKitID, self->_muid);
  }
  v10 = ;

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    isEqualToNCWaypoint = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      isEqualToNCWaypoint = objc_msgSend__isEqualToNCWaypoint_(self, v5, equalCopy);
    }

    else
    {
      isEqualToNCWaypoint = 0;
    }
  }

  return isEqualToNCWaypoint;
}

- (BOOL)_isEqualToNCWaypoint:(id)waypoint
{
  waypointCopy = waypoint;
  if (!waypointCopy)
  {
    goto LABEL_47;
  }

  v7 = objc_msgSend_uuid(self, v4, v5);
  v10 = objc_msgSend_uuid(waypointCopy, v8, v9);
  v12 = v10;
  if (v7 == v10)
  {
  }

  else
  {
    isEqual = objc_msgSend_isEqual_(v7, v11, v10);

    if (!isEqual)
    {
      goto LABEL_47;
    }
  }

  v16 = objc_msgSend_timestampOfCreation(self, v14, v15);
  v19 = objc_msgSend_timestampOfCreation(waypointCopy, v17, v18);
  v21 = v19;
  if (v16 == v19)
  {
  }

  else
  {
    v22 = objc_msgSend_isEqual_(v16, v20, v19);

    if (!v22)
    {
      goto LABEL_47;
    }
  }

  v25 = objc_msgSend_label(self, v23, v24);
  v28 = objc_msgSend_label(waypointCopy, v26, v27);
  v30 = v28;
  if (v25 == v28)
  {
  }

  else
  {
    v31 = objc_msgSend_isEqual_(v25, v29, v28);

    if (!v31)
    {
      goto LABEL_47;
    }
  }

  v34 = objc_msgSend_shortLabel(self, v32, v33);
  v37 = objc_msgSend_shortLabel(waypointCopy, v35, v36);
  v39 = v37;
  if (v34 == v37)
  {
  }

  else
  {
    v40 = objc_msgSend_isEqual_(v34, v38, v37);

    if (!v40)
    {
      goto LABEL_47;
    }
  }

  v43 = objc_msgSend_explanatoryDescription(self, v41, v42);
  v46 = objc_msgSend_explanatoryDescription(waypointCopy, v44, v45);
  v48 = v46;
  if (v43 == v46)
  {
  }

  else
  {
    v49 = objc_msgSend_isEqual_(v43, v47, v46);

    if (!v49)
    {
      goto LABEL_47;
    }
  }

  v52 = objc_msgSend_labelColor(self, v50, v51);
  v55 = objc_msgSend_labelColor(waypointCopy, v53, v54);
  v57 = v55;
  if (v52 == v55)
  {
  }

  else
  {
    v58 = objc_msgSend_isEqual_(v52, v56, v55);

    if (!v58)
    {
      goto LABEL_47;
    }
  }

  v61 = objc_msgSend_highlightColor(self, v59, v60);
  v64 = objc_msgSend_highlightColor(waypointCopy, v62, v63);
  v66 = v64;
  if (v61 == v64)
  {
  }

  else
  {
    v67 = objc_msgSend_isEqual_(v61, v65, v64);

    if (!v67)
    {
      goto LABEL_47;
    }
  }

  v70 = objc_msgSend_symbol(self, v68, v69);
  v73 = objc_msgSend_symbol(waypointCopy, v71, v72);
  v75 = v73;
  if (v70 == v73)
  {
  }

  else
  {
    v76 = objc_msgSend_isEqual_(v70, v74, v73);

    if (!v76)
    {
      goto LABEL_47;
    }
  }

  v79 = objc_msgSend_styleAttributes(self, v77, v78);
  v82 = objc_msgSend_styleAttributes(waypointCopy, v80, v81);
  v84 = v82;
  if (v79 == v82)
  {
  }

  else
  {
    v85 = objc_msgSend_isEqual_(v79, v83, v82);

    if (!v85)
    {
      goto LABEL_47;
    }
  }

  v88 = objc_msgSend_type(self, v86, v87);
  if (v88 != objc_msgSend_type(waypointCopy, v89, v90))
  {
    goto LABEL_47;
  }

  isEnabled = objc_msgSend_isEnabled(self, v91, v92);
  if (isEnabled != objc_msgSend_isEnabled(waypointCopy, v94, v95))
  {
    goto LABEL_47;
  }

  v98 = objc_msgSend_location(self, v96, v97);
  objc_msgSend_coordinate(v98, v99, v100);
  v102 = v101;
  v105 = objc_msgSend_location(waypointCopy, v103, v104);
  objc_msgSend_coordinate(v105, v106, v107);
  v109 = v108;

  if (v102 != v109)
  {
    goto LABEL_47;
  }

  v112 = objc_msgSend_location(self, v110, v111);
  objc_msgSend_coordinate(v112, v113, v114);
  v116 = v115;
  v119 = objc_msgSend_location(waypointCopy, v117, v118);
  objc_msgSend_coordinate(v119, v120, v121);
  v123 = v122;

  if (v116 != v123)
  {
    goto LABEL_47;
  }

  isAltitudePopulated = objc_msgSend_isAltitudePopulated(self, v124, v125);
  if (isAltitudePopulated != objc_msgSend_isAltitudePopulated(waypointCopy, v127, v128))
  {
    goto LABEL_47;
  }

  if (objc_msgSend_isAltitudePopulated(self, v129, v130))
  {
    objc_msgSend_altitude(self, v131, v132);
    v134 = v133;
    objc_msgSend_altitude(waypointCopy, v135, v136);
    if (v134 != v137)
    {
      goto LABEL_47;
    }
  }

  v138 = objc_msgSend_mapKitID(self, v131, v132);
  v141 = objc_msgSend_mapKitID(waypointCopy, v139, v140);
  v143 = v141;
  if (v138 == v141)
  {
  }

  else
  {
    v144 = objc_msgSend_isEqual_(v138, v142, v141);

    if (!v144)
    {
LABEL_47:
      v147 = 0;
      goto LABEL_48;
    }
  }

  v149 = objc_msgSend_muid(self, v145, v146);
  v153 = objc_msgSend_muid(waypointCopy, v150, v151);
  if (v149 == v153)
  {
    v147 = 1;
  }

  else
  {
    v154 = v153;
    v155 = objc_msgSend_isEqual_(v149, v152, v153);
    v153 = v154;
    v147 = v155;
  }

LABEL_48:
  return v147;
}

- (unint64_t)hash
{
  v3 = objc_msgSend_uuid(self, a2, v2);
  v6 = objc_msgSend_hash(v3, v4, v5);

  return v6;
}

- (BOOL)isSystemWaypoint
{
  if (objc_msgSend_isConnectivityWaypoint(self, a2, v2))
  {
    return 1;
  }

  return MEMORY[0x2821F9670](self, sel_isParkedCarWaypoint, v4);
}

- (void)setLabelColor:(id)color
{
  colorCopy = color;
  if ((objc_msgSend_isEqual_(self->_labelColor, v5, colorCopy) & 1) == 0)
  {
    objc_storeStrong(&self->_labelColor, color);
    labelColorDescription = self->_labelColorDescription;
    self->_labelColorDescription = 0;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  if (objc_msgSend_isAltitudePopulated(self, a2, zone))
  {
    v6 = MEMORY[0x277CCABB0];
    objc_msgSend_altitude(self, v4, v5);
    v46 = objc_msgSend_numberWithDouble_(v6, v7, v8);
  }

  else
  {
    v46 = 0;
  }

  v9 = [NCWaypoint alloc];
  v45 = objc_msgSend_uuid(self, v10, v11);
  v44 = objc_msgSend_timestampOfCreation(self, v12, v13);
  v16 = objc_msgSend_label(self, v14, v15);
  v43 = objc_msgSend_shortLabel(self, v17, v18);
  v21 = objc_msgSend_explanatoryDescription(self, v19, v20);
  v24 = objc_msgSend_labelColor(self, v22, v23);
  v27 = objc_msgSend_highlightColor(self, v25, v26);
  v30 = objc_msgSend_symbol(self, v28, v29);
  v33 = objc_msgSend_type(self, v31, v32);
  v36 = objc_msgSend_location(self, v34, v35);
  isEnabled = objc_msgSend_isEnabled(self, v37, v38);
  v42 = objc_msgSend_initWithUUID_creationTime_label_shortLabel_explanatoryDescription_color_highlightColor_symbol_type_location_altitude_isEnabled_(v9, v39, v45, v44, v16, v43, v21, v24, v27, v30, v33, v36, v46, isEnabled);

  return v42;
}

- (NCWaypoint)initWithCoder:(id)coder
{
  coderCopy = coder;
  objc_msgSend_decodeDoubleForKey_(coderCopy, v4, @"latitude");
  v6 = v5;
  objc_msgSend_decodeDoubleForKey_(coderCopy, v7, @"longitude");
  v9 = v8;
  v10 = objc_alloc(MEMORY[0x277CE41F8]);
  v65 = objc_msgSend_initWithLatitude_longitude_(v10, v11, v12, v6, v9);
  if (objc_msgSend_decodeBoolForKey_(coderCopy, v13, @"altitudePopulated"))
  {
    v15 = MEMORY[0x277CCABB0];
    objc_msgSend_decodeDoubleForKey_(coderCopy, v14, @"altitude");
    v18 = objc_msgSend_numberWithDouble_(v15, v16, v17);
  }

  else
  {
    v18 = 0;
  }

  v19 = objc_opt_class();
  v64 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v20, v19, @"uuid");
  v21 = objc_opt_class();
  v59 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v22, v21, @"creationTimestamp");
  v23 = objc_opt_class();
  v62 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v24, v23, @"label");
  v25 = objc_opt_class();
  v27 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v26, v25, @"shortLabel");
  v28 = objc_opt_class();
  v61 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v29, v28, @"explanatoryDescription");
  v30 = objc_opt_class();
  v60 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v31, v30, @"labelColor");
  v32 = objc_opt_class();
  v58 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v33, v32, @"highlightColor");
  v34 = objc_opt_class();
  v57 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v35, v34, @"symbol");
  v36 = objc_opt_class();
  v38 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v37, v36, @"styleAttributes");
  v40 = objc_msgSend_decodeIntegerForKey_(coderCopy, v39, @"type");
  v42 = objc_msgSend_decodeBoolForKey_(coderCopy, v41, @"enabled");
  v43 = objc_opt_class();
  v45 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v44, v43, @"mapKitID");
  v46 = objc_opt_class();
  v48 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v47, v46, @"muid");
  v56 = v42;
  isEnabled_mapKitID_muid = objc_msgSend_initWithUUID_creationTime_label_shortLabel_explanatoryDescription_color_highlightColor_symbol_styleAttributes_type_location_altitude_isEnabled_mapKitID_muid_(self, v49, v64, v59, v62, v27, v61, v60, v58, v57, v38, v40, v65, v18, v56, v45, v48);

  if (isEnabled_mapKitID_muid)
  {
    v51 = objc_opt_class();
    v53 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v52, v51, @"guideUUID");
    guideUUID = isEnabled_mapKitID_muid->_guideUUID;
    isEnabled_mapKitID_muid->_guideUUID = v53;
  }

  return isEnabled_mapKitID_muid;
}

- (void)encodeWithCoder:(id)coder
{
  label = self->_label;
  coderCopy = coder;
  objc_msgSend_encodeObject_forKey_(coderCopy, v5, label, @"label");
  objc_msgSend_encodeObject_forKey_(coderCopy, v6, self->_shortLabel, @"shortLabel");
  objc_msgSend_encodeObject_forKey_(coderCopy, v7, self->_explanatoryDescription, @"explanatoryDescription");
  objc_msgSend_coordinate(self->_location, v8, v9);
  objc_msgSend_encodeDouble_forKey_(coderCopy, v10, @"latitude");
  objc_msgSend_coordinate(self->_location, v11, v12);
  objc_msgSend_encodeDouble_forKey_(coderCopy, v13, @"longitude", v14);
  objc_msgSend_encodeObject_forKey_(coderCopy, v15, self->_labelColor, @"labelColor");
  objc_msgSend_encodeObject_forKey_(coderCopy, v16, self->_highlightColor, @"highlightColor");
  objc_msgSend_encodeObject_forKey_(coderCopy, v17, self->_symbol, @"symbol");
  objc_msgSend_encodeObject_forKey_(coderCopy, v18, self->_styleAttributes, @"styleAttributes");
  objc_msgSend_encodeBool_forKey_(coderCopy, v19, self->_enabled, @"enabled");
  objc_msgSend_encodeObject_forKey_(coderCopy, v20, self->_timestampOfCreation, @"creationTimestamp");
  objc_msgSend_encodeObject_forKey_(coderCopy, v21, self->_uuid, @"uuid");
  objc_msgSend_encodeDouble_forKey_(coderCopy, v22, @"altitude", self->_altitude);
  objc_msgSend_encodeBool_forKey_(coderCopy, v23, self->_altitudePopulated, @"altitudePopulated");
  objc_msgSend_encodeInteger_forKey_(coderCopy, v24, self->_type, @"type");
  objc_msgSend_encodeObject_forKey_(coderCopy, v25, self->_guideUUID, @"guideUUID");
  objc_msgSend_encodeObject_forKey_(coderCopy, v26, self->_mapKitID, @"mapKitID");
  objc_msgSend_encodeObject_forKey_(coderCopy, v27, self->_muid, @"muid");
}

- (BOOL)isEquivalentCellularWaypoint:(id)waypoint
{
  waypointCopy = waypoint;
  if (self == waypointCopy)
  {
    v13 = 1;
  }

  else
  {
    v7 = objc_msgSend_type(self, v4, v5);
    if (v7 == objc_msgSend_type(waypointCopy, v8, v9))
    {
      isConnectivityWaypoint = objc_msgSend_isConnectivityWaypoint(self, v10, v11);
    }

    else
    {
      isConnectivityWaypoint = 0;
    }

    v14 = objc_msgSend_location(self, v10, v11);
    objc_msgSend_coordinate(v14, v15, v16);
    v18 = v17;
    v20 = v19;

    v23 = objc_msgSend_location(waypointCopy, v21, v22);
    objc_msgSend_coordinate(v23, v24, v25);
    v27 = v26;
    v29 = v28;

    v32 = objc_msgSend_labelColor(self, v30, v31);
    v35 = objc_msgSend_labelColor(waypointCopy, v33, v34);
    if (objc_msgSend_isEqual_(v32, v36, v35))
    {
      v39 = objc_msgSend_highlightColor(self, v37, v38);
      v42 = objc_msgSend_highlightColor(waypointCopy, v40, v41);
      isEqual = objc_msgSend_isEqual_(v39, v43, v42);
    }

    else
    {
      isEqual = 0;
    }

    if (v18 == v27)
    {
      v45 = isConnectivityWaypoint;
    }

    else
    {
      v45 = 0;
    }

    if (v20 != v29)
    {
      v45 = 0;
    }

    v13 = v45 & isEqual;
  }

  return v13;
}

+ (id)waypointForDescriptorWithUUID:(id)d creationTime:(id)time label:(id)label color:(id)color symbol:(id)symbol location:(id)location isEnabled:(BOOL)enabled
{
  locationCopy = location;
  symbolCopy = symbol;
  colorCopy = color;
  labelCopy = label;
  timeCopy = time;
  dCopy = d;
  v21 = [self alloc];
  isEnabled = objc_msgSend_initWithUUID_creationTime_label_shortLabel_explanatoryDescription_color_highlightColor_symbol_type_location_altitude_isEnabled_(v21, v22, dCopy, timeCopy, labelCopy, 0, 0, colorCopy, 0, symbolCopy, 4, locationCopy, 0, enabled);

  return isEnabled;
}

+ (id)waypointForCoreDataWaypoint:(id)waypoint
{
  waypointCopy = waypoint;
  if (objc_msgSend_altitudePopulated(waypointCopy, v5, v6))
  {
    v9 = MEMORY[0x277CCABB0];
    objc_msgSend_altitude(waypointCopy, v7, v8);
    v12 = objc_msgSend_numberWithDouble_(v9, v10, v11);
  }

  else
  {
    v12 = 0;
  }

  v13 = [self alloc];
  v16 = objc_msgSend_uuid(waypointCopy, v14, v15);
  v19 = objc_msgSend_timeOfCreation(waypointCopy, v17, v18);
  v22 = objc_msgSend_label(waypointCopy, v20, v21);
  v25 = objc_msgSend_labelColor(waypointCopy, v23, v24);
  v28 = objc_msgSend_symbol(waypointCopy, v26, v27);
  v31 = objc_msgSend_type(waypointCopy, v29, v30);
  v34 = objc_msgSend_coreLocation(waypointCopy, v32, v33);
  v40 = objc_msgSend_enabled(waypointCopy, v35, v36);
  isEnabled = objc_msgSend_initWithUUID_creationTime_label_shortLabel_explanatoryDescription_color_highlightColor_symbol_type_location_altitude_isEnabled_(v13, v37, v16, v19, v22, 0, 0, v25, 0, v28, v31, v34, v12, v40);

  return isEnabled;
}

+ (id)waypointForCollectionPlaceItem:(id)item inGuide:(id)guide
{
  itemCopy = item;
  v6 = MEMORY[0x277CE41F8];
  guideCopy = guide;
  v7 = [v6 alloc];
  v10 = objc_msgSend_latitude(itemCopy, v8, v9);
  objc_msgSend_doubleValue(v10, v11, v12);
  v14 = v13;
  v17 = objc_msgSend_longitude(itemCopy, v15, v16);
  objc_msgSend_doubleValue(v17, v18, v19);
  v69 = objc_msgSend_initWithLatitude_longitude_(v7, v20, v21, v14, v22);

  v25 = objc_msgSend_muid(itemCopy, v23, v24);

  if (v25)
  {
    v28 = objc_msgSend_muid(itemCopy, v26, v27);
    v31 = objc_msgSend_unsignedLongLongValue(v28, v29, v30);

    v67 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x277CCABB0], v32, v31);
    v33 = objc_alloc(MEMORY[0x277CD4E98]);
    v35 = objc_msgSend_initWithMUID_(v33, v34, v31);
  }

  else
  {
    v35 = 0;
    v67 = 0;
  }

  v36 = objc_msgSend_customName(itemCopy, v26, v27);
  v39 = v36;
  if ((!v36 || !objc_msgSend_length(v36, v37, v38)) && (objc_msgSend_mapItemName(itemCopy, v37, v38), v40 = objc_claimAutoreleasedReturnValue(), v39, (v39 = v40) == 0) || !objc_msgSend_length(v39, v37, v38))
  {
    v43 = NanoCompassLocalizedString(@"MAPS_GUIDE_WAYPOINT_NAME");

    v39 = v43;
  }

  v44 = objc_msgSend_mapItemStorage(itemCopy, v41, v42);
  v47 = v44;
  if (!v44 || (objc_msgSend__styleAttributes(v44, v45, v46), (v48 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v48 = objc_msgSend_addressMarkerStyleAttributes(MEMORY[0x277D0EB18], v45, v46);
  }

  v49 = objc_msgSend_fillColorFor_(NCStyleAttributes, v45, v48);
  v52 = v49;
  v66 = v47;
  if (v49)
  {
    v53 = v49;
  }

  else
  {
    v53 = objc_msgSend_defaultMapGuideWaypointIconColor(NCWaypoint, v50, v51);
  }

  v54 = v53;
  v55 = [self alloc];
  v58 = objc_msgSend_identifier(itemCopy, v56, v57);
  v61 = objc_msgSend_createTime(itemCopy, v59, v60);
  isEnabled_mapKitID_muid = objc_msgSend_initWithUUID_creationTime_label_shortLabel_explanatoryDescription_color_highlightColor_symbol_styleAttributes_type_location_altitude_isEnabled_mapKitID_muid_(v55, v62, v58, v61, v39, 0, 0, v54, 0, @"mappin", v48, 2, v69, 0, 1, v35, v67);

  objc_msgSend_setGuideUUID_(isEnabled_mapKitID_muid, v64, guideCopy);

  return isEnabled_mapKitID_muid;
}

+ (id)databaseWaypointInDbWithUUID:(id)d altitude:(id)altitude
{
  v6 = MEMORY[0x277CE41F8];
  altitudeCopy = altitude;
  dCopy = d;
  v9 = [v6 alloc];
  v12 = objc_msgSend_initWithLatitude_longitude_(v9, v10, v11, -1.0, -1.0);
  v13 = [self alloc];
  v16 = objc_msgSend_now(MEMORY[0x277CBEAA8], v14, v15);
  v19 = objc_msgSend_defaultMapGuideWaypointIconColor(NCWaypoint, v17, v18);
  v22 = objc_msgSend_defaultMapGuideWaypointIconColor(NCWaypoint, v20, v21);
  v26 = 1;
  isEnabled = objc_msgSend_initWithUUID_creationTime_label_shortLabel_explanatoryDescription_color_highlightColor_symbol_type_location_altitude_isEnabled_(v13, v23, dCopy, v16, @"Placeholder", @"Placeholder", 0, v19, v22, @"mappin", 2, v12, altitudeCopy, v26);

  return isEnabled;
}

@end