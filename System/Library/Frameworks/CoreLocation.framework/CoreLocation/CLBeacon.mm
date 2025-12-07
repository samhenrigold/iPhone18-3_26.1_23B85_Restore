@interface CLBeacon
- (CLBeacon)initWithCoder:(id)coder;
- (CLBeacon)initWithProximityUUID:(id)d major:(id)major minor:(id)minor proximity:(int64_t)proximity accuracy:(double)accuracy rssi:(int64_t)rssi;
- (CLBeacon)initWithUUID:(id)d major:(id)major minor:(id)minor proximity:(int64_t)proximity accuracy:(double)accuracy rssi:(int64_t)rssi timestamp:(double)timestamp;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLBeacon

- (CLBeacon)initWithProximityUUID:(id)d major:(id)major minor:(id)minor proximity:(int64_t)proximity accuracy:(double)accuracy rssi:(int64_t)rssi
{
  v25.receiver = self;
  v25.super_class = CLBeacon;
  v14 = [(CLBeacon *)&v25 init];
  if (v14)
  {
    v14->_internal = objc_alloc_init(CLBeaconInternal);
    v14->_internal->proximityUUID = objc_msgSend_copy(d, v15, v16, v17);
    v14->_internal->major = objc_msgSend_copy(major, v18, v19, v20);
    v14->_internal->minor = objc_msgSend_copy(minor, v21, v22, v23);
    v14->_internal->proximity = proximity;
    v14->_internal->accuracy = accuracy;
    v14->_internal->rssi = rssi;
  }

  return v14;
}

- (CLBeacon)initWithUUID:(id)d major:(id)major minor:(id)minor proximity:(int64_t)proximity accuracy:(double)accuracy rssi:(int64_t)rssi timestamp:(double)timestamp
{
  result = objc_msgSend_initWithProximityUUID_major_minor_proximity_accuracy_rssi_(self, a2, d, major, minor, proximity, rssi, accuracy);
  result->_internal->timestamp = timestamp;
  return result;
}

- (void)dealloc
{
  self->_internal->proximityUUID = 0;

  self->_internal->major = 0;
  self->_internal->minor = 0;

  self->_internal = 0;
  v3.receiver = self;
  v3.super_class = CLBeacon;
  [(CLBeacon *)&v3 dealloc];
}

- (CLBeacon)initWithCoder:(id)coder
{
  v41.receiver = self;
  v41.super_class = CLBeacon;
  v4 = [(CLBeacon *)&v41 init];
  if (v4)
  {
    v4->_internal = objc_alloc_init(CLBeaconInternal);
    if (objc_msgSend_allowsKeyedCoding(coder, v5, v6, v7))
    {
      v8 = objc_opt_class();
      v4->_internal->proximityUUID = objc_msgSend_decodeObjectOfClass_forKey_(coder, v9, v8, @"kCLBeaconCodingKeyProximityUUID");
      v10 = objc_opt_class();
      v4->_internal->major = objc_msgSend_decodeObjectOfClass_forKey_(coder, v11, v10, @"kCLBeaconCodingKeyMajor");
      v12 = objc_opt_class();
      v4->_internal->minor = objc_msgSend_decodeObjectOfClass_forKey_(coder, v13, v12, @"kCLBeaconCodingKeyMinor");
      v4->_internal->proximity = objc_msgSend_decodeIntForKey_(coder, v14, @"kCLBeaconCodingKeyProximity", v15);
      objc_msgSend_decodeDoubleForKey_(coder, v16, @"kCLBeaconCodingKeyAccuracy", v17);
      v4->_internal->accuracy = v18;
      v4->_internal->rssi = objc_msgSend_decodeIntegerForKey_(coder, v19, @"kCLBeaconCodingKeyRSSI", v20);
    }

    else
    {
      v23 = objc_alloc(MEMORY[0x1E696AFB0]);
      v27 = objc_msgSend_decodeObject(coder, v24, v25, v26);
      v4->_internal->proximityUUID = objc_msgSend_initWithUUIDString_(v23, v28, v27, v29);
      v4->_internal->major = objc_msgSend_decodeObject(coder, v30, v31, v32);
      v4->_internal->minor = objc_msgSend_decodeObject(coder, v33, v34, v35);
      objc_msgSend_decodeValueOfObjCType_at_(coder, v36, "q", &v4->_internal->proximity);
      objc_msgSend_decodeValueOfObjCType_at_(coder, v37, "d", &v4->_internal->accuracy);
      objc_msgSend_decodeValueOfObjCType_at_(coder, v38, "q", &v4->_internal->rssi);
    }

    objc_msgSend_decodeDoubleForKey_(coder, v21, @"kCLBeaconCodingKeyTimestamp", v22);
    v4->_internal->timestamp = v39;
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v6 = objc_msgSend_allowsKeyedCoding(coder, a2, coder, v3);
  internal = self->_internal;
  proximityUUID = internal->proximityUUID;
  if (v6)
  {
    objc_msgSend_encodeObject_forKey_(coder, v7, proximityUUID, @"kCLBeaconCodingKeyProximityUUID");
    objc_msgSend_encodeObject_forKey_(coder, v11, self->_internal->major, @"kCLBeaconCodingKeyMajor");
    objc_msgSend_encodeObject_forKey_(coder, v12, self->_internal->minor, @"kCLBeaconCodingKeyMinor");
    objc_msgSend_encodeInt_forKey_(coder, v13, LODWORD(self->_internal->proximity), @"kCLBeaconCodingKeyProximity");
    objc_msgSend_encodeDouble_forKey_(coder, v14, @"kCLBeaconCodingKeyAccuracy", v15, self->_internal->accuracy);
    objc_msgSend_encodeInteger_forKey_(coder, v16, self->_internal->rssi, @"kCLBeaconCodingKeyRSSI");
  }

  else
  {
    v19 = objc_msgSend_UUIDString(internal->proximityUUID, v7, proximityUUID, v8);
    objc_msgSend_encodeObject_(coder, v20, v19, v21);
    objc_msgSend_encodeObject_(coder, v22, self->_internal->major, v23);
    objc_msgSend_encodeObject_(coder, v24, self->_internal->minor, v25);
    objc_msgSend_encodeValueOfObjCType_at_(coder, v26, "q", &self->_internal->proximity);
    objc_msgSend_encodeValueOfObjCType_at_(coder, v27, "d", &self->_internal->accuracy);
    objc_msgSend_encodeValueOfObjCType_at_(coder, v28, "q", &self->_internal->rssi);
  }

  timestamp = self->_internal->timestamp;

  objc_msgSend_encodeDouble_forKey_(coder, v17, @"kCLBeaconCodingKeyTimestamp", v18, timestamp);
}

- (id)description
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_msgSend_UUID(self, a2, v2, v3);
  v10 = objc_msgSend_major(self, v7, v8, v9);
  v14 = objc_msgSend_minor(self, v11, v12, v13);
  v18 = objc_msgSend_proximity(self, v15, v16, v17);
  objc_msgSend_accuracy(self, v19, v20, v21);
  v23 = v22;
  v27 = objc_msgSend_rssi(self, v24, v25, v26);
  v31 = objc_msgSend_timestamp(self, v28, v29, v30);
  return objc_msgSend_stringWithFormat_(v5, v32, @"CLBeacon (uuid:%@, major:%@, minor:%@, proximity:%d +/- %.2fm, rssi:%ld, timestamp:%@)", v33, v6, v10, v14, v18, v23, v27, v31);
}

@end