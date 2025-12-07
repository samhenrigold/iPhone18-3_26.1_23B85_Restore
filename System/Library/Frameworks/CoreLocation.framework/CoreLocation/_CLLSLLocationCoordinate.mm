@interface _CLLSLLocationCoordinate
- (_CLLSLLocationCoordinate)initWithCoder:(id)coder;
- (_CLLSLLocationCoordinate)initWithLatitude:(double)latitude longitude:(double)longitude;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _CLLSLLocationCoordinate

- (_CLLSLLocationCoordinate)initWithLatitude:(double)latitude longitude:(double)longitude
{
  v7.receiver = self;
  v7.super_class = _CLLSLLocationCoordinate;
  result = [(_CLLSLLocationCoordinate *)&v7 init];
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
  result = objc_msgSend_init(v8, v9, v10, v11);
  *(result + 1) = *&self->_latitude;
  *(result + 2) = *&self->_longitude;
  return result;
}

- (_CLLSLLocationCoordinate)initWithCoder:(id)coder
{
  v12.receiver = self;
  v12.super_class = _CLLSLLocationCoordinate;
  v6 = [(_CLLSLLocationCoordinate *)&v12 init];
  if (v6)
  {
    objc_msgSend_decodeDoubleForKey_(coder, v4, @"latitude", v5);
    v6->_latitude = v7;
    objc_msgSend_decodeDoubleForKey_(coder, v8, @"longitude", v9);
    v6->_longitude = v10;
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  objc_msgSend_encodeDouble_forKey_(coder, a2, @"latitude", v3, self->_latitude);
  longitude = self->_longitude;

  objc_msgSend_encodeDouble_forKey_(coder, v6, @"longitude", v7, longitude);
}

- (id)description
{
  v5 = MEMORY[0x1E696AEC0];
  objc_msgSend_latitude(self, a2, v2, v3);
  v7 = v6;
  objc_msgSend_longitude(self, v8, v9, v10);
  return objc_msgSend_stringWithFormat_(v5, v11, @"<_CLLSLLocationCoordinate: %p> { .latitude = %f, .longitude = %f }", v12, self, v7, v13);
}

@end