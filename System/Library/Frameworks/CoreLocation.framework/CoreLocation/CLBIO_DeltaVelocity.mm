@interface CLBIO_DeltaVelocity
- (BOOL)isEqual:(id)equal;
- (CLBIO_DeltaVelocity)initWithCoder:(id)coder;
- (CLBIO_DeltaVelocity)initWithX:(double)x Y:(double)y Z:(double)z;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLBIO_DeltaVelocity

- (CLBIO_DeltaVelocity)initWithX:(double)x Y:(double)y Z:(double)z
{
  v9.receiver = self;
  v9.super_class = CLBIO_DeltaVelocity;
  result = [(CLBIO_DeltaVelocity *)&v9 init];
  if (result)
  {
    result->_X = x;
    result->_Y = y;
    result->_Z = z;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  v5 = objc_opt_class();
  isMemberOfClass = objc_msgSend_isMemberOfClass_(equal, v6, v5, v7);
  if (isMemberOfClass)
  {
    X = self->_X;
    objc_msgSend_X(equal, v9, v10, v11);
    if (X == v16 && (Y = self->_Y, objc_msgSend_Y(equal, v13, v14, v15), Y == v21))
    {
      Z = self->_Z;
      objc_msgSend_Z(equal, v18, v19, v20);
      LOBYTE(isMemberOfClass) = Z == v23;
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
  objc_msgSend_X(self, v9, v10, v11);
  objc_msgSend_Y(self, v12, v13, v14);
  objc_msgSend_Z(self, v15, v16, v17);

  return MEMORY[0x1EEE66B58](v8, sel_initWithX_Y_Z_, v18, v19);
}

- (void)encodeWithCoder:(id)coder
{
  objc_msgSend_X(self, a2, coder, v3);
  objc_msgSend_encodeDouble_forKey_(coder, v6, @"deltaVelocityX", v7);
  objc_msgSend_Y(self, v8, v9, v10);
  objc_msgSend_encodeDouble_forKey_(coder, v11, @"deltaVelocityY", v12);
  objc_msgSend_Z(self, v13, v14, v15);

  objc_msgSend_encodeDouble_forKey_(coder, v16, @"deltaVelocityZ", v17);
}

- (CLBIO_DeltaVelocity)initWithCoder:(id)coder
{
  v15.receiver = self;
  v15.super_class = CLBIO_DeltaVelocity;
  v6 = [(CLBIO_DeltaVelocity *)&v15 init];
  if (v6)
  {
    objc_msgSend_decodeDoubleForKey_(coder, v4, @"deltaVelocityX", v5);
    v6->_X = v7;
    objc_msgSend_decodeDoubleForKey_(coder, v8, @"deltaVelocityY", v9);
    v6->_Y = v10;
    objc_msgSend_decodeDoubleForKey_(coder, v11, @"deltaVelocityZ", v12);
    v6->_Z = v13;
  }

  return v6;
}

@end