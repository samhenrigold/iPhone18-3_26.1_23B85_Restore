@interface _CUTLockingPromise
- (_CUTLockingPromise)init;
- (void)_fulfillWithResult:(id)result;
- (void)registerResultBlock:(id)block;
@end

@implementation _CUTLockingPromise

- (_CUTLockingPromise)init
{
  v9.receiver = self;
  v9.super_class = _CUTLockingPromise;
  _init = [(CUTUnsafePromise *)&v9 _init];
  v3 = _init;
  if (_init)
  {
    _init->_done = 0;
    v4 = objc_alloc_init(MEMORY[0x1E696AE68]);
    lock = v3->_lock;
    v3->_lock = v4;

    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    resultBlocks = v3->_resultBlocks;
    v3->_resultBlocks = v6;
  }

  return v3;
}

- (void)_fulfillWithResult:(id)result
{
  v28 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  objc_msgSend_lock(self->_lock, v6, v7);
  if (objc_msgSend_done(self, v8, v9))
  {
    sub_1B233138C(a2, self, v11);
  }

  objc_msgSend_setDone_(self, v10, 1);
  objc_msgSend_setResult_(self, v12, resultCopy);
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v13 = self->_resultBlocks;
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v23, v27, 16);
  if (v15)
  {
    v16 = v15;
    v17 = *v24;
    do
    {
      v18 = 0;
      do
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(v13);
        }

        (*(*(*(&v23 + 1) + 8 * v18) + 16))(*(*(&v23 + 1) + 8 * v18));
        ++v18;
      }

      while (v16 != v18);
      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v19, &v23, v27, 16);
    }

    while (v16);
  }

  resultBlocks = self->_resultBlocks;
  self->_resultBlocks = 0;

  objc_msgSend_unlock(self->_lock, v21, v22, v23);
}

- (void)registerResultBlock:(id)block
{
  blockCopy = block;
  objc_msgSend_lock(self->_lock, v4, v5);
  if (objc_msgSend_done(self, v6, v7))
  {
    v10 = objc_msgSend_result(self, v8, v9);
    blockCopy[2](blockCopy, v10);
  }

  else
  {
    resultBlocks = self->_resultBlocks;
    v10 = MEMORY[0x1B2746240](blockCopy);
    objc_msgSend_addObject_(resultBlocks, v12, v10);
  }

  objc_msgSend_unlock(self->_lock, v13, v14);
}

@end