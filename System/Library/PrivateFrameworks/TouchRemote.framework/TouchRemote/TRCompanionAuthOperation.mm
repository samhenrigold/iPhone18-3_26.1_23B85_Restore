@interface TRCompanionAuthOperation
- (void)_handleProxyDeviceResponse:(id)response;
- (void)_handleResponse:(id)response proxiedDevice:(id)device;
- (void)_performCompanionAuthenticationWithProxiedDevice:(id)device;
- (void)_sendProxyDeviceRequest;
- (void)execute;
@end

@implementation TRCompanionAuthOperation

- (void)execute
{
  if ([(TRCompanionAuthOperation *)self isCancelled])
  {
    userCancelledError = [objc_opt_class() userCancelledError];
    [(TROperation *)self finishWithError:userCancelledError];
  }

  else
  {

    [(TRCompanionAuthOperation *)self _sendProxyDeviceRequest];
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
      v9 = "[TRCompanionAuthOperation _sendProxyDeviceRequest]";
      _os_log_impl(&dword_26F2A2000, v3, OS_LOG_TYPE_DEFAULT, "%s Requesting proxy device", buf, 0xCu);
    }
  }

  v4 = objc_alloc_init(TRSetupProxyDeviceRequest);
  objc_initWeak(buf, self);
  session = [(TROperation *)self session];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__TRCompanionAuthOperation__sendProxyDeviceRequest__block_invoke;
  v6[3] = &unk_279DCECD0;
  objc_copyWeak(&v7, buf);
  [session sendRequest:v4 withResponseHandler:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(buf);
}

void __51__TRCompanionAuthOperation__sendProxyDeviceRequest__block_invoke(uint64_t a1, void *a2, void *a3)
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
      v9 = "[TRCompanionAuthOperation _handleProxyDeviceResponse:]";
      v10 = 2112;
      v11 = v5;
      _os_log_impl(&dword_26F2A2000, v6, OS_LOG_TYPE_DEFAULT, "%s Handle Proxy Device Response: %@", &v8, 0x16u);
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    proxyDevice = [v5 proxyDevice];
    if (proxyDevice)
    {
      [(TRCompanionAuthOperation *)self _performCompanionAuthenticationWithProxiedDevice:proxyDevice];
    }
  }

  else
  {
    proxyDevice = [MEMORY[0x277CCA9B8] errorWithDomain:@"TRNearbyDeviceErrorDomain" code:-10000 userInfo:0];
    [(TROperation *)self finishWithError:proxyDevice];
  }
}

- (void)_performCompanionAuthenticationWithProxiedDevice:(id)device
{
  v36 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  defaultStore = [MEMORY[0x277CB8F48] defaultStore];
  account = [(TRCompanionAuthOperation *)self account];
  v27 = 0;
  v7 = [defaultStore credentialForAccount:account error:&v27];
  v8 = v27;

  if (v7)
  {
    account2 = [(TRCompanionAuthOperation *)self account];
    [account2 setCredential:v7];

    if (_TRLogEnabled == 1)
    {
      v12 = TRLogHandle(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        account3 = [(TRCompanionAuthOperation *)self account];
        *buf = 136315394;
        v31 = "[TRCompanionAuthOperation _performCompanionAuthenticationWithProxiedDevice:]";
        v32 = 2112;
        v33 = account3;
        _os_log_impl(&dword_26F2A2000, v12, OS_LOG_TYPE_DEFAULT, "%s Loaded credentials for account %@.", buf, 0x16u);
      }
    }

    currentDevice = [MEMORY[0x277CF0218] currentDevice];
    [currentDevice setLinkType:3];
    v15 = objc_alloc_init(TRSetupCompanionAuthenticationRequest);
    [(TRSetupCompanionAuthenticationRequest *)v15 setCompanionDevice:currentDevice];
    account4 = [(TRCompanionAuthOperation *)self account];
    [(TRSetupCompanionAuthenticationRequest *)v15 setAccount:account4];

    targetedServices = [(TRCompanionAuthOperation *)self targetedServices];
    [(TRSetupCompanionAuthenticationRequest *)v15 setTargetedAccountServices:targetedServices];

    [(TRSetupCompanionAuthenticationRequest *)v15 setShouldUseAIDA:[(TRCompanionAuthOperation *)self shouldUseAIDA]];
    if (!self->_forceFail)
    {
      account5 = [(TRCompanionAuthOperation *)self account];
      [(TRSetupCompanionAuthenticationRequest *)v15 setAccount:account5];
    }

    objc_initWeak(buf, self);
    session = [(TROperation *)self session];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __77__TRCompanionAuthOperation__performCompanionAuthenticationWithProxiedDevice___block_invoke;
    v24[3] = &unk_279DCF018;
    objc_copyWeak(&v26, buf);
    v25 = deviceCopy;
    [session sendRequest:v15 withResponseHandler:v24];

    objc_destroyWeak(&v26);
    objc_destroyWeak(buf);
  }

  else
  {
    if (_TRLogEnabled == 1)
    {
      v20 = TRLogHandle(v9);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        account6 = [(TRCompanionAuthOperation *)self account];
        *buf = 136315650;
        v31 = "[TRCompanionAuthOperation _performCompanionAuthenticationWithProxiedDevice:]";
        v32 = 2112;
        v33 = account6;
        v34 = 2112;
        v35 = v8;
        _os_log_impl(&dword_26F2A2000, v20, OS_LOG_TYPE_DEFAULT, "%s Failed to load credentials for account %@.  Error: %@", buf, 0x20u);
      }
    }

    v28 = @"TRCompanionAuthOperationUnauthenticatedServicesKey";
    targetedServices2 = [(TRCompanionAuthOperation *)self targetedServices];
    v29 = targetedServices2;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    currentDevice = [v23 mutableCopy];

    if (v8)
    {
      [currentDevice setObject:v8 forKeyedSubscript:@"TRCompanionAuthOperationErrorKey"];
    }

    v15 = [currentDevice copy];
    [(TROperation *)self finishWithResult:v15];
  }
}

void __77__TRCompanionAuthOperation__performCompanionAuthenticationWithProxiedDevice___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = [WeakRetained isCancelled];
  if (v8)
  {
    if (_TRLogEnabled == 1)
    {
      v9 = TRLogHandle(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_26F2A2000, v9, OS_LOG_TYPE_DEFAULT, "TRCompanionAuthOperation userCancelledError", buf, 2u);
      }
    }

    v10 = [objc_opt_class() userCancelledError];
    [WeakRetained finishWithError:v10];
  }

  else if (v6)
  {
    if (_TRLogEnabled == 1)
    {
      v11 = TRLogHandle(v8);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&dword_26F2A2000, v11, OS_LOG_TYPE_DEFAULT, "TRCompanionAuthOperation response received", v13, 2u);
      }
    }

    [WeakRetained _handleResponse:v6 proxiedDevice:*(a1 + 32)];
  }

  else
  {
    if (_TRLogEnabled == 1)
    {
      v12 = TRLogHandle(v8);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&dword_26F2A2000, v12, OS_LOG_TYPE_DEFAULT, "TRCompanionAuthOperation no response from send request", v14, 2u);
      }
    }

    [WeakRetained finishWithError:v5];
  }
}

- (void)_handleResponse:(id)response proxiedDevice:(id)device
{
  v60 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  deviceCopy = device;
  v8 = deviceCopy;
  if (_TRLogEnabled == 1)
  {
    v9 = TRLogHandle(deviceCopy);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v57 = "[TRCompanionAuthOperation _handleResponse:proxiedDevice:]";
      v58 = 2112;
      v59 = responseCopy;
      _os_log_impl(&dword_26F2A2000, v9, OS_LOG_TYPE_DEFAULT, "%s Handle Companion Authentication Response: %@", buf, 0x16u);
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = responseCopy;
    v54 = @"TRCompanionAuthOperationUnauthenticatedServicesKey";
    unauthenticatedAccountServices = [(__CFString *)v10 unauthenticatedAccountServices];
    v55 = unauthenticatedAccountServices;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
    v13 = [v12 mutableCopy];

    error = [(__CFString *)v10 error];

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

        if (_TRLogEnabled == 1)
        {
          v18 = TRLogHandle(v17);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            if (self->_isForHomePod)
            {
              v19 = @"YES";
            }

            else
            {
              v19 = @"NO";
            }

            *buf = 138412290;
            v57 = v19;
            _os_log_impl(&dword_26F2A2000, v18, OS_LOG_TYPE_DEFAULT, "_isForHomePod %@", buf, 0xCu);
          }
        }
      }

      error2 = [(__CFString *)v10 error];
      [v13 setObject:error2 forKeyedSubscript:@"TRCompanionAuthOperationErrorKey"];

      if (self->_isForHomePod)
      {
        error3 = [(__CFString *)v10 error];
        if (error3)
        {
          v22 = error3;
          error4 = [(__CFString *)v10 error];
          ak_isEligibleForProxiedAuthFallback = [error4 ak_isEligibleForProxiedAuthFallback];

          if ((ak_isEligibleForProxiedAuthFallback & 1) == 0)
          {
            if (_TRLogEnabled == 1)
            {
              v46 = TRLogHandle(error3);
              if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
              {
                error5 = [(__CFString *)v10 error];
                error6 = [(__CFString *)v10 error];
                ak_isEligibleForProxiedAuthFallback2 = [error6 ak_isEligibleForProxiedAuthFallback];
                v50 = @"NO";
                if (ak_isEligibleForProxiedAuthFallback2)
                {
                  v50 = @"YES";
                }

                *buf = 138412546;
                v57 = error5;
                v58 = 2112;
                v59 = v50;
                _os_log_impl(&dword_26F2A2000, v46, OS_LOG_TYPE_DEFAULT, "Error cannot fall back, finishing with error %@ | canFallBack %@", buf, 0x16u);
              }
            }

            error7 = [(__CFString *)v10 error];
            [(TROperation *)self finishWithError:error7];
            goto LABEL_48;
          }
        }
      }

      if (_TRLogEnabled == 1)
      {
        v25 = TRLogHandle(error3);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          error8 = [(__CFString *)v10 error];
          error9 = [(__CFString *)v10 error];
          ak_isEligibleForProxiedAuthFallback3 = [error9 ak_isEligibleForProxiedAuthFallback];
          v29 = @"NO";
          if (ak_isEligibleForProxiedAuthFallback3)
          {
            v29 = @"YES";
          }

          *buf = 138412546;
          v57 = error8;
          v58 = 2112;
          v59 = v29;
          _os_log_impl(&dword_26F2A2000, v25, OS_LOG_TYPE_DEFAULT, "Error fall back to proxy, error %@ | canFallBack %@", buf, 0x16u);
        }
      }
    }

    authenticationResults = [(__CFString *)v10 authenticationResults];
    v31 = authenticationResults;
    if (authenticationResults && self->_presentingViewController && !self->_isCLIMode && self->_canDoTermsAndConditions && self->_isForHomePod)
    {
      v32 = [(NSSet *)self->_targetedServices containsObject:&unk_287F62A38];

      if (v32)
      {
        if (_TRLogEnabled == 1)
        {
          v34 = TRLogHandle(v33);
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_26F2A2000, v34, OS_LOG_TYPE_DEFAULT, "Showing Terms for Companion Auth", buf, 2u);
          }
        }

        v35 = [TRAnisetteDataProvider alloc];
        session = [(TROperation *)self session];
        error7 = [(TRAnisetteDataProvider *)v35 initWithSession:session];

        v38 = [TRTermsAndConditionsManager alloc];
        authenticationResults2 = [(__CFString *)v10 authenticationResults];
        v40 = [(TRTermsAndConditionsManager *)v38 initWithAuthResultsBlock:authenticationResults2 presentingViewController:self->_presentingChildViewController];
        termsManager = self->_termsManager;
        self->_termsManager = v40;

        v42 = self->_termsManager;
        v52[0] = MEMORY[0x277D85DD0];
        v52[1] = 3221225472;
        v52[2] = __58__TRCompanionAuthOperation__handleResponse_proxiedDevice___block_invoke;
        v52[3] = &unk_279DCF068;
        v52[4] = self;
        v53 = v13;
        v51[0] = MEMORY[0x277D85DD0];
        v51[1] = 3221225472;
        v51[2] = __58__TRCompanionAuthOperation__handleResponse_proxiedDevice___block_invoke_3;
        v51[3] = &unk_279DCEBF8;
        v51[4] = self;
        v43 = [(TRTermsAndConditionsManager *)v42 loadProxiedTerms:v8 anisetteDataProvider:error7 appProvidedContext:@"HomePodSetup" acceptAction:v52 declineAction:v51];
        if (_TRLogEnabled == 1)
        {
          v44 = TRLogHandle(v43);
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v57 = "[TRCompanionAuthOperation _handleResponse:proxiedDevice:]";
            _os_log_impl(&dword_26F2A2000, v44, OS_LOG_TYPE_DEFAULT, "%s Terms Done Presenting", buf, 0xCu);
          }
        }

LABEL_48:
        goto LABEL_49;
      }
    }

    else
    {
    }

    if (_TRLogEnabled == 1)
    {
      v45 = TRLogHandle(v33);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_26F2A2000, v45, OS_LOG_TYPE_DEFAULT, "Companion Auth Skipping terms", buf, 2u);
      }
    }

    error7 = [v13 copy];
    [(TROperation *)self finishWithResult:error7];
    goto LABEL_48;
  }

  v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TRNearbyDeviceErrorDomain" code:-10000 userInfo:0];
  [(TROperation *)self finishWithError:v10];
LABEL_49:
}

void __58__TRCompanionAuthOperation__handleResponse_proxiedDevice___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __58__TRCompanionAuthOperation__handleResponse_proxiedDevice___block_invoke_2;
  v2[3] = &unk_279DCEC20;
  v1 = *(a1 + 40);
  v2[4] = *(a1 + 32);
  v3 = v1;
  dispatch_async(MEMORY[0x277D85CD0], v2);
}

void __58__TRCompanionAuthOperation__handleResponse_proxiedDevice___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) copy];
  [v1 finishWithResult:v2];
}

void __58__TRCompanionAuthOperation__handleResponse_proxiedDevice___block_invoke_3(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__TRCompanionAuthOperation__handleResponse_proxiedDevice___block_invoke_4;
  block[3] = &unk_279DCEBF8;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __58__TRCompanionAuthOperation__handleResponse_proxiedDevice___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TROperationErrorDomain" code:-12002 userInfo:0];
  [v1 finishWithError:v2];
}

@end