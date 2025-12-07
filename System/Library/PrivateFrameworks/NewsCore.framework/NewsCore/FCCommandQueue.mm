@interface FCCommandQueue
- (BOOL)_isEmpty;
- (FCCommandQueue)initWithContext:(id)context storeDirectory:(id)directory storeFilename:(id)filename urgency:(int64_t)urgency suspended:(BOOL)suspended delegate:(id)delegate;
- (NSArray)enqueuedCommands;
- (id)initWithContext:(void *)context persistentStorePath:(void *)path urgency:(int)urgency suspended:(void *)suspended delegate:;
- (uint64_t)_qualityOfServiceForNextCommand;
- (void)_addCommand:(void *)command saveCompletion:;
- (void)_executeNextCommand;
- (void)_savePendingCommands;
- (void)_scheduleCommandExecution;
- (void)activityObservingApplicationDidEnterBackground;
- (void)addCommand:(id)command;
- (void)addCommand:(id)command saveCompletion:(id)completion;
- (void)clear;
- (void)command:(id)command didFinishWithStatus:(unint64_t)status;
- (void)dealloc;
- (void)flushWithCompletionHandler:(id)handler;
- (void)networkReachabilityDidChange:(id)change;
- (void)resume;
@end

@implementation FCCommandQueue

void __31__FCCommandQueue__loadFromDisk__block_invoke(uint64_t a1)
{
  v31[8] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[2];
  }

  v3 = v2;
  v4 = [v3 appActivityMonitor];
  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = *(v5 + 16);
  }

  else
  {
    v6 = 0;
  }

  v7 = [v6 backgroundTaskable];
  v8 = [FCKeyValueStoreSavePolicy appBackgroundPolicyWithActivityMonitor:v4 backgroundTaskable:v7];

  v9 = [FCKeyValueStore alloc];
  v10 = *(a1 + 32);
  if (v10)
  {
    v10 = v10[3];
  }

  v11 = v10;
  v12 = [v11 lastPathComponent];
  v13 = *(a1 + 32);
  if (v13)
  {
    v13 = v13[3];
  }

  v14 = v13;
  v15 = [v14 stringByDeletingLastPathComponent];
  v16 = [(FCKeyValueStore *)v9 initWithName:v12 directory:v15 version:3 options:0 classRegistry:0 migrator:0 savePolicy:v8];
  v17 = *(a1 + 32);
  if (v17)
  {
    objc_storeStrong((v17 + 40), v16);
  }

  v18 = *(a1 + 32);
  if (v18)
  {
    v19 = v18[5];
    v20 = [v19 objectForKey:@"pendingCommands"];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __48__FCCommandQueue__deserializeCommandsFromStore___block_invoke;
    v31[3] = &unk_1E7C40270;
    v31[4] = v18;
    v18 = [v20 fc_arrayByTransformingWithBlock:v31];
  }

  else
  {
    v19 = 0;
  }

  v21 = *(a1 + 32);
  if (v21)
  {
    v22 = *(v21 + 88);
  }

  else
  {
    v22 = 0;
  }

  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __31__FCCommandQueue__loadFromDisk__block_invoke_2;
  v29[3] = &unk_1E7C36C58;
  v29[4] = v21;
  v23 = v18;
  v30 = v23;
  [v22 performWithLockSync:v29];
  for (i = [v23 count]; i; --i)
  {
    v26 = *(a1 + 32);
    if (v26)
    {
      v25 = *(v26 + 96);
    }

    else
    {
      v25 = 0;
    }

    dispatch_group_enter(v25);
  }

  v27 = *(a1 + 32);
  if (v27)
  {
    v28 = *(v27 + 96);
  }

  else
  {
    v28 = 0;
  }

  dispatch_group_leave(v28);
  [(FCCommandQueue *)*(a1 + 32) _scheduleCommandExecution];
}

void __33__FCCommandQueue_sharedWorkQueue__block_invoke()
{
  v0 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
  v1 = dispatch_queue_create("FCCommandQueue.workQueue", v0);
  v2 = _MergedGlobals_166;
  _MergedGlobals_166 = v1;

  v3 = _MergedGlobals_166;
  v4 = FCCommandQueueWorkQueueUnique;
  v5 = FCCommandQueueWorkQueueUnique;

  dispatch_queue_set_specific(v3, v4, v5, 0);
}

- (void)clear
{
  [MEMORY[0x1E696AF00] isMainThread];
  if (self)
  {
    workQueue = self->_workQueue;
  }

  else
  {
    workQueue = 0;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __23__FCCommandQueue_clear__block_invoke;
  block[3] = &unk_1E7C36EA0;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (uint64_t)_qualityOfServiceForNextCommand
{
  if (result)
  {
    v1 = result;
    WeakRetained = objc_loadWeakRetained((result + 56));
    if (WeakRetained && (v3 = WeakRetained, v4 = objc_loadWeakRetained((v1 + 56)), v5 = objc_opt_respondsToSelector(), v4, v3, (v5 & 1) != 0))
    {
      v6 = objc_loadWeakRetained((v1 + 56));
      v7 = [v6 qualityOfServiceForNextCommandInCommandQueue:v1];

      return v7;
    }

    else
    {
      return 9;
    }
  }

  return result;
}

- (void)_executeNextCommand
{
  v25 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v2 = FCCommandQueueWorkQueueUnique;
    if (dispatch_get_specific(FCCommandQueueWorkQueueUnique) != v2 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"accessing private structures outside the work queue"];
      v19 = 136315906;
      v20 = "[FCCommandQueue _executeNextCommand]";
      v21 = 2080;
      v22 = "FCCommandQueue.m";
      v23 = 1024;
      *v24 = 319;
      *&v24[4] = 2114;
      *&v24[6] = v18;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v19, 0x26u);
    }

    if ((*(self + 8) & 1) != 0 || (*(self + 9) & 1) != 0 || ![*(self + 80) count])
    {
      v12 = FCCommandQueueLog;
      if (!os_log_type_enabled(FCCommandQueueLog, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v13 = *(self + 32);
      if (*(self + 8))
      {
        v14 = @"true";
      }

      else
      {
        v14 = @"false";
      }

      if (*(self + 9))
      {
        v15 = @"true";
      }

      else
      {
        v15 = @"false";
      }

      v16 = *(self + 80);
      v11 = v13;
      firstObject = v12;
      v17 = [v16 count];
      v19 = 138544130;
      v20 = v13;
      v21 = 2114;
      v22 = v14;
      v23 = 2114;
      *v24 = v15;
      *&v24[8] = 2048;
      *&v24[10] = v17;
      _os_log_impl(&dword_1B63EF000, firstObject, OS_LOG_TYPE_DEFAULT, "<%{public}@> not executing next command because suspended=%{public}@, executing=%{public}@, commandCount=%lu", &v19, 0x2Au);
    }

    else
    {
      *(self + 9) = 1;
      dispatch_group_enter(*(self + 104));
      v3 = *(self + 80);
      firstObject = [v3 firstObject];

      v5 = FCCommandQueueLog;
      if (os_log_type_enabled(FCCommandQueueLog, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(self + 32);
        v7 = v6;
        v8 = v5;
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        v19 = 138543874;
        v20 = v6;
        v21 = 2114;
        v22 = v10;
        v23 = 2048;
        *v24 = firstObject;
        _os_log_impl(&dword_1B63EF000, v8, OS_LOG_TYPE_DEFAULT, "<%{public}@> will execute next command: <%{public}@ %p>", &v19, 0x20u);
      }

      v11 = *(self + 16);
      [firstObject executeWithContext:v11 delegate:self qualityOfService:[(FCCommandQueue *)self _qualityOfServiceForNextCommand]];
    }
  }
}

- (void)_scheduleCommandExecution
{
  v25 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v2 = FCCommandQueueWorkQueueUnique;
    if (dispatch_get_specific(FCCommandQueueWorkQueueUnique) != v2 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"accessing private structures outside the work queue"];
      *buf = 136315906;
      v18 = "[FCCommandQueue _scheduleCommandExecution]";
      v19 = 2080;
      v20 = "FCCommandQueue.m";
      v21 = 1024;
      v22 = 286;
      v23 = 2114;
      v24 = v15;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

    v3 = *(self + 48);
    if (v3 == 2)
    {
      [(FCCommandQueue *)self _executeNextCommand];
    }

    else
    {
      v4 = *(self + 72);
      if (!v4)
      {
        v5 = *(self + 64);
        v6 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v5);
        v7 = *(self + 72);
        *(self + 72) = v6;

        v8 = *(self + 72);
        _qualityOfServiceForNextCommand = [(FCCommandQueue *)self _qualityOfServiceForNextCommand];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __43__FCCommandQueue__scheduleCommandExecution__block_invoke;
        block[3] = &unk_1E7C36EA0;
        block[4] = self;
        v10 = FCBlockWithQualityOfService(_qualityOfServiceForNextCommand, block);
        dispatch_source_set_event_handler(v8, v10);

        dispatch_resume(*(self + 72));
        v3 = *(self + 48);
        v4 = *(self + 72);
      }

      v11 = v4;
      if (v3 == 1)
      {
        v12 = 5000000000;
      }

      else
      {
        v12 = 60000000000;
      }

      if (v3 == 1)
      {
        v13 = 2000000000;
      }

      else
      {
        v13 = 15000000000;
      }

      v14 = dispatch_time(0, v12);
      dispatch_source_set_timer(v11, v14, 0xFFFFFFFFFFFFFFFFLL, v13);
    }
  }
}

uint64_t __31__FCCommandQueue__loadFromDisk__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v1 = v1[10];
  }

  return [v1 fc_safelyAddObjectsFromArray:*(a1 + 40)];
}

void __23__FCCommandQueue_clear__block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if ((!v2 || (*(v2 + 8) & 1) == 0) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"should only clear the command queue when it's suspended"];
    *buf = 136315906;
    v12 = "[FCCommandQueue clear]_block_invoke";
    v13 = 2080;
    v14 = "FCCommandQueue.m";
    v15 = 1024;
    v16 = 250;
    v17 = 2114;
    v18 = v9;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  while (1)
  {
    v3 = *(a1 + 32);
    v4 = v3 ? *(v3 + 80) : 0;
    v5 = [v4 count];
    isa = *(a1 + 32);
    if (!v5)
    {
      break;
    }

    if (isa)
    {
      isa = isa[12].isa;
    }

    dispatch_group_leave(isa);
    v7 = *(a1 + 32);
    if (v7)
    {
      v8 = *(v7 + 88);
    }

    else
    {
      v8 = 0;
    }

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __23__FCCommandQueue_clear__block_invoke_33;
    v10[3] = &unk_1E7C36EA0;
    v10[4] = v7;
    [v8 performWithLockSync:v10];
  }

  [(FCCommandQueue *)isa _savePendingCommands];
}

- (void)_savePendingCommands
{
  v10 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v2 = FCCommandQueueWorkQueueUnique;
    if (dispatch_get_specific(FCCommandQueueWorkQueueUnique) != v2 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"accessing private structures outside the work queue"];
      *v8 = 136315906;
      *&v8[4] = "[FCCommandQueue _savePendingCommands]";
      *&v8[12] = 2080;
      *&v8[14] = "FCCommandQueue.m";
      *&v8[22] = 1024;
      LODWORD(v9) = 394;
      WORD2(v9) = 2114;
      *(&v9 + 6) = v7;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v8, 0x26u);
    }

    v3 = *(self + 40);
    if (v3)
    {
      v4 = *(self + 80);
      *v8 = MEMORY[0x1E69E9820];
      *&v8[8] = 3221225472;
      *&v8[16] = __45__FCCommandQueue__serializeCommands_toStore___block_invoke;
      *&v9 = &unk_1E7C40C08;
      *(&v9 + 1) = self;
      v5 = v3;
      v6 = [v4 fc_arrayByTransformingWithBlock:v8];
      [v5 setObject:v6 forKey:@"pendingCommands"];
    }
  }
}

- (id)initWithContext:(void *)context persistentStorePath:(void *)path urgency:(int)urgency suspended:(void *)suspended delegate:
{
  v41 = *MEMORY[0x1E69E9840];
  v12 = a2;
  contextCopy = context;
  suspendedCopy = suspended;
  if (self)
  {
    if (!v12 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v37 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "context != nil"];
      *buf = 136315906;
      *&buf[4] = "[FCCommandQueue initWithContext:persistentStorePath:urgency:suspended:delegate:]";
      *&buf[12] = 2080;
      *&buf[14] = "FCCommandQueue.m";
      *&buf[22] = 1024;
      LODWORD(v40) = 89;
      WORD2(v40) = 2114;
      *(&v40 + 6) = v37;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

    v38.receiver = self;
    v38.super_class = FCCommandQueue;
    v15 = objc_msgSendSuper2(&v38, sel_init);
    self = v15;
    if (v15)
    {
      if (v12)
      {
        objc_storeStrong(v15 + 2, a2);
        v16 = [contextCopy copy];
        v17 = self[3];
        self[3] = v16;

        lastPathComponent = [contextCopy lastPathComponent];
        stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];
        v20 = self[4];
        self[4] = stringByDeletingPathExtension;

        array = [MEMORY[0x1E695DF70] array];
        v22 = self[10];
        self[10] = array;

        v23 = [objc_alloc(MEMORY[0x1E69B6920]) initWithOptions:1];
        v24 = self[11];
        self[11] = v23;

        v25 = dispatch_group_create();
        v26 = self[12];
        self[12] = v25;

        v27 = dispatch_group_create();
        v28 = self[13];
        self[13] = v27;

        self[6] = path;
        *(self + 8) = urgency;
        objc_storeWeak(self + 7, suspendedCopy);
        v29 = FCCommandQueueLog;
        if (os_log_type_enabled(FCCommandQueueLog, OS_LOG_TYPE_DEFAULT))
        {
          v30 = @"resumed";
          v31 = self[4];
          if (urgency)
          {
            v30 = @"suspended";
          }

          *buf = 138543618;
          *&buf[4] = v31;
          *&buf[12] = 2114;
          *&buf[14] = v30;
          v32 = v29;
          _os_log_impl(&dword_1B63EF000, v32, OS_LOG_TYPE_DEFAULT, "<%{public}@> command queue created in %{public}@ state", buf, 0x16u);
        }

        objc_opt_self();
        if (qword_1EDB274A0 != -1)
        {
          dispatch_once(&qword_1EDB274A0, &__block_literal_global_80);
        }

        objc_storeStrong(self + 8, _MergedGlobals_166);
        networkReachability = [v12 networkReachability];
        [networkReachability addObserver:self];

        appActivityMonitor = [v12 appActivityMonitor];
        [appActivityMonitor addObserver:self];

        [MEMORY[0x1E696AF00] isMainThread];
        if (self[3])
        {
          dispatch_group_enter(self[12]);
          v35 = self[8];
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 3221225472;
          *&buf[16] = __31__FCCommandQueue__loadFromDisk__block_invoke;
          *&v40 = &unk_1E7C36EA0;
          *(&v40 + 1) = self;
          dispatch_async(v35, buf);
        }
      }

      else
      {

        self = 0;
      }
    }
  }

  return self;
}

- (FCCommandQueue)initWithContext:(id)context storeDirectory:(id)directory storeFilename:(id)filename urgency:(int64_t)urgency suspended:(BOOL)suspended delegate:(id)delegate
{
  suspendedCopy = suspended;
  v30 = *MEMORY[0x1E69E9840];
  directoryCopy = directory;
  filenameCopy = filename;
  delegateCopy = delegate;
  contextCopy = context;
  if (![filenameCopy length] && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"expecting a valid storeFilename"];
    v22 = 136315906;
    v23 = "[FCCommandQueue initWithContext:storeDirectory:storeFilename:urgency:suspended:delegate:]";
    v24 = 2080;
    v25 = "FCCommandQueue.m";
    v26 = 1024;
    v27 = 137;
    v28 = 2114;
    v29 = v21;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v22, 0x26u);
  }

  v18 = [directoryCopy stringByAppendingPathComponent:filenameCopy];
  v19 = [(FCCommandQueue *)&self->super.isa initWithContext:contextCopy persistentStorePath:v18 urgency:urgency suspended:suspendedCopy delegate:delegateCopy];

  return v19;
}

- (void)dealloc
{
  if (self)
  {
    context = self->_context;
  }

  else
  {
    context = 0;
  }

  v4 = context;
  networkReachability = [(FCCloudContext *)v4 networkReachability];
  [networkReachability removeObserver:self];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v7.receiver = self;
  v7.super_class = FCCommandQueue;
  [(FCCommandQueue *)&v7 dealloc];
}

- (void)resume
{
  v10 = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E696AF00] isMainThread];
  v3 = FCCommandQueueLog;
  if (os_log_type_enabled(FCCommandQueueLog, OS_LOG_TYPE_DEFAULT))
  {
    if (self)
    {
      name = self->_name;
    }

    else
    {
      name = 0;
    }

    *buf = 138543362;
    v9 = name;
    v5 = v3;
    _os_log_impl(&dword_1B63EF000, v5, OS_LOG_TYPE_DEFAULT, "<%{public}@> will resume", buf, 0xCu);
  }

  if (self)
  {
    workQueue = self->_workQueue;
  }

  else
  {
    workQueue = 0;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __24__FCCommandQueue_resume__block_invoke;
  block[3] = &unk_1E7C36EA0;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __24__FCCommandQueue_resume__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2 && (*(v2 + 8) & 1) != 0)
  {
    goto LABEL_5;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"can't resume the command queue unless it's suspended"];
    v5 = 136315906;
    v6 = "[FCCommandQueue resume]_block_invoke";
    v7 = 2080;
    v8 = "FCCommandQueue.m";
    v9 = 1024;
    v10 = 160;
    v11 = 2114;
    v12 = v4;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v5, 0x26u);

    v2 = *(a1 + 32);
    if (v2)
    {
      goto LABEL_5;
    }

LABEL_8:
    v3 = 0;
    goto LABEL_6;
  }

  if (!v2)
  {
    goto LABEL_8;
  }

LABEL_5:
  *(v2 + 8) = 0;
  v3 = *(a1 + 32);
LABEL_6:
  [(FCCommandQueue *)v3 _scheduleCommandExecution];
}

- (void)addCommand:(id)command
{
  v4 = MEMORY[0x1E696AF00];
  commandCopy = command;
  [v4 isMainThread];
  [(FCCommandQueue *)self _addCommand:commandCopy saveCompletion:0];
}

- (void)_addCommand:(void *)command saveCompletion:
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  commandCopy = command;
  if (self && v5)
  {
    v7 = FCCommandQueueLog;
    if (os_log_type_enabled(FCCommandQueueLog, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(self + 32);
      v9 = v8;
      v10 = v7;
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      *buf = 138543874;
      v19 = v8;
      v20 = 2114;
      v21 = v12;
      v22 = 2048;
      v23 = v5;
      _os_log_impl(&dword_1B63EF000, v10, OS_LOG_TYPE_DEFAULT, "<%{public}@> will add command <%{public}@ %p>", buf, 0x20u);
    }

    dispatch_group_enter(*(self + 96));
    v13 = *(self + 64);
    _qualityOfServiceForNextCommand = [(FCCommandQueue *)self _qualityOfServiceForNextCommand];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __45__FCCommandQueue__addCommand_saveCompletion___block_invoke;
    v15[3] = &unk_1E7C38FF0;
    v15[4] = self;
    v16 = v5;
    v17 = commandCopy;
    FCDispatchAsyncWithQualityOfService(v13, _qualityOfServiceForNextCommand, v15);
  }
}

- (void)addCommand:(id)command saveCompletion:(id)completion
{
  v6 = MEMORY[0x1E696AF00];
  completionCopy = completion;
  commandCopy = command;
  [v6 isMainThread];
  [(FCCommandQueue *)self _addCommand:commandCopy saveCompletion:completionCopy];
}

void __45__FCCommandQueue__addCommand_saveCompletion___block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[10];
  }

  v3 = v2;
  v4 = [v3 lastObject];

  v5 = *(a1 + 32);
  if (!v5)
  {
LABEL_6:
    if (!v4)
    {
      goto LABEL_18;
    }

    goto LABEL_9;
  }

  if (*(v5 + 9) == 1)
  {
    LOBYTE(v5) = [*(v5 + 80) count] == 1;
    goto LABEL_6;
  }

  LOBYTE(v5) = 0;
  if (!v4)
  {
    goto LABEL_18;
  }

LABEL_9:
  if ((v5 & 1) != 0 || ![v4 canCoalesceWithCommand:*(a1 + 40)])
  {
LABEL_18:
    v18 = *(a1 + 32);
    if (v18)
    {
      v19 = *(v18 + 88);
    }

    else
    {
      v19 = 0;
    }

    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __45__FCCommandQueue__addCommand_saveCompletion___block_invoke_27;
    v25[3] = &unk_1E7C36C58;
    v25[4] = v18;
    v26 = *(a1 + 40);
    [v19 performWithLockSync:v25];

    goto LABEL_21;
  }

  v6 = FCCommandQueueLog;
  if (os_log_type_enabled(FCCommandQueueLog, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    if (v7)
    {
      v8 = *(v7 + 32);
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;
    v10 = v6;
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = *(a1 + 40);
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    *buf = 138544386;
    v28 = v8;
    v29 = 2114;
    v30 = v12;
    v31 = 2048;
    v32 = v13;
    v33 = 2114;
    v34 = v15;
    v35 = 2048;
    v36 = v4;
    _os_log_impl(&dword_1B63EF000, v10, OS_LOG_TYPE_DEFAULT, "<%{public}@> will coalesce command <%{public}@ %p> with <%{public}@ %p>", buf, 0x34u);
  }

  [v4 coalesceWithCommand:*(a1 + 40)];
  v16 = *(a1 + 32);
  if (v16)
  {
    v17 = *(v16 + 96);
  }

  else
  {
    v17 = 0;
  }

  dispatch_group_leave(v17);
LABEL_21:
  [(FCCommandQueue *)*(a1 + 32) _savePendingCommands];
  [(FCCommandQueue *)*(a1 + 32) _scheduleCommandExecution];
  v24 = *(a1 + 48);
  if (v24)
  {
    (*(v24 + 16))(v24, v20, v21, v22, v23);
  }
}

uint64_t __45__FCCommandQueue__addCommand_saveCompletion___block_invoke_27(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v1 = v1[10];
  }

  return [v1 addObject:*(a1 + 40)];
}

- (void)flushWithCompletionHandler:(id)handler
{
  v22 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  [MEMORY[0x1E696AF00] isMainThread];
  if (handlerCopy)
  {
    if ([(FCCommandQueue *)self _isEmpty])
    {
      v5 = FCCommandQueueLog;
      if (os_log_type_enabled(FCCommandQueueLog, OS_LOG_TYPE_DEFAULT))
      {
        if (self)
        {
          name = self->_name;
        }

        else
        {
          name = 0;
        }

        *buf = 138543362;
        v15 = name;
        v7 = v5;
        _os_log_impl(&dword_1B63EF000, v7, OS_LOG_TYPE_DEFAULT, "<%{public}@> no need to flush command queue because it's empty", buf, 0xCu);
      }

      handlerCopy[2](handlerCopy, 1);
    }

    else
    {
      if (self)
      {
        workQueue = self->_workQueue;
      }

      else
      {
        workQueue = 0;
      }

      v10 = workQueue;
      _qualityOfServiceForNextCommand = [(FCCommandQueue *)self _qualityOfServiceForNextCommand];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __45__FCCommandQueue_flushWithCompletionHandler___block_invoke;
      v12[3] = &unk_1E7C37BC0;
      v12[4] = self;
      v13 = handlerCopy;
      FCDispatchAsyncWithQualityOfService(v10, _qualityOfServiceForNextCommand, v12);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "completionHandler != nil"];
    *buf = 136315906;
    v15 = "[FCCommandQueue flushWithCompletionHandler:]";
    v16 = 2080;
    v17 = "FCCommandQueue.m";
    v18 = 1024;
    v19 = 217;
    v20 = 2114;
    v21 = v8;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }
}

- (BOOL)_isEmpty
{
  if (result)
  {
    v1 = result;
    [MEMORY[0x1E696AF00] isMainThread];
    v2 = *(v1 + 96);

    return FCDispatchGroupIsEmpty(v2);
  }

  return result;
}

void __45__FCCommandQueue_flushWithCompletionHandler___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = FCCommandQueueLog;
  if (os_log_type_enabled(FCCommandQueueLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = v3[4];
      v3 = v3[10];
      v5 = v4;
    }

    else
    {
      v4 = 0;
      v5 = 0;
    }

    v6 = v3;
    v7 = v5;
    v8 = v2;
    *buf = 138543618;
    v15 = v4;
    v16 = 2048;
    v17 = [v6 count];
    _os_log_impl(&dword_1B63EF000, v8, OS_LOG_TYPE_DEFAULT, "<%{public}@> need to flush %lu commands from the command queue", buf, 0x16u);
  }

  [(FCCommandQueue *)*(a1 + 32) _executeNextCommand];
  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = *(v9 + 104);
  }

  else
  {
    v10 = 0;
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __45__FCCommandQueue_flushWithCompletionHandler___block_invoke_29;
  v12[3] = &unk_1E7C37778;
  v11 = *(a1 + 40);
  v12[4] = *(a1 + 32);
  v13 = v11;
  dispatch_group_notify(v10, MEMORY[0x1E69E96A0], v12);
}

uint64_t __45__FCCommandQueue_flushWithCompletionHandler___block_invoke_29(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [(FCCommandQueue *)*(a1 + 32) _isEmpty];
  v3 = *(v1 + 16);

  return v3(v1, v2);
}

uint64_t __23__FCCommandQueue_clear__block_invoke_33(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(v1 + 80);
  }

  else
  {
    v2 = 0;
  }

  return [v2 removeObjectAtIndex:0];
}

- (NSArray)enqueuedCommands
{
  [MEMORY[0x1E696AF00] isMainThread];
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__38;
  v12 = __Block_byref_object_dispose__38;
  v13 = 0;
  if (self)
  {
    pendingCommandsLock = self->_pendingCommandsLock;
  }

  else
  {
    pendingCommandsLock = 0;
  }

  v4 = pendingCommandsLock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __34__FCCommandQueue_enqueuedCommands__block_invoke;
  v7[3] = &unk_1E7C37160;
  v7[4] = self;
  v7[5] = &v8;
  [(NFUnfairLock *)v4 performWithLockSync:v7];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __34__FCCommandQueue_enqueuedCommands__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[10];
  }

  v6 = v2;
  v3 = [v6 copy];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __43__FCCommandQueue__scheduleCommandExecution__block_invoke(uint64_t a1)
{
  [(FCCommandQueue *)*(a1 + 32) _executeNextCommand];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 72);
  }

  else
  {
    v3 = 0;
  }

  dispatch_source_cancel(v3);
  v4 = *(a1 + 32);
  if (v4)
  {

    objc_storeStrong((v4 + 72), 0);
  }
}

void __48__FCCommandQueue__applicationDidEnterBackground__block_invoke_2(uint64_t a1)
{
  [(FCCommandQueue *)*(a1 + 32) _executeNextCommand];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 104);
  }

  else
  {
    v3 = 0;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__FCCommandQueue__applicationDidEnterBackground__block_invoke_3;
  block[3] = &unk_1E7C37408;
  block[4] = v2;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = v4;
  v8 = v5;
  dispatch_group_notify(v3, MEMORY[0x1E69E96A0], block);
}

void __48__FCCommandQueue__applicationDidEnterBackground__block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 40);
  }

  else
  {
    v3 = 0;
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48__FCCommandQueue__applicationDidEnterBackground__block_invoke_4;
  v6[3] = &unk_1E7C3A3A0;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = v4;
  v8 = v5;
  [v3 saveWithCompletionHandler:v6];
}

void __48__FCCommandQueue__applicationDidEnterBackground__block_invoke_4(uint64_t a1)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __48__FCCommandQueue__applicationDidEnterBackground__block_invoke_5;
  v4[3] = &unk_1E7C3A3A0;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = v2;
  v6 = v3;
  FCPerformBlockOnMainThread(v4);
}

- (void)command:(id)command didFinishWithStatus:(unint64_t)status
{
  v26 = *MEMORY[0x1E69E9840];
  commandCopy = command;
  v7 = FCCommandQueueLog;
  if (os_log_type_enabled(FCCommandQueueLog, OS_LOG_TYPE_DEFAULT))
  {
    if (self)
    {
      name = self->_name;
    }

    else
    {
      name = 0;
    }

    v9 = name;
    v10 = v7;
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = FCCommandStatusDescription(status);
    *buf = 138544130;
    v19 = name;
    v20 = 2114;
    v21 = v12;
    v22 = 2048;
    v23 = commandCopy;
    v24 = 2114;
    v25 = v13;
    _os_log_impl(&dword_1B63EF000, v10, OS_LOG_TYPE_DEFAULT, "<%{public}@> finished executing command: <%{public}@ %p> with status: %{public}@", buf, 0x2Au);
  }

  if (self)
  {
    workQueue = self->_workQueue;
  }

  else
  {
    workQueue = 0;
  }

  v15 = workQueue;
  _qualityOfServiceForNextCommand = [(FCCommandQueue *)self _qualityOfServiceForNextCommand];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __46__FCCommandQueue_command_didFinishWithStatus___block_invoke;
  v17[3] = &unk_1E7C3C970;
  v17[4] = self;
  v17[5] = status;
  FCDispatchAsyncWithQualityOfService(v15, _qualityOfServiceForNextCommand, v17);
}

void __46__FCCommandQueue_command_didFinishWithStatus___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    *(v2 + 9) = 0;
  }

  v3 = *(a1 + 40);
  if (v3 <= 1)
  {
    if (v3)
    {
      if (v3 == 1)
      {
        v4 = FCCommandQueueLog;
        if (os_log_type_enabled(FCCommandQueueLog, OS_LOG_TYPE_DEFAULT))
        {
          v5 = *(a1 + 32);
          if (v5)
          {
            v5 = *(v5 + 32);
          }

          *buf = 138543362;
          v28 = v5;
          v6 = v4;
          _os_log_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_DEFAULT, "<%{public}@> will try to execute the next command when the network is available", buf, 0xCu);
        }
      }

      goto LABEL_28;
    }

    goto LABEL_19;
  }

  if (v3 == 3)
  {
LABEL_19:
    v16 = FCCommandQueueLog;
    v17 = os_log_type_enabled(FCCommandQueueLog, OS_LOG_TYPE_DEFAULT);
    v18 = *(a1 + 32);
    if (v17)
    {
      if (v18)
      {
        v18 = *(v18 + 32);
      }

      *buf = 138543362;
      v28 = v18;
      v19 = v16;
      _os_log_impl(&dword_1B63EF000, v19, OS_LOG_TYPE_DEFAULT, "<%{public}@> will move on to the next command", buf, 0xCu);

      v18 = *(a1 + 32);
    }

    if (v18)
    {
      v20 = *(v18 + 96);
    }

    else
    {
      v20 = 0;
    }

    dispatch_group_leave(v20);
    v21 = *(a1 + 32);
    if (v21)
    {
      v22 = *(v21 + 88);
    }

    else
    {
      v22 = 0;
    }

    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __46__FCCommandQueue_command_didFinishWithStatus___block_invoke_51;
    v25[3] = &unk_1E7C36EA0;
    v25[4] = v21;
    [v22 performWithLockSync:v25];
    [(FCCommandQueue *)*(a1 + 32) _savePendingCommands];
    [(FCCommandQueue *)*(a1 + 32) _executeNextCommand];
    goto LABEL_28;
  }

  if (v3 == 2)
  {
    v7 = FCCommandQueueLog;
    if (os_log_type_enabled(FCCommandQueueLog, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      if (v8)
      {
        v8 = *(v8 + 32);
      }

      *buf = 138543362;
      v28 = v8;
      v9 = v7;
      _os_log_impl(&dword_1B63EF000, v9, OS_LOG_TYPE_DEFAULT, "<%{public}@> will try to execute the next command in 60s since we got a retry-later error", buf, 0xCu);
    }

    v10 = dispatch_time(0, 60000000000);
    v11 = *(a1 + 32);
    if (v11)
    {
      v12 = *(v11 + 64);
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;
    v14 = [(FCCommandQueue *)v11 _qualityOfServiceForNextCommand];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __46__FCCommandQueue_command_didFinishWithStatus___block_invoke_50;
    block[3] = &unk_1E7C36EA0;
    block[4] = *(a1 + 32);
    v15 = FCBlockWithQualityOfService(v14, block);
    dispatch_after(v10, v13, v15);
  }

LABEL_28:
  v23 = *(a1 + 32);
  if (v23)
  {
    v24 = *(v23 + 104);
  }

  else
  {
    v24 = 0;
  }

  dispatch_group_leave(v24);
}

uint64_t __46__FCCommandQueue_command_didFinishWithStatus___block_invoke_51(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(v1 + 80);
  }

  else
  {
    v2 = 0;
  }

  return [v2 removeObjectAtIndex:0];
}

id __45__FCCommandQueue__serializeCommands_toStore___block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32))
  {
    v3 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:a2 requiringSecureCoding:1 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id __48__FCCommandQueue__deserializeCommandsFromStore___block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 32))
  {
    v2 = MEMORY[0x1E696ACD0];
    v3 = a2;
    v4 = [v2 nf_securelyUnarchiveObjectOfClass:objc_opt_class() withData:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)networkReachabilityDidChange:(id)change
{
  if ([change isNetworkReachable])
  {
    if (self)
    {
      workQueue = self->_workQueue;
    }

    else
    {
      workQueue = 0;
    }

    v5 = workQueue;
    _qualityOfServiceForNextCommand = [(FCCommandQueue *)self _qualityOfServiceForNextCommand];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __47__FCCommandQueue_networkReachabilityDidChange___block_invoke;
    v7[3] = &unk_1E7C36EA0;
    v7[4] = self;
    FCDispatchAsyncWithQualityOfService(v5, _qualityOfServiceForNextCommand, v7);
  }
}

- (void)activityObservingApplicationDidEnterBackground
{
  if (self)
  {
    [MEMORY[0x1E696AF00] isMainThread];
    networkReachability = [(FCCloudContext *)self->_context networkReachability];
    isNetworkReachable = [networkReachability isNetworkReachable];

    if (isNetworkReachable)
    {
      v5 = self->_context;
      backgroundTaskable = [(FCCloudContext *)v5 backgroundTaskable];

      v18 = 0;
      v19 = &v18;
      v20 = 0x2020000000;
      v21 = 0;
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __48__FCCommandQueue__applicationDidEnterBackground__block_invoke;
      v15[3] = &unk_1E7C3A3A0;
      v7 = backgroundTaskable;
      v16 = v7;
      v17 = &v18;
      v8 = [v7 fc_beginBackgroundTaskWithName:@"Command Queue Flush" expirationHandler:v15];
      v19[3] = v8;
      v9 = self->_workQueue;
      _qualityOfServiceForNextCommand = [(FCCommandQueue *)self _qualityOfServiceForNextCommand];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __48__FCCommandQueue__applicationDidEnterBackground__block_invoke_2;
      v12[3] = &unk_1E7C37408;
      v12[4] = self;
      v11 = v7;
      v13 = v11;
      v14 = &v18;
      FCDispatchAsyncWithQualityOfService(v9, _qualityOfServiceForNextCommand, v12);

      _Block_object_dispose(&v18, 8);
    }
  }
}

@end