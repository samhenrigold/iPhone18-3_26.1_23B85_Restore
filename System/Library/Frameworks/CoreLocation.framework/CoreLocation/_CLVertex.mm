@interface _CLVertex
- (BOOL)isEqual:(id)equal;
- (CLLocationCoordinate2D)coordinate;
- (_CLVertex)initWithClientCoordinate:(id)coordinate;
- (_CLVertex)initWithCoder:(id)coder;
- (_CLVertex)initWithCoordinate:(CLLocationCoordinate2D)coordinate;
- (double)getDistanceFrom:(CLLocationCoordinate2D)from;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _CLVertex

- (_CLVertex)initWithCoordinate:(CLLocationCoordinate2D)coordinate
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  v6.receiver = self;
  v6.super_class = _CLVertex;
  result = [(_CLVertex *)&v6 init];
  if (result)
  {
    result->_coordinate.latitude = latitude;
    result->_coordinate.longitude = longitude;
  }

  return result;
}

- (_CLVertex)initWithClientCoordinate:(id)coordinate
{
  var1 = coordinate.var1;
  var0 = coordinate.var0;
  v6.receiver = self;
  v6.super_class = _CLVertex;
  result = [(_CLVertex *)&v6 init];
  if (result)
  {
    result->_coordinate.latitude = var0;
    result->_coordinate.longitude = var1;
  }

  return result;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = _CLVertex;
  [(_CLVertex *)&v2 dealloc];
}

- (double)getDistanceFrom:(CLLocationCoordinate2D)from
{
  longitude = from.longitude;
  latitude = from.latitude;
  objc_msgSend_coordinate(self, a2, v3, v4);
  v9 = v8;
  objc_msgSend_coordinate(self, v10, v11, v12);

  return sub_19B87E164(latitude, longitude, v9, v13);
}

- (_CLVertex)initWithCoder:(id)coder
{
  objc_msgSend_decodeDoubleForKey_(coder, a2, @"kCLVertexCodingKeyLatitude", v3);
  self->_coordinate.latitude = v6;
  objc_msgSend_decodeDoubleForKey_(coder, v7, @"kCLVertexCodingKeyLongitude", v8);
  self->_coordinate.longitude = v9;
  return self;
}

- (void)encodeWithCoder:(id)coder
{
  objc_msgSend_coordinate(self, a2, coder, v3);
  objc_msgSend_encodeDouble_forKey_(coder, v6, @"kCLVertexCodingKeyLatitude", v7);
  objc_msgSend_coordinate(self, v8, v9, v10);

  objc_msgSend_encodeDouble_forKey_(coder, v11, @"kCLVertexCodingKeyLongitude", v12, v13);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  objc_msgSend_coordinate(self, v5, v6, v7);

  return MEMORY[0x1EEE66B58](v4, sel_initWithCoordinate_, v8, v9);
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    LOBYTE(isMemberOfClass) = 1;
  }

  else
  {
    v5 = objc_opt_class();
    isMemberOfClass = objc_msgSend_isMemberOfClass_(equal, v6, v5, v7);
    if (isMemberOfClass)
    {
      objc_msgSend_coordinate(self, v9, v10, v11);
      v13 = v12;
      objc_msgSend_coordinate(equal, v14, v15, v16);
      if (v13 == v20)
      {
        objc_msgSend_coordinate(self, v17, v18, v19);
        v22 = v21;
        objc_msgSend_coordinate(equal, v23, v24, v25);
        LOBYTE(isMemberOfClass) = v22 == v26;
      }

      else
      {
        LOBYTE(isMemberOfClass) = 0;
      }
    }
  }

  return isMemberOfClass;
}

- (id)description
{
  v5 = MEMORY[0x1E696AEC0];
  objc_msgSend_coordinate(self, a2, v2, v3);
  v7 = v6;
  objc_msgSend_coordinate(self, v8, v9, v10);
  return objc_msgSend_stringWithFormat_(v5, v11, @"#polygon,_CLVertex (latitude:'%.07lf', longitude:'%.07lf')", v12, v7, v13);
}

- (unint64_t)hash
{
  v3 = &qword_19BA8C000;
  LODWORD(v3) = llround(self->_coordinate.latitude * 100000.0);
  LODWORD(v2) = llround(self->_coordinate.longitude * 100000.0);
  return v3 | (v2 << 32);
}

- (CLLocationCoordinate2D)coordinate
{
  latitude = self->_coordinate.latitude;
  longitude = self->_coordinate.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

@end