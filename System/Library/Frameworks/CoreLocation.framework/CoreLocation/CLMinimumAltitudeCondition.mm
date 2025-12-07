@interface CLMinimumAltitudeCondition
- (BOOL)isEqual:(id)equal;
- (CLMinimumAltitudeCondition)initWithAltitude:(double)altitude;
- (CLMinimumAltitudeCondition)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLMinimumAltitudeCondition

- (CLMinimumAltitudeCondition)initWithAltitude:(double)altitude
{
  v5.receiver = self;
  v5.super_class = CLMinimumAltitudeCondition;
  result = [(CLCondition *)&v5 initCondition];
  if (result)
  {
    result->_altitude = altitude;
  }

  return result;
}

- (id)description
{
  v4 = MEMORY[0x1E696AEC0];
  objc_msgSend_altitude(self, a2, v2, v3);
  return objc_msgSend_stringWithFormat_(v4, v5, @"CLMinimumAltitudeCondition(altitude: %+.2fm)", v6, v7);
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  v21 = v4;
  v22 = v3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return 0;
    }
  }

  objc_msgSend_altitude(self, v11, v12, v13, v8, v7, v6, v5, v21, v22);
  v15 = round(v14 * 1000.0);
  objc_msgSend_altitude(equal, v16, v17, v18);
  return vabdd_f64(v15, round(v19 * 1000.0)) <= 2.22044605e-16;
}

- (void)encodeWithCoder:(id)coder
{
  objc_msgSend_altitude(self, a2, coder, v3);

  objc_msgSend_encodeDouble_forKey_(coder, v5, @"kCLMinimumAltitudeConditionAltitude", v6);
}

- (CLMinimumAltitudeCondition)initWithCoder:(id)coder
{
  v9.receiver = self;
  v9.super_class = CLMinimumAltitudeCondition;
  v4 = [(CLCondition *)&v9 initWithCoder:?];
  objc_msgSend_decodeDoubleForKey_(coder, v5, @"kCLMinimumAltitudeConditionAltitude", v6);
  v4->_altitude = v7;
  return v4;
}

@end