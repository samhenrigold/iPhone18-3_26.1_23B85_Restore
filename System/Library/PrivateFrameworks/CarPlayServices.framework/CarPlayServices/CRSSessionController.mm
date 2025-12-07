@interface CRSSessionController
- (CRSSessionController)init;
- (void)invalidate;
@end

@implementation CRSSessionController

- (CRSSessionController)init
{
  v18 = *MEMORY[0x277D85DE8];
  v15.receiver = self;
  v15.super_class = CRSSessionController;
  v2 = [(CRSSessionController *)&v15 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = MEMORY[0x277CF3288];
    v5 = +[CRSSessionSpecification identifier];
    v6 = [v4 endpointForMachName:@"com.apple.CarPlayApp.service" service:v5 instance:0];

    v7 = [MEMORY[0x277CF3280] connectionWithEndpoint:v6];
    connection = v3->_connection;
    v3->_connection = v7;

    v9 = v3->_connection;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __28__CRSSessionController_init__block_invoke;
    v13[3] = &unk_278D8E1A8;
    v14 = v3;
    [(BSServiceConnection *)v9 configureConnection:v13];
    v10 = CRSLogForCategory(3uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v3->_connection;
      *buf = 138412290;
      v17 = v11;
      _os_log_impl(&dword_242FB5000, v10, OS_LOG_TYPE_DEFAULT, "Activating connection! %@", buf, 0xCu);
    }

    [(BSServiceConnection *)v3->_connection activate];
  }

  return v3;
}

void __28__CRSSessionController_init__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = +[CRSSessionSpecification serviceQuality];
  [v5 setServiceQuality:v3];

  v4 = +[CRSSessionSpecification interface];
  [v5 setInterface:v4];

  [v5 setInterfaceTarget:*(a1 + 32)];
  [v5 setActivationHandler:&__block_literal_global_0];
  [v5 setInterruptionHandler:&__block_literal_global_6];
  [v5 setInvalidationHandler:&__block_literal_global_9];
}

void __28__CRSSessionController_init__block_invoke_2(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = CRSLogForCategory(3uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_242FB5000, v3, OS_LOG_TYPE_DEFAULT, "Connection activated! %@", &v4, 0xCu);
  }
}

void __28__CRSSessionController_init__block_invoke_4(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = CRSLogForCategory(3uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_242FB5000, v3, OS_LOG_TYPE_DEFAULT, "Connection interrupted! Reactivating... %@", &v4, 0xCu);
  }

  [v2 activate];
}

void __28__CRSSessionController_init__block_invoke_7(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = CRSLogForCategory(3uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_242FB5000, v3, OS_LOG_TYPE_DEFAULT, "Connection invalidated! %@", &v4, 0xCu);
  }
}

- (void)invalidate
{
  v7 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  if (!self->_lock_invalidated)
  {
    v3 = CRSLogForCategory(3uLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      connection = self->_connection;
      v5 = 138412290;
      v6 = connection;
      _os_log_impl(&dword_242FB5000, v3, OS_LOG_TYPE_DEFAULT, "Invalidating connection! %@", &v5, 0xCu);
    }

    [(BSServiceConnection *)self->_connection invalidate];
    self->_lock_invalidated = 1;
  }

  os_unfair_lock_unlock(&self->_lock);
}

@end