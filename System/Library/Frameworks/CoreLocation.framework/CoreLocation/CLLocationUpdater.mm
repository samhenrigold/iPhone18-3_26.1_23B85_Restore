@interface CLLocationUpdater
+ (id)_historicalUpdaterWithCenter:(CLLocationCoordinate2D)center radius:(double)radius dateInterval:(id)interval sampleCount:(int)count queue:(id)queue handler:(id)handler;
+ (id)_historicalUpdaterWithDateInterval:(id)interval sampleCount:(int)count queue:(id)queue handler:(id)handler;
+ (id)_liveUpdaterWithConfiguration:(int64_t)configuration queue:(id)queue handler:(id)handler;
+ (id)historicalUpdaterWithCenter:(CLLocationCoordinate2D)center radius:(double)radius dateInterval:(id)interval sampleCount:(int)count locationManager:(id)manager queue:(id)queue handler:(id)handler;
+ (id)historicalUpdaterWithDateInterval:(id)interval sampleCount:(int)count locationManager:(id)manager queue:(id)queue handler:(id)handler;
+ (id)liveUpdaterWithConfiguration:(int64_t)configuration locationManager:(id)manager queue:(id)queue handler:(id)handler;
- (CLLocationUpdater)initWithRegistrationMessageName:(const char *)name messagePayload:(id)payload locationManager:(id)manager queue:(id)queue handler:(id)handler;
- (void)dealloc;
- (void)handleMessageDiagnostics:(id)diagnostics;
- (void)handleMessageHistoricalLocations:(id)locations;
- (void)handleMessageHistoricalLocationsFinished:(id)finished;
- (void)handleMessageLocation:(id)location;
- (void)handleMessageLocationUnavailable:(id)unavailable;
- (void)handleMessageWithName:(id)name payload:(id)payload;
- (void)invalidate;
- (void)pause;
- (void)resume;
- (void)setHandler:(id)handler;
- (void)tearDown;
@end

@implementation CLLocationUpdater

+ (id)_liveUpdaterWithConfiguration:(int64_t)configuration queue:(id)queue handler:(id)handler
{
  v6 = objc_msgSend_weakSharedInstance(CLLocationManager, a2, configuration, queue);

  return MEMORY[0x1EEE66B58](CLLocationUpdater, sel_liveUpdaterWithConfiguration_locationManager_queue_handler_, configuration, v6);
}

+ (id)_historicalUpdaterWithDateInterval:(id)interval sampleCount:(int)count queue:(id)queue handler:(id)handler
{
  v6 = *&count;
  objc_msgSend_weakSharedInstance(CLLocationManager, a2, interval, *&count);

  return MEMORY[0x1EEE66B58](CLLocationUpdater, sel_historicalUpdaterWithDateInterval_sampleCount_locationManager_queue_handler_, interval, v6);
}

+ (id)_historicalUpdaterWithCenter:(CLLocationCoordinate2D)center radius:(double)radius dateInterval:(id)interval sampleCount:(int)count queue:(id)queue handler:(id)handler
{
  v8 = *&count;
  objc_msgSend_weakSharedInstance(CLLocationManager, a2, interval, *&count);

  return MEMORY[0x1EEE66B58](CLLocationUpdater, sel_historicalUpdaterWithCenter_radius_dateInterval_sampleCount_locationManager_queue_handler_, interval, v8);
}

- (CLLocationUpdater)initWithRegistrationMessageName:(const char *)name messagePayload:(id)payload locationManager:(id)manager queue:(id)queue handler:(id)handler
{
  v53 = *MEMORY[0x1E69E9840];
  v37.receiver = self;
  v37.super_class = CLLocationUpdater;
  v13 = [(CLLocationUpdater *)&v37 init];
  if (v13)
  {
    v14 = _os_activity_create(&dword_19B873000, "CL: CLLocationUpdater #locationUpdater", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v14, &state);

    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B900);
    }

    v15 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      v16 = NSStringFromSelector(a2);
      buf = 68290563;
      v39 = 2082;
      v40 = "";
      v41 = 2082;
      v42 = "activity";
      v43 = 2114;
      v44 = v16;
      v45 = 2050;
      v46 = v13;
      v47 = 2082;
      nameCopy = name;
      v49 = 2113;
      payloadCopy = payload;
      v51 = 2050;
      managerCopy = manager;
      _os_log_impl(&dword_19B873000, v15, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationUpdater #locationUpdater, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p, name:%{public, location:escape_only}s, messagePayload:%{private, location:escape_only}@, manager:%{public}p}", &buf, 0x4Eu);
    }

    if (!queue)
    {
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B900);
      }

      v17 = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
      {
        buf = 68289282;
        v39 = 2082;
        v40 = "";
        v41 = 2050;
        v42 = v13;
        _os_log_impl(&dword_19B873000, v17, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#locationUpdater has nil callback queue; Creating locally, self:%{public}p}", &buf, 0x1Cu);
      }

      queue = objc_msgSend_sharedQueue(CLLocationManager, v18, v19, v20);
    }

    v21 = objc_alloc(MEMORY[0x1E69AD360]);
    v13->_silo = objc_msgSend_initWithUnderlyingQueue_bePermissive_(v21, v22, queue, 0);
    v13->_messageName = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v23, name, v24);
    v13->_mutableMsgDictionary = objc_msgSend_mutableCopy(payload, v25, v26, v27);
    if (handler)
    {
      v13->_clientCallback = _Block_copy(handler);
    }

    objc_initWeak(&buf, v13);
    v28 = [CLIdentifiableClientConnectionManager alloc];
    silo = v13->_silo;
    messageName = v13->_messageName;
    mutableMsgDictionary = v13->_mutableMsgDictionary;
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = sub_19B8DD4AC;
    v34[3] = &unk_1E753D5B8;
    objc_copyWeak(&v35, &buf);
    v13->_connectionManager = objc_msgSend_initWithSilo_locationManager_startMessageName_startMessagePayload_responseHandler_(v28, v32, silo, manager, messageName, mutableMsgDictionary, v34);
    objc_destroyWeak(&v35);
    objc_destroyWeak(&buf);
    os_activity_scope_leave(&state);
  }

  return v13;
}

+ (id)liveUpdaterWithConfiguration:(int64_t)configuration locationManager:(id)manager queue:(id)queue handler:(id)handler
{
  v27[1] = *MEMORY[0x1E69E9840];
  if ((objc_msgSend_isMasquerading(manager, a2, configuration, manager) & 1) == 0 && (sub_19B8B8818() & 1) == 0)
  {
    NSLog(&cfstr_ErrorCllocatio.isa);
  }

  v26 = @"config";
  v27[0] = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v10, configuration, v11);
  v13 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v12, v27, &v26, 1);
  v14 = [CLLocationUpdater alloc];
  v16 = objc_msgSend_initWithRegistrationMessageName_messagePayload_locationManager_queue_handler_(v14, v15, "LocationUpdaterLive/kCLConnectionMessage", v13, manager, queue, handler);
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B900);
  }

  v17 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 68289282;
    v21 = 0;
    v22 = 2082;
    v23 = "";
    v24 = 2050;
    v25 = v16;
    _os_log_impl(&dword_19B873000, v17, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#locationUpdater liveUpdaterWithConfiguration:queue:handler: created, updater:%{public}p}", &v20, 0x1Cu);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B900);
    }
  }

  v18 = qword_1ED519090;
  if (os_signpost_enabled(qword_1ED519090))
  {
    v20 = 68289282;
    v21 = 0;
    v22 = 2082;
    v23 = "";
    v24 = 2050;
    v25 = v16;
    _os_signpost_emit_with_name_impl(&dword_19B873000, v18, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#locationUpdater liveUpdaterWithConfiguration:queue:handler: created", "{msg%{public}.0s:#locationUpdater liveUpdaterWithConfiguration:queue:handler: created, updater:%{public}p}", &v20, 0x1Cu);
  }

  return v16;
}

+ (id)historicalUpdaterWithDateInterval:(id)interval sampleCount:(int)count locationManager:(id)manager queue:(id)queue handler:(id)handler
{
  v38 = *MEMORY[0x1E69E9840];
  if (!interval)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B900);
    }

    v25 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289282;
      *&buf[4] = 0;
      v34 = 2082;
      v35 = "";
      v36 = 2050;
      selfCopy4 = self;
      _os_log_impl(&dword_19B873000, v25, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#locationUpdater, interestInterval must be valid, self:%{public}p}", buf, 0x1Cu);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B900);
      }
    }

    v26 = qword_1ED519090;
    if (!os_signpost_enabled(qword_1ED519090))
    {
      return 0;
    }

    *buf = 68289282;
    *&buf[4] = 0;
    v34 = 2082;
    v35 = "";
    v36 = 2050;
    selfCopy4 = self;
    v27 = "#locationUpdater, interestInterval must be valid";
    v28 = "{msg%{public}.0s:#locationUpdater, interestInterval must be valid, self:%{public}p}";
    goto LABEL_24;
  }

  v8 = *&count;
  if (count <= 0)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B900);
    }

    v29 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289282;
      *&buf[4] = 0;
      v34 = 2082;
      v35 = "";
      v36 = 2050;
      selfCopy4 = self;
      _os_log_impl(&dword_19B873000, v29, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#locationUpdater, sampleCount must be greater than 0, self:%{public}p}", buf, 0x1Cu);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B900);
      }
    }

    v26 = qword_1ED519090;
    if (!os_signpost_enabled(qword_1ED519090))
    {
      return 0;
    }

    *buf = 68289282;
    *&buf[4] = 0;
    v34 = 2082;
    v35 = "";
    v36 = 2050;
    selfCopy4 = self;
    v27 = "#locationUpdater, sampleCount must be greater than 0";
    v28 = "{msg%{public}.0s:#locationUpdater, sampleCount must be greater than 0, self:%{public}p}";
LABEL_24:
    _os_signpost_emit_with_name_impl(&dword_19B873000, v26, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v27, v28, buf, 0x1Cu);
    return 0;
  }

  v32[0] = &unk_1F0E8CCE8;
  v32[1] = objc_msgSend_startDate(interval, a2, interval, *&count, @"kCLConnectionMessageTranscriptFetchRadiusKey", @"kCLConnectionMessageHistoricalLocationStartDateKey");
  v31[2] = @"kCLConnectionMessagehistoricalLocationEndDateKey";
  v32[2] = objc_msgSend_endDate(interval, v13, v14, v15);
  v31[3] = @"kCLConnectionMessageTranscriptFetchSampleCountKey";
  v32[3] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v16, v8, v17);
  v19 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v18, v32, v31, 4);
  v20 = [CLLocationUpdater alloc];
  v22 = objc_msgSend_initWithRegistrationMessageName_messagePayload_locationManager_queue_handler_(v20, v21, "LocationUpdaterHistorical/kCLConnectionMessage", v19, manager, queue, handler);
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B900);
  }

  v23 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v34 = 2082;
    v35 = "";
    v36 = 2050;
    selfCopy4 = v22;
    _os_log_impl(&dword_19B873000, v23, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#locationUpdater historicalUpdaterWithDateInterval:sampleCount:sampleCount:queue:handler: created, updater:%{public}p}", buf, 0x1Cu);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B900);
    }
  }

  v24 = qword_1ED519090;
  if (os_signpost_enabled(qword_1ED519090))
  {
    *buf = 68289282;
    v34 = 2082;
    v35 = "";
    v36 = 2050;
    selfCopy4 = v22;
    _os_signpost_emit_with_name_impl(&dword_19B873000, v24, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#locationUpdater historicalUpdaterWithDateInterval:sampleCount:sampleCount:queue:handler: created", "{msg%{public}.0s:#locationUpdater historicalUpdaterWithDateInterval:sampleCount:sampleCount:queue:handler: created, updater:%{public}p}", buf, 0x1Cu);
  }

  return v22;
}

+ (id)historicalUpdaterWithCenter:(CLLocationCoordinate2D)center radius:(double)radius dateInterval:(id)interval sampleCount:(int)count locationManager:(id)manager queue:(id)queue handler:(id)handler
{
  v12 = *&count;
  intervalCopy = interval;
  longitude = center.longitude;
  latitude = center.latitude;
  v59 = *MEMORY[0x1E69E9840];
  if (!interval)
  {
    v18 = objc_alloc(MEMORY[0x1E696AB80]);
    v22 = objc_msgSend_distantPast(MEMORY[0x1E695DF00], v19, v20, v21);
    v26 = objc_msgSend_now(MEMORY[0x1E695DF00], v23, v24, v25);
    intervalCopy = objc_msgSend_initWithStartDate_endDate_(v18, v27, v22, v26);
  }

  if (v12 <= 0)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B900);
    }

    v49 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289282;
      v55 = 2082;
      v56 = "";
      v57 = 2050;
      selfCopy2 = self;
      _os_log_impl(&dword_19B873000, v49, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#locationUpdater, sampleCount must be greater than 0, self:%{public}p}", buf, 0x1Cu);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B900);
      }
    }

    v50 = qword_1ED519090;
    if (os_signpost_enabled(qword_1ED519090))
    {
      *buf = 68289282;
      v55 = 2082;
      v56 = "";
      v57 = 2050;
      selfCopy2 = self;
      _os_signpost_emit_with_name_impl(&dword_19B873000, v50, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#locationUpdater, sampleCount must be greater than 0", "{msg%{public}.0s:#locationUpdater, sampleCount must be greater than 0, self:%{public}p}", buf, 0x1Cu);
    }

    return 0;
  }

  else
  {
    v53[0] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], a2, interval, *&count, latitude, @"kCLConnectionMessageTranscriptFetchCenterLatitudeKey");
    v52[1] = @"kCLConnectionMessageTranscriptFetchCenterLongitudeKey";
    v53[1] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v28, v29, v30, longitude);
    v52[2] = @"kCLConnectionMessageTranscriptFetchRadiusKey";
    v53[2] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v31, v32, v33, radius);
    v52[3] = @"kCLConnectionMessageHistoricalLocationStartDateKey";
    v53[3] = objc_msgSend_startDate(intervalCopy, v34, v35, v36);
    v52[4] = @"kCLConnectionMessagehistoricalLocationEndDateKey";
    v53[4] = objc_msgSend_endDate(intervalCopy, v37, v38, v39);
    v52[5] = @"kCLConnectionMessageTranscriptFetchSampleCountKey";
    v53[5] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v40, v12, v41);
    v43 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v42, v53, v52, 6);
    v44 = [CLLocationUpdater alloc];
    v46 = objc_msgSend_initWithRegistrationMessageName_messagePayload_locationManager_queue_handler_(v44, v45, "LocationUpdaterHistorical/kCLConnectionMessage", v43, manager, queue, handler);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B900);
    }

    v47 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289282;
      v55 = 2082;
      v56 = "";
      v57 = 2050;
      selfCopy2 = v46;
      _os_log_impl(&dword_19B873000, v47, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#locationUpdater historicalUpdaterWithCenter:radius:dateInterval:sampleCount:queue:handler: created, updater:%{public}p}", buf, 0x1Cu);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B900);
      }
    }

    v48 = qword_1ED519090;
    if (os_signpost_enabled(qword_1ED519090))
    {
      *buf = 68289282;
      v55 = 2082;
      v56 = "";
      v57 = 2050;
      selfCopy2 = v46;
      _os_signpost_emit_with_name_impl(&dword_19B873000, v48, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#locationUpdater historicalUpdaterWithCenter:radius:dateInterval:sampleCount:queue:handler: created", "{msg%{public}.0s:#locationUpdater historicalUpdaterWithCenter:radius:dateInterval:sampleCount:queue:handler: created, updater:%{public}p}", buf, 0x1Cu);
    }
  }

  return v46;
}

- (void)pause
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationUpdater #locationUpdater", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v4, &state);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B900);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    *buf = 68289794;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2082;
    v17 = "activity";
    v18 = 2114;
    v19 = v8;
    v20 = 2050;
    selfCopy = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationUpdater #locationUpdater, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  silo = self->_silo;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_19B8DE1A4;
  v10[3] = &unk_1E753CC90;
  v10[4] = self;
  objc_msgSend_async_(silo, v6, v10, v7);
  os_activity_scope_leave(&state);
}

- (void)resume
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationUpdater #locationUpdater", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v4, &state);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B900);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    *buf = 68289794;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2082;
    v17 = "activity";
    v18 = 2114;
    v19 = v8;
    v20 = 2050;
    selfCopy = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationUpdater #locationUpdater, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  silo = self->_silo;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_19B8DE36C;
  v10[3] = &unk_1E753CC90;
  v10[4] = self;
  objc_msgSend_async_(silo, v6, v10, v7);
  os_activity_scope_leave(&state);
}

- (void)tearDown
{
  self->_mutableMsgDictionary = 0;

  self->_messageName = 0;
  clientCallback = self->_clientCallback;
  if (clientCallback)
  {
    _Block_release(clientCallback);
    self->_clientCallback = 0;
  }

  self->_silo = 0;
  self->_connectionManager = 0;
}

- (void)invalidate
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationUpdater #locationUpdater", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v4, &state);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B900);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    *buf = 68289794;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2082;
    v17 = "activity";
    v18 = 2114;
    v19 = v8;
    v20 = 2050;
    selfCopy = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationUpdater #locationUpdater, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  silo = self->_silo;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_19B8DE760;
  v10[3] = &unk_1E753CC90;
  v10[4] = self;
  objc_msgSend_async_(silo, v6, v10, v7);
  os_activity_scope_leave(&state);
}

- (void)dealloc
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationUpdater #locationUpdater", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v4, &state);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B900);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v9 = NSStringFromSelector(a2);
    *buf = 68289794;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2082;
    v17 = "activity";
    v18 = 2114;
    v19 = v9;
    v20 = 2050;
    selfCopy = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationUpdater #locationUpdater, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  objc_msgSend_tearDown(self, v6, v7, v8);
  v10.receiver = self;
  v10.super_class = CLLocationUpdater;
  [(CLLocationUpdater *)&v10 dealloc];
  os_activity_scope_leave(&state);
}

- (void)handleMessageLocation:(id)location
{
  objc_msgSend_assertInside(self->_silo, a2, location, v3);
  if (self->_clientCallback)
  {
    v20 = copyLocationsFromLocationMessagePayload();
    if (objc_msgSend_count(v20, v6, v7, v8))
    {
      v11 = objc_msgSend_objectAtIndexedSubscript_(v20, v9, 0, v10);
    }

    else
    {
      v11 = 0;
    }

    v12 = objc_msgSend_objectForKeyedSubscript_(location, v9, @"kCLConnectionMessageDiagnosticsKey", v10);
    v16 = objc_msgSend_unsignedLongValue(v12, v13, v14, v15);
    v17 = [CLUpdate alloc];
    v19 = objc_msgSend_initWithLocation_diagnostics_(v17, v18, v11, v16);
    (*(self->_clientCallback + 2))();
  }
}

- (void)handleMessageLocationUnavailable:(id)unavailable
{
  v34 = *MEMORY[0x1E69E9840];
  objc_msgSend_assertInside(self->_silo, a2, unavailable, v3);
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B900);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v24 = 2082;
    v25 = "";
    v26 = 2050;
    selfCopy2 = self;
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#locationUpdater location unavailable, self:%{public}p}", buf, 0x1Cu);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B900);
    }
  }

  v8 = qword_1ED519090;
  if (os_signpost_enabled(qword_1ED519090))
  {
    *buf = 68289282;
    v24 = 2082;
    v25 = "";
    v26 = 2050;
    selfCopy2 = self;
    _os_signpost_emit_with_name_impl(&dword_19B873000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#locationUpdater location unavailable", "{msg%{public}.0s:#locationUpdater location unavailable, self:%{public}p}", buf, 0x1Cu);
  }

  if (self->_clientCallback)
  {
    v9 = _os_activity_create(&dword_19B873000, "CL: CLLocationUpdater #locationUpdater", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v9, &v22);

    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B900);
    }

    v10 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      v13 = NSStringFromSelector(a2);
      *buf = 68290051;
      *&buf[4] = 0;
      v24 = 2082;
      v25 = "";
      v26 = 2082;
      selfCopy2 = "activity";
      v28 = 2114;
      v29 = v13;
      v30 = 2050;
      selfCopy3 = self;
      v32 = 2113;
      unavailableCopy = unavailable;
      _os_log_impl(&dword_19B873000, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationUpdater #locationUpdater, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p, payload:%{private, location:escape_only}@}", buf, 0x3Au);
    }

    v14 = objc_msgSend_objectForKeyedSubscript_(unavailable, v11, @"kCLConnectionMessageDiagnosticsKey", v12);
    v18 = objc_msgSend_unsignedLongValue(v14, v15, v16, v17);
    v19 = [CLUpdate alloc];
    v21 = objc_msgSend_initWithLocation_diagnostics_(v19, v20, 0, v18);
    (*(self->_clientCallback + 2))();

    os_activity_scope_leave(&v22);
  }
}

- (void)handleMessageHistoricalLocations:(id)locations
{
  v66 = *MEMORY[0x1E69E9840];
  objc_msgSend_assertInside(self->_silo, a2, locations, v3);
  if (self->_clientCallback)
  {
    v7 = _os_activity_create(&dword_19B873000, "CL: CLLocationUpdater #locationUpdater", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v7, &state);

    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B900);
    }

    v8 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      v11 = NSStringFromSelector(a2);
      *buf = 68290051;
      v58 = 2082;
      v59 = "";
      v60 = 2082;
      *v61 = "activity";
      *&v61[8] = 2114;
      *&v61[10] = v11;
      v62 = 2050;
      selfCopy = self;
      v64 = 2113;
      locationsCopy = locations;
      _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationUpdater #locationUpdater, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p, payload:%{private, location:escape_only}@}", buf, 0x3Au);
    }

    v12 = objc_msgSend_objectForKeyedSubscript_(locations, v9, @"Locations", v10);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B900);
    }

    v13 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      v17 = objc_msgSend_count(v12, v14, v15, v16);
      *buf = 68289538;
      v58 = 2082;
      v59 = "";
      v60 = 1026;
      *v61 = v17;
      *&v61[4] = 2050;
      *&v61[6] = self;
      _os_log_impl(&dword_19B873000, v13, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#locationUpdater historical received historicalLocations, Count:%{public}d, self:%{public}p}", buf, 0x22u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B900);
      }
    }

    v18 = qword_1ED519090;
    if (os_signpost_enabled(qword_1ED519090))
    {
      v22 = objc_msgSend_count(v12, v19, v20, v21);
      *buf = 68289538;
      v58 = 2082;
      v59 = "";
      v60 = 1026;
      *v61 = v22;
      *&v61[4] = 2050;
      *&v61[6] = self;
      _os_signpost_emit_with_name_impl(&dword_19B873000, v18, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#locationUpdater historical received historicalLocations", "{msg%{public}.0s:#locationUpdater historical received historicalLocations, Count:%{public}d, self:%{public}p}", buf, 0x22u);
    }

    v23 = objc_msgSend_objectForKeyedSubscript_(locations, v19, @"kCLConnectionMessageDiagnosticsKey", v21);
    v27 = objc_msgSend_unsignedLongValue(v23, v24, v25, v26);
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v28, &v51, v56, 16);
    if (v29)
    {
      v30 = *v52;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v52 != v30)
          {
            objc_enumerationMutation(v12);
          }

          v32 = *(*(&v51 + 1) + 8 * i);
          v33 = objc_autoreleasePoolPush();
          v34 = [CLUpdate alloc];
          v36 = objc_msgSend_initWithLocation_diagnostics_(v34, v35, v32, v27);
          (*(self->_clientCallback + 2))();

          v40 = objc_msgSend_timestamp(v32, v37, v38, v39);
          objc_msgSend_timeIntervalSinceReferenceDate(v40, v41, v42, v43);
          objc_msgSend_updateLastHistoricalLocationTimestamp_(self->_connectionManager, v44, v45, v46);
          objc_autoreleasePoolPop(v33);
        }

        v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v47, &v51, v56, 16);
      }

      while (v29);
    }

    v48 = [CLUpdate alloc];
    v50 = objc_msgSend_initWithLocation_diagnostics_(v48, v49, 0, v27);
    (*(self->_clientCallback + 2))();

    os_activity_scope_leave(&state);
  }
}

- (void)handleMessageHistoricalLocationsFinished:(id)finished
{
  v16 = *MEMORY[0x1E69E9840];
  objc_msgSend_assertInside(self->_silo, a2, finished, v3);
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B900);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 68289282;
    v12 = 2082;
    v13 = "";
    v14 = 2050;
    selfCopy2 = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#locationUpdater historical delivery completed, self:%{public}p}", &v11, 0x1Cu);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B900);
    }
  }

  v6 = qword_1ED519090;
  if (os_signpost_enabled(qword_1ED519090))
  {
    v11 = 68289282;
    v12 = 2082;
    v13 = "";
    v14 = 2050;
    selfCopy2 = self;
    _os_signpost_emit_with_name_impl(&dword_19B873000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#locationUpdater historical delivery completed", "{msg%{public}.0s:#locationUpdater historical delivery completed, self:%{public}p}", &v11, 0x1Cu);
  }

  clientCallback = self->_clientCallback;
  if (clientCallback)
  {
    clientCallback[2](clientCallback, 0);
  }

  objc_msgSend_invalidate(self, v7, v8, v9);
}

- (void)handleMessageDiagnostics:(id)diagnostics
{
  v32 = *MEMORY[0x1E69E9840];
  objc_msgSend_assertInside(self->_silo, a2, diagnostics, v3);
  if (self->_clientCallback)
  {
    v7 = _os_activity_create(&dword_19B873000, "CL: CLLocationUpdater #locationUpdater", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v7, &v20);

    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B900);
    }

    v8 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      v11 = NSStringFromSelector(a2);
      *buf = 68290051;
      v22 = 2082;
      v23 = "";
      v24 = 2082;
      v25 = "activity";
      v26 = 2114;
      v27 = v11;
      v28 = 2050;
      selfCopy = self;
      v30 = 2113;
      diagnosticsCopy = diagnostics;
      _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationUpdater #locationUpdater, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p, payload:%{private, location:escape_only}@}", buf, 0x3Au);
    }

    v12 = objc_msgSend_objectForKeyedSubscript_(diagnostics, v9, @"kCLConnectionMessageDiagnosticsKey", v10);
    v16 = objc_msgSend_unsignedLongValue(v12, v13, v14, v15);
    v17 = [CLUpdate alloc];
    v19 = objc_msgSend_initWithLocation_diagnostics_(v17, v18, 0, v16);
    (*(self->_clientCallback + 2))();

    os_activity_scope_leave(&v20);
  }
}

- (void)setHandler:(id)handler
{
  v16 = *MEMORY[0x1E69E9840];
  if (self->_clientCallback)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B900);
    }

    v7 = qword_1ED519090;
    p_info = "assert";
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2082;
      v13 = "assert";
      v14 = 2081;
      v15 = "_clientCallback == nullptr";
      _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#locationUpdater should initially be nil, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B900);
      }
    }

    v8 = qword_1ED519090;
    if (os_signpost_enabled(qword_1ED519090))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2082;
      v13 = "assert";
      v14 = 2081;
      v15 = "_clientCallback == nullptr";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#locationUpdater should initially be nil", "{msg%{public}.0s:#locationUpdater should initially be nil, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B900);
      }
    }

    selfCopy = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2082;
      v13 = "assert";
      v14 = 2081;
      v15 = "_clientCallback == nullptr";
      _os_log_impl(&dword_19B873000, &selfCopy->super, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#locationUpdater should initially be nil, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Framework/CoreLocation/CLLocationUpdater.mm", 391, "[CLLocationUpdater setHandler:]");
LABEL_22:
    dispatch_once(&qword_1ED519088, &unk_1F0E6B900);
    goto LABEL_5;
  }

  selfCopy = self;
  if (handler)
  {
    self->_clientCallback = _Block_copy(handler);
    return;
  }

  p_info = CLLocationManagerInternal.info;
  if (qword_1ED519088 != -1)
  {
    goto LABEL_22;
  }

LABEL_5:
  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
  {
    *buf = 68289282;
    v10 = 2082;
    v11 = "";
    v12 = 2050;
    v13 = selfCopy;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#locationUpdater can't set a nil handler, self:%{public}p}", buf, 0x1Cu);
    if (p_info[17] != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B900);
    }
  }

  v6 = qword_1ED519090;
  if (os_signpost_enabled(qword_1ED519090))
  {
    *buf = 68289282;
    v10 = 2082;
    v11 = "";
    v12 = 2050;
    v13 = selfCopy;
    _os_signpost_emit_with_name_impl(&dword_19B873000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#locationUpdater can't set a nil handler", "{msg%{public}.0s:#locationUpdater can't set a nil handler, self:%{public}p}", buf, 0x1Cu);
  }
}

- (void)handleMessageWithName:(id)name payload:(id)payload
{
  v50 = *MEMORY[0x1E69E9840];
  v8 = _os_activity_create(&dword_19B873000, "CL: CLLocationUpdater #locationUpdater", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v37);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B900);
  }

  v9 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v12 = NSStringFromSelector(a2);
    v16 = objc_msgSend_UTF8String(name, v13, v14, v15);
    *buf = 68290050;
    v39 = 0;
    v40 = 2082;
    v41 = "";
    v42 = 2082;
    v43 = "activity";
    v44 = 2114;
    selfCopy3 = v12;
    v46 = 2050;
    selfCopy = self;
    v48 = 2082;
    v49 = v16;
    _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationUpdater #locationUpdater, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p, message:%{public, location:escape_only}s}", buf, 0x3Au);
  }

  if ((objc_msgSend_isEqualToString_(name, v10, @"kCLConnectionMessageLocation", v11) & 1) != 0 || objc_msgSend_isEqualToString_(name, v17, @"kCLConnectionMessageCompensatedLocation", v18))
  {
    objc_msgSend_handleMessageLocation_(self, v17, payload, v18);
  }

  else if (objc_msgSend_isEqualToString_(name, v17, @"kCLConnectionMessageHistoricalLocations", v18))
  {
    objc_msgSend_handleMessageHistoricalLocations_(self, v19, payload, v20);
  }

  else if (objc_msgSend_isEqualToString_(name, v19, @"kCLConnectionMessageHistoricalLocationsFinished", v20))
  {
    objc_msgSend_handleMessageHistoricalLocationsFinished_(self, v21, payload, v22);
  }

  else if (objc_msgSend_isEqualToString_(name, v21, @"kCLConnectionMessageLocationUnavailable", v22))
  {
    objc_msgSend_handleMessageLocationUnavailable_(self, v23, payload, v24);
  }

  else if (objc_msgSend_isEqualToString_(name, v23, @"kCLConnectionMessageDiagnostics", v24))
  {
    objc_msgSend_handleMessageDiagnostics_(self, v25, payload, v26);
  }

  else
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B900);
    }

    v27 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      v31 = objc_msgSend_UTF8String(name, v28, v29, v30);
      *buf = 68289538;
      v39 = 0;
      v40 = 2082;
      v41 = "";
      v42 = 2082;
      v43 = v31;
      v44 = 2050;
      selfCopy3 = self;
      _os_log_impl(&dword_19B873000, v27, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#locationUpdater received unhandled message, Message:%{public, location:escape_only}s, self:%{public}p}", buf, 0x26u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B900);
      }
    }

    v32 = qword_1ED519090;
    if (os_signpost_enabled(qword_1ED519090))
    {
      v36 = objc_msgSend_UTF8String(name, v33, v34, v35);
      *buf = 68289538;
      v39 = 0;
      v40 = 2082;
      v41 = "";
      v42 = 2082;
      v43 = v36;
      v44 = 2050;
      selfCopy3 = self;
      _os_signpost_emit_with_name_impl(&dword_19B873000, v32, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#locationUpdater received unhandled message", "{msg%{public}.0s:#locationUpdater received unhandled message, Message:%{public, location:escape_only}s, self:%{public}p}", buf, 0x26u);
    }
  }

  os_activity_scope_leave(&v37);
}

@end