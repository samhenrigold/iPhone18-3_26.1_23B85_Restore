@interface CLCircularRegion
- (BOOL)containsCoordinate:(CLLocationCoordinate2D)coordinate;
- (BOOL)isEqual:(id)equal;
- (CLCircularRegion)initWithCenter:(CLLocationCoordinate2D)center radius:(CLLocationDistance)radius identifier:(NSString *)identifier;
- (CLCircularRegion)initWithCenter:(CLLocationCoordinate2D)center radius:(double)radius identifier:(id)identifier nearbyAllowed:(BOOL)allowed;
- (CLCircularRegion)initWithCenter:(CLLocationCoordinate2D)center radius:(double)radius identifier:(id)identifier onBehalfOfBundleId:(id)id;
- (CLCircularRegion)initWithCenter:(CLLocationCoordinate2D)center radius:(double)radius referenceFrame:(int)frame allowMonitoringWhenNearby:(BOOL)nearby lowPower:(BOOL)power identifier:(id)identifier onBehalfOfBundleId:(id)id notifyOnEntry:(BOOL)self0 notifyOnExit:(BOOL)self1 conservativeEntry:(BOOL)self2 emergency:(BOOL)self3;
- (CLCircularRegion)initWithCenter:(CLLocationCoordinate2D)center radius:(double)radius referenceFrame:(int)frame allowMonitoringWhenNearby:(BOOL)nearby lowPower:(BOOL)power identifier:(id)identifier onBehalfOfBundleId:(id)id notifyOnEntry:(BOOL)self0 notifyOnExit:(BOOL)self1 conservativeEntry:(BOOL)self2 emergency:(BOOL)self3 deviceId:(id)self4 handoffTag:(id)self5;
- (CLCircularRegion)initWithCoder:(id)coder;
- (CLLocationCoordinate2D)center;
- (CLLocationCoordinate2D)geoCenter;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)initForLowPowerWithCenter:(CLLocationCoordinate2D)center radius:(double)radius identifier:(id)identifier;
- (id)initLegacyObjectWithCoder:(id)coder;
- (id)initNearbyAllowedWithCenter:(CLLocationCoordinate2D)center radius:(double)radius identifier:(id)identifier;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLCircularRegion

- (CLCircularRegion)initWithCenter:(CLLocationCoordinate2D)center radius:(CLLocationDistance)radius identifier:(NSString *)identifier
{
  BYTE2(v6) = 0;
  LOWORD(v6) = 1;
  return objc_msgSend_initWithCenter_radius_referenceFrame_allowMonitoringWhenNearby_lowPower_identifier_onBehalfOfBundleId_notifyOnEntry_notifyOnExit_conservativeEntry_emergency_(self, a2, 0, 0, 0, identifier, 0, 1, center.latitude, center.longitude, radius, v6);
}

- (CLCircularRegion)initWithCenter:(CLLocationCoordinate2D)center radius:(double)radius identifier:(id)identifier onBehalfOfBundleId:(id)id
{
  BYTE2(v7) = 0;
  LOWORD(v7) = 1;
  return objc_msgSend_initWithCenter_radius_referenceFrame_allowMonitoringWhenNearby_lowPower_identifier_onBehalfOfBundleId_notifyOnEntry_notifyOnExit_conservativeEntry_emergency_(self, a2, 0, 0, 0, identifier, id, 1, center.latitude, center.longitude, radius, v7);
}

- (CLCircularRegion)initWithCenter:(CLLocationCoordinate2D)center radius:(double)radius identifier:(id)identifier nearbyAllowed:(BOOL)allowed
{
  result = objc_msgSend_initWithCenter_radius_identifier_(self, a2, identifier, allowed, center.latitude, center.longitude, radius);
  if (result)
  {
    result->_allowMonitoringWhileNearby = allowed;
  }

  return result;
}

- (id)initNearbyAllowedWithCenter:(CLLocationCoordinate2D)center radius:(double)radius identifier:(id)identifier
{
  BYTE2(v6) = 0;
  LOWORD(v6) = 1;
  return objc_msgSend_initWithCenter_radius_referenceFrame_allowMonitoringWhenNearby_lowPower_identifier_onBehalfOfBundleId_notifyOnEntry_notifyOnExit_conservativeEntry_emergency_(self, a2, 0, 1, 0, identifier, 0, 1, center.latitude, center.longitude, radius, v6);
}

- (id)initForLowPowerWithCenter:(CLLocationCoordinate2D)center radius:(double)radius identifier:(id)identifier
{
  BYTE2(v6) = 0;
  LOWORD(v6) = 1;
  return objc_msgSend_initWithCenter_radius_referenceFrame_allowMonitoringWhenNearby_lowPower_identifier_onBehalfOfBundleId_notifyOnEntry_notifyOnExit_conservativeEntry_emergency_(self, a2, 0, 0, 1, identifier, 0, 1, center.latitude, center.longitude, radius, v6);
}

- (CLCircularRegion)initWithCenter:(CLLocationCoordinate2D)center radius:(double)radius referenceFrame:(int)frame allowMonitoringWhenNearby:(BOOL)nearby lowPower:(BOOL)power identifier:(id)identifier onBehalfOfBundleId:(id)id notifyOnEntry:(BOOL)self0 notifyOnExit:(BOOL)self1 conservativeEntry:(BOOL)self2 emergency:(BOOL)self3
{
  *(&v14 + 1) = __PAIR16__(emergency, conservativeEntry);
  LOBYTE(v14) = exit;
  return objc_msgSend_initWithCenter_radius_referenceFrame_allowMonitoringWhenNearby_lowPower_identifier_onBehalfOfBundleId_notifyOnEntry_notifyOnExit_conservativeEntry_emergency_deviceId_handoffTag_(self, a2, 0, nearby, power, identifier, id, entry, center.latitude, center.longitude, radius, v14, 0, 0);
}

- (CLCircularRegion)initWithCenter:(CLLocationCoordinate2D)center radius:(double)radius referenceFrame:(int)frame allowMonitoringWhenNearby:(BOOL)nearby lowPower:(BOOL)power identifier:(id)identifier onBehalfOfBundleId:(id)id notifyOnEntry:(BOOL)self0 notifyOnExit:(BOOL)self1 conservativeEntry:(BOOL)self2 emergency:(BOOL)self3 deviceId:(id)self4 handoffTag:(id)self5
{
  longitude = center.longitude;
  latitude = center.latitude;
  v23.receiver = self;
  v23.super_class = CLCircularRegion;
  result = [(CLRegion *)&v23 initWithIdentifier:identifier onBehalfOf:id regionType:1 notifyOnEntry:entry notifyOnExit:exit conservativeEntry:conservativeEntry emergency:emergency deviceId:deviceId handoffTag:tag];
  if (result)
  {
    result->_geoCenter.latitude = latitude;
    result->_geoCenter.longitude = longitude;
    result->_geoRadius = radius;
    result->_isLowPower = power;
    result->_desiredAccuracy = -1.0;
    result->_geoReferenceFrame = frame;
    result->_allowMonitoringWhileNearby = nearby;
  }

  return result;
}

- (CLCircularRegion)initWithCoder:(id)coder
{
  v41.receiver = self;
  v41.super_class = CLCircularRegion;
  v7 = [(CLRegion *)&v41 initWithCoder:?];
  if (v7)
  {
    v40 = 0uLL;
    v39 = 0;
    v38 = 0;
    v37 = 0;
    v36 = 0;
    if (objc_msgSend_allowsKeyedCoding(coder, v4, v5, v6))
    {
      objc_msgSend_decodeDoubleForKey_(coder, v8, @"kCLCircularRegionCodingKeyCenterLatitude", v9);
      *&v40 = v10;
      objc_msgSend_decodeDoubleForKey_(coder, v11, @"kCLCircularRegionCodingKeyCenterLongitude", v12);
      *(&v40 + 1) = v13;
      objc_msgSend_decodeDoubleForKey_(coder, v14, @"kCLCircularRegionCodingKeyRadius", v15);
      v39 = v16;
      if (objc_msgSend_containsValueForKey_(coder, v17, @"reserved", v18))
      {
        v38 = objc_msgSend_decodeIntForKey_(coder, v19, @"reserved", v20);
      }

      if (objc_msgSend_containsValueForKey_(coder, v19, @"kCLCircularRegionCodingKeyMonitoringNearby", v20))
      {
        HIBYTE(v37) = objc_msgSend_decodeBoolForKey_(coder, v21, @"kCLCircularRegionCodingKeyMonitoringNearby", v22);
      }

      if (objc_msgSend_containsValueForKey_(coder, v21, @"kCLCircularRegionCodingKeyLowPower", v22))
      {
        LOBYTE(v37) = objc_msgSend_decodeBoolForKey_(coder, v23, @"kCLCircularRegionCodingKeyLowPower", v24);
      }

      if (_os_feature_enabled_impl() && objc_msgSend_containsValueForKey_(coder, v25, @"kCLCircularRegionEncodedKeyVersion", v26))
      {
        objc_msgSend_decodeIntForKey_(coder, v27, @"kCLCircularRegionEncodedKeyVersion", v28);
      }
    }

    else
    {
      objc_msgSend_decodeValueOfObjCType_at_(coder, v8, "d", &v40);
      objc_msgSend_decodeValueOfObjCType_at_(coder, v29, "d", &v40 + 8);
      objc_msgSend_decodeValueOfObjCType_at_(coder, v30, "d", &v39);
      objc_msgSend_decodeValueOfObjCType_at_(coder, v31, "i", &v38);
      objc_msgSend_decodeValueOfObjCType_at_(coder, v32, "B", &v37 + 1);
      objc_msgSend_decodeValueOfObjCType_at_(coder, v33, "B", &v37);
      if (_os_feature_enabled_impl())
      {
        objc_msgSend_decodeValueOfObjCType_at_(coder, v34, "i", &v36);
      }
    }

    *(v7 + 104) = v40;
    *(v7 + 11) = v39;
    *(v7 + 21) = v38;
    *(v7 + 40) = v37;
    *(v7 + 12) = 0xBFF0000000000000;
  }

  return v7;
}

- (id)initLegacyObjectWithCoder:(id)coder
{
  v63 = 1;
  v62 = 1;
  v61 = 0;
  v59 = 0.0;
  v60 = 0.0;
  v58 = 0.0;
  v57 = 0;
  if (objc_msgSend_allowsKeyedCoding(coder, a2, coder, v3))
  {
    objc_msgSend_decodeDoubleForKey_(coder, v6, @"kCLRegionCodingKeyCenterLatitude", v7);
    v9 = v8;
    v59 = v8;
    objc_msgSend_decodeDoubleForKey_(coder, v10, @"kCLRegionCodingKeyCenterLongitude", v11);
    v13 = v12;
    v60 = v12;
    objc_msgSend_decodeDoubleForKey_(coder, v14, @"kCLRegionCodingKeyRadius", v15);
    v17 = v16;
    v58 = v16;
    v20 = objc_msgSend_decodeObjectForKey_(coder, v18, @"kCLRegionCodingKeyIdentifier", v19);
    v23 = objc_msgSend_decodeObjectForKey_(coder, v21, @"kCLRegionCodingKeyOnBehalfOfBundleId", v22);
    if (objc_msgSend_containsValueForKey_(coder, v24, @"kCLRegionCodingKeyNotifyOnEntry", v25))
    {
      v28 = objc_msgSend_decodeBoolForKey_(coder, v26, @"kCLRegionCodingKeyNotifyOnEntry", v27);
      v63 = v28;
    }

    else
    {
      v28 = 1;
    }

    if (objc_msgSend_containsValueForKey_(coder, v26, @"kCLRegionCodingKeyNotifyOnExit", v27))
    {
      v44 = objc_msgSend_decodeBoolForKey_(coder, v47, @"kCLRegionCodingKeyNotifyOnExit", v48);
      v62 = v44;
    }

    else
    {
      v44 = 1;
    }

    if (objc_msgSend_containsValueForKey_(coder, v47, @"kCLRegionCodingKeyConservativeEntry", v48))
    {
      v45 = objc_msgSend_decodeBoolForKey_(coder, v49, @"kCLRegionCodingKeyConservativeEntry", v50);
      HIBYTE(v61) = v45;
    }

    else
    {
      v45 = 0;
    }

    if (objc_msgSend_containsValueForKey_(coder, v49, @"reserved", v50))
    {
      v43 = objc_msgSend_decodeIntForKey_(coder, v51, @"reserved", v52);
      v57 = v43;
    }

    else
    {
      v43 = 0;
    }

    v46 = objc_msgSend_containsValueForKey_(coder, v51, @"kCLRegionCodingKeyEmergency", v52);
    if (v46)
    {
      LOBYTE(v46) = objc_msgSend_decodeBoolForKey_(coder, v42, @"kCLRegionCodingKeyEmergency", v53);
      LOBYTE(v61) = v46;
    }
  }

  else
  {
    objc_msgSend_decodeValueOfObjCType_at_(coder, v6, "d", &v59);
    objc_msgSend_decodeValueOfObjCType_at_(coder, v29, "d", &v60);
    objc_msgSend_decodeValueOfObjCType_at_(coder, v30, "d", &v58);
    v20 = objc_msgSend_decodeObject(coder, v31, v32, v33);
    v23 = objc_msgSend_decodeObject(coder, v34, v35, v36);
    objc_msgSend_decodeValueOfObjCType_at_(coder, v37, "B", &v63);
    objc_msgSend_decodeValueOfObjCType_at_(coder, v38, "B", &v62);
    objc_msgSend_decodeValueOfObjCType_at_(coder, v39, "B", &v61 + 1);
    objc_msgSend_decodeValueOfObjCType_at_(coder, v40, "i", &v57);
    objc_msgSend_decodeValueOfObjCType_at_(coder, v41, "B", &v61);
    v17 = v58;
    v9 = v59;
    v43 = v57;
    v13 = v60;
    v28 = v63;
    v44 = v62;
    v45 = HIBYTE(v61);
    LOBYTE(v46) = v61;
  }

  BYTE2(v56) = v46 & 1;
  BYTE1(v56) = v45 & 1;
  LOBYTE(v56) = v44 & 1;
  v54 = objc_msgSend_initWithCenter_radius_referenceFrame_allowMonitoringWhenNearby_lowPower_identifier_onBehalfOfBundleId_notifyOnEntry_notifyOnExit_conservativeEntry_emergency_(self, v42, v43, 0, 0, v20, v23, v28 & 1, v9, v13, v17, v56);

  return v54;
}

- (void)encodeWithCoder:(id)coder
{
  v58.receiver = self;
  v58.super_class = CLCircularRegion;
  [(CLRegion *)&v58 encodeWithCoder:?];
  objc_msgSend_center(self, v5, v6, v7);
  v9 = v8;
  v56 = v8;
  objc_msgSend_center(self, v10, v11, v12);
  v14 = v13;
  v57 = v13;
  objc_msgSend_radius(self, v15, v16, v17);
  v19 = v18;
  v55 = v18;
  v23 = objc_msgSend_geoReferenceFrame(self, v20, v21, v22);
  v54 = v23;
  v27 = objc_msgSend_allowMonitoringWhileNearby(self, v24, v25, v26);
  v53 = v27;
  isLowPower = objc_msgSend_isLowPower(self, v28, v29, v30);
  v52 = isLowPower;
  v51 = 1;
  if (objc_msgSend_allowsKeyedCoding(coder, v32, v33, v34))
  {
    objc_msgSend_encodeDouble_forKey_(coder, v35, @"kCLCircularRegionCodingKeyCenterLatitude", v36, v9);
    objc_msgSend_encodeDouble_forKey_(coder, v37, @"kCLCircularRegionCodingKeyCenterLongitude", v38, v14);
    objc_msgSend_encodeDouble_forKey_(coder, v39, @"kCLCircularRegionCodingKeyRadius", v40, v19);
    objc_msgSend_encodeInt_forKey_(coder, v41, v23, @"reserved");
    objc_msgSend_encodeBool_forKey_(coder, v42, v27, @"kCLCircularRegionCodingKeyMonitoringNearby");
    objc_msgSend_encodeBool_forKey_(coder, v43, isLowPower, @"kCLCircularRegionCodingKeyLowPower");
    if (_os_feature_enabled_impl())
    {
      objc_msgSend_encodeInt_forKey_(coder, v44, 1, @"kCLCircularRegionEncodedKeyVersion");
    }
  }

  else
  {
    objc_msgSend_encodeValueOfObjCType_at_(coder, v35, "d", &v56);
    objc_msgSend_encodeValueOfObjCType_at_(coder, v45, "d", &v57);
    objc_msgSend_encodeValueOfObjCType_at_(coder, v46, "d", &v55);
    objc_msgSend_encodeValueOfObjCType_at_(coder, v47, "i", &v54);
    objc_msgSend_encodeValueOfObjCType_at_(coder, v48, "B", &v53);
    objc_msgSend_encodeValueOfObjCType_at_(coder, v49, "B", &v52);
    if (_os_feature_enabled_impl())
    {
      objc_msgSend_encodeValueOfObjCType_at_(coder, v50, "i", &v51);
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v30.receiver = self;
  v30.super_class = CLCircularRegion;
  v4 = [(CLRegion *)&v30 copyWithZone:zone];
  v8 = v4;
  if (v4)
  {
    v9 = v4 + 104;
    objc_msgSend_center(self, v5, v6, v7);
    *v9 = v10;
    v8[14] = v11;
    objc_msgSend_radius(self, v12, v13, v14);
    v8[11] = v15;
    objc_msgSend_desiredAccuracy(self, v16, v17, v18);
    v8[12] = v19;
    *(v8 + 21) = objc_msgSend_geoReferenceFrame(self, v20, v21, v22);
    *(v8 + 81) = objc_msgSend_allowMonitoringWhileNearby(self, v23, v24, v25);
    *(v8 + 80) = objc_msgSend_isLowPower(self, v26, v27, v28);
  }

  return v8;
}

- (id)description
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_msgSend_identifier(self, a2, v2, v3);
  objc_msgSend_center(self, v7, v8, v9);
  v11 = v10;
  objc_msgSend_center(self, v12, v13, v14);
  v16 = v15;
  objc_msgSend_radius(self, v17, v18, v19);
  return objc_msgSend_stringWithFormat_(v5, v20, @"CLCircularRegion (identifier:'%@', center:<%+.8f,%+.8f>, radius:%.2fm)", v21, v6, v11, v16, v22);
}

- (unint64_t)hash
{
  v11.receiver = self;
  v11.super_class = CLCircularRegion;
  v3 = [(CLRegion *)&v11 hash];
  v10.receiver = self;
  v10.super_class = CLCircularRegion;
  if ([(CLRegion *)&v10 onBehalfOfBundleId])
  {
    v9.receiver = self;
    v9.super_class = CLCircularRegion;
    onBehalfOfBundleId = [(CLRegion *)&v9 onBehalfOfBundleId];
    v3 ^= objc_msgSend_hash(onBehalfOfBundleId, v5, v6, v7);
  }

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  v4.receiver = self;
  v4.super_class = CLCircularRegion;
  return [(CLRegion *)&v4 isEqual:equal];
}

- (BOOL)containsCoordinate:(CLLocationCoordinate2D)coordinate
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  objc_msgSend_center(self, a2, v3, v4);
  v9 = v8;
  objc_msgSend_center(self, v10, v11, v12);
  v14 = sub_19B87E164(latitude, longitude, v9, v13);
  objc_msgSend_radius(self, v15, v16, v17);
  return v14 <= v18;
}

- (CLLocationCoordinate2D)center
{
  latitude = self->_geoCenter.latitude;
  longitude = self->_geoCenter.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (CLLocationCoordinate2D)geoCenter
{
  latitude = self->_geoCenter.latitude;
  longitude = self->_geoCenter.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

@end