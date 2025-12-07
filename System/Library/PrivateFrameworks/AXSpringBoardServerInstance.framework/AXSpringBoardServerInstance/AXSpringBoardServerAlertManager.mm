@interface AXSpringBoardServerAlertManager
- (BOOL)isShowingAXUIViewService:(id)service;
- (void)hideAXUIViewService:(id)service;
- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error;
- (void)remoteAlertHandleDidActivate:(id)activate;
- (void)remoteAlertHandleDidDeactivate:(id)deactivate;
- (void)scheduleShowAXUIViewService:(id)service withData:(id)data;
- (void)showAXUIViewService:(id)service withData:(id)data;
- (void)showAXUIViewService:(id)service withData:(id)data withPreviousViewDismissal:(BOOL)dismissal;
@end

@implementation AXSpringBoardServerAlertManager

- (void)showAXUIViewService:(id)service withData:(id)data withPreviousViewDismissal:(BOOL)dismissal
{
  dismissalCopy = dismissal;
  v25 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  dataCopy = data;
  if (dismissalCopy && ([(AXSpringBoardServerAlertManager *)self handlesByService], v10 = objc_claimAutoreleasedReturnValue(), v10, v10))
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    handlesByService = [(AXSpringBoardServerAlertManager *)self handlesByService];
    allKeys = [handlesByService allKeys];

    v13 = [allKeys countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v21;
      do
      {
        v16 = 0;
        do
        {
          if (*v21 != v15)
          {
            objc_enumerationMutation(allKeys);
          }

          v17 = *(*(&v20 + 1) + 8 * v16);
          handlesByService2 = [(AXSpringBoardServerAlertManager *)self handlesByService];
          v19 = [handlesByService2 objectForKeyedSubscript:v17];

          [v19 invalidate];
          ++v16;
        }

        while (v14 != v16);
        v14 = [allKeys countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v14);
    }

    [(AXSpringBoardServerAlertManager *)self scheduleShowAXUIViewService:serviceCopy withData:dataCopy];
  }

  else
  {
    [(AXSpringBoardServerAlertManager *)self showAXUIViewService:serviceCopy withData:dataCopy];
  }
}

- (void)scheduleShowAXUIViewService:(id)service withData:(id)data
{
  serviceCopy = service;
  dataCopy = data;
  objc_initWeak(&location, self);
  v8 = dispatch_time(0, 250000000);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __72__AXSpringBoardServerAlertManager_scheduleShowAXUIViewService_withData___block_invoke;
  v11[3] = &unk_27842C700;
  objc_copyWeak(&v14, &location);
  v12 = serviceCopy;
  v13 = dataCopy;
  v9 = dataCopy;
  v10 = serviceCopy;
  dispatch_after(v8, MEMORY[0x277D85CD0], v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __72__AXSpringBoardServerAlertManager_scheduleShowAXUIViewService_withData___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained handlesByService];
  v4 = [v3 allKeys];

  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * v8);
        v10 = objc_loadWeakRetained((a1 + 48));
        v11 = [v10 handlesByService];
        v12 = [v11 objectForKeyedSubscript:v9];

        if (![v12 isValid])
        {
          v13 = objc_loadWeakRetained((a1 + 48));
          [v13 showAXUIViewService:*(a1 + 32) withData:*(a1 + 40)];

          goto LABEL_11;
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v4 = objc_loadWeakRetained((a1 + 48));
  [v4 scheduleShowAXUIViewService:*(a1 + 32) withData:*(a1 + 40)];
LABEL_11:
}

- (void)showAXUIViewService:(id)service withData:(id)data
{
  v23 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  serviceCopy = service;
  sb_alertDefinition = [serviceCopy sb_alertDefinition];
  v9 = objc_alloc_init(MEMORY[0x277D66BD0]);
  [v9 setUserInfo:dataCopy];
  v10 = AXLogUIViewService();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    serviceName = [sb_alertDefinition serviceName];
    viewControllerClassName = [sb_alertDefinition viewControllerClassName];
    v19 = 138412546;
    v20 = serviceName;
    v21 = 2112;
    v22 = viewControllerClassName;
    _os_log_impl(&dword_21FE6B000, v10, OS_LOG_TYPE_INFO, "Activating remote alert service: %@, class: %@", &v19, 0x16u);
  }

  v13 = AXLogUIViewService();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [AXSpringBoardServerAlertManager showAXUIViewService:dataCopy withData:v13];
  }

  v14 = [MEMORY[0x277D66BF0] newHandleWithDefinition:sb_alertDefinition configurationContext:v9];
  [v14 registerObserver:self];
  [v14 activateWithContext:0];
  handlesByService = [(AXSpringBoardServerAlertManager *)self handlesByService];

  if (!handlesByService)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [(AXSpringBoardServerAlertManager *)self setHandlesByService:dictionary];
  }

  handlesByService2 = [(AXSpringBoardServerAlertManager *)self handlesByService];
  v18 = [MEMORY[0x277CCAE60] valueWithPointer:serviceCopy];

  [handlesByService2 setObject:v14 forKeyedSubscript:v18];
}

- (void)hideAXUIViewService:(id)service
{
  v11 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  v5 = AXLogUIViewService();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v9 = 138412290;
    v10 = serviceCopy;
    _os_log_impl(&dword_21FE6B000, v5, OS_LOG_TYPE_INFO, "Hiding remote alert service: %@", &v9, 0xCu);
  }

  handlesByService = [(AXSpringBoardServerAlertManager *)self handlesByService];
  v7 = [MEMORY[0x277CCAE60] valueWithPointer:serviceCopy];
  v8 = [handlesByService objectForKeyedSubscript:v7];
  [v8 invalidate];
}

- (BOOL)isShowingAXUIViewService:(id)service
{
  serviceCopy = service;
  handlesByService = [(AXSpringBoardServerAlertManager *)self handlesByService];
  v6 = [MEMORY[0x277CCAE60] valueWithPointer:serviceCopy];

  v7 = [handlesByService objectForKeyedSubscript:v6];
  isActive = [v7 isActive];

  return isActive;
}

- (void)remoteAlertHandleDidActivate:(id)activate
{
  v7 = *MEMORY[0x277D85DE8];
  activateCopy = activate;
  v4 = AXLogUIViewService();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = 138412290;
    v6 = activateCopy;
    _os_log_impl(&dword_21FE6B000, v4, OS_LOG_TYPE_INFO, "Remote alert handle did activate: %@", &v5, 0xCu);
  }
}

- (void)remoteAlertHandleDidDeactivate:(id)deactivate
{
  v7 = *MEMORY[0x277D85DE8];
  deactivateCopy = deactivate;
  v4 = AXLogUIViewService();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = 138412290;
    v6 = deactivateCopy;
    _os_log_impl(&dword_21FE6B000, v4, OS_LOG_TYPE_INFO, "Remote alert handle did deactivate: %@", &v5, 0xCu);
  }
}

- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error
{
  v11 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  errorCopy = error;
  v7 = AXLogUIViewService();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9 = 138412290;
    v10 = handleCopy;
    _os_log_impl(&dword_21FE6B000, v7, OS_LOG_TYPE_INFO, "Remote alert handle did invalidate: %@", &v9, 0xCu);
  }

  if (errorCopy)
  {
    v8 = AXLogUIViewService();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [AXSpringBoardServerAlertManager remoteAlertHandle:errorCopy didInvalidateWithError:v8];
    }
  }
}

- (void)showAXUIViewService:(uint64_t)a1 withData:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_21FE6B000, a2, OS_LOG_TYPE_DEBUG, "withData: %@", &v2, 0xCu);
}

- (void)remoteAlertHandle:(uint64_t)a1 didInvalidateWithError:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_21FE6B000, a2, OS_LOG_TYPE_ERROR, "Remote alert handle did invalidate with error: %@", &v2, 0xCu);
}

@end