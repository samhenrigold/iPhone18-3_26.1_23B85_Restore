@interface SORequestQueue
+ (id)debugDescription;
+ (id)requestQueueWithIdentifier:(id)identifier;
+ (void)removeQueueWithIdentifier:(id)identifier;
- (SORequestQueue)initWithIdentifier:(id)identifier;
- (id)description;
- (unint64_t)queueCount;
- (void)_itemCompleted;
- (void)_processItem:(id)item;
- (void)enqueueRequest:(id)request;
- (void)processNextRequest;
- (void)removeAllRequestsWithBlock:(id)block;
- (void)removeRequestWithIdentifier:(id)identifier block:(id)block;
@end

@implementation SORequestQueue

+ (id)requestQueueWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (requestQueueWithIdentifier__onceToken != -1)
  {
    +[SORequestQueue requestQueueWithIdentifier:];
  }

  v4 = queues;
  objc_sync_enter(v4);
  v5 = [queues objectForKeyedSubscript:identifierCopy];
  if (!v5)
  {
    v5 = [[SORequestQueue alloc] initWithIdentifier:identifierCopy];
    [queues setObject:v5 forKeyedSubscript:identifierCopy];
  }

  objc_sync_exit(v4);

  return v5;
}

uint64_t __45__SORequestQueue_requestQueueWithIdentifier___block_invoke()
{
  queues = [MEMORY[0x1E695DF90] dictionary];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)debugDescription
{
  v2 = queues;
  objc_sync_enter(v2);
  v3 = [queues description];
  objc_sync_exit(v2);

  return v3;
}

- (SORequestQueue)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12.receiver = self;
  v12.super_class = SORequestQueue;
  v5 = [(SORequestQueue *)&v12 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    array = [MEMORY[0x1E695DF70] array];
    queue = v5->_queue;
    v5->_queue = array;

    processingItem = v5->_processingItem;
    v5->_processingItem = 0;
  }

  return v5;
}

- (void)enqueueRequest:(id)request
{
  v21 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = SO_LOG_SORequestQueue([(NSMutableArray *)selfCopy->_queue addObject:requestCopy]);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    identifier = selfCopy->_identifier;
    requestParameters = [requestCopy requestParameters];
    identifier = [requestParameters identifier];
    v10 = [(NSMutableArray *)selfCopy->_queue count];
    v11 = 138544386;
    v12 = identifier;
    v13 = 2048;
    v14 = requestCopy;
    v15 = 2114;
    v16 = requestCopy;
    v17 = 2114;
    v18 = identifier;
    v19 = 1024;
    v20 = v10;
    _os_log_debug_impl(&dword_1C1317000, v6, OS_LOG_TYPE_DEBUG, "%{public}@: enqueueRequest: %p, %{public}@, %{public}@, queue count: %d", &v11, 0x30u);
  }

  if ([(NSMutableArray *)selfCopy->_queue count]== 1)
  {
    [(SORequestQueue *)selfCopy _processItem:requestCopy];
  }

  objc_sync_exit(selfCopy);
}

- (void)processNextRequest
{
  v5[3] = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = SO_LOG_SORequestQueue([(SORequestQueue *)selfCopy _itemCompleted]);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(SORequestQueue *)selfCopy->_identifier processNextRequest];
  }

  if ([(NSMutableArray *)selfCopy->_queue count])
  {
    firstObject = [(NSMutableArray *)selfCopy->_queue firstObject];
    [(SORequestQueue *)selfCopy _processItem:firstObject];
  }

  objc_sync_exit(selfCopy);
}

- (void)removeAllRequestsWithBlock:(id)block
{
  v33 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  selfCopy = self;
  v6 = objc_sync_enter(selfCopy);
  v7 = SO_LOG_SORequestQueue(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [(SORequestQueue *)selfCopy->_identifier removeAllRequestsWithBlock:v32];
  }

  if (blockCopy)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v8 = [(NSMutableArray *)selfCopy->_queue copy];
    isRunning = [v8 countByEnumeratingWithState:&v23 objects:v31 count:16];
    v10 = isRunning;
    if (isRunning)
    {
      v11 = *v24;
      v22 = v8;
      do
      {
        v12 = 0;
        do
        {
          if (*v24 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v23 + 1) + 8 * v12);
          v14 = SO_LOG_SORequestQueue(isRunning);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            identifier = selfCopy->_identifier;
            requestParameters = [v13 requestParameters];
            identifier = [requestParameters identifier];
            *buf = 138543618;
            v28 = identifier;
            v29 = 2114;
            v30 = identifier;
            _os_log_debug_impl(&dword_1C1317000, v14, OS_LOG_TYPE_DEBUG, "%{public}@: checking %{public}@", buf, 0x16u);

            v8 = v22;
          }

          isRunning = [v13 isRunning];
          if ((isRunning & 1) == 0)
          {
            v15 = SO_LOG_SORequestQueue(isRunning);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
            {
              v19 = selfCopy->_identifier;
              requestParameters2 = [v13 requestParameters];
              identifier2 = [requestParameters2 identifier];
              *buf = 138543618;
              v28 = v19;
              v29 = 2114;
              v30 = identifier2;
              _os_log_debug_impl(&dword_1C1317000, v15, OS_LOG_TYPE_DEBUG, "%{public}@: removing %{public}@", buf, 0x16u);

              v8 = v22;
            }

            blockCopy[2](blockCopy, selfCopy, v13);
            isRunning = [(NSMutableArray *)selfCopy->_queue removeObject:v13];
          }

          ++v12;
        }

        while (v10 != v12);
        isRunning = [v8 countByEnumeratingWithState:&v23 objects:v31 count:16];
        v10 = isRunning;
      }

      while (isRunning);
    }
  }

  objc_sync_exit(selfCopy);
}

- (void)removeRequestWithIdentifier:(id)identifier block:(id)block
{
  v38 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  blockCopy = block;
  selfCopy = self;
  v8 = objc_sync_enter(selfCopy);
  v9 = SO_LOG_SORequestQueue(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [(SORequestQueue *)selfCopy removeRequestWithIdentifier:identifierCopy block:v9];
  }

  if (blockCopy)
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v10 = [(NSMutableArray *)selfCopy->_queue copy];
    isRunning = [v10 countByEnumeratingWithState:&v29 objects:v37 count:16];
    v12 = isRunning;
    if (isRunning)
    {
      v13 = *v30;
      v27 = identifierCopy;
      do
      {
        v14 = 0;
        do
        {
          if (*v30 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v29 + 1) + 8 * v14);
          v16 = SO_LOG_SORequestQueue(isRunning);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            identifier = selfCopy->_identifier;
            requestParameters = [v15 requestParameters];
            identifier = [requestParameters identifier];
            *buf = 138543618;
            identifierCopy2 = identifier;
            v35 = 2114;
            v36 = identifier;
            _os_log_debug_impl(&dword_1C1317000, v16, OS_LOG_TYPE_DEBUG, "%{public}@: checking %{public}@", buf, 0x16u);

            identifierCopy = v27;
          }

          isRunning = [v15 isRunning];
          if ((isRunning & 1) == 0)
          {
            requestParameters2 = [v15 requestParameters];
            identifier2 = [requestParameters2 identifier];
            v19 = [identifier2 isEqualToString:identifierCopy];

            if (v19)
            {
              v20 = SO_LOG_SORequestQueue(isRunning);
              if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
              {
                v24 = selfCopy->_identifier;
                requestParameters3 = [v15 requestParameters];
                identifier3 = [requestParameters3 identifier];
                *buf = 138543618;
                identifierCopy2 = v24;
                v35 = 2114;
                v36 = identifier3;
                _os_log_debug_impl(&dword_1C1317000, v20, OS_LOG_TYPE_DEBUG, "%{public}@: removing %{public}@", buf, 0x16u);

                identifierCopy = v27;
              }

              blockCopy[2](blockCopy, selfCopy, v15);
              isRunning = [(NSMutableArray *)selfCopy->_queue removeObject:v15];
            }
          }

          ++v14;
        }

        while (v12 != v14);
        isRunning = [v10 countByEnumeratingWithState:&v29 objects:v37 count:16];
        v12 = isRunning;
      }

      while (isRunning);
    }
  }

  objc_sync_exit(selfCopy);
}

- (unint64_t)queueCount
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSMutableArray *)selfCopy->_queue count];
  objc_sync_exit(selfCopy);

  return v3;
}

+ (void)removeQueueWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v3 = queues;
  objc_sync_enter(v3);
  [queues setObject:0 forKeyedSubscript:identifierCopy];
  objc_sync_exit(v3);
}

- (void)_processItem:(id)item
{
  itemCopy = item;
  selfCopy = self;
  v7 = objc_sync_enter(selfCopy);
  v8 = SO_LOG_SORequestQueue(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [SORequestQueue _processItem:];
  }

  objc_storeStrong(&selfCopy->_processingItem, item);
  if (selfCopy->_processItemBlock)
  {
    [itemCopy setIsRunning:1];
    (*(selfCopy->_processItemBlock + 2))();
  }

  objc_sync_exit(selfCopy);
}

- (void)_itemCompleted
{
  v4 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_1();
  v3 = v0;
  _os_log_debug_impl(&dword_1C1317000, v1, OS_LOG_TYPE_DEBUG, "%{public}@: itemCompleted: %p", v2, 0x16u);
}

- (id)description
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSMutableArray *)selfCopy->_queue description];
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)removeRequestWithIdentifier:(NSObject *)a3 block:.cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138543618;
  *&v3[4] = *(a1 + 8);
  *&v3[12] = 2114;
  *&v3[14] = a2;
  OUTLINED_FUNCTION_10(&dword_1C1317000, a2, a3, "%{public}@: removeRequestWithIdentifier: %{public}@", *v3, *&v3[8], *&v3[16], *MEMORY[0x1E69E9840]);
}

@end