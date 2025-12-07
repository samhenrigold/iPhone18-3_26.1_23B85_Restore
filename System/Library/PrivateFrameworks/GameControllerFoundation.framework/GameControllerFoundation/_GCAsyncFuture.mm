@interface _GCAsyncFuture
- (BOOL)_setState:(int64_t)state result:(id)result error:(id)error;
- (id).cxx_construct;
- (id)_initOnQueue:(char)queue withOptions:(void *)options block:;
- (id)debugDescription;
- (void)_observeFinishOnQueue:(id)queue withOptions:(unsigned int)options qosClass:(unsigned int)class relativePriority:(int)priority block:(id)block;
@end

@implementation _GCAsyncFuture

- (id)_initOnQueue:(char)queue withOptions:(void *)options block:
{
  v7 = a2;
  optionsCopy = options;
  v9 = optionsCopy;
  if (self)
  {
    if (!optionsCopy)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel__initOnQueue_withOptions_block_ object:self file:@"GCFuture.mm" lineNumber:1237 description:{@"Invalid parameter not satisfying: %@", @"block != nil"}];
    }

    v25.receiver = self;
    v25.super_class = GCFuture;
    v10 = objc_msgSendSuper2(&v25, sel_init);
    *(v10 + 2) = 0;
    *(v10 + 12) = -2;
    *(v10 + 12) = -1;
    atomic_store(1u, v10 + 14);
    if (__creatorFrameKey(void)::onceToken != -1)
    {
      [_GCAsyncFuture _initOnQueue:withOptions:block:];
    }

    *(v10 + 8) = pthread_getspecific(__creatorFrameKey(void)::key);
    v11 = dispatch_group_create();
    v12 = *(v10 + 4);
    *(v10 + 4) = v11;

    dispatch_group_enter(*(v10 + 4));
    if ((queue & 2) != 0)
    {
      v13 = 0;
    }

    else
    {
      v13 = voucher_copy();
    }

    v14 = *(v10 + 5);
    *(v10 + 5) = v13;

    v15 = [[GCPromise alloc] initWithFuture:v10];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __49___GCAsyncFuture__initOnQueue_withOptions_block___block_invoke;
    aBlock[3] = &unk_1E8415218;
    v23 = v15;
    v24 = v9;
    v16 = v15;
    v17 = _Block_copy(aBlock);
    if (!v7)
    {
      dispatch_block_perform((queue & 2), v17);
LABEL_17:
      self = v10;

      goto LABEL_18;
    }

    if ((queue & 2) != 0)
    {
      v18 = DISPATCH_BLOCK_DETACHED;
    }

    else
    {
      if ((queue & 4) == 0)
      {
LABEL_16:
        dispatch_async(v7, v17);
        goto LABEL_17;
      }

      v18 = DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT;
    }

    v19 = dispatch_block_create(v18, v17);

    v17 = v19;
    goto LABEL_16;
  }

LABEL_18:

  return self;
}

- (void)_observeFinishOnQueue:(id)queue withOptions:(unsigned int)options qosClass:(unsigned int)class relativePriority:(int)priority block:(id)block
{
  v8 = *&priority;
  v9 = *&class;
  v10 = *&options;
  queueCopy = queue;
  blockCopy = block;
  os_unfair_lock_lock_with_options();
  tqh_first = self->_continuations._continuations.tqh_first;
  os_unfair_lock_unlock(&self->super._lock);
  if (tqh_first)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __84___GCAsyncFuture__observeFinishOnQueue_withOptions_qosClass_relativePriority_block___block_invoke;
    v15[3] = &unk_1E8415240;
    v17 = blockCopy;
    v16 = queueCopy;
    v18 = v10;
    v19 = v9;
    v20 = v8;
    ContinuationList::addOrInvokeContinuation_takesLock(&self->_creationVoucher, self, v15);
  }

  else
  {
    v21.receiver = self;
    v21.super_class = _GCAsyncFuture;
    [(GCFuture *)&v21 _observeFinishOnQueue:queueCopy withOptions:v10 qosClass:v9 relativePriority:v8 block:blockCopy];
  }
}

- (BOOL)_setState:(int64_t)state result:(id)result error:(id)error
{
  resultCopy = result;
  errorCopy = error;
  v13.receiver = self;
  v13.super_class = _GCAsyncFuture;
  v10 = [(GCFuture *)&v13 _setState:state result:resultCopy error:errorCopy];
  if (v10)
  {
    ContinuationList::drainContinuations_takesLock(&self->_creationVoucher, &self->super);
    condGroup = self->_condGroup;
    self->_condGroup = 0;

    dispatch_group_leave(&self->super._label->super);
  }

  return v10;
}

- (id)debugDescription
{
  v4.receiver = self;
  v4.super_class = _GCAsyncFuture;
  v2 = [(GCFuture *)&v4 debugDescription];

  return v2;
}

- (id).cxx_construct
{
  *(self + 6) = 0;
  *(self + 7) = self + 48;
  return self;
}

@end