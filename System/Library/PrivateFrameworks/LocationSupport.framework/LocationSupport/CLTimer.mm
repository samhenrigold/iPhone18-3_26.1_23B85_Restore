@interface CLTimer
- (double)nextFireDelay;
- (double)nextFireTime;
- (id)initInSilo:(id)silo withScheduler:(id)scheduler;
- (void)dbgAssertInside;
- (void)invalidate;
- (void)setFireInterval:(double)interval;
- (void)setHandler:(id)handler;
- (void)setNextFireDelay:(double)delay;
- (void)setNextFireDelay:(double)delay interval:(double)interval;
- (void)setNextFireTime:(double)time;
- (void)setNextFireTime:(double)time interval:(double)interval;
- (void)shouldFire;
@end

@implementation CLTimer

- (void)dbgAssertInside
{
  WeakRetained = objc_loadWeakRetained(&self->_silo);
}

- (void)shouldFire
{
  objc_msgSend_dbgAssertInside(self, a2, v2);
  if (self->_fireInterval == 1.79769313e308)
  {
    self->_nextFireDelay = 1.79769313e308;
  }

  handler = self->_handler;
  if (handler)
  {
    v7 = objc_msgSend_copy(handler, v4, v5);
    v7[2]();
  }
}

- (double)nextFireDelay
{
  objc_msgSend_dbgAssertInside(self, a2, v2);
  result = 1.79769313e308;
  if (self->_nextFireDelay != 1.79769313e308)
  {
    v5 = mach_continuous_time();
    v6 = sub_1DF7FF29C(v5);
    nextFireDelay = self->_nextFireDelay;
    v8 = v6 - self->_delaySetAtTime;
    if (v8 <= nextFireDelay)
    {
      return nextFireDelay - v8;
    }

    else
    {
      fireInterval = self->_fireInterval;
      result = 0.0;
      if (fireInterval != 1.79769313e308)
      {
        return fireInterval - fmod(v8 - nextFireDelay, self->_fireInterval);
      }
    }
  }

  return result;
}

- (double)nextFireTime
{
  objc_msgSend_nextFireDelay(self, a2, v2);
  v4 = v3;
  result = 1.79769313e308;
  if (v4 != 1.79769313e308)
  {
    return v4 + CFAbsoluteTimeGetCurrent();
  }

  return result;
}

- (void)invalidate
{
  objc_msgSend_dbgAssertInside(self, a2, v2);
  handler = self->_handler;
  self->_handler = 0;

  self->_nextFireDelay = 1.79769313e308;
  self->_fireInterval = 1.79769313e308;

  objc_msgSend_updateScheduler(self, v5, v6);
}

- (id)initInSilo:(id)silo withScheduler:(id)scheduler
{
  siloCopy = silo;
  schedulerCopy = scheduler;
  v18.receiver = self;
  v18.super_class = CLTimer;
  v8 = [(CLTimer *)&v18 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_silo, siloCopy);
    objc_msgSend_dbgAssertInside(v9, v10, v11);
    *(v9 + 16) = 0x7FEFFFFFFFFFFFFFLL;
    v12 = *(v9 + 40);
    *(v9 + 40) = 0;
    *(v9 + 48) = 0x7FEFFFFFFFFFFFFFLL;

    objc_storeStrong((v9 + 32), scheduler);
    objc_msgSend_setTimer_(*(v9 + 32), v13, v9);
    objc_msgSend_updateScheduler(v9, v14, v15);
    v16 = v9;
  }

  return v9;
}

- (void)setHandler:(id)handler
{
  v22 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  objc_msgSend_dbgAssertInside(self, v4, v5);
  if (!handlerCopy)
  {
    v10 = sub_1DF81194C();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v15 = 0;
      v16 = 2082;
      v17 = &unk_1DF8255EF;
      v18 = 2082;
      v19 = "assert";
      v20 = 2081;
      v21 = "handler != ((void *)0)";
      _os_log_impl(&dword_1DF7FE000, v10, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Can't set nil handler for CLTimer., event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v11 = sub_1DF81194C();
    if (os_signpost_enabled(v11))
    {
      *buf = 68289539;
      v15 = 0;
      v16 = 2082;
      v17 = &unk_1DF8255EF;
      v18 = 2082;
      v19 = "assert";
      v20 = 2081;
      v21 = "handler != ((void *)0)";
      _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Can't set nil handler for CLTimer.", "{msg%{public}.0s:Can't set nil handler for CLTimer., event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v12 = sub_1DF81194C();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v15 = 0;
      v16 = 2082;
      v17 = &unk_1DF8255EF;
      v18 = 2082;
      v19 = "assert";
      v20 = 2081;
      v21 = "handler != ((void *)0)";
      _os_log_impl(&dword_1DF7FE000, v12, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Can't set nil handler for CLTimer., event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Shared/Intersilo/CLTimer.m", 109, "[CLTimer setHandler:]");
  }

  v8 = objc_msgSend_copy(handlerCopy, v6, v7);
  handler = self->_handler;
  self->_handler = v8;
}

- (void)setNextFireDelay:(double)delay
{
  objc_msgSend_dbgAssertInside(self, a2, v3);
  objc_msgSend_fireInterval(self, v5, v6);

  MEMORY[0x1EEE66B58](self, sel_setNextFireDelay_interval_, v7);
}

- (void)setFireInterval:(double)interval
{
  objc_msgSend_dbgAssertInside(self, a2, v3);
  objc_msgSend_nextFireDelay(self, v5, v6);

  MEMORY[0x1EEE66B58](self, sel_setNextFireDelay_interval_, v7);
}

- (void)setNextFireDelay:(double)delay interval:(double)interval
{
  objc_msgSend_dbgAssertInside(self, a2, v4);
  self->_nextFireDelay = fmax(delay, 0.0);
  intervalCopy = 1.79769313e308;
  if (interval > 0.0)
  {
    intervalCopy = interval;
  }

  self->_fireInterval = intervalCopy;
  v9 = mach_continuous_time();
  self->_delaySetAtTime = sub_1DF7FF29C(v9);

  objc_msgSend_updateScheduler(self, v10, v11);
}

- (void)setNextFireTime:(double)time
{
  objc_msgSend_fireInterval(self, a2, v3);

  MEMORY[0x1EEE66B58](self, sel_setNextFireTime_interval_, v5);
}

- (void)setNextFireTime:(double)time interval:(double)interval
{
  if (time != 1.79769313e308)
  {
    CFAbsoluteTimeGetCurrent();
  }

  MEMORY[0x1EEE66B58](self, sel_setNextFireDelay_interval_, v4);
}

@end