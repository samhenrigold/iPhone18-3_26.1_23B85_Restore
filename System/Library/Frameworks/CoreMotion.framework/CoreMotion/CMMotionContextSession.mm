@interface CMMotionContextSession
- (CMMotionContextSession)initWithOptions:(id)options;
- (id).cxx_construct;
- (uint64_t)feedARKitWorldPoseWithTimestamp:(int8x16_t)timestamp pose:(int32x4_t)pose status:(__n128)status;
- (void)enableMLModel:(BOOL)model;
- (void)enterDistractedViewingSession:(int)session;
- (void)exitDistractedViewingSession:(int)session;
- (void)feedAccessoryConfig:(const Config *)config;
- (void)feedAudioAccessoryIMU:(const void *)u;
- (void)feedGPSLocationWithTimestamp:(double)timestamp course:(double)course speed:(double)speed latitude:(double)latitude longitude:(double)longitude horizontalAccuracy:(double)accuracy;
- (void)feedSourceDeviceIMU:(const Sample *)u;
- (void)initLoggerWithPrefix:(id)prefix filePath:(id)path;
- (void)notifyMotionContextClient:(int)client;
- (void)notifyPdrClient:(const void *)client;
- (void)notifyStepCountClient:(const void *)client;
- (void)setAlgType:(int)type;
- (void)setSpeedEstType:(int)type;
- (void)setTrackingClientMode:(int)mode;
- (void)start;
- (void)startMotionContextUpdatesToQueue:(id)queue andHandler:(id)handler;
- (void)startPdrUpdatesToQueue:(id)queue andHandler:(id)handler;
- (void)startStepCountUpdatesToQueue:(id)queue andHandler:(id)handler;
- (void)stop;
@end

@implementation CMMotionContextSession

- (CMMotionContextSession)initWithOptions:(id)options
{
  v41 = *MEMORY[0x1E69E9840];
  v36.receiver = self;
  v36.super_class = CMMotionContextSession;
  v4 = [(CMMotionContextSession *)&v36 init];
  v5 = v4;
  if (v4)
  {
    *(v4 + 3194) = 0;
    *(v4 + 12904) = 0u;
    v4[12780] = 1;
    v4[12944] = 0;
    *(v4 + 1620) = 0;
    *(v4 + 1607) = 0;
    *(v4 + 811) = 0u;
    *(v4 + 3248) = 0;
    v6 = mach_continuous_time();
    v5->_currentTime = sub_19B41E070(v6);
    v5->_inDVEvent = 0;
    v5->_lastTrackingDisableRoute = 0;
    if (options)
    {
      if (qword_1EAFE2A58 != -1)
      {
        dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
      }

      v7 = qword_1EAFE2A60;
      if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        optionsCopy = options;
        _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_DEFAULT, "[CMMotionContextSession] Options dictionary: %@", buf, 0xCu);
      }

      v8 = sub_19B420058();
      if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2A58 != -1)
        {
          dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
        }

        v37 = 138412290;
        optionsCopy2 = options;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2A60, 0, "[CMMotionContextSession] Options dictionary: %@", &v37, 12);
        v11 = v10;
        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMotionContextSession initWithOptions:]", "CoreLocation: %s\n", v10);
        if (v11 != buf)
        {
          free(v11);
        }
      }

      if (objc_msgSend_valueForKey_(options, v9, @"kCMMotionContextSessionLogMSL"))
      {
        v13 = objc_msgSend_objectForKeyedSubscript_(options, v12, @"kCMMotionContextSessionLogMSL");
        v16 = objc_msgSend_BOOLValue(v13, v14, v15);
        v5->_logMSL = v16;
        if (v16)
        {
          v17 = objc_msgSend_objectForKeyedSubscript_(options, v12, @"kCMMotionContextSessionMSLFilePath");
          if (objc_msgSend_valueForKey_(options, v18, @"kCMMotionContextSessionMSLFilePrefix"))
          {
            v20 = objc_msgSend_objectForKeyedSubscript_(options, v19, @"kCMMotionContextSessionMSLFilePrefix");
            v22 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v21, @"Spatial_%@", v20);
          }

          else
          {
            v22 = @"MotionContext";
          }

          if (qword_1EAFE2A58 != -1)
          {
            dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
          }

          v23 = qword_1EAFE2A60;
          if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            optionsCopy = v22;
            _os_log_impl(&dword_19B41C000, v23, OS_LOG_TYPE_DEFAULT, "[CMMotionContextSession] MSL file prefix: %@", buf, 0xCu);
          }

          v24 = sub_19B420058();
          if (*(v24 + 160) > 1 || *(v24 + 164) > 1 || *(v24 + 168) > 1 || *(v24 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE2A58 != -1)
            {
              dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
            }

            v37 = 138412290;
            optionsCopy2 = v22;
            LODWORD(v35) = 12;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2A60, 0, "[CMMotionContextSession] MSL file prefix: %@", &v37, v35);
            v27 = v26;
            sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMotionContextSession initWithOptions:]", "CoreLocation: %s\n", v26);
            if (v27 != buf)
            {
              free(v27);
            }
          }

          objc_msgSend_initLoggerWithPrefix_filePath_(v5, v25, v22, v17);
        }
      }

      if (objc_msgSend_valueForKey_(options, v12, @"kCMMotionContextSessionUseMLModel"))
      {
        v29 = objc_msgSend_objectForKeyedSubscript_(options, v28, @"kCMMotionContextSessionUseMLModel");
        if (objc_msgSend_BOOLValue(v29, v30, v31))
        {
          objc_msgSend_UTF8String(@"/System/Library/PrivateFrameworks/CoreMotionModels.framework/HumanMotionModels/hml.espresso/hml.mlmodelc", v32, v33);
          operator new();
        }
      }
    }
  }

  return v5;
}

- (void)start
{
  v13 = *MEMORY[0x1E69E9840];
  objc_sync_enter(self);
  if (qword_1EAFE2A58 != -1)
  {
    dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
  }

  v3 = qword_1EAFE2A60;
  if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEBUG, "Starting CMMotionContextSession", buf, 2u);
  }

  v4 = sub_19B420058();
  if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2A58 != -1)
    {
      dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
    }

    LOWORD(v11) = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2A60, 2, "Starting CMMotionContextSession", &v11, 2);
    v6 = v5;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMotionContextSession start]", "CoreLocation: %s\n", v5);
    if (v6 != buf)
    {
      free(v6);
    }
  }

  if (!self->_analyticsTracker.__ptr_)
  {
    operator new();
  }

  if (!self->_deviceMotionDispatcher.__ptr_)
  {
    v7 = [CLDeviceMotionProperties alloc];
    objc_msgSend_initWithMode_(v7, v8, 7);
    operator new();
  }

  if (!self->_accessoryDeviceMotionConfigDispatcher.__ptr_)
  {
    operator new();
  }

  if (!self->_accessoryDeviceMotionDispatcher.__ptr_)
  {
    *(sub_19B6D6344() + 28) = 1;
    operator new();
  }

  ptr = self->hmlModel.__ptr_;
  if (ptr)
  {
    *(ptr + 1560) = 0;
    *(ptr + 194) = 0;
  }

  *&self->_totalSessionTime = 0;
  v10 = mach_continuous_time();
  self->_currentTime = sub_19B41E070(v10);
  objc_sync_exit(self);
}

- (void)stop
{
  v27 = *MEMORY[0x1E69E9840];
  objc_sync_enter(self);
  if (qword_1EAFE2A58 != -1)
  {
    dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
  }

  v3 = qword_1EAFE2A60;
  if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEBUG, "Stopping CMMotionContextSession", buf, 2u);
  }

  v4 = sub_19B420058();
  if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2A58 != -1)
    {
      dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
    }

    LOWORD(v23) = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2A60, 2, "Stopping CMMotionContextSession", &v23, 2);
    v6 = v5;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMotionContextSession stop]", "CoreLocation: %s\n", v5);
    if (v6 != buf)
    {
      free(v6);
    }
  }

  if (self->_deviceMotionDispatcher.__ptr_)
  {
    v7 = sub_19B424AE0();
    sub_19B425248(v7, self->_deviceMotionDispatcher.__ptr_);
    ptr = self->_deviceMotionDispatcher.__ptr_;
    self->_deviceMotionDispatcher.__ptr_ = 0;
    if (ptr)
    {
      (*(ptr->var0 + 1))(ptr);
    }
  }

  if (self->_accessoryDeviceMotionConfigDispatcher.__ptr_)
  {
    v9 = sub_19B6D6344();
    sub_19B426A14(v9, 2, self->_accessoryDeviceMotionConfigDispatcher.__ptr_);
    v10 = self->_accessoryDeviceMotionConfigDispatcher.__ptr_;
    self->_accessoryDeviceMotionConfigDispatcher.__ptr_ = 0;
    if (v10)
    {
      (*(v10->var0 + 1))(v10);
    }
  }

  if (self->_accessoryDeviceMotionDispatcher.__ptr_)
  {
    v11 = sub_19B6D6344();
    sub_19B426A14(v11, 1, self->_accessoryDeviceMotionDispatcher.__ptr_);
    v12 = self->_accessoryDeviceMotionDispatcher.__ptr_;
    self->_accessoryDeviceMotionDispatcher.__ptr_ = 0;
    if (v12)
    {
      (*(v12->var0 + 1))(v12);
    }
  }

  v13 = self->_analyticsTracker.__ptr_;
  if (v13)
  {
    auxSampleCounter = self->_auxSampleCounter;
    if (auxSampleCounter)
    {
      v15 = self->_totalSessionTime / auxSampleCounter;
      if (v15 < 0.04)
      {
        sub_19B6E3368(v13);
LABEL_39:
        v21 = self->_analyticsTracker.__ptr_;
        self->_analyticsTracker.__ptr_ = 0;
        if (v21)
        {
          MEMORY[0x19EAE76F0](v21, 0x1000C406BA0FAAELL);
        }

        goto LABEL_41;
      }
    }

    else
    {
      v15 = 3.4028e38;
    }

    if (qword_1EAFE2A58 != -1)
    {
      dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
    }

    v16 = qword_1EAFE2A60;
    v17 = v15;
    if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134349056;
      v26 = v17;
      _os_log_impl(&dword_19B41C000, v16, OS_LOG_TYPE_DEFAULT, "Not sending invalid CA metrics due to aux sample drops. avgAuxInterval %{public}f\n", buf, 0xCu);
    }

    v18 = sub_19B420058();
    if (*(v18 + 160) > 1 || *(v18 + 164) > 1 || *(v18 + 168) > 1 || *(v18 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2A58 != -1)
      {
        dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
      }

      v23 = 134349056;
      v24 = v17;
      LODWORD(v22) = 12;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2A60, 0, "Not sending invalid CA metrics due to aux sample drops. avgAuxInterval %{public}f\n", &v23, v22);
      v20 = v19;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMotionContextSession stop]", "CoreLocation: %s\n", v19);
      if (v20 != buf)
      {
        free(v20);
      }
    }

    goto LABEL_39;
  }

LABEL_41:
  objc_sync_exit(self);
}

- (void)setAlgType:(int)type
{
  v11 = *MEMORY[0x1E69E9840];
  self->_pdr.fAlgType = type;
  if (qword_1EAFE2A58 != -1)
  {
    dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
  }

  v4 = qword_1EAFE2A60;
  if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    typeCopy = type;
    _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_DEFAULT, "[CMPdr] Setting Pdr algoType to %d\n", buf, 8u);
  }

  v5 = sub_19B420058();
  if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2A58 != -1)
    {
      dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
    }

    v8[0] = 67109120;
    v8[1] = type;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2A60, 0, "[CMPdr] Setting Pdr algoType to %d\n", v8);
    v7 = v6;
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CMPdr::setAlgType(Pdr::AlgType)", "CoreLocation: %s\n", v6);
    if (v7 != buf)
    {
      free(v7);
    }
  }
}

- (void)setSpeedEstType:(int)type
{
  v18 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2A58 != -1)
  {
    dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
  }

  v5 = qword_1EAFE2A60;
  if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    typeCopy3 = type;
    _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_DEFAULT, "Setting Pdr speed estimator to %d\n", buf, 8u);
  }

  v6 = sub_19B420058();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2A58 != -1)
    {
      dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
    }

    v14 = 67109120;
    typeCopy4 = type;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2A60, 0, "Setting Pdr speed estimator to %d\n", &v14);
    v8 = v7;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMotionContextSession setSpeedEstType:]", "CoreLocation: %s\n", v7);
    if (v8 != buf)
    {
      free(v8);
    }
  }

  if (!self->_pdr.fAlgType)
  {
    ptr = self->_pdr.fPdrEstimatorOnHead.__ptr_;
    if (ptr)
    {
      if (qword_1EAFE2A58 != -1)
      {
        dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
      }

      v10 = qword_1EAFE2A60;
      if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        typeCopy3 = type;
        _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_DEFAULT, "[DoTEstimator] Setting speedType, %d\n", buf, 8u);
      }

      v11 = sub_19B420058();
      if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2A58 != -1)
        {
          dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
        }

        v14 = 67109120;
        typeCopy4 = type;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2A60, 0, "[DoTEstimator] Setting speedType, %d\n", &v14);
        v13 = v12;
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CMPdrEstimatorOnHead::setSpeedEstimationType(Pdr::SpeedEstimationType)", "CoreLocation: %s\n", v12);
        if (v13 != buf)
        {
          free(v13);
        }
      }

      *(ptr + 14) = type;
    }
  }
}

- (void)enableMLModel:(BOOL)model
{
  if (self->_enableMLModel != model)
  {
    modelCopy = model;
    objc_sync_enter(self);
    self->_enableMLModel = modelCopy;
    if (self->hmlModel.__ptr_)
    {
      if (!modelCopy)
      {
        sub_19B5C1D50(&self->hmlModel, 0);
      }
    }

    else if (modelCopy)
    {
      objc_msgSend_UTF8String(@"/System/Library/PrivateFrameworks/CoreMotionModels.framework/HumanMotionModels/hml.espresso/hml.mlmodelc", v5, v6);
      operator new();
    }

    objc_sync_exit(self);
  }
}

- (void)enterDistractedViewingSession:(int)session
{
  v13 = *MEMORY[0x1E69E9840];
  self->_lastTrackingDisableRoute = session;
  if ((session | 2) == 3)
  {
    self->_inDVEvent = 1;
    *&self->_distanceTravelledPerDVEvent = 0;
    v5 = mach_continuous_time();
    self->_distractedViewingEnterTime = sub_19B41E070(v5);
    self->_initialPosition = self->_result.position;
    self->_initialHeadingDegrees = self->_result.directionOfTravelDegrees;
    if (qword_1EAFE2A58 != -1)
    {
      dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
    }

    v6 = qword_1EAFE2A60;
    if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      sessionCopy = session;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_DEFAULT, "[CMMotionContextSession] entered DV event via route %d", buf, 8u);
    }

    v7 = sub_19B420058();
    if (*(v7 + 160) > 1 || *(v7 + 164) > 1 || *(v7 + 168) > 1 || *(v7 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2A58 != -1)
      {
        dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
      }

      v10[0] = 67109120;
      v10[1] = session;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2A60, 0, "[CMMotionContextSession] entered DV event via route %d", v10);
      v9 = v8;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMotionContextSession enterDistractedViewingSession:]", "CoreLocation: %s\n", v8);
      if (v9 != buf)
      {
        free(v9);
      }
    }
  }
}

- (void)exitDistractedViewingSession:(int)session
{
  v47 = *MEMORY[0x1E69E9840];
  if ((self->_lastTrackingDisableRoute | 2) == 3 && (session - 1) <= 1)
  {
    ptr = self->_analyticsTracker.__ptr_;
    if (*ptr != -1)
    {
      ++*ptr;
    }

    v6 = mach_continuous_time();
    v7 = sub_19B41E070(v6);
    v8 = self->_result.position.elements[0] - self->_initialPosition.elements[0];
    v9 = sqrt(v8 * v8 + (self->_result.position.elements[1] - self->_initialPosition.elements[1]) * (self->_result.position.elements[1] - self->_initialPosition.elements[1]));
    distanceTravelledPerDVEvent = self->_distanceTravelledPerDVEvent;
    v11 = 0.0;
    v12 = 0.0;
    if (distanceTravelledPerDVEvent != 0.0)
    {
      v12 = (v9 / distanceTravelledPerDVEvent);
    }

    v13 = self->_result.directionOfTravelDegrees - self->_initialHeadingDegrees;
    v14 = v7 - self->_distractedViewingEnterTime;
    if (v14 > 0.0)
    {
      v11 = (self->_stepCountPerDVEvent / v14);
    }

    v15 = self->_analyticsTracker.__ptr_;
    v16 = v9;
    v18 = *(v15 + 3);
    v17 = *(v15 + 4);
    if (v17 <= v16)
    {
      v17 = v16;
    }

    if (v18 >= v16)
    {
      v18 = v16;
    }

    *(v15 + 3) = v18;
    *(v15 + 4) = v17;
    *(v15 + 5) = *(v15 + 5) + v16;
    ++*(v15 + 12);
    v19 = distanceTravelledPerDVEvent;
    v21 = *(v15 + 7);
    v20 = *(v15 + 8);
    if (v20 <= v19)
    {
      v20 = v19;
    }

    if (v21 >= v19)
    {
      v21 = v19;
    }

    *(v15 + 7) = v21;
    *(v15 + 8) = v20;
    *(v15 + 9) = *(v15 + 9) + v19;
    ++*(v15 + 20);
    v23 = *(v15 + 11);
    v22 = *(v15 + 12);
    if (v22 <= v12)
    {
      v22 = v12;
    }

    if (v23 >= v12)
    {
      v23 = v12;
    }

    *(v15 + 11) = v23;
    *(v15 + 12) = v22;
    *(v15 + 13) = v12 + *(v15 + 13);
    ++*(v15 + 28);
    v24 = v13;
    v26 = *(v15 + 15);
    v25 = *(v15 + 16);
    if (v25 <= v24)
    {
      v25 = v24;
    }

    if (v26 >= v24)
    {
      v26 = v24;
    }

    *(v15 + 15) = v26;
    *(v15 + 16) = v25;
    *(v15 + 17) = *(v15 + 17) + v24;
    ++*(v15 + 36);
    stepCountPerDVEvent = self->_stepCountPerDVEvent;
    v29 = *(v15 + 19);
    v28 = *(v15 + 20);
    if (v28 <= stepCountPerDVEvent)
    {
      v28 = self->_stepCountPerDVEvent;
    }

    if (v29 >= stepCountPerDVEvent)
    {
      v29 = self->_stepCountPerDVEvent;
    }

    *(v15 + 19) = v29;
    *(v15 + 20) = v28;
    *(v15 + 21) = *(v15 + 21) + stepCountPerDVEvent;
    ++*(v15 + 44);
    v31 = *(v15 + 23);
    v30 = *(v15 + 24);
    if (v30 <= v11)
    {
      v30 = v11;
    }

    if (v31 >= v11)
    {
      v31 = v11;
    }

    *(v15 + 23) = v31;
    *(v15 + 24) = v30;
    *(v15 + 25) = v11 + *(v15 + 25);
    ++*(v15 + 52);
    v32 = v14;
    v34 = *(v15 + 31);
    v33 = *(v15 + 32);
    if (v33 <= v32)
    {
      v33 = v32;
    }

    if (v34 >= v32)
    {
      v34 = v32;
    }

    *(v15 + 31) = v34;
    *(v15 + 32) = v33;
    *(v15 + 33) = *(v15 + 33) + v32;
    ++*(v15 + 68);
    self->_inDVEvent = 0;
    if (self->_lastTrackingDisableRoute == 1)
    {
      v35 = (v15 + 4);
      v36 = *(v15 + 1);
    }

    else
    {
      v35 = (v15 + 8);
      v36 = *(v15 + 2);
    }

    if (v36 != -1)
    {
      *v35 = v36 + 1;
    }

    if (session == 1)
    {
      v39 = *(v15 + 3);
      v37 = (v15 + 12);
      v38 = v39;
    }

    else
    {
      v40 = *(v15 + 4);
      v37 = (v15 + 16);
      v38 = v40;
    }

    if (v38 != -1)
    {
      *v37 = v38 + 1;
    }

    if (qword_1EAFE2A58 != -1)
    {
      dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
    }

    v41 = qword_1EAFE2A60;
    if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v41, OS_LOG_TYPE_DEFAULT, "[CMMotionContextSession] stop logging CA metrics for a DV event.", buf, 2u);
    }

    v42 = sub_19B420058();
    if (*(v42 + 160) > 1 || *(v42 + 164) > 1 || *(v42 + 168) > 1 || *(v42 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2A58 != -1)
      {
        dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
      }

      v45[0] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2A60, 0, "[CMMotionContextSession] stop logging CA metrics for a DV event.", v45, 2);
      v44 = v43;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMotionContextSession exitDistractedViewingSession:]", "CoreLocation: %s\n", v43);
      if (v44 != buf)
      {
        free(v44);
      }
    }
  }
}

- (void)setTrackingClientMode:(int)mode
{
  ptr = self->_analyticsTracker.__ptr_;
  if (ptr)
  {
    *(ptr + 79) = mode;
  }
}

- (void)initLoggerWithPrefix:(id)prefix filePath:(id)path
{
  v17 = *MEMORY[0x1E69E9840];
  if (prefix)
  {
    objc_msgSend_cStringUsingEncoding_(prefix, a2, 1);
    objc_msgSend_cStringUsingEncoding_(path, v5, 1);
    operator new();
  }

  if (qword_1EAFE2A58 != -1)
  {
    dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
  }

  v6 = qword_1EAFE2A60;
  if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_FAULT))
  {
    *buf = 68289539;
    v10 = 0;
    v11 = 2082;
    v12 = "";
    v13 = 2082;
    v14 = "assert";
    v15 = 2081;
    v16 = "prefix";
    _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:No prefix provided, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    if (qword_1EAFE2A58 != -1)
    {
      dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
    }
  }

  v7 = qword_1EAFE2A60;
  if (os_signpost_enabled(qword_1EAFE2A60))
  {
    *buf = 68289539;
    v10 = 0;
    v11 = 2082;
    v12 = "";
    v13 = 2082;
    v14 = "assert";
    v15 = 2081;
    v16 = "prefix";
    _os_signpost_emit_with_name_impl(&dword_19B41C000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "No prefix provided", "{msg%{public}.0s:No prefix provided, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    if (qword_1EAFE2A58 != -1)
    {
      dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
    }
  }

  v8 = qword_1EAFE2A60;
  if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_INFO))
  {
    *buf = 68289539;
    v10 = 0;
    v11 = 2082;
    v12 = "";
    v13 = 2082;
    v14 = "assert";
    v15 = 2081;
    v16 = "prefix";
    _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_INFO, "{msg%{public}.0s:No prefix provided, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
  }

  abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Framework/CoreMotion/Accessory/CMMotionContextSession.mm", 530, "[CMMotionContextSession initLoggerWithPrefix:filePath:]");
  __break(1u);
}

- (void)notifyStepCountClient:(const void *)client
{
  if (self->_stepCountClientHandler)
  {
    if (self->_stepCountClientQueue)
    {
      objc_sync_enter(self);
      stepCountClientHandler = self->_stepCountClientHandler;
      stepCountClientQueue = self->_stepCountClientQueue;
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = sub_19B5C2774;
      v7[3] = &unk_1E7532AD8;
      v7[4] = stepCountClientHandler;
      v7[5] = client;
      dispatch_sync(stepCountClientQueue, v7);
      objc_sync_exit(self);
    }
  }
}

- (void)notifyPdrClient:(const void *)client
{
  if (self->_pdrClientQueue)
  {
    if (self->_pdrClientHandler)
    {
      objc_sync_enter(self);
      pdrClientHandler = self->_pdrClientHandler;
      pdrClientQueue = self->_pdrClientQueue;
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = sub_19B5C2834;
      v7[3] = &unk_1E7532AD8;
      v7[4] = pdrClientHandler;
      v7[5] = client;
      dispatch_sync(pdrClientQueue, v7);
      objc_sync_exit(self);
    }
  }
}

- (void)notifyMotionContextClient:(int)client
{
  if (self->_motionContextClientHandler)
  {
    if (self->_motionContextClientQueue)
    {
      objc_sync_enter(self);
      motionContextClientHandler = self->_motionContextClientHandler;
      motionContextClientQueue = self->_motionContextClientQueue;
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = sub_19B5C2904;
      v7[3] = &unk_1E7532AB0;
      v7[4] = motionContextClientHandler;
      clientCopy = client;
      dispatch_sync(motionContextClientQueue, v7);
      objc_sync_exit(self);
    }
  }
}

- (void)startStepCountUpdatesToQueue:(id)queue andHandler:(id)handler
{
  v27 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2A58 != -1)
  {
    dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
  }

  v7 = qword_1EAFE2A60;
  if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_DEFAULT, "[CMMotionContextSession] Starting push updates", buf, 2u);
  }

  v8 = sub_19B420058();
  if (*(v8 + 160) <= 1 && *(v8 + 164) <= 1 && *(v8 + 168) <= 1 && !*(v8 + 152))
  {
    goto LABEL_12;
  }

  bzero(buf, 0x65CuLL);
  if (qword_1EAFE2A58 != -1)
  {
    goto LABEL_42;
  }

  while (1)
  {
    v18[0] = 0;
    LODWORD(v17) = 2;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2A60, 0, "[CMMotionContextSession] Starting push updates", v18, v17);
    v10 = v9;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMotionContextSession startStepCountUpdatesToQueue:andHandler:]", "CoreLocation: %s\n", v9);
    if (v10 != buf)
    {
      free(v10);
    }

LABEL_12:
    if (!queue)
    {
      if (qword_1EAFE2A58 != -1)
      {
        dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
      }

      v13 = qword_1EAFE2A60;
      handler = "queue";
      if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_FAULT))
      {
        *buf = 68289539;
        v20 = 0;
        v21 = 2082;
        v22 = "";
        v23 = 2082;
        v24 = "assert";
        v25 = 2081;
        v26 = "queue";
        _os_log_impl(&dword_19B41C000, v13, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:[CMMotionContextSession] client queue is nil, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
        if (qword_1EAFE2A58 != -1)
        {
          dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
        }
      }

      v14 = qword_1EAFE2A60;
      if (os_signpost_enabled(qword_1EAFE2A60))
      {
        *buf = 68289539;
        v20 = 0;
        v21 = 2082;
        v22 = "";
        v23 = 2082;
        v24 = "assert";
        v25 = 2081;
        v26 = "queue";
        _os_signpost_emit_with_name_impl(&dword_19B41C000, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "[CMMotionContextSession] client queue is nil", "{msg%{public}.0s:[CMMotionContextSession] client queue is nil, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
        if (qword_1EAFE2A58 != -1)
        {
          dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
        }
      }

      self = qword_1EAFE2A60;
      if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_INFO))
      {
        *buf = 68289539;
        v20 = 0;
        v21 = 2082;
        v22 = "";
        v23 = 2082;
        v24 = "assert";
        v25 = 2081;
        v26 = "queue";
        _os_log_impl(&dword_19B41C000, &self->super, OS_LOG_TYPE_INFO, "{msg%{public}.0s:[CMMotionContextSession] client queue is nil, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      }

      abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Framework/CoreMotion/Accessory/CMMotionContextSession.mm", 583, "[CMMotionContextSession startStepCountUpdatesToQueue:andHandler:]");
      goto LABEL_41;
    }

    if (handler)
    {
      break;
    }

    if (qword_1EAFE2A58 != -1)
    {
      dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
    }

    v15 = qword_1EAFE2A60;
    queue = "assert";
    handler = "handler";
    if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v20 = 0;
      v21 = 2082;
      v22 = "";
      v23 = 2082;
      v24 = "assert";
      v25 = 2081;
      v26 = "handler";
      _os_log_impl(&dword_19B41C000, v15, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:[CMMotionContextSession] client handler is nil, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EAFE2A58 != -1)
      {
        dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
      }
    }

    v16 = qword_1EAFE2A60;
    if (os_signpost_enabled(qword_1EAFE2A60))
    {
      *buf = 68289539;
      v20 = 0;
      v21 = 2082;
      v22 = "";
      v23 = 2082;
      v24 = "assert";
      v25 = 2081;
      v26 = "handler";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v16, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "[CMMotionContextSession] client handler is nil", "{msg%{public}.0s:[CMMotionContextSession] client handler is nil, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EAFE2A58 != -1)
      {
        dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
      }
    }

    self = qword_1EAFE2A60;
    if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v20 = 0;
      v21 = 2082;
      v22 = "";
      v23 = 2082;
      v24 = "assert";
      v25 = 2081;
      v26 = "handler";
      _os_log_impl(&dword_19B41C000, &self->super, OS_LOG_TYPE_INFO, "{msg%{public}.0s:[CMMotionContextSession] client handler is nil, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Framework/CoreMotion/Accessory/CMMotionContextSession.mm", 584, "[CMMotionContextSession startStepCountUpdatesToQueue:andHandler:]");
LABEL_41:
    __break(1u);
LABEL_42:
    dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
  }

  objc_sync_enter(self);
  stepCountClientQueue = self->_stepCountClientQueue;
  if (stepCountClientQueue)
  {
    dispatch_release(stepCountClientQueue);
  }

  stepCountClientHandler = self->_stepCountClientHandler;
  if (stepCountClientHandler)
  {
    _Block_release(stepCountClientHandler);
  }

  self->_stepCountClientQueue = queue;
  dispatch_retain(queue);
  self->_stepCountClientHandler = _Block_copy(handler);
  objc_sync_exit(self);
}

- (void)startPdrUpdatesToQueue:(id)queue andHandler:(id)handler
{
  v27 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2A58 != -1)
  {
    dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
  }

  v7 = qword_1EAFE2A60;
  if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_DEFAULT, "[CMMotionContextSession] Starting push updates", buf, 2u);
  }

  v8 = sub_19B420058();
  if (*(v8 + 160) <= 1 && *(v8 + 164) <= 1 && *(v8 + 168) <= 1 && !*(v8 + 152))
  {
    goto LABEL_12;
  }

  bzero(buf, 0x65CuLL);
  if (qword_1EAFE2A58 != -1)
  {
    goto LABEL_42;
  }

  while (1)
  {
    v18[0] = 0;
    LODWORD(v17) = 2;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2A60, 0, "[CMMotionContextSession] Starting push updates", v18, v17);
    v10 = v9;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMotionContextSession startPdrUpdatesToQueue:andHandler:]", "CoreLocation: %s\n", v9);
    if (v10 != buf)
    {
      free(v10);
    }

LABEL_12:
    if (!queue)
    {
      if (qword_1EAFE2A58 != -1)
      {
        dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
      }

      v13 = qword_1EAFE2A60;
      handler = "queue";
      if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_FAULT))
      {
        *buf = 68289539;
        v20 = 0;
        v21 = 2082;
        v22 = "";
        v23 = 2082;
        v24 = "assert";
        v25 = 2081;
        v26 = "queue";
        _os_log_impl(&dword_19B41C000, v13, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:[CMMotionContextSession] client queue is nil, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
        if (qword_1EAFE2A58 != -1)
        {
          dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
        }
      }

      v14 = qword_1EAFE2A60;
      if (os_signpost_enabled(qword_1EAFE2A60))
      {
        *buf = 68289539;
        v20 = 0;
        v21 = 2082;
        v22 = "";
        v23 = 2082;
        v24 = "assert";
        v25 = 2081;
        v26 = "queue";
        _os_signpost_emit_with_name_impl(&dword_19B41C000, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "[CMMotionContextSession] client queue is nil", "{msg%{public}.0s:[CMMotionContextSession] client queue is nil, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
        if (qword_1EAFE2A58 != -1)
        {
          dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
        }
      }

      self = qword_1EAFE2A60;
      if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_INFO))
      {
        *buf = 68289539;
        v20 = 0;
        v21 = 2082;
        v22 = "";
        v23 = 2082;
        v24 = "assert";
        v25 = 2081;
        v26 = "queue";
        _os_log_impl(&dword_19B41C000, &self->super, OS_LOG_TYPE_INFO, "{msg%{public}.0s:[CMMotionContextSession] client queue is nil, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      }

      abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Framework/CoreMotion/Accessory/CMMotionContextSession.mm", 605, "[CMMotionContextSession startPdrUpdatesToQueue:andHandler:]");
      goto LABEL_41;
    }

    if (handler)
    {
      break;
    }

    if (qword_1EAFE2A58 != -1)
    {
      dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
    }

    v15 = qword_1EAFE2A60;
    queue = "assert";
    handler = "handler";
    if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v20 = 0;
      v21 = 2082;
      v22 = "";
      v23 = 2082;
      v24 = "assert";
      v25 = 2081;
      v26 = "handler";
      _os_log_impl(&dword_19B41C000, v15, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:[CMMotionContextSession] client handler is nil, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EAFE2A58 != -1)
      {
        dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
      }
    }

    v16 = qword_1EAFE2A60;
    if (os_signpost_enabled(qword_1EAFE2A60))
    {
      *buf = 68289539;
      v20 = 0;
      v21 = 2082;
      v22 = "";
      v23 = 2082;
      v24 = "assert";
      v25 = 2081;
      v26 = "handler";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v16, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "[CMMotionContextSession] client handler is nil", "{msg%{public}.0s:[CMMotionContextSession] client handler is nil, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EAFE2A58 != -1)
      {
        dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
      }
    }

    self = qword_1EAFE2A60;
    if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v20 = 0;
      v21 = 2082;
      v22 = "";
      v23 = 2082;
      v24 = "assert";
      v25 = 2081;
      v26 = "handler";
      _os_log_impl(&dword_19B41C000, &self->super, OS_LOG_TYPE_INFO, "{msg%{public}.0s:[CMMotionContextSession] client handler is nil, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Framework/CoreMotion/Accessory/CMMotionContextSession.mm", 606, "[CMMotionContextSession startPdrUpdatesToQueue:andHandler:]");
LABEL_41:
    __break(1u);
LABEL_42:
    dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
  }

  objc_sync_enter(self);
  pdrClientQueue = self->_pdrClientQueue;
  if (pdrClientQueue)
  {
    dispatch_release(pdrClientQueue);
  }

  pdrClientHandler = self->_pdrClientHandler;
  if (pdrClientHandler)
  {
    _Block_release(pdrClientHandler);
  }

  self->_pdrClientQueue = queue;
  dispatch_retain(queue);
  self->_pdrClientHandler = _Block_copy(handler);
  objc_sync_exit(self);
}

- (void)startMotionContextUpdatesToQueue:(id)queue andHandler:(id)handler
{
  v27 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2A58 != -1)
  {
    dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
  }

  v7 = qword_1EAFE2A60;
  if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_DEFAULT, "[CMMotionContextSession] Starting push updates", buf, 2u);
  }

  v8 = sub_19B420058();
  if (*(v8 + 160) <= 1 && *(v8 + 164) <= 1 && *(v8 + 168) <= 1 && !*(v8 + 152))
  {
    goto LABEL_12;
  }

  bzero(buf, 0x65CuLL);
  if (qword_1EAFE2A58 != -1)
  {
    goto LABEL_42;
  }

  while (1)
  {
    v18[0] = 0;
    LODWORD(v17) = 2;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2A60, 0, "[CMMotionContextSession] Starting push updates", v18, v17);
    v10 = v9;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMotionContextSession startMotionContextUpdatesToQueue:andHandler:]", "CoreLocation: %s\n", v9);
    if (v10 != buf)
    {
      free(v10);
    }

LABEL_12:
    if (!queue)
    {
      if (qword_1EAFE2A58 != -1)
      {
        dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
      }

      v13 = qword_1EAFE2A60;
      handler = "queue";
      if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_FAULT))
      {
        *buf = 68289539;
        v20 = 0;
        v21 = 2082;
        v22 = "";
        v23 = 2082;
        v24 = "assert";
        v25 = 2081;
        v26 = "queue";
        _os_log_impl(&dword_19B41C000, v13, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:[CMMotionContextSession] client queue is nil, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
        if (qword_1EAFE2A58 != -1)
        {
          dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
        }
      }

      v14 = qword_1EAFE2A60;
      if (os_signpost_enabled(qword_1EAFE2A60))
      {
        *buf = 68289539;
        v20 = 0;
        v21 = 2082;
        v22 = "";
        v23 = 2082;
        v24 = "assert";
        v25 = 2081;
        v26 = "queue";
        _os_signpost_emit_with_name_impl(&dword_19B41C000, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "[CMMotionContextSession] client queue is nil", "{msg%{public}.0s:[CMMotionContextSession] client queue is nil, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
        if (qword_1EAFE2A58 != -1)
        {
          dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
        }
      }

      self = qword_1EAFE2A60;
      if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_INFO))
      {
        *buf = 68289539;
        v20 = 0;
        v21 = 2082;
        v22 = "";
        v23 = 2082;
        v24 = "assert";
        v25 = 2081;
        v26 = "queue";
        _os_log_impl(&dword_19B41C000, &self->super, OS_LOG_TYPE_INFO, "{msg%{public}.0s:[CMMotionContextSession] client queue is nil, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      }

      abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Framework/CoreMotion/Accessory/CMMotionContextSession.mm", 627, "[CMMotionContextSession startMotionContextUpdatesToQueue:andHandler:]");
      goto LABEL_41;
    }

    if (handler)
    {
      break;
    }

    if (qword_1EAFE2A58 != -1)
    {
      dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
    }

    v15 = qword_1EAFE2A60;
    queue = "assert";
    handler = "handler";
    if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v20 = 0;
      v21 = 2082;
      v22 = "";
      v23 = 2082;
      v24 = "assert";
      v25 = 2081;
      v26 = "handler";
      _os_log_impl(&dword_19B41C000, v15, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:[CMMotionContextSession] client handler is nil, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EAFE2A58 != -1)
      {
        dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
      }
    }

    v16 = qword_1EAFE2A60;
    if (os_signpost_enabled(qword_1EAFE2A60))
    {
      *buf = 68289539;
      v20 = 0;
      v21 = 2082;
      v22 = "";
      v23 = 2082;
      v24 = "assert";
      v25 = 2081;
      v26 = "handler";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v16, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "[CMMotionContextSession] client handler is nil", "{msg%{public}.0s:[CMMotionContextSession] client handler is nil, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EAFE2A58 != -1)
      {
        dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
      }
    }

    self = qword_1EAFE2A60;
    if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v20 = 0;
      v21 = 2082;
      v22 = "";
      v23 = 2082;
      v24 = "assert";
      v25 = 2081;
      v26 = "handler";
      _os_log_impl(&dword_19B41C000, &self->super, OS_LOG_TYPE_INFO, "{msg%{public}.0s:[CMMotionContextSession] client handler is nil, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Framework/CoreMotion/Accessory/CMMotionContextSession.mm", 628, "[CMMotionContextSession startMotionContextUpdatesToQueue:andHandler:]");
LABEL_41:
    __break(1u);
LABEL_42:
    dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
  }

  objc_sync_enter(self);
  motionContextClientQueue = self->_motionContextClientQueue;
  if (motionContextClientQueue)
  {
    dispatch_release(motionContextClientQueue);
  }

  motionContextClientHandler = self->_motionContextClientHandler;
  if (motionContextClientHandler)
  {
    _Block_release(motionContextClientHandler);
  }

  self->_motionContextClientQueue = queue;
  dispatch_retain(queue);
  self->_motionContextClientHandler = _Block_copy(handler);
  objc_sync_exit(self);
}

- (void)feedSourceDeviceIMU:(const Sample *)u
{
  if (self->_logMSL)
  {
    sub_19B5E5DB4(self->_logger.__ptr_, &u->timestamp);
  }
}

- (void)feedAudioAccessoryIMU:(const void *)u
{
  v3 = MEMORY[0x1EEE9AC00](self, a2, u);
  v5 = v4;
  v6 = v3;
  v115 = *MEMORY[0x1E69E9840];
  if (*(v3 + 16) == 1)
  {
    sub_19B5E57B8(*(v3 + 8), v4);
  }

  v7 = *(v5 + 64);
  v8 = v7 - *(v6 + 12864);
  *(v6 + 12856) = *(v6 + 12856) + v8;
  *v95 = v7;
  v95[1] = *(v5 + 16);
  v9 = *(v5 + 24);
  v97 = *(v5 + 40);
  v10 = *(v5 + 48);
  v96 = v9;
  v98 = v10;
  v99 = *v5;
  sub_19B70A928(v6 + 6744, v95, &v92);
  sub_19B67D91C(v6 + 48, v95, &v94, &v88, v11);
  v13 = v88;
  *(v6 + 12800) = *v89;
  v14 = *&v89[16];
  v15 = v90;
  *(v6 + 12816) = *&v89[16];
  *(v6 + 12832) = v15;
  *(v6 + 12848) = v91;
  *(v6 + 12784) = v13;
  if (*(v6 + 12996) == 1)
  {
    v16 = *(v6 + 12952);
    v17 = v8;
    v19 = *(v16 + 280);
    v18 = *(v16 + 288);
    if (v18 <= v8)
    {
      v18 = v8;
    }

    if (v19 >= v17)
    {
      v19 = v8;
    }

    *(v16 + 280) = v19;
    *(v16 + 288) = v18;
    *(v16 + 296) = *(v16 + 296) + v17;
    ++*(v16 + 304);
    v20 = *&v90;
    v22 = *(v16 + 216);
    v21 = *(v16 + 224);
    if (v21 <= *&v90)
    {
      v21 = *&v90;
    }

    if (v22 >= *&v90)
    {
      v22 = *&v90;
    }

    *(v16 + 216) = v22;
    *(v16 + 224) = v21;
    *v14.i64 = v20 + *(v16 + 232);
    *(v16 + 232) = v14.i64[0];
    ++*(v16 + 240);
  }

  if (*(v6 + 12936))
  {
    v87[0] = sub_19B66BFF4(v5, v14);
    v87[1] = v23;
    v87[2] = v24;
    v87[3] = v25;
    v26 = sub_19B66C1A4(v87, *(v5 + 40), *(v5 + 44), *(v5 + 48));
    v28 = v27;
    v30 = v29;
    LODWORD(v84) = sub_19B66C1A4(v87, *(v5 + 16), *(v5 + 20), *(v5 + 24));
    *(&v84 + 4) = __PAIR64__(v32, v31);
    *(&v84 + 3) = v26;
    v85 = v28;
    v86 = v30;
    if (sub_19B659D88(*(v6 + 12936), &v84, &v82))
    {
      if (qword_1EAFE2A58 != -1)
      {
        dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
      }

      v33 = qword_1EAFE2A60;
      if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218496;
        v102 = v82.f32[0];
        v103 = 2048;
        v104 = v82.f32[1];
        v105 = 2048;
        v106 = v83;
        _os_log_impl(&dword_19B41C000, v33, OS_LOG_TYPE_DEFAULT, "[CMMotionContextSession] HML model predict velocity,.x,%.3f,.y,%.3f,.z,%.3f", buf, 0x20u);
      }

      v34 = sub_19B420058();
      if (*(v34 + 160) > 1 || *(v34 + 164) > 1 || *(v34 + 168) > 1 || *(v34 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2A58 != -1)
        {
          dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
        }

        *v100 = 134218496;
        *&v100[4] = v82.f32[0];
        *&v100[12] = 2048;
        *&v100[14] = v82.f32[1];
        *&v100[22] = 2048;
        *&v100[24] = v83;
        LODWORD(v79) = 32;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2A60, 0, "[CMMotionContextSession] HML model predict velocity,.x,%.3f,.y,%.3f,.z,%.3f", COERCE_DOUBLE(v100), v79, v80);
        v36 = v35;
        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMotionContextSession feedAudioAccessoryIMU:]", "CoreLocation: %s\n", v35);
        if (v36 != buf)
        {
          free(v36);
        }
      }

      if (*(v6 + 16) == 1)
      {
        v37 = *(v6 + 8);
        v38 = v82;
        v39 = v83;
        v40 = *(v5 + 64);
        v41 = v37[1];
        *v100 = v37 + 1;
        (*(v41 + 16))(v37 + 1);
        *&v100[16] = 256;
        if (*v37)
        {
          sub_19B517F80(buf);
          sub_19B531DD8(buf);
          Current = CFAbsoluteTimeGetCurrent();
          v112 |= 1u;
          v107 = Current;
          v43 = v110;
          *(v110 + 40) |= 1u;
          *(v43 + 32) = v40;
          __src = vcvtq_f64_f32(v38);
          v114 = v39;
          sub_19B5C60E8((v110 + 8), &__src, &v115, 3uLL);
          sub_19B50AF20(*v37, buf);
          sub_19B51DBD4(buf);
        }

        (*(v37[1] + 24))(v37 + 1);
      }
    }
  }

  v44 = v92;
  if (*(v6 + 12776) != v92)
  {
    *(v6 + 12776) = v92;
    objc_msgSend_notifyMotionContextClient_(v6, v12, v44);
    if (qword_1EAFE2A58 != -1)
    {
      dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
    }

    v45 = qword_1EAFE2A60;
    if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_DEFAULT))
    {
      v46 = *(v6 + 12776);
      *buf = 67109120;
      LODWORD(v102) = v46;
      _os_log_impl(&dword_19B41C000, v45, OS_LOG_TYPE_DEFAULT, "[CMMotionContextSession] MotionContext state changes to %u ", buf, 8u);
    }

    v47 = sub_19B420058();
    if (*(v47 + 160) > 1 || *(v47 + 164) > 1 || *(v47 + 168) > 1 || *(v47 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2A58 != -1)
      {
        dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
      }

      v48 = *(v6 + 12776);
      *v100 = 67109120;
      *&v100[4] = v48;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2A60, 0, "[CMMotionContextSession] MotionContext state changes to %u ", v100);
      v50 = v49;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMotionContextSession feedAudioAccessoryIMU:]", "CoreLocation: %s\n", v49);
      if (v50 != buf)
      {
        free(v50);
      }
    }
  }

  if (v88 == 1)
  {
    if (qword_1EAFE2A58 != -1)
    {
      dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
    }

    v51 = qword_1EAFE2A60;
    if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218240;
      v102 = *&v89[8];
      v103 = 2048;
      v104 = *&v89[16];
      _os_log_impl(&dword_19B41C000, v51, OS_LOG_TYPE_DEBUG, "[cmMotionContext] notifying step count: %2.2f,%2.2f\n", buf, 0x16u);
    }

    v52 = sub_19B420058();
    if (*(v52 + 160) > 1 || *(v52 + 164) > 1 || *(v52 + 168) > 1 || *(v52 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2A58 != -1)
      {
        dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
      }

      *v100 = 134218240;
      *&v100[4] = *&v89[8];
      *&v100[12] = 2048;
      *&v100[14] = *&v89[16];
      LODWORD(v79) = 22;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2A60, 2, "[cmMotionContext] notifying step count: %2.2f,%2.2f\n", COERCE_DOUBLE(v100), v79);
      v55 = v54;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMotionContextSession feedAudioAccessoryIMU:]", "CoreLocation: %s\n", v54);
      if (v55 != buf)
      {
        free(v55);
      }
    }

    objc_msgSend_notifyStepCountClient_(v6, v53, &v88);
    ++*(v6 + 12964);
  }

  v56 = *&v89[8] - *(v6 + 12904);
  v57 = *&v89[16] - *(v6 + 12912);
  if ((*(v6 + 12780) & 1) != 0 || sqrt(v56 * v56 + v57 * v57) > 0.3)
  {
    objc_msgSend_notifyPdrClient_(v6, v12, &v88);
    *(v6 + 12904) = *&v89[8];
    *(v6 + 12780) = 0;
    if (*(v6 + 12996) == 1)
    {
      v58 = sqrt(v56 * v56 + v57 * v57) + *(v6 + 12960);
      *(v6 + 12960) = v58;
    }
  }

  if (*(v6 + 16) == 1)
  {
    v59 = *(v6 + 8);
    v60 = *(v6 + 776);
    v61 = v59[1];
    *v100 = v59 + 1;
    (*(v61 + 16))(v59 + 1);
    *&v100[16] = 256;
    if (*v59)
    {
      sub_19B517F80(buf);
      sub_19B531D48(buf);
      v62 = CFAbsoluteTimeGetCurrent();
      v112 |= 1u;
      v107 = v62;
      v63 = v109;
      *(v109 + 12) |= 1u;
      *(v63 + 8) = v60;
      sub_19B50AF20(*v59, buf);
      sub_19B51DBD4(buf);
    }

    (*(v59[1] + 24))(v59 + 1);
    v64 = *(v6 + 8);
    v65 = v64[1];
    *v100 = v64 + 1;
    (*(v65 + 16))(v64 + 1);
    *&v100[16] = 256;
    if (*v64)
    {
      sub_19B517F80(buf);
      sub_19B531CB8(buf);
      v66 = CFAbsoluteTimeGetCurrent();
      v112 |= 1u;
      v107 = v66;
      v67 = v108;
      v68 = v92;
      *(v108 + 28) |= 2u;
      *(v67 + 6) = v68;
      v69 = v108;
      v70 = v93;
      *(v108 + 28) |= 1u;
      v69[2] = v70;
      sub_19B57C55C(v108);
      v71 = v108[1];
      *(v71 + 20) |= 2u;
      *(v71 + 16) = 0;
      v72 = v94;
      v73 = v108[1];
      *(v73 + 20) |= 1u;
      *(v73 + 8) = v72;
      sub_19B50AF20(*v64, buf);
      sub_19B51DBD4(buf);
    }

    (*(v64[1] + 24))(v64 + 1);
    v74 = *(v6 + 8);
    v81 = *&v89[8];
    v75 = v95[0];
    v76 = v74[1];
    *&__src.f64[0] = v74 + 1;
    (*(v76 + 16))(v74 + 1);
    LOWORD(v114) = 256;
    if (*v74)
    {
      sub_19B517F80(buf);
      sub_19B531A78(buf);
      v77 = CFAbsoluteTimeGetCurrent();
      v112 |= 1u;
      v107 = v77;
      v78 = v111;
      *(v111 + 64) |= 1u;
      *(v78 + 56) = v75;
      *v100 = vcvtq_f64_f32(*(&v90 + 8));
      *&v100[16] = vcvtq_f64_f32(v91);
      sub_19B5C60E8((v111 + 8), v100, buf, 4uLL);
      *v100 = vcvtq_f64_f32(vcvt_f32_f64(v81));
      *&v100[16] = 0;
      sub_19B5C60E8((v111 + 32), v100, &v100[24], 3uLL);
      sub_19B50AF20(*v74, buf);
      sub_19B51DBD4(buf);
    }

    (*(v74[1] + 24))(v74 + 1);
  }

  *(v6 + 12864) = *(v5 + 64);
  ++*(v6 + 12860);
}

- (void)feedAccessoryConfig:(const Config *)config
{
  v75 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2A58 != -1)
  {
    dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
  }

  v5 = qword_1EAFE2A60;
  if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_DEFAULT))
  {
    var0 = config->var0;
    var3 = config->var3;
    *buf = 67240963;
    *&buf[4] = var0;
    *&buf[8] = 2081;
    *&buf[10] = config->var1;
    v68 = 2081;
    var2 = config->var2;
    v70 = 1026;
    v71 = var3;
    _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_DEFAULT, "[CMMotionContextSession] Received accessoryDeviceMotion config. side,%{public}d,configuration,%{private}s,serialNumber,%{private}s,hardwareModel,%{public}d", buf, 0x22u);
  }

  v8 = sub_19B420058();
  if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2A58 != -1)
    {
      dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
    }

    v9 = config->var0;
    v10 = config->var3;
    LODWORD(v59) = 67240963;
    HIDWORD(v59) = v9;
    *v60 = 2081;
    *&v60[2] = config->var1;
    v61 = 2081;
    v62 = config->var2;
    v63 = 1026;
    v64 = v10;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2A60, 0, "[CMMotionContextSession] Received accessoryDeviceMotion config. side,%{public}d,configuration,%{private}s,serialNumber,%{private}s,hardwareModel,%{public}d", &v59, 34);
    v12 = v11;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMotionContextSession feedAccessoryConfig:]", "CoreLocation: %s\n", v11);
    if (v12 != buf)
    {
      free(v12);
    }
  }

  objc_sync_enter(self);
  *v60 = 0;
  v59 = 0;
  v13 = config->var3;
  if (v13 > 3)
  {
    if (v13 == 4)
    {
      if (config->var0 == 2)
      {
        v14 = &xmmword_19B7B7574;
      }

      else
      {
        if (config->var0 != 1)
        {
          if (qword_1EAFE2A58 != -1)
          {
            dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
          }

          v49 = qword_1EAFE2A60;
          if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_19B41C000, v49, OS_LOG_TYPE_ERROR, "[CMMotionContextSession] Error -- config side for kAccessoryHardwareModelB494 must be 1 or 2.", buf, 2u);
          }

          v50 = sub_19B420058();
          if ((*(v50 + 160) & 0x80000000) == 0 || (*(v50 + 164) & 0x80000000) == 0 || (*(v50 + 168) & 0x80000000) == 0 || *(v50 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE2A58 != -1)
            {
              dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
            }

            __p.n128_u16[0] = 0;
            LODWORD(v58) = 2;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2A60, 16, "[CMMotionContextSession] Error -- config side for kAccessoryHardwareModelB494 must be 1 or 2.", &__p, v58, v59, *v60);
            v18 = v51;
            sub_19B6BB7CC("Generic", 1, 0, 0, "[CMMotionContextSession feedAccessoryConfig:]", "CoreLocation: %s\n", v51);
            goto LABEL_97;
          }

          goto LABEL_99;
        }

        v14 = &xmmword_19B7B7564;
      }

      goto LABEL_69;
    }

    if (v13 != 5)
    {
      if (v13 == 6)
      {
        v14 = &xmmword_19B7B7534;
        goto LABEL_69;
      }

LABEL_39:
      if (!config->var6)
      {
        if (qword_1EAFE2A58 != -1)
        {
          dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
        }

        v26 = qword_1EAFE2A60;
        if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_ERROR))
        {
          v27 = config->var3;
          *buf = 67240192;
          *&buf[4] = v27;
          _os_log_impl(&dword_19B41C000, v26, OS_LOG_TYPE_ERROR, "[CMMotionContextSession] Error -- No H2H transformation for model %{public}d", buf, 8u);
        }

        v28 = sub_19B420058();
        if ((*(v28 + 160) & 0x80000000) == 0 || (*(v28 + 164) & 0x80000000) == 0 || (*(v28 + 168) & 0x80000000) == 0 || *(v28 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2A58 != -1)
          {
            dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
          }

          v29 = config->var3;
          __p.n128_u32[0] = 67240192;
          __p.n128_u32[1] = v29;
          LODWORD(v58) = 8;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2A60, 16, "[CMMotionContextSession] Error -- No H2H transformation for model %{public}d", &__p, v58, v59, *v60);
          v18 = v30;
          sub_19B6BB7CC("Generic", 1, 0, 0, "[CMMotionContextSession feedAccessoryConfig:]", "CoreLocation: %s\n", v30);
          goto LABEL_97;
        }

        goto LABEL_99;
      }

      v59 = *config->var7.elements;
      *v60 = config->var7.elements[2];
      v19 = config->var7.elements[3];
      if (qword_1EAFE2A58 != -1)
      {
        dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
      }

      v20 = qword_1EAFE2A60;
      if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_DEFAULT))
      {
        v21 = config->var3;
        *buf = 67240192;
        *&buf[4] = v21;
        _os_log_impl(&dword_19B41C000, v20, OS_LOG_TYPE_DEFAULT, "[CMMotionContextSession] Use the H2H transformation from IORegistry for model %{public}d", buf, 8u);
      }

      v22 = sub_19B420058();
      if (*(v22 + 160) > 1 || *(v22 + 164) > 1 || *(v22 + 168) > 1 || *(v22 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2A58 != -1)
        {
          dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
        }

        v23 = config->var3;
        __p.n128_u32[0] = 67240192;
        __p.n128_u32[1] = v23;
        LODWORD(v58) = 8;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2A60, 0, "[CMMotionContextSession] Use the H2H transformation from IORegistry for model %{public}d", &__p, v58);
        v25 = v24;
        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMotionContextSession feedAccessoryConfig:]", "CoreLocation: %s\n", v24);
        if (v25 != buf)
        {
          free(v25);
        }
      }

      goto LABEL_70;
    }

    if (config->var0 != 2)
    {
      if (config->var0 != 1)
      {
        if (qword_1EAFE2A58 != -1)
        {
          dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
        }

        v55 = qword_1EAFE2A60;
        if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v55, OS_LOG_TYPE_ERROR, "[CMMotionContextSession] Error -- config side for kAccessoryHardwareModelB698 must be 1 or 2.", buf, 2u);
        }

        v56 = sub_19B420058();
        if ((*(v56 + 160) & 0x80000000) == 0 || (*(v56 + 164) & 0x80000000) == 0 || (*(v56 + 168) & 0x80000000) == 0 || *(v56 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2A58 != -1)
          {
            dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
          }

          __p.n128_u16[0] = 0;
          LODWORD(v58) = 2;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2A60, 16, "[CMMotionContextSession] Error -- config side for kAccessoryHardwareModelB698 must be 1 or 2.", &__p, v58, v59, *v60);
          v18 = v57;
          sub_19B6BB7CC("Generic", 1, 0, 0, "[CMMotionContextSession feedAccessoryConfig:]", "CoreLocation: %s\n", v57);
          goto LABEL_97;
        }

        goto LABEL_99;
      }

LABEL_55:
      v14 = &xmmword_19B7B7584;
      goto LABEL_69;
    }

LABEL_56:
    v14 = &xmmword_19B7B7594;
    goto LABEL_69;
  }

  if (v13 == 1)
  {
    if (config->var0 != 2)
    {
      if (config->var0 != 1)
      {
        if (qword_1EAFE2A58 != -1)
        {
          dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
        }

        v15 = qword_1EAFE2A60;
        if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v15, OS_LOG_TYPE_ERROR, "[CMMotionContextSession] Error -- config side for kAccessoryHardwareModelB298 must be 1 or 2.", buf, 2u);
        }

        v16 = sub_19B420058();
        if ((*(v16 + 160) & 0x80000000) == 0 || (*(v16 + 164) & 0x80000000) == 0 || (*(v16 + 168) & 0x80000000) == 0 || *(v16 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2A58 != -1)
          {
            dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
          }

          __p.n128_u16[0] = 0;
          LODWORD(v58) = 2;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2A60, 16, "[CMMotionContextSession] Error -- config side for kAccessoryHardwareModelB298 must be 1 or 2.", &__p, v58, v59, *v60);
          v18 = v17;
          sub_19B6BB7CC("Generic", 1, 0, 0, "[CMMotionContextSession feedAccessoryConfig:]", "CoreLocation: %s\n", v17);
          goto LABEL_97;
        }

        goto LABEL_99;
      }

      goto LABEL_55;
    }

    goto LABEL_56;
  }

  if (v13 == 2)
  {
    v14 = &xmmword_19B7B7524;
    goto LABEL_69;
  }

  if (v13 != 3)
  {
    goto LABEL_39;
  }

  if (config->var0 == 2)
  {
    v14 = &xmmword_19B7B7554;
    goto LABEL_69;
  }

  if (config->var0 == 1)
  {
    v14 = &xmmword_19B7B7544;
LABEL_69:
    *buf = *v14;
    sub_19B41E130(buf, *buf);
    v59 = *buf;
    *v60 = *&buf[8];
    v19 = *&buf[12];
LABEL_70:
    *&self->_accessoryActivity.fAccessoryStepDetector.fHeadsetOrientation.elements[2] = v59;
    LODWORD(self->_accessoryActivity.fAccessoryStepDetector.fStepModel.timeSinceLastStepSecRatio[0]) = *v60;
    *(self->_accessoryActivity.fAccessoryStepDetector.fStepModel.timeSinceLastStepSecRatio + 1) = v19;
    ptr = self->_accessoryActivity.fSitStandDetector.__ptr_;
    if (ptr)
    {
      *(ptr + 76) = v59;
      *(ptr + 21) = *v60;
      *(ptr + 22) = v19;
    }

    self->_anon_31e0[0] = 1;
    if (qword_1EAFE2A58 != -1)
    {
      dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
    }

    v32 = qword_1EAFE2A60;
    if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v32, OS_LOG_TYPE_DEFAULT, "[CMPdr] This should only be called if using accessoryDM.", buf, 2u);
    }

    v33 = sub_19B420058();
    if (*(v33 + 160) > 1 || *(v33 + 164) > 1 || *(v33 + 168) > 1 || *(v33 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2A58 != -1)
      {
        dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
      }

      __p.n128_u16[0] = 0;
      LODWORD(v58) = 2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2A60, 0, "[CMPdr] This should only be called if using accessoryDM.", &__p, v58);
      v35 = v34;
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CMPdr::setHeadsetOrientation(const CMOQuaternion &)", "CoreLocation: %s\n", v34);
      if (v35 != buf)
      {
        free(v35);
      }
    }

    v36 = self->_pdr.fPdrEstimatorOnHead.__ptr_;
    if (!v36)
    {
      operator new();
    }

    *(v36 + 1) = v59;
    *(v36 + 4) = *v60;
    *(v36 + 5) = v19;
    *(v36 + 24) = 1;
    if (qword_1EAFE2A58 != -1)
    {
      dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
    }

    v37 = qword_1EAFE2A60;
    if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v37, OS_LOG_TYPE_DEFAULT, "[CMMotionContextSession] Setting H2H transform", buf, 2u);
    }

    v38 = sub_19B420058();
    if (*(v38 + 160) > 1 || *(v38 + 164) > 1 || *(v38 + 168) > 1 || *(v38 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2A58 != -1)
      {
        dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
      }

      __p.n128_u16[0] = 0;
      LODWORD(v58) = 2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2A60, 0, "[CMMotionContextSession] Setting H2H transform", &__p, v58);
      v18 = v39;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMotionContextSession feedAccessoryConfig:]", "CoreLocation: %s\n", v39);
LABEL_97:
      if (v18 != buf)
      {
        free(v18);
      }

      goto LABEL_99;
    }

    goto LABEL_99;
  }

  if (qword_1EAFE2A58 != -1)
  {
    dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
  }

  v52 = qword_1EAFE2A60;
  if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v52, OS_LOG_TYPE_ERROR, "[CMMotionContextSession] Error -- config side for kAccessoryHardwareModelB688 must be 1 or 2.", buf, 2u);
  }

  v53 = sub_19B420058();
  if ((*(v53 + 160) & 0x80000000) == 0 || (*(v53 + 164) & 0x80000000) == 0 || (*(v53 + 168) & 0x80000000) == 0 || *(v53 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2A58 != -1)
    {
      dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
    }

    __p.n128_u16[0] = 0;
    LODWORD(v58) = 2;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2A60, 16, "[CMMotionContextSession] Error -- config side for kAccessoryHardwareModelB688 must be 1 or 2.", &__p, v58, v59, *v60);
    v18 = v54;
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CMMotionContextSession feedAccessoryConfig:]", "CoreLocation: %s\n", v54);
    goto LABEL_97;
  }

LABEL_99:
  objc_sync_exit(self);
  if (self->_logMSL)
  {
    v40 = self->_logger.__ptr_;
    if (*v40)
    {
      v41 = *(v40 + 1);
      v59 = v40 + 8;
      (*(v41 + 16))(v40 + 8);
      *&v60[8] = 256;
      sub_19B517F80(buf);
      sub_19B532D98(buf);
      Current = CFAbsoluteTimeGetCurrent();
      v74 |= 1u;
      v73 = Current;
      sub_19B4CEB20(v72);
      v43 = v72[4];
      v44 = config->var0;
      *(v43 + 36) |= 2u;
      *(v43 + 28) = v44;
      v45 = v72[4];
      sub_19B428B50(&__p, config->var1);
      sub_19B5C62E0(v45, &__p);
      if (v66 < 0)
      {
        operator delete(__p.n128_u64[0]);
      }

      v46 = v72[4];
      sub_19B428B50(&__p, config->var2);
      sub_19B5C6334(v46, &__p);
      if (v66 < 0)
      {
        operator delete(__p.n128_u64[0]);
      }

      v47 = v72[4];
      v48 = config->var3;
      *(v47 + 36) |= 1u;
      *(v47 + 24) = v48;
      sub_19B50AF20(*v40, buf);
      sub_19B51DBD4(buf);
      (*(*(v40 + 1) + 24))(v40 + 8);
    }
  }
}

- (uint64_t)feedARKitWorldPoseWithTimestamp:(int8x16_t)timestamp pose:(int32x4_t)pose status:(__n128)status
{
  v59 = *MEMORY[0x1E69E9840];
  if (*(result + 16) == 1)
  {
    v10 = status.n128_f32[2] + (*timestamp.i32 + *&pose.i32[1]);
    if (v10 >= 0.0)
    {
      v19 = sqrtf(v10 + 1.0);
      *&v20 = v19 + v19;
      v21 = vrecpe_f32(v20);
      v22 = vmul_f32(v21, vrecps_f32(v20, v21));
      v23.i32[0] = vmul_f32(v22, vrecps_f32(v20, v22)).u32[0];
      v34 = vmul_n_f32(vsub_f32(vzip1_s32(*&vextq_s8(pose, pose, 8uLL), status.n128_u64[0]), vext_s8(status.n128_u64[0], *&vextq_s8(timestamp, timestamp, 8uLL), 4uLL)), v23.f32[0]);
      v24.f32[0] = *&timestamp.i32[1] - *pose.i32;
      v24.i32[1] = v20;
      v23.i32[1] = 0.25;
      v36 = vmul_f32(v24, v23);
    }

    else if (*timestamp.i32 < *&pose.i32[1] || *timestamp.i32 < status.n128_f32[2])
    {
      v12 = 1.0 - *timestamp.i32;
      if (*&pose.i32[1] >= status.n128_f32[2])
      {
        v37 = sqrtf(*&pose.i32[1] + (v12 - status.n128_f32[2]));
        *&v38 = v37 + v37;
        v39 = vrecpe_f32(v38);
        v40 = vmul_f32(v39, vrecps_f32(v38, v39));
        v41.i32[0] = vmul_f32(v40, vrecps_f32(v38, v40)).u32[0];
        v40.f32[0] = *&timestamp.i32[1] + *pose.i32;
        v40.i32[1] = v38;
        v36 = vmul_n_f32(vext_s8(vadd_f32(status.n128_u64[0], vdup_laneq_s32(pose, 2)), vsub_f32(status.n128_u64[0], *&vextq_s8(timestamp, timestamp, 8uLL)), 4uLL), v41.f32[0]);
        v41.i32[1] = 0.25;
        v34 = vmul_f32(v40, v41);
      }

      else
      {
        v13 = sqrtf(status.n128_f32[2] + (v12 - *&pose.i32[1]));
        v14.f32[0] = v13 + v13;
        v15 = vrecpe_f32(v14.u32[0]);
        v16 = vmul_f32(v15, vrecps_f32(v14.u32[0], v15));
        LODWORD(v17) = vmul_f32(v16, vrecps_f32(v14.u32[0], v16)).u32[0];
        v34 = vmul_n_f32(vadd_f32(vzip1_s32(*&vextq_s8(timestamp, timestamp, 8uLL), *&vextq_s8(pose, pose, 8uLL)), status.n128_u64[0]), v17);
        v14.f32[1] = *&timestamp.i32[1] - *pose.i32;
        __asm { FMOV            V1.2S, #0.25 }

        _D1.f32[1] = v17;
        v36 = vmul_f32(v14, _D1);
      }
    }

    else
    {
      v25 = sqrtf(*timestamp.i32 + ((1.0 - *&pose.i32[1]) - status.n128_f32[2]));
      v26.f32[0] = v25 + v25;
      v27 = vrecpe_f32(v26.u32[0]);
      v28 = vmul_f32(v27, vrecps_f32(v26.u32[0], v27));
      LODWORD(v29) = vmul_f32(v28, vrecps_f32(v26.u32[0], v28)).u32[0];
      v26.f32[1] = *&timestamp.i32[1] + *pose.i32;
      __asm { FMOV            V5.2S, #0.25 }

      _D5.f32[1] = v29;
      v34 = vmul_f32(v26, _D5);
      v35.i32[0] = vadd_f32(*&vextq_s8(timestamp, timestamp, 8uLL), status.n128_u64[0]).u32[0];
      v35.i32[1] = vsub_f32(vdup_laneq_s32(pose, 2), *&status).i32[1];
      v36 = vmul_n_f32(v35, v29);
    }

    v42 = *(result + 8);
    v43 = v42[1];
    v55 = v42 + 1;
    (*(v43 + 16))(v42 + 1, a7);
    v56 = 256;
    if (*v42)
    {
      sub_19B517F80(v51);
      sub_19B531C28(v51);
      Current = CFAbsoluteTimeGetCurrent();
      v54 |= 1u;
      v53 = Current;
      v45 = v52;
      *(v52 + 56) |= 1u;
      *(v45 + 32) = a2;
      v46 = v52;
      *(v52 + 56) |= 4u;
      *(v46 + 44) = a6.n128_u32[0];
      v47 = v52;
      *(v52 + 56) |= 8u;
      *(v47 + 48) = a6.n128_u32[1];
      v48 = v52;
      *(v52 + 56) |= 0x10u;
      *(v48 + 52) = a6.n128_u32[2];
      __src[0] = vcvtq_f64_f32(v34);
      __src[1] = vcvtq_f64_f32(v36);
      sub_19B5C60E8((v52 + 8), __src, v58, 4uLL);
      v49 = v52;
      *(v52 + 56) |= 2u;
      *(v49 + 40) = a8;
      sub_19B50AF20(*v42, v51);
      sub_19B51DBD4(v51);
    }

    return (*(v42[1] + 24))(v42 + 1);
  }

  return result;
}

- (void)feedGPSLocationWithTimestamp:(double)timestamp course:(double)course speed:(double)speed latitude:(double)latitude longitude:(double)longitude horizontalAccuracy:(double)accuracy
{
  if (self->_logMSL)
  {
    ptr = self->_logger.__ptr_;
    v15 = *(ptr + 1);
    v26 = ptr + 8;
    (*(v15 + 16))(ptr + 8, a2);
    v27 = 256;
    if (*ptr)
    {
      sub_19B517F80(v23);
      sub_19B532AC8(v23);
      Current = CFAbsoluteTimeGetCurrent();
      v25 |= 1u;
      *&v23[87] = Current;
      v17 = v24;
      *(v24 + 180) |= 0x800u;
      *(v17 + 96) = timestamp;
      v18 = v24;
      *(v24 + 180) |= 2u;
      *(v18 + 16) = course;
      v19 = v24;
      *(v24 + 180) |= 0x200u;
      *(v19 + 80) = speed;
      v20 = v24;
      *(v24 + 180) |= 0x40u;
      *(v20 + 56) = latitude;
      v21 = v24;
      *(v24 + 180) |= 0x80u;
      *(v21 + 64) = longitude;
      v22 = v24;
      *(v24 + 180) |= 0x20u;
      *(v22 + 48) = accuracy;
      sub_19B50AF20(*ptr, v23);
      sub_19B51DBD4(v23);
    }

    (*(*(ptr + 1) + 24))(ptr + 8);
  }
}

- (id).cxx_construct
{
  self->_logger.__ptr_ = 0;
  self->_deviceMotionDispatcher.__ptr_ = 0;
  *&self->_accessoryDeviceMotionDispatcher.__ptr_ = 0u;
  sub_19B66DC40(&self->_pdr);
  self->_pdr.fAlgType = 0;
  *&self->_pdr.fDirectionalityDetector._lastStartImpulseTimestamp = 0u;
  self->_pdr.fDirectionalityDetector._lastStepDirectionRadians = NAN;
  self->_pdr.fDirectionalityDetector._lastPosition = 0u;
  *&self->_pdr.fDirectionalityDetector._inertialBuffer.fHeadAndSize.fHead = 0xF500000000;
  *&self->_pdr.fPdrEstimatorOnHead.__ptr_ = 0u;
  *&self->_pdr.fPdrEstimatorHandSwing.__ptr_ = 0u;
  sub_19B70A498(&self->_accessoryActivity, 1);
  self->_result.step = 0;
  self->_result.startImpulse = NAN;
  self->_result.endImpulse = NAN;
  *&self->_result.stepsCount = 0;
  *self->_result.attitude.elements = 0;
  self->_result.speedMps = 0.0;
  *&self->_result.attitude.elements[2] = 0x3F80000000000000;
  self->hmlModel.__ptr_ = 0;
  self->_analyticsTracker.__ptr_ = 0;
  return self;
}

@end