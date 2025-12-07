@interface GCBatteryXPCProxyClientEndpoint
- (GCBatteryXPCProxyClientEndpoint)init;
- (GCBatteryXPCProxyClientEndpoint)initWithIdentifier:(id)identifier initialBattery:(id)battery;
- (void)_remoteEndpointHasSetBattery:(id)battery;
- (void)fetchObjectIdentifierWithReply:(id)reply;
- (void)invalidateConnection;
- (void)newBattery:(id)battery;
- (void)refreshBattery;
- (void)setRemoteEndpoint:(id)endpoint connection:(id)connection;
@end

@implementation GCBatteryXPCProxyClientEndpoint

- (GCBatteryXPCProxyClientEndpoint)initWithIdentifier:(id)identifier initialBattery:(id)battery
{
  identifierCopy = identifier;
  batteryCopy = battery;
  v14.receiver = self;
  v14.super_class = GCBatteryXPCProxyClientEndpoint;
  v8 = [(GCBatteryXPCProxyClientEndpoint *)&v14 init];
  v10 = v8;
  if (v8)
  {
    if (gc_isInternalBuild(v8, v9))
    {
      [GCBatteryXPCProxyClientEndpoint initWithIdentifier:identifierCopy initialBattery:?];
    }

    v11 = [identifierCopy copyWithZone:0];
    identifier = v10->_identifier;
    v10->_identifier = v11;

    objc_storeStrong(&v10->_battery, battery);
  }

  return v10;
}

- (GCBatteryXPCProxyClientEndpoint)init
{
  [(GCBatteryXPCProxyClientEndpoint *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)setRemoteEndpoint:(id)endpoint connection:(id)connection
{
  endpointCopy = endpoint;
  connectionCopy = connection;
  objc_initWeak(&location, self);
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __64__GCBatteryXPCProxyClientEndpoint_setRemoteEndpoint_connection___block_invoke;
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
    [GCBatteryXPCProxyClientEndpoint setRemoteEndpoint:v17 connection:?];
  }

  [(GCBatteryXPCProxyClientEndpoint *)self refreshBattery];

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
}

void __64__GCBatteryXPCProxyClientEndpoint_setRemoteEndpoint_connection___block_invoke(uint64_t a1)
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

- (void)_remoteEndpointHasSetBattery:(id)battery
{
  batteryCopy = battery;
  if (gc_isInternalBuild(batteryCopy, v5))
  {
    [GCBatteryXPCProxyClientEndpoint _remoteEndpointHasSetBattery:batteryCopy];
  }

  WeakRetained = objc_loadWeakRetained(&self->_controller);
  [WeakRetained willChangeValueForKey:@"battery"];
  battery = self->_battery;
  [batteryCopy batteryLevel];
  [(GCDeviceBattery *)battery _setBatteryLevel:?];
  -[GCDeviceBattery _setBatteryState:](self->_battery, "_setBatteryState:", [batteryCopy batteryState]);
  [WeakRetained didChangeValueForKey:@"battery"];
}

- (void)newBattery:(id)battery
{
  batteryCopy = battery;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__GCBatteryXPCProxyClientEndpoint_newBattery___block_invoke;
  v6[3] = &unk_1E8418C50;
  v6[4] = self;
  v7 = batteryCopy;
  v5 = batteryCopy;
  _os_activity_initiate(&dword_1D2CD5000, "(Battery XPC Proxy Client Endpoint) New Battery", OS_ACTIVITY_FLAG_DEFAULT, v6);
}

uint64_t __46__GCBatteryXPCProxyClientEndpoint_newBattery___block_invoke(uint64_t a1, uint64_t a2)
{
  isInternalBuild = gc_isInternalBuild(a1, a2);
  if (isInternalBuild)
  {
    __46__GCBatteryXPCProxyClientEndpoint_newBattery___block_invoke_cold_1(isInternalBuild);
  }

  return [*(a1 + 32) _remoteEndpointHasSetBattery:*(a1 + 40)];
}

- (void)refreshBattery
{
  activity_block[0] = MEMORY[0x1E69E9820];
  activity_block[1] = 3221225472;
  activity_block[2] = __49__GCBatteryXPCProxyClientEndpoint_refreshBattery__block_invoke;
  activity_block[3] = &unk_1E8418C28;
  activity_block[4] = self;
  _os_activity_initiate(&dword_1D2CD5000, "(Battery XPC Proxy Client Endpoint) Refresh Battery", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

uint64_t __49__GCBatteryXPCProxyClientEndpoint_refreshBattery__block_invoke(uint64_t a1, uint64_t a2)
{
  isInternalBuild = gc_isInternalBuild(a1, a2);
  if (isInternalBuild)
  {
    __49__GCBatteryXPCProxyClientEndpoint_refreshBattery__block_invoke_cold_1(isInternalBuild);
  }

  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__GCBatteryXPCProxyClientEndpoint_refreshBattery__block_invoke_89;
  v7[3] = &unk_1E8418D40;
  v7[4] = v4;
  return [v5 fetchBatteryWithReply:v7];
}

- (void)invalidateConnection
{
  activity_block[0] = MEMORY[0x1E69E9820];
  activity_block[1] = 3221225472;
  activity_block[2] = __55__GCBatteryXPCProxyClientEndpoint_invalidateConnection__block_invoke;
  activity_block[3] = &unk_1E8418C28;
  activity_block[4] = self;
  _os_activity_initiate(&dword_1D2CD5000, "(Battery XPC Proxy Client Endpoint) Invalidate Connection", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

void __55__GCBatteryXPCProxyClientEndpoint_invalidateConnection__block_invoke(uint64_t a1)
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
  identifier = [(GCBatteryXPCProxyClientEndpoint *)self identifier];
  (*(reply + 2))(replyCopy, identifier);
}

- (void)initWithIdentifier:(uint64_t)a1 initialBattery:.cold.1(uint64_t a1)
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

void __64__GCBatteryXPCProxyClientEndpoint_setRemoteEndpoint_connection___block_invoke_cold_1(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_9(v2))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_0_0(&dword_1D2CD5000, v3, v4, "%@ has lost its connection to the remote endpoint.", v5, v6, v7, v8);
  }
}

- (void)_remoteEndpointHasSetBattery:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v1 = getGCLogger(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_1_0();
    _os_log_impl(v2, v3, OS_LOG_TYPE_DEFAULT, v4, v5, 0xCu);
  }
}

void __46__GCBatteryXPCProxyClientEndpoint_newBattery___block_invoke_cold_1(uint64_t a1)
{
  v1 = getGCLogger(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_1_0();
    _os_log_impl(v2, v3, OS_LOG_TYPE_INFO, v4, v5, 2u);
  }
}

void __49__GCBatteryXPCProxyClientEndpoint_refreshBattery__block_invoke_cold_1(uint64_t a1)
{
  v1 = getGCLogger(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_1_0();
    _os_log_impl(v2, v3, OS_LOG_TYPE_INFO, v4, v5, 2u);
  }
}

@end