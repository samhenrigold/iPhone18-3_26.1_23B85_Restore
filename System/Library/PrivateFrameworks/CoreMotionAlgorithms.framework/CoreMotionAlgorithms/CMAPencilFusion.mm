@interface CMAPencilFusion
- (BOOL)startPencilFusionUpdatesToQueue:(id)queue withHandler:(id)handler;
- (CMAPencilFusion)init;
- (CMAPencilFusionResult)currentEstimation;
- (void)dealloc;
- (void)flushMSL;
- (void)logHostDeviceMotionQuaternion:(__n128)quaternion rotationRate:(__n128)rate acceleration:(double)acceleration timestamp:;
- (void)logPencilDeviceMotionQuaternion:(__n128)quaternion rotationRate:(__n128)rate acceleration:(__n128)acceleration gyroBias:(double)bias temperatureGyroBias:(uint64_t)gyroBias temperatureGyro:(int)gyro status:(int)status sensorTime:(int)self0 timestamp:(uint64_t)self1;
- (void)logPencilFusionResult:(id)result;
- (void)logTouchAltitudeAngle:(float)angle altitudeAngleConfidence:(float)confidence azimuthAngle:(float)azimuthAngle azimuthAngleConfidence:(float)angleConfidence position:(float)position positionConfidence:(double)positionConfidence timestamp:;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)readUserDefaults;
- (void)sendPencilStatistics;
- (void)setMslEnabled:(BOOL)enabled;
- (void)setPreciseTipPositionLoggingEnabled:(BOOL)enabled;
- (void)startUserDefaults;
- (void)stopPencilFusionUpdates;
- (void)stopPencilFusionUpdatesPrivate;
- (void)stopUserDefaults;
- (void)updateEstimationsWithRealValuesWithQuaternion:(CMOQuaternion)quaternion timestamp:(double)timestamp;
- (void)updateHostDeviceMotionQuaternion:(__n128)quaternion rotationRate:(__n128)rate acceleration:(double)acceleration timestamp:;
- (void)updatePencilDeviceMotionPayload:(id)payload;
- (void)updateTouchAltitudeAngle:(float)angle altitudeAngleConfidence:(float)confidence azimuthAngle:(float)azimuthAngle azimuthAngleConfidence:(float)angleConfidence position:(float)position positionConfidence:(double)positionConfidence timestamp:;
@end

@implementation CMAPencilFusion

- (CMAPencilFusion)init
{
  v5 = *MEMORY[0x277D85DE8];
  v4.receiver = self;
  v4.super_class = CMAPencilFusion;
  v2 = [(CMAPencilFusion *)&v4 init];
  if (v2)
  {
    v2->_queue = dispatch_queue_create("CMAPencilFusion", 0);
    v2->_estimations = objc_opt_new();
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CMAPencilFusion;
  [(CMAPencilFusion *)&v3 dealloc];
}

- (BOOL)startPencilFusionUpdatesToQueue:(id)queue withHandler:(id)handler
{
  if (qword_27EE374F0 != -1)
  {
    dispatch_once(&qword_27EE374F0, &unk_2858D72A0);
  }

  v7 = qword_27EE374F8;
  if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_245D80000, v7, OS_LOG_TYPE_DEFAULT, "startPencilFusionUpdatesToQueue:withHandler:", buf, 2u);
  }

  objc_msgSend_startUserDefaults(self, v8, v9);
  v12 = objc_msgSend_queue(self, v10, v11);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_245F26298;
  block[3] = &unk_278E97130;
  block[4] = self;
  block[5] = queue;
  block[6] = handler;
  dispatch_sync(v12, block);
  return objc_msgSend_isRunning(self, v13, v14);
}

- (void)stopPencilFusionUpdates
{
  if (qword_27EE374F0 != -1)
  {
    dispatch_once(&qword_27EE374F0, &unk_2858D72A0);
  }

  v3 = qword_27EE374F8;
  if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_245D80000, v3, OS_LOG_TYPE_DEFAULT, "stopPencilFusionUpdates", buf, 2u);
  }

  v6 = objc_msgSend_queue(self, v4, v5);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_245F26414;
  block[3] = &unk_278E97158;
  block[4] = self;
  dispatch_sync(v6, block);
  objc_msgSend_stopUserDefaults(self, v7, v8);
  objc_msgSend_flushMSL(self, v9, v10);
}

- (void)stopPencilFusionUpdatesPrivate
{
  v4 = objc_msgSend_queue(self, a2, v2);
  dispatch_assert_queue_V2(v4);
  if (objc_msgSend_isRunning(self, v5, v6))
  {
    v9 = objc_msgSend_estimations(self, v7, v8);
    objc_msgSend_removeAllObjects(v9, v10, v11);
    objc_msgSend_setRunning_(self, v12, 0);
    objc_msgSend_setHandler_(self, v13, 0);
    objc_msgSend_setHandlerQueue_(self, v14, 0);
    objc_msgSend_sendPencilStatistics(self, v15, v16);
    sub_245F123C0(self->_barrelRollService.__ptr_);
    ptr = self->_barrelRollService.__ptr_;

    sub_245F105F4(ptr);
  }
}

- (CMAPencilFusionResult)currentEstimation
{
  v20 = *MEMORY[0x277D85DE8];
  v12 = 0;
  v13 = &v12;
  v14 = 0x3052000000;
  v15 = sub_245F2664C;
  v16 = sub_245F2665C;
  v17 = 0;
  v4 = objc_msgSend_queue(self, a2, v2);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_245F26668;
  v11[3] = &unk_278E97180;
  v11[4] = self;
  v11[5] = &v12;
  dispatch_sync(v4, v11);
  if (objc_msgSend_verboseLoggingEnabled(self, v5, v6))
  {
    if (qword_27EE374F0 != -1)
    {
      dispatch_once(&qword_27EE374F0, &unk_2858D72A0);
    }

    v7 = qword_27EE374F8;
    if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEBUG))
    {
      v8 = v13[5];
      *buf = 138543362;
      v19 = v8;
      _os_log_impl(&dword_245D80000, v7, OS_LOG_TYPE_DEBUG, "Pulled estimated angles, %{public}@", buf, 0xCu);
    }
  }

  v9 = v13[5];
  _Block_object_dispose(&v12, 8);
  return v9;
}

- (void)updateTouchAltitudeAngle:(float)angle altitudeAngleConfidence:(float)confidence azimuthAngle:(float)azimuthAngle azimuthAngleConfidence:(float)angleConfidence position:(float)position positionConfidence:(double)positionConfidence timestamp:
{
  v10 = v9;
  v11 = *&positionConfidence;
  v21 = *&position;
  v49 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_verboseLoggingEnabled(self, a2, v8))
  {
    if (qword_27EE374F0 != -1)
    {
      dispatch_once(&qword_27EE374F0, &unk_2858D72A0);
    }

    v19 = qword_27EE374F8;
    if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134351104;
      v32 = (angle * 57.296);
      v33 = 2050;
      confidenceCopy = confidence;
      v35 = 2050;
      v36 = (azimuthAngle * 57.296);
      v37 = 2050;
      angleConfidenceCopy = angleConfidence;
      v39 = 2050;
      v40 = (floorf(*&v21 / 15.0) * 15.0);
      v41 = 2050;
      v42 = (floorf(*(&v21 + 1) / 15.0) * 15.0);
      v43 = 2050;
      v44 = *(&v21 + 2);
      v45 = 2050;
      v46 = v11;
      v47 = 2050;
      v48 = v10;
      _os_log_impl(&dword_245D80000, v19, OS_LOG_TYPE_DEBUG, "updateTouchAltitudeAngle:%{public}.1f altitudeAngleConfidence:%{public}.2f azimuthAngle:%{public}.1f azimuthAngleConfidence:%{public}.2f position:[%{public}.1f, %{public}.1f, %{public}.1f] positionConfidence:%{public}.2f timestamp:%{public}f", buf, 0x5Cu);
    }
  }

  v20 = objc_msgSend_queue(self, v17, v18);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_245F268C4;
  block[3] = &unk_278E971A8;
  selfCopy = self;
  angleCopy = angle;
  confidenceCopy2 = confidence;
  azimuthAngleCopy = azimuthAngle;
  angleConfidenceCopy2 = angleConfidence;
  v23 = v21;
  v30 = v11;
  v25 = v10;
  dispatch_async(v20, block);
}

- (void)updatePencilDeviceMotionPayload:(id)payload
{
  v90 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_length(payload, a2, payload) == 43)
  {
    v53[47] = 0;
    *&v53[43] = 0;
  }

  else if (objc_msgSend_length(payload, v5, v6) != 48)
  {
    if (objc_msgSend_verboseLoggingEnabled(self, v5, v7))
    {
      if (qword_27EE374F0 != -1)
      {
        dispatch_once(&qword_27EE374F0, &unk_2858D72A0);
      }

      v15 = qword_27EE374F8;
      if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134349312;
        v55 = COERCE_DOUBLE(objc_msgSend_length(payload, v16, v17));
        v56 = 2050;
        v57 = 48;
        v12 = "updateHostDeviceMotionQuaternion: packet size %{public}zd != expected %{public}zd";
        v13 = v15;
        v14 = 22;
        goto LABEL_22;
      }
    }

    return;
  }

  objc_msgSend_getBytes_length_(payload, v5, v53, 48);
  if (v53[0] == 136)
  {
    if (v53[13] - 135 > 0xFFFFFFFD)
    {
      v10.f32[0] = *&v53[23];
      v10.f32[1] = *&v53[25];
      v10.f32[2] = *&v53[27];
      v18.i64[0] = 0x3800000038000000;
      v18.i64[1] = 0x3800000038000000;
      v19 = vmulq_f32(v10, v18);
      v20 = vmulq_f32(v19, v19);
      v33 = sqrtf(1.0 - (v20.f32[2] + vaddv_f32(*v20.f32)));
      v34 = v19;
      v21 = v19;
      v21.f32[3] = v33;
      v35 = v21;
      v21.f32[0] = *&v53[29];
      v21.f32[1] = *&v53[31];
      v21.f32[2] = *&v53[33];
      v18.i64[0] = 0x3B0000003B000000;
      v18.i64[1] = 0x3B0000003B000000;
      v19.f32[0] = *&v53[35];
      v22 = vmulq_f32(v21, v18);
      v19.f32[1] = *&v53[37];
      v19.f32[2] = *&v53[39];
      v21.i64[0] = 0x3A0000003A000000;
      v21.i64[1] = 0x3A0000003A000000;
      v23 = vmulq_f32(v19, v21);
      v37 = v23;
      v38 = v22;
      v24 = *&v53[41];
      v25 = *&v53[15];
      v26 = *&v53[5] * 0.000001;
      v23.f32[0] = v53[43];
      v23.f32[1] = v53[44];
      v23.f32[2] = v53[45];
      v36 = vmulq_f32(v23, vdupq_n_s32(0x3C800000u));
      v27 = v53[46];
      v28 = v53[47];
      if (objc_msgSend_verboseLoggingEnabled(self, v8, v9))
      {
        if (qword_27EE374F0 != -1)
        {
          dispatch_once(&qword_27EE374F0, &unk_2858D72A0);
        }

        v31 = qword_27EE374F8;
        if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134353408;
          v55 = v34.f32[0];
          v56 = 2050;
          *&v57 = v34.f32[1];
          v58 = 2050;
          v59 = v34.f32[2];
          v60 = 2050;
          v61 = v33;
          v62 = 2050;
          v63 = v38.f32[0];
          v64 = 2050;
          v65 = v38.f32[1];
          v66 = 2050;
          v67 = v38.f32[2];
          v68 = 2050;
          v69 = v37.f32[0];
          v70 = 2050;
          v71 = v37.f32[1];
          v72 = 2050;
          v73 = v37.f32[2];
          v74 = 2050;
          v75 = v36.f32[0];
          v76 = 2050;
          v77 = v36.f32[1];
          v78 = 2050;
          v79 = v36.f32[2];
          v80 = 2050;
          v81 = v27;
          v82 = 2050;
          v83 = v28;
          v84 = 1026;
          v85 = v24;
          v86 = 2050;
          v87 = v25;
          v88 = 2050;
          v89 = v26;
          _os_log_impl(&dword_245D80000, v31, OS_LOG_TYPE_DEBUG, "updatePencilDeviceMotionPayload:[%{public}f, %{public}f, %{public}f, %{public}f] rotationRate:[%{public}f, %{public}f, %{public}f]  acceleration:[%{public}f, %{public}f, %{public}f] gyroBias:[%{public}f, %{public}f, %{public}f] temperatureGyroBias:%{public}f temperatureGyro:%{public}f status:0x%{public}.4x timestamp:%{public}llu timestamp:%{public}f", buf, 0xB2u);
        }
      }

      v32 = objc_msgSend_queue(self, v29, v30);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      v50 = *v53;
      block[2] = sub_245F27010;
      block[3] = &unk_278E971D0;
      v51 = *&v53[16];
      v52 = *&v53[32];
      v40 = v38;
      v41 = v35;
      v42 = v37;
      v43 = v36;
      v47 = v27;
      v48 = v28;
      v49 = v24;
      selfCopy = self;
      v45 = v25;
      v46 = v26;
      dispatch_async(v32, block);
    }

    else if (objc_msgSend_verboseLoggingEnabled(self, v8, v9))
    {
      if (qword_27EE374F0 != -1)
      {
        dispatch_once(&qword_27EE374F0, &unk_2858D72A0);
      }

      v11 = qword_27EE374F8;
      if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        v12 = "updateHostDeviceMotionQuaternion: unknown data type";
LABEL_16:
        v13 = v11;
        v14 = 2;
LABEL_22:
        _os_log_impl(&dword_245D80000, v13, OS_LOG_TYPE_DEBUG, v12, buf, v14);
      }
    }
  }

  else if (objc_msgSend_verboseLoggingEnabled(self, v8, v9))
  {
    if (qword_27EE374F0 != -1)
    {
      dispatch_once(&qword_27EE374F0, &unk_2858D72A0);
    }

    v11 = qword_27EE374F8;
    if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      v12 = "updateHostDeviceMotionQuaternion: unknown packet report ID";
      goto LABEL_16;
    }
  }
}

- (void)updateHostDeviceMotionQuaternion:(__n128)quaternion rotationRate:(__n128)rate acceleration:(double)acceleration timestamp:
{
  v44 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_verboseLoggingEnabled(self, v5, v6))
  {
    if (qword_27EE374F0 != -1)
    {
      dispatch_once(&qword_27EE374F0, &unk_2858D72A0);
    }

    v11 = qword_27EE374F8;
    if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134351616;
      v23 = a2.n128_f32[0];
      v24 = 2050;
      v25 = a2.n128_f32[1];
      v26 = 2050;
      v27 = a2.n128_f32[2];
      v28 = 2050;
      v29 = a2.n128_f32[3];
      v30 = 2050;
      v31 = quaternion.n128_f32[0];
      v32 = 2050;
      v33 = quaternion.n128_f32[1];
      v34 = 2050;
      v35 = quaternion.n128_f32[2];
      v36 = 2050;
      v37 = rate.n128_f32[0];
      v38 = 2050;
      v39 = rate.n128_f32[1];
      v40 = 2050;
      v41 = rate.n128_f32[2];
      v42 = 2050;
      accelerationCopy = acceleration;
      _os_log_impl(&dword_245D80000, v11, OS_LOG_TYPE_DEBUG, "updateHostDeviceMotionQuaternion:[%{public}f, %{public}f, %{public}f, %{public}f] rotationRate:[%{public}f, %{public}f, %{public}f]  acceleration:[%{public}f, %{public}f, %{public}f] timestamp:%{public}f", buf, 0x70u);
    }
  }

  v12 = objc_msgSend_queue(self, v9, v10);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_245F27308;
  block[3] = &unk_278E971F8;
  selfCopy = self;
  accelerationCopy2 = acceleration;
  v17 = a2;
  quaternionCopy = quaternion;
  rateCopy = rate;
  dispatch_async(v12, block);
}

- (void)updateEstimationsWithRealValuesWithQuaternion:(CMOQuaternion)quaternion timestamp:(double)timestamp
{
  v89 = *MEMORY[0x277D85DE8];
  v78 = *quaternion.var0;
  v79 = quaternion.var0[2];
  v80 = quaternion.var0[3];
  v7 = objc_msgSend_queue(self, a2, v4);
  dispatch_assert_queue_V2(v7);
  *buf = sub_245F24A60(&v78, v8, v9);
  timestampCopy2 = COERCE_DOUBLE(__PAIR64__(v11, v10));
  *v84 = v12;
  v13 = sub_245F0F554(buf);
  v15 = v14;
  v17 = v16;
  if (objc_msgSend_verboseLoggingEnabled(self, v18, v19))
  {
    if (qword_27EE374F0 != -1)
    {
      dispatch_once(&qword_27EE374F0, &unk_2858D72A0);
    }

    v22 = qword_27EE374F8;
    if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349824;
      timestampCopy2 = (v13 * 57.296);
      *v84 = 2050;
      *&v84[2] = (v15 * 57.296);
      v85 = 2050;
      v86 = (v17 * 57.296);
      v87 = 2050;
      timestampCopy = timestamp;
      _os_log_impl(&dword_245D80000, v22, OS_LOG_TYPE_DEBUG, "updateEstimationsWithRealValuesWithQuaternion angles:[%{public}.1f, %{public}.1f, %{public}.1f] timestamp:%{public}.3f", buf, 0x2Au);
    }
  }

  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v23 = objc_msgSend_estimations(self, v20, v21);
  v26 = objc_msgSend_copy(v23, v24, v25);
  v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v27, &v74, v81, 16);
  if (v28)
  {
    v32 = v28;
    v33 = *v75;
    *&v31 = 134349056;
    v72 = v31;
    while (2)
    {
      v34 = 0;
      do
      {
        if (*v75 != v33)
        {
          objc_enumerationMutation(v26);
        }

        v35 = *(*(&v74 + 1) + 8 * v34);
        objc_msgSend_timestamp(v35, v29, v30, v72);
        if (v38 >= timestamp + -0.001)
        {
          objc_msgSend_timestamp(v35, v36, v37);
          if (v47 <= timestamp + 0.001)
          {
            v49 = COERCE_DOUBLE(objc_msgSend_copy(v35, v45, v46));
            objc_msgSend_setEstimated_(*&v49, v50, 0);
            *&v51 = v13;
            objc_msgSend_setAltitudeAngle_(*&v49, v52, v53, v51);
            *&v54 = v15;
            objc_msgSend_setAzimuthAngle_(*&v49, v55, v56, v54);
            *&v57 = v17;
            objc_msgSend_setRollAngle_(*&v49, v58, v59, v57);
            if (objc_msgSend_mslEnabled(self, v60, v61))
            {
              objc_msgSend_logPencilFusionResult_(self, v62, *&v49);
            }

            if (objc_msgSend_verboseLoggingEnabled(self, v62, v63))
            {
              if (qword_27EE374F0 != -1)
              {
                dispatch_once(&qword_27EE374F0, &unk_2858D72A0);
              }

              v66 = qword_27EE374F8;
              if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138543362;
                timestampCopy2 = v49;
                _os_log_impl(&dword_245D80000, v66, OS_LOG_TYPE_DEBUG, "Pushing real angles, %{public}@", buf, 0xCu);
              }
            }

            v67 = objc_msgSend_handlerQueue(self, v64, v65);
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = sub_245F27870;
            block[3] = &unk_278E97220;
            block[4] = self;
            *&block[5] = v49;
            dispatch_async(v67, block);

            v70 = objc_msgSend_estimations(self, v68, v69);
            objc_msgSend_removeObject_(v70, v71, v35);
          }

          else
          {
            if (qword_27EE374F0 != -1)
            {
              dispatch_once(&qword_27EE374F0, &unk_2858D72A0);
            }

            v48 = qword_27EE374F8;
            if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEBUG))
            {
              *buf = v72;
              timestampCopy2 = timestamp;
              _os_log_impl(&dword_245D80000, v48, OS_LOG_TYPE_DEBUG, "Received real angles for timestamp %{public}.3f without corresponding estimation", buf, 0xCu);
            }
          }

          return;
        }

        if (qword_27EE374F0 != -1)
        {
          dispatch_once(&qword_27EE374F0, &unk_2858D72A0);
        }

        v39 = qword_27EE374F8;
        if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEBUG))
        {
          objc_msgSend_timestamp(v35, v40, v41);
          *buf = v72;
          timestampCopy2 = v42;
          _os_log_impl(&dword_245D80000, v39, OS_LOG_TYPE_DEBUG, "Missing real angles for timestamp %{public}.3f", buf, 0xCu);
        }

        v43 = objc_msgSend_estimations(self, v40, v41);
        objc_msgSend_removeObject_(v43, v44, v35);
        ++v34;
      }

      while (v32 != v34);
      v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v29, &v74, v81, 16);
      if (v32)
      {
        continue;
      }

      break;
    }
  }
}

- (void)startUserDefaults
{
  if (!objc_msgSend_defaults(self, a2, v2))
  {
    v4 = objc_alloc(MEMORY[0x277CBEBD0]);
    v6 = objc_msgSend_initWithSuiteName_(v4, v5, @"com.apple.CoreMotionAlgorithms.PencilFusion");
    objc_msgSend_setDefaults_(self, v7, v6);
    for (i = 0; i != 3; ++i)
    {
      v11 = off_278E97240[i];
      v12 = objc_msgSend_defaults(self, v8, v9);
      v15 = objc_msgSend_defaults(self, v13, v14);
      objc_msgSend_addObserver_forKeyPath_options_context_(v12, v16, self, v11, 1, v15);
    }

    MEMORY[0x2821F9670](self, sel_readUserDefaults, v9);
  }
}

- (void)stopUserDefaults
{
  if (objc_msgSend_defaults(self, a2, v2))
  {
    for (i = 0; i != 3; ++i)
    {
      v7 = off_278E97240[i];
      v8 = objc_msgSend_defaults(self, v4, v5);
      objc_msgSend_removeObserver_forKeyPath_(v8, v9, self, v7);
    }

    objc_msgSend_setDefaults_(self, v4, 0);
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (objc_msgSend_defaults(self, a2, path) == context)
  {

    MEMORY[0x2821F9670](self, sel_readUserDefaults, v11);
  }

  else
  {
    v12.receiver = self;
    v12.super_class = CMAPencilFusion;
    [(CMAPencilFusion *)&v12 observeValueForKeyPath:path ofObject:object change:change context:context];
  }
}

- (void)readUserDefaults
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_defaults(self, a2, v2);
  v6 = objc_msgSend_BOOLForKey_(v4, v5, @"VerboseLoggingEnabled");
  objc_msgSend_setVerboseLoggingEnabled_(self, v7, v6);
  v10 = objc_msgSend_defaults(self, v8, v9);
  v12 = objc_msgSend_BOOLForKey_(v10, v11, @"MSLEnabled");
  objc_msgSend_setMslEnabled_(self, v13, v12);
  v16 = objc_msgSend_defaults(self, v14, v15);
  v18 = objc_msgSend_BOOLForKey_(v16, v17, @"PreciseTipPositionLoggingEnabled");
  objc_msgSend_setPreciseTipPositionLoggingEnabled_(self, v19, v18);
  if (qword_27EE374F0 != -1)
  {
    dispatch_once(&qword_27EE374F0, &unk_2858D72A0);
  }

  v20 = qword_27EE374F8;
  if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEFAULT))
  {
    v25[0] = 67240448;
    v25[1] = objc_msgSend_verboseLoggingEnabled(self, v21, v22);
    v26 = 1026;
    v27 = objc_msgSend_mslEnabled(self, v23, v24);
    _os_log_impl(&dword_245D80000, v20, OS_LOG_TYPE_DEFAULT, "verboseLoggingEnabled: %{public}d, mslEnabled: %{public}d", v25, 0xEu);
  }
}

- (void)logPencilFusionResult:(id)result
{
  v5 = objc_msgSend_queue(self, a2, result);
  dispatch_assert_queue_V2(v5);
  sub_245E55178(v53);
  sub_245E7A578(v53);
  v6 = v54;
  objc_msgSend_timestamp(result, v7, v8);
  *(v6 + 76) |= 0x10u;
  *(v6 + 40) = v9;
  v10 = v54;
  if (objc_msgSend_preciseTipPositionLoggingEnabled(self, v11, v12))
  {
    objc_msgSend_position(result, v13, v14);
  }

  else
  {
    objc_msgSend_position(result, v13, v14);
    v17 = floorf(v18 / 15.0) * 15.0;
  }

  *(v10 + 76) |= 0x20u;
  *(v10 + 48) = v17;
  v19 = v54;
  if (objc_msgSend_preciseTipPositionLoggingEnabled(self, v15, v16))
  {
    objc_msgSend_position(result, v20, v21);
    v25 = v24;
  }

  else
  {
    objc_msgSend_position(result, v20, v21);
    v25 = floorf(v26 / 15.0) * 15.0;
  }

  *(v19 + 76) |= 0x40u;
  *(v19 + 56) = v25;
  v27 = v54;
  objc_msgSend_position(result, v22, v23);
  *(v27 + 76) |= 0x80u;
  *(v27 + 64) = v28;
  v29 = v54;
  objc_msgSend_altitudeAngle(result, v30, v31);
  *(v29 + 76) |= 1u;
  *(v29 + 8) = v32;
  v33 = v54;
  objc_msgSend_azimuthAngle(result, v34, v35);
  *(v33 + 76) |= 2u;
  *(v33 + 16) = v36;
  v37 = v54;
  objc_msgSend_rollAngle(result, v38, v39);
  *(v37 + 76) |= 8u;
  *(v37 + 32) = v40;
  v41 = v54;
  updated = objc_msgSend_estimationUpdateIndex(result, v42, v43);
  v47 = objc_msgSend_unsignedLongLongValue(updated, v45, v46);
  *(v41 + 76) |= 4u;
  *(v41 + 24) = v47;
  v48 = v54;
  v51 = objc_msgSend_estimated(result, v49, v50);
  *(v48 + 76) |= 0x100u;
  *(v48 + 72) = v51;
  sub_245F21790(v53, v52);
  sub_245E5ADCC(v53);
}

- (void)logTouchAltitudeAngle:(float)angle altitudeAngleConfidence:(float)confidence azimuthAngle:(float)azimuthAngle azimuthAngleConfidence:(float)angleConfidence position:(float)position positionConfidence:(double)positionConfidence timestamp:
{
  v10 = v9;
  v11 = *&positionConfidence;
  v36 = *&position;
  v17 = objc_msgSend_queue(self, a2, v8);
  dispatch_assert_queue_V2(v17);
  sub_245E55178(v37);
  sub_245E7A458(v37);
  v18 = v38;
  *(v38 + 88) |= 0x20u;
  *(v18 + 48) = v10;
  v19 = v38;
  v22 = objc_msgSend_preciseTipPositionLoggingEnabled(self, v20, v21);
  v25 = *&v36;
  if ((v22 & 1) == 0)
  {
    v25 = floorf(*&v36 / 15.0) * 15.0;
  }

  *(v19 + 88) |= 0x40u;
  *(v19 + 56) = v25;
  v26 = v38;
  v27 = objc_msgSend_preciseTipPositionLoggingEnabled(self, v23, v24);
  v29 = *(&v36 + 1);
  if ((v27 & 1) == 0)
  {
    v29 = floorf(*(&v36 + 1) / 15.0) * 15.0;
  }

  *(v26 + 88) |= 0x80u;
  *(v26 + 64) = v29;
  v30 = v38;
  *(v38 + 88) |= 0x100u;
  *(v30 + 72) = *(&v36 + 2);
  v31 = v38;
  *(v38 + 88) |= 1u;
  *(v31 + 8) = angle;
  v32 = v38;
  *(v38 + 88) |= 4u;
  *(v32 + 24) = azimuthAngle;
  v33 = v38;
  *(v38 + 88) |= 2u;
  *(v33 + 16) = confidence;
  v34 = v38;
  *(v38 + 88) |= 8u;
  *(v34 + 32) = angleConfidence;
  v35 = v38;
  *(v38 + 88) |= 0x10u;
  *(v35 + 40) = v11;
  sub_245F21790(v37, v28);
  sub_245E5ADCC(v37);
}

- (void)logPencilDeviceMotionQuaternion:(__n128)quaternion rotationRate:(__n128)rate acceleration:(__n128)acceleration gyroBias:(double)bias temperatureGyroBias:(uint64_t)gyroBias temperatureGyro:(int)gyro status:(int)status sensorTime:(int)self0 timestamp:(uint64_t)self1
{
  v16 = objc_msgSend_queue(self, gyroBias, *&gyro);
  dispatch_assert_queue_V2(v16);
  sub_245E55178(v38);
  sub_245E7A4E8(v38);
  sub_245EED410(v39);
  v17 = v39[4];
  *(v17 + 152) |= 2u;
  v17[17] = bias;
  v18 = v39[4];
  v37 = a2.n128_u32[0];
  sub_245F1E970(v18 + 7, &v37);
  v19 = v39[4];
  v37 = a2.n128_i32[1];
  sub_245F1E970(v19 + 7, &v37);
  v20 = v39[4];
  v37 = a2.n128_i32[2];
  sub_245F1E970(v20 + 7, &v37);
  v21 = v39[4];
  v37 = a2.n128_i32[3];
  sub_245F1E970(v21 + 7, &v37);
  v22 = v39[4];
  v37 = rate.n128_u32[0];
  sub_245F1E970(v22 + 13, &v37);
  v23 = v39[4];
  v37 = rate.n128_i32[1];
  sub_245F1E970(v23 + 13, &v37);
  v24 = v39[4];
  v37 = rate.n128_i32[2];
  sub_245F1E970(v24 + 13, &v37);
  v25 = v39[4];
  v37 = quaternion.n128_u32[0];
  sub_245F1E970(v25 + 10, &v37);
  v26 = v39[4];
  v37 = quaternion.n128_i32[1];
  sub_245F1E970(v26 + 10, &v37);
  v27 = v39[4];
  v37 = quaternion.n128_i32[2];
  sub_245F1E970(v27 + 10, &v37);
  v37 = acceleration.n128_u32[0];
  sub_245F1E970(v39 + 1, &v37);
  v37 = acceleration.n128_i32[1];
  sub_245F1E970(v39 + 1, &v37);
  v37 = acceleration.n128_i32[2];
  sub_245F1E970(v39 + 1, &v37);
  v28 = v39;
  *(v39 + 48) |= 2u;
  *(v28 + 11) = gyro;
  v29 = v39;
  *(v39 + 48) |= 1u;
  *(v29 + 10) = status;
  v30 = v39[4];
  v30[152] |= 4u;
  *(v30 + 36) = time;
  v31 = v39[4];
  v31[152] |= 1u;
  *(v31 + 16) = timestamp;
  sub_245F21790(v38, v32);
  sub_245E5ADCC(v38);
}

- (void)logHostDeviceMotionQuaternion:(__n128)quaternion rotationRate:(__n128)rate acceleration:(double)acceleration timestamp:
{
  v8 = objc_msgSend_queue(self, v5, v6);
  dispatch_assert_queue_V2(v8);
  sub_245E55178(v24);
  sub_245E7A608(v24);
  v9 = v25;
  *(v25 + 124) |= 0x10u;
  *(v9 + 40) = acceleration;
  v10 = v25;
  *(v25 + 124) |= 2u;
  *(v10 + 16) = a2.n128_f32[0];
  v11 = v25;
  *(v25 + 124) |= 4u;
  *(v11 + 24) = a2.n128_f32[1];
  v12 = v25;
  *(v25 + 124) |= 8u;
  *(v12 + 32) = a2.n128_f32[2];
  v13 = v25;
  *(v25 + 124) |= 1u;
  *(v13 + 8) = a2.n128_f32[3];
  v14 = v25;
  *(v25 + 124) |= 0x40000u;
  *(v14 + 100) = rate.n128_u32[0];
  v15 = v25;
  *(v25 + 124) |= 0x80000u;
  *(v15 + 104) = rate.n128_u32[1];
  v16 = v25;
  *(v25 + 124) |= 0x100000u;
  *(v16 + 108) = rate.n128_u32[2];
  v17 = v25;
  *(v25 + 124) |= 0x2000u;
  *(v17 + 80) = quaternion.n128_u32[0];
  v18 = v25;
  *(v25 + 124) |= 0x4000u;
  *(v18 + 84) = quaternion.n128_u32[1];
  v19 = v25;
  *(v25 + 124) |= 0x8000u;
  *(v19 + 88) = quaternion.n128_u32[2];
  sub_245F21790(v24, v20);
  sub_245E5ADCC(v24);
}

- (void)setMslEnabled:(BOOL)enabled
{
  if (!enabled)
  {
    objc_msgSend_flushMSL(self, a2, enabled);
  }

  self->_mslEnabled = enabled;
}

- (void)flushMSL
{
  if (objc_msgSend_mslEnabled(self, a2, v2))
  {
    if (qword_27EE374F0 != -1)
    {
      dispatch_once(&qword_27EE374F0, &unk_2858D72A0);
    }

    v3 = qword_27EE374F8;
    v4 = os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEBUG);
    if (v4)
    {
      *v7 = 0;
      _os_log_impl(&dword_245D80000, v3, OS_LOG_TYPE_DEBUG, "Flushing MSL", v7, 2u);
    }

    v6 = sub_245F2163C(v4, v5);
    sub_245DFA37C(v6);
  }
}

- (void)setPreciseTipPositionLoggingEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v9 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_preciseTipPositionLoggingEnabled(self, a2, enabled) != enabled)
  {
    self->_preciseTipPositionLoggingEnabled = enabledCopy;
    if (qword_27EE374F0 != -1)
    {
      dispatch_once(&qword_27EE374F0, &unk_2858D72A0);
    }

    v5 = qword_27EE374F8;
    if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEBUG))
    {
      v8[0] = 67109120;
      v8[1] = enabledCopy;
      _os_log_impl(&dword_245D80000, v5, OS_LOG_TYPE_DEBUG, "[BarrelRoll]:[CMAPencilFusion] Setting preciseTipPositionLoggingEnabled to %d", v8, 8u);
      if (enabledCopy)
      {
        if (qword_27EE374F0 != -1)
        {
          dispatch_once(&qword_27EE374F0, &unk_2858D72A0);
        }

        goto LABEL_9;
      }

      if (qword_27EE374F0 != -1)
      {
        dispatch_once(&qword_27EE374F0, &unk_2858D72A0);
      }
    }

    else if (enabledCopy)
    {
LABEL_9:
      v6 = qword_27EE374F8;
      if (!os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEBUG))
      {
        return;
      }

      LOWORD(v8[0]) = 0;
      v7 = "[BarrelRoll]:[CMAPencilFusion] Logging pencil tip position in full input precision in accordance with the associated user defaults setting.";
LABEL_15:
      _os_log_impl(&dword_245D80000, v6, OS_LOG_TYPE_DEBUG, v7, v8, 2u);
      return;
    }

    v6 = qword_27EE374F8;
    if (!os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEBUG))
    {
      return;
    }

    LOWORD(v8[0]) = 0;
    v7 = "[BarrelRoll]:[CMAPencilFusion] Logging pencil tip position in quantized  precision in accordance with the associated user defaults setting.";
    goto LABEL_15;
  }
}

- (void)sendPencilStatistics
{
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  memset(v16, 0, sizeof(v16));
  v3 = v16;
  sub_245F0CAC4(self->_barrelRollService.__ptr_ + 10032, v16);
  for (i = 0; i != 3; ++i)
  {
    v6 = v3[3];
    *v13 = v3[2];
    *&v13[16] = v6;
    *&v14 = *(v3 + 8);
    v7 = v3[1];
    v11 = *v3;
    v12 = v7;
    objc_msgSend_sendPencilGyroBiasAxisStatistics_axis_(self, v4, &v11, i);
    v3 = (v3 + 72);
  }

  v8 = 0;
  v9 = (&v16[13] + 8);
  do
  {
    v10 = v9[1];
    v11 = *v9;
    v12 = v10;
    *v13 = v9[2];
    *&v13[12] = *(v9 + 44);
    objc_msgSend_sendPencilSensorContactTypeStatistics_contactType_(self, v4, &v11, v8++);
    v9 = (v9 + 60);
  }

  while (v8 != 3);
  *v13 = v19;
  *&v13[16] = v20;
  v14 = v21;
  v15 = v22;
  v11 = v17;
  v12 = v18;
  objc_msgSend_sendPencilTimingStatistics_(self, v4, &v11);
}

@end