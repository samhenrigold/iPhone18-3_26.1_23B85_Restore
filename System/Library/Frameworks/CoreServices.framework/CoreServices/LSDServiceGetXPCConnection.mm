@interface LSDServiceGetXPCConnection
@end

@implementation LSDServiceGetXPCConnection

id ___LSDServiceGetXPCConnection_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *(v3 + 16) == 3;
  }

  else
  {
    v4 = 0;
  }

  v5 = [__LSDefaultsGetSharedInstance(a1 a2)];
  v6 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:v5 options:*(a1 + 56)];
  if (v6)
  {
    v7 = [*(a1 + 48) XPCInterface];
    [v6 setRemoteObjectInterface:v7];

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = ___LSDServiceGetXPCConnection_block_invoke_3;
    v16[3] = &unk_1E6A1A830;
    v8 = v5;
    v17 = v8;
    [v6 setInterruptionHandler:v16];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = ___LSDServiceGetXPCConnection_block_invoke_59;
    v13[3] = &unk_1E6A1ABE8;
    v14 = v8;
    v15 = *(a1 + 40);
    [v6 setInvalidationHandler:v13];
    [v6 setDelegate:objc_opt_class()];
    v9 = *(a1 + 64);
    v10 = *(a1 + 72);
    v11 = *(a1 + 80);
    v10(v6, v9);

    [v6 resume];
  }

  return v6;
}

void ___LSDServiceGetXPCConnection_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v1 = _LSDServiceGetXPCConnection::serverConnections;
  _LSDServiceGetXPCConnection::serverConnections = v0;
}

void ___LSDServiceGetXPCConnection_block_invoke_3(uint64_t a1)
{
  v2 = _LSDefaultLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    ___LSDServiceGetXPCConnection_block_invoke_3_cold_1(a1, v2, v3, v4, v5, v6, v7, v8);
  }
}

void ___LSDServiceGetXPCConnection_block_invoke_59(uint64_t a1)
{
  v2 = _LSDefaultLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    ___LSDServiceGetXPCConnection_block_invoke_59_cold_1(a1, v2, v3, v4, v5, v6, v7, v8);
  }

  os_unfair_lock_lock(&_LSDServiceGetXPCConnection::serverConnectionsLock);
  [_LSDServiceGetXPCConnection::serverConnections removeObjectForKey:*(a1 + 40)];
  os_unfair_lock_unlock(&_LSDServiceGetXPCConnection::serverConnectionsLock);
}

void ___LSDServiceGetXPCConnection_block_invoke_3_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138543362;
  *(&v8 + 4) = *(a1 + 32);
  OUTLINED_FUNCTION_0_7(&dword_18162D000, a2, a3, "LaunchServices: disconnect event interruption received for service %{public}@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void ___LSDServiceGetXPCConnection_block_invoke_59_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138543362;
  *(&v8 + 4) = *(a1 + 32);
  OUTLINED_FUNCTION_0_7(&dword_18162D000, a2, a3, "LaunchServices: disconnect event invalidation received for service %{public}@", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end