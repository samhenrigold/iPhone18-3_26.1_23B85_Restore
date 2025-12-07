@interface TRProxyAuthOperation
+ (id)_logStringForAppleIDServiceType:(int64_t)type;
+ (int64_t)_appleIDServiceTypeForTRAccountServices:(id)services;
- (void)_handleProxyAuthenticationResponse:(id)response proxiedDevice:(id)device;
- (void)_handleProxyDeviceResponse:(id)response;
- (void)_performProxyAuthenticationWithProxiedDevice:(id)device;
- (void)_sendProxyDeviceRequest;
- (void)execute;
@end

@implementation TRProxyAuthOperation

- (void)execute
{
  if ([(TRProxyAuthOperation *)self isCancelled])
  {
    userCancelledError = [objc_opt_class() userCancelledError];
    [(TROperation *)self finishWithError:userCancelledError];
  }

  else
  {

    [(TRProxyAuthOperation *)self _sendProxyDeviceRequest];
  }
}

- (void)_sendProxyDeviceRequest
{
  v10 = *MEMORY[0x277D85DE8];
  if (_TRLogEnabled == 1)
  {
    v3 = TRLogHandle(self);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v9 = "[TRProxyAuthOperation _sendProxyDeviceRequest]";
      _os_log_impl(&dword_26F2A2000, v3, OS_LOG_TYPE_DEFAULT, "%s Requesting proxy device", buf, 0xCu);
    }
  }

  v4 = objc_alloc_init(TRSetupProxyDeviceRequest);
  objc_initWeak(buf, self);
  session = [(TROperation *)self session];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__TRProxyAuthOperation__sendProxyDeviceRequest__block_invoke;
  v6[3] = &unk_279DCECD0;
  objc_copyWeak(&v7, buf);
  [session sendRequest:v4 withResponseHandler:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(buf);
}

void __47__TRProxyAuthOperation__sendProxyDeviceRequest__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained isCancelled])
  {
    v7 = [objc_opt_class() userCancelledError];
    [WeakRetained finishWithError:v7];
  }

  else if (v5)
  {
    [WeakRetained _handleProxyDeviceResponse:v5];
  }

  else
  {
    [WeakRetained finishWithError:v8];
  }
}

- (void)_handleProxyDeviceResponse:(id)response
{
  v12 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  v5 = responseCopy;
  if (_TRLogEnabled == 1)
  {
    v6 = TRLogHandle(responseCopy);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "[TRProxyAuthOperation _handleProxyDeviceResponse:]";
      v10 = 2112;
      v11 = v5;
      _os_log_impl(&dword_26F2A2000, v6, OS_LOG_TYPE_DEFAULT, "%s Handle Proxy Device Response: %@", &v8, 0x16u);
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    proxyDevice = [v5 proxyDevice];
    [(TRProxyAuthOperation *)self _performProxyAuthenticationWithProxiedDevice:proxyDevice];
  }

  else
  {
    proxyDevice = [MEMORY[0x277CCA9B8] errorWithDomain:@"TRNearbyDeviceErrorDomain" code:-10000 userInfo:0];
    [(TROperation *)self finishWithError:proxyDevice];
  }
}

- (void)_performProxyAuthenticationWithProxiedDevice:(id)device
{
  v33 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v5 = [TRAnisetteDataProvider alloc];
  session = [(TROperation *)self session];
  v7 = [(TRAnisetteDataProvider *)v5 initWithSession:session];

  v8 = objc_alloc_init(getAKAppleIDAuthenticationInAppContextClass());
  presentingViewController = [(TRProxyAuthOperation *)self presentingViewController];
  [v8 setPresentingViewController:presentingViewController];

  account = [(TRProxyAuthOperation *)self account];
  username = [account username];
  [v8 setUsername:username];

  [v8 setIsUsernameEditable:0];
  [v8 setShouldAllowAppleIDCreation:0];
  v12 = objc_opt_class();
  targetedServices = [(TRProxyAuthOperation *)self targetedServices];
  [v8 setServiceType:{objc_msgSend(v12, "_appleIDServiceTypeForTRAccountServices:", targetedServices)}];

  [v8 setShouldForceInteractiveAuth:0];
  [v8 setProxiedDevice:deviceCopy];
  [v8 setAnisetteDataProvider:v7];
  v14 = [v8 _setProxyingForApp:1];
  if (self->_isCLIMode)
  {
    rawPassword = self->_rawPassword;
    if (rawPassword)
    {
      if (_TRLogEnabled == 1)
      {
        v16 = TRLogHandle(v14);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v28 = "[TRProxyAuthOperation _performProxyAuthenticationWithProxiedDevice:]";
          _os_log_impl(&dword_26F2A2000, v16, OS_LOG_TYPE_DEFAULT, "%s _performProxyAuthenticationWithProxiedDevice _isCLIMode is enabled, setting raw password", buf, 0xCu);
        }

        rawPassword = self->_rawPassword;
      }

      v14 = [v8 _setPassword:rawPassword];
    }
  }

  if (_TRLogEnabled == 1)
  {
    v17 = TRLogHandle(v14);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      username2 = [v8 username];
      v19 = [objc_opt_class() _logStringForAppleIDServiceType:{objc_msgSend(v8, "serviceType")}];
      *buf = 136315650;
      v28 = "[TRProxyAuthOperation _performProxyAuthenticationWithProxiedDevice:]";
      v29 = 2112;
      v30 = username2;
      v31 = 2114;
      v32 = v19;
      _os_log_impl(&dword_26F2A2000, v17, OS_LOG_TYPE_DEFAULT, "%s Attempting authentication of account %@ using service type %{public}@", buf, 0x20u);
    }
  }

  v20 = objc_alloc_init(MEMORY[0x277CF0178]);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __69__TRProxyAuthOperation__performProxyAuthenticationWithProxiedDevice___block_invoke;
  v23[3] = &unk_279DCF040;
  v24 = v20;
  selfCopy = self;
  v26 = deviceCopy;
  v21 = deviceCopy;
  v22 = v20;
  [v22 authenticateWithContext:v8 completion:v23];
}

void __69__TRProxyAuthOperation__performProxyAuthenticationWithProxiedDevice___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (_TRLogEnabled == 1)
  {
    v8 = TRLogHandle(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = @"<auth results>";
      v10 = *(a1 + 32);
      v27 = "[TRProxyAuthOperation _performProxyAuthenticationWithProxiedDevice:]_block_invoke";
      *buf = 136315906;
      if (!v5)
      {
        v9 = @"<no auth results>";
      }

      v28 = 2112;
      v29 = v7;
      v30 = 2112;
      v31 = v9;
      v32 = 2112;
      v33 = v10;
      _os_log_impl(&dword_26F2A2000, v8, OS_LOG_TYPE_DEFAULT, "%s %@ %@ with %@", buf, 0x2Au);
    }
  }

  if (v5)
  {
    v11 = objc_alloc_init(TRSetupProxyAuthenticationRequest);
    v12 = [*(a1 + 40) account];
    [(TRSetupProxyAuthenticationRequest *)v11 setAccount:v12];

    v13 = *(a1 + 40);
    if ((*(v13 + 292) & 1) == 0)
    {
      v14 = [v5 objectForKeyedSubscript:*MEMORY[0x277CEFFD0]];
      [(TRSetupProxyAuthenticationRequest *)v11 setRawPassword:v14];

      v13 = *(a1 + 40);
    }

    if (*(v13 + 290) == 1)
    {
      v15 = *(v13 + 328);
      if (v15)
      {
        if (_TRLogEnabled == 1)
        {
          v16 = TRLogHandle(v13);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v27 = "[TRProxyAuthOperation _performProxyAuthenticationWithProxiedDevice:]_block_invoke";
            _os_log_impl(&dword_26F2A2000, v16, OS_LOG_TYPE_DEFAULT, "%s AKAppleIDAuthenticationController authenticateWithContext _isCLIMode is enabled, setting raw password", buf, 0xCu);
          }

          v15 = *(*(a1 + 40) + 328);
        }

        [(TRSetupProxyAuthenticationRequest *)v11 setRawPassword:v15];
        v13 = *(a1 + 40);
      }
    }

    v17 = [v13 targetedServices];
    [(TRSetupProxyAuthenticationRequest *)v11 setTargetedAccountServices:v17];

    -[TRSetupProxyAuthenticationRequest setShouldUseAIDA:](v11, "setShouldUseAIDA:", [*(a1 + 40) shouldUseAIDA]);
    objc_initWeak(buf, *(a1 + 40));
    v18 = [*(a1 + 40) session];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __69__TRProxyAuthOperation__performProxyAuthenticationWithProxiedDevice___block_invoke_17;
    v23[3] = &unk_279DCF018;
    objc_copyWeak(&v25, buf);
    v24 = *(a1 + 48);
    [v18 sendRequest:v11 withResponseHandler:v23];

    objc_destroyWeak(&v25);
    objc_destroyWeak(buf);
  }

  else
  {
    if (_TRLogEnabled == 1)
    {
      v19 = TRLogHandle(v6);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v27 = "[TRProxyAuthOperation _performProxyAuthenticationWithProxiedDevice:]_block_invoke";
        _os_log_impl(&dword_26F2A2000, v19, OS_LOG_TYPE_DEFAULT, "%s Failed to receive proxy authentication results", buf, 0xCu);
      }
    }

    v11 = objc_opt_new();
    v20 = [*(a1 + 40) targetedServices];
    [(TRSetupProxyAuthenticationRequest *)v11 setObject:v20 forKeyedSubscript:@"TRProxyAuthOperationUnauthenticatedServicesKey"];

    if (v7)
    {
      [(TRSetupProxyAuthenticationRequest *)v11 setObject:v7 forKeyedSubscript:@"TRProxyAuthOperationErrorKey"];
    }

    v21 = *(a1 + 40);
    v22 = [(TRSetupProxyAuthenticationRequest *)v11 copy];
    [v21 finishWithResult:v22];
  }
}

void __69__TRProxyAuthOperation__performProxyAuthenticationWithProxiedDevice___block_invoke_17(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if ([WeakRetained isCancelled])
  {
    v7 = [objc_opt_class() userCancelledError];
    [WeakRetained finishWithError:v7];
  }

  else if (v5)
  {
    [WeakRetained _handleProxyAuthenticationResponse:v5 proxiedDevice:*(a1 + 32)];
  }

  else
  {
    [WeakRetained finishWithError:v8];
  }
}

- (void)_handleProxyAuthenticationResponse:(id)response proxiedDevice:(id)device
{
  v42 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  deviceCopy = device;
  v8 = deviceCopy;
  if (_TRLogEnabled == 1)
  {
    v9 = TRLogHandle(deviceCopy);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v39 = "[TRProxyAuthOperation _handleProxyAuthenticationResponse:proxiedDevice:]";
      v40 = 2112;
      v41 = responseCopy;
      _os_log_impl(&dword_26F2A2000, v9, OS_LOG_TYPE_DEFAULT, "%s Handle Proxy Authentication Response: %@", buf, 0x16u);
    }
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v11 = responseCopy;
    v12 = objc_opt_new();
    unauthenticatedAccountServices = [v11 unauthenticatedAccountServices];
    [v12 setObject:unauthenticatedAccountServices forKeyedSubscript:@"TRProxyAuthOperationUnauthenticatedServicesKey"];

    error = [v11 error];

    if (error)
    {
      if (_TRLogEnabled == 1)
      {
        v16 = TRLogHandle(v15);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_26F2A2000, v16, OS_LOG_TYPE_DEFAULT, "Error in response", buf, 2u);
        }
      }

      error2 = [v11 error];
      [v12 setObject:error2 forKeyedSubscript:@"TRProxyAuthOperationErrorKey"];
    }

    else
    {
      authenticationResults = [v11 authenticationResults];
      v22 = authenticationResults;
      if (authenticationResults && self->_presentingViewController && !self->_isCLIMode && self->_canDoTermsAndConditions && self->_isForHomePod)
      {
        v23 = [(NSSet *)self->_targetedServices containsObject:&unk_287F62918];

        if (v23)
        {
          if (_TRLogEnabled == 1)
          {
            v25 = TRLogHandle(v24);
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_26F2A2000, v25, OS_LOG_TYPE_DEFAULT, "Showing Terms for Proxy Auth", buf, 2u);
            }
          }

          v26 = [TRAnisetteDataProvider alloc];
          session = [(TROperation *)self session];
          v18 = [(TRAnisetteDataProvider *)v26 initWithSession:session];

          v28 = [TRTermsAndConditionsManager alloc];
          authenticationResults2 = [v11 authenticationResults];
          v30 = [(TRTermsAndConditionsManager *)v28 initWithAuthResultsBlock:authenticationResults2 presentingViewController:self->_presentingChildViewController];
          termsManager = self->_termsManager;
          self->_termsManager = v30;

          v32 = self->_termsManager;
          v36[0] = MEMORY[0x277D85DD0];
          v36[1] = 3221225472;
          v36[2] = __73__TRProxyAuthOperation__handleProxyAuthenticationResponse_proxiedDevice___block_invoke;
          v36[3] = &unk_279DCF068;
          v36[4] = self;
          v37 = v12;
          v35[0] = MEMORY[0x277D85DD0];
          v35[1] = 3221225472;
          v35[2] = __73__TRProxyAuthOperation__handleProxyAuthenticationResponse_proxiedDevice___block_invoke_2;
          v35[3] = &unk_279DCEBF8;
          v35[4] = self;
          v33 = [(TRTermsAndConditionsManager *)v32 loadProxiedTerms:v8 anisetteDataProvider:v18 appProvidedContext:@"HomePodSetup" acceptAction:v36 declineAction:v35];
          if (_TRLogEnabled == 1)
          {
            v34 = TRLogHandle(v33);
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315138;
              v39 = "[TRProxyAuthOperation _handleProxyAuthenticationResponse:proxiedDevice:]";
              _os_log_impl(&dword_26F2A2000, v34, OS_LOG_TYPE_DEFAULT, "%s Terms Done", buf, 0xCu);
            }
          }

          goto LABEL_14;
        }
      }

      else
      {
      }

      if (_TRLogEnabled != 1)
      {
LABEL_13:
        v18 = [v12 copy];
        [(TROperation *)self finishWithResult:v18];
LABEL_14:

        goto LABEL_20;
      }

      error2 = TRLogHandle(v24);
      if (os_log_type_enabled(error2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_26F2A2000, error2, OS_LOG_TYPE_DEFAULT, "Proxy Auth Skipping terms", buf, 2u);
      }
    }

    goto LABEL_13;
  }

  if (_TRLogEnabled == 1)
  {
    v19 = TRLogHandle(isKindOfClass);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = objc_opt_class();
      *buf = 136315394;
      v39 = "[TRProxyAuthOperation _handleProxyAuthenticationResponse:proxiedDevice:]";
      v40 = 2112;
      v41 = v20;
      _os_log_impl(&dword_26F2A2000, v19, OS_LOG_TYPE_DEFAULT, "%s response class is not TRSetupAuthenticationResponse: %@", buf, 0x16u);
    }
  }

  v11 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TRNearbyDeviceErrorDomain" code:-10000 userInfo:0];
  [(TROperation *)self finishWithError:v11];
LABEL_20:
}

void __73__TRProxyAuthOperation__handleProxyAuthenticationResponse_proxiedDevice___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) copy];
  [v1 finishWithResult:v2];
}

void __73__TRProxyAuthOperation__handleProxyAuthenticationResponse_proxiedDevice___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TROperationErrorDomain" code:-12002 userInfo:0];
  [v1 finishWithError:v2];
}

+ (int64_t)_appleIDServiceTypeForTRAccountServices:(id)services
{
  servicesCopy = services;
  if ([servicesCopy containsObject:&unk_287F62918])
  {
    v4 = 1;
  }

  else if ([servicesCopy containsObject:&unk_287F62930])
  {
    v4 = 2;
  }

  else if ([servicesCopy containsObject:&unk_287F62948])
  {
    v4 = 6;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)_logStringForAppleIDServiceType:(int64_t)type
{
  if ((type - 1) > 5)
  {
    return @"UNKNOWN";
  }

  else
  {
    return off_279DCF088[type - 1];
  }
}

@end