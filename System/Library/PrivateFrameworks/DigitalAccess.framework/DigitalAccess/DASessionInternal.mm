@interface DASessionInternal
- (DASessionInternal)initWithDelegate:(id)delegate;
- (id)delegate;
- (id)proxy;
- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)handler;
- (void)closeProxy;
- (void)dealloc;
- (void)dispatchBlockOnCallback:(id)callback;
- (void)resume;
- (void)setProxy:(id)proxy;
@end

@implementation DASessionInternal

- (DASessionInternal)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v12.receiver = self;
  v12.super_class = DASessionInternal;
  v5 = [(DASessionInternal *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
    ClassName = object_getClassName(v6);
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create(ClassName, v8);
    callbackQueue = v6->_callbackQueue;
    v6->_callbackQueue = v9;

    dispatch_suspend(v6->_callbackQueue);
    v6->_isCallbackQueueSuspended = 1;
  }

  return v6;
}

- (void)dealloc
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = KmlLogger(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v8 = "[DASessionInternal dealloc]";
    v9 = 1024;
    v10 = 49;
    _os_log_impl(&dword_248BF3000, v3, OS_LOG_TYPE_DEBUG, "%s : %i : Internal released", buf, 0x12u);
  }

  [(DASessionInternal *)self resume];
  callbackQueue = self->_callbackQueue;
  self->_callbackQueue = 0;

  proxy = self->_proxy;
  self->_proxy = 0;

  v6.receiver = self;
  v6.super_class = DASessionInternal;
  [(DASessionInternal *)&v6 dealloc];
}

- (void)dispatchBlockOnCallback:(id)callback
{
  v14 = *MEMORY[0x277D85DE8];
  callbackCopy = callback;
  v5 = callbackCopy;
  callbackQueue = self->_callbackQueue;
  if (callbackQueue)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __45__DASessionInternal_dispatchBlockOnCallback___block_invoke;
    block[3] = &unk_278F70290;
    v9 = callbackCopy;
    dispatch_async(callbackQueue, block);
    v7 = v9;
  }

  else
  {
    v7 = KmlLogger(callbackCopy);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v11 = "[DASessionInternal dispatchBlockOnCallback:]";
      v12 = 1024;
      v13 = 62;
      _os_log_impl(&dword_248BF3000, v7, OS_LOG_TYPE_ERROR, "%s : %i : Invalid callback queue", buf, 0x12u);
    }
  }
}

- (void)closeProxy
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = KmlLogger(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315394;
    v6 = "[DASessionInternal closeProxy]";
    v7 = 1024;
    v8 = 68;
    _os_log_impl(&dword_248BF3000, v3, OS_LOG_TYPE_DEBUG, "%s : %i : ", &v5, 0x12u);
  }

  proxy = self->_proxy;
  self->_proxy = 0;
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_proxy != proxyCopy)
  {
    objc_storeStrong(&selfCopy->_proxy, proxy);
  }

  objc_sync_exit(selfCopy);

  [(DASessionInternal *)selfCopy resume];
}

- (void)resume
{
  if (self->_isCallbackQueueSuspended)
  {
    dispatch_resume(self->_callbackQueue);
    self->_isCallbackQueueSuspended = 0;
  }
}

- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)handler
{
  v20 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  proxy = [(DASessionInternal *)self proxy];
  v6 = [proxy synchronousRemoteObjectProxyWithErrorHandler:handlerCopy];

  if (!v6)
  {
    v8 = KmlLogger(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v17 = "[DASessionInternal synchronousRemoteObjectProxyWithErrorHandler:]";
      v18 = 1024;
      v19 = 105;
      _os_log_impl(&dword_248BF3000, v8, OS_LOG_TYPE_ERROR, "%s : %i : Failed to get remote proxy", buf, 0x12u);
    }

    v9 = MEMORY[0x277CCA9B8];
    v14 = *MEMORY[0x277CCA450];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:{DAErrorString(216), v14}];
    v15 = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v12 = [v9 errorWithDomain:@"DigitalAccessError" code:216 userInfo:v11];
    handlerCopy[2](handlerCopy, v12);
  }

  return v6;
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end