@interface CAFAppLinksManager
- (CAFAppLinksManager)initWithChangeBlock:(id)block;
- (void)_connectionActivated;
- (void)_connectionInterrupted;
- (void)_fetchSnapshot;
- (void)_setupConnection;
- (void)invalidate;
- (void)refreshAppLinksSnapshot;
@end

@implementation CAFAppLinksManager

- (CAFAppLinksManager)initWithChangeBlock:(id)block
{
  blockCopy = block;
  v16.receiver = self;
  v16.super_class = CAFAppLinksManager;
  v5 = [(CAFAppLinksManager *)&v16 init];
  v6 = v5;
  if (v5)
  {
    v7 = CAFAppLinksLogging(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&dword_231618000, v7, OS_LOG_TYPE_DEFAULT, "Initializing appLinks manager", v15, 2u);
    }

    v8 = +[CAFAppLinksServiceSpecification identifier];
    serial = [MEMORY[0x277CF0C18] serial];
    v10 = BSDispatchQueueCreate();
    workQueue = v6->_workQueue;
    v6->_workQueue = v10;

    v12 = MEMORY[0x231933C60](blockCopy);
    snapshotChangeBlock = v6->_snapshotChangeBlock;
    v6->_snapshotChangeBlock = v12;

    [(CAFAppLinksManager *)v6 _setupConnection];
  }

  return v6;
}

- (void)_setupConnection
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = +[CAFAppLinksServiceSpecification identifier];
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_231618000, self, OS_LOG_TYPE_ERROR, "Failed to create appLinks endpoint! This process can't look up the machport. (%@)", &v3, 0xCu);
}

void __38__CAFAppLinksManager__setupConnection__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277CF32C8] userInitiated];
  [v3 setServiceQuality:v4];

  v5 = +[CAFAppLinksServiceSpecification interface];
  [v3 setInterface:v5];

  [v3 setInterfaceTarget:*(a1 + 32)];
  v6 = [*(a1 + 32) workQueue];
  [v3 setTargetQueue:v6];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __38__CAFAppLinksManager__setupConnection__block_invoke_2;
  v12[3] = &unk_27890F300;
  objc_copyWeak(&v13, (a1 + 40));
  [v3 setActivationHandler:v12];
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __38__CAFAppLinksManager__setupConnection__block_invoke_3;
  v10 = &unk_27890F300;
  objc_copyWeak(&v11, (a1 + 40));
  [v3 setInterruptionHandler:&v7];
  [v3 setInvalidationHandler:{&__block_literal_global_15, v7, v8, v9, v10}];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&v13);
}

void __38__CAFAppLinksManager__setupConnection__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _connectionActivated];
    WeakRetained = v2;
  }
}

void __38__CAFAppLinksManager__setupConnection__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _connectionInterrupted];
    WeakRetained = v2;
  }
}

void __38__CAFAppLinksManager__setupConnection__block_invoke_4(uint64_t a1)
{
  v1 = CAFAppLinksLogging(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_231618000, v1, OS_LOG_TYPE_DEFAULT, "AppLinks connection invalidated", v2, 2u);
  }
}

- (void)_connectionActivated
{
  v3 = CAFAppLinksLogging(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_231618000, v3, OS_LOG_TYPE_DEFAULT, "AppLinks connection activated", v4, 2u);
  }

  [(CAFAppLinksManager *)self _fetchSnapshot];
}

- (void)_connectionInterrupted
{
  v3 = CAFAppLinksLogging(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_231618000, v3, OS_LOG_TYPE_DEFAULT, "AppLinks connection interrupted", v4, 2u);
  }

  [(CAFAppLinksManager *)self _setupConnection];
}

- (void)_fetchSnapshot
{
  v3 = CAFAppLinksLogging(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_231618000, v3, OS_LOG_TYPE_DEFAULT, "Fetching latest appLinks snapshot", buf, 2u);
  }

  remoteTarget = [(BSServiceConnection *)self->_connection remoteTarget];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __36__CAFAppLinksManager__fetchSnapshot__block_invoke;
  v5[3] = &unk_27890F398;
  v5[4] = self;
  [remoteTarget fetchAppLinksSnapshotWithReply:v5];
}

void __36__CAFAppLinksManager__fetchSnapshot__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = CAFAppLinksLogging(v6);
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __38__CAFNowPlayingManager__fetchSnapshot__block_invoke_cold_1(v6, v8);
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = v5;
      _os_log_impl(&dword_231618000, v8, OS_LOG_TYPE_DEFAULT, "Received updated appLinks snapshot %@", buf, 0xCu);
    }

    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __36__CAFAppLinksManager__fetchSnapshot__block_invoke_6;
    v9[3] = &unk_27890D548;
    v9[4] = *(a1 + 32);
    v10 = v5;
    dispatch_async(MEMORY[0x277D85CD0], v9);
  }
}

void __36__CAFAppLinksManager__fetchSnapshot__block_invoke_6(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 8), *(a1 + 40));
  v2 = [*(a1 + 32) snapshotChangeBlock];

  if (v2)
  {
    v3 = [*(a1 + 32) snapshotChangeBlock];
    v3[2](v3, *(a1 + 40));
  }
}

- (void)refreshAppLinksSnapshot
{
  v3 = CAFAppLinksLogging(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_231618000, v3, OS_LOG_TYPE_DEFAULT, "Refreshing appLinks snapshot", v4, 2u);
  }

  [(CAFAppLinksManager *)self _fetchSnapshot];
}

- (void)invalidate
{
  v3 = CAFAppLinksLogging(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_231618000, v3, OS_LOG_TYPE_DEFAULT, "Invalidating appLinks connection", v5, 2u);
  }

  [(BSServiceConnection *)self->_connection invalidate];
  connection = self->_connection;
  self->_connection = 0;
}

@end