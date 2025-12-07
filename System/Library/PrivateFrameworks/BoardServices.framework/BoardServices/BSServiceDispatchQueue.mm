@interface BSServiceDispatchQueue
+ (BSServiceDispatchQueue)queueWithName:(id)name;
+ (BSServiceDispatchQueue)queueWithName:(id)name serviceQuality:(id)quality;
+ (BSServiceDispatchQueue)queueWithName:(id)name serviceQuality:(id)quality targetQueue:(id)queue;
+ (BSServiceDispatchQueue)queueWithName:(id)name targetQueue:(id)queue;
+ (id)_queueOfDispatchQueue:(uint64_t)queue;
+ (id)_queueWithDispatchQueue:(uint64_t)queue;
+ (id)mainQueue;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (_BYTE)_initWithQueue:(uint64_t)queue asUserInteractive:(int)interactive shouldAssociate:;
- (void)_performAsync:(id)async withHandoff:(id)handoff;
- (void)_xpcReplyQueue_performReply:(id)reply;
- (void)assertBarrierOnQueue;
- (void)performAfter:(double)after withBlock:(id)block;
- (void)performAsync:(id)async;
- (void)performAsyncAndWait:(id)wait;
@end

@implementation BSServiceDispatchQueue

- (void)assertBarrierOnQueue
{
  if (self->_main)
  {
    BSDispatchQueueAssertMain();
  }

  else
  {
    dispatch_assert_queue_barrier(self->_queue);
  }
}

+ (id)mainQueue
{
  if (qword_1ED4A7B50 != -1)
  {
    dispatch_once(&qword_1ED4A7B50, &__block_literal_global_7);
  }

  v3 = _MergedGlobals_1;

  return v3;
}

void __35__BSServiceDispatchQueue_mainQueue__block_invoke()
{
  v0 = MEMORY[0x1E69E96A0];
  v1 = qos_class_main();
  v2 = [BSServiceDispatchQueue alloc];
  if (v1 == QOS_CLASS_USER_INTERACTIVE)
  {
    v3 = *MEMORY[0x1E695E4D0];
  }

  else
  {
    v3 = *MEMORY[0x1E695E4C0];
  }

  v4 = [(BSServiceDispatchQueue *)v2 _initWithQueue:v3 asUserInteractive:1 shouldAssociate:?];
  v5 = _MergedGlobals_1;
  _MergedGlobals_1 = v4;

  *(_MergedGlobals_1 + 24) = 1;
  v6 = MEMORY[0x1E69E96A0];
}

- (_BYTE)_initWithQueue:(uint64_t)queue asUserInteractive:(int)interactive shouldAssociate:
{
  v8 = a2;
  if (self)
  {
    v12.receiver = self;
    v12.super_class = BSServiceQueue;
    v9 = objc_msgSendSuper2(&v12, sel_init);
    self = v9;
    if (v9)
    {
      *(v9 + 1) = queue;
      objc_storeStrong(v9 + 2, a2);
      if (interactive)
      {
        self[25] = 1;
        v10 = [MEMORY[0x1E698E7B8] referenceWithObject:self];
        objc_setAssociatedObject(v8, "BSServiceDispatchQueueReference", v10, 1);
      }
    }
  }

  return self;
}

+ (id)_queueOfDispatchQueue:(uint64_t)queue
{
  v2 = a2;
  objc_opt_self();
  v3 = objc_getAssociatedObject(v2, "BSServiceDispatchQueueReference");
  object = [v3 object];

  return object;
}

+ (id)_queueWithDispatchQueue:(uint64_t)queue
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = objc_opt_self();
  if (!v2)
  {
    v7 = v3;
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"queue"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v9 = NSStringFromSelector(sel__queueWithDispatchQueue_);
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      *buf = 138544642;
      v14 = v9;
      v15 = 2114;
      v16 = v11;
      v17 = 2048;
      v18 = v7;
      v19 = 2114;
      v20 = @"BSServiceQueue.m";
      v21 = 1024;
      v22 = 60;
      v23 = 2114;
      v24 = v8;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v12 = v8;
    [v8 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A8528F8);
  }

  if (v2 == MEMORY[0x1E69E96A0])
  {
    v4 = +[BSServiceDispatchQueue mainQueue];
  }

  else
  {
    v4 = [[BSServiceDispatchQueue alloc] _initWithQueue:v2 asUserInteractive:0 shouldAssociate:0];
  }

  v5 = v4;

  return v5;
}

+ (BSServiceDispatchQueue)queueWithName:(id)name
{
  v41 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v6 = MEMORY[0x1E696AEC0];
  if (!nameCopy)
  {
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = [v6 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"name", v13];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v15 = NSStringFromSelector(a2);
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      *buf = 138544642;
      v30 = v15;
      v31 = 2114;
      v32 = v17;
      v33 = 2048;
      selfCopy2 = self;
      v35 = 2114;
      v36 = @"BSServiceQueue.m";
      v37 = 1024;
      v38 = 83;
      v39 = 2114;
      v40 = v14;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v18 = v14;
    [v14 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A852B58);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v19 = MEMORY[0x1E696AEC0];
    classForCoder = [nameCopy classForCoder];
    if (!classForCoder)
    {
      classForCoder = objc_opt_class();
    }

    v21 = NSStringFromClass(classForCoder);
    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    v24 = [v19 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"name", v21, v23];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v25 = NSStringFromSelector(a2);
      v26 = objc_opt_class();
      v27 = NSStringFromClass(v26);
      *buf = 138544642;
      v30 = v25;
      v31 = 2114;
      v32 = v27;
      v33 = 2048;
      selfCopy2 = self;
      v35 = 2114;
      v36 = @"BSServiceQueue.m";
      v37 = 1024;
      v38 = 83;
      v39 = 2114;
      v40 = v24;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v28 = v24;
    [v24 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A852C9CLL);
  }

  serial = [MEMORY[0x1E698E698] serial];
  v8 = BSDispatchQueueCreate();
  v9 = [BSServiceDispatchQueue alloc];
  v10 = [(BSServiceDispatchQueue *)v9 _initWithQueue:v8 asUserInteractive:*MEMORY[0x1E695E4C0] shouldAssociate:1];

  return v10;
}

+ (BSServiceDispatchQueue)queueWithName:(id)name targetQueue:(id)queue
{
  v51 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  queueCopy = queue;
  v9 = nameCopy;
  v10 = MEMORY[0x1E696AEC0];
  if (!v9)
  {
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    v19 = [v10 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"name", v18];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v20 = NSStringFromSelector(a2);
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      *buf = 138544642;
      v40 = v20;
      v41 = 2114;
      v42 = v22;
      v43 = 2048;
      selfCopy3 = self;
      v45 = 2114;
      v46 = @"BSServiceQueue.m";
      v47 = 1024;
      v48 = 90;
      v49 = 2114;
      v50 = v19;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v23 = v19;
    [v19 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A852F90);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v24 = MEMORY[0x1E696AEC0];
    classForCoder = [v9 classForCoder];
    if (!classForCoder)
    {
      classForCoder = objc_opt_class();
    }

    v26 = NSStringFromClass(classForCoder);
    v27 = objc_opt_class();
    v28 = NSStringFromClass(v27);
    v29 = [v24 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"name", v26, v28];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v30 = NSStringFromSelector(a2);
      v31 = objc_opt_class();
      v32 = NSStringFromClass(v31);
      *buf = 138544642;
      v40 = v30;
      v41 = 2114;
      v42 = v32;
      v43 = 2048;
      selfCopy3 = self;
      v45 = 2114;
      v46 = @"BSServiceQueue.m";
      v47 = 1024;
      v48 = 90;
      v49 = 2114;
      v50 = v29;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v33 = v29;
    [v29 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A8530D4);
  }

  if (!queueCopy)
  {
    v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"targetQueue"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v35 = NSStringFromSelector(a2);
      v36 = objc_opt_class();
      v37 = NSStringFromClass(v36);
      *buf = 138544642;
      v40 = v35;
      v41 = 2114;
      v42 = v37;
      v43 = 2048;
      selfCopy3 = self;
      v45 = 2114;
      v46 = @"BSServiceQueue.m";
      v47 = 1024;
      v48 = 91;
      v49 = 2114;
      v50 = v34;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v38 = v34;
    [v34 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A8531D4);
  }

  serial = [MEMORY[0x1E698E698] serial];
  v12 = [serial targetQueue:queueCopy];

  v13 = BSDispatchQueueCreate();
  v14 = [BSServiceDispatchQueue alloc];
  v15 = [(BSServiceDispatchQueue *)v14 _initWithQueue:v13 asUserInteractive:*MEMORY[0x1E695E4C0] shouldAssociate:1];

  return v15;
}

+ (BSServiceDispatchQueue)queueWithName:(id)name serviceQuality:(id)quality
{
  v67 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  qualityCopy = quality;
  v9 = nameCopy;
  v10 = MEMORY[0x1E696AEC0];
  if (!v9)
  {
    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    v22 = [v10 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"name", v21];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v23 = NSStringFromSelector(a2);
      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      *buf = 138544642;
      v56 = v23;
      v57 = 2114;
      v58 = v25;
      v59 = 2048;
      selfCopy4 = self;
      v61 = 2114;
      v62 = @"BSServiceQueue.m";
      v63 = 1024;
      v64 = 98;
      v65 = 2114;
      v66 = v22;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v26 = v22;
    [v22 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A853560);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v27 = MEMORY[0x1E696AEC0];
    classForCoder = [v9 classForCoder];
    if (!classForCoder)
    {
      classForCoder = objc_opt_class();
    }

    v29 = NSStringFromClass(classForCoder);
    v30 = objc_opt_class();
    v31 = NSStringFromClass(v30);
    v32 = [v27 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"name", v29, v31];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v33 = NSStringFromSelector(a2);
      v34 = objc_opt_class();
      v35 = NSStringFromClass(v34);
      *buf = 138544642;
      v56 = v33;
      v57 = 2114;
      v58 = v35;
      v59 = 2048;
      selfCopy4 = self;
      v61 = 2114;
      v62 = @"BSServiceQueue.m";
      v63 = 1024;
      v64 = 98;
      v65 = 2114;
      v66 = v32;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v36 = v32;
    [v32 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A8536A4);
  }

  v11 = qualityCopy;
  if (!v11)
  {
    v37 = MEMORY[0x1E696AEC0];
    v38 = objc_opt_class();
    v39 = NSStringFromClass(v38);
    v40 = [v37 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"serviceQuality", v39];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v41 = NSStringFromSelector(a2);
      v42 = objc_opt_class();
      v43 = NSStringFromClass(v42);
      *buf = 138544642;
      v56 = v41;
      v57 = 2114;
      v58 = v43;
      v59 = 2048;
      selfCopy4 = self;
      v61 = 2114;
      v62 = @"BSServiceQueue.m";
      v63 = 1024;
      v64 = 99;
      v65 = 2114;
      v66 = v40;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v44 = v40;
    [v40 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A8537C4);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v45 = MEMORY[0x1E696AEC0];
    classForCoder2 = [v11 classForCoder];
    if (!classForCoder2)
    {
      classForCoder2 = objc_opt_class();
    }

    v47 = NSStringFromClass(classForCoder2);
    v48 = objc_opt_class();
    v49 = NSStringFromClass(v48);
    v50 = [v45 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"serviceQuality", v47, v49];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v51 = NSStringFromSelector(a2);
      v52 = objc_opt_class();
      v53 = NSStringFromClass(v52);
      *buf = 138544642;
      v56 = v51;
      v57 = 2114;
      v58 = v53;
      v59 = 2048;
      selfCopy4 = self;
      v61 = 2114;
      v62 = @"BSServiceQueue.m";
      v63 = 1024;
      v64 = 99;
      v65 = 2114;
      v66 = v50;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v54 = v50;
    [v50 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A853908);
  }

  serial = [MEMORY[0x1E698E698] serial];
  v13 = [serial serviceClass:objc_msgSend(v11 relativePriority:{"serviceClass"), objc_msgSend(v11, "relativePriority")}];

  v14 = BSDispatchQueueCreate();
  serviceClass = [v11 serviceClass];
  v16 = [BSServiceDispatchQueue alloc];
  if (serviceClass == 33)
  {
    v17 = *MEMORY[0x1E695E4D0];
  }

  else
  {
    v17 = *MEMORY[0x1E695E4C0];
  }

  v18 = [(BSServiceDispatchQueue *)v16 _initWithQueue:v14 asUserInteractive:v17 shouldAssociate:1];

  return v18;
}

+ (BSServiceDispatchQueue)queueWithName:(id)name serviceQuality:(id)quality targetQueue:(id)queue
{
  v76 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  qualityCopy = quality;
  queueCopy = queue;
  v12 = nameCopy;
  v13 = MEMORY[0x1E696AEC0];
  if (!v12)
  {
    v24 = objc_opt_class();
    v25 = NSStringFromClass(v24);
    v26 = [v13 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"name", v25];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v27 = NSStringFromSelector(a2);
      v28 = objc_opt_class();
      v29 = NSStringFromClass(v28);
      *buf = 138544642;
      v65 = v27;
      v66 = 2114;
      v67 = v29;
      v68 = 2048;
      selfCopy5 = self;
      v70 = 2114;
      v71 = @"BSServiceQueue.m";
      v72 = 1024;
      v73 = 108;
      v74 = 2114;
      v75 = v26;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v30 = v26;
    [v26 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A853D10);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v31 = MEMORY[0x1E696AEC0];
    classForCoder = [v12 classForCoder];
    if (!classForCoder)
    {
      classForCoder = objc_opt_class();
    }

    v33 = NSStringFromClass(classForCoder);
    v34 = objc_opt_class();
    v35 = NSStringFromClass(v34);
    v36 = [v31 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"name", v33, v35];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v37 = NSStringFromSelector(a2);
      v38 = objc_opt_class();
      v39 = NSStringFromClass(v38);
      *buf = 138544642;
      v65 = v37;
      v66 = 2114;
      v67 = v39;
      v68 = 2048;
      selfCopy5 = self;
      v70 = 2114;
      v71 = @"BSServiceQueue.m";
      v72 = 1024;
      v73 = 108;
      v74 = 2114;
      v75 = v36;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v40 = v36;
    [v36 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A853E54);
  }

  v14 = qualityCopy;
  if (!v14)
  {
    v41 = MEMORY[0x1E696AEC0];
    v42 = objc_opt_class();
    v43 = NSStringFromClass(v42);
    v44 = [v41 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"serviceQuality", v43];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v45 = NSStringFromSelector(a2);
      v46 = objc_opt_class();
      v47 = NSStringFromClass(v46);
      *buf = 138544642;
      v65 = v45;
      v66 = 2114;
      v67 = v47;
      v68 = 2048;
      selfCopy5 = self;
      v70 = 2114;
      v71 = @"BSServiceQueue.m";
      v72 = 1024;
      v73 = 109;
      v74 = 2114;
      v75 = v44;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v48 = v44;
    [v44 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A853F74);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v49 = MEMORY[0x1E696AEC0];
    classForCoder2 = [v14 classForCoder];
    if (!classForCoder2)
    {
      classForCoder2 = objc_opt_class();
    }

    v51 = NSStringFromClass(classForCoder2);
    v52 = objc_opt_class();
    v53 = NSStringFromClass(v52);
    v54 = [v49 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"serviceQuality", v51, v53];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v55 = NSStringFromSelector(a2);
      v56 = objc_opt_class();
      v57 = NSStringFromClass(v56);
      *buf = 138544642;
      v65 = v55;
      v66 = 2114;
      v67 = v57;
      v68 = 2048;
      selfCopy5 = self;
      v70 = 2114;
      v71 = @"BSServiceQueue.m";
      v72 = 1024;
      v73 = 109;
      v74 = 2114;
      v75 = v54;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v58 = v54;
    [v54 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A8540B8);
  }

  if (!queueCopy)
  {
    v59 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"targetQueue"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v60 = NSStringFromSelector(a2);
      v61 = objc_opt_class();
      v62 = NSStringFromClass(v61);
      *buf = 138544642;
      v65 = v60;
      v66 = 2114;
      v67 = v62;
      v68 = 2048;
      selfCopy5 = self;
      v70 = 2114;
      v71 = @"BSServiceQueue.m";
      v72 = 1024;
      v73 = 110;
      v74 = 2114;
      v75 = v59;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v63 = v59;
    [v59 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A8541B8);
  }

  serial = [MEMORY[0x1E698E698] serial];
  v16 = [serial targetQueue:queueCopy];

  v17 = [v16 serviceClass:objc_msgSend(v14 relativePriority:{"serviceClass"), objc_msgSend(v14, "relativePriority")}];

  v18 = BSDispatchQueueCreate();
  serviceClass = [v14 serviceClass];
  v20 = [BSServiceDispatchQueue alloc];
  if (serviceClass == 33)
  {
    v21 = *MEMORY[0x1E695E4D0];
  }

  else
  {
    v21 = *MEMORY[0x1E695E4C0];
  }

  v22 = [(BSServiceDispatchQueue *)v20 _initWithQueue:v18 asUserInteractive:v21 shouldAssociate:1];

  return v22;
}

- (void)performAsyncAndWait:(id)wait
{
  v24 = *MEMORY[0x1E69E9840];
  waitCopy = wait;
  if (!waitCopy)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"block"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = NSStringFromSelector(a2);
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      *buf = 138544642;
      v13 = v7;
      v14 = 2114;
      v15 = v9;
      v16 = 2048;
      selfCopy = self;
      v18 = 2114;
      v19 = @"BSServiceQueue.m";
      v20 = 1024;
      v21 = 119;
      v22 = 2114;
      v23 = v6;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v10 = v6;
    [v6 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A8544A4);
  }

  v11 = waitCopy;
  dispatch_async_and_wait(self->_queue, waitCopy);
}

- (void)_performAsync:(id)async withHandoff:(id)handoff
{
  block = async;
  handoffCopy = handoff;
  if (block)
  {
    if (handoffCopy)
    {
      xpc_dictionary_handoff_reply();
    }

    else
    {
      dispatch_async(self->_queue, block);
    }
  }
}

- (void)_xpcReplyQueue_performReply:(id)reply
{
  replyCopy = reply;
  [(BSServiceDispatchQueue *)self assertBarrierOnQueue];
  if (replyCopy)
  {
    replyCopy[2]();
  }
}

- (void)performAsync:(id)async
{
  if (async)
  {
    dispatch_async(self->_queue, async);
  }
}

- (void)performAfter:(double)after withBlock:(id)block
{
  if (block)
  {
    v5 = (after * 1000000000.0);
    block = block;
    v6 = dispatch_time(0, v5);
    dispatch_after(v6, self->_queue, block);
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
    v6 = v5 == objc_opt_class() && !self->_isAssociated && !equalCopy->_isAssociated && [(OS_dispatch_queue *)self->_queue isEqual:equalCopy->_queue]&& self->_main == equalCopy->_main;
  }

  return v6;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = v3;
  if (self->_main)
  {
    [v3 appendString:@"main" withName:@"queue"];
  }

  else
  {
    v5 = [v3 appendQueue:self->_queue withName:@"queue"];
  }

  build = [v4 build];

  return build;
}

@end