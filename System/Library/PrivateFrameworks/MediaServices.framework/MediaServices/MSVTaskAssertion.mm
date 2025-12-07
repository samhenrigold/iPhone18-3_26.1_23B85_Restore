@interface MSVTaskAssertion
- (BOOL)isValid;
- (MSVTaskAssertion)init;
- (id)_initWithName:(id)name bundleID:(id)d pid:(int)pid subsystem:(id)subsystem reason:(unint64_t)reason flags:(unint64_t)flags;
- (id)description;
- (unsigned)_BSKReasonForMSVReason:(unint64_t)reason;
- (void)_cancelInvalidationTimerWithCompletion:(id)completion;
- (void)dealloc;
- (void)invalidate;
- (void)invalidateOnDate:(id)date;
@end

@implementation MSVTaskAssertion

- (unsigned)_BSKReasonForMSVReason:(unint64_t)reason
{
  if (reason < 3)
  {
    return dword_1AC881CD8[reason];
  }

  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MSVTaskAssertion.m" lineNumber:236 description:@"Attempting to convert a non-existing MSVProcessAssertionReason value!"];

  return result;
}

- (void)_cancelInvalidationTimerWithCompletion:(id)completion
{
  v4 = [completion copy];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59__MSVTaskAssertion__cancelInvalidationTimerWithCompletion___block_invoke;
  v6[3] = &unk_1E7982B00;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

uint64_t __59__MSVTaskAssertion__cancelInvalidationTimerWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 40);
  if (v2)
  {
    dispatch_source_cancel(v2);
    v3 = *(a1 + 32);
    v4 = *(v3 + 40);
    *(v3 + 40) = 0;
  }

  result = *(a1 + 40);
  if (result)
  {
    v6 = *(result + 16);

    return v6();
  }

  return result;
}

- (BOOL)isValid
{
  processAssertion = self->_processAssertion;
  if (processAssertion)
  {
    LOBYTE(processAssertion) = [(BKSProcessAssertion *)processAssertion valid];
  }

  return processAssertion;
}

- (void)invalidateOnDate:(id)date
{
  dateCopy = date;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __37__MSVTaskAssertion_invalidateOnDate___block_invoke;
  v6[3] = &unk_1E7982B28;
  v6[4] = self;
  v7 = dateCopy;
  v5 = dateCopy;
  [(MSVTaskAssertion *)self _cancelInvalidationTimerWithCompletion:v6];
}

void __37__MSVTaskAssertion_invalidateOnDate___block_invoke(uint64_t a1)
{
  v2 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, MEMORY[0x1E69E96A0]);
  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  objc_initWeak(&location, *(a1 + 32));
  [*(a1 + 40) timeIntervalSinceNow];
  v6 = dispatch_time(0, 1000000000 * v5);
  dispatch_source_set_timer(*(*(a1 + 32) + 40), v6, 0xFFFFFFFFFFFFFFFFLL, 0);
  v7 = *(*(a1 + 32) + 40);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __37__MSVTaskAssertion_invalidateOnDate___block_invoke_2;
  v8[3] = &unk_1E7982AB0;
  objc_copyWeak(&v9, &location);
  dispatch_source_set_event_handler(v7, v8);
  dispatch_resume(*(*(a1 + 32) + 40));
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __37__MSVTaskAssertion_invalidateOnDate___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained invalidate];
}

- (void)invalidate
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = os_log_create("com.apple.amp.MediaServices", "SystemUtilities");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v6 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1AC81F000, v3, OS_LOG_TYPE_DEBUG, "Invalidating task assertion: %{public}@", &v6, 0xCu);
  }

  [(BKSProcessAssertion *)self->_processAssertion invalidate];
  [(MSVTaskAssertion *)self _cancelInvalidationTimerWithCompletion:0];
  invalidationHandler = self->_invalidationHandler;
  if (invalidationHandler)
  {
    invalidationHandler[2](invalidationHandler, self);
    v5 = self->_invalidationHandler;
    self->_invalidationHandler = 0;
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  pid = self->_pid;
  bundleID = self->_bundleID;
  subsystem = self->_subsystem;
  name = self->_name;
  uuid = self->_uuid;
  isValid = [(MSVTaskAssertion *)self isValid];
  v11 = @"NO";
  if (isValid)
  {
    v11 = @"YES";
  }

  return [v3 stringWithFormat:@"%@ %p, bundleID = %@, pid = %lu, subsystem = %@, name = %@, uuid = %@, valid = %@>", v4, self, bundleID, pid, subsystem, name, uuid, v11];
}

- (void)dealloc
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = os_log_create("com.apple.amp.MediaServices", "SystemUtilities");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1AC81F000, v3, OS_LOG_TYPE_INFO, "Invalidating task assertion: %{public}@ (dealloc)", buf, 0xCu);
  }

  [(BKSProcessAssertion *)self->_processAssertion invalidate];
  invalidationTimer = self->_invalidationTimer;
  if (invalidationTimer)
  {
    dispatch_source_cancel(invalidationTimer);
  }

  v5.receiver = self;
  v5.super_class = MSVTaskAssertion;
  [(MSVTaskAssertion *)&v5 dealloc];
}

- (MSVTaskAssertion)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D920];
  v5 = NSStringFromSelector(a2);
  v6 = NSStringFromSelector(sel_initWithName_bundleID_subsystem_reason_flags_);
  v7 = NSStringFromSelector(sel_initWithName_pid_subsystem_reason_flags_);
  [v3 raise:v4 format:{@"%@ is invalid. You must provide bundleID with %@ or a PID with %@.", v5, v6, v7}];

  return 0;
}

- (id)_initWithName:(id)name bundleID:(id)d pid:(int)pid subsystem:(id)subsystem reason:(unint64_t)reason flags:(unint64_t)flags
{
  v11 = *&pid;
  v48 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  dCopy = d;
  subsystemCopy = subsystem;
  v45.receiver = self;
  v45.super_class = MSVTaskAssertion;
  v17 = [(MSVTaskAssertion *)&v45 init];
  if (!v17)
  {
    goto LABEL_15;
  }

  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  uuid = v17->_uuid;
  v17->_uuid = uUIDString;

  v21 = [subsystemCopy copy];
  subsystem = v17->_subsystem;
  v17->_subsystem = v21;

  v23 = [dCopy copy];
  bundleID = v17->_bundleID;
  v17->_bundleID = v23;

  v17->_pid = v11;
  v25 = [nameCopy copy];
  name = v17->_name;
  v17->_name = v25;

  v27 = [(MSVTaskAssertion *)v17 _BSKFlagsForMSVFlags:flags];
  v28 = [(MSVTaskAssertion *)v17 _BSKReasonForMSVReason:reason];
  nameCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@ %@", subsystemCopy, v17->_uuid, nameCopy];
  if (v11)
  {
    v30 = [objc_alloc(MEMORY[0x1E698D038]) initWithPID:v11 flags:v27 reason:v28 name:nameCopy];
    processAssertion = v17->_processAssertion;
    v17->_processAssertion = v30;

    if (!v17->_bundleID)
    {
      v32 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"FallbackIdentifier-%d", v11];
      v33 = v17->_bundleID;
      v17->_bundleID = v32;
LABEL_7:
    }
  }

  else if (dCopy)
  {
    v34 = [objc_alloc(MEMORY[0x1E698D038]) initWithBundleIdentifier:dCopy flags:v27 reason:v28 name:nameCopy];
    v33 = v17->_processAssertion;
    v17->_processAssertion = v34;
    goto LABEL_7;
  }

  v35 = [MEMORY[0x1E695DF00] now];
  [v35 timeIntervalSinceReferenceDate];
  v17->_startTime = v36;

  objc_initWeak(&location, v17);
  v37 = v17->_processAssertion;
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __70__MSVTaskAssertion__initWithName_bundleID_pid_subsystem_reason_flags___block_invoke;
  v42[3] = &unk_1E7982AB0;
  objc_copyWeak(&v43, &location);
  [(BKSProcessAssertion *)v37 setInvalidationHandler:v42];
  acquire = [(BKSProcessAssertion *)v17->_processAssertion acquire];
  v17->_acquired = acquire;
  if ((acquire & 1) == 0)
  {
    v39 = os_log_create("com.apple.amp.MediaServices", "SystemUtilities");
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v47 = v17;
      _os_log_impl(&dword_1AC81F000, v39, OS_LOG_TYPE_ERROR, "Failed to acquire process assertion for task %@", buf, 0xCu);
    }
  }

  v40 = os_log_create("com.apple.amp.MediaServices", "SystemUtilities");
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v47 = v17;
    _os_log_impl(&dword_1AC81F000, v40, OS_LOG_TYPE_DEFAULT, "Began task assertion: %@", buf, 0xCu);
  }

  objc_destroyWeak(&v43);
  objc_destroyWeak(&location);

LABEL_15:
  return v17;
}

void __70__MSVTaskAssertion__initWithName_bundleID_pid_subsystem_reason_flags___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = [MEMORY[0x1E695DF00] now];
    [v2 timeIntervalSinceReferenceDate];
    v4 = v3;

    v5 = os_log_create("com.apple.amp.MediaServices", "SystemUtilities");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v4 - WeakRetained[7];
      v7 = 138412546;
      v8 = WeakRetained;
      v9 = 2048;
      v10 = v6;
      _os_log_impl(&dword_1AC81F000, v5, OS_LOG_TYPE_DEFAULT, "Task assertion %@ was invalidated. duration=%f", &v7, 0x16u);
    }
  }
}

@end