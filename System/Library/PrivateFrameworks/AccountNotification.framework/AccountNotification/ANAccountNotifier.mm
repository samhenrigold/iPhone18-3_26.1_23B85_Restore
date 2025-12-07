@interface ANAccountNotifier
- (ANAccountNotifier)initWithCallbackMachService:(id)service;
- (ANAccountNotifierDelegate)delegate;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (id)_createDaemonConnection;
- (id)_daemonConnection;
- (void)_daemonConnectionWasInterrupted;
- (void)_daemonConnectionWasInvalidated;
- (void)_disconnectFromDaemon;
- (void)_startNotificationCallbackListenerWithMachServiceName:(id)name;
- (void)_stopNotificationCallbackListener;
- (void)addNotification:(id)notification;
- (void)dealloc;
- (void)notificationWasActivated:(id)activated;
- (void)notificationWasCleared:(id)cleared;
- (void)notificationWasDismissed:(id)dismissed;
- (void)removeNotificationWithIdentifier:(id)identifier;
- (void)removeNotificationsWithEventIdentifier:(id)identifier;
@end

@implementation ANAccountNotifier

- (ANAccountNotifier)initWithCallbackMachService:(id)service
{
  serviceCopy = service;
  v10.receiver = self;
  v10.super_class = ANAccountNotifier;
  v5 = [(ANAccountNotifier *)&v10 init];
  v6 = v5;
  if (serviceCopy && v5)
  {
    v7 = [serviceCopy copy];
    callbackMachService = v6->_callbackMachService;
    v6->_callbackMachService = v7;

    [(ANAccountNotifier *)v6 _startNotificationCallbackListenerWithMachServiceName:serviceCopy];
  }

  return v6;
}

- (void)dealloc
{
  [(ANAccountNotifier *)self _stopNotificationCallbackListener];
  [(ANAccountNotifier *)self _disconnectFromDaemon];
  v3.receiver = self;
  v3.super_class = ANAccountNotifier;
  [(ANAccountNotifier *)&v3 dealloc];
}

- (void)addNotification:(id)notification
{
  notificationCopy = notification;
  v5 = _ANLogSystem(notificationCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [ANAccountNotifier addNotification:];
  }

  if (self->_callbackMachService)
  {
    v7 = _ANLogSystem(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [ANAccountNotifier addNotification:];
    }

    [notificationCopy setCallbackMachService:self->_callbackMachService];
  }

  _daemonConnection = [(ANAccountNotifier *)self _daemonConnection];
  v9 = [_daemonConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_0];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __37__ANAccountNotifier_addNotification___block_invoke_3;
  v11[3] = &unk_278BF92F0;
  v12 = notificationCopy;
  v10 = notificationCopy;
  [v9 addNotification:v10 withCompletion:v11];
}

void __37__ANAccountNotifier_addNotification___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    v4 = _ANLogSystem(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __37__ANAccountNotifier_addNotification___block_invoke_cold_1();
    }
  }
}

void __37__ANAccountNotifier_addNotification___block_invoke_3(uint64_t a1, char a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _ANLogSystem(v4);
  v6 = v5;
  if (a2)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315394;
      v8 = "[ANAccountNotifier addNotification:]_block_invoke";
      v9 = 1024;
      v10 = 79;
      _os_log_impl(&dword_23DC5E000, v6, OS_LOG_TYPE_DEFAULT, "%s (%d) Notification added successfully!", &v7, 0x12u);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __37__ANAccountNotifier_addNotification___block_invoke_3_cold_1();
  }
}

- (void)removeNotificationWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = _ANLogSystem(identifierCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [ANAccountNotifier removeNotificationWithIdentifier:];
  }

  _daemonConnection = [(ANAccountNotifier *)self _daemonConnection];
  v7 = [_daemonConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_6];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __54__ANAccountNotifier_removeNotificationWithIdentifier___block_invoke_7;
  v9[3] = &unk_278BF92F0;
  v10 = identifierCopy;
  v8 = identifierCopy;
  [v7 removeNotificationWithID:v8 completion:v9];
}

void __54__ANAccountNotifier_removeNotificationWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    v4 = _ANLogSystem(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __54__ANAccountNotifier_removeNotificationWithIdentifier___block_invoke_cold_1();
    }
  }
}

void __54__ANAccountNotifier_removeNotificationWithIdentifier___block_invoke_7(uint64_t a1, char a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _ANLogSystem(v4);
  v6 = v5;
  if (a2)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315394;
      v8 = "[ANAccountNotifier removeNotificationWithIdentifier:]_block_invoke";
      v9 = 1024;
      v10 = 98;
      _os_log_impl(&dword_23DC5E000, v6, OS_LOG_TYPE_DEFAULT, "%s (%d) Notification removed successfully!", &v7, 0x12u);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __54__ANAccountNotifier_removeNotificationWithIdentifier___block_invoke_7_cold_1();
  }
}

- (void)removeNotificationsWithEventIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = _ANLogSystem(identifierCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [ANAccountNotifier removeNotificationsWithEventIdentifier:];
  }

  _daemonConnection = [(ANAccountNotifier *)self _daemonConnection];
  v7 = [_daemonConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_9];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __60__ANAccountNotifier_removeNotificationsWithEventIdentifier___block_invoke_10;
  v9[3] = &unk_278BF92F0;
  v10 = identifierCopy;
  v8 = identifierCopy;
  [v7 removeNotificationsWithEventID:v8 completion:v9];
}

void __60__ANAccountNotifier_removeNotificationsWithEventIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    v4 = _ANLogSystem(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __60__ANAccountNotifier_removeNotificationsWithEventIdentifier___block_invoke_cold_1();
    }
  }
}

void __60__ANAccountNotifier_removeNotificationsWithEventIdentifier___block_invoke_10(uint64_t a1, char a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _ANLogSystem(v4);
  v6 = v5;
  if (a2)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315394;
      v8 = "[ANAccountNotifier removeNotificationsWithEventIdentifier:]_block_invoke";
      v9 = 1024;
      v10 = 117;
      _os_log_impl(&dword_23DC5E000, v6, OS_LOG_TYPE_DEFAULT, "%s (%d) Notifications removed successfully!", &v7, 0x12u);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __60__ANAccountNotifier_removeNotificationsWithEventIdentifier___block_invoke_10_cold_1();
  }
}

- (id)_daemonConnection
{
  daemonConnection = self->_daemonConnection;
  if (!daemonConnection)
  {
    _createDaemonConnection = [(ANAccountNotifier *)self _createDaemonConnection];
    v5 = self->_daemonConnection;
    self->_daemonConnection = _createDaemonConnection;

    daemonConnection = self->_daemonConnection;
  }

  return daemonConnection;
}

- (id)_createDaemonConnection
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = _ANLogSystem(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v15 = "[ANAccountNotifier _createDaemonConnection]";
    v16 = 1024;
    v17 = 137;
    _os_log_impl(&dword_23DC5E000, v3, OS_LOG_TYPE_DEFAULT, "%s (%d) Starting new connection...", buf, 0x12u);
  }

  v4 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.and.xpc" options:0];
  v5 = +[ANDaemonInterface XPCInterface];
  [v4 setRemoteObjectInterface:v5];

  objc_initWeak(buf, self);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __44__ANAccountNotifier__createDaemonConnection__block_invoke;
  v12[3] = &unk_278BF9318;
  objc_copyWeak(&v13, buf);
  [v4 setInvalidationHandler:v12];
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __44__ANAccountNotifier__createDaemonConnection__block_invoke_2;
  v10 = &unk_278BF9318;
  objc_copyWeak(&v11, buf);
  [v4 setInterruptionHandler:&v7];
  [v4 resume];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&v13);
  objc_destroyWeak(buf);

  return v4;
}

void __44__ANAccountNotifier__createDaemonConnection__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _daemonConnectionWasInvalidated];
    WeakRetained = v2;
  }
}

void __44__ANAccountNotifier__createDaemonConnection__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _daemonConnectionWasInterrupted];
    WeakRetained = v2;
  }
}

- (void)_disconnectFromDaemon
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)_daemonConnectionWasInterrupted
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)_daemonConnectionWasInvalidated
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = _ANLogSystem(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[ANAccountNotifier _daemonConnectionWasInvalidated]";
    v7 = 1024;
    v8 = 179;
    _os_log_impl(&dword_23DC5E000, v3, OS_LOG_TYPE_DEFAULT, "%s (%d) called", &v5, 0x12u);
  }

  daemonConnection = self->_daemonConnection;
  self->_daemonConnection = 0;
}

- (void)_startNotificationCallbackListenerWithMachServiceName:(id)name
{
  v14 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  bulletinResponseListener = self->_bulletinResponseListener;
  v6 = _ANLogSystem(nameCopy);
  v7 = v6;
  if (bulletinResponseListener)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315394;
      v11 = "[ANAccountNotifier _startNotificationCallbackListenerWithMachServiceName:]";
      v12 = 1024;
      v13 = 190;
      _os_log_impl(&dword_23DC5E000, v7, OS_LOG_TYPE_DEFAULT, "%s (%d) Notification response listener is already running!", &v10, 0x12u);
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [ANAccountNotifier _startNotificationCallbackListenerWithMachServiceName:];
    }

    v8 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:nameCopy];
    v9 = self->_bulletinResponseListener;
    self->_bulletinResponseListener = v8;

    [(NSXPCListener *)self->_bulletinResponseListener setDelegate:self];
    [(NSXPCListener *)self->_bulletinResponseListener resume];
  }
}

- (void)_stopNotificationCallbackListener
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v17 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  v6 = [connectionCopy valueForEntitlement:@"com.apple.and.manager"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    v10 = _ANLogSystem(isKindOfClass);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [ANAccountNotifier listener:shouldAcceptNewConnection:];
    }

    goto LABEL_10;
  }

  bOOLValue = [v6 BOOLValue];
  if ((bOOLValue & 1) == 0)
  {
    v10 = _ANLogSystem(bOOLValue);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [ANAccountNotifier listener:shouldAcceptNewConnection:];
    }

LABEL_10:
    v11 = 0;
    goto LABEL_11;
  }

  v9 = +[ANClientCallbackInterface XPCInterface];
  [connectionCopy setExportedInterface:v9];

  [connectionCopy setExportedObject:self];
  v10 = _ANLogSystem([connectionCopy resume]);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315394;
    v14 = "[ANAccountNotifier listener:shouldAcceptNewConnection:]";
    v15 = 1024;
    v16 = 227;
    _os_log_impl(&dword_23DC5E000, v10, OS_LOG_TYPE_DEFAULT, "%s (%d) Accepted new connection.", &v13, 0x12u);
  }

  v11 = 1;
LABEL_11:

  return v11;
}

- (void)notificationWasActivated:(id)activated
{
  v13 = *MEMORY[0x277D85DE8];
  activatedCopy = activated;
  v5 = _ANLogSystem(activatedCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[ANAccountNotifier notificationWasActivated:]";
    v11 = 1024;
    v12 = 234;
    _os_log_impl(&dword_23DC5E000, v5, OS_LOG_TYPE_DEFAULT, "%s (%d) called", &v9, 0x12u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_delegate);
    [v8 accountNotifier:self didActivateNotification:activatedCopy];
  }
}

- (void)notificationWasDismissed:(id)dismissed
{
  v13 = *MEMORY[0x277D85DE8];
  dismissedCopy = dismissed;
  v5 = _ANLogSystem(dismissedCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[ANAccountNotifier notificationWasDismissed:]";
    v11 = 1024;
    v12 = 243;
    _os_log_impl(&dword_23DC5E000, v5, OS_LOG_TYPE_DEFAULT, "%s (%d) called", &v9, 0x12u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_delegate);
    [v8 accountNotifier:self didDismissNotification:dismissedCopy];
  }
}

- (void)notificationWasCleared:(id)cleared
{
  v13 = *MEMORY[0x277D85DE8];
  clearedCopy = cleared;
  v5 = _ANLogSystem(clearedCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[ANAccountNotifier notificationWasCleared:]";
    v11 = 1024;
    v12 = 252;
    _os_log_impl(&dword_23DC5E000, v5, OS_LOG_TYPE_DEFAULT, "%s (%d) called", &v9, 0x12u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_delegate);
    [v8 accountNotifier:self didClearNotification:clearedCopy];
  }
}

- (ANAccountNotifierDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)addNotification:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)addNotification:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void __37__ANAccountNotifier_addNotification___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void __37__ANAccountNotifier_addNotification___block_invoke_3_cold_1()
{
  v2 = 136315906;
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_23DC5E000, v0, v1, "%s (%d) Failed to add notification %@! Error: %@", v2);
}

- (void)removeNotificationWithIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void __54__ANAccountNotifier_removeNotificationWithIdentifier___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void __54__ANAccountNotifier_removeNotificationWithIdentifier___block_invoke_7_cold_1()
{
  v2 = 136315906;
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_23DC5E000, v0, v1, "%s (%d) Failed to remove notification %@! Error: %@", v2);
}

- (void)removeNotificationsWithEventIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void __60__ANAccountNotifier_removeNotificationsWithEventIdentifier___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void __60__ANAccountNotifier_removeNotificationsWithEventIdentifier___block_invoke_10_cold_1()
{
  v2 = 136315906;
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_23DC5E000, v0, v1, "%s (%d) Failed to remove notifications with event ID %@! Error: %@", v2);
}

- (void)_startNotificationCallbackListenerWithMachServiceName:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)listener:shouldAcceptNewConnection:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)listener:shouldAcceptNewConnection:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

@end