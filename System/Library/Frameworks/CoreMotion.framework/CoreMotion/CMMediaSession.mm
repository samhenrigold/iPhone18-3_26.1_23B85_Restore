@interface CMMediaSession
+ (double)defaultFaceToDevicePitchAngle;
- (AudioAccessorySample)_getLastAudioAccessorySample;
- (BOOL)_disallowOpportunisticAnchorTrackingForFTClients:(int)clients clientMode:(int)mode;
- (BOOL)_start;
- (BOOL)_startPoseUpdatesToQueue:(id)queue andHandler:(id)handler;
- (id).cxx_construct;
- (id)_initWithOptions:(id)options;
- (int)_createPoseFromListenerOrientation:(const ListenerOrientation *)orientation Pose:(id *)pose;
- (int)_mapCMMediaSessionClientModeToRelDMClientMode:(int64_t)mode;
- (unint64_t)_getAuxSampleTimestamp:(const void *)timestamp currentTime:(double)time;
- (void)_disableLoggingForReplay;
- (void)_enableLoggingForReplayWithFilenamePrefix:(id)prefix filePath:(id)path;
- (void)_feedAccessoryConfig:(const Config *)config;
- (void)_feedAccessoryDeviceMotion:(const void *)motion;
- (void)_feedAccessoryInEarStatus:(const int *)status;
- (void)_feedActiveAudioRouteChangedEvent;
- (void)_feedAdaptiveLatencyJitterBufferLevel;
- (void)_feedDisplayCount:(unsigned int)count;
- (void)_feedFaceKitData:(id)data timestamp:(double)timestamp;
- (void)_feedLidAngle:(double)angle;
- (void)_feedPoseAnchor:(const Sample *)anchor facePoseError:(id *)error lidAngleDeg:(float)deg;
- (void)_feedPredictorEstimates;
- (void)_feedScreenUnlockedEvent:(BOOL)event;
- (void)_feedSourceDeviceIMU:(const Sample *)u;
- (void)_logEvent:(id)event;
- (void)_notifyClientHandler;
- (void)_readFrontCameraToDisplayCenterOffset;
- (void)_setFixedTransforms:(const CMOQuaternion *)transforms;
- (void)_setTrackingSchemeInternal:(int)internal;
- (void)_startDefaultsPreferenceUpdater;
- (void)_startHeadTracking;
- (void)_startJitterBufferLevelMonitor;
- (void)_startJitterBufferLevelRetryTimer;
- (void)_stop;
- (void)_stopDefaultsPreferenceUpdater;
- (void)_stopHeadTracking;
- (void)_stopJitterBufferLevelMonitor;
- (void)_stopJitterBufferLevelRetryTimer;
- (void)_triggerUserInteractedWithDeviceEvent;
- (void)_updateAnchorIntervalSettings;
- (void)_updateCameraControllerParameters;
- (void)_updateClientMode:(int64_t)mode;
- (void)_updateMinQuiescentPeriodForBTZ;
- (void)_updateTrackingScheme:(int64_t)scheme;
- (void)_updateTrackingSchemeSettings;
- (void)_updateUseFwdPredictionUserSettings;
- (void)_updateUseHeadToHeadsetTransformationEstimator;
- (void)_updateUserSettings;
- (void)dealloc;
- (void)feedPoseAnchorWithAttitude:(id)attitude position:()CMVector<float lidAngleDeg:(3UL>)deg numberOfDetectedFaces:(float)faces timestampUs:(int)us;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation CMMediaSession

+ (double)defaultFaceToDevicePitchAngle
{
  if ((atomic_load_explicit(&qword_1ED71CB38, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED71CB38))
  {
    sub_19B421798();
    v3 = sub_19B4426E4();
    v4 = 0.0;
    if (v3)
    {
      v4 = -20.0;
    }

    qword_1ED71CB30 = *&v4;
    __cxa_guard_release(&qword_1ED71CB38);
  }

  return *&qword_1ED71CB30;
}

- (void)_enableLoggingForReplayWithFilenamePrefix:(id)prefix filePath:(id)path
{
  v18 = *MEMORY[0x1E69E9840];
  self->_logForReplay = 1;
  if (qword_1EAFE2998 != -1)
  {
    dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
  }

  v7 = off_1EAFE29A0;
  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_INFO))
  {
    *buf = 138477827;
    pathCopy = path;
    _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_INFO, "[CMMediaSession] Logging to: %{private}@", buf, 0xCu);
  }

  v8 = sub_19B420058();
  if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    v14 = 138477827;
    pathCopy2 = path;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 1, "[CMMediaSession] Logging to: %{private}@", &v14, 12);
    v11 = v10;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _enableLoggingForReplayWithFilenamePrefix:filePath:]", "CoreLocation: %s\n", v10);
    if (v11 != buf)
    {
      free(v11);
    }
  }

  objc_msgSend_setMcLogPath_(self, v9, path);
  objc_msgSend_cStringUsingEncoding_(prefix, v12, 1);
  objc_msgSend_cStringUsingEncoding_(path, v13, 1);
  operator new();
}

- (void)_disableLoggingForReplay
{
  self->_logForReplay = 0;
  v2 = self->_headTrackingService.__ptr_ + 36864;
  v3 = *(self->_headTrackingService.__ptr_ + 4720);
  if (v3)
  {
    *(v3 + 7592) = 0;
  }

  v4 = *(v2 + 113);
  if (v4)
  {
    *(v4 + 5952) = 0;
  }

  sub_19B5C6594(&self->_logger, 0);
}

- (int)_createPoseFromListenerOrientation:(const ListenerOrientation *)orientation Pose:(id *)pose
{
  v56 = *MEMORY[0x1E69E9840];
  var1 = orientation->var1;
  v6 = *(self->_headTrackingService.__ptr_ + 678);
  timestamp = self->_lastAudioAccessorySample.timestamp;
  lastListenerOrientationGenerationTimestampSeconds = self->_lastListenerOrientationGenerationTimestampSeconds;
  lastPresentationTimestamp = self->_lastPresentationTimestamp;
  if (self->_inEarStatus == 4)
  {
    var2 = orientation->var2;
  }

  else
  {
    var2 = 0;
  }

  if (var2)
  {
    v11 = objc_msgSend_returnDefaultPose(self, a2, orientation);
  }

  else
  {
    v11 = 1;
  }

  if (objc_msgSend_returnRandomPose(self, a2, orientation))
  {
    v14 = objc_msgSend_returnDefaultPose(self, v12, v13) ^ 1;
  }

  else
  {
    v14 = 0;
  }

  ptr = self->_headTrackingService.__ptr_;
  v16 = *(ptr + 16082);
  v17 = *(*(ptr + 4717) + 112);
  if (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_f32(var1, var1)))))
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    v18 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v18, OS_LOG_TYPE_ERROR, "[CMMediaSession] quaternion has nans. Replacing with identity quaternion.", buf, 2u);
    }

    v19 = sub_19B420058();
    if ((*(v19 + 160) & 0x80000000) == 0 || (*(v19 + 164) & 0x80000000) == 0 || (*(v19 + 168) & 0x80000000) == 0 || *(v19 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      LOWORD(v44) = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 16, "[CMMediaSession] quaternion has nans. Replacing with identity quaternion.", &v44, 2);
      v21 = v20;
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMMediaSession _createPoseFromListenerOrientation:Pose:]", "CoreLocation: %s\n", v20);
      if (v21 != buf)
      {
        free(v21);
      }
    }

LABEL_23:
    v22 = xmmword_19B7B7990;
    v23 = 0uLL;
    if (v14)
    {
      goto LABEL_24;
    }

    goto LABEL_27;
  }

  if (v11)
  {
    goto LABEL_23;
  }

  v22 = vcvt_hight_f64_f32(var1);
  v23 = vcvtq_f64_f32(*var1.elements);
  if (v14)
  {
LABEL_24:
    v24 = arc4random_uniform(0x1E8481u) + -1000000.0;
    v25 = arc4random_uniform(0x1E8481u) + -1000000.0;
    v26 = arc4random_uniform(0x1E8481u);
    v27 = 0;
    v28 = v24;
    v29 = v25;
    v30 = v26 + -1000000.0;
    v44 = v28;
    v45 = v29;
    v46 = v30;
    v31 = 0.0;
    do
    {
      v31 = v31 + (*(&v44 + v27) * *(&v44 + v27));
      v27 += 4;
    }

    while (v27 != 12);
    v32 = sqrtf(v31);
    v33 = v28 / v32;
    v34 = v29 / v32;
    v35 = v30 / v32;
    v36 = (arc4random_uniform(0x8CA0u) / 100.0) * 0.017453;
    v44 = v33 * v36;
    v45 = v34 * v36;
    v46 = v35 * v36;
    sub_19B66C264(buf, &v44);
    v22 = vcvt_hight_f64_f32(*buf);
    v23 = vcvtq_f64_f32(*buf);
  }

LABEL_27:
  v41 = v22;
  v43 = v23;
  if ((v16 & (v17 != 2)) != 0)
  {
    v37 = 114;
  }

  else
  {
    v37 = 113;
  }

  v38 = [CMPose alloc];
  *buf = vextq_s8(v41, v43, 8uLL);
  v48 = vextq_s8(v43, v41, 8uLL);
  v50 = 0;
  v51 = 0;
  v49 = 0;
  v52 = v6 * 0.000001;
  v53 = timestamp;
  v54 = lastListenerOrientationGenerationTimestampSeconds;
  v55 = lastPresentationTimestamp * 0.000001;
  *pose = objc_msgSend_initWithPose_timestamp_(v38, v39, buf, var2);
  return v37;
}

- (BOOL)_disallowOpportunisticAnchorTrackingForFTClients:(int)clients clientMode:(int)mode
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = clients == 1 && (mode & 0xFFFFFFFE) == 2;
  v5 = v4;
  if (v4)
  {
    self->_scheme = 0;
    ptr = self->_headTrackingService.__ptr_;
    if (ptr)
    {
      sub_19B690FE4(ptr, 0);
    }

    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    v7 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_DEFAULT, "[CMMediaSession] Disallow opportunisticAnchor tracking for FT clients.", buf, 2u);
    }

    v8 = sub_19B420058();
    if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v12[0] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[CMMediaSession] Disallow opportunisticAnchor tracking for FT clients.", v12, 2);
      v10 = v9;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _disallowOpportunisticAnchorTrackingForFTClients:clientMode:]", "CoreLocation: %s\n", v9);
      if (v10 != buf)
      {
        free(v10);
      }
    }
  }

  return v5;
}

- (void)_setTrackingSchemeInternal:(int)internal
{
  v26 = *MEMORY[0x1E69E9840];
  if (self->_scheme != internal && (objc_msgSend__disallowOpportunisticAnchorTrackingForFTClients_clientMode_(self, a2, *&internal, self->_analyticsClientMode) & 1) == 0)
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    v5 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
    {
      scheme = self->_scheme;
      *buf = 67240448;
      internalCopy3 = scheme;
      v24 = 1026;
      internalCopy = internal;
      _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_DEFAULT, "[CMMediaSession] Tracking scheme changed - old: %{public}d new: %{public}d", buf, 0xEu);
    }

    v7 = sub_19B420058();
    if (*(v7 + 160) > 1 || *(v7 + 164) > 1 || *(v7 + 168) > 1 || *(v7 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v8 = self->_scheme;
      v18 = 67240448;
      internalCopy4 = v8;
      v20 = 1026;
      internalCopy2 = internal;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[CMMediaSession] Tracking scheme changed - old: %{public}d new: %{public}d", &v18, 14);
      v10 = v9;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _setTrackingSchemeInternal:]", "CoreLocation: %s\n", v9);
      if (v10 != buf)
      {
        free(v10);
      }
    }

    if (internal > 1)
    {
      if (internal == 2)
      {
        v11 = 2;
        goto LABEL_38;
      }

      if (internal == 3)
      {
        v11 = 3;
        goto LABEL_38;
      }
    }

    else
    {
      if (!internal)
      {
LABEL_20:
        self->_scheme = 0;
        goto LABEL_39;
      }

      if (internal == 1)
      {
        if (self->_displayCount >= 2)
        {
          self->_schemePrev = 1;
          goto LABEL_20;
        }

        v11 = 1;
LABEL_38:
        self->_scheme = v11;
LABEL_39:
        ptr = self->_headTrackingService.__ptr_;
        if (ptr)
        {
          sub_19B690FE4(ptr, self->_scheme);
        }

        return;
      }
    }

    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    v12 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67240192;
      internalCopy3 = internal;
      _os_log_impl(&dword_19B41C000, v12, OS_LOG_TYPE_DEFAULT, "[CMMediaSession] Invalid input scheme %{public}d", buf, 8u);
    }

    v13 = sub_19B420058();
    if (*(v13 + 160) > 1 || *(v13 + 164) > 1 || *(v13 + 168) > 1 || *(v13 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v18 = 67240192;
      internalCopy4 = internal;
      LODWORD(v17) = 8;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[CMMediaSession] Invalid input scheme %{public}d", &v18, v17);
      v15 = v14;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _setTrackingSchemeInternal:]", "CoreLocation: %s\n", v14);
      if (v15 != buf)
      {
        free(v15);
      }
    }

    goto LABEL_39;
  }
}

- (int)_mapCMMediaSessionClientModeToRelDMClientMode:(int64_t)mode
{
  if ((mode - 1) < 4)
  {
    return mode;
  }

  else
  {
    return 0;
  }
}

- (void)_readFrontCameraToDisplayCenterOffset
{
  v48 = *MEMORY[0x1E69E9840];
  p_offsetFromDisplayCenterToFrontCameraInSourceFrameMeters = &self->_offsetFromDisplayCenterToFrontCameraInSourceFrameMeters;
  *self->_offsetFromDisplayCenterToFrontCameraInSourceFrameMeters.elements = 0;
  self->_offsetFromDisplayCenterToFrontCameraInSourceFrameMeters.elements[2] = 0.0;
  v4 = MGCopyAnswer();
  if (!v4)
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    v12 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v12, OS_LOG_TYPE_DEFAULT, "[CMMediaSession] Anchor offset from display center is not available. Defaulting to zero.", buf, 2u);
    }

    v13 = sub_19B420058();
    if (*(v13 + 160) <= 1 && *(v13 + 164) <= 1 && *(v13 + 168) <= 1 && !*(v13 + 152))
    {
      return;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    LOWORD(v36) = 0;
    v15 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[CMMediaSession] Anchor offset from display center is not available. Defaulting to zero.", &v36, 2);
LABEL_36:
    v11 = v14;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _readFrontCameraToDisplayCenterOffset]", "CoreLocation: %s\n", v15);
LABEL_37:
    if (v11 != buf)
    {
      free(v11);
    }

    return;
  }

  v5 = v4;
  v6 = CFGetTypeID(v4);
  if (v6 == CFArrayGetTypeID() && CFArrayGetCount(v5) > 1)
  {
    v16 = v5;
    v18 = objc_msgSend_objectAtIndexedSubscript_(v16, v17, 0);
    objc_msgSend_floatValue(v18, v19, v20);
    v35 = v21;
    v23 = objc_msgSend_objectAtIndexedSubscript_(v16, v22, 1);
    objc_msgSend_floatValue(v23, v24, v25);
    v26.i32[1] = v35;
    *p_offsetFromDisplayCenterToFrontCameraInSourceFrameMeters->elements = vmul_f32(v26, vdup_n_s32(0x3A83126Fu));
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    v27 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
    {
      v28 = (self->_offsetFromDisplayCenterToFrontCameraInSourceFrameMeters.elements[0] * 1000.0);
      v29 = (self->_offsetFromDisplayCenterToFrontCameraInSourceFrameMeters.elements[1] * 1000.0);
      v30 = (self->_offsetFromDisplayCenterToFrontCameraInSourceFrameMeters.elements[2] * 1000.0);
      *buf = 134349568;
      v43 = v28;
      v44 = 2050;
      v45 = v29;
      v46 = 2050;
      v47 = v30;
      _os_log_impl(&dword_19B41C000, v27, OS_LOG_TYPE_DEFAULT, "[CMMediaSession] Anchor offset from display center x: %{public}.1f mm, y: %{public}.1f mm, z: %{public}.1f mm", buf, 0x20u);
    }

    v31 = sub_19B420058();
    if (*(v31 + 160) <= 1 && *(v31 + 164) <= 1 && *(v31 + 168) <= 1 && !*(v31 + 152))
    {
      return;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    v32 = (self->_offsetFromDisplayCenterToFrontCameraInSourceFrameMeters.elements[0] * 1000.0);
    v33 = (self->_offsetFromDisplayCenterToFrontCameraInSourceFrameMeters.elements[1] * 1000.0);
    v34 = (self->_offsetFromDisplayCenterToFrontCameraInSourceFrameMeters.elements[2] * 1000.0);
    v36 = 134349568;
    v37 = v32;
    v38 = 2050;
    v39 = v33;
    v40 = 2050;
    v41 = v34;
    v15 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[CMMediaSession] Anchor offset from display center x: %{public}.1f mm, y: %{public}.1f mm, z: %{public}.1f mm", &v36, 32);
    goto LABEL_36;
  }

  CFRelease(v5);
  if (qword_1EAFE2998 != -1)
  {
    dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
  }

  v7 = off_1EAFE29A0;
  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_ERROR, "[CMMediaSession] Anchor offset from display center data has wrong type. Defaulting to zero.", buf, 2u);
  }

  v8 = sub_19B420058();
  if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    LOWORD(v36) = 0;
    v9 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 16, "[CMMediaSession] Anchor offset from display center data has wrong type. Defaulting to zero.", &v36, 2);
    v11 = v10;
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CMMediaSession _readFrontCameraToDisplayCenterOffset]", "CoreLocation: %s\n", v9);
    goto LABEL_37;
  }
}

- (id)_initWithOptions:(id)options
{
  v55 = *MEMORY[0x1E69E9840];
  v51.receiver = self;
  v51.super_class = CMMediaSession;
  v5 = [(CMMediaSession *)&v51 init];
  v6 = v5;
  if (v5)
  {
    v5[72] = 0;
    *(v5 + 213) = 0;
    *(v5 + 89) = 0;
    *(v5 + 520) = 0u;
    *(v5 + 536) = 0u;
    *(v5 + 545) = 0u;
    *(v5 + 13) = 0xBFF0000000000000;
    *(v5 + 14) = 0x1FFFFFFFFLL;
    *(v5 + 19) = 0;
    *(v5 + 20) = 0;
    *(v5 + 86) = 0;
    *(v5 + 15) = 0;
    v5[128] = 0;
    *(v5 + 170) = 1089470464;
    *(v5 + 104) = objc_alloc_init(CMDeviceOrientationManager);
    v6[210] = 0;
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    v7 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138477827;
      *&buf[4] = options;
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_DEFAULT, "[CMMediaSession] Creating CMMediaSession with options: %{private}@", buf, 0xCu);
    }

    v8 = sub_19B420058();
    if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v52 = 138477827;
      optionsCopy = options;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[CMMediaSession] Creating CMMediaSession with options: %{private}@", &v52, 12);
      v11 = v10;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _initWithOptions:]", "CoreLocation: %s\n", v10);
      if (v11 != buf)
      {
        free(v11);
      }
    }

    if (options)
    {
      if (objc_msgSend_valueForKey_(options, v9, @"CMMediaSessionClientMode"))
      {
        v13 = objc_msgSend_objectForKeyedSubscript_(options, v12, @"CMMediaSessionClientMode");
        v16 = objc_msgSend_intValue(v13, v14, v15);
        v18 = objc_msgSend__mapCMMediaSessionClientModeToRelDMClientMode_(v6, v17, v16);
        v6[86] = v18;
        v6[19] = v18;
      }

      if (objc_msgSend_valueForKey_(options, v12, @"AlwaysOnAnchor"))
      {
        v20 = objc_msgSend_objectForKeyedSubscript_(options, v19, @"AlwaysOnAnchor");
        if (objc_msgSend_BOOLValue(v20, v21, v22))
        {
          v6[20] = 2;
        }
      }

      if (objc_msgSend_valueForKey_(options, v19, @"OpportunisticAnchor"))
      {
        v24 = objc_msgSend_objectForKeyedSubscript_(options, v23, @"OpportunisticAnchor");
        if (objc_msgSend_BOOLValue(v24, v25, v26))
        {
          v6[20] = 1;
        }
      }

      if (objc_msgSend_valueForKey_(options, v23, @"TrackingScheme"))
      {
        v28 = objc_msgSend_objectForKeyedSubscript_(options, v27, @"TrackingScheme");
        if (objc_msgSend_intValue(v28, v29, v30))
        {
          v31 = objc_msgSend_objectForKeyedSubscript_(options, v27, @"TrackingScheme");
          v34 = objc_msgSend_intValue(v31, v32, v33);
          if (v34 <= 3)
          {
            v6[20] = v34;
          }
        }
      }

      if (objc_msgSend_valueForKey_(options, v27, @"AnchorRateHz"))
      {
        v36 = objc_msgSend_objectForKeyedSubscript_(options, v35, @"AnchorRateHz");
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v49 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v37, v38);
          objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v49, v50, a2, v6, @"CMMediaSession.mm", 651, @"Invalid parameter not satisfying: %@", @"[AnchorRateHzValue isKindOfClass:[NSNumber class]]");
        }

        objc_msgSend_floatValue(v36, v37, v38);
        *(v6 + 83) = (1000000.0 / v39);
      }

      if (objc_msgSend_valueForKey_(options, v35, @"OnlineHeadToHeadsetTransformationEstimator"))
      {
        v41 = objc_msgSend_objectForKeyedSubscript_(options, v40, @"OnlineHeadToHeadsetTransformationEstimator");
        if (objc_msgSend_BOOLValue(v41, v42, v43))
        {
          *(v6 + 100) = 1;
        }
      }
    }

    v6[62] = -1;
    *(v6 + 33) = 0;
    v6[70] = -1;
    *(v6 + 77) = objc_opt_new();
    if ((objc_msgSend_isActivityAvailable(CMMotionActivityManager, v44, v45) & 1) != 0 || objc_msgSend_isActivityLiteAvailable(CMMotionActivityManager, v46, v47))
    {
      *(v6 + 75) = objc_opt_new();
    }

    *(v6 + 76) = objc_opt_new();
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  if (self->_started)
  {
    objc_msgSend__stop(self, a2, v2);
  }

  objc_msgSend__disableLoggingForReplay(self, a2, v2);

  v4.receiver = self;
  v4.super_class = CMMediaSession;
  [(CMMediaSession *)&v4 dealloc];
}

- (BOOL)_start
{
  v36 = *MEMORY[0x1E69E9840];
  objc_sync_enter(self);
  started = self->_started;
  if (!started)
  {
    self->_started = 1;
    objc_sync_exit(self);
    if (!self->_accessoryDeviceMotionConfigDispatcher.__ptr_)
    {
      operator new();
    }

    objc_msgSend__startDefaultsPreferenceUpdater(self, v8, v9);
    if (!self->_accessoryDeviceMotionInEarStatusDispatcher.__ptr_)
    {
      operator new();
    }

    objc_sync_enter(self);
    v10 = sub_19B6D6344();
    v11 = sub_19B74FC3C(v10);
    if (v11 == 5)
    {
      v12 = 4;
    }

    else
    {
      v12 = v11;
    }

    if (self->_inEarStatusGatingEnabled)
    {
      v13 = v12;
    }

    else
    {
      v13 = 4;
    }

    self->_inEarStatus = v13;
    if (self->_logForReplay)
    {
      ptr = self->_logger.__ptr_;
      v15 = mach_continuous_time();
      v16 = sub_19B41E070(v15);
      sub_19B5E7BFC(ptr, v13, v16);
    }

    objc_sync_exit(self);
    if (self->_inEarStatus == 4 && (sub_19B6D6344(), v17 = sub_19B7851B0(), sub_19B787CB8(v17)))
    {
      v18 = sub_19B420D84();
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = sub_19B63DBB0;
      v33[3] = &unk_1E7532988;
      v33[4] = self;
      sub_19B420C9C(v18, v33);
    }

    else
    {
      sub_19B6D6344();
      v21 = sub_19B7851B0();
      v22 = sub_19B787CB8(v21);
      objc_msgSend__notifyClientHandler(self, v23, v24);
      if (v22)
      {
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        v25 = off_1EAFE29A0;
        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v25, OS_LOG_TYPE_DEFAULT, "[CMMediaSession] #Warning Not starting head tracking because one bud is out of ear!", buf, 2u);
        }

        v26 = sub_19B420058();
        if (*(v26 + 160) <= 1 && *(v26 + 164) <= 1 && *(v26 + 168) <= 1 && !*(v26 + 152))
        {
          goto LABEL_54;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        v34[0] = 0;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[CMMediaSession] #Warning Not starting head tracking because one bud is out of ear!", v34, 2);
        v28 = v27;
        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _start]", "CoreLocation: %s\n", v27);
      }

      else
      {
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        v29 = off_1EAFE29A0;
        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v29, OS_LOG_TYPE_ERROR, "[CMMediaSession] Not starting head tracking because the connected device is not supported!", buf, 2u);
        }

        v30 = sub_19B420058();
        if ((*(v30 + 160) & 0x80000000) != 0 && (*(v30 + 164) & 0x80000000) != 0 && (*(v30 + 168) & 0x80000000) != 0 && !*(v30 + 152))
        {
          goto LABEL_54;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        v34[0] = 0;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 16, "[CMMediaSession] Not starting head tracking because the connected device is not supported!", v34, 2);
        v28 = v31;
        sub_19B6BB7CC("Generic", 1, 0, 0, "[CMMediaSession _start]", "CoreLocation: %s\n", v31);
      }

      if (v28 != buf)
      {
        free(v28);
      }
    }

LABEL_54:
    objc_msgSend__startJitterBufferLevelMonitor(self, v19, v20);
    return !started;
  }

  if (qword_1EAFE2998 != -1)
  {
    dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
  }

  v4 = off_1EAFE29A0;
  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_DEFAULT, "[CMMediaSession] _start is called multiple times", buf, 2u);
  }

  v5 = sub_19B420058();
  if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    v34[0] = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[CMMediaSession] _start is called multiple times", v34, 2);
    v7 = v6;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _start]", "CoreLocation: %s\n", v6);
    if (v7 != buf)
    {
      free(v7);
    }
  }

  objc_sync_exit(self);
  return !started;
}

- (void)_startHeadTracking
{
  v58 = *MEMORY[0x1E69E9840];
  if (!self->_analyticsTracker.__ptr_)
  {
    operator new();
  }

  v3 = mach_continuous_time();
  self->_sessionStartTime = sub_19B41E070(v3);
  sub_19B6A7EE8(self->_analyticsTracker.__ptr_, @"sessionDuration");
  sub_19B6A7EE8(self->_analyticsTracker.__ptr_ + 30, @"auxAndSrcQuiescent");
  sessionStartTime = self->_sessionStartTime;
  self->_lastInBTZTime = sessionStartTime;
  self->_lastAccessoryDMTime = sessionStartTime;
  self->_previousTrackingEnabled = 1;
  self->_lastDistractedViewingStartTime = 0.0;
  ptr = self->_analyticsTracker.__ptr_;
  if (ptr)
  {
    *(ptr + 559) = self->_analyticsClientMode;
  }

  if (sub_19B424AE0() && !self->_disable2IMU && !self->_deviceMotionDispatcher.__ptr_)
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    v6 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_DEFAULT, "[CMMediaSession] Starting source DM", buf, 2u);
    }

    v7 = sub_19B420058();
    if (*(v7 + 160) > 1 || *(v7 + 164) > 1 || *(v7 + 168) > 1 || *(v7 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v56[0] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[CMMediaSession] Starting source DM", v56, 2);
      v9 = v8;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _startHeadTracking]", "CoreLocation: %s\n", v8);
      if (v9 != buf)
      {
        free(v9);
      }
    }

    v10 = [CLDeviceMotionProperties alloc];
    objc_msgSend_initWithMode_(v10, v11, 3);
    operator new();
  }

  if (!self->_accessoryDeviceMotionDispatcher.__ptr_)
  {
    *(sub_19B6D6344() + 28) = 1;
    *(sub_19B6D6344() + 420) = self->_analyticsClientMode;
    operator new();
  }

  if (!self->_accessoryMonitorDispatcher.__ptr_)
  {
    v12 = sub_19B7851B0();
    if (!sub_19B787D0C(v12))
    {
      operator new();
    }
  }

  sub_19B6A7EE8(self->_analyticsTracker.__ptr_ + 42, @"durationOfSessionHeadtracked");
  v55[0] = MEMORY[0x1E69E9820];
  v55[1] = 3221225472;
  v55[2] = sub_19B63E730;
  v55[3] = &unk_1E7533A18;
  v55[4] = self;
  if (objc_msgSend_isActivityAvailable(CMMotionActivityManager, v13, v14) && !self->_disable2IMU)
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    v22 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v22, OS_LOG_TYPE_DEFAULT, "[CMMediaSession] Starting Motion Activity updates", buf, 2u);
    }

    v23 = sub_19B420058();
    if (*(v23 + 160) > 1 || *(v23 + 164) > 1 || *(v23 + 168) > 1 || *(v23 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v56[0] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[CMMediaSession] Starting Motion Activity updates", v56, 2);
      v26 = v25;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _startHeadTracking]", "CoreLocation: %s\n", v25);
      if (v26 != buf)
      {
        free(v26);
      }
    }

    objc_msgSend_startActivityUpdatesToQueue_withHandler_(self->_activityManager, v24, self->_activityQueue, v55);
  }

  else if (objc_msgSend_isActivityLiteAvailable(CMMotionActivityManager, v15, v16) && !self->_disable2IMU)
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    v27 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v27, OS_LOG_TYPE_DEFAULT, "[CMMediaSession] Starting Motion Activity Lite updates", buf, 2u);
    }

    v28 = sub_19B420058();
    if (*(v28 + 160) > 1 || *(v28 + 164) > 1 || *(v28 + 168) > 1 || *(v28 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v56[0] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[CMMediaSession] Starting Motion Activity Lite updates", v56, 2);
      v31 = v30;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _startHeadTracking]", "CoreLocation: %s\n", v30);
      if (v31 != buf)
      {
        free(v31);
      }
    }

    objc_msgSend_startActivityLiteUpdatesToQueue_withHandler_(self->_activityManager, v29, self->_activityQueue, v55);
  }

  else
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    v17 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v17, OS_LOG_TYPE_DEFAULT, "[CMMediaSession] Motion Activity or Activity Lite updates are not available", buf, 2u);
    }

    v18 = sub_19B420058();
    if (*(v18 + 160) > 1 || *(v18 + 164) > 1 || *(v18 + 168) > 1 || *(v18 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v56[0] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[CMMediaSession] Motion Activity or Activity Lite updates are not available", v56, 2);
      v21 = v20;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _startHeadTracking]", "CoreLocation: %s\n", v20);
      if (v21 != buf)
      {
        free(v21);
      }
    }
  }

  headphoneActivityManager = self->_headphoneActivityManager;
  activityQueue = self->_activityQueue;
  v54[0] = MEMORY[0x1E69E9820];
  v54[1] = 3221225472;
  v54[2] = sub_19B64048C;
  v54[3] = &unk_1E7533A68;
  v54[4] = self;
  objc_msgSend_startStatusUpdatesToQueue_withHandler_(headphoneActivityManager, v19, activityQueue, v54);
  mcSession = self->_mcSession;
  if (mcSession)
  {
    goto LABEL_69;
  }

  if (self->_motionContextSessonEnabled)
  {
    v38 = objc_opt_new();
    v40 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v39, self->_logForReplay);
    objc_msgSend_setObject_forKeyedSubscript_(v38, v41, v40, @"kCMMotionContextSessionLogMSL");
    if (self->_logForReplay)
    {
      v44 = objc_msgSend_mcLogPath(self, v42, v43);
      objc_msgSend_setObject_forKeyedSubscript_(v38, v45, v44, @"kCMMotionContextSessionMSLFilePath");
    }

    v46 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v42, self->_humanMotionLearningModelEnabled);
    objc_msgSend_setObject_forKeyedSubscript_(v38, v47, v46, @"kCMMotionContextSessionUseMLModel");
    v48 = [CMMotionContextSession alloc];
    mcSession = objc_msgSend_initWithOptions_(v48, v49, v38);
    self->_mcSession = mcSession;
    if (mcSession)
    {
LABEL_69:
      objc_msgSend_start(mcSession, v34, v35);
      objc_msgSend_setTrackingClientMode_(self->_mcSession, v37, *(self->_headTrackingService.__ptr_ + 3));
    }
  }

  deviceOrientationManager = self->_deviceOrientationManager;
  v51 = objc_msgSend_mainQueue(MEMORY[0x1E696ADC8], v34, v35);
  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 3221225472;
  v53[2] = sub_19B643168;
  v53[3] = &unk_1E7533A90;
  v53[4] = self;
  objc_msgSend_startDeviceOrientationUpdatesToQueue_withHandler_(deviceOrientationManager, v52, v51, v53);
}

- (void)_triggerUserInteractedWithDeviceEvent
{
  v3 = sub_19B420D84();
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_19B6431F8;
  v4[3] = &unk_1E7532988;
  v4[4] = self;
  sub_19B420C9C(v3, v4);
}

- (BOOL)_startPoseUpdatesToQueue:(id)queue andHandler:(id)handler
{
  v28 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2998 != -1)
  {
    dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
  }

  v7 = off_1EAFE29A0;
  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_DEFAULT, "[CMMediaSession] Starting push updates", buf, 2u);
  }

  v8 = sub_19B420058();
  if (*(v8 + 160) <= 1 && *(v8 + 164) <= 1 && *(v8 + 168) <= 1 && !*(v8 + 152))
  {
    goto LABEL_12;
  }

  bzero(buf, 0x65CuLL);
  if (qword_1EAFE2998 != -1)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v19[0] = 0;
    LODWORD(v18) = 2;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[CMMediaSession] Starting push updates", v19, v18);
    v10 = v9;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _startPoseUpdatesToQueue:andHandler:]", "CoreLocation: %s\n", v9);
    if (v10 != buf)
    {
      free(v10);
    }

LABEL_12:
    if (queue)
    {
      break;
    }

    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    v14 = off_1EAFE29A0;
    handler = "queue";
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v21 = 0;
      v22 = 2082;
      v23 = "";
      v24 = 2082;
      v25 = "assert";
      v26 = 2081;
      v27 = "queue";
      _os_log_impl(&dword_19B41C000, v14, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:[CMMediaSession] client queue is nil, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }
    }

    v15 = off_1EAFE29A0;
    if (os_signpost_enabled(off_1EAFE29A0))
    {
      *buf = 68289539;
      v21 = 0;
      v22 = 2082;
      v23 = "";
      v24 = 2082;
      v25 = "assert";
      v26 = 2081;
      v27 = "queue";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "[CMMediaSession] client queue is nil", "{msg%{public}.0s:[CMMediaSession] client queue is nil, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }
    }

    self = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v21 = 0;
      v22 = 2082;
      v23 = "";
      v24 = 2082;
      v25 = "assert";
      v26 = 2081;
      v27 = "queue";
      _os_log_impl(&dword_19B41C000, &self->super, OS_LOG_TYPE_INFO, "{msg%{public}.0s:[CMMediaSession] client queue is nil, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Framework/CoreMotion/Accessory/CMMediaSession.mm", 1316, "[CMMediaSession _startPoseUpdatesToQueue:andHandler:]");
LABEL_37:
    dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
  }

  if (!handler)
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    v16 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v21 = 0;
      v22 = 2082;
      v23 = "";
      v24 = 2082;
      v25 = "assert";
      v26 = 2081;
      v27 = "handler";
      _os_log_impl(&dword_19B41C000, v16, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:[CMMediaSession] client handler is nil, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }
    }

    v17 = off_1EAFE29A0;
    if (os_signpost_enabled(off_1EAFE29A0))
    {
      *buf = 68289539;
      v21 = 0;
      v22 = 2082;
      v23 = "";
      v24 = 2082;
      v25 = "assert";
      v26 = 2081;
      v27 = "handler";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v17, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "[CMMediaSession] client handler is nil", "{msg%{public}.0s:[CMMediaSession] client handler is nil, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }
    }

    self = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v21 = 0;
      v22 = 2082;
      v23 = "";
      v24 = 2082;
      v25 = "assert";
      v26 = 2081;
      v27 = "handler";
      _os_log_impl(&dword_19B41C000, &self->super, OS_LOG_TYPE_INFO, "{msg%{public}.0s:[CMMediaSession] client handler is nil, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Framework/CoreMotion/Accessory/CMMediaSession.mm", 1317, "[CMMediaSession _startPoseUpdatesToQueue:andHandler:]");
    goto LABEL_37;
  }

  self->_clientQueue = queue;
  dispatch_retain(queue);
  self->_clientHandler = _Block_copy(handler);
  return objc_msgSend__start(self, v11, v12);
}

- (void)_stopHeadTracking
{
  v83 = *MEMORY[0x1E69E9840];
  v3 = mach_continuous_time();
  v4 = sub_19B41E070(v3);
  p_analyticsTracker = &self->_analyticsTracker;
  ptr = self->_analyticsTracker.__ptr_;
  if (ptr)
  {
    v7 = self->_headTrackingService.__ptr_ + 12288;
    if ((*(self->_headTrackingService.__ptr_ + 16064) & 1) == 0 && *(ptr + 3) > 0.0)
    {
      v8 = v4 - self->_lastInBTZTime;
      v9 = *(ptr + 85);
      if (v9 <= v8)
      {
        v9 = v4 - self->_lastInBTZTime;
      }

      *(ptr + 85) = v9;
      v10 = *(ptr + 84);
      if (v10 >= v8)
      {
        v10 = v8;
      }

      *(ptr + 84) = v10;
      *(ptr + 86) = v8 + *(ptr + 86);
      ++*(ptr + 174);
    }

    v11 = v4 - self->_lastAccessoryDMTime;
    v12 = *(ptr + 81);
    if (v12 <= v11)
    {
      v12 = v4 - self->_lastAccessoryDMTime;
    }

    *(ptr + 81) = v12;
    v13 = *(ptr + 80);
    if (v13 >= v11)
    {
      v13 = v11;
    }

    *(ptr + 80) = v13;
    *(ptr + 82) = v11 + *(ptr + 82);
    ++*(ptr + 166);
    if (!self->_previousTrackingEnabled && v7[3794] == 1)
    {
      v14 = v4 - self->_lastDistractedViewingStartTime;
      v15 = *(ptr + 105);
      if (v15 <= v14)
      {
        v15 = v14;
      }

      *(ptr + 105) = v15;
      v16 = *(ptr + 104);
      if (v16 >= v14)
      {
        v16 = v14;
      }

      *(ptr + 104) = v16;
      *(ptr + 106) = v14 + *(ptr + 106);
      ++*(ptr + 214);
      v17 = *(ptr + 493);
      if (v17 != -1)
      {
        *(ptr + 493) = v17 + 1;
      }
    }

    sub_19B6A80D8(ptr, @"sessionDuration");
    v18 = p_analyticsTracker->__ptr_;
    if (*(p_analyticsTracker->__ptr_ + 24) > 0.0)
    {
      sub_19B6A80D8(p_analyticsTracker->__ptr_ + 24, &stru_1F0E3D7A0);
      v18 = p_analyticsTracker->__ptr_;
    }

    if (*(v18 + 26) > 0.0)
    {
      sub_19B6A80D8(v18 + 26, &stru_1F0E3D7A0);
      v18 = p_analyticsTracker->__ptr_;
    }

    if (*(v18 + 28) > 0.0)
    {
      sub_19B6A80D8(v18 + 28, &stru_1F0E3D7A0);
      v18 = p_analyticsTracker->__ptr_;
    }

    if (*(v18 + 30) > 0.0)
    {
      sub_19B6A80D8(v18 + 30, &stru_1F0E3D7A0);
      v18 = p_analyticsTracker->__ptr_;
    }

    if (*(v18 + 34) > 0.0)
    {
      sub_19B6A80D8(v18 + 34, &stru_1F0E3D7A0);
      v18 = p_analyticsTracker->__ptr_;
    }

    if (*(v18 + 36) > 0.0)
    {
      sub_19B6A80D8(v18 + 36, &stru_1F0E3D7A0);
      v18 = p_analyticsTracker->__ptr_;
    }

    v19 = self->_headTrackingService.__ptr_;
    *(v18 + 2168) = *(v19 + 2354);
    *(v18 + 2184) = *(v19 + 2355);
    if (*(v18 + 54) > 0.0)
    {
      sub_19B6A80D8(v18 + 54, &stru_1F0E3D7A0);
      v18 = p_analyticsTracker->__ptr_;
    }

    if (*(v18 + 56) > 0.0)
    {
      sub_19B6A80D8(v18 + 56, &stru_1F0E3D7A0);
      v18 = p_analyticsTracker->__ptr_;
    }

    if (*(v18 + 58) > 0.0)
    {
      sub_19B6A80D8(v18 + 58, &stru_1F0E3D7A0);
      v18 = p_analyticsTracker->__ptr_;
    }

    if (*(v18 + 60) > 0.0)
    {
      sub_19B6A80D8(v18 + 60, &stru_1F0E3D7A0);
      v18 = p_analyticsTracker->__ptr_;
    }

    if (*(v18 + 62) > 0.0)
    {
      sub_19B6A80D8(v18 + 62, &stru_1F0E3D7A0);
      v18 = p_analyticsTracker->__ptr_;
    }

    if (*(v18 + 64) > 0.0)
    {
      sub_19B6A80D8(v18 + 64, &stru_1F0E3D7A0);
      v18 = p_analyticsTracker->__ptr_;
    }

    if (*(v18 + 66) > 0.0)
    {
      sub_19B6A80D8(v18 + 66, &stru_1F0E3D7A0);
      v18 = p_analyticsTracker->__ptr_;
    }

    if (*(v18 + 68) > 0.0)
    {
      sub_19B6A80D8(v18 + 68, &stru_1F0E3D7A0);
      v18 = p_analyticsTracker->__ptr_;
    }

    if (*(v18 + 70) > 0.0)
    {
      sub_19B6A80D8(v18 + 70, &stru_1F0E3D7A0);
      v18 = p_analyticsTracker->__ptr_;
    }

    if (*(v18 + 72) > 0.0)
    {
      sub_19B6A80D8(v18 + 72, &stru_1F0E3D7A0);
      v18 = p_analyticsTracker->__ptr_;
    }

    if (*(v18 + 74) > 0.0)
    {
      sub_19B6A80D8(v18 + 74, &stru_1F0E3D7A0);
      v18 = p_analyticsTracker->__ptr_;
    }

    if (*(v18 + 76) > 0.0)
    {
      sub_19B6A80D8(v18 + 76, &stru_1F0E3D7A0);
      v18 = p_analyticsTracker->__ptr_;
    }

    if (*(v18 + 78) > 0.0)
    {
      sub_19B6A80D8(v18 + 78, &stru_1F0E3D7A0);
    }

    if (self->_firstAccessoryDMTime == 0.0)
    {
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v20 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
      {
        v21 = *(p_analyticsTracker->__ptr_ + 1);
        *buf = 134217984;
        v82 = v21;
        _os_log_impl(&dword_19B41C000, v20, OS_LOG_TYPE_ERROR, "[CMMediaSession] No accessory DM received during entire session of %.3f seconds", buf, 0xCu);
      }

      v22 = sub_19B420058();
      if ((*(v22 + 160) & 0x80000000) == 0 || (*(v22 + 164) & 0x80000000) == 0 || (*(v22 + 168) & 0x80000000) == 0 || *(v22 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        v23 = *(p_analyticsTracker->__ptr_ + 1);
        v79 = 134217984;
        v80 = v23;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 16, "[CMMediaSession] No accessory DM received during entire session of %.3f seconds", COERCE_DOUBLE(&v79));
        v25 = v24;
        sub_19B6BB7CC("Generic", 1, 0, 0, "[CMMediaSession _stopHeadTracking]", "CoreLocation: %s\n", v24);
        if (v25 != buf)
        {
          free(v25);
        }
      }

      *(p_analyticsTracker->__ptr_ + 268) = *(p_analyticsTracker->__ptr_ + 1);
    }

    if (self->_firstValidPoseTime == 0.0)
    {
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v26 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
      {
        v27 = *(p_analyticsTracker->__ptr_ + 1);
        *buf = 134217984;
        v82 = v27;
        _os_log_impl(&dword_19B41C000, v26, OS_LOG_TYPE_ERROR, "[CMMediaSession] No valid pose available during entire session of %.3f seconds", buf, 0xCu);
      }

      v28 = sub_19B420058();
      if ((*(v28 + 160) & 0x80000000) == 0 || (*(v28 + 164) & 0x80000000) == 0 || (*(v28 + 168) & 0x80000000) == 0 || *(v28 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        v29 = *(p_analyticsTracker->__ptr_ + 1);
        v79 = 134217984;
        v80 = v29;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 16, "[CMMediaSession] No valid pose available during entire session of %.3f seconds", COERCE_DOUBLE(&v79));
        v31 = v30;
        sub_19B6BB7CC("Generic", 1, 0, 0, "[CMMediaSession _stopHeadTracking]", "CoreLocation: %s\n", v30);
        if (v31 != buf)
        {
          free(v31);
        }
      }

      v32 = p_analyticsTracker->__ptr_;
      *(p_analyticsTracker->__ptr_ + 269) = *(p_analyticsTracker->__ptr_ + 1);
    }

    else
    {
      v32 = p_analyticsTracker->__ptr_;
    }

    v37 = *(self->_headTrackingService.__ptr_ + 4717);
    *(v32 + 254) = *(v37 + 128);
    v38 = *(v37 + 136);
    *(v32 + 1036) = *(v37 + 148);
    *(v32 + 64) = v38;
    v39 = *(self->_headTrackingService.__ptr_ + 4717);
    v40 = (self->_analyticsTracker.__ptr_ + 1056);
    v41 = *(v39 + 168);
    *(v40 + 12) = *(v39 + 180);
    *v40 = v41;
    v42 = *(self->_headTrackingService.__ptr_ + 4717);
    v43 = (self->_analyticsTracker.__ptr_ + 1088);
    v44 = *(v42 + 200);
    *(v43 + 12) = *(v42 + 212);
    *v43 = v44;
    v45 = *(self->_headTrackingService.__ptr_ + 4717);
    v46 = (self->_analyticsTracker.__ptr_ + 1120);
    v47 = *(v45 + 232);
    *(v46 + 12) = *(v45 + 244);
    *v46 = v47;
    v48 = (self->_analyticsTracker.__ptr_ + 1152);
    v49 = *(*(self->_headTrackingService.__ptr_ + 4717) + 264);
    *(v48 + 12) = *(*(self->_headTrackingService.__ptr_ + 4717) + 276);
    *v48 = v49;
    v50 = self->_analyticsTracker.__ptr_;
    _Q0 = *(*(self->_headTrackingService.__ptr_ + 4717) + 360);
    *(v50 + 132) = *(*(self->_headTrackingService.__ptr_ + 4717) + 376);
    *(v50 + 131) = _Q0;
    v52 = self->_analyticsTracker.__ptr_;
    v53 = self->_headTrackingService.__ptr_;
    *(v52 + 568) = *(v53 + 4014);
    *(v52 + 569) = self->_orientationCounter;
    *(v52 + 560) = self->_scheme;
    if (*v53)
    {
      *&_Q0 = *v53;
      *&_Q0 = vdiv_f32(vcvt_f32_s32(*(v53 + 4)), vdup_lane_s32(*&_Q0, 0));
    }

    else
    {
      __asm { FMOV            V0.2S, #-1.0 }
    }

    *(v52 + 2284) = _Q0;
    sub_19B5CA124(v52);
  }

  else
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    v33 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v33, OS_LOG_TYPE_ERROR, "Calling _stop and analytics tracker hasn't been created. Called without _start?", buf, 2u);
    }

    v34 = sub_19B420058();
    if ((*(v34 + 160) & 0x80000000) == 0 || (*(v34 + 164) & 0x80000000) == 0 || (*(v34 + 168) & 0x80000000) == 0 || *(v34 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      LOWORD(v79) = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 16, "Calling _stop and analytics tracker hasn't been created. Called without _start?", &v79, 2);
      v36 = v35;
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMMediaSession _stopHeadTracking]", "CoreLocation: %s\n", v35);
      if (v36 != buf)
      {
        free(v36);
      }
    }
  }

  objc_sync_enter(self);
  sub_19B6444CC(&self->_analyticsTracker.__ptr_, 0);
  objc_sync_exit(self);
  activityManager = self->_activityManager;
  if (activityManager)
  {
    objc_msgSend_stopActivityUpdates(activityManager, v58, v59);
  }

  if (self->_headphoneActivityManager)
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    v61 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v61, OS_LOG_TYPE_DEFAULT, "[CMMediaSession][HeadsetActivity] Stopping headphone status and activity updates", buf, 2u);
    }

    v62 = sub_19B420058();
    if (*(v62 + 160) > 1 || *(v62 + 164) > 1 || *(v62 + 168) > 1 || *(v62 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      LOWORD(v79) = 0;
      LODWORD(v77) = 2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[CMMediaSession][HeadsetActivity] Stopping headphone status and activity updates", &v79, v77);
      v66 = v65;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _stopHeadTracking]", "CoreLocation: %s\n", v65);
      if (v66 != buf)
      {
        free(v66);
      }
    }

    objc_msgSend_stopStatusUpdates(self->_headphoneActivityManager, v63, v64);
    activityQueue = self->_activityQueue;
    v78[0] = MEMORY[0x1E69E9820];
    v78[1] = 3221225472;
    v78[2] = sub_19B644544;
    v78[3] = &unk_1E7532988;
    v78[4] = self;
    objc_msgSend_addOperationWithBlock_(activityQueue, v68, v78);
  }

  if (self->_deviceMotionDispatcher.__ptr_)
  {
    v69 = sub_19B424AE0();
    sub_19B425248(v69, self->_deviceMotionDispatcher.__ptr_);
    v70 = self->_deviceMotionDispatcher.__ptr_;
    self->_deviceMotionDispatcher.__ptr_ = 0;
    if (v70)
    {
      (*(v70->var0 + 1))(v70);
    }
  }

  if (self->_accessoryDeviceMotionDispatcher.__ptr_)
  {
    v71 = sub_19B6D6344();
    sub_19B426A14(v71, 1, self->_accessoryDeviceMotionDispatcher.__ptr_);
    v72 = self->_accessoryDeviceMotionDispatcher.__ptr_;
    self->_accessoryDeviceMotionDispatcher.__ptr_ = 0;
    if (v72)
    {
      (*(v72->var0 + 1))(v72);
    }

    v73 = self->_headTrackingService.__ptr_;
    if (v73)
    {
      sub_19B690B4C(v73, 1);
    }

    sub_19B644550(&self->_unsyncedAuxHelper, 1);
  }

  if (self->_accessoryMonitorDispatcher.__ptr_)
  {
    v74 = sub_19B60BFA4();
    sub_19B426A14(v74, 0, self->_accessoryMonitorDispatcher.__ptr_);
    v75 = self->_accessoryMonitorDispatcher.__ptr_;
    self->_accessoryMonitorDispatcher.__ptr_ = 0;
    if (v75)
    {
      (*(v75->var0 + 1))(v75);
    }
  }

  mcSession = self->_mcSession;
  if (mcSession)
  {
    objc_msgSend_stop(mcSession, v58, v59);
  }

  objc_msgSend_stopDeviceOrientationUpdates(self->_deviceOrientationManager, v58, v59);
}

- (void)_stop
{
  v25 = *MEMORY[0x1E69E9840];
  objc_sync_enter(self);
  if (self->_started)
  {
    self->_started = 0;
    objc_sync_exit(self);
    objc_msgSend__stopJitterBufferLevelMonitor(self, v3, v4);
    if (self->_accessoryDeviceMotionInEarStatusDispatcher.__ptr_)
    {
      v5 = sub_19B6D6344();
      sub_19B426A14(v5, 4, self->_accessoryDeviceMotionInEarStatusDispatcher.__ptr_);
      ptr = self->_accessoryDeviceMotionInEarStatusDispatcher.__ptr_;
      self->_accessoryDeviceMotionInEarStatusDispatcher.__ptr_ = 0;
      if (ptr)
      {
        (*(ptr->var0 + 1))(ptr);
      }
    }

    v7 = sub_19B420D84();
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = sub_19B644BB4;
    v22[3] = &unk_1E7532988;
    v22[4] = self;
    sub_19B420C9C(v7, v22);
    objc_sync_enter(self);
    objc_msgSend__stopDefaultsPreferenceUpdater(self, v8, v9);
    if (self->_clientQueue)
    {
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v10 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_DEFAULT, "[CMMediaSession] Stopping push updates", buf, 2u);
      }

      v11 = sub_19B420058();
      if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        v23[0] = 0;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[CMMediaSession] Stopping push updates", v23, 2);
        v13 = v12;
        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _stop]", "CoreLocation: %s\n", v12);
        if (v13 != buf)
        {
          free(v13);
        }
      }

      dispatch_release(self->_clientQueue);
      self->_clientQueue = 0;
      _Block_release(self->_clientHandler);
      self->_clientHandler = 0;
    }

    objc_sync_exit(self);
    if (self->_accessoryDeviceMotionConfigDispatcher.__ptr_)
    {
      v14 = sub_19B6D6344();
      v16 = self->_accessoryDeviceMotionConfigDispatcher.__ptr_;
      p_accessoryDeviceMotionConfigDispatcher = &self->_accessoryDeviceMotionConfigDispatcher;
      sub_19B426A14(v14, 2, v16);
      v17 = p_accessoryDeviceMotionConfigDispatcher->__ptr_;
      p_accessoryDeviceMotionConfigDispatcher->__ptr_ = 0;
      if (v17)
      {
        (*(v17->var0 + 1))(v17);
      }
    }
  }

  else
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    v18 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v18, OS_LOG_TYPE_DEFAULT, "[CMMediaSession] _stop is called multiple times", buf, 2u);
    }

    v19 = sub_19B420058();
    if (*(v19 + 160) > 1 || *(v19 + 164) > 1 || *(v19 + 168) > 1 || *(v19 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v23[0] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[CMMediaSession] _stop is called multiple times", v23, 2);
      v21 = v20;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _stop]", "CoreLocation: %s\n", v20);
      if (v21 != buf)
      {
        free(v21);
      }
    }

    objc_sync_exit(self);
  }
}

- (void)_updateMinQuiescentPeriodForBTZ
{
  v21 = *MEMORY[0x1E69E9840];
  ptr = self->_motionSettings.__ptr_;
  *buf = 0;
  if (sub_19B43D4DC(ptr, @"TempestMinQuiescentPeriodForBTZ", buf))
  {
    v4 = *buf;
  }

  else
  {
    v4 = 5.0;
  }

  if (vabdd_f64(v4, self->_minQuiescentPeriodForBTZ) > 0.0001)
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    v5 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
    {
      minQuiescentPeriodForBTZ = self->_minQuiescentPeriodForBTZ;
      *buf = 134218240;
      *&buf[4] = v4;
      v19 = 2048;
      v20 = minQuiescentPeriodForBTZ;
      _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_DEFAULT, "[CMMediaSession] minQuiescentPeriodForBTZ new: %f old: %f", buf, 0x16u);
    }

    v7 = sub_19B420058();
    if (*(v7 + 160) > 1 || *(v7 + 164) > 1 || *(v7 + 168) > 1 || *(v7 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v8 = self->_minQuiescentPeriodForBTZ;
      v14 = 134218240;
      v15 = v4;
      v16 = 2048;
      v17 = v8;
      LODWORD(v13) = 22;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[CMMediaSession] minQuiescentPeriodForBTZ new: %f old: %f", COERCE_DOUBLE(&v14), v13);
      v10 = v9;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _updateMinQuiescentPeriodForBTZ]", "CoreLocation: %s\n", v9);
      if (v10 != buf)
      {
        free(v10);
      }
    }

    v11 = self->_headTrackingService.__ptr_;
    v12 = v4;
    *(v11 + 3981) = v12;
    *(v11 + 3980) = v12;
    self->_minQuiescentPeriodForBTZ = v4;
    if (self->_logForReplay)
    {
      sub_19B5E7638(self->_logger.__ptr_, "kRelDmMinQuiescentPeriodForBTZ", v4);
    }
  }
}

- (void)_updateUseFwdPredictionUserSettings
{
  v32 = *MEMORY[0x1E69E9840];
  ptr = self->_motionSettings.__ptr_;
  buf[0] = 0;
  v4 = sub_19B439A40(ptr, @"TempestPreferenceFwdPredictorEnabled", buf);
  v5 = buf[0] & 1 | ((v4 & 1) == 0);
  if (self->_userSettingFwdPredictorEnabled != v5)
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    v6 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
    {
      userSettingFwdPredictorEnabled = self->_userSettingFwdPredictorEnabled;
      *buf = 67109376;
      *&buf[4] = userSettingFwdPredictorEnabled;
      *&buf[8] = 1024;
      *&buf[10] = v5;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_DEFAULT, "[CMMediaSession] Changed _userSettingFwdPredictorEnabled from %d to %d.", buf, 0xEu);
    }

    v8 = sub_19B420058();
    if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v9 = self->_userSettingFwdPredictorEnabled;
      v27 = 67109376;
      *v28 = v9;
      *&v28[4] = 1024;
      *&v28[6] = v5;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[CMMediaSession] Changed _userSettingFwdPredictorEnabled from %d to %d.", &v27, 14);
      v11 = v10;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _updateUseFwdPredictionUserSettings]", "CoreLocation: %s\n", v10);
      if (v11 != buf)
      {
        free(v11);
      }
    }

    *(self->_headTrackingService.__ptr_ + 16084) = v5;
    self->_userSettingFwdPredictorEnabled = v5;
  }

  v12 = self->_motionSettings.__ptr_;
  *buf = 0;
  if (sub_19B43D4DC(v12, @"TempestPreferenceRenderingOverheadSeconds", buf))
  {
    v13 = *buf;
    v14 = v13;
  }

  else
  {
    v14 = 0.04;
  }

  if (v14 != self->_renderingOverheadSeconds)
  {
    if (v14 < 0.0 || v14 >= 1.0)
    {
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v16 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v16, OS_LOG_TYPE_ERROR, "[CMMediaSession] renderingOverheadSeconds should usually be positive and less than 1 sec", buf, 2u);
      }

      v17 = sub_19B420058();
      if ((*(v17 + 160) & 0x80000000) == 0 || (*(v17 + 164) & 0x80000000) == 0 || (*(v17 + 168) & 0x80000000) == 0 || *(v17 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        LOWORD(v27) = 0;
        LODWORD(v26) = 2;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 16, "[CMMediaSession] renderingOverheadSeconds should usually be positive and less than 1 sec", &v27, v26);
        v19 = v18;
        sub_19B6BB7CC("Generic", 1, 0, 0, "[CMMediaSession _updateUseFwdPredictionUserSettings]", "CoreLocation: %s\n", v18);
        if (v19 != buf)
        {
          free(v19);
        }
      }
    }

    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    v20 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
    {
      renderingOverheadSeconds = self->_renderingOverheadSeconds;
      *buf = 134349312;
      *&buf[4] = v14;
      *&buf[12] = 2050;
      v31 = renderingOverheadSeconds;
      _os_log_impl(&dword_19B41C000, v20, OS_LOG_TYPE_DEFAULT, "[CMMediaSession] renderingOverheadSeconds new: %{public}.3f old: %{public}.3f", buf, 0x16u);
    }

    v22 = sub_19B420058();
    if (*(v22 + 160) > 1 || *(v22 + 164) > 1 || *(v22 + 168) > 1 || *(v22 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v23 = self->_renderingOverheadSeconds;
      v27 = 134349312;
      *v28 = v14;
      *&v28[8] = 2050;
      v29 = v23;
      LODWORD(v26) = 22;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[CMMediaSession] renderingOverheadSeconds new: %{public}.3f old: %{public}.3f", &v27, v26);
      v25 = v24;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _updateUseFwdPredictionUserSettings]", "CoreLocation: %s\n", v24);
      if (v25 != buf)
      {
        free(v25);
      }
    }

    self->_renderingOverheadSeconds = v14;
  }
}

- (void)_updateTrackingSchemeSettings
{
  ptr = self->_motionSettings.__ptr_;
  v8 = 0;
  v4 = sub_19B43304C(ptr, @"TrackingScheme", &v8);
  v6 = v8;
  if (v4)
  {
    v7 = v8 == 4;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    self->_hasUserDefaultTrackingScheme = 1;
    objc_msgSend__setTrackingSchemeInternal_(self, v5, v6);
  }
}

- (void)_updateAnchorIntervalSettings
{
  v21 = *MEMORY[0x1E69E9840];
  ptr = self->_motionSettings.__ptr_;
  *buf = 0;
  v4 = sub_19B43D4DC(ptr, @"AnchorRateHz", buf);
  v5 = *buf;
  v6 = 1.0 / v5 * 1000000.0;
  if (v4)
  {
    v7 = v6;
  }

  else
  {
    v7 = 33333;
  }

  if (self->_anchorUpdateIntervalUs != v7)
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    v8 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
    {
      anchorUpdateIntervalUs = self->_anchorUpdateIntervalUs;
      *buf = 134349312;
      *&buf[4] = v7;
      v19 = 2050;
      v20 = anchorUpdateIntervalUs;
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_DEFAULT, "[CMMediaSession] anchorUpdateIntervalUs new: %{public}llu old: %{public}llu", buf, 0x16u);
    }

    v10 = sub_19B420058();
    if (*(v10 + 160) > 1 || *(v10 + 164) > 1 || *(v10 + 168) > 1 || *(v10 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v11 = self->_anchorUpdateIntervalUs;
      v14 = 134349312;
      v15 = v7;
      v16 = 2050;
      v17 = v11;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[CMMediaSession] anchorUpdateIntervalUs new: %{public}llu old: %{public}llu", &v14, 22);
      v13 = v12;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _updateAnchorIntervalSettings]", "CoreLocation: %s\n", v12);
      if (v13 != buf)
      {
        free(v13);
      }
    }

    self->_anchorUpdateIntervalUs = v7;
  }
}

- (void)_updateUseHeadToHeadsetTransformationEstimator
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = (*(self->_headTrackingService.__ptr_ + 14) - 1) < 2;
  ptr = self->_motionSettings.__ptr_;
  buf[0] = 0;
  v5 = sub_19B439A40(ptr, @"OnlineHeadToHeadsetTransformationEstimator", buf);
  v6 = buf[0];
  if (!v5)
  {
    v6 = v3;
  }

  v7 = v6 & 1;
  if (self->_useHeadToHeadsetTransformationEstimator != v7)
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    v8 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
    {
      useHeadToHeadsetTransformationEstimator = self->_useHeadToHeadsetTransformationEstimator;
      *buf = 67240448;
      v18 = useHeadToHeadsetTransformationEstimator;
      v19 = 1026;
      v20 = v7;
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_DEFAULT, "[CMMediaSession] Changed _useHeadToHeadsetTransformationEstimator from %{public}d to %{public}d.", buf, 0xEu);
    }

    v10 = sub_19B420058();
    if (*(v10 + 160) > 1 || *(v10 + 164) > 1 || *(v10 + 168) > 1 || *(v10 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v11 = self->_useHeadToHeadsetTransformationEstimator;
      v14[0] = 67240448;
      v14[1] = v11;
      v15 = 1026;
      v16 = v7;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[CMMediaSession] Changed _useHeadToHeadsetTransformationEstimator from %{public}d to %{public}d.", v14, 14);
      v13 = v12;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _updateUseHeadToHeadsetTransformationEstimator]", "CoreLocation: %s\n", v12);
      if (v13 != buf)
      {
        free(v13);
      }
    }

    sub_19B6911D0(self->_headTrackingService.__ptr_, v7);
    self->_useHeadToHeadsetTransformationEstimator = v7;
  }
}

- (void)_updateCameraControllerParameters
{
  v31 = *MEMORY[0x1E69E9840];
  ptr = self->_motionSettings.__ptr_;
  *buf = 0;
  if (sub_19B43D4DC(ptr, @"PeriodicCameraBurstPulseWidthSeconds", buf))
  {
    v4 = *buf;
  }

  else
  {
    v4 = 2.0;
  }

  if (qword_1EAFE2998 != -1)
  {
    dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
  }

  v5 = off_1EAFE29A0;
  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
  {
    cameraControllerPeriodicBurstPulseWidthSeconds = self->_cameraControllerPeriodicBurstPulseWidthSeconds;
    *buf = 134349312;
    *&buf[4] = v4;
    v29 = 2050;
    v30 = cameraControllerPeriodicBurstPulseWidthSeconds;
    _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_DEFAULT, "[CMMediaSession] cameraControllerPeriodicBurstPulseWidthSeconds new: %{public}f old: %{public}f", buf, 0x16u);
  }

  v7 = sub_19B420058();
  if (*(v7 + 160) > 1 || *(v7 + 164) > 1 || *(v7 + 168) > 1 || *(v7 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    v8 = self->_cameraControllerPeriodicBurstPulseWidthSeconds;
    v24 = 134349312;
    v25 = v4;
    v26 = 2050;
    v27 = v8;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[CMMediaSession] cameraControllerPeriodicBurstPulseWidthSeconds new: %{public}f old: %{public}f", &v24, 22);
    v10 = v9;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _updateCameraControllerParameters]", "CoreLocation: %s\n", v9);
    if (v10 != buf)
    {
      free(v10);
    }
  }

  self->_cameraControllerPeriodicBurstPulseWidthSeconds = v4;
  v11 = self->_motionSettings.__ptr_;
  *buf = 0;
  if (sub_19B43D4DC(v11, @"PeriodicCameraBurstTotalWidthSeconds", buf))
  {
    v12 = *buf;
  }

  else
  {
    v12 = 5.0;
  }

  if (qword_1EAFE2998 != -1)
  {
    dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
  }

  v13 = off_1EAFE29A0;
  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
  {
    cameraControllerPeriodicBurstTotalWidthSeconds = self->_cameraControllerPeriodicBurstTotalWidthSeconds;
    *buf = 134349312;
    *&buf[4] = v12;
    v29 = 2050;
    v30 = cameraControllerPeriodicBurstTotalWidthSeconds;
    _os_log_impl(&dword_19B41C000, v13, OS_LOG_TYPE_DEFAULT, "[CMMediaSession] cameraControllerPeriodicBurstTotalWidthSeconds new: %{public}f old: %{public}f", buf, 0x16u);
  }

  v15 = sub_19B420058();
  if (*(v15 + 160) > 1 || *(v15 + 164) > 1 || *(v15 + 168) > 1 || *(v15 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    v16 = self->_cameraControllerPeriodicBurstTotalWidthSeconds;
    v24 = 134349312;
    v25 = v12;
    v26 = 2050;
    v27 = v16;
    LODWORD(v23) = 22;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[CMMediaSession] cameraControllerPeriodicBurstTotalWidthSeconds new: %{public}f old: %{public}f", &v24, v23);
    v18 = v17;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _updateCameraControllerParameters]", "CoreLocation: %s\n", v17);
    if (v18 != buf)
    {
      free(v18);
    }
  }

  if (v12 >= v4)
  {
    self->_cameraControllerPeriodicBurstTotalWidthSeconds = v12;
  }

  else
  {
    *&self->_cameraControllerPeriodicBurstPulseWidthSeconds = 0x40A0000040000000;
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    v19 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134349312;
      *&buf[4] = 0x4000000000000000;
      v29 = 2050;
      v30 = 5.0;
      _os_log_impl(&dword_19B41C000, v19, OS_LOG_TYPE_DEFAULT, "[CMMediaSession] Overriding cameraControllerPeriodicBurstParameters with defaults : %{public}f : %{public}f", buf, 0x16u);
    }

    v20 = sub_19B420058();
    if (*(v20 + 160) > 1 || *(v20 + 164) > 1 || *(v20 + 168) > 1 || *(v20 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v24 = 134349312;
      v25 = 2.0;
      v26 = 2050;
      v27 = 5.0;
      LODWORD(v23) = 22;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[CMMediaSession] Overriding cameraControllerPeriodicBurstParameters with defaults : %{public}f : %{public}f", &v24, v23);
      v22 = v21;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _updateCameraControllerParameters]", "CoreLocation: %s\n", v21);
      if (v22 != buf)
      {
        free(v22);
      }
    }
  }
}

- (void)_updateUserSettings
{
  v94 = *MEMORY[0x1E69E9840];
  sub_19B432E80(self->_motionSettings.__ptr_);
  if (qword_1EAFE2998 != -1)
  {
    dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
  }

  v3 = off_1EAFE29A0;
  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109376;
    v91 = objc_msgSend_returnDefaultPose(self, v4, v5);
    v92 = 1024;
    v93 = objc_msgSend_returnRandomPose(self, v6, v7);
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEBUG, "[CMMediaSession] checking default and random pose preferences. Current defaultPose: %d, randomPose: %d", buf, 0xEu);
  }

  v8 = sub_19B420058();
  if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    v11 = off_1EAFE29A0;
    v86 = 67109376;
    v87 = objc_msgSend_returnDefaultPose(self, v9, v10);
    v88 = 1024;
    v89 = objc_msgSend_returnRandomPose(self, v12, v13);
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v11, 2, "[CMMediaSession] checking default and random pose preferences. Current defaultPose: %d, randomPose: %d", &v86, 14);
    v15 = v14;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _updateUserSettings]", "CoreLocation: %s\n", v14);
    if (v15 != buf)
    {
      free(v15);
    }
  }

  ptr = self->_motionSettings.__ptr_;
  buf[0] = 0;
  v17 = sub_19B439A40(ptr, @"TempestReturnDefaultPose", buf);
  v18 = (v17 & buf[0]);
  v19 = self->_motionSettings.__ptr_;
  buf[0] = 0;
  v20 = sub_19B439A40(v19, @"TempestReturnRandomPose", buf);
  v21 = (v20 & buf[0]);
  if (v18 != objc_msgSend_returnDefaultPose(self, v22, v23) || v21 != objc_msgSend_returnRandomPose(self, v24, v25))
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    v26 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      v91 = v18;
      v92 = 1024;
      v93 = v21;
      _os_log_impl(&dword_19B41C000, v26, OS_LOG_TYPE_DEFAULT, "[CMMediaSession] Return default/random pose preferences changed: defaultPose: %d, randomPose: %d", buf, 0xEu);
    }

    v27 = sub_19B420058();
    if (*(v27 + 160) > 1 || *(v27 + 164) > 1 || *(v27 + 168) > 1 || *(v27 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v86 = 67109376;
      v87 = v18;
      v88 = 1024;
      v89 = v21;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[CMMediaSession] Return default/random pose preferences changed: defaultPose: %d, randomPose: %d", &v86, 14);
      v30 = v29;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _updateUserSettings]", "CoreLocation: %s\n", v29);
      if (v30 != buf)
      {
        free(v30);
      }
    }

    objc_msgSend_setReturnDefaultPose_(self, v28, v18);
    objc_msgSend_setReturnRandomPose_(self, v31, v21);
    if (objc_msgSend_returnDefaultPose(self, v32, v33))
    {
      objc_msgSend__logEvent_(self, v34, @"Returning default pose");
      if (objc_msgSend_returnRandomPose(self, v36, v37))
      {
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        v38 = off_1EAFE29A0;
        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v38, OS_LOG_TYPE_ERROR, "[CMMediaSession] returning default pose overrides returning random pose preferences", buf, 2u);
        }

        v39 = sub_19B420058();
        if ((*(v39 + 160) & 0x80000000) == 0 || (*(v39 + 164) & 0x80000000) == 0 || (*(v39 + 168) & 0x80000000) == 0 || *(v39 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
          }

          LOWORD(v86) = 0;
          LODWORD(v85) = 2;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 16, "[CMMediaSession] returning default pose overrides returning random pose preferences", &v86, v85);
          v41 = v40;
          sub_19B6BB7CC("Generic", 1, 0, 0, "[CMMediaSession _updateUserSettings]", "CoreLocation: %s\n", v40);
          if (v41 != buf)
          {
            free(v41);
          }
        }
      }
    }

    else if (objc_msgSend_returnRandomPose(self, v34, v35))
    {
      objc_msgSend__logEvent_(self, v42, @"Returning random pose");
    }

    else
    {
      objc_msgSend__logEvent_(self, v42, @"Returning pose");
    }
  }

  if (qword_1EAFE2998 != -1)
  {
    dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
  }

  v43 = off_1EAFE29A0;
  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
  {
    v46 = objc_msgSend_alwaysNotify50HzPose(self, v44, v45);
    *buf = 67109120;
    v91 = v46;
    _os_log_impl(&dword_19B41C000, v43, OS_LOG_TYPE_DEBUG, "[CMMediaSession] checking always notify pose preference. Current alwaysNotify50HzPose: %d", buf, 8u);
  }

  v47 = sub_19B420058();
  if (*(v47 + 160) > 1 || *(v47 + 164) > 1 || *(v47 + 168) > 1 || *(v47 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    v50 = off_1EAFE29A0;
    v51 = objc_msgSend_alwaysNotify50HzPose(self, v48, v49);
    v86 = 67109120;
    v87 = v51;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v50, 2, "[CMMediaSession] checking always notify pose preference. Current alwaysNotify50HzPose: %d", &v86);
    v53 = v52;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _updateUserSettings]", "CoreLocation: %s\n", v52);
    if (v53 != buf)
    {
      free(v53);
    }
  }

  v54 = self->_motionSettings.__ptr_;
  buf[0] = 0;
  v55 = sub_19B439A40(v54, @"TempestAlwaysNotify50HzPose", buf);
  v56 = (v55 & buf[0]);
  if (objc_msgSend_alwaysNotify50HzPose(self, v57, v58) != v56)
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    v59 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v91 = v56;
      _os_log_impl(&dword_19B41C000, v59, OS_LOG_TYPE_DEFAULT, "[CMMediaSession] always notify 50Hz pose preferences changed: alwaysNotify50HzPose: %d", buf, 8u);
    }

    v60 = sub_19B420058();
    if (*(v60 + 160) > 1 || *(v60 + 164) > 1 || *(v60 + 168) > 1 || *(v60 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v86 = 67109120;
      v87 = v56;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[CMMediaSession] always notify 50Hz pose preferences changed: alwaysNotify50HzPose: %d", &v86);
      v63 = v62;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _updateUserSettings]", "CoreLocation: %s\n", v62);
      if (v63 != buf)
      {
        free(v63);
      }
    }

    objc_msgSend_setAlwaysNotify50HzPose_(self, v61, v56);
    if (objc_msgSend_alwaysNotify50HzPose(self, v64, v65))
    {
      objc_msgSend__logEvent_(self, v66, @"Always notify 50Hz pose");
    }

    else
    {
      objc_msgSend__logEvent_(self, v66, @"Only notify pose if valid and hasChanged");
    }
  }

  v67 = self->_motionSettings.__ptr_;
  buf[0] = 0;
  v68 = sub_19B439A40(v67, @"TempestVerboseLogging", buf);
  self->_verboseLogging = v68 & buf[0];
  if (qword_1EAFE2998 != -1)
  {
    dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
  }

  v69 = off_1EAFE29A0;
  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
  {
    verboseLogging = self->_verboseLogging;
    *buf = 67240192;
    v91 = verboseLogging;
    _os_log_impl(&dword_19B41C000, v69, OS_LOG_TYPE_DEFAULT, "[CMMediaSession] verbose logging enabled: %{public}d", buf, 8u);
  }

  v71 = sub_19B420058();
  if (*(v71 + 160) > 1 || *(v71 + 164) > 1 || *(v71 + 168) > 1 || *(v71 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    v74 = self->_verboseLogging;
    v86 = 67240192;
    v87 = v74;
    LODWORD(v85) = 8;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[CMMediaSession] verbose logging enabled: %{public}d", &v86, v85);
    v76 = v75;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _updateUserSettings]", "CoreLocation: %s\n", v75);
    if (v76 != buf)
    {
      free(v76);
    }
  }

  objc_msgSend__updateMinQuiescentPeriodForBTZ(self, v72, v73);
  objc_msgSend__updateUseFwdPredictionUserSettings(self, v77, v78);
  objc_msgSend__updateTrackingSchemeSettings(self, v79, v80);
  objc_msgSend__updateAnchorIntervalSettings(self, v81, v82);
  objc_msgSend__updateUseHeadToHeadsetTransformationEstimator(self, v83, v84);
}

- (void)_startDefaultsPreferenceUpdater
{
  if (!self->_motionDefaults)
  {
    v13 = v5;
    v14 = v4;
    v15 = v3;
    v16 = v2;
    v17 = v6;
    v18 = v7;
    v9 = objc_alloc(MEMORY[0x1E695E000]);
    v11 = 0;
    self->_motionDefaults = objc_msgSend_initWithSuiteName_(v9, v10, @"com.apple.CoreMotion");
    do
    {
      objc_msgSend_addObserver_forKeyPath_options_context_(self->_motionDefaults, v12, self, off_1E7533AB0[v11++], 1, self->_motionDefaults, v13, v14, v15, v16, v17, v18);
    }

    while (v11 != 10);
  }
}

- (void)_stopDefaultsPreferenceUpdater
{
  if (self->_motionDefaults)
  {
    for (i = 0; i != 10; ++i)
    {
      objc_msgSend_removeObserver_forKeyPath_(self->_motionDefaults, a2, self, off_1E7533AB0[i]);
    }

    self->_motionDefaults = 0;
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (self->_motionDefaults == context)
  {

    objc_msgSend__updateUserSettings(self, a2, path, object, change);
  }

  else
  {
    v9 = v6;
    v10 = v7;
    v8.receiver = self;
    v8.super_class = CMMediaSession;
    [(CMMediaSession *)&v8 observeValueForKeyPath:path ofObject:object change:change context:?];
  }
}

- (void)_startJitterBufferLevelMonitor
{
  self->_jitterBufferLevel = -1;
  objc_msgSend__startJitterBufferLevelRetryTimer(self, a2, v2);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = sub_19B646A28;
  handler[3] = &unk_1E7533B08;
  handler[4] = self;
  notify_register_dispatch("com.apple.bluetooth.AdaptiveJitterBufferChanged", &self->_jitterBufferLevelNotificationToken, MEMORY[0x1E69E96A0], handler);
}

- (void)_stopJitterBufferLevelMonitor
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B646AB8;
  block[3] = &unk_1E7532988;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  notify_cancel(self->_jitterBufferLevelNotificationToken);
}

- (void)_startJitterBufferLevelRetryTimer
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B646B34;
  block[3] = &unk_1E7532988;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_stopJitterBufferLevelRetryTimer
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  jitterBufferLevelInitialUpdateTimer = self->_jitterBufferLevelInitialUpdateTimer;
  if (jitterBufferLevelInitialUpdateTimer)
  {
    dispatch_source_cancel(jitterBufferLevelInitialUpdateTimer);
    dispatch_release(self->_jitterBufferLevelInitialUpdateTimer);
    self->_jitterBufferLevelInitialUpdateTimer = 0;
  }
}

- (void)_notifyClientHandler
{
  v97 = *MEMORY[0x1E69E9840];
  objc_sync_enter(self);
  if (self->_clientQueue && self->_clientHandler)
  {
    objc_msgSend__feedPredictorEstimates(self, v3, v4);
    ptr = self->_headTrackingService.__ptr_;
    v85 = *(ptr + 3451);
    v6 = *(ptr + 27576);
    v82 = *(ptr + 27560);
    v7 = *(ptr + 27592);
    v83 = v6;
    v84 = v7;
    v81 = 0;
    v11 = objc_msgSend__createPoseFromListenerOrientation_Pose_(self, v8, &v82, &v81);
    if (self->_analyticsTracker.__ptr_ && (*(self->_headTrackingService.__ptr_ + 16082) & 1) == 0)
    {
      objc_msgSend_machAbsTimestamp(v81, v9, v10);
      v13 = v12;
      objc_msgSend_consumedAuxTimestamp(v81, v14, v15);
      v17 = self->_analyticsTracker.__ptr_;
      v18 = *(v17 + 117);
      v19 = v13 <= v16 + 0.5;
      v20 = 1.0;
      if (!v19)
      {
        v20 = 0.0;
      }

      if (v18 <= v20)
      {
        v18 = v20;
      }

      *(v17 + 117) = v18;
      v21 = *(v17 + 116);
      if (v21 >= v20)
      {
        v21 = v20;
      }

      *(v17 + 116) = v21;
      *(v17 + 118) = v20 + *(v17 + 118);
      ++*(v17 + 238);
    }

    v22 = v85 & BYTE1(v85);
    v23 = self->_notify50HzPoseDecimator + 1;
    self->_notify50HzPoseDecimator = v23;
    if (v23 == 4)
    {
      self->_notify50HzPoseDecimator = 0;
      if (v22)
      {
LABEL_16:
        if (self->_logForReplay)
        {
          v95 = 0u;
          v96 = 0u;
          buf = vmulq_f64(vcvtq_f64_u64(v84), vdupq_n_s64(0x3EB0C6F7A0B5ED8DuLL));
          v90 = vcvtq_f64_f32(*&v83);
          v89 = *(&v83 + 3);
          v93 = vcvtq_f64_f32(*&v82);
          v91 = *(&v83 + 2);
          v92 = *(&v82 + 3);
          v94 = *(&v82 + 2);
          objc_msgSend_consumedAuxTimestamp(v81, v9, v10);
          *&v95 = v24;
          objc_msgSend_receivedAuxTimestamp(v81, v25, v26);
          *(&v95 + 1) = v27;
          objc_msgSend_machAbsTimestamp(v81, v28, v29);
          *&v96 = v30;
          objc_msgSend_presentationTimestamp(v81, v31, v32);
          *(&v96 + 1) = v33;
          sub_19B5E69A4(self->_logger.__ptr_, &buf);
        }

        if (self->_firstValidPoseTime == 0.0)
        {
          v34 = mach_continuous_time();
          v35 = sub_19B41E070(v34);
          self->_firstValidPoseTime = v35;
          v36 = self->_analyticsTracker.__ptr_;
          if (v36)
          {
            *(v36 + 269) = v35 - self->_sessionStartTime;
          }

          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
          }

          v37 = off_1EAFE29A0;
          if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
          {
            v38 = self->_firstValidPoseTime - self->_sessionStartTime;
            LODWORD(buf.f64[0]) = 134217984;
            *(buf.f64 + 4) = v38;
            _os_log_impl(&dword_19B41C000, v37, OS_LOG_TYPE_DEFAULT, "[CMMediaSession] First non unit quaternion pose after %.3f seconds", &buf, 0xCu);
          }

          v39 = sub_19B420058();
          if (*(v39 + 160) > 1 || *(v39 + 164) > 1 || *(v39 + 168) > 1 || *(v39 + 152))
          {
            bzero(&buf, 0x65CuLL);
            if (qword_1EAFE2998 != -1)
            {
              dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
            }

            v40 = self->_firstValidPoseTime - self->_sessionStartTime;
            v86 = 134217984;
            v87 = v40;
            _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[CMMediaSession] First non unit quaternion pose after %.3f seconds", COERCE_DOUBLE(&v86));
            v42 = v41;
            sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _notifyClientHandler]", "CoreLocation: %s\n", v41);
            if (v42 != &buf)
            {
              free(v42);
            }
          }
        }

        v43 = self->_analyticsTracker.__ptr_;
        if (v43 && (*(self->_headTrackingService.__ptr_ + 16082) & 1) == 0)
        {
          objc_msgSend_machAbsTimestamp(v81, v9, v10);
          v45 = v44;
          objc_msgSend_consumedAuxTimestamp(v81, v46, v47);
          v49 = v45 - v48;
          v50 = *(v43 + 121);
          if (v50 <= v49)
          {
            v50 = v49;
          }

          *(v43 + 121) = v50;
          v51 = *(v43 + 120);
          if (v51 >= v49)
          {
            v51 = v49;
          }

          *(v43 + 120) = v51;
          *(v43 + 122) = v49 + *(v43 + 122);
          ++*(v43 + 246);
        }

        printPoseTimer = self->_printPoseTimer;
        v53 = mach_continuous_time();
        if (printPoseTimer < sub_19B41E070(v53))
        {
          v54 = mach_continuous_time();
          self->_printPoseTimer = sub_19B41E070(v54) + 5.0;
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
          }

          v55 = off_1EAFE29A0;
          if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buf.f64[0]) = 138543362;
            *(buf.f64 + 4) = v81;
            _os_log_impl(&dword_19B41C000, v55, OS_LOG_TYPE_DEFAULT, "[CMMediaSession] %{public}@", &buf, 0xCu);
          }

          v56 = sub_19B420058();
          if (*(v56 + 160) > 1 || *(v56 + 164) > 1 || *(v56 + 168) > 1 || *(v56 + 152))
          {
            bzero(&buf, 0x65CuLL);
            if (qword_1EAFE2998 != -1)
            {
              dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
            }

            v86 = 138543362;
            v87 = *&v81;
            _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[CMMediaSession] %{public}@", &v86, 12);
            v58 = v57;
            sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _notifyClientHandler]", "CoreLocation: %s\n", v57);
            if (v58 != &buf)
            {
              free(v58);
            }
          }

          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
          }

          v59 = off_1EAFE29A0;
          if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
          {
            accessoryIMUSampleRate = self->_accessoryIMUSampleRate;
            LODWORD(buf.f64[0]) = 67174657;
            HIDWORD(buf.f64[0]) = accessoryIMUSampleRate;
            _os_log_impl(&dword_19B41C000, v59, OS_LOG_TYPE_DEFAULT, "[CMMediaSession] current accessory samples per second: %{private}d", &buf, 8u);
          }

          v61 = sub_19B420058();
          if (*(v61 + 160) > 1 || *(v61 + 164) > 1 || *(v61 + 168) > 1 || *(v61 + 152))
          {
            bzero(&buf, 0x65CuLL);
            if (qword_1EAFE2998 != -1)
            {
              dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
            }

            v62 = self->_accessoryIMUSampleRate;
            v86 = 67174657;
            LODWORD(v87) = v62;
            LODWORD(v76) = 8;
            _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[CMMediaSession] current accessory samples per second: %{private}d", &v86, v76);
            v64 = v63;
            sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _notifyClientHandler]", "CoreLocation: %s\n", v63);
            if (v64 != &buf)
            {
              free(v64);
            }
          }
        }

        clientQueue = self->_clientQueue;
        clientHandler = self->_clientHandler;
        v79[0] = MEMORY[0x1E69E9820];
        v79[1] = 3221225472;
        v79[2] = sub_19B6479B4;
        v79[3] = &unk_1E7533B30;
        v79[4] = v81;
        v79[5] = clientHandler;
        v80 = v11;
        v67 = v79;
LABEL_81:
        dispatch_async(clientQueue, v67);
        goto LABEL_82;
      }

      v22 = objc_msgSend_alwaysNotify50HzPose(self, v9, v10);
    }

    if (v22)
    {
      goto LABEL_16;
    }

    if (self->_inEarStatus != 4)
    {
      v68 = self->_printPoseTimer;
      v69 = mach_continuous_time();
      if (v68 < sub_19B41E070(v69))
      {
        v70 = mach_continuous_time();
        self->_printPoseTimer = sub_19B41E070(v70) + 5.0;
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        v71 = off_1EAFE29A0;
        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf.f64[0]) = 138543362;
          *(buf.f64 + 4) = v81;
          _os_log_impl(&dword_19B41C000, v71, OS_LOG_TYPE_DEFAULT, "[CMMediaSession] %{public}@", &buf, 0xCu);
        }

        v72 = sub_19B420058();
        if (*(v72 + 160) > 1 || *(v72 + 164) > 1 || *(v72 + 168) > 1 || *(v72 + 152))
        {
          bzero(&buf, 0x65CuLL);
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
          }

          v86 = 138543362;
          v87 = *&v81;
          _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[CMMediaSession] %{public}@", &v86, 12);
          v74 = v73;
          sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _notifyClientHandler]", "CoreLocation: %s\n", v73);
          if (v74 != &buf)
          {
            free(v74);
          }
        }
      }

      clientQueue = self->_clientQueue;
      v75 = self->_clientHandler;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_19B6479CC;
      block[3] = &unk_1E7533B30;
      block[4] = v81;
      block[5] = v75;
      v78 = v11;
      v67 = block;
      goto LABEL_81;
    }
  }

LABEL_82:
  objc_sync_exit(self);
}

- (void)_feedSourceDeviceIMU:(const Sample *)u
{
  v33 = *MEMORY[0x1E69E9840];
  if (self->_started)
  {
    v5 = self->_accessorySampleTimer + 1.0;
    v6 = mach_continuous_time();
    if (v5 < sub_19B41E070(v6))
    {
      self->_accessoryIMUSampleRate = self->_accessorySamplesPerSecond;
      self->_accessorySamplesPerSecond = 0;
      v7 = mach_continuous_time();
      self->_accessorySampleTimer = sub_19B41E070(v7);
    }

    v30 = vdup_n_s32(0x37E5D90Du);
    v31 = 937810189;
    v8.f32[0] = sub_19B420740(&u->acceleration.x);
    v10 = v9 + *&u[2].timestamp;
    v8.i32[1] = v11;
    v28 = vadd_f32(*&u[1].acceleration.z, v8);
    v29 = v10;
    v8.i32[0] = LODWORD(u[2].acceleration.y);
    v26 = *(&u[2].timestamp + 4);
    v27 = v8.i32[0];
    v12 = vcvt_hight_f32_f64(vcvt_f32_f64(*&u->acceleration.x), *&u[1].timestamp);
    v25 = vextq_s8(v12, v12, 4uLL);
    sub_19B41E130(&v25, v25);
    objc_sync_enter(self);
    if ((WORD1(u[5].timestamp) & 0x100) != 0)
    {
      v23 = (u->timestamp * 1000000.0);
      self->_lastSourceTimestampMicroSeconds = v23;
      sub_19B693044(self->_headTrackingService.__ptr_, &v25, &v28, &v26, &v30, v23);
    }

    else
    {
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v13 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v13, OS_LOG_TYPE_DEFAULT, "[CMMediaSession] Not feeding SrcDM due to uninitialized DM status.", buf, 2u);
      }

      v14 = sub_19B420058();
      if (*(v14 + 160) > 1 || *(v14 + 164) > 1 || *(v14 + 168) > 1 || *(v14 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        v24[0] = 0;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[CMMediaSession] Not feeding SrcDM due to uninitialized DM status.", v24, 2);
        v18 = v17;
        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _feedSourceDeviceIMU:]", "CoreLocation: %s\n", v17);
        if (v18 != buf)
        {
          free(v18);
        }
      }
    }

    if (self->_logForReplay)
    {
      sub_19B5E5DB4(self->_logger.__ptr_, &u->timestamp);
    }

    objc_msgSend__notifyClientHandler(self, v15, v16);
    objc_sync_exit(self);
  }

  else
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    v19 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v19, OS_LOG_TYPE_DEBUG, "[CMMediaSession] Ignoring _feedSourceDeviceIMU call that occurred after _stop was called.", buf, 2u);
    }

    v20 = sub_19B420058();
    if (*(v20 + 160) > 1 || *(v20 + 164) > 1 || *(v20 + 168) > 1 || *(v20 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v25.i16[0] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[CMMediaSession] Ignoring _feedSourceDeviceIMU call that occurred after _stop was called.", &v25, 2);
      v22 = v21;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _feedSourceDeviceIMU:]", "CoreLocation: %s\n", v21);
      if (v22 != buf)
      {
        free(v22);
      }
    }
  }
}

- (void)_feedDisplayCount:(unsigned int)count
{
  v43 = *MEMORY[0x1E69E9840];
  if (self->_started)
  {
    if (self->_displayCount == count)
    {
      return;
    }

    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    v5 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
    {
      displayCount = self->_displayCount;
      *buf = 67240448;
      v40 = displayCount;
      v41 = 1026;
      countCopy = count;
      _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_DEFAULT, "[CMMediaSession] Display count changed: from %{public}d, to %{public}u", buf, 0xEu);
    }

    v7 = sub_19B420058();
    if (*(v7 + 160) > 1 || *(v7 + 164) > 1 || *(v7 + 168) > 1 || *(v7 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v8 = self->_displayCount;
      v35 = 67240448;
      v36 = v8;
      v37 = 1026;
      countCopy2 = count;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[CMMediaSession] Display count changed: from %{public}d, to %{public}u", &v35, 14);
      v10 = v9;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _feedDisplayCount:]", "CoreLocation: %s\n", v9);
      if (v10 != buf)
      {
        free(v10);
      }
    }

    ptr = self->_headTrackingService.__ptr_;
    if (!ptr)
    {
      goto LABEL_70;
    }

    if (count <= 1)
    {
      if (count != 1)
      {
LABEL_70:
        self->_displayCount = count;
        return;
      }

      lidAngle = self->_lidAngle;
      if (lidAngle < 0.0 || lidAngle >= 25.0)
      {
        schemePrev = self->_schemePrev;
        if (schemePrev)
        {
          sub_19B690FE4(ptr, schemePrev);
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
          }

          v27 = off_1EAFE29A0;
          if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
          {
            v28 = self->_schemePrev;
            *buf = 67240192;
            v40 = v28;
            _os_log_impl(&dword_19B41C000, v27, OS_LOG_TYPE_DEFAULT, "[CMMediaSession] External display detached, change tracking scheme back to %{public}d", buf, 8u);
          }

          v29 = sub_19B420058();
          if (*(v29 + 160) > 1 || *(v29 + 164) > 1 || *(v29 + 168) > 1 || *(v29 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE2998 != -1)
            {
              dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
            }

            v30 = self->_schemePrev;
            v35 = 67240192;
            v36 = v30;
            LODWORD(v34) = 8;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[CMMediaSession] External display detached, change tracking scheme back to %{public}d", &v35, v34);
            v32 = v31;
            sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _feedDisplayCount:]", "CoreLocation: %s\n", v31);
            if (v32 != buf)
            {
              free(v32);
            }
          }

          v33 = self->_analyticsTracker.__ptr_;
          if (v33 && *(v33 + 52) > 0.0)
          {
            sub_19B6A80D8(v33 + 52, &stru_1F0E3D7A0);
          }
        }

        goto LABEL_70;
      }
    }

    v12 = *(ptr + 14);
    self->_schemePrev = v12;
    if (v12)
    {
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v13 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v13, OS_LOG_TYPE_DEFAULT, "[CMMediaSession] External display attached, change tracking scheme to IMUOnly", buf, 2u);
      }

      v14 = sub_19B420058();
      if (*(v14 + 160) > 1 || *(v14 + 164) > 1 || *(v14 + 168) > 1 || *(v14 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        LOWORD(v35) = 0;
        LODWORD(v34) = 2;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[CMMediaSession] External display attached, change tracking scheme to IMUOnly", &v35, v34);
        v16 = v15;
        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _feedDisplayCount:]", "CoreLocation: %s\n", v15);
        if (v16 != buf)
        {
          free(v16);
        }
      }

      sub_19B690FE4(self->_headTrackingService.__ptr_, 0);
    }

    v17 = self->_analyticsTracker.__ptr_;
    if (v17)
    {
      maxDisplayCount = self->_maxDisplayCount;
      if (maxDisplayCount < count)
      {
        v19 = 0;
        v20 = *(v17 + 511);
        do
        {
          if (v20 != -1)
          {
            *(v17 + 511) = ++v20;
            maxDisplayCount = self->_maxDisplayCount;
          }

          ++v19;
        }

        while (v19 < count - maxDisplayCount);
        self->_maxDisplayCount = count;
      }

      sub_19B6A7EE8(v17 + 52, @"externalScreenDuration");
    }

    goto LABEL_70;
  }

  if (qword_1EAFE2998 != -1)
  {
    dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
  }

  v21 = off_1EAFE29A0;
  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v21, OS_LOG_TYPE_DEBUG, "[CMMediaSession] Ignoring _feedDisplayCount call that occurred after _stop was called.", buf, 2u);
  }

  v22 = sub_19B420058();
  if (*(v22 + 160) > 1 || *(v22 + 164) > 1 || *(v22 + 168) > 1 || *(v22 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    LOWORD(v35) = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[CMMediaSession] Ignoring _feedDisplayCount call that occurred after _stop was called.", &v35, 2);
    v24 = v23;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _feedDisplayCount:]", "CoreLocation: %s\n", v23);
    if (v24 != buf)
    {
      free(v24);
    }
  }
}

- (void)_feedLidAngle:(double)angle
{
  v9 = *MEMORY[0x1E69E9840];
  if (self->_started)
  {
    self->_lidAngle = angle;
  }

  else
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    v3 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEBUG, "[CMMediaSession] Ignoring _feedLidAngle call that occurred after _stop was called.", buf, 2u);
    }

    v4 = sub_19B420058();
    if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v7[0] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[CMMediaSession] Ignoring _feedLidAngle call that occurred after _stop was called.", v7, 2);
      v6 = v5;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _feedLidAngle:]", "CoreLocation: %s\n", v5);
      if (v6 != buf)
      {
        free(v6);
      }
    }
  }
}

- (void)_feedActiveAudioRouteChangedEvent
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_started)
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    v3 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEFAULT, "[CMMediaSession] Active audio route changed, reloading JBL", buf, 2u);
    }

    v4 = sub_19B420058();
    if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v13[0] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[CMMediaSession] Active audio route changed, reloading JBL", v13, 2);
      v8 = v7;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _feedActiveAudioRouteChangedEvent]", "CoreLocation: %s\n", v7);
      if (v8 != buf)
      {
        free(v8);
      }
    }

    objc_msgSend__startJitterBufferLevelRetryTimer(self, v5, v6);
  }

  else
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    v9 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_DEBUG, "[CMMediaSession] Ignoring _feedActiveAudioRouteChangedEvent call that occurred after _stop was called.", buf, 2u);
    }

    v10 = sub_19B420058();
    if (*(v10 + 160) > 1 || *(v10 + 164) > 1 || *(v10 + 168) > 1 || *(v10 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v13[0] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[CMMediaSession] Ignoring _feedActiveAudioRouteChangedEvent call that occurred after _stop was called.", v13, 2);
      v12 = v11;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _feedActiveAudioRouteChangedEvent]", "CoreLocation: %s\n", v11);
      if (v12 != buf)
      {
        free(v12);
      }
    }
  }
}

- (void)_feedFaceKitData:(id)data timestamp:(double)timestamp
{
  v234 = *MEMORY[0x1E69E9840];
  if (!self->_started)
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    v18 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v18, OS_LOG_TYPE_DEBUG, "[CMMediaSession] Ignoring _feedFaceKitData call that occurred after _stop was called.", buf, 2u);
    }

    v19 = sub_19B420058();
    if (*(v19 + 160) > 1 || *(v19 + 164) > 1 || *(v19 + 168) > 1 || *(v19 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      LOWORD(v213) = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[CMMediaSession] Ignoring _feedFaceKitData call that occurred after _stop was called.", &v213, 2);
      v21 = v20;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _feedFaceKitData:timestamp:]", "CoreLocation: %s\n", v20);
      goto LABEL_20;
    }

    return;
  }

  v205 = objc_msgSend_objectForKeyedSubscript_(data, a2, @"rm_camera_id");
  v7 = objc_msgSend_objectForKeyedSubscript_(data, v6, @"rm_tracked_faces");
  v9 = objc_msgSend_objectForKeyedSubscript_(data, v8, @"rm_number_of_detected_faces");
  if (v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = &unk_1F0E6A4E0;
  }

  if (self->_analyticsTracker.__ptr_)
  {
    if (objc_msgSend_intValue(v12, v10, v11) <= 1)
    {
      v22 = objc_msgSend_intValue(v12, v13, v14);
      ptr = self->_analyticsTracker.__ptr_;
      if (v22 >= 1 || (v16 = *(ptr + 521), v16 == -1))
      {
LABEL_26:
        v23 = *(ptr + 522);
        if (v23 != -1)
        {
          *(ptr + 522) = v23 + 1;
        }

        goto LABEL_28;
      }

      v17 = (ptr + 2084);
    }

    else
    {
      ptr = self->_analyticsTracker.__ptr_;
      v16 = *(ptr + 520);
      if (v16 == -1)
      {
        goto LABEL_26;
      }

      v17 = (ptr + 2080);
    }

    *v17 = v16 + 1;
    goto LABEL_26;
  }

LABEL_28:
  if (qword_1EAFE2998 != -1)
  {
    dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
  }

  v24 = off_1EAFE29A0;
  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67240704;
    *&buf[4] = objc_msgSend_unsignedIntValue(v205, v25, v26);
    *&buf[8] = 2050;
    *&buf[10] = objc_msgSend_count(v7, v27, v28);
    *&buf[18] = 1026;
    *&buf[20] = objc_msgSend_intValue(v12, v29, v30);
    _os_log_impl(&dword_19B41C000, v24, OS_LOG_TYPE_DEBUG, "[CMMediaSession][Cam %{public}u] Received %{public}lu faces of %{public}d detected faces", buf, 0x18u);
  }

  v31 = sub_19B420058();
  if (*(v31 + 160) > 1 || *(v31 + 164) > 1 || *(v31 + 168) > 1 || *(v31 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    v36 = off_1EAFE29A0;
    v213 = 67240704;
    v214 = objc_msgSend_unsignedIntValue(v205, v34, v35);
    *v215 = 2050;
    *&v215[2] = objc_msgSend_count(v7, v37, v38);
    *&v215[10] = 1026;
    v216 = objc_msgSend_intValue(v12, v39, v40);
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v36, 2, "[CMMediaSession][Cam %{public}u] Received %{public}lu faces of %{public}d detected faces", &v213, 24);
    v42 = v41;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _feedFaceKitData:timestamp:]", "CoreLocation: %s\n", v41);
    if (v42 != buf)
    {
      free(v42);
    }
  }

  Object = objc_msgSend_firstObject(v7, v32, v33);
  v45 = Object;
  if (Object)
  {
    v46 = objc_msgSend_objectForKeyedSubscript_(Object, v44, @"raw_data");
    v48 = objc_msgSend_objectForKeyedSubscript_(v46, v47, @"pose");
    v50 = objc_msgSend_objectForKeyedSubscript_(v48, v49, @"rotation");
    v52 = objc_msgSend_objectForKeyedSubscript_(v48, v51, @"translation");
    v54 = objc_msgSend_objectForKeyedSubscript_(v46, v53, @"data_failure");
    v56 = objc_msgSend_objectForKeyedSubscript_(v54, v55, @"image_too_dark");
    v58 = objc_msgSend_objectForKeyedSubscript_(v54, v57, @"sensor_covered");
    v203 = objc_msgSend_objectForKeyedSubscript_(v45, v59, @"failure_type");
    v61 = objc_msgSend_objectForKeyedSubscript_(v45, v60, @"confidence_level");
    v63 = objc_msgSend_objectForKeyedSubscript_(v45, v62, @"AngleInfoRoll");
    if (v50 && v52)
    {
      v65 = v63;
      v66 = objc_msgSend_objectAtIndexedSubscript_(v50, v64, 0);
      v68 = objc_msgSend_objectAtIndexedSubscript_(v66, v67, 0);
      objc_msgSend_floatValue(v68, v69, v70);
      v72 = v71;
      v74 = objc_msgSend_objectAtIndexedSubscript_(v50, v73, 1);
      v76 = objc_msgSend_objectAtIndexedSubscript_(v74, v75, 0);
      objc_msgSend_floatValue(v76, v77, v78);
      v80 = v79;
      v82 = objc_msgSend_objectAtIndexedSubscript_(v50, v81, 2);
      v84 = objc_msgSend_objectAtIndexedSubscript_(v82, v83, 0);
      objc_msgSend_floatValue(v84, v85, v86);
      v88 = v87;
      v90 = objc_msgSend_objectAtIndexedSubscript_(v50, v89, 0);
      v92 = objc_msgSend_objectAtIndexedSubscript_(v90, v91, 1);
      objc_msgSend_floatValue(v92, v93, v94);
      v96 = v95;
      v98 = objc_msgSend_objectAtIndexedSubscript_(v50, v97, 1);
      v100 = objc_msgSend_objectAtIndexedSubscript_(v98, v99, 1);
      objc_msgSend_floatValue(v100, v101, v102);
      v104 = v103;
      v106 = objc_msgSend_objectAtIndexedSubscript_(v50, v105, 2);
      v108 = objc_msgSend_objectAtIndexedSubscript_(v106, v107, 1);
      objc_msgSend_floatValue(v108, v109, v110);
      v112 = v111;
      v114 = objc_msgSend_objectAtIndexedSubscript_(v50, v113, 0);
      v116 = objc_msgSend_objectAtIndexedSubscript_(v114, v115, 2);
      objc_msgSend_floatValue(v116, v117, v118);
      v120 = v119;
      v122 = objc_msgSend_objectAtIndexedSubscript_(v50, v121, 1);
      v124 = objc_msgSend_objectAtIndexedSubscript_(v122, v123, 2);
      objc_msgSend_floatValue(v124, v125, v126);
      v128 = v127;
      v130 = objc_msgSend_objectAtIndexedSubscript_(v50, v129, 2);
      v132 = objc_msgSend_objectAtIndexedSubscript_(v130, v131, 2);
      objc_msgSend_floatValue(v132, v133, v134);
      v213 = v72;
      v214 = v80;
      *v215 = v88;
      *&v215[4] = v96;
      *&v215[8] = v104;
      v216 = v112;
      v217 = v120;
      v218 = v128;
      v219 = v135.i32[0];
      v208.i64[0] = 0;
      v208.i64[1] = 0x3F80000000000000;
      v136 = sub_19B66D1AC(&v208, &v213, v135);
      v138 = objc_msgSend_objectAtIndexedSubscript_(v52, v137, 0, v136);
      objc_msgSend_floatValue(v138, v139, v140);
      v202 = v141;
      v143 = objc_msgSend_objectAtIndexedSubscript_(v52, v142, 1);
      objc_msgSend_floatValue(v143, v144, v145);
      v201 = v146;
      v148 = objc_msgSend_objectAtIndexedSubscript_(v52, v147, 2);
      objc_msgSend_floatValue(v148, v149, v150);
      v206 = vmul_f32(__PAIR64__(v201, v202), vdup_n_s32(0x3A83126Fu));
      v207 = v151 * 0.001;
      v154.f32[0] = objc_msgSend_intValue(v61, v152, v153);
      v155 = v154.f32[0] / 1000.0;
      v156 = self->_analyticsTracker.__ptr_;
      if (v156)
      {
        v157 = v155;
        v158 = *(v156 + 213);
        if (v158 <= v155)
        {
          v158 = v155;
        }

        *(v156 + 213) = v158;
        v159 = *(v156 + 212);
        if (v159 >= v157)
        {
          v159 = v155;
        }

        *(v156 + 212) = v159;
        *v154.i64 = *(v156 + 214) + v157;
        *(v156 + 214) = v154.i64[0];
        ++*(v156 + 430);
      }

      if ((atomic_load_explicit(qword_1ED71CB40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(qword_1ED71CB40))
      {
        xmmword_1ED71CB50 = xmmword_19B7BA0A0;
        sub_19B41E130(&xmmword_1ED71CB50, xmmword_19B7BA0A0);
        __cxa_guard_release(qword_1ED71CB40);
      }

      v208.i32[0] = sub_19B66BF70(&xmmword_1ED71CB50, v208.f32, v154);
      *(v208.i64 + 4) = __PAIR64__(v161, v160);
      v208.i32[3] = v162;
      v165 = sub_19B66C1A4(&xmmword_1ED71CB50, *&v206, *(&v206 + 1), v207);
      v167 = v166;
      v169 = v168;
      v170 = 0;
      v206 = __PAIR64__(v166, LODWORD(v165));
      v207 = v168;
      v171 = 0.0;
      do
      {
        v171 = v171 + (*(&v206 + v170) * *(&v206 + v170));
        v170 += 4;
      }

      while (v170 != 12);
      v172 = self->_analyticsTracker.__ptr_;
      v173 = sqrtf(v171);
      if (v172)
      {
        v174 = v173;
        v175 = *(v172 + 237);
        if (v175 <= v173)
        {
          v175 = v173;
        }

        *(v172 + 237) = v175;
        v176 = *(v172 + 236);
        if (v176 >= v174)
        {
          v176 = v173;
        }

        *(v172 + 236) = v176;
        *(v172 + 238) = *(v172 + 238) + v174;
        ++*(v172 + 478);
      }

      if (v173 >= 0.1)
      {
        v209 = LODWORD(v155);
        LOBYTE(v210) = objc_msgSend_BOOLValue(v56, v163, v164);
        BYTE1(v210) = objc_msgSend_BOOLValue(v58, v183, v184);
        HIDWORD(v210) = objc_msgSend_intValue(v203, v185, v186);
        objc_msgSend_doubleValue(v65, v187, v188);
        *(v212 + 2) = v189;
        v233 = 0;
        *buf = CFAbsoluteTimeGetCurrent();
        *&buf[8] = timestamp;
        *&buf[16] = 0x100000002;
        v221 = v208.f32[3];
        v222 = vcvtq_f64_f32(*v208.f32);
        v223 = v208.f32[2];
        v224 = v165;
        v225 = v167;
        v226 = v169;
        v227 = 0u;
        v228 = 0u;
        v229 = 0u;
        v230 = 0u;
        v231 = objc_msgSend_unsignedIntValue(v205, v190, v191);
        v232 = 0;
        LODWORD(v233) = objc_msgSend_intValue(v12, v192, v193);
        lidAngle = self->_lidAngle;
        *&lidAngle = lidAngle;
        objc_msgSend__feedPoseAnchor_facePoseError_lidAngleDeg_(self, v195, buf, &v209, lidAngle);
        v198 = self->_analyticsTracker.__ptr_;
        if (v198)
        {
          v199 = objc_msgSend_intValue(v12, v196, v197);
          if (*(v198 + 2280) < v199)
          {
            *(v198 + 2280) = v199;
          }
        }
      }

      else
      {
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        v177 = off_1EAFE29A0;
        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134349312;
          *&buf[4] = (v173 * 100.0);
          *&buf[12] = 2050;
          *&buf[14] = 0x4024000000000000;
          _os_log_impl(&dword_19B41C000, v177, OS_LOG_TYPE_DEBUG, "[CMMediaSession] Ignore anchor since distance: %{public}.1f cm is under the %{public}.1f cm threshold.", buf, 0x16u);
        }

        v178 = sub_19B420058();
        if (*(v178 + 160) > 1 || *(v178 + 164) > 1 || *(v178 + 168) > 1 || *(v178 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
          }

          v209 = 134349312;
          v210 = (v173 * 100.0);
          v211 = 2050;
          v212[0] = 0x4024000000000000;
          LODWORD(v200) = 22;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[CMMediaSession] Ignore anchor since distance: %{public}.1f cm is under the %{public}.1f cm threshold.", &v209, v200);
          v21 = v179;
          sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _feedFaceKitData:timestamp:]", "CoreLocation: %s\n", v179);
LABEL_20:
          if (v21 != buf)
          {
            free(v21);
          }
        }
      }
    }

    else if (self->_inEarStatus == 4)
    {
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v180 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v180, OS_LOG_TYPE_ERROR, "[CMMediaSession] Rotation matrix or translation is missing", buf, 2u);
      }

      v181 = sub_19B420058();
      if ((*(v181 + 160) & 0x80000000) == 0 || (*(v181 + 164) & 0x80000000) == 0 || (*(v181 + 168) & 0x80000000) == 0 || *(v181 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        LOWORD(v213) = 0;
        LODWORD(v200) = 2;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 16, "[CMMediaSession] Rotation matrix or translation is missing", &v213, v200);
        v21 = v182;
        sub_19B6BB7CC("Generic", 1, 0, 0, "[CMMediaSession _feedFaceKitData:timestamp:]", "CoreLocation: %s\n", v182);
        goto LABEL_20;
      }
    }
  }
}

- (void)_feedPoseAnchor:(const Sample *)anchor facePoseError:(id *)error lidAngleDeg:(float)deg
{
  v157 = *MEMORY[0x1E69E9840];
  if (self->_started)
  {
    if (anchor && error)
    {
      v8 = *&anchor[4].acceleration.z;
      v142 = *&anchor[4].timestamp;
      v143 = v8;
      v144 = *&anchor[5].acceleration.x;
      timestamp = anchor[6].timestamp;
      v9 = *&anchor[2].timestamp;
      v138 = *&anchor[1].acceleration.x;
      v139 = v9;
      v10 = *&anchor[3].acceleration.x;
      v140 = *&anchor[2].acceleration.z;
      v141 = v10;
      v11 = *&anchor->acceleration.z;
      v136 = *&anchor->timestamp;
      v137 = v11;
      sub_19B421798();
      if (sub_19B4426E4())
      {
        v13 = vcvt_hight_f32_f64(vcvt_f32_f64(*&anchor[1].timestamp), *&anchor[1].acceleration.z);
        *buf = vextq_s8(v13, v13, 4uLL);
        v14 = sub_19B41E130(buf, *buf);
        v15 = sub_19B66BF70(&self->_cameraToSourceAlignment, buf, v14);
        v17 = v16;
        v19 = v18;
        v21 = v20;
        v24 = sub_19B66C1A4(self->_cameraToSourceAlignment.elements, anchor[2].acceleration.x, anchor[2].acceleration.y, anchor[2].acceleration.z);
        *v12.i64 = v15;
        v25 = v17;
        v26 = v19;
        *(&v138 + 1) = v17;
        *&v139 = v19;
        v27 = v21;
        *(&v137 + 1) = v21;
        *&v138 = v15;
      }

      else
      {
        v25 = *(&v138 + 1);
        v26 = *&v139;
        v27 = *(&v137 + 1);
        v12.i64[0] = v138;
        v22 = *(&v139 + 3);
        v24 = *(&v139 + 2);
        v23 = *&v140;
      }

      v126 = v22;
      v128 = v23;
      *v135 = v24;
      *&v135[1] = v22;
      *&v135[2] = v23;
      v119 = *v12.i64;
      v120 = v25;
      v12.f32[0] = *v12.i64;
      *&v35 = v25;
      v117 = v27;
      v118 = v26;
      *&v36 = v26;
      *&v37 = v27;
      v134.i64[0] = __PAIR64__(v35, v12.u32[0]);
      v134.i64[1] = __PAIR64__(v37, v36);
      sub_19B41E130(&v134, v12);
      v38 = v134.i64[1];
      v39 = v134.i64[0];
      v125 = atan2f(((v134.f32[0] * v134.f32[2]) - (v134.f32[3] * v134.f32[1])) + ((v134.f32[0] * v134.f32[2]) - (v134.f32[3] * v134.f32[1])), (((v134.f32[1] * v134.f32[1]) + (v134.f32[0] * v134.f32[0])) * -2.0) + 1.0) * -57.296;
      v40 = -180.0;
      if (v125 < 0.0)
      {
        v40 = 180.0;
      }

      v124 = v40;
      v41 = ((*&v39 * *(&v38 + 1)) + (*(&v39 + 1) * *&v38)) + ((*&v39 * *(&v38 + 1)) + (*(&v39 + 1) * *&v38));
      v42 = -1.0;
      v43 = v41 <= -1.0;
      v44 = v41 < 1.0 || v41 <= -1.0;
      if (v41 >= 1.0)
      {
        v43 = 1;
      }

      if (!v44)
      {
        v42 = 1.0;
      }

      if (v43)
      {
        v41 = v42;
      }

      v123 = asinf(v41);
      v45 = atan2f(((*&v39 * *(&v39 + 1)) - (*(&v38 + 1) * *&v38)) + ((*&v39 * *(&v39 + 1)) - (*(&v38 + 1) * *&v38)), (((*&v38 * *&v38) + (*&v39 * *&v39)) * -2.0) + 1.0);
      v46 = v45 * -57.296;
      v47 = v24 + self->_offsetFromDisplayCenterToFrontCameraInSourceFrameMeters.elements[0];
      v48 = v126 + self->_offsetFromDisplayCenterToFrontCameraInSourceFrameMeters.elements[1];
      v49 = v128 + self->_offsetFromDisplayCenterToFrontCameraInSourceFrameMeters.elements[2];
      *(&v139 + 2) = v47;
      *(&v139 + 3) = v48;
      *&v140 = v49;
      v50 = (v45 * -57.296) < 0.0;
      if ((v45 * -57.296) >= 0.0)
      {
        v51 = 1;
      }

      else
      {
        v51 = -1;
      }

      v52 = -(v45 * -57.296);
      if (!v50)
      {
        v52 = v46;
      }

      v53 = 0;
      if (v52 > 60.0)
      {
        v54 = v46;
        do
        {
          ++v53;
          v46 = v54 + (-v51 * 90.0);
          v55 = -v46;
          if (v46 >= 0.0)
          {
            v55 = v46;
          }

          v56 = v55 <= 60.0;
          v54 = v46;
        }

        while (!v56);
      }

      v131 = 0;
      v132 = ((v53 * v51) * -90.0) * 0.017453;
      sub_19B66C264(&v130, &v131);
      v127 = v48;
      v129 = v47;
      v122 = v49;
      v57 = sub_19B66C1A4(v130.f32, v47, v48, v49);
      v60 = v59;
      *v133 = v57;
      *&v133[1] = v59;
      *&v133[2] = v58;
      if (v58 <= 0.0000001)
      {
        v61 = 90.0;
      }

      else
      {
        v61 = (atan2f(v57, v58) * 57.296);
      }

      v62 = 0;
      v63 = v123 * 57.296;
      v64 = 0.0;
      do
      {
        v64 = v64 + (*&v133[v62] * *&v133[v62]);
        ++v62;
      }

      while (v62 != 3);
      if (sqrtf(v64) <= 0.0000001)
      {
        v67 = 90.0;
      }

      else
      {
        v65 = 0;
        v66 = 0.0;
        do
        {
          v66 = v66 + (*&v133[v65] * *&v133[v65]);
          ++v65;
        }

        while (v65 != 3);
        v67 = ((acosf(v60 / sqrtf(v66)) * -57.296) + 90.0);
      }

      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v68 = off_1EAFE29A0;
      v69 = (v125 + v124);
      v70 = v63;
      v71 = v46;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134219008;
        *&buf[4] = (v125 + v124);
        *&buf[12] = 2048;
        *&buf[14] = v63;
        *&buf[22] = 2048;
        *&buf[24] = v46;
        v153 = 2048;
        v154 = v61;
        v155 = 2048;
        v156 = v67;
        _os_log_impl(&dword_19B41C000, v68, OS_LOG_TYPE_DEBUG, "[CMMediaSession] Face Yaw: %f, Pitch: %f, Roll: %f, User HorizontalAngle: %f, VerticalAngle: %f", buf, 0x34u);
      }

      v72 = sub_19B420058();
      if (*(v72 + 160) > 1 || *(v72 + 164) > 1 || *(v72 + 168) > 1 || *(v72 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        v146 = 134219008;
        *v147 = (v125 + v124);
        *&v147[8] = 2048;
        *&v147[10] = v63;
        *&v147[18] = 2048;
        *&v147[20] = v46;
        v148 = 2048;
        v149 = v61;
        v150 = 2048;
        v151 = v67;
        LODWORD(v115) = 52;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[CMMediaSession] Face Yaw: %f, Pitch: %f, Roll: %f, User HorizontalAngle: %f, VerticalAngle: %f", COERCE_DOUBLE(&v146), v115, v116, v117, v118);
        v74 = v73;
        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _feedPoseAnchor:facePoseError:lidAngleDeg:]", "CoreLocation: %s\n", v73);
        if (v74 != buf)
        {
          free(v74);
        }
      }

      ptr = self->_analyticsTracker.__ptr_;
      if (ptr)
      {
        v76 = 0;
        v77 = 0.0;
        do
        {
          v77 = v77 + (*&v135[v76] * *&v135[v76]);
          ++v76;
        }

        while (v76 != 3);
        v78 = sqrtf(v77);
        v79 = *(ptr + 197);
        if (v79 <= v78)
        {
          v79 = v78;
        }

        *(ptr + 197) = v79;
        v80 = *(ptr + 196);
        if (v80 >= v78)
        {
          v80 = v78;
        }

        *(ptr + 196) = v80;
        *(ptr + 198) = *(ptr + 198) + v78;
        ++*(ptr + 398);
        v81 = *(ptr + 201);
        if (v81 <= v69)
        {
          v81 = (v125 + v124);
        }

        *(ptr + 201) = v81;
        v82 = *(ptr + 200);
        if (v82 >= v69)
        {
          v82 = (v125 + v124);
        }

        *(ptr + 200) = v82;
        *(ptr + 202) = *(ptr + 202) + v69;
        ++*(ptr + 406);
        v83 = *(ptr + 205);
        if (v83 <= v70)
        {
          v83 = v63;
        }

        *(ptr + 205) = v83;
        v84 = *(ptr + 204);
        if (v84 >= v70)
        {
          v84 = v63;
        }

        *(ptr + 204) = v84;
        *(ptr + 206) = *(ptr + 206) + v70;
        ++*(ptr + 414);
        v85 = *(ptr + 209);
        if (v85 <= v71)
        {
          v85 = v46;
        }

        *(ptr + 209) = v85;
        v86 = *(ptr + 208);
        if (v86 >= v71)
        {
          v86 = v46;
        }

        *(ptr + 208) = v86;
        *(ptr + 210) = *(ptr + 210) + v71;
        ++*(ptr + 422);
        v87 = *(ptr + 217);
        if (v87 <= v61)
        {
          v87 = v61;
        }

        *(ptr + 217) = v87;
        v88 = *(ptr + 216);
        if (v88 >= v61)
        {
          v88 = v61;
        }

        *(ptr + 216) = v88;
        *(ptr + 218) = v61 + *(ptr + 218);
        ++*(ptr + 438);
        v89 = *(ptr + 221);
        if (v89 <= v67)
        {
          v89 = v67;
        }

        *(ptr + 221) = v89;
        v90 = *(ptr + 220);
        if (v90 >= v67)
        {
          v90 = v67;
        }

        *(ptr + 220) = v90;
        *(ptr + 222) = v67 + *(ptr + 222);
        ++*(ptr + 446);
      }

      objc_sync_enter(self);
      if (self->_logForReplay)
      {
        sub_19B5E6104(self->_logger.__ptr_, &v136, error, self->_lidAngle);
      }

      *&v93 = v127;
      *&v92 = v129;
      *&v94 = v122;
      if (self->_simulateCameraOnOffRequest && self->_scheme == 1 && !self->_bypassCameraController && *(self->_headTrackingService.__ptr_ + 27752) != 1)
      {
        goto LABEL_141;
      }

      v96 = (*&anchor->acceleration.x * 1000000.0);
      if (error->var3 || error->var0 <= 0.799)
      {
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        v104 = off_1EAFE29A0;
        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
        {
          var3 = error->var3;
          var0 = error->var0;
          *buf = 67109632;
          *&buf[4] = var3;
          *&buf[8] = 2048;
          *&buf[10] = var0;
          *&buf[18] = 2048;
          *&buf[20] = v96;
          _os_log_impl(&dword_19B41C000, v104, OS_LOG_TYPE_DEFAULT, "[CMMediaSession] anchor is IGNORED due to failure or low confidence. failureCode: %u, confidence: %f, timestamp: %llu", buf, 0x1Cu);
        }

        v107 = sub_19B420058();
        if (*(v107 + 160) > 1 || *(v107 + 164) > 1 || *(v107 + 168) > 1 || *(v107 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
          }

          v108 = error->var3;
          v109 = error->var0;
          v146 = 67109632;
          *v147 = v108;
          *&v147[4] = 2048;
          *&v147[6] = v109;
          *&v147[14] = 2048;
          *&v147[16] = v96;
          LODWORD(v115) = 28;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[CMMediaSession] anchor is IGNORED due to failure or low confidence. failureCode: %u, confidence: %f, timestamp: %llu", &v146, v115, *&v116);
          v111 = v110;
          sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _feedPoseAnchor:facePoseError:lidAngleDeg:]", "CoreLocation: %s\n", v110);
          if (v111 != buf)
          {
            free(v111);
          }
        }

        if (error->var3)
        {
          v100 = self->_analyticsTracker.__ptr_;
          if (v100)
          {
            v112 = *(v100 + 513);
            if (v112 != -1)
            {
              *(v100 + 513) = v112 + 1;
            }

            goto LABEL_139;
          }

          goto LABEL_141;
        }

        v100 = self->_analyticsTracker.__ptr_;
        if (error->var0 <= 0.799)
        {
          if (v100)
          {
            v113 = *(v100 + 514);
            if (v113 != -1)
            {
              *(v100 + 514) = v113 + 1;
            }

            goto LABEL_139;
          }

          goto LABEL_141;
        }
      }

      else
      {
        *&v95 = deg;
        objc_msgSend_feedPoseAnchorWithAttitude_position_lidAngleDeg_numberOfDetectedFaces_timestampUs_(self, v91, LODWORD(anchor[6].timestamp), v96, v119, v120, v118, v117, v92, v93, v94, v95);
        v97 = mach_absolute_time();
        v98 = sub_19B41E070(v97);
        v99 = v96 * 0.000001;
        v100 = self->_analyticsTracker.__ptr_;
        if (v98 >= v99)
        {
          if (v100)
          {
            v101 = v98 - v99;
            v102 = *(v100 + 177);
            if (v102 <= v101)
            {
              v102 = v101;
            }

            *(v100 + 177) = v102;
            v103 = *(v100 + 176);
            if (v103 >= v101)
            {
              v103 = v101;
            }

            *(v100 + 176) = v103;
            *(v100 + 178) = v101 + *(v100 + 178);
            ++*(v100 + 358);
            goto LABEL_139;
          }

          goto LABEL_141;
        }
      }

      if (v100)
      {
LABEL_139:
        v114 = *(v100 + 512);
        if (v114 != -1)
        {
          *(v100 + 512) = v114 + 1;
        }
      }

LABEL_141:
      objc_sync_exit(self);
      return;
    }

    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    v32 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v32, OS_LOG_TYPE_ERROR, "[CMMediaSession] Missing face sample or error.", buf, 2u);
    }

    v33 = sub_19B420058();
    if ((*(v33 + 160) & 0x80000000) == 0 || (*(v33 + 164) & 0x80000000) == 0 || (*(v33 + 168) & 0x80000000) == 0 || *(v33 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      LOWORD(v136) = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 16, "[CMMediaSession] Missing face sample or error.", &v136, 2);
      v31 = v34;
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMMediaSession _feedPoseAnchor:facePoseError:lidAngleDeg:]", "CoreLocation: %s\n", v34);
LABEL_27:
      if (v31 != buf)
      {
        free(v31);
      }
    }
  }

  else
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    v28 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v28, OS_LOG_TYPE_DEBUG, "[CMMediaSession] Ignoring _feedPoseAnchor call that occurred after _stop was called.", buf, 2u);
    }

    v29 = sub_19B420058();
    if (*(v29 + 160) > 1 || *(v29 + 164) > 1 || *(v29 + 168) > 1 || *(v29 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      LOWORD(v136) = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[CMMediaSession] Ignoring _feedPoseAnchor call that occurred after _stop was called.", &v136, 2);
      v31 = v30;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _feedPoseAnchor:facePoseError:lidAngleDeg:]", "CoreLocation: %s\n", v30);
      goto LABEL_27;
    }
  }
}

- (void)feedPoseAnchorWithAttitude:(id)attitude position:()CMVector<float lidAngleDeg:(3UL>)deg numberOfDetectedFaces:(float)faces timestampUs:(int)us
{
  v62 = *MEMORY[0x1E69E9840];
  if (self->_started)
  {
    scheme = self->_scheme;
    if (scheme)
    {
      v12 = deg.elements[2];
      v13 = deg.elements[1];
      v14 = deg.elements[0];
      if (scheme == 1 || ((anchorUpdateIntervalUs = self->_anchorUpdateIntervalUs, anchorUpdateIntervalUs <= 0x3A98) ? (v16 = 1) : (v16 = anchorUpdateIntervalUs - 15000), a7 - self->_lastFacePoseTimestampUs > v16))
      {
        *&attitude.var0 = attitude.var0;
        *&v17 = attitude.var1;
        var2 = attitude.var2;
        v57.i64[0] = __PAIR64__(v17, LODWORD(attitude.var0));
        *&attitude.var0 = attitude.var3;
        v57.f32[2] = var2;
        v57.i32[3] = LODWORD(attitude.var0);
        sub_19B41E130(&v57, *&attitude.var0);
        v56[0] = v14;
        v56[1] = v13;
        v56[2] = v12;
        objc_sync_enter(self);
        v19.n128_f32[0] = faces;
        sub_19B693338(self->_headTrackingService.__ptr_, &v57, v56, us, a7, v19);
        if (!self->_lastFacePoseTimestampUs)
        {
          sessionStartTime = self->_sessionStartTime;
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
          }

          v22 = off_1EAFE29A0;
          if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134349056;
            v61 = -(sessionStartTime - a7 * 0.000001);
            _os_log_impl(&dword_19B41C000, v22, OS_LOG_TYPE_DEFAULT, "[CMMediaSession] Received first face pose anchor.timeToFirstFacePoseInSessionSeconds: %{public}.1f s", buf, 0xCu);
          }

          v23 = sub_19B420058();
          if (*(v23 + 160) > 1 || *(v23 + 164) > 1 || *(v23 + 168) > 1 || *(v23 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE2998 != -1)
            {
              dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
            }

            v58 = 134349056;
            v59 = -(sessionStartTime - a7 * 0.000001);
            _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[CMMediaSession] Received first face pose anchor.timeToFirstFacePoseInSessionSeconds: %{public}.1f s", &v58, 12);
            v25 = v24;
            sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession feedPoseAnchorWithAttitude:position:lidAngleDeg:numberOfDetectedFaces:timestampUs:]", "CoreLocation: %s\n", v24);
            if (v25 != buf)
            {
              free(v25);
            }
          }

          ptr = self->_analyticsTracker.__ptr_;
          if (ptr)
          {
            *(ptr + 270) = -(sessionStartTime - a7 * 0.000001);
          }
        }

        if (!self->_firstFacePoseInCameraRequestTimestampUs)
        {
          self->_firstFacePoseInCameraRequestTimestampUs = a7;
          lastRequestingCameraTimestampUs = self->_lastRequestingCameraTimestampUs;
          v28 = a7 - lastRequestingCameraTimestampUs;
          if (a7 > lastRequestingCameraTimestampUs)
          {
            v29 = self->_analyticsTracker.__ptr_;
            if (v29)
            {
              v30 = v28 * 0.000001;
              v31 = *(v29 + 173);
              if (v31 <= v30)
              {
                v31 = v28 * 0.000001;
              }

              *(v29 + 173) = v31;
              v32 = *(v29 + 172);
              if (v32 >= v30)
              {
                v32 = v28 * 0.000001;
              }

              *(v29 + 172) = v32;
              *(v29 + 174) = v30 + *(v29 + 174);
              ++*(v29 + 350);
            }
          }
        }

        v33 = self->_analyticsTracker.__ptr_;
        if (v33)
        {
          v34 = self->_headTrackingService.__ptr_;
          v35 = *(v34 + 6612);
          if (v35 < 0.0)
          {
            v35 = -v35;
          }

          v36 = v35;
          v37 = *(v33 + 181);
          if (v37 <= v36)
          {
            v37 = v36;
          }

          *(v33 + 181) = v37;
          v38 = *(v33 + 180);
          if (v38 >= v36)
          {
            v38 = v36;
          }

          *(v33 + 180) = v38;
          *(v33 + 182) = *(v33 + 182) + v36;
          ++*(v33 + 366);
          v39 = *(v34 + 6613);
          if (v39 < 0.0)
          {
            v39 = -v39;
          }

          v40 = v39;
          v41 = *(v33 + 185);
          if (v41 <= v40)
          {
            v41 = v40;
          }

          *(v33 + 185) = v41;
          v42 = *(v33 + 184);
          if (v42 >= v40)
          {
            v42 = v40;
          }

          *(v33 + 184) = v42;
          *(v33 + 186) = *(v33 + 186) + v40;
          ++*(v33 + 374);
          v43 = *(v34 + 6614);
          if (v43 < 0.0)
          {
            v43 = -v43;
          }

          *v20.i64 = v43;
          v44 = *(v33 + 189);
          if (v44 <= *v20.i64)
          {
            v44 = *v20.i64;
          }

          *(v33 + 189) = v44;
          v45 = *(v33 + 188);
          if (v45 >= *v20.i64)
          {
            v45 = *v20.i64;
          }

          *(v33 + 188) = v45;
          *v20.i64 = *(v33 + 190) + *v20.i64;
          *(v33 + 190) = v20.i64[0];
          ++*(v33 + 382);
          v46.f32[0] = sub_19B7900DC(v34 + 4238, v20) * 57.296;
          v47 = self->_headTrackingService.__ptr_;
          if (v46.f32[0] >= 0.0)
          {
            v48 = sub_19B7900DC(v47 + 4238, v46) * 57.296;
          }

          else
          {
            v48 = sub_19B7900DC(v47 + 4238, v46) * -57.296;
          }

          v53 = v48;
          v54 = *(v33 + 193);
          if (v54 <= v53)
          {
            v54 = v53;
          }

          *(v33 + 193) = v54;
          v55 = *(v33 + 192);
          if (v55 >= v53)
          {
            v55 = v53;
          }

          *(v33 + 192) = v55;
          *(v33 + 194) = *(v33 + 194) + v53;
          ++*(v33 + 390);
        }

        self->_lastFacePoseTimestampUs = a7;
        objc_sync_exit(self);
      }
    }
  }

  else
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    v49 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v49, OS_LOG_TYPE_DEBUG, "[CMMediaSession] Ignoring feedPoseAnchorWithAttitude call that occurred after _stop was called.", buf, 2u);
    }

    v50 = sub_19B420058();
    if (*(v50 + 160) > 1 || *(v50 + 164) > 1 || *(v50 + 168) > 1 || *(v50 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v57.i16[0] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[CMMediaSession] Ignoring feedPoseAnchorWithAttitude call that occurred after _stop was called.", &v57, 2);
      v52 = v51;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession feedPoseAnchorWithAttitude:position:lidAngleDeg:numberOfDetectedFaces:timestampUs:]", "CoreLocation: %s\n", v51);
      if (v52 != buf)
      {
        free(v52);
      }
    }
  }
}

- (unint64_t)_getAuxSampleTimestamp:(const void *)timestamp currentTime:(double)time
{
  v50 = *MEMORY[0x1E69E9840];
  if (*(timestamp + 27) == 2)
  {
    v7 = (*(timestamp + 8) * 1000000.0);
    if (self->_lastAudioAccessorySample.timeSyncStatus != 2)
    {
      v8 = sub_19B73A068(&self->_unsyncedAuxHelper, *(timestamp + 7), self->_lastSourceTimestampMicroSeconds);
      sub_19B644550(&self->_unsyncedAuxHelper, 1);
      v9 = (v7 - v8) * 0.001;
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v10 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v49 = v9;
        _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_DEFAULT, "[CMMediaSession]  Timesync: Switching to use time-synced timestamp. diffMilliSeconds = %f", buf, 0xCu);
      }

      v11 = sub_19B420058();
      if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        v46 = 134217984;
        v47 = v9;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[CMMediaSession]  Timesync: Switching to use time-synced timestamp. diffMilliSeconds = %f", COERCE_DOUBLE(&v46));
        v13 = v12;
        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _getAuxSampleTimestamp:currentTime:]", "CoreLocation: %s\n", v12);
        if (v13 != buf)
        {
          free(v13);
        }
      }

      v14 = -v9;
      if (v9 >= 0.0)
      {
        v14 = v9;
      }

      if (v14 > 60.0)
      {
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        v15 = off_1EAFE29A0;
        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
        {
          *buf = 134217984;
          v49 = v9;
          _os_log_impl(&dword_19B41C000, v15, OS_LOG_TYPE_ERROR, "[CMMediaSession]  Timesync: large discrepency (imeSynced - unTimesynced). MS = %f", buf, 0xCu);
        }

        v16 = sub_19B420058();
        if ((*(v16 + 160) & 0x80000000) == 0 || (*(v16 + 164) & 0x80000000) == 0 || (*(v16 + 168) & 0x80000000) == 0 || *(v16 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
          }

          v46 = 134217984;
          v47 = v9;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 16, "[CMMediaSession]  Timesync: large discrepency (imeSynced - unTimesynced). MS = %f", COERCE_DOUBLE(&v46));
          v18 = v17;
          sub_19B6BB7CC("Generic", 1, 0, 0, "[CMMediaSession _getAuxSampleTimestamp:currentTime:]", "CoreLocation: %s\n", v17);
          if (v18 != buf)
          {
            free(v18);
          }
        }
      }

      v19 = time - self->_firstAccessoryDMTime;
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v20 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v49 = v19;
        _os_log_impl(&dword_19B41C000, v20, OS_LOG_TYPE_DEFAULT, "[CMMediaSession] Timesync: First timesynced sample received after %.3f seconds", buf, 0xCu);
      }

      v21 = sub_19B420058();
      if (*(v21 + 160) > 1 || *(v21 + 164) > 1 || *(v21 + 168) > 1 || *(v21 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        v46 = 134217984;
        v47 = v19;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[CMMediaSession] Timesync: First timesynced sample received after %.3f seconds", COERCE_DOUBLE(&v46));
        v23 = v22;
        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _getAuxSampleTimestamp:currentTime:]", "CoreLocation: %s\n", v22);
        if (v23 != buf)
        {
          free(v23);
        }
      }

      if (v19 > 10.0)
      {
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        v24 = off_1EAFE29A0;
        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
        {
          *buf = 134217984;
          v49 = v19;
          _os_log_impl(&dword_19B41C000, v24, OS_LOG_TYPE_ERROR, "[CMMediaSession]  Timesync: timesync arrived very late, gap %.3f seconds", buf, 0xCu);
        }

        v25 = sub_19B420058();
        if ((*(v25 + 160) & 0x80000000) == 0 || (*(v25 + 164) & 0x80000000) == 0 || (*(v25 + 168) & 0x80000000) == 0 || *(v25 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
          }

          v46 = 134217984;
          v47 = v19;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 16, "[CMMediaSession]  Timesync: timesync arrived very late, gap %.3f seconds", COERCE_DOUBLE(&v46));
          v27 = v26;
          sub_19B6BB7CC("Generic", 1, 0, 0, "[CMMediaSession _getAuxSampleTimestamp:currentTime:]", "CoreLocation: %s\n", v26);
          if (v27 != buf)
          {
            free(v27);
          }
        }
      }

      if (self->_lastTimesyncLostTime > 0.0)
      {
        v28 = mach_continuous_time();
        v29 = sub_19B41E070(v28);
        lastTimesyncLostTime = self->_lastTimesyncLostTime;
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        v31 = v29 - lastTimesyncLostTime;
        v32 = off_1EAFE29A0;
        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v49 = v31;
          _os_log_impl(&dword_19B41C000, v32, OS_LOG_TYPE_DEFAULT, "[CMMediaSession]  Timesync: Experienced loss of timesync during session. gap = %f", buf, 0xCu);
        }

        v33 = sub_19B420058();
        if (*(v33 + 160) > 1 || *(v33 + 164) > 1 || *(v33 + 168) > 1 || *(v33 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
          }

          v46 = 134217984;
          v47 = v31;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[CMMediaSession]  Timesync: Experienced loss of timesync during session. gap = %f", COERCE_DOUBLE(&v46));
          v35 = v34;
          sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _getAuxSampleTimestamp:currentTime:]", "CoreLocation: %s\n", v34);
          if (v35 != buf)
          {
            free(v35);
          }
        }

        self->_lastTimesyncLostTime = 0.0;
      }
    }
  }

  else
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    v36 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v36, OS_LOG_TYPE_INFO, "[CMMediaSession] Timesync: Using unsynced timestamp.", buf, 2u);
    }

    v37 = sub_19B420058();
    if (*(v37 + 160) > 1 || *(v37 + 164) > 1 || *(v37 + 168) > 1 || *(v37 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      LOWORD(v46) = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 1, "[CMMediaSession] Timesync: Using unsynced timestamp.", &v46, 2);
      v39 = v38;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _getAuxSampleTimestamp:currentTime:]", "CoreLocation: %s\n", v38);
      if (v39 != buf)
      {
        free(v39);
      }
    }

    v7 = sub_19B73A068(&self->_unsyncedAuxHelper, *(timestamp + 7), self->_lastSourceTimestampMicroSeconds);
    if (self->_lastAudioAccessorySample.timeSyncStatus == 2)
    {
      self->_lastTimesyncLostTime = time;
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v40 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v40, OS_LOG_TYPE_ERROR, "[CMMediaSession]  Timesync: Lost timesync in the middle of session. ", buf, 2u);
      }

      v41 = sub_19B420058();
      if ((*(v41 + 160) & 0x80000000) == 0 || (*(v41 + 164) & 0x80000000) == 0 || (*(v41 + 168) & 0x80000000) == 0 || *(v41 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        LOWORD(v46) = 0;
        LODWORD(v45) = 2;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 16, "[CMMediaSession]  Timesync: Lost timesync in the middle of session. ", &v46, v45);
        v43 = v42;
        sub_19B6BB7CC("Generic", 1, 0, 0, "[CMMediaSession _getAuxSampleTimestamp:currentTime:]", "CoreLocation: %s\n", v42);
        if (v43 != buf)
        {
          free(v43);
        }
      }
    }
  }

  return v7;
}

- (void)_feedAccessoryDeviceMotion:(const void *)motion
{
  v384 = *MEMORY[0x1E69E9840];
  if (!self->_started)
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    v25 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v25, OS_LOG_TYPE_DEBUG, "[CMMediaSession] Ignoring _feedAccessoryDeviceMotion call that occurred after _stop was called.", buf, 2u);
    }

    v26 = sub_19B420058();
    if (*(v26 + 160) > 1 || *(v26 + 164) > 1 || *(v26 + 168) > 1 || *(v26 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      *v361 = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[CMMediaSession] Ignoring _feedAccessoryDeviceMotion call that occurred after _stop was called.", v361, 2);
      v28 = v27;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _feedAccessoryDeviceMotion:]", "CoreLocation: %s\n", v27);
      if (v28 != buf)
      {
        free(v28);
      }
    }

    return;
  }

  v5 = mach_continuous_time();
  v6 = sub_19B41E070(v5);
  if (self->_firstAccessoryDMTime == 0.0)
  {
    self->_firstAccessoryDMTime = v6;
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    v7 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
    {
      v8 = self->_firstAccessoryDMTime - self->_sessionStartTime;
      *buf = 134217984;
      *&buf[4] = v8;
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_DEFAULT, "[CMMediaSession] First accessory DM received after %.3f seconds", buf, 0xCu);
    }

    v9 = sub_19B420058();
    if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v10 = self->_firstAccessoryDMTime - self->_sessionStartTime;
      *v361 = 134217984;
      *&v361[4] = v10;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[CMMediaSession] First accessory DM received after %.3f seconds", COERCE_DOUBLE(v361));
      v12 = v11;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _feedAccessoryDeviceMotion:]", "CoreLocation: %s\n", v11);
      if (v12 != buf)
      {
        free(v12);
      }
    }

    ptr = self->_analyticsTracker.__ptr_;
    if (ptr)
    {
      *(ptr + 268) = self->_firstAccessoryDMTime - self->_sessionStartTime;
      sub_19B6A7EE8(ptr + 32, @"auxGyroBiasConvergenceDuration");
    }
  }

  v14 = self->_analyticsTracker.__ptr_;
  if (v14)
  {
    v15 = 0;
    v16 = *(motion + 7);
    if (v16 < 0.0)
    {
      v16 = -v16;
    }

    do
    {
      v17 = *(motion + v15 + 32);
      if (v17 < 0.0)
      {
        v17 = -v17;
      }

      if (v17 > v16)
      {
        v16 = v17;
      }

      v15 += 4;
    }

    while (v15 != 8);
    if (v16 < 0.000007 && *(v14 + 32) > 0.0)
    {
      sub_19B6A80D8(v14 + 32, &stru_1F0E3D7A0);
      v14 = self->_analyticsTracker.__ptr_;
    }

    v18 = v6 - self->_lastAccessoryDMTime;
    v19 = *(v14 + 81);
    if (v19 <= v18)
    {
      v19 = v6 - self->_lastAccessoryDMTime;
    }

    *(v14 + 81) = v19;
    v20 = *(v14 + 80);
    if (v20 >= v18)
    {
      v20 = v18;
    }

    *(v14 + 80) = v20;
    *(v14 + 82) = v18 + *(v14 + 82);
    ++*(v14 + 166);
  }

  self->_lastAccessoryDMTime = v6;
  ++self->_accessorySamplesPerSecond;
  fSize = self->_unsyncedAuxHelper.auxAndSrcSensorTimeOffsetBuffer.fHeadAndSize.fSize;
  fCapacity = self->_unsyncedAuxHelper.auxAndSrcSensorTimeOffsetBuffer.fCapacity;
  fHead = self->_unsyncedAuxHelper.auxAndSrcSensorTimeOffsetBuffer.fHeadAndSize.fHead;
  if (fHead + fSize >= fCapacity)
  {
    v24 = self->_unsyncedAuxHelper.auxAndSrcSensorTimeOffsetBuffer.fCapacity;
  }

  else
  {
    v24 = 0;
  }

  *&self->_unsyncedAuxHelper.auxAndSrcSensorTimeOffsetBuffer.fBuffer[8 * (fHead + fSize - v24)] = *(motion + 9) + -0.0350000001 + *(motion + 7) * -0.000001;
  if (fCapacity <= fSize)
  {
    if (fHead + 1 < fCapacity)
    {
      LOWORD(fCapacity) = 0;
    }

    self->_unsyncedAuxHelper.auxAndSrcSensorTimeOffsetBuffer.fHeadAndSize.fHead = fHead + 1 - fCapacity;
  }

  else
  {
    self->_unsyncedAuxHelper.auxAndSrcSensorTimeOffsetBuffer.fHeadAndSize.fSize = fSize + 1;
  }

  *v361 = *(motion + 2);
  *&v361[8] = *(motion + 6);
  v29.f32[0] = sub_19B447000(motion);
  v31 = v30 + *(motion + 12);
  v29.i32[1] = v32;
  v362 = vadd_f32(*(motion + 40), v29);
  v363 = v31;
  v364 = *(motion + 10);
  v365 = *(motion + 22);
  v366 = *(motion + 28);
  v33 = *(motion + 24);
  v367 = *(motion + 9);
  v368 = v33;
  v369 = *(motion + 23);
  v370 = *motion;
  AuxSampleTimestamp_currentTime = objc_msgSend__getAuxSampleTimestamp_currentTime_(self, v34, motion, v6);
  objc_sync_enter(self);
  v36 = self->_headTrackingService.__ptr_;
  if (*(v36 + 14) == 1)
  {
    if (self->_simulateCameraOnOffRequest)
    {
      LOBYTE(v37) = 1;
      if (self->_requestingCameraOn)
      {
        goto LABEL_100;
      }
    }

    else
    {
      v37 = *(v36 + 27752);
      if (self->_requestingCameraOn == v37)
      {
        goto LABEL_100;
      }

      if (!*(v36 + 27752))
      {
        v44 = self->_analyticsTracker.__ptr_;
        if (v44 && *(v44 + 48) > 0.0)
        {
          sub_19B6A80D8(v44 + 48, &stru_1F0E3D7A0);
        }

        goto LABEL_100;
      }
    }

    lastRequestingCameraTimestampUs = self->_lastRequestingCameraTimestampUs;
    if (lastRequestingCameraTimestampUs)
    {
      v39 = self->_analyticsTracker.__ptr_;
      if (!v39)
      {
        goto LABEL_99;
      }

      v40 = (AuxSampleTimestamp_currentTime - lastRequestingCameraTimestampUs) * 0.000001;
      v41 = v40;
      v42 = *(v39 + 153);
      if (v42 <= v41)
      {
        v42 = v41;
      }

      *(v39 + 153) = v42;
      v43 = *(v39 + 152);
      if (v43 >= v41)
      {
        v43 = v41;
      }

      *(v39 + 152) = v43;
      *(v39 + 154) = *(v39 + 154) + v41;
      ++*(v39 + 310);
      sub_19B6A7EE8(v39 + 48, @"cameraOnDuration");
    }

    else
    {
      sessionStartTime = self->_sessionStartTime;
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v46 = v6 - sessionStartTime;
      v47 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134349056;
        *&buf[4] = v46;
        _os_log_impl(&dword_19B41C000, v47, OS_LOG_TYPE_DEFAULT, "[CMMediaSession] Requested first face pose anchor.timeToFirstFacePoseRequestInSessionSeconds: %{public}.1f s", buf, 0xCu);
      }

      v48 = sub_19B420058();
      if (*(v48 + 160) > 1 || *(v48 + 164) > 1 || *(v48 + 168) > 1 || *(v48 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        *v383 = 134349056;
        *&v383[4] = v46;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[CMMediaSession] Requested first face pose anchor.timeToFirstFacePoseRequestInSessionSeconds: %{public}.1f s", v383, 12);
        v50 = v49;
        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _feedAccessoryDeviceMotion:]", "CoreLocation: %s\n", v49);
        if (v50 != buf)
        {
          free(v50);
        }
      }
    }

    v51 = self->_analyticsTracker.__ptr_;
    if (v51)
    {
      v52 = *(v51 + 510);
      if (v52 != -1)
      {
        *(v51 + 510) = v52 + 1;
      }

      v53 = self->_headTrackingService.__ptr_;
      if (*(v53 + 27765) == 1)
      {
        v54 = *(v51 + 515);
        if (v54 != -1)
        {
          v55 = (v51 + 2060);
LABEL_98:
          *v55 = v54 + 1;
        }
      }

      else if (*(v53 + 27764) == 1)
      {
        v54 = *(v51 + 516);
        if (v54 != -1)
        {
          v55 = (v51 + 2064);
          goto LABEL_98;
        }
      }

      else
      {
        v56 = *(v53 + 16052);
        if (v56 == 2)
        {
          v54 = *(v51 + 519);
          if (v54 != -1)
          {
            v55 = (v51 + 2076);
            goto LABEL_98;
          }
        }

        else if (v56 == 3)
        {
          v54 = *(v51 + 517);
          if (v54 != -1)
          {
            v55 = (v51 + 2068);
            goto LABEL_98;
          }
        }

        else
        {
          v54 = *(v51 + 518);
          if (v54 != -1)
          {
            v55 = (v51 + 2072);
            goto LABEL_98;
          }
        }
      }
    }

LABEL_99:
    self->_lastRequestingCameraTimestampUs = AuxSampleTimestamp_currentTime;
    self->_firstFacePoseInCameraRequestTimestampUs = 0;
LABEL_100:
    self->_requestingCameraOn = v37;
    v36 = self->_headTrackingService.__ptr_;
    v57 = *(v36 + 27752);
    if (!*(v36 + 6942) && *(v36 + 27752))
    {
      *(v36 + 3472) = AuxSampleTimestamp_currentTime;
    }

    *(v36 + 6942) = v57;
  }

  if ((*(motion + 26) & 0x100) != 0)
  {
    if (sub_19B6B00F0(v36 + 37776, v361, AuxSampleTimestamp_currentTime))
    {
      sub_19B6B09D8(v36 + 37776, buf);
      v64 = sub_19B6B0BF4(v36 + 37776);
      v65 = (v36 + 37744);
      v66 = *(v36 + 4720);
      if (v66)
      {
        *v383 = *sub_19B606534(v36 + 80);
        sub_19B608394(v66, buf, v64);
      }

      else
      {
        v67 = *(v36 + 4721);
        if (v67)
        {
          sub_19B5D6F10(v67, buf, v64 * 0.000001);
        }
      }

      if (*(v36 + 37752) == 1)
      {
        v68 = *v65;
        if (*v65)
        {
          memset(v383, 0, 44);
          *&v383[44] = 1065353216;
          sub_19B41E130(&v383[32], 0);
          *v383 = v64 / 1000000.0;
          *&v383[8] = *buf;
          *&v383[16] = *&buf[8];
          v69.f32[0] = sub_19B447000(&v375[4]);
          v69.i32[1] = v70;
          *&v383[20] = vsub_f32(*&buf[12], v69);
          *&v383[28] = *&buf[20] - v71;
          *&v383[32] = *&v375[4];
          sub_19B667230(v68, v383);
        }
      }

      sub_19B6F653C(v36, buf, v64);
    }

    sub_19B695170(v36, v361, AuxSampleTimestamp_currentTime, v62, v63);
    v72 = sub_19B66C1A4(v370.elements, 0.0, 0.0, -1.0);
    v75.f32[0] = acosf(fmaxf(fminf((v74 + (v73 * 0.0)) + (v72 * 0.0), 1.0), -1.0));
    v76 = v75.f32[0];
    v77 = self->_headTrackingService.__ptr_;
    if (self->_scheme == 1)
    {
      v78.f32[0] = sub_19B651B48(v77 + 4238, v75);
    }

    else
    {
      v82 = sub_19B606534(v77 + 80);
      v78.i32[0] = *v82;
      v79 = v82[1];
      v80 = v82[2];
      v81 = v82[3];
    }

    v359 = __PAIR64__(v79, v78.u32[0]);
    v360 = __PAIR64__(v81, v80);
    *buf = sub_19B66BFF4(&v359, v78);
    *&buf[4] = v83;
    *&buf[8] = v84;
    *&buf[12] = v85;
    v86 = sub_19B66C1A4(buf, 0.0, 1.0, 0.0);
    v87 = v76 * 57.296;
    v90 = acosf(fmaxf(fminf((v89 + (v88 * 0.0)) + (v86 * 0.0), 1.0), -1.0)) * 57.296;
    v91 = v87 + v90;
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    v92 = off_1EAFE29A0;
    v93 = v87;
    v94 = v90;
    v95 = v91;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349568;
      *&buf[4] = v93;
      *&buf[12] = 2050;
      *&buf[14] = v94;
      *&buf[22] = 2050;
      *&buf[24] = v91;
      _os_log_impl(&dword_19B41C000, v92, OS_LOG_TYPE_DEBUG, "[CMMediaSession] Stem gravity angle: %{public}f, Stem faceY angle: %{public}f, FaceY gravity angle: %{public}f.", buf, 0x20u);
    }

    v96 = sub_19B420058();
    if (*(v96 + 160) > 1 || *(v96 + 164) > 1 || *(v96 + 168) > 1 || *(v96 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      *v383 = 134349568;
      *&v383[4] = v93;
      *&v383[12] = 2050;
      *&v383[14] = v94;
      *&v383[22] = 2050;
      *&v383[24] = v91;
      LODWORD(v354) = 32;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[CMMediaSession] Stem gravity angle: %{public}f, Stem faceY angle: %{public}f, FaceY gravity angle: %{public}f.", v383, v354);
      v98 = v97;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _feedAccessoryDeviceMotion:]", "CoreLocation: %s\n", v97);
      if (v98 != buf)
      {
        free(v98);
      }
    }

    v99 = self->_analyticsTracker.__ptr_;
    if (v99)
    {
      v100 = *(v99 + 225);
      if (v100 <= v93)
      {
        v100 = v93;
      }

      *(v99 + 225) = v100;
      v101 = *(v99 + 224);
      if (v101 >= v93)
      {
        v101 = v93;
      }

      *(v99 + 224) = v101;
      *(v99 + 226) = *(v99 + 226) + v93;
      ++*(v99 + 454);
      v102 = *(v99 + 229);
      if (v102 <= v95)
      {
        v102 = v91;
      }

      *(v99 + 229) = v102;
      v103 = *(v99 + 228);
      if (v103 >= v95)
      {
        v103 = v91;
      }

      *(v99 + 228) = v103;
      *(v99 + 230) = *(v99 + 230) + v95;
      ++*(v99 + 462);
      v104 = *(v99 + 233);
      if (v104 <= v94)
      {
        v104 = v94;
      }

      *(v99 + 233) = v104;
      v105 = *(v99 + 232);
      if (v105 >= v94)
      {
        v105 = v94;
      }

      *(v99 + 232) = v105;
      *(v99 + 234) = *(v99 + 234) + v94;
      ++*(v99 + 470);
    }
  }

  else
  {
    if (*(v36 + 16088) == 1)
    {
      sub_19B690B4C(v36, 1);
    }

    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    v58 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v58, OS_LOG_TYPE_DEFAULT, "[CMMediaSession] Not feeding AuxDM due to uninitialized DM status.", buf, 2u);
    }

    v59 = sub_19B420058();
    if (*(v59 + 160) > 1 || *(v59 + 164) > 1 || *(v59 + 168) > 1 || *(v59 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      *v383 = 0;
      LODWORD(v354) = 2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[CMMediaSession] Not feeding AuxDM due to uninitialized DM status.", v383, v354);
      v61 = v60;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _feedAccessoryDeviceMotion:]", "CoreLocation: %s\n", v60);
      if (v61 != buf)
      {
        free(v61);
      }
    }
  }

  if (self->_logForReplay)
  {
    sub_19B5E57B8(self->_logger.__ptr_, motion);
    v106 = self->_headTrackingService.__ptr_;
    if (*(v106 + 16088) == 1)
    {
      *&v383[8] = *(v106 + 4025);
      *v383 = *(v106 + 16092);
      v107 = 24;
      if (*(v106 + 16080))
      {
        v107 = 40;
      }

      *&v383[12] = *(v106 + v107 + 16092);
      v359 = 0;
      v360 = 0x3F80000000000000;
      v355 = 0;
      v356 = 0;
      sub_19B69A3C4(v106, &v359, &v357, &v356, &v355);
      v108 = self->_headTrackingService.__ptr_;
      *buf = v356;
      *&buf[8] = v355;
      *&buf[16] = v357;
      *&buf[28] = *v383;
      *&buf[24] = v358;
      v372 = *&v383[8];
      v373 = *(v106 + 2013);
      v374 = *(v106 + 4028);
      *v375 = *&v383[12];
      v375[16] = *(v108 + 16064);
      v375[17] = *(v108 + 16080);
      v109.f64[0] = *(v108 + 1998);
      v109.f64[1] = *(v108 + 2000);
      v376 = vcvt_hight_f32_f64(vcvt_f32_f64(*(v108 + 998)), v109);
      v377 = *(v108 + 62);
      v378 = *(v108 + 27752);
      v379 = *(v108 + 16083);
      v380 = *(v108 + 16082);
      v381 = *(v108 + 3);
      v382 = *(v108 + 16);
      sub_19B5E6440(self->_logger.__ptr_, buf);
    }
  }

  objc_sync_exit(self);
  v111 = *(motion + 1);
  v110 = *(motion + 2);
  self->_lastAudioAccessorySample.auxDM.quaternion = *motion;
  *self->_lastAudioAccessorySample.auxDM.rotationRate.elements = v111;
  *&self->_lastAudioAccessorySample.auxDM.biasCovariance.elements[1] = v110;
  v112 = *(motion + 6);
  v114 = *(motion + 3);
  v113 = *(motion + 4);
  *self->_lastAudioAccessorySample.filteredAcceleration.elements = *(motion + 5);
  *&self->_lastAudioAccessorySample.quiescentMode = v112;
  *&self->_lastAudioAccessorySample.auxDM.userAcceleration.elements[2] = v114;
  *&self->_lastAudioAccessorySample.timestamp = v113;
  v116 = *(motion + 8);
  v115 = *(motion + 9);
  v117 = *(motion + 7);
  *&self->_lastAudioAccessorySample.isIEDEnabled = *(motion + 80);
  *self->_lastAudioAccessorySample.gyroBias = v116;
  *&self->_lastAudioAccessorySample.sourceTimestampToMachContinuous = v115;
  *&self->_lastAudioAccessorySample.btcTimestamp = v117;
  v118 = self->_analyticsTracker.__ptr_;
  if (v118)
  {
    v119 = self->_headTrackingService.__ptr_;
    v120 = *(v118 + 113);
    v121 = 0.0;
    if (*(v119 + 678) == AuxSampleTimestamp_currentTime)
    {
      v121 = 1.0;
    }

    if (v120 <= v121)
    {
      v120 = v121;
    }

    *(v118 + 113) = v120;
    v122 = *(v118 + 112);
    if (v122 >= v121)
    {
      v122 = v121;
    }

    *(v118 + 112) = v122;
    *(v118 + 114) = v121 + *(v118 + 114);
    ++*(v118 + 230);
    if (self->_previousBTZState != *(v119 + 16064))
    {
      if (*(v119 + 16064))
      {
        sub_19B6A7EE8(v118 + 2, @"BTZDuration");
        v123 = self->_analyticsTracker.__ptr_;
        *v115.i64 = v6 - self->_lastInBTZTime;
        v124 = *(v123 + 85);
        if (v124 <= *v115.i64)
        {
          v124 = v6 - self->_lastInBTZTime;
        }

        *(v123 + 85) = v124;
        v125 = *(v123 + 84);
        if (v125 >= *v115.i64)
        {
          v125 = *v115.i64;
        }

        *(v123 + 84) = v125;
        *(v123 + 86) = *v115.i64 + *(v123 + 86);
        ++*(v123 + 174);
        lastAngleBetweenCurrentBoresightToDefault = self->_lastAngleBetweenCurrentBoresightToDefault;
        if (lastAngleBetweenCurrentBoresightToDefault < 0.0)
        {
          lastAngleBetweenCurrentBoresightToDefault = -lastAngleBetweenCurrentBoresightToDefault;
        }

        v127 = lastAngleBetweenCurrentBoresightToDefault;
        v128 = *(v123 + 109);
        if (v128 <= v127)
        {
          v128 = v127;
        }

        *(v123 + 109) = v128;
        v129 = *(v123 + 108);
        if (v129 >= v127)
        {
          v129 = v127;
        }

        *(v123 + 108) = v129;
        *(v123 + 110) = *(v123 + 110) + v127;
        ++*(v123 + 222);
      }

      else
      {
        if (*(v118 + 2) > 0.0)
        {
          sub_19B6A80D8(v118 + 2, &stru_1F0E3D7A0);
        }

        self->_lastInBTZTime = v6;
      }

      v119 = self->_headTrackingService.__ptr_;
      self->_previousBTZState = *(v119 + 16064);
    }

    v130 = *(v119 + 16083);
    if (self->_previousCTState == v130)
    {
LABEL_187:
      self->_previousCTState = v130;
      v131 = self->_headTrackingService.__ptr_;
      if (*(v131 + 27784))
      {
        v132 = *(v131 + 33637);
        if (self->_previousCTBodyTurnState == v132)
        {
          goto LABEL_248;
        }

        v133 = (self->_analyticsTracker.__ptr_ + 352);
        if (*(v131 + 33637))
        {
          sub_19B6A7EE8(v133, @"CTBodyTurnDuration");
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
          }

          v134 = off_1EAFE29A0;
          if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_19B41C000, v134, OS_LOG_TYPE_INFO, "[CMMediaSession] Entering CT body turn state.", buf, 2u);
          }

          v135 = sub_19B420058();
          if (*(v135 + 160) <= 1 && *(v135 + 164) <= 1 && *(v135 + 168) <= 1 && !*(v135 + 152))
          {
            goto LABEL_247;
          }

          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
          }

          *v383 = 0;
          LODWORD(v354) = 2;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 1, "[CMMediaSession] Entering CT body turn state.", v383, v354);
          v137 = v136;
          sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _feedAccessoryDeviceMotion:]", "CoreLocation: %s\n", v136);
LABEL_245:
          if (v137 != buf)
          {
            free(v137);
          }

LABEL_247:
          self->_previousCTBodyTurnState = v132;
          v131 = self->_headTrackingService.__ptr_;
LABEL_248:
          if (*(v131 + 12192))
          {
            v162 = *(v131 + 12224);
            if (self->_previousHeadTurnState == v162)
            {
              goto LABEL_280;
            }

            v163 = (self->_analyticsTracker.__ptr_ + 368);
            if (*(v131 + 12224))
            {
              sub_19B6A7EE8(v163, @"HeadTurnDuration");
              if (qword_1EAFE2998 != -1)
              {
                dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
              }

              v164 = off_1EAFE29A0;
              if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_19B41C000, v164, OS_LOG_TYPE_INFO, "[CMMediaSession] Entering head turn state.", buf, 2u);
              }

              v165 = sub_19B420058();
              if (*(v165 + 160) <= 1 && *(v165 + 164) <= 1 && *(v165 + 168) <= 1 && !*(v165 + 152))
              {
                goto LABEL_279;
              }

              bzero(buf, 0x65CuLL);
              if (qword_1EAFE2998 != -1)
              {
                dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
              }

              *v383 = 0;
              LODWORD(v354) = 2;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 1, "[CMMediaSession] Entering head turn state.", v383, v354);
              v167 = v166;
              sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _feedAccessoryDeviceMotion:]", "CoreLocation: %s\n", v166);
LABEL_277:
              if (v167 != buf)
              {
                free(v167);
              }

LABEL_279:
              self->_previousHeadTurnState = v162;
              v131 = self->_headTrackingService.__ptr_;
LABEL_280:
              v171 = *(v131 + 16080);
              if (self->_previousTracking1IMU == v171)
              {
                goto LABEL_325;
              }

              v172 = self->_analyticsTracker.__ptr_;
              if (v171)
              {
                sub_19B6A7EE8(v172 + 14, @"in1IMUDuration");
                v173 = self->_analyticsTracker.__ptr_;
                if (*(v173 + 10) > 0.0)
                {
                  sub_19B6A80D8(v173 + 10, &stru_1F0E3D7A0);
                  v173 = self->_analyticsTracker.__ptr_;
                }

                v175 = *(v173 + 12);
                v174 = (v173 + 96);
                if (v175 > 0.0)
                {
                  sub_19B6A80D8(v174, &stru_1F0E3D7A0);
                }

                goto LABEL_321;
              }

              sub_19B6A80D8(v172 + 14, @"in1IMUDuration");
              v180 = self->_analyticsTracker.__ptr_;
              v182 = *(v180 + 18);
              v181 = (v180 + 144);
              if (v182 > 0.0)
              {
                sub_19B6A80D8(v181, &stru_1F0E3D7A0);
              }

              previousMotionActivityType = self->_previousMotionActivityType;
              if (previousMotionActivityType > 51)
              {
                if (previousMotionActivityType != 52 && previousMotionActivityType != 56)
                {
LABEL_319:
                  if ((previousMotionActivityType & 0xFFFFFFFE) != 0xA)
                  {
                    if (previousMotionActivityType <= 0x29 && ((1 << previousMotionActivityType) & 0x20000000110) != 0)
                    {
                      sub_19B6A7EE8(self->_analyticsTracker.__ptr_ + 12, @"srcPedestrian2IMUDuration");
                    }

                    goto LABEL_321;
                  }
                }
              }

              else
              {
                if (!previousMotionActivityType)
                {
                  goto LABEL_321;
                }

                if (previousMotionActivityType != 5)
                {
                  goto LABEL_319;
                }
              }

              sub_19B6A7EE8(self->_analyticsTracker.__ptr_ + 10, @"inVehicle2IMUDuration");
LABEL_321:
              if (self->_previousTracking1IMU != -1)
              {
                v193 = self->_analyticsTracker.__ptr_;
                v194 = *(v193 + 492);
                if (v194 != -1)
                {
                  *(v193 + 492) = v194 + 1;
                }
              }

              v131 = self->_headTrackingService.__ptr_;
              self->_previousTracking1IMU = *(v131 + 16080);
LABEL_325:
              if (self->_previousTrackingEnabled)
              {
                if (*(v131 + 16082))
                {
                  sub_19B6A80D8(self->_analyticsTracker.__ptr_ + 42, @"durationOfSessionHeadtracked");
                  lastDistractedViewingEndTime = self->_lastDistractedViewingEndTime;
                  if (lastDistractedViewingEndTime > 0.0)
                  {
                    v197 = self->_analyticsTracker.__ptr_;
                    v198 = v6 - lastDistractedViewingEndTime;
                    v199 = *(v197 + 149);
                    if (v199 <= v198)
                    {
                      v199 = v198;
                    }

                    *(v197 + 149) = v199;
                    v200 = *(v197 + 148);
                    if (v200 >= v198)
                    {
                      v200 = v198;
                    }

                    *(v197 + 148) = v200;
                    *(v197 + 150) = v198 + *(v197 + 150);
                    ++*(v197 + 302);
                  }

                  v201 = *(*(self->_headTrackingService.__ptr_ + 4717) + 112);
                  objc_msgSend_enterDistractedViewingSession_(self->_mcSession, v195, v201);
                  switch(v201)
                  {
                    case 3u:
                      v202 = self->_analyticsTracker.__ptr_;
                      v215 = *(v202 + 505);
                      if (v215 != -1)
                      {
                        *(v202 + 505) = v215 + 1;
                      }

                      break;
                    case 2u:
                      v213 = self->_analyticsTracker.__ptr_;
                      v214 = *(v213 + 506);
                      if (v214 != -1)
                      {
                        *(v213 + 506) = v214 + 1;
                      }

                      sub_19B6A7EE8(v213 + 40, @"durationOfSessionDisabledDueToJBL");
                      goto LABEL_374;
                    case 1u:
                      v202 = self->_analyticsTracker.__ptr_;
                      v203 = *(v202 + 504);
                      if (v203 != -1)
                      {
                        *(v202 + 504) = v203 + 1;
                      }

                      break;
                    default:
                      if (qword_1EAFE2998 != -1)
                      {
                        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
                      }

                      v216 = off_1EAFE29A0;
                      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 67240192;
                        *&buf[4] = v201;
                        _os_log_impl(&dword_19B41C000, v216, OS_LOG_TYPE_ERROR, "[CMMediaSession] CALogger received invalid disable route: %{public}d", buf, 8u);
                      }

                      v217 = sub_19B420058();
                      if ((*(v217 + 160) & 0x80000000) == 0 || (*(v217 + 164) & 0x80000000) == 0 || (*(v217 + 168) & 0x80000000) == 0 || *(v217 + 152))
                      {
                        bzero(buf, 0x65CuLL);
                        if (qword_1EAFE2998 != -1)
                        {
                          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
                        }

                        *v383 = 67240192;
                        *&v383[4] = v201;
                        LODWORD(v354) = 8;
                        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 16, "[CMMediaSession] CALogger received invalid disable route: %{public}d", v383, v354);
                        v219 = v218;
                        sub_19B6BB7CC("Generic", 1, 0, 0, "[CMMediaSession _feedAccessoryDeviceMotion:]", "CoreLocation: %s\n", v218);
                        if (v219 != buf)
                        {
                          free(v219);
                        }
                      }

                      goto LABEL_374;
                  }

                  sub_19B6A7EE8(v202 + 38, @"durationOfSessionDisabledDueToWalking");
LABEL_374:
                  self->_lastTrackingDisableRoute = v201;
                  v220 = 304;
LABEL_418:
                  *(&self->super.isa + v220) = v6;
                  v131 = self->_headTrackingService.__ptr_;
                  v204 = *(v131 + 16082) ^ 1;
                  goto LABEL_419;
                }

                v204 = 1;
LABEL_419:
                self->_previousTrackingEnabled = v204 & 1;
                if (!self->_previousSrcMoving)
                {
                  if (!*(v131 + 1332))
                  {
                    goto LABEL_424;
                  }

                  v242 = 0.0;
                  v243 = -12;
                  do
                  {
                    v242 = v242 + (*(v131 + v243 + 5292) * *(v131 + v243 + 5292));
                    v243 += 4;
                  }

                  while (v243);
                  if (sqrtf(v242) > 0.34907)
                  {
LABEL_424:
                    if (qword_1EAFE2998 != -1)
                    {
                      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
                    }

                    v244 = off_1EAFE29A0;
                    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_INFO))
                    {
                      *buf = 0;
                      _os_log_impl(&dword_19B41C000, v244, OS_LOG_TYPE_INFO, "[CMMediaSession] Src started moving", buf, 2u);
                    }

                    v245 = sub_19B420058();
                    if (*(v245 + 160) > 1 || *(v245 + 164) > 1 || *(v245 + 168) > 1 || *(v245 + 152))
                    {
                      bzero(buf, 0x65CuLL);
                      if (qword_1EAFE2998 != -1)
                      {
                        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
                      }

                      *v383 = 0;
                      LODWORD(v354) = 2;
                      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 1, "[CMMediaSession] Src started moving", v383, v354);
                      v247 = v246;
                      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _feedAccessoryDeviceMotion:]", "CoreLocation: %s\n", v246);
                      if (v247 != buf)
                      {
                        free(v247);
                      }
                    }

                    sub_19B6A7EE8(self->_analyticsTracker.__ptr_ + 26, @"srcMoving");
                    if (*(self->_analyticsTracker.__ptr_ + 30) > 0.0)
                    {
                      sub_19B6A80D8(self->_analyticsTracker.__ptr_ + 30, &stru_1F0E3D7A0);
                    }

                    v131 = self->_headTrackingService.__ptr_;
                    if (!*(v131 + 1350))
                    {
                      goto LABEL_442;
                    }

                    v248 = 0.0;
                    v249 = -12;
                    do
                    {
                      v248 = v248 + (*(v131 + v249 + 5364) * *(v131 + v249 + 5364));
                      v249 += 4;
                    }

                    while (v249);
                    if (sqrtf(v248) > 0.34907)
                    {
LABEL_442:
                      if (qword_1EAFE2998 != -1)
                      {
                        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
                      }

                      v250 = off_1EAFE29A0;
                      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_INFO))
                      {
                        *buf = 0;
                        _os_log_impl(&dword_19B41C000, v250, OS_LOG_TYPE_INFO, "[CMMediaSession] Aux and src started moving", buf, 2u);
                      }

                      v251 = sub_19B420058();
                      if (*(v251 + 160) > 1 || *(v251 + 164) > 1 || *(v251 + 168) > 1 || *(v251 + 152))
                      {
                        bzero(buf, 0x65CuLL);
                        if (qword_1EAFE2998 != -1)
                        {
                          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
                        }

                        *v383 = 0;
                        LODWORD(v354) = 2;
                        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 1, "[CMMediaSession] Aux and src started moving", v383, v354);
                        v253 = v252;
                        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _feedAccessoryDeviceMotion:]", "CoreLocation: %s\n", v252);
                        if (v253 != buf)
                        {
                          free(v253);
                        }
                      }

                      sub_19B6A7EE8(self->_analyticsTracker.__ptr_ + 28, @"auxAndSrcMoving");
                      v131 = self->_headTrackingService.__ptr_;
                    }
                  }
                }

                if (!self->_previousAuxMoving)
                {
                  if (!*(v131 + 1350))
                  {
                    goto LABEL_460;
                  }

                  v254 = 0.0;
                  v255 = -12;
                  do
                  {
                    v254 = v254 + (*(v131 + v255 + 5364) * *(v131 + v255 + 5364));
                    v255 += 4;
                  }

                  while (v255);
                  if (sqrtf(v254) > 0.34907)
                  {
LABEL_460:
                    if (qword_1EAFE2998 != -1)
                    {
                      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
                    }

                    v256 = off_1EAFE29A0;
                    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_INFO))
                    {
                      *buf = 0;
                      _os_log_impl(&dword_19B41C000, v256, OS_LOG_TYPE_INFO, "[CMMediaSession] Aux started moving", buf, 2u);
                    }

                    v257 = sub_19B420058();
                    if (*(v257 + 160) > 1 || *(v257 + 164) > 1 || *(v257 + 168) > 1 || *(v257 + 152))
                    {
                      bzero(buf, 0x65CuLL);
                      if (qword_1EAFE2998 != -1)
                      {
                        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
                      }

                      *v383 = 0;
                      LODWORD(v354) = 2;
                      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 1, "[CMMediaSession] Aux started moving", v383, v354);
                      v259 = v258;
                      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _feedAccessoryDeviceMotion:]", "CoreLocation: %s\n", v258);
                      if (v259 != buf)
                      {
                        free(v259);
                      }
                    }

                    sub_19B6A7EE8(self->_analyticsTracker.__ptr_ + 24, @"auxMoving");
                    if (*(self->_analyticsTracker.__ptr_ + 30) > 0.0)
                    {
                      sub_19B6A80D8(self->_analyticsTracker.__ptr_ + 30, &stru_1F0E3D7A0);
                    }

                    v131 = self->_headTrackingService.__ptr_;
                    if (!*(v131 + 1332))
                    {
                      goto LABEL_478;
                    }

                    v260 = 0.0;
                    v261 = -12;
                    do
                    {
                      v260 = v260 + (*(v131 + v261 + 5292) * *(v131 + v261 + 5292));
                      v261 += 4;
                    }

                    while (v261);
                    if (sqrtf(v260) > 0.34907)
                    {
LABEL_478:
                      if (qword_1EAFE2998 != -1)
                      {
                        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
                      }

                      v262 = off_1EAFE29A0;
                      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_INFO))
                      {
                        *buf = 0;
                        _os_log_impl(&dword_19B41C000, v262, OS_LOG_TYPE_INFO, "[CMMediaSession] Aux and src started moving", buf, 2u);
                      }

                      v263 = sub_19B420058();
                      if (*(v263 + 160) > 1 || *(v263 + 164) > 1 || *(v263 + 168) > 1 || *(v263 + 152))
                      {
                        bzero(buf, 0x65CuLL);
                        if (qword_1EAFE2998 != -1)
                        {
                          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
                        }

                        *v383 = 0;
                        LODWORD(v354) = 2;
                        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 1, "[CMMediaSession] Aux and src started moving", v383, v354);
                        v265 = v264;
                        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _feedAccessoryDeviceMotion:]", "CoreLocation: %s\n", v264);
                        if (v265 != buf)
                        {
                          free(v265);
                        }
                      }

                      sub_19B6A7EE8(self->_analyticsTracker.__ptr_ + 28, @"auxAndSrcMoving");
                      v131 = self->_headTrackingService.__ptr_;
                    }
                  }
                }

                if (self->_previousSrcMoving)
                {
                  if (*(v131 + 1332))
                  {
                    v266 = 0.0;
                    v267 = -12;
                    do
                    {
                      v266 = v266 + (*(v131 + v267 + 5292) * *(v131 + v267 + 5292));
                      v267 += 4;
                    }

                    while (v267);
                    if (sqrtf(v266) <= 0.34907)
                    {
                      if (qword_1EAFE2998 != -1)
                      {
                        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
                      }

                      v268 = off_1EAFE29A0;
                      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_INFO))
                      {
                        *buf = 0;
                        _os_log_impl(&dword_19B41C000, v268, OS_LOG_TYPE_INFO, "[CMMediaSession] Src stopped moving", buf, 2u);
                      }

                      v269 = sub_19B420058();
                      if (*(v269 + 160) > 1 || *(v269 + 164) > 1 || *(v269 + 168) > 1 || *(v269 + 152))
                      {
                        bzero(buf, 0x65CuLL);
                        if (qword_1EAFE2998 != -1)
                        {
                          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
                        }

                        *v383 = 0;
                        LODWORD(v354) = 2;
                        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 1, "[CMMediaSession] Src stopped moving", v383, v354);
                        v271 = v270;
                        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _feedAccessoryDeviceMotion:]", "CoreLocation: %s\n", v270);
                        if (v271 != buf)
                        {
                          free(v271);
                        }
                      }

                      sub_19B6A80D8(self->_analyticsTracker.__ptr_ + 26, @"srcMoving");
                      if (*(self->_analyticsTracker.__ptr_ + 28) > 0.0)
                      {
                        sub_19B6A80D8(self->_analyticsTracker.__ptr_ + 28, &stru_1F0E3D7A0);
                      }

                      v131 = self->_headTrackingService.__ptr_;
                      if (*(v131 + 1350))
                      {
                        v272 = 0.0;
                        v273 = -12;
                        do
                        {
                          v272 = v272 + (*(v131 + v273 + 5364) * *(v131 + v273 + 5364));
                          v273 += 4;
                        }

                        while (v273);
                        if (sqrtf(v272) <= 0.34907)
                        {
                          if (qword_1EAFE2998 != -1)
                          {
                            dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
                          }

                          v274 = off_1EAFE29A0;
                          if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_INFO))
                          {
                            *buf = 0;
                            _os_log_impl(&dword_19B41C000, v274, OS_LOG_TYPE_INFO, "[CMMediaSession] Aux and src entered quiescence", buf, 2u);
                          }

                          v275 = sub_19B420058();
                          if (*(v275 + 160) > 1 || *(v275 + 164) > 1 || *(v275 + 168) > 1 || *(v275 + 152))
                          {
                            bzero(buf, 0x65CuLL);
                            if (qword_1EAFE2998 != -1)
                            {
                              dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
                            }

                            *v383 = 0;
                            LODWORD(v354) = 2;
                            _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 1, "[CMMediaSession] Aux and src entered quiescence", v383, v354);
                            v277 = v276;
                            sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _feedAccessoryDeviceMotion:]", "CoreLocation: %s\n", v276);
                            if (v277 != buf)
                            {
                              free(v277);
                            }
                          }

                          sub_19B6A7EE8(self->_analyticsTracker.__ptr_ + 30, @"auxAndSrcQuiescent");
                          v131 = self->_headTrackingService.__ptr_;
                        }
                      }
                    }
                  }
                }

                if (self->_previousAuxMoving)
                {
                  if (*(v131 + 1350))
                  {
                    v278 = 0.0;
                    v279 = -12;
                    do
                    {
                      v278 = v278 + (*(v131 + v279 + 5364) * *(v131 + v279 + 5364));
                      v279 += 4;
                    }

                    while (v279);
                    if (sqrtf(v278) <= 0.34907)
                    {
                      if (qword_1EAFE2998 != -1)
                      {
                        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
                      }

                      v280 = off_1EAFE29A0;
                      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_INFO))
                      {
                        *buf = 0;
                        _os_log_impl(&dword_19B41C000, v280, OS_LOG_TYPE_INFO, "[CMMediaSession] Aux stopped moving", buf, 2u);
                      }

                      v281 = sub_19B420058();
                      if (*(v281 + 160) > 1 || *(v281 + 164) > 1 || *(v281 + 168) > 1 || *(v281 + 152))
                      {
                        bzero(buf, 0x65CuLL);
                        if (qword_1EAFE2998 != -1)
                        {
                          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
                        }

                        *v383 = 0;
                        LODWORD(v354) = 2;
                        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 1, "[CMMediaSession] Aux stopped moving", v383, v354);
                        v283 = v282;
                        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _feedAccessoryDeviceMotion:]", "CoreLocation: %s\n", v282);
                        if (v283 != buf)
                        {
                          free(v283);
                        }
                      }

                      sub_19B6A80D8(self->_analyticsTracker.__ptr_ + 24, @"auxMoving");
                      if (*(self->_analyticsTracker.__ptr_ + 28) > 0.0)
                      {
                        sub_19B6A80D8(self->_analyticsTracker.__ptr_ + 28, &stru_1F0E3D7A0);
                      }

                      v131 = self->_headTrackingService.__ptr_;
                      if (*(v131 + 1332))
                      {
                        v284 = 0.0;
                        v285 = -12;
                        do
                        {
                          v284 = v284 + (*(v131 + v285 + 5292) * *(v131 + v285 + 5292));
                          v285 += 4;
                        }

                        while (v285);
                        if (sqrtf(v284) <= 0.34907)
                        {
                          if (qword_1EAFE2998 != -1)
                          {
                            dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
                          }

                          v286 = off_1EAFE29A0;
                          if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_INFO))
                          {
                            *buf = 0;
                            _os_log_impl(&dword_19B41C000, v286, OS_LOG_TYPE_INFO, "[CMMediaSession] Aux and src entered quiescence", buf, 2u);
                          }

                          v287 = sub_19B420058();
                          if (*(v287 + 160) > 1 || *(v287 + 164) > 1 || *(v287 + 168) > 1 || *(v287 + 152))
                          {
                            bzero(buf, 0x65CuLL);
                            if (qword_1EAFE2998 != -1)
                            {
                              dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
                            }

                            *v383 = 0;
                            LODWORD(v354) = 2;
                            _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 1, "[CMMediaSession] Aux and src entered quiescence", v383, v354);
                            v289 = v288;
                            sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _feedAccessoryDeviceMotion:]", "CoreLocation: %s\n", v288);
                            if (v289 != buf)
                            {
                              free(v289);
                            }
                          }

                          sub_19B6A7EE8(self->_analyticsTracker.__ptr_ + 30, @"auxAndSrcQuiescent");
                          v131 = self->_headTrackingService.__ptr_;
                        }
                      }
                    }
                  }
                }

                if (*(v131 + 16))
                {
                  v290 = *(v131 + 37697);
                  v291 = v290;
                  previousSteadyStatePedestrian = self->_previousSteadyStatePedestrian;
                  if (previousSteadyStatePedestrian || !v290)
                  {
LABEL_581:
                    if (previousSteadyStatePedestrian && (v291 & 1) == 0)
                    {
                      if (qword_1EAFE2998 != -1)
                      {
                        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
                      }

                      v298 = off_1EAFE29A0;
                      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_INFO))
                      {
                        *buf = 0;
                        _os_log_impl(&dword_19B41C000, v298, OS_LOG_TYPE_INFO, "[CMMediaSession] leaving steadyStatePedestrian", buf, 2u);
                      }

                      v299 = sub_19B420058();
                      if (*(v299 + 160) > 1 || *(v299 + 164) > 1 || *(v299 + 168) > 1 || *(v299 + 152))
                      {
                        bzero(buf, 0x65CuLL);
                        if (qword_1EAFE2998 != -1)
                        {
                          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
                        }

                        *v383 = 0;
                        LODWORD(v354) = 2;
                        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 1, "[CMMediaSession] leaving steadyStatePedestrian", v383, v354);
                        v301 = v300;
                        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _feedAccessoryDeviceMotion:]", "CoreLocation: %s\n", v300);
                        if (v301 != buf)
                        {
                          free(v301);
                        }
                      }

                      sub_19B6A80D8(self->_analyticsTracker.__ptr_ + 34, @"steadyStatePedestrianDuration");
                      if (*(self->_analyticsTracker.__ptr_ + 44) > 0.0)
                      {
                        sub_19B6A80D8(self->_analyticsTracker.__ptr_ + 44, &stru_1F0E3D7A0);
                      }

                      if (qword_1EAFE2998 != -1)
                      {
                        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
                      }

                      v302 = off_1EAFE29A0;
                      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_INFO))
                      {
                        *buf = 0;
                        _os_log_impl(&dword_19B41C000, v302, OS_LOG_TYPE_INFO, "[CMMediaSession] Exiting CT body turn state due to leaving steadyStatePedestrian.", buf, 2u);
                      }

                      v303 = sub_19B420058();
                      if (*(v303 + 160) > 1 || *(v303 + 164) > 1 || *(v303 + 168) > 1 || *(v303 + 152))
                      {
                        bzero(buf, 0x65CuLL);
                        if (qword_1EAFE2998 != -1)
                        {
                          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
                        }

                        *v383 = 0;
                        LODWORD(v354) = 2;
                        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 1, "[CMMediaSession] Exiting CT body turn state due to leaving steadyStatePedestrian.", v383, v354);
                        v305 = v304;
                        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _feedAccessoryDeviceMotion:]", "CoreLocation: %s\n", v304);
                        if (v305 != buf)
                        {
                          free(v305);
                        }
                      }

                      v306 = self->_analyticsTracker.__ptr_;
                      if (*(v306 + 46) > 0.0)
                      {
                        sub_19B6A80D8(v306 + 46, &stru_1F0E3D7A0);
                      }

                      if (qword_1EAFE2998 != -1)
                      {
                        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
                      }

                      v307 = off_1EAFE29A0;
                      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_INFO))
                      {
                        *buf = 0;
                        _os_log_impl(&dword_19B41C000, v307, OS_LOG_TYPE_INFO, "[CMMediaSession] Exiting head turn state due to leaving steadyStatePedestrian.", buf, 2u);
                      }

                      v308 = sub_19B420058();
                      if (*(v308 + 160) > 1 || *(v308 + 164) > 1 || *(v308 + 168) > 1 || *(v308 + 152))
                      {
                        bzero(buf, 0x65CuLL);
                        if (qword_1EAFE2998 != -1)
                        {
                          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
                        }

                        *v383 = 0;
                        LODWORD(v354) = 2;
                        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 1, "[CMMediaSession] Exiting head turn state due to leaving steadyStatePedestrian.", v383, v354);
                        v310 = v309;
                        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _feedAccessoryDeviceMotion:]", "CoreLocation: %s\n", v309);
                        if (v310 != buf)
                        {
                          free(v310);
                        }
                      }
                    }

                    v311 = self->_headTrackingService.__ptr_;
                    if (*(v311 + 16))
                    {
                      v312 = *(v311 + 37712);
                      v313 = v312;
                      previousKeepBoresightCentered = self->_previousKeepBoresightCentered;
                      if (previousKeepBoresightCentered || !v312)
                      {
                        goto LABEL_643;
                      }

                      if (qword_1EAFE2998 != -1)
                      {
                        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
                      }

                      v315 = off_1EAFE29A0;
                      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_INFO))
                      {
                        *buf = 0;
                        _os_log_impl(&dword_19B41C000, v315, OS_LOG_TYPE_INFO, "[CMMediaSession] entering keepBoresightCentered state.", buf, 2u);
                      }

                      v316 = sub_19B420058();
                      if (*(v316 + 160) > 1 || *(v316 + 164) > 1 || *(v316 + 168) > 1 || *(v316 + 152))
                      {
                        bzero(buf, 0x65CuLL);
                        if (qword_1EAFE2998 != -1)
                        {
                          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
                        }

                        *v383 = 0;
                        LODWORD(v354) = 2;
                        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 1, "[CMMediaSession] entering keepBoresightCentered state.", v383, v354);
                        v318 = v317;
                        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _feedAccessoryDeviceMotion:]", "CoreLocation: %s\n", v317);
                        if (v318 != buf)
                        {
                          free(v318);
                        }
                      }

                      v319 = self->_analyticsTracker.__ptr_;
                      v320 = *(v319 + 507);
                      if (v320 != -1)
                      {
                        *(v319 + 507) = v320 + 1;
                      }

                      sub_19B6A7EE8(v319 + 36, @"keepBoresightCenteredDueToDynamicsDuration");
                      sub_19B6A80D8(self->_analyticsTracker.__ptr_ + 42, @"durationOfSessionHeadtracked");
                      p_previousKeepBoresightCentered = &self->_previousKeepBoresightCentered;
                      v313 = v312;
                    }

                    else
                    {
                      v312 = 0;
                      v313 = 0;
                      p_previousKeepBoresightCentered = &self->_previousKeepBoresightCentered;
                    }

                    previousKeepBoresightCentered = *p_previousKeepBoresightCentered;
LABEL_643:
                    if (previousKeepBoresightCentered && (v313 & 1) == 0)
                    {
                      if (qword_1EAFE2998 != -1)
                      {
                        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
                      }

                      v322 = off_1EAFE29A0;
                      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_INFO))
                      {
                        *buf = 0;
                        _os_log_impl(&dword_19B41C000, v322, OS_LOG_TYPE_INFO, "[CMMediaSession] leaving keepBoresightCentered state.", buf, 2u);
                      }

                      v323 = sub_19B420058();
                      if (*(v323 + 160) > 1 || *(v323 + 164) > 1 || *(v323 + 168) > 1 || *(v323 + 152))
                      {
                        bzero(buf, 0x65CuLL);
                        if (qword_1EAFE2998 != -1)
                        {
                          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
                        }

                        *v383 = 0;
                        LODWORD(v354) = 2;
                        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 1, "[CMMediaSession] leaving keepBoresightCentered state.", v383, v354);
                        v325 = v324;
                        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _feedAccessoryDeviceMotion:]", "CoreLocation: %s\n", v324);
                        if (v325 != buf)
                        {
                          free(v325);
                        }
                      }

                      sub_19B6A80D8(self->_analyticsTracker.__ptr_ + 36, @"keepBoresightCenteredDueToDynamicsDuration");
                      sub_19B6A7EE8(self->_analyticsTracker.__ptr_ + 42, @"durationOfSessionHeadtracked");
                    }

                    v326 = self->_headTrackingService.__ptr_;
                    if (*(v326 + 1350))
                    {
                      v327 = 0;
                      v328 = 0.0;
                      do
                      {
                        v328 = v328 + (*(v326 + v327 + 5352) * *(v326 + v327 + 5352));
                        v327 += 4;
                      }

                      while (v327 != 12);
                      v329 = sqrtf(v328) > 0.34907;
                    }

                    else
                    {
                      v329 = 1;
                    }

                    self->_previousAuxMoving = v329;
                    if (*(v326 + 1332))
                    {
                      v330 = 0;
                      v331 = 0.0;
                      do
                      {
                        v331 = v331 + (*(v326 + v330 + 5280) * *(v326 + v330 + 5280));
                        v330 += 4;
                      }

                      while (v330 != 12);
                      v332 = sqrtf(v331) > 0.34907;
                    }

                    else
                    {
                      v332 = 1;
                    }

                    self->_previousSrcMoving = v332;
                    self->_previousSteadyStatePedestrian = v290;
                    self->_previousKeepBoresightCentered = v312;
                    *buf = *(v326 + 16092);
                    *&buf[8] = *(v326 + 4025);
                    v333 = 24;
                    if (*(v326 + 16080))
                    {
                      v333 = 40;
                    }

                    *&buf[12] = *(v326 + v333 + 16092);
                    *buf = sub_19B604A8C(v326 + 80, buf, &buf[12]);
                    *&buf[4] = v334;
                    *&buf[8] = v335;
                    self->_lastAngleBetweenCurrentBoresightToDefault = sub_19B73888C(buf);
                    v336 = self->_headTrackingService.__ptr_;
                    v337 = *(v336 + 2005);
                    if (v337)
                    {
                      v338 = *(v336 + 4012);
                      if (v338 > 0.0)
                      {
                        lastResetCamControllerTimersTimestampUs = self->_lastResetCamControllerTimersTimestampUs;
                        if (lastResetCamControllerTimersTimestampUs)
                        {
                          v340 = v337 >= lastResetCamControllerTimersTimestampUs;
                          v341 = v337 - lastResetCamControllerTimersTimestampUs;
                          if (v341 != 0 && v340)
                          {
                            v342 = v341 * 0.000001;
                            v343 = v342 - v338;
                            v344 = self->_analyticsTracker.__ptr_;
                            v345 = v342;
                            v346 = *(v344 + 161);
                            if (v346 <= v345)
                            {
                              v346 = v345;
                            }

                            *(v344 + 161) = v346;
                            v347 = *(v344 + 160);
                            if (v347 >= v345)
                            {
                              v347 = v345;
                            }

                            *(v344 + 160) = v347;
                            *(v344 + 162) = *(v344 + 162) + v345;
                            ++*(v344 + 326);
                            v348 = v343;
                            v349 = *(v344 + 165);
                            if (v349 <= v348)
                            {
                              v349 = v348;
                            }

                            *(v344 + 165) = v349;
                            v350 = *(v344 + 164);
                            if (v350 >= v348)
                            {
                              v350 = v348;
                            }

                            *(v344 + 164) = v350;
                            *(v344 + 166) = *(v344 + 166) + v348;
                            ++*(v344 + 334);
                            v351 = v338;
                            v352 = *(v344 + 169);
                            if (v352 <= v351)
                            {
                              v352 = v351;
                            }

                            *(v344 + 169) = v352;
                            v353 = *(v344 + 168);
                            if (v353 >= v351)
                            {
                              v353 = v351;
                            }

                            *(v344 + 168) = v353;
                            *(v344 + 170) = *(v344 + 170) + v351;
                            ++*(v344 + 342);
                          }
                        }

                        self->_lastResetCamControllerTimersTimestampUs = v337;
                      }
                    }

                    return;
                  }

                  if (qword_1EAFE2998 != -1)
                  {
                    dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
                  }

                  v293 = off_1EAFE29A0;
                  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_INFO))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_19B41C000, v293, OS_LOG_TYPE_INFO, "[CMMediaSession] entering steadyStatePedestrian", buf, 2u);
                  }

                  v294 = sub_19B420058();
                  if (*(v294 + 160) > 1 || *(v294 + 164) > 1 || *(v294 + 168) > 1 || *(v294 + 152))
                  {
                    bzero(buf, 0x65CuLL);
                    if (qword_1EAFE2998 != -1)
                    {
                      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
                    }

                    *v383 = 0;
                    LODWORD(v354) = 2;
                    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 1, "[CMMediaSession] entering steadyStatePedestrian", v383, v354);
                    v296 = v295;
                    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _feedAccessoryDeviceMotion:]", "CoreLocation: %s\n", v295);
                    if (v296 != buf)
                    {
                      free(v296);
                    }
                  }

                  sub_19B6A7EE8(self->_analyticsTracker.__ptr_ + 34, @"steadyStatePedestrianDuration");
                  p_previousSteadyStatePedestrian = &self->_previousSteadyStatePedestrian;
                  v291 = v290;
                }

                else
                {
                  v290 = 0;
                  v291 = 0;
                  p_previousSteadyStatePedestrian = &self->_previousSteadyStatePedestrian;
                }

                previousSteadyStatePedestrian = *p_previousSteadyStatePedestrian;
                goto LABEL_581;
              }

              if (*(v131 + 16082))
              {
                v204 = 0;
                goto LABEL_419;
              }

              sub_19B6A7EE8(self->_analyticsTracker.__ptr_ + 42, @"durationOfSessionHeadtracked");
              lastDistractedViewingStartTime = self->_lastDistractedViewingStartTime;
              v207 = self->_analyticsTracker.__ptr_;
              if (lastDistractedViewingStartTime > 0.0)
              {
                v208 = v6 - lastDistractedViewingStartTime;
                v209 = *(v207 + 105);
                if (v209 <= v208)
                {
                  v209 = v208;
                }

                *(v207 + 105) = v209;
                v210 = *(v207 + 104);
                if (v210 >= v208)
                {
                  v210 = v208;
                }

                *(v207 + 104) = v210;
                *(v207 + 106) = v208 + *(v207 + 106);
                ++*(v207 + 214);
              }

              v211 = *(v207 + 493);
              if (v211 != -1)
              {
                *(v207 + 493) = v211 + 1;
              }

              lastTrackingDisableRoute = self->_lastTrackingDisableRoute;
              if (lastTrackingDisableRoute > 1)
              {
                if (lastTrackingDisableRoute == 2)
                {
                  sub_19B6A80D8(v207 + 40, @"durationOfSessionDisabledDueToJBL");
                  goto LABEL_387;
                }

                if (lastTrackingDisableRoute != 3)
                {
                  goto LABEL_387;
                }
              }

              else
              {
                if (!lastTrackingDisableRoute)
                {
                  if (qword_1EAFE2998 != -1)
                  {
                    dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
                  }

                  v221 = off_1EAFE29A0;
                  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_19B41C000, v221, OS_LOG_TYPE_ERROR, "[CMMediaSession] We're ending an unknown disable route, something is wrong", buf, 2u);
                  }

                  v222 = sub_19B420058();
                  if ((*(v222 + 160) & 0x80000000) == 0 || (*(v222 + 164) & 0x80000000) == 0 || (*(v222 + 168) & 0x80000000) == 0 || *(v222 + 152))
                  {
                    bzero(buf, 0x65CuLL);
                    if (qword_1EAFE2998 != -1)
                    {
                      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
                    }

                    *v383 = 0;
                    LODWORD(v354) = 2;
                    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 16, "[CMMediaSession] We're ending an unknown disable route, something is wrong", v383, v354);
                    v224 = v223;
                    sub_19B6BB7CC("Generic", 1, 0, 0, "[CMMediaSession _feedAccessoryDeviceMotion:]", "CoreLocation: %s\n", v223);
                    if (v224 != buf)
                    {
                      free(v224);
                    }
                  }

LABEL_387:
                  v225 = *(*(self->_headTrackingService.__ptr_ + 4717) + 108);
                  objc_msgSend_exitDistractedViewingSession_(self->_mcSession, v205, v225);
                  if (v225 > 3)
                  {
                    switch(v225)
                    {
                      case 4:
                        v232 = self->_analyticsTracker.__ptr_;
                        v233 = *(v232 + 497);
                        if (v233 != -1)
                        {
                          *(v232 + 497) = v233 + 1;
                        }

                        goto LABEL_417;
                      case 5:
                        v240 = self->_analyticsTracker.__ptr_;
                        v241 = *(v240 + 498);
                        if (v241 != -1)
                        {
                          *(v240 + 498) = v241 + 1;
                        }

                        goto LABEL_417;
                      case 6:
                        v228 = self->_analyticsTracker.__ptr_;
                        v229 = *(v228 + 499);
                        if (v229 != -1)
                        {
                          *(v228 + 499) = v229 + 1;
                        }

                        goto LABEL_417;
                    }
                  }

                  else
                  {
                    switch(v225)
                    {
                      case 1:
                        v230 = self->_analyticsTracker.__ptr_;
                        v231 = *(v230 + 494);
                        if (v231 != -1)
                        {
                          *(v230 + 494) = v231 + 1;
                        }

                        goto LABEL_417;
                      case 2:
                        v238 = self->_analyticsTracker.__ptr_;
                        v239 = *(v238 + 495);
                        if (v239 != -1)
                        {
                          *(v238 + 495) = v239 + 1;
                        }

                        goto LABEL_417;
                      case 3:
                        v226 = self->_analyticsTracker.__ptr_;
                        v227 = *(v226 + 496);
                        if (v227 != -1)
                        {
                          *(v226 + 496) = v227 + 1;
                        }

LABEL_417:
                        v220 = 312;
                        goto LABEL_418;
                    }
                  }

                  if (qword_1EAFE2998 != -1)
                  {
                    dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
                  }

                  v234 = off_1EAFE29A0;
                  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 67240192;
                    *&buf[4] = v225;
                    _os_log_impl(&dword_19B41C000, v234, OS_LOG_TYPE_ERROR, "[CMMediaSession] CALogger received invalid re-enable route: %{public}d", buf, 8u);
                  }

                  v235 = sub_19B420058();
                  if ((*(v235 + 160) & 0x80000000) == 0 || (*(v235 + 164) & 0x80000000) == 0 || (*(v235 + 168) & 0x80000000) == 0 || *(v235 + 152))
                  {
                    bzero(buf, 0x65CuLL);
                    if (qword_1EAFE2998 != -1)
                    {
                      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
                    }

                    *v383 = 67240192;
                    *&v383[4] = v225;
                    LODWORD(v354) = 8;
                    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 16, "[CMMediaSession] CALogger received invalid re-enable route: %{public}d", v383, v354);
                    v237 = v236;
                    sub_19B6BB7CC("Generic", 1, 0, 0, "[CMMediaSession _feedAccessoryDeviceMotion:]", "CoreLocation: %s\n", v236);
                    if (v237 != buf)
                    {
                      free(v237);
                    }
                  }

                  goto LABEL_417;
                }

                if (lastTrackingDisableRoute != 1)
                {
                  goto LABEL_387;
                }
              }

              sub_19B6A80D8(v207 + 38, @"durationOfSessionDisabledDueToWalking");
              goto LABEL_387;
            }
          }

          else
          {
            if (!self->_previousHeadTurnState)
            {
              goto LABEL_280;
            }

            LOBYTE(v162) = 0;
            v163 = (self->_analyticsTracker.__ptr_ + 368);
          }

          if (*v163 > 0.0)
          {
            sub_19B6A80D8(v163, &stru_1F0E3D7A0);
          }

          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
          }

          v168 = off_1EAFE29A0;
          if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_19B41C000, v168, OS_LOG_TYPE_INFO, "[CMMediaSession] Exiting head turn state.", buf, 2u);
          }

          v169 = sub_19B420058();
          if (*(v169 + 160) <= 1 && *(v169 + 164) <= 1 && *(v169 + 168) <= 1 && !*(v169 + 152))
          {
            goto LABEL_279;
          }

          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
          }

          *v383 = 0;
          LODWORD(v354) = 2;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 1, "[CMMediaSession] Exiting head turn state.", v383, v354);
          v167 = v170;
          sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _feedAccessoryDeviceMotion:]", "CoreLocation: %s\n", v170);
          goto LABEL_277;
        }
      }

      else
      {
        if (!self->_previousCTBodyTurnState)
        {
          goto LABEL_248;
        }

        LOBYTE(v132) = 0;
        v133 = (self->_analyticsTracker.__ptr_ + 352);
      }

      if (*v133 > 0.0)
      {
        sub_19B6A80D8(v133, &stru_1F0E3D7A0);
      }

      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v159 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v159, OS_LOG_TYPE_INFO, "[CMMediaSession] Exiting CT body turn state.", buf, 2u);
      }

      v160 = sub_19B420058();
      if (*(v160 + 160) <= 1 && *(v160 + 164) <= 1 && *(v160 + 168) <= 1 && !*(v160 + 152))
      {
        goto LABEL_247;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      *v383 = 0;
      LODWORD(v354) = 2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 1, "[CMMediaSession] Exiting CT body turn state.", v383, v354);
      v137 = v161;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _feedAccessoryDeviceMotion:]", "CoreLocation: %s\n", v161);
      goto LABEL_245;
    }

    if (!*(v119 + 16083))
    {
      v176 = mach_continuous_time();
      self->_lastExitCTTime = sub_19B41E070(v176);
      v177 = self->_analyticsTracker.__ptr_;
      if (*(v177 + 16) > 0.0)
      {
        sub_19B6A80D8(v177 + 16, &stru_1F0E3D7A0);
        v177 = self->_analyticsTracker.__ptr_;
      }

      if (*(v177 + 18) > 0.0)
      {
        sub_19B6A80D8(v177 + 18, &stru_1F0E3D7A0);
        v177 = self->_analyticsTracker.__ptr_;
      }

      if (*(v177 + 20) > 0.0)
      {
        sub_19B6A80D8(v177 + 20, &stru_1F0E3D7A0);
        v177 = self->_analyticsTracker.__ptr_;
      }

      v179 = *(v177 + 22);
      v178 = (v177 + 176);
      if (v179 > 0.0)
      {
        sub_19B6A80D8(v178, &stru_1F0E3D7A0);
      }

      goto LABEL_187;
    }

    v138 = self->_analyticsTracker.__ptr_;
    v139 = *(v138 + 488);
    if (v139 != -1)
    {
      *(v138 + 488) = v139 + 1;
    }

    v140 = self->_lastAngleBetweenCurrentBoresightToDefault;
    if (v140 < 0.0)
    {
      v140 = -v140;
    }

    *v115.i64 = v140;
    v141 = *(v138 + 93);
    if (v141 <= *v115.i64)
    {
      v141 = *v115.i64;
    }

    *(v138 + 93) = v141;
    v142 = *(v138 + 92);
    if (v142 >= *v115.i64)
    {
      v142 = *v115.i64;
    }

    *(v138 + 92) = v142;
    *v115.i64 = *(v138 + 94) + *v115.i64;
    *(v138 + 94) = v115.i64[0];
    ++*(v138 + 190);
    v143.f32[0] = sub_19B69A31C(v119, v115);
    v144 = v143.f32[0] < 0.0;
    p_headTrackingService = &self->_headTrackingService;
    v146.f32[0] = sub_19B69A31C(self->_headTrackingService.__ptr_, v143);
    if (v144)
    {
      v146.f32[0] = -v146.f32[0];
    }

    *v146.i64 = v146.f32[0];
    v147 = *(v138 + 97);
    if (v147 <= *v146.i64)
    {
      v147 = *v146.i64;
    }

    *(v138 + 97) = v147;
    v148 = *(v138 + 96);
    if (v148 >= *v146.i64)
    {
      v148 = *v146.i64;
    }

    *(v138 + 96) = v148;
    *v146.i64 = *(v138 + 98) + *v146.i64;
    *(v138 + 98) = v146.i64[0];
    ++*(v138 + 198);
    v149 = self->_analyticsTracker.__ptr_;
    v150.f32[0] = sub_19B69A370(*p_headTrackingService, v146);
    v151 = v150.f32[0] < 0.0;
    v152 = sub_19B69A370(*p_headTrackingService, v150);
    if (v151)
    {
      v152 = -v152;
    }

    v153 = v152;
    v154 = *(v149 + 101);
    if (v154 <= v153)
    {
      v154 = v153;
    }

    *(v149 + 101) = v154;
    v155 = *(v149 + 100);
    if (v155 >= v153)
    {
      v155 = v153;
    }

    *(v149 + 100) = v155;
    *(v149 + 102) = *(v149 + 102) + v153;
    ++*(v149 + 206);
    sub_19B6A7EE8(self->_analyticsTracker.__ptr_ + 16, @"CTDuration");
    if ((*p_headTrackingService)[2010].i8[0] == 1)
    {
      v156 = self->_analyticsTracker.__ptr_;
      v157 = *(v156 + 489);
      if (v157 != -1)
      {
        *(v156 + 489) = v157 + 1;
      }

      sub_19B6A7EE8(v156 + 18, @"CTDurationIn1IMU");
    }

    v158 = self->_previousMotionActivityType;
    if (v158 > 51)
    {
      if (v158 == 52 || v158 == 56)
      {
        goto LABEL_303;
      }
    }

    else
    {
      if (!v158)
      {
LABEL_311:
        if (self->_lastExitCTTime > 0.0)
        {
          v188 = self->_analyticsTracker.__ptr_;
          v189 = mach_continuous_time();
          v190 = sub_19B41E070(v189) - self->_lastExitCTTime;
          v191 = *(v188 + 89);
          if (v191 <= v190)
          {
            v191 = v190;
          }

          *(v188 + 89) = v191;
          v192 = *(v188 + 88);
          if (v192 >= v190)
          {
            v192 = v190;
          }

          *(v188 + 88) = v192;
          *(v188 + 90) = v190 + *(v188 + 90);
          ++*(v188 + 182);
          self->_lastExitCTTime = 0.0;
        }

        goto LABEL_187;
      }

      if (v158 == 5)
      {
        goto LABEL_303;
      }
    }

    if ((v158 & 0xFFFFFFFE) != 0xA)
    {
LABEL_306:
      if (v158 <= 0x29 && ((1 << v158) & 0x20000000110) != 0)
      {
        v186 = self->_analyticsTracker.__ptr_;
        v187 = *(v186 + 491);
        if (v187 != -1)
        {
          *(v186 + 491) = v187 + 1;
        }

        sub_19B6A7EE8(v186 + 22, @"CTDurationInPedestrian");
      }

      goto LABEL_311;
    }

LABEL_303:
    v184 = self->_analyticsTracker.__ptr_;
    v185 = *(v184 + 490);
    if (v185 != -1)
    {
      *(v184 + 490) = v185 + 1;
    }

    sub_19B6A7EE8(v184 + 20, @"CTDurationInVehicle");
    v158 = self->_previousMotionActivityType;
    goto LABEL_306;
  }
}

- (void)_feedAccessoryConfig:(const Config *)config
{
  v67 = *MEMORY[0x1E69E9840];
  if (self->_started)
  {
    ptr = self->_analyticsTracker.__ptr_;
    if (ptr)
    {
      *(ptr + 532) = config->var3;
    }

    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    v6 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
    {
      var0 = config->var0;
      var3 = config->var3;
      *buf = 67240963;
      *&buf[4] = var0;
      *&buf[8] = 2081;
      *&buf[10] = config->var1;
      v63 = 2081;
      var2 = config->var2;
      v65 = 1026;
      v66 = var3;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_DEFAULT, "[CMMediaSession] Received accessoryDeviceMotion config. side,%{public}d,configuration,%{private}s,serialNumber,%{private}s,hardwareModel,%{public}d", buf, 0x22u);
    }

    v9 = sub_19B420058();
    if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v10 = config->var0;
      v11 = config->var3;
      *v57 = 67240963;
      *&v57[4] = v10;
      *&v57[8] = 2081;
      *&v57[10] = config->var1;
      v58 = 2081;
      v59 = config->var2;
      v60 = 1026;
      v61 = v11;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[CMMediaSession] Received accessoryDeviceMotion config. side,%{public}d,configuration,%{private}s,serialNumber,%{private}s,hardwareModel,%{public}d", v57, 34);
      v13 = v12;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _feedAccessoryConfig:]", "CoreLocation: %s\n", v12);
      if (v13 != buf)
      {
        free(v13);
      }
    }

    objc_sync_enter(self);
    *v57 = 0;
    *&v57[8] = 0x3F80000000000000;
    v14 = config->var3;
    if (v14 > 3)
    {
      if (v14 == 4)
      {
        v28 = self->_analyticsTracker.__ptr_;
        v29 = config->var0;
        if (v28)
        {
          *(v28 + 533) = v29;
        }

        if (v29 == 2)
        {
          v17 = &xmmword_19B7BA10C;
          goto LABEL_94;
        }

        if (v29 == 1)
        {
          v17 = &xmmword_19B7BA0FC;
          goto LABEL_94;
        }

        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        v45 = off_1EAFE29A0;
        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v45, OS_LOG_TYPE_ERROR, "[CMMediaSession] Error -- config side for kAccessoryHardwareModelB494 must be 1 or 2.", buf, 2u);
        }

        v46 = sub_19B420058();
        if ((*(v46 + 160) & 0x80000000) != 0 && (*(v46 + 164) & 0x80000000) != 0 && (*(v46 + 168) & 0x80000000) != 0 && !*(v46 + 152))
        {
          goto LABEL_96;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        LOWORD(v55) = 0;
        LODWORD(v54) = 2;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 16, "[CMMediaSession] Error -- config side for kAccessoryHardwareModelB494 must be 1 or 2.", &v55, v54);
        v27 = v47;
        sub_19B6BB7CC("Generic", 1, 0, 0, "[CMMediaSession _feedAccessoryConfig:]", "CoreLocation: %s\n", v47);
        goto LABEL_130;
      }

      if (v14 != 5)
      {
        if (v14 == 6)
        {
          v17 = &xmmword_19B7BA0CC;
          goto LABEL_94;
        }

        goto LABEL_60;
      }

      v38 = self->_analyticsTracker.__ptr_;
      v39 = config->var0;
      if (v38)
      {
        *(v38 + 533) = v39;
      }

      if (v39 != 2)
      {
        if (v39 != 1)
        {
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
          }

          v51 = off_1EAFE29A0;
          if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_19B41C000, v51, OS_LOG_TYPE_ERROR, "[CMMediaSession] Error -- config side for kAccessoryHardwareModelB698 must be 1 or 2.", buf, 2u);
          }

          v52 = sub_19B420058();
          if ((*(v52 + 160) & 0x80000000) != 0 && (*(v52 + 164) & 0x80000000) != 0 && (*(v52 + 168) & 0x80000000) != 0 && !*(v52 + 152))
          {
            goto LABEL_96;
          }

          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
          }

          LOWORD(v55) = 0;
          LODWORD(v54) = 2;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 16, "[CMMediaSession] Error -- config side for kAccessoryHardwareModelB698 must be 1 or 2.", &v55, v54);
          v27 = v53;
          sub_19B6BB7CC("Generic", 1, 0, 0, "[CMMediaSession _feedAccessoryConfig:]", "CoreLocation: %s\n", v53);
          goto LABEL_130;
        }

LABEL_80:
        v17 = &xmmword_19B7BA11C;
        goto LABEL_94;
      }
    }

    else
    {
      if (v14 != 1)
      {
        if (v14 == 2)
        {
          v17 = &xmmword_19B7BA0BC;
          goto LABEL_94;
        }

        if (v14 == 3)
        {
          v15 = self->_analyticsTracker.__ptr_;
          v16 = config->var0;
          if (v15)
          {
            *(v15 + 533) = v16;
          }

          if (v16 == 2)
          {
            v17 = &xmmword_19B7BA0EC;
            goto LABEL_94;
          }

          if (v16 == 1)
          {
            v17 = &xmmword_19B7BA0DC;
LABEL_94:
            *buf = *v17;
            sub_19B41E130(buf, *buf);
            *v57 = *buf;
LABEL_95:
            objc_msgSend__setFixedTransforms_(self, v34, v57);
LABEL_96:
            if (self->_logForReplay)
            {
              sub_19B5E73F0(self->_logger.__ptr_, config);
            }

            objc_sync_exit(self);
            return;
          }

          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
          }

          v48 = off_1EAFE29A0;
          if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_19B41C000, v48, OS_LOG_TYPE_ERROR, "[CMMediaSession] Error -- config side for kAccessoryHardwareModelB688 must be 1 or 2.", buf, 2u);
          }

          v49 = sub_19B420058();
          if ((*(v49 + 160) & 0x80000000) != 0 && (*(v49 + 164) & 0x80000000) != 0 && (*(v49 + 168) & 0x80000000) != 0 && !*(v49 + 152))
          {
            goto LABEL_96;
          }

          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
          }

          LOWORD(v55) = 0;
          LODWORD(v54) = 2;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 16, "[CMMediaSession] Error -- config side for kAccessoryHardwareModelB688 must be 1 or 2.", &v55, v54);
          v27 = v50;
          sub_19B6BB7CC("Generic", 1, 0, 0, "[CMMediaSession _feedAccessoryConfig:]", "CoreLocation: %s\n", v50);
LABEL_130:
          if (v27 != buf)
          {
            free(v27);
          }

          goto LABEL_96;
        }

LABEL_60:
        if (config->var6)
        {
          v30 = self->_analyticsTracker.__ptr_;
          if (v30)
          {
            *(v30 + 533) = config->var0;
          }

          *v57 = config->var7;
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
          }

          v31 = off_1EAFE29A0;
          if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
          {
            v32 = config->var3;
            *buf = 67240192;
            *&buf[4] = v32;
            _os_log_impl(&dword_19B41C000, v31, OS_LOG_TYPE_DEFAULT, "[CMMediaSession] Use the H2H transformation from IORegistry for model %{public}d", buf, 8u);
          }

          v33 = sub_19B420058();
          if (*(v33 + 160) > 1 || *(v33 + 164) > 1 || *(v33 + 168) > 1 || *(v33 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE2998 != -1)
            {
              dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
            }

            v35 = config->var3;
            v55 = 67240192;
            v56 = v35;
            LODWORD(v54) = 8;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[CMMediaSession] Use the H2H transformation from IORegistry for model %{public}d", &v55, v54);
            v37 = v36;
            sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _feedAccessoryConfig:]", "CoreLocation: %s\n", v36);
            if (v37 != buf)
            {
              free(v37);
            }
          }

          goto LABEL_95;
        }

        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        v40 = off_1EAFE29A0;
        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
        {
          v41 = config->var3;
          *buf = 67240192;
          *&buf[4] = v41;
          _os_log_impl(&dword_19B41C000, v40, OS_LOG_TYPE_ERROR, "[CMMediaSession] Error -- No H2H transformation for model %{public}d", buf, 8u);
        }

        v42 = sub_19B420058();
        if ((*(v42 + 160) & 0x80000000) != 0 && (*(v42 + 164) & 0x80000000) != 0 && (*(v42 + 168) & 0x80000000) != 0 && !*(v42 + 152))
        {
          goto LABEL_96;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        v43 = config->var3;
        v55 = 67240192;
        v56 = v43;
        LODWORD(v54) = 8;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 16, "[CMMediaSession] Error -- No H2H transformation for model %{public}d", &v55, v54);
        v27 = v44;
        sub_19B6BB7CC("Generic", 1, 0, 0, "[CMMediaSession _feedAccessoryConfig:]", "CoreLocation: %s\n", v44);
        goto LABEL_130;
      }

      v22 = self->_analyticsTracker.__ptr_;
      v23 = config->var0;
      if (v22)
      {
        *(v22 + 533) = v23;
      }

      if (v23 != 2)
      {
        if (v23 != 1)
        {
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
          }

          v24 = off_1EAFE29A0;
          if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_19B41C000, v24, OS_LOG_TYPE_ERROR, "[CMMediaSession] Error -- config side for kAccessoryHardwareModelB298 must be 1 or 2.", buf, 2u);
          }

          v25 = sub_19B420058();
          if ((*(v25 + 160) & 0x80000000) != 0 && (*(v25 + 164) & 0x80000000) != 0 && (*(v25 + 168) & 0x80000000) != 0 && !*(v25 + 152))
          {
            goto LABEL_96;
          }

          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
          }

          LOWORD(v55) = 0;
          LODWORD(v54) = 2;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 16, "[CMMediaSession] Error -- config side for kAccessoryHardwareModelB298 must be 1 or 2.", &v55, v54);
          v27 = v26;
          sub_19B6BB7CC("Generic", 1, 0, 0, "[CMMediaSession _feedAccessoryConfig:]", "CoreLocation: %s\n", v26);
          goto LABEL_130;
        }

        goto LABEL_80;
      }
    }

    v17 = &xmmword_19B7BA12C;
    goto LABEL_94;
  }

  if (qword_1EAFE2998 != -1)
  {
    dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
  }

  v18 = off_1EAFE29A0;
  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v18, OS_LOG_TYPE_DEBUG, "[CMMediaSession] Ignoring _feedAccessoryConfig call that occurred after _stop was called.", buf, 2u);
  }

  v19 = sub_19B420058();
  if (*(v19 + 160) > 1 || *(v19 + 164) > 1 || *(v19 + 168) > 1 || *(v19 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    *v57 = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[CMMediaSession] Ignoring _feedAccessoryConfig call that occurred after _stop was called.", v57, 2);
    v21 = v20;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _feedAccessoryConfig:]", "CoreLocation: %s\n", v20);
    if (v21 != buf)
    {
      free(v21);
    }
  }
}

- (void)_feedPredictorEstimates
{
  v47 = *MEMORY[0x1E69E9840];
  if (self->_started)
  {
    v39[0] = 0;
    v39[1] = 0x3F80000000000000;
    v35 = 0;
    v36 = 0;
    v34 = 0;
    v33 = 0;
    objc_sync_enter(self);
    v3 = mach_absolute_time();
    v4 = sub_19B41E070(v3);
    self->_lastListenerOrientationGenerationTimestampSeconds = v4;
    jitterBufferLevel = self->_jitterBufferLevel;
    if (jitterBufferLevel == 0xFFFF)
    {
      v6 = 0.1;
    }

    else
    {
      v6 = ((jitterBufferLevel / 1000.0) + self->_renderingOverheadSeconds);
    }

    v11 = (v4 + v6) * 1000000.0;
    self->_lastPresentationTimestamp = v11;
    v33 = v11;
    sub_19B69A5F4(self->_headTrackingService.__ptr_, &v33, v39, &v37, &v36, &v35, &v34);
    ptr = self->_analyticsTracker.__ptr_;
    if (ptr)
    {
      v13 = self->_headTrackingService.__ptr_;
      v14 = *(v13 + 3443);
      if (v14)
      {
        if (v14 > self->_lastCAFwdPredictorError.timestamp)
        {
          v15 = *(v13 + 6888);
          self->_lastCAFwdPredictorError.timestamp = v14;
          self->_lastCAFwdPredictorError.errorRad = v15;
          v16 = (v15 * 57.296);
          v17 = *(ptr + 241);
          if (v17 <= v16)
          {
            v17 = (v15 * 57.296);
          }

          *(ptr + 241) = v17;
          v18 = *(ptr + 240);
          if (v18 >= v16)
          {
            v18 = (v15 * 57.296);
          }

          *(ptr + 240) = v18;
          *(ptr + 242) = *(ptr + 242) + v16;
          ++*(ptr + 486);
        }
      }
    }

    v19 = v36;
    if (self->_logForReplay)
    {
      *&buf = v36;
      *(&buf + 1) = v33;
      v43 = v35;
      v44 = v37;
      v45 = v38;
      v46 = v34;
      sub_19B5E67E8(self->_logger.__ptr_, &buf);
    }

    objc_sync_exit(self);
    if (v19)
    {
      v20 = mach_absolute_time();
      v21 = v20 > v19 + 500000;
      p_trackingEstimatesStagnated = &self->_trackingEstimatesStagnated;
      trackingEstimatesStagnated = self->_trackingEstimatesStagnated;
      if (!trackingEstimatesStagnated && v20 > v19 + 500000)
      {
        *p_trackingEstimatesStagnated = 1;
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        v24 = off_1EAFE29A0;
        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_19B41C000, v24, OS_LOG_TYPE_ERROR, "[CMMediaSession] Tracking stalled, likely due to data gap > 0.5s", &buf, 2u);
        }

        v25 = sub_19B420058();
        if ((*(v25 + 160) & 0x80000000) != 0 && (*(v25 + 164) & 0x80000000) != 0 && (*(v25 + 168) & 0x80000000) != 0 && !*(v25 + 152))
        {
          goto LABEL_56;
        }

        bzero(&buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        LOWORD(v40) = 0;
        _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B41C000, off_1EAFE29A0, 16, "[CMMediaSession] Tracking stalled, likely due to data gap > 0.5s", &v40, 2);
        v27 = v26;
        sub_19B6BB7CC("Generic", 1, 0, 0, "[CMMediaSession _feedPredictorEstimates]", "CoreLocation: %s\n", v26);
LABEL_54:
        if (v27 != &buf)
        {
          free(v27);
        }

LABEL_56:
        self->_lastStateTimestamp = v19;
        return;
      }
    }

    else
    {
      v21 = 0;
      p_trackingEstimatesStagnated = &self->_trackingEstimatesStagnated;
      trackingEstimatesStagnated = self->_trackingEstimatesStagnated;
    }

    if (!trackingEstimatesStagnated || v21)
    {
      goto LABEL_56;
    }

    *p_trackingEstimatesStagnated = 0;
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    v28 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
    {
      v29 = v19 - self->_lastStateTimestamp;
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v29;
      _os_log_impl(&dword_19B41C000, v28, OS_LOG_TYPE_DEFAULT, "[CMMediaSession] Tracking stagnation ended. Gap from last estimate: %llu", &buf, 0xCu);
    }

    v30 = sub_19B420058();
    if (*(v30 + 160) <= 1 && *(v30 + 164) <= 1 && *(v30 + 168) <= 1 && !*(v30 + 152))
    {
      goto LABEL_56;
    }

    bzero(&buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    v31 = v19 - self->_lastStateTimestamp;
    v40 = 134217984;
    v41 = v31;
    _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[CMMediaSession] Tracking stagnation ended. Gap from last estimate: %llu", &v40);
    v27 = v32;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _feedPredictorEstimates]", "CoreLocation: %s\n", v32);
    goto LABEL_54;
  }

  if (qword_1EAFE2998 != -1)
  {
    dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
  }

  v7 = off_1EAFE29A0;
  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_DEBUG, "[CMMediaSession] Ignoring _feedPredictorEstimates call that occurred after _stop was called.", &buf, 2u);
  }

  v8 = sub_19B420058();
  if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
  {
    bzero(&buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    LOWORD(v39[0]) = 0;
    _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[CMMediaSession] Ignoring _feedPredictorEstimates call that occurred after _stop was called.", v39, 2);
    v10 = v9;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _feedPredictorEstimates]", "CoreLocation: %s\n", v9);
    if (v10 != &buf)
    {
      free(v10);
    }
  }
}

- (void)_feedAccessoryInEarStatus:(const int *)status
{
  v33 = *MEMORY[0x1E69E9840];
  if (self->_started)
  {
    if (!self->_inEarStatusGatingEnabled || *status == self->_inEarStatus)
    {
      return;
    }

    objc_sync_enter(self);
    if (self->_logForReplay)
    {
      ptr = self->_logger.__ptr_;
      v6 = *status;
      v7 = mach_continuous_time();
      v8 = sub_19B41E070(v7);
      sub_19B5E7BFC(ptr, v6, v8);
    }

    self->_inEarStatus = *status;
    objc_sync_exit(self);
    sub_19B6D6344();
    v9 = sub_19B7851B0();
    if (sub_19B787CB8(v9))
    {
      if (self->_inEarStatus == 4)
      {
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        v10 = off_1EAFE29A0;
        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_DEFAULT, "[CMMediaSession] Both buds are in ear. Resuming head tracking", buf, 2u);
        }

        v11 = sub_19B420058();
        if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
          }

          v31[0] = 0;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[CMMediaSession] Both buds are in ear. Resuming head tracking", v31, 2);
          v13 = v12;
          sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _feedAccessoryInEarStatus:]", "CoreLocation: %s\n", v12);
          if (v13 != buf)
          {
            free(v13);
          }
        }

        v14 = sub_19B420D84();
        v30[0] = MEMORY[0x1E69E9820];
        v30[1] = 3221225472;
        v30[2] = sub_19B650A30;
        v30[3] = &unk_1E7532988;
        v30[4] = self;
        sub_19B420C9C(v14, v30);
      }

      else
      {
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        v22 = off_1EAFE29A0;
        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v22, OS_LOG_TYPE_DEFAULT, "[CMMediaSession] One bud is out of ear. Pausing head tracking", buf, 2u);
        }

        v23 = sub_19B420058();
        if (*(v23 + 160) > 1 || *(v23 + 164) > 1 || *(v23 + 168) > 1 || *(v23 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
          }

          v31[0] = 0;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[CMMediaSession] One bud is out of ear. Pausing head tracking", v31, 2);
          v25 = v24;
          sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _feedAccessoryInEarStatus:]", "CoreLocation: %s\n", v24);
          if (v25 != buf)
          {
            free(v25);
          }
        }

        v26 = sub_19B420D84();
        v29[0] = MEMORY[0x1E69E9820];
        v29[1] = 3221225472;
        v29[2] = sub_19B650A38;
        v29[3] = &unk_1E7532988;
        v29[4] = self;
        sub_19B420C9C(v26, v29);
        objc_msgSend__notifyClientHandler(self, v27, v28);
      }

      return;
    }

    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    v19 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v19, OS_LOG_TYPE_ERROR, "[CMMediaSession] Ignore InEar status update because the connected device is not supported", buf, 2u);
    }

    v20 = sub_19B420058();
    if ((*(v20 + 160) & 0x80000000) == 0 || (*(v20 + 164) & 0x80000000) == 0 || (*(v20 + 168) & 0x80000000) == 0 || *(v20 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v31[0] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 16, "[CMMediaSession] Ignore InEar status update because the connected device is not supported", v31, 2);
      v18 = v21;
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMMediaSession _feedAccessoryInEarStatus:]", "CoreLocation: %s\n", v21);
LABEL_32:
      if (v18 != buf)
      {
        free(v18);
      }
    }
  }

  else
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    v15 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v15, OS_LOG_TYPE_DEBUG, "[CMMediaSession] Ignoring _feedAccessoryInEarStatus call that occurred after _stop was called.", buf, 2u);
    }

    v16 = sub_19B420058();
    if (*(v16 + 160) > 1 || *(v16 + 164) > 1 || *(v16 + 168) > 1 || *(v16 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v31[0] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[CMMediaSession] Ignoring _feedAccessoryInEarStatus call that occurred after _stop was called.", v31, 2);
      v18 = v17;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _feedAccessoryInEarStatus:]", "CoreLocation: %s\n", v17);
      goto LABEL_32;
    }
  }
}

- (void)_feedAdaptiveLatencyJitterBufferLevel
{
  v11 = *MEMORY[0x1E69E9840];
  if (self->_started)
  {
    v3 = sub_19B420D84();
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_19B650C48;
    v8[3] = &unk_1E7532988;
    v8[4] = self;
    sub_19B420C9C(v3, v8);
  }

  else
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    v4 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_DEBUG, "[CMMediaSession] Ignoring _feedAdaptiveLatencyJitterBufferLevel call that occurred after _stop was called.", buf, 2u);
    }

    v5 = sub_19B420058();
    if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v9[0] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[CMMediaSession] Ignoring _feedAdaptiveLatencyJitterBufferLevel call that occurred after _stop was called.", v9, 2);
      v7 = v6;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _feedAdaptiveLatencyJitterBufferLevel]", "CoreLocation: %s\n", v6);
      if (v7 != buf)
      {
        free(v7);
      }
    }
  }
}

- (void)_updateClientMode:(int64_t)mode
{
  modeCopy = mode;
  v25 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend__mapCMMediaSessionClientModeToRelDMClientMode_(self, a2, mode);
  if (self->_clientMode != v5)
  {
    if (self->_headTrackingService.__ptr_)
    {
      v6 = v5;
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v7 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_INFO))
      {
        clientMode = self->_clientMode;
        *buf = 67240448;
        v22 = clientMode;
        v23 = 1026;
        v24 = modeCopy;
        _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_INFO, "[CMMediaSession] Changing clientMode from: %{public}d to %{public}d", buf, 0xEu);
      }

      v9 = sub_19B420058();
      if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        v11 = self->_clientMode;
        v18[0] = 67240448;
        v18[1] = v11;
        v19 = 1026;
        v20 = modeCopy;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 1, "[CMMediaSession] Changing clientMode from: %{public}d to %{public}d", v18, 14);
        v13 = v12;
        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _updateClientMode:]", "CoreLocation: %s\n", v12);
        if (v13 != buf)
        {
          free(v13);
        }
      }

      self->_clientMode = v6;
      objc_msgSend__disallowOpportunisticAnchorTrackingForFTClients_clientMode_(self, v10, self->_scheme, v6);
      objc_sync_enter(self);
      sub_19B6F5C84(self->_headTrackingService.__ptr_, self->_clientMode);
      if (self->_logForReplay)
      {
        sub_19B5E7E74(self->_logger.__ptr_, self->_clientMode);
      }

      objc_sync_exit(self);
    }

    else
    {
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v14 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v14, OS_LOG_TYPE_ERROR, "[CMMediaSession] Called _feedTrackingBehavior before _headTrackingService was initialized. Not able to set client mode.", buf, 2u);
      }

      v15 = sub_19B420058();
      if ((*(v15 + 160) & 0x80000000) == 0 || (*(v15 + 164) & 0x80000000) == 0 || (*(v15 + 168) & 0x80000000) == 0 || *(v15 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        LOWORD(v18[0]) = 0;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 16, "[CMMediaSession] Called _feedTrackingBehavior before _headTrackingService was initialized. Not able to set client mode.", v18, 2);
        v17 = v16;
        sub_19B6BB7CC("Generic", 1, 0, 0, "[CMMediaSession _updateClientMode:]", "CoreLocation: %s\n", v16);
        if (v17 != buf)
        {
          free(v17);
        }
      }
    }
  }
}

- (void)_updateTrackingScheme:(int64_t)scheme
{
  if (!self->_hasUserDefaultTrackingScheme)
  {
    objc_msgSend__setTrackingSchemeInternal_(self, a2, scheme);
  }
}

- (void)_feedScreenUnlockedEvent:(BOOL)event
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_started)
  {
    eventCopy = event;
    ptr = self->_analyticsTracker.__ptr_;
    if (ptr && *(self->_headTrackingService.__ptr_ + 60) != event)
    {
      if (event)
      {
        if (*(ptr + 50) > 0.0)
        {
          sub_19B6A80D8(ptr + 50, &stru_1F0E3D7A0);
        }
      }

      else
      {
        sub_19B6A7EE8(ptr + 50, @"lockScreenDuration");
      }
    }

    *(self->_headTrackingService.__ptr_ + 60) = eventCopy;
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    v9 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67240192;
      v14 = eventCopy;
      _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_DEFAULT, "[CMMediaSession] Screen state changed. isScreenUnlocked, %{public}d", buf, 8u);
    }

    v10 = sub_19B420058();
    if (*(v10 + 160) > 1 || *(v10 + 164) > 1 || *(v10 + 168) > 1 || *(v10 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      LODWORD(v12[0]) = 67240192;
      HIDWORD(v12[0]) = eventCopy;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[CMMediaSession] Screen state changed. isScreenUnlocked, %{public}d", v12, 8, v12[0]);
LABEL_30:
      v11 = v8;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _feedScreenUnlockedEvent:]", "CoreLocation: %s\n", v8);
      if (v11 != buf)
      {
        free(v11);
      }
    }
  }

  else
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    v6 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_DEBUG, "[CMMediaSession] Ignoring _feedScreenUnlockedEvent call that occurred after _stop was called.", buf, 2u);
    }

    v7 = sub_19B420058();
    if (*(v7 + 160) > 1 || *(v7 + 164) > 1 || *(v7 + 168) > 1 || *(v7 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      LOWORD(v12[0]) = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[CMMediaSession] Ignoring _feedScreenUnlockedEvent call that occurred after _stop was called.", v12, 2, v12[0]);
      goto LABEL_30;
    }
  }
}

- (AudioAccessorySample)_getLastAudioAccessorySample
{
  v3 = *&self[2].isIEDEnabled;
  *retstr->gyroBias = *&self[2].sourceTimestampToMachContinuous;
  *&retstr->sourceTimestampToMachContinuous = v3;
  *&retstr->isIEDEnabled = *&self[3].auxDM.quaternion.elements[2];
  v4 = *&self[2].quiescentMode;
  *&retstr->timestamp = *self[2].filteredAcceleration.elements;
  *retstr->filteredAcceleration.elements = v4;
  v5 = *self[2].gyroBias;
  *&retstr->quiescentMode = *&self[2].btcTimestamp;
  *&retstr->btcTimestamp = v5;
  v6 = *&self[2].auxDM.biasCovariance.elements[1];
  retstr->auxDM.quaternion = *self[2].auxDM.rotationRate.elements;
  *retstr->auxDM.rotationRate.elements = v6;
  v7 = *&self[2].timestamp;
  *&retstr->auxDM.biasCovariance.elements[1] = *&self[2].auxDM.userAcceleration.elements[2];
  *&retstr->auxDM.userAcceleration.elements[2] = v7;
  return self;
}

- (void)_logEvent:(id)event
{
  v8 = *MEMORY[0x1E69E9840];
  if (self->_logForReplay)
  {
    objc_sync_enter(self);
    if (objc_msgSend_getCString_maxLength_encoding_(event, v5, v7, 1024, 1))
    {
      sub_19B5E6D00(self->_logger.__ptr_, v7, v6);
    }

    objc_sync_exit(self);
  }
}

- (void)_setFixedTransforms:(const CMOQuaternion *)transforms
{
  ptr = self->_headTrackingService.__ptr_;
  v5 = ptr + 36864;
  sub_19B699EF8(ptr, transforms);
  v6 = *(v5 + 110);
  if (v6)
  {
    *(v6 + 76) = *transforms;
  }

  v7 = *(v5 + 113);
  if (v7)
  {
    *(v7 + 4968) = *transforms;
  }
}

- (id).cxx_construct
{
  *(self + 92) = 0x3F80000000000000;
  *(self + 84) = 0;
  *(self + 8) = 0u;
  *(self + 24) = 0u;
  *(self + 40) = 0u;
  *(self + 17) = 0;
  *(self + 18) = 0;
  *(self + 19) = 0xA00000000;
  *(self + 30) = 0;
  *(self + 41) = 0;
  *(self + 84) = 0;
  *(self + 44) = 0;
  *(self + 45) = 0x3F80000000000000;
  *(self + 202) = 0;
  *(self + 78) = 0;
  *(self + 90) = 0;
  *(self + 197) = 0;
  *(self + 780) = 0;
  *(self + 198) = 1065353216;
  return self;
}

@end