@interface BSServiceCompoundQueue
+ (id)queueWithDispatchQueue:(id)queue targetQueue:(id)targetQueue;
- (BOOL)isEqual:(id)equal;
- (id)description;
- (void)_performAsync:(id)async withHandoff:(id)handoff;
- (void)_xpcReplyQueue_performReply:(id)reply;
- (void)performAfter:(double)after withBlock:(id)block;
- (void)performAsync:(id)async;
@end

@implementation BSServiceCompoundQueue

+ (id)queueWithDispatchQueue:(id)queue targetQueue:(id)targetQueue
{
  v67 = *MEMORY[0x1E69E9840];
  queueCopy = queue;
  targetQueueCopy = targetQueue;
  v10 = queueCopy;
  if (!v10)
  {
    v22 = MEMORY[0x1E696AEC0];
    v23 = objc_opt_class();
    v24 = NSStringFromClass(v23);
    v25 = [v22 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"dispatchQueue", v24];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v26 = NSStringFromSelector(a2);
      v27 = objc_opt_class();
      v28 = NSStringFromClass(v27);
      *v58 = 138544642;
      *&v58[4] = v26;
      *&v58[12] = 2114;
      *&v58[14] = v28;
      v59 = 2048;
      selfCopy4 = self;
      v61 = 2114;
      v62 = @"BSServiceQueue.m";
      v63 = 1024;
      v64 = 399;
      v65 = 2114;
      v66 = v25;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v58, 0x3Au);
    }

    v29 = v25;
    [v25 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A855CE4);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v30 = MEMORY[0x1E696AEC0];
    classForCoder = [v10 classForCoder];
    if (!classForCoder)
    {
      classForCoder = objc_opt_class();
    }

    v32 = NSStringFromClass(classForCoder);
    v33 = objc_opt_class();
    v34 = NSStringFromClass(v33);
    v35 = [v30 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"dispatchQueue", v32, v34];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v36 = NSStringFromSelector(a2);
      v37 = objc_opt_class();
      v38 = NSStringFromClass(v37);
      *v58 = 138544642;
      *&v58[4] = v36;
      *&v58[12] = 2114;
      *&v58[14] = v38;
      v59 = 2048;
      selfCopy4 = self;
      v61 = 2114;
      v62 = @"BSServiceQueue.m";
      v63 = 1024;
      v64 = 399;
      v65 = 2114;
      v66 = v35;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v58, 0x3Au);
    }

    v39 = v35;
    [v35 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A855E2CLL);
  }

  v11 = targetQueueCopy;
  if (!v11)
  {
    v40 = MEMORY[0x1E696AEC0];
    v41 = objc_opt_class();
    v42 = NSStringFromClass(v41);
    v43 = [v40 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"targetQueue", v42];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v44 = NSStringFromSelector(a2);
      v45 = objc_opt_class();
      v46 = NSStringFromClass(v45);
      *v58 = 138544642;
      *&v58[4] = v44;
      *&v58[12] = 2114;
      *&v58[14] = v46;
      v59 = 2048;
      selfCopy4 = self;
      v61 = 2114;
      v62 = @"BSServiceQueue.m";
      v63 = 1024;
      v64 = 400;
      v65 = 2114;
      v66 = v43;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v58, 0x3Au);
    }

    v47 = v43;
    [v43 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A855F50);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v48 = MEMORY[0x1E696AEC0];
    classForCoder2 = [v11 classForCoder];
    if (!classForCoder2)
    {
      classForCoder2 = objc_opt_class();
    }

    v50 = NSStringFromClass(classForCoder2);
    v51 = objc_opt_class();
    v52 = NSStringFromClass(v51);
    v53 = [v48 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"targetQueue", v50, v52];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v54 = NSStringFromSelector(a2);
      v55 = objc_opt_class();
      v56 = NSStringFromClass(v55);
      *v58 = 138544642;
      *&v58[4] = v54;
      *&v58[12] = 2114;
      *&v58[14] = v56;
      v59 = 2048;
      selfCopy4 = self;
      v61 = 2114;
      v62 = @"BSServiceQueue.m";
      v63 = 1024;
      v64 = 400;
      v65 = 2114;
      v66 = v53;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v58, 0x3Au);
    }

    v57 = v53;
    [v53 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A856098);
  }

  v12 = [BSServiceCompoundQueue alloc];
  v13 = v10;
  v14 = v11;
  if (v12)
  {
    v15 = 0;
    v16 = v13[1];
    if (v16)
    {
      v17 = v14[1];
      if (v17)
      {
        if (CFBooleanGetValue(v16) && CFBooleanGetValue(v17))
        {
          v18 = MEMORY[0x1E695E4D0];
        }

        else
        {
          v18 = MEMORY[0x1E695E4C0];
        }

        v15 = *v18;
      }
    }

    *v58 = v12;
    *&v58[8] = BSServiceQueue;
    v19 = objc_msgSendSuper2(v58, sel_init);
    v20 = v19;
    if (v19)
    {
      v19[1] = v15;
      objc_storeStrong(v19 + 2, queue);
      objc_storeStrong(v20 + 3, targetQueue);
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (void)_performAsync:(id)async withHandoff:(id)handoff
{
  asyncCopy = async;
  handoffCopy = handoff;
  v8 = handoffCopy;
  if (asyncCopy)
  {
    dispatchQueue = self->_dispatchQueue;
    if (handoffCopy)
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __52__BSServiceCompoundQueue__performAsync_withHandoff___block_invoke;
      v13[3] = &unk_1E7520B68;
      v13[4] = self;
      v10 = &v15;
      v15 = asyncCopy;
      v14 = v8;
      [(BSServiceDispatchQueue *)dispatchQueue _performAsync:v13 withHandoff:v14];
    }

    else
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __52__BSServiceCompoundQueue__performAsync_withHandoff___block_invoke_2;
      v11[3] = &unk_1E7520648;
      v11[4] = self;
      v10 = &v12;
      v12 = asyncCopy;
      [(BSServiceDispatchQueue *)dispatchQueue performAsync:v11];
    }
  }
}

- (void)_xpcReplyQueue_performReply:(id)reply
{
  replyCopy = reply;
  [(BSServiceDispatchQueue *)self->_dispatchQueue assertBarrierOnQueue];
  if (replyCopy)
  {
    [(BSServiceQueue *)self->_targetQueue performAsync:replyCopy];
  }
}

- (void)performAsync:(id)async
{
  asyncCopy = async;
  v5 = asyncCopy;
  if (asyncCopy)
  {
    dispatchQueue = self->_dispatchQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __39__BSServiceCompoundQueue_performAsync___block_invoke;
    v7[3] = &unk_1E7520648;
    v7[4] = self;
    v8 = asyncCopy;
    [(BSServiceDispatchQueue *)dispatchQueue performAsync:v7];
  }
}

- (void)performAfter:(double)after withBlock:(id)block
{
  blockCopy = block;
  v7 = blockCopy;
  if (blockCopy)
  {
    dispatchQueue = self->_dispatchQueue;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __49__BSServiceCompoundQueue_performAfter_withBlock___block_invoke;
    v9[3] = &unk_1E7520648;
    v9[4] = self;
    v10 = blockCopy;
    [(BSServiceDispatchQueue *)dispatchQueue performAfter:v9 withBlock:after];
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
    if (v5 == objc_opt_class() && [(BSServiceDispatchQueue *)self->_dispatchQueue isEqual:equalCopy->_dispatchQueue])
    {
      v6 = [(BSServiceQueue *)self->_targetQueue isEqual:equalCopy->_targetQueue];
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
  v4 = [v3 appendObject:self->_dispatchQueue withName:@"dispatchQueue"];
  v5 = [v3 appendObject:self->_targetQueue withName:@"targetQueue"];
  build = [v3 build];

  return build;
}

@end