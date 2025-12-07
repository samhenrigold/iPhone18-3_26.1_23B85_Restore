@interface _EFReplayObservable
- (_EFReplayObservable)initWithCount:(unint64_t)count;
- (id)subscribe:(id)subscribe;
- (void)_unsubscribe:(id)_unsubscribe;
- (void)observerDidComplete;
- (void)observerDidFailWithError:(id)error;
- (void)observerDidReceiveResult:(id)result;
@end

@implementation _EFReplayObservable

- (_EFReplayObservable)initWithCount:(unint64_t)count
{
  v12.receiver = self;
  v12.super_class = _EFReplayObservable;
  v4 = [(_EFReplayObservable *)&v12 init];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E696AD10]);
    lock = v4->_lock;
    v4->_lock = v5;

    v7 = [EFQueue boundedQueueWithCapacity:count];
    queue = v4->_queue;
    v4->_queue = v7;

    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    observers = v4->_observers;
    v4->_observers = v9;
  }

  return v4;
}

- (id)subscribe:(id)subscribe
{
  v24 = *MEMORY[0x1E69E9840];
  subscribeCopy = subscribe;
  [(NSLock *)self->_lock lock];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  allObjects = [(EFQueue *)self->_queue allObjects];
  v6 = [allObjects countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = *v20;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(allObjects);
        }

        [subscribeCopy observerDidReceiveResult:*(*(&v19 + 1) + 8 * i)];
      }

      v6 = [allObjects countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
  }

  if (self->_error)
  {
    [subscribeCopy observerDidFailWithError:?];
  }

  else if (self->_isStopped)
  {
    [subscribeCopy observerDidComplete];
  }

  if (self->_isStopped)
  {
    v9 = 0;
  }

  else
  {
    [(NSMutableArray *)self->_observers addObject:subscribeCopy];
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __33___EFReplayObservable_subscribe___block_invoke;
    v16 = &unk_1E82485D0;
    selfCopy = self;
    v18 = subscribeCopy;
    v9 = [EFManualCancelationToken tokenWithCancelationBlock:&v13];
  }

  [(NSLock *)self->_lock unlock:v13];
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = objc_alloc_init(EFManualCancelationToken);
  }

  v11 = v10;

  return v11;
}

- (void)_unsubscribe:(id)_unsubscribe
{
  _unsubscribeCopy = _unsubscribe;
  [(NSLock *)self->_lock lock];
  [(NSMutableArray *)self->_observers removeObject:_unsubscribeCopy];
  [(NSLock *)self->_lock unlock];
}

- (void)observerDidReceiveResult:(id)result
{
  v14 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  [(NSLock *)self->_lock lock];
  if (!self->_isStopped)
  {
    [(EFQueue *)self->_queue enqueue:resultCopy];
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v5 = self->_observers;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v6)
    {
      v7 = *v10;
      do
      {
        v8 = 0;
        do
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v9 + 1) + 8 * v8++) observerDidReceiveResult:{resultCopy, v9}];
        }

        while (v6 != v8);
        v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }

  [(NSLock *)self->_lock unlock];
}

- (void)observerDidComplete
{
  v12 = *MEMORY[0x1E69E9840];
  [(NSLock *)self->_lock lock];
  if (!self->_isStopped)
  {
    self->_isStopped = 1;
    v7 = 0u;
    v8 = 0u;
    v9 = 0u;
    v10 = 0u;
    v3 = self->_observers;
    v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v7 objects:v11 count:16];
    if (v4)
    {
      v5 = *v8;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v8 != v5)
          {
            objc_enumerationMutation(v3);
          }

          [*(*(&v7 + 1) + 8 * i) observerDidComplete];
        }

        v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v7 objects:v11 count:16];
      }

      while (v4);
    }

    [(NSMutableArray *)self->_observers removeAllObjects];
  }

  [(NSLock *)self->_lock unlock];
}

- (void)observerDidFailWithError:(id)error
{
  v15 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  [(NSLock *)self->_lock lock];
  if (!self->_isStopped)
  {
    self->_isStopped = 1;
    objc_storeStrong(&self->_error, error);
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v6 = self->_observers;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v7)
    {
      v8 = *v11;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v10 + 1) + 8 * i) observerDidFailWithError:{errorCopy, v10}];
        }

        v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }

    [(NSMutableArray *)self->_observers removeAllObjects];
  }

  [(NSLock *)self->_lock unlock];
}

@end