@interface CLVehicleHeading
- (CLVehicleHeading)initWithClientVehicleHeading:(id)heading;
- (CLVehicleHeading)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLVehicleHeading

- (CLVehicleHeading)initWithClientVehicleHeading:(id)heading
{
  var1 = heading.var1;
  var0 = heading.var0;
  v11.receiver = self;
  v11.super_class = CLVehicleHeading;
  v5 = [(CLVehicleHeading *)&v11 init];
  if (v5)
  {
    v6 = [CLVehicleHeadingInternal alloc];
    v5->_internal = objc_msgSend_initWithClientVehicleHeading_(v6, v7, v8, v9, var0, var1);
  }

  return v5;
}

- (CLVehicleHeading)initWithCoder:(id)coder
{
  v21 = 0.0;
  v22 = 0.0;
  if (objc_msgSend_allowsKeyedCoding(coder, a2, coder, v3))
  {
    objc_msgSend_decodeDoubleForKey_(coder, v6, @"kCLVehicleHeadingCodingKeyTrueHeading", v7);
    v9 = v8;
    objc_msgSend_decodeDoubleForKey_(coder, v10, @"kCLVehicleHeadingCodingKeyTimestamp", v11, *&v8);
    v22 = v12;
    return objc_msgSend_initWithClientVehicleHeading_(self, v13, v14, v15, v9, v12);
  }

  else
  {
    objc_msgSend_decodeValueOfObjCType_at_(coder, v6, "d", &v21);
    objc_msgSend_decodeValueOfObjCType_at_(coder, v17, "d", &v22);
    return objc_msgSend_initWithClientVehicleHeading_(self, v18, v19, v20, v21, v22);
  }
}

- (void)encodeWithCoder:(id)coder
{
  internal = self->_internal;
  if (objc_msgSend_allowsKeyedCoding(coder, a2, coder, v3))
  {
    objc_msgSend_encodeDouble_forKey_(coder, v6, @"kCLVehicleHeadingCodingKeyTrueHeading", v7, internal[1]);
    v10 = internal[2];

    objc_msgSend_encodeDouble_forKey_(coder, v8, @"kCLVehicleHeadingCodingKeyTimestamp", v9, v10);
  }

  else
  {
    objc_msgSend_encodeValueOfObjCType_at_(coder, v6, "d", (internal + 1));

    objc_msgSend_encodeValueOfObjCType_at_(coder, v11, "d", (internal + 2));
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLVehicleHeading;
  [(CLVehicleHeading *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v8 = objc_msgSend_allocWithZone_(v5, v6, zone, v7);
  v8[1] = objc_msgSend_copyWithZone_(self->_internal, v9, zone, v10);
  return v8;
}

- (id)description
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = *(self->_internal + 1);
  v6 = MEMORY[0x1E696AB78];
  v7 = objc_msgSend_timestamp(self, a2, v2, v3);
  v9 = objc_msgSend_localizedStringFromDate_dateStyle_timeStyle_(v6, v8, v7, 1, 4);
  return objc_msgSend_stringWithFormat_(v4, v10, @"trueHeading %.2f @ %@", v11, v5, v9);
}

@end