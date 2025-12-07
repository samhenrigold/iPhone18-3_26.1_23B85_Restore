@interface _LTDContinuationOperation
+ (id)continuationOperationWithGroupID:(id)d delegate:(id)delegate block:(id)block;
- (BOOL)isAsynchronous;
- (BOOL)isCancelled;
- (BOOL)isFinished;
- (_LTDContinuationOperation)initWithGroupID:(id)d delegate:(id)delegate continuationBlock:(id)block;
- (_LTDContinuationOperationDelegate)delegate;
- (void)cancel;
- (void)dealloc;
- (void)setAsynchronous:(BOOL)asynchronous;
- (void)setCancelled:(BOOL)cancelled;
- (void)setFinished:(BOOL)finished;
- (void)start;
@end

@implementation _LTDContinuationOperation

- (_LTDContinuationOperation)initWithGroupID:(id)d delegate:(id)delegate continuationBlock:(id)block
{
  dCopy = d;
  delegateCopy = delegate;
  blockCopy = block;
  v29.receiver = self;
  v29.super_class = _LTDContinuationOperation;
  v11 = [(NSBlockOperation *)&v29 init];
  v13 = v11;
  if (v11)
  {
    v14 = _LTOSLogTranslationEngine(v11, v12);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [(_LTDContinuationOperation *)v13 initWithGroupID:v14 delegate:v15 continuationBlock:v16, v17, v18, v19, v20];
    }

    v13->_lock._os_unfair_lock_opaque = 0;
    objc_storeWeak(&v13->_delegate, delegateCopy);
    v21 = [dCopy copy];
    groupID = v13->_groupID;
    v13->_groupID = v21;

    objc_initWeak(&location, v13);
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __72___LTDContinuationOperation_initWithGroupID_delegate_continuationBlock___block_invoke;
    v25[3] = &unk_2789B5F18;
    objc_copyWeak(&v27, &location);
    v26 = blockCopy;
    [(NSBlockOperation *)v13 addExecutionBlock:v25];
    v23 = v13;

    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
  }

  return v13;
}

+ (id)continuationOperationWithGroupID:(id)d delegate:(id)delegate block:(id)block
{
  blockCopy = block;
  delegateCopy = delegate;
  dCopy = d;
  v10 = [[_LTDContinuationOperation alloc] initWithGroupID:dCopy delegate:delegateCopy continuationBlock:blockCopy];

  return v10;
}

- (void)dealloc
{
  LODWORD(v8) = 134217984;
  *(&v8 + 4) = self;
  OUTLINED_FUNCTION_0_5(&dword_232E53000, a2, a3, "Continuation operation dealloc: %p", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (BOOL)isAsynchronous
{
  os_unfair_lock_lock(&self->_lock);
  isAsynchronous = self->_isAsynchronous;
  os_unfair_lock_unlock(&self->_lock);
  return isAsynchronous;
}

- (void)setAsynchronous:(BOOL)asynchronous
{
  if ([(_LTDContinuationOperation *)self isAsynchronous]!= asynchronous)
  {
    [(_LTDContinuationOperation *)self willChangeValueForKey:@"isAsynchronous"];
    os_unfair_lock_lock(&self->_lock);
    self->_isAsynchronous = asynchronous;
    os_unfair_lock_unlock(&self->_lock);

    [(_LTDContinuationOperation *)self didChangeValueForKey:@"isAsynchronous"];
  }
}

- (BOOL)isCancelled
{
  os_unfair_lock_lock(&self->_lock);
  isCancelled = self->_isCancelled;
  os_unfair_lock_unlock(&self->_lock);
  return isCancelled;
}

- (void)setCancelled:(BOOL)cancelled
{
  if ([(_LTDContinuationOperation *)self isCancelled]!= cancelled)
  {
    [(_LTDContinuationOperation *)self willChangeValueForKey:@"isCancelled"];
    os_unfair_lock_lock(&self->_lock);
    self->_isCancelled = cancelled;
    os_unfair_lock_unlock(&self->_lock);

    [(_LTDContinuationOperation *)self didChangeValueForKey:@"isCancelled"];
  }
}

- (BOOL)isFinished
{
  os_unfair_lock_lock(&self->_lock);
  isFinished = self->_isFinished;
  os_unfair_lock_unlock(&self->_lock);
  return isFinished;
}

- (void)setFinished:(BOOL)finished
{
  if ([(_LTDContinuationOperation *)self isFinished]!= finished)
  {
    [(_LTDContinuationOperation *)self willChangeValueForKey:@"isFinished"];
    os_unfair_lock_lock(&self->_lock);
    self->_isFinished = finished;
    os_unfair_lock_unlock(&self->_lock);

    [(_LTDContinuationOperation *)self didChangeValueForKey:@"isFinished"];
  }
}

- (void)start
{
  LODWORD(v8) = 134217984;
  *(&v8 + 4) = self;
  OUTLINED_FUNCTION_0_5(&dword_232E53000, a2, a3, "Continuation operation start: %p", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)cancel
{
  if (![(_LTDContinuationOperation *)self isCancelled])
  {
    [(_LTDContinuationOperation *)self setCancelled:1];

    [(_LTDContinuationOperation *)self setFinished:1];
  }
}

- (_LTDContinuationOperationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithGroupID:(uint64_t)a3 delegate:(uint64_t)a4 continuationBlock:(uint64_t)a5 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 134217984;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0_5(&dword_232E53000, a2, a3, "Continuation operation initialized: %p", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end