@interface CLRunLoopTimerScheduler
- (CLRunLoopTimerScheduler)initWithRunLoopSilo:(id)silo;
- (CLTimer)timer;
- (void)dealloc;
- (void)reflectNextFireDelay:(double)delay fireInterval:(double)interval;
@end

@implementation CLRunLoopTimerScheduler

- (CLRunLoopTimerScheduler)initWithRunLoopSilo:(id)silo
{
  siloCopy = silo;
  objc_msgSend_inPermissiveMode(siloCopy, v5, v6);
  v21.receiver = self;
  v21.super_class = CLRunLoopTimerScheduler;
  v9 = [(CLRunLoopTimerScheduler *)&v21 init];
  if (v9)
  {
    v10 = objc_msgSend_runloop(siloCopy, v7, v8);
    runloop = v9->_runloop;
    v9->_runloop = v10;

    objc_initWeak(&location, v9);
    objc_initWeak(&from, siloCopy);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = sub_1DF80F910;
    v16[3] = &unk_1E86C82F8;
    objc_copyWeak(&v17, &from);
    objc_copyWeak(&v18, &location);
    v12 = _Block_copy(v16);
    fireBlock = v9->_fireBlock;
    v9->_fireBlock = v12;

    v14 = v9;
    objc_destroyWeak(&v18);
    objc_destroyWeak(&v17);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }

  return v9;
}

- (void)dealloc
{
  objc_msgSend_invalidate(self->_underlyingTimer, a2, v2);
  v4.receiver = self;
  v4.super_class = CLRunLoopTimerScheduler;
  [(CLRunLoopTimerScheduler *)&v4 dealloc];
}

- (void)reflectNextFireDelay:(double)delay fireInterval:(double)interval
{
  underlyingTimer = self->_underlyingTimer;
  if (underlyingTimer)
  {
    objc_msgSend_invalidate(underlyingTimer, a2, v4);
  }

  v9 = objc_msgSend_timerWithTimeInterval_repeats_block_(MEMORY[0x1E695DFF0], a2, 1, self->_fireBlock, interval);
  v10 = self->_underlyingTimer;
  self->_underlyingTimer = v9;

  v11 = self->_underlyingTimer;
  v14 = objc_msgSend_dateWithTimeIntervalSinceNow_(MEMORY[0x1E695DF00], v12, v13, delay);
  objc_msgSend_setFireDate_(v11, v15, v14);

  runloop = self->_runloop;
  v17 = self->_underlyingTimer;

  MEMORY[0x1EEE66B58](runloop, sel_addTimer_forMode_, v17);
}

- (CLTimer)timer
{
  WeakRetained = objc_loadWeakRetained(&self->_timer);

  return WeakRetained;
}

@end