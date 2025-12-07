@interface BSServiceReplyFallbackQueue
+ (BSServiceReplyFallbackQueue)_queueWithReplyQueue:(void *)queue serviceQueue:;
- (BOOL)isEqual:(id)equal;
- (id)description;
- (void)_performAsync:(id)async withHandoff:(id)handoff;
- (void)_xpcReplyQueue_performReply:(id)reply;
- (void)performAfter:(double)after withBlock:(id)block;
- (void)performAsync:(id)async;
@end

@implementation BSServiceReplyFallbackQueue

+ (BSServiceReplyFallbackQueue)_queueWithReplyQueue:(void *)queue serviceQueue:
{
  v68 = *MEMORY[0x1E69E9840];
  v5 = a2;
  queueCopy = queue;
  v7 = objc_opt_self();
  v8 = v5;
  if (!v8)
  {
    v18 = MEMORY[0x1E696AEC0];
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    v21 = [v18 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"replyQueue", v20];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v22 = NSStringFromSelector(sel__queueWithReplyQueue_serviceQueue_);
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      *v59 = 138544642;
      *&v59[4] = v22;
      *&v59[12] = 2114;
      *&v59[14] = v24;
      v60 = 2048;
      v61 = v7;
      v62 = 2114;
      v63 = @"BSServiceQueue.m";
      v64 = 1024;
      v65 = 501;
      v66 = 2114;
      v67 = v21;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v59, 0x3Au);
    }

    v25 = v21;
    [v21 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A856A5CLL);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v26 = MEMORY[0x1E696AEC0];
    classForCoder = [v8 classForCoder];
    if (!classForCoder)
    {
      classForCoder = objc_opt_class();
    }

    v28 = NSStringFromClass(classForCoder);
    v29 = objc_opt_class();
    v30 = NSStringFromClass(v29);
    v31 = [v26 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"replyQueue", v28, v30];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v32 = NSStringFromSelector(sel__queueWithReplyQueue_serviceQueue_);
      v33 = objc_opt_class();
      v34 = NSStringFromClass(v33);
      *v59 = 138544642;
      *&v59[4] = v32;
      *&v59[12] = 2114;
      *&v59[14] = v34;
      v60 = 2048;
      v61 = v7;
      v62 = 2114;
      v63 = @"BSServiceQueue.m";
      v64 = 1024;
      v65 = 501;
      v66 = 2114;
      v67 = v31;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v59, 0x3Au);
    }

    v35 = v31;
    [v31 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A856BA4);
  }

  v9 = queueCopy;
  if (!v9)
  {
    v36 = MEMORY[0x1E696AEC0];
    v37 = objc_opt_class();
    v38 = NSStringFromClass(v37);
    v39 = [v36 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"serviceQueue", v38];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v40 = NSStringFromSelector(sel__queueWithReplyQueue_serviceQueue_);
      v41 = objc_opt_class();
      v42 = NSStringFromClass(v41);
      *v59 = 138544642;
      *&v59[4] = v40;
      *&v59[12] = 2114;
      *&v59[14] = v42;
      v60 = 2048;
      v61 = v7;
      v62 = 2114;
      v63 = @"BSServiceQueue.m";
      v64 = 1024;
      v65 = 502;
      v66 = 2114;
      v67 = v39;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v59, 0x3Au);
    }

    v43 = v39;
    [v39 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A856CC4);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v44 = MEMORY[0x1E696AEC0];
    classForCoder2 = [v9 classForCoder];
    if (!classForCoder2)
    {
      classForCoder2 = objc_opt_class();
    }

    v46 = NSStringFromClass(classForCoder2);
    v47 = objc_opt_class();
    v48 = NSStringFromClass(v47);
    v49 = [v44 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"serviceQueue", v46, v48];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v50 = NSStringFromSelector(sel__queueWithReplyQueue_serviceQueue_);
      v51 = objc_opt_class();
      v52 = NSStringFromClass(v51);
      *v59 = 138544642;
      *&v59[4] = v50;
      *&v59[12] = 2114;
      *&v59[14] = v52;
      v60 = 2048;
      v61 = v7;
      v62 = 2114;
      v63 = @"BSServiceQueue.m";
      v64 = 1024;
      v65 = 502;
      v66 = 2114;
      v67 = v49;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v59, 0x3Au);
    }

    v53 = v49;
    [v49 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A856E0CLL);
  }

  _xpcReplyQueue = [v9 _xpcReplyQueue];

  if (_xpcReplyQueue)
  {
    v54 = [MEMORY[0x1E696AEC0] stringWithFormat:@"serviceQueue already specifies a replyQueue"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v55 = NSStringFromSelector(sel__queueWithReplyQueue_serviceQueue_);
      v56 = objc_opt_class();
      v57 = NSStringFromClass(v56);
      *v59 = 138544642;
      *&v59[4] = v55;
      *&v59[12] = 2114;
      *&v59[14] = v57;
      v60 = 2048;
      v61 = v7;
      v62 = 2114;
      v63 = @"BSServiceQueue.m";
      v64 = 1024;
      v65 = 503;
      v66 = 2114;
      v67 = v54;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v59, 0x3Au);
    }

    v58 = v54;
    [v54 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A856F04);
  }

  v11 = [BSServiceReplyFallbackQueue alloc];
  v12 = v8;
  v13 = v9;
  v14 = v13;
  if (v11)
  {
    v15 = v13[1];
    *v59 = v11;
    *&v59[8] = BSServiceQueue;
    v16 = objc_msgSendSuper2(v59, sel_init);
    v11 = v16;
    if (v16)
    {
      v16->super._userInteractive = v15;
      objc_storeStrong(&v16->_replyQueue, a2);
      objc_storeStrong(&v11->_serviceQueue, queue);
    }
  }

  return v11;
}

- (void)_performAsync:(id)async withHandoff:(id)handoff
{
  asyncCopy = async;
  handoffCopy = handoff;
  if (asyncCopy)
  {
    [(BSServiceQueue *)self->_serviceQueue _performAsync:asyncCopy withHandoff:handoffCopy];
  }
}

- (void)_xpcReplyQueue_performReply:(id)reply
{
  replyCopy = reply;
  [(BSServiceDispatchQueue *)self->_replyQueue assertBarrierOnQueue];
  if (replyCopy)
  {
    [(BSServiceQueue *)self->_serviceQueue performAsync:replyCopy];
  }
}

- (void)performAsync:(id)async
{
  asyncCopy = async;
  if (asyncCopy)
  {
    [(BSServiceQueue *)self->_serviceQueue performAsync:asyncCopy];
  }
}

- (void)performAfter:(double)after withBlock:(id)block
{
  blockCopy = block;
  if (blockCopy)
  {
    [(BSServiceQueue *)self->_serviceQueue performAfter:blockCopy withBlock:after];
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class() && [(BSServiceDispatchQueue *)self->_replyQueue isEqual:equalCopy->_replyQueue])
    {
      v6 = [(BSServiceQueue *)self->_serviceQueue isEqual:equalCopy->_serviceQueue];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendObject:self->_replyQueue withName:@"replyQueue"];
  v5 = [v3 appendObject:self->_serviceQueue withName:@"serviceQueue"];
  build = [v3 build];

  return build;
}

@end