@interface CLDispatchSilo
- (CLDispatchSilo)initWithIdentifier:(id)identifier;
- (CLDispatchSilo)initWithUnderlyingQueue:(id)queue;
- (CLDispatchSilo)initWithUnderlyingQueue:(id)queue bePermissive:(BOOL)permissive;
- (id)debugDescription;
- (id)getTimeCoercibleVariantInstance;
- (id)initMain;
- (id)newTimer;
- (id)operationQueue;
- (void)_setLatchedAbsoluteTimestamp:(double)timestamp;
- (void)afterInterval:(double)interval async:(id)async;
- (void)async:(id)async;
- (void)heartBeat:(id)beat;
- (void)intendToSync;
- (void)resume;
- (void)suspend;
- (void)sync:(id)sync;
@end

@implementation CLDispatchSilo

- (void)intendToSync
{
  v60 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_autoCohortingEnabled(CLAutoCohortUtilities, a2, v2))
  {
    v4 = dispatch_get_specific("dispatchSilo");
    if (v4)
    {
      selfCopy = self;
      if (qword_1ED5FAD40 != -1)
      {
        dispatch_once(&qword_1ED5FAD40, &unk_1F5AC69E0);
      }

      v6 = qword_1ED5FAD48;
      if (os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_DEBUG))
      {
        v9 = *(v4 + 8);
        v10 = *(v4 + 80);
        identifier = selfCopy->super._identifier;
        cohortId = selfCopy->_cohortId;
        *buf = 68290050;
        v49 = 0;
        v50 = 2082;
        v51 = &unk_1DF8255EF;
        v52 = 2114;
        v53 = v9;
        v54 = 2114;
        v55 = v10;
        v56 = 2114;
        v57 = identifier;
        v58 = 2114;
        v59 = cohortId;
        _os_log_impl(&dword_1DF7FE000, v6, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#Cohorting Intend to sync, FromDispatchSilo:%{public, location:escape_only}@, FromCohortId:%{public, location:escape_only}@, ToDispatchSilo:%{public, location:escape_only}@, ToCohortId:%{public, location:escape_only}@}", buf, 0x3Au);
      }

      v13 = objc_msgSend_intValue(*(v4 + 80), v7, v8);
      if (v13 <= objc_msgSend_intValue(selfCopy->_cohortId, v14, v15))
      {
        os_unfair_lock_lock(&unk_1ECE5D900);
        v18 = objc_msgSend_identifier(v4, v16, v17);
        v21 = objc_msgSend_identifier(selfCopy, v19, v20, v18);
        v47[1] = v21;
        v23 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v22, v47, 2);
        isEdgeKnownToCauseCycle = objc_msgSend_isEdgeKnownToCauseCycle_(CLAutoCohortUtilities, v24, v23);

        if ((isEdgeKnownToCauseCycle & 1) == 0)
        {
          v26 = sub_1DF81A9CC();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
          {
            v29 = objc_msgSend_identifier(v4, v27, v28);
            v32 = objc_msgSend_identifier(selfCopy, v30, v31);
            *buf = 68289538;
            v49 = 0;
            v50 = 2082;
            v51 = &unk_1DF8255EF;
            v52 = 2114;
            v53 = v29;
            v54 = 2114;
            v55 = v32;
            _os_log_impl(&dword_1DF7FE000, v26, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#Cohorting Persist sync-get edge, fromSiloIdentifier:%{public, location:escape_only}@, toSiloIdentifier:%{public, location:escape_only}@}", buf, 0x26u);
          }

          v33 = sub_1DF81A9CC();
          if (os_signpost_enabled(v33))
          {
            v36 = objc_msgSend_identifier(v4, v34, v35);
            v39 = objc_msgSend_identifier(selfCopy, v37, v38);
            *buf = 68289538;
            v49 = 0;
            v50 = 2082;
            v51 = &unk_1DF8255EF;
            v52 = 2114;
            v53 = v36;
            v54 = 2114;
            v55 = v39;
            _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v33, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#Cohorting Persist sync-get edge", "{msg%{public}.0s:#Cohorting Persist sync-get edge, fromSiloIdentifier:%{public, location:escape_only}@, toSiloIdentifier:%{public, location:escape_only}@}", buf, 0x26u);
          }

          v42 = objc_msgSend_identifier(v4, v40, v41);
          v45 = objc_msgSend_identifier(selfCopy, v43, v44);
          objc_msgSend_persistEdgeFrom_to_(CLAutoCohortUtilities, v46, v42, v45);

          _Exit(0);
        }

        os_unfair_lock_unlock(&unk_1ECE5D900);
      }
    }
  }
}

- (id)newTimer
{
  v3 = [CLDispatchTimerScheduler alloc];
  v5 = objc_msgSend_initWithDispatchSilo_(v3, v4, self);
  if (self->_useCLPermissiveTimer)
  {
    v6 = off_1E86C7FE0;
  }

  else
  {
    v6 = &off_1E86C8008;
  }

  v7 = objc_alloc(*v6);
  v9 = objc_msgSend_initInSilo_withScheduler_(v7, v8, self, v5);

  return v9;
}

- (id)initMain
{
  v5.receiver = self;
  v5.super_class = CLDispatchSilo;
  v2 = [(CLSilo *)&v5 initWithIdentifier:@"MainSilo"];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_queue, MEMORY[0x1E69E96A0]);
  }

  return v3;
}

- (CLDispatchSilo)initWithIdentifier:(id)identifier
{
  v47 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = sub_1DF8090DC;
  v37 = sub_1DF80910C;
  v38 = dispatch_get_global_queue(0, 0);
  v7 = objc_msgSend_globalConfiguration(CLSilo, v5, v6);
  v9 = objc_msgSend_objectForKeyedSubscript_(v7, v8, @"NameToCohortMap");

  v11 = objc_msgSend_objectForKeyedSubscript_(v9, v10, identifierCopy);
  if (v11 || (objc_msgSend_containsObject_(&unk_1F5AC9BA8, v12, identifierCopy) & 1) == 0 && (objc_msgSend_objectForKeyedSubscript_(v9, v16, @"default"), (v11 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v29 = sub_1DF81A900;
    v30 = &unk_1E86C84F8;
    v13 = v11;
    v31 = v13;
    v32 = &v33;
    v14 = qword_1ED5FADF8;
    v15 = v28;
    if (v14 != -1)
    {
      dispatch_once(&qword_1ED5FADF8, &unk_1F5AC69C0);
    }

    os_unfair_lock_lock(&unk_1ED5FADD8);
    v29(v15, qword_1ED5FADF0);

    os_unfair_lock_unlock(&unk_1ED5FADD8);
  }

  else
  {
    v13 = 0;
  }

  v27.receiver = self;
  v27.super_class = CLDispatchSilo;
  v17 = [(CLSilo *)&v27 initWithIdentifier:identifierCopy];
  if (v17)
  {
    v18 = identifierCopy;
    v21 = objc_msgSend_UTF8String(identifierCopy, v19, v20);
    v22 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v23 = dispatch_queue_create_with_target_V2(v21, v22, v34[5]);
    v24 = *(v17 + 7);
    *(v17 + 7) = v23;

    objc_storeStrong(v17 + 10, v13);
    dispatch_queue_set_specific(*(v17 + 7), "dispatchSilo", v17, 0);
  }

  if (qword_1ED5FAD40 != -1)
  {
    dispatch_once(&qword_1ED5FAD40, &unk_1F5AC69E0);
  }

  v25 = qword_1ED5FAD48;
  if (os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289538;
    v40 = 0;
    v41 = 2082;
    v42 = &unk_1DF8255EF;
    v43 = 2114;
    v44 = identifierCopy;
    v45 = 2114;
    v46 = v13;
    _os_log_impl(&dword_1DF7FE000, v25, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Cohorting CohortId assignment for silo, Silo:%{public, location:escape_only}@, CohortId:%{public, location:escape_only}@}", buf, 0x26u);
  }

  _Block_object_dispose(&v33, 8);
  return v17;
}

- (CLDispatchSilo)initWithUnderlyingQueue:(id)queue
{
  queueCopy = queue;
  v6 = MEMORY[0x1E696AEC0];
  label = dispatch_queue_get_label(queueCopy);
  v9 = objc_msgSend_stringWithUTF8String_(v6, v8, label);
  v13.receiver = self;
  v13.super_class = CLDispatchSilo;
  v10 = [(CLSilo *)&v13 initWithIdentifier:v9];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_queue, queue);
  }

  return v11;
}

- (CLDispatchSilo)initWithUnderlyingQueue:(id)queue bePermissive:(BOOL)permissive
{
  result = objc_msgSend_initWithUnderlyingQueue_(self, a2, queue);
  if (result)
  {
    result->_useCLPermissiveTimer = permissive;
  }

  return result;
}

- (id)getTimeCoercibleVariantInstance
{
  v3 = [CLTimeCoercibleDispatchSilo alloc];
  v5 = objc_msgSend_initWithUnderlyingQueue_(v3, v4, self->_queue);

  return v5;
}

- (void)suspend
{
  v14 = *MEMORY[0x1E69E9840];
  if (self->_isQueueSuspended)
  {
    v3 = sub_1DF81A9CC();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v7 = 0;
      v8 = 2082;
      v9 = &unk_1DF8255EF;
      v10 = 2082;
      v11 = "assert";
      v12 = 2081;
      v13 = "!_isQueueSuspended";
      _os_log_impl(&dword_1DF7FE000, v3, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Intersilo currently does not support reference counting, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v4 = sub_1DF81A9CC();
    if (os_signpost_enabled(v4))
    {
      *buf = 68289539;
      v7 = 0;
      v8 = 2082;
      v9 = &unk_1DF8255EF;
      v10 = 2082;
      v11 = "assert";
      v12 = 2081;
      v13 = "!_isQueueSuspended";
      _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Intersilo currently does not support reference counting", "{msg%{public}.0s:Intersilo currently does not support reference counting, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v5 = sub_1DF81A9CC();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v7 = 0;
      v8 = 2082;
      v9 = &unk_1DF8255EF;
      v10 = 2082;
      v11 = "assert";
      v12 = 2081;
      v13 = "!_isQueueSuspended";
      _os_log_impl(&dword_1DF7FE000, v5, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Intersilo currently does not support reference counting, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Shared/Intersilo/CLDispatchSilo.m", 277, "[CLDispatchSilo suspend]");
  }

  self->_isQueueSuspended = 1;
  queue = self->_queue;

  dispatch_suspend(queue);
}

- (void)resume
{
  v14 = *MEMORY[0x1E69E9840];
  if (!self->_isQueueSuspended)
  {
    v3 = sub_1DF81A9CC();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v7 = 0;
      v8 = 2082;
      v9 = &unk_1DF8255EF;
      v10 = 2082;
      v11 = "assert";
      v12 = 2081;
      v13 = "_isQueueSuspended";
      _os_log_impl(&dword_1DF7FE000, v3, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Intersilo currently does not support reference counting, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v4 = sub_1DF81A9CC();
    if (os_signpost_enabled(v4))
    {
      *buf = 68289539;
      v7 = 0;
      v8 = 2082;
      v9 = &unk_1DF8255EF;
      v10 = 2082;
      v11 = "assert";
      v12 = 2081;
      v13 = "_isQueueSuspended";
      _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Intersilo currently does not support reference counting", "{msg%{public}.0s:Intersilo currently does not support reference counting, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v5 = sub_1DF81A9CC();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v7 = 0;
      v8 = 2082;
      v9 = &unk_1DF8255EF;
      v10 = 2082;
      v11 = "assert";
      v12 = 2081;
      v13 = "_isQueueSuspended";
      _os_log_impl(&dword_1DF7FE000, v5, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Intersilo currently does not support reference counting, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Shared/Intersilo/CLDispatchSilo.m", 284, "[CLDispatchSilo resume]");
  }

  dispatch_resume(self->_queue);
  self->_isQueueSuspended = 0;
}

- (void)_setLatchedAbsoluteTimestamp:(double)timestamp
{
  if (self->super._currentLatchedAbsoluteTimestamp <= timestamp)
  {
    self->super._currentLatchedAbsoluteTimestamp = timestamp;
  }

  else
  {
    v7 = v3;
    v8 = v4;
    if (qword_1ED5FAD40 != -1)
    {
      dispatch_once(&qword_1ED5FAD40, &unk_1F5AC69E0);
    }

    v5 = qword_1ED5FAD48;
    if (os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_1DF7FE000, v5, OS_LOG_TYPE_DEFAULT, "#Warning Time should not be moved backwards; systems based on monotonic time (like CLTimer) will misbehave.", v6, 2u);
    }
  }
}

- (void)async:(id)async
{
  asyncCopy = async;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1DF81B0D8;
  v7[3] = &unk_1E86C8370;
  v7[4] = self;
  v8 = asyncCopy;
  v6 = asyncCopy;
  dispatch_async(queue, v7);
}

- (void)sync:(id)sync
{
  syncCopy = sync;
  objc_msgSend_intendToSync(self, v5, v6);
  queue = self->_queue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1DF81B198;
  v9[3] = &unk_1E86C8370;
  v9[4] = self;
  v10 = syncCopy;
  v8 = syncCopy;
  dispatch_sync(queue, v9);
}

- (void)afterInterval:(double)interval async:(id)async
{
  asyncCopy = async;
  v7 = dispatch_time(0, (interval * 1000000000.0));
  queue = self->_queue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1DF81B27C;
  v10[3] = &unk_1E86C8370;
  v10[4] = self;
  v11 = asyncCopy;
  v9 = asyncCopy;
  dispatch_after(v7, queue, v10);
}

- (void)heartBeat:(id)beat
{
  beatCopy = beat;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1DF81B328;
  v7[3] = &unk_1E86C83C0;
  v8 = beatCopy;
  selfCopy = self;
  v6 = beatCopy;
  dispatch_async(queue, v7);
}

- (id)operationQueue
{
  objc_msgSend_assertInside(self, a2, v2);
  operationQueue = self->_operationQueue;
  if (!operationQueue)
  {
    v5 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    v6 = self->_operationQueue;
    self->_operationQueue = v5;

    v7 = MEMORY[0x1E696AEC0];
    v10 = objc_msgSend_identifier(self, v8, v9);
    v12 = objc_msgSend_stringWithFormat_(v7, v11, @"%@.NSOperationQueue", v10);
    objc_msgSend_setName_(self->_operationQueue, v13, v12);

    objc_msgSend_setUnderlyingQueue_(self->_operationQueue, v14, self->_queue);
    operationQueue = self->_operationQueue;
  }

  return operationQueue;
}

- (id)debugDescription
{
  v2 = MEMORY[0x1E696AEC0];
  label = dispatch_queue_get_label(self->_queue);
  return objc_msgSend_stringWithFormat_(v2, v4, @"CLDispatchSilo: %s", label);
}

@end