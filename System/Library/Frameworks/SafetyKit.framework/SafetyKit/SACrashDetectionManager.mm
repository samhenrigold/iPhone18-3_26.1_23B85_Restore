@interface SACrashDetectionManager
+ (BOOL)availableOverrideSetting;
+ (BOOL)isAvailable;
+ (void)isAvailable;
- (SAAuthorizationStatus)authorizationStatus;
- (SACrashDetectionManager)init;
- (id)delegate;
- (void)_appDidBecomeActive:(id)active;
- (void)_callDelegateWithCrashEvent:(id)event;
- (void)authorizationStatus;
- (void)init;
- (void)requestAuthorizationWithCompletionHandler:(void *)handler;
- (void)setDelegate:(id)delegate;
- (void)updateMostRecentCrashDetectionEvent:(id)event;
@end

@implementation SACrashDetectionManager

+ (BOOL)isAvailable
{
  if (![SAEntitlement currentProcessHasEntitlement:@"com.apple.developer.severe-vehicular-crash-event"])
  {
    +[SACrashDetectionManager isAvailable];
  }

  if (!+[SAGestalt isProductionFused](SAGestalt, "isProductionFused") && +[SAGestalt isInternalBuild](SAGestalt, "isInternalBuild") && ([objc_opt_class() availableOverrideSetting] & 1) != 0)
  {
    return 1;
  }

  return +[SAGestalt deviceSupportsKappa];
}

- (SACrashDetectionManager)init
{
  v16.receiver = self;
  v16.super_class = SACrashDetectionManager;
  v2 = [(SACrashDetectionManager *)&v16 init];
  v3 = v2;
  if (v2)
  {
    v4 = sa_default_log(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [SACrashDetectionManager init];
    }

    isAvailable = [objc_opt_class() isAvailable];
    if (isAvailable)
    {
      client = [(SACrashDetectionManager *)v3 client];
      [client setCrashDetectionClientDelegate:v3];

      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter addObserver:v3 selector:sel__appDidBecomeActive_ name:@"UIApplicationDidBecomeActiveNotification" object:0];
    }

    else
    {
      defaultCenter = sa_default_log(isAvailable);
      if (os_log_type_enabled(defaultCenter, OS_LOG_TYPE_ERROR))
      {
        [(SACrashDetectionManager *)defaultCenter init:v8];
      }
    }
  }

  return v3;
}

- (SAAuthorizationStatus)authorizationStatus
{
  v8 = *MEMORY[0x277D85DE8];
  if (![SAEntitlement currentProcessHasEntitlement:@"com.apple.developer.severe-vehicular-crash-event"])
  {
    [SACrashDetectionManager authorizationStatus];
  }

  isAvailable = [objc_opt_class() isAvailable];
  if (isAvailable)
  {
    v3 = TCCAccessPreflight();

    return [SAAuthorization authorizationStatusWithTCCPreflightResult:v3];
  }

  else
  {
    v5 = sa_default_log(isAvailable);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315138;
      v7 = "[SACrashDetectionManager authorizationStatus]";
      _os_log_impl(&dword_23AA4D000, v5, OS_LOG_TYPE_DEFAULT, "%s - Manager is unavailable, returning SAAuthorizationStatusDenied", &v6, 0xCu);
    }

    return 1;
  }
}

- (void)setDelegate:(id)delegate
{
  v4 = delegate;
  if (![SAEntitlement currentProcessHasEntitlement:@"com.apple.developer.severe-vehicular-crash-event"])
  {
    [SACrashDetectionManager setDelegate:];
  }

  isAvailable = [objc_opt_class() isAvailable];
  v6 = isAvailable;
  v7 = sa_default_log(isAvailable);
  client = v7;
  if ((v6 & 1) == 0)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(SACrashDetectionManager *)client setDelegate:v10, v11, v12, v13, v14, v15, v16];
    }

    goto LABEL_10;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [SACrashDetectionManager setDelegate:];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained != v4)
  {
    objc_storeWeak(&self->_delegate, v4);
    client = [(SACrashDetectionManager *)self client];
    [client requestMostRecentCrashDetectionEvent];
LABEL_10:
  }
}

- (void)requestAuthorizationWithCompletionHandler:(void *)handler
{
  v4 = handler;
  v5 = [SAEntitlement currentProcessHasEntitlement:@"com.apple.developer.severe-vehicular-crash-event"];
  if ((v5 & 1) == 0)
  {
    [SACrashDetectionManager requestAuthorizationWithCompletionHandler:];
  }

  v6 = sa_default_log(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [SACrashDetectionManager requestAuthorizationWithCompletionHandler:];
  }

  isAvailable = [objc_opt_class() isAvailable];
  if (isAvailable)
  {
    v8 = [SAAuthorization authorizationStatusWithTCCPreflightResult:TCCAccessPreflight()];
    if (v8 == 2)
    {
      v9 = v4[2](v4, 2, 0);
      v10 = sa_default_log(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [SACrashDetectionManager requestAuthorizationWithCompletionHandler:];
      }

LABEL_16:

      goto LABEL_20;
    }

    v19 = v8;
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    applicationState = [mEMORY[0x277D75128] applicationState];

    v23 = sa_default_log(v22);
    v24 = v23;
    if (applicationState == 2)
    {
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [SACrashDetectionManager requestAuthorizationWithCompletionHandler:];
      }

      v10 = [SAError errorWithCode:4];
      (v4)[2](v4, v19, v10);
      goto LABEL_16;
    }

    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      [SACrashDetectionManager requestAuthorizationWithCompletionHandler:];
    }

    client = [(SACrashDetectionManager *)self client];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __69__SACrashDetectionManager_requestAuthorizationWithCompletionHandler___block_invoke;
    v26[3] = &unk_278B67FF0;
    v26[4] = self;
    v27 = v4;
    [client requestCrashDetectionAuthorization:v26];
  }

  else
  {
    v11 = sa_default_log(isAvailable);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(SACrashDetectionManager *)v11 requestAuthorizationWithCompletionHandler:v12, v13, v14, v15, v16, v17, v18];
    }

    v4[2](v4, 1, 0);
  }

LABEL_20:
}

void __69__SACrashDetectionManager_requestAuthorizationWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = sa_default_log(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __69__SACrashDetectionManager_requestAuthorizationWithCompletionHandler___block_invoke_cold_1();
  }

  (*(*(a1 + 40) + 16))();
  if (a2 == 2)
  {
    v7 = [*(a1 + 32) client];
    [v7 requestMostRecentCrashDetectionEvent];
  }
}

+ (BOOL)availableOverrideSetting
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults valueForKey:@"SACrashDetectionManagerAvailable"];

  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (void)_appDidBecomeActive:(id)active
{
  v4 = sa_default_log(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [SACrashDetectionManager _appDidBecomeActive:];
  }

  client = [(SACrashDetectionManager *)self client];
  [client requestMostRecentCrashDetectionEvent];
}

- (void)_callDelegateWithCrashEvent:(id)event
{
  eventCopy = event;
  v5 = sa_default_log(eventCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [SACrashDetectionManager _callDelegateWithCrashEvent:];
  }

  delegate = [(SACrashDetectionManager *)self delegate];
  if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [delegate crashDetectionManager:self didDetectEvent:eventCopy];
  }
}

- (void)updateMostRecentCrashDetectionEvent:(id)event
{
  eventCopy = event;
  v5 = sa_default_log(eventCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [SACrashDetectionManager updateMostRecentCrashDetectionEvent:];
  }

  [(SACrashDetectionManager *)self _callDelegateWithCrashEvent:eventCopy];
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

+ (void)isAvailable
{
  OUTLINED_FUNCTION_3_1();
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_5_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)init
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[SACrashDetectionManager init]";
  OUTLINED_FUNCTION_4_0(&dword_23AA4D000, self, a3, "%s - Manager is unavailable, all API calls will fail.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)authorizationStatus
{
  OUTLINED_FUNCTION_3_1();
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_5_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)setDelegate:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_5_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)setDelegate:(uint64_t)a3 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[SACrashDetectionManager setDelegate:]";
  OUTLINED_FUNCTION_4_0(&dword_23AA4D000, a1, a3, "%s - Manager is unavailable, not setting delegate.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)setDelegate:.cold.3()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)requestAuthorizationWithCompletionHandler:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_5_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)requestAuthorizationWithCompletionHandler:(uint64_t)a3 .cold.3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[SACrashDetectionManager requestAuthorizationWithCompletionHandler:]";
  OUTLINED_FUNCTION_4_0(&dword_23AA4D000, a1, a3, "%s - Manager is unavailable, responding with SAAuthorizationStatusDenied", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)requestAuthorizationWithCompletionHandler:.cold.4()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)requestAuthorizationWithCompletionHandler:.cold.5()
{
  OUTLINED_FUNCTION_3_1();
  v9 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D75128] sharedApplication];
  [v2 applicationState];
  v5[0] = 136315650;
  OUTLINED_FUNCTION_2_1();
  v6 = v1;
  v7 = v3;
  v8 = v4;
  _os_log_error_impl(&dword_23AA4D000, v0, OS_LOG_TYPE_ERROR, "%s - Application not in foreground, not requesting authorization, status: %lu, application: %lu", v5, 0x20u);
}

- (void)requestAuthorizationWithCompletionHandler:.cold.6()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __69__SACrashDetectionManager_requestAuthorizationWithCompletionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_callDelegateWithCrashEvent:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)updateMostRecentCrashDetectionEvent:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

@end