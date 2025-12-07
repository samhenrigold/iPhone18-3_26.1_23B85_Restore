@interface DMCDaemonConnectionTracker
- (DMCDaemonConnectionTracker)initWithProcessName:(id)name connectionThreshold:(unint64_t)threshold requestThreshold:(unint64_t)requestThreshold;
- (id)_nameForProcessWithPID:(int)d cache:(id)cache;
- (void)trackConnectionFromPID:(int)d;
- (void)trackRequestFromPID:(int)d;
@end

@implementation DMCDaemonConnectionTracker

- (DMCDaemonConnectionTracker)initWithProcessName:(id)name connectionThreshold:(unint64_t)threshold requestThreshold:(unint64_t)requestThreshold
{
  nameCopy = name;
  if (+[DMCFeatureFlags isAppleInternal])
  {
    v24.receiver = self;
    v24.super_class = DMCDaemonConnectionTracker;
    v9 = [(DMCDaemonConnectionTracker *)&v24 init];
    if (v9)
    {
      v10 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
      nameCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_connection_tracker", nameCopy];
      v12 = dispatch_queue_create([nameCopy UTF8String], v10);
      queue = v9->_queue;
      v9->_queue = v12;

      v14 = objc_opt_new();
      requestCache = v9->_requestCache;
      v9->_requestCache = v14;

      v16 = objc_opt_new();
      connectionCache = v9->_connectionCache;
      v9->_connectionCache = v16;

      v18 = objc_opt_new();
      pidNameCache = v9->_pidNameCache;
      v9->_pidNameCache = v18;

      v20 = [nameCopy copy];
      clientName = v9->_clientName;
      v9->_clientName = v20;

      v9->_connectionThreshold = threshold * 3.0;
      v9->_requestThreshold = requestThreshold * 3.0;
    }

    self = v9;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)trackConnectionFromPID:(int)d
{
  v5 = [MEMORY[0x1E695DF00] now];
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__DMCDaemonConnectionTracker_trackConnectionFromPID___block_invoke;
  block[3] = &unk_1E7ADC4C0;
  dCopy = d;
  block[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(queue, block);
}

void __53__DMCDaemonConnectionTracker_trackConnectionFromPID___block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x1E69E9840];
  v2 = a1 + 32;
  v3 = [*(a1 + 32) _nameForProcessWithPID:*(a1 + 48) cache:*(*(a1 + 32) + 56)];
  v5 = *DMCLogObjects(v3, v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = *(a1 + 48);
    *buf = 138543618;
    *&buf[4] = v3;
    *&buf[12] = 1024;
    *&buf[14] = v6;
    _os_log_impl(&dword_1B1630000, v5, OS_LOG_TYPE_DEBUG, "New connection from %{public}@(%d)", buf, 0x12u);
  }

  v7 = *(a1 + 32);
  v8 = *(v7 + 24);
  v9 = *(a1 + 40);
  v10 = *(v7 + 40);
  v11 = v9;
  v12 = v3;
  v13 = v8;
  v14 = dispatch_time(0, 3000000000);
  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 3221225472;
  *&buf[16] = ___scheduleCleanup_block_invoke;
  v34 = &unk_1E7ADC5F0;
  v35 = v10;
  v36 = v12;
  v37 = *&v11;
  v15 = v11;
  v16 = v12;
  v17 = v10;
  dispatch_after(v14, v13, buf);

  v18 = *(*(a1 + 32) + 64);
  v19 = *(a1 + 40);
  v20 = *(*(a1 + 32) + 40);
  v21 = v19;
  v22 = v16;
  v23 = [v20 objectForKeyedSubscript:v22];
  LODWORD(v16) = v23 == 0;

  if (v16)
  {
    v24 = objc_opt_new();
    [v20 setObject:v24 forKeyedSubscript:v22];
  }

  v25 = [v20 objectForKeyedSubscript:v22];
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 1;
  if ([v25 count])
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = ___queue_verifyThresholdAndAddDateRecord_block_invoke;
    v34 = &unk_1E7ADC5C8;
    v35 = v21;
    v36 = &v29;
    v37 = v18;
    [v25 enumerateObjectsUsingBlock:buf];
  }

  v26 = v30[3];
  [v25 addObject:v21];
  _Block_object_dispose(&v29, 8);

  if (v18 <= v26)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      __53__DMCDaemonConnectionTracker_trackConnectionFromPID___block_invoke_cold_1(v22, v2);
    }

    v27 = [*(*v2 + 40) objectForKeyedSubscript:v22];
    [v27 removeAllObjects];

    v28 = *(*v2 + 8);
    if (v28)
    {
      (*(v28 + 16))(v28, *(a1 + 48), v22);
    }
  }
}

- (void)trackRequestFromPID:(int)d
{
  v5 = [MEMORY[0x1E695DF00] now];
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__DMCDaemonConnectionTracker_trackRequestFromPID___block_invoke;
  block[3] = &unk_1E7ADC4C0;
  dCopy = d;
  block[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(queue, block);
}

void __50__DMCDaemonConnectionTracker_trackRequestFromPID___block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x1E69E9840];
  v2 = a1 + 32;
  v3 = [*(a1 + 32) _nameForProcessWithPID:*(a1 + 48) cache:*(*(a1 + 32) + 56)];
  v5 = *DMCLogObjects(v3, v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = *(a1 + 48);
    *buf = 138543618;
    *&buf[4] = v3;
    *&buf[12] = 1024;
    *&buf[14] = v6;
    _os_log_impl(&dword_1B1630000, v5, OS_LOG_TYPE_DEBUG, "New request from %{public}@(%d)", buf, 0x12u);
  }

  v7 = *(a1 + 32);
  v8 = *(v7 + 24);
  v9 = *(a1 + 40);
  v10 = *(v7 + 48);
  v11 = v9;
  v12 = v3;
  v13 = v8;
  v14 = dispatch_time(0, 3000000000);
  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 3221225472;
  *&buf[16] = ___scheduleCleanup_block_invoke;
  v34 = &unk_1E7ADC5F0;
  v35 = v10;
  v36 = v12;
  v37 = *&v11;
  v15 = v11;
  v16 = v12;
  v17 = v10;
  dispatch_after(v14, v13, buf);

  v18 = *(*(a1 + 32) + 72);
  v19 = *(a1 + 40);
  v20 = *(*(a1 + 32) + 48);
  v21 = v19;
  v22 = v16;
  v23 = [v20 objectForKeyedSubscript:v22];
  LODWORD(v16) = v23 == 0;

  if (v16)
  {
    v24 = objc_opt_new();
    [v20 setObject:v24 forKeyedSubscript:v22];
  }

  v25 = [v20 objectForKeyedSubscript:v22];
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 1;
  if ([v25 count])
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = ___queue_verifyThresholdAndAddDateRecord_block_invoke;
    v34 = &unk_1E7ADC5C8;
    v35 = v21;
    v36 = &v29;
    v37 = v18;
    [v25 enumerateObjectsUsingBlock:buf];
  }

  v26 = v30[3];
  [v25 addObject:v21];
  _Block_object_dispose(&v29, 8);

  if (v18 <= v26)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      __50__DMCDaemonConnectionTracker_trackRequestFromPID___block_invoke_cold_1(v22, v2);
    }

    v27 = [*(*v2 + 48) objectForKeyedSubscript:v22];
    [v27 removeAllObjects];

    v28 = *(*v2 + 16);
    if (v28)
    {
      (*(v28 + 16))(v28, *(a1 + 48), v22);
    }
  }
}

- (id)_nameForProcessWithPID:(int)d cache:(id)cache
{
  v4 = *&d;
  v18 = *MEMORY[0x1E69E9840];
  cacheCopy = cache;
  v6 = [MEMORY[0x1E696AD98] numberWithInt:v4];
  v7 = [cacheCopy objectForKeyedSubscript:v6];

  if (v7)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInt:v4];
    v9 = [cacheCopy objectForKeyedSubscript:v8];
    goto LABEL_15;
  }

  if (proc_name(v4, buffer, 0x100u) < 1)
  {
    v16 = 648;
    dword_1EB757E0C = v4;
    byte_1EB758323 = 0;
    v8 = 0;
    if (sysctl(_nameForProcessWithPID_cache__name, 4u, &_nameForProcessWithPID_cache__kp, &v16, 0, 0) || !byte_1EB758323)
    {
      goto LABEL_9;
    }

    v10 = MEMORY[0x1E696AEC0];
    v11 = &byte_1EB758323;
  }

  else
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = buffer;
  }

  v8 = [v10 stringWithUTF8String:v11];
LABEL_9:
  if (v8)
  {
    v12 = [cacheCopy objectForKeyedSubscript:v8];
    if (v12)
    {
      [cacheCopy setObject:0 forKeyedSubscript:v12];
    }

    v13 = [MEMORY[0x1E696AD98] numberWithInt:v4];
    [cacheCopy setObject:v8 forKeyedSubscript:v13];

    v14 = [MEMORY[0x1E696AD98] numberWithInt:v4];
    [cacheCopy setObject:v14 forKeyedSubscript:v8];

    v9 = v8;
  }

  else
  {
    v12 = [MEMORY[0x1E696AD98] numberWithInt:v4];
    v9 = @"unknown";
    [cacheCopy setObject:@"unknown" forKeyedSubscript:v12];
  }

LABEL_15:

  return v9;
}

void __53__DMCDaemonConnectionTracker_trackConnectionFromPID___block_invoke_cold_1(void *a1, uint64_t a2)
{
  v4 = *MEMORY[0x1E69E9840];
  [a1 UTF8String];
  [*(*a2 + 32) UTF8String];
  OUTLINED_FUNCTION_0();
  _os_log_fault_impl(&dword_1B1630000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "%s has established too many connections to %s in the last %.1f second.", v3, 0x20u);
}

void __50__DMCDaemonConnectionTracker_trackRequestFromPID___block_invoke_cold_1(void *a1, uint64_t a2)
{
  v4 = *MEMORY[0x1E69E9840];
  [a1 UTF8String];
  [*(*a2 + 32) UTF8String];
  OUTLINED_FUNCTION_0();
  _os_log_fault_impl(&dword_1B1630000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "%s has made too many requests to %s in the last %.1f second.", v3, 0x20u);
}

@end