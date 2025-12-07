@interface CLLocationManagerRoutine
- (CLInertialDataManagerDelegate)inertialDelegate;
- (CLLocationManagerDelegate)delegate;
- (CLLocationManagerRoutine)init;
- (CLLocationManagerRoutine)initWithQueue:(id)queue;
- (void)dealloc;
- (void)fetchLocationAtDate:(id)date withHandler:(id)handler;
- (void)fetchLocationAtMachContinuousTime:(double)time withHandler:(id)handler;
- (void)fetchLocationsInLastSeconds:(unsigned int)seconds withHandler:(id)handler;
- (void)fetchRecentLocationsWithOptions:(id)options withHandler:(id)handler;
- (void)setDelegate:(id)delegate;
- (void)setInertialDelegate:(id)delegate;
- (void)startUpdatingLocation;
- (void)stopUpdatingLocation;
@end

@implementation CLLocationManagerRoutine

- (CLLocationManagerRoutine)init
{
  v4 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"_CLLocationManagerRoutineProxy, %p", v2, self);
  v8 = objc_msgSend_UTF8String(v4, v5, v6, v7);
  v9 = dispatch_queue_create(v8, 0);
  v12 = objc_msgSend_initWithQueue_(self, v10, v9, v11);
  dispatch_release(v9);
  return v12;
}

- (CLLocationManagerRoutine)initWithQueue:(id)queue
{
  if (queue)
  {
    v13.receiver = self;
    v13.super_class = CLLocationManagerRoutine;
    v6 = [(CLLocationManagerRoutine *)&v13 init];
    if (v6)
    {
      v7 = [_CLLocationManagerRoutineProxy alloc];
      v6->_locationManagerRoutineProxy = objc_msgSend_initWithQueue_locationManagerRoutine_(v7, v8, queue, v6);
    }
  }

  else
  {
    v11 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0, v3);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v11, v12, a2, self, @"CLLocationManagerRoutine.m", 261, @"Invalid parameter not satisfying: %@", @"queue");
    return 0;
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLLocationManagerRoutine;
  [(CLLocationManagerRoutine *)&v3 dealloc];
}

- (void)startUpdatingLocation
{
  v6 = *(objc_msgSend_locationManagerRoutineProxy(self, a2, v2, v3) + 8);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_19B893208;
  v7[3] = &unk_1E753CFB0;
  v7[4] = self;
  v7[5] = a2;
  dispatch_async(v6, v7);
}

- (void)stopUpdatingLocation
{
  v5 = *(objc_msgSend_locationManagerRoutineProxy(self, a2, v2, v3) + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B89331C;
  block[3] = &unk_1E753CC90;
  block[4] = self;
  dispatch_async(v5, block);
}

- (void)fetchLocationAtDate:(id)date withHandler:(id)handler
{
  v14 = *MEMORY[0x1E69E9840];
  if (handler)
  {
    v7 = *(objc_msgSend_locationManagerRoutineProxy(self, a2, date, handler) + 8);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_19B893578;
    block[3] = &unk_1E753CFD8;
    block[5] = date;
    block[6] = handler;
    block[4] = self;
    dispatch_async(v7, block);
  }

  else
  {
    if (qword_1EAFE46C0 != -1)
    {
      dispatch_once(&qword_1EAFE46C0, &unk_1F0E6B640);
    }

    v8 = qword_1EAFE46F8;
    if (os_log_type_enabled(qword_1EAFE46F8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_ERROR, "#ADL #routine, fetchLocationAtDate, NULL handler", buf, 2u);
    }

    v9 = sub_19B87DD40();
    if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46C0 != -1)
      {
        dispatch_once(&qword_1EAFE46C0, &unk_1F0E6B640);
      }

      v12[0] = 0;
      v10 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46F8, 16, "#ADL #routine, fetchLocationAtDate, NULL handler", v12, 2);
      sub_19B885924("Generic", 1, 0, 0, "[CLLocationManagerRoutine fetchLocationAtDate:withHandler:]", "CoreLocation: %s\n", v10);
      if (v10 != buf)
      {
        free(v10);
      }
    }
  }
}

- (void)fetchLocationAtMachContinuousTime:(double)time withHandler:(id)handler
{
  v15 = *MEMORY[0x1E69E9840];
  if (handler)
  {
    v8 = *(objc_msgSend_locationManagerRoutineProxy(self, a2, handler, v4) + 8);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_19B893918;
    block[3] = &unk_1E753D000;
    block[4] = self;
    block[5] = handler;
    *&block[6] = time;
    dispatch_async(v8, block);
  }

  else
  {
    if (qword_1EAFE46C0 != -1)
    {
      dispatch_once(&qword_1EAFE46C0, &unk_1F0E6B640);
    }

    v9 = qword_1EAFE46F8;
    if (os_log_type_enabled(qword_1EAFE46F8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_ERROR, "#ADL #routine, fetchLocationAtMachContinuousTime, NULL handler", buf, 2u);
    }

    v10 = sub_19B87DD40();
    if ((*(v10 + 160) & 0x80000000) == 0 || (*(v10 + 164) & 0x80000000) == 0 || (*(v10 + 168) & 0x80000000) == 0 || *(v10 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46C0 != -1)
      {
        dispatch_once(&qword_1EAFE46C0, &unk_1F0E6B640);
      }

      v13[0] = 0;
      v11 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46F8, 16, "#ADL #routine, fetchLocationAtMachContinuousTime, NULL handler", v13, 2);
      sub_19B885924("Generic", 1, 0, 0, "[CLLocationManagerRoutine fetchLocationAtMachContinuousTime:withHandler:]", "CoreLocation: %s\n", v11);
      if (v11 != buf)
      {
        free(v11);
      }
    }
  }
}

- (void)fetchLocationsInLastSeconds:(unsigned int)seconds withHandler:(id)handler
{
  v15 = *MEMORY[0x1E69E9840];
  if (handler)
  {
    v7 = *(objc_msgSend_locationManagerRoutineProxy(self, a2, *&seconds, handler) + 8);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_19B893CB8;
    block[3] = &unk_1E753D028;
    block[4] = self;
    block[5] = handler;
    secondsCopy = seconds;
    dispatch_async(v7, block);
  }

  else
  {
    if (qword_1EAFE46C0 != -1)
    {
      dispatch_once(&qword_1EAFE46C0, &unk_1F0E6B640);
    }

    v8 = qword_1EAFE46F8;
    if (os_log_type_enabled(qword_1EAFE46F8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_ERROR, "#ADL #routine, fetchLocationsInLastSeconds, NULL handler", buf, 2u);
    }

    v9 = sub_19B87DD40();
    if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46C0 != -1)
      {
        dispatch_once(&qword_1EAFE46C0, &unk_1F0E6B640);
      }

      v13[0] = 0;
      v10 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46F8, 16, "#ADL #routine, fetchLocationsInLastSeconds, NULL handler", v13, 2);
      sub_19B885924("Generic", 1, 0, 0, "[CLLocationManagerRoutine fetchLocationsInLastSeconds:withHandler:]", "CoreLocation: %s\n", v10);
      if (v10 != buf)
      {
        free(v10);
      }
    }
  }
}

- (void)fetchRecentLocationsWithOptions:(id)options withHandler:(id)handler
{
  v14 = *MEMORY[0x1E69E9840];
  if (handler)
  {
    v7 = *(objc_msgSend_locationManagerRoutineProxy(self, a2, options, handler) + 8);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_19B894058;
    block[3] = &unk_1E753CFD8;
    block[5] = options;
    block[6] = handler;
    block[4] = self;
    dispatch_async(v7, block);
  }

  else
  {
    if (qword_1EAFE46C0 != -1)
    {
      dispatch_once(&qword_1EAFE46C0, &unk_1F0E6B640);
    }

    v8 = qword_1EAFE46F8;
    if (os_log_type_enabled(qword_1EAFE46F8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_ERROR, "#ADL #routine, fetchRecentLocationsWithOptions, NULL handler", buf, 2u);
    }

    v9 = sub_19B87DD40();
    if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46C0 != -1)
      {
        dispatch_once(&qword_1EAFE46C0, &unk_1F0E6B640);
      }

      v12[0] = 0;
      v10 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46F8, 16, "#ADL #routine, fetchRecentLocationsWithOptions, NULL handler", v12, 2);
      sub_19B885924("Generic", 1, 0, 0, "[CLLocationManagerRoutine fetchRecentLocationsWithOptions:withHandler:]", "CoreLocation: %s\n", v10);
      if (v10 != buf)
      {
        free(v10);
      }
    }
  }
}

- (void)setDelegate:(id)delegate
{
  v6 = *(objc_msgSend_locationManagerRoutineProxy(self, a2, delegate, v3) + 8);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_19B894268;
  v7[3] = &unk_1E753CF38;
  v7[4] = self;
  v7[5] = delegate;
  dispatch_async(v6, v7);
}

- (CLLocationManagerDelegate)delegate
{
  v4 = objc_msgSend_locationManagerRoutineProxy(self, a2, v2, v3);

  return objc_msgSend_delegate(v4, v5, v6, v7);
}

- (void)setInertialDelegate:(id)delegate
{
  v6 = *(objc_msgSend_locationManagerRoutineProxy(self, a2, delegate, v3) + 8);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_19B894350;
  v7[3] = &unk_1E753CF38;
  v7[4] = self;
  v7[5] = delegate;
  dispatch_async(v6, v7);
}

- (CLInertialDataManagerDelegate)inertialDelegate
{
  v4 = objc_msgSend_locationManagerRoutineProxy(self, a2, v2, v3);

  return objc_msgSend_inertialDelegate(v4, v5, v6, v7);
}

@end