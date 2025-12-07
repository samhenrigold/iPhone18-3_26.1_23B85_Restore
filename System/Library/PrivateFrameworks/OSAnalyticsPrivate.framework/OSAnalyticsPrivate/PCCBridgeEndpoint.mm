@interface PCCBridgeEndpoint
+ (BOOL)isSupportedRemoteDeviceType:(unsigned int)type;
+ (id)UDIDForRemoteDevice:(id)device;
+ (id)identifierForRemoteDevice:(id)device;
+ (id)remoteDeviceForIdentifier:(id)identifier;
+ (void)addSenderToMessage:(id)message;
- (BOOL)isDeviceNearby:(id)nearby;
- (PCCBridgeEndpoint)init;
- (id)connectionForIdentifier:(id)identifier;
- (id)deviceIds;
- (id)identifierForTarget:(id)target;
- (id)send:(id)send file:(id)file metadata:(id)metadata error:(id *)error;
- (id)send:(id)send message:(id)message error:(id *)error;
- (id)synchronize:(id)synchronize withOptions:(id)options;
- (void)dealloc;
- (void)enterInterruptedStateFrom:(id)from;
- (void)exitInterruptedStateFrom:(id)from;
- (void)runWithDelegate:(id)delegate;
- (void)setupDeviceStateChangeHandler;
- (void)setupIncomingEventListener;
- (void)setupOutgoingConnection:(id)connection;
- (void)stashCrashReporterKeyForIdentifier:(id)identifier;
@end

@implementation PCCBridgeEndpoint

- (PCCBridgeEndpoint)init
{
  selfCopy = self;
  if (!MEMORY[0x2822297C0] || !MEMORY[0x2822297B8] || !MEMORY[0x2822297B0] || !MEMORY[0x2822297A8] || !MEMORY[0x282229798] || !MEMORY[0x282229790] || !MEMORY[0x282229788] || !MEMORY[0x282229738] || !MEMORY[0x282229730] || !MEMORY[0x282229728] || !MEMORY[0x282229720] || !MEMORY[0x282229718] || !MEMORY[0x282229710] || !MEMORY[0x282229708] || !MEMORY[0x282229700] || !MEMORY[0x2822296F8] || !MEMORY[0x2822296E8] || !MEMORY[0x2822296F0])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [PCCBridgeEndpoint init];
    }

    goto LABEL_27;
  }

  v16.receiver = self;
  v16.super_class = PCCBridgeEndpoint;
  selfCopy = [(PCCBridgeEndpoint *)&v16 init];
  if (selfCopy)
  {
    v3 = dispatch_queue_create("com.apple.osanalytics.endpoint.remoteXPC.initialization", 0);
    initializationQueue = selfCopy->_initializationQueue;
    selfCopy->_initializationQueue = v3;

    v5 = dispatch_queue_create("com.apple.osanalytics.endpoint.remoteXPC.events", 0);
    eventQueue = selfCopy->_eventQueue;
    selfCopy->_eventQueue = v5;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    remoteDevices = selfCopy->_remoteDevices;
    selfCopy->_remoteDevices = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    remoteCRKeys = selfCopy->_remoteCRKeys;
    selfCopy->_remoteCRKeys = dictionary2;

    dictionary3 = [MEMORY[0x277CBEB38] dictionary];
    outgoingConnections = selfCopy->_outgoingConnections;
    selfCopy->_outgoingConnections = dictionary3;

    v13 = [MEMORY[0x277CBEB58] set];
    interruptedDevices = selfCopy->_interruptedDevices;
    selfCopy->_interruptedDevices = v13;
  }

  if ((OSAIsRSDHost() & 1) == 0 && (OSAIsRSDDevice() & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [PCCBridgeEndpoint init];
    }

LABEL_27:

    return 0;
  }

  return selfCopy;
}

- (void)dealloc
{
  v21 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = self->_outgoingConnections;
  v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v15;
    v8 = MEMORY[0x277D86220];
    *&v5 = 138412290;
    v12 = v5;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v12;
          v19 = v10;
          _os_log_impl(&dword_25D12D000, v8, OS_LOG_TYPE_DEFAULT, "canceling remote connection with %@", buf, 0xCu);
        }

        v11 = [(NSMutableDictionary *)self->_outgoingConnections objectForKeyedSubscript:v10, v12];
        xpc_remote_connection_cancel();

        ++v9;
      }

      while (v6 != v9);
      v6 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v6);
  }

  if (self->_listeningConnection)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "canceling listening connection", buf, 2u);
    }

    xpc_remote_connection_cancel();
  }

  if (self->_device_browser)
  {
    remote_device_browser_cancel();
  }

  v13.receiver = self;
  v13.super_class = PCCBridgeEndpoint;
  [(PCCBridgeEndpoint *)&v13 dealloc];
}

- (void)runWithDelegate:(id)delegate
{
  v4.receiver = self;
  v4.super_class = PCCBridgeEndpoint;
  [(PCCEndpoint *)&v4 runWithDelegate:delegate];
  [(PCCBridgeEndpoint *)self setupDeviceStateChangeHandler];
  [(PCCBridgeEndpoint *)self setupIncomingEventListener];
}

- (void)setupIncomingEventListener
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __47__PCCBridgeEndpoint_setupIncomingEventListener__block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = MEMORY[0x277D863F8];
  v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (v3 == v4)
  {
    if (v5)
    {
      v7 = *(a1 + 40);
      *buf = 136315138;
      v9 = v7;
      _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "incoming connection from %s is DOWN", buf, 0xCu);
    }
  }

  else
  {
    if (v5)
    {
      v6 = *(a1 + 40);
      *buf = 136315138;
      v9 = v6;
      _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "incoming connection from %s is UP", buf, 0xCu);
    }

    xpc_remote_connection_set_event_handler();
    xpc_remote_connection_activate();
  }
}

void __47__PCCBridgeEndpoint_setupIncomingEventListener__block_invoke_13(uint64_t a1, void *a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = MEMORY[0x25F892B00]();
  if (v4 != MEMORY[0x277D86480])
  {
    if (v4 != MEMORY[0x277D86468])
    {
LABEL_32:
      v26 = MEMORY[0x25F892A40](v3);
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        __47__PCCBridgeEndpoint_setupIncomingEventListener__block_invoke_13_cold_2();
      }

      if (v26)
      {
        free(v26);
      }

      goto LABEL_36;
    }

    v7 = objc_autoreleasePoolPush();
    v8 = xpc2ns();
    v9 = [v8 objectForKeyedSubscript:@"kOSASender"];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v34 = __Block_byref_object_copy__0;
    v35 = __Block_byref_object_dispose__0;
    v36 = 0;
    if (v9)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *v32 = 0;
        _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Registering new sender from incoming message.", v32, 2u);
      }

      v10 = *(*(a1 + 32) + 56);
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __47__PCCBridgeEndpoint_setupIncomingEventListener__block_invoke_17;
      v29[3] = &unk_2799BFF98;
      v30 = v9;
      v31 = buf;
      [v10 enumerateKeysAndObjectsUsingBlock:v29];
      if (!*(*&buf[8] + 40) || ([*(a1 + 32) exitInterruptedStateFrom:?], !*(*&buf[8] + 40)) || (objc_msgSend(*(*(a1 + 32) + 72), "objectForKeyedSubscript:"), v11 = objc_claimAutoreleasedReturnValue(), v12 = v11 == 0, v11, v12))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *v32 = 0;
          _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "UNEXPECTED: incoming msg BEFORE outgoing connection established! *** consider deferring listener initialization ***", v32, 2u);
        }
      }
    }

    v13 = [v8 objectForKeyedSubscript:@"messageType"];
    if ([v13 isEqualToString:@"<file>"])
    {
      v14 = NSTemporaryDirectory();
      reply = [v14 stringByAppendingPathComponent:@"bridge-xfer.XXXXXX"];

      v16 = reply;
      v17 = [reply fileSystemRepresentation];
      v18 = strlen(v17);
      v19 = malloc_type_malloc(v18 + 1, 0x100004077774924uLL);
      v20 = strcpy(v19, v17);
      if (mkstemp(v20) < 0)
      {
        free(v19);
      }

      else
      {
        v21 = xpc_dictionary_get_value(v3, "<file_xfer>");
        v27 = v8;
        v28 = v3;
        xpc_file_transfer_write_to_fd();
      }

      goto LABEL_29;
    }

    if ([v13 isEqualToString:@"kOSAFetchCrashReporterKey"])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *v32 = 0;
        _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Handling request to fetch crash reporter key", v32, 2u);
      }

      reply = xpc_dictionary_create_reply(v3);
      if (!reply)
      {
        v25 = "failed to create reply message to fetch crash reporter key";
        goto LABEL_30;
      }

      v22 = [MEMORY[0x277D36B80] sharedInstance];
      v23 = [v22 crashReporterKey];
      v24 = v23;
      xpc_dictionary_set_string(reply, "crashReporterKey", [v23 UTF8String]);

      xpc_dictionary_send_reply();
LABEL_29:
      v25 = 0;
LABEL_30:

      goto LABEL_31;
    }

    if (v13)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        __47__PCCBridgeEndpoint_setupIncomingEventListener__block_invoke_13_cold_1();
      }

      if (*(*&buf[8] + 40))
      {
        reply = objc_loadWeakRetained((*(a1 + 32) + 8));
        [reply handleMessage:v8 from:*(*&buf[8] + 40)];
        goto LABEL_29;
      }

      v25 = "received message with missing/unknown sender";
    }

    else
    {
      v25 = "received unknown dictionary";
    }

LABEL_31:

    _Block_object_dispose(buf, 8);
    objc_autoreleasePoolPop(v7);
    if (!v25)
    {
      goto LABEL_36;
    }

    goto LABEL_32;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    string = xpc_dictionary_get_string(v3, *MEMORY[0x277D86400]);
    *buf = 136315394;
    *&buf[4] = v5;
    *&buf[12] = 2080;
    *&buf[14] = string;
    _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "incoming connection from %s ERROR %s\n", buf, 0x16u);
  }

LABEL_36:
}

void __47__PCCBridgeEndpoint_setupIncomingEventListener__block_invoke_17(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v8 = a2;
  if ([a3 isEqualToString:*(a1 + 32)])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

void __47__PCCBridgeEndpoint_setupIncomingEventListener__block_invoke_29(uint64_t a1, int a2)
{
  if (!a2)
  {
    v3 = [MEMORY[0x277CBEBC0] fileURLWithFileSystemRepresentation:*(a1 + 64) isDirectory:0 relativeToURL:0];
    v4 = [*(a1 + 32) objectForKeyedSubscript:@"fileMetadata"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v4 count])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        __47__PCCBridgeEndpoint_setupIncomingEventListener__block_invoke_29_cold_1(v3);
      }

      WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 8));
      [WeakRetained handleFile:v3 from:*(*(*(a1 + 56) + 8) + 40) metadata:v4];

      goto LABEL_12;
    }

    v6 = MEMORY[0x25F892A40](*(a1 + 48));
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      __47__PCCBridgeEndpoint_setupIncomingEventListener__block_invoke_29_cold_2();
      if (!v6)
      {
        goto LABEL_12;
      }
    }

    else if (!v6)
    {
LABEL_12:

      goto LABEL_13;
    }

    free(v6);
    goto LABEL_12;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "failed to write tmp remote file", v7, 2u);
  }

LABEL_13:
  unlink(*(a1 + 64));
  free(*(a1 + 64));
}

- (void)setupDeviceStateChangeHandler
{
  if (self->_device_browser)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Browser is already up; skipping setup", buf, 2u);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Browser is down; proceeding with setup", buf, 2u);
    }

    started = remote_device_start_browsing();
    device_browser = self->_device_browser;
    self->_device_browser = started;
  }
}

void __50__PCCBridgeEndpoint_setupDeviceStateChangeHandler__block_invoke(uint64_t a1, void *a2, int a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if (!a3)
  {
    if (v5)
    {
      type = remote_device_get_type();
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        description = remote_device_type_get_description();
        name = remote_device_get_name();
        remote_device_get_state();
        *buf = 136315650;
        v19 = description;
        v20 = 2080;
        v21 = name;
        v22 = 2080;
        v23 = remote_device_state_get_description();
        _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Browser found %s-%s: %s", buf, 0x20u);
      }

      if ([PCCBridgeEndpoint isSupportedRemoteDeviceType:type])
      {
        remote_device_set_connected_callback();
        v12 = dispatch_get_global_queue(0, 0);
        remote_device_set_disconnected_callback();

        goto LABEL_15;
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        goto LABEL_15;
      }

      v17 = remote_device_type_get_description();
      *buf = 136315138;
      v19 = v17;
      v13 = MEMORY[0x277D86220];
      v14 = "Ignoring device of type %s";
      v15 = OS_LOG_TYPE_INFO;
      v16 = 12;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_15;
      }

      *buf = 0;
      v13 = MEMORY[0x277D86220];
      v14 = "Got a NULL device from the remote device browser";
      v15 = OS_LOG_TYPE_DEFAULT;
      v16 = 2;
    }

    _os_log_impl(&dword_25D12D000, v13, v15, v14, buf, v16);
    goto LABEL_15;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Browser was canceled", buf, 2u);
  }

  v7 = *(a1 + 32);
  v8 = *(v7 + 32);
  *(v7 + 32) = 0;

LABEL_15:
}

void __50__PCCBridgeEndpoint_setupDeviceStateChangeHandler__block_invoke_47(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a2;
  remote_device_get_type();
  description = remote_device_type_get_description();
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = description;
    _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Device '%s' in connected state; attempting to establish service", &v5, 0xCu);
  }

  [*(a1 + 32) setupOutgoingConnection:v3];
}

void __50__PCCBridgeEndpoint_setupDeviceStateChangeHandler__block_invoke_49(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    name = remote_device_get_name();
    _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Device %s is disconnected", buf, 0xCu);
  }

  v4 = [PCCBridgeEndpoint identifierForRemoteDevice:v3];
  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      name = v4;
      _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Tearing down connections for disconnected device %@.", buf, 0xCu);
    }

    v5 = [*(*(a1 + 32) + 56) objectForKeyedSubscript:v4];

    v6 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (v6)
      {
        *buf = 0;
        _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "removing registered device", buf, 2u);
      }

      [*(*(a1 + 32) + 56) setObject:0 forKeyedSubscript:v4];
    }

    else if (v6)
    {
      *buf = 138412290;
      name = v4;
      _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Device %@ disconnected before registration.", buf, 0xCu);
    }

    v7 = [*(*(a1 + 32) + 72) objectForKeyedSubscript:v4];

    v8 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (v8)
      {
        *buf = 138412290;
        name = v4;
        _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "canceling remote connection for %@.", buf, 0xCu);
      }

      v9 = [*(*(a1 + 32) + 72) objectForKeyedSubscript:v4];
      xpc_remote_connection_cancel();

      [*(*(a1 + 32) + 72) setObject:0 forKeyedSubscript:v4];
      v10 = *(a1 + 32);
      v11 = *(v10 + 40);
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __50__PCCBridgeEndpoint_setupDeviceStateChangeHandler__block_invoke_50;
      v12[3] = &unk_2799C0038;
      v12[4] = v10;
      v13 = v4;
      dispatch_async(v11, v12);
    }

    else if (v8)
    {
      *buf = 138412290;
      name = v4;
      _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Device %@ disconnected before outgoing connections were set up.", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __50__PCCBridgeEndpoint_setupDeviceStateChangeHandler__block_invoke_49_cold_1();
  }
}

void __50__PCCBridgeEndpoint_setupDeviceStateChangeHandler__block_invoke_50(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained handleConnection:0 from:*(a1 + 40)];
}

- (id)deviceIds
{
  v27 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = self->_remoteDevices;
  v4 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v21;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v20 + 1) + 8 * i);
        v24[0] = @"uuid";
        v24[1] = @"nearby";
        v25[0] = v8;
        v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[PCCBridgeEndpoint isDeviceNearby:](self, "isDeviceNearby:", v8)}];
        v25[1] = v9;
        v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];
        v11 = [v10 mutableCopy];

        [(PCCBridgeEndpoint *)self stashCrashReporterKeyForIdentifier:v8];
        v12 = [(NSMutableDictionary *)self->_remoteCRKeys objectForKeyedSubscript:v8];
        [v11 setObject:v12 forKeyedSubscript:@"crashreporter_key"];

        v13 = [PCCBridgeEndpoint remoteDeviceForIdentifier:v8];
        if (v13)
        {
          name = remote_device_get_name();
          if (name)
          {
            v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:name];
            [v11 setObject:v15 forKeyedSubscript:@"name"];
          }
        }

        v16 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v11];
        [array addObject:v16];
      }

      v5 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v5);
  }

  v17 = [MEMORY[0x277CBEA60] arrayWithArray:array];

  return v17;
}

- (BOOL)isDeviceNearby:(id)nearby
{
  v3 = [(NSMutableDictionary *)self->_outgoingConnections objectForKeyedSubscript:nearby];
  v4 = v3 != 0;

  return v4;
}

- (id)synchronize:(id)synchronize withOptions:(id)options
{
  v18[1] = *MEMORY[0x277D85DE8];
  synchronizeCopy = synchronize;
  v6 = [(PCCBridgeEndpoint *)self identifierForTarget:synchronizeCopy];
  if (v6)
  {
    v7 = [(NSMutableDictionary *)self->_outgoingConnections objectForKeyedSubscript:v6];

    if (!v7)
    {
      v8 = [(NSMutableDictionary *)self->_remoteDevices objectForKeyedSubscript:v6];

      v9 = MEMORY[0x277CCA9B8];
      if (v8)
      {
        v15 = *MEMORY[0x277CCA450];
        v16 = @"No remote device found";
        v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
        v11 = v9;
        v12 = 4;
      }

      else
      {
        v17 = *MEMORY[0x277CCA450];
        v18[0] = @"No remote connection to target device";
        v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
        v11 = v9;
        v12 = 1;
      }

      v13 = [v11 errorWithDomain:@"ProxyBridgeErrorDomain" code:v12 userInfo:v10];

      goto LABEL_10;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [PCCBridgeEndpoint synchronize:withOptions:];
  }

  v13 = 0;
LABEL_10:

  return v13;
}

- (void)enterInterruptedStateFrom:(id)from
{
  v10 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  if (([(NSMutableSet *)self->_interruptedDevices containsObject:fromCopy]& 1) != 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v9 = fromCopy;
      _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%@ is already in interruped state; passing", buf, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v9 = fromCopy;
      _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%@ is entering interrupted state; disconnecting", buf, 0xCu);
    }

    [(NSMutableSet *)self->_interruptedDevices addObject:fromCopy];
    eventQueue = self->_eventQueue;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __47__PCCBridgeEndpoint_enterInterruptedStateFrom___block_invoke;
    v6[3] = &unk_2799C0038;
    v6[4] = self;
    v7 = fromCopy;
    dispatch_async(eventQueue, v6);
  }
}

void __47__PCCBridgeEndpoint_enterInterruptedStateFrom___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained handleConnection:0 from:*(a1 + 40)];
}

- (void)exitInterruptedStateFrom:(id)from
{
  v10 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  if ([(NSMutableSet *)self->_interruptedDevices containsObject:fromCopy])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v9 = fromCopy;
      _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%@ is exiting interruped state; reconnecting", buf, 0xCu);
    }

    [(NSMutableSet *)self->_interruptedDevices removeObject:fromCopy];
    eventQueue = self->_eventQueue;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __46__PCCBridgeEndpoint_exitInterruptedStateFrom___block_invoke;
    v6[3] = &unk_2799C0038;
    v6[4] = self;
    v7 = fromCopy;
    dispatch_async(eventQueue, v6);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v9 = fromCopy;
    _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%@ is not in interruped state; passing", buf, 0xCu);
  }
}

void __46__PCCBridgeEndpoint_exitInterruptedStateFrom___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained handleConnection:1 from:*(a1 + 40)];
}

- (id)send:(id)send message:(id)message error:(id *)error
{
  v30 = *MEMORY[0x277D85DE8];
  sendCopy = send;
  messageCopy = message;
  v10 = [(PCCBridgeEndpoint *)self identifierForTarget:sendCopy];
  if (v10)
  {
    v11 = [(PCCBridgeEndpoint *)self connectionForIdentifier:v10];

    if (v11)
    {
      v12 = ns2xpc();
      [PCCBridgeEndpoint addSenderToMessage:v12];
      v13 = [(NSMutableDictionary *)self->_outgoingConnections objectForKeyedSubscript:v10];
      xpc_remote_connection_send_message();

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v14 = [messageCopy objectForKeyedSubscript:@"messageType"];
        *buf = 138412290;
        v27 = v14;
        _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "sent %@", buf, 0xCu);
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v15 = [messageCopy objectForKeyedSubscript:@"messageType"];
        *buf = 138412546;
        v27 = v10;
        v28 = 2112;
        v29 = v15;
        _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "No connection to %@ on which to send message of type %@", buf, 0x16u);
      }

      if (error)
      {
        v16 = [(NSMutableDictionary *)self->_remoteDevices objectForKeyedSubscript:v10];

        v17 = MEMORY[0x277CCA9B8];
        if (v16)
        {
          v24 = *MEMORY[0x277CCA450];
          v25 = @"No remote connection to target device";
          v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
          v19 = v17;
          v20 = 1;
        }

        else
        {
          v22 = *MEMORY[0x277CCA450];
          v23 = @"No remote device found";
          v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
          v19 = v17;
          v20 = 4;
        }

        *error = [v19 errorWithDomain:@"ProxyBridgeErrorDomain" code:v20 userInfo:v18];
      }
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [PCCBridgeEndpoint synchronize:withOptions:];
  }

  return 0;
}

- (id)send:(id)send file:(id)file metadata:(id)metadata error:(id *)error
{
  v50[2] = *MEMORY[0x277D85DE8];
  sendCopy = send;
  fileCopy = file;
  metadataCopy = metadata;
  v13 = [(PCCBridgeEndpoint *)self identifierForTarget:sendCopy];
  if (!v13)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [PCCBridgeEndpoint synchronize:withOptions:];
    }

    goto LABEL_27;
  }

  v14 = [(PCCBridgeEndpoint *)self connectionForIdentifier:v13];

  if (!v14)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v46 = v13;
      _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "No connection to %@ on which to send file", buf, 0xCu);
    }

    if (error)
    {
      v17 = [(NSMutableDictionary *)self->_remoteDevices objectForKeyedSubscript:v13];

      v18 = MEMORY[0x277CCA9B8];
      if (v17)
      {
        v41 = *MEMORY[0x277CCA450];
        v42 = @"No remote connection to target device";
        v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
        v20 = v18;
        v21 = 1;
      }

      else
      {
        v39 = *MEMORY[0x277CCA450];
        v40 = @"No remote device found";
        v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
        v20 = v18;
        v21 = 4;
      }

      *error = [v20 errorWithDomain:@"ProxyBridgeErrorDomain" code:v21 userInfo:v19];
    }

LABEL_27:
    v26 = 0;
    goto LABEL_28;
  }

  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];

  if (metadataCopy)
  {
    [MEMORY[0x277CBEB38] dictionaryWithDictionary:metadataCopy];
  }

  else
  {
    [MEMORY[0x277CBEB38] dictionary];
  }
  v22 = ;
  errorCopy = error;
  v35 = metadataCopy;
  if (OSAIsRSDDisplay())
  {
    [v22 setObject:@"display" forKeyedSubscript:@"deviceType"];
  }

  v49[0] = @"messageType";
  v49[1] = @"fileMetadata";
  v50[0] = @"<file>";
  v50[1] = v22;
  v34 = v22;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:v49 count:2];
  v24 = ns2xpc();

  [fileCopy fileSystemRepresentation];
  v25 = fileCopy;
  v36 = v25;
  v26 = uUIDString;
  v37 = v26;
  v27 = v13;
  v38 = v27;
  v28 = xpc_file_transfer_create_with_path();
  if (v28)
  {
    xpc_dictionary_set_value(v24, "<file_xfer>", v28);
    [PCCBridgeEndpoint addSenderToMessage:v24];
    v29 = [(NSMutableDictionary *)self->_outgoingConnections objectForKeyedSubscript:v27];
    xpc_remote_connection_send_message();

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v46 = v25;
      v47 = 2114;
      v48 = v26;
      _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "sent %{public}@, tracking: %{public}@", buf, 0x16u);
    }

    metadataCopy = v35;
  }

  else
  {

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v46 = v25;
      _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "unable to create xpc file xfer object for %{public}@", buf, 0xCu);
    }

    metadataCopy = v35;
    if (errorCopy)
    {
      v30 = MEMORY[0x277CCA9B8];
      v43 = *MEMORY[0x277CCA450];
      v44 = @"Unable to transfer file";
      v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
      *errorCopy = [v30 errorWithDomain:@"ProxyBridgeErrorDomain" code:3 userInfo:v31];
    }

    v26 = 0;
  }

LABEL_28:

  return v26;
}

void __46__PCCBridgeEndpoint_send_file_metadata_error___block_invoke(void *a1, int a2)
{
  v19 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v4 = a1[4];
      *buf = 138412546;
      v16 = v4;
      v17 = 2080;
      v18 = strerror(a2);
      _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Failed to transfer log file at %@, error: %s", buf, 0x16u);
    }

    v5 = MEMORY[0x277CCA9B8];
    v13 = *MEMORY[0x277CCA450];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{strerror(a2), v13}];
    v14 = v6;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    v8 = [v5 errorWithDomain:@"ProxyBridgeErrorDomain" code:2 userInfo:v7];

    WeakRetained = objc_loadWeakRetained((a1[5] + 8));
    [WeakRetained ack:a1[6] result:0 error:v8];
  }

  else
  {
    v10 = objc_loadWeakRetained((a1[5] + 8));
    [v10 ack:a1[6] result:1 error:0];

    v11 = a1[5];
    v12 = a1[7];

    [v11 exitInterruptedStateFrom:v12];
  }
}

+ (BOOL)isSupportedRemoteDeviceType:(unsigned int)type
{
  v3 = *&type;
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  if (OSAIsRSDHost())
  {
    [v4 addObject:&unk_286EB2238];
    v5 = &unk_286EB2250;
LABEL_5:
    [v4 addObject:v5];
    goto LABEL_6;
  }

  if (OSAIsRSDDevice())
  {
    v5 = &unk_286EB2268;
    goto LABEL_5;
  }

LABEL_6:
  if ((OSAIsConfiguredRSDHost() & 1) != 0 || OSAIsConfiguredRSDDevice())
  {
    [v4 addObject:&unk_286EB2280];
    [v4 addObject:&unk_286EB2298];
  }

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v3];
  v7 = [v4 containsObject:v6];

  return v7;
}

+ (id)remoteDeviceForIdentifier:(id)identifier
{
  v7[2] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if ([identifierCopy isEqualToString:@"Bridge"])
  {
    v4 = remote_device_copy_unique_of_type();
  }

  else
  {
    v7[0] = 0;
    v7[1] = 0;
    v5 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:identifierCopy];
    [v5 getUUIDBytes:v7];
    v4 = remote_device_copy_device_with_uuid();
  }

  return v4;
}

+ (id)identifierForRemoteDevice:(id)device
{
  v13 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  if (!deviceCopy)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *uu = 0;
      v5 = MEMORY[0x277D86220];
      v6 = "Remote device was NULL";
      v7 = uu;
LABEL_9:
      _os_log_impl(&dword_25D12D000, v5, OS_LOG_TYPE_DEFAULT, v6, v7, 2u);
    }

LABEL_10:
    uUIDString = 0;
    goto LABEL_11;
  }

  if (remote_device_get_type() == 3)
  {
    uUIDString = @"Bridge";
    goto LABEL_11;
  }

  *uu = 0;
  v12 = 0;
  remote_device_copy_uuid();
  if (uuid_is_null(uu))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v10 = 0;
      v5 = MEMORY[0x277D86220];
      v6 = "Got a NULL UUID; remote device may not be connected.";
      v7 = &v10;
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  v9 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:uu];
  uUIDString = [v9 UUIDString];

LABEL_11:

  return uUIDString;
}

+ (id)UDIDForRemoteDevice:(id)device
{
  deviceCopy = device;
  if (deviceCopy)
  {
    v4 = remote_device_copy_property();
    v5 = v4;
    if (v4)
    {
      string_ptr = xpc_string_get_string_ptr(v4);
      if (string_ptr)
      {
        v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:string_ptr];
LABEL_14:

        goto LABEL_15;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v8 = MEMORY[0x277D86220];
        v9 = "UDID string was not available in property";
        v10 = buf;
        goto LABEL_12;
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v13 = 0;
      v8 = MEMORY[0x277D86220];
      v9 = "Failed to copy UDID property from remote device.";
      v10 = &v13;
LABEL_12:
      _os_log_impl(&dword_25D12D000, v8, OS_LOG_TYPE_DEFAULT, v9, v10, 2u);
    }

    v7 = 0;
    goto LABEL_14;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Failed to fetch UDID: remote device was NULL.", v12, 2u);
  }

  v7 = 0;
LABEL_15:

  return v7;
}

- (id)identifierForTarget:(id)target
{
  targetCopy = target;
  v5 = targetCopy;
  if (targetCopy)
  {
    v6 = targetCopy;
    goto LABEL_22;
  }

  if (OSAIsRSDHost())
  {
    allKeys = remote_device_copy_unique_of_type();
    if (!allKeys)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [PCCBridgeEndpoint identifierForTarget:];
      }

      v6 = 0;
      goto LABEL_18;
    }

    firstObject = [PCCBridgeEndpoint identifierForRemoteDevice:allKeys];
LABEL_17:
    v6 = firstObject;
LABEL_18:

    goto LABEL_22;
  }

  if (OSAIsRSDDevice())
  {
    v9 = [(NSMutableDictionary *)self->_outgoingConnections count];
    if (v9 == 1)
    {
      allKeys = [(NSMutableDictionary *)self->_outgoingConnections allKeys];
      firstObject = [allKeys firstObject];
      goto LABEL_17;
    }

    if (v9)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [PCCBridgeEndpoint identifierForTarget:];
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [PCCBridgeEndpoint identifierForTarget:];
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [PCCBridgeEndpoint identifierForTarget:];
  }

  v6 = 0;
LABEL_22:

  return v6;
}

- (void)setupOutgoingConnection:(id)connection
{
  v27 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  v5 = [PCCBridgeEndpoint identifierForRemoteDevice:connectionCopy];
  v6 = [PCCBridgeEndpoint UDIDForRemoteDevice:connectionCopy];
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v5)
    {
      if (v9)
      {
        [PCCBridgeEndpoint setupOutgoingConnection:];
      }
    }

    else if (v9)
    {
      [PCCBridgeEndpoint setupOutgoingConnection:];
    }
  }

  else
  {
    v10 = [(NSMutableDictionary *)self->_outgoingConnections objectForKeyedSubscript:v5];

    if (v10)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v26 = v5;
        _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Outgoing connection to %@ is already valid", buf, 0xCu);
      }
    }

    else
    {
      if (OSAIsRSDHost())
      {
        v11 = "com.apple.osanalytics.logTransfer";
      }

      else
      {
        v11 = "com.apple.osanalytics.logRelay";
      }

      v12 = remote_device_copy_service();
      if (v12)
      {
        v13 = xpc_remote_connection_create_with_remote_service();
        if (v13)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v26 = v5;
            _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Registering connection to remote device: %@", buf, 0xCu);
          }

          [(NSMutableDictionary *)self->_outgoingConnections setObject:v13 forKeyedSubscript:v5];
          [(NSMutableDictionary *)self->_remoteDevices setObject:v7 forKeyedSubscript:v5];
          v18 = MEMORY[0x277D85DD0];
          v19 = 3221225472;
          v20 = __45__PCCBridgeEndpoint_setupOutgoingConnection___block_invoke;
          v21 = &unk_2799C00B0;
          v24 = v11;
          selfCopy = self;
          v14 = v5;
          v23 = v14;
          xpc_remote_connection_set_event_handler();
          xpc_remote_connection_activate();
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "remote connection active", buf, 2u);
          }

          eventQueue = self->_eventQueue;
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __45__PCCBridgeEndpoint_setupOutgoingConnection___block_invoke_96;
          block[3] = &unk_2799C0038;
          block[4] = self;
          v17 = v14;
          dispatch_async(eventQueue, block);
        }

        else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [PCCBridgeEndpoint setupOutgoingConnection:];
        }
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [PCCBridgeEndpoint setupOutgoingConnection:];
      }
    }
  }
}

void __45__PCCBridgeEndpoint_setupOutgoingConnection___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (v3 != MEMORY[0x277D863F0])
  {
    if (v3 == MEMORY[0x277D863F8])
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_16;
      }

      v8 = *(a1 + 48);
      v14 = 136315138;
      v15 = v8;
      v9 = MEMORY[0x277D86220];
      v10 = "Got XPC_ERROR_CONNECTION_INVALID from %s\n";
      v11 = 12;
    }

    else
    {
      if (MEMORY[0x25F892B00](v3) != MEMORY[0x277D86480])
      {
        v5 = MEMORY[0x25F892A40](v4);
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v6 = *(a1 + 48);
          v14 = 136315394;
          v15 = v6;
          v16 = 2080;
          v17 = v5;
          _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Got unexpected xpc message from %s: %s\n", &v14, 0x16u);
        }

        if (v5)
        {
          free(v5);
        }

        goto LABEL_16;
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_16;
      }

      v12 = *(a1 + 48);
      string = xpc_dictionary_get_string(v4, *MEMORY[0x277D86400]);
      v14 = 136315394;
      v15 = v12;
      v16 = 2080;
      v17 = string;
      v9 = MEMORY[0x277D86220];
      v10 = "Got xpc error message from %s: %s\n";
      v11 = 22;
    }

    _os_log_impl(&dword_25D12D000, v9, OS_LOG_TYPE_DEFAULT, v10, &v14, v11);
    goto LABEL_16;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 48);
    v14 = 136315138;
    v15 = v7;
    _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Got XPC_ERROR_CONNECTION_INTERRUPTED from %s\n", &v14, 0xCu);
  }

  [*(a1 + 32) enterInterruptedStateFrom:*(a1 + 40)];
LABEL_16:
}

void __45__PCCBridgeEndpoint_setupOutgoingConnection___block_invoke_96(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained handleConnection:1 from:*(a1 + 40)];
}

- (id)connectionForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__0;
  initializationQueue = self->_initializationQueue;
  v17 = __Block_byref_object_dispose__0;
  v18 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__PCCBridgeEndpoint_connectionForIdentifier___block_invoke;
  block[3] = &unk_2799C00D8;
  v10 = identifierCopy;
  selfCopy = self;
  v12 = &v13;
  v6 = identifierCopy;
  dispatch_sync(initializationQueue, block);
  v7 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v7;
}

void __45__PCCBridgeEndpoint_connectionForIdentifier___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [*(*(a1 + 40) + 72) objectForKeyedSubscript:?];

    if (!v2)
    {
      v3 = [PCCBridgeEndpoint remoteDeviceForIdentifier:*(a1 + 32)];
      if (v3)
      {
        [*(a1 + 40) setupOutgoingConnection:v3];
      }
    }

    *(*(*(a1 + 48) + 8) + 40) = [*(*(a1 + 40) + 72) objectForKeyedSubscript:*(a1 + 32)];

    MEMORY[0x2821F96F8]();
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __45__PCCBridgeEndpoint_connectionForIdentifier___block_invoke_cold_1();
  }
}

+ (void)addSenderToMessage:(id)message
{
  xdict = message;
  v3 = MGCopyAnswer();
  uTF8String = [v3 UTF8String];

  xpc_dictionary_set_string(xdict, "kOSASender", uTF8String);
}

- (void)stashCrashReporterKeyForIdentifier:(id)identifier
{
  v16 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v5 = [(NSMutableDictionary *)self->_remoteCRKeys objectForKeyedSubscript:identifierCopy];

  if (!v5)
  {
    v6 = [PCCBridgeEndpoint remoteDeviceForIdentifier:identifierCopy];
    if (v6 && remote_device_get_type() == 3)
    {
      [(NSMutableDictionary *)self->_remoteCRKeys setObject:@"Bridge" forKeyedSubscript:identifierCopy];
    }

    else
    {
      v7 = [(NSMutableDictionary *)self->_outgoingConnections objectForKeyedSubscript:identifierCopy];

      if (v7)
      {
        v8 = dispatch_semaphore_create(0);
        empty = xpc_dictionary_create_empty();
        xpc_dictionary_set_string(empty, [@"messageType" UTF8String], "kOSAFetchCrashReporterKey");
        [PCCBridgeEndpoint addSenderToMessage:empty];
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v15 = identifierCopy;
          _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Sending request to stash crash reporter key for %@", buf, 0xCu);
        }

        v10 = [(NSMutableDictionary *)self->_outgoingConnections objectForKeyedSubscript:identifierCopy];
        v13 = identifierCopy;
        v11 = v8;
        xpc_remote_connection_send_message_with_reply();

        v12 = dispatch_time(0, 30000000000);
        if (dispatch_semaphore_wait(v11, v12) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
        {
          [PCCBridgeEndpoint stashCrashReporterKeyForIdentifier:];
        }
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [PCCBridgeEndpoint stashCrashReporterKeyForIdentifier:];
      }
    }
  }
}

intptr_t __56__PCCBridgeEndpoint_stashCrashReporterKeyForIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (MEMORY[0x25F892B00]() == MEMORY[0x277D86468])
  {
    string = xpc_dictionary_get_string(v3, "crashReporterKey");

    if (string)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:string];
      [*(*(a1 + 32) + 64) setObject:v6 forKeyedSubscript:*(a1 + 40)];
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __56__PCCBridgeEndpoint_stashCrashReporterKeyForIdentifier___block_invoke_cold_2();
    }
  }

  else
  {
    v4 = MEMORY[0x25F892A40](v3);

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __56__PCCBridgeEndpoint_stashCrashReporterKeyForIdentifier___block_invoke_cold_1();
      if (!v4)
      {
        return dispatch_semaphore_signal(*(a1 + 48));
      }

      goto LABEL_4;
    }

    if (v4)
    {
LABEL_4:
      free(v4);
    }
  }

  return dispatch_semaphore_signal(*(a1 + 48));
}

void __47__PCCBridgeEndpoint_setupIncomingEventListener__block_invoke_13_cold_1()
{
  v1 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "received message '%@'", v0, 0xCu);
}

void __47__PCCBridgeEndpoint_setupIncomingEventListener__block_invoke_13_cold_2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __47__PCCBridgeEndpoint_setupIncomingEventListener__block_invoke_29_cold_1(void *a1)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = [a1 path];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "received file '%@'", v2, 0xCu);
}

void __47__PCCBridgeEndpoint_setupIncomingEventListener__block_invoke_29_cold_2()
{
  v1 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_fault_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "Unexpected metadata from RemoteXPC: '%@'\nOriginal xpc message %s", v0, 0x16u);
}

- (void)synchronize:withOptions:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)setupOutgoingConnection:.cold.3()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)setupOutgoingConnection:.cold.4()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)stashCrashReporterKeyForIdentifier:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __56__PCCBridgeEndpoint_stashCrashReporterKeyForIdentifier___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

@end