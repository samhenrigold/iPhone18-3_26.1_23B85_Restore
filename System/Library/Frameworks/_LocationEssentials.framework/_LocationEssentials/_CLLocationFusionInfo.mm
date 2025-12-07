@interface _CLLocationFusionInfo
- ($F24F406B2B787EFB06265DBA3D28CBD5)coordinate;
- (_CLLocationFusionInfo)initWithCoder:(id)coder;
- (_CLLocationFusionInfo)initWithCoordinateFused:(BOOL)fused coordinateFusedWithVL:(BOOL)l coordinate:(id)coordinate horizontalAccuracy:(double)accuracy referenceFrame:(int)frame altitude:(double)altitude verticalAccuracy:(double)verticalAccuracy course:(double)self0 courseAccuracy:(double)self1;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _CLLocationFusionInfo

- (_CLLocationFusionInfo)initWithCoordinateFused:(BOOL)fused coordinateFusedWithVL:(BOOL)l coordinate:(id)coordinate horizontalAccuracy:(double)accuracy referenceFrame:(int)frame altitude:(double)altitude verticalAccuracy:(double)verticalAccuracy course:(double)self0 courseAccuracy:(double)self1
{
  var1 = coordinate.var1;
  var0 = coordinate.var0;
  v26.receiver = self;
  v26.super_class = _CLLocationFusionInfo;
  result = [(_CLLocationFusionInfo *)&v26 init];
  if (result)
  {
    v23 = (((*&accuracy & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF || accuracy < 0.0) && (*&accuracy - 1) >= 0xFFFFFFFFFFFFFLL;
    v24 = !v23 && fused;
    result->_coordinateFused = v24;
    v25 = !v23 && l;
    result->_coordinateFusedWithVL = v25;
    result->_coordinate.latitude = var0;
    result->_coordinate.longitude = var1;
    result->_referenceFrame = frame;
    result->_horizontalAccuracy = accuracy;
    result->_altitude = altitude;
    result->_verticalAccuracy = verticalAccuracy;
    result->_course = course;
    result->_courseAccuracy = courseAccuracy;
  }

  return result;
}

- (_CLLocationFusionInfo)initWithCoder:(id)coder
{
  v51 = 0;
  v49 = 0.0;
  v50 = 0.0;
  v48 = -1.0;
  v47 = 0;
  v45 = -1.0;
  v46 = 0.0;
  v43 = -1.0;
  v44 = -1.0;
  if (objc_msgSend_allowsKeyedCoding(coder, a2, coder))
  {
    v6 = objc_msgSend_decodeBoolForKey_(coder, v5, @"coordinateFused");
    HIBYTE(v51) = v6;
    if (objc_msgSend_containsValueForKey_(coder, v7, @"coordinateFusedWithVL"))
    {
      v9 = objc_msgSend_decodeBoolForKey_(coder, v8, @"coordinateFusedWithVL");
      LOBYTE(v51) = v9;
    }

    else
    {
      v9 = 0;
    }

    objc_msgSend_decodeDoubleForKey_(coder, v8, @"coordinateLatitude");
    v22 = v21;
    v49 = v21;
    objc_msgSend_decodeDoubleForKey_(coder, v23, @"coordinateLongitude");
    v25 = v24;
    v50 = v24;
    objc_msgSend_decodeDoubleForKey_(coder, v26, @"horizontalAccuracy");
    v28 = v27;
    v48 = v27;
    v30 = objc_msgSend_decodeIntForKey_(coder, v29, @"referenceFrame");
    v47 = v30;
    v33 = 0.0;
    if (objc_msgSend_containsValueForKey_(coder, v31, @"altitude"))
    {
      objc_msgSend_decodeDoubleForKey_(coder, v32, @"altitude");
      v33 = v34;
      v46 = v34;
    }

    v36 = -1.0;
    if (objc_msgSend_containsValueForKey_(coder, v32, @"verticalAccuracy"))
    {
      objc_msgSend_decodeDoubleForKey_(coder, v35, @"verticalAccuracy");
      v36 = v37;
      v45 = v37;
    }

    objc_msgSend_decodeDoubleForKey_(coder, v35, @"course");
    v39 = v38;
    objc_msgSend_decodeDoubleForKey_(coder, v40, @"courseAccuracy");
    return objc_msgSend_initWithCoordinateFused_coordinateFusedWithVL_coordinate_horizontalAccuracy_referenceFrame_altitude_verticalAccuracy_course_courseAccuracy_(self, v41, v6 & 1, v9 & 1, v30, v22, v25, v28, v33, v36, v39, v42);
  }

  else
  {
    objc_msgSend_decodeValueOfObjCType_at_(coder, v5, "B", &v51 + 1);
    objc_msgSend_decodeValueOfObjCType_at_(coder, v10, "B", &v51);
    objc_msgSend_decodeValueOfObjCType_at_(coder, v11, "d", &v49);
    objc_msgSend_decodeValueOfObjCType_at_(coder, v12, "d", &v50);
    objc_msgSend_decodeValueOfObjCType_at_(coder, v13, "d", &v48);
    objc_msgSend_decodeValueOfObjCType_at_(coder, v14, "i", &v47);
    objc_msgSend_decodeValueOfObjCType_at_(coder, v15, "d", &v46);
    objc_msgSend_decodeValueOfObjCType_at_(coder, v16, "d", &v45);
    objc_msgSend_decodeValueOfObjCType_at_(coder, v17, "d", &v44);
    objc_msgSend_decodeValueOfObjCType_at_(coder, v18, "d", &v43);
    return objc_msgSend_initWithCoordinateFused_coordinateFusedWithVL_coordinate_horizontalAccuracy_referenceFrame_altitude_verticalAccuracy_course_courseAccuracy_(self, v19, HIBYTE(v51) & 1, v51 & 1, v47, v49, v50, v48, v46, v45, v44, v43);
  }
}

- (void)encodeWithCoder:(id)coder
{
  if (objc_msgSend_allowsKeyedCoding(coder, a2, coder))
  {
    objc_msgSend_encodeBool_forKey_(coder, v5, self->_coordinateFused, @"coordinateFused");
    objc_msgSend_encodeBool_forKey_(coder, v6, self->_coordinateFusedWithVL, @"coordinateFusedWithVL");
    objc_msgSend_encodeDouble_forKey_(coder, v7, @"coordinateLatitude", self->_coordinate.latitude);
    objc_msgSend_encodeDouble_forKey_(coder, v8, @"coordinateLongitude", self->_coordinate.longitude);
    objc_msgSend_encodeDouble_forKey_(coder, v9, @"horizontalAccuracy", self->_horizontalAccuracy);
    objc_msgSend_encodeInt_forKey_(coder, v10, self->_referenceFrame, @"referenceFrame");
    objc_msgSend_encodeDouble_forKey_(coder, v11, @"altitude", self->_altitude);
    objc_msgSend_encodeDouble_forKey_(coder, v12, @"verticalAccuracy", self->_verticalAccuracy);
    objc_msgSend_encodeDouble_forKey_(coder, v13, @"course", self->_course);
    courseAccuracy = self->_courseAccuracy;

    objc_msgSend_encodeDouble_forKey_(coder, v14, @"courseAccuracy", courseAccuracy);
  }

  else
  {
    objc_msgSend_encodeValueOfObjCType_at_(coder, v5, "B", &self->_coordinateFused);
    objc_msgSend_encodeValueOfObjCType_at_(coder, v16, "B", &self->_coordinateFusedWithVL);
    objc_msgSend_encodeValueOfObjCType_at_(coder, v17, "d", &self->_coordinate);
    objc_msgSend_encodeValueOfObjCType_at_(coder, v18, "d", &self->_coordinate.longitude);
    objc_msgSend_encodeValueOfObjCType_at_(coder, v19, "d", &self->_horizontalAccuracy);
    objc_msgSend_encodeValueOfObjCType_at_(coder, v20, "i", &self->_referenceFrame);
    objc_msgSend_encodeValueOfObjCType_at_(coder, v21, "d", &self->_altitude);
    objc_msgSend_encodeValueOfObjCType_at_(coder, v22, "d", &self->_verticalAccuracy);
    objc_msgSend_encodeValueOfObjCType_at_(coder, v23, "d", &self->_course);

    objc_msgSend_encodeValueOfObjCType_at_(coder, v24, "d", &self->_courseAccuracy);
  }
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)coordinate
{
  latitude = self->_coordinate.latitude;
  longitude = self->_coordinate.longitude;
  result.var1 = longitude;
  result.var0 = latitude;
  return result;
}

@end