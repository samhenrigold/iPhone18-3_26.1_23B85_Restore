@interface VSApplicationController
- (VSApplicationController)init;
- (VSApplicationController)initWithIdentityProvider:(id)provider;
- (VSApplicationControllerDelegate)delegate;
- (id)_applicationControllerAlertForJavascriptAlert:(id)alert;
- (id)_applicationLaunchParams;
- (id)_bootURL;
- (id)_errorForJavascriptErrorValueValue:(id)value withRequest:(id)request;
- (id)_javascriptRequestForRequest:(id)request withVerificationData:(id)data;
- (id)_makeJavaScriptRequest;
- (id)activeAppDocumentForApplication:(id)application;
- (void)_applicationReadyWithSuccess:(BOOL)success javascriptErrorValue:(id)value;
- (void)_beginAuthentication;
- (void)_cancelValidation;
- (void)_completeRequest:(id)request withJavascriptResponse:(id)response javascriptErrorValue:(id)value;
- (void)_completeRequest:(id)request withResult:(id)result;
- (void)_makeJavascriptRequestForRequest:(id)request withCompletionHandler:(id)handler;
- (void)_notifyDelegateWithBlock:(id)block;
- (void)_notifyDidReceiveViewModel:(id)model;
- (void)_notifyDidReceiveViewModelError:(id)error;
- (void)_notifyDidStart;
- (void)_notifyDidUpdateLogoViewModel:(id)model;
- (void)_notifyRequest:(id)request didCompleteWithResponse:(id)response;
- (void)_notifyRequest:(id)request didFailWithError:(id)error;
- (void)_notifyStartDidFailWithError:(id)error;
- (void)_presentAlert:(id)alert;
- (void)_presentDocument:(id)document;
- (void)_submitJavascriptRequest:(id)request forApplicationControllerRequest:(id)controllerRequest;
- (void)appDocumentController:(id)controller didFailToUpdateViewModelWithError:(id)error;
- (void)appDocumentController:(id)controller didUpdateLogoViewModel:(id)model;
- (void)appDocumentController:(id)controller didUpdateViewModel:(id)model;
- (void)application:(id)application evaluateAppJavascriptInContext:(id)context;
- (void)application:(id)application startDidFailWithError:(id)error;
- (void)applicationDidStart:(id)start;
- (void)applicationStartSelfValidationWithAuthenticationToken:(id)token;
- (void)dealloc;
- (void)release;
- (void)sendErrorMessage:(id)message;
- (void)showAuthenticationUserInterfaceWithAuthenticationToken:(id)token;
- (void)start;
- (void)stop;
- (void)submitRequest:(id)request;
- (void)transitionToInvalidState;
- (void)transitionToWaitingForBootUrlState;
- (void)transitionToWaitingForBothLaunchCallbacksState;
@end

@implementation VSApplicationController

- (void)release
{
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v4.receiver = self;
    v4.super_class = VSApplicationController;
    [(VSApplicationController *)&v4 release];
  }

  else
  {
    v3 = MEMORY[0x277D85CD0];

    dispatch_sync_f(v3, self, VSMainThreadRelease);
  }
}

- (VSApplicationController)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The %@ initializer is not available.", v5}];

  return 0;
}

- (VSApplicationController)initWithIdentityProvider:(id)provider
{
  providerCopy = provider;
  if (!providerCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The identityProvider parameter must not be nil."];
  }

  v17.receiver = self;
  v17.super_class = VSApplicationController;
  v6 = [(VSApplicationController *)&v17 init];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CE22A8]);
    preferences = v6->_preferences;
    v6->_preferences = v7;

    objc_storeStrong(&v6->_identityProvider, provider);
    v9 = objc_alloc_init(VSApplicationControllerResponseHandler);
    responseHandler = v6->_responseHandler;
    v6->_responseHandler = v9;

    v11 = objc_alloc_init(MEMORY[0x277CCABD8]);
    privateQueue = v6->_privateQueue;
    v6->_privateQueue = v11;

    [(NSOperationQueue *)v6->_privateQueue setName:@"VSApplicationController.Queue"];
    v16 = providerCopy;
    v13 = objc_alloc_init(MEMORY[0x277CE22E0]);
    [v13 setName:@"VSApplicationController"];
    [v13 setDestinationState:@"Waiting for boot URL" forEvent:@"Start app controller" inState:@"Initial"];
    [v13 setDestinationState:@"Notifying of launch failure" forEvent:@"Boot URL fetch failed" inState:@"Waiting for boot URL"];
    [v13 setDestinationState:@"Waiting for both launch callbacks" forEvent:@"Boot URL received" inState:@"Waiting for boot URL"];
    [v13 setDestinationState:@"Invalid" forEvent:@"Stop app controller" inState:@"Waiting for boot URL"];
    [v13 setDestinationState:@"Waiting for delegate callback" forEvent:@"onLaunch callback succeeded" inState:@"Waiting for both launch callbacks"];
    [v13 setDestinationState:@"Waiting for on launch callback" forEvent:@"Application did start" inState:@"Waiting for both launch callbacks"];
    [v13 setDestinationState:@"Notifying of launch failure" forEvent:@"onLaunch callback failed" inState:@"Waiting for both launch callbacks"];
    [v13 setDestinationState:@"Notifying of launch failure" forEvent:@"Application failed to start" inState:@"Waiting for both launch callbacks"];
    [v13 setDestinationState:@"Invalid" forEvent:@"Stop app controller" inState:@"Waiting for both launch callbacks"];
    [v13 setDestinationState:@"Ready" forEvent:@"onLaunch callback succeeded" inState:@"Waiting for on launch callback"];
    [v13 setDestinationState:@"Notifying of launch failure" forEvent:@"onLaunch callback failed" inState:@"Waiting for on launch callback"];
    [v13 setDestinationState:@"Invalid" forEvent:@"Stop app controller" inState:@"Waiting for on launch callback"];
    [v13 setDestinationState:@"Ready" forEvent:@"Application did start" inState:@"Waiting for delegate callback"];
    [v13 setDestinationState:@"Notifying of launch failure" forEvent:@"onLaunch callback failed" inState:@"Waiting for delegate callback"];
    [v13 setDestinationState:@"Invalid" forEvent:@"Stop app controller" inState:@"Waiting for delegate callback"];
    [v13 ignoreEvent:@"onLaunch callback failed" inState:@"Notifying of launch failure"];
    [v13 ignoreEvent:@"Application failed to start" inState:@"Notifying of launch failure"];
    [v13 ignoreEvent:@"onLaunch callback succeeded" inState:@"Notifying of launch failure"];
    [v13 ignoreEvent:@"Application did start" inState:@"Notifying of launch failure"];
    [v13 ignoreEvent:@"Stop app controller" inState:@"Notifying of launch failure"];
    [v13 setDestinationState:@"Invalid" forEvent:@"Finished notifying of launch failure" inState:@"Notifying of launch failure"];
    [v13 setDestinationState:@"Invalid" forEvent:@"Stop app controller" inState:@"Ready"];
    [v13 ignoreEvent:@"onLaunch callback succeeded" inState:@"Invalid"];
    [v13 ignoreEvent:@"onLaunch callback failed" inState:@"Invalid"];
    [v13 ignoreEvent:@"Application did start" inState:@"Invalid"];
    [v13 ignoreEvent:@"Application failed to start" inState:@"Invalid"];
    [v13 ignoreEvent:@"Stop app controller" inState:@"Invalid"];
    [v13 ignoreEvent:@"Boot URL received" inState:@"Invalid"];
    [v13 ignoreEvent:@"Boot URL fetch failed" inState:@"Invalid"];
    [v13 setDelegate:v6];
    [v13 activateWithState:@"Initial"];
    stateMachine = v6->_stateMachine;
    v6->_stateMachine = v13;
    providerCopy = v16;
  }

  return v6;
}

- (void)dealloc
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = VSDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_270DD4000, v3, OS_LOG_TYPE_DEFAULT, "Deallocating application controller: %p", buf, 0xCu);
  }

  VSRequireMainThread();
  v4.receiver = self;
  v4.super_class = VSApplicationController;
  [(VSApplicationController *)&v4 dealloc];
}

- (void)transitionToWaitingForBootUrlState
{
  CFRetain(self);
  identityProvider = [(VSApplicationController *)self identityProvider];
  requireAuthenticationURLSystemTrust = [identityProvider requireAuthenticationURLSystemTrust];

  identityProvider2 = [(VSApplicationController *)self identityProvider];
  authenticationURL = [identityProvider2 authenticationURL];

  if (!authenticationURL)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The [[self identityProvider] authenticationURL] parameter must not be nil."];
  }

  identityProvider3 = [(VSApplicationController *)self identityProvider];
  authenticationURL2 = [identityProvider3 authenticationURL];

  v9 = [objc_alloc(MEMORY[0x277CE2200]) initWithBootURL:authenticationURL2 isDeveloper:requireAuthenticationURLSystemTrust ^ 1u];
  objc_initWeak(&location, self);
  objc_copyWeak(&v13, &location);
  v12 = v9;
  v10 = VSMainThreadOperationWithBlock();
  [v10 addDependency:v12];
  VSEnqueueCompletionOperation();
  privateQueue = [(VSApplicationController *)self privateQueue];
  [privateQueue addOperation:v12];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __61__VSApplicationController_transitionToWaitingForBootUrlState__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) urlOrError];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __61__VSApplicationController_transitionToWaitingForBootUrlState__block_invoke_2;
    v5[3] = &unk_279E19BE8;
    v5[4] = WeakRetained;
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __61__VSApplicationController_transitionToWaitingForBootUrlState__block_invoke_147;
    v4[3] = &unk_279E19730;
    v4[4] = WeakRetained;
    [v3 unwrapObject:v5 error:v4];
  }
}

void __61__VSApplicationController_transitionToWaitingForBootUrlState__block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = VSDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_270DD4000, v4, OS_LOG_TYPE_DEFAULT, "Fetched boot URL %@", &v6, 0xCu);
  }

  [*(a1 + 32) setFetchedURL:v3];
  v5 = [*(a1 + 32) stateMachine];
  [v5 enqueueEvent:@"Boot URL received"];
}

void __61__VSApplicationController_transitionToWaitingForBootUrlState__block_invoke_147(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = VSErrorLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __61__VSApplicationController_transitionToWaitingForBootUrlState__block_invoke_147_cold_1();
  }

  v5 = VSPublicServiceTemporarilyUnavailableError();
  [*(a1 + 32) setOnLaunchError:v5];
  v6 = [*(a1 + 32) stateMachine];
  [v6 enqueueEvent:@"Boot URL fetch failed"];
}

- (void)transitionToWaitingForBothLaunchCallbacksState
{
  v3 = objc_alloc_init(MEMORY[0x277CE2230]);
  privateQueue = [(VSApplicationController *)self privateQueue];
  [privateQueue addOperation:v3];

  v7 = MEMORY[0x277D85DD0];
  v8 = v3;
  v5 = v3;
  v6 = VSMainThreadOperationWithBlock();
  [v6 addDependency:{v5, v7, 3221225472, __73__VSApplicationController_transitionToWaitingForBothLaunchCallbacksState__block_invoke, &unk_279E19848}];
  VSEnqueueCompletionOperation();
}

void __73__VSApplicationController_transitionToWaitingForBothLaunchCallbacksState__block_invoke(uint64_t a1)
{
  v47 = *MEMORY[0x277D85DE8];
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 0;
  v2 = [*(a1 + 32) result];
  v3 = [v2 forceUnwrapObject];

  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __73__VSApplicationController_transitionToWaitingForBothLaunchCallbacksState__block_invoke_2;
  v40[3] = &unk_279E19C10;
  v40[4] = &v41;
  [v3 unwrapObject:v40 error:&__block_literal_global_9];
  v4 = [*(a1 + 40) _bootURL];
  v5 = [v4 forceUnwrapObject];

  if (*(v42 + 24) == 1 && ([*(a1 + 40) identityProvider], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isDeveloper"), v6, v7))
  {
    v8 = [objc_alloc(MEMORY[0x277CCACE0]) initWithURL:v5 resolvingAgainstBaseURL:0];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 queryItems];

      if (v10)
      {
        v11 = objc_alloc(MEMORY[0x277CBEB18]);
        v12 = [v9 queryItems];
        v13 = v12 == 0;

        if (v13)
        {
          [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The [components queryItems] parameter must not be nil."];
        }

        v14 = [v9 queryItems];
        v15 = [v11 initWithArray:v14];
      }

      else
      {
        v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
      }

      v17 = MEMORY[0x277CCACA8];
      v18 = [MEMORY[0x277CBEAA8] date];
      [v18 timeIntervalSince1970];
      v20 = [v17 stringWithFormat:@"%.0f", v19];

      v21 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"cachebuster" value:v20];
      [v15 addObject:v21];

      [v9 setQueryItems:v15];
      v22 = [v9 URL];
      v23 = v22;
      if (v22)
      {
        v16 = v22;

        v24 = VSDefaultLogObject();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v25 = [v16 absoluteString];
          *buf = 138412290;
          v46 = v25;
          _os_log_impl(&dword_270DD4000, v24, OS_LOG_TYPE_DEFAULT, "New URL with cachebuster is %@", buf, 0xCu);
        }
      }

      else
      {
        v16 = v5;
      }
    }

    else
    {
      v16 = v5;
    }
  }

  else
  {
    v16 = v5;
  }

  v26 = [[VSApplication alloc] initWithBootURL:v16];
  [(VSApplication *)v26 setDelegate:*(a1 + 40)];
  v27 = [*(a1 + 40) auditToken];
  [(VSApplication *)v26 setAuditToken:v27];

  v28 = [*(a1 + 40) preferences];
  if ([v28 allowNonSystemTrust])
  {
    v29 = 0;
  }

  else
  {
    v30 = [*(a1 + 40) identityProvider];
    v29 = [v30 requireXHRRequestSystemTrust];
  }

  [(VSApplication *)v26 setCanRequireSystemTrust:v29];
  v31 = [*(a1 + 40) identityProvider];
  v32 = [v31 uniqueID];

  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __73__VSApplicationController_transitionToWaitingForBothLaunchCallbacksState__block_invoke_170;
  v38[3] = &unk_279E19598;
  v38[4] = *(a1 + 40);
  v33 = v26;
  v39 = v33;
  [v32 conditionallyUnwrapObject:v38];
  v34 = [*(a1 + 40) identityProvider];
  v35 = [v34 isDeveloper];

  if (v35)
  {
    v36 = 1;
  }

  else
  {
    v37 = [*(a1 + 40) preferences];
    v36 = [v37 shouldAlwaysAllowRemoteInspection];
  }

  [(VSApplication *)v33 setShouldAllowRemoteInspection:v36];
  [(VSApplication *)v33 start];
  [*(a1 + 40) setApplication:v33];

  _Block_object_dispose(&v41, 8);
}

void *__73__VSApplicationController_transitionToWaitingForBothLaunchCallbacksState__block_invoke_2(uint64_t a1, void *a2)
{
  result = [a2 cacheBusterEnabled];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void __73__VSApplicationController_transitionToWaitingForBothLaunchCallbacksState__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = VSErrorLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __73__VSApplicationController_transitionToWaitingForBothLaunchCallbacksState__block_invoke_3_cold_1();
  }
}

void __73__VSApplicationController_transitionToWaitingForBothLaunchCallbacksState__block_invoke_170(uint64_t a1, void *a2)
{
  v17 = a2;
  v3 = [*(a1 + 32) preferences];
  if ([v3 useLegacyVendorIdentifier])
  {
    v4 = [&unk_2880D26E0 containsObject:v17];

    if (v4)
    {
      v5 = *(a1 + 40);
      v6 = [MEMORY[0x277D75418] currentDevice];
      v7 = [v6 identifierForVendor];
      v8 = [v7 UUIDString];
      v9 = v5;
LABEL_7:
      [v9 setVendorIdentifier:v8];
      goto LABEL_15;
    }
  }

  else
  {
  }

  v6 = [*(a1 + 32) preferences];
  v7 = [v6 vendorIdentifierDictionary];
  v8 = [v7 objectForKey:v17];
  if (v8)
  {
    v9 = *(a1 + 40);
    goto LABEL_7;
  }

  v10 = *MEMORY[0x277CBE660];
  do
  {
    v11 = v8;
    v12 = objc_alloc_init(MEMORY[0x277CCAD78]);
    v8 = [v12 UUIDString];

    v13 = [v7 allValues];
    if (!v8)
    {
      [MEMORY[0x277CBEAD8] raise:v10 format:@"The vendorID parameter must not be nil."];
    }

    v14 = [v13 containsObject:v8];
  }

  while ((v14 & 1) != 0);
  v15 = [v7 mutableCopy];
  if (!v8)
  {
    [MEMORY[0x277CBEAD8] raise:v10 format:@"The vendorID parameter must not be nil."];
  }

  [v15 setValue:v8 forKey:v17];
  v16 = [*(a1 + 32) preferences];
  [v16 setVendorIdentifierDictionary:v15];

  [*(a1 + 40) setVendorIdentifier:v8];
LABEL_15:
}

uint64_t __68__VSApplicationController_transitionToNotifyingOfLaunchFailureState__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __68__VSApplicationController_transitionToNotifyingOfLaunchFailureState__block_invoke_2;
  v3[3] = &unk_279E19290;
  v3[4] = v1;
  return [v1 _notifyDelegateWithBlock:v3];
}

void __68__VSApplicationController_transitionToNotifyingOfLaunchFailureState__block_invoke_2(uint64_t a1)
{
  v15[2] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) delegateError];
  v3 = [*(a1 + 32) onLaunchError];
  v4 = v3;
  if (v2)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v8 = *(a1 + 32);
    v9 = v2;
LABEL_17:
    [v8 _notifyStartDidFailWithError:v9];
    goto LABEL_18;
  }

  if (v3)
  {
    v6 = v2 == 0;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v8 = *(a1 + 32);
    v9 = v4;
    goto LABEL_17;
  }

  if (v2)
  {
    v7 = v3 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"No errors to notify about."];
  }

  else
  {
    v15[0] = v2;
    v15[1] = v3;
    v11 = MEMORY[0x277CBEA60];
    v12 = v2;
    v13 = [v11 arrayWithObjects:v15 count:2];
    v14 = VSPublicErrorWithDetailedErrors();

    [*(a1 + 32) _notifyStartDidFailWithError:v14];
  }

LABEL_18:
  [*(a1 + 32) setDelegateError:0];
  [*(a1 + 32) setOnLaunchError:0];
  v10 = [*(a1 + 32) stateMachine];
  [v10 enqueueEvent:@"Finished notifying of launch failure"];
}

- (void)transitionToInvalidState
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = VSDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[VSApplicationController transitionToInvalidState]";
    _os_log_impl(&dword_270DD4000, v3, OS_LOG_TYPE_DEFAULT, "Entering %s", &v5, 0xCu);
  }

  application = [(VSApplicationController *)self application];
  [application setDelegate:0];
  [application stop];
  [(VSApplicationController *)self setApplication:0];
  CFRelease(self);
}

- (void)start
{
  stateMachine = [(VSApplicationController *)self stateMachine];
  [stateMachine enqueueEvent:@"Start app controller"];
}

- (void)stop
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = VSDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[VSApplicationController stop]";
    _os_log_impl(&dword_270DD4000, v3, OS_LOG_TYPE_DEFAULT, "Entering %s", &v5, 0xCu);
  }

  stateMachine = [(VSApplicationController *)self stateMachine];
  [stateMachine enqueueEvent:@"Stop app controller"];
}

- (void)sendErrorMessage:(id)message
{
  messageCopy = message;
  application = [(VSApplicationController *)self application];
  [application sendErrorWithMessage:messageCopy];
}

- (void)showAuthenticationUserInterfaceWithAuthenticationToken:(id)token
{
  v21 = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  v5 = VSDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[VSApplicationController showAuthenticationUserInterfaceWithAuthenticationToken:]";
    _os_log_impl(&dword_270DD4000, v5, OS_LOG_TYPE_DEFAULT, "Entering %s", &buf, 0xCu);
  }

  VSRequireMainThread();
  v6 = MEMORY[0x277CE2298];
  body = [tokenCopy body];
  v8 = [v6 optionalWithObject:body];
  v9 = [v8 unwrapWithFallback:&stru_2880B8BB0];

  *&buf = 0;
  *(&buf + 1) = &buf;
  v19 = 0x2020000000;
  v20 = 0;
  objc_initWeak(&location, self);
  application = [(VSApplicationController *)self application];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __82__VSApplicationController_showAuthenticationUserInterfaceWithAuthenticationToken___block_invoke;
  v13[3] = &unk_279E19C38;
  p_buf = &buf;
  objc_copyWeak(&v16, &location);
  v11 = v9;
  v14 = v11;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __82__VSApplicationController_showAuthenticationUserInterfaceWithAuthenticationToken___block_invoke_196;
  v12[3] = &unk_279E19C60;
  v12[4] = self;
  v12[5] = &buf;
  [application evaluate:v13 completionHandler:v12];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
  _Block_object_dispose(&buf, 8);
}

void __82__VSApplicationController_showAuthenticationUserInterfaceWithAuthenticationToken___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = VSDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v12 = "[VSApplicationController showAuthenticationUserInterfaceWithAuthenticationToken:]_block_invoke";
    _os_log_impl(&dword_270DD4000, v4, OS_LOG_TYPE_DEFAULT, "Beginning evaluation of JavaScript in %s", buf, 0xCu);
  }

  v5 = [v3 objectForKeyedSubscript:@"App"];

  if ([v5 hasProperty:@"onShowUserInterface"])
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained setAllowUI:1];

    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v7 setObject:@"authenticate" forKey:@"purpose"];
    if ([*(a1 + 32) length])
    {
      [v7 setObject:*(a1 + 32) forKey:@"currentAuthentication"];
    }

    v10 = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v10 count:1];
    v9 = [v5 invokeMethod:@"onShowUserInterface" withArguments:v8];
  }
}

void __82__VSApplicationController_showAuthenticationUserInterfaceWithAuthenticationToken___block_invoke_196(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = VSDefaultLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[VSApplicationController showAuthenticationUserInterfaceWithAuthenticationToken:]_block_invoke";
    _os_log_impl(&dword_270DD4000, v2, OS_LOG_TYPE_DEFAULT, "Finished evaluation of JavaScript in %s", &v6, 0xCu);
  }

  v3 = *(a1 + 32);
  v4 = v3;
  if (v3 && (*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    v5 = [v3 application];
    [v5 sendErrorWithMessage:@"The App.onShowUserInterface function must be defined."];
  }
}

- (void)submitRequest:(id)request
{
  requestCopy = request;
  VSRequireMainThread();
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __41__VSApplicationController_submitRequest___block_invoke;
  v6[3] = &unk_279E19C88;
  objc_copyWeak(&v8, &location);
  v5 = requestCopy;
  v7 = v5;
  [(VSApplicationController *)self _makeJavascriptRequestForRequest:v5 withCompletionHandler:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __41__VSApplicationController_submitRequest___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  VSRequireMainThread();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = *(a1 + 32);
    if (v10)
    {
      [WeakRetained _submitJavascriptRequest:v10 forApplicationControllerRequest:v8];
    }

    else
    {
      v9 = [MEMORY[0x277CE2250] failableWithError:v5];
      [v7 _completeRequest:v8 withResult:v9];
    }
  }
}

- (void)applicationStartSelfValidationWithAuthenticationToken:(id)token
{
  tokenCopy = token;
  application = [(VSApplicationController *)self application];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __81__VSApplicationController_applicationStartSelfValidationWithAuthenticationToken___block_invoke;
  v7[3] = &unk_279E19CB0;
  v8 = tokenCopy;
  v6 = tokenCopy;
  [application evaluate:v7 completionHandler:&__block_literal_global_211];
}

void __81__VSApplicationController_applicationStartSelfValidationWithAuthenticationToken___block_invoke(uint64_t a1, void *a2)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v3 = [a2 objectForKeyedSubscript:@"App"];
  v4 = v3;
  if (v3 && [v3 hasProperty:@"onValidate"])
  {
    v5 = objc_alloc_init(VSApplicationControllerRequestFactory);
    v6 = [(VSApplicationControllerRequestFactory *)v5 authenticationApplicationControllerRequestWithAuthenticationToken:0 forcedAuthentication:0];
    v7 = [v6 SAMLRequest];

    if (v7)
    {
      v8 = [v6 SAMLRequest];

      if (!v8)
      {
        [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The [request SAMLRequest] parameter must not be nil."];
      }

      v9 = [v6 SAMLRequest];
    }

    else
    {
      v9 = &stru_2880B8BB0;
    }

    v10 = MEMORY[0x277CE2298];
    v11 = [*(a1 + 32) body];
    v12 = [v10 optionalWithObject:v11];
    v13 = [v12 unwrapWithFallback:&stru_2880B8BB0];

    v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v14 setObject:v9 forKey:@"requestBody"];
    if ([v13 length])
    {
      [v14 setObject:v13 forKey:@"currentAuthentication"];
    }

    v17[0] = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
    v16 = [v4 invokeMethod:@"onValidate" withArguments:v15];
  }
}

void __81__VSApplicationController_applicationStartSelfValidationWithAuthenticationToken___block_invoke_2(uint64_t a1)
{
  v1 = VSDefaultLogObject();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_270DD4000, v1, OS_LOG_TYPE_DEFAULT, "Finished invoking onSubmit callback.", v2, 2u);
  }
}

- (void)application:(id)application evaluateAppJavascriptInContext:(id)context
{
  v77[4] = *MEMORY[0x277D85DE8];
  applicationCopy = application;
  contextCopy = context;
  v38 = [contextCopy objectForKeyedSubscript:@"App"];
  objc_initWeak(&location, self);
  v75[0] = *MEMORY[0x277CD4630];
  v6 = v75[0];
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __70__VSApplicationController_application_evaluateAppJavascriptInContext___block_invoke;
  v51[3] = &unk_279E19CF8;
  objc_copyWeak(&v52, &location);
  v7 = MEMORY[0x2743B6E40](v51);
  v8 = *MEMORY[0x277CD4638];
  v9 = MEMORY[0x277CBEC28];
  v77[0] = v7;
  v77[1] = MEMORY[0x277CBEC28];
  v10 = *MEMORY[0x277CD4618];
  v75[1] = v8;
  v75[2] = v10;
  v76 = *MEMORY[0x277CD4610];
  v11 = v76;
  v77[2] = MEMORY[0x277CBEC28];
  v77[3] = MEMORY[0x277CBEC28];
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v77 forKeys:v75 count:4];
  [v38 defineProperty:@"presentDocument" descriptor:v12];

  v73[0] = v6;
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __70__VSApplicationController_application_evaluateAppJavascriptInContext___block_invoke_2;
  v49[3] = &unk_279E19D20;
  objc_copyWeak(&v50, &location);
  v13 = MEMORY[0x2743B6E40](v49);
  v74[0] = v13;
  v74[1] = v9;
  v73[1] = v8;
  v73[2] = v10;
  v73[3] = v11;
  v74[2] = v9;
  v74[3] = v9;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v74 forKeys:v73 count:4];
  [v38 defineProperty:@"presentAlert" descriptor:v14];

  v71[0] = v6;
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __70__VSApplicationController_application_evaluateAppJavascriptInContext___block_invoke_3;
  v47[3] = &unk_279E19CF8;
  objc_copyWeak(&v48, &location);
  v15 = MEMORY[0x2743B6E40](v47);
  v72[0] = v15;
  v72[1] = v9;
  v71[1] = v8;
  v71[2] = v10;
  v71[3] = v11;
  v72[2] = v9;
  v72[3] = v9;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v72 forKeys:v71 count:4];
  [v38 defineProperty:@"beginAuthentication" descriptor:v16];

  v69[0] = v6;
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __70__VSApplicationController_application_evaluateAppJavascriptInContext___block_invoke_4;
  v45[3] = &unk_279E19D48;
  objc_copyWeak(&v46, &location);
  v17 = MEMORY[0x2743B6E40](v45);
  v70[0] = v17;
  v70[1] = v9;
  v69[1] = v8;
  v69[2] = v10;
  v69[3] = v11;
  v70[2] = v9;
  v70[3] = v9;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v70 forKeys:v69 count:4];
  [v38 defineProperty:@"cancelValidation" descriptor:v18];

  v67[0] = v6;
  v68[0] = objc_opt_class();
  v68[1] = v9;
  v67[1] = v8;
  v67[2] = v10;
  v67[3] = v11;
  v68[2] = v9;
  v68[3] = v9;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v68 forKeys:v67 count:4];
  [v38 defineProperty:@"ResponsePayload" descriptor:v19];

  v65[0] = v6;
  v66[0] = objc_opt_class();
  v66[1] = v9;
  v65[1] = v8;
  v65[2] = v10;
  v65[3] = v11;
  v66[2] = v9;
  v66[3] = v9;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v66 forKeys:v65 count:4];
  [v38 defineProperty:@"Subscription" descriptor:v20];

  v63[0] = v6;
  v64[0] = objc_opt_class();
  v64[1] = v9;
  v63[1] = v8;
  v63[2] = v10;
  v63[3] = v11;
  v64[2] = v9;
  v64[3] = v9;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v64 forKeys:v63 count:4];
  [v38 defineProperty:@"UserAccount" descriptor:v21];

  v61[0] = v6;
  v62[0] = objc_opt_class();
  v62[1] = v9;
  v61[1] = v8;
  v61[2] = v10;
  v61[3] = v11;
  v62[2] = v9;
  v62[3] = v9;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v62 forKeys:v61 count:4];
  [v38 defineProperty:@"AppleSubscription" descriptor:v22];

  v59[0] = v6;
  v60[0] = objc_opt_class();
  v60[1] = v9;
  v59[1] = v8;
  v59[2] = v10;
  v59[3] = v11;
  v60[2] = v9;
  v60[3] = v9;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v60 forKeys:v59 count:4];
  [v38 defineProperty:@"Alert" descriptor:v23];

  v57[0] = v6;
  v58[0] = objc_opt_class();
  v58[1] = v9;
  v57[1] = v8;
  v57[2] = v10;
  v57[3] = v11;
  v58[2] = v9;
  v58[3] = v9;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v58 forKeys:v57 count:4];
  [v38 defineProperty:@"AlertAction" descriptor:v24];

  VSExportCompressionToContext(contextCopy);
  v25 = VSScriptMessageSupportInjection(1);
  v26 = [contextCopy evaluateScript:v25];

  v27 = MEMORY[0x277CD4658];
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __70__VSApplicationController_application_evaluateAppJavascriptInContext___block_invoke_5;
  v43[3] = &unk_279E19D70;
  objc_copyWeak(&v44, &location);
  v28 = MEMORY[0x2743B6E40](v43);
  v29 = [v27 valueWithObject:v28 inContext:contextCopy];

  [(VSApplicationController *)self setApplicationReadyCallback:v29];
  globalObject = [contextCopy globalObject];
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v31 = [&unk_2880D26F8 countByEnumeratingWithState:&v39 objects:v56 count:16];
  if (v31)
  {
    v32 = *v40;
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v40 != v32)
        {
          objc_enumerationMutation(&unk_2880D26F8);
        }

        v34 = *(*(&v39 + 1) + 8 * i);
        if ([globalObject deleteProperty:v34])
        {
          v35 = VSErrorLogObject();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v55 = v34;
            _os_log_error_impl(&dword_270DD4000, v35, OS_LOG_TYPE_ERROR, "Unable to delete %@ property.", buf, 0xCu);
          }
        }
      }

      v31 = [&unk_2880D26F8 countByEnumeratingWithState:&v39 objects:v56 count:16];
    }

    while (v31);
  }

  objc_destroyWeak(&v44);
  objc_destroyWeak(&v46);
  objc_destroyWeak(&v48);
  objc_destroyWeak(&v50);
  objc_destroyWeak(&v52);
  objc_destroyWeak(&location);
}

void __70__VSApplicationController_application_evaluateAppJavascriptInContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _presentDocument:v3];
}

void __70__VSApplicationController_application_evaluateAppJavascriptInContext___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _presentAlert:v3];
}

void __70__VSApplicationController_application_evaluateAppJavascriptInContext___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _beginAuthentication];
}

void __70__VSApplicationController_application_evaluateAppJavascriptInContext___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _cancelValidation];
}

void __70__VSApplicationController_application_evaluateAppJavascriptInContext___block_invoke_5(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = VSDefaultLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_270DD4000, v6, OS_LOG_TYPE_DEFAULT, "App.onLaunch() callback called.", v11, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained applicationReadyCallback];

    if (v9)
    {
      [v8 _applicationReadyWithSuccess:a2 javascriptErrorValue:v5];
      [v8 setApplicationReadyCallback:0];
    }

    else
    {
      v10 = [v8 application];
      [v10 sendErrorWithMessage:@"The onLaunch callback can only be called once."];
    }
  }
}

- (void)applicationDidStart:(id)start
{
  stateMachine = [(VSApplicationController *)self stateMachine];
  [stateMachine enqueueEvent:@"Application did start"];
}

- (void)application:(id)application startDidFailWithError:(id)error
{
  v6 = VSPublicError();
  [(VSApplicationController *)self setDelegateError:v6];
  stateMachine = [(VSApplicationController *)self stateMachine];
  [stateMachine enqueueEvent:@"Application failed to start"];
}

- (id)activeAppDocumentForApplication:(id)application
{
  appDocumentController = [(VSApplicationController *)self appDocumentController];
  appDocument = [appDocumentController appDocument];

  return appDocument;
}

- (void)appDocumentController:(id)controller didUpdateViewModel:(id)model
{
  v9 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  v6 = VSDefaultLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = modelCopy;
    _os_log_impl(&dword_270DD4000, v6, OS_LOG_TYPE_DEFAULT, "Document controller did update view model: %@", &v7, 0xCu);
  }

  [(VSApplicationController *)self _notifyDidReceiveViewModel:modelCopy];
}

- (void)appDocumentController:(id)controller didFailToUpdateViewModelWithError:(id)error
{
  errorCopy = error;
  v6 = VSErrorLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [VSApplicationController appDocumentController:didFailToUpdateViewModelWithError:];
  }

  [(VSApplicationController *)self _notifyDidReceiveViewModelError:errorCopy];
}

- (void)appDocumentController:(id)controller didUpdateLogoViewModel:(id)model
{
  v9 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  v6 = VSDefaultLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = modelCopy;
    _os_log_impl(&dword_270DD4000, v6, OS_LOG_TYPE_DEFAULT, "Document controller did update logo view model: %@", &v7, 0xCu);
  }

  [(VSApplicationController *)self _notifyDidUpdateLogoViewModel:modelCopy];
}

- (void)_presentDocument:(id)document
{
  v18 = *MEMORY[0x277D85DE8];
  documentCopy = document;
  if ([(VSApplicationController *)self allowUI])
  {
    v6 = VSDefaultLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = NSStringFromSelector(a2);
      *buf = 138412546;
      v15 = v8;
      v16 = 2112;
      v17 = v9;
      _os_log_impl(&dword_270DD4000, v6, OS_LOG_TYPE_DEFAULT, "Will create app document in [%@ %@]", buf, 0x16u);
    }

    application = [(VSApplicationController *)self application];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __44__VSApplicationController__presentDocument___block_invoke;
    v13[3] = &unk_279E19D98;
    v13[4] = self;
    v13[5] = a2;
    [application appDocumentForDocument:documentCopy completionHandler:v13];
  }

  else
  {
    v11 = VSErrorLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [VSApplicationController _presentDocument:];
    }

    application2 = [(VSApplicationController *)self application];
    [application2 sendErrorWithMessage:@"The App.presentDocument function cannot be called in the current context."];
  }
}

void __44__VSApplicationController__presentDocument___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = VSDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = NSStringFromSelector(*(a1 + 40));
    *buf = 138412802;
    v10 = v3;
    v11 = 2112;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_270DD4000, v4, OS_LOG_TYPE_DEFAULT, "Did create app document [%@] in [%@ %@]", buf, 0x20u);
  }

  v8 = v3;
  VSPerformBlockOnMainThread();
}

void __44__VSApplicationController__presentDocument___block_invoke_235(uint64_t a1)
{
  v2 = *(a1 + 32);
  v10 = 0;
  v3 = [VSAppDocumentControllerFactory appDocumentControllerForAppDocument:v2 error:&v10];
  v4 = v10;
  [v3 setDelegate:*(a1 + 40)];
  [*(a1 + 40) setAppDocumentController:v3];
  if (v3)
  {
    v5 = [v3 viewModel];
    if (v5)
    {
      if ([*(a1 + 40) applicationMustSelfValidate])
      {
        [v5 setPreValidate:1];
      }

      [*(a1 + 40) _notifyDidReceiveViewModel:v5];
    }

    else
    {
      v7 = [v3 viewModelError];

      v8 = VSErrorLogObject();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __44__VSApplicationController__presentDocument___block_invoke_235_cold_1();
      }

      v9 = VSPublicError();
      [*(a1 + 40) _notifyDidReceiveViewModelError:v9];

      v4 = v7;
    }
  }

  else
  {
    v6 = VSErrorLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __44__VSApplicationController__presentDocument___block_invoke_235_cold_2();
    }

    v5 = VSPublicError();
    [*(a1 + 40) _notifyDidReceiveViewModelError:v5];
  }
}

- (void)_presentAlert:(id)alert
{
  alertCopy = alert;
  if ([(VSApplicationController *)self allowUI])
  {
    application = [(VSApplicationController *)self _applicationControllerAlertForJavascriptAlert:alertCopy];
    delegate = [(VSApplicationController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v8 = delegate;
      v9 = application;
      VSPerformBlockOnMainThread();
    }
  }

  else
  {
    v7 = VSErrorLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [VSApplicationController _presentAlert:];
    }

    application = [(VSApplicationController *)self application];
    [application sendErrorWithMessage:@"The App.presentAlert function cannot be called in the current context."];
  }
}

- (void)_beginAuthentication
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __47__VSApplicationController__beginAuthentication__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appDocumentController];
  v1 = [v2 viewModel];
  if (![v1 validationState] || objc_msgSend(v1, "validationState") == 1)
  {
    [v1 setValidationState:2];
  }
}

- (void)_cancelValidation
{
  if ([(VSApplicationController *)self allowUI])
  {
    VSPerformBlockOnMainThread();
  }
}

void __44__VSApplicationController__cancelValidation__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appDocumentController];
  v1 = [v2 viewModel];
  if ([v1 validationState] == 1)
  {
    [v1 setValidationState:0];
  }
}

- (void)_submitJavascriptRequest:(id)request forApplicationControllerRequest:(id)controllerRequest
{
  v27 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  controllerRequestCopy = controllerRequest;
  v8 = VSDefaultLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[VSApplicationController _submitJavascriptRequest:forApplicationControllerRequest:]";
    _os_log_impl(&dword_270DD4000, v8, OS_LOG_TYPE_DEFAULT, "Entering %s", &buf, 0xCu);
  }

  v9 = [requestCopy copy];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v25 = 0x2020000000;
  v26 = 0;
  objc_initWeak(&location, self);
  application = [(VSApplicationController *)self application];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __84__VSApplicationController__submitJavascriptRequest_forApplicationControllerRequest___block_invoke;
  v18[3] = &unk_279E19E10;
  objc_copyWeak(&v22, &location);
  v11 = controllerRequestCopy;
  v19 = v11;
  v12 = v9;
  v20 = v12;
  p_buf = &buf;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __84__VSApplicationController__submitJavascriptRequest_forApplicationControllerRequest___block_invoke_2;
  v14[3] = &unk_279E19E38;
  objc_copyWeak(&v17, &location);
  v16 = &buf;
  v13 = v11;
  v15 = v13;
  [application evaluate:v18 completionHandler:v14];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
  _Block_object_dispose(&buf, 8);
}

void __84__VSApplicationController__submitJavascriptRequest_forApplicationControllerRequest___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = VSDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v20 = "[VSApplicationController _submitJavascriptRequest:forApplicationControllerRequest:]_block_invoke";
    _os_log_impl(&dword_270DD4000, v4, OS_LOG_TYPE_DEFAULT, "Beginning evaluation of JavaScript in %s", buf, 0xCu);
  }

  v5 = [v3 objectForKeyedSubscript:@"App"];
  if ([v5 hasProperty:@"onRequest"])
  {
    v6 = MEMORY[0x277CD4658];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __84__VSApplicationController__submitJavascriptRequest_forApplicationControllerRequest___block_invoke_252;
    v13[3] = &unk_279E19DE8;
    objc_copyWeak(&v15, (a1 + 56));
    v14 = *(a1 + 32);
    v7 = MEMORY[0x2743B6E40](v13);
    v8 = [v6 valueWithObject:v7 inContext:v3];

    v9 = *(a1 + 40);
    v17[0] = @"request";
    v17[1] = @"callback";
    v18[0] = v9;
    v18[1] = v8;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
    *(*(*(a1 + 48) + 8) + 24) = 1;
    v16 = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];
    v12 = [v5 invokeMethod:@"onRequest" withArguments:v11];

    objc_destroyWeak(&v15);
  }
}

void __84__VSApplicationController__submitJavascriptRequest_forApplicationControllerRequest___block_invoke_252(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _completeRequest:*(a1 + 32) withJavascriptResponse:v6 javascriptErrorValue:v5];
}

void __84__VSApplicationController__submitJavascriptRequest_forApplicationControllerRequest___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = VSDefaultLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315138;
    v11 = "[VSApplicationController _submitJavascriptRequest:forApplicationControllerRequest:]_block_invoke_2";
    _os_log_impl(&dword_270DD4000, v2, OS_LOG_TYPE_DEFAULT, "Finished evaluation of JavaScript in %s", &v10, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = WeakRetained;
  if (WeakRetained && (*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    v5 = [WeakRetained application];
    [v5 sendErrorWithMessage:@"The App.onRequest function must be defined."];

    v6 = VSPrivateError();
    v7 = VSPublicError();
    v8 = *(a1 + 32);
    v9 = [MEMORY[0x277CE2250] failableWithError:v7];
    [v4 _completeRequest:v8 withResult:v9];
  }
}

- (void)_applicationReadyWithSuccess:(BOOL)success javascriptErrorValue:(id)value
{
  if (success)
  {
    v5 = VSDefaultLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_270DD4000, v5, OS_LOG_TYPE_DEFAULT, "Application is ready.", buf, 2u);
    }

    application = [(VSApplicationController *)self application];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __77__VSApplicationController__applicationReadyWithSuccess_javascriptErrorValue___block_invoke;
    v10[3] = &unk_279E19CB0;
    v10[4] = self;
    [application evaluate:v10 completionHandler:&__block_literal_global_259];

    stateMachine = [(VSApplicationController *)self stateMachine];
    [stateMachine enqueueEvent:@"onLaunch callback succeeded"];
  }

  else
  {
    v8 = [(VSApplicationController *)self _errorForJavascriptErrorValueValue:value withRequest:0];
    v9 = VSErrorLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [VSApplicationController _applicationReadyWithSuccess:javascriptErrorValue:];
    }

    stateMachine = v8;
    VSPerformBlockOnMainThread();
  }
}

void __77__VSApplicationController__applicationReadyWithSuccess_javascriptErrorValue___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:@"App"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 hasProperty:@"onValidate"];
    v6 = VSDefaultLogObject();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (v7)
      {
        *buf = 0;
        _os_log_impl(&dword_270DD4000, v6, OS_LOG_TYPE_DEFAULT, "Application has onSubmit callback.", buf, 2u);
      }

      [*(a1 + 32) setApplicationMustSelfValidate:1];
    }

    else
    {
      if (v7)
      {
        *v8 = 0;
        _os_log_impl(&dword_270DD4000, v6, OS_LOG_TYPE_DEFAULT, "Application does not have onSubmit callback.", v8, 2u);
      }
    }
  }
}

void __77__VSApplicationController__applicationReadyWithSuccess_javascriptErrorValue___block_invoke_260(uint64_t a1)
{
  [*(a1 + 32) setOnLaunchError:*(a1 + 40)];
  v2 = [*(a1 + 32) stateMachine];
  [v2 enqueueEvent:@"onLaunch callback failed"];
}

- (void)_completeRequest:(id)request withJavascriptResponse:(id)response javascriptErrorValue:(id)value
{
  requestCopy = request;
  responseCopy = response;
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    responseHandler = [(VSApplicationController *)self responseHandler];
    type = [requestCopy type];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __88__VSApplicationController__completeRequest_withJavascriptResponse_javascriptErrorValue___block_invoke;
    v16[3] = &unk_279E19E80;
    v16[4] = self;
    v17 = requestCopy;
    [responseHandler handleJavascriptResponse:responseCopy requestType:type completionHandler:v16];
  }

  else
  {
    v13 = [(VSApplicationController *)self _errorForJavascriptErrorValueValue:valueCopy withRequest:requestCopy];
    v14 = VSErrorLogObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [VSApplicationController _completeRequest:withJavascriptResponse:javascriptErrorValue:];
    }

    v15 = [MEMORY[0x277CE2250] failableWithError:v13];
    [(VSApplicationController *)self _completeRequest:requestCopy withResult:v15];
  }
}

void __88__VSApplicationController__completeRequest_withJavascriptResponse_javascriptErrorValue___block_invoke(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __88__VSApplicationController__completeRequest_withJavascriptResponse_javascriptErrorValue___block_invoke_3;
  v4[3] = &unk_279E19730;
  v4[4] = *(a1 + 32);
  v3 = a2;
  [v3 unwrapObject:&__block_literal_global_263 error:v4];
  [*(a1 + 32) _completeRequest:*(a1 + 40) withResult:v3];
}

void __88__VSApplicationController__completeRequest_withJavascriptResponse_javascriptErrorValue___block_invoke_3(uint64_t a1, void *a2)
{
  v4 = [a2 debugDescription];
  v3 = [*(a1 + 32) application];
  [v3 sendErrorWithMessage:v4];
}

- (void)_completeRequest:(id)request withResult:(id)result
{
  requestCopy = request;
  resultCopy = result;
  v6 = requestCopy;
  v7 = resultCopy;
  VSPerformBlockOnMainThread();
}

void __55__VSApplicationController__completeRequest_withResult___block_invoke(void *a1)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__VSApplicationController__completeRequest_withResult___block_invoke_2;
  v7[3] = &unk_279E19EA8;
  v2 = a1[4];
  v3 = a1[6];
  v7[4] = a1[5];
  v8 = v3;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __55__VSApplicationController__completeRequest_withResult___block_invoke_265;
  v5[3] = &unk_279E19ED0;
  v4 = a1[6];
  v5[4] = a1[5];
  v6 = v4;
  [v2 unwrapObject:v7 error:v5];
}

void __55__VSApplicationController__completeRequest_withResult___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = VSDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_270DD4000, v4, OS_LOG_TYPE_DEFAULT, "Will notify request did complete.", buf, 2u);
  }

  [*(a1 + 32) _notifyRequest:*(a1 + 40) didCompleteWithResponse:v3];
  v5 = VSDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_270DD4000, v5, OS_LOG_TYPE_DEFAULT, "Did notify request did complete.", v6, 2u);
  }
}

void __55__VSApplicationController__completeRequest_withResult___block_invoke_265(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = VSDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_270DD4000, v4, OS_LOG_TYPE_DEFAULT, "Will notify request did fail: %@", &v6, 0xCu);
  }

  [*(a1 + 32) _notifyRequest:*(a1 + 40) didFailWithError:v3];
  v5 = VSDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_270DD4000, v5, OS_LOG_TYPE_DEFAULT, "Did notify request did fail: %@", &v6, 0xCu);
  }
}

- (void)_notifyRequest:(id)request didCompleteWithResponse:(id)response
{
  requestCopy = request;
  responseCopy = response;
  VSRequireMainThread();
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __66__VSApplicationController__notifyRequest_didCompleteWithResponse___block_invoke;
  v10[3] = &unk_279E19DC0;
  v10[4] = self;
  v11 = requestCopy;
  v12 = responseCopy;
  v8 = responseCopy;
  v9 = requestCopy;
  [(VSApplicationController *)self _notifyDelegateWithBlock:v10];
}

void __66__VSApplicationController__notifyRequest_didCompleteWithResponse___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 applicationController:*(a1 + 32) request:*(a1 + 40) didCompleteWithResponse:*(a1 + 48)];
}

- (void)_notifyDidReceiveViewModel:(id)model
{
  modelCopy = model;
  VSRequireMainThread();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__VSApplicationController__notifyDidReceiveViewModel___block_invoke;
  v6[3] = &unk_279E19848;
  v6[4] = self;
  v7 = modelCopy;
  v5 = modelCopy;
  [(VSApplicationController *)self _notifyDelegateWithBlock:v6];
}

void __54__VSApplicationController__notifyDidReceiveViewModel___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 applicationController:*(a1 + 32) didReceiveViewModel:*(a1 + 40)];
}

- (void)_notifyDidReceiveViewModelError:(id)error
{
  errorCopy = error;
  VSRequireMainThread();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__VSApplicationController__notifyDidReceiveViewModelError___block_invoke;
  v6[3] = &unk_279E19848;
  v6[4] = self;
  v7 = errorCopy;
  v5 = errorCopy;
  [(VSApplicationController *)self _notifyDelegateWithBlock:v6];
}

void __59__VSApplicationController__notifyDidReceiveViewModelError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 applicationController:*(a1 + 32) didReceiveViewModelError:*(a1 + 40)];
}

- (void)_notifyRequest:(id)request didFailWithError:(id)error
{
  requestCopy = request;
  errorCopy = error;
  VSRequireMainThread();
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __59__VSApplicationController__notifyRequest_didFailWithError___block_invoke;
  v10[3] = &unk_279E19DC0;
  v10[4] = self;
  v11 = requestCopy;
  v12 = errorCopy;
  v8 = errorCopy;
  v9 = requestCopy;
  [(VSApplicationController *)self _notifyDelegateWithBlock:v10];
}

void __59__VSApplicationController__notifyRequest_didFailWithError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 applicationController:*(a1 + 32) request:*(a1 + 40) didFailWithError:*(a1 + 48)];
}

- (void)_notifyDidStart
{
  VSRequireMainThread();
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __42__VSApplicationController__notifyDidStart__block_invoke;
  v3[3] = &unk_279E19290;
  v3[4] = self;
  [(VSApplicationController *)self _notifyDelegateWithBlock:v3];
}

void __42__VSApplicationController__notifyDidStart__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 applicationControllerDidStart:*(a1 + 32)];
}

- (void)_notifyStartDidFailWithError:(id)error
{
  errorCopy = error;
  VSRequireMainThread();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__VSApplicationController__notifyStartDidFailWithError___block_invoke;
  v6[3] = &unk_279E19848;
  v6[4] = self;
  v7 = errorCopy;
  v5 = errorCopy;
  [(VSApplicationController *)self _notifyDelegateWithBlock:v6];
}

void __56__VSApplicationController__notifyStartDidFailWithError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 applicationController:*(a1 + 32) startDidFailWithError:*(a1 + 40)];
}

- (void)_notifyDelegateWithBlock:(id)block
{
  blockCopy = block;
  VSRequireMainThread();
  if (!blockCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The block parameter must not be nil."];
  }

  v4 = VSDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_270DD4000, v4, OS_LOG_TYPE_DEFAULT, "Application controller will notify delegate.", v5, 2u);
  }

  blockCopy[2](blockCopy);
}

- (void)_notifyDidUpdateLogoViewModel:(id)model
{
  modelCopy = model;
  delegate = [(VSApplicationController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate applicationController:self didUpdateLogoViewModel:modelCopy];
  }
}

- (id)_bootURL
{
  preferences = [(VSApplicationController *)self preferences];
  overridingAppBootURL = [preferences overridingAppBootURL];

  if (!overridingAppBootURL)
  {
    overridingAppBootURL = [(VSApplicationController *)self fetchedURL];
  }

  v5 = [MEMORY[0x277CE2298] optionalWithObject:overridingAppBootURL];

  return v5;
}

- (id)_applicationLaunchParams
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  identityProvider = [(VSApplicationController *)self identityProvider];
  authenticationURL = [identityProvider authenticationURL];
  absoluteString = [authenticationURL absoluteString];

  if (absoluteString)
  {
    [v3 setObject:absoluteString forKey:@"location"];
  }

  userAccounts = [(VSApplicationController *)self userAccounts];

  if (userAccounts)
  {
    userAccounts2 = [(VSApplicationController *)self userAccounts];

    if (!userAccounts2)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The [self userAccounts] parameter must not be nil."];
    }

    userAccounts3 = [(VSApplicationController *)self userAccounts];
    v10 = [MEMORY[0x277CE2208] applicationUserAccountsFromUserAccounts:userAccounts3];
    [v3 setObject:v10 forKey:@"userAccounts"];
  }

  applicationReadyCallback = [(VSApplicationController *)self applicationReadyCallback];
  if (applicationReadyCallback)
  {
    [v3 setObject:applicationReadyCallback forKey:@"callback"];
  }

  identityProvider2 = [(VSApplicationController *)self identityProvider];
  userToken = [identityProvider2 userToken];

  if (userToken)
  {
    identityProvider3 = [(VSApplicationController *)self identityProvider];
    userToken2 = [identityProvider3 userToken];

    if (!userToken2)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The [[self identityProvider] userToken] parameter must not be nil."];
    }

    identityProvider4 = [(VSApplicationController *)self identityProvider];
    userToken3 = [identityProvider4 userToken];

    v18 = VSDefaultLogObject();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      identityProvider5 = [(VSApplicationController *)self identityProvider];
      providerID = [identityProvider5 providerID];
      v24 = 138412546;
      v25 = userToken3;
      v26 = 2112;
      v27 = providerID;
      _os_log_impl(&dword_270DD4000, v18, OS_LOG_TYPE_DEFAULT, "Add userToken %@ in %@'s js launch params", &v24, 0x16u);
    }

    [v3 setObject:userToken3 forKey:@"userToken"];
  }

  accountProviderAuthenticationToken = [(VSApplicationController *)self accountProviderAuthenticationToken];
  if (accountProviderAuthenticationToken)
  {
    [v3 setObject:accountProviderAuthenticationToken forKey:@"accountProviderAuthenticationToken"];
  }

  v22 = [v3 copy];

  return v22;
}

- (id)_applicationControllerAlertForJavascriptAlert:(id)alert
{
  v27 = *MEMORY[0x277D85DE8];
  alertCopy = alert;
  v17 = objc_alloc_init(VSApplicationControllerAlert);
  title = [alertCopy title];
  [(VSApplicationControllerAlert *)v17 setTitle:title];

  message = [alertCopy message];
  [(VSApplicationControllerAlert *)v17 setMessage:message];

  objc_initWeak(&location, self);
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  actions = [alertCopy actions];
  v8 = [actions countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v8)
  {
    v9 = *v22;
    obj = actions;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        v12 = objc_alloc_init(VSApplicationControllerAlertAction);
        title2 = [v11 title];
        [(VSApplicationControllerAlertAction *)v12 setTitle:title2];

        style = [v11 style];
        [(VSApplicationControllerAlertAction *)v12 setStyle:[VSApplicationControllerAlertAction styleFromString:style]];

        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __73__VSApplicationController__applicationControllerAlertForJavascriptAlert___block_invoke;
        v19[3] = &unk_279E19618;
        objc_copyWeak(&v20, &location);
        v19[4] = v11;
        [(VSApplicationControllerAlertAction *)v12 setCallback:v19];
        [v6 addObject:v12];
        objc_destroyWeak(&v20);
      }

      actions = obj;
      v8 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v8);
  }

  [(VSApplicationControllerAlert *)v17 setActions:v6];
  objc_destroyWeak(&location);

  return v17;
}

void __73__VSApplicationController__applicationControllerAlertForJavascriptAlert___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained application];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __73__VSApplicationController__applicationControllerAlertForJavascriptAlert___block_invoke_2;
    v5[3] = &unk_279E19CB0;
    v5[4] = *(a1 + 32);
    [v4 evaluate:v5 completionHandler:&__block_literal_global_289];
  }
}

void __73__VSApplicationController__applicationControllerAlertForJavascriptAlert___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) callback];
  v1 = [v2 callWithArguments:MEMORY[0x277CBEBF8]];
}

void __73__VSApplicationController__applicationControllerAlertForJavascriptAlert___block_invoke_3(uint64_t a1)
{
  v1 = VSDefaultLogObject();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_270DD4000, v1, OS_LOG_TYPE_DEFAULT, "Did execute callback for alert action.", v2, 2u);
  }
}

- (void)_makeJavascriptRequestForRequest:(id)request withCompletionHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  v8 = handlerCopy;
  if (!requestCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The request parameter must not be nil."];
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_5:
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The completionHandler parameter must not be nil."];
    goto LABEL_3;
  }

  if (!handlerCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = objc_alloc_init(MEMORY[0x277CE2328]);
  v10 = [objc_alloc(MEMORY[0x277CE2308]) initWithOperation:v9 timeout:10.0];
  v16 = MEMORY[0x277D85DD0];
  v17 = v9;
  v18 = requestCopy;
  v19 = v8;
  v11 = v8;
  v12 = requestCopy;
  v13 = v9;
  v14 = VSMainThreadOperationWithBlock();
  [v14 addDependency:{v10, v16, 3221225472, __82__VSApplicationController__makeJavascriptRequestForRequest_withCompletionHandler___block_invoke, &unk_279E19EF8}];
  VSEnqueueCompletionOperation();
  privateQueue = [(VSApplicationController *)self privateQueue];
  [privateQueue addOperation:v10];
}

void __82__VSApplicationController__makeJavascriptRequestForRequest_withCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) result];
  v3 = [v2 object];
  v5 = [v3 object];

  v4 = [*(a1 + 40) _javascriptRequestForRequest:*(a1 + 48) withVerificationData:v5];
  (*(*(a1 + 56) + 16))();
}

- (id)_javascriptRequestForRequest:(id)request withVerificationData:(id)data
{
  requestCopy = request;
  dataCopy = data;
  type = [requestCopy type];
  if (type <= 2)
  {
    if (type == 1)
    {
      v9 = VSJSRequestTypeUIAuthN;
      goto LABEL_12;
    }

    if (type == 2)
    {
      v9 = VSJSRequestTypeAuthN;
      goto LABEL_12;
    }
  }

  else
  {
    switch(type)
    {
      case 3:
        v9 = VSJSRequestTypeUserMetadata;
        goto LABEL_12;
      case 4:
        v9 = VSJSRequestTypeLogout;
        goto LABEL_12;
      case 5:
        v9 = &VSJSRequestTypeSTBOptOut;
LABEL_12:
        v10 = *v9;
        goto LABEL_13;
    }
  }

  v18 = MEMORY[0x277CBEAD8];
  v19 = *MEMORY[0x277CBE660];
  v20 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(requestCopy, "type")}];
  [v18 raise:v19 format:{@"Unexpected request type: %@", v20}];

  v10 = 0;
LABEL_13:
  authenticationToken = [requestCopy authenticationToken];
  sAMLRequest = [requestCopy SAMLRequest];
  requestorVerificationToken = [requestCopy requestorVerificationToken];
  attributeNames = [requestCopy attributeNames];
  v15 = [dataCopy base64EncodedStringWithOptions:0];

  if (![v15 length])
  {

    v15 = 0;
  }

  _makeJavaScriptRequest = [(VSApplicationController *)self _makeJavaScriptRequest];
  [_makeJavaScriptRequest setRequestType:v10];
  [_makeJavaScriptRequest setRequestBody:sAMLRequest];
  [_makeJavaScriptRequest setCurrentAuthentication:authenticationToken];
  [_makeJavaScriptRequest setRequestorVerificationToken:requestorVerificationToken];
  [_makeJavaScriptRequest setAttributeNames:attributeNames];
  [_makeJavaScriptRequest setAppleVerificationToken:v15];

  return _makeJavaScriptRequest;
}

- (id)_errorForJavascriptErrorValueValue:(id)value withRequest:(id)request
{
  v27 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  requestCopy = request;
  v7 = requestCopy;
  if (requestCopy)
  {
    v8 = [requestCopy type] == 1;
  }

  else
  {
    v8 = 0;
  }

  toObject = [valueCopy toObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = VSDefaultLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v25 = 138412290;
      v26 = valueCopy;
      _os_log_impl(&dword_270DD4000, v10, OS_LOG_TYPE_DEFAULT, "Application passed an error object: %@", &v25, 0xCu);
    }

    v11 = objc_alloc_init(VSJSError);
    v12 = [valueCopy valueForProperty:@"code"];
    -[VSJSError setCode:](v11, "setCode:", [v12 toUInt32]);
    v13 = [valueCopy valueForProperty:@"message"];
    toString = [v13 toString];
    [(VSJSError *)v11 setMessage:toString];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_22;
    }

    v15 = VSErrorLogObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [VSApplicationController _errorForJavascriptErrorValueValue:withRequest:];
    }

    if (!toObject)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The errorObject parameter must not be nil."];
    }

    if (v8)
    {
      v16 = 1;
    }

    else
    {
      v16 = 4;
    }

    v12 = toObject;
    v11 = objc_alloc_init(VSJSError);
    [(VSJSError *)v11 setCode:v16];
    [(VSJSError *)v11 setMessage:v12];
  }

  if (!v11)
  {
LABEL_22:
    v20 = VSErrorLogObject();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [VSApplicationController _errorForJavascriptErrorValueValue:withRequest:];
    }

    v21 = VSPublicServiceTemporarilyUnavailableError();
    if (!v21)
    {
      goto LABEL_25;
    }

    goto LABEL_26;
  }

  v17 = v11;
  error = [(VSJSError *)v17 error];
  code = [(VSJSError *)v17 code];
  if (code <= 2)
  {
    if (code == 1)
    {
      if (v8)
      {
LABEL_34:
        v24 = VSPrivateError();
        goto LABEL_40;
      }

      v23 = VSErrorLogObject();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [VSApplicationController _errorForJavascriptErrorValueValue:withRequest:];
      }

      goto LABEL_38;
    }

    if (code == 2)
    {
      goto LABEL_34;
    }

LABEL_31:
    v23 = VSErrorLogObject();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [VSApplicationController _errorForJavascriptErrorValueValue:withRequest:];
    }

LABEL_38:

    goto LABEL_39;
  }

  if (code == 3)
  {
    v24 = VSInvalidVerificationTokenError();
    goto LABEL_40;
  }

  if (code != 4)
  {
    goto LABEL_31;
  }

LABEL_39:
  v24 = VSPublicServiceTemporarilyUnavailableError();
LABEL_40:
  v21 = v24;

  if (!v21)
  {
LABEL_25:
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The errorOrNil parameter must not be nil."];
  }

LABEL_26:

  return v21;
}

- (id)_makeJavaScriptRequest
{
  v3 = [VSJSRequest alloc];
  application = [(VSApplicationController *)self application];
  appContext = [application appContext];
  v6 = [(IKJSObject *)v3 initWithAppContext:appContext];

  return v6;
}

- (VSApplicationControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __61__VSApplicationController_transitionToWaitingForBootUrlState__block_invoke_147_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __73__VSApplicationController_transitionToWaitingForBothLaunchCallbacksState__block_invoke_3_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)appDocumentController:didFailToUpdateViewModelWithError:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_presentDocument:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __44__VSApplicationController__presentDocument___block_invoke_235_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __44__VSApplicationController__presentDocument___block_invoke_235_cold_2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_presentAlert:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_applicationReadyWithSuccess:javascriptErrorValue:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_completeRequest:withJavascriptResponse:javascriptErrorValue:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_errorForJavascriptErrorValueValue:withRequest:.cold.2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_errorForJavascriptErrorValueValue:withRequest:.cold.4()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end