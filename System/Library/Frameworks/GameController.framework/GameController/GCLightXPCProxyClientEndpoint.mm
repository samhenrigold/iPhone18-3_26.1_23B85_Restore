@interface GCLightXPCProxyClientEndpoint
- (GCLightXPCProxyClientEndpoint)init;
- (GCLightXPCProxyClientEndpoint)initWithIdentifier:(id)identifier initialLight:(id)light;
- (void)_remoteEndpointHasSetLight:(id)light;
- (void)fetchObjectIdentifierWithReply:(id)reply;
- (void)invalidateConnection;
- (void)newLight:(id)light;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)refreshLight;
- (void)setRemoteEndpoint:(id)endpoint connection:(id)connection;
@end

@implementation GCLightXPCProxyClientEndpoint

- (GCLightXPCProxyClientEndpoint)initWithIdentifier:(id)identifier initialLight:(id)light
{
  identifierCopy = identifier;
  lightCopy = light;
  v14.receiver = self;
  v14.super_class = GCLightXPCProxyClientEndpoint;
  v8 = [(GCLightXPCProxyClientEndpoint *)&v14 init];
  v10 = v8;
  if (v8)
  {
    if (gc_isInternalBuild(v8, v9))
    {
      [GCLightXPCProxyClientEndpoint initWithIdentifier:identifierCopy initialLight:?];
    }

    v11 = [identifierCopy copyWithZone:0];
    identifier = v10->_identifier;
    v10->_identifier = v11;

    objc_storeStrong(&v10->_light, light);
    [(GCLightXPCProxyClientEndpoint *)v10 observeChangesForLight:v10->_light];
  }

  return v10;
}

- (GCLightXPCProxyClientEndpoint)init
{
  [(GCLightXPCProxyClientEndpoint *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)setRemoteEndpoint:(id)endpoint connection:(id)connection
{
  endpointCopy = endpoint;
  connectionCopy = connection;
  objc_initWeak(&location, self);
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __62__GCLightXPCProxyClientEndpoint_setRemoteEndpoint_connection___block_invoke;
  v21 = &unk_1E8418D18;
  objc_copyWeak(&v22, &location);
  v9 = _Block_copy(&v18);
  v10 = [connectionCopy addInterruptionHandler:{v9, v18, v19, v20, v21}];
  connectionInterruptionRegistration = self->_connectionInterruptionRegistration;
  self->_connectionInterruptionRegistration = v10;

  v12 = [connectionCopy addInvalidationHandler:v9];
  connectionInvalidationRegistration = self->_connectionInvalidationRegistration;
  self->_connectionInvalidationRegistration = v12;

  objc_storeStrong(&self->_serverEndpoint, endpoint);
  isInternalBuild = gc_isInternalBuild(v14, v15);
  if (isInternalBuild)
  {
    v17 = getGCLogger(isInternalBuild);
    [GCLightXPCProxyClientEndpoint setRemoteEndpoint:v17 connection:?];
  }

  [(GCLightXPCProxyClientEndpoint *)self refreshLight];

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
}

void __62__GCLightXPCProxyClientEndpoint_setRemoteEndpoint_connection___block_invoke(uint64_t a1)
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

    v6 = v3[2];
    v3[2] = 0;
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  light = self->_light;
  if (light == object)
  {
    serverEndpoint = self->_serverEndpoint;

    [(GCLightXPCProxyRemoteServerEndpointInterface *)serverEndpoint newLight:light];
  }

  else
  {
    v11 = v6;
    v12 = v7;
    v10.receiver = self;
    v10.super_class = GCLightXPCProxyClientEndpoint;
    [GCLightXPCProxyClientEndpoint observeValueForKeyPath:sel_observeValueForKeyPath_ofObject_change_context_ ofObject:path change:? context:?];
  }
}

- (void)_remoteEndpointHasSetLight:(id)light
{
  lightCopy = light;
  if (gc_isInternalBuild(lightCopy, v5))
  {
    [GCLightXPCProxyClientEndpoint _remoteEndpointHasSetLight:lightCopy];
  }

  WeakRetained = objc_loadWeakRetained(&self->_controller);
  [(GCLightXPCProxyClientEndpoint *)self stopObservingChangesForLight:self->_light];
  [WeakRetained willChangeValueForKey:@"light"];
  color = [lightCopy color];
  [(GCDeviceLight *)self->_light setColor:color];

  [WeakRetained didChangeValueForKey:@"light"];
  [(GCLightXPCProxyClientEndpoint *)self observeChangesForLight:self->_light];
}

- (void)newLight:(id)light
{
  lightCopy = light;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __42__GCLightXPCProxyClientEndpoint_newLight___block_invoke;
  v6[3] = &unk_1E8418C50;
  v6[4] = self;
  v7 = lightCopy;
  v5 = lightCopy;
  _os_activity_initiate(&dword_1D2CD5000, "(Light XPC Proxy Client Endpoint) New Light", OS_ACTIVITY_FLAG_DEFAULT, v6);
}

uint64_t __42__GCLightXPCProxyClientEndpoint_newLight___block_invoke(uint64_t a1, uint64_t a2)
{
  isInternalBuild = gc_isInternalBuild(a1, a2);
  if (isInternalBuild)
  {
    __42__GCLightXPCProxyClientEndpoint_newLight___block_invoke_cold_1(isInternalBuild);
  }

  return [*(a1 + 32) _remoteEndpointHasSetLight:*(a1 + 40)];
}

- (void)refreshLight
{
  activity_block[0] = MEMORY[0x1E69E9820];
  activity_block[1] = 3221225472;
  activity_block[2] = __45__GCLightXPCProxyClientEndpoint_refreshLight__block_invoke;
  activity_block[3] = &unk_1E8418C28;
  activity_block[4] = self;
  _os_activity_initiate(&dword_1D2CD5000, "(Light XPC Proxy Client Endpoint) Refresh Light", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

uint64_t __45__GCLightXPCProxyClientEndpoint_refreshLight__block_invoke(uint64_t a1, uint64_t a2)
{
  isInternalBuild = gc_isInternalBuild(a1, a2);
  if (isInternalBuild)
  {
    __45__GCLightXPCProxyClientEndpoint_refreshLight__block_invoke_cold_1(isInternalBuild);
  }

  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__GCLightXPCProxyClientEndpoint_refreshLight__block_invoke_94;
  v7[3] = &unk_1E841A538;
  v7[4] = v4;
  return [v5 fetchLightWithReply:v7];
}

- (void)invalidateConnection
{
  activity_block[0] = MEMORY[0x1E69E9820];
  activity_block[1] = 3221225472;
  activity_block[2] = __53__GCLightXPCProxyClientEndpoint_invalidateConnection__block_invoke;
  activity_block[3] = &unk_1E8418C28;
  activity_block[4] = self;
  _os_activity_initiate(&dword_1D2CD5000, "(Light XPC Proxy Client Endpoint) Invalidate Connection", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

void __53__GCLightXPCProxyClientEndpoint_invalidateConnection__block_invoke(uint64_t a1)
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
}

- (void)fetchObjectIdentifierWithReply:(id)reply
{
  replyCopy = reply;
  identifier = [(GCLightXPCProxyClientEndpoint *)self identifier];
  (*(reply + 2))(replyCopy, identifier);
}

- (void)initWithIdentifier:(uint64_t)a1 initialLight:.cold.1(uint64_t a1)
{
  v1 = getGCLogger(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_1_0();
    _os_log_impl(v2, v3, OS_LOG_TYPE_INFO, v4, v5, 0x16u);
  }
}

- (void)setRemoteEndpoint:(NSObject *)a1 connection:.cold.1(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_0_0(&dword_1D2CD5000, v2, v3, "Server connection established for %@", v4, v5, v6, v7);
  }
}

- (void)_remoteEndpointHasSetLight:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v1 = getGCLogger(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_1_0();
    _os_log_impl(v2, v3, OS_LOG_TYPE_DEFAULT, v4, v5, 0xCu);
  }
}

void __42__GCLightXPCProxyClientEndpoint_newLight___block_invoke_cold_1(uint64_t a1)
{
  v1 = getGCLogger(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_1_0();
    _os_log_impl(v2, v3, OS_LOG_TYPE_INFO, v4, v5, 2u);
  }
}

void __45__GCLightXPCProxyClientEndpoint_refreshLight__block_invoke_cold_1(uint64_t a1)
{
  v1 = getGCLogger(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_1_0();
    _os_log_impl(v2, v3, OS_LOG_TYPE_INFO, v4, v5, 2u);
  }
}

@end