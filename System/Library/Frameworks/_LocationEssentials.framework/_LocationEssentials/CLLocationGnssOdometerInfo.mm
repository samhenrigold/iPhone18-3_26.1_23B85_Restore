@interface CLLocationGnssOdometerInfo
- (CLLocationGnssOdometerInfo)initWithCoder:(id)coder;
- (CLLocationGnssOdometerInfo)initWithOdometer:(double)odometer deltaDistance:(double)distance deltaDistanceAccuracy:(double)accuracy;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLLocationGnssOdometerInfo

- (CLLocationGnssOdometerInfo)initWithOdometer:(double)odometer deltaDistance:(double)distance deltaDistanceAccuracy:(double)accuracy
{
  v9.receiver = self;
  v9.super_class = CLLocationGnssOdometerInfo;
  result = [(CLLocationGnssOdometerInfo *)&v9 init];
  if (result)
  {
    result->_odometer = odometer;
    result->_deltaDistance = distance;
    result->_deltaDistanceAccuracy = accuracy;
  }

  return result;
}

- (CLLocationGnssOdometerInfo)initWithCoder:(id)coder
{
  *&v23 = -1.0;
  *&v24 = -1.0;
  *&v22 = -1.0;
  if (objc_msgSend_allowsKeyedCoding(coder, a2, coder))
  {
    v7 = -1.0;
    v8 = -1.0;
    if (objc_msgSend_containsValueForKey_(coder, v5, @"odometer"))
    {
      objc_msgSend_decodeDoubleForKey_(coder, v6, @"odometer");
      v8 = v9;
      *&v24 = v9;
    }

    if (objc_msgSend_containsValueForKey_(coder, v6, @"deltaDistance"))
    {
      objc_msgSend_decodeDoubleForKey_(coder, v10, @"deltaDistance");
      v7 = v11;
      *&v23 = v11;
    }

    v12 = objc_msgSend_containsValueForKey_(coder, v10, @"deltaDistanceAccuracy");
    v15 = -1.0;
    if (v12)
    {
      objc_msgSend_decodeDoubleForKey_(coder, v13, @"deltaDistanceAccuracy");
      *&v22 = v16;
      return objc_msgSend_initWithOdometer_deltaDistance_deltaDistanceAccuracy_(self, v17, v18, v8, v7, v16);
    }
  }

  else
  {
    objc_msgSend_decodeValueOfObjCType_at_(coder, v5, "d", &v24);
    objc_msgSend_decodeValueOfObjCType_at_(coder, v20, "d", &v23);
    objc_msgSend_decodeValueOfObjCType_at_(coder, v21, "d", &v22);
    v7 = *&v23;
    v8 = *&v24;
    v15 = *&v22;
  }

  return objc_msgSend_initWithOdometer_deltaDistance_deltaDistanceAccuracy_(self, v13, v14, v8, v7, v15);
}

- (void)encodeWithCoder:(id)coder
{
  if (objc_msgSend_allowsKeyedCoding(coder, a2, coder))
  {
    objc_msgSend_encodeDouble_forKey_(coder, v5, @"odometer", self->_odometer);
    objc_msgSend_encodeDouble_forKey_(coder, v6, @"deltaDistance", self->_deltaDistance);
    deltaDistanceAccuracy = self->_deltaDistanceAccuracy;

    objc_msgSend_encodeDouble_forKey_(coder, v7, @"deltaDistanceAccuracy", deltaDistanceAccuracy);
  }

  else
  {
    objc_msgSend_encodeValueOfObjCType_at_(coder, v5, "d", &self->_odometer);
    objc_msgSend_encodeValueOfObjCType_at_(coder, v9, "d", &self->_deltaDistance);

    objc_msgSend_encodeValueOfObjCType_at_(coder, v10, "d", &self->_deltaDistanceAccuracy);
  }
}

@end