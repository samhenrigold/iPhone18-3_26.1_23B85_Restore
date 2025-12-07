@interface DIClient2IODaemonXPCHandler
- (BOOL)addToRefCountWithError:(id *)error;
- (DIClient2IODaemonXPCHandler)initWithEndpoint:(id)endpoint;
- (void)createConnection;
@end

@implementation DIClient2IODaemonXPCHandler

- (DIClient2IODaemonXPCHandler)initWithEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  v9.receiver = self;
  v9.super_class = DIClient2IODaemonXPCHandler;
  v6 = [(DIBaseXPCHandler *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_xpcListenerEndpoint, endpoint);
  }

  return v7;
}

- (void)createConnection
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = *__error();
  v4 = DIForwardLogs();
  if (v4)
  {
    v18 = 0;
    v6 = getDIOSLog(v4, v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    *buf = 68157954;
    v20 = 47;
    v21 = 2080;
    v22 = "[DIClient2IODaemonXPCHandler createConnection]";
    LODWORD(v17) = 18;
    v8 = _os_log_send_and_compose_impl(v7, &v18, 0, 0, &dword_248DE0000, v6, 0, "%.*s: Creating connection to IO daemon clients listener", buf, v17);

    if (v8)
    {
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v8);
      free(v8);
    }
  }

  else
  {
    v9 = getDIOSLog(v4, v5);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68157954;
      v20 = 47;
      v21 = 2080;
      v22 = "[DIClient2IODaemonXPCHandler createConnection]";
      _os_log_impl(&dword_248DE0000, v9, OS_LOG_TYPE_DEFAULT, "%.*s: Creating connection to IO daemon clients listener", buf, 0x12u);
    }
  }

  *__error() = v3;
  v10 = objc_alloc(MEMORY[0x277CCAE80]);
  xpcListenerEndpoint = [(DIClient2IODaemonXPCHandler *)self xpcListenerEndpoint];
  v12 = [v10 initWithListenerEndpoint:xpcListenerEndpoint];
  [(DIBaseXPCHandler *)self setConnection:v12];

  remoteObjectInterface = [(DIClient2IODaemonXPCHandler *)self remoteObjectInterface];
  connection = [(DIBaseXPCHandler *)self connection];
  [connection setRemoteObjectInterface:remoteObjectInterface];

  connection2 = [(DIBaseXPCHandler *)self connection];
  [connection2 setInvalidationHandler:&__block_literal_global_2];

  connection3 = [(DIBaseXPCHandler *)self connection];
  [connection3 setInterruptionHandler:&__block_literal_global_4];
}

int *__47__DIClient2IODaemonXPCHandler_createConnection__block_invoke()
{
  v14 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  v1 = DIForwardLogs();
  if (v1)
  {
    v9 = 0;
    v3 = getDIOSLog(v1, v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 3;
    }

    else
    {
      v4 = 2;
    }

    *buf = 68157954;
    v11 = 60;
    v12 = 2080;
    v13 = "[DIClient2IODaemonXPCHandler createConnection]_block_invoke";
    LODWORD(v8) = 18;
    v5 = _os_log_send_and_compose_impl(v4, &v9, 0, 0, &dword_248DE0000, v3, 0, "%.*s: Reached an invalidation handler for the IO daemon connection", buf, v8);

    if (v5)
    {
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v5);
      free(v5);
    }
  }

  else
  {
    v6 = getDIOSLog(v1, v2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68157954;
      v11 = 60;
      v12 = 2080;
      v13 = "[DIClient2IODaemonXPCHandler createConnection]_block_invoke";
      _os_log_impl(&dword_248DE0000, v6, OS_LOG_TYPE_DEFAULT, "%.*s: Reached an invalidation handler for the IO daemon connection", buf, 0x12u);
    }
  }

  result = __error();
  *result = v0;
  return result;
}

int *__47__DIClient2IODaemonXPCHandler_createConnection__block_invoke_2()
{
  v14 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  v1 = DIForwardLogs();
  if (v1)
  {
    v9 = 0;
    v3 = getDIOSLog(v1, v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 3;
    }

    else
    {
      v4 = 2;
    }

    *buf = 68157954;
    v11 = 60;
    v12 = 2080;
    v13 = "[DIClient2IODaemonXPCHandler createConnection]_block_invoke";
    LODWORD(v8) = 18;
    v5 = _os_log_send_and_compose_impl(v4, &v9, 0, 0, &dword_248DE0000, v3, 0, "%.*s: Reached an interruption handler for the IO daemon connection", buf, v8);

    if (v5)
    {
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v5);
      free(v5);
    }
  }

  else
  {
    v6 = getDIOSLog(v1, v2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68157954;
      v11 = 60;
      v12 = 2080;
      v13 = "[DIClient2IODaemonXPCHandler createConnection]_block_invoke";
      _os_log_impl(&dword_248DE0000, v6, OS_LOG_TYPE_DEFAULT, "%.*s: Reached an interruption handler for the IO daemon connection", buf, 0x12u);
    }
  }

  result = __error();
  *result = v0;
  return result;
}

- (BOOL)addToRefCountWithError:(id *)error
{
  objc_initWeak(&location, self);
  remoteProxy = [(DIBaseXPCHandler *)self remoteProxy];
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __54__DIClient2IODaemonXPCHandler_addToRefCountWithError___block_invoke;
  v10 = &unk_278F80AA0;
  objc_copyWeak(&v11, &location);
  [remoteProxy addToRefCountWithReply:&v7];

  LOBYTE(error) = [(DIBaseXPCHandler *)self completeCommandWithError:error, v7, v8, v9, v10];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
  return error;
}

void __54__DIClient2IODaemonXPCHandler_addToRefCountWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained signalCommandCompletedWithXpcError:v3];
}

@end