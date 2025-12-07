@interface CMActivityAlarm
+ (BOOL)activityAlarmAvailable;
+ (id)activityAlarmInfo;
- (BOOL)isValid;
- (CMActivityAlarm)initWithTrigger:(unsigned int)trigger duration:(double)duration onQueue:(id)queue withHandler:(id)handler;
- (CMActivityAlarm)initWithTrigger:(unsigned int)trigger duration:(double)duration onRunLoop:(__CFRunLoop *)loop withHandler:(id)handler;
- (void)dealloc;
- (void)fire;
- (void)invalidate;
@end

@implementation CMActivityAlarm

+ (BOOL)activityAlarmAvailable
{
  if ((sub_19B4215D8() & 1) != 0 || !objc_msgSend_sharedInstance(CMActivityAlarmProxy, v2, v3))
  {
    return 0;
  }

  v6 = objc_msgSend_sharedInstance(CMActivityAlarmProxy, v4, v5);

  return objc_msgSend_activityAlarmAvailable(v6, v7, v8);
}

+ (id)activityAlarmInfo
{
  v2 = sub_19B704E68();

  return v2;
}

- (CMActivityAlarm)initWithTrigger:(unsigned int)trigger duration:(double)duration onQueue:(id)queue withHandler:(id)handler
{
  v9 = *&trigger;
  v31 = *MEMORY[0x1E69E9840];
  if (trigger >= 0x1C)
  {
    v26 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, *&trigger);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v26, v27, a2, self, @"CMActivityAlarm.mm", 54, @"Invalid parameter not satisfying: %@", @"trigger < kActivityAlarmTriggerCount");
  }

  if ((objc_msgSend_activityAlarmAvailable(CMActivityAlarm, a2, *&trigger) & 1) == 0)
  {
    goto LABEL_17;
  }

  v29.receiver = self;
  v29.super_class = CMActivityAlarm;
  self = [(CMActivityAlarm *)&v29 init];
  if (!objc_msgSend_sharedInstance(CMActivityAlarmProxy, v11, v12))
  {
    if (qword_1EAFE2858 != -1)
    {
      dispatch_once(&qword_1EAFE2858, &unk_1F0E2A3C0);
    }

    v20 = qword_1EAFE2878;
    if (os_log_type_enabled(qword_1EAFE2878, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v20, OS_LOG_TYPE_FAULT, "Unable to create sharedInstance of CMActivityAlarmProxy.", buf, 2u);
    }

    v21 = sub_19B420058();
    if ((*(v21 + 160) & 0x80000000) == 0 || (*(v21 + 164) & 0x80000000) == 0 || (*(v21 + 168) & 0x80000000) == 0 || *(v21 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2858 != -1)
      {
        dispatch_once(&qword_1EAFE2858, &unk_1F0E2A3C0);
      }

      v28[0] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2878, 17, "Unable to create sharedInstance of CMActivityAlarmProxy.", v28, 2);
      v23 = v22;
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMActivityAlarm initWithTrigger:duration:onQueue:withHandler:]", "CoreLocation: %s\n", v22);
      if (v23 != buf)
      {
        free(v23);
      }
    }

LABEL_17:

    return 0;
  }

  self->fIsValid = 1;
  self->fRunLoop = 0;
  dispatch_retain(queue);
  self->fQueue = queue;
  self->fHandler = _Block_copy(handler);
  objc_msgSend_setDuration_(self, v13, v14, duration);
  objc_msgSend_setTrigger_(self, v15, v9);
  v18 = objc_msgSend_sharedInstance(CMActivityAlarmProxy, v16, v17);
  objc_msgSend_listenForActivityAlarm_(v18, v19, self);
  return self;
}

- (CMActivityAlarm)initWithTrigger:(unsigned int)trigger duration:(double)duration onRunLoop:(__CFRunLoop *)loop withHandler:(id)handler
{
  v9 = *&trigger;
  v31 = *MEMORY[0x1E69E9840];
  if (trigger >= 0x1C)
  {
    v26 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, *&trigger);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v26, v27, a2, self, @"CMActivityAlarm.mm", 89, @"Invalid parameter not satisfying: %@", @"trigger < kActivityAlarmTriggerCount");
  }

  if ((objc_msgSend_activityAlarmAvailable(CMActivityAlarm, a2, *&trigger) & 1) == 0)
  {
    goto LABEL_17;
  }

  v29.receiver = self;
  v29.super_class = CMActivityAlarm;
  self = [(CMActivityAlarm *)&v29 init];
  if (!objc_msgSend_sharedInstance(CMActivityAlarmProxy, v11, v12))
  {
    if (qword_1EAFE2858 != -1)
    {
      dispatch_once(&qword_1EAFE2858, &unk_1F0E2A3C0);
    }

    v20 = qword_1EAFE2878;
    if (os_log_type_enabled(qword_1EAFE2878, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v20, OS_LOG_TYPE_FAULT, "Unable to create sharedInstance of CMActivityAlarmProxy.", buf, 2u);
    }

    v21 = sub_19B420058();
    if ((*(v21 + 160) & 0x80000000) == 0 || (*(v21 + 164) & 0x80000000) == 0 || (*(v21 + 168) & 0x80000000) == 0 || *(v21 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2858 != -1)
      {
        dispatch_once(&qword_1EAFE2858, &unk_1F0E2A3C0);
      }

      v28[0] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2878, 17, "Unable to create sharedInstance of CMActivityAlarmProxy.", v28, 2);
      v23 = v22;
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMActivityAlarm initWithTrigger:duration:onRunLoop:withHandler:]", "CoreLocation: %s\n", v22);
      if (v23 != buf)
      {
        free(v23);
      }
    }

LABEL_17:

    return 0;
  }

  self->fIsValid = 1;
  self->fRunLoop = loop;
  self->fQueue = 0;
  self->fHandler = _Block_copy(handler);
  objc_msgSend_setDuration_(self, v13, v14, duration);
  objc_msgSend_setTrigger_(self, v15, v9);
  v18 = objc_msgSend_sharedInstance(CMActivityAlarmProxy, v16, v17);
  objc_msgSend_listenForActivityAlarm_(v18, v19, self);
  return self;
}

- (void)dealloc
{
  objc_msgSend_invalidate(self, a2, v2);
  v4.receiver = self;
  v4.super_class = CMActivityAlarm;
  [(CMActivityAlarm *)&v4 dealloc];
}

- (void)invalidate
{
  objc_sync_enter(self);
  if (self->fIsValid)
  {
    self->fIsValid = 0;
    _Block_release(self->fHandler);
    self->fHandler = 0;
    fQueue = self->fQueue;
    if (fQueue)
    {
      dispatch_release(fQueue);
      self->fQueue = 0;
    }

    self->fRunLoop = 0;
    objc_sync_exit(self);
    v6 = objc_msgSend_sharedInstance(CMActivityAlarmProxy, v4, v5);

    MEMORY[0x1EEE66B58](v6, sel_stopListeningForActivityAlarm_, self);
  }

  else
  {

    objc_sync_exit(self);
  }
}

- (BOOL)isValid
{
  objc_sync_enter(self);
  fIsValid = self->fIsValid;
  objc_sync_exit(self);
  return fIsValid;
}

- (void)fire
{
  objc_sync_enter(self);
  if (self->fIsValid)
  {
    self->fIsValid = 0;
    if (self->fRunLoop)
    {
      v3 = _Block_copy(self->fHandler);
      fRunLoop = self->fRunLoop;
      v5 = *MEMORY[0x1E695E8E0];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_19B75C884;
      block[3] = &unk_1E7532B90;
      block[4] = self;
      block[5] = v3;
      CFRunLoopPerformBlock(fRunLoop, v5, block);
      CFRunLoopWakeUp(self->fRunLoop);
      self->fRunLoop = 0;
    }

    if (self->fQueue)
    {
      v6 = _Block_copy(self->fHandler);
      fQueue = self->fQueue;
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = sub_19B75C8D0;
      v8[3] = &unk_1E7532B90;
      v8[4] = self;
      v8[5] = v6;
      dispatch_async(fQueue, v8);
      dispatch_release(self->fQueue);
      self->fQueue = 0;
    }

    _Block_release(self->fHandler);
    self->fHandler = 0;
  }

  objc_sync_exit(self);
}

@end