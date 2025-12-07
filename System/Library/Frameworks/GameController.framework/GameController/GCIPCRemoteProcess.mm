@interface GCIPCRemoteProcess
@end

@implementation GCIPCRemoteProcess

void __37___GCIPCRemoteProcess_addConnection___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(*(*(a1 + 40) + 8) + 24);
  v4 = (a1 + 32);
  v5 = *(a1 + 32);
  objc_sync_enter(v5);
  v6 = [*(a1 + 32) connectionInvalidationRegistrations];
  v7 = [v6 containsObject:v3];

  if ((v7 & 1) == 0)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"GCIPCProcess.m" lineNumber:97 description:{@"Bug in %s", "-[_GCIPCRemoteProcess addConnection:]_block_invoke"}];
  }

  v8 = [*v4 connectionInvalidationRegistrations];
  [v8 removeObject:v3];

  v9 = [*v4 connections];
  v10 = [v9 mutableCopy];

  v11 = [v10 containsObject:v2];
  if ((v11 & 1) == 0)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"GCIPCProcess.m" lineNumber:101 description:{@"Bug in %s", "-[_GCIPCRemoteProcess addConnection:]_block_invoke"}];
  }

  isInternalBuild = gc_isInternalBuild(v11, v12);
  if (isInternalBuild)
  {
    v16 = getGCLogger(isInternalBuild);
    __37___GCIPCRemoteProcess_addConnection___block_invoke_cold_1(v16, (a1 + 32), v2);
  }

  [v10 removeObject:v2];
  [*v4 setConnections:v10];

  objc_sync_exit(v5);
}

void __37___GCIPCRemoteProcess_addConnection___block_invoke_cold_1(NSObject *a1, void *a2, uint64_t a3)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_INFO))
  {
    *v12 = 138412546;
    *&v12[4] = *a2;
    *&v12[12] = 2112;
    *&v12[14] = a3;
    OUTLINED_FUNCTION_0_12(&dword_1D2CD5000, v6, v7, "%@ removing connection: %@", v8, v9, v10, v11, *v12, *&v12[8], *&v12[16]);
  }
}

@end