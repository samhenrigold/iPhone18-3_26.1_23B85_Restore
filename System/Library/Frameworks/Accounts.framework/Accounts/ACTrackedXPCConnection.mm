@interface ACTrackedXPCConnection
- (ACTrackedXPCConnection)init;
- (void)dealloc;
@end

@implementation ACTrackedXPCConnection

void __30__ACTrackedXPCConnection_init__block_invoke()
{
  if (++gOpenConnectionCount > gMaxConnectionCount)
  {
    v0 = _os_feature_enabled_impl();
    v1 = v0;
    v2 = _ACLogSystem(v0);
    v3 = v2;
    if (v1)
    {
      if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
      {
        __30__ACTrackedXPCConnection_init__block_invoke_cold_2(v3);
      }
    }

    else if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __30__ACTrackedXPCConnection_init__block_invoke_cold_1(v3);
    }

    gMaxConnectionCount *= 2;
  }
}

- (ACTrackedXPCConnection)init
{
  v4.receiver = self;
  v4.super_class = ACTrackedXPCConnection;
  v2 = [(ACTrackedXPCConnection *)&v4 init];
  if (v2)
  {
    os_unfair_lock_lock(&gOpenConnectionLock);
    __30__ACTrackedXPCConnection_init__block_invoke();
    os_unfair_lock_unlock(&gOpenConnectionLock);
  }

  return v2;
}

- (void)dealloc
{
  os_unfair_lock_lock(&gOpenConnectionLock);
  --gOpenConnectionCount;
  os_unfair_lock_unlock(&gOpenConnectionLock);
  v3.receiver = self;
  v3.super_class = ACTrackedXPCConnection;
  [(ACTrackedXPCConnection *)&v3 dealloc];
}

void __30__ACTrackedXPCConnection_init__block_invoke_cold_1(os_log_t log)
{
  v2 = *MEMORY[0x1E69E9840];
  v1[0] = 67109120;
  v1[1] = gOpenConnectionCount;
  _os_log_error_impl(&dword_1AC3CD000, log, OS_LOG_TYPE_ERROR, "Exceeded the maximum number of connections (2) to accountsd: %d connections open. Consider switching to +[ACAccountStore defaultStore]", v1, 8u);
}

void __30__ACTrackedXPCConnection_init__block_invoke_cold_2(os_log_t log)
{
  v2 = *MEMORY[0x1E69E9840];
  v1[0] = 67109120;
  v1[1] = gOpenConnectionCount;
  _os_log_fault_impl(&dword_1AC3CD000, log, OS_LOG_TYPE_FAULT, "Exceeded the maximum number of connections (2) to accountsd: %d connections open. Consider switching to +[ACAccountStore defaultStore]", v1, 8u);
}

@end