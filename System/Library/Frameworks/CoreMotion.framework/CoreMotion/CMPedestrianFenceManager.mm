@interface CMPedestrianFenceManager
+ (unint64_t)availableFenceTypes;
- (CMPedestrianFenceManager)init;
- (void)clearFence:(id)fence;
- (void)dealloc;
- (void)endSession;
- (void)forceClearAllFences;
- (void)forceClearFence:(id)fence;
- (void)setFence:(id)fence withRadius:(float)radius withCompletion:(id)completion;
- (void)simulateFence:(id)fence withExitAfterDelay:(double)delay wake:(BOOL)wake withCompletion:(id)completion;
- (void)startSessionWithStatusHandler:(id)handler;
@end

@implementation CMPedestrianFenceManager

+ (unint64_t)availableFenceTypes
{
  sub_19B421798();
  if (sub_19B5F9308())
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  sub_19B421798();
  return v2 | sub_19B5F93B8();
}

- (void)startSessionWithStatusHandler:(id)handler
{
  v15 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2798 != -1)
  {
    dispatch_once(&qword_1EAFE2798, &unk_1F0E3B328);
  }

  v5 = qword_1EAFE27D0;
  if (os_log_type_enabled(qword_1EAFE27D0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_DEFAULT, "Starting pedestrian fence session", buf, 2u);
  }

  v6 = sub_19B420058();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2798 != -1)
    {
      dispatch_once(&qword_1EAFE2798, &unk_1F0E3B328);
    }

    v13[0] = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE27D0, 0, "Starting pedestrian fence session", v13, 2);
    v10 = v9;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMPedestrianFenceManager startSessionWithStatusHandler:]", "CoreLocation: %s\n", v9);
    if (v10 != buf)
    {
      free(v10);
    }
  }

  v11 = objc_msgSend__internal(self, v7, v8);
  objc_msgSend__setInSession_withStatusHandler_(v11, v12, 1, handler);
}

- (void)endSession
{
  v13 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2798 != -1)
  {
    dispatch_once(&qword_1EAFE2798, &unk_1F0E3B328);
  }

  v3 = qword_1EAFE27D0;
  if (os_log_type_enabled(qword_1EAFE27D0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEFAULT, "Ending pedestrian fence session", buf, 2u);
  }

  v4 = sub_19B420058();
  if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2798 != -1)
    {
      dispatch_once(&qword_1EAFE2798, &unk_1F0E3B328);
    }

    v11[0] = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE27D0, 0, "Ending pedestrian fence session", v11, 2);
    v8 = v7;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMPedestrianFenceManager endSession]", "CoreLocation: %s\n", v7);
    if (v8 != buf)
    {
      free(v8);
    }
  }

  v9 = objc_msgSend__internal(self, v5, v6);
  objc_msgSend__setInSession_withStatusHandler_(v9, v10, 0, 0);
}

- (void)setFence:(id)fence withRadius:(float)radius withCompletion:(id)completion
{
  fenceCopy = fence;
  v8 = a2;
  v37 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_isAvailable(CMPedestrianFenceManager, a2, fence))
  {
    if (completion)
    {
      goto LABEL_3;
    }
  }

  else
  {
    if (qword_1EAFE2798 != -1)
    {
      dispatch_once(&qword_1EAFE2798, &unk_1F0E3B328);
    }

    v24 = qword_1EAFE27D0;
    v8 = "";
    self = "assert";
    fenceCopy = "[CMPedestrianFenceManager isAvailable]";
    if (os_log_type_enabled(qword_1EAFE27D0, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *v34 = 0;
      *&v34[4] = 2082;
      *&v34[6] = "";
      *&v34[14] = 2082;
      *&v34[16] = "assert";
      v35 = 2081;
      v36 = "[CMPedestrianFenceManager isAvailable]";
      _os_log_impl(&dword_19B41C000, v24, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:PedestrianFence is not available on this platform, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EAFE2798 != -1)
      {
        dispatch_once(&qword_1EAFE2798, &unk_1F0E3B328);
      }
    }

    v25 = qword_1EAFE27D0;
    if (os_signpost_enabled(qword_1EAFE27D0))
    {
      *buf = 68289539;
      *v34 = 0;
      *&v34[4] = 2082;
      *&v34[6] = "";
      *&v34[14] = 2082;
      *&v34[16] = "assert";
      v35 = 2081;
      v36 = "[CMPedestrianFenceManager isAvailable]";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v25, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "PedestrianFence is not available on this platform", "{msg%{public}.0s:PedestrianFence is not available on this platform, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EAFE2798 != -1)
      {
        dispatch_once(&qword_1EAFE2798, &unk_1F0E3B328);
      }
    }

    completion = qword_1EAFE27D0;
    if (os_log_type_enabled(qword_1EAFE27D0, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *v34 = 0;
      *&v34[4] = 2082;
      *&v34[6] = "";
      *&v34[14] = 2082;
      *&v34[16] = "assert";
      v35 = 2081;
      v36 = "[CMPedestrianFenceManager isAvailable]";
      _os_log_impl(&dword_19B41C000, completion, OS_LOG_TYPE_INFO, "{msg%{public}.0s:PedestrianFence is not available on this platform, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Framework/CoreMotion/PedestrianFence/CMPedestrianFenceManager.mm", 236, "[CMPedestrianFenceManager setFence:withRadius:withCompletion:]");
  }

  v26 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v10, v11);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v26, v27, v8, self, @"CMPedestrianFenceManager.mm", 237, @"Invalid parameter not satisfying: %@", @"handler");
LABEL_3:
  if (qword_1EAFE2798 != -1)
  {
    dispatch_once(&qword_1EAFE2798, &unk_1F0E3B328);
  }

  v12 = qword_1EAFE27D0;
  if (os_log_type_enabled(qword_1EAFE27D0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    *v34 = fenceCopy;
    *&v34[8] = 2050;
    *&v34[10] = radius;
    _os_log_impl(&dword_19B41C000, v12, OS_LOG_TYPE_DEFAULT, "Setting pedestrian fence: fenceID,%{public}@,radiusMeters,%{public}f", buf, 0x16u);
  }

  v13 = sub_19B420058();
  if (*(v13 + 160) > 1 || *(v13 + 164) > 1 || *(v13 + 168) > 1 || *(v13 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2798 != -1)
    {
      dispatch_once(&qword_1EAFE2798, &unk_1F0E3B328);
    }

    v29 = 138543618;
    v30 = fenceCopy;
    v31 = 2050;
    radiusCopy = radius;
    LODWORD(v28) = 22;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE27D0, 0, "Setting pedestrian fence: fenceID,%{public}@,radiusMeters,%{public}f", &v29, v28);
    v18 = v17;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMPedestrianFenceManager setFence:withRadius:withCompletion:]", "CoreLocation: %s\n", v17);
    if (v18 != buf)
    {
      free(v18);
    }
  }

  *&v16 = radius;
  v19 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v14, v15, v16);
  v22 = objc_msgSend__internal(self, v20, v21);
  objc_msgSend__setFence_withRadius_wake_delay_withCompletion_(v22, v23, fenceCopy, v19, 1, 0, completion);
}

- (void)clearFence:(id)fence
{
  fenceCopy = fence;
  v24 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_isAvailable(CMPedestrianFenceManager, a2, fence))
  {
    if (qword_1EAFE2798 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    if (qword_1EAFE2798 != -1)
    {
      dispatch_once(&qword_1EAFE2798, &unk_1F0E3B328);
    }

    v13 = qword_1EAFE27D0;
    self = "[CMPedestrianFenceManager isAvailable]";
    if (os_log_type_enabled(qword_1EAFE27D0, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *v19 = 0;
      *&v19[4] = 2082;
      *&v19[6] = "";
      v20 = 2082;
      v21 = "assert";
      v22 = 2081;
      v23 = "[CMPedestrianFenceManager isAvailable]";
      _os_log_impl(&dword_19B41C000, v13, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:PedestrianFence is not available on this platform, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EAFE2798 != -1)
      {
        dispatch_once(&qword_1EAFE2798, &unk_1F0E3B328);
      }
    }

    v14 = qword_1EAFE27D0;
    if (os_signpost_enabled(qword_1EAFE27D0))
    {
      *buf = 68289539;
      *v19 = 0;
      *&v19[4] = 2082;
      *&v19[6] = "";
      v20 = 2082;
      v21 = "assert";
      v22 = 2081;
      v23 = "[CMPedestrianFenceManager isAvailable]";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "PedestrianFence is not available on this platform", "{msg%{public}.0s:PedestrianFence is not available on this platform, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EAFE2798 != -1)
      {
        dispatch_once(&qword_1EAFE2798, &unk_1F0E3B328);
      }
    }

    fenceCopy = qword_1EAFE27D0;
    if (os_log_type_enabled(qword_1EAFE27D0, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *v19 = 0;
      *&v19[4] = 2082;
      *&v19[6] = "";
      v20 = 2082;
      v21 = "assert";
      v22 = 2081;
      v23 = "[CMPedestrianFenceManager isAvailable]";
      _os_log_impl(&dword_19B41C000, fenceCopy, OS_LOG_TYPE_INFO, "{msg%{public}.0s:PedestrianFence is not available on this platform, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Framework/CoreMotion/PedestrianFence/CMPedestrianFenceManager.mm", 246, "[CMPedestrianFenceManager clearFence:]");
  }

  dispatch_once(&qword_1EAFE2798, &unk_1F0E3B328);
LABEL_3:
  v5 = qword_1EAFE27D0;
  if (os_log_type_enabled(qword_1EAFE27D0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *v19 = fenceCopy;
    _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_DEFAULT, "Clearing pedestrian fence: fenceID,%{public}@", buf, 0xCu);
  }

  v6 = sub_19B420058();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2798 != -1)
    {
      dispatch_once(&qword_1EAFE2798, &unk_1F0E3B328);
    }

    v16 = 138543362;
    v17 = fenceCopy;
    LODWORD(v15) = 12;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE27D0, 0, "Clearing pedestrian fence: fenceID,%{public}@", &v16, v15);
    v10 = v9;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMPedestrianFenceManager clearFence:]", "CoreLocation: %s\n", v9);
    if (v10 != buf)
    {
      free(v10);
    }
  }

  v11 = objc_msgSend__internal(self, v7, v8);
  objc_msgSend__clearFence_force_(v11, v12, fenceCopy, 0);
}

- (void)simulateFence:(id)fence withExitAfterDelay:(double)delay wake:(BOOL)wake withCompletion:(id)completion
{
  wakeCopy = wake;
  fenceCopy = fence;
  v10 = a2;
  v41 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_isAvailable(CMPedestrianFenceManager, a2, fence))
  {
    if (completion)
    {
      goto LABEL_3;
    }
  }

  else
  {
    if (qword_1EAFE2798 != -1)
    {
      dispatch_once(&qword_1EAFE2798, &unk_1F0E3B328);
    }

    v26 = qword_1EAFE27D0;
    v10 = "sE";
    self = "";
    fenceCopy = "assert";
    wakeCopy = "[CMPedestrianFenceManager isAvailable]";
    if (os_log_type_enabled(qword_1EAFE27D0, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *v38 = 0;
      *&v38[4] = 2082;
      *&v38[6] = "";
      *&v38[14] = 2082;
      *&v38[16] = "assert";
      v39 = 2081;
      v40 = "[CMPedestrianFenceManager isAvailable]";
      _os_log_impl(&dword_19B41C000, v26, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:PedestrianFence is not available on this platform, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EAFE2798 != -1)
      {
        dispatch_once(&qword_1EAFE2798, &unk_1F0E3B328);
      }
    }

    v27 = qword_1EAFE27D0;
    if (os_signpost_enabled(qword_1EAFE27D0))
    {
      *buf = 68289539;
      *v38 = 0;
      *&v38[4] = 2082;
      *&v38[6] = "";
      *&v38[14] = 2082;
      *&v38[16] = "assert";
      v39 = 2081;
      v40 = "[CMPedestrianFenceManager isAvailable]";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v27, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "PedestrianFence is not available on this platform", "{msg%{public}.0s:PedestrianFence is not available on this platform, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EAFE2798 != -1)
      {
        dispatch_once(&qword_1EAFE2798, &unk_1F0E3B328);
      }
    }

    completion = qword_1EAFE27D0;
    if (os_log_type_enabled(qword_1EAFE27D0, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *v38 = 0;
      *&v38[4] = 2082;
      *&v38[6] = "";
      *&v38[14] = 2082;
      *&v38[16] = "assert";
      v39 = 2081;
      v40 = "[CMPedestrianFenceManager isAvailable]";
      _os_log_impl(&dword_19B41C000, completion, OS_LOG_TYPE_INFO, "{msg%{public}.0s:PedestrianFence is not available on this platform, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Framework/CoreMotion/PedestrianFence/CMPedestrianFenceManager.mm", 253, "[CMPedestrianFenceManager simulateFence:withExitAfterDelay:wake:withCompletion:]");
  }

  v28 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v12, v13);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v28, v29, v10, self, @"CMPedestrianFenceManager.mm", 254, @"Invalid parameter not satisfying: %@", @"handler");
LABEL_3:
  if (qword_1EAFE2798 != -1)
  {
    dispatch_once(&qword_1EAFE2798, &unk_1F0E3B328);
  }

  v14 = qword_1EAFE27D0;
  delayCopy = delay;
  if (os_log_type_enabled(qword_1EAFE27D0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    *v38 = fenceCopy;
    *&v38[8] = 2050;
    *&v38[10] = delayCopy;
    *&v38[18] = 1026;
    *&v38[20] = wakeCopy;
    _os_log_impl(&dword_19B41C000, v14, OS_LOG_TYPE_DEFAULT, "Simulating fence exit: fenceID,%{public}@,delay,%{public}f,shouldWake,%{public}d", buf, 0x1Cu);
  }

  v16 = sub_19B420058();
  if (*(v16 + 160) > 1 || *(v16 + 164) > 1 || *(v16 + 168) > 1 || *(v16 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2798 != -1)
    {
      dispatch_once(&qword_1EAFE2798, &unk_1F0E3B328);
    }

    v31 = 138543874;
    v32 = fenceCopy;
    v33 = 2050;
    v34 = delayCopy;
    v35 = 1026;
    v36 = wakeCopy;
    LODWORD(v30) = 28;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE27D0, 0, "Simulating fence exit: fenceID,%{public}@,delay,%{public}f,shouldWake,%{public}d", &v31, v30);
    v20 = v19;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMPedestrianFenceManager simulateFence:withExitAfterDelay:wake:withCompletion:]", "CoreLocation: %s\n", v19);
    if (v20 != buf)
    {
      free(v20);
    }
  }

  v21 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v17, v18, delay);
  v24 = objc_msgSend__internal(self, v22, v23);
  objc_msgSend__setFence_withRadius_wake_delay_withCompletion_(v24, v25, fenceCopy, 0, wakeCopy, v21, completion);
}

- (void)forceClearFence:(id)fence
{
  fenceCopy = fence;
  v24 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_isAvailable(CMPedestrianFenceManager, a2, fence))
  {
    if (qword_1EAFE2798 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    if (qword_1EAFE2798 != -1)
    {
      dispatch_once(&qword_1EAFE2798, &unk_1F0E3B328);
    }

    v13 = qword_1EAFE27D0;
    self = "[CMPedestrianFenceManager isAvailable]";
    if (os_log_type_enabled(qword_1EAFE27D0, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *v19 = 0;
      *&v19[4] = 2082;
      *&v19[6] = "";
      v20 = 2082;
      v21 = "assert";
      v22 = 2081;
      v23 = "[CMPedestrianFenceManager isAvailable]";
      _os_log_impl(&dword_19B41C000, v13, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:PedestrianFence is not available on this platform, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EAFE2798 != -1)
      {
        dispatch_once(&qword_1EAFE2798, &unk_1F0E3B328);
      }
    }

    v14 = qword_1EAFE27D0;
    if (os_signpost_enabled(qword_1EAFE27D0))
    {
      *buf = 68289539;
      *v19 = 0;
      *&v19[4] = 2082;
      *&v19[6] = "";
      v20 = 2082;
      v21 = "assert";
      v22 = 2081;
      v23 = "[CMPedestrianFenceManager isAvailable]";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "PedestrianFence is not available on this platform", "{msg%{public}.0s:PedestrianFence is not available on this platform, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EAFE2798 != -1)
      {
        dispatch_once(&qword_1EAFE2798, &unk_1F0E3B328);
      }
    }

    fenceCopy = qword_1EAFE27D0;
    if (os_log_type_enabled(qword_1EAFE27D0, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *v19 = 0;
      *&v19[4] = 2082;
      *&v19[6] = "";
      v20 = 2082;
      v21 = "assert";
      v22 = 2081;
      v23 = "[CMPedestrianFenceManager isAvailable]";
      _os_log_impl(&dword_19B41C000, fenceCopy, OS_LOG_TYPE_INFO, "{msg%{public}.0s:PedestrianFence is not available on this platform, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Framework/CoreMotion/PedestrianFence/CMPedestrianFenceManager.mm", 263, "[CMPedestrianFenceManager forceClearFence:]");
  }

  dispatch_once(&qword_1EAFE2798, &unk_1F0E3B328);
LABEL_3:
  v5 = qword_1EAFE27D0;
  if (os_log_type_enabled(qword_1EAFE27D0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *v19 = fenceCopy;
    _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_DEFAULT, "Force clearing pedestrian fence: fenceID,%{public}@", buf, 0xCu);
  }

  v6 = sub_19B420058();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2798 != -1)
    {
      dispatch_once(&qword_1EAFE2798, &unk_1F0E3B328);
    }

    v16 = 138543362;
    v17 = fenceCopy;
    LODWORD(v15) = 12;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE27D0, 0, "Force clearing pedestrian fence: fenceID,%{public}@", &v16, v15);
    v10 = v9;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMPedestrianFenceManager forceClearFence:]", "CoreLocation: %s\n", v9);
    if (v10 != buf)
    {
      free(v10);
    }
  }

  v11 = objc_msgSend__internal(self, v7, v8);
  objc_msgSend__clearFence_force_(v11, v12, fenceCopy, 1);
}

- (void)forceClearAllFences
{
  v24 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_isAvailable(CMPedestrianFenceManager, a2, v2))
  {
    if (qword_1EAFE2798 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    if (qword_1EAFE2798 != -1)
    {
      dispatch_once(&qword_1EAFE2798, &unk_1F0E3B328);
    }

    v12 = qword_1EAFE27D0;
    if (os_log_type_enabled(qword_1EAFE27D0, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      v20 = 2082;
      v21 = "assert";
      v22 = 2081;
      v23 = "[CMPedestrianFenceManager isAvailable]";
      _os_log_impl(&dword_19B41C000, v12, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:PedestrianFence is not available on this platform, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EAFE2798 != -1)
      {
        dispatch_once(&qword_1EAFE2798, &unk_1F0E3B328);
      }
    }

    v13 = qword_1EAFE27D0;
    if (os_signpost_enabled(qword_1EAFE27D0))
    {
      *buf = 68289539;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      v20 = 2082;
      v21 = "assert";
      v22 = 2081;
      v23 = "[CMPedestrianFenceManager isAvailable]";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "PedestrianFence is not available on this platform", "{msg%{public}.0s:PedestrianFence is not available on this platform, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EAFE2798 != -1)
      {
        dispatch_once(&qword_1EAFE2798, &unk_1F0E3B328);
      }
    }

    self = qword_1EAFE27D0;
    if (os_log_type_enabled(qword_1EAFE27D0, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      v20 = 2082;
      v21 = "assert";
      v22 = 2081;
      v23 = "[CMPedestrianFenceManager isAvailable]";
      _os_log_impl(&dword_19B41C000, &self->super, OS_LOG_TYPE_INFO, "{msg%{public}.0s:PedestrianFence is not available on this platform, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Framework/CoreMotion/PedestrianFence/CMPedestrianFenceManager.mm", 270, "[CMPedestrianFenceManager forceClearAllFences]");
  }

  dispatch_once(&qword_1EAFE2798, &unk_1F0E3B328);
LABEL_3:
  v4 = qword_1EAFE27D0;
  if (os_log_type_enabled(qword_1EAFE27D0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_DEFAULT, "Force clearing all fences", buf, 2u);
  }

  v5 = sub_19B420058();
  if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2798 != -1)
    {
      dispatch_once(&qword_1EAFE2798, &unk_1F0E3B328);
    }

    v15[0] = 0;
    LODWORD(v14) = 2;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE27D0, 0, "Force clearing all fences", v15, v14);
    v9 = v8;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMPedestrianFenceManager forceClearAllFences]", "CoreLocation: %s\n", v8);
    if (v9 != buf)
    {
      free(v9);
    }
  }

  v10 = objc_msgSend__internal(self, v6, v7);
  objc_msgSend__clearFence_force_(v10, v11, 0, 1);
}

- (CMPedestrianFenceManager)init
{
  v4.receiver = self;
  v4.super_class = CMPedestrianFenceManager;
  v2 = [(CMPedestrianFenceManager *)&v4 init];
  if (v2)
  {
    v2->_internal = objc_alloc_init(CMPedestrianFenceManagerInternal);
  }

  return v2;
}

- (void)dealloc
{
  self->_internal = 0;
  v3.receiver = self;
  v3.super_class = CMPedestrianFenceManager;
  [(CMPedestrianFenceManager *)&v3 dealloc];
}

@end