@interface CMADeviceMotionVisionFusionPlayer
- (CMADeviceMotionVisionFusionPlayer)init;
- (id)getFusedDeviceMotionFrom:(id)from andAttitudeReferenceFrame:(unint64_t)frame;
- (void)reset;
- (void)setEnableFusion:(BOOL)fusion;
- (void)start;
- (void)stop;
- (void)updateARSessionState:(unint64_t)state;
- (void)updateLocation:(id)location;
- (void)updateVLLocalizationResult:(id)result;
@end

@implementation CMADeviceMotionVisionFusionPlayer

- (CMADeviceMotionVisionFusionPlayer)init
{
  v5.receiver = self;
  v5.super_class = CMADeviceMotionVisionFusionPlayer;
  v2 = [(CMADeviceMotionVisionFusionPlayer *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_fusionEnabled = 1;
    sub_245F1398C("/System/Library/Frameworks/CoreLocation.framework/Support/WMM.dat");
    v3->fMagneticDeclination = 0.0;
    v3->fMagneticDeclinationTimestamp = -1.0;
    operator new();
  }

  return 0;
}

- (void)setEnableFusion:(BOOL)fusion
{
  fusionCopy = fusion;
  v9 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_isPlayerActive(self, a2, fusion))
  {
    if (qword_27EE37500 != -1)
    {
      dispatch_once(&qword_27EE37500, &unk_2858D7280);
    }

    v5 = qword_27EE37508;
    if (os_log_type_enabled(qword_27EE37508, OS_LOG_TYPE_DEFAULT))
    {
      v6 = "disable";
      if (fusionCopy)
      {
        v6 = "enable";
      }

      v7 = 136315138;
      v8 = v6;
      _os_log_impl(&dword_245D80000, v5, OS_LOG_TYPE_DEFAULT, "#warning CMADeviceMotionVisionFusionPlayer, cannot %s fusion while player is active", &v7, 0xCu);
    }
  }

  else
  {
    self->_fusionEnabled = fusionCopy;
  }
}

- (void)start
{
  objc_sync_enter(self);
  if (objc_msgSend_isPlayerActive(self, v3, v4))
  {
    if (qword_27EE37500 != -1)
    {
      dispatch_once(&qword_27EE37500, &unk_2858D7280);
    }

    v7 = qword_27EE37508;
    if (os_log_type_enabled(qword_27EE37508, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_245D80000, v7, OS_LOG_TYPE_DEFAULT, "#warning CMADeviceMotionVisionFusionPlayer, player is already active - nothing to start", v9, 2u);
    }
  }

  else
  {
    objc_msgSend_reset(self, v5, v6);
    objc_msgSend_setPlayerActive_(self, v8, 1);
  }

  objc_sync_exit(self);
}

- (void)stop
{
  objc_sync_enter(self);
  if (objc_msgSend_isPlayerActive(self, v3, v4))
  {
    objc_msgSend_setPlayerActive_(self, v5, 0);
  }

  else
  {
    if (qword_27EE37500 != -1)
    {
      dispatch_once(&qword_27EE37500, &unk_2858D7280);
    }

    v6 = qword_27EE37508;
    if (os_log_type_enabled(qword_27EE37508, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_245D80000, v6, OS_LOG_TYPE_DEFAULT, "#warning CMADeviceMotionVisionFusionPlayer, player is already inactive - nothing to stop", v7, 2u);
    }
  }

  objc_sync_exit(self);
}

- (void)updateARSessionState:(unint64_t)state
{
  objc_sync_enter(self);
  if (objc_msgSend_isPlayerActive(self, v5, v6))
  {
    objc_msgSend_setArSessionActive_(self, v7, state == 1);
  }

  else
  {
    if (qword_27EE37500 != -1)
    {
      dispatch_once(&qword_27EE37500, &unk_2858D7280);
    }

    v8 = qword_27EE37508;
    if (os_log_type_enabled(qword_27EE37508, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_245D80000, v8, OS_LOG_TYPE_DEFAULT, "#warning CMADeviceMotionVisionFusionPlayer, ignoring AR Session State update, player is inactive - need to start the player", v9, 2u);
    }
  }

  objc_sync_exit(self);
}

- (void)updateVLLocalizationResult:(id)result
{
  objc_sync_enter(self);
  if (objc_msgSend_isPlayerActive(self, v5, v6))
  {
    ptr = self->fVLFDeviceMotionFuser.__ptr_;
    if (ptr)
    {
      sub_245F179E0(ptr, result, v7);
      goto LABEL_13;
    }

    if (qword_27EE37500 != -1)
    {
      dispatch_once(&qword_27EE37500, &unk_2858D7280);
    }

    v9 = qword_27EE37508;
    if (os_log_type_enabled(qword_27EE37508, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 0;
      v10 = "#warning CMADeviceMotionVisionFusionPlayer, ignoring VL update, fuser is nil";
      v11 = &v12;
      goto LABEL_12;
    }
  }

  else
  {
    if (qword_27EE37500 != -1)
    {
      dispatch_once(&qword_27EE37500, &unk_2858D7280);
    }

    v9 = qword_27EE37508;
    if (os_log_type_enabled(qword_27EE37508, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 0;
      v10 = "#warning CMADeviceMotionVisionFusionPlayer, ignoring VL update, player is inactive - need to start the player";
      v11 = &v13;
LABEL_12:
      _os_log_impl(&dword_245D80000, v9, OS_LOG_TYPE_DEFAULT, v10, v11, 2u);
    }
  }

LABEL_13:
  objc_sync_exit(self);
}

- (void)updateLocation:(id)location
{
  objc_sync_enter(self);
  if ((objc_msgSend_isPlayerActive(self, v5, v6) & 1) == 0)
  {
    if (qword_27EE37500 != -1)
    {
      dispatch_once(&qword_27EE37500, &unk_2858D7280);
    }

    v28 = qword_27EE37508;
    if (!os_log_type_enabled(qword_27EE37508, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_24;
    }

    *buf = 0;
    v29 = "#warning CMADeviceMotionVisionFusionPlayer, ignoring location update, player is inactive - need to start the player";
LABEL_23:
    _os_log_impl(&dword_245D80000, v28, OS_LOG_TYPE_DEFAULT, v29, buf, 2u);
    goto LABEL_24;
  }

  if (!location)
  {
    if (qword_27EE37500 != -1)
    {
      dispatch_once(&qword_27EE37500, &unk_2858D7280);
    }

    v28 = qword_27EE37508;
    if (!os_log_type_enabled(qword_27EE37508, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_24;
    }

    *buf = 0;
    v29 = "#warning CMADeviceMotionVisionFusionPlayer, ignoring location update, location is nil";
    goto LABEL_23;
  }

  if ((objc_msgSend_isARSessionActive(self, v7, v8) & 1) == 0)
  {
    if (qword_27EE37500 != -1)
    {
      dispatch_once(&qword_27EE37500, &unk_2858D7280);
    }

    v28 = qword_27EE37508;
    if (!os_log_type_enabled(qword_27EE37508, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_24;
    }

    *buf = 0;
    v29 = "#warning CMADeviceMotionVisionFusionPlayer, ignoring location update, AR session is not active";
    goto LABEL_23;
  }

  if (self->fVLFDeviceMotionFuser.__ptr_)
  {
    v11 = objc_msgSend_clientLocation(location, v9, v10);
    v14 = sub_245F1DE2C(v11, v12, v13);
    objc_msgSend_clientLocation(location, v15, v16);
    v17 = v35;
    objc_msgSend_clientLocation(location, v18, v19);
    v20 = v34;
    objc_msgSend_clientLocation(location, v21, v22);
    v23.n128_f64[0] = fmax(v17, 0.0);
    v24 = v23.n128_f64[0];
    v23.n128_f32[0] = v20;
    v25.n128_u32[1] = HIDWORD(v30);
    v25.n128_f32[0] = v30;
    if (!sub_245F139A0(&v31, v23, v25, v24, v14))
    {
      self->fMagneticDeclination = v32;
      objc_msgSend_clientLocation(location, v26, v27);
      self->fMagneticDeclinationTimestamp = v36;
      *(self->fVLFDeviceMotionFuser.__ptr_ + 2) = LODWORD(self->fMagneticDeclination);
    }

    goto LABEL_24;
  }

  if (qword_27EE37500 != -1)
  {
    dispatch_once(&qword_27EE37500, &unk_2858D7280);
  }

  v28 = qword_27EE37508;
  if (os_log_type_enabled(qword_27EE37508, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v29 = "#warning CMADeviceMotionVisionFusionPlayer, ignoring location update, fuser is nil";
    goto LABEL_23;
  }

LABEL_24:
  objc_sync_exit(self);
}

- (id)getFusedDeviceMotionFrom:(id)from andAttitudeReferenceFrame:(unint64_t)frame
{
  objc_sync_enter(self);
  if ((objc_msgSend_isPlayerActive(self, v7, v8) & 1) == 0)
  {
    if (qword_27EE37500 != -1)
    {
      dispatch_once(&qword_27EE37500, &unk_2858D7280);
    }

    v69 = qword_27EE37508;
    if (!os_log_type_enabled(qword_27EE37508, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    *buf = 0;
    v70 = "#warning CMADeviceMotionVisionFusionPlayer, cannot get fused device motion, player is inactive - need to start the player";
    goto LABEL_10;
  }

  if (!objc_msgSend_isFusionEnabled(self, v9, v10))
  {
    goto LABEL_22;
  }

  if (!self->fVLFDeviceMotionFuser.__ptr_)
  {
    if (qword_27EE37500 != -1)
    {
      dispatch_once(&qword_27EE37500, &unk_2858D7280);
    }

    v69 = qword_27EE37508;
    if (!os_log_type_enabled(qword_27EE37508, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    *buf = 0;
    v70 = "#warning CMADeviceMotionVisionFusionPlayer, cannot get fused device motion, fuser is nil";
LABEL_10:
    _os_log_impl(&dword_245D80000, v69, OS_LOG_TYPE_DEFAULT, v70, buf, 2u);
LABEL_11:
    from = 0;
    goto LABEL_22;
  }

  v128 = 0u;
  v127 = 0u;
  v13 = objc_msgSend_attitude(from, v11, v12);
  objc_msgSend_quaternion(v13, v14, v15);
  v17 = v16;
  *buf = v17;
  v20 = objc_msgSend_attitude(from, v18, v19);
  objc_msgSend_quaternion(v20, v21, v22);
  *&v23 = v23;
  v118 = *&v23;
  v26 = objc_msgSend_attitude(from, v24, v25);
  objc_msgSend_quaternion(v26, v27, v28);
  v30 = v29;
  v119 = v30;
  v33 = objc_msgSend_attitude(from, v31, v32);
  objc_msgSend_quaternion(v33, v34, v35);
  v37 = v36;
  v120 = v37;
  objc_msgSend_userAcceleration(from, v38, v39);
  *&v40 = v40;
  v121 = LODWORD(v40);
  objc_msgSend_userAcceleration(from, v41, v42);
  v44 = v43;
  v122 = v44;
  objc_msgSend_userAcceleration(from, v45, v46);
  v48 = v47;
  v123 = v48;
  objc_msgSend_rotationRate(from, v49, v50);
  *&v51 = v51;
  v124 = LODWORD(v51);
  objc_msgSend_rotationRate(from, v52, v53);
  v55 = v54;
  v125 = v55;
  objc_msgSend_rotationRate(from, v56, v57);
  v61 = v60;
  v126 = v61;
  if (from)
  {
    objc_msgSend_magneticField(from, v58, v59);
    v62 = *&v109;
    *&v127 = v62;
    objc_msgSend_magneticField(from, v63, v64);
    v65 = *(&v107 + 1);
    *(&v127 + 1) = v65;
    objc_msgSend_magneticField(from, v66, v67);
    v68 = *&v116;
  }

  else
  {
    v109 = 0u;
    v110 = 0u;
    v107 = 0u;
    v108 = 0u;
    *&v127 = 0;
    v68 = 0.0;
    v115 = 0u;
    v116 = 0u;
  }

  *(&v127 + 2) = v68;
  HIDWORD(v127) = objc_msgSend_magneticFieldCalibrationLevel(from, v58, v59, v107, *(&v107 + 1), v108);
  LOBYTE(v128) = objc_msgSend_doingYawCorrection(from, v71, v72);
  BYTE1(v128) = objc_msgSend_doingBiasEstimation(from, v73, v74);
  BYTE2(v128) = 1;
  objc_msgSend_heading(from, v75, v76);
  *&v77 = v77;
  DWORD1(v128) = LODWORD(v77);
  BYTE8(v128) = objc_msgSend_fusedWithVision(from, v78, v79);
  BYTE9(v128) = objc_msgSend_usingVisionCorrections(from, v80, v81);
  HIDWORD(v128) = 0;
  if (frame == 8)
  {
    sub_245F214A4(buf, self->fMagneticDeclination, self->fMagneticDeclinationTimestamp);
  }

  ptr = self->fVLFDeviceMotionFuser.__ptr_;
  objc_msgSend_headingAccuracy(from, v82, v83);
  v86 = v85;
  objc_msgSend_timestamp(from, v87, v88);
  v90 = v89;
  *&v89 = v86;
  sub_245F17554(ptr, buf, *&v89, v90);
  v93 = self->fVLFDeviceMotionFuser.__ptr_;
  v94 = *(v93 + 1);
  v95 = *(v93 + 2);
  v96 = *(v93 + 3);
  v97 = *(v93 + 5);
  v112 = *(v93 + 4);
  v113 = v97;
  v114 = *(v93 + 12);
  v110 = v95;
  v111 = v96;
  v109 = v94;
  if (frame == 8)
  {
    sub_245F21380(&v109, self->fMagneticDeclination, self->fMagneticDeclinationTimestamp);
  }

  objc_msgSend_headingAccuracy(from, v91, v92);
  v99 = v98;
  v100 = objc_alloc(MEMORY[0x277CC1C70]);
  objc_msgSend_timestamp(from, v101, v102, v109, v110, v111, v112, v113, v114);
  v104 = v103;
  *&v103 = v99;
  from = objc_msgSend_initWithDeviceMotion_internal_timestamp_(v100, v105, &v107, v103, 0.0, 0.0, 0.0, v104);
LABEL_22:
  objc_sync_exit(self);
  return from;
}

- (void)reset
{
  ptr = self->fVLFDeviceMotionFuser.__ptr_;
  if (ptr)
  {
    sub_245F174F0(ptr);
  }

  self->fMagneticDeclination = 0.0;
  self->fMagneticDeclinationTimestamp = -1.0;
}

@end