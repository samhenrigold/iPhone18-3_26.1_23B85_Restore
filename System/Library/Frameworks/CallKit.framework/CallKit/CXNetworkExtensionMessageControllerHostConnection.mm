@interface CXNetworkExtensionMessageControllerHostConnection
- (CXNetworkExtensionMessageControllerHostConnection)initWithConnection:(id)connection;
- (CXNetworkExtensionMessageControllerHostConnectionDelegate)delegate;
- (NSString)description;
- (void)dealloc;
- (void)invalidate;
- (void)sendNetworkExtensionMessage:(id)message forBundleIdentifier:(id)identifier reply:(id)reply;
- (void)sendNetworkExtensionPushToTalkMessage:(id)message forBundleIdentifier:(id)identifier reply:(id)reply;
- (void)setDelegate:(id)delegate;
@end

@implementation CXNetworkExtensionMessageControllerHostConnection

- (CXNetworkExtensionMessageControllerHostConnection)initWithConnection:(id)connection
{
  v23 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  v20.receiver = self;
  v20.super_class = CXNetworkExtensionMessageControllerHostConnection;
  v6 = [(CXNetworkExtensionMessageControllerHostConnection *)&v20 init];
  v7 = v6;
  if (v6)
  {
    v6->_accessorLock._os_unfair_lock_opaque = 0;
    cx_applicationIdentifier = [connectionCopy cx_applicationIdentifier];
    applicationIdentifier = v7->_applicationIdentifier;
    v7->_applicationIdentifier = cx_applicationIdentifier;

    cx_capabilities = [connectionCopy cx_capabilities];
    capabilities = v7->_capabilities;
    v7->_capabilities = cx_capabilities;

    objc_storeStrong(&v7->_connection, connection);
    [(NSXPCConnection *)v7->_connection setExportedObject:v7];
    cx_networkExtensionMessageControllerHostInterface = [MEMORY[0x1E696B0D0] cx_networkExtensionMessageControllerHostInterface];
    [(NSXPCConnection *)v7->_connection setExportedInterface:cx_networkExtensionMessageControllerHostInterface];

    objc_initWeak(&location, v7);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __72__CXNetworkExtensionMessageControllerHostConnection_initWithConnection___block_invoke;
    v17[3] = &unk_1E7C06E50;
    objc_copyWeak(&v18, &location);
    [(NSXPCConnection *)v7->_connection setInterruptionHandler:v17];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __72__CXNetworkExtensionMessageControllerHostConnection_initWithConnection___block_invoke_2;
    v15[3] = &unk_1E7C06E50;
    objc_copyWeak(&v16, &location);
    [(NSXPCConnection *)v7->_connection setInvalidationHandler:v15];
    v13 = CXDefaultLog([(NSXPCConnection *)v7->_connection resume]);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = v7;
      _os_log_impl(&dword_1B47F3000, v13, OS_LOG_TYPE_DEFAULT, "Created %@", buf, 0xCu);
    }

    objc_destroyWeak(&v16);
    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  return v7;
}

void __72__CXNetworkExtensionMessageControllerHostConnection_initWithConnection___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = CXDefaultLog(WeakRetained);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_impl(&dword_1B47F3000, v3, OS_LOG_TYPE_DEFAULT, "Connection interrupted for network extension message controller host %@", &v4, 0xCu);
    }

    [v2 invalidate];
  }
}

void __72__CXNetworkExtensionMessageControllerHostConnection_initWithConnection___block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = CXDefaultLog(WeakRetained);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138412290;
      v6 = v2;
      _os_log_impl(&dword_1B47F3000, v3, OS_LOG_TYPE_DEFAULT, "Connection invalidated for network extension message controller host %@", &v5, 0xCu);
    }

    v4 = [v2 delegate];
    [v4 networkExtensionMessageControllerHostConnectionInvalidated:v2];
  }
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  v3.receiver = self;
  v3.super_class = CXNetworkExtensionMessageControllerHostConnection;
  [(CXNetworkExtensionMessageControllerHostConnection *)&v3 dealloc];
}

- (CXNetworkExtensionMessageControllerHostConnectionDelegate)delegate
{
  os_unfair_lock_lock(&self->_accessorLock);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  os_unfair_lock_unlock(&self->_accessorLock);

  return WeakRetained;
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  os_unfair_lock_lock(&self->_accessorLock);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
  }

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)invalidate
{
  os_unfair_lock_lock(&self->_accessorLock);
  connection = [(CXNetworkExtensionMessageControllerHostConnection *)self connection];
  [connection invalidate];

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)sendNetworkExtensionMessage:(id)message forBundleIdentifier:(id)identifier reply:(id)reply
{
  messageCopy = message;
  identifierCopy = identifier;
  replyCopy = reply;
  capabilities = [(CXNetworkExtensionMessageControllerHostConnection *)self capabilities];
  v12 = [capabilities containsObject:@"private-network-extension-message-api"];

  if (v12)
  {
    delegate = [(CXNetworkExtensionMessageControllerHostConnection *)self delegate];
    [delegate networkExtensionMessageControllerHostConnection:self didReceiveIncomingMessage:messageCopy forBundleIdentifier:identifierCopy];

    v15 = 0;
  }

  else
  {
    v16 = CXDefaultLog(v13);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [CXNetworkExtensionMessageControllerHostConnection sendNetworkExtensionMessage:v16 forBundleIdentifier:? reply:?];
    }

    v15 = [MEMORY[0x1E696ABC0] cx_requestTransactionErrorWithCode:1];
  }

  replyCopy[2](replyCopy, v12, v15);
}

- (void)sendNetworkExtensionPushToTalkMessage:(id)message forBundleIdentifier:(id)identifier reply:(id)reply
{
  messageCopy = message;
  identifierCopy = identifier;
  replyCopy = reply;
  capabilities = [(CXNetworkExtensionMessageControllerHostConnection *)self capabilities];
  v12 = [capabilities containsObject:@"private-network-extension-message-api"];

  if (v12)
  {
    delegate = [(CXNetworkExtensionMessageControllerHostConnection *)self delegate];
    [delegate networkExtensionMessageControllerHostConnection:self didReceiveIncomingPushToTalkMessage:messageCopy forBundleIdentifier:identifierCopy];

    v15 = 0;
  }

  else
  {
    v16 = CXDefaultLog(v13);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [CXNetworkExtensionMessageControllerHostConnection sendNetworkExtensionMessage:v16 forBundleIdentifier:? reply:?];
    }

    v15 = [MEMORY[0x1E696ABC0] cx_requestTransactionErrorWithCode:1];
  }

  replyCopy[2](replyCopy, v12, v15);
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  applicationIdentifier = [(CXNetworkExtensionMessageControllerHostConnection *)self applicationIdentifier];
  capabilities = [(CXNetworkExtensionMessageControllerHostConnection *)self capabilities];
  v7 = [v3 stringWithFormat:@"<%@ %p applicationIdentifier=%@ capabilities=%@", v4, self, applicationIdentifier, capabilities];

  return v7;
}

- (void)sendNetworkExtensionMessage:(uint64_t)a1 forBundleIdentifier:(NSObject *)a2 reply:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1B47F3000, a2, OS_LOG_TYPE_ERROR, "Connection is not entitled to use private API: %@", &v2, 0xCu);
}

@end