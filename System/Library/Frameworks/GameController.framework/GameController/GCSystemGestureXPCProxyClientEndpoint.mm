@interface GCSystemGestureXPCProxyClientEndpoint
- (GCSystemGestureXPCProxyClientEndpoint)init;
- (GCSystemGestureXPCProxyClientEndpoint)initWithIdentifier:(id)identifier;
- (void)disableSystemGestureForInput:(id)input;
- (void)enableSystemGestureForInput:(id)input;
- (void)fetchObjectIdentifierWithReply:(id)reply;
- (void)invalidateConnection;
- (void)setRemoteEndpoint:(id)endpoint connection:(id)connection;
@end

@implementation GCSystemGestureXPCProxyClientEndpoint

- (GCSystemGestureXPCProxyClientEndpoint)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = GCSystemGestureXPCProxyClientEndpoint;
  v5 = [(GCSystemGestureXPCProxyClientEndpoint *)&v9 init];
  if (v5)
  {
    v6 = [identifierCopy copyWithZone:0];
    identifier = v5->_identifier;
    v5->_identifier = v6;
  }

  return v5;
}

- (GCSystemGestureXPCProxyClientEndpoint)init
{
  [(GCSystemGestureXPCProxyClientEndpoint *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)setRemoteEndpoint:(id)endpoint connection:(id)connection
{
  endpointCopy = endpoint;
  connectionCopy = connection;
  objc_initWeak(&location, self);
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __70__GCSystemGestureXPCProxyClientEndpoint_setRemoteEndpoint_connection___block_invoke;
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
    [GCSystemGestureXPCProxyClientEndpoint setRemoteEndpoint:v17 connection:?];
  }

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
}

void __70__GCSystemGestureXPCProxyClientEndpoint_setRemoteEndpoint_connection___block_invoke(uint64_t a1)
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

- (void)invalidateConnection
{
  activity_block[0] = MEMORY[0x1E69E9820];
  activity_block[1] = 3221225472;
  activity_block[2] = __61__GCSystemGestureXPCProxyClientEndpoint_invalidateConnection__block_invoke;
  activity_block[3] = &unk_1E8418C28;
  activity_block[4] = self;
  _os_activity_initiate(&dword_1D2CD5000, "(SystemGesture XPC Proxy Client Endpoint) Invalidate Connection", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

void __61__GCSystemGestureXPCProxyClientEndpoint_invalidateConnection__block_invoke(uint64_t a1)
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
  identifier = [(GCSystemGestureXPCProxyClientEndpoint *)self identifier];
  (*(reply + 2))(replyCopy, identifier);
}

- (void)disableSystemGestureForInput:(id)input
{
  inputCopy = input;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __70__GCSystemGestureXPCProxyClientEndpoint_disableSystemGestureForInput___block_invoke;
  v6[3] = &unk_1E8418C50;
  v6[4] = self;
  v7 = inputCopy;
  v5 = inputCopy;
  _os_activity_initiate(&dword_1D2CD5000, "(SystemGesture XPC Proxy Client Endpoint) Disable system gesture for input name", OS_ACTIVITY_FLAG_DEFAULT, v6);
}

uint64_t __70__GCSystemGestureXPCProxyClientEndpoint_disableSystemGestureForInput___block_invoke(uint64_t a1, uint64_t a2)
{
  isInternalBuild = gc_isInternalBuild(a1, a2);
  if (isInternalBuild)
  {
    __70__GCSystemGestureXPCProxyClientEndpoint_disableSystemGestureForInput___block_invoke_cold_1(isInternalBuild);
  }

  return [*(*(a1 + 32) + 16) disableSystemGestureForInput:*(a1 + 40)];
}

- (void)enableSystemGestureForInput:(id)input
{
  inputCopy = input;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __69__GCSystemGestureXPCProxyClientEndpoint_enableSystemGestureForInput___block_invoke;
  v6[3] = &unk_1E8418C50;
  v6[4] = self;
  v7 = inputCopy;
  v5 = inputCopy;
  _os_activity_initiate(&dword_1D2CD5000, "(SystemGesture XPC Proxy Client Endpoint) Enable system gesture for input name", OS_ACTIVITY_FLAG_DEFAULT, v6);
}

uint64_t __69__GCSystemGestureXPCProxyClientEndpoint_enableSystemGestureForInput___block_invoke(uint64_t a1, uint64_t a2)
{
  isInternalBuild = gc_isInternalBuild(a1, a2);
  if (isInternalBuild)
  {
    __69__GCSystemGestureXPCProxyClientEndpoint_enableSystemGestureForInput___block_invoke_cold_1(isInternalBuild);
  }

  return [*(*(a1 + 32) + 16) enableSystemGestureForInput:*(a1 + 40)];
}

- (void)setRemoteEndpoint:(NSObject *)a1 connection:.cold.1(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_0_0(&dword_1D2CD5000, v2, v3, "Server connection established for %@", v4, v5, v6, v7);
  }
}

void __70__GCSystemGestureXPCProxyClientEndpoint_disableSystemGestureForInput___block_invoke_cold_1(uint64_t a1)
{
  v1 = getGCLogger(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    v8 = 0;
    OUTLINED_FUNCTION_2_19(&dword_1D2CD5000, v2, v3, "(SystemGesture XPC Proxy Client Endpoint) Disable system gesture for input name", v4, v5, v6, v7, v8);
  }
}

void __69__GCSystemGestureXPCProxyClientEndpoint_enableSystemGestureForInput___block_invoke_cold_1(uint64_t a1)
{
  v1 = getGCLogger(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    v8 = 0;
    OUTLINED_FUNCTION_2_19(&dword_1D2CD5000, v2, v3, "(SystemGesture XPC Proxy Client Endpoint) Enable system gesture for input name", v4, v5, v6, v7, v8);
  }
}

@end