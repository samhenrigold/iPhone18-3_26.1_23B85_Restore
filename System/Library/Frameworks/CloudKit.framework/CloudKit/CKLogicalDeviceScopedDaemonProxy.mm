@interface CKLogicalDeviceScopedDaemonProxy
+ (NSXPCInterface)CKXPCClientToDaemonLogicalDeviceScopedInterface;
+ (NSXPCInterface)CKXPCDaemonToClientLogicalDeviceScopedInterface;
- (CKLogicalDeviceContext)deviceContext;
- (CKLogicalDeviceScopedDaemonProxy)initWithDeviceContext:(id)context;
- (CKXPCConnection)connection;
- (void)_getLogicalDeviceScopedDaemonProxyCreatorSynchronous:(BOOL)synchronous completionHandler:(id)handler;
- (void)_getLogicalDeviceScopedDaemonProxySynchronous:(BOOL)synchronous errorHandler:(id)handler daemonProxyHandler:(id)proxyHandler;
- (void)addClouddThrottle:(id)throttle;
- (void)allClouddThrottlesWithCompletionHandler:(id)handler;
- (void)dealloc;
@end

@implementation CKLogicalDeviceScopedDaemonProxy

+ (NSXPCInterface)CKXPCClientToDaemonLogicalDeviceScopedInterface
{
  if (qword_1ED4B6230 != -1)
  {
    dispatch_once(&qword_1ED4B6230, &unk_1EFA2F248);
  }

  v3 = qword_1ED4B6228;

  return v3;
}

+ (NSXPCInterface)CKXPCDaemonToClientLogicalDeviceScopedInterface
{
  if (qword_1ED4B6240 != -1)
  {
    dispatch_once(&qword_1ED4B6240, &unk_1EFA2F268);
  }

  v3 = qword_1ED4B6238;

  return v3;
}

- (CKLogicalDeviceScopedDaemonProxy)initWithDeviceContext:(id)context
{
  contextCopy = context;
  v8.receiver = self;
  v8.super_class = CKLogicalDeviceScopedDaemonProxy;
  v5 = [(CKLogicalDeviceScopedDaemonProxy *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_deviceContext, contextCopy);
  }

  return v6;
}

- (void)dealloc
{
  v4 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], a2, v2);
  v7 = objc_msgSend_connectionInterruptedObserver(self, v5, v6);
  objc_msgSend_removeObserver_(v4, v8, v7);

  v9.receiver = self;
  v9.super_class = CKLogicalDeviceScopedDaemonProxy;
  [(CKLogicalDeviceScopedDaemonProxy *)&v9 dealloc];
}

- (CKXPCConnection)connection
{
  v3 = objc_msgSend_deviceContext(self, a2, v2);
  v6 = objc_msgSend_connection(v3, v4, v5);

  return v6;
}

- (void)allClouddThrottlesWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x3032000000;
  v10[3] = sub_1883ED948;
  v10[4] = sub_1883EF5DC;
  v11 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1885AB0B0;
  v7[3] = &unk_1E70BE788;
  v9 = v10;
  v5 = handlerCopy;
  v8 = v5;
  objc_msgSend__getLogicalDeviceScopedDaemonProxySynchronous_errorHandler_daemonProxyHandler_(self, v6, 1, &unk_1EFA2F1C8, v7);

  _Block_object_dispose(v10, 8);
}

- (void)addClouddThrottle:(id)throttle
{
  throttleCopy = throttle;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1885AB20C;
  v7[3] = &unk_1E70BE7B0;
  v8 = throttleCopy;
  v5 = throttleCopy;
  objc_msgSend__getLogicalDeviceScopedDaemonProxySynchronous_errorHandler_daemonProxyHandler_(self, v6, 1, &unk_1EFA2F1E8, v7);
}

- (void)_getLogicalDeviceScopedDaemonProxySynchronous:(BOOL)synchronous errorHandler:(id)handler daemonProxyHandler:(id)proxyHandler
{
  synchronousCopy = synchronous;
  handlerCopy = handler;
  proxyHandlerCopy = proxyHandler;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1885AB308;
  v13[3] = &unk_1E70BC5E0;
  v16 = synchronousCopy;
  v14 = proxyHandlerCopy;
  v15 = handlerCopy;
  v10 = handlerCopy;
  v11 = proxyHandlerCopy;
  objc_msgSend__getLogicalDeviceScopedDaemonProxyCreatorSynchronous_completionHandler_(self, v12, synchronousCopy, v13);
}

- (void)_getLogicalDeviceScopedDaemonProxyCreatorSynchronous:(BOOL)synchronous completionHandler:(id)handler
{
  synchronousCopy = synchronous;
  handlerCopy = handler;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v10 = objc_msgSend_connectionInterruptedObserver(selfCopy, v8, v9);

  if (!v10)
  {
    objc_initWeak(&location, selfCopy);
    v13 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v11, v12);
    v16 = objc_msgSend_connection(selfCopy, v14, v15);
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = sub_1885AB654;
    v38[3] = &unk_1E70BC608;
    objc_copyWeak(&v39, &location);
    v18 = objc_msgSend_addObserverForName_object_queue_usingBlock_(v13, v17, @"CKXPCConnectionInterrupted", v16, 0, v38);
    objc_msgSend_setConnectionInterruptedObserver_(selfCopy, v19, v18);

    objc_destroyWeak(&v39);
    objc_destroyWeak(&location);
  }

  objc_sync_exit(selfCopy);

  v20 = selfCopy;
  objc_sync_enter(v20);
  if (objc_msgSend_hasValidLogicalDeviceScopedDaemonProxyCreator(v20, v21, v22))
  {
    v25 = objc_msgSend_logicalDeviceScopedDaemonProxyCreator(v20, v23, v24);
  }

  else
  {
    v25 = 0;
  }

  objc_sync_exit(v20);

  if (v25)
  {
    handlerCopy[2](handlerCopy, v25, 0);
  }

  else
  {
    v28 = objc_msgSend_connection(v20, v26, v27);
    v31 = objc_msgSend_deviceContext(v20, v29, v30);
    v34 = objc_msgSend_testDeviceReferenceProtocol(v31, v32, v33);
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = sub_1885AB744;
    v36[3] = &unk_1E70BE7D8;
    v36[4] = v20;
    v37 = handlerCopy;
    objc_msgSend_getLogicalDeviceScopedDaemonProxyCreatorForTestDeviceReferenceProtocol_synchronous_completionHandler_(v28, v35, v34, synchronousCopy, v36);
  }
}

- (CKLogicalDeviceContext)deviceContext
{
  WeakRetained = objc_loadWeakRetained(&self->_deviceContext);

  return WeakRetained;
}

@end