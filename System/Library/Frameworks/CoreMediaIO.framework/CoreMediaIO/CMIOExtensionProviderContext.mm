@interface CMIOExtensionProviderContext
- (CMIOExtensionProviderContext)initWithConnection:(id)connection;
- (NSString)description;
- (id)redactedDescription;
- (void)availableDeviceProperties:(id)properties message:(id)message;
- (void)availableDevicesChanged:(id)changed;
- (void)availablePluginProperties:(id)properties message:(id)message;
- (void)availableStreamProperties:(id)properties message:(id)message;
- (void)availableStreamsChangedWithDeviceID:(id)d streamIDs:(id)ds;
- (void)captureAsyncStillImage:(id)image message:(id)message;
- (void)dealloc;
- (void)devicePropertiesChangedWithDeviceID:(id)d propertyStates:(id)states;
- (void)devicePropertyStates:(id)states message:(id)message;
- (void)deviceStates:(id)states message:(id)message;
- (void)enqueueReactionEffect:(id)effect message:(id)message;
- (void)handleClientMessageWithConnection:(id)connection message:(id)message;
- (void)invalidate;
- (void)pluginPropertiesChanged:(id)changed;
- (void)pluginPropertyStatesForProperties:(id)properties message:(id)message;
- (void)pluginStates:(id)states message:(id)message;
- (void)pullSampleBufferForStreamID:(id)d replyq:(id)replyq reply:(id)reply;
- (void)receivedSampleWithStreamID:(id)d sample:(id)sample;
- (void)setClientInfo:(id)info message:(id)message;
- (void)setDevicePropertyValues:(id)values message:(id)message;
- (void)setPluginPropertyValues:(id)values message:(id)message;
- (void)setStreamPropertyValues:(id)values message:(id)message;
- (void)startStream:(id)stream message:(id)message;
- (void)stopStream:(id)stream message:(id)message;
- (void)streamPropertiesChangedWithStreamID:(id)d propertyStates:(id)states;
- (void)streamPropertyStates:(id)states message:(id)message;
- (void)streamScheduledOutputChangedWithStreamID:(id)d scheduledOutput:(id)output;
- (void)updateNonStreamingProxyFrontedExtensionPIDs:(id)ds message:(id)message;
@end

@implementation CMIOExtensionProviderContext

- (CMIOExtensionProviderContext)initWithConnection:(id)connection
{
  v22 = *MEMORY[0x277D85DE8];
  if (connection)
  {
    v20.receiver = self;
    v20.super_class = CMIOExtensionProviderContext;
    v4 = [(CMIOExtensionProviderContext *)&v20 init];
    if (v4)
    {
      v4->_connection = connection;
      v4->_transaction = os_transaction_create();
      v4->_clientSourcedByNonStreamingProxyFrontedExtension = 0;
      objc_initWeak(&location, v4);
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __51__CMIOExtensionProviderContext_initWithConnection___block_invoke;
      handler[3] = &unk_27885C1C0;
      objc_copyWeak(&v18, &location);
      handler[4] = connection;
      xpc_connection_set_event_handler(connection, handler);
      xpc_connection_activate(connection);
      xpc_connection_get_audit_token();
      pid = xpc_connection_get_pid(connection);
      uUID = [MEMORY[0x277CCAD78] UUID];
      if ([+[CMIOExtensionProviderServer internalDaemon] sharedServer]
      {
        memset(buf, 0, 32);
        v7 = [CMIOExtensionProvider newActivityAttributionWithToken:buf];
        v8 = 0;
      }

      else
      {
        v7 = 0;
        v8 = 3;
      }

      v9 = [CMIOExtensionClient alloc];
      memset(buf, 0, 32);
      v10 = [(CMIOExtensionClient *)v9 initWithPID:pid clientID:uUID auditToken:buf stAttribution:v7 isToProxy:0 isFromProxyExtensionManager:0];
      v4->_clientInfo = v10;
      [(CMIOExtensionClient *)v10 setMicrophoneAuthorizationStatus:v8];
      [(CMIOExtensionClient *)v4->_clientInfo setCameraAuthorizationStatus:v8];
      v4->_description = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<CMIOExtensionProviderContext: %@>", v4->_clientInfo];
      v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<CMIOExtensionProviderContext: ->"];
      v4->_redactedDescription = v11;
      v13 = CMIOLog(v11, v12);
      v14 = v13;
      if (v13 && os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v15 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
        *buf = 136315907;
        *&buf[4] = v15;
        *&buf[12] = 1024;
        *&buf[14] = 125;
        *&buf[18] = 2080;
        *&buf[20] = "[CMIOExtensionProviderContext initWithConnection:]";
        *&buf[28] = 2113;
        *&buf[30] = v4;
        _os_log_impl(&dword_22EA08000, v14, OS_LOG_TYPE_INFO, "%s:%d:%s %{private}@", buf, 0x26u);
      }

      objc_destroyWeak(&v18);
      objc_destroyWeak(&location);
    }
  }

  else
  {

    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"Invalid argument"];
    return 0;
  }

  return v4;
}

void __51__CMIOExtensionProviderContext_initWithConnection___block_invoke(uint64_t a1, uint64_t a2)
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
        __51__CMIOExtensionProviderContext_initWithConnection___block_invoke_cold_1(a1);
      }
    }

    if (a2 == MEMORY[0x277D863F0])
    {
      xpc_connection_cancel(*(a1 + 32));
    }

    else if (a2 == MEMORY[0x277D863F8] && WeakRetained && (WeakRetained[40] & 1) == 0)
    {
      v9 = CMIOLog(v7, v8);
      if (v9)
      {
        v10 = v9;
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v11 = 136315907;
          v12 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
          v13 = 1024;
          v14 = 72;
          v15 = 2080;
          v16 = "[CMIOExtensionProviderContext initWithConnection:]_block_invoke";
          v17 = 2113;
          v18 = WeakRetained;
          _os_log_impl(&dword_22EA08000, v10, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %{private}@, connection is invalidated", &v11, 0x26u);
        }
      }

      [+[CMIOExtensionProvider sharedProvider](CMIOExtensionProvider "sharedProvider")];
      [WeakRetained invalidate];
    }
  }

  else if (v5 == MEMORY[0x277D86468])
  {
    [WeakRetained handleClientMessageWithConnection:*(a1 + 32) message:a2];
  }
}

- (void)dealloc
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = CMIOLog(self, a2);
  if (v3)
  {
    v4 = v3;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315907;
      v8 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
      v9 = 1024;
      v10 = 132;
      v11 = 2080;
      v12 = "[CMIOExtensionProviderContext dealloc]";
      v13 = 2113;
      selfCopy = self;
      _os_log_impl(&dword_22EA08000, v4, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %{private}@", buf, 0x26u);
    }
  }

  [+[CMIOExtensionProvider sharedProvider](CMIOExtensionProvider "sharedProvider")];

  voucher = self->_voucher;
  if (voucher)
  {
  }

  v6.receiver = self;
  v6.super_class = CMIOExtensionProviderContext;
  [(CMIOExtensionProviderContext *)&v6 dealloc];
}

- (NSString)description
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
  v14 = *MEMORY[0x277D85DE8];
  v3 = CMIOLog(self, a2);
  if (v3)
  {
    v4 = v3;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v6 = 136315907;
      v7 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
      v8 = 1024;
      v9 = 159;
      v10 = 2080;
      v11 = "[CMIOExtensionProviderContext invalidate]";
      v12 = 2113;
      selfCopy = self;
      _os_log_impl(&dword_22EA08000, v4, OS_LOG_TYPE_INFO, "%s:%d:%s %{private}@", &v6, 0x26u);
    }
  }

  connection = self->_connection;
  if (connection)
  {
    xpc_connection_cancel(connection);
  }

  self->_transaction = 0;
  self->_invalidated = 1;
}

- (void)handleClientMessageWithConnection:(id)connection message:(id)message
{
  v29 = *MEMORY[0x277D85DE8];
  uint64 = xpc_dictionary_get_uint64(message, "MessageType");
  v9 = CMIOLog(uint64, v8);
  if (v9)
  {
    v11 = v9;
    v9 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
    if (v9)
    {
      v12 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
      pid = xpc_connection_get_pid(connection);
      clientID = [(CMIOExtensionClient *)self->_clientInfo clientID];
      v17 = 136316419;
      v18 = v12;
      v19 = 1024;
      v20 = 174;
      v21 = 2080;
      v22 = "[CMIOExtensionProviderContext handleClientMessageWithConnection:message:]";
      v23 = 1025;
      v24 = pid;
      v25 = 2113;
      v26 = clientID;
      v27 = 2048;
      v28 = uint64;
      _os_log_impl(&dword_22EA08000, v11, OS_LOG_TYPE_INFO, "%s:%d:%s [%{private}d] CID %{private}@ %lld", &v17, 0x36u);
    }
  }

  switch(uint64)
  {
    case 1uLL:
      [(CMIOExtensionProviderContext *)self pluginStates:connection message:message];
      break;
    case 2uLL:
      [(CMIOExtensionProviderContext *)self availablePluginProperties:connection message:message];
      break;
    case 3uLL:
      [(CMIOExtensionProviderContext *)self pluginPropertyStatesForProperties:connection message:message];
      break;
    case 4uLL:
      [(CMIOExtensionProviderContext *)self setPluginPropertyValues:connection message:message];
      break;
    case 5uLL:
      [(CMIOExtensionProviderContext *)self setClientInfo:connection message:message];
      break;
    case 0xAuLL:
      [(CMIOExtensionProviderContext *)self deviceStates:connection message:message];
      break;
    case 0xBuLL:
      [(CMIOExtensionProviderContext *)self availableDeviceProperties:connection message:message];
      break;
    case 0xCuLL:
      [(CMIOExtensionProviderContext *)self devicePropertyStates:connection message:message];
      break;
    case 0xDuLL:
      [(CMIOExtensionProviderContext *)self setDevicePropertyValues:connection message:message];
      break;
    case 0x14uLL:
      [(CMIOExtensionProviderContext *)self availableStreamProperties:connection message:message];
      break;
    case 0x15uLL:
      [(CMIOExtensionProviderContext *)self streamPropertyStates:connection message:message];
      break;
    case 0x16uLL:
      [(CMIOExtensionProviderContext *)self setStreamPropertyValues:connection message:message];
      break;
    case 0x17uLL:
      if (!self->_transaction)
      {
        self->_transaction = os_transaction_create();
      }

      [(CMIOExtensionProviderContext *)self startStream:connection message:message];
      break;
    case 0x18uLL:
      [(CMIOExtensionProviderContext *)self stopStream:connection message:message];

      self->_transaction = 0;
      break;
    case 0x19uLL:

      self->_transaction = 0;
      reply = xpc_dictionary_create_reply(message);
      xpc_dictionary_set_int64(reply, "errorReturn", 0);
      xpc_connection_send_message(connection, reply);
      xpc_release(reply);
      break;
    case 0x1AuLL:
      [(CMIOExtensionProviderContext *)self captureAsyncStillImage:connection message:message];
      break;
    case 0x1BuLL:
      [(CMIOExtensionProviderContext *)self updateNonStreamingProxyFrontedExtensionPIDs:connection message:message];
      break;
    case 0x1CuLL:
      [(CMIOExtensionProviderContext *)self enqueueReactionEffect:connection message:message];
      break;
    default:
      v15 = CMIOLog(v9, v10);
      if (v15 && os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [CMIOExtensionProviderContext handleClientMessageWithConnection:message:];
      }

      break;
  }
}

- (void)availablePluginProperties:(id)properties message:(id)message
{
  reply = xpc_dictionary_create_reply(message);
  if (reply)
  {
    v8 = reply;
    xpc_retain(reply);
    v9 = +[CMIOExtensionProvider sharedProvider];
    clientID = [(CMIOExtensionClient *)self->_clientInfo clientID];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __66__CMIOExtensionProviderContext_availablePluginProperties_message___block_invoke;
    v12[3] = &unk_27885C3C8;
    v12[4] = v8;
    v12[5] = properties;
    [v9 availablePluginPropertiesForClientID:clientID reply:v12];
    xpc_release(v8);
  }

  else
  {
    v11 = CMIOLog(0, v7);
    if (v11)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [CMIOExtensionProviderContext availablePluginProperties:message:];
      }
    }
  }
}

void __66__CMIOExtensionProviderContext_availablePluginProperties_message___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = [a2 allObjects];
  if (!a3 && v5)
  {
    v7 = cmio_XPCMessageSetCFArray(*(a1 + 32), "param1", v5);
    if (!v7)
    {
LABEL_13:
      v13 = *(a1 + 32);
      v12 = 0;
      goto LABEL_14;
    }

    v9 = CMIOLog(v7, v8);
    if (v9 && os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __66__CMIOExtensionProviderContext_availablePluginProperties_message___block_invoke_cold_1();
    }

    v5 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-5 userInfo:0];
    a3 = v5;
  }

  if (!a3)
  {
    goto LABEL_13;
  }

  v10 = CMIOLog(v5, v6);
  if (v10 && os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    __66__CMIOExtensionProviderContext_availablePluginProperties_message___block_invoke_cold_2();
  }

  v11 = *(a1 + 32);
  v12 = [a3 code];
  v13 = v11;
LABEL_14:
  xpc_dictionary_set_int64(v13, "errorReturn", v12);
  xpc_connection_send_message(*(a1 + 40), *(a1 + 32));
  xpc_release(*(a1 + 32));
}

- (void)pluginStates:(id)states message:(id)message
{
  reply = xpc_dictionary_create_reply(message);
  if (reply)
  {
    v8 = reply;
    xpc_retain(reply);
    v9 = +[CMIOExtensionProvider sharedProvider];
    clientID = [(CMIOExtensionClient *)self->_clientInfo clientID];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __53__CMIOExtensionProviderContext_pluginStates_message___block_invoke;
    v12[3] = &unk_27885C3F0;
    v12[4] = v8;
    v12[5] = states;
    [v9 pluginStatesForClientID:clientID reply:v12];
    xpc_release(v8);
  }

  else
  {
    v11 = CMIOLog(0, v7);
    if (v11)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [CMIOExtensionProviderContext pluginStates:message:];
      }
    }
  }
}

void __53__CMIOExtensionProviderContext_pluginStates_message___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v5 = a5;
  v8 = a1;
  v43 = *MEMORY[0x277D85DE8];
  if (!a2 || a5)
  {
    goto LABEL_9;
  }

  v9 = [CMIOExtensionPropertyState copyXPCDictionaryFromPropertyStates:a2];
  if (!v9)
  {
    v12 = CMIOLog(0, v10);
    if (v12 && os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __53__CMIOExtensionProviderContext_pluginStates_message___block_invoke_cold_1();
    }

    a1 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-5 userInfo:0];
    v5 = a1;
LABEL_9:
    if (v5)
    {
      goto LABEL_40;
    }

    goto LABEL_10;
  }

  v11 = v9;
  xpc_dictionary_set_value(*(v8 + 32), "param1", v9);
  xpc_release(v11);
LABEL_10:
  if (![a3 count])
  {
    goto LABEL_48;
  }

  v13 = xpc_array_create(0, 0);
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v5 = [a3 countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v5)
  {
    v14 = *v38;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v38 != v14)
        {
          objc_enumerationMutation(a3);
        }

        v16 = [CMIOExtensionPropertyState copyXPCDictionaryFromPropertyStates:*(*(&v37 + 1) + 8 * i)];
        if (!v16)
        {
          v19 = CMIOLog(0, v17);
          if (v19 && os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            __53__CMIOExtensionProviderContext_pluginStates_message___block_invoke_cold_2();
          }

          v5 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-5 userInfo:0];
          goto LABEL_24;
        }

        v18 = v16;
        xpc_array_append_value(v13, v16);
        xpc_release(v18);
      }

      v5 = [a3 countByEnumeratingWithState:&v37 objects:v42 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_24:
  xpc_dictionary_set_value(*(v8 + 32), "param2", v13);
  xpc_release(v13);
  if (!v5)
  {
LABEL_48:
    if (![a4 count])
    {
      goto LABEL_44;
    }

    v20 = xpc_array_create(0, 0);
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v21 = [a4 countByEnumeratingWithState:&v33 objects:v41 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v34;
      while (2)
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v34 != v23)
          {
            objc_enumerationMutation(a4);
          }

          v25 = [CMIOExtensionPropertyState copyXPCDictionaryFromPropertyStates:*(*(&v33 + 1) + 8 * j)];
          if (!v25)
          {
            v28 = CMIOLog(0, v26);
            if (v28 && os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
            {
              __53__CMIOExtensionProviderContext_pluginStates_message___block_invoke_cold_3();
            }

            v5 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-5 userInfo:0];
            goto LABEL_39;
          }

          v27 = v25;
          xpc_array_append_value(v20, v25);
          xpc_release(v27);
        }

        v22 = [a4 countByEnumeratingWithState:&v33 objects:v41 count:16];
        if (v22)
        {
          continue;
        }

        break;
      }
    }

    v5 = 0;
LABEL_39:
    xpc_dictionary_set_value(*(v8 + 32), "param3", v20);
    xpc_release(v20);
    if (!v5)
    {
LABEL_44:
      v32 = *(v8 + 32);
      v31 = 0;
      goto LABEL_45;
    }
  }

LABEL_40:
  v29 = CMIOLog(a1, a2);
  if (v29 && os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    __53__CMIOExtensionProviderContext_pluginStates_message___block_invoke_cold_4();
  }

  v30 = *(v8 + 32);
  v31 = [v5 code];
  v32 = v30;
LABEL_45:
  xpc_dictionary_set_int64(v32, "errorReturn", v31);
  xpc_connection_send_message(*(v8 + 40), *(v8 + 32));
  xpc_release(*(v8 + 32));
}

- (void)pluginPropertyStatesForProperties:(id)properties message:(id)message
{
  reply = xpc_dictionary_create_reply(message);
  if (reply)
  {
    v9 = reply;
    cf = 0;
    cmio_XPCMessageCopyCFArray(message, "param1", &cf);
    if (cf)
    {
      v10 = [MEMORY[0x277CBEB98] setWithArray:?];
      CFRelease(cf);
    }

    else
    {
      v10 = 0;
    }

    xpc_retain(v9);
    v12 = +[CMIOExtensionProvider sharedProvider];
    clientID = [(CMIOExtensionClient *)self->_clientInfo clientID];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __74__CMIOExtensionProviderContext_pluginPropertyStatesForProperties_message___block_invoke;
    v14[3] = &unk_27885C418;
    v14[4] = v9;
    v14[5] = properties;
    [v12 pluginPropertyStatesForClientID:clientID properties:v10 reply:v14];
    xpc_release(v9);
  }

  else
  {
    v11 = CMIOLog(0, v8);
    if (v11 && os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionProviderContext pluginPropertyStatesForProperties:message:];
    }
  }
}

void __74__CMIOExtensionProviderContext_pluginPropertyStatesForProperties_message___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = a1;
  if (a2 && !a3)
  {
    v5 = [CMIOExtensionPropertyState copyXPCDictionaryFromPropertyStates:a2];
    if (v5)
    {
      v7 = v5;
      xpc_dictionary_set_value(*(v4 + 32), "param1", v5);
      xpc_release(v7);
LABEL_14:
      v12 = *(v4 + 32);
      v11 = 0;
      goto LABEL_15;
    }

    v8 = CMIOLog(0, v6);
    if (v8 && os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __74__CMIOExtensionProviderContext_pluginPropertyStatesForProperties_message___block_invoke_cold_1();
    }

    a1 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-5 userInfo:0];
    v3 = a1;
  }

  if (!v3)
  {
    goto LABEL_14;
  }

  v9 = CMIOLog(a1, a2);
  if (v9 && os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    __74__CMIOExtensionProviderContext_pluginPropertyStatesForProperties_message___block_invoke_cold_2();
  }

  v10 = *(v4 + 32);
  v11 = [v3 code];
  v12 = v10;
LABEL_15:
  xpc_dictionary_set_int64(v12, "errorReturn", v11);
  xpc_connection_send_message(*(v4 + 40), *(v4 + 32));
  xpc_release(*(v4 + 32));
}

- (void)setPluginPropertyValues:(id)values message:(id)message
{
  reply = xpc_dictionary_create_reply(message);
  if (reply)
  {
    v9 = reply;
    value = xpc_dictionary_get_value(message, "param1");
    if (value)
    {
      v11 = [CMIOExtensionPropertyState copyPropertyStatesFromXPCDictionary:value];
      if (v11)
      {
        v12 = v11;
        v13 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v11, "count")}];
        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = __64__CMIOExtensionProviderContext_setPluginPropertyValues_message___block_invoke;
        v24[3] = &unk_27885BF70;
        v24[4] = v13;
        [v12 enumerateKeysAndObjectsUsingBlock:v24];
        xpc_retain(v9);
        v14 = +[CMIOExtensionProvider sharedProvider];
        clientID = [(CMIOExtensionClient *)self->_clientInfo clientID];
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __64__CMIOExtensionProviderContext_setPluginPropertyValues_message___block_invoke_31;
        v23[3] = &unk_27885C440;
        v23[4] = v9;
        v23[5] = values;
        [v14 setPluginPropertyValuesForClientID:clientID propertyValues:v13 reply:v23];
      }

      else
      {
        xpc_dictionary_set_int64(v9, "errorReturn", -5);
        xpc_connection_send_message(values, v9);
        v22 = CMIOLog(v20, v21);
        if (v22)
        {
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            [CMIOExtensionProviderContext setPluginPropertyValues:message:];
          }
        }
      }
    }

    else
    {
      xpc_dictionary_set_int64(v9, "errorReturn", -1);
      xpc_connection_send_message(values, v9);
      v19 = CMIOLog(v17, v18);
      if (v19 && os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [CMIOExtensionProviderContext setPluginPropertyValues:message:];
      }
    }

    xpc_release(v9);
  }

  else
  {
    v16 = CMIOLog(0, v8);
    if (v16 && os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionProviderContext setPluginPropertyValues:message:];
    }
  }
}

uint64_t __64__CMIOExtensionProviderContext_setPluginPropertyValues_message___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [a3 value];
  v6 = *(a1 + 32);

  return [v6 setObject:v5 forKeyedSubscript:a2];
}

void __64__CMIOExtensionProviderContext_setPluginPropertyValues_message___block_invoke_31(uint64_t a1, void *a2)
{
  if (a2)
  {
    v4 = CMIOLog(a1, a2);
    if (v4 && os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __64__CMIOExtensionProviderContext_setPluginPropertyValues_message___block_invoke_31_cold_1();
    }

    v5 = *(a1 + 32);
    v6 = [a2 code];
    v7 = v5;
  }

  else
  {
    v7 = *(a1 + 32);
    v6 = 0;
  }

  xpc_dictionary_set_int64(v7, "errorReturn", v6);
  xpc_connection_send_message(*(a1 + 40), *(a1 + 32));
  xpc_release(*(a1 + 32));
}

- (void)availableDeviceProperties:(id)properties message:(id)message
{
  reply = xpc_dictionary_create_reply(message);
  if (reply)
  {
    v9 = reply;
    cf = 0;
    v10 = cmio_XPCMessageCopyCFString(message, "param1", &cf);
    if (cf)
    {
      v12 = objc_alloc(MEMORY[0x277CCAD78]);
      v13 = [v12 initWithUUIDString:cf];
      CFRelease(cf);
      xpc_retain(v9);
      v14 = +[CMIOExtensionProvider sharedProvider];
      clientID = [(CMIOExtensionClient *)self->_clientInfo clientID];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __66__CMIOExtensionProviderContext_availableDeviceProperties_message___block_invoke;
      v18[3] = &unk_27885C3C8;
      v18[4] = v9;
      v18[5] = properties;
      [v14 availableDevicePropertiesForClientID:clientID deviceID:v13 reply:v18];
    }

    else
    {
      v17 = CMIOLog(v10, v11);
      if (v17)
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          [CMIOExtensionProviderContext availableDeviceProperties:message:];
        }
      }

      v13 = 0;
    }

    xpc_release(v9);
  }

  else
  {
    v16 = CMIOLog(0, v8);
    if (v16 && os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionProviderContext availableDeviceProperties:message:];
    }
  }
}

void __66__CMIOExtensionProviderContext_availableDeviceProperties_message___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = [a2 allObjects];
  if (!a3 && v5)
  {
    v7 = cmio_XPCMessageSetCFArray(*(a1 + 32), "param1", v5);
    if (!v7)
    {
LABEL_13:
      v13 = *(a1 + 32);
      v12 = 0;
      goto LABEL_14;
    }

    v9 = CMIOLog(v7, v8);
    if (v9 && os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __66__CMIOExtensionProviderContext_availableDeviceProperties_message___block_invoke_cold_1();
    }

    v5 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-5 userInfo:0];
    a3 = v5;
  }

  if (!a3)
  {
    goto LABEL_13;
  }

  v10 = CMIOLog(v5, v6);
  if (v10 && os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    __66__CMIOExtensionProviderContext_availableDeviceProperties_message___block_invoke_cold_2();
  }

  v11 = *(a1 + 32);
  v12 = [a3 code];
  v13 = v11;
LABEL_14:
  xpc_dictionary_set_int64(v13, "errorReturn", v12);
  xpc_connection_send_message(*(a1 + 40), *(a1 + 32));
  xpc_release(*(a1 + 32));
}

- (void)deviceStates:(id)states message:(id)message
{
  reply = xpc_dictionary_create_reply(message);
  if (reply)
  {
    v9 = reply;
    cf = 0;
    v10 = cmio_XPCMessageCopyCFString(message, "param1", &cf);
    if (cf)
    {
      v12 = objc_alloc(MEMORY[0x277CCAD78]);
      v13 = [v12 initWithUUIDString:cf];
      CFRelease(cf);
      xpc_retain(v9);
      v14 = +[CMIOExtensionProvider sharedProvider];
      clientID = [(CMIOExtensionClient *)self->_clientInfo clientID];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __53__CMIOExtensionProviderContext_deviceStates_message___block_invoke;
      v18[3] = &unk_27885C468;
      v18[4] = v9;
      v18[5] = states;
      [v14 deviceStatesForClientID:clientID deviceID:v13 reply:v18];
    }

    else
    {
      v17 = CMIOLog(v10, v11);
      if (v17)
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          [CMIOExtensionProviderContext deviceStates:message:];
        }
      }

      v13 = 0;
    }

    xpc_release(v9);
  }

  else
  {
    v16 = CMIOLog(0, v8);
    if (v16 && os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionProviderContext deviceStates:message:];
    }
  }
}

void __53__CMIOExtensionProviderContext_deviceStates_message___block_invoke(xpc_object_t *a1, uint64_t a2, void *a3, xpc_object_t *a4)
{
  v4 = a4;
  v6 = a1;
  v39 = *MEMORY[0x277D85DE8];
  if (!a2 || a4)
  {
    goto LABEL_9;
  }

  v7 = [CMIOExtensionPropertyState copyXPCDictionaryFromPropertyStates:a2];
  if (!v7)
  {
    v10 = CMIOLog(0, v8);
    if (v10 && os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __53__CMIOExtensionProviderContext_deviceStates_message___block_invoke_cold_1();
    }

    a1 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-5 userInfo:0];
    v4 = a1;
LABEL_9:
    if (v4)
    {
      goto LABEL_27;
    }

    goto LABEL_10;
  }

  v9 = v7;
  xpc_dictionary_set_value(v6[4], "param1", v7);
  xpc_release(v9);
LABEL_10:
  if (![a3 count])
  {
    goto LABEL_31;
  }

  v27 = v6;
  v11 = xpc_array_create(0, 0);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v12 = [a3 countByEnumeratingWithState:&v28 objects:v38 count:16];
  if (v12)
  {
    v13 = v12;
    v4 = 0;
    v14 = *v29;
    v15 = *MEMORY[0x277CCA590];
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v29 != v14)
        {
          objc_enumerationMutation(a3);
        }

        v17 = [CMIOExtensionPropertyState copyXPCDictionaryFromPropertyStates:*(*(&v28 + 1) + 8 * i)];
        if (v17)
        {
          v19 = v17;
          xpc_array_append_value(v11, v17);
          xpc_release(v19);
        }

        else
        {
          v20 = CMIOLog(0, v18);
          if (v20)
          {
            v21 = v20;
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              v22 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
              *buf = 136315650;
              v33 = v22;
              v34 = 1024;
              v35 = 533;
              v36 = 2080;
              v37 = "[CMIOExtensionProviderContext deviceStates:message:]_block_invoke";
              _os_log_error_impl(&dword_22EA08000, v21, OS_LOG_TYPE_ERROR, "%s:%d:%s copyXPCDictionaryFromPropertyStates failed", buf, 0x1Cu);
            }
          }

          v4 = [MEMORY[0x277CCA9B8] errorWithDomain:v15 code:-5 userInfo:0];
        }
      }

      v13 = [a3 countByEnumeratingWithState:&v28 objects:v38 count:16];
    }

    while (v13);
  }

  else
  {
    v4 = 0;
  }

  v6 = v27;
  xpc_dictionary_set_value(v27[4], "param2", v11);
  xpc_release(v11);
  if (!v4)
  {
LABEL_31:
    v26 = v6[4];
    v25 = 0;
    goto LABEL_32;
  }

LABEL_27:
  v23 = CMIOLog(a1, a2);
  if (v23 && os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    __53__CMIOExtensionProviderContext_deviceStates_message___block_invoke_cold_2();
  }

  v24 = v6[4];
  v25 = [(xpc_object_t *)v4 code];
  v26 = v24;
LABEL_32:
  xpc_dictionary_set_int64(v26, "errorReturn", v25);
  xpc_connection_send_message(v6[5], v6[4]);
  xpc_release(v6[4]);
}

- (void)devicePropertyStates:(id)states message:(id)message
{
  reply = xpc_dictionary_create_reply(message);
  if (reply)
  {
    v9 = reply;
    cf = 0;
    v10 = cmio_XPCMessageCopyCFString(message, "param1", &cf);
    if (cf)
    {
      v12 = objc_alloc(MEMORY[0x277CCAD78]);
      v13 = [v12 initWithUUIDString:cf];
      CFRelease(cf);
      v20 = 0;
      cmio_XPCMessageCopyCFArray(message, "param2", &v20);
      if (v20)
      {
        v14 = [MEMORY[0x277CBEB98] setWithArray:?];
        CFRelease(v20);
      }

      else
      {
        v14 = 0;
      }

      xpc_retain(v9);
      v17 = +[CMIOExtensionProvider sharedProvider];
      clientID = [(CMIOExtensionClient *)self->_clientInfo clientID];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __61__CMIOExtensionProviderContext_devicePropertyStates_message___block_invoke;
      v19[3] = &unk_27885C418;
      v19[4] = v9;
      v19[5] = states;
      [v17 devicePropertyStatesForClientID:clientID deviceID:v13 properties:v14 reply:v19];
    }

    else
    {
      v16 = CMIOLog(v10, v11);
      if (v16 && os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [CMIOExtensionProviderContext devicePropertyStates:message:];
      }

      v13 = 0;
    }

    xpc_release(v9);
  }

  else
  {
    v15 = CMIOLog(0, v8);
    if (v15 && os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionProviderContext devicePropertyStates:message:];
    }
  }
}

void __61__CMIOExtensionProviderContext_devicePropertyStates_message___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = a1;
  if (a2 && !a3)
  {
    v5 = [CMIOExtensionPropertyState copyXPCDictionaryFromPropertyStates:a2];
    if (v5)
    {
      v7 = v5;
      xpc_dictionary_set_value(*(v4 + 32), "param1", v5);
      xpc_release(v7);
LABEL_14:
      v12 = *(v4 + 32);
      v11 = 0;
      goto LABEL_15;
    }

    v8 = CMIOLog(0, v6);
    if (v8 && os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __61__CMIOExtensionProviderContext_devicePropertyStates_message___block_invoke_cold_1();
    }

    a1 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-5 userInfo:0];
    v3 = a1;
  }

  if (!v3)
  {
    goto LABEL_14;
  }

  v9 = CMIOLog(a1, a2);
  if (v9 && os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    __61__CMIOExtensionProviderContext_devicePropertyStates_message___block_invoke_cold_2();
  }

  v10 = *(v4 + 32);
  v11 = [v3 code];
  v12 = v10;
LABEL_15:
  xpc_dictionary_set_int64(v12, "errorReturn", v11);
  xpc_connection_send_message(*(v4 + 40), *(v4 + 32));
  xpc_release(*(v4 + 32));
}

- (void)setDevicePropertyValues:(id)values message:(id)message
{
  reply = xpc_dictionary_create_reply(message);
  if (reply)
  {
    v9 = reply;
    v30 = 0;
    v10 = cmio_XPCMessageCopyCFString(message, "param1", &v30);
    if (v30)
    {
      v12 = objc_alloc(MEMORY[0x277CCAD78]);
      v13 = [v12 initWithUUIDString:v30];
      CFRelease(v30);
      value = xpc_dictionary_get_value(message, "param2");
      if (value)
      {
        v15 = [CMIOExtensionPropertyState copyPropertyStatesFromXPCDictionary:value];
        if (v15)
        {
          v16 = v15;
          v17 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v15, "count")}];
          v29[0] = MEMORY[0x277D85DD0];
          v29[1] = 3221225472;
          v29[2] = __64__CMIOExtensionProviderContext_setDevicePropertyValues_message___block_invoke;
          v29[3] = &unk_27885BF70;
          v29[4] = v17;
          [v16 enumerateKeysAndObjectsUsingBlock:v29];
          xpc_retain(v9);
          v18 = +[CMIOExtensionProvider sharedProvider];
          clientID = [(CMIOExtensionClient *)self->_clientInfo clientID];
          v28[0] = MEMORY[0x277D85DD0];
          v28[1] = 3221225472;
          v28[2] = __64__CMIOExtensionProviderContext_setDevicePropertyValues_message___block_invoke_34;
          v28[3] = &unk_27885C440;
          v28[4] = v9;
          v28[5] = values;
          [v18 setDevicePropertyValuesForClientID:clientID deviceID:v13 propertyValues:v17 reply:v28];
        }

        else
        {
          xpc_dictionary_set_int64(v9, "errorReturn", -1);
          xpc_connection_send_message(values, v9);
          v27 = CMIOLog(v25, v26);
          if (v27)
          {
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              [CMIOExtensionProviderContext setDevicePropertyValues:message:];
            }
          }
        }
      }

      else
      {
        xpc_dictionary_set_int64(v9, "errorReturn", -1);
        xpc_connection_send_message(values, v9);
        v24 = CMIOLog(v22, v23);
        if (v24 && os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          [CMIOExtensionProviderContext setDevicePropertyValues:message:];
        }
      }
    }

    else
    {
      v21 = CMIOLog(v10, v11);
      v13 = v21;
      if (v21)
      {
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          [CMIOExtensionProviderContext setDevicePropertyValues:message:];
        }

        v13 = 0;
      }
    }

    xpc_release(v9);
  }

  else
  {
    v20 = CMIOLog(0, v8);
    if (v20 && os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionProviderContext setDevicePropertyValues:message:];
    }
  }
}

uint64_t __64__CMIOExtensionProviderContext_setDevicePropertyValues_message___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [a3 value];
  v6 = *(a1 + 32);

  return [v6 setObject:v5 forKeyedSubscript:a2];
}

void __64__CMIOExtensionProviderContext_setDevicePropertyValues_message___block_invoke_34(uint64_t a1, void *a2)
{
  if (a2)
  {
    v4 = CMIOLog(a1, a2);
    if (v4 && os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __64__CMIOExtensionProviderContext_setDevicePropertyValues_message___block_invoke_34_cold_1();
    }

    v5 = *(a1 + 32);
    v6 = [a2 code];
    v7 = v5;
  }

  else
  {
    v7 = *(a1 + 32);
    v6 = 0;
  }

  xpc_dictionary_set_int64(v7, "errorReturn", v6);
  xpc_connection_send_message(*(a1 + 40), *(a1 + 32));
  xpc_release(*(a1 + 32));
}

- (void)availableStreamProperties:(id)properties message:(id)message
{
  reply = xpc_dictionary_create_reply(message);
  if (reply)
  {
    v9 = reply;
    cf = 0;
    v10 = cmio_XPCMessageCopyCFString(message, "param1", &cf);
    if (cf)
    {
      v12 = objc_alloc(MEMORY[0x277CCAD78]);
      v13 = [v12 initWithUUIDString:cf];
      CFRelease(cf);
      xpc_retain(v9);
      v14 = +[CMIOExtensionProvider sharedProvider];
      clientID = [(CMIOExtensionClient *)self->_clientInfo clientID];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __66__CMIOExtensionProviderContext_availableStreamProperties_message___block_invoke;
      v18[3] = &unk_27885C3C8;
      v18[4] = v9;
      v18[5] = properties;
      [v14 availableStreamPropertiesForClientID:clientID streamID:v13 reply:v18];
    }

    else
    {
      v17 = CMIOLog(v10, v11);
      if (v17)
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          [CMIOExtensionProviderContext availableStreamProperties:message:];
        }
      }

      v13 = 0;
    }

    xpc_release(v9);
  }

  else
  {
    v16 = CMIOLog(0, v8);
    if (v16 && os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionProviderContext availableStreamProperties:message:];
    }
  }
}

void __66__CMIOExtensionProviderContext_availableStreamProperties_message___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = [a2 allObjects];
  if (!a3 && v5)
  {
    v7 = cmio_XPCMessageSetCFArray(*(a1 + 32), "param1", v5);
    if (!v7)
    {
LABEL_13:
      v13 = *(a1 + 32);
      v12 = 0;
      goto LABEL_14;
    }

    v9 = CMIOLog(v7, v8);
    if (v9 && os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __66__CMIOExtensionProviderContext_availableStreamProperties_message___block_invoke_cold_1();
    }

    v5 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-5 userInfo:0];
    a3 = v5;
  }

  if (!a3)
  {
    goto LABEL_13;
  }

  v10 = CMIOLog(v5, v6);
  if (v10 && os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    __66__CMIOExtensionProviderContext_availableStreamProperties_message___block_invoke_cold_2();
  }

  v11 = *(a1 + 32);
  v12 = [a3 code];
  v13 = v11;
LABEL_14:
  xpc_dictionary_set_int64(v13, "errorReturn", v12);
  xpc_connection_send_message(*(a1 + 40), *(a1 + 32));
  xpc_release(*(a1 + 32));
}

- (void)streamPropertyStates:(id)states message:(id)message
{
  reply = xpc_dictionary_create_reply(message);
  if (reply)
  {
    v9 = reply;
    cf = 0;
    v10 = cmio_XPCMessageCopyCFString(message, "param1", &cf);
    if (cf)
    {
      v12 = objc_alloc(MEMORY[0x277CCAD78]);
      v13 = [v12 initWithUUIDString:cf];
      CFRelease(cf);
      v20 = 0;
      cmio_XPCMessageCopyCFArray(message, "param2", &v20);
      if (v20)
      {
        v14 = [MEMORY[0x277CBEB98] setWithArray:?];
        CFRelease(v20);
      }

      else
      {
        v14 = 0;
      }

      xpc_retain(v9);
      v17 = +[CMIOExtensionProvider sharedProvider];
      clientID = [(CMIOExtensionClient *)self->_clientInfo clientID];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __61__CMIOExtensionProviderContext_streamPropertyStates_message___block_invoke;
      v19[3] = &unk_27885C418;
      v19[4] = v9;
      v19[5] = states;
      [v17 streamPropertyStatesForClientID:clientID streamID:v13 properties:v14 reply:v19];
    }

    else
    {
      v16 = CMIOLog(v10, v11);
      if (v16 && os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [CMIOExtensionProviderContext streamPropertyStates:message:];
      }

      v13 = 0;
    }

    xpc_release(v9);
  }

  else
  {
    v15 = CMIOLog(0, v8);
    if (v15 && os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionProviderContext streamPropertyStates:message:];
    }
  }
}

void __61__CMIOExtensionProviderContext_streamPropertyStates_message___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = a1;
  if (a2 && !a3)
  {
    v5 = [CMIOExtensionPropertyState copyXPCDictionaryFromPropertyStates:a2];
    if (v5)
    {
      v7 = v5;
      xpc_dictionary_set_value(*(v4 + 32), "param1", v5);
      xpc_release(v7);
LABEL_14:
      v12 = *(v4 + 32);
      v11 = 0;
      goto LABEL_15;
    }

    v8 = CMIOLog(0, v6);
    if (v8 && os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __61__CMIOExtensionProviderContext_streamPropertyStates_message___block_invoke_cold_1();
    }

    a1 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-5 userInfo:0];
    v3 = a1;
  }

  if (!v3)
  {
    goto LABEL_14;
  }

  v9 = CMIOLog(a1, a2);
  if (v9 && os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    __61__CMIOExtensionProviderContext_streamPropertyStates_message___block_invoke_cold_2();
  }

  v10 = *(v4 + 32);
  v11 = [v3 code];
  v12 = v10;
LABEL_15:
  xpc_dictionary_set_int64(v12, "errorReturn", v11);
  xpc_connection_send_message(*(v4 + 40), *(v4 + 32));
  xpc_release(*(v4 + 32));
}

- (void)setStreamPropertyValues:(id)values message:(id)message
{
  reply = xpc_dictionary_create_reply(message);
  if (reply)
  {
    v9 = reply;
    v30 = 0;
    v10 = cmio_XPCMessageCopyCFString(message, "param1", &v30);
    if (v30)
    {
      v12 = objc_alloc(MEMORY[0x277CCAD78]);
      v13 = [v12 initWithUUIDString:v30];
      CFRelease(v30);
      value = xpc_dictionary_get_value(message, "param2");
      if (value)
      {
        v15 = [CMIOExtensionPropertyState copyPropertyStatesFromXPCDictionary:value];
        if (v15)
        {
          v16 = v15;
          v17 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v15, "count")}];
          v29[0] = MEMORY[0x277D85DD0];
          v29[1] = 3221225472;
          v29[2] = __64__CMIOExtensionProviderContext_setStreamPropertyValues_message___block_invoke;
          v29[3] = &unk_27885BF70;
          v29[4] = v17;
          [v16 enumerateKeysAndObjectsUsingBlock:v29];
          xpc_retain(v9);
          v18 = +[CMIOExtensionProvider sharedProvider];
          clientID = [(CMIOExtensionClient *)self->_clientInfo clientID];
          v28[0] = MEMORY[0x277D85DD0];
          v28[1] = 3221225472;
          v28[2] = __64__CMIOExtensionProviderContext_setStreamPropertyValues_message___block_invoke_35;
          v28[3] = &unk_27885C440;
          v28[4] = v9;
          v28[5] = values;
          [v18 setStreamPropertyValuesForClientID:clientID streamID:v13 propertyValues:v17 reply:v28];
        }

        else
        {
          xpc_dictionary_set_int64(v9, "errorReturn", -1);
          xpc_connection_send_message(values, v9);
          v27 = CMIOLog(v25, v26);
          if (v27)
          {
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              [CMIOExtensionProviderContext setStreamPropertyValues:message:];
            }
          }
        }
      }

      else
      {
        xpc_dictionary_set_int64(v9, "errorReturn", -1);
        xpc_connection_send_message(values, v9);
        v24 = CMIOLog(v22, v23);
        if (v24 && os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          [CMIOExtensionProviderContext setStreamPropertyValues:message:];
        }
      }
    }

    else
    {
      v21 = CMIOLog(v10, v11);
      v13 = v21;
      if (v21)
      {
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          [CMIOExtensionProviderContext setStreamPropertyValues:message:];
        }

        v13 = 0;
      }
    }

    xpc_release(v9);
  }

  else
  {
    v20 = CMIOLog(0, v8);
    if (v20 && os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionProviderContext setStreamPropertyValues:message:];
    }
  }
}

uint64_t __64__CMIOExtensionProviderContext_setStreamPropertyValues_message___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [a3 value];
  v6 = *(a1 + 32);

  return [v6 setObject:v5 forKeyedSubscript:a2];
}

void __64__CMIOExtensionProviderContext_setStreamPropertyValues_message___block_invoke_35(uint64_t a1, void *a2)
{
  if (a2)
  {
    v4 = CMIOLog(a1, a2);
    if (v4 && os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __64__CMIOExtensionProviderContext_setStreamPropertyValues_message___block_invoke_35_cold_1();
    }

    v5 = *(a1 + 32);
    v6 = [a2 code];
    v7 = v5;
  }

  else
  {
    v7 = *(a1 + 32);
    v6 = 0;
  }

  xpc_dictionary_set_int64(v7, "errorReturn", v6);
  xpc_connection_send_message(*(a1 + 40), *(a1 + 32));
  xpc_release(*(a1 + 32));
}

- (void)startStream:(id)stream message:(id)message
{
  v38 = *MEMORY[0x277D85DE8];
  reply = xpc_dictionary_create_reply(message);
  if (reply)
  {
    v9 = reply;
    cf = 0;
    v10 = cmio_XPCMessageCopyCFString(message, "param1", &cf);
    if (cf)
    {
      v12 = objc_alloc(MEMORY[0x277CCAD78]);
      v13 = [v12 initWithUUIDString:cf];
      CFRelease(cf);
      p_voucher = &self->_voucher;
      if (self->_voucher)
      {
        v17 = CMIOLog(v14, v15);
        if (v17 && os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          [CMIOExtensionProviderContext startStream:message:];
        }

        *p_voucher = 0;
      }

      v18 = voucher_copy();
      *p_voucher = v18;
      v20 = CMIOLog(v18, v19);
      if (v20)
      {
        v21 = v20;
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v22 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
          v23 = *p_voucher;
          *buf = 136315906;
          v31 = v22;
          v32 = 1024;
          v33 = 859;
          v34 = 2080;
          v35 = "[CMIOExtensionProviderContext startStream:message:]";
          v36 = 2050;
          v37 = v23;
          _os_log_impl(&dword_22EA08000, v21, OS_LOG_TYPE_DEFAULT, "%s:%d:%s startStream retain priority voucher %{public}p", buf, 0x26u);
        }
      }

      xpc_retain(v9);
      v24 = +[CMIOExtensionProvider sharedProvider];
      clientID = [(CMIOExtensionClient *)self->_clientInfo clientID];
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __52__CMIOExtensionProviderContext_startStream_message___block_invoke;
      v28[3] = &unk_27885C440;
      v28[4] = v9;
      v28[5] = stream;
      [v24 startStreamForClientID:clientID streamID:v13 reply:v28];
    }

    else
    {
      v27 = CMIOLog(v10, v11);
      if (v27 && os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        [CMIOExtensionProviderContext startStream:message:];
      }

      v13 = 0;
    }

    xpc_release(v9);
  }

  else
  {
    v26 = CMIOLog(0, v8);
    if (v26 && os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionProviderContext startStream:message:];
    }
  }
}

void __52__CMIOExtensionProviderContext_startStream_message___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v4 = CMIOLog(a1, a2);
    if (v4 && os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __52__CMIOExtensionProviderContext_startStream_message___block_invoke_cold_1();
    }

    v5 = *(a1 + 32);
    v6 = [a2 code];
    v7 = v5;
  }

  else
  {
    v7 = *(a1 + 32);
    v6 = 0;
  }

  xpc_dictionary_set_int64(v7, "errorReturn", v6);
  xpc_connection_send_message(*(a1 + 40), *(a1 + 32));
  xpc_release(*(a1 + 32));
}

- (void)stopStream:(id)stream message:(id)message
{
  v34 = *MEMORY[0x277D85DE8];
  reply = xpc_dictionary_create_reply(message);
  if (reply)
  {
    v9 = reply;
    cf = 0;
    v10 = cmio_XPCMessageCopyCFString(message, "param1", &cf);
    if (cf)
    {
      v12 = objc_alloc(MEMORY[0x277CCAD78]);
      v13 = [v12 initWithUUIDString:cf];
      CFRelease(cf);
      xpc_retain(v9);
      v14 = +[CMIOExtensionProvider sharedProvider];
      clientID = [(CMIOExtensionClient *)self->_clientInfo clientID];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __51__CMIOExtensionProviderContext_stopStream_message___block_invoke;
      v24[3] = &unk_27885C440;
      v24[4] = v9;
      v24[5] = stream;
      v16 = [v14 stopStreamForClientID:clientID streamID:v13 reply:v24];
      if (self->_voucher)
      {
        v18 = CMIOLog(v16, v17);
        if (v18)
        {
          v19 = v18;
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v20 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
            voucher = self->_voucher;
            *buf = 136315906;
            v27 = v20;
            v28 = 1024;
            v29 = 910;
            v30 = 2080;
            v31 = "[CMIOExtensionProviderContext stopStream:message:]";
            v32 = 2050;
            v33 = voucher;
            _os_log_impl(&dword_22EA08000, v19, OS_LOG_TYPE_DEFAULT, "%s:%d:%s stopStream release priority voucher %{public}p", buf, 0x26u);
          }
        }

        self->_voucher = 0;
      }
    }

    else
    {
      v23 = CMIOLog(v10, v11);
      if (v23 && os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [CMIOExtensionProviderContext stopStream:message:];
      }

      v13 = 0;
    }

    xpc_release(v9);
  }

  else
  {
    v22 = CMIOLog(0, v8);
    if (v22 && os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionProviderContext stopStream:message:];
    }
  }
}

void __51__CMIOExtensionProviderContext_stopStream_message___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v4 = CMIOLog(a1, a2);
    if (v4 && os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __51__CMIOExtensionProviderContext_stopStream_message___block_invoke_cold_1();
    }

    v5 = *(a1 + 32);
    v6 = [a2 code];
    v7 = v5;
  }

  else
  {
    v7 = *(a1 + 32);
    v6 = 0;
  }

  xpc_dictionary_set_int64(v7, "errorReturn", v6);
  xpc_connection_send_message(*(a1 + 40), *(a1 + 32));
  xpc_release(*(a1 + 32));
}

- (void)setClientInfo:(id)info message:(id)message
{
  v36 = *MEMORY[0x277D85DE8];
  reply = xpc_dictionary_create_reply(message);
  if (reply)
  {
    v9 = reply;
    value = xpc_dictionary_get_value(message, "param1");
    if (value)
    {
      v11 = value;
      isFromProxyExtensionManager = [(CMIOExtensionClient *)self->_clientInfo isFromProxyExtensionManager];
      if (isFromProxyExtensionManager)
      {
        v14 = [[CMIOExtensionClient alloc] initWithXPCDictionary:v11];
        if (v14)
        {
          clientInfo = self->_clientInfo;
          self->_clientInfo = v14;

          goto LABEL_6;
        }

        v23 = CMIOLog(0, v15);
        if (v23)
        {
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            [CMIOExtensionProviderContext setClientInfo:message:];
          }
        }
      }

      else
      {
        v18 = CMIOLog(isFromProxyExtensionManager, v13);
        if (v18)
        {
          v19 = v18;
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            v20 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
            pid = xpc_connection_get_pid(info);
            v22 = self->_clientInfo;
            v24 = 136316419;
            v25 = v20;
            v26 = 1024;
            v27 = 946;
            v28 = 2080;
            v29 = "[CMIOExtensionProviderContext setClientInfo:message:]";
            v30 = 1025;
            v31 = pid;
            v32 = 2112;
            selfCopy = self;
            v34 = 2112;
            v35 = v22;
            _os_log_error_impl(&dword_22EA08000, v19, OS_LOG_TYPE_ERROR, "%s:%d:%s [%{private}d] invalid connection for this message to %@ / %@", &v24, 0x36u);
          }
        }
      }

      xpc_dictionary_set_int64(v9, "errorReturn", -1);
      xpc_connection_send_message(info, v9);
      [+[CMIOExtensionProvider sharedProvider](CMIOExtensionProvider "sharedProvider")];
      [(CMIOExtensionProviderContext *)self invalidate];
      goto LABEL_17;
    }

LABEL_6:
    xpc_dictionary_set_int64(v9, "errorReturn", 0);
    xpc_connection_send_message(info, v9);
    [+[CMIOExtensionProvider sharedProvider](CMIOExtensionProvider "sharedProvider")];
LABEL_17:
    xpc_release(v9);
    return;
  }

  v17 = CMIOLog(0, v8);
  if (v17 && os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    [CMIOExtensionProviderContext setClientInfo:message:];
  }
}

- (void)captureAsyncStillImage:(id)image message:(id)message
{
  v27 = 0;
  reply = xpc_dictionary_create_reply(message);
  if (!reply)
  {
    v15 = CMIOLog(0, v7);
    v10 = v15;
    if (!v15)
    {
      goto LABEL_15;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionProviderContext captureAsyncStillImage:message:];
    }

LABEL_14:
    v10 = 0;
    goto LABEL_15;
  }

  cf = 0;
  cmio_XPCMessageCopyCFString(message, "param1", &cf);
  if (!cf)
  {
    xpc_dictionary_set_int64(reply, "errorReturn", -1);
    xpc_connection_send_message(image, reply);
    v18 = CMIOLog(v16, v17);
    v10 = v18;
    if (!v18)
    {
      goto LABEL_15;
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionProviderContext captureAsyncStillImage:message:];
    }

    goto LABEL_14;
  }

  v9 = objc_alloc(MEMORY[0x277CCAD78]);
  v10 = [v9 initWithUUIDString:cf];
  CFRelease(cf);
  v25 = 0;
  cmio_XPCMessageCopyCFNumber(message, "param2", &v25);
  if (v25)
  {
    longLongValue = [v25 longLongValue];
    CFRelease(v25);
    if (cmio_XPCMessageCopyCFDictionary(message, "param3", &v27))
    {
      xpc_dictionary_set_int64(reply, "errorReturn", -1);
      xpc_connection_send_message(image, reply);
      v14 = CMIOLog(v12, v13);
      if (v14 && os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [CMIOExtensionProviderContext captureAsyncStillImage:message:];
      }
    }

    else
    {
      xpc_retain(reply);
      v22 = +[CMIOExtensionProvider sharedProvider];
      clientID = [(CMIOExtensionClient *)self->_clientInfo clientID];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __63__CMIOExtensionProviderContext_captureAsyncStillImage_message___block_invoke;
      v24[3] = &unk_27885C490;
      v24[4] = reply;
      v24[5] = image;
      [v22 captureAsyncStillImageForClientID:clientID streamID:v10 uniqueID:longLongValue options:v27 reply:v24];
    }
  }

  else
  {
    xpc_dictionary_set_int64(reply, "errorReturn", -1);
    xpc_connection_send_message(image, reply);
    v21 = CMIOLog(v19, v20);
    if (v21 && os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionProviderContext captureAsyncStillImage:message:];
    }
  }

LABEL_15:

  if (v27)
  {
    CFRelease(v27);
  }

  if (reply)
  {
    xpc_release(reply);
  }
}

void __63__CMIOExtensionProviderContext_captureAsyncStillImage_message___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    v5 = CMIOLog(a1, a2);
    if (v5 && os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __63__CMIOExtensionProviderContext_captureAsyncStillImage_message___block_invoke_cold_1();
    }

    v6 = *(a1 + 32);
    v7 = [a3 code];
    v8 = v6;
  }

  else
  {
    xpc_dictionary_set_int64(*(a1 + 32), "errorReturn", 0);
    SerializedAtomDataBlockBufferForSampleBuffer = FigRemote_CreateSerializedAtomDataBlockBufferForSampleBuffer();
    v8 = *(a1 + 32);
    v7 = SerializedAtomDataBlockBufferForSampleBuffer;
  }

  xpc_dictionary_set_int64(v8, "errorReturn", v7);
  xpc_connection_send_message(*(a1 + 40), *(a1 + 32));
  xpc_release(*(a1 + 32));
}

- (void)updateNonStreamingProxyFrontedExtensionPIDs:(id)ds message:(id)message
{
  v28 = *MEMORY[0x277D85DE8];
  p_clientInfo = &self->_clientInfo;
  isFromProxyExtensionManager = [(CMIOExtensionClient *)self->_clientInfo isFromProxyExtensionManager];
  if (isFromProxyExtensionManager)
  {
    v17 = 0;
    v8 = cmio_XPCMessageCopyCFArray(message, "param1", &v17);
    v9 = v17;
    v11 = CMIOLog(v8, v10);
    v12 = v11;
    if (v9)
    {
      if (v11)
      {
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v13 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
          v14 = [(CMIOExtensionClient *)*p_clientInfo pid];
          *buf = 136316163;
          v19 = v13;
          v20 = 1024;
          v21 = 1040;
          v22 = 2080;
          v23 = "[CMIOExtensionProviderContext updateNonStreamingProxyFrontedExtensionPIDs:message:]";
          v24 = 1025;
          v25 = v14;
          v26 = 2113;
          v27 = v17;
          _os_log_impl(&dword_22EA08000, v12, OS_LOG_TYPE_DEFAULT, "%s:%d:%s [%{private}d] updating with %{private}@", buf, 0x2Cu);
        }
      }

      v15 = +[CMIOExtensionProvider sharedProvider];
      [v15 updateNonStreamingProxyFrontedExtensionPIDs:v17];
    }

    else if (v11 && os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionProviderContext updateNonStreamingProxyFrontedExtensionPIDs:message:];
    }
  }

  else
  {
    v16 = CMIOLog(isFromProxyExtensionManager, v7);
    if (v16 && os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionProviderContext updateNonStreamingProxyFrontedExtensionPIDs:message:];
    }
  }
}

- (void)enqueueReactionEffect:(id)effect message:(id)message
{
  v23 = 0;
  reply = xpc_dictionary_create_reply(message);
  if (reply)
  {
    v9 = reply;
    cf = 0;
    cmio_XPCMessageCopyCFString(message, "param1", &cf);
    if (cf)
    {
      v10 = objc_alloc(MEMORY[0x277CCAD78]);
      v11 = [v10 initWithUUIDString:cf];
      CFRelease(cf);
      if (cmio_XPCMessageCopyCFString(message, "param2", &v23))
      {
        xpc_dictionary_set_int64(v9, "errorReturn", -1);
        xpc_connection_send_message(effect, v9);
        v14 = CMIOLog(v12, v13);
        if (v14)
        {
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            [CMIOExtensionProviderContext enqueueReactionEffect:message:];
          }
        }
      }

      else
      {
        xpc_retain(v9);
        v19 = +[CMIOExtensionProvider sharedProvider];
        clientID = [(CMIOExtensionClient *)self->_clientInfo clientID];
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __62__CMIOExtensionProviderContext_enqueueReactionEffect_message___block_invoke;
        v21[3] = &unk_27885C440;
        v21[4] = v9;
        v21[5] = effect;
        [v19 enqueueReactionEffectForClientID:clientID streamID:v11 reactionType:v23 reply:v21];
      }
    }

    else
    {
      xpc_dictionary_set_int64(v9, "errorReturn", -1);
      xpc_connection_send_message(effect, v9);
      v18 = CMIOLog(v16, v17);
      v11 = v18;
      if (v18)
      {
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          [CMIOExtensionProviderContext enqueueReactionEffect:message:];
        }

        v11 = 0;
      }
    }

    xpc_release(v9);
  }

  else
  {
    v15 = CMIOLog(0, v8);
    if (v15 && os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionProviderContext enqueueReactionEffect:message:];
    }
  }
}

void __62__CMIOExtensionProviderContext_enqueueReactionEffect_message___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v4 = CMIOLog(a1, a2);
    if (v4 && os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __62__CMIOExtensionProviderContext_enqueueReactionEffect_message___block_invoke_cold_1();
    }

    v5 = *(a1 + 32);
    v6 = [a2 code];
    v7 = v5;
  }

  else
  {
    v7 = *(a1 + 32);
    v6 = 0;
  }

  xpc_dictionary_set_int64(v7, "errorReturn", v6);
  xpc_connection_send_message(*(a1 + 40), *(a1 + 32));
  xpc_release(*(a1 + 32));
}

- (void)pluginPropertiesChanged:(id)changed
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = CMIOLogLevel(1, a2);
  if (v5)
  {
    v6 = v5;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
      clientID = [(CMIOExtensionClient *)self->_clientInfo clientID];
      v14 = 136315907;
      v15 = v7;
      v16 = 1024;
      v17 = 1101;
      v18 = 2080;
      v19 = "[CMIOExtensionProviderContext pluginPropertiesChanged:]";
      v20 = 2113;
      v21 = clientID;
      _os_log_impl(&dword_22EA08000, v6, OS_LOG_TYPE_DEFAULT, "%s:%d:%s CID %{private}@", &v14, 0x26u);
    }
  }

  v9 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v9, "MessageType", 3uLL);
  if (!changed)
  {
    goto LABEL_7;
  }

  v10 = [CMIOExtensionPropertyState copyXPCDictionaryFromPropertyStates:changed];
  if (v10)
  {
    v12 = v10;
    xpc_dictionary_set_value(v9, "param1", v10);
    xpc_release(v12);
LABEL_7:
    xpc_connection_send_message(self->_connection, v9);
    goto LABEL_8;
  }

  v13 = CMIOLog(0, v11);
  if (v13 && os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    [CMIOExtensionProviderContext pluginPropertiesChanged:];
  }

LABEL_8:
  xpc_release(v9);
}

- (void)availableDevicesChanged:(id)changed
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = CMIOLogLevel(1, a2);
  if (v5)
  {
    v6 = v5;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
      clientID = [(CMIOExtensionClient *)self->_clientInfo clientID];
      v13 = 136315907;
      v14 = v7;
      v15 = 1024;
      v16 = 1124;
      v17 = 2080;
      v18 = "[CMIOExtensionProviderContext availableDevicesChanged:]";
      v19 = 2113;
      v20 = clientID;
      _os_log_impl(&dword_22EA08000, v6, OS_LOG_TYPE_DEFAULT, "%s:%d:%s CID %{private}@", &v13, 0x26u);
    }
  }

  v9 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v9, "MessageType", 1uLL);
  if (changed && (v10 = cmio_XPCMessageSetCFArray(v9, "param1", changed), v10))
  {
    v12 = CMIOLog(v10, v11);
    if (v12 && os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionProviderContext availableDevicesChanged:];
    }
  }

  else
  {
    xpc_connection_send_message(self->_connection, v9);
  }

  xpc_release(v9);
}

- (void)devicePropertiesChangedWithDeviceID:(id)d propertyStates:(id)states
{
  v29 = *MEMORY[0x277D85DE8];
  v7 = CMIOLogLevel(1, a2);
  if (v7)
  {
    v8 = v7;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
      clientID = [(CMIOExtensionClient *)self->_clientInfo clientID];
      v19 = 136316163;
      v20 = v9;
      v21 = 1024;
      v22 = 1140;
      v23 = 2080;
      v24 = "[CMIOExtensionProviderContext devicePropertiesChangedWithDeviceID:propertyStates:]";
      v25 = 2113;
      v26 = clientID;
      v27 = 2113;
      dCopy = d;
      _os_log_impl(&dword_22EA08000, v8, OS_LOG_TYPE_DEFAULT, "%s:%d:%s CID %{private}@ DID %{private}@", &v19, 0x30u);
    }
  }

  v11 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v11, "MessageType", 4uLL);
  v12 = cmio_XPCMessageSetCFString(v11, "param1", d);
  if (v12)
  {
    v14 = CMIOLog(v12, v13);
    if (v14 && os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionProviderContext devicePropertiesChangedWithDeviceID:propertyStates:];
    }

    goto LABEL_12;
  }

  if (!states)
  {
LABEL_11:
    xpc_connection_send_message(self->_connection, v11);
    goto LABEL_12;
  }

  v15 = [CMIOExtensionPropertyState copyXPCDictionaryFromPropertyStates:states];
  if (v15)
  {
    v17 = v15;
    xpc_dictionary_set_value(v11, "param2", v15);
    xpc_release(v17);
    goto LABEL_11;
  }

  v18 = CMIOLog(0, v16);
  if (v18 && os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    [CMIOExtensionProviderContext devicePropertiesChangedWithDeviceID:propertyStates:];
  }

LABEL_12:
  xpc_release(v11);
}

- (void)availableStreamsChangedWithDeviceID:(id)d streamIDs:(id)ds
{
  v28 = *MEMORY[0x277D85DE8];
  v7 = CMIOLogLevel(1, a2);
  if (v7)
  {
    v8 = v7;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
      clientID = [(CMIOExtensionClient *)self->_clientInfo clientID];
      v18 = 136316163;
      v19 = v9;
      v20 = 1024;
      v21 = 1166;
      v22 = 2080;
      v23 = "[CMIOExtensionProviderContext availableStreamsChangedWithDeviceID:streamIDs:]";
      v24 = 2113;
      v25 = clientID;
      v26 = 2113;
      dCopy = d;
      _os_log_impl(&dword_22EA08000, v8, OS_LOG_TYPE_DEFAULT, "%s:%d:%s CID %{private}@ DID %{private}@", &v18, 0x30u);
    }
  }

  v11 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v11, "MessageType", 2uLL);
  v12 = cmio_XPCMessageSetCFString(v11, "param1", d);
  if (v12)
  {
    v14 = CMIOLog(v12, v13);
    if (v14 && os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionProviderContext availableStreamsChangedWithDeviceID:streamIDs:];
    }
  }

  else if (ds && (v15 = cmio_XPCMessageSetCFArray(v11, "param2", ds), v15))
  {
    v17 = CMIOLog(v15, v16);
    if (v17 && os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionProviderContext availableStreamsChangedWithDeviceID:streamIDs:];
    }
  }

  else
  {
    xpc_connection_send_message(self->_connection, v11);
  }

  xpc_release(v11);
}

- (void)streamPropertiesChangedWithStreamID:(id)d propertyStates:(id)states
{
  v29 = *MEMORY[0x277D85DE8];
  v7 = CMIOLogLevel(1, a2);
  if (v7)
  {
    v8 = v7;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
      clientID = [(CMIOExtensionClient *)self->_clientInfo clientID];
      v19 = 136316163;
      v20 = v9;
      v21 = 1024;
      v22 = 1185;
      v23 = 2080;
      v24 = "[CMIOExtensionProviderContext streamPropertiesChangedWithStreamID:propertyStates:]";
      v25 = 2113;
      v26 = clientID;
      v27 = 2112;
      dCopy = d;
      _os_log_impl(&dword_22EA08000, v8, OS_LOG_TYPE_DEFAULT, "%s:%d:%s CID %{private}@ SID %@", &v19, 0x30u);
    }
  }

  v11 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v11, "MessageType", 5uLL);
  v12 = cmio_XPCMessageSetCFString(v11, "param1", d);
  if (v12)
  {
    v14 = CMIOLog(v12, v13);
    if (v14 && os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionProviderContext streamPropertiesChangedWithStreamID:propertyStates:];
    }

    goto LABEL_12;
  }

  if (!states)
  {
LABEL_11:
    xpc_connection_send_message(self->_connection, v11);
    goto LABEL_12;
  }

  v15 = [CMIOExtensionPropertyState copyXPCDictionaryFromPropertyStates:states];
  if (v15)
  {
    v17 = v15;
    xpc_dictionary_set_value(v11, "param2", v15);
    xpc_release(v17);
    goto LABEL_11;
  }

  v18 = CMIOLog(0, v16);
  if (v18 && os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    [CMIOExtensionProviderContext streamPropertiesChangedWithStreamID:propertyStates:];
  }

LABEL_12:
  xpc_release(v11);
}

- (void)receivedSampleWithStreamID:(id)d sample:(id)sample
{
  v29 = *MEMORY[0x277D85DE8];
  v7 = CMIOLogLevel(3, a2);
  if (v7)
  {
    v8 = v7;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
      clientID = [(CMIOExtensionClient *)self->_clientInfo clientID];
      v19 = 136316163;
      v20 = v9;
      v21 = 1024;
      v22 = 1211;
      v23 = 2080;
      v24 = "[CMIOExtensionProviderContext receivedSampleWithStreamID:sample:]";
      v25 = 2113;
      v26 = clientID;
      v27 = 2112;
      dCopy = d;
      _os_log_impl(&dword_22EA08000, v8, OS_LOG_TYPE_DEFAULT, "%s:%d:%s CID %{private}@ SID %@", &v19, 0x30u);
    }
  }

  v11 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v11, "MessageType", 7uLL);
  v12 = cmio_XPCMessageSetCFString(v11, "param1", d);
  if (v12)
  {
    v14 = CMIOLog(v12, v13);
    if (v14 && os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionProviderContext receivedSampleWithStreamID:sample:];
    }

    goto LABEL_12;
  }

  if (!sample)
  {
LABEL_11:
    xpc_connection_send_message(self->_connection, v11);
    goto LABEL_12;
  }

  xpc_dictionary_set_int64(v11, "param2", [sample mediaType]);
  copyXPCDictionary = [sample copyXPCDictionary];
  if (copyXPCDictionary)
  {
    v17 = copyXPCDictionary;
    xpc_dictionary_set_value(v11, "param3", copyXPCDictionary);
    xpc_release(v17);
    goto LABEL_11;
  }

  v18 = CMIOLog(0, v16);
  if (v18 && os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    [CMIOExtensionProviderContext receivedSampleWithStreamID:sample:];
  }

LABEL_12:
  xpc_release(v11);
}

- (void)pullSampleBufferForStreamID:(id)d replyq:(id)replyq reply:(id)reply
{
  v29 = *MEMORY[0x277D85DE8];
  v9 = CMIOLogLevel(3, a2);
  if (v9)
  {
    v10 = v9;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
      clientID = [(CMIOExtensionClient *)self->_clientInfo clientID];
      *buf = 136316163;
      v20 = v11;
      v21 = 1024;
      v22 = 1240;
      v23 = 2080;
      v24 = "[CMIOExtensionProviderContext pullSampleBufferForStreamID:replyq:reply:]";
      v25 = 2113;
      v26 = clientID;
      v27 = 2112;
      dCopy = d;
      _os_log_impl(&dword_22EA08000, v10, OS_LOG_TYPE_DEFAULT, "%s:%d:%s CID %{private}@ SID %@", buf, 0x30u);
    }
  }

  v13 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v13, "MessageType", 8uLL);
  v14 = cmio_XPCMessageSetCFString(v13, "param1", d);
  if (v14)
  {
    v16 = CMIOLog(v14, v15);
    if (v16 && os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionProviderContext pullSampleBufferForStreamID:replyq:reply:];
    }

    (*(reply + 2))(reply, 0, 0, [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-5 userInfo:0]);
  }

  else
  {
    connection = self->_connection;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __73__CMIOExtensionProviderContext_pullSampleBufferForStreamID_replyq_reply___block_invoke;
    handler[3] = &unk_27885C4B8;
    handler[4] = reply;
    xpc_connection_send_message_with_reply(connection, v13, replyq, handler);
  }

  xpc_release(v13);
}

void __73__CMIOExtensionProviderContext_pullSampleBufferForStreamID_replyq_reply___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x2318F1BC0](a2);
  if (v4 == MEMORY[0x277D86480])
  {
    v8 = CMIOLog(v4, v5);
    if (v8 && os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
      __73__CMIOExtensionProviderContext_pullSampleBufferForStreamID_replyq_reply___block_invoke_cold_3(v9, a2, buf);
    }

    [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-7 userInfo:0];
    (*(*(a1 + 32) + 16))();
  }

  else if (v4 == MEMORY[0x277D86468])
  {
    int64 = xpc_dictionary_get_int64(a2, "errorReturn");
    if (int64)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:int64 userInfo:0];
      (*(*(a1 + 32) + 16))();
    }

    else
    {
      value = xpc_dictionary_get_value(a2, "param1");
      if (value)
      {
        value = [[CMIOExtensionSample alloc] initWithXPCDictionary:value];
        if (!value)
        {
          v13 = CMIOLog(0, v12);
          v14 = v13;
          if (v13 && os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            v15 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
            __73__CMIOExtensionProviderContext_pullSampleBufferForStreamID_replyq_reply___block_invoke_cold_2(v15, buf, v14);
          }

          [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6 userInfo:0];
        }

        xpc_dictionary_get_BOOL(a2, "param2");
      }

      (*(*(a1 + 32) + 16))();
    }
  }

  else
  {
    v6 = CMIOLog(v4, v5);
    if (v6)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
        __73__CMIOExtensionProviderContext_pullSampleBufferForStreamID_replyq_reply___block_invoke_cold_1(v7, a2, buf);
      }
    }

    [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6 userInfo:0];
    (*(*(a1 + 32) + 16))();
  }
}

- (void)streamScheduledOutputChangedWithStreamID:(id)d scheduledOutput:(id)output
{
  v29 = *MEMORY[0x277D85DE8];
  v7 = CMIOLogLevel(2, a2);
  if (v7)
  {
    v8 = v7;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
      clientID = [(CMIOExtensionClient *)self->_clientInfo clientID];
      v19 = 136316163;
      v20 = v9;
      v21 = 1024;
      v22 = 1304;
      v23 = 2080;
      v24 = "[CMIOExtensionProviderContext streamScheduledOutputChangedWithStreamID:scheduledOutput:]";
      v25 = 2113;
      v26 = clientID;
      v27 = 2112;
      dCopy = d;
      _os_log_impl(&dword_22EA08000, v8, OS_LOG_TYPE_DEFAULT, "%s:%d:%s CID %{private}@ SID %@", &v19, 0x30u);
    }
  }

  v11 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v11, "MessageType", 9uLL);
  v12 = cmio_XPCMessageSetCFString(v11, "param1", d);
  if (v12)
  {
    v14 = CMIOLog(v12, v13);
    if (v14 && os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionProviderContext streamScheduledOutputChangedWithStreamID:scheduledOutput:];
    }

    goto LABEL_12;
  }

  if (!output)
  {
LABEL_11:
    xpc_connection_send_message(self->_connection, v11);
    goto LABEL_12;
  }

  copyXPCDictionary = [output copyXPCDictionary];
  if (copyXPCDictionary)
  {
    v17 = copyXPCDictionary;
    xpc_dictionary_set_value(v11, "param2", copyXPCDictionary);
    xpc_release(v17);
    goto LABEL_11;
  }

  v18 = CMIOLog(0, v16);
  if (v18 && os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    [CMIOExtensionProviderContext streamScheduledOutputChangedWithStreamID:scheduledOutput:];
  }

LABEL_12:
  xpc_release(v11);
}

void __51__CMIOExtensionProviderContext_initWithConnection___block_invoke_cold_1(uint64_t a1)
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  xpc_connection_get_pid(*(a1 + 32));
  OUTLINED_FUNCTION_5_5();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x2Cu);
}

- (void)handleClientMessageWithConnection:message:.cold.1()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)availablePluginProperties:message:.cold.1()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void __66__CMIOExtensionProviderContext_availablePluginProperties_message___block_invoke_cold_1()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void __66__CMIOExtensionProviderContext_availablePluginProperties_message___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)pluginStates:message:.cold.1()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void __53__CMIOExtensionProviderContext_pluginStates_message___block_invoke_cold_1()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void __53__CMIOExtensionProviderContext_pluginStates_message___block_invoke_cold_2()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void __53__CMIOExtensionProviderContext_pluginStates_message___block_invoke_cold_3()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void __53__CMIOExtensionProviderContext_pluginStates_message___block_invoke_cold_4()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)pluginPropertyStatesForProperties:message:.cold.1()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void __74__CMIOExtensionProviderContext_pluginPropertyStatesForProperties_message___block_invoke_cold_1()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void __74__CMIOExtensionProviderContext_pluginPropertyStatesForProperties_message___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)setPluginPropertyValues:message:.cold.1()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)setPluginPropertyValues:message:.cold.2()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)setPluginPropertyValues:message:.cold.3()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void __64__CMIOExtensionProviderContext_setPluginPropertyValues_message___block_invoke_31_cold_1()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)availableDeviceProperties:message:.cold.1()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)availableDeviceProperties:message:.cold.2()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void __66__CMIOExtensionProviderContext_availableDeviceProperties_message___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void __66__CMIOExtensionProviderContext_availableDeviceProperties_message___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)deviceStates:message:.cold.1()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)deviceStates:message:.cold.2()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void __53__CMIOExtensionProviderContext_deviceStates_message___block_invoke_cold_1()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void __53__CMIOExtensionProviderContext_deviceStates_message___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)devicePropertyStates:message:.cold.1()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)devicePropertyStates:message:.cold.2()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void __61__CMIOExtensionProviderContext_devicePropertyStates_message___block_invoke_cold_1()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void __61__CMIOExtensionProviderContext_devicePropertyStates_message___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)setDevicePropertyValues:message:.cold.1()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)setDevicePropertyValues:message:.cold.2()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)setDevicePropertyValues:message:.cold.3()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)setDevicePropertyValues:message:.cold.4()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void __64__CMIOExtensionProviderContext_setDevicePropertyValues_message___block_invoke_34_cold_1()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)availableStreamProperties:message:.cold.1()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)availableStreamProperties:message:.cold.2()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void __66__CMIOExtensionProviderContext_availableStreamProperties_message___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void __66__CMIOExtensionProviderContext_availableStreamProperties_message___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)streamPropertyStates:message:.cold.1()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)streamPropertyStates:message:.cold.2()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void __61__CMIOExtensionProviderContext_streamPropertyStates_message___block_invoke_cold_1()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void __61__CMIOExtensionProviderContext_streamPropertyStates_message___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)setStreamPropertyValues:message:.cold.1()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)setStreamPropertyValues:message:.cold.2()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)setStreamPropertyValues:message:.cold.3()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)setStreamPropertyValues:message:.cold.4()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void __64__CMIOExtensionProviderContext_setStreamPropertyValues_message___block_invoke_35_cold_1()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)startStream:message:.cold.1()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)startStream:message:.cold.2()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)startStream:message:.cold.3()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void __52__CMIOExtensionProviderContext_startStream_message___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)stopStream:message:.cold.1()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)stopStream:message:.cold.2()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void __51__CMIOExtensionProviderContext_stopStream_message___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)setClientInfo:message:.cold.1()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  xpc_connection_get_pid(v0);
  OUTLINED_FUNCTION_5_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_7_2();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x22u);
}

- (void)setClientInfo:message:.cold.2()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)captureAsyncStillImage:message:.cold.1()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)captureAsyncStillImage:message:.cold.2()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)captureAsyncStillImage:message:.cold.3()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)captureAsyncStillImage:message:.cold.4()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void __63__CMIOExtensionProviderContext_captureAsyncStillImage_message___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)updateNonStreamingProxyFrontedExtensionPIDs:message:.cold.1()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  [*v0 pid];
  OUTLINED_FUNCTION_5_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_7_2();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x22u);
}

- (void)updateNonStreamingProxyFrontedExtensionPIDs:message:.cold.2()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  [*v0 pid];
  OUTLINED_FUNCTION_5_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_7_2();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x22u);
}

- (void)enqueueReactionEffect:message:.cold.1()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)enqueueReactionEffect:message:.cold.2()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)enqueueReactionEffect:message:.cold.3()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void __62__CMIOExtensionProviderContext_enqueueReactionEffect_message___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)pluginPropertiesChanged:.cold.1()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)availableDevicesChanged:.cold.1()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)devicePropertiesChangedWithDeviceID:propertyStates:.cold.1()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)devicePropertiesChangedWithDeviceID:propertyStates:.cold.2()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)availableStreamsChangedWithDeviceID:streamIDs:.cold.1()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)availableStreamsChangedWithDeviceID:streamIDs:.cold.2()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)streamPropertiesChangedWithStreamID:propertyStates:.cold.1()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)streamPropertiesChangedWithStreamID:propertyStates:.cold.2()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)receivedSampleWithStreamID:sample:.cold.1()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)receivedSampleWithStreamID:sample:.cold.2()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)pullSampleBufferForStreamID:replyq:reply:.cold.1()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void __73__CMIOExtensionProviderContext_pullSampleBufferForStreamID_replyq_reply___block_invoke_cold_1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = OUTLINED_FUNCTION_1(a1, 4.8153e-34, a2, a3);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2_1(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s unknown type %{public}@", v9, v10);
}

void __73__CMIOExtensionProviderContext_pullSampleBufferForStreamID_replyq_reply___block_invoke_cold_2(uint64_t a1, uint8_t *buf, os_log_t log)
{
  *buf = 136315650;
  *(buf + 4) = a1;
  *(buf + 6) = 1024;
  *(buf + 14) = 1280;
  *(buf + 9) = 2080;
  *(buf + 20) = "[CMIOExtensionProviderContext pullSampleBufferForStreamID:replyq:reply:]_block_invoke";
  _os_log_error_impl(&dword_22EA08000, log, OS_LOG_TYPE_ERROR, "%s:%d:%s CMIOExtensionSample alloc failed", buf, 0x1Cu);
}

void __73__CMIOExtensionProviderContext_pullSampleBufferForStreamID_replyq_reply___block_invoke_cold_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = OUTLINED_FUNCTION_1(a1, 4.8153e-34, a2, a3);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2_1(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s received %{public}@", v9, v10);
}

void __73__CMIOExtensionProviderContext_pullSampleBufferForStreamID_replyq_reply___block_invoke_cold_4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = OUTLINED_FUNCTION_1(a1, 4.8153e-34, a2, a3);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  *(v6 + 20) = "[CMIOExtensionProviderContext pullSampleBufferForStreamID:replyq:reply:]_block_invoke";
  *(v6 + 28) = 2112;
  *(v6 + 30) = v7;
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s exception %@", v8, v9);
}

- (void)streamScheduledOutputChangedWithStreamID:scheduledOutput:.cold.1()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)streamScheduledOutputChangedWithStreamID:scheduledOutput:.cold.2()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

@end