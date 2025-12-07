@interface GCMotionXPCProxyClientEndpoint
- (GCMotionXPCProxyClientEndpoint)init;
- (GCMotionXPCProxyClientEndpoint)initWithIdentifier:(id)identifier initialSensorsActive:(BOOL)active;
- (void)_remoteEndpointSetSensorsActive:(BOOL)active;
- (void)fetchObjectIdentifierWithReply:(id)reply;
- (void)invalidateConnection;
- (void)newSensorsActive:(BOOL)active;
- (void)refreshSensorsActive;
- (void)setRemoteEndpoint:(id)endpoint connection:(id)connection;
@end

@implementation GCMotionXPCProxyClientEndpoint

- (GCMotionXPCProxyClientEndpoint)initWithIdentifier:(id)identifier initialSensorsActive:(BOOL)active
{
  identifierCopy = identifier;
  v13.receiver = self;
  v13.super_class = GCMotionXPCProxyClientEndpoint;
  v7 = [(GCMotionXPCProxyClientEndpoint *)&v13 init];
  v9 = v7;
  if (v7)
  {
    if (gc_isInternalBuild(v7, v8))
    {
      [GCMotionXPCProxyClientEndpoint initWithIdentifier:identifierCopy initialSensorsActive:?];
    }

    v10 = [identifierCopy copyWithZone:0];
    identifier = v9->_identifier;
    v9->_identifier = v10;

    v9->_sensorsActive = active;
  }

  return v9;
}

- (GCMotionXPCProxyClientEndpoint)init
{
  [(GCMotionXPCProxyClientEndpoint *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)setRemoteEndpoint:(id)endpoint connection:(id)connection
{
  endpointCopy = endpoint;
  connectionCopy = connection;
  objc_initWeak(&location, self);
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __63__GCMotionXPCProxyClientEndpoint_setRemoteEndpoint_connection___block_invoke;
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
    [GCMotionXPCProxyClientEndpoint setRemoteEndpoint:v17 connection:?];
  }

  [(GCMotionXPCProxyClientEndpoint *)self refreshSensorsActive];

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
}

void __63__GCMotionXPCProxyClientEndpoint_setRemoteEndpoint_connection___block_invoke(uint64_t a1)
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

- (void)_remoteEndpointSetSensorsActive:(BOOL)active
{
  WeakRetained = objc_loadWeakRetained(&self->_controller);
  if (WeakRetained)
  {
    v8 = WeakRetained;
    motion = [WeakRetained motion];
    [motion willChangeValueForKey:@"sensorsActive"];

    self->_sensorsActive = active;
    motion2 = [v8 motion];
    [motion2 didChangeValueForKey:@"sensorsActive"];

    WeakRetained = v8;
  }
}

- (void)newSensorsActive:(BOOL)active
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __51__GCMotionXPCProxyClientEndpoint_newSensorsActive___block_invoke;
  v3[3] = &unk_1E8419650;
  v3[4] = self;
  activeCopy = active;
  _os_activity_initiate(&dword_1D2CD5000, "(Motion XPC Proxy Client Endpoint) New Sensors Active", OS_ACTIVITY_FLAG_DEFAULT, v3);
}

- (void)refreshSensorsActive
{
  activity_block[0] = MEMORY[0x1E69E9820];
  activity_block[1] = 3221225472;
  activity_block[2] = __54__GCMotionXPCProxyClientEndpoint_refreshSensorsActive__block_invoke;
  activity_block[3] = &unk_1E8418C28;
  activity_block[4] = self;
  _os_activity_initiate(&dword_1D2CD5000, "(Motion XPC Proxy Client Endpoint) Refresh Sensors Active", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

uint64_t __54__GCMotionXPCProxyClientEndpoint_refreshSensorsActive__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 16);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __54__GCMotionXPCProxyClientEndpoint_refreshSensorsActive__block_invoke_2;
  v4[3] = &unk_1E8419678;
  v4[4] = v1;
  return [v2 fetchSensorsActiveWithReply:v4];
}

- (void)invalidateConnection
{
  activity_block[0] = MEMORY[0x1E69E9820];
  activity_block[1] = 3221225472;
  activity_block[2] = __54__GCMotionXPCProxyClientEndpoint_invalidateConnection__block_invoke;
  activity_block[3] = &unk_1E8418C28;
  activity_block[4] = self;
  _os_activity_initiate(&dword_1D2CD5000, "(Motion XPC Proxy Client Endpoint) Invalidate Connection", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

void __54__GCMotionXPCProxyClientEndpoint_invalidateConnection__block_invoke(uint64_t a1)
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
  identifier = [(GCMotionXPCProxyClientEndpoint *)self identifier];
  (*(reply + 2))(replyCopy, identifier);
}

- (void)initWithIdentifier:(uint64_t)a1 initialSensorsActive:.cold.1(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = getGCLogger(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_8();
    v4 = 1024;
    v5 = v2;
    _os_log_impl(&dword_1D2CD5000, v1, OS_LOG_TYPE_INFO, "GCMotionXPCProxyClientEndpoint initWithIdentifier: %@ initialSensorsActive: %d", v3, 0x12u);
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

@end