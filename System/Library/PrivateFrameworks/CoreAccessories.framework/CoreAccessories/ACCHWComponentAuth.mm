@interface ACCHWComponentAuth
+ (id)sharedManager;
- (ACCHWComponentAuth)init;
- (id)_init;
- (void)_init;
- (void)authenticateBatteryWithChallenge:(id)challenge completionHandler:(id)handler;
- (void)authenticateLASWithChallenge:(id)challenge completionHandler:(id)handler updateRegistry:(BOOL)registry;
- (void)authenticateTouchControllerWithChallenge:(id)challenge completionHandler:(id)handler updateRegistry:(BOOL)registry;
- (void)authenticateVeridianWithChallenge:(id)challenge completionHandler:(id)handler;
- (void)authenticateVeridianWithChallenge:(id)challenge completionHandler:(id)handler updateRegistry:(BOOL)registry updateUIProperty:(BOOL)property logToAnalytics:(BOOL)analytics;
- (void)signVeridianChallenge:(id)challenge completionHandler:(id)handler;
- (void)verifyBatteryMatch:(id)match completionHandler:(id)handler;
@end

@implementation ACCHWComponentAuth

- (ACCHWComponentAuth)init
{
  v4 = MEMORY[0x277CBEAD8];
  v5 = *MEMORY[0x277CBE658];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = NSStringFromSelector(sel_sharedManager);
  v9 = NSStringFromSelector(a2);
  [v4 raise:v5 format:{@"Use +[%@ %@] instead of -%@.", v7, v8, v9}];

  return 0;
}

- (id)_init
{
  init_logging();
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 4;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(ACCHWComponentAuth *)self _init];
  }

  v14.receiver = self;
  v14.super_class = ACCHWComponentAuth;
  v6 = [(ACCHWComponentAuth *)&v14 init];
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x277CCAE80]) initWithServiceName:@"com.apple.ACCHWComponentAuthService"];
    xpcConnection = v6->_xpcConnection;
    v6->_xpcConnection = v7;

    v9 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2835376E0];
    [(NSXPCConnection *)v6->_xpcConnection setRemoteObjectInterface:v9];

    [(NSXPCConnection *)v6->_xpcConnection resume];
    if (gLogObjects && gNumLogObjects >= 4)
    {
      v10 = *(gLogObjects + 24);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v10 = MEMORY[0x277D86220];
      v11 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_221CB0000, v10, OS_LOG_TYPE_DEFAULT, "resumed XPC connection", v13, 2u);
    }
  }

  return v6;
}

- (void)authenticateBatteryWithChallenge:(id)challenge completionHandler:(id)handler
{
  v20 = *MEMORY[0x277D85DE8];
  challengeCopy = challenge;
  handlerCopy = handler;
  if (gLogObjects)
  {
    v8 = gNumLogObjects < 4;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v10 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  else
  {
    v10 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = "YES";
    if (!handlerCopy)
    {
      v11 = "NO";
    }

    *buf = 136315138;
    v19 = v11;
    _os_log_impl(&dword_221CB0000, v10, OS_LOG_TYPE_DEFAULT, "Authenticating battery... (completionHandler: %s)", buf, 0xCu);
  }

  v12 = dispatch_get_global_queue(25, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__ACCHWComponentAuth_authenticateBatteryWithChallenge_completionHandler___block_invoke;
  block[3] = &unk_278487778;
  v16 = challengeCopy;
  v17 = handlerCopy;
  block[4] = self;
  v13 = challengeCopy;
  v14 = handlerCopy;
  dispatch_sync(v12, block);
}

void __73__ACCHWComponentAuth_authenticateBatteryWithChallenge_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) xpcConnection];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __73__ACCHWComponentAuth_authenticateBatteryWithChallenge_completionHandler___block_invoke_2;
  v7[3] = &unk_278486CA8;
  v8 = *(a1 + 48);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v7];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __73__ACCHWComponentAuth_authenticateBatteryWithChallenge_completionHandler___block_invoke_25;
  v5[3] = &unk_278487750;
  v4 = *(a1 + 40);
  v6 = *(a1 + 48);
  [v3 authenticateBatteryWithChallenge:v4 completionHandler:v5];
}

void __73__ACCHWComponentAuth_authenticateBatteryWithChallenge_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 4;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v6 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  else
  {
    v6 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
  {
    __54__ACCCarPlay_isCarPlayPairedWithCertSerial_withReply___block_invoke_cold_2();
  }

  (*(*(a1 + 32) + 16))();
}

void __73__ACCHWComponentAuth_authenticateBatteryWithChallenge_completionHandler___block_invoke_25(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v24 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  if (gLogObjects)
  {
    v13 = gNumLogObjects < 4;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v15 = MEMORY[0x277D86220];
    v14 = MEMORY[0x277D86220];
  }

  else
  {
    v15 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v19[0] = 67109632;
    v19[1] = a2;
    v20 = 1024;
    v21 = a5;
    v22 = 1024;
    v23 = a6;
    _os_log_impl(&dword_221CB0000, v15, OS_LOG_TYPE_INFO, "battery authPassed = %d, fdrValidationStatus %d, authError %d", v19, 0x14u);
  }

  v16 = *(a1 + 32);
  if (v16)
  {
    (*(v16 + 16))(v16, a2, v11, v12, a5, a6);
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 4)
    {
      v17 = *(gLogObjects + 24);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v17 = MEMORY[0x277D86220];
      v18 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      __73__ACCHWComponentAuth_authenticateBatteryWithChallenge_completionHandler___block_invoke_25_cold_3();
    }
  }
}

- (void)authenticateTouchControllerWithChallenge:(id)challenge completionHandler:(id)handler updateRegistry:(BOOL)registry
{
  v23 = *MEMORY[0x277D85DE8];
  challengeCopy = challenge;
  handlerCopy = handler;
  if (gLogObjects)
  {
    v10 = gNumLogObjects < 4;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v12 = MEMORY[0x277D86220];
    v11 = MEMORY[0x277D86220];
  }

  else
  {
    v12 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = "YES";
    if (!handlerCopy)
    {
      v13 = "NO";
    }

    *buf = 136315138;
    v22 = v13;
    _os_log_impl(&dword_221CB0000, v12, OS_LOG_TYPE_DEFAULT, "Authenticating touch controller... (completionHandler: %s)", buf, 0xCu);
  }

  v14 = dispatch_get_global_queue(25, 0);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __96__ACCHWComponentAuth_authenticateTouchControllerWithChallenge_completionHandler_updateRegistry___block_invoke;
  v17[3] = &unk_2784877A0;
  v18 = challengeCopy;
  v19 = handlerCopy;
  v17[4] = self;
  registryCopy = registry;
  v15 = challengeCopy;
  v16 = handlerCopy;
  dispatch_sync(v14, v17);
}

void __96__ACCHWComponentAuth_authenticateTouchControllerWithChallenge_completionHandler_updateRegistry___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) xpcConnection];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __96__ACCHWComponentAuth_authenticateTouchControllerWithChallenge_completionHandler_updateRegistry___block_invoke_2;
  v7[3] = &unk_278486CA8;
  v8 = *(a1 + 48);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v7];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __96__ACCHWComponentAuth_authenticateTouchControllerWithChallenge_completionHandler_updateRegistry___block_invoke_28;
  v5[3] = &unk_278487750;
  v4 = *(a1 + 40);
  v6 = *(a1 + 48);
  [v3 authenticateTouchControllerWithChallenge:v4 completionHandler:v5 updateRegistry:*(a1 + 56)];
}

void __96__ACCHWComponentAuth_authenticateTouchControllerWithChallenge_completionHandler_updateRegistry___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 4;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v6 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  else
  {
    v6 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
  {
    __54__ACCCarPlay_isCarPlayPairedWithCertSerial_withReply___block_invoke_cold_2();
  }

  (*(*(a1 + 32) + 16))();
}

void __96__ACCHWComponentAuth_authenticateTouchControllerWithChallenge_completionHandler_updateRegistry___block_invoke_28(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v24 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  if (gLogObjects)
  {
    v13 = gNumLogObjects < 4;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v15 = MEMORY[0x277D86220];
    v14 = MEMORY[0x277D86220];
  }

  else
  {
    v15 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v19[0] = 67109632;
    v19[1] = a2;
    v20 = 1024;
    v21 = a5;
    v22 = 1024;
    v23 = a6;
    _os_log_impl(&dword_221CB0000, v15, OS_LOG_TYPE_INFO, "touch authPassed = %d, fdrValidationStatus %d, authError %d", v19, 0x14u);
  }

  v16 = *(a1 + 32);
  if (v16)
  {
    (*(v16 + 16))(v16, a2, v11, v12, a5, a6);
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 4)
    {
      v17 = *(gLogObjects + 24);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v17 = MEMORY[0x277D86220];
      v18 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      __73__ACCHWComponentAuth_authenticateBatteryWithChallenge_completionHandler___block_invoke_25_cold_3();
    }
  }
}

- (void)authenticateLASWithChallenge:(id)challenge completionHandler:(id)handler updateRegistry:(BOOL)registry
{
  v23 = *MEMORY[0x277D85DE8];
  challengeCopy = challenge;
  handlerCopy = handler;
  if (gLogObjects)
  {
    v10 = gNumLogObjects < 4;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v12 = MEMORY[0x277D86220];
    v11 = MEMORY[0x277D86220];
  }

  else
  {
    v12 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = "YES";
    if (!handlerCopy)
    {
      v13 = "NO";
    }

    *buf = 136315138;
    v22 = v13;
    _os_log_impl(&dword_221CB0000, v12, OS_LOG_TYPE_DEFAULT, "Authenticating LAS... (completionHandler: %s)", buf, 0xCu);
  }

  v14 = dispatch_get_global_queue(25, 0);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __84__ACCHWComponentAuth_authenticateLASWithChallenge_completionHandler_updateRegistry___block_invoke;
  v17[3] = &unk_2784877A0;
  v18 = challengeCopy;
  v19 = handlerCopy;
  v17[4] = self;
  registryCopy = registry;
  v15 = challengeCopy;
  v16 = handlerCopy;
  dispatch_sync(v14, v17);
}

void __84__ACCHWComponentAuth_authenticateLASWithChallenge_completionHandler_updateRegistry___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) xpcConnection];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __84__ACCHWComponentAuth_authenticateLASWithChallenge_completionHandler_updateRegistry___block_invoke_2;
  v7[3] = &unk_278486CA8;
  v8 = *(a1 + 48);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v7];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __84__ACCHWComponentAuth_authenticateLASWithChallenge_completionHandler_updateRegistry___block_invoke_29;
  v5[3] = &unk_278487750;
  v4 = *(a1 + 40);
  v6 = *(a1 + 48);
  [v3 authenticateLASWithChallenge:v4 completionHandler:v5 updateRegistry:*(a1 + 56)];
}

void __84__ACCHWComponentAuth_authenticateLASWithChallenge_completionHandler_updateRegistry___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 4;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v6 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  else
  {
    v6 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
  {
    __54__ACCCarPlay_isCarPlayPairedWithCertSerial_withReply___block_invoke_cold_2();
  }

  (*(*(a1 + 32) + 16))();
}

void __84__ACCHWComponentAuth_authenticateLASWithChallenge_completionHandler_updateRegistry___block_invoke_29(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v24 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  if (gLogObjects)
  {
    v13 = gNumLogObjects < 4;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v15 = MEMORY[0x277D86220];
    v14 = MEMORY[0x277D86220];
  }

  else
  {
    v15 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v19[0] = 67109632;
    v19[1] = a2;
    v20 = 1024;
    v21 = a5;
    v22 = 1024;
    v23 = a6;
    _os_log_impl(&dword_221CB0000, v15, OS_LOG_TYPE_INFO, "LAS authPassed = %d, fdrValidationStatus %d, authError %d", v19, 0x14u);
  }

  v16 = *(a1 + 32);
  if (v16)
  {
    (*(v16 + 16))(v16, a2, v11, v12, a5, a6);
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 4)
    {
      v17 = *(gLogObjects + 24);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v17 = MEMORY[0x277D86220];
      v18 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      __73__ACCHWComponentAuth_authenticateBatteryWithChallenge_completionHandler___block_invoke_25_cold_3();
    }
  }
}

- (void)authenticateVeridianWithChallenge:(id)challenge completionHandler:(id)handler
{
  v20 = *MEMORY[0x277D85DE8];
  challengeCopy = challenge;
  handlerCopy = handler;
  if (gLogObjects)
  {
    v8 = gNumLogObjects < 4;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v10 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  else
  {
    v10 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = "YES";
    if (!handlerCopy)
    {
      v11 = "NO";
    }

    *buf = 136315138;
    v19 = v11;
    _os_log_impl(&dword_221CB0000, v10, OS_LOG_TYPE_DEFAULT, "Authenticating battery... (completionHandler: %s)", buf, 0xCu);
  }

  v12 = dispatch_get_global_queue(25, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__ACCHWComponentAuth_authenticateVeridianWithChallenge_completionHandler___block_invoke;
  block[3] = &unk_278487778;
  v16 = challengeCopy;
  v17 = handlerCopy;
  block[4] = self;
  v13 = challengeCopy;
  v14 = handlerCopy;
  dispatch_sync(v12, block);
}

void __74__ACCHWComponentAuth_authenticateVeridianWithChallenge_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) xpcConnection];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __74__ACCHWComponentAuth_authenticateVeridianWithChallenge_completionHandler___block_invoke_2;
  v7[3] = &unk_278486CA8;
  v8 = *(a1 + 48);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v7];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __74__ACCHWComponentAuth_authenticateVeridianWithChallenge_completionHandler___block_invoke_30;
  v5[3] = &unk_278487750;
  v4 = *(a1 + 40);
  v6 = *(a1 + 48);
  [v3 authenticateVeridianWithChallenge:v4 completionHandler:v5];
}

void __74__ACCHWComponentAuth_authenticateVeridianWithChallenge_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 4;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v6 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  else
  {
    v6 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
  {
    __54__ACCCarPlay_isCarPlayPairedWithCertSerial_withReply___block_invoke_cold_2();
  }

  (*(*(a1 + 32) + 16))();
}

void __74__ACCHWComponentAuth_authenticateVeridianWithChallenge_completionHandler___block_invoke_30(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v24 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  if (gLogObjects)
  {
    v13 = gNumLogObjects < 4;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v15 = MEMORY[0x277D86220];
    v14 = MEMORY[0x277D86220];
  }

  else
  {
    v15 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v19[0] = 67109632;
    v19[1] = a2;
    v20 = 1024;
    v21 = a5;
    v22 = 1024;
    v23 = a6;
    _os_log_impl(&dword_221CB0000, v15, OS_LOG_TYPE_INFO, "battery authPassed = %d, fdrValidationStatus %d, authError %d", v19, 0x14u);
  }

  v16 = *(a1 + 32);
  if (v16)
  {
    (*(v16 + 16))(v16, a2, v11, v12, a5, a6);
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 4)
    {
      v17 = *(gLogObjects + 24);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v17 = MEMORY[0x277D86220];
      v18 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      __73__ACCHWComponentAuth_authenticateBatteryWithChallenge_completionHandler___block_invoke_25_cold_3();
    }
  }
}

- (void)authenticateVeridianWithChallenge:(id)challenge completionHandler:(id)handler updateRegistry:(BOOL)registry updateUIProperty:(BOOL)property logToAnalytics:(BOOL)analytics
{
  v29 = *MEMORY[0x277D85DE8];
  challengeCopy = challenge;
  handlerCopy = handler;
  if (gLogObjects)
  {
    v14 = gNumLogObjects < 4;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v16 = MEMORY[0x277D86220];
    v15 = MEMORY[0x277D86220];
  }

  else
  {
    v16 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = "YES";
    if (!handlerCopy)
    {
      v17 = "NO";
    }

    *buf = 136315138;
    v28 = v17;
    _os_log_impl(&dword_221CB0000, v16, OS_LOG_TYPE_DEFAULT, "Authenticating battery... (completionHandler: %s)", buf, 0xCu);
  }

  v18 = dispatch_get_global_queue(25, 0);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __121__ACCHWComponentAuth_authenticateVeridianWithChallenge_completionHandler_updateRegistry_updateUIProperty_logToAnalytics___block_invoke;
  v21[3] = &unk_2784877C8;
  v22 = challengeCopy;
  v23 = handlerCopy;
  v21[4] = self;
  registryCopy = registry;
  propertyCopy = property;
  analyticsCopy = analytics;
  v19 = challengeCopy;
  v20 = handlerCopy;
  dispatch_sync(v18, v21);
}

void __121__ACCHWComponentAuth_authenticateVeridianWithChallenge_completionHandler_updateRegistry_updateUIProperty_logToAnalytics___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) xpcConnection];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __121__ACCHWComponentAuth_authenticateVeridianWithChallenge_completionHandler_updateRegistry_updateUIProperty_logToAnalytics___block_invoke_2;
  v7[3] = &unk_278486CA8;
  v8 = *(a1 + 48);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v7];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __121__ACCHWComponentAuth_authenticateVeridianWithChallenge_completionHandler_updateRegistry_updateUIProperty_logToAnalytics___block_invoke_31;
  v5[3] = &unk_278487750;
  v4 = *(a1 + 40);
  v6 = *(a1 + 48);
  [v3 authenticateVeridianWithChallenge:v4 completionHandler:v5 updateRegistry:*(a1 + 56) updateUIProperty:*(a1 + 57) logToAnalytics:*(a1 + 58)];
}

void __121__ACCHWComponentAuth_authenticateVeridianWithChallenge_completionHandler_updateRegistry_updateUIProperty_logToAnalytics___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 4;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v6 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  else
  {
    v6 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
  {
    __54__ACCCarPlay_isCarPlayPairedWithCertSerial_withReply___block_invoke_cold_2();
  }

  (*(*(a1 + 32) + 16))();
}

void __121__ACCHWComponentAuth_authenticateVeridianWithChallenge_completionHandler_updateRegistry_updateUIProperty_logToAnalytics___block_invoke_31(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v24 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  if (gLogObjects)
  {
    v13 = gNumLogObjects < 4;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v15 = MEMORY[0x277D86220];
    v14 = MEMORY[0x277D86220];
  }

  else
  {
    v15 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v19[0] = 67109632;
    v19[1] = a2;
    v20 = 1024;
    v21 = a5;
    v22 = 1024;
    v23 = a6;
    _os_log_impl(&dword_221CB0000, v15, OS_LOG_TYPE_INFO, "battery authPassed = %d, fdrValidationStatus %d, authError %d", v19, 0x14u);
  }

  v16 = *(a1 + 32);
  if (v16)
  {
    (*(v16 + 16))(v16, a2, v11, v12, a5, a6);
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 4)
    {
      v17 = *(gLogObjects + 24);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v17 = MEMORY[0x277D86220];
      v18 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      __73__ACCHWComponentAuth_authenticateBatteryWithChallenge_completionHandler___block_invoke_25_cold_3();
    }
  }
}

- (void)signVeridianChallenge:(id)challenge completionHandler:(id)handler
{
  v20 = *MEMORY[0x277D85DE8];
  challengeCopy = challenge;
  handlerCopy = handler;
  if (gLogObjects)
  {
    v8 = gNumLogObjects < 4;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v10 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  else
  {
    v10 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = "YES";
    if (!handlerCopy)
    {
      v11 = "NO";
    }

    *buf = 136315138;
    v19 = v11;
    _os_log_impl(&dword_221CB0000, v10, OS_LOG_TYPE_DEFAULT, "Signing battery challenge... (completionHandler: %s)", buf, 0xCu);
  }

  v12 = dispatch_get_global_queue(25, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__ACCHWComponentAuth_signVeridianChallenge_completionHandler___block_invoke;
  block[3] = &unk_278487778;
  v16 = challengeCopy;
  v17 = handlerCopy;
  block[4] = self;
  v13 = challengeCopy;
  v14 = handlerCopy;
  dispatch_sync(v12, block);
}

void __62__ACCHWComponentAuth_signVeridianChallenge_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) xpcConnection];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__ACCHWComponentAuth_signVeridianChallenge_completionHandler___block_invoke_2;
  v7[3] = &unk_278486CA8;
  v8 = *(a1 + 48);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v7];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __62__ACCHWComponentAuth_signVeridianChallenge_completionHandler___block_invoke_32;
  v5[3] = &unk_2784877F0;
  v4 = *(a1 + 40);
  v6 = *(a1 + 48);
  [v3 signVeridianChallenge:v4 completionHandler:v5];
}

void __62__ACCHWComponentAuth_signVeridianChallenge_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 4;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v6 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  else
  {
    v6 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
  {
    __54__ACCCarPlay_isCarPlayPairedWithCertSerial_withReply___block_invoke_cold_2();
  }

  (*(*(a1 + 32) + 16))();
}

void __62__ACCHWComponentAuth_signVeridianChallenge_completionHandler___block_invoke_32(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  if (gLogObjects)
  {
    v9 = gNumLogObjects < 4;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v11 = MEMORY[0x277D86220];
    v10 = MEMORY[0x277D86220];
  }

  else
  {
    v11 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v15[0] = 67109120;
    v15[1] = a4;
    _os_log_impl(&dword_221CB0000, v11, OS_LOG_TYPE_INFO, "signed battery challenge authError %d", v15, 8u);
  }

  v12 = *(a1 + 32);
  if (v12)
  {
    (*(v12 + 16))(v12, v7, v8, a4);
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 4)
    {
      v13 = *(gLogObjects + 24);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v13 = MEMORY[0x277D86220];
      v14 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __73__ACCHWComponentAuth_authenticateBatteryWithChallenge_completionHandler___block_invoke_25_cold_3();
    }
  }
}

- (void)verifyBatteryMatch:(id)match completionHandler:(id)handler
{
  v20 = *MEMORY[0x277D85DE8];
  matchCopy = match;
  handlerCopy = handler;
  if (gLogObjects)
  {
    v8 = gNumLogObjects < 4;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v10 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  else
  {
    v10 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = "YES";
    if (!handlerCopy)
    {
      v11 = "NO";
    }

    *buf = 136315138;
    v19 = v11;
    _os_log_impl(&dword_221CB0000, v10, OS_LOG_TYPE_DEFAULT, "Verifying battery match... (completionHandler: %s)", buf, 0xCu);
  }

  v12 = dispatch_get_global_queue(25, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__ACCHWComponentAuth_verifyBatteryMatch_completionHandler___block_invoke;
  block[3] = &unk_278487778;
  v16 = matchCopy;
  v17 = handlerCopy;
  block[4] = self;
  v13 = matchCopy;
  v14 = handlerCopy;
  dispatch_sync(v12, block);
}

void __59__ACCHWComponentAuth_verifyBatteryMatch_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) xpcConnection];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__ACCHWComponentAuth_verifyBatteryMatch_completionHandler___block_invoke_2;
  v7[3] = &unk_278486CA8;
  v8 = *(a1 + 48);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v7];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __59__ACCHWComponentAuth_verifyBatteryMatch_completionHandler___block_invoke_34;
  v5[3] = &unk_278487818;
  v4 = *(a1 + 40);
  v6 = *(a1 + 48);
  [v3 verifyBatteryMatch:v4 completionHandler:v5];
}

void __59__ACCHWComponentAuth_verifyBatteryMatch_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 4;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v6 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  else
  {
    v6 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
  {
    __54__ACCCarPlay_isCarPlayPairedWithCertSerial_withReply___block_invoke_cold_2();
  }

  (*(*(a1 + 32) + 16))();
}

void __59__ACCHWComponentAuth_verifyBatteryMatch_completionHandler___block_invoke_34(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 4;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v6 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  else
  {
    v6 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v10[0] = 67109120;
    v10[1] = a2;
    _os_log_impl(&dword_221CB0000, v6, OS_LOG_TYPE_INFO, "battery match verification authError %d", v10, 8u);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, a2);
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 4)
    {
      v8 = *(gLogObjects + 24);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v8 = MEMORY[0x277D86220];
      v9 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __73__ACCHWComponentAuth_authenticateBatteryWithChallenge_completionHandler___block_invoke_25_cold_3();
    }
  }
}

+ (id)sharedManager
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__ACCHWComponentAuth_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedManager_once_1 != -1)
  {
    dispatch_once(&sharedManager_once_1, block);
  }

  v2 = sharedManager_sharedInstance_1;

  return v2;
}

uint64_t __35__ACCHWComponentAuth_sharedManager__block_invoke(uint64_t a1)
{
  sharedManager_sharedInstance_1 = [objc_alloc(*(a1 + 32)) _init];

  return MEMORY[0x2821F96F8]();
}

- (void)_init
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(&dword_221CB0000, a2, OS_LOG_TYPE_DEBUG, "Initializing %@...", v5, 0xCu);
}

void __73__ACCHWComponentAuth_authenticateBatteryWithChallenge_completionHandler___block_invoke_25_cold_3()
{
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end