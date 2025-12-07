@interface CUTDeferredTaskQueue
- (CUTDeferredTaskQueue)initWithCapacity:(int64_t)capacity queue:(id)queue block:(id)block;
- (CUTDeferredTaskQueue)initWithNumberCapacity:(id)capacity queue:(id)queue block:(id)block;
- (void)cancelPendingExecutions;
- (void)enqueueExecutionWithTarget:(id)target afterDelay:(double)delay;
@end

@implementation CUTDeferredTaskQueue

- (void)cancelPendingExecutions
{
  v23 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = objc_msgSend_pendingDispatchBlocks(self, v3, v4, 0);
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v18, v22, 16);
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      v10 = 0;
      do
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v5);
        }

        dispatch_block_cancel(*(*(&v18 + 1) + 8 * v10++));
      }

      while (v8 != v10);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v11, &v18, v22, 16);
    }

    while (v8);
  }

  v14 = objc_msgSend_pendingDispatchBlocks(self, v12, v13);
  objc_msgSend_removeAllObjects(v14, v15, v16);

  pendingDispatchBlocks = self->_pendingDispatchBlocks;
  self->_pendingDispatchBlocks = 0;

  os_unfair_lock_unlock(&self->_lock);
}

- (CUTDeferredTaskQueue)initWithCapacity:(int64_t)capacity queue:(id)queue block:(id)block
{
  queueCopy = queue;
  blockCopy = block;
  if (capacity < 0)
  {
    sub_1B2330D1C();
  }

  v11 = blockCopy;
  v12 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v10, capacity);
  v14 = objc_msgSend_initWithNumberCapacity_queue_block_(self, v13, v12, queueCopy, v11);

  return v14;
}

- (CUTDeferredTaskQueue)initWithNumberCapacity:(id)capacity queue:(id)queue block:(id)block
{
  capacityCopy = capacity;
  queueCopy = queue;
  blockCopy = block;
  v17.receiver = self;
  v17.super_class = CUTDeferredTaskQueue;
  v12 = [(CUTDeferredTaskQueue *)&v17 init];
  v13 = v12;
  if (v12)
  {
    v12->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v12->_capacity, capacity);
    objc_storeStrong(&v13->_queue, queue);
    v14 = MEMORY[0x1B2746240](blockCopy);
    originalBlock = v13->_originalBlock;
    v13->_originalBlock = v14;
  }

  return v13;
}

- (void)enqueueExecutionWithTarget:(id)target afterDelay:(double)delay
{
  targetCopy = target;
  v56 = 0;
  v57 = &v56;
  v58 = 0x3042000000;
  v59 = sub_1B23231D4;
  v60 = sub_1B2322E24;
  v61 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B2323D2C;
  block[3] = &unk_1E7B20C10;
  block[4] = self;
  v55 = &v56;
  v7 = targetCopy;
  v54 = v7;
  v8 = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  objc_storeWeak(v57 + 5, v8);
  os_unfair_lock_lock(&self->_lock);
  while (1)
  {
    v13 = objc_msgSend_capacity(self, v9, v10);
    if (!v13)
    {
      break;
    }

    v14 = objc_msgSend_pendingDispatchBlocks(self, v11, v12);
    v17 = objc_msgSend_count(v14, v15, v16);
    v20 = objc_msgSend_capacity(self, v18, v19);
    v23 = objc_msgSend_integerValue(v20, v21, v22);

    if (v17 < v23)
    {
      break;
    }

    v24 = objc_autoreleasePoolPush();
    v27 = objc_msgSend_pendingDispatchBlocks(self, v25, v26);
    v29 = objc_msgSend_objectAtIndex_(v27, v28, 0);

    v32 = objc_msgSend_pendingDispatchBlocks(self, v30, v31);
    objc_msgSend_removeObjectAtIndex_(v32, v33, 0);

    dispatch_block_cancel(v29);
    v36 = objc_msgSend_pendingDispatchBlocks(self, v34, v35);
    v39 = objc_msgSend_count(v36, v37, v38);

    if (!v39)
    {
      pendingDispatchBlocks = self->_pendingDispatchBlocks;
      self->_pendingDispatchBlocks = 0;
    }

    objc_autoreleasePoolPop(v24);
  }

  v41 = objc_msgSend_pendingDispatchBlocks(self, v11, v12);

  if (!v41)
  {
    v44 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v45 = self->_pendingDispatchBlocks;
    self->_pendingDispatchBlocks = v44;
  }

  v46 = objc_msgSend_pendingDispatchBlocks(self, v42, v43);
  v47 = MEMORY[0x1B2746240](v8);
  objc_msgSend_addObject_(v46, v48, v47);

  v49 = dispatch_time(0, (delay * 1000000000.0));
  v52 = objc_msgSend_queue(self, v50, v51);
  dispatch_after(v49, v52, v8);

  os_unfair_lock_unlock(&self->_lock);
  _Block_object_dispose(&v56, 8);
  objc_destroyWeak(&v61);
}

@end