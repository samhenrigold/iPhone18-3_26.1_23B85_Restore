@interface CPSAuthenticationSession
- (CPSAuthenticationSession)initWithRequest:(id)request;
- (void)_activated;
- (void)_deviceStartedAuthentication:(uint64_t)authentication;
- (void)_deviceTappedNotification:(uint64_t)notification;
- (void)_invalidated;
- (void)_sessionFailedWithError:(uint64_t)error;
- (void)_sessionFinishedWithResponse:(uint64_t)response;
- (void)authenticationSessionPresentShieldWithStyle:(int64_t)style device:(id)device;
- (void)cancel;
- (void)start;
@end

@implementation CPSAuthenticationSession

- (CPSAuthenticationSession)initWithRequest:(id)request
{
  v24 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  if (!requestCopy)
  {
    [(CPSAuthenticationSession *)a2 initWithRequest:?];
  }

  v7 = requestCopy;
  currentPersona = [MEMORY[0x277D77C08] currentPersona];
  v9 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (currentPersona)
  {
    if (v9)
    {
      userPersonaType = [currentPersona userPersonaType];
      userPersonaNickName = [currentPersona userPersonaNickName];
      userPersonaUniqueString = [currentPersona userPersonaUniqueString];
      *buf = 134218498;
      v19 = userPersonaType;
      v20 = 2112;
      v21 = userPersonaNickName;
      v22 = 2112;
      v23 = userPersonaUniqueString;
      _os_log_impl(&dword_243D1C000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "activePersona: <ty:%lu, nm:%@, id:%@>", buf, 0x20u);
    }
  }

  else if (v9)
  {
    *buf = 0;
    _os_log_impl(&dword_243D1C000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "activePersona: nil", buf, 2u);
  }

  v17.receiver = self;
  v17.super_class = CPSAuthenticationSession;
  v13 = [(CPSAuthenticationSession *)&v17 init];
  if (v13)
  {
    Serial = BSDispatchQueueCreateSerial();
    dispatchQueue = v13->_dispatchQueue;
    v13->_dispatchQueue = Serial;

    objc_storeStrong(&v13->_request, request);
  }

  return v13;
}

- (void)start
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__CPSAuthenticationSession_start__block_invoke;
  block[3] = &unk_278DF14F0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void __33__CPSAuthenticationSession_start__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 24) == 1)
  {
    v2 = ClientSessionLog(v1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __33__CPSAuthenticationSession_start__block_invoke_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }

LABEL_7:

    return;
  }

  if (*(v1 + 25) == 1)
  {
    v2 = ClientSessionLog(v1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __33__CPSAuthenticationSession_start__block_invoke_cold_1(v2, v10, v11, v12, v13, v14, v15, v16);
    }

    goto LABEL_7;
  }

  [(CPSAuthenticationSession *)v1 _activated];
}

- (void)cancel
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__CPSAuthenticationSession_cancel__block_invoke;
  block[3] = &unk_278DF14F0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void __38__CPSAuthenticationSession__activated__block_invoke(uint64_t a1)
{
  v2 = ClientSessionLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __38__CPSAuthenticationSession__activated__block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  v10 = NSErrorF();
  [(CPSAuthenticationSession *)*(a1 + 32) _sessionFailedWithError:v10];
}

void __38__CPSAuthenticationSession__activated__block_invoke_19(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = ClientSessionLog(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __38__CPSAuthenticationSession__activated__block_invoke_19_cold_1(v4, v5);
    }

    [(CPSAuthenticationSession *)*(a1 + 32) _sessionFailedWithError:v4];
  }
}

- (void)authenticationSessionPresentShieldWithStyle:(int64_t)style device:(id)device
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = ClientSessionLog(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[CPSAuthenticationSession authenticationSessionPresentShieldWithStyle:device:]";
    _os_log_impl(&dword_243D1C000, v4, OS_LOG_TYPE_DEFAULT, "%s", &v5, 0xCu);
  }
}

- (void)_activated
{
  v20 = *MEMORY[0x277D85DE8];
  if (self)
  {
    v2 = ClientSessionLog(self);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_243D1C000, v2, OS_LOG_TYPE_INFO, "Activated", buf, 2u);
    }

    *(self + 24) = 1;
    v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.companiond.xpc" options:0];
    v4 = *(self + 16);
    *(self + 16) = v3;

    v5 = *(self + 16);
    v6 = +[CPSAuthenticationServiceInterface clientInterface];
    [v5 setExportedInterface:v6];

    v7 = *(self + 16);
    v8 = +[CPSAuthenticationServiceInterface daemonInterface];
    [v7 setRemoteObjectInterface:v8];

    [*(self + 16) setExportedObject:self];
    [*(self + 16) _setQueue:*(self + 8)];
    v9 = *(self + 16);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __38__CPSAuthenticationSession__activated__block_invoke;
    v17[3] = &unk_278DF14F0;
    v17[4] = self;
    [v9 setInterruptionHandler:v17];
    v10 = *(self + 16);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __38__CPSAuthenticationSession__activated__block_invoke_18;
    v16[3] = &unk_278DF14F0;
    v16[4] = self;
    [v10 setInvalidationHandler:v16];
    [*(self + 16) resume];
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __38__CPSAuthenticationSession__activated__block_invoke_19;
    aBlock[3] = &unk_278DF1518;
    aBlock[4] = self;
    v11 = _Block_copy(aBlock);
    v12 = ClientSessionLog(v11);
    if (OUTLINED_FUNCTION_3(v12))
    {
      v13 = *(self + 32);
      *buf = 138412290;
      v19 = v13;
      _os_log_impl(&dword_243D1C000, v8, OS_LOG_TYPE_DEFAULT, "Starting authentication session: %@", buf, 0xCu);
    }

    v14 = [*(self + 16) remoteObjectProxyWithErrorHandler:v11];
    [v14 startAuthenticationSessionWithRequest:*(self + 32) completionHandler:v11];
  }
}

- (void)_invalidated
{
  if (self && (*(self + 25) & 1) == 0)
  {
    v2 = ClientSessionLog(self);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(&dword_243D1C000, v2, OS_LOG_TYPE_INFO, "Invalidated", v11, 2u);
    }

    v3 = *(self + 64);
    *(self + 64) = 0;

    v4 = *(self + 72);
    *(self + 72) = 0;

    v5 = *(self + 48);
    *(self + 48) = 0;

    v6 = *(self + 56);
    *(self + 56) = 0;

    v7 = *(self + 40);
    if (v7)
    {
      v8 = NSErrorF();
      (*(v7 + 16))(v7, 0, v8);

      v9 = *(self + 40);
      *(self + 40) = 0;
    }

    [*(self + 16) setInterruptionHandler:0];
    [*(self + 16) setInvalidationHandler:0];
    [*(self + 16) invalidate];
    v10 = *(self + 16);
    *(self + 16) = 0;

    *(self + 25) = 1;
  }
}

- (void)_sessionFailedWithError:(uint64_t)error
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (error)
  {
    v5 = ClientSessionLog(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = v4;
      _os_log_error_impl(&dword_243D1C000, v5, OS_LOG_TYPE_ERROR, "Session failed: %@", &v10, 0xCu);
    }

    if (*(error + 56))
    {
      OUTLINED_FUNCTION_1_0();
      v6();
      v7 = *(error + 56);
      *(error + 56) = 0;
    }

    if (*(error + 40))
    {
      OUTLINED_FUNCTION_1_0();
      v8();
      v9 = *(error + 40);
      *(error + 40) = 0;
    }

    [(CPSAuthenticationSession *)error _invalidated];
  }
}

void __38__CPSAuthenticationSession__activated__block_invoke_18(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;

  v5 = ClientSessionLog(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *v7 = 0;
    _os_log_error_impl(&dword_243D1C000, v5, OS_LOG_TYPE_ERROR, "Connection invalidated", v7, 2u);
  }

  v6 = NSErrorF();
  [(CPSAuthenticationSession *)*(a1 + 32) _sessionFailedWithError:v6];
}

- (void)_deviceTappedNotification:(uint64_t)notification
{
  v4 = a2;
  v5 = v4;
  if (notification)
  {
    v6 = ClientSessionLog(v4);
    if (OUTLINED_FUNCTION_3(v6))
    {
      LODWORD(v14) = 138412290;
      *(&v14 + 4) = v5;
      OUTLINED_FUNCTION_0_0(&dword_243D1C000, v7, v8, "Device tapped notification: %@", v9, v10, v11, v12, v14, DWORD2(v14));
    }

    if (*(notification + 64))
    {
      OUTLINED_FUNCTION_1_0();
      v13();
    }
  }
}

- (void)_deviceStartedAuthentication:(uint64_t)authentication
{
  v4 = a2;
  v5 = v4;
  if (authentication)
  {
    v6 = ClientSessionLog(v4);
    if (OUTLINED_FUNCTION_3(v6))
    {
      LODWORD(v14) = 138412290;
      *(&v14 + 4) = v5;
      OUTLINED_FUNCTION_0_0(&dword_243D1C000, v7, v8, "Device started authentication: %@", v9, v10, v11, v12, v14, DWORD2(v14));
    }

    if (*(authentication + 72))
    {
      OUTLINED_FUNCTION_1_0();
      v13();
    }
  }
}

- (void)_sessionFinishedWithResponse:(uint64_t)response
{
  v4 = a2;
  v5 = v4;
  if (response)
  {
    v6 = ClientSessionLog(v4);
    if (OUTLINED_FUNCTION_3(v6))
    {
      LODWORD(v17) = 138412290;
      *(&v17 + 4) = v5;
      OUTLINED_FUNCTION_0_0(&dword_243D1C000, v7, v8, "Session finished: %@", v9, v10, v11, v12, v17, DWORD2(v17));
    }

    if (*(response + 48))
    {
      OUTLINED_FUNCTION_1_0();
      v13();
      v14 = *(response + 48);
      *(response + 48) = 0;
    }

    if (*(response + 40))
    {
      OUTLINED_FUNCTION_1_0();
      v15();
      v16 = *(response + 40);
      *(response + 40) = 0;
    }

    [(CPSAuthenticationSession *)response _invalidated];
  }
}

- (void)initWithRequest:(const char *)a1 .cold.1(const char *a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"request != nil"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    v13 = a2;
    v14 = 2114;
    v15 = @"CPSAuthenticationSession.m";
    v16 = 1024;
    v17 = 46;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_243D1C000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void __38__CPSAuthenticationSession__activated__block_invoke_19_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_243D1C000, a2, OS_LOG_TYPE_ERROR, "Failed to start session: %@", &v2, 0xCu);
}

@end