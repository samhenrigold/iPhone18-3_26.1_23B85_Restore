@interface CLBIO_Calibration
- (BOOL)isEqual:(id)equal;
- (CLBIO_Calibration)initWithCoder:(id)coder;
- (CLBIO_Calibration)initWithRotationToTrueNorth:(float)north scaleFactor:(float)factor;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLBIO_Calibration

- (CLBIO_Calibration)initWithRotationToTrueNorth:(float)north scaleFactor:(float)factor
{
  v7.receiver = self;
  v7.super_class = CLBIO_Calibration;
  result = [(CLBIO_Calibration *)&v7 init];
  if (result)
  {
    result->_rotationToTrueNorth_rad = north;
    result->_scaleFactor = factor;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  v5 = objc_opt_class();
  isMemberOfClass = objc_msgSend_isMemberOfClass_(equal, v6, v5, v7);
  if (isMemberOfClass)
  {
    rotationToTrueNorth_rad = self->_rotationToTrueNorth_rad;
    objc_msgSend_rotationToTrueNorth_rad(equal, v9, v10, v11);
    if (rotationToTrueNorth_rad == v16)
    {
      scaleFactor = self->_scaleFactor;
      objc_msgSend_scaleFactor(equal, v13, v14, v15);
      LOBYTE(isMemberOfClass) = scaleFactor == v18;
    }

    else
    {
      LOBYTE(isMemberOfClass) = 0;
    }
  }

  return isMemberOfClass;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v8 = objc_msgSend_allocWithZone_(v5, v6, zone, v7);
  objc_msgSend_rotationToTrueNorth_rad(self, v9, v10, v11);
  objc_msgSend_scaleFactor(self, v12, v13, v14);

  return MEMORY[0x1EEE66B58](v8, sel_initWithRotationToTrueNorth_scaleFactor_, v15, v16);
}

- (void)encodeWithCoder:(id)coder
{
  objc_msgSend_rotationToTrueNorth_rad(self, a2, coder, v3);
  objc_msgSend_encodeFloat_forKey_(coder, v6, @"calibrationRotationToTrueNorth", v7);
  objc_msgSend_scaleFactor(self, v8, v9, v10);

  objc_msgSend_encodeFloat_forKey_(coder, v11, @"calibrationScaleFactor", v12);
}

- (CLBIO_Calibration)initWithCoder:(id)coder
{
  v12.receiver = self;
  v12.super_class = CLBIO_Calibration;
  v6 = [(CLBIO_Calibration *)&v12 init];
  if (v6)
  {
    objc_msgSend_decodeFloatForKey_(coder, v4, @"calibrationRotationToTrueNorth", v5);
    v6->_rotationToTrueNorth_rad = v7;
    objc_msgSend_decodeFloatForKey_(coder, v8, @"calibrationScaleFactor", v9);
    v6->_scaleFactor = v10;
  }

  return v6;
}

@end