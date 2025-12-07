@interface MTSyncChangeQueue
- (BOOL)hasPendingChanges;
- (MTSyncChangeQueue)initWithChangeStore:(id)store;
- (id)_resolveChange:(id)change;
- (id)_resolveChange:(id)change resolutionHandler:(id)handler;
- (id)pendingChanges;
- (id)resolveChange:(id)change;
- (void)_enqueueAction:(id)action;
- (void)_enqueueChange:(id)change changeCompareBlock:(id)block;
- (void)dequeueChanges:(id)changes;
- (void)enqueueChange:(id)change;
- (void)loadChanges;
- (void)performBlockOnceChangesAreLoaded:(id)loaded async:(BOOL)async;
- (void)persistChanges;
- (void)removePendingChanges;
@end

@implementation MTSyncChangeQueue

- (MTSyncChangeQueue)initWithChangeStore:(id)store
{
  storeCopy = store;
  v17.receiver = self;
  v17.super_class = MTSyncChangeQueue;
  v6 = [(MTSyncChangeQueue *)&v17 init];
  if (v6)
  {
    v7 = dispatch_queue_attr_make_with_qos_class(0, +[MTScheduler defaultPriority], -1);
    v8 = dispatch_queue_create("com.apple.MTSyncChangeQueue.serial", v7);
    v9 = *(v6 + 1);
    *(v6 + 1) = v8;

    v10 = [MEMORY[0x1E69B3790] schedulerWithDispatchQueue:*(v6 + 1)];
    v11 = *(v6 + 2);
    *(v6 + 2) = v10;

    objc_storeStrong(v6 + 4, store);
    v12 = objc_opt_new();
    v13 = *(v6 + 5);
    *(v6 + 5) = v12;

    v14 = dispatch_group_create();
    v15 = *(v6 + 3);
    *(v6 + 3) = v14;

    dispatch_group_enter(*(v6 + 3));
  }

  return v6;
}

- (void)loadChanges
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = MTLogForCategory(6);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_INFO, "%{public}@ loading changes", buf, 0xCu);
  }

  loadChanges = [(MTSyncChangeStore *)self->_changeStore loadChanges];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __32__MTSyncChangeQueue_loadChanges__block_invoke;
  v6[3] = &unk_1E7B0ECA0;
  v6[4] = self;
  v5 = [loadChanges addSuccessBlock:v6];
}

void __32__MTSyncChangeQueue_loadChanges__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __32__MTSyncChangeQueue_loadChanges__block_invoke_2;
  v7[3] = &unk_1E7B0C928;
  v7[4] = v4;
  v8 = v3;
  v6 = v3;
  [v5 performBlock:v7];
}

void __32__MTSyncChangeQueue_loadChanges__block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = MTLogForCategory(6);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) count];
    v5 = 138543618;
    v6 = v3;
    v7 = 2048;
    v8 = v4;
    _os_log_impl(&dword_1B1F9F000, v2, OS_LOG_TYPE_INFO, "%{public}@ loaded %lu changes", &v5, 0x16u);
  }

  [*(*(a1 + 32) + 40) addObjectsFromArray:*(a1 + 40)];
  dispatch_group_leave(*(*(a1 + 32) + 24));
}

- (void)performBlockOnceChangesAreLoaded:(id)loaded async:(BOOL)async
{
  changesLoaded = self->_changesLoaded;
  if (async)
  {
    dispatch_group_notify(changesLoaded, self->_serialQueue, loaded);
  }

  else
  {
    loadedCopy = loaded;
    dispatch_group_wait(changesLoaded, 0xFFFFFFFFFFFFFFFFLL);
    dispatch_sync(self->_serialQueue, loadedCopy);
  }
}

- (void)persistChanges
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __35__MTSyncChangeQueue_persistChanges__block_invoke;
  v2[3] = &unk_1E7B0C9D8;
  v2[4] = self;
  [(MTSyncChangeQueue *)self performBlockOnceChangesAreLoaded:v2 async:1];
}

void __35__MTSyncChangeQueue_persistChanges__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 32);
  v3 = [*(v1 + 40) copy];
  [v2 persistChanges:v3];
}

- (void)enqueueChange:(id)change
{
  changeCopy = change;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __35__MTSyncChangeQueue_enqueueChange___block_invoke;
  v6[3] = &unk_1E7B0C928;
  v7 = changeCopy;
  selfCopy = self;
  v5 = changeCopy;
  [(MTSyncChangeQueue *)self performBlockOnceChangesAreLoaded:v6 async:1];
}

uint64_t __35__MTSyncChangeQueue_enqueueChange___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  if ([*(a1 + 32) syncType])
  {
    v3 = MTLogForCategory(6);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __35__MTSyncChangeQueue_enqueueChange___block_invoke_cold_1(a1, v2, v3);
    }
  }

  else
  {
    [*(a1 + 40) _enqueueAction:*(a1 + 32)];
  }

  return [*(a1 + 40) persistChanges];
}

- (void)_enqueueAction:(id)action
{
  v14 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  v5 = MTLogForCategory(6);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    selfCopy = self;
    v12 = 2114;
    v13 = actionCopy;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_INFO, "%{public}@ enqueuing action %{public}@", buf, 0x16u);
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __36__MTSyncChangeQueue__enqueueAction___block_invoke;
  v7[3] = &unk_1E7B10238;
  v8 = actionCopy;
  selfCopy2 = self;
  v6 = actionCopy;
  [(MTSyncChangeQueue *)self _enqueueChange:v6 changeCompareBlock:v7];
}

uint64_t __36__MTSyncChangeQueue__enqueueAction___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 syncType] && (objc_msgSend(*(a1 + 32), "syncIdentifier"), v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "syncIdentifier"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v4, "isEqualToString:", v5), v5, v4, (v6 & 1) == 0))
  {
    v8 = MTLogForCategory(6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 40);
      v11 = 138543618;
      v12 = v9;
      v13 = 2114;
      v14 = v3;
      _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_INFO, "%{public}@ jumping over pending change %{public}@", &v11, 0x16u);
    }

    v7 = 2;
  }

  else
  {
    v7 = 4;
  }

  return v7;
}

- (void)_enqueueChange:(id)change changeCompareBlock:(id)block
{
  v51 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  blockCopy = block;
  v7 = objc_opt_new();
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  reverseObjectEnumerator = [(NSMutableArray *)self->_changeQueue reverseObjectEnumerator];
  v9 = [reverseObjectEnumerator countByEnumeratingWithState:&v39 objects:v50 count:16];
  if (!v9)
  {

LABEL_34:
    [v7 addObject:{changeCopy, v32}];
    goto LABEL_35;
  }

  v11 = v9;
  v12 = 0;
  v13 = *v40;
  v14 = 1;
  *&v10 = 138543874;
  v32 = v10;
  do
  {
    v15 = reverseObjectEnumerator;
    v16 = 0;
    do
    {
      if (*v40 != v13)
      {
        objc_enumerationMutation(v15);
      }

      v17 = *(*(&v39 + 1) + 8 * v16);
      if ((v14 & 1) == 0)
      {
        goto LABEL_21;
      }

      v18 = blockCopy[2](blockCopy, *(*(&v39 + 1) + 8 * v16));
      v12 = v18;
      v14 = 1;
      if (v18 <= 2)
      {
        if (!v18)
        {
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler handleFailureInMethod:a2 object:self file:@"MTSyncChangeQueue.m" lineNumber:150 description:@"Undetermined enqueue result returned"];

LABEL_17:
          v14 = 1;
          goto LABEL_23;
        }

        if (v18 != 1)
        {
          if (v18 != 2)
          {
            goto LABEL_23;
          }

          [v7 addObject:v17];
          goto LABEL_17;
        }

        [v7 addObject:changeCopy];
LABEL_21:
        [v7 addObject:{v17, v32}];
LABEL_22:
        v14 = 0;
        goto LABEL_23;
      }

      switch(v18)
      {
        case 3:
          v20 = [v17 merge:changeCopy];
          if (v20)
          {
            v21 = v7;
            v22 = v20;
          }

          else
          {
            v23 = MTLogForCategory(6);
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              *buf = v32;
              selfCopy = self;
              v46 = 2114;
              v47 = changeCopy;
              v48 = 2114;
              v49 = v17;
              _os_log_error_impl(&dword_1B1F9F000, v23, OS_LOG_TYPE_ERROR, "%{public}@ unable to merge %{public}@ into %{public}@", buf, 0x20u);
            }

            v21 = v7;
            v22 = v17;
          }

          [v21 addObject:{v22, v32}];

          v14 = 0;
          v12 = 3;
          break;
        case 5:
          goto LABEL_21;
        case 6:
          goto LABEL_22;
      }

LABEL_23:
      ++v16;
    }

    while (v11 != v16);
    reverseObjectEnumerator = v15;
    v24 = [v15 countByEnumeratingWithState:&v39 objects:v50 count:16];
    v11 = v24;
  }

  while (v24);

  if (v12 <= 4 && ((1 << v12) & 0x15) != 0)
  {
    goto LABEL_34;
  }

LABEL_35:
  v25 = objc_opt_new();
  changeQueue = self->_changeQueue;
  self->_changeQueue = v25;

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  reverseObjectEnumerator2 = [v7 reverseObjectEnumerator];
  v28 = [reverseObjectEnumerator2 countByEnumeratingWithState:&v35 objects:v43 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v36;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v36 != v30)
        {
          objc_enumerationMutation(reverseObjectEnumerator2);
        }

        [(NSMutableArray *)self->_changeQueue addObject:*(*(&v35 + 1) + 8 * i), v32];
      }

      v29 = [reverseObjectEnumerator2 countByEnumeratingWithState:&v35 objects:v43 count:16];
    }

    while (v29);
  }
}

- (void)dequeueChanges:(id)changes
{
  changesCopy = changes;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __36__MTSyncChangeQueue_dequeueChanges___block_invoke;
  v6[3] = &unk_1E7B0C928;
  v6[4] = self;
  v7 = changesCopy;
  v5 = changesCopy;
  [(MTSyncChangeQueue *)self performBlockOnceChangesAreLoaded:v6 async:1];
}

uint64_t __36__MTSyncChangeQueue_dequeueChanges___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = MTLogForCategory(6);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = 138543618;
    v7 = v3;
    v8 = 2114;
    v9 = v4;
    _os_log_impl(&dword_1B1F9F000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ dequeing changes %{public}@", &v6, 0x16u);
  }

  [*(*(a1 + 32) + 40) removeObjectsInArray:*(a1 + 40)];
  return [*(a1 + 32) persistChanges];
}

- (BOOL)hasPendingChanges
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __38__MTSyncChangeQueue_hasPendingChanges__block_invoke;
  v4[3] = &unk_1E7B0CAC0;
  v4[4] = self;
  v4[5] = &v5;
  [(MTSyncChangeQueue *)self performBlockOnceChangesAreLoaded:v4 async:0];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void *__38__MTSyncChangeQueue_hasPendingChanges__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 40) count];
  *(*(*(a1 + 40) + 8) + 24) = result != 0;
  return result;
}

- (id)pendingChanges
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__17;
  v9 = __Block_byref_object_dispose__17;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __35__MTSyncChangeQueue_pendingChanges__block_invoke;
  v4[3] = &unk_1E7B0CAC0;
  v4[4] = self;
  v4[5] = &v5;
  [(MTSyncChangeQueue *)self performBlockOnceChangesAreLoaded:v4 async:0];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __35__MTSyncChangeQueue_pendingChanges__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 40) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (void)removePendingChanges
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __41__MTSyncChangeQueue_removePendingChanges__block_invoke;
  v2[3] = &unk_1E7B0C9D8;
  v2[4] = self;
  [(MTSyncChangeQueue *)self performBlockOnceChangesAreLoaded:v2 async:1];
}

uint64_t __41__MTSyncChangeQueue_removePendingChanges__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 40) removeAllObjects];
  v2 = *(a1 + 32);

  return [v2 persistChanges];
}

- (id)resolveChange:(id)change
{
  changeCopy = change;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__17;
  v15 = __Block_byref_object_dispose__17;
  v16 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __35__MTSyncChangeQueue_resolveChange___block_invoke;
  v8[3] = &unk_1E7B0CB10;
  v10 = &v11;
  v8[4] = self;
  v5 = changeCopy;
  v9 = v5;
  [(MTSyncChangeQueue *)self performBlockOnceChangesAreLoaded:v8 async:0];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

uint64_t __35__MTSyncChangeQueue_resolveChange___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _resolveChange:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(a1 + 32);

  return [v5 persistChanges];
}

- (id)_resolveChange:(id)change
{
  v13 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  v5 = MTLogForCategory(6);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    selfCopy = self;
    v11 = 2114;
    v12 = changeCopy;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_INFO, "%{public}@ resolving incoming change %{public}@", buf, 0x16u);
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __36__MTSyncChangeQueue__resolveChange___block_invoke;
  v8[3] = &unk_1E7B10260;
  v8[4] = self;
  v6 = [(MTSyncChangeQueue *)self _resolveChange:changeCopy resolutionHandler:v8];

  return v6;
}

uint64_t __36__MTSyncChangeQueue__resolveChange___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if ([v6 conflicts:v5])
  {
    v7 = MTLogForCategory(6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v16 = 138543874;
      v17 = v8;
      v18 = 2114;
      v19 = v5;
      v20 = 2114;
      v21 = v6;
      _os_log_impl(&dword_1B1F9F000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ incoming change %{public}@ conflicts with pending change %{public}@", &v16, 0x20u);
    }

    v9 = [v6 preferred:v5];
    v10 = MTLogForCategory(6);
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (v9 == v5)
    {
      if (v11)
      {
        v14 = *(a1 + 32);
        v16 = 138543618;
        v17 = v14;
        v18 = 2114;
        v19 = v6;
        _os_log_impl(&dword_1B1F9F000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ dropping conflicting pending change %{public}@", &v16, 0x16u);
      }

      v13 = 4;
    }

    else
    {
      if (v11)
      {
        v12 = *(a1 + 32);
        v16 = 138543618;
        v17 = v12;
        v18 = 2114;
        v19 = v5;
        _os_log_impl(&dword_1B1F9F000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ dropping conflicting incoming change %{public}@", &v16, 0x16u);
      }

      v13 = 5;
    }
  }

  else
  {
    v13 = 2;
  }

  return v13;
}

- (id)_resolveChange:(id)change resolutionHandler:(id)handler
{
  v29 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  handlerCopy = handler;
  v8 = objc_opt_new();
  v9 = changeCopy;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  selfCopy = self;
  v11 = self->_changeQueue;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
  v22 = v9;
  if (v12)
  {
    v13 = v12;
    v14 = *v25;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v24 + 1) + 8 * i);
        if (!v9)
        {
LABEL_10:
          [v8 addObject:{v16, v22}];
          continue;
        }

        v17 = handlerCopy[2](handlerCopy, v9, *(*(&v24 + 1) + 8 * i));
        switch(v17)
        {
          case 5:
            [v8 addObject:v16];

            v9 = 0;
            break;
          case 4:
            continue;
          case 2:
            goto LABEL_10;
          default:
            currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
            [currentHandler handleFailureInMethod:a2 object:selfCopy file:@"MTSyncChangeQueue.m" lineNumber:262 description:@"Invalid conflict result returned"];

            break;
        }
      }

      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v13);
  }

  v19 = [v8 mutableCopy];
  changeQueue = selfCopy->_changeQueue;
  selfCopy->_changeQueue = v19;

  return v9;
}

void __35__MTSyncChangeQueue_enqueueChange___block_invoke_cold_1(uint64_t a1, uint64_t *a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 40);
  v4 = *a2;
  v5 = 138543618;
  v6 = v3;
  v7 = 2114;
  v8 = v4;
  _os_log_error_impl(&dword_1B1F9F000, log, OS_LOG_TYPE_ERROR, "%{public}@ unsupported change type %{public}@", &v5, 0x16u);
}

@end