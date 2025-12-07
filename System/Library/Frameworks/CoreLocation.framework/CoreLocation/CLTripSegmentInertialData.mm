@interface CLTripSegmentInertialData
- (CLTripSegmentInertialData)initWithCoder:(id)coder;
- (CLTripSegmentInertialData)initWithTime:(id)time dataPeriodSec:(double)sec deltaCourseRad:(double)rad deltaSpeedMps:(double)mps deltaCourseVarRad2:(double)rad2 deltaSpeedVarMps2:(double)mps2 deltaCourseSpeedCovarRadMps:(double)radMps;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLTripSegmentInertialData

- (CLTripSegmentInertialData)initWithTime:(id)time dataPeriodSec:(double)sec deltaCourseRad:(double)rad deltaSpeedMps:(double)mps deltaCourseVarRad2:(double)rad2 deltaSpeedVarMps2:(double)mps2 deltaCourseSpeedCovarRadMps:(double)radMps
{
  v18.receiver = self;
  v18.super_class = CLTripSegmentInertialData;
  v16 = [(CLTripSegmentInertialData *)&v18 init];
  if (v16)
  {
    v16->_timestamp = time;
    v16->_dataPeriod_s = sec;
    v16->_deltaCourse_rad = rad;
    v16->_deltaSpeed_mps = mps;
    v16->_deltaCourseVar_rad2 = rad2;
    v16->_deltaSpeedVar_mps2 = mps2;
    v16->_deltaCourseSpeedCovar_radmps = radMps;
  }

  return v16;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v8 = objc_msgSend_allocWithZone_(v5, v6, zone, v7);
  v12 = objc_msgSend_timestamp(self, v9, v10, v11);
  objc_msgSend_dataPeriod_s(self, v13, v14, v15);
  v17 = v16;
  objc_msgSend_deltaCourse_rad(self, v18, v19, v20);
  v22 = v21;
  objc_msgSend_deltaSpeed_mps(self, v23, v24, v25);
  v27 = v26;
  objc_msgSend_deltaSpeedVar_mps2(self, v28, v29, v30);
  v32 = v31;
  objc_msgSend_deltaSpeedVar_mps2(self, v33, v34, v35);
  v37 = v36;
  objc_msgSend_deltaCourseSpeedCovar_radmps(self, v38, v39, v40);

  return objc_msgSend_initWithTime_dataPeriodSec_deltaCourseRad_deltaSpeedMps_deltaCourseVarRad2_deltaSpeedVarMps2_deltaCourseSpeedCovarRadMps_(v8, v41, v12, v42, v17, v22, v27, v32, v37, v43);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLTripSegmentInertialData;
  [(CLTripSegmentInertialData *)&v3 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v9 = objc_msgSend_timestamp(self, v6, v7, v8);
  objc_msgSend_timeIntervalSinceReferenceDate(v9, v10, v11, v12);
  v14 = v13;
  objc_msgSend_dataPeriod_s(self, v15, v16, v17);
  v19 = v18;
  objc_msgSend_deltaCourse_rad(self, v20, v21, v22);
  v24 = v23;
  objc_msgSend_deltaSpeed_mps(self, v25, v26, v27);
  v29 = v28;
  objc_msgSend_deltaCourseVar_rad2(self, v30, v31, v32);
  v34 = v33;
  objc_msgSend_deltaSpeedVar_mps2(self, v35, v36, v37);
  v39 = v38;
  objc_msgSend_deltaCourseSpeedCovar_radmps(self, v40, v41, v42);
  return objc_msgSend_stringWithFormat_(v3, v43, @"%@,timestamp,%.2f,dataperiod,%.2f,deltaCourse,%.6f,deltaSpeed,%.4f,courseVar,%.6f,speedVar,%.6lf,courseSpeedCovar,%.6lf", v44, v5, v14, v19, v24, v29, v34, v39, v45);
}

- (void)encodeWithCoder:(id)coder
{
  v6 = objc_msgSend_timestamp(self, a2, coder, v3);
  objc_msgSend_encodeObject_forKey_(coder, v7, v6, @"timestamp");
  objc_msgSend_dataPeriod_s(self, v8, v9, v10);
  objc_msgSend_encodeDouble_forKey_(coder, v11, @"dataPeriod", v12);
  objc_msgSend_deltaCourse_rad(self, v13, v14, v15);
  objc_msgSend_encodeDouble_forKey_(coder, v16, @"deltaCourse", v17);
  objc_msgSend_deltaSpeed_mps(self, v18, v19, v20);
  objc_msgSend_encodeDouble_forKey_(coder, v21, @"deltaSpeed", v22);
  objc_msgSend_deltaCourseVar_rad2(self, v23, v24, v25);
  objc_msgSend_encodeDouble_forKey_(coder, v26, @"deltaCourseVar", v27);
  objc_msgSend_deltaSpeedVar_mps2(self, v28, v29, v30);
  objc_msgSend_encodeDouble_forKey_(coder, v31, @"deltaSpeedVar", v32);
  objc_msgSend_deltaCourseSpeedCovar_radmps(self, v33, v34, v35);

  objc_msgSend_encodeDouble_forKey_(coder, v36, @"deltaCourseSpeedCovar", v37);
}

- (CLTripSegmentInertialData)initWithCoder:(id)coder
{
  v4 = [CLTripSegmentInertialData alloc];
  v5 = objc_opt_class();
  v7 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v6, v5, @"timestamp");
  objc_msgSend_decodeDoubleForKey_(coder, v8, @"dataPeriod", v9);
  v11 = v10;
  objc_msgSend_decodeDoubleForKey_(coder, v12, @"deltaCourse", v13);
  v15 = v14;
  objc_msgSend_decodeDoubleForKey_(coder, v16, @"deltaSpeed", v17);
  v19 = v18;
  objc_msgSend_decodeDoubleForKey_(coder, v20, @"deltaCourseVar", v21);
  v23 = v22;
  objc_msgSend_decodeDoubleForKey_(coder, v24, @"deltaSpeedVar", v25);
  v27 = v26;
  objc_msgSend_decodeDoubleForKey_(coder, v28, @"deltaCourseSpeedCovar", v29);

  return objc_msgSend_initWithTime_dataPeriodSec_deltaCourseRad_deltaSpeedMps_deltaCourseVarRad2_deltaSpeedVarMps2_deltaCourseSpeedCovarRadMps_(v4, v30, v7, v31, v11, v15, v19, v23, v27, v32);
}

@end