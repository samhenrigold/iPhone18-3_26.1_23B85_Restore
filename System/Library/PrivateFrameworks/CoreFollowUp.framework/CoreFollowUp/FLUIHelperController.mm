@interface FLUIHelperController
+ (id)sharedInstance;
- (FLUIHelperController)init;
- (id)connection;
- (void)showHSA2PasswordChangeForAppleID:(id)d completion:(id)completion;
- (void)showUIForHSA2LoginCode:(id)code notification:(id)notification completion:(id)completion;
- (void)showUIForHSA2LoginNotification:(id)notification completion:(id)completion;
- (void)tearDownUIForHSA2LoginNotificationWithPushMessageID:(id)d;
@end

@implementation FLUIHelperController

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[FLUIHelperController sharedInstance];
  }

  v3 = sharedInstance_instance_0;

  return v3;
}

uint64_t __38__FLUIHelperController_sharedInstance__block_invoke()
{
  sharedInstance_instance_0 = objc_alloc_init(FLUIHelperController);

  return MEMORY[0x2821F96F8]();
}

- (FLUIHelperController)init
{
  v6.receiver = self;
  v6.super_class = FLUIHelperController;
  v2 = [(FLUIHelperController *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    connLock = v2->_connLock;
    v2->_connLock = v3;
  }

  return v2;
}

- (void)showUIForHSA2LoginNotification:(id)notification completion:(id)completion
{
  completionCopy = completion;
  notificationCopy = notification;
  connection = [(FLUIHelperController *)self connection];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __66__FLUIHelperController_showUIForHSA2LoginNotification_completion___block_invoke;
  v16[3] = &unk_278852F30;
  v16[4] = self;
  v9 = [connection remoteObjectProxyWithErrorHandler:v16];

  v11 = _FLLogSystem(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22E696000, v11, OS_LOG_TYPE_DEFAULT, "Showing password change", buf, 2u);
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __66__FLUIHelperController_showUIForHSA2LoginNotification_completion___block_invoke_3;
  v13[3] = &unk_278852AA8;
  v14 = completionCopy;
  v12 = completionCopy;
  [v9 showHSA2LoginNotification:notificationCopy completion:v13];
}

void __66__FLUIHelperController_showUIForHSA2LoginNotification_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _FLLogSystem(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __66__FLUIHelperController_showUIForHSA2LoginNotification_completion___block_invoke_cold_1();
  }
}

void __66__FLUIHelperController_showUIForHSA2LoginNotification_completion___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = _FLLogSystem(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_22E696000, v6, OS_LOG_TYPE_DEFAULT, "Notification completed", v8, 2u);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, a2, v5);
  }
}

- (void)showHSA2PasswordChangeForAppleID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  connection = [(FLUIHelperController *)self connection];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __68__FLUIHelperController_showHSA2PasswordChangeForAppleID_completion___block_invoke;
  v16[3] = &unk_278852F30;
  v16[4] = self;
  v9 = [connection remoteObjectProxyWithErrorHandler:v16];

  v11 = _FLLogSystem(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22E696000, v11, OS_LOG_TYPE_DEFAULT, "Showing password change", buf, 2u);
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __68__FLUIHelperController_showHSA2PasswordChangeForAppleID_completion___block_invoke_5;
  v13[3] = &unk_278852AA8;
  v14 = completionCopy;
  v12 = completionCopy;
  [v9 showHSA2ChangePasswordForAppleID:dCopy completion:v13];
}

void __68__FLUIHelperController_showHSA2PasswordChangeForAppleID_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _FLLogSystem(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __68__FLUIHelperController_showHSA2PasswordChangeForAppleID_completion___block_invoke_cold_1();
  }
}

void __68__FLUIHelperController_showHSA2PasswordChangeForAppleID_completion___block_invoke_5(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = _FLLogSystem(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_22E696000, v6, OS_LOG_TYPE_DEFAULT, "Notification completed", v8, 2u);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, a2, v5);
  }
}

- (void)showUIForHSA2LoginCode:(id)code notification:(id)notification completion:(id)completion
{
  completionCopy = completion;
  notificationCopy = notification;
  codeCopy = code;
  connection = [(FLUIHelperController *)self connection];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __71__FLUIHelperController_showUIForHSA2LoginCode_notification_completion___block_invoke;
  v19[3] = &unk_278852F30;
  v19[4] = self;
  v12 = [connection remoteObjectProxyWithErrorHandler:v19];

  v14 = _FLLogSystem(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22E696000, v14, OS_LOG_TYPE_DEFAULT, "Showing login code", buf, 2u);
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __71__FLUIHelperController_showUIForHSA2LoginCode_notification_completion___block_invoke_6;
  v16[3] = &unk_278852AA8;
  v17 = completionCopy;
  v15 = completionCopy;
  [v12 showHSA2LoginCode:codeCopy withNotification:notificationCopy completion:v16];
}

void __71__FLUIHelperController_showUIForHSA2LoginCode_notification_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _FLLogSystem(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __71__FLUIHelperController_showUIForHSA2LoginCode_notification_completion___block_invoke_cold_1();
  }
}

void __71__FLUIHelperController_showUIForHSA2LoginCode_notification_completion___block_invoke_6(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = _FLLogSystem(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_22E696000, v6, OS_LOG_TYPE_DEFAULT, "Notification completed", v8, 2u);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, a2, v5);
  }
}

- (void)tearDownUIForHSA2LoginNotificationWithPushMessageID:(id)d
{
  dCopy = d;
  connection = [(FLUIHelperController *)self connection];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __76__FLUIHelperController_tearDownUIForHSA2LoginNotificationWithPushMessageID___block_invoke;
  v7[3] = &unk_278852F30;
  v7[4] = self;
  v6 = [connection remoteObjectProxyWithErrorHandler:v7];

  [v6 tearDownUIForHSA2LoginNotificationWithPushMessageID:dCopy];
}

void __76__FLUIHelperController_tearDownUIForHSA2LoginNotificationWithPushMessageID___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _FLLogSystem(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __76__FLUIHelperController_tearDownUIForHSA2LoginNotificationWithPushMessageID___block_invoke_cold_1();
  }
}

- (id)connection
{
  [(NSLock *)self->_connLock lock];
  conn = self->_conn;
  if (!conn)
  {
    v4 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.corefollowup.uihelper" options:0];
    v5 = self->_conn;
    self->_conn = v4;

    v6 = self->_conn;
    remoteObjectInterface = [(FLUIHelperController *)self remoteObjectInterface];
    [(NSXPCConnection *)v6 setRemoteObjectInterface:remoteObjectInterface];

    v14[0] = 0;
    v14[1] = v14;
    v14[2] = 0x3032000000;
    v14[3] = __Block_byref_object_copy__2;
    v14[4] = __Block_byref_object_dispose__2;
    selfCopy = self;
    v8 = self->_conn;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __34__FLUIHelperController_connection__block_invoke;
    v13[3] = &unk_2788528D0;
    v13[4] = v14;
    [(NSXPCConnection *)v8 setInterruptionHandler:v13];
    v9 = self->_conn;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __34__FLUIHelperController_connection__block_invoke_9;
    v12[3] = &unk_2788528D0;
    v12[4] = v14;
    [(NSXPCConnection *)v9 setInvalidationHandler:v12];
    [(NSXPCConnection *)self->_conn resume];
    _Block_object_dispose(v14, 8);

    conn = self->_conn;
  }

  v10 = conn;
  [(NSLock *)self->_connLock unlock];

  return v10;
}

void *__34__FLUIHelperController_connection__block_invoke(void *result)
{
  v1 = result + 4;
  if (*(*(result[4] + 8) + 40))
  {
    v2 = _FLLogSystem(result);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __22__FLDaemon_connection__block_invoke_cold_1();
    }

    [*(*(*(*v1 + 8) + 40) + 8) lock];
    v3 = *(*(*v1 + 8) + 40);
    v4 = *(v3 + 16);
    *(v3 + 16) = 0;

    return [*(*(*(*v1 + 8) + 40) + 8) unlock];
  }

  return result;
}

void *__34__FLUIHelperController_connection__block_invoke_9(void *result)
{
  v1 = result + 4;
  if (*(*(result[4] + 8) + 40))
  {
    v2 = _FLLogSystem(result);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __22__FLDaemon_connection__block_invoke_6_cold_1();
    }

    [*(*(*(*v1 + 8) + 40) + 8) lock];
    v3 = *(*(*v1 + 8) + 40);
    v4 = *(v3 + 16);
    *(v3 + 16) = 0;

    return [*(*(*(*v1 + 8) + 40) + 8) unlock];
  }

  return result;
}

void __66__FLUIHelperController_showUIForHSA2LoginNotification_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_1(&dword_22E696000, v0, v1, "%@: Error from UI Helper process while displaying HSA2 login notification - %@");
}

void __68__FLUIHelperController_showHSA2PasswordChangeForAppleID_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_1(&dword_22E696000, v0, v1, "%@: Error from UI Helper process while displaying HSA2 login password change - %@");
}

void __71__FLUIHelperController_showUIForHSA2LoginCode_notification_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_1(&dword_22E696000, v0, v1, "%@: Error from UI Helper process while displaying HSA2 login code - %@");
}

void __76__FLUIHelperController_tearDownUIForHSA2LoginNotificationWithPushMessageID___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_1(&dword_22E696000, v0, v1, "%@: Error from UI Helper process while tearing down HSA2 login notification - %@");
}

@end