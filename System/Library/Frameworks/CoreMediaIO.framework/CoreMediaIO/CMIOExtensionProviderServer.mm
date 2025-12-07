@interface CMIOExtensionProviderServer
+ (CMIOExtensionProviderServer)sharedServer;
- (CMIOExtensionProviderServer)init;
- (void)addConnection:(id)connection;
- (void)dealloc;
- (void)init;
- (void)start;
- (void)stop;
@end

@implementation CMIOExtensionProviderServer

+ (CMIOExtensionProviderServer)sharedServer
{
  if (sharedServer_onceToken != -1)
  {
    +[CMIOExtensionProviderServer sharedServer];
  }

  return sharedServer_gServer;
}

CMIOExtensionProviderServer *__43__CMIOExtensionProviderServer_sharedServer__block_invoke()
{
  result = objc_alloc_init(CMIOExtensionProviderServer);
  sharedServer_gServer = result;
  return result;
}

- (CMIOExtensionProviderServer)init
{
  v14.receiver = self;
  v14.super_class = CMIOExtensionProviderServer;
  v2 = [(CMIOExtensionProviderServer *)&v14 init];
  if (v2)
  {
    isKindOfClass = [objc_msgSend(MEMORY[0x277CCA8D8] "mainBundle")];
    if (isKindOfClass && (v5 = isKindOfClass, objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), (isKindOfClass & 1) != 0) && (isKindOfClass = [v5 count]) != 0)
    {
      v2->_serviceName = [v5 objectForKeyedSubscript:@"CMIOExtensionMachServiceName"];
      v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      global_queue = dispatch_get_global_queue(21, 0);
      v8 = dispatch_queue_create_with_target_V2("com.apple.cmio.CMIOExtensionProviderServer", v6, global_queue);
      v2->_queue = v8;
      v9 = xpc_connection_create(0, v8);
      v2->_listener = v9;
      v2->_endpoint = xpc_endpoint_create(v9);
      listener = v2->_listener;
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __35__CMIOExtensionProviderServer_init__block_invoke;
      handler[3] = &unk_27885C2F0;
      handler[4] = v2;
      xpc_connection_set_event_handler(listener, handler);
      v2->_internalDaemon = 1;
    }

    else
    {
      v11 = CMIOLog(isKindOfClass, v4);
      if (v11 && os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [CMIOExtensionProviderServer init];
      }

      return 0;
    }
  }

  return v2;
}

void *__35__CMIOExtensionProviderServer_init__block_invoke(void *result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    result = MEMORY[0x2318F1BC0](a2);
    if (result == MEMORY[0x277D86450])
    {
      v4 = v3[4];

      return [v4 addConnection:a2];
    }
  }

  return result;
}

- (void)dealloc
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = CMIOLog(self, a2);
  if (v3)
  {
    v4 = v3;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v17 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderServer.m");
      v18 = 1024;
      v19 = 116;
      v20 = 2080;
      v21 = "[CMIOExtensionProviderServer dealloc]";
      _os_log_impl(&dword_22EA08000, v4, OS_LOG_TYPE_DEFAULT, "%s:%d:%s dealloc starting", buf, 0x1Cu);
    }
  }

  v7 = CMIOLog(v5, v6);
  if (v7)
  {
    v8 = v7;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderServer.m");
      *buf = 136315650;
      v17 = v9;
      v18 = 1024;
      v19 = 123;
      v20 = 2080;
      v21 = "[CMIOExtensionProviderServer dealloc]";
      _os_log_impl(&dword_22EA08000, v8, OS_LOG_TYPE_DEFAULT, "%s:%d:%s calling [super dealloc]", buf, 0x1Cu);
    }
  }

  v15.receiver = self;
  v15.super_class = CMIOExtensionProviderServer;
  v10 = [(CMIOExtensionProviderServer *)&v15 dealloc];
  v12 = CMIOLog(v10, v11);
  if (v12)
  {
    v13 = v12;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderServer.m");
      *buf = 136315650;
      v17 = v14;
      v18 = 1024;
      v19 = 126;
      v20 = 2080;
      v21 = "[CMIOExtensionProviderServer dealloc]";
      _os_log_impl(&dword_22EA08000, v13, OS_LOG_TYPE_DEFAULT, "%s:%d:%s dealloc done", buf, 0x1Cu);
    }
  }
}

- (void)start
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderServer.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_2(&dword_22EA08000, v0, v1, "%s:%d:%s Failed to get the current process Mach-O UUID", v2, v3, v4, v5);
}

void __36__CMIOExtensionProviderServer_start__block_invoke(uint64_t a1, xpc_object_t original)
{
  reply = xpc_dictionary_create_reply(original);
  xpc_dictionary_set_uuid(reply, "mach-o-uuid", start_unique_info);
  xpc_dictionary_set_value(reply, "endpoint", *(*(a1 + 32) + 24));
  cmio_XPCMessageSetCFString(reply, "bundle-id", *(a1 + 40));
  cmio_XPCMessageSetCFDictionary(reply, "bundle-info", *(a1 + 48));
  xpc_dictionary_send_reply();

  xpc_release(reply);
}

- (void)stop
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = CMIOLog(self, a2);
  if (v3)
  {
    v4 = v3;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315906;
      v11 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderServer.m");
      v12 = 1024;
      v13 = 157;
      v14 = 2080;
      v15 = "[CMIOExtensionProviderServer stop]";
      v16 = 2112;
      selfCopy2 = self;
      _os_log_impl(&dword_22EA08000, v4, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@: cancelling listener", &v10, 0x26u);
    }
  }

  xpc_connection_cancel(self->_listener);
  v7 = CMIOLog(v5, v6);
  if (v7)
  {
    v8 = v7;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderServer.m");
      v10 = 136315906;
      v11 = v9;
      v12 = 1024;
      v13 = 159;
      v14 = 2080;
      v15 = "[CMIOExtensionProviderServer stop]";
      v16 = 2112;
      selfCopy2 = self;
      _os_log_impl(&dword_22EA08000, v8, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@: finished stopping things", &v10, 0x26u);
    }
  }
}

- (void)addConnection:(id)connection
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [[CMIOExtensionProviderContext alloc] initWithConnection:connection];
  if (v3)
  {
    v5 = v3;
    v6 = objc_autoreleasePoolPush();
    v7 = +[CMIOExtensionProvider sharedProvider];
    v9 = CMIOLog(v7, v8);
    if (v9)
    {
      v10 = v9;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 136315906;
        v13 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderServer.m");
        v14 = 1024;
        v15 = 171;
        v16 = 2080;
        v17 = "[CMIOExtensionProviderServer addConnection:]";
        v18 = 2112;
        v19 = v7;
        _os_log_impl(&dword_22EA08000, v10, OS_LOG_TYPE_DEFAULT, "%s:%d:%s CMIOExtensionProvider.sharedProvider = %@", &v12, 0x26u);
      }
    }

    [v7 beginProviderContextRegistration:v5];
    objc_autoreleasePoolPop(v6);
  }

  else
  {
    v11 = CMIOLog(0, v4);
    if (v11 && os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionProviderServer addConnection:];
    }
  }
}

- (void)init
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderServer.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_2(&dword_22EA08000, v0, v1, "%s:%d:%s ServiceName is missing from Info.plist", v2, v3, v4, v5);
}

- (void)addConnection:.cold.1()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderServer.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_2(&dword_22EA08000, v0, v1, "%s:%d:%s Failed to instantiate CMIOExtensionProviderContext", v2, v3, v4, v5);
}

@end