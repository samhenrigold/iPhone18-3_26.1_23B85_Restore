@interface CLRoutePoint
- (BOOL)isEqual:(id)equal;
- (CLRoutePoint)initWithCoder:(id)coder;
- (CLRoutePoint)initWithLatitude:(double)latitude longitude:(double)longitude altitude:(double)altitude odometer:(double)odometer timestamp:(double)timestamp signalEnvironmentType:(int)type;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLRoutePoint

- (CLRoutePoint)initWithLatitude:(double)latitude longitude:(double)longitude altitude:(double)altitude odometer:(double)odometer timestamp:(double)timestamp signalEnvironmentType:(int)type
{
  v15.receiver = self;
  v15.super_class = CLRoutePoint;
  result = [(CLRoutePoint *)&v15 init];
  if (result)
  {
    result->_latitude_deg = latitude;
    result->_longitude_deg = longitude;
    result->_altitude_m = altitude;
    result->_odometer_m = odometer;
    result->_timestamp_s = timestamp;
    result->_signalEnvironmentType = type;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  objc_msgSend_latitude_deg(self, v5, v6, v7);
  v9 = v8;
  objc_msgSend_longitude_deg(self, v10, v11, v12);
  v14 = v13;
  objc_msgSend_altitude_m(self, v15, v16, v17);
  v19 = v18;
  objc_msgSend_odometer_m(self, v20, v21, v22);
  v24 = v23;
  objc_msgSend_timestamp_s(self, v25, v26, v27);
  v29 = v28;
  v33 = objc_msgSend_signalEnvironmentType(self, v30, v31, v32);
  return objc_msgSend_stringWithFormat_(v3, v34, @"<%@ latitude: %.7lf, longitude: %.7lf, altitude: %.3lf, odometer: %.3lf, timestamp: %.3lf, signalEnvironment: %d>", v35, v4, v9, v14, v19, v24, v29, v33);
}

- (BOOL)isEqual:(id)equal
{
  objc_msgSend_latitude_deg(self, a2, equal, v3);
  v7 = v6;
  objc_msgSend_latitude_deg(equal, v8, v9, v10);
  if (vabdd_f64(v7, v14) >= 0.0000001)
  {
    return 0;
  }

  objc_msgSend_longitude_deg(self, v11, v12, v13);
  v16 = v15;
  objc_msgSend_longitude_deg(equal, v17, v18, v19);
  if (vabdd_f64(v16, v23) >= 0.0000001)
  {
    return 0;
  }

  objc_msgSend_altitude_m(self, v20, v21, v22);
  v25 = v24;
  objc_msgSend_altitude_m(equal, v26, v27, v28);
  if (vabdd_f64(v25, v32) >= 0.0000001)
  {
    return 0;
  }

  objc_msgSend_odometer_m(self, v29, v30, v31);
  v34 = v33;
  objc_msgSend_odometer_m(equal, v35, v36, v37);
  if (vabdd_f64(v34, v41) >= 0.0000001)
  {
    return 0;
  }

  objc_msgSend_timestamp_s(self, v38, v39, v40);
  v43 = v42;
  objc_msgSend_timestamp_s(equal, v44, v45, v46);
  if (vabdd_f64(v43, v50) >= 0.0000001)
  {
    return 0;
  }

  v51 = objc_msgSend_signalEnvironmentType(self, v47, v48, v49);
  return v51 == objc_msgSend_signalEnvironmentType(equal, v52, v53, v54);
}

- (unint64_t)hash
{
  v5 = MEMORY[0x1E696AD98];
  objc_msgSend_latitude_deg(self, a2, v2, v3);
  v9 = objc_msgSend_numberWithDouble_(v5, v6, v7, v8);
  v13 = objc_msgSend_hash(v9, v10, v11, v12);
  v14 = MEMORY[0x1E696AD98];
  objc_msgSend_longitude_deg(self, v15, v16, v17);
  v21 = objc_msgSend_numberWithDouble_(v14, v18, v19, v20);
  v25 = objc_msgSend_hash(v21, v22, v23, v24) ^ v13;
  v26 = MEMORY[0x1E696AD98];
  objc_msgSend_altitude_m(self, v27, v28, v29);
  v33 = objc_msgSend_numberWithDouble_(v26, v30, v31, v32);
  v37 = objc_msgSend_hash(v33, v34, v35, v36);
  v38 = MEMORY[0x1E696AD98];
  objc_msgSend_odometer_m(self, v39, v40, v41);
  v45 = objc_msgSend_numberWithDouble_(v38, v42, v43, v44);
  v49 = v25 ^ v37 ^ objc_msgSend_hash(v45, v46, v47, v48);
  v50 = MEMORY[0x1E696AD98];
  objc_msgSend_timestamp_s(self, v51, v52, v53);
  v57 = objc_msgSend_numberWithDouble_(v50, v54, v55, v56);
  v61 = objc_msgSend_hash(v57, v58, v59, v60);
  return v49 ^ v61 ^ objc_msgSend_signalEnvironmentType(self, v62, v63, v64);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v8 = objc_msgSend_allocWithZone_(v5, v6, zone, v7);
  v12 = objc_msgSend_init(v8, v9, v10, v11);
  objc_msgSend_latitude_deg(self, v13, v14, v15);
  *(v12 + 16) = v16;
  objc_msgSend_longitude_deg(self, v17, v18, v19);
  *(v12 + 24) = v20;
  objc_msgSend_altitude_m(self, v21, v22, v23);
  *(v12 + 32) = v24;
  objc_msgSend_odometer_m(self, v25, v26, v27);
  *(v12 + 40) = v28;
  objc_msgSend_timestamp_s(self, v29, v30, v31);
  *(v12 + 48) = v32;
  *(v12 + 8) = objc_msgSend_signalEnvironmentType(self, v33, v34, v35);
  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  objc_msgSend_latitude_deg(self, a2, coder, v3);
  objc_msgSend_encodeDouble_forKey_(coder, v6, @"latitude", v7);
  objc_msgSend_longitude_deg(self, v8, v9, v10);
  objc_msgSend_encodeDouble_forKey_(coder, v11, @"longitude", v12);
  objc_msgSend_altitude_m(self, v13, v14, v15);
  objc_msgSend_encodeDouble_forKey_(coder, v16, @"altitude", v17);
  objc_msgSend_odometer_m(self, v18, v19, v20);
  objc_msgSend_encodeDouble_forKey_(coder, v21, @"odometer", v22);
  objc_msgSend_timestamp_s(self, v23, v24, v25);
  objc_msgSend_encodeDouble_forKey_(coder, v26, @"timestamp", v27);
  v32 = objc_msgSend_signalEnvironmentType(self, v28, v29, v30);

  objc_msgSend_encodeInteger_forKey_(coder, v31, v32, @"signalEnvironment");
}

- (CLRoutePoint)initWithCoder:(id)coder
{
  v23.receiver = self;
  v23.super_class = CLRoutePoint;
  v6 = [(CLRoutePoint *)&v23 init];
  if (v6)
  {
    objc_msgSend_decodeDoubleForKey_(coder, v4, @"latitude", v5);
    v6->_latitude_deg = v7;
    objc_msgSend_decodeDoubleForKey_(coder, v8, @"longitude", v9);
    v6->_longitude_deg = v10;
    objc_msgSend_decodeDoubleForKey_(coder, v11, @"altitude", v12);
    v6->_altitude_m = v13;
    objc_msgSend_decodeDoubleForKey_(coder, v14, @"odometer", v15);
    v6->_odometer_m = v16;
    objc_msgSend_decodeDoubleForKey_(coder, v17, @"timestamp", v18);
    v6->_timestamp_s = v19;
    v6->_signalEnvironmentType = objc_msgSend_decodeIntegerForKey_(coder, v20, @"signalEnvironment", v21);
  }

  return v6;
}

@end