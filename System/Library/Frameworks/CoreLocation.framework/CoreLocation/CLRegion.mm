@interface CLRegion
- (BOOL)containsCoordinate:(CLLocationCoordinate2D)coordinate;
- (BOOL)isEqual:(id)equal;
- (CLLocationCoordinate2D)center;
- (CLRegion)initCircularRegionWithCenter:(CLLocationCoordinate2D)center radius:(CLLocationDistance)radius identifier:(NSString *)identifier;
- (CLRegion)initWithClientRegion:(id *)region;
- (CLRegion)initWithCoder:(id)coder;
- (CLRegion)initWithIdentifier:(id)identifier;
- (CLRegion)initWithIdentifier:(id)identifier andRegionType:(int)type;
- (CLRegion)initWithIdentifier:(id)identifier onBehalfOf:(id)of regionType:(int)type notifyOnEntry:(BOOL)entry notifyOnExit:(BOOL)exit conservativeEntry:(BOOL)conservativeEntry emergency:(BOOL)emergency deviceId:(id)self0 handoffTag:(id)self1;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLRegion

- (void)dealloc
{
  *&self->_identifier = 0u;
  *&self->_handoffTag = 0u;
  v3.receiver = self;
  v3.super_class = CLRegion;
  [(CLRegion *)&v3 dealloc];
}

- (CLRegion)initWithClientRegion:(id *)region
{
  v14.receiver = self;
  v14.super_class = CLRegion;
  result = [(CLRegion *)&v14 init];
  if (result)
  {
    v7 = result;
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v5, region, v6);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v9, region->var1, v10);
    var7 = region->var7;
    return objc_msgSend_initWithIdentifier_onBehalfOf_regionType_notifyOnEntry_notifyOnExit_conservativeEntry_emergency_(v7, v12, v8, v11, region->var3, region->var4, region->var5, region->var6, var7);
  }

  return result;
}

- (CLRegion)initCircularRegionWithCenter:(CLLocationCoordinate2D)center radius:(CLLocationDistance)radius identifier:(NSString *)identifier
{
  longitude = center.longitude;
  latitude = center.latitude;

  v9 = [CLCircularRegion alloc];

  return objc_msgSend_initWithCenter_radius_identifier_(v9, v10, identifier, v11, latitude, longitude, radius);
}

- (CLRegion)initWithIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = CLRegion;
  result = [(CLRegion *)&v7 init];
  if (result)
  {
    v6 = 0;
    return objc_msgSend_initWithIdentifier_onBehalfOf_regionType_notifyOnEntry_notifyOnExit_conservativeEntry_emergency_(result, v5, identifier, 0, 1, 1, 1, 0, v6);
  }

  return result;
}

- (CLRegion)initWithIdentifier:(id)identifier andRegionType:(int)type
{
  v4 = *&type;
  v9.receiver = self;
  v9.super_class = CLRegion;
  result = [(CLRegion *)&v9 init];
  if (result)
  {
    v8 = 0;
    return objc_msgSend_initWithIdentifier_onBehalfOf_regionType_notifyOnEntry_notifyOnExit_conservativeEntry_emergency_(result, v7, identifier, 0, v4, 1, 1, 0, v8);
  }

  return result;
}

- (CLRegion)initWithIdentifier:(id)identifier onBehalfOf:(id)of regionType:(int)type notifyOnEntry:(BOOL)entry notifyOnExit:(BOOL)exit conservativeEntry:(BOOL)conservativeEntry emergency:(BOOL)emergency deviceId:(id)self0 handoffTag:(id)self1
{
  v42 = *MEMORY[0x1E69E9840];
  if (!identifier)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6D750);
    }

    v22 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289026;
      v39 = 0;
      v40 = 2082;
      v41 = "";
      _os_log_impl(&dword_19B873000, v22, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:identifier is nil}", buf, 0x12u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6D750);
      }
    }

    v19 = qword_1ED519090;
    if (!os_signpost_enabled(qword_1ED519090))
    {
      goto LABEL_20;
    }

    *buf = 68289026;
    v39 = 0;
    v40 = 2082;
    v41 = "";
    v20 = "identifier is nil";
    v21 = "{msg%{public}.0s:identifier is nil}";
LABEL_17:
    _os_signpost_emit_with_name_impl(&dword_19B873000, v19, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v20, v21, buf, 0x12u);
LABEL_20:

    return 0;
  }

  if (objc_msgSend_lengthOfBytesUsingEncoding_(identifier, a2, 4, of) >= 0x201)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6D750);
    }

    v18 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289026;
      v39 = 0;
      v40 = 2082;
      v41 = "";
      _os_log_impl(&dword_19B873000, v18, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:identifier is too long}", buf, 0x12u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6D750);
      }
    }

    v19 = qword_1ED519090;
    if (!os_signpost_enabled(qword_1ED519090))
    {
      goto LABEL_20;
    }

    *buf = 68289026;
    v39 = 0;
    v40 = 2082;
    v41 = "";
    v20 = "identifier is too long";
    v21 = "{msg%{public}.0s:identifier is too long}";
    goto LABEL_17;
  }

  if (id && !tag)
  {
    goto LABEL_20;
  }

  v37.receiver = self;
  v37.super_class = CLRegion;
  v23 = [(CLRegion *)&v37 init];
  if (v23)
  {
    v23->_identifier = objc_msgSend_copy(identifier, v25, v26, v27);
    v23->_notifyOnEntry = entry;
    v23->_notifyOnExit = exit;
    v23->_onBehalfOfBundleId = objc_msgSend_copy(of, v28, v29, v30);
    v23->_type = type;
    v23->_conservativeEntry = conservativeEntry;
    v23->_emergency = emergency;
    v23->_deviceId = objc_msgSend_copy(id, v31, v32, v33);
    v23->_handoffTag = objc_msgSend_copy(tag, v34, v35, v36);
  }

  return v23;
}

- (CLRegion)initWithCoder:(id)coder
{
  v5 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(self, v6, v5, v7))
  {

    v11 = [CLCircularRegion alloc];

    return MEMORY[0x1EEE66B58](v11, sel_initLegacyObjectWithCoder_, coder, v12);
  }

  else
  {
    v60 = 0;
    if (objc_msgSend_allowsKeyedCoding(coder, v8, v9, v10))
    {
      v16 = objc_opt_class();
      v18 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v17, v16, @"kCLRegionCodingKeyIdentifier");
      v19 = objc_opt_class();
      v21 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v20, v19, @"kCLRegionCodingKeyOnBehalfOfBundleId");
      v24 = objc_msgSend_decodeBoolForKey_(coder, v22, @"kCLRegionCodingKeyNotifyOnEntry", v23);
      HIBYTE(v60) = v24;
      v27 = objc_msgSend_decodeBoolForKey_(coder, v25, @"kCLRegionCodingKeyNotifyOnExit", v26);
      BYTE2(v60) = v27;
      v30 = objc_msgSend_decodeBoolForKey_(coder, v28, @"kCLRegionCodingKeyConservativeEntry", v29);
      BYTE1(v60) = v30;
      v33 = objc_msgSend_decodeBoolForKey_(coder, v31, @"kCLRegionCodingKeyEmergency", v32);
      LOBYTE(v60) = v33;
      if (objc_msgSend_containsValueForKey_(coder, v34, @"kCLRegionCodingKeyRegionType", v35))
      {
        v38 = objc_msgSend_decodeIntForKey_(coder, v36, @"kCLRegionCodingKeyRegionType", v37);
      }

      else
      {
        v38 = 1;
      }

      v55 = objc_opt_class();
      v49 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v56, v55, @"kCLRegionCodingKeyDeviceId");
      v57 = objc_opt_class();
      v53 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v58, v57, @"kCLRegionCodingKeyHandoffTag");
    }

    else
    {
      v18 = objc_msgSend_decodeObject(coder, v13, v14, v15);
      v21 = objc_msgSend_decodeObject(coder, v39, v40, v41);
      objc_msgSend_decodeValueOfObjCType_at_(coder, v42, "B", &v60 + 3);
      objc_msgSend_decodeValueOfObjCType_at_(coder, v43, "B", &v60 + 2);
      objc_msgSend_decodeValueOfObjCType_at_(coder, v44, "B", &v60 + 1);
      objc_msgSend_decodeValueOfObjCType_at_(coder, v45, "B", &v60);
      v49 = objc_msgSend_decodeObject(coder, v46, v47, v48);
      v53 = objc_msgSend_decodeObject(coder, v50, v51, v52);
      v33 = v60;
      v30 = BYTE1(v60);
      v27 = BYTE2(v60);
      v38 = 1;
      v24 = HIBYTE(v60);
    }

    return objc_msgSend_initWithIdentifier_onBehalfOf_regionType_notifyOnEntry_notifyOnExit_conservativeEntry_emergency_deviceId_handoffTag_(self, v54, v18, v21, v38, v24 & 1, v27 & 1, v30 & 1, v33 & 1, v49, v53);
  }
}

- (void)encodeWithCoder:(id)coder
{
  v6 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(self, v7, v6, v8))
  {
    v12 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v9, v10, v11);

    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v12, v13, a2, self, @"CLRegion.m", 263, @"CLRegion is an abstract class. Use one of the derived classes");
  }

  else
  {
    v14 = objc_msgSend_notifyOnEntry(self, v9, v10, v11);
    v60 = v14;
    v18 = objc_msgSend_notifyOnExit(self, v15, v16, v17);
    v59 = v18;
    v22 = objc_msgSend_conservativeEntry(self, v19, v20, v21);
    v58 = v22;
    v26 = objc_msgSend_emergency(self, v23, v24, v25);
    v57 = v26;
    v30 = objc_msgSend_type(self, v27, v28, v29);
    v34 = objc_msgSend_allowsKeyedCoding(coder, v31, v32, v33);
    identifier = self->_identifier;
    if (v34)
    {
      objc_msgSend_encodeObject_forKey_(coder, v35, identifier, @"kCLRegionCodingKeyIdentifier");
      objc_msgSend_encodeObject_forKey_(coder, v38, self->_onBehalfOfBundleId, @"kCLRegionCodingKeyOnBehalfOfBundleId");
      objc_msgSend_encodeBool_forKey_(coder, v39, v14, @"kCLRegionCodingKeyNotifyOnEntry");
      objc_msgSend_encodeBool_forKey_(coder, v40, v18, @"kCLRegionCodingKeyNotifyOnExit");
      objc_msgSend_encodeBool_forKey_(coder, v41, v22, @"kCLRegionCodingKeyConservativeEntry");
      objc_msgSend_encodeBool_forKey_(coder, v42, v26, @"kCLRegionCodingKeyEmergency");
      objc_msgSend_encodeInt_forKey_(coder, v43, v30, @"kCLRegionCodingKeyRegionType");
      objc_msgSend_encodeObject_forKey_(coder, v44, self->_deviceId, @"kCLRegionCodingKeyDeviceId");
      handoffTag = self->_handoffTag;

      objc_msgSend_encodeObject_forKey_(coder, v45, handoffTag, @"kCLRegionCodingKeyHandoffTag");
    }

    else
    {
      objc_msgSend_encodeObject_(coder, v35, identifier, v36);
      objc_msgSend_encodeObject_(coder, v47, self->_onBehalfOfBundleId, v48);
      objc_msgSend_encodeValueOfObjCType_at_(coder, v49, "B", &v60);
      objc_msgSend_encodeValueOfObjCType_at_(coder, v50, "B", &v59);
      objc_msgSend_encodeValueOfObjCType_at_(coder, v51, "B", &v58);
      objc_msgSend_encodeValueOfObjCType_at_(coder, v52, "B", &v57);
      objc_msgSend_encodeObject_(coder, v53, self->_deviceId, v54);
      objc_msgSend_encodeObject_(coder, v55, self->_handoffTag, v56);
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v8 = objc_msgSend_allocWithZone_(v5, v6, zone, v7);
  emergency = self->_emergency;
  return objc_msgSend_initWithIdentifier_onBehalfOf_regionType_notifyOnEntry_notifyOnExit_conservativeEntry_emergency_deviceId_handoffTag_(v8, v9, self->_identifier, self->_onBehalfOfBundleId, self->_type, self->_notifyOnEntry, self->_notifyOnExit, self->_conservativeEntry, emergency, self->_deviceId, self->_handoffTag);
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    LOBYTE(isMemberOfClass) = 1;
  }

  else
  {
    v47 = v4;
    v48 = v3;
    v9 = objc_opt_class();
    if (objc_msgSend_isMemberOfClass_(equal, v10, v9, v11) & 1) != 0 || (v34 = objc_opt_class(), objc_msgSend_isMemberOfClass_(self, v35, v34, v36)) && (v37 = objc_opt_class(), (objc_msgSend_isMemberOfClass_(equal, v38, v37, v39)) || (v40 = objc_opt_class(), (isMemberOfClass = objc_msgSend_isMemberOfClass_(self, v41, v40, v42)) != 0) && (v43 = objc_opt_class(), (isMemberOfClass = objc_msgSend_isMemberOfClass_(equal, v44, v43, v45)) != 0))
    {
      if (objc_msgSend_onBehalfOfBundleId(self, v12, v13, v14, v6, v5, v47, v48) || objc_msgSend_onBehalfOfBundleId(equal, v15, v16, v17))
      {
        v18 = objc_msgSend_onBehalfOfBundleId(self, v15, v16, v17);
        v22 = objc_msgSend_onBehalfOfBundleId(equal, v19, v20, v21);
        isEqual = objc_msgSend_isEqual_(v18, v23, v22, v24);
      }

      else
      {
        isEqual = 1;
      }

      v26 = objc_msgSend_identifier(self, v15, v16, v17);
      v30 = objc_msgSend_identifier(equal, v27, v28, v29);
      LOBYTE(isMemberOfClass) = objc_msgSend_isEqualToString_(v26, v31, v30, v32) & isEqual;
    }
  }

  return isMemberOfClass;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_identifier(self, a2, v2, v3);

  return objc_msgSend_hash(v4, v5, v6, v7);
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
  objc_copyStruct(v4, &self->_center, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.longitude = v3;
  result.latitude = v2;
  return result;
}

@end