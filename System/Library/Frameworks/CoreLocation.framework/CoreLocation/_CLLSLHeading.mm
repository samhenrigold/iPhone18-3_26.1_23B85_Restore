@interface _CLLSLHeading
- (_CLLSLHeading)initWithCoder:(id)coder;
- (__n128)rotationFromGlobalToCameraFrame;
- (__n128)rotationFromGlobalToDeviceFrame;
- (__n128)rotationalAccuracyInRadians;
- (__n128)setRotationFromGlobalToCameraFrame:(uint64_t)frame;
- (__n128)setRotationFromGlobalToDeviceFrame:(uint64_t)frame;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionWithMemberIndent:(id)indent endIndent:(id)endIndent;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setRotationalAccuracyInRadians:(_CLLSLHeading *)self;
@end

@implementation _CLLSLHeading

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _CLLSLHeading;
  [(_CLLSLHeading *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v8 = objc_msgSend_allocWithZone_(v5, v6, zone, v7);
  v12 = objc_msgSend_init(v8, v9, v10, v11);
  *(v12 + 8) = self->_timestamp;
  v13 = *&self->_anon_50[32];
  v14 = *&self->_anon_50[48];
  v15 = *&self->_anon_50[80];
  *(v12 + 144) = *&self->_anon_50[64];
  *(v12 + 160) = v15;
  *(v12 + 112) = v13;
  *(v12 + 128) = v14;
  v16 = *&self->_anon_50[16];
  *(v12 + 80) = *self->_anon_50;
  *(v12 + 96) = v16;
  v17 = *&self[1]._confidence;
  *(v12 + 176) = *&self[1].super.isa;
  *(v12 + 192) = v17;
  v18 = *self[1]._anon_50;
  v20 = *&self[1]._location;
  v19 = *self[1]._rotationalAccuracyInRadians;
  *(v12 + 240) = *&self[1]._rotationalAccuracyInRadians[16];
  *(v12 + 256) = v18;
  *(v12 + 208) = v20;
  *(v12 + 224) = v19;
  v21 = *&self->_rotationalAccuracyInRadians[16];
  *(v12 + 48) = *self->_rotationalAccuracyInRadians;
  *(v12 + 64) = v21;
  *(v12 + 16) = self->_confidence;
  *(v12 + 24) = self->_globalReferenceFrame;
  *(v12 + 32) = objc_msgSend_copyWithZone_(self->_location, v22, zone, v23);
  *(v12 + 40) = objc_msgSend_copyWithZone_(self->_supplemantaryInfo, v24, zone, v25);
  return v12;
}

- (_CLLSLHeading)initWithCoder:(id)coder
{
  v42.receiver = self;
  v42.super_class = _CLLSLHeading;
  v6 = [(_CLLSLHeading *)&v42 init];
  if (v6)
  {
    objc_msgSend_decodeDoubleForKey_(coder, v4, @"timestamp", v5);
    v6->_timestamp = v7;
    v8 = objc_opt_class();
    v10 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v9, v8, @"rotationFromGlobalToDeviceFrame");
    if (v10 && (v14 = v10, objc_msgSend_length(v10, v11, v12, v13) == 96) && (objc_msgSend_getBytes_length_(v14, v15, v6->_anon_50, 96), v16 = objc_opt_class(), (v18 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v17, v16, @"rotationFromGlobalToCameraFrame")) != 0) && (v22 = v18, objc_msgSend_length(v18, v19, v20, v21) == 96) && (objc_msgSend_getBytes_length_(v22, v23, &v6[1], 96), v24 = objc_opt_class(), (v26 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v25, v24, @"rotationalAccuracyInRadians")) != 0) && (v30 = v26, objc_msgSend_length(v26, v27, v28, v29) == 32))
    {
      objc_msgSend_getBytes_length_(v30, v31, v6->_rotationalAccuracyInRadians, 32);
      objc_msgSend_decodeDoubleForKey_(coder, v32, @"confidence", v33);
      v6->_confidence = v34;
      v6->_globalReferenceFrame = objc_msgSend_decodeIntegerForKey_(coder, v35, @"globalReferenceFrame", v36);
      v37 = objc_opt_class();
      v6->_location = objc_msgSend_decodeObjectOfClass_forKey_(coder, v38, v37, @"location");
      v39 = objc_opt_class();
      v6->_supplemantaryInfo = objc_msgSend_decodeObjectOfClass_forKey_(coder, v40, v39, @"supplemantaryInfo");
    }

    else
    {

      return 0;
    }
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  objc_msgSend_encodeDouble_forKey_(coder, a2, @"timestamp", v3, self->_timestamp);
  v7 = objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], v6, self->_anon_50, 96);
  objc_msgSend_encodeObject_forKey_(coder, v8, v7, @"rotationFromGlobalToDeviceFrame");
  v10 = objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], v9, &self[1], 96);
  objc_msgSend_encodeObject_forKey_(coder, v11, v10, @"rotationFromGlobalToCameraFrame");
  v13 = objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], v12, self->_rotationalAccuracyInRadians, 32);
  objc_msgSend_encodeObject_forKey_(coder, v14, v13, @"rotationalAccuracyInRadians");
  objc_msgSend_encodeDouble_forKey_(coder, v15, @"confidence", v16, self->_confidence);
  objc_msgSend_encodeInteger_forKey_(coder, v17, self->_globalReferenceFrame, @"globalReferenceFrame");
  objc_msgSend_encodeObject_forKey_(coder, v18, self->_location, @"location");
  supplemantaryInfo = self->_supplemantaryInfo;

  objc_msgSend_encodeObject_forKey_(coder, v19, supplemantaryInfo, @"supplemantaryInfo");
}

- (id)descriptionWithMemberIndent:(id)indent endIndent:(id)endIndent
{
  v7 = MEMORY[0x1E696AEC0];
  objc_msgSend_timestamp(self, a2, indent, endIndent);
  v12 = v11;
  if (self)
  {
    objc_msgSend_rotationFromGlobalToDeviceFrame(self, v8, v9, v10);
    v126 = v147;
    objc_msgSend_rotationFromGlobalToDeviceFrame(self, v13, v14, v15);
    v125 = v146;
    objc_msgSend_rotationFromGlobalToDeviceFrame(self, v16, v17, v18);
    v123 = v145;
    objc_msgSend_rotationFromGlobalToDeviceFrame(self, v19, v20, v21);
    *(&v122 + 1) = v144;
    objc_msgSend_rotationFromGlobalToDeviceFrame(self, v22, v23, v24);
    v120 = v143;
    objc_msgSend_rotationFromGlobalToDeviceFrame(self, v25, v26, v27);
    v121 = v142;
    objc_msgSend_rotationFromGlobalToDeviceFrame(self, v28, v29, v30);
    v118 = v141;
    objc_msgSend_rotationFromGlobalToDeviceFrame(self, v31, v32, v33);
    v119 = v140;
    objc_msgSend_rotationFromGlobalToDeviceFrame(self, v34, v35, v36);
    v116 = v139;
    objc_msgSend_rotationFromGlobalToCameraFrame(self, v37, v38, v39);
    v117 = v138;
    objc_msgSend_rotationFromGlobalToCameraFrame(self, v40, v41, v42);
    v114 = v137;
    objc_msgSend_rotationFromGlobalToCameraFrame(self, v43, v44, v45);
    v115 = v136;
    objc_msgSend_rotationFromGlobalToCameraFrame(self, v46, v47, v48);
    *(&v112 + 1) = v135;
    objc_msgSend_rotationFromGlobalToCameraFrame(self, v49, v50, v51);
    v113 = v134;
    objc_msgSend_rotationFromGlobalToCameraFrame(self, v52, v53, v54);
    v110 = v133;
    objc_msgSend_rotationFromGlobalToCameraFrame(self, v55, v56, v57);
    v111 = v132;
    objc_msgSend_rotationFromGlobalToCameraFrame(self, v58, v59, v60);
    v108 = v131;
    objc_msgSend_rotationFromGlobalToCameraFrame(self, v61, v62, v63);
    v124 = v130;
    objc_msgSend_rotationalAccuracyInRadians(self, v64, v65, v66);
    v107 = v129;
    objc_msgSend_rotationalAccuracyInRadians(self, v67, v68, v69);
    v109 = vextq_s8(v128, v128, 8uLL).u64[0];
    objc_msgSend_rotationalAccuracyInRadians(self, v70, v71, v72);
    v73 = v127;
  }

  else
  {
    v111 = 0u;
    v112 = 0u;
    v113 = 0u;
    v114 = 0u;
    v115 = 0;
    v116 = 0;
    v117 = 0u;
    v118 = 0u;
    v119 = 0u;
    v120 = 0u;
    v121 = 0u;
    v122 = 0u;
    v125 = 0u;
    v126 = 0u;
    v109 = 0;
    v110 = 0u;
    v107 = 0;
    v108 = 0u;
    v73 = 0;
    v123 = 0;
    v124 = 0;
  }

  objc_msgSend_confidence(self, v8, v9, v10);
  v75 = v74;
  v79 = objc_msgSend_globalReferenceFrame(self, v76, v77, v78);
  v83 = objc_msgSend_location(self, v80, v81, v82);
  v86 = objc_msgSend_stringByAppendingString_(indent, v84, @"\t", v85);
  v89 = objc_msgSend_stringByAppendingString_(endIndent, v87, @"\t", v88);
  v91 = objc_msgSend_descriptionWithMemberIndent_endIndent_(v83, v90, v86, v89);
  v95 = objc_msgSend_supplemantaryInfo(self, v92, v93, v94);
  v98 = objc_msgSend_stringByAppendingString_(indent, v96, @"\t", v97);
  v101 = objc_msgSend_stringByAppendingString_(endIndent, v99, @"\t", v100);
  v103 = objc_msgSend_descriptionWithMemberIndent_endIndent_(v95, v102, v98, v101);
  return objc_msgSend_stringWithFormat_(v7, v104, @"<_CLLSLHeading: %p> {\n%@.timestamp = %f,\n%@.rotationFromGlobalToDeviceFrame = [%f, %f, %f; %f, %f, %f; %f, %f, %f],\n%@.rotationFromGlobalToCameraFrame = [%f, %f, %f; %f, %f, %f; %f, %f, %f],\n%@.rotationalAccuracyInRadians = [%f, %f, %f],\n%@.confidence = %f,\n%@.globalReferenceFrame = %zu,\n%@.location = %@,\n%@.supplemantryInfo = %@\n%@}", v105, self, indent, v12, indent, vzip1q_s64(v126, v125), v123, *(&v122 + 1), vzip2q_s64(v120, v121), vzip1q_s64(v118, v119), v116, indent, vzip1q_s64(v117, v114), v115, *(&v112 + 1), vzip2q_s64(v113, v110), vzip1q_s64(v111, v108), v124, indent, v107, v109, v73, indent, v75, indent, v79, indent, v91, indent, v103, endIndent);
}

- (__n128)rotationFromGlobalToDeviceFrame
{
  v2 = *(self + 128);
  *(a2 + 32) = *(self + 112);
  *(a2 + 48) = v2;
  v3 = *(self + 160);
  *(a2 + 64) = *(self + 144);
  *(a2 + 80) = v3;
  result = *(self + 80);
  v5 = *(self + 96);
  *a2 = result;
  *(a2 + 16) = v5;
  return result;
}

- (__n128)setRotationFromGlobalToDeviceFrame:(uint64_t)frame
{
  v3 = *(frame + 16);
  *(self + 80) = *frame;
  *(self + 96) = v3;
  result = *(frame + 32);
  v5 = *(frame + 48);
  v6 = *(frame + 80);
  *(self + 144) = *(frame + 64);
  *(self + 160) = v6;
  *(self + 112) = result;
  *(self + 128) = v5;
  return result;
}

- (__n128)rotationFromGlobalToCameraFrame
{
  v2 = *(self + 224);
  *(a2 + 32) = *(self + 208);
  *(a2 + 48) = v2;
  v3 = *(self + 256);
  *(a2 + 64) = *(self + 240);
  *(a2 + 80) = v3;
  result = *(self + 176);
  v5 = *(self + 192);
  *a2 = result;
  *(a2 + 16) = v5;
  return result;
}

- (__n128)setRotationFromGlobalToCameraFrame:(uint64_t)frame
{
  v3 = *(frame + 16);
  *(self + 176) = *frame;
  *(self + 192) = v3;
  result = *(frame + 32);
  v5 = *(frame + 48);
  v6 = *(frame + 80);
  *(self + 240) = *(frame + 64);
  *(self + 256) = v6;
  *(self + 208) = result;
  *(self + 224) = v5;
  return result;
}

- (__n128)rotationalAccuracyInRadians
{
  result = self[3];
  a2[1].n128_u64[0] = self[4].n128_u64[0];
  *a2 = result;
  return result;
}

- (void)setRotationalAccuracyInRadians:(_CLLSLHeading *)self
{
  v3 = v2[1];
  *self->_rotationalAccuracyInRadians = *v2;
  *&self->_rotationalAccuracyInRadians[16] = v3;
}

@end