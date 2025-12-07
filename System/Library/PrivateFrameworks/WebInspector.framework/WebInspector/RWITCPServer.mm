@interface RWITCPServer
@end

@implementation RWITCPServer

void __44___RWITCPServer__createListenDispatchSource__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  *&v8.sa_len = 0;
  *&v8.sa_data[6] = 0;
  v7 = 16;
  v2 = accept(*(*(a1 + 32) + 8), &v8, &v7);
  if (v2 == -1)
  {
    v4 = RWIDefaultLog(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __44___RWITCPServer__createListenDispatchSource__block_invoke_cold_1();
    }
  }

  else
  {
    v3 = [[_RWITCPConnection alloc] initWithServer:*(a1 + 32) socket:v2];
    [*(*(a1 + 32) + 32) addObject:v3];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __44___RWITCPServer__createListenDispatchSource__block_invoke_5;
    v5[3] = &unk_279EAA508;
    v5[4] = *(a1 + 32);
    v6 = v3;
    v4 = v3;
    dispatch_async(MEMORY[0x277D85CD0], v5);
  }
}

void __44___RWITCPServer__createListenDispatchSource__block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 40));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 40));
    [v4 tcpServer:*(a1 + 32) receivedConnection:*(a1 + 40)];
  }
}

void __34___RWITCPServer_connectionClosed___block_invoke(uint64_t a1)
{
  v3 = MEMORY[0x277D85DD0];
  v4 = 3221225472;
  v5 = __34___RWITCPServer_connectionClosed___block_invoke_2;
  v6 = &unk_279EAA508;
  v2 = *(a1 + 40);
  v7 = *(a1 + 32);
  v8 = v2;
  dispatch_async(MEMORY[0x277D85CD0], &v3);
  [*(*(a1 + 32) + 32) removeObject:{*(a1 + 40), v3, v4, v5, v6, v7}];
}

void __34___RWITCPServer_connectionClosed___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 40));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 40));
    [v4 tcpServer:*(a1 + 32) closedConnection:*(a1 + 40)];
  }
}

void __44___RWITCPServer__createListenDispatchSource__block_invoke_cold_1()
{
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

@end