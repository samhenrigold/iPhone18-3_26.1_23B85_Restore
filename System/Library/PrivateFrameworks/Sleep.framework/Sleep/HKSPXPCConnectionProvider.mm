@interface HKSPXPCConnectionProvider
+ (HKSPXPCConnectionProvider)providerWithConnectionInfo:(id)info;
- (BOOL)isInvalidated;
- (HKSPXPCConnectionProvider)initWithConnectionInfo:(id)info;
- (HKSPXPCConnectionProvider)initWithConnectionInfo:(id)info connectionProvider:(id)provider heartbeatListener:(id)listener;
- (HKSPXPCConnectionProviderDelegate)delegate;
- (NSXPCConnection)connection;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (void)_addPendingMessage:(id)message;
- (void)_didInterruptConnection;
- (void)_didInvalidateConnection;
- (void)_removePendingMessage:(id)message;
- (void)_retryPendingMessages;
- (void)_withLock:(id)lock;
- (void)dealloc;
- (void)invalidate;
- (void)listenerDidReceiveHeartbeat:(id)heartbeat;
- (void)performRemoteBlock:(id)block withErrorHandler:(id)handler doSynchronously:(BOOL)synchronously;
- (void)sendMessage:(id)message;
@end

@implementation HKSPXPCConnectionProvider

- (NSXPCConnection)connection
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__9;
  v9 = __Block_byref_object_dispose__9;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __39__HKSPXPCConnectionProvider_connection__block_invoke;
  v4[3] = &unk_279C74BB0;
  v4[4] = self;
  v4[5] = &v5;
  [(HKSPXPCConnectionProvider *)self _withLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __39__HKSPXPCConnectionProvider_connection__block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 32);
  if (!v2)
  {
    v3 = HKSPLogForCategory(4uLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = objc_opt_class();
      v5 = *(a1 + 32);
      *buf = 138543618;
      v21 = v4;
      v22 = 2048;
      v23 = v5;
      v6 = v4;
      _os_log_impl(&dword_269A84000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@.%p] rebuilding connection", buf, 0x16u);
    }

    v7 = (*(*(*(a1 + 32) + 56) + 16))();
    v8 = *(*(a1 + 32) + 32);
    *(*(a1 + 32) + 32) = v7;

    objc_initWeak(buf, *(a1 + 32));
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __39__HKSPXPCConnectionProvider_connection__block_invoke_306;
    v18[3] = &unk_279C74E70;
    objc_copyWeak(&v19, buf);
    [*(*(a1 + 32) + 32) setInterruptionHandler:v18];
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __39__HKSPXPCConnectionProvider_connection__block_invoke_2;
    v16 = &unk_279C74E70;
    objc_copyWeak(&v17, buf);
    [*(*(a1 + 32) + 32) setInvalidationHandler:&v13];
    v9 = [*(*(a1 + 32) + 40) remoteObjectInterface];
    [*(*(a1 + 32) + 32) setRemoteObjectInterface:v9];

    v10 = [*(*(a1 + 32) + 40) exportedObject];
    LOBYTE(v9) = v10 == 0;

    if ((v9 & 1) == 0)
    {
      v11 = [*(*(a1 + 32) + 40) exportedObjectInterface];
      [*(*(a1 + 32) + 32) setExportedInterface:v11];

      v12 = [*(*(a1 + 32) + 40) exportedObject];
      [*(*(a1 + 32) + 32) setExportedObject:v12];
    }

    [*(*(a1 + 32) + 32) resume];
    objc_destroyWeak(&v17);
    objc_destroyWeak(&v19);
    objc_destroyWeak(buf);
    v2 = *(*(a1 + 32) + 32);
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v2);
}

+ (HKSPXPCConnectionProvider)providerWithConnectionInfo:(id)info
{
  infoCopy = info;
  v4 = [objc_alloc(objc_opt_class()) initWithConnectionInfo:infoCopy];

  return v4;
}

- (HKSPXPCConnectionProvider)initWithConnectionInfo:(id)info
{
  infoCopy = info;
  v5 = HKSPStandardHeartbeatListener(infoCopy);
  v6 = [(HKSPXPCConnectionProvider *)self initWithConnectionInfo:infoCopy connectionProvider:&__block_literal_global_19 heartbeatListener:v5];

  return v6;
}

id __52__HKSPXPCConnectionProvider_initWithConnectionInfo___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCAE80];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v3 machServiceName];
  v6 = [v3 options];

  v7 = [v4 initWithMachServiceName:v5 options:v6];

  return v7;
}

- (HKSPXPCConnectionProvider)initWithConnectionInfo:(id)info connectionProvider:(id)provider heartbeatListener:(id)listener
{
  v29 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  providerCopy = provider;
  listenerCopy = listener;
  v22.receiver = self;
  v22.super_class = HKSPXPCConnectionProvider;
  v12 = [(HKSPXPCConnectionProvider *)&v22 init];
  if (v12)
  {
    v13 = HKSPLogForCategory(4uLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = objc_opt_class();
      *buf = 138543874;
      v24 = v14;
      v25 = 2048;
      v26 = v12;
      v27 = 2114;
      v28 = infoCopy;
      v15 = v14;
      _os_log_impl(&dword_269A84000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@.%p] initializing with %{public}@", buf, 0x20u);
    }

    v12->_connectionLock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v12->_connectionInfo, info);
    v16 = [providerCopy copy];
    connectionProvider = v12->_connectionProvider;
    v12->_connectionProvider = v16;

    objc_storeStrong(&v12->_heartbeatListener, listener);
    v12->_pendingMessagesLock._os_unfair_lock_opaque = 0;
    v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
    pendingMessages = v12->_pendingMessages;
    v12->_pendingMessages = v18;

    [(HKSPXPCHeartbeatListener *)v12->_heartbeatListener setHeartbeatDelegate:v12];
    v20 = v12;
  }

  return v12;
}

- (void)_withLock:(id)lock
{
  lockCopy = lock;
  os_unfair_lock_lock(&self->_connectionLock);
  lockCopy[2](lockCopy);

  os_unfair_lock_unlock(&self->_connectionLock);
}

- (void)_addPendingMessage:(id)message
{
  messageCopy = message;
  identifier = [messageCopy identifier];

  if (!identifier)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HKSPXPCConnectionProvider.m" lineNumber:70 description:{@"Invalid parameter not satisfying: %@", @"message.identifier != nil"}];
  }

  os_unfair_lock_lock(&self->_pendingMessagesLock);
  pendingMessages = self->_pendingMessages;
  identifier2 = [messageCopy identifier];
  [(NSMutableDictionary *)pendingMessages setObject:messageCopy forKeyedSubscript:identifier2];

  os_unfair_lock_unlock(&self->_pendingMessagesLock);
}

- (void)_removePendingMessage:(id)message
{
  messageCopy = message;
  identifier = [messageCopy identifier];

  if (!identifier)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HKSPXPCConnectionProvider.m" lineNumber:77 description:{@"Invalid parameter not satisfying: %@", @"message.identifier != nil"}];
  }

  os_unfair_lock_lock(&self->_pendingMessagesLock);
  pendingMessages = self->_pendingMessages;
  identifier2 = [messageCopy identifier];

  [(NSMutableDictionary *)pendingMessages removeObjectForKey:identifier2];

  os_unfair_lock_unlock(&self->_pendingMessagesLock);
}

- (void)_retryPendingMessages
{
  v28 = *MEMORY[0x277D85DE8];
  if (![(HKSPXPCConnectionProvider *)self isInvalidated])
  {
    os_unfair_lock_lock(&self->_pendingMessagesLock);
    allValues = [(NSMutableDictionary *)self->_pendingMessages allValues];
    [(NSMutableDictionary *)self->_pendingMessages removeAllObjects];
    os_unfair_lock_unlock(&self->_pendingMessagesLock);
    if ([allValues count])
    {
      v4 = HKSPLogForCategory(4uLL);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = objc_opt_class();
        v6 = v5;
        *buf = 138543874;
        v23 = v5;
        v24 = 2048;
        selfCopy2 = self;
        v26 = 2048;
        v27 = [allValues count];
        _os_log_impl(&dword_269A84000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@.%p] %ld pending messages to retry", buf, 0x20u);
      }

      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v16 = allValues;
      v7 = allValues;
      v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v18;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v18 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v17 + 1) + 8 * i);
            v13 = HKSPLogForCategory(4uLL);
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              v14 = objc_opt_class();
              *buf = 138543874;
              v23 = v14;
              v24 = 2048;
              selfCopy2 = self;
              v26 = 2114;
              v27 = v12;
              v15 = v14;
              _os_log_impl(&dword_269A84000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@.%p] retrying message %{public}@", buf, 0x20u);
            }

            [(HKSPXPCConnectionProvider *)self sendMessage:v12];
          }

          v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
        }

        while (v9);
      }

      allValues = v16;
    }
  }
}

- (void)dealloc
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory(4uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v7 = objc_opt_class();
    v8 = 2048;
    selfCopy = self;
    v4 = v7;
    _os_log_impl(&dword_269A84000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@.%p] deallocing...", buf, 0x16u);
  }

  [(HKSPXPCConnectionProvider *)self invalidate];
  v5.receiver = self;
  v5.super_class = HKSPXPCConnectionProvider;
  [(HKSPXPCConnectionProvider *)&v5 dealloc];
}

void __39__HKSPXPCConnectionProvider_connection__block_invoke_306(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _didInterruptConnection];
}

void __39__HKSPXPCConnectionProvider_connection__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _didInvalidateConnection];
}

- (BOOL)isInvalidated
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __42__HKSPXPCConnectionProvider_isInvalidated__block_invoke;
  v4[3] = &unk_279C741E0;
  v4[4] = self;
  v4[5] = &v5;
  [(HKSPXPCConnectionProvider *)self _withLock:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (void)_didInterruptConnection
{
  v10 = *MEMORY[0x277D85DE8];
  if (![(HKSPXPCConnectionProvider *)self isInvalidated])
  {
    v3 = HKSPLogForCategory(4uLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v7 = objc_opt_class();
      v8 = 2048;
      selfCopy = self;
      v4 = v7;
      _os_log_error_impl(&dword_269A84000, v3, OS_LOG_TYPE_ERROR, "[%{public}@.%p] connection interrupted", buf, 0x16u);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __52__HKSPXPCConnectionProvider__didInterruptConnection__block_invoke;
    block[3] = &unk_279C74258;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (void)_didInvalidateConnection
{
  v11 = *MEMORY[0x277D85DE8];
  if (![(HKSPXPCConnectionProvider *)self isInvalidated])
  {
    v3 = HKSPLogForCategory(4uLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v8 = objc_opt_class();
      v9 = 2048;
      selfCopy = self;
      v4 = v8;
      _os_log_error_impl(&dword_269A84000, v3, OS_LOG_TYPE_ERROR, "[%{public}@.%p] connection invalidated", buf, 0x16u);
    }

    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __53__HKSPXPCConnectionProvider__didInvalidateConnection__block_invoke;
    v6[3] = &unk_279C74258;
    v6[4] = self;
    [(HKSPXPCConnectionProvider *)self _withLock:v6];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __53__HKSPXPCConnectionProvider__didInvalidateConnection__block_invoke_2;
    v5[3] = &unk_279C74258;
    v5[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], v5);
  }
}

void __53__HKSPXPCConnectionProvider__didInvalidateConnection__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 32);
  *(v1 + 32) = 0;
}

- (void)listenerDidReceiveHeartbeat:(id)heartbeat
{
  v11 = *MEMORY[0x277D85DE8];
  if (![(HKSPXPCConnectionProvider *)self isInvalidated])
  {
    v4 = HKSPLogForCategory(4uLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138543618;
      v8 = objc_opt_class();
      v9 = 2048;
      selfCopy = self;
      v5 = v8;
      _os_log_impl(&dword_269A84000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@.%p] received heartbeat, reconnecting", &v7, 0x16u);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained reconnect];
  }
}

- (void)performRemoteBlock:(id)block withErrorHandler:(id)handler doSynchronously:(BOOL)synchronously
{
  synchronouslyCopy = synchronously;
  blockCopy = block;
  handlerCopy = handler;
  v10 = [HKSPXPCMessage alloc];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __81__HKSPXPCConnectionProvider_performRemoteBlock_withErrorHandler_doSynchronously___block_invoke;
  v13[3] = &unk_279C76080;
  v14 = blockCopy;
  v11 = blockCopy;
  v12 = [(HKSPXPCMessage *)v10 initWithIdentifier:0 block:v13 options:synchronouslyCopy errorHandler:handlerCopy];

  [(HKSPXPCConnectionProvider *)self sendMessage:v12];
}

- (void)sendMessage:(id)message
{
  v18 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  options = [messageCopy options];
  connection = [(HKSPXPCConnectionProvider *)self connection];
  errorHandler = [messageCopy errorHandler];
  if (options)
  {
    [connection synchronousRemoteObjectProxyWithErrorHandler:errorHandler];
  }

  else
  {
    [connection remoteObjectProxyWithErrorHandler:errorHandler];
  }
  v8 = ;

  if (v8)
  {
    if (([messageCopy options] & 2) != 0)
    {
      [(HKSPXPCConnectionProvider *)self _addPendingMessage:messageCopy];
    }

    block = [messageCopy block];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __41__HKSPXPCConnectionProvider_sendMessage___block_invoke;
    v12[3] = &unk_279C753B8;
    v12[4] = self;
    v13 = messageCopy;
    (block)[2](block, v8, v12);
  }

  else
  {
    v10 = HKSPLogForCategory(4uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v15 = objc_opt_class();
      v16 = 2048;
      selfCopy = self;
      v11 = v15;
      _os_log_error_impl(&dword_269A84000, v10, OS_LOG_TYPE_ERROR, "[%{public}@.%p] remote object is nil", buf, 0x16u);
    }
  }
}

void __41__HKSPXPCConnectionProvider_sendMessage___block_invoke(uint64_t a1, int a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    [*(a1 + 32) _removePendingMessage:*(a1 + 40)];
  }

  else
  {
    v6 = HKSPLogForCategory(4uLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = objc_opt_class();
      v9 = *(a1 + 32);
      v14 = 138543874;
      v15 = v8;
      v16 = 2048;
      v17 = v9;
      v18 = 2114;
      v19 = v5;
      v10 = v8;
      _os_log_error_impl(&dword_269A84000, v6, OS_LOG_TYPE_ERROR, "[%{public}@.%p] message failed with error %{public}@", &v14, 0x20u);
    }

    if ([v5 hksp_shouldRetryMessage])
    {
      v7 = HKSPLogForCategory(4uLL);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v11 = objc_opt_class();
        v12 = *(a1 + 32);
        v14 = 138543618;
        v15 = v11;
        v16 = 2048;
        v17 = v12;
        v13 = v11;
        _os_log_error_impl(&dword_269A84000, v7, OS_LOG_TYPE_ERROR, "[%{public}@.%p] message should be retried...", &v14, 0x16u);
      }
    }
  }
}

- (void)invalidate
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory(4uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v7 = objc_opt_class();
    v8 = 2048;
    selfCopy = self;
    v4 = v7;
    _os_log_impl(&dword_269A84000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@.%p] invalidating...", buf, 0x16u);
  }

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __39__HKSPXPCConnectionProvider_invalidate__block_invoke;
  v5[3] = &unk_279C74258;
  v5[4] = self;
  [(HKSPXPCConnectionProvider *)self _withLock:v5];
}

void __39__HKSPXPCConnectionProvider_invalidate__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 48) setHeartbeatDelegate:0];
  *(*(a1 + 32) + 8) = 1;
  [*(*(a1 + 32) + 32) setInterruptionHandler:0];
  [*(*(a1 + 32) + 32) setInvalidationHandler:0];
  [*(*(a1 + 32) + 32) invalidate];
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  *(v2 + 32) = 0;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(HKSPXPCConnectionProvider *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(HKSPXPCConnectionProvider *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v4 = [MEMORY[0x277CF0C00] builderWithObject:self];
  connectionInfo = [(HKSPXPCConnectionProvider *)self connectionInfo];
  v6 = [v4 appendObject:connectionInfo withName:@"connectionInfo"];

  return v4;
}

- (HKSPXPCConnectionProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end