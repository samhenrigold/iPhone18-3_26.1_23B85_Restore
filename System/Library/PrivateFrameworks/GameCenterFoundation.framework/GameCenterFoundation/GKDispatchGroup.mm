@interface GKDispatchGroup
+ (GKDispatchGroup)dispatchGroupWithName:(id)name;
+ (void)waitUntilDone:(id)done;
- (GKDispatchGroup)initWithName:(id)name;
- (id)_values;
- (id)description;
- (int64_t)_waitWithDispatchTimeout:(unint64_t)timeout;
- (int64_t)waitWithTimeout:(double)timeout;
- (void)dealloc;
- (void)join:(id)join queue:(id)queue block:(id)block;
- (void)notifyOnQueue:(id)queue block:(id)block;
- (void)perform:(id)perform;
- (void)setObject:(id)object forKeyedSubscript:(id)subscript;
- (void)wait;
@end

@implementation GKDispatchGroup

+ (void)waitUntilDone:(id)done
{
  v4 = +[GKDispatchGroup dispatchGroupWithName:](GKDispatchGroup, "dispatchGroupWithName:", [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKDispatchGroup+NoARC.m", 33, "+[GKDispatchGroup waitUntilDone:]"]);
  [(GKDispatchGroup *)v4 perform:done];

  [(GKDispatchGroup *)v4 wait];
}

- (GKDispatchGroup)initWithName:(id)name
{
  v10 = *MEMORY[0x277D85DE8];
  v7.receiver = self;
  v7.super_class = GKDispatchGroup;
  v4 = [(GKDispatchGroup *)&v7 init];
  if (v4)
  {
    v4->_name = name;
    v4->_group = dispatch_group_create();
    v4->_debugLoggingEnabled = os_log_type_enabled(os_log_GKDispatch, OS_LOG_TYPE_DEBUG);
    v4->_activity = [GKActivity named:name];
    v4->_sequence = 0;
    if (!os_log_GKGeneral)
    {
      GKOSLoggers();
    }

    v5 = os_log_GKDispatch;
    if (os_log_type_enabled(os_log_GKDispatch, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v9 = v4;
      _os_log_impl(&dword_227904000, v5, OS_LOG_TYPE_INFO, "%@: initialized", buf, 0xCu);
    }
  }

  return v4;
}

- (void)dealloc
{
  group = self->_group;
  if (group)
  {
    dispatch_release(group);
  }

  v4.receiver = self;
  v4.super_class = GKDispatchGroup;
  [(GKDispatchGroup *)&v4 dealloc];
}

+ (GKDispatchGroup)dispatchGroupWithName:(id)name
{
  v3 = [[self alloc] initWithName:name];

  return v3;
}

- (id)description
{
  if (self->_name)
  {
    v3 = MEMORY[0x277CCACA8];
    v4 = objc_opt_class();
    return [v3 stringWithFormat:@"<%s:%p> %@", class_getName(v4), self, self->_name];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = GKDispatchGroup;
    return [(GKDispatchGroup *)&v6 description];
  }
}

- (void)perform:(id)perform
{
  if (!os_log_GKGeneral)
  {
    GKOSLoggers();
  }

  if (os_log_type_enabled(os_log_GKDispatch, OS_LOG_TYPE_DEBUG))
  {
    [GKDispatchGroup perform:];
  }

  selfCopy = self;
  activity = [(GKDispatchGroup *)self activity];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __27__GKDispatchGroup_perform___block_invoke;
  v7[3] = &unk_2785DE188;
  v7[4] = self;
  v7[5] = perform;
  [(GKActivity *)activity execute:v7];
}

uint64_t __27__GKDispatchGroup_perform___block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) isDebugLoggingEnabled];
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = GKAtomicIncrement32((v3 + 48));
    Current = CFAbsoluteTimeGetCurrent();
    if (!os_log_GKGeneral)
    {
      GKOSLoggers();
    }

    v6 = os_log_GKDispatch;
    if (os_log_type_enabled(os_log_GKDispatch, OS_LOG_TYPE_DEBUG))
    {
      v22 = *(a1 + 32);
      *buf = 138412802;
      v31 = v22;
      v32 = 1024;
      v33 = v4;
      v34 = 2048;
      v35 = Current;
      _os_log_debug_impl(&dword_227904000, v6, OS_LOG_TYPE_DEBUG, "%@, PERFORM, %d, %f, ", buf, 0x1Cu);
    }

    dispatch_group_enter(*(*(a1 + 32) + 16));
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __27__GKDispatchGroup_perform___block_invoke_11;
    v28[3] = &unk_2785E26D0;
    v7 = *(a1 + 40);
    v28[4] = *(a1 + 32);
    v29 = v4;
    *&v28[5] = Current;
    return (*(v7 + 16))(v7, v28, v8, v9, v10, v11, v12, v13, v23, v24, v25, v26);
  }

  else
  {
    dispatch_group_enter(*(v3 + 16));
    v23 = MEMORY[0x277D85DD0];
    v24 = 3221225472;
    v25 = __27__GKDispatchGroup_perform___block_invoke_13;
    v26 = &unk_2785DE110;
    v15 = *(a1 + 40);
    v27 = *(a1 + 32);
    return (*(v15 + 16))(v15, &v23, v16, v17, v18, v19, v20, v21, MEMORY[0x277D85DD0], 3221225472, __27__GKDispatchGroup_perform___block_invoke_13, &unk_2785DE110);
  }
}

void __27__GKDispatchGroup_perform___block_invoke_11(uint64_t a1)
{
  CFAbsoluteTimeGetCurrent();
  if (!os_log_GKGeneral)
  {
    GKOSLoggers();
  }

  if (os_log_type_enabled(os_log_GKDispatch, OS_LOG_TYPE_DEBUG))
  {
    __27__GKDispatchGroup_perform___block_invoke_11_cold_1();
  }

  dispatch_group_leave(*(*(a1 + 32) + 16));
}

void __27__GKDispatchGroup_perform___block_invoke_13(uint64_t a1)
{
  dispatch_group_leave(*(*(a1 + 32) + 16));
  v2 = *(a1 + 32);
}

- (void)notifyOnQueue:(id)queue block:(id)block
{
  if (!os_log_GKGeneral)
  {
    GKOSLoggers();
  }

  if (os_log_type_enabled(os_log_GKDispatch, OS_LOG_TYPE_DEBUG))
  {
    [GKDispatchGroup notifyOnQueue:block:];
  }

  activity = [(GKDispatchGroup *)self activity];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __39__GKDispatchGroup_notifyOnQueue_block___block_invoke;
  v8[3] = &unk_2785E2720;
  v8[4] = self;
  v8[5] = queue;
  v8[6] = block;
  [(GKActivity *)activity execute:v8];
}

void __39__GKDispatchGroup_notifyOnQueue_block___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) isDebugLoggingEnabled];
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = v2;
    v5 = GKAtomicIncrement32(v3 + 12);
    Current = CFAbsoluteTimeGetCurrent();
    if (!os_log_GKGeneral)
    {
      GKOSLoggers();
    }

    v7 = os_log_GKDispatch;
    if (os_log_type_enabled(os_log_GKDispatch, OS_LOG_TYPE_DEBUG))
    {
      v17 = *(a1 + 32);
      *buf = 138412802;
      v23 = v17;
      v24 = 1024;
      v25 = v5;
      v26 = 2048;
      v27 = Current;
      _os_log_debug_impl(&dword_227904000, v7, OS_LOG_TYPE_DEBUG, "%@, NOTIFY WAITING, %d, %f, ", buf, 0x1Cu);
    }

    v8 = *(a1 + 32);
    v10 = *(a1 + 32);
    v9 = *(a1 + 40);
    v11 = *(v10 + 16);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __39__GKDispatchGroup_notifyOnQueue_block___block_invoke_14;
    v19[3] = &unk_2785E26F8;
    v21 = v4;
    v20 = v5;
    *&v19[6] = Current;
    v12 = *(a1 + 48);
    v19[4] = v10;
    v19[5] = v12;
    v13 = v19;
  }

  else
  {
    v14 = v3;
    v15 = *(a1 + 32);
    v9 = *(a1 + 40);
    v11 = *(v15 + 16);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __39__GKDispatchGroup_notifyOnQueue_block___block_invoke_15;
    v18[3] = &unk_2785DE160;
    v16 = *(a1 + 48);
    v18[4] = v15;
    v18[5] = v16;
    v13 = v18;
  }

  dispatch_group_notify(v11, v9, v13);
}

void __39__GKDispatchGroup_notifyOnQueue_block___block_invoke_14(uint64_t a1)
{
  if (*(a1 + 60) == 1)
  {
    CFAbsoluteTimeGetCurrent();
    if (!os_log_GKGeneral)
    {
      GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKDispatch, OS_LOG_TYPE_DEBUG))
    {
      __39__GKDispatchGroup_notifyOnQueue_block___block_invoke_14_cold_1();
    }
  }

  (*(*(a1 + 40) + 16))();
}

void __39__GKDispatchGroup_notifyOnQueue_block___block_invoke_15(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);
}

- (void)wait
{
  activity = self->_activity;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __23__GKDispatchGroup_wait__block_invoke;
  v3[3] = &unk_2785DE110;
  v3[4] = self;
  [(GKActivity *)activity execute:v3];
}

- (int64_t)waitWithTimeout:(double)timeout
{
  v4 = dispatch_time(0, (timeout * 1000000000.0));

  return [(GKDispatchGroup *)self _waitWithDispatchTimeout:v4];
}

- (int64_t)_waitWithDispatchTimeout:(unint64_t)timeout
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  activity = [(GKDispatchGroup *)self activity];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __44__GKDispatchGroup__waitWithDispatchTimeout___block_invoke;
  v8[3] = &unk_2785E2748;
  v8[4] = self;
  v8[5] = &v9;
  v8[6] = timeout;
  [(GKActivity *)activity execute:v8];

  v6 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v6;
}

void __44__GKDispatchGroup__waitWithDispatchTimeout___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 32) isDebugLoggingEnabled];
  v4 = *(a1 + 32);
  if (!v3)
  {
    *(*(*(a1 + 40) + 8) + 24) = dispatch_group_wait(*(v4 + 16), *(a1 + 48));
    return;
  }

  v5 = GKAtomicIncrement32((v4 + 48));
  Current = CFAbsoluteTimeGetCurrent();
  if (!os_log_GKGeneral)
  {
    GKOSLoggers();
  }

  v7 = os_log_GKDispatch;
  if (os_log_type_enabled(os_log_GKDispatch, OS_LOG_TYPE_DEBUG))
  {
    v12 = *(a1 + 32);
    v14 = 138412802;
    v15 = v12;
    v16 = 1024;
    v17 = v5;
    v18 = 2048;
    v19 = Current;
    _os_log_debug_impl(&dword_227904000, v7, OS_LOG_TYPE_DEBUG, "%@, WAITING, %d, %f, ", &v14, 0x1Cu);
  }

  *(*(*(a1 + 40) + 8) + 24) = dispatch_group_wait(*(*(a1 + 32) + 16), *(a1 + 48));
  v8 = CFAbsoluteTimeGetCurrent();
  if (*(*(*(a1 + 40) + 8) + 24))
  {
    if (!os_log_GKGeneral)
    {
      GKOSLoggers();
    }

    v9 = os_log_GKDispatch;
    if (os_log_type_enabled(os_log_GKDispatch, OS_LOG_TYPE_DEBUG))
    {
      v10 = *(a1 + 32);
      v14 = 138413058;
      v15 = v10;
      v16 = 1024;
      v17 = v5;
      v18 = 2048;
      v19 = v8;
      v20 = 2048;
      v21 = v8 - Current;
      v11 = "%@, TIMED OUT, %d, %f, %f";
LABEL_17:
      _os_log_debug_impl(&dword_227904000, v9, OS_LOG_TYPE_DEBUG, v11, &v14, 0x26u);
    }
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      GKOSLoggers();
    }

    v9 = os_log_GKDispatch;
    if (os_log_type_enabled(os_log_GKDispatch, OS_LOG_TYPE_DEBUG))
    {
      v13 = *(a1 + 32);
      v14 = 138413058;
      v15 = v13;
      v16 = 1024;
      v17 = v5;
      v18 = 2048;
      v19 = v8;
      v20 = 2048;
      v21 = v8 - Current;
      v11 = "%@, WAITED, %d, %f, %f";
      goto LABEL_17;
    }
  }
}

- (void)join:(id)join queue:(id)queue block:(id)block
{
  if (!os_log_GKGeneral)
  {
    GKOSLoggers();
  }

  if (os_log_type_enabled(os_log_GKDispatch, OS_LOG_TYPE_DEBUG))
  {
    [GKDispatchGroup join:queue:block:];
  }

  if (join != self)
  {
    if (!queue)
    {
      queue = +[GKDispatchGroup defaultConcurrentQueue];
    }

    activity = self->_activity;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __36__GKDispatchGroup_join_queue_block___block_invoke;
    v10[3] = &unk_2785E27C0;
    v10[4] = self;
    v10[5] = join;
    v10[6] = queue;
    v10[7] = block;
    [(GKActivity *)activity execute:v10];
  }
}

uint64_t __36__GKDispatchGroup_join_queue_block___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __36__GKDispatchGroup_join_queue_block___block_invoke_2;
  v3[3] = &unk_2785E2798;
  v4 = *(a1 + 40);
  v5 = *(a1 + 56);
  return [v1 perform:v3];
}

uint64_t __36__GKDispatchGroup_join_queue_block___block_invoke_2(void *a1, uint64_t a2)
{
  v3 = a1[4];
  v2 = a1[5];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __36__GKDispatchGroup_join_queue_block___block_invoke_3;
  v5[3] = &unk_2785E2770;
  v5[4] = a1[6];
  v5[5] = a2;
  return [v3 notifyOnQueue:v2 block:v5];
}

uint64_t __36__GKDispatchGroup_join_queue_block___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

- (id)_values
{
  p_values = &self->_values;
  result = self->_values;
  if (!result)
  {
    v5 = [GKThreadsafeDictionary alloc];
    v6 = -[GKThreadsafeDictionary initWithName:](v5, "initWithName:", [MEMORY[0x277CCACA8] stringWithFormat:@"GKDispatchGroup<%p>", self]);
    if (GKAtomicCompareAndSwapPtrBarrier(0, v6, p_values))
    {
      v7 = *p_values;
    }

    return *p_values;
  }

  return result;
}

- (void)setObject:(id)object forKeyedSubscript:(id)subscript
{
  _values = [(GKDispatchGroup *)self _values];
  if (object)
  {

    [_values setObject:object forKey:subscript];
  }

  else
  {

    [_values removeObjectForKey:subscript];
  }
}

void __27__GKDispatchGroup_perform___block_invoke_11_cold_1()
{
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_7_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x26u);
}

void __39__GKDispatchGroup_notifyOnQueue_block___block_invoke_14_cold_1()
{
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_7_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x26u);
}

@end