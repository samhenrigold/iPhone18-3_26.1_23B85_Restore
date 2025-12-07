@interface CMAnomalyManager
+ (BOOL)isAnomalyDetectionAvailable;
+ (int64_t)getAnomalyFeatureEnablingStrategyForUserAge:(id)age;
- (CMAnomalyManager)init;
- (void)_registerForAnomalyDetection:(BOOL)detection;
- (void)_sendRegistrationForAnomalyEvent:(id)event;
- (void)ackAnomalyEvent:(id)event withResolution:(int64_t)resolution;
- (void)dealloc;
- (void)resolveAnomalyEvent:(id)event withResolution:(int64_t)resolution;
- (void)respondToAnomalyEvent:(id)event withResponse:(int64_t)response;
- (void)setDelegate:(id)delegate;
- (void)startAnomalyDetection;
- (void)stopAnomalyDetection;
- (void)updateAnomalyEventSOSCallState:(id)state withSOSSCallState:(int64_t)callState;
@end

@implementation CMAnomalyManager

- (void)setDelegate:(id)delegate
{
  v13 = *MEMORY[0x1E69E9840];
  if (self->_delegate)
  {
    if (qword_1EAFE29A8 != -1)
    {
      dispatch_once(&qword_1EAFE29A8, &unk_1F0E28BC0);
    }

    v5 = qword_1EAFE29B0;
    if (os_log_type_enabled(qword_1EAFE29B0, OS_LOG_TYPE_INFO))
    {
      v9 = 68289026;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_INFO, "{msg%{public}.0s:CMAnomalyManager: client code unregistered delegate, unregistering for anomaly detection}", &v9, 0x12u);
    }

    objc_msgSend__registerForAnomalyDetection_(self, v6, 0);
  }

  self->fLastReceivedEvent = objc_alloc_init(CMAnomalyEvent);
  self->fLastDispatchedEvent = objc_alloc_init(CMAnomalyEvent);
  self->_delegate = delegate;
  if (delegate)
  {
    if (qword_1EAFE29A8 != -1)
    {
      dispatch_once(&qword_1EAFE29A8, &unk_1F0E28BC0);
    }

    v7 = qword_1EAFE29B0;
    if (os_log_type_enabled(qword_1EAFE29B0, OS_LOG_TYPE_INFO))
    {
      v9 = 68289026;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_INFO, "{msg%{public}.0s:CMAnomalyManager: client code registered delegate, registering for anomaly detection}", &v9, 0x12u);
    }

    objc_msgSend__registerForAnomalyDetection_(self, v8, 1);
  }
}

+ (BOOL)isAnomalyDetectionAvailable
{
  v12 = *MEMORY[0x1E69E9840];
  if ((sub_19B421620() & 0x10000000000) != 0)
  {
    v2 = 1;
  }

  else
  {
    if (qword_1ED71D378 != -1)
    {
      dispatch_once(&qword_1ED71D378, &unk_1F0E29800);
    }

    v2 = byte_1ED71D370;
  }

  if (qword_1EAFE29A8 != -1)
  {
    dispatch_once(&qword_1EAFE29A8, &unk_1F0E28BC0);
  }

  v3 = qword_1EAFE29B0;
  if (os_log_type_enabled(qword_1EAFE29B0, OS_LOG_TYPE_INFO))
  {
    v5[0] = 68289538;
    v5[1] = 0;
    v6 = 2082;
    v7 = "";
    v8 = 1026;
    v9 = v2 & 1;
    v10 = 1026;
    v11 = byte_1ED71D370;
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_INFO, "{msg%{public}.0s:CMAnomalyManager: checking availability, available:%{public}hhd, forced:%{public}hhd}", v5, 0x1Eu);
  }

  return v2 & 1;
}

- (CMAnomalyManager)init
{
  v7.receiver = self;
  v7.super_class = CMAnomalyManager;
  v2 = [(CMAnomalyManager *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->fRegisteredForNotification = 0;
    v2->fLastReceivedEvent = objc_alloc_init(CMAnomalyEvent);
    v3->fLastDispatchedEvent = objc_alloc_init(CMAnomalyEvent);
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v3->fPrivateQueue = dispatch_queue_create("com.apple.CoreMotion.CMAnomalyManagerPrivateQueue", v4);
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v3->fAppQueue = dispatch_queue_create("com.apple.CoreMotion.CMAnomalyManagerAppQueue", v5);
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  objc_msgSend__registerForAnomalyDetection_(self, a2, 0);
  sub_19B428B50(&__p, "kCLConnectionMessageAnomalyEvent");
  CLConnectionClient::setHandlerForMessage();
  if (v8 < 0)
  {
    operator delete(__p);
  }

  if (self->fLocationdConnection)
  {
    v3 = MEMORY[0x19EAE71C0]();
    MEMORY[0x19EAE76F0](v3, 0xB0C40BC2CC919);
  }

  self->fLocationdConnection = 0;
  fPrivateQueue = self->fPrivateQueue;
  if (fPrivateQueue)
  {
    dispatch_release(fPrivateQueue);
    self->fPrivateQueue = 0;
  }

  fAppQueue = self->fAppQueue;
  if (fAppQueue)
  {
    dispatch_release(fAppQueue);
    self->fAppQueue = 0;
  }

  v6.receiver = self;
  v6.super_class = CMAnomalyManager;
  [(CMAnomalyManager *)&v6 dealloc];
}

- (void)startAnomalyDetection
{
  v8 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE29A8 != -1)
  {
    dispatch_once(&qword_1EAFE29A8, &unk_1F0E28BC0);
  }

  v2 = qword_1EAFE29B0;
  if (os_log_type_enabled(qword_1EAFE29B0, OS_LOG_TYPE_FAULT))
  {
    v4 = 68289026;
    v5 = 0;
    v6 = 2082;
    v7 = "";
    _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:CMAnomalyManager: client code tried to startAnomalyDetection which was deprecated}", &v4, 0x12u);
    if (qword_1EAFE29A8 != -1)
    {
      dispatch_once(&qword_1EAFE29A8, &unk_1F0E28BC0);
    }
  }

  v3 = qword_1EAFE29B0;
  if (os_signpost_enabled(qword_1EAFE29B0))
  {
    v4 = 68289026;
    v5 = 0;
    v6 = 2082;
    v7 = "";
    _os_signpost_emit_with_name_impl(&dword_19B41C000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CMAnomalyManager: client code tried to startAnomalyDetection which was deprecated", "{msg%{public}.0s:CMAnomalyManager: client code tried to startAnomalyDetection which was deprecated}", &v4, 0x12u);
  }
}

- (void)stopAnomalyDetection
{
  v8 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE29A8 != -1)
  {
    dispatch_once(&qword_1EAFE29A8, &unk_1F0E28BC0);
  }

  v2 = qword_1EAFE29B0;
  if (os_log_type_enabled(qword_1EAFE29B0, OS_LOG_TYPE_FAULT))
  {
    v4 = 68289026;
    v5 = 0;
    v6 = 2082;
    v7 = "";
    _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:CMAnomalyManager: client code tried to stopAnomalyDetection which was deprecated}", &v4, 0x12u);
    if (qword_1EAFE29A8 != -1)
    {
      dispatch_once(&qword_1EAFE29A8, &unk_1F0E28BC0);
    }
  }

  v3 = qword_1EAFE29B0;
  if (os_signpost_enabled(qword_1EAFE29B0))
  {
    v4 = 68289026;
    v5 = 0;
    v6 = 2082;
    v7 = "";
    _os_signpost_emit_with_name_impl(&dword_19B41C000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CMAnomalyManager: client code tried to stopAnomalyDetection which was deprecated", "{msg%{public}.0s:CMAnomalyManager: client code tried to stopAnomalyDetection which was deprecated}", &v4, 0x12u);
  }
}

- (void)_registerForAnomalyDetection:(BOOL)detection
{
  detectionCopy = detection;
  v12 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE29A8 != -1)
  {
    dispatch_once(&qword_1EAFE29A8, &unk_1F0E28BC0);
  }

  v5 = qword_1EAFE29B0;
  if (os_log_type_enabled(qword_1EAFE29B0, OS_LOG_TYPE_DEBUG))
  {
    v7[0] = 68289282;
    v7[1] = 0;
    v8 = 2082;
    v9 = "";
    v10 = 1026;
    v11 = detectionCopy;
    _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CMAnomalyManager: registering for anomaly detection, registerFlag:%{public}hhd}", v7, 0x18u);
  }

  self->fRegisteredForNotification = detectionCopy;
  objc_msgSend__sendRegistrationForAnomalyEvent_(self, v6, self->fLastReceivedEvent);
}

- (void)ackAnomalyEvent:(id)event withResolution:(int64_t)resolution
{
  v10 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE29A8 != -1)
  {
    dispatch_once(&qword_1EAFE29A8, &unk_1F0E28BC0);
  }

  v4 = qword_1EAFE29B0;
  if (os_log_type_enabled(qword_1EAFE29B0, OS_LOG_TYPE_FAULT))
  {
    v6 = 68289026;
    v7 = 0;
    v8 = 2082;
    v9 = "";
    _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:CMAnomalyManager: client code tried to ackAnomalyEvent which was deprecated}", &v6, 0x12u);
    if (qword_1EAFE29A8 != -1)
    {
      dispatch_once(&qword_1EAFE29A8, &unk_1F0E28BC0);
    }
  }

  v5 = qword_1EAFE29B0;
  if (os_signpost_enabled(qword_1EAFE29B0))
  {
    v6 = 68289026;
    v7 = 0;
    v8 = 2082;
    v9 = "";
    _os_signpost_emit_with_name_impl(&dword_19B41C000, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CMAnomalyManager: client code tried to ackAnomalyEvent which was deprecated", "{msg%{public}.0s:CMAnomalyManager: client code tried to ackAnomalyEvent which was deprecated}", &v6, 0x12u);
  }
}

- (void)_sendRegistrationForAnomalyEvent:(id)event
{
  v55 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_identifier(event, a2, event))
  {
    if (qword_1EAFE29A8 != -1)
    {
      dispatch_once(&qword_1EAFE29A8, &unk_1F0E28BC0);
    }

    v5 = qword_1EAFE29B0;
    if (os_log_type_enabled(qword_1EAFE29B0, OS_LOG_TYPE_DEBUG))
    {
      fRegisteredForNotification = self->fRegisteredForNotification;
      v9 = objc_msgSend_identifier(event, v6, v7);
      objc_msgSend_absoluteTimestamp(event, v10, v11);
      v13 = v12;
      objc_msgSend_updateTimestamp(event, v14, v15);
      *buf = 68291075;
      v37 = 2082;
      v38 = "";
      v39 = 1026;
      v40 = fRegisteredForNotification;
      v41 = 2050;
      v42 = v9;
      v43 = 2049;
      v44 = v13;
      v45 = 2049;
      v46 = v24;
      v47 = 2049;
      v48 = objc_msgSend_state(event, v16, v17);
      v49 = 2049;
      v50 = objc_msgSend_response(event, v18, v19);
      v51 = 2049;
      v52 = objc_msgSend_resolution(event, v20, v21);
      v53 = 2049;
      v54 = objc_msgSend_sosState(event, v22, v23);
      v25 = "{msg%{public}.0s:CMAnomalyManager: sendRegistrationForAnomalyEvent with event, registerFlag:%{public}hhd, identifier:%{public}llu, anomaly timestamp:%{private}f, update timestamp:%{private}f, state:%{private}ld, response:%{private}ld, resolution:%{private}ld, sosState:%{private}ld}";
      v26 = v5;
      v27 = 94;
LABEL_10:
      _os_log_impl(&dword_19B41C000, v26, OS_LOG_TYPE_DEBUG, v25, buf, v27);
    }
  }

  else
  {
    if (qword_1EAFE29A8 != -1)
    {
      dispatch_once(&qword_1EAFE29A8, &unk_1F0E28BC0);
    }

    v28 = qword_1EAFE29B0;
    if (os_log_type_enabled(qword_1EAFE29B0, OS_LOG_TYPE_DEBUG))
    {
      v29 = self->fRegisteredForNotification;
      *buf = 68289282;
      *&buf[4] = 0;
      v37 = 2082;
      v38 = "";
      v39 = 1026;
      v40 = v29;
      v25 = "{msg%{public}.0s:CMAnomalyManager: sendRegistrationForAnomalyEvent with no event, registerFlag:%{public}hhd}";
      v26 = v28;
      v27 = 24;
      goto LABEL_10;
    }
  }

  v30 = objc_msgSend_copy(event, v6, v7);
  Current = CFAbsoluteTimeGetCurrent();
  objc_msgSend_setUpdateTimestamp_(v30, v32, v33, Current);
  fPrivateQueue = self->fPrivateQueue;
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = sub_19B6A15F8;
  v35[3] = &unk_1E7532A00;
  v35[4] = self;
  v35[5] = v30;
  dispatch_async(fPrivateQueue, v35);
}

+ (int64_t)getAnomalyFeatureEnablingStrategyForUserAge:(id)age
{
  objc_msgSend_doubleValue(age, a2, age);
  result = 0;
  if (age && v4 >= 0.0)
  {
    if (v4 >= 18.0)
    {
      if (v4 >= 55.0)
      {
        if (v4 >= 65.0)
        {
          return 5;
        }

        else
        {
          return 4;
        }
      }

      else
      {
        return 2;
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

- (void)respondToAnomalyEvent:(id)event withResponse:(int64_t)response
{
  v34 = *MEMORY[0x1E69E9840];
  if (!event)
  {
    v18 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v18, v19, a2, self, @"CMAnomalyManager.mm", 246, @"Invalid parameter not satisfying: %@", @"event");
  }

  if (objc_msgSend_response(event, a2, event) && objc_msgSend_response(event, v8, v9) != response)
  {
    v24 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v8, v9);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v24, v25, a2, self, @"CMAnomalyManager.mm", 248, @"Invalid parameter not satisfying: %@", @"event.response == CMAnomalyEventResponseNone || event.response == response");
  }

  if (!objc_msgSend_identifier(event, v8, v9))
  {
    v20 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v10, v11);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v20, v21, a2, self, @"CMAnomalyManager.mm", 250, @"Invalid parameter not satisfying: %@", @"event.identifier != 0");
  }

  if (response <= 0)
  {
    v22 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v10, v11);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v22, v23, a2, self, @"CMAnomalyManager.mm", 252, @"Invalid parameter not satisfying: %@", @"response > CMAnomalyEventResponseNone");
  }

  else if (response >= 6)
  {
    v16 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v10, v11);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v16, v17, a2, self, @"CMAnomalyManager.mm", 254, @"Invalid parameter not satisfying: %@", @"response <= CMAnomalyEventResponseAutomaticActionRequested");
  }

  if (qword_1EAFE29A8 != -1)
  {
    dispatch_once(&qword_1EAFE29A8, &unk_1F0E28BC0);
  }

  v12 = qword_1EAFE29B0;
  if (os_log_type_enabled(qword_1EAFE29B0, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289539;
    v27 = 0;
    v28 = 2082;
    v29 = "";
    v30 = 2050;
    v31 = objc_msgSend_identifier(event, v13, v14);
    v32 = 2049;
    responseCopy = response;
    _os_log_impl(&dword_19B41C000, v12, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CMAnomalyManager: respondToAnomalyEvent, identifier:%{public}llu, response:%{private}ld}", buf, 0x26u);
  }

  objc_msgSend_setResponse_(event, v13, response);
  objc_msgSend__sendRegistrationForAnomalyEvent_(self, v15, event);
}

- (void)resolveAnomalyEvent:(id)event withResolution:(int64_t)resolution
{
  v34 = *MEMORY[0x1E69E9840];
  if (!event)
  {
    v18 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v18, v19, a2, self, @"CMAnomalyManager.mm", 268, @"Invalid parameter not satisfying: %@", @"event");
  }

  if (objc_msgSend_resolution(event, a2, event) && objc_msgSend_resolution(event, v8, v9) != resolution)
  {
    v24 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v8, v9);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v24, v25, a2, self, @"CMAnomalyManager.mm", 270, @"Invalid parameter not satisfying: %@", @"event.resolution == CMAnomalyEventResolutionNone || event.resolution == resolution");
  }

  if (!objc_msgSend_identifier(event, v8, v9))
  {
    v20 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v10, v11);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v20, v21, a2, self, @"CMAnomalyManager.mm", 272, @"Invalid parameter not satisfying: %@", @"event.identifier != 0");
  }

  if (resolution <= 0)
  {
    v22 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v10, v11);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v22, v23, a2, self, @"CMAnomalyManager.mm", 274, @"Invalid parameter not satisfying: %@", @"resolution > CMAnomalyEventResolutionNone");
  }

  else if (resolution >= 3)
  {
    v16 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v10, v11);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v16, v17, a2, self, @"CMAnomalyManager.mm", 276, @"Invalid parameter not satisfying: %@", @"resolution <= CMAnomalyEventResolutionCanceled");
  }

  if (qword_1EAFE29A8 != -1)
  {
    dispatch_once(&qword_1EAFE29A8, &unk_1F0E28BC0);
  }

  v12 = qword_1EAFE29B0;
  if (os_log_type_enabled(qword_1EAFE29B0, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289539;
    v27 = 0;
    v28 = 2082;
    v29 = "";
    v30 = 2050;
    v31 = objc_msgSend_identifier(event, v13, v14);
    v32 = 2049;
    resolutionCopy = resolution;
    _os_log_impl(&dword_19B41C000, v12, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CMAnomalyManager: resolveAnomalyEvent, identifier:%{public}llu, resolution:%{private}ld}", buf, 0x26u);
  }

  objc_msgSend_setResolution_(event, v13, resolution);
  objc_msgSend__sendRegistrationForAnomalyEvent_(self, v15, event);
}

- (void)updateAnomalyEventSOSCallState:(id)state withSOSSCallState:(int64_t)callState
{
  v44 = *MEMORY[0x1E69E9840];
  if (!state)
  {
    v24 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v24, v25, a2, self, @"CMAnomalyManager.mm", 288, @"Invalid parameter not satisfying: %@", @"event");
  }

  if (!objc_msgSend_identifier(state, a2, state))
  {
    v26 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v8, v9);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v26, v27, a2, self, @"CMAnomalyManager.mm", 291, @"Invalid parameter not satisfying: %@", @"event.identifier != 0");
  }

  if ((callState - 5) <= 0xFFFFFFFFFFFFFFFBLL)
  {
    v28 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v8, v9);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v28, v29, a2, self, @"CMAnomalyManager.mm", 295, @"Invalid parameter not satisfying: %@", @"(sosCallState >= CMAnomalyEventResponseSOSCallInitiated) && (sosCallState <= CMAnomalyEventResponseSOSCallFailed)");
  }

  if (objc_msgSend_resolution(state, v8, v9) != 1)
  {
    v30 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v10, v11);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v30, v31, a2, self, @"CMAnomalyManager.mm", 298, @"Invalid parameter not satisfying: %@", @"event.resolution == CMAnomalyEventResolutionCompleted");
  }

  if (objc_msgSend_response(state, v10, v11) != 1 && objc_msgSend_response(state, v12, v13) != 5)
  {
    v32 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v12, v13);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v32, v33, a2, self, @"CMAnomalyManager.mm", 302, @"Invalid parameter not satisfying: %@", @"(event.response == CMAnomalyEventResponseConfirmedActionRequested) || (event.response == CMAnomalyEventResponseAutomaticActionRequested)");
  }

  if ((callState - 2) >= 3)
  {
    if (callState == 1 && objc_msgSend_sosState(state, v12, v13))
    {
      v34 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v18, v19);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v34, v35, a2, self, @"CMAnomalyManager.mm", 313, @"Invalid parameter not satisfying: %@", @"event.sosState == CMAnomalyEventResponseSOSCallNone");
    }
  }

  else if (objc_msgSend_sosState(state, v12, v13) != 1)
  {
    v16 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v14, v15);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v16, v17, a2, self, @"CMAnomalyManager.mm", 308, @"Invalid parameter not satisfying: %@", @"event.sosState == CMAnomalyEventResponseSOSCallInitiated");
  }

  if (qword_1EAFE29A8 != -1)
  {
    dispatch_once(&qword_1EAFE29A8, &unk_1F0E28BC0);
  }

  v20 = qword_1EAFE29B0;
  if (os_log_type_enabled(qword_1EAFE29B0, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289539;
    v37 = 0;
    v38 = 2082;
    v39 = "";
    v40 = 2050;
    v41 = objc_msgSend_identifier(state, v21, v22);
    v42 = 2049;
    callStateCopy = callState;
    _os_log_impl(&dword_19B41C000, v20, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CMAnomalyManager: updateAnomalyEventSOSCallState, identifier:%{public}llu, sosCallState:%{private}ld}", buf, 0x26u);
  }

  objc_msgSend_setSosState_(state, v21, callState);
  objc_msgSend__sendRegistrationForAnomalyEvent_(self, v23, state);
}

@end