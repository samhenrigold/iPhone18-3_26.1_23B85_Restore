@interface _CLLSLLocation
- (_CLLSLLocation)initWithCoder:(id)coder;
- (_CLLSLLocation)initWithCoordinate:(id)coordinate altitude:(double)altitude timetamp:(double)timetamp;
- (_CLLSLLocation)initWithLatitude:(double)latitude longitude:(double)longitude;
- (_CLLSLLocation)initWithLatitude:(double)latitude longitude:(double)longitude altitude:(double)altitude timetamp:(double)timetamp;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionWithMemberIndent:(id)indent endIndent:(id)endIndent;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _CLLSLLocation

- (_CLLSLLocation)initWithLatitude:(double)latitude longitude:(double)longitude
{
  v7 = [_CLLSLLocationCoordinate alloc];
  v11 = objc_msgSend_initWithLatitude_longitude_(v7, v8, v9, v10, latitude, longitude);

  return MEMORY[0x1EEE66B58](self, sel_initWithCoordinate_altitude_timetamp_, v11, v12);
}

- (_CLLSLLocation)initWithLatitude:(double)latitude longitude:(double)longitude altitude:(double)altitude timetamp:(double)timetamp
{
  v9 = [_CLLSLLocationCoordinate alloc];
  v13 = objc_msgSend_initWithLatitude_longitude_(v9, v10, v11, v12, latitude, longitude);

  return MEMORY[0x1EEE66B58](self, sel_initWithCoordinate_altitude_timetamp_, v13, v14);
}

- (_CLLSLLocation)initWithCoordinate:(id)coordinate altitude:(double)altitude timetamp:(double)timetamp
{
  v13.receiver = self;
  v13.super_class = _CLLSLLocation;
  v11 = [(_CLLSLLocation *)&v13 init];
  if (v11)
  {
    v11->_coordinate = objc_msgSend_copy(coordinate, v8, v9, v10);
    v11->_altitude = altitude;
    v11->_timestamp = timetamp;
  }

  return v11;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _CLLSLLocation;
  [(_CLLSLLocation *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v8 = objc_msgSend_allocWithZone_(v5, v6, zone, v7);
  v12 = objc_msgSend_init(v8, v9, v10, v11);
  *(v12 + 8) = objc_msgSend_copyWithZone_(self->_coordinate, v13, zone, v14);
  *(v12 + 16) = self->_altitude;
  *(v12 + 24) = self->_timestamp;
  return v12;
}

- (_CLLSLLocation)initWithCoder:(id)coder
{
  v14.receiver = self;
  v14.super_class = _CLLSLLocation;
  v4 = [(_CLLSLLocation *)&v14 init];
  if (v4)
  {
    v5 = objc_opt_class();
    v4->_coordinate = objc_msgSend_decodeObjectOfClass_forKey_(coder, v6, v5, @"coordinate");
    objc_msgSend_decodeDoubleForKey_(coder, v7, @"altitude", v8);
    v4->_altitude = v9;
    objc_msgSend_decodeDoubleForKey_(coder, v10, @"timestamp", v11);
    v4->_timestamp = v12;
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  objc_msgSend_encodeObject_forKey_(coder, a2, self->_coordinate, @"coordinate");
  objc_msgSend_encodeDouble_forKey_(coder, v5, @"altitude", v6, self->_altitude);
  timestamp = self->_timestamp;

  objc_msgSend_encodeDouble_forKey_(coder, v7, @"timestamp", v8, timestamp);
}

- (id)descriptionWithMemberIndent:(id)indent endIndent:(id)endIndent
{
  v7 = MEMORY[0x1E696AEC0];
  v8 = objc_msgSend_coordinate(self, a2, indent, endIndent);
  objc_msgSend_altitude(self, v9, v10, v11);
  v13 = v12;
  objc_msgSend_timestamp(self, v14, v15, v16);
  return objc_msgSend_stringWithFormat_(v7, v17, @"<_CLLSLLocation: %p> {\n%@.coordinate = %@,\n%@.altitude = %f,\n%@.timestamp = %f\n%@}", v18, self, indent, v8, indent, v13, indent, v19, endIndent);
}

@end