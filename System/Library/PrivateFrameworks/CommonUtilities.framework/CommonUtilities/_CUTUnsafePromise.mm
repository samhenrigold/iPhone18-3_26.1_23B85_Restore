@interface _CUTUnsafePromise
- (_CUTUnsafePromise)init;
- (_CUTUnsafePromise)initWithResult:(id)result;
- (void)_fulfillWithResult:(id)result;
- (void)registerResultBlock:(id)block;
@end

@implementation _CUTUnsafePromise

- (_CUTUnsafePromise)init
{
  v7.receiver = self;
  v7.super_class = _CUTUnsafePromise;
  _init = [(CUTUnsafePromise *)&v7 _init];
  v3 = _init;
  if (_init)
  {
    _init->_done = 0;
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    resultBlocks = v3->_resultBlocks;
    v3->_resultBlocks = v4;
  }

  return v3;
}

- (_CUTUnsafePromise)initWithResult:(id)result
{
  resultCopy = result;
  v9.receiver = self;
  v9.super_class = _CUTUnsafePromise;
  _init = [(CUTUnsafePromise *)&v9 _init];
  v7 = _init;
  if (_init)
  {
    _init->_done = 1;
    objc_storeStrong(&_init->_result, result);
  }

  return v7;
}

- (void)_fulfillWithResult:(id)result
{
  v24 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  if (objc_msgSend_done(self, v6, v7))
  {
    sub_1B2330F88(a2, self, v9);
  }

  objc_msgSend_setDone_(self, v8, 1);
  objc_msgSend_setResult_(self, v10, resultCopy);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = self->_resultBlocks;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v19, v23, 16);
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      v16 = 0;
      do
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v11);
        }

        (*(*(*(&v19 + 1) + 8 * v16) + 16))(*(*(&v19 + 1) + 8 * v16));
        ++v16;
      }

      while (v14 != v16);
      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v17, &v19, v23, 16);
    }

    while (v14);
  }

  resultBlocks = self->_resultBlocks;
  self->_resultBlocks = 0;
}

- (void)registerResultBlock:(id)block
{
  blockCopy = block;
  if (objc_msgSend_done(self, v4, v5))
  {
    v8 = objc_msgSend_result(self, v6, v7);
    blockCopy[2](blockCopy, v8);
  }

  else
  {
    resultBlocks = self->_resultBlocks;
    v8 = MEMORY[0x1B2746240](blockCopy);
    objc_msgSend_addObject_(resultBlocks, v10, v8);
  }
}

@end