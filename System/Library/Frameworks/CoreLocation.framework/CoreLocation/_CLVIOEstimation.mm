@interface _CLVIOEstimation
- (CGSize)cameraImageResolution;
- (_CLVIOEstimation)initWithCoder:(id)coder;
- (__n128)setCameraIntrinsics:(__n128)intrinsics;
- (__n128)setCameraPose:(__n128)pose;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionWithMemberIndent:(id)indent endIndent:(id)endIndent;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setInertialCovarianceInfo:(id *)info;
- (void)setInertialStateInfo:(id *)info;
@end

@implementation _CLVIOEstimation

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _CLVIOEstimation;
  [(_CLVIOEstimation *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v8 = objc_msgSend_allocWithZone_(v5, v6, zone, v7);
  v12 = objc_msgSend_init(v8, v9, v10, v11);
  *(v12 + 8) = self->_trackingState;
  *(v12 + 16) = self->_originTimestamp;
  *(v12 + 24) = self->_timestamp;
  v13 = *&self->_inertialStateInfo.accelBiasLength;
  *(v12 + 64) = *&self->_inertialStateInfo.stateLengthInBytes;
  *(v12 + 80) = v13;
  *(v12 + 32) = objc_msgSend_copyWithZone_(self->_inertialState, v14, zone, v15);
  v16 = *&self->_inertialCovarianceInfo.accelBiasDof;
  *(v12 + 88) = *&self->_inertialCovarianceInfo.covarianceSizeInBytes;
  *(v12 + 104) = v16;
  *(v12 + 40) = objc_msgSend_copyWithZone_(self->_inertialCovariance, v17, zone, v18);
  cameraImageResolution = self[1]._cameraImageResolution;
  v21 = *&self[1].super.isa;
  v20 = *&self[1]._originTimestamp;
  *(v12 + 192) = *&self[1]._inertialState;
  *(v12 + 208) = cameraImageResolution;
  *(v12 + 160) = v21;
  *(v12 + 176) = v20;
  v23 = *&self->_anon_70[16];
  v22 = *&self->_anon_70[32];
  *(v12 + 112) = *self->_anon_70;
  *(v12 + 128) = v23;
  *(v12 + 144) = v22;
  *(v12 + 48) = self->_cameraImageResolution;
  return v12;
}

- (_CLVIOEstimation)initWithCoder:(id)coder
{
  v70.receiver = self;
  v70.super_class = _CLVIOEstimation;
  v6 = [(_CLVIOEstimation *)&v70 init];
  if (v6)
  {
    v6->_trackingState = objc_msgSend_decodeIntForKey_(coder, v4, @"trackingState", v5);
    objc_msgSend_decodeDoubleForKey_(coder, v7, @"originTimestamp", v8);
    v6->_originTimestamp = v9;
    objc_msgSend_decodeDoubleForKey_(coder, v10, @"timestamp", v11);
    v6->_timestamp = v12;
    v13 = objc_opt_class();
    v15 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v14, v13, @"inertialStateInfo");
    if (!v15)
    {
      goto LABEL_20;
    }

    v19 = v15;
    if (objc_msgSend_length(v15, v16, v17, v18) != 24)
    {
      goto LABEL_20;
    }

    objc_msgSend_getBytes_length_(v19, v20, &v6->_inertialStateInfo, 24);
    v21 = objc_opt_class();
    v23 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v22, v21, @"inertialState");
    if (v23)
    {
      v27 = v23;
      if (objc_msgSend_length(v23, v24, v25, v26) == v6->_inertialStateInfo.stateLengthInBytes)
      {
        v23 = v27;
      }

      else
      {
        v23 = 0;
      }
    }

    v6->_inertialState = v23;
    v28 = objc_opt_class();
    v30 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v29, v28, @"inertialCovarianceInfo");
    if (!v30)
    {
      goto LABEL_20;
    }

    v34 = v30;
    if (objc_msgSend_length(v30, v31, v32, v33) != 24)
    {
      goto LABEL_20;
    }

    objc_msgSend_getBytes_length_(v34, v35, &v6->_inertialCovarianceInfo, 24);
    v36 = objc_opt_class();
    v38 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v37, v36, @"inertialCovariance");
    if (v38)
    {
      v42 = v38;
      if (objc_msgSend_length(v38, v39, v40, v41) == v6->_inertialCovarianceInfo.covarianceSizeInBytes)
      {
        v38 = v42;
      }

      else
      {
        v38 = 0;
      }
    }

    v6->_inertialCovariance = v38;
    v43 = objc_opt_class();
    v45 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v44, v43, @"cameraPose");
    if (v45 && (v49 = v45, objc_msgSend_length(v45, v46, v47, v48) == 64) && (objc_msgSend_getBytes_length_(v49, v50, &v6[1], 64), v51 = objc_opt_class(), (v53 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v52, v51, @"cameraIntrinsics")) != 0) && (v57 = v53, objc_msgSend_length(v53, v54, v55, v56) == 48) && (objc_msgSend_getBytes_length_(v57, v58, v6->_anon_70, 48), v59 = objc_opt_class(), (v61 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v60, v59, @"cameraImageResolutionKey")) != 0) && (v65 = v61, v66 = objc_msgSend_objCType(v61, v62, v63, v64), !strcmp(v66, "{CGSize=dd}")))
    {
      objc_msgSend_getValue_(v65, v67, &v6->_cameraImageResolution, v68);
    }

    else
    {
LABEL_20:

      return 0;
    }
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  objc_msgSend_encodeInt_forKey_(coder, a2, self->_trackingState, @"trackingState");
  objc_msgSend_encodeDouble_forKey_(coder, v5, @"originTimestamp", v6, self->_originTimestamp);
  objc_msgSend_encodeDouble_forKey_(coder, v7, @"timestamp", v8, self->_timestamp);
  v10 = objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], v9, &self->_inertialStateInfo, 24);
  objc_msgSend_encodeObject_forKey_(coder, v11, v10, @"inertialStateInfo");
  objc_msgSend_encodeObject_forKey_(coder, v12, self->_inertialState, @"inertialState");
  v14 = objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], v13, &self->_inertialCovarianceInfo, 24);
  objc_msgSend_encodeObject_forKey_(coder, v15, v14, @"inertialCovarianceInfo");
  objc_msgSend_encodeObject_forKey_(coder, v16, self->_inertialCovariance, @"inertialCovariance");
  v18 = objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], v17, &self[1], 64);
  objc_msgSend_encodeObject_forKey_(coder, v19, v18, @"cameraPose");
  v21 = objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], v20, self->_anon_70, 48);
  objc_msgSend_encodeObject_forKey_(coder, v22, v21, @"cameraIntrinsics");
  v25 = objc_msgSend_value_withObjCType_(MEMORY[0x1E696B098], v23, &self->_cameraImageResolution, "{CGSize=dd}");

  objc_msgSend_encodeObject_forKey_(coder, v24, v25, @"cameraImageResolutionKey");
}

- (id)descriptionWithMemberIndent:(id)indent endIndent:(id)endIndent
{
  v7 = objc_msgSend_stringByAppendingString_(indent, a2, @"\t", endIndent);
  v185 = MEMORY[0x1E696AEC0];
  v184 = objc_msgSend_trackingState(self, v8, v9, v10);
  objc_msgSend_originTimestamp(self, v11, v12, v13);
  v183 = v14;
  objc_msgSend_timestamp(self, v15, v16, v17);
  v182 = v21;
  if (self)
  {
    objc_msgSend_inertialStateInfo(self, v18, v19, v20);
    v181 = v189;
    objc_msgSend_inertialStateInfo(self, v22, v23, v24);
    v180 = v188;
  }

  else
  {
    v180 = 0;
    v181 = 0;
  }

  v25 = objc_msgSend_inertialState(self, v18, v19, v20);
  v32 = objc_msgSend_inertialState(self, v26, v27, v28);
  if (self)
  {
    objc_msgSend_inertialCovarianceInfo(self, v29, v30, v31);
    v33 = v187;
    objc_msgSend_inertialCovarianceInfo(self, v34, v35, v36);
    v37 = v186;
  }

  else
  {
    v37 = 0;
    v33 = 0;
  }

  v38 = objc_msgSend_inertialCovariance(self, v29, v30, v31);
  v42 = objc_msgSend_inertialCovariance(self, v39, v40, v41);
  objc_msgSend_cameraPose(self, v43, v44, v45);
  v179 = v46;
  objc_msgSend_cameraPose(self, v47, v48, v49);
  v178 = v50;
  objc_msgSend_cameraPose(self, v51, v52, v53);
  v177 = v54;
  objc_msgSend_cameraPose(self, v55, v56, v57);
  v176 = v58;
  objc_msgSend_cameraPose(self, v59, v60, v61);
  v175 = v62;
  objc_msgSend_cameraPose(self, v63, v64, v65);
  v174 = v66;
  objc_msgSend_cameraPose(self, v67, v68, v69);
  v173 = v70;
  objc_msgSend_cameraPose(self, v71, v72, v73);
  v172 = v74;
  objc_msgSend_cameraPose(self, v75, v76, v77);
  v171 = v78;
  objc_msgSend_cameraPose(self, v79, v80, v81);
  v170 = v82;
  objc_msgSend_cameraPose(self, v83, v84, v85);
  v169 = v86;
  objc_msgSend_cameraPose(self, v87, v88, v89);
  v168 = v90;
  objc_msgSend_cameraPose(self, v91, v92, v93);
  v167 = v94;
  objc_msgSend_cameraPose(self, v95, v96, v97);
  v166 = v98;
  objc_msgSend_cameraPose(self, v99, v100, v101);
  v165 = v102;
  objc_msgSend_cameraPose(self, v103, v104, v105);
  v164 = v106;
  objc_msgSend_cameraIntrinsics(self, v107, v108, v109);
  v163 = v110;
  objc_msgSend_cameraIntrinsics(self, v111, v112, v113);
  v162 = v114;
  objc_msgSend_cameraIntrinsics(self, v115, v116, v117);
  v119 = v118;
  objc_msgSend_cameraIntrinsics(self, v120, v121, v122);
  v124 = v123;
  objc_msgSend_cameraIntrinsics(self, v125, v126, v127);
  v129 = v128;
  objc_msgSend_cameraIntrinsics(self, v130, v131, v132);
  v134 = v133;
  objc_msgSend_cameraIntrinsics(self, v135, v136, v137);
  v139 = v138;
  objc_msgSend_cameraIntrinsics(self, v140, v141, v142);
  v144 = v143;
  objc_msgSend_cameraIntrinsics(self, v145, v146, v147);
  v149 = v148;
  objc_msgSend_cameraImageResolution(self, v150, v151, v152);
  v154 = v153;
  objc_msgSend_cameraImageResolution(self, v155, v156, v157);
  return objc_msgSend_stringWithFormat_(v185, v158, @"<_CLVIOEstimation: %p> {\n%@.trackingState = %d,\n%@.originTimestamp = %f,\n%@.timestamp = %f,\n%@.inertialStateInfo = { .stateLengthInbytes = %lu, .stateLength = %d, ... },\n%@.inertialState = <NSData: %p> %@,\n%@.inertialCovarianceInfo = { .covarianceSizeInbytes = %lu, .covariance = %d, ... },\n%@.inertialCovariance = <NSData: %p> %@,\n%@.cameraPose = [%f, %f, %f, %f;\n%@%f, %f, %f, %f;\n%@%f, %f, %f, %f;\n%@%f, %f, %f, %f],\n%@.cameraIntrinsics = [%f, %f, %f;\n%@%f, %f, %f;\n%@%f, %f, %f],\n%@.cameraImageResolution = [%f, %f]\n%@}", v159, self, indent, v184, indent, v183, indent, v182, indent, v181, v180, indent, v25, v32, indent, v33, v37, indent, v38, v42, indent, *&v179, *&v178, *&v177, *&v176, v7, *&v175, *&v174, *&v173, *&v172, v7, *&v171, *&v170, *&v169, *&v168, v7, *&v167, *&v166, *&v165, *&v164, indent, *&v163, *&v162, *&v119, v7, *&v124, *&v129, *&v134, v7, *&v139, *&v144, *&v149, indent, v154, v160, endIndent);
}

- (void)setInertialStateInfo:(id *)info
{
  v3 = *&info->var0;
  *&self->_inertialStateInfo.accelBiasLength = *&info->var9;
  *&self->_inertialStateInfo.stateLengthInBytes = v3;
}

- (void)setInertialCovarianceInfo:(id *)info
{
  v3 = *&info->var0;
  *&self->_inertialCovarianceInfo.accelBiasDof = *&info->var9;
  *&self->_inertialCovarianceInfo.covarianceSizeInBytes = v3;
}

- (__n128)setCameraPose:(__n128)pose
{
  result[10] = a2;
  result[11] = pose;
  result[12] = a4;
  result[13] = a5;
  return result;
}

- (__n128)setCameraIntrinsics:(__n128)intrinsics
{
  result[7] = a2;
  result[8] = intrinsics;
  result[9] = a4;
  return result;
}

- (CGSize)cameraImageResolution
{
  width = self->_cameraImageResolution.width;
  height = self->_cameraImageResolution.height;
  result.height = height;
  result.width = width;
  return result;
}

@end