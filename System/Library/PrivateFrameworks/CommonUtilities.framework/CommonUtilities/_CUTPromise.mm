@interface _CUTPromise
- (_CUTPromise)initWithQueue:(id)queue;
- (void)_fulfillWithResult:(id)result;
- (void)registerResultBlock:(id)block;
@end

@implementation _CUTPromise

- (_CUTPromise)initWithQueue:(id)queue
{
  queueCopy = queue;
  v11.receiver = self;
  v11.super_class = _CUTPromise;
  _init = [(CUTUnsafePromise *)&v11 _init];
  v7 = _init;
  if (_init)
  {
    *(_init + 24) = 0;
    objc_storeStrong(_init + 1, queue);
    v8 = dispatch_group_create();
    v9 = v7[2];
    v7[2] = v8;

    dispatch_group_enter(v7[2]);
  }

  return v7;
}

- (void)_fulfillWithResult:(id)result
{
  resultCopy = result;
  v8 = objc_msgSend_queue(self, v6, v7);
  dispatch_assert_queue_V2(v8);

  if (objc_msgSend_done(self, v9, v10))
  {
    sub_1B2331310(a2, self, v12);
  }

  objc_msgSend_setDone_(self, v11, 1);
  objc_msgSend_setResult_(self, v13, resultCopy);

  v16 = objc_msgSend_group(self, v14, v15);
  dispatch_group_leave(v16);
}

- (void)registerResultBlock:(id)block
{
  blockCopy = block;
  v7 = objc_msgSend_group(self, v5, v6);
  v10 = objc_msgSend_queue(self, v8, v9);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1B23279A8;
  v12[3] = &unk_1E7B20DC0;
  v12[4] = self;
  v13 = blockCopy;
  v11 = blockCopy;
  dispatch_group_notify(v7, v10, v12);
}

@end