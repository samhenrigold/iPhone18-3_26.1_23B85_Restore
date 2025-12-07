@interface CMIOExtensionSession
+ (id)sessionWithDelegate:(id)delegate;
- (CMIOExtensionSession)initWithDelegate:(id)delegate;
- (NSDictionary)extensions;
- (void)dealloc;
@end

@implementation CMIOExtensionSession

+ (id)sessionWithDelegate:(id)delegate
{
  v3 = [objc_alloc(objc_opt_class()) initWithDelegate:delegate];

  return v3;
}

- (CMIOExtensionSession)initWithDelegate:(id)delegate
{
  v58 = *MEMORY[0x277D85DE8];
  v47.receiver = self;
  v47.super_class = CMIOExtensionSession;
  v4 = [(CMIOExtensionSession *)&v47 init];
  v5 = v4;
  if (v4)
  {
    v4->_lock._os_unfair_lock_opaque = 0;
    v4->_extensions = objc_alloc_init(MEMORY[0x277CBEB38]);
    objc_storeWeak(&v5->_delegate, delegate);
    mach_service = xpc_connection_create_mach_service("com.apple.cmio.registerassistantservice.system-extensions", 0, 2uLL);
    v5->_registerExtensionServiceConnection = mach_service;
    if (mach_service)
    {
      objc_initWeak(&location, v5);
      registerExtensionServiceConnection = v5->_registerExtensionServiceConnection;
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __41__CMIOExtensionSession_initWithDelegate___block_invoke;
      handler[3] = &unk_27885C198;
      objc_copyWeak(&v45, &location);
      xpc_connection_set_event_handler(registerExtensionServiceConnection, handler);
      xpc_connection_resume(v5->_registerExtensionServiceConnection);
      v8 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_string(v8, "call", "list");
      v9 = xpc_connection_send_message_with_reply_sync(v5->_registerExtensionServiceConnection, v8);
      xpc_release(v8);
      if (!v9 || (v10 = MEMORY[0x2318F1BC0](v9), v10 != MEMORY[0x277D86468]))
      {
        v12 = CMIOLog(v10, v11);
        if (v12 && os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v13 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
          [(CMIOExtensionSession *)v13 initWithDelegate:v9, buf];
        }

LABEL_8:
        if (!v9)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }

      array = xpc_dictionary_get_array(v9, "endpoints");
      v17 = array;
      if (!array || (array = MEMORY[0x2318F1BC0](array), array != MEMORY[0x277D86440]))
      {
        v18 = CMIOLog(array, v16);
        if (v18 && os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v19 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
          [(CMIOExtensionSession *)v19 initWithDelegate:v17, buf];
        }

        goto LABEL_9;
      }

      count = xpc_array_get_count(v17);
      if (!count)
      {
LABEL_9:
        xpc_release(v9);
LABEL_10:
        objc_destroyWeak(&v45);
        objc_destroyWeak(&location);
        return v5;
      }

      v21 = 0;
      while (1)
      {
        dictionary = xpc_array_get_dictionary(v17, v21);
        v24 = dictionary;
        if (!dictionary)
        {
          break;
        }

        dictionary = MEMORY[0x2318F1BC0](dictionary);
        if (dictionary != MEMORY[0x277D86468])
        {
          break;
        }

        uuid = xpc_dictionary_get_uuid(v24, "mach-o-uuid");
        value = xpc_dictionary_get_value(v24, "endpoint");
        v43 = 0;
        cmio_XPCMessageCopyCFString(v24, "bundle-id", &v43);
        v29 = v43;
        v42 = 0;
        cmio_XPCMessageCopyCFDictionary(v24, "bundle-info", &v42);
        v30 = v42;
        if (!uuid || !value || (v30 = MEMORY[0x2318F1BC0](value), v30 != MEMORY[0x277D86478]))
        {
          v32 = CMIOLog(v30, v31);
          v33 = v32;
          if (!v32 || !os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_23;
          }

          v34 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
          *buf = 136315906;
          v49 = v34;
          v50 = 1024;
          v51 = 1899;
          v52 = 2080;
          v53 = "[CMIOExtensionSession initWithDelegate:]";
          v54 = 2112;
          v55 = value;
          v35 = v33;
          v36 = "%s:%d:%s unexpected reply %@";
          v37 = 38;
LABEL_33:
          _os_log_error_impl(&dword_22EA08000, v35, OS_LOG_TYPE_ERROR, v36, buf, v37);
          goto LABEL_23;
        }

        v38 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:uuid];
        v39 = [CMIOExtensionInfo alloc];
        v40 = [(CMIOExtensionInfo *)v39 initWithEndpoint:value bundleID:v43 bundleInfo:v42];
        os_unfair_lock_lock(&v5->_lock);
        [(NSMutableDictionary *)v5->_extensions setObject:v40 forKey:v38];
        os_unfair_lock_unlock(&v5->_lock);

LABEL_23:
        if (count == ++v21)
        {
          goto LABEL_8;
        }
      }

      v25 = CMIOLog(dictionary, v23);
      v26 = v25;
      if (!v25 || !os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_23;
      }

      v41 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
      *buf = 136316162;
      v49 = v41;
      v50 = 1024;
      v51 = 1903;
      v52 = 2080;
      v53 = "[CMIOExtensionSession initWithDelegate:]";
      v54 = 2082;
      v55 = "com.apple.cmio.registerassistantservice.system-extensions";
      v56 = 2114;
      v57 = v24;
      v35 = v26;
      v36 = "%s:%d:%s unexpected reply from service %{public}s %{public}@";
      v37 = 48;
      goto LABEL_33;
    }
  }

  return v5;
}

void __41__CMIOExtensionSession_initWithDelegate___block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = MEMORY[0x2318F1BC0](a2);
  if (v4 == MEMORY[0x277D86480])
  {
    if (a2 == MEMORY[0x277D863F0])
    {
      v15 = CMIOLog(v4, v5);
      if (v15)
      {
        v16 = v15;
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *v22 = 136315906;
          *&v22[4] = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
          v23 = 1024;
          v24 = 1813;
          v25 = 2080;
          v26 = "[CMIOExtensionSession initWithDelegate:]_block_invoke";
          v27 = 2080;
          v28 = "com.apple.cmio.registerassistantservice.system-extensions";
          _os_log_impl(&dword_22EA08000, v16, OS_LOG_TYPE_DEFAULT, "%s:%d:%s interrupted connection to service %s", v22, 0x26u);
        }
      }
    }

    else
    {
      v6 = MEMORY[0x277D863F8];
      v7 = CMIOLog(v4, v5);
      if (a2 == v6)
      {
        if (v7 && os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          __41__CMIOExtensionSession_initWithDelegate___block_invoke_cold_3();
        }
      }

      else if (v7 && os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __41__CMIOExtensionSession_initWithDelegate___block_invoke_cold_2();
      }
    }
  }

  else if (v4 == MEMORY[0x277D86468])
  {
    string = xpc_dictionary_get_string(a2, "call");
    if (string)
    {
      if (!strncmp("extension", string, 9uLL))
      {
        uuid = xpc_dictionary_get_uuid(a2, "mach-o-uuid");
        value = xpc_dictionary_get_value(a2, "endpoint");
        *v22 = 0;
        cmio_XPCMessageCopyCFString(a2, "bundle-id", v22);
        v11 = *v22;
        v21 = 0;
        cmio_XPCMessageCopyCFDictionary(a2, "bundle-info", &v21);
        v12 = v21;
        if (uuid && value && (v12 = MEMORY[0x2318F1BC0](value), v12 == MEMORY[0x277D86478]))
        {
          if (WeakRetained && objc_loadWeak(WeakRetained + 2))
          {
            v17 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:uuid];
            v18 = [CMIOExtensionInfo alloc];
            v19 = [(CMIOExtensionInfo *)v18 initWithEndpoint:value bundleID:*v22 bundleInfo:v21];
            os_unfair_lock_lock(WeakRetained + 2);
            [*(WeakRetained + 3) setObject:v19 forKey:v17];
            v20 = [*(WeakRetained + 3) copy];
            os_unfair_lock_unlock(WeakRetained + 2);

            [objc_loadWeak(WeakRetained + 2) session:WeakRetained availableExtensionsChanged:v20];
          }
        }

        else
        {
          v14 = CMIOLog(v12, v13);
          if (v14 && os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            __41__CMIOExtensionSession_initWithDelegate___block_invoke_cold_1();
          }
        }
      }
    }
  }
}

- (void)dealloc
{
  v14 = *MEMORY[0x277D85DE8];
  if (CMIOModuleLogLevel_once != -1)
  {
    [CMIOExtensionSessionStream dealloc];
  }

  if (CMIOModuleLogLevel_cmioLevel >= 1)
  {
    v3 = CMIOLog(self, a2);
    if (v3)
    {
      v4 = v3;
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v7 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
        v8 = 1024;
        v9 = 1924;
        v10 = 2080;
        v11 = "[CMIOExtensionSession dealloc]";
        v12 = 2112;
        selfCopy = self;
        _os_log_impl(&dword_22EA08000, v4, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@", buf, 0x26u);
      }
    }
  }

  xpc_release(self->_registerExtensionServiceConnection);
  v5.receiver = self;
  v5.super_class = CMIOExtensionSession;
  [(CMIOExtensionSession *)&v5 dealloc];
}

- (NSDictionary)extensions
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableDictionary *)self->_extensions copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)initWithDelegate:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = OUTLINED_FUNCTION_1(a1, 4.8154e-34, a2, a3);
  *(v4 + 14) = 1908;
  *(v4 + 18) = 2080;
  *(v4 + 20) = "[CMIOExtensionSession initWithDelegate:]";
  *(v4 + 28) = 2082;
  OUTLINED_FUNCTION_5_1(v3, v5, v4);
  _os_log_error_impl(&dword_22EA08000, v7, OS_LOG_TYPE_ERROR, "%s:%d:%s unexpected reply from service %{public}s %{public}@", v6, 0x30u);
}

- (void)initWithDelegate:(uint64_t)a3 .cold.2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = OUTLINED_FUNCTION_1(a1, 4.8154e-34, a2, a3);
  *(v4 + 14) = 1912;
  *(v4 + 18) = 2080;
  *(v4 + 20) = "[CMIOExtensionSession initWithDelegate:]";
  *(v4 + 28) = 2082;
  OUTLINED_FUNCTION_5_1(v3, v5, v4);
  _os_log_error_impl(&dword_22EA08000, v7, OS_LOG_TYPE_ERROR, "%s:%d:%s unexpected reply from service %{public}s %{public}@", v6, 0x30u);
}

void __41__CMIOExtensionSession_initWithDelegate___block_invoke_cold_1()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void __41__CMIOExtensionSession_initWithDelegate___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
  xpc_dictionary_get_string(v0, *MEMORY[0x277D86400]);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x30u);
}

void __41__CMIOExtensionSession_initWithDelegate___block_invoke_cold_3()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

@end