@interface CKAdopterProcessScopedDaemonProxy
+ (NSXPCInterface)CKXPCClientToDaemonAdopterProcessScopedInterface;
- (CKAdopterProcessScopedDaemonProxy)initWithConnection:(id)connection;
- (CKXPCConnection)connection;
- (id)globalDeviceIdentifierWithError:(id *)error;
- (void)_getAdopterProcessScopedDaemonProxyCreatorSynchronous:(BOOL)synchronous completionHandler:(id)handler;
- (void)_getAdopterProcessScopedDaemonProxySynchronous:(BOOL)synchronous errorHandler:(id)handler daemonProxyHandler:(id)proxyHandler;
- (void)dealloc;
@end

@implementation CKAdopterProcessScopedDaemonProxy

+ (NSXPCInterface)CKXPCClientToDaemonAdopterProcessScopedInterface
{
  if (qword_1ED4B6220 != -1)
  {
    dispatch_once(&qword_1ED4B6220, &unk_1EFA2F168);
  }

  v3 = qword_1ED4B6218;

  return v3;
}

- (CKAdopterProcessScopedDaemonProxy)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v8.receiver = self;
  v8.super_class = CKAdopterProcessScopedDaemonProxy;
  v5 = [(CKAdopterProcessScopedDaemonProxy *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_connection, connectionCopy);
  }

  return v6;
}

- (void)dealloc
{
  v4 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], a2, v2);
  v7 = objc_msgSend_connectionInterruptedObserver(self, v5, v6);
  objc_msgSend_removeObserver_(v4, v8, v7);

  v9.receiver = self;
  v9.super_class = CKAdopterProcessScopedDaemonProxy;
  [(CKAdopterProcessScopedDaemonProxy *)&v9 dealloc];
}

- (id)globalDeviceIdentifierWithError:(id *)error
{
  v5 = _os_activity_create(&dword_1883EA000, "client/global-device-identifier", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v6 = ck_log_facility_distributed_sync;
  if (os_log_type_enabled(ck_log_facility_distributed_sync, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1883EA000, v6, OS_LOG_TYPE_INFO, "Will fetch global device identifier from daemon", buf, 2u);
  }

  *buf = 0;
  v19 = buf;
  v20 = 0x3032000000;
  v21 = sub_1883ED938;
  v22 = sub_1883EF5D4;
  v23 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1883ED938;
  v16 = sub_1883EF5D4;
  v17 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1885AA298;
  v11[3] = &unk_1E70BC990;
  v11[4] = &v12;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1885AA394;
  v10[3] = &unk_1E70BE6F0;
  v10[4] = &v12;
  v10[5] = buf;
  objc_msgSend__getAdopterProcessScopedDaemonProxySynchronous_errorHandler_daemonProxyHandler_(self, v7, 1, v11, v10);
  if (error)
  {
    *error = v13[5];
  }

  v8 = *(v19 + 5);
  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(buf, 8);
  os_activity_scope_leave(&state);

  return v8;
}

- (void)_getAdopterProcessScopedDaemonProxySynchronous:(BOOL)synchronous errorHandler:(id)handler daemonProxyHandler:(id)proxyHandler
{
  synchronousCopy = synchronous;
  handlerCopy = handler;
  proxyHandlerCopy = proxyHandler;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1885AA68C;
  v13[3] = &unk_1E70BC5E0;
  v16 = synchronousCopy;
  v14 = proxyHandlerCopy;
  v15 = handlerCopy;
  v10 = handlerCopy;
  v11 = proxyHandlerCopy;
  objc_msgSend__getAdopterProcessScopedDaemonProxyCreatorSynchronous_completionHandler_(self, v12, synchronousCopy, v13);
}

- (void)_getAdopterProcessScopedDaemonProxyCreatorSynchronous:(BOOL)synchronous completionHandler:(id)handler
{
  synchronousCopy = synchronous;
  handlerCopy = handler;
  v9 = objc_msgSend_connection(self, v7, v8);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v13 = objc_msgSend_connectionInterruptedObserver(selfCopy, v11, v12);

  if (!v13)
  {
    objc_initWeak(&location, selfCopy);
    v16 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v14, v15);
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = sub_1885AA99C;
    v29[3] = &unk_1E70BC608;
    objc_copyWeak(&v30, &location);
    v18 = objc_msgSend_addObserverForName_object_queue_usingBlock_(v16, v17, @"CKXPCConnectionInterrupted", v9, 0, v29);
    objc_msgSend_setConnectionInterruptedObserver_(selfCopy, v19, v18);

    objc_destroyWeak(&v30);
    objc_destroyWeak(&location);
  }

  objc_sync_exit(selfCopy);

  v20 = selfCopy;
  objc_sync_enter(v20);
  if (objc_msgSend_hasValidAdopterProcessScopedDaemonProxyCreator(v20, v21, v22))
  {
    v25 = objc_msgSend_adopterProcessScopedDaemonProxyCreator(v20, v23, v24);
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
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = sub_1885AAA8C;
    v27[3] = &unk_1E70BE718;
    v27[4] = v20;
    v28 = handlerCopy;
    objc_msgSend_getAdopterProcessScopedDaemonProxyCreatorSynchronous_completionHandler_(v9, v26, synchronousCopy, v27);
  }
}

- (CKXPCConnection)connection
{
  WeakRetained = objc_loadWeakRetained(&self->_connection);

  return WeakRetained;
}

@end