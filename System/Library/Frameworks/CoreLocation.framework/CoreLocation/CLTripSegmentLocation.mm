@interface CLTripSegmentLocation
- (BOOL)isCourseValid;
- (BOOL)isGoodGPSFix;
- (BOOL)isGoodGPSFixWithGoodCourse;
- (BOOL)isSpeedValid;
- (CLTripSegmentLocation)initWithCLLocation:(id)location;
- (CLTripSegmentLocation)initWithCoder:(id)coder;
- (CLTripSegmentLocation)initWithTime:(id)time latitude:(double)latitude longitude:(double)longitude horizontalAccuracy:(double)accuracy course:(double)course courseAccuracy:(double)courseAccuracy speed:(double)speed speedAccuracy:(double)self0 altitude:(double)self1 altitudeAccuracy:(double)self2 locType:(int)self3 referenceFrame:(int)self4 signalEnvironmentType:(int)self5;
- (double)distanceFromLatitude:(double)latitude longitude:(double)longitude;
- (double)distanceFromLocation:(id)location;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setRawLatitude:(double)latitude longitude:(double)longitude referenceFrame:(int)frame;
- (void)setStartLocationType:(int)type andStopLocationType:(int)locationType;
- (void)updateLatitude:(double)latitude longitude:(double)longitude horizontalAccuracy:(double)accuracy referenceFrame:(int)frame;
@end

@implementation CLTripSegmentLocation

- (CLTripSegmentLocation)initWithTime:(id)time latitude:(double)latitude longitude:(double)longitude horizontalAccuracy:(double)accuracy course:(double)course courseAccuracy:(double)courseAccuracy speed:(double)speed speedAccuracy:(double)self0 altitude:(double)self1 altitudeAccuracy:(double)self2 locType:(int)self3 referenceFrame:(int)self4 signalEnvironmentType:(int)self5
{
  v16 = *&frame;
  v31.receiver = self;
  v31.super_class = CLTripSegmentLocation;
  v27 = [(CLTripSegmentLocation *)&v31 init];
  if (v27)
  {
    v27->_timestamp = time;
    v27->_latitude = latitude;
    v27->_longitude = longitude;
    v27->_referenceFrame = v16;
    v27->_horizontalAccuracy = accuracy;
    v27->_course = course;
    v27->_courseAccuracy = courseAccuracy;
    v27->_speed = speed;
    v27->_speedAccuracy = speedAccuracy;
    v27->_altitude = altitude;
    v27->_altitudeAccuracy = altitudeAccuracy;
    v27->_locType = type;
    v27->_locTypeStart = 0;
    v27->_locTypeStop = 0;
    v27->_signalEnvironmentType = environmentType;
    v27->_clRoadID = 0;
    v27->_locationDataMask = 0;
    v27->_reconstructionType = 0;
    objc_msgSend_setRawLatitude_longitude_referenceFrame_(v27, v28, v16, v29, latitude, longitude);
  }

  return v27;
}

- (CLTripSegmentLocation)initWithCLLocation:(id)location
{
  v6 = objc_msgSend_timestamp(location, a2, location, v3);
  objc_msgSend_coordinate(location, v7, v8, v9);
  v65 = v10;
  objc_msgSend_coordinate(location, v11, v12, v13);
  v15 = v14;
  objc_msgSend_horizontalAccuracy(location, v16, v17, v18);
  v20 = v19;
  objc_msgSend_course(location, v21, v22, v23);
  v25 = v24;
  objc_msgSend_courseAccuracy(location, v26, v27, v28);
  v30 = v29;
  objc_msgSend_speed(location, v31, v32, v33);
  v35 = v34;
  objc_msgSend_speedAccuracy(location, v36, v37, v38);
  v40 = v39;
  objc_msgSend_altitude(location, v41, v42, v43);
  v45 = v44;
  objc_msgSend_verticalAccuracy(location, v46, v47, v48);
  v50 = v49;
  v54 = objc_msgSend_type(location, v51, v52, v53);
  v58 = objc_msgSend_referenceFrame(location, v55, v56, v57);
  v62 = objc_msgSend_signalEnvironmentType(location, v59, v60, v61);
  return objc_msgSend_initWithTime_latitude_longitude_horizontalAccuracy_course_courseAccuracy_speed_speedAccuracy_altitude_altitudeAccuracy_locType_referenceFrame_signalEnvironmentType_(self, v63, v6, v54, v58, v62, v65, v15, v20, v25, v30, v35, v40, v45, v50);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v8 = objc_msgSend_allocWithZone_(v5, v6, zone, v7);
  v12 = objc_msgSend_init(v8, v9, v10, v11);
  *(v12 + 40) = objc_msgSend_timestamp(self, v13, v14, v15);
  objc_msgSend_latitude(self, v16, v17, v18);
  *(v12 + 48) = v19;
  objc_msgSend_longitude(self, v20, v21, v22);
  *(v12 + 56) = v23;
  objc_msgSend_rawLatitude(self, v24, v25, v26);
  *(v12 + 64) = v27;
  objc_msgSend_rawLongitude(self, v28, v29, v30);
  *(v12 + 72) = v31;
  *(v12 + 12) = objc_msgSend_rawReferenceFrame(self, v32, v33, v34);
  objc_msgSend_horizontalAccuracy(self, v35, v36, v37);
  *(v12 + 80) = v38;
  objc_msgSend_course(self, v39, v40, v41);
  *(v12 + 88) = v42;
  objc_msgSend_courseAccuracy(self, v43, v44, v45);
  *(v12 + 96) = v46;
  objc_msgSend_speed(self, v47, v48, v49);
  *(v12 + 104) = v50;
  objc_msgSend_speedAccuracy(self, v51, v52, v53);
  *(v12 + 112) = v54;
  objc_msgSend_altitude(self, v55, v56, v57);
  *(v12 + 120) = v58;
  objc_msgSend_altitudeAccuracy(self, v59, v60, v61);
  *(v12 + 128) = v62;
  *(v12 + 24) = objc_msgSend_locType(self, v63, v64, v65);
  *(v12 + 8) = objc_msgSend_referenceFrame(self, v66, v67, v68);
  *(v12 + 16) = objc_msgSend_mapsRoadClass(self, v69, v70, v71);
  *(v12 + 20) = objc_msgSend_mapsFormOfWay(self, v72, v73, v74);
  *(v12 + 28) = objc_msgSend_locTypeStart(self, v75, v76, v77);
  *(v12 + 32) = objc_msgSend_locTypeStop(self, v78, v79, v80);
  *(v12 + 136) = objc_msgSend_reconstructionType(self, v81, v82, v83);
  *(v12 + 36) = objc_msgSend_signalEnvironmentType(self, v84, v85, v86);
  *(v12 + 144) = objc_msgSend_clRoadID(self, v87, v88, v89);
  *(v12 + 152) = objc_msgSend_locationDataMask(self, v90, v91, v92);
  return v12;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLTripSegmentLocation;
  [(CLTripSegmentLocation *)&v3 dealloc];
}

- (void)updateLatitude:(double)latitude longitude:(double)longitude horizontalAccuracy:(double)accuracy referenceFrame:(int)frame
{
  self->_latitude = latitude;
  self->_longitude = longitude;
  self->_horizontalAccuracy = accuracy;
  self->_referenceFrame = frame;
}

- (void)setStartLocationType:(int)type andStopLocationType:(int)locationType
{
  v4 = *&locationType;
  objc_msgSend_setStartLocationType_(self, a2, *&type, *&locationType);

  objc_msgSend_setStopLocationType_(self, v6, v4, v7);
}

- (void)setRawLatitude:(double)latitude longitude:(double)longitude referenceFrame:(int)frame
{
  self->_rawLatitude = latitude;
  self->_rawLongitude = longitude;
  self->_rawReferenceFrame = frame;
}

- (void)encodeWithCoder:(id)coder
{
  v6 = objc_msgSend_timestamp(self, a2, coder, v3);
  objc_msgSend_encodeObject_forKey_(coder, v7, v6, @"timestamp");
  objc_msgSend_latitude(self, v8, v9, v10);
  objc_msgSend_encodeDouble_forKey_(coder, v11, @"latitude", v12);
  objc_msgSend_longitude(self, v13, v14, v15);
  objc_msgSend_encodeDouble_forKey_(coder, v16, @"longitude", v17);
  objc_msgSend_horizontalAccuracy(self, v18, v19, v20);
  objc_msgSend_encodeDouble_forKey_(coder, v21, @"horizontalAccuracy", v22);
  objc_msgSend_course(self, v23, v24, v25);
  objc_msgSend_encodeDouble_forKey_(coder, v26, @"course", v27);
  objc_msgSend_courseAccuracy(self, v28, v29, v30);
  objc_msgSend_encodeDouble_forKey_(coder, v31, @"courseAccuracy", v32);
  objc_msgSend_speed(self, v33, v34, v35);
  objc_msgSend_encodeDouble_forKey_(coder, v36, @"speed", v37);
  objc_msgSend_speedAccuracy(self, v38, v39, v40);
  objc_msgSend_encodeDouble_forKey_(coder, v41, @"speedAccuracy", v42);
  objc_msgSend_altitude(self, v43, v44, v45);
  objc_msgSend_encodeDouble_forKey_(coder, v46, @"altitude", v47);
  objc_msgSend_altitudeAccuracy(self, v48, v49, v50);
  objc_msgSend_encodeDouble_forKey_(coder, v51, @"altitudeAccuracy", v52);
  v56 = objc_msgSend_mapsRoadClass(self, v53, v54, v55);
  objc_msgSend_encodeInt_forKey_(coder, v57, v56, @"mapsRoadClass");
  v61 = objc_msgSend_mapsFormOfWay(self, v58, v59, v60);
  objc_msgSend_encodeInt_forKey_(coder, v62, v61, @"mapsFormOfWay");
  v66 = objc_msgSend_locType(self, v63, v64, v65);
  objc_msgSend_encodeInt_forKey_(coder, v67, v66, @"locType");
  v71 = objc_msgSend_locTypeStart(self, v68, v69, v70);
  objc_msgSend_encodeInt_forKey_(coder, v72, v71, @"locTypeStart");
  v76 = objc_msgSend_locTypeStop(self, v73, v74, v75);
  objc_msgSend_encodeInt_forKey_(coder, v77, v76, @"locTypeStop");
  v81 = objc_msgSend_reconstructionType(self, v78, v79, v80);
  objc_msgSend_encodeInt_forKey_(coder, v82, v81, @"reconstructionType");
  v86 = objc_msgSend_referenceFrame(self, v83, v84, v85);
  objc_msgSend_encodeInt_forKey_(coder, v87, v86, @"referenceFrame");
  objc_msgSend_rawLatitude(self, v88, v89, v90);
  objc_msgSend_encodeDouble_forKey_(coder, v91, @"rawLatitude", v92);
  objc_msgSend_rawLongitude(self, v93, v94, v95);
  objc_msgSend_encodeDouble_forKey_(coder, v96, @"rawLongitude", v97);
  v101 = objc_msgSend_rawReferenceFrame(self, v98, v99, v100);
  objc_msgSend_encodeInt_forKey_(coder, v102, v101, @"rawReferenceFrame");
  v106 = objc_msgSend_signalEnvironmentType(self, v103, v104, v105);
  objc_msgSend_encodeInt_forKey_(coder, v107, v106, @"signalEnvironmentType");
  v111 = objc_msgSend_clRoadID(self, v108, v109, v110);
  objc_msgSend_encodeInt64_forKey_(coder, v112, v111, @"clRoadID");
  v117 = objc_msgSend_locationDataMask(self, v113, v114, v115);

  objc_msgSend_encodeInt_forKey_(coder, v116, v117, @"locationDataMask");
}

- (CLTripSegmentLocation)initWithCoder:(id)coder
{
  v4 = [CLTripSegmentLocation alloc];
  v5 = objc_opt_class();
  v7 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v6, v5, @"timestamp");
  objc_msgSend_decodeDoubleForKey_(coder, v8, @"latitude", v9);
  v103 = v10;
  objc_msgSend_decodeDoubleForKey_(coder, v11, @"longitude", v12);
  v14 = v13;
  objc_msgSend_decodeDoubleForKey_(coder, v15, @"horizontalAccuracy", v16);
  v18 = v17;
  objc_msgSend_decodeDoubleForKey_(coder, v19, @"course", v20);
  v22 = v21;
  objc_msgSend_decodeDoubleForKey_(coder, v23, @"courseAccuracy", v24);
  v26 = v25;
  objc_msgSend_decodeDoubleForKey_(coder, v27, @"speed", v28);
  v30 = v29;
  objc_msgSend_decodeDoubleForKey_(coder, v31, @"speedAccuracy", v32);
  v34 = v33;
  objc_msgSend_decodeDoubleForKey_(coder, v35, @"altitude", v36);
  v38 = v37;
  objc_msgSend_decodeDoubleForKey_(coder, v39, @"altitudeAccuracy", v40);
  v42 = v41;
  v45 = objc_msgSend_decodeIntForKey_(coder, v43, @"locType", v44);
  v48 = objc_msgSend_decodeIntForKey_(coder, v46, @"referenceFrame", v47);
  v51 = objc_msgSend_decodeIntForKey_(coder, v49, @"signalEnvironmentType", v50);
  v53 = objc_msgSend_initWithTime_latitude_longitude_horizontalAccuracy_course_courseAccuracy_speed_speedAccuracy_altitude_altitudeAccuracy_locType_referenceFrame_signalEnvironmentType_(v4, v52, v7, v45, v48, v51, v103, v14, v18, v22, v26, v30, v34, v38, v42);
  objc_msgSend_decodeDoubleForKey_(coder, v54, @"rawLatitude", v55);
  v57 = v56;
  objc_msgSend_decodeDoubleForKey_(coder, v58, @"rawLongitude", v59);
  v61 = v60;
  v64 = objc_msgSend_decodeIntForKey_(coder, v62, @"rawReferenceFrame", v63);
  objc_msgSend_setRawLatitude_longitude_referenceFrame_(v53, v65, v64, v66, v57, v61);
  v69 = objc_msgSend_decodeIntForKey_(coder, v67, @"locTypeStart", v68);
  objc_msgSend_setStartLocationType_(v53, v70, v69, v71);
  v74 = objc_msgSend_decodeIntForKey_(coder, v72, @"locTypeStop", v73);
  objc_msgSend_setStopLocationType_(v53, v75, v74, v76);
  v79 = objc_msgSend_decodeIntForKey_(coder, v77, @"reconstructionType", v78);
  objc_msgSend_setLocationReconstructionType_(v53, v80, v79, v81);
  v84 = objc_msgSend_decodeIntForKey_(coder, v82, @"mapsRoadClass", v83);
  objc_msgSend_setMapsRoadClass_(v53, v85, v84, v86);
  v89 = objc_msgSend_decodeIntForKey_(coder, v87, @"mapsFormOfWay", v88);
  objc_msgSend_setMapsFormOfWay_(v53, v90, v89, v91);
  v94 = objc_msgSend_decodeInt64ForKey_(coder, v92, @"clRoadID", v93);
  objc_msgSend_setCLRoadID_(v53, v95, v94, v96);
  v99 = objc_msgSend_decodeIntForKey_(coder, v97, @"locationDataMask", v98);
  objc_msgSend_setLocationDataMask_(v53, v100, v99, v101);
  return v53;
}

- (double)distanceFromLocation:(id)location
{
  if (!location)
  {
    return -1.0;
  }

  latitude = self->_latitude;
  longitude = self->_longitude;
  objc_msgSend_latitude(location, a2, location, v3);
  v8 = v7;
  v12 = objc_msgSend_longitude(location, v9, v10, v11);
  v13.n128_u64[0] = v14.n128_u64[0];
  v14.n128_f64[0] = latitude;
  v15.n128_f64[0] = longitude;
  v16.n128_u64[0] = v8;

  MEMORY[0x1EEDE89A0](v12, v14, v15, v16, v13);
  return result;
}

- (double)distanceFromLatitude:(double)latitude longitude:(double)longitude
{
  v5.n128_f64[0] = longitude;
  v4.n128_f64[0] = latitude;
  v6.n128_u64[0] = *&self->_latitude;
  v7.n128_u64[0] = *&self->_longitude;
  MEMORY[0x1EEDE89A0](self, v6, v7, v4, v5);
  return result;
}

- (BOOL)isCourseValid
{
  if ((*&self->_course & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v4 = self->_course >= 0.0 && (*&self->_courseAccuracy & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
  return self->_courseAccuracy > 0.0 && v4;
}

- (BOOL)isSpeedValid
{
  if ((*&self->_speed & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v4 = self->_speed >= 0.0 && (*&self->_speedAccuracy & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
  return self->_speedAccuracy > 0.0 && v4;
}

- (BOOL)isGoodGPSFix
{
  horizontalAccuracy = self->_horizontalAccuracy;
  if (horizontalAccuracy > 0.0 && horizontalAccuracy < 60.0)
  {
    return objc_msgSend_isGPSLocationType(self, a2, v2, v3);
  }

  else
  {
    return 0;
  }
}

- (BOOL)isGoodGPSFixWithGoodCourse
{
  isGoodGPSFix = objc_msgSend_isGoodGPSFix(self, a2, v2, v3);
  if (isGoodGPSFix)
  {
    isGoodGPSFix = objc_msgSend_isCourseValid(self, v6, v7, v8);
    if (isGoodGPSFix)
    {
      LOBYTE(isGoodGPSFix) = self->_courseAccuracy < 60.0;
    }
  }

  return isGoodGPSFix;
}

@end