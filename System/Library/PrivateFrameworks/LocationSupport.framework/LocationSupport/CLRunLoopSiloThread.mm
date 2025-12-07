@interface CLRunLoopSiloThread
- (CLRunLoopSiloThread)init;
- (CLRunLoopSiloThread)initWithCurrentThread;
- (CLRunLoopSiloThread)initWithRunLoop:(__CFRunLoop *)loop;
- (void)dealloc;
@end

@implementation CLRunLoopSiloThread

- (CLRunLoopSiloThread)initWithCurrentThread
{
  v12.receiver = self;
  v12.super_class = CLRunLoopSiloThread;
  v4 = [(CLRunLoopSiloThread *)&v12 init];
  if (v4)
  {
    v5 = objc_msgSend_currentThread(MEMORY[0x1E696AF00], v2, v3);
    underlyingThread = v4->_underlyingThread;
    v4->_underlyingThread = v5;

    v9 = objc_msgSend_currentRunLoop(MEMORY[0x1E695DFD0], v7, v8);
    underlyingRunLoop = v4->_underlyingRunLoop;
    v4->_underlyingRunLoop = v9;

    v4->_threadId = pthread_self();
    v4->_shouldCancelThread = 0;
  }

  return v4;
}

- (void)dealloc
{
  if (self->_shouldCancelThread)
  {
    CFRunLoop = objc_msgSend_getCFRunLoop(self->_underlyingRunLoop, a2, v2);
    CFRunLoopStop(CFRunLoop);
    objc_msgSend_cancel(self->_underlyingThread, v5, v6);
  }

  v7.receiver = self;
  v7.super_class = CLRunLoopSiloThread;
  [(CLRunLoopSiloThread *)&v7 dealloc];
}

- (CLRunLoopSiloThread)init
{
  v23.receiver = self;
  v23.super_class = CLRunLoopSiloThread;
  v2 = [(CLRunLoopSiloThread *)&v23 init];
  if (!v2)
  {
    goto LABEL_11;
  }

  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_1DF8090CC;
  v21 = sub_1DF809104;
  v22 = dispatch_semaphore_create(0);
  v3 = objc_alloc(MEMORY[0x1E696AF00]);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1DF80FD54;
  v14[3] = &unk_1E86C8320;
  v2 = v2;
  v15 = v2;
  v16 = &v17;
  v5 = objc_msgSend_initWithBlock_(v3, v4, v14);
  underlyingThread = v2->_underlyingThread;
  v2->_underlyingThread = v5;

  objc_msgSend_start(v2->_underlyingThread, v7, v8);
  v9 = dispatch_semaphore_wait(v18[5], 0xFFFFFFFFFFFFFFFFLL);
  if (v9)
  {
    if (qword_1ED5FAD40 != -1)
    {
      dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6440);
    }

    v10 = qword_1ED5FAD48;
    if (os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_FAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_1DF7FE000, v10, OS_LOG_TYPE_FAULT, "CLRunLoopSilo initialization timed out", v13, 2u);
    }

    v2 = 0;
  }

  else
  {
    v2->_shouldCancelThread = 1;
  }

  _Block_object_dispose(&v17, 8);
  if (v9)
  {
    v11 = 0;
  }

  else
  {
LABEL_11:
    v2 = v2;
    v11 = v2;
  }

  return v11;
}

- (CLRunLoopSiloThread)initWithRunLoop:(__CFRunLoop *)loop
{
  v20.receiver = self;
  v20.super_class = CLRunLoopSiloThread;
  v4 = [(CLRunLoopSiloThread *)&v20 init];
  if (!v4)
  {
    goto LABEL_11;
  }

  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_1DF8090CC;
  v18 = sub_1DF809104;
  v19 = dispatch_semaphore_create(0);
  v5 = *MEMORY[0x1E695E8D0];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1DF810000;
  block[3] = &unk_1E86C8320;
  v4 = v4;
  v12 = v4;
  v13 = &v14;
  CFRunLoopPerformBlock(loop, v5, block);
  v6 = dispatch_semaphore_wait(v15[5], 0xFFFFFFFFFFFFFFFFLL);
  if (v6)
  {
    if (qword_1ED5FAD40 != -1)
    {
      dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6440);
    }

    v7 = qword_1ED5FAD48;
    if (os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_FAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_1DF7FE000, v7, OS_LOG_TYPE_FAULT, "CLRunLoopSilo initialization timed out", v10, 2u);
    }

    v4 = 0;
  }

  else
  {
    v4->_shouldCancelThread = 0;
  }

  _Block_object_dispose(&v14, 8);
  if (v6)
  {
    v8 = 0;
  }

  else
  {
LABEL_11:
    v4 = v4;
    v8 = v4;
  }

  return v8;
}

@end