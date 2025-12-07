@interface CRSAppHistoryService
- (CRSAppHistoryDataProviding)dataProvider;
- (CRSAppHistoryService)initWithDataProvider:(id)provider applicationLibrary:(id)library policyEvaluator:(id)evaluator;
- (void)_appLibraryUpdated:(id)updated;
- (void)_connectionQueue_addConnection:(id)connection;
- (void)_connectionQueue_removeConnection:(id)connection;
- (void)_setupApplicationLibraryObservations;
- (void)fetchDockAppInCategory:(id)category completion:(id)completion;
- (void)fetchSessionEchoContextStatesWithCompletion:(id)completion;
- (void)fetchSessionUIContextStatesWithCompletion:(id)completion;
- (void)fetchUIContextStatesWithCompletion:(id)completion;
- (void)invalidate;
- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context;
- (void)serviceFetchInstrumentClusterURLs:(id)ls;
- (void)setAnalyticsValues:(id)values onEvent:(id)event completion:(id)completion;
- (void)setInstrumentClusterURLs:(id)ls;
@end

@implementation CRSAppHistoryService

- (CRSAppHistoryDataProviding)dataProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_dataProvider);

  return WeakRetained;
}

- (CRSAppHistoryService)initWithDataProvider:(id)provider applicationLibrary:(id)library policyEvaluator:(id)evaluator
{
  v30 = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  libraryCopy = library;
  evaluatorCopy = evaluator;
  v27.receiver = self;
  v27.super_class = CRSAppHistoryService;
  v11 = [(CRSAppHistoryService *)&v27 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_dataProvider, providerCopy);
    objc_storeStrong(&v12->_applicationLibrary, library);
    objc_storeStrong(&v12->_policyEvaluator, evaluator);
    [(CRSAppHistoryService *)v12 _setupApplicationLibraryObservations];
    [(CRSAppHistoryService *)v12 _appLibraryUpdated:v12->_applicationLibrary];
    serial = [MEMORY[0x277CF0C18] serial];
    v14 = BSDispatchQueueCreate();
    connectionQueue = v12->_connectionQueue;
    v12->_connectionQueue = v14;

    v16 = [MEMORY[0x277CCAA50] hashTableWithOptions:512];
    connections = v12->_connections;
    v12->_connections = v16;

    v18 = MEMORY[0x277CF32A0];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __80__CRSAppHistoryService_initWithDataProvider_applicationLibrary_policyEvaluator___block_invoke;
    v25[3] = &unk_278D8E008;
    v19 = v12;
    v26 = v19;
    v20 = [v18 listenerWithConfigurator:v25];
    v21 = v19[2];
    v19[2] = v20;

    v22 = CRSLogForCategory(0);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = v19[2];
      *buf = 138412290;
      v29 = v23;
      _os_log_impl(&dword_242FB5000, v22, OS_LOG_TYPE_INFO, "Activating listener! %@", buf, 0xCu);
    }

    [v19[2] activate];
  }

  return v12;
}

void __80__CRSAppHistoryService_initWithDataProvider_applicationLibrary_policyEvaluator___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 setDomain:@"com.apple.CarPlay"];
  v3 = [MEMORY[0x277CF8980] identifier];
  [v4 setService:v3];

  [v4 setDelegate:*(a1 + 32)];
}

- (void)setInstrumentClusterURLs:(id)ls
{
  v15 = *MEMORY[0x277D85DE8];
  lsCopy = ls;
  if (![(NSArray *)self->_instrumentClusterURLs isEqualToArray:lsCopy])
  {
    v5 = CRSLogForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = lsCopy;
      _os_log_impl(&dword_242FB5000, v5, OS_LOG_TYPE_DEFAULT, "Cluster URLs updated: %@", buf, 0xCu);
    }

    v6 = [lsCopy copy];
    instrumentClusterURLs = self->_instrumentClusterURLs;
    self->_instrumentClusterURLs = v6;

    v8 = self->_instrumentClusterURLs;
    if (v8)
    {
      v11 = *MEMORY[0x277CF8950];
      v12 = v8;
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    }

    else
    {
      v9 = 0;
    }

    defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
    [defaultCenter postNotificationName:@"CRInstrumentClusterURLsDidChangeNotification" object:0 userInfo:v9];
  }
}

- (void)invalidate
{
  [(FBSApplicationLibrary *)self->_applicationLibrary removeObserverForToken:self->_installToken];
  [(FBSApplicationLibrary *)self->_applicationLibrary removeObserverForToken:self->_uninstallToken];
  [(FBSApplicationLibrary *)self->_applicationLibrary removeObserverForToken:self->_replaceToken];
  listener = self->_listener;

  [(BSServiceConnectionListener *)listener invalidate];
}

- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context
{
  v19 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  v7 = CRSLogForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v18 = connectionCopy;
    _os_log_impl(&dword_242FB5000, v7, OS_LOG_TYPE_INFO, "Received connection! %@", buf, 0xCu);
  }

  remoteProcess = [connectionCopy remoteProcess];
  v9 = [remoteProcess hasEntitlement:@"com.apple.private.CarPlayServices.app-history"];

  if ((v9 & 1) == 0)
  {
    v10 = CRSLogForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [CRSAppHistoryService listener:connectionCopy didReceiveConnection:? withContext:?];
    }
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __66__CRSAppHistoryService_listener_didReceiveConnection_withContext___block_invoke;
  v16[3] = &unk_278D8E1A8;
  v16[4] = self;
  [connectionCopy configureConnection:v16];
  v11 = CRSLogForCategory(1uLL);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v18 = connectionCopy;
    _os_log_impl(&dword_242FB5000, v11, OS_LOG_TYPE_INFO, "Activating connection... %@", buf, 0xCu);
  }

  connectionQueue = [(CRSAppHistoryService *)self connectionQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__CRSAppHistoryService_listener_didReceiveConnection_withContext___block_invoke_87;
  block[3] = &unk_278D8E3D0;
  block[4] = self;
  v15 = connectionCopy;
  v13 = connectionCopy;
  dispatch_async(connectionQueue, block);
}

void __66__CRSAppHistoryService_listener_didReceiveConnection_withContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CF8980];
  v4 = a2;
  v5 = [v3 serviceQuality];
  [v4 setServiceQuality:v5];

  v6 = [MEMORY[0x277CF8980] interface];
  [v4 setInterface:v6];

  [v4 setInterfaceTarget:*(a1 + 32)];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __66__CRSAppHistoryService_listener_didReceiveConnection_withContext___block_invoke_2;
  v8[3] = &unk_278D8E3A8;
  v8[4] = *(a1 + 32);
  [v4 setInvalidationHandler:v8];
  v7 = [*(a1 + 32) connectionQueue];
  [v4 setTargetQueue:v7];
}

void __66__CRSAppHistoryService_listener_didReceiveConnection_withContext___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = CRSLogForCategory(1uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_242FB5000, v4, OS_LOG_TYPE_INFO, "Connection invalidated! %@", &v5, 0xCu);
  }

  [*(a1 + 32) _connectionQueue_removeConnection:v3];
}

uint64_t __66__CRSAppHistoryService_listener_didReceiveConnection_withContext___block_invoke_87(uint64_t a1)
{
  [*(a1 + 32) _connectionQueue_addConnection:*(a1 + 40)];
  v2 = *(a1 + 40);

  return [v2 activate];
}

- (void)fetchUIContextStatesWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = CRSLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_242FB5000, v5, OS_LOG_TYPE_DEFAULT, "Received request for UI context states.", buf, 2u);
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__CRSAppHistoryService_fetchUIContextStatesWithCompletion___block_invoke;
  v7[3] = &unk_278D8E420;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

void __59__CRSAppHistoryService_fetchUIContextStatesWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dataProvider];
  [v2 getUIContextStatesWithCompletion:*(a1 + 40)];
}

- (void)fetchSessionUIContextStatesWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = CRSLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_242FB5000, v5, OS_LOG_TYPE_DEFAULT, "Received request for session UI context states.", buf, 2u);
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__CRSAppHistoryService_fetchSessionUIContextStatesWithCompletion___block_invoke;
  v7[3] = &unk_278D8E420;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

void __66__CRSAppHistoryService_fetchSessionUIContextStatesWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dataProvider];
  [v2 getSessionUIContextStatesWithCompletion:*(a1 + 40)];
}

- (void)fetchSessionEchoContextStatesWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = CRSLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_242FB5000, v5, OS_LOG_TYPE_DEFAULT, "Received request for session UI context states.", buf, 2u);
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68__CRSAppHistoryService_fetchSessionEchoContextStatesWithCompletion___block_invoke;
  v7[3] = &unk_278D8E420;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

void __68__CRSAppHistoryService_fetchSessionEchoContextStatesWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dataProvider];
  [v2 getSessionEchoContextStatesWithCompletion:*(a1 + 40)];
}

- (void)setAnalyticsValues:(id)values onEvent:(id)event completion:(id)completion
{
  v22 = *MEMORY[0x277D85DE8];
  valuesCopy = values;
  eventCopy = event;
  completionCopy = completion;
  v11 = CRSLogForCategory(0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(valuesCopy, "count")}];
    *buf = 138412290;
    v21 = v12;
    _os_log_impl(&dword_242FB5000, v11, OS_LOG_TYPE_DEFAULT, "Received analytics values for current session, with %@ item(s).", buf, 0xCu);
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __62__CRSAppHistoryService_setAnalyticsValues_onEvent_completion___block_invoke;
  v16[3] = &unk_278D8E448;
  v16[4] = self;
  v17 = valuesCopy;
  v18 = eventCopy;
  v19 = completionCopy;
  v13 = completionCopy;
  v14 = eventCopy;
  v15 = valuesCopy;
  dispatch_async(MEMORY[0x277D85CD0], v16);
}

void __62__CRSAppHistoryService_setAnalyticsValues_onEvent_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dataProvider];
  [v2 setAnalyticsValues:*(a1 + 40) onEvent:objc_msgSend(*(a1 + 48) completion:{"unsignedIntegerValue"), *(a1 + 56)}];
}

- (void)serviceFetchInstrumentClusterURLs:(id)ls
{
  lsCopy = ls;
  v5 = CRSLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_242FB5000, v5, OS_LOG_TYPE_DEFAULT, "serviceFetchInstrumentClusterURLs: updating geo", buf, 2u);
  }

  policyEvaluator = [(CRSAppHistoryService *)self policyEvaluator];
  isGeoSupported = [policyEvaluator isGeoSupported];

  policyEvaluator2 = [(CRSAppHistoryService *)self policyEvaluator];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __58__CRSAppHistoryService_serviceFetchInstrumentClusterURLs___block_invoke;
  v10[3] = &unk_278D8E498;
  v12 = isGeoSupported;
  v10[4] = self;
  v11 = lsCopy;
  v9 = lsCopy;
  [policyEvaluator2 updateGeoSupportedWithCompletion:v10];
}

void __58__CRSAppHistoryService_serviceFetchInstrumentClusterURLs___block_invoke(uint64_t a1, char a2)
{
  v4 = CRSLogForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_242FB5000, v4, OS_LOG_TYPE_DEFAULT, "Geo support updated, updating URLs", buf, 2u);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__CRSAppHistoryService_serviceFetchInstrumentClusterURLs___block_invoke_90;
  block[3] = &unk_278D8E470;
  v8 = a2;
  v9 = *(a1 + 48);
  v5 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v7 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __58__CRSAppHistoryService_serviceFetchInstrumentClusterURLs___block_invoke_90(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  if (*(a1 + 48) != *(a1 + 49))
  {
    v2 = CRSLogForCategory(0);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&dword_242FB5000, v2, OS_LOG_TYPE_DEFAULT, "Geo support changed, updating urls", &v9, 2u);
    }

    v3 = *(a1 + 32);
    v4 = [v3 applicationLibrary];
    [v3 _appLibraryUpdated:v4];
  }

  v5 = CRSLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [*(a1 + 32) instrumentClusterURLs];
    v9 = 138543362;
    v10 = v6;
    _os_log_impl(&dword_242FB5000, v5, OS_LOG_TYPE_DEFAULT, "serviceFetchInstrumentClusterURLs: URLs supported: %{public}@", &v9, 0xCu);
  }

  v7 = *(a1 + 40);
  v8 = [*(a1 + 32) instrumentClusterURLs];
  (*(v7 + 16))(v7, v8, 0);
}

- (void)fetchDockAppInCategory:(id)category completion:(id)completion
{
  v16 = *MEMORY[0x277D85DE8];
  categoryCopy = category;
  completionCopy = completion;
  v8 = CRSLogForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = categoryCopy;
    _os_log_impl(&dword_242FB5000, v8, OS_LOG_TYPE_DEFAULT, "Received request for dock app in category %@.", buf, 0xCu);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__CRSAppHistoryService_fetchDockAppInCategory_completion___block_invoke;
  block[3] = &unk_278D8E4C0;
  block[4] = self;
  v12 = categoryCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = categoryCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __58__CRSAppHistoryService_fetchDockAppInCategory_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dataProvider];
  [v2 fetchDockAppInCategory:objc_msgSend(*(a1 + 40) completion:{"unsignedIntegerValue"), *(a1 + 48)}];
}

- (void)_connectionQueue_addConnection:(id)connection
{
  connectionCopy = connection;
  connections = [(CRSAppHistoryService *)self connections];
  [connections addObject:connectionCopy];
}

- (void)_connectionQueue_removeConnection:(id)connection
{
  connectionCopy = connection;
  connections = [(CRSAppHistoryService *)self connections];
  [connections removeObject:connectionCopy];
}

- (void)_setupApplicationLibraryObservations
{
  objc_initWeak(&location, self);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __60__CRSAppHistoryService__setupApplicationLibraryObservations__block_invoke;
  v15[3] = &unk_278D8E4E8;
  objc_copyWeak(&v16, &location);
  v3 = MEMORY[0x245D28FB0](v15);
  applicationLibrary = [(CRSAppHistoryService *)self applicationLibrary];
  v5 = [applicationLibrary observeDidAddApplicationsWithBlock:v3];
  installToken = self->_installToken;
  self->_installToken = v5;

  applicationLibrary2 = [(CRSAppHistoryService *)self applicationLibrary];
  v8 = [applicationLibrary2 observeDidRemoveApplicationsWithBlock:v3];
  uninstallToken = self->_uninstallToken;
  self->_uninstallToken = v8;

  applicationLibrary3 = [(CRSAppHistoryService *)self applicationLibrary];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __60__CRSAppHistoryService__setupApplicationLibraryObservations__block_invoke_3;
  v13[3] = &unk_278D8E510;
  objc_copyWeak(&v14, &location);
  v11 = [applicationLibrary3 observeDidReplaceApplicationsWithBlock:v13];
  replaceToken = self->_replaceToken;
  self->_replaceToken = v11;

  objc_destroyWeak(&v14);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __60__CRSAppHistoryService__setupApplicationLibraryObservations__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__CRSAppHistoryService__setupApplicationLibraryObservations__block_invoke_2;
  block[3] = &unk_278D8E380;
  block[4] = WeakRetained;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __60__CRSAppHistoryService__setupApplicationLibraryObservations__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 applicationLibrary];
  [v1 _appLibraryUpdated:v2];
}

void __60__CRSAppHistoryService__setupApplicationLibraryObservations__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__CRSAppHistoryService__setupApplicationLibraryObservations__block_invoke_4;
  block[3] = &unk_278D8E380;
  block[4] = WeakRetained;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __60__CRSAppHistoryService__setupApplicationLibraryObservations__block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 applicationLibrary];
  [v1 _appLibraryUpdated:v2];
}

- (void)_appLibraryUpdated:(id)updated
{
  v28 = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v5 = CRSLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_242FB5000, v5, OS_LOG_TYPE_DEFAULT, "App library updated", buf, 2u);
  }

  if (updatedCopy)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v7 = [updatedCopy applicationInfoForBundleIdentifier:@"com.apple.Maps"];
    if (v7)
    {
      policyEvaluator = [(CRSAppHistoryService *)self policyEvaluator];
      isGeoSupported = [policyEvaluator isGeoSupported];

      if (isGeoSupported)
      {
        v25 = 0;
        v10 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:@"com.apple.Maps" allowPlaceholder:0 error:&v25];
        v11 = v25;
        carPlayInstrumentClusterURLSchemes = [v10 carPlayInstrumentClusterURLSchemes];
        v13 = CRSLogForCategory(0);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v27 = carPlayInstrumentClusterURLSchemes;
          _os_log_impl(&dword_242FB5000, v13, OS_LOG_TYPE_DEFAULT, "Adding Maps URLs %{public}@", buf, 0xCu);
        }

        [v6 addObjectsFromArray:carPlayInstrumentClusterURLSchemes];
      }
    }

    allInstalledApplications = [updatedCopy allInstalledApplications];
    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __43__CRSAppHistoryService__appLibraryUpdated___block_invoke;
    v23 = &unk_278D8E538;
    v15 = v6;
    v24 = v15;
    [allInstalledApplications enumerateObjectsUsingBlock:&v20];

    v16 = CRSLogForCategory(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      allObjects = [v15 allObjects];
      *buf = 138543362;
      v27 = allObjects;
      _os_log_impl(&dword_242FB5000, v16, OS_LOG_TYPE_DEFAULT, "Setting new cluster URLs: %{public}@", buf, 0xCu);
    }

    allObjects2 = [v15 allObjects];
    [(CRSAppHistoryService *)self setInstrumentClusterURLs:allObjects2];
  }

  else
  {
    v19 = CRSLogForCategory(0);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [CRSAppHistoryService _appLibraryUpdated:v19];
    }

    [(CRSAppHistoryService *)self setInstrumentClusterURLs:MEMORY[0x277CBEBF8]];
  }
}

void __43__CRSAppHistoryService__appLibraryUpdated___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = [v6 bundleIdentifier];
  v8 = [v7 isEqualToString:@"com.apple.Maps"];

  if ((v8 & 1) == 0)
  {
    v9 = objc_alloc(MEMORY[0x277CC1E70]);
    v10 = [v6 bundleIdentifier];
    v18 = 0;
    v11 = [v9 initWithBundleIdentifier:v10 allowPlaceholder:0 error:&v18];
    v12 = v18;

    if (v12)
    {
      v13 = CRSLogForCategory(0);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        __43__CRSAppHistoryService__appLibraryUpdated___block_invoke_cold_1(v6);
      }
    }

    else if ([v11 supportsCarPlayInstrumentClusterScene])
    {
      v14 = CRSLogForCategory(0);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [v6 bundleIdentifier];
        *buf = 138543362;
        v21 = v15;
        _os_log_impl(&dword_242FB5000, v14, OS_LOG_TYPE_DEFAULT, "Adding default URLs for %{public}@", buf, 0xCu);
      }

      v16 = *(a1 + 32);
      v19[0] = @"maps:/car/instrumentcluster/instructioncard";
      v19[1] = @"maps:/car/instrumentcluster/map";
      v19[2] = @"maps:/car/instrumentcluster";
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:3];
      [v16 addObjectsFromArray:v17];

      *a4 = 1;
    }
  }
}

- (void)listener:(void *)a1 didReceiveConnection:withContext:.cold.1(void *a1)
{
  v1 = [a1 remoteProcess];
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = v1;
  OUTLINED_FUNCTION_0_0(&dword_242FB5000, v2, v3, "Process does not have the required entitlement: %@", v4, v5, v6, v7, v8, DWORD2(v8));
}

void __43__CRSAppHistoryService__appLibraryUpdated___block_invoke_cold_1(void *a1)
{
  v1 = [a1 bundleIdentifier];
  LODWORD(v8) = 138543362;
  *(&v8 + 4) = v1;
  OUTLINED_FUNCTION_0_0(&dword_242FB5000, v2, v3, "Error fetching app record for %{public}@", v4, v5, v6, v7, v8, DWORD2(v8));
}

@end