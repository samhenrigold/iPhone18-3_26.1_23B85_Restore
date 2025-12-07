@interface CLVehicleSpeed
- (CLVehicleSpeed)initWithClientVehicleSpeed:(id)speed;
- (CLVehicleSpeed)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)shortDescription;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLVehicleSpeed

- (CLVehicleSpeed)initWithClientVehicleSpeed:(id)speed
{
  var3 = speed.var3;
  var2 = speed.var2;
  var1 = speed.var1;
  var0 = speed.var0;
  v13.receiver = self;
  v13.super_class = CLVehicleSpeed;
  v7 = [(CLVehicleSpeed *)&v13 init];
  if (v7)
  {
    v8 = [CLVehicleSpeedInternal alloc];
    v7->_internal = objc_msgSend_initWithClientVehicleSpeed_(v8, v9, v10, v11, var0, var1, var2, var3);
  }

  return v7;
}

- (CLVehicleSpeed)initWithCoder:(id)coder
{
  v21 = 0u;
  v22 = 0u;
  if (objc_msgSend_allowsKeyedCoding(coder, a2, coder, v3))
  {
    objc_msgSend_decodeDoubleForKey_(coder, v6, @"kCLVehicleSpeedCodingKeySpeed", v7);
    v9 = v8;
    objc_msgSend_decodeDoubleForKey_(coder, v10, @"kCLVehicleSpeedCodingKeyTimestamp", v11, *&v8);
    *(&v21 + 1) = v12;
    return objc_msgSend_initWithClientVehicleSpeed_(self, v13, v14, v15, v9, v12, 0.0, 0.0);
  }

  else
  {
    objc_msgSend_decodeValueOfObjCType_at_(coder, v6, "d", &v21);
    objc_msgSend_decodeValueOfObjCType_at_(coder, v17, "d", &v21 + 8);
    return objc_msgSend_initWithClientVehicleSpeed_(self, v18, v19, v20, v21, v22);
  }
}

- (void)encodeWithCoder:(id)coder
{
  internal = self->_internal;
  if (objc_msgSend_allowsKeyedCoding(coder, a2, coder, v3))
  {
    objc_msgSend_encodeDouble_forKey_(coder, v6, @"kCLVehicleSpeedCodingKeySpeed", v7, internal[1]);
    v10 = internal[2];

    objc_msgSend_encodeDouble_forKey_(coder, v8, @"kCLVehicleSpeedCodingKeyTimestamp", v9, v10);
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
  v3.super_class = CLVehicleSpeed;
  [(CLVehicleSpeed *)&v3 dealloc];
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
  return objc_msgSend_stringWithFormat_(v4, v10, @"speed %.2f mps @ %@", v11, v5, v9);
}

- (id)shortDescription
{
  v3 = *(self->_internal + 1);
  v4 = v3 * 2.23693629;
  v5 = v3 < 0.0;
  v6 = -1.0;
  if (!v5)
  {
    v6 = v4;
  }

  return objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"%.0fmph", v2, *&v6);
}

@end