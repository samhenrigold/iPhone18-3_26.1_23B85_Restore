@interface _DKActivityThrottler
- (id)_minimumIntervalScheduledActionsContainsActionName:(id *)name;
- (id)dateForKey:(uint64_t)key;
- (id)description;
- (id)keyForName:(void *)name;
- (void)_minimumIntervalScheduledActionsAddActionName:(uint64_t)name;
- (void)_minimumIntervalScheduledActionsRemoveActionName:(uint64_t)name;
- (void)_performNoMoreOftenInSecondsThan:(void *)than name:(void *)name activityBlock:(double)block throttleBlock:;
- (void)_performOrScheduleWithTimeInterval:(void *)interval name:(void *)name queue:(unint64_t)queue activityBlock:(double)block callDepth:;
- (void)_performWithDelayInSecondsOf:(void *)of name:(void *)name queue:(double)queue activityBlock:;
- (void)clearDateForKey:(uint64_t)key;
- (void)clearHistoryForName:(void *)name;
- (void)initWithStore:(void *)store;
- (void)setDate:(void *)date forKey:;
@end

@implementation _DKActivityThrottler

- (void)_performNoMoreOftenInSecondsThan:(void *)than name:(void *)name activityBlock:(double)block throttleBlock:
{
  v18 = a2;
  thanCopy = than;
  nameCopy = name;
  if (self)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"_DKThrottledActivityLast%@ActivityDate", v18];
    v13 = [(_DKActivityThrottler *)selfCopy dateForKey:v12];
    v14 = v13;
    if (v13 && ([v13 timeIntervalSinceNow], v16 = v15, -v15 < block))
    {

      objc_sync_exit(selfCopy);
      if (nameCopy)
      {
        nameCopy[2](nameCopy, v16 + block);
      }
    }

    else
    {
      date = [MEMORY[0x1E695DF00] date];
      [(_DKActivityThrottler *)selfCopy setDate:date forKey:v12];

      objc_sync_exit(selfCopy);
      if (thanCopy)
      {
        thanCopy[2](thanCopy);
      }
    }
  }
}

- (void)_performOrScheduleWithTimeInterval:(void *)interval name:(void *)name queue:(unint64_t)queue activityBlock:(double)block callDepth:
{
  v40 = *MEMORY[0x1E69E9840];
  v11 = a2;
  intervalCopy = interval;
  nameCopy = name;
  if (self)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (queue)
    {
      if (queue >= 0xB)
      {
        v15 = MEMORY[0x1E69E9C10];
        v16 = MEMORY[0x1E69E9C10];
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v17 = [MEMORY[0x1E696AD98] numberWithDouble:block];
          [_DKActivityThrottler _performOrScheduleWithTimeInterval:v11 name:v17 queue:v39 activityBlock:? callDepth:?];
        }

        goto LABEL_14;
      }
    }

    else if ([(_DKActivityThrottler *)selfCopy _minimumIntervalScheduledActionsContainsActionName:v11])
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        [_DKActivityThrottler _performOrScheduleWithTimeInterval:v11 name:? queue:? activityBlock:? callDepth:?];
      }

      goto LABEL_14;
    }

    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __94___DKActivityThrottler__performOrScheduleWithTimeInterval_name_queue_activityBlock_callDepth___block_invoke;
    v33[3] = &unk_1E7369A10;
    v33[4] = selfCopy;
    v18 = v11;
    v34 = v18;
    blockCopy = block;
    v19 = intervalCopy;
    v35 = v19;
    v20 = nameCopy;
    v36 = v20;
    queueCopy = queue;
    v21 = MEMORY[0x193B00C50](v33);
    [(_DKActivityThrottler *)selfCopy _minimumIntervalScheduledActionsAddActionName:v18];
    v22 = dispatch_get_current_queue();
    v23 = v22 == v19;

    if (v23)
    {
      [(_DKActivityThrottler *)selfCopy _performNoMoreOftenInSecondsThan:v18 name:v20 activityBlock:v21 throttleBlock:block];
      [(_DKActivityThrottler *)selfCopy _minimumIntervalScheduledActionsRemoveActionName:v18];
    }

    else
    {
      v24 = v18;
      [v18 UTF8String];
      v25 = os_transaction_create();
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __94___DKActivityThrottler__performOrScheduleWithTimeInterval_name_queue_activityBlock_callDepth___block_invoke_2;
      v27[3] = &unk_1E73699C0;
      v27[4] = selfCopy;
      blockCopy2 = block;
      v28 = v18;
      v30 = v20;
      v31 = v21;
      v29 = v25;
      v26 = v25;
      dispatch_async(v19, v27);
    }

LABEL_14:
    objc_sync_exit(selfCopy);
  }
}

- (void)_performWithDelayInSecondsOf:(void *)of name:(void *)name queue:(double)queue activityBlock:
{
  v25 = *MEMORY[0x1E69E9840];
  v9 = a2;
  ofCopy = of;
  nameCopy = name;
  if (self)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if ([selfCopy[2] containsObject:v9])
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        [_DKActivityThrottler _performOrScheduleWithTimeInterval:v9 name:? queue:? activityBlock:? callDepth:?];
      }
    }

    else
    {
      [selfCopy[2] addObject:v9];
      v13 = MEMORY[0x1E69E9C10];
      v14 = MEMORY[0x1E69E9C10];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v15 = [MEMORY[0x1E696AD98] numberWithDouble:queue];
        [_DKActivityThrottler _performWithDelayInSecondsOf:v9 name:v15 queue:v24 activityBlock:?];
      }

      v16 = v9;
      [v9 UTF8String];
      v17 = os_transaction_create();
      v18 = dispatch_time(0, (queue * 1000000000.0));
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __78___DKActivityThrottler__performWithDelayInSecondsOf_name_queue_activityBlock___block_invoke;
      v20[3] = &unk_1E7369A38;
      v23 = nameCopy;
      v20[4] = selfCopy;
      v21 = v9;
      v22 = v17;
      v19 = v17;
      dispatch_after(v18, ofCopy, v20);
    }

    objc_sync_exit(selfCopy);
  }
}

- (void)clearHistoryForName:(void *)name
{
  v3 = a2;
  if (name)
  {
    v6 = v3;
    nameCopy = name;
    objc_sync_enter(nameCopy);
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"_DKThrottledActivityLast%@ActivityDate", v6];
    [(_DKActivityThrottler *)nameCopy clearDateForKey:v5];

    objc_sync_exit(nameCopy);
    v3 = v6;
  }
}

- (id)_minimumIntervalScheduledActionsContainsActionName:(id *)name
{
  v3 = a2;
  if (name)
  {
    v4 = name[1];
    objc_sync_enter(v4);
    name = [name[1] containsObject:v3];
    objc_sync_exit(v4);
  }

  return name;
}

- (void)_minimumIntervalScheduledActionsAddActionName:(uint64_t)name
{
  v4 = a2;
  if (name)
  {
    v3 = *(name + 8);
    objc_sync_enter(v3);
    [*(name + 8) addObject:v4];
    objc_sync_exit(v3);
  }
}

- (void)_minimumIntervalScheduledActionsRemoveActionName:(uint64_t)name
{
  v4 = a2;
  if (name)
  {
    v3 = *(name + 8);
    objc_sync_enter(v3);
    [*(name + 8) removeObject:v4];
    objc_sync_exit(v3);
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = _CDPrettyPrintCollection(self->_minimumIntervalScheduledActions, 0, 0, 0);
  v5 = _CDPrettyPrintCollection(self->_delayScheduledActions, 0, 0, 0);
  v6 = [v3 stringWithFormat:@"{ minimumIntervalScheduledActions=%@, delayScheduledActions=%@ }", v4, v5];

  return v6;
}

- (void)initWithStore:(void *)store
{
  v4 = a2;
  if (store)
  {
    v21.receiver = store;
    v21.super_class = _DKActivityThrottler;
    v5 = objc_msgSendSuper2(&v21, sel_init);
    store = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 5, a2);
      v6 = objc_opt_new();
      v7 = store[1];
      store[1] = v6;

      v8 = objc_opt_new();
      v9 = store[2];
      store[2] = v8;

      v10 = objc_alloc_init(MEMORY[0x1E695DEE0]);
      [v10 setCountLimit:200];
      v11 = MEMORY[0x1E696AEC0];
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      store = [v11 stringWithFormat:@"%@@%p", v13, store];
      [v10 setName:store];

      v15 = store[3];
      store[3] = v10;
      v16 = v10;

      name = [v16 name];
      v18 = dispatch_queue_create([name UTF8String], 0);
      v19 = store[4];
      store[4] = v18;
    }
  }

  return store;
}

- (id)keyForName:(void *)name
{
  if (name)
  {
    name = [MEMORY[0x1E696AEC0] stringWithFormat:@"_DKThrottledActivityLast%@ActivityDate", a2];
    v2 = vars8;
  }

  return name;
}

- (void)setDate:(void *)date forKey:
{
  v5 = a2;
  dateCopy = date;
  if (self)
  {
    [*(self + 24) setObject:v5 forKey:dateCopy];
    v7 = *(self + 32);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __39___DKActivityThrottler_setDate_forKey___block_invoke;
    block[3] = &unk_1E7367A48;
    block[4] = self;
    v9 = v5;
    v10 = dateCopy;
    dispatch_async(v7, block);
  }
}

- (id)dateForKey:(uint64_t)key
{
  v3 = a2;
  if (!key)
  {
    goto LABEL_9;
  }

  v4 = [*(key + 24) objectForKey:v3];
  if (v4)
  {
    v5 = v4;
    v6 = 1;
  }

  else
  {
    v5 = [*(key + 40) objectForKey:v3];
    v6 = v5 == 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v5 = 0;
  }

  [v5 timeIntervalSinceNow];
  if (v7 > 0.0)
  {

LABEL_9:
    v5 = 0;
    goto LABEL_15;
  }

  if (v5)
  {
    v8 = v6;
  }

  else
  {
    v8 = 1;
  }

  if ((v8 & 1) == 0)
  {
    [*(key + 24) setObject:v5 forKey:v3];
  }

LABEL_15:

  return v5;
}

- (void)clearDateForKey:(uint64_t)key
{
  if (key)
  {
    v3 = *(key + 24);
    v4 = a2;
    [v3 removeObjectForKey:v4];
    [*(key + 40) removeObjectForKey:v4];
  }
}

- (void)_performOrScheduleWithTimeInterval:(uint64_t)a3 name:queue:activityBlock:callDepth:.cold.1(uint64_t a1, void *a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_21(a1, a2, a3, 5.778e-34);
  _os_log_error_impl(&dword_191750000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Runaway throttled activity '%@' with interval of %@ seconds", v4, 0x16u);
}

- (void)_performOrScheduleWithTimeInterval:(uint64_t)a1 name:queue:activityBlock:callDepth:.cold.2(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 138412290;
  v2 = a1;
  _os_log_debug_impl(&dword_191750000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Activity '%@' is already scheduled", &v1, 0xCu);
}

- (void)_performWithDelayInSecondsOf:(uint64_t)a3 name:queue:activityBlock:.cold.1(uint64_t a1, void *a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_21(a1, a2, a3, 5.778e-34);
  _os_log_debug_impl(&dword_191750000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Delaying activity '%@' by %@ seconds", v4, 0x16u);
}

@end