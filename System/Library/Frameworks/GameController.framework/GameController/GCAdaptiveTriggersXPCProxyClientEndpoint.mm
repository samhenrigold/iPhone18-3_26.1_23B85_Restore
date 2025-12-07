@interface GCAdaptiveTriggersXPCProxyClientEndpoint
- (GCAdaptiveTriggersXPCProxyClientEndpoint)init;
- (GCAdaptiveTriggersXPCProxyClientEndpoint)initWithIdentifier:(id)identifier initialStatuses:(id)statuses;
- (void)_remoteEndpointHasSetStatuses:(id)statuses;
- (void)fetchObjectIdentifierWithReply:(id)reply;
- (void)invalidateConnection;
- (void)newStatuses:(id)statuses;
- (void)refreshStatuses;
- (void)setLeftTrigger:(id)trigger;
- (void)setRemoteEndpoint:(id)endpoint connection:(id)connection;
- (void)setRightTrigger:(id)trigger;
@end

@implementation GCAdaptiveTriggersXPCProxyClientEndpoint

- (GCAdaptiveTriggersXPCProxyClientEndpoint)initWithIdentifier:(id)identifier initialStatuses:(id)statuses
{
  identifierCopy = identifier;
  statusesCopy = statuses;
  v22.receiver = self;
  v22.super_class = GCAdaptiveTriggersXPCProxyClientEndpoint;
  v8 = [(GCAdaptiveTriggersXPCProxyClientEndpoint *)&v22 init];
  v10 = v8;
  if (v8)
  {
    if (gc_isInternalBuild(v8, v9))
    {
      [GCAdaptiveTriggersXPCProxyClientEndpoint initWithIdentifier:identifierCopy initialStatuses:?];
    }

    v11 = [identifierCopy copyWithZone:0];
    identifier = v10->_identifier;
    v10->_identifier = v11;

    initOff = [[GCDeviceAdaptiveTriggersPayload alloc] initOff];
    leftTrigger = v10->_leftTrigger;
    v10->_leftTrigger = initOff;

    initOff2 = [[GCDeviceAdaptiveTriggersPayload alloc] initOff];
    rightTrigger = v10->_rightTrigger;
    v10->_rightTrigger = initOff2;

    if ([statusesCopy count] >= 2)
    {
      v17 = [statusesCopy objectAtIndexedSubscript:0];
      leftStatus = v10->_leftStatus;
      v10->_leftStatus = v17;

      v19 = [statusesCopy objectAtIndexedSubscript:1];
      rightStatus = v10->_rightStatus;
      v10->_rightStatus = v19;
    }
  }

  return v10;
}

- (GCAdaptiveTriggersXPCProxyClientEndpoint)init
{
  [(GCAdaptiveTriggersXPCProxyClientEndpoint *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)setRemoteEndpoint:(id)endpoint connection:(id)connection
{
  endpointCopy = endpoint;
  connectionCopy = connection;
  objc_initWeak(&location, self);
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __73__GCAdaptiveTriggersXPCProxyClientEndpoint_setRemoteEndpoint_connection___block_invoke;
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
    [GCAdaptiveTriggersXPCProxyClientEndpoint setRemoteEndpoint:v17 connection:?];
  }

  [(GCAdaptiveTriggersXPCProxyClientEndpoint *)self refreshStatuses];

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
}

void __73__GCAdaptiveTriggersXPCProxyClientEndpoint_setRemoteEndpoint_connection___block_invoke(uint64_t a1)
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

- (void)setLeftTrigger:(id)trigger
{
  objc_storeStrong(&self->_leftTrigger, trigger);
  triggerCopy = trigger;
  [(GCAdaptiveTriggersXPCProxyRemoteServerEndpointInterface *)self->_serverEndpoint newAdaptiveTriggerPayload:self->_leftTrigger index:0];
}

- (void)setRightTrigger:(id)trigger
{
  objc_storeStrong(&self->_rightTrigger, trigger);
  triggerCopy = trigger;
  [(GCAdaptiveTriggersXPCProxyRemoteServerEndpointInterface *)self->_serverEndpoint newAdaptiveTriggerPayload:self->_rightTrigger index:1];
}

- (void)_remoteEndpointHasSetStatuses:(id)statuses
{
  statusesCopy = statuses;
  if (gc_isInternalBuild(statusesCopy, v5))
  {
    [GCAdaptiveTriggersXPCProxyClientEndpoint _remoteEndpointHasSetStatuses:statusesCopy];
  }

  if ([statusesCopy count] >= 2)
  {
    v6 = [statusesCopy objectAtIndexedSubscript:0];
    [(GCAdaptiveTriggersXPCProxyClientEndpoint *)self setLeftStatus:v6];

    v7 = [statusesCopy objectAtIndexedSubscript:1];
    [(GCAdaptiveTriggersXPCProxyClientEndpoint *)self setRightStatus:v7];
  }
}

- (void)newStatuses:(id)statuses
{
  statusesCopy = statuses;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __56__GCAdaptiveTriggersXPCProxyClientEndpoint_newStatuses___block_invoke;
  v6[3] = &unk_1E8418C50;
  v6[4] = self;
  v7 = statusesCopy;
  v5 = statusesCopy;
  _os_activity_initiate(&dword_1D2CD5000, "(Adaptive Trigger XPC Proxy Client Endpoint) New Statuses", OS_ACTIVITY_FLAG_DEFAULT, v6);
}

uint64_t __56__GCAdaptiveTriggersXPCProxyClientEndpoint_newStatuses___block_invoke(uint64_t a1, uint64_t a2)
{
  isInternalBuild = gc_isInternalBuild(a1, a2);
  if (isInternalBuild)
  {
    __56__GCAdaptiveTriggersXPCProxyClientEndpoint_newStatuses___block_invoke_cold_1(isInternalBuild);
  }

  return [*(a1 + 32) _remoteEndpointHasSetStatuses:*(a1 + 40)];
}

- (void)refreshStatuses
{
  activity_block[0] = MEMORY[0x1E69E9820];
  activity_block[1] = 3221225472;
  activity_block[2] = __59__GCAdaptiveTriggersXPCProxyClientEndpoint_refreshStatuses__block_invoke;
  activity_block[3] = &unk_1E8418C28;
  activity_block[4] = self;
  _os_activity_initiate(&dword_1D2CD5000, "(Adaptive Trigger XPC Proxy Client Endpoint) Refresh Statuses", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

uint64_t __59__GCAdaptiveTriggersXPCProxyClientEndpoint_refreshStatuses__block_invoke(uint64_t a1, uint64_t a2)
{
  isInternalBuild = gc_isInternalBuild(a1, a2);
  if (isInternalBuild)
  {
    __59__GCAdaptiveTriggersXPCProxyClientEndpoint_refreshStatuses__block_invoke_cold_1(isInternalBuild);
  }

  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59__GCAdaptiveTriggersXPCProxyClientEndpoint_refreshStatuses__block_invoke_86;
  v7[3] = &unk_1E841ABD8;
  v7[4] = v4;
  return [v5 fetchStatusesWithReply:v7];
}

- (void)invalidateConnection
{
  activity_block[0] = MEMORY[0x1E69E9820];
  activity_block[1] = 3221225472;
  activity_block[2] = __64__GCAdaptiveTriggersXPCProxyClientEndpoint_invalidateConnection__block_invoke;
  activity_block[3] = &unk_1E8418C28;
  activity_block[4] = self;
  _os_activity_initiate(&dword_1D2CD5000, "(Adaptive Trigger XPC Proxy Client Endpoint) Invalidate Connection", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

void __64__GCAdaptiveTriggersXPCProxyClientEndpoint_invalidateConnection__block_invoke(uint64_t a1)
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
  identifier = [(GCAdaptiveTriggersXPCProxyClientEndpoint *)self identifier];
  (*(reply + 2))(replyCopy, identifier);
}

- (void)initWithIdentifier:(uint64_t)a1 initialStatuses:.cold.1(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_11(v2))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_1_0();
    _os_log_impl(v3, v4, OS_LOG_TYPE_INFO, v5, v6, 0xCu);
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

- (void)_remoteEndpointHasSetStatuses:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_11(v2))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_1_0();
    _os_log_impl(v3, v4, OS_LOG_TYPE_INFO, v5, v6, 0xCu);
  }
}

void __56__GCAdaptiveTriggersXPCProxyClientEndpoint_newStatuses___block_invoke_cold_1(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_11(v2))
  {
    OUTLINED_FUNCTION_1_0();
    _os_log_impl(v3, v4, OS_LOG_TYPE_INFO, v5, v6, 2u);
  }
}

void __59__GCAdaptiveTriggersXPCProxyClientEndpoint_refreshStatuses__block_invoke_cold_1(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_11(v2))
  {
    OUTLINED_FUNCTION_1_0();
    _os_log_impl(v3, v4, OS_LOG_TYPE_INFO, v5, v6, 2u);
  }
}

@end