@interface CLLocationCoordinate
- (BOOL)isEqualCoordinate:(id)coordinate;
- (CLLocationCoordinate)initWithCoder:(id)coder;
- (CLLocationCoordinate)initWithLatitude:(double)latitude longitude:(double)longitude;
- (double)distanceFrom:(id)from;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLLocationCoordinate

- (CLLocationCoordinate)initWithLatitude:(double)latitude longitude:(double)longitude
{
  v7.receiver = self;
  v7.super_class = CLLocationCoordinate;
  result = [(CLLocationCoordinate *)&v7 init];
  if (result)
  {
    result->_latitude = latitude;
    result->_longitude = longitude;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v8 = objc_msgSend_allocWithZone_(v5, v6, zone, v7);
  objc_msgSend_latitude(self, v9, v10, v11);
  v13 = v12;
  objc_msgSend_longitude(self, v14, v15, v16);

  return objc_msgSend_initWithLatitude_longitude_(v8, v17, v18, v19, v13, v20);
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = CLLocationCoordinate;
  [(CLLocationCoordinate *)&v2 dealloc];
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  return objc_msgSend_stringWithFormat_(v2, v5, @"%@", v6, v4);
}

- (void)encodeWithCoder:(id)coder
{
  objc_msgSend_latitude(self, a2, coder, v3);
  objc_msgSend_encodeDouble_forKey_(coder, v6, @"latitude", v7);
  objc_msgSend_longitude(self, v8, v9, v10);

  objc_msgSend_encodeDouble_forKey_(coder, v11, @"longitude", v12);
}

- (CLLocationCoordinate)initWithCoder:(id)coder
{
  v4 = [CLLocationCoordinate alloc];
  objc_msgSend_decodeDoubleForKey_(coder, v5, @"latitude", v6);
  v8 = v7;
  objc_msgSend_decodeDoubleForKey_(coder, v9, @"longitude", v10);

  return objc_msgSend_initWithLatitude_longitude_(v4, v11, v12, v13, v8, v14);
}

- (BOOL)isEqualCoordinate:(id)coordinate
{
  latitude = self->_latitude;
  objc_msgSend_latitude(coordinate, a2, coordinate, v3);
  if (vabdd_f64(latitude, v10) >= 0.0000001)
  {
    return 0;
  }

  longitude = self->_longitude;
  objc_msgSend_longitude(coordinate, v7, v8, v9);
  return vabdd_f64(longitude, v12) < 0.0000001;
}

- (double)distanceFrom:(id)from
{
  if (!from)
  {
    return -1.0;
  }

  latitude = self->_latitude;
  longitude = self->_longitude;
  objc_msgSend_latitude(from, a2, from, v3);
  v8 = v7;
  v12 = objc_msgSend_longitude(from, v9, v10, v11);
  v13.n128_u64[0] = v14.n128_u64[0];
  v14.n128_f64[0] = latitude;
  v15.n128_f64[0] = longitude;
  v16.n128_u64[0] = v8;

  MEMORY[0x1EEDE89A0](v12, v14, v15, v16, v13);
  return result;
}

@end