@interface GKDiscoveryPeerConnection
+ (unint64_t)receiveDataLimit;
+ (unint64_t)sendDataLimit;
+ (void)checkConstants;
- (BOOL)shouldDecideAboutConnection;
- (BOOL)syncSetupNewSocket;
- (GKDiscoveryPeerConnection)initWithLocalServiceName:(id)name;
- (void)attachSocketDescriptor:(int)descriptor;
- (void)connectToSockAddr:(const sockaddr *)addr port:(unsigned __int16)port;
- (void)dealloc;
- (void)invalidate;
- (void)sendData:(id)data withCompletionHandler:(id)handler;
- (void)setSyncQueue:(id)queue;
- (void)setTargetQueue:(id)queue;
- (void)shouldDecideAboutConnection;
- (void)syncAcceptedConnection;
- (void)syncCloseConnectionNow;
- (void)syncConnected:(id)connected;
- (void)syncProcessMessage:(int)message data:(id)data sequenceNumber:(unsigned int)number;
- (void)syncReceivedData:(id)data error:(id)error;
- (void)syncSendHello;
- (void)syncSendMessage:(int)message data:(id)data withCompletionHandler:(id)handler;
- (void)syncSendMessageReceipt:(int)receipt sequenceNumber:(unsigned int)number;
- (void)timeout:(id)timeout;
@end

@implementation GKDiscoveryPeerConnection

- (GKDiscoveryPeerConnection)initWithLocalServiceName:(id)name
{
  v16.receiver = self;
  v16.super_class = GKDiscoveryPeerConnection;
  v4 = [(GKDiscoveryPeerConnection *)&v16 init];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB28]);
    v4->_dataReceived = v5;
    if (v5 && (v6 = objc_alloc_init(MEMORY[0x277CBEB28]), (v4->_dataToSendHoldingQueue = v6) != 0) && (v7 = objc_alloc_init(MEMORY[0x277CBEB18]), (v4->_receivedDataHoldingQueue = v7) != 0) && (v8 = objc_alloc_init(MEMORY[0x277CBEB18]), (v4->_messageReceiptHandlerList = v8) != 0) && (v9 = objc_alloc_init(MEMORY[0x277CBEB18]), (v4->_messageReceiptHandlerHoldingQueue = v9) != 0))
    {
      [(GKDiscoveryPeerConnection *)v4 setLocalServiceName:name];
      v10 = objc_alloc_init(GKSimpleTimer);
      v4->_heartbeatTimer = v10;
      [(GKSimpleTimer *)v10 setDelegate:v4];
      v11 = objc_alloc_init(GKSimpleTimer);
      v4->_heartbeatTimeoutTimer = v11;
      [(GKSimpleTimer *)v11 setDelegate:v4];
      v12 = objc_alloc_init(GKSimpleTimer);
      v4->_timeoutTimer = v12;
      [(GKSimpleTimer *)v12 setDelegate:v4];
      [objc_msgSend(off_279682970 getClientOption:{*off_2796828D8), "doubleValue"}];
      if (v13 == 0.0)
      {
        v13 = 60.0;
      }

      v4->_connectionTimeoutInSeconds = v13;
      [objc_msgSend(off_279682970 getClientOption:{*off_2796828D0), "doubleValue"}];
      v4->_heartbeatIntervalInSeconds = v14;
      if (v14 == 0.0)
      {
        v4->_heartbeatIntervalInSeconds = 20.0;
      }
    }

    else
    {

      return 0;
    }
  }

  return v4;
}

- (void)setSyncQueue:(id)queue
{
  if (queue)
  {
    dispatch_retain(queue);
  }

  syncQueue = self->_syncQueue;
  if (syncQueue)
  {
    dispatch_release(syncQueue);
  }

  self->_syncQueue = queue;
  connectionSocket = self->_connectionSocket;

  [(GKAsyncSocket *)connectionSocket setTargetQueue:queue];
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

- (void)syncConnected:(id)connected
{
  if (connected)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        [GKDiscoveryPeerConnection syncConnected:];
      }
    }

    connectedHandler = self->_connectedHandler;
    if (connectedHandler)
    {
      self->_connectedHandler = 0;
      if (self->_targetQueue)
      {
        targetQueue = self->_targetQueue;
      }

      else
      {
        targetQueue = MEMORY[0x277D85CD0];
      }

      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __43__GKDiscoveryPeerConnection_syncConnected___block_invoke;
      v7[3] = &unk_279683400;
      v7[4] = connected;
      v7[5] = connectedHandler;
      dispatch_async(targetQueue, v7);
    }
  }

  else
  {

    [(GKDiscoveryPeerConnection *)self syncSendHello];
  }
}

- (BOOL)syncSetupNewSocket
{
  v30 = *MEMORY[0x277D85DE8];
  if (self->_connectionSocket)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        connectionSocket = self->_connectionSocket;
        remoteServiceName = self->_remoteServiceName;
        if (remoteServiceName)
        {
          uTF8String = [objc_msgSend_description(remoteServiceName) UTF8String];
        }

        else
        {
          uTF8String = "<nil>";
        }

        *buf = 136316418;
        v19 = v3;
        v20 = 2080;
        v21 = "[GKDiscoveryPeerConnection syncSetupNewSocket]";
        v22 = 1024;
        v23 = 266;
        v24 = 2048;
        selfCopy2 = self;
        v26 = 2048;
        v27 = connectionSocket;
        v28 = 2080;
        v29 = uTF8String;
        _os_log_impl(&dword_24E50C000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ptr [%p] socketPtr [%p] remote [%s] _connectionSocket already up", buf, 0x3Au);
      }
    }

    goto LABEL_14;
  }

  v8 = objc_alloc_init(GKAsyncSocket);
  self->_connectionSocket = v8;
  if (v8)
  {
    [(GKAsyncSocket *)v8 setTargetQueue:self->_syncQueue];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __47__GKDiscoveryPeerConnection_syncSetupNewSocket__block_invoke;
    v17[3] = &unk_279683428;
    v17[4] = self;
    [(GKAsyncSocket *)self->_connectionSocket setReceiveDataHandler:v17];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __47__GKDiscoveryPeerConnection_syncSetupNewSocket__block_invoke_2;
    v16[3] = &unk_279683450;
    v16[4] = self;
    [(GKAsyncSocket *)self->_connectionSocket setConnectedHandler:v16];
LABEL_14:
    LOBYTE(v11) = 1;
    return v11;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x277CE5818];
    v11 = os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR);
    if (!v11)
    {
      return v11;
    }

    v12 = self->_connectionSocket;
    v13 = self->_remoteServiceName;
    if (v13)
    {
      uTF8String2 = [objc_msgSend_description(v13) UTF8String];
    }

    else
    {
      uTF8String2 = "<nil>";
    }

    *buf = 136316418;
    v19 = v9;
    v20 = 2080;
    v21 = "[GKDiscoveryPeerConnection syncSetupNewSocket]";
    v22 = 1024;
    v23 = 272;
    v24 = 2048;
    selfCopy2 = self;
    v26 = 2048;
    v27 = v12;
    v28 = 2080;
    v29 = uTF8String2;
    _os_log_error_impl(&dword_24E50C000, v10, OS_LOG_TYPE_ERROR, " [%s] %s:%d ptr [%p] socketPtr [%p] remote [%s] GKAsyncSocket alloc failed", buf, 0x3Au);
  }

  LOBYTE(v11) = 0;
  return v11;
}

- (void)connectToSockAddr:(const sockaddr *)addr port:(unsigned __int16)port
{
  v7 = copysockaddr(&addr->sa_len);
  syncQueue = self->_syncQueue;
  if (!syncQueue)
  {
    syncQueue = MEMORY[0x277D85CD0];
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __52__GKDiscoveryPeerConnection_connectToSockAddr_port___block_invoke;
  v9[3] = &unk_279683478;
  v9[4] = self;
  v9[5] = v7;
  v9[6] = a2;
  portCopy = port;
  dispatch_async(syncQueue, v9);
}

void __52__GKDiscoveryPeerConnection_connectToSockAddr_port___block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = *(v4 + 32);
      v6 = *(v4 + 8);
      if (v6)
      {
        v7 = [objc_msgSend_description(v6) UTF8String];
      }

      else
      {
        v7 = "<nil>";
      }

      v8 = *(*(a1 + 40) + 1);
      *buf = 136316674;
      v24 = v2;
      v25 = 2080;
      v26 = "[GKDiscoveryPeerConnection connectToSockAddr:port:]_block_invoke";
      v27 = 1024;
      v28 = 314;
      v29 = 2048;
      v30 = v4;
      v31 = 2048;
      v32 = v5;
      v33 = 2080;
      v34 = v7;
      v35 = 1024;
      v36 = v8;
      _os_log_impl(&dword_24E50C000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ptr [%p] socketPtr [%p] remote [%s] ************ requesting connection sequence (sa_family = %d)", buf, 0x40u);
    }
  }

  v9 = *(a1 + 32);
  if (v9[4])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 32);
        Name = sel_getName(*(a1 + 48));
        v14 = *(*(a1 + 32) + 8);
        if (v14)
        {
          v15 = [objc_msgSend_description(v14) UTF8String];
        }

        else
        {
          v15 = "<nil>";
        }

        *buf = 136316418;
        v24 = v10;
        v25 = 2080;
        v26 = "[GKDiscoveryPeerConnection connectToSockAddr:port:]_block_invoke";
        v27 = 1024;
        v28 = 317;
        v29 = 2048;
        v30 = v12;
        v31 = 2080;
        v32 = Name;
        v33 = 2080;
        v34 = v15;
        _os_log_impl(&dword_24E50C000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %p %s (%s): already connected!", buf, 0x3Au);
      }
    }
  }

  else
  {
    v16 = [v9 syncSetupNewSocket];
    v17 = *(a1 + 32);
    if (v16)
    {
      *(v17 + 24) = 0;
      [*(*(a1 + 32) + 32) tcpConnectSockAddr:*(a1 + 40) port:*(a1 + 56)];
      free(*(a1 + 40));
      [*(*(a1 + 32) + 136) fireIn:*(*(a1 + 32) + 144) fromNow:{micro(v18, v19)}];
      return;
    }

    v20 = *(v17 + 96);
    if (v20)
    {
      *(v17 + 96) = 0;
      if (*(*(a1 + 32) + 112))
      {
        v21 = *(*(a1 + 32) + 112);
      }

      else
      {
        v21 = MEMORY[0x277D85CD0];
      }

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __52__GKDiscoveryPeerConnection_connectToSockAddr_port___block_invoke_9;
      block[3] = &unk_279683388;
      block[4] = v20;
      dispatch_async(v21, block);
    }
  }

  free(*(a1 + 40));
}

uint64_t __52__GKDiscoveryPeerConnection_connectToSockAddr_port___block_invoke_9(uint64_t a1)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CCA450];
  v4[0] = @"Setup new socket failed (browser side)";
  [MEMORY[0x277CCA9B8] errorWithDomain:@"GKDiscoveryPeerConnection" code:-1 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v4, &v3, 1)}];
  return (*(*(a1 + 32) + 16))();
}

- (void)attachSocketDescriptor:(int)descriptor
{
  syncQueue = self->_syncQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__GKDiscoveryPeerConnection_attachSocketDescriptor___block_invoke;
  block[3] = &unk_2796834A0;
  if (!syncQueue)
  {
    syncQueue = MEMORY[0x277D85CD0];
  }

  block[4] = self;
  block[5] = a2;
  descriptorCopy = descriptor;
  dispatch_async(syncQueue, block);
}

void __52__GKDiscoveryPeerConnection_attachSocketDescriptor___block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      Name = sel_getName(*(a1 + 40));
      v6 = *(*(a1 + 32) + 8);
      if (v6)
      {
        v7 = [objc_msgSend_description(v6) UTF8String];
      }

      else
      {
        v7 = "<nil>";
      }

      *buf = 136316418;
      v23 = v2;
      v24 = 2080;
      v25 = "[GKDiscoveryPeerConnection attachSocketDescriptor:]_block_invoke";
      v26 = 1024;
      v27 = 347;
      v28 = 2048;
      v29 = v4;
      v30 = 2080;
      v31 = Name;
      v32 = 2080;
      v33 = v7;
      _os_log_impl(&dword_24E50C000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %p %s (%s): ************ responding connection sequence", buf, 0x3Au);
    }
  }

  v8 = *(a1 + 32);
  if (v8[4])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 32);
        v12 = *(v11 + 32);
        v13 = *(v11 + 8);
        if (v13)
        {
          v14 = [objc_msgSend_description(v13) UTF8String];
        }

        else
        {
          v14 = "<nil>";
        }

        *buf = 136316418;
        v23 = v9;
        v24 = 2080;
        v25 = "[GKDiscoveryPeerConnection attachSocketDescriptor:]_block_invoke";
        v26 = 1024;
        v27 = 349;
        v28 = 2048;
        v29 = v11;
        v30 = 2048;
        v31 = v12;
        v32 = 2080;
        v33 = v14;
        _os_log_impl(&dword_24E50C000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ptr [%p] socketPtr [%p] remote [%s] already connected!", buf, 0x3Au);
      }
    }
  }

  else
  {
    v15 = [v8 syncSetupNewSocket];
    v16 = *(a1 + 32);
    if (v15)
    {
      *(v16 + 24) = 0;
      v17 = [*(*(a1 + 32) + 32) tcpAttachSocketDescriptor:*(a1 + 48)];
      [*(*(a1 + 32) + 136) fireIn:*(*(a1 + 32) + 144) fromNow:{micro(v17, v18)}];
    }

    else
    {
      v19 = *(v16 + 96);
      if (v19)
      {
        *(v16 + 96) = 0;
        if (*(*(a1 + 32) + 112))
        {
          v20 = *(*(a1 + 32) + 112);
        }

        else
        {
          v20 = MEMORY[0x277D85CD0];
        }

        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __52__GKDiscoveryPeerConnection_attachSocketDescriptor___block_invoke_16;
        block[3] = &unk_279683388;
        block[4] = v19;
        dispatch_async(v20, block);
      }
    }
  }
}

uint64_t __52__GKDiscoveryPeerConnection_attachSocketDescriptor___block_invoke_16(uint64_t a1)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CCA450];
  v4[0] = @"Setup new socket failed (advertiser-side)";
  [MEMORY[0x277CCA9B8] errorWithDomain:@"GKDiscoveryPeerConnection" code:-1 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v4, &v3, 1)}];
  return (*(*(a1 + 32) + 16))();
}

- (BOOL)shouldDecideAboutConnection
{
  v12 = *MEMORY[0x277D85DE8];
  if ([(GKDiscoveryPeerConnection *)self localServiceName]&& [(GKDiscoveryPeerConnection *)self remoteServiceName])
  {
    if ([(NSString *)[(GKDiscoveryPeerConnection *)self remoteServiceName] isEqualToString:[(GKDiscoveryPeerConnection *)self localServiceName]])
    {
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
LABEL_10:
        LOBYTE(v3) = 0;
        return v3;
      }

      VRTraceErrorLogLevelToCSTR();
      v3 = os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR);
      if (v3)
      {
        [GKDiscoveryPeerConnection shouldDecideAboutConnection];
        goto LABEL_10;
      }
    }

    else
    {
      v4 = [MEMORY[0x277CCAB68] stringWithFormat:@"%@", -[GKDiscoveryPeerConnection localServiceName](self, "localServiceName")];
      v5 = [MEMORY[0x277CCAB68] stringWithFormat:@"%@", -[GKDiscoveryPeerConnection remoteServiceName](self, "remoteServiceName")];
      memset(md, 170, sizeof(md));
      memset(v10, 170, sizeof(v10));
      do
      {
        [v4 appendFormat:@"+%@", -[GKDiscoveryPeerConnection remoteServiceName](self, "remoteServiceName")];
        [v5 appendFormat:@"+%@", -[GKDiscoveryPeerConnection localServiceName](self, "localServiceName")];
        CC_MD5([v4 UTF8String], objc_msgSend(v4, "length"), md);
        CC_MD5([v5 UTF8String], objc_msgSend(v5, "length"), v10);
        v6 = bswap64(*md);
        v7 = bswap64(*v10);
        if (v6 != v7)
        {
          break;
        }

        v6 = bswap64(*&md[8]);
        v7 = bswap64(*&v10[8]);
      }

      while (v6 == v7);
      if (v6 < v7)
      {
        v8 = -1;
      }

      else
      {
        v8 = 1;
      }

      return v8 >> 31;
    }
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_10;
    }

    VRTraceErrorLogLevelToCSTR();
    v3 = os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR);
    if (v3)
    {
      [GKDiscoveryPeerConnection shouldDecideAboutConnection];
      goto LABEL_10;
    }
  }

  return v3;
}

- (void)syncSendMessage:(int)message data:(id)data withCompletionHandler:(id)handler
{
  v74 = *MEMORY[0x277D85DE8];
  v9 = objc_autoreleasePoolPush();
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x277CE5818];
    v12 = *MEMORY[0x277CE5818];
    if (*MEMORY[0x277CE5808] == 1)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        connectionSocket = self->_connectionSocket;
        remoteServiceName = self->_remoteServiceName;
        if (remoteServiceName)
        {
          uTF8String = [objc_msgSend_description(remoteServiceName) UTF8String];
        }

        else
        {
          uTF8String = "<nil>";
        }

        *buf = 136316930;
        v59 = v10;
        v60 = 2080;
        v61 = "[GKDiscoveryPeerConnection syncSendMessage:data:withCompletionHandler:]";
        v62 = 1024;
        v63 = 411;
        v64 = 2048;
        selfCopy5 = self;
        v66 = 2048;
        v67 = connectionSocket;
        v68 = 2080;
        v69 = uTF8String;
        v70 = 1024;
        messageCopy3 = message;
        v72 = 1024;
        v73 = [data length];
        _os_log_impl(&dword_24E50C000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ptr [%p] socketPtr [%p] remote [%s] send type [%u] data [%u]", buf, 0x46u);
      }
    }

    else if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v16 = self->_connectionSocket;
      v17 = self->_remoteServiceName;
      if (v17)
      {
        uTF8String2 = [objc_msgSend_description(v17) UTF8String];
      }

      else
      {
        uTF8String2 = "<nil>";
      }

      *buf = 136316930;
      v59 = v10;
      v60 = 2080;
      v61 = "[GKDiscoveryPeerConnection syncSendMessage:data:withCompletionHandler:]";
      v62 = 1024;
      v63 = 411;
      v64 = 2048;
      selfCopy5 = self;
      v66 = 2048;
      v67 = v16;
      v68 = 2080;
      v69 = uTF8String2;
      v70 = 1024;
      messageCopy3 = message;
      v72 = 1024;
      v73 = [data length];
      _os_log_debug_impl(&dword_24E50C000, v11, OS_LOG_TYPE_DEBUG, " [%s] %s:%d ptr [%p] socketPtr [%p] remote [%s] send type [%u] data [%u]", buf, 0x46u);
    }
  }

  if (message > 2199)
  {
    if (message != 2200 && message != 2300)
    {
      goto LABEL_22;
    }
  }

  else if (message != 2000 && message != 2100)
  {
LABEL_22:
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v26 = VRTraceErrorLogLevelToCSTR();
      v27 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        v38 = self->_connectionSocket;
        v39 = self->_remoteServiceName;
        if (v39)
        {
          uTF8String3 = [objc_msgSend_description(v39) UTF8String];
        }

        else
        {
          uTF8String3 = "<nil>";
        }

        *buf = 136316674;
        v59 = v26;
        v60 = 2080;
        v61 = "[GKDiscoveryPeerConnection syncSendMessage:data:withCompletionHandler:]";
        v62 = 1024;
        v63 = 426;
        v64 = 2048;
        selfCopy5 = self;
        v66 = 2048;
        v67 = v38;
        v68 = 2080;
        v69 = uTF8String3;
        v70 = 1024;
        messageCopy3 = message;
        _os_log_error_impl(&dword_24E50C000, v27, OS_LOG_TYPE_ERROR, " [%s] %s:%d ptr [%p] socketPtr [%p] remote [%s] can't send bad message type [%u]", buf, 0x40u);
      }
    }

    v56 = *MEMORY[0x277CCA450];
    v57 = @"Unable to send unknown message type";
    (*(handler + 2))(handler, [MEMORY[0x277CCA9B8] errorWithDomain:@"GKDiscoveryPeerConnection" code:-2 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", &v57, &v56, 1)}]);
    goto LABEL_36;
  }

  v19 = [handler copy];
  v20 = [data length];
  currentSequenceNumber = self->_currentSequenceNumber;
  self->_currentSequenceNumber = (currentSequenceNumber + 1) & 0x7FFFFFFF;
  v45[0] = BYTE1(message);
  v45[1] = message;
  v46 = 0;
  v47 = HIBYTE(v20);
  v48 = BYTE2(v20);
  v49 = BYTE1(v20);
  v50 = v20;
  v51 = 0;
  v52 = HIBYTE(currentSequenceNumber);
  v53 = BYTE2(currentSequenceNumber);
  v54 = BYTE1(currentSequenceNumber);
  v55 = currentSequenceNumber;
  v22 = crc32(0, v45, 0x10u);
  if ([data length])
  {
    v22 = crc32(v22, [data bytes], objc_msgSend(data, "length"));
  }

  v51 = bswap32(v22);
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __72__GKDiscoveryPeerConnection_syncSendMessage_data_withCompletionHandler___block_invoke;
  v43[3] = &unk_2796834C8;
  v44 = currentSequenceNumber;
  v43[4] = v19;
  v23 = [v43 copy];
  if (message == 2100 && !self->_connected)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v28 = VRTraceErrorLogLevelToCSTR();
      v29 = *MEMORY[0x277CE5818];
      v30 = *MEMORY[0x277CE5818];
      if (*MEMORY[0x277CE5808] == 1)
      {
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          v31 = self->_connectionSocket;
          v32 = self->_remoteServiceName;
          if (v32)
          {
            uTF8String4 = [objc_msgSend_description(v32) UTF8String];
          }

          else
          {
            uTF8String4 = "<nil>";
          }

          v37 = [data length];
          *buf = 136316674;
          v59 = v28;
          v60 = 2080;
          v61 = "[GKDiscoveryPeerConnection syncSendMessage:data:withCompletionHandler:]";
          v62 = 1024;
          v63 = 493;
          v64 = 2048;
          selfCopy5 = self;
          v66 = 2048;
          v67 = v31;
          v68 = 2080;
          v69 = uTF8String4;
          v70 = 1024;
          messageCopy3 = v37;
          _os_log_impl(&dword_24E50C000, v29, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ptr [%p] socketPtr [%p] remote [%s] still connecting - queueing data (%u) *", buf, 0x40u);
        }
      }

      else if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        v34 = self->_connectionSocket;
        v35 = self->_remoteServiceName;
        if (v35)
        {
          uTF8String5 = [objc_msgSend_description(v35) UTF8String];
        }

        else
        {
          uTF8String5 = "<nil>";
        }

        v41 = [data length];
        *buf = 136316674;
        v59 = v28;
        v60 = 2080;
        v61 = "[GKDiscoveryPeerConnection syncSendMessage:data:withCompletionHandler:]";
        v62 = 1024;
        v63 = 493;
        v64 = 2048;
        selfCopy5 = self;
        v66 = 2048;
        v67 = v34;
        v68 = 2080;
        v69 = uTF8String5;
        v70 = 1024;
        messageCopy3 = v41;
        _os_log_debug_impl(&dword_24E50C000, v29, OS_LOG_TYPE_DEBUG, " [%s] %s:%d ptr [%p] socketPtr [%p] remote [%s] still connecting - queueing data (%u) *", buf, 0x40u);
      }
    }

    [(NSMutableArray *)self->_messageReceiptHandlerHoldingQueue addObject:v23];
    [(NSMutableData *)self->_dataToSendHoldingQueue appendBytes:v45 length:16];
    [(NSMutableData *)self->_dataToSendHoldingQueue appendData:data];
  }

  else
  {
    [(NSMutableArray *)self->_messageReceiptHandlerList addObject:v23];
    v24 = [MEMORY[0x277CBEB28] dataWithBytes:v45 length:16];
    [v24 appendData:data];
    v25 = self->_connectionSocket;
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __72__GKDiscoveryPeerConnection_syncSendMessage_data_withCompletionHandler___block_invoke_34;
    v42[3] = &unk_279683450;
    v42[4] = self;
    [(GKAsyncSocket *)v25 sendData:v24 withCompletionHandler:v42];
  }

LABEL_36:
  objc_autoreleasePoolPop(v9);
}

BOOL __72__GKDiscoveryPeerConnection_syncSendMessage_data_withCompletionHandler___block_invoke(uint64_t a1, int a2)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  if (v4)
  {
    if (v3 == a2)
    {
      (*(v4 + 16))(*(a1 + 32), 0);
    }

    else
    {
      v6 = *MEMORY[0x277CCA450];
      v7[0] = @"Receipt does not match";
      (*(v4 + 16))(v4, [MEMORY[0x277CCA9B8] errorWithDomain:@"GKDiscoveryPeerConnection" code:-3 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v7, &v6, 1)}]);
    }
  }

  return v3 == a2;
}

void __72__GKDiscoveryPeerConnection_syncSendMessage_data_withCompletionHandler___block_invoke_34(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        v6 = *(a1 + 32);
        v7 = *(v6 + 32);
        v8 = *(v6 + 8);
        if (v8)
        {
          v9 = [objc_msgSend_description(v8) UTF8String];
        }

        else
        {
          v9 = "<nil>";
        }

        v10 = 136316674;
        v11 = v4;
        v12 = 2080;
        v13 = "[GKDiscoveryPeerConnection syncSendMessage:data:withCompletionHandler:]_block_invoke";
        v14 = 1024;
        v15 = 511;
        v16 = 2048;
        v17 = v6;
        v18 = 2048;
        v19 = v7;
        v20 = 2080;
        v21 = v9;
        v22 = 2080;
        v23 = [objc_msgSend_description(a2) UTF8String];
        _os_log_error_impl(&dword_24E50C000, v5, OS_LOG_TYPE_ERROR, " [%s] %s:%d ptr [%p] socketPtr [%p] remote [%s] sendData completed with error [%s]", &v10, 0x44u);
      }
    }
  }
}

- (void)syncSendHello
{
  v27 = *MEMORY[0x277D85DE8];
  uTF8String = [(NSString *)self->_localServiceName UTF8String];
  if (uTF8String)
  {
    v4 = uTF8String;
    v5 = strlen(uTF8String);
    v6 = v5 + 1;
    if (v5 < 0xFFFF)
    {
      v13 = 100663296;
      LOBYTE(v14) = (v5 + 1) >> 8;
      BYTE1(v14) = v5 + 1;
      v7 = [MEMORY[0x277CBEB28] dataWithBytes:&v13 length:6];
      [v7 appendBytes:v4 length:v6];
      [(GKDiscoveryPeerConnection *)self syncSendMessage:2000 data:v7 withCompletionHandler:0];
      return;
    }
  }

  else
  {
    LODWORD(v6) = 0;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
    {
      connectionSocket = self->_connectionSocket;
      remoteServiceName = self->_remoteServiceName;
      if (remoteServiceName)
      {
        uTF8String2 = [objc_msgSend_description(remoteServiceName) UTF8String];
      }

      else
      {
        uTF8String2 = "<nil>";
      }

      v13 = 136316674;
      v14 = v8;
      v15 = 2080;
      v16 = "[GKDiscoveryPeerConnection syncSendHello]";
      v17 = 1024;
      v18 = 525;
      v19 = 2048;
      selfCopy = self;
      v21 = 2048;
      v22 = connectionSocket;
      v23 = 2080;
      v24 = uTF8String2;
      v25 = 1024;
      v26 = v6;
      _os_log_error_impl(&dword_24E50C000, v9, OS_LOG_TYPE_ERROR, " [%s] %s:%d ptr [%p] socketPtr [%p] remote [%s] bad serviceName [%d] ??", &v13, 0x40u);
    }
  }

  [(GKDiscoveryPeerConnection *)self syncCloseConnectionNow];
}

- (void)syncAcceptedConnection
{
  v40 = *MEMORY[0x277D85DE8];
  connectionSocket = self->_connectionSocket;
  dataToSendHoldingQueue = self->_dataToSendHoldingQueue;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __51__GKDiscoveryPeerConnection_syncAcceptedConnection__block_invoke;
  v26[3] = &unk_279683450;
  v26[4] = self;
  [(GKAsyncSocket *)connectionSocket sendData:dataToSendHoldingQueue withCompletionHandler:v26];
  [(NSMutableArray *)self->_messageReceiptHandlerList addObjectsFromArray:self->_messageReceiptHandlerHoldingQueue];
  [(NSMutableArray *)self->_messageReceiptHandlerHoldingQueue removeAllObjects];
  ErrorLogLevelForModule = [(NSMutableArray *)self->_receivedDataHoldingQueue count];
  if (ErrorLogLevelForModule)
  {
    receiveDataHandler = self->_receiveDataHandler;
    if (receiveDataHandler)
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      receivedDataHoldingQueue = self->_receivedDataHoldingQueue;
      ErrorLogLevelForModule = [(NSMutableArray *)receivedDataHoldingQueue countByEnumeratingWithState:&v22 objects:v39 count:16];
      if (ErrorLogLevelForModule)
      {
        v9 = ErrorLogLevelForModule;
        v10 = *v23;
        v11 = MEMORY[0x277D85CD0];
        do
        {
          v12 = 0;
          do
          {
            if (*v23 != v10)
            {
              objc_enumerationMutation(receivedDataHoldingQueue);
            }

            v13 = *(*(&v22 + 1) + 8 * v12);
            if (self->_targetQueue)
            {
              targetQueue = self->_targetQueue;
            }

            else
            {
              targetQueue = v11;
            }

            v21[0] = MEMORY[0x277D85DD0];
            v21[1] = 3221225472;
            v21[2] = __51__GKDiscoveryPeerConnection_syncAcceptedConnection__block_invoke_35;
            v21[3] = &unk_2796834F0;
            v21[4] = v13;
            v21[5] = receiveDataHandler;
            dispatch_async(targetQueue, v21);
            ++v12;
          }

          while (v9 != v12);
          ErrorLogLevelForModule = [(NSMutableArray *)receivedDataHoldingQueue countByEnumeratingWithState:&v22 objects:v39 count:16];
          v9 = ErrorLogLevelForModule;
        }

        while (ErrorLogLevelForModule);
      }
    }

    else
    {
      ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
      if (ErrorLogLevelForModule >= 5)
      {
        v15 = VRTraceErrorLogLevelToCSTR();
        v16 = *MEMORY[0x277CE5818];
        ErrorLogLevelForModule = os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT);
        if (ErrorLogLevelForModule)
        {
          v17 = self->_connectionSocket;
          remoteServiceName = self->_remoteServiceName;
          if (remoteServiceName)
          {
            uTF8String = [objc_msgSend_description(remoteServiceName) UTF8String];
          }

          else
          {
            uTF8String = "<nil>";
          }

          *buf = 136316418;
          v28 = v15;
          v29 = 2080;
          v30 = "[GKDiscoveryPeerConnection syncAcceptedConnection]";
          v31 = 1024;
          v32 = 569;
          v33 = 2048;
          selfCopy = self;
          v35 = 2048;
          v36 = v17;
          v37 = 2080;
          v38 = uTF8String;
          _os_log_impl(&dword_24E50C000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ptr [%p] socketPtr [%p] remote [%s] receiveDataHandler is nil", buf, 0x3Au);
        }
      }
    }
  }

  self->_connected = 1;
  v20 = micro(ErrorLogLevelForModule, v6);
  [(GKSimpleTimer *)self->_heartbeatTimer fireIn:self->_heartbeatIntervalInSeconds fromNow:v20];
  [(GKSimpleTimer *)self->_heartbeatTimeoutTimer fireIn:self->_heartbeatIntervalInSeconds + self->_heartbeatIntervalInSeconds fromNow:v20];
}

void __51__GKDiscoveryPeerConnection_syncAcceptedConnection__block_invoke(uint64_t result, uint64_t a2)
{
  if (a2 && VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
    {
      __51__GKDiscoveryPeerConnection_syncAcceptedConnection__block_invoke_cold_1(v3, result);
    }
  }
}

- (void)syncSendMessageReceipt:(int)receipt sequenceNumber:(unsigned int)number
{
  v19 = *MEMORY[0x277D85DE8];
  buf[0] = BYTE1(receipt);
  buf[1] = receipt;
  v13 = 256;
  v14 = 0;
  v15 = HIBYTE(number);
  v16 = BYTE2(number);
  v17 = BYTE1(number);
  numberCopy = number;
  HIDWORD(v14) = bswap32(crc32(0, buf, 0x10u));
  v7 = [MEMORY[0x277CBEA90] dataWithBytes:buf length:16];
  connectionSocket = self->_connectionSocket;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __67__GKDiscoveryPeerConnection_syncSendMessageReceipt_sequenceNumber___block_invoke;
  v9[3] = &unk_279683518;
  v9[4] = self;
  receiptCopy = receipt;
  numberCopy2 = number;
  [(GKAsyncSocket *)connectionSocket sendData:v7 withCompletionHandler:v9];
}

void __67__GKDiscoveryPeerConnection_syncSendMessageReceipt_sequenceNumber___block_invoke(uint64_t result, uint64_t a2)
{
  if (a2 && VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
    {
      __67__GKDiscoveryPeerConnection_syncSendMessageReceipt_sequenceNumber___block_invoke_cold_1(v3, result);
    }
  }
}

- (void)syncProcessMessage:(int)message data:(id)data sequenceNumber:(unsigned int)number
{
  v5 = *&number;
  v109 = *MEMORY[0x277D85DE8];
  v9 = objc_autoreleasePoolPush();
  v11 = v9;
  if (message <= 2199)
  {
    if (message != 2000)
    {
      if (message == 2100)
      {
        v12 = micro(v9, v10);
        [(GKSimpleTimer *)self->_timeoutTimer fireIn:self->_connectionTimeoutInSeconds fromNow:v12];
        [(GKDiscoveryPeerConnection *)self syncSendMessageReceipt:2100 sequenceNumber:v5];
        v80[0] = MEMORY[0x277D85DD0];
        v80[1] = 3221225472;
        v80[2] = __68__GKDiscoveryPeerConnection_syncProcessMessage_data_sequenceNumber___block_invoke_4;
        v80[3] = &unk_279683590;
        v80[4] = data;
        *&v80[5] = v12;
        if (!self->_connected)
        {
          -[NSMutableArray addObject:](self->_receivedDataHoldingQueue, "addObject:", [v80 copy]);
          goto LABEL_78;
        }

        receiveDataHandler = self->_receiveDataHandler;
        if (receiveDataHandler)
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
          block[2] = __68__GKDiscoveryPeerConnection_syncProcessMessage_data_sequenceNumber___block_invoke_5;
          block[3] = &unk_2796834F0;
          block[4] = v80;
          block[5] = receiveDataHandler;
          dispatch_async(targetQueue, block);
          goto LABEL_78;
        }

        if (VRTraceGetErrorLogLevelForModule() < 5)
        {
          goto LABEL_78;
        }

        v39 = VRTraceErrorLogLevelToCSTR();
        v40 = *MEMORY[0x277CE5818];
        if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_78;
        }

        connectionSocket = self->_connectionSocket;
        remoteServiceName = self->_remoteServiceName;
        if (remoteServiceName)
        {
          uTF8String = [objc_msgSend_description(remoteServiceName) UTF8String];
        }

        else
        {
          uTF8String = "<nil>";
        }

        *buf = 136316418;
        v84 = v39;
        v85 = 2080;
        v86 = "[GKDiscoveryPeerConnection syncProcessMessage:data:sequenceNumber:]";
        v87 = 1024;
        v88 = 725;
        v89 = 2048;
        selfCopy8 = self;
        v91 = 2048;
        v92 = connectionSocket;
        v93 = 2080;
        v94 = uTF8String;
        v47 = " [%s] %s:%d ptr [%p] socketPtr [%p] remote [%s] receiveDataHandler is nil";
        v48 = v40;
        v49 = 58;
LABEL_41:
        _os_log_impl(&dword_24E50C000, v48, OS_LOG_TYPE_DEFAULT, v47, buf, v49);
        goto LABEL_78;
      }

LABEL_13:
      if (VRTraceGetErrorLogLevelForModule() < 5)
      {
        goto LABEL_78;
      }

      v15 = VRTraceErrorLogLevelToCSTR();
      v16 = *MEMORY[0x277CE5818];
      if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_78;
      }

      v17 = self->_connectionSocket;
      v18 = self->_remoteServiceName;
      if (v18)
      {
        uTF8String2 = [objc_msgSend_description(v18) UTF8String];
      }

      else
      {
        uTF8String2 = "<nil>";
      }

      *buf = 136316930;
      v84 = v15;
      v85 = 2080;
      v86 = "[GKDiscoveryPeerConnection syncProcessMessage:data:sequenceNumber:]";
      v87 = 1024;
      v88 = 773;
      v89 = 2048;
      selfCopy8 = self;
      v91 = 2048;
      v92 = v17;
      v93 = 2080;
      v94 = uTF8String2;
      v95 = 1024;
      messageCopy = message;
      v97 = 1024;
      v98 = [data length];
      v47 = " [%s] %s:%d ptr [%p] socketPtr [%p] remote [%s] unrecognized message %u (body size=%u)";
      v48 = v16;
      v49 = 70;
      goto LABEL_41;
    }

    if ([data length] <= 5)
    {
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_77;
      }

      v20 = VRTraceErrorLogLevelToCSTR();
      v21 = *MEMORY[0x277CE5818];
      if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_77;
      }

      v22 = self->_connectionSocket;
      v23 = self->_remoteServiceName;
      if (v23)
      {
        uTF8String3 = [objc_msgSend_description(v23) UTF8String];
      }

      else
      {
        uTF8String3 = "<nil>";
      }

      *buf = 136316674;
      v84 = v20;
      v85 = 2080;
      v86 = "[GKDiscoveryPeerConnection syncProcessMessage:data:sequenceNumber:]";
      v87 = 1024;
      v88 = 629;
      v89 = 2048;
      selfCopy8 = self;
      v91 = 2048;
      v92 = v22;
      v93 = 2080;
      v94 = uTF8String3;
      v95 = 1024;
      messageCopy = [data length];
      v67 = " [%s] %s:%d ptr [%p] socketPtr [%p] remote [%s] hello body too short: %u";
      v68 = v21;
      v69 = 64;
LABEL_76:
      _os_log_error_impl(&dword_24E50C000, v68, OS_LOG_TYPE_ERROR, v67, buf, v69);
LABEL_77:
      [(GKDiscoveryPeerConnection *)self syncCloseConnectionNow];
      goto LABEL_78;
    }

    bytes = [data bytes];
    v31 = *bytes;
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v32 = bswap32(v31);
      v33 = VRTraceErrorLogLevelToCSTR();
      v34 = *MEMORY[0x277CE5818];
      v35 = *MEMORY[0x277CE5818];
      if (*MEMORY[0x277CE5808] == 1)
      {
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          v36 = self->_connectionSocket;
          v37 = self->_remoteServiceName;
          if (v37)
          {
            uTF8String4 = [objc_msgSend_description(v37) UTF8String];
          }

          else
          {
            uTF8String4 = "<nil>";
          }

          *buf = 136316674;
          v84 = v33;
          v85 = 2080;
          v86 = "[GKDiscoveryPeerConnection syncProcessMessage:data:sequenceNumber:]";
          v87 = 1024;
          v88 = 637;
          v89 = 2048;
          selfCopy8 = self;
          v91 = 2048;
          v92 = v36;
          v93 = 2080;
          v94 = uTF8String4;
          v95 = 1024;
          messageCopy = v32;
          _os_log_impl(&dword_24E50C000, v34, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ptr [%p] socketPtr [%p] remote [%s] \t got Hello (flags = %08x)", buf, 0x40u);
        }
      }

      else if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
      {
        v44 = self->_connectionSocket;
        v45 = self->_remoteServiceName;
        if (v45)
        {
          uTF8String5 = [objc_msgSend_description(v45) UTF8String];
        }

        else
        {
          uTF8String5 = "<nil>";
        }

        *buf = 136316674;
        v84 = v33;
        v85 = 2080;
        v86 = "[GKDiscoveryPeerConnection syncProcessMessage:data:sequenceNumber:]";
        v87 = 1024;
        v88 = 637;
        v89 = 2048;
        selfCopy8 = self;
        v91 = 2048;
        v92 = v44;
        v93 = 2080;
        v94 = uTF8String5;
        v95 = 1024;
        messageCopy = v32;
        _os_log_debug_impl(&dword_24E50C000, v34, OS_LOG_TYPE_DEBUG, " [%s] %s:%d ptr [%p] socketPtr [%p] remote [%s] \t got Hello (flags = %08x)", buf, 0x40u);
      }
    }

    v54 = __rev16(*(bytes + 4));
    if ([data length] < (v54 + 6))
    {
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_77;
      }

      v55 = VRTraceErrorLogLevelToCSTR();
      v56 = *MEMORY[0x277CE5818];
      if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_77;
      }

      v57 = self->_connectionSocket;
      v58 = self->_remoteServiceName;
      if (v58)
      {
        uTF8String6 = [objc_msgSend_description(v58) UTF8String];
      }

      else
      {
        uTF8String6 = "<nil>";
      }

      v70 = [data length];
      *buf = 136316930;
      v84 = v55;
      v85 = 2080;
      v86 = "[GKDiscoveryPeerConnection syncProcessMessage:data:sequenceNumber:]";
      v87 = 1024;
      v88 = 641;
      v89 = 2048;
      selfCopy8 = self;
      v91 = 2048;
      v92 = v57;
      v93 = 2080;
      v94 = uTF8String6;
      v95 = 1024;
      messageCopy = v54;
      v97 = 1024;
      v98 = v70;
      v67 = " [%s] %s:%d ptr [%p] socketPtr [%p] remote [%s] hello body not enough for service name: %u+6 > %u";
      v68 = v56;
      v69 = 70;
      goto LABEL_76;
    }

    v60 = bytes + 6;
    if (*(bytes + 6 + [data length] - 7))
    {
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_77;
      }

      v61 = VRTraceErrorLogLevelToCSTR();
      v62 = *MEMORY[0x277CE5818];
      if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_77;
      }

      v63 = self->_connectionSocket;
      v64 = self->_remoteServiceName;
      if (v64)
      {
        uTF8String7 = [objc_msgSend_description(v64) UTF8String];
      }

      else
      {
        uTF8String7 = "<nil>";
      }

      v71 = *(bytes + 6);
      v72 = *(bytes + 7);
      v73 = *(bytes + 8);
      v74 = *(v60 + v54 - 3);
      v75 = *(v60 + v54 - 2);
      v76 = *(v60 + v54 - 1);
      *buf = 136318210;
      v84 = v61;
      v85 = 2080;
      v86 = "[GKDiscoveryPeerConnection syncProcessMessage:data:sequenceNumber:]";
      v87 = 1024;
      v88 = 651;
      v89 = 2048;
      selfCopy8 = self;
      v91 = 2048;
      v92 = v63;
      v93 = 2080;
      v94 = uTF8String7;
      v95 = 1024;
      messageCopy = v71;
      v97 = 1024;
      v98 = v72;
      v99 = 1024;
      v100 = v73;
      v101 = 1024;
      v102 = v74;
      v103 = 1024;
      v104 = v75;
      v105 = 1024;
      v106 = v76;
      v107 = 1024;
      v108 = v54;
      v67 = " [%s] %s:%d ptr [%p] socketPtr [%p] remote [%s] remote name [%c%c%c..%c%c%c] not properly terminated at length=%u";
      v68 = v62;
      v69 = 100;
      goto LABEL_76;
    }

    -[GKDiscoveryPeerConnection setRemoteServiceName:](self, "setRemoteServiceName:", [MEMORY[0x277CCACA8] stringWithUTF8String:bytes + 6]);
    [(GKDiscoveryPeerConnection *)self syncSendMessageReceipt:2000 sequenceNumber:v5];
    if (![(GKDiscoveryPeerConnection *)self shouldDecideAboutConnection])
    {
      goto LABEL_78;
    }

    v82[0] = MEMORY[0x277D85DD0];
    v82[1] = 3221225472;
    v82[2] = __68__GKDiscoveryPeerConnection_syncProcessMessage_data_sequenceNumber___block_invoke;
    v82[3] = &unk_279683540;
    v82[4] = self;
    v66 = [v82 copy];
    connectedHandler = self->_connectedHandler;
    if (!connectedHandler)
    {
      goto LABEL_78;
    }

    self->_connectedHandler = 0;
    v52 = MEMORY[0x277D85CD0];
    if (self->_targetQueue)
    {
      v52 = self->_targetQueue;
    }

    v81[0] = MEMORY[0x277D85DD0];
    v81[1] = 3221225472;
    v81[2] = __68__GKDiscoveryPeerConnection_syncProcessMessage_data_sequenceNumber___block_invoke_3;
    v81[3] = &unk_279683568;
    v81[4] = self;
    v81[5] = connectedHandler;
    v81[6] = v66;
    v53 = v81;
LABEL_48:
    dispatch_async(v52, v53);

    goto LABEL_78;
  }

  if (message != 2200)
  {
    if (message == 2300)
    {
      [(GKDiscoveryPeerConnection *)self syncSendMessageReceipt:2300 sequenceNumber:v5];
      goto LABEL_78;
    }

    goto LABEL_13;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v25 = VRTraceErrorLogLevelToCSTR();
    v26 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v27 = self->_connectionSocket;
      v28 = self->_remoteServiceName;
      if (v28)
      {
        uTF8String8 = [objc_msgSend_description(v28) UTF8String];
      }

      else
      {
        uTF8String8 = "<nil>";
      }

      *buf = 136316418;
      v84 = v25;
      v85 = 2080;
      v86 = "[GKDiscoveryPeerConnection syncProcessMessage:data:sequenceNumber:]";
      v87 = 1024;
      v88 = 732;
      v89 = 2048;
      selfCopy8 = self;
      v91 = 2048;
      v92 = v27;
      v93 = 2080;
      v94 = uTF8String8;
      _os_log_impl(&dword_24E50C000, v26, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ptr [%p] socketPtr [%p] remote [%s] got Accept", buf, 0x3Au);
    }
  }

  [(GKDiscoveryPeerConnection *)self syncSendMessageReceipt:2200 sequenceNumber:v5];
  v78[0] = MEMORY[0x277D85DD0];
  v78[1] = 3221225472;
  v78[2] = __68__GKDiscoveryPeerConnection_syncProcessMessage_data_sequenceNumber___block_invoke_45;
  v78[3] = &unk_279683540;
  v78[4] = self;
  v50 = [v78 copy];
  connectedHandler = self->_connectedHandler;
  if (connectedHandler)
  {
    self->_connectedHandler = 0;
    v52 = MEMORY[0x277D85CD0];
    if (self->_targetQueue)
    {
      v52 = self->_targetQueue;
    }

    v77[0] = MEMORY[0x277D85DD0];
    v77[1] = 3221225472;
    v77[2] = __68__GKDiscoveryPeerConnection_syncProcessMessage_data_sequenceNumber___block_invoke_4_48;
    v77[3] = &unk_279683568;
    v77[4] = self;
    v77[5] = connectedHandler;
    v77[6] = v50;
    v53 = v77;
    goto LABEL_48;
  }

LABEL_78:
  objc_autoreleasePoolPop(v11);
}

void __68__GKDiscoveryPeerConnection_syncProcessMessage_data_sequenceNumber___block_invoke(uint64_t a1, int a2)
{
  v35 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = *(v6 + 32);
      v8 = *(v6 + 8);
      if (v8)
      {
        v9 = [objc_msgSend_description(v8) UTF8String];
      }

      else
      {
        v9 = "<nil>";
      }

      v10 = "declines";
      *buf = 136316930;
      v20 = v4;
      v22 = "[GKDiscoveryPeerConnection syncProcessMessage:data:sequenceNumber:]_block_invoke";
      v23 = 1024;
      v11 = "close connection";
      v24 = 672;
      v26 = v6;
      v21 = 2080;
      if (a2)
      {
        v10 = "approves";
      }

      v25 = 2048;
      if (a2)
      {
        v11 = "accept connection";
      }

      v27 = 2048;
      v28 = v7;
      v29 = 2080;
      v30 = v9;
      v31 = 2080;
      v32 = v10;
      v33 = 2080;
      v34 = v11;
      _os_log_impl(&dword_24E50C000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ptr [%p] socketPtr [%p] remote [%s] peer %s. Will %s", buf, 0x4Eu);
    }
  }

  v12 = *(a1 + 32);
  v13 = *(v12 + 104);
  if (a2)
  {
    v14 = v18;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v15 = __68__GKDiscoveryPeerConnection_syncProcessMessage_data_sequenceNumber___block_invoke_42;
  }

  else
  {
    v14 = v17;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v15 = __68__GKDiscoveryPeerConnection_syncProcessMessage_data_sequenceNumber___block_invoke_2;
  }

  if (v13)
  {
    v16 = v13;
  }

  else
  {
    v16 = MEMORY[0x277D85CD0];
  }

  v14[2] = v15;
  v14[3] = &unk_279682BA8;
  v14[4] = v12;
  dispatch_async(v16, v14);
}

uint64_t __68__GKDiscoveryPeerConnection_syncProcessMessage_data_sequenceNumber___block_invoke_42(uint64_t a1)
{
  [*(a1 + 32) syncSendAccept];
  v2 = *(a1 + 32);

  return [v2 syncAcceptedConnection];
}

void __68__GKDiscoveryPeerConnection_syncProcessMessage_data_sequenceNumber___block_invoke_45(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 104);
  if (a2)
  {
    v4 = v8;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v5 = __68__GKDiscoveryPeerConnection_syncProcessMessage_data_sequenceNumber___block_invoke_2_46;
  }

  else
  {
    v4 = v7;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v5 = __68__GKDiscoveryPeerConnection_syncProcessMessage_data_sequenceNumber___block_invoke_3_47;
  }

  if (v3)
  {
    v6 = v3;
  }

  else
  {
    v6 = MEMORY[0x277D85CD0];
  }

  v4[2] = v5;
  v4[3] = &unk_279682BA8;
  v4[4] = v2;
  dispatch_async(v6, v4);
}

- (void)timeout:(id)timeout
{
  syncQueue = self->_syncQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __37__GKDiscoveryPeerConnection_timeout___block_invoke;
  v4[3] = &unk_279682BF0;
  if (!syncQueue)
  {
    syncQueue = MEMORY[0x277D85CD0];
  }

  v4[4] = timeout;
  v4[5] = self;
  dispatch_async(syncQueue, v4);
}

void __37__GKDiscoveryPeerConnection_timeout___block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = (a1 + 40);
  v2 = *(a1 + 40);
  v4 = *(v3 - 1);
  if (v4 != v2[15])
  {
    if (v4 == v2[16])
    {
      if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        v13 = VRTraceErrorLogLevelToCSTR();
        v14 = *MEMORY[0x277CE5818];
        v15 = *MEMORY[0x277CE5818];
        if (*MEMORY[0x277CE5808] != 1)
        {
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            __37__GKDiscoveryPeerConnection_timeout___block_invoke_cold_2(v13, v3);
          }

          goto LABEL_32;
        }

        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = *v3;
          v17 = *(*v3 + 4);
          v18 = *(*v3 + 1);
          if (v18)
          {
            v19 = [objc_msgSend_description(v18) UTF8String];
          }

          else
          {
            v19 = "<nil>";
          }

          *v30 = 136316418;
          *&v30[4] = v13;
          *&v30[12] = 2080;
          *&v30[14] = "[GKDiscoveryPeerConnection timeout:]_block_invoke";
          *&v30[22] = 1024;
          LODWORD(v31) = 787;
          WORD2(v31) = 2048;
          *(&v31 + 6) = v16;
          HIWORD(v31) = 2048;
          v32 = v17;
          *v33 = 2080;
          *&v33[2] = v19;
          v29 = " [%s] %s:%d ptr [%p] socketPtr [%p] remote [%s] heartbeat timeout timer hit";
          goto LABEL_31;
        }
      }
    }

    else
    {
      v5 = v2[17];
      ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
      if (v4 != v5)
      {
        if (ErrorLogLevelForModule >= 7)
        {
          v7 = VRTraceErrorLogLevelToCSTR();
          v8 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            v9 = *v3;
            v10 = *(*v3 + 4);
            v11 = *(*v3 + 1);
            if (v11)
            {
              v12 = [objc_msgSend_description(v11) UTF8String];
            }

            else
            {
              v12 = "<nil>";
            }

            v26 = *(a1 + 32);
            v27 = *(*v3 + 15);
            v28 = *(*v3 + 17);
            *v30 = 136317186;
            *&v30[4] = v7;
            *&v30[12] = 2080;
            *&v30[14] = "[GKDiscoveryPeerConnection timeout:]_block_invoke";
            *&v30[22] = 1024;
            LODWORD(v31) = 793;
            WORD2(v31) = 2048;
            *(&v31 + 6) = v9;
            HIWORD(v31) = 2048;
            v32 = v10;
            *v33 = 2080;
            *&v33[2] = v12;
            *&v33[10] = 2048;
            *&v33[12] = v26;
            v34 = 2048;
            v35 = v27;
            v36 = 2048;
            v37 = v28;
            _os_log_impl(&dword_24E50C000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ptr [%p] socketPtr [%p] remote [%s] unknown timer[%p] hit (heartbeat[%p] timerout[%p]) ?", v30, 0x58u);
          }
        }

        return;
      }

      if (ErrorLogLevelForModule >= 8)
      {
        v20 = VRTraceErrorLogLevelToCSTR();
        v14 = *MEMORY[0x277CE5818];
        v21 = *MEMORY[0x277CE5818];
        if (*MEMORY[0x277CE5808] != 1)
        {
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
          {
            __37__GKDiscoveryPeerConnection_timeout___block_invoke_cold_1(v20, v3);
          }

          goto LABEL_32;
        }

        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = *v3;
          v23 = *(*v3 + 4);
          v24 = *(*v3 + 1);
          if (v24)
          {
            v25 = [objc_msgSend_description(v24) UTF8String];
          }

          else
          {
            v25 = "<nil>";
          }

          *v30 = 136316418;
          *&v30[4] = v20;
          *&v30[12] = 2080;
          *&v30[14] = "[GKDiscoveryPeerConnection timeout:]_block_invoke";
          *&v30[22] = 1024;
          LODWORD(v31) = 790;
          WORD2(v31) = 2048;
          *(&v31 + 6) = v22;
          HIWORD(v31) = 2048;
          v32 = v23;
          *v33 = 2080;
          *&v33[2] = v25;
          v29 = " [%s] %s:%d ptr [%p] socketPtr [%p] remote [%s] timeout timer hit";
LABEL_31:
          _os_log_impl(&dword_24E50C000, v14, OS_LOG_TYPE_DEFAULT, v29, v30, 0x3Au);
        }
      }
    }

LABEL_32:
    [*v3 syncCloseConnectionNow];
    return;
  }

  [v2 syncSendMessage:2300 data:0 withCompletionHandler:0];
}

- (void)syncReceivedData:(id)data error:(id)error
{
  v114 = *MEMORY[0x277D85DE8];
  v7 = objc_autoreleasePoolPush();
  v9 = v7;
  if (!data)
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_57;
    }

    v14 = VRTraceErrorLogLevelToCSTR();
    v15 = *MEMORY[0x277CE5818];
    if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_57;
    }

    connectionSocket = self->_connectionSocket;
    remoteServiceName = self->_remoteServiceName;
    if (remoteServiceName)
    {
      uTF8String = [objc_msgSend_description(remoteServiceName) UTF8String];
      if (error)
      {
LABEL_9:
        uTF8String2 = [objc_msgSend_description(error) UTF8String];
LABEL_56:
        *buf = 136316674;
        v91 = v14;
        v92 = 2080;
        v93 = "[GKDiscoveryPeerConnection syncReceivedData:error:]";
        v94 = 1024;
        v95 = 938;
        v96 = 2048;
        selfCopy = self;
        v98 = 2048;
        v99 = connectionSocket;
        v100 = 2080;
        v101 = uTF8String;
        v102 = 2080;
        *v103 = uTF8String2;
        _os_log_impl(&dword_24E50C000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ptr [%p] socketPtr [%p] remote [%s] end of stream: %s", buf, 0x44u);
LABEL_57:
        selfCopy2 = self;
LABEL_82:
        [(GKDiscoveryPeerConnection *)selfCopy2 syncCloseConnectionNow];
        goto LABEL_83;
      }
    }

    else
    {
      uTF8String = "<nil>";
      if (error)
      {
        goto LABEL_9;
      }
    }

    uTF8String2 = "<nil>";
    goto LABEL_56;
  }

  context = v7;
  v10 = micro(v7, v8);
  [(GKSimpleTimer *)self->_heartbeatTimer fireIn:self->_heartbeatIntervalInSeconds fromNow:v10];
  [(GKSimpleTimer *)self->_heartbeatTimeoutTimer fireIn:self->_heartbeatIntervalInSeconds + self->_heartbeatIntervalInSeconds fromNow:v10];
  [(NSMutableData *)self->_dataReceived appendData:data];
  bytes = [(NSMutableData *)self->_dataReceived bytes];
  v12 = [(NSMutableData *)self->_dataReceived length];
  selfCopy3 = self;
  if (v12 >= 0x10)
  {
    p_messageReceiptHandlerHoldingQueue = &self->_messageReceiptHandlerHoldingQueue;
    p_messageReceiptHandlerList = &self->_messageReceiptHandlerList;
    while (1)
    {
      v20 = *bytes;
      v21 = *(bytes + 3);
      v22 = *(bytes + 2);
      v23 = bswap32(*(bytes + 1));
      v24 = *(bytes + 12);
      v25 = *(bytes + 13);
      v26 = *(bytes + 14);
      v27 = *(bytes + 15);
      if (+[GKDiscoveryPeerConnection receiveDataLimit]< v23)
      {
        v9 = context;
        self = selfCopy3;
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v44 = VRTraceErrorLogLevelToCSTR();
          v45 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
          {
            v46 = selfCopy3->_connectionSocket;
            v47 = selfCopy3->_remoteServiceName;
            if (v47)
            {
              uTF8String3 = [objc_msgSend_description(v47) UTF8String];
            }

            else
            {
              uTF8String3 = "<nil>";
            }

            v75 = +[GKDiscoveryPeerConnection receiveDataLimit];
            *buf = 136316930;
            v91 = v44;
            v92 = 2080;
            v93 = "[GKDiscoveryPeerConnection syncReceivedData:error:]";
            v94 = 1024;
            v95 = 851;
            v96 = 2048;
            selfCopy = selfCopy3;
            v98 = 2048;
            v99 = v46;
            v100 = 2080;
            v101 = uTF8String3;
            v102 = 1024;
            *v103 = v23;
            *&v103[4] = 1024;
            *&v103[6] = v75;
            _os_log_error_impl(&dword_24E50C000, v45, OS_LOG_TYPE_ERROR, " [%s] %s:%d ptr [%p] socketPtr [%p] remote [%s] message too big %u > %u", buf, 0x46u);
          }
        }

        goto LABEL_57;
      }

      if (v23 > v12 - 16)
      {
        goto LABEL_3;
      }

      v28 = (v27 | (v25 << 16) | (v26 << 8)) & 0xFFFFFF | (v24 << 24);
      if (v24 << 24 < 0)
      {
        break;
      }

      v29 = v21 & 1;
      if (v29 && v23)
      {
        v9 = context;
        v49 = selfCopy3;
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v55 = VRTraceErrorLogLevelToCSTR();
          v51 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
          {
            v56 = selfCopy3->_connectionSocket;
            v57 = selfCopy3->_remoteServiceName;
            if (v57)
            {
              uTF8String4 = [objc_msgSend_description(v57) UTF8String];
            }

            else
            {
              uTF8String4 = "<nil>";
            }

            *buf = 136316674;
            v91 = v55;
            v92 = 2080;
            v93 = "[GKDiscoveryPeerConnection syncReceivedData:error:]";
            v94 = 1024;
            v95 = 867;
            v96 = 2048;
            selfCopy = selfCopy3;
            v98 = 2048;
            v99 = v56;
            v100 = 2080;
            v101 = uTF8String4;
            v102 = 1024;
            *v103 = v23;
            v76 = " [%s] %s:%d ptr [%p] socketPtr [%p] remote [%s] receipt has body size %u";
            goto LABEL_80;
          }
        }

        goto LABEL_81;
      }

      v30 = bswap32(v22);
      *(bytes + 2) = 0;
      v31 = v23 + 16;
      v32 = crc32(0, bytes, v23 + 16);
      if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        v87 = VRTraceErrorLogLevelToCSTR();
        v33 = *MEMORY[0x277CE5818];
        v34 = *MEMORY[0x277CE5818];
        if (*MEMORY[0x277CE5808] == 1)
        {
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            v83 = selfCopy3->_connectionSocket;
            v35 = selfCopy3->_remoteServiceName;
            if (v35)
            {
              uTF8String5 = [objc_msgSend_description(v35) UTF8String];
            }

            else
            {
              uTF8String5 = "<nil>";
            }

            v82 = [(NSMutableArray *)selfCopy3->_messageReceiptHandlerHoldingQueue count];
            v39 = [(NSMutableArray *)selfCopy3->_messageReceiptHandlerList count];
            *buf = 136318210;
            v91 = v87;
            v92 = 2080;
            v93 = "[GKDiscoveryPeerConnection syncReceivedData:error:]";
            v94 = 1024;
            v95 = 875;
            v96 = 2048;
            selfCopy = selfCopy3;
            v98 = 2048;
            v99 = v83;
            v100 = 2080;
            v101 = v80;
            v102 = 1024;
            *v103 = v28;
            *&v103[4] = 1024;
            *&v103[6] = v23;
            v104 = 1024;
            v105 = v32;
            v106 = 1024;
            v107 = v30;
            v108 = 1024;
            v109 = v29;
            v110 = 1024;
            v111 = v82;
            v112 = 1024;
            v113 = v39;
            _os_log_impl(&dword_24E50C000, v33, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ptr [%p] socketPtr [%p] remote [%s] receivedData got message #%u (bodylen=%u) crc==given[%08X==%08X]? (receipt(%u) Q[%u] L[%u])", buf, 0x64u);
          }
        }

        else if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
        {
          v84 = selfCopy3->_connectionSocket;
          v36 = selfCopy3->_remoteServiceName;
          uTF8String6 = "<nil>";
          if (v36)
          {
            uTF8String6 = [objc_msgSend_description(v36) UTF8String];
          }

          v81 = [(NSMutableArray *)selfCopy3->_messageReceiptHandlerHoldingQueue count];
          v38 = [(NSMutableArray *)selfCopy3->_messageReceiptHandlerList count];
          *buf = 136318210;
          v91 = v87;
          v92 = 2080;
          v93 = "[GKDiscoveryPeerConnection syncReceivedData:error:]";
          v94 = 1024;
          v95 = 875;
          v96 = 2048;
          selfCopy = selfCopy3;
          v98 = 2048;
          v99 = v84;
          v100 = 2080;
          v101 = v79;
          v102 = 1024;
          *v103 = v28;
          *&v103[4] = 1024;
          *&v103[6] = v23;
          v104 = 1024;
          v105 = v32;
          v106 = 1024;
          v107 = v30;
          v108 = 1024;
          v109 = v29;
          v110 = 1024;
          v111 = v81;
          v112 = 1024;
          v113 = v38;
          _os_log_debug_impl(&dword_24E50C000, v33, OS_LOG_TYPE_DEBUG, " [%s] %s:%d ptr [%p] socketPtr [%p] remote [%s] receivedData got message #%u (bodylen=%u) crc==given[%08X==%08X]? (receipt(%u) Q[%u] L[%u])", buf, 0x64u);
        }
      }

      if (v30 != v32)
      {
        v9 = context;
        v59 = selfCopy3;
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v60 = VRTraceErrorLogLevelToCSTR();
          v61 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
          {
            v62 = selfCopy3->_connectionSocket;
            v63 = selfCopy3->_remoteServiceName;
            if (v63)
            {
              uTF8String7 = [objc_msgSend_description(v63) UTF8String];
            }

            else
            {
              uTF8String7 = "<nil>";
            }

            *buf = 136316418;
            v91 = v60;
            v92 = 2080;
            v93 = "[GKDiscoveryPeerConnection syncReceivedData:error:]";
            v94 = 1024;
            v95 = 877;
            v96 = 2048;
            selfCopy = selfCopy3;
            v98 = 2048;
            v99 = v62;
            v100 = 2080;
            v101 = uTF8String7;
            v77 = " [%s] %s:%d ptr [%p] socketPtr [%p] remote [%s] invalid checksum";
LABEL_77:
            _os_log_error_impl(&dword_24E50C000, v61, OS_LOG_TYPE_ERROR, v77, buf, 0x3Au);
          }
        }

LABEL_60:
        selfCopy2 = v59;
        goto LABEL_82;
      }

      v40 = __rev16(v20);
      if (v29)
      {
        if ((v40 != 2100 || (v41 = p_messageReceiptHandlerHoldingQueue, !-[NSMutableArray count](*p_messageReceiptHandlerHoldingQueue, "count"))) && (v41 = p_messageReceiptHandlerList, !-[NSMutableArray count](*p_messageReceiptHandlerList, "count")) || (v42 = [*v41 objectAtIndexedSubscript:0], objc_msgSend(*v41, "removeObjectAtIndex:", 0), !v42))
        {
          v9 = context;
          v59 = selfCopy3;
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            v66 = VRTraceErrorLogLevelToCSTR();
            v61 = *MEMORY[0x277CE5818];
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
            {
              v72 = selfCopy3->_connectionSocket;
              v73 = selfCopy3->_remoteServiceName;
              if (v73)
              {
                uTF8String8 = [objc_msgSend_description(v73) UTF8String];
              }

              else
              {
                uTF8String8 = "<nil>";
              }

              *buf = 136316418;
              v91 = v66;
              v92 = 2080;
              v93 = "[GKDiscoveryPeerConnection syncReceivedData:error:]";
              v94 = 1024;
              v95 = 894;
              v96 = 2048;
              selfCopy = selfCopy3;
              v98 = 2048;
              v99 = v72;
              v100 = 2080;
              v101 = uTF8String8;
              v77 = " [%s] %s:%d ptr [%p] socketPtr [%p] remote [%s] message receipt has no matching handler";
              goto LABEL_77;
            }
          }

          goto LABEL_60;
        }

        v43 = v42[2](v42, v28);

        if ((v43 & 1) == 0)
        {
          ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
          v9 = context;
          v49 = selfCopy3;
          if (ErrorLogLevelForModule >= 3)
          {
            v68 = VRTraceErrorLogLevelToCSTR();
            v51 = *MEMORY[0x277CE5818];
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
            {
              v69 = selfCopy3->_connectionSocket;
              v70 = selfCopy3->_remoteServiceName;
              if (v70)
              {
                uTF8String9 = [objc_msgSend_description(v70) UTF8String];
              }

              else
              {
                uTF8String9 = "<nil>";
              }

              *buf = 136316674;
              v91 = v68;
              v92 = 2080;
              v93 = "[GKDiscoveryPeerConnection syncReceivedData:error:]";
              v94 = 1024;
              v95 = 902;
              v96 = 2048;
              selfCopy = selfCopy3;
              v98 = 2048;
              v99 = v69;
              v100 = 2080;
              v101 = uTF8String9;
              v102 = 1024;
              *v103 = v28;
              v76 = " [%s] %s:%d ptr [%p] socketPtr [%p] remote [%s] unexpected sequence number [%d]";
              goto LABEL_80;
            }
          }

          goto LABEL_81;
        }
      }

      else
      {
        -[GKDiscoveryPeerConnection syncProcessMessage:data:sequenceNumber:](selfCopy3, "syncProcessMessage:data:sequenceNumber:", v40, [MEMORY[0x277CBEA90] dataWithBytes:bytes + 8 length:v23], v28);
      }

      bytes = (bytes + v31);
      v12 -= v31;
      if (v12 <= 0xF)
      {
        goto LABEL_3;
      }
    }

    v9 = context;
    v49 = selfCopy3;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v50 = VRTraceErrorLogLevelToCSTR();
      v51 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        v52 = selfCopy3->_connectionSocket;
        v53 = selfCopy3->_remoteServiceName;
        if (v53)
        {
          uTF8String10 = [objc_msgSend_description(v53) UTF8String];
        }

        else
        {
          uTF8String10 = "<nil>";
        }

        *buf = 136316674;
        v91 = v50;
        v92 = 2080;
        v93 = "[GKDiscoveryPeerConnection syncReceivedData:error:]";
        v94 = 1024;
        v95 = 861;
        v96 = 2048;
        selfCopy = selfCopy3;
        v98 = 2048;
        v99 = v52;
        v100 = 2080;
        v101 = uTF8String10;
        v102 = 1024;
        *v103 = v28;
        v76 = " [%s] %s:%d ptr [%p] socketPtr [%p] remote [%s] invalidSequenceNumber [%u]";
LABEL_80:
        _os_log_error_impl(&dword_24E50C000, v51, OS_LOG_TYPE_ERROR, v76, buf, 0x40u);
      }
    }

LABEL_81:
    selfCopy2 = v49;
    goto LABEL_82;
  }

LABEL_3:
  v13 = [(NSMutableData *)selfCopy3->_dataReceived length];
  v9 = context;
  if (v13 != v12)
  {
    [(NSMutableData *)selfCopy3->_dataReceived replaceBytesInRange:0 withBytes:v13 - v12 length:0, 0];
  }

LABEL_83:
  objc_autoreleasePoolPop(v9);
}

- (void)syncCloseConnectionNow
{
  v11[1] = *MEMORY[0x277D85DE8];
  self->_connected = 0;
  [(GKAsyncSocket *)self->_connectionSocket invalidate];

  self->_connectionSocket = 0;
  self->_remoteServiceName = 0;
  [(NSMutableData *)self->_dataReceived replaceBytesInRange:0 withBytes:[(NSMutableData *)self->_dataReceived length] length:0, 0];
  [(NSMutableData *)self->_dataToSendHoldingQueue replaceBytesInRange:0 withBytes:[(NSMutableData *)self->_dataToSendHoldingQueue length] length:0, 0];
  [(GKSimpleTimer *)self->_heartbeatTimer invalidate];

  self->_heartbeatTimer = 0;
  [(GKSimpleTimer *)self->_heartbeatTimeoutTimer invalidate];

  self->_heartbeatTimeoutTimer = 0;
  [(GKSimpleTimer *)self->_timeoutTimer invalidate];

  self->_timeoutTimer = 0;
  messageReceiptHandlerList = self->_messageReceiptHandlerList;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __51__GKDiscoveryPeerConnection_syncCloseConnectionNow__block_invoke;
  v9[3] = &unk_2796835B8;
  v9[4] = self;
  [(NSMutableArray *)messageReceiptHandlerList enumerateObjectsUsingBlock:v9];
  messageReceiptHandlerHoldingQueue = self->_messageReceiptHandlerHoldingQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __51__GKDiscoveryPeerConnection_syncCloseConnectionNow__block_invoke_51;
  v8[3] = &unk_2796835B8;
  v8[4] = self;
  [(NSMutableArray *)messageReceiptHandlerHoldingQueue enumerateObjectsUsingBlock:v8];
  [(NSMutableArray *)self->_messageReceiptHandlerList removeAllObjects];
  [(NSMutableArray *)self->_messageReceiptHandlerHoldingQueue removeAllObjects];
  connectedHandler = self->_connectedHandler;
  if (connectedHandler)
  {
    self->_connectedHandler = 0;
    if (self->_targetQueue)
    {
      targetQueue = self->_targetQueue;
    }

    else
    {
      targetQueue = MEMORY[0x277D85CD0];
    }

    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __51__GKDiscoveryPeerConnection_syncCloseConnectionNow__block_invoke_53;
    v7[3] = &unk_279683388;
    v7[4] = connectedHandler;
    dispatch_async(targetQueue, v7);
  }

  else if (self->_receiveDataHandler)
  {
    v10 = *MEMORY[0x277CCA450];
    v11[0] = @"Connection closed";
    [MEMORY[0x277CCA9B8] errorWithDomain:@"GKDiscoveryPeerConnection" code:-5 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v11, &v10, 1)}];
    (*(self->_receiveDataHandler + 2))(0.0);
  }
}

void __51__GKDiscoveryPeerConnection_syncCloseConnectionNow__block_invoke(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    if (*(*(a1 + 32) + 112))
    {
      v3 = *(*(a1 + 32) + 112);
    }

    else
    {
      v3 = MEMORY[0x277D85CD0];
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__GKDiscoveryPeerConnection_syncCloseConnectionNow__block_invoke_2;
    block[3] = &unk_279683388;
    block[4] = a2;
    dispatch_async(v3, block);
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = *(v6 + 32);
      v8 = *(v6 + 8);
      if (v8)
      {
        v9 = [objc_msgSend_description(v8) UTF8String];
      }

      else
      {
        v9 = "<nil>";
      }

      *buf = 136316418;
      v12 = v4;
      v13 = 2080;
      v14 = "[GKDiscoveryPeerConnection syncCloseConnectionNow]_block_invoke";
      v15 = 1024;
      v16 = 973;
      v17 = 2048;
      v18 = v6;
      v19 = 2048;
      v20 = v7;
      v21 = 2080;
      v22 = v9;
      _os_log_impl(&dword_24E50C000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ptr [%p] socketPtr [%p] remote [%s] receiptHander should not be nil", buf, 0x3Au);
    }
  }
}

void __51__GKDiscoveryPeerConnection_syncCloseConnectionNow__block_invoke_51(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    if (*(*(a1 + 32) + 112))
    {
      v3 = *(*(a1 + 32) + 112);
    }

    else
    {
      v3 = MEMORY[0x277D85CD0];
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__GKDiscoveryPeerConnection_syncCloseConnectionNow__block_invoke_2_52;
    block[3] = &unk_279683388;
    block[4] = a2;
    dispatch_async(v3, block);
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = *(v6 + 32);
      v8 = *(v6 + 8);
      if (v8)
      {
        v9 = [objc_msgSend_description(v8) UTF8String];
      }

      else
      {
        v9 = "<nil>";
      }

      *buf = 136316418;
      v12 = v4;
      v13 = 2080;
      v14 = "[GKDiscoveryPeerConnection syncCloseConnectionNow]_block_invoke";
      v15 = 1024;
      v16 = 983;
      v17 = 2048;
      v18 = v6;
      v19 = 2048;
      v20 = v7;
      v21 = 2080;
      v22 = v9;
      _os_log_impl(&dword_24E50C000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ptr [%p] socketPtr [%p] remote [%s] receiptHandler should not be nil", buf, 0x3Au);
    }
  }
}

uint64_t __51__GKDiscoveryPeerConnection_syncCloseConnectionNow__block_invoke_53(uint64_t a1)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CCA450];
  v4[0] = @"Unable to connect";
  [MEMORY[0x277CCA9B8] errorWithDomain:@"GKDiscoveryPeerConnection" code:-4 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v4, &v3, 1)}];
  return (*(*(a1 + 32) + 16))();
}

- (void)invalidate
{
  syncQueue = MEMORY[0x277D85CD0];
  if (self->_syncQueue)
  {
    syncQueue = self->_syncQueue;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__GKDiscoveryPeerConnection_invalidate__block_invoke;
  block[3] = &unk_279682BA8;
  block[4] = self;
  dispatch_async(syncQueue, block);
}

uint64_t __39__GKDiscoveryPeerConnection_invalidate__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 96) = 0;

  *(*(a1 + 32) + 88) = 0;
  v2 = *(a1 + 32);

  return [v2 syncCloseConnectionNow];
}

- (void)dealloc
{
  v25 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      connectionSocket = self->_connectionSocket;
      remoteServiceName = self->_remoteServiceName;
      if (remoteServiceName)
      {
        uTF8String = [objc_msgSend_description(remoteServiceName) UTF8String];
      }

      else
      {
        uTF8String = "<nil>";
      }

      *buf = 136316418;
      v14 = v3;
      v15 = 2080;
      v16 = "[GKDiscoveryPeerConnection dealloc]";
      v17 = 1024;
      v18 = 1020;
      v19 = 2048;
      selfCopy = self;
      v21 = 2048;
      v22 = connectionSocket;
      v23 = 2080;
      v24 = uTF8String;
      _os_log_impl(&dword_24E50C000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ptr [%p] socketPtr [%p] remote [%s] deallocating peerConnection object", buf, 0x3Au);
    }
  }

  [(GKDiscoveryPeerConnection *)self syncCloseConnectionNow];
  connectedHandler = self->_connectedHandler;
  if (connectedHandler)
  {
  }

  receiveDataHandler = self->_receiveDataHandler;
  if (receiveDataHandler)
  {
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

  v12.receiver = self;
  v12.super_class = GKDiscoveryPeerConnection;
  [(GKDiscoveryPeerConnection *)&v12 dealloc];
}

- (void)sendData:(id)data withCompletionHandler:(id)handler
{
  v33 = *MEMORY[0x277D85DE8];
  if (data)
  {
    v7 = [data length];
    if (+[GKDiscoveryPeerConnection sendDataLimit]>= v7)
    {
      v11 = [handler copy];
      syncQueue = self->_syncQueue;
      if (!syncQueue)
      {
        syncQueue = MEMORY[0x277D85CD0];
      }

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __60__GKDiscoveryPeerConnection_sendData_withCompletionHandler___block_invoke;
      block[3] = &unk_2796833B0;
      block[4] = self;
      block[5] = data;
      block[6] = v11;
      dispatch_async(syncQueue, block);
    }

    else
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v8 = VRTraceErrorLogLevelToCSTR();
        v9 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          connectionSocket = self->_connectionSocket;
          remoteServiceName = self->_remoteServiceName;
          if (remoteServiceName)
          {
            uTF8String = [objc_msgSend_description(remoteServiceName) UTF8String];
          }

          else
          {
            uTF8String = "<nil>";
          }

          *buf = 136316674;
          v20 = v8;
          v21 = 2080;
          v22 = "[GKDiscoveryPeerConnection sendData:withCompletionHandler:]";
          v23 = 1024;
          v24 = 1055;
          v25 = 2048;
          selfCopy = self;
          v27 = 2048;
          v28 = connectionSocket;
          v29 = 2080;
          v30 = uTF8String;
          v31 = 1024;
          v32 = v7;
          _os_log_error_impl(&dword_24E50C000, v9, OS_LOG_TYPE_ERROR, " [%s] %s:%d ptr [%p] socketPtr [%p] remote [%s] message too big to send (length=%u)", buf, 0x40u);
        }
      }

      v17 = *MEMORY[0x277CCA450];
      v18 = @"Message is too big to send";
      (*(handler + 2))(handler, [MEMORY[0x277CCA9B8] errorWithDomain:@"GKDiscoveryPeerConnection" code:-6 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", &v18, &v17, 1)}]);
    }
  }

  else
  {
    v10 = *(handler + 2);

    v10(handler, 0);
  }
}

uint64_t __60__GKDiscoveryPeerConnection_sendData_withCompletionHandler___block_invoke(void *a1, uint64_t a2)
{
  [*(a1[4] + 136) fireIn:*(a1[4] + 144) fromNow:{micro(a1, a2)}];
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];

  return [v3 syncSendMessage:2100 data:v4 withCompletionHandler:v5];
}

+ (void)checkConstants
{
  v2 = micro(self, a2);
  if (*&gkdpc_constantsUpdateTime == 0.0 || v2 - *&gkdpc_constantsUpdateTime > 10.0)
  {
    gkdpc_constantsUpdateTime = *&v2;
    CFPreferencesAppSynchronize(@"com.apple.gamed");
    keyExistsAndHasValidFormat = -86;
    AppIntegerValue = CFPreferencesGetAppIntegerValue(@"GKDiscoverySendDataLimit", @"com.apple.gamed", &keyExistsAndHasValidFormat);
    v5 = AppIntegerValue <= 0 || keyExistsAndHasValidFormat == 0;
    v6 = 20971520;
    if (!v5)
    {
      v6 = AppIntegerValue;
    }

    gkdpc_sendDataLimit = v6;
    v7 = CFPreferencesGetAppIntegerValue(@"GKDiscoveryReceiveDataLimit", @"com.apple.gamed", &keyExistsAndHasValidFormat);
    v8 = v7 <= 0 || keyExistsAndHasValidFormat == 0;
    v9 = 83886080;
    if (!v8)
    {
      v9 = v7;
    }

    gkdpc_receiveDataLimit = v9;
  }
}

+ (unint64_t)sendDataLimit
{
  v2 = objc_opt_class();
  objc_sync_enter(v2);
  +[GKDiscoveryPeerConnection checkConstants];
  v3 = gkdpc_sendDataLimit;
  objc_sync_exit(v2);
  return v3;
}

+ (unint64_t)receiveDataLimit
{
  v2 = objc_opt_class();
  objc_sync_enter(v2);
  +[GKDiscoveryPeerConnection checkConstants];
  v3 = gkdpc_receiveDataLimit;
  objc_sync_exit(v2);
  return v3;
}

- (void)syncConnected:.cold.1()
{
  OUTLINED_FUNCTION_6_2();
  v1 = *(v0 + 8);
  if (v1)
  {
    [objc_msgSend_description(v1) UTF8String];
  }

  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x3Au);
}

- (void)shouldDecideAboutConnection
{
  OUTLINED_FUNCTION_6_2();
  v2 = *(v1 + 8);
  if (v2)
  {
    [objc_msgSend_description(v2) UTF8String];
  }

  v3 = *(v0 + 16);
  if (v3)
  {
    [objc_msgSend_description(v3) UTF8String];
  }

  v4 = *(v0 + 8);
  if (v4)
  {
    [objc_msgSend_description(v4) UTF8String];
  }

  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x4Eu);
}

void __51__GKDiscoveryPeerConnection_syncAcceptedConnection__block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a2 + 32) + 8);
  if (v2)
  {
    [objc_msgSend_description(v2) UTF8String];
  }

  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x3Au);
}

void __67__GKDiscoveryPeerConnection_syncSendMessageReceipt_sequenceNumber___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a2 + 32) + 8);
  if (v2)
  {
    [objc_msgSend_description(v2) UTF8String];
  }

  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x46u);
}

void __37__GKDiscoveryPeerConnection_timeout___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v2 = OUTLINED_FUNCTION_8_2(a2, *MEMORY[0x277D85DE8]);
  if (v2)
  {
    [objc_msgSend_description(v2) UTF8String];
  }

  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_9_3(&dword_24E50C000, v3, v4, " [%s] %s:%d ptr [%p] socketPtr [%p] remote [%s] timeout timer hit", v5, v6, v7, v8);
}

void __37__GKDiscoveryPeerConnection_timeout___block_invoke_cold_2(uint64_t a1, uint64_t a2)
{
  v2 = OUTLINED_FUNCTION_8_2(a2, *MEMORY[0x277D85DE8]);
  if (v2)
  {
    [objc_msgSend_description(v2) UTF8String];
  }

  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_9_3(&dword_24E50C000, v3, v4, " [%s] %s:%d ptr [%p] socketPtr [%p] remote [%s] heartbeat timeout timer hit", v5, v6, v7, v8);
}

@end