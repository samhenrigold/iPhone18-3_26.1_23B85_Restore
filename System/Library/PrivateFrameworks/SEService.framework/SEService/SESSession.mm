@interface SESSession
- (SESSession)init;
- (id)endRemoteSession;
- (id)proxy;
- (id)remoteObjectProxyWithErrorHandler:(id)handler;
- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)handler;
- (void)dealloc;
- (void)didEndUnexpectedly:(id)unexpectedly;
- (void)didStartSession:(id)session;
- (void)endSessionWithError:(id)error;
- (void)resume;
- (void)setDidEndCallback:(id)callback;
- (void)setDidStartCallback:(id)callback;
- (void)setProxy:(id)proxy;
@end

@implementation SESSession

- (SESSession)init
{
  v8.receiver = self;
  v8.super_class = SESSession;
  v2 = [(SESSession *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v2->state = 0;
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_create("com.apple.seserviced.session.queue", v4);
    queue = v3->_queue;
    v3->_queue = v5;

    dispatch_suspend(v3->_queue);
    v3->_isQueueSuspended = 1;
  }

  return v3;
}

- (void)dealloc
{
  v8 = *MEMORY[0x1E69E9840];
  if (self->state != 2)
  {
    v3 = SESDefaultLogObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      state = self->state;
      *buf = 134217984;
      v7 = state;
      _os_log_impl(&dword_1C7B9A000, v3, OS_LOG_TYPE_INFO, "Deallocating session in state %lu", buf, 0xCu);
    }
  }

  if (self->_isQueueSuspended)
  {
    dispatch_resume(self->_queue);
  }

  v5.receiver = self;
  v5.super_class = SESSession;
  [(SESSession *)&v5 dealloc];
}

- (void)resume
{
  if (self->_isQueueSuspended)
  {
    dispatch_resume(self->_queue);
    self->_isQueueSuspended = 0;
  }
}

- (void)setDidStartCallback:(id)callback
{
  callbackCopy = callback;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __34__SESSession_setDidStartCallback___block_invoke;
  v7[3] = &unk_1E82D13F8;
  v7[4] = self;
  v8 = callbackCopy;
  v6 = callbackCopy;
  dispatch_async(queue, v7);
}

uint64_t __34__SESSession_setDidStartCallback___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 24) = [*(a1 + 40) copy];

  return MEMORY[0x1EEE66BB8]();
}

- (void)setDidEndCallback:(id)callback
{
  callbackCopy = callback;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __32__SESSession_setDidEndCallback___block_invoke;
  v7[3] = &unk_1E82D13F8;
  v7[4] = self;
  v8 = callbackCopy;
  v6 = callbackCopy;
  dispatch_async(queue, v7);
}

uint64_t __32__SESSession_setDidEndCallback___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 32) = [*(a1 + 40) copy];

  return MEMORY[0x1EEE66BB8]();
}

- (void)didStartSession:(id)session
{
  sessionCopy = session;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __30__SESSession_didStartSession___block_invoke;
  v7[3] = &unk_1E82D11C0;
  v7[4] = self;
  v8 = sessionCopy;
  v6 = sessionCopy;
  dispatch_async(queue, v7);
}

void __30__SESSession_didStartSession___block_invoke(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = SESDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    v15 = 138412290;
    v16 = v4;
    _os_log_impl(&dword_1C7B9A000, v3, OS_LOG_TYPE_INFO, "didStartSession %@", &v15, 0xCu);
  }

  v5 = *(a1 + 32);
  if (!*(v5 + 48))
  {
    if (!*(a1 + 40))
    {
      *(v5 + 48) = 1;
      v12 = *(*(a1 + 32) + 24);
      if (!v12)
      {
        return;
      }

      (*(v12 + 16))();
      v11 = 24;
      goto LABEL_11;
    }

    *(v5 + 48) = 2;
    v6 = *(a1 + 32);
    v7 = *(v6 + 24);
    if (v7)
    {
      (*(v7 + 16))(v7, 0, *(a1 + 40));
      v8 = *(a1 + 32);
      v9 = *(v8 + 24);
      *(v8 + 24) = 0;

      v6 = *(a1 + 32);
    }

    v10 = *(v6 + 32);
    if (v10)
    {
      (*(v10 + 16))();
      v11 = 32;
LABEL_11:
      v13 = *(a1 + 32);
      v14 = *(v13 + v11);
      *(v13 + v11) = 0;
    }
  }
}

- (void)endSessionWithError:(id)error
{
  errorCopy = error;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __34__SESSession_endSessionWithError___block_invoke;
  v7[3] = &unk_1E82D11C0;
  v7[4] = self;
  v8 = errorCopy;
  v6 = errorCopy;
  dispatch_async(queue, v7);
}

void __34__SESSession_endSessionWithError___block_invoke(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = SESDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    *buf = 138412546;
    v21 = v4;
    v22 = 2112;
    v23 = v5;
    _os_log_impl(&dword_1C7B9A000, v3, OS_LOG_TYPE_INFO, "endSession %@ with error %@", buf, 0x16u);
  }

  v6 = *(a1 + 32);
  v7 = v6[6];
  if (v7 != 2)
  {
    if (!v7)
    {
      v8 = v6[3];
      if (v8)
      {
        if (*(a1 + 40))
        {
          (*(v8 + 16))(v6[3], 0);
        }

        else
        {
          v9 = SESDefaultLogObject();
          v19 = *(a1 + 32);
          v10 = SESCreateAndLogError();
          (*(v8 + 16))(v8, 0, v10);
        }

        v11 = *(a1 + 32);
        v12 = *(v11 + 24);
        *(v11 + 24) = 0;

        v6 = *(a1 + 32);
      }
    }

    v13 = [v6 endRemoteSession];
    if (v13)
    {
      v14 = SESDefaultLogObject();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v21 = v13;
        _os_log_impl(&dword_1C7B9A000, v14, OS_LOG_TYPE_ERROR, "Failed to end remote session %@", buf, 0xCu);
      }
    }

    v15 = *(a1 + 32);
    v16 = *(v15 + 32);
    if (v16)
    {
      (*(v16 + 16))();
      v17 = *(a1 + 32);
      v18 = *(v17 + 32);
      *(v17 + 32) = 0;

      v15 = *(a1 + 32);
    }

    *(v15 + 48) = 2;
  }
}

- (id)endRemoteSession
{
  proxy = [(SESSession *)self proxy];

  if (proxy)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x3032000000;
    v12 = __Block_byref_object_copy__5;
    v13 = __Block_byref_object_dispose__5;
    v14 = 0;
    proxy2 = [(SESSession *)self proxy];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __30__SESSession_endRemoteSession__block_invoke;
    v8[3] = &unk_1E82D1170;
    v8[4] = &v9;
    v5 = [proxy2 synchronousRemoteObjectProxyWithErrorHandler:v8];
    [v5 endSession:&__block_literal_global_5];

    [(SESSession *)self setProxy:0];
    v6 = v10[5];
    _Block_object_dispose(&v9, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)didEndUnexpectedly:(id)unexpectedly
{
  v10 = *MEMORY[0x1E69E9840];
  unexpectedlyCopy = unexpectedly;
  v5 = SESDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412546;
    selfCopy = self;
    v8 = 2112;
    v9 = unexpectedlyCopy;
    _os_log_impl(&dword_1C7B9A000, v5, OS_LOG_TYPE_ERROR, "Session %@ ended unexpectedly with error %@", &v6, 0x16u);
  }

  [(SESSession *)self endSession];
}

- (id)proxy
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_proxy;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setProxy:(id)proxy
{
  proxyCopy = proxy;
  obj = self;
  objc_sync_enter(obj);
  proxy = obj->_proxy;
  obj->_proxy = proxyCopy;

  objc_sync_exit(obj);
}

- (id)remoteObjectProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  proxy = [(SESSession *)self proxy];
  v6 = [proxy remoteObjectProxyWithErrorHandler:handlerCopy];

  if (!v6)
  {
    v7 = SESDefaultLogObject();
    v8 = SESCreateAndLogError();
    handlerCopy[2](handlerCopy, v8);
  }

  return v6;
}

- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  proxy = [(SESSession *)self proxy];
  v6 = [proxy synchronousRemoteObjectProxyWithErrorHandler:handlerCopy];

  if (!v6)
  {
    v7 = SESDefaultLogObject();
    v8 = SESCreateAndLogError();
    handlerCopy[2](handlerCopy, v8);
  }

  return v6;
}

@end