@interface CMAPrecisionFindingManager
- (CMAPrecisionFindingManager)initWithDelegate:(id)delegate dispatchQueue:(id)queue;
- (CMAPrecisionFindingManager)initWithDelegate:(id)delegate dispatchQueue:(id)queue findeeType:(int)type;
- (id).cxx_construct;
- (void)dealloc;
- (void)startDeviceFindingUpdates;
- (void)stopDeviceFindingUpdates;
- (void)updateAltimeterData:(id)data;
- (void)updateAnalytics;
- (void)updateDeviceMotion:(id)motion;
- (void)updatePeerState:(id)state;
- (void)updateRanging:(id)ranging;
- (void)updateWatchOrientation:(id)orientation;
@end

@implementation CMAPrecisionFindingManager

- (CMAPrecisionFindingManager)initWithDelegate:(id)delegate dispatchQueue:(id)queue
{
  v23.receiver = self;
  v23.super_class = CMAPrecisionFindingManager;
  v6 = [(CMAPrecisionFindingManager *)&v23 init];
  v7 = v6;
  if (v6)
  {
    objc_storeWeak(&v6->_delegate, delegate);
    dispatch_retain(queue);
    v7->_delegateQueue = queue;
    v7->_analyticsManager = objc_alloc_init(CMAPrecisionFindingAnalytics);
    v8 = objc_alloc(MEMORY[0x277CBEBD0]);
    v10 = objc_msgSend_initWithSuiteName_(v8, v9, @"com.apple.CoreMotionAlgorithms.Msl.nearbyd");
    objc_msgSend_setObject_forKey_(v10, v11, @"private/var/mobile/Library/Caches/com.apple.CoreMotionAlgorithms/", @"FileBasePath");
    objc_msgSend_setObject_forKey_(v10, v12, @"1", @"LoggingEnabled");

    v13 = objc_alloc(MEMORY[0x277CBEBD0]);
    v15 = objc_msgSend_initWithSuiteName_(v13, v14, @"com.apple.CoreMotionAlgorithms");
    v17 = objc_msgSend_objectForKey_(v15, v16, @"NumParticlesDeviceFinding");
    if (v17)
    {
      v18 = v17;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v21 = objc_msgSend_unsignedLongLongValue(v18, v19, v20);
        sub_245F231B0(&v7->_positionEstimator, v21);
      }
    }

    sub_245F2254C();
    v7->_analyticsDownsampler.fMinimumToleratedDt = 99500;
    v7->_findeeType = 0;
  }

  return v7;
}

- (CMAPrecisionFindingManager)initWithDelegate:(id)delegate dispatchQueue:(id)queue findeeType:(int)type
{
  v15.receiver = self;
  v15.super_class = CMAPrecisionFindingManager;
  v8 = [(CMAPrecisionFindingManager *)&v15 init];
  v10 = v8;
  if (v8)
  {
    objc_msgSend_initWithDelegate_dispatchQueue_(v8, v9, delegate, queue);
    v10->_findeeType = type;
    v13 = objc_msgSend_findeeType(v10, v11, v12);
    sub_245F231E4(&v10->_positionEstimator, v13);
  }

  return v10;
}

- (void)dealloc
{
  objc_storeWeak(&self->_delegate, 0);
  dispatch_release(self->_delegateQueue);
  self->_delegateQueue = 0;

  v3.receiver = self;
  v3.super_class = CMAPrecisionFindingManager;
  [(CMAPrecisionFindingManager *)&v3 dealloc];
}

- (void)startDeviceFindingUpdates
{
  v7 = *MEMORY[0x277D85DE8];
  if (qword_27EE374E0 != -1)
  {
    dispatch_once(&qword_27EE374E0, &unk_2858D7350);
  }

  v3 = off_27EE374E8;
  if (os_log_type_enabled(off_27EE374E8, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = objc_msgSend_findeeType(self, v4, v5);
    _os_log_impl(&dword_245D80000, v3, OS_LOG_TYPE_DEFAULT, "CMAPrecisionFindingManager,starting updates for findee type %u.", v6, 8u);
  }

  objc_msgSend_setDeviceFindingClient_(self, v4, 1);
}

- (void)stopDeviceFindingUpdates
{
  if (qword_27EE374E0 != -1)
  {
    dispatch_once(&qword_27EE374E0, &unk_2858D7350);
  }

  v3 = off_27EE374E8;
  if (os_log_type_enabled(off_27EE374E8, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_245D80000, v3, OS_LOG_TYPE_DEFAULT, "CMAPrecisionFindingManager,stopping updates.", v5, 2u);
  }

  objc_msgSend_setDeviceFindingClient_(self, v4, 0);
}

- (void)updateDeviceMotion:(id)motion
{
  v82 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_deviceFindingClient(self, a2, motion))
  {
    objc_msgSend_timestamp(motion, v5, v6);
    *&v69 = v7;
    objc_msgSend_quaternion(motion, v8, v9);
    *(&v69 + 1) = v10;
    objc_msgSend_quaternion(motion, v11, v12);
    *&v70 = v13;
    objc_msgSend_quaternion(motion, v14, v15);
    *(&v70 + 1) = v16;
    objc_msgSend_quaternion(motion, v17, v18);
    *&v71 = v19;
    objc_msgSend_rotationRate(motion, v20, v21);
    *(&v71 + 1) = v22;
    objc_msgSend_rotationRate(motion, v23, v24);
    *&v72 = v25;
    objc_msgSend_rotationRate(motion, v26, v27);
    *(&v72 + 1) = v28;
    objc_msgSend_acceleration(motion, v29, v30);
    *&v73 = v31;
    objc_msgSend_acceleration(motion, v32, v33);
    *(&v73 + 1) = v34;
    objc_msgSend_acceleration(motion, v35, v36);
    v74 = v37;
    sub_245F231F0(&self->_positionEstimator, &v69);
    sub_245F225E8(&v69);
    v40 = objc_msgSend_analyticsManager(self, v38, v39);
    *v76 = v71;
    *&v76[16] = v72;
    *v77 = v73;
    *&v77[16] = v74;
    *buf = v69;
    *&buf[16] = v70;
    objc_msgSend_feedDeviceMotion_(v40, v41, buf);
    objc_msgSend_timestamp(motion, v42, v43);
    v45 = (v44 * 1000000.0);
    fMinimumToleratedDt = self->_deviceMotionDownsampler.fMinimumToleratedDt;
    if (fMinimumToleratedDt && self->_deviceMotionDownsampler.fLastTimestamp + fMinimumToleratedDt > v45)
    {
      v47 = OS_LOG_TYPE_INFO;
    }

    else
    {
      v47 = OS_LOG_TYPE_DEFAULT;
      self->_deviceMotionDownsampler.fLastTimestamp = v45;
    }

    if (qword_27EE374E0 != -1)
    {
      dispatch_once(&qword_27EE374E0, &unk_2858D7350);
    }

    v48 = off_27EE374E8;
    if (os_log_type_enabled(off_27EE374E8, v47))
    {
      objc_msgSend_timestamp(motion, v49, v50);
      *buf = 134351616;
      *&buf[4] = v51;
      *&buf[12] = 2050;
      *&buf[14] = *(&v69 + 1);
      *&buf[22] = 2050;
      *&buf[24] = v70;
      *v76 = 2050;
      *&v76[2] = *(&v70 + 1);
      *&v76[10] = 2050;
      *&v76[12] = v71;
      *&v76[20] = 2050;
      *&v76[22] = *(&v71 + 1);
      *&v76[30] = 2050;
      *v77 = v72;
      *&v77[8] = 2050;
      *&v77[10] = *(&v72 + 1);
      *&v77[18] = 2050;
      *&v77[20] = v73;
      v78 = 2050;
      v79 = *(&v73 + 1);
      v80 = 2050;
      v81 = v74;
      _os_log_impl(&dword_245D80000, v48, v47, "CMAPrecisionFindingManager,timestamp,%{public}f,quaternion.x,%{public}f,quaternion.y,%{public}f,quaternion.z,%{public}f,quaternion.w,%{public}f,rotationRate.x,%{public}f,rotationRate.y,%{public}f,rotationRate.z,%{public}f,acceleration.x,%{public}f,acceleration.y,%{public}f,acceleration.z,%{public}f", buf, 0x70u);
    }

    objc_msgSend_delegate(self, v49, v50);
    if (objc_opt_respondsToSelector())
    {
      v54 = *&self->_positionEstimator.fPosition.horizontalAngleUncertainty;
      *buf = *&self->_positionEstimator.fPosition.timestamp;
      *&buf[16] = v54;
      v55 = *&self->_positionEstimator.fParticleFilterState.stateEstimate.__elems_[1];
      v67 = *&self->_positionEstimator.fParticleFilterState.timestamp;
      v68 = v55;
      v56 = objc_msgSend_delegateQueue(self, v52, v53);
      v62[0] = MEMORY[0x277D85DD0];
      v62[1] = 3221225472;
      v62[2] = sub_245F29B80;
      v62[3] = &unk_278E972C0;
      v63 = *buf;
      v64 = *&buf[16];
      v65 = v67;
      v66 = v68;
      v62[4] = self;
      v62[5] = motion;
      dispatch_async(v56, v62);
    }

    objc_msgSend_timestamp(motion, v52, v53);
    v60 = (v59 * 1000000.0);
    v61 = self->_analyticsDownsampler.fMinimumToleratedDt;
    if (!v61 || self->_analyticsDownsampler.fLastTimestamp + v61 <= v60)
    {
      self->_analyticsDownsampler.fLastTimestamp = v60;
      objc_msgSend_updateAnalytics(self, v57, v58);
    }
  }
}

- (void)updatePeerState:(id)state
{
  v15 = *MEMORY[0x277D85DE8];
  objc_msgSend_timestamp(state, a2, state);
  v9 = v5;
  v10 = objc_msgSend_motionState(state, v6, v7);
  sub_245F23EB8(&self->_positionEstimator, &v9);
  sub_245F227B8(&v9);
  if (qword_27EE374E0 != -1)
  {
    dispatch_once(&qword_27EE374E0, &unk_2858D7350);
  }

  v8 = off_27EE374E8;
  if (os_log_type_enabled(off_27EE374E8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134349312;
    v12 = v9;
    v13 = 1026;
    v14 = v10;
    _os_log_impl(&dword_245D80000, v8, OS_LOG_TYPE_DEFAULT, "CMAPrecisionFindingManager,timestamp,%{public}f,peerState,%{public}d", buf, 0x12u);
  }
}

- (void)updateRanging:(id)ranging
{
  v28 = *MEMORY[0x277D85DE8];
  objc_msgSend_timestamp(ranging, a2, ranging);
  *&v23 = v5;
  objc_msgSend_range(ranging, v6, v7);
  *(&v23 + 1) = v8;
  objc_msgSend_rangeError(ranging, v9, v10);
  *&v24 = v11;
  objc_msgSend_rssi(ranging, v12, v13);
  *(&v24 + 1) = v14;
  v25 = objc_msgSend_cycleIndex(ranging, v15, v16);
  *&v17 = sub_245F23B80(&self->_positionEstimator, &v23).u64[0];
  v20 = objc_msgSend_analyticsManager(self, v18, v19, v17);
  *buf = v23;
  *&buf[16] = v24;
  v27 = v25;
  objc_msgSend_feedRange_(v20, v21, buf);
  sub_245F22858(&v23);
  if (qword_27EE374E0 != -1)
  {
    dispatch_once(&qword_27EE374E0, &unk_2858D7350);
  }

  v22 = off_27EE374E8;
  if (os_log_type_enabled(off_27EE374E8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134349824;
    *&buf[4] = v23;
    *&buf[12] = 2050;
    *&buf[14] = *(&v23 + 1);
    *&buf[22] = 2050;
    *&buf[24] = *(&v24 + 1);
    LOWORD(v27) = 1026;
    *(&v27 + 2) = v25;
    _os_log_impl(&dword_245D80000, v22, OS_LOG_TYPE_DEFAULT, "CMAPrecisionFindingManager,timestamp,%{public}f,range,%{public}f,rssi,%{public}f,cycleIndex,%{public}d", buf, 0x26u);
  }
}

- (void)updateWatchOrientation:(id)orientation
{
  v24 = *MEMORY[0x277D85DE8];
  objc_msgSend_timestamp(orientation, a2, orientation);
  v16 = v5;
  LODWORD(v17) = objc_msgSend_wrist(orientation, v6, v7);
  HIDWORD(v17) = objc_msgSend_crown(orientation, v8, v9);
  v10 = sub_245F23F14(&self->_positionEstimator, &v16);
  v13 = objc_msgSend_analyticsManager(self, v11, v12, v10);
  objc_msgSend_feedWatchOrientation_(v13, v14, v16, v17);
  sub_245F22984(&v16);
  if (qword_27EE374E0 != -1)
  {
    dispatch_once(&qword_27EE374E0, &unk_2858D7350);
  }

  v15 = off_27EE374E8;
  if (os_log_type_enabled(off_27EE374E8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134349568;
    v19 = v16;
    v20 = 1026;
    v21 = v17;
    v22 = 1026;
    v23 = HIDWORD(v17);
    _os_log_impl(&dword_245D80000, v15, OS_LOG_TYPE_DEFAULT, "CMAPrecisionFindingManager,timestamp,%{public}f,wrist,%{public}d,crown,%{public}d,", buf, 0x18u);
  }
}

- (void)updateAltimeterData:(id)data
{
  v23 = *MEMORY[0x277D85DE8];
  objc_msgSend_machAbsoluteTimestamp(data, a2, data, 0);
  v14 = v5;
  objc_msgSend_relativeAltitude(data, v6, v7);
  v15 = v8;
  objc_msgSend_pressure(data, v9, v10);
  v16 = v11;
  sub_245F23FF4(&self->_positionEstimator, &v13);
  sub_245F22B34(&v13);
  if (qword_27EE374E0 != -1)
  {
    dispatch_once(&qword_27EE374E0, &unk_2858D7350);
  }

  v12 = off_27EE374E8;
  if (os_log_type_enabled(off_27EE374E8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134349568;
    v18 = v14;
    v19 = 2050;
    v20 = v16;
    v21 = 2050;
    v22 = v15;
    _os_log_impl(&dword_245D80000, v12, OS_LOG_TYPE_DEFAULT, "CMAPrecisionFindingManager,machAbsoluteTimestamp,%{public}f,pressure,%{public}f,relativeAltitude,%{public}f", buf, 0x20u);
  }
}

- (void)updateAnalytics
{
  objc_msgSend_delegate(self, a2, v2);
  if (objc_opt_respondsToSelector())
  {
    if (self->_positionEstimator.fAcceptedRange.__engaged_)
    {
      v6 = objc_msgSend_analyticsManager(self, v4, v5);
      if (!self->_positionEstimator.fAcceptedRange.__engaged_)
      {
        sub_245F2AB94();
      }

      v8 = *&self->_positionEstimator.fAcceptedRange.var0.__val_.rangeError;
      v11[0] = *&self->_positionEstimator.fAcceptedRange.var0.__null_state_;
      v11[1] = v8;
      v12 = *&self->_positionEstimator.fAcceptedRange.var0.__val_.cycleIndex;
      objc_msgSend_feedAcceptedRange_(v6, v7, v11);
    }

    v9 = objc_msgSend_delegateQueue(self, v4, v5);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_245F2A95C;
    block[3] = &unk_278E97158;
    block[4] = self;
    dispatch_async(v9, block);
  }
}

- (id).cxx_construct
{
  sub_245F231AC(&self->_positionEstimator);
  self->_deviceMotionDownsampler.fLastTimestamp = 0;
  self->_deviceMotionDownsampler.fMinimumToleratedDt = 39500;
  self->_deviceMotionDownsampler._vptr$CMDownsampler = &unk_2858D7380;
  *&self->_positionDownsampler.fMinimumToleratedDt = xmmword_245F33930;
  self->_positionDownsampler._vptr$CMDownsampler = &unk_2858D7380;
  self->_analyticsDownsampler.fLastTimestamp = 0;
  self->_analyticsDownsampler.fMinimumToleratedDt = 39500;
  self->_analyticsDownsampler._vptr$CMDownsampler = &unk_2858D7380;
  return self;
}

@end