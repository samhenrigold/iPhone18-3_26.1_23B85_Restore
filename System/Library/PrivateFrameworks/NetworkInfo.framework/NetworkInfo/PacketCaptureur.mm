@interface PacketCaptureur
- (PacketCaptureur)initWithQueue:(id)queue service:(id)service;
- (id)_connectionForServiceNamed:(const char *)named queue:(id)queue connectionInvalidHandler:(id)handler;
- (id)createNotificationListener;
- (void)connectToXPCService;
- (void)invalidateConnections;
- (void)sendNotificationListener;
- (void)startTask:(id)task destination:(id)destination withCompletion:(id)completion;
- (void)stopTask:(id)task withCompletion:(id)completion;
@end

@implementation PacketCaptureur

- (PacketCaptureur)initWithQueue:(id)queue service:(id)service
{
  queueCopy = queue;
  serviceCopy = service;
  v12.receiver = self;
  v12.super_class = PacketCaptureur;
  v9 = [(PacketCaptureur *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->netDiagConnQueue, queue);
    objc_storeStrong(&v10->netDiagMsgQueue, queue);
    objc_storeStrong(&v10->xpcServiceName, service);
  }

  return v10;
}

- (id)_connectionForServiceNamed:(const char *)named queue:(id)queue connectionInvalidHandler:(id)handler
{
  handlerCopy = handler;
  mach_service = xpc_connection_create_mach_service(named, queue, 2uLL);
  netqual_log_init(mach_service, v10);
  if (mach_service)
  {
    if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEBUG))
    {
      [PacketCaptureur _connectionForServiceNamed:queue:connectionInvalidHandler:];
    }

    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __77__PacketCaptureur__connectionForServiceNamed_queue_connectionInvalidHandler___block_invoke;
    handler[3] = &unk_279968440;
    handler[4] = self;
    namedCopy = named;
    v14 = handlerCopy;
    xpc_connection_set_event_handler(mach_service, handler);
    xpc_connection_resume(mach_service);
    v11 = mach_service;
  }

  else if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
  {
    [PacketCaptureur _connectionForServiceNamed:queue:connectionInvalidHandler:];
  }

  return mach_service;
}

void __77__PacketCaptureur__connectionForServiceNamed_queue_connectionInvalidHandler___block_invoke(void *a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = MEMORY[0x25F872CB0]();
  v5 = MEMORY[0x25F872C20](v3);

  if (v5)
  {
    netqual_log_init(v6, v7);
    if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEBUG))
    {
      __77__PacketCaptureur__connectionForServiceNamed_queue_connectionInvalidHandler___block_invoke_cold_1();
    }

    free(v5);
  }

  if (v4 == MEMORY[0x277D86480])
  {
    if (*(a1[4] + 8))
    {
      if (v3 == MEMORY[0x277D863F0])
      {
        netqual_log_init(v6, v7);
        if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEBUG))
        {
          __77__PacketCaptureur__connectionForServiceNamed_queue_connectionInvalidHandler___block_invoke_cold_4();
        }
      }

      else
      {
        v15 = MEMORY[0x277D863F8];
        netqual_log_init(v6, v7);
        v16 = os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEBUG);
        if (v3 == v15)
        {
          if (v16)
          {
            __77__PacketCaptureur__connectionForServiceNamed_queue_connectionInvalidHandler___block_invoke_cold_3();
          }

          v17 = a1[5];
          if (v17)
          {
            (*(v17 + 16))();
          }
        }

        else if (v16)
        {
          __77__PacketCaptureur__connectionForServiceNamed_queue_connectionInvalidHandler___block_invoke_cold_2();
        }
      }
    }
  }

  else
  {
    v8 = MEMORY[0x277D86468];
    netqual_log_init(v6, v7);
    v9 = os_log_netqual;
    v10 = os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_INFO);
    if (v4 == v8)
    {
      if (!v10)
      {
        return;
      }

      v18 = 136315394;
      v19 = "[PacketCaptureur _connectionForServiceNamed:queue:connectionInvalidHandler:]_block_invoke";
      v20 = 1024;
      v21 = 112;
      v12 = "%s:%u - Received XPC_TYPE_DICTIONARY";
      v13 = v9;
      v14 = 18;
    }

    else
    {
      if (!v10)
      {
        return;
      }

      v11 = a1[6];
      v18 = 136315650;
      v19 = "[PacketCaptureur _connectionForServiceNamed:queue:connectionInvalidHandler:]_block_invoke";
      v20 = 1024;
      v21 = 114;
      v22 = 2080;
      v23 = v11;
      v12 = "%s:%u - Received unexpected event for XPC service %s";
      v13 = v9;
      v14 = 28;
    }

    _os_log_impl(&dword_25B859000, v13, OS_LOG_TYPE_INFO, v12, &v18, v14);
  }
}

- (id)createNotificationListener
{
  v3 = xpc_connection_create(0, self->netDiagConnQueue);
  v5 = v3;
  if (v3)
  {
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __45__PacketCaptureur_createNotificationListener__block_invoke;
    handler[3] = &unk_279968468;
    handler[4] = self;
    xpc_connection_set_event_handler(v3, handler);
    xpc_connection_resume(v5);
    v6 = v5;
  }

  else
  {
    netqual_log_init(0, v4);
    if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
    {
      [PacketCaptureur createNotificationListener];
    }
  }

  return v5;
}

void __45__PacketCaptureur_createNotificationListener__block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = MEMORY[0x25F872CB0]();
  v6 = MEMORY[0x25F872C20](v4);
  if (v6)
  {
    v8 = v6;
    netqual_log_init(v6, v7);
    if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEBUG))
    {
      __45__PacketCaptureur_createNotificationListener__block_invoke_cold_1();
    }

    free(v8);
  }

  if (v5 == MEMORY[0x277D86480])
  {
    if (v4 == MEMORY[0x277D86420])
    {
      netqual_log_init(v6, v7);
      if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEBUG))
      {
        __45__PacketCaptureur_createNotificationListener__block_invoke_cold_3();
      }
    }

    else if (v4 == MEMORY[0x277D863F8])
    {
      netqual_log_init(v6, v7);
      if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEBUG))
      {
        __45__PacketCaptureur_createNotificationListener__block_invoke_cold_2();
      }
    }
  }

  else if (v5 == MEMORY[0x277D86450])
  {
    v10 = *(a1 + 32);
    v11 = *(v10 + 24);
    if (v11)
    {
      xpc_connection_cancel(v11);
      v12 = *(a1 + 32);
      v13 = *(v12 + 24);
      *(v12 + 24) = 0;

      v10 = *(a1 + 32);
    }

    objc_storeStrong((v10 + 24), a2);
    xpc_connection_set_target_queue(*(*(a1 + 32) + 24), *(*(a1 + 32) + 40));
    v14 = *(a1 + 32);
    v15 = *(v14 + 24);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __45__PacketCaptureur_createNotificationListener__block_invoke_10;
    handler[3] = &unk_279968468;
    handler[4] = v14;
    xpc_connection_set_event_handler(v15, handler);
    xpc_connection_resume(*(*(a1 + 32) + 24));
  }

  else
  {
    netqual_log_init(v6, v7);
    v9 = os_log_netqual;
    if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v18 = "[PacketCaptureur createNotificationListener]_block_invoke";
      v19 = 1024;
      v20 = 203;
      _os_log_impl(&dword_25B859000, v9, OS_LOG_TYPE_INFO, "%s:%u - unknown xpc_type_t", buf, 0x12u);
    }
  }
}

void __45__PacketCaptureur_createNotificationListener__block_invoke_10(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = MEMORY[0x25F872CB0]();
  if (v4 == MEMORY[0x277D86468])
  {
    string = xpc_dictionary_get_string(v3, kPcapdNotifTaskStatusChanged);
    int64 = xpc_dictionary_get_int64(v3, kPcapdValue);
    if (string)
    {
      v10 = int64;
      netqual_log_init(int64, v9);
      if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEBUG))
      {
        __45__PacketCaptureur_createNotificationListener__block_invoke_10_cold_3();
      }

      if (objc_opt_respondsToSelector())
      {
        v11 = *(*(a1 + 32) + 56);
        v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:string];
        [v11 packetCaptureurTaskStatusChangedFor:v12 toStatus:v10];
      }
    }

    else
    {
      v13 = MEMORY[0x25F872C20](v3);
      if (v13)
      {
        v15 = v13;
        netqual_log_init(v13, v14);
        v16 = os_log_netqual;
        if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_INFO))
        {
          v17 = 136315650;
          v18 = "[PacketCaptureur createNotificationListener]_block_invoke";
          v19 = 1024;
          v20 = 172;
          v21 = 2080;
          v22 = v15;
          _os_log_impl(&dword_25B859000, v16, OS_LOG_TYPE_INFO, "%s:%u - task_name seems to be NULL. dict: %s", &v17, 0x1Cu);
        }

        free(v15);
      }
    }
  }

  else if (v4 == MEMORY[0x277D86480])
  {
    if (*(*(a1 + 32) + 24))
    {
      if (v3 == MEMORY[0x277D863F0])
      {
        netqual_log_init(v4, v5);
        if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEBUG))
        {
          __45__PacketCaptureur_createNotificationListener__block_invoke_10_cold_2();
        }
      }

      else if (v3 == MEMORY[0x277D863F8])
      {
        netqual_log_init(v4, v5);
        if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEBUG))
        {
          __45__PacketCaptureur_createNotificationListener__block_invoke_10_cold_1();
        }
      }
    }
  }

  else
  {
    netqual_log_init(v4, v5);
    v6 = os_log_netqual;
    if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_INFO))
    {
      v17 = 136315394;
      v18 = "[PacketCaptureur createNotificationListener]_block_invoke";
      v19 = 1024;
      v20 = 198;
      _os_log_impl(&dword_25B859000, v6, OS_LOG_TYPE_INFO, "%s:%u - unknown message type", &v17, 0x12u);
    }
  }
}

- (void)sendNotificationListener
{
  v3 = xpc_dictionary_create(0, 0, 0);
  v5 = v3;
  if (v3)
  {
    xpc_dictionary_set_string(v3, kPcapdCommand, kPcapdCmdNotifier);
    xpc_dictionary_set_connection(v5, kPcapdConnection, self->netDiagNotificationListener);
    xpc_connection_send_message_with_reply(self->netDiagServiceConnection, v5, self->netDiagMsgQueue, &__block_literal_global_1);
  }

  else
  {
    netqual_log_init(0, v4);
    if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
    {
      [PacketCaptureur sendNotificationListener];
    }
  }
}

uint64_t __43__PacketCaptureur_sendNotificationListener__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x25F872C20](a3);
  if (v3)
  {
    v5 = v3;
    netqual_log_init(v3, v4);
    if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEBUG))
    {
      __43__PacketCaptureur_sendNotificationListener__block_invoke_2_cold_1();
    }

    free(v5);
  }

  return 1;
}

- (void)connectToXPCService
{
  v23 = *MEMORY[0x277D85DE8];
  netDiagConnQueue = self->netDiagConnQueue;
  if (netDiagConnQueue)
  {
    dispatch_assert_queue_V2(netDiagConnQueue);
  }

  if (!self->netDiagServiceConnection && self->netDiagMsgQueue && self->netDiagConnQueue)
  {
    netqual_log_init(netDiagConnQueue, a2);
    v4 = os_log_netqual;
    if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_INFO))
    {
      xpcServiceName = self->xpcServiceName;
      *buf = 136315650;
      v18 = "[PacketCaptureur connectToXPCService]";
      v19 = 1024;
      v20 = 239;
      v21 = 2112;
      v22 = xpcServiceName;
      _os_log_impl(&dword_25B859000, v4, OS_LOG_TYPE_INFO, "%s:%u - Creating connection to %@", buf, 0x1Cu);
    }

    uTF8String = [(NSString *)self->xpcServiceName UTF8String];
    v7 = self->netDiagConnQueue;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __38__PacketCaptureur_connectToXPCService__block_invoke;
    v16[3] = &unk_279968290;
    v16[4] = self;
    v8 = [(PacketCaptureur *)self _connectionForServiceNamed:uTF8String queue:v7 connectionInvalidHandler:v16];
    netDiagServiceConnection = self->netDiagServiceConnection;
    self->netDiagServiceConnection = v8;

    if (self->netDiagServiceConnection)
    {
      createNotificationListener = [(PacketCaptureur *)self createNotificationListener];
      netDiagNotificationListener = self->netDiagNotificationListener;
      self->netDiagNotificationListener = createNotificationListener;

      if (self->netDiagNotificationListener)
      {
        [(PacketCaptureur *)self sendNotificationListener];
      }

      else
      {
        netqual_log_init(v14, v15);
        if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
        {
          [PacketCaptureur connectToXPCService];
        }
      }
    }

    else
    {
      netqual_log_init(v10, v11);
      if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
      {
        [PacketCaptureur connectToXPCService];
      }
    }
  }
}

void __38__PacketCaptureur_connectToXPCService__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  *(v1 + 8) = 0;
}

- (void)invalidateConnections
{
  v17 = *MEMORY[0x277D85DE8];
  netqual_log_init(self, a2);
  v3 = os_log_netqual;
  if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_INFO))
  {
    xpcServiceName = self->xpcServiceName;
    v11 = 136315650;
    v12 = "[PacketCaptureur invalidateConnections]";
    v13 = 1024;
    v14 = 262;
    v15 = 2112;
    v16 = xpcServiceName;
    _os_log_impl(&dword_25B859000, v3, OS_LOG_TYPE_INFO, "%s:%u - Invalidating connections (%@)", &v11, 0x1Cu);
  }

  netDiagServiceConnection = self->netDiagServiceConnection;
  if (netDiagServiceConnection)
  {
    xpc_connection_cancel(netDiagServiceConnection);
    v6 = self->netDiagServiceConnection;
    self->netDiagServiceConnection = 0;
  }

  netDiagNotificationConnection = self->netDiagNotificationConnection;
  if (netDiagNotificationConnection)
  {
    xpc_connection_cancel(netDiagNotificationConnection);
    v8 = self->netDiagNotificationConnection;
    self->netDiagNotificationConnection = 0;
  }

  netDiagNotificationListener = self->netDiagNotificationListener;
  if (netDiagNotificationListener)
  {
    xpc_connection_cancel(netDiagNotificationListener);
    v10 = self->netDiagNotificationListener;
    self->netDiagNotificationListener = 0;
  }
}

- (void)startTask:(id)task destination:(id)destination withCompletion:(id)completion
{
  taskCopy = task;
  completionCopy = completion;
  destinationCopy = destination;
  v11 = xpc_dictionary_create(0, 0, 0);
  if (!v11)
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }

  xpc_dictionary_set_string(v11, kPcapdCommand, kPcapdCmdTaskRun);
  xpc_dictionary_set_string(v11, kPcapdKey, [taskCopy UTF8String]);
  v12 = kPcapdTaskFilePath;
  uTF8String = [destinationCopy UTF8String];

  xpc_dictionary_set_string(v11, v12, uTF8String);
  xpc_dictionary_set_uint64(v11, "pcapcompress", 1uLL);
  xpc_dictionary_set_BOOL(v11, "purgeable", 1);
  netDiagMsgQueue = self->netDiagMsgQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__PacketCaptureur_startTask_destination_withCompletion___block_invoke;
  block[3] = &unk_279968290;
  block[4] = self;
  dispatch_sync(netDiagMsgQueue, block);
  netDiagServiceConnection = self->netDiagServiceConnection;
  v16 = self->netDiagMsgQueue;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __56__PacketCaptureur_startTask_destination_withCompletion___block_invoke_2;
  handler[3] = &unk_2799684D0;
  v20 = taskCopy;
  v21 = completionCopy;
  v17 = completionCopy;
  v18 = taskCopy;
  xpc_connection_send_message_with_reply(netDiagServiceConnection, v11, v16, handler);
}

void __56__PacketCaptureur_startTask_destination_withCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = MEMORY[0x25F872CB0]();
  if (v4 == MEMORY[0x277D86480])
  {
    netqual_log_init(v4, v5);
    v7 = os_log_netqual;
    if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
    {
      v8 = MEMORY[0x277CCA9B8];
      v9 = *MEMORY[0x277CCA5B8];
      v16 = @"error";
      v10 = MEMORY[0x277CCACA8];
      v11 = *(a1 + 32);
      v12 = v7;
      v13 = [v10 stringWithFormat:@"An XPC error occurred while processing task: %@. (kPcapdCmdTaskRun failure)", v11];
      v17 = v13;
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
      v15 = [v8 errorWithDomain:v9 code:5 userInfo:v14];
      *buf = 136315650;
      v19 = "[PacketCaptureur startTask:destination:withCompletion:]_block_invoke_2";
      v20 = 1024;
      v21 = 308;
      v22 = 2112;
      v23 = v15;
      _os_log_error_impl(&dword_25B859000, v12, OS_LOG_TYPE_ERROR, "%s:%u - kPcapdCmdTaskRun failed: %@", buf, 0x1Cu);
    }

    (*(*(a1 + 40) + 16))();
  }

  else if (v4 == MEMORY[0x277D86468])
  {
    v6 = _CFXPCCreateCFObjectFromXPCObject();
    (*(*(a1 + 40) + 16))();
  }
}

- (void)stopTask:(id)task withCompletion:(id)completion
{
  taskCopy = task;
  completionCopy = completion;
  v8 = xpc_dictionary_create(0, 0, 0);
  if (!v8)
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }

  xpc_dictionary_set_string(v8, kPcapdCommand, kPcapdCmdTaskStop);
  xpc_dictionary_set_string(v8, kPcapdKey, [taskCopy UTF8String]);
  netDiagMsgQueue = self->netDiagMsgQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__PacketCaptureur_stopTask_withCompletion___block_invoke;
  block[3] = &unk_279968290;
  block[4] = self;
  dispatch_sync(netDiagMsgQueue, block);
  netDiagServiceConnection = self->netDiagServiceConnection;
  v11 = self->netDiagMsgQueue;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __43__PacketCaptureur_stopTask_withCompletion___block_invoke_2;
  handler[3] = &unk_2799684D0;
  v15 = taskCopy;
  v16 = completionCopy;
  v12 = completionCopy;
  v13 = taskCopy;
  xpc_connection_send_message_with_reply(netDiagServiceConnection, v8, v11, handler);
}

void __43__PacketCaptureur_stopTask_withCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = MEMORY[0x25F872CB0]();
  if (v4 == MEMORY[0x277D86480])
  {
    netqual_log_init(v4, v5);
    v7 = os_log_netqual;
    if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
    {
      v8 = MEMORY[0x277CCA9B8];
      v9 = *MEMORY[0x277CCA5B8];
      v16 = @"error";
      v10 = MEMORY[0x277CCACA8];
      v11 = *(a1 + 32);
      v12 = v7;
      v13 = [v10 stringWithFormat:@"An XPC error occurred while processing task: %@. (kPcapdCmdTaskRun failure)", v11];
      v17 = v13;
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
      v15 = [v8 errorWithDomain:v9 code:5 userInfo:v14];
      *buf = 136315650;
      v19 = "[PacketCaptureur stopTask:withCompletion:]_block_invoke_2";
      v20 = 1024;
      v21 = 344;
      v22 = 2112;
      v23 = v15;
      _os_log_error_impl(&dword_25B859000, v12, OS_LOG_TYPE_ERROR, "%s:%u - kPcapdCmdTaskStop failed: %@", buf, 0x1Cu);
    }

    (*(*(a1 + 40) + 16))();
  }

  else if (v4 == MEMORY[0x277D86468])
  {
    v6 = _CFXPCCreateCFObjectFromXPCObject();
    (*(*(a1 + 40) + 16))();
  }
}

- (void)_connectionForServiceNamed:queue:connectionInvalidHandler:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_12();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)_connectionForServiceNamed:queue:connectionInvalidHandler:.cold.2()
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 136315650;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(&dword_25B859000, v0, OS_LOG_TYPE_ERROR, "%s:%u - Can't connect to XPC service: %s", v1, 0x1Cu);
}

void __77__PacketCaptureur__connectionForServiceNamed_queue_connectionInvalidHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_12();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void __77__PacketCaptureur__connectionForServiceNamed_queue_connectionInvalidHandler___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_12();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void __77__PacketCaptureur__connectionForServiceNamed_queue_connectionInvalidHandler___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_12();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void __77__PacketCaptureur__connectionForServiceNamed_queue_connectionInvalidHandler___block_invoke_cold_4()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_12();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void __45__PacketCaptureur_createNotificationListener__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_12();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void __45__PacketCaptureur_createNotificationListener__block_invoke_cold_2()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_12();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

void __45__PacketCaptureur_createNotificationListener__block_invoke_cold_3()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_12();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

void __45__PacketCaptureur_createNotificationListener__block_invoke_10_cold_1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_12();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

void __45__PacketCaptureur_createNotificationListener__block_invoke_10_cold_2()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_12();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

void __45__PacketCaptureur_createNotificationListener__block_invoke_10_cold_3()
{
  v8 = *MEMORY[0x277D85DE8];
  *v4 = 136315906;
  OUTLINED_FUNCTION_0();
  *&v4[7] = 168;
  v4[9] = 2080;
  v5 = v0;
  v6 = v1;
  v7 = v2;
  _os_log_debug_impl(&dword_25B859000, v3, OS_LOG_TYPE_DEBUG, "%s:%u - Task status updated: %s to %d\n", v4, 0x22u);
}

void __43__PacketCaptureur_sendNotificationListener__block_invoke_2_cold_1()
{
  v9 = *MEMORY[0x277D85DE8];
  v4[0] = 136316162;
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3_0();
  v5 = v0;
  v6 = v1;
  v7 = v0;
  v8 = v2;
  _os_log_debug_impl(&dword_25B859000, v3, OS_LOG_TYPE_DEBUG, "%s:%u - %s reply key: %s desc: %s\n", v4, 0x30u);
}

@end