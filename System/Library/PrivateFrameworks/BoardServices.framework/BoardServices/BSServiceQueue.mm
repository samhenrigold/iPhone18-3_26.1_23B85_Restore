@interface BSServiceQueue
+ (BSServiceQueue)queueWithDispatchQueue:(id)queue;
+ (BSServiceQueue)queueWithMainRunLoopModes:(id)modes;
+ (id)mainDispatchQueue;
- (BSServiceQueue)init;
- (void)_performAsync:(id)async withHandoff:(id)handoff;
- (void)_xpcReplyQueue_performReply:(id)reply;
- (void)assertBarrierOnQueue;
- (void)performAfter:(double)after withBlock:(id)block;
- (void)performAsync:(id)async;
@end

@implementation BSServiceQueue

- (BSServiceQueue)init
{
  v3 = +[BSServiceDispatchQueue mainQueue];

  return v3;
}

- (void)_performAsync:(id)async withHandoff:(id)handoff
{
  v22 = *MEMORY[0x1E69E9840];
  asyncCopy = async;
  handoffCopy = handoff;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v9 = NSStringFromSelector(a2);
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = 138413314;
    v13 = v9;
    v14 = 2112;
    v15 = v11;
    v16 = 2048;
    selfCopy = self;
    v18 = 2112;
    v19 = @"BSServiceQueue.m";
    v20 = 1024;
    v21 = 590;
    _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %@ of <%@:%p> (%@:%i)", &v12, 0x30u);
  }

  __break(0);
}

- (void)_xpcReplyQueue_performReply:(id)reply
{
  v19 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v6 = NSStringFromSelector(a2);
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = 138413314;
    v10 = v6;
    v11 = 2112;
    v12 = v8;
    v13 = 2048;
    selfCopy = self;
    v15 = 2112;
    v16 = @"BSServiceQueue.m";
    v17 = 1024;
    v18 = 598;
    _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %@ of <%@:%p> (%@:%i)", &v9, 0x30u);
  }

  __break(0);
}

+ (id)mainDispatchQueue
{
  v25 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() != self)
  {
    v4 = NSClassFromString(&cfstr_Fbsserialqueue.isa);
    if (!v4 || v4 != self)
    {
      v6 = MEMORY[0x1E696AEC0];
      v7 = NSStringFromSelector(a2);
      v8 = [v6 stringWithFormat:@"%@ is not available on subclass %@", v7, self];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v9 = NSStringFromSelector(a2);
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        *buf = 138544642;
        v14 = v9;
        v15 = 2114;
        v16 = v11;
        v17 = 2048;
        selfCopy = self;
        v19 = 2114;
        v20 = @"BSServiceQueue.m";
        v21 = 1024;
        v22 = 612;
        v23 = 2114;
        v24 = v8;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v12 = v8;
      [v8 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A857850);
    }
  }

  return +[BSServiceDispatchQueue mainQueue];
}

+ (BSServiceQueue)queueWithDispatchQueue:(id)queue
{
  v36 = *MEMORY[0x1E69E9840];
  queueCopy = queue;
  if (!queueCopy)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"targetQueue"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v18 = NSStringFromSelector(a2);
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      *buf = 138544642;
      v25 = v18;
      v26 = 2114;
      v27 = v20;
      v28 = 2048;
      selfCopy2 = self;
      v30 = 2114;
      v31 = @"BSServiceQueue.m";
      v32 = 1024;
      v33 = 620;
      v34 = 2114;
      v35 = v17;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v21 = v17;
    [v17 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A857BE8);
  }

  if (objc_opt_class() != self)
  {
    v6 = NSClassFromString(&cfstr_Fbsserialqueue.isa);
    if (!v6 || v6 != self)
    {
      v10 = MEMORY[0x1E696AEC0];
      v11 = NSStringFromSelector(a2);
      v12 = [v10 stringWithFormat:@"%@ is not available on subclass %@", v11, self];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v13 = NSStringFromSelector(a2);
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        *buf = 138544642;
        v25 = v13;
        v26 = 2114;
        v27 = v15;
        v28 = 2048;
        selfCopy2 = self;
        v30 = 2114;
        v31 = @"BSServiceQueue.m";
        v32 = 1024;
        v33 = 624;
        v34 = 2114;
        v35 = v12;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v16 = v12;
      [v12 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A857AE4);
    }
  }

  v7 = [BSServiceDispatchQueue _queueOfDispatchQueue:queueCopy];
  if (!v7)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __41__BSServiceQueue_queueWithDispatchQueue___block_invoke;
    block[3] = &unk_1E75205D0;
    v8 = queueCopy;
    v23 = v8;
    dispatch_async(v8, block);
    v7 = [BSServiceDispatchQueue _queueWithDispatchQueue:v8];
  }

  return v7;
}

+ (BSServiceQueue)queueWithMainRunLoopModes:(id)modes
{
  v28 = *MEMORY[0x1E69E9840];
  modesCopy = modes;
  if (objc_opt_class() != self)
  {
    v6 = NSClassFromString(&cfstr_Fbsserialqueue.isa);
    if (!v6 || v6 != self)
    {
      v9 = MEMORY[0x1E696AEC0];
      v10 = NSStringFromSelector(a2);
      v11 = [v9 stringWithFormat:@"%@ is not available on subclass %@", v10, self];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v12 = NSStringFromSelector(a2);
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        *buf = 138544642;
        v17 = v12;
        v18 = 2114;
        v19 = v14;
        v20 = 2048;
        selfCopy = self;
        v22 = 2114;
        v23 = @"BSServiceQueue.m";
        v24 = 1024;
        v25 = 642;
        v26 = 2114;
        v27 = v11;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v15 = v11;
      [v11 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A857E54);
    }
  }

  v7 = [BSServiceMainRunLoopQueue queueWithModes:modesCopy];

  return v7;
}

- (void)assertBarrierOnQueue
{
  v17 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a2);
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = 138413314;
    v8 = v4;
    v9 = 2112;
    v10 = v6;
    v11 = 2048;
    selfCopy = self;
    v13 = 2112;
    v14 = @"BSServiceQueue.m";
    v15 = 1024;
    v16 = 654;
    _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %@ of <%@:%p> (%@:%i)", &v7, 0x30u);
  }

  __break(0);
}

- (void)performAsync:(id)async
{
  v19 = *MEMORY[0x1E69E9840];
  asyncCopy = async;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v6 = NSStringFromSelector(a2);
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = 138413314;
    v10 = v6;
    v11 = 2112;
    v12 = v8;
    v13 = 2048;
    selfCopy = self;
    v15 = 2112;
    v16 = @"BSServiceQueue.m";
    v17 = 1024;
    v18 = 658;
    _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %@ of <%@:%p> (%@:%i)", &v9, 0x30u);
  }

  __break(0);
}

- (void)performAfter:(double)after withBlock:(id)block
{
  v20 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v7 = NSStringFromSelector(a2);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = 138413314;
    v11 = v7;
    v12 = 2112;
    v13 = v9;
    v14 = 2048;
    selfCopy = self;
    v16 = 2112;
    v17 = @"BSServiceQueue.m";
    v18 = 1024;
    v19 = 662;
    _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %@ of <%@:%p> (%@:%i)", &v10, 0x30u);
  }

  __break(0);
}

@end