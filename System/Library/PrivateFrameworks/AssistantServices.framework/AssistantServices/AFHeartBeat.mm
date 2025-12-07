@interface AFHeartBeat
- (AFHeartBeat)initWithIdentifier:(id)identifier queue:(id)queue effectiveDate:(id)date expirationDuration:(double)duration heartBeatInterval:(double)interval heartBeatHandler:(id)handler invalidationHandler:(id)invalidationHandler;
- (NSString)description;
- (void)_fire;
- (void)_invalidate;
- (void)dealloc;
- (void)invalidate;
@end

@implementation AFHeartBeat

- (void)_fire
{
  v15 = *MEMORY[0x1E69E9840];
  add = atomic_fetch_add(&self->_numberOfHeartBeats, 1uLL);
  if (0xCCCCCCCCCCCCCCCDLL * add <= 0x3333333333333333)
  {
    v4 = AFSiriLogContextUtility;
    if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_DEBUG))
    {
      identifier = self->_identifier;
      v7 = 136315906;
      v8 = "[AFHeartBeat _fire]";
      v9 = 2048;
      selfCopy = self;
      v11 = 2112;
      v12 = identifier;
      v13 = 2048;
      v14 = add;
      _os_log_debug_impl(&dword_1912FE000, v4, OS_LOG_TYPE_DEBUG, "%s %p identifier = %@, index = %llu", &v7, 0x2Au);
    }
  }

  heartBeatHandler = self->_heartBeatHandler;
  if (heartBeatHandler)
  {
    heartBeatHandler[2](heartBeatHandler, add);
  }
}

- (void)_invalidate
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = atomic_load(&self->_numberOfHeartBeats);
  v4 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_DEBUG))
  {
    identifier = self->_identifier;
    v12 = 136315906;
    v13 = "[AFHeartBeat _invalidate]";
    v14 = 2048;
    selfCopy = self;
    v16 = 2112;
    v17 = identifier;
    v18 = 2048;
    v19 = v3;
    _os_log_debug_impl(&dword_1912FE000, v4, OS_LOG_TYPE_DEBUG, "%s %p identifier = %@, count = %llu", &v12, 0x2Au);
  }

  heartBeatTimer = self->_heartBeatTimer;
  if (heartBeatTimer)
  {
    dispatch_source_cancel(heartBeatTimer);
    v6 = self->_heartBeatTimer;
    self->_heartBeatTimer = 0;
  }

  expirationTimer = self->_expirationTimer;
  if (expirationTimer)
  {
    dispatch_source_cancel(expirationTimer);
    v8 = self->_expirationTimer;
    self->_expirationTimer = 0;
  }

  invalidationHandler = self->_invalidationHandler;
  if (invalidationHandler)
  {
    invalidationHandler[2](invalidationHandler, v3);
    v10 = self->_invalidationHandler;
    self->_invalidationHandler = 0;
  }
}

- (void)invalidate
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v7 = "[AFHeartBeat invalidate]";
    v8 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1912FE000, v3, OS_LOG_TYPE_INFO, "%s %p", buf, 0x16u);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __25__AFHeartBeat_invalidate__block_invoke;
  block[3] = &unk_1E73497C8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v12.receiver = self;
  v12.super_class = AFHeartBeat;
  v4 = [(AFHeartBeat *)&v12 description];
  identifier = self->_identifier;
  effectiveDate = self->_effectiveDate;
  [(NSDate *)effectiveDate timeIntervalSinceNow];
  expirationDuration = self->_expirationDuration;
  v8 = atomic_load(&self->_numberOfHeartBeats);
  v10 = [v3 initWithFormat:@"%@ {identifier = %@, effectiveDate = %@ (%f seconds), expirationDuration = %f, numberOfHeartBeats = %llu}", v4, identifier, effectiveDate, v9, *&expirationDuration, v8];

  return v10;
}

- (void)dealloc
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
  {
    identifier = self->_identifier;
    *buf = 136315650;
    v7 = "[AFHeartBeat dealloc]";
    v8 = 2048;
    selfCopy = self;
    v10 = 2112;
    v11 = identifier;
    _os_log_impl(&dword_1912FE000, v3, OS_LOG_TYPE_INFO, "%s %p identifier = %@", buf, 0x20u);
  }

  [(AFHeartBeat *)self _invalidate];
  v5.receiver = self;
  v5.super_class = AFHeartBeat;
  [(AFHeartBeat *)&v5 dealloc];
}

- (AFHeartBeat)initWithIdentifier:(id)identifier queue:(id)queue effectiveDate:(id)date expirationDuration:(double)duration heartBeatInterval:(double)interval heartBeatHandler:(id)handler invalidationHandler:(id)invalidationHandler
{
  v81 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  queueCopy = queue;
  dateCopy = date;
  handlerCopy = handler;
  invalidationHandlerCopy = invalidationHandler;
  v68.receiver = self;
  v68.super_class = AFHeartBeat;
  v21 = [(AFHeartBeat *)&v68 init];
  if (!v21)
  {
    goto LABEL_24;
  }

  v22 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
  {
    *buf = 136316418;
    v70 = "[AFHeartBeat initWithIdentifier:queue:effectiveDate:expirationDuration:heartBeatInterval:heartBeatHandler:invalidationHandler:]";
    v71 = 2048;
    v72 = v21;
    v73 = 2112;
    intervalCopy2 = *&identifierCopy;
    v75 = 2112;
    durationCopy3 = *&dateCopy;
    v77 = 2048;
    durationCopy = duration;
    v79 = 2048;
    intervalCopy = interval;
    _os_log_impl(&dword_1912FE000, v22, OS_LOG_TYPE_INFO, "%s %p identifier = %@, effectiveDate = %@, expirationDuration = %f, heartBeatInterval = %f", buf, 0x3Eu);
  }

  v23 = [identifierCopy copy];
  v24 = *(v21 + 7);
  *(v21 + 7) = v23;

  objc_storeStrong(v21 + 1, queue);
  v25 = [dateCopy copy];
  v26 = v25;
  if (v25)
  {
    date = v25;
  }

  else
  {
    date = [MEMORY[0x1E695DF00] date];
  }

  v28 = *(v21 + 8);
  *(v21 + 8) = date;

  *(v21 + 9) = duration;
  *(v21 + 10) = interval;
  v29 = MEMORY[0x193AFB7B0](handlerCopy);
  v30 = *(v21 + 4);
  *(v21 + 4) = v29;

  v31 = MEMORY[0x193AFB7B0](invalidationHandlerCopy);
  v32 = *(v21 + 5);
  *(v21 + 5) = v31;

  if (interval > 0.0)
  {
    if (duration < 0.0)
    {
      v33 = AFSiriLogContextUtility;
      if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v70 = "[AFHeartBeat initWithIdentifier:queue:effectiveDate:expirationDuration:heartBeatInterval:heartBeatHandler:invalidationHandler:]";
        v71 = 2048;
        v72 = v21;
        v73 = 2048;
        intervalCopy2 = duration;
        _os_log_error_impl(&dword_1912FE000, v33, OS_LOG_TYPE_ERROR, "%s %p Expiration duration %f is invalid.", buf, 0x20u);
      }

      v34 = *(v21 + 1);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __128__AFHeartBeat_initWithIdentifier_queue_effectiveDate_expirationDuration_heartBeatInterval_heartBeatHandler_invalidationHandler___block_invoke_1;
      block[3] = &unk_1E73497C8;
      v35 = v21;
      v65 = v35;
      dispatch_async(v34, block);
      v36 = v35;

      goto LABEL_25;
    }

    [dateCopy timeIntervalSinceNow];
    if (duration > 0.0 && v41 < 0.0 && v41 + duration < 0.0)
    {
      v42 = AFSiriLogContextUtility;
      if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v70 = "[AFHeartBeat initWithIdentifier:queue:effectiveDate:expirationDuration:heartBeatInterval:heartBeatHandler:invalidationHandler:]";
        v71 = 2048;
        v72 = v21;
        v73 = 2112;
        intervalCopy2 = *&dateCopy;
        v75 = 2048;
        durationCopy3 = duration;
        _os_log_error_impl(&dword_1912FE000, v42, OS_LOG_TYPE_ERROR, "%s %p Effective date %@ and expiration duration %f are in the past.", buf, 0x2Au);
      }

      v43 = *(v21 + 1);
      v62[0] = MEMORY[0x1E69E9820];
      v62[1] = 3221225472;
      v62[2] = __128__AFHeartBeat_initWithIdentifier_queue_effectiveDate_expirationDuration_heartBeatInterval_heartBeatHandler_invalidationHandler___block_invoke_2;
      v62[3] = &unk_1E73497C8;
      v44 = v21;
      v63 = v44;
      dispatch_async(v43, v62);
      v45 = v44;

      goto LABEL_25;
    }

    objc_initWeak(buf, v21);
    v46 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, queueCopy);
    v47 = *(v21 + 2);
    *(v21 + 2) = v46;

    v48 = *(v21 + 2);
    v49 = AFDispatchTimeGetFromDateAndOffset(dateCopy, 0.0);
    dispatch_source_set_timer(v48, v49, (interval * 1000000000.0), 0);
    v50 = *(v21 + 2);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __128__AFHeartBeat_initWithIdentifier_queue_effectiveDate_expirationDuration_heartBeatInterval_heartBeatHandler_invalidationHandler___block_invoke_2;
    handler[3] = &unk_1E7348A80;
    objc_copyWeak(&v61, buf);
    dispatch_source_set_event_handler(v50, handler);
    dispatch_resume(*(v21 + 2));
    if (duration > 0.0)
    {
      v51 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, queueCopy);
      v52 = *(v21 + 3);
      *(v21 + 3) = v51;

      v53 = *(v21 + 3);
      v54 = AFDispatchTimeGetFromDateAndOffset(dateCopy, duration);
      dispatch_source_set_timer(v53, v54, 0xFFFFFFFFFFFFFFFFLL, 0);
      v55 = *(v21 + 3);
      v58[0] = MEMORY[0x1E69E9820];
      v58[1] = 3221225472;
      v58[2] = __128__AFHeartBeat_initWithIdentifier_queue_effectiveDate_expirationDuration_heartBeatInterval_heartBeatHandler_invalidationHandler___block_invoke_3;
      v58[3] = &unk_1E7348A80;
      objc_copyWeak(&v59, buf);
      dispatch_source_set_event_handler(v55, v58);
      dispatch_resume(*(v21 + 3));
      objc_destroyWeak(&v59);
    }

    objc_destroyWeak(&v61);
    objc_destroyWeak(buf);
LABEL_24:
    v56 = v21;
    goto LABEL_25;
  }

  v37 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v70 = "[AFHeartBeat initWithIdentifier:queue:effectiveDate:expirationDuration:heartBeatInterval:heartBeatHandler:invalidationHandler:]";
    v71 = 2048;
    v72 = v21;
    v73 = 2048;
    intervalCopy2 = interval;
    _os_log_error_impl(&dword_1912FE000, v37, OS_LOG_TYPE_ERROR, "%s %p Heart beat interval %f is invalid.", buf, 0x20u);
  }

  v38 = *(v21 + 1);
  v66[0] = MEMORY[0x1E69E9820];
  v66[1] = 3221225472;
  v66[2] = __128__AFHeartBeat_initWithIdentifier_queue_effectiveDate_expirationDuration_heartBeatInterval_heartBeatHandler_invalidationHandler___block_invoke;
  v66[3] = &unk_1E73497C8;
  v39 = v21;
  v67 = v39;
  dispatch_async(v38, v66);
  v40 = v39;

LABEL_25:
  return v21;
}

void __128__AFHeartBeat_initWithIdentifier_queue_effectiveDate_expirationDuration_heartBeatInterval_heartBeatHandler_invalidationHandler___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _fire];
}

void __128__AFHeartBeat_initWithIdentifier_queue_effectiveDate_expirationDuration_heartBeatInterval_heartBeatHandler_invalidationHandler___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _invalidate];
}

@end