@interface IMDispatchTimer
- (IMDispatchTimer)initWithQueue:(id)queue interval:(unint64_t)interval repeats:(BOOL)repeats handlerBlock:(id)block;
- (IMDispatchTimer)initWithQueue:(id)queue interval:(unint64_t)interval repeats:(BOOL)repeats userInfo:(id)info handlerBlock:(id)block;
- (void)fire;
- (void)invalidate;
- (void)updateTimerInterval:(unint64_t)interval repeats:(BOOL)repeats;
@end

@implementation IMDispatchTimer

- (void)invalidate
{
  v14 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_isValid)
  {
    if (selfCopy->_timerSource)
    {
      v5 = objc_msgSend_timer(IMIDSLog, v3, v4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        timerSource = selfCopy->_timerSource;
        v10 = 134218242;
        v11 = selfCopy;
        v12 = 2112;
        v13 = timerSource;
        _os_log_impl(&dword_195988000, v5, OS_LOG_TYPE_DEFAULT, "[IMDispatchTimer invalidate] {self: %p, _timerSource: %@}", &v10, 0x16u);
      }

      dispatch_source_cancel(selfCopy->_timerSource);
    }

    fireDate = selfCopy->_fireDate;
    selfCopy->_fireDate = 0;

    selfCopy->_timeInterval = 0.0;
    *&selfCopy->_isValid = 0;
    userInfo = selfCopy->_userInfo;
    selfCopy->_userInfo = 0;

    handlerBlock = selfCopy->_handlerBlock;
    selfCopy->_handlerBlock = 0;
  }

  objc_sync_exit(selfCopy);
}

- (IMDispatchTimer)initWithQueue:(id)queue interval:(unint64_t)interval repeats:(BOOL)repeats handlerBlock:(id)block
{
  repeatsCopy = repeats;
  v43 = *MEMORY[0x1E69E9840];
  queueCopy = queue;
  blockCopy = block;
  v32.receiver = self;
  v32.super_class = IMDispatchTimer;
  v12 = [(IMDispatchTimer *)&v32 init];
  v13 = v12;
  if (v12)
  {
    userInfo = v12->_userInfo;
    v12->_userInfo = 0;

    v15 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, queueCopy);
    timerSource = v13->_timerSource;
    v13->_timerSource = v15;

    v13->_isValid = 1;
    v17 = _Block_copy(blockCopy);
    handlerBlock = v13->_handlerBlock;
    v13->_handlerBlock = v17;

    objc_msgSend_updateTimerInterval_repeats_(v13, v19, interval, repeatsCopy);
    v20 = v13->_timerSource;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = sub_1959A5FE4;
    handler[3] = &unk_1E7438828;
    v21 = v13;
    v29 = v21;
    v30 = blockCopy;
    intervalCopy = interval;
    dispatch_source_set_event_handler(v20, handler);
    v24 = objc_msgSend_timer(IMIDSLog, v22, v23);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = @"NO";
      v26 = v13->_timerSource;
      *buf = 134219010;
      if (repeatsCopy)
      {
        v25 = @"YES";
      }

      v34 = v21;
      v35 = 2048;
      intervalCopy2 = interval;
      v37 = 2112;
      v38 = v25;
      v39 = 2112;
      v40 = v26;
      v41 = 2112;
      v42 = queueCopy;
      _os_log_impl(&dword_195988000, v24, OS_LOG_TYPE_DEFAULT, "[IMDispatchTimer init] {self: %p, interval: %llu, repeats: %@, _timerSource: %@, queue: %@}", buf, 0x34u);
    }

    dispatch_resume(v13->_timerSource);
  }

  return v13;
}

- (IMDispatchTimer)initWithQueue:(id)queue interval:(unint64_t)interval repeats:(BOOL)repeats userInfo:(id)info handlerBlock:(id)block
{
  repeatsCopy = repeats;
  infoCopy = info;
  blockCopy = block;
  queueCopy = queue;
  v16 = [IMDispatchTimer alloc];
  v18 = objc_msgSend_initWithQueue_interval_repeats_handlerBlock_(v16, v17, queueCopy, interval, repeatsCopy, blockCopy);

  if (v18)
  {
    objc_storeStrong(&v18->_userInfo, info);
  }

  return v18;
}

- (void)updateTimerInterval:(unint64_t)interval repeats:(BOOL)repeats
{
  repeatsCopy = repeats;
  v35 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_isValid)
  {
    selfCopy->_timeInterval = interval;
    v9 = interval != -1 && repeatsCopy;
    selfCopy->_repeats = v9;
    if (interval == -1)
    {
      fireDate = selfCopy->_fireDate;
      selfCopy->_fireDate = 0;

      v13 = -1;
      v12 = -1000000000;
    }

    else
    {
      v10 = objc_msgSend_dateWithTimeIntervalSinceNow_(MEMORY[0x1E695DF00], v7, v8);
      v11 = selfCopy->_fireDate;
      selfCopy->_fireDate = v10;

      v12 = 1000000000 * interval;
      v13 = dispatch_time(0, 1000000000 * interval);
    }

    if (v9)
    {
      v15 = v12;
    }

    else
    {
      v15 = -1;
    }

    dispatch_source_set_timer(selfCopy->_timerSource, v13, v15, 0x5F5E100uLL);
    v18 = objc_msgSend_timer(IMIDSLog, v16, v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      timerSource = selfCopy->_timerSource;
      v20 = @"NO";
      v21 = 134219522;
      if (repeatsCopy)
      {
        v20 = @"YES";
      }

      v22 = selfCopy;
      v23 = 2112;
      v24 = timerSource;
      v25 = 2048;
      v26 = v13;
      v27 = 2048;
      v28 = v15;
      v29 = 2048;
      v30 = 100000000;
      v31 = 2048;
      intervalCopy = interval;
      v33 = 2112;
      v34 = v20;
      _os_log_impl(&dword_195988000, v18, OS_LOG_TYPE_DEFAULT, "[IMDispatchTimer update] {self: %p, _timerSource: %@, timerStart: %llu, timerInterval: %llu, timerLeeway: %llu, newInterval: %llu, repeats: %@}", &v21, 0x48u);
    }
  }

  objc_sync_exit(selfCopy);
}

- (void)fire
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  isValid = selfCopy->_isValid;
  objc_sync_exit(selfCopy);

  if (isValid)
  {
    (*(selfCopy->_handlerBlock + 2))();
    obj = selfCopy;
    objc_sync_enter(obj);
    if (!obj->_repeats)
    {
      objc_msgSend_invalidate(obj, v4, v5);
    }

    objc_sync_exit(obj);
  }
}

@end