@interface GCPlayerIndicatorXPCProxyServerEndpoint
- (BOOL)acceptClient:(id)client onConnection:(id)connection error:(id *)error;
- (GCPlayerIndicatorXPCProxyServerEndpoint)initWithIdentifier:(id)identifier initialValue:(int64_t)value;
- (GCPlayerIndicatorXPCProxyServerEndpoint)initWithInitialValue:(int64_t)value;
- (GCPlayerIndicatorXPCProxyServerEndpointDelegate)delegate;
- (_GCControllerComponentDescription)receiverDescription;
- (void)fetchObjectIdentifierWithReply:(id)reply;
- (void)fetchPlayerIndexWithReply:(id)reply;
- (void)invalidateClient;
- (void)invalidateConnection;
- (void)newPlayerIndex:(int64_t)index;
- (void)setPlayerIndex:(int64_t)index;
@end

@implementation GCPlayerIndicatorXPCProxyServerEndpoint

- (GCPlayerIndicatorXPCProxyServerEndpoint)initWithIdentifier:(id)identifier initialValue:(int64_t)value
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = GCPlayerIndicatorXPCProxyServerEndpoint;
  v7 = [(GCPlayerIndicatorXPCProxyServerEndpoint *)&v11 init];
  if (v7)
  {
    v8 = [identifierCopy copyWithZone:0];
    identifier = v7->_identifier;
    v7->_identifier = v8;

    v7->_playerIndex = value;
  }

  return v7;
}

- (GCPlayerIndicatorXPCProxyServerEndpoint)initWithInitialValue:(int64_t)value
{
  uUID = [MEMORY[0x1E696AFB0] UUID];
  v6 = [(GCPlayerIndicatorXPCProxyServerEndpoint *)self initWithIdentifier:uUID initialValue:value];

  return v6;
}

- (_GCControllerComponentDescription)receiverDescription
{
  v2 = [[GCPlayerIndicatorXPCProxyClientEndpointDescription alloc] initWithIdentifier:self->_identifier initialPlayerIndex:self->_playerIndex];

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

  [(GCPlayerIndicatorXPCProxyRemoteClientEndpointInterface *)v5 invalidateConnection];
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
  v26 = __75__GCPlayerIndicatorXPCProxyServerEndpoint_acceptClient_onConnection_error___block_invoke;
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
    [GCPlayerIndicatorXPCProxyServerEndpoint acceptClient:v23 onConnection:? error:?];
  }

  objc_destroyWeak(&v28);
  objc_destroyWeak(&location);

  return 1;
}

void __75__GCPlayerIndicatorXPCProxyServerEndpoint_acceptClient_onConnection_error___block_invoke(uint64_t a1)
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

- (void)setPlayerIndex:(int64_t)index
{
  if (self->_playerIndex != index)
  {
    v12[9] = v3;
    v12[10] = v4;
    self->_playerIndex = index;
    v6 = self->_clientEndpoint;
    v8 = v6;
    if (v6)
    {
      v9 = self->_pendingUpdates + 1;
      self->_pendingUpdates = v9;
      if (v9 <= 6)
      {
        isInternalBuild = gc_isInternalBuild(v6, v7);
        if (v9 == 6)
        {
          if (isInternalBuild)
          {
            [GCPlayerIndicatorXPCProxyServerEndpoint setPlayerIndex:?];
          }

          [(GCPlayerIndicatorXPCProxyRemoteClientEndpointInterface *)v8 refreshPlayerIndex];
        }

        else
        {
          if (isInternalBuild)
          {
            [GCPlayerIndicatorXPCProxyServerEndpoint setPlayerIndex:?];
          }

          [(GCPlayerIndicatorXPCProxyRemoteClientEndpointInterface *)v8 newPlayerIndex:self->_playerIndex];
          if (self->_pendingUpdates == 3)
          {
            connection = self->_connection;
            v12[0] = MEMORY[0x1E69E9820];
            v12[1] = 3221225472;
            v12[2] = __58__GCPlayerIndicatorXPCProxyServerEndpoint_setPlayerIndex___block_invoke;
            v12[3] = &unk_1E8418C28;
            v12[4] = self;
            [(_GCIPCEndpointConnection *)connection scheduleSendBarrierBlock:v12];
          }
        }
      }
    }
  }
}

- (void)newPlayerIndex:(int64_t)index
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __58__GCPlayerIndicatorXPCProxyServerEndpoint_newPlayerIndex___block_invoke;
  v3[3] = &unk_1E84191C0;
  v3[4] = self;
  v3[5] = index;
  _os_activity_initiate(&dword_1D2CD5000, "(Player Indicator XPC Proxy Server Endpoint) New Player Index", OS_ACTIVITY_FLAG_DEFAULT, v3);
}

void __58__GCPlayerIndicatorXPCProxyServerEndpoint_newPlayerIndex___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v2 != *(v3 + 56))
  {
    *(v3 + 56) = v2;
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 64));
    [WeakRetained playerIndicatorXPCProxyServerEndpoint:*(a1 + 32) didReceivePlayerIndexChange:*(a1 + 40)];
  }
}

- (void)fetchPlayerIndexWithReply:(id)reply
{
  replyCopy = reply;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __69__GCPlayerIndicatorXPCProxyServerEndpoint_fetchPlayerIndexWithReply___block_invoke;
  v6[3] = &unk_1E8418D68;
  v6[4] = self;
  v7 = replyCopy;
  v5 = replyCopy;
  _os_activity_initiate(&dword_1D2CD5000, "(Player Indicator XPC Proxy Server Endpoint) Fetch Player Index", OS_ACTIVITY_FLAG_DEFAULT, v6);
}

- (void)invalidateConnection
{
  activity_block[0] = MEMORY[0x1E69E9820];
  activity_block[1] = 3221225472;
  activity_block[2] = __63__GCPlayerIndicatorXPCProxyServerEndpoint_invalidateConnection__block_invoke;
  activity_block[3] = &unk_1E8418C28;
  activity_block[4] = self;
  _os_activity_initiate(&dword_1D2CD5000, "(Player Indicator XPC Proxy Server Endpoint) Invalidate Connection", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

void __63__GCPlayerIndicatorXPCProxyServerEndpoint_invalidateConnection__block_invoke(uint64_t a1)
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
  identifier = [(GCPlayerIndicatorXPCProxyServerEndpoint *)self identifier];
  (*(reply + 2))(replyCopy, identifier);
}

- (GCPlayerIndicatorXPCProxyServerEndpointDelegate)delegate
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

- (void)setPlayerIndex:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_9(v2))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_0_0(&dword_1D2CD5000, v3, v4, "Sending new player index to remote endpoint: %@", v5, v6, v7, v8);
  }
}

- (void)setPlayerIndex:(uint64_t)a1 .cold.2(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_9(v2))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_0_0(&dword_1D2CD5000, v3, v4, "Sending player index refresh request to remote endpoint: %@", v5, v6, v7, v8);
  }
}

@end