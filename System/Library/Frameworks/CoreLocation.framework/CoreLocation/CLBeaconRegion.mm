@interface CLBeaconRegion
+ (id)any;
- (BOOL)isEqual:(id)equal;
- (CLBeaconIdentityConstraint)beaconIdentityConstraint;
- (CLBeaconRegion)init;
- (CLBeaconRegion)initWithBeaconIdentityConstraint:(CLBeaconIdentityConstraint *)beaconIdentityConstraint identifier:(NSString *)identifier;
- (CLBeaconRegion)initWithCoder:(id)coder;
- (CLBeaconRegion)initWithIdentifier:(id)identifier;
- (CLBeaconRegion)initWithUUID:(NSUUID *)uuid identifier:(NSString *)identifier;
- (CLBeaconRegion)initWithUUID:(NSUUID *)uuid major:(CLBeaconMajorValue)major identifier:(NSString *)identifier;
- (CLBeaconRegion)initWithUUID:(NSUUID *)uuid major:(CLBeaconMajorValue)major minor:(CLBeaconMinorValue)minor identifier:(NSString *)identifier;
- (CLBeaconRegion)initWithUUID:(id)d major:(unsigned __int16)major minor:(unsigned __int16)minor identifier:(id)identifier notifyEntryStateOnDisplay:(BOOL)display;
- (NSMutableDictionary)peripheralDataWithMeasuredPower:(NSNumber *)measuredPower;
- (char)_measuredPowerForDevice;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setGutsWithProximityUUID:(id)d major:(id)major minor:(id)minor notifyOnDisplay:(BOOL)display;
@end

@implementation CLBeaconRegion

+ (id)any
{
  if (qword_1EAFE5118 != -1)
  {
    dispatch_once(&qword_1EAFE5118, &unk_1F0E6D7D0);
  }

  return qword_1EAFE5110;
}

- (void)setGutsWithProximityUUID:(id)d major:(id)major minor:(id)minor notifyOnDisplay:(BOOL)display
{
  v10 = d != 0;
  if (d)
  {
    v11 = 3;
  }

  else
  {
    v11 = 2;
  }

  if (major)
  {
    v10 = v11;
  }

  if (minor)
  {
    v10 |= 4u;
  }

  self->_definitionMask = v10;
  self->_UUID = objc_msgSend_copy(d, a2, d, major);
  self->_major = objc_msgSend_copy(major, v12, v13, v14);
  self->_minor = objc_msgSend_copy(minor, v15, v16, v17);
  self->_notifyEntryStateOnDisplay = display;
}

- (CLBeaconRegion)init
{
  selfCopy = self;
  if (!objc_msgSend_UUID(self, a2, v2, v3))
  {

    return 0;
  }

  return selfCopy;
}

- (CLBeaconRegion)initWithIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = CLBeaconRegion;
  v3 = [(CLRegion *)&v7 initWithIdentifier:identifier andRegionType:0];
  v5 = v3;
  if (v3)
  {
    objc_msgSend_setGutsWithProximityUUID_major_minor_notifyOnDisplay_(v3, v4, 0, 0, 0, 0);
  }

  return v5;
}

- (CLBeaconRegion)initWithUUID:(NSUUID *)uuid identifier:(NSString *)identifier
{
  if (uuid)
  {
    v9.receiver = self;
    v9.super_class = CLBeaconRegion;
    v5 = [(CLRegion *)&v9 initWithIdentifier:identifier andRegionType:0];
    v7 = v5;
    if (v5)
    {
      objc_msgSend_setGutsWithProximityUUID_major_minor_notifyOnDisplay_(v5, v6, uuid, 0, 0, 0);
    }
  }

  else
  {

    return 0;
  }

  return v7;
}

- (CLBeaconRegion)initWithUUID:(NSUUID *)uuid major:(CLBeaconMajorValue)major identifier:(NSString *)identifier
{
  if (uuid)
  {
    v5 = major;
    v13.receiver = self;
    v13.super_class = CLBeaconRegion;
    v9 = [(CLRegion *)&v13 initWithIdentifier:identifier andRegionType:0];
    if (v9)
    {
      v10 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x1E696AD98], v7, v5, v8);
      objc_msgSend_setGutsWithProximityUUID_major_minor_notifyOnDisplay_(v9, v11, uuid, v10, 0, 0);
    }
  }

  else
  {

    return 0;
  }

  return v9;
}

- (CLBeaconRegion)initWithUUID:(NSUUID *)uuid major:(CLBeaconMajorValue)major minor:(CLBeaconMinorValue)minor identifier:(NSString *)identifier
{
  if (uuid)
  {

    return MEMORY[0x1EEE66B58](self, sel_initWithUUID_major_minor_identifier_notifyEntryStateOnDisplay_, uuid, major);
  }

  else
  {

    return 0;
  }
}

- (CLBeaconRegion)initWithUUID:(id)d major:(unsigned __int16)major minor:(unsigned __int16)minor identifier:(id)identifier notifyEntryStateOnDisplay:(BOOL)display
{
  displayCopy = display;
  minorCopy = minor;
  majorCopy = major;
  v20.receiver = self;
  v20.super_class = CLBeaconRegion;
  v13 = [(CLRegion *)&v20 initWithIdentifier:identifier andRegionType:0];
  if (v13)
  {
    v14 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x1E696AD98], v11, majorCopy, v12);
    v17 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x1E696AD98], v15, minorCopy, v16);
    objc_msgSend_setGutsWithProximityUUID_major_minor_notifyOnDisplay_(v13, v18, d, v14, v17, displayCopy);
  }

  return v13;
}

- (CLBeaconRegion)initWithBeaconIdentityConstraint:(CLBeaconIdentityConstraint *)beaconIdentityConstraint identifier:(NSString *)identifier
{
  if (!beaconIdentityConstraint)
  {
    v23 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0, identifier);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v23, v24, a2, self, @"CLBeaconRegion.m", 182, @"Invalid parameter not satisfying: %@", @"beaconIdentityConstraint");
  }

  v25.receiver = self;
  v25.super_class = CLBeaconRegion;
  v10 = [(CLRegion *)&v25 initWithIdentifier:identifier andRegionType:0];
  if (v10)
  {
    v11 = objc_msgSend_UUID(beaconIdentityConstraint, v7, v8, v9);
    v15 = objc_msgSend_major(beaconIdentityConstraint, v12, v13, v14);
    v19 = objc_msgSend_minor(beaconIdentityConstraint, v16, v17, v18);
    objc_msgSend_setGutsWithProximityUUID_major_minor_notifyOnDisplay_(v10, v20, v11, v15, v19, 0);
  }

  return v10;
}

- (CLBeaconRegion)initWithCoder:(id)coder
{
  v38.receiver = self;
  v38.super_class = CLBeaconRegion;
  v7 = [(CLRegion *)&v38 initWithCoder:?];
  if (v7)
  {
    v37 = 0;
    if (objc_msgSend_allowsKeyedCoding(coder, v4, v5, v6))
    {
      v8 = objc_opt_class();
      v10 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v9, v8, @"kCLBeaconRegionCodingKeyProximityUUID");
      v11 = objc_opt_class();
      v13 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v12, v11, @"kCLBeaconRegionCodingKeyMajor");
      v14 = objc_opt_class();
      v16 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v15, v14, @"kCLBeaconRegionCodingKeyMinor");
      v37 = objc_msgSend_decodeBoolForKey_(coder, v17, @"kCLBeaconRegionNotifyEntryStateOnDisplay", v18);
    }

    else
    {
      v21 = objc_alloc(MEMORY[0x1E696AFB0]);
      v25 = objc_msgSend_decodeObject(coder, v22, v23, v24);
      v10 = objc_msgSend_initWithUUIDString_(v21, v26, v25, v27);
      v13 = objc_msgSend_decodeObject(coder, v28, v29, v30);
      v16 = objc_msgSend_decodeObject(coder, v31, v32, v33);
      objc_msgSend_decodeValueOfObjCType_at_(coder, v34, "B", &v37);
    }

    objc_msgSend_setType_(v7, v19, 0, v20);
    objc_msgSend_setGutsWithProximityUUID_major_minor_notifyOnDisplay_(v7, v35, v10, v13, v16, v37);
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  v47.receiver = self;
  v47.super_class = CLBeaconRegion;
  [(CLRegion *)&v47 encodeWithCoder:?];
  v8 = objc_msgSend_notifyEntryStateOnDisplay(self, v5, v6, v7);
  v46 = v8;
  v12 = objc_msgSend_allowsKeyedCoding(coder, v9, v10, v11);
  v16 = objc_msgSend_UUID(self, v13, v14, v15);
  if (v12)
  {
    objc_msgSend_encodeObject_forKey_(coder, v17, v16, @"kCLBeaconRegionCodingKeyProximityUUID");
    v22 = objc_msgSend_major(self, v19, v20, v21);
    objc_msgSend_encodeObject_forKey_(coder, v23, v22, @"kCLBeaconRegionCodingKeyMajor");
    v27 = objc_msgSend_minor(self, v24, v25, v26);
    objc_msgSend_encodeObject_forKey_(coder, v28, v27, @"kCLBeaconRegionCodingKeyMinor");
    objc_msgSend_encodeBool_forKey_(coder, v29, v8, @"kCLBeaconRegionNotifyEntryStateOnDisplay");
  }

  else
  {
    v30 = objc_msgSend_UUIDString(v16, v17, v16, v18);
    objc_msgSend_encodeObject_(coder, v31, v30, v32);
    v36 = objc_msgSend_major(self, v33, v34, v35);
    objc_msgSend_encodeObject_(coder, v37, v36, v38);
    v42 = objc_msgSend_minor(self, v39, v40, v41);
    objc_msgSend_encodeObject_(coder, v43, v42, v44);
    objc_msgSend_encodeValueOfObjCType_at_(coder, v45, "B", &v46);
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v23.receiver = self;
  v23.super_class = CLBeaconRegion;
  v7 = [(CLRegion *)&v23 copyWithZone:zone];
  if (v7)
  {
    v8 = objc_msgSend_UUID(self, v4, v5, v6);
    v12 = objc_msgSend_major(self, v9, v10, v11);
    v16 = objc_msgSend_minor(self, v13, v14, v15);
    v20 = objc_msgSend_notifyEntryStateOnDisplay(self, v17, v18, v19);
    objc_msgSend_setGutsWithProximityUUID_major_minor_notifyOnDisplay_(v7, v21, v8, v12, v16, v20);
  }

  return v7;
}

- (void)dealloc
{
  self->_UUID = 0;
  self->_major = 0;
  self->_minor = 0;
  v3.receiver = self;
  v3.super_class = CLBeaconRegion;
  [(CLRegion *)&v3 dealloc];
}

- (id)description
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_msgSend_identifier(self, a2, v2, v3);
  v10 = objc_msgSend_UUID(self, v7, v8, v9);
  v14 = objc_msgSend_major(self, v11, v12, v13);
  v18 = objc_msgSend_minor(self, v15, v16, v17);
  return objc_msgSend_stringWithFormat_(v5, v19, @"CLBeaconRegion (identifier:'%@', uuid:%@, major:%@, minor:%@)", v20, v6, v10, v14, v18);
}

- (unint64_t)hash
{
  v5 = objc_msgSend_identifier(self, a2, v2, v3);
  if (objc_msgSend_isEqualToString_(v5, v6, &stru_1F0E6F140, v7))
  {
    v11 = objc_msgSend_beaconIdentityConstraint(self, v8, v9, v10);

    return objc_msgSend_hash(v11, v12, v13, v14);
  }

  else
  {
    v16.receiver = self;
    v16.super_class = CLBeaconRegion;
    return [(CLRegion *)&v16 hash];
  }
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    LOBYTE(isMemberOfClass) = 1;
  }

  else
  {
    v5 = objc_opt_class();
    isMemberOfClass = objc_msgSend_isMemberOfClass_(equal, v6, v5, v7);
    if (isMemberOfClass)
    {
      v12 = objc_msgSend_identifier(self, v9, v10, v11);
      if (objc_msgSend_isEqualToString_(v12, v13, &stru_1F0E6F140, v14) && (v18 = objc_msgSend_identifier(self, v15, v16, v17), v22 = objc_msgSend_identifier(equal, v19, v20, v21), objc_msgSend_isEqualToString_(v18, v23, v22, v24)))
      {
        v25 = objc_msgSend_beaconIdentityConstraint(self, v15, v16, v17);
        v30 = objc_msgSend_beaconIdentityConstraint(equal, v26, v27, v28);

        LOBYTE(isMemberOfClass) = objc_msgSend_isEqual_(v25, v29, v30, v31);
      }

      else
      {
        v32 = objc_msgSend_identifier(self, v15, v16, v17);
        v37 = objc_msgSend_identifier(equal, v33, v34, v35);

        LOBYTE(isMemberOfClass) = objc_msgSend_isEqualToString_(v32, v36, v37, v38);
      }
    }
  }

  return isMemberOfClass;
}

- (char)_measuredPowerForDevice
{
  sub_19B87BBB4();

  return sub_19B93CD70();
}

- (NSMutableDictionary)peripheralDataWithMeasuredPower:(NSNumber *)measuredPower
{
  v42 = *MEMORY[0x1E69E9840];
  memset(uu, 0, sizeof(uu));
  uuid_clear(uu);
  if (objc_msgSend_UUID(self, v5, v6, v7))
  {
    v11 = objc_msgSend_UUID(self, v8, v9, v10);
    objc_msgSend_getUUIDBytes_(v11, v12, uu, v13);
  }

  v40 = 0;
  if (objc_msgSend_major(self, v8, v9, v10))
  {
    v17 = objc_msgSend_major(self, v14, v15, v16);
    v40 = bswap32(objc_msgSend_shortValue(v17, v18, v19, v20)) >> 16;
  }

  v39 = 0;
  if (objc_msgSend_minor(self, v14, v15, v16))
  {
    v24 = objc_msgSend_minor(self, v21, v22, v23);
    v39 = bswap32(objc_msgSend_shortValue(v24, v25, v26, v27)) >> 16;
  }

  if (measuredPower)
  {
    v28 = objc_msgSend_charValue(measuredPower, v21, v22, v23);
  }

  else
  {
    v28 = objc_msgSend__measuredPowerForDevice(self, v21, v22, v23);
  }

  v38 = v28;
  v31 = objc_msgSend_dataWithCapacity_(MEMORY[0x1E695DF88], v29, 21, v30);
  objc_msgSend_appendBytes_length_(v31, v32, uu, 16);
  objc_msgSend_appendBytes_length_(v31, v33, &v40, 2);
  objc_msgSend_appendBytes_length_(v31, v34, &v39, 2);
  objc_msgSend_appendBytes_length_(v31, v35, &v38, 1);
  return objc_msgSend_dictionaryWithObject_forKey_(MEMORY[0x1E695DF90], v36, v31, *MEMORY[0x1E695D1E8]);
}

- (CLBeaconIdentityConstraint)beaconIdentityConstraint
{
  v3 = [CLBeaconIdentityConstraint alloc];
  v7 = objc_msgSend_UUID(self, v4, v5, v6);
  v11 = objc_msgSend_major(self, v8, v9, v10);
  v15 = objc_msgSend_minor(self, v12, v13, v14);
  v17 = objc_msgSend__initWithUUID_major_minor_(v3, v16, v7, v11, v15);

  return v17;
}

@end