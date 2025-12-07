@interface CRSAppHistoryController
- (CRSAppHistoryController)init;
- (void)addAnalyticsValues:(id)values toEvent:(unint64_t)event completion:(id)completion;
- (void)fetchDockAppForCategory:(unint64_t)category completion:(id)completion;
- (void)fetchSessionEchoContextsWithCompletion:(id)completion;
- (void)fetchSessionUIContextsWithCompletion:(id)completion;
- (void)fetchUIContextsWithCompletion:(id)completion;
- (void)invalidate;
@end

@implementation CRSAppHistoryController

- (CRSAppHistoryController)init
{
  v24 = *MEMORY[0x277D85DE8];
  v21.receiver = self;
  v21.super_class = CRSAppHistoryController;
  v2 = [(CRSAppHistoryController *)&v21 init];
  if (v2)
  {
    v3 = MEMORY[0x277CF3288];
    identifier = [MEMORY[0x277CF8980] identifier];
    v5 = [v3 endpointForMachName:@"com.apple.CarPlayApp.service" service:identifier instance:0];

    serviceQuality = [MEMORY[0x277CF8980] serviceQuality];
    [serviceQuality serviceClass];
    SerialWithQoS = BSDispatchQueueCreateSerialWithQoS();

    objc_storeStrong(&v2->_callbackQueue, SerialWithQoS);
    v8 = [MEMORY[0x277CF3280] connectionWithEndpoint:v5];
    connection = v2->_connection;
    v2->_connection = v8;

    v10 = v2->_connection;
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __31__CRSAppHistoryController_init__block_invoke;
    v18 = &unk_278D8E560;
    v19 = v2;
    v11 = SerialWithQoS;
    v20 = v11;
    [(BSServiceConnection *)v10 configureConnection:&v15];
    v12 = CRSLogForCategory(1uLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = v2->_connection;
      *buf = 138412290;
      v23 = v13;
      _os_log_impl(&dword_242FB5000, v12, OS_LOG_TYPE_INFO, "Activating connection! %@", buf, 0xCu);
    }

    [(BSServiceConnection *)v2->_connection activate:v15];
  }

  return v2;
}

void __31__CRSAppHistoryController_init__block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CF8980];
  v6 = a2;
  v4 = [v3 serviceQuality];
  [v6 setServiceQuality:v4];

  v5 = [MEMORY[0x277CF8980] interface];
  [v6 setInterface:v5];

  [v6 setInterfaceTarget:*(a1 + 32)];
  [v6 setActivationHandler:&__block_literal_global_6];
  [v6 setInterruptionHandler:&__block_literal_global_42];
  [v6 setInvalidationHandler:&__block_literal_global_45];
  [v6 setTargetQueue:*(a1 + 40)];
}

void __31__CRSAppHistoryController_init__block_invoke_2(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = CRSLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_242FB5000, v3, OS_LOG_TYPE_INFO, "Connection activated! %@", &v4, 0xCu);
  }
}

- (void)invalidate
{
  v3 = CRSLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_242FB5000, v3, OS_LOG_TYPE_INFO, "[CRSAppHistoryController] invalidating connection.", v5, 2u);
  }

  connection = [(CRSAppHistoryController *)self connection];
  [connection invalidate];
}

void __31__CRSAppHistoryController_init__block_invoke_40(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = CRSLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_242FB5000, v3, OS_LOG_TYPE_INFO, "[CRSAppHistoryController] connection interrupted! Reactivating... %@", &v4, 0xCu);
  }

  [v2 activate];
}

void __31__CRSAppHistoryController_init__block_invoke_43(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = CRSLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_242FB5000, v3, OS_LOG_TYPE_INFO, "Connection invalidated! %@", &v4, 0xCu);
  }
}

- (void)fetchDockAppForCategory:(unint64_t)category completion:(id)completion
{
  v16 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  if (completionCopy)
  {
    v7 = CRSLogForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:category];
      *buf = 138412290;
      v15 = v8;
      _os_log_impl(&dword_242FB5000, v7, OS_LOG_TYPE_DEFAULT, "Received request for dock app in category %@.", buf, 0xCu);
    }

    connection = [(CRSAppHistoryController *)self connection];
    remoteTarget = [connection remoteTarget];
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:category];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __62__CRSAppHistoryController_fetchDockAppForCategory_completion___block_invoke;
    v12[3] = &unk_278D8E588;
    v13 = completionCopy;
    [remoteTarget fetchDockAppInCategory:v11 completion:v12];
  }
}

- (void)fetchUIContextsWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    v5 = CRSLogForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_242FB5000, v5, OS_LOG_TYPE_DEFAULT, "Received UI Context fetch.", buf, 2u);
    }

    connection = [(CRSAppHistoryController *)self connection];
    remoteTarget = [connection remoteTarget];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __57__CRSAppHistoryController_fetchUIContextsWithCompletion___block_invoke;
    v8[3] = &unk_278D8E5B0;
    v9 = completionCopy;
    [remoteTarget fetchUIContextStatesWithCompletion:v8];
  }
}

- (void)fetchSessionUIContextsWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    v5 = CRSLogForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_242FB5000, v5, OS_LOG_TYPE_DEFAULT, "Received session UI Context fetch.", buf, 2u);
    }

    connection = [(CRSAppHistoryController *)self connection];
    remoteTarget = [connection remoteTarget];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __64__CRSAppHistoryController_fetchSessionUIContextsWithCompletion___block_invoke;
    v8[3] = &unk_278D8E5B0;
    v9 = completionCopy;
    [remoteTarget fetchSessionUIContextStatesWithCompletion:v8];
  }
}

- (void)fetchSessionEchoContextsWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    v5 = CRSLogForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_242FB5000, v5, OS_LOG_TYPE_DEFAULT, "Received session Echo Context fetch.", buf, 2u);
    }

    connection = [(CRSAppHistoryController *)self connection];
    remoteTarget = [connection remoteTarget];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __66__CRSAppHistoryController_fetchSessionEchoContextsWithCompletion___block_invoke;
    v8[3] = &unk_278D8E5B0;
    v9 = completionCopy;
    [remoteTarget fetchSessionEchoContextStatesWithCompletion:v8];
  }
}

- (void)addAnalyticsValues:(id)values toEvent:(unint64_t)event completion:(id)completion
{
  v20 = *MEMORY[0x277D85DE8];
  valuesCopy = values;
  if (completion)
  {
    completionCopy = completion;
    v10 = CRSLogForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:event];
      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(valuesCopy, "count")}];
      v16 = 138412546;
      v17 = v11;
      v18 = 2112;
      v19 = v12;
      _os_log_impl(&dword_242FB5000, v10, OS_LOG_TYPE_DEFAULT, "Sending session analytics payload for event %@ with %@ item(s).", &v16, 0x16u);
    }

    connection = [(CRSAppHistoryController *)self connection];
    remoteTarget = [connection remoteTarget];
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:event];
    [remoteTarget setAnalyticsValues:valuesCopy onEvent:v15 completion:completionCopy];
  }
}

@end