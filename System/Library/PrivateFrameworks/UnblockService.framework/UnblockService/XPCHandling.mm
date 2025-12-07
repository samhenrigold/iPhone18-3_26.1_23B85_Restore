@interface XPCHandling
@end

@implementation XPCHandling

void __55__UBUnblockService_XPCHandling__openListenerConnection__block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (MEMORY[0x2743A03D0]() == MEMORY[0x277D86450])
  {
    v10 = __error();
    v11 = *v10;
    v12 = _ublogt(v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_270397000, v12, OS_LOG_TYPE_DEFAULT, "Received an incoming peer connection request on listener connection.", buf, 2u);
    }

    *__error() = v11;
    pid = xpc_connection_get_pid(v3);
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.unblock.peer.%d", pid];
    v15 = dispatch_queue_create_with_target_V2([v14 UTF8String], 0, *(*(a1 + 32) + 16));
    xpc_connection_set_target_queue(v3, v15);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __55__UBUnblockService_XPCHandling__openListenerConnection__block_invoke_4;
    handler[3] = &unk_279E02D60;
    v18 = pid;
    handler[4] = *(a1 + 32);
    xpc_connection_set_event_handler(v3, handler);
    xpc_connection_resume(v3);
  }

  else
  {
    v4 = MEMORY[0x2743A03D0](v3);
    v5 = MEMORY[0x277D86480];
    v6 = __error();
    v7 = *v6;
    v8 = _ublogt(v6);
    v9 = v8;
    if (v4 == v5)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        string = xpc_dictionary_get_string(v3, *MEMORY[0x277D86400]);
        *buf = 136315138;
        v20 = string;
        _os_log_impl(&dword_270397000, v9, OS_LOG_TYPE_INFO, "Unblock service listener received an error %s", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __55__UBUnblockService_XPCHandling__openListenerConnection__block_invoke_cold_1();
    }

    *__error() = v7;
  }
}

void __55__UBUnblockService_XPCHandling__openListenerConnection__block_invoke_4(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = MEMORY[0x2743A03D0]();
  v5 = MEMORY[0x277D86480];
  v6 = __error();
  v7 = *v6;
  v8 = _ublogt(v6);
  v9 = v8;
  if (v4 == v5)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = *(a1 + 40);
      string = xpc_dictionary_get_string(v3, *MEMORY[0x277D86400]);
      v12[0] = 67109378;
      v12[1] = v10;
      v13 = 2080;
      v14 = string;
      _os_log_impl(&dword_270397000, v9, OS_LOG_TYPE_INFO, "Unblock service for [%d] received an error %s", v12, 0x12u);
    }

    *__error() = v7;
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12[0]) = 0;
      _os_log_impl(&dword_270397000, v9, OS_LOG_TYPE_DEFAULT, "Received an incoming message on peer connection.", v12, 2u);
    }

    *__error() = v7;
    [*(a1 + 32) handleIncomingMessage:v3];
  }
}

void __55__UBUnblockService_XPCHandling__openListenerConnection__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end