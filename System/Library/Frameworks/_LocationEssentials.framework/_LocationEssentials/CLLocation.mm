@interface CLLocation
- ($44DCC351AE6C4D5D67D1940BF7906435)clientLocation;
- (BOOL)isAltitudeWgs84Available;
- (CLFloor)floor;
- (CLLocation)initWithClientLocation:(id *)location;
- (CLLocation)initWithClientLocation:(id *)location clientLocationPrivate:(id *)private;
- (CLLocation)initWithClientLocation:(id *)location clientLocationPrivate:(id *)private coarseMetaData:(id)data;
- (CLLocation)initWithClientLocation:(id *)location coarseMetaData:(id)data;
- (CLLocation)initWithClientLocation:(id *)location matchInfo:(id)info;
- (CLLocation)initWithClientLocation:(id *)location matchInfo:(id)info trustedTimestamp:(double)timestamp;
- (CLLocation)initWithClientLocation:(id *)location matchInfo:(id)info trustedTimestamp:(double)timestamp groundAltitude:(id)altitude;
- (CLLocation)initWithClientLocation:(id *)location matchInfo:(id)info trustedTimestamp:(double)timestamp groundAltitude:(id)altitude fusionInfo:(id)fusionInfo trackRunInfo:(id)runInfo rawHorizontalAccuracy:(double)accuracy rawAltitude:(double)self0 rawVerticalAccuracy:(double)self1 rawCourseAccuracy:(double)self2 positionContextStateType:(int)self3 probabilityPositionContextStateIndoor:(double)self4 probabilityPositionContextStateOutdoor:(double)self5 gnssOdometerInfo:(id)self6 coarseMetaData:(id)self7;
- (CLLocation)initWithClientLocation:(id *)location matchInfo:(id)info trustedTimestamp:(double)timestamp groundAltitude:(id)altitude fusionInfo:(id)fusionInfo trackRunInfo:(id)runInfo rawHorizontalAccuracy:(double)accuracy rawCourseAccuracy:(double)self0 coarseMetaData:(id)self1;
- (CLLocation)initWithCoder:(id)coder;
- (CLLocation)initWithLatitude:(CLLocationDegrees)latitude longitude:(CLLocationDegrees)longitude;
- (CLLocationCoordinate2D)coordinate;
- (CLLocationCoordinate2D)rawCoordinate;
- (CLLocationDistance)distanceFromLocation:(const CLLocation *)location;
- (CLLocationSourceInformation)sourceInformation;
- (NSData)coarseMetaData;
- (NSString)iso6709Notation;
- (double)altitudeWgs84;
- (double)magneticDeclination;
- (id)_groundAltitude;
- (id)_initWithCoordinate:(CLLocationCoordinate2D)coordinate altitude:(double)altitude horizontalAccuracy:(double)accuracy verticalAccuracy:(double)verticalAccuracy course:(double)course courseAccuracy:(double)courseAccuracy speed:(double)speed speedAccuracy:(double)self0 timestamp:(id)self1 floor:(int)self2 type:(int)self3 sourceParams:(id)self4 referenceFrame:(int)self5;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)jsonObject;
- (id)propagateLocationToTime:(double)time;
- (id)shortDescription;
- (id)snapToResolution:(double)resolution;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)unmatch;
@end

@implementation CLLocation

- ($44DCC351AE6C4D5D67D1940BF7906435)clientLocation
{
  var0 = self->var1.var0;
  v4 = *(*&var0 + 120);
  *&retstr->var11 = *(*&var0 + 104);
  retstr->var13 = v4;
  *&retstr->var14 = *(*&var0 + 136);
  *&retstr->var16 = *(*&var0 + 148);
  v5 = *(*&var0 + 56);
  *&retstr->var3 = *(*&var0 + 40);
  *&retstr->var5 = v5;
  v6 = *(*&var0 + 88);
  *&retstr->var7 = *(*&var0 + 72);
  *&retstr->var9 = v6;
  v7 = *(*&var0 + 24);
  *&retstr->var0 = *(*&var0 + 8);
  *&retstr->var1.var1 = v7;
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLLocation;
  [(CLLocation *)&v3 dealloc];
}

- (CLLocationCoordinate2D)coordinate
{
  internal = self->_internal;
  v3 = *(internal + 12);
  v4 = *(internal + 20);
  result.longitude = v4;
  result.latitude = v3;
  return result;
}

- (CLLocationSourceInformation)sourceInformation
{
  internal = self->_internal;
  v3 = [CLLocationSourceInformation alloc];
  v5 = objc_msgSend_initWithSoftwareSimulationState_andExternalAccessoryState_(v3, v4, *(internal + 160), internal[26] == 3);

  return v5;
}

- (CLFloor)floor
{
  internal = self->_internal;
  if (internal[33] == 0x7FFFFFFF)
  {
    return 0;
  }

  v4 = [CLFloor alloc];
  v6 = objc_msgSend_initWithLevel_(v4, v5, internal[33]);

  return v6;
}

- (id)description
{
  internal = self->_internal;
  if (qword_1ED4B7F70 != -1)
  {
    dispatch_once(&qword_1ED4B7F70, &unk_1F2039680);
  }

  v5 = MEMORY[0x1E696AEC0];
  v15 = *(internal + 12);
  v6 = *(internal + 28);
  v7 = *(internal + 52);
  v8 = *(internal + 68);
  v9 = qword_1ED4B7F68;
  v10 = objc_msgSend_timestamp(self, a2, v2);
  v12 = objc_msgSend_stringFromDate_(v9, v11, v10);
  return objc_msgSend_stringWithFormat_(v5, v13, @"<%+.8f,%+.8f> +/- %.2fm (speed %.2f mps / course %.2f) @ %@", v15, v6, v7, v8, v12);
}

- (NSData)coarseMetaData
{
  v2 = *(self->_internal + 24);

  return v2;
}

- (CLLocationCoordinate2D)rawCoordinate
{
  internal = self->_internal;
  v3 = *(internal + 108);
  v4 = *(internal + 116);
  result.longitude = v4;
  result.latitude = v3;
  return result;
}

- (CLLocation)initWithLatitude:(CLLocationDegrees)latitude longitude:(CLLocationDegrees)longitude
{
  v6 = objc_msgSend_date(MEMORY[0x1E695DF00], a2, v4);

  return MEMORY[0x1EEE66B58](self, sel_initWithCoordinate_altitude_horizontalAccuracy_verticalAccuracy_timestamp_, v6);
}

- (id)_initWithCoordinate:(CLLocationCoordinate2D)coordinate altitude:(double)altitude horizontalAccuracy:(double)accuracy verticalAccuracy:(double)verticalAccuracy course:(double)course courseAccuracy:(double)courseAccuracy speed:(double)speed speedAccuracy:(double)self0 timestamp:(id)self1 floor:(int)self2 type:(int)self3 sourceParams:(id)self4 referenceFrame:(int)self5
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  objc_msgSend_timeIntervalSinceReferenceDate(timestamp, a2, timestamp);
  v29 = v28;
  if (params)
  {
    isSimulatedBySoftware = objc_msgSend_isSimulatedBySoftware(params, v26, v27);
  }

  else
  {
    isSimulatedBySoftware = 0;
  }

  v34 = 0xFFFF;
  v35 = latitude;
  v36 = longitude;
  accuracyCopy = accuracy;
  altitudeCopy = altitude;
  verticalAccuracyCopy = verticalAccuracy;
  speedCopy = speed;
  speedAccuracyCopy = speedAccuracy;
  courseCopy = course;
  courseAccuracyCopy = courseAccuracy;
  v44 = v29;
  v45 = 0;
  v46 = 0xBFF0000000000000;
  typeCopy = type;
  v48 = *(&xmmword_1AB62AA00 + 4);
  v49 = 0xBFF0000000000000;
  floorCopy = floor;
  v51 = 0;
  frameCopy = frame;
  v53 = 0;
  v54 = 0;
  v55 = isSimulatedBySoftware;
  v56 = 0;
  v57 = 0;
  return objc_msgSend_initWithClientLocation_(self, v26, &v34);
}

- (CLLocation)initWithClientLocation:(id *)location
{
  v14.receiver = self;
  v14.super_class = CLLocation;
  v4 = [(CLLocation *)&v14 init];
  if (v4)
  {
    v5 = [CLLocationInternal alloc];
    var13 = location->var13;
    v12[6] = *&location->var11;
    v12[7] = var13;
    v13[0] = *&location->var14;
    *(v13 + 12) = *&location->var16;
    v7 = *&location->var5;
    v12[2] = *&location->var3;
    v12[3] = v7;
    v8 = *&location->var9;
    v12[4] = *&location->var7;
    v12[5] = v8;
    v9 = *&location->var1.var1;
    v12[0] = *&location->var0;
    v12[1] = v9;
    v4->_internal = objc_msgSend_initWithClientLocation_(v5, v10, v12);
  }

  return v4;
}

- (CLLocation)initWithClientLocation:(id *)location coarseMetaData:(id)data
{
  v16.receiver = self;
  v16.super_class = CLLocation;
  v6 = [(CLLocation *)&v16 init];
  if (v6)
  {
    v7 = [CLLocationInternal alloc];
    var13 = location->var13;
    v14[6] = *&location->var11;
    v14[7] = var13;
    v15[0] = *&location->var14;
    *(v15 + 12) = *&location->var16;
    v9 = *&location->var5;
    v14[2] = *&location->var3;
    v14[3] = v9;
    v10 = *&location->var9;
    v14[4] = *&location->var7;
    v14[5] = v10;
    v11 = *&location->var1.var1;
    v14[0] = *&location->var0;
    v14[1] = v11;
    v6->_internal = objc_msgSend_initWithClientLocation_coarseMetaData_(v7, v12, v14, data);
  }

  return v6;
}

- (CLLocation)initWithClientLocation:(id *)location clientLocationPrivate:(id *)private
{
  v17.receiver = self;
  v17.super_class = CLLocation;
  v6 = [(CLLocation *)&v17 init];
  if (v6)
  {
    v7 = [CLLocationInternal alloc];
    var13 = location->var13;
    v15[6] = *&location->var11;
    v15[7] = var13;
    v16[0] = *&location->var14;
    *(v16 + 12) = *&location->var16;
    v9 = *&location->var5;
    v15[2] = *&location->var3;
    v15[3] = v9;
    v10 = *&location->var9;
    v15[4] = *&location->var7;
    v15[5] = v10;
    v11 = *&location->var1.var1;
    v15[0] = *&location->var0;
    v15[1] = v11;
    memcpy(v14, private, sizeof(v14));
    v6->_internal = objc_msgSend_initWithClientLocation_clientLocationPrivate_(v7, v12, v15, v14);
  }

  return v6;
}

- (CLLocation)initWithClientLocation:(id *)location clientLocationPrivate:(id *)private coarseMetaData:(id)data
{
  v19.receiver = self;
  v19.super_class = CLLocation;
  v8 = [(CLLocation *)&v19 init];
  if (v8)
  {
    v9 = [CLLocationInternal alloc];
    var13 = location->var13;
    v17[6] = *&location->var11;
    v17[7] = var13;
    v18[0] = *&location->var14;
    *(v18 + 12) = *&location->var16;
    v11 = *&location->var5;
    v17[2] = *&location->var3;
    v17[3] = v11;
    v12 = *&location->var9;
    v17[4] = *&location->var7;
    v17[5] = v12;
    v13 = *&location->var1.var1;
    v17[0] = *&location->var0;
    v17[1] = v13;
    memcpy(v16, private, sizeof(v16));
    v8->_internal = objc_msgSend_initWithClientLocation_clientLocationPrivate_coarseMetaData_(v9, v14, v17, v16, data);
  }

  return v8;
}

- (CLLocation)initWithCoder:(id)coder
{
  *v138 = xmmword_1AB62AA00;
  *&v138[16] = unk_1AB62AA10;
  memset(v139, 0, 28);
  *&v137[32] = xmmword_1AB62A9C0;
  *&v137[48] = unk_1AB62A9D0;
  *&v137[64] = xmmword_1AB62A9E0;
  *&v137[80] = unk_1AB62A9F0;
  *v137 = xmmword_1AB62A9A0;
  *&v137[16] = unk_1AB62A9B0;
  v135 = 0.0;
  *&v136 = -1.0;
  *&v133 = -1.0;
  *&v134 = -1.0;
  v132 = 0;
  v130 = 0.0;
  v131 = 0.0;
  if ((objc_msgSend_allowsKeyedCoding(coder, a2, coder) & 1) == 0)
  {
    objc_msgSend_decodeValueOfObjCType_at_(coder, v5, "d", &v137[4]);
    objc_msgSend_decodeValueOfObjCType_at_(coder, v72, "d", v137 | 0xC);
    objc_msgSend_decodeValueOfObjCType_at_(coder, v73, "d", &v137[20]);
    objc_msgSend_decodeValueOfObjCType_at_(coder, v74, "d", &v137[28]);
    objc_msgSend_decodeValueOfObjCType_at_(coder, v75, "d", &v137[36]);
    objc_msgSend_decodeValueOfObjCType_at_(coder, v76, "d", &v137[44]);
    objc_msgSend_decodeValueOfObjCType_at_(coder, v77, "d", &v137[52]);
    objc_msgSend_decodeValueOfObjCType_at_(coder, v78, "d", &v137[60]);
    objc_msgSend_decodeValueOfObjCType_at_(coder, v79, "d", &v137[68]);
    objc_msgSend_decodeValueOfObjCType_at_(coder, v80, "d", &v137[76]);
    objc_msgSend_decodeValueOfObjCType_at_(coder, v81, "i", v138);
    objc_msgSend_decodeValueOfObjCType_at_(coder, v82, "d", &v137[88]);
    objc_msgSend_decodeValueOfObjCType_at_(coder, v83, "i", &v138[28]);
    objc_msgSend_decodeValueOfObjCType_at_(coder, v84, "I", v139);
    objc_msgSend_decodeValueOfObjCType_at_(coder, v85, "i", v139 + 4);
    v36 = objc_msgSend_decodeObject(coder, v86, v87);
    v39 = objc_msgSend_decodeObject(coder, v88, v89);
    v42 = objc_msgSend_decodeObject(coder, v90, v91);
    v45 = objc_msgSend_decodeObject(coder, v92, v93);
    v48 = objc_msgSend_decodeObject(coder, v94, v95);
    objc_msgSend_decodeValueOfObjCType_at_(coder, v96, "d", &v138[4]);
    objc_msgSend_decodeValueOfObjCType_at_(coder, v97, "d", &v138[12]);
    objc_msgSend_decodeValueOfObjCType_at_(coder, v98, "d", &v136);
    objc_msgSend_decodeValueOfObjCType_at_(coder, v99, "i", v139 + 8);
    objc_msgSend_decodeValueOfObjCType_at_(coder, v100, "d", &v135);
    objc_msgSend_decodeValueOfObjCType_at_(coder, v101, "d", &v134);
    objc_msgSend_decodeValueOfObjCType_at_(coder, v102, "d", &v138[20]);
    objc_msgSend_decodeValueOfObjCType_at_(coder, v103, "d", &v133);
    objc_msgSend_decodeValueOfObjCType_at_(coder, v104, "i", v139 + 12);
    objc_msgSend_decodeValueOfObjCType_at_(coder, v105, "d", &v139[1]);
    objc_msgSend_decodeValueOfObjCType_at_(coder, v106, "i", &v132);
    objc_msgSend_decodeValueOfObjCType_at_(coder, v107, "d", &v131);
    objc_msgSend_decodeValueOfObjCType_at_(coder, v108, "d", &v130);
    objc_msgSend_decodeObject(coder, v109, v110);
    v113 = objc_msgSend_decodeObject(coder, v111, v112);
    v59 = v135;
    v55 = *&v136;
    v67 = *&v133;
    v62 = *&v134;
    v115 = v132;
    v116 = v130;
    v117 = v131;
    goto LABEL_33;
  }

  objc_msgSend_decodeDoubleForKey_(coder, v5, @"kCLLocationCodingKeyCoordinateLatitude");
  *&v137[4] = v6;
  objc_msgSend_decodeDoubleForKey_(coder, v7, @"kCLLocationCodingKeyCoordinateLongitude");
  *&v137[12] = v8;
  objc_msgSend_decodeDoubleForKey_(coder, v9, @"kCLLocationCodingKeyHorizontalAccuracy");
  *&v137[20] = v10;
  objc_msgSend_decodeDoubleForKey_(coder, v11, @"kCLLocationCodingKeyAltitude");
  *&v137[28] = v12;
  objc_msgSend_decodeDoubleForKey_(coder, v13, @"kCLLocationCodingKeyVerticalAccuracy");
  v15 = v14;
  *&v137[36] = v14;
  objc_msgSend_decodeDoubleForKey_(coder, v16, @"kCLLocationCodingKeySpeed");
  *&v137[44] = v17;
  objc_msgSend_decodeDoubleForKey_(coder, v18, @"kCLLocationCodingKeySpeedAccuracy");
  *&v137[52] = v19;
  objc_msgSend_decodeDoubleForKey_(coder, v20, @"kCLLocationCodingKeyCourse");
  *&v137[60] = v21;
  objc_msgSend_decodeDoubleForKey_(coder, v22, @"kCLLocationCodingKeyCourseAccuracy");
  *&v137[68] = v23;
  objc_msgSend_decodeDoubleForKey_(coder, v24, @"kCLLocationCodingKeyTimestamp");
  *&v137[76] = v25;
  *v138 = objc_msgSend_decodeIntForKey_(coder, v26, @"kCLLocationCodingKeyType");
  objc_msgSend_decodeDoubleForKey_(coder, v27, @"kCLLocationCodingKeyLifespan");
  *&v137[88] = v28;
  *&v138[28] = objc_msgSend_decodeIntForKey_(coder, v29, @"kCLLocationCodingKeyFloor");
  LODWORD(v139[0]) = objc_msgSend_decodeIntForKey_(coder, v30, @"kCLLocationCodingKeyIntegrity");
  v32 = objc_msgSend_containsValueForKey_(coder, v31, @"reserved");
  if (v32)
  {
    v32 = objc_msgSend_decodeIntForKey_(coder, v33, @"reserved");
  }

  DWORD1(v139[0]) = v32;
  v34 = objc_opt_class();
  v36 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v35, v34, @"kCLLocationCodingKeyMatchInfo");
  v37 = objc_opt_class();
  v39 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v38, v37, @"kCLLocationCodingKeyGroundAltitude");
  v40 = objc_opt_class();
  v42 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v41, v40, @"kCLLocationCodingKeyFusionInfo");
  v43 = objc_opt_class();
  v45 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v44, v43, @"kCLLocationCodingKeyTrackRunInfo");
  v46 = objc_opt_class();
  v48 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v47, v46, @"kCLLocationCodingKeyCoarseMetaData");
  objc_msgSend_decodeDoubleForKey_(coder, v49, @"kCLLocationCodingKeyRawCoordinateLatitude");
  *&v138[4] = v50;
  objc_msgSend_decodeDoubleForKey_(coder, v51, @"kCLLocationCodingKeyRawCoordinateLongitude");
  *&v138[12] = v52;
  v55 = -1.0;
  if (objc_msgSend_containsValueForKey_(coder, v53, @"kCLLocationCodingKeyRawHorizontalAccuracy"))
  {
    objc_msgSend_decodeDoubleForKey_(coder, v54, @"kCLLocationCodingKeyRawHorizontalAccuracy");
    v55 = v56;
    *&v136 = v56;
  }

  if (objc_msgSend_containsValueForKey_(coder, v54, @"kCLLocationCodingKeyRawReferenceFrame"))
  {
    DWORD2(v139[0]) = objc_msgSend_decodeIntForKey_(coder, v57, @"kCLLocationCodingKeyRawReferenceFrame");
  }

  v59 = 0.0;
  if (objc_msgSend_containsValueForKey_(coder, v57, @"kCLLocationCodingKeyRawAltitude"))
  {
    objc_msgSend_decodeDoubleForKey_(coder, v58, @"kCLLocationCodingKeyRawAltitude");
    v59 = v60;
    v135 = v60;
  }

  v62 = -1.0;
  if (objc_msgSend_containsValueForKey_(coder, v58, @"kCLLocationCodingKeyRawVerticalAccuracy"))
  {
    objc_msgSend_decodeDoubleForKey_(coder, v61, @"kCLLocationCodingKeyRawVerticalAccuracy");
    v62 = v63;
    *&v134 = v63;
  }

  if (objc_msgSend_containsValueForKey_(coder, v61, @"kCLLocationCodingKeyRawCourse"))
  {
    objc_msgSend_decodeDoubleForKey_(coder, v64, @"kCLLocationCodingKeyRawCourse");
    *&v138[20] = v65;
  }

  v67 = -1.0;
  if (objc_msgSend_containsValueForKey_(coder, v64, @"kCLLocationCodingKeyRawCourseAccuracy"))
  {
    objc_msgSend_decodeDoubleForKey_(coder, v66, @"kCLLocationCodingKeyRawCourseAccuracy");
    v67 = v68;
    *&v133 = v68;
  }

  if (objc_msgSend_containsValueForKey_(coder, v66, @"kCLLocationCodingKeySignalEnvironmentType"))
  {
    HIDWORD(v139[0]) = objc_msgSend_decodeIntForKey_(coder, v69, @"kCLLocationCodingKeySignalEnvironmentType");
  }

  if (objc_msgSend_containsValueForKey_(coder, v69, @"kCLLocationCodingKeyEllipsoidalAltitude"))
  {
    objc_msgSend_decodeDoubleForKey_(coder, v70, @"kCLLocationCodingKeyEllipsoidalAltitude");
LABEL_22:
    *&v139[1] = v71;
    goto LABEL_23;
  }

  v71 = 0;
  if (v15 >= 0.0)
  {
    goto LABEL_22;
  }

LABEL_23:
  if (objc_msgSend_containsValueForKey_(coder, v70, @"kCLLocationCodingKeyPositionContextState"))
  {
    v115 = objc_msgSend_decodeIntForKey_(coder, v118, @"kCLLocationCodingKeyPositionContextState");
    v132 = v115;
  }

  else
  {
    v115 = 0;
  }

  v116 = 0.0;
  v117 = 0.0;
  if (objc_msgSend_containsValueForKey_(coder, v118, @"kCLLocationCodingKeyProbabilityPositionContextStateIndoor"))
  {
    objc_msgSend_decodeDoubleForKey_(coder, v119, @"kCLLocationCodingKeyProbabilityPositionContextStateIndoor");
    v117 = v120;
    v131 = v120;
  }

  if (objc_msgSend_containsValueForKey_(coder, v119, @"kCLLocationCodingKeyProbabilityPositionContextStateOutdoor"))
  {
    objc_msgSend_decodeDoubleForKey_(coder, v121, @"kCLLocationCodingKeyProbabilityPositionContextStateOutdoor");
    v116 = v122;
    v130 = v122;
  }

  if (objc_msgSend_containsValueForKey_(coder, v121, @"kCLLocationCodingKeySimulationParams"))
  {
    v123 = objc_opt_class();
    objc_msgSend_decodeObjectOfClass_forKey_(coder, v124, v123, @"kCLLocationCodingKeySimulationParams");
  }

  v125 = objc_opt_class();
  v113 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v126, v125, @"kCLLocationCodingKeyGnssOdometerInfo");
LABEL_33:
  v128[6] = *v138;
  v128[7] = *&v138[16];
  v129[0] = v139[0];
  *(v129 + 12) = *(v139 + 12);
  v128[2] = *&v137[32];
  v128[3] = *&v137[48];
  v128[4] = *&v137[64];
  v128[5] = *&v137[80];
  v128[0] = *v137;
  v128[1] = *&v137[16];
  return objc_msgSend_initWithClientLocation_matchInfo_trustedTimestamp_groundAltitude_fusionInfo_trackRunInfo_rawHorizontalAccuracy_rawAltitude_rawVerticalAccuracy_rawCourseAccuracy_positionContextStateType_probabilityPositionContextStateIndoor_probabilityPositionContextStateOutdoor_gnssOdometerInfo_coarseMetaData_(self, v114, v128, v36, v39, v42, v45, v115, -1.0, v55, v59, v62, v67, v117, v116, v113, v48);
}

- (void)encodeWithCoder:(id)coder
{
  internal = self->_internal;
  if (objc_msgSend_allowsKeyedCoding(coder, a2, coder))
  {
    objc_msgSend_encodeDouble_forKey_(coder, v6, @"kCLLocationCodingKeyCoordinateLatitude", *(internal + 12));
    objc_msgSend_encodeDouble_forKey_(coder, v7, @"kCLLocationCodingKeyCoordinateLongitude", *(internal + 20));
    objc_msgSend_encodeDouble_forKey_(coder, v8, @"kCLLocationCodingKeyHorizontalAccuracy", *(internal + 28));
    objc_msgSend_encodeDouble_forKey_(coder, v9, @"kCLLocationCodingKeyAltitude", *(internal + 36));
    objc_msgSend_encodeDouble_forKey_(coder, v10, @"kCLLocationCodingKeyVerticalAccuracy", *(internal + 44));
    objc_msgSend_encodeDouble_forKey_(coder, v11, @"kCLLocationCodingKeySpeed", *(internal + 52));
    objc_msgSend_encodeDouble_forKey_(coder, v12, @"kCLLocationCodingKeySpeedAccuracy", *(internal + 60));
    objc_msgSend_encodeDouble_forKey_(coder, v13, @"kCLLocationCodingKeyCourse", *(internal + 68));
    objc_msgSend_encodeDouble_forKey_(coder, v14, @"kCLLocationCodingKeyCourseAccuracy", *(internal + 76));
    objc_msgSend_encodeDouble_forKey_(coder, v15, @"kCLLocationCodingKeyTimestamp", *(internal + 84));
    objc_msgSend_encodeInt_forKey_(coder, v16, *(internal + 26), @"kCLLocationCodingKeyType");
    objc_msgSend_encodeDouble_forKey_(coder, v17, @"kCLLocationCodingKeyLifespan", *(internal + 12));
    objc_msgSend_encodeInt_forKey_(coder, v18, *(internal + 33), @"kCLLocationCodingKeyFloor");
    objc_msgSend_encodeInt_forKey_(coder, v19, *(internal + 34), @"kCLLocationCodingKeyIntegrity");
    objc_msgSend_encodeInt_forKey_(coder, v20, *(internal + 35), @"reserved");
    objc_msgSend_encodeObject_forKey_(coder, v21, *(internal + 21), @"kCLLocationCodingKeyMatchInfo");
    objc_msgSend_encodeObject_forKey_(coder, v22, *(internal + 22), @"kCLLocationCodingKeyGroundAltitude");
    objc_msgSend_encodeObject_forKey_(coder, v23, *(internal + 25), @"kCLLocationCodingKeyFusionInfo");
    objc_msgSend_encodeObject_forKey_(coder, v24, *(internal + 26), @"kCLLocationCodingKeyTrackRunInfo");
    objc_msgSend_encodeObject_forKey_(coder, v25, *(internal + 24), @"kCLLocationCodingKeyCoarseMetaData");
    objc_msgSend_encodeDouble_forKey_(coder, v26, @"kCLLocationCodingKeyRawCoordinateLatitude", *(internal + 108));
    objc_msgSend_encodeDouble_forKey_(coder, v27, @"kCLLocationCodingKeyRawCoordinateLongitude", *(internal + 116));
    objc_msgSend_encodeDouble_forKey_(coder, v28, @"kCLLocationCodingKeyRawHorizontalAccuracy", *(internal + 27));
    objc_msgSend_encodeInt_forKey_(coder, v29, *(internal + 36), @"kCLLocationCodingKeyRawReferenceFrame");
    objc_msgSend_encodeDouble_forKey_(coder, v30, @"kCLLocationCodingKeyRawAltitude", *(internal + 28));
    objc_msgSend_encodeDouble_forKey_(coder, v31, @"kCLLocationCodingKeyRawVerticalAccuracy", *(internal + 29));
    objc_msgSend_encodeDouble_forKey_(coder, v32, @"kCLLocationCodingKeyRawCourse", *(internal + 124));
    objc_msgSend_encodeDouble_forKey_(coder, v33, @"kCLLocationCodingKeyRawCourseAccuracy", *(internal + 30));
    objc_msgSend_encodeInt_forKey_(coder, v34, *(internal + 37), @"kCLLocationCodingKeySignalEnvironmentType");
    objc_msgSend_encodeDouble_forKey_(coder, v35, @"kCLLocationCodingKeyEllipsoidalAltitude", *(internal + 19));
    objc_msgSend_encodeInt_forKey_(coder, v36, *(internal + 62), @"kCLLocationCodingKeyPositionContextState");
    objc_msgSend_encodeDouble_forKey_(coder, v37, @"kCLLocationCodingKeyProbabilityPositionContextStateIndoor", *(internal + 32));
    objc_msgSend_encodeDouble_forKey_(coder, v38, @"kCLLocationCodingKeyProbabilityPositionContextStateOutdoor", *(internal + 33));
    v41 = objc_msgSend_sourceInformation(self, v39, v40);
    objc_msgSend_encodeObject_forKey_(coder, v42, v41, @"kCLLocationCodingKeySimulationParams");
    v44 = *(internal + 34);

    objc_msgSend_encodeObject_forKey_(coder, v43, v44, @"kCLLocationCodingKeyGnssOdometerInfo");
  }

  else
  {
    objc_msgSend_encodeValueOfObjCType_at_(coder, v6, "d", internal + 12);
    objc_msgSend_encodeValueOfObjCType_at_(coder, v45, "d", internal + 20);
    objc_msgSend_encodeValueOfObjCType_at_(coder, v46, "d", internal + 28);
    objc_msgSend_encodeValueOfObjCType_at_(coder, v47, "d", internal + 36);
    objc_msgSend_encodeValueOfObjCType_at_(coder, v48, "d", internal + 44);
    objc_msgSend_encodeValueOfObjCType_at_(coder, v49, "d", internal + 52);
    objc_msgSend_encodeValueOfObjCType_at_(coder, v50, "d", internal + 60);
    objc_msgSend_encodeValueOfObjCType_at_(coder, v51, "d", internal + 68);
    objc_msgSend_encodeValueOfObjCType_at_(coder, v52, "d", internal + 76);
    objc_msgSend_encodeValueOfObjCType_at_(coder, v53, "d", internal + 84);
    objc_msgSend_encodeValueOfObjCType_at_(coder, v54, "i", internal + 104);
    objc_msgSend_encodeValueOfObjCType_at_(coder, v55, "d", internal + 96);
    objc_msgSend_encodeValueOfObjCType_at_(coder, v56, "i", internal + 132);
    objc_msgSend_encodeValueOfObjCType_at_(coder, v57, "I", internal + 136);
    objc_msgSend_encodeValueOfObjCType_at_(coder, v58, "i", internal + 140);
    objc_msgSend_encodeObject_(coder, v59, *(internal + 21));
    objc_msgSend_encodeObject_(coder, v60, *(internal + 22));
    objc_msgSend_encodeObject_(coder, v61, *(internal + 25));
    objc_msgSend_encodeObject_(coder, v62, *(internal + 26));
    objc_msgSend_encodeObject_(coder, v63, *(internal + 24));
    objc_msgSend_encodeValueOfObjCType_at_(coder, v64, "d", internal + 108);
    objc_msgSend_encodeValueOfObjCType_at_(coder, v65, "d", internal + 116);
    objc_msgSend_encodeValueOfObjCType_at_(coder, v66, "d", internal + 216);
    objc_msgSend_encodeValueOfObjCType_at_(coder, v67, "i", internal + 144);
    objc_msgSend_encodeValueOfObjCType_at_(coder, v68, "d", internal + 224);
    objc_msgSend_encodeValueOfObjCType_at_(coder, v69, "d", internal + 232);
    objc_msgSend_encodeValueOfObjCType_at_(coder, v70, "d", internal + 124);
    objc_msgSend_encodeValueOfObjCType_at_(coder, v71, "d", internal + 240);
    objc_msgSend_encodeValueOfObjCType_at_(coder, v72, "i", internal + 148);
    objc_msgSend_encodeValueOfObjCType_at_(coder, v73, "d", internal + 152);
    objc_msgSend_encodeValueOfObjCType_at_(coder, v74, "i", internal + 248);
    objc_msgSend_encodeValueOfObjCType_at_(coder, v75, "d", internal + 256);
    objc_msgSend_encodeValueOfObjCType_at_(coder, v76, "d", internal + 264);
    v79 = objc_msgSend_sourceInformation(self, v77, v78);
    objc_msgSend_encodeObject_(coder, v80, v79);
    v82 = *(internal + 34);

    objc_msgSend_encodeObject_(coder, v81, v82);
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v7[1] = objc_msgSend_copy(self->_internal, v8, v9);
  return v7;
}

- (id)shortDescription
{
  v14 = *MEMORY[0x1E69E9840];
  internal = self->_internal;
  sub_1AB612D40(v13, 8uLL, *(internal + 68));
  v5 = MEMORY[0x1E696AEC0];
  v12 = *(internal + 12);
  v6 = *(internal + 28);
  v7 = *(internal + 52);
  if (v7 >= 0.0)
  {
    v8 = v7 * 2.23693629;
  }

  else
  {
    v8 = -1.0;
  }

  objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x1E695DF00], v3, v4);
  return objc_msgSend_stringWithFormat_(v5, v10, @"<%+.5f,%+.5f> ±%.2fm %.0fmph %s %.0fs", v12, v6, *&v8, v13, v9 - *(internal + 84));
}

- (id)jsonObject
{
  v39[21] = *MEMORY[0x1E69E9840];
  internal = self->_internal;
  v38[0] = @"suitability";
  v39[0] = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], a2, *(internal + 2));
  v38[1] = @"latitude";
  v39[1] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v3, v4, *(internal + 12));
  v38[2] = @"longitude";
  v39[2] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v5, v6, *(internal + 20));
  v38[3] = @"horizontalAccuracy";
  v39[3] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v7, v8, *(internal + 28));
  v38[4] = @"altitude";
  v39[4] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v9, v10, *(internal + 36));
  v38[5] = @"verticalAccuracy";
  v39[5] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v11, v12, *(internal + 44));
  v38[6] = @"speed";
  v39[6] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v13, v14, *(internal + 52));
  v38[7] = @"course";
  v39[7] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v15, v16, *(internal + 68));
  v38[8] = @"courseAccuracy";
  v39[8] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v17, v18, *(internal + 76));
  v38[9] = @"timestamp";
  v39[9] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v19, v20, *(internal + 84));
  v38[10] = @"confidence";
  v39[10] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v21, *(internal + 23));
  v38[11] = @"lifespan";
  v39[11] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v22, v23, internal[12]);
  v38[12] = @"type";
  v39[12] = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v24, *(internal + 26));
  v38[13] = @"rawLatitude";
  v39[13] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v25, v26, *(internal + 108));
  v38[14] = @"rawLongitude";
  v39[14] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v27, v28, *(internal + 116));
  v38[15] = @"referenceFrame";
  v39[15] = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v29, *(internal + 35));
  v38[16] = @"rawReferenceFrame";
  v39[16] = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v30, *(internal + 36));
  v38[17] = @"signalEnvironment";
  v39[17] = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v31, *(internal + 37));
  v38[18] = @"ellipsoidalAltitude";
  v39[18] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v32, v33, internal[19]);
  v38[19] = @"isSoftwareSimulated";
  v39[19] = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v34, *(internal + 160));
  v38[20] = @"isFromExternalAccessory";
  v39[20] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v35, *(internal + 26) == 3);
  return objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v36, v39, v38, 21);
}

- (double)magneticDeclination
{
  internal = self->_internal;
  strcpy(&xmmword_1EB46D8C0, "/System/Library/Frameworks/CoreLocation.framework/Support/WMM.dat");
  v4 = *(internal + 12);
  v5 = *(internal + 20);
  v6 = *(internal + 36);
  v7 = sub_1AB614644(self, a2, v2);
  v10 = 0uLL;
  v12 = 0;
  v11 = 0;
  v8 = sub_1AB60C9C4(&v10, v4, v5, v6, v7);
  result = *(&v11 + 1);
  if (v8)
  {
    return 0.0;
  }

  return result;
}

- (BOOL)isAltitudeWgs84Available
{
  internal = self->_internal;
  v4 = *(internal + 22);
  return *(internal + 44) >= 0.0 && v4 != 0 && objc_msgSend_undulationModel(v4, a2, v2) != -1;
}

- (double)altitudeWgs84
{
  internal = self->_internal;
  v4 = *(internal + 22);
  isAltitudeWgs84Available = objc_msgSend_isAltitudeWgs84Available(self, a2, v2);
  v8 = *(internal + 36);
  if (isAltitudeWgs84Available)
  {
    objc_msgSend_undulation(v4, v6, v7);
    return v8 + v9;
  }

  return v8;
}

- (CLLocationDistance)distanceFromLocation:(const CLLocation *)location
{
  if (!location)
  {
    return -1.0;
  }

  CLClientGetDistanceHighPrecision(self->_internal + 8, location->_internal + 8);
  return result;
}

- (id)snapToResolution:(double)resolution
{
  internal = self->_internal;
  v4 = *(internal + 120);
  v20 = *(internal + 104);
  v21 = v4;
  v22[0] = *(internal + 136);
  *(v22 + 12) = *(internal + 148);
  v5 = *(internal + 56);
  v16 = *(internal + 40);
  v17 = v5;
  v6 = *(internal + 88);
  v18 = *(internal + 72);
  v19 = v6;
  v7 = *(internal + 24);
  v14 = *(internal + 8);
  v15 = v7;
  v8 = resolution * 1.41421356;
  if (COERCE_DOUBLE(v7 >> 32) < resolution * 1.41421356)
  {
    sub_1AB61199C((&v14 + 4), (&v14 | 0xC), resolution);
    *(&v15 + 4) = v8;
  }

  v9 = [CLLocation alloc];
  v12[6] = v20;
  v12[7] = v21;
  v13[0] = v22[0];
  *(v13 + 12) = *(v22 + 12);
  v12[2] = v16;
  v12[3] = v17;
  v12[4] = v18;
  v12[5] = v19;
  v12[0] = v14;
  v12[1] = v15;
  return objc_msgSend_initWithClientLocation_(v9, v10, v12);
}

- (id)propagateLocationToTime:(double)time
{
  internal = self->_internal;
  v15 = xmmword_1AB62AA00;
  v16 = unk_1AB62AA10;
  memset(v17, 0, 28);
  v11 = xmmword_1AB62A9C0;
  v12 = unk_1AB62A9D0;
  v13 = xmmword_1AB62A9E0;
  v14 = unk_1AB62A9F0;
  v9 = xmmword_1AB62A9A0;
  v10 = unk_1AB62A9B0;
  sub_1AB609558(internal + 8, &v9, time);
  v4 = [CLLocation alloc];
  v7[6] = v15;
  v7[7] = v16;
  v8[0] = v17[0];
  *(v8 + 12) = *(v17 + 12);
  v7[2] = v11;
  v7[3] = v12;
  v7[4] = v13;
  v7[5] = v14;
  v7[0] = v9;
  v7[1] = v10;
  return objc_msgSend_initWithClientLocation_(v4, v5, v7);
}

- (NSString)iso6709Notation
{
  Iso6709Notation = CLClientCreateIso6709Notation(self->_internal + 8);

  return Iso6709Notation;
}

- (CLLocation)initWithClientLocation:(id *)location matchInfo:(id)info trustedTimestamp:(double)timestamp groundAltitude:(id)altitude
{
  v20.receiver = self;
  v20.super_class = CLLocation;
  v10 = [(CLLocation *)&v20 init];
  if (v10)
  {
    v11 = [CLLocationInternal alloc];
    var13 = location->var13;
    v18[6] = *&location->var11;
    v18[7] = var13;
    v19[0] = *&location->var14;
    *(v19 + 12) = *&location->var16;
    v13 = *&location->var5;
    v18[2] = *&location->var3;
    v18[3] = v13;
    v14 = *&location->var9;
    v18[4] = *&location->var7;
    v18[5] = v14;
    v15 = *&location->var1.var1;
    v18[0] = *&location->var0;
    v18[1] = v15;
    v10->_internal = objc_msgSend_initWithClientLocation_matchInfo_trustedTimestamp_groundAltitude_(v11, v16, v18, info, altitude, timestamp);
  }

  return v10;
}

- (CLLocation)initWithClientLocation:(id *)location matchInfo:(id)info trustedTimestamp:(double)timestamp groundAltitude:(id)altitude fusionInfo:(id)fusionInfo trackRunInfo:(id)runInfo rawHorizontalAccuracy:(double)accuracy rawCourseAccuracy:(double)self0 coarseMetaData:(id)self1
{
  v34.receiver = self;
  v34.super_class = CLLocation;
  v20 = [(CLLocation *)&v34 init];
  if (v20)
  {
    v21 = [CLLocationInternal alloc];
    v22 = *(&location->var2 + 4);
    var13 = location->var13;
    v24 = *&location->var14;
    v25 = *&location->var9;
    v32[6] = *&location->var11;
    v32[7] = var13;
    v33[0] = v24;
    *(v33 + 12) = *&location->var16;
    v26 = *&location->var5;
    v27 = *&location->var7;
    v32[2] = *&location->var3;
    v32[3] = v26;
    v28 = *(&location->var3 + 4);
    v32[4] = v27;
    v32[5] = v25;
    v29 = *&location->var1.var1;
    v32[0] = *&location->var0;
    v32[1] = v29;
    v20->_internal = objc_msgSend_initWithClientLocation_matchInfo_trustedTimestamp_groundAltitude_fusionInfo_trackRunInfo_rawHorizontalAccuracy_rawAltitude_rawVerticalAccuracy_rawCourseAccuracy_positionContextStateType_probabilityPositionContextStateIndoor_probabilityPositionContextStateOutdoor_gnssOdometerInfo_coarseMetaData_(v21, v30, v32, info, altitude, fusionInfo, runInfo, 0, timestamp, accuracy, v22, v28, courseAccuracy, 0.0, 0.0, 0, data);
  }

  return v20;
}

- (CLLocation)initWithClientLocation:(id *)location matchInfo:(id)info trustedTimestamp:(double)timestamp groundAltitude:(id)altitude fusionInfo:(id)fusionInfo trackRunInfo:(id)runInfo rawHorizontalAccuracy:(double)accuracy rawAltitude:(double)self0 rawVerticalAccuracy:(double)self1 rawCourseAccuracy:(double)self2 positionContextStateType:(int)self3 probabilityPositionContextStateIndoor:(double)self4 probabilityPositionContextStateOutdoor:(double)self5 gnssOdometerInfo:(id)self6 coarseMetaData:(id)self7
{
  v17 = *&type;
  v40.receiver = self;
  v40.super_class = CLLocation;
  v30 = [(CLLocation *)&v40 init];
  if (v30)
  {
    v31 = [CLLocationInternal alloc];
    var13 = location->var13;
    v38[6] = *&location->var11;
    v38[7] = var13;
    v39[0] = *&location->var14;
    *(v39 + 12) = *&location->var16;
    v33 = *&location->var5;
    v38[2] = *&location->var3;
    v38[3] = v33;
    v34 = *&location->var9;
    v38[4] = *&location->var7;
    v38[5] = v34;
    v35 = *&location->var1.var1;
    v38[0] = *&location->var0;
    v38[1] = v35;
    v30->_internal = objc_msgSend_initWithClientLocation_matchInfo_trustedTimestamp_groundAltitude_fusionInfo_trackRunInfo_rawHorizontalAccuracy_rawAltitude_rawVerticalAccuracy_rawCourseAccuracy_positionContextStateType_probabilityPositionContextStateIndoor_probabilityPositionContextStateOutdoor_gnssOdometerInfo_coarseMetaData_(v31, v36, v38, info, altitude, fusionInfo, runInfo, v17, timestamp, accuracy, rawAltitude, verticalAccuracy, courseAccuracy, indoor, outdoor, odometerInfo, data);
  }

  return v30;
}

- (CLLocation)initWithClientLocation:(id *)location matchInfo:(id)info
{
  var13 = location->var13;
  v9[6] = *&location->var11;
  v9[7] = var13;
  v10[0] = *&location->var14;
  *(v10 + 12) = *&location->var16;
  v5 = *&location->var5;
  v9[2] = *&location->var3;
  v9[3] = v5;
  v6 = *&location->var9;
  v9[4] = *&location->var7;
  v9[5] = v6;
  v7 = *&location->var1.var1;
  v9[0] = *&location->var0;
  v9[1] = v7;
  return objc_msgSend_initWithClientLocation_matchInfo_trustedTimestamp_(self, a2, v9, info, -1.0);
}

- (CLLocation)initWithClientLocation:(id *)location matchInfo:(id)info trustedTimestamp:(double)timestamp
{
  var13 = location->var13;
  v10[6] = *&location->var11;
  v10[7] = var13;
  v11[0] = *&location->var14;
  *(v11 + 12) = *&location->var16;
  v6 = *&location->var5;
  v10[2] = *&location->var3;
  v10[3] = v6;
  v7 = *&location->var9;
  v10[4] = *&location->var7;
  v10[5] = v7;
  v8 = *&location->var1.var1;
  v10[0] = *&location->var0;
  v10[1] = v8;
  return objc_msgSend_initWithClientLocation_matchInfo_trustedTimestamp_groundAltitude_(self, a2, v10, info, 0, timestamp);
}

- (void)unmatch
{
  internal = self->_internal;
  if (objc_msgSend_isCoordinateFused(*(internal + 25), a2, v2))
  {
    objc_msgSend_coordinate(*(internal + 25), v4, v5);
    *(internal + 12) = v6;
    *(internal + 20) = v7;
    objc_msgSend_horizontalAccuracy(*(internal + 25), v8, v9);
    *(internal + 28) = v10;
    *(internal + 35) = objc_msgSend_referenceFrame(*(internal + 25), v11, v12);
    objc_msgSend_verticalAccuracy(*(internal + 25), v13, v14);
    if ((v17 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      objc_msgSend_verticalAccuracy(*(internal + 25), v15, v16);
      if (v18 > 0.0)
      {
        objc_msgSend_altitude(*(internal + 25), v15, v16);
        *(internal + 36) = v19;
        objc_msgSend_verticalAccuracy(*(internal + 25), v20, v21);
        *(internal + 44) = v22;
      }
    }

    objc_msgSend_courseAccuracy(*(internal + 25), v15, v16);
    if ((v25 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      objc_msgSend_courseAccuracy(*(internal + 25), v23, v24);
      if (v28 > 0.0)
      {
        objc_msgSend_course(*(internal + 25), v26, v27);
        *(internal + 68) = v29;
        objc_msgSend_courseAccuracy(*(internal + 25), v30, v31);
LABEL_32:
        *(internal + 76) = v32;
      }
    }
  }

  else
  {
    *(internal + 12) = *(internal + 108);
    *(internal + 35) = *(internal + 36);
    v33 = *(internal + 27);
    if (v33 >= 0 && ((v33 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 <= 0x3FE || (v33 - 1) <= 0xFFFFFFFFFFFFELL)
    {
      *(internal + 28) = *(internal + 27);
    }

    v36 = *(internal + 29);
    if (v36 >= 0 && ((v36 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 <= 0x3FE || (v36 - 1) <= 0xFFFFFFFFFFFFELL)
    {
      *(internal + 36) = *(internal + 28);
      *(internal + 44) = v36;
    }

    v39 = *(internal + 124);
    if (v39 >= 0.0)
    {
      *(internal + 68) = v39;
      v32 = *(internal + 30);
      v40 = v32 < 0 || ((v32 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE;
      if (!v40 || (v32 - 1) <= 0xFFFFFFFFFFFFELL)
      {
        goto LABEL_32;
      }
    }
  }
}

- (id)_groundAltitude
{
  internal = self->_internal;
  v4 = *(internal + 22);
  if (!v4)
  {
    return 0;
  }

  objc_msgSend_uncertainty(*(internal + 22), a2, v2);
  objc_msgSend_uncertainty(v4, v5, v6);
  if (v7 <= 0.0)
  {
    return 0;
  }

  return v4;
}

@end