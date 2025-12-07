@interface CMIOExtensionProxyContext
- (CMIOExtensionProxyContext)initWithConnection:(id)connection serverConnection:(id)serverConnection queue:(id)queue delegate:(id)delegate;
- (id)description;
- (id)redactedDescription;
- (void)dealloc;
- (void)handleClientMessageWithConnection:(id)connection message:(id)message;
- (void)handleServerMessageWithConnection:(id)connection message:(id)message;
- (void)invalidate;
- (void)receivedSample:(id)sample message:(id)message;
- (void)sendClientInfo;
@end

@implementation CMIOExtensionProxyContext

- (CMIOExtensionProxyContext)initWithConnection:(id)connection serverConnection:(id)serverConnection queue:(id)queue delegate:(id)delegate
{
  v32 = *MEMORY[0x277D85DE8];
  if (connection && serverConnection)
  {
    v30.receiver = self;
    v30.super_class = CMIOExtensionProxyContext;
    v10 = [(CMIOExtensionProxyContext *)&v30 init];
    v11 = v10;
    if (v10)
    {
      v10->_lock._os_unfair_lock_opaque = 0;
      v10->_transaction = os_transaction_create();
      objc_storeWeak(&v11->_delegate, delegate);
      v11->_connection = connection;
      v11->_serverConnection = serverConnection;
      v11->_deviceIDsByStreamID = objc_alloc_init(MEMORY[0x277CBEB38]);
      v11->_hasCameraAttribution = 0;
      if (queue)
      {
        queueCopy = queue;
      }

      else
      {
        v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
        global_queue = dispatch_get_global_queue(21, 0);
        queueCopy = dispatch_queue_create_with_target_V2("com.apple.cmio.CMIOExtensionProxyContext", v13, global_queue);
      }

      v11->_queue = queueCopy;
      objc_initWeak(&location, v11);
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __80__CMIOExtensionProxyContext_initWithConnection_serverConnection_queue_delegate___block_invoke;
      handler[3] = &unk_27885C1C0;
      objc_copyWeak(&v28, &location);
      handler[4] = serverConnection;
      xpc_connection_set_event_handler(serverConnection, handler);
      xpc_connection_set_target_queue(serverConnection, v11->_queue);
      xpc_connection_activate(serverConnection);
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __80__CMIOExtensionProxyContext_initWithConnection_serverConnection_queue_delegate___block_invoke_22;
      v25[3] = &unk_27885C1C0;
      objc_copyWeak(&v26, &location);
      v25[4] = connection;
      xpc_connection_set_event_handler(connection, v25);
      xpc_connection_set_target_queue(connection, v11->_queue);
      xpc_connection_activate(connection);
      xpc_connection_get_audit_token();
      pid = xpc_connection_get_pid(connection);
      uUID = [MEMORY[0x277CCAD78] UUID];
      memset(buf, 0, 32);
      v17 = [CMIOExtensionProvider newActivityAttributionWithToken:buf];
      v18 = [CMIOExtensionClient alloc];
      memset(buf, 0, 32);
      v11->_clientInfo = [(CMIOExtensionClient *)v18 initWithPID:pid clientID:uUID auditToken:buf stAttribution:v17 isToProxy:1 isFromProxyExtensionManager:0];
      v11->_activeStreams = 0;
      v11->_description = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<CMIOExtensionProxyContext: pid %u, ID %@, delegate %@>", pid, uUID, delegate];
      v11->_redactedDescription = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<CMIOExtensionProxyContext: pid -, ID ->"];
      sendClientInfo = [(CMIOExtensionProxyContext *)v11 sendClientInfo];
      v21 = CMIOLog(sendClientInfo, v20);
      v22 = v21;
      if (v21 && os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v23 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProxy.m");
        *buf = 136315907;
        *&buf[4] = v23;
        *&buf[12] = 1024;
        *&buf[14] = 265;
        *&buf[18] = 2080;
        *&buf[20] = "[CMIOExtensionProxyContext initWithConnection:serverConnection:queue:delegate:]";
        *&buf[28] = 2113;
        *&buf[30] = v11;
        _os_log_impl(&dword_22EA08000, v22, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %{private}@", buf, 0x26u);
      }

      objc_destroyWeak(&v26);
      objc_destroyWeak(&v28);
      objc_destroyWeak(&location);
    }
  }

  else
  {

    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"Invalid argument"];
    return 0;
  }

  return v11;
}

void __80__CMIOExtensionProxyContext_initWithConnection_serverConnection_queue_delegate___block_invoke(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = MEMORY[0x2318F1BC0](a2);
  if (v5 == MEMORY[0x277D86480])
  {
    v7 = CMIOLog(v5, v6);
    if (v7)
    {
      v7 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
      if (v7)
      {
        __80__CMIOExtensionProxyContext_initWithConnection_serverConnection_queue_delegate___block_invoke_cold_1(a1);
      }
    }

    if (a2 == MEMORY[0x277D863F0])
    {
      xpc_connection_cancel(*(a1 + 32));
    }

    else if (a2 == MEMORY[0x277D863F8] && WeakRetained && (*(WeakRetained + 49) & 1) == 0)
    {
      v9 = CMIOLog(v7, v8);
      if (v9)
      {
        v10 = v9;
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v11 = 136315907;
          v12 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProxy.m");
          v13 = 1024;
          v14 = 210;
          v15 = 2080;
          v16 = "[CMIOExtensionProxyContext initWithConnection:serverConnection:queue:delegate:]_block_invoke";
          v17 = 2113;
          v18 = WeakRetained;
          _os_log_impl(&dword_22EA08000, v10, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %{private}@, serverConnection is invalidated", &v11, 0x26u);
        }
      }

      [WeakRetained invalidate];
      [objc_loadWeak(WeakRetained + 7) proxyContextHasBeenInvalidated:WeakRetained];
    }
  }

  else if (v5 == MEMORY[0x277D86468])
  {
    [WeakRetained handleServerMessageWithConnection:*(a1 + 32) message:a2];
  }
}

void __80__CMIOExtensionProxyContext_initWithConnection_serverConnection_queue_delegate___block_invoke_22(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = MEMORY[0x2318F1BC0](a2);
  if (v5 == MEMORY[0x277D86480])
  {
    v7 = CMIOLog(v5, v6);
    if (v7)
    {
      v7 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
      if (v7)
      {
        __80__CMIOExtensionProxyContext_initWithConnection_serverConnection_queue_delegate___block_invoke_22_cold_1(a1);
      }
    }

    if (a2 == MEMORY[0x277D863F0])
    {
      xpc_connection_cancel(*(a1 + 32));
    }

    else if (a2 == MEMORY[0x277D863F8] && WeakRetained && (*(WeakRetained + 49) & 1) == 0)
    {
      v9 = CMIOLog(v7, v8);
      if (v9)
      {
        v10 = v9;
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v11 = 136315907;
          v12 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProxy.m");
          v13 = 1024;
          v14 = 237;
          v15 = 2080;
          v16 = "[CMIOExtensionProxyContext initWithConnection:serverConnection:queue:delegate:]_block_invoke";
          v17 = 2113;
          v18 = WeakRetained;
          _os_log_impl(&dword_22EA08000, v10, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %{private}@, connection is invalidated", &v11, 0x26u);
        }
      }

      [WeakRetained invalidate];
      [objc_loadWeak(WeakRetained + 7) proxyContextHasBeenInvalidated:WeakRetained];
    }
  }

  else if (v5 == MEMORY[0x277D86468])
  {
    [WeakRetained handleClientMessageWithConnection:*(a1 + 32) message:a2];
  }
}

- (void)dealloc
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = CMIOLog(self, a2);
  if (v3)
  {
    v4 = v3;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315907;
      v17 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProxy.m");
      v18 = 1024;
      v19 = 272;
      v20 = 2080;
      v21 = "[CMIOExtensionProxyContext dealloc]";
      v22 = 2113;
      selfCopy = self;
      _os_log_impl(&dword_22EA08000, v4, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %{private}@", buf, 0x26u);
    }
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [-[CMIOExtensionClient stCameraCaptureAttributionsMap](self->_clientInfo "stCameraCaptureAttributionsMap")];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [+[CMIOExtensionProxyAttribution sharedAttribution](CMIOExtensionProxyAttribution "sharedAttribution")];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  [-[CMIOExtensionClient stCameraCaptureAttributionsMap](self->_clientInfo "stCameraCaptureAttributionsMap")];
  if (self->_activeStreams >= 1)
  {
    [objc_loadWeak(&self->_delegate) proxyStreamsHaveStopped:self->_activeStreams];
    self->_activeStreams = 0;
  }

  v10.receiver = self;
  v10.super_class = CMIOExtensionProxyContext;
  [(CMIOExtensionProxyContext *)&v10 dealloc];
}

- (id)description
{
  v2 = self->_description;

  return v2;
}

- (id)redactedDescription
{
  v2 = self->_redactedDescription;

  return v2;
}

- (void)invalidate
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = CMIOLog(self, a2);
  if (v3)
  {
    v4 = v3;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 136315907;
      v18 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProxy.m");
      v19 = 1024;
      v20 = 310;
      v21 = 2080;
      v22 = "[CMIOExtensionProxyContext invalidate]";
      v23 = 2113;
      selfCopy = self;
      _os_log_impl(&dword_22EA08000, v4, OS_LOG_TYPE_INFO, "%s:%d:%s %{private}@", buf, 0x26u);
    }
  }

  os_unfair_lock_lock(&self->_lock);
  if (self->_invalidated)
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    self->_invalidated = 1;
    os_unfair_lock_unlock(&self->_lock);
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    stCameraCaptureAttributionsMap = [-[CMIOExtensionClient stCameraCaptureAttributionsMap](self->_clientInfo stCameraCaptureAttributionsMap];
    v6 = [stCameraCaptureAttributionsMap countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        v9 = 0;
        do
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(stCameraCaptureAttributionsMap);
          }

          [+[CMIOExtensionProxyAttribution sharedAttribution](CMIOExtensionProxyAttribution "sharedAttribution")];
        }

        while (v7 != v9);
        v7 = [stCameraCaptureAttributionsMap countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }

    [-[CMIOExtensionClient stCameraCaptureAttributionsMap](self->_clientInfo "stCameraCaptureAttributionsMap")];
    self->_hasCameraAttribution = 0;
    if (self->_activeStreams >= 1)
    {
      [objc_loadWeak(&self->_delegate) proxyStreamsHaveStopped:self->_activeStreams];
      self->_activeStreams = 0;
    }

    connection = self->_connection;
    if (connection)
    {
      xpc_connection_cancel(connection);
    }

    serverConnection = self->_serverConnection;
    if (serverConnection)
    {
      xpc_connection_cancel(serverConnection);
    }

    self->_transaction = 0;
  }
}

- (void)sendClientInfo
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProxy.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void __43__CMIOExtensionProxyContext_sendClientInfo__block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = MEMORY[0x2318F1BC0](a2);
    if (v3 == MEMORY[0x277D86480])
    {
      v6 = CMIOLog(v3, v4);
      if (v6 && os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        __43__CMIOExtensionProxyContext_sendClientInfo__block_invoke_cold_3();
      }
    }

    else if (v3 == MEMORY[0x277D86468])
    {
      int64 = xpc_dictionary_get_int64(a2, "errorReturn");
      if (int64)
      {
        v9 = CMIOLog(int64, v8);
        if (v9)
        {
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            __43__CMIOExtensionProxyContext_sendClientInfo__block_invoke_cold_2();
          }
        }
      }
    }

    else
    {
      v5 = CMIOLog(v3, v4);
      if (v5)
      {
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          __43__CMIOExtensionProxyContext_sendClientInfo__block_invoke_cold_1();
        }
      }
    }
  }
}

- (void)receivedSample:(id)sample message:(id)message
{
  v34 = *MEMORY[0x277D85DE8];
  cf = 0;
  v6 = cmio_XPCMessageCopyCFString(message, "param1", &cf);
  if (cf)
  {
    int64 = xpc_dictionary_get_int64(message, "param2");
    value = xpc_dictionary_get_value(message, "param3");
    if (!value)
    {
      v14 = CMIOLog(0, v10);
      if (v14 && os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [CMIOExtensionProxyContext receivedSample:message:];
      }

      goto LABEL_39;
    }

    if (int64 == 1836415096)
    {
      v17 = [(CMIOExtensionClient *)self->_clientInfo microphoneAuthorizationStatus]== 3 && [(CMIOExtensionClient *)self->_clientInfo cameraAuthorizationStatus]== 3;
      v12 = [(CMIOExtensionClient *)self->_clientInfo microphoneAuthorizationStatus]== 0;
      value = [(CMIOExtensionClient *)self->_clientInfo cameraAuthorizationStatus];
      v16 = value == 0;
      if (!v17)
      {
        goto LABEL_25;
      }
    }

    else
    {
      if (int64 != 1986618469)
      {
        if (int64 == 1936684398)
        {
          microphoneAuthorizationStatus = [(CMIOExtensionClient *)self->_clientInfo microphoneAuthorizationStatus];
          value = [(CMIOExtensionClient *)self->_clientInfo microphoneAuthorizationStatus];
          v12 = value == 0;
          if (microphoneAuthorizationStatus == 3)
          {
LABEL_24:
            v18 = xpc_dictionary_create(0, 0, 0);
            applier[0] = MEMORY[0x277D85DD0];
            applier[1] = 3221225472;
            applier[2] = __52__CMIOExtensionProxyContext_receivedSample_message___block_invoke;
            applier[3] = &unk_27885BF98;
            applier[4] = v18;
            xpc_dictionary_apply(message, applier);
            xpc_connection_send_message(self->_connection, v18);
            xpc_release(v18);
LABEL_39:
            CFRelease(cf);
            return;
          }
        }

        else
        {
          v12 = 0;
        }

        v16 = 0;
LABEL_25:
        v19 = CMIOLog(value, v10);
        if (v19)
        {
          v20 = v19;
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            v21 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProxy.m");
            *buf = 136315650;
            v29 = v21;
            v30 = 1024;
            v31 = 423;
            v32 = 2080;
            v33 = "[CMIOExtensionProxyContext receivedSample:message:]";
            _os_log_impl(&dword_22EA08000, v20, OS_LOG_TYPE_DEFAULT, "%s:%d:%s Not authorized", buf, 0x1Cu);
          }
        }

        v22 = objc_autoreleasePoolPush();
        v23 = [MEMORY[0x277CCACA8] stringWithString:cf];
        if (int64 != 1836415096)
        {
          if (int64 == 1986618469)
          {
LABEL_35:
            if (![(CMIOExtensionClient *)self->_clientInfo hasPendingCameraAuthorizationRequest]&& v16)
            {
              clientInfo = self->_clientInfo;
              v25[0] = MEMORY[0x277D85DD0];
              v25[1] = 3221225472;
              v25[2] = __52__CMIOExtensionProxyContext_receivedSample_message___block_invoke_45;
              v25[3] = &unk_27885C228;
              v25[4] = self;
              v25[5] = v23;
              [(CMIOExtensionClient *)clientInfo requestAccessForMediaType:1986618469 reply:v25];
            }

            goto LABEL_38;
          }

          if (int64 != 1936684398)
          {
LABEL_38:
            objc_autoreleasePoolPop(v22);
            goto LABEL_39;
          }
        }

        if (![(CMIOExtensionClient *)self->_clientInfo hasPendingMicrophoneAuthorizationRequest]&& v12)
        {
          [(CMIOExtensionClient *)self->_clientInfo requestAccessForMediaType:1936684398 reply:&__block_literal_global_44];
        }

        if (int64 != 1836415096)
        {
          goto LABEL_38;
        }

        goto LABEL_35;
      }

      cameraAuthorizationStatus = [(CMIOExtensionClient *)self->_clientInfo cameraAuthorizationStatus];
      value = [(CMIOExtensionClient *)self->_clientInfo cameraAuthorizationStatus];
      v16 = value == 0;
      if (cameraAuthorizationStatus != 3)
      {
        v12 = 0;
        goto LABEL_25;
      }
    }

    if (!self->_hasCameraAttribution)
    {
      [(CMIOExtensionProxyContext *)self _addCameraAttribution:cf];
    }

    goto LABEL_24;
  }

  v13 = CMIOLog(v6, v7);
  if (v13 && os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    [CMIOExtensionProxyContext receivedSample:message:];
  }
}

void __52__CMIOExtensionProxyContext_receivedSample_message___block_invoke_41(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = CMIOLog(a1, a2);
  if (v3)
  {
    v4 = v3;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315906;
      v7 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProxy.m");
      if (a2 == 3)
      {
        v5 = 89;
      }

      else
      {
        v5 = 78;
      }

      v8 = 1024;
      v9 = 429;
      v10 = 2080;
      v11 = "[CMIOExtensionProxyContext receivedSample:message:]_block_invoke";
      v12 = 1024;
      v13 = v5;
      _os_log_impl(&dword_22EA08000, v4, OS_LOG_TYPE_DEFAULT, "%s:%d:%s Authorized microphone %c", &v6, 0x22u);
    }
  }
}

void __52__CMIOExtensionProxyContext_receivedSample_message___block_invoke_45(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = CMIOLog(a1, a2);
  if (v4)
  {
    v5 = v4;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315906;
      v9 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProxy.m");
      if (a2 == 3)
      {
        v6 = 89;
      }

      else
      {
        v6 = 78;
      }

      v10 = 1024;
      v11 = 437;
      v12 = 2080;
      v13 = "[CMIOExtensionProxyContext receivedSample:message:]_block_invoke";
      v14 = 1024;
      v15 = v6;
      _os_log_impl(&dword_22EA08000, v5, OS_LOG_TYPE_DEFAULT, "%s:%d:%s Authorized camera %c", &v8, 0x22u);
    }
  }

  if (a2 == 3)
  {
    v7 = *(a1 + 32);
    if ((v7[48] & 1) == 0)
    {
      [v7 _addCameraAttribution:*(a1 + 40)];
    }
  }
}

- (void)handleClientMessageWithConnection:(id)connection message:(id)message
{
  v49 = *MEMORY[0x277D85DE8];
  uint64 = xpc_dictionary_get_uint64(message, "MessageType");
  v9 = uint64;
  if (CMIOModuleLogLevel_once_0 != -1)
  {
    [CMIOExtensionProxyContext sendClientInfo];
  }

  if (CMIOModuleLogLevel_cmioLevel_0 >= 1)
  {
    uint64 = CMIOLog(uint64, v8);
    if (uint64)
    {
      v10 = uint64;
      uint64 = os_log_type_enabled(uint64, OS_LOG_TYPE_DEFAULT);
      if (uint64)
      {
        *buf = 136316163;
        *&buf[4] = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProxy.m");
        v41 = 1024;
        v42 = 457;
        v43 = 2080;
        v44 = "[CMIOExtensionProxyContext handleClientMessageWithConnection:message:]";
        v45 = 2113;
        selfCopy = self;
        v47 = 2048;
        v48 = v9;
        _os_log_impl(&dword_22EA08000, v10, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %{private}@ %lld", buf, 0x30u);
      }
    }
  }

  if (v9 <= 19)
  {
    if ((v9 - 1) >= 4 && (v9 - 10) >= 4)
    {
      if (v9 == 5)
      {
        reply = xpc_dictionary_create_reply(message);
        if (reply)
        {
          v13 = reply;
          xpc_dictionary_set_int64(reply, "errorReturn", 0);
          xpc_connection_send_message(connection, v13);
          xpc_release(v13);
        }

        else
        {
          v31 = CMIOLog(0, v12);
          if (v31)
          {
            if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              [CMIOExtensionProxyContext handleClientMessageWithConnection:message:];
            }
          }
        }

        return;
      }

      goto LABEL_33;
    }

    goto LABEL_14;
  }

  if (v9 < 23)
  {
LABEL_14:
    v14 = xpc_dictionary_create_reply(message);
    if (v14)
    {
      serverConnection = self->_serverConnection;
      queue = self->_queue;
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __71__CMIOExtensionProxyContext_handleClientMessageWithConnection_message___block_invoke;
      handler[3] = &unk_27885C250;
      handler[4] = v14;
      handler[5] = connection;
      v18 = handler;
LABEL_16:
      xpc_connection_send_message_with_reply(serverConnection, message, queue, v18);
      return;
    }

    v19 = CMIOLog(0, v15);
    if (v19 && os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionProxyContext handleClientMessageWithConnection:message:];
    }

    return;
  }

  switch(v9)
  {
    case 23:
      v28 = xpc_dictionary_create_reply(message);
      if (v28)
      {
        serverConnection = self->_serverConnection;
        queue = self->_queue;
        v38[0] = MEMORY[0x277D85DD0];
        v38[1] = 3221225472;
        v38[2] = __71__CMIOExtensionProxyContext_handleClientMessageWithConnection_message___block_invoke_48;
        v38[3] = &unk_27885C278;
        v38[4] = v28;
        v38[5] = self;
        v38[6] = connection;
        v18 = v38;
        goto LABEL_16;
      }

      v34 = CMIOLog(0, v29);
      if (v34 && os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        [CMIOExtensionProxyContext handleClientMessageWithConnection:message:];
      }

      break;
    case 24:
      *buf = 0;
      v22 = cmio_XPCMessageCopyCFString(message, "param1", buf);
      if (*buf)
      {
        v24 = [(NSMutableDictionary *)self->_deviceIDsByStreamID objectForKeyedSubscript:?];
        if (v24)
        {
          STCameraCaptureAttributionMapKey = cmio_getSTCameraCaptureAttributionMapKey(v24, *buf);
          [+[CMIOExtensionProxyAttribution sharedAttribution](CMIOExtensionProxyAttribution "sharedAttribution")];
          [-[CMIOExtensionClient stCameraCaptureAttributionsMap](self->_clientInfo "stCameraCaptureAttributionsMap")];
          [(NSMutableDictionary *)self->_deviceIDsByStreamID removeObjectForKey:*buf];
          self->_hasCameraAttribution = 0;
        }

        CFRelease(*buf);
        v26 = xpc_dictionary_create_reply(message);
        if (v26)
        {
          serverConnection = self->_serverConnection;
          queue = self->_queue;
          v37[0] = MEMORY[0x277D85DD0];
          v37[1] = 3221225472;
          v37[2] = __71__CMIOExtensionProxyContext_handleClientMessageWithConnection_message___block_invoke_50;
          v37[3] = &unk_27885C278;
          v37[4] = v26;
          v37[5] = self;
          v37[6] = connection;
          v18 = v37;
          goto LABEL_16;
        }

        v35 = CMIOLog(0, v27);
        if (v35 && os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          [CMIOExtensionProxyContext handleClientMessageWithConnection:message:];
        }
      }

      else
      {
        v32 = CMIOLog(v22, v23);
        if (v32 && os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          [CMIOExtensionProxyContext handleClientMessageWithConnection:message:];
        }
      }

      break;
    case 25:

      self->_transaction = 0;
      v20 = xpc_dictionary_create_reply(message);
      if (v20)
      {
        serverConnection = self->_serverConnection;
        queue = self->_queue;
        v36[0] = MEMORY[0x277D85DD0];
        v36[1] = 3221225472;
        v36[2] = __71__CMIOExtensionProxyContext_handleClientMessageWithConnection_message___block_invoke_52;
        v36[3] = &unk_27885C250;
        v36[4] = v20;
        v36[5] = connection;
        v18 = v36;
        goto LABEL_16;
      }

      v33 = CMIOLog(0, v21);
      if (v33 && os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        [CMIOExtensionProxyContext handleClientMessageWithConnection:message:];
      }

      break;
    default:
LABEL_33:
      v30 = CMIOLog(uint64, v8);
      if (v30 && os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        [CMIOExtensionProxyContext handleClientMessageWithConnection:message:];
      }

      return;
  }
}

void __71__CMIOExtensionProxyContext_handleClientMessageWithConnection_message___block_invoke(uint64_t a1, void *a2)
{
  v4 = MEMORY[0x2318F1BC0](a2);
  if (v4 == MEMORY[0x277D86480])
  {
    v7 = CMIOLog(v4, v5);
    if (v7 && os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __71__CMIOExtensionProxyContext_handleClientMessageWithConnection_message___block_invoke_cold_2();
    }
  }

  else
  {
    if (v4 == MEMORY[0x277D86468])
    {
      applier[0] = MEMORY[0x277D85DD0];
      applier[1] = 3221225472;
      applier[2] = __71__CMIOExtensionProxyContext_handleClientMessageWithConnection_message___block_invoke_46;
      applier[3] = &unk_27885BF98;
      applier[4] = *(a1 + 32);
      xpc_dictionary_apply(a2, applier);
      goto LABEL_11;
    }

    v6 = CMIOLog(v4, v5);
    if (v6 && os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __71__CMIOExtensionProxyContext_handleClientMessageWithConnection_message___block_invoke_cold_1();
    }
  }

  xpc_dictionary_set_int64(*(a1 + 32), "errorReturn", -7);
LABEL_11:
  xpc_connection_send_message(*(a1 + 40), *(a1 + 32));
  xpc_release(*(a1 + 32));
}

void __71__CMIOExtensionProxyContext_handleClientMessageWithConnection_message___block_invoke_48(uint64_t a1, void *a2)
{
  v4 = MEMORY[0x2318F1BC0](a2);
  if (v4 == MEMORY[0x277D86480])
  {
    v7 = CMIOLog(v4, v5);
    if (v7 && os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __71__CMIOExtensionProxyContext_handleClientMessageWithConnection_message___block_invoke_48_cold_2();
    }
  }

  else
  {
    if (v4 == MEMORY[0x277D86468])
    {
      ++*(*(a1 + 40) + 52);
      [objc_loadWeak((*(a1 + 40) + 56)) proxyStreamHasStarted];
      applier[0] = MEMORY[0x277D85DD0];
      applier[1] = 3221225472;
      applier[2] = __71__CMIOExtensionProxyContext_handleClientMessageWithConnection_message___block_invoke_49;
      applier[3] = &unk_27885BF98;
      applier[4] = *(a1 + 32);
      xpc_dictionary_apply(a2, applier);
      goto LABEL_11;
    }

    v6 = CMIOLog(v4, v5);
    if (v6 && os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __71__CMIOExtensionProxyContext_handleClientMessageWithConnection_message___block_invoke_48_cold_1();
    }
  }

  xpc_dictionary_set_int64(*(a1 + 32), "errorReturn", -7);
LABEL_11:
  xpc_connection_send_message(*(a1 + 48), *(a1 + 32));
  xpc_release(*(a1 + 32));
}

void __71__CMIOExtensionProxyContext_handleClientMessageWithConnection_message___block_invoke_50(uint64_t a1, void *a2)
{
  v4 = MEMORY[0x2318F1BC0](a2);
  if (v4 == MEMORY[0x277D86480])
  {
    v7 = CMIOLog(v4, v5);
    if (v7 && os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __71__CMIOExtensionProxyContext_handleClientMessageWithConnection_message___block_invoke_50_cold_2();
    }

    goto LABEL_9;
  }

  if (v4 != MEMORY[0x277D86468])
  {
    v6 = CMIOLog(v4, v5);
    if (v6 && os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __71__CMIOExtensionProxyContext_handleClientMessageWithConnection_message___block_invoke_50_cold_1();
    }

LABEL_9:
    xpc_dictionary_set_int64(*(a1 + 32), "errorReturn", -7);
    goto LABEL_13;
  }

  v8 = *(a1 + 40);
  if (*(v8 + 52) >= 1)
  {
    [objc_loadWeak((v8 + 56)) proxyStreamsHaveStopped:1];
    --*(*(a1 + 40) + 52);
  }

  applier[0] = MEMORY[0x277D85DD0];
  applier[1] = 3221225472;
  applier[2] = __71__CMIOExtensionProxyContext_handleClientMessageWithConnection_message___block_invoke_51;
  applier[3] = &unk_27885BF98;
  applier[4] = *(a1 + 32);
  xpc_dictionary_apply(a2, applier);
LABEL_13:
  xpc_connection_send_message(*(a1 + 48), *(a1 + 32));
  xpc_release(*(a1 + 32));
}

void __71__CMIOExtensionProxyContext_handleClientMessageWithConnection_message___block_invoke_52(uint64_t a1, void *a2)
{
  v4 = MEMORY[0x2318F1BC0](a2);
  if (v4 == MEMORY[0x277D86480])
  {
    v7 = CMIOLog(v4, v5);
    if (v7 && os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __71__CMIOExtensionProxyContext_handleClientMessageWithConnection_message___block_invoke_52_cold_2();
    }
  }

  else
  {
    if (v4 == MEMORY[0x277D86468])
    {
      applier[0] = MEMORY[0x277D85DD0];
      applier[1] = 3221225472;
      applier[2] = __71__CMIOExtensionProxyContext_handleClientMessageWithConnection_message___block_invoke_53;
      applier[3] = &unk_27885BF98;
      applier[4] = *(a1 + 32);
      xpc_dictionary_apply(a2, applier);
      goto LABEL_11;
    }

    v6 = CMIOLog(v4, v5);
    if (v6 && os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __71__CMIOExtensionProxyContext_handleClientMessageWithConnection_message___block_invoke_52_cold_1();
    }
  }

  xpc_dictionary_set_int64(*(a1 + 32), "errorReturn", -7);
LABEL_11:
  xpc_connection_send_message(*(a1 + 40), *(a1 + 32));
  xpc_release(*(a1 + 32));
}

- (void)handleServerMessageWithConnection:(id)connection message:(id)message
{
  v35 = *MEMORY[0x277D85DE8];
  uint64 = xpc_dictionary_get_uint64(message, "MessageType");
  v9 = uint64;
  if (CMIOModuleLogLevel_once_0 != -1)
  {
    [CMIOExtensionProxyContext sendClientInfo];
  }

  if (CMIOModuleLogLevel_cmioLevel_0 >= 1)
  {
    uint64 = CMIOLog(uint64, v8);
    if (uint64)
    {
      v10 = uint64;
      uint64 = os_log_type_enabled(uint64, OS_LOG_TYPE_DEFAULT);
      if (uint64)
      {
        *buf = 136316163;
        v26 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProxy.m");
        v27 = 1024;
        v28 = 620;
        v29 = 2080;
        v30 = "[CMIOExtensionProxyContext handleServerMessageWithConnection:message:]";
        v31 = 2113;
        selfCopy = self;
        v33 = 2048;
        v34 = v9;
        _os_log_impl(&dword_22EA08000, v10, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %{private}@ %lld", buf, 0x30u);
      }
    }
  }

  v11 = MEMORY[0x277D86468];
  if (v9 <= 4)
  {
    if ((v9 - 1) < 4)
    {
      if (MEMORY[0x2318F1BC0](message) == v11)
      {
        dictionary = xpc_dictionary_get_dictionary(message, "param2");
        if (dictionary)
        {
          v13 = [CMIOExtensionPropertyState copyPropertyStatesFromXPCDictionary:dictionary];
          if ([objc_msgSend(v13 "allKeys")] && objc_msgSend(objc_msgSend(v13, "allKeys"), "containsObject:", 0x284358E38) && objc_msgSend(objc_msgSend(v13, "allKeys"), "containsObject:", 0x284358DB8) && objc_msgSend(objc_msgSend(objc_msgSend(v13, "objectForKeyedSubscript:", 0x284358E18), "value"), "intValue"))
          {
            v14 = [v13 objectForKeyedSubscript:0x284358E38];
            v15 = [v13 objectForKeyedSubscript:0x284358DD8];
            if (!v15)
            {
              v15 = [v13 objectForKeyedSubscript:0x284358DB8];
            }

            -[NSMutableDictionary setObject:forKeyedSubscript:](self->_deviceIDsByStreamID, "setObject:forKeyedSubscript:", [v15 value], objc_msgSend(v14, "value"));
          }
        }
      }

      goto LABEL_25;
    }

    goto LABEL_29;
  }

  if (v9 <= 7)
  {
    if (v9 != 5)
    {
      if (v9 == 7)
      {
        [(CMIOExtensionProxyContext *)self receivedSample:connection message:message];
        return;
      }

      goto LABEL_29;
    }

    goto LABEL_25;
  }

  if (v9 != 8)
  {
    if (v9 != 9)
    {
LABEL_29:
      v21 = CMIOLog(uint64, v8);
      if (v21 && os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [CMIOExtensionProxyContext handleServerMessageWithConnection:message:];
      }

      return;
    }

LABEL_25:
    if (MEMORY[0x2318F1BC0](message) == v11)
    {
      v16 = xpc_dictionary_create(0, 0, 0);
      applier[0] = MEMORY[0x277D85DD0];
      applier[1] = 3221225472;
      applier[2] = __71__CMIOExtensionProxyContext_handleServerMessageWithConnection_message___block_invoke;
      applier[3] = &unk_27885BF98;
      applier[4] = v16;
      xpc_dictionary_apply(message, applier);
      xpc_connection_send_message(self->_connection, v16);
      xpc_release(v16);
    }

    return;
  }

  reply = xpc_dictionary_create_reply(message);
  if (reply)
  {
    connection = self->_connection;
    queue = self->_queue;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __71__CMIOExtensionProxyContext_handleServerMessageWithConnection_message___block_invoke_55;
    handler[3] = &unk_27885C250;
    handler[4] = reply;
    handler[5] = connection;
    xpc_connection_send_message_with_reply(connection, message, queue, handler);
  }

  else
  {
    v22 = CMIOLog(0, v18);
    if (v22 && os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionProxyContext handleServerMessageWithConnection:message:];
    }
  }
}

void __71__CMIOExtensionProxyContext_handleServerMessageWithConnection_message___block_invoke_55(uint64_t a1, void *a2)
{
  v4 = MEMORY[0x2318F1BC0](a2);
  if (v4 == MEMORY[0x277D86480])
  {
    v7 = CMIOLog(v4, v5);
    if (v7 && os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __71__CMIOExtensionProxyContext_handleServerMessageWithConnection_message___block_invoke_55_cold_2();
    }
  }

  else
  {
    if (v4 == MEMORY[0x277D86468])
    {
      applier[0] = MEMORY[0x277D85DD0];
      applier[1] = 3221225472;
      applier[2] = __71__CMIOExtensionProxyContext_handleServerMessageWithConnection_message___block_invoke_56;
      applier[3] = &unk_27885BF98;
      applier[4] = *(a1 + 32);
      xpc_dictionary_apply(a2, applier);
      goto LABEL_11;
    }

    v6 = CMIOLog(v4, v5);
    if (v6 && os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __71__CMIOExtensionProxyContext_handleServerMessageWithConnection_message___block_invoke_55_cold_1();
    }
  }

  xpc_dictionary_set_int64(*(a1 + 32), "errorReturn", -7);
LABEL_11:
  xpc_connection_send_message(*(a1 + 40), *(a1 + 32));
  xpc_release(*(a1 + 32));
}

void __80__CMIOExtensionProxyContext_initWithConnection_serverConnection_queue_delegate___block_invoke_cold_1(uint64_t a1)
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProxy.m");
  xpc_connection_get_pid(*(a1 + 32));
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x2Cu);
}

void __80__CMIOExtensionProxyContext_initWithConnection_serverConnection_queue_delegate___block_invoke_22_cold_1(uint64_t a1)
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProxy.m");
  xpc_connection_get_pid(*(a1 + 32));
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x2Cu);
}

void __43__CMIOExtensionProxyContext_sendClientInfo__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProxy.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void __43__CMIOExtensionProxyContext_sendClientInfo__block_invoke_cold_2()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProxy.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void __43__CMIOExtensionProxyContext_sendClientInfo__block_invoke_cold_3()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProxy.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)receivedSample:message:.cold.1()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProxy.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)receivedSample:message:.cold.2()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProxy.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)handleClientMessageWithConnection:message:.cold.2()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProxy.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)handleClientMessageWithConnection:message:.cold.3()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProxy.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)handleClientMessageWithConnection:message:.cold.4()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProxy.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)handleClientMessageWithConnection:message:.cold.5()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProxy.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)handleClientMessageWithConnection:message:.cold.6()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProxy.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)handleClientMessageWithConnection:message:.cold.7()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProxy.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)handleClientMessageWithConnection:message:.cold.8()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProxy.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void __71__CMIOExtensionProxyContext_handleClientMessageWithConnection_message___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProxy.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void __71__CMIOExtensionProxyContext_handleClientMessageWithConnection_message___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProxy.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void __71__CMIOExtensionProxyContext_handleClientMessageWithConnection_message___block_invoke_48_cold_1()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProxy.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void __71__CMIOExtensionProxyContext_handleClientMessageWithConnection_message___block_invoke_48_cold_2()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProxy.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void __71__CMIOExtensionProxyContext_handleClientMessageWithConnection_message___block_invoke_50_cold_1()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProxy.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void __71__CMIOExtensionProxyContext_handleClientMessageWithConnection_message___block_invoke_50_cold_2()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProxy.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void __71__CMIOExtensionProxyContext_handleClientMessageWithConnection_message___block_invoke_52_cold_1()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProxy.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void __71__CMIOExtensionProxyContext_handleClientMessageWithConnection_message___block_invoke_52_cold_2()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProxy.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)handleServerMessageWithConnection:message:.cold.2()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProxy.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)handleServerMessageWithConnection:message:.cold.3()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProxy.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void __71__CMIOExtensionProxyContext_handleServerMessageWithConnection_message___block_invoke_55_cold_1()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProxy.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void __71__CMIOExtensionProxyContext_handleServerMessageWithConnection_message___block_invoke_55_cold_2()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProxy.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

@end