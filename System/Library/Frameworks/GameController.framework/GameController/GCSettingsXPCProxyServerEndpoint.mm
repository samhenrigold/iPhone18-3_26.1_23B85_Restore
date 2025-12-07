@interface GCSettingsXPCProxyServerEndpoint
- (BOOL)acceptClient:(id)client onConnection:(id)connection error:(id *)error;
- (GCSettingsXPCProxyServerEndpoint)initWithIdentifier:(id)identifier initialValueForProfile:(id)profile;
- (GCSettingsXPCProxyServerEndpoint)initWithInitialValueForProfile:(id)profile;
- (GCSettingsXPCProxyServerEndpointDelegate)delegate;
- (_GCControllerComponentDescription)receiverDescription;
- (void)fetchObjectIdentifierWithReply:(id)reply;
- (void)fetchProfileWithReply:(id)reply;
- (void)invalidateClient;
- (void)invalidateConnection;
- (void)setSettingsProfile:(id)profile;
@end

@implementation GCSettingsXPCProxyServerEndpoint

- (GCSettingsXPCProxyServerEndpoint)initWithIdentifier:(id)identifier initialValueForProfile:(id)profile
{
  identifierCopy = identifier;
  profileCopy = profile;
  v12.receiver = self;
  v12.super_class = GCSettingsXPCProxyServerEndpoint;
  v8 = [(GCSettingsXPCProxyServerEndpoint *)&v12 init];
  if (v8)
  {
    v9 = [identifierCopy copyWithZone:0];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    objc_storeStrong(&v8->_settingsProfile, profile);
  }

  return v8;
}

- (GCSettingsXPCProxyServerEndpoint)initWithInitialValueForProfile:(id)profile
{
  v4 = MEMORY[0x1E696AFB0];
  profileCopy = profile;
  uUID = [v4 UUID];
  v7 = [(GCSettingsXPCProxyServerEndpoint *)self initWithIdentifier:uUID initialValueForProfile:profileCopy];

  return v7;
}

- (_GCControllerComponentDescription)receiverDescription
{
  v2 = [[GCSettingsXPCProxyClientEndpointDescription alloc] initWithIdentifier:self->_identifier initialValueForProfile:self->_settingsProfile];

  return v2;
}

- (void)invalidateClient
{
  v3 = getGCSettingsLogger(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [GCSettingsXPCProxyServerEndpoint invalidateClient];
  }

  clientEndpoint = self->_clientEndpoint;
  connectionInterruptionRegistration = self->_connectionInterruptionRegistration;
  self->_connectionInterruptionRegistration = 0;
  v6 = clientEndpoint;

  connectionInvalidationRegistration = self->_connectionInvalidationRegistration;
  self->_connectionInvalidationRegistration = 0;

  connection = self->_connection;
  self->_connection = 0;

  v9 = self->_clientEndpoint;
  self->_clientEndpoint = 0;

  [(GCSettingsXPCProxyRemoteClientEndpointInterface *)v6 invalidateConnection];
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

  v22 = MEMORY[0x1E69E9820];
  v23 = 3221225472;
  v24 = __68__GCSettingsXPCProxyServerEndpoint_acceptClient_onConnection_error___block_invoke;
  v25 = &unk_1E8418D18;
  objc_copyWeak(&v26, &location);
  v14 = _Block_copy(&v22);
  v15 = [connectionCopy addInterruptionHandler:{v14, v22, v23, v24, v25}];
  v16 = self->_connectionInterruptionRegistration;
  self->_connectionInterruptionRegistration = v15;

  v17 = [connectionCopy addInvalidationHandler:v14];
  v18 = self->_connectionInvalidationRegistration;
  self->_connectionInvalidationRegistration = v17;

  objc_storeStrong(&self->_connection, connection);
  objc_storeStrong(&self->_clientEndpoint, client);
  self->_pendingUpdates = 0;
  v20 = getGCSettingsLogger(v19);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    [GCSettingsXPCProxyServerEndpoint acceptClient:onConnection:error:];
  }

  objc_destroyWeak(&v26);
  objc_destroyWeak(&location);

  return 1;
}

void __68__GCSettingsXPCProxyServerEndpoint_acceptClient_onConnection_error___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = getGCSettingsLogger(WeakRetained);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __65__GCSettingsXPCProxyClientEndpoint_setRemoteEndpoint_connection___block_invoke_cold_1();
    }

    v4 = v2[4];
    v2[4] = 0;

    v5 = v2[3];
    v2[3] = 0;

    v6 = v2[1];
    v2[1] = 0;
  }
}

- (void)setSettingsProfile:(id)profile
{
  profileCopy = profile;
  objc_storeStrong(&self->_settingsProfile, profile);
  v6 = self->_clientEndpoint;
  v7 = v6;
  if (v6)
  {
    v8 = self->_pendingUpdates + 1;
    self->_pendingUpdates = v8;
    if (v8 <= 6)
    {
      v9 = getGCSettingsLogger(v6);
      v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);
      if (v8 == 6)
      {
        if (v10)
        {
          [GCSettingsXPCProxyServerEndpoint setSettingsProfile:];
        }

        [(GCSettingsXPCProxyRemoteClientEndpointInterface *)v7 refreshProfile];
      }

      else
      {
        if (v10)
        {
          [GCSettingsXPCProxyServerEndpoint setSettingsProfile:];
        }

        [(GCSettingsXPCProxyRemoteClientEndpointInterface *)v7 newProfile:profileCopy];
        if (self->_pendingUpdates == 3)
        {
          connection = self->_connection;
          v12[0] = MEMORY[0x1E69E9820];
          v12[1] = 3221225472;
          v12[2] = __55__GCSettingsXPCProxyServerEndpoint_setSettingsProfile___block_invoke;
          v12[3] = &unk_1E8418C28;
          v12[4] = self;
          [(_GCIPCEndpointConnection *)connection scheduleSendBarrierBlock:v12];
        }
      }
    }
  }
}

- (void)fetchProfileWithReply:(id)reply
{
  replyCopy = reply;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __58__GCSettingsXPCProxyServerEndpoint_fetchProfileWithReply___block_invoke;
  v6[3] = &unk_1E8418D68;
  v6[4] = self;
  v7 = replyCopy;
  v5 = replyCopy;
  _os_activity_initiate(&dword_1D2CD5000, "(Settings XPC Proxy Server Endpoint) Fetch Profile", OS_ACTIVITY_FLAG_DEFAULT, v6);
}

- (void)invalidateConnection
{
  activity_block[0] = MEMORY[0x1E69E9820];
  activity_block[1] = 3221225472;
  activity_block[2] = __56__GCSettingsXPCProxyServerEndpoint_invalidateConnection__block_invoke;
  activity_block[3] = &unk_1E8418C28;
  activity_block[4] = self;
  _os_activity_initiate(&dword_1D2CD5000, "(Settings XPC Proxy Server Endpoint) Invalidate Connection", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

void __56__GCSettingsXPCProxyServerEndpoint_invalidateConnection__block_invoke(uint64_t a1)
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
  identifier = [(GCSettingsXPCProxyServerEndpoint *)self identifier];
  (*(reply + 2))(replyCopy, identifier);
}

- (GCSettingsXPCProxyServerEndpointDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end