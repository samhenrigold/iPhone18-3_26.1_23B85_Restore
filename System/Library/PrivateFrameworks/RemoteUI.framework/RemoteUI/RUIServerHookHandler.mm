@interface RUIServerHookHandler
- (BOOL)isUserCancelError:(id)error;
- (RUIServerHookHandler)initWithRemoteUIController:(id)controller hooks:(id)hooks;
- (RUIServerHookHandlerDelegate)delegate;
- (id)_refreshRequestWithInfo:(id)info initiatingObjectModel:(id)model attributes:(id)attributes;
- (id)_responseDataForResult:(BOOL)result withError:(id)error;
- (id)currentPresenter;
- (void)_handleResponseForHook:(id)hook success:(BOOL)success error:(id)error attributes:(id)attributes objectModel:(id)model completion:(id)completion;
- (void)_rebuildServerHookHandlers;
- (void)_reloadUIWithInfo:(id)info attributes:(id)attributes initiatingObjectModel:(id)model completion:(id)completion;
- (void)dismissObjectModelsAnimated:(BOOL)animated completion:(id)completion;
- (void)processObjectModel:(id)model isModal:(BOOL)modal completion:(id)completion;
- (void)processServerResponse:(id)response;
- (void)refreshWithRequest:(id)request completion:(id)completion;
- (void)setServerHooks:(id)hooks;
@end

@implementation RUIServerHookHandler

- (RUIServerHookHandler)initWithRemoteUIController:(id)controller hooks:(id)hooks
{
  controllerCopy = controller;
  hooksCopy = hooks;
  v8 = [(RUIServerHookHandler *)self init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_remoteUIController, controllerCopy);
    v10 = [hooksCopy copy];
    serverHooks = v9->_serverHooks;
    v9->_serverHooks = v10;

    v12 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSArray count](v9->_serverHooks, "count")}];
    hookIdentifiers = v9->_hookIdentifiers;
    v9->_hookIdentifiers = v12;

    [(RUIServerHookHandler *)v9 _rebuildServerHookHandlers];
  }

  return v9;
}

- (void)_rebuildServerHookHandlers
{
  v39 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_remoteUIController);
  isInternalInstall = _isInternalInstall(WeakRetained, v3);
  if (isInternalInstall)
  {
    v5 = _RUILoggingFacility(isInternalInstall);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21B93D000, v5, OS_LOG_TYPE_DEFAULT, "Rebuilding server hook handlers", buf, 2u);
    }
  }

  if ([(NSMutableArray *)self->_hookIdentifiers count])
  {
    hookIdentifiers = self->_hookIdentifiers;
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __50__RUIServerHookHandler__rebuildServerHookHandlers__block_invoke;
    v32[3] = &unk_2782E7FC8;
    v33 = WeakRetained;
    [(NSMutableArray *)hookIdentifiers enumerateObjectsUsingBlock:v32];
    removeAllObjects = [(NSMutableArray *)self->_hookIdentifiers removeAllObjects];
    v9 = _isInternalInstall(removeAllObjects, v8);
    if (v9)
    {
      v10 = _RUILoggingFacility(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21B93D000, v10, OS_LOG_TYPE_DEFAULT, "Cleared existing server hook handlers", buf, 2u);
      }
    }
  }

  objc_initWeak(&location, self);
  v30 = 0u;
  v28 = 0u;
  v29 = 0u;
  v27 = 0u;
  obj = self->_serverHooks;
  v11 = [(NSArray *)obj countByEnumeratingWithState:&v27 objects:v38 count:16];
  if (v11)
  {
    v13 = *v28;
    *&v12 = 138412546;
    v21 = v12;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v28 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v27 + 1) + 8 * i);
        [v15 setDelegate:{self, v21}];
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __50__RUIServerHookHandler__rebuildServerHookHandlers__block_invoke_38;
        v26[3] = &unk_2782E7FF0;
        v26[4] = v15;
        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = __50__RUIServerHookHandler__rebuildServerHookHandlers__block_invoke_2;
        v24[3] = &unk_2782E8068;
        v24[4] = v15;
        objc_copyWeak(&v25, &location);
        v16 = [WeakRetained setHandlerForElementsMatching:v26 handler:v24];
        v17 = [(NSMutableArray *)self->_hookIdentifiers addObject:v16];
        v19 = _isInternalInstall(v17, v18);
        if (v19)
        {
          v20 = _RUILoggingFacility(v19);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v21;
            v35 = v15;
            v36 = 2112;
            v37 = v16;
            _os_log_impl(&dword_21B93D000, v20, OS_LOG_TYPE_DEFAULT, "Created a handler for hook: %@ with identifier %@", buf, 0x16u);
          }
        }

        objc_destroyWeak(&v25);
      }

      v11 = [(NSArray *)obj countByEnumeratingWithState:&v27 objects:v38 count:16];
    }

    while (v11);
  }

  objc_destroyWeak(&location);
}

void __50__RUIServerHookHandler__rebuildServerHookHandlers__block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v34 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  isInternalInstall = _isInternalInstall(v9, v10);
  if (isInternalInstall)
  {
    v12 = _RUILoggingFacility(isInternalInstall);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v8 name];
      *buf = 138412546;
      v31 = v13;
      v32 = 2112;
      v33 = v9;
      _os_log_impl(&dword_21B93D000, v12, OS_LOG_TYPE_DEFAULT, "Starting to process element %@ with attributes: %@", buf, 0x16u);
    }
  }

  if (objc_opt_respondsToSelector())
  {
    [*(a1 + 32) setObjectModel:v7];
  }

  v14 = [v7 telemetryDelegate];
  v15 = [RUITelemetryElement alloc];
  v16 = [v8 sourceXMLElement];
  v17 = [v7 sourceURL];
  v18 = [(RUITelemetryElement *)v15 initWithXMLElement:v16 url:v17];
  [v14 willProcessHook:v18];

  v20 = *(a1 + 32);
  v19 = (a1 + 32);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __50__RUIServerHookHandler__rebuildServerHookHandlers__block_invoke_41;
  v24[3] = &unk_2782E8040;
  v21 = v8;
  v25 = v21;
  objc_copyWeak(&v29, v19 + 1);
  v26 = *v19;
  v22 = v9;
  v27 = v22;
  v23 = v7;
  v28 = v23;
  [v20 processElement:v21 attributes:v22 objectModel:v23 completion:v24];

  objc_destroyWeak(&v29);
}

void __50__RUIServerHookHandler__rebuildServerHookHandlers__block_invoke_41(uint64_t a1, uint64_t a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  isInternalInstall = _isInternalInstall(v5, v6);
  if (isInternalInstall)
  {
    v8 = _RUILoggingFacility(isInternalInstall);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [*(a1 + 32) name];
      *buf = 138412290;
      v17 = v9;
      _os_log_impl(&dword_21B93D000, v8, OS_LOG_TYPE_DEFAULT, "Finished processing element: %@", buf, 0xCu);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    v11 = *(a1 + 40);
    v12 = *(a1 + 48);
    v13 = *(a1 + 56);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __50__RUIServerHookHandler__rebuildServerHookHandlers__block_invoke_42;
    v14[3] = &unk_2782E8018;
    v15 = *(a1 + 32);
    [WeakRetained _handleResponseForHook:v11 success:a2 error:v5 attributes:v12 objectModel:v13 completion:v14];
  }
}

void __50__RUIServerHookHandler__rebuildServerHookHandlers__block_invoke_42(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *MEMORY[0x277D85DE8];
  isInternalInstall = _isInternalInstall(a1, a2);
  if (isInternalInstall)
  {
    v6 = _RUILoggingFacility(isInternalInstall);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*(a1 + 32) name];
      v8 = 138412290;
      v9 = v7;
      _os_log_impl(&dword_21B93D000, v6, OS_LOG_TYPE_DEFAULT, "Finished reloading UI in response to element: %@", &v8, 0xCu);
    }
  }
}

- (void)setServerHooks:(id)hooks
{
  v4 = [hooks copy];
  serverHooks = self->_serverHooks;
  self->_serverHooks = v4;

  [(RUIServerHookHandler *)self _rebuildServerHookHandlers];
}

- (void)_handleResponseForHook:(id)hook success:(BOOL)success error:(id)error attributes:(id)attributes objectModel:(id)model completion:(id)completion
{
  successCopy = success;
  v32 = *MEMORY[0x277D85DE8];
  hookCopy = hook;
  errorCopy = error;
  attributesCopy = attributes;
  modelCopy = model;
  completionCopy = completion;
  serverHookResponse = objc_opt_respondsToSelector();
  if (serverHookResponse)
  {
    serverHookResponse = [hookCopy serverHookResponse];
    v21 = serverHookResponse;
  }

  else
  {
    v21 = 0;
  }

  isInternalInstall = _isInternalInstall(serverHookResponse, v20);
  if (isInternalInstall)
  {
    v23 = _RUILoggingFacility(isInternalInstall);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      serverInfo = [modelCopy serverInfo];
      v28 = 138412546;
      v29 = modelCopy;
      v30 = 2112;
      v31 = serverInfo;
      _os_log_impl(&dword_21B93D000, v23, OS_LOG_TYPE_DEFAULT, "Attempting to reload with originating OM: %@ - %@", &v28, 0x16u);
    }
  }

  continuationRequest = [v21 continuationRequest];

  if (continuationRequest)
  {
    continuationRequest2 = [v21 continuationRequest];
    [(RUIServerHookHandler *)self refreshWithRequest:continuationRequest2 completion:completionCopy];
  }

  else
  {
    continuationRequest2 = [(RUIServerHookHandler *)self _responseDataForResult:successCopy withError:errorCopy];
    if (v21)
    {
      additionalPayload = [v21 additionalPayload];
      if (additionalPayload)
      {
        [continuationRequest2 addEntriesFromDictionary:additionalPayload];
      }
    }

    [(RUIServerHookHandler *)self _reloadUIWithInfo:continuationRequest2 attributes:attributesCopy initiatingObjectModel:modelCopy completion:completionCopy];
  }
}

- (void)processObjectModel:(id)model isModal:(BOOL)modal completion:(id)completion
{
  modelCopy = model;
  completionCopy = completion;
  isInternalInstall = _isInternalInstall(completionCopy, v9);
  if (isInternalInstall)
  {
    v11 = _RUILoggingFacility(isInternalInstall);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21B93D000, v11, OS_LOG_TYPE_DEFAULT, "Processing object model to detect hook handler matches...", buf, 2u);
    }
  }

  objc_initWeak(&location, self);
  *buf = 0;
  v21 = buf;
  v22 = 0x2020000000;
  v23 = 0;
  serverHooks = self->_serverHooks;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __62__RUIServerHookHandler_processObjectModel_isModal_completion___block_invoke;
  v15[3] = &unk_2782E80E0;
  v13 = modelCopy;
  v16 = v13;
  v18 = buf;
  objc_copyWeak(&v19, &location);
  v14 = completionCopy;
  v17 = v14;
  [(NSArray *)serverHooks enumerateObjectsUsingBlock:v15];
  if (v14 && (v21[24] & 1) == 0)
  {
    (*(v14 + 2))(v14, 0, 0);
  }

  objc_destroyWeak(&v19);
  _Block_object_dispose(buf, 8);
  objc_destroyWeak(&location);
}

void __62__RUIServerHookHandler_processObjectModel_isModal_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = [v6 shouldMatchModel:*(a1 + 32)];
  v8 = v7;
  isInternalInstall = _isInternalInstall(v7, v9);
  if (v8)
  {
    if (isInternalInstall)
    {
      v11 = _RUILoggingFacility(isInternalInstall);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v24 = v6;
        _os_log_impl(&dword_21B93D000, v11, OS_LOG_TYPE_DEFAULT, "Matched %@, starting processing...", buf, 0xCu);
      }
    }

    *(*(*(a1 + 48) + 8) + 24) = 1;
    if (objc_opt_respondsToSelector())
    {
      [v6 setObjectModel:*(a1 + 32)];
    }

    v12 = *(a1 + 32);
    v13 = [v12 clientInfo];
    v14 = [v12 elementForActivityIndicatorWithAttributes:v13];

    [v14 startActivityIndicator];
    v15 = *(a1 + 32);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __62__RUIServerHookHandler_processObjectModel_isModal_completion___block_invoke_47;
    v17[3] = &unk_2782E80B8;
    objc_copyWeak(&v22, (a1 + 56));
    v18 = v6;
    v19 = *(a1 + 32);
    v21 = *(a1 + 40);
    v16 = v14;
    v20 = v16;
    [v18 processObjectModel:v15 completion:v17];
    if (a4)
    {
      *a4 = 1;
    }

    objc_destroyWeak(&v22);
LABEL_14:

    goto LABEL_15;
  }

  if (isInternalInstall)
  {
    v16 = _RUILoggingFacility(isInternalInstall);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v24 = v6;
      _os_log_impl(&dword_21B93D000, v16, OS_LOG_TYPE_DEFAULT, "Did not match, skipping %@ ...", buf, 0xCu);
    }

    goto LABEL_14;
  }

LABEL_15:
}

void __62__RUIServerHookHandler_processObjectModel_isModal_completion___block_invoke_47(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    v7 = *(a1 + 32);
    v8 = [*(a1 + 40) clientInfo];
    v9 = *(a1 + 40);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __62__RUIServerHookHandler_processObjectModel_isModal_completion___block_invoke_2;
    v10[3] = &unk_2782E8090;
    v12 = *(a1 + 56);
    v11 = *(a1 + 48);
    [WeakRetained _handleResponseForHook:v7 success:a2 error:v5 attributes:v8 objectModel:v9 completion:v10];
  }
}

uint64_t __62__RUIServerHookHandler_processObjectModel_isModal_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 stopActivityIndicator];
}

- (void)processServerResponse:(id)response
{
  responseCopy = response;
  isInternalInstall = _isInternalInstall(responseCopy, v5);
  if (isInternalInstall)
  {
    v7 = _RUILoggingFacility(isInternalInstall);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21B93D000, v7, OS_LOG_TYPE_DEFAULT, "Harvesting data from response", buf, 2u);
    }
  }

  serverHooks = self->_serverHooks;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __46__RUIServerHookHandler_processServerResponse___block_invoke;
  v10[3] = &unk_2782E8108;
  v11 = responseCopy;
  v9 = responseCopy;
  [(NSArray *)serverHooks enumerateObjectsUsingBlock:v10];
}

void __46__RUIServerHookHandler_processServerResponse___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 harvestDataFromResponse:*(a1 + 32)];
  }
}

- (id)currentPresenter
{
  WeakRetained = objc_loadWeakRetained(&self->_remoteUIController);
  currentPresentationContext = [WeakRetained currentPresentationContext];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (!userInterfaceIdiom)
    {
      isInternalInstall = _isInternalInstall(v6, v7);
      if (isInternalInstall)
      {
        v9 = _RUILoggingFacility(isInternalInstall);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *v11 = 0;
          _os_log_impl(&dword_21B93D000, v9, OS_LOG_TYPE_DEFAULT, "RUI nav controller detected, suppressing rotation views", v11, 2u);
        }
      }

      [currentPresentationContext setSupportedInterfaceOrientations:2];
    }
  }

  return currentPresentationContext;
}

- (void)dismissObjectModelsAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_remoteUIController);
  v7 = [WeakRetained dismissObjectModelsAnimated:animatedCopy completion:completionCopy];
}

- (BOOL)isUserCancelError:(id)error
{
  if (!error)
  {
    return 0;
  }

  errorCopy = error;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  LOBYTE(self) = [WeakRetained serverHookHandler:self isUserCancelError:errorCopy];

  return self;
}

- (id)_responseDataForResult:(BOOL)result withError:(id)error
{
  resultCopy = result;
  errorCopy = error;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  domain = [errorCopy domain];

  if (domain)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(errorCopy, "code")}];
    [dictionary setObject:v9 forKeyedSubscript:@"errorCode"];

    domain2 = [errorCopy domain];
    [dictionary setObject:domain2 forKeyedSubscript:@"errorDomain"];

    if ([(RUIServerHookHandler *)self isUserCancelError:errorCopy])
    {
      [dictionary setObject:@"cancel" forKeyedSubscript:@"action"];
    }
  }

  if (resultCopy)
  {
    v11 = @"1";
  }

  else
  {
    v11 = @"0";
  }

  [dictionary setObject:v11 forKeyedSubscript:@"success"];

  return dictionary;
}

- (void)refreshWithRequest:(id)request completion:(id)completion
{
  v17 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  completionCopy = completion;
  isInternalInstall = _isInternalInstall(completionCopy, v8);
  if (isInternalInstall)
  {
    v10 = _RUILoggingFacility(isInternalInstall);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = requestCopy;
      _os_log_impl(&dword_21B93D000, v10, OS_LOG_TYPE_DEFAULT, "Attempting to refresh with request: %@", buf, 0xCu);
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_remoteUIController);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __54__RUIServerHookHandler_refreshWithRequest_completion___block_invoke;
  v13[3] = &unk_2782E8158;
  v14 = completionCopy;
  v12 = completionCopy;
  [WeakRetained loadRequest:requestCopy completion:v13];
}

void __54__RUIServerHookHandler_refreshWithRequest_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  isInternalInstall = _isInternalInstall(v5, v6);
  if (isInternalInstall)
  {
    v8 = _RUILoggingFacility(isInternalInstall);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = v5;
      _os_log_impl(&dword_21B93D000, v8, OS_LOG_TYPE_DEFAULT, "Finished loading: %@", buf, 0xCu);
    }
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__RUIServerHookHandler_refreshWithRequest_completion___block_invoke_61;
  block[3] = &unk_2782E8130;
  v9 = *(a1 + 32);
  v14 = a2;
  v12 = v5;
  v13 = v9;
  v10 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __54__RUIServerHookHandler_refreshWithRequest_completion___block_invoke_61(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 48), *(a1 + 32));
  }

  return result;
}

- (void)_reloadUIWithInfo:(id)info attributes:(id)attributes initiatingObjectModel:(id)model completion:(id)completion
{
  completionCopy = completion;
  v12 = [(RUIServerHookHandler *)self _refreshRequestWithInfo:info initiatingObjectModel:model attributes:attributes];
  if (v12)
  {
    [(RUIServerHookHandler *)self refreshWithRequest:v12 completion:completionCopy];
  }

  else
  {
    isInternalInstall = _isInternalInstall(0, v11);
    if (isInternalInstall)
    {
      v14 = _RUILoggingFacility(isInternalInstall);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21B93D000, v14, OS_LOG_TYPE_DEFAULT, "No refresh URL; skipping reload", buf, 2u);
      }
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __86__RUIServerHookHandler__reloadUIWithInfo_attributes_initiatingObjectModel_completion___block_invoke;
    block[3] = &unk_2782E8180;
    v16 = completionCopy;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

uint64_t __86__RUIServerHookHandler__reloadUIWithInfo_attributes_initiatingObjectModel_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1, 0);
  }

  return result;
}

- (id)_refreshRequestWithInfo:(id)info initiatingObjectModel:(id)model attributes:(id)attributes
{
  v30 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  modelCopy = model;
  attributesCopy = attributes;
  isInternalInstall = _isInternalInstall(attributesCopy, v10);
  if (isInternalInstall)
  {
    v12 = _RUILoggingFacility(isInternalInstall);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v28 = 138412290;
      v29 = attributesCopy;
      _os_log_impl(&dword_21B93D000, v12, OS_LOG_TYPE_DEFAULT, "Refreshing server UI with attributes %@", &v28, 0xCu);
    }
  }

  v13 = [attributesCopy objectForKeyedSubscript:@"refreshUrl"];
  v14 = [attributesCopy objectForKeyedSubscript:@"refreshHttpMethod"];
  if (v13)
  {
    v15 = objc_alloc(MEMORY[0x277CCAB70]);
    v16 = MEMORY[0x277CBEBC0];
    sourceURL = [modelCopy sourceURL];
    v18 = [v16 URLWithString:v13 relativeToURL:sourceURL];
    v19 = [v15 initWithURL:v18];

    if ([v14 isEqualToString:@"POST"])
    {
      v20 = [infoCopy mutableCopy];
      serverInfo = [modelCopy serverInfo];
      v23 = serverInfo;
      if (serverInfo)
      {
        serverInfo = [v20 addEntriesFromDictionary:serverInfo];
      }

      v24 = _isInternalInstall(serverInfo, v22);
      if (v24)
      {
        v25 = _RUILoggingFacility(v24);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v28 = 138412290;
          v29 = v20;
          _os_log_impl(&dword_21B93D000, v25, OS_LOG_TYPE_DEFAULT, "Responding to server with info: %@", &v28, 0xCu);
        }
      }

      v26 = [MEMORY[0x277CCAC58] dataWithPropertyList:v20 format:100 options:0 error:0];
      [v19 setHTTPBody:v26];
      [v19 setHTTPMethod:@"POST"];
      [v19 setValue:@"application/x-plist" forHTTPHeaderField:@"Content-Type"];
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (RUIServerHookHandlerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end