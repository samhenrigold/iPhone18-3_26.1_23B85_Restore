@interface CLRacingRouteState
- (CLRacingRouteState)initWithCoder:(id)coder;
- (CLRacingRouteState)initWithLatitude:(double)latitude longitude:(double)longitude altitude:(double)altitude odometer:(double)odometer timestamp:(double)timestamp timeSinceStart:(double)start offRouteTime:(double)time distanceSinceStart:(double)self0 offRouteDistance:(double)self1 averagePace:(double)self2 distanceAlongReference:(double)self3;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLRacingRouteState

- (CLRacingRouteState)initWithLatitude:(double)latitude longitude:(double)longitude altitude:(double)altitude odometer:(double)odometer timestamp:(double)timestamp timeSinceStart:(double)start offRouteTime:(double)time distanceSinceStart:(double)self0 offRouteDistance:(double)self1 averagePace:(double)self2 distanceAlongReference:(double)self3
{
  v22.receiver = self;
  v22.super_class = CLRacingRouteState;
  result = [(CLRacingRouteState *)&v22 init];
  if (result)
  {
    result->_latitude = latitude;
    result->_longitude = longitude;
    result->_altitude = altitude;
    result->_odometer = odometer;
    result->_timestamp = timestamp;
    result->_timeSinceStart = start;
    result->_offRouteTime = time;
    result->_distanceSinceStart = sinceStart;
    result->_offRouteDistance = distance;
    result->_averagePace = pace;
    result->_distanceAlongReference = reference;
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  objc_msgSend_latitude(self, a2, coder, v3);
  objc_msgSend_encodeDouble_forKey_(coder, v6, @"latitude", v7);
  objc_msgSend_longitude(self, v8, v9, v10);
  objc_msgSend_encodeDouble_forKey_(coder, v11, @"longitude", v12);
  objc_msgSend_altitude(self, v13, v14, v15);
  objc_msgSend_encodeDouble_forKey_(coder, v16, @"altitude", v17);
  objc_msgSend_odometer(self, v18, v19, v20);
  objc_msgSend_encodeDouble_forKey_(coder, v21, @"odometer", v22);
  objc_msgSend_timestamp(self, v23, v24, v25);
  objc_msgSend_encodeDouble_forKey_(coder, v26, @"timestamp", v27);
  objc_msgSend_timeSinceStart(self, v28, v29, v30);
  objc_msgSend_encodeDouble_forKey_(coder, v31, @"timeSinceStart", v32);
  objc_msgSend_offRouteTime(self, v33, v34, v35);
  objc_msgSend_encodeDouble_forKey_(coder, v36, @"offRouteTime", v37);
  objc_msgSend_distanceSinceStart(self, v38, v39, v40);
  objc_msgSend_encodeDouble_forKey_(coder, v41, @"distanceSinceStart", v42);
  objc_msgSend_offRouteDistance(self, v43, v44, v45);
  objc_msgSend_encodeDouble_forKey_(coder, v46, @"offRouteDistance", v47);
  objc_msgSend_averagePace(self, v48, v49, v50);
  objc_msgSend_encodeDouble_forKey_(coder, v51, @"averagePace", v52);
  objc_msgSend_distanceAlongReference(self, v53, v54, v55);

  objc_msgSend_encodeDouble_forKey_(coder, v56, @"distanceAlongReference", v57);
}

- (CLRacingRouteState)initWithCoder:(id)coder
{
  v4 = [CLRacingRouteState alloc];
  objc_msgSend_decodeDoubleForKey_(coder, v5, @"latitude", v6);
  v51 = v7;
  objc_msgSend_decodeDoubleForKey_(coder, v8, @"longitude", v9);
  v50 = v10;
  objc_msgSend_decodeDoubleForKey_(coder, v11, @"altitude", v12);
  v14 = v13;
  objc_msgSend_decodeDoubleForKey_(coder, v15, @"odometer", v16);
  v18 = v17;
  objc_msgSend_decodeDoubleForKey_(coder, v19, @"timestamp", v20);
  v22 = v21;
  objc_msgSend_decodeDoubleForKey_(coder, v23, @"timeSinceStart", v24);
  v26 = v25;
  objc_msgSend_decodeDoubleForKey_(coder, v27, @"offRouteTime", v28);
  v30 = v29;
  objc_msgSend_decodeDoubleForKey_(coder, v31, @"distanceSinceStart", v32);
  v34 = v33;
  objc_msgSend_decodeDoubleForKey_(coder, v35, @"offRouteDistance", v36);
  v38 = v37;
  objc_msgSend_decodeDoubleForKey_(coder, v39, @"averagePace", v40);
  v42 = v41;
  objc_msgSend_decodeDoubleForKey_(coder, v43, @"distanceAlongReference", v44);
  return objc_msgSend_initWithLatitude_longitude_altitude_odometer_timestamp_timeSinceStart_offRouteTime_distanceSinceStart_offRouteDistance_averagePace_distanceAlongReference_(v4, v45, v46, v47, v51, v50, v14, v18, v22, v26, v30, v34, v38, v42, v48);
}

@end