@interface GKAsyncSocketInternal
- (BOOL)setupSourcesWithSocket:(int)socket receiveEventHandler:(id)handler sendEventHandler:(id)eventHandler;
- (GKAsyncSocketInternal)init;
- (void)closeConnectionNow;
- (void)dealloc;
- (void)invalidate;
- (void)receiveData;
- (void)sendData;
- (void)sendData:(id)data withCompletionHandler:(id)handler;
- (void)setTargetQueue:(id)queue;
- (void)tcpAttachSocketDescriptor:(int)descriptor;
- (void)tcpConnectSockAddr:(const sockaddr *)addr port:(unsigned __int16)port;
@end

@implementation GKAsyncSocketInternal

- (GKAsyncSocketInternal)init
{
  v5.receiver = self;
  v5.super_class = GKAsyncSocketInternal;
  v2 = [(GKAsyncSocketInternal *)&v5 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB28]);
    v2->_dataToSend = v3;
    if (v3)
    {
      v2->_connectionSocket = -1;
      v2->_syncQueue = dispatch_queue_create("com.apple.GameKitServices.GKAsyncSocket", 0);
    }

    else
    {

      return 0;
    }
  }

  return v2;
}

- (void)setTargetQueue:(id)queue
{
  if (queue)
  {
    dispatch_retain(queue);
  }

  targetQueue = self->_targetQueue;
  if (targetQueue)
  {
    dispatch_release(targetQueue);
  }

  self->_targetQueue = queue;
}

- (BOOL)setupSourcesWithSocket:(int)socket receiveEventHandler:(id)handler sendEventHandler:(id)eventHandler
{
  v45 = *MEMORY[0x277D85DE8];
  v9 = fcntl(socket, 3, 0);
  if (v9 == -1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      v19 = os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR);
      if (!v19)
      {
        return v19;
      }

      [GKAsyncSocketInternal setupSourcesWithSocket:receiveEventHandler:sendEventHandler:];
    }

LABEL_27:
    LOBYTE(v19) = 0;
    return v19;
  }

  if (fcntl(socket, 4, v9 | 4u) == -1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      v19 = os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR);
      if (!v19)
      {
        return v19;
      }

      [GKAsyncSocketInternal setupSourcesWithSocket:receiveEventHandler:sendEventHandler:];
    }

    goto LABEL_27;
  }

  v32 = 1;
  if (setsockopt(socket, 0xFFFF, 4130, &v32, 4u) == -1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      v19 = os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR);
      if (!v19)
      {
        return v19;
      }

      [GKAsyncSocketInternal setupSourcesWithSocket:receiveEventHandler:sendEventHandler:];
    }

    goto LABEL_27;
  }

  v10 = dispatch_source_create(MEMORY[0x277D85D28], socket, 0, self->_syncQueue);
  self->_receiveSource = v10;
  if (!v10)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v20 = VRTraceErrorLogLevelToCSTR();
      v21 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        socketName = self->_socketName;
        if (socketName)
        {
          uTF8String = [objc_msgSend_description(socketName) UTF8String];
        }

        else
        {
          uTF8String = "<nil>";
        }

        *buf = 136316418;
        v34 = v20;
        v35 = 2080;
        v36 = "[GKAsyncSocketInternal setupSourcesWithSocket:receiveEventHandler:sendEventHandler:]";
        v37 = 1024;
        v38 = 148;
        v39 = 2048;
        selfCopy3 = self;
        v41 = 1024;
        socketCopy2 = socket;
        v43 = 2080;
        v44 = uTF8String;
        _os_log_error_impl(&dword_24E50C000, v21, OS_LOG_TYPE_ERROR, " [%s] %s:%d ptr [%p] sd [%d] name [%s] cannot create dispatch source for reading socket", buf, 0x36u);
      }
    }

    goto LABEL_26;
  }

  v11 = dispatch_source_create(MEMORY[0x277D85D50], socket, 0, self->_syncQueue);
  self->_sendSource = v11;
  if (!v11)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v24 = VRTraceErrorLogLevelToCSTR();
      v25 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        v26 = self->_socketName;
        if (v26)
        {
          uTF8String2 = [objc_msgSend_description(v26) UTF8String];
        }

        else
        {
          uTF8String2 = "<nil>";
        }

        *buf = 136316418;
        v34 = v24;
        v35 = 2080;
        v36 = "[GKAsyncSocketInternal setupSourcesWithSocket:receiveEventHandler:sendEventHandler:]";
        v37 = 1024;
        v38 = 155;
        v39 = 2048;
        selfCopy3 = self;
        v41 = 1024;
        socketCopy2 = socket;
        v43 = 2080;
        v44 = uTF8String2;
        _os_log_error_impl(&dword_24E50C000, v25, OS_LOG_TYPE_ERROR, " [%s] %s:%d ptr [%p] sd [%d] name [%s] cannot create dispatch source for writing socket", buf, 0x36u);
      }
    }

    dispatch_release(self->_receiveSource);
LABEL_26:
    close(socket);
    goto LABEL_27;
  }

  self->_connectionSocket = socket;
  dispatch_source_set_event_handler(self->_receiveSource, handler);
  receiveSource = self->_receiveSource;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __85__GKAsyncSocketInternal_setupSourcesWithSocket_receiveEventHandler_sendEventHandler___block_invoke;
  handler[3] = &__block_descriptor_36_e5_v8__0l;
  socketCopy3 = socket;
  dispatch_source_set_cancel_handler(receiveSource, handler);
  dispatch_source_set_event_handler(self->_sendSource, eventHandler);
  sendSource = self->_sendSource;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __85__GKAsyncSocketInternal_setupSourcesWithSocket_receiveEventHandler_sendEventHandler___block_invoke_2;
  v29[3] = &unk_279682BA8;
  v29[4] = self;
  dispatch_source_set_cancel_handler(sendSource, v29);
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v14 = VRTraceErrorLogLevelToCSTR();
    v15 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      connectionSocket = self->_connectionSocket;
      v17 = self->_socketName;
      if (v17)
      {
        uTF8String3 = [objc_msgSend_description(v17) UTF8String];
      }

      else
      {
        uTF8String3 = "<nil>";
      }

      *buf = 136316418;
      v34 = v14;
      v35 = 2080;
      v36 = "[GKAsyncSocketInternal setupSourcesWithSocket:receiveEventHandler:sendEventHandler:]";
      v37 = 1024;
      v38 = 172;
      v39 = 2048;
      selfCopy3 = self;
      v41 = 1024;
      socketCopy2 = connectionSocket;
      v43 = 2080;
      v44 = uTF8String3;
      _os_log_impl(&dword_24E50C000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ptr [%p] sd [%d] name [%s] set up socket", buf, 0x36u);
    }
  }

  dispatch_resume(self->_receiveSource);
  self->_sendSourceSuspended = 0;
  dispatch_resume(self->_sendSource);
  LOBYTE(v19) = 1;
  return v19;
}

void __85__GKAsyncSocketInternal_setupSourcesWithSocket_receiveEventHandler_sendEventHandler___block_invoke_2(uint64_t a1)
{
  dispatch_source_cancel(*(*(a1 + 32) + 8));
  v2 = *(*(a1 + 32) + 8);
  if (v2)
  {
    dispatch_release(v2);
    *(*(a1 + 32) + 8) = 0;
  }
}

- (void)tcpAttachSocketDescriptor:(int)descriptor
{
  v7[4] = self;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __51__GKAsyncSocketInternal_tcpAttachSocketDescriptor___block_invoke;
  v8[3] = &unk_279682BA8;
  v8[4] = self;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__GKAsyncSocketInternal_tcpAttachSocketDescriptor___block_invoke_2;
  v7[3] = &unk_279682BA8;
  if (![(GKAsyncSocketInternal *)self setupSourcesWithSocket:*&descriptor receiveEventHandler:v8 sendEventHandler:v7])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        [GKAsyncSocketInternal tcpAttachSocketDescriptor:];
      }
    }

    connectedHandler = self->_connectedHandler;
    if (connectedHandler)
    {
      if (self->_targetQueue)
      {
        targetQueue = self->_targetQueue;
      }

      else
      {
        targetQueue = MEMORY[0x277D85CD0];
      }

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __51__GKAsyncSocketInternal_tcpAttachSocketDescriptor___block_invoke_40;
      block[3] = &unk_279683388;
      block[4] = connectedHandler;
      dispatch_async(targetQueue, block);
      [(GKAsyncSocketInternal *)self setConnectedHandler:0];
    }
  }
}

uint64_t __51__GKAsyncSocketInternal_tcpAttachSocketDescriptor___block_invoke_40(uint64_t a1)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CCA450];
  v4[0] = @"Failed to setup sources for socket";
  [MEMORY[0x277CCA9B8] errorWithDomain:@"GKAsyncSocket" code:-1 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v4, &v3, 1)}];
  return (*(*(a1 + 32) + 16))();
}

- (void)tcpConnectSockAddr:(const sockaddr *)addr port:(unsigned __int16)port
{
  portCopy = port;
  v50 = *MEMORY[0x277D85DE8];
  *&v49.sa_len = 0xAAAAAAAAAAAAAAAALL;
  *&v49.sa_data[6] = 0xAAAAAAAAAAAAAAAALL;
  memset(v30, 170, 28);
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *(v48 + 14) = v6;
  *v47 = v6;
  v48[0] = v6;
  sa_family = addr->sa_family;
  if (sa_family == 30)
  {
    v30[0] = *addr;
    *(v30 + 12) = *&addr->sa_data[10];
    WORD1(v30[0]) = port;
    v9 = socket(30, 1, 0);
    inet_ntop(30, v30 + 8, v47, 0x2Eu);
    v10 = 28;
    v8 = v30;
  }

  else
  {
    if (sa_family != 2)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          [GKAsyncSocketInternal tcpConnectSockAddr:port:];
        }
      }

      connectedHandler = self->_connectedHandler;
      if (connectedHandler)
      {
        if (self->_targetQueue)
        {
          targetQueue = self->_targetQueue;
        }

        else
        {
          targetQueue = MEMORY[0x277D85CD0];
        }

        v29[0] = MEMORY[0x277D85DD0];
        v29[1] = 3221225472;
        v29[2] = __49__GKAsyncSocketInternal_tcpConnectSockAddr_port___block_invoke;
        v29[3] = &unk_279683388;
        v29[4] = connectedHandler;
        v19 = v29;
        goto LABEL_48;
      }

      return;
    }

    v8 = &v49;
    v49 = *addr;
    *v49.sa_data = port;
    v9 = socket(2, 1, 0);
    v10 = 16;
    inet_ntop(2, &v49.sa_data[2], v47, 0x10u);
  }

  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (v9 == -1)
  {
    if (ErrorLogLevelForModule >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        [GKAsyncSocketInternal tcpConnectSockAddr:port:];
      }
    }

    v20 = self->_connectedHandler;
    if (v20)
    {
      if (self->_targetQueue)
      {
        targetQueue = self->_targetQueue;
      }

      else
      {
        targetQueue = MEMORY[0x277D85CD0];
      }

      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __49__GKAsyncSocketInternal_tcpConnectSockAddr_port___block_invoke_50;
      v28[3] = &unk_279683388;
      v28[4] = v20;
      v19 = v28;
      goto LABEL_48;
    }
  }

  else
  {
    if (ErrorLogLevelForModule >= 7)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        connectionSocket = self->_connectionSocket;
        socketName = self->_socketName;
        if (socketName)
        {
          uTF8String = [objc_msgSend_description(socketName) UTF8String];
        }

        else
        {
          uTF8String = "<nil>";
        }

        *buf = 136316930;
        v32 = v12;
        v33 = 2080;
        v34 = "[GKAsyncSocketInternal tcpConnectSockAddr:port:]";
        v35 = 1024;
        v36 = 258;
        v37 = 2048;
        selfCopy = self;
        v39 = 1024;
        v40 = connectionSocket;
        v41 = 2080;
        v42 = uTF8String;
        v43 = 2080;
        v44 = v47;
        v45 = 1024;
        v46 = __rev16(portCopy);
        _os_log_impl(&dword_24E50C000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ptr [%p] sd [%d] name [%s] connecting to %s:%u", buf, 0x46u);
      }
    }

    v21 = fcntl(v9, 3, 0);
    if (v21 != -1)
    {
      fcntl(v9, 4, v21 | 4u);
      *buf = 1;
      setsockopt(v9, 0xFFFF, 4130, buf, 4u);
      if (connect(v9, v8, v10) == -1 && *__error() != 36)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
          {
            [GKAsyncSocketInternal tcpConnectSockAddr:port:];
          }
        }

        close(v9);
        v23 = self->_connectedHandler;
        if (v23)
        {
          if (self->_targetQueue)
          {
            targetQueue = self->_targetQueue;
          }

          else
          {
            targetQueue = MEMORY[0x277D85CD0];
          }

          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __49__GKAsyncSocketInternal_tcpConnectSockAddr_port___block_invoke_54;
          block[3] = &unk_279683388;
          block[4] = v23;
          v19 = block;
          goto LABEL_48;
        }
      }

      else
      {
        v25[4] = self;
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __49__GKAsyncSocketInternal_tcpConnectSockAddr_port___block_invoke_2;
        v26[3] = &unk_279682BA8;
        v26[4] = self;
        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = __49__GKAsyncSocketInternal_tcpConnectSockAddr_port___block_invoke_3;
        v25[3] = &unk_279682BA8;
        if (![(GKAsyncSocketInternal *)self setupSourcesWithSocket:v9 receiveEventHandler:v26 sendEventHandler:v25])
        {
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
            {
              [GKAsyncSocketInternal tcpConnectSockAddr:port:];
            }
          }

          v22 = self->_connectedHandler;
          if (v22)
          {
            if (self->_targetQueue)
            {
              targetQueue = self->_targetQueue;
            }

            else
            {
              targetQueue = MEMORY[0x277D85CD0];
            }

            v24[0] = MEMORY[0x277D85DD0];
            v24[1] = 3221225472;
            v24[2] = __49__GKAsyncSocketInternal_tcpConnectSockAddr_port___block_invoke_58;
            v24[3] = &unk_279683388;
            v24[4] = v22;
            v19 = v24;
LABEL_48:
            dispatch_async(targetQueue, v19);
            [(GKAsyncSocketInternal *)self setConnectedHandler:0];
          }
        }
      }
    }
  }
}

uint64_t __49__GKAsyncSocketInternal_tcpConnectSockAddr_port___block_invoke(uint64_t a1)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CCA450];
  v4[0] = @"Unknown socket address";
  [MEMORY[0x277CCA9B8] errorWithDomain:@"GKAsyncSocket" code:-2 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v4, &v3, 1)}];
  return (*(*(a1 + 32) + 16))();
}

uint64_t __49__GKAsyncSocketInternal_tcpConnectSockAddr_port___block_invoke_50(uint64_t a1)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CCA450];
  v4[0] = @"Socket failed";
  [MEMORY[0x277CCA9B8] errorWithDomain:@"GKAsyncSocket" code:-3 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v4, &v3, 1)}];
  return (*(*(a1 + 32) + 16))();
}

uint64_t __49__GKAsyncSocketInternal_tcpConnectSockAddr_port___block_invoke_54(uint64_t a1)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CCA450];
  v4[0] = @"Connect failed";
  [MEMORY[0x277CCA9B8] errorWithDomain:@"GKAsyncSocket" code:-4 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v4, &v3, 1)}];
  return (*(*(a1 + 32) + 16))();
}

uint64_t __49__GKAsyncSocketInternal_tcpConnectSockAddr_port___block_invoke_58(uint64_t a1)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CCA450];
  v4[0] = @"Failed to setup sources for socket";
  [MEMORY[0x277CCA9B8] errorWithDomain:@"GKAsyncSocket" code:-1 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v4, &v3, 1)}];
  return (*(*(a1 + 32) + 16))();
}

- (void)dealloc
{
  v23 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      connectionSocket = self->_connectionSocket;
      socketName = self->_socketName;
      if (socketName)
      {
        uTF8String = [objc_msgSend_description(socketName) UTF8String];
      }

      else
      {
        uTF8String = "<nil>";
      }

      *buf = 136316418;
      v12 = v3;
      v13 = 2080;
      v14 = "[GKAsyncSocketInternal dealloc]";
      v15 = 1024;
      v16 = 311;
      v17 = 2048;
      selfCopy = self;
      v19 = 1024;
      v20 = connectionSocket;
      v21 = 2080;
      v22 = uTF8String;
      _os_log_impl(&dword_24E50C000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ptr [%p] sd [%d] name [%s] dealloc", buf, 0x36u);
    }
  }

  syncQueue = self->_syncQueue;
  if (syncQueue)
  {
    dispatch_release(syncQueue);
  }

  targetQueue = self->_targetQueue;
  if (targetQueue)
  {
    dispatch_release(targetQueue);
  }

  v10.receiver = self;
  v10.super_class = GKAsyncSocketInternal;
  [(GKAsyncSocketInternal *)&v10 dealloc];
}

- (void)invalidate
{
  v22 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      connectionSocket = self->_connectionSocket;
      socketName = self->_socketName;
      if (socketName)
      {
        uTF8String = [objc_msgSend_description(socketName) UTF8String];
      }

      else
      {
        uTF8String = "<nil>";
      }

      *buf = 136316418;
      v11 = v3;
      v12 = 2080;
      v13 = "[GKAsyncSocketInternal invalidate]";
      v14 = 1024;
      v15 = 326;
      v16 = 2048;
      selfCopy = self;
      v18 = 1024;
      v19 = connectionSocket;
      v20 = 2080;
      v21 = uTF8String;
      _os_log_impl(&dword_24E50C000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ptr [%p] sd [%d] name [%s] invalidate", buf, 0x36u);
    }
  }

  self->_invalidated = 1;
  syncQueue = self->_syncQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__GKAsyncSocketInternal_invalidate__block_invoke;
  block[3] = &unk_279682BA8;
  block[4] = self;
  dispatch_async(syncQueue, block);
}

uint64_t __35__GKAsyncSocketInternal_invalidate__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 40) = 0;
  v2 = *(a1 + 32);

  return [v2 closeConnectionNow];
}

- (void)sendData:(id)data withCompletionHandler:(id)handler
{
  if (self->_invalidated || self->_connectionSocket == -1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        [GKAsyncSocketInternal sendData:withCompletionHandler:];
      }
    }
  }

  else
  {
    syncQueue = self->_syncQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __56__GKAsyncSocketInternal_sendData_withCompletionHandler___block_invoke;
    block[3] = &unk_2796833B0;
    block[4] = self;
    block[5] = data;
    block[6] = handler;
    dispatch_async(syncQueue, block);
  }
}

uint64_t __56__GKAsyncSocketInternal_sendData_withCompletionHandler___block_invoke(void *a1)
{
  v30 = *MEMORY[0x277D85DE8];
  [*(a1[4] + 32) appendData:a1[5]];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v4 = a1[4];
      v5 = *(v4 + 28);
      v6 = *(v4 + 72);
      if (v6)
      {
        v7 = [objc_msgSend_description(v6) UTF8String];
      }

      else
      {
        v7 = "<nil>";
      }

      v8 = [*(a1[4] + 32) length];
      v16 = 136316674;
      v17 = v2;
      v18 = 2080;
      v19 = "[GKAsyncSocketInternal sendData:withCompletionHandler:]_block_invoke";
      v20 = 1024;
      v21 = 344;
      v22 = 2048;
      v23 = v4;
      v24 = 1024;
      v25 = v5;
      v26 = 2080;
      v27 = v7;
      v28 = 1024;
      v29 = v8;
      _os_log_impl(&dword_24E50C000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ptr [%p] sd [%d] name [%s] appending data [%u]", &v16, 0x3Cu);
    }
  }

  if (*(a1[4] + 24) == 1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v11 = a1[4];
        v12 = *(v11 + 28);
        v13 = *(v11 + 72);
        if (v13)
        {
          v14 = [objc_msgSend_description(v13) UTF8String];
        }

        else
        {
          v14 = "<nil>";
        }

        v16 = 136316418;
        v17 = v9;
        v18 = 2080;
        v19 = "[GKAsyncSocketInternal sendData:withCompletionHandler:]_block_invoke";
        v20 = 1024;
        v21 = 347;
        v22 = 2048;
        v23 = v11;
        v24 = 1024;
        v25 = v12;
        v26 = 2080;
        v27 = v14;
        _os_log_impl(&dword_24E50C000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ptr [%p] sd [%d] name [%s] resuming sendSource", &v16, 0x36u);
      }
    }

    dispatch_resume(*(a1[4] + 16));
    *(a1[4] + 24) = 0;
  }

  result = a1[6];
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

- (void)closeConnectionNow
{
  v39 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      connectionSocket = self->_connectionSocket;
      socketName = self->_socketName;
      if (socketName)
      {
        uTF8String = [objc_msgSend_description(socketName) UTF8String];
      }

      else
      {
        uTF8String = "<nil>";
      }

      *buf = 136316418;
      v28 = v3;
      v29 = 2080;
      v30 = "[GKAsyncSocketInternal closeConnectionNow]";
      v31 = 1024;
      v32 = 360;
      v33 = 2048;
      selfCopy3 = self;
      v35 = 1024;
      v36 = connectionSocket;
      v37 = 2080;
      v38 = uTF8String;
      _os_log_impl(&dword_24E50C000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ptr [%p] sd [%d] name [%s] closing down connections...", buf, 0x36u);
    }
  }

  sendSource = self->_sendSource;
  if (sendSource)
  {
    dispatch_source_cancel(sendSource);
    if (self->_sendSourceSuspended)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v9 = VRTraceErrorLogLevelToCSTR();
        v10 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          v11 = self->_connectionSocket;
          v12 = self->_socketName;
          if (v12)
          {
            uTF8String2 = [objc_msgSend_description(v12) UTF8String];
          }

          else
          {
            uTF8String2 = "<nil>";
          }

          *buf = 136316418;
          v28 = v9;
          v29 = 2080;
          v30 = "[GKAsyncSocketInternal closeConnectionNow]";
          v31 = 1024;
          v32 = 365;
          v33 = 2048;
          selfCopy3 = self;
          v35 = 1024;
          v36 = v11;
          v37 = 2080;
          v38 = uTF8String2;
          _os_log_impl(&dword_24E50C000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ptr [%p] sd [%d] name [%s] resuming sendSource", buf, 0x36u);
        }
      }

      dispatch_resume(self->_sendSource);
      self->_sendSourceSuspended = 0;
    }

    v20 = self->_sendSource;
    if (v20)
    {
      dispatch_release(v20);
      self->_sendSource = 0;
    }

    p_connectionSocket = &self->_connectionSocket;
  }

  else
  {
    p_connectionSocket = &self->_connectionSocket;
    if (self->_connectionSocket == -1)
    {
      goto LABEL_28;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v15 = VRTraceErrorLogLevelToCSTR();
      v16 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v17 = *p_connectionSocket;
        v18 = self->_socketName;
        if (v18)
        {
          uTF8String3 = [objc_msgSend_description(v18) UTF8String];
        }

        else
        {
          uTF8String3 = "<nil>";
        }

        *buf = 136316418;
        v28 = v15;
        v29 = 2080;
        v30 = "[GKAsyncSocketInternal closeConnectionNow]";
        v31 = 1024;
        v32 = 373;
        v33 = 2048;
        selfCopy3 = self;
        v35 = 1024;
        v36 = v17;
        v37 = 2080;
        v38 = uTF8String3;
        _os_log_impl(&dword_24E50C000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ptr [%p] sd [%d] name [%s] closing socket", buf, 0x36u);
      }
    }

    close(*p_connectionSocket);
  }

  *p_connectionSocket = -1;
LABEL_28:
  if (!self->_invalidated)
  {
    self->_invalidated = 1;
    connectedHandler = self->_connectedHandler;
    if (connectedHandler)
    {
      if (self->_targetQueue)
      {
        targetQueue = self->_targetQueue;
      }

      else
      {
        targetQueue = MEMORY[0x277D85CD0];
      }

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __43__GKAsyncSocketInternal_closeConnectionNow__block_invoke;
      block[3] = &unk_279683388;
      block[4] = connectedHandler;
      dispatch_async(targetQueue, block);
      [(GKAsyncSocketInternal *)self setConnectedHandler:0];
    }

    else
    {
      receiveDataHandler = self->_receiveDataHandler;
      if (self->_targetQueue)
      {
        v24 = self->_targetQueue;
      }

      else
      {
        v24 = MEMORY[0x277D85CD0];
      }

      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __43__GKAsyncSocketInternal_closeConnectionNow__block_invoke_2;
      v25[3] = &unk_279683388;
      v25[4] = receiveDataHandler;
      dispatch_async(v24, v25);

      self->_receiveDataHandler = 0;
    }
  }
}

uint64_t __43__GKAsyncSocketInternal_closeConnectionNow__block_invoke(uint64_t a1)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CCA450];
  v4[0] = @"Connection closed prematurely";
  [MEMORY[0x277CCA9B8] errorWithDomain:@"GKAsyncSocket" code:-5 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v4, &v3, 1)}];
  return (*(*(a1 + 32) + 16))();
}

uint64_t __43__GKAsyncSocketInternal_closeConnectionNow__block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, 0, 0.0);
  }

  return result;
}

- (void)receiveData
{
  OUTLINED_FUNCTION_6_2();
  v1 = *(v0 + 72);
  if (v1)
  {
    [objc_msgSend_description(v1) UTF8String];
  }

  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x36u);
}

uint64_t __36__GKAsyncSocketInternal_receiveData__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:*(a1 + 40) length:*(a1 + 56) freeWhenDone:1];
  v4.n128_u64[0] = *(a1 + 48);
  v5 = *(v2 + 16);

  return v5(v2, v3, 0, v4);
}

- (void)sendData
{
  OUTLINED_FUNCTION_6_2();
  v1 = *(v0 + 72);
  if (v1)
  {
    [objc_msgSend_description(v1) UTF8String];
  }

  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x36u);
}

- (void)setupSourcesWithSocket:receiveEventHandler:sendEventHandler:.cold.1()
{
  OUTLINED_FUNCTION_6_2();
  v1 = *(v0 + 72);
  if (v1)
  {
    [objc_msgSend_description(v1) UTF8String];
  }

  __error();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x3Cu);
}

- (void)setupSourcesWithSocket:receiveEventHandler:sendEventHandler:.cold.2()
{
  OUTLINED_FUNCTION_6_2();
  v1 = *(v0 + 72);
  if (v1)
  {
    [objc_msgSend_description(v1) UTF8String];
  }

  __error();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x3Cu);
}

- (void)setupSourcesWithSocket:receiveEventHandler:sendEventHandler:.cold.3()
{
  OUTLINED_FUNCTION_6_2();
  v1 = *(v0 + 72);
  if (v1)
  {
    [objc_msgSend_description(v1) UTF8String];
  }

  __error();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x3Cu);
}

- (void)tcpAttachSocketDescriptor:.cold.1()
{
  OUTLINED_FUNCTION_6_2();
  v1 = *(v0 + 72);
  if (v1)
  {
    [objc_msgSend_description(v1) UTF8String];
  }

  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x36u);
}

- (void)tcpConnectSockAddr:port:.cold.1()
{
  OUTLINED_FUNCTION_6_2();
  v1 = *(v0 + 72);
  if (v1)
  {
    [objc_msgSend_description(v1) UTF8String];
  }

  __error();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x3Cu);
}

- (void)tcpConnectSockAddr:port:.cold.2()
{
  OUTLINED_FUNCTION_6_2();
  v1 = *(v0 + 72);
  if (v1)
  {
    [objc_msgSend_description(v1) UTF8String];
  }

  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x36u);
}

- (void)tcpConnectSockAddr:port:.cold.3()
{
  OUTLINED_FUNCTION_6_2();
  v1 = *(v0 + 72);
  if (v1)
  {
    [objc_msgSend_description(v1) UTF8String];
  }

  __error();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x3Cu);
}

- (void)tcpConnectSockAddr:port:.cold.4()
{
  OUTLINED_FUNCTION_6_2();
  v1 = *(v0 + 72);
  if (v1)
  {
    [objc_msgSend_description(v1) UTF8String];
  }

  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x36u);
}

- (void)sendData:withCompletionHandler:.cold.1()
{
  OUTLINED_FUNCTION_6_2();
  v1 = *(v0 + 72);
  if (v1)
  {
    [objc_msgSend_description(v1) UTF8String];
  }

  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x36u);
}

@end