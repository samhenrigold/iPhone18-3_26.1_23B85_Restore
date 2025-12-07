@interface CLLocationMatchInfo
- (CLLocationCoordinate2D)matchCoordinate;
- (CLLocationMatchInfo)initWithCoder:(id)coder;
- (CLLocationMatchInfo)initWithMatchQuality:(int64_t)quality matchCoordinate:(CLLocationCoordinate2D)coordinate matchCourse:(double)course matchFormOfWay:(int)way matchRoadClass:(int)class matchShifted:(BOOL)shifted;
- (CLLocationMatchInfo)initWithMatchQuality:(int64_t)quality matchCoordinate:(CLLocationCoordinate2D)coordinate matchCourse:(double)course matchFormOfWay:(int)way matchRoadClass:(int)class matchShifted:(BOOL)shifted matchDataArray:(id)array;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLLocationMatchInfo

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLLocationMatchInfo;
  [(CLLocationMatchInfo *)&v3 dealloc];
}

- (CLLocationCoordinate2D)matchCoordinate
{
  internal = self->_internal;
  v3 = internal[2];
  v4 = internal[3];
  result.longitude = v4;
  result.latitude = v3;
  return result;
}

- (CLLocationMatchInfo)initWithMatchQuality:(int64_t)quality matchCoordinate:(CLLocationCoordinate2D)coordinate matchCourse:(double)course matchFormOfWay:(int)way matchRoadClass:(int)class matchShifted:(BOOL)shifted matchDataArray:(id)array
{
  shiftedCopy = shifted;
  v11 = *&class;
  v12 = *&way;
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  v21.receiver = self;
  v21.super_class = CLLocationMatchInfo;
  v17 = [(CLLocationMatchInfo *)&v21 init];
  if (v17)
  {
    v18 = [CLLocationMatchInfoInternal alloc];
    v17->_internal = objc_msgSend_initWithMatchQuality_matchCoordinate_matchCourse_matchFormOfWay_matchRoadClass_matchShifted_matchDataArray_(v18, v19, quality, v12, v11, shiftedCopy, array, latitude, longitude, course);
  }

  return v17;
}

- (CLLocationMatchInfo)initWithMatchQuality:(int64_t)quality matchCoordinate:(CLLocationCoordinate2D)coordinate matchCourse:(double)course matchFormOfWay:(int)way matchRoadClass:(int)class matchShifted:(BOOL)shifted
{
  shiftedCopy = shifted;
  v9 = *&class;
  v10 = *&way;
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  v19.receiver = self;
  v19.super_class = CLLocationMatchInfo;
  v15 = [(CLLocationMatchInfo *)&v19 init];
  if (v15)
  {
    v16 = [CLLocationMatchInfoInternal alloc];
    v15->_internal = objc_msgSend_initWithMatchQuality_matchCoordinate_matchCourse_matchFormOfWay_matchRoadClass_matchShifted_matchDataArray_(v16, v17, quality, v10, v9, shiftedCopy, 0, latitude, longitude, course);
  }

  return v15;
}

- (CLLocationMatchInfo)initWithCoder:(id)coder
{
  v5 = objc_msgSend_decodeIntegerForKey_(coder, a2, @"kCLLocationMatchInfoCodingKeyMatchQuality");
  objc_msgSend_decodeDoubleForKey_(coder, v6, @"kCLLocationMatchInfoCodingKeyMatchCoordinateLatitude");
  v8 = v7;
  objc_msgSend_decodeDoubleForKey_(coder, v9, @"kCLLocationMatchInfoCodingKeyMatchCoordinateLongitude");
  v11 = v10;
  objc_msgSend_decodeDoubleForKey_(coder, v12, @"kCLLocationMatchInfoCodingKeyMatchCourse");
  v14 = v13;
  v16 = objc_msgSend_decodeInt32ForKey_(coder, v15, @"kCLLocationMatchInfoCodingKeyMatchFormOfWay");
  v18 = objc_msgSend_decodeInt32ForKey_(coder, v17, @"kCLLocationMatchInfoCodingKeyMatchRoadClass");
  v20 = objc_msgSend_decodeBoolForKey_(coder, v19, @"kCLLocationMatchInfoCodingKeyMatchShifted");
  v21 = objc_opt_class();
  v24 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v22, v21, @"kCLLocationMatchInfoCodingKeyMatchDataArray");

  return objc_msgSend_initWithMatchQuality_matchCoordinate_matchCourse_matchFormOfWay_matchRoadClass_matchShifted_matchDataArray_(self, v23, v5, v16, v18, v20, v24, v8, v11, v14);
}

- (void)encodeWithCoder:(id)coder
{
  internal = self->_internal;
  objc_msgSend_encodeInteger_forKey_(coder, a2, *(internal + 1), @"kCLLocationMatchInfoCodingKeyMatchQuality");
  objc_msgSend_encodeDouble_forKey_(coder, v5, @"kCLLocationMatchInfoCodingKeyMatchCoordinateLatitude", internal[2]);
  objc_msgSend_encodeDouble_forKey_(coder, v6, @"kCLLocationMatchInfoCodingKeyMatchCoordinateLongitude", internal[3]);
  objc_msgSend_encodeDouble_forKey_(coder, v7, @"kCLLocationMatchInfoCodingKeyMatchCourse", internal[4]);
  objc_msgSend_encodeInt32_forKey_(coder, v8, *(internal + 10), @"kCLLocationMatchInfoCodingKeyMatchFormOfWay");
  objc_msgSend_encodeInt32_forKey_(coder, v9, *(internal + 11), @"kCLLocationMatchInfoCodingKeyMatchRoadClass");
  objc_msgSend_encodeBool_forKey_(coder, v10, *(internal + 48), @"kCLLocationMatchInfoCodingKeyMatchShifted");
  v12 = *(internal + 7);

  objc_msgSend_encodeObject_forKey_(coder, v11, v12, @"kCLLocationMatchInfoCodingKeyMatchDataArray");
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v7[1] = objc_msgSend_copyWithZone_(self->_internal, v8, zone);
  return v7;
}

@end