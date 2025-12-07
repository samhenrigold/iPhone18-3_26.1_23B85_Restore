@interface GCSystemGestureXPCProxyServerEndpoint
- (BOOL)acceptClient:(id)client onConnection:(id)connection error:(id *)error;
- (GCSystemGestureXPCProxyServerEndpoint)initWithIdentifier:(id)identifier;
- (GCSystemGestureXPCProxyServerEndpointDelegate)delegate;
- (_GCControllerComponentDescription)receiverDescription;
- (void)disableSystemGestureForInput:(id)input;
- (void)enableSystemGestureForInput:(id)input;
- (void)fetchObjectIdentifierWithReply:(id)reply;
- (void)invalidateClient;
- (void)invalidateConnection;
@end

@implementation GCSystemGestureXPCProxyServerEndpoint

- (GCSystemGestureXPCProxyServerEndpoint)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = GCSystemGestureXPCProxyServerEndpoint;
  v5 = [(GCSystemGestureXPCProxyServerEndpoint *)&v9 init];
  if (v5)
  {
    v6 = [identifierCopy copyWithZone:0];
    identifier = v5->_identifier;
    v5->_identifier = v6;
  }

  return v5;
}

- (_GCControllerComponentDescription)receiverDescription
{
  v2 = [[GCSystemGestureXPCProxyClientEndpointDescription alloc] initWithIdentifier:self->_identifier];

  return v2;
}

- (void)invalidateClient
{
  if (gc_isInternalBuild(self, a2))
  {
    [(GCBatteryXPCProxyServerEndpoint *)self invalidateClient];
  }

  clientEndpoint = self->_clientEndpoint;
  connectionInterruptionRegistration = self->_connectionInterruptionRegistration;
  self->_connectionInterruptionRegistration = 0;
  v5 = clientEndpoint;

  connectionInvalidationRegistration = self->_connectionInvalidationRegistration;
  self->_connectionInvalidationRegistration = 0;

  connection = self->_connection;
  self->_connection = 0;

  v8 = self->_clientEndpoint;
  self->_clientEndpoint = 0;

  [(GCSystemGestureXPCProxyRemoteClientEndpointInterface *)v5 invalidateConnection];
}

- (BOOL)acceptClient:(id)client onConnection:(id)connection error:(id *)error
{
  clientCopy = client;
  connectionCopy = connection;
  objc_initWeak(&location, self);
  connectionInterruptionRegistration = self->_connectionInterruptionRegistration;
  self->_connectionInterruptionRegistration = 0;

  connectionInvalidationRegistration = self->_connectionInvalidationRegistration;
  self->_connectionInvalidationRegistration = 0;

  connection = self->_connection;
  self->_connection = 0;

  clientEndpoint = self->_clientEndpoint;
  self->_clientEndpoint = 0;

  v24 = MEMORY[0x1E69E9820];
  v25 = 3221225472;
  v26 = __73__GCSystemGestureXPCProxyServerEndpoint_acceptClient_onConnection_error___block_invoke;
  v27 = &unk_1E8418D18;
  objc_copyWeak(&v28, &location);
  v14 = _Block_copy(&v24);
  v15 = [connectionCopy addInterruptionHandler:{v14, v24, v25, v26, v27}];
  v16 = self->_connectionInterruptionRegistration;
  self->_connectionInterruptionRegistration = v15;

  v17 = [connectionCopy addInvalidationHandler:v14];
  v18 = self->_connectionInvalidationRegistration;
  self->_connectionInvalidationRegistration = v17;

  objc_storeStrong(&self->_connection, connection);
  objc_storeStrong(&self->_clientEndpoint, client);
  self->_pendingUpdates = 0;
  isInternalBuild = gc_isInternalBuild(v19, v20);
  if (isInternalBuild)
  {
    v23 = getGCLogger(isInternalBuild);
    [GCSystemGestureXPCProxyServerEndpoint acceptClient:v23 onConnection:? error:?];
  }

  objc_destroyWeak(&v28);
  objc_destroyWeak(&location);

  return 1;
}

void __73__GCSystemGestureXPCProxyServerEndpoint_acceptClient_onConnection_error___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (gc_isInternalBuild(WeakRetained, v2))
    {
      __64__GCBatteryXPCProxyClientEndpoint_setRemoteEndpoint_connection___block_invoke_cold_1(v3);
    }

    v4 = v3[4];
    v3[4] = 0;

    v5 = v3[3];
    v3[3] = 0;

    v6 = v3[1];
    v3[1] = 0;
  }
}

- (void)disableSystemGestureForInput:(id)input
{
  inputCopy = input;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __70__GCSystemGestureXPCProxyServerEndpoint_disableSystemGestureForInput___block_invoke;
  v6[3] = &unk_1E8418C50;
  v6[4] = self;
  v7 = inputCopy;
  v5 = inputCopy;
  _os_activity_initiate(&dword_1D2CD5000, "(SystemGesture XPC Proxy Server Endpoint) Disable system gesture with input name", OS_ACTIVITY_FLAG_DEFAULT, v6);
}

void __70__GCSystemGestureXPCProxyServerEndpoint_disableSystemGestureForInput___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 56));
  [WeakRetained systemGestureXPCProxyServerEndpoint:*(a1 + 32) disableSystemGestureForInput:*(a1 + 40)];
}

- (void)enableSystemGestureForInput:(id)input
{
  inputCopy = input;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __69__GCSystemGestureXPCProxyServerEndpoint_enableSystemGestureForInput___block_invoke;
  v6[3] = &unk_1E8418C50;
  v6[4] = self;
  v7 = inputCopy;
  v5 = inputCopy;
  _os_activity_initiate(&dword_1D2CD5000, "(SystemGesture XPC Proxy Server Endpoint) Enable system gesture with input name", OS_ACTIVITY_FLAG_DEFAULT, v6);
}

void __69__GCSystemGestureXPCProxyServerEndpoint_enableSystemGestureForInput___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 56));
  [WeakRetained systemGestureXPCProxyServerEndpoint:*(a1 + 32) enableSystemGestureForInput:*(a1 + 40)];
}

- (void)invalidateConnection
{
  activity_block[0] = MEMORY[0x1E69E9820];
  activity_block[1] = 3221225472;
  activity_block[2] = __61__GCSystemGestureXPCProxyServerEndpoint_invalidateConnection__block_invoke;
  activity_block[3] = &unk_1E8418C28;
  activity_block[4] = self;
  _os_activity_initiate(&dword_1D2CD5000, "(SystemGesture XPC Proxy Server Endpoint) Invalidate Connection", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

void __61__GCSystemGestureXPCProxyServerEndpoint_invalidateConnection__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  *(v2 + 24) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 32);
  *(v4 + 32) = 0;

  v6 = *(a1 + 32);
  v7 = *(v6 + 16);
  *(v6 + 16) = 0;

  v8 = *(a1 + 32);
  v9 = *(v8 + 8);
  *(v8 + 8) = 0;
}

- (void)fetchObjectIdentifierWithReply:(id)reply
{
  replyCopy = reply;
  identifier = [(GCSystemGestureXPCProxyServerEndpoint *)self identifier];
  (*(reply + 2))(replyCopy, identifier);
}

- (GCSystemGestureXPCProxyServerEndpointDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)acceptClient:(NSObject *)a1 onConnection:error:.cold.1(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_0_0(&dword_1D2CD5000, v2, v3, "Client has arrived for %@", v4, v5, v6, v7);
  }
}

@end