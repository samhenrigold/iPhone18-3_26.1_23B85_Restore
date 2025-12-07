@interface BSServiceMainRunLoopQueue
+ (id)commonModesQueue;
+ (id)queueWithModes:(id)modes;
- (CFRunLoopSourceContext)_initWithModes:(CFIndex)modes;
- (id)description;
- (void)_queue_performAsync:(id)obj;
- (void)assertBarrierOnQueue;
- (void)dealloc;
- (void)performAfter:(double)after withBlock:(id)block;
- (void)performAsync:(id)async;
@end

@implementation BSServiceMainRunLoopQueue

+ (id)commonModesQueue
{
  if (qword_1ED4A7B60 != -1)
  {
    dispatch_once(&qword_1ED4A7B60, &__block_literal_global_118);
  }

  v3 = qword_1ED4A7B58;

  return v3;
}

void __45__BSServiceMainRunLoopQueue_commonModesQueue__block_invoke()
{
  v4[1] = *MEMORY[0x1E69E9840];
  v0 = [BSServiceMainRunLoopQueue alloc];
  v4[0] = *MEMORY[0x1E695DA28];
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];
  v2 = [(BSServiceMainRunLoopQueue *)v0 _initWithModes:v1];
  v3 = qword_1ED4A7B58;
  qword_1ED4A7B58 = v2;
}

void __58__BSServiceMainRunLoopQueue__performNextFromRunLoopSource__block_invoke(uint64_t a1)
{
  if ([*(*(a1 + 32) + 40) count])
  {
    v2 = [*(*(a1 + 32) + 40) objectAtIndex:0];
    v3 = *(*(a1 + 40) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;

    [*(*(a1 + 32) + 40) removeObjectAtIndex:0];
  }

  if (![*(*(a1 + 32) + 40) count])
  {
    v5 = *(a1 + 32);
    v6 = *(v5 + 48);
    *(v5 + 48) = 0;
  }
}

- (void)assertBarrierOnQueue
{
  v21 = *MEMORY[0x1E69E9840];
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"threading violation: expected the main thread"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v5 = NSStringFromSelector(a2);
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v9 = 138544642;
      v10 = v5;
      v11 = 2114;
      v12 = v7;
      v13 = 2048;
      selfCopy = self;
      v15 = 2114;
      v16 = @"BSServiceQueue.m";
      v17 = 1024;
      v18 = 272;
      v19 = 2114;
      v20 = v4;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
    }

    v8 = v4;
    [v4 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A82A374);
  }
}

- (CFRunLoopSourceContext)_initWithModes:(CFIndex)modes
{
  v46 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (modes)
  {
    if (qos_class_main() == QOS_CLASS_USER_INTERACTIVE)
    {
      v4 = MEMORY[0x1E695E4D0];
    }

    else
    {
      v4 = MEMORY[0x1E695E4C0];
    }

    v32.version = modes;
    v32.info = BSServiceQueue;
    v5 = [(CFRunLoopSourceContext *)&v32 init];
    v6 = v5;
    if (v5)
    {
      v5->info = *v4;
      serial = [MEMORY[0x1E698E698] serial];
      v8 = [serial serviceClass:33];
      v9 = BSDispatchQueueCreate();
      release = v6->release;
      v6->release = v9;

      v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
      equal = v6->equal;
      v6->equal = v11;

      v13 = [v3 copy];
      retain = v6->retain;
      v6->retain = v13;

      v32.version = 0;
      memset(&v32.retain, 0, 56);
      v32.info = v6;
      v32.perform = BSServiceMainRunLoopSourceHandler;
      v15 = CFRunLoopSourceCreate(0, 0, &v32);
      v6->copyDescription = v15;
      if (!v15)
      {
        v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"failed to create source"];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v24 = NSStringFromSelector(sel__initWithModes_);
          v25 = objc_opt_class();
          v26 = NSStringFromClass(v25);
          *buf = 138544642;
          v35 = v24;
          v36 = 2114;
          v37 = v26;
          v38 = 2048;
          v39 = v6;
          v40 = 2114;
          v41 = @"BSServiceQueue.m";
          v42 = 1024;
          v43 = 229;
          v44 = 2114;
          v45 = v23;
          _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
        }

        v27 = v23;
        [v23 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
        JUMPOUT(0x19A854B64);
      }

      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v16 = v6->retain;
      v17 = [v16 countByEnumeratingWithState:&v28 objects:v33 count:16];
      if (v17)
      {
        v18 = *v29;
        do
        {
          v19 = 0;
          do
          {
            if (*v29 != v18)
            {
              objc_enumerationMutation(v16);
            }

            v20 = *(*(&v28 + 1) + 8 * v19);
            Main = CFRunLoopGetMain();
            CFRunLoopAddSource(Main, v6->copyDescription, v20);
            ++v19;
          }

          while (v17 != v19);
          v17 = [v16 countByEnumeratingWithState:&v28 objects:v33 count:16];
        }

        while (v17);
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)dealloc
{
  CFRunLoopSourceInvalidate(self->_source);
  CFRelease(self->_source);
  v3.receiver = self;
  v3.super_class = BSServiceMainRunLoopQueue;
  [(BSServiceMainRunLoopQueue *)&v3 dealloc];
}

+ (id)queueWithModes:(id)modes
{
  v73 = *MEMORY[0x1E69E9840];
  modesCopy = modes;
  if (!modesCopy)
  {
    v32 = MEMORY[0x1E696AEC0];
    v33 = objc_opt_class();
    v34 = NSStringFromClass(v33);
    v35 = [v32 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"modes", v34];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v36 = NSStringFromSelector(a2);
      v37 = objc_opt_class();
      v38 = NSStringFromClass(v37);
      *buf = 138544642;
      v62 = v36;
      v63 = 2114;
      v64 = v38;
      v65 = 2048;
      selfCopy5 = self;
      v67 = 2114;
      v68 = @"BSServiceQueue.m";
      v69 = 1024;
      v70 = 254;
      v71 = 2114;
      v72 = v35;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v39 = v35;
    [v35 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A8551E0);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v40 = MEMORY[0x1E696AEC0];
    classForCoder = [modesCopy classForCoder];
    if (!classForCoder)
    {
      classForCoder = objc_opt_class();
    }

    v42 = NSStringFromClass(classForCoder);
    v43 = objc_opt_class();
    v44 = NSStringFromClass(v43);
    v45 = [v40 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"modes", v42, v44];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v46 = NSStringFromSelector(a2);
      v47 = objc_opt_class();
      v48 = NSStringFromClass(v47);
      *buf = 138544642;
      v62 = v46;
      v63 = 2114;
      v64 = v48;
      v65 = 2048;
      selfCopy5 = self;
      v67 = 2114;
      v68 = @"BSServiceQueue.m";
      v69 = 1024;
      v70 = 254;
      v71 = 2114;
      v72 = v45;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v49 = v45;
    [v45 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A85532CLL);
  }

  if (![modesCopy count])
  {
    v50 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[modes count] > 0"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v51 = NSStringFromSelector(a2);
      v52 = objc_opt_class();
      v53 = NSStringFromClass(v52);
      *buf = 138544642;
      v62 = v51;
      v63 = 2114;
      v64 = v53;
      v65 = 2048;
      selfCopy5 = self;
      v67 = 2114;
      v68 = @"BSServiceQueue.m";
      v69 = 1024;
      v70 = 255;
      v71 = 2114;
      v72 = v50;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v54 = v50;
    [v50 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A855434);
  }

  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(modesCopy, "count")}];
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v6 = modesCopy;
  v7 = [v6 countByEnumeratingWithState:&v56 objects:v60 count:16];
  if (v7)
  {
    v8 = *v57;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v57 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v56 + 1) + 8 * i);
        v11 = MEMORY[0x1E696AEC0];
        if (!v10)
        {
          v15 = objc_opt_class();
          v16 = NSStringFromClass(v15);
          v17 = [v11 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"mode", v16];

          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v18 = NSStringFromSelector(a2);
            v19 = objc_opt_class();
            v20 = NSStringFromClass(v19);
            *buf = 138544642;
            v62 = v18;
            v63 = 2114;
            v64 = v20;
            v65 = 2048;
            selfCopy5 = self;
            v67 = 2114;
            v68 = @"BSServiceQueue.m";
            v69 = 1024;
            v70 = 258;
            v71 = 2114;
            v72 = v17;
            _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
          }

          v21 = v17;
          [v17 UTF8String];
          _bs_set_crash_log_message();
          __break(0);
          JUMPOUT(0x19A854F6CLL);
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v22 = MEMORY[0x1E696AEC0];
          classForCoder2 = [v10 classForCoder];
          if (!classForCoder2)
          {
            classForCoder2 = objc_opt_class();
          }

          v24 = NSStringFromClass(classForCoder2);
          v25 = objc_opt_class();
          v26 = NSStringFromClass(v25);
          v27 = [v22 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"mode", v24, v26];

          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v28 = NSStringFromSelector(a2);
            v29 = objc_opt_class();
            v30 = NSStringFromClass(v29);
            *buf = 138544642;
            v62 = v28;
            v63 = 2114;
            v64 = v30;
            v65 = 2048;
            selfCopy5 = self;
            v67 = 2114;
            v68 = @"BSServiceQueue.m";
            v69 = 1024;
            v70 = 258;
            v71 = 2114;
            v72 = v27;
            _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
          }

          v31 = v27;
          [v27 UTF8String];
          _bs_set_crash_log_message();
          __break(0);
          JUMPOUT(0x19A8550B8);
        }

        v12 = [v10 copy];
        [v5 addObject:v12];
      }

      v7 = [v6 countByEnumeratingWithState:&v56 objects:v60 count:16];
    }

    while (v7);
  }

  v13 = [[BSServiceMainRunLoopQueue alloc] _initWithModes:v5];

  return v13;
}

- (void)performAsync:(id)async
{
  if (async)
  {
    v4 = dispatch_block_create(DISPATCH_BLOCK_NO_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, async);
    queue = self->_queue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __42__BSServiceMainRunLoopQueue_performAsync___block_invoke;
    v7[3] = &unk_1E7520648;
    v7[4] = self;
    v8 = v4;
    v6 = v4;
    dispatch_async_and_wait(queue, v7);
  }
}

- (void)_queue_performAsync:(id)obj
{
  if (obj && a2)
  {
    objc_storeStrong(obj + 6, obj);
    v4 = a2;
    v5 = *(obj + 5);
    v6 = MEMORY[0x19A908200]();

    [v5 addObject:v6];
    CFRunLoopSourceSignal(*(obj + 4));
    Main = CFRunLoopGetMain();

    CFRunLoopWakeUp(Main);
  }
}

- (void)performAfter:(double)after withBlock:(id)block
{
  if (block)
  {
    v6 = dispatch_block_create(DISPATCH_BLOCK_NO_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
    v7 = dispatch_time(0, (after * 1000000000.0));
    queue = self->_queue;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __52__BSServiceMainRunLoopQueue_performAfter_withBlock___block_invoke;
    v10[3] = &unk_1E7520648;
    v10[4] = self;
    v11 = v6;
    v9 = v6;
    dispatch_after(v7, queue, v10);
  }
}

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  [v3 appendArraySection:self->_modes withName:@"modes" skipIfEmpty:0];
  v4 = [v3 appendPointer:self->_source withName:@"source"];
  v5 = [v3 appendBool:self->_main_callingOut withName:@"callingOut"];
  queue = self->_queue;
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __40__BSServiceMainRunLoopQueue_description__block_invoke;
  v13 = &unk_1E75209E8;
  v7 = v3;
  v14 = v7;
  selfCopy = self;
  dispatch_async_and_wait(queue, &v10);
  build = [v7 build];

  return build;
}

@end