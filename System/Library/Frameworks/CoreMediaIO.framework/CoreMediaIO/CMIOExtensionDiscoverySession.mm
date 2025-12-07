@interface CMIOExtensionDiscoverySession
+ (id)sharedInstance;
- (CMIOExtensionDiscoverySession)initWithQueue:(id)queue;
- (NSArray)devices;
- (void)_invalidateProvider:(id)provider;
- (void)completeRegistration:(id)registration;
- (void)dealloc;
- (void)provider:(id)provider availableDevicesChanged:(id)changed;
- (void)provider:(id)provider didFailWithError:(id)error;
- (void)provider:(id)provider propertiesChanged:(id)changed;
- (void)providerHasBeenInvalidated:(id)invalidated;
- (void)setUpRegistration;
@end

@implementation CMIOExtensionDiscoverySession

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[CMIOExtensionDiscoverySession sharedInstance];
  }

  return _discoverySession;
}

CMIOExtensionDiscoverySession *__47__CMIOExtensionDiscoverySession_sharedInstance__block_invoke()
{
  v0 = [CMIOExtensionDiscoverySession alloc];
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  result = [(CMIOExtensionDiscoverySession *)v0 initWithQueue:dispatch_queue_create("com.apple.coremediaio.extension.discoverysession", v1)];
  _discoverySession = result;
  return result;
}

- (void)dealloc
{
  dispatch_release(self->_queue);

  v3.receiver = self;
  v3.super_class = CMIOExtensionDiscoverySession;
  [(CMIOExtensionDiscoverySession *)&v3 dealloc];
}

uint64_t __61__CMIOExtensionDiscoverySession_postDeviceChangeNotification__block_invoke()
{
  v0 = [MEMORY[0x277CCAB98] defaultCenter];

  return [v0 postNotificationName:@"CMIOExtensionDevicesChangedNotification" object:0];
}

- (NSArray)devices
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__1;
  v11 = __Block_byref_object_dispose__1;
  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  dispatch_assert_queue_not_V2(self->_queue);
  queue = self->_queue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40__CMIOExtensionDiscoverySession_devices__block_invoke;
  v6[3] = &unk_27885C4E8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_async_and_wait(queue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

void *__40__CMIOExtensionDiscoverySession_devices__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = [*(*(a1 + 32) + 24) allValues];
  result = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if ([objc_msgSend(v7 "devices")])
        {
          [*(*(*(a1 + 40) + 8) + 40) addObjectsFromArray:{objc_msgSend(v7, "devices")}];
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      v4 = result;
    }

    while (result);
  }

  return result;
}

- (void)provider:(id)provider didFailWithError:(id)error
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = CMIOLog(self, a2);
  if (v7)
  {
    v8 = v7;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316418;
      v12 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionDiscoverySession.m");
      v13 = 1024;
      v14 = 157;
      v15 = 2080;
      v16 = "[CMIOExtensionDiscoverySession provider:didFailWithError:]";
      v17 = 2080;
      v18 = "[CMIOExtensionDiscoverySession provider:didFailWithError:]";
      v19 = 2112;
      providerCopy = provider;
      v21 = 2112;
      errorCopy = error;
      _os_log_impl(&dword_22EA08000, v8, OS_LOG_TYPE_DEFAULT, "%s:%d:%s  %s %@ %@", buf, 0x3Au);
    }
  }

  queue = self->_queue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __59__CMIOExtensionDiscoverySession_provider_didFailWithError___block_invoke;
  v10[3] = &unk_27885B938;
  v10[4] = self;
  v10[5] = provider;
  dispatch_async(queue, v10);
}

- (void)providerHasBeenInvalidated:(id)invalidated
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = CMIOLog(self, a2);
  if (v5)
  {
    v6 = v5;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v10 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionDiscoverySession.m");
      v11 = 1024;
      v12 = 165;
      v13 = 2080;
      v14 = "[CMIOExtensionDiscoverySession providerHasBeenInvalidated:]";
      v15 = 2080;
      v16 = "[CMIOExtensionDiscoverySession providerHasBeenInvalidated:]";
      v17 = 2112;
      invalidatedCopy = invalidated;
      _os_log_impl(&dword_22EA08000, v6, OS_LOG_TYPE_DEFAULT, "%s:%d:%s  %s %@", buf, 0x30u);
    }
  }

  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __60__CMIOExtensionDiscoverySession_providerHasBeenInvalidated___block_invoke;
  v8[3] = &unk_27885B938;
  v8[4] = self;
  v8[5] = invalidated;
  dispatch_async(queue, v8);
}

- (void)provider:(id)provider propertiesChanged:(id)changed
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = CMIOLog(self, a2);
  if (v5)
  {
    v6 = v5;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136316162;
      v8 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionDiscoverySession.m");
      v9 = 1024;
      v10 = 173;
      v11 = 2080;
      v12 = "[CMIOExtensionDiscoverySession provider:propertiesChanged:]";
      v13 = 2080;
      v14 = "[CMIOExtensionDiscoverySession provider:propertiesChanged:]";
      v15 = 2112;
      changedCopy = changed;
      _os_log_impl(&dword_22EA08000, v6, OS_LOG_TYPE_DEFAULT, "%s:%d:%s  %s %@", &v7, 0x30u);
    }
  }
}

- (void)provider:(id)provider availableDevicesChanged:(id)changed
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = CMIOLog(self, a2);
  if (v6)
  {
    v7 = v6;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136316162;
      v9 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionDiscoverySession.m");
      v10 = 1024;
      v11 = 179;
      v12 = 2080;
      v13 = "[CMIOExtensionDiscoverySession provider:availableDevicesChanged:]";
      v14 = 2080;
      v15 = "[CMIOExtensionDiscoverySession provider:availableDevicesChanged:]";
      v16 = 2112;
      changedCopy = changed;
      _os_log_impl(&dword_22EA08000, v7, OS_LOG_TYPE_DEFAULT, "%s:%d:%s  %s %@", &v8, 0x30u);
    }
  }

  [(CMIOExtensionDiscoverySession *)self postDeviceChangeNotification];
}

- (void)completeRegistration:(id)registration
{
  v19 = *MEMORY[0x277D85DE8];
  bundleID = [registration bundleID];
  [registration token];
  registrationCopy = registration;
  v6 = bundleID;
  v8 = CMIOLog(v6, v7);
  if (v8)
  {
    v9 = v8;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v12 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionDiscoverySession.m");
      v13 = 1024;
      v14 = 205;
      v15 = 2080;
      v16 = "[CMIOExtensionDiscoverySession completeRegistration:]";
      v17 = 2114;
      v18 = bundleID;
      _os_log_impl(&dword_22EA08000, v9, OS_LOG_TYPE_DEFAULT, "%s:%d:%s Register for bundleID %{public}@", buf, 0x26u);
    }
  }

  v10 = xpc_dictionary_create(0, 0, 0);
  xpc_event_publisher_fire_with_reply();
  xpc_release(v10);
}

void __54__CMIOExtensionDiscoverySession_completeRegistration___block_invoke(uint64_t a1, xpc_object_t xdict)
{
  v48 = *MEMORY[0x277D85DE8];
  value = xpc_dictionary_get_value(xdict, "endpoint");
  uuid = xpc_dictionary_get_uuid(xdict, "mach-o-uuid");
  v7 = CMIOLog(uuid, v6);
  if (v7)
  {
    v8 = v7;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionDiscoverySession.m");
      v10 = *(a1 + 32);
      *buf = 136316418;
      v38 = v9;
      v39 = 1024;
      v40 = 211;
      v41 = 2080;
      v42 = "[CMIOExtensionDiscoverySession completeRegistration:]_block_invoke";
      v43 = 2114;
      *v44 = v10;
      *&v44[8] = 2048;
      v45 = value;
      v46 = 2048;
      v47 = uuid;
      _os_log_impl(&dword_22EA08000, v8, OS_LOG_TYPE_DEFAULT, "%s:%d:%s Receive registration for bundleID %{public}@ endpoint %p uuidBytes %p", buf, 0x3Au);
    }
  }

  if (value && MEMORY[0x2318F1BC0](value) == MEMORY[0x277D86478])
  {
    v28 = xpc_connection_create_from_endpoint(value);
    xpc_connection_set_target_queue(v28, *(*(a1 + 48) + 16));
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __54__CMIOExtensionDiscoverySession_completeRegistration___block_invoke_52;
    handler[3] = &unk_27885C538;
    handler[4] = *(a1 + 32);
    handler[5] = v28;
    v34 = vextq_s8(*(a1 + 40), *(a1 + 40), 8uLL);
    xpc_connection_set_event_handler(v28, handler);
    xpc_connection_resume(v28);
    v29 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v29, "MessageType", 0x19uLL);
    v30 = *(a1 + 48);
    v31 = *(v30 + 16);
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __54__CMIOExtensionDiscoverySession_completeRegistration___block_invoke_2;
    v32[3] = &unk_27885C538;
    v32[4] = *(a1 + 32);
    v32[5] = v28;
    v32[6] = value;
    v32[7] = v30;
    xpc_connection_send_message_with_reply(v28, v29, v31, v32);
    xpc_release(v29);
    xpc_release(v28);
  }

  else
  {
    v11 = [*(a1 + 40) isRetryAllowed];
    if (v11)
    {
      v13 = *(a1 + 40);
      v14 = [v13 numOfRetryAttempts] + 1;
      v15 = [v13 setNumOfRetryAttempts:v14];
      v17 = CMIOLog(v15, v16);
      if (v17)
      {
        v18 = v17;
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v19 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionDiscoverySession.m");
          *buf = 136316162;
          v38 = v19;
          v40 = 215;
          v41 = 2080;
          v39 = 1024;
          v42 = "[CMIOExtensionDiscoverySession completeRegistration:]_block_invoke";
          v43 = 1024;
          *v44 = v14;
          *&v44[4] = 1024;
          *&v44[6] = v14;
          _os_log_impl(&dword_22EA08000, v18, OS_LOG_TYPE_DEFAULT, "%s:%d:%s Valid endpoint not presented... retry attempt %d, will try again in %d seconds", buf, 0x28u);
        }
      }

      v20 = dispatch_time(0, 1000000000 * v14);
      v21 = *(a1 + 48);
      v22 = *(v21 + 16);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __54__CMIOExtensionDiscoverySession_completeRegistration___block_invoke_51;
      block[3] = &unk_27885C510;
      v36 = v14;
      v23 = *(a1 + 40);
      block[4] = v21;
      block[5] = v23;
      dispatch_after(v20, v22, block);
    }

    else
    {
      v24 = CMIOLog(v11, v12);
      if (v24)
      {
        v25 = v24;
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v26 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionDiscoverySession.m");
          v27 = [*(a1 + 40) numOfRetryAttempts];
          *buf = 136315906;
          v38 = v26;
          v39 = 1024;
          v40 = 222;
          v41 = 2080;
          v42 = "[CMIOExtensionDiscoverySession completeRegistration:]_block_invoke";
          v43 = 1024;
          *v44 = v27;
          _os_log_impl(&dword_22EA08000, v25, OS_LOG_TYPE_DEFAULT, "%s:%d:%s Got invalid endpoint and the registration doesn't allow retry, retried attempts: %d", buf, 0x22u);
        }
      }
    }
  }
}

uint64_t __54__CMIOExtensionDiscoverySession_completeRegistration___block_invoke_51(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = CMIOLog(a1, a2);
  if (v3)
  {
    v4 = v3;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionDiscoverySession.m");
      v6 = *(a1 + 48);
      v8 = 136315906;
      v9 = v5;
      v10 = 1024;
      v11 = 217;
      v12 = 2080;
      v13 = "[CMIOExtensionDiscoverySession completeRegistration:]_block_invoke";
      v14 = 1024;
      v15 = v6;
      _os_log_impl(&dword_22EA08000, v4, OS_LOG_TYPE_DEFAULT, "%s:%d:%s retry attempt %d now trying to complete the registration", &v8, 0x22u);
    }
  }

  return [*(a1 + 32) completeRegistration:*(a1 + 40)];
}

void __54__CMIOExtensionDiscoverySession_completeRegistration___block_invoke_52(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x2318F1BC0](a2);
  if (v4 == MEMORY[0x277D86480])
  {
    v6 = CMIOLog(v4, v5);
    if (v6 && os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __54__CMIOExtensionDiscoverySession_completeRegistration___block_invoke_52_cold_1();
    }

    if (a2 == MEMORY[0x277D863F8])
    {
      xpc_connection_cancel(*(a1 + 40));
      [*(a1 + 48) _invalidateProvider:{objc_msgSend(*(*(a1 + 48) + 24), "objectForKeyedSubscript:", *(a1 + 32))}];
    }

    else if (a2 == MEMORY[0x277D863F0])
    {
      [*(a1 + 48) _invalidateProvider:{objc_msgSend(*(*(a1 + 48) + 24), "objectForKeyedSubscript:", *(a1 + 32))}];
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v7 = *(a1 + 48);
      v8 = *(*(a1 + 48) + 16);
      v9[2] = __54__CMIOExtensionDiscoverySession_completeRegistration___block_invoke_53;
      v9[3] = &unk_27885B938;
      v10 = v7;
      dispatch_async(v8, v9);
    }
  }
}

void __54__CMIOExtensionDiscoverySession_completeRegistration___block_invoke_2(void *a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x2318F1BC0](a2);
  if (v3 == MEMORY[0x277D86480])
  {
    v12 = CMIOLog(v3, v4);
    if (v12 && os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __54__CMIOExtensionDiscoverySession_completeRegistration___block_invoke_2_cold_1();
    }
  }

  else if (v3 == MEMORY[0x277D86468])
  {
    v5 = CMIOLog(v3, v4);
    if (v5)
    {
      v6 = v5;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v7 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionDiscoverySession.m");
        v8 = a1[4];
        v9 = a1[5];
        v13 = 136316162;
        v14 = v7;
        v15 = 1024;
        v16 = 259;
        v17 = 2080;
        v18 = "[CMIOExtensionDiscoverySession completeRegistration:]_block_invoke";
        v19 = 2114;
        v20 = v8;
        v21 = 2048;
        v22 = v9;
        _os_log_impl(&dword_22EA08000, v6, OS_LOG_TYPE_DEFAULT, "%s:%d:%s Complete Registration for %{public}@ (%p) ", &v13, 0x30u);
      }
    }

    v10 = [[CMIOExtensionSessionProvider alloc] initWithEndpoint:a1[6] delegate:a1[7]];
    if (v10)
    {
      v11 = v10;
      [(CMIOExtensionSessionProvider *)v10 setBundleID:a1[4]];
      [*(a1[7] + 24) setObject:v11 forKeyedSubscript:a1[4]];
    }
  }
}

- (void)setUpRegistration
{
  xpc_event_publisher_set_handler();
  xpc_event_publisher_set_error_handler();
  xpc_event_publisher_activate();
}

void __50__CMIOExtensionDiscoverySession_setUpRegistration__block_invoke(uint64_t a1, int a2, uint64_t a3, xpc_object_t xdict)
{
  if (!a2)
  {
    string = xpc_dictionary_get_string(xdict, "CMIOExtensionBundleIdentifier");
    if (string && *string)
    {
      v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCString:string encoding:4];
      v10 = [[CMIOExtensionDiscoverySessionRegistration alloc] initWithBundleID:v8 token:a3];
      [*(a1 + 32) completeRegistration:v10];
    }

    else
    {
      v9 = CMIOLog(string, v7);
      if (v9 && os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __50__CMIOExtensionDiscoverySession_setUpRegistration__block_invoke_cold_1();
      }
    }
  }
}

void __50__CMIOExtensionDiscoverySession_setUpRegistration__block_invoke_61(uint64_t a1, uint64_t a2)
{
  v2 = CMIOLog(a1, a2);
  if (v2)
  {
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __50__CMIOExtensionDiscoverySession_setUpRegistration__block_invoke_61_cold_1();
    }
  }
}

- (CMIOExtensionDiscoverySession)initWithQueue:(id)queue
{
  v9.receiver = self;
  v9.super_class = CMIOExtensionDiscoverySession;
  v4 = [(CMIOExtensionDiscoverySession *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_queue = queue;
    v4->_providersByBundleIdentifier = objc_alloc_init(MEMORY[0x277CBEB38]);
    v5->_extensionEventPublisher = xpc_event_publisher_create();
    queue = v5->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__CMIOExtensionDiscoverySession_initWithQueue___block_invoke;
    block[3] = &unk_27885B8E8;
    block[4] = v5;
    dispatch_async(queue, block);
  }

  return v5;
}

- (void)_invalidateProvider:(id)provider
{
  if (provider)
  {
    bundleID = [provider bundleID];
    if (bundleID)
    {
      v5 = bundleID;
      dispatch_assert_queue_V2(self->_queue);
      [(NSMutableDictionary *)self->_providersByBundleIdentifier removeObjectForKey:v5];

      [(CMIOExtensionDiscoverySession *)self postDeviceChangeNotification];
    }
  }
}

void __54__CMIOExtensionDiscoverySession_completeRegistration___block_invoke_52_cold_1()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionDiscoverySession.m");
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x3Au);
}

void __54__CMIOExtensionDiscoverySession_completeRegistration___block_invoke_2_cold_1()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionDiscoverySession.m");
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x30u);
}

void __50__CMIOExtensionDiscoverySession_setUpRegistration__block_invoke_cold_1()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionDiscoverySession.m");
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void __50__CMIOExtensionDiscoverySession_setUpRegistration__block_invoke_61_cold_1()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionDiscoverySession.m");
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

@end