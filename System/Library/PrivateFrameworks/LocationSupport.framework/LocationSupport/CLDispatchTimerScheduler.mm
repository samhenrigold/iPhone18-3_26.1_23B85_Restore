@interface CLDispatchTimerScheduler
- (CLDispatchTimerScheduler)initWithDispatchSilo:(id)silo;
- (CLTimer)timer;
- (void)dealloc;
- (void)reflectNextFireDelay:(double)delay fireInterval:(double)interval;
@end

@implementation CLDispatchTimerScheduler

- (CLTimer)timer
{
  WeakRetained = objc_loadWeakRetained(&self->timer);

  return WeakRetained;
}

- (void)dealloc
{
  source = self->_source;
  if (source)
  {
    dispatch_source_cancel(source);
    v4 = self->_source;
    self->_source = 0;
  }

  v5.receiver = self;
  v5.super_class = CLDispatchTimerScheduler;
  [(CLDispatchTimerScheduler *)&v5 dealloc];
}

- (CLDispatchTimerScheduler)initWithDispatchSilo:(id)silo
{
  siloCopy = silo;
  objc_msgSend_inPermissiveMode(siloCopy, v5, v6);
  v30.receiver = self;
  v30.super_class = CLDispatchTimerScheduler;
  v7 = [(CLDispatchTimerScheduler *)&v30 init];
  if (v7)
  {
    objc_initWeak(&location, v7);
    objc_initWeak(&from, siloCopy);
    v22 = MEMORY[0x1E69E9820];
    v23 = 3221225472;
    v24 = sub_1DF81A33C;
    v25 = &unk_1E86C84D0;
    objc_copyWeak(&v26, &from);
    objc_copyWeak(&v27, &location);
    v8 = _Block_copy(&v22);
    v11 = objc_msgSend_queue(siloCopy, v9, v10, v22, v23, v24, v25);
    v12 = dispatch_source_create(MEMORY[0x1E69E9710], 2uLL, 0, v11);
    v13 = *(v7 + 2);
    *(v7 + 2) = v12;

    v14 = *(v7 + 2);
    v17 = objc_msgSend_copy(v8, v15, v16);
    dispatch_set_context(v14, v17);
    dispatch_set_finalizer_f(*(v7 + 2), j__objc_release);
    dispatch_source_set_event_handler_f(*(v7 + 2), sub_1DF7FFDAC);
    objc_msgSend_reflectNextFireDelay_fireInterval_(v7, v18, v19, 1.79769313e308, 1.79769313e308);
    dispatch_resume(*(v7 + 2));
    v20 = v7;

    objc_destroyWeak(&v27);
    objc_destroyWeak(&v26);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }

  return v7;
}

- (void)reflectNextFireDelay:(double)delay fireInterval:(double)interval
{
  source = self->_source;
  if (!source)
  {
    __assert_rtn("[CLDispatchTimerScheduler reflectNextFireDelay:fireInterval:]", "CLDispatchSilo.m", 132, "_source");
  }

  if (delay == 1.79769313e308)
  {
    v7 = -1;
  }

  else
  {
    v7 = dispatch_time(0x8000000000000000, (delay * 1000000000.0));
    source = self->_source;
  }

  if (interval == 1.79769313e308)
  {
    v8 = -1;
  }

  else
  {
    v8 = (interval * 1000000000.0);
  }

  dispatch_source_set_timer(source, v7, v8, 0);
}

@end