@interface CLBIO_Quaternion
- (BOOL)isEqual:(id)equal;
- (CLBIO_Quaternion)initWithCoder:(id)coder;
- (CLBIO_Quaternion)initWithX:(double)x Y:(double)y Z:(double)z W:(double)w;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLBIO_Quaternion

- (CLBIO_Quaternion)initWithX:(double)x Y:(double)y Z:(double)z W:(double)w
{
  v11.receiver = self;
  v11.super_class = CLBIO_Quaternion;
  result = [(CLBIO_Quaternion *)&v11 init];
  if (result)
  {
    result->_X = x;
    result->_Y = y;
    result->_Z = z;
    result->_W = w;
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
    if (X == v16 && (Y = self->_Y, objc_msgSend_Y(equal, v13, v14, v15), Y == v21) && (Z = self->_Z, objc_msgSend_Z(equal, v18, v19, v20), Z == v26))
    {
      W = self->_W;
      objc_msgSend_W(equal, v23, v24, v25);
      LOBYTE(isMemberOfClass) = W == v28;
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
  objc_msgSend_W(self, v18, v19, v20);

  return MEMORY[0x1EEE66B58](v8, sel_initWithX_Y_Z_W_, v21, v22);
}

- (void)encodeWithCoder:(id)coder
{
  objc_msgSend_X(self, a2, coder, v3);
  objc_msgSend_encodeDouble_forKey_(coder, v6, @"quaternionX", v7);
  objc_msgSend_Y(self, v8, v9, v10);
  objc_msgSend_encodeDouble_forKey_(coder, v11, @"quaternionY", v12);
  objc_msgSend_Z(self, v13, v14, v15);
  objc_msgSend_encodeDouble_forKey_(coder, v16, @"quaternionZ", v17);
  objc_msgSend_W(self, v18, v19, v20);

  objc_msgSend_encodeDouble_forKey_(coder, v21, @"quaternionW", v22);
}

- (CLBIO_Quaternion)initWithCoder:(id)coder
{
  v18.receiver = self;
  v18.super_class = CLBIO_Quaternion;
  v6 = [(CLBIO_Quaternion *)&v18 init];
  if (v6)
  {
    objc_msgSend_decodeDoubleForKey_(coder, v4, @"quaternionX", v5);
    v6->_X = v7;
    objc_msgSend_decodeDoubleForKey_(coder, v8, @"quaternionY", v9);
    v6->_Y = v10;
    objc_msgSend_decodeDoubleForKey_(coder, v11, @"quaternionZ", v12);
    v6->_Z = v13;
    objc_msgSend_decodeDoubleForKey_(coder, v14, @"quaternionW", v15);
    v6->_W = v16;
  }

  return v6;
}

@end