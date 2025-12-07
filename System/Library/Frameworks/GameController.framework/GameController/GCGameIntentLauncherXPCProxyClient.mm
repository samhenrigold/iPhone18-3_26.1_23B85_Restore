@interface GCGameIntentLauncherXPCProxyClient
- (GCGameIntentLauncherXPCProxyClient)init;
- (void)agentCheckIn:(id)in effectiveUserIdentifier:(unsigned int)identifier;
- (void)dealloc;
- (void)launchApplicationWithBundleIdentifier:(id)identifier;
- (void)refreshActiveClient;
- (void)togglePlatformGamesLibrary;
@end

@implementation GCGameIntentLauncherXPCProxyClient

- (GCGameIntentLauncherXPCProxyClient)init
{
  v7.receiver = self;
  v7.super_class = GCGameIntentLauncherXPCProxyClient;
  v2 = [(GCGameIntentLauncherXPCProxyClient *)&v7 init];
  v3 = objc_opt_new();
  servers = v2->_servers;
  v2->_servers = v3;

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:v2 selector:sel_consoleUserDidChange_ name:*MEMORY[0x1E69A0330] object:0];

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69A0330] object:0];

  v4.receiver = self;
  v4.super_class = GCGameIntentLauncherXPCProxyClient;
  [(GCGameIntentLauncherXPCProxyClient *)&v4 dealloc];
}

- (void)agentCheckIn:(id)in effectiveUserIdentifier:(unsigned int)identifier
{
  v4 = *&identifier;
  inCopy = in;
  v8 = inCopy;
  if (inCopy)
  {
    if (v4)
    {
      selfCopy = self;
      v10 = objc_sync_enter(selfCopy);
      isInternalBuild = gc_isInternalBuild(v10, v11);
      if (isInternalBuild)
      {
        v20 = getGCLogger(isInternalBuild);
        [GCGameIntentLauncherXPCProxyClient agentCheckIn:v20 effectiveUserIdentifier:?];
      }

      servers = selfCopy->_servers;
      v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v4];
      [(NSMutableDictionary *)servers setObject:v8 forKey:v14];

      v17 = gc_isInternalBuild(v15, v16);
      if (v17)
      {
        v21 = getGCLogger(v17);
        [GCGameIntentLauncherXPCProxyClient agentCheckIn:v21 effectiveUserIdentifier:?];
      }

      [(GCGameIntentLauncherXPCProxyClient *)selfCopy refreshActiveClient];
      objc_sync_exit(selfCopy);
    }

    else
    {
      v19 = gc_isInternalBuild(inCopy, v7);
      if (v19)
      {
        [GCGameIntentLauncherXPCProxyClient agentCheckIn:v19 effectiveUserIdentifier:?];
      }
    }
  }

  else
  {
    v18 = gc_isInternalBuild(0, v7);
    if (v18)
    {
      [GCGameIntentLauncherXPCProxyClient agentCheckIn:v18 effectiveUserIdentifier:?];
    }
  }
}

- (void)refreshActiveClient
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(self, OS_LOG_TYPE_DEBUG))
  {
    v4 = 138412290;
    v5 = &unk_1F4E8E330;
    _os_log_debug_impl(&dword_1D2CD5000, self, OS_LOG_TYPE_DEBUG, "GCGameIntentLauncherXPCProxy - clientForCurrentUser %@ is nil, early exit", &v4, 0xCu);
  }

  *a2 = self;
}

- (void)launchApplicationWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  server = [(GCGameIntentLauncherXPCProxyClient *)self server];
  [server launchApplicationWithBundleIdentifier:identifierCopy];
}

- (void)togglePlatformGamesLibrary
{
  server = [(GCGameIntentLauncherXPCProxyClient *)self server];
  [server togglePlatformGamesLibrary];
}

- (void)agentCheckIn:(NSObject *)a1 effectiveUserIdentifier:.cold.1(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_1_0();
    _os_log_impl(v2, v3, OS_LOG_TYPE_INFO, v4, v5, 0x12u);
  }
}

- (void)agentCheckIn:(NSObject *)a1 effectiveUserIdentifier:.cold.2(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_1_0();
    _os_log_impl(v2, v3, OS_LOG_TYPE_INFO, v4, v5, 0xCu);
  }
}

- (void)agentCheckIn:(uint64_t)a1 effectiveUserIdentifier:.cold.3(uint64_t a1)
{
  v1 = getGCLogger(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1_0();
    _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 2u);
  }
}

- (void)agentCheckIn:(uint64_t)a1 effectiveUserIdentifier:.cold.4(uint64_t a1)
{
  v1 = getGCLogger(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1_0();
    _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 2u);
  }
}

@end