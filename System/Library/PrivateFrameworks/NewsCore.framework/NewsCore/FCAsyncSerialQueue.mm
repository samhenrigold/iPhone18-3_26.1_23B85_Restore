@interface FCAsyncSerialQueue
- (BOOL)suspended;
- (FCAsyncSerialQueue)initWithUnderlyingQueue:(id)queue qualityOfService:(int64_t)service;
- (void)cancelAllBlocks;
- (void)enqueueBlock:(id)block;
- (void)enqueueBlockForMainThread:(id)thread;
- (void)enqueueOperation:(id)operation;
- (void)setSuspended:(BOOL)suspended;
- (void)withQualityOfService:(int64_t)service enqueueBlock:(id)block;
- (void)withQualityOfService:(int64_t)service enqueueBlockForMainThread:(id)thread;
@end

@implementation FCAsyncSerialQueue

- (FCAsyncSerialQueue)initWithUnderlyingQueue:(id)queue qualityOfService:(int64_t)service
{
  queueCopy = queue;
  v11.receiver = self;
  v11.super_class = FCAsyncSerialQueue;
  v7 = [(FCAsyncSerialQueue *)&v11 init];
  if (v7)
  {
    v8 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    serialOperationQueue = v7->_serialOperationQueue;
    v7->_serialOperationQueue = v8;

    [(NSOperationQueue *)v7->_serialOperationQueue setQualityOfService:service];
    [(NSOperationQueue *)v7->_serialOperationQueue setMaxConcurrentOperationCount:1];
    if (queueCopy)
    {
      [(NSOperationQueue *)v7->_serialOperationQueue setUnderlyingQueue:queueCopy];
    }
  }

  return v7;
}

- (void)enqueueBlock:(id)block
{
  v14 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  if (blockCopy)
  {
    serialOperationQueue = [(FCAsyncSerialQueue *)self serialOperationQueue];
    [serialOperationQueue fc_addAsyncOperationWithBlock:blockCopy];
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_5;
    }

    serialOperationQueue = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "block != nil"];
    *buf = 136315906;
    v7 = "[FCAsyncSerialQueue enqueueBlock:]";
    v8 = 2080;
    v9 = "FCAsyncSerialQueue.m";
    v10 = 1024;
    v11 = 51;
    v12 = 2114;
    v13 = serialOperationQueue;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_5:
}

- (void)withQualityOfService:(int64_t)service enqueueBlock:(id)block
{
  v18 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  if (blockCopy)
  {
    v7 = [FCAsyncBlockOperation asyncBlockOperationWithBlock:blockCopy];
    [v7 setQualityOfService:service];
    serialOperationQueue = [(FCAsyncSerialQueue *)self serialOperationQueue];
    [serialOperationQueue addOperation:v7];
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "block != nil"];
    *buf = 136315906;
    v11 = "[FCAsyncSerialQueue withQualityOfService:enqueueBlock:]";
    v12 = 2080;
    v13 = "FCAsyncSerialQueue.m";
    v14 = 1024;
    v15 = 61;
    v16 = 2114;
    v17 = v9;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }
}

- (void)enqueueBlockForMainThread:(id)thread
{
  v17 = *MEMORY[0x1E69E9840];
  threadCopy = thread;
  v5 = threadCopy;
  if (threadCopy)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __48__FCAsyncSerialQueue_enqueueBlockForMainThread___block_invoke;
    v7[3] = &unk_1E7C3A148;
    v8 = threadCopy;
    [(FCAsyncSerialQueue *)self enqueueBlock:v7];
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "block != nil"];
    *buf = 136315906;
    v10 = "[FCAsyncSerialQueue enqueueBlockForMainThread:]";
    v11 = 2080;
    v12 = "FCAsyncSerialQueue.m";
    v13 = 1024;
    v14 = 74;
    v15 = 2114;
    v16 = v6;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }
}

void __48__FCAsyncSerialQueue_enqueueBlockForMainThread___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__FCAsyncSerialQueue_enqueueBlockForMainThread___block_invoke_2;
  v5[3] = &unk_1E7C39090;
  v6 = *(a1 + 32);
  v7 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

- (void)withQualityOfService:(int64_t)service enqueueBlockForMainThread:(id)thread
{
  v18 = *MEMORY[0x1E69E9840];
  threadCopy = thread;
  if (threadCopy)
  {
    v7 = [FCAsyncBlockOperation asyncBlockOperationWithMainThreadBlock:threadCopy];
    [v7 setQualityOfService:service];
    serialOperationQueue = [(FCAsyncSerialQueue *)self serialOperationQueue];
    [serialOperationQueue addOperation:v7];
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "block != nil"];
    *buf = 136315906;
    v11 = "[FCAsyncSerialQueue withQualityOfService:enqueueBlockForMainThread:]";
    v12 = 2080;
    v13 = "FCAsyncSerialQueue.m";
    v14 = 1024;
    v15 = 88;
    v16 = 2114;
    v17 = v9;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }
}

- (void)enqueueOperation:(id)operation
{
  operationCopy = operation;
  serialOperationQueue = [(FCAsyncSerialQueue *)self serialOperationQueue];
  [serialOperationQueue addOperation:operationCopy];
}

- (void)cancelAllBlocks
{
  serialOperationQueue = [(FCAsyncSerialQueue *)self serialOperationQueue];
  [serialOperationQueue cancelAllOperations];
}

- (void)setSuspended:(BOOL)suspended
{
  suspendedCopy = suspended;
  serialOperationQueue = [(FCAsyncSerialQueue *)self serialOperationQueue];
  [serialOperationQueue setSuspended:suspendedCopy];
}

- (BOOL)suspended
{
  serialOperationQueue = [(FCAsyncSerialQueue *)self serialOperationQueue];
  isSuspended = [serialOperationQueue isSuspended];

  return isSuspended;
}

@end