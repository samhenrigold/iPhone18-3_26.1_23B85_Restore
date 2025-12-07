@interface CMOdometer
- (CMOdometer)init;
- (void)dealloc;
- (void)startCyclingWorkoutDistanceUpdatesWithHandler:(id)handler;
- (void)startOdometerUpdatesForActivity:(int64_t)activity withHandler:(id)handler;
- (void)stopCyclingWorkoutDistanceUpdates;
- (void)stopOdometerUpdates;
@end

@implementation CMOdometer

- (CMOdometer)init
{
  v9.receiver = self;
  v9.super_class = CMOdometer;
  v2 = [(CMOdometer *)&v9 init];
  if (v2)
  {
    v3 = [CMOdometerProxy alloc];
    v5 = objc_msgSend_initWithOdometer_(v3, v4, v2);
    v2->_odometerProxy = v5;
    objc_msgSend__startDaemonConnection(v5, v6, v7);
  }

  return v2;
}

- (void)dealloc
{
  v4 = *(objc_msgSend_odometerProxy(self, a2, v2) + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B627674;
  block[3] = &unk_1E7532988;
  block[4] = self;
  dispatch_sync(v4, block);

  v5.receiver = self;
  v5.super_class = CMOdometer;
  [(CMOdometer *)&v5 dealloc];
}

- (void)startOdometerUpdatesForActivity:(int64_t)activity withHandler:(id)handler
{
  v33 = *MEMORY[0x1E69E9840];
  if (!handler)
  {
    v22 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, activity);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v22, v23, a2, self, @"CMOdometer.mm", 273, @"Invalid parameter not satisfying: %@", @"handler");
  }

  if (activity >= 2)
  {
    if (activity == 2)
    {
      v14 = *(objc_msgSend_odometerProxy(self, a2, activity) + 8);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_19B627ADC;
      block[3] = &unk_1E7532B68;
      block[4] = self;
      block[5] = handler;
      dispatch_async(v14, block);
      return;
    }

    if (qword_1EAFE29D8 != -1)
    {
      dispatch_once(&qword_1EAFE29D8, &unk_1F0E28A60);
    }

    v15 = qword_1EAFE29E0;
    if (os_log_type_enabled(qword_1EAFE29E0, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v15, OS_LOG_TYPE_ERROR, "#Warning Unsupported activity requested", buf, 2u);
    }

    v16 = sub_19B420058();
    if ((*(v16 + 160) & 0x80000000) == 0 || (*(v16 + 164) & 0x80000000) == 0 || (*(v16 + 168) & 0x80000000) == 0 || *(v16 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE29D8 != -1)
      {
        dispatch_once(&qword_1EAFE29D8, &unk_1F0E28A60);
      }

      LOWORD(v29) = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE29E0, 16, "#Warning Unsupported activity requested", &v29, 2);
      v19 = v18;
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMOdometer startOdometerUpdatesForActivity:withHandler:]", "CoreLocation: %s\n", v18);
      if (v19 != buf)
      {
        free(v19);
      }
    }

    v25 = *MEMORY[0x1E696A578];
    v26 = @"Invalid CMOdometerActivity";
    v12 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v17, &v26, &v25, 1);
  }

  else
  {
    if (qword_1EAFE29D8 != -1)
    {
      dispatch_once(&qword_1EAFE29D8, &unk_1F0E28A60);
    }

    v7 = qword_1EAFE29E0;
    if (os_log_type_enabled(qword_1EAFE29E0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      activityCopy = activity;
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_DEFAULT, "#Warning The requested activity %ld is not yet supported", buf, 0xCu);
    }

    v8 = sub_19B420058();
    if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE29D8 != -1)
      {
        dispatch_once(&qword_1EAFE29D8, &unk_1F0E28A60);
      }

      v29 = 134217984;
      activityCopy2 = activity;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE29E0, 0, "#Warning The requested activity %ld is not yet supported", &v29);
      v11 = v10;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMOdometer startOdometerUpdatesForActivity:withHandler:]", "CoreLocation: %s\n", v10);
      if (v11 != buf)
      {
        free(v11);
      }
    }

    v27 = *MEMORY[0x1E696A578];
    v28 = @"The requested CMOdometerActivity is not yet supported";
    v12 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v9, &v28, &v27, 1);
  }

  v20 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v13, @"CMErrorDomain", 109, v12);
  (*(handler + 2))(handler, 0, v20);
}

- (void)stopOdometerUpdates
{
  v4 = *(objc_msgSend_odometerProxy(self, a2, v2) + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B627B98;
  block[3] = &unk_1E7532988;
  block[4] = self;
  dispatch_sync(v4, block);
}

- (void)startCyclingWorkoutDistanceUpdatesWithHandler:(id)handler
{
  if (!handler)
  {
    v10 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v10, v11, a2, self, @"CMOdometer.mm", 311, @"Invalid parameter not satisfying: %@", @"handler");
  }

  v5 = objc_msgSend_copy(handler, a2, handler);
  v8 = *(objc_msgSend_odometerProxy(self, v6, v7) + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B627CA8;
  block[3] = &unk_1E7532B68;
  block[4] = self;
  block[5] = v5;
  dispatch_async(v8, block);
}

- (void)stopCyclingWorkoutDistanceUpdates
{
  v4 = *(objc_msgSend_odometerProxy(self, a2, v2) + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B627D64;
  block[3] = &unk_1E7532988;
  block[4] = self;
  dispatch_sync(v4, block);
}

@end