@interface CMIOExtensionProviderHostContext
- (CMIOExtensionProviderHostContext)initWithConnection:(id)connection delegate:(id)delegate;
- (NSString)description;
- (id)redactedDescription;
- (void)availableDevicePropertiesWithDeviceID:(id)d reply:(id)reply;
- (void)availableDevicesChanged:(id)changed message:(id)message;
- (void)availablePluginProperties:(id)properties;
- (void)availableStreamPropertiesWithStreamID:(id)d reply:(id)reply;
- (void)availableStreamsChanged:(id)changed message:(id)message;
- (void)captureAsyncStillImageWithStreamID:(id)d uniqueID:(int64_t)iD options:(id)options reply:(id)reply;
- (void)completeTransaction;
- (void)dealloc;
- (void)devicePropertiesChanged:(id)changed message:(id)message;
- (void)devicePropertyStatesWithDeviceID:(id)d properties:(id)properties reply:(id)reply;
- (void)deviceStatesWithDeviceID:(id)d reply:(id)reply;
- (void)enqueueReactionEffect:(id)effect reactionType:(id)type reply:(id)reply;
- (void)handleClientMessageWithConnection:(id)connection message:(id)message;
- (void)pluginPropertiesChanged:(id)changed message:(id)message;
- (void)pluginPropertyStatesForProperties:(id)properties reply:(id)reply;
- (void)pluginStates:(id)states;
- (void)pullSample:(id)sample message:(id)message;
- (void)receivedSample:(id)sample message:(id)message;
- (void)refreshExtensionConnection;
- (void)scheduledOutputChanged:(id)changed message:(id)message;
- (void)sendEmptyClientInfo;
- (void)setDevicePropertyValuesWithDeviceID:(id)d propertyValues:(id)values reply:(id)reply;
- (void)setPluginPropertyValues:(id)values reply:(id)reply;
- (void)setStreamPropertyValuesWithStreamID:(id)d propertyValues:(id)values reply:(id)reply;
- (void)startStreamWithStreamID:(id)d reply:(id)reply;
- (void)stopStreamWithStreamID:(id)d reply:(id)reply;
- (void)streamPropertiesChanged:(id)changed message:(id)message;
- (void)streamPropertyStatesWithStreamID:(id)d properties:(id)properties reply:(id)reply;
@end

@implementation CMIOExtensionProviderHostContext

- (CMIOExtensionProviderHostContext)initWithConnection:(id)connection delegate:(id)delegate
{
  v32 = *MEMORY[0x277D85DE8];
  if (connection)
  {
    v23.receiver = self;
    v23.super_class = CMIOExtensionProviderHostContext;
    v6 = [(CMIOExtensionProviderHostContext *)&v23 init];
    v7 = v6;
    if (v6)
    {
      v6->_internalLock._os_unfair_lock_opaque = 0;
      dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v7->_queue = FigDispatchQueueCreateTargetingWorkloopWithPriority();
      v7->_transactionGroup = dispatch_group_create();
      objc_storeWeak(&v7->_delegate, delegate);
      v7->_connection = connection;
      xpc_connection_set_target_queue(connection, v7->_queue);
      objc_initWeak(&location, v7);
      handler = MEMORY[0x277D85DD0];
      v17 = 3221225472;
      v18 = __64__CMIOExtensionProviderHostContext_initWithConnection_delegate___block_invoke;
      v19 = &unk_27885C1C0;
      objc_copyWeak(&v21, &location);
      connectionCopy = connection;
      xpc_connection_set_event_handler(connection, &handler);
      xpc_connection_activate(connection);
      [(CMIOExtensionProviderHostContext *)v7 sendEmptyClientInfo];
      pid = xpc_connection_get_pid(connection);
      v9 = objc_alloc(MEMORY[0x277CCACA8]);
      v7->_description = [v9 initWithFormat:@"<CMIOExtensionProviderHostContext: pid %u>", pid, handler, v17, v18, v19];
      v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<CMIOExtensionProviderHostContext: pid ->"];
      v7->_redactedDescription = v10;
      v12 = CMIOLog(v10, v11);
      v13 = v12;
      if (v12 && os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v14 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
        *buf = 136315907;
        v25 = v14;
        v26 = 1024;
        v27 = 104;
        v28 = 2080;
        v29 = "[CMIOExtensionProviderHostContext initWithConnection:delegate:]";
        v30 = 2113;
        v31 = v7;
        _os_log_impl(&dword_22EA08000, v13, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %{private}@", buf, 0x26u);
      }

      objc_destroyWeak(&v21);
      objc_destroyWeak(&location);
    }
  }

  else
  {

    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"Invalid argument"];
    return 0;
  }

  return v7;
}

void __64__CMIOExtensionProviderHostContext_initWithConnection_delegate___block_invoke(uint64_t a1, uint64_t a2)
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
        __64__CMIOExtensionProviderHostContext_initWithConnection_delegate___block_invoke_cold_1(a1);
      }
    }

    if (a2 == MEMORY[0x277D863F8])
    {
      xpc_connection_cancel(*(a1 + 32));
    }

    if (a2 == MEMORY[0x277D863F0] && WeakRetained && (WeakRetained[48] & 1) == 0)
    {
      v9 = CMIOLog(v7, v8);
      if (v9)
      {
        v10 = v9;
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v11 = 136315907;
          v12 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
          v13 = 1024;
          v14 = 83;
          v15 = 2080;
          v16 = "[CMIOExtensionProviderHostContext initWithConnection:delegate:]_block_invoke";
          v17 = 2113;
          v18 = WeakRetained;
          _os_log_impl(&dword_22EA08000, v10, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %{private}@, connection is invalidated", &v11, 0x26u);
        }
      }

      xpc_connection_cancel([WeakRetained connection]);
      WeakRetained[48] = 1;
      [objc_msgSend(WeakRetained "delegate")];
    }
  }

  else if (v5 == MEMORY[0x277D86468])
  {
    [WeakRetained handleClientMessageWithConnection:*(a1 + 32) message:a2];
  }
}

- (void)dealloc
{
  v14 = *MEMORY[0x277D85DE8];
  if (CMIOModuleLogLevel_once_1 != -1)
  {
    [CMIOExtensionProviderHostContext dealloc];
  }

  if (CMIOModuleLogLevel_cmioLevel_1 >= 1)
  {
    v3 = CMIOLog(self, a2);
    if (v3)
    {
      v4 = v3;
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315907;
        v7 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
        v8 = 1024;
        v9 = 111;
        v10 = 2080;
        v11 = "[CMIOExtensionProviderHostContext dealloc]";
        v12 = 2113;
        selfCopy = self;
        _os_log_impl(&dword_22EA08000, v4, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %{private}@", buf, 0x26u);
      }
    }
  }

  dispatch_release(self->_queue);
  dispatch_release(self->_transactionGroup);

  v5.receiver = self;
  v5.super_class = CMIOExtensionProviderHostContext;
  [(CMIOExtensionProviderHostContext *)&v5 dealloc];
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

- (void)handleClientMessageWithConnection:(id)connection message:(id)message
{
  v22 = *MEMORY[0x277D85DE8];
  uint64 = xpc_dictionary_get_uint64(message, "MessageType");
  v9 = uint64;
  if (CMIOModuleLogLevel_once_1 != -1)
  {
    [CMIOExtensionProviderHostContext dealloc];
  }

  if (CMIOModuleLogLevel_cmioLevel_1 >= 1)
  {
    uint64 = CMIOLog(uint64, v8);
    if (uint64)
    {
      v10 = uint64;
      uint64 = os_log_type_enabled(uint64, OS_LOG_TYPE_DEFAULT);
      if (uint64)
      {
        v12 = 136316163;
        v13 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
        v14 = 1024;
        v15 = 137;
        v16 = 2080;
        v17 = "[CMIOExtensionProviderHostContext handleClientMessageWithConnection:message:]";
        v18 = 2113;
        selfCopy = self;
        v20 = 2048;
        v21 = v9;
        _os_log_impl(&dword_22EA08000, v10, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %{private}@ %lld", &v12, 0x30u);
      }
    }
  }

  if (v9 > 4)
  {
    if (v9 > 7)
    {
      if (v9 == 8)
      {
        [(CMIOExtensionProviderHostContext *)self pullSample:connection message:message];
        return;
      }

      if (v9 == 9)
      {
        [(CMIOExtensionProviderHostContext *)self scheduledOutputChanged:connection message:message];
        return;
      }
    }

    else
    {
      if (v9 == 5)
      {
        [(CMIOExtensionProviderHostContext *)self streamPropertiesChanged:connection message:message];
        return;
      }

      if (v9 == 7)
      {
        [(CMIOExtensionProviderHostContext *)self receivedSample:connection message:message];
        return;
      }
    }
  }

  else
  {
    if (v9 > 2)
    {
      if (v9 == 3)
      {
        [(CMIOExtensionProviderHostContext *)self pluginPropertiesChanged:connection message:message];
      }

      else
      {
        [(CMIOExtensionProviderHostContext *)self devicePropertiesChanged:connection message:message];
      }

      return;
    }

    if (v9 == 1)
    {
      [(CMIOExtensionProviderHostContext *)self availableDevicesChanged:connection message:message];
      return;
    }

    if (v9 == 2)
    {
      [(CMIOExtensionProviderHostContext *)self availableStreamsChanged:connection message:message];
      return;
    }
  }

  v11 = CMIOLog(uint64, v8);
  if (v11)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionProviderHostContext handleClientMessageWithConnection:message:];
    }
  }
}

- (void)availableDevicesChanged:(id)changed message:(id)message
{
  v22 = *MEMORY[0x277D85DE8];
  cf = 0;
  v5 = cmio_XPCMessageCopyCFArray(message, "param1", &cf);
  if (v5)
  {
    v5 = CMIOLog(v5, v6);
    if (v5)
    {
      v5 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
      if (v5)
      {
        [CMIOExtensionProviderHostContext availableDevicesChanged:message:];
      }
    }
  }

  if (cf)
  {
    if (CMIOModuleLogLevel_once_1 != -1)
    {
      [CMIOExtensionProviderHostContext availableDevicesChanged:message:];
    }

    if (CMIOModuleLogLevel_cmioLevel_1 >= 1)
    {
      v7 = CMIOLog(v5, v6);
      if (v7)
      {
        v8 = v7;
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v9 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
          *buf = 136316163;
          v13 = v9;
          v14 = 1024;
          v15 = 177;
          v16 = 2080;
          v17 = "[CMIOExtensionProviderHostContext availableDevicesChanged:message:]";
          v18 = 2113;
          selfCopy = self;
          v20 = 2112;
          v21 = cf;
          _os_log_impl(&dword_22EA08000, v8, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %{private}@ - devices %@", buf, 0x30u);
        }
      }
    }

    delegate = [(CMIOExtensionProviderHostContext *)self delegate];
    [(CMIOExtensionProviderHostDelegate *)delegate extension:self availableDevicesChanged:cf];
    CFRelease(cf);
  }
}

- (void)availableStreamsChanged:(id)changed message:(id)message
{
  v27 = *MEMORY[0x277D85DE8];
  v16 = 0;
  v6 = cmio_XPCMessageCopyCFString(message, "param1", &v16);
  if (v16)
  {
    cf = 0;
    v8 = cmio_XPCMessageCopyCFArray(message, "param2", &cf);
    if (v8)
    {
      v8 = CMIOLog(v8, v9);
      if (v8)
      {
        v8 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
        if (v8)
        {
          [CMIOExtensionProviderHostContext availableStreamsChanged:message:];
        }
      }
    }

    if (cf)
    {
      if (CMIOModuleLogLevel_once_1 != -1)
      {
        [CMIOExtensionProviderHostContext availableDevicesChanged:message:];
      }

      if (CMIOModuleLogLevel_cmioLevel_1 >= 1)
      {
        v10 = CMIOLog(v8, v9);
        if (v10)
        {
          v11 = v10;
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            v12 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
            *buf = 136316163;
            v18 = v12;
            v19 = 1024;
            v20 = 195;
            v21 = 2080;
            v22 = "[CMIOExtensionProviderHostContext availableStreamsChanged:message:]";
            v23 = 2113;
            selfCopy = self;
            v25 = 2112;
            v26 = cf;
            _os_log_impl(&dword_22EA08000, v11, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %{private}@ - streams %@", buf, 0x30u);
          }
        }
      }

      delegate = [(CMIOExtensionProviderHostContext *)self delegate];
      [(CMIOExtensionProviderHostDelegate *)delegate extension:self availableStreamsChangedWithDeviceID:v16 streamIDs:cf];
      CFRelease(cf);
    }

    CFRelease(v16);
  }

  else
  {
    v14 = CMIOLog(v6, v7);
    if (v14 && os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionProviderHostContext availableStreamsChanged:message:];
    }
  }
}

- (void)pluginPropertiesChanged:(id)changed message:(id)message
{
  v24 = *MEMORY[0x277D85DE8];
  value = xpc_dictionary_get_value(message, "param1");
  if (value)
  {
    v7 = [CMIOExtensionPropertyState copyPropertyStatesFromXPCDictionary:value];
    if (v7)
    {
      v9 = v7;
      if (CMIOModuleLogLevel_once_1 != -1)
      {
        [CMIOExtensionProviderHostContext dealloc];
      }

      if (CMIOModuleLogLevel_cmioLevel_1 >= 2)
      {
        v10 = CMIOLog(v7, v8);
        if (v10)
        {
          v11 = v10;
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            v14 = 136316163;
            v15 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
            v16 = 1024;
            v17 = 215;
            v18 = 2080;
            v19 = "[CMIOExtensionProviderHostContext pluginPropertiesChanged:message:]";
            v20 = 2113;
            selfCopy = self;
            v22 = 2112;
            v23 = v9;
            _os_log_impl(&dword_22EA08000, v11, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %{private}@ - %@", &v14, 0x30u);
          }
        }
      }

      [(CMIOExtensionProviderHostDelegate *)[(CMIOExtensionProviderHostContext *)self delegate] extension:self pluginPropertiesChanged:v9];
    }

    else
    {
      v13 = CMIOLog(0, v8);
      if (v13 && os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [CMIOExtensionProviderHostContext pluginPropertiesChanged:message:];
      }
    }
  }

  else
  {
    v12 = CMIOLog(0, v6);
    if (v12 && os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionProviderHostContext pluginPropertiesChanged:message:];
    }
  }
}

- (void)devicePropertiesChanged:(id)changed message:(id)message
{
  v33 = *MEMORY[0x277D85DE8];
  cf = 0;
  v6 = cmio_XPCMessageCopyCFString(message, "param1", &cf);
  if (cf)
  {
    value = xpc_dictionary_get_value(message, "param2");
    if (value)
    {
      v10 = [CMIOExtensionPropertyState copyPropertyStatesFromXPCDictionary:value];
      if (v10)
      {
        v12 = v10;
        if (CMIOModuleLogLevel_once_1 != -1)
        {
          [CMIOExtensionProviderHostContext availableDevicesChanged:message:];
        }

        if (CMIOModuleLogLevel_cmioLevel_1 >= 2)
        {
          v13 = CMIOLog(v10, v11);
          if (v13)
          {
            v14 = v13;
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              v15 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
              *buf = 136316419;
              v22 = v15;
              v23 = 1024;
              v24 = 236;
              v25 = 2080;
              v26 = "[CMIOExtensionProviderHostContext devicePropertiesChanged:message:]";
              v27 = 2113;
              selfCopy = self;
              v29 = 2112;
              v30 = cf;
              v31 = 2112;
              v32 = v12;
              _os_log_impl(&dword_22EA08000, v14, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %{private}@ - %@ - %@", buf, 0x3Au);
            }
          }
        }

        delegate = [(CMIOExtensionProviderHostContext *)self delegate];
        [(CMIOExtensionProviderHostDelegate *)delegate extension:self devicePropertiesChangedWithDeviceID:cf propertyStates:v12];
      }

      else
      {
        v19 = CMIOLog(0, v11);
        if (v19 && os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          [CMIOExtensionProviderHostContext devicePropertiesChanged:message:];
        }
      }
    }

    else
    {
      v18 = CMIOLog(0, v9);
      if (v18 && os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [CMIOExtensionProviderHostContext devicePropertiesChanged:message:];
      }
    }

    CFRelease(cf);
  }

  else
  {
    v17 = CMIOLog(v6, v7);
    if (v17 && os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionProviderHostContext devicePropertiesChanged:message:];
    }
  }
}

- (void)streamPropertiesChanged:(id)changed message:(id)message
{
  v33 = *MEMORY[0x277D85DE8];
  cf = 0;
  v6 = cmio_XPCMessageCopyCFString(message, "param1", &cf);
  if (cf)
  {
    value = xpc_dictionary_get_value(message, "param2");
    if (value)
    {
      v10 = [CMIOExtensionPropertyState copyPropertyStatesFromXPCDictionary:value];
      if (v10)
      {
        v12 = v10;
        if (CMIOModuleLogLevel_once_1 != -1)
        {
          [CMIOExtensionProviderHostContext availableDevicesChanged:message:];
        }

        if (CMIOModuleLogLevel_cmioLevel_1 >= 2)
        {
          v13 = CMIOLog(v10, v11);
          if (v13)
          {
            v14 = v13;
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              v15 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
              *buf = 136316419;
              v22 = v15;
              v23 = 1024;
              v24 = 260;
              v25 = 2080;
              v26 = "[CMIOExtensionProviderHostContext streamPropertiesChanged:message:]";
              v27 = 2113;
              selfCopy = self;
              v29 = 2112;
              v30 = cf;
              v31 = 2112;
              v32 = v12;
              _os_log_impl(&dword_22EA08000, v14, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %{private}@ - %@ - %@", buf, 0x3Au);
            }
          }
        }

        delegate = [(CMIOExtensionProviderHostContext *)self delegate];
        [(CMIOExtensionProviderHostDelegate *)delegate extension:self streamPropertiesChangedWithStreamID:cf propertyStates:v12];
      }

      else
      {
        v19 = CMIOLog(0, v11);
        if (v19 && os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          [CMIOExtensionProviderHostContext streamPropertiesChanged:message:];
        }
      }
    }

    else
    {
      v18 = CMIOLog(0, v9);
      if (v18 && os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [CMIOExtensionProviderHostContext streamPropertiesChanged:message:];
      }
    }

    CFRelease(cf);
  }

  else
  {
    v17 = CMIOLog(v6, v7);
    if (v17 && os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionProviderHostContext streamPropertiesChanged:message:];
    }
  }
}

- (void)receivedSample:(id)sample message:(id)message
{
  v42 = *MEMORY[0x277D85DE8];
  cf = 0;
  v6 = cmio_XPCMessageCopyCFString(message, "param1", &cf);
  if (cf)
  {
    int64 = xpc_dictionary_get_int64(message, "param2");
    value = xpc_dictionary_get_value(message, "param3");
    if (value)
    {
      v11 = [[CMIOExtensionSample alloc] initWithXPCDictionary:value];
      if (v11)
      {
        v13 = v11;
        if (CMIOModuleLogLevel_once_1 != -1)
        {
          [CMIOExtensionProviderHostContext availableDevicesChanged:message:];
        }

        if (CMIOModuleLogLevel_cmioLevel_1 >= 3)
        {
          v14 = CMIOLog(v11, v12);
          if (v14)
          {
            v15 = v14;
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              v16 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
              *buf = 136317443;
              v23 = v16;
              v25 = 286;
              v26 = 2080;
              v24 = 1024;
              v27 = "[CMIOExtensionProviderHostContext receivedSample:message:]";
              v28 = 2113;
              selfCopy = self;
              v30 = 2112;
              v31 = cf;
              v32 = 1024;
              v33 = HIBYTE(int64);
              v34 = 1024;
              v35 = BYTE2(int64);
              v36 = 1024;
              v37 = BYTE1(int64);
              v38 = 1024;
              v39 = int64;
              v40 = 2112;
              v41 = v13;
              _os_log_impl(&dword_22EA08000, v15, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %{private}@ - %@ - %c%c%c%c - %@", buf, 0x52u);
            }
          }
        }

        delegate = [(CMIOExtensionProviderHostContext *)self delegate];
        [(CMIOExtensionProviderHostDelegate *)delegate extension:self receivedSampleWithStreamID:cf sample:v13];
      }

      else
      {
        v20 = CMIOLog(0, v12);
        if (v20 && os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          [CMIOExtensionProviderHostContext receivedSample:message:];
        }
      }
    }

    else
    {
      v19 = CMIOLog(0, v10);
      if (v19 && os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [CMIOExtensionProviderHostContext receivedSample:message:];
      }
    }

    CFRelease(cf);
  }

  else
  {
    v18 = CMIOLog(v6, v7);
    if (v18 && os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionProviderHostContext receivedSample:message:];
    }
  }
}

- (void)pullSample:(id)sample message:(id)message
{
  v16 = 0;
  v7 = cmio_XPCMessageCopyCFString(message, "param1", &v16);
  if (!v16)
  {
    v13 = CMIOLog(v7, v8);
    v11 = v13;
    if (!v13)
    {
      goto LABEL_11;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionProviderHostContext pullSample:message:];
    }

    goto LABEL_10;
  }

  reply = xpc_dictionary_create_reply(message);
  if (reply)
  {
    v11 = reply;
    xpc_retain(reply);
    delegate = [(CMIOExtensionProviderHostContext *)self delegate];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __55__CMIOExtensionProviderHostContext_pullSample_message___block_invoke;
    v15[3] = &unk_27885C318;
    v15[4] = v11;
    v15[5] = sample;
    [(CMIOExtensionProviderHostDelegate *)delegate extension:self pullSampleWithStreamID:v16 reply:v15];
    goto LABEL_11;
  }

  v14 = CMIOLog(0, v10);
  v11 = v14;
  if (v14)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionProviderHostContext pullSample:message:];
    }

LABEL_10:
    v11 = 0;
  }

LABEL_11:
  if (v16)
  {
    CFRelease(v16);
  }

  if (v11)
  {
    xpc_release(v11);
  }
}

void __55__CMIOExtensionProviderHostContext_pullSample_message___block_invoke(uint64_t a1, void *a2, BOOL a3, void *a4)
{
  if (a2)
  {
    v7 = [a2 copyXPCDictionary];
    if (v7)
    {
      v9 = v7;
      xpc_dictionary_set_value(*(a1 + 32), "param1", v7);
      xpc_release(v9);
    }

    else
    {
      v10 = CMIOLog(0, v8);
      if (v10 && os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __55__CMIOExtensionProviderHostContext_pullSample_message___block_invoke_cold_1();
      }

      a4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-5 userInfo:0];
    }

    xpc_dictionary_set_BOOL(*(a1 + 32), "param2", a3);
  }

  if (a4)
  {
    v11 = CMIOLog(a1, a2);
    if (v11 && os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __55__CMIOExtensionProviderHostContext_pullSample_message___block_invoke_cold_2();
    }

    v12 = *(a1 + 32);
    v13 = [a4 code];
    v14 = v12;
  }

  else
  {
    v14 = *(a1 + 32);
    v13 = 0;
  }

  xpc_dictionary_set_int64(v14, "errorReturn", v13);
  xpc_connection_send_message(*(a1 + 40), *(a1 + 32));
  xpc_release(*(a1 + 32));
}

- (void)scheduledOutputChanged:(id)changed message:(id)message
{
  v33 = *MEMORY[0x277D85DE8];
  cf = 0;
  v6 = cmio_XPCMessageCopyCFString(message, "param1", &cf);
  if (cf)
  {
    value = xpc_dictionary_get_value(message, "param2");
    if (value)
    {
      v10 = [[CMIOExtensionScheduledOutput alloc] initWithXPCDictionary:value];
      if (v10)
      {
        v12 = v10;
        if (CMIOModuleLogLevel_once_1 != -1)
        {
          [CMIOExtensionProviderHostContext availableDevicesChanged:message:];
        }

        if (CMIOModuleLogLevel_cmioLevel_1 >= 3)
        {
          v13 = CMIOLog(v10, v11);
          if (v13)
          {
            v14 = v13;
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              v15 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
              *buf = 136316419;
              v22 = v15;
              v23 = 1024;
              v24 = 356;
              v25 = 2080;
              v26 = "[CMIOExtensionProviderHostContext scheduledOutputChanged:message:]";
              v27 = 2113;
              selfCopy = self;
              v29 = 2112;
              v30 = cf;
              v31 = 2112;
              v32 = v12;
              _os_log_impl(&dword_22EA08000, v14, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %{private}@ - %@ - %@", buf, 0x3Au);
            }
          }
        }

        delegate = [(CMIOExtensionProviderHostContext *)self delegate];
        [(CMIOExtensionProviderHostDelegate *)delegate extension:self streamScheduledOutputChangedWithStreamID:cf scheduledOutput:v12];
      }

      else
      {
        v19 = CMIOLog(0, v11);
        if (v19 && os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          [CMIOExtensionProviderHostContext scheduledOutputChanged:message:];
        }
      }
    }

    else
    {
      v18 = CMIOLog(0, v9);
      if (v18 && os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [CMIOExtensionProviderHostContext scheduledOutputChanged:message:];
      }
    }

    CFRelease(cf);
  }

  else
  {
    v17 = CMIOLog(v6, v7);
    if (v17 && os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionProviderHostContext scheduledOutputChanged:message:];
    }
  }
}

- (void)availablePluginProperties:(id)properties
{
  v19 = *MEMORY[0x277D85DE8];
  if (CMIOModuleLogLevel_once_1 != -1)
  {
    [CMIOExtensionProviderHostContext dealloc];
  }

  if (CMIOModuleLogLevel_cmioLevel_1 >= 1)
  {
    v5 = CMIOLog(self, a2);
    if (v5)
    {
      v6 = v5;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315907;
        v12 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
        v13 = 1024;
        v14 = 371;
        v15 = 2080;
        v16 = "[CMIOExtensionProviderHostContext availablePluginProperties:]";
        v17 = 2113;
        selfCopy = self;
        _os_log_impl(&dword_22EA08000, v6, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %{private}@", buf, 0x26u);
      }
    }
  }

  v7 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v7, "MessageType", 2uLL);
  dispatch_group_enter(self->_transactionGroup);
  connection = self->_connection;
  queue = self->_queue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __62__CMIOExtensionProviderHostContext_availablePluginProperties___block_invoke;
  v10[3] = &unk_27885C340;
  v10[4] = self;
  v10[5] = properties;
  xpc_connection_send_message_with_reply(connection, v7, queue, v10);
  xpc_release(v7);
}

void __62__CMIOExtensionProviderHostContext_availablePluginProperties___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x2318F1BC0](a2);
  if (v4 == MEMORY[0x277D86480])
  {
    v7 = CMIOLog(v4, v5);
    if (v7 && os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
      __62__CMIOExtensionProviderHostContext_availablePluginProperties___block_invoke_cold_3();
    }

    [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-7 userInfo:0];
    (*(*(a1 + 40) + 16))();
  }

  else if (v4 == MEMORY[0x277D86468])
  {
    int64 = xpc_dictionary_get_int64(a2, "errorReturn");
    if (int64)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:int64 userInfo:0];
      (*(*(a1 + 40) + 16))();
    }

    else
    {
      cf[0] = 0;
      v9 = cmio_XPCMessageCopyCFArray(a2, "param1", cf);
      if (cf[0])
      {
        [MEMORY[0x277CBEB98] setWithArray:?];
        CFRelease(cf[0]);
        cf[0] = 0;
      }

      else
      {
        v11 = CMIOLog(v9, v10);
        if (v11 && os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v12 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
          __62__CMIOExtensionProviderHostContext_availablePluginProperties___block_invoke_cold_2(v12, v14);
        }

        [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6 userInfo:0];
      }

      (*(*(a1 + 40) + 16))();
    }
  }

  else
  {
    v6 = CMIOLog(v4, v5);
    if (v6 && os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
      __62__CMIOExtensionProviderHostContext_availablePluginProperties___block_invoke_cold_1();
    }

    [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6 userInfo:0];
    (*(*(a1 + 40) + 16))();
  }

  dispatch_group_leave(*(*(a1 + 32) + 24));
}

- (void)pluginStates:(id)states
{
  v39 = *MEMORY[0x277D85DE8];
  if (CMIOModuleLogLevel_once_1 != -1)
  {
    [CMIOExtensionProviderHostContext dealloc];
  }

  if (CMIOModuleLogLevel_cmioLevel_1 >= 1)
  {
    v5 = CMIOLog(self, a2);
    if (v5)
    {
      v6 = v5;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315907;
        v32 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
        v33 = 1024;
        v34 = 423;
        v35 = 2080;
        v36 = "[CMIOExtensionProviderHostContext pluginStates:]";
        v37 = 2113;
        selfCopy = self;
        _os_log_impl(&dword_22EA08000, v6, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %{private}@", buf, 0x26u);
      }
    }
  }

  v7 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v7, "MessageType", 1uLL);
  v8 = xpc_connection_send_message_with_reply_sync(self->_connection, v7);
  v9 = v8;
  if (v8)
  {
    v10 = MEMORY[0x2318F1BC0](v8);
    if (v10 == MEMORY[0x277D86480])
    {
      v13 = CMIOLog(v10, v11);
      if (v13 && os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
        [CMIOExtensionProviderHostContext pluginStates:];
      }

      (*(states + 2))(states, 0, 0, 0, [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-7 userInfo:0]);
      goto LABEL_37;
    }

    if (v10 != MEMORY[0x277D86468])
    {
      v12 = CMIOLog(v10, v11);
      if (v12 && os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
        [CMIOExtensionProviderHostContext pluginStates:];
      }

      (*(states + 2))(states, 0, 0, 0, [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6 userInfo:0]);
      goto LABEL_37;
    }

    int64 = xpc_dictionary_get_int64(v9, "errorReturn");
    if (int64)
    {
      (*(states + 2))(states, 0, 0, 0, [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:int64 userInfo:0]);
LABEL_37:
      xpc_release(v9);
      v28 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_uint64(v28, "MessageType", 0x19uLL);
      xpc_connection_send_message_with_reply(self->_connection, v28, self->_queue, &__block_literal_global_4);
      xpc_release(v28);
      goto LABEL_38;
    }

    value = xpc_dictionary_get_value(v9, "param1");
    if (value)
    {
      v18 = [CMIOExtensionPropertyState copyPropertyStatesFromXPCDictionary:value];
      if (v18)
      {
        v19 = 0;
LABEL_30:
        v24 = xpc_dictionary_get_value(v9, "param2");
        if (v24)
        {
          v25 = objc_alloc_init(MEMORY[0x277CBEB38]);
          applier[0] = MEMORY[0x277D85DD0];
          applier[1] = 3221225472;
          applier[2] = __49__CMIOExtensionProviderHostContext_pluginStates___block_invoke;
          applier[3] = &unk_27885BFC0;
          applier[4] = v25;
          xpc_array_apply(v24, applier);
        }

        else
        {
          v25 = 0;
        }

        v26 = xpc_dictionary_get_value(v9, "param3");
        if (v26)
        {
          v27 = objc_alloc_init(MEMORY[0x277CBEB38]);
          v29[0] = MEMORY[0x277D85DD0];
          v29[1] = 3221225472;
          v29[2] = __49__CMIOExtensionProviderHostContext_pluginStates___block_invoke_26;
          v29[3] = &unk_27885BFC0;
          v29[4] = v27;
          xpc_array_apply(v26, v29);
        }

        else
        {
          v27 = 0;
        }

        (*(states + 2))(states, v18, v25, v27, v19);
        goto LABEL_37;
      }

      v22 = CMIOLog(0, v17);
      if (v22 && os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
        [(CMIOExtensionProviderHostContext *)v23 pluginStates:buf];
      }
    }

    else
    {
      v20 = CMIOLog(0, v15);
      if (v20 && os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
        [(CMIOExtensionProviderHostContext *)v21 pluginStates:buf];
      }
    }

    v19 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6 userInfo:0];
    v18 = 0;
    goto LABEL_30;
  }

LABEL_38:
  xpc_release(v7);
}

uint64_t __49__CMIOExtensionProviderHostContext_pluginStates___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [CMIOExtensionPropertyState copyPropertyStatesFromXPCDictionary:?];
  if (v3)
  {
    v5 = v3;
    v6 = [v3 objectForKeyedSubscript:0x284358DB8];
    if ([v6 value])
    {
      [*(a1 + 32) setObject:v5 forKey:{objc_msgSend(v6, "value")}];
    }
  }

  else
  {
    v7 = CMIOLog(0, v4);
    if (v7 && os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __49__CMIOExtensionProviderHostContext_pluginStates___block_invoke_cold_1();
    }
  }

  return 1;
}

uint64_t __49__CMIOExtensionProviderHostContext_pluginStates___block_invoke_26(uint64_t a1, uint64_t a2)
{
  v3 = [CMIOExtensionPropertyState copyPropertyStatesFromXPCDictionary:?];
  if (v3)
  {
    v5 = v3;
    v6 = [v3 objectForKeyedSubscript:0x284358E98];
    if ([v6 value])
    {
      [*(a1 + 32) setObject:v5 forKey:{objc_msgSend(v6, "value")}];
    }
  }

  else
  {
    v7 = CMIOLog(0, v4);
    if (v7 && os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __49__CMIOExtensionProviderHostContext_pluginStates___block_invoke_26_cold_1();
    }
  }

  return 1;
}

void __49__CMIOExtensionProviderHostContext_pluginStates___block_invoke_27(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x2318F1BC0](a2);
  if (v3 == MEMORY[0x277D86480])
  {
    v8 = CMIOLog(v3, v4);
    if (v8 && os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __49__CMIOExtensionProviderHostContext_pluginStates___block_invoke_27_cold_2();
    }
  }

  else if (v3 == MEMORY[0x277D86468])
  {
    int64 = xpc_dictionary_get_int64(a2, "errorReturn");
    v7 = CMIOLog(int64, v6);
    if (v7)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __49__CMIOExtensionProviderHostContext_pluginStates___block_invoke_27_cold_1();
      }
    }
  }
}

- (void)pluginPropertyStatesForProperties:(id)properties reply:(id)reply
{
  v24 = *MEMORY[0x277D85DE8];
  if (CMIOModuleLogLevel_once_1 != -1)
  {
    [CMIOExtensionProviderHostContext dealloc];
  }

  if (CMIOModuleLogLevel_cmioLevel_1 >= 1)
  {
    v7 = CMIOLog(self, a2);
    if (v7)
    {
      v8 = v7;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315907;
        v17 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
        v18 = 1024;
        v19 = 535;
        v20 = 2080;
        v21 = "[CMIOExtensionProviderHostContext pluginPropertyStatesForProperties:reply:]";
        v22 = 2113;
        selfCopy = self;
        _os_log_impl(&dword_22EA08000, v8, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %{private}@", buf, 0x26u);
      }
    }
  }

  v9 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v9, "MessageType", 3uLL);
  if (properties)
  {
    v10 = cmio_XPCMessageSetCFArray(v9, "param1", [properties allObjects]);
    if (v10)
    {
      v12 = CMIOLog(v10, v11);
      if (v12)
      {
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          [CMIOExtensionProviderHostContext pluginPropertyStatesForProperties:reply:];
        }
      }
    }
  }

  dispatch_group_enter(self->_transactionGroup);
  connection = self->_connection;
  queue = self->_queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __76__CMIOExtensionProviderHostContext_pluginPropertyStatesForProperties_reply___block_invoke;
  v15[3] = &unk_27885C340;
  v15[4] = self;
  v15[5] = reply;
  xpc_connection_send_message_with_reply(connection, v9, queue, v15);
  xpc_release(v9);
}

void __76__CMIOExtensionProviderHostContext_pluginPropertyStatesForProperties_reply___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x2318F1BC0](a2);
  if (v4 != MEMORY[0x277D86480])
  {
    if (v4 != MEMORY[0x277D86468])
    {
      v6 = CMIOLog(v4, v5);
      if (v6 && os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
        __76__CMIOExtensionProviderHostContext_pluginPropertyStatesForProperties_reply___block_invoke_cold_1();
      }

      [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6 userInfo:0];
      (*(*(a1 + 40) + 16))();
      goto LABEL_24;
    }

    int64 = xpc_dictionary_get_int64(a2, "errorReturn");
    if (int64)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:int64 userInfo:0];
      (*(*(a1 + 40) + 16))();
      goto LABEL_24;
    }

    value = xpc_dictionary_get_value(a2, "param1");
    if (value)
    {
      if ([CMIOExtensionPropertyState copyPropertyStatesFromXPCDictionary:value])
      {
        goto LABEL_23;
      }

      v13 = CMIOLog(0, 0);
      if (v13 && os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
        __76__CMIOExtensionProviderHostContext_pluginPropertyStatesForProperties_reply___block_invoke_cold_2(v14, v15);
      }
    }

    else
    {
      v11 = CMIOLog(0, v9);
      if (v11 && os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
        __76__CMIOExtensionProviderHostContext_pluginPropertyStatesForProperties_reply___block_invoke_cold_3(v12, v15);
      }
    }

    [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6 userInfo:0];
LABEL_23:
    (*(*(a1 + 40) + 16))();
    goto LABEL_24;
  }

  v7 = CMIOLog(v4, v5);
  if (v7 && os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
    __76__CMIOExtensionProviderHostContext_pluginPropertyStatesForProperties_reply___block_invoke_cold_4();
  }

  [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-7 userInfo:0];
  (*(*(a1 + 40) + 16))();
LABEL_24:
  dispatch_group_leave(*(*(a1 + 32) + 24));
}

- (void)setPluginPropertyValues:(id)values reply:(id)reply
{
  v27 = *MEMORY[0x277D85DE8];
  if (CMIOModuleLogLevel_once_1 != -1)
  {
    [CMIOExtensionProviderHostContext dealloc];
  }

  if (CMIOModuleLogLevel_cmioLevel_1 >= 1)
  {
    v7 = CMIOLog(self, a2);
    if (v7)
    {
      v8 = v7;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315907;
        v20 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
        v21 = 1024;
        v22 = 596;
        v23 = 2080;
        v24 = "[CMIOExtensionProviderHostContext setPluginPropertyValues:reply:]";
        v25 = 2113;
        selfCopy = self;
        _os_log_impl(&dword_22EA08000, v8, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %{private}@", buf, 0x26u);
      }
    }
  }

  if ([values count])
  {
    v10 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v10, "MessageType", 4uLL);
    v11 = [CMIOExtensionPropertyState copyXPCDictionaryFromPropertyValues:values];
    if (v11)
    {
      v13 = v11;
      xpc_dictionary_set_value(v10, "param1", v11);
      xpc_release(v13);
      dispatch_group_enter(self->_transactionGroup);
      connection = self->_connection;
      queue = self->_queue;
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __66__CMIOExtensionProviderHostContext_setPluginPropertyValues_reply___block_invoke;
      v18[3] = &unk_27885C340;
      v18[4] = self;
      v18[5] = reply;
      xpc_connection_send_message_with_reply(connection, v10, queue, v18);
    }

    else
    {
      v17 = CMIOLog(0, v12);
      if (v17)
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          [CMIOExtensionProviderHostContext setPluginPropertyValues:reply:];
        }
      }

      (*(reply + 2))(reply, [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-5 userInfo:0]);
    }

    xpc_release(v10);
  }

  else
  {
    v16 = CMIOLog(0, v9);
    if (v16 && os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionProviderHostContext setPluginPropertyValues:reply:];
    }

    (*(reply + 2))(reply, [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-1 userInfo:0]);
  }
}

void __66__CMIOExtensionProviderHostContext_setPluginPropertyValues_reply___block_invoke(uint64_t a1, void *a2)
{
  v4 = MEMORY[0x2318F1BC0](a2);
  if (v4 == MEMORY[0x277D86480])
  {
    v7 = CMIOLog(v4, v5);
    if (v7 && os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
      __66__CMIOExtensionProviderHostContext_setPluginPropertyValues_reply___block_invoke_cold_2();
    }

    [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-7 userInfo:0];
    (*(*(a1 + 40) + 16))();
  }

  else if (v4 == MEMORY[0x277D86468])
  {
    int64 = xpc_dictionary_get_int64(a2, "errorReturn");
    if (int64)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:int64 userInfo:0];
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v6 = CMIOLog(v4, v5);
    if (v6 && os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
      __66__CMIOExtensionProviderHostContext_setPluginPropertyValues_reply___block_invoke_cold_1();
    }

    [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6 userInfo:0];
    (*(*(a1 + 40) + 16))();
  }

  dispatch_group_leave(*(*(a1 + 32) + 24));
}

- (void)availableDevicePropertiesWithDeviceID:(id)d reply:(id)reply
{
  v24 = *MEMORY[0x277D85DE8];
  if (CMIOModuleLogLevel_once_1 != -1)
  {
    [CMIOExtensionProviderHostContext dealloc];
  }

  if (CMIOModuleLogLevel_cmioLevel_1 >= 1)
  {
    v7 = CMIOLog(self, a2);
    if (v7)
    {
      v8 = v7;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315907;
        v17 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
        v18 = 1024;
        v19 = 655;
        v20 = 2080;
        v21 = "[CMIOExtensionProviderHostContext availableDevicePropertiesWithDeviceID:reply:]";
        v22 = 2113;
        selfCopy = self;
        _os_log_impl(&dword_22EA08000, v8, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %{private}@", buf, 0x26u);
      }
    }
  }

  v9 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v9, "MessageType", 0xBuLL);
  v10 = cmio_XPCMessageSetCFString(v9, "param1", d);
  if (v10)
  {
    v12 = CMIOLog(v10, v11);
    if (v12 && os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionProviderHostContext availableDevicePropertiesWithDeviceID:reply:];
    }

    (*(reply + 2))(reply, 0, [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-5 userInfo:0]);
  }

  else
  {
    dispatch_group_enter(self->_transactionGroup);
    connection = self->_connection;
    queue = self->_queue;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __80__CMIOExtensionProviderHostContext_availableDevicePropertiesWithDeviceID_reply___block_invoke;
    v15[3] = &unk_27885C340;
    v15[4] = self;
    v15[5] = reply;
    xpc_connection_send_message_with_reply(connection, v9, queue, v15);
  }

  xpc_release(v9);
}

void __80__CMIOExtensionProviderHostContext_availableDevicePropertiesWithDeviceID_reply___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x2318F1BC0](a2);
  if (v4 == MEMORY[0x277D86480])
  {
    v7 = CMIOLog(v4, v5);
    if (v7 && os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
      __80__CMIOExtensionProviderHostContext_availableDevicePropertiesWithDeviceID_reply___block_invoke_cold_3();
    }

    [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-7 userInfo:0];
    (*(*(a1 + 40) + 16))();
  }

  else if (v4 == MEMORY[0x277D86468])
  {
    int64 = xpc_dictionary_get_int64(a2, "errorReturn");
    if (int64)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:int64 userInfo:0];
      (*(*(a1 + 40) + 16))();
    }

    else
    {
      cf[0] = 0;
      v9 = cmio_XPCMessageCopyCFArray(a2, "param1", cf);
      if (cf[0])
      {
        [MEMORY[0x277CBEB98] setWithArray:?];
        CFRelease(cf[0]);
        cf[0] = 0;
      }

      else
      {
        v11 = CMIOLog(v9, v10);
        if (v11 && os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v12 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
          __80__CMIOExtensionProviderHostContext_availableDevicePropertiesWithDeviceID_reply___block_invoke_cold_2(v12, v14);
        }

        [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6 userInfo:0];
      }

      (*(*(a1 + 40) + 16))();
    }
  }

  else
  {
    v6 = CMIOLog(v4, v5);
    if (v6 && os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
      __80__CMIOExtensionProviderHostContext_availableDevicePropertiesWithDeviceID_reply___block_invoke_cold_1();
    }

    [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6 userInfo:0];
    (*(*(a1 + 40) + 16))();
  }

  dispatch_group_leave(*(*(a1 + 32) + 24));
}

- (void)deviceStatesWithDeviceID:(id)d reply:(id)reply
{
  v24 = *MEMORY[0x277D85DE8];
  if (CMIOModuleLogLevel_once_1 != -1)
  {
    [CMIOExtensionProviderHostContext dealloc];
  }

  if (CMIOModuleLogLevel_cmioLevel_1 >= 1)
  {
    v7 = CMIOLog(self, a2);
    if (v7)
    {
      v8 = v7;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315907;
        v17 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
        v18 = 1024;
        v19 = 718;
        v20 = 2080;
        v21 = "[CMIOExtensionProviderHostContext deviceStatesWithDeviceID:reply:]";
        v22 = 2113;
        selfCopy = self;
        _os_log_impl(&dword_22EA08000, v8, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %{private}@", buf, 0x26u);
      }
    }
  }

  v9 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v9, "MessageType", 0xAuLL);
  v10 = cmio_XPCMessageSetCFString(v9, "param1", d);
  if (v10)
  {
    v12 = CMIOLog(v10, v11);
    if (v12 && os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionProviderHostContext deviceStatesWithDeviceID:reply:];
    }

    (*(reply + 2))(reply, 0, 0, [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-5 userInfo:0]);
  }

  else
  {
    dispatch_group_enter(self->_transactionGroup);
    connection = self->_connection;
    queue = self->_queue;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __67__CMIOExtensionProviderHostContext_deviceStatesWithDeviceID_reply___block_invoke;
    v15[3] = &unk_27885C340;
    v15[4] = self;
    v15[5] = reply;
    xpc_connection_send_message_with_reply(connection, v9, queue, v15);
  }

  xpc_release(v9);
}

void __67__CMIOExtensionProviderHostContext_deviceStatesWithDeviceID_reply___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x2318F1BC0](a2);
  if (v4 != MEMORY[0x277D86480])
  {
    if (v4 != MEMORY[0x277D86468])
    {
      v6 = CMIOLog(v4, v5);
      if (v6 && os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
        __67__CMIOExtensionProviderHostContext_deviceStatesWithDeviceID_reply___block_invoke_cold_1();
      }

      [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6 userInfo:0];
      (*(*(a1 + 40) + 16))();
      goto LABEL_26;
    }

    int64 = xpc_dictionary_get_int64(a2, "errorReturn");
    if (int64)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:int64 userInfo:0];
      (*(*(a1 + 40) + 16))();
      goto LABEL_26;
    }

    value = xpc_dictionary_get_value(a2, "param1");
    if (value)
    {
      if ([CMIOExtensionPropertyState copyPropertyStatesFromXPCDictionary:value])
      {
        goto LABEL_23;
      }

      v14 = CMIOLog(0, v11);
      if (v14 && os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
        __67__CMIOExtensionProviderHostContext_deviceStatesWithDeviceID_reply___block_invoke_cold_2(v15, v19);
      }
    }

    else
    {
      v12 = CMIOLog(0, v9);
      if (v12 && os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
        __67__CMIOExtensionProviderHostContext_deviceStatesWithDeviceID_reply___block_invoke_cold_3(v13, v19);
      }
    }

    [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6 userInfo:0];
LABEL_23:
    v16 = xpc_dictionary_get_value(a2, "param2");
    if (v16)
    {
      v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
      applier[0] = MEMORY[0x277D85DD0];
      applier[1] = 3221225472;
      applier[2] = __67__CMIOExtensionProviderHostContext_deviceStatesWithDeviceID_reply___block_invoke_28;
      applier[3] = &unk_27885BFC0;
      applier[4] = v17;
      xpc_array_apply(v16, applier);
    }

    (*(*(a1 + 40) + 16))();
    goto LABEL_26;
  }

  v7 = CMIOLog(v4, v5);
  if (v7 && os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
    __67__CMIOExtensionProviderHostContext_deviceStatesWithDeviceID_reply___block_invoke_cold_4();
  }

  [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-7 userInfo:0];
  (*(*(a1 + 40) + 16))();
LABEL_26:
  dispatch_group_leave(*(*(a1 + 32) + 24));
}

uint64_t __67__CMIOExtensionProviderHostContext_deviceStatesWithDeviceID_reply___block_invoke_28(uint64_t a1, uint64_t a2)
{
  v3 = [CMIOExtensionPropertyState copyPropertyStatesFromXPCDictionary:?];
  if (v3)
  {
    v5 = v3;
    v6 = [v3 objectForKeyedSubscript:0x284358E98];
    if ([v6 value])
    {
      [*(a1 + 32) setObject:v5 forKey:{objc_msgSend(v6, "value")}];
    }
  }

  else
  {
    v7 = CMIOLog(0, v4);
    if (v7 && os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __67__CMIOExtensionProviderHostContext_deviceStatesWithDeviceID_reply___block_invoke_28_cold_1();
    }
  }

  return 1;
}

- (void)devicePropertyStatesWithDeviceID:(id)d properties:(id)properties reply:(id)reply
{
  v29 = *MEMORY[0x277D85DE8];
  if (CMIOModuleLogLevel_once_1 != -1)
  {
    [CMIOExtensionProviderHostContext dealloc];
  }

  if (CMIOModuleLogLevel_cmioLevel_1 >= 1)
  {
    v9 = CMIOLog(self, a2);
    if (v9)
    {
      v10 = v9;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315907;
        v22 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
        v23 = 1024;
        v24 = 804;
        v25 = 2080;
        v26 = "[CMIOExtensionProviderHostContext devicePropertyStatesWithDeviceID:properties:reply:]";
        v27 = 2113;
        selfCopy = self;
        _os_log_impl(&dword_22EA08000, v10, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %{private}@", buf, 0x26u);
      }
    }
  }

  v11 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v11, "MessageType", 0xCuLL);
  v12 = cmio_XPCMessageSetCFString(v11, "param1", d);
  if (v12)
  {
    v14 = CMIOLog(v12, v13);
    if (v14 && os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionProviderHostContext devicePropertyStatesWithDeviceID:properties:reply:];
    }

    (*(reply + 2))(reply, 0, [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-5 userInfo:0]);
  }

  else
  {
    if (properties)
    {
      v15 = cmio_XPCMessageSetCFArray(v11, "param2", [properties allObjects]);
      if (v15)
      {
        v17 = CMIOLog(v15, v16);
        if (v17)
        {
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            [CMIOExtensionProviderHostContext devicePropertyStatesWithDeviceID:properties:reply:];
          }
        }
      }
    }

    dispatch_group_enter(self->_transactionGroup);
    connection = self->_connection;
    queue = self->_queue;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __86__CMIOExtensionProviderHostContext_devicePropertyStatesWithDeviceID_properties_reply___block_invoke;
    v20[3] = &unk_27885C340;
    v20[4] = self;
    v20[5] = reply;
    xpc_connection_send_message_with_reply(connection, v11, queue, v20);
  }

  xpc_release(v11);
}

void __86__CMIOExtensionProviderHostContext_devicePropertyStatesWithDeviceID_properties_reply___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x2318F1BC0](a2);
  if (v4 != MEMORY[0x277D86480])
  {
    if (v4 != MEMORY[0x277D86468])
    {
      v6 = CMIOLog(v4, v5);
      if (v6 && os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
        __86__CMIOExtensionProviderHostContext_devicePropertyStatesWithDeviceID_properties_reply___block_invoke_cold_1();
      }

      [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6 userInfo:0];
      (*(*(a1 + 40) + 16))();
      goto LABEL_24;
    }

    int64 = xpc_dictionary_get_int64(a2, "errorReturn");
    if (int64)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:int64 userInfo:0];
      (*(*(a1 + 40) + 16))();
      goto LABEL_24;
    }

    value = xpc_dictionary_get_value(a2, "param1");
    if (value)
    {
      if ([CMIOExtensionPropertyState copyPropertyStatesFromXPCDictionary:value])
      {
        goto LABEL_23;
      }

      v13 = CMIOLog(0, 0);
      if (v13 && os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
        __86__CMIOExtensionProviderHostContext_devicePropertyStatesWithDeviceID_properties_reply___block_invoke_cold_2(v14, v15);
      }
    }

    else
    {
      v11 = CMIOLog(0, v9);
      if (v11 && os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
        __86__CMIOExtensionProviderHostContext_devicePropertyStatesWithDeviceID_properties_reply___block_invoke_cold_3(v12, v15);
      }
    }

    [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6 userInfo:0];
LABEL_23:
    (*(*(a1 + 40) + 16))();
    goto LABEL_24;
  }

  v7 = CMIOLog(v4, v5);
  if (v7 && os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
    __86__CMIOExtensionProviderHostContext_devicePropertyStatesWithDeviceID_properties_reply___block_invoke_cold_4();
  }

  [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-7 userInfo:0];
  (*(*(a1 + 40) + 16))();
LABEL_24:
  dispatch_group_leave(*(*(a1 + 32) + 24));
}

- (void)setDevicePropertyValuesWithDeviceID:(id)d propertyValues:(id)values reply:(id)reply
{
  v32 = *MEMORY[0x277D85DE8];
  if (CMIOModuleLogLevel_once_1 != -1)
  {
    [CMIOExtensionProviderHostContext dealloc];
  }

  if (CMIOModuleLogLevel_cmioLevel_1 >= 1)
  {
    v9 = CMIOLog(self, a2);
    if (v9)
    {
      v10 = v9;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315907;
        v25 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
        v26 = 1024;
        v27 = 876;
        v28 = 2080;
        v29 = "[CMIOExtensionProviderHostContext setDevicePropertyValuesWithDeviceID:propertyValues:reply:]";
        v30 = 2113;
        selfCopy = self;
        _os_log_impl(&dword_22EA08000, v10, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %{private}@", buf, 0x26u);
      }
    }
  }

  if ([values count])
  {
    v12 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v12, "MessageType", 0xDuLL);
    v13 = cmio_XPCMessageSetCFString(v12, "param1", d);
    if (v13)
    {
      v15 = CMIOLog(v13, v14);
      if (v15)
      {
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          [CMIOExtensionProviderHostContext setDevicePropertyValuesWithDeviceID:propertyValues:reply:];
        }
      }
    }

    else
    {
      v17 = [CMIOExtensionPropertyState copyXPCDictionaryFromPropertyValues:values];
      if (v17)
      {
        v19 = v17;
        xpc_dictionary_set_value(v12, "param2", v17);
        xpc_release(v19);
        dispatch_group_enter(self->_transactionGroup);
        connection = self->_connection;
        queue = self->_queue;
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __93__CMIOExtensionProviderHostContext_setDevicePropertyValuesWithDeviceID_propertyValues_reply___block_invoke;
        v23[3] = &unk_27885C340;
        v23[4] = self;
        v23[5] = reply;
        xpc_connection_send_message_with_reply(connection, v12, queue, v23);
        goto LABEL_19;
      }

      v22 = CMIOLog(0, v18);
      if (v22 && os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [CMIOExtensionProviderHostContext setDevicePropertyValuesWithDeviceID:propertyValues:reply:];
      }
    }

    (*(reply + 2))(reply, [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-5 userInfo:0]);
LABEL_19:
    xpc_release(v12);
    return;
  }

  v16 = CMIOLog(0, v11);
  if (v16 && os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    [CMIOExtensionProviderHostContext setDevicePropertyValuesWithDeviceID:propertyValues:reply:];
  }

  (*(reply + 2))(reply, [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-1 userInfo:0]);
}

void __93__CMIOExtensionProviderHostContext_setDevicePropertyValuesWithDeviceID_propertyValues_reply___block_invoke(uint64_t a1, void *a2)
{
  v4 = MEMORY[0x2318F1BC0](a2);
  if (v4 == MEMORY[0x277D86480])
  {
    v7 = CMIOLog(v4, v5);
    if (v7 && os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
      __93__CMIOExtensionProviderHostContext_setDevicePropertyValuesWithDeviceID_propertyValues_reply___block_invoke_cold_2();
    }

    [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-7 userInfo:0];
    (*(*(a1 + 40) + 16))();
  }

  else if (v4 == MEMORY[0x277D86468])
  {
    int64 = xpc_dictionary_get_int64(a2, "errorReturn");
    if (int64)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:int64 userInfo:0];
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v6 = CMIOLog(v4, v5);
    if (v6 && os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
      __93__CMIOExtensionProviderHostContext_setDevicePropertyValuesWithDeviceID_propertyValues_reply___block_invoke_cold_1();
    }

    [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6 userInfo:0];
    (*(*(a1 + 40) + 16))();
  }

  dispatch_group_leave(*(*(a1 + 32) + 24));
}

- (void)availableStreamPropertiesWithStreamID:(id)d reply:(id)reply
{
  v24 = *MEMORY[0x277D85DE8];
  if (CMIOModuleLogLevel_once_1 != -1)
  {
    [CMIOExtensionProviderHostContext dealloc];
  }

  if (CMIOModuleLogLevel_cmioLevel_1 >= 1)
  {
    v7 = CMIOLog(self, a2);
    if (v7)
    {
      v8 = v7;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315907;
        v17 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
        v18 = 1024;
        v19 = 946;
        v20 = 2080;
        v21 = "[CMIOExtensionProviderHostContext availableStreamPropertiesWithStreamID:reply:]";
        v22 = 2113;
        selfCopy = self;
        _os_log_impl(&dword_22EA08000, v8, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %{private}@", buf, 0x26u);
      }
    }
  }

  v9 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v9, "MessageType", 0x14uLL);
  v10 = cmio_XPCMessageSetCFString(v9, "param1", d);
  if (v10)
  {
    v12 = CMIOLog(v10, v11);
    if (v12 && os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionProviderHostContext availableStreamPropertiesWithStreamID:reply:];
    }

    (*(reply + 2))(reply, 0, [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-5 userInfo:0]);
  }

  else
  {
    dispatch_group_enter(self->_transactionGroup);
    connection = self->_connection;
    queue = self->_queue;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __80__CMIOExtensionProviderHostContext_availableStreamPropertiesWithStreamID_reply___block_invoke;
    v15[3] = &unk_27885C340;
    v15[4] = self;
    v15[5] = reply;
    xpc_connection_send_message_with_reply(connection, v9, queue, v15);
  }

  xpc_release(v9);
}

void __80__CMIOExtensionProviderHostContext_availableStreamPropertiesWithStreamID_reply___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x2318F1BC0](a2);
  if (v4 == MEMORY[0x277D86480])
  {
    v7 = CMIOLog(v4, v5);
    if (v7 && os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
      __80__CMIOExtensionProviderHostContext_availableStreamPropertiesWithStreamID_reply___block_invoke_cold_3();
    }

    [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-7 userInfo:0];
    (*(*(a1 + 40) + 16))();
  }

  else if (v4 == MEMORY[0x277D86468])
  {
    int64 = xpc_dictionary_get_int64(a2, "errorReturn");
    if (int64)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:int64 userInfo:0];
      (*(*(a1 + 40) + 16))();
    }

    else
    {
      cf[0] = 0;
      v9 = cmio_XPCMessageCopyCFArray(a2, "param1", cf);
      if (cf[0])
      {
        [MEMORY[0x277CBEB98] setWithArray:?];
        CFRelease(cf[0]);
        cf[0] = 0;
      }

      else
      {
        v11 = CMIOLog(v9, v10);
        if (v11 && os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v12 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
          __80__CMIOExtensionProviderHostContext_availableStreamPropertiesWithStreamID_reply___block_invoke_cold_2(v12, v14);
        }

        [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6 userInfo:0];
      }

      (*(*(a1 + 40) + 16))();
    }
  }

  else
  {
    v6 = CMIOLog(v4, v5);
    if (v6 && os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
      __80__CMIOExtensionProviderHostContext_availableStreamPropertiesWithStreamID_reply___block_invoke_cold_1();
    }

    [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6 userInfo:0];
    (*(*(a1 + 40) + 16))();
  }

  dispatch_group_leave(*(*(a1 + 32) + 24));
}

- (void)streamPropertyStatesWithStreamID:(id)d properties:(id)properties reply:(id)reply
{
  v29 = *MEMORY[0x277D85DE8];
  if (CMIOModuleLogLevel_once_1 != -1)
  {
    [CMIOExtensionProviderHostContext dealloc];
  }

  if (CMIOModuleLogLevel_cmioLevel_1 >= 1)
  {
    v9 = CMIOLog(self, a2);
    if (v9)
    {
      v10 = v9;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315907;
        v22 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
        v23 = 1024;
        v24 = 1009;
        v25 = 2080;
        v26 = "[CMIOExtensionProviderHostContext streamPropertyStatesWithStreamID:properties:reply:]";
        v27 = 2113;
        selfCopy = self;
        _os_log_impl(&dword_22EA08000, v10, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %{private}@", buf, 0x26u);
      }
    }
  }

  v11 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v11, "MessageType", 0x15uLL);
  v12 = cmio_XPCMessageSetCFString(v11, "param1", d);
  if (v12)
  {
    v14 = CMIOLog(v12, v13);
    if (v14 && os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionProviderHostContext streamPropertyStatesWithStreamID:properties:reply:];
    }

    (*(reply + 2))(reply, 0, [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-5 userInfo:0]);
  }

  else
  {
    if (properties)
    {
      v15 = cmio_XPCMessageSetCFArray(v11, "param2", [properties allObjects]);
      if (v15)
      {
        v17 = CMIOLog(v15, v16);
        if (v17)
        {
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            [CMIOExtensionProviderHostContext streamPropertyStatesWithStreamID:properties:reply:];
          }
        }
      }
    }

    dispatch_group_enter(self->_transactionGroup);
    connection = self->_connection;
    queue = self->_queue;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __86__CMIOExtensionProviderHostContext_streamPropertyStatesWithStreamID_properties_reply___block_invoke;
    v20[3] = &unk_27885C340;
    v20[4] = self;
    v20[5] = reply;
    xpc_connection_send_message_with_reply(connection, v11, queue, v20);
  }

  xpc_release(v11);
}

void __86__CMIOExtensionProviderHostContext_streamPropertyStatesWithStreamID_properties_reply___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x2318F1BC0](a2);
  if (v4 != MEMORY[0x277D86480])
  {
    if (v4 != MEMORY[0x277D86468])
    {
      v6 = CMIOLog(v4, v5);
      if (v6 && os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
        __86__CMIOExtensionProviderHostContext_streamPropertyStatesWithStreamID_properties_reply___block_invoke_cold_1();
      }

      [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6 userInfo:0];
      (*(*(a1 + 40) + 16))();
      goto LABEL_24;
    }

    int64 = xpc_dictionary_get_int64(a2, "errorReturn");
    if (int64)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:int64 userInfo:0];
      (*(*(a1 + 40) + 16))();
      goto LABEL_24;
    }

    value = xpc_dictionary_get_value(a2, "param1");
    if (value)
    {
      if ([CMIOExtensionPropertyState copyPropertyStatesFromXPCDictionary:value])
      {
        goto LABEL_23;
      }

      v13 = CMIOLog(0, 0);
      if (v13 && os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
        __86__CMIOExtensionProviderHostContext_streamPropertyStatesWithStreamID_properties_reply___block_invoke_cold_2(v14, v15);
      }
    }

    else
    {
      v11 = CMIOLog(0, v9);
      if (v11 && os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
        __86__CMIOExtensionProviderHostContext_streamPropertyStatesWithStreamID_properties_reply___block_invoke_cold_3(v12, v15);
      }
    }

    [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6 userInfo:0];
LABEL_23:
    (*(*(a1 + 40) + 16))();
    goto LABEL_24;
  }

  v7 = CMIOLog(v4, v5);
  if (v7 && os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
    __86__CMIOExtensionProviderHostContext_streamPropertyStatesWithStreamID_properties_reply___block_invoke_cold_4();
  }

  [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-7 userInfo:0];
  (*(*(a1 + 40) + 16))();
LABEL_24:
  dispatch_group_leave(*(*(a1 + 32) + 24));
}

- (void)setStreamPropertyValuesWithStreamID:(id)d propertyValues:(id)values reply:(id)reply
{
  selfCopy = self;
  v50 = *MEMORY[0x277D85DE8];
  if (CMIOModuleLogLevel_once_1 != -1)
  {
    [CMIOExtensionProviderHostContext dealloc];
  }

  if (CMIOModuleLogLevel_cmioLevel_1 >= 1)
  {
    v9 = CMIOLog(self, a2);
    if (v9)
    {
      v10 = v9;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315907;
        v43 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
        v44 = 1024;
        v45 = 1081;
        v46 = 2080;
        v47 = "[CMIOExtensionProviderHostContext setStreamPropertyValuesWithStreamID:propertyValues:reply:]";
        v48 = 2113;
        valuesCopy = selfCopy;
        _os_log_impl(&dword_22EA08000, v10, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %{private}@", buf, 0x26u);
      }
    }
  }

  v11 = [values objectForKeyedSubscript:@"CMIOExtensionPropertyStreamFrameDuration"];
  if (v11 || (v11 = [values objectForKeyedSubscript:@"CMIOExtensionPropertyStreamMaxFrameDuration"]) != 0)
  {
    v13 = CMIOLog(v11, v12);
    if (v13)
    {
      v14 = v13;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v15 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
        *buf = 136315906;
        v43 = v15;
        v44 = 1024;
        v45 = 1085;
        v46 = 2080;
        v47 = "[CMIOExtensionProviderHostContext setStreamPropertyValuesWithStreamID:propertyValues:reply:]";
        v48 = 2112;
        valuesCopy = values;
        _os_log_impl(&dword_22EA08000, v14, OS_LOG_TYPE_DEFAULT, "%s:%d:%s SetProperty - %@", buf, 0x26u);
      }
    }

    theArray = 0;
    v17 = FigCopyBacktrace();
    v18 = 0;
    if (v17 >= 1 && theArray != 0)
    {
      dCopy = d;
      valuesCopy2 = values;
      v38 = selfCopy;
      replyCopy = reply;
      v20 = 0;
      do
      {
        v18 = CMIOLog(v18, v16);
        if (v18)
        {
          v21 = v18;
          v18 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
          if (v18)
          {
            v22 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
            ValueAtIndex = CFArrayGetValueAtIndex(theArray, v20);
            *buf = 136315907;
            v43 = v22;
            v44 = 1024;
            v45 = 1090;
            v46 = 2080;
            v47 = "[CMIOExtensionProviderHostContext setStreamPropertyValuesWithStreamID:propertyValues:reply:]";
            v48 = 2113;
            valuesCopy = ValueAtIndex;
            _os_log_impl(&dword_22EA08000, v21, OS_LOG_TYPE_DEFAULT, "%s:%d:%s backtrace %{private}@", buf, 0x26u);
          }
        }

        ++v20;
      }

      while (v17 != v20);
      selfCopy = v38;
    }
  }

  if ([values count])
  {
    v25 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v25, "MessageType", 0x16uLL);
    v26 = cmio_XPCMessageSetCFString(v25, "param1", d);
    if (v26)
    {
      v28 = CMIOLog(v26, v27);
      if (v28)
      {
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          [CMIOExtensionProviderHostContext setStreamPropertyValuesWithStreamID:propertyValues:reply:];
        }
      }
    }

    else
    {
      v30 = [CMIOExtensionPropertyState copyXPCDictionaryFromPropertyValues:values];
      if (v30)
      {
        v32 = v30;
        xpc_dictionary_set_value(v25, "param2", v30);
        xpc_release(v32);
        dispatch_group_enter(selfCopy->_transactionGroup);
        connection = selfCopy->_connection;
        queue = selfCopy->_queue;
        handler[0] = MEMORY[0x277D85DD0];
        handler[1] = 3221225472;
        handler[2] = __93__CMIOExtensionProviderHostContext_setStreamPropertyValuesWithStreamID_propertyValues_reply___block_invoke;
        handler[3] = &unk_27885C340;
        handler[4] = selfCopy;
        handler[5] = reply;
        xpc_connection_send_message_with_reply(connection, v25, queue, handler);
        goto LABEL_34;
      }

      v35 = CMIOLog(0, v31);
      if (v35 && os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        [CMIOExtensionProviderHostContext setStreamPropertyValuesWithStreamID:propertyValues:reply:];
      }
    }

    (*(reply + 2))(reply, [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-5 userInfo:0]);
LABEL_34:
    xpc_release(v25);
    return;
  }

  v29 = CMIOLog(0, v24);
  if (v29 && os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    [CMIOExtensionProviderHostContext setStreamPropertyValuesWithStreamID:propertyValues:reply:];
  }

  (*(reply + 2))(reply, [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-1 userInfo:0]);
}

void __93__CMIOExtensionProviderHostContext_setStreamPropertyValuesWithStreamID_propertyValues_reply___block_invoke(uint64_t a1, void *a2)
{
  v4 = MEMORY[0x2318F1BC0](a2);
  if (v4 == MEMORY[0x277D86480])
  {
    v7 = CMIOLog(v4, v5);
    if (v7 && os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
      __93__CMIOExtensionProviderHostContext_setStreamPropertyValuesWithStreamID_propertyValues_reply___block_invoke_cold_2();
    }

    [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-7 userInfo:0];
    (*(*(a1 + 40) + 16))();
  }

  else if (v4 == MEMORY[0x277D86468])
  {
    int64 = xpc_dictionary_get_int64(a2, "errorReturn");
    if (int64)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:int64 userInfo:0];
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v6 = CMIOLog(v4, v5);
    if (v6 && os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
      __93__CMIOExtensionProviderHostContext_setStreamPropertyValuesWithStreamID_propertyValues_reply___block_invoke_cold_1();
    }

    [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6 userInfo:0];
    (*(*(a1 + 40) + 16))();
  }

  dispatch_group_leave(*(*(a1 + 32) + 24));
}

- (void)startStreamWithStreamID:(id)d reply:(id)reply
{
  v24 = *MEMORY[0x277D85DE8];
  if (CMIOModuleLogLevel_once_1 != -1)
  {
    [CMIOExtensionProviderHostContext dealloc];
  }

  if (CMIOModuleLogLevel_cmioLevel_1 >= 1)
  {
    v7 = CMIOLog(self, a2);
    if (v7)
    {
      v8 = v7;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315907;
        v17 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
        v18 = 1024;
        v19 = 1167;
        v20 = 2080;
        v21 = "[CMIOExtensionProviderHostContext startStreamWithStreamID:reply:]";
        v22 = 2113;
        selfCopy = self;
        _os_log_impl(&dword_22EA08000, v8, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %{private}@", buf, 0x26u);
      }
    }
  }

  v9 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v9, "MessageType", 0x17uLL);
  v10 = cmio_XPCMessageSetCFString(v9, "param1", d);
  if (v10)
  {
    v12 = CMIOLog(v10, v11);
    if (v12 && os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionProviderHostContext startStreamWithStreamID:reply:];
    }

    (*(reply + 2))(reply, [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-5 userInfo:0]);
  }

  else
  {
    dispatch_group_enter(self->_transactionGroup);
    connection = self->_connection;
    queue = self->_queue;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __66__CMIOExtensionProviderHostContext_startStreamWithStreamID_reply___block_invoke;
    v15[3] = &unk_27885C340;
    v15[4] = self;
    v15[5] = reply;
    xpc_connection_send_message_with_reply(connection, v9, queue, v15);
  }

  xpc_release(v9);
}

void __66__CMIOExtensionProviderHostContext_startStreamWithStreamID_reply___block_invoke(uint64_t a1, void *a2)
{
  v4 = MEMORY[0x2318F1BC0](a2);
  if (v4 == MEMORY[0x277D86480])
  {
    v7 = CMIOLog(v4, v5);
    if (v7 && os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
      __66__CMIOExtensionProviderHostContext_startStreamWithStreamID_reply___block_invoke_cold_2();
    }

    [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-7 userInfo:0];
    (*(*(a1 + 40) + 16))();
  }

  else if (v4 == MEMORY[0x277D86468])
  {
    int64 = xpc_dictionary_get_int64(a2, "errorReturn");
    if (int64)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:int64 userInfo:0];
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v6 = CMIOLog(v4, v5);
    if (v6 && os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
      __66__CMIOExtensionProviderHostContext_startStreamWithStreamID_reply___block_invoke_cold_1();
    }

    [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6 userInfo:0];
    (*(*(a1 + 40) + 16))();
  }

  dispatch_group_leave(*(*(a1 + 32) + 24));
}

- (void)stopStreamWithStreamID:(id)d reply:(id)reply
{
  v24 = *MEMORY[0x277D85DE8];
  if (CMIOModuleLogLevel_once_1 != -1)
  {
    [CMIOExtensionProviderHostContext dealloc];
  }

  if (CMIOModuleLogLevel_cmioLevel_1 >= 1)
  {
    v7 = CMIOLog(self, a2);
    if (v7)
    {
      v8 = v7;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315907;
        v17 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
        v18 = 1024;
        v19 = 1217;
        v20 = 2080;
        v21 = "[CMIOExtensionProviderHostContext stopStreamWithStreamID:reply:]";
        v22 = 2113;
        selfCopy = self;
        _os_log_impl(&dword_22EA08000, v8, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %{private}@", buf, 0x26u);
      }
    }
  }

  v9 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v9, "MessageType", 0x18uLL);
  v10 = cmio_XPCMessageSetCFString(v9, "param1", d);
  if (v10)
  {
    v12 = CMIOLog(v10, v11);
    if (v12 && os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionProviderHostContext stopStreamWithStreamID:reply:];
    }

    (*(reply + 2))(reply, [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-5 userInfo:0]);
  }

  else
  {
    dispatch_group_enter(self->_transactionGroup);
    connection = self->_connection;
    queue = self->_queue;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __65__CMIOExtensionProviderHostContext_stopStreamWithStreamID_reply___block_invoke;
    v15[3] = &unk_27885C340;
    v15[4] = self;
    v15[5] = reply;
    xpc_connection_send_message_with_reply(connection, v9, queue, v15);
  }

  xpc_release(v9);
}

void __65__CMIOExtensionProviderHostContext_stopStreamWithStreamID_reply___block_invoke(uint64_t a1, void *a2)
{
  v4 = MEMORY[0x2318F1BC0](a2);
  if (v4 == MEMORY[0x277D86480])
  {
    v7 = CMIOLog(v4, v5);
    if (v7 && os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
      __65__CMIOExtensionProviderHostContext_stopStreamWithStreamID_reply___block_invoke_cold_2();
    }

    [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-7 userInfo:0];
    (*(*(a1 + 40) + 16))();
  }

  else if (v4 == MEMORY[0x277D86468])
  {
    int64 = xpc_dictionary_get_int64(a2, "errorReturn");
    if (int64)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:int64 userInfo:0];
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v6 = CMIOLog(v4, v5);
    if (v6 && os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
      __65__CMIOExtensionProviderHostContext_stopStreamWithStreamID_reply___block_invoke_cold_1();
    }

    [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6 userInfo:0];
    (*(*(a1 + 40) + 16))();
  }

  dispatch_group_leave(*(*(a1 + 32) + 24));
}

- (void)refreshExtensionConnection
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = CMIOLog(self, a2);
  if (v3)
  {
    v4 = v3;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
      pid = xpc_connection_get_pid(self->_connection);
      v7 = 136316163;
      v8 = v5;
      v9 = 1024;
      v10 = 1267;
      v11 = 2080;
      v12 = "[CMIOExtensionProviderHostContext refreshExtensionConnection]";
      v13 = 2082;
      v14 = "[CMIOExtensionProviderHostContext refreshExtensionConnection]";
      v15 = 1025;
      v16 = pid;
      _os_log_impl(&dword_22EA08000, v4, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %{public}s for connection(%{private}d)", &v7, 0x2Cu);
    }
  }

  [(CMIOExtensionProviderHostContext *)self sendEmptyClientInfo];
}

- (void)sendEmptyClientInfo
{
  v14 = *MEMORY[0x277D85DE8];
  if (CMIOModuleLogLevel_once_1 != -1)
  {
    [CMIOExtensionProviderHostContext dealloc];
  }

  if (CMIOModuleLogLevel_cmioLevel_1 >= 1)
  {
    v3 = CMIOLog(self, a2);
    if (v3)
    {
      v4 = v3;
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v6 = 136315907;
        v7 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
        v8 = 1024;
        v9 = 1273;
        v10 = 2080;
        v11 = "[CMIOExtensionProviderHostContext sendEmptyClientInfo]";
        v12 = 2113;
        selfCopy = self;
        _os_log_impl(&dword_22EA08000, v4, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %{private}@", &v6, 0x26u);
      }
    }
  }

  v5 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v5, "MessageType", 5uLL);
  xpc_connection_send_message_with_reply(self->_connection, v5, self->_queue, &__block_literal_global_30);
  xpc_release(v5);
}

void __55__CMIOExtensionProviderHostContext_sendEmptyClientInfo__block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = MEMORY[0x2318F1BC0](a2);
    if (v3 == MEMORY[0x277D86480])
    {
      v6 = CMIOLog(v3, v4);
      if (v6 && os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        __55__CMIOExtensionProviderHostContext_sendEmptyClientInfo__block_invoke_cold_3();
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
            __55__CMIOExtensionProviderHostContext_sendEmptyClientInfo__block_invoke_cold_2();
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
          __55__CMIOExtensionProviderHostContext_sendEmptyClientInfo__block_invoke_cold_1();
        }
      }
    }
  }
}

- (void)captureAsyncStillImageWithStreamID:(id)d uniqueID:(int64_t)iD options:(id)options reply:(id)reply
{
  v34 = *MEMORY[0x277D85DE8];
  if (CMIOModuleLogLevel_once_1 != -1)
  {
    [CMIOExtensionProviderHostContext dealloc];
  }

  if (CMIOModuleLogLevel_cmioLevel_1 >= 1)
  {
    v11 = CMIOLog(self, a2);
    if (v11)
    {
      v12 = v11;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315907;
        v27 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
        v28 = 1024;
        v29 = 1300;
        v30 = 2080;
        v31 = "[CMIOExtensionProviderHostContext captureAsyncStillImageWithStreamID:uniqueID:options:reply:]";
        v32 = 2113;
        selfCopy = self;
        _os_log_impl(&dword_22EA08000, v12, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %{private}@", buf, 0x26u);
      }
    }
  }

  v13 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v13, "MessageType", 0x1AuLL);
  v14 = cmio_XPCMessageSetCFString(v13, "param1", d);
  if (v14)
  {
    v16 = CMIOLog(v14, v15);
    if (v16 && os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionProviderHostContext captureAsyncStillImageWithStreamID:uniqueID:options:reply:];
    }
  }

  else
  {
    v17 = cmio_XPCMessageSetCFNumber(v13, "param2", [MEMORY[0x277CCABB0] numberWithLongLong:iD]);
    if (v17)
    {
      v19 = CMIOLog(v17, v18);
      if (v19 && os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [CMIOExtensionProviderHostContext captureAsyncStillImageWithStreamID:uniqueID:options:reply:];
      }
    }

    else
    {
      if (!options || (v20 = cmio_XPCMessageSetCFDictionary(v13, "param3", options), !v20))
      {
        dispatch_group_enter(self->_transactionGroup);
        connection = self->_connection;
        queue = self->_queue;
        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = __94__CMIOExtensionProviderHostContext_captureAsyncStillImageWithStreamID_uniqueID_options_reply___block_invoke;
        v25[3] = &unk_27885C340;
        v25[4] = self;
        v25[5] = reply;
        xpc_connection_send_message_with_reply(connection, v13, queue, v25);
        goto LABEL_16;
      }

      v22 = CMIOLog(v20, v21);
      if (v22 && os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [CMIOExtensionProviderHostContext captureAsyncStillImageWithStreamID:uniqueID:options:reply:];
      }
    }
  }

  (*(reply + 2))(reply, 0, [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-5 userInfo:0]);
LABEL_16:
  xpc_release(v13);
}

void __94__CMIOExtensionProviderHostContext_captureAsyncStillImageWithStreamID_uniqueID_options_reply___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x2318F1BC0](a2);
  if (v4 == MEMORY[0x277D86480])
  {
    v7 = CMIOLog(v4, v5);
    if (v7 && os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
      __94__CMIOExtensionProviderHostContext_captureAsyncStillImageWithStreamID_uniqueID_options_reply___block_invoke_cold_3();
    }

    [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-7 userInfo:0];
    (*(*(a1 + 40) + 16))();
  }

  else if (v4 == MEMORY[0x277D86468])
  {
    int64 = xpc_dictionary_get_int64(a2, "errorReturn");
    if (int64)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:int64 userInfo:0];
      (*(*(a1 + 40) + 16))();
    }

    else
    {
      BlockBufferData = FigXPCMessageCreateBlockBufferData();
      v10 = CMIOLog(BlockBufferData, 0);
      if (v10 && os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
        __94__CMIOExtensionProviderHostContext_captureAsyncStillImageWithStreamID_uniqueID_options_reply___block_invoke_cold_2(v11, v12);
      }

      [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6 userInfo:0];
      (*(*(a1 + 40) + 16))();
    }
  }

  else
  {
    v6 = CMIOLog(v4, v5);
    if (v6 && os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
      __94__CMIOExtensionProviderHostContext_captureAsyncStillImageWithStreamID_uniqueID_options_reply___block_invoke_cold_1();
    }

    [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6 userInfo:0];
    (*(*(a1 + 40) + 16))();
  }

  dispatch_group_leave(*(*(a1 + 32) + 24));
}

- (void)enqueueReactionEffect:(id)effect reactionType:(id)type reply:(id)reply
{
  v29 = *MEMORY[0x277D85DE8];
  if (CMIOModuleLogLevel_once_1 != -1)
  {
    [CMIOExtensionProviderHostContext dealloc];
  }

  if (CMIOModuleLogLevel_cmioLevel_1 >= 1)
  {
    v9 = CMIOLog(self, a2);
    if (v9)
    {
      v10 = v9;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315907;
        v22 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
        v23 = 1024;
        v24 = 1390;
        v25 = 2080;
        v26 = "[CMIOExtensionProviderHostContext enqueueReactionEffect:reactionType:reply:]";
        v27 = 2113;
        selfCopy = self;
        _os_log_impl(&dword_22EA08000, v10, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %{private}@", buf, 0x26u);
      }
    }
  }

  v11 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v11, "MessageType", 0x1CuLL);
  v12 = cmio_XPCMessageSetCFString(v11, "param1", effect);
  if (v12)
  {
    v14 = CMIOLog(v12, v13);
    if (v14 && os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionProviderHostContext enqueueReactionEffect:reactionType:reply:];
    }
  }

  else
  {
    v15 = cmio_XPCMessageSetCFString(v11, "param2", type);
    if (!v15)
    {
      dispatch_group_enter(self->_transactionGroup);
      connection = self->_connection;
      queue = self->_queue;
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __77__CMIOExtensionProviderHostContext_enqueueReactionEffect_reactionType_reply___block_invoke;
      v20[3] = &unk_27885C340;
      v20[4] = self;
      v20[5] = reply;
      xpc_connection_send_message_with_reply(connection, v11, queue, v20);
      goto LABEL_16;
    }

    v17 = CMIOLog(v15, v16);
    if (v17 && os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionProviderHostContext enqueueReactionEffect:reactionType:reply:];
    }
  }

  (*(reply + 2))(reply, [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-5 userInfo:0]);
LABEL_16:
  xpc_release(v11);
}

void __77__CMIOExtensionProviderHostContext_enqueueReactionEffect_reactionType_reply___block_invoke(uint64_t a1, void *a2)
{
  v4 = MEMORY[0x2318F1BC0](a2);
  if (v4 == MEMORY[0x277D86480])
  {
    v7 = CMIOLog(v4, v5);
    if (v7 && os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
      __77__CMIOExtensionProviderHostContext_enqueueReactionEffect_reactionType_reply___block_invoke_cold_2();
    }

    [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-7 userInfo:0];
    (*(*(a1 + 40) + 16))();
  }

  else if (v4 == MEMORY[0x277D86468])
  {
    int64 = xpc_dictionary_get_int64(a2, "errorReturn");
    if (int64)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:int64 userInfo:0];
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v6 = CMIOLog(v4, v5);
    if (v6 && os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
      __77__CMIOExtensionProviderHostContext_enqueueReactionEffect_reactionType_reply___block_invoke_cold_1();
    }

    [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6 userInfo:0];
    (*(*(a1 + 40) + 16))();
  }

  dispatch_group_leave(*(*(a1 + 32) + 24));
}

- (void)completeTransaction
{
  v18 = *MEMORY[0x277D85DE8];
  if (CMIOModuleLogLevel_once_1 != -1)
  {
    [CMIOExtensionProviderHostContext dealloc];
  }

  if (CMIOModuleLogLevel_cmioLevel_1 >= 1)
  {
    v3 = CMIOLog(self, a2);
    if (v3)
    {
      v4 = v3;
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 136315907;
        v11 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
        v12 = 1024;
        v13 = 1451;
        v14 = 2080;
        v15 = "[CMIOExtensionProviderHostContext completeTransaction]";
        v16 = 2113;
        selfCopy2 = self;
        _os_log_impl(&dword_22EA08000, v4, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %{private}@ will", &v10, 0x26u);
      }
    }
  }

  v5 = dispatch_group_wait(self->_transactionGroup, 0xFFFFFFFFFFFFFFFFLL);
  if (CMIOModuleLogLevel_once_1 != -1)
  {
    [CMIOExtensionProviderHostContext availableDevicesChanged:message:];
  }

  if (CMIOModuleLogLevel_cmioLevel_1 >= 1)
  {
    v7 = CMIOLog(v5, v6);
    if (v7)
    {
      v8 = v7;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
        v10 = 136315907;
        v11 = v9;
        v12 = 1024;
        v13 = 1455;
        v14 = 2080;
        v15 = "[CMIOExtensionProviderHostContext completeTransaction]";
        v16 = 2113;
        selfCopy2 = self;
        _os_log_impl(&dword_22EA08000, v8, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %{private}@ did", &v10, 0x26u);
      }
    }
  }
}

void __64__CMIOExtensionProviderHostContext_initWithConnection_delegate___block_invoke_cold_1(uint64_t a1)
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
  xpc_connection_get_pid(*(a1 + 32));
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x2Cu);
}

- (void)handleClientMessageWithConnection:message:.cold.2()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)availableDevicesChanged:message:.cold.1()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)availableStreamsChanged:message:.cold.1()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)availableStreamsChanged:message:.cold.3()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)pluginPropertiesChanged:message:.cold.2()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)pluginPropertiesChanged:message:.cold.3()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)devicePropertiesChanged:message:.cold.2()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)devicePropertiesChanged:message:.cold.3()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)devicePropertiesChanged:message:.cold.4()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)streamPropertiesChanged:message:.cold.2()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)streamPropertiesChanged:message:.cold.3()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)streamPropertiesChanged:message:.cold.4()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)receivedSample:message:.cold.2()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)receivedSample:message:.cold.3()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)receivedSample:message:.cold.4()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)pullSample:message:.cold.1()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)pullSample:message:.cold.2()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void __55__CMIOExtensionProviderHostContext_pullSample_message___block_invoke_cold_1()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void __55__CMIOExtensionProviderHostContext_pullSample_message___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)scheduledOutputChanged:message:.cold.2()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)scheduledOutputChanged:message:.cold.3()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)scheduledOutputChanged:message:.cold.4()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void __62__CMIOExtensionProviderHostContext_availablePluginProperties___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2_1(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s unknown type %{public}@", v9, v10);
}

void __62__CMIOExtensionProviderHostContext_availablePluginProperties___block_invoke_cold_2(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_5_4(a1, a2, 4.8152e-34);
  OUTLINED_FUNCTION_9_1(v2, 402);
  *(v3 + 20) = "[CMIOExtensionProviderHostContext availablePluginProperties:]_block_invoke";
  OUTLINED_FUNCTION_15_0(&dword_22EA08000, v3, v4, "%s:%d:%s cmio_XPCMessageCopyCFArray failed", v5);
}

void __62__CMIOExtensionProviderHostContext_availablePluginProperties___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2_1(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s received %{public}@", v9, v10);
}

void __62__CMIOExtensionProviderHostContext_availablePluginProperties___block_invoke_cold_4()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s exception %@", v9, v10);
}

- (void)pluginStates:.cold.2()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2_1(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s unknown type %{public}@", v9, v10);
}

- (void)pluginStates:(uint64_t)a1 .cold.3(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_5_4(a1, a2, 4.8152e-34);
  OUTLINED_FUNCTION_9_1(v2, 455);
  *(v3 + 20) = "[CMIOExtensionProviderHostContext pluginStates:]";
  OUTLINED_FUNCTION_15_0(&dword_22EA08000, v3, v4, "%s:%d:%s copyPropertyStatesFromXPCDictionary failed", v5);
}

- (void)pluginStates:(uint64_t)a1 .cold.4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_5_4(a1, a2, 4.8152e-34);
  OUTLINED_FUNCTION_9_1(v2, 451);
  *(v3 + 20) = "[CMIOExtensionProviderHostContext pluginStates:]";
  OUTLINED_FUNCTION_15_0(&dword_22EA08000, v3, v4, "%s:%d:%s xpc_dictionary_get_value for param1 failed", v5);
}

- (void)pluginStates:.cold.5()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2_1(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s received %{public}@", v9, v10);
}

- (void)pluginStates:.cold.6()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s exception %@", v9, v10);
}

void __49__CMIOExtensionProviderHostContext_pluginStates___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void __49__CMIOExtensionProviderHostContext_pluginStates___block_invoke_26_cold_1()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void __49__CMIOExtensionProviderHostContext_pluginStates___block_invoke_27_cold_1()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void __49__CMIOExtensionProviderHostContext_pluginStates___block_invoke_27_cold_2()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)pluginPropertyStatesForProperties:reply:.cold.2()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void __76__CMIOExtensionProviderHostContext_pluginPropertyStatesForProperties_reply___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2_1(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s unknown type %{public}@", v9, v10);
}

void __76__CMIOExtensionProviderHostContext_pluginPropertyStatesForProperties_reply___block_invoke_cold_2(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_5_4(a1, a2, 4.8152e-34);
  OUTLINED_FUNCTION_9_1(v2, 571);
  *(v3 + 20) = "[CMIOExtensionProviderHostContext pluginPropertyStatesForProperties:reply:]_block_invoke";
  OUTLINED_FUNCTION_15_0(&dword_22EA08000, v3, v4, "%s:%d:%s copyPropertyStatesFromXPCDictionary failed", v5);
}

void __76__CMIOExtensionProviderHostContext_pluginPropertyStatesForProperties_reply___block_invoke_cold_3(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_5_4(a1, a2, 4.8152e-34);
  OUTLINED_FUNCTION_9_1(v2, 567);
  *(v3 + 20) = "[CMIOExtensionProviderHostContext pluginPropertyStatesForProperties:reply:]_block_invoke";
  OUTLINED_FUNCTION_15_0(&dword_22EA08000, v3, v4, "%s:%d:%s xpc_dictionary_get_value for param1 failed", v5);
}

void __76__CMIOExtensionProviderHostContext_pluginPropertyStatesForProperties_reply___block_invoke_cold_4()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2_1(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s received %{public}@", v9, v10);
}

void __76__CMIOExtensionProviderHostContext_pluginPropertyStatesForProperties_reply___block_invoke_cold_5()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s exception %@", v9, v10);
}

- (void)setPluginPropertyValues:reply:.cold.2()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)setPluginPropertyValues:reply:.cold.3()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void __66__CMIOExtensionProviderHostContext_setPluginPropertyValues_reply___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2_1(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s unknown type %{public}@", v9, v10);
}

void __66__CMIOExtensionProviderHostContext_setPluginPropertyValues_reply___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2_1(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s received %{public}@", v9, v10);
}

void __66__CMIOExtensionProviderHostContext_setPluginPropertyValues_reply___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s exception %@", v9, v10);
}

- (void)availableDevicePropertiesWithDeviceID:reply:.cold.2()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void __80__CMIOExtensionProviderHostContext_availableDevicePropertiesWithDeviceID_reply___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2_1(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s unknown type %{public}@", v9, v10);
}

void __80__CMIOExtensionProviderHostContext_availableDevicePropertiesWithDeviceID_reply___block_invoke_cold_2(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_5_4(a1, a2, 4.8152e-34);
  OUTLINED_FUNCTION_9_1(v2, 697);
  *(v3 + 20) = "[CMIOExtensionProviderHostContext availableDevicePropertiesWithDeviceID:reply:]_block_invoke";
  OUTLINED_FUNCTION_15_0(&dword_22EA08000, v3, v4, "%s:%d:%s cmio_XPCMessageCopyCFArray failed", v5);
}

void __80__CMIOExtensionProviderHostContext_availableDevicePropertiesWithDeviceID_reply___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2_1(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s received %{public}@", v9, v10);
}

void __80__CMIOExtensionProviderHostContext_availableDevicePropertiesWithDeviceID_reply___block_invoke_cold_4()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s exception %@", v9, v10);
}

- (void)deviceStatesWithDeviceID:reply:.cold.2()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void __67__CMIOExtensionProviderHostContext_deviceStatesWithDeviceID_reply___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2_1(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s unknown type %{public}@", v9, v10);
}

void __67__CMIOExtensionProviderHostContext_deviceStatesWithDeviceID_reply___block_invoke_cold_2(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_5_4(a1, a2, 4.8152e-34);
  OUTLINED_FUNCTION_9_1(v2, 759);
  *(v3 + 20) = "[CMIOExtensionProviderHostContext deviceStatesWithDeviceID:reply:]_block_invoke";
  OUTLINED_FUNCTION_15_0(&dword_22EA08000, v3, v4, "%s:%d:%s copyPropertyStatesFromXPCDictionary failed", v5);
}

void __67__CMIOExtensionProviderHostContext_deviceStatesWithDeviceID_reply___block_invoke_cold_3(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_5_4(a1, a2, 4.8152e-34);
  OUTLINED_FUNCTION_9_1(v2, 755);
  *(v3 + 20) = "[CMIOExtensionProviderHostContext deviceStatesWithDeviceID:reply:]_block_invoke";
  OUTLINED_FUNCTION_15_0(&dword_22EA08000, v3, v4, "%s:%d:%s xpc_dictionary_get_value for param1 failed", v5);
}

void __67__CMIOExtensionProviderHostContext_deviceStatesWithDeviceID_reply___block_invoke_cold_4()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2_1(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s received %{public}@", v9, v10);
}

void __67__CMIOExtensionProviderHostContext_deviceStatesWithDeviceID_reply___block_invoke_cold_5()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s exception %@", v9, v10);
}

void __67__CMIOExtensionProviderHostContext_deviceStatesWithDeviceID_reply___block_invoke_28_cold_1()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

- (void)devicePropertyStatesWithDeviceID:properties:reply:.cold.2()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)devicePropertyStatesWithDeviceID:properties:reply:.cold.3()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void __86__CMIOExtensionProviderHostContext_devicePropertyStatesWithDeviceID_properties_reply___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2_1(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s unknown type %{public}@", v9, v10);
}

void __86__CMIOExtensionProviderHostContext_devicePropertyStatesWithDeviceID_properties_reply___block_invoke_cold_2(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_5_4(a1, a2, 4.8152e-34);
  OUTLINED_FUNCTION_9_1(v2, 851);
  *(v3 + 20) = "[CMIOExtensionProviderHostContext devicePropertyStatesWithDeviceID:properties:reply:]_block_invoke";
  OUTLINED_FUNCTION_15_0(&dword_22EA08000, v3, v4, "%s:%d:%s copyPropertyStatesFromXPCDictionary failed", v5);
}

void __86__CMIOExtensionProviderHostContext_devicePropertyStatesWithDeviceID_properties_reply___block_invoke_cold_3(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_5_4(a1, a2, 4.8152e-34);
  OUTLINED_FUNCTION_9_1(v2, 847);
  *(v3 + 20) = "[CMIOExtensionProviderHostContext devicePropertyStatesWithDeviceID:properties:reply:]_block_invoke";
  OUTLINED_FUNCTION_15_0(&dword_22EA08000, v3, v4, "%s:%d:%s xpc_dictionary_get_value for param1 failed", v5);
}

void __86__CMIOExtensionProviderHostContext_devicePropertyStatesWithDeviceID_properties_reply___block_invoke_cold_4()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2_1(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s received %{public}@", v9, v10);
}

void __86__CMIOExtensionProviderHostContext_devicePropertyStatesWithDeviceID_properties_reply___block_invoke_cold_5()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s exception %@", v9, v10);
}

- (void)setDevicePropertyValuesWithDeviceID:propertyValues:reply:.cold.2()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)setDevicePropertyValuesWithDeviceID:propertyValues:reply:.cold.3()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)setDevicePropertyValuesWithDeviceID:propertyValues:reply:.cold.4()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void __93__CMIOExtensionProviderHostContext_setDevicePropertyValuesWithDeviceID_propertyValues_reply___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2_1(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s unknown type %{public}@", v9, v10);
}

void __93__CMIOExtensionProviderHostContext_setDevicePropertyValuesWithDeviceID_propertyValues_reply___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2_1(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s received %{public}@", v9, v10);
}

void __93__CMIOExtensionProviderHostContext_setDevicePropertyValuesWithDeviceID_propertyValues_reply___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s exception %@", v9, v10);
}

- (void)availableStreamPropertiesWithStreamID:reply:.cold.2()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void __80__CMIOExtensionProviderHostContext_availableStreamPropertiesWithStreamID_reply___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2_1(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s unknown type %{public}@", v9, v10);
}

void __80__CMIOExtensionProviderHostContext_availableStreamPropertiesWithStreamID_reply___block_invoke_cold_2(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_5_4(a1, a2, 4.8152e-34);
  OUTLINED_FUNCTION_9_1(v2, 988);
  *(v3 + 20) = "[CMIOExtensionProviderHostContext availableStreamPropertiesWithStreamID:reply:]_block_invoke";
  OUTLINED_FUNCTION_15_0(&dword_22EA08000, v3, v4, "%s:%d:%s cmio_XPCMessageCopyCFArray failed", v5);
}

void __80__CMIOExtensionProviderHostContext_availableStreamPropertiesWithStreamID_reply___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2_1(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s received %{public}@", v9, v10);
}

void __80__CMIOExtensionProviderHostContext_availableStreamPropertiesWithStreamID_reply___block_invoke_cold_4()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s exception %@", v9, v10);
}

- (void)streamPropertyStatesWithStreamID:properties:reply:.cold.2()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)streamPropertyStatesWithStreamID:properties:reply:.cold.3()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void __86__CMIOExtensionProviderHostContext_streamPropertyStatesWithStreamID_properties_reply___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2_1(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s unknown type %{public}@", v9, v10);
}

void __86__CMIOExtensionProviderHostContext_streamPropertyStatesWithStreamID_properties_reply___block_invoke_cold_2(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_5_4(a1, a2, 4.8152e-34);
  OUTLINED_FUNCTION_9_1(v2, 1056);
  *(v3 + 20) = "[CMIOExtensionProviderHostContext streamPropertyStatesWithStreamID:properties:reply:]_block_invoke";
  OUTLINED_FUNCTION_15_0(&dword_22EA08000, v3, v4, "%s:%d:%s copyPropertyStatesFromXPCDictionary failed", v5);
}

void __86__CMIOExtensionProviderHostContext_streamPropertyStatesWithStreamID_properties_reply___block_invoke_cold_3(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_5_4(a1, a2, 4.8152e-34);
  OUTLINED_FUNCTION_9_1(v2, 1052);
  *(v3 + 20) = "[CMIOExtensionProviderHostContext streamPropertyStatesWithStreamID:properties:reply:]_block_invoke";
  OUTLINED_FUNCTION_15_0(&dword_22EA08000, v3, v4, "%s:%d:%s xpc_dictionary_get_value for param1 failed", v5);
}

void __86__CMIOExtensionProviderHostContext_streamPropertyStatesWithStreamID_properties_reply___block_invoke_cold_4()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2_1(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s received %{public}@", v9, v10);
}

void __86__CMIOExtensionProviderHostContext_streamPropertyStatesWithStreamID_properties_reply___block_invoke_cold_5()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s exception %@", v9, v10);
}

- (void)setStreamPropertyValuesWithStreamID:propertyValues:reply:.cold.2()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)setStreamPropertyValuesWithStreamID:propertyValues:reply:.cold.3()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)setStreamPropertyValuesWithStreamID:propertyValues:reply:.cold.4()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void __93__CMIOExtensionProviderHostContext_setStreamPropertyValuesWithStreamID_propertyValues_reply___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2_1(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s unknown type %{public}@", v9, v10);
}

void __93__CMIOExtensionProviderHostContext_setStreamPropertyValuesWithStreamID_propertyValues_reply___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2_1(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s received %{public}@", v9, v10);
}

void __93__CMIOExtensionProviderHostContext_setStreamPropertyValuesWithStreamID_propertyValues_reply___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s exception %@", v9, v10);
}

- (void)startStreamWithStreamID:reply:.cold.2()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void __66__CMIOExtensionProviderHostContext_startStreamWithStreamID_reply___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2_1(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s unknown type %{public}@", v9, v10);
}

void __66__CMIOExtensionProviderHostContext_startStreamWithStreamID_reply___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2_1(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s received %{public}@", v9, v10);
}

void __66__CMIOExtensionProviderHostContext_startStreamWithStreamID_reply___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s exception %@", v9, v10);
}

- (void)stopStreamWithStreamID:reply:.cold.2()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void __65__CMIOExtensionProviderHostContext_stopStreamWithStreamID_reply___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2_1(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s unknown type %{public}@", v9, v10);
}

void __65__CMIOExtensionProviderHostContext_stopStreamWithStreamID_reply___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2_1(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s received %{public}@", v9, v10);
}

void __65__CMIOExtensionProviderHostContext_stopStreamWithStreamID_reply___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s exception %@", v9, v10);
}

void __55__CMIOExtensionProviderHostContext_sendEmptyClientInfo__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void __55__CMIOExtensionProviderHostContext_sendEmptyClientInfo__block_invoke_cold_2()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void __55__CMIOExtensionProviderHostContext_sendEmptyClientInfo__block_invoke_cold_3()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)captureAsyncStillImageWithStreamID:uniqueID:options:reply:.cold.2()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)captureAsyncStillImageWithStreamID:uniqueID:options:reply:.cold.3()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)captureAsyncStillImageWithStreamID:uniqueID:options:reply:.cold.4()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void __94__CMIOExtensionProviderHostContext_captureAsyncStillImageWithStreamID_uniqueID_options_reply___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2_1(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s unknown type %{public}@", v9, v10);
}

void __94__CMIOExtensionProviderHostContext_captureAsyncStillImageWithStreamID_uniqueID_options_reply___block_invoke_cold_2(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_5_4(a1, a2, 4.8152e-34);
  OUTLINED_FUNCTION_9_1(v2, 1365);
  *(v3 + 20) = "[CMIOExtensionProviderHostContext captureAsyncStillImageWithStreamID:uniqueID:options:reply:]_block_invoke";
  OUTLINED_FUNCTION_15_0(&dword_22EA08000, v3, v4, "%s:%d:%s Create still sample buffer from serialized block buffer failed", v5);
}

void __94__CMIOExtensionProviderHostContext_captureAsyncStillImageWithStreamID_uniqueID_options_reply___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2_1(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s received %{public}@", v9, v10);
}

void __94__CMIOExtensionProviderHostContext_captureAsyncStillImageWithStreamID_uniqueID_options_reply___block_invoke_cold_4()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s exception %@", v9, v10);
}

- (void)enqueueReactionEffect:reactionType:reply:.cold.2()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)enqueueReactionEffect:reactionType:reply:.cold.3()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void __77__CMIOExtensionProviderHostContext_enqueueReactionEffect_reactionType_reply___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2_1(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s unknown type %{public}@", v9, v10);
}

void __77__CMIOExtensionProviderHostContext_enqueueReactionEffect_reactionType_reply___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2_1(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s received %{public}@", v9, v10);
}

void __77__CMIOExtensionProviderHostContext_enqueueReactionEffect_reactionType_reply___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s exception %@", v9, v10);
}

@end