@interface BRNotificationQueue
- (BRNotificationQueue)init;
- (void)_filterIndex:(id)index;
- (void)addDequeueCallback:(id)callback;
- (void)addNotification:(id)notification asDead:(BOOL)dead;
- (void)dequeue:(unint64_t)dequeue block:(id)block;
- (void)processDequeueCallbacks;
- (void)removeAllObjects;
@end

@implementation BRNotificationQueue

- (void)removeAllObjects
{
  v3 = [(NSMutableArray *)self->_array count];
  index = self->_index;
  self->_dequeued += v3;
  [(NSMutableDictionary *)index removeAllObjects];
  array = self->_array;

  [(NSMutableArray *)array removeAllObjects];
}

- (BRNotificationQueue)init
{
  v10.receiver = self;
  v10.super_class = BRNotificationQueue;
  v2 = [(BRNotificationQueue *)&v10 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:128];
    array = v2->_array;
    v2->_array = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    callbacks = v2->_callbacks;
    v2->_callbacks = v5;

    v7 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:128];
    index = v2->_index;
    v2->_index = v7;
  }

  return v2;
}

- (void)addNotification:(id)notification asDead:(BOOL)dead
{
  deadCopy = dead;
  notificationCopy = notification;
  fileObjectID = [notificationCopy fileObjectID];
  if (fileObjectID)
  {
    v8 = [(NSMutableDictionary *)self->_index objectForKey:fileObjectID];
    if (v8)
    {
      v9 = v8;
      v10 = -[NSMutableArray objectAtIndex:](self->_array, "objectAtIndex:", [v8 unsignedIntegerValue] - self->_dequeued);
      if ([v10 canMerge:notificationCopy])
      {
        [v10 merge:notificationCopy];
        if (deadCopy)
        {
          [v10 markDead];
        }

        goto LABEL_12;
      }

      if (!deadCopy)
      {
LABEL_11:
        [(NSMutableArray *)self->_array addObject:notificationCopy];
        index = self->_index;
        v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{self->_dequeued + -[NSMutableArray count](self->_array, "count") - 1}];
        [(NSMutableDictionary *)index setObject:v15 forKey:fileObjectID];

        v9 = 0;
LABEL_12:

        goto LABEL_13;
      }
    }

    else
    {
      v10 = 0;
      if (!deadCopy)
      {
        goto LABEL_11;
      }
    }

    v13 = [notificationCopy copy];

    [v13 markDead];
    notificationCopy = v13;
    goto LABEL_11;
  }

  v11 = brc_bread_crumbs("[BRNotificationQueue addNotification:asDead:]", 63);
  v12 = brc_default_log(0, 0);
  if (os_log_type_enabled(v12, 0x90u))
  {
    [(BRNotificationQueue *)notificationCopy addNotification:v11 asDead:v12];
  }

LABEL_13:
}

- (void)processDequeueCallbacks
{
  v15 = *MEMORY[0x1E69E9840];
  self->_dequeuedNotificationCount = 0;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_callbacks;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v11;
    while (2)
    {
      v8 = 0;
      v9 = v6;
      v6 += v5;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v3);
        }

        if (!(*(*(*(&v10 + 1) + 8 * v8) + 16))(*(*(&v10 + 1) + 8 * v8)))
        {
          v6 = v9;
          goto LABEL_11;
        }

        ++v9;
        ++v8;
      }

      while (v5 != v8);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }

LABEL_11:

    if (v6)
    {
      [(NSMutableArray *)self->_callbacks removeObjectsInRange:0, v6, v10];
    }
  }

  else
  {
  }
}

- (void)addDequeueCallback:(id)callback
{
  v28 = *MEMORY[0x1E69E9840];
  callbackCopy = callback;
  if ([(NSMutableArray *)self->_array count]|| self->_dequeuedNotificationCount)
  {
    dequeued = self->_dequeued;
    v6 = [(NSMutableArray *)self->_array count];
    objc_initWeak(&location, self);
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __42__BRNotificationQueue_addDequeueCallback___block_invoke;
    v18 = &unk_1E7A16C80;
    v20[1] = (v6 + dequeued);
    objc_copyWeak(v20, &location);
    v19 = callbackCopy;
    v7 = MEMORY[0x1B26FEA90](&v15);
    v8 = brc_bread_crumbs("[BRNotificationQueue addDequeueCallback:]", 122);
    v9 = brc_default_log(1, 0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218498;
      v23 = v7;
      v24 = 2112;
      selfCopy2 = self;
      v26 = 2112;
      v27 = v8;
      _os_log_debug_impl(&dword_1AE2A9000, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] Delaying callback %p in %@%@", buf, 0x20u);
    }

    callbacks = self->_callbacks;
    v11 = MEMORY[0x1B26FEA90](v7);
    [(NSMutableArray *)callbacks addObject:v11, v15, v16, v17, v18];

    objc_destroyWeak(v20);
    objc_destroyWeak(&location);
  }

  else
  {
    v12 = brc_bread_crumbs("[BRNotificationQueue addDequeueCallback:]", 125);
    v13 = brc_default_log(1, 0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v14 = MEMORY[0x1B26FEA90](callbackCopy);
      *buf = 134218498;
      v23 = v14;
      v24 = 2112;
      selfCopy2 = self;
      v26 = 2112;
      v27 = v12;
      _os_log_debug_impl(&dword_1AE2A9000, v13, OS_LOG_TYPE_DEBUG, "[DEBUG] Firing callback %p right away in %@%@", buf, 0x20u);
    }

    callbackCopy[2](callbackCopy);
  }
}

BOOL __42__BRNotificationQueue_addDequeueCallback___block_invoke(uint64_t a1, unint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 48);
  if (v3 <= a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v6 = brc_bread_crumbs("[BRNotificationQueue addDequeueCallback:]_block_invoke", 116);
    v7 = brc_default_log(1, 0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v9 = MEMORY[0x1B26FEA90](*(a1 + 32));
      v10 = *(a1 + 48);
      v11 = 134219010;
      v12 = v9;
      v13 = 2112;
      v14 = WeakRetained;
      v15 = 2048;
      v16 = v10;
      v17 = 2048;
      v18 = a2;
      v19 = 2112;
      v20 = v6;
      _os_log_debug_impl(&dword_1AE2A9000, v7, OS_LOG_TYPE_DEBUG, "[DEBUG] Firing delayed callback %p in %@ (%lu vs %lu)%@", &v11, 0x34u);
    }

    (*(*(a1 + 32) + 16))();
  }

  return v3 <= a2;
}

- (void)_filterIndex:(id)index
{
  v25 = *MEMORY[0x1E69E9840];
  indexCopy = index;
  v5 = [(NSMutableArray *)self->_array count];
  if ([indexCopy count] >= v5)
  {
    [(NSMutableDictionary *)self->_index removeAllObjects];
    if (v5)
    {
      for (i = 0; i != v5; ++i)
      {
        v16 = [(NSMutableArray *)self->_array objectAtIndex:i];
        index = self->_index;
        v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:i + self->_dequeued];
        fileObjectID = [v16 fileObjectID];
        [(NSMutableDictionary *)index setObject:v18 forKey:fileObjectID];
      }
    }
  }

  else
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v6 = indexCopy;
    v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v21;
      do
      {
        v10 = 0;
        do
        {
          if (*v21 != v9)
          {
            objc_enumerationMutation(v6);
          }

          fileObjectID2 = [*(*(&v20 + 1) + 8 * v10) fileObjectID];
          if (fileObjectID2)
          {
            v12 = [(NSMutableDictionary *)self->_index objectForKey:fileObjectID2];
            unsignedIntegerValue = [v12 unsignedIntegerValue];
            dequeued = self->_dequeued;

            if (unsignedIntegerValue < dequeued)
            {
              [(NSMutableDictionary *)self->_index removeObjectForKey:fileObjectID2];
            }
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v8);
    }
  }
}

- (void)dequeue:(unint64_t)dequeue block:(id)block
{
  blockCopy = block;
  v6 = [(NSMutableArray *)self->_array count];
  if (v6)
  {
    if (v6 <= dequeue)
    {
      self->_dequeued += v6;
      dequeue = self->_array;
      v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:128];
      array = self->_array;
      self->_array = v9;
    }

    else
    {
      v7 = objc_autoreleasePoolPush();
      self->_dequeued += dequeue;
      dequeue = [(NSMutableArray *)self->_array subarrayWithRange:0, dequeue];
      [(NSMutableArray *)self->_array removeObjectsInRange:0, dequeue];
      objc_autoreleasePoolPop(v7);
    }

    [(BRNotificationQueue *)self _filterIndex:dequeue];
    self->_dequeuedNotificationCount += [(NSMutableArray *)dequeue count];
    blockCopy[2](blockCopy, dequeue);
  }

  else
  {
    blockCopy[2](blockCopy, 0);
  }
}

- (void)addNotification:(os_log_t)log asDead:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_1AE2A9000, log, 0x90u, "[ERROR] No object id for update %@%@", &v3, 0x16u);
}

@end