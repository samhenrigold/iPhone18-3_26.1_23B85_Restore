@interface WBSSafariBookmarksSyncAgentConnection
- (WBSSafariBookmarksSyncAgentConnection)init;
- (WBSSafariBookmarksSyncAgentProtocol)remoteObjectProxy;
- (void)_connectionDidInvalidate;
- (void)_setUpConnectionIfNeeded;
@end

@implementation WBSSafariBookmarksSyncAgentConnection

- (WBSSafariBookmarksSyncAgentConnection)init
{
  v6.receiver = self;
  v6.super_class = WBSSafariBookmarksSyncAgentConnection;
  v2 = [(WBSSafariBookmarksSyncAgentConnection *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_connectionLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

- (void)_setUpConnectionIfNeeded
{
  os_unfair_lock_lock(&self->_connectionLock);
  if (!self->_connection)
  {
    v5 = WBS_LOG_CHANNEL_PREFIXXPC(v3, v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_1B8447000, v5, OS_LOG_TYPE_DEFAULT, "Setting up XPC to SBSA", buf, 2u);
    }

    v6 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.SafariBookmarksSyncAgent" options:0];
    connection = self->_connection;
    self->_connection = v6;

    v8 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F30A1300];
    [(NSXPCConnection *)self->_connection setRemoteObjectInterface:v8];
    objc_initWeak(buf, self);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __65__WBSSafariBookmarksSyncAgentConnection__setUpConnectionIfNeeded__block_invoke;
    v9[3] = &unk_1E7CF15E8;
    objc_copyWeak(&v10, buf);
    [(NSXPCConnection *)self->_connection setInvalidationHandler:v9];
    [(NSXPCConnection *)self->_connection resume];
    objc_destroyWeak(&v10);
    objc_destroyWeak(buf);
  }

  os_unfair_lock_unlock(&self->_connectionLock);
}

void __65__WBSSafariBookmarksSyncAgentConnection__setUpConnectionIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _connectionDidInvalidate];
}

- (void)_connectionDidInvalidate
{
  os_unfair_lock_lock(&self->_connectionLock);
  v5 = WBS_LOG_CHANNEL_PREFIXXPC(v3, v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1B8447000, v5, OS_LOG_TYPE_DEFAULT, "XPC to SBSA invalidated", v7, 2u);
  }

  connection = self->_connection;
  self->_connection = 0;

  os_unfair_lock_unlock(&self->_connectionLock);
}

- (WBSSafariBookmarksSyncAgentProtocol)remoteObjectProxy
{
  [(WBSSafariBookmarksSyncAgentConnection *)self _setUpConnectionIfNeeded];
  remoteObjectProxy = [(NSXPCConnection *)self->_connection remoteObjectProxy];
  if ([remoteObjectProxy conformsToProtocol:&unk_1F30A1300])
  {
    v4 = remoteObjectProxy;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

@end