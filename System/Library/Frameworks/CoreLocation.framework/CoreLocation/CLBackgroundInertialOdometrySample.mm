@interface CLBackgroundInertialOdometrySample
- (BOOL)isEqual:(id)equal;
- (CLBackgroundInertialOdometrySample)initWithCoder:(id)coder;
- (CLBackgroundInertialOdometrySample)initWithTimestamp:(id)timestamp machContinuousTimestamp:(double)continuousTimestamp sampleInterval:(double)interval deltaPosition:(id)position deltaVelocity:(id)velocity quaternion:(id)quaternion referenceFrameContinuity:(unint64_t)continuity referenceFrame:(unint64_t)self0 staticFlag:(unint64_t)self1 mountState:(unint64_t)self2 zupt:(unint64_t)self3 dotBiasChange:(unint64_t)self4 calibration:(id)self5;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLBackgroundInertialOdometrySample

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v9 = objc_msgSend_cfAbsTimestamp(self, v6, v7, v8);
  objc_msgSend_timeIntervalSinceReferenceDate(v9, v10, v11, v12);
  v141 = v13;
  objc_msgSend_machContinuousTimestamp_s(self, v14, v15, v16);
  v140 = v17;
  objc_msgSend_sampleInterval_s(self, v18, v19, v20);
  v139 = v21;
  v25 = objc_msgSend_deltaPosition_m(self, v22, v23, v24);
  objc_msgSend_X(v25, v26, v27, v28);
  v138 = v29;
  v33 = objc_msgSend_deltaPosition_m(self, v30, v31, v32);
  objc_msgSend_Y(v33, v34, v35, v36);
  v137 = v37;
  v41 = objc_msgSend_deltaPosition_m(self, v38, v39, v40);
  objc_msgSend_Z(v41, v42, v43, v44);
  v46 = v45;
  v50 = objc_msgSend_deltaVelocity_mps(self, v47, v48, v49);
  objc_msgSend_X(v50, v51, v52, v53);
  v55 = v54;
  v59 = objc_msgSend_deltaVelocity_mps(self, v56, v57, v58);
  objc_msgSend_Y(v59, v60, v61, v62);
  v64 = v63;
  v68 = objc_msgSend_deltaVelocity_mps(self, v65, v66, v67);
  objc_msgSend_Z(v68, v69, v70, v71);
  v73 = v72;
  v77 = objc_msgSend_quaternion(self, v74, v75, v76);
  objc_msgSend_X(v77, v78, v79, v80);
  v82 = v81;
  v86 = objc_msgSend_quaternion(self, v83, v84, v85);
  objc_msgSend_Y(v86, v87, v88, v89);
  v91 = v90;
  v95 = objc_msgSend_quaternion(self, v92, v93, v94);
  objc_msgSend_Z(v95, v96, v97, v98);
  v100 = v99;
  v104 = objc_msgSend_quaternion(self, v101, v102, v103);
  objc_msgSend_W(v104, v105, v106, v107);
  v109 = v108;
  v113 = objc_msgSend_referenceFrameContinuity(self, v110, v111, v112);
  v117 = objc_msgSend_sessionReferenceFrame(self, v114, v115, v116);
  v121 = objc_msgSend_staticFlag(self, v118, v119, v120);
  v125 = objc_msgSend_mountState(self, v122, v123, v124);
  v129 = objc_msgSend_zupt(self, v126, v127, v128);
  v133 = objc_msgSend_dotBiasChange(self, v130, v131, v132);
  return objc_msgSend_stringWithFormat_(v3, v134, @"%@,cfAbsTimestamp, %.3f, machContinuousTimestamp_s, %.3f, sampleInterval_s, %.3f, deltaPosition_m.X, %.3f, deltaPosition_m.Y, %.3f, deltaPosition_m.Z, %.3f, deltaVelocity_mps.X, %.3f, deltaVelocity_mps.Y, %.3f, deltaVelocity_mps.Z, %.3f, quaternion.X, %.3f, quaternion.Y, %.3f, quaternion.Z, %.3f, quaternion.W, %.3f, referenceFrameContinuity, %zu, sessionReferenceFrame, %zu, staticFlag, %zu, mountState, %zu, zupt, %zu, dotBiasChange, %zu", v135, v5, v141, v140, v139, v138, v137, v46, v55, v64, v73, v82, v91, v100, v109, v113, v117, v121, v125, v129, v133);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLBackgroundInertialOdometrySample;
  [(CLBackgroundInertialOdometrySample *)&v3 dealloc];
}

- (CLBackgroundInertialOdometrySample)initWithTimestamp:(id)timestamp machContinuousTimestamp:(double)continuousTimestamp sampleInterval:(double)interval deltaPosition:(id)position deltaVelocity:(id)velocity quaternion:(id)quaternion referenceFrameContinuity:(unint64_t)continuity referenceFrame:(unint64_t)self0 staticFlag:(unint64_t)self1 mountState:(unint64_t)self2 zupt:(unint64_t)self3 dotBiasChange:(unint64_t)self4 calibration:(id)self5
{
  v25.receiver = self;
  v25.super_class = CLBackgroundInertialOdometrySample;
  v23 = [(CLBackgroundInertialOdometrySample *)&v25 init];
  if (v23)
  {
    v23->_cfAbsTimestamp = timestamp;
    v23->_machContinuousTimestamp_s = continuousTimestamp;
    v23->_sampleInterval_s = interval;
    v23->_deltaPosition_m = position;
    v23->_deltaVelocity_mps = velocity;
    v23->_quaternion = quaternion;
    v23->_referenceFrameContinuity = continuity;
    v23->_sessionReferenceFrame = frame;
    v23->_staticFlag = flag;
    v23->_mountState = state;
    v23->_zupt = zupt;
    v23->_dotBiasChange = change;
    v23->_calibration = calibration;
  }

  return v23;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v64 = objc_msgSend_allocWithZone_(v5, v6, zone, v7);
  v63 = objc_msgSend_cfAbsTimestamp(self, v8, v9, v10);
  objc_msgSend_machContinuousTimestamp_s(self, v11, v12, v13);
  v15 = v14;
  objc_msgSend_sampleInterval_s(self, v16, v17, v18);
  v20 = v19;
  v24 = objc_msgSend_deltaPosition_m(self, v21, v22, v23);
  v28 = objc_msgSend_deltaVelocity_mps(self, v25, v26, v27);
  v32 = objc_msgSend_quaternion(self, v29, v30, v31);
  v36 = objc_msgSend_referenceFrameContinuity(self, v33, v34, v35);
  v40 = objc_msgSend_sessionReferenceFrame(self, v37, v38, v39);
  v44 = objc_msgSend_staticFlag(self, v41, v42, v43);
  v48 = objc_msgSend_mountState(self, v45, v46, v47);
  v52 = objc_msgSend_zupt(self, v49, v50, v51);
  v56 = objc_msgSend_dotBiasChange(self, v53, v54, v55);
  v60 = objc_msgSend_calibration(self, v57, v58, v59);
  return objc_msgSend_initWithTimestamp_machContinuousTimestamp_sampleInterval_deltaPosition_deltaVelocity_quaternion_referenceFrameContinuity_referenceFrame_staticFlag_mountState_zupt_dotBiasChange_calibration_(v64, v61, v63, v24, v28, v32, v36, v40, v15, v20, v44, v48, v52, v56, v60);
}

- (void)encodeWithCoder:(id)coder
{
  v6 = objc_msgSend_cfAbsTimestamp(self, a2, coder, v3);
  objc_msgSend_encodeObject_forKey_(coder, v7, v6, @"timestamp");
  objc_msgSend_machContinuousTimestamp_s(self, v8, v9, v10);
  objc_msgSend_encodeDouble_forKey_(coder, v11, @"machContinuousTimestamp", v12);
  objc_msgSend_sampleInterval_s(self, v13, v14, v15);
  objc_msgSend_encodeDouble_forKey_(coder, v16, @"sampleInterval", v17);
  v21 = objc_msgSend_deltaPosition_m(self, v18, v19, v20);
  objc_msgSend_encodeObject_forKey_(coder, v22, v21, @"deltaPosition");
  v26 = objc_msgSend_deltaVelocity_mps(self, v23, v24, v25);
  objc_msgSend_encodeObject_forKey_(coder, v27, v26, @"deltaVelocity");
  v31 = objc_msgSend_quaternion(self, v28, v29, v30);
  objc_msgSend_encodeObject_forKey_(coder, v32, v31, @"quaternion");
  v36 = objc_msgSend_referenceFrameContinuity(self, v33, v34, v35) != 0;
  objc_msgSend_encodeBool_forKey_(coder, v37, v36, @"referenceFrameContinuity");
  v41 = objc_msgSend_sessionReferenceFrame(self, v38, v39, v40);
  objc_msgSend_encodeInteger_forKey_(coder, v42, v41, @"referenceFrame");
  v46 = objc_msgSend_staticFlag(self, v43, v44, v45);
  objc_msgSend_encodeInteger_forKey_(coder, v47, v46, @"staticFlag");
  v51 = objc_msgSend_mountState(self, v48, v49, v50);
  objc_msgSend_encodeInteger_forKey_(coder, v52, v51, @"mountState");
  v56 = objc_msgSend_zupt(self, v53, v54, v55);
  objc_msgSend_encodeInteger_forKey_(coder, v57, v56, @"zupt");
  v61 = objc_msgSend_dotBiasChange(self, v58, v59, v60);
  objc_msgSend_encodeInteger_forKey_(coder, v62, v61, @"dotBiasChange");
  v67 = objc_msgSend_calibration(self, v63, v64, v65);

  objc_msgSend_encodeObject_forKey_(coder, v66, v67, @"calibration");
}

- (CLBackgroundInertialOdometrySample)initWithCoder:(id)coder
{
  v34.receiver = self;
  v34.super_class = CLBackgroundInertialOdometrySample;
  v4 = [(CLBackgroundInertialOdometrySample *)&v34 init];
  if (v4)
  {
    v5 = objc_opt_class();
    v4->_cfAbsTimestamp = objc_msgSend_decodeObjectOfClass_forKey_(coder, v6, v5, @"timestamp");
    objc_msgSend_decodeDoubleForKey_(coder, v7, @"machContinuousTimestamp", v8);
    v4->_machContinuousTimestamp_s = v9;
    objc_msgSend_decodeDoubleForKey_(coder, v10, @"sampleInterval", v11);
    v4->_sampleInterval_s = v12;
    v13 = objc_opt_class();
    v4->_deltaPosition_m = objc_msgSend_decodeObjectOfClass_forKey_(coder, v14, v13, @"deltaPosition");
    v15 = objc_opt_class();
    v4->_deltaVelocity_mps = objc_msgSend_decodeObjectOfClass_forKey_(coder, v16, v15, @"deltaVelocity");
    v17 = objc_opt_class();
    v4->_quaternion = objc_msgSend_decodeObjectOfClass_forKey_(coder, v18, v17, @"quaternion");
    v4->_referenceFrameContinuity = objc_msgSend_decodeBoolForKey_(coder, v19, @"referenceFrameContinuity", v20);
    v4->_sessionReferenceFrame = objc_msgSend_decodeIntegerForKey_(coder, v21, @"referenceFrame", v22);
    v4->_staticFlag = objc_msgSend_decodeIntegerForKey_(coder, v23, @"staticFlag", v24);
    v4->_mountState = objc_msgSend_decodeIntegerForKey_(coder, v25, @"mountState", v26);
    v4->_zupt = objc_msgSend_decodeIntegerForKey_(coder, v27, @"zupt", v28);
    v4->_dotBiasChange = objc_msgSend_decodeIntegerForKey_(coder, v29, @"dotBiasChange", v30);
    v31 = objc_opt_class();
    v4->_calibration = objc_msgSend_decodeObjectOfClass_forKey_(coder, v32, v31, @"calibration");
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  v5 = objc_opt_class();
  isMemberOfClass = objc_msgSend_isMemberOfClass_(equal, v6, v5, v7);
  v11 = objc_msgSend_cfAbsTimestamp(self, v8, v9, v10);
  v15 = objc_msgSend_cfAbsTimestamp(equal, v12, v13, v14);
  isEqual = objc_msgSend_isEqual_(v11, v16, v15, v17);
  objc_msgSend_machContinuousTimestamp_s(self, v18, v19, v20);
  v22 = v21;
  objc_msgSend_machContinuousTimestamp_s(equal, v23, v24, v25);
  v27 = v26;
  objc_msgSend_sampleInterval_s(self, v28, v29, v30);
  v32 = v31;
  objc_msgSend_sampleInterval_s(equal, v33, v34, v35);
  v37 = v36;
  if (objc_msgSend_deltaPosition_m(self, v38, v39, v40) || objc_msgSend_deltaPosition_m(equal, v41, v42, v43))
  {
    v44 = objc_msgSend_deltaPosition_m(self, v41, v42, v43);
    v48 = objc_msgSend_deltaPosition_m(equal, v45, v46, v47);
    v120 = objc_msgSend_isEqual_(v44, v49, v48, v50) ^ 1;
  }

  else
  {
    v120 = 0;
  }

  if (objc_msgSend_deltaVelocity_mps(self, v41, v42, v43) || objc_msgSend_deltaVelocity_mps(equal, v51, v52, v53))
  {
    v54 = objc_msgSend_deltaVelocity_mps(self, v51, v52, v53);
    v58 = objc_msgSend_deltaVelocity_mps(equal, v55, v56, v57);
    v119 = objc_msgSend_isEqual_(v54, v59, v58, v60) ^ 1;
  }

  else
  {
    v119 = 0;
  }

  if (objc_msgSend_quaternion(self, v51, v52, v53) || objc_msgSend_quaternion(equal, v61, v62, v63))
  {
    v64 = objc_msgSend_quaternion(self, v61, v62, v63);
    v68 = objc_msgSend_quaternion(equal, v65, v66, v67);
    v118 = objc_msgSend_isEqual_(v64, v69, v68, v70) ^ 1;
  }

  else
  {
    LOBYTE(v118) = 0;
  }

  v117 = objc_msgSend_referenceFrameContinuity(self, v61, v62, v63);
  v116 = objc_msgSend_referenceFrameContinuity(equal, v71, v72, v73);
  v77 = objc_msgSend_sessionReferenceFrame(self, v74, v75, v76);
  v81 = objc_msgSend_sessionReferenceFrame(equal, v78, v79, v80);
  v85 = objc_msgSend_staticFlag(self, v82, v83, v84);
  v89 = objc_msgSend_staticFlag(equal, v86, v87, v88);
  v93 = objc_msgSend_mountState(self, v90, v91, v92);
  v97 = objc_msgSend_mountState(equal, v94, v95, v96);
  v115 = objc_msgSend_zupt(self, v98, v99, v100);
  v104 = objc_msgSend_zupt(equal, v101, v102, v103);
  v108 = objc_msgSend_dotBiasChange(self, v105, v106, v107);
  v112 = objc_msgSend_dotBiasChange(equal, v109, v110, v111);
  result = 0;
  if (!((v22 != v27 || (isMemberOfClass & isEqual & 1) == 0) | (v32 != v37) | v120 & 1 | v119 & 1) && (v118 & 1) == 0 && v117 == v116 && v77 == v81 && v85 == v89 && v93 == v97)
  {
    return v115 == v104 && v108 == v112;
  }

  return result;
}

@end